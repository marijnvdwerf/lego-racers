.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DDA20
/* 93DE0 800DDA20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93DE4 800DDA24 AFB00010 */  sw         $s0, 0x10($sp)
/* 93DE8 800DDA28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 93DEC 800DDA2C 0C037D78 */  jal        func_race_800DF5E0
/* 93DF0 800DDA30 00808021 */   addu      $s0, $a0, $zero
/* 93DF4 800DDA34 02001021 */  addu       $v0, $s0, $zero
/* 93DF8 800DDA38 3C03800D */  lui        $v1, %hi(D_race_800CB2A8)
/* 93DFC 800DDA3C 2463B2A8 */  addiu      $v1, $v1, %lo(D_race_800CB2A8)
/* 93E00 800DDA40 AC430010 */  sw         $v1, 0x10($v0)
/* 93E04 800DDA44 AC400014 */  sw         $zero, 0x14($v0)
/* 93E08 800DDA48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 93E0C 800DDA4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 93E10 800DDA50 03E00008 */  jr         $ra
/* 93E14 800DDA54 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DDA58
/* 93E18 800DDA58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 93E1C 800DDA5C AFB00010 */  sw         $s0, 0x10($sp)
/* 93E20 800DDA60 00808021 */  addu       $s0, $a0, $zero
/* 93E24 800DDA64 AFB10014 */  sw         $s1, 0x14($sp)
/* 93E28 800DDA68 00A08821 */  addu       $s1, $a1, $zero
/* 93E2C 800DDA6C 3C02800D */  lui        $v0, %hi(D_race_800CB2A8)
/* 93E30 800DDA70 2442B2A8 */  addiu      $v0, $v0, %lo(D_race_800CB2A8)
/* 93E34 800DDA74 AFBF0018 */  sw         $ra, 0x18($sp)
/* 93E38 800DDA78 0C037769 */  jal        func_race_800DDDA4
/* 93E3C 800DDA7C AE020010 */   sw        $v0, 0x10($s0)
/* 93E40 800DDA80 02002021 */  addu       $a0, $s0, $zero
/* 93E44 800DDA84 0C037D81 */  jal        func_race_800DF604
/* 93E48 800DDA88 02202821 */   addu      $a1, $s1, $zero
/* 93E4C 800DDA8C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 93E50 800DDA90 8FB10014 */  lw         $s1, 0x14($sp)
/* 93E54 800DDA94 8FB00010 */  lw         $s0, 0x10($sp)
/* 93E58 800DDA98 03E00008 */  jr         $ra
/* 93E5C 800DDA9C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DDAA0
/* 93E60 800DDAA0 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 93E64 800DDAA4 AFB60070 */  sw         $s6, 0x70($sp)
/* 93E68 800DDAA8 8FB60090 */  lw         $s6, 0x90($sp)
/* 93E6C 800DDAAC AFB5006C */  sw         $s5, 0x6C($sp)
/* 93E70 800DDAB0 0080A821 */  addu       $s5, $a0, $zero
/* 93E74 800DDAB4 AFB70074 */  sw         $s7, 0x74($sp)
/* 93E78 800DDAB8 00A0B821 */  addu       $s7, $a1, $zero
/* 93E7C 800DDABC AFB00058 */  sw         $s0, 0x58($sp)
/* 93E80 800DDAC0 AFBF007C */  sw         $ra, 0x7C($sp)
/* 93E84 800DDAC4 AFBE0078 */  sw         $fp, 0x78($sp)
/* 93E88 800DDAC8 AFB40068 */  sw         $s4, 0x68($sp)
/* 93E8C 800DDACC AFB30064 */  sw         $s3, 0x64($sp)
/* 93E90 800DDAD0 AFB20060 */  sw         $s2, 0x60($sp)
/* 93E94 800DDAD4 AFB1005C */  sw         $s1, 0x5C($sp)
/* 93E98 800DDAD8 AFA7008C */  sw         $a3, 0x8C($sp)
/* 93E9C 800DDADC 8EA20000 */  lw         $v0, 0x0($s5)
/* 93EA0 800DDAE0 8FBE00A0 */  lw         $fp, 0xA0($sp)
/* 93EA4 800DDAE4 10400006 */  beqz       $v0, .Lrace_800DDB00
/* 93EA8 800DDAE8 00C08021 */   addu      $s0, $a2, $zero
/* 93EAC 800DDAEC 8EA20010 */  lw         $v0, 0x10($s5)
/* 93EB0 800DDAF0 84440010 */  lh         $a0, 0x10($v0)
/* 93EB4 800DDAF4 8C420014 */  lw         $v0, 0x14($v0)
/* 93EB8 800DDAF8 0040F809 */  jalr       $v0
/* 93EBC 800DDAFC 02A42021 */   addu      $a0, $s5, $a0
.Lrace_800DDB00:
/* 93EC0 800DDB00 02A02021 */  addu       $a0, $s5, $zero
/* 93EC4 800DDB04 8FA50098 */  lw         $a1, 0x98($sp)
/* 93EC8 800DDB08 8FA6009C */  lw         $a2, 0x9C($sp)
/* 93ECC 800DDB0C 26E200F0 */  addiu      $v0, $s7, 0xF0
/* 93ED0 800DDB10 AEA20000 */  sw         $v0, 0x0($s5)
/* 93ED4 800DDB14 0C037E34 */  jal        func_race_800DF8D0
/* 93ED8 800DDB18 AEB00004 */   sw        $s0, 0x4($s5)
/* 93EDC 800DDB1C 00409821 */  addu       $s3, $v0, $zero
/* 93EE0 800DDB20 12600094 */  beqz       $s3, .Lrace_800DDD74
/* 93EE4 800DDB24 3C028013 */   lui       $v0, %hi(D_race_801320B0)
/* 93EE8 800DDB28 8C4420B0 */  lw         $a0, %lo(D_race_801320B0)($v0)
/* 93EEC 800DDB2C 0C01FB65 */  jal        func_8007ED94
/* 93EF0 800DDB30 00000000 */   nop
/* 93EF4 800DDB34 8EB00008 */  lw         $s0, 0x8($s5)
/* 93EF8 800DDB38 00102040 */  sll        $a0, $s0, 1
/* 93EFC 800DDB3C 00902021 */  addu       $a0, $a0, $s0
/* 93F00 800DDB40 00042080 */  sll        $a0, $a0, 2
/* 93F04 800DDB44 00902023 */  subu       $a0, $a0, $s0
/* 93F08 800DDB48 000420C0 */  sll        $a0, $a0, 3
/* 93F0C 800DDB4C 0C00943C */  jal        func_800250F0
/* 93F10 800DDB50 24840008 */   addiu     $a0, $a0, 0x8
/* 93F14 800DDB54 24420008 */  addiu      $v0, $v0, 0x8
/* 93F18 800DDB58 0040A021 */  addu       $s4, $v0, $zero
/* 93F1C 800DDB5C 02809021 */  addu       $s2, $s4, $zero
/* 93F20 800DDB60 2611FFFF */  addiu      $s1, $s0, -0x1
/* 93F24 800DDB64 06200007 */  bltz       $s1, .Lrace_800DDB84
/* 93F28 800DDB68 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 93F2C 800DDB6C 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800DDB70:
/* 93F30 800DDB70 0C0375A0 */  jal        func_race_800DD680
/* 93F34 800DDB74 02402021 */   addu      $a0, $s2, $zero
/* 93F38 800DDB78 2631FFFF */  addiu      $s1, $s1, -0x1
/* 93F3C 800DDB7C 1630FFFC */  bne        $s1, $s0, .Lrace_800DDB70
/* 93F40 800DDB80 26520058 */   addiu     $s2, $s2, 0x58
.Lrace_800DDB84:
/* 93F44 800DDB84 0C01FB72 */  jal        func_8007EDC8
/* 93F48 800DDB88 AEB40014 */   sw        $s4, 0x14($s5)
/* 93F4C 800DDB8C 8EA20014 */  lw         $v0, 0x14($s5)
/* 93F50 800DDB90 14400008 */  bnez       $v0, .Lrace_800DDBB4
/* 93F54 800DDB94 0000A021 */   addu      $s4, $zero, $zero
/* 93F58 800DDB98 3C04800D */  lui        $a0, %hi(D_race_800CB2A0)
/* 93F5C 800DDB9C 2484B2A0 */  addiu      $a0, $a0, %lo(D_race_800CB2A0)
/* 93F60 800DDBA0 00002821 */  addu       $a1, $zero, $zero
/* 93F64 800DDBA4 00A03021 */  addu       $a2, $a1, $zero
/* 93F68 800DDBA8 0C011ACF */  jal        func_80046B3C
/* 93F6C 800DDBAC 00A03821 */   addu      $a3, $a1, $zero
/* 93F70 800DDBB0 0000A021 */  addu       $s4, $zero, $zero
.Lrace_800DDBB4:
/* 93F74 800DDBB4 24110001 */  addiu      $s1, $zero, 0x1
/* 93F78 800DDBB8 27B20050 */  addiu      $s2, $sp, 0x50
/* 93F7C 800DDBBC 02808021 */  addu       $s0, $s4, $zero
.Lrace_800DDBC0:
/* 93F80 800DDBC0 8EA20008 */  lw         $v0, 0x8($s5)
/* 93F84 800DDBC4 0282102B */  sltu       $v0, $s4, $v0
/* 93F88 800DDBC8 10400067 */  beqz       $v0, .Lrace_800DDD68
/* 93F8C 800DDBCC 02602021 */   addu      $a0, $s3, $zero
/* 93F90 800DDBD0 0C0026F4 */  jal        func_80009BD0
/* 93F94 800DDBD4 24050027 */   addiu     $a1, $zero, 0x27
/* 93F98 800DDBD8 02602021 */  addu       $a0, $s3, $zero
/* 93F9C 800DDBDC 0C0026F4 */  jal        func_80009BD0
/* 93FA0 800DDBE0 24050005 */   addiu     $a1, $zero, 0x5
/* 93FA4 800DDBE4 8FA8008C */  lw         $t0, 0x8C($sp)
/* 93FA8 800DDBE8 8EA20004 */  lw         $v0, 0x4($s5)
/* 93FAC 800DDBEC AFA80030 */  sw         $t0, 0x30($sp)
/* 93FB0 800DDBF0 8FA80094 */  lw         $t0, 0x94($sp)
/* 93FB4 800DDBF4 AFA00018 */  sw         $zero, 0x18($sp)
/* 93FB8 800DDBF8 AFA0001C */  sw         $zero, 0x1C($sp)
/* 93FBC 800DDBFC AFA00020 */  sw         $zero, 0x20($sp)
/* 93FC0 800DDC00 AFA00024 */  sw         $zero, 0x24($sp)
/* 93FC4 800DDC04 AFA00014 */  sw         $zero, 0x14($sp)
/* 93FC8 800DDC08 AFA00028 */  sw         $zero, 0x28($sp)
/* 93FCC 800DDC0C AFB7002C */  sw         $s7, 0x2C($sp)
/* 93FD0 800DDC10 AFA0003C */  sw         $zero, 0x3C($sp)
/* 93FD4 800DDC14 AFA00040 */  sw         $zero, 0x40($sp)
/* 93FD8 800DDC18 AFA00044 */  sw         $zero, 0x44($sp)
/* 93FDC 800DDC1C AFA00038 */  sw         $zero, 0x38($sp)
/* 93FE0 800DDC20 AFA00048 */  sw         $zero, 0x48($sp)
/* 93FE4 800DDC24 AFA20010 */  sw         $v0, 0x10($sp)
/* 93FE8 800DDC28 AFA80034 */  sw         $t0, 0x34($sp)
.Lrace_800DDC2C:
/* 93FEC 800DDC2C 8E620028 */  lw         $v0, 0x28($s3)
/* 93FF0 800DDC30 844400A0 */  lh         $a0, 0xA0($v0)
/* 93FF4 800DDC34 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 93FF8 800DDC38 0040F809 */  jalr       $v0
/* 93FFC 800DDC3C 02642021 */   addu      $a0, $s3, $a0
/* 94000 800DDC40 00401821 */  addu       $v1, $v0, $zero
/* 94004 800DDC44 24020006 */  addiu      $v0, $zero, 0x6
/* 94008 800DDC48 10620037 */  beq        $v1, $v0, .Lrace_800DDD28
/* 9400C 800DDC4C 2402002D */   addiu     $v0, $zero, 0x2D
/* 94010 800DDC50 1062000C */  beq        $v1, $v0, .Lrace_800DDC84
/* 94014 800DDC54 2C62002E */   sltiu     $v0, $v1, 0x2E
/* 94018 800DDC58 10400005 */  beqz       $v0, .Lrace_800DDC70
/* 9401C 800DDC5C 2402002C */   addiu     $v0, $zero, 0x2C
/* 94020 800DDC60 5062FFF2 */  beql       $v1, $v0, .Lrace_800DDC2C
/* 94024 800DDC64 AFB1003C */   sw        $s1, 0x3C($sp)
/* 94028 800DDC68 08037745 */  j          .Lrace_800DDD14
/* 9402C 800DDC6C 02A02021 */   addu      $a0, $s5, $zero
.Lrace_800DDC70:
/* 94030 800DDC70 2402002E */  addiu      $v0, $zero, 0x2E
/* 94034 800DDC74 10620022 */  beq        $v1, $v0, .Lrace_800DDD00
/* 94038 800DDC78 00000000 */   nop
/* 9403C 800DDC7C 08037745 */  j          .Lrace_800DDD14
/* 94040 800DDC80 02A02021 */   addu      $a0, $s5, $zero
.Lrace_800DDC84:
/* 94044 800DDC84 8E620028 */  lw         $v0, 0x28($s3)
/* 94048 800DDC88 844400A0 */  lh         $a0, 0xA0($v0)
/* 9404C 800DDC8C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 94050 800DDC90 0040F809 */  jalr       $v0
/* 94054 800DDC94 02642021 */   addu      $a0, $s3, $a0
/* 94058 800DDC98 02402021 */  addu       $a0, $s2, $zero
/* 9405C 800DDC9C 26650044 */  addiu      $a1, $s3, 0x44
/* 94060 800DDCA0 0C000708 */  jal        func_80001C20
/* 94064 800DDCA4 24060008 */   addiu     $a2, $zero, 0x8
/* 94068 800DDCA8 8EC200D4 */  lw         $v0, 0xD4($s6)
/* 9406C 800DDCAC 26C400D4 */  addiu      $a0, $s6, 0xD4
/* 94070 800DDCB0 10400004 */  beqz       $v0, .Lrace_800DDCC4
/* 94074 800DDCB4 00002821 */   addu      $a1, $zero, $zero
/* 94078 800DDCB8 0C016427 */  jal        func_8005909C
/* 9407C 800DDCBC 02402821 */   addu      $a1, $s2, $zero
/* 94080 800DDCC0 00402821 */  addu       $a1, $v0, $zero
.Lrace_800DDCC4:
/* 94084 800DDCC4 00001821 */  addu       $v1, $zero, $zero
/* 94088 800DDCC8 8EC20060 */  lw         $v0, 0x60($s6)
/* 9408C 800DDCCC 00602021 */  addu       $a0, $v1, $zero
/* 94090 800DDCD0 AFA20048 */  sw         $v0, 0x48($sp)
.Lrace_800DDCD4:
/* 94094 800DDCD4 8FA20048 */  lw         $v0, 0x48($sp)
/* 94098 800DDCD8 0062102B */  sltu       $v0, $v1, $v0
/* 9409C 800DDCDC 5040FFD3 */  beql       $v0, $zero, .Lrace_800DDC2C
/* 940A0 800DDCE0 AFB10040 */   sw        $s1, 0x40($sp)
/* 940A4 800DDCE4 8EC200A4 */  lw         $v0, 0xA4($s6)
/* 940A8 800DDCE8 00441021 */  addu       $v0, $v0, $a0
/* 940AC 800DDCEC 50450001 */  beql       $v0, $a1, .Lrace_800DDCF4
/* 940B0 800DDCF0 AFA30048 */   sw        $v1, 0x48($sp)
.Lrace_800DDCF4:
/* 940B4 800DDCF4 24840064 */  addiu      $a0, $a0, 0x64
/* 940B8 800DDCF8 08037735 */  j          .Lrace_800DDCD4
/* 940BC 800DDCFC 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DDD00:
/* 940C0 800DDD00 0C002680 */  jal        func_80009A00
/* 940C4 800DDD04 02602021 */   addu      $a0, $s3, $zero
/* 940C8 800DDD08 AFA20038 */  sw         $v0, 0x38($sp)
/* 940CC 800DDD0C 0803770B */  j          .Lrace_800DDC2C
/* 940D0 800DDD10 AFB10044 */   sw        $s1, 0x44($sp)
.Lrace_800DDD14:
/* 940D4 800DDD14 02602821 */  addu       $a1, $s3, $zero
/* 940D8 800DDD18 0C037E94 */  jal        func_race_800DFA50
/* 940DC 800DDD1C 27A60010 */   addiu     $a2, $sp, 0x10
/* 940E0 800DDD20 0803770B */  j          .Lrace_800DDC2C
/* 940E4 800DDD24 00000000 */   nop
.Lrace_800DDD28:
/* 940E8 800DDD28 13C00004 */  beqz       $fp, .Lrace_800DDD3C
/* 940EC 800DDD2C 27A50010 */   addiu     $a1, $sp, 0x10
/* 940F0 800DDD30 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* 940F4 800DDD34 46000007 */  neg.s      $f0, $f0
/* 940F8 800DDD38 E7A0001C */  swc1       $f0, 0x1C($sp)
.Lrace_800DDD3C:
/* 940FC 800DDD3C 8EA40014 */  lw         $a0, 0x14($s5)
/* 94100 800DDD40 26940001 */  addiu      $s4, $s4, 0x1
/* 94104 800DDD44 0C0375C6 */  jal        func_race_800DD718
/* 94108 800DDD48 00902021 */   addu      $a0, $a0, $s0
/* 9410C 800DDD4C 02A02021 */  addu       $a0, $s5, $zero
/* 94110 800DDD50 8EA50014 */  lw         $a1, 0x14($s5)
/* 94114 800DDD54 8FA6003C */  lw         $a2, 0x3C($sp)
/* 94118 800DDD58 0C037ECB */  jal        func_race_800DFB2C
/* 9411C 800DDD5C 00B02821 */   addu      $a1, $a1, $s0
/* 94120 800DDD60 080376F0 */  j          .Lrace_800DDBC0
/* 94124 800DDD64 26100058 */   addiu     $s0, $s0, 0x58
.Lrace_800DDD68:
/* 94128 800DDD68 02A02021 */  addu       $a0, $s5, $zero
/* 9412C 800DDD6C 0C037E80 */  jal        func_race_800DFA00
/* 94130 800DDD70 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DDD74:
/* 94134 800DDD74 8FBF007C */  lw         $ra, 0x7C($sp)
/* 94138 800DDD78 8FBE0078 */  lw         $fp, 0x78($sp)
/* 9413C 800DDD7C 8FB70074 */  lw         $s7, 0x74($sp)
/* 94140 800DDD80 8FB60070 */  lw         $s6, 0x70($sp)
/* 94144 800DDD84 8FB5006C */  lw         $s5, 0x6C($sp)
/* 94148 800DDD88 8FB40068 */  lw         $s4, 0x68($sp)
/* 9414C 800DDD8C 8FB30064 */  lw         $s3, 0x64($sp)
/* 94150 800DDD90 8FB20060 */  lw         $s2, 0x60($sp)
/* 94154 800DDD94 8FB1005C */  lw         $s1, 0x5C($sp)
/* 94158 800DDD98 8FB00058 */  lw         $s0, 0x58($sp)
/* 9415C 800DDD9C 03E00008 */  jr         $ra
/* 94160 800DDDA0 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_800DDDA4
/* 94164 800DDDA4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 94168 800DDDA8 AFB10014 */  sw         $s1, 0x14($sp)
/* 9416C 800DDDAC 00808821 */  addu       $s1, $a0, $zero
/* 94170 800DDDB0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 94174 800DDDB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 94178 800DDDB8 8E240014 */  lw         $a0, 0x14($s1)
/* 9417C 800DDDBC 10800017 */  beqz       $a0, .Lrace_800DDE1C
/* 94180 800DDDC0 00000000 */   nop
/* 94184 800DDDC4 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 94188 800DDDC8 00031040 */  sll        $v0, $v1, 1
/* 9418C 800DDDCC 00431021 */  addu       $v0, $v0, $v1
/* 94190 800DDDD0 00021080 */  sll        $v0, $v0, 2
/* 94194 800DDDD4 00431023 */  subu       $v0, $v0, $v1
/* 94198 800DDDD8 000210C0 */  sll        $v0, $v0, 3
/* 9419C 800DDDDC 00828021 */  addu       $s0, $a0, $v0
/* 941A0 800DDDE0 1090000B */  beq        $a0, $s0, .Lrace_800DDE10
/* 941A4 800DDDE4 2610FFA8 */   addiu     $s0, $s0, -0x58
.Lrace_800DDDE8:
/* 941A8 800DDDE8 8E020000 */  lw         $v0, 0x0($s0)
/* 941AC 800DDDEC 24050002 */  addiu      $a1, $zero, 0x2
/* 941B0 800DDDF0 84440010 */  lh         $a0, 0x10($v0)
/* 941B4 800DDDF4 8C420014 */  lw         $v0, 0x14($v0)
/* 941B8 800DDDF8 0040F809 */  jalr       $v0
/* 941BC 800DDDFC 02042021 */   addu      $a0, $s0, $a0
/* 941C0 800DDE00 8E220014 */  lw         $v0, 0x14($s1)
/* 941C4 800DDE04 1450FFF8 */  bne        $v0, $s0, .Lrace_800DDDE8
/* 941C8 800DDE08 2610FFA8 */   addiu     $s0, $s0, -0x58
/* 941CC 800DDE0C 8E240014 */  lw         $a0, 0x14($s1)
.Lrace_800DDE10:
/* 941D0 800DDE10 0C009444 */  jal        func_80025110
/* 941D4 800DDE14 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 941D8 800DDE18 AE200014 */  sw         $zero, 0x14($s1)
.Lrace_800DDE1C:
/* 941DC 800DDE1C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 941E0 800DDE20 8FB10014 */  lw         $s1, 0x14($sp)
/* 941E4 800DDE24 8FB00010 */  lw         $s0, 0x10($sp)
/* 941E8 800DDE28 03E00008 */  jr         $ra
/* 941EC 800DDE2C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DDE30
/* 941F0 800DDE30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 941F4 800DDE34 AFB20018 */  sw         $s2, 0x18($sp)
/* 941F8 800DDE38 00809021 */  addu       $s2, $a0, $zero
/* 941FC 800DDE3C AFB3001C */  sw         $s3, 0x1C($sp)
/* 94200 800DDE40 00A09821 */  addu       $s3, $a1, $zero
/* 94204 800DDE44 AFBF0020 */  sw         $ra, 0x20($sp)
/* 94208 800DDE48 AFB10014 */  sw         $s1, 0x14($sp)
/* 9420C 800DDE4C AFB00010 */  sw         $s0, 0x10($sp)
/* 94210 800DDE50 8E420008 */  lw         $v0, 0x8($s2)
/* 94214 800DDE54 1040000F */  beqz       $v0, .Lrace_800DDE94
/* 94218 800DDE58 00008021 */   addu      $s0, $zero, $zero
/* 9421C 800DDE5C 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DDE60:
/* 94220 800DDE60 8E440014 */  lw         $a0, 0x14($s2)
/* 94224 800DDE64 02242021 */  addu       $a0, $s1, $a0
/* 94228 800DDE68 8C830000 */  lw         $v1, 0x0($a0)
/* 9422C 800DDE6C 84620020 */  lh         $v0, 0x20($v1)
/* 94230 800DDE70 26100001 */  addiu      $s0, $s0, 0x1
/* 94234 800DDE74 00822021 */  addu       $a0, $a0, $v0
/* 94238 800DDE78 8C620024 */  lw         $v0, 0x24($v1)
/* 9423C 800DDE7C 0040F809 */  jalr       $v0
/* 94240 800DDE80 02602821 */   addu      $a1, $s3, $zero
/* 94244 800DDE84 8E420008 */  lw         $v0, 0x8($s2)
/* 94248 800DDE88 0202102B */  sltu       $v0, $s0, $v0
/* 9424C 800DDE8C 1440FFF4 */  bnez       $v0, .Lrace_800DDE60
/* 94250 800DDE90 26310058 */   addiu     $s1, $s1, 0x58
.Lrace_800DDE94:
/* 94254 800DDE94 8FBF0020 */  lw         $ra, 0x20($sp)
/* 94258 800DDE98 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9425C 800DDE9C 8FB20018 */  lw         $s2, 0x18($sp)
/* 94260 800DDEA0 8FB10014 */  lw         $s1, 0x14($sp)
/* 94264 800DDEA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 94268 800DDEA8 03E00008 */  jr         $ra
/* 9426C 800DDEAC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DDEB0
/* 94270 800DDEB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 94274 800DDEB4 AFB20018 */  sw         $s2, 0x18($sp)
/* 94278 800DDEB8 00809021 */  addu       $s2, $a0, $zero
/* 9427C 800DDEBC AFBF001C */  sw         $ra, 0x1C($sp)
/* 94280 800DDEC0 AFB10014 */  sw         $s1, 0x14($sp)
/* 94284 800DDEC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 94288 800DDEC8 8E420008 */  lw         $v0, 0x8($s2)
/* 9428C 800DDECC 1040000E */  beqz       $v0, .Lrace_800DDF08
/* 94290 800DDED0 00008021 */   addu      $s0, $zero, $zero
/* 94294 800DDED4 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DDED8:
/* 94298 800DDED8 8E440014 */  lw         $a0, 0x14($s2)
/* 9429C 800DDEDC 02242021 */  addu       $a0, $s1, $a0
/* 942A0 800DDEE0 8C820000 */  lw         $v0, 0x0($a0)
/* 942A4 800DDEE4 26100001 */  addiu      $s0, $s0, 0x1
/* 942A8 800DDEE8 84430028 */  lh         $v1, 0x28($v0)
/* 942AC 800DDEEC 8C42002C */  lw         $v0, 0x2C($v0)
/* 942B0 800DDEF0 0040F809 */  jalr       $v0
/* 942B4 800DDEF4 00832021 */   addu      $a0, $a0, $v1
/* 942B8 800DDEF8 8E420008 */  lw         $v0, 0x8($s2)
/* 942BC 800DDEFC 0202102B */  sltu       $v0, $s0, $v0
/* 942C0 800DDF00 1440FFF5 */  bnez       $v0, .Lrace_800DDED8
/* 942C4 800DDF04 26310058 */   addiu     $s1, $s1, 0x58
.Lrace_800DDF08:
/* 942C8 800DDF08 8FBF001C */  lw         $ra, 0x1C($sp)
/* 942CC 800DDF0C 8FB20018 */  lw         $s2, 0x18($sp)
/* 942D0 800DDF10 8FB10014 */  lw         $s1, 0x14($sp)
/* 942D4 800DDF14 8FB00010 */  lw         $s0, 0x10($sp)
/* 942D8 800DDF18 03E00008 */  jr         $ra
/* 942DC 800DDF1C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DDF20
/* 942E0 800DDF20 8C820000 */  lw         $v0, 0x0($a0)
/* 942E4 800DDF24 03E00008 */  jr         $ra
/* 942E8 800DDF28 00000000 */   nop

glabel func_race_800DDF2C
/* 942EC 800DDF2C 00051040 */  sll        $v0, $a1, 1
/* 942F0 800DDF30 00451021 */  addu       $v0, $v0, $a1
/* 942F4 800DDF34 00021080 */  sll        $v0, $v0, 2
/* 942F8 800DDF38 00451023 */  subu       $v0, $v0, $a1
/* 942FC 800DDF3C 8C830014 */  lw         $v1, 0x14($a0)
/* 94300 800DDF40 000210C0 */  sll        $v0, $v0, 3
/* 94304 800DDF44 03E00008 */  jr         $ra
/* 94308 800DDF48 00621021 */   addu      $v0, $v1, $v0
