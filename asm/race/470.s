.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F2020
/* A83E0 800F2020 00801021 */  addu       $v0, $a0, $zero
/* A83E4 800F2024 AC400000 */  sw         $zero, 0x0($v0)
/* A83E8 800F2028 03E00008 */  jr         $ra
/* A83EC 800F202C AC400004 */   sw        $zero, 0x4($v0)

glabel func_race_800F2030
/* A83F0 800F2030 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A83F4 800F2034 AFB10014 */  sw         $s1, 0x14($sp)
/* A83F8 800F2038 00808821 */  addu       $s1, $a0, $zero
/* A83FC 800F203C AFB00010 */  sw         $s0, 0x10($sp)
/* A8400 800F2040 AFBF0018 */  sw         $ra, 0x18($sp)
/* A8404 800F2044 0C03C81D */  jal        func_race_800F2074
/* A8408 800F2048 00A08021 */   addu      $s0, $a1, $zero
/* A840C 800F204C 32100001 */  andi       $s0, $s0, 0x1
/* A8410 800F2050 12000003 */  beqz       $s0, .Lrace_800F2060
/* A8414 800F2054 00000000 */   nop
/* A8418 800F2058 0C01FB5C */  jal        func_8007ED70
/* A841C 800F205C 02202021 */   addu      $a0, $s1, $zero
.Lrace_800F2060:
/* A8420 800F2060 8FBF0018 */  lw         $ra, 0x18($sp)
/* A8424 800F2064 8FB10014 */  lw         $s1, 0x14($sp)
/* A8428 800F2068 8FB00010 */  lw         $s0, 0x10($sp)
/* A842C 800F206C 03E00008 */  jr         $ra
/* A8430 800F2070 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F2074
/* A8434 800F2074 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A8438 800F2078 AFB10014 */  sw         $s1, 0x14($sp)
/* A843C 800F207C 00808821 */  addu       $s1, $a0, $zero
/* A8440 800F2080 AFBF0018 */  sw         $ra, 0x18($sp)
/* A8444 800F2084 AFB00010 */  sw         $s0, 0x10($sp)
/* A8448 800F2088 8E240000 */  lw         $a0, 0x0($s1)
/* A844C 800F208C 50800013 */  beql       $a0, $zero, .Lrace_800F20DC
/* A8450 800F2090 AE200004 */   sw        $zero, 0x4($s1)
/* A8454 800F2094 8C83FFF8 */  lw         $v1, -0x8($a0)
/* A8458 800F2098 000310C0 */  sll        $v0, $v1, 3
/* A845C 800F209C 00431021 */  addu       $v0, $v0, $v1
/* A8460 800F20A0 00021080 */  sll        $v0, $v0, 2
/* A8464 800F20A4 00828021 */  addu       $s0, $a0, $v0
/* A8468 800F20A8 10900008 */  beq        $a0, $s0, .Lrace_800F20CC
/* A846C 800F20AC 2610FFDC */   addiu     $s0, $s0, -0x24
.Lrace_800F20B0:
/* A8470 800F20B0 02002021 */  addu       $a0, $s0, $zero
/* A8474 800F20B4 0C03C77A */  jal        func_race_800F1DE8
/* A8478 800F20B8 24050002 */   addiu     $a1, $zero, 0x2
/* A847C 800F20BC 8E220000 */  lw         $v0, 0x0($s1)
/* A8480 800F20C0 1450FFFB */  bne        $v0, $s0, .Lrace_800F20B0
/* A8484 800F20C4 2610FFDC */   addiu     $s0, $s0, -0x24
/* A8488 800F20C8 8E240000 */  lw         $a0, 0x0($s1)
.Lrace_800F20CC:
/* A848C 800F20CC 0C009444 */  jal        func_80025110
/* A8490 800F20D0 2484FFF8 */   addiu     $a0, $a0, -0x8
/* A8494 800F20D4 AE200000 */  sw         $zero, 0x0($s1)
/* A8498 800F20D8 AE200004 */  sw         $zero, 0x4($s1)
.Lrace_800F20DC:
/* A849C 800F20DC 8FBF0018 */  lw         $ra, 0x18($sp)
/* A84A0 800F20E0 8FB10014 */  lw         $s1, 0x14($sp)
/* A84A4 800F20E4 8FB00010 */  lw         $s0, 0x10($sp)
/* A84A8 800F20E8 03E00008 */  jr         $ra
/* A84AC 800F20EC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F20F0
/* A84B0 800F20F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A84B4 800F20F4 AFB50024 */  sw         $s5, 0x24($sp)
/* A84B8 800F20F8 0080A821 */  addu       $s5, $a0, $zero
/* A84BC 800F20FC AFB10014 */  sw         $s1, 0x14($sp)
/* A84C0 800F2100 00A08821 */  addu       $s1, $a1, $zero
/* A84C4 800F2104 AFB00010 */  sw         $s0, 0x10($sp)
/* A84C8 800F2108 00C08021 */  addu       $s0, $a2, $zero
/* A84CC 800F210C AFBF002C */  sw         $ra, 0x2C($sp)
/* A84D0 800F2110 AFB60028 */  sw         $s6, 0x28($sp)
/* A84D4 800F2114 AFB40020 */  sw         $s4, 0x20($sp)
/* A84D8 800F2118 AFB3001C */  sw         $s3, 0x1C($sp)
/* A84DC 800F211C AFB20018 */  sw         $s2, 0x18($sp)
/* A84E0 800F2120 8EA20000 */  lw         $v0, 0x0($s5)
/* A84E4 800F2124 10400003 */  beqz       $v0, .Lrace_800F2134
/* A84E8 800F2128 00E0B021 */   addu      $s6, $a3, $zero
/* A84EC 800F212C 0C03C81D */  jal        func_race_800F2074
/* A84F0 800F2130 00000000 */   nop
.Lrace_800F2134:
/* A84F4 800F2134 12000014 */  beqz       $s0, .Lrace_800F2188
/* A84F8 800F2138 00000000 */   nop
/* A84FC 800F213C 0C01FB4C */  jal        func_8007ED30
/* A8500 800F2140 24040654 */   addiu     $a0, $zero, 0x654
/* A8504 800F2144 0C00278C */  jal        func_80009E30
/* A8508 800F2148 00402021 */   addu      $a0, $v0, $zero
/* A850C 800F214C 00409821 */  addu       $s3, $v0, $zero
/* A8510 800F2150 56600008 */  bnel       $s3, $zero, .Lrace_800F2174
/* A8514 800F2154 02602021 */   addu      $a0, $s3, $zero
/* A8518 800F2158 3C04800D */  lui        $a0, %hi(D_race_800CCAE0)
/* A851C 800F215C 2484CAE0 */  addiu      $a0, $a0, %lo(D_race_800CCAE0)
/* A8520 800F2160 00002821 */  addu       $a1, $zero, $zero
/* A8524 800F2164 00A03021 */  addu       $a2, $a1, $zero
/* A8528 800F2168 0C011ACF */  jal        func_80046B3C
/* A852C 800F216C 00A03821 */   addu      $a3, $a1, $zero
/* A8530 800F2170 02602021 */  addu       $a0, $s3, $zero
.Lrace_800F2174:
/* A8534 800F2174 3C05800D */  lui        $a1, %hi(D_race_800CCAE4)
/* A8538 800F2178 0C0025BA */  jal        func_800096E8
/* A853C 800F217C 24A5CAE4 */   addiu     $a1, $a1, %lo(D_race_800CCAE4)
/* A8540 800F2180 0803C872 */  j          .Lrace_800F21C8
/* A8544 800F2184 00000000 */   nop
.Lrace_800F2188:
/* A8548 800F2188 0C01FB4C */  jal        func_8007ED30
/* A854C 800F218C 24040658 */   addiu     $a0, $zero, 0x658
/* A8550 800F2190 00408021 */  addu       $s0, $v0, $zero
/* A8554 800F2194 0C002504 */  jal        func_80009410
/* A8558 800F2198 02002021 */   addu      $a0, $s0, $zero
/* A855C 800F219C 3C02800D */  lui        $v0, %hi(D_race_800CCAF8)
/* A8560 800F21A0 2442CAF8 */  addiu      $v0, $v0, %lo(D_race_800CCAF8)
/* A8564 800F21A4 02009821 */  addu       $s3, $s0, $zero
/* A8568 800F21A8 16600007 */  bnez       $s3, .Lrace_800F21C8
/* A856C 800F21AC AE020028 */   sw        $v0, 0x28($s0)
/* A8570 800F21B0 3C04800D */  lui        $a0, %hi(D_race_800CCAE0)
/* A8574 800F21B4 2484CAE0 */  addiu      $a0, $a0, %lo(D_race_800CCAE0)
/* A8578 800F21B8 00002821 */  addu       $a1, $zero, $zero
/* A857C 800F21BC 00A03021 */  addu       $a2, $a1, $zero
/* A8580 800F21C0 0C011ACF */  jal        func_80046B3C
/* A8584 800F21C4 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800F21C8:
/* A8588 800F21C8 8E620028 */  lw         $v0, 0x28($s3)
/* A858C 800F21CC 02202821 */  addu       $a1, $s1, $zero
/* A8590 800F21D0 84440088 */  lh         $a0, 0x88($v0)
/* A8594 800F21D4 8C42008C */  lw         $v0, 0x8C($v0)
/* A8598 800F21D8 0040F809 */  jalr       $v0
/* A859C 800F21DC 02642021 */   addu      $a0, $s3, $a0
/* A85A0 800F21E0 02602021 */  addu       $a0, $s3, $zero
/* A85A4 800F21E4 0C0026F4 */  jal        func_80009BD0
/* A85A8 800F21E8 24050027 */   addiu     $a1, $zero, 0x27
/* A85AC 800F21EC 0C002723 */  jal        func_80009C8C
/* A85B0 800F21F0 02602021 */   addu      $a0, $s3, $zero
/* A85B4 800F21F4 10400022 */  beqz       $v0, .Lrace_800F2280
/* A85B8 800F21F8 AEA20004 */   sw        $v0, 0x4($s5)
/* A85BC 800F21FC 2C4200FF */  sltiu      $v0, $v0, 0xFF
/* A85C0 800F2200 14400008 */  bnez       $v0, .Lrace_800F2224
/* A85C4 800F2204 3C028013 */   lui       $v0, %hi(D_race_801321B0)
/* A85C8 800F2208 3C04800D */  lui        $a0, %hi(D_race_800CCAE0)
/* A85CC 800F220C 2484CAE0 */  addiu      $a0, $a0, %lo(D_race_800CCAE0)
/* A85D0 800F2210 00002821 */  addu       $a1, $zero, $zero
/* A85D4 800F2214 00A03021 */  addu       $a2, $a1, $zero
/* A85D8 800F2218 0C011ACF */  jal        func_80046B3C
/* A85DC 800F221C 00A03821 */   addu      $a3, $a1, $zero
/* A85E0 800F2220 3C028013 */  lui        $v0, %hi(D_race_801321B0)
.Lrace_800F2224:
/* A85E4 800F2224 8C4421B0 */  lw         $a0, %lo(D_race_801321B0)($v0)
/* A85E8 800F2228 0C01FB65 */  jal        func_8007ED94
/* A85EC 800F222C 00000000 */   nop
/* A85F0 800F2230 8EB00004 */  lw         $s0, 0x4($s5)
/* A85F4 800F2234 001020C0 */  sll        $a0, $s0, 3
/* A85F8 800F2238 00902021 */  addu       $a0, $a0, $s0
/* A85FC 800F223C 00042080 */  sll        $a0, $a0, 2
/* A8600 800F2240 0C00943C */  jal        func_800250F0
/* A8604 800F2244 24840008 */   addiu     $a0, $a0, 0x8
/* A8608 800F2248 24420008 */  addiu      $v0, $v0, 0x8
/* A860C 800F224C 0040A021 */  addu       $s4, $v0, $zero
/* A8610 800F2250 02809021 */  addu       $s2, $s4, $zero
/* A8614 800F2254 2611FFFF */  addiu      $s1, $s0, -0x1
/* A8618 800F2258 06200007 */  bltz       $s1, .Lrace_800F2278
/* A861C 800F225C AE90FFF8 */   sw        $s0, -0x8($s4)
/* A8620 800F2260 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800F2264:
/* A8624 800F2264 0C03C770 */  jal        func_race_800F1DC0
/* A8628 800F2268 02402021 */   addu      $a0, $s2, $zero
/* A862C 800F226C 2631FFFF */  addiu      $s1, $s1, -0x1
/* A8630 800F2270 1630FFFC */  bne        $s1, $s0, .Lrace_800F2264
/* A8634 800F2274 26520024 */   addiu     $s2, $s2, 0x24
.Lrace_800F2278:
/* A8638 800F2278 0C01FB72 */  jal        func_8007EDC8
/* A863C 800F227C AEB40000 */   sw        $s4, 0x0($s5)
.Lrace_800F2280:
/* A8640 800F2280 00008821 */  addu       $s1, $zero, $zero
/* A8644 800F2284 02208021 */  addu       $s0, $s1, $zero
.Lrace_800F2288:
/* A8648 800F2288 8EA20004 */  lw         $v0, 0x4($s5)
/* A864C 800F228C 0222102B */  sltu       $v0, $s1, $v0
/* A8650 800F2290 1040000B */  beqz       $v0, .Lrace_800F22C0
/* A8654 800F2294 02602021 */   addu      $a0, $s3, $zero
/* A8658 800F2298 0C0026F4 */  jal        func_80009BD0
/* A865C 800F229C 24050027 */   addiu     $a1, $zero, 0x27
/* A8660 800F22A0 02602821 */  addu       $a1, $s3, $zero
/* A8664 800F22A4 02C03021 */  addu       $a2, $s6, $zero
/* A8668 800F22A8 8EA40000 */  lw         $a0, 0x0($s5)
/* A866C 800F22AC 26310001 */  addiu      $s1, $s1, 0x1
/* A8670 800F22B0 0C03C7A8 */  jal        func_race_800F1EA0
/* A8674 800F22B4 00902021 */   addu      $a0, $a0, $s0
/* A8678 800F22B8 0803C8A2 */  j          .Lrace_800F2288
/* A867C 800F22BC 26100024 */   addiu     $s0, $s0, 0x24
.Lrace_800F22C0:
/* A8680 800F22C0 0C0026F4 */  jal        func_80009BD0
/* A8684 800F22C4 24050006 */   addiu     $a1, $zero, 0x6
/* A8688 800F22C8 8E620028 */  lw         $v0, 0x28($s3)
/* A868C 800F22CC 84440048 */  lh         $a0, 0x48($v0)
/* A8690 800F22D0 8C42004C */  lw         $v0, 0x4C($v0)
/* A8694 800F22D4 0040F809 */  jalr       $v0
/* A8698 800F22D8 02642021 */   addu      $a0, $s3, $a0
/* A869C 800F22DC 12600006 */  beqz       $s3, .Lrace_800F22F8
/* A86A0 800F22E0 24050003 */   addiu     $a1, $zero, 0x3
/* A86A4 800F22E4 8E620028 */  lw         $v0, 0x28($s3)
/* A86A8 800F22E8 84440038 */  lh         $a0, 0x38($v0)
/* A86AC 800F22EC 8C42003C */  lw         $v0, 0x3C($v0)
/* A86B0 800F22F0 0040F809 */  jalr       $v0
/* A86B4 800F22F4 02642021 */   addu      $a0, $s3, $a0
.Lrace_800F22F8:
/* A86B8 800F22F8 0C03C8D0 */  jal        func_race_800F2340
/* A86BC 800F22FC 02A02021 */   addu      $a0, $s5, $zero
/* A86C0 800F2300 8FBF002C */  lw         $ra, 0x2C($sp)
/* A86C4 800F2304 8FB60028 */  lw         $s6, 0x28($sp)
/* A86C8 800F2308 8FB50024 */  lw         $s5, 0x24($sp)
/* A86CC 800F230C 8FB40020 */  lw         $s4, 0x20($sp)
/* A86D0 800F2310 8FB3001C */  lw         $s3, 0x1C($sp)
/* A86D4 800F2314 8FB20018 */  lw         $s2, 0x18($sp)
/* A86D8 800F2318 8FB10014 */  lw         $s1, 0x14($sp)
/* A86DC 800F231C 8FB00010 */  lw         $s0, 0x10($sp)
/* A86E0 800F2320 03E00008 */  jr         $ra
/* A86E4 800F2324 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800F2328
/* A86E8 800F2328 000518C0 */  sll        $v1, $a1, 3
/* A86EC 800F232C 00651821 */  addu       $v1, $v1, $a1
/* A86F0 800F2330 8C820000 */  lw         $v0, 0x0($a0)
/* A86F4 800F2334 00031880 */  sll        $v1, $v1, 2
/* A86F8 800F2338 03E00008 */  jr         $ra
/* A86FC 800F233C 00431021 */   addu      $v0, $v0, $v1

glabel func_race_800F2340
/* A8700 800F2340 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A8704 800F2344 AFB20020 */  sw         $s2, 0x20($sp)
/* A8708 800F2348 00809021 */  addu       $s2, $a0, $zero
/* A870C 800F234C AFBF0028 */  sw         $ra, 0x28($sp)
/* A8710 800F2350 AFB30024 */  sw         $s3, 0x24($sp)
/* A8714 800F2354 AFB1001C */  sw         $s1, 0x1C($sp)
/* A8718 800F2358 0C03C93A */  jal        func_race_800F24E8
/* A871C 800F235C AFB00018 */   sw        $s0, 0x18($sp)
/* A8720 800F2360 00008021 */  addu       $s0, $zero, $zero
/* A8724 800F2364 44802000 */  mtc1       $zero, $f4
/* A8728 800F2368 3C01800D */  lui        $at, %hi(D_race_800CCAEC)
/* A872C 800F236C C422CAEC */  lwc1       $f2, %lo(D_race_800CCAEC)($at)
/* A8730 800F2370 44820000 */  mtc1       $v0, $f0
/* A8734 800F2374 46800020 */  cvt.s.w    $f0, $f0
/* A8738 800F2378 AFA20010 */  sw         $v0, 0x10($sp)
/* A873C 800F237C 46001003 */  div.s      $f0, $f2, $f0
/* A8740 800F2380 001010C0 */  sll        $v0, $s0, 3
.Lrace_800F2384:
/* A8744 800F2384 00501021 */  addu       $v0, $v0, $s0
/* A8748 800F2388 8E430000 */  lw         $v1, 0x0($s2)
/* A874C 800F238C 00021080 */  sll        $v0, $v0, 2
/* A8750 800F2390 00431821 */  addu       $v1, $v0, $v1
/* A8754 800F2394 E464001C */  swc1       $f4, 0x1C($v1)
/* A8758 800F2398 8E430000 */  lw         $v1, 0x0($s2)
/* A875C 800F239C 00431021 */  addu       $v0, $v0, $v1
/* A8760 800F23A0 90500020 */  lbu        $s0, 0x20($v0)
/* A8764 800F23A4 001010C0 */  sll        $v0, $s0, 3
/* A8768 800F23A8 00501021 */  addu       $v0, $v0, $s0
/* A876C 800F23AC 00021080 */  sll        $v0, $v0, 2
/* A8770 800F23B0 00621021 */  addu       $v0, $v1, $v0
/* A8774 800F23B4 10430005 */  beq        $v0, $v1, .Lrace_800F23CC
/* A8778 800F23B8 46002100 */   add.s     $f4, $f4, $f0
/* A877C 800F23BC 4602203C */  c.lt.s     $f4, $f2
/* A8780 800F23C0 00000000 */  nop
/* A8784 800F23C4 4501FFEF */  bc1t       .Lrace_800F2384
/* A8788 800F23C8 001010C0 */   sll       $v0, $s0, 3
.Lrace_800F23CC:
/* A878C 800F23CC 00008021 */  addu       $s0, $zero, $zero
/* A8790 800F23D0 24110001 */  addiu      $s1, $zero, 0x1
.Lrace_800F23D4:
/* A8794 800F23D4 001010C0 */  sll        $v0, $s0, 3
/* A8798 800F23D8 00501021 */  addu       $v0, $v0, $s0
/* A879C 800F23DC 00029880 */  sll        $s3, $v0, 2
.Lrace_800F23E0:
/* A87A0 800F23E0 2E220004 */  sltiu      $v0, $s1, 0x4
/* A87A4 800F23E4 1040002E */  beqz       $v0, .Lrace_800F24A0
/* A87A8 800F23E8 001010C0 */   sll       $v0, $s0, 3
/* A87AC 800F23EC 8E420000 */  lw         $v0, 0x0($s2)
/* A87B0 800F23F0 02621021 */  addu       $v0, $s3, $v0
/* A87B4 800F23F4 00511021 */  addu       $v0, $v0, $s1
/* A87B8 800F23F8 90450020 */  lbu        $a1, 0x20($v0)
/* A87BC 800F23FC 240200FF */  addiu      $v0, $zero, 0xFF
/* A87C0 800F2400 10A20025 */  beq        $a1, $v0, .Lrace_800F2498
/* A87C4 800F2404 02402021 */   addu      $a0, $s2, $zero
/* A87C8 800F2408 0C03C94E */  jal        func_race_800F2538
/* A87CC 800F240C 27A60010 */   addiu     $a2, $sp, 0x10
/* A87D0 800F2410 000218C0 */  sll        $v1, $v0, 3
/* A87D4 800F2414 00621821 */  addu       $v1, $v1, $v0
/* A87D8 800F2418 00031880 */  sll        $v1, $v1, 2
/* A87DC 800F241C 8E440000 */  lw         $a0, 0x0($s2)
/* A87E0 800F2420 00603021 */  addu       $a2, $v1, $zero
/* A87E4 800F2424 02641821 */  addu       $v1, $s3, $a0
/* A87E8 800F2428 00711021 */  addu       $v0, $v1, $s1
/* A87EC 800F242C 00C42021 */  addu       $a0, $a2, $a0
/* A87F0 800F2430 90450020 */  lbu        $a1, 0x20($v0)
/* A87F4 800F2434 C482001C */  lwc1       $f2, 0x1C($a0)
/* A87F8 800F2438 C464001C */  lwc1       $f4, 0x1C($v1)
/* A87FC 800F243C 8FA20010 */  lw         $v0, 0x10($sp)
/* A8800 800F2440 46041081 */  sub.s      $f2, $f2, $f4
/* A8804 800F2444 24420001 */  addiu      $v0, $v0, 0x1
/* A8808 800F2448 44820000 */  mtc1       $v0, $f0
/* A880C 800F244C 46800020 */  cvt.s.w    $f0, $f0
/* A8810 800F2450 46001003 */  div.s      $f0, $f2, $f0
/* A8814 800F2454 46002100 */  add.s      $f4, $f4, $f0
.Lrace_800F2458:
/* A8818 800F2458 000510C0 */  sll        $v0, $a1, 3
/* A881C 800F245C 00451021 */  addu       $v0, $v0, $a1
/* A8820 800F2460 8E430000 */  lw         $v1, 0x0($s2)
/* A8824 800F2464 00021080 */  sll        $v0, $v0, 2
/* A8828 800F2468 00431821 */  addu       $v1, $v0, $v1
/* A882C 800F246C E464001C */  swc1       $f4, 0x1C($v1)
/* A8830 800F2470 8E430000 */  lw         $v1, 0x0($s2)
/* A8834 800F2474 00431021 */  addu       $v0, $v0, $v1
/* A8838 800F2478 90450020 */  lbu        $a1, 0x20($v0)
/* A883C 800F247C 000510C0 */  sll        $v0, $a1, 3
/* A8840 800F2480 00451021 */  addu       $v0, $v0, $a1
/* A8844 800F2484 00021080 */  sll        $v0, $v0, 2
/* A8848 800F2488 00621021 */  addu       $v0, $v1, $v0
/* A884C 800F248C 00661821 */  addu       $v1, $v1, $a2
/* A8850 800F2490 1443FFF1 */  bne        $v0, $v1, .Lrace_800F2458
/* A8854 800F2494 46002100 */   add.s     $f4, $f4, $f0
.Lrace_800F2498:
/* A8858 800F2498 0803C8F8 */  j          .Lrace_800F23E0
/* A885C 800F249C 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800F24A0:
/* A8860 800F24A0 00501021 */  addu       $v0, $v0, $s0
/* A8864 800F24A4 8E430000 */  lw         $v1, 0x0($s2)
/* A8868 800F24A8 00021080 */  sll        $v0, $v0, 2
/* A886C 800F24AC 00431021 */  addu       $v0, $v0, $v1
/* A8870 800F24B0 90500020 */  lbu        $s0, 0x20($v0)
/* A8874 800F24B4 001010C0 */  sll        $v0, $s0, 3
/* A8878 800F24B8 00501021 */  addu       $v0, $v0, $s0
/* A887C 800F24BC 00021080 */  sll        $v0, $v0, 2
/* A8880 800F24C0 00621021 */  addu       $v0, $v1, $v0
/* A8884 800F24C4 1443FFC3 */  bne        $v0, $v1, .Lrace_800F23D4
/* A8888 800F24C8 24110001 */   addiu     $s1, $zero, 0x1
/* A888C 800F24CC 8FBF0028 */  lw         $ra, 0x28($sp)
/* A8890 800F24D0 8FB30024 */  lw         $s3, 0x24($sp)
/* A8894 800F24D4 8FB20020 */  lw         $s2, 0x20($sp)
/* A8898 800F24D8 8FB1001C */  lw         $s1, 0x1C($sp)
/* A889C 800F24DC 8FB00018 */  lw         $s0, 0x18($sp)
/* A88A0 800F24E0 03E00008 */  jr         $ra
/* A88A4 800F24E4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800F24E8
/* A88A8 800F24E8 00002821 */  addu       $a1, $zero, $zero
/* A88AC 800F24EC 00A01821 */  addu       $v1, $a1, $zero
/* A88B0 800F24F0 8C860000 */  lw         $a2, 0x0($a0)
/* A88B4 800F24F4 000310C0 */  sll        $v0, $v1, 3
.Lrace_800F24F8:
/* A88B8 800F24F8 00431021 */  addu       $v0, $v0, $v1
/* A88BC 800F24FC 00021080 */  sll        $v0, $v0, 2
/* A88C0 800F2500 00461021 */  addu       $v0, $v0, $a2
/* A88C4 800F2504 90430020 */  lbu        $v1, 0x20($v0)
/* A88C8 800F2508 000310C0 */  sll        $v0, $v1, 3
/* A88CC 800F250C 00431021 */  addu       $v0, $v0, $v1
/* A88D0 800F2510 00021080 */  sll        $v0, $v0, 2
/* A88D4 800F2514 00C21021 */  addu       $v0, $a2, $v0
/* A88D8 800F2518 10460005 */  beq        $v0, $a2, .Lrace_800F2530
/* A88DC 800F251C 24A50001 */   addiu     $a1, $a1, 0x1
/* A88E0 800F2520 8C820004 */  lw         $v0, 0x4($a0)
/* A88E4 800F2524 00A2102B */  sltu       $v0, $a1, $v0
/* A88E8 800F2528 1440FFF3 */  bnez       $v0, .Lrace_800F24F8
/* A88EC 800F252C 000310C0 */   sll       $v0, $v1, 3
.Lrace_800F2530:
/* A88F0 800F2530 03E00008 */  jr         $ra
/* A88F4 800F2534 00A01021 */   addu      $v0, $a1, $zero

glabel func_race_800F2538
/* A88F8 800F2538 3C01800D */  lui        $at, %hi(D_race_800CCAF0)
/* A88FC 800F253C C422CAF0 */  lwc1       $f2, %lo(D_race_800CCAF0)($at)
/* A8900 800F2540 ACC00000 */  sw         $zero, 0x0($a2)
.Lrace_800F2544:
/* A8904 800F2544 000510C0 */  sll        $v0, $a1, 3
/* A8908 800F2548 00451021 */  addu       $v0, $v0, $a1
/* A890C 800F254C 8C830000 */  lw         $v1, 0x0($a0)
/* A8910 800F2550 00021080 */  sll        $v0, $v0, 2
/* A8914 800F2554 00433821 */  addu       $a3, $v0, $v1
/* A8918 800F2558 C4E0001C */  lwc1       $f0, 0x1C($a3)
/* A891C 800F255C 46020032 */  c.eq.s     $f0, $f2
/* A8920 800F2560 00000000 */  nop
/* A8924 800F2564 45000009 */  bc1f       .Lrace_800F258C
/* A8928 800F2568 00000000 */   nop
/* A892C 800F256C 8CC30000 */  lw         $v1, 0x0($a2)
/* A8930 800F2570 8C820004 */  lw         $v0, 0x4($a0)
/* A8934 800F2574 0062102B */  sltu       $v0, $v1, $v0
/* A8938 800F2578 10400004 */  beqz       $v0, .Lrace_800F258C
/* A893C 800F257C 24620001 */   addiu     $v0, $v1, 0x1
/* A8940 800F2580 90E50020 */  lbu        $a1, 0x20($a3)
/* A8944 800F2584 0803C951 */  j          .Lrace_800F2544
/* A8948 800F2588 ACC20000 */   sw        $v0, 0x0($a2)
.Lrace_800F258C:
/* A894C 800F258C 03E00008 */  jr         $ra
/* A8950 800F2590 00A01021 */   addu      $v0, $a1, $zero

glabel func_race_800F2594
/* A8954 800F2594 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* A8958 800F2598 AFB20038 */  sw         $s2, 0x38($sp)
/* A895C 800F259C 00809021 */  addu       $s2, $a0, $zero
/* A8960 800F25A0 AFB00030 */  sw         $s0, 0x30($sp)
/* A8964 800F25A4 00A08021 */  addu       $s0, $a1, $zero
/* A8968 800F25A8 AFB10034 */  sw         $s1, 0x34($sp)
/* A896C 800F25AC AFBF003C */  sw         $ra, 0x3C($sp)
/* A8970 800F25B0 F7B60048 */  sdc1       $f22, 0x48($sp)
/* A8974 800F25B4 F7B40040 */  sdc1       $f20, 0x40($sp)
/* A8978 800F25B8 8E420004 */  lw         $v0, 0x4($s2)
/* A897C 800F25BC 4486A000 */  mtc1       $a2, $f20
/* A8980 800F25C0 10400059 */  beqz       $v0, .Lrace_800F2728
/* A8984 800F25C4 00E08821 */   addu      $s1, $a3, $zero
/* A8988 800F25C8 16200002 */  bnez       $s1, .Lrace_800F25D4
/* A898C 800F25CC 00000000 */   nop
/* A8990 800F25D0 8E510000 */  lw         $s1, 0x0($s2)
.Lrace_800F25D4:
/* A8994 800F25D4 4480B000 */  mtc1       $zero, $f22
.Lrace_800F25D8:
/* A8998 800F25D8 4614B03C */  c.lt.s     $f22, $f20
/* A899C 800F25DC 00000000 */  nop
/* A89A0 800F25E0 45000051 */  bc1f       .Lrace_800F2728
/* A89A4 800F25E4 00000000 */   nop
/* A89A8 800F25E8 8E280010 */  lw         $t0, 0x10($s1)
/* A89AC 800F25EC 8E290014 */  lw         $t1, 0x14($s1)
/* A89B0 800F25F0 8E2A0018 */  lw         $t2, 0x18($s1)
/* A89B4 800F25F4 AFA80020 */  sw         $t0, 0x20($sp)
/* A89B8 800F25F8 AFA90024 */  sw         $t1, 0x24($sp)
/* A89BC 800F25FC AFAA0028 */  sw         $t2, 0x28($sp)
/* A89C0 800F2600 C6040000 */  lwc1       $f4, 0x0($s0)
/* A89C4 800F2604 C7A00020 */  lwc1       $f0, 0x20($sp)
/* A89C8 800F2608 46002101 */  sub.s      $f4, $f4, $f0
/* A89CC 800F260C 46042102 */  mul.s      $f4, $f4, $f4
/* A89D0 800F2610 C6060004 */  lwc1       $f6, 0x4($s0)
/* A89D4 800F2614 C7A00024 */  lwc1       $f0, 0x24($sp)
/* A89D8 800F2618 46003181 */  sub.s      $f6, $f6, $f0
/* A89DC 800F261C 46063182 */  mul.s      $f6, $f6, $f6
/* A89E0 800F2620 C7A20028 */  lwc1       $f2, 0x28($sp)
/* A89E4 800F2624 C6000008 */  lwc1       $f0, 0x8($s0)
/* A89E8 800F2628 46020001 */  sub.s      $f0, $f0, $f2
/* A89EC 800F262C 46000002 */  mul.s      $f0, $f0, $f0
/* A89F0 800F2630 46062100 */  add.s      $f4, $f4, $f6
/* A89F4 800F2634 46002300 */  add.s      $f12, $f4, $f0
/* A89F8 800F2638 46006204 */  sqrt.s     $f8, $f12
/* A89FC 800F263C 46084032 */  c.eq.s     $f8, $f8
/* A8A00 800F2640 00000000 */  nop
/* A8A04 800F2644 45010004 */  bc1t       .Lrace_800F2658
/* A8A08 800F2648 00000000 */   nop
/* A8A0C 800F264C 0C006BC8 */  jal        sqrt
/* A8A10 800F2650 00000000 */   nop
/* A8A14 800F2654 46000206 */  mov.s      $f8, $f0
.Lrace_800F2658:
/* A8A18 800F2658 4614403C */  c.lt.s     $f8, $f20
/* A8A1C 800F265C 00000000 */  nop
/* A8A20 800F2660 45000009 */  bc1f       .Lrace_800F2688
/* A8A24 800F2664 00000000 */   nop
/* A8A28 800F2668 8FA80020 */  lw         $t0, 0x20($sp)
/* A8A2C 800F266C 8FA90024 */  lw         $t1, 0x24($sp)
/* A8A30 800F2670 8FAA0028 */  lw         $t2, 0x28($sp)
/* A8A34 800F2674 AE080000 */  sw         $t0, 0x0($s0)
/* A8A38 800F2678 AE090004 */  sw         $t1, 0x4($s0)
/* A8A3C 800F267C AE0A0008 */  sw         $t2, 0x8($s0)
/* A8A40 800F2680 0803C9C3 */  j          .Lrace_800F270C
/* A8A44 800F2684 4608A501 */   sub.s     $f20, $f20, $f8
.Lrace_800F2688:
/* A8A48 800F2688 C7A40020 */  lwc1       $f4, 0x20($sp)
/* A8A4C 800F268C C6000000 */  lwc1       $f0, 0x0($s0)
/* A8A50 800F2690 46002101 */  sub.s      $f4, $f4, $f0
/* A8A54 800F2694 C7A20024 */  lwc1       $f2, 0x24($sp)
/* A8A58 800F2698 E7A40010 */  swc1       $f4, 0x10($sp)
/* A8A5C 800F269C C6000004 */  lwc1       $f0, 0x4($s0)
/* A8A60 800F26A0 46001081 */  sub.s      $f2, $f2, $f0
/* A8A64 800F26A4 C7A00028 */  lwc1       $f0, 0x28($sp)
/* A8A68 800F26A8 E7A20014 */  swc1       $f2, 0x14($sp)
/* A8A6C 800F26AC C6060008 */  lwc1       $f6, 0x8($s0)
/* A8A70 800F26B0 46082103 */  div.s      $f4, $f4, $f8
/* A8A74 800F26B4 46060001 */  sub.s      $f0, $f0, $f6
/* A8A78 800F26B8 46081083 */  div.s      $f2, $f2, $f8
/* A8A7C 800F26BC E7A40010 */  swc1       $f4, 0x10($sp)
/* A8A80 800F26C0 46142102 */  mul.s      $f4, $f4, $f20
/* A8A84 800F26C4 E7A20014 */  swc1       $f2, 0x14($sp)
/* A8A88 800F26C8 E7A00018 */  swc1       $f0, 0x18($sp)
/* A8A8C 800F26CC 46080003 */  div.s      $f0, $f0, $f8
/* A8A90 800F26D0 E7A00018 */  swc1       $f0, 0x18($sp)
/* A8A94 800F26D4 C6000000 */  lwc1       $f0, 0x0($s0)
/* A8A98 800F26D8 46040000 */  add.s      $f0, $f0, $f4
/* A8A9C 800F26DC E6000000 */  swc1       $f0, 0x0($s0)
/* A8AA0 800F26E0 C7A20014 */  lwc1       $f2, 0x14($sp)
/* A8AA4 800F26E4 46141082 */  mul.s      $f2, $f2, $f20
/* A8AA8 800F26E8 C6000004 */  lwc1       $f0, 0x4($s0)
/* A8AAC 800F26EC 46020000 */  add.s      $f0, $f0, $f2
/* A8AB0 800F26F0 E6000004 */  swc1       $f0, 0x4($s0)
/* A8AB4 800F26F4 C7A00018 */  lwc1       $f0, 0x18($sp)
/* A8AB8 800F26F8 46140002 */  mul.s      $f0, $f0, $f20
/* A8ABC 800F26FC C6020008 */  lwc1       $f2, 0x8($s0)
/* A8AC0 800F2700 46001080 */  add.s      $f2, $f2, $f0
/* A8AC4 800F2704 4600B506 */  mov.s      $f20, $f22
/* A8AC8 800F2708 E6020008 */  swc1       $f2, 0x8($s0)
.Lrace_800F270C:
/* A8ACC 800F270C 92220020 */  lbu        $v0, 0x20($s1)
/* A8AD0 800F2710 000218C0 */  sll        $v1, $v0, 3
/* A8AD4 800F2714 00621821 */  addu       $v1, $v1, $v0
/* A8AD8 800F2718 8E420000 */  lw         $v0, 0x0($s2)
/* A8ADC 800F271C 00031880 */  sll        $v1, $v1, 2
/* A8AE0 800F2720 0803C976 */  j          .Lrace_800F25D8
/* A8AE4 800F2724 00438821 */   addu      $s1, $v0, $v1
.Lrace_800F2728:
/* A8AE8 800F2728 8FBF003C */  lw         $ra, 0x3C($sp)
/* A8AEC 800F272C 8FB20038 */  lw         $s2, 0x38($sp)
/* A8AF0 800F2730 8FB10034 */  lw         $s1, 0x34($sp)
/* A8AF4 800F2734 8FB00030 */  lw         $s0, 0x30($sp)
/* A8AF8 800F2738 D7B60048 */  ldc1       $f22, 0x48($sp)
/* A8AFC 800F273C D7B40040 */  ldc1       $f20, 0x40($sp)
/* A8B00 800F2740 03E00008 */  jr         $ra
/* A8B04 800F2744 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800F2748
/* A8B08 800F2748 3C028013 */  lui        $v0, %hi(D_race_801321B0)
/* A8B0C 800F274C 03E00008 */  jr         $ra
/* A8B10 800F2750 AC4421B0 */   sw        $a0, %lo(D_race_801321B0)($v0)

glabel func_race_800F2754
/* A8B14 800F2754 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A8B18 800F2758 AFBF0010 */  sw         $ra, 0x10($sp)
/* A8B1C 800F275C 0C002513 */  jal        func_8000944C
/* A8B20 800F2760 00000000 */   nop
/* A8B24 800F2764 8FBF0010 */  lw         $ra, 0x10($sp)
/* A8B28 800F2768 03E00008 */  jr         $ra
/* A8B2C 800F276C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F2770
/* A8B30 800F2770 00801021 */  addu       $v0, $a0, $zero
/* A8B34 800F2774 AC400000 */  sw         $zero, 0x0($v0)
/* A8B38 800F2778 AC400004 */  sw         $zero, 0x4($v0)
/* A8B3C 800F277C AC400008 */  sw         $zero, 0x8($v0)
/* A8B40 800F2780 03E00008 */  jr         $ra
/* A8B44 800F2784 AC40000C */   sw        $zero, 0xC($v0)

glabel func_race_800F2788
/* A8B48 800F2788 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A8B4C 800F278C AFB00018 */  sw         $s0, 0x18($sp)
/* A8B50 800F2790 00808021 */  addu       $s0, $a0, $zero
/* A8B54 800F2794 27A40010 */  addiu      $a0, $sp, 0x10
/* A8B58 800F2798 AFBF0020 */  sw         $ra, 0x20($sp)
/* A8B5C 800F279C AFB1001C */  sw         $s1, 0x1C($sp)
/* A8B60 800F27A0 AE050000 */  sw         $a1, 0x0($s0)
/* A8B64 800F27A4 00C02821 */  addu       $a1, $a2, $zero
/* A8B68 800F27A8 00E08821 */  addu       $s1, $a3, $zero
/* A8B6C 800F27AC 0C000708 */  jal        func_80001C20
/* A8B70 800F27B0 24060008 */   addiu     $a2, $zero, 0x8
/* A8B74 800F27B4 8E020000 */  lw         $v0, 0x0($s0)
/* A8B78 800F27B8 27A50010 */  addiu      $a1, $sp, 0x10
/* A8B7C 800F27BC 8C4300D4 */  lw         $v1, 0xD4($v0)
/* A8B80 800F27C0 14600003 */  bnez       $v1, .Lrace_800F27D0
/* A8B84 800F27C4 244400D4 */   addiu     $a0, $v0, 0xD4
/* A8B88 800F27C8 0803C9F6 */  j          .Lrace_800F27D8
/* A8B8C 800F27CC 00001021 */   addu      $v0, $zero, $zero
.Lrace_800F27D0:
/* A8B90 800F27D0 0C016427 */  jal        func_8005909C
/* A8B94 800F27D4 00000000 */   nop
.Lrace_800F27D8:
/* A8B98 800F27D8 00002821 */  addu       $a1, $zero, $zero
/* A8B9C 800F27DC AE02000C */  sw         $v0, 0xC($s0)
/* A8BA0 800F27E0 AE110004 */  sw         $s1, 0x4($s0)
/* A8BA4 800F27E4 8FA20038 */  lw         $v0, 0x38($sp)
/* A8BA8 800F27E8 00A02021 */  addu       $a0, $a1, $zero
/* A8BAC 800F27EC AE020008 */  sw         $v0, 0x8($s0)
.Lrace_800F27F0:
/* A8BB0 800F27F0 8E030000 */  lw         $v1, 0x0($s0)
/* A8BB4 800F27F4 8C620060 */  lw         $v0, 0x60($v1)
/* A8BB8 800F27F8 00A2102B */  sltu       $v0, $a1, $v0
/* A8BBC 800F27FC 10400008 */  beqz       $v0, .Lrace_800F2820
/* A8BC0 800F2800 24A50001 */   addiu     $a1, $a1, 0x1
/* A8BC4 800F2804 8C6300A4 */  lw         $v1, 0xA4($v1)
/* A8BC8 800F2808 00641821 */  addu       $v1, $v1, $a0
/* A8BCC 800F280C 8C620060 */  lw         $v0, 0x60($v1)
/* A8BD0 800F2810 24840064 */  addiu      $a0, $a0, 0x64
/* A8BD4 800F2814 34420001 */  ori        $v0, $v0, 0x1
/* A8BD8 800F2818 0803C9FC */  j          .Lrace_800F27F0
/* A8BDC 800F281C AC620060 */   sw        $v0, 0x60($v1)
.Lrace_800F2820:
/* A8BE0 800F2820 8FBF0020 */  lw         $ra, 0x20($sp)
/* A8BE4 800F2824 8FB1001C */  lw         $s1, 0x1C($sp)
/* A8BE8 800F2828 8FB00018 */  lw         $s0, 0x18($sp)
/* A8BEC 800F282C 03E00008 */  jr         $ra
/* A8BF0 800F2830 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800F2834
/* A8BF4 800F2834 AC800000 */  sw         $zero, 0x0($a0)
/* A8BF8 800F2838 AC800004 */  sw         $zero, 0x4($a0)
/* A8BFC 800F283C AC800008 */  sw         $zero, 0x8($a0)
/* A8C00 800F2840 03E00008 */  jr         $ra
/* A8C04 800F2844 AC80000C */   sw        $zero, 0xC($a0)

glabel func_race_800F2848
/* A8C08 800F2848 27BDFF20 */  addiu      $sp, $sp, -0xE0
/* A8C0C 800F284C AFB200B0 */  sw         $s2, 0xB0($sp)
/* A8C10 800F2850 00A09021 */  addu       $s2, $a1, $zero
/* A8C14 800F2854 AFB700C4 */  sw         $s7, 0xC4($sp)
/* A8C18 800F2858 00C0B821 */  addu       $s7, $a2, $zero
/* A8C1C 800F285C AFBF00CC */  sw         $ra, 0xCC($sp)
/* A8C20 800F2860 AFBE00C8 */  sw         $fp, 0xC8($sp)
/* A8C24 800F2864 AFB600C0 */  sw         $s6, 0xC0($sp)
/* A8C28 800F2868 AFB500BC */  sw         $s5, 0xBC($sp)
/* A8C2C 800F286C AFB400B8 */  sw         $s4, 0xB8($sp)
/* A8C30 800F2870 AFB300B4 */  sw         $s3, 0xB4($sp)
/* A8C34 800F2874 AFB100AC */  sw         $s1, 0xAC($sp)
/* A8C38 800F2878 AFB000A8 */  sw         $s0, 0xA8($sp)
/* A8C3C 800F287C F7B600D8 */  sdc1       $f22, 0xD8($sp)
/* A8C40 800F2880 F7B400D0 */  sdc1       $f20, 0xD0($sp)
/* A8C44 800F2884 AFA400E0 */  sw         $a0, 0xE0($sp)
/* A8C48 800F2888 C6E20000 */  lwc1       $f2, 0x0($s7)
/* A8C4C 800F288C C6400000 */  lwc1       $f0, 0x0($s2)
/* A8C50 800F2890 46001081 */  sub.s      $f2, $f2, $f0
/* A8C54 800F2894 46021181 */  sub.s      $f6, $f2, $f2
/* A8C58 800F2898 8FB500F0 */  lw         $s5, 0xF0($sp)
/* A8C5C 800F289C 8FBE00F4 */  lw         $fp, 0xF4($sp)
/* A8C60 800F28A0 46063182 */  mul.s      $f6, $f6, $f6
/* A8C64 800F28A4 E7A20080 */  swc1       $f2, 0x80($sp)
/* A8C68 800F28A8 C6E00004 */  lwc1       $f0, 0x4($s7)
/* A8C6C 800F28AC C6420004 */  lwc1       $f2, 0x4($s2)
/* A8C70 800F28B0 46020001 */  sub.s      $f0, $f0, $f2
/* A8C74 800F28B4 46000101 */  sub.s      $f4, $f0, $f0
/* A8C78 800F28B8 46042102 */  mul.s      $f4, $f4, $f4
/* A8C7C 800F28BC E7A00084 */  swc1       $f0, 0x84($sp)
/* A8C80 800F28C0 C6E20008 */  lwc1       $f2, 0x8($s7)
/* A8C84 800F28C4 C6400008 */  lwc1       $f0, 0x8($s2)
/* A8C88 800F28C8 46001081 */  sub.s      $f2, $f2, $f0
/* A8C8C 800F28CC 46021001 */  sub.s      $f0, $f2, $f2
/* A8C90 800F28D0 46000002 */  mul.s      $f0, $f0, $f0
/* A8C94 800F28D4 00E08821 */  addu       $s1, $a3, $zero
/* A8C98 800F28D8 27A40080 */  addiu      $a0, $sp, 0x80
/* A8C9C 800F28DC 00802821 */  addu       $a1, $a0, $zero
/* A8CA0 800F28E0 0000A021 */  addu       $s4, $zero, $zero
/* A8CA4 800F28E4 46043180 */  add.s      $f6, $f6, $f4
/* A8CA8 800F28E8 02809821 */  addu       $s3, $s4, $zero
/* A8CAC 800F28EC E7A20088 */  swc1       $f2, 0x88($sp)
/* A8CB0 800F28F0 0C000F26 */  jal        func_80003C98
/* A8CB4 800F28F4 46003580 */   add.s     $f22, $f6, $f0
/* A8CB8 800F28F8 26360024 */  addiu      $s6, $s1, 0x24
.Lrace_800F28FC:
/* A8CBC 800F28FC 8FA800E0 */  lw         $t0, 0xE0($sp)
/* A8CC0 800F2900 8D030000 */  lw         $v1, 0x0($t0)
/* A8CC4 800F2904 8C620060 */  lw         $v0, 0x60($v1)
/* A8CC8 800F2908 0282102B */  sltu       $v0, $s4, $v0
/* A8CCC 800F290C 10400084 */  beqz       $v0, .Lrace_800F2B20
/* A8CD0 800F2910 00000000 */   nop
/* A8CD4 800F2914 8C6200A4 */  lw         $v0, 0xA4($v1)
/* A8CD8 800F2918 00538021 */  addu       $s0, $v0, $s3
/* A8CDC 800F291C 8E020060 */  lw         $v0, 0x60($s0)
/* A8CE0 800F2920 30420001 */  andi       $v0, $v0, 0x1
/* A8CE4 800F2924 1040007B */  beqz       $v0, .Lrace_800F2B14
/* A8CE8 800F2928 02002021 */   addu      $a0, $s0, $zero
/* A8CEC 800F292C 0C0165A4 */  jal        func_80059690
/* A8CF0 800F2930 27A50050 */   addiu     $a1, $sp, 0x50
/* A8CF4 800F2934 0C0165C5 */  jal        func_80059714
/* A8CF8 800F2938 02002021 */   addu      $a0, $s0, $zero
/* A8CFC 800F293C 46000002 */  mul.s      $f0, $f0, $f0
/* A8D00 800F2940 C7A40050 */  lwc1       $f4, 0x50($sp)
/* A8D04 800F2944 C6420000 */  lwc1       $f2, 0x0($s2)
/* A8D08 800F2948 46022101 */  sub.s      $f4, $f4, $f2
/* A8D0C 800F294C C7A80080 */  lwc1       $f8, 0x80($sp)
/* A8D10 800F2950 46044202 */  mul.s      $f8, $f8, $f4
/* A8D14 800F2954 E7A40090 */  swc1       $f4, 0x90($sp)
/* A8D18 800F2958 46042102 */  mul.s      $f4, $f4, $f4
/* A8D1C 800F295C C7A60054 */  lwc1       $f6, 0x54($sp)
/* A8D20 800F2960 C6420004 */  lwc1       $f2, 0x4($s2)
/* A8D24 800F2964 46023181 */  sub.s      $f6, $f6, $f2
/* A8D28 800F2968 C7AC0084 */  lwc1       $f12, 0x84($sp)
/* A8D2C 800F296C 46066302 */  mul.s      $f12, $f12, $f6
/* A8D30 800F2970 E7A60094 */  swc1       $f6, 0x94($sp)
/* A8D34 800F2974 46063182 */  mul.s      $f6, $f6, $f6
/* A8D38 800F2978 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* A8D3C 800F297C C6420008 */  lwc1       $f2, 0x8($s2)
/* A8D40 800F2980 46025281 */  sub.s      $f10, $f10, $f2
/* A8D44 800F2984 C7A20088 */  lwc1       $f2, 0x88($sp)
/* A8D48 800F2988 460A1082 */  mul.s      $f2, $f2, $f10
/* A8D4C 800F298C 00000000 */  nop
/* A8D50 800F2990 460A5382 */  mul.s      $f14, $f10, $f10
/* A8D54 800F2994 460C4200 */  add.s      $f8, $f8, $f12
/* A8D58 800F2998 46024200 */  add.s      $f8, $f8, $f2
/* A8D5C 800F299C 46084082 */  mul.s      $f2, $f8, $f8
/* A8D60 800F29A0 46062100 */  add.s      $f4, $f4, $f6
/* A8D64 800F29A4 460E2100 */  add.s      $f4, $f4, $f14
/* A8D68 800F29A8 46022101 */  sub.s      $f4, $f4, $f2
/* A8D6C 800F29AC E7AA0098 */  swc1       $f10, 0x98($sp)
/* A8D70 800F29B0 46040301 */  sub.s      $f12, $f0, $f4
/* A8D74 800F29B4 44801000 */  mtc1       $zero, $f2
/* A8D78 800F29B8 4602603E */  c.le.s     $f12, $f2
/* A8D7C 800F29BC 00000000 */  nop
/* A8D80 800F29C0 45010054 */  bc1t       .Lrace_800F2B14
/* A8D84 800F29C4 46004506 */   mov.s     $f20, $f8
/* A8D88 800F29C8 46006004 */  sqrt.s     $f0, $f12
/* A8D8C 800F29CC 46000032 */  c.eq.s     $f0, $f0
/* A8D90 800F29D0 00000000 */  nop
/* A8D94 800F29D4 45030004 */  bc1tl      .Lrace_800F29E8
/* A8D98 800F29D8 4600A001 */   sub.s     $f0, $f20, $f0
/* A8D9C 800F29DC 0C006BC8 */  jal        sqrt
/* A8DA0 800F29E0 00000000 */   nop
/* A8DA4 800F29E4 4600A001 */  sub.s      $f0, $f20, $f0
.Lrace_800F29E8:
/* A8DA8 800F29E8 46000002 */  mul.s      $f0, $f0, $f0
/* A8DAC 800F29EC 4600B03C */  c.lt.s     $f22, $f0
/* A8DB0 800F29F0 00000000 */  nop
/* A8DB4 800F29F4 45030048 */  bc1tl      .Lrace_800F2B18
/* A8DB8 800F29F8 26730064 */   addiu     $s3, $s3, 0x64
/* A8DBC 800F29FC 02402821 */  addu       $a1, $s2, $zero
/* A8DC0 800F2A00 8E020024 */  lw         $v0, 0x24($s0)
/* A8DC4 800F2A04 27A60020 */  addiu      $a2, $sp, 0x20
/* A8DC8 800F2A08 84440068 */  lh         $a0, 0x68($v0)
/* A8DCC 800F2A0C 8C42006C */  lw         $v0, 0x6C($v0)
/* A8DD0 800F2A10 0040F809 */  jalr       $v0
/* A8DD4 800F2A14 02042021 */   addu      $a0, $s0, $a0
/* A8DD8 800F2A18 02E02821 */  addu       $a1, $s7, $zero
/* A8DDC 800F2A1C 8E020024 */  lw         $v0, 0x24($s0)
/* A8DE0 800F2A20 27A60030 */  addiu      $a2, $sp, 0x30
/* A8DE4 800F2A24 84440068 */  lh         $a0, 0x68($v0)
/* A8DE8 800F2A28 8C42006C */  lw         $v0, 0x6C($v0)
/* A8DEC 800F2A2C 0040F809 */  jalr       $v0
/* A8DF0 800F2A30 02042021 */   addu      $a0, $s0, $a0
/* A8DF4 800F2A34 27A50020 */  addiu      $a1, $sp, 0x20
/* A8DF8 800F2A38 27A40040 */  addiu      $a0, $sp, 0x40
/* A8DFC 800F2A3C 8E02005C */  lw         $v0, 0x5C($s0)
/* A8E00 800F2A40 8E030058 */  lw         $v1, 0x58($s0)
/* A8E04 800F2A44 14400002 */  bnez       $v0, .Lrace_800F2A50
/* A8E08 800F2A48 27A700A0 */   addiu     $a3, $sp, 0xA0
/* A8E0C 800F2A4C 24620014 */  addiu      $v0, $v1, 0x14
.Lrace_800F2A50:
/* A8E10 800F2A50 AC620020 */  sw         $v0, 0x20($v1)
/* A8E14 800F2A54 27A60030 */  addiu      $a2, $sp, 0x30
/* A8E18 800F2A58 AFA40010 */  sw         $a0, 0x10($sp)
/* A8E1C 800F2A5C AFA70014 */  sw         $a3, 0x14($sp)
/* A8E20 800F2A60 AFA00018 */  sw         $zero, 0x18($sp)
/* A8E24 800F2A64 8E040058 */  lw         $a0, 0x58($s0)
/* A8E28 800F2A68 0C038990 */  jal        func_race_800E2640
/* A8E2C 800F2A6C 02203821 */   addu      $a3, $s1, $zero
/* A8E30 800F2A70 10400028 */  beqz       $v0, .Lrace_800F2B14
/* A8E34 800F2A74 27A50040 */   addiu     $a1, $sp, 0x40
/* A8E38 800F2A78 8E020024 */  lw         $v0, 0x24($s0)
/* A8E3C 800F2A7C 02A03021 */  addu       $a2, $s5, $zero
/* A8E40 800F2A80 84440060 */  lh         $a0, 0x60($v0)
/* A8E44 800F2A84 8C420064 */  lw         $v0, 0x64($v0)
/* A8E48 800F2A88 0040F809 */  jalr       $v0
/* A8E4C 800F2A8C 02042021 */   addu      $a0, $s0, $a0
/* A8E50 800F2A90 C6200024 */  lwc1       $f0, 0x24($s1)
/* A8E54 800F2A94 E7A00060 */  swc1       $f0, 0x60($sp)
/* A8E58 800F2A98 C6200028 */  lwc1       $f0, 0x28($s1)
/* A8E5C 800F2A9C E7A00064 */  swc1       $f0, 0x64($sp)
/* A8E60 800F2AA0 C620002C */  lwc1       $f0, 0x2C($s1)
/* A8E64 800F2AA4 27A50060 */  addiu      $a1, $sp, 0x60
/* A8E68 800F2AA8 E7A00068 */  swc1       $f0, 0x68($sp)
/* A8E6C 800F2AAC 8E020024 */  lw         $v0, 0x24($s0)
/* A8E70 800F2AB0 27A60070 */  addiu      $a2, $sp, 0x70
/* A8E74 800F2AB4 84440070 */  lh         $a0, 0x70($v0)
/* A8E78 800F2AB8 8C420074 */  lw         $v0, 0x74($v0)
/* A8E7C 800F2ABC 0040F809 */  jalr       $v0
/* A8E80 800F2AC0 02042021 */   addu      $a0, $s0, $a0
/* A8E84 800F2AC4 C7A00070 */  lwc1       $f0, 0x70($sp)
/* A8E88 800F2AC8 E6200024 */  swc1       $f0, 0x24($s1)
/* A8E8C 800F2ACC C7A00074 */  lwc1       $f0, 0x74($sp)
/* A8E90 800F2AD0 C6220024 */  lwc1       $f2, 0x24($s1)
/* A8E94 800F2AD4 E6200028 */  swc1       $f0, 0x28($s1)
/* A8E98 800F2AD8 C7A00078 */  lwc1       $f0, 0x78($sp)
/* A8E9C 800F2ADC E620002C */  swc1       $f0, 0x2C($s1)
/* A8EA0 800F2AE0 C6A00000 */  lwc1       $f0, 0x0($s5)
/* A8EA4 800F2AE4 46001082 */  mul.s      $f2, $f2, $f0
/* A8EA8 800F2AE8 C6C60004 */  lwc1       $f6, 0x4($s6)
/* A8EAC 800F2AEC C6A00004 */  lwc1       $f0, 0x4($s5)
/* A8EB0 800F2AF0 46003182 */  mul.s      $f6, $f6, $f0
/* A8EB4 800F2AF4 C6C40008 */  lwc1       $f4, 0x8($s6)
/* A8EB8 800F2AF8 C6A00008 */  lwc1       $f0, 0x8($s5)
/* A8EBC 800F2AFC 46002102 */  mul.s      $f4, $f4, $f0
/* A8EC0 800F2B00 46061080 */  add.s      $f2, $f2, $f6
/* A8EC4 800F2B04 46041080 */  add.s      $f2, $f2, $f4
/* A8EC8 800F2B08 46001087 */  neg.s      $f2, $f2
/* A8ECC 800F2B0C 0803CAD9 */  j          .Lrace_800F2B64
/* A8ED0 800F2B10 E6220030 */   swc1      $f2, 0x30($s1)
.Lrace_800F2B14:
/* A8ED4 800F2B14 26730064 */  addiu      $s3, $s3, 0x64
.Lrace_800F2B18:
/* A8ED8 800F2B18 0803CA3F */  j          .Lrace_800F28FC
/* A8EDC 800F2B1C 26940001 */   addiu     $s4, $s4, 0x1
.Lrace_800F2B20:
/* A8EE0 800F2B20 8D04000C */  lw         $a0, 0xC($t0)
/* A8EE4 800F2B24 8C82005C */  lw         $v0, 0x5C($a0)
/* A8EE8 800F2B28 8C830058 */  lw         $v1, 0x58($a0)
/* A8EEC 800F2B2C 14400002 */  bnez       $v0, .Lrace_800F2B38
/* A8EF0 800F2B30 27A700A0 */   addiu     $a3, $sp, 0xA0
/* A8EF4 800F2B34 24620014 */  addiu      $v0, $v1, 0x14
.Lrace_800F2B38:
/* A8EF8 800F2B38 AC620020 */  sw         $v0, 0x20($v1)
/* A8EFC 800F2B3C 02402821 */  addu       $a1, $s2, $zero
/* A8F00 800F2B40 02E03021 */  addu       $a2, $s7, $zero
/* A8F04 800F2B44 AFB50010 */  sw         $s5, 0x10($sp)
/* A8F08 800F2B48 AFA70014 */  sw         $a3, 0x14($sp)
/* A8F0C 800F2B4C AFA00018 */  sw         $zero, 0x18($sp)
/* A8F10 800F2B50 8C840058 */  lw         $a0, 0x58($a0)
/* A8F14 800F2B54 0C038990 */  jal        func_race_800E2640
/* A8F18 800F2B58 02203821 */   addu      $a3, $s1, $zero
/* A8F1C 800F2B5C 10400007 */  beqz       $v0, .Lrace_800F2B7C
/* A8F20 800F2B60 00001021 */   addu      $v0, $zero, $zero
.Lrace_800F2B64:
/* A8F24 800F2B64 53C00005 */  beql       $fp, $zero, .Lrace_800F2B7C
/* A8F28 800F2B68 24020001 */   addiu     $v0, $zero, 0x1
/* A8F2C 800F2B6C 8FA200A0 */  lw         $v0, 0xA0($sp)
/* A8F30 800F2B70 8C420010 */  lw         $v0, 0x10($v0)
/* A8F34 800F2B74 AFC20000 */  sw         $v0, 0x0($fp)
/* A8F38 800F2B78 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800F2B7C:
/* A8F3C 800F2B7C 8FBF00CC */  lw         $ra, 0xCC($sp)
/* A8F40 800F2B80 8FBE00C8 */  lw         $fp, 0xC8($sp)
/* A8F44 800F2B84 8FB700C4 */  lw         $s7, 0xC4($sp)
/* A8F48 800F2B88 8FB600C0 */  lw         $s6, 0xC0($sp)
/* A8F4C 800F2B8C 8FB500BC */  lw         $s5, 0xBC($sp)
/* A8F50 800F2B90 8FB400B8 */  lw         $s4, 0xB8($sp)
/* A8F54 800F2B94 8FB300B4 */  lw         $s3, 0xB4($sp)
/* A8F58 800F2B98 8FB200B0 */  lw         $s2, 0xB0($sp)
/* A8F5C 800F2B9C 8FB100AC */  lw         $s1, 0xAC($sp)
/* A8F60 800F2BA0 8FB000A8 */  lw         $s0, 0xA8($sp)
/* A8F64 800F2BA4 D7B600D8 */  ldc1       $f22, 0xD8($sp)
/* A8F68 800F2BA8 D7B400D0 */  ldc1       $f20, 0xD0($sp)
/* A8F6C 800F2BAC 03E00008 */  jr         $ra
/* A8F70 800F2BB0 27BD00E0 */   addiu     $sp, $sp, 0xE0

glabel func_race_800F2BB4
/* A8F74 800F2BB4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A8F78 800F2BB8 AFB10024 */  sw         $s1, 0x24($sp)
/* A8F7C 800F2BBC 00808821 */  addu       $s1, $a0, $zero
/* A8F80 800F2BC0 AFB00020 */  sw         $s0, 0x20($sp)
/* A8F84 800F2BC4 8FB00040 */  lw         $s0, 0x40($sp)
/* A8F88 800F2BC8 27A20018 */  addiu      $v0, $sp, 0x18
/* A8F8C 800F2BCC AFBF0028 */  sw         $ra, 0x28($sp)
/* A8F90 800F2BD0 AFA20014 */  sw         $v0, 0x14($sp)
/* A8F94 800F2BD4 0C03CA12 */  jal        func_race_800F2848
/* A8F98 800F2BD8 AFB00010 */   sw        $s0, 0x10($sp)
/* A8F9C 800F2BDC 10400018 */  beqz       $v0, .Lrace_800F2C40
/* A8FA0 800F2BE0 00001021 */   addu      $v0, $zero, $zero
/* A8FA4 800F2BE4 8FA30018 */  lw         $v1, 0x18($sp)
/* A8FA8 800F2BE8 10600015 */  beqz       $v1, .Lrace_800F2C40
/* A8FAC 800F2BEC 24020001 */   addiu     $v0, $zero, 0x1
/* A8FB0 800F2BF0 8C620008 */  lw         $v0, 0x8($v1)
/* A8FB4 800F2BF4 30420010 */  andi       $v0, $v0, 0x10
/* A8FB8 800F2BF8 1040000B */  beqz       $v0, .Lrace_800F2C28
/* A8FBC 800F2BFC 00000000 */   nop
/* A8FC0 800F2C00 8E240004 */  lw         $a0, 0x4($s1)
/* A8FC4 800F2C04 8C650018 */  lw         $a1, 0x18($v1)
/* A8FC8 800F2C08 0C036B0B */  jal        func_race_800DAC2C
/* A8FCC 800F2C0C 02003021 */   addu      $a2, $s0, $zero
/* A8FD0 800F2C10 8FA20018 */  lw         $v0, 0x18($sp)
/* A8FD4 800F2C14 8E240004 */  lw         $a0, 0x4($s1)
/* A8FD8 800F2C18 8C450018 */  lw         $a1, 0x18($v0)
/* A8FDC 800F2C1C 0C036BE1 */  jal        func_race_800DAF84
/* A8FE0 800F2C20 02003021 */   addu      $a2, $s0, $zero
/* A8FE4 800F2C24 8FA30018 */  lw         $v1, 0x18($sp)
.Lrace_800F2C28:
/* A8FE8 800F2C28 8C630008 */  lw         $v1, 0x8($v1)
/* A8FEC 800F2C2C 3C040002 */  lui        $a0, (0x20000 >> 16)
/* A8FF0 800F2C30 00641824 */  and        $v1, $v1, $a0
/* A8FF4 800F2C34 14600002 */  bnez       $v1, .Lrace_800F2C40
/* A8FF8 800F2C38 00001021 */   addu      $v0, $zero, $zero
/* A8FFC 800F2C3C 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800F2C40:
/* A9000 800F2C40 8FBF0028 */  lw         $ra, 0x28($sp)
/* A9004 800F2C44 8FB10024 */  lw         $s1, 0x24($sp)
/* A9008 800F2C48 8FB00020 */  lw         $s0, 0x20($sp)
/* A900C 800F2C4C 03E00008 */  jr         $ra
/* A9010 800F2C50 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800F2C54
/* A9014 800F2C54 00051040 */  sll        $v0, $a1, 1
/* A9018 800F2C58 00451021 */  addu       $v0, $v0, $a1
/* A901C 800F2C5C 000210C0 */  sll        $v0, $v0, 3
/* A9020 800F2C60 8C830000 */  lw         $v1, 0x0($a0)
/* A9024 800F2C64 00451021 */  addu       $v0, $v0, $a1
/* A9028 800F2C68 8C6300A4 */  lw         $v1, 0xA4($v1)
/* A902C 800F2C6C 00021080 */  sll        $v0, $v0, 2
/* A9030 800F2C70 00621821 */  addu       $v1, $v1, $v0
/* A9034 800F2C74 8C620060 */  lw         $v0, 0x60($v1)
/* A9038 800F2C78 34420001 */  ori        $v0, $v0, 0x1
/* A903C 800F2C7C 03E00008 */  jr         $ra
/* A9040 800F2C80 AC620060 */   sw        $v0, 0x60($v1)

glabel func_race_800F2C84
/* A9044 800F2C84 00051040 */  sll        $v0, $a1, 1
/* A9048 800F2C88 00451021 */  addu       $v0, $v0, $a1
/* A904C 800F2C8C 000210C0 */  sll        $v0, $v0, 3
/* A9050 800F2C90 8C830000 */  lw         $v1, 0x0($a0)
/* A9054 800F2C94 00451021 */  addu       $v0, $v0, $a1
/* A9058 800F2C98 8C6400A4 */  lw         $a0, 0xA4($v1)
/* A905C 800F2C9C 00021080 */  sll        $v0, $v0, 2
/* A9060 800F2CA0 00822021 */  addu       $a0, $a0, $v0
/* A9064 800F2CA4 8C820060 */  lw         $v0, 0x60($a0)
/* A9068 800F2CA8 2403FFFE */  addiu      $v1, $zero, -0x2
/* A906C 800F2CAC 00431024 */  and        $v0, $v0, $v1
/* A9070 800F2CB0 03E00008 */  jr         $ra
/* A9074 800F2CB4 AC820060 */   sw        $v0, 0x60($a0)
