.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801166A0
/* CCA60 801166A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CCA64 801166A4 AFB00010 */  sw         $s0, 0x10($sp)
/* CCA68 801166A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* CCA6C 801166AC 0C0459C3 */  jal        func_race_8011670C
/* CCA70 801166B0 00808021 */   addu      $s0, $a0, $zero
/* CCA74 801166B4 02001021 */  addu       $v0, $s0, $zero
/* CCA78 801166B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* CCA7C 801166BC 8FB00010 */  lw         $s0, 0x10($sp)
/* CCA80 801166C0 03E00008 */  jr         $ra
/* CCA84 801166C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801166C8
/* CCA88 801166C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CCA8C 801166CC AFB10014 */  sw         $s1, 0x14($sp)
/* CCA90 801166D0 00808821 */  addu       $s1, $a0, $zero
/* CCA94 801166D4 AFB00010 */  sw         $s0, 0x10($sp)
/* CCA98 801166D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* CCA9C 801166DC 0C0459C3 */  jal        func_race_8011670C
/* CCAA0 801166E0 00A08021 */   addu      $s0, $a1, $zero
/* CCAA4 801166E4 32100001 */  andi       $s0, $s0, 0x1
/* CCAA8 801166E8 12000003 */  beqz       $s0, .Lrace_801166F8
/* CCAAC 801166EC 00000000 */   nop
/* CCAB0 801166F0 0C01FB5C */  jal        func_8007ED70
/* CCAB4 801166F4 02202021 */   addu      $a0, $s1, $zero
.Lrace_801166F8:
/* CCAB8 801166F8 8FBF0018 */  lw         $ra, 0x18($sp)
/* CCABC 801166FC 8FB10014 */  lw         $s1, 0x14($sp)
/* CCAC0 80116700 8FB00010 */  lw         $s0, 0x10($sp)
/* CCAC4 80116704 03E00008 */  jr         $ra
/* CCAC8 80116708 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011670C
/* CCACC 8011670C AC800000 */  sw         $zero, 0x0($a0)
/* CCAD0 80116710 AC800004 */  sw         $zero, 0x4($a0)
/* CCAD4 80116714 AC800008 */  sw         $zero, 0x8($a0)
/* CCAD8 80116718 AC80000C */  sw         $zero, 0xC($a0)
/* CCADC 8011671C AC800010 */  sw         $zero, 0x10($a0)
/* CCAE0 80116720 AC800014 */  sw         $zero, 0x14($a0)
/* CCAE4 80116724 AC800018 */  sw         $zero, 0x18($a0)
/* CCAE8 80116728 AC80001C */  sw         $zero, 0x1C($a0)
/* CCAEC 8011672C AC800020 */  sw         $zero, 0x20($a0)
/* CCAF0 80116730 AC800024 */  sw         $zero, 0x24($a0)
/* CCAF4 80116734 03E00008 */  jr         $ra
/* CCAF8 80116738 AC800028 */   sw        $zero, 0x28($a0)

glabel func_race_8011673C
/* CCAFC 8011673C 8CA20000 */  lw         $v0, 0x0($a1)
/* CCB00 80116740 AC820000 */  sw         $v0, 0x0($a0)
/* CCB04 80116744 8CA20004 */  lw         $v0, 0x4($a1)
/* CCB08 80116748 AC820004 */  sw         $v0, 0x4($a0)
/* CCB0C 8011674C 8CA20008 */  lw         $v0, 0x8($a1)
/* CCB10 80116750 AC820008 */  sw         $v0, 0x8($a0)
/* CCB14 80116754 8CA2000C */  lw         $v0, 0xC($a1)
/* CCB18 80116758 AC82000C */  sw         $v0, 0xC($a0)
/* CCB1C 8011675C 8CA20010 */  lw         $v0, 0x10($a1)
/* CCB20 80116760 AC820010 */  sw         $v0, 0x10($a0)
/* CCB24 80116764 8CA20014 */  lw         $v0, 0x14($a1)
/* CCB28 80116768 AC820014 */  sw         $v0, 0x14($a0)
/* CCB2C 8011676C 8CA20018 */  lw         $v0, 0x18($a1)
/* CCB30 80116770 AC820018 */  sw         $v0, 0x18($a0)
/* CCB34 80116774 8CA2001C */  lw         $v0, 0x1C($a1)
/* CCB38 80116778 AC82001C */  sw         $v0, 0x1C($a0)
/* CCB3C 8011677C 8CA20020 */  lw         $v0, 0x20($a1)
/* CCB40 80116780 AC820020 */  sw         $v0, 0x20($a0)
/* CCB44 80116784 8CA20024 */  lw         $v0, 0x24($a1)
/* CCB48 80116788 AC820024 */  sw         $v0, 0x24($a0)
/* CCB4C 8011678C 8CA20028 */  lw         $v0, 0x28($a1)
/* CCB50 80116790 03E00008 */  jr         $ra
/* CCB54 80116794 AC820028 */   sw        $v0, 0x28($a0)

glabel func_race_80116798
/* CCB58 80116798 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CCB5C 8011679C AFB20018 */  sw         $s2, 0x18($sp)
/* CCB60 801167A0 00809021 */  addu       $s2, $a0, $zero
/* CCB64 801167A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* CCB68 801167A8 AFB10014 */  sw         $s1, 0x14($sp)
/* CCB6C 801167AC AFB00010 */  sw         $s0, 0x10($sp)
/* CCB70 801167B0 8E440004 */  lw         $a0, 0x4($s2)
/* CCB74 801167B4 8E450000 */  lw         $a1, 0x0($s2)
/* CCB78 801167B8 0C04416F */  jal        func_race_801105BC
/* CCB7C 801167BC 00008821 */   addu      $s1, $zero, $zero
/* CCB80 801167C0 8E440028 */  lw         $a0, 0x28($s2)
/* CCB84 801167C4 0C037021 */  jal        func_race_800DC084
/* CCB88 801167C8 02208021 */   addu      $s0, $s1, $zero
.Lrace_801167CC:
/* CCB8C 801167CC 8E430004 */  lw         $v1, 0x4($s2)
/* CCB90 801167D0 8C620144 */  lw         $v0, 0x144($v1)
/* CCB94 801167D4 0222102B */  sltu       $v0, $s1, $v0
/* CCB98 801167D8 10400007 */  beqz       $v0, .Lrace_801167F8
/* CCB9C 801167DC 26310001 */   addiu     $s1, $s1, 0x1
/* CCBA0 801167E0 8C650140 */  lw         $a1, 0x140($v1)
/* CCBA4 801167E4 8E440028 */  lw         $a0, 0x28($s2)
/* CCBA8 801167E8 0C037098 */  jal        func_race_800DC260
/* CCBAC 801167EC 00B02821 */   addu      $a1, $a1, $s0
/* CCBB0 801167F0 080459F3 */  j          .Lrace_801167CC
/* CCBB4 801167F4 26100E2C */   addiu     $s0, $s0, 0xE2C
.Lrace_801167F8:
/* CCBB8 801167F8 8E430020 */  lw         $v1, 0x20($s2)
/* CCBBC 801167FC 8C620010 */  lw         $v0, 0x10($v1)
/* CCBC0 80116800 84440020 */  lh         $a0, 0x20($v0)
/* CCBC4 80116804 8C420024 */  lw         $v0, 0x24($v0)
/* CCBC8 80116808 0040F809 */  jalr       $v0
/* CCBCC 8011680C 00642021 */   addu      $a0, $v1, $a0
/* CCBD0 80116810 8E43001C */  lw         $v1, 0x1C($s2)
/* CCBD4 80116814 8C620010 */  lw         $v0, 0x10($v1)
/* CCBD8 80116818 84440020 */  lh         $a0, 0x20($v0)
/* CCBDC 8011681C 8C420024 */  lw         $v0, 0x24($v0)
/* CCBE0 80116820 0040F809 */  jalr       $v0
/* CCBE4 80116824 00642021 */   addu      $a0, $v1, $a0
/* CCBE8 80116828 8E440024 */  lw         $a0, 0x24($s2)
/* CCBEC 8011682C 0C0357DC */  jal        func_race_800D5F70
/* CCBF0 80116830 00000000 */   nop
/* CCBF4 80116834 8E44000C */  lw         $a0, 0xC($s2)
/* CCBF8 80116838 0C03A59D */  jal        func_race_800E9674
/* CCBFC 8011683C 00000000 */   nop
/* CCC00 80116840 8E440008 */  lw         $a0, 0x8($s2)
/* CCC04 80116844 0C04B568 */  jal        func_race_8012D5A0
/* CCC08 80116848 00000000 */   nop
/* CCC0C 8011684C 8E440018 */  lw         $a0, 0x18($s2)
/* CCC10 80116850 10800003 */  beqz       $a0, .Lrace_80116860
/* CCC14 80116854 00000000 */   nop
/* CCC18 80116858 0C03D98B */  jal        func_race_800F662C
/* CCC1C 8011685C 00000000 */   nop
.Lrace_80116860:
/* CCC20 80116860 0C045A26 */  jal        func_race_80116898
/* CCC24 80116864 02402021 */   addu      $a0, $s2, $zero
/* CCC28 80116868 8E440010 */  lw         $a0, 0x10($s2)
/* CCC2C 8011686C 0C01089D */  jal        func_80042274
/* CCC30 80116870 00000000 */   nop
/* CCC34 80116874 8E440014 */  lw         $a0, 0x14($s2)
/* CCC38 80116878 0C01089D */  jal        func_80042274
/* CCC3C 8011687C 00000000 */   nop
/* CCC40 80116880 8FBF001C */  lw         $ra, 0x1C($sp)
/* CCC44 80116884 8FB20018 */  lw         $s2, 0x18($sp)
/* CCC48 80116888 8FB10014 */  lw         $s1, 0x14($sp)
/* CCC4C 8011688C 8FB00010 */  lw         $s0, 0x10($sp)
/* CCC50 80116890 03E00008 */  jr         $ra
/* CCC54 80116894 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80116898
/* CCC58 80116898 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* CCC5C 8011689C AFB3004C */  sw         $s3, 0x4C($sp)
/* CCC60 801168A0 00809821 */  addu       $s3, $a0, $zero
/* CCC64 801168A4 AFB20048 */  sw         $s2, 0x48($sp)
/* CCC68 801168A8 00009021 */  addu       $s2, $zero, $zero
/* CCC6C 801168AC AFB60058 */  sw         $s6, 0x58($sp)
/* CCC70 801168B0 27B60010 */  addiu      $s6, $sp, 0x10
/* CCC74 801168B4 AFB50054 */  sw         $s5, 0x54($sp)
/* CCC78 801168B8 0240A821 */  addu       $s5, $s2, $zero
/* CCC7C 801168BC AFBF005C */  sw         $ra, 0x5C($sp)
/* CCC80 801168C0 AFB40050 */  sw         $s4, 0x50($sp)
/* CCC84 801168C4 AFB10044 */  sw         $s1, 0x44($sp)
/* CCC88 801168C8 AFB00040 */  sw         $s0, 0x40($sp)
/* CCC8C 801168CC 8E640004 */  lw         $a0, 0x4($s3)
/* CCC90 801168D0 0C0447BD */  jal        func_race_80111EF4
/* CCC94 801168D4 0240A021 */   addu      $s4, $s2, $zero
.Lrace_801168D8:
/* CCC98 801168D8 8E630004 */  lw         $v1, 0x4($s3)
/* CCC9C 801168DC 8C620144 */  lw         $v0, 0x144($v1)
/* CCCA0 801168E0 0242102B */  sltu       $v0, $s2, $v0
/* CCCA4 801168E4 10400097 */  beqz       $v0, .Lrace_80116B44
/* CCCA8 801168E8 00002021 */   addu      $a0, $zero, $zero
/* CCCAC 801168EC 8C620140 */  lw         $v0, 0x140($v1)
/* CCCB0 801168F0 00548821 */  addu       $s1, $v0, $s4
/* CCCB4 801168F4 02201821 */  addu       $v1, $s1, $zero
.Lrace_801168F8:
/* CCCB8 801168F8 92220CE0 */  lbu        $v0, 0xCE0($s1)
/* CCCBC 801168FC 0082102B */  sltu       $v0, $a0, $v0
/* CCCC0 80116900 50400005 */  beql       $v0, $zero, .Lrace_80116918
/* CCCC4 80116904 02202021 */   addu      $a0, $s1, $zero
/* CCCC8 80116908 AC600CEC */  sw         $zero, 0xCEC($v1)
/* CCCCC 8011690C 24630004 */  addiu      $v1, $v1, 0x4
/* CCCD0 80116910 08045A3E */  j          .Lrace_801168F8
/* CCCD4 80116914 24840001 */   addiu     $a0, $a0, 0x1
.Lrace_80116918:
/* CCCD8 80116918 0C043399 */  jal        func_race_8010CE64
/* CCCDC 8011691C 00002821 */   addu      $a1, $zero, $zero
/* CCCE0 80116920 0C04348D */  jal        func_race_8010D234
/* CCCE4 80116924 02202021 */   addu      $a0, $s1, $zero
/* CCCE8 80116928 0C043558 */  jal        func_race_8010D560
/* CCCEC 8011692C 02202021 */   addu      $a0, $s1, $zero
/* CCCF0 80116930 0C0434BA */  jal        func_race_8010D2E8
/* CCCF4 80116934 02202021 */   addu      $a0, $s1, $zero
/* CCCF8 80116938 0C0434F8 */  jal        func_race_8010D3E0
/* CCCFC 8011693C 02202021 */   addu      $a0, $s1, $zero
/* CCD00 80116940 0C04353E */  jal        func_race_8010D4F8
/* CCD04 80116944 02202021 */   addu      $a0, $s1, $zero
/* CCD08 80116948 0C043564 */  jal        func_race_8010D590
/* CCD0C 8011694C 02202021 */   addu      $a0, $s1, $zero
/* CCD10 80116950 0C04367A */  jal        func_race_8010D9E8
/* CCD14 80116954 02202021 */   addu      $a0, $s1, $zero
/* CCD18 80116958 0C043879 */  jal        func_race_8010E1E4
/* CCD1C 8011695C 02202021 */   addu      $a0, $s1, $zero
/* CCD20 80116960 0C0435A8 */  jal        func_race_8010D6A0
/* CCD24 80116964 02202021 */   addu      $a0, $s1, $zero
/* CCD28 80116968 02202021 */  addu       $a0, $s1, $zero
/* CCD2C 8011696C 0C04389D */  jal        func_race_8010E274
/* CCD30 80116970 26450001 */   addiu     $a1, $s2, 0x1
/* CCD34 80116974 8E230D04 */  lw         $v1, 0xD04($s1)
/* CCD38 80116978 3C020020 */  lui        $v0, (0x200000 >> 16)
/* CCD3C 8011697C 00621024 */  and        $v0, $v1, $v0
/* CCD40 80116980 10400004 */  beqz       $v0, .Lrace_80116994
/* CCD44 80116984 3C02FFDF */   lui       $v0, (0xFFDFFFFF >> 16)
/* CCD48 80116988 3442FFFF */  ori        $v0, $v0, (0xFFDFFFFF & 0xFFFF)
/* CCD4C 8011698C 00621024 */  and        $v0, $v1, $v0
/* CCD50 80116990 AE220D04 */  sw         $v0, 0xD04($s1)
.Lrace_80116994:
/* CCD54 80116994 26300018 */  addiu      $s0, $s1, 0x18
/* CCD58 80116998 0C0455AD */  jal        func_race_801156B4
/* CCD5C 8011699C 02002021 */   addu      $a0, $s0, $zero
/* CCD60 801169A0 0C044B17 */  jal        func_race_80112C5C
/* CCD64 801169A4 02002021 */   addu      $a0, $s0, $zero
/* CCD68 801169A8 0C044B9A */  jal        func_race_80112E68
/* CCD6C 801169AC 02002021 */   addu      $a0, $s0, $zero
/* CCD70 801169B0 0C044AC4 */  jal        func_race_80112B10
/* CCD74 801169B4 02002021 */   addu      $a0, $s0, $zero
/* CCD78 801169B8 0C044AB0 */  jal        func_race_80112AC0
/* CCD7C 801169BC 02002021 */   addu      $a0, $s0, $zero
/* CCD80 801169C0 8E220018 */  lw         $v0, 0x18($s1)
/* CCD84 801169C4 02002021 */  addu       $a0, $s0, $zero
/* CCD88 801169C8 34420004 */  ori        $v0, $v0, 0x4
/* CCD8C 801169CC 0C0456E9 */  jal        func_race_80115BA4
/* CCD90 801169D0 AE220018 */   sw        $v0, 0x18($s1)
/* CCD94 801169D4 0C0456D5 */  jal        func_race_80115B54
/* CCD98 801169D8 02002021 */   addu      $a0, $s0, $zero
/* CCD9C 801169DC 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* CCDA0 801169E0 0C0456FA */  jal        func_race_80115BE8
/* CCDA4 801169E4 02002021 */   addu      $a0, $s0, $zero
/* CCDA8 801169E8 8E020044 */  lw         $v0, 0x44($s0)
/* CCDAC 801169EC AC4000B8 */  sw         $zero, 0xB8($v0)
/* CCDB0 801169F0 8E020040 */  lw         $v0, 0x40($s0)
/* CCDB4 801169F4 54400001 */  bnel       $v0, $zero, .Lrace_801169FC
/* CCDB8 801169F8 AC4000B8 */   sw        $zero, 0xB8($v0)
.Lrace_801169FC:
/* CCDBC 801169FC 0C04570C */  jal        func_race_80115C30
/* CCDC0 80116A00 02002021 */   addu      $a0, $s0, $zero
/* CCDC4 80116A04 00008021 */  addu       $s0, $zero, $zero
.Lrace_80116A08:
/* CCDC8 80116A08 2E020004 */  sltiu      $v0, $s0, 0x4
/* CCDCC 80116A0C 10400006 */  beqz       $v0, .Lrace_80116A28
/* CCDD0 80116A10 00121080 */   sll       $v0, $s2, 2
/* CCDD4 80116A14 26240018 */  addiu      $a0, $s1, 0x18
/* CCDD8 80116A18 0C044C2C */  jal        func_race_801130B0
/* CCDDC 80116A1C 02002821 */   addu      $a1, $s0, $zero
/* CCDE0 80116A20 08045A82 */  j          .Lrace_80116A08
/* CCDE4 80116A24 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_80116A28:
/* CCDE8 80116A28 8E640004 */  lw         $a0, 0x4($s3)
/* CCDEC 80116A2C 00821021 */  addu       $v0, $a0, $v0
/* CCDF0 80116A30 8C42026C */  lw         $v0, 0x26C($v0)
/* CCDF4 80116A34 00021840 */  sll        $v1, $v0, 1
/* CCDF8 80116A38 00621821 */  addu       $v1, $v1, $v0
/* CCDFC 80116A3C 00031880 */  sll        $v1, $v1, 2
/* CCE00 80116A40 00832021 */  addu       $a0, $a0, $v1
/* CCE04 80116A44 8C870194 */  lw         $a3, 0x194($a0)
/* CCE08 80116A48 8C880198 */  lw         $t0, 0x198($a0)
/* CCE0C 80116A4C 8C89019C */  lw         $t1, 0x19C($a0)
/* CCE10 80116A50 AFA70030 */  sw         $a3, 0x30($sp)
/* CCE14 80116A54 AFA80034 */  sw         $t0, 0x34($sp)
/* CCE18 80116A58 AFA90038 */  sw         $t1, 0x38($sp)
/* CCE1C 80116A5C 8E620004 */  lw         $v0, 0x4($s3)
/* CCE20 80116A60 00431021 */  addu       $v0, $v0, $v1
/* CCE24 80116A64 8C4701DC */  lw         $a3, 0x1DC($v0)
/* CCE28 80116A68 8C4801E0 */  lw         $t0, 0x1E0($v0)
/* CCE2C 80116A6C 8C4901E4 */  lw         $t1, 0x1E4($v0)
/* CCE30 80116A70 AFA70010 */  sw         $a3, 0x10($sp)
/* CCE34 80116A74 AFA80014 */  sw         $t0, 0x14($sp)
/* CCE38 80116A78 AFA90018 */  sw         $t1, 0x18($sp)
/* CCE3C 80116A7C 8E620004 */  lw         $v0, 0x4($s3)
/* CCE40 80116A80 26300018 */  addiu      $s0, $s1, 0x18
/* CCE44 80116A84 00431021 */  addu       $v0, $v0, $v1
/* CCE48 80116A88 8C470224 */  lw         $a3, 0x224($v0)
/* CCE4C 80116A8C 8C480228 */  lw         $t0, 0x228($v0)
/* CCE50 80116A90 8C49022C */  lw         $t1, 0x22C($v0)
/* CCE54 80116A94 AFA70020 */  sw         $a3, 0x20($sp)
/* CCE58 80116A98 AFA80024 */  sw         $t0, 0x24($sp)
/* CCE5C 80116A9C AFA90028 */  sw         $t1, 0x28($sp)
/* CCE60 80116AA0 8E030044 */  lw         $v1, 0x44($s0)
/* CCE64 80116AA4 8C620024 */  lw         $v0, 0x24($v1)
/* CCE68 80116AA8 27A50030 */  addiu      $a1, $sp, 0x30
/* CCE6C 80116AAC 84440018 */  lh         $a0, 0x18($v0)
/* CCE70 80116AB0 8C42001C */  lw         $v0, 0x1C($v0)
/* CCE74 80116AB4 0040F809 */  jalr       $v0
/* CCE78 80116AB8 00642021 */   addu      $a0, $v1, $a0
/* CCE7C 80116ABC 8E030044 */  lw         $v1, 0x44($s0)
/* CCE80 80116AC0 02C02821 */  addu       $a1, $s6, $zero
/* CCE84 80116AC4 8C620024 */  lw         $v0, 0x24($v1)
/* CCE88 80116AC8 27A60020 */  addiu      $a2, $sp, 0x20
/* CCE8C 80116ACC 84440080 */  lh         $a0, 0x80($v0)
/* CCE90 80116AD0 8C420084 */  lw         $v0, 0x84($v0)
/* CCE94 80116AD4 0040F809 */  jalr       $v0
/* CCE98 80116AD8 00642021 */   addu      $a0, $v1, $a0
/* CCE9C 80116ADC 0C044E89 */  jal        func_race_80113A24
/* CCEA0 80116AE0 02002021 */   addu      $a0, $s0, $zero
/* CCEA4 80116AE4 0C043967 */  jal        func_race_8010E59C
/* CCEA8 80116AE8 02202021 */   addu      $a0, $s1, $zero
/* CCEAC 80116AEC 8E620000 */  lw         $v0, 0x0($s3)
/* CCEB0 80116AF0 00551021 */  addu       $v0, $v0, $s5
/* CCEB4 80116AF4 8C420118 */  lw         $v0, 0x118($v0)
/* CCEB8 80116AF8 14400003 */  bnez       $v0, .Lrace_80116B08
/* CCEBC 80116AFC 02202021 */   addu      $a0, $s1, $zero
/* CCEC0 80116B00 AE200D08 */  sw         $zero, 0xD08($s1)
/* CCEC4 80116B04 AE200E24 */  sw         $zero, 0xE24($s1)
.Lrace_80116B08:
/* CCEC8 80116B08 00002821 */  addu       $a1, $zero, $zero
/* CCECC 80116B0C 0C0429F8 */  jal        func_race_8010A7E0
/* CCED0 80116B10 00A03021 */   addu      $a2, $a1, $zero
/* CCED4 80116B14 02202021 */  addu       $a0, $s1, $zero
/* CCED8 80116B18 26B5005C */  addiu      $s5, $s5, 0x5C
/* CCEDC 80116B1C 26940E2C */  addiu      $s4, $s4, 0xE2C
/* CCEE0 80116B20 8E620004 */  lw         $v0, 0x4($s3)
/* CCEE4 80116B24 26520001 */  addiu      $s2, $s2, 0x1
/* CCEE8 80116B28 244202A0 */  addiu      $v0, $v0, 0x2A0
/* CCEEC 80116B2C 0C042AB9 */  jal        func_race_8010AAE4
/* CCEF0 80116B30 AE220CC0 */   sw        $v0, 0xCC0($s1)
/* CCEF4 80116B34 0C042F5E */  jal        func_race_8010BD78
/* CCEF8 80116B38 02202021 */   addu      $a0, $s1, $zero
/* CCEFC 80116B3C 08045A36 */  j          .Lrace_801168D8
/* CCF00 80116B40 00000000 */   nop
.Lrace_80116B44:
/* CCF04 80116B44 8FBF005C */  lw         $ra, 0x5C($sp)
/* CCF08 80116B48 8FB60058 */  lw         $s6, 0x58($sp)
/* CCF0C 80116B4C 8FB50054 */  lw         $s5, 0x54($sp)
/* CCF10 80116B50 8FB40050 */  lw         $s4, 0x50($sp)
/* CCF14 80116B54 8FB3004C */  lw         $s3, 0x4C($sp)
/* CCF18 80116B58 8FB20048 */  lw         $s2, 0x48($sp)
/* CCF1C 80116B5C 8FB10044 */  lw         $s1, 0x44($sp)
/* CCF20 80116B60 8FB00040 */  lw         $s0, 0x40($sp)
/* CCF24 80116B64 03E00008 */  jr         $ra
/* CCF28 80116B68 27BD0060 */   addiu     $sp, $sp, 0x60
