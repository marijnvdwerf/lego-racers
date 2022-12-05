.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80065570
/* 5C8A0 80065570 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5C8A4 80065574 AFB00010 */  sw         $s0, 0x10($sp)
/* 5C8A8 80065578 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5C8AC 8006557C 0C016038 */  jal        func_800580E0
/* 5C8B0 80065580 00808021 */   addu      $s0, $a0, $zero
/* 5C8B4 80065584 3C028004 */  lui        $v0, %hi(D_8003E4A8)
/* 5C8B8 80065588 2442E4A8 */  addiu      $v0, $v0, %lo(D_8003E4A8)
/* 5C8BC 8006558C 02002021 */  addu       $a0, $s0, $zero
/* 5C8C0 80065590 0C019597 */  jal        func_8006565C
/* 5C8C4 80065594 AE020024 */   sw        $v0, 0x24($s0)
/* 5C8C8 80065598 02001021 */  addu       $v0, $s0, $zero
/* 5C8CC 8006559C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C8D0 800655A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C8D4 800655A4 03E00008 */  jr         $ra
/* 5C8D8 800655A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800655AC
/* 5C8DC 800655AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5C8E0 800655B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 5C8E4 800655B4 00808021 */  addu       $s0, $a0, $zero
/* 5C8E8 800655B8 AFB10014 */  sw         $s1, 0x14($sp)
/* 5C8EC 800655BC 00C08821 */  addu       $s1, $a2, $zero
/* 5C8F0 800655C0 AFB20018 */  sw         $s2, 0x18($sp)
/* 5C8F4 800655C4 8FA60030 */  lw         $a2, 0x30($sp)
/* 5C8F8 800655C8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 5C8FC 800655CC 0C016059 */  jal        func_80058164
/* 5C900 800655D0 00E09021 */   addu      $s2, $a3, $zero
/* 5C904 800655D4 AE110090 */  sw         $s1, 0x90($s0)
/* 5C908 800655D8 AE1200A8 */  sw         $s2, 0xA8($s0)
/* 5C90C 800655DC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5C910 800655E0 8FB20018 */  lw         $s2, 0x18($sp)
/* 5C914 800655E4 8FB10014 */  lw         $s1, 0x14($sp)
/* 5C918 800655E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C91C 800655EC 03E00008 */  jr         $ra
/* 5C920 800655F0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800655F4
/* 5C924 800655F4 3C018004 */  lui        $at, %hi(D_8003E480)
/* 5C928 800655F8 C420E480 */  lwc1       $f0, %lo(D_8003E480)($at)
/* 5C92C 800655FC 8C82005C */  lw         $v0, 0x5C($a0)
/* 5C930 80065600 AC870084 */  sw         $a3, 0x84($a0)
/* 5C934 80065604 AC80000C */  sw         $zero, 0xC($a0)
/* 5C938 80065608 A4800060 */  sh         $zero, 0x60($a0)
/* 5C93C 8006560C A4800062 */  sh         $zero, 0x62($a0)
/* 5C940 80065610 AC800064 */  sw         $zero, 0x64($a0)
/* 5C944 80065614 AC800068 */  sw         $zero, 0x68($a0)
/* 5C948 80065618 AC850090 */  sw         $a1, 0x90($a0)
/* 5C94C 8006561C AC8600A8 */  sw         $a2, 0xA8($a0)
/* 5C950 80065620 34420001 */  ori        $v0, $v0, 0x1
/* 5C954 80065624 E4800058 */  swc1       $f0, 0x58($a0)
/* 5C958 80065628 03E00008 */  jr         $ra
/* 5C95C 8006562C AC82005C */   sw        $v0, 0x5C($a0)

glabel func_80065630
/* 5C960 80065630 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5C964 80065634 AFB00010 */  sw         $s0, 0x10($sp)
/* 5C968 80065638 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5C96C 8006563C 0C01607E */  jal        func_800581F8
/* 5C970 80065640 00808021 */   addu      $s0, $a0, $zero
/* 5C974 80065644 0C019597 */  jal        func_8006565C
/* 5C978 80065648 02002021 */   addu      $a0, $s0, $zero
/* 5C97C 8006564C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C980 80065650 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C984 80065654 03E00008 */  jr         $ra
/* 5C988 80065658 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006565C
/* 5C98C 8006565C 00002821 */  addu       $a1, $zero, $zero
/* 5C990 80065660 2406FFFF */  addiu      $a2, $zero, -0x1
/* 5C994 80065664 00801821 */  addu       $v1, $a0, $zero
.L80065668:
/* 5C998 80065668 AC600090 */  sw         $zero, 0x90($v1)
/* 5C99C 8006566C AC6000A8 */  sw         $zero, 0xA8($v1)
/* 5C9A0 80065670 AC66009C */  sw         $a2, 0x9C($v1)
/* 5C9A4 80065674 24A50001 */  addiu      $a1, $a1, 0x1
/* 5C9A8 80065678 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 5C9AC 8006567C 1440FFFA */  bnez       $v0, .L80065668
/* 5C9B0 80065680 24630004 */   addiu     $v1, $v1, 0x4
/* 5C9B4 80065684 3C018004 */  lui        $at, %hi(D_8003E484)
/* 5C9B8 80065688 C420E484 */  lwc1       $f0, %lo(D_8003E484)($at)
/* 5C9BC 8006568C A48000BC */  sh         $zero, 0xBC($a0)
/* 5C9C0 80065690 AC8000B4 */  sw         $zero, 0xB4($a0)
/* 5C9C4 80065694 AC8000B8 */  sw         $zero, 0xB8($a0)
/* 5C9C8 80065698 A48000D8 */  sh         $zero, 0xD8($a0)
/* 5C9CC 8006569C AC8000D0 */  sw         $zero, 0xD0($a0)
/* 5C9D0 800656A0 AC8000D4 */  sw         $zero, 0xD4($a0)
/* 5C9D4 800656A4 AC8000EC */  sw         $zero, 0xEC($a0)
/* 5C9D8 800656A8 AC8000F0 */  sw         $zero, 0xF0($a0)
/* 5C9DC 800656AC 03E00008 */  jr         $ra
/* 5C9E0 800656B0 E480000C */   swc1      $f0, 0xC($a0)

glabel func_800656B4
/* 5C9E4 800656B4 00001821 */  addu       $v1, $zero, $zero
/* 5C9E8 800656B8 2405FFFF */  addiu      $a1, $zero, -0x1
.L800656BC:
/* 5C9EC 800656BC AC85009C */  sw         $a1, 0x9C($a0)
/* 5C9F0 800656C0 24630001 */  addiu      $v1, $v1, 0x1
/* 5C9F4 800656C4 2C620003 */  sltiu      $v0, $v1, 0x3
/* 5C9F8 800656C8 1440FFFC */  bnez       $v0, .L800656BC
/* 5C9FC 800656CC 24840004 */   addiu     $a0, $a0, 0x4
/* 5CA00 800656D0 03E00008 */  jr         $ra
/* 5CA04 800656D4 00000000 */   nop

glabel func_800656D8
/* 5CA08 800656D8 27BDFF30 */  addiu      $sp, $sp, -0xD0
/* 5CA0C 800656DC AFB600B0 */  sw         $s6, 0xB0($sp)
/* 5CA10 800656E0 0080B021 */  addu       $s6, $a0, $zero
/* 5CA14 800656E4 AFB00098 */  sw         $s0, 0x98($sp)
/* 5CA18 800656E8 00A08021 */  addu       $s0, $a1, $zero
/* 5CA1C 800656EC 3C030001 */  lui        $v1, (0x10000 >> 16)
/* 5CA20 800656F0 AFBF00BC */  sw         $ra, 0xBC($sp)
/* 5CA24 800656F4 AFBE00B8 */  sw         $fp, 0xB8($sp)
/* 5CA28 800656F8 AFB700B4 */  sw         $s7, 0xB4($sp)
/* 5CA2C 800656FC AFB500AC */  sw         $s5, 0xAC($sp)
/* 5CA30 80065700 AFB400A8 */  sw         $s4, 0xA8($sp)
/* 5CA34 80065704 AFB300A4 */  sw         $s3, 0xA4($sp)
/* 5CA38 80065708 AFB200A0 */  sw         $s2, 0xA0($sp)
/* 5CA3C 8006570C AFB1009C */  sw         $s1, 0x9C($sp)
/* 5CA40 80065710 F7B600C8 */  sdc1       $f22, 0xC8($sp)
/* 5CA44 80065714 F7B400C0 */  sdc1       $f20, 0xC0($sp)
/* 5CA48 80065718 AFA00080 */  sw         $zero, 0x80($sp)
/* 5CA4C 8006571C AFA00084 */  sw         $zero, 0x84($sp)
/* 5CA50 80065720 8EC2005C */  lw         $v0, 0x5C($s6)
/* 5CA54 80065724 4480B000 */  mtc1       $zero, $f22
/* 5CA58 80065728 00431024 */  and        $v0, $v0, $v1
/* 5CA5C 8006572C 10400009 */  beqz       $v0, .L80065754
/* 5CA60 80065730 00002021 */   addu      $a0, $zero, $zero
/* 5CA64 80065734 00101080 */  sll        $v0, $s0, 2
/* 5CA68 80065738 02C21021 */  addu       $v0, $s6, $v0
/* 5CA6C 8006573C 8C4300A8 */  lw         $v1, 0xA8($v0)
/* 5CA70 80065740 96C200BC */  lhu        $v0, 0xBC($s6)
/* 5CA74 80065744 8C630030 */  lw         $v1, 0x30($v1)
/* 5CA78 80065748 0043102B */  sltu       $v0, $v0, $v1
/* 5CA7C 8006574C 14400002 */  bnez       $v0, .L80065758
/* 5CA80 80065750 00000000 */   nop
.L80065754:
/* 5CA84 80065754 24040001 */  addiu      $a0, $zero, 0x1
.L80065758:
/* 5CA88 80065758 148000DF */  bnez       $a0, .L80065AD8
/* 5CA8C 8006575C 00101080 */   sll       $v0, $s0, 2
/* 5CA90 80065760 02C22021 */  addu       $a0, $s6, $v0
/* 5CA94 80065764 8C970090 */  lw         $s7, 0x90($a0)
/* 5CA98 80065768 8C82009C */  lw         $v0, 0x9C($a0)
/* 5CA9C 8006576C 8EE3000C */  lw         $v1, 0xC($s7)
/* 5CAA0 80065770 106200D9 */  beq        $v1, $v0, .L80065AD8
/* 5CAA4 80065774 24630001 */   addiu     $v1, $v1, 0x1
/* 5CAA8 80065778 2402FFFF */  addiu      $v0, $zero, -0x1
/* 5CAAC 8006577C 14620002 */  bne        $v1, $v0, .L80065788
/* 5CAB0 80065780 AEE3000C */   sw        $v1, 0xC($s7)
/* 5CAB4 80065784 AEE0000C */  sw         $zero, 0xC($s7)
.L80065788:
/* 5CAB8 80065788 8EE2000C */  lw         $v0, 0xC($s7)
/* 5CABC 8006578C 3C018004 */  lui        $at, %hi(D_8003E488)
/* 5CAC0 80065790 C420E488 */  lwc1       $f0, %lo(D_8003E488)($at)
/* 5CAC4 80065794 AC82009C */  sw         $v0, 0x9C($a0)
/* 5CAC8 80065798 AFA00028 */  sw         $zero, 0x28($sp)
/* 5CACC 8006579C AFA0002C */  sw         $zero, 0x2C($sp)
/* 5CAD0 800657A0 AFA00030 */  sw         $zero, 0x30($sp)
/* 5CAD4 800657A4 E7A00034 */  swc1       $f0, 0x34($sp)
/* 5CAD8 800657A8 8C8400A8 */  lw         $a0, 0xA8($a0)
/* 5CADC 800657AC 96C300BC */  lhu        $v1, 0xBC($s6)
/* 5CAE0 800657B0 249E000C */  addiu      $fp, $a0, 0xC
/* 5CAE4 800657B4 00031080 */  sll        $v0, $v1, 2
/* 5CAE8 800657B8 00431021 */  addu       $v0, $v0, $v1
/* 5CAEC 800657BC 8C83002C */  lw         $v1, 0x2C($a0)
/* 5CAF0 800657C0 000210C0 */  sll        $v0, $v0, 3
/* 5CAF4 800657C4 00622021 */  addu       $a0, $v1, $v0
/* 5CAF8 800657C8 3C030004 */  lui        $v1, (0x40000 >> 16)
/* 5CAFC 800657CC 8EC2005C */  lw         $v0, 0x5C($s6)
/* 5CB00 800657D0 8C880020 */  lw         $t0, 0x20($a0)
/* 5CB04 800657D4 00431024 */  and        $v0, $v0, $v1
/* 5CB08 800657D8 10400007 */  beqz       $v0, .L800657F8
/* 5CB0C 800657DC AFA8007C */   sw        $t0, 0x7C($sp)
/* 5CB10 800657E0 94880026 */  lhu        $t0, 0x26($a0)
/* 5CB14 800657E4 8EC500B4 */  lw         $a1, 0xB4($s6)
/* 5CB18 800657E8 0C01932A */  jal        func_80064CA8
/* 5CB1C 800657EC AFA80078 */   sw        $t0, 0x78($sp)
/* 5CB20 800657F0 08019601 */  j          .L80065804
/* 5CB24 800657F4 46000506 */   mov.s     $f20, $f0
.L800657F8:
/* 5CB28 800657F8 94840024 */  lhu        $a0, 0x24($a0)
/* 5CB2C 800657FC AFA40078 */  sw         $a0, 0x78($sp)
/* 5CB30 80065800 C6D400B4 */  lwc1       $f20, 0xB4($s6)
.L80065804:
/* 5CB34 80065804 8EC5005C */  lw         $a1, 0x5C($s6)
/* 5CB38 80065808 3C020002 */  lui        $v0, (0x20000 >> 16)
/* 5CB3C 8006580C 00A21024 */  and        $v0, $a1, $v0
/* 5CB40 80065810 1040001B */  beqz       $v0, .L80065880
/* 5CB44 80065814 00101080 */   sll       $v0, $s0, 2
/* 5CB48 80065818 02C21021 */  addu       $v0, $s6, $v0
/* 5CB4C 8006581C 8C4400A8 */  lw         $a0, 0xA8($v0)
/* 5CB50 80065820 96C300D8 */  lhu        $v1, 0xD8($s6)
/* 5CB54 80065824 8C820030 */  lw         $v0, 0x30($a0)
/* 5CB58 80065828 0062102B */  sltu       $v0, $v1, $v0
/* 5CB5C 8006582C 10400014 */  beqz       $v0, .L80065880
/* 5CB60 80065830 00031080 */   sll       $v0, $v1, 2
/* 5CB64 80065834 00431021 */  addu       $v0, $v0, $v1
/* 5CB68 80065838 8C83002C */  lw         $v1, 0x2C($a0)
/* 5CB6C 8006583C 000210C0 */  sll        $v0, $v0, 3
/* 5CB70 80065840 00622021 */  addu       $a0, $v1, $v0
/* 5CB74 80065844 00801821 */  addu       $v1, $a0, $zero
/* 5CB78 80065848 3C020040 */  lui        $v0, (0x400000 >> 16)
/* 5CB7C 8006584C 8C880020 */  lw         $t0, 0x20($a0)
/* 5CB80 80065850 00A21024 */  and        $v0, $a1, $v0
/* 5CB84 80065854 10400007 */  beqz       $v0, .L80065874
/* 5CB88 80065858 AFA80084 */   sw        $t0, 0x84($sp)
/* 5CB8C 8006585C 94880026 */  lhu        $t0, 0x26($a0)
/* 5CB90 80065860 8EC500D0 */  lw         $a1, 0xD0($s6)
/* 5CB94 80065864 0C01932A */  jal        func_80064CA8
/* 5CB98 80065868 AFA80080 */   sw        $t0, 0x80($sp)
/* 5CB9C 8006586C 08019620 */  j          .L80065880
/* 5CBA0 80065870 46000586 */   mov.s     $f22, $f0
.L80065874:
/* 5CBA4 80065874 94630024 */  lhu        $v1, 0x24($v1)
/* 5CBA8 80065878 AFA30080 */  sw         $v1, 0x80($sp)
/* 5CBAC 8006587C C6D600D0 */  lwc1       $f22, 0xD0($s6)
.L80065880:
/* 5CBB0 80065880 0000A021 */  addu       $s4, $zero, $zero
/* 5CBB4 80065884 00101080 */  sll        $v0, $s0, 2
/* 5CBB8 80065888 02C21021 */  addu       $v0, $s6, $v0
/* 5CBBC 8006588C 27A80038 */  addiu      $t0, $sp, 0x38
/* 5CBC0 80065890 AFA80090 */  sw         $t0, 0x90($sp)
/* 5CBC4 80065894 27A80058 */  addiu      $t0, $sp, 0x58
/* 5CBC8 80065898 AFA2008C */  sw         $v0, 0x8C($sp)
/* 5CBCC 8006589C AFA80094 */  sw         $t0, 0x94($sp)
.L800658A0:
/* 5CBD0 800658A0 8EE20010 */  lw         $v0, 0x10($s7)
/* 5CBD4 800658A4 0282102B */  sltu       $v0, $s4, $v0
/* 5CBD8 800658A8 1040008B */  beqz       $v0, .L80065AD8
/* 5CBDC 800658AC 0000A821 */   addu      $s5, $zero, $zero
/* 5CBE0 800658B0 02A09021 */  addu       $s2, $s5, $zero
/* 5CBE4 800658B4 AFA00048 */  sw         $zero, 0x48($sp)
/* 5CBE8 800658B8 AFA0004C */  sw         $zero, 0x4C($sp)
/* 5CBEC 800658BC AFA00050 */  sw         $zero, 0x50($sp)
/* 5CBF0 800658C0 AFA00038 */  sw         $zero, 0x38($sp)
/* 5CBF4 800658C4 AFA0003C */  sw         $zero, 0x3C($sp)
/* 5CBF8 800658C8 AFA00040 */  sw         $zero, 0x40($sp)
/* 5CBFC 800658CC 8EE20008 */  lw         $v0, 0x8($s7)
/* 5CC00 800658D0 02802821 */  addu       $a1, $s4, $zero
/* 5CC04 800658D4 84440038 */  lh         $a0, 0x38($v0)
/* 5CC08 800658D8 8C42003C */  lw         $v0, 0x3C($v0)
/* 5CC0C 800658DC 0040F809 */  jalr       $v0
/* 5CC10 800658E0 02E42021 */   addu      $a0, $s7, $a0
/* 5CC14 800658E4 03C02021 */  addu       $a0, $fp, $zero
/* 5CC18 800658E8 8FA8008C */  lw         $t0, 0x8C($sp)
/* 5CC1C 800658EC 4407A000 */  mfc1       $a3, $f20
/* 5CC20 800658F0 8D0300A8 */  lw         $v1, 0xA8($t0)
/* 5CC24 800658F4 8FA80078 */  lw         $t0, 0x78($sp)
/* 5CC28 800658F8 8C700024 */  lw         $s0, 0x24($v1)
/* 5CC2C 800658FC 00408821 */  addu       $s1, $v0, $zero
/* 5CC30 80065900 AFA80010 */  sw         $t0, 0x10($sp)
/* 5CC34 80065904 8FA8007C */  lw         $t0, 0x7C($sp)
/* 5CC38 80065908 8FA50090 */  lw         $a1, 0x90($sp)
/* 5CC3C 8006590C 01143021 */  addu       $a2, $t0, $s4
/* 5CC40 80065910 00061880 */  sll        $v1, $a2, 2
/* 5CC44 80065914 00661821 */  addu       $v1, $v1, $a2
/* 5CC48 80065918 00031880 */  sll        $v1, $v1, 2
/* 5CC4C 8006591C 02038021 */  addu       $s0, $s0, $v1
/* 5CC50 80065920 0C019C61 */  jal        func_80067184
/* 5CC54 80065924 02003021 */   addu      $a2, $s0, $zero
/* 5CC58 80065928 03C02021 */  addu       $a0, $fp, $zero
/* 5CC5C 8006592C 27A50018 */  addiu      $a1, $sp, 0x18
/* 5CC60 80065930 02003021 */  addu       $a2, $s0, $zero
/* 5CC64 80065934 4407A000 */  mfc1       $a3, $f20
/* 5CC68 80065938 8FA80078 */  lw         $t0, 0x78($sp)
/* 5CC6C 8006593C 00409821 */  addu       $s3, $v0, $zero
/* 5CC70 80065940 0C019D09 */  jal        func_80067424
/* 5CC74 80065944 AFA80010 */   sw        $t0, 0x10($sp)
/* 5CC78 80065948 AFA20088 */  sw         $v0, 0x88($sp)
/* 5CC7C 8006594C 8EC2005C */  lw         $v0, 0x5C($s6)
/* 5CC80 80065950 3C030002 */  lui        $v1, (0x20000 >> 16)
/* 5CC84 80065954 00431024 */  and        $v0, $v0, $v1
/* 5CC88 80065958 10400019 */  beqz       $v0, .L800659C0
/* 5CC8C 8006595C 03C02021 */   addu      $a0, $fp, $zero
/* 5CC90 80065960 8FA8008C */  lw         $t0, 0x8C($sp)
/* 5CC94 80065964 8D0200A8 */  lw         $v0, 0xA8($t0)
/* 5CC98 80065968 8FA80080 */  lw         $t0, 0x80($sp)
/* 5CC9C 8006596C 8C500024 */  lw         $s0, 0x24($v0)
/* 5CCA0 80065970 27A50048 */  addiu      $a1, $sp, 0x48
/* 5CCA4 80065974 AFA80010 */  sw         $t0, 0x10($sp)
/* 5CCA8 80065978 8FA80084 */  lw         $t0, 0x84($sp)
/* 5CCAC 8006597C 4407B000 */  mfc1       $a3, $f22
/* 5CCB0 80065980 01141821 */  addu       $v1, $t0, $s4
/* 5CCB4 80065984 00031080 */  sll        $v0, $v1, 2
/* 5CCB8 80065988 00431021 */  addu       $v0, $v0, $v1
/* 5CCBC 8006598C 00021080 */  sll        $v0, $v0, 2
/* 5CCC0 80065990 02028021 */  addu       $s0, $s0, $v0
/* 5CCC4 80065994 0C019C61 */  jal        func_80067184
/* 5CCC8 80065998 02003021 */   addu      $a2, $s0, $zero
/* 5CCCC 8006599C 00409021 */  addu       $s2, $v0, $zero
/* 5CCD0 800659A0 03C02021 */  addu       $a0, $fp, $zero
/* 5CCD4 800659A4 27A50028 */  addiu      $a1, $sp, 0x28
/* 5CCD8 800659A8 4407B000 */  mfc1       $a3, $f22
/* 5CCDC 800659AC 8FA80080 */  lw         $t0, 0x80($sp)
/* 5CCE0 800659B0 02003021 */  addu       $a2, $s0, $zero
/* 5CCE4 800659B4 0C019D09 */  jal        func_80067424
/* 5CCE8 800659B8 AFA80010 */   sw        $t0, 0x10($sp)
/* 5CCEC 800659BC 0040A821 */  addu       $s5, $v0, $zero
.L800659C0:
/* 5CCF0 800659C0 12600025 */  beqz       $s3, .L80065A58
/* 5CCF4 800659C4 00000000 */   nop
/* 5CCF8 800659C8 1240001F */  beqz       $s2, .L80065A48
/* 5CCFC 800659CC 27A50058 */   addiu     $a1, $sp, 0x58
/* 5CD00 800659D0 C7A60048 */  lwc1       $f6, 0x48($sp)
/* 5CD04 800659D4 C7AC0038 */  lwc1       $f12, 0x38($sp)
/* 5CD08 800659D8 C7A4004C */  lwc1       $f4, 0x4C($sp)
/* 5CD0C 800659DC 460C3181 */  sub.s      $f6, $f6, $f12
/* 5CD10 800659E0 C7AA003C */  lwc1       $f10, 0x3C($sp)
/* 5CD14 800659E4 C7A20050 */  lwc1       $f2, 0x50($sp)
/* 5CD18 800659E8 460A2101 */  sub.s      $f4, $f4, $f10
/* 5CD1C 800659EC C7A80040 */  lwc1       $f8, 0x40($sp)
/* 5CD20 800659F0 46081081 */  sub.s      $f2, $f2, $f8
/* 5CD24 800659F4 E7A60058 */  swc1       $f6, 0x58($sp)
/* 5CD28 800659F8 E7A4005C */  swc1       $f4, 0x5C($sp)
/* 5CD2C 800659FC E7A20060 */  swc1       $f2, 0x60($sp)
/* 5CD30 80065A00 C6C000EC */  lwc1       $f0, 0xEC($s6)
/* 5CD34 80065A04 46003182 */  mul.s      $f6, $f6, $f0
/* 5CD38 80065A08 00000000 */  nop
/* 5CD3C 80065A0C 46002102 */  mul.s      $f4, $f4, $f0
/* 5CD40 80065A10 00000000 */  nop
/* 5CD44 80065A14 46001082 */  mul.s      $f2, $f2, $f0
/* 5CD48 80065A18 46066300 */  add.s      $f12, $f12, $f6
/* 5CD4C 80065A1C 46045280 */  add.s      $f10, $f10, $f4
/* 5CD50 80065A20 46024200 */  add.s      $f8, $f8, $f2
/* 5CD54 80065A24 E7A60068 */  swc1       $f6, 0x68($sp)
/* 5CD58 80065A28 E7A4006C */  swc1       $f4, 0x6C($sp)
/* 5CD5C 80065A2C E7A20070 */  swc1       $f2, 0x70($sp)
/* 5CD60 80065A30 E7AC0058 */  swc1       $f12, 0x58($sp)
/* 5CD64 80065A34 E7AA005C */  swc1       $f10, 0x5C($sp)
/* 5CD68 80065A38 E7A80060 */  swc1       $f8, 0x60($sp)
/* 5CD6C 80065A3C 8E22000C */  lw         $v0, 0xC($s1)
/* 5CD70 80065A40 08019699 */  j          .L80065A64
/* 5CD74 80065A44 00000000 */   nop
.L80065A48:
/* 5CD78 80065A48 8E22000C */  lw         $v0, 0xC($s1)
/* 5CD7C 80065A4C 8FA50090 */  lw         $a1, 0x90($sp)
/* 5CD80 80065A50 08019699 */  j          .L80065A64
/* 5CD84 80065A54 00000000 */   nop
.L80065A58:
/* 5CD88 80065A58 12400006 */  beqz       $s2, .L80065A74
/* 5CD8C 80065A5C 27A50048 */   addiu     $a1, $sp, 0x48
/* 5CD90 80065A60 8E22000C */  lw         $v0, 0xC($s1)
.L80065A64:
/* 5CD94 80065A64 84440090 */  lh         $a0, 0x90($v0)
/* 5CD98 80065A68 8C420094 */  lw         $v0, 0x94($v0)
/* 5CD9C 80065A6C 0040F809 */  jalr       $v0
/* 5CDA0 80065A70 02242021 */   addu      $a0, $s1, $a0
.L80065A74:
/* 5CDA4 80065A74 8FA80088 */  lw         $t0, 0x88($sp)
/* 5CDA8 80065A78 1100000E */  beqz       $t0, .L80065AB4
/* 5CDAC 80065A7C 00000000 */   nop
/* 5CDB0 80065A80 12A00009 */  beqz       $s5, .L80065AA8
/* 5CDB4 80065A84 27A40018 */   addiu     $a0, $sp, 0x18
/* 5CDB8 80065A88 8EC600EC */  lw         $a2, 0xEC($s6)
/* 5CDBC 80065A8C 8FA70094 */  lw         $a3, 0x94($sp)
/* 5CDC0 80065A90 0C0012B8 */  jal        func_80004AE0
/* 5CDC4 80065A94 27A50028 */   addiu     $a1, $sp, 0x28
/* 5CDC8 80065A98 8E22000C */  lw         $v0, 0xC($s1)
/* 5CDCC 80065A9C 8FA50094 */  lw         $a1, 0x94($sp)
/* 5CDD0 80065AA0 080196B0 */  j          .L80065AC0
/* 5CDD4 80065AA4 00000000 */   nop
.L80065AA8:
/* 5CDD8 80065AA8 8E22000C */  lw         $v0, 0xC($s1)
/* 5CDDC 80065AAC 080196B0 */  j          .L80065AC0
/* 5CDE0 80065AB0 27A50018 */   addiu     $a1, $sp, 0x18
.L80065AB4:
/* 5CDE4 80065AB4 12A00006 */  beqz       $s5, .L80065AD0
/* 5CDE8 80065AB8 27A50028 */   addiu     $a1, $sp, 0x28
/* 5CDEC 80065ABC 8E22000C */  lw         $v0, 0xC($s1)
.L80065AC0:
/* 5CDF0 80065AC0 84440060 */  lh         $a0, 0x60($v0)
/* 5CDF4 80065AC4 8C420064 */  lw         $v0, 0x64($v0)
/* 5CDF8 80065AC8 0040F809 */  jalr       $v0
/* 5CDFC 80065ACC 02242021 */   addu      $a0, $s1, $a0
.L80065AD0:
/* 5CE00 80065AD0 08019628 */  j          .L800658A0
/* 5CE04 80065AD4 26940001 */   addiu     $s4, $s4, 0x1
.L80065AD8:
/* 5CE08 80065AD8 8FBF00BC */  lw         $ra, 0xBC($sp)
/* 5CE0C 80065ADC 8FBE00B8 */  lw         $fp, 0xB8($sp)
/* 5CE10 80065AE0 8FB700B4 */  lw         $s7, 0xB4($sp)
/* 5CE14 80065AE4 8FB600B0 */  lw         $s6, 0xB0($sp)
/* 5CE18 80065AE8 8FB500AC */  lw         $s5, 0xAC($sp)
/* 5CE1C 80065AEC 8FB400A8 */  lw         $s4, 0xA8($sp)
/* 5CE20 80065AF0 8FB300A4 */  lw         $s3, 0xA4($sp)
/* 5CE24 80065AF4 8FB200A0 */  lw         $s2, 0xA0($sp)
/* 5CE28 80065AF8 8FB1009C */  lw         $s1, 0x9C($sp)
/* 5CE2C 80065AFC 8FB00098 */  lw         $s0, 0x98($sp)
/* 5CE30 80065B00 D7B600C8 */  ldc1       $f22, 0xC8($sp)
/* 5CE34 80065B04 D7B400C0 */  ldc1       $f20, 0xC0($sp)
/* 5CE38 80065B08 03E00008 */  jr         $ra
/* 5CE3C 80065B0C 27BD00D0 */   addiu     $sp, $sp, 0xD0

glabel func_80065B10
/* 5CE40 80065B10 00804821 */  addu       $t1, $a0, $zero
/* 5CE44 80065B14 00A05021 */  addu       $t2, $a1, $zero
/* 5CE48 80065B18 C7A20010 */  lwc1       $f2, 0x10($sp)
/* 5CE4C 80065B1C 00004021 */  addu       $t0, $zero, $zero
/* 5CE50 80065B20 01201821 */  addu       $v1, $t1, $zero
.L80065B24:
/* 5CE54 80065B24 8C620078 */  lw         $v0, 0x78($v1)
/* 5CE58 80065B28 1040001F */  beqz       $v0, .L80065BA8
/* 5CE5C 80065B2C 00081080 */   sll       $v0, $t0, 2
/* 5CE60 80065B30 C4600084 */  lwc1       $f0, 0x84($v1)
/* 5CE64 80065B34 4600103C */  c.lt.s     $f2, $f0
/* 5CE68 80065B38 00000000 */  nop
/* 5CE6C 80065B3C 45000015 */  bc1f       .L80065B94
/* 5CE70 80065B40 24050002 */   addiu     $a1, $zero, 0x2
/* 5CE74 80065B44 0105102B */  sltu       $v0, $t0, $a1
/* 5CE78 80065B48 10400017 */  beqz       $v0, .L80065BA8
/* 5CE7C 80065B4C 00081080 */   sll       $v0, $t0, 2
.L80065B50:
/* 5CE80 80065B50 00052080 */  sll        $a0, $a1, 2
/* 5CE84 80065B54 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 5CE88 80065B58 00051880 */  sll        $v1, $a1, 2
/* 5CE8C 80065B5C 01231821 */  addu       $v1, $t1, $v1
/* 5CE90 80065B60 8C620078 */  lw         $v0, 0x78($v1)
/* 5CE94 80065B64 01242021 */  addu       $a0, $t1, $a0
/* 5CE98 80065B68 AC820078 */  sw         $v0, 0x78($a0)
/* 5CE9C 80065B6C 8C620090 */  lw         $v0, 0x90($v1)
/* 5CEA0 80065B70 AC820090 */  sw         $v0, 0x90($a0)
/* 5CEA4 80065B74 8C6200A8 */  lw         $v0, 0xA8($v1)
/* 5CEA8 80065B78 AC8200A8 */  sw         $v0, 0xA8($a0)
/* 5CEAC 80065B7C C4600084 */  lwc1       $f0, 0x84($v1)
/* 5CEB0 80065B80 0105102B */  sltu       $v0, $t0, $a1
/* 5CEB4 80065B84 1440FFF2 */  bnez       $v0, .L80065B50
/* 5CEB8 80065B88 E4800084 */   swc1      $f0, 0x84($a0)
/* 5CEBC 80065B8C 080196EA */  j          .L80065BA8
/* 5CEC0 80065B90 00081080 */   sll       $v0, $t0, 2
.L80065B94:
/* 5CEC4 80065B94 25080001 */  addiu      $t0, $t0, 0x1
/* 5CEC8 80065B98 2D020002 */  sltiu      $v0, $t0, 0x2
/* 5CECC 80065B9C 1440FFE1 */  bnez       $v0, .L80065B24
/* 5CED0 80065BA0 24630004 */   addiu     $v1, $v1, 0x4
/* 5CED4 80065BA4 00081080 */  sll        $v0, $t0, 2
.L80065BA8:
/* 5CED8 80065BA8 01221021 */  addu       $v0, $t1, $v0
/* 5CEDC 80065BAC 2403FFFF */  addiu      $v1, $zero, -0x1
/* 5CEE0 80065BB0 AC4A0078 */  sw         $t2, 0x78($v0)
/* 5CEE4 80065BB4 AC460090 */  sw         $a2, 0x90($v0)
/* 5CEE8 80065BB8 AC43009C */  sw         $v1, 0x9C($v0)
/* 5CEEC 80065BBC AC4700A8 */  sw         $a3, 0xA8($v0)
/* 5CEF0 80065BC0 03E00008 */  jr         $ra
/* 5CEF4 80065BC4 E4420084 */   swc1      $f2, 0x84($v0)

glabel func_80065BC8
/* 5CEF8 80065BC8 00804021 */  addu       $t0, $a0, $zero
/* 5CEFC 80065BCC 00A04821 */  addu       $t1, $a1, $zero
/* 5CF00 80065BD0 44871000 */  mtc1       $a3, $f2
/* 5CF04 80065BD4 00003821 */  addu       $a3, $zero, $zero
/* 5CF08 80065BD8 01001821 */  addu       $v1, $t0, $zero
.L80065BDC:
/* 5CF0C 80065BDC 8C620090 */  lw         $v0, 0x90($v1)
/* 5CF10 80065BE0 1040001D */  beqz       $v0, .L80065C58
/* 5CF14 80065BE4 00071080 */   sll       $v0, $a3, 2
/* 5CF18 80065BE8 C4600084 */  lwc1       $f0, 0x84($v1)
/* 5CF1C 80065BEC 4600103C */  c.lt.s     $f2, $f0
/* 5CF20 80065BF0 00000000 */  nop
/* 5CF24 80065BF4 45000013 */  bc1f       .L80065C44
/* 5CF28 80065BF8 24050002 */   addiu     $a1, $zero, 0x2
/* 5CF2C 80065BFC 00E5102B */  sltu       $v0, $a3, $a1
/* 5CF30 80065C00 10400015 */  beqz       $v0, .L80065C58
/* 5CF34 80065C04 00071080 */   sll       $v0, $a3, 2
.L80065C08:
/* 5CF38 80065C08 00052080 */  sll        $a0, $a1, 2
/* 5CF3C 80065C0C 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 5CF40 80065C10 00051880 */  sll        $v1, $a1, 2
/* 5CF44 80065C14 01031821 */  addu       $v1, $t0, $v1
/* 5CF48 80065C18 8C620090 */  lw         $v0, 0x90($v1)
/* 5CF4C 80065C1C 01042021 */  addu       $a0, $t0, $a0
/* 5CF50 80065C20 AC820090 */  sw         $v0, 0x90($a0)
/* 5CF54 80065C24 8C6200A8 */  lw         $v0, 0xA8($v1)
/* 5CF58 80065C28 AC8200A8 */  sw         $v0, 0xA8($a0)
/* 5CF5C 80065C2C C4600084 */  lwc1       $f0, 0x84($v1)
/* 5CF60 80065C30 00E5102B */  sltu       $v0, $a3, $a1
/* 5CF64 80065C34 1440FFF4 */  bnez       $v0, .L80065C08
/* 5CF68 80065C38 E4800084 */   swc1      $f0, 0x84($a0)
/* 5CF6C 80065C3C 08019716 */  j          .L80065C58
/* 5CF70 80065C40 00071080 */   sll       $v0, $a3, 2
.L80065C44:
/* 5CF74 80065C44 24E70001 */  addiu      $a3, $a3, 0x1
/* 5CF78 80065C48 2CE20002 */  sltiu      $v0, $a3, 0x2
/* 5CF7C 80065C4C 1440FFE3 */  bnez       $v0, .L80065BDC
/* 5CF80 80065C50 24630004 */   addiu     $v1, $v1, 0x4
/* 5CF84 80065C54 00071080 */  sll        $v0, $a3, 2
.L80065C58:
/* 5CF88 80065C58 01021021 */  addu       $v0, $t0, $v0
/* 5CF8C 80065C5C 2403FFFF */  addiu      $v1, $zero, -0x1
/* 5CF90 80065C60 AC490090 */  sw         $t1, 0x90($v0)
/* 5CF94 80065C64 AC43009C */  sw         $v1, 0x9C($v0)
/* 5CF98 80065C68 AC4600A8 */  sw         $a2, 0xA8($v0)
/* 5CF9C 80065C6C 03E00008 */  jr         $ra
/* 5CFA0 80065C70 E4420084 */   swc1      $f2, 0x84($v0)

glabel func_80065C74
/* 5CFA4 80065C74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5CFA8 80065C78 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5CFAC 80065C7C 0C019724 */  jal        func_80065C90
/* 5CFB0 80065C80 00003021 */   addu      $a2, $zero, $zero
/* 5CFB4 80065C84 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5CFB8 80065C88 03E00008 */  jr         $ra
/* 5CFBC 80065C8C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80065C90
/* 5CFC0 80065C90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5CFC4 80065C94 AFB10014 */  sw         $s1, 0x14($sp)
/* 5CFC8 80065C98 00808821 */  addu       $s1, $a0, $zero
/* 5CFCC 80065C9C AFB00010 */  sw         $s0, 0x10($sp)
/* 5CFD0 80065CA0 00A08021 */  addu       $s0, $a1, $zero
/* 5CFD4 80065CA4 AFB20018 */  sw         $s2, 0x18($sp)
/* 5CFD8 80065CA8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 5CFDC 80065CAC 0C0195AD */  jal        func_800656B4
/* 5CFE0 80065CB0 00C09021 */   addu      $s2, $a2, $zero
/* 5CFE4 80065CB4 3C03FFA1 */  lui        $v1, (0xFFA1FFFF >> 16)
/* 5CFE8 80065CB8 3463FFFF */  ori        $v1, $v1, (0xFFA1FFFF & 0xFFFF)
/* 5CFEC 80065CBC A63000BC */  sh         $s0, 0xBC($s1)
/* 5CFF0 80065CC0 3204FFFF */  andi       $a0, $s0, 0xFFFF
/* 5CFF4 80065CC4 8E22005C */  lw         $v0, 0x5C($s1)
/* 5CFF8 80065CC8 3C018004 */  lui        $at, %hi(D_8003E48C)
/* 5CFFC 80065CCC C420E48C */  lwc1       $f0, %lo(D_8003E48C)($at)
/* 5D000 80065CD0 00431024 */  and        $v0, $v0, $v1
/* 5D004 80065CD4 3C030004 */  lui        $v1, (0x40000 >> 16)
/* 5D008 80065CD8 00431025 */  or         $v0, $v0, $v1
/* 5D00C 80065CDC AE22005C */  sw         $v0, 0x5C($s1)
/* 5D010 80065CE0 00041080 */  sll        $v0, $a0, 2
/* 5D014 80065CE4 8E2300A8 */  lw         $v1, 0xA8($s1)
/* 5D018 80065CE8 00441021 */  addu       $v0, $v0, $a0
/* 5D01C 80065CEC E620000C */  swc1       $f0, 0xC($s1)
/* 5D020 80065CF0 8C63002C */  lw         $v1, 0x2C($v1)
/* 5D024 80065CF4 000210C0 */  sll        $v0, $v0, 3
/* 5D028 80065CF8 00431021 */  addu       $v0, $v0, $v1
/* 5D02C 80065CFC C4420000 */  lwc1       $f2, 0x0($v0)
/* 5D030 80065D00 12400006 */  beqz       $s2, .L80065D1C
/* 5D034 80065D04 E62200B8 */   swc1      $f2, 0xB8($s1)
/* 5D038 80065D08 44920000 */  mtc1       $s2, $f0
/* 5D03C 80065D0C 46800020 */  cvt.s.w    $f0, $f0
/* 5D040 80065D10 46020002 */  mul.s      $f0, $f0, $f2
/* 5D044 80065D14 08019748 */  j          .L80065D20
/* 5D048 80065D18 E62000B4 */   swc1      $f0, 0xB4($s1)
.L80065D1C:
/* 5D04C 80065D1C AE2000B4 */  sw         $zero, 0xB4($s1)
.L80065D20:
/* 5D050 80065D20 962300BC */  lhu        $v1, 0xBC($s1)
/* 5D054 80065D24 8E2400A8 */  lw         $a0, 0xA8($s1)
/* 5D058 80065D28 00031080 */  sll        $v0, $v1, 2
/* 5D05C 80065D2C 00431021 */  addu       $v0, $v0, $v1
/* 5D060 80065D30 8C83002C */  lw         $v1, 0x2C($a0)
/* 5D064 80065D34 000210C0 */  sll        $v0, $v0, 3
/* 5D068 80065D38 00431021 */  addu       $v0, $v0, $v1
/* 5D06C 80065D3C 8C470004 */  lw         $a3, 0x4($v0)
/* 5D070 80065D40 8C480008 */  lw         $t0, 0x8($v0)
/* 5D074 80065D44 8C49000C */  lw         $t1, 0xC($v0)
/* 5D078 80065D48 AE2700C0 */  sw         $a3, 0xC0($s1)
/* 5D07C 80065D4C AE2800C4 */  sw         $t0, 0xC4($s1)
/* 5D080 80065D50 AE2900C8 */  sw         $t1, 0xC8($s1)
/* 5D084 80065D54 8E2700C0 */  lw         $a3, 0xC0($s1)
/* 5D088 80065D58 8E2800C4 */  lw         $t0, 0xC4($s1)
/* 5D08C 80065D5C 8E2900C8 */  lw         $t1, 0xC8($s1)
/* 5D090 80065D60 AE270018 */  sw         $a3, 0x18($s1)
/* 5D094 80065D64 AE28001C */  sw         $t0, 0x1C($s1)
/* 5D098 80065D68 AE290020 */  sw         $t1, 0x20($s1)
/* 5D09C 80065D6C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5D0A0 80065D70 8FB20018 */  lw         $s2, 0x18($sp)
/* 5D0A4 80065D74 8FB10014 */  lw         $s1, 0x14($sp)
/* 5D0A8 80065D78 8FB00010 */  lw         $s0, 0x10($sp)
/* 5D0AC 80065D7C 03E00008 */  jr         $ra
/* 5D0B0 80065D80 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80065D84
/* 5D0B4 80065D84 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5D0B8 80065D88 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 5D0BC 80065D8C 4487A000 */  mtc1       $a3, $f20
/* 5D0C0 80065D90 AFB00010 */  sw         $s0, 0x10($sp)
/* 5D0C4 80065D94 00808021 */  addu       $s0, $a0, $zero
/* 5D0C8 80065D98 AFB10014 */  sw         $s1, 0x14($sp)
/* 5D0CC 80065D9C 00A08821 */  addu       $s1, $a1, $zero
/* 5D0D0 80065DA0 AFB20018 */  sw         $s2, 0x18($sp)
/* 5D0D4 80065DA4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 5D0D8 80065DA8 8FB30048 */  lw         $s3, 0x48($sp)
/* 5D0DC 80065DAC AFBF0020 */  sw         $ra, 0x20($sp)
/* 5D0E0 80065DB0 0C0195AD */  jal        func_800656B4
/* 5D0E4 80065DB4 00C09021 */   addu      $s2, $a2, $zero
/* 5D0E8 80065DB8 1640001D */  bnez       $s2, .L80065E30
/* 5D0EC 80065DBC 3C030002 */   lui       $v1, (0x20000 >> 16)
/* 5D0F0 80065DC0 44800000 */  mtc1       $zero, $f0
/* 5D0F4 80065DC4 4600A032 */  c.eq.s     $f20, $f0
/* 5D0F8 80065DC8 00000000 */  nop
/* 5D0FC 80065DCC 4501000E */  bc1t       .L80065E08
/* 5D100 80065DD0 00003021 */   addu      $a2, $zero, $zero
/* 5D104 80065DD4 960300BC */  lhu        $v1, 0xBC($s0)
/* 5D108 80065DD8 8E0400A8 */  lw         $a0, 0xA8($s0)
/* 5D10C 80065DDC 00031080 */  sll        $v0, $v1, 2
/* 5D110 80065DE0 00431021 */  addu       $v0, $v0, $v1
/* 5D114 80065DE4 8C83002C */  lw         $v1, 0x2C($a0)
/* 5D118 80065DE8 000210C0 */  sll        $v0, $v0, 3
/* 5D11C 80065DEC 00431021 */  addu       $v0, $v0, $v1
/* 5D120 80065DF0 C4400000 */  lwc1       $f0, 0x0($v0)
/* 5D124 80065DF4 4600A003 */  div.s      $f0, $f20, $f0
/* 5D128 80065DF8 4600018D */  trunc.w.s  $f6, $f0
/* 5D12C 80065DFC 44063000 */  mfc1       $a2, $f6
/* 5D130 80065E00 08019783 */  j          .L80065E0C
/* 5D134 80065E04 02002021 */   addu      $a0, $s0, $zero
.L80065E08:
/* 5D138 80065E08 02002021 */  addu       $a0, $s0, $zero
.L80065E0C:
/* 5D13C 80065E0C 0C019724 */  jal        func_80065C90
/* 5D140 80065E10 02202821 */   addu      $a1, $s1, $zero
/* 5D144 80065E14 16600067 */  bnez       $s3, .L80065FB4
/* 5D148 80065E18 3C03FFFB */   lui       $v1, (0xFFFBFFFF >> 16)
/* 5D14C 80065E1C 8E02005C */  lw         $v0, 0x5C($s0)
/* 5D150 80065E20 3463FFFF */  ori        $v1, $v1, (0xFFFBFFFF & 0xFFFF)
/* 5D154 80065E24 00431024 */  and        $v0, $v0, $v1
/* 5D158 80065E28 080197ED */  j          .L80065FB4
/* 5D15C 80065E2C AE02005C */   sw        $v0, 0x5C($s0)
.L80065E30:
/* 5D160 80065E30 8E02005C */  lw         $v0, 0x5C($s0)
/* 5D164 80065E34 00431024 */  and        $v0, $v0, $v1
/* 5D168 80065E38 10400004 */  beqz       $v0, .L80065E4C
/* 5D16C 80065E3C 00000000 */   nop
/* 5D170 80065E40 960200D8 */  lhu        $v0, 0xD8($s0)
/* 5D174 80065E44 08019794 */  j          .L80065E50
/* 5D178 80065E48 00000000 */   nop
.L80065E4C:
/* 5D17C 80065E4C 960200BC */  lhu        $v0, 0xBC($s0)
.L80065E50:
/* 5D180 80065E50 12220058 */  beq        $s1, $v0, .L80065FB4
/* 5D184 80065E54 3C030002 */   lui       $v1, (0x20000 >> 16)
/* 5D188 80065E58 8E02005C */  lw         $v0, 0x5C($s0)
/* 5D18C 80065E5C 00431024 */  and        $v0, $v0, $v1
/* 5D190 80065E60 10400022 */  beqz       $v0, .L80065EEC
/* 5D194 80065E64 3C02FFA7 */   lui       $v0, (0xFFA7FFFF >> 16)
/* 5D198 80065E68 C60000D4 */  lwc1       $f0, 0xD4($s0)
/* 5D19C 80065E6C C60200D0 */  lwc1       $f2, 0xD0($s0)
/* 5D1A0 80065E70 960200D8 */  lhu        $v0, 0xD8($s0)
/* 5D1A4 80065E74 3C018004 */  lui        $at, %hi(D_8003E490)
/* 5D1A8 80065E78 C424E490 */  lwc1       $f4, %lo(D_8003E490)($at)
/* 5D1AC 80065E7C E60000B8 */  swc1       $f0, 0xB8($s0)
/* 5D1B0 80065E80 E60200B4 */  swc1       $f2, 0xB4($s0)
/* 5D1B4 80065E84 A60200BC */  sh         $v0, 0xBC($s0)
/* 5D1B8 80065E88 E604000C */  swc1       $f4, 0xC($s0)
/* 5D1BC 80065E8C 8E0900DC */  lw         $t1, 0xDC($s0)
/* 5D1C0 80065E90 8E0A00E0 */  lw         $t2, 0xE0($s0)
/* 5D1C4 80065E94 8E0B00E4 */  lw         $t3, 0xE4($s0)
/* 5D1C8 80065E98 AE0900C0 */  sw         $t1, 0xC0($s0)
/* 5D1CC 80065E9C AE0A00C4 */  sw         $t2, 0xC4($s0)
/* 5D1D0 80065EA0 AE0B00C8 */  sw         $t3, 0xC8($s0)
/* 5D1D4 80065EA4 8E0900DC */  lw         $t1, 0xDC($s0)
/* 5D1D8 80065EA8 8E0A00E0 */  lw         $t2, 0xE0($s0)
/* 5D1DC 80065EAC 8E0B00E4 */  lw         $t3, 0xE4($s0)
/* 5D1E0 80065EB0 AE090018 */  sw         $t1, 0x18($s0)
/* 5D1E4 80065EB4 AE0A001C */  sw         $t2, 0x1C($s0)
/* 5D1E8 80065EB8 AE0B0020 */  sw         $t3, 0x20($s0)
/* 5D1EC 80065EBC 8E03005C */  lw         $v1, 0x5C($s0)
/* 5D1F0 80065EC0 3C020040 */  lui        $v0, (0x400000 >> 16)
/* 5D1F4 80065EC4 00621024 */  and        $v0, $v1, $v0
/* 5D1F8 80065EC8 10400003 */  beqz       $v0, .L80065ED8
/* 5D1FC 80065ECC 3C020004 */   lui       $v0, (0x40000 >> 16)
/* 5D200 80065ED0 080197B9 */  j          .L80065EE4
/* 5D204 80065ED4 00621025 */   or        $v0, $v1, $v0
.L80065ED8:
/* 5D208 80065ED8 3C02FFFB */  lui        $v0, (0xFFFBFFFF >> 16)
/* 5D20C 80065EDC 3442FFFF */  ori        $v0, $v0, (0xFFFBFFFF & 0xFFFF)
/* 5D210 80065EE0 00621024 */  and        $v0, $v1, $v0
.L80065EE4:
/* 5D214 80065EE4 AE02005C */  sw         $v0, 0x5C($s0)
/* 5D218 80065EE8 3C02FFA7 */  lui        $v0, (0xFFA7FFFF >> 16)
.L80065EEC:
/* 5D21C 80065EEC 8E03005C */  lw         $v1, 0x5C($s0)
/* 5D220 80065EF0 3442FFFF */  ori        $v0, $v0, (0xFFA7FFFF & 0xFFFF)
/* 5D224 80065EF4 A61100D8 */  sh         $s1, 0xD8($s0)
/* 5D228 80065EF8 00621824 */  and        $v1, $v1, $v0
/* 5D22C 80065EFC 3C020002 */  lui        $v0, (0x20000 >> 16)
/* 5D230 80065F00 00621825 */  or         $v1, $v1, $v0
/* 5D234 80065F04 12600004 */  beqz       $s3, .L80065F18
/* 5D238 80065F08 AE03005C */   sw        $v1, 0x5C($s0)
/* 5D23C 80065F0C 3C020040 */  lui        $v0, (0x400000 >> 16)
/* 5D240 80065F10 00621025 */  or         $v0, $v1, $v0
/* 5D244 80065F14 AE02005C */  sw         $v0, 0x5C($s0)
.L80065F18:
/* 5D248 80065F18 960300D8 */  lhu        $v1, 0xD8($s0)
/* 5D24C 80065F1C 8E0400A8 */  lw         $a0, 0xA8($s0)
/* 5D250 80065F20 3C018004 */  lui        $at, %hi(D_8003E494)
/* 5D254 80065F24 C420E494 */  lwc1       $f0, %lo(D_8003E494)($at)
/* 5D258 80065F28 00031080 */  sll        $v0, $v1, 2
/* 5D25C 80065F2C 00431021 */  addu       $v0, $v0, $v1
/* 5D260 80065F30 8C83002C */  lw         $v1, 0x2C($a0)
/* 5D264 80065F34 000210C0 */  sll        $v0, $v0, 3
/* 5D268 80065F38 00431021 */  addu       $v0, $v0, $v1
/* 5D26C 80065F3C C4440000 */  lwc1       $f4, 0x0($v0)
/* 5D270 80065F40 44921000 */  mtc1       $s2, $f2
/* 5D274 80065F44 468010A0 */  cvt.s.w    $f2, $f2
/* 5D278 80065F48 E61400D0 */  swc1       $f20, 0xD0($s0)
/* 5D27C 80065F4C AE0000EC */  sw         $zero, 0xEC($s0)
/* 5D280 80065F50 8FA20040 */  lw         $v0, 0x40($sp)
/* 5D284 80065F54 46020003 */  div.s      $f0, $f0, $f2
/* 5D288 80065F58 E60000F0 */  swc1       $f0, 0xF0($s0)
/* 5D28C 80065F5C AE0200CC */  sw         $v0, 0xCC($s0)
/* 5D290 80065F60 00401821 */  addu       $v1, $v0, $zero
/* 5D294 80065F64 8FA20044 */  lw         $v0, 0x44($sp)
/* 5D298 80065F68 E60400D4 */  swc1       $f4, 0xD4($s0)
/* 5D29C 80065F6C 14600004 */  bnez       $v1, .L80065F80
/* 5D2A0 80065F70 AE0200E8 */   sw        $v0, 0xE8($s0)
/* 5D2A4 80065F74 AE0000C0 */  sw         $zero, 0xC0($s0)
/* 5D2A8 80065F78 AE0000C4 */  sw         $zero, 0xC4($s0)
/* 5D2AC 80065F7C AE0000C8 */  sw         $zero, 0xC8($s0)
.L80065F80:
/* 5D2B0 80065F80 960300D8 */  lhu        $v1, 0xD8($s0)
/* 5D2B4 80065F84 8E0400A8 */  lw         $a0, 0xA8($s0)
/* 5D2B8 80065F88 00031080 */  sll        $v0, $v1, 2
/* 5D2BC 80065F8C 00431021 */  addu       $v0, $v0, $v1
/* 5D2C0 80065F90 8C83002C */  lw         $v1, 0x2C($a0)
/* 5D2C4 80065F94 000210C0 */  sll        $v0, $v0, 3
/* 5D2C8 80065F98 00431021 */  addu       $v0, $v0, $v1
/* 5D2CC 80065F9C 8C490004 */  lw         $t1, 0x4($v0)
/* 5D2D0 80065FA0 8C4A0008 */  lw         $t2, 0x8($v0)
/* 5D2D4 80065FA4 8C4B000C */  lw         $t3, 0xC($v0)
/* 5D2D8 80065FA8 AE0900DC */  sw         $t1, 0xDC($s0)
/* 5D2DC 80065FAC AE0A00E0 */  sw         $t2, 0xE0($s0)
/* 5D2E0 80065FB0 AE0B00E4 */  sw         $t3, 0xE4($s0)
.L80065FB4:
/* 5D2E4 80065FB4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 5D2E8 80065FB8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5D2EC 80065FBC 8FB20018 */  lw         $s2, 0x18($sp)
/* 5D2F0 80065FC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 5D2F4 80065FC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 5D2F8 80065FC8 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 5D2FC 80065FCC 03E00008 */  jr         $ra
/* 5D300 80065FD0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80065FD4
/* 5D304 80065FD4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5D308 80065FD8 AFB00020 */  sw         $s0, 0x20($sp)
/* 5D30C 80065FDC 00808021 */  addu       $s0, $a0, $zero
/* 5D310 80065FE0 AFB10024 */  sw         $s1, 0x24($sp)
/* 5D314 80065FE4 3C02FDFF */  lui        $v0, (0xFDFFFFFF >> 16)
/* 5D318 80065FE8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 5D31C 80065FEC 8E03005C */  lw         $v1, 0x5C($s0)
/* 5D320 80065FF0 3442FFFF */  ori        $v0, $v0, (0xFDFFFFFF & 0xFFFF)
/* 5D324 80065FF4 00621824 */  and        $v1, $v1, $v0
/* 5D328 80065FF8 3C020001 */  lui        $v0, (0x10000 >> 16)
/* 5D32C 80065FFC AE03005C */  sw         $v1, 0x5C($s0)
/* 5D330 80066000 00621824 */  and        $v1, $v1, $v0
/* 5D334 80066004 106000D7 */  beqz       $v1, .L80066364
/* 5D338 80066008 00A08821 */   addu      $s1, $a1, $zero
/* 5D33C 8006600C 0C0195AD */  jal        func_800656B4
/* 5D340 80066010 00000000 */   nop
/* 5D344 80066014 8E02005C */  lw         $v0, 0x5C($s0)
/* 5D348 80066018 3C030002 */  lui        $v1, (0x20000 >> 16)
/* 5D34C 8006601C 00431024 */  and        $v0, $v0, $v1
/* 5D350 80066020 1040009F */  beqz       $v0, .L800662A0
/* 5D354 80066024 00000000 */   nop
/* 5D358 80066028 C60000F0 */  lwc1       $f0, 0xF0($s0)
/* 5D35C 8006602C 44912000 */  mtc1       $s1, $f4
/* 5D360 80066030 46802120 */  cvt.s.w    $f4, $f4
/* 5D364 80066034 46002002 */  mul.s      $f0, $f4, $f0
/* 5D368 80066038 C60200EC */  lwc1       $f2, 0xEC($s0)
/* 5D36C 8006603C 3C018004 */  lui        $at, %hi(D_8003E498)
/* 5D370 80066040 C426E498 */  lwc1       $f6, %lo(D_8003E498)($at)
/* 5D374 80066044 46001080 */  add.s      $f2, $f2, $f0
/* 5D378 80066048 3C018004 */  lui        $at, %hi(D_8003E49C)
/* 5D37C 8006604C C420E49C */  lwc1       $f0, %lo(D_8003E49C)($at)
/* 5D380 80066050 E600000C */  swc1       $f0, 0xC($s0)
/* 5D384 80066054 4602303E */  c.le.s     $f6, $f2
/* 5D388 80066058 00000000 */  nop
/* 5D38C 8006605C 45000027 */  bc1f       .L800660FC
/* 5D390 80066060 E60200EC */   swc1      $f2, 0xEC($s0)
/* 5D394 80066064 3C04FFE9 */  lui        $a0, (0xFFE9FFFF >> 16)
/* 5D398 80066068 3484FFFF */  ori        $a0, $a0, (0xFFE9FFFF & 0xFFFF)
/* 5D39C 8006606C 8E02005C */  lw         $v0, 0x5C($s0)
/* 5D3A0 80066070 C60000D4 */  lwc1       $f0, 0xD4($s0)
/* 5D3A4 80066074 C60200D0 */  lwc1       $f2, 0xD0($s0)
/* 5D3A8 80066078 960300D8 */  lhu        $v1, 0xD8($s0)
/* 5D3AC 8006607C 00441024 */  and        $v0, $v0, $a0
/* 5D3B0 80066080 AE02005C */  sw         $v0, 0x5C($s0)
/* 5D3B4 80066084 E60000B8 */  swc1       $f0, 0xB8($s0)
/* 5D3B8 80066088 E60200B4 */  swc1       $f2, 0xB4($s0)
/* 5D3BC 8006608C A60300BC */  sh         $v1, 0xBC($s0)
/* 5D3C0 80066090 8E0600DC */  lw         $a2, 0xDC($s0)
/* 5D3C4 80066094 8E0700E0 */  lw         $a3, 0xE0($s0)
/* 5D3C8 80066098 8E0800E4 */  lw         $t0, 0xE4($s0)
/* 5D3CC 8006609C AE0600C0 */  sw         $a2, 0xC0($s0)
/* 5D3D0 800660A0 AE0700C4 */  sw         $a3, 0xC4($s0)
/* 5D3D4 800660A4 AE0800C8 */  sw         $t0, 0xC8($s0)
/* 5D3D8 800660A8 8E0600DC */  lw         $a2, 0xDC($s0)
/* 5D3DC 800660AC 8E0700E0 */  lw         $a3, 0xE0($s0)
/* 5D3E0 800660B0 8E0800E4 */  lw         $t0, 0xE4($s0)
/* 5D3E4 800660B4 AE060018 */  sw         $a2, 0x18($s0)
/* 5D3E8 800660B8 AE07001C */  sw         $a3, 0x1C($s0)
/* 5D3EC 800660BC AE080020 */  sw         $t0, 0x20($s0)
/* 5D3F0 800660C0 C60000EC */  lwc1       $f0, 0xEC($s0)
/* 5D3F4 800660C4 46060001 */  sub.s      $f0, $f0, $f6
/* 5D3F8 800660C8 C60200F0 */  lwc1       $f2, 0xF0($s0)
/* 5D3FC 800660CC 8E03005C */  lw         $v1, 0x5C($s0)
/* 5D400 800660D0 46020003 */  div.s      $f0, $f0, $f2
/* 5D404 800660D4 4600020D */  trunc.w.s  $f8, $f0
/* 5D408 800660D8 44024000 */  mfc1       $v0, $f8
/* 5D40C 800660DC 02228823 */  subu       $s1, $s1, $v0
/* 5D410 800660E0 3C020040 */  lui        $v0, (0x400000 >> 16)
/* 5D414 800660E4 00621024 */  and        $v0, $v1, $v0
/* 5D418 800660E8 10400068 */  beqz       $v0, .L8006628C
/* 5D41C 800660EC 3C020004 */   lui       $v0, (0x40000 >> 16)
/* 5D420 800660F0 00621025 */  or         $v0, $v1, $v0
/* 5D424 800660F4 080198A3 */  j          .L8006628C
/* 5D428 800660F8 AE02005C */   sw        $v0, 0x5C($s0)
.L800660FC:
/* 5D42C 800660FC 8E0200CC */  lw         $v0, 0xCC($s0)
/* 5D430 80066100 1040001D */  beqz       $v0, .L80066178
/* 5D434 80066104 00000000 */   nop
/* 5D438 80066108 C60000B8 */  lwc1       $f0, 0xB8($s0)
/* 5D43C 8006610C 46002002 */  mul.s      $f0, $f4, $f0
/* 5D440 80066110 C60200B4 */  lwc1       $f2, 0xB4($s0)
/* 5D444 80066114 960400BC */  lhu        $a0, 0xBC($s0)
/* 5D448 80066118 8E0300A8 */  lw         $v1, 0xA8($s0)
/* 5D44C 8006611C 46001080 */  add.s      $f2, $f2, $f0
/* 5D450 80066120 00041080 */  sll        $v0, $a0, 2
/* 5D454 80066124 00441021 */  addu       $v0, $v0, $a0
/* 5D458 80066128 E60200B4 */  swc1       $f2, 0xB4($s0)
/* 5D45C 8006612C 8C63002C */  lw         $v1, 0x2C($v1)
/* 5D460 80066130 000210C0 */  sll        $v0, $v0, 3
/* 5D464 80066134 00432021 */  addu       $a0, $v0, $v1
/* 5D468 80066138 94820024 */  lhu        $v0, 0x24($a0)
/* 5D46C 8006613C 2442FFFF */  addiu      $v0, $v0, -0x1
/* 5D470 80066140 44820000 */  mtc1       $v0, $f0
/* 5D474 80066144 46800020 */  cvt.s.w    $f0, $f0
/* 5D478 80066148 4602003C */  c.lt.s     $f0, $f2
/* 5D47C 8006614C 00000000 */  nop
/* 5D480 80066150 45000009 */  bc1f       .L80066178
/* 5D484 80066154 3C030004 */   lui       $v1, (0x40000 >> 16)
/* 5D488 80066158 8E02005C */  lw         $v0, 0x5C($s0)
/* 5D48C 8006615C 00431024 */  and        $v0, $v0, $v1
/* 5D490 80066160 50400005 */  beql       $v0, $zero, .L80066178
/* 5D494 80066164 E60000B4 */   swc1      $f0, 0xB4($s0)
/* 5D498 80066168 44051000 */  mfc1       $a1, $f2
/* 5D49C 8006616C 0C01932A */  jal        func_80064CA8
/* 5D4A0 80066170 00000000 */   nop
/* 5D4A4 80066174 E60000B4 */  swc1       $f0, 0xB4($s0)
.L80066178:
/* 5D4A8 80066178 8E0200E8 */  lw         $v0, 0xE8($s0)
/* 5D4AC 8006617C 1040001F */  beqz       $v0, .L800661FC
/* 5D4B0 80066180 00000000 */   nop
/* 5D4B4 80066184 C60200D4 */  lwc1       $f2, 0xD4($s0)
/* 5D4B8 80066188 44910000 */  mtc1       $s1, $f0
/* 5D4BC 8006618C 46800020 */  cvt.s.w    $f0, $f0
/* 5D4C0 80066190 46020002 */  mul.s      $f0, $f0, $f2
/* 5D4C4 80066194 960400D8 */  lhu        $a0, 0xD8($s0)
/* 5D4C8 80066198 C60200D0 */  lwc1       $f2, 0xD0($s0)
/* 5D4CC 8006619C 8E0300A8 */  lw         $v1, 0xA8($s0)
/* 5D4D0 800661A0 46001080 */  add.s      $f2, $f2, $f0
/* 5D4D4 800661A4 00041080 */  sll        $v0, $a0, 2
/* 5D4D8 800661A8 00441021 */  addu       $v0, $v0, $a0
/* 5D4DC 800661AC E60200D0 */  swc1       $f2, 0xD0($s0)
/* 5D4E0 800661B0 8C63002C */  lw         $v1, 0x2C($v1)
/* 5D4E4 800661B4 000210C0 */  sll        $v0, $v0, 3
/* 5D4E8 800661B8 00432021 */  addu       $a0, $v0, $v1
/* 5D4EC 800661BC 94820024 */  lhu        $v0, 0x24($a0)
/* 5D4F0 800661C0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 5D4F4 800661C4 44820000 */  mtc1       $v0, $f0
/* 5D4F8 800661C8 46800020 */  cvt.s.w    $f0, $f0
/* 5D4FC 800661CC 4602003C */  c.lt.s     $f0, $f2
/* 5D500 800661D0 00000000 */  nop
/* 5D504 800661D4 45000009 */  bc1f       .L800661FC
/* 5D508 800661D8 3C030040 */   lui       $v1, (0x400000 >> 16)
/* 5D50C 800661DC 8E02005C */  lw         $v0, 0x5C($s0)
/* 5D510 800661E0 00431024 */  and        $v0, $v0, $v1
/* 5D514 800661E4 50400005 */  beql       $v0, $zero, .L800661FC
/* 5D518 800661E8 E60000D0 */   swc1      $f0, 0xD0($s0)
/* 5D51C 800661EC 44051000 */  mfc1       $a1, $f2
/* 5D520 800661F0 0C01932A */  jal        func_80064CA8
/* 5D524 800661F4 00000000 */   nop
/* 5D528 800661F8 E60000D0 */  swc1       $f0, 0xD0($s0)
.L800661FC:
/* 5D52C 800661FC C60000DC */  lwc1       $f0, 0xDC($s0)
/* 5D530 80066200 C60200C0 */  lwc1       $f2, 0xC0($s0)
/* 5D534 80066204 46020001 */  sub.s      $f0, $f0, $f2
/* 5D538 80066208 260300DC */  addiu      $v1, $s0, 0xDC
/* 5D53C 8006620C 260400C0 */  addiu      $a0, $s0, 0xC0
/* 5D540 80066210 E6000018 */  swc1       $f0, 0x18($s0)
/* 5D544 80066214 C4600004 */  lwc1       $f0, 0x4($v1)
/* 5D548 80066218 C4820004 */  lwc1       $f2, 0x4($a0)
/* 5D54C 8006621C 46020001 */  sub.s      $f0, $f0, $f2
/* 5D550 80066220 26020018 */  addiu      $v0, $s0, 0x18
/* 5D554 80066224 E4400004 */  swc1       $f0, 0x4($v0)
/* 5D558 80066228 C4600008 */  lwc1       $f0, 0x8($v1)
/* 5D55C 8006622C C4820008 */  lwc1       $f2, 0x8($a0)
/* 5D560 80066230 46020001 */  sub.s      $f0, $f0, $f2
/* 5D564 80066234 E4400008 */  swc1       $f0, 0x8($v0)
/* 5D568 80066238 C60200EC */  lwc1       $f2, 0xEC($s0)
/* 5D56C 8006623C C6040018 */  lwc1       $f4, 0x18($s0)
/* 5D570 80066240 46022102 */  mul.s      $f4, $f4, $f2
/* 5D574 80066244 E7A40010 */  swc1       $f4, 0x10($sp)
/* 5D578 80066248 C4400004 */  lwc1       $f0, 0x4($v0)
/* 5D57C 8006624C 46020002 */  mul.s      $f0, $f0, $f2
/* 5D580 80066250 E7A00014 */  swc1       $f0, 0x14($sp)
/* 5D584 80066254 C4400008 */  lwc1       $f0, 0x8($v0)
/* 5D588 80066258 46020002 */  mul.s      $f0, $f0, $f2
/* 5D58C 8006625C E7A00018 */  swc1       $f0, 0x18($sp)
/* 5D590 80066260 C60000C0 */  lwc1       $f0, 0xC0($s0)
/* 5D594 80066264 46040000 */  add.s      $f0, $f0, $f4
/* 5D598 80066268 E6000018 */  swc1       $f0, 0x18($s0)
/* 5D59C 8006626C C4800004 */  lwc1       $f0, 0x4($a0)
/* 5D5A0 80066270 C7A20014 */  lwc1       $f2, 0x14($sp)
/* 5D5A4 80066274 46020000 */  add.s      $f0, $f0, $f2
/* 5D5A8 80066278 E4400004 */  swc1       $f0, 0x4($v0)
/* 5D5AC 8006627C C4800008 */  lwc1       $f0, 0x8($a0)
/* 5D5B0 80066280 C7A20018 */  lwc1       $f2, 0x18($sp)
/* 5D5B4 80066284 46020000 */  add.s      $f0, $f0, $f2
/* 5D5B8 80066288 E4400008 */  swc1       $f0, 0x8($v0)
.L8006628C:
/* 5D5BC 8006628C 8E02005C */  lw         $v0, 0x5C($s0)
/* 5D5C0 80066290 3C030002 */  lui        $v1, (0x20000 >> 16)
/* 5D5C4 80066294 00431024 */  and        $v0, $v0, $v1
/* 5D5C8 80066298 14400033 */  bnez       $v0, .L80066368
/* 5D5CC 8006629C 02002021 */   addu      $a0, $s0, $zero
.L800662A0:
/* 5D5D0 800662A0 C60200B8 */  lwc1       $f2, 0xB8($s0)
/* 5D5D4 800662A4 44910000 */  mtc1       $s1, $f0
/* 5D5D8 800662A8 46800020 */  cvt.s.w    $f0, $f0
/* 5D5DC 800662AC 46020002 */  mul.s      $f0, $f0, $f2
/* 5D5E0 800662B0 960400BC */  lhu        $a0, 0xBC($s0)
/* 5D5E4 800662B4 C60200B4 */  lwc1       $f2, 0xB4($s0)
/* 5D5E8 800662B8 8E0300A8 */  lw         $v1, 0xA8($s0)
/* 5D5EC 800662BC 46001080 */  add.s      $f2, $f2, $f0
/* 5D5F0 800662C0 00041080 */  sll        $v0, $a0, 2
/* 5D5F4 800662C4 00441021 */  addu       $v0, $v0, $a0
/* 5D5F8 800662C8 E60200B4 */  swc1       $f2, 0xB4($s0)
/* 5D5FC 800662CC 8C63002C */  lw         $v1, 0x2C($v1)
/* 5D600 800662D0 000210C0 */  sll        $v0, $v0, 3
/* 5D604 800662D4 00432021 */  addu       $a0, $v0, $v1
/* 5D608 800662D8 94820024 */  lhu        $v0, 0x24($a0)
/* 5D60C 800662DC 2442FFFF */  addiu      $v0, $v0, -0x1
/* 5D610 800662E0 44820000 */  mtc1       $v0, $f0
/* 5D614 800662E4 46800020 */  cvt.s.w    $f0, $f0
/* 5D618 800662E8 4602003E */  c.le.s     $f0, $f2
/* 5D61C 800662EC 00000000 */  nop
/* 5D620 800662F0 4500001C */  bc1f       .L80066364
/* 5D624 800662F4 3C020004 */   lui       $v0, (0x40000 >> 16)
/* 5D628 800662F8 8E03005C */  lw         $v1, 0x5C($s0)
/* 5D62C 800662FC 00621024 */  and        $v0, $v1, $v0
/* 5D630 80066300 1040000E */  beqz       $v0, .L8006633C
/* 5D634 80066304 3C020010 */   lui       $v0, (0x100000 >> 16)
/* 5D638 80066308 44051000 */  mfc1       $a1, $f2
/* 5D63C 8006630C 0C01932A */  jal        func_80064CA8
/* 5D640 80066310 00000000 */   nop
/* 5D644 80066314 C60200B4 */  lwc1       $f2, 0xB4($s0)
/* 5D648 80066318 4602003C */  c.lt.s     $f0, $f2
/* 5D64C 8006631C 00000000 */  nop
/* 5D650 80066320 45000004 */  bc1f       .L80066334
/* 5D654 80066324 3C030200 */   lui       $v1, (0x2000000 >> 16)
/* 5D658 80066328 8E02005C */  lw         $v0, 0x5C($s0)
/* 5D65C 8006632C 00431025 */  or         $v0, $v0, $v1
/* 5D660 80066330 AE02005C */  sw         $v0, 0x5C($s0)
.L80066334:
/* 5D664 80066334 080198D9 */  j          .L80066364
/* 5D668 80066338 E60000B4 */   swc1      $f0, 0xB4($s0)
.L8006633C:
/* 5D66C 8006633C 00621024 */  and        $v0, $v1, $v0
/* 5D670 80066340 50400004 */  beql       $v0, $zero, .L80066354
/* 5D674 80066344 E60000B4 */   swc1      $f0, 0xB4($s0)
/* 5D678 80066348 960500D8 */  lhu        $a1, 0xD8($s0)
/* 5D67C 8006634C 0C01971D */  jal        func_80065C74
/* 5D680 80066350 02002021 */   addu      $a0, $s0, $zero
.L80066354:
/* 5D684 80066354 8E02005C */  lw         $v0, 0x5C($s0)
/* 5D688 80066358 3C030008 */  lui        $v1, (0x80000 >> 16)
/* 5D68C 8006635C 00431025 */  or         $v0, $v0, $v1
/* 5D690 80066360 AE02005C */  sw         $v0, 0x5C($s0)
.L80066364:
/* 5D694 80066364 02002021 */  addu       $a0, $s0, $zero
.L80066368:
/* 5D698 80066368 0C0161A1 */  jal        func_80058684
/* 5D69C 8006636C 02202821 */   addu      $a1, $s1, $zero
/* 5D6A0 80066370 8FBF0028 */  lw         $ra, 0x28($sp)
/* 5D6A4 80066374 8FB10024 */  lw         $s1, 0x24($sp)
/* 5D6A8 80066378 8FB00020 */  lw         $s0, 0x20($sp)
/* 5D6AC 8006637C 03E00008 */  jr         $ra
/* 5D6B0 80066380 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80066384
/* 5D6B4 80066384 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 5D6B8 80066388 AFB1003C */  sw         $s1, 0x3C($sp)
/* 5D6BC 8006638C 00808821 */  addu       $s1, $a0, $zero
/* 5D6C0 80066390 AFB00038 */  sw         $s0, 0x38($sp)
/* 5D6C4 80066394 00A08021 */  addu       $s0, $a1, $zero
/* 5D6C8 80066398 00101080 */  sll        $v0, $s0, 2
/* 5D6CC 8006639C 02222821 */  addu       $a1, $s1, $v0
/* 5D6D0 800663A0 AFBF0040 */  sw         $ra, 0x40($sp)
/* 5D6D4 800663A4 F7B40048 */  sdc1       $f20, 0x48($sp)
/* 5D6D8 800663A8 8CA40078 */  lw         $a0, 0x78($a1)
/* 5D6DC 800663AC 14800004 */  bnez       $a0, .L800663C0
/* 5D6E0 800663B0 3C030001 */   lui       $v1, (0x10000 >> 16)
/* 5D6E4 800663B4 02202021 */  addu       $a0, $s1, $zero
/* 5D6E8 800663B8 08019968 */  j          .L800665A0
/* 5D6EC 800663BC 00002821 */   addu      $a1, $zero, $zero
.L800663C0:
/* 5D6F0 800663C0 8E22005C */  lw         $v0, 0x5C($s1)
/* 5D6F4 800663C4 00431024 */  and        $v0, $v0, $v1
/* 5D6F8 800663C8 10400054 */  beqz       $v0, .L8006651C
/* 5D6FC 800663CC 00000000 */   nop
/* 5D700 800663D0 962300BC */  lhu        $v1, 0xBC($s1)
/* 5D704 800663D4 8CA400A8 */  lw         $a0, 0xA8($a1)
/* 5D708 800663D8 00031080 */  sll        $v0, $v1, 2
/* 5D70C 800663DC 00431021 */  addu       $v0, $v0, $v1
/* 5D710 800663E0 8C83002C */  lw         $v1, 0x2C($a0)
/* 5D714 800663E4 000210C0 */  sll        $v0, $v0, 3
/* 5D718 800663E8 00431021 */  addu       $v0, $v0, $v1
/* 5D71C 800663EC 8C470010 */  lw         $a3, 0x10($v0)
/* 5D720 800663F0 8C480014 */  lw         $t0, 0x14($v0)
/* 5D724 800663F4 8C490018 */  lw         $t1, 0x18($v0)
/* 5D728 800663F8 AFA70010 */  sw         $a3, 0x10($sp)
/* 5D72C 800663FC AFA80014 */  sw         $t0, 0x14($sp)
/* 5D730 80066400 AFA90018 */  sw         $t1, 0x18($sp)
/* 5D734 80066404 C440001C */  lwc1       $f0, 0x1C($v0)
/* 5D738 80066408 E7A00030 */  swc1       $f0, 0x30($sp)
/* 5D73C 8006640C 8E22005C */  lw         $v0, 0x5C($s1)
/* 5D740 80066410 3C030002 */  lui        $v1, (0x20000 >> 16)
/* 5D744 80066414 00431024 */  and        $v0, $v0, $v1
/* 5D748 80066418 10400039 */  beqz       $v0, .L80066500
/* 5D74C 8006641C 00101080 */   sll       $v0, $s0, 2
/* 5D750 80066420 962300D8 */  lhu        $v1, 0xD8($s1)
/* 5D754 80066424 8CA400A8 */  lw         $a0, 0xA8($a1)
/* 5D758 80066428 00031080 */  sll        $v0, $v1, 2
/* 5D75C 8006642C 00431021 */  addu       $v0, $v0, $v1
/* 5D760 80066430 8C83002C */  lw         $v1, 0x2C($a0)
/* 5D764 80066434 000210C0 */  sll        $v0, $v0, 3
/* 5D768 80066438 00431021 */  addu       $v0, $v0, $v1
/* 5D76C 8006643C 8C470010 */  lw         $a3, 0x10($v0)
/* 5D770 80066440 8C480014 */  lw         $t0, 0x14($v0)
/* 5D774 80066444 8C490018 */  lw         $t1, 0x18($v0)
/* 5D778 80066448 AFA70020 */  sw         $a3, 0x20($sp)
/* 5D77C 8006644C AFA80024 */  sw         $t0, 0x24($sp)
/* 5D780 80066450 AFA90028 */  sw         $t1, 0x28($sp)
/* 5D784 80066454 C7A00010 */  lwc1       $f0, 0x10($sp)
/* 5D788 80066458 C7AE0020 */  lwc1       $f14, 0x20($sp)
/* 5D78C 8006645C 460E0000 */  add.s      $f0, $f0, $f14
/* 5D790 80066460 3C018004 */  lui        $at, %hi(D_8003E4A0)
/* 5D794 80066464 C422E4A0 */  lwc1       $f2, %lo(D_8003E4A0)($at)
/* 5D798 80066468 46020102 */  mul.s      $f4, $f0, $f2
/* 5D79C 8006646C C7AC0024 */  lwc1       $f12, 0x24($sp)
/* 5D7A0 80066470 C7A00014 */  lwc1       $f0, 0x14($sp)
/* 5D7A4 80066474 460C0000 */  add.s      $f0, $f0, $f12
/* 5D7A8 80066478 46020202 */  mul.s      $f8, $f0, $f2
/* 5D7AC 8006647C C7AA0028 */  lwc1       $f10, 0x28($sp)
/* 5D7B0 80066480 C7A00018 */  lwc1       $f0, 0x18($sp)
/* 5D7B4 80066484 460A0000 */  add.s      $f0, $f0, $f10
/* 5D7B8 80066488 46020182 */  mul.s      $f6, $f0, $f2
/* 5D7BC 8006648C C442001C */  lwc1       $f2, 0x1C($v0)
/* 5D7C0 80066490 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 5D7C4 80066494 E7A40010 */  swc1       $f4, 0x10($sp)
/* 5D7C8 80066498 4602003C */  c.lt.s     $f0, $f2
/* 5D7CC 8006649C E7A20034 */  swc1       $f2, 0x34($sp)
/* 5D7D0 800664A0 E7A80014 */  swc1       $f8, 0x14($sp)
/* 5D7D4 800664A4 45000002 */  bc1f       .L800664B0
/* 5D7D8 800664A8 E7A60018 */   swc1      $f6, 0x18($sp)
/* 5D7DC 800664AC E7A20030 */  swc1       $f2, 0x30($sp)
.L800664B0:
/* 5D7E0 800664B0 460E2101 */  sub.s      $f4, $f4, $f14
/* 5D7E4 800664B4 46042102 */  mul.s      $f4, $f4, $f4
/* 5D7E8 800664B8 460C4081 */  sub.s      $f2, $f8, $f12
/* 5D7EC 800664BC 46021082 */  mul.s      $f2, $f2, $f2
/* 5D7F0 800664C0 460A3001 */  sub.s      $f0, $f6, $f10
/* 5D7F4 800664C4 46000002 */  mul.s      $f0, $f0, $f0
/* 5D7F8 800664C8 46022100 */  add.s      $f4, $f4, $f2
/* 5D7FC 800664CC 46002300 */  add.s      $f12, $f4, $f0
/* 5D800 800664D0 46006084 */  sqrt.s     $f2, $f12
/* 5D804 800664D4 46021032 */  c.eq.s     $f2, $f2
/* 5D808 800664D8 00000000 */  nop
/* 5D80C 800664DC 45010004 */  bc1t       .L800664F0
/* 5D810 800664E0 00000000 */   nop
/* 5D814 800664E4 0C006BC8 */  jal        sqrt
/* 5D818 800664E8 00000000 */   nop
/* 5D81C 800664EC 46000086 */  mov.s      $f2, $f0
.L800664F0:
/* 5D820 800664F0 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 5D824 800664F4 46020000 */  add.s      $f0, $f0, $f2
/* 5D828 800664F8 E7A00030 */  swc1       $f0, 0x30($sp)
/* 5D82C 800664FC 00101080 */  sll        $v0, $s0, 2
.L80066500:
/* 5D830 80066500 02221021 */  addu       $v0, $s1, $v0
/* 5D834 80066504 8C420078 */  lw         $v0, 0x78($v0)
/* 5D838 80066508 C6200058 */  lwc1       $f0, 0x58($s1)
/* 5D83C 8006650C C4420034 */  lwc1       $f2, 0x34($v0)
/* 5D840 80066510 46020502 */  mul.s      $f20, $f0, $f2
/* 5D844 80066514 08019950 */  j          .L80066540
/* 5D848 80066518 00000000 */   nop
.L8006651C:
/* 5D84C 8006651C 8C870024 */  lw         $a3, 0x24($a0)
/* 5D850 80066520 8C880028 */  lw         $t0, 0x28($a0)
/* 5D854 80066524 8C89002C */  lw         $t1, 0x2C($a0)
/* 5D858 80066528 AFA70010 */  sw         $a3, 0x10($sp)
/* 5D85C 8006652C AFA80014 */  sw         $t0, 0x14($sp)
/* 5D860 80066530 AFA90018 */  sw         $t1, 0x18($sp)
/* 5D864 80066534 C4800030 */  lwc1       $f0, 0x30($a0)
/* 5D868 80066538 C6340058 */  lwc1       $f20, 0x58($s1)
/* 5D86C 8006653C E7A00030 */  swc1       $f0, 0x30($sp)
.L80066540:
/* 5D870 80066540 C7A00010 */  lwc1       $f0, 0x10($sp)
/* 5D874 80066544 46140002 */  mul.s      $f0, $f0, $f20
/* 5D878 80066548 27A50010 */  addiu      $a1, $sp, 0x10
/* 5D87C 8006654C E7A00010 */  swc1       $f0, 0x10($sp)
/* 5D880 80066550 C4A20004 */  lwc1       $f2, 0x4($a1)
/* 5D884 80066554 46141082 */  mul.s      $f2, $f2, $f20
/* 5D888 80066558 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 5D88C 8006655C 46140002 */  mul.s      $f0, $f0, $f20
/* 5D890 80066560 27B00020 */  addiu      $s0, $sp, 0x20
/* 5D894 80066564 E4A20004 */  swc1       $f2, 0x4($a1)
/* 5D898 80066568 E4A00008 */  swc1       $f0, 0x8($a1)
/* 5D89C 8006656C 8E220024 */  lw         $v0, 0x24($s1)
/* 5D8A0 80066570 02003021 */  addu       $a2, $s0, $zero
/* 5D8A4 80066574 84440060 */  lh         $a0, 0x60($v0)
/* 5D8A8 80066578 8C420064 */  lw         $v0, 0x64($v0)
/* 5D8AC 8006657C 0040F809 */  jalr       $v0
/* 5D8B0 80066580 02242021 */   addu      $a0, $s1, $a0
/* 5D8B4 80066584 02202021 */  addu       $a0, $s1, $zero
/* 5D8B8 80066588 0C01596C */  jal        func_800565B0
/* 5D8BC 8006658C 02002821 */   addu      $a1, $s0, $zero
/* 5D8C0 80066590 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 5D8C4 80066594 46140002 */  mul.s      $f0, $f0, $f20
/* 5D8C8 80066598 44050000 */  mfc1       $a1, $f0
/* 5D8CC 8006659C 02202021 */  addu       $a0, $s1, $zero
.L800665A0:
/* 5D8D0 800665A0 0C01597B */  jal        func_800565EC
/* 5D8D4 800665A4 00000000 */   nop
/* 5D8D8 800665A8 8FBF0040 */  lw         $ra, 0x40($sp)
/* 5D8DC 800665AC 8FB1003C */  lw         $s1, 0x3C($sp)
/* 5D8E0 800665B0 8FB00038 */  lw         $s0, 0x38($sp)
/* 5D8E4 800665B4 D7B40048 */  ldc1       $f20, 0x48($sp)
/* 5D8E8 800665B8 03E00008 */  jr         $ra
/* 5D8EC 800665BC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800665C0
/* 5D8F0 800665C0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5D8F4 800665C4 AFB00020 */  sw         $s0, 0x20($sp)
/* 5D8F8 800665C8 00808021 */  addu       $s0, $a0, $zero
/* 5D8FC 800665CC AFB10024 */  sw         $s1, 0x24($sp)
/* 5D900 800665D0 00A08821 */  addu       $s1, $a1, $zero
/* 5D904 800665D4 AFB20028 */  sw         $s2, 0x28($sp)
/* 5D908 800665D8 00C09021 */  addu       $s2, $a2, $zero
/* 5D90C 800665DC AFBF002C */  sw         $ra, 0x2C($sp)
/* 5D910 800665E0 0C0165A4 */  jal        func_80059690
/* 5D914 800665E4 27A50010 */   addiu     $a1, $sp, 0x10
/* 5D918 800665E8 C6080084 */  lwc1       $f8, 0x84($s0)
/* 5D91C 800665EC 3C018004 */  lui        $at, %hi(D_8003E4A4)
/* 5D920 800665F0 C420E4A4 */  lwc1       $f0, %lo(D_8003E4A4)($at)
/* 5D924 800665F4 46004032 */  c.eq.s     $f8, $f0
/* 5D928 800665F8 00000000 */  nop
/* 5D92C 800665FC 4501001E */  bc1t       .L80066678
/* 5D930 80066600 00002821 */   addu      $a1, $zero, $zero
/* 5D934 80066604 C6240000 */  lwc1       $f4, 0x0($s1)
/* 5D938 80066608 C7A00010 */  lwc1       $f0, 0x10($sp)
/* 5D93C 8006660C 46002101 */  sub.s      $f4, $f4, $f0
/* 5D940 80066610 46042102 */  mul.s      $f4, $f4, $f4
/* 5D944 80066614 27A20010 */  addiu      $v0, $sp, 0x10
/* 5D948 80066618 C6260004 */  lwc1       $f6, 0x4($s1)
/* 5D94C 8006661C C4400004 */  lwc1       $f0, 0x4($v0)
/* 5D950 80066620 46003181 */  sub.s      $f6, $f6, $f0
/* 5D954 80066624 46063182 */  mul.s      $f6, $f6, $f6
/* 5D958 80066628 C4420008 */  lwc1       $f2, 0x8($v0)
/* 5D95C 8006662C C6200008 */  lwc1       $f0, 0x8($s1)
/* 5D960 80066630 46020001 */  sub.s      $f0, $f0, $f2
/* 5D964 80066634 46000002 */  mul.s      $f0, $f0, $f0
/* 5D968 80066638 46062100 */  add.s      $f4, $f4, $f6
/* 5D96C 8006663C 46002100 */  add.s      $f4, $f4, $f0
/* 5D970 80066640 4604403C */  c.lt.s     $f8, $f4
/* 5D974 80066644 00000000 */  nop
/* 5D978 80066648 4500000C */  bc1f       .L8006667C
/* 5D97C 8006664C 00051080 */   sll       $v0, $a1, 2
/* 5D980 80066650 02001821 */  addu       $v1, $s0, $zero
/* 5D984 80066654 24A50001 */  addiu      $a1, $a1, 0x1
.L80066658:
/* 5D988 80066658 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 5D98C 8006665C 1040000C */  beqz       $v0, .L80066690
/* 5D990 80066660 24630004 */   addiu     $v1, $v1, 0x4
/* 5D994 80066664 C4600084 */  lwc1       $f0, 0x84($v1)
/* 5D998 80066668 4604003C */  c.lt.s     $f0, $f4
/* 5D99C 8006666C 00000000 */  nop
/* 5D9A0 80066670 4503FFF9 */  bc1tl      .L80066658
/* 5D9A4 80066674 24A50001 */   addiu     $a1, $a1, 0x1
.L80066678:
/* 5D9A8 80066678 00051080 */  sll        $v0, $a1, 2
.L8006667C:
/* 5D9AC 8006667C 02021021 */  addu       $v0, $s0, $v0
/* 5D9B0 80066680 AE450004 */  sw         $a1, 0x4($s2)
/* 5D9B4 80066684 8C420078 */  lw         $v0, 0x78($v0)
/* 5D9B8 80066688 14400003 */  bnez       $v0, .L80066698
/* 5D9BC 8006668C 00000000 */   nop
.L80066690:
/* 5D9C0 80066690 080199B7 */  j          .L800666DC
/* 5D9C4 80066694 AE400000 */   sw        $zero, 0x0($s2)
.L80066698:
/* 5D9C8 80066698 10A00009 */  beqz       $a1, .L800666C0
/* 5D9CC 8006669C 00000000 */   nop
/* 5D9D0 800666A0 8E020024 */  lw         $v0, 0x24($s0)
/* 5D9D4 800666A4 844400A0 */  lh         $a0, 0xA0($v0)
/* 5D9D8 800666A8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5D9DC 800666AC 0040F809 */  jalr       $v0
/* 5D9E0 800666B0 02042021 */   addu      $a0, $s0, $a0
/* 5D9E4 800666B4 02002021 */  addu       $a0, $s0, $zero
/* 5D9E8 800666B8 0C0165A4 */  jal        func_80059690
/* 5D9EC 800666BC 27A50010 */   addiu     $a1, $sp, 0x10
.L800666C0:
/* 5D9F0 800666C0 0C0165C5 */  jal        func_80059714
/* 5D9F4 800666C4 02002021 */   addu      $a0, $s0, $zero
/* 5D9F8 800666C8 02202021 */  addu       $a0, $s1, $zero
/* 5D9FC 800666CC 44060000 */  mfc1       $a2, $f0
/* 5DA00 800666D0 0C017F80 */  jal        func_8005FE00
/* 5DA04 800666D4 27A50010 */   addiu     $a1, $sp, 0x10
/* 5DA08 800666D8 AE420000 */  sw         $v0, 0x0($s2)
.L800666DC:
/* 5DA0C 800666DC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 5DA10 800666E0 8FB20028 */  lw         $s2, 0x28($sp)
/* 5DA14 800666E4 8FB10024 */  lw         $s1, 0x24($sp)
/* 5DA18 800666E8 8FB00020 */  lw         $s0, 0x20($sp)
/* 5DA1C 800666EC 03E00008 */  jr         $ra
/* 5DA20 800666F0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800666F4
/* 5DA24 800666F4 00802821 */  addu       $a1, $a0, $zero
/* 5DA28 800666F8 8CA3005C */  lw         $v1, 0x5C($a1)
/* 5DA2C 800666FC 3C020008 */  lui        $v0, (0x80000 >> 16)
/* 5DA30 80066700 00621024 */  and        $v0, $v1, $v0
/* 5DA34 80066704 14400015 */  bnez       $v0, .L8006675C
/* 5DA38 80066708 00003021 */   addu      $a2, $zero, $zero
/* 5DA3C 8006670C 3C020004 */  lui        $v0, (0x40000 >> 16)
/* 5DA40 80066710 00621024 */  and        $v0, $v1, $v0
/* 5DA44 80066714 14400012 */  bnez       $v0, .L80066760
/* 5DA48 80066718 00000000 */   nop
/* 5DA4C 8006671C 94A300BC */  lhu        $v1, 0xBC($a1)
/* 5DA50 80066720 8CA400A8 */  lw         $a0, 0xA8($a1)
/* 5DA54 80066724 00031080 */  sll        $v0, $v1, 2
/* 5DA58 80066728 00431021 */  addu       $v0, $v0, $v1
/* 5DA5C 8006672C 8C83002C */  lw         $v1, 0x2C($a0)
/* 5DA60 80066730 000210C0 */  sll        $v0, $v0, 3
/* 5DA64 80066734 00431021 */  addu       $v0, $v0, $v1
/* 5DA68 80066738 94420024 */  lhu        $v0, 0x24($v0)
/* 5DA6C 8006673C C4A200B4 */  lwc1       $f2, 0xB4($a1)
/* 5DA70 80066740 2442FFFF */  addiu      $v0, $v0, -0x1
/* 5DA74 80066744 44820000 */  mtc1       $v0, $f0
/* 5DA78 80066748 46800020 */  cvt.s.w    $f0, $f0
/* 5DA7C 8006674C 4602003E */  c.le.s     $f0, $f2
/* 5DA80 80066750 00000000 */  nop
/* 5DA84 80066754 45000002 */  bc1f       .L80066760
/* 5DA88 80066758 00000000 */   nop
.L8006675C:
/* 5DA8C 8006675C 24060001 */  addiu      $a2, $zero, 0x1
.L80066760:
/* 5DA90 80066760 03E00008 */  jr         $ra
/* 5DA94 80066764 00C01021 */   addu      $v0, $a2, $zero

glabel func_80066768
/* 5DA98 80066768 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5DA9C 8006676C 00052880 */  sll        $a1, $a1, 2
/* 5DAA0 80066770 00852821 */  addu       $a1, $a0, $a1
/* 5DAA4 80066774 00071080 */  sll        $v0, $a3, 2
/* 5DAA8 80066778 00471021 */  addu       $v0, $v0, $a3
/* 5DAAC 8006677C 000210C0 */  sll        $v0, $v0, 3
/* 5DAB0 80066780 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 5DAB4 80066784 46800020 */  cvt.s.w    $f0, $f0
/* 5DAB8 80066788 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5DABC 8006678C 8CA500A8 */  lw         $a1, 0xA8($a1)
/* 5DAC0 80066790 C48200B8 */  lwc1       $f2, 0xB8($a0)
/* 5DAC4 80066794 24A4000C */  addiu      $a0, $a1, 0xC
/* 5DAC8 80066798 46020002 */  mul.s      $f0, $f0, $f2
/* 5DACC 8006679C 8CA3002C */  lw         $v1, 0x2C($a1)
/* 5DAD0 800667A0 8CA80024 */  lw         $t0, 0x24($a1)
/* 5DAD4 800667A4 00621821 */  addu       $v1, $v1, $v0
/* 5DAD8 800667A8 8C620020 */  lw         $v0, 0x20($v1)
/* 5DADC 800667AC 94630024 */  lhu        $v1, 0x24($v1)
/* 5DAE0 800667B0 00461021 */  addu       $v0, $v0, $a2
/* 5DAE4 800667B4 00023080 */  sll        $a2, $v0, 2
/* 5DAE8 800667B8 00C23021 */  addu       $a2, $a2, $v0
/* 5DAEC 800667BC 00063080 */  sll        $a2, $a2, 2
/* 5DAF0 800667C0 AFA30010 */  sw         $v1, 0x10($sp)
/* 5DAF4 800667C4 8FA50034 */  lw         $a1, 0x34($sp)
/* 5DAF8 800667C8 44070000 */  mfc1       $a3, $f0
/* 5DAFC 800667CC 0C019C61 */  jal        func_80067184
/* 5DB00 800667D0 01063021 */   addu      $a2, $t0, $a2
/* 5DB04 800667D4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5DB08 800667D8 03E00008 */  jr         $ra
/* 5DB0C 800667DC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800667E0
/* 5DB10 800667E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5DB14 800667E4 00052880 */  sll        $a1, $a1, 2
/* 5DB18 800667E8 00852821 */  addu       $a1, $a0, $a1
/* 5DB1C 800667EC 00071080 */  sll        $v0, $a3, 2
/* 5DB20 800667F0 00471021 */  addu       $v0, $v0, $a3
/* 5DB24 800667F4 000210C0 */  sll        $v0, $v0, 3
/* 5DB28 800667F8 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 5DB2C 800667FC 46800020 */  cvt.s.w    $f0, $f0
/* 5DB30 80066800 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5DB34 80066804 8CA500A8 */  lw         $a1, 0xA8($a1)
/* 5DB38 80066808 C48200B8 */  lwc1       $f2, 0xB8($a0)
/* 5DB3C 8006680C 24A4000C */  addiu      $a0, $a1, 0xC
/* 5DB40 80066810 46020002 */  mul.s      $f0, $f0, $f2
/* 5DB44 80066814 8CA3002C */  lw         $v1, 0x2C($a1)
/* 5DB48 80066818 8CA80024 */  lw         $t0, 0x24($a1)
/* 5DB4C 8006681C 00621821 */  addu       $v1, $v1, $v0
/* 5DB50 80066820 8C620020 */  lw         $v0, 0x20($v1)
/* 5DB54 80066824 94630024 */  lhu        $v1, 0x24($v1)
/* 5DB58 80066828 00461021 */  addu       $v0, $v0, $a2
/* 5DB5C 8006682C 00023080 */  sll        $a2, $v0, 2
/* 5DB60 80066830 00C23021 */  addu       $a2, $a2, $v0
/* 5DB64 80066834 00063080 */  sll        $a2, $a2, 2
/* 5DB68 80066838 AFA30010 */  sw         $v1, 0x10($sp)
/* 5DB6C 8006683C 8FA50034 */  lw         $a1, 0x34($sp)
/* 5DB70 80066840 44070000 */  mfc1       $a3, $f0
/* 5DB74 80066844 0C019D09 */  jal        func_80067424
/* 5DB78 80066848 01063021 */   addu      $a2, $t0, $a2
/* 5DB7C 8006684C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5DB80 80066850 03E00008 */  jr         $ra
/* 5DB84 80066854 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80066858
/* 5DB88 80066858 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5DB8C 8006685C 00052880 */  sll        $a1, $a1, 2
/* 5DB90 80066860 00852021 */  addu       $a0, $a0, $a1
/* 5DB94 80066864 00071080 */  sll        $v0, $a3, 2
/* 5DB98 80066868 00471021 */  addu       $v0, $v0, $a3
/* 5DB9C 8006686C AFBF0018 */  sw         $ra, 0x18($sp)
/* 5DBA0 80066870 8C8400A8 */  lw         $a0, 0xA8($a0)
/* 5DBA4 80066874 000210C0 */  sll        $v0, $v0, 3
/* 5DBA8 80066878 8C83002C */  lw         $v1, 0x2C($a0)
/* 5DBAC 8006687C 8C850024 */  lw         $a1, 0x24($a0)
/* 5DBB0 80066880 00431021 */  addu       $v0, $v0, $v1
/* 5DBB4 80066884 94430024 */  lhu        $v1, 0x24($v0)
/* 5DBB8 80066888 8C420020 */  lw         $v0, 0x20($v0)
/* 5DBBC 8006688C AFA30010 */  sw         $v1, 0x10($sp)
/* 5DBC0 80066890 2463FFFF */  addiu      $v1, $v1, -0x1
/* 5DBC4 80066894 00461021 */  addu       $v0, $v0, $a2
/* 5DBC8 80066898 00023080 */  sll        $a2, $v0, 2
/* 5DBCC 8006689C 00C23021 */  addu       $a2, $a2, $v0
/* 5DBD0 800668A0 00063080 */  sll        $a2, $a2, 2
/* 5DBD4 800668A4 00A63021 */  addu       $a2, $a1, $a2
/* 5DBD8 800668A8 44830000 */  mtc1       $v1, $f0
/* 5DBDC 800668AC 46800020 */  cvt.s.w    $f0, $f0
/* 5DBE0 800668B0 8FA50030 */  lw         $a1, 0x30($sp)
/* 5DBE4 800668B4 44070000 */  mfc1       $a3, $f0
/* 5DBE8 800668B8 0C019C61 */  jal        func_80067184
/* 5DBEC 800668BC 2484000C */   addiu     $a0, $a0, 0xC
/* 5DBF0 800668C0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5DBF4 800668C4 03E00008 */  jr         $ra
/* 5DBF8 800668C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800668CC
/* 5DBFC 800668CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5DC00 800668D0 00052880 */  sll        $a1, $a1, 2
/* 5DC04 800668D4 00852021 */  addu       $a0, $a0, $a1
/* 5DC08 800668D8 00071080 */  sll        $v0, $a3, 2
/* 5DC0C 800668DC 00471021 */  addu       $v0, $v0, $a3
/* 5DC10 800668E0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5DC14 800668E4 8C8400A8 */  lw         $a0, 0xA8($a0)
/* 5DC18 800668E8 000210C0 */  sll        $v0, $v0, 3
/* 5DC1C 800668EC 8C83002C */  lw         $v1, 0x2C($a0)
/* 5DC20 800668F0 8C850024 */  lw         $a1, 0x24($a0)
/* 5DC24 800668F4 00431021 */  addu       $v0, $v0, $v1
/* 5DC28 800668F8 94430024 */  lhu        $v1, 0x24($v0)
/* 5DC2C 800668FC 8C420020 */  lw         $v0, 0x20($v0)
/* 5DC30 80066900 AFA30010 */  sw         $v1, 0x10($sp)
/* 5DC34 80066904 2463FFFF */  addiu      $v1, $v1, -0x1
/* 5DC38 80066908 00461021 */  addu       $v0, $v0, $a2
/* 5DC3C 8006690C 00023080 */  sll        $a2, $v0, 2
/* 5DC40 80066910 00C23021 */  addu       $a2, $a2, $v0
/* 5DC44 80066914 00063080 */  sll        $a2, $a2, 2
/* 5DC48 80066918 00A63021 */  addu       $a2, $a1, $a2
/* 5DC4C 8006691C 44830000 */  mtc1       $v1, $f0
/* 5DC50 80066920 46800020 */  cvt.s.w    $f0, $f0
/* 5DC54 80066924 8FA50030 */  lw         $a1, 0x30($sp)
/* 5DC58 80066928 44070000 */  mfc1       $a3, $f0
/* 5DC5C 8006692C 0C019D09 */  jal        func_80067424
/* 5DC60 80066930 2484000C */   addiu     $a0, $a0, 0xC
/* 5DC64 80066934 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5DC68 80066938 03E00008 */  jr         $ra
/* 5DC6C 8006693C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80066940
/* 5DC70 80066940 00052880 */  sll        $a1, $a1, 2
/* 5DC74 80066944 00852021 */  addu       $a0, $a0, $a1
/* 5DC78 80066948 8C8200A8 */  lw         $v0, 0xA8($a0)
/* 5DC7C 8006694C 03E00008 */  jr         $ra
/* 5DC80 80066950 00000000 */   nop

glabel func_80066954
/* 5DC84 80066954 00052880 */  sll        $a1, $a1, 2
/* 5DC88 80066958 00852021 */  addu       $a0, $a0, $a1
/* 5DC8C 8006695C 8C820090 */  lw         $v0, 0x90($a0)
/* 5DC90 80066960 03E00008 */  jr         $ra
/* 5DC94 80066964 00000000 */   nop

glabel func_80066968
/* 5DC98 80066968 8C83005C */  lw         $v1, 0x5C($a0)
/* 5DC9C 8006696C 3C020200 */  lui        $v0, (0x2000000 >> 16)
/* 5DCA0 80066970 03E00008 */  jr         $ra
/* 5DCA4 80066974 00621024 */   and       $v0, $v1, $v0

glabel func_80066978
/* 5DCA8 80066978 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DCAC 8006697C 3C030002 */  lui        $v1, (0x20000 >> 16)
/* 5DCB0 80066980 00431024 */  and        $v0, $v0, $v1
/* 5DCB4 80066984 10400005 */  beqz       $v0, .L8006699C
/* 5DCB8 80066988 00000000 */   nop
/* 5DCBC 8006698C C48200D0 */  lwc1       $f2, 0xD0($a0)
/* 5DCC0 80066990 C48000D4 */  lwc1       $f0, 0xD4($a0)
/* 5DCC4 80066994 03E00008 */  jr         $ra
/* 5DCC8 80066998 46001003 */   div.s     $f0, $f2, $f0
.L8006699C:
/* 5DCCC 8006699C C48200B4 */  lwc1       $f2, 0xB4($a0)
/* 5DCD0 800669A0 C48000B8 */  lwc1       $f0, 0xB8($a0)
/* 5DCD4 800669A4 03E00008 */  jr         $ra
/* 5DCD8 800669A8 46001003 */   div.s     $f0, $f2, $f0

glabel func_800669AC
/* 5DCDC 800669AC C48200B4 */  lwc1       $f2, 0xB4($a0)
/* 5DCE0 800669B0 C48000B8 */  lwc1       $f0, 0xB8($a0)
/* 5DCE4 800669B4 03E00008 */  jr         $ra
/* 5DCE8 800669B8 46001003 */   div.s     $f0, $f2, $f0

glabel func_800669BC
/* 5DCEC 800669BC 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DCF0 800669C0 3C030002 */  lui        $v1, (0x20000 >> 16)
/* 5DCF4 800669C4 00431024 */  and        $v0, $v0, $v1
/* 5DCF8 800669C8 10400004 */  beqz       $v0, .L800669DC
/* 5DCFC 800669CC 00000000 */   nop
/* 5DD00 800669D0 C48000D0 */  lwc1       $f0, 0xD0($a0)
/* 5DD04 800669D4 03E00008 */  jr         $ra
/* 5DD08 800669D8 00000000 */   nop
.L800669DC:
/* 5DD0C 800669DC C48000B4 */  lwc1       $f0, 0xB4($a0)
/* 5DD10 800669E0 03E00008 */  jr         $ra
/* 5DD14 800669E4 00000000 */   nop

glabel func_800669E8
/* 5DD18 800669E8 C48000B4 */  lwc1       $f0, 0xB4($a0)
/* 5DD1C 800669EC 03E00008 */  jr         $ra
/* 5DD20 800669F0 00000000 */   nop

glabel func_800669F4
/* 5DD24 800669F4 03E00008 */  jr         $ra
/* 5DD28 800669F8 AC8500D4 */   sw        $a1, 0xD4($a0)

glabel func_800669FC
/* 5DD2C 800669FC 03E00008 */  jr         $ra
/* 5DD30 80066A00 AC8500B8 */   sw        $a1, 0xB8($a0)

glabel func_80066A04
/* 5DD34 80066A04 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DD38 80066A08 3C030002 */  lui        $v1, (0x20000 >> 16)
/* 5DD3C 80066A0C 00431024 */  and        $v0, $v0, $v1
/* 5DD40 80066A10 10400004 */  beqz       $v0, .L80066A24
/* 5DD44 80066A14 00000000 */   nop
/* 5DD48 80066A18 C48000D4 */  lwc1       $f0, 0xD4($a0)
/* 5DD4C 80066A1C 03E00008 */  jr         $ra
/* 5DD50 80066A20 00000000 */   nop
.L80066A24:
/* 5DD54 80066A24 C48000B8 */  lwc1       $f0, 0xB8($a0)
/* 5DD58 80066A28 03E00008 */  jr         $ra
/* 5DD5C 80066A2C 00000000 */   nop

glabel func_80066A30
/* 5DD60 80066A30 C48000B8 */  lwc1       $f0, 0xB8($a0)
/* 5DD64 80066A34 03E00008 */  jr         $ra
/* 5DD68 80066A38 00000000 */   nop

glabel func_80066A3C
/* 5DD6C 80066A3C 03E00008 */  jr         $ra
/* 5DD70 80066A40 AC8500F0 */   sw        $a1, 0xF0($a0)

glabel func_80066A44
/* 5DD74 80066A44 C48000F0 */  lwc1       $f0, 0xF0($a0)
/* 5DD78 80066A48 03E00008 */  jr         $ra
/* 5DD7C 80066A4C 00000000 */   nop

glabel func_80066A50
/* 5DD80 80066A50 C48000EC */  lwc1       $f0, 0xEC($a0)
/* 5DD84 80066A54 03E00008 */  jr         $ra
/* 5DD88 80066A58 00000000 */   nop

glabel func_80066A5C
/* 5DD8C 80066A5C 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DD90 80066A60 3C030012 */  lui        $v1, (0x120000 >> 16)
/* 5DD94 80066A64 00431024 */  and        $v0, $v0, $v1
/* 5DD98 80066A68 10400002 */  beqz       $v0, .L80066A74
/* 5DD9C 80066A6C 2405FFFF */   addiu     $a1, $zero, -0x1
/* 5DDA0 80066A70 948500D8 */  lhu        $a1, 0xD8($a0)
.L80066A74:
/* 5DDA4 80066A74 03E00008 */  jr         $ra
/* 5DDA8 80066A78 00A01021 */   addu      $v0, $a1, $zero

glabel func_80066A7C
/* 5DDAC 80066A7C 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DDB0 80066A80 3C030002 */  lui        $v1, (0x20000 >> 16)
/* 5DDB4 80066A84 00431024 */  and        $v0, $v0, $v1
/* 5DDB8 80066A88 10400004 */  beqz       $v0, .L80066A9C
/* 5DDBC 80066A8C 00000000 */   nop
/* 5DDC0 80066A90 948200D8 */  lhu        $v0, 0xD8($a0)
/* 5DDC4 80066A94 03E00008 */  jr         $ra
/* 5DDC8 80066A98 00000000 */   nop
.L80066A9C:
/* 5DDCC 80066A9C 948200BC */  lhu        $v0, 0xBC($a0)
/* 5DDD0 80066AA0 03E00008 */  jr         $ra
/* 5DDD4 80066AA4 00000000 */   nop

glabel func_80066AA8
/* 5DDD8 80066AA8 948200BC */  lhu        $v0, 0xBC($a0)
/* 5DDDC 80066AAC 03E00008 */  jr         $ra
/* 5DDE0 80066AB0 00000000 */   nop

glabel func_80066AB4
/* 5DDE4 80066AB4 3C02FFB1 */  lui        $v0, (0xFFB1FFFF >> 16)
/* 5DDE8 80066AB8 8C83005C */  lw         $v1, 0x5C($a0)
/* 5DDEC 80066ABC 3442FFFF */  ori        $v0, $v0, (0xFFB1FFFF & 0xFFFF)
/* 5DDF0 80066AC0 A48500D8 */  sh         $a1, 0xD8($a0)
/* 5DDF4 80066AC4 00621824 */  and        $v1, $v1, $v0
/* 5DDF8 80066AC8 3C020010 */  lui        $v0, (0x100000 >> 16)
/* 5DDFC 80066ACC 00621825 */  or         $v1, $v1, $v0
/* 5DE00 80066AD0 10C00004 */  beqz       $a2, .L80066AE4
/* 5DE04 80066AD4 AC83005C */   sw        $v1, 0x5C($a0)
/* 5DE08 80066AD8 3C020040 */  lui        $v0, (0x400000 >> 16)
/* 5DE0C 80066ADC 00621025 */  or         $v0, $v1, $v0
/* 5DE10 80066AE0 AC82005C */  sw         $v0, 0x5C($a0)
.L80066AE4:
/* 5DE14 80066AE4 03E00008 */  jr         $ra
/* 5DE18 80066AE8 00000000 */   nop

glabel func_80066AEC
/* 5DE1C 80066AEC 3C03FFDF */  lui        $v1, (0xFFDFFFFF >> 16)
/* 5DE20 80066AF0 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DE24 80066AF4 3463FFFF */  ori        $v1, $v1, (0xFFDFFFFF & 0xFFFF)
/* 5DE28 80066AF8 00431024 */  and        $v0, $v0, $v1
/* 5DE2C 80066AFC 03E00008 */  jr         $ra
/* 5DE30 80066B00 AC82005C */   sw        $v0, 0x5C($a0)

glabel func_80066B04
/* 5DE34 80066B04 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DE38 80066B08 3C030020 */  lui        $v1, (0x200000 >> 16)
/* 5DE3C 80066B0C 00431025 */  or         $v0, $v0, $v1
/* 5DE40 80066B10 03E00008 */  jr         $ra
/* 5DE44 80066B14 AC82005C */   sw        $v0, 0x5C($a0)

glabel func_80066B18
/* 5DE48 80066B18 3C03FFFB */  lui        $v1, (0xFFFBFFFF >> 16)
/* 5DE4C 80066B1C 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DE50 80066B20 3463FFFF */  ori        $v1, $v1, (0xFFFBFFFF & 0xFFFF)
/* 5DE54 80066B24 00431024 */  and        $v0, $v0, $v1
/* 5DE58 80066B28 03E00008 */  jr         $ra
/* 5DE5C 80066B2C AC82005C */   sw        $v0, 0x5C($a0)

glabel func_80066B30
/* 5DE60 80066B30 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DE64 80066B34 3C030004 */  lui        $v1, (0x40000 >> 16)
/* 5DE68 80066B38 00431025 */  or         $v0, $v0, $v1
/* 5DE6C 80066B3C 03E00008 */  jr         $ra
/* 5DE70 80066B40 AC82005C */   sw        $v0, 0x5C($a0)

glabel func_80066B44
/* 5DE74 80066B44 3C03FFFE */  lui        $v1, (0xFFFEFFFF >> 16)
/* 5DE78 80066B48 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DE7C 80066B4C 3463FFFF */  ori        $v1, $v1, (0xFFFEFFFF & 0xFFFF)
/* 5DE80 80066B50 00431024 */  and        $v0, $v0, $v1
/* 5DE84 80066B54 03E00008 */  jr         $ra
/* 5DE88 80066B58 AC82005C */   sw        $v0, 0x5C($a0)

glabel func_80066B5C
/* 5DE8C 80066B5C 8C82005C */  lw         $v0, 0x5C($a0)
/* 5DE90 80066B60 3C030001 */  lui        $v1, (0x10000 >> 16)
/* 5DE94 80066B64 00431025 */  or         $v0, $v0, $v1
/* 5DE98 80066B68 03E00008 */  jr         $ra
/* 5DE9C 80066B6C AC82005C */   sw        $v0, 0x5C($a0)

glabel func_80066B70
/* 5DEA0 80066B70 8C83005C */  lw         $v1, 0x5C($a0)
/* 5DEA4 80066B74 3C020002 */  lui        $v0, (0x20000 >> 16)
/* 5DEA8 80066B78 00621024 */  and        $v0, $v1, $v0
/* 5DEAC 80066B7C 50400004 */  beql       $v0, $zero, .L80066B90
/* 5DEB0 80066B80 3C020004 */   lui       $v0, (0x40000 >> 16)
/* 5DEB4 80066B84 3C020040 */  lui        $v0, (0x400000 >> 16)
/* 5DEB8 80066B88 03E00008 */  jr         $ra
/* 5DEBC 80066B8C 00621024 */   and       $v0, $v1, $v0
.L80066B90:
/* 5DEC0 80066B90 03E00008 */  jr         $ra
/* 5DEC4 80066B94 00621024 */   and       $v0, $v1, $v0

glabel func_80066B98
/* 5DEC8 80066B98 8C83005C */  lw         $v1, 0x5C($a0)
/* 5DECC 80066B9C 3C020040 */  lui        $v0, (0x400000 >> 16)
/* 5DED0 80066BA0 03E00008 */  jr         $ra
/* 5DED4 80066BA4 00621024 */   and       $v0, $v1, $v0

glabel func_80066BA8
/* 5DED8 80066BA8 8C83005C */  lw         $v1, 0x5C($a0)
/* 5DEDC 80066BAC 3C020004 */  lui        $v0, (0x40000 >> 16)
/* 5DEE0 80066BB0 03E00008 */  jr         $ra
/* 5DEE4 80066BB4 00621024 */   and       $v0, $v1, $v0

glabel func_80066BB8
/* 5DEE8 80066BB8 8C83005C */  lw         $v1, 0x5C($a0)
/* 5DEEC 80066BBC 3C020004 */  lui        $v0, (0x40000 >> 16)
/* 5DEF0 80066BC0 03E00008 */  jr         $ra
/* 5DEF4 80066BC4 00621024 */   and       $v0, $v1, $v0

glabel func_80066BC8
/* 5DEF8 80066BC8 8C83005C */  lw         $v1, 0x5C($a0)
/* 5DEFC 80066BCC 3C020002 */  lui        $v0, (0x20000 >> 16)
/* 5DF00 80066BD0 03E00008 */  jr         $ra
/* 5DF04 80066BD4 00621024 */   and       $v0, $v1, $v0

glabel func_80066BD8
/* 5DF08 80066BD8 8C83005C */  lw         $v1, 0x5C($a0)
/* 5DF0C 80066BDC 3C020001 */  lui        $v0, (0x10000 >> 16)
/* 5DF10 80066BE0 03E00008 */  jr         $ra
/* 5DF14 80066BE4 00621024 */   and       $v0, $v1, $v0

glabel func_80066BE8
/* 5DF18 80066BE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5DF1C 80066BEC AFB00010 */  sw         $s0, 0x10($sp)
/* 5DF20 80066BF0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 5DF24 80066BF4 4485A000 */  mtc1       $a1, $f20
/* 5DF28 80066BF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DF2C 80066BFC 0C0195AD */  jal        func_800656B4
/* 5DF30 80066C00 00808021 */   addu      $s0, $a0, $zero
/* 5DF34 80066C04 C60000D4 */  lwc1       $f0, 0xD4($s0)
/* 5DF38 80066C08 4600A502 */  mul.s      $f20, $f20, $f0
/* 5DF3C 80066C0C E61400D0 */  swc1       $f20, 0xD0($s0)
/* 5DF40 80066C10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DF44 80066C14 8FB00010 */  lw         $s0, 0x10($sp)
/* 5DF48 80066C18 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 5DF4C 80066C1C 03E00008 */  jr         $ra
/* 5DF50 80066C20 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80066C24
/* 5DF54 80066C24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5DF58 80066C28 AFB00010 */  sw         $s0, 0x10($sp)
/* 5DF5C 80066C2C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 5DF60 80066C30 4485A000 */  mtc1       $a1, $f20
/* 5DF64 80066C34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DF68 80066C38 0C0195AD */  jal        func_800656B4
/* 5DF6C 80066C3C 00808021 */   addu      $s0, $a0, $zero
/* 5DF70 80066C40 E61400D0 */  swc1       $f20, 0xD0($s0)
/* 5DF74 80066C44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DF78 80066C48 8FB00010 */  lw         $s0, 0x10($sp)
/* 5DF7C 80066C4C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 5DF80 80066C50 03E00008 */  jr         $ra
/* 5DF84 80066C54 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80066C58
/* 5DF88 80066C58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5DF8C 80066C5C AFB00010 */  sw         $s0, 0x10($sp)
/* 5DF90 80066C60 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 5DF94 80066C64 4485A000 */  mtc1       $a1, $f20
/* 5DF98 80066C68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DF9C 80066C6C 0C0195AD */  jal        func_800656B4
/* 5DFA0 80066C70 00808021 */   addu      $s0, $a0, $zero
/* 5DFA4 80066C74 C60000B8 */  lwc1       $f0, 0xB8($s0)
/* 5DFA8 80066C78 4600A502 */  mul.s      $f20, $f20, $f0
/* 5DFAC 80066C7C E61400B4 */  swc1       $f20, 0xB4($s0)
/* 5DFB0 80066C80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DFB4 80066C84 8FB00010 */  lw         $s0, 0x10($sp)
/* 5DFB8 80066C88 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 5DFBC 80066C8C 03E00008 */  jr         $ra
/* 5DFC0 80066C90 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80066C94
/* 5DFC4 80066C94 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5DFC8 80066C98 AFB00010 */  sw         $s0, 0x10($sp)
/* 5DFCC 80066C9C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 5DFD0 80066CA0 4485A000 */  mtc1       $a1, $f20
/* 5DFD4 80066CA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DFD8 80066CA8 0C0195AD */  jal        func_800656B4
/* 5DFDC 80066CAC 00808021 */   addu      $s0, $a0, $zero
/* 5DFE0 80066CB0 E61400B4 */  swc1       $f20, 0xB4($s0)
/* 5DFE4 80066CB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DFE8 80066CB8 8FB00010 */  lw         $s0, 0x10($sp)
/* 5DFEC 80066CBC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 5DFF0 80066CC0 03E00008 */  jr         $ra
/* 5DFF4 80066CC4 27BD0020 */   addiu     $sp, $sp, 0x20
