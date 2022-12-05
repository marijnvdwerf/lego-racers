.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8006E0C0
/* 653F0 8006E0C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 653F4 8006E0C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 653F8 8006E0C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 653FC 8006E0CC 0C01544C */  jal        func_80055130
/* 65400 8006E0D0 00808021 */   addu      $s0, $a0, $zero
/* 65404 8006E0D4 02001021 */  addu       $v0, $s0, $zero
/* 65408 8006E0D8 3C038004 */  lui        $v1, %hi(D_8003EF68)
/* 6540C 8006E0DC 2463EF68 */  addiu      $v1, $v1, %lo(D_8003EF68)
/* 65410 8006E0E0 AC430008 */  sw         $v1, 0x8($v0)
/* 65414 8006E0E4 AC40001C */  sw         $zero, 0x1C($v0)
/* 65418 8006E0E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6541C 8006E0EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 65420 8006E0F0 03E00008 */  jr         $ra
/* 65424 8006E0F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006E0F8
/* 65428 8006E0F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6542C 8006E0FC AFB00010 */  sw         $s0, 0x10($sp)
/* 65430 8006E100 00808021 */  addu       $s0, $a0, $zero
/* 65434 8006E104 AFB10014 */  sw         $s1, 0x14($sp)
/* 65438 8006E108 00A08821 */  addu       $s1, $a1, $zero
/* 6543C 8006E10C 3C028004 */  lui        $v0, %hi(D_8003EF68)
/* 65440 8006E110 2442EF68 */  addiu      $v0, $v0, %lo(D_8003EF68)
/* 65444 8006E114 AFBF0018 */  sw         $ra, 0x18($sp)
/* 65448 8006E118 0C01B8A3 */  jal        func_8006E28C
/* 6544C 8006E11C AE020008 */   sw        $v0, 0x8($s0)
/* 65450 8006E120 02002021 */  addu       $a0, $s0, $zero
/* 65454 8006E124 0C01545D */  jal        func_80055174
/* 65458 8006E128 02202821 */   addu      $a1, $s1, $zero
/* 6545C 8006E12C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 65460 8006E130 8FB10014 */  lw         $s1, 0x14($sp)
/* 65464 8006E134 8FB00010 */  lw         $s0, 0x10($sp)
/* 65468 8006E138 03E00008 */  jr         $ra
/* 6546C 8006E13C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006E140
/* 65470 8006E140 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 65474 8006E144 AFB50024 */  sw         $s5, 0x24($sp)
/* 65478 8006E148 0080A821 */  addu       $s5, $a0, $zero
/* 6547C 8006E14C 3C028008 */  lui        $v0, %hi(D_80085E80)
/* 65480 8006E150 8C445E80 */  lw         $a0, %lo(D_80085E80)($v0)
/* 65484 8006E154 AFBF0028 */  sw         $ra, 0x28($sp)
/* 65488 8006E158 AFB40020 */  sw         $s4, 0x20($sp)
/* 6548C 8006E15C AFB3001C */  sw         $s3, 0x1C($sp)
/* 65490 8006E160 AFB20018 */  sw         $s2, 0x18($sp)
/* 65494 8006E164 AFB10014 */  sw         $s1, 0x14($sp)
/* 65498 8006E168 0C01FB65 */  jal        func_8007ED94
/* 6549C 8006E16C AFB00010 */   sw        $s0, 0x10($sp)
/* 654A0 8006E170 8EB00018 */  lw         $s0, 0x18($s5)
/* 654A4 8006E174 001020C0 */  sll        $a0, $s0, 3
/* 654A8 8006E178 00902021 */  addu       $a0, $a0, $s0
/* 654AC 8006E17C 00042080 */  sll        $a0, $a0, 2
/* 654B0 8006E180 0C00943C */  jal        func_800250F0
/* 654B4 8006E184 24840008 */   addiu     $a0, $a0, 0x8
/* 654B8 8006E188 24420008 */  addiu      $v0, $v0, 0x8
/* 654BC 8006E18C 00409821 */  addu       $s3, $v0, $zero
/* 654C0 8006E190 02608821 */  addu       $s1, $s3, $zero
/* 654C4 8006E194 2612FFFF */  addiu      $s2, $s0, -0x1
/* 654C8 8006E198 0640000A */  bltz       $s2, .L8006E1C4
/* 654CC 8006E19C AE70FFF8 */   sw        $s0, -0x8($s3)
/* 654D0 8006E1A0 3C028004 */  lui        $v0, %hi(D_8003EFC8)
/* 654D4 8006E1A4 2454EFC8 */  addiu      $s4, $v0, %lo(D_8003EFC8)
/* 654D8 8006E1A8 2410FFFF */  addiu      $s0, $zero, -0x1
.L8006E1AC:
/* 654DC 8006E1AC 0C0151D4 */  jal        func_80054750
/* 654E0 8006E1B0 02202021 */   addu      $a0, $s1, $zero
/* 654E4 8006E1B4 AE340020 */  sw         $s4, 0x20($s1)
/* 654E8 8006E1B8 2652FFFF */  addiu      $s2, $s2, -0x1
/* 654EC 8006E1BC 1650FFFB */  bne        $s2, $s0, .L8006E1AC
/* 654F0 8006E1C0 26310024 */   addiu     $s1, $s1, 0x24
.L8006E1C4:
/* 654F4 8006E1C4 16600007 */  bnez       $s3, .L8006E1E4
/* 654F8 8006E1C8 AEB3001C */   sw        $s3, 0x1C($s5)
/* 654FC 8006E1CC 3C048004 */  lui        $a0, %hi(D_8003EF60)
/* 65500 8006E1D0 2484EF60 */  addiu      $a0, $a0, %lo(D_8003EF60)
/* 65504 8006E1D4 00002821 */  addu       $a1, $zero, $zero
/* 65508 8006E1D8 00A03021 */  addu       $a2, $a1, $zero
/* 6550C 8006E1DC 0C011ACF */  jal        func_80046B3C
/* 65510 8006E1E0 00A03821 */   addu      $a3, $a1, $zero
.L8006E1E4:
/* 65514 8006E1E4 0C01FB72 */  jal        func_8007EDC8
/* 65518 8006E1E8 00000000 */   nop
/* 6551C 8006E1EC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 65520 8006E1F0 8FB50024 */  lw         $s5, 0x24($sp)
/* 65524 8006E1F4 8FB40020 */  lw         $s4, 0x20($sp)
/* 65528 8006E1F8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 6552C 8006E1FC 8FB20018 */  lw         $s2, 0x18($sp)
/* 65530 8006E200 8FB10014 */  lw         $s1, 0x14($sp)
/* 65534 8006E204 8FB00010 */  lw         $s0, 0x10($sp)
/* 65538 8006E208 03E00008 */  jr         $ra
/* 6553C 8006E20C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8006E210
/* 65540 8006E210 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 65544 8006E214 AFB20018 */  sw         $s2, 0x18($sp)
/* 65548 8006E218 00809021 */  addu       $s2, $a0, $zero
/* 6554C 8006E21C AFBF001C */  sw         $ra, 0x1C($sp)
/* 65550 8006E220 AFB10014 */  sw         $s1, 0x14($sp)
/* 65554 8006E224 AFB00010 */  sw         $s0, 0x10($sp)
/* 65558 8006E228 8E420018 */  lw         $v0, 0x18($s2)
/* 6555C 8006E22C 1040000A */  beqz       $v0, .L8006E258
/* 65560 8006E230 00008021 */   addu      $s0, $zero, $zero
/* 65564 8006E234 02008821 */  addu       $s1, $s0, $zero
.L8006E238:
/* 65568 8006E238 8E44001C */  lw         $a0, 0x1C($s2)
/* 6556C 8006E23C 26100001 */  addiu      $s0, $s0, 0x1
/* 65570 8006E240 0C01B82D */  jal        func_8006E0B4
/* 65574 8006E244 00912021 */   addu      $a0, $a0, $s1
/* 65578 8006E248 8E420018 */  lw         $v0, 0x18($s2)
/* 6557C 8006E24C 0202102B */  sltu       $v0, $s0, $v0
/* 65580 8006E250 1440FFF9 */  bnez       $v0, .L8006E238
/* 65584 8006E254 26310024 */   addiu     $s1, $s1, 0x24
.L8006E258:
/* 65588 8006E258 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6558C 8006E25C 8FB20018 */  lw         $s2, 0x18($sp)
/* 65590 8006E260 8FB10014 */  lw         $s1, 0x14($sp)
/* 65594 8006E264 8FB00010 */  lw         $s0, 0x10($sp)
/* 65598 8006E268 03E00008 */  jr         $ra
/* 6559C 8006E26C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006E270
/* 655A0 8006E270 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 655A4 8006E274 AFBF0010 */  sw         $ra, 0x10($sp)
/* 655A8 8006E278 0C015643 */  jal        func_8005590C
/* 655AC 8006E27C 00000000 */   nop
/* 655B0 8006E280 8FBF0010 */  lw         $ra, 0x10($sp)
/* 655B4 8006E284 03E00008 */  jr         $ra
/* 655B8 8006E288 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006E28C
/* 655BC 8006E28C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 655C0 8006E290 AFB10014 */  sw         $s1, 0x14($sp)
/* 655C4 8006E294 00808821 */  addu       $s1, $a0, $zero
/* 655C8 8006E298 AFBF0018 */  sw         $ra, 0x18($sp)
/* 655CC 8006E29C AFB00010 */  sw         $s0, 0x10($sp)
/* 655D0 8006E2A0 8E24001C */  lw         $a0, 0x1C($s1)
/* 655D4 8006E2A4 10800015 */  beqz       $a0, .L8006E2FC
/* 655D8 8006E2A8 00000000 */   nop
/* 655DC 8006E2AC 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 655E0 8006E2B0 000310C0 */  sll        $v0, $v1, 3
/* 655E4 8006E2B4 00431021 */  addu       $v0, $v0, $v1
/* 655E8 8006E2B8 00021080 */  sll        $v0, $v0, 2
/* 655EC 8006E2BC 00828021 */  addu       $s0, $a0, $v0
/* 655F0 8006E2C0 1090000B */  beq        $a0, $s0, .L8006E2F0
/* 655F4 8006E2C4 2610FFDC */   addiu     $s0, $s0, -0x24
.L8006E2C8:
/* 655F8 8006E2C8 8E020020 */  lw         $v0, 0x20($s0)
/* 655FC 8006E2CC 24050002 */  addiu      $a1, $zero, 0x2
/* 65600 8006E2D0 84440008 */  lh         $a0, 0x8($v0)
/* 65604 8006E2D4 8C42000C */  lw         $v0, 0xC($v0)
/* 65608 8006E2D8 0040F809 */  jalr       $v0
/* 6560C 8006E2DC 02042021 */   addu      $a0, $s0, $a0
/* 65610 8006E2E0 8E22001C */  lw         $v0, 0x1C($s1)
/* 65614 8006E2E4 1450FFF8 */  bne        $v0, $s0, .L8006E2C8
/* 65618 8006E2E8 2610FFDC */   addiu     $s0, $s0, -0x24
/* 6561C 8006E2EC 8E24001C */  lw         $a0, 0x1C($s1)
.L8006E2F0:
/* 65620 8006E2F0 0C009444 */  jal        func_80025110
/* 65624 8006E2F4 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 65628 8006E2F8 AE20001C */  sw         $zero, 0x1C($s1)
.L8006E2FC:
/* 6562C 8006E2FC 0C0156B1 */  jal        func_80055AC4
/* 65630 8006E300 02202021 */   addu      $a0, $s1, $zero
/* 65634 8006E304 8FBF0018 */  lw         $ra, 0x18($sp)
/* 65638 8006E308 8FB10014 */  lw         $s1, 0x14($sp)
/* 6563C 8006E30C 8FB00010 */  lw         $s0, 0x10($sp)
/* 65640 8006E310 03E00008 */  jr         $ra
/* 65644 8006E314 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006E318
/* 65648 8006E318 3C028008 */  lui        $v0, %hi(D_80085E80)
/* 6564C 8006E31C 03E00008 */  jr         $ra
/* 65650 8006E320 AC445E80 */   sw        $a0, %lo(D_80085E80)($v0)

glabel func_8006E324
/* 65654 8006E324 000518C0 */  sll        $v1, $a1, 3
/* 65658 8006E328 00651821 */  addu       $v1, $v1, $a1
/* 6565C 8006E32C 8C82001C */  lw         $v0, 0x1C($a0)
/* 65660 8006E330 00031880 */  sll        $v1, $v1, 2
/* 65664 8006E334 03E00008 */  jr         $ra
/* 65668 8006E338 00431021 */   addu      $v0, $v0, $v1

glabel func_8006E33C
/* 6566C 8006E33C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 65670 8006E340 000510C0 */  sll        $v0, $a1, 3
/* 65674 8006E344 00451021 */  addu       $v0, $v0, $a1
/* 65678 8006E348 AFBF0010 */  sw         $ra, 0x10($sp)
/* 6567C 8006E34C 8C84001C */  lw         $a0, 0x1C($a0)
/* 65680 8006E350 00021080 */  sll        $v0, $v0, 2
/* 65684 8006E354 0C01B81C */  jal        func_8006E070
/* 65688 8006E358 00822021 */   addu      $a0, $a0, $v0
/* 6568C 8006E35C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 65690 8006E360 03E00008 */  jr         $ra
/* 65694 8006E364 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006E368
/* 65698 8006E368 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6569C 8006E36C AFBF0010 */  sw         $ra, 0x10($sp)
/* 656A0 8006E370 0C0151ED */  jal        func_800547B4
/* 656A4 8006E374 00000000 */   nop
/* 656A8 8006E378 8FBF0010 */  lw         $ra, 0x10($sp)
/* 656AC 8006E37C 03E00008 */  jr         $ra
/* 656B0 8006E380 27BD0018 */   addiu     $sp, $sp, 0x18
