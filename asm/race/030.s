.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800D2170
/* 88530 800D2170 00801021 */  addu       $v0, $a0, $zero
/* 88534 800D2174 3C03800D */  lui        $v1, %hi(D_race_800CA878)
/* 88538 800D2178 2463A878 */  addiu      $v1, $v1, %lo(D_race_800CA878)
/* 8853C 800D217C AC430008 */  sw         $v1, 0x8($v0)
/* 88540 800D2180 AC400000 */  sw         $zero, 0x0($v0)
/* 88544 800D2184 03E00008 */  jr         $ra
/* 88548 800D2188 AC400004 */   sw        $zero, 0x4($v0)

glabel func_race_800D218C
/* 8854C 800D218C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 88550 800D2190 AFB10014 */  sw         $s1, 0x14($sp)
/* 88554 800D2194 00808821 */  addu       $s1, $a0, $zero
/* 88558 800D2198 AFB00010 */  sw         $s0, 0x10($sp)
/* 8855C 800D219C 00A08021 */  addu       $s0, $a1, $zero
/* 88560 800D21A0 3C02800D */  lui        $v0, %hi(D_race_800CA878)
/* 88564 800D21A4 2442A878 */  addiu      $v0, $v0, %lo(D_race_800CA878)
/* 88568 800D21A8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8856C 800D21AC 0C034877 */  jal        func_race_800D21DC
/* 88570 800D21B0 AE220008 */   sw        $v0, 0x8($s1)
/* 88574 800D21B4 32100001 */  andi       $s0, $s0, 0x1
/* 88578 800D21B8 12000003 */  beqz       $s0, .Lrace_800D21C8
/* 8857C 800D21BC 00000000 */   nop
/* 88580 800D21C0 0C01FB5C */  jal        func_8007ED70
/* 88584 800D21C4 02202021 */   addu      $a0, $s1, $zero
.Lrace_800D21C8:
/* 88588 800D21C8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8858C 800D21CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 88590 800D21D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 88594 800D21D4 03E00008 */  jr         $ra
/* 88598 800D21D8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D21DC
/* 8859C 800D21DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 885A0 800D21E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 885A4 800D21E4 00809021 */  addu       $s2, $a0, $zero
/* 885A8 800D21E8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 885AC 800D21EC AFB10014 */  sw         $s1, 0x14($sp)
/* 885B0 800D21F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 885B4 800D21F4 8E420000 */  lw         $v0, 0x0($s2)
/* 885B8 800D21F8 5040002B */  beql       $v0, $zero, .Lrace_800D22A8
/* 885BC 800D21FC AE400004 */   sw        $zero, 0x4($s2)
/* 885C0 800D2200 8E420004 */  lw         $v0, 0x4($s2)
/* 885C4 800D2204 1040000A */  beqz       $v0, .Lrace_800D2230
/* 885C8 800D2208 00008021 */   addu      $s0, $zero, $zero
/* 885CC 800D220C 02008821 */  addu       $s1, $s0, $zero
.Lrace_800D2210:
/* 885D0 800D2210 8E440000 */  lw         $a0, 0x0($s2)
/* 885D4 800D2214 26100001 */  addiu      $s0, $s0, 0x1
/* 885D8 800D2218 0C0344AC */  jal        func_race_800D12B0
/* 885DC 800D221C 00912021 */   addu      $a0, $a0, $s1
/* 885E0 800D2220 8E420004 */  lw         $v0, 0x4($s2)
/* 885E4 800D2224 0202102B */  sltu       $v0, $s0, $v0
/* 885E8 800D2228 1440FFF9 */  bnez       $v0, .Lrace_800D2210
/* 885EC 800D222C 2631034C */   addiu     $s1, $s1, 0x34C
.Lrace_800D2230:
/* 885F0 800D2230 8E440000 */  lw         $a0, 0x0($s2)
/* 885F4 800D2234 5080001B */  beql       $a0, $zero, .Lrace_800D22A4
/* 885F8 800D2238 AE400000 */   sw        $zero, 0x0($s2)
/* 885FC 800D223C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 88600 800D2240 00031040 */  sll        $v0, $v1, 1
/* 88604 800D2244 00431021 */  addu       $v0, $v0, $v1
/* 88608 800D2248 00021080 */  sll        $v0, $v0, 2
/* 8860C 800D224C 00431021 */  addu       $v0, $v0, $v1
/* 88610 800D2250 00021080 */  sll        $v0, $v0, 2
/* 88614 800D2254 00431021 */  addu       $v0, $v0, $v1
/* 88618 800D2258 00021080 */  sll        $v0, $v0, 2
/* 8861C 800D225C 00431023 */  subu       $v0, $v0, $v1
/* 88620 800D2260 00021080 */  sll        $v0, $v0, 2
/* 88624 800D2264 00828021 */  addu       $s0, $a0, $v0
/* 88628 800D2268 1090000B */  beq        $a0, $s0, .Lrace_800D2298
/* 8862C 800D226C 2610FCB4 */   addiu     $s0, $s0, -0x34C
.Lrace_800D2270:
/* 88630 800D2270 8E020348 */  lw         $v0, 0x348($s0)
/* 88634 800D2274 24050002 */  addiu      $a1, $zero, 0x2
/* 88638 800D2278 84440008 */  lh         $a0, 0x8($v0)
/* 8863C 800D227C 8C42000C */  lw         $v0, 0xC($v0)
/* 88640 800D2280 0040F809 */  jalr       $v0
/* 88644 800D2284 02042021 */   addu      $a0, $s0, $a0
/* 88648 800D2288 8E420000 */  lw         $v0, 0x0($s2)
/* 8864C 800D228C 1450FFF8 */  bne        $v0, $s0, .Lrace_800D2270
/* 88650 800D2290 2610FCB4 */   addiu     $s0, $s0, -0x34C
/* 88654 800D2294 8E440000 */  lw         $a0, 0x0($s2)
.Lrace_800D2298:
/* 88658 800D2298 0C009444 */  jal        func_80025110
/* 8865C 800D229C 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 88660 800D22A0 AE400000 */  sw         $zero, 0x0($s2)
.Lrace_800D22A4:
/* 88664 800D22A4 AE400004 */  sw         $zero, 0x4($s2)
.Lrace_800D22A8:
/* 88668 800D22A8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 8866C 800D22AC 8FB20018 */  lw         $s2, 0x18($sp)
/* 88670 800D22B0 8FB10014 */  lw         $s1, 0x14($sp)
/* 88674 800D22B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 88678 800D22B8 03E00008 */  jr         $ra
/* 8867C 800D22BC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D22C0
/* 88680 800D22C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 88684 800D22C4 AFB40020 */  sw         $s4, 0x20($sp)
/* 88688 800D22C8 0080A021 */  addu       $s4, $a0, $zero
/* 8868C 800D22CC AFB60028 */  sw         $s6, 0x28($sp)
/* 88690 800D22D0 00A0B021 */  addu       $s6, $a1, $zero
/* 88694 800D22D4 AFB7002C */  sw         $s7, 0x2C($sp)
/* 88698 800D22D8 00C0B821 */  addu       $s7, $a2, $zero
/* 8869C 800D22DC AFBE0030 */  sw         $fp, 0x30($sp)
/* 886A0 800D22E0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 886A4 800D22E4 AFB50024 */  sw         $s5, 0x24($sp)
/* 886A8 800D22E8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 886AC 800D22EC AFB20018 */  sw         $s2, 0x18($sp)
/* 886B0 800D22F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 886B4 800D22F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 886B8 800D22F8 8E820000 */  lw         $v0, 0x0($s4)
/* 886BC 800D22FC 8FB30048 */  lw         $s3, 0x48($sp)
/* 886C0 800D2300 10400003 */  beqz       $v0, .Lrace_800D2310
/* 886C4 800D2304 00E0F021 */   addu      $fp, $a3, $zero
/* 886C8 800D2308 0C034877 */  jal        func_race_800D21DC
/* 886CC 800D230C 00000000 */   nop
.Lrace_800D2310:
/* 886D0 800D2310 3C028013 */  lui        $v0, %hi(D_race_80132070)
/* 886D4 800D2314 8C442070 */  lw         $a0, %lo(D_race_80132070)($v0)
/* 886D8 800D2318 0C01FB65 */  jal        func_8007ED94
/* 886DC 800D231C 2670FFFF */   addiu     $s0, $s3, -0x1
/* 886E0 800D2320 00132040 */  sll        $a0, $s3, 1
/* 886E4 800D2324 00932021 */  addu       $a0, $a0, $s3
/* 886E8 800D2328 00042080 */  sll        $a0, $a0, 2
/* 886EC 800D232C 00932021 */  addu       $a0, $a0, $s3
/* 886F0 800D2330 00042080 */  sll        $a0, $a0, 2
/* 886F4 800D2334 00932021 */  addu       $a0, $a0, $s3
/* 886F8 800D2338 00042080 */  sll        $a0, $a0, 2
/* 886FC 800D233C 00932023 */  subu       $a0, $a0, $s3
/* 88700 800D2340 00042080 */  sll        $a0, $a0, 2
/* 88704 800D2344 0C00943C */  jal        func_800250F0
/* 88708 800D2348 24840008 */   addiu     $a0, $a0, 0x8
/* 8870C 800D234C 24420008 */  addiu      $v0, $v0, 0x8
/* 88710 800D2350 00409021 */  addu       $s2, $v0, $zero
/* 88714 800D2354 02408821 */  addu       $s1, $s2, $zero
/* 88718 800D2358 06000007 */  bltz       $s0, .Lrace_800D2378
/* 8871C 800D235C AE53FFF8 */   sw        $s3, -0x8($s2)
/* 88720 800D2360 2415FFFF */  addiu      $s5, $zero, -0x1
.Lrace_800D2364:
/* 88724 800D2364 0C034478 */  jal        func_race_800D11E0
/* 88728 800D2368 02202021 */   addu      $a0, $s1, $zero
/* 8872C 800D236C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 88730 800D2370 1615FFFC */  bne        $s0, $s5, .Lrace_800D2364
/* 88734 800D2374 2631034C */   addiu     $s1, $s1, 0x34C
.Lrace_800D2378:
/* 88738 800D2378 0C01FB72 */  jal        func_8007EDC8
/* 8873C 800D237C AE920000 */   sw        $s2, 0x0($s4)
/* 88740 800D2380 8E820000 */  lw         $v0, 0x0($s4)
/* 88744 800D2384 54400008 */  bnel       $v0, $zero, .Lrace_800D23A8
/* 88748 800D2388 AE930004 */   sw        $s3, 0x4($s4)
/* 8874C 800D238C 3C04800D */  lui        $a0, %hi(D_race_800CA870)
/* 88750 800D2390 2484A870 */  addiu      $a0, $a0, %lo(D_race_800CA870)
/* 88754 800D2394 00002821 */  addu       $a1, $zero, $zero
/* 88758 800D2398 00A03021 */  addu       $a2, $a1, $zero
/* 8875C 800D239C 0C011ACF */  jal        func_80046B3C
/* 88760 800D23A0 00A03821 */   addu      $a3, $a1, $zero
/* 88764 800D23A4 AE930004 */  sw         $s3, 0x4($s4)
.Lrace_800D23A8:
/* 88768 800D23A8 1260000D */  beqz       $s3, .Lrace_800D23E0
/* 8876C 800D23AC 00008021 */   addu      $s0, $zero, $zero
/* 88770 800D23B0 02008821 */  addu       $s1, $s0, $zero
.Lrace_800D23B4:
/* 88774 800D23B4 02C02821 */  addu       $a1, $s6, $zero
/* 88778 800D23B8 02E03021 */  addu       $a2, $s7, $zero
/* 8877C 800D23BC 03C03821 */  addu       $a3, $fp, $zero
/* 88780 800D23C0 8E840000 */  lw         $a0, 0x0($s4)
/* 88784 800D23C4 26100001 */  addiu      $s0, $s0, 0x1
/* 88788 800D23C8 0C0344F2 */  jal        func_race_800D13C8
/* 8878C 800D23CC 00912021 */   addu      $a0, $a0, $s1
/* 88790 800D23D0 8E820004 */  lw         $v0, 0x4($s4)
/* 88794 800D23D4 0202102B */  sltu       $v0, $s0, $v0
/* 88798 800D23D8 1440FFF6 */  bnez       $v0, .Lrace_800D23B4
/* 8879C 800D23DC 2631034C */   addiu     $s1, $s1, 0x34C
.Lrace_800D23E0:
/* 887A0 800D23E0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 887A4 800D23E4 8FBE0030 */  lw         $fp, 0x30($sp)
/* 887A8 800D23E8 8FB7002C */  lw         $s7, 0x2C($sp)
/* 887AC 800D23EC 8FB60028 */  lw         $s6, 0x28($sp)
/* 887B0 800D23F0 8FB50024 */  lw         $s5, 0x24($sp)
/* 887B4 800D23F4 8FB40020 */  lw         $s4, 0x20($sp)
/* 887B8 800D23F8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 887BC 800D23FC 8FB20018 */  lw         $s2, 0x18($sp)
/* 887C0 800D2400 8FB10014 */  lw         $s1, 0x14($sp)
/* 887C4 800D2404 8FB00010 */  lw         $s0, 0x10($sp)
/* 887C8 800D2408 03E00008 */  jr         $ra
/* 887CC 800D240C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800D2410
/* 887D0 800D2410 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 887D4 800D2414 AFB10014 */  sw         $s1, 0x14($sp)
/* 887D8 800D2418 00808821 */  addu       $s1, $a0, $zero
/* 887DC 800D241C 00001821 */  addu       $v1, $zero, $zero
/* 887E0 800D2420 00602021 */  addu       $a0, $v1, $zero
/* 887E4 800D2424 AFBF0018 */  sw         $ra, 0x18($sp)
/* 887E8 800D2428 AFB00010 */  sw         $s0, 0x10($sp)
/* 887EC 800D242C 8E260004 */  lw         $a2, 0x4($s1)
.Lrace_800D2430:
/* 887F0 800D2430 0066102B */  sltu       $v0, $v1, $a2
/* 887F4 800D2434 10400009 */  beqz       $v0, .Lrace_800D245C
/* 887F8 800D2438 00000000 */   nop
/* 887FC 800D243C 8E220000 */  lw         $v0, 0x0($s1)
/* 88800 800D2440 00821021 */  addu       $v0, $a0, $v0
/* 88804 800D2444 9042033C */  lbu        $v0, 0x33C($v0)
/* 88808 800D2448 30420001 */  andi       $v0, $v0, 0x1
/* 8880C 800D244C 10400003 */  beqz       $v0, .Lrace_800D245C
/* 88810 800D2450 2484034C */   addiu     $a0, $a0, 0x34C
/* 88814 800D2454 0803490C */  j          .Lrace_800D2430
/* 88818 800D2458 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800D245C:
/* 8881C 800D245C 8E220004 */  lw         $v0, 0x4($s1)
/* 88820 800D2460 1062000F */  beq        $v1, $v0, .Lrace_800D24A0
/* 88824 800D2464 00038040 */   sll       $s0, $v1, 1
/* 88828 800D2468 02038021 */  addu       $s0, $s0, $v1
/* 8882C 800D246C 00108080 */  sll        $s0, $s0, 2
/* 88830 800D2470 02038021 */  addu       $s0, $s0, $v1
/* 88834 800D2474 00108080 */  sll        $s0, $s0, 2
/* 88838 800D2478 02038021 */  addu       $s0, $s0, $v1
/* 8883C 800D247C 00108080 */  sll        $s0, $s0, 2
/* 88840 800D2480 02038023 */  subu       $s0, $s0, $v1
/* 88844 800D2484 8E240000 */  lw         $a0, 0x0($s1)
/* 88848 800D2488 00108080 */  sll        $s0, $s0, 2
/* 8884C 800D248C 0C03455E */  jal        func_race_800D1578
/* 88850 800D2490 00902021 */   addu      $a0, $a0, $s0
/* 88854 800D2494 8E220000 */  lw         $v0, 0x0($s1)
/* 88858 800D2498 08034929 */  j          .Lrace_800D24A4
/* 8885C 800D249C 00501021 */   addu      $v0, $v0, $s0
.Lrace_800D24A0:
/* 88860 800D24A0 00001021 */  addu       $v0, $zero, $zero
.Lrace_800D24A4:
/* 88864 800D24A4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 88868 800D24A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 8886C 800D24AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 88870 800D24B0 03E00008 */  jr         $ra
/* 88874 800D24B4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D24B8
/* 88878 800D24B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8887C 800D24BC 00A02021 */  addu       $a0, $a1, $zero
/* 88880 800D24C0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 88884 800D24C4 0C03456C */  jal        func_race_800D15B0
/* 88888 800D24C8 00C02821 */   addu      $a1, $a2, $zero
/* 8888C 800D24CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 88890 800D24D0 03E00008 */  jr         $ra
/* 88894 800D24D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D24D8
/* 88898 800D24D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8889C 800D24DC AFB20018 */  sw         $s2, 0x18($sp)
/* 888A0 800D24E0 00809021 */  addu       $s2, $a0, $zero
/* 888A4 800D24E4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 888A8 800D24E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 888AC 800D24EC AFB00010 */  sw         $s0, 0x10($sp)
/* 888B0 800D24F0 8E420004 */  lw         $v0, 0x4($s2)
/* 888B4 800D24F4 1040000A */  beqz       $v0, .Lrace_800D2520
/* 888B8 800D24F8 00008021 */   addu      $s0, $zero, $zero
/* 888BC 800D24FC 02008821 */  addu       $s1, $s0, $zero
.Lrace_800D2500:
/* 888C0 800D2500 8E440000 */  lw         $a0, 0x0($s2)
/* 888C4 800D2504 26100001 */  addiu      $s0, $s0, 0x1
/* 888C8 800D2508 0C034572 */  jal        func_race_800D15C8
/* 888CC 800D250C 00912021 */   addu      $a0, $a0, $s1
/* 888D0 800D2510 8E420004 */  lw         $v0, 0x4($s2)
/* 888D4 800D2514 0202102B */  sltu       $v0, $s0, $v0
/* 888D8 800D2518 1440FFF9 */  bnez       $v0, .Lrace_800D2500
/* 888DC 800D251C 2631034C */   addiu     $s1, $s1, 0x34C
.Lrace_800D2520:
/* 888E0 800D2520 8FBF001C */  lw         $ra, 0x1C($sp)
/* 888E4 800D2524 8FB20018 */  lw         $s2, 0x18($sp)
/* 888E8 800D2528 8FB10014 */  lw         $s1, 0x14($sp)
/* 888EC 800D252C 8FB00010 */  lw         $s0, 0x10($sp)
/* 888F0 800D2530 03E00008 */  jr         $ra
/* 888F4 800D2534 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D2538
/* 888F8 800D2538 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 888FC 800D253C AFB20018 */  sw         $s2, 0x18($sp)
/* 88900 800D2540 00809021 */  addu       $s2, $a0, $zero
/* 88904 800D2544 AFB3001C */  sw         $s3, 0x1C($sp)
/* 88908 800D2548 00A09821 */  addu       $s3, $a1, $zero
/* 8890C 800D254C AFB10014 */  sw         $s1, 0x14($sp)
/* 88910 800D2550 00008821 */  addu       $s1, $zero, $zero
/* 88914 800D2554 AFB00010 */  sw         $s0, 0x10($sp)
/* 88918 800D2558 02208021 */  addu       $s0, $s1, $zero
/* 8891C 800D255C AFBF0020 */  sw         $ra, 0x20($sp)
.Lrace_800D2560:
/* 88920 800D2560 8E420004 */  lw         $v0, 0x4($s2)
/* 88924 800D2564 0222102B */  sltu       $v0, $s1, $v0
/* 88928 800D2568 1040000C */  beqz       $v0, .Lrace_800D259C
/* 8892C 800D256C 00000000 */   nop
/* 88930 800D2570 8E420000 */  lw         $v0, 0x0($s2)
/* 88934 800D2574 02022021 */  addu       $a0, $s0, $v0
/* 88938 800D2578 9082033C */  lbu        $v0, 0x33C($a0)
/* 8893C 800D257C 30420001 */  andi       $v0, $v0, 0x1
/* 88940 800D2580 50400004 */  beql       $v0, $zero, .Lrace_800D2594
/* 88944 800D2584 2610034C */   addiu     $s0, $s0, 0x34C
/* 88948 800D2588 0C034576 */  jal        func_race_800D15D8
/* 8894C 800D258C 02602821 */   addu      $a1, $s3, $zero
/* 88950 800D2590 2610034C */  addiu      $s0, $s0, 0x34C
.Lrace_800D2594:
/* 88954 800D2594 08034958 */  j          .Lrace_800D2560
/* 88958 800D2598 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800D259C:
/* 8895C 800D259C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 88960 800D25A0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 88964 800D25A4 8FB20018 */  lw         $s2, 0x18($sp)
/* 88968 800D25A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 8896C 800D25AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 88970 800D25B0 03E00008 */  jr         $ra
/* 88974 800D25B4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800D25B8
/* 88978 800D25B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8897C 800D25BC AFB20018 */  sw         $s2, 0x18($sp)
/* 88980 800D25C0 00809021 */  addu       $s2, $a0, $zero
/* 88984 800D25C4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 88988 800D25C8 00A09821 */  addu       $s3, $a1, $zero
/* 8898C 800D25CC AFB10014 */  sw         $s1, 0x14($sp)
/* 88990 800D25D0 00008821 */  addu       $s1, $zero, $zero
/* 88994 800D25D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 88998 800D25D8 02208021 */  addu       $s0, $s1, $zero
/* 8899C 800D25DC AFBF0020 */  sw         $ra, 0x20($sp)
.Lrace_800D25E0:
/* 889A0 800D25E0 8E420004 */  lw         $v0, 0x4($s2)
/* 889A4 800D25E4 0222102B */  sltu       $v0, $s1, $v0
/* 889A8 800D25E8 1040000C */  beqz       $v0, .Lrace_800D261C
/* 889AC 800D25EC 00000000 */   nop
/* 889B0 800D25F0 8E420000 */  lw         $v0, 0x0($s2)
/* 889B4 800D25F4 02022021 */  addu       $a0, $s0, $v0
/* 889B8 800D25F8 9082033C */  lbu        $v0, 0x33C($a0)
/* 889BC 800D25FC 30420001 */  andi       $v0, $v0, 0x1
/* 889C0 800D2600 50400004 */  beql       $v0, $zero, .Lrace_800D2614
/* 889C4 800D2604 2610034C */   addiu     $s0, $s0, 0x34C
/* 889C8 800D2608 0C03465E */  jal        func_race_800D1978
/* 889CC 800D260C 02602821 */   addu      $a1, $s3, $zero
/* 889D0 800D2610 2610034C */  addiu      $s0, $s0, 0x34C
.Lrace_800D2614:
/* 889D4 800D2614 08034978 */  j          .Lrace_800D25E0
/* 889D8 800D2618 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800D261C:
/* 889DC 800D261C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 889E0 800D2620 8FB3001C */  lw         $s3, 0x1C($sp)
/* 889E4 800D2624 8FB20018 */  lw         $s2, 0x18($sp)
/* 889E8 800D2628 8FB10014 */  lw         $s1, 0x14($sp)
/* 889EC 800D262C 8FB00010 */  lw         $s0, 0x10($sp)
/* 889F0 800D2630 03E00008 */  jr         $ra
/* 889F4 800D2634 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800D2638
/* 889F8 800D2638 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 889FC 800D263C AFB20018 */  sw         $s2, 0x18($sp)
/* 88A00 800D2640 00809021 */  addu       $s2, $a0, $zero
/* 88A04 800D2644 AFB3001C */  sw         $s3, 0x1C($sp)
/* 88A08 800D2648 00A09821 */  addu       $s3, $a1, $zero
/* 88A0C 800D264C AFB10014 */  sw         $s1, 0x14($sp)
/* 88A10 800D2650 00008821 */  addu       $s1, $zero, $zero
/* 88A14 800D2654 AFB00010 */  sw         $s0, 0x10($sp)
/* 88A18 800D2658 02208021 */  addu       $s0, $s1, $zero
/* 88A1C 800D265C AFBF0020 */  sw         $ra, 0x20($sp)
.Lrace_800D2660:
/* 88A20 800D2660 8E420004 */  lw         $v0, 0x4($s2)
/* 88A24 800D2664 0222102B */  sltu       $v0, $s1, $v0
/* 88A28 800D2668 1040000C */  beqz       $v0, .Lrace_800D269C
/* 88A2C 800D266C 00000000 */   nop
/* 88A30 800D2670 8E420000 */  lw         $v0, 0x0($s2)
/* 88A34 800D2674 02022021 */  addu       $a0, $s0, $v0
/* 88A38 800D2678 9082033C */  lbu        $v0, 0x33C($a0)
/* 88A3C 800D267C 30420001 */  andi       $v0, $v0, 0x1
/* 88A40 800D2680 50400004 */  beql       $v0, $zero, .Lrace_800D2694
/* 88A44 800D2684 2610034C */   addiu     $s0, $s0, 0x34C
/* 88A48 800D2688 0C034660 */  jal        func_race_800D1980
/* 88A4C 800D268C 02602821 */   addu      $a1, $s3, $zero
/* 88A50 800D2690 2610034C */  addiu      $s0, $s0, 0x34C
.Lrace_800D2694:
/* 88A54 800D2694 08034998 */  j          .Lrace_800D2660
/* 88A58 800D2698 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800D269C:
/* 88A5C 800D269C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 88A60 800D26A0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 88A64 800D26A4 8FB20018 */  lw         $s2, 0x18($sp)
/* 88A68 800D26A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 88A6C 800D26AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 88A70 800D26B0 03E00008 */  jr         $ra
/* 88A74 800D26B4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800D26B8
/* 88A78 800D26B8 3C028013 */  lui        $v0, %hi(D_race_80132070)
/* 88A7C 800D26BC 03E00008 */  jr         $ra
/* 88A80 800D26C0 AC442070 */   sw        $a0, %lo(D_race_80132070)($v0)

glabel func_race_800D26C4
/* 88A84 800D26C4 8C820000 */  lw         $v0, 0x0($a0)
/* 88A88 800D26C8 03E00008 */  jr         $ra
/* 88A8C 800D26CC 0002102B */   sltu      $v0, $zero, $v0
