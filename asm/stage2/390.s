.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80067800
/* 5EB30 80067800 00801021 */  addu       $v0, $a0, $zero
/* 5EB34 80067804 3C038004 */  lui        $v1, %hi(D_8003E700)
/* 5EB38 80067808 2463E700 */  addiu      $v1, $v1, %lo(D_8003E700)
/* 5EB3C 8006780C AC430010 */  sw         $v1, 0x10($v0)
/* 5EB40 80067810 AC400000 */  sw         $zero, 0x0($v0)
/* 5EB44 80067814 AC400004 */  sw         $zero, 0x4($v0)
/* 5EB48 80067818 AC400008 */  sw         $zero, 0x8($v0)
/* 5EB4C 8006781C 03E00008 */  jr         $ra
/* 5EB50 80067820 AC40000C */   sw        $zero, 0xC($v0)

glabel func_80067824
/* 5EB54 80067824 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5EB58 80067828 AFB10014 */  sw         $s1, 0x14($sp)
/* 5EB5C 8006782C 00808821 */  addu       $s1, $a0, $zero
/* 5EB60 80067830 AFB00010 */  sw         $s0, 0x10($sp)
/* 5EB64 80067834 00A08021 */  addu       $s0, $a1, $zero
/* 5EB68 80067838 3C028004 */  lui        $v0, %hi(D_8003E700)
/* 5EB6C 8006783C 2442E700 */  addiu      $v0, $v0, %lo(D_8003E700)
/* 5EB70 80067840 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5EB74 80067844 0C019E72 */  jal        func_800679C8
/* 5EB78 80067848 AE220010 */   sw        $v0, 0x10($s1)
/* 5EB7C 8006784C 32100001 */  andi       $s0, $s0, 0x1
/* 5EB80 80067850 12000003 */  beqz       $s0, .L80067860
/* 5EB84 80067854 00000000 */   nop
/* 5EB88 80067858 0C01FB5C */  jal        func_8007ED70
/* 5EB8C 8006785C 02202021 */   addu      $a0, $s1, $zero
.L80067860:
/* 5EB90 80067860 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5EB94 80067864 8FB10014 */  lw         $s1, 0x14($sp)
/* 5EB98 80067868 8FB00010 */  lw         $s0, 0x10($sp)
/* 5EB9C 8006786C 03E00008 */  jr         $ra
/* 5EBA0 80067870 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80067874
/* 5EBA4 80067874 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5EBA8 80067878 AFB10014 */  sw         $s1, 0x14($sp)
/* 5EBAC 8006787C 00808821 */  addu       $s1, $a0, $zero
/* 5EBB0 80067880 AFB3001C */  sw         $s3, 0x1C($sp)
/* 5EBB4 80067884 00A09821 */  addu       $s3, $a1, $zero
/* 5EBB8 80067888 AFB20018 */  sw         $s2, 0x18($sp)
/* 5EBBC 8006788C 00C09021 */  addu       $s2, $a2, $zero
/* 5EBC0 80067890 AFBF0020 */  sw         $ra, 0x20($sp)
/* 5EBC4 80067894 AFB00010 */  sw         $s0, 0x10($sp)
/* 5EBC8 80067898 8E220008 */  lw         $v0, 0x8($s1)
/* 5EBCC 8006789C 10400006 */  beqz       $v0, .L800678B8
/* 5EBD0 800678A0 00E08021 */   addu      $s0, $a3, $zero
/* 5EBD4 800678A4 8E220010 */  lw         $v0, 0x10($s1)
/* 5EBD8 800678A8 84440018 */  lh         $a0, 0x18($v0)
/* 5EBDC 800678AC 8C42001C */  lw         $v0, 0x1C($v0)
/* 5EBE0 800678B0 0040F809 */  jalr       $v0
/* 5EBE4 800678B4 02242021 */   addu      $a0, $s1, $a0
.L800678B8:
/* 5EBE8 800678B8 12000014 */  beqz       $s0, .L8006790C
/* 5EBEC 800678BC 00000000 */   nop
/* 5EBF0 800678C0 0C01FB4C */  jal        func_8007ED30
/* 5EBF4 800678C4 24040654 */   addiu     $a0, $zero, 0x654
/* 5EBF8 800678C8 0C00278C */  jal        func_80009E30
/* 5EBFC 800678CC 00402021 */   addu      $a0, $v0, $zero
/* 5EC00 800678D0 00408021 */  addu       $s0, $v0, $zero
/* 5EC04 800678D4 56000008 */  bnel       $s0, $zero, .L800678F8
/* 5EC08 800678D8 02002021 */   addu      $a0, $s0, $zero
/* 5EC0C 800678DC 3C048004 */  lui        $a0, %hi(D_8003E640)
/* 5EC10 800678E0 2484E640 */  addiu      $a0, $a0, %lo(D_8003E640)
/* 5EC14 800678E4 00002821 */  addu       $a1, $zero, $zero
/* 5EC18 800678E8 00A03021 */  addu       $a2, $a1, $zero
/* 5EC1C 800678EC 0C011ACF */  jal        func_80046B3C
/* 5EC20 800678F0 00A03821 */   addu      $a3, $a1, $zero
/* 5EC24 800678F4 02002021 */  addu       $a0, $s0, $zero
.L800678F8:
/* 5EC28 800678F8 3C058004 */  lui        $a1, %hi(D_8003E644)
/* 5EC2C 800678FC 0C0025BA */  jal        func_800096E8
/* 5EC30 80067900 24A5E644 */   addiu     $a1, $a1, %lo(D_8003E644)
/* 5EC34 80067904 08019E52 */  j          .L80067948
/* 5EC38 80067908 00000000 */   nop
.L8006790C:
/* 5EC3C 8006790C 0C01FB4C */  jal        func_8007ED30
/* 5EC40 80067910 24040658 */   addiu     $a0, $zero, 0x658
/* 5EC44 80067914 00408021 */  addu       $s0, $v0, $zero
/* 5EC48 80067918 0C002504 */  jal        func_80009410
/* 5EC4C 8006791C 02002021 */   addu      $a0, $s0, $zero
/* 5EC50 80067920 3C028004 */  lui        $v0, %hi(D_8003E650)
/* 5EC54 80067924 2442E650 */  addiu      $v0, $v0, %lo(D_8003E650)
/* 5EC58 80067928 16000007 */  bnez       $s0, .L80067948
/* 5EC5C 8006792C AE020028 */   sw        $v0, 0x28($s0)
/* 5EC60 80067930 3C048004 */  lui        $a0, %hi(D_8003E640)
/* 5EC64 80067934 2484E640 */  addiu      $a0, $a0, %lo(D_8003E640)
/* 5EC68 80067938 00002821 */  addu       $a1, $zero, $zero
/* 5EC6C 8006793C 00A03021 */  addu       $a2, $a1, $zero
/* 5EC70 80067940 0C011ACF */  jal        func_80046B3C
/* 5EC74 80067944 00A03821 */   addu      $a3, $a1, $zero
.L80067948:
/* 5EC78 80067948 8E020028 */  lw         $v0, 0x28($s0)
/* 5EC7C 8006794C 02402821 */  addu       $a1, $s2, $zero
/* 5EC80 80067950 84440088 */  lh         $a0, 0x88($v0)
/* 5EC84 80067954 8C42008C */  lw         $v0, 0x8C($v0)
/* 5EC88 80067958 0040F809 */  jalr       $v0
/* 5EC8C 8006795C 02042021 */   addu      $a0, $s0, $a0
/* 5EC90 80067960 02202021 */  addu       $a0, $s1, $zero
/* 5EC94 80067964 02602821 */  addu       $a1, $s3, $zero
/* 5EC98 80067968 0C019E88 */  jal        func_80067A20
/* 5EC9C 8006796C 02003021 */   addu      $a2, $s0, $zero
/* 5ECA0 80067970 02202021 */  addu       $a0, $s1, $zero
/* 5ECA4 80067974 0C019EE8 */  jal        func_80067BA0
/* 5ECA8 80067978 02002821 */   addu      $a1, $s0, $zero
/* 5ECAC 8006797C 8E020028 */  lw         $v0, 0x28($s0)
/* 5ECB0 80067980 84440048 */  lh         $a0, 0x48($v0)
/* 5ECB4 80067984 8C42004C */  lw         $v0, 0x4C($v0)
/* 5ECB8 80067988 0040F809 */  jalr       $v0
/* 5ECBC 8006798C 02042021 */   addu      $a0, $s0, $a0
/* 5ECC0 80067990 12000006 */  beqz       $s0, .L800679AC
/* 5ECC4 80067994 24050003 */   addiu     $a1, $zero, 0x3
/* 5ECC8 80067998 8E020028 */  lw         $v0, 0x28($s0)
/* 5ECCC 8006799C 84440038 */  lh         $a0, 0x38($v0)
/* 5ECD0 800679A0 8C42003C */  lw         $v0, 0x3C($v0)
/* 5ECD4 800679A4 0040F809 */  jalr       $v0
/* 5ECD8 800679A8 02042021 */   addu      $a0, $s0, $a0
.L800679AC:
/* 5ECDC 800679AC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 5ECE0 800679B0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5ECE4 800679B4 8FB20018 */  lw         $s2, 0x18($sp)
/* 5ECE8 800679B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 5ECEC 800679BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 5ECF0 800679C0 03E00008 */  jr         $ra
/* 5ECF4 800679C4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800679C8
/* 5ECF8 800679C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5ECFC 800679CC AFB00010 */  sw         $s0, 0x10($sp)
/* 5ED00 800679D0 00808021 */  addu       $s0, $a0, $zero
/* 5ED04 800679D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5ED08 800679D8 8E040000 */  lw         $a0, 0x0($s0)
/* 5ED0C 800679DC 10800004 */  beqz       $a0, .L800679F0
/* 5ED10 800679E0 00000000 */   nop
/* 5ED14 800679E4 0C009444 */  jal        func_80025110
/* 5ED18 800679E8 00000000 */   nop
/* 5ED1C 800679EC AE000000 */  sw         $zero, 0x0($s0)
.L800679F0:
/* 5ED20 800679F0 8E040008 */  lw         $a0, 0x8($s0)
/* 5ED24 800679F4 50800005 */  beql       $a0, $zero, .L80067A0C
/* 5ED28 800679F8 AE000004 */   sw        $zero, 0x4($s0)
/* 5ED2C 800679FC 0C009444 */  jal        func_80025110
/* 5ED30 80067A00 00000000 */   nop
/* 5ED34 80067A04 AE000008 */  sw         $zero, 0x8($s0)
/* 5ED38 80067A08 AE000004 */  sw         $zero, 0x4($s0)
.L80067A0C:
/* 5ED3C 80067A0C AE00000C */  sw         $zero, 0xC($s0)
/* 5ED40 80067A10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5ED44 80067A14 8FB00010 */  lw         $s0, 0x10($sp)
/* 5ED48 80067A18 03E00008 */  jr         $ra
/* 5ED4C 80067A1C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80067A20
/* 5ED50 80067A20 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 5ED54 80067A24 AFB5002C */  sw         $s5, 0x2C($sp)
/* 5ED58 80067A28 0080A821 */  addu       $s5, $a0, $zero
/* 5ED5C 80067A2C AFB20020 */  sw         $s2, 0x20($sp)
/* 5ED60 80067A30 00C09021 */  addu       $s2, $a2, $zero
/* 5ED64 80067A34 AFBF0034 */  sw         $ra, 0x34($sp)
/* 5ED68 80067A38 AFB60030 */  sw         $s6, 0x30($sp)
/* 5ED6C 80067A3C AFB40028 */  sw         $s4, 0x28($sp)
/* 5ED70 80067A40 AFB30024 */  sw         $s3, 0x24($sp)
/* 5ED74 80067A44 AFB1001C */  sw         $s1, 0x1C($sp)
/* 5ED78 80067A48 AFB00018 */  sw         $s0, 0x18($sp)
/* 5ED7C 80067A4C 8E420028 */  lw         $v0, 0x28($s2)
/* 5ED80 80067A50 00A0B021 */  addu       $s6, $a1, $zero
/* 5ED84 80067A54 844400A0 */  lh         $a0, 0xA0($v0)
/* 5ED88 80067A58 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5ED8C 80067A5C 0040F809 */  jalr       $v0
/* 5ED90 80067A60 02442021 */   addu      $a0, $s2, $a0
/* 5ED94 80067A64 0C002723 */  jal        func_80009C8C
/* 5ED98 80067A68 02402021 */   addu      $a0, $s2, $zero
/* 5ED9C 80067A6C 3C038008 */  lui        $v1, %hi(D_80083E10)
/* 5EDA0 80067A70 8C643E10 */  lw         $a0, %lo(D_80083E10)($v1)
/* 5EDA4 80067A74 0C01FB65 */  jal        func_8007ED94
/* 5EDA8 80067A78 AEA20004 */   sw        $v0, 0x4($s5)
/* 5EDAC 80067A7C 8EB00004 */  lw         $s0, 0x4($s5)
/* 5EDB0 80067A80 0C00943C */  jal        func_800250F0
/* 5EDB4 80067A84 001020C0 */   sll       $a0, $s0, 3
/* 5EDB8 80067A88 00409821 */  addu       $s3, $v0, $zero
/* 5EDBC 80067A8C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 5EDC0 80067A90 06000007 */  bltz       $s0, .L80067AB0
/* 5EDC4 80067A94 02608821 */   addu      $s1, $s3, $zero
/* 5EDC8 80067A98 2414FFFF */  addiu      $s4, $zero, -0x1
.L80067A9C:
/* 5EDCC 80067A9C 0C01A0A8 */  jal        func_800682A0
/* 5EDD0 80067AA0 02202021 */   addu      $a0, $s1, $zero
/* 5EDD4 80067AA4 2610FFFF */  addiu      $s0, $s0, -0x1
/* 5EDD8 80067AA8 1614FFFC */  bne        $s0, $s4, .L80067A9C
/* 5EDDC 80067AAC 26310008 */   addiu     $s1, $s1, 0x8
.L80067AB0:
/* 5EDE0 80067AB0 0C01FB72 */  jal        func_8007EDC8
/* 5EDE4 80067AB4 AEB30000 */   sw        $s3, 0x0($s5)
/* 5EDE8 80067AB8 8EA20000 */  lw         $v0, 0x0($s5)
/* 5EDEC 80067ABC 14400008 */  bnez       $v0, .L80067AE0
/* 5EDF0 80067AC0 00008021 */   addu      $s0, $zero, $zero
/* 5EDF4 80067AC4 3C048004 */  lui        $a0, %hi(D_8003E640)
/* 5EDF8 80067AC8 2484E640 */  addiu      $a0, $a0, %lo(D_8003E640)
/* 5EDFC 80067ACC 00002821 */  addu       $a1, $zero, $zero
/* 5EE00 80067AD0 00A03021 */  addu       $a2, $a1, $zero
/* 5EE04 80067AD4 0C011ACF */  jal        func_80046B3C
/* 5EE08 80067AD8 00A03821 */   addu      $a3, $a1, $zero
/* 5EE0C 80067ADC 00008021 */  addu       $s0, $zero, $zero
.L80067AE0:
/* 5EE10 80067AE0 8EA20004 */  lw         $v0, 0x4($s5)
/* 5EE14 80067AE4 0202102B */  sltu       $v0, $s0, $v0
/* 5EE18 80067AE8 10400016 */  beqz       $v0, .L80067B44
/* 5EE1C 80067AEC 00000000 */   nop
/* 5EE20 80067AF0 8E420028 */  lw         $v0, 0x28($s2)
/* 5EE24 80067AF4 844400A0 */  lh         $a0, 0xA0($v0)
/* 5EE28 80067AF8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5EE2C 80067AFC 0040F809 */  jalr       $v0
/* 5EE30 80067B00 02442021 */   addu      $a0, $s2, $a0
/* 5EE34 80067B04 27A40010 */  addiu      $a0, $sp, 0x10
/* 5EE38 80067B08 26450044 */  addiu      $a1, $s2, 0x44
/* 5EE3C 80067B0C 0C000708 */  jal        func_80001C20
/* 5EE40 80067B10 24060008 */   addiu     $a2, $zero, 0x8
/* 5EE44 80067B14 0C002680 */  jal        func_80009A00
/* 5EE48 80067B18 02402021 */   addu      $a0, $s2, $zero
/* 5EE4C 80067B1C 02C02821 */  addu       $a1, $s6, $zero
/* 5EE50 80067B20 27A60010 */  addiu      $a2, $sp, 0x10
/* 5EE54 80067B24 00403821 */  addu       $a3, $v0, $zero
/* 5EE58 80067B28 001010C0 */  sll        $v0, $s0, 3
/* 5EE5C 80067B2C 8EA40000 */  lw         $a0, 0x0($s5)
/* 5EE60 80067B30 26100001 */  addiu      $s0, $s0, 0x1
/* 5EE64 80067B34 0C01A0AC */  jal        func_800682B0
/* 5EE68 80067B38 00822021 */   addu      $a0, $a0, $v0
/* 5EE6C 80067B3C 08019EB8 */  j          .L80067AE0
/* 5EE70 80067B40 00000000 */   nop
.L80067B44:
/* 5EE74 80067B44 8E420028 */  lw         $v0, 0x28($s2)
/* 5EE78 80067B48 844400A0 */  lh         $a0, 0xA0($v0)
/* 5EE7C 80067B4C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5EE80 80067B50 0040F809 */  jalr       $v0
/* 5EE84 80067B54 02442021 */   addu      $a0, $s2, $a0
/* 5EE88 80067B58 24030006 */  addiu      $v1, $zero, 0x6
/* 5EE8C 80067B5C 10430006 */  beq        $v0, $v1, .L80067B78
/* 5EE90 80067B60 00602821 */   addu      $a1, $v1, $zero
/* 5EE94 80067B64 8E420028 */  lw         $v0, 0x28($s2)
/* 5EE98 80067B68 84440098 */  lh         $a0, 0x98($v0)
/* 5EE9C 80067B6C 8C42009C */  lw         $v0, 0x9C($v0)
/* 5EEA0 80067B70 0040F809 */  jalr       $v0
/* 5EEA4 80067B74 02442021 */   addu      $a0, $s2, $a0
.L80067B78:
/* 5EEA8 80067B78 8FBF0034 */  lw         $ra, 0x34($sp)
/* 5EEAC 80067B7C 8FB60030 */  lw         $s6, 0x30($sp)
/* 5EEB0 80067B80 8FB5002C */  lw         $s5, 0x2C($sp)
/* 5EEB4 80067B84 8FB40028 */  lw         $s4, 0x28($sp)
/* 5EEB8 80067B88 8FB30024 */  lw         $s3, 0x24($sp)
/* 5EEBC 80067B8C 8FB20020 */  lw         $s2, 0x20($sp)
/* 5EEC0 80067B90 8FB1001C */  lw         $s1, 0x1C($sp)
/* 5EEC4 80067B94 8FB00018 */  lw         $s0, 0x18($sp)
/* 5EEC8 80067B98 03E00008 */  jr         $ra
/* 5EECC 80067B9C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80067BA0
/* 5EED0 80067BA0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5EED4 80067BA4 AFB20020 */  sw         $s2, 0x20($sp)
/* 5EED8 80067BA8 00A09021 */  addu       $s2, $a1, $zero
/* 5EEDC 80067BAC AFBF003C */  sw         $ra, 0x3C($sp)
/* 5EEE0 80067BB0 AFBE0038 */  sw         $fp, 0x38($sp)
/* 5EEE4 80067BB4 AFB70034 */  sw         $s7, 0x34($sp)
/* 5EEE8 80067BB8 AFB60030 */  sw         $s6, 0x30($sp)
/* 5EEEC 80067BBC AFB5002C */  sw         $s5, 0x2C($sp)
/* 5EEF0 80067BC0 AFB40028 */  sw         $s4, 0x28($sp)
/* 5EEF4 80067BC4 AFB30024 */  sw         $s3, 0x24($sp)
/* 5EEF8 80067BC8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 5EEFC 80067BCC AFB00018 */  sw         $s0, 0x18($sp)
/* 5EF00 80067BD0 8E420028 */  lw         $v0, 0x28($s2)
/* 5EF04 80067BD4 0080B821 */  addu       $s7, $a0, $zero
/* 5EF08 80067BD8 844400A0 */  lh         $a0, 0xA0($v0)
/* 5EF0C 80067BDC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5EF10 80067BE0 0040F809 */  jalr       $v0
/* 5EF14 80067BE4 02442021 */   addu      $a0, $s2, $a0
/* 5EF18 80067BE8 0C002723 */  jal        func_80009C8C
/* 5EF1C 80067BEC 02402021 */   addu      $a0, $s2, $zero
/* 5EF20 80067BF0 3C038008 */  lui        $v1, %hi(D_80083E10)
/* 5EF24 80067BF4 8C643E10 */  lw         $a0, %lo(D_80083E10)($v1)
/* 5EF28 80067BF8 0C01FB65 */  jal        func_8007ED94
/* 5EF2C 80067BFC AEE2000C */   sw        $v0, 0xC($s7)
/* 5EF30 80067C00 8EF0000C */  lw         $s0, 0xC($s7)
/* 5EF34 80067C04 00102040 */  sll        $a0, $s0, 1
/* 5EF38 80067C08 00902021 */  addu       $a0, $a0, $s0
/* 5EF3C 80067C0C 0C00943C */  jal        func_800250F0
/* 5EF40 80067C10 000420C0 */   sll       $a0, $a0, 3
/* 5EF44 80067C14 00409821 */  addu       $s3, $v0, $zero
/* 5EF48 80067C18 2610FFFF */  addiu      $s0, $s0, -0x1
/* 5EF4C 80067C1C 06000007 */  bltz       $s0, .L80067C3C
/* 5EF50 80067C20 02608821 */   addu      $s1, $s3, $zero
/* 5EF54 80067C24 2414FFFF */  addiu      $s4, $zero, -0x1
.L80067C28:
/* 5EF58 80067C28 0C019FC8 */  jal        func_80067F20
/* 5EF5C 80067C2C 02202021 */   addu      $a0, $s1, $zero
/* 5EF60 80067C30 2610FFFF */  addiu      $s0, $s0, -0x1
/* 5EF64 80067C34 1614FFFC */  bne        $s0, $s4, .L80067C28
/* 5EF68 80067C38 26310018 */   addiu     $s1, $s1, 0x18
.L80067C3C:
/* 5EF6C 80067C3C 0C01FB72 */  jal        func_8007EDC8
/* 5EF70 80067C40 AEF30008 */   sw        $s3, 0x8($s7)
/* 5EF74 80067C44 8EE20008 */  lw         $v0, 0x8($s7)
/* 5EF78 80067C48 14400006 */  bnez       $v0, .L80067C64
/* 5EF7C 80067C4C 3C048004 */   lui       $a0, %hi(D_8003E640)
/* 5EF80 80067C50 2484E640 */  addiu      $a0, $a0, %lo(D_8003E640)
/* 5EF84 80067C54 00002821 */  addu       $a1, $zero, $zero
/* 5EF88 80067C58 00A03021 */  addu       $a2, $a1, $zero
/* 5EF8C 80067C5C 0C011ACF */  jal        func_80046B3C
/* 5EF90 80067C60 00A03821 */   addu      $a3, $a1, $zero
.L80067C64:
/* 5EF94 80067C64 8EE2000C */  lw         $v0, 0xC($s7)
/* 5EF98 80067C68 10400054 */  beqz       $v0, .L80067DBC
/* 5EF9C 80067C6C 00008021 */   addu      $s0, $zero, $zero
/* 5EFA0 80067C70 241E002A */  addiu      $fp, $zero, 0x2A
/* 5EFA4 80067C74 0200B021 */  addu       $s6, $s0, $zero
.L80067C78:
/* 5EFA8 80067C78 00009821 */  addu       $s3, $zero, $zero
/* 5EFAC 80067C7C 24110001 */  addiu      $s1, $zero, 0x1
/* 5EFB0 80067C80 0220A021 */  addu       $s4, $s1, $zero
/* 5EFB4 80067C84 8E420028 */  lw         $v0, 0x28($s2)
/* 5EFB8 80067C88 2415001E */  addiu      $s5, $zero, 0x1E
/* 5EFBC 80067C8C 844400A0 */  lh         $a0, 0xA0($v0)
/* 5EFC0 80067C90 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5EFC4 80067C94 0040F809 */  jalr       $v0
/* 5EFC8 80067C98 02442021 */   addu      $a0, $s2, $a0
/* 5EFCC 80067C9C 24030028 */  addiu      $v1, $zero, 0x28
/* 5EFD0 80067CA0 10430006 */  beq        $v0, $v1, .L80067CBC
/* 5EFD4 80067CA4 24050005 */   addiu     $a1, $zero, 0x5
/* 5EFD8 80067CA8 8E420028 */  lw         $v0, 0x28($s2)
/* 5EFDC 80067CAC 84440098 */  lh         $a0, 0x98($v0)
/* 5EFE0 80067CB0 8C42009C */  lw         $v0, 0x9C($v0)
/* 5EFE4 80067CB4 0040F809 */  jalr       $v0
/* 5EFE8 80067CB8 02442021 */   addu      $a0, $s2, $a0
.L80067CBC:
/* 5EFEC 80067CBC 8E420028 */  lw         $v0, 0x28($s2)
/* 5EFF0 80067CC0 844400A0 */  lh         $a0, 0xA0($v0)
/* 5EFF4 80067CC4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5EFF8 80067CC8 0040F809 */  jalr       $v0
/* 5EFFC 80067CCC 02442021 */   addu      $a0, $s2, $a0
/* 5F000 80067CD0 24030005 */  addiu      $v1, $zero, 0x5
/* 5F004 80067CD4 10430006 */  beq        $v0, $v1, .L80067CF0
/* 5F008 80067CD8 00602821 */   addu      $a1, $v1, $zero
/* 5F00C 80067CDC 8E420028 */  lw         $v0, 0x28($s2)
.L80067CE0:
/* 5F010 80067CE0 84440098 */  lh         $a0, 0x98($v0)
/* 5F014 80067CE4 8C42009C */  lw         $v0, 0x9C($v0)
/* 5F018 80067CE8 0040F809 */  jalr       $v0
/* 5F01C 80067CEC 02442021 */   addu      $a0, $s2, $a0
.L80067CF0:
/* 5F020 80067CF0 8E420028 */  lw         $v0, 0x28($s2)
/* 5F024 80067CF4 844400A0 */  lh         $a0, 0xA0($v0)
/* 5F028 80067CF8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5F02C 80067CFC 0040F809 */  jalr       $v0
/* 5F030 80067D00 02442021 */   addu      $a0, $s2, $a0
/* 5F034 80067D04 00401821 */  addu       $v1, $v0, $zero
/* 5F038 80067D08 24080006 */  addiu      $t0, $zero, 0x6
/* 5F03C 80067D0C 1068001F */  beq        $v1, $t0, .L80067D8C
/* 5F040 80067D10 24080029 */   addiu     $t0, $zero, 0x29
/* 5F044 80067D14 10680012 */  beq        $v1, $t0, .L80067D60
/* 5F048 80067D18 2C62002A */   sltiu     $v0, $v1, 0x2A
/* 5F04C 80067D1C 10400005 */  beqz       $v0, .L80067D34
/* 5F050 80067D20 24080027 */   addiu     $t0, $zero, 0x27
/* 5F054 80067D24 10680007 */  beq        $v1, $t0, .L80067D44
/* 5F058 80067D28 00000000 */   nop
/* 5F05C 80067D2C 08019F60 */  j          .L80067D80
/* 5F060 80067D30 00000000 */   nop
.L80067D34:
/* 5F064 80067D34 107E000E */  beq        $v1, $fp, .L80067D70
/* 5F068 80067D38 00000000 */   nop
/* 5F06C 80067D3C 08019F60 */  j          .L80067D80
/* 5F070 80067D40 00000000 */   nop
.L80067D44:
/* 5F074 80067D44 0C002680 */  jal        func_80009A00
/* 5F078 80067D48 02402021 */   addu      $a0, $s2, $zero
/* 5F07C 80067D4C 00409821 */  addu       $s3, $v0, $zero
/* 5F080 80067D50 0C002680 */  jal        func_80009A00
/* 5F084 80067D54 02402021 */   addu      $a0, $s2, $zero
/* 5F088 80067D58 08019F3C */  j          .L80067CF0
/* 5F08C 80067D5C 00408821 */   addu      $s1, $v0, $zero
.L80067D60:
/* 5F090 80067D60 0C002680 */  jal        func_80009A00
/* 5F094 80067D64 02402021 */   addu      $a0, $s2, $zero
/* 5F098 80067D68 08019F3C */  j          .L80067CF0
/* 5F09C 80067D6C 0040A021 */   addu      $s4, $v0, $zero
.L80067D70:
/* 5F0A0 80067D70 0C002680 */  jal        func_80009A00
/* 5F0A4 80067D74 02402021 */   addu      $a0, $s2, $zero
/* 5F0A8 80067D78 08019F3C */  j          .L80067CF0
/* 5F0AC 80067D7C 0040A821 */   addu      $s5, $v0, $zero
.L80067D80:
/* 5F0B0 80067D80 8E420028 */  lw         $v0, 0x28($s2)
/* 5F0B4 80067D84 08019F38 */  j          .L80067CE0
/* 5F0B8 80067D88 00002821 */   addu      $a1, $zero, $zero
.L80067D8C:
/* 5F0BC 80067D8C 02602821 */  addu       $a1, $s3, $zero
/* 5F0C0 80067D90 02203021 */  addu       $a2, $s1, $zero
/* 5F0C4 80067D94 02803821 */  addu       $a3, $s4, $zero
/* 5F0C8 80067D98 8EE40008 */  lw         $a0, 0x8($s7)
/* 5F0CC 80067D9C 26100001 */  addiu      $s0, $s0, 0x1
/* 5F0D0 80067DA0 AFB50010 */  sw         $s5, 0x10($sp)
/* 5F0D4 80067DA4 0C019FD2 */  jal        func_80067F48
/* 5F0D8 80067DA8 00962021 */   addu      $a0, $a0, $s6
/* 5F0DC 80067DAC 8EE2000C */  lw         $v0, 0xC($s7)
/* 5F0E0 80067DB0 0202102B */  sltu       $v0, $s0, $v0
/* 5F0E4 80067DB4 1440FFB0 */  bnez       $v0, .L80067C78
/* 5F0E8 80067DB8 26D60018 */   addiu     $s6, $s6, 0x18
.L80067DBC:
/* 5F0EC 80067DBC 8E420028 */  lw         $v0, 0x28($s2)
/* 5F0F0 80067DC0 844400A0 */  lh         $a0, 0xA0($v0)
/* 5F0F4 80067DC4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5F0F8 80067DC8 0040F809 */  jalr       $v0
/* 5F0FC 80067DCC 02442021 */   addu      $a0, $s2, $a0
/* 5F100 80067DD0 24030006 */  addiu      $v1, $zero, 0x6
/* 5F104 80067DD4 10430006 */  beq        $v0, $v1, .L80067DF0
/* 5F108 80067DD8 00602821 */   addu      $a1, $v1, $zero
/* 5F10C 80067DDC 8E420028 */  lw         $v0, 0x28($s2)
/* 5F110 80067DE0 84440098 */  lh         $a0, 0x98($v0)
/* 5F114 80067DE4 8C42009C */  lw         $v0, 0x9C($v0)
/* 5F118 80067DE8 0040F809 */  jalr       $v0
/* 5F11C 80067DEC 02442021 */   addu      $a0, $s2, $a0
.L80067DF0:
/* 5F120 80067DF0 8FBF003C */  lw         $ra, 0x3C($sp)
/* 5F124 80067DF4 8FBE0038 */  lw         $fp, 0x38($sp)
/* 5F128 80067DF8 8FB70034 */  lw         $s7, 0x34($sp)
/* 5F12C 80067DFC 8FB60030 */  lw         $s6, 0x30($sp)
/* 5F130 80067E00 8FB5002C */  lw         $s5, 0x2C($sp)
/* 5F134 80067E04 8FB40028 */  lw         $s4, 0x28($sp)
/* 5F138 80067E08 8FB30024 */  lw         $s3, 0x24($sp)
/* 5F13C 80067E0C 8FB20020 */  lw         $s2, 0x20($sp)
/* 5F140 80067E10 8FB1001C */  lw         $s1, 0x1C($sp)
/* 5F144 80067E14 8FB00018 */  lw         $s0, 0x18($sp)
/* 5F148 80067E18 03E00008 */  jr         $ra
/* 5F14C 80067E1C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80067E20
/* 5F150 80067E20 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5F154 80067E24 AFB20018 */  sw         $s2, 0x18($sp)
/* 5F158 80067E28 00809021 */  addu       $s2, $a0, $zero
/* 5F15C 80067E2C AFB3001C */  sw         $s3, 0x1C($sp)
/* 5F160 80067E30 00A09821 */  addu       $s3, $a1, $zero
/* 5F164 80067E34 AFB10014 */  sw         $s1, 0x14($sp)
/* 5F168 80067E38 00008821 */  addu       $s1, $zero, $zero
/* 5F16C 80067E3C AFB00010 */  sw         $s0, 0x10($sp)
/* 5F170 80067E40 02208021 */  addu       $s0, $s1, $zero
/* 5F174 80067E44 AFBF0020 */  sw         $ra, 0x20($sp)
.L80067E48:
/* 5F178 80067E48 8E42000C */  lw         $v0, 0xC($s2)
/* 5F17C 80067E4C 0222102B */  sltu       $v0, $s1, $v0
/* 5F180 80067E50 1040000E */  beqz       $v0, .L80067E8C
/* 5F184 80067E54 00000000 */   nop
/* 5F188 80067E58 8E420008 */  lw         $v0, 0x8($s2)
/* 5F18C 80067E5C 02022021 */  addu       $a0, $s0, $v0
/* 5F190 80067E60 8C820014 */  lw         $v0, 0x14($a0)
/* 5F194 80067E64 30420002 */  andi       $v0, $v0, 0x2
/* 5F198 80067E68 50400006 */  beql       $v0, $zero, .L80067E84
/* 5F19C 80067E6C 26100018 */   addiu     $s0, $s0, 0x18
/* 5F1A0 80067E70 8E460000 */  lw         $a2, 0x0($s2)
/* 5F1A4 80067E74 8E470004 */  lw         $a3, 0x4($s2)
/* 5F1A8 80067E78 0C01A036 */  jal        func_800680D8
/* 5F1AC 80067E7C 02602821 */   addu      $a1, $s3, $zero
/* 5F1B0 80067E80 26100018 */  addiu      $s0, $s0, 0x18
.L80067E84:
/* 5F1B4 80067E84 08019F92 */  j          .L80067E48
/* 5F1B8 80067E88 26310001 */   addiu     $s1, $s1, 0x1
.L80067E8C:
/* 5F1BC 80067E8C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 5F1C0 80067E90 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5F1C4 80067E94 8FB20018 */  lw         $s2, 0x18($sp)
/* 5F1C8 80067E98 8FB10014 */  lw         $s1, 0x14($sp)
/* 5F1CC 80067E9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 5F1D0 80067EA0 03E00008 */  jr         $ra
/* 5F1D4 80067EA4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80067EA8
/* 5F1D8 80067EA8 3C028008 */  lui        $v0, %hi(D_80083E10)
/* 5F1DC 80067EAC 03E00008 */  jr         $ra
/* 5F1E0 80067EB0 AC443E10 */   sw        $a0, %lo(D_80083E10)($v0)

glabel func_80067EB4
/* 5F1E4 80067EB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5F1E8 80067EB8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5F1EC 80067EBC 0C002513 */  jal        func_8000944C
/* 5F1F0 80067EC0 00000000 */   nop
/* 5F1F4 80067EC4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5F1F8 80067EC8 03E00008 */  jr         $ra
/* 5F1FC 80067ECC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80067ED0
/* 5F200 80067ED0 8C820004 */  lw         $v0, 0x4($a0)
/* 5F204 80067ED4 03E00008 */  jr         $ra
/* 5F208 80067ED8 00000000 */   nop

glabel func_80067EDC
/* 5F20C 80067EDC 8C820000 */  lw         $v0, 0x0($a0)
/* 5F210 80067EE0 03E00008 */  jr         $ra
/* 5F214 80067EE4 00000000 */   nop

glabel func_80067EE8
/* 5F218 80067EE8 00051840 */  sll        $v1, $a1, 1
/* 5F21C 80067EEC 00651821 */  addu       $v1, $v1, $a1
/* 5F220 80067EF0 8C820008 */  lw         $v0, 0x8($a0)
/* 5F224 80067EF4 000318C0 */  sll        $v1, $v1, 3
/* 5F228 80067EF8 03E00008 */  jr         $ra
/* 5F22C 80067EFC 00431021 */   addu      $v0, $v0, $v1

glabel func_80067F00
/* 5F230 80067F00 8C82000C */  lw         $v0, 0xC($a0)
/* 5F234 80067F04 03E00008 */  jr         $ra
/* 5F238 80067F08 00000000 */   nop

glabel func_80067F0C
/* 5F23C 80067F0C 8C820008 */  lw         $v0, 0x8($a0)
/* 5F240 80067F10 03E00008 */  jr         $ra
/* 5F244 80067F14 0002102B */   sltu      $v0, $zero, $v0
