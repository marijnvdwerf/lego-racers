.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801267C0
/* DCB80 801267C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DCB84 801267C4 AFB00010 */  sw         $s0, 0x10($sp)
/* DCB88 801267C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* DCB8C 801267CC 0C047E80 */  jal        func_race_8011FA00
/* DCB90 801267D0 00808021 */   addu      $s0, $a0, $zero
/* DCB94 801267D4 02001021 */  addu       $v0, $s0, $zero
/* DCB98 801267D8 3C03800D */  lui        $v1, %hi(D_race_800CEAC8)
/* DCB9C 801267DC 2463EAC8 */  addiu      $v1, $v1, %lo(D_race_800CEAC8)
/* DCBA0 801267E0 AC430000 */  sw         $v1, 0x0($v0)
/* DCBA4 801267E4 AC400018 */  sw         $zero, 0x18($v0)
/* DCBA8 801267E8 AC40001C */  sw         $zero, 0x1C($v0)
/* DCBAC 801267EC AC400020 */  sw         $zero, 0x20($v0)
/* DCBB0 801267F0 AC400024 */  sw         $zero, 0x24($v0)
/* DCBB4 801267F4 AC400028 */  sw         $zero, 0x28($v0)
/* DCBB8 801267F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* DCBBC 801267FC 8FB00010 */  lw         $s0, 0x10($sp)
/* DCBC0 80126800 03E00008 */  jr         $ra
/* DCBC4 80126804 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80126808
/* DCBC8 80126808 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DCBCC 8012680C AFB00010 */  sw         $s0, 0x10($sp)
/* DCBD0 80126810 00808021 */  addu       $s0, $a0, $zero
/* DCBD4 80126814 AFBF0014 */  sw         $ra, 0x14($sp)
/* DCBD8 80126818 8CA50014 */  lw         $a1, 0x14($a1)
/* DCBDC 8012681C 8E020028 */  lw         $v0, 0x28($s0)
/* DCBE0 80126820 10A20012 */  beq        $a1, $v0, .Lrace_8012686C
/* DCBE4 80126824 00000000 */   nop
/* DCBE8 80126828 8CA20D04 */  lw         $v0, 0xD04($a1)
/* DCBEC 8012682C 30420001 */  andi       $v0, $v0, 0x1
/* DCBF0 80126830 10400009 */  beqz       $v0, .Lrace_80126858
/* DCBF4 80126834 00000000 */   nop
/* DCBF8 80126838 0C0438E0 */  jal        func_race_8010E380
/* DCBFC 8012683C 00A02021 */   addu      $a0, $a1, $zero
/* DCC00 80126840 8E020014 */  lw         $v0, 0x14($s0)
/* DCC04 80126844 2C420003 */  sltiu      $v0, $v0, 0x3
/* DCC08 80126848 10400008 */  beqz       $v0, .Lrace_8012686C
/* DCC0C 8012684C 24020006 */   addiu     $v0, $zero, 0x6
/* DCC10 80126850 08049A1B */  j          .Lrace_8012686C
/* DCC14 80126854 AE020004 */   sw        $v0, 0x4($s0)
.Lrace_80126858:
/* DCC18 80126858 8E020000 */  lw         $v0, 0x0($s0)
/* DCC1C 8012685C 84440048 */  lh         $a0, 0x48($v0)
/* DCC20 80126860 8C42004C */  lw         $v0, 0x4C($v0)
/* DCC24 80126864 0040F809 */  jalr       $v0
/* DCC28 80126868 02042021 */   addu      $a0, $s0, $a0
.Lrace_8012686C:
/* DCC2C 8012686C 8FBF0014 */  lw         $ra, 0x14($sp)
/* DCC30 80126870 8FB00010 */  lw         $s0, 0x10($sp)
/* DCC34 80126874 03E00008 */  jr         $ra
/* DCC38 80126878 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012687C
/* DCC3C 8012687C 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* DCC40 80126880 AFB3009C */  sw         $s3, 0x9C($sp)
/* DCC44 80126884 00809821 */  addu       $s3, $a0, $zero
/* DCC48 80126888 AFB20098 */  sw         $s2, 0x98($sp)
/* DCC4C 8012688C 00E09021 */  addu       $s2, $a3, $zero
/* DCC50 80126890 AFB00090 */  sw         $s0, 0x90($sp)
/* DCC54 80126894 27B00018 */  addiu      $s0, $sp, 0x18
/* DCC58 80126898 AFBF00A0 */  sw         $ra, 0xA0($sp)
/* DCC5C 8012689C AFB10094 */  sw         $s1, 0x94($sp)
/* DCC60 801268A0 8CA3005C */  lw         $v1, 0x5C($a1)
/* DCC64 801268A4 02002821 */  addu       $a1, $s0, $zero
/* DCC68 801268A8 8C620024 */  lw         $v0, 0x24($v1)
/* DCC6C 801268AC 00C08821 */  addu       $s1, $a2, $zero
/* DCC70 801268B0 84440010 */  lh         $a0, 0x10($v0)
/* DCC74 801268B4 8C420014 */  lw         $v0, 0x14($v0)
/* DCC78 801268B8 0040F809 */  jalr       $v0
/* DCC7C 801268BC 00642021 */   addu      $a0, $v1, $a0
/* DCC80 801268C0 3C01800D */  lui        $at, %hi(D_race_800CEAC0)
/* DCC84 801268C4 C420EAC0 */  lwc1       $f0, %lo(D_race_800CEAC0)($at)
/* DCC88 801268C8 E7A00078 */  swc1       $f0, 0x78($sp)
/* DCC8C 801268CC 3C01800D */  lui        $at, %hi(D_race_800CEAC4)
/* DCC90 801268D0 C420EAC4 */  lwc1       $f0, %lo(D_race_800CEAC4)($at)
/* DCC94 801268D4 C7A40078 */  lwc1       $f4, 0x78($sp)
/* DCC98 801268D8 AFA00070 */  sw         $zero, 0x70($sp)
/* DCC9C 801268DC 46002102 */  mul.s      $f4, $f4, $f0
/* DCCA0 801268E0 C7A20070 */  lwc1       $f2, 0x70($sp)
/* DCCA4 801268E4 C7A00018 */  lwc1       $f0, 0x18($sp)
/* DCCA8 801268E8 AFA00074 */  sw         $zero, 0x74($sp)
/* DCCAC 801268EC 46020001 */  sub.s      $f0, $f0, $f2
/* DCCB0 801268F0 E7A20080 */  swc1       $f2, 0x80($sp)
/* DCCB4 801268F4 E7A20084 */  swc1       $f2, 0x84($sp)
/* DCCB8 801268F8 E7A00028 */  swc1       $f0, 0x28($sp)
/* DCCBC 801268FC E7A40088 */  swc1       $f4, 0x88($sp)
/* DCCC0 80126900 C6000004 */  lwc1       $f0, 0x4($s0)
/* DCCC4 80126904 46020001 */  sub.s      $f0, $f0, $f2
/* DCCC8 80126908 E7A0002C */  swc1       $f0, 0x2C($sp)
/* DCCCC 8012690C C6000008 */  lwc1       $f0, 0x8($s0)
/* DCCD0 80126910 46040001 */  sub.s      $f0, $f0, $f4
/* DCCD4 80126914 16400002 */  bnez       $s2, .Lrace_80126920
/* DCCD8 80126918 E7A00030 */   swc1      $f0, 0x30($sp)
/* DCCDC 8012691C 27B20038 */  addiu      $s2, $sp, 0x38
.Lrace_80126920:
/* DCCE0 80126920 02002821 */  addu       $a1, $s0, $zero
/* DCCE4 80126924 27A60028 */  addiu      $a2, $sp, 0x28
/* DCCE8 80126928 AFB10010 */  sw         $s1, 0x10($sp)
/* DCCEC 8012692C AFA00014 */  sw         $zero, 0x14($sp)
/* DCCF0 80126930 8E640020 */  lw         $a0, 0x20($s3)
/* DCCF4 80126934 0C03CA12 */  jal        func_race_800F2848
/* DCCF8 80126938 02403821 */   addu      $a3, $s2, $zero
/* DCCFC 8012693C 10400013 */  beqz       $v0, .Lrace_8012698C
/* DCD00 80126940 00000000 */   nop
/* DCD04 80126944 C7A40070 */  lwc1       $f4, 0x70($sp)
/* DCD08 80126948 C7A00074 */  lwc1       $f0, 0x74($sp)
/* DCD0C 8012694C C7A20078 */  lwc1       $f2, 0x78($sp)
/* DCD10 80126950 E7A40080 */  swc1       $f4, 0x80($sp)
/* DCD14 80126954 E7A00084 */  swc1       $f0, 0x84($sp)
/* DCD18 80126958 E7A20088 */  swc1       $f2, 0x88($sp)
/* DCD1C 8012695C C6200000 */  lwc1       $f0, 0x0($s1)
/* DCD20 80126960 46040000 */  add.s      $f0, $f0, $f4
/* DCD24 80126964 E6200000 */  swc1       $f0, 0x0($s1)
/* DCD28 80126968 C6200004 */  lwc1       $f0, 0x4($s1)
/* DCD2C 8012696C C7A20084 */  lwc1       $f2, 0x84($sp)
/* DCD30 80126970 46020000 */  add.s      $f0, $f0, $f2
/* DCD34 80126974 E6200004 */  swc1       $f0, 0x4($s1)
/* DCD38 80126978 C6200008 */  lwc1       $f0, 0x8($s1)
/* DCD3C 8012697C C7A20088 */  lwc1       $f2, 0x88($sp)
/* DCD40 80126980 46020000 */  add.s      $f0, $f0, $f2
/* DCD44 80126984 08049A69 */  j          .Lrace_801269A4
/* DCD48 80126988 E6200008 */   swc1      $f0, 0x8($s1)
.Lrace_8012698C:
/* DCD4C 8012698C 8FA80018 */  lw         $t0, 0x18($sp)
/* DCD50 80126990 8FA9001C */  lw         $t1, 0x1C($sp)
/* DCD54 80126994 8FAA0020 */  lw         $t2, 0x20($sp)
/* DCD58 80126998 AE280000 */  sw         $t0, 0x0($s1)
/* DCD5C 8012699C AE290004 */  sw         $t1, 0x4($s1)
/* DCD60 801269A0 AE2A0008 */  sw         $t2, 0x8($s1)
.Lrace_801269A4:
/* DCD64 801269A4 8FBF00A0 */  lw         $ra, 0xA0($sp)
/* DCD68 801269A8 8FB3009C */  lw         $s3, 0x9C($sp)
/* DCD6C 801269AC 8FB20098 */  lw         $s2, 0x98($sp)
/* DCD70 801269B0 8FB10094 */  lw         $s1, 0x94($sp)
/* DCD74 801269B4 8FB00090 */  lw         $s0, 0x90($sp)
/* DCD78 801269B8 03E00008 */  jr         $ra
/* DCD7C 801269BC 27BD00A8 */   addiu     $sp, $sp, 0xA8

glabel func_race_801269C0
/* DCD80 801269C0 03E00008 */  jr         $ra
/* DCD84 801269C4 24020004 */   addiu     $v0, $zero, 0x4

glabel func_race_801269C8
/* DCD88 801269C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DCD8C 801269CC AFBF0010 */  sw         $ra, 0x10($sp)
/* DCD90 801269D0 0C047E8A */  jal        func_race_8011FA28
/* DCD94 801269D4 00000000 */   nop
/* DCD98 801269D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* DCD9C 801269DC 03E00008 */  jr         $ra
/* DCDA0 801269E0 27BD0018 */   addiu     $sp, $sp, 0x18
