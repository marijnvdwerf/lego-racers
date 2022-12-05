.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005D5C0
/* 548F0 8005D5C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 548F4 8005D5C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 548F8 8005D5C8 00808021 */  addu       $s0, $a0, $zero
/* 548FC 8005D5CC AFB10014 */  sw         $s1, 0x14($sp)
/* 54900 8005D5D0 00A08821 */  addu       $s1, $a1, $zero
/* 54904 8005D5D4 3C028004 */  lui        $v0, %hi(D_8003D9A8)
/* 54908 8005D5D8 2442D9A8 */  addiu      $v0, $v0, %lo(D_8003D9A8)
/* 5490C 8005D5DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 54910 8005D5E0 0C0175CC */  jal        func_8005D730
/* 54914 8005D5E4 AE02002C */   sw        $v0, 0x2C($s0)
/* 54918 8005D5E8 26040040 */  addiu      $a0, $s0, 0x40
/* 5491C 8005D5EC 0C017487 */  jal        func_8005D21C
/* 54920 8005D5F0 24050002 */   addiu     $a1, $zero, 0x2
/* 54924 8005D5F4 02002021 */  addu       $a0, $s0, $zero
/* 54928 8005D5F8 0C012D2F */  jal        func_8004B4BC
/* 5492C 8005D5FC 02202821 */   addu      $a1, $s1, $zero
/* 54930 8005D600 8FBF0018 */  lw         $ra, 0x18($sp)
/* 54934 8005D604 8FB10014 */  lw         $s1, 0x14($sp)
/* 54938 8005D608 8FB00010 */  lw         $s0, 0x10($sp)
/* 5493C 8005D60C 03E00008 */  jr         $ra
/* 54940 8005D610 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8005D614
/* 54944 8005D614 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 54948 8005D618 AFB00010 */  sw         $s0, 0x10($sp)
/* 5494C 8005D61C 00808021 */  addu       $s0, $a0, $zero
/* 54950 8005D620 AFB10014 */  sw         $s1, 0x14($sp)
/* 54954 8005D624 00C08821 */  addu       $s1, $a2, $zero
/* 54958 8005D628 AFB20018 */  sw         $s2, 0x18($sp)
/* 5495C 8005D62C AFBF0020 */  sw         $ra, 0x20($sp)
/* 54960 8005D630 AFB3001C */  sw         $s3, 0x1C($sp)
/* 54964 8005D634 96020022 */  lhu        $v0, 0x22($s0)
/* 54968 8005D638 8FB30038 */  lw         $s3, 0x38($sp)
/* 5496C 8005D63C 30420001 */  andi       $v0, $v0, 0x1
/* 54970 8005D640 10400006 */  beqz       $v0, .L8005D65C
/* 54974 8005D644 00E09021 */   addu      $s2, $a3, $zero
/* 54978 8005D648 8E02002C */  lw         $v0, 0x2C($s0)
/* 5497C 8005D64C 84440078 */  lh         $a0, 0x78($v0)
/* 54980 8005D650 8C42007C */  lw         $v0, 0x7C($v0)
/* 54984 8005D654 0040F809 */  jalr       $v0
/* 54988 8005D658 02042021 */   addu      $a0, $s0, $a0
.L8005D65C:
/* 5498C 8005D65C 96020022 */  lhu        $v0, 0x22($s0)
/* 54990 8005D660 A6120026 */  sh         $s2, 0x26($s0)
/* 54994 8005D664 A6130028 */  sh         $s3, 0x28($s0)
/* 54998 8005D668 34420001 */  ori        $v0, $v0, 0x1
/* 5499C 8005D66C A6020022 */  sh         $v0, 0x22($s0)
/* 549A0 8005D670 8E230000 */  lw         $v1, 0x0($s1)
/* 549A4 8005D674 8E280004 */  lw         $t0, 0x4($s1)
/* 549A8 8005D678 8E290008 */  lw         $t1, 0x8($s1)
/* 549AC 8005D67C 8E2A000C */  lw         $t2, 0xC($s1)
/* 549B0 8005D680 AE030000 */  sw         $v1, 0x0($s0)
/* 549B4 8005D684 AE080004 */  sw         $t0, 0x4($s0)
/* 549B8 8005D688 AE090008 */  sw         $t1, 0x8($s0)
/* 549BC 8005D68C AE0A000C */  sw         $t2, 0xC($s0)
/* 549C0 8005D690 8E230010 */  lw         $v1, 0x10($s1)
/* 549C4 8005D694 8E280014 */  lw         $t0, 0x14($s1)
/* 549C8 8005D698 AE030010 */  sw         $v1, 0x10($s0)
/* 549CC 8005D69C AE080014 */  sw         $t0, 0x14($s0)
/* 549D0 8005D6A0 96220014 */  lhu        $v0, 0x14($s1)
/* 549D4 8005D6A4 10400003 */  beqz       $v0, .L8005D6B4
/* 549D8 8005D6A8 26040040 */   addiu     $a0, $s0, 0x40
/* 549DC 8005D6AC 0C01749B */  jal        func_8005D26C
/* 549E0 8005D6B0 02202821 */   addu      $a1, $s1, $zero
.L8005D6B4:
/* 549E4 8005D6B4 96220016 */  lhu        $v0, 0x16($s1)
/* 549E8 8005D6B8 02420018 */  mult       $s2, $v0
/* 549EC 8005D6BC 3C028008 */  lui        $v0, %hi(D_80083D90)
/* 549F0 8005D6C0 8C443D90 */  lw         $a0, %lo(D_80083D90)($v0)
/* 549F4 8005D6C4 00005812 */  mflo       $t3
/* 549F8 8005D6C8 25620007 */  addiu      $v0, $t3, 0x7
/* 549FC 8005D6CC 000210C2 */  srl        $v0, $v0, 3
/* 54A00 8005D6D0 0C01FB65 */  jal        func_8007ED94
/* 54A04 8005D6D4 A6020020 */   sh        $v0, 0x20($s0)
/* 54A08 8005D6D8 96040020 */  lhu        $a0, 0x20($s0)
/* 54A0C 8005D6DC 00930018 */  mult       $a0, $s3
/* 54A10 8005D6E0 00002012 */  mflo       $a0
/* 54A14 8005D6E4 0C00943C */  jal        func_800250F0
/* 54A18 8005D6E8 00000000 */   nop
/* 54A1C 8005D6EC 0C01FB72 */  jal        func_8007EDC8
/* 54A20 8005D6F0 AE020018 */   sw        $v0, 0x18($s0)
/* 54A24 8005D6F4 8E020018 */  lw         $v0, 0x18($s0)
/* 54A28 8005D6F8 14400006 */  bnez       $v0, .L8005D714
/* 54A2C 8005D6FC 3C048004 */   lui       $a0, %hi(D_8003D9A0)
/* 54A30 8005D700 2484D9A0 */  addiu      $a0, $a0, %lo(D_8003D9A0)
/* 54A34 8005D704 00002821 */  addu       $a1, $zero, $zero
/* 54A38 8005D708 00A03021 */  addu       $a2, $a1, $zero
/* 54A3C 8005D70C 0C011ACF */  jal        func_80046B3C
/* 54A40 8005D710 00A03821 */   addu      $a3, $a1, $zero
.L8005D714:
/* 54A44 8005D714 8FBF0020 */  lw         $ra, 0x20($sp)
/* 54A48 8005D718 8FB3001C */  lw         $s3, 0x1C($sp)
/* 54A4C 8005D71C 8FB20018 */  lw         $s2, 0x18($sp)
/* 54A50 8005D720 8FB10014 */  lw         $s1, 0x14($sp)
/* 54A54 8005D724 8FB00010 */  lw         $s0, 0x10($sp)
/* 54A58 8005D728 03E00008 */  jr         $ra
/* 54A5C 8005D72C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8005D730
/* 54A60 8005D730 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 54A64 8005D734 AFB00010 */  sw         $s0, 0x10($sp)
/* 54A68 8005D738 00808021 */  addu       $s0, $a0, $zero
/* 54A6C 8005D73C AFBF0014 */  sw         $ra, 0x14($sp)
/* 54A70 8005D740 0C0174D3 */  jal        func_8005D34C
/* 54A74 8005D744 26040040 */   addiu     $a0, $s0, 0x40
/* 54A78 8005D748 8E040018 */  lw         $a0, 0x18($s0)
/* 54A7C 8005D74C 50800005 */  beql       $a0, $zero, .L8005D764
/* 54A80 8005D750 A6000022 */   sh        $zero, 0x22($s0)
/* 54A84 8005D754 0C009444 */  jal        func_80025110
/* 54A88 8005D758 00000000 */   nop
/* 54A8C 8005D75C AE000018 */  sw         $zero, 0x18($s0)
/* 54A90 8005D760 A6000022 */  sh         $zero, 0x22($s0)
.L8005D764:
/* 54A94 8005D764 8FBF0014 */  lw         $ra, 0x14($sp)
/* 54A98 8005D768 8FB00010 */  lw         $s0, 0x10($sp)
/* 54A9C 8005D76C 03E00008 */  jr         $ra
/* 54AA0 8005D770 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005D774
/* 54AA4 8005D774 03E00008 */  jr         $ra
/* 54AA8 8005D778 24820040 */   addiu     $v0, $a0, 0x40

glabel func_8005D77C
/* 54AAC 8005D77C 3C028008 */  lui        $v0, %hi(D_80083D90)
/* 54AB0 8005D780 03E00008 */  jr         $ra
/* 54AB4 8005D784 AC443D90 */   sw        $a0, %lo(D_80083D90)($v0)

glabel func_8005D788
/* 54AB8 8005D788 3C028008 */  lui        $v0, %hi(D_80083D90)
/* 54ABC 8005D78C 8C423D90 */  lw         $v0, %lo(D_80083D90)($v0)
/* 54AC0 8005D790 03E00008 */  jr         $ra
/* 54AC4 8005D794 00000000 */   nop

glabel func_8005D798
/* 54AC8 8005D798 03E00008 */  jr         $ra
/* 54ACC 8005D79C 24820040 */   addiu     $v0, $a0, 0x40

glabel func_8005D7A0
/* 54AD0 8005D7A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 54AD4 8005D7A4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 54AD8 8005D7A8 0C017D9B */  jal        func_8005F66C
/* 54ADC 8005D7AC 00000000 */   nop
/* 54AE0 8005D7B0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 54AE4 8005D7B4 03E00008 */  jr         $ra
/* 54AE8 8005D7B8 27BD0018 */   addiu     $sp, $sp, 0x18
