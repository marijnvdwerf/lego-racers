.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000ACA0
/* B8A0 8000ACA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8A4 8000ACA4 AFB00010 */  sw         $s0, 0x10($sp)
/* B8A8 8000ACA8 00808021 */  addu       $s0, $a0, $zero
/* B8AC 8000ACAC 3C028000 */  lui        $v0, %hi(D_80000C40)
/* B8B0 8000ACB0 24420C40 */  addiu      $v0, $v0, %lo(D_80000C40)
/* B8B4 8000ACB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B8B8 8000ACB8 0C002B41 */  jal        func_8000AD04
/* B8BC 8000ACBC AE020050 */   sw        $v0, 0x50($s0)
/* B8C0 8000ACC0 02001021 */  addu       $v0, $s0, $zero
/* B8C4 8000ACC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8C8 8000ACC8 8FB00010 */  lw         $s0, 0x10($sp)
/* B8CC 8000ACCC 03E00008 */  jr         $ra
/* B8D0 8000ACD0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000ACD4
/* B8D4 8000ACD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8D8 8000ACD8 3C028000 */  lui        $v0, %hi(D_80000C40)
/* B8DC 8000ACDC 24420C40 */  addiu      $v0, $v0, %lo(D_80000C40)
/* B8E0 8000ACE0 30A50001 */  andi       $a1, $a1, 0x1
/* B8E4 8000ACE4 AFBF0010 */  sw         $ra, 0x10($sp)
/* B8E8 8000ACE8 10A00003 */  beqz       $a1, .L8000ACF8
/* B8EC 8000ACEC AC820050 */   sw        $v0, 0x50($a0)
/* B8F0 8000ACF0 0C01FB5C */  jal        func_8007ED70
/* B8F4 8000ACF4 00000000 */   nop
.L8000ACF8:
/* B8F8 8000ACF8 8FBF0010 */  lw         $ra, 0x10($sp)
/* B8FC 8000ACFC 03E00008 */  jr         $ra
/* B900 8000AD00 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000AD04
/* B904 8000AD04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B908 8000AD08 AFB00010 */  sw         $s0, 0x10($sp)
/* B90C 8000AD0C 00808021 */  addu       $s0, $a0, $zero
/* B910 8000AD10 26040040 */  addiu      $a0, $s0, 0x40
/* B914 8000AD14 00002821 */  addu       $a1, $zero, $zero
/* B918 8000AD18 24060010 */  addiu      $a2, $zero, 0x10
/* B91C 8000AD1C AFBF0014 */  sw         $ra, 0x14($sp)
/* B920 8000AD20 AE000028 */  sw         $zero, 0x28($s0)
/* B924 8000AD24 AE000034 */  sw         $zero, 0x34($s0)
/* B928 8000AD28 AE000030 */  sw         $zero, 0x30($s0)
/* B92C 8000AD2C AE00002C */  sw         $zero, 0x2C($s0)
/* B930 8000AD30 AE00003C */  sw         $zero, 0x3C($s0)
/* B934 8000AD34 0C000697 */  jal        func_80001A5C
/* B938 8000AD38 AE000038 */   sw        $zero, 0x38($s0)
/* B93C 8000AD3C 02002021 */  addu       $a0, $s0, $zero
/* B940 8000AD40 00002821 */  addu       $a1, $zero, $zero
/* B944 8000AD44 0C000697 */  jal        func_80001A5C
/* B948 8000AD48 24060010 */   addiu     $a2, $zero, 0x10
/* B94C 8000AD4C 26040018 */  addiu      $a0, $s0, 0x18
/* B950 8000AD50 00002821 */  addu       $a1, $zero, $zero
/* B954 8000AD54 0C000697 */  jal        func_80001A5C
/* B958 8000AD58 24060010 */   addiu     $a2, $zero, 0x10
/* B95C 8000AD5C AE000014 */  sw         $zero, 0x14($s0)
/* B960 8000AD60 AE000010 */  sw         $zero, 0x10($s0)
/* B964 8000AD64 8FBF0014 */  lw         $ra, 0x14($sp)
/* B968 8000AD68 8FB00010 */  lw         $s0, 0x10($sp)
/* B96C 8000AD6C 03E00008 */  jr         $ra
/* B970 8000AD70 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000AD74
/* B974 8000AD74 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B978 8000AD78 AFB20018 */  sw         $s2, 0x18($sp)
/* B97C 8000AD7C 00809021 */  addu       $s2, $a0, $zero
/* B980 8000AD80 AFB10014 */  sw         $s1, 0x14($sp)
/* B984 8000AD84 00008821 */  addu       $s1, $zero, $zero
/* B988 8000AD88 AFB00010 */  sw         $s0, 0x10($sp)
/* B98C 8000AD8C 02408021 */  addu       $s0, $s2, $zero
/* B990 8000AD90 AFBF001C */  sw         $ra, 0x1C($sp)
.L8000AD94:
/* B994 8000AD94 8E020000 */  lw         $v0, 0x0($s0)
/* B998 8000AD98 5040000A */  beql       $v0, $zero, .L8000ADC4
/* B99C 8000AD9C 26310001 */   addiu     $s1, $s1, 0x1
/* B9A0 8000ADA0 8E030040 */  lw         $v1, 0x40($s0)
/* B9A4 8000ADA4 8C620098 */  lw         $v0, 0x98($v1)
/* B9A8 8000ADA8 844400A8 */  lh         $a0, 0xA8($v0)
/* B9AC 8000ADAC 8C4200AC */  lw         $v0, 0xAC($v0)
/* B9B0 8000ADB0 0040F809 */  jalr       $v0
/* B9B4 8000ADB4 00642021 */   addu      $a0, $v1, $a0
/* B9B8 8000ADB8 2C420001 */  sltiu      $v0, $v0, 0x1
/* B9BC 8000ADBC AE020000 */  sw         $v0, 0x0($s0)
/* B9C0 8000ADC0 26310001 */  addiu      $s1, $s1, 0x1
.L8000ADC4:
/* B9C4 8000ADC4 2E220004 */  sltiu      $v0, $s1, 0x4
/* B9C8 8000ADC8 1440FFF2 */  bnez       $v0, .L8000AD94
/* B9CC 8000ADCC 26100004 */   addiu     $s0, $s0, 0x4
/* B9D0 8000ADD0 8E420010 */  lw         $v0, 0x10($s2)
/* B9D4 8000ADD4 1040000B */  beqz       $v0, .L8000AE04
/* B9D8 8000ADD8 00000000 */   nop
/* B9DC 8000ADDC 8E430038 */  lw         $v1, 0x38($s2)
/* B9E0 8000ADE0 10600008 */  beqz       $v1, .L8000AE04
/* B9E4 8000ADE4 00000000 */   nop
/* B9E8 8000ADE8 8C620098 */  lw         $v0, 0x98($v1)
/* B9EC 8000ADEC 844400A8 */  lh         $a0, 0xA8($v0)
/* B9F0 8000ADF0 8C4200AC */  lw         $v0, 0xAC($v0)
/* B9F4 8000ADF4 0040F809 */  jalr       $v0
/* B9F8 8000ADF8 00642021 */   addu      $a0, $v1, $a0
/* B9FC 8000ADFC 2C420001 */  sltiu      $v0, $v0, 0x1
/* BA00 8000AE00 AE420010 */  sw         $v0, 0x10($s2)
.L8000AE04:
/* BA04 8000AE04 8E420014 */  lw         $v0, 0x14($s2)
/* BA08 8000AE08 1040000B */  beqz       $v0, .L8000AE38
/* BA0C 8000AE0C 00000000 */   nop
/* BA10 8000AE10 8E43003C */  lw         $v1, 0x3C($s2)
/* BA14 8000AE14 10600008 */  beqz       $v1, .L8000AE38
/* BA18 8000AE18 00000000 */   nop
/* BA1C 8000AE1C 8C620098 */  lw         $v0, 0x98($v1)
/* BA20 8000AE20 844400A8 */  lh         $a0, 0xA8($v0)
/* BA24 8000AE24 8C4200AC */  lw         $v0, 0xAC($v0)
/* BA28 8000AE28 0040F809 */  jalr       $v0
/* BA2C 8000AE2C 00642021 */   addu      $a0, $v1, $a0
/* BA30 8000AE30 2C420001 */  sltiu      $v0, $v0, 0x1
/* BA34 8000AE34 AE420014 */  sw         $v0, 0x14($s2)
.L8000AE38:
/* BA38 8000AE38 8FBF001C */  lw         $ra, 0x1C($sp)
/* BA3C 8000AE3C 8FB20018 */  lw         $s2, 0x18($sp)
/* BA40 8000AE40 8FB10014 */  lw         $s1, 0x14($sp)
/* BA44 8000AE44 8FB00010 */  lw         $s0, 0x10($sp)
/* BA48 8000AE48 03E00008 */  jr         $ra
/* BA4C 8000AE4C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000AE50
/* BA50 8000AE50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BA54 8000AE54 AFB20018 */  sw         $s2, 0x18($sp)
/* BA58 8000AE58 00809021 */  addu       $s2, $a0, $zero
/* BA5C 8000AE5C AFB10014 */  sw         $s1, 0x14($sp)
/* BA60 8000AE60 00008821 */  addu       $s1, $zero, $zero
/* BA64 8000AE64 AFB3001C */  sw         $s3, 0x1C($sp)
/* BA68 8000AE68 24130001 */  addiu      $s3, $zero, 0x1
/* BA6C 8000AE6C AFB00010 */  sw         $s0, 0x10($sp)
/* BA70 8000AE70 02408021 */  addu       $s0, $s2, $zero
/* BA74 8000AE74 AFBF0020 */  sw         $ra, 0x20($sp)
.L8000AE78:
/* BA78 8000AE78 8E030040 */  lw         $v1, 0x40($s0)
/* BA7C 8000AE7C 50600010 */  beql       $v1, $zero, .L8000AEC0
/* BA80 8000AE80 26310001 */   addiu     $s1, $s1, 0x1
/* BA84 8000AE84 8C620098 */  lw         $v0, 0x98($v1)
/* BA88 8000AE88 84440038 */  lh         $a0, 0x38($v0)
/* BA8C 8000AE8C 8C42003C */  lw         $v0, 0x3C($v0)
/* BA90 8000AE90 0040F809 */  jalr       $v0
/* BA94 8000AE94 00642021 */   addu      $a0, $v1, $a0
/* BA98 8000AE98 50400009 */  beql       $v0, $zero, .L8000AEC0
/* BA9C 8000AE9C 26310001 */   addiu     $s1, $s1, 0x1
/* BAA0 8000AEA0 8E030040 */  lw         $v1, 0x40($s0)
/* BAA4 8000AEA4 AE130000 */  sw         $s3, 0x0($s0)
/* BAA8 8000AEA8 8C620098 */  lw         $v0, 0x98($v1)
/* BAAC 8000AEAC 844400B0 */  lh         $a0, 0xB0($v0)
/* BAB0 8000AEB0 8C4200B4 */  lw         $v0, 0xB4($v0)
/* BAB4 8000AEB4 0040F809 */  jalr       $v0
/* BAB8 8000AEB8 00642021 */   addu      $a0, $v1, $a0
/* BABC 8000AEBC 26310001 */  addiu      $s1, $s1, 0x1
.L8000AEC0:
/* BAC0 8000AEC0 2E220004 */  sltiu      $v0, $s1, 0x4
/* BAC4 8000AEC4 1440FFEC */  bnez       $v0, .L8000AE78
/* BAC8 8000AEC8 26100004 */   addiu     $s0, $s0, 0x4
/* BACC 8000AECC 8E430038 */  lw         $v1, 0x38($s2)
/* BAD0 8000AED0 1060000F */  beqz       $v1, .L8000AF10
/* BAD4 8000AED4 00000000 */   nop
/* BAD8 8000AED8 8C620098 */  lw         $v0, 0x98($v1)
/* BADC 8000AEDC 84440038 */  lh         $a0, 0x38($v0)
/* BAE0 8000AEE0 8C42003C */  lw         $v0, 0x3C($v0)
/* BAE4 8000AEE4 0040F809 */  jalr       $v0
/* BAE8 8000AEE8 00642021 */   addu      $a0, $v1, $a0
/* BAEC 8000AEEC 10400008 */  beqz       $v0, .L8000AF10
/* BAF0 8000AEF0 24020001 */   addiu     $v0, $zero, 0x1
/* BAF4 8000AEF4 8E430038 */  lw         $v1, 0x38($s2)
/* BAF8 8000AEF8 AE420010 */  sw         $v0, 0x10($s2)
/* BAFC 8000AEFC 8C620098 */  lw         $v0, 0x98($v1)
/* BB00 8000AF00 844400B0 */  lh         $a0, 0xB0($v0)
/* BB04 8000AF04 8C4200B4 */  lw         $v0, 0xB4($v0)
/* BB08 8000AF08 0040F809 */  jalr       $v0
/* BB0C 8000AF0C 00642021 */   addu      $a0, $v1, $a0
.L8000AF10:
/* BB10 8000AF10 8E43003C */  lw         $v1, 0x3C($s2)
/* BB14 8000AF14 1060000F */  beqz       $v1, .L8000AF54
/* BB18 8000AF18 00000000 */   nop
/* BB1C 8000AF1C 8C620098 */  lw         $v0, 0x98($v1)
/* BB20 8000AF20 84440038 */  lh         $a0, 0x38($v0)
/* BB24 8000AF24 8C42003C */  lw         $v0, 0x3C($v0)
/* BB28 8000AF28 0040F809 */  jalr       $v0
/* BB2C 8000AF2C 00642021 */   addu      $a0, $v1, $a0
/* BB30 8000AF30 10400008 */  beqz       $v0, .L8000AF54
/* BB34 8000AF34 24020001 */   addiu     $v0, $zero, 0x1
/* BB38 8000AF38 8E43003C */  lw         $v1, 0x3C($s2)
/* BB3C 8000AF3C AE420014 */  sw         $v0, 0x14($s2)
/* BB40 8000AF40 8C620098 */  lw         $v0, 0x98($v1)
/* BB44 8000AF44 844400B0 */  lh         $a0, 0xB0($v0)
/* BB48 8000AF48 8C4200B4 */  lw         $v0, 0xB4($v0)
/* BB4C 8000AF4C 0040F809 */  jalr       $v0
/* BB50 8000AF50 00642021 */   addu      $a0, $v1, $a0
.L8000AF54:
/* BB54 8000AF54 8FBF0020 */  lw         $ra, 0x20($sp)
/* BB58 8000AF58 8FB3001C */  lw         $s3, 0x1C($sp)
/* BB5C 8000AF5C 8FB20018 */  lw         $s2, 0x18($sp)
/* BB60 8000AF60 8FB10014 */  lw         $s1, 0x14($sp)
/* BB64 8000AF64 8FB00010 */  lw         $s0, 0x10($sp)
/* BB68 8000AF68 03E00008 */  jr         $ra
/* BB6C 8000AF6C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000AF70
/* BB70 8000AF70 00002821 */  addu       $a1, $zero, $zero
/* BB74 8000AF74 24060001 */  addiu      $a2, $zero, 0x1
/* BB78 8000AF78 00801821 */  addu       $v1, $a0, $zero
.L8000AF7C:
/* BB7C 8000AF7C 8C820034 */  lw         $v0, 0x34($a0)
/* BB80 8000AF80 00A2102A */  slt        $v0, $a1, $v0
/* BB84 8000AF84 10400005 */  beqz       $v0, .L8000AF9C
/* BB88 8000AF88 24A50001 */   addiu     $a1, $a1, 0x1
/* BB8C 8000AF8C 8C620040 */  lw         $v0, 0x40($v1)
/* BB90 8000AF90 24630004 */  addiu      $v1, $v1, 0x4
/* BB94 8000AF94 08002BDF */  j          .L8000AF7C
/* BB98 8000AF98 AC460020 */   sw        $a2, 0x20($v0)
.L8000AF9C:
/* BB9C 8000AF9C 03E00008 */  jr         $ra
/* BBA0 8000AFA0 00000000 */   nop

glabel func_8000AFA4
/* BBA4 8000AFA4 00002821 */  addu       $a1, $zero, $zero
/* BBA8 8000AFA8 00801821 */  addu       $v1, $a0, $zero
.L8000AFAC:
/* BBAC 8000AFAC 8C820034 */  lw         $v0, 0x34($a0)
/* BBB0 8000AFB0 00A2102A */  slt        $v0, $a1, $v0
/* BBB4 8000AFB4 10400005 */  beqz       $v0, .L8000AFCC
/* BBB8 8000AFB8 24A50001 */   addiu     $a1, $a1, 0x1
/* BBBC 8000AFBC 8C620040 */  lw         $v0, 0x40($v1)
/* BBC0 8000AFC0 24630004 */  addiu      $v1, $v1, 0x4
/* BBC4 8000AFC4 08002BEB */  j          .L8000AFAC
/* BBC8 8000AFC8 AC400020 */   sw        $zero, 0x20($v0)
.L8000AFCC:
/* BBCC 8000AFCC 03E00008 */  jr         $ra
/* BBD0 8000AFD0 00000000 */   nop

glabel func_8000AFD4
/* BBD4 8000AFD4 00003021 */  addu       $a2, $zero, $zero
/* BBD8 8000AFD8 8C870034 */  lw         $a3, 0x34($a0)
.L8000AFDC:
/* BBDC 8000AFDC 00C7102A */  slt        $v0, $a2, $a3
/* BBE0 8000AFE0 10400009 */  beqz       $v0, .L8000B008
/* BBE4 8000AFE4 00000000 */   nop
/* BBE8 8000AFE8 8C830040 */  lw         $v1, 0x40($a0)
/* BBEC 8000AFEC 8C620088 */  lw         $v0, 0x88($v1)
/* BBF0 8000AFF0 14450003 */  bne        $v0, $a1, .L8000B000
/* BBF4 8000AFF4 24840004 */   addiu     $a0, $a0, 0x4
/* BBF8 8000AFF8 03E00008 */  jr         $ra
/* BBFC 8000AFFC 00601021 */   addu      $v0, $v1, $zero
.L8000B000:
/* BC00 8000B000 08002BF7 */  j          .L8000AFDC
/* BC04 8000B004 24C60001 */   addiu     $a2, $a2, 0x1
.L8000B008:
/* BC08 8000B008 03E00008 */  jr         $ra
/* BC0C 8000B00C 00001021 */   addu      $v0, $zero, $zero

glabel func_8000B010
/* BC10 8000B010 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BC14 8000B014 00803021 */  addu       $a2, $a0, $zero
/* BC18 8000B018 AFBF0010 */  sw         $ra, 0x10($sp)
/* BC1C 8000B01C 8CC30038 */  lw         $v1, 0x38($a2)
/* BC20 8000B020 10600004 */  beqz       $v1, .L8000B034
/* BC24 8000B024 00000000 */   nop
/* BC28 8000B028 8C620088 */  lw         $v0, 0x88($v1)
/* BC2C 8000B02C 1045000C */  beq        $v0, $a1, .L8000B060
/* BC30 8000B030 00601021 */   addu      $v0, $v1, $zero
.L8000B034:
/* BC34 8000B034 8CC3003C */  lw         $v1, 0x3C($a2)
/* BC38 8000B038 10600004 */  beqz       $v1, .L8000B04C
/* BC3C 8000B03C 00000000 */   nop
/* BC40 8000B040 8C620088 */  lw         $v0, 0x88($v1)
/* BC44 8000B044 10450006 */  beq        $v0, $a1, .L8000B060
/* BC48 8000B048 00601021 */   addu      $v0, $v1, $zero
.L8000B04C:
/* BC4C 8000B04C 8CC20050 */  lw         $v0, 0x50($a2)
/* BC50 8000B050 84440018 */  lh         $a0, 0x18($v0)
/* BC54 8000B054 8C42001C */  lw         $v0, 0x1C($v0)
/* BC58 8000B058 0040F809 */  jalr       $v0
/* BC5C 8000B05C 00C42021 */   addu      $a0, $a2, $a0
.L8000B060:
/* BC60 8000B060 8FBF0010 */  lw         $ra, 0x10($sp)
/* BC64 8000B064 03E00008 */  jr         $ra
/* BC68 8000B068 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000B06C
/* BC6C 8000B06C 00052880 */  sll        $a1, $a1, 2
/* BC70 8000B070 00852021 */  addu       $a0, $a0, $a1
/* BC74 8000B074 03E00008 */  jr         $ra
/* BC78 8000B078 AC860018 */   sw        $a2, 0x18($a0)

glabel func_8000B07C
/* BC7C 8000B07C 00052880 */  sll        $a1, $a1, 2
/* BC80 8000B080 00852021 */  addu       $a0, $a0, $a1
/* BC84 8000B084 8C820040 */  lw         $v0, 0x40($a0)
/* BC88 8000B088 03E00008 */  jr         $ra
/* BC8C 8000B08C 00000000 */   nop

glabel func_8000B090
/* BC90 8000B090 8C82003C */  lw         $v0, 0x3C($a0)
/* BC94 8000B094 03E00008 */  jr         $ra
/* BC98 8000B098 00000000 */   nop

glabel func_8000B09C
/* BC9C 8000B09C 8C820038 */  lw         $v0, 0x38($a0)
/* BCA0 8000B0A0 03E00008 */  jr         $ra
/* BCA4 8000B0A4 00000000 */   nop

glabel func_8000B0A8
/* BCA8 8000B0A8 00052880 */  sll        $a1, $a1, 2
/* BCAC 8000B0AC 00852021 */  addu       $a0, $a0, $a1
/* BCB0 8000B0B0 8C820018 */  lw         $v0, 0x18($a0)
/* BCB4 8000B0B4 03E00008 */  jr         $ra
/* BCB8 8000B0B8 00000000 */   nop

glabel func_8000B0BC
/* BCBC 8000B0BC 8C820034 */  lw         $v0, 0x34($a0)
/* BCC0 8000B0C0 03E00008 */  jr         $ra
/* BCC4 8000B0C4 00000000 */   nop

glabel func_8000B0C8
/* BCC8 8000B0C8 8C820030 */  lw         $v0, 0x30($a0)
/* BCCC 8000B0CC 03E00008 */  jr         $ra
/* BCD0 8000B0D0 00000000 */   nop

glabel func_8000B0D4
/* BCD4 8000B0D4 8C82002C */  lw         $v0, 0x2C($a0)
/* BCD8 8000B0D8 03E00008 */  jr         $ra
/* BCDC 8000B0DC 00000000 */   nop

glabel func_8000B0E0
/* BCE0 8000B0E0 8C820028 */  lw         $v0, 0x28($a0)
/* BCE4 8000B0E4 03E00008 */  jr         $ra
/* BCE8 8000B0E8 00000000 */   nop
