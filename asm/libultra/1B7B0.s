.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osContInit
/* 1B7B0 8001ABB0 3C028003 */  lui        $v0, %hi(D_80030FB0)
/* 1B7B4 8001ABB4 8C420FB0 */  lw         $v0, %lo(D_80030FB0)($v0)
/* 1B7B8 8001ABB8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 1B7BC 8001ABBC AFB40070 */  sw         $s4, 0x70($sp)
/* 1B7C0 8001ABC0 0080A021 */  addu       $s4, $a0, $zero
/* 1B7C4 8001ABC4 AFB50074 */  sw         $s5, 0x74($sp)
/* 1B7C8 8001ABC8 00A0A821 */  addu       $s5, $a1, $zero
/* 1B7CC 8001ABCC AFB60078 */  sw         $s6, 0x78($sp)
/* 1B7D0 8001ABD0 00C0B021 */  addu       $s6, $a2, $zero
/* 1B7D4 8001ABD4 AFBF007C */  sw         $ra, 0x7C($sp)
/* 1B7D8 8001ABD8 AFB3006C */  sw         $s3, 0x6C($sp)
/* 1B7DC 8001ABDC AFB20068 */  sw         $s2, 0x68($sp)
/* 1B7E0 8001ABE0 AFB10064 */  sw         $s1, 0x64($sp)
/* 1B7E4 8001ABE4 10400003 */  beqz       $v0, .L8001ABF4
/* 1B7E8 8001ABE8 AFB00060 */   sw        $s0, 0x60($sp)
/* 1B7EC 8001ABEC 08006B49 */  j          .L8001AD24
/* 1B7F0 8001ABF0 00001021 */   addu      $v0, $zero, $zero
.L8001ABF4:
/* 1B7F4 8001ABF4 24020001 */  addiu      $v0, $zero, 0x1
/* 1B7F8 8001ABF8 3C018003 */  lui        $at, %hi(D_80030FB0)
/* 1B7FC 8001ABFC 0C007DF8 */  jal        osGetTime
/* 1B800 8001AC00 AC220FB0 */   sw        $v0, %lo(D_80030FB0)($at)
/* 1B804 8001AC04 00409021 */  addu       $s2, $v0, $zero
/* 1B808 8001AC08 00609821 */  addu       $s3, $v1, $zero
/* 1B80C 8001AC0C 56400022 */  bnel       $s2, $zero, .L8001AC98
/* 1B810 8001AC10 24020004 */   addiu     $v0, $zero, 0x4
/* 1B814 8001AC14 16400007 */  bnez       $s2, .L8001AC34
/* 1B818 8001AC18 27B10040 */   addiu     $s1, $sp, 0x40
/* 1B81C 8001AC1C 3C020165 */  lui        $v0, (0x165A0BB >> 16)
/* 1B820 8001AC20 3442A0BB */  ori        $v0, $v0, (0x165A0BB & 0xFFFF)
/* 1B824 8001AC24 0053102B */  sltu       $v0, $v0, $s3
/* 1B828 8001AC28 1440001B */  bnez       $v0, .L8001AC98
/* 1B82C 8001AC2C 24020004 */   addiu     $v0, $zero, 0x4
/* 1B830 8001AC30 27B10040 */  addiu      $s1, $sp, 0x40
.L8001AC34:
/* 1B834 8001AC34 02202021 */  addu       $a0, $s1, $zero
/* 1B838 8001AC38 27B00058 */  addiu      $s0, $sp, 0x58
/* 1B83C 8001AC3C 02002821 */  addu       $a1, $s0, $zero
/* 1B840 8001AC40 0C007468 */  jal        osCreateMesgQueue
/* 1B844 8001AC44 24060001 */   addiu     $a2, $zero, 0x1
/* 1B848 8001AC48 00004021 */  addu       $t0, $zero, $zero
/* 1B84C 8001AC4C 00004821 */  addu       $t1, $zero, $zero
/* 1B850 8001AC50 27A40020 */  addiu      $a0, $sp, 0x20
/* 1B854 8001AC54 24060000 */  addiu      $a2, $zero, 0x0
/* 1B858 8001AC58 3C070165 */  lui        $a3, (0x165A0BC >> 16)
/* 1B85C 8001AC5C 34E7A0BC */  ori        $a3, $a3, (0x165A0BC & 0xFFFF)
/* 1B860 8001AC60 00F3102B */  sltu       $v0, $a3, $s3
/* 1B864 8001AC64 00F33823 */  subu       $a3, $a3, $s3
/* 1B868 8001AC68 00D23023 */  subu       $a2, $a2, $s2
/* 1B86C 8001AC6C 00C23023 */  subu       $a2, $a2, $v0
/* 1B870 8001AC70 AFA80010 */  sw         $t0, 0x10($sp)
/* 1B874 8001AC74 AFA90014 */  sw         $t1, 0x14($sp)
/* 1B878 8001AC78 AFB10018 */  sw         $s1, 0x18($sp)
/* 1B87C 8001AC7C 0C007E20 */  jal        func_8001F880
/* 1B880 8001AC80 AFB0001C */   sw        $s0, 0x1C($sp)
/* 1B884 8001AC84 02202021 */  addu       $a0, $s1, $zero
/* 1B888 8001AC88 02002821 */  addu       $a1, $s0, $zero
/* 1B88C 8001AC8C 0C007720 */  jal        osRecvMesg
/* 1B890 8001AC90 24060001 */   addiu     $a2, $zero, 0x1
/* 1B894 8001AC94 24020004 */  addiu      $v0, $zero, 0x4
.L8001AC98:
/* 1B898 8001AC98 3C018004 */  lui        $at, %hi(D_8003A53C)
/* 1B89C 8001AC9C A022A53C */  sb         $v0, %lo(D_8003A53C)($at)
/* 1B8A0 8001ACA0 0C006B80 */  jal        func_8001AE00
/* 1B8A4 8001ACA4 00002021 */   addu      $a0, $zero, $zero
/* 1B8A8 8001ACA8 24040001 */  addiu      $a0, $zero, 0x1
/* 1B8AC 8001ACAC 3C118004 */  lui        $s1, %hi(D_8003A540)
/* 1B8B0 8001ACB0 2631A540 */  addiu      $s1, $s1, %lo(D_8003A540)
/* 1B8B4 8001ACB4 0C007C4C */  jal        func_8001F130
/* 1B8B8 8001ACB8 02202821 */   addu      $a1, $s1, $zero
/* 1B8BC 8001ACBC 02802021 */  addu       $a0, $s4, $zero
/* 1B8C0 8001ACC0 27B00058 */  addiu      $s0, $sp, 0x58
/* 1B8C4 8001ACC4 02002821 */  addu       $a1, $s0, $zero
/* 1B8C8 8001ACC8 0C007720 */  jal        osRecvMesg
/* 1B8CC 8001ACCC 24060001 */   addiu     $a2, $zero, 0x1
/* 1B8D0 8001ACD0 00002021 */  addu       $a0, $zero, $zero
/* 1B8D4 8001ACD4 0C007C4C */  jal        func_8001F130
/* 1B8D8 8001ACD8 02202821 */   addu      $a1, $s1, $zero
/* 1B8DC 8001ACDC 02802021 */  addu       $a0, $s4, $zero
/* 1B8E0 8001ACE0 02002821 */  addu       $a1, $s0, $zero
/* 1B8E4 8001ACE4 24060001 */  addiu      $a2, $zero, 0x1
/* 1B8E8 8001ACE8 0C007720 */  jal        osRecvMesg
/* 1B8EC 8001ACEC 00408021 */   addu      $s0, $v0, $zero
/* 1B8F0 8001ACF0 02A02021 */  addu       $a0, $s5, $zero
/* 1B8F4 8001ACF4 0C006B53 */  jal        func_8001AD4C
/* 1B8F8 8001ACF8 02C02821 */   addu      $a1, $s6, $zero
/* 1B8FC 8001ACFC 3C018004 */  lui        $at, %hi(D_8003A580)
/* 1B900 8001AD00 0C007C78 */  jal        func_8001F1E0
/* 1B904 8001AD04 A020A580 */   sb        $zero, %lo(D_8003A580)($at)
/* 1B908 8001AD08 3C048004 */  lui        $a0, %hi(D_8003A520)
/* 1B90C 8001AD0C 2484A520 */  addiu      $a0, $a0, %lo(D_8003A520)
/* 1B910 8001AD10 3C058004 */  lui        $a1, %hi(D_8003A538)
/* 1B914 8001AD14 24A5A538 */  addiu      $a1, $a1, %lo(D_8003A538)
/* 1B918 8001AD18 0C007468 */  jal        osCreateMesgQueue
/* 1B91C 8001AD1C 24060001 */   addiu     $a2, $zero, 0x1
/* 1B920 8001AD20 02001021 */  addu       $v0, $s0, $zero
.L8001AD24:
/* 1B924 8001AD24 8FBF007C */  lw         $ra, 0x7C($sp)
/* 1B928 8001AD28 8FB60078 */  lw         $s6, 0x78($sp)
/* 1B92C 8001AD2C 8FB50074 */  lw         $s5, 0x74($sp)
/* 1B930 8001AD30 8FB40070 */  lw         $s4, 0x70($sp)
/* 1B934 8001AD34 8FB3006C */  lw         $s3, 0x6C($sp)
/* 1B938 8001AD38 8FB20068 */  lw         $s2, 0x68($sp)
/* 1B93C 8001AD3C 8FB10064 */  lw         $s1, 0x64($sp)
/* 1B940 8001AD40 8FB00060 */  lw         $s0, 0x60($sp)
/* 1B944 8001AD44 03E00008 */  jr         $ra
/* 1B948 8001AD48 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_8001AD4C
/* 1B94C 8001AD4C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 1B950 8001AD50 00805821 */  addu       $t3, $a0, $zero
/* 1B954 8001AD54 00A04821 */  addu       $t1, $a1, $zero
/* 1B958 8001AD58 00005021 */  addu       $t2, $zero, $zero
/* 1B95C 8001AD5C 3C028004 */  lui        $v0, %hi(D_8003A53C)
/* 1B960 8001AD60 9042A53C */  lbu        $v0, %lo(D_8003A53C)($v0)
/* 1B964 8001AD64 3C088004 */  lui        $t0, %hi(D_8003A540)
/* 1B968 8001AD68 2508A540 */  addiu      $t0, $t0, %lo(D_8003A540)
/* 1B96C 8001AD6C 18400021 */  blez       $v0, .L8001ADF4
/* 1B970 8001AD70 00003821 */   addu      $a3, $zero, $zero
/* 1B974 8001AD74 240C0001 */  addiu      $t4, $zero, 0x1
/* 1B978 8001AD78 24A60002 */  addiu      $a2, $a1, 0x2
.L8001AD7C:
/* 1B97C 8001AD7C 89020000 */  lwl        $v0, 0x0($t0)
/* 1B980 8001AD80 99020003 */  lwr        $v0, 0x3($t0)
/* 1B984 8001AD84 89030004 */  lwl        $v1, 0x4($t0)
/* 1B988 8001AD88 99030007 */  lwr        $v1, 0x7($t0)
/* 1B98C 8001AD8C ABA20000 */  swl        $v0, 0x0($sp)
/* 1B990 8001AD90 BBA20003 */  swr        $v0, 0x3($sp)
/* 1B994 8001AD94 ABA30004 */  swl        $v1, 0x4($sp)
/* 1B998 8001AD98 BBA30007 */  swr        $v1, 0x7($sp)
/* 1B99C 8001AD9C 93A20002 */  lbu        $v0, 0x2($sp)
/* 1B9A0 8001ADA0 304200C0 */  andi       $v0, $v0, 0xC0
/* 1B9A4 8001ADA4 00021102 */  srl        $v0, $v0, 4
/* 1B9A8 8001ADA8 1440000A */  bnez       $v0, .L8001ADD4
/* 1B9AC 8001ADAC A0C20001 */   sb        $v0, 0x1($a2)
/* 1B9B0 8001ADB0 93A20005 */  lbu        $v0, 0x5($sp)
/* 1B9B4 8001ADB4 93A30004 */  lbu        $v1, 0x4($sp)
/* 1B9B8 8001ADB8 00021200 */  sll        $v0, $v0, 8
/* 1B9BC 8001ADBC 00621825 */  or         $v1, $v1, $v0
/* 1B9C0 8001ADC0 A5230000 */  sh         $v1, 0x0($t1)
/* 1B9C4 8001ADC4 93A30006 */  lbu        $v1, 0x6($sp)
/* 1B9C8 8001ADC8 00EC1004 */  sllv       $v0, $t4, $a3
/* 1B9CC 8001ADCC 01425025 */  or         $t2, $t2, $v0
/* 1B9D0 8001ADD0 A0C30000 */  sb         $v1, 0x0($a2)
.L8001ADD4:
/* 1B9D4 8001ADD4 24E70001 */  addiu      $a3, $a3, 0x1
/* 1B9D8 8001ADD8 25080008 */  addiu      $t0, $t0, 0x8
/* 1B9DC 8001ADDC 3C028004 */  lui        $v0, %hi(D_8003A53C)
/* 1B9E0 8001ADE0 9042A53C */  lbu        $v0, %lo(D_8003A53C)($v0)
/* 1B9E4 8001ADE4 24C60004 */  addiu      $a2, $a2, 0x4
/* 1B9E8 8001ADE8 00E2102A */  slt        $v0, $a3, $v0
/* 1B9EC 8001ADEC 1440FFE3 */  bnez       $v0, .L8001AD7C
/* 1B9F0 8001ADF0 25290004 */   addiu     $t1, $t1, 0x4
.L8001ADF4:
/* 1B9F4 8001ADF4 A16A0000 */  sb         $t2, 0x0($t3)
/* 1B9F8 8001ADF8 03E00008 */  jr         $ra
/* 1B9FC 8001ADFC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8001AE00
/* 1BA00 8001AE00 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 1BA04 8001AE04 00802821 */  addu       $a1, $a0, $zero
/* 1BA08 8001AE08 2406000E */  addiu      $a2, $zero, 0xE
/* 1BA0C 8001AE0C 3C028004 */  lui        $v0, %hi(D_8003A578)
/* 1BA10 8001AE10 2442A578 */  addiu      $v0, $v0, %lo(D_8003A578)
.L8001AE14:
/* 1BA14 8001AE14 AC400000 */  sw         $zero, 0x0($v0)
/* 1BA18 8001AE18 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1BA1C 8001AE1C 04C1FFFD */  bgez       $a2, .L8001AE14
/* 1BA20 8001AE20 2442FFFC */   addiu     $v0, $v0, -0x4
/* 1BA24 8001AE24 3C038004 */  lui        $v1, %hi(D_8003A57C)
/* 1BA28 8001AE28 2463A57C */  addiu      $v1, $v1, %lo(D_8003A57C)
/* 1BA2C 8001AE2C 2467FFC4 */  addiu      $a3, $v1, -0x3C
/* 1BA30 8001AE30 3C048004 */  lui        $a0, %hi(D_8003A53C)
/* 1BA34 8001AE34 9084A53C */  lbu        $a0, %lo(D_8003A53C)($a0)
/* 1BA38 8001AE38 00003021 */  addu       $a2, $zero, $zero
/* 1BA3C 8001AE3C 24020001 */  addiu      $v0, $zero, 0x1
/* 1BA40 8001AE40 AC620000 */  sw         $v0, 0x0($v1)
/* 1BA44 8001AE44 240300FF */  addiu      $v1, $zero, 0xFF
/* 1BA48 8001AE48 24020001 */  addiu      $v0, $zero, 0x1
/* 1BA4C 8001AE4C A3A20001 */  sb         $v0, 0x1($sp)
/* 1BA50 8001AE50 24020003 */  addiu      $v0, $zero, 0x3
/* 1BA54 8001AE54 A3A30000 */  sb         $v1, 0x0($sp)
/* 1BA58 8001AE58 A3A20002 */  sb         $v0, 0x2($sp)
/* 1BA5C 8001AE5C A3A50003 */  sb         $a1, 0x3($sp)
/* 1BA60 8001AE60 A3A30004 */  sb         $v1, 0x4($sp)
/* 1BA64 8001AE64 A3A30005 */  sb         $v1, 0x5($sp)
/* 1BA68 8001AE68 A3A30006 */  sb         $v1, 0x6($sp)
/* 1BA6C 8001AE6C 1880000F */  blez       $a0, .L8001AEAC
/* 1BA70 8001AE70 A3A30007 */   sb        $v1, 0x7($sp)
.L8001AE74:
/* 1BA74 8001AE74 8BA20000 */  lwl        $v0, 0x0($sp)
/* 1BA78 8001AE78 9BA20003 */  lwr        $v0, 0x3($sp)
/* 1BA7C 8001AE7C 8BA30004 */  lwl        $v1, 0x4($sp)
/* 1BA80 8001AE80 9BA30007 */  lwr        $v1, 0x7($sp)
/* 1BA84 8001AE84 A8E20000 */  swl        $v0, 0x0($a3)
/* 1BA88 8001AE88 B8E20003 */  swr        $v0, 0x3($a3)
/* 1BA8C 8001AE8C A8E30004 */  swl        $v1, 0x4($a3)
/* 1BA90 8001AE90 B8E30007 */  swr        $v1, 0x7($a3)
/* 1BA94 8001AE94 3C028004 */  lui        $v0, %hi(D_8003A53C)
/* 1BA98 8001AE98 9042A53C */  lbu        $v0, %lo(D_8003A53C)($v0)
/* 1BA9C 8001AE9C 24C60001 */  addiu      $a2, $a2, 0x1
/* 1BAA0 8001AEA0 00C2102A */  slt        $v0, $a2, $v0
/* 1BAA4 8001AEA4 1440FFF3 */  bnez       $v0, .L8001AE74
/* 1BAA8 8001AEA8 24E70008 */   addiu     $a3, $a3, 0x8
.L8001AEAC:
/* 1BAAC 8001AEAC 240200FE */  addiu      $v0, $zero, 0xFE
/* 1BAB0 8001AEB0 A0E20000 */  sb         $v0, 0x0($a3)
/* 1BAB4 8001AEB4 03E00008 */  jr         $ra
/* 1BAB8 8001AEB8 27BD0010 */   addiu     $sp, $sp, 0x10
/* 1BABC 8001AEBC 00000000 */  nop
