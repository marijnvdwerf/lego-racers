.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800ECDD0
/* A3190 800ECDD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3194 800ECDD4 AFB00010 */  sw         $s0, 0x10($sp)
/* A3198 800ECDD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A319C 800ECDDC 0C03B508 */  jal        func_race_800ED420
/* A31A0 800ECDE0 00808021 */   addu      $s0, $a0, $zero
/* A31A4 800ECDE4 02001021 */  addu       $v0, $s0, $zero
/* A31A8 800ECDE8 3C03800D */  lui        $v1, %hi(D_race_800CC3E8)
/* A31AC 800ECDEC 2463C3E8 */  addiu      $v1, $v1, %lo(D_race_800CC3E8)
/* A31B0 800ECDF0 AC430000 */  sw         $v1, 0x0($v0)
/* A31B4 800ECDF4 AC400124 */  sw         $zero, 0x124($v0)
/* A31B8 800ECDF8 AC400128 */  sw         $zero, 0x128($v0)
/* A31BC 800ECDFC AC40012C */  sw         $zero, 0x12C($v0)
/* A31C0 800ECE00 AC400130 */  sw         $zero, 0x130($v0)
/* A31C4 800ECE04 AC400134 */  sw         $zero, 0x134($v0)
/* A31C8 800ECE08 AC400138 */  sw         $zero, 0x138($v0)
/* A31CC 800ECE0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A31D0 800ECE10 8FB00010 */  lw         $s0, 0x10($sp)
/* A31D4 800ECE14 03E00008 */  jr         $ra
/* A31D8 800ECE18 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800ECE1C
/* A31DC 800ECE1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A31E0 800ECE20 AFB00010 */  sw         $s0, 0x10($sp)
/* A31E4 800ECE24 00808021 */  addu       $s0, $a0, $zero
/* A31E8 800ECE28 AFB10014 */  sw         $s1, 0x14($sp)
/* A31EC 800ECE2C 00A08821 */  addu       $s1, $a1, $zero
/* A31F0 800ECE30 3C02800D */  lui        $v0, %hi(D_race_800CC3E8)
/* A31F4 800ECE34 2442C3E8 */  addiu      $v0, $v0, %lo(D_race_800CC3E8)
/* A31F8 800ECE38 AFBF0018 */  sw         $ra, 0x18($sp)
/* A31FC 800ECE3C 0C03B473 */  jal        func_race_800ED1CC
/* A3200 800ECE40 AE020000 */   sw        $v0, 0x0($s0)
/* A3204 800ECE44 02002021 */  addu       $a0, $s0, $zero
/* A3208 800ECE48 0C03B51B */  jal        func_race_800ED46C
/* A320C 800ECE4C 02202821 */   addu      $a1, $s1, $zero
/* A3210 800ECE50 8FBF0018 */  lw         $ra, 0x18($sp)
/* A3214 800ECE54 8FB10014 */  lw         $s1, 0x14($sp)
/* A3218 800ECE58 8FB00010 */  lw         $s0, 0x10($sp)
/* A321C 800ECE5C 03E00008 */  jr         $ra
/* A3220 800ECE60 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800ECE64
/* A3224 800ECE64 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A3228 800ECE68 AFB20018 */  sw         $s2, 0x18($sp)
/* A322C 800ECE6C 00809021 */  addu       $s2, $a0, $zero
/* A3230 800ECE70 AFB50024 */  sw         $s5, 0x24($sp)
/* A3234 800ECE74 00A0A821 */  addu       $s5, $a1, $zero
/* A3238 800ECE78 AFBF002C */  sw         $ra, 0x2C($sp)
/* A323C 800ECE7C AFB60028 */  sw         $s6, 0x28($sp)
/* A3240 800ECE80 AFB40020 */  sw         $s4, 0x20($sp)
/* A3244 800ECE84 AFB3001C */  sw         $s3, 0x1C($sp)
/* A3248 800ECE88 AFB10014 */  sw         $s1, 0x14($sp)
/* A324C 800ECE8C AFB00010 */  sw         $s0, 0x10($sp)
/* A3250 800ECE90 8E42000C */  lw         $v0, 0xC($s2)
/* A3254 800ECE94 10400003 */  beqz       $v0, .Lrace_800ECEA4
/* A3258 800ECE98 00C09821 */   addu      $s3, $a2, $zero
/* A325C 800ECE9C 0C03B473 */  jal        func_race_800ED1CC
/* A3260 800ECEA0 00000000 */   nop
.Lrace_800ECEA4:
/* A3264 800ECEA4 0C03A5BB */  jal        func_race_800E96EC
/* A3268 800ECEA8 3C108013 */   lui       $s0, %hi(D_race_80132150)
/* A326C 800ECEAC AE022150 */  sw         $v0, %lo(D_race_80132150)($s0)
/* A3270 800ECEB0 02602021 */  addu       $a0, $s3, $zero
/* A3274 800ECEB4 0C0026F4 */  jal        func_80009BD0
/* A3278 800ECEB8 24050005 */   addiu     $a1, $zero, 0x5
/* A327C 800ECEBC 0200B021 */  addu       $s6, $s0, $zero
/* A3280 800ECEC0 3C14800D */  lui        $s4, %hi(D_race_800CC3E0)
.Lrace_800ECEC4:
/* A3284 800ECEC4 8E620028 */  lw         $v0, 0x28($s3)
/* A3288 800ECEC8 844400A0 */  lh         $a0, 0xA0($v0)
/* A328C 800ECECC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A3290 800ECED0 0040F809 */  jalr       $v0
/* A3294 800ECED4 02642021 */   addu      $a0, $s3, $a0
/* A3298 800ECED8 00401821 */  addu       $v1, $v0, $zero
/* A329C 800ECEDC 24020033 */  addiu      $v0, $zero, 0x33
/* A32A0 800ECEE0 106200A5 */  beq        $v1, $v0, .Lrace_800ED178
/* A32A4 800ECEE4 24020037 */   addiu     $v0, $zero, 0x37
/* A32A8 800ECEE8 10620005 */  beq        $v1, $v0, .Lrace_800ECF00
/* A32AC 800ECEEC 24020038 */   addiu     $v0, $zero, 0x38
/* A32B0 800ECEF0 50620051 */  beql       $v1, $v0, .Lrace_800ED038
/* A32B4 800ECEF4 02602021 */   addu      $a0, $s3, $zero
/* A32B8 800ECEF8 0803B3B1 */  j          .Lrace_800ECEC4
/* A32BC 800ECEFC 00000000 */   nop
.Lrace_800ECF00:
/* A32C0 800ECF00 02602021 */  addu       $a0, $s3, $zero
/* A32C4 800ECF04 0C0026F4 */  jal        func_80009BD0
/* A32C8 800ECF08 24050007 */   addiu     $a1, $zero, 0x7
/* A32CC 800ECF0C 0C002680 */  jal        func_80009A00
/* A32D0 800ECF10 02602021 */   addu      $a0, $s3, $zero
/* A32D4 800ECF14 02602021 */  addu       $a0, $s3, $zero
/* A32D8 800ECF18 24050008 */  addiu      $a1, $zero, 0x8
/* A32DC 800ECF1C 0C0026F4 */  jal        func_80009BD0
/* A32E0 800ECF20 AE420134 */   sw        $v0, 0x134($s2)
/* A32E4 800ECF24 8EC42150 */  lw         $a0, %lo(D_race_80132150)($s6)
/* A32E8 800ECF28 0C01FB65 */  jal        func_8007ED94
/* A32EC 800ECF2C 00000000 */   nop
/* A32F0 800ECF30 8E420134 */  lw         $v0, 0x134($s2)
/* A32F4 800ECF34 00022040 */  sll        $a0, $v0, 1
/* A32F8 800ECF38 00822021 */  addu       $a0, $a0, $v0
/* A32FC 800ECF3C 0C00943C */  jal        func_800250F0
/* A3300 800ECF40 00042080 */   sll       $a0, $a0, 2
/* A3304 800ECF44 14400006 */  bnez       $v0, .Lrace_800ECF60
/* A3308 800ECF48 AE420124 */   sw        $v0, 0x124($s2)
/* A330C 800ECF4C 2684C3E0 */  addiu      $a0, $s4, %lo(D_race_800CC3E0)
/* A3310 800ECF50 00002821 */  addu       $a1, $zero, $zero
/* A3314 800ECF54 00A03021 */  addu       $a2, $a1, $zero
/* A3318 800ECF58 0C011ACF */  jal        func_80046B3C
/* A331C 800ECF5C 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800ECF60:
/* A3320 800ECF60 8E440134 */  lw         $a0, 0x134($s2)
/* A3324 800ECF64 0C00943C */  jal        func_800250F0
/* A3328 800ECF68 00042080 */   sll       $a0, $a0, 2
/* A332C 800ECF6C 14400006 */  bnez       $v0, .Lrace_800ECF88
/* A3330 800ECF70 AE420128 */   sw        $v0, 0x128($s2)
/* A3334 800ECF74 2684C3E0 */  addiu      $a0, $s4, %lo(D_race_800CC3E0)
/* A3338 800ECF78 00002821 */  addu       $a1, $zero, $zero
/* A333C 800ECF7C 00A03021 */  addu       $a2, $a1, $zero
/* A3340 800ECF80 0C011ACF */  jal        func_80046B3C
/* A3344 800ECF84 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800ECF88:
/* A3348 800ECF88 0C01FB72 */  jal        func_8007EDC8
/* A334C 800ECF8C 00008821 */   addu      $s1, $zero, $zero
/* A3350 800ECF90 02602021 */  addu       $a0, $s3, $zero
/* A3354 800ECF94 0C0026F4 */  jal        func_80009BD0
/* A3358 800ECF98 24050005 */   addiu     $a1, $zero, 0x5
/* A335C 800ECF9C 8E420134 */  lw         $v0, 0x134($s2)
/* A3360 800ECFA0 10400070 */  beqz       $v0, .Lrace_800ED164
/* A3364 800ECFA4 02208021 */   addu      $s0, $s1, $zero
.Lrace_800ECFA8:
/* A3368 800ECFA8 0C0025F8 */  jal        func_800097E0
/* A336C 800ECFAC 02602021 */   addu      $a0, $s3, $zero
/* A3370 800ECFB0 8E420124 */  lw         $v0, 0x124($s2)
/* A3374 800ECFB4 02602021 */  addu       $a0, $s3, $zero
/* A3378 800ECFB8 02021021 */  addu       $v0, $s0, $v0
/* A337C 800ECFBC 0C0025F8 */  jal        func_800097E0
/* A3380 800ECFC0 E4400000 */   swc1      $f0, 0x0($v0)
/* A3384 800ECFC4 8E420124 */  lw         $v0, 0x124($s2)
/* A3388 800ECFC8 02602021 */  addu       $a0, $s3, $zero
/* A338C 800ECFCC 02021021 */  addu       $v0, $s0, $v0
/* A3390 800ECFD0 0C0025F8 */  jal        func_800097E0
/* A3394 800ECFD4 E4400004 */   swc1      $f0, 0x4($v0)
/* A3398 800ECFD8 8E420124 */  lw         $v0, 0x124($s2)
/* A339C 800ECFDC 02602021 */  addu       $a0, $s3, $zero
/* A33A0 800ECFE0 02021021 */  addu       $v0, $s0, $v0
/* A33A4 800ECFE4 0C002680 */  jal        func_80009A00
/* A33A8 800ECFE8 E4400008 */   swc1      $f0, 0x8($v0)
/* A33AC 800ECFEC 8E440128 */  lw         $a0, 0x128($s2)
/* A33B0 800ECFF0 00111880 */  sll        $v1, $s1, 2
/* A33B4 800ECFF4 00641821 */  addu       $v1, $v1, $a0
/* A33B8 800ECFF8 AC620000 */  sw         $v0, 0x0($v1)
/* A33BC 800ECFFC 8EA20040 */  lw         $v0, 0x40($s5)
/* A33C0 800ED000 10400006 */  beqz       $v0, .Lrace_800ED01C
/* A33C4 800ED004 00000000 */   nop
/* A33C8 800ED008 8E420124 */  lw         $v0, 0x124($s2)
/* A33CC 800ED00C 02021021 */  addu       $v0, $s0, $v0
/* A33D0 800ED010 C4400004 */  lwc1       $f0, 0x4($v0)
/* A33D4 800ED014 46000007 */  neg.s      $f0, $f0
/* A33D8 800ED018 E4400004 */  swc1       $f0, 0x4($v0)
.Lrace_800ED01C:
/* A33DC 800ED01C 8E420134 */  lw         $v0, 0x134($s2)
/* A33E0 800ED020 26310001 */  addiu      $s1, $s1, 0x1
/* A33E4 800ED024 0222102B */  sltu       $v0, $s1, $v0
/* A33E8 800ED028 1440FFDF */  bnez       $v0, .Lrace_800ECFA8
/* A33EC 800ED02C 2610000C */   addiu     $s0, $s0, 0xC
/* A33F0 800ED030 0803B45A */  j          .Lrace_800ED168
/* A33F4 800ED034 02602021 */   addu      $a0, $s3, $zero
.Lrace_800ED038:
/* A33F8 800ED038 0C0026F4 */  jal        func_80009BD0
/* A33FC 800ED03C 24050007 */   addiu     $a1, $zero, 0x7
/* A3400 800ED040 0C002680 */  jal        func_80009A00
/* A3404 800ED044 02602021 */   addu      $a0, $s3, $zero
/* A3408 800ED048 02602021 */  addu       $a0, $s3, $zero
/* A340C 800ED04C 24050008 */  addiu      $a1, $zero, 0x8
/* A3410 800ED050 0C0026F4 */  jal        func_80009BD0
/* A3414 800ED054 AE420138 */   sw        $v0, 0x138($s2)
/* A3418 800ED058 8EC42150 */  lw         $a0, %lo(D_race_80132150)($s6)
/* A341C 800ED05C 0C01FB65 */  jal        func_8007ED94
/* A3420 800ED060 00000000 */   nop
/* A3424 800ED064 8E420138 */  lw         $v0, 0x138($s2)
/* A3428 800ED068 00022040 */  sll        $a0, $v0, 1
/* A342C 800ED06C 00822021 */  addu       $a0, $a0, $v0
/* A3430 800ED070 0C00943C */  jal        func_800250F0
/* A3434 800ED074 00042080 */   sll       $a0, $a0, 2
/* A3438 800ED078 14400006 */  bnez       $v0, .Lrace_800ED094
/* A343C 800ED07C AE42012C */   sw        $v0, 0x12C($s2)
/* A3440 800ED080 2684C3E0 */  addiu      $a0, $s4, %lo(D_race_800CC3E0)
/* A3444 800ED084 00002821 */  addu       $a1, $zero, $zero
/* A3448 800ED088 00A03021 */  addu       $a2, $a1, $zero
/* A344C 800ED08C 0C011ACF */  jal        func_80046B3C
/* A3450 800ED090 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800ED094:
/* A3454 800ED094 8E440138 */  lw         $a0, 0x138($s2)
/* A3458 800ED098 0C00943C */  jal        func_800250F0
/* A345C 800ED09C 00042080 */   sll       $a0, $a0, 2
/* A3460 800ED0A0 14400006 */  bnez       $v0, .Lrace_800ED0BC
/* A3464 800ED0A4 AE420130 */   sw        $v0, 0x130($s2)
/* A3468 800ED0A8 2684C3E0 */  addiu      $a0, $s4, %lo(D_race_800CC3E0)
/* A346C 800ED0AC 00002821 */  addu       $a1, $zero, $zero
/* A3470 800ED0B0 00A03021 */  addu       $a2, $a1, $zero
/* A3474 800ED0B4 0C011ACF */  jal        func_80046B3C
/* A3478 800ED0B8 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800ED0BC:
/* A347C 800ED0BC 0C01FB72 */  jal        func_8007EDC8
/* A3480 800ED0C0 00008821 */   addu      $s1, $zero, $zero
/* A3484 800ED0C4 02602021 */  addu       $a0, $s3, $zero
/* A3488 800ED0C8 0C0026F4 */  jal        func_80009BD0
/* A348C 800ED0CC 24050005 */   addiu     $a1, $zero, 0x5
/* A3490 800ED0D0 8E420138 */  lw         $v0, 0x138($s2)
/* A3494 800ED0D4 10400023 */  beqz       $v0, .Lrace_800ED164
/* A3498 800ED0D8 02208021 */   addu      $s0, $s1, $zero
.Lrace_800ED0DC:
/* A349C 800ED0DC 0C0025F8 */  jal        func_800097E0
/* A34A0 800ED0E0 02602021 */   addu      $a0, $s3, $zero
/* A34A4 800ED0E4 8E42012C */  lw         $v0, 0x12C($s2)
/* A34A8 800ED0E8 02602021 */  addu       $a0, $s3, $zero
/* A34AC 800ED0EC 02021021 */  addu       $v0, $s0, $v0
/* A34B0 800ED0F0 0C0025F8 */  jal        func_800097E0
/* A34B4 800ED0F4 E4400000 */   swc1      $f0, 0x0($v0)
/* A34B8 800ED0F8 8E42012C */  lw         $v0, 0x12C($s2)
/* A34BC 800ED0FC 02602021 */  addu       $a0, $s3, $zero
/* A34C0 800ED100 02021021 */  addu       $v0, $s0, $v0
/* A34C4 800ED104 0C0025F8 */  jal        func_800097E0
/* A34C8 800ED108 E4400004 */   swc1      $f0, 0x4($v0)
/* A34CC 800ED10C 8E42012C */  lw         $v0, 0x12C($s2)
/* A34D0 800ED110 02602021 */  addu       $a0, $s3, $zero
/* A34D4 800ED114 02021021 */  addu       $v0, $s0, $v0
/* A34D8 800ED118 0C002680 */  jal        func_80009A00
/* A34DC 800ED11C E4400008 */   swc1      $f0, 0x8($v0)
/* A34E0 800ED120 8E440130 */  lw         $a0, 0x130($s2)
/* A34E4 800ED124 00111880 */  sll        $v1, $s1, 2
/* A34E8 800ED128 00641821 */  addu       $v1, $v1, $a0
/* A34EC 800ED12C AC620000 */  sw         $v0, 0x0($v1)
/* A34F0 800ED130 8EA20040 */  lw         $v0, 0x40($s5)
/* A34F4 800ED134 10400006 */  beqz       $v0, .Lrace_800ED150
/* A34F8 800ED138 00000000 */   nop
/* A34FC 800ED13C 8E42012C */  lw         $v0, 0x12C($s2)
/* A3500 800ED140 02021021 */  addu       $v0, $s0, $v0
/* A3504 800ED144 C4400004 */  lwc1       $f0, 0x4($v0)
/* A3508 800ED148 46000007 */  neg.s      $f0, $f0
/* A350C 800ED14C E4400004 */  swc1       $f0, 0x4($v0)
.Lrace_800ED150:
/* A3510 800ED150 8E420138 */  lw         $v0, 0x138($s2)
/* A3514 800ED154 26310001 */  addiu      $s1, $s1, 0x1
/* A3518 800ED158 0222102B */  sltu       $v0, $s1, $v0
/* A351C 800ED15C 1440FFDF */  bnez       $v0, .Lrace_800ED0DC
/* A3520 800ED160 2610000C */   addiu     $s0, $s0, 0xC
.Lrace_800ED164:
/* A3524 800ED164 02602021 */  addu       $a0, $s3, $zero
.Lrace_800ED168:
/* A3528 800ED168 0C0026F4 */  jal        func_80009BD0
/* A352C 800ED16C 24050006 */   addiu     $a1, $zero, 0x6
/* A3530 800ED170 0803B3B1 */  j          .Lrace_800ECEC4
/* A3534 800ED174 00000000 */   nop
.Lrace_800ED178:
/* A3538 800ED178 02402021 */  addu       $a0, $s2, $zero
/* A353C 800ED17C 02A02821 */  addu       $a1, $s5, $zero
/* A3540 800ED180 0C03B543 */  jal        func_race_800ED50C
/* A3544 800ED184 02603021 */   addu      $a2, $s3, $zero
/* A3548 800ED188 02602021 */  addu       $a0, $s3, $zero
/* A354C 800ED18C 0C0026F4 */  jal        func_80009BD0
/* A3550 800ED190 24050006 */   addiu     $a1, $zero, 0x6
/* A3554 800ED194 2402FFFF */  addiu      $v0, $zero, -0x1
/* A3558 800ED198 AE420008 */  sw         $v0, 0x8($s2)
/* A355C 800ED19C 24020001 */  addiu      $v0, $zero, 0x1
/* A3560 800ED1A0 AE42000C */  sw         $v0, 0xC($s2)
/* A3564 800ED1A4 8FBF002C */  lw         $ra, 0x2C($sp)
/* A3568 800ED1A8 8FB60028 */  lw         $s6, 0x28($sp)
/* A356C 800ED1AC 8FB50024 */  lw         $s5, 0x24($sp)
/* A3570 800ED1B0 8FB40020 */  lw         $s4, 0x20($sp)
/* A3574 800ED1B4 8FB3001C */  lw         $s3, 0x1C($sp)
/* A3578 800ED1B8 8FB20018 */  lw         $s2, 0x18($sp)
/* A357C 800ED1BC 8FB10014 */  lw         $s1, 0x14($sp)
/* A3580 800ED1C0 8FB00010 */  lw         $s0, 0x10($sp)
/* A3584 800ED1C4 03E00008 */  jr         $ra
/* A3588 800ED1C8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800ED1CC
/* A358C 800ED1CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3590 800ED1D0 AFB00010 */  sw         $s0, 0x10($sp)
/* A3594 800ED1D4 00808021 */  addu       $s0, $a0, $zero
/* A3598 800ED1D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A359C 800ED1DC 8E020000 */  lw         $v0, 0x0($s0)
/* A35A0 800ED1E0 00002821 */  addu       $a1, $zero, $zero
/* A35A4 800ED1E4 84440018 */  lh         $a0, 0x18($v0)
/* A35A8 800ED1E8 8C42001C */  lw         $v0, 0x1C($v0)
/* A35AC 800ED1EC 0040F809 */  jalr       $v0
/* A35B0 800ED1F0 02042021 */   addu      $a0, $s0, $a0
/* A35B4 800ED1F4 8E040130 */  lw         $a0, 0x130($s0)
/* A35B8 800ED1F8 10800004 */  beqz       $a0, .Lrace_800ED20C
/* A35BC 800ED1FC 00000000 */   nop
/* A35C0 800ED200 0C009444 */  jal        func_80025110
/* A35C4 800ED204 00000000 */   nop
/* A35C8 800ED208 AE000130 */  sw         $zero, 0x130($s0)
.Lrace_800ED20C:
/* A35CC 800ED20C 8E04012C */  lw         $a0, 0x12C($s0)
/* A35D0 800ED210 10800004 */  beqz       $a0, .Lrace_800ED224
/* A35D4 800ED214 00000000 */   nop
/* A35D8 800ED218 0C009444 */  jal        func_80025110
/* A35DC 800ED21C 00000000 */   nop
/* A35E0 800ED220 AE00012C */  sw         $zero, 0x12C($s0)
.Lrace_800ED224:
/* A35E4 800ED224 8E040128 */  lw         $a0, 0x128($s0)
/* A35E8 800ED228 10800004 */  beqz       $a0, .Lrace_800ED23C
/* A35EC 800ED22C 00000000 */   nop
/* A35F0 800ED230 0C009444 */  jal        func_80025110
/* A35F4 800ED234 00000000 */   nop
/* A35F8 800ED238 AE000128 */  sw         $zero, 0x128($s0)
.Lrace_800ED23C:
/* A35FC 800ED23C 8E040124 */  lw         $a0, 0x124($s0)
/* A3600 800ED240 50800005 */  beql       $a0, $zero, .Lrace_800ED258
/* A3604 800ED244 02002021 */   addu      $a0, $s0, $zero
/* A3608 800ED248 0C009444 */  jal        func_80025110
/* A360C 800ED24C 00000000 */   nop
/* A3610 800ED250 AE000124 */  sw         $zero, 0x124($s0)
/* A3614 800ED254 02002021 */  addu       $a0, $s0, $zero
.Lrace_800ED258:
/* A3618 800ED258 AC800134 */  sw         $zero, 0x134($a0)
/* A361C 800ED25C 0C03B5CD */  jal        func_race_800ED734
/* A3620 800ED260 AC800138 */   sw        $zero, 0x138($a0)
/* A3624 800ED264 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3628 800ED268 8FB00010 */  lw         $s0, 0x10($sp)
/* A362C 800ED26C 03E00008 */  jr         $ra
/* A3630 800ED270 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800ED274
/* A3634 800ED274 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3638 800ED278 AFB00010 */  sw         $s0, 0x10($sp)
/* A363C 800ED27C 00808021 */  addu       $s0, $a0, $zero
/* A3640 800ED280 3C088003 */  lui        $t0, %hi(D_8002FAB0)
/* A3644 800ED284 3C048003 */  lui        $a0, %hi(D_8002F2B0)
/* A3648 800ED288 8D05FAB0 */  lw         $a1, %lo(D_8002FAB0)($t0)
/* A364C 800ED28C 2484F2B0 */  addiu      $a0, $a0, %lo(D_8002F2B0)
/* A3650 800ED290 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3654 800ED294 8E030138 */  lw         $v1, 0x138($s0)
/* A3658 800ED298 24A50001 */  addiu      $a1, $a1, 0x1
/* A365C 800ED29C 30A503FF */  andi       $a1, $a1, 0x3FF
/* A3660 800ED2A0 24A60001 */  addiu      $a2, $a1, 0x1
/* A3664 800ED2A4 30C603FF */  andi       $a2, $a2, 0x3FF
/* A3668 800ED2A8 00061040 */  sll        $v0, $a2, 1
/* A366C 800ED2AC 00441021 */  addu       $v0, $v0, $a0
/* A3670 800ED2B0 94420000 */  lhu        $v0, 0x0($v0)
/* A3674 800ED2B4 0043001B */  divu       $zero, $v0, $v1
/* A3678 800ED2B8 14600002 */  bnez       $v1, .Lrace_800ED2C4
/* A367C 800ED2BC 00000000 */   nop
/* A3680 800ED2C0 0007000D */  break      7
.Lrace_800ED2C4:
/* A3684 800ED2C4 00003810 */  mfhi       $a3
/* A3688 800ED2C8 00051040 */  sll        $v0, $a1, 1
/* A368C 800ED2CC 00441021 */  addu       $v0, $v0, $a0
/* A3690 800ED2D0 94420000 */  lhu        $v0, 0x0($v0)
/* A3694 800ED2D4 8E030134 */  lw         $v1, 0x134($s0)
/* A3698 800ED2D8 0043001B */  divu       $zero, $v0, $v1
/* A369C 800ED2DC 14600002 */  bnez       $v1, .Lrace_800ED2E8
/* A36A0 800ED2E0 00000000 */   nop
/* A36A4 800ED2E4 0007000D */  break      7
.Lrace_800ED2E8:
/* A36A8 800ED2E8 00004810 */  mfhi       $t1
/* A36AC 800ED2EC 8E030124 */  lw         $v1, 0x124($s0)
/* A36B0 800ED2F0 AE07013C */  sw         $a3, 0x13C($s0)
/* A36B4 800ED2F4 00091040 */  sll        $v0, $t1, 1
/* A36B8 800ED2F8 00491021 */  addu       $v0, $v0, $t1
/* A36BC 800ED2FC 00021080 */  sll        $v0, $v0, 2
/* A36C0 800ED300 00431021 */  addu       $v0, $v0, $v1
/* A36C4 800ED304 8C4A0000 */  lw         $t2, 0x0($v0)
/* A36C8 800ED308 8C4B0004 */  lw         $t3, 0x4($v0)
/* A36CC 800ED30C 8C4C0008 */  lw         $t4, 0x8($v0)
/* A36D0 800ED310 AE0A00E0 */  sw         $t2, 0xE0($s0)
/* A36D4 800ED314 AE0B00E4 */  sw         $t3, 0xE4($s0)
/* A36D8 800ED318 AE0C00E8 */  sw         $t4, 0xE8($s0)
/* A36DC 800ED31C 8E03013C */  lw         $v1, 0x13C($s0)
/* A36E0 800ED320 AD05FAB0 */  sw         $a1, %lo(D_8002FAB0)($t0)
/* A36E4 800ED324 AD06FAB0 */  sw         $a2, %lo(D_8002FAB0)($t0)
/* A36E8 800ED328 00031040 */  sll        $v0, $v1, 1
/* A36EC 800ED32C 00431021 */  addu       $v0, $v0, $v1
/* A36F0 800ED330 8E03012C */  lw         $v1, 0x12C($s0)
/* A36F4 800ED334 00021080 */  sll        $v0, $v0, 2
/* A36F8 800ED338 00431021 */  addu       $v0, $v0, $v1
/* A36FC 800ED33C 8C4A0000 */  lw         $t2, 0x0($v0)
/* A3700 800ED340 8C4B0004 */  lw         $t3, 0x4($v0)
/* A3704 800ED344 8C4C0008 */  lw         $t4, 0x8($v0)
/* A3708 800ED348 AE0A00EC */  sw         $t2, 0xEC($s0)
/* A370C 800ED34C AE0B00F0 */  sw         $t3, 0xF0($s0)
/* A3710 800ED350 AE0C00F4 */  sw         $t4, 0xF4($s0)
/* A3714 800ED354 8E040004 */  lw         $a0, 0x4($s0)
/* A3718 800ED358 10800007 */  beqz       $a0, .Lrace_800ED378
/* A371C 800ED35C 260700E0 */   addiu     $a3, $s0, 0xE0
/* A3720 800ED360 8E030128 */  lw         $v1, 0x128($s0)
/* A3724 800ED364 00091080 */  sll        $v0, $t1, 2
/* A3728 800ED368 00431021 */  addu       $v0, $v0, $v1
/* A372C 800ED36C 8C450000 */  lw         $a1, 0x0($v0)
/* A3730 800ED370 0C036D74 */  jal        func_race_800DB5D0
/* A3734 800ED374 00A03021 */   addu      $a2, $a1, $zero
.Lrace_800ED378:
/* A3738 800ED378 02002021 */  addu       $a0, $s0, $zero
/* A373C 800ED37C 0C03B613 */  jal        func_race_800ED84C
/* A3740 800ED380 00002821 */   addu      $a1, $zero, $zero
/* A3744 800ED384 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3748 800ED388 8FB00010 */  lw         $s0, 0x10($sp)
/* A374C 800ED38C 03E00008 */  jr         $ra
/* A3750 800ED390 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800ED394
/* A3754 800ED394 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3758 800ED398 AFB00010 */  sw         $s0, 0x10($sp)
/* A375C 800ED39C 00808021 */  addu       $s0, $a0, $zero
/* A3760 800ED3A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3764 800ED3A4 8E040004 */  lw         $a0, 0x4($s0)
/* A3768 800ED3A8 10800008 */  beqz       $a0, .Lrace_800ED3CC
/* A376C 800ED3AC 260700EC */   addiu     $a3, $s0, 0xEC
/* A3770 800ED3B0 8E02013C */  lw         $v0, 0x13C($s0)
/* A3774 800ED3B4 8E030130 */  lw         $v1, 0x130($s0)
/* A3778 800ED3B8 00021080 */  sll        $v0, $v0, 2
/* A377C 800ED3BC 00431021 */  addu       $v0, $v0, $v1
/* A3780 800ED3C0 8C450000 */  lw         $a1, 0x0($v0)
/* A3784 800ED3C4 0C036D74 */  jal        func_race_800DB5D0
/* A3788 800ED3C8 00A03021 */   addu      $a2, $a1, $zero
.Lrace_800ED3CC:
/* A378C 800ED3CC 02002021 */  addu       $a0, $s0, $zero
/* A3790 800ED3D0 0C03B654 */  jal        func_race_800ED950
/* A3794 800ED3D4 00002821 */   addu      $a1, $zero, $zero
/* A3798 800ED3D8 24020001 */  addiu      $v0, $zero, 0x1
/* A379C 800ED3DC AE02000C */  sw         $v0, 0xC($s0)
/* A37A0 800ED3E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A37A4 800ED3E4 8FB00010 */  lw         $s0, 0x10($sp)
/* A37A8 800ED3E8 03E00008 */  jr         $ra
/* A37AC 800ED3EC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800ED3F0
/* A37B0 800ED3F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A37B4 800ED3F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* A37B8 800ED3F8 8C83000C */  lw         $v1, 0xC($a0)
/* A37BC 800ED3FC 24020001 */  addiu      $v0, $zero, 0x1
/* A37C0 800ED400 10620003 */  beq        $v1, $v0, .Lrace_800ED410
/* A37C4 800ED404 00000000 */   nop
/* A37C8 800ED408 0C03B667 */  jal        func_race_800ED99C
/* A37CC 800ED40C 00000000 */   nop
.Lrace_800ED410:
/* A37D0 800ED410 8FBF0010 */  lw         $ra, 0x10($sp)
/* A37D4 800ED414 03E00008 */  jr         $ra
/* A37D8 800ED418 27BD0018 */   addiu     $sp, $sp, 0x18
