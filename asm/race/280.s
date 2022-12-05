.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E8830
/* 9EBF0 800E8830 00801021 */  addu       $v0, $a0, $zero
/* 9EBF4 800E8834 AC400004 */  sw         $zero, 0x4($v0)
/* 9EBF8 800E8838 03E00008 */  jr         $ra
/* 9EBFC 800E883C AC400000 */   sw        $zero, 0x0($v0)

glabel func_race_800E8840
/* 9EC00 800E8840 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9EC04 800E8844 AFB10014 */  sw         $s1, 0x14($sp)
/* 9EC08 800E8848 00808821 */  addu       $s1, $a0, $zero
/* 9EC0C 800E884C AFB00010 */  sw         $s0, 0x10($sp)
/* 9EC10 800E8850 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9EC14 800E8854 0C03A32E */  jal        func_race_800E8CB8
/* 9EC18 800E8858 00A08021 */   addu      $s0, $a1, $zero
/* 9EC1C 800E885C 32100001 */  andi       $s0, $s0, 0x1
/* 9EC20 800E8860 12000003 */  beqz       $s0, .Lrace_800E8870
/* 9EC24 800E8864 00000000 */   nop
/* 9EC28 800E8868 0C01FB5C */  jal        func_8007ED70
/* 9EC2C 800E886C 02202021 */   addu      $a0, $s1, $zero
.Lrace_800E8870:
/* 9EC30 800E8870 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9EC34 800E8874 8FB10014 */  lw         $s1, 0x14($sp)
/* 9EC38 800E8878 8FB00010 */  lw         $s0, 0x10($sp)
/* 9EC3C 800E887C 03E00008 */  jr         $ra
/* 9EC40 800E8880 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E8884
/* 9EC44 800E8884 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9EC48 800E8888 AFB10014 */  sw         $s1, 0x14($sp)
/* 9EC4C 800E888C 00808821 */  addu       $s1, $a0, $zero
/* 9EC50 800E8890 AFB50024 */  sw         $s5, 0x24($sp)
/* 9EC54 800E8894 00A0A821 */  addu       $s5, $a1, $zero
/* 9EC58 800E8898 AFB20018 */  sw         $s2, 0x18($sp)
/* 9EC5C 800E889C 00C09021 */  addu       $s2, $a2, $zero
/* 9EC60 800E88A0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 9EC64 800E88A4 AFB40020 */  sw         $s4, 0x20($sp)
/* 9EC68 800E88A8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9EC6C 800E88AC 10E00014 */  beqz       $a3, .Lrace_800E8900
/* 9EC70 800E88B0 AFB00010 */   sw        $s0, 0x10($sp)
/* 9EC74 800E88B4 0C01FB4C */  jal        func_8007ED30
/* 9EC78 800E88B8 24040654 */   addiu     $a0, $zero, 0x654
/* 9EC7C 800E88BC 0C00278C */  jal        func_80009E30
/* 9EC80 800E88C0 00402021 */   addu      $a0, $v0, $zero
/* 9EC84 800E88C4 00409821 */  addu       $s3, $v0, $zero
/* 9EC88 800E88C8 56600008 */  bnel       $s3, $zero, .Lrace_800E88EC
/* 9EC8C 800E88CC 02602021 */   addu      $a0, $s3, $zero
/* 9EC90 800E88D0 3C04800D */  lui        $a0, %hi(D_race_800CBC70)
/* 9EC94 800E88D4 2484BC70 */  addiu      $a0, $a0, %lo(D_race_800CBC70)
/* 9EC98 800E88D8 00002821 */  addu       $a1, $zero, $zero
/* 9EC9C 800E88DC 00A03021 */  addu       $a2, $a1, $zero
/* 9ECA0 800E88E0 0C011ACF */  jal        func_80046B3C
/* 9ECA4 800E88E4 00A03821 */   addu      $a3, $a1, $zero
/* 9ECA8 800E88E8 02602021 */  addu       $a0, $s3, $zero
.Lrace_800E88EC:
/* 9ECAC 800E88EC 3C05800D */  lui        $a1, %hi(D_race_800CBC74)
/* 9ECB0 800E88F0 0C0025BA */  jal        func_800096E8
/* 9ECB4 800E88F4 24A5BC74 */   addiu     $a1, $a1, %lo(D_race_800CBC74)
/* 9ECB8 800E88F8 0803A250 */  j          .Lrace_800E8940
/* 9ECBC 800E88FC 00000000 */   nop
.Lrace_800E8900:
/* 9ECC0 800E8900 0C01FB4C */  jal        func_8007ED30
/* 9ECC4 800E8904 24040658 */   addiu     $a0, $zero, 0x658
/* 9ECC8 800E8908 00408021 */  addu       $s0, $v0, $zero
/* 9ECCC 800E890C 0C002504 */  jal        func_80009410
/* 9ECD0 800E8910 02002021 */   addu      $a0, $s0, $zero
/* 9ECD4 800E8914 3C02800D */  lui        $v0, %hi(D_race_800CBD08)
/* 9ECD8 800E8918 2442BD08 */  addiu      $v0, $v0, %lo(D_race_800CBD08)
/* 9ECDC 800E891C 02009821 */  addu       $s3, $s0, $zero
/* 9ECE0 800E8920 16600007 */  bnez       $s3, .Lrace_800E8940
/* 9ECE4 800E8924 AE020028 */   sw        $v0, 0x28($s0)
/* 9ECE8 800E8928 3C04800D */  lui        $a0, %hi(D_race_800CBC70)
/* 9ECEC 800E892C 2484BC70 */  addiu      $a0, $a0, %lo(D_race_800CBC70)
/* 9ECF0 800E8930 00002821 */  addu       $a1, $zero, $zero
/* 9ECF4 800E8934 00A03021 */  addu       $a2, $a1, $zero
/* 9ECF8 800E8938 0C011ACF */  jal        func_80046B3C
/* 9ECFC 800E893C 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E8940:
/* 9ED00 800E8940 8E620028 */  lw         $v0, 0x28($s3)
/* 9ED04 800E8944 02402821 */  addu       $a1, $s2, $zero
/* 9ED08 800E8948 84440088 */  lh         $a0, 0x88($v0)
/* 9ED0C 800E894C 8C42008C */  lw         $v0, 0x8C($v0)
/* 9ED10 800E8950 0040F809 */  jalr       $v0
/* 9ED14 800E8954 02642021 */   addu      $a0, $s3, $a0
/* 9ED18 800E8958 02602021 */  addu       $a0, $s3, $zero
/* 9ED1C 800E895C 0C0026F4 */  jal        func_80009BD0
/* 9ED20 800E8960 24050027 */   addiu     $a1, $zero, 0x27
/* 9ED24 800E8964 0C002723 */  jal        func_80009C8C
/* 9ED28 800E8968 02602021 */   addu      $a0, $s3, $zero
/* 9ED2C 800E896C 104000BD */  beqz       $v0, .Lrace_800E8C64
/* 9ED30 800E8970 AE220000 */   sw        $v0, 0x0($s1)
/* 9ED34 800E8974 3C028013 */  lui        $v0, %hi(D_race_80132140)
/* 9ED38 800E8978 8C442140 */  lw         $a0, %lo(D_race_80132140)($v0)
/* 9ED3C 800E897C 0C01FB65 */  jal        func_8007ED94
/* 9ED40 800E8980 00000000 */   nop
/* 9ED44 800E8984 8E240000 */  lw         $a0, 0x0($s1)
/* 9ED48 800E8988 0C00943C */  jal        func_800250F0
/* 9ED4C 800E898C 00042080 */   sll       $a0, $a0, 2
/* 9ED50 800E8990 14400007 */  bnez       $v0, .Lrace_800E89B0
/* 9ED54 800E8994 AE220004 */   sw        $v0, 0x4($s1)
/* 9ED58 800E8998 3C04800D */  lui        $a0, %hi(D_race_800CBC70)
/* 9ED5C 800E899C 2484BC70 */  addiu      $a0, $a0, %lo(D_race_800CBC70)
/* 9ED60 800E89A0 00002821 */  addu       $a1, $zero, $zero
/* 9ED64 800E89A4 00A03021 */  addu       $a2, $a1, $zero
/* 9ED68 800E89A8 0C011ACF */  jal        func_80046B3C
/* 9ED6C 800E89AC 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E89B0:
/* 9ED70 800E89B0 8E220000 */  lw         $v0, 0x0($s1)
/* 9ED74 800E89B4 104000A6 */  beqz       $v0, .Lrace_800E8C50
/* 9ED78 800E89B8 0000A021 */   addu      $s4, $zero, $zero
/* 9ED7C 800E89BC 3C12800D */  lui        $s2, %hi(D_race_800CBC70)
/* 9ED80 800E89C0 02808021 */  addu       $s0, $s4, $zero
.Lrace_800E89C4:
/* 9ED84 800E89C4 8E220004 */  lw         $v0, 0x4($s1)
/* 9ED88 800E89C8 02021021 */  addu       $v0, $s0, $v0
/* 9ED8C 800E89CC AC400000 */  sw         $zero, 0x0($v0)
/* 9ED90 800E89D0 8E620028 */  lw         $v0, 0x28($s3)
/* 9ED94 800E89D4 844400A0 */  lh         $a0, 0xA0($v0)
/* 9ED98 800E89D8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 9ED9C 800E89DC 0040F809 */  jalr       $v0
/* 9EDA0 800E89E0 02642021 */   addu      $a0, $s3, $a0
/* 9EDA4 800E89E4 2443FFD8 */  addiu      $v1, $v0, -0x28
/* 9EDA8 800E89E8 2C620022 */  sltiu      $v0, $v1, 0x22
/* 9EDAC 800E89EC 10400089 */  beqz       $v0, Lrace_800E8C14
/* 9EDB0 800E89F0 3C02800D */   lui       $v0, %hi(jtbl_race_800CBC80)
/* 9EDB4 800E89F4 2442BC80 */  addiu      $v0, $v0, %lo(jtbl_race_800CBC80)
/* 9EDB8 800E89F8 00031880 */  sll        $v1, $v1, 2
/* 9EDBC 800E89FC 00621821 */  addu       $v1, $v1, $v0
/* 9EDC0 800E8A00 8C620000 */  lw         $v0, 0x0($v1)
/* 9EDC4 800E8A04 00400008 */  jr         $v0
/* 9EDC8 800E8A08 00000000 */   nop
glabel Lrace_800E8A0C
/* 9EDCC 800E8A0C 0C01FB4C */  jal        func_8007ED30
/* 9EDD0 800E8A10 24040020 */   addiu     $a0, $zero, 0x20
/* 9EDD4 800E8A14 0C03ADC8 */  jal        func_race_800EB720
/* 9EDD8 800E8A18 00402021 */   addu      $a0, $v0, $zero
/* 9EDDC 800E8A1C 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EDE0 800E8A20 00000000 */   nop
glabel Lrace_800E8A24
/* 9EDE4 800E8A24 0C01FB4C */  jal        func_8007ED30
/* 9EDE8 800E8A28 24040024 */   addiu     $a0, $zero, 0x24
/* 9EDEC 800E8A2C 0C03B014 */  jal        func_race_800EC050
/* 9EDF0 800E8A30 00402021 */   addu      $a0, $v0, $zero
/* 9EDF4 800E8A34 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EDF8 800E8A38 00000000 */   nop
glabel Lrace_800E8A3C
/* 9EDFC 800E8A3C 0C01FB4C */  jal        func_8007ED30
/* 9EE00 800E8A40 24040018 */   addiu     $a0, $zero, 0x18
/* 9EE04 800E8A44 0C03AB44 */  jal        func_race_800EAD10
/* 9EE08 800E8A48 00402021 */   addu      $a0, $v0, $zero
/* 9EE0C 800E8A4C 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EE10 800E8A50 00000000 */   nop
glabel Lrace_800E8A54
/* 9EE14 800E8A54 0C01FB4C */  jal        func_8007ED30
/* 9EE18 800E8A58 24040220 */   addiu     $a0, $zero, 0x220
/* 9EE1C 800E8A5C 0C03A878 */  jal        func_race_800EA1E0
/* 9EE20 800E8A60 00402021 */   addu      $a0, $v0, $zero
/* 9EE24 800E8A64 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EE28 800E8A68 00000000 */   nop
glabel Lrace_800E8A6C
/* 9EE2C 800E8A6C 0C01FB4C */  jal        func_8007ED30
/* 9EE30 800E8A70 2404005C */   addiu     $a0, $zero, 0x5C
/* 9EE34 800E8A74 0C03BAD0 */  jal        func_race_800EEB40
/* 9EE38 800E8A78 00402021 */   addu      $a0, $v0, $zero
/* 9EE3C 800E8A7C 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EE40 800E8A80 00000000 */   nop
glabel Lrace_800E8A84
/* 9EE44 800E8A84 0C01FB4C */  jal        func_8007ED30
/* 9EE48 800E8A88 2404003C */   addiu     $a0, $zero, 0x3C
/* 9EE4C 800E8A8C 0C03B924 */  jal        func_race_800EE490
/* 9EE50 800E8A90 00402021 */   addu      $a0, $v0, $zero
/* 9EE54 800E8A94 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EE58 800E8A98 00000000 */   nop
glabel Lrace_800E8A9C
/* 9EE5C 800E8A9C 0C01FB4C */  jal        func_8007ED30
/* 9EE60 800E8AA0 2404005C */   addiu     $a0, $zero, 0x5C
/* 9EE64 800E8AA4 0C03BE48 */  jal        func_race_800EF920
/* 9EE68 800E8AA8 00402021 */   addu      $a0, $v0, $zero
/* 9EE6C 800E8AAC 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EE70 800E8AB0 00000000 */   nop
glabel Lrace_800E8AB4
/* 9EE74 800E8AB4 0C01FB4C */  jal        func_8007ED30
/* 9EE78 800E8AB8 24040020 */   addiu     $a0, $zero, 0x20
/* 9EE7C 800E8ABC 0C03C0A0 */  jal        func_race_800F0280
/* 9EE80 800E8AC0 00402021 */   addu      $a0, $v0, $zero
/* 9EE84 800E8AC4 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EE88 800E8AC8 00000000 */   nop
glabel Lrace_800E8ACC
/* 9EE8C 800E8ACC 0C01FB4C */  jal        func_8007ED30
/* 9EE90 800E8AD0 24040020 */   addiu     $a0, $zero, 0x20
/* 9EE94 800E8AD4 0C03BF98 */  jal        func_race_800EFE60
/* 9EE98 800E8AD8 00402021 */   addu      $a0, $v0, $zero
/* 9EE9C 800E8ADC 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EEA0 800E8AE0 00000000 */   nop
glabel Lrace_800E8AE4
/* 9EEA4 800E8AE4 0C01FB4C */  jal        func_8007ED30
/* 9EEA8 800E8AE8 24040194 */   addiu     $a0, $zero, 0x194
/* 9EEAC 800E8AEC 0C03B714 */  jal        func_race_800EDC50
/* 9EEB0 800E8AF0 00402021 */   addu      $a0, $v0, $zero
/* 9EEB4 800E8AF4 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EEB8 800E8AF8 00000000 */   nop
glabel Lrace_800E8AFC
/* 9EEBC 800E8AFC 0C01FB4C */  jal        func_8007ED30
/* 9EEC0 800E8B00 24040124 */   addiu     $a0, $zero, 0x124
/* 9EEC4 800E8B04 0C03B508 */  jal        func_race_800ED420
/* 9EEC8 800E8B08 00402021 */   addu      $a0, $v0, $zero
/* 9EECC 800E8B0C 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EED0 800E8B10 00000000 */   nop
glabel Lrace_800E8B14
/* 9EED4 800E8B14 0C01FB4C */  jal        func_8007ED30
/* 9EED8 800E8B18 24040030 */   addiu     $a0, $zero, 0x30
/* 9EEDC 800E8B1C 0C03B184 */  jal        func_race_800EC610
/* 9EEE0 800E8B20 00402021 */   addu      $a0, $v0, $zero
/* 9EEE4 800E8B24 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EEE8 800E8B28 00000000 */   nop
glabel Lrace_800E8B2C
/* 9EEEC 800E8B2C 0C01FB4C */  jal        func_8007ED30
/* 9EEF0 800E8B30 24040020 */   addiu     $a0, $zero, 0x20
/* 9EEF4 800E8B34 0C03A658 */  jal        func_race_800E9960
/* 9EEF8 800E8B38 00402021 */   addu      $a0, $v0, $zero
/* 9EEFC 800E8B3C 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EF00 800E8B40 00000000 */   nop
glabel Lrace_800E8B44
/* 9EF04 800E8B44 0C01FB4C */  jal        func_8007ED30
/* 9EF08 800E8B48 24040140 */   addiu     $a0, $zero, 0x140
/* 9EF0C 800E8B4C 0C03B374 */  jal        func_race_800ECDD0
/* 9EF10 800E8B50 00402021 */   addu      $a0, $v0, $zero
/* 9EF14 800E8B54 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EF18 800E8B58 00000000 */   nop
glabel Lrace_800E8B5C
/* 9EF1C 800E8B5C 0C01FB4C */  jal        func_8007ED30
/* 9EF20 800E8B60 24040204 */   addiu     $a0, $zero, 0x204
/* 9EF24 800E8B64 0C03AEA4 */  jal        func_race_800EBA90
/* 9EF28 800E8B68 00402021 */   addu      $a0, $v0, $zero
/* 9EF2C 800E8B6C 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EF30 800E8B70 00000000 */   nop
glabel Lrace_800E8B74
/* 9EF34 800E8B74 0C01FB4C */  jal        func_8007ED30
/* 9EF38 800E8B78 24040018 */   addiu     $a0, $zero, 0x18
/* 9EF3C 800E8B7C 0C03ABFC */  jal        func_race_800EAFF0
/* 9EF40 800E8B80 00402021 */   addu      $a0, $v0, $zero
/* 9EF44 800E8B84 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EF48 800E8B88 00000000 */   nop
glabel Lrace_800E8B8C
/* 9EF4C 800E8B8C 0C01FB4C */  jal        func_8007ED30
/* 9EF50 800E8B90 24040058 */   addiu     $a0, $zero, 0x58
/* 9EF54 800E8B94 0C03AC94 */  jal        func_race_800EB250
/* 9EF58 800E8B98 00402021 */   addu      $a0, $v0, $zero
/* 9EF5C 800E8B9C 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EF60 800E8BA0 00000000 */   nop
glabel Lrace_800E8BA4
/* 9EF64 800E8BA4 0C01FB4C */  jal        func_8007ED30
/* 9EF68 800E8BA8 24040044 */   addiu     $a0, $zero, 0x44
/* 9EF6C 800E8BAC 0C03A728 */  jal        func_race_800E9CA0
/* 9EF70 800E8BB0 00402021 */   addu      $a0, $v0, $zero
/* 9EF74 800E8BB4 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EF78 800E8BB8 00000000 */   nop
glabel Lrace_800E8BBC
/* 9EF7C 800E8BBC 0C01FB4C */  jal        func_8007ED30
/* 9EF80 800E8BC0 24040060 */   addiu     $a0, $zero, 0x60
/* 9EF84 800E8BC4 0C03BC90 */  jal        func_race_800EF240
/* 9EF88 800E8BC8 00402021 */   addu      $a0, $v0, $zero
/* 9EF8C 800E8BCC 0803A2F9 */  j          .Lrace_800E8BE4
/* 9EF90 800E8BD0 00000000 */   nop
glabel Lrace_800E8BD4
/* 9EF94 800E8BD4 0C01FB4C */  jal        func_8007ED30
/* 9EF98 800E8BD8 24040018 */   addiu     $a0, $zero, 0x18
/* 9EF9C 800E8BDC 0C03A5C8 */  jal        func_race_800E9720
/* 9EFA0 800E8BE0 00402021 */   addu      $a0, $v0, $zero
.Lrace_800E8BE4:
/* 9EFA4 800E8BE4 8E230004 */  lw         $v1, 0x4($s1)
/* 9EFA8 800E8BE8 02031821 */  addu       $v1, $s0, $v1
/* 9EFAC 800E8BEC AC620000 */  sw         $v0, 0x0($v1)
/* 9EFB0 800E8BF0 8E220004 */  lw         $v0, 0x4($s1)
/* 9EFB4 800E8BF4 02021021 */  addu       $v0, $s0, $v0
/* 9EFB8 800E8BF8 8C420000 */  lw         $v0, 0x0($v0)
/* 9EFBC 800E8BFC 14400005 */  bnez       $v0, Lrace_800E8C14
/* 9EFC0 800E8C00 00002821 */   addu      $a1, $zero, $zero
/* 9EFC4 800E8C04 2644BC70 */  addiu      $a0, $s2, %lo(D_race_800CBC70)
/* 9EFC8 800E8C08 00A03021 */  addu       $a2, $a1, $zero
/* 9EFCC 800E8C0C 0C011ACF */  jal        func_80046B3C
/* 9EFD0 800E8C10 00A03821 */   addu      $a3, $a1, $zero
glabel Lrace_800E8C14
/* 9EFD4 800E8C14 8E220004 */  lw         $v0, 0x4($s1)
/* 9EFD8 800E8C18 02A02821 */  addu       $a1, $s5, $zero
/* 9EFDC 800E8C1C 02021021 */  addu       $v0, $s0, $v0
/* 9EFE0 800E8C20 8C430000 */  lw         $v1, 0x0($v0)
/* 9EFE4 800E8C24 02603021 */  addu       $a2, $s3, $zero
/* 9EFE8 800E8C28 8C620000 */  lw         $v0, 0x0($v1)
/* 9EFEC 800E8C2C 26940001 */  addiu      $s4, $s4, 0x1
/* 9EFF0 800E8C30 84440028 */  lh         $a0, 0x28($v0)
/* 9EFF4 800E8C34 8C42002C */  lw         $v0, 0x2C($v0)
/* 9EFF8 800E8C38 0040F809 */  jalr       $v0
/* 9EFFC 800E8C3C 00642021 */   addu      $a0, $v1, $a0
/* 9F000 800E8C40 8E220000 */  lw         $v0, 0x0($s1)
/* 9F004 800E8C44 0282102B */  sltu       $v0, $s4, $v0
/* 9F008 800E8C48 1440FF5E */  bnez       $v0, .Lrace_800E89C4
/* 9F00C 800E8C4C 26100004 */   addiu     $s0, $s0, 0x4
.Lrace_800E8C50:
/* 9F010 800E8C50 0C01FB72 */  jal        func_8007EDC8
/* 9F014 800E8C54 00000000 */   nop
/* 9F018 800E8C58 02602021 */  addu       $a0, $s3, $zero
/* 9F01C 800E8C5C 0C0026F4 */  jal        func_80009BD0
/* 9F020 800E8C60 24050006 */   addiu     $a1, $zero, 0x6
.Lrace_800E8C64:
/* 9F024 800E8C64 8E620028 */  lw         $v0, 0x28($s3)
/* 9F028 800E8C68 84440048 */  lh         $a0, 0x48($v0)
/* 9F02C 800E8C6C 8C42004C */  lw         $v0, 0x4C($v0)
/* 9F030 800E8C70 0040F809 */  jalr       $v0
/* 9F034 800E8C74 02642021 */   addu      $a0, $s3, $a0
/* 9F038 800E8C78 12600006 */  beqz       $s3, .Lrace_800E8C94
/* 9F03C 800E8C7C 24050003 */   addiu     $a1, $zero, 0x3
/* 9F040 800E8C80 8E620028 */  lw         $v0, 0x28($s3)
/* 9F044 800E8C84 84440038 */  lh         $a0, 0x38($v0)
/* 9F048 800E8C88 8C42003C */  lw         $v0, 0x3C($v0)
/* 9F04C 800E8C8C 0040F809 */  jalr       $v0
/* 9F050 800E8C90 02642021 */   addu      $a0, $s3, $a0
.Lrace_800E8C94:
/* 9F054 800E8C94 8FBF0028 */  lw         $ra, 0x28($sp)
/* 9F058 800E8C98 8FB50024 */  lw         $s5, 0x24($sp)
/* 9F05C 800E8C9C 8FB40020 */  lw         $s4, 0x20($sp)
/* 9F060 800E8CA0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9F064 800E8CA4 8FB20018 */  lw         $s2, 0x18($sp)
/* 9F068 800E8CA8 8FB10014 */  lw         $s1, 0x14($sp)
/* 9F06C 800E8CAC 8FB00010 */  lw         $s0, 0x10($sp)
/* 9F070 800E8CB0 03E00008 */  jr         $ra
/* 9F074 800E8CB4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800E8CB8
/* 9F078 800E8CB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9F07C 800E8CBC AFB20018 */  sw         $s2, 0x18($sp)
/* 9F080 800E8CC0 00809021 */  addu       $s2, $a0, $zero
/* 9F084 800E8CC4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 9F088 800E8CC8 AFB10014 */  sw         $s1, 0x14($sp)
/* 9F08C 800E8CCC AFB00010 */  sw         $s0, 0x10($sp)
/* 9F090 800E8CD0 8E420004 */  lw         $v0, 0x4($s2)
/* 9F094 800E8CD4 50400020 */  beql       $v0, $zero, .Lrace_800E8D58
/* 9F098 800E8CD8 AE400000 */   sw        $zero, 0x0($s2)
/* 9F09C 800E8CDC 8E420000 */  lw         $v0, 0x0($s2)
/* 9F0A0 800E8CE0 10400016 */  beqz       $v0, .Lrace_800E8D3C
/* 9F0A4 800E8CE4 00008821 */   addu      $s1, $zero, $zero
.Lrace_800E8CE8:
/* 9F0A8 800E8CE8 8E420004 */  lw         $v0, 0x4($s2)
/* 9F0AC 800E8CEC 00118080 */  sll        $s0, $s1, 2
/* 9F0B0 800E8CF0 02021021 */  addu       $v0, $s0, $v0
/* 9F0B4 800E8CF4 8C440000 */  lw         $a0, 0x0($v0)
/* 9F0B8 800E8CF8 0C03A1C0 */  jal        func_race_800E8700
/* 9F0BC 800E8CFC 00000000 */   nop
/* 9F0C0 800E8D00 8E420004 */  lw         $v0, 0x4($s2)
/* 9F0C4 800E8D04 02028021 */  addu       $s0, $s0, $v0
/* 9F0C8 800E8D08 8E100000 */  lw         $s0, 0x0($s0)
/* 9F0CC 800E8D0C 12000006 */  beqz       $s0, .Lrace_800E8D28
/* 9F0D0 800E8D10 24050003 */   addiu     $a1, $zero, 0x3
/* 9F0D4 800E8D14 8E020000 */  lw         $v0, 0x0($s0)
/* 9F0D8 800E8D18 84440020 */  lh         $a0, 0x20($v0)
/* 9F0DC 800E8D1C 8C420024 */  lw         $v0, 0x24($v0)
/* 9F0E0 800E8D20 0040F809 */  jalr       $v0
/* 9F0E4 800E8D24 02042021 */   addu      $a0, $s0, $a0
.Lrace_800E8D28:
/* 9F0E8 800E8D28 8E420000 */  lw         $v0, 0x0($s2)
/* 9F0EC 800E8D2C 26310001 */  addiu      $s1, $s1, 0x1
/* 9F0F0 800E8D30 0222102B */  sltu       $v0, $s1, $v0
/* 9F0F4 800E8D34 1440FFEC */  bnez       $v0, .Lrace_800E8CE8
/* 9F0F8 800E8D38 00000000 */   nop
.Lrace_800E8D3C:
/* 9F0FC 800E8D3C 8E440004 */  lw         $a0, 0x4($s2)
/* 9F100 800E8D40 50800004 */  beql       $a0, $zero, .Lrace_800E8D54
/* 9F104 800E8D44 AE400004 */   sw        $zero, 0x4($s2)
/* 9F108 800E8D48 0C009444 */  jal        func_80025110
/* 9F10C 800E8D4C 00000000 */   nop
/* 9F110 800E8D50 AE400004 */  sw         $zero, 0x4($s2)
.Lrace_800E8D54:
/* 9F114 800E8D54 AE400000 */  sw         $zero, 0x0($s2)
.Lrace_800E8D58:
/* 9F118 800E8D58 8FBF001C */  lw         $ra, 0x1C($sp)
/* 9F11C 800E8D5C 8FB20018 */  lw         $s2, 0x18($sp)
/* 9F120 800E8D60 8FB10014 */  lw         $s1, 0x14($sp)
/* 9F124 800E8D64 8FB00010 */  lw         $s0, 0x10($sp)
/* 9F128 800E8D68 03E00008 */  jr         $ra
/* 9F12C 800E8D6C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E8D70
/* 9F130 800E8D70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9F134 800E8D74 AFB20018 */  sw         $s2, 0x18($sp)
/* 9F138 800E8D78 00809021 */  addu       $s2, $a0, $zero
/* 9F13C 800E8D7C AFB3001C */  sw         $s3, 0x1C($sp)
/* 9F140 800E8D80 00A09821 */  addu       $s3, $a1, $zero
/* 9F144 800E8D84 AFB50024 */  sw         $s5, 0x24($sp)
/* 9F148 800E8D88 00C0A821 */  addu       $s5, $a2, $zero
/* 9F14C 800E8D8C AFB00010 */  sw         $s0, 0x10($sp)
/* 9F150 800E8D90 00008021 */  addu       $s0, $zero, $zero
/* 9F154 800E8D94 AFB40020 */  sw         $s4, 0x20($sp)
/* 9F158 800E8D98 2414FFFF */  addiu      $s4, $zero, -0x1
/* 9F15C 800E8D9C AFBF0028 */  sw         $ra, 0x28($sp)
/* 9F160 800E8DA0 AFB10014 */  sw         $s1, 0x14($sp)
.Lrace_800E8DA4:
/* 9F164 800E8DA4 8E420000 */  lw         $v0, 0x0($s2)
/* 9F168 800E8DA8 0202102B */  sltu       $v0, $s0, $v0
/* 9F16C 800E8DAC 1040001A */  beqz       $v0, .Lrace_800E8E18
/* 9F170 800E8DB0 00108880 */   sll       $s1, $s0, 2
/* 9F174 800E8DB4 8E420004 */  lw         $v0, 0x4($s2)
/* 9F178 800E8DB8 02221021 */  addu       $v0, $s1, $v0
/* 9F17C 800E8DBC 8C440000 */  lw         $a0, 0x0($v0)
/* 9F180 800E8DC0 8C830008 */  lw         $v1, 0x8($a0)
/* 9F184 800E8DC4 10740003 */  beq        $v1, $s4, .Lrace_800E8DD4
/* 9F188 800E8DC8 00001021 */   addu      $v0, $zero, $zero
/* 9F18C 800E8DCC 00731026 */  xor        $v0, $v1, $s3
/* 9F190 800E8DD0 2C420001 */  sltiu      $v0, $v0, 0x1
.Lrace_800E8DD4:
/* 9F194 800E8DD4 10400003 */  beqz       $v0, .Lrace_800E8DE4
/* 9F198 800E8DD8 00000000 */   nop
/* 9F19C 800E8DDC 0C03A1D4 */  jal        func_race_800E8750
/* 9F1A0 800E8DE0 00002821 */   addu      $a1, $zero, $zero
.Lrace_800E8DE4:
/* 9F1A4 800E8DE4 8E420004 */  lw         $v0, 0x4($s2)
/* 9F1A8 800E8DE8 02221021 */  addu       $v0, $s1, $v0
/* 9F1AC 800E8DEC 8C420000 */  lw         $v0, 0x0($v0)
/* 9F1B0 800E8DF0 8C430000 */  lw         $v1, 0x0($v0)
/* 9F1B4 800E8DF4 02602821 */  addu       $a1, $s3, $zero
/* 9F1B8 800E8DF8 84640058 */  lh         $a0, 0x58($v1)
/* 9F1BC 800E8DFC 26100001 */  addiu      $s0, $s0, 0x1
/* 9F1C0 800E8E00 00442021 */  addu       $a0, $v0, $a0
/* 9F1C4 800E8E04 8C62005C */  lw         $v0, 0x5C($v1)
/* 9F1C8 800E8E08 0040F809 */  jalr       $v0
/* 9F1CC 800E8E0C 02A03021 */   addu      $a2, $s5, $zero
/* 9F1D0 800E8E10 0803A369 */  j          .Lrace_800E8DA4
/* 9F1D4 800E8E14 00000000 */   nop
.Lrace_800E8E18:
/* 9F1D8 800E8E18 8FBF0028 */  lw         $ra, 0x28($sp)
/* 9F1DC 800E8E1C 8FB50024 */  lw         $s5, 0x24($sp)
/* 9F1E0 800E8E20 8FB40020 */  lw         $s4, 0x20($sp)
/* 9F1E4 800E8E24 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9F1E8 800E8E28 8FB20018 */  lw         $s2, 0x18($sp)
/* 9F1EC 800E8E2C 8FB10014 */  lw         $s1, 0x14($sp)
/* 9F1F0 800E8E30 8FB00010 */  lw         $s0, 0x10($sp)
/* 9F1F4 800E8E34 03E00008 */  jr         $ra
/* 9F1F8 800E8E38 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800E8E3C
/* 9F1FC 800E8E3C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9F200 800E8E40 AFB20018 */  sw         $s2, 0x18($sp)
/* 9F204 800E8E44 00809021 */  addu       $s2, $a0, $zero
/* 9F208 800E8E48 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9F20C 800E8E4C 00A09821 */  addu       $s3, $a1, $zero
/* 9F210 800E8E50 AFB50024 */  sw         $s5, 0x24($sp)
/* 9F214 800E8E54 00C0A821 */  addu       $s5, $a2, $zero
/* 9F218 800E8E58 AFB00010 */  sw         $s0, 0x10($sp)
/* 9F21C 800E8E5C 00008021 */  addu       $s0, $zero, $zero
/* 9F220 800E8E60 AFB40020 */  sw         $s4, 0x20($sp)
/* 9F224 800E8E64 2414FFFF */  addiu      $s4, $zero, -0x1
/* 9F228 800E8E68 AFBF0028 */  sw         $ra, 0x28($sp)
/* 9F22C 800E8E6C AFB10014 */  sw         $s1, 0x14($sp)
.Lrace_800E8E70:
/* 9F230 800E8E70 8E420000 */  lw         $v0, 0x0($s2)
/* 9F234 800E8E74 0202102B */  sltu       $v0, $s0, $v0
/* 9F238 800E8E78 1040001A */  beqz       $v0, .Lrace_800E8EE4
/* 9F23C 800E8E7C 00108880 */   sll       $s1, $s0, 2
/* 9F240 800E8E80 8E420004 */  lw         $v0, 0x4($s2)
/* 9F244 800E8E84 02221021 */  addu       $v0, $s1, $v0
/* 9F248 800E8E88 8C440000 */  lw         $a0, 0x0($v0)
/* 9F24C 800E8E8C 8C830008 */  lw         $v1, 0x8($a0)
/* 9F250 800E8E90 10740003 */  beq        $v1, $s4, .Lrace_800E8EA0
/* 9F254 800E8E94 00001021 */   addu      $v0, $zero, $zero
/* 9F258 800E8E98 00731026 */  xor        $v0, $v1, $s3
/* 9F25C 800E8E9C 2C420001 */  sltiu      $v0, $v0, 0x1
.Lrace_800E8EA0:
/* 9F260 800E8EA0 10400003 */  beqz       $v0, .Lrace_800E8EB0
/* 9F264 800E8EA4 00000000 */   nop
/* 9F268 800E8EA8 0C03A1E3 */  jal        func_race_800E878C
/* 9F26C 800E8EAC 00002821 */   addu      $a1, $zero, $zero
.Lrace_800E8EB0:
/* 9F270 800E8EB0 8E420004 */  lw         $v0, 0x4($s2)
/* 9F274 800E8EB4 02221021 */  addu       $v0, $s1, $v0
/* 9F278 800E8EB8 8C420000 */  lw         $v0, 0x0($v0)
/* 9F27C 800E8EBC 8C430000 */  lw         $v1, 0x0($v0)
/* 9F280 800E8EC0 02602821 */  addu       $a1, $s3, $zero
/* 9F284 800E8EC4 84640060 */  lh         $a0, 0x60($v1)
/* 9F288 800E8EC8 26100001 */  addiu      $s0, $s0, 0x1
/* 9F28C 800E8ECC 00442021 */  addu       $a0, $v0, $a0
/* 9F290 800E8ED0 8C620064 */  lw         $v0, 0x64($v1)
/* 9F294 800E8ED4 0040F809 */  jalr       $v0
/* 9F298 800E8ED8 02A03021 */   addu      $a2, $s5, $zero
/* 9F29C 800E8EDC 0803A39C */  j          .Lrace_800E8E70
/* 9F2A0 800E8EE0 00000000 */   nop
.Lrace_800E8EE4:
/* 9F2A4 800E8EE4 8FBF0028 */  lw         $ra, 0x28($sp)
/* 9F2A8 800E8EE8 8FB50024 */  lw         $s5, 0x24($sp)
/* 9F2AC 800E8EEC 8FB40020 */  lw         $s4, 0x20($sp)
/* 9F2B0 800E8EF0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9F2B4 800E8EF4 8FB20018 */  lw         $s2, 0x18($sp)
/* 9F2B8 800E8EF8 8FB10014 */  lw         $s1, 0x14($sp)
/* 9F2BC 800E8EFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 9F2C0 800E8F00 03E00008 */  jr         $ra
/* 9F2C4 800E8F04 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800E8F08
/* 9F2C8 800E8F08 00003821 */  addu       $a3, $zero, $zero
/* 9F2CC 800E8F0C 2409FFFF */  addiu      $t1, $zero, -0x1
/* 9F2D0 800E8F10 24080003 */  addiu      $t0, $zero, 0x3
.Lrace_800E8F14:
/* 9F2D4 800E8F14 8C820000 */  lw         $v0, 0x0($a0)
/* 9F2D8 800E8F18 00E2102B */  sltu       $v0, $a3, $v0
/* 9F2DC 800E8F1C 1040000D */  beqz       $v0, .Lrace_800E8F54
/* 9F2E0 800E8F20 00071080 */   sll       $v0, $a3, 2
/* 9F2E4 800E8F24 8C830004 */  lw         $v1, 0x4($a0)
/* 9F2E8 800E8F28 00431021 */  addu       $v0, $v0, $v1
/* 9F2EC 800E8F2C 8C460000 */  lw         $a2, 0x0($v0)
/* 9F2F0 800E8F30 8CC30008 */  lw         $v1, 0x8($a2)
/* 9F2F4 800E8F34 10690003 */  beq        $v1, $t1, .Lrace_800E8F44
/* 9F2F8 800E8F38 00001021 */   addu      $v0, $zero, $zero
/* 9F2FC 800E8F3C 00651026 */  xor        $v0, $v1, $a1
/* 9F300 800E8F40 2C420001 */  sltiu      $v0, $v0, 0x1
.Lrace_800E8F44:
/* 9F304 800E8F44 54400001 */  bnel       $v0, $zero, .Lrace_800E8F4C
/* 9F308 800E8F48 ACC8000C */   sw        $t0, 0xC($a2)
.Lrace_800E8F4C:
/* 9F30C 800E8F4C 0803A3C5 */  j          .Lrace_800E8F14
/* 9F310 800E8F50 24E70001 */   addiu     $a3, $a3, 0x1
.Lrace_800E8F54:
/* 9F314 800E8F54 03E00008 */  jr         $ra
/* 9F318 800E8F58 00000000 */   nop

glabel func_race_800E8F5C
/* 9F31C 800E8F5C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9F320 800E8F60 AFB20018 */  sw         $s2, 0x18($sp)
/* 9F324 800E8F64 00809021 */  addu       $s2, $a0, $zero
/* 9F328 800E8F68 AFB40020 */  sw         $s4, 0x20($sp)
/* 9F32C 800E8F6C 00A0A021 */  addu       $s4, $a1, $zero
/* 9F330 800E8F70 AFB50024 */  sw         $s5, 0x24($sp)
/* 9F334 800E8F74 00C0A821 */  addu       $s5, $a2, $zero
/* 9F338 800E8F78 AFB60028 */  sw         $s6, 0x28($sp)
/* 9F33C 800E8F7C 00E0B021 */  addu       $s6, $a3, $zero
/* 9F340 800E8F80 AFB10014 */  sw         $s1, 0x14($sp)
/* 9F344 800E8F84 00008821 */  addu       $s1, $zero, $zero
/* 9F348 800E8F88 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9F34C 800E8F8C 2413FFFF */  addiu      $s3, $zero, -0x1
/* 9F350 800E8F90 AFBF002C */  sw         $ra, 0x2C($sp)
/* 9F354 800E8F94 AFB00010 */  sw         $s0, 0x10($sp)
.Lrace_800E8F98:
/* 9F358 800E8F98 8E420000 */  lw         $v0, 0x0($s2)
/* 9F35C 800E8F9C 0222102B */  sltu       $v0, $s1, $v0
/* 9F360 800E8FA0 10400030 */  beqz       $v0, .Lrace_800E9064
/* 9F364 800E8FA4 00118080 */   sll       $s0, $s1, 2
/* 9F368 800E8FA8 8E420004 */  lw         $v0, 0x4($s2)
/* 9F36C 800E8FAC 02021021 */  addu       $v0, $s0, $v0
/* 9F370 800E8FB0 8C440000 */  lw         $a0, 0x0($v0)
/* 9F374 800E8FB4 8C830008 */  lw         $v1, 0x8($a0)
/* 9F378 800E8FB8 10730003 */  beq        $v1, $s3, .Lrace_800E8FC8
/* 9F37C 800E8FBC 00001021 */   addu      $v0, $zero, $zero
/* 9F380 800E8FC0 00741026 */  xor        $v0, $v1, $s4
/* 9F384 800E8FC4 2C420001 */  sltiu      $v0, $v0, 0x1
.Lrace_800E8FC8:
/* 9F388 800E8FC8 10400003 */  beqz       $v0, .Lrace_800E8FD8
/* 9F38C 800E8FCC 00000000 */   nop
/* 9F390 800E8FD0 0C03A1D4 */  jal        func_race_800E8750
/* 9F394 800E8FD4 00002821 */   addu      $a1, $zero, $zero
.Lrace_800E8FD8:
/* 9F398 800E8FD8 8E420004 */  lw         $v0, 0x4($s2)
/* 9F39C 800E8FDC 02021021 */  addu       $v0, $s0, $v0
/* 9F3A0 800E8FE0 8C440000 */  lw         $a0, 0x0($v0)
/* 9F3A4 800E8FE4 8C830008 */  lw         $v1, 0x8($a0)
/* 9F3A8 800E8FE8 10730003 */  beq        $v1, $s3, .Lrace_800E8FF8
/* 9F3AC 800E8FEC 00001021 */   addu      $v0, $zero, $zero
/* 9F3B0 800E8FF0 00751026 */  xor        $v0, $v1, $s5
/* 9F3B4 800E8FF4 2C420001 */  sltiu      $v0, $v0, 0x1
.Lrace_800E8FF8:
/* 9F3B8 800E8FF8 10400003 */  beqz       $v0, .Lrace_800E9008
/* 9F3BC 800E8FFC 00000000 */   nop
/* 9F3C0 800E9000 0C03A1E3 */  jal        func_race_800E878C
/* 9F3C4 800E9004 00002821 */   addu      $a1, $zero, $zero
.Lrace_800E9008:
/* 9F3C8 800E9008 8E420004 */  lw         $v0, 0x4($s2)
/* 9F3CC 800E900C 02021021 */  addu       $v0, $s0, $v0
/* 9F3D0 800E9010 8C430000 */  lw         $v1, 0x0($v0)
/* 9F3D4 800E9014 02802821 */  addu       $a1, $s4, $zero
/* 9F3D8 800E9018 8C620000 */  lw         $v0, 0x0($v1)
/* 9F3DC 800E901C 02C03021 */  addu       $a2, $s6, $zero
/* 9F3E0 800E9020 84440058 */  lh         $a0, 0x58($v0)
/* 9F3E4 800E9024 8C42005C */  lw         $v0, 0x5C($v0)
/* 9F3E8 800E9028 0040F809 */  jalr       $v0
/* 9F3EC 800E902C 00642021 */   addu      $a0, $v1, $a0
/* 9F3F0 800E9030 8E420004 */  lw         $v0, 0x4($s2)
/* 9F3F4 800E9034 26310001 */  addiu      $s1, $s1, 0x1
/* 9F3F8 800E9038 02021021 */  addu       $v0, $s0, $v0
/* 9F3FC 800E903C 8C430000 */  lw         $v1, 0x0($v0)
/* 9F400 800E9040 02A02821 */  addu       $a1, $s5, $zero
/* 9F404 800E9044 8C620000 */  lw         $v0, 0x0($v1)
/* 9F408 800E9048 02C03021 */  addu       $a2, $s6, $zero
/* 9F40C 800E904C 84440060 */  lh         $a0, 0x60($v0)
/* 9F410 800E9050 8C420064 */  lw         $v0, 0x64($v0)
/* 9F414 800E9054 0040F809 */  jalr       $v0
/* 9F418 800E9058 00642021 */   addu      $a0, $v1, $a0
/* 9F41C 800E905C 0803A3E6 */  j          .Lrace_800E8F98
/* 9F420 800E9060 00000000 */   nop
.Lrace_800E9064:
/* 9F424 800E9064 8FBF002C */  lw         $ra, 0x2C($sp)
/* 9F428 800E9068 8FB60028 */  lw         $s6, 0x28($sp)
/* 9F42C 800E906C 8FB50024 */  lw         $s5, 0x24($sp)
/* 9F430 800E9070 8FB40020 */  lw         $s4, 0x20($sp)
/* 9F434 800E9074 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9F438 800E9078 8FB20018 */  lw         $s2, 0x18($sp)
/* 9F43C 800E907C 8FB10014 */  lw         $s1, 0x14($sp)
/* 9F440 800E9080 8FB00010 */  lw         $s0, 0x10($sp)
/* 9F444 800E9084 03E00008 */  jr         $ra
/* 9F448 800E9088 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800E908C
/* 9F44C 800E908C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 9F450 800E9090 AFB20028 */  sw         $s2, 0x28($sp)
/* 9F454 800E9094 00809021 */  addu       $s2, $a0, $zero
/* 9F458 800E9098 AFB50034 */  sw         $s5, 0x34($sp)
/* 9F45C 800E909C 00A0A821 */  addu       $s5, $a1, $zero
/* 9F460 800E90A0 AFB60038 */  sw         $s6, 0x38($sp)
/* 9F464 800E90A4 00C0B021 */  addu       $s6, $a2, $zero
/* 9F468 800E90A8 AFB3002C */  sw         $s3, 0x2C($sp)
/* 9F46C 800E90AC 00009821 */  addu       $s3, $zero, $zero
/* 9F470 800E90B0 AFB40030 */  sw         $s4, 0x30($sp)
/* 9F474 800E90B4 27B40010 */  addiu      $s4, $sp, 0x10
/* 9F478 800E90B8 AFB7003C */  sw         $s7, 0x3C($sp)
/* 9F47C 800E90BC 26D70018 */  addiu      $s7, $s6, 0x18
/* 9F480 800E90C0 AFB10024 */  sw         $s1, 0x24($sp)
/* 9F484 800E90C4 02608821 */  addu       $s1, $s3, $zero
/* 9F488 800E90C8 AFBF0040 */  sw         $ra, 0x40($sp)
/* 9F48C 800E90CC AFB00020 */  sw         $s0, 0x20($sp)
.Lrace_800E90D0:
/* 9F490 800E90D0 8E420000 */  lw         $v0, 0x0($s2)
/* 9F494 800E90D4 0262102B */  sltu       $v0, $s3, $v0
/* 9F498 800E90D8 10400031 */  beqz       $v0, .Lrace_800E91A0
/* 9F49C 800E90DC 00000000 */   nop
/* 9F4A0 800E90E0 8E420004 */  lw         $v0, 0x4($s2)
/* 9F4A4 800E90E4 02221021 */  addu       $v0, $s1, $v0
/* 9F4A8 800E90E8 8C450000 */  lw         $a1, 0x0($v0)
/* 9F4AC 800E90EC 8CA30008 */  lw         $v1, 0x8($a1)
/* 9F4B0 800E90F0 2402FFFF */  addiu      $v0, $zero, -0x1
/* 9F4B4 800E90F4 1062000E */  beq        $v1, $v0, .Lrace_800E9130
/* 9F4B8 800E90F8 00008021 */   addu      $s0, $zero, $zero
/* 9F4BC 800E90FC 8CA20000 */  lw         $v0, 0x0($a1)
/* 9F4C0 800E9100 84440048 */  lh         $a0, 0x48($v0)
/* 9F4C4 800E9104 8C42004C */  lw         $v0, 0x4C($v0)
/* 9F4C8 800E9108 0040F809 */  jalr       $v0
/* 9F4CC 800E910C 00A42021 */   addu      $a0, $a1, $a0
/* 9F4D0 800E9110 10400007 */  beqz       $v0, .Lrace_800E9130
/* 9F4D4 800E9114 00000000 */   nop
/* 9F4D8 800E9118 8E420004 */  lw         $v0, 0x4($s2)
/* 9F4DC 800E911C 02221021 */  addu       $v0, $s1, $v0
/* 9F4E0 800E9120 8C420000 */  lw         $v0, 0x0($v0)
/* 9F4E4 800E9124 8C420008 */  lw         $v0, 0x8($v0)
/* 9F4E8 800E9128 00551026 */  xor        $v0, $v0, $s5
/* 9F4EC 800E912C 2C500001 */  sltiu      $s0, $v0, 0x1
.Lrace_800E9130:
/* 9F4F0 800E9130 12000006 */  beqz       $s0, .Lrace_800E914C
/* 9F4F4 800E9134 00000000 */   nop
/* 9F4F8 800E9138 8E420004 */  lw         $v0, 0x4($s2)
/* 9F4FC 800E913C 02221021 */  addu       $v0, $s1, $v0
/* 9F500 800E9140 8C440000 */  lw         $a0, 0x0($v0)
/* 9F504 800E9144 0C03A1D4 */  jal        func_race_800E8750
/* 9F508 800E9148 02C02821 */   addu      $a1, $s6, $zero
.Lrace_800E914C:
/* 9F50C 800E914C 8EE30044 */  lw         $v1, 0x44($s7)
/* 9F510 800E9150 8C620024 */  lw         $v0, 0x24($v1)
/* 9F514 800E9154 02802821 */  addu       $a1, $s4, $zero
/* 9F518 800E9158 84440010 */  lh         $a0, 0x10($v0)
/* 9F51C 800E915C 8C420014 */  lw         $v0, 0x14($v0)
/* 9F520 800E9160 0040F809 */  jalr       $v0
/* 9F524 800E9164 00642021 */   addu      $a0, $v1, $a0
/* 9F528 800E9168 26730001 */  addiu      $s3, $s3, 0x1
/* 9F52C 800E916C 8E420004 */  lw         $v0, 0x4($s2)
/* 9F530 800E9170 02A02821 */  addu       $a1, $s5, $zero
/* 9F534 800E9174 02221021 */  addu       $v0, $s1, $v0
/* 9F538 800E9178 8C430000 */  lw         $v1, 0x0($v0)
/* 9F53C 800E917C 02803021 */  addu       $a2, $s4, $zero
/* 9F540 800E9180 8C620000 */  lw         $v0, 0x0($v1)
/* 9F544 800E9184 26310004 */  addiu      $s1, $s1, 0x4
/* 9F548 800E9188 84440058 */  lh         $a0, 0x58($v0)
/* 9F54C 800E918C 8C42005C */  lw         $v0, 0x5C($v0)
/* 9F550 800E9190 0040F809 */  jalr       $v0
/* 9F554 800E9194 00642021 */   addu      $a0, $v1, $a0
/* 9F558 800E9198 0803A434 */  j          .Lrace_800E90D0
/* 9F55C 800E919C 00000000 */   nop
.Lrace_800E91A0:
/* 9F560 800E91A0 8FBF0040 */  lw         $ra, 0x40($sp)
/* 9F564 800E91A4 8FB7003C */  lw         $s7, 0x3C($sp)
/* 9F568 800E91A8 8FB60038 */  lw         $s6, 0x38($sp)
/* 9F56C 800E91AC 8FB50034 */  lw         $s5, 0x34($sp)
/* 9F570 800E91B0 8FB40030 */  lw         $s4, 0x30($sp)
/* 9F574 800E91B4 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9F578 800E91B8 8FB20028 */  lw         $s2, 0x28($sp)
/* 9F57C 800E91BC 8FB10024 */  lw         $s1, 0x24($sp)
/* 9F580 800E91C0 8FB00020 */  lw         $s0, 0x20($sp)
/* 9F584 800E91C4 03E00008 */  jr         $ra
/* 9F588 800E91C8 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_800E91CC
/* 9F58C 800E91CC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 9F590 800E91D0 AFB20028 */  sw         $s2, 0x28($sp)
/* 9F594 800E91D4 00809021 */  addu       $s2, $a0, $zero
/* 9F598 800E91D8 AFB50034 */  sw         $s5, 0x34($sp)
/* 9F59C 800E91DC 00A0A821 */  addu       $s5, $a1, $zero
/* 9F5A0 800E91E0 AFB60038 */  sw         $s6, 0x38($sp)
/* 9F5A4 800E91E4 00C0B021 */  addu       $s6, $a2, $zero
/* 9F5A8 800E91E8 AFB3002C */  sw         $s3, 0x2C($sp)
/* 9F5AC 800E91EC 00009821 */  addu       $s3, $zero, $zero
/* 9F5B0 800E91F0 AFB40030 */  sw         $s4, 0x30($sp)
/* 9F5B4 800E91F4 27B40010 */  addiu      $s4, $sp, 0x10
/* 9F5B8 800E91F8 AFB7003C */  sw         $s7, 0x3C($sp)
/* 9F5BC 800E91FC 26D70018 */  addiu      $s7, $s6, 0x18
/* 9F5C0 800E9200 AFB10024 */  sw         $s1, 0x24($sp)
/* 9F5C4 800E9204 02608821 */  addu       $s1, $s3, $zero
/* 9F5C8 800E9208 AFBF0040 */  sw         $ra, 0x40($sp)
/* 9F5CC 800E920C AFB00020 */  sw         $s0, 0x20($sp)
.Lrace_800E9210:
/* 9F5D0 800E9210 8E420000 */  lw         $v0, 0x0($s2)
/* 9F5D4 800E9214 0262102B */  sltu       $v0, $s3, $v0
/* 9F5D8 800E9218 10400031 */  beqz       $v0, .Lrace_800E92E0
/* 9F5DC 800E921C 00000000 */   nop
/* 9F5E0 800E9220 8E420004 */  lw         $v0, 0x4($s2)
/* 9F5E4 800E9224 02221021 */  addu       $v0, $s1, $v0
/* 9F5E8 800E9228 8C450000 */  lw         $a1, 0x0($v0)
/* 9F5EC 800E922C 8CA30008 */  lw         $v1, 0x8($a1)
/* 9F5F0 800E9230 2402FFFF */  addiu      $v0, $zero, -0x1
/* 9F5F4 800E9234 1062000E */  beq        $v1, $v0, .Lrace_800E9270
/* 9F5F8 800E9238 00008021 */   addu      $s0, $zero, $zero
/* 9F5FC 800E923C 8CA20000 */  lw         $v0, 0x0($a1)
/* 9F600 800E9240 84440048 */  lh         $a0, 0x48($v0)
/* 9F604 800E9244 8C42004C */  lw         $v0, 0x4C($v0)
/* 9F608 800E9248 0040F809 */  jalr       $v0
/* 9F60C 800E924C 00A42021 */   addu      $a0, $a1, $a0
/* 9F610 800E9250 10400007 */  beqz       $v0, .Lrace_800E9270
/* 9F614 800E9254 00000000 */   nop
/* 9F618 800E9258 8E420004 */  lw         $v0, 0x4($s2)
/* 9F61C 800E925C 02221021 */  addu       $v0, $s1, $v0
/* 9F620 800E9260 8C420000 */  lw         $v0, 0x0($v0)
/* 9F624 800E9264 8C420008 */  lw         $v0, 0x8($v0)
/* 9F628 800E9268 00551026 */  xor        $v0, $v0, $s5
/* 9F62C 800E926C 2C500001 */  sltiu      $s0, $v0, 0x1
.Lrace_800E9270:
/* 9F630 800E9270 12000006 */  beqz       $s0, .Lrace_800E928C
/* 9F634 800E9274 00000000 */   nop
/* 9F638 800E9278 8E420004 */  lw         $v0, 0x4($s2)
/* 9F63C 800E927C 02221021 */  addu       $v0, $s1, $v0
/* 9F640 800E9280 8C440000 */  lw         $a0, 0x0($v0)
/* 9F644 800E9284 0C03A1E3 */  jal        func_race_800E878C
/* 9F648 800E9288 02C02821 */   addu      $a1, $s6, $zero
.Lrace_800E928C:
/* 9F64C 800E928C 8EE30044 */  lw         $v1, 0x44($s7)
/* 9F650 800E9290 8C620024 */  lw         $v0, 0x24($v1)
/* 9F654 800E9294 02802821 */  addu       $a1, $s4, $zero
/* 9F658 800E9298 84440010 */  lh         $a0, 0x10($v0)
/* 9F65C 800E929C 8C420014 */  lw         $v0, 0x14($v0)
/* 9F660 800E92A0 0040F809 */  jalr       $v0
/* 9F664 800E92A4 00642021 */   addu      $a0, $v1, $a0
/* 9F668 800E92A8 26730001 */  addiu      $s3, $s3, 0x1
/* 9F66C 800E92AC 8E420004 */  lw         $v0, 0x4($s2)
/* 9F670 800E92B0 02A02821 */  addu       $a1, $s5, $zero
/* 9F674 800E92B4 02221021 */  addu       $v0, $s1, $v0
/* 9F678 800E92B8 8C430000 */  lw         $v1, 0x0($v0)
/* 9F67C 800E92BC 02803021 */  addu       $a2, $s4, $zero
/* 9F680 800E92C0 8C620000 */  lw         $v0, 0x0($v1)
/* 9F684 800E92C4 26310004 */  addiu      $s1, $s1, 0x4
/* 9F688 800E92C8 84440060 */  lh         $a0, 0x60($v0)
/* 9F68C 800E92CC 8C420064 */  lw         $v0, 0x64($v0)
/* 9F690 800E92D0 0040F809 */  jalr       $v0
/* 9F694 800E92D4 00642021 */   addu      $a0, $v1, $a0
/* 9F698 800E92D8 0803A484 */  j          .Lrace_800E9210
/* 9F69C 800E92DC 00000000 */   nop
.Lrace_800E92E0:
/* 9F6A0 800E92E0 8FBF0040 */  lw         $ra, 0x40($sp)
/* 9F6A4 800E92E4 8FB7003C */  lw         $s7, 0x3C($sp)
/* 9F6A8 800E92E8 8FB60038 */  lw         $s6, 0x38($sp)
/* 9F6AC 800E92EC 8FB50034 */  lw         $s5, 0x34($sp)
/* 9F6B0 800E92F0 8FB40030 */  lw         $s4, 0x30($sp)
/* 9F6B4 800E92F4 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9F6B8 800E92F8 8FB20028 */  lw         $s2, 0x28($sp)
/* 9F6BC 800E92FC 8FB10024 */  lw         $s1, 0x24($sp)
/* 9F6C0 800E9300 8FB00020 */  lw         $s0, 0x20($sp)
/* 9F6C4 800E9304 03E00008 */  jr         $ra
/* 9F6C8 800E9308 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_800E930C
/* 9F6CC 800E930C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 9F6D0 800E9310 AFB20030 */  sw         $s2, 0x30($sp)
/* 9F6D4 800E9314 00809021 */  addu       $s2, $a0, $zero
/* 9F6D8 800E9318 AFB70044 */  sw         $s7, 0x44($sp)
/* 9F6DC 800E931C 00A0B821 */  addu       $s7, $a1, $zero
/* 9F6E0 800E9320 AFBE0048 */  sw         $fp, 0x48($sp)
/* 9F6E4 800E9324 00C0F021 */  addu       $fp, $a2, $zero
/* 9F6E8 800E9328 AFB5003C */  sw         $s5, 0x3C($sp)
/* 9F6EC 800E932C 00E0A821 */  addu       $s5, $a3, $zero
/* 9F6F0 800E9330 AFB40038 */  sw         $s4, 0x38($sp)
/* 9F6F4 800E9334 0000A021 */  addu       $s4, $zero, $zero
/* 9F6F8 800E9338 AFB60040 */  sw         $s6, 0x40($sp)
/* 9F6FC 800E933C 2416FFFF */  addiu      $s6, $zero, -0x1
/* 9F700 800E9340 AFB30034 */  sw         $s3, 0x34($sp)
/* 9F704 800E9344 27B30010 */  addiu      $s3, $sp, 0x10
/* 9F708 800E9348 26A80018 */  addiu      $t0, $s5, 0x18
/* 9F70C 800E934C AFB1002C */  sw         $s1, 0x2C($sp)
/* 9F710 800E9350 02808821 */  addu       $s1, $s4, $zero
/* 9F714 800E9354 AFBF004C */  sw         $ra, 0x4C($sp)
/* 9F718 800E9358 AFB00028 */  sw         $s0, 0x28($sp)
/* 9F71C 800E935C AFA80020 */  sw         $t0, 0x20($sp)
.Lrace_800E9360:
/* 9F720 800E9360 8E420000 */  lw         $v0, 0x0($s2)
/* 9F724 800E9364 0282102B */  sltu       $v0, $s4, $v0
/* 9F728 800E9368 10400055 */  beqz       $v0, .Lrace_800E94C0
/* 9F72C 800E936C 00000000 */   nop
/* 9F730 800E9370 8E420004 */  lw         $v0, 0x4($s2)
/* 9F734 800E9374 02221021 */  addu       $v0, $s1, $v0
/* 9F738 800E9378 8C430000 */  lw         $v1, 0x0($v0)
/* 9F73C 800E937C 8C620008 */  lw         $v0, 0x8($v1)
/* 9F740 800E9380 1056000E */  beq        $v0, $s6, .Lrace_800E93BC
/* 9F744 800E9384 00008021 */   addu      $s0, $zero, $zero
/* 9F748 800E9388 8C620000 */  lw         $v0, 0x0($v1)
/* 9F74C 800E938C 84440048 */  lh         $a0, 0x48($v0)
/* 9F750 800E9390 8C42004C */  lw         $v0, 0x4C($v0)
/* 9F754 800E9394 0040F809 */  jalr       $v0
/* 9F758 800E9398 00642021 */   addu      $a0, $v1, $a0
/* 9F75C 800E939C 10400007 */  beqz       $v0, .Lrace_800E93BC
/* 9F760 800E93A0 00000000 */   nop
/* 9F764 800E93A4 8E420004 */  lw         $v0, 0x4($s2)
/* 9F768 800E93A8 02221021 */  addu       $v0, $s1, $v0
/* 9F76C 800E93AC 8C420000 */  lw         $v0, 0x0($v0)
/* 9F770 800E93B0 8C420008 */  lw         $v0, 0x8($v0)
/* 9F774 800E93B4 00571026 */  xor        $v0, $v0, $s7
/* 9F778 800E93B8 2C500001 */  sltiu      $s0, $v0, 0x1
.Lrace_800E93BC:
/* 9F77C 800E93BC 12000006 */  beqz       $s0, .Lrace_800E93D8
/* 9F780 800E93C0 00000000 */   nop
/* 9F784 800E93C4 8E420004 */  lw         $v0, 0x4($s2)
/* 9F788 800E93C8 02221021 */  addu       $v0, $s1, $v0
/* 9F78C 800E93CC 8C440000 */  lw         $a0, 0x0($v0)
/* 9F790 800E93D0 0C03A1D4 */  jal        func_race_800E8750
/* 9F794 800E93D4 02A02821 */   addu      $a1, $s5, $zero
.Lrace_800E93D8:
/* 9F798 800E93D8 8E420004 */  lw         $v0, 0x4($s2)
/* 9F79C 800E93DC 02221021 */  addu       $v0, $s1, $v0
/* 9F7A0 800E93E0 8C430000 */  lw         $v1, 0x0($v0)
/* 9F7A4 800E93E4 8C620008 */  lw         $v0, 0x8($v1)
/* 9F7A8 800E93E8 1056000E */  beq        $v0, $s6, .Lrace_800E9424
/* 9F7AC 800E93EC 00008021 */   addu      $s0, $zero, $zero
/* 9F7B0 800E93F0 8C620000 */  lw         $v0, 0x0($v1)
/* 9F7B4 800E93F4 84440048 */  lh         $a0, 0x48($v0)
/* 9F7B8 800E93F8 8C42004C */  lw         $v0, 0x4C($v0)
/* 9F7BC 800E93FC 0040F809 */  jalr       $v0
/* 9F7C0 800E9400 00642021 */   addu      $a0, $v1, $a0
/* 9F7C4 800E9404 10400007 */  beqz       $v0, .Lrace_800E9424
/* 9F7C8 800E9408 00000000 */   nop
/* 9F7CC 800E940C 8E420004 */  lw         $v0, 0x4($s2)
/* 9F7D0 800E9410 02221021 */  addu       $v0, $s1, $v0
/* 9F7D4 800E9414 8C420000 */  lw         $v0, 0x0($v0)
/* 9F7D8 800E9418 8C420008 */  lw         $v0, 0x8($v0)
/* 9F7DC 800E941C 005E1026 */  xor        $v0, $v0, $fp
/* 9F7E0 800E9420 2C500001 */  sltiu      $s0, $v0, 0x1
.Lrace_800E9424:
/* 9F7E4 800E9424 12000006 */  beqz       $s0, .Lrace_800E9440
/* 9F7E8 800E9428 00000000 */   nop
/* 9F7EC 800E942C 8E420004 */  lw         $v0, 0x4($s2)
/* 9F7F0 800E9430 02221021 */  addu       $v0, $s1, $v0
/* 9F7F4 800E9434 8C440000 */  lw         $a0, 0x0($v0)
/* 9F7F8 800E9438 0C03A1E3 */  jal        func_race_800E878C
/* 9F7FC 800E943C 02A02821 */   addu      $a1, $s5, $zero
.Lrace_800E9440:
/* 9F800 800E9440 8FA80020 */  lw         $t0, 0x20($sp)
/* 9F804 800E9444 8D030044 */  lw         $v1, 0x44($t0)
/* 9F808 800E9448 8C620024 */  lw         $v0, 0x24($v1)
/* 9F80C 800E944C 02602821 */  addu       $a1, $s3, $zero
/* 9F810 800E9450 84440010 */  lh         $a0, 0x10($v0)
/* 9F814 800E9454 8C420014 */  lw         $v0, 0x14($v0)
/* 9F818 800E9458 0040F809 */  jalr       $v0
/* 9F81C 800E945C 00642021 */   addu      $a0, $v1, $a0
/* 9F820 800E9460 8E420004 */  lw         $v0, 0x4($s2)
/* 9F824 800E9464 26940001 */  addiu      $s4, $s4, 0x1
/* 9F828 800E9468 02221021 */  addu       $v0, $s1, $v0
/* 9F82C 800E946C 8C430000 */  lw         $v1, 0x0($v0)
/* 9F830 800E9470 02E02821 */  addu       $a1, $s7, $zero
/* 9F834 800E9474 8C620000 */  lw         $v0, 0x0($v1)
/* 9F838 800E9478 02603021 */  addu       $a2, $s3, $zero
/* 9F83C 800E947C 84440058 */  lh         $a0, 0x58($v0)
/* 9F840 800E9480 8C42005C */  lw         $v0, 0x5C($v0)
/* 9F844 800E9484 0040F809 */  jalr       $v0
/* 9F848 800E9488 00642021 */   addu      $a0, $v1, $a0
/* 9F84C 800E948C 8E420004 */  lw         $v0, 0x4($s2)
/* 9F850 800E9490 03C02821 */  addu       $a1, $fp, $zero
/* 9F854 800E9494 02221021 */  addu       $v0, $s1, $v0
/* 9F858 800E9498 8C430000 */  lw         $v1, 0x0($v0)
/* 9F85C 800E949C 02603021 */  addu       $a2, $s3, $zero
/* 9F860 800E94A0 8C620000 */  lw         $v0, 0x0($v1)
/* 9F864 800E94A4 26310004 */  addiu      $s1, $s1, 0x4
/* 9F868 800E94A8 84440060 */  lh         $a0, 0x60($v0)
/* 9F86C 800E94AC 8C420064 */  lw         $v0, 0x64($v0)
/* 9F870 800E94B0 0040F809 */  jalr       $v0
/* 9F874 800E94B4 00642021 */   addu      $a0, $v1, $a0
/* 9F878 800E94B8 0803A4D8 */  j          .Lrace_800E9360
/* 9F87C 800E94BC 00000000 */   nop
.Lrace_800E94C0:
/* 9F880 800E94C0 8FBF004C */  lw         $ra, 0x4C($sp)
/* 9F884 800E94C4 8FBE0048 */  lw         $fp, 0x48($sp)
/* 9F888 800E94C8 8FB70044 */  lw         $s7, 0x44($sp)
/* 9F88C 800E94CC 8FB60040 */  lw         $s6, 0x40($sp)
/* 9F890 800E94D0 8FB5003C */  lw         $s5, 0x3C($sp)
/* 9F894 800E94D4 8FB40038 */  lw         $s4, 0x38($sp)
/* 9F898 800E94D8 8FB30034 */  lw         $s3, 0x34($sp)
/* 9F89C 800E94DC 8FB20030 */  lw         $s2, 0x30($sp)
/* 9F8A0 800E94E0 8FB1002C */  lw         $s1, 0x2C($sp)
/* 9F8A4 800E94E4 8FB00028 */  lw         $s0, 0x28($sp)
/* 9F8A8 800E94E8 03E00008 */  jr         $ra
/* 9F8AC 800E94EC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800E94F0
/* 9F8B0 800E94F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9F8B4 800E94F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 9F8B8 800E94F8 00808821 */  addu       $s1, $a0, $zero
/* 9F8BC 800E94FC AFB20018 */  sw         $s2, 0x18($sp)
/* 9F8C0 800E9500 00A09021 */  addu       $s2, $a1, $zero
/* 9F8C4 800E9504 AFBF001C */  sw         $ra, 0x1C($sp)
/* 9F8C8 800E9508 AFB00010 */  sw         $s0, 0x10($sp)
/* 9F8CC 800E950C 8E220000 */  lw         $v0, 0x0($s1)
/* 9F8D0 800E9510 10400010 */  beqz       $v0, .Lrace_800E9554
/* 9F8D4 800E9514 00008021 */   addu      $s0, $zero, $zero
.Lrace_800E9518:
/* 9F8D8 800E9518 8E230004 */  lw         $v1, 0x4($s1)
/* 9F8DC 800E951C 00101080 */  sll        $v0, $s0, 2
/* 9F8E0 800E9520 00431021 */  addu       $v0, $v0, $v1
/* 9F8E4 800E9524 8C420000 */  lw         $v0, 0x0($v0)
/* 9F8E8 800E9528 8C430000 */  lw         $v1, 0x0($v0)
/* 9F8EC 800E952C 84640030 */  lh         $a0, 0x30($v1)
/* 9F8F0 800E9530 00442021 */  addu       $a0, $v0, $a0
/* 9F8F4 800E9534 8C620034 */  lw         $v0, 0x34($v1)
/* 9F8F8 800E9538 0040F809 */  jalr       $v0
/* 9F8FC 800E953C 02402821 */   addu      $a1, $s2, $zero
/* 9F900 800E9540 8E220000 */  lw         $v0, 0x0($s1)
/* 9F904 800E9544 26100001 */  addiu      $s0, $s0, 0x1
/* 9F908 800E9548 0202102B */  sltu       $v0, $s0, $v0
/* 9F90C 800E954C 1440FFF2 */  bnez       $v0, .Lrace_800E9518
/* 9F910 800E9550 00000000 */   nop
.Lrace_800E9554:
/* 9F914 800E9554 8FBF001C */  lw         $ra, 0x1C($sp)
/* 9F918 800E9558 8FB20018 */  lw         $s2, 0x18($sp)
/* 9F91C 800E955C 8FB10014 */  lw         $s1, 0x14($sp)
/* 9F920 800E9560 8FB00010 */  lw         $s0, 0x10($sp)
/* 9F924 800E9564 03E00008 */  jr         $ra
/* 9F928 800E9568 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E956C
/* 9F92C 800E956C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9F930 800E9570 AFB10014 */  sw         $s1, 0x14($sp)
/* 9F934 800E9574 00808821 */  addu       $s1, $a0, $zero
/* 9F938 800E9578 AFB20018 */  sw         $s2, 0x18($sp)
/* 9F93C 800E957C 00A09021 */  addu       $s2, $a1, $zero
/* 9F940 800E9580 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9F944 800E9584 00C09821 */  addu       $s3, $a2, $zero
/* 9F948 800E9588 AFBF0020 */  sw         $ra, 0x20($sp)
/* 9F94C 800E958C AFB00010 */  sw         $s0, 0x10($sp)
/* 9F950 800E9590 8E220000 */  lw         $v0, 0x0($s1)
/* 9F954 800E9594 10400011 */  beqz       $v0, .Lrace_800E95DC
/* 9F958 800E9598 00008021 */   addu      $s0, $zero, $zero
.Lrace_800E959C:
/* 9F95C 800E959C 8E230004 */  lw         $v1, 0x4($s1)
/* 9F960 800E95A0 00101080 */  sll        $v0, $s0, 2
/* 9F964 800E95A4 00431021 */  addu       $v0, $v0, $v1
/* 9F968 800E95A8 8C420000 */  lw         $v0, 0x0($v0)
/* 9F96C 800E95AC 8C430000 */  lw         $v1, 0x0($v0)
/* 9F970 800E95B0 84640038 */  lh         $a0, 0x38($v1)
/* 9F974 800E95B4 02402821 */  addu       $a1, $s2, $zero
/* 9F978 800E95B8 00442021 */  addu       $a0, $v0, $a0
/* 9F97C 800E95BC 8C62003C */  lw         $v0, 0x3C($v1)
/* 9F980 800E95C0 0040F809 */  jalr       $v0
/* 9F984 800E95C4 02603021 */   addu      $a2, $s3, $zero
/* 9F988 800E95C8 8E220000 */  lw         $v0, 0x0($s1)
/* 9F98C 800E95CC 26100001 */  addiu      $s0, $s0, 0x1
/* 9F990 800E95D0 0202102B */  sltu       $v0, $s0, $v0
/* 9F994 800E95D4 1440FFF1 */  bnez       $v0, .Lrace_800E959C
/* 9F998 800E95D8 00000000 */   nop
.Lrace_800E95DC:
/* 9F99C 800E95DC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 9F9A0 800E95E0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9F9A4 800E95E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 9F9A8 800E95E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 9F9AC 800E95EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 9F9B0 800E95F0 03E00008 */  jr         $ra
/* 9F9B4 800E95F4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E95F8
/* 9F9B8 800E95F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9F9BC 800E95FC AFB10014 */  sw         $s1, 0x14($sp)
/* 9F9C0 800E9600 00808821 */  addu       $s1, $a0, $zero
/* 9F9C4 800E9604 AFB20018 */  sw         $s2, 0x18($sp)
/* 9F9C8 800E9608 00A09021 */  addu       $s2, $a1, $zero
/* 9F9CC 800E960C AFBF001C */  sw         $ra, 0x1C($sp)
/* 9F9D0 800E9610 AFB00010 */  sw         $s0, 0x10($sp)
/* 9F9D4 800E9614 8E220000 */  lw         $v0, 0x0($s1)
/* 9F9D8 800E9618 10400010 */  beqz       $v0, .Lrace_800E965C
/* 9F9DC 800E961C 00008021 */   addu      $s0, $zero, $zero
.Lrace_800E9620:
/* 9F9E0 800E9620 8E230004 */  lw         $v1, 0x4($s1)
/* 9F9E4 800E9624 00101080 */  sll        $v0, $s0, 2
/* 9F9E8 800E9628 00431021 */  addu       $v0, $v0, $v1
/* 9F9EC 800E962C 8C420000 */  lw         $v0, 0x0($v0)
/* 9F9F0 800E9630 8C430000 */  lw         $v1, 0x0($v0)
/* 9F9F4 800E9634 84640040 */  lh         $a0, 0x40($v1)
/* 9F9F8 800E9638 00442021 */  addu       $a0, $v0, $a0
/* 9F9FC 800E963C 8C620044 */  lw         $v0, 0x44($v1)
/* 9FA00 800E9640 0040F809 */  jalr       $v0
/* 9FA04 800E9644 02402821 */   addu      $a1, $s2, $zero
/* 9FA08 800E9648 8E220000 */  lw         $v0, 0x0($s1)
/* 9FA0C 800E964C 26100001 */  addiu      $s0, $s0, 0x1
/* 9FA10 800E9650 0202102B */  sltu       $v0, $s0, $v0
/* 9FA14 800E9654 1440FFF2 */  bnez       $v0, .Lrace_800E9620
/* 9FA18 800E9658 00000000 */   nop
.Lrace_800E965C:
/* 9FA1C 800E965C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 9FA20 800E9660 8FB20018 */  lw         $s2, 0x18($sp)
/* 9FA24 800E9664 8FB10014 */  lw         $s1, 0x14($sp)
/* 9FA28 800E9668 8FB00010 */  lw         $s0, 0x10($sp)
/* 9FA2C 800E966C 03E00008 */  jr         $ra
/* 9FA30 800E9670 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E9674
/* 9FA34 800E9674 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9FA38 800E9678 AFB10014 */  sw         $s1, 0x14($sp)
/* 9FA3C 800E967C 00808821 */  addu       $s1, $a0, $zero
/* 9FA40 800E9680 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9FA44 800E9684 AFB00010 */  sw         $s0, 0x10($sp)
/* 9FA48 800E9688 8E220000 */  lw         $v0, 0x0($s1)
/* 9FA4C 800E968C 1040000F */  beqz       $v0, .Lrace_800E96CC
/* 9FA50 800E9690 00008021 */   addu      $s0, $zero, $zero
.Lrace_800E9694:
/* 9FA54 800E9694 8E230004 */  lw         $v1, 0x4($s1)
/* 9FA58 800E9698 00101080 */  sll        $v0, $s0, 2
/* 9FA5C 800E969C 00431021 */  addu       $v0, $v0, $v1
/* 9FA60 800E96A0 8C430000 */  lw         $v1, 0x0($v0)
/* 9FA64 800E96A4 8C620000 */  lw         $v0, 0x0($v1)
/* 9FA68 800E96A8 84440050 */  lh         $a0, 0x50($v0)
/* 9FA6C 800E96AC 8C420054 */  lw         $v0, 0x54($v0)
/* 9FA70 800E96B0 0040F809 */  jalr       $v0
/* 9FA74 800E96B4 00642021 */   addu      $a0, $v1, $a0
/* 9FA78 800E96B8 8E220000 */  lw         $v0, 0x0($s1)
/* 9FA7C 800E96BC 26100001 */  addiu      $s0, $s0, 0x1
/* 9FA80 800E96C0 0202102B */  sltu       $v0, $s0, $v0
/* 9FA84 800E96C4 1440FFF3 */  bnez       $v0, .Lrace_800E9694
/* 9FA88 800E96C8 00000000 */   nop
.Lrace_800E96CC:
/* 9FA8C 800E96CC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9FA90 800E96D0 8FB10014 */  lw         $s1, 0x14($sp)
/* 9FA94 800E96D4 8FB00010 */  lw         $s0, 0x10($sp)
/* 9FA98 800E96D8 03E00008 */  jr         $ra
/* 9FA9C 800E96DC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E96E0
/* 9FAA0 800E96E0 3C028013 */  lui        $v0, %hi(D_race_80132140)
/* 9FAA4 800E96E4 03E00008 */  jr         $ra
/* 9FAA8 800E96E8 AC442140 */   sw        $a0, %lo(D_race_80132140)($v0)

glabel func_race_800E96EC
/* 9FAAC 800E96EC 3C028013 */  lui        $v0, %hi(D_race_80132140)
/* 9FAB0 800E96F0 8C422140 */  lw         $v0, %lo(D_race_80132140)($v0)
/* 9FAB4 800E96F4 03E00008 */  jr         $ra
/* 9FAB8 800E96F8 00000000 */   nop

glabel func_race_800E96FC
/* 9FABC 800E96FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9FAC0 800E9700 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9FAC4 800E9704 0C002513 */  jal        func_8000944C
/* 9FAC8 800E9708 00000000 */   nop
/* 9FACC 800E970C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9FAD0 800E9710 03E00008 */  jr         $ra
/* 9FAD4 800E9714 27BD0018 */   addiu     $sp, $sp, 0x18
