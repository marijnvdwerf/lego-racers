.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8012DEC0
/* E4280 8012DEC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E4284 8012DEC4 AFB00010 */  sw         $s0, 0x10($sp)
/* E4288 8012DEC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* E428C 8012DECC 0C047E80 */  jal        func_race_8011FA00
/* E4290 8012DED0 00808021 */   addu      $s0, $a0, $zero
/* E4294 8012DED4 02001021 */  addu       $v0, $s0, $zero
/* E4298 8012DED8 3C03800D */  lui        $v1, %hi(D_race_800CF090)
/* E429C 8012DEDC 2463F090 */  addiu      $v1, $v1, %lo(D_race_800CF090)
/* E42A0 8012DEE0 AC430000 */  sw         $v1, 0x0($v0)
/* E42A4 8012DEE4 AC400018 */  sw         $zero, 0x18($v0)
/* E42A8 8012DEE8 AC40001C */  sw         $zero, 0x1C($v0)
/* E42AC 8012DEEC AC400020 */  sw         $zero, 0x20($v0)
/* E42B0 8012DEF0 AC400024 */  sw         $zero, 0x24($v0)
/* E42B4 8012DEF4 AC400028 */  sw         $zero, 0x28($v0)
/* E42B8 8012DEF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* E42BC 8012DEFC 8FB00010 */  lw         $s0, 0x10($sp)
/* E42C0 8012DF00 03E00008 */  jr         $ra
/* E42C4 8012DF04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012DF08
/* E42C8 8012DF08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E42CC 8012DF0C AFB00010 */  sw         $s0, 0x10($sp)
/* E42D0 8012DF10 00808021 */  addu       $s0, $a0, $zero
/* E42D4 8012DF14 AFB10014 */  sw         $s1, 0x14($sp)
/* E42D8 8012DF18 00A08821 */  addu       $s1, $a1, $zero
/* E42DC 8012DF1C 3C02800D */  lui        $v0, %hi(D_race_800CF090)
/* E42E0 8012DF20 2442F090 */  addiu      $v0, $v0, %lo(D_race_800CF090)
/* E42E4 8012DF24 AFBF0018 */  sw         $ra, 0x18($sp)
/* E42E8 8012DF28 0C04B7E6 */  jal        func_race_8012DF98
/* E42EC 8012DF2C AE020000 */   sw        $v0, 0x0($s0)
/* E42F0 8012DF30 02002021 */  addu       $a0, $s0, $zero
/* E42F4 8012DF34 0C047E8A */  jal        func_race_8011FA28
/* E42F8 8012DF38 02202821 */   addu      $a1, $s1, $zero
/* E42FC 8012DF3C 8FBF0018 */  lw         $ra, 0x18($sp)
/* E4300 8012DF40 8FB10014 */  lw         $s1, 0x14($sp)
/* E4304 8012DF44 8FB00010 */  lw         $s0, 0x10($sp)
/* E4308 8012DF48 03E00008 */  jr         $ra
/* E430C 8012DF4C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012DF50
/* E4310 8012DF50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E4314 8012DF54 AFB00010 */  sw         $s0, 0x10($sp)
/* E4318 8012DF58 00808021 */  addu       $s0, $a0, $zero
/* E431C 8012DF5C AFBF0018 */  sw         $ra, 0x18($sp)
/* E4320 8012DF60 AFB10014 */  sw         $s1, 0x14($sp)
/* E4324 8012DF64 8E020004 */  lw         $v0, 0x4($s0)
/* E4328 8012DF68 10400003 */  beqz       $v0, .Lrace_8012DF78
/* E432C 8012DF6C 00A08821 */   addu      $s1, $a1, $zero
/* E4330 8012DF70 0C04B7E6 */  jal        func_race_8012DF98
/* E4334 8012DF74 00000000 */   nop
.Lrace_8012DF78:
/* E4338 8012DF78 24020001 */  addiu      $v0, $zero, 0x1
/* E433C 8012DF7C AE110024 */  sw         $s1, 0x24($s0)
/* E4340 8012DF80 AE020004 */  sw         $v0, 0x4($s0)
/* E4344 8012DF84 8FBF0018 */  lw         $ra, 0x18($sp)
/* E4348 8012DF88 8FB10014 */  lw         $s1, 0x14($sp)
/* E434C 8012DF8C 8FB00010 */  lw         $s0, 0x10($sp)
/* E4350 8012DF90 03E00008 */  jr         $ra
/* E4354 8012DF94 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012DF98
/* E4358 8012DF98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E435C 8012DF9C AFB00010 */  sw         $s0, 0x10($sp)
/* E4360 8012DFA0 00808021 */  addu       $s0, $a0, $zero
/* E4364 8012DFA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* E4368 8012DFA8 8E020000 */  lw         $v0, 0x0($s0)
/* E436C 8012DFAC 84440040 */  lh         $a0, 0x40($v0)
/* E4370 8012DFB0 8C420044 */  lw         $v0, 0x44($v0)
/* E4374 8012DFB4 0040F809 */  jalr       $v0
/* E4378 8012DFB8 02042021 */   addu      $a0, $s0, $a0
/* E437C 8012DFBC AE000004 */  sw         $zero, 0x4($s0)
/* E4380 8012DFC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* E4384 8012DFC4 8FB00010 */  lw         $s0, 0x10($sp)
/* E4388 8012DFC8 03E00008 */  jr         $ra
/* E438C 8012DFCC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012DFD0
/* E4390 8012DFD0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E4394 8012DFD4 AFB30024 */  sw         $s3, 0x24($sp)
/* E4398 8012DFD8 00809821 */  addu       $s3, $a0, $zero
/* E439C 8012DFDC AFB00018 */  sw         $s0, 0x18($sp)
/* E43A0 8012DFE0 00A08021 */  addu       $s0, $a1, $zero
/* E43A4 8012DFE4 AFB1001C */  sw         $s1, 0x1C($sp)
/* E43A8 8012DFE8 00C08821 */  addu       $s1, $a2, $zero
/* E43AC 8012DFEC AFB40028 */  sw         $s4, 0x28($sp)
/* E43B0 8012DFF0 00E0A021 */  addu       $s4, $a3, $zero
/* E43B4 8012DFF4 AFB20020 */  sw         $s2, 0x20($sp)
/* E43B8 8012DFF8 AFBF0030 */  sw         $ra, 0x30($sp)
/* E43BC 8012DFFC AFB5002C */  sw         $s5, 0x2C($sp)
/* E43C0 8012E000 8E640024 */  lw         $a0, 0x24($s3)
/* E43C4 8012E004 8FB50048 */  lw         $s5, 0x48($sp)
/* E43C8 8012E008 0C04B4FB */  jal        func_race_8012D3EC
/* E43CC 8012E00C 2412004C */   addiu     $s2, $zero, 0x4C
/* E43D0 8012E010 10400006 */  beqz       $v0, .Lrace_8012E02C
/* E43D4 8012E014 AE620018 */   sw        $v0, 0x18($s3)
/* E43D8 8012E018 8E640024 */  lw         $a0, 0x24($s3)
/* E43DC 8012E01C 0C04B4FB */  jal        func_race_8012D3EC
/* E43E0 8012E020 00000000 */   nop
/* E43E4 8012E024 14400004 */  bnez       $v0, .Lrace_8012E038
/* E43E8 8012E028 AE62001C */   sw        $v0, 0x1C($s3)
.Lrace_8012E02C:
/* E43EC 8012E02C 24020006 */  addiu      $v0, $zero, 0x6
/* E43F0 8012E030 0804B8F3 */  j          .Lrace_8012E3CC
/* E43F4 8012E034 AE620004 */   sw        $v0, 0x4($s3)
.Lrace_8012E038:
/* E43F8 8012E038 AE700020 */  sw         $s0, 0x20($s3)
/* E43FC 8012E03C 8E020D04 */  lw         $v0, 0xD04($s0)
/* E4400 8012E040 30420001 */  andi       $v0, $v0, 0x1
/* E4404 8012E044 10400005 */  beqz       $v0, .Lrace_8012E05C
/* E4408 8012E048 24020001 */   addiu     $v0, $zero, 0x1
/* E440C 8012E04C 8E640024 */  lw         $a0, 0x24($s3)
/* E4410 8012E050 0C04B3B0 */  jal        func_race_8012CEC0
/* E4414 8012E054 02002821 */   addu      $a1, $s0, $zero
/* E4418 8012E058 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_8012E05C:
/* E441C 8012E05C 1222000C */  beq        $s1, $v0, .Lrace_8012E090
/* E4420 8012E060 24021770 */   addiu     $v0, $zero, 0x1770
/* E4424 8012E064 12200007 */  beqz       $s1, .Lrace_8012E084
/* E4428 8012E068 24020002 */   addiu     $v0, $zero, 0x2
/* E442C 8012E06C 1222000B */  beq        $s1, $v0, .Lrace_8012E09C
/* E4430 8012E070 24020003 */   addiu     $v0, $zero, 0x3
/* E4434 8012E074 1222000D */  beq        $s1, $v0, .Lrace_8012E0AC
/* E4438 8012E078 24022710 */   addiu     $v0, $zero, 0x2710
/* E443C 8012E07C 0804B82D */  j          .Lrace_8012E0B4
/* E4440 8012E080 00000000 */   nop
.Lrace_8012E084:
/* E4444 8012E084 24020FA0 */  addiu      $v0, $zero, 0xFA0
/* E4448 8012E088 0804B82D */  j          .Lrace_8012E0B4
/* E444C 8012E08C AE620008 */   sw        $v0, 0x8($s3)
.Lrace_8012E090:
/* E4450 8012E090 AE620008 */  sw         $v0, 0x8($s3)
/* E4454 8012E094 0804B82D */  j          .Lrace_8012E0B4
/* E4458 8012E098 24120035 */   addiu     $s2, $zero, 0x35
.Lrace_8012E09C:
/* E445C 8012E09C 24021F40 */  addiu      $v0, $zero, 0x1F40
/* E4460 8012E0A0 AE620008 */  sw         $v0, 0x8($s3)
/* E4464 8012E0A4 0804B82D */  j          .Lrace_8012E0B4
/* E4468 8012E0A8 2412004D */   addiu     $s2, $zero, 0x4D
.Lrace_8012E0AC:
/* E446C 8012E0AC AE620008 */  sw         $v0, 0x8($s3)
/* E4470 8012E0B0 2412004E */  addiu      $s2, $zero, 0x4E
.Lrace_8012E0B4:
/* E4474 8012E0B4 8E640010 */  lw         $a0, 0x10($s3)
/* E4478 8012E0B8 0C04654F */  jal        func_race_8011953C
/* E447C 8012E0BC 02402821 */   addu      $a1, $s2, $zero
/* E4480 8012E0C0 00401821 */  addu       $v1, $v0, $zero
/* E4484 8012E0C4 1060000E */  beqz       $v1, .Lrace_8012E100
/* E4488 8012E0C8 AE630028 */   sw        $v1, 0x28($s3)
/* E448C 8012E0CC 8C620034 */  lw         $v0, 0x34($v1)
/* E4490 8012E0D0 24050001 */  addiu      $a1, $zero, 0x1
/* E4494 8012E0D4 84440010 */  lh         $a0, 0x10($v0)
/* E4498 8012E0D8 8C420014 */  lw         $v0, 0x14($v0)
/* E449C 8012E0DC 0040F809 */  jalr       $v0
/* E44A0 8012E0E0 00642021 */   addu      $a0, $v1, $a0
/* E44A4 8012E0E4 8E620028 */  lw         $v0, 0x28($s3)
/* E44A8 8012E0E8 3C01800D */  lui        $at, %hi(D_race_800CF060)
/* E44AC 8012E0EC C420F060 */  lwc1       $f0, %lo(D_race_800CF060)($at)
/* E44B0 8012E0F0 3C01800D */  lui        $at, %hi(D_race_800CF064)
/* E44B4 8012E0F4 C422F064 */  lwc1       $f2, %lo(D_race_800CF064)($at)
/* E44B8 8012E0F8 E440002C */  swc1       $f0, 0x2C($v0)
/* E44BC 8012E0FC E4420030 */  swc1       $f2, 0x30($v0)
.Lrace_8012E100:
/* E44C0 8012E100 02202821 */  addu       $a1, $s1, $zero
/* E44C4 8012E104 8E640020 */  lw         $a0, 0x20($s3)
/* E44C8 8012E108 24020003 */  addiu      $v0, $zero, 0x3
/* E44CC 8012E10C 0C043553 */  jal        func_race_8010D54C
/* E44D0 8012E110 AE620004 */   sw        $v0, 0x4($s3)
/* E44D4 8012E114 8E640020 */  lw         $a0, 0x20($s3)
/* E44D8 8012E118 8C820D04 */  lw         $v0, 0xD04($a0)
/* E44DC 8012E11C 30420800 */  andi       $v0, $v0, 0x800
/* E44E0 8012E120 10400004 */  beqz       $v0, .Lrace_8012E134
/* E44E4 8012E124 00002821 */   addu      $a1, $zero, $zero
/* E44E8 8012E128 0C04367A */  jal        func_race_8010D9E8
/* E44EC 8012E12C 00000000 */   nop
/* E44F0 8012E130 00002821 */  addu       $a1, $zero, $zero
.Lrace_8012E134:
/* E44F4 8012E134 24120001 */  addiu      $s2, $zero, 0x1
/* E44F8 8012E138 AE710014 */  sw         $s1, 0x14($s3)
/* E44FC 8012E13C 8E820024 */  lw         $v0, 0x24($s4)
/* E4500 8012E140 8E900078 */  lw         $s0, 0x78($s4)
/* E4504 8012E144 844400B8 */  lh         $a0, 0xB8($v0)
/* E4508 8012E148 8C4200BC */  lw         $v0, 0xBC($v0)
/* E450C 8012E14C 0040F809 */  jalr       $v0
/* E4510 8012E150 02842021 */   addu      $a0, $s4, $a0
/* E4514 8012E154 8E8700A8 */  lw         $a3, 0xA8($s4)
/* E4518 8012E158 C6800084 */  lwc1       $f0, 0x84($s4)
/* E451C 8012E15C 02002821 */  addu       $a1, $s0, $zero
/* E4520 8012E160 E7A00010 */  swc1       $f0, 0x10($sp)
/* E4524 8012E164 8E640018 */  lw         $a0, 0x18($s3)
/* E4528 8012E168 0C01956B */  jal        func_800655AC
/* E452C 8012E16C 00403021 */   addu      $a2, $v0, $zero
/* E4530 8012E170 26900004 */  addiu      $s0, $s4, 0x4
.Lrace_8012E174:
/* E4534 8012E174 2E420003 */  sltiu      $v0, $s2, 0x3
/* E4538 8012E178 10400013 */  beqz       $v0, .Lrace_8012E1C8
/* E453C 8012E17C 00000000 */   nop
/* E4540 8012E180 8E110078 */  lw         $s1, 0x78($s0)
/* E4544 8012E184 1220000D */  beqz       $s1, .Lrace_8012E1BC
/* E4548 8012E188 02402821 */   addu      $a1, $s2, $zero
/* E454C 8012E18C 8E820024 */  lw         $v0, 0x24($s4)
/* E4550 8012E190 844400B8 */  lh         $a0, 0xB8($v0)
/* E4554 8012E194 8C4200BC */  lw         $v0, 0xBC($v0)
/* E4558 8012E198 0040F809 */  jalr       $v0
/* E455C 8012E19C 02842021 */   addu      $a0, $s4, $a0
/* E4560 8012E1A0 8E0700A8 */  lw         $a3, 0xA8($s0)
/* E4564 8012E1A4 C6000084 */  lwc1       $f0, 0x84($s0)
/* E4568 8012E1A8 02202821 */  addu       $a1, $s1, $zero
/* E456C 8012E1AC E7A00010 */  swc1       $f0, 0x10($sp)
/* E4570 8012E1B0 8E640018 */  lw         $a0, 0x18($s3)
/* E4574 8012E1B4 0C0196C4 */  jal        func_80065B10
/* E4578 8012E1B8 00403021 */   addu      $a2, $v0, $zero
.Lrace_8012E1BC:
/* E457C 8012E1BC 26100004 */  addiu      $s0, $s0, 0x4
/* E4580 8012E1C0 0804B85D */  j          .Lrace_8012E174
/* E4584 8012E1C4 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_8012E1C8:
/* E4588 8012E1C8 8E640018 */  lw         $a0, 0x18($s3)
/* E458C 8012E1CC 0C01971D */  jal        func_80065C74
/* E4590 8012E1D0 00002821 */   addu      $a1, $zero, $zero
/* E4594 8012E1D4 8E640018 */  lw         $a0, 0x18($s3)
/* E4598 8012E1D8 8C82005C */  lw         $v0, 0x5C($a0)
/* E459C 8012E1DC 3C030001 */  lui        $v1, (0x10000 >> 16)
/* E45A0 8012E1E0 00431025 */  or         $v0, $v0, $v1
/* E45A4 8012E1E4 AC82005C */  sw         $v0, 0x5C($a0)
/* E45A8 8012E1E8 C68000B8 */  lwc1       $f0, 0xB8($s4)
/* E45AC 8012E1EC 8E620018 */  lw         $v0, 0x18($s3)
/* E45B0 8012E1F0 02802021 */  addu       $a0, $s4, $zero
/* E45B4 8012E1F4 0C016264 */  jal        func_80058990
/* E45B8 8012E1F8 E44000B8 */   swc1      $f0, 0xB8($v0)
/* E45BC 8012E1FC 8E640018 */  lw         $a0, 0x18($s3)
/* E45C0 8012E200 44050000 */  mfc1       $a1, $f0
/* E45C4 8012E204 0C016274 */  jal        func_800589D0
/* E45C8 8012E208 24120001 */   addiu     $s2, $zero, 0x1
/* E45CC 8012E20C 0C01626C */  jal        func_800589B0
/* E45D0 8012E210 02802021 */   addu      $a0, $s4, $zero
/* E45D4 8012E214 8E640018 */  lw         $a0, 0x18($s3)
/* E45D8 8012E218 44050000 */  mfc1       $a1, $f0
/* E45DC 8012E21C 0C01627F */  jal        func_800589FC
/* E45E0 8012E220 00000000 */   nop
/* E45E4 8012E224 0C01628A */  jal        func_80058A28
/* E45E8 8012E228 02802021 */   addu      $a0, $s4, $zero
/* E45EC 8012E22C 8E640018 */  lw         $a0, 0x18($s3)
/* E45F0 8012E230 44050000 */  mfc1       $a1, $f0
/* E45F4 8012E234 0C016298 */  jal        func_80058A60
/* E45F8 8012E238 00000000 */   nop
/* E45FC 8012E23C 0C016291 */  jal        func_80058A44
/* E4600 8012E240 02802021 */   addu      $a0, $s4, $zero
/* E4604 8012E244 8E640018 */  lw         $a0, 0x18($s3)
/* E4608 8012E248 44050000 */  mfc1       $a1, $f0
/* E460C 8012E24C 0C0162A3 */  jal        func_80058A8C
/* E4610 8012E250 00000000 */   nop
/* E4614 8012E254 8E620020 */  lw         $v0, 0x20($s3)
/* E4618 8012E258 3C01800D */  lui        $at, %hi(D_race_800CF068)
/* E461C 8012E25C C420F068 */  lwc1       $f0, %lo(D_race_800CF068)($at)
/* E4620 8012E260 8C43005C */  lw         $v1, 0x5C($v0)
/* E4624 8012E264 8E620018 */  lw         $v0, 0x18($s3)
/* E4628 8012E268 00002821 */  addu       $a1, $zero, $zero
/* E462C 8012E26C 8C68004C */  lw         $t0, 0x4C($v1)
/* E4630 8012E270 8C690050 */  lw         $t1, 0x50($v1)
/* E4634 8012E274 8C6A0054 */  lw         $t2, 0x54($v1)
/* E4638 8012E278 AC48004C */  sw         $t0, 0x4C($v0)
/* E463C 8012E27C AC490050 */  sw         $t1, 0x50($v0)
/* E4640 8012E280 AC4A0054 */  sw         $t2, 0x54($v0)
/* E4644 8012E284 E440000C */  swc1       $f0, 0xC($v0)
/* E4648 8012E288 8EA20024 */  lw         $v0, 0x24($s5)
/* E464C 8012E28C 8EB00078 */  lw         $s0, 0x78($s5)
/* E4650 8012E290 844400B8 */  lh         $a0, 0xB8($v0)
/* E4654 8012E294 8C4200BC */  lw         $v0, 0xBC($v0)
/* E4658 8012E298 0040F809 */  jalr       $v0
/* E465C 8012E29C 02A42021 */   addu      $a0, $s5, $a0
/* E4660 8012E2A0 8EA700A8 */  lw         $a3, 0xA8($s5)
/* E4664 8012E2A4 C6A00084 */  lwc1       $f0, 0x84($s5)
/* E4668 8012E2A8 02002821 */  addu       $a1, $s0, $zero
/* E466C 8012E2AC E7A00010 */  swc1       $f0, 0x10($sp)
/* E4670 8012E2B0 8E64001C */  lw         $a0, 0x1C($s3)
/* E4674 8012E2B4 0C01956B */  jal        func_800655AC
/* E4678 8012E2B8 00403021 */   addu      $a2, $v0, $zero
/* E467C 8012E2BC 26B00004 */  addiu      $s0, $s5, 0x4
.Lrace_8012E2C0:
/* E4680 8012E2C0 2E420003 */  sltiu      $v0, $s2, 0x3
/* E4684 8012E2C4 10400013 */  beqz       $v0, .Lrace_8012E314
/* E4688 8012E2C8 00000000 */   nop
/* E468C 8012E2CC 8E110078 */  lw         $s1, 0x78($s0)
/* E4690 8012E2D0 1220000D */  beqz       $s1, .Lrace_8012E308
/* E4694 8012E2D4 02402821 */   addu      $a1, $s2, $zero
/* E4698 8012E2D8 8EA20024 */  lw         $v0, 0x24($s5)
/* E469C 8012E2DC 844400B8 */  lh         $a0, 0xB8($v0)
/* E46A0 8012E2E0 8C4200BC */  lw         $v0, 0xBC($v0)
/* E46A4 8012E2E4 0040F809 */  jalr       $v0
/* E46A8 8012E2E8 02A42021 */   addu      $a0, $s5, $a0
/* E46AC 8012E2EC 8E0700A8 */  lw         $a3, 0xA8($s0)
/* E46B0 8012E2F0 C6000084 */  lwc1       $f0, 0x84($s0)
/* E46B4 8012E2F4 02202821 */  addu       $a1, $s1, $zero
/* E46B8 8012E2F8 E7A00010 */  swc1       $f0, 0x10($sp)
/* E46BC 8012E2FC 8E64001C */  lw         $a0, 0x1C($s3)
/* E46C0 8012E300 0C0196C4 */  jal        func_80065B10
/* E46C4 8012E304 00403021 */   addu      $a2, $v0, $zero
.Lrace_8012E308:
/* E46C8 8012E308 26100004 */  addiu      $s0, $s0, 0x4
/* E46CC 8012E30C 0804B8B0 */  j          .Lrace_8012E2C0
/* E46D0 8012E310 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_8012E314:
/* E46D4 8012E314 8E64001C */  lw         $a0, 0x1C($s3)
/* E46D8 8012E318 0C01971D */  jal        func_80065C74
/* E46DC 8012E31C 00002821 */   addu      $a1, $zero, $zero
/* E46E0 8012E320 8E64001C */  lw         $a0, 0x1C($s3)
/* E46E4 8012E324 8C82005C */  lw         $v0, 0x5C($a0)
/* E46E8 8012E328 3C030001 */  lui        $v1, (0x10000 >> 16)
/* E46EC 8012E32C 00431025 */  or         $v0, $v0, $v1
/* E46F0 8012E330 AC82005C */  sw         $v0, 0x5C($a0)
/* E46F4 8012E334 C6A000B8 */  lwc1       $f0, 0xB8($s5)
/* E46F8 8012E338 8E62001C */  lw         $v0, 0x1C($s3)
/* E46FC 8012E33C 02A02021 */  addu       $a0, $s5, $zero
/* E4700 8012E340 0C016264 */  jal        func_80058990
/* E4704 8012E344 E44000B8 */   swc1      $f0, 0xB8($v0)
/* E4708 8012E348 8E64001C */  lw         $a0, 0x1C($s3)
/* E470C 8012E34C 44050000 */  mfc1       $a1, $f0
/* E4710 8012E350 0C016274 */  jal        func_800589D0
/* E4714 8012E354 00000000 */   nop
/* E4718 8012E358 0C01626C */  jal        func_800589B0
/* E471C 8012E35C 02A02021 */   addu      $a0, $s5, $zero
/* E4720 8012E360 8E64001C */  lw         $a0, 0x1C($s3)
/* E4724 8012E364 44050000 */  mfc1       $a1, $f0
/* E4728 8012E368 0C01627F */  jal        func_800589FC
/* E472C 8012E36C 00000000 */   nop
/* E4730 8012E370 0C01628A */  jal        func_80058A28
/* E4734 8012E374 02A02021 */   addu      $a0, $s5, $zero
/* E4738 8012E378 8E64001C */  lw         $a0, 0x1C($s3)
/* E473C 8012E37C 44050000 */  mfc1       $a1, $f0
/* E4740 8012E380 0C016298 */  jal        func_80058A60
/* E4744 8012E384 00000000 */   nop
/* E4748 8012E388 0C016291 */  jal        func_80058A44
/* E474C 8012E38C 02A02021 */   addu      $a0, $s5, $zero
/* E4750 8012E390 8E64001C */  lw         $a0, 0x1C($s3)
/* E4754 8012E394 44050000 */  mfc1       $a1, $f0
/* E4758 8012E398 0C0162A3 */  jal        func_80058A8C
/* E475C 8012E39C 00000000 */   nop
/* E4760 8012E3A0 8E63001C */  lw         $v1, 0x1C($s3)
/* E4764 8012E3A4 8E620018 */  lw         $v0, 0x18($s3)
/* E4768 8012E3A8 3C01800D */  lui        $at, %hi(D_race_800CF06C)
/* E476C 8012E3AC C420F06C */  lwc1       $f0, %lo(D_race_800CF06C)($at)
/* E4770 8012E3B0 8C48004C */  lw         $t0, 0x4C($v0)
/* E4774 8012E3B4 8C490050 */  lw         $t1, 0x50($v0)
/* E4778 8012E3B8 8C4A0054 */  lw         $t2, 0x54($v0)
/* E477C 8012E3BC AC68004C */  sw         $t0, 0x4C($v1)
/* E4780 8012E3C0 AC690050 */  sw         $t1, 0x50($v1)
/* E4784 8012E3C4 AC6A0054 */  sw         $t2, 0x54($v1)
/* E4788 8012E3C8 E460000C */  swc1       $f0, 0xC($v1)
.Lrace_8012E3CC:
/* E478C 8012E3CC 8FBF0030 */  lw         $ra, 0x30($sp)
/* E4790 8012E3D0 8FB5002C */  lw         $s5, 0x2C($sp)
/* E4794 8012E3D4 8FB40028 */  lw         $s4, 0x28($sp)
/* E4798 8012E3D8 8FB30024 */  lw         $s3, 0x24($sp)
/* E479C 8012E3DC 8FB20020 */  lw         $s2, 0x20($sp)
/* E47A0 8012E3E0 8FB1001C */  lw         $s1, 0x1C($sp)
/* E47A4 8012E3E4 8FB00018 */  lw         $s0, 0x18($sp)
/* E47A8 8012E3E8 03E00008 */  jr         $ra
/* E47AC 8012E3EC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8012E3F0
/* E47B0 8012E3F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E47B4 8012E3F4 AFB00010 */  sw         $s0, 0x10($sp)
/* E47B8 8012E3F8 00808021 */  addu       $s0, $a0, $zero
/* E47BC 8012E3FC AFBF0014 */  sw         $ra, 0x14($sp)
/* E47C0 8012E400 8E03001C */  lw         $v1, 0x1C($s0)
/* E47C4 8012E404 1060000B */  beqz       $v1, .Lrace_8012E434
/* E47C8 8012E408 00000000 */   nop
/* E47CC 8012E40C 8C620024 */  lw         $v0, 0x24($v1)
/* E47D0 8012E410 844400B0 */  lh         $a0, 0xB0($v0)
/* E47D4 8012E414 8C4200B4 */  lw         $v0, 0xB4($v0)
/* E47D8 8012E418 0040F809 */  jalr       $v0
/* E47DC 8012E41C 00642021 */   addu      $a0, $v1, $a0
/* E47E0 8012E420 8E040024 */  lw         $a0, 0x24($s0)
/* E47E4 8012E424 8E05001C */  lw         $a1, 0x1C($s0)
/* E47E8 8012E428 0C04B519 */  jal        func_race_8012D464
/* E47EC 8012E42C 00000000 */   nop
/* E47F0 8012E430 AE00001C */  sw         $zero, 0x1C($s0)
.Lrace_8012E434:
/* E47F4 8012E434 8E030018 */  lw         $v1, 0x18($s0)
/* E47F8 8012E438 1060000B */  beqz       $v1, .Lrace_8012E468
/* E47FC 8012E43C 00000000 */   nop
/* E4800 8012E440 8C620024 */  lw         $v0, 0x24($v1)
/* E4804 8012E444 844400B0 */  lh         $a0, 0xB0($v0)
/* E4808 8012E448 8C4200B4 */  lw         $v0, 0xB4($v0)
/* E480C 8012E44C 0040F809 */  jalr       $v0
/* E4810 8012E450 00642021 */   addu      $a0, $v1, $a0
/* E4814 8012E454 8E040024 */  lw         $a0, 0x24($s0)
/* E4818 8012E458 8E050018 */  lw         $a1, 0x18($s0)
/* E481C 8012E45C 0C04B519 */  jal        func_race_8012D464
/* E4820 8012E460 00000000 */   nop
/* E4824 8012E464 AE000018 */  sw         $zero, 0x18($s0)
.Lrace_8012E468:
/* E4828 8012E468 8E050028 */  lw         $a1, 0x28($s0)
/* E482C 8012E46C 10A00005 */  beqz       $a1, .Lrace_8012E484
/* E4830 8012E470 AE000020 */   sw        $zero, 0x20($s0)
/* E4834 8012E474 8E040010 */  lw         $a0, 0x10($s0)
/* E4838 8012E478 0C046564 */  jal        func_race_80119590
/* E483C 8012E47C 00000000 */   nop
/* E4840 8012E480 AE000028 */  sw         $zero, 0x28($s0)
.Lrace_8012E484:
/* E4844 8012E484 24020001 */  addiu      $v0, $zero, 0x1
/* E4848 8012E488 AE020004 */  sw         $v0, 0x4($s0)
/* E484C 8012E48C 8FBF0014 */  lw         $ra, 0x14($sp)
/* E4850 8012E490 8FB00010 */  lw         $s0, 0x10($sp)
/* E4854 8012E494 03E00008 */  jr         $ra
/* E4858 8012E498 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012E49C
/* E485C 8012E49C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* E4860 8012E4A0 AFB00030 */  sw         $s0, 0x30($sp)
/* E4864 8012E4A4 00808021 */  addu       $s0, $a0, $zero
/* E4868 8012E4A8 AFB10034 */  sw         $s1, 0x34($sp)
/* E486C 8012E4AC AFBF0038 */  sw         $ra, 0x38($sp)
/* E4870 8012E4B0 8E030004 */  lw         $v1, 0x4($s0)
/* E4874 8012E4B4 24020006 */  addiu      $v0, $zero, 0x6
/* E4878 8012E4B8 10620030 */  beq        $v1, $v0, .Lrace_8012E57C
/* E487C 8012E4BC 00A08821 */   addu      $s1, $a1, $zero
/* E4880 8012E4C0 0C047E96 */  jal        func_race_8011FA58
/* E4884 8012E4C4 00000000 */   nop
/* E4888 8012E4C8 8E020020 */  lw         $v0, 0x20($s0)
/* E488C 8012E4CC 8C43005C */  lw         $v1, 0x5C($v0)
/* E4890 8012E4D0 8C620024 */  lw         $v0, 0x24($v1)
/* E4894 8012E4D4 27A50010 */  addiu      $a1, $sp, 0x10
/* E4898 8012E4D8 84440010 */  lh         $a0, 0x10($v0)
/* E489C 8012E4DC 8C420014 */  lw         $v0, 0x14($v0)
/* E48A0 8012E4E0 0040F809 */  jalr       $v0
/* E48A4 8012E4E4 00642021 */   addu      $a0, $v1, $a0
/* E48A8 8012E4E8 8E020020 */  lw         $v0, 0x20($s0)
/* E48AC 8012E4EC 8C460400 */  lw         $a2, 0x400($v0)
/* E48B0 8012E4F0 8C470404 */  lw         $a3, 0x404($v0)
/* E48B4 8012E4F4 8C480408 */  lw         $t0, 0x408($v0)
/* E48B8 8012E4F8 AFA60020 */  sw         $a2, 0x20($sp)
/* E48BC 8012E4FC AFA70024 */  sw         $a3, 0x24($sp)
/* E48C0 8012E500 AFA80028 */  sw         $t0, 0x28($sp)
/* E48C4 8012E504 8E020028 */  lw         $v0, 0x28($s0)
/* E48C8 8012E508 1040000E */  beqz       $v0, .Lrace_8012E544
/* E48CC 8012E50C 00000000 */   nop
/* E48D0 8012E510 8FA60010 */  lw         $a2, 0x10($sp)
/* E48D4 8012E514 8FA70014 */  lw         $a3, 0x14($sp)
/* E48D8 8012E518 8FA80018 */  lw         $t0, 0x18($sp)
/* E48DC 8012E51C AC460014 */  sw         $a2, 0x14($v0)
/* E48E0 8012E520 AC470018 */  sw         $a3, 0x18($v0)
/* E48E4 8012E524 AC48001C */  sw         $t0, 0x1C($v0)
/* E48E8 8012E528 8E020028 */  lw         $v0, 0x28($s0)
/* E48EC 8012E52C C7A00020 */  lwc1       $f0, 0x20($sp)
/* E48F0 8012E530 E4400020 */  swc1       $f0, 0x20($v0)
/* E48F4 8012E534 C7A00024 */  lwc1       $f0, 0x24($sp)
/* E48F8 8012E538 E4400024 */  swc1       $f0, 0x24($v0)
/* E48FC 8012E53C C7A00028 */  lwc1       $f0, 0x28($sp)
/* E4900 8012E540 E4400028 */  swc1       $f0, 0x28($v0)
.Lrace_8012E544:
/* E4904 8012E544 8E030018 */  lw         $v1, 0x18($s0)
/* E4908 8012E548 8C620024 */  lw         $v0, 0x24($v1)
/* E490C 8012E54C 02202821 */  addu       $a1, $s1, $zero
/* E4910 8012E550 84440020 */  lh         $a0, 0x20($v0)
/* E4914 8012E554 8C420024 */  lw         $v0, 0x24($v0)
/* E4918 8012E558 0040F809 */  jalr       $v0
/* E491C 8012E55C 00642021 */   addu      $a0, $v1, $a0
/* E4920 8012E560 8E03001C */  lw         $v1, 0x1C($s0)
/* E4924 8012E564 8C620024 */  lw         $v0, 0x24($v1)
/* E4928 8012E568 02202821 */  addu       $a1, $s1, $zero
/* E492C 8012E56C 84440020 */  lh         $a0, 0x20($v0)
/* E4930 8012E570 8C420024 */  lw         $v0, 0x24($v0)
/* E4934 8012E574 0040F809 */  jalr       $v0
/* E4938 8012E578 00642021 */   addu      $a0, $v1, $a0
.Lrace_8012E57C:
/* E493C 8012E57C 8FBF0038 */  lw         $ra, 0x38($sp)
/* E4940 8012E580 8FB10034 */  lw         $s1, 0x34($sp)
/* E4944 8012E584 8FB00030 */  lw         $s0, 0x30($sp)
/* E4948 8012E588 03E00008 */  jr         $ra
/* E494C 8012E58C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8012E590
/* E4950 8012E590 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* E4954 8012E594 AFB10044 */  sw         $s1, 0x44($sp)
/* E4958 8012E598 00808821 */  addu       $s1, $a0, $zero
/* E495C 8012E59C AFB20048 */  sw         $s2, 0x48($sp)
/* E4960 8012E5A0 AFBF004C */  sw         $ra, 0x4C($sp)
/* E4964 8012E5A4 AFB00040 */  sw         $s0, 0x40($sp)
/* E4968 8012E5A8 8E230004 */  lw         $v1, 0x4($s1)
/* E496C 8012E5AC 24020006 */  addiu      $v0, $zero, 0x6
/* E4970 8012E5B0 10620072 */  beq        $v1, $v0, .Lrace_8012E77C
/* E4974 8012E5B4 00A09021 */   addu      $s2, $a1, $zero
/* E4978 8012E5B8 8E220020 */  lw         $v0, 0x20($s1)
/* E497C 8012E5BC 8C43005C */  lw         $v1, 0x5C($v0)
/* E4980 8012E5C0 8C620024 */  lw         $v0, 0x24($v1)
/* E4984 8012E5C4 27A50030 */  addiu      $a1, $sp, 0x30
/* E4988 8012E5C8 84440010 */  lh         $a0, 0x10($v0)
/* E498C 8012E5CC 8C420014 */  lw         $v0, 0x14($v0)
/* E4990 8012E5D0 0040F809 */  jalr       $v0
/* E4994 8012E5D4 00642021 */   addu      $a0, $v1, $a0
/* E4998 8012E5D8 C7A00038 */  lwc1       $f0, 0x38($sp)
/* E499C 8012E5DC 3C01800D */  lui        $at, %hi(D_race_800CF070)
/* E49A0 8012E5E0 C422F070 */  lwc1       $f2, %lo(D_race_800CF070)($at)
/* E49A4 8012E5E4 46020000 */  add.s      $f0, $f0, $f2
/* E49A8 8012E5E8 E7A00038 */  swc1       $f0, 0x38($sp)
/* E49AC 8012E5EC 8E230018 */  lw         $v1, 0x18($s1)
/* E49B0 8012E5F0 8C620024 */  lw         $v0, 0x24($v1)
/* E49B4 8012E5F4 27A50030 */  addiu      $a1, $sp, 0x30
/* E49B8 8012E5F8 84440018 */  lh         $a0, 0x18($v0)
/* E49BC 8012E5FC 8C42001C */  lw         $v0, 0x1C($v0)
/* E49C0 8012E600 0040F809 */  jalr       $v0
/* E49C4 8012E604 00642021 */   addu      $a0, $v1, $a0
/* E49C8 8012E608 8E220020 */  lw         $v0, 0x20($s1)
/* E49CC 8012E60C 27A50010 */  addiu      $a1, $sp, 0x10
/* E49D0 8012E610 8C43005C */  lw         $v1, 0x5C($v0)
/* E49D4 8012E614 27B00020 */  addiu      $s0, $sp, 0x20
/* E49D8 8012E618 8C620024 */  lw         $v0, 0x24($v1)
/* E49DC 8012E61C 02003021 */  addu       $a2, $s0, $zero
/* E49E0 8012E620 84440088 */  lh         $a0, 0x88($v0)
/* E49E4 8012E624 8C42008C */  lw         $v0, 0x8C($v0)
/* E49E8 8012E628 0040F809 */  jalr       $v0
/* E49EC 8012E62C 00642021 */   addu      $a0, $v1, $a0
/* E49F0 8012E630 3C01800D */  lui        $at, %hi(D_race_800CF074)
/* E49F4 8012E634 C420F074 */  lwc1       $f0, %lo(D_race_800CF074)($at)
/* E49F8 8012E638 AFA00020 */  sw         $zero, 0x20($sp)
/* E49FC 8012E63C AFA00024 */  sw         $zero, 0x24($sp)
/* E4A00 8012E640 E7A00028 */  swc1       $f0, 0x28($sp)
/* E4A04 8012E644 8E230018 */  lw         $v1, 0x18($s1)
/* E4A08 8012E648 27A50010 */  addiu      $a1, $sp, 0x10
/* E4A0C 8012E64C 8C620024 */  lw         $v0, 0x24($v1)
/* E4A10 8012E650 02003021 */  addu       $a2, $s0, $zero
/* E4A14 8012E654 84440080 */  lh         $a0, 0x80($v0)
/* E4A18 8012E658 8C420084 */  lw         $v0, 0x84($v0)
/* E4A1C 8012E65C 0040F809 */  jalr       $v0
/* E4A20 8012E660 00642021 */   addu      $a0, $v1, $a0
/* E4A24 8012E664 8E230018 */  lw         $v1, 0x18($s1)
/* E4A28 8012E668 8E22001C */  lw         $v0, 0x1C($s1)
/* E4A2C 8012E66C 3C01800D */  lui        $at, %hi(D_race_800CF078)
/* E4A30 8012E670 C422F078 */  lwc1       $f2, %lo(D_race_800CF078)($at)
/* E4A34 8012E674 C4600028 */  lwc1       $f0, 0x28($v1)
/* E4A38 8012E678 E4400028 */  swc1       $f0, 0x28($v0)
/* E4A3C 8012E67C C460002C */  lwc1       $f0, 0x2C($v1)
/* E4A40 8012E680 E440002C */  swc1       $f0, 0x2C($v0)
/* E4A44 8012E684 C4600030 */  lwc1       $f0, 0x30($v1)
/* E4A48 8012E688 E4400030 */  swc1       $f0, 0x30($v0)
/* E4A4C 8012E68C C4600034 */  lwc1       $f0, 0x34($v1)
/* E4A50 8012E690 E4400034 */  swc1       $f0, 0x34($v0)
/* E4A54 8012E694 C4600038 */  lwc1       $f0, 0x38($v1)
/* E4A58 8012E698 E4400038 */  swc1       $f0, 0x38($v0)
/* E4A5C 8012E69C C460003C */  lwc1       $f0, 0x3C($v1)
/* E4A60 8012E6A0 E440003C */  swc1       $f0, 0x3C($v0)
/* E4A64 8012E6A4 C4600040 */  lwc1       $f0, 0x40($v1)
/* E4A68 8012E6A8 E4400040 */  swc1       $f0, 0x40($v0)
/* E4A6C 8012E6AC C4600044 */  lwc1       $f0, 0x44($v1)
/* E4A70 8012E6B0 E4400044 */  swc1       $f0, 0x44($v0)
/* E4A74 8012E6B4 C4600048 */  lwc1       $f0, 0x48($v1)
/* E4A78 8012E6B8 E4400048 */  swc1       $f0, 0x48($v0)
/* E4A7C 8012E6BC 8C67004C */  lw         $a3, 0x4C($v1)
/* E4A80 8012E6C0 8C680050 */  lw         $t0, 0x50($v1)
/* E4A84 8012E6C4 8C690054 */  lw         $t1, 0x54($v1)
/* E4A88 8012E6C8 AC47004C */  sw         $a3, 0x4C($v0)
/* E4A8C 8012E6CC AC480050 */  sw         $t0, 0x50($v0)
/* E4A90 8012E6D0 AC490054 */  sw         $t1, 0x54($v0)
/* E4A94 8012E6D4 E442000C */  swc1       $f2, 0xC($v0)
/* E4A98 8012E6D8 8E220004 */  lw         $v0, 0x4($s1)
/* E4A9C 8012E6DC 24100004 */  addiu      $s0, $zero, 0x4
/* E4AA0 8012E6E0 14500010 */  bne        $v0, $s0, .Lrace_8012E724
/* E4AA4 8012E6E4 24060001 */   addiu     $a2, $zero, 0x1
/* E4AA8 8012E6E8 3C01800D */  lui        $at, %hi(D_race_800CF07C)
/* E4AAC 8012E6EC C422F07C */  lwc1       $f2, %lo(D_race_800CF07C)($at)
/* E4AB0 8012E6F0 C6200008 */  lwc1       $f0, 0x8($s1)
/* E4AB4 8012E6F4 46800020 */  cvt.s.w    $f0, $f0
/* E4AB8 8012E6F8 46020003 */  div.s      $f0, $f0, $f2
/* E4ABC 8012E6FC 3C01800D */  lui        $at, %hi(D_race_800CF080)
/* E4AC0 8012E700 C422F080 */  lwc1       $f2, %lo(D_race_800CF080)($at)
/* E4AC4 8012E704 8E42012C */  lw         $v0, 0x12C($s2)
/* E4AC8 8012E708 46020002 */  mul.s      $f0, $f0, $f2
/* E4ACC 8012E70C 84440170 */  lh         $a0, 0x170($v0)
/* E4AD0 8012E710 8C420174 */  lw         $v0, 0x174($v0)
/* E4AD4 8012E714 4600010D */  trunc.w.s  $f4, $f0
/* E4AD8 8012E718 44052000 */  mfc1       $a1, $f4
/* E4ADC 8012E71C 0040F809 */  jalr       $v0
/* E4AE0 8012E720 02442021 */   addu      $a0, $s2, $a0
.Lrace_8012E724:
/* E4AE4 8012E724 8E23001C */  lw         $v1, 0x1C($s1)
/* E4AE8 8012E728 8C620024 */  lw         $v0, 0x24($v1)
/* E4AEC 8012E72C 02402821 */  addu       $a1, $s2, $zero
/* E4AF0 8012E730 84440040 */  lh         $a0, 0x40($v0)
/* E4AF4 8012E734 8C420044 */  lw         $v0, 0x44($v0)
/* E4AF8 8012E738 0040F809 */  jalr       $v0
/* E4AFC 8012E73C 00642021 */   addu      $a0, $v1, $a0
/* E4B00 8012E740 8E230018 */  lw         $v1, 0x18($s1)
/* E4B04 8012E744 8C620024 */  lw         $v0, 0x24($v1)
/* E4B08 8012E748 02402821 */  addu       $a1, $s2, $zero
/* E4B0C 8012E74C 84440040 */  lh         $a0, 0x40($v0)
/* E4B10 8012E750 8C420044 */  lw         $v0, 0x44($v0)
/* E4B14 8012E754 0040F809 */  jalr       $v0
/* E4B18 8012E758 00642021 */   addu      $a0, $v1, $a0
/* E4B1C 8012E75C 8E220004 */  lw         $v0, 0x4($s1)
/* E4B20 8012E760 14500006 */  bne        $v0, $s0, .Lrace_8012E77C
/* E4B24 8012E764 00000000 */   nop
/* E4B28 8012E768 8E42012C */  lw         $v0, 0x12C($s2)
/* E4B2C 8012E76C 84440178 */  lh         $a0, 0x178($v0)
/* E4B30 8012E770 8C42017C */  lw         $v0, 0x17C($v0)
/* E4B34 8012E774 0040F809 */  jalr       $v0
/* E4B38 8012E778 02442021 */   addu      $a0, $s2, $a0
.Lrace_8012E77C:
/* E4B3C 8012E77C 8FBF004C */  lw         $ra, 0x4C($sp)
/* E4B40 8012E780 8FB20048 */  lw         $s2, 0x48($sp)
/* E4B44 8012E784 8FB10044 */  lw         $s1, 0x44($sp)
/* E4B48 8012E788 8FB00040 */  lw         $s0, 0x40($sp)
/* E4B4C 8012E78C 03E00008 */  jr         $ra
/* E4B50 8012E790 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_8012E794
/* E4B54 8012E794 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* E4B58 8012E798 AFB10034 */  sw         $s1, 0x34($sp)
/* E4B5C 8012E79C 00808821 */  addu       $s1, $a0, $zero
/* E4B60 8012E7A0 AFBF0038 */  sw         $ra, 0x38($sp)
/* E4B64 8012E7A4 AFB00030 */  sw         $s0, 0x30($sp)
/* E4B68 8012E7A8 8E230004 */  lw         $v1, 0x4($s1)
/* E4B6C 8012E7AC 24020003 */  addiu      $v0, $zero, 0x3
/* E4B70 8012E7B0 10620005 */  beq        $v1, $v0, .Lrace_8012E7C8
/* E4B74 8012E7B4 24020004 */   addiu     $v0, $zero, 0x4
/* E4B78 8012E7B8 10620008 */  beq        $v1, $v0, .Lrace_8012E7DC
/* E4B7C 8012E7BC 24020006 */   addiu     $v0, $zero, 0x6
/* E4B80 8012E7C0 0804BA15 */  j          .Lrace_8012E854
/* E4B84 8012E7C4 00000000 */   nop
.Lrace_8012E7C8:
/* E4B88 8012E7C8 240203E8 */  addiu      $v0, $zero, 0x3E8
/* E4B8C 8012E7CC AE220008 */  sw         $v0, 0x8($s1)
/* E4B90 8012E7D0 24020004 */  addiu      $v0, $zero, 0x4
/* E4B94 8012E7D4 0804BA15 */  j          .Lrace_8012E854
/* E4B98 8012E7D8 AE220004 */   sw        $v0, 0x4($s1)
.Lrace_8012E7DC:
/* E4B9C 8012E7DC 8E230020 */  lw         $v1, 0x20($s1)
/* E4BA0 8012E7E0 AE220004 */  sw         $v0, 0x4($s1)
/* E4BA4 8012E7E4 8C63005C */  lw         $v1, 0x5C($v1)
/* E4BA8 8012E7E8 27B00020 */  addiu      $s0, $sp, 0x20
/* E4BAC 8012E7EC 8C620024 */  lw         $v0, 0x24($v1)
/* E4BB0 8012E7F0 02002821 */  addu       $a1, $s0, $zero
/* E4BB4 8012E7F4 84440010 */  lh         $a0, 0x10($v0)
/* E4BB8 8012E7F8 8C420014 */  lw         $v0, 0x14($v0)
/* E4BBC 8012E7FC 0040F809 */  jalr       $v0
/* E4BC0 8012E800 00642021 */   addu      $a0, $v1, $a0
/* E4BC4 8012E804 C7A20028 */  lwc1       $f2, 0x28($sp)
/* E4BC8 8012E808 3C01800D */  lui        $at, %hi(D_race_800CF084)
/* E4BCC 8012E80C C420F084 */  lwc1       $f0, %lo(D_race_800CF084)($at)
/* E4BD0 8012E810 3C01800D */  lui        $at, %hi(D_race_800CF088)
/* E4BD4 8012E814 C424F088 */  lwc1       $f4, %lo(D_race_800CF088)($at)
/* E4BD8 8012E818 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* E4BDC 8012E81C 46001080 */  add.s      $f2, $f2, $f0
/* E4BE0 8012E820 3C01800D */  lui        $at, %hi(D_race_800CF08C)
/* E4BE4 8012E824 C420F08C */  lwc1       $f0, %lo(D_race_800CF08C)($at)
/* E4BE8 8012E828 2405003B */  addiu      $a1, $zero, 0x3B
/* E4BEC 8012E82C E7A20028 */  swc1       $f2, 0x28($sp)
/* E4BF0 8012E830 E7A40010 */  swc1       $f4, 0x10($sp)
/* E4BF4 8012E834 E7A00014 */  swc1       $f0, 0x14($sp)
/* E4BF8 8012E838 E7A00018 */  swc1       $f0, 0x18($sp)
/* E4BFC 8012E83C 8E240010 */  lw         $a0, 0x10($s1)
/* E4C00 8012E840 0C046530 */  jal        func_race_801194C0
/* E4C04 8012E844 02003021 */   addu      $a2, $s0, $zero
/* E4C08 8012E848 8E240020 */  lw         $a0, 0x20($s1)
/* E4C0C 8012E84C 0C043558 */  jal        func_race_8010D560
/* E4C10 8012E850 00000000 */   nop
.Lrace_8012E854:
/* E4C14 8012E854 8FBF0038 */  lw         $ra, 0x38($sp)
/* E4C18 8012E858 8FB10034 */  lw         $s1, 0x34($sp)
/* E4C1C 8012E85C 8FB00030 */  lw         $s0, 0x30($sp)
/* E4C20 8012E860 03E00008 */  jr         $ra
/* E4C24 8012E864 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8012E868
/* E4C28 8012E868 03E00008 */  jr         $ra
/* E4C2C 8012E86C 24020002 */   addiu     $v0, $zero, 0x2

glabel func_race_8012E870
/* E4C30 8012E870 8C820020 */  lw         $v0, 0x20($a0)
/* E4C34 8012E874 03E00008 */  jr         $ra
/* E4C38 8012E878 00000000 */   nop

glabel func_race_8012E87C
/* E4C3C 8012E87C 03E00008 */  jr         $ra
/* E4C40 8012E880 24020002 */   addiu     $v0, $zero, 0x2
