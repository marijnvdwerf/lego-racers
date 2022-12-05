.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800EC610
/* A29D0 800EC610 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A29D4 800EC614 AFB00010 */  sw         $s0, 0x10($sp)
/* A29D8 800EC618 AFBF0014 */  sw         $ra, 0x14($sp)
/* A29DC 800EC61C 0C03A1A4 */  jal        func_race_800E8690
/* A29E0 800EC620 00808021 */   addu      $s0, $a0, $zero
/* A29E4 800EC624 3C02800D */  lui        $v0, %hi(D_race_800CC378)
/* A29E8 800EC628 2442C378 */  addiu      $v0, $v0, %lo(D_race_800CC378)
/* A29EC 800EC62C 02002021 */  addu       $a0, $s0, $zero
/* A29F0 800EC630 0C03B1A5 */  jal        func_race_800EC694
/* A29F4 800EC634 AE020000 */   sw        $v0, 0x0($s0)
/* A29F8 800EC638 02001021 */  addu       $v0, $s0, $zero
/* A29FC 800EC63C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A2A00 800EC640 8FB00010 */  lw         $s0, 0x10($sp)
/* A2A04 800EC644 03E00008 */  jr         $ra
/* A2A08 800EC648 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EC64C
/* A2A0C 800EC64C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A2A10 800EC650 AFB00010 */  sw         $s0, 0x10($sp)
/* A2A14 800EC654 00808021 */  addu       $s0, $a0, $zero
/* A2A18 800EC658 AFB10014 */  sw         $s1, 0x14($sp)
/* A2A1C 800EC65C 00A08821 */  addu       $s1, $a1, $zero
/* A2A20 800EC660 3C02800D */  lui        $v0, %hi(D_race_800CC378)
/* A2A24 800EC664 2442C378 */  addiu      $v0, $v0, %lo(D_race_800CC378)
/* A2A28 800EC668 AFBF0018 */  sw         $ra, 0x18($sp)
/* A2A2C 800EC66C 0C03B24C */  jal        func_race_800EC930
/* A2A30 800EC670 AE020000 */   sw        $v0, 0x0($s0)
/* A2A34 800EC674 02002021 */  addu       $a0, $s0, $zero
/* A2A38 800EC678 0C03A1AC */  jal        func_race_800E86B0
/* A2A3C 800EC67C 02202821 */   addu      $a1, $s1, $zero
/* A2A40 800EC680 8FBF0018 */  lw         $ra, 0x18($sp)
/* A2A44 800EC684 8FB10014 */  lw         $s1, 0x14($sp)
/* A2A48 800EC688 8FB00010 */  lw         $s0, 0x10($sp)
/* A2A4C 800EC68C 03E00008 */  jr         $ra
/* A2A50 800EC690 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EC694
/* A2A54 800EC694 2402FFFF */  addiu      $v0, $zero, -0x1
/* A2A58 800EC698 AC820008 */  sw         $v0, 0x8($a0)
/* A2A5C 800EC69C 00001821 */  addu       $v1, $zero, $zero
/* A2A60 800EC6A0 00802821 */  addu       $a1, $a0, $zero
.Lrace_800EC6A4:
/* A2A64 800EC6A4 ACA00010 */  sw         $zero, 0x10($a1)
/* A2A68 800EC6A8 24630001 */  addiu      $v1, $v1, 0x1
/* A2A6C 800EC6AC 2C620004 */  sltiu      $v0, $v1, 0x4
/* A2A70 800EC6B0 1440FFFC */  bnez       $v0, .Lrace_800EC6A4
/* A2A74 800EC6B4 24A50004 */   addiu     $a1, $a1, 0x4
/* A2A78 800EC6B8 AC800020 */  sw         $zero, 0x20($a0)
/* A2A7C 800EC6BC 00001821 */  addu       $v1, $zero, $zero
.Lrace_800EC6C0:
/* A2A80 800EC6C0 AC800024 */  sw         $zero, 0x24($a0)
/* A2A84 800EC6C4 24630001 */  addiu      $v1, $v1, 0x1
/* A2A88 800EC6C8 2C620003 */  sltiu      $v0, $v1, 0x3
/* A2A8C 800EC6CC 1440FFFC */  bnez       $v0, .Lrace_800EC6C0
/* A2A90 800EC6D0 24840004 */   addiu     $a0, $a0, 0x4
/* A2A94 800EC6D4 03E00008 */  jr         $ra
/* A2A98 800EC6D8 00000000 */   nop

glabel func_race_800EC6DC
/* A2A9C 800EC6DC 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* A2AA0 800EC6E0 AFB30044 */  sw         $s3, 0x44($sp)
/* A2AA4 800EC6E4 00809821 */  addu       $s3, $a0, $zero
/* A2AA8 800EC6E8 AFB60050 */  sw         $s6, 0x50($sp)
/* A2AAC 800EC6EC 00A0B021 */  addu       $s6, $a1, $zero
/* A2AB0 800EC6F0 AFBF0054 */  sw         $ra, 0x54($sp)
/* A2AB4 800EC6F4 AFB5004C */  sw         $s5, 0x4C($sp)
/* A2AB8 800EC6F8 AFB40048 */  sw         $s4, 0x48($sp)
/* A2ABC 800EC6FC AFB20040 */  sw         $s2, 0x40($sp)
/* A2AC0 800EC700 AFB1003C */  sw         $s1, 0x3C($sp)
/* A2AC4 800EC704 AFB00038 */  sw         $s0, 0x38($sp)
/* A2AC8 800EC708 8E62000C */  lw         $v0, 0xC($s3)
/* A2ACC 800EC70C 10400003 */  beqz       $v0, .Lrace_800EC71C
/* A2AD0 800EC710 00C08821 */   addu      $s1, $a2, $zero
/* A2AD4 800EC714 0C03B24C */  jal        func_race_800EC930
/* A2AD8 800EC718 00000000 */   nop
.Lrace_800EC71C:
/* A2ADC 800EC71C A3A00010 */  sb         $zero, 0x10($sp)
/* A2AE0 800EC720 00008021 */  addu       $s0, $zero, $zero
/* A2AE4 800EC724 27A30018 */  addiu      $v1, $sp, 0x18
.Lrace_800EC728:
/* A2AE8 800EC728 A0600000 */  sb         $zero, 0x0($v1)
/* A2AEC 800EC72C 26100001 */  addiu      $s0, $s0, 0x1
/* A2AF0 800EC730 2E020004 */  sltiu      $v0, $s0, 0x4
/* A2AF4 800EC734 1440FFFC */  bnez       $v0, .Lrace_800EC728
/* A2AF8 800EC738 24630008 */   addiu     $v1, $v1, 0x8
/* A2AFC 800EC73C 02202021 */  addu       $a0, $s1, $zero
/* A2B00 800EC740 0C0026F4 */  jal        func_80009BD0
/* A2B04 800EC744 24050005 */   addiu     $a1, $zero, 0x5
/* A2B08 800EC748 27B00018 */  addiu      $s0, $sp, 0x18
.Lrace_800EC74C:
/* A2B0C 800EC74C 8E220028 */  lw         $v0, 0x28($s1)
/* A2B10 800EC750 844400A0 */  lh         $a0, 0xA0($v0)
/* A2B14 800EC754 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A2B18 800EC758 0040F809 */  jalr       $v0
/* A2B1C 800EC75C 02242021 */   addu      $a0, $s1, $a0
/* A2B20 800EC760 00401821 */  addu       $v1, $v0, $zero
/* A2B24 800EC764 24020006 */  addiu      $v0, $zero, 0x6
/* A2B28 800EC768 10620030 */  beq        $v1, $v0, .Lrace_800EC82C
/* A2B2C 800EC76C 24020041 */   addiu     $v0, $zero, 0x41
/* A2B30 800EC770 1062000C */  beq        $v1, $v0, .Lrace_800EC7A4
/* A2B34 800EC774 2C620042 */   sltiu     $v0, $v1, 0x42
/* A2B38 800EC778 10400005 */  beqz       $v0, .Lrace_800EC790
/* A2B3C 800EC77C 2402003B */   addiu     $v0, $zero, 0x3B
/* A2B40 800EC780 1062001E */  beq        $v1, $v0, .Lrace_800EC7FC
/* A2B44 800EC784 00000000 */   nop
/* A2B48 800EC788 0803B203 */  j          .Lrace_800EC80C
/* A2B4C 800EC78C 00000000 */   nop
.Lrace_800EC790:
/* A2B50 800EC790 24020042 */  addiu      $v0, $zero, 0x42
/* A2B54 800EC794 1062000E */  beq        $v1, $v0, .Lrace_800EC7D0
/* A2B58 800EC798 00000000 */   nop
/* A2B5C 800EC79C 0803B203 */  j          .Lrace_800EC80C
/* A2B60 800EC7A0 00000000 */   nop
.Lrace_800EC7A4:
/* A2B64 800EC7A4 8E220028 */  lw         $v0, 0x28($s1)
/* A2B68 800EC7A8 844400A0 */  lh         $a0, 0xA0($v0)
/* A2B6C 800EC7AC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A2B70 800EC7B0 0040F809 */  jalr       $v0
/* A2B74 800EC7B4 02242021 */   addu      $a0, $s1, $a0
/* A2B78 800EC7B8 27A40010 */  addiu      $a0, $sp, 0x10
/* A2B7C 800EC7BC 26250044 */  addiu      $a1, $s1, 0x44
/* A2B80 800EC7C0 0C000708 */  jal        func_80001C20
/* A2B84 800EC7C4 24060008 */   addiu     $a2, $zero, 0x8
/* A2B88 800EC7C8 0803B1D3 */  j          .Lrace_800EC74C
/* A2B8C 800EC7CC 00000000 */   nop
.Lrace_800EC7D0:
/* A2B90 800EC7D0 8E220028 */  lw         $v0, 0x28($s1)
/* A2B94 800EC7D4 844400A0 */  lh         $a0, 0xA0($v0)
/* A2B98 800EC7D8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A2B9C 800EC7DC 0040F809 */  jalr       $v0
/* A2BA0 800EC7E0 02242021 */   addu      $a0, $s1, $a0
/* A2BA4 800EC7E4 02002021 */  addu       $a0, $s0, $zero
/* A2BA8 800EC7E8 26250044 */  addiu      $a1, $s1, 0x44
/* A2BAC 800EC7EC 0C000708 */  jal        func_80001C20
/* A2BB0 800EC7F0 24060008 */   addiu     $a2, $zero, 0x8
/* A2BB4 800EC7F4 0803B1D3 */  j          .Lrace_800EC74C
/* A2BB8 800EC7F8 26100008 */   addiu     $s0, $s0, 0x8
.Lrace_800EC7FC:
/* A2BBC 800EC7FC 0C002680 */  jal        func_80009A00
/* A2BC0 800EC800 02202021 */   addu      $a0, $s1, $zero
/* A2BC4 800EC804 0803B1D3 */  j          .Lrace_800EC74C
/* A2BC8 800EC808 AE620008 */   sw        $v0, 0x8($s3)
.Lrace_800EC80C:
/* A2BCC 800EC80C 8E220028 */  lw         $v0, 0x28($s1)
/* A2BD0 800EC810 00002821 */  addu       $a1, $zero, $zero
/* A2BD4 800EC814 84440098 */  lh         $a0, 0x98($v0)
/* A2BD8 800EC818 8C42009C */  lw         $v0, 0x9C($v0)
/* A2BDC 800EC81C 0040F809 */  jalr       $v0
/* A2BE0 800EC820 02242021 */   addu      $a0, $s1, $a0
/* A2BE4 800EC824 0803B1D3 */  j          .Lrace_800EC74C
/* A2BE8 800EC828 00000000 */   nop
.Lrace_800EC82C:
/* A2BEC 800EC82C 8EC2000C */  lw         $v0, 0xC($s6)
/* A2BF0 800EC830 AE620004 */  sw         $v0, 0x4($s3)
/* A2BF4 800EC834 8EC4002C */  lw         $a0, 0x2C($s6)
/* A2BF8 800EC838 8C820000 */  lw         $v0, 0x0($a0)
/* A2BFC 800EC83C 14400003 */  bnez       $v0, .Lrace_800EC84C
/* A2C00 800EC840 27A50010 */   addiu     $a1, $sp, 0x10
/* A2C04 800EC844 0803B215 */  j          .Lrace_800EC854
/* A2C08 800EC848 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EC84C:
/* A2C0C 800EC84C 0C016427 */  jal        func_8005909C
/* A2C10 800EC850 00000000 */   nop
.Lrace_800EC854:
/* A2C14 800EC854 AE620020 */  sw         $v0, 0x20($s3)
/* A2C18 800EC858 00008021 */  addu       $s0, $zero, $zero
/* A2C1C 800EC85C 27B50010 */  addiu      $s5, $sp, 0x10
/* A2C20 800EC860 3C14FFFE */  lui        $s4, (0xFFFEFFFF >> 16)
/* A2C24 800EC864 3694FFFF */  ori        $s4, $s4, (0xFFFEFFFF & 0xFFFF)
/* A2C28 800EC868 02609021 */  addu       $s2, $s3, $zero
/* A2C2C 800EC86C 27B10018 */  addiu      $s1, $sp, 0x18
.Lrace_800EC870:
/* A2C30 800EC870 2E020004 */  sltiu      $v0, $s0, 0x4
/* A2C34 800EC874 10400017 */  beqz       $v0, .Lrace_800EC8D4
/* A2C38 800EC878 00002021 */   addu      $a0, $zero, $zero
/* A2C3C 800EC87C 92220000 */  lbu        $v0, 0x0($s1)
/* A2C40 800EC880 10400010 */  beqz       $v0, .Lrace_800EC8C4
/* A2C44 800EC884 001028C0 */   sll       $a1, $s0, 3
/* A2C48 800EC888 00B52821 */  addu       $a1, $a1, $s5
/* A2C4C 800EC88C 8EC20010 */  lw         $v0, 0x10($s6)
/* A2C50 800EC890 24A50008 */  addiu      $a1, $a1, 0x8
/* A2C54 800EC894 8C4300BC */  lw         $v1, 0xBC($v0)
/* A2C58 800EC898 14600003 */  bnez       $v1, .Lrace_800EC8A8
/* A2C5C 800EC89C 244400BC */   addiu     $a0, $v0, 0xBC
/* A2C60 800EC8A0 0803B22D */  j          .Lrace_800EC8B4
/* A2C64 800EC8A4 00001821 */   addu      $v1, $zero, $zero
.Lrace_800EC8A8:
/* A2C68 800EC8A8 0C016427 */  jal        func_8005909C
/* A2C6C 800EC8AC 00000000 */   nop
/* A2C70 800EC8B0 00401821 */  addu       $v1, $v0, $zero
.Lrace_800EC8B4:
/* A2C74 800EC8B4 AE430010 */  sw         $v1, 0x10($s2)
/* A2C78 800EC8B8 8C62005C */  lw         $v0, 0x5C($v1)
/* A2C7C 800EC8BC 00541024 */  and        $v0, $v0, $s4
/* A2C80 800EC8C0 AC62005C */  sw         $v0, 0x5C($v1)
.Lrace_800EC8C4:
/* A2C84 800EC8C4 26520004 */  addiu      $s2, $s2, 0x4
/* A2C88 800EC8C8 26310008 */  addiu      $s1, $s1, 0x8
/* A2C8C 800EC8CC 0803B21C */  j          .Lrace_800EC870
/* A2C90 800EC8D0 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800EC8D4:
/* A2C94 800EC8D4 02602821 */  addu       $a1, $s3, $zero
.Lrace_800EC8D8:
/* A2C98 800EC8D8 2C820003 */  sltiu      $v0, $a0, 0x3
/* A2C9C 800EC8DC 10400008 */  beqz       $v0, .Lrace_800EC900
/* A2CA0 800EC8E0 00041880 */   sll       $v1, $a0, 2
/* A2CA4 800EC8E4 8E620010 */  lw         $v0, 0x10($s3)
/* A2CA8 800EC8E8 00431021 */  addu       $v0, $v0, $v1
/* A2CAC 800EC8EC C4400084 */  lwc1       $f0, 0x84($v0)
/* A2CB0 800EC8F0 24840001 */  addiu      $a0, $a0, 0x1
/* A2CB4 800EC8F4 E4A00024 */  swc1       $f0, 0x24($a1)
/* A2CB8 800EC8F8 0803B236 */  j          .Lrace_800EC8D8
/* A2CBC 800EC8FC 24A50004 */   addiu     $a1, $a1, 0x4
.Lrace_800EC900:
/* A2CC0 800EC900 24020001 */  addiu      $v0, $zero, 0x1
/* A2CC4 800EC904 AE62000C */  sw         $v0, 0xC($s3)
/* A2CC8 800EC908 8FBF0054 */  lw         $ra, 0x54($sp)
/* A2CCC 800EC90C 8FB60050 */  lw         $s6, 0x50($sp)
/* A2CD0 800EC910 8FB5004C */  lw         $s5, 0x4C($sp)
/* A2CD4 800EC914 8FB40048 */  lw         $s4, 0x48($sp)
/* A2CD8 800EC918 8FB30044 */  lw         $s3, 0x44($sp)
/* A2CDC 800EC91C 8FB20040 */  lw         $s2, 0x40($sp)
/* A2CE0 800EC920 8FB1003C */  lw         $s1, 0x3C($sp)
/* A2CE4 800EC924 8FB00038 */  lw         $s0, 0x38($sp)
/* A2CE8 800EC928 03E00008 */  jr         $ra
/* A2CEC 800EC92C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_800EC930
/* A2CF0 800EC930 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A2CF4 800EC934 AFB00010 */  sw         $s0, 0x10($sp)
/* A2CF8 800EC938 00808021 */  addu       $s0, $a0, $zero
/* A2CFC 800EC93C AFBF0014 */  sw         $ra, 0x14($sp)
/* A2D00 800EC940 8E020000 */  lw         $v0, 0x0($s0)
/* A2D04 800EC944 00002821 */  addu       $a1, $zero, $zero
/* A2D08 800EC948 84440018 */  lh         $a0, 0x18($v0)
/* A2D0C 800EC94C 8C42001C */  lw         $v0, 0x1C($v0)
/* A2D10 800EC950 0040F809 */  jalr       $v0
/* A2D14 800EC954 02042021 */   addu      $a0, $s0, $a0
/* A2D18 800EC958 0C03B1A5 */  jal        func_race_800EC694
/* A2D1C 800EC95C 02002021 */   addu      $a0, $s0, $zero
/* A2D20 800EC960 0C03A1C0 */  jal        func_race_800E8700
/* A2D24 800EC964 02002021 */   addu      $a0, $s0, $zero
/* A2D28 800EC968 8FBF0014 */  lw         $ra, 0x14($sp)
/* A2D2C 800EC96C 8FB00010 */  lw         $s0, 0x10($sp)
/* A2D30 800EC970 03E00008 */  jr         $ra
/* A2D34 800EC974 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EC978
/* A2D38 800EC978 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A2D3C 800EC97C AFB00010 */  sw         $s0, 0x10($sp)
/* A2D40 800EC980 00808021 */  addu       $s0, $a0, $zero
/* A2D44 800EC984 3C090001 */  lui        $t1, (0x10000 >> 16)
/* A2D48 800EC988 3C08FFFB */  lui        $t0, (0xFFFBFFFF >> 16)
/* A2D4C 800EC98C 3508FFFF */  ori        $t0, $t0, (0xFFFBFFFF & 0xFFFF)
/* A2D50 800EC990 02002821 */  addu       $a1, $s0, $zero
/* A2D54 800EC994 26070010 */  addiu      $a3, $s0, 0x10
/* A2D58 800EC998 AFBF0014 */  sw         $ra, 0x14($sp)
.Lrace_800EC99C:
/* A2D5C 800EC99C 00A7102B */  sltu       $v0, $a1, $a3
/* A2D60 800EC9A0 50400017 */  beql       $v0, $zero, .Lrace_800ECA00
/* A2D64 800EC9A4 24050009 */   addiu     $a1, $zero, 0x9
/* A2D68 800EC9A8 8CA20010 */  lw         $v0, 0x10($a1)
/* A2D6C 800EC9AC 10400012 */  beqz       $v0, .Lrace_800EC9F8
/* A2D70 800EC9B0 00002021 */   addu      $a0, $zero, $zero
/* A2D74 800EC9B4 00A03021 */  addu       $a2, $a1, $zero
.Lrace_800EC9B8:
/* A2D78 800EC9B8 2C820003 */  sltiu      $v0, $a0, 0x3
/* A2D7C 800EC9BC 10400006 */  beqz       $v0, .Lrace_800EC9D8
/* A2D80 800EC9C0 00041880 */   sll       $v1, $a0, 2
/* A2D84 800EC9C4 8CC20010 */  lw         $v0, 0x10($a2)
/* A2D88 800EC9C8 24840001 */  addiu      $a0, $a0, 0x1
/* A2D8C 800EC9CC 00431021 */  addu       $v0, $v0, $v1
/* A2D90 800EC9D0 0803B26E */  j          .Lrace_800EC9B8
/* A2D94 800EC9D4 AC400084 */   sw        $zero, 0x84($v0)
.Lrace_800EC9D8:
/* A2D98 800EC9D8 8CA30010 */  lw         $v1, 0x10($a1)
/* A2D9C 800EC9DC 8C62005C */  lw         $v0, 0x5C($v1)
/* A2DA0 800EC9E0 00491025 */  or         $v0, $v0, $t1
/* A2DA4 800EC9E4 AC62005C */  sw         $v0, 0x5C($v1)
/* A2DA8 800EC9E8 8CA30010 */  lw         $v1, 0x10($a1)
/* A2DAC 800EC9EC 8C62005C */  lw         $v0, 0x5C($v1)
/* A2DB0 800EC9F0 00481024 */  and        $v0, $v0, $t0
/* A2DB4 800EC9F4 AC62005C */  sw         $v0, 0x5C($v1)
.Lrace_800EC9F8:
/* A2DB8 800EC9F8 0803B267 */  j          .Lrace_800EC99C
/* A2DBC 800EC9FC 24A50004 */   addiu     $a1, $a1, 0x4
.Lrace_800ECA00:
/* A2DC0 800ECA00 00A03021 */  addu       $a2, $a1, $zero
/* A2DC4 800ECA04 8E040004 */  lw         $a0, 0x4($s0)
/* A2DC8 800ECA08 0C036D74 */  jal        func_race_800DB5D0
/* A2DCC 800ECA0C 00003821 */   addu      $a3, $zero, $zero
/* A2DD0 800ECA10 24020002 */  addiu      $v0, $zero, 0x2
/* A2DD4 800ECA14 AE02000C */  sw         $v0, 0xC($s0)
/* A2DD8 800ECA18 8FBF0014 */  lw         $ra, 0x14($sp)
/* A2DDC 800ECA1C 8FB00010 */  lw         $s0, 0x10($sp)
/* A2DE0 800ECA20 03E00008 */  jr         $ra
/* A2DE4 800ECA24 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800ECA28
/* A2DE8 800ECA28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A2DEC 800ECA2C AFB20018 */  sw         $s2, 0x18($sp)
/* A2DF0 800ECA30 00809021 */  addu       $s2, $a0, $zero
/* A2DF4 800ECA34 AFB00010 */  sw         $s0, 0x10($sp)
/* A2DF8 800ECA38 00008021 */  addu       $s0, $zero, $zero
/* A2DFC 800ECA3C AFB10014 */  sw         $s1, 0x14($sp)
/* A2E00 800ECA40 02408821 */  addu       $s1, $s2, $zero
/* A2E04 800ECA44 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_800ECA48:
/* A2E08 800ECA48 8E240010 */  lw         $a0, 0x10($s1)
/* A2E0C 800ECA4C 10800005 */  beqz       $a0, .Lrace_800ECA64
/* A2E10 800ECA50 26100001 */   addiu     $s0, $s0, 0x1
/* A2E14 800ECA54 0C0199BD */  jal        func_800666F4
/* A2E18 800ECA58 00000000 */   nop
/* A2E1C 800ECA5C 10400014 */  beqz       $v0, .Lrace_800ECAB0
/* A2E20 800ECA60 00000000 */   nop
.Lrace_800ECA64:
/* A2E24 800ECA64 2E020004 */  sltiu      $v0, $s0, 0x4
/* A2E28 800ECA68 1440FFF7 */  bnez       $v0, .Lrace_800ECA48
/* A2E2C 800ECA6C 26310004 */   addiu     $s1, $s1, 0x4
/* A2E30 800ECA70 00008021 */  addu       $s0, $zero, $zero
/* A2E34 800ECA74 3C05FFFE */  lui        $a1, (0xFFFEFFFF >> 16)
/* A2E38 800ECA78 34A5FFFF */  ori        $a1, $a1, (0xFFFEFFFF & 0xFFFF)
/* A2E3C 800ECA7C 02402021 */  addu       $a0, $s2, $zero
.Lrace_800ECA80:
/* A2E40 800ECA80 2E020004 */  sltiu      $v0, $s0, 0x4
/* A2E44 800ECA84 10400009 */  beqz       $v0, .Lrace_800ECAAC
/* A2E48 800ECA88 24020001 */   addiu     $v0, $zero, 0x1
/* A2E4C 800ECA8C 8C830010 */  lw         $v1, 0x10($a0)
/* A2E50 800ECA90 10600004 */  beqz       $v1, .Lrace_800ECAA4
/* A2E54 800ECA94 24840004 */   addiu     $a0, $a0, 0x4
/* A2E58 800ECA98 8C62005C */  lw         $v0, 0x5C($v1)
/* A2E5C 800ECA9C 00451024 */  and        $v0, $v0, $a1
/* A2E60 800ECAA0 AC62005C */  sw         $v0, 0x5C($v1)
.Lrace_800ECAA4:
/* A2E64 800ECAA4 0803B2A0 */  j          .Lrace_800ECA80
/* A2E68 800ECAA8 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800ECAAC:
/* A2E6C 800ECAAC AE42000C */  sw         $v0, 0xC($s2)
.Lrace_800ECAB0:
/* A2E70 800ECAB0 8FBF001C */  lw         $ra, 0x1C($sp)
/* A2E74 800ECAB4 8FB20018 */  lw         $s2, 0x18($sp)
/* A2E78 800ECAB8 8FB10014 */  lw         $s1, 0x14($sp)
/* A2E7C 800ECABC 8FB00010 */  lw         $s0, 0x10($sp)
/* A2E80 800ECAC0 03E00008 */  jr         $ra
/* A2E84 800ECAC4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800ECAC8
/* A2E88 800ECAC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A2E8C 800ECACC AFB00010 */  sw         $s0, 0x10($sp)
/* A2E90 800ECAD0 00808021 */  addu       $s0, $a0, $zero
/* A2E94 800ECAD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A2E98 800ECAD8 8E03000C */  lw         $v1, 0xC($s0)
/* A2E9C 800ECADC 24020001 */  addiu      $v0, $zero, 0x1
/* A2EA0 800ECAE0 10620018 */  beq        $v1, $v0, .Lrace_800ECB44
/* A2EA4 800ECAE4 00000000 */   nop
/* A2EA8 800ECAE8 0C03A1C4 */  jal        func_race_800E8710
/* A2EAC 800ECAEC 00000000 */   nop
/* A2EB0 800ECAF0 8E040020 */  lw         $a0, 0x20($s0)
/* A2EB4 800ECAF4 10800009 */  beqz       $a0, .Lrace_800ECB1C
/* A2EB8 800ECAF8 3C030001 */   lui       $v1, (0x10000 >> 16)
/* A2EBC 800ECAFC 8C820008 */  lw         $v0, 0x8($a0)
/* A2EC0 800ECB00 00431025 */  or         $v0, $v0, $v1
/* A2EC4 800ECB04 AC820008 */  sw         $v0, 0x8($a0)
/* A2EC8 800ECB08 8E040020 */  lw         $a0, 0x20($s0)
/* A2ECC 800ECB0C 8C820008 */  lw         $v0, 0x8($a0)
/* A2ED0 800ECB10 3C030002 */  lui        $v1, (0x20000 >> 16)
/* A2ED4 800ECB14 00431025 */  or         $v0, $v0, $v1
/* A2ED8 800ECB18 AC820008 */  sw         $v0, 0x8($a0)
.Lrace_800ECB1C:
/* A2EDC 800ECB1C 8E040010 */  lw         $a0, 0x10($s0)
/* A2EE0 800ECB20 0C0199BD */  jal        func_800666F4
/* A2EE4 800ECB24 00000000 */   nop
/* A2EE8 800ECB28 10400006 */  beqz       $v0, .Lrace_800ECB44
/* A2EEC 800ECB2C 00002821 */   addu      $a1, $zero, $zero
/* A2EF0 800ECB30 8E020000 */  lw         $v0, 0x0($s0)
/* A2EF4 800ECB34 84440018 */  lh         $a0, 0x18($v0)
/* A2EF8 800ECB38 8C42001C */  lw         $v0, 0x1C($v0)
/* A2EFC 800ECB3C 0040F809 */  jalr       $v0
/* A2F00 800ECB40 02042021 */   addu      $a0, $s0, $a0
.Lrace_800ECB44:
/* A2F04 800ECB44 8FBF0014 */  lw         $ra, 0x14($sp)
/* A2F08 800ECB48 8FB00010 */  lw         $s0, 0x10($sp)
/* A2F0C 800ECB4C 03E00008 */  jr         $ra
/* A2F10 800ECB50 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800ECB54
/* A2F14 800ECB54 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A2F18 800ECB58 AFB20018 */  sw         $s2, 0x18($sp)
/* A2F1C 800ECB5C 00809021 */  addu       $s2, $a0, $zero
/* A2F20 800ECB60 AFB10014 */  sw         $s1, 0x14($sp)
/* A2F24 800ECB64 AFBF001C */  sw         $ra, 0x1C($sp)
/* A2F28 800ECB68 AFB00010 */  sw         $s0, 0x10($sp)
/* A2F2C 800ECB6C 8E43000C */  lw         $v1, 0xC($s2)
/* A2F30 800ECB70 24020001 */  addiu      $v0, $zero, 0x1
/* A2F34 800ECB74 10620045 */  beq        $v1, $v0, .Lrace_800ECC8C
/* A2F38 800ECB78 00A08821 */   addu      $s1, $a1, $zero
/* A2F3C 800ECB7C 02408021 */  addu       $s0, $s2, $zero
.Lrace_800ECB80:
/* A2F40 800ECB80 26420010 */  addiu      $v0, $s2, 0x10
/* A2F44 800ECB84 0202102B */  sltu       $v0, $s0, $v0
/* A2F48 800ECB88 10400040 */  beqz       $v0, .Lrace_800ECC8C
/* A2F4C 800ECB8C 00000000 */   nop
/* A2F50 800ECB90 8E020010 */  lw         $v0, 0x10($s0)
/* A2F54 800ECB94 1040003B */  beqz       $v0, .Lrace_800ECC84
/* A2F58 800ECB98 00002021 */   addu      $a0, $zero, $zero
/* A2F5C 800ECB9C 02003021 */  addu       $a2, $s0, $zero
/* A2F60 800ECBA0 02402821 */  addu       $a1, $s2, $zero
.Lrace_800ECBA4:
/* A2F64 800ECBA4 2C820003 */  sltiu      $v0, $a0, 0x3
/* A2F68 800ECBA8 10400008 */  beqz       $v0, .Lrace_800ECBCC
/* A2F6C 800ECBAC 00041880 */   sll       $v1, $a0, 2
/* A2F70 800ECBB0 C4A00024 */  lwc1       $f0, 0x24($a1)
/* A2F74 800ECBB4 24A50004 */  addiu      $a1, $a1, 0x4
/* A2F78 800ECBB8 8CC20010 */  lw         $v0, 0x10($a2)
/* A2F7C 800ECBBC 24840001 */  addiu      $a0, $a0, 0x1
/* A2F80 800ECBC0 00431021 */  addu       $v0, $v0, $v1
/* A2F84 800ECBC4 0803B2E9 */  j          .Lrace_800ECBA4
/* A2F88 800ECBC8 E4400084 */   swc1      $f0, 0x84($v0)
.Lrace_800ECBCC:
/* A2F8C 800ECBCC 8E050010 */  lw         $a1, 0x10($s0)
/* A2F90 800ECBD0 94A200BC */  lhu        $v0, 0xBC($a1)
/* A2F94 800ECBD4 8CA400A8 */  lw         $a0, 0xA8($a1)
/* A2F98 800ECBD8 00021880 */  sll        $v1, $v0, 2
/* A2F9C 800ECBDC 00621821 */  addu       $v1, $v1, $v0
/* A2FA0 800ECBE0 8C82002C */  lw         $v0, 0x2C($a0)
/* A2FA4 800ECBE4 000318C0 */  sll        $v1, $v1, 3
/* A2FA8 800ECBE8 00431021 */  addu       $v0, $v0, $v1
/* A2FAC 800ECBEC 94420024 */  lhu        $v0, 0x24($v0)
/* A2FB0 800ECBF0 C4A000B4 */  lwc1       $f0, 0xB4($a1)
/* A2FB4 800ECBF4 44821000 */  mtc1       $v0, $f2
/* A2FB8 800ECBF8 468010A0 */  cvt.s.w    $f2, $f2
/* A2FBC 800ECBFC 46001001 */  sub.s      $f0, $f2, $f0
/* A2FC0 800ECC00 3C01800D */  lui        $at, %hi(D_race_800CC370)
/* A2FC4 800ECC04 C424C370 */  lwc1       $f4, %lo(D_race_800CC370)($at)
/* A2FC8 800ECC08 8E22012C */  lw         $v0, 0x12C($s1)
/* A2FCC 800ECC0C 46020003 */  div.s      $f0, $f0, $f2
/* A2FD0 800ECC10 46040002 */  mul.s      $f0, $f0, $f4
/* A2FD4 800ECC14 24060001 */  addiu      $a2, $zero, 0x1
/* A2FD8 800ECC18 84440170 */  lh         $a0, 0x170($v0)
/* A2FDC 800ECC1C 8C420174 */  lw         $v0, 0x174($v0)
/* A2FE0 800ECC20 4600018D */  trunc.w.s  $f6, $f0
/* A2FE4 800ECC24 44053000 */  mfc1       $a1, $f6
/* A2FE8 800ECC28 0040F809 */  jalr       $v0
/* A2FEC 800ECC2C 02242021 */   addu      $a0, $s1, $a0
/* A2FF0 800ECC30 8E22012C */  lw         $v0, 0x12C($s1)
/* A2FF4 800ECC34 8E050010 */  lw         $a1, 0x10($s0)
/* A2FF8 800ECC38 84440118 */  lh         $a0, 0x118($v0)
/* A2FFC 800ECC3C 8C42011C */  lw         $v0, 0x11C($v0)
/* A3000 800ECC40 0040F809 */  jalr       $v0
/* A3004 800ECC44 02242021 */   addu      $a0, $s1, $a0
/* A3008 800ECC48 8E22012C */  lw         $v0, 0x12C($s1)
/* A300C 800ECC4C 84440178 */  lh         $a0, 0x178($v0)
/* A3010 800ECC50 8C42017C */  lw         $v0, 0x17C($v0)
/* A3014 800ECC54 0040F809 */  jalr       $v0
/* A3018 800ECC58 02242021 */   addu      $a0, $s1, $a0
/* A301C 800ECC5C 00002021 */  addu       $a0, $zero, $zero
/* A3020 800ECC60 02002821 */  addu       $a1, $s0, $zero
.Lrace_800ECC64:
/* A3024 800ECC64 2C820003 */  sltiu      $v0, $a0, 0x3
/* A3028 800ECC68 10400006 */  beqz       $v0, .Lrace_800ECC84
/* A302C 800ECC6C 00041880 */   sll       $v1, $a0, 2
/* A3030 800ECC70 8CA20010 */  lw         $v0, 0x10($a1)
/* A3034 800ECC74 24840001 */  addiu      $a0, $a0, 0x1
/* A3038 800ECC78 00431021 */  addu       $v0, $v0, $v1
/* A303C 800ECC7C 0803B319 */  j          .Lrace_800ECC64
/* A3040 800ECC80 AC400084 */   sw        $zero, 0x84($v0)
.Lrace_800ECC84:
/* A3044 800ECC84 0803B2E0 */  j          .Lrace_800ECB80
/* A3048 800ECC88 26100004 */   addiu     $s0, $s0, 0x4
.Lrace_800ECC8C:
/* A304C 800ECC8C 8FBF001C */  lw         $ra, 0x1C($sp)
/* A3050 800ECC90 8FB20018 */  lw         $s2, 0x18($sp)
/* A3054 800ECC94 8FB10014 */  lw         $s1, 0x14($sp)
/* A3058 800ECC98 8FB00010 */  lw         $s0, 0x10($sp)
/* A305C 800ECC9C 03E00008 */  jr         $ra
/* A3060 800ECCA0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800ECCA4
/* A3064 800ECCA4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A3068 800ECCA8 AFB10014 */  sw         $s1, 0x14($sp)
/* A306C 800ECCAC 00808821 */  addu       $s1, $a0, $zero
/* A3070 800ECCB0 AFBF0024 */  sw         $ra, 0x24($sp)
/* A3074 800ECCB4 AFB40020 */  sw         $s4, 0x20($sp)
/* A3078 800ECCB8 AFB3001C */  sw         $s3, 0x1C($sp)
/* A307C 800ECCBC AFB20018 */  sw         $s2, 0x18($sp)
/* A3080 800ECCC0 AFB00010 */  sw         $s0, 0x10($sp)
/* A3084 800ECCC4 8E240020 */  lw         $a0, 0x20($s1)
/* A3088 800ECCC8 1080000B */  beqz       $a0, .Lrace_800ECCF8
/* A308C 800ECCCC 3C03FFFE */   lui       $v1, (0xFFFEFFFF >> 16)
/* A3090 800ECCD0 8C820008 */  lw         $v0, 0x8($a0)
/* A3094 800ECCD4 3463FFFF */  ori        $v1, $v1, (0xFFFEFFFF & 0xFFFF)
/* A3098 800ECCD8 00431024 */  and        $v0, $v0, $v1
/* A309C 800ECCDC AC820008 */  sw         $v0, 0x8($a0)
/* A30A0 800ECCE0 8E240020 */  lw         $a0, 0x20($s1)
/* A30A4 800ECCE4 3C03FFFD */  lui        $v1, (0xFFFDFFFF >> 16)
/* A30A8 800ECCE8 8C820008 */  lw         $v0, 0x8($a0)
/* A30AC 800ECCEC 3463FFFF */  ori        $v1, $v1, (0xFFFDFFFF & 0xFFFF)
/* A30B0 800ECCF0 00431024 */  and        $v0, $v0, $v1
/* A30B4 800ECCF4 AC820008 */  sw         $v0, 0x8($a0)
.Lrace_800ECCF8:
/* A30B8 800ECCF8 3C140001 */  lui        $s4, (0x10000 >> 16)
/* A30BC 800ECCFC 3C13FFFE */  lui        $s3, (0xFFFEFFFF >> 16)
/* A30C0 800ECD00 3673FFFF */  ori        $s3, $s3, (0xFFFEFFFF & 0xFFFF)
/* A30C4 800ECD04 02208021 */  addu       $s0, $s1, $zero
/* A30C8 800ECD08 26320010 */  addiu      $s2, $s1, 0x10
.Lrace_800ECD0C:
/* A30CC 800ECD0C 0212102B */  sltu       $v0, $s0, $s2
/* A30D0 800ECD10 10400024 */  beqz       $v0, .Lrace_800ECDA4
/* A30D4 800ECD14 24020001 */   addiu     $v0, $zero, 0x1
/* A30D8 800ECD18 8E030010 */  lw         $v1, 0x10($s0)
/* A30DC 800ECD1C 1060001F */  beqz       $v1, .Lrace_800ECD9C
/* A30E0 800ECD20 00002821 */   addu      $a1, $zero, $zero
/* A30E4 800ECD24 8C62005C */  lw         $v0, 0x5C($v1)
/* A30E8 800ECD28 00541025 */  or         $v0, $v0, $s4
/* A30EC 800ECD2C AC62005C */  sw         $v0, 0x5C($v1)
/* A30F0 800ECD30 8E040010 */  lw         $a0, 0x10($s0)
/* A30F4 800ECD34 0C019724 */  jal        func_80065C90
/* A30F8 800ECD38 00A03021 */   addu      $a2, $a1, $zero
/* A30FC 800ECD3C 8E030010 */  lw         $v1, 0x10($s0)
/* A3100 800ECD40 8C620024 */  lw         $v0, 0x24($v1)
/* A3104 800ECD44 00002821 */  addu       $a1, $zero, $zero
/* A3108 800ECD48 844400C0 */  lh         $a0, 0xC0($v0)
/* A310C 800ECD4C 8C4200C4 */  lw         $v0, 0xC4($v0)
/* A3110 800ECD50 0040F809 */  jalr       $v0
/* A3114 800ECD54 00642021 */   addu      $a0, $v1, $a0
/* A3118 800ECD58 00002821 */  addu       $a1, $zero, $zero
/* A311C 800ECD5C 8E030010 */  lw         $v1, 0x10($s0)
/* A3120 800ECD60 02003021 */  addu       $a2, $s0, $zero
/* A3124 800ECD64 8C62005C */  lw         $v0, 0x5C($v1)
/* A3128 800ECD68 02202021 */  addu       $a0, $s1, $zero
/* A312C 800ECD6C 00531024 */  and        $v0, $v0, $s3
/* A3130 800ECD70 AC62005C */  sw         $v0, 0x5C($v1)
.Lrace_800ECD74:
/* A3134 800ECD74 2CA20003 */  sltiu      $v0, $a1, 0x3
/* A3138 800ECD78 10400008 */  beqz       $v0, .Lrace_800ECD9C
/* A313C 800ECD7C 00051880 */   sll       $v1, $a1, 2
/* A3140 800ECD80 C4800024 */  lwc1       $f0, 0x24($a0)
/* A3144 800ECD84 24840004 */  addiu      $a0, $a0, 0x4
/* A3148 800ECD88 8CC20010 */  lw         $v0, 0x10($a2)
/* A314C 800ECD8C 24A50001 */  addiu      $a1, $a1, 0x1
/* A3150 800ECD90 00431021 */  addu       $v0, $v0, $v1
/* A3154 800ECD94 0803B35D */  j          .Lrace_800ECD74
/* A3158 800ECD98 E4400084 */   swc1      $f0, 0x84($v0)
.Lrace_800ECD9C:
/* A315C 800ECD9C 0803B343 */  j          .Lrace_800ECD0C
/* A3160 800ECDA0 26100004 */   addiu     $s0, $s0, 0x4
.Lrace_800ECDA4:
/* A3164 800ECDA4 AE22000C */  sw         $v0, 0xC($s1)
/* A3168 800ECDA8 8FBF0024 */  lw         $ra, 0x24($sp)
/* A316C 800ECDAC 8FB40020 */  lw         $s4, 0x20($sp)
/* A3170 800ECDB0 8FB3001C */  lw         $s3, 0x1C($sp)
/* A3174 800ECDB4 8FB20018 */  lw         $s2, 0x18($sp)
/* A3178 800ECDB8 8FB10014 */  lw         $s1, 0x14($sp)
/* A317C 800ECDBC 8FB00010 */  lw         $s0, 0x10($sp)
/* A3180 800ECDC0 03E00008 */  jr         $ra
/* A3184 800ECDC4 27BD0028 */   addiu     $sp, $sp, 0x28
