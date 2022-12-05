.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800EDC50
/* A4010 800EDC50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4014 800EDC54 AFB00010 */  sw         $s0, 0x10($sp)
/* A4018 800EDC58 AFBF0014 */  sw         $ra, 0x14($sp)
/* A401C 800EDC5C 0C03A1A4 */  jal        func_race_800E8690
/* A4020 800EDC60 00808021 */   addu      $s0, $a0, $zero
/* A4024 800EDC64 26040010 */  addiu      $a0, $s0, 0x10
/* A4028 800EDC68 3C02800D */  lui        $v0, %hi(D_race_800CC548)
/* A402C 800EDC6C 2442C548 */  addiu      $v0, $v0, %lo(D_race_800CC548)
/* A4030 800EDC70 0C0164A4 */  jal        func_80059290
/* A4034 800EDC74 AE020000 */   sw        $v0, 0x0($s0)
/* A4038 800EDC78 0C039AC0 */  jal        func_race_800E6B00
/* A403C 800EDC7C 26040044 */   addiu     $a0, $s0, 0x44
/* A4040 800EDC80 0C0152E4 */  jal        func_80054B90
/* A4044 800EDC84 26040178 */   addiu     $a0, $s0, 0x178
/* A4048 800EDC88 02001021 */  addu       $v0, $s0, $zero
/* A404C 800EDC8C AC400038 */  sw         $zero, 0x38($v0)
/* A4050 800EDC90 AC40003C */  sw         $zero, 0x3C($v0)
/* A4054 800EDC94 AC400040 */  sw         $zero, 0x40($v0)
/* A4058 800EDC98 AC400184 */  sw         $zero, 0x184($v0)
/* A405C 800EDC9C AC400188 */  sw         $zero, 0x188($v0)
/* A4060 800EDCA0 AC40018C */  sw         $zero, 0x18C($v0)
/* A4064 800EDCA4 A0400190 */  sb         $zero, 0x190($v0)
/* A4068 800EDCA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A406C 800EDCAC 8FB00010 */  lw         $s0, 0x10($sp)
/* A4070 800EDCB0 03E00008 */  jr         $ra
/* A4074 800EDCB4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EDCB8
/* A4078 800EDCB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A407C 800EDCBC AFB00010 */  sw         $s0, 0x10($sp)
/* A4080 800EDCC0 00808021 */  addu       $s0, $a0, $zero
/* A4084 800EDCC4 AFB10014 */  sw         $s1, 0x14($sp)
/* A4088 800EDCC8 00A08821 */  addu       $s1, $a1, $zero
/* A408C 800EDCCC 3C02800D */  lui        $v0, %hi(D_race_800CC548)
/* A4090 800EDCD0 2442C548 */  addiu      $v0, $v0, %lo(D_race_800CC548)
/* A4094 800EDCD4 AFBF0018 */  sw         $ra, 0x18($sp)
/* A4098 800EDCD8 0C03B78D */  jal        func_race_800EDE34
/* A409C 800EDCDC AE020000 */   sw        $v0, 0x0($s0)
/* A40A0 800EDCE0 26040178 */  addiu      $a0, $s0, 0x178
/* A40A4 800EDCE4 0C0152E9 */  jal        func_80054BA4
/* A40A8 800EDCE8 24050002 */   addiu     $a1, $zero, 0x2
/* A40AC 800EDCEC 26040044 */  addiu      $a0, $s0, 0x44
/* A40B0 800EDCF0 0C039AFD */  jal        func_race_800E6BF4
/* A40B4 800EDCF4 24050002 */   addiu     $a1, $zero, 0x2
/* A40B8 800EDCF8 02002021 */  addu       $a0, $s0, $zero
/* A40BC 800EDCFC 0C03A1AC */  jal        func_race_800E86B0
/* A40C0 800EDD00 02202821 */   addu      $a1, $s1, $zero
/* A40C4 800EDD04 8FBF0018 */  lw         $ra, 0x18($sp)
/* A40C8 800EDD08 8FB10014 */  lw         $s1, 0x14($sp)
/* A40CC 800EDD0C 8FB00010 */  lw         $s0, 0x10($sp)
/* A40D0 800EDD10 03E00008 */  jr         $ra
/* A40D4 800EDD14 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EDD18
/* A40D8 800EDD18 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A40DC 800EDD1C AFB10024 */  sw         $s1, 0x24($sp)
/* A40E0 800EDD20 00808821 */  addu       $s1, $a0, $zero
/* A40E4 800EDD24 AFBF002C */  sw         $ra, 0x2C($sp)
/* A40E8 800EDD28 AFB20028 */  sw         $s2, 0x28($sp)
/* A40EC 800EDD2C AFB00020 */  sw         $s0, 0x20($sp)
/* A40F0 800EDD30 8E22000C */  lw         $v0, 0xC($s1)
/* A40F4 800EDD34 10400003 */  beqz       $v0, .Lrace_800EDD44
/* A40F8 800EDD38 00A09021 */   addu      $s2, $a1, $zero
/* A40FC 800EDD3C 0C03B78D */  jal        func_race_800EDE34
/* A4100 800EDD40 00000000 */   nop
.Lrace_800EDD44:
/* A4104 800EDD44 24020001 */  addiu      $v0, $zero, 0x1
/* A4108 800EDD48 AE220008 */  sw         $v0, 0x8($s1)
/* A410C 800EDD4C 8E42000C */  lw         $v0, 0xC($s2)
/* A4110 800EDD50 AE220004 */  sw         $v0, 0x4($s1)
/* A4114 800EDD54 8E420000 */  lw         $v0, 0x0($s2)
/* A4118 800EDD58 AE220040 */  sw         $v0, 0x40($s1)
/* A411C 800EDD5C 8E420020 */  lw         $v0, 0x20($s2)
/* A4120 800EDD60 AE220184 */  sw         $v0, 0x184($s1)
/* A4124 800EDD64 8E420008 */  lw         $v0, 0x8($s2)
/* A4128 800EDD68 AE22018C */  sw         $v0, 0x18C($s1)
/* A412C 800EDD6C 3C02800D */  lui        $v0, %hi(D_race_800CC500)
/* A4130 800EDD70 8E430010 */  lw         $v1, 0x10($s2)
/* A4134 800EDD74 2445C500 */  addiu      $a1, $v0, %lo(D_race_800CC500)
/* A4138 800EDD78 8C6200BC */  lw         $v0, 0xBC($v1)
/* A413C 800EDD7C 14400003 */  bnez       $v0, .Lrace_800EDD8C
/* A4140 800EDD80 246400BC */   addiu     $a0, $v1, 0xBC
/* A4144 800EDD84 0803B765 */  j          .Lrace_800EDD94
/* A4148 800EDD88 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EDD8C:
/* A414C 800EDD8C 0C016427 */  jal        func_8005909C
/* A4150 800EDD90 00000000 */   nop
.Lrace_800EDD94:
/* A4154 800EDD94 26300010 */  addiu      $s0, $s1, 0x10
/* A4158 800EDD98 AE220038 */  sw         $v0, 0x38($s1)
/* A415C 800EDD9C AFA00010 */  sw         $zero, 0x10($sp)
/* A4160 800EDDA0 C7A00010 */  lwc1       $f0, 0x10($sp)
/* A4164 800EDDA4 27A50010 */  addiu      $a1, $sp, 0x10
/* A4168 800EDDA8 AFA00014 */  sw         $zero, 0x14($sp)
/* A416C 800EDDAC AFA00018 */  sw         $zero, 0x18($sp)
/* A4170 800EDDB0 E6000018 */  swc1       $f0, 0x18($s0)
/* A4174 800EDDB4 C4A00004 */  lwc1       $f0, 0x4($a1)
/* A4178 800EDDB8 E600001C */  swc1       $f0, 0x1C($s0)
/* A417C 800EDDBC C4A00008 */  lwc1       $f0, 0x8($a1)
/* A4180 800EDDC0 02002021 */  addu       $a0, $s0, $zero
/* A4184 800EDDC4 0C0165D9 */  jal        func_80059764
/* A4188 800EDDC8 E6000020 */   swc1      $f0, 0x20($s0)
/* A418C 800EDDCC 3C054040 */  lui        $a1, (0x40400000 >> 16)
/* A4190 800EDDD0 0C0165E8 */  jal        func_800597A0
/* A4194 800EDDD4 02002021 */   addu      $a0, $s0, $zero
/* A4198 800EDDD8 26300178 */  addiu      $s0, $s1, 0x178
/* A419C 800EDDDC 02002021 */  addu       $a0, $s0, $zero
/* A41A0 800EDDE0 8E450028 */  lw         $a1, 0x28($s2)
/* A41A4 800EDDE4 0C0152FA */  jal        func_80054BE8
/* A41A8 800EDDE8 24060001 */   addiu     $a2, $zero, 0x1
/* A41AC 800EDDEC 02002021 */  addu       $a0, $s0, $zero
/* A41B0 800EDDF0 00002821 */  addu       $a1, $zero, $zero
/* A41B4 800EDDF4 3C06800D */  lui        $a2, %hi(D_race_800CC508)
/* A41B8 800EDDF8 0C015415 */  jal        func_80055054
/* A41BC 800EDDFC 24C6C508 */   addiu     $a2, $a2, %lo(D_race_800CC508)
/* A41C0 800EDE00 26240044 */  addiu      $a0, $s1, 0x44
/* A41C4 800EDE04 8E450024 */  lw         $a1, 0x24($s2)
/* A41C8 800EDE08 8E460028 */  lw         $a2, 0x28($s2)
/* A41CC 800EDE0C 0C039B0E */  jal        func_race_800E6C38
/* A41D0 800EDE10 24070020 */   addiu     $a3, $zero, 0x20
/* A41D4 800EDE14 24020001 */  addiu      $v0, $zero, 0x1
/* A41D8 800EDE18 AE22000C */  sw         $v0, 0xC($s1)
/* A41DC 800EDE1C 8FBF002C */  lw         $ra, 0x2C($sp)
/* A41E0 800EDE20 8FB20028 */  lw         $s2, 0x28($sp)
/* A41E4 800EDE24 8FB10024 */  lw         $s1, 0x24($sp)
/* A41E8 800EDE28 8FB00020 */  lw         $s0, 0x20($sp)
/* A41EC 800EDE2C 03E00008 */  jr         $ra
/* A41F0 800EDE30 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800EDE34
/* A41F4 800EDE34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A41F8 800EDE38 AFB00010 */  sw         $s0, 0x10($sp)
/* A41FC 800EDE3C 00808021 */  addu       $s0, $a0, $zero
/* A4200 800EDE40 AFBF0014 */  sw         $ra, 0x14($sp)
/* A4204 800EDE44 8E020000 */  lw         $v0, 0x0($s0)
/* A4208 800EDE48 00002821 */  addu       $a1, $zero, $zero
/* A420C 800EDE4C 84440018 */  lh         $a0, 0x18($v0)
/* A4210 800EDE50 8C42001C */  lw         $v0, 0x1C($v0)
/* A4214 800EDE54 0040F809 */  jalr       $v0
/* A4218 800EDE58 02042021 */   addu      $a0, $s0, $a0
/* A421C 800EDE5C 0C039B58 */  jal        func_race_800E6D60
/* A4220 800EDE60 26040044 */   addiu     $a0, $s0, 0x44
/* A4224 800EDE64 0C0153DC */  jal        func_80054F70
/* A4228 800EDE68 26040178 */   addiu     $a0, $s0, 0x178
/* A422C 800EDE6C 02002021 */  addu       $a0, $s0, $zero
/* A4230 800EDE70 0C03A1C0 */  jal        func_race_800E8700
/* A4234 800EDE74 AC800038 */   sw        $zero, 0x38($a0)
/* A4238 800EDE78 8FBF0014 */  lw         $ra, 0x14($sp)
/* A423C 800EDE7C 8FB00010 */  lw         $s0, 0x10($sp)
/* A4240 800EDE80 03E00008 */  jr         $ra
/* A4244 800EDE84 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EDE88
/* A4248 800EDE88 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A424C 800EDE8C AFB00038 */  sw         $s0, 0x38($sp)
/* A4250 800EDE90 00808021 */  addu       $s0, $a0, $zero
/* A4254 800EDE94 02002821 */  addu       $a1, $s0, $zero
/* A4258 800EDE98 24020004 */  addiu      $v0, $zero, 0x4
/* A425C 800EDE9C AFA20010 */  sw         $v0, 0x10($sp)
/* A4260 800EDEA0 24020001 */  addiu      $v0, $zero, 0x1
/* A4264 800EDEA4 AFA20014 */  sw         $v0, 0x14($sp)
/* A4268 800EDEA8 26020010 */  addiu      $v0, $s0, 0x10
/* A426C 800EDEAC AFBF003C */  sw         $ra, 0x3C($sp)
/* A4270 800EDEB0 AFA00018 */  sw         $zero, 0x18($sp)
/* A4274 800EDEB4 AFA0001C */  sw         $zero, 0x1C($sp)
/* A4278 800EDEB8 AFA20020 */  sw         $v0, 0x20($sp)
/* A427C 800EDEBC 8E040040 */  lw         $a0, 0x40($s0)
/* A4280 800EDEC0 0C04053E */  jal        func_race_801014F8
/* A4284 800EDEC4 27A60010 */   addiu     $a2, $sp, 0x10
/* A4288 800EDEC8 8E04018C */  lw         $a0, 0x18C($s0)
/* A428C 800EDECC 24050BBB */  addiu      $a1, $zero, 0xBBB
/* A4290 800EDED0 0C04654F */  jal        func_race_8011953C
/* A4294 800EDED4 AE02003C */   sw        $v0, 0x3C($s0)
/* A4298 800EDED8 10400021 */  beqz       $v0, .Lrace_800EDF60
/* A429C 800EDEDC AE020188 */   sw        $v0, 0x188($s0)
/* A42A0 800EDEE0 8E030038 */  lw         $v1, 0x38($s0)
/* A42A4 800EDEE4 8C620024 */  lw         $v0, 0x24($v1)
/* A42A8 800EDEE8 27A50028 */  addiu      $a1, $sp, 0x28
/* A42AC 800EDEEC 84440010 */  lh         $a0, 0x10($v0)
/* A42B0 800EDEF0 8C420014 */  lw         $v0, 0x14($v0)
/* A42B4 800EDEF4 0040F809 */  jalr       $v0
/* A42B8 800EDEF8 00642021 */   addu      $a0, $v1, $a0
/* A42BC 800EDEFC 8E020188 */  lw         $v0, 0x188($s0)
/* A42C0 800EDF00 3C01800D */  lui        $at, %hi(D_race_800CC510)
/* A42C4 800EDF04 C420C510 */  lwc1       $f0, %lo(D_race_800CC510)($at)
/* A42C8 800EDF08 3C01800D */  lui        $at, %hi(D_race_800CC514)
/* A42CC 800EDF0C C422C514 */  lwc1       $f2, %lo(D_race_800CC514)($at)
/* A42D0 800EDF10 8FA70028 */  lw         $a3, 0x28($sp)
/* A42D4 800EDF14 8FA8002C */  lw         $t0, 0x2C($sp)
/* A42D8 800EDF18 8FA90030 */  lw         $t1, 0x30($sp)
/* A42DC 800EDF1C AC470014 */  sw         $a3, 0x14($v0)
/* A42E0 800EDF20 AC480018 */  sw         $t0, 0x18($v0)
/* A42E4 800EDF24 AC49001C */  sw         $t1, 0x1C($v0)
/* A42E8 800EDF28 8E020188 */  lw         $v0, 0x188($s0)
/* A42EC 800EDF2C E4400004 */  swc1       $f0, 0x4($v0)
/* A42F0 800EDF30 8E020188 */  lw         $v0, 0x188($s0)
/* A42F4 800EDF34 3C01800D */  lui        $at, %hi(D_race_800CC518)
/* A42F8 800EDF38 C420C518 */  lwc1       $f0, %lo(D_race_800CC518)($at)
/* A42FC 800EDF3C E440002C */  swc1       $f0, 0x2C($v0)
/* A4300 800EDF40 E4420030 */  swc1       $f2, 0x30($v0)
/* A4304 800EDF44 8E030188 */  lw         $v1, 0x188($s0)
/* A4308 800EDF48 8C620034 */  lw         $v0, 0x34($v1)
/* A430C 800EDF4C 24050001 */  addiu      $a1, $zero, 0x1
/* A4310 800EDF50 84440010 */  lh         $a0, 0x10($v0)
/* A4314 800EDF54 8C420014 */  lw         $v0, 0x14($v0)
/* A4318 800EDF58 0040F809 */  jalr       $v0
/* A431C 800EDF5C 00642021 */   addu      $a0, $v1, $a0
.Lrace_800EDF60:
/* A4320 800EDF60 24020002 */  addiu      $v0, $zero, 0x2
/* A4324 800EDF64 A2020190 */  sb         $v0, 0x190($s0)
/* A4328 800EDF68 24020002 */  addiu      $v0, $zero, 0x2
/* A432C 800EDF6C AE02000C */  sw         $v0, 0xC($s0)
/* A4330 800EDF70 8FBF003C */  lw         $ra, 0x3C($sp)
/* A4334 800EDF74 8FB00038 */  lw         $s0, 0x38($sp)
/* A4338 800EDF78 03E00008 */  jr         $ra
/* A433C 800EDF7C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800EDF80
/* A4340 800EDF80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4344 800EDF84 AFB00010 */  sw         $s0, 0x10($sp)
/* A4348 800EDF88 00808021 */  addu       $s0, $a0, $zero
/* A434C 800EDF8C AFBF0014 */  sw         $ra, 0x14($sp)
/* A4350 800EDF90 8E02003C */  lw         $v0, 0x3C($s0)
/* A4354 800EDF94 10400003 */  beqz       $v0, .Lrace_800EDFA4
/* A4358 800EDF98 00000000 */   nop
/* A435C 800EDF9C AC400024 */  sw         $zero, 0x24($v0)
/* A4360 800EDFA0 AE00003C */  sw         $zero, 0x3C($s0)
.Lrace_800EDFA4:
/* A4364 800EDFA4 8E050188 */  lw         $a1, 0x188($s0)
/* A4368 800EDFA8 10A00006 */  beqz       $a1, .Lrace_800EDFC4
/* A436C 800EDFAC 24020001 */   addiu     $v0, $zero, 0x1
/* A4370 800EDFB0 8E04018C */  lw         $a0, 0x18C($s0)
/* A4374 800EDFB4 0C046564 */  jal        func_race_80119590
/* A4378 800EDFB8 00000000 */   nop
/* A437C 800EDFBC AE000188 */  sw         $zero, 0x188($s0)
/* A4380 800EDFC0 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800EDFC4:
/* A4384 800EDFC4 AE02000C */  sw         $v0, 0xC($s0)
/* A4388 800EDFC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A438C 800EDFCC 8FB00010 */  lw         $s0, 0x10($sp)
/* A4390 800EDFD0 03E00008 */  jr         $ra
/* A4394 800EDFD4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EDFD8
/* A4398 800EDFD8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A439C 800EDFDC AFB10034 */  sw         $s1, 0x34($sp)
/* A43A0 800EDFE0 00808821 */  addu       $s1, $a0, $zero
/* A43A4 800EDFE4 AFBF0038 */  sw         $ra, 0x38($sp)
/* A43A8 800EDFE8 AFB00030 */  sw         $s0, 0x30($sp)
/* A43AC 800EDFEC 8E23000C */  lw         $v1, 0xC($s1)
/* A43B0 800EDFF0 24020001 */  addiu      $v0, $zero, 0x1
/* A43B4 800EDFF4 10620083 */  beq        $v1, $v0, .Lrace_800EE204
/* A43B8 800EDFF8 00000000 */   nop
/* A43BC 800EDFFC 0C03A1C4 */  jal        func_race_800E8710
/* A43C0 800EE000 00000000 */   nop
/* A43C4 800EE004 8E230038 */  lw         $v1, 0x38($s1)
/* A43C8 800EE008 8C620024 */  lw         $v0, 0x24($v1)
/* A43CC 800EE00C 00002821 */  addu       $a1, $zero, $zero
/* A43D0 800EE010 844400B8 */  lh         $a0, 0xB8($v0)
/* A43D4 800EE014 8C4200BC */  lw         $v0, 0xBC($v0)
/* A43D8 800EE018 0040F809 */  jalr       $v0
/* A43DC 800EE01C 00642021 */   addu      $a0, $v1, $a0
/* A43E0 800EE020 8C430008 */  lw         $v1, 0x8($v0)
/* A43E4 800EE024 24050003 */  addiu      $a1, $zero, 0x3
/* A43E8 800EE028 84640038 */  lh         $a0, 0x38($v1)
/* A43EC 800EE02C 8C63003C */  lw         $v1, 0x3C($v1)
/* A43F0 800EE030 0060F809 */  jalr       $v1
/* A43F4 800EE034 00442021 */   addu      $a0, $v0, $a0
/* A43F8 800EE038 00408021 */  addu       $s0, $v0, $zero
/* A43FC 800EE03C AFA00020 */  sw         $zero, 0x20($sp)
/* A4400 800EE040 AFA00024 */  sw         $zero, 0x24($sp)
/* A4404 800EE044 AFA00028 */  sw         $zero, 0x28($sp)
/* A4408 800EE048 27A50010 */  addiu      $a1, $sp, 0x10
.Lrace_800EE04C:
/* A440C 800EE04C 8FA80020 */  lw         $t0, 0x20($sp)
/* A4410 800EE050 8FA90024 */  lw         $t1, 0x24($sp)
/* A4414 800EE054 8FAA0028 */  lw         $t2, 0x28($sp)
/* A4418 800EE058 AFA80010 */  sw         $t0, 0x10($sp)
/* A441C 800EE05C AFA90014 */  sw         $t1, 0x14($sp)
/* A4420 800EE060 AFAA0018 */  sw         $t2, 0x18($sp)
/* A4424 800EE064 8E02000C */  lw         $v0, 0xC($s0)
/* A4428 800EE068 27A60020 */  addiu      $a2, $sp, 0x20
/* A442C 800EE06C 84440010 */  lh         $a0, 0x10($v0)
/* A4430 800EE070 8C420014 */  lw         $v0, 0x14($v0)
/* A4434 800EE074 0040F809 */  jalr       $v0
/* A4438 800EE078 02042021 */   addu      $a0, $s0, $a0
/* A443C 800EE07C 8E100000 */  lw         $s0, 0x0($s0)
/* A4440 800EE080 5600FFF2 */  bnel       $s0, $zero, .Lrace_800EE04C
/* A4444 800EE084 27A50010 */   addiu     $a1, $sp, 0x10
/* A4448 800EE088 8E230038 */  lw         $v1, 0x38($s1)
/* A444C 800EE08C 8C620078 */  lw         $v0, 0x78($v1)
/* A4450 800EE090 C4620058 */  lwc1       $f2, 0x58($v1)
/* A4454 800EE094 C4400034 */  lwc1       $f0, 0x34($v0)
/* A4458 800EE098 46001082 */  mul.s      $f2, $f2, $f0
/* A445C 800EE09C C7A60020 */  lwc1       $f6, 0x20($sp)
/* A4460 800EE0A0 46023182 */  mul.s      $f6, $f6, $f2
/* A4464 800EE0A4 C7A40024 */  lwc1       $f4, 0x24($sp)
/* A4468 800EE0A8 46022102 */  mul.s      $f4, $f4, $f2
/* A446C 800EE0AC C7A00028 */  lwc1       $f0, 0x28($sp)
/* A4470 800EE0B0 46020002 */  mul.s      $f0, $f0, $f2
/* A4474 800EE0B4 E7A60020 */  swc1       $f6, 0x20($sp)
/* A4478 800EE0B8 E7A40024 */  swc1       $f4, 0x24($sp)
/* A447C 800EE0BC E7A00028 */  swc1       $f0, 0x28($sp)
/* A4480 800EE0C0 8E230038 */  lw         $v1, 0x38($s1)
/* A4484 800EE0C4 27A50020 */  addiu      $a1, $sp, 0x20
/* A4488 800EE0C8 8C620024 */  lw         $v0, 0x24($v1)
/* A448C 800EE0CC 27A60010 */  addiu      $a2, $sp, 0x10
/* A4490 800EE0D0 84440060 */  lh         $a0, 0x60($v0)
/* A4494 800EE0D4 8C420064 */  lw         $v0, 0x64($v0)
/* A4498 800EE0D8 0040F809 */  jalr       $v0
/* A449C 800EE0DC 00642021 */   addu      $a0, $v1, $a0
/* A44A0 800EE0E0 26240010 */  addiu      $a0, $s1, 0x10
/* A44A4 800EE0E4 0C0165D9 */  jal        func_80059764
/* A44A8 800EE0E8 27A50010 */   addiu     $a1, $sp, 0x10
/* A44AC 800EE0EC 92220190 */  lbu        $v0, 0x190($s1)
/* A44B0 800EE0F0 8E230038 */  lw         $v1, 0x38($s1)
/* A44B4 800EE0F4 30420002 */  andi       $v0, $v0, 0x2
/* A44B8 800EE0F8 C46200B4 */  lwc1       $f2, 0xB4($v1)
/* A44BC 800EE0FC 10400023 */  beqz       $v0, .Lrace_800EE18C
/* A44C0 800EE100 00000000 */   nop
/* A44C4 800EE104 3C01800D */  lui        $at, %hi(D_race_800CC51C)
/* A44C8 800EE108 C420C51C */  lwc1       $f0, %lo(D_race_800CC51C)($at)
/* A44CC 800EE10C 4602003C */  c.lt.s     $f0, $f2
/* A44D0 800EE110 00000000 */  nop
/* A44D4 800EE114 45000007 */  bc1f       .Lrace_800EE134
/* A44D8 800EE118 00000000 */   nop
/* A44DC 800EE11C 3C01800D */  lui        $at, %hi(D_race_800CC520)
/* A44E0 800EE120 C420C520 */  lwc1       $f0, %lo(D_race_800CC520)($at)
/* A44E4 800EE124 4600103C */  c.lt.s     $f2, $f0
/* A44E8 800EE128 00000000 */  nop
/* A44EC 800EE12C 4503000C */  bc1tl      .Lrace_800EE160
/* A44F0 800EE130 24050014 */   addiu     $a1, $zero, 0x14
.Lrace_800EE134:
/* A44F4 800EE134 44800000 */  mtc1       $zero, $f0
/* A44F8 800EE138 4602003C */  c.lt.s     $f0, $f2
/* A44FC 800EE13C 00000000 */  nop
/* A4500 800EE140 4500000E */  bc1f       .Lrace_800EE17C
/* A4504 800EE144 00000000 */   nop
/* A4508 800EE148 3C01800D */  lui        $at, %hi(D_race_800CC524)
/* A450C 800EE14C C420C524 */  lwc1       $f0, %lo(D_race_800CC524)($at)
/* A4510 800EE150 4600103C */  c.lt.s     $f2, $f0
/* A4514 800EE154 00000000 */  nop
/* A4518 800EE158 45000008 */  bc1f       .Lrace_800EE17C
/* A451C 800EE15C 24050014 */   addiu     $a1, $zero, 0x14
.Lrace_800EE160:
/* A4520 800EE160 00A03021 */  addu       $a2, $a1, $zero
/* A4524 800EE164 8E240004 */  lw         $a0, 0x4($s1)
/* A4528 800EE168 0C036D74 */  jal        func_race_800DB5D0
/* A452C 800EE16C 27A70010 */   addiu     $a3, $sp, 0x10
/* A4530 800EE170 92220190 */  lbu        $v0, 0x190($s1)
/* A4534 800EE174 0803B87D */  j          .Lrace_800EE1F4
/* A4538 800EE178 304200FD */   andi      $v0, $v0, 0xFD
.Lrace_800EE17C:
/* A453C 800EE17C 92220190 */  lbu        $v0, 0x190($s1)
/* A4540 800EE180 30420002 */  andi       $v0, $v0, 0x2
/* A4544 800EE184 1440001C */  bnez       $v0, .Lrace_800EE1F8
/* A4548 800EE188 00000000 */   nop
.Lrace_800EE18C:
/* A454C 800EE18C 3C01800D */  lui        $at, %hi(D_race_800CC528)
/* A4550 800EE190 C420C528 */  lwc1       $f0, %lo(D_race_800CC528)($at)
/* A4554 800EE194 4602003C */  c.lt.s     $f0, $f2
/* A4558 800EE198 00000000 */  nop
/* A455C 800EE19C 45000007 */  bc1f       .Lrace_800EE1BC
/* A4560 800EE1A0 00000000 */   nop
/* A4564 800EE1A4 3C01800D */  lui        $at, %hi(D_race_800CC52C)
/* A4568 800EE1A8 C420C52C */  lwc1       $f0, %lo(D_race_800CC52C)($at)
/* A456C 800EE1AC 4600103C */  c.lt.s     $f2, $f0
/* A4570 800EE1B0 00000000 */  nop
/* A4574 800EE1B4 4501000D */  bc1t       .Lrace_800EE1EC
/* A4578 800EE1B8 00000000 */   nop
.Lrace_800EE1BC:
/* A457C 800EE1BC 3C01800D */  lui        $at, %hi(D_race_800CC530)
/* A4580 800EE1C0 C420C530 */  lwc1       $f0, %lo(D_race_800CC530)($at)
/* A4584 800EE1C4 4602003C */  c.lt.s     $f0, $f2
/* A4588 800EE1C8 00000000 */  nop
/* A458C 800EE1CC 4500000A */  bc1f       .Lrace_800EE1F8
/* A4590 800EE1D0 00000000 */   nop
/* A4594 800EE1D4 3C01800D */  lui        $at, %hi(D_race_800CC534)
/* A4598 800EE1D8 C420C534 */  lwc1       $f0, %lo(D_race_800CC534)($at)
/* A459C 800EE1DC 4600103C */  c.lt.s     $f2, $f0
/* A45A0 800EE1E0 00000000 */  nop
/* A45A4 800EE1E4 45000004 */  bc1f       .Lrace_800EE1F8
/* A45A8 800EE1E8 00000000 */   nop
.Lrace_800EE1EC:
/* A45AC 800EE1EC 92220190 */  lbu        $v0, 0x190($s1)
/* A45B0 800EE1F0 34420002 */  ori        $v0, $v0, 0x2
.Lrace_800EE1F4:
/* A45B4 800EE1F4 A2220190 */  sb         $v0, 0x190($s1)
.Lrace_800EE1F8:
/* A45B8 800EE1F8 92220190 */  lbu        $v0, 0x190($s1)
/* A45BC 800EE1FC 304200FE */  andi       $v0, $v0, 0xFE
/* A45C0 800EE200 A2220190 */  sb         $v0, 0x190($s1)
.Lrace_800EE204:
/* A45C4 800EE204 8FBF0038 */  lw         $ra, 0x38($sp)
/* A45C8 800EE208 8FB10034 */  lw         $s1, 0x34($sp)
/* A45CC 800EE20C 8FB00030 */  lw         $s0, 0x30($sp)
/* A45D0 800EE210 03E00008 */  jr         $ra
/* A45D4 800EE214 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800EE218
/* A45D8 800EE218 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A45DC 800EE21C AFB3005C */  sw         $s3, 0x5C($sp)
/* A45E0 800EE220 00809821 */  addu       $s3, $a0, $zero
/* A45E4 800EE224 AFB00050 */  sw         $s0, 0x50($sp)
/* A45E8 800EE228 AFBF0060 */  sw         $ra, 0x60($sp)
/* A45EC 800EE22C AFB20058 */  sw         $s2, 0x58($sp)
/* A45F0 800EE230 AFB10054 */  sw         $s1, 0x54($sp)
/* A45F4 800EE234 8E63000C */  lw         $v1, 0xC($s3)
/* A45F8 800EE238 24020001 */  addiu      $v0, $zero, 0x1
/* A45FC 800EE23C 1062004F */  beq        $v1, $v0, .Lrace_800EE37C
/* A4600 800EE240 00A08021 */   addu      $s0, $a1, $zero
/* A4604 800EE244 92620190 */  lbu        $v0, 0x190($s3)
/* A4608 800EE248 30420001 */  andi       $v0, $v0, 0x1
/* A460C 800EE24C 1440004B */  bnez       $v0, .Lrace_800EE37C
/* A4610 800EE250 00000000 */   nop
/* A4614 800EE254 26640010 */  addiu      $a0, $s3, 0x10
/* A4618 800EE258 0C0165A4 */  jal        func_80059690
/* A461C 800EE25C 27A50010 */   addiu     $a1, $sp, 0x10
/* A4620 800EE260 8E030000 */  lw         $v1, 0x0($s0)
/* A4624 800EE264 8C62000C */  lw         $v0, 0xC($v1)
/* A4628 800EE268 27A50020 */  addiu      $a1, $sp, 0x20
/* A462C 800EE26C 84440088 */  lh         $a0, 0x88($v0)
/* A4630 800EE270 8C42008C */  lw         $v0, 0x8C($v0)
/* A4634 800EE274 0040F809 */  jalr       $v0
/* A4638 800EE278 00642021 */   addu      $a0, $v1, $a0
/* A463C 800EE27C C7A40010 */  lwc1       $f4, 0x10($sp)
/* A4640 800EE280 C7A00020 */  lwc1       $f0, 0x20($sp)
/* A4644 800EE284 46002101 */  sub.s      $f4, $f4, $f0
/* A4648 800EE288 46042102 */  mul.s      $f4, $f4, $f4
/* A464C 800EE28C 27A30010 */  addiu      $v1, $sp, 0x10
/* A4650 800EE290 C4660004 */  lwc1       $f6, 0x4($v1)
/* A4654 800EE294 C7A00024 */  lwc1       $f0, 0x24($sp)
/* A4658 800EE298 46003181 */  sub.s      $f6, $f6, $f0
/* A465C 800EE29C 46063182 */  mul.s      $f6, $f6, $f6
/* A4660 800EE2A0 C7A20028 */  lwc1       $f2, 0x28($sp)
/* A4664 800EE2A4 C4600008 */  lwc1       $f0, 0x8($v1)
/* A4668 800EE2A8 46020001 */  sub.s      $f0, $f0, $f2
/* A466C 800EE2AC 46000002 */  mul.s      $f0, $f0, $f0
/* A4670 800EE2B0 46062100 */  add.s      $f4, $f4, $f6
/* A4674 800EE2B4 8E620038 */  lw         $v0, 0x38($s3)
/* A4678 800EE2B8 46002100 */  add.s      $f4, $f4, $f0
/* A467C 800EE2BC C4400084 */  lwc1       $f0, 0x84($v0)
/* A4680 800EE2C0 4600203C */  c.lt.s     $f4, $f0
/* A4684 800EE2C4 00000000 */  nop
/* A4688 800EE2C8 45010002 */  bc1t       .Lrace_800EE2D4
/* A468C 800EE2CC 24020001 */   addiu     $v0, $zero, 0x1
/* A4690 800EE2D0 00001021 */  addu       $v0, $zero, $zero
.Lrace_800EE2D4:
/* A4694 800EE2D4 10400029 */  beqz       $v0, .Lrace_800EE37C
/* A4698 800EE2D8 26700044 */   addiu     $s0, $s3, 0x44
/* A469C 800EE2DC 3C01800D */  lui        $at, %hi(D_race_800CC538)
/* A46A0 800EE2E0 C420C538 */  lwc1       $f0, %lo(D_race_800CC538)($at)
/* A46A4 800EE2E4 3C01800D */  lui        $at, %hi(D_race_800CC53C)
/* A46A8 800EE2E8 C422C53C */  lwc1       $f2, %lo(D_race_800CC53C)($at)
/* A46AC 800EE2EC E600011C */  swc1       $f0, 0x11C($s0)
/* A46B0 800EE2F0 E6000120 */  swc1       $f0, 0x120($s0)
/* A46B4 800EE2F4 E6020124 */  swc1       $f2, 0x124($s0)
/* A46B8 800EE2F8 C7A00010 */  lwc1       $f0, 0x10($sp)
/* A46BC 800EE2FC 27B20030 */  addiu      $s2, $sp, 0x30
/* A46C0 800EE300 E60000F0 */  swc1       $f0, 0xF0($s0)
/* A46C4 800EE304 C4600004 */  lwc1       $f0, 0x4($v1)
/* A46C8 800EE308 02402821 */  addu       $a1, $s2, $zero
/* A46CC 800EE30C E60000F4 */  swc1       $f0, 0xF4($s0)
/* A46D0 800EE310 C4600008 */  lwc1       $f0, 0x8($v1)
/* A46D4 800EE314 26620178 */  addiu      $v0, $s3, 0x178
/* A46D8 800EE318 E60000F8 */  swc1       $f0, 0xF8($s0)
/* A46DC 800EE31C 8E630038 */  lw         $v1, 0x38($s3)
/* A46E0 800EE320 27B10040 */  addiu      $s1, $sp, 0x40
/* A46E4 800EE324 AE6200C0 */  sw         $v0, 0xC0($s3)
/* A46E8 800EE328 8C620024 */  lw         $v0, 0x24($v1)
/* A46EC 800EE32C 02203021 */  addu       $a2, $s1, $zero
/* A46F0 800EE330 84440088 */  lh         $a0, 0x88($v0)
/* A46F4 800EE334 8C42008C */  lw         $v0, 0x8C($v0)
/* A46F8 800EE338 0040F809 */  jalr       $v0
/* A46FC 800EE33C 00642021 */   addu      $a0, $v1, $a0
/* A4700 800EE340 02002021 */  addu       $a0, $s0, $zero
/* A4704 800EE344 02202821 */  addu       $a1, $s1, $zero
/* A4708 800EE348 3C01800D */  lui        $at, %hi(D_race_800CC540)
/* A470C 800EE34C C420C540 */  lwc1       $f0, %lo(D_race_800CC540)($at)
/* A4710 800EE350 02403021 */  addu       $a2, $s2, $zero
/* A4714 800EE354 AFA00040 */  sw         $zero, 0x40($sp)
/* A4718 800EE358 AFA00044 */  sw         $zero, 0x44($sp)
/* A471C 800EE35C 0C039CC3 */  jal        func_race_800E730C
/* A4720 800EE360 E7A00048 */   swc1      $f0, 0x48($sp)
/* A4724 800EE364 8E650184 */  lw         $a1, 0x184($s3)
/* A4728 800EE368 0C039B98 */  jal        func_race_800E6E60
/* A472C 800EE36C 02002021 */   addu      $a0, $s0, $zero
/* A4730 800EE370 92620190 */  lbu        $v0, 0x190($s3)
/* A4734 800EE374 34420001 */  ori        $v0, $v0, 0x1
/* A4738 800EE378 A2620190 */  sb         $v0, 0x190($s3)
.Lrace_800EE37C:
/* A473C 800EE37C 8FBF0060 */  lw         $ra, 0x60($sp)
/* A4740 800EE380 8FB3005C */  lw         $s3, 0x5C($sp)
/* A4744 800EE384 8FB20058 */  lw         $s2, 0x58($sp)
/* A4748 800EE388 8FB10054 */  lw         $s1, 0x54($sp)
/* A474C 800EE38C 8FB00050 */  lw         $s0, 0x50($sp)
/* A4750 800EE390 03E00008 */  jr         $ra
/* A4754 800EE394 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_800EE398
/* A4758 800EE398 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A475C 800EE39C AFBF0010 */  sw         $ra, 0x10($sp)
/* A4760 800EE3A0 8C83000C */  lw         $v1, 0xC($a0)
/* A4764 800EE3A4 24020001 */  addiu      $v0, $zero, 0x1
/* A4768 800EE3A8 10620007 */  beq        $v1, $v0, .Lrace_800EE3C8
/* A476C 800EE3AC 00000000 */   nop
/* A4770 800EE3B0 90820190 */  lbu        $v0, 0x190($a0)
/* A4774 800EE3B4 30420001 */  andi       $v0, $v0, 0x1
/* A4778 800EE3B8 10400003 */  beqz       $v0, .Lrace_800EE3C8
/* A477C 800EE3BC 00000000 */   nop
/* A4780 800EE3C0 0C03A0C6 */  jal        func_race_800E8318
/* A4784 800EE3C4 24840044 */   addiu     $a0, $a0, 0x44
.Lrace_800EE3C8:
/* A4788 800EE3C8 8FBF0010 */  lw         $ra, 0x10($sp)
/* A478C 800EE3CC 03E00008 */  jr         $ra
/* A4790 800EE3D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EE3D4
/* A4794 800EE3D4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A4798 800EE3D8 AFBF0028 */  sw         $ra, 0x28($sp)
/* A479C 800EE3DC AFB10024 */  sw         $s1, 0x24($sp)
/* A47A0 800EE3E0 AFB00020 */  sw         $s0, 0x20($sp)
/* A47A4 800EE3E4 8CB00014 */  lw         $s0, 0x14($a1)
/* A47A8 800EE3E8 00808821 */  addu       $s1, $a0, $zero
/* A47AC 800EE3EC 260303FC */  addiu      $v1, $s0, 0x3FC
/* A47B0 800EE3F0 8C6206AC */  lw         $v0, 0x6AC($v1)
/* A47B4 800EE3F4 30420002 */  andi       $v0, $v0, 0x2
/* A47B8 800EE3F8 14400007 */  bnez       $v0, .Lrace_800EE418
/* A47BC 800EE3FC 00002021 */   addu      $a0, $zero, $zero
/* A47C0 800EE400 C462061C */  lwc1       $f2, 0x61C($v1)
/* A47C4 800EE404 44800000 */  mtc1       $zero, $f0
/* A47C8 800EE408 46001032 */  c.eq.s     $f2, $f0
/* A47CC 800EE40C 00000000 */  nop
/* A47D0 800EE410 45020001 */  bc1fl      .Lrace_800EE418
/* A47D4 800EE414 24040001 */   addiu     $a0, $zero, 0x1
.Lrace_800EE418:
/* A47D8 800EE418 10800017 */  beqz       $a0, .Lrace_800EE478
/* A47DC 800EE41C 00000000 */   nop
/* A47E0 800EE420 00003821 */  addu       $a3, $zero, $zero
/* A47E4 800EE424 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* A47E8 800EE428 8C6200CC */  lw         $v0, 0xCC($v1)
/* A47EC 800EE42C 3C063C23 */  lui        $a2, (0x3C23D70A >> 16)
/* A47F0 800EE430 34C6D70A */  ori        $a2, $a2, (0x3C23D70A & 0xFFFF)
/* A47F4 800EE434 84440050 */  lh         $a0, 0x50($v0)
/* A47F8 800EE438 8C420054 */  lw         $v0, 0x54($v0)
/* A47FC 800EE43C 0040F809 */  jalr       $v0
/* A4800 800EE440 00642021 */   addu      $a0, $v1, $a0
/* A4804 800EE444 8E03005C */  lw         $v1, 0x5C($s0)
/* A4808 800EE448 27B00010 */  addiu      $s0, $sp, 0x10
/* A480C 800EE44C 8C620024 */  lw         $v0, 0x24($v1)
/* A4810 800EE450 02002821 */  addu       $a1, $s0, $zero
/* A4814 800EE454 84440010 */  lh         $a0, 0x10($v0)
/* A4818 800EE458 8C420014 */  lw         $v0, 0x14($v0)
/* A481C 800EE45C 0040F809 */  jalr       $v0
/* A4820 800EE460 00642021 */   addu      $a0, $v1, $a0
/* A4824 800EE464 24050015 */  addiu      $a1, $zero, 0x15
/* A4828 800EE468 00A03021 */  addu       $a2, $a1, $zero
/* A482C 800EE46C 8E240004 */  lw         $a0, 0x4($s1)
/* A4830 800EE470 0C036D74 */  jal        func_race_800DB5D0
/* A4834 800EE474 02003821 */   addu      $a3, $s0, $zero
.Lrace_800EE478:
/* A4838 800EE478 8FBF0028 */  lw         $ra, 0x28($sp)
/* A483C 800EE47C 8FB10024 */  lw         $s1, 0x24($sp)
/* A4840 800EE480 8FB00020 */  lw         $s0, 0x20($sp)
/* A4844 800EE484 03E00008 */  jr         $ra
/* A4848 800EE488 27BD0030 */   addiu     $sp, $sp, 0x30
