.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800EC050
/* A2410 800EC050 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A2414 800EC054 AFB00010 */  sw         $s0, 0x10($sp)
/* A2418 800EC058 AFBF0014 */  sw         $ra, 0x14($sp)
/* A241C 800EC05C 0C03A1A4 */  jal        func_race_800E8690
/* A2420 800EC060 00808021 */   addu      $s0, $a0, $zero
/* A2424 800EC064 02001021 */  addu       $v0, $s0, $zero
/* A2428 800EC068 3C03800D */  lui        $v1, %hi(D_race_800CC300)
/* A242C 800EC06C 2463C300 */  addiu      $v1, $v1, %lo(D_race_800CC300)
/* A2430 800EC070 AC430000 */  sw         $v1, 0x0($v0)
/* A2434 800EC074 AC400010 */  sw         $zero, 0x10($v0)
/* A2438 800EC078 AC400014 */  sw         $zero, 0x14($v0)
/* A243C 800EC07C AC400018 */  sw         $zero, 0x18($v0)
/* A2440 800EC080 AC40001C */  sw         $zero, 0x1C($v0)
/* A2444 800EC084 AC400020 */  sw         $zero, 0x20($v0)
/* A2448 800EC088 8FBF0014 */  lw         $ra, 0x14($sp)
/* A244C 800EC08C 8FB00010 */  lw         $s0, 0x10($sp)
/* A2450 800EC090 03E00008 */  jr         $ra
/* A2454 800EC094 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EC098
/* A2458 800EC098 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A245C 800EC09C AFB00010 */  sw         $s0, 0x10($sp)
/* A2460 800EC0A0 00808021 */  addu       $s0, $a0, $zero
/* A2464 800EC0A4 AFB10014 */  sw         $s1, 0x14($sp)
/* A2468 800EC0A8 00A08821 */  addu       $s1, $a1, $zero
/* A246C 800EC0AC 3C02800D */  lui        $v0, %hi(D_race_800CC300)
/* A2470 800EC0B0 2442C300 */  addiu      $v0, $v0, %lo(D_race_800CC300)
/* A2474 800EC0B4 AFBF0018 */  sw         $ra, 0x18($sp)
/* A2478 800EC0B8 0C03B066 */  jal        func_race_800EC198
/* A247C 800EC0BC AE020000 */   sw        $v0, 0x0($s0)
/* A2480 800EC0C0 02002021 */  addu       $a0, $s0, $zero
/* A2484 800EC0C4 0C03A1AC */  jal        func_race_800E86B0
/* A2488 800EC0C8 02202821 */   addu      $a1, $s1, $zero
/* A248C 800EC0CC 8FBF0018 */  lw         $ra, 0x18($sp)
/* A2490 800EC0D0 8FB10014 */  lw         $s1, 0x14($sp)
/* A2494 800EC0D4 8FB00010 */  lw         $s0, 0x10($sp)
/* A2498 800EC0D8 03E00008 */  jr         $ra
/* A249C 800EC0DC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EC0E0
/* A24A0 800EC0E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A24A4 800EC0E4 AFB00010 */  sw         $s0, 0x10($sp)
/* A24A8 800EC0E8 00808021 */  addu       $s0, $a0, $zero
/* A24AC 800EC0EC AFBF0018 */  sw         $ra, 0x18($sp)
/* A24B0 800EC0F0 AFB10014 */  sw         $s1, 0x14($sp)
/* A24B4 800EC0F4 8E02000C */  lw         $v0, 0xC($s0)
/* A24B8 800EC0F8 10400003 */  beqz       $v0, .Lrace_800EC108
/* A24BC 800EC0FC 00A08821 */   addu      $s1, $a1, $zero
/* A24C0 800EC100 0C03B066 */  jal        func_race_800EC198
/* A24C4 800EC104 00000000 */   nop
.Lrace_800EC108:
/* A24C8 800EC108 2402000C */  addiu      $v0, $zero, 0xC
/* A24CC 800EC10C AE020008 */  sw         $v0, 0x8($s0)
/* A24D0 800EC110 8E22000C */  lw         $v0, 0xC($s1)
/* A24D4 800EC114 AE020004 */  sw         $v0, 0x4($s0)
/* A24D8 800EC118 8E22001C */  lw         $v0, 0x1C($s1)
/* A24DC 800EC11C AE020010 */  sw         $v0, 0x10($s0)
/* A24E0 800EC120 8E220014 */  lw         $v0, 0x14($s1)
/* A24E4 800EC124 AE020014 */  sw         $v0, 0x14($s0)
/* A24E8 800EC128 8E24002C */  lw         $a0, 0x2C($s1)
/* A24EC 800EC12C 3C02800D */  lui        $v0, %hi(D_race_800CC2E0)
/* A24F0 800EC130 8C830000 */  lw         $v1, 0x0($a0)
/* A24F4 800EC134 14600003 */  bnez       $v1, .Lrace_800EC144
/* A24F8 800EC138 2445C2E0 */   addiu     $a1, $v0, %lo(D_race_800CC2E0)
/* A24FC 800EC13C 0803B053 */  j          .Lrace_800EC14C
/* A2500 800EC140 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EC144:
/* A2504 800EC144 0C016427 */  jal        func_8005909C
/* A2508 800EC148 00000000 */   nop
.Lrace_800EC14C:
/* A250C 800EC14C AE020020 */  sw         $v0, 0x20($s0)
/* A2510 800EC150 3C02800D */  lui        $v0, %hi(D_race_800CC2E8)
/* A2514 800EC154 8E030014 */  lw         $v1, 0x14($s0)
/* A2518 800EC158 2445C2E8 */  addiu      $a1, $v0, %lo(D_race_800CC2E8)
/* A251C 800EC15C 8C6200BC */  lw         $v0, 0xBC($v1)
/* A2520 800EC160 14400003 */  bnez       $v0, .Lrace_800EC170
/* A2524 800EC164 246400BC */   addiu     $a0, $v1, 0xBC
/* A2528 800EC168 0803B05E */  j          .Lrace_800EC178
/* A252C 800EC16C 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EC170:
/* A2530 800EC170 0C016427 */  jal        func_8005909C
/* A2534 800EC174 00000000 */   nop
.Lrace_800EC178:
/* A2538 800EC178 AE02001C */  sw         $v0, 0x1C($s0)
/* A253C 800EC17C 24020001 */  addiu      $v0, $zero, 0x1
/* A2540 800EC180 AE02000C */  sw         $v0, 0xC($s0)
/* A2544 800EC184 8FBF0018 */  lw         $ra, 0x18($sp)
/* A2548 800EC188 8FB10014 */  lw         $s1, 0x14($sp)
/* A254C 800EC18C 8FB00010 */  lw         $s0, 0x10($sp)
/* A2550 800EC190 03E00008 */  jr         $ra
/* A2554 800EC194 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EC198
/* A2558 800EC198 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A255C 800EC19C AFB00010 */  sw         $s0, 0x10($sp)
/* A2560 800EC1A0 00808021 */  addu       $s0, $a0, $zero
/* A2564 800EC1A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A2568 800EC1A8 8E020000 */  lw         $v0, 0x0($s0)
/* A256C 800EC1AC 00002821 */  addu       $a1, $zero, $zero
/* A2570 800EC1B0 84440018 */  lh         $a0, 0x18($v0)
/* A2574 800EC1B4 8C42001C */  lw         $v0, 0x1C($v0)
/* A2578 800EC1B8 0040F809 */  jalr       $v0
/* A257C 800EC1BC 02042021 */   addu      $a0, $s0, $a0
/* A2580 800EC1C0 02002021 */  addu       $a0, $s0, $zero
/* A2584 800EC1C4 AC800010 */  sw         $zero, 0x10($a0)
/* A2588 800EC1C8 AC800014 */  sw         $zero, 0x14($a0)
/* A258C 800EC1CC AC800018 */  sw         $zero, 0x18($a0)
/* A2590 800EC1D0 AC80001C */  sw         $zero, 0x1C($a0)
/* A2594 800EC1D4 0C03A1C0 */  jal        func_race_800E8700
/* A2598 800EC1D8 AC800020 */   sw        $zero, 0x20($a0)
/* A259C 800EC1DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A25A0 800EC1E0 8FB00010 */  lw         $s0, 0x10($sp)
/* A25A4 800EC1E4 03E00008 */  jr         $ra
/* A25A8 800EC1E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EC1EC
/* A25AC 800EC1EC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A25B0 800EC1F0 AFB40038 */  sw         $s4, 0x38($sp)
/* A25B4 800EC1F4 0080A021 */  addu       $s4, $a0, $zero
/* A25B8 800EC1F8 AFBF003C */  sw         $ra, 0x3C($sp)
/* A25BC 800EC1FC AFB30034 */  sw         $s3, 0x34($sp)
/* A25C0 800EC200 AFB20030 */  sw         $s2, 0x30($sp)
/* A25C4 800EC204 AFB1002C */  sw         $s1, 0x2C($sp)
/* A25C8 800EC208 AFB00028 */  sw         $s0, 0x28($sp)
/* A25CC 800EC20C 8E82001C */  lw         $v0, 0x1C($s4)
/* A25D0 800EC210 3C01800D */  lui        $at, %hi(D_race_800CC2F0)
/* A25D4 800EC214 C420C2F0 */  lwc1       $f0, %lo(D_race_800CC2F0)($at)
/* A25D8 800EC218 C4420084 */  lwc1       $f2, 0x84($v0)
/* A25DC 800EC21C 46001032 */  c.eq.s     $f2, $f0
/* A25E0 800EC220 00000000 */  nop
/* A25E4 800EC224 45010051 */  bc1t       .Lrace_800EC36C
/* A25E8 800EC228 00008821 */   addu      $s1, $zero, $zero
/* A25EC 800EC22C 02208021 */  addu       $s0, $s1, $zero
/* A25F0 800EC230 27B20010 */  addiu      $s2, $sp, 0x10
/* A25F4 800EC234 3C13800D */  lui        $s3, %hi(D_race_800CC2E8)
.Lrace_800EC238:
/* A25F8 800EC238 1620001D */  bnez       $s1, .Lrace_800EC2B0
/* A25FC 800EC23C 00000000 */   nop
/* A2600 800EC240 8E830014 */  lw         $v1, 0x14($s4)
/* A2604 800EC244 8C620070 */  lw         $v0, 0x70($v1)
/* A2608 800EC248 0202102B */  sltu       $v0, $s0, $v0
/* A260C 800EC24C 10400016 */  beqz       $v0, .Lrace_800EC2A8
/* A2610 800EC250 02402021 */   addu      $a0, $s2, $zero
/* A2614 800EC254 24060008 */  addiu      $a2, $zero, 0x8
/* A2618 800EC258 8C620074 */  lw         $v0, 0x74($v1)
/* A261C 800EC25C 001028C0 */  sll        $a1, $s0, 3
/* A2620 800EC260 0C000708 */  jal        func_80001C20
/* A2624 800EC264 00452821 */   addu      $a1, $v0, $a1
/* A2628 800EC268 02402021 */  addu       $a0, $s2, $zero
/* A262C 800EC26C 2665C2E8 */  addiu      $a1, $s3, %lo(D_race_800CC2E8)
/* A2630 800EC270 0C0006B2 */  jal        func_80001AC8
/* A2634 800EC274 24060008 */   addiu     $a2, $zero, 0x8
/* A2638 800EC278 5440FFEF */  bnel       $v0, $zero, .Lrace_800EC238
/* A263C 800EC27C 26100001 */   addiu     $s0, $s0, 0x1
/* A2640 800EC280 8E830014 */  lw         $v1, 0x14($s4)
/* A2644 800EC284 8C6200EC */  lw         $v0, 0xEC($v1)
/* A2648 800EC288 02002821 */  addu       $a1, $s0, $zero
/* A264C 800EC28C 844400A0 */  lh         $a0, 0xA0($v0)
/* A2650 800EC290 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A2654 800EC294 0040F809 */  jalr       $v0
/* A2658 800EC298 00642021 */   addu      $a0, $v1, $a0
/* A265C 800EC29C 00408821 */  addu       $s1, $v0, $zero
/* A2660 800EC2A0 0803B08E */  j          .Lrace_800EC238
/* A2664 800EC2A4 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800EC2A8:
/* A2668 800EC2A8 12200024 */  beqz       $s1, .Lrace_800EC33C
/* A266C 800EC2AC 00000000 */   nop
.Lrace_800EC2B0:
/* A2670 800EC2B0 8E300008 */  lw         $s0, 0x8($s1)
/* A2674 800EC2B4 0C01A026 */  jal        func_80068098
/* A2678 800EC2B8 02002021 */   addu      $a0, $s0, $zero
/* A267C 800EC2BC 26130018 */  addiu      $s3, $s0, 0x18
/* A2680 800EC2C0 0C01A026 */  jal        func_80068098
/* A2684 800EC2C4 02602021 */   addu      $a0, $s3, $zero
/* A2688 800EC2C8 26110030 */  addiu      $s1, $s0, 0x30
/* A268C 800EC2CC 02202021 */  addu       $a0, $s1, $zero
/* A2690 800EC2D0 8E050000 */  lw         $a1, 0x0($s0)
/* A2694 800EC2D4 96060004 */  lhu        $a2, 0x4($s0)
/* A2698 800EC2D8 0C01A018 */  jal        func_80068060
/* A269C 800EC2DC 00003821 */   addu      $a3, $zero, $zero
/* A26A0 800EC2E0 0C01A02B */  jal        func_800680AC
/* A26A4 800EC2E4 02202021 */   addu      $a0, $s1, $zero
/* A26A8 800EC2E8 26120048 */  addiu      $s2, $s0, 0x48
/* A26AC 800EC2EC 02402021 */  addu       $a0, $s2, $zero
/* A26B0 800EC2F0 8E050018 */  lw         $a1, 0x18($s0)
/* A26B4 800EC2F4 96660004 */  lhu        $a2, 0x4($s3)
/* A26B8 800EC2F8 0C01A018 */  jal        func_80068060
/* A26BC 800EC2FC 00003821 */   addu      $a3, $zero, $zero
/* A26C0 800EC300 0C01A02B */  jal        func_800680AC
/* A26C4 800EC304 02402021 */   addu      $a0, $s2, $zero
/* A26C8 800EC308 8E83001C */  lw         $v1, 0x1C($s4)
/* A26CC 800EC30C 27B00018 */  addiu      $s0, $sp, 0x18
/* A26D0 800EC310 AE910018 */  sw         $s1, 0x18($s4)
/* A26D4 800EC314 8C620024 */  lw         $v0, 0x24($v1)
/* A26D8 800EC318 02002821 */  addu       $a1, $s0, $zero
/* A26DC 800EC31C 84440010 */  lh         $a0, 0x10($v0)
/* A26E0 800EC320 8C420014 */  lw         $v0, 0x14($v0)
/* A26E4 800EC324 0040F809 */  jalr       $v0
/* A26E8 800EC328 00642021 */   addu      $a0, $v1, $a0
/* A26EC 800EC32C 24050010 */  addiu      $a1, $zero, 0x10
/* A26F0 800EC330 8E840004 */  lw         $a0, 0x4($s4)
/* A26F4 800EC334 0C036B0B */  jal        func_race_800DAC2C
/* A26F8 800EC338 02003021 */   addu      $a2, $s0, $zero
.Lrace_800EC33C:
/* A26FC 800EC33C 8E840020 */  lw         $a0, 0x20($s4)
/* A2700 800EC340 8C820008 */  lw         $v0, 0x8($a0)
/* A2704 800EC344 3C030001 */  lui        $v1, (0x10000 >> 16)
/* A2708 800EC348 00431025 */  or         $v0, $v0, $v1
/* A270C 800EC34C AC820008 */  sw         $v0, 0x8($a0)
/* A2710 800EC350 8E840020 */  lw         $a0, 0x20($s4)
/* A2714 800EC354 8C820008 */  lw         $v0, 0x8($a0)
/* A2718 800EC358 3C030002 */  lui        $v1, (0x20000 >> 16)
/* A271C 800EC35C 00431025 */  or         $v0, $v0, $v1
/* A2720 800EC360 AC820008 */  sw         $v0, 0x8($a0)
/* A2724 800EC364 24020002 */  addiu      $v0, $zero, 0x2
/* A2728 800EC368 AE82000C */  sw         $v0, 0xC($s4)
.Lrace_800EC36C:
/* A272C 800EC36C 8FBF003C */  lw         $ra, 0x3C($sp)
/* A2730 800EC370 8FB40038 */  lw         $s4, 0x38($sp)
/* A2734 800EC374 8FB30034 */  lw         $s3, 0x34($sp)
/* A2738 800EC378 8FB20030 */  lw         $s2, 0x30($sp)
/* A273C 800EC37C 8FB1002C */  lw         $s1, 0x2C($sp)
/* A2740 800EC380 8FB00028 */  lw         $s0, 0x28($sp)
/* A2744 800EC384 03E00008 */  jr         $ra
/* A2748 800EC388 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800EC38C
/* A274C 800EC38C 8C820018 */  lw         $v0, 0x18($a0)
/* A2750 800EC390 10400005 */  beqz       $v0, .Lrace_800EC3A8
/* A2754 800EC394 00002821 */   addu      $a1, $zero, $zero
/* A2758 800EC398 8C420014 */  lw         $v0, 0x14($v0)
/* A275C 800EC39C 30420002 */  andi       $v0, $v0, 0x2
/* A2760 800EC3A0 1440000D */  bnez       $v0, .Lrace_800EC3D8
/* A2764 800EC3A4 00000000 */   nop
.Lrace_800EC3A8:
/* A2768 800EC3A8 3C01800D */  lui        $at, %hi(D_race_800CC2F4)
/* A276C 800EC3AC C420C2F4 */  lwc1       $f0, %lo(D_race_800CC2F4)($at)
.Lrace_800EC3B0:
/* A2770 800EC3B0 2CA20003 */  sltiu      $v0, $a1, 0x3
/* A2774 800EC3B4 10400006 */  beqz       $v0, .Lrace_800EC3D0
/* A2778 800EC3B8 00051880 */   sll       $v1, $a1, 2
/* A277C 800EC3BC 8C82001C */  lw         $v0, 0x1C($a0)
/* A2780 800EC3C0 24A50001 */  addiu      $a1, $a1, 0x1
/* A2784 800EC3C4 00431021 */  addu       $v0, $v0, $v1
/* A2788 800EC3C8 0803B0EC */  j          .Lrace_800EC3B0
/* A278C 800EC3CC E4400084 */   swc1      $f0, 0x84($v0)
.Lrace_800EC3D0:
/* A2790 800EC3D0 24020001 */  addiu      $v0, $zero, 0x1
/* A2794 800EC3D4 AC82000C */  sw         $v0, 0xC($a0)
.Lrace_800EC3D8:
/* A2798 800EC3D8 03E00008 */  jr         $ra
/* A279C 800EC3DC 00000000 */   nop

glabel func_race_800EC3E0
/* A27A0 800EC3E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A27A4 800EC3E4 AFB00020 */  sw         $s0, 0x20($sp)
/* A27A8 800EC3E8 00808021 */  addu       $s0, $a0, $zero
/* A27AC 800EC3EC AFBF0024 */  sw         $ra, 0x24($sp)
/* A27B0 800EC3F0 8E03000C */  lw         $v1, 0xC($s0)
/* A27B4 800EC3F4 24020001 */  addiu      $v0, $zero, 0x1
/* A27B8 800EC3F8 1062001A */  beq        $v1, $v0, .Lrace_800EC464
/* A27BC 800EC3FC 00000000 */   nop
/* A27C0 800EC400 0C03A1C4 */  jal        func_race_800E8710
/* A27C4 800EC404 00000000 */   nop
/* A27C8 800EC408 8E020018 */  lw         $v0, 0x18($s0)
/* A27CC 800EC40C 1040000F */  beqz       $v0, .Lrace_800EC44C
/* A27D0 800EC410 00000000 */   nop
/* A27D4 800EC414 8C420014 */  lw         $v0, 0x14($v0)
/* A27D8 800EC418 30420002 */  andi       $v0, $v0, 0x2
/* A27DC 800EC41C 14400011 */  bnez       $v0, .Lrace_800EC464
/* A27E0 800EC420 27A50010 */   addiu     $a1, $sp, 0x10
/* A27E4 800EC424 8E03001C */  lw         $v1, 0x1C($s0)
/* A27E8 800EC428 8C620024 */  lw         $v0, 0x24($v1)
/* A27EC 800EC42C 84440010 */  lh         $a0, 0x10($v0)
/* A27F0 800EC430 8C420014 */  lw         $v0, 0x14($v0)
/* A27F4 800EC434 0040F809 */  jalr       $v0
/* A27F8 800EC438 00642021 */   addu      $a0, $v1, $a0
/* A27FC 800EC43C 24050010 */  addiu      $a1, $zero, 0x10
/* A2800 800EC440 8E040004 */  lw         $a0, 0x4($s0)
/* A2804 800EC444 0C036BE1 */  jal        func_race_800DAF84
/* A2808 800EC448 03A53021 */   addu      $a2, $sp, $a1
.Lrace_800EC44C:
/* A280C 800EC44C 8E020000 */  lw         $v0, 0x0($s0)
/* A2810 800EC450 00002821 */  addu       $a1, $zero, $zero
/* A2814 800EC454 84440018 */  lh         $a0, 0x18($v0)
/* A2818 800EC458 8C42001C */  lw         $v0, 0x1C($v0)
/* A281C 800EC45C 0040F809 */  jalr       $v0
/* A2820 800EC460 02042021 */   addu      $a0, $s0, $a0
.Lrace_800EC464:
/* A2824 800EC464 8FBF0024 */  lw         $ra, 0x24($sp)
/* A2828 800EC468 8FB00020 */  lw         $s0, 0x20($sp)
/* A282C 800EC46C 03E00008 */  jr         $ra
/* A2830 800EC470 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800EC474
/* A2834 800EC474 03E00008 */  jr         $ra
/* A2838 800EC478 00000000 */   nop

glabel func_race_800EC47C
/* A283C 800EC47C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A2840 800EC480 AFB30024 */  sw         $s3, 0x24($sp)
/* A2844 800EC484 00809821 */  addu       $s3, $a0, $zero
/* A2848 800EC488 AFB20020 */  sw         $s2, 0x20($sp)
/* A284C 800EC48C AFBF002C */  sw         $ra, 0x2C($sp)
/* A2850 800EC490 AFB40028 */  sw         $s4, 0x28($sp)
/* A2854 800EC494 AFB1001C */  sw         $s1, 0x1C($sp)
/* A2858 800EC498 AFB00018 */  sw         $s0, 0x18($sp)
/* A285C 800EC49C 8E63000C */  lw         $v1, 0xC($s3)
/* A2860 800EC4A0 24020001 */  addiu      $v0, $zero, 0x1
/* A2864 800EC4A4 14620009 */  bne        $v1, $v0, .Lrace_800EC4CC
/* A2868 800EC4A8 00009021 */   addu      $s2, $zero, $zero
/* A286C 800EC4AC 8E62001C */  lw         $v0, 0x1C($s3)
/* A2870 800EC4B0 3C01800D */  lui        $at, %hi(D_race_800CC2F8)
/* A2874 800EC4B4 C420C2F8 */  lwc1       $f0, %lo(D_race_800CC2F8)($at)
/* A2878 800EC4B8 C4420084 */  lwc1       $f2, 0x84($v0)
/* A287C 800EC4BC 46001032 */  c.eq.s     $f2, $f0
/* A2880 800EC4C0 00000000 */  nop
/* A2884 800EC4C4 45000048 */  bc1f       .Lrace_800EC5E8
/* A2888 800EC4C8 00000000 */   nop
.Lrace_800EC4CC:
/* A288C 800EC4CC 3C04FFFE */  lui        $a0, (0xFFFEFFFF >> 16)
/* A2890 800EC4D0 3484FFFF */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
/* A2894 800EC4D4 3C05FFFD */  lui        $a1, (0xFFFDFFFF >> 16)
/* A2898 800EC4D8 8E630020 */  lw         $v1, 0x20($s3)
/* A289C 800EC4DC 34A5FFFF */  ori        $a1, $a1, (0xFFFDFFFF & 0xFFFF)
/* A28A0 800EC4E0 8C620008 */  lw         $v0, 0x8($v1)
/* A28A4 800EC4E4 00008021 */  addu       $s0, $zero, $zero
/* A28A8 800EC4E8 00441024 */  and        $v0, $v0, $a0
/* A28AC 800EC4EC AC620008 */  sw         $v0, 0x8($v1)
/* A28B0 800EC4F0 8E630020 */  lw         $v1, 0x20($s3)
/* A28B4 800EC4F4 27B10010 */  addiu      $s1, $sp, 0x10
/* A28B8 800EC4F8 8C620008 */  lw         $v0, 0x8($v1)
/* A28BC 800EC4FC 3C01800D */  lui        $at, %hi(D_race_800CC2FC)
/* A28C0 800EC500 C420C2FC */  lwc1       $f0, %lo(D_race_800CC2FC)($at)
/* A28C4 800EC504 00451024 */  and        $v0, $v0, $a1
/* A28C8 800EC508 AC620008 */  sw         $v0, 0x8($v1)
/* A28CC 800EC50C 8E62001C */  lw         $v0, 0x1C($s3)
/* A28D0 800EC510 3C14800D */  lui        $s4, %hi(D_race_800CC2E8)
/* A28D4 800EC514 E4400084 */  swc1       $f0, 0x84($v0)
.Lrace_800EC518:
/* A28D8 800EC518 1640001D */  bnez       $s2, .Lrace_800EC590
/* A28DC 800EC51C 00000000 */   nop
/* A28E0 800EC520 8E630014 */  lw         $v1, 0x14($s3)
/* A28E4 800EC524 8C620070 */  lw         $v0, 0x70($v1)
/* A28E8 800EC528 0202102B */  sltu       $v0, $s0, $v0
/* A28EC 800EC52C 10400016 */  beqz       $v0, .Lrace_800EC588
/* A28F0 800EC530 02202021 */   addu      $a0, $s1, $zero
/* A28F4 800EC534 24060008 */  addiu      $a2, $zero, 0x8
/* A28F8 800EC538 8C620074 */  lw         $v0, 0x74($v1)
/* A28FC 800EC53C 001028C0 */  sll        $a1, $s0, 3
/* A2900 800EC540 0C000708 */  jal        func_80001C20
/* A2904 800EC544 00452821 */   addu      $a1, $v0, $a1
/* A2908 800EC548 02202021 */  addu       $a0, $s1, $zero
/* A290C 800EC54C 2685C2E8 */  addiu      $a1, $s4, %lo(D_race_800CC2E8)
/* A2910 800EC550 0C0006B2 */  jal        func_80001AC8
/* A2914 800EC554 24060008 */   addiu     $a2, $zero, 0x8
/* A2918 800EC558 5440FFEF */  bnel       $v0, $zero, .Lrace_800EC518
/* A291C 800EC55C 26100001 */   addiu     $s0, $s0, 0x1
/* A2920 800EC560 8E630014 */  lw         $v1, 0x14($s3)
/* A2924 800EC564 8C6200EC */  lw         $v0, 0xEC($v1)
/* A2928 800EC568 02002821 */  addu       $a1, $s0, $zero
/* A292C 800EC56C 844400A0 */  lh         $a0, 0xA0($v0)
/* A2930 800EC570 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A2934 800EC574 0040F809 */  jalr       $v0
/* A2938 800EC578 00642021 */   addu      $a0, $v1, $a0
/* A293C 800EC57C 00409021 */  addu       $s2, $v0, $zero
/* A2940 800EC580 0803B146 */  j          .Lrace_800EC518
/* A2944 800EC584 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800EC588:
/* A2948 800EC588 12400016 */  beqz       $s2, .Lrace_800EC5E4
/* A294C 800EC58C 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_800EC590:
/* A2950 800EC590 8E500008 */  lw         $s0, 0x8($s2)
/* A2954 800EC594 0C01A026 */  jal        func_80068098
/* A2958 800EC598 26040030 */   addiu     $a0, $s0, 0x30
/* A295C 800EC59C 0C01A026 */  jal        func_80068098
/* A2960 800EC5A0 26040048 */   addiu     $a0, $s0, 0x48
/* A2964 800EC5A4 02002021 */  addu       $a0, $s0, $zero
/* A2968 800EC5A8 8E050000 */  lw         $a1, 0x0($s0)
/* A296C 800EC5AC 96060004 */  lhu        $a2, 0x4($s0)
/* A2970 800EC5B0 0C01A018 */  jal        func_80068060
/* A2974 800EC5B4 24070001 */   addiu     $a3, $zero, 0x1
/* A2978 800EC5B8 0C01A02B */  jal        func_800680AC
/* A297C 800EC5BC 02002021 */   addu      $a0, $s0, $zero
/* A2980 800EC5C0 26110018 */  addiu      $s1, $s0, 0x18
/* A2984 800EC5C4 02202021 */  addu       $a0, $s1, $zero
/* A2988 800EC5C8 8E050018 */  lw         $a1, 0x18($s0)
/* A298C 800EC5CC 96260004 */  lhu        $a2, 0x4($s1)
/* A2990 800EC5D0 0C01A018 */  jal        func_80068060
/* A2994 800EC5D4 24070001 */   addiu     $a3, $zero, 0x1
/* A2998 800EC5D8 0C01A02B */  jal        func_800680AC
/* A299C 800EC5DC 02202021 */   addu      $a0, $s1, $zero
/* A29A0 800EC5E0 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800EC5E4:
/* A29A4 800EC5E4 AE62000C */  sw         $v0, 0xC($s3)
.Lrace_800EC5E8:
/* A29A8 800EC5E8 8FBF002C */  lw         $ra, 0x2C($sp)
/* A29AC 800EC5EC 8FB40028 */  lw         $s4, 0x28($sp)
/* A29B0 800EC5F0 8FB30024 */  lw         $s3, 0x24($sp)
/* A29B4 800EC5F4 8FB20020 */  lw         $s2, 0x20($sp)
/* A29B8 800EC5F8 8FB1001C */  lw         $s1, 0x1C($sp)
/* A29BC 800EC5FC 8FB00018 */  lw         $s0, 0x18($sp)
/* A29C0 800EC600 03E00008 */  jr         $ra
/* A29C4 800EC604 27BD0030 */   addiu     $sp, $sp, 0x30
