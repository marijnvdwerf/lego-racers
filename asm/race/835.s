.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80125720
/* DBAE0 80125720 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DBAE4 80125724 AFB00010 */  sw         $s0, 0x10($sp)
/* DBAE8 80125728 AFBF0014 */  sw         $ra, 0x14($sp)
/* DBAEC 8012572C 0C0499F0 */  jal        func_race_801267C0
/* DBAF0 80125730 00808021 */   addu      $s0, $a0, $zero
/* DBAF4 80125734 3C02800D */  lui        $v0, %hi(D_race_800CEA70)
/* DBAF8 80125738 2442EA70 */  addiu      $v0, $v0, %lo(D_race_800CEA70)
/* DBAFC 8012573C 26040048 */  addiu      $a0, $s0, 0x48
/* DBB00 80125740 0C0164A4 */  jal        func_80059290
/* DBB04 80125744 AE020000 */   sw        $v0, 0x0($s0)
/* DBB08 80125748 0C0495FA */  jal        func_race_801257E8
/* DBB0C 8012574C 02002021 */   addu      $a0, $s0, $zero
/* DBB10 80125750 02001021 */  addu       $v0, $s0, $zero
/* DBB14 80125754 8FBF0014 */  lw         $ra, 0x14($sp)
/* DBB18 80125758 8FB00010 */  lw         $s0, 0x10($sp)
/* DBB1C 8012575C 03E00008 */  jr         $ra
/* DBB20 80125760 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80125764
/* DBB24 80125764 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DBB28 80125768 AFB00010 */  sw         $s0, 0x10($sp)
/* DBB2C 8012576C 00808021 */  addu       $s0, $a0, $zero
/* DBB30 80125770 AFB10014 */  sw         $s1, 0x14($sp)
/* DBB34 80125774 00A08821 */  addu       $s1, $a1, $zero
/* DBB38 80125778 3C02800D */  lui        $v0, %hi(D_race_800CEA70)
/* DBB3C 8012577C 2442EA70 */  addiu      $v0, $v0, %lo(D_race_800CEA70)
/* DBB40 80125780 AFBF0018 */  sw         $ra, 0x18($sp)
/* DBB44 80125784 0C0495EB */  jal        func_race_801257AC
/* DBB48 80125788 AE020000 */   sw        $v0, 0x0($s0)
/* DBB4C 8012578C 02002021 */  addu       $a0, $s0, $zero
/* DBB50 80125790 0C047E8A */  jal        func_race_8011FA28
/* DBB54 80125794 02202821 */   addu      $a1, $s1, $zero
/* DBB58 80125798 8FBF0018 */  lw         $ra, 0x18($sp)
/* DBB5C 8012579C 8FB10014 */  lw         $s1, 0x14($sp)
/* DBB60 801257A0 8FB00010 */  lw         $s0, 0x10($sp)
/* DBB64 801257A4 03E00008 */  jr         $ra
/* DBB68 801257A8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801257AC
/* DBB6C 801257AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DBB70 801257B0 AFB00010 */  sw         $s0, 0x10($sp)
/* DBB74 801257B4 00808021 */  addu       $s0, $a0, $zero
/* DBB78 801257B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* DBB7C 801257BC 8E020000 */  lw         $v0, 0x0($s0)
/* DBB80 801257C0 84440040 */  lh         $a0, 0x40($v0)
/* DBB84 801257C4 8C420044 */  lw         $v0, 0x44($v0)
/* DBB88 801257C8 0040F809 */  jalr       $v0
/* DBB8C 801257CC 02042021 */   addu      $a0, $s0, $a0
/* DBB90 801257D0 0C0495FA */  jal        func_race_801257E8
/* DBB94 801257D4 02002021 */   addu      $a0, $s0, $zero
/* DBB98 801257D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* DBB9C 801257DC 8FB00010 */  lw         $s0, 0x10($sp)
/* DBBA0 801257E0 03E00008 */  jr         $ra
/* DBBA4 801257E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801257E8
/* DBBA8 801257E8 AC80003C */  sw         $zero, 0x3C($a0)
/* DBBAC 801257EC AC800040 */  sw         $zero, 0x40($a0)
/* DBBB0 801257F0 AC800044 */  sw         $zero, 0x44($a0)
/* DBBB4 801257F4 AC800038 */  sw         $zero, 0x38($a0)
/* DBBB8 801257F8 AC800070 */  sw         $zero, 0x70($a0)
/* DBBBC 801257FC AC800078 */  sw         $zero, 0x78($a0)
/* DBBC0 80125800 AC80007C */  sw         $zero, 0x7C($a0)
/* DBBC4 80125804 A0800080 */  sb         $zero, 0x80($a0)
/* DBBC8 80125808 AC80002C */  sw         $zero, 0x2C($a0)
/* DBBCC 8012580C AC800030 */  sw         $zero, 0x30($a0)
/* DBBD0 80125810 03E00008 */  jr         $ra
/* DBBD4 80125814 AC800034 */   sw        $zero, 0x34($a0)

glabel func_race_80125818
/* DBBD8 80125818 24020001 */  addiu      $v0, $zero, 0x1
/* DBBDC 8012581C AC850038 */  sw         $a1, 0x38($a0)
/* DBBE0 80125820 AC860018 */  sw         $a2, 0x18($a0)
/* DBBE4 80125824 AC870020 */  sw         $a3, 0x20($a0)
/* DBBE8 80125828 03E00008 */  jr         $ra
/* DBBEC 8012582C AC820004 */   sw        $v0, 0x4($a0)

glabel func_race_80125830
/* DBBF0 80125830 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DBBF4 80125834 AFB30024 */  sw         $s3, 0x24($sp)
/* DBBF8 80125838 00809821 */  addu       $s3, $a0, $zero
/* DBBFC 8012583C AFB00018 */  sw         $s0, 0x18($sp)
/* DBC00 80125840 00A08021 */  addu       $s0, $a1, $zero
/* DBC04 80125844 AFB40028 */  sw         $s4, 0x28($sp)
/* DBC08 80125848 00C0A021 */  addu       $s4, $a2, $zero
/* DBC0C 8012584C AFB5002C */  sw         $s5, 0x2C($sp)
/* DBC10 80125850 AFBF0034 */  sw         $ra, 0x34($sp)
/* DBC14 80125854 AFB60030 */  sw         $s6, 0x30($sp)
/* DBC18 80125858 AFB20020 */  sw         $s2, 0x20($sp)
/* DBC1C 8012585C AFB1001C */  sw         $s1, 0x1C($sp)
/* DBC20 80125860 8E640038 */  lw         $a0, 0x38($s3)
/* DBC24 80125864 8FB60048 */  lw         $s6, 0x48($sp)
/* DBC28 80125868 0C04B4FB */  jal        func_race_8012D3EC
/* DBC2C 8012586C 00E0A821 */   addu      $s5, $a3, $zero
/* DBC30 80125870 1040000B */  beqz       $v0, .Lrace_801258A0
/* DBC34 80125874 AE62003C */   sw        $v0, 0x3C($s3)
/* DBC38 80125878 8E640038 */  lw         $a0, 0x38($s3)
/* DBC3C 8012587C 0C04B4FB */  jal        func_race_8012D3EC
/* DBC40 80125880 00000000 */   nop
/* DBC44 80125884 10400006 */  beqz       $v0, .Lrace_801258A0
/* DBC48 80125888 AE620040 */   sw        $v0, 0x40($s3)
/* DBC4C 8012588C 8E640038 */  lw         $a0, 0x38($s3)
/* DBC50 80125890 0C04B4FB */  jal        func_race_8012D3EC
/* DBC54 80125894 00000000 */   nop
/* DBC58 80125898 14400004 */  bnez       $v0, .Lrace_801258AC
/* DBC5C 8012589C AE620044 */   sw        $v0, 0x44($s3)
.Lrace_801258A0:
/* DBC60 801258A0 24020006 */  addiu      $v0, $zero, 0x6
/* DBC64 801258A4 080496CD */  j          .Lrace_80125B34
/* DBC68 801258A8 AE620004 */   sw        $v0, 0x4($s3)
.Lrace_801258AC:
/* DBC6C 801258AC 24020002 */  addiu      $v0, $zero, 0x2
/* DBC70 801258B0 AE620004 */  sw         $v0, 0x4($s3)
/* DBC74 801258B4 24024E20 */  addiu      $v0, $zero, 0x4E20
/* DBC78 801258B8 00002821 */  addu       $a1, $zero, $zero
/* DBC7C 801258BC 24120001 */  addiu      $s2, $zero, 0x1
/* DBC80 801258C0 AE700028 */  sw         $s0, 0x28($s3)
/* DBC84 801258C4 AE620008 */  sw         $v0, 0x8($s3)
/* DBC88 801258C8 8E820024 */  lw         $v0, 0x24($s4)
/* DBC8C 801258CC 8E900078 */  lw         $s0, 0x78($s4)
/* DBC90 801258D0 844400B8 */  lh         $a0, 0xB8($v0)
/* DBC94 801258D4 8C4200BC */  lw         $v0, 0xBC($v0)
/* DBC98 801258D8 0040F809 */  jalr       $v0
/* DBC9C 801258DC 02842021 */   addu      $a0, $s4, $a0
/* DBCA0 801258E0 8E8700A8 */  lw         $a3, 0xA8($s4)
/* DBCA4 801258E4 C6800084 */  lwc1       $f0, 0x84($s4)
/* DBCA8 801258E8 02002821 */  addu       $a1, $s0, $zero
/* DBCAC 801258EC E7A00010 */  swc1       $f0, 0x10($sp)
/* DBCB0 801258F0 8E64003C */  lw         $a0, 0x3C($s3)
/* DBCB4 801258F4 0C01956B */  jal        func_800655AC
/* DBCB8 801258F8 00403021 */   addu      $a2, $v0, $zero
/* DBCBC 801258FC 26900004 */  addiu      $s0, $s4, 0x4
.Lrace_80125900:
/* DBCC0 80125900 2E420003 */  sltiu      $v0, $s2, 0x3
/* DBCC4 80125904 10400013 */  beqz       $v0, .Lrace_80125954
/* DBCC8 80125908 00002821 */   addu      $a1, $zero, $zero
/* DBCCC 8012590C 8E110078 */  lw         $s1, 0x78($s0)
/* DBCD0 80125910 1220000D */  beqz       $s1, .Lrace_80125948
/* DBCD4 80125914 02402821 */   addu      $a1, $s2, $zero
/* DBCD8 80125918 8E820024 */  lw         $v0, 0x24($s4)
/* DBCDC 8012591C 844400B8 */  lh         $a0, 0xB8($v0)
/* DBCE0 80125920 8C4200BC */  lw         $v0, 0xBC($v0)
/* DBCE4 80125924 0040F809 */  jalr       $v0
/* DBCE8 80125928 02842021 */   addu      $a0, $s4, $a0
/* DBCEC 8012592C 8E0700A8 */  lw         $a3, 0xA8($s0)
/* DBCF0 80125930 C6000084 */  lwc1       $f0, 0x84($s0)
/* DBCF4 80125934 02202821 */  addu       $a1, $s1, $zero
/* DBCF8 80125938 E7A00010 */  swc1       $f0, 0x10($sp)
/* DBCFC 8012593C 8E64003C */  lw         $a0, 0x3C($s3)
/* DBD00 80125940 0C0196C4 */  jal        func_80065B10
/* DBD04 80125944 00403021 */   addu      $a2, $v0, $zero
.Lrace_80125948:
/* DBD08 80125948 26100004 */  addiu      $s0, $s0, 0x4
/* DBD0C 8012594C 08049640 */  j          .Lrace_80125900
/* DBD10 80125950 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_80125954:
/* DBD14 80125954 24120001 */  addiu      $s2, $zero, 0x1
/* DBD18 80125958 8EA20024 */  lw         $v0, 0x24($s5)
/* DBD1C 8012595C 8EB00078 */  lw         $s0, 0x78($s5)
/* DBD20 80125960 844400B8 */  lh         $a0, 0xB8($v0)
/* DBD24 80125964 8C4200BC */  lw         $v0, 0xBC($v0)
/* DBD28 80125968 0040F809 */  jalr       $v0
/* DBD2C 8012596C 02A42021 */   addu      $a0, $s5, $a0
/* DBD30 80125970 8EA700A8 */  lw         $a3, 0xA8($s5)
/* DBD34 80125974 C6A00084 */  lwc1       $f0, 0x84($s5)
/* DBD38 80125978 02002821 */  addu       $a1, $s0, $zero
/* DBD3C 8012597C E7A00010 */  swc1       $f0, 0x10($sp)
/* DBD40 80125980 8E640040 */  lw         $a0, 0x40($s3)
/* DBD44 80125984 0C01956B */  jal        func_800655AC
/* DBD48 80125988 00403021 */   addu      $a2, $v0, $zero
/* DBD4C 8012598C 26B00004 */  addiu      $s0, $s5, 0x4
.Lrace_80125990:
/* DBD50 80125990 2E420003 */  sltiu      $v0, $s2, 0x3
/* DBD54 80125994 10400013 */  beqz       $v0, .Lrace_801259E4
/* DBD58 80125998 00000000 */   nop
/* DBD5C 8012599C 8E110078 */  lw         $s1, 0x78($s0)
/* DBD60 801259A0 1220000D */  beqz       $s1, .Lrace_801259D8
/* DBD64 801259A4 02402821 */   addu      $a1, $s2, $zero
/* DBD68 801259A8 8EA20024 */  lw         $v0, 0x24($s5)
/* DBD6C 801259AC 844400B8 */  lh         $a0, 0xB8($v0)
/* DBD70 801259B0 8C4200BC */  lw         $v0, 0xBC($v0)
/* DBD74 801259B4 0040F809 */  jalr       $v0
/* DBD78 801259B8 02A42021 */   addu      $a0, $s5, $a0
/* DBD7C 801259BC 8E0700A8 */  lw         $a3, 0xA8($s0)
/* DBD80 801259C0 C6000084 */  lwc1       $f0, 0x84($s0)
/* DBD84 801259C4 02202821 */  addu       $a1, $s1, $zero
/* DBD88 801259C8 E7A00010 */  swc1       $f0, 0x10($sp)
/* DBD8C 801259CC 8E640040 */  lw         $a0, 0x40($s3)
/* DBD90 801259D0 0C0196C4 */  jal        func_80065B10
/* DBD94 801259D4 00403021 */   addu      $a2, $v0, $zero
.Lrace_801259D8:
/* DBD98 801259D8 26100004 */  addiu      $s0, $s0, 0x4
/* DBD9C 801259DC 08049664 */  j          .Lrace_80125990
/* DBDA0 801259E0 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_801259E4:
/* DBDA4 801259E4 0C016264 */  jal        func_80058990
/* DBDA8 801259E8 02A02021 */   addu      $a0, $s5, $zero
/* DBDAC 801259EC 8E640040 */  lw         $a0, 0x40($s3)
/* DBDB0 801259F0 44050000 */  mfc1       $a1, $f0
/* DBDB4 801259F4 0C016274 */  jal        func_800589D0
/* DBDB8 801259F8 24120001 */   addiu     $s2, $zero, 0x1
/* DBDBC 801259FC 0C01626C */  jal        func_800589B0
/* DBDC0 80125A00 02A02021 */   addu      $a0, $s5, $zero
/* DBDC4 80125A04 8E640040 */  lw         $a0, 0x40($s3)
/* DBDC8 80125A08 44050000 */  mfc1       $a1, $f0
/* DBDCC 80125A0C 0C01627F */  jal        func_800589FC
/* DBDD0 80125A10 00000000 */   nop
/* DBDD4 80125A14 0C01628A */  jal        func_80058A28
/* DBDD8 80125A18 02A02021 */   addu      $a0, $s5, $zero
/* DBDDC 80125A1C 8E640040 */  lw         $a0, 0x40($s3)
/* DBDE0 80125A20 44050000 */  mfc1       $a1, $f0
/* DBDE4 80125A24 0C016298 */  jal        func_80058A60
/* DBDE8 80125A28 00000000 */   nop
/* DBDEC 80125A2C 0C016291 */  jal        func_80058A44
/* DBDF0 80125A30 02A02021 */   addu      $a0, $s5, $zero
/* DBDF4 80125A34 8E640040 */  lw         $a0, 0x40($s3)
/* DBDF8 80125A38 44050000 */  mfc1       $a1, $f0
/* DBDFC 80125A3C 0C0162A3 */  jal        func_80058A8C
/* DBE00 80125A40 00000000 */   nop
/* DBE04 80125A44 00002821 */  addu       $a1, $zero, $zero
/* DBE08 80125A48 8EC20024 */  lw         $v0, 0x24($s6)
/* DBE0C 80125A4C 8ED00078 */  lw         $s0, 0x78($s6)
/* DBE10 80125A50 844400B8 */  lh         $a0, 0xB8($v0)
/* DBE14 80125A54 8C4200BC */  lw         $v0, 0xBC($v0)
/* DBE18 80125A58 0040F809 */  jalr       $v0
/* DBE1C 80125A5C 02C42021 */   addu      $a0, $s6, $a0
/* DBE20 80125A60 8EC700A8 */  lw         $a3, 0xA8($s6)
/* DBE24 80125A64 C6C00084 */  lwc1       $f0, 0x84($s6)
/* DBE28 80125A68 02002821 */  addu       $a1, $s0, $zero
/* DBE2C 80125A6C E7A00010 */  swc1       $f0, 0x10($sp)
/* DBE30 80125A70 8E640044 */  lw         $a0, 0x44($s3)
/* DBE34 80125A74 0C01956B */  jal        func_800655AC
/* DBE38 80125A78 00403021 */   addu      $a2, $v0, $zero
/* DBE3C 80125A7C 26D00004 */  addiu      $s0, $s6, 0x4
.Lrace_80125A80:
/* DBE40 80125A80 2E420003 */  sltiu      $v0, $s2, 0x3
/* DBE44 80125A84 10400013 */  beqz       $v0, .Lrace_80125AD4
/* DBE48 80125A88 00000000 */   nop
/* DBE4C 80125A8C 8E110078 */  lw         $s1, 0x78($s0)
/* DBE50 80125A90 1220000D */  beqz       $s1, .Lrace_80125AC8
/* DBE54 80125A94 02402821 */   addu      $a1, $s2, $zero
/* DBE58 80125A98 8EC20024 */  lw         $v0, 0x24($s6)
/* DBE5C 80125A9C 844400B8 */  lh         $a0, 0xB8($v0)
/* DBE60 80125AA0 8C4200BC */  lw         $v0, 0xBC($v0)
/* DBE64 80125AA4 0040F809 */  jalr       $v0
/* DBE68 80125AA8 02C42021 */   addu      $a0, $s6, $a0
/* DBE6C 80125AAC 8E0700A8 */  lw         $a3, 0xA8($s0)
/* DBE70 80125AB0 C6000084 */  lwc1       $f0, 0x84($s0)
/* DBE74 80125AB4 02202821 */  addu       $a1, $s1, $zero
/* DBE78 80125AB8 E7A00010 */  swc1       $f0, 0x10($sp)
/* DBE7C 80125ABC 8E640044 */  lw         $a0, 0x44($s3)
/* DBE80 80125AC0 0C0196C4 */  jal        func_80065B10
/* DBE84 80125AC4 00403021 */   addu      $a2, $v0, $zero
.Lrace_80125AC8:
/* DBE88 80125AC8 26100004 */  addiu      $s0, $s0, 0x4
/* DBE8C 80125ACC 080496A0 */  j          .Lrace_80125A80
/* DBE90 80125AD0 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_80125AD4:
/* DBE94 80125AD4 0C016264 */  jal        func_80058990
/* DBE98 80125AD8 02C02021 */   addu      $a0, $s6, $zero
/* DBE9C 80125ADC 8E640044 */  lw         $a0, 0x44($s3)
/* DBEA0 80125AE0 44050000 */  mfc1       $a1, $f0
/* DBEA4 80125AE4 0C016274 */  jal        func_800589D0
/* DBEA8 80125AE8 00000000 */   nop
/* DBEAC 80125AEC 0C01626C */  jal        func_800589B0
/* DBEB0 80125AF0 02C02021 */   addu      $a0, $s6, $zero
/* DBEB4 80125AF4 8E640044 */  lw         $a0, 0x44($s3)
/* DBEB8 80125AF8 44050000 */  mfc1       $a1, $f0
/* DBEBC 80125AFC 0C01627F */  jal        func_800589FC
/* DBEC0 80125B00 00000000 */   nop
/* DBEC4 80125B04 0C01628A */  jal        func_80058A28
/* DBEC8 80125B08 02C02021 */   addu      $a0, $s6, $zero
/* DBECC 80125B0C 8E640044 */  lw         $a0, 0x44($s3)
/* DBED0 80125B10 44050000 */  mfc1       $a1, $f0
/* DBED4 80125B14 0C016298 */  jal        func_80058A60
/* DBED8 80125B18 00000000 */   nop
/* DBEDC 80125B1C 0C016291 */  jal        func_80058A44
/* DBEE0 80125B20 02C02021 */   addu      $a0, $s6, $zero
/* DBEE4 80125B24 8E640044 */  lw         $a0, 0x44($s3)
/* DBEE8 80125B28 44050000 */  mfc1       $a1, $f0
/* DBEEC 80125B2C 0C0162A3 */  jal        func_80058A8C
/* DBEF0 80125B30 00000000 */   nop
.Lrace_80125B34:
/* DBEF4 80125B34 8FBF0034 */  lw         $ra, 0x34($sp)
/* DBEF8 80125B38 8FB60030 */  lw         $s6, 0x30($sp)
/* DBEFC 80125B3C 8FB5002C */  lw         $s5, 0x2C($sp)
/* DBF00 80125B40 8FB40028 */  lw         $s4, 0x28($sp)
/* DBF04 80125B44 8FB30024 */  lw         $s3, 0x24($sp)
/* DBF08 80125B48 8FB20020 */  lw         $s2, 0x20($sp)
/* DBF0C 80125B4C 8FB1001C */  lw         $s1, 0x1C($sp)
/* DBF10 80125B50 8FB00018 */  lw         $s0, 0x18($sp)
/* DBF14 80125B54 03E00008 */  jr         $ra
/* DBF18 80125B58 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_80125B5C
/* DBF1C 80125B5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DBF20 80125B60 AFB00010 */  sw         $s0, 0x10($sp)
/* DBF24 80125B64 00808021 */  addu       $s0, $a0, $zero
/* DBF28 80125B68 AFBF0014 */  sw         $ra, 0x14($sp)
/* DBF2C 80125B6C 8E050070 */  lw         $a1, 0x70($s0)
/* DBF30 80125B70 10A00005 */  beqz       $a1, .Lrace_80125B88
/* DBF34 80125B74 00000000 */   nop
/* DBF38 80125B78 8E040010 */  lw         $a0, 0x10($s0)
/* DBF3C 80125B7C 0C046564 */  jal        func_race_80119590
/* DBF40 80125B80 00000000 */   nop
/* DBF44 80125B84 AE000070 */  sw         $zero, 0x70($s0)
.Lrace_80125B88:
/* DBF48 80125B88 8E030044 */  lw         $v1, 0x44($s0)
/* DBF4C 80125B8C 1060000B */  beqz       $v1, .Lrace_80125BBC
/* DBF50 80125B90 00000000 */   nop
/* DBF54 80125B94 8C620024 */  lw         $v0, 0x24($v1)
/* DBF58 80125B98 844400B0 */  lh         $a0, 0xB0($v0)
/* DBF5C 80125B9C 8C4200B4 */  lw         $v0, 0xB4($v0)
/* DBF60 80125BA0 0040F809 */  jalr       $v0
/* DBF64 80125BA4 00642021 */   addu      $a0, $v1, $a0
/* DBF68 80125BA8 8E040038 */  lw         $a0, 0x38($s0)
/* DBF6C 80125BAC 8E050044 */  lw         $a1, 0x44($s0)
/* DBF70 80125BB0 0C04B519 */  jal        func_race_8012D464
/* DBF74 80125BB4 00000000 */   nop
/* DBF78 80125BB8 AE000044 */  sw         $zero, 0x44($s0)
.Lrace_80125BBC:
/* DBF7C 80125BBC 8E030040 */  lw         $v1, 0x40($s0)
/* DBF80 80125BC0 1060000B */  beqz       $v1, .Lrace_80125BF0
/* DBF84 80125BC4 00000000 */   nop
/* DBF88 80125BC8 8C620024 */  lw         $v0, 0x24($v1)
/* DBF8C 80125BCC 844400B0 */  lh         $a0, 0xB0($v0)
/* DBF90 80125BD0 8C4200B4 */  lw         $v0, 0xB4($v0)
/* DBF94 80125BD4 0040F809 */  jalr       $v0
/* DBF98 80125BD8 00642021 */   addu      $a0, $v1, $a0
/* DBF9C 80125BDC 8E040038 */  lw         $a0, 0x38($s0)
/* DBFA0 80125BE0 8E050040 */  lw         $a1, 0x40($s0)
/* DBFA4 80125BE4 0C04B519 */  jal        func_race_8012D464
/* DBFA8 80125BE8 00000000 */   nop
/* DBFAC 80125BEC AE000040 */  sw         $zero, 0x40($s0)
.Lrace_80125BF0:
/* DBFB0 80125BF0 8E03003C */  lw         $v1, 0x3C($s0)
/* DBFB4 80125BF4 1060000B */  beqz       $v1, .Lrace_80125C24
/* DBFB8 80125BF8 00000000 */   nop
/* DBFBC 80125BFC 8C620024 */  lw         $v0, 0x24($v1)
/* DBFC0 80125C00 844400B0 */  lh         $a0, 0xB0($v0)
/* DBFC4 80125C04 8C4200B4 */  lw         $v0, 0xB4($v0)
/* DBFC8 80125C08 0040F809 */  jalr       $v0
/* DBFCC 80125C0C 00642021 */   addu      $a0, $v1, $a0
/* DBFD0 80125C10 8E040038 */  lw         $a0, 0x38($s0)
/* DBFD4 80125C14 8E05003C */  lw         $a1, 0x3C($s0)
/* DBFD8 80125C18 0C04B519 */  jal        func_race_8012D464
/* DBFDC 80125C1C 00000000 */   nop
/* DBFE0 80125C20 AE00003C */  sw         $zero, 0x3C($s0)
.Lrace_80125C24:
/* DBFE4 80125C24 8E02001C */  lw         $v0, 0x1C($s0)
/* DBFE8 80125C28 10400003 */  beqz       $v0, .Lrace_80125C38
/* DBFEC 80125C2C 00000000 */   nop
/* DBFF0 80125C30 AC400024 */  sw         $zero, 0x24($v0)
/* DBFF4 80125C34 AE00001C */  sw         $zero, 0x1C($s0)
.Lrace_80125C38:
/* DBFF8 80125C38 8E040078 */  lw         $a0, 0x78($s0)
/* DBFFC 80125C3C 10800004 */  beqz       $a0, .Lrace_80125C50
/* DC000 80125C40 AE000028 */   sw        $zero, 0x28($s0)
/* DC004 80125C44 0C043879 */  jal        func_race_8010E1E4
/* DC008 80125C48 00000000 */   nop
/* DC00C 80125C4C AE000078 */  sw         $zero, 0x78($s0)
.Lrace_80125C50:
/* DC010 80125C50 24020001 */  addiu      $v0, $zero, 0x1
/* DC014 80125C54 AE00007C */  sw         $zero, 0x7C($s0)
/* DC018 80125C58 A2000080 */  sb         $zero, 0x80($s0)
/* DC01C 80125C5C AE00002C */  sw         $zero, 0x2C($s0)
/* DC020 80125C60 AE000030 */  sw         $zero, 0x30($s0)
/* DC024 80125C64 AE000034 */  sw         $zero, 0x34($s0)
/* DC028 80125C68 AE020004 */  sw         $v0, 0x4($s0)
/* DC02C 80125C6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* DC030 80125C70 8FB00010 */  lw         $s0, 0x10($sp)
/* DC034 80125C74 03E00008 */  jr         $ra
/* DC038 80125C78 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80125C7C
/* DC03C 80125C7C 27BDFF78 */  addiu      $sp, $sp, -0x88
/* DC040 80125C80 AFB00070 */  sw         $s0, 0x70($sp)
/* DC044 80125C84 00808021 */  addu       $s0, $a0, $zero
/* DC048 80125C88 AFB20078 */  sw         $s2, 0x78($sp)
/* DC04C 80125C8C AFBF007C */  sw         $ra, 0x7C($sp)
/* DC050 80125C90 AFB10074 */  sw         $s1, 0x74($sp)
/* DC054 80125C94 F7B40080 */  sdc1       $f20, 0x80($sp)
/* DC058 80125C98 8E030004 */  lw         $v1, 0x4($s0)
/* DC05C 80125C9C 24020006 */  addiu      $v0, $zero, 0x6
/* DC060 80125CA0 1062013C */  beq        $v1, $v0, .Lrace_80126194
/* DC064 80125CA4 00A09021 */   addu      $s2, $a1, $zero
/* DC068 80125CA8 24020002 */  addiu      $v0, $zero, 0x2
/* DC06C 80125CAC 54620008 */  bnel       $v1, $v0, .Lrace_80125CD0
/* DC070 80125CB0 02002021 */   addu      $a0, $s0, $zero
/* DC074 80125CB4 8E030008 */  lw         $v1, 0x8($s0)
/* DC078 80125CB8 24024E20 */  addiu      $v0, $zero, 0x4E20
/* DC07C 80125CBC 54620004 */  bnel       $v1, $v0, .Lrace_80125CD0
/* DC080 80125CC0 02002021 */   addu      $a0, $s0, $zero
/* DC084 80125CC4 0C049935 */  jal        func_race_801264D4
/* DC088 80125CC8 00000000 */   nop
/* DC08C 80125CCC 02002021 */  addu       $a0, $s0, $zero
.Lrace_80125CD0:
/* DC090 80125CD0 0C047E96 */  jal        func_race_8011FA58
/* DC094 80125CD4 02402821 */   addu      $a1, $s2, $zero
/* DC098 80125CD8 8E020078 */  lw         $v0, 0x78($s0)
/* DC09C 80125CDC 14400004 */  bnez       $v0, .Lrace_80125CF0
/* DC0A0 80125CE0 00000000 */   nop
/* DC0A4 80125CE4 8E02007C */  lw         $v0, 0x7C($s0)
/* DC0A8 80125CE8 504000D3 */  beql       $v0, $zero, .Lrace_80126038
/* DC0AC 80125CEC AFA00010 */   sw        $zero, 0x10($sp)
.Lrace_80125CF0:
/* DC0B0 80125CF0 8C43005C */  lw         $v1, 0x5C($v0)
/* DC0B4 80125CF4 8C620024 */  lw         $v0, 0x24($v1)
/* DC0B8 80125CF8 27A50050 */  addiu      $a1, $sp, 0x50
/* DC0BC 80125CFC 84440010 */  lh         $a0, 0x10($v0)
/* DC0C0 80125D00 8C420014 */  lw         $v0, 0x14($v0)
/* DC0C4 80125D04 0040F809 */  jalr       $v0
/* DC0C8 80125D08 00642021 */   addu      $a0, $v1, $a0
/* DC0CC 80125D0C 8E03003C */  lw         $v1, 0x3C($s0)
/* DC0D0 80125D10 8C620024 */  lw         $v0, 0x24($v1)
/* DC0D4 80125D14 27A50060 */  addiu      $a1, $sp, 0x60
/* DC0D8 80125D18 84440010 */  lh         $a0, 0x10($v0)
/* DC0DC 80125D1C 8C420014 */  lw         $v0, 0x14($v0)
/* DC0E0 80125D20 0040F809 */  jalr       $v0
/* DC0E4 80125D24 00642021 */   addu      $a0, $v1, $a0
/* DC0E8 80125D28 27A40010 */  addiu      $a0, $sp, 0x10
/* DC0EC 80125D2C C7A60060 */  lwc1       $f6, 0x60($sp)
/* DC0F0 80125D30 C7A00050 */  lwc1       $f0, 0x50($sp)
/* DC0F4 80125D34 C7A40064 */  lwc1       $f4, 0x64($sp)
/* DC0F8 80125D38 46003181 */  sub.s      $f6, $f6, $f0
/* DC0FC 80125D3C C7A20054 */  lwc1       $f2, 0x54($sp)
/* DC100 80125D40 C7A00068 */  lwc1       $f0, 0x68($sp)
/* DC104 80125D44 46022101 */  sub.s      $f4, $f4, $f2
/* DC108 80125D48 C7A20058 */  lwc1       $f2, 0x58($sp)
/* DC10C 80125D4C 00802821 */  addu       $a1, $a0, $zero
/* DC110 80125D50 46020001 */  sub.s      $f0, $f0, $f2
/* DC114 80125D54 E7A60010 */  swc1       $f6, 0x10($sp)
/* DC118 80125D58 E7A40014 */  swc1       $f4, 0x14($sp)
/* DC11C 80125D5C 0C000F26 */  jal        func_80003C98
/* DC120 80125D60 E7A00018 */   swc1      $f0, 0x18($sp)
/* DC124 80125D64 27B10010 */  addiu      $s1, $sp, 0x10
/* DC128 80125D68 AFA00040 */  sw         $zero, 0x40($sp)
/* DC12C 80125D6C C7A00040 */  lwc1       $f0, 0x40($sp)
/* DC130 80125D70 C62A0008 */  lwc1       $f10, 0x8($s1)
/* DC134 80125D74 46005102 */  mul.s      $f4, $f10, $f0
/* DC138 80125D78 C6220004 */  lwc1       $f2, 0x4($s1)
/* DC13C 80125D7C 46001202 */  mul.s      $f8, $f2, $f0
/* DC140 80125D80 C7A60010 */  lwc1       $f6, 0x10($sp)
/* DC144 80125D84 46003002 */  mul.s      $f0, $f6, $f0
/* DC148 80125D88 46043301 */  sub.s      $f12, $f6, $f4
/* DC14C 80125D8C 460A6402 */  mul.s      $f16, $f12, $f10
/* DC150 80125D90 46004201 */  sub.s      $f8, $f8, $f0
/* DC154 80125D94 46024482 */  mul.s      $f18, $f8, $f2
/* DC158 80125D98 00000000 */  nop
/* DC15C 80125D9C 46064382 */  mul.s      $f14, $f8, $f6
/* DC160 80125DA0 46022101 */  sub.s      $f4, $f4, $f2
/* DC164 80125DA4 460A2282 */  mul.s      $f10, $f4, $f10
/* DC168 80125DA8 00000000 */  nop
/* DC16C 80125DAC 46022082 */  mul.s      $f2, $f4, $f2
/* DC170 80125DB0 00000000 */  nop
/* DC174 80125DB4 46066182 */  mul.s      $f6, $f12, $f6
/* DC178 80125DB8 02202821 */  addu       $a1, $s1, $zero
/* DC17C 80125DBC AFA00044 */  sw         $zero, 0x44($sp)
/* DC180 80125DC0 3C01800D */  lui        $at, %hi(D_race_800CEA10)
/* DC184 80125DC4 C420EA10 */  lwc1       $f0, %lo(D_race_800CEA10)($at)
/* DC188 80125DC8 46128401 */  sub.s      $f16, $f16, $f18
/* DC18C 80125DCC E7A00048 */  swc1       $f0, 0x48($sp)
/* DC190 80125DD0 E7A40030 */  swc1       $f4, 0x30($sp)
/* DC194 80125DD4 460A7381 */  sub.s      $f14, $f14, $f10
/* DC198 80125DD8 E7AC0034 */  swc1       $f12, 0x34($sp)
/* DC19C 80125DDC E7A80038 */  swc1       $f8, 0x38($sp)
/* DC1A0 80125DE0 46061081 */  sub.s      $f2, $f2, $f6
/* DC1A4 80125DE4 E7B00020 */  swc1       $f16, 0x20($sp)
/* DC1A8 80125DE8 E7AE0024 */  swc1       $f14, 0x24($sp)
/* DC1AC 80125DEC E7A20028 */  swc1       $f2, 0x28($sp)
/* DC1B0 80125DF0 8E04003C */  lw         $a0, 0x3C($s0)
/* DC1B4 80125DF4 0C0157D3 */  jal        func_80055F4C
/* DC1B8 80125DF8 27A60020 */   addiu     $a2, $sp, 0x20
/* DC1BC 80125DFC 8E020078 */  lw         $v0, 0x78($s0)
/* DC1C0 80125E00 1040006E */  beqz       $v0, .Lrace_80125FBC
/* DC1C4 80125E04 02202021 */   addu      $a0, $s1, $zero
/* DC1C8 80125E08 C4420A04 */  lwc1       $f2, 0xA04($v0)
/* DC1CC 80125E0C 3C01800D */  lui        $at, %hi(D_race_800CEA14)
/* DC1D0 80125E10 C420EA14 */  lwc1       $f0, %lo(D_race_800CEA14)($at)
/* DC1D4 80125E14 4600103E */  c.le.s     $f2, $f0
/* DC1D8 80125E18 00000000 */  nop
/* DC1DC 80125E1C 45000012 */  bc1f       .Lrace_80125E68
/* DC1E0 80125E20 00000000 */   nop
/* DC1E4 80125E24 92020080 */  lbu        $v0, 0x80($s0)
/* DC1E8 80125E28 8E030078 */  lw         $v1, 0x78($s0)
/* DC1EC 80125E2C 34420001 */  ori        $v0, $v0, 0x1
/* DC1F0 80125E30 A2020080 */  sb         $v0, 0x80($s0)
/* DC1F4 80125E34 8C620D04 */  lw         $v0, 0xD04($v1)
/* DC1F8 80125E38 30420008 */  andi       $v0, $v0, 0x8
/* DC1FC 80125E3C 14400006 */  bnez       $v0, .Lrace_80125E58
/* DC200 80125E40 00000000 */   nop
/* DC204 80125E44 8E020008 */  lw         $v0, 0x8($s0)
/* DC208 80125E48 2C4203E9 */  sltiu      $v0, $v0, 0x3E9
/* DC20C 80125E4C 14400002 */  bnez       $v0, .Lrace_80125E58
/* DC210 80125E50 240203E8 */   addiu     $v0, $zero, 0x3E8
/* DC214 80125E54 AE020008 */  sw         $v0, 0x8($s0)
.Lrace_80125E58:
/* DC218 80125E58 8E040078 */  lw         $a0, 0x78($s0)
/* DC21C 80125E5C 0C0434A9 */  jal        func_race_8010D2A4
/* DC220 80125E60 00000000 */   nop
/* DC224 80125E64 8E020078 */  lw         $v0, 0x78($s0)
.Lrace_80125E68:
/* DC228 80125E68 8C420B2C */  lw         $v0, 0xB2C($v0)
/* DC22C 80125E6C 14400046 */  bnez       $v0, .Lrace_80125F88
/* DC230 80125E70 00000000 */   nop
/* DC234 80125E74 92030080 */  lbu        $v1, 0x80($s0)
/* DC238 80125E78 30620001 */  andi       $v0, $v1, 0x1
/* DC23C 80125E7C 10400042 */  beqz       $v0, .Lrace_80125F88
/* DC240 80125E80 30620002 */   andi      $v0, $v1, 0x2
/* DC244 80125E84 14400040 */  bnez       $v0, .Lrace_80125F88
/* DC248 80125E88 00000000 */   nop
/* DC24C 80125E8C C7A40068 */  lwc1       $f4, 0x68($sp)
/* DC250 80125E90 3C01800D */  lui        $at, %hi(D_race_800CEA18)
/* DC254 80125E94 C420EA18 */  lwc1       $f0, %lo(D_race_800CEA18)($at)
/* DC258 80125E98 C7A60060 */  lwc1       $f6, 0x60($sp)
/* DC25C 80125E9C 46002101 */  sub.s      $f4, $f4, $f0
/* DC260 80125EA0 C7A00050 */  lwc1       $f0, 0x50($sp)
/* DC264 80125EA4 C7A20064 */  lwc1       $f2, 0x64($sp)
/* DC268 80125EA8 46003181 */  sub.s      $f6, $f6, $f0
/* DC26C 80125EAC C7A00054 */  lwc1       $f0, 0x54($sp)
/* DC270 80125EB0 27A40010 */  addiu      $a0, $sp, 0x10
/* DC274 80125EB4 46001081 */  sub.s      $f2, $f2, $f0
/* DC278 80125EB8 C7A00058 */  lwc1       $f0, 0x58($sp)
/* DC27C 80125EBC 00802821 */  addu       $a1, $a0, $zero
/* DC280 80125EC0 E7A40068 */  swc1       $f4, 0x68($sp)
/* DC284 80125EC4 46002101 */  sub.s      $f4, $f4, $f0
/* DC288 80125EC8 E7A60010 */  swc1       $f6, 0x10($sp)
/* DC28C 80125ECC E7A20014 */  swc1       $f2, 0x14($sp)
/* DC290 80125ED0 0C000F26 */  jal        func_80003C98
/* DC294 80125ED4 E7A40018 */   swc1      $f4, 0x18($sp)
/* DC298 80125ED8 27A50010 */  addiu      $a1, $sp, 0x10
/* DC29C 80125EDC 8E040078 */  lw         $a0, 0x78($s0)
/* DC2A0 80125EE0 4492A000 */  mtc1       $s2, $f20
/* DC2A4 80125EE4 4680A520 */  cvt.s.w    $f20, $f20
/* DC2A8 80125EE8 248403FC */  addiu      $a0, $a0, 0x3FC
/* DC2AC 80125EEC 8C8200CC */  lw         $v0, 0xCC($a0)
/* DC2B0 80125EF0 4406A000 */  mfc1       $a2, $f20
/* DC2B4 80125EF4 84430040 */  lh         $v1, 0x40($v0)
/* DC2B8 80125EF8 8C420044 */  lw         $v0, 0x44($v0)
/* DC2BC 80125EFC 0040F809 */  jalr       $v0
/* DC2C0 80125F00 00832021 */   addu      $a0, $a0, $v1
/* DC2C4 80125F04 8E020078 */  lw         $v0, 0x78($s0)
/* DC2C8 80125F08 3C01800D */  lui        $at, %hi(D_race_800CEA1C)
/* DC2CC 80125F0C C420EA1C */  lwc1       $f0, %lo(D_race_800CEA1C)($at)
/* DC2D0 80125F10 C4420A04 */  lwc1       $f2, 0xA04($v0)
/* DC2D4 80125F14 4600103E */  c.le.s     $f2, $f0
/* DC2D8 80125F18 00000000 */  nop
/* DC2DC 80125F1C 45000015 */  bc1f       .Lrace_80125F74
/* DC2E0 80125F20 00001021 */   addu      $v0, $zero, $zero
/* DC2E4 80125F24 C7A20050 */  lwc1       $f2, 0x50($sp)
/* DC2E8 80125F28 C7A00060 */  lwc1       $f0, 0x60($sp)
/* DC2EC 80125F2C 46001081 */  sub.s      $f2, $f2, $f0
/* DC2F0 80125F30 46021082 */  mul.s      $f2, $f2, $f2
/* DC2F4 80125F34 C7A60054 */  lwc1       $f6, 0x54($sp)
/* DC2F8 80125F38 C7A00064 */  lwc1       $f0, 0x64($sp)
/* DC2FC 80125F3C 46003181 */  sub.s      $f6, $f6, $f0
/* DC300 80125F40 46063182 */  mul.s      $f6, $f6, $f6
/* DC304 80125F44 C7A40068 */  lwc1       $f4, 0x68($sp)
/* DC308 80125F48 C7A00058 */  lwc1       $f0, 0x58($sp)
/* DC30C 80125F4C 46040001 */  sub.s      $f0, $f0, $f4
/* DC310 80125F50 46000002 */  mul.s      $f0, $f0, $f0
/* DC314 80125F54 46061080 */  add.s      $f2, $f2, $f6
/* DC318 80125F58 46001080 */  add.s      $f2, $f2, $f0
/* DC31C 80125F5C 3C01800D */  lui        $at, %hi(D_race_800CEA20)
/* DC320 80125F60 C420EA20 */  lwc1       $f0, %lo(D_race_800CEA20)($at)
/* DC324 80125F64 4600103E */  c.le.s     $f2, $f0
/* DC328 80125F68 00000000 */  nop
/* DC32C 80125F6C 45030001 */  bc1tl      .Lrace_80125F74
/* DC330 80125F70 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_80125F74:
/* DC334 80125F74 10400004 */  beqz       $v0, .Lrace_80125F88
/* DC338 80125F78 00000000 */   nop
/* DC33C 80125F7C 92020080 */  lbu        $v0, 0x80($s0)
/* DC340 80125F80 34420002 */  ori        $v0, $v0, 0x2
/* DC344 80125F84 A2020080 */  sb         $v0, 0x80($s0)
.Lrace_80125F88:
/* DC348 80125F88 8E050078 */  lw         $a1, 0x78($s0)
/* DC34C 80125F8C 8CA20C84 */  lw         $v0, 0xC84($a1)
/* DC350 80125F90 30420001 */  andi       $v0, $v0, 0x1
/* DC354 80125F94 10400034 */  beqz       $v0, .Lrace_80126068
/* DC358 80125F98 00000000 */   nop
/* DC35C 80125F9C 8E040038 */  lw         $a0, 0x38($s0)
/* DC360 80125FA0 0C04B3C7 */  jal        func_race_8012CF1C
/* DC364 80125FA4 00000000 */   nop
/* DC368 80125FA8 8E040078 */  lw         $a0, 0x78($s0)
/* DC36C 80125FAC 0C04353E */  jal        func_race_8010D4F8
/* DC370 80125FB0 00000000 */   nop
/* DC374 80125FB4 0804981A */  j          .Lrace_80126068
/* DC378 80125FB8 00000000 */   nop
.Lrace_80125FBC:
/* DC37C 80125FBC C7A40068 */  lwc1       $f4, 0x68($sp)
/* DC380 80125FC0 3C01800D */  lui        $at, %hi(D_race_800CEA24)
/* DC384 80125FC4 C420EA24 */  lwc1       $f0, %lo(D_race_800CEA24)($at)
/* DC388 80125FC8 C7A60060 */  lwc1       $f6, 0x60($sp)
/* DC38C 80125FCC 46002101 */  sub.s      $f4, $f4, $f0
/* DC390 80125FD0 C7A00050 */  lwc1       $f0, 0x50($sp)
/* DC394 80125FD4 C7A20064 */  lwc1       $f2, 0x64($sp)
/* DC398 80125FD8 46003181 */  sub.s      $f6, $f6, $f0
/* DC39C 80125FDC C7A00054 */  lwc1       $f0, 0x54($sp)
/* DC3A0 80125FE0 46001081 */  sub.s      $f2, $f2, $f0
/* DC3A4 80125FE4 C7A00058 */  lwc1       $f0, 0x58($sp)
/* DC3A8 80125FE8 02202821 */  addu       $a1, $s1, $zero
/* DC3AC 80125FEC E7A40068 */  swc1       $f4, 0x68($sp)
/* DC3B0 80125FF0 46002101 */  sub.s      $f4, $f4, $f0
/* DC3B4 80125FF4 E7A60010 */  swc1       $f6, 0x10($sp)
/* DC3B8 80125FF8 E7A20014 */  swc1       $f2, 0x14($sp)
/* DC3BC 80125FFC 0C000F26 */  jal        func_80003C98
/* DC3C0 80126000 E7A40018 */   swc1      $f4, 0x18($sp)
/* DC3C4 80126004 02202821 */  addu       $a1, $s1, $zero
/* DC3C8 80126008 8E04007C */  lw         $a0, 0x7C($s0)
/* DC3CC 8012600C 4492A000 */  mtc1       $s2, $f20
/* DC3D0 80126010 4680A520 */  cvt.s.w    $f20, $f20
/* DC3D4 80126014 248403FC */  addiu      $a0, $a0, 0x3FC
/* DC3D8 80126018 8C8200CC */  lw         $v0, 0xCC($a0)
/* DC3DC 8012601C 4406A000 */  mfc1       $a2, $f20
/* DC3E0 80126020 84430040 */  lh         $v1, 0x40($v0)
/* DC3E4 80126024 8C420044 */  lw         $v0, 0x44($v0)
/* DC3E8 80126028 0040F809 */  jalr       $v0
/* DC3EC 8012602C 00832021 */   addu      $a0, $a0, $v1
/* DC3F0 80126030 0804981A */  j          .Lrace_80126068
/* DC3F4 80126034 AE00007C */   sw        $zero, 0x7C($s0)
.Lrace_80126038:
/* DC3F8 80126038 3C01800D */  lui        $at, %hi(D_race_800CEA28)
/* DC3FC 8012603C C420EA28 */  lwc1       $f0, %lo(D_race_800CEA28)($at)
/* DC400 80126040 AFA00014 */  sw         $zero, 0x14($sp)
/* DC404 80126044 E7A00018 */  swc1       $f0, 0x18($sp)
/* DC408 80126048 8E03003C */  lw         $v1, 0x3C($s0)
/* DC40C 8012604C 2605002C */  addiu      $a1, $s0, 0x2C
/* DC410 80126050 8C620024 */  lw         $v0, 0x24($v1)
/* DC414 80126054 27A60010 */  addiu      $a2, $sp, 0x10
/* DC418 80126058 84440080 */  lh         $a0, 0x80($v0)
/* DC41C 8012605C 8C420084 */  lw         $v0, 0x84($v0)
/* DC420 80126060 0040F809 */  jalr       $v0
/* DC424 80126064 00642021 */   addu      $a0, $v1, $a0
.Lrace_80126068:
/* DC428 80126068 8E030004 */  lw         $v1, 0x4($s0)
/* DC42C 8012606C 24020004 */  addiu      $v0, $zero, 0x4
/* DC430 80126070 1462000B */  bne        $v1, $v0, .Lrace_801260A0
/* DC434 80126074 00000000 */   nop
/* DC438 80126078 C6000008 */  lwc1       $f0, 0x8($s0)
/* DC43C 8012607C 46800020 */  cvt.s.w    $f0, $f0
/* DC440 80126080 3C01800D */  lui        $at, %hi(D_race_800CEA2C)
/* DC444 80126084 C424EA2C */  lwc1       $f4, %lo(D_race_800CEA2C)($at)
/* DC448 80126088 8E02003C */  lw         $v0, 0x3C($s0)
/* DC44C 8012608C 3C01800D */  lui        $at, %hi(D_race_800CEA30)
/* DC450 80126090 C422EA30 */  lwc1       $f2, %lo(D_race_800CEA30)($at)
/* DC454 80126094 46040003 */  div.s      $f0, $f0, $f4
/* DC458 80126098 E442000C */  swc1       $f2, 0xC($v0)
/* DC45C 8012609C E4400058 */  swc1       $f0, 0x58($v0)
.Lrace_801260A0:
/* DC460 801260A0 8E02003C */  lw         $v0, 0x3C($s0)
/* DC464 801260A4 8E030040 */  lw         $v1, 0x40($s0)
/* DC468 801260A8 C4400028 */  lwc1       $f0, 0x28($v0)
/* DC46C 801260AC E4600028 */  swc1       $f0, 0x28($v1)
/* DC470 801260B0 C440002C */  lwc1       $f0, 0x2C($v0)
/* DC474 801260B4 E460002C */  swc1       $f0, 0x2C($v1)
/* DC478 801260B8 C4400030 */  lwc1       $f0, 0x30($v0)
/* DC47C 801260BC E4600030 */  swc1       $f0, 0x30($v1)
/* DC480 801260C0 C4400034 */  lwc1       $f0, 0x34($v0)
/* DC484 801260C4 E4600034 */  swc1       $f0, 0x34($v1)
/* DC488 801260C8 C4400038 */  lwc1       $f0, 0x38($v0)
/* DC48C 801260CC E4600038 */  swc1       $f0, 0x38($v1)
/* DC490 801260D0 C440003C */  lwc1       $f0, 0x3C($v0)
/* DC494 801260D4 E460003C */  swc1       $f0, 0x3C($v1)
/* DC498 801260D8 C4400040 */  lwc1       $f0, 0x40($v0)
/* DC49C 801260DC E4600040 */  swc1       $f0, 0x40($v1)
/* DC4A0 801260E0 C4400044 */  lwc1       $f0, 0x44($v0)
/* DC4A4 801260E4 E4600044 */  swc1       $f0, 0x44($v1)
/* DC4A8 801260E8 C4400048 */  lwc1       $f0, 0x48($v0)
/* DC4AC 801260EC E4600048 */  swc1       $f0, 0x48($v1)
/* DC4B0 801260F0 8E02003C */  lw         $v0, 0x3C($s0)
/* DC4B4 801260F4 8E030044 */  lw         $v1, 0x44($s0)
/* DC4B8 801260F8 C4400028 */  lwc1       $f0, 0x28($v0)
/* DC4BC 801260FC E4600028 */  swc1       $f0, 0x28($v1)
/* DC4C0 80126100 C440002C */  lwc1       $f0, 0x2C($v0)
/* DC4C4 80126104 E460002C */  swc1       $f0, 0x2C($v1)
/* DC4C8 80126108 C4400030 */  lwc1       $f0, 0x30($v0)
/* DC4CC 8012610C E4600030 */  swc1       $f0, 0x30($v1)
/* DC4D0 80126110 C4400034 */  lwc1       $f0, 0x34($v0)
/* DC4D4 80126114 E4600034 */  swc1       $f0, 0x34($v1)
/* DC4D8 80126118 C4400038 */  lwc1       $f0, 0x38($v0)
/* DC4DC 8012611C E4600038 */  swc1       $f0, 0x38($v1)
/* DC4E0 80126120 C440003C */  lwc1       $f0, 0x3C($v0)
/* DC4E4 80126124 E460003C */  swc1       $f0, 0x3C($v1)
/* DC4E8 80126128 C4400040 */  lwc1       $f0, 0x40($v0)
/* DC4EC 8012612C E4600040 */  swc1       $f0, 0x40($v1)
/* DC4F0 80126130 C4400044 */  lwc1       $f0, 0x44($v0)
/* DC4F4 80126134 E4600044 */  swc1       $f0, 0x44($v1)
/* DC4F8 80126138 C4400048 */  lwc1       $f0, 0x48($v0)
/* DC4FC 8012613C E4600048 */  swc1       $f0, 0x48($v1)
/* DC500 80126140 8E03003C */  lw         $v1, 0x3C($s0)
/* DC504 80126144 8C620024 */  lw         $v0, 0x24($v1)
/* DC508 80126148 02402821 */  addu       $a1, $s2, $zero
/* DC50C 8012614C 84440020 */  lh         $a0, 0x20($v0)
/* DC510 80126150 8C420024 */  lw         $v0, 0x24($v0)
/* DC514 80126154 0040F809 */  jalr       $v0
/* DC518 80126158 00642021 */   addu      $a0, $v1, $a0
/* DC51C 8012615C 8E030040 */  lw         $v1, 0x40($s0)
/* DC520 80126160 8C620024 */  lw         $v0, 0x24($v1)
/* DC524 80126164 02402821 */  addu       $a1, $s2, $zero
/* DC528 80126168 84440020 */  lh         $a0, 0x20($v0)
/* DC52C 8012616C 8C420024 */  lw         $v0, 0x24($v0)
/* DC530 80126170 0040F809 */  jalr       $v0
/* DC534 80126174 00642021 */   addu      $a0, $v1, $a0
/* DC538 80126178 8E030044 */  lw         $v1, 0x44($s0)
/* DC53C 8012617C 8C620024 */  lw         $v0, 0x24($v1)
/* DC540 80126180 02402821 */  addu       $a1, $s2, $zero
/* DC544 80126184 84440020 */  lh         $a0, 0x20($v0)
/* DC548 80126188 8C420024 */  lw         $v0, 0x24($v0)
/* DC54C 8012618C 0040F809 */  jalr       $v0
/* DC550 80126190 00642021 */   addu      $a0, $v1, $a0
.Lrace_80126194:
/* DC554 80126194 8FBF007C */  lw         $ra, 0x7C($sp)
/* DC558 80126198 8FB20078 */  lw         $s2, 0x78($sp)
/* DC55C 8012619C 8FB10074 */  lw         $s1, 0x74($sp)
/* DC560 801261A0 8FB00070 */  lw         $s0, 0x70($sp)
/* DC564 801261A4 D7B40080 */  ldc1       $f20, 0x80($sp)
/* DC568 801261A8 03E00008 */  jr         $ra
/* DC56C 801261AC 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_race_801261B0
/* DC570 801261B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DC574 801261B4 00803021 */  addu       $a2, $a0, $zero
/* DC578 801261B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* DC57C 801261BC 8CC30004 */  lw         $v1, 0x4($a2)
/* DC580 801261C0 24020006 */  addiu      $v0, $zero, 0x6
/* DC584 801261C4 10620007 */  beq        $v1, $v0, .Lrace_801261E4
/* DC588 801261C8 00A03821 */   addu      $a3, $a1, $zero
/* DC58C 801261CC 8CE2012C */  lw         $v0, 0x12C($a3)
/* DC590 801261D0 8CC5003C */  lw         $a1, 0x3C($a2)
/* DC594 801261D4 84440118 */  lh         $a0, 0x118($v0)
/* DC598 801261D8 8C42011C */  lw         $v0, 0x11C($v0)
/* DC59C 801261DC 0040F809 */  jalr       $v0
/* DC5A0 801261E0 00E42021 */   addu      $a0, $a3, $a0
.Lrace_801261E4:
/* DC5A4 801261E4 8FBF0010 */  lw         $ra, 0x10($sp)
/* DC5A8 801261E8 03E00008 */  jr         $ra
/* DC5AC 801261EC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801261F0
/* DC5B0 801261F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DC5B4 801261F4 AFB10014 */  sw         $s1, 0x14($sp)
/* DC5B8 801261F8 00808821 */  addu       $s1, $a0, $zero
/* DC5BC 801261FC AFB00010 */  sw         $s0, 0x10($sp)
/* DC5C0 80126200 AFBF001C */  sw         $ra, 0x1C($sp)
/* DC5C4 80126204 AFB20018 */  sw         $s2, 0x18($sp)
/* DC5C8 80126208 8E230004 */  lw         $v1, 0x4($s1)
/* DC5CC 8012620C 24020006 */  addiu      $v0, $zero, 0x6
/* DC5D0 80126210 10620029 */  beq        $v1, $v0, .Lrace_801262B8
/* DC5D4 80126214 00A08021 */   addu      $s0, $a1, $zero
/* DC5D8 80126218 24120004 */  addiu      $s2, $zero, 0x4
/* DC5DC 8012621C 14720010 */  bne        $v1, $s2, .Lrace_80126260
/* DC5E0 80126220 24060001 */   addiu     $a2, $zero, 0x1
/* DC5E4 80126224 C6200008 */  lwc1       $f0, 0x8($s1)
/* DC5E8 80126228 46800020 */  cvt.s.w    $f0, $f0
/* DC5EC 8012622C 3C01800D */  lui        $at, %hi(D_race_800CEA34)
/* DC5F0 80126230 C422EA34 */  lwc1       $f2, %lo(D_race_800CEA34)($at)
/* DC5F4 80126234 3C01800D */  lui        $at, %hi(D_race_800CEA38)
/* DC5F8 80126238 C424EA38 */  lwc1       $f4, %lo(D_race_800CEA38)($at)
/* DC5FC 8012623C 8E02012C */  lw         $v0, 0x12C($s0)
/* DC600 80126240 46020003 */  div.s      $f0, $f0, $f2
/* DC604 80126244 46040002 */  mul.s      $f0, $f0, $f4
/* DC608 80126248 84440170 */  lh         $a0, 0x170($v0)
/* DC60C 8012624C 8C420174 */  lw         $v0, 0x174($v0)
/* DC610 80126250 4600018D */  trunc.w.s  $f6, $f0
/* DC614 80126254 44053000 */  mfc1       $a1, $f6
/* DC618 80126258 0040F809 */  jalr       $v0
/* DC61C 8012625C 02042021 */   addu      $a0, $s0, $a0
.Lrace_80126260:
/* DC620 80126260 8E230044 */  lw         $v1, 0x44($s1)
/* DC624 80126264 8C620024 */  lw         $v0, 0x24($v1)
/* DC628 80126268 02002821 */  addu       $a1, $s0, $zero
/* DC62C 8012626C 84440040 */  lh         $a0, 0x40($v0)
/* DC630 80126270 8C420044 */  lw         $v0, 0x44($v0)
/* DC634 80126274 0040F809 */  jalr       $v0
/* DC638 80126278 00642021 */   addu      $a0, $v1, $a0
/* DC63C 8012627C 8E230040 */  lw         $v1, 0x40($s1)
/* DC640 80126280 8C620024 */  lw         $v0, 0x24($v1)
/* DC644 80126284 02002821 */  addu       $a1, $s0, $zero
/* DC648 80126288 84440040 */  lh         $a0, 0x40($v0)
/* DC64C 8012628C 8C420044 */  lw         $v0, 0x44($v0)
/* DC650 80126290 0040F809 */  jalr       $v0
/* DC654 80126294 00642021 */   addu      $a0, $v1, $a0
/* DC658 80126298 8E220004 */  lw         $v0, 0x4($s1)
/* DC65C 8012629C 14520006 */  bne        $v0, $s2, .Lrace_801262B8
/* DC660 801262A0 00000000 */   nop
/* DC664 801262A4 8E02012C */  lw         $v0, 0x12C($s0)
/* DC668 801262A8 84440178 */  lh         $a0, 0x178($v0)
/* DC66C 801262AC 8C42017C */  lw         $v0, 0x17C($v0)
/* DC670 801262B0 0040F809 */  jalr       $v0
/* DC674 801262B4 02042021 */   addu      $a0, $s0, $a0
.Lrace_801262B8:
/* DC678 801262B8 8FBF001C */  lw         $ra, 0x1C($sp)
/* DC67C 801262BC 8FB20018 */  lw         $s2, 0x18($sp)
/* DC680 801262C0 8FB10014 */  lw         $s1, 0x14($sp)
/* DC684 801262C4 8FB00010 */  lw         $s0, 0x10($sp)
/* DC688 801262C8 03E00008 */  jr         $ra
/* DC68C 801262CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801262D0
/* DC690 801262D0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DC694 801262D4 AFB00030 */  sw         $s0, 0x30($sp)
/* DC698 801262D8 00808021 */  addu       $s0, $a0, $zero
/* DC69C 801262DC AFBF0034 */  sw         $ra, 0x34($sp)
/* DC6A0 801262E0 8E020004 */  lw         $v0, 0x4($s0)
/* DC6A4 801262E4 24030004 */  addiu      $v1, $zero, 0x4
/* DC6A8 801262E8 54430004 */  bnel       $v0, $v1, .Lrace_801262FC
/* DC6AC 801262EC AE030004 */   sw        $v1, 0x4($s0)
/* DC6B0 801262F0 24020006 */  addiu      $v0, $zero, 0x6
/* DC6B4 801262F4 080498D4 */  j          .Lrace_80126350
/* DC6B8 801262F8 AE020004 */   sw        $v0, 0x4($s0)
.Lrace_801262FC:
/* DC6BC 801262FC 8E03003C */  lw         $v1, 0x3C($s0)
/* DC6C0 80126300 240203E8 */  addiu      $v0, $zero, 0x3E8
/* DC6C4 80126304 AE020008 */  sw         $v0, 0x8($s0)
/* DC6C8 80126308 8C620024 */  lw         $v0, 0x24($v1)
/* DC6CC 8012630C 27A50020 */  addiu      $a1, $sp, 0x20
/* DC6D0 80126310 84440010 */  lh         $a0, 0x10($v0)
/* DC6D4 80126314 8C420014 */  lw         $v0, 0x14($v0)
/* DC6D8 80126318 0040F809 */  jalr       $v0
/* DC6DC 8012631C 00642021 */   addu      $a0, $v1, $a0
/* DC6E0 80126320 3C01800D */  lui        $at, %hi(D_race_800CEA3C)
/* DC6E4 80126324 C422EA3C */  lwc1       $f2, %lo(D_race_800CEA3C)($at)
/* DC6E8 80126328 3C01800D */  lui        $at, %hi(D_race_800CEA40)
/* DC6EC 8012632C C420EA40 */  lwc1       $f0, %lo(D_race_800CEA40)($at)
/* DC6F0 80126330 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DC6F4 80126334 2405004A */  addiu      $a1, $zero, 0x4A
/* DC6F8 80126338 E7A20010 */  swc1       $f2, 0x10($sp)
/* DC6FC 8012633C E7A00014 */  swc1       $f0, 0x14($sp)
/* DC700 80126340 E7A00018 */  swc1       $f0, 0x18($sp)
/* DC704 80126344 8E040010 */  lw         $a0, 0x10($s0)
/* DC708 80126348 0C046530 */  jal        func_race_801194C0
/* DC70C 8012634C 27A60020 */   addiu     $a2, $sp, 0x20
.Lrace_80126350:
/* DC710 80126350 8FBF0034 */  lw         $ra, 0x34($sp)
/* DC714 80126354 8FB00030 */  lw         $s0, 0x30($sp)
/* DC718 80126358 03E00008 */  jr         $ra
/* DC71C 8012635C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_80126360
/* DC720 80126360 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* DC724 80126364 AFB00040 */  sw         $s0, 0x40($sp)
/* DC728 80126368 00808021 */  addu       $s0, $a0, $zero
/* DC72C 8012636C AFB20048 */  sw         $s2, 0x48($sp)
/* DC730 80126370 AFBF004C */  sw         $ra, 0x4C($sp)
/* DC734 80126374 AFB10044 */  sw         $s1, 0x44($sp)
/* DC738 80126378 F7B40050 */  sdc1       $f20, 0x50($sp)
/* DC73C 8012637C 8E030004 */  lw         $v1, 0x4($s0)
/* DC740 80126380 24020004 */  addiu      $v0, $zero, 0x4
/* DC744 80126384 1062004C */  beq        $v1, $v0, .Lrace_801264B8
/* DC748 80126388 00A09021 */   addu      $s2, $a1, $zero
/* DC74C 8012638C 24020002 */  addiu      $v0, $zero, 0x2
/* DC750 80126390 14620006 */  bne        $v1, $v0, .Lrace_801263AC
/* DC754 80126394 24020003 */   addiu     $v0, $zero, 0x3
/* DC758 80126398 AE020004 */  sw         $v0, 0x4($s0)
/* DC75C 8012639C 24020FA0 */  addiu      $v0, $zero, 0xFA0
/* DC760 801263A0 AE020008 */  sw         $v0, 0x8($s0)
/* DC764 801263A4 8E030004 */  lw         $v1, 0x4($s0)
/* DC768 801263A8 24020003 */  addiu      $v0, $zero, 0x3
.Lrace_801263AC:
/* DC76C 801263AC 14620042 */  bne        $v1, $v0, .Lrace_801264B8
/* DC770 801263B0 27A50020 */   addiu     $a1, $sp, 0x20
/* DC774 801263B4 8E03003C */  lw         $v1, 0x3C($s0)
/* DC778 801263B8 8C620024 */  lw         $v0, 0x24($v1)
/* DC77C 801263BC 84440010 */  lh         $a0, 0x10($v0)
/* DC780 801263C0 8C420014 */  lw         $v0, 0x14($v0)
/* DC784 801263C4 0040F809 */  jalr       $v0
/* DC788 801263C8 00642021 */   addu      $a0, $v1, $a0
/* DC78C 801263CC C7A00028 */  lwc1       $f0, 0x28($sp)
/* DC790 801263D0 3C01800D */  lui        $at, %hi(D_race_800CEA44)
/* DC794 801263D4 C434EA44 */  lwc1       $f20, %lo(D_race_800CEA44)($at)
/* DC798 801263D8 46140001 */  sub.s      $f0, $f0, $f20
/* DC79C 801263DC E7A00028 */  swc1       $f0, 0x28($sp)
/* DC7A0 801263E0 8E43005C */  lw         $v1, 0x5C($s2)
/* DC7A4 801263E4 8C620024 */  lw         $v0, 0x24($v1)
/* DC7A8 801263E8 27A50030 */  addiu      $a1, $sp, 0x30
/* DC7AC 801263EC 84440010 */  lh         $a0, 0x10($v0)
/* DC7B0 801263F0 8C420014 */  lw         $v0, 0x14($v0)
/* DC7B4 801263F4 0040F809 */  jalr       $v0
/* DC7B8 801263F8 00642021 */   addu      $a0, $v1, $a0
/* DC7BC 801263FC C7A20020 */  lwc1       $f2, 0x20($sp)
/* DC7C0 80126400 C7A00030 */  lwc1       $f0, 0x30($sp)
/* DC7C4 80126404 46001081 */  sub.s      $f2, $f2, $f0
/* DC7C8 80126408 46021082 */  mul.s      $f2, $f2, $f2
/* DC7CC 8012640C 27B10020 */  addiu      $s1, $sp, 0x20
/* DC7D0 80126410 C6260004 */  lwc1       $f6, 0x4($s1)
/* DC7D4 80126414 C7A00034 */  lwc1       $f0, 0x34($sp)
/* DC7D8 80126418 46003181 */  sub.s      $f6, $f6, $f0
/* DC7DC 8012641C 46063182 */  mul.s      $f6, $f6, $f6
/* DC7E0 80126420 C7A40038 */  lwc1       $f4, 0x38($sp)
/* DC7E4 80126424 C6200008 */  lwc1       $f0, 0x8($s1)
/* DC7E8 80126428 46040001 */  sub.s      $f0, $f0, $f4
/* DC7EC 8012642C 46000002 */  mul.s      $f0, $f0, $f0
/* DC7F0 80126430 46061080 */  add.s      $f2, $f2, $f6
/* DC7F4 80126434 46001080 */  add.s      $f2, $f2, $f0
/* DC7F8 80126438 3C01800D */  lui        $at, %hi(D_race_800CEA48)
/* DC7FC 8012643C C420EA48 */  lwc1       $f0, %lo(D_race_800CEA48)($at)
/* DC800 80126440 4600103E */  c.le.s     $f2, $f0
/* DC804 80126444 00000000 */  nop
/* DC808 80126448 45000018 */  bc1f       .Lrace_801264AC
/* DC80C 8012644C 00000000 */   nop
/* DC810 80126450 8E020078 */  lw         $v0, 0x78($s0)
/* DC814 80126454 14400018 */  bnez       $v0, .Lrace_801264B8
/* DC818 80126458 02402021 */   addu      $a0, $s2, $zero
/* DC81C 8012645C 0C043859 */  jal        func_race_8010E164
/* DC820 80126460 AE120078 */   sw        $s2, 0x78($s0)
/* DC824 80126464 3C01800D */  lui        $at, %hi(D_race_800CEA4C)
/* DC828 80126468 C422EA4C */  lwc1       $f2, %lo(D_race_800CEA4C)($at)
/* DC82C 8012646C 3C01800D */  lui        $at, %hi(D_race_800CEA50)
/* DC830 80126470 C420EA50 */  lwc1       $f0, %lo(D_race_800CEA50)($at)
/* DC834 80126474 4407A000 */  mfc1       $a3, $f20
/* DC838 80126478 24050023 */  addiu      $a1, $zero, 0x23
/* DC83C 8012647C AE00007C */  sw         $zero, 0x7C($s0)
/* DC840 80126480 E7A20010 */  swc1       $f2, 0x10($sp)
/* DC844 80126484 E7A00014 */  swc1       $f0, 0x14($sp)
/* DC848 80126488 E7A00018 */  swc1       $f0, 0x18($sp)
/* DC84C 8012648C 8E040010 */  lw         $a0, 0x10($s0)
/* DC850 80126490 0C046530 */  jal        func_race_801194C0
/* DC854 80126494 02203021 */   addu      $a2, $s1, $zero
/* DC858 80126498 02402021 */  addu       $a0, $s2, $zero
/* DC85C 8012649C 0C04339E */  jal        func_race_8010CE78
/* DC860 801264A0 00002821 */   addu      $a1, $zero, $zero
/* DC864 801264A4 0804992E */  j          .Lrace_801264B8
/* DC868 801264A8 00000000 */   nop
.Lrace_801264AC:
/* DC86C 801264AC 8E02007C */  lw         $v0, 0x7C($s0)
/* DC870 801264B0 50400001 */  beql       $v0, $zero, .Lrace_801264B8
/* DC874 801264B4 AE12007C */   sw        $s2, 0x7C($s0)
.Lrace_801264B8:
/* DC878 801264B8 8FBF004C */  lw         $ra, 0x4C($sp)
/* DC87C 801264BC 8FB20048 */  lw         $s2, 0x48($sp)
/* DC880 801264C0 8FB10044 */  lw         $s1, 0x44($sp)
/* DC884 801264C4 8FB00040 */  lw         $s0, 0x40($sp)
/* DC888 801264C8 D7B40050 */  ldc1       $f20, 0x50($sp)
/* DC88C 801264CC 03E00008 */  jr         $ra
/* DC890 801264D0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_801264D4
/* DC894 801264D4 27BDFF80 */  addiu      $sp, $sp, -0x80
/* DC898 801264D8 AFB20070 */  sw         $s2, 0x70($sp)
/* DC89C 801264DC 00809021 */  addu       $s2, $a0, $zero
/* DC8A0 801264E0 AFB00068 */  sw         $s0, 0x68($sp)
/* DC8A4 801264E4 27B00038 */  addiu      $s0, $sp, 0x38
/* DC8A8 801264E8 02003021 */  addu       $a2, $s0, $zero
/* DC8AC 801264EC AFBF0074 */  sw         $ra, 0x74($sp)
/* DC8B0 801264F0 AFB1006C */  sw         $s1, 0x6C($sp)
/* DC8B4 801264F4 F7B40078 */  sdc1       $f20, 0x78($sp)
/* DC8B8 801264F8 8E450028 */  lw         $a1, 0x28($s2)
/* DC8BC 801264FC 0C049A1F */  jal        func_race_8012687C
/* DC8C0 80126500 00003821 */   addu      $a3, $zero, $zero
/* DC8C4 80126504 C7A00040 */  lwc1       $f0, 0x40($sp)
/* DC8C8 80126508 3C01800D */  lui        $at, %hi(D_race_800CEA54)
/* DC8CC 8012650C C434EA54 */  lwc1       $f20, %lo(D_race_800CEA54)($at)
/* DC8D0 80126510 46140000 */  add.s      $f0, $f0, $f20
/* DC8D4 80126514 E7A00040 */  swc1       $f0, 0x40($sp)
/* DC8D8 80126518 8E43003C */  lw         $v1, 0x3C($s2)
/* DC8DC 8012651C 8C620024 */  lw         $v0, 0x24($v1)
/* DC8E0 80126520 02002821 */  addu       $a1, $s0, $zero
/* DC8E4 80126524 84440018 */  lh         $a0, 0x18($v0)
/* DC8E8 80126528 8C42001C */  lw         $v0, 0x1C($v0)
/* DC8EC 8012652C 0040F809 */  jalr       $v0
/* DC8F0 80126530 00642021 */   addu      $a0, $v1, $a0
/* DC8F4 80126534 C7A00040 */  lwc1       $f0, 0x40($sp)
/* DC8F8 80126538 46140001 */  sub.s      $f0, $f0, $f20
/* DC8FC 8012653C E7A00040 */  swc1       $f0, 0x40($sp)
/* DC900 80126540 8E430040 */  lw         $v1, 0x40($s2)
/* DC904 80126544 8E42003C */  lw         $v0, 0x3C($s2)
/* DC908 80126548 3C01800D */  lui        $at, %hi(D_race_800CEA58)
/* DC90C 8012654C C420EA58 */  lwc1       $f0, %lo(D_race_800CEA58)($at)
/* DC910 80126550 8C48004C */  lw         $t0, 0x4C($v0)
/* DC914 80126554 8C490050 */  lw         $t1, 0x50($v0)
/* DC918 80126558 8C4A0054 */  lw         $t2, 0x54($v0)
/* DC91C 8012655C AC68004C */  sw         $t0, 0x4C($v1)
/* DC920 80126560 AC690050 */  sw         $t1, 0x50($v1)
/* DC924 80126564 AC6A0054 */  sw         $t2, 0x54($v1)
/* DC928 80126568 E460000C */  swc1       $f0, 0xC($v1)
/* DC92C 8012656C 8E430044 */  lw         $v1, 0x44($s2)
/* DC930 80126570 8E42003C */  lw         $v0, 0x3C($s2)
/* DC934 80126574 8C48004C */  lw         $t0, 0x4C($v0)
/* DC938 80126578 8C490050 */  lw         $t1, 0x50($v0)
/* DC93C 8012657C 8C4A0054 */  lw         $t2, 0x54($v0)
/* DC940 80126580 AC68004C */  sw         $t0, 0x4C($v1)
/* DC944 80126584 AC690050 */  sw         $t1, 0x50($v1)
/* DC948 80126588 AC6A0054 */  sw         $t2, 0x54($v1)
/* DC94C 8012658C E460000C */  swc1       $f0, 0xC($v1)
/* DC950 80126590 8E43003C */  lw         $v1, 0x3C($s2)
/* DC954 80126594 8C62005C */  lw         $v0, 0x5C($v1)
/* DC958 80126598 3C100001 */  lui        $s0, (0x10000 >> 16)
/* DC95C 8012659C 00501025 */  or         $v0, $v0, $s0
/* DC960 801265A0 AC62005C */  sw         $v0, 0x5C($v1)
/* DC964 801265A4 8E44003C */  lw         $a0, 0x3C($s2)
/* DC968 801265A8 0C01971D */  jal        func_80065C74
/* DC96C 801265AC 00002821 */   addu      $a1, $zero, $zero
/* DC970 801265B0 8E430040 */  lw         $v1, 0x40($s2)
/* DC974 801265B4 8C62005C */  lw         $v0, 0x5C($v1)
/* DC978 801265B8 00501025 */  or         $v0, $v0, $s0
/* DC97C 801265BC AC62005C */  sw         $v0, 0x5C($v1)
/* DC980 801265C0 8E440040 */  lw         $a0, 0x40($s2)
/* DC984 801265C4 0C01971D */  jal        func_80065C74
/* DC988 801265C8 00002821 */   addu      $a1, $zero, $zero
/* DC98C 801265CC 8E430044 */  lw         $v1, 0x44($s2)
/* DC990 801265D0 8C62005C */  lw         $v0, 0x5C($v1)
/* DC994 801265D4 00501025 */  or         $v0, $v0, $s0
/* DC998 801265D8 AC62005C */  sw         $v0, 0x5C($v1)
/* DC99C 801265DC 8E440044 */  lw         $a0, 0x44($s2)
/* DC9A0 801265E0 0C01971D */  jal        func_80065C74
/* DC9A4 801265E4 00002821 */   addu      $a1, $zero, $zero
/* DC9A8 801265E8 8E420028 */  lw         $v0, 0x28($s2)
/* DC9AC 801265EC 8C430CC4 */  lw         $v1, 0xCC4($v0)
/* DC9B0 801265F0 10600008 */  beqz       $v1, .Lrace_80126614
/* DC9B4 801265F4 2642002C */   addiu     $v0, $s2, 0x2C
/* DC9B8 801265F8 C4600000 */  lwc1       $f0, 0x0($v1)
/* DC9BC 801265FC E640002C */  swc1       $f0, 0x2C($s2)
/* DC9C0 80126600 C4600004 */  lwc1       $f0, 0x4($v1)
/* DC9C4 80126604 E4400004 */  swc1       $f0, 0x4($v0)
/* DC9C8 80126608 C4600008 */  lwc1       $f0, 0x8($v1)
/* DC9CC 8012660C 0804998A */  j          .Lrace_80126628
/* DC9D0 80126610 E4400008 */   swc1      $f0, 0x8($v0)
.Lrace_80126614:
/* DC9D4 80126614 3C01800D */  lui        $at, %hi(D_race_800CEA5C)
/* DC9D8 80126618 C420EA5C */  lwc1       $f0, %lo(D_race_800CEA5C)($at)
/* DC9DC 8012661C AE400030 */  sw         $zero, 0x30($s2)
/* DC9E0 80126620 AE400034 */  sw         $zero, 0x34($s2)
/* DC9E4 80126624 E640002C */  swc1       $f0, 0x2C($s2)
.Lrace_80126628:
/* DC9E8 80126628 3C01800D */  lui        $at, %hi(D_race_800CEA60)
/* DC9EC 8012662C C434EA60 */  lwc1       $f20, %lo(D_race_800CEA60)($at)
/* DC9F0 80126630 AFA00048 */  sw         $zero, 0x48($sp)
/* DC9F4 80126634 AFA0004C */  sw         $zero, 0x4C($sp)
/* DC9F8 80126638 E7B40050 */  swc1       $f20, 0x50($sp)
/* DC9FC 8012663C 8E43003C */  lw         $v1, 0x3C($s2)
/* DCA00 80126640 2645002C */  addiu      $a1, $s2, 0x2C
/* DCA04 80126644 8C620024 */  lw         $v0, 0x24($v1)
/* DCA08 80126648 27A60048 */  addiu      $a2, $sp, 0x48
/* DCA0C 8012664C 84440080 */  lh         $a0, 0x80($v0)
/* DCA10 80126650 8C420084 */  lw         $v0, 0x84($v0)
/* DCA14 80126654 0040F809 */  jalr       $v0
/* DCA18 80126658 00642021 */   addu      $a0, $v1, $a0
/* DCA1C 8012665C 26510048 */  addiu      $s1, $s2, 0x48
/* DCA20 80126660 02202021 */  addu       $a0, $s1, $zero
/* DCA24 80126664 27B00038 */  addiu      $s0, $sp, 0x38
/* DCA28 80126668 0C01659D */  jal        func_80059674
/* DCA2C 8012666C 02002821 */   addu      $a1, $s0, $zero
/* DCA30 80126670 3C054120 */  lui        $a1, (0x41200000 >> 16)
/* DCA34 80126674 0C0165E8 */  jal        func_800597A0
/* DCA38 80126678 02202021 */   addu      $a0, $s1, $zero
/* DCA3C 8012667C 24060096 */  addiu      $a2, $zero, 0x96
/* DCA40 80126680 8E440028 */  lw         $a0, 0x28($s2)
/* DCA44 80126684 3C053AC4 */  lui        $a1, (0x3AC49BA6 >> 16)
/* DCA48 80126688 34A59BA6 */  ori        $a1, $a1, (0x3AC49BA6 & 0xFFFF)
/* DCA4C 8012668C 0C03F9F1 */  jal        func_race_800FE7C4
/* DCA50 80126690 248403FC */   addiu     $a0, $a0, 0x3FC
/* DCA54 80126694 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DCA58 80126698 3C01800D */  lui        $at, %hi(D_race_800CEA64)
/* DCA5C 8012669C C420EA64 */  lwc1       $f0, %lo(D_race_800CEA64)($at)
/* DCA60 801266A0 24050021 */  addiu      $a1, $zero, 0x21
/* DCA64 801266A4 E7B40014 */  swc1       $f20, 0x14($sp)
/* DCA68 801266A8 E7B40018 */  swc1       $f20, 0x18($sp)
/* DCA6C 801266AC E7A00010 */  swc1       $f0, 0x10($sp)
/* DCA70 801266B0 8E440010 */  lw         $a0, 0x10($s2)
/* DCA74 801266B4 0C046530 */  jal        func_race_801194C0
/* DCA78 801266B8 02003021 */   addu      $a2, $s0, $zero
/* DCA7C 801266BC 8E440010 */  lw         $a0, 0x10($s2)
/* DCA80 801266C0 0C04654F */  jal        func_race_8011953C
/* DCA84 801266C4 24050022 */   addiu     $a1, $zero, 0x22
/* DCA88 801266C8 AE420070 */  sw         $v0, 0x70($s2)
/* DCA8C 801266CC 8C430034 */  lw         $v1, 0x34($v0)
/* DCA90 801266D0 24050001 */  addiu      $a1, $zero, 0x1
/* DCA94 801266D4 84640010 */  lh         $a0, 0x10($v1)
/* DCA98 801266D8 8C630014 */  lw         $v1, 0x14($v1)
/* DCA9C 801266DC 0060F809 */  jalr       $v1
/* DCAA0 801266E0 00442021 */   addu      $a0, $v0, $a0
/* DCAA4 801266E4 8E420070 */  lw         $v0, 0x70($s2)
/* DCAA8 801266E8 3C01800D */  lui        $at, %hi(D_race_800CEA68)
/* DCAAC 801266EC C420EA68 */  lwc1       $f0, %lo(D_race_800CEA68)($at)
/* DCAB0 801266F0 3C01800D */  lui        $at, %hi(D_race_800CEA6C)
/* DCAB4 801266F4 C422EA6C */  lwc1       $f2, %lo(D_race_800CEA6C)($at)
/* DCAB8 801266F8 E440002C */  swc1       $f0, 0x2C($v0)
/* DCABC 801266FC E4420030 */  swc1       $f2, 0x30($v0)
/* DCAC0 80126700 8E420070 */  lw         $v0, 0x70($s2)
/* DCAC4 80126704 8FA80038 */  lw         $t0, 0x38($sp)
/* DCAC8 80126708 8FA9003C */  lw         $t1, 0x3C($sp)
/* DCACC 8012670C 8FAA0040 */  lw         $t2, 0x40($sp)
/* DCAD0 80126710 AC480014 */  sw         $t0, 0x14($v0)
/* DCAD4 80126714 AC490018 */  sw         $t1, 0x18($v0)
/* DCAD8 80126718 AC4A001C */  sw         $t2, 0x1C($v0)
/* DCADC 8012671C AFA00058 */  sw         $zero, 0x58($sp)
/* DCAE0 80126720 AFA0005C */  sw         $zero, 0x5C($sp)
/* DCAE4 80126724 AFA00060 */  sw         $zero, 0x60($sp)
/* DCAE8 80126728 8E420070 */  lw         $v0, 0x70($s2)
/* DCAEC 8012672C C7A00058 */  lwc1       $f0, 0x58($sp)
/* DCAF0 80126730 E4400020 */  swc1       $f0, 0x20($v0)
/* DCAF4 80126734 C7A0005C */  lwc1       $f0, 0x5C($sp)
/* DCAF8 80126738 E4400024 */  swc1       $f0, 0x24($v0)
/* DCAFC 8012673C C7A00060 */  lwc1       $f0, 0x60($sp)
/* DCB00 80126740 02402821 */  addu       $a1, $s2, $zero
/* DCB04 80126744 E4400028 */  swc1       $f0, 0x28($v0)
/* DCB08 80126748 24020002 */  addiu      $v0, $zero, 0x2
/* DCB0C 8012674C AE420004 */  sw         $v0, 0x4($s2)
/* DCB10 80126750 24024E20 */  addiu      $v0, $zero, 0x4E20
/* DCB14 80126754 AE420008 */  sw         $v0, 0x8($s2)
/* DCB18 80126758 24020004 */  addiu      $v0, $zero, 0x4
/* DCB1C 8012675C AFA20020 */  sw         $v0, 0x20($sp)
/* DCB20 80126760 24020001 */  addiu      $v0, $zero, 0x1
/* DCB24 80126764 AFA20024 */  sw         $v0, 0x24($sp)
/* DCB28 80126768 AFA00028 */  sw         $zero, 0x28($sp)
/* DCB2C 8012676C AFA0002C */  sw         $zero, 0x2C($sp)
/* DCB30 80126770 AFB10030 */  sw         $s1, 0x30($sp)
/* DCB34 80126774 8E440018 */  lw         $a0, 0x18($s2)
/* DCB38 80126778 27A60020 */  addiu      $a2, $sp, 0x20
/* DCB3C 8012677C 0C04053E */  jal        func_race_801014F8
/* DCB40 80126780 248400F0 */   addiu     $a0, $a0, 0xF0
/* DCB44 80126784 AE42001C */  sw         $v0, 0x1C($s2)
/* DCB48 80126788 8FBF0074 */  lw         $ra, 0x74($sp)
/* DCB4C 8012678C 8FB20070 */  lw         $s2, 0x70($sp)
/* DCB50 80126790 8FB1006C */  lw         $s1, 0x6C($sp)
/* DCB54 80126794 8FB00068 */  lw         $s0, 0x68($sp)
/* DCB58 80126798 D7B40078 */  ldc1       $f20, 0x78($sp)
/* DCB5C 8012679C 03E00008 */  jr         $ra
/* DCB60 801267A0 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_801267A4
/* DCB64 801267A4 03E00008 */  jr         $ra
/* DCB68 801267A8 24020003 */   addiu     $v0, $zero, 0x3

glabel func_race_801267AC
/* DCB6C 801267AC 8C820078 */  lw         $v0, 0x78($a0)
/* DCB70 801267B0 03E00008 */  jr         $ra
/* DCB74 801267B4 00000000 */   nop
