.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800FBDC0
/* B2180 800FBDC0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B2184 800FBDC4 AFB10034 */  sw         $s1, 0x34($sp)
/* B2188 800FBDC8 00808821 */  addu       $s1, $a0, $zero
/* B218C 800FBDCC AFB20038 */  sw         $s2, 0x38($sp)
/* B2190 800FBDD0 00A09021 */  addu       $s2, $a1, $zero
/* B2194 800FBDD4 AFB00030 */  sw         $s0, 0x30($sp)
/* B2198 800FBDD8 00C08021 */  addu       $s0, $a2, $zero
/* B219C 800FBDDC AFB3003C */  sw         $s3, 0x3C($sp)
/* B21A0 800FBDE0 26130018 */  addiu      $s3, $s0, 0x18
/* B21A4 800FBDE4 AFBF0040 */  sw         $ra, 0x40($sp)
/* B21A8 800FBDE8 0C000F26 */  jal        func_80003C98
/* B21AC 800FBDEC 02602821 */   addu      $a1, $s3, $zero
/* B21B0 800FBDF0 02202021 */  addu       $a0, $s1, $zero
/* B21B4 800FBDF4 27A50010 */  addiu      $a1, $sp, 0x10
/* B21B8 800FBDF8 0C000F26 */  jal        func_80003C98
/* B21BC 800FBDFC 2611000C */   addiu     $s1, $s0, 0xC
/* B21C0 800FBE00 C6400000 */  lwc1       $f0, 0x0($s2)
/* B21C4 800FBE04 C7AA0010 */  lwc1       $f10, 0x10($sp)
/* B21C8 800FBE08 460A0002 */  mul.s      $f0, $f0, $f10
/* B21CC 800FBE0C C6440004 */  lwc1       $f4, 0x4($s2)
/* B21D0 800FBE10 C7A80014 */  lwc1       $f8, 0x14($sp)
/* B21D4 800FBE14 46082102 */  mul.s      $f4, $f4, $f8
/* B21D8 800FBE18 C6420008 */  lwc1       $f2, 0x8($s2)
/* B21DC 800FBE1C C7A60018 */  lwc1       $f6, 0x18($sp)
/* B21E0 800FBE20 46061082 */  mul.s      $f2, $f2, $f6
/* B21E4 800FBE24 46040000 */  add.s      $f0, $f0, $f4
/* B21E8 800FBE28 46020000 */  add.s      $f0, $f0, $f2
/* B21EC 800FBE2C 46005282 */  mul.s      $f10, $f10, $f0
/* B21F0 800FBE30 00000000 */  nop
/* B21F4 800FBE34 46004202 */  mul.s      $f8, $f8, $f0
/* B21F8 800FBE38 00000000 */  nop
/* B21FC 800FBE3C 46003182 */  mul.s      $f6, $f6, $f0
/* B2200 800FBE40 E7AA0020 */  swc1       $f10, 0x20($sp)
/* B2204 800FBE44 E7A80024 */  swc1       $f8, 0x24($sp)
/* B2208 800FBE48 E7A60028 */  swc1       $f6, 0x28($sp)
/* B220C 800FBE4C C6400000 */  lwc1       $f0, 0x0($s2)
/* B2210 800FBE50 460A0001 */  sub.s      $f0, $f0, $f10
/* B2214 800FBE54 E600000C */  swc1       $f0, 0xC($s0)
/* B2218 800FBE58 C6400004 */  lwc1       $f0, 0x4($s2)
/* B221C 800FBE5C C7A20024 */  lwc1       $f2, 0x24($sp)
/* B2220 800FBE60 46020001 */  sub.s      $f0, $f0, $f2
/* B2224 800FBE64 E6200004 */  swc1       $f0, 0x4($s1)
/* B2228 800FBE68 C6420008 */  lwc1       $f2, 0x8($s2)
/* B222C 800FBE6C C7A00028 */  lwc1       $f0, 0x28($sp)
/* B2230 800FBE70 46001081 */  sub.s      $f2, $f2, $f0
/* B2234 800FBE74 02202021 */  addu       $a0, $s1, $zero
/* B2238 800FBE78 02202821 */  addu       $a1, $s1, $zero
/* B223C 800FBE7C 0C000F26 */  jal        func_80003C98
/* B2240 800FBE80 E6220008 */   swc1      $f2, 0x8($s1)
/* B2244 800FBE84 C6240004 */  lwc1       $f4, 0x4($s1)
/* B2248 800FBE88 C6600008 */  lwc1       $f0, 0x8($s3)
/* B224C 800FBE8C 46002102 */  mul.s      $f4, $f4, $f0
/* B2250 800FBE90 C6620004 */  lwc1       $f2, 0x4($s3)
/* B2254 800FBE94 C6200008 */  lwc1       $f0, 0x8($s1)
/* B2258 800FBE98 46020002 */  mul.s      $f0, $f0, $f2
/* B225C 800FBE9C 46002101 */  sub.s      $f4, $f4, $f0
/* B2260 800FBEA0 C6000018 */  lwc1       $f0, 0x18($s0)
/* B2264 800FBEA4 E6040000 */  swc1       $f4, 0x0($s0)
/* B2268 800FBEA8 C6240008 */  lwc1       $f4, 0x8($s1)
/* B226C 800FBEAC 46002102 */  mul.s      $f4, $f4, $f0
/* B2270 800FBEB0 C6620008 */  lwc1       $f2, 0x8($s3)
/* B2274 800FBEB4 C600000C */  lwc1       $f0, 0xC($s0)
/* B2278 800FBEB8 46020002 */  mul.s      $f0, $f0, $f2
/* B227C 800FBEBC 46002101 */  sub.s      $f4, $f4, $f0
/* B2280 800FBEC0 E6040004 */  swc1       $f4, 0x4($s0)
/* B2284 800FBEC4 C604000C */  lwc1       $f4, 0xC($s0)
/* B2288 800FBEC8 C6600004 */  lwc1       $f0, 0x4($s3)
/* B228C 800FBECC 46002102 */  mul.s      $f4, $f4, $f0
/* B2290 800FBED0 C6020018 */  lwc1       $f2, 0x18($s0)
/* B2294 800FBED4 C6200004 */  lwc1       $f0, 0x4($s1)
/* B2298 800FBED8 46020002 */  mul.s      $f0, $f0, $f2
/* B229C 800FBEDC 46002101 */  sub.s      $f4, $f4, $f0
/* B22A0 800FBEE0 E6040008 */  swc1       $f4, 0x8($s0)
/* B22A4 800FBEE4 8FBF0040 */  lw         $ra, 0x40($sp)
/* B22A8 800FBEE8 8FB3003C */  lw         $s3, 0x3C($sp)
/* B22AC 800FBEEC 8FB20038 */  lw         $s2, 0x38($sp)
/* B22B0 800FBEF0 8FB10034 */  lw         $s1, 0x34($sp)
/* B22B4 800FBEF4 8FB00030 */  lw         $s0, 0x30($sp)
/* B22B8 800FBEF8 03E00008 */  jr         $ra
/* B22BC 800FBEFC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_800FBF00
/* B22C0 800FBF00 44852000 */  mtc1       $a1, $f4
/* B22C4 800FBF04 3C01800D */  lui        $at, %hi(D_race_800CD020)
/* B22C8 800FBF08 C422D020 */  lwc1       $f2, %lo(D_race_800CD020)($at)
/* B22CC 800FBF0C 46022082 */  mul.s      $f2, $f4, $f2
/* B22D0 800FBF10 3C01800D */  lui        $at, %hi(D_race_800CD024)
/* B22D4 800FBF14 C420D024 */  lwc1       $f0, %lo(D_race_800CD024)($at)
/* B22D8 800FBF18 46040001 */  sub.s      $f0, $f0, $f4
/* B22DC 800FBF1C 46020003 */  div.s      $f0, $f0, $f2
/* B22E0 800FBF20 03E00008 */  jr         $ra
/* B22E4 800FBF24 E48000F8 */   swc1      $f0, 0xF8($a0)

glabel func_race_800FBF28
/* B22E8 800FBF28 44852000 */  mtc1       $a1, $f4
/* B22EC 800FBF2C 3C01800D */  lui        $at, %hi(D_race_800CD028)
/* B22F0 800FBF30 C422D028 */  lwc1       $f2, %lo(D_race_800CD028)($at)
/* B22F4 800FBF34 46022082 */  mul.s      $f2, $f4, $f2
/* B22F8 800FBF38 3C01800D */  lui        $at, %hi(D_race_800CD02C)
/* B22FC 800FBF3C C420D02C */  lwc1       $f0, %lo(D_race_800CD02C)($at)
/* B2300 800FBF40 46040001 */  sub.s      $f0, $f0, $f4
/* B2304 800FBF44 46020003 */  div.s      $f0, $f0, $f2
/* B2308 800FBF48 03E00008 */  jr         $ra
/* B230C 800FBF4C E48000FC */   swc1      $f0, 0xFC($a0)

glabel func_race_800FBF50
/* B2310 800FBF50 3C01800D */  lui        $at, %hi(D_race_800CD030)
/* B2314 800FBF54 C420D030 */  lwc1       $f0, %lo(D_race_800CD030)($at)
/* B2318 800FBF58 44851000 */  mtc1       $a1, $f2
/* B231C 800FBF5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B2320 800FBF60 F7B40018 */  sdc1       $f20, 0x18($sp)
/* B2324 800FBF64 46001502 */  mul.s      $f20, $f2, $f0
/* B2328 800FBF68 AFB00010 */  sw         $s0, 0x10($sp)
/* B232C 800FBF6C 00808021 */  addu       $s0, $a0, $zero
/* B2330 800FBF70 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2334 800FBF74 0C006D60 */  jal        sinf
/* B2338 800FBF78 4600A306 */   mov.s     $f12, $f20
/* B233C 800FBF7C 4600A306 */  mov.s      $f12, $f20
/* B2340 800FBF80 0C006BCC */  jal        cosf
/* B2344 800FBF84 E6000110 */   swc1      $f0, 0x110($s0)
/* B2348 800FBF88 E6000114 */  swc1       $f0, 0x114($s0)
/* B234C 800FBF8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2350 800FBF90 8FB00010 */  lw         $s0, 0x10($sp)
/* B2354 800FBF94 D7B40018 */  ldc1       $f20, 0x18($sp)
/* B2358 800FBF98 03E00008 */  jr         $ra
/* B235C 800FBF9C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800FBFA0
/* B2360 800FBFA0 3C01800D */  lui        $at, %hi(D_race_800CD034)
/* B2364 800FBFA4 C42CD034 */  lwc1       $f12, %lo(D_race_800CD034)($at)
/* B2368 800FBFA8 44851000 */  mtc1       $a1, $f2
/* B236C 800FBFAC 460C1302 */  mul.s      $f12, $f2, $f12
/* B2370 800FBFB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B2374 800FBFB4 AFB00010 */  sw         $s0, 0x10($sp)
/* B2378 800FBFB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* B237C 800FBFBC 0C006D60 */  jal        sinf
/* B2380 800FBFC0 00808021 */   addu      $s0, $a0, $zero
/* B2384 800FBFC4 E600010C */  swc1       $f0, 0x10C($s0)
/* B2388 800FBFC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B238C 800FBFCC 8FB00010 */  lw         $s0, 0x10($sp)
/* B2390 800FBFD0 03E00008 */  jr         $ra
/* B2394 800FBFD4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FBFD8
/* B2398 800FBFD8 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* B239C 800FBFDC AFB20058 */  sw         $s2, 0x58($sp)
/* B23A0 800FBFE0 00809021 */  addu       $s2, $a0, $zero
/* B23A4 800FBFE4 AFBF005C */  sw         $ra, 0x5C($sp)
/* B23A8 800FBFE8 AFB10054 */  sw         $s1, 0x54($sp)
/* B23AC 800FBFEC AFB00050 */  sw         $s0, 0x50($sp)
/* B23B0 800FBFF0 8E42014C */  lw         $v0, 0x14C($s2)
/* B23B4 800FBFF4 10400057 */  beqz       $v0, .Lrace_800FC154
/* B23B8 800FBFF8 00000000 */   nop
/* B23BC 800FBFFC 8E4200D4 */  lw         $v0, 0xD4($s2)
/* B23C0 800FC000 10400054 */  beqz       $v0, .Lrace_800FC154
/* B23C4 800FC004 27A50020 */   addiu     $a1, $sp, 0x20
/* B23C8 800FC008 8C470400 */  lw         $a3, 0x400($v0)
/* B23CC 800FC00C 8C480404 */  lw         $t0, 0x404($v0)
/* B23D0 800FC010 8C490408 */  lw         $t1, 0x408($v0)
/* B23D4 800FC014 AFA70010 */  sw         $a3, 0x10($sp)
/* B23D8 800FC018 AFA80014 */  sw         $t0, 0x14($sp)
/* B23DC 800FC01C AFA90018 */  sw         $t1, 0x18($sp)
/* B23E0 800FC020 8E4200D4 */  lw         $v0, 0xD4($s2)
/* B23E4 800FC024 8C42005C */  lw         $v0, 0x5C($v0)
/* B23E8 800FC028 8C430024 */  lw         $v1, 0x24($v0)
/* B23EC 800FC02C 84640088 */  lh         $a0, 0x88($v1)
/* B23F0 800FC030 00442021 */  addu       $a0, $v0, $a0
/* B23F4 800FC034 8C62008C */  lw         $v0, 0x8C($v1)
/* B23F8 800FC038 0040F809 */  jalr       $v0
/* B23FC 800FC03C 27A60030 */   addiu     $a2, $sp, 0x30
/* B2400 800FC040 8E4200D4 */  lw         $v0, 0xD4($s2)
/* B2404 800FC044 8C43005C */  lw         $v1, 0x5C($v0)
/* B2408 800FC048 8C620024 */  lw         $v0, 0x24($v1)
/* B240C 800FC04C 27A50040 */  addiu      $a1, $sp, 0x40
/* B2410 800FC050 84440010 */  lh         $a0, 0x10($v0)
/* B2414 800FC054 8C420014 */  lw         $v0, 0x14($v0)
/* B2418 800FC058 0040F809 */  jalr       $v0
/* B241C 800FC05C 00642021 */   addu      $a0, $v1, $a0
/* B2420 800FC060 8E42014C */  lw         $v0, 0x14C($s2)
/* B2424 800FC064 C7A00010 */  lwc1       $f0, 0x10($sp)
/* B2428 800FC068 27A30010 */  addiu      $v1, $sp, 0x10
/* B242C 800FC06C E440000C */  swc1       $f0, 0xC($v0)
/* B2430 800FC070 C4600004 */  lwc1       $f0, 0x4($v1)
/* B2434 800FC074 E4400010 */  swc1       $f0, 0x10($v0)
/* B2438 800FC078 C4600008 */  lwc1       $f0, 0x8($v1)
/* B243C 800FC07C 24110001 */  addiu      $s1, $zero, 0x1
/* B2440 800FC080 AC510044 */  sw         $s1, 0x44($v0)
/* B2444 800FC084 E4400014 */  swc1       $f0, 0x14($v0)
/* B2448 800FC088 8E50014C */  lw         $s0, 0x14C($s2)
/* B244C 800FC08C 26020018 */  addiu      $v0, $s0, 0x18
/* B2450 800FC090 26030024 */  addiu      $v1, $s0, 0x24
/* B2454 800FC094 8FA70020 */  lw         $a3, 0x20($sp)
/* B2458 800FC098 8FA80024 */  lw         $t0, 0x24($sp)
/* B245C 800FC09C 8FA90028 */  lw         $t1, 0x28($sp)
/* B2460 800FC0A0 AE070018 */  sw         $a3, 0x18($s0)
/* B2464 800FC0A4 AE08001C */  sw         $t0, 0x1C($s0)
/* B2468 800FC0A8 AE090020 */  sw         $t1, 0x20($s0)
/* B246C 800FC0AC 8FA70030 */  lw         $a3, 0x30($sp)
/* B2470 800FC0B0 8FA80034 */  lw         $t0, 0x34($sp)
/* B2474 800FC0B4 8FA90038 */  lw         $t1, 0x38($sp)
/* B2478 800FC0B8 AE070024 */  sw         $a3, 0x24($s0)
/* B247C 800FC0BC AE080028 */  sw         $t0, 0x28($s0)
/* B2480 800FC0C0 AE09002C */  sw         $t1, 0x2C($s0)
/* B2484 800FC0C4 C4640004 */  lwc1       $f4, 0x4($v1)
/* B2488 800FC0C8 C4400008 */  lwc1       $f0, 0x8($v0)
/* B248C 800FC0CC 46002102 */  mul.s      $f4, $f4, $f0
/* B2490 800FC0D0 C4420004 */  lwc1       $f2, 0x4($v0)
/* B2494 800FC0D4 C4600008 */  lwc1       $f0, 0x8($v1)
/* B2498 800FC0D8 46020002 */  mul.s      $f0, $f0, $f2
/* B249C 800FC0DC 46002101 */  sub.s      $f4, $f4, $f0
/* B24A0 800FC0E0 C6000018 */  lwc1       $f0, 0x18($s0)
/* B24A4 800FC0E4 E6040030 */  swc1       $f4, 0x30($s0)
/* B24A8 800FC0E8 C4640008 */  lwc1       $f4, 0x8($v1)
/* B24AC 800FC0EC 46002102 */  mul.s      $f4, $f4, $f0
/* B24B0 800FC0F0 C4420008 */  lwc1       $f2, 0x8($v0)
/* B24B4 800FC0F4 C6000024 */  lwc1       $f0, 0x24($s0)
/* B24B8 800FC0F8 46020002 */  mul.s      $f0, $f0, $f2
/* B24BC 800FC0FC 46002101 */  sub.s      $f4, $f4, $f0
/* B24C0 800FC100 26040030 */  addiu      $a0, $s0, 0x30
/* B24C4 800FC104 E4840004 */  swc1       $f4, 0x4($a0)
/* B24C8 800FC108 C6040024 */  lwc1       $f4, 0x24($s0)
/* B24CC 800FC10C C4400004 */  lwc1       $f0, 0x4($v0)
/* B24D0 800FC110 46002102 */  mul.s      $f4, $f4, $f0
/* B24D4 800FC114 C6020018 */  lwc1       $f2, 0x18($s0)
/* B24D8 800FC118 C4600004 */  lwc1       $f0, 0x4($v1)
/* B24DC 800FC11C 46020002 */  mul.s      $f0, $f0, $f2
/* B24E0 800FC120 46002101 */  sub.s      $f4, $f4, $f0
/* B24E4 800FC124 00802821 */  addu       $a1, $a0, $zero
/* B24E8 800FC128 0C000F26 */  jal        func_80003C98
/* B24EC 800FC12C E4840008 */   swc1      $f4, 0x8($a0)
/* B24F0 800FC130 AE110044 */  sw         $s1, 0x44($s0)
/* B24F4 800FC134 8E42014C */  lw         $v0, 0x14C($s2)
/* B24F8 800FC138 8FA70040 */  lw         $a3, 0x40($sp)
/* B24FC 800FC13C 8FA80044 */  lw         $t0, 0x44($sp)
/* B2500 800FC140 8FA90048 */  lw         $t1, 0x48($sp)
/* B2504 800FC144 AC470000 */  sw         $a3, 0x0($v0)
/* B2508 800FC148 AC480004 */  sw         $t0, 0x4($v0)
/* B250C 800FC14C AC490008 */  sw         $t1, 0x8($v0)
/* B2510 800FC150 AC510044 */  sw         $s1, 0x44($v0)
.Lrace_800FC154:
/* B2514 800FC154 8FBF005C */  lw         $ra, 0x5C($sp)
/* B2518 800FC158 8FB20058 */  lw         $s2, 0x58($sp)
/* B251C 800FC15C 8FB10054 */  lw         $s1, 0x54($sp)
/* B2520 800FC160 8FB00050 */  lw         $s0, 0x50($sp)
/* B2524 800FC164 03E00008 */  jr         $ra
/* B2528 800FC168 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_race_800FC16C
/* B252C 800FC16C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B2530 800FC170 AFB10044 */  sw         $s1, 0x44($sp)
/* B2534 800FC174 00808821 */  addu       $s1, $a0, $zero
/* B2538 800FC178 AFBF0048 */  sw         $ra, 0x48($sp)
/* B253C 800FC17C AFB00040 */  sw         $s0, 0x40($sp)
/* B2540 800FC180 8E220148 */  lw         $v0, 0x148($s1)
/* B2544 800FC184 1040006F */  beqz       $v0, .Lrace_800FC344
/* B2548 800FC188 24020001 */   addiu     $v0, $zero, 0x1
/* B254C 800FC18C 92230002 */  lbu        $v1, 0x2($s1)
/* B2550 800FC190 14620031 */  bne        $v1, $v0, .Lrace_800FC258
/* B2554 800FC194 24020002 */   addiu     $v0, $zero, 0x2
/* B2558 800FC198 92220004 */  lbu        $v0, 0x4($s1)
/* B255C 800FC19C 1040002D */  beqz       $v0, .Lrace_800FC254
/* B2560 800FC1A0 27A50030 */   addiu     $a1, $sp, 0x30
/* B2564 800FC1A4 C62000E4 */  lwc1       $f0, 0xE4($s1)
/* B2568 800FC1A8 46000000 */  add.s      $f0, $f0, $f0
/* B256C 800FC1AC C622006C */  lwc1       $f2, 0x6C($s1)
/* B2570 800FC1B0 46020001 */  sub.s      $f0, $f0, $f2
/* B2574 800FC1B4 E7A00030 */  swc1       $f0, 0x30($sp)
/* B2578 800FC1B8 C62000E8 */  lwc1       $f0, 0xE8($s1)
/* B257C 800FC1BC 46000000 */  add.s      $f0, $f0, $f0
/* B2580 800FC1C0 C6220070 */  lwc1       $f2, 0x70($s1)
/* B2584 800FC1C4 46020001 */  sub.s      $f0, $f0, $f2
/* B2588 800FC1C8 E7A00034 */  swc1       $f0, 0x34($sp)
/* B258C 800FC1CC C6200074 */  lwc1       $f0, 0x74($s1)
/* B2590 800FC1D0 E7A00038 */  swc1       $f0, 0x38($sp)
/* B2594 800FC1D4 8E300148 */  lw         $s0, 0x148($s1)
/* B2598 800FC1D8 8E030000 */  lw         $v1, 0x0($s0)
/* B259C 800FC1DC 8C62000C */  lw         $v0, 0xC($v1)
/* B25A0 800FC1E0 84440090 */  lh         $a0, 0x90($v0)
/* B25A4 800FC1E4 8C420094 */  lw         $v0, 0x94($v0)
/* B25A8 800FC1E8 0040F809 */  jalr       $v0
/* B25AC 800FC1EC 00642021 */   addu      $a0, $v1, $a0
/* B25B0 800FC1F0 8E02002C */  lw         $v0, 0x2C($s0)
/* B25B4 800FC1F4 34420001 */  ori        $v0, $v0, 0x1
/* B25B8 800FC1F8 AE02002C */  sw         $v0, 0x2C($s0)
/* B25BC 800FC1FC C6200060 */  lwc1       $f0, 0x60($s1)
/* B25C0 800FC200 46000007 */  neg.s      $f0, $f0
/* B25C4 800FC204 E7A00010 */  swc1       $f0, 0x10($sp)
/* B25C8 800FC208 C6200064 */  lwc1       $f0, 0x64($s1)
/* B25CC 800FC20C 46000007 */  neg.s      $f0, $f0
/* B25D0 800FC210 E7A00014 */  swc1       $f0, 0x14($sp)
/* B25D4 800FC214 C6200068 */  lwc1       $f0, 0x68($s1)
/* B25D8 800FC218 E7A00018 */  swc1       $f0, 0x18($sp)
/* B25DC 800FC21C C6200054 */  lwc1       $f0, 0x54($s1)
/* B25E0 800FC220 46000007 */  neg.s      $f0, $f0
/* B25E4 800FC224 E7A00020 */  swc1       $f0, 0x20($sp)
/* B25E8 800FC228 C6200058 */  lwc1       $f0, 0x58($s1)
/* B25EC 800FC22C 46000007 */  neg.s      $f0, $f0
/* B25F0 800FC230 E7A00024 */  swc1       $f0, 0x24($sp)
/* B25F4 800FC234 C620005C */  lwc1       $f0, 0x5C($s1)
/* B25F8 800FC238 E7A00028 */  swc1       $f0, 0x28($sp)
/* B25FC 800FC23C 8E300148 */  lw         $s0, 0x148($s1)
/* B2600 800FC240 8E030000 */  lw         $v1, 0x0($s0)
/* B2604 800FC244 27A50010 */  addiu      $a1, $sp, 0x10
/* B2608 800FC248 8C62000C */  lw         $v0, 0xC($v1)
/* B260C 800FC24C 0803F0CA */  j          .Lrace_800FC328
/* B2610 800FC250 27A60020 */   addiu     $a2, $sp, 0x20
.Lrace_800FC254:
/* B2614 800FC254 24020002 */  addiu      $v0, $zero, 0x2
.Lrace_800FC258:
/* B2618 800FC258 14620023 */  bne        $v1, $v0, .Lrace_800FC2E8
/* B261C 800FC25C 00000000 */   nop
/* B2620 800FC260 92220004 */  lbu        $v0, 0x4($s1)
/* B2624 800FC264 10400020 */  beqz       $v0, .Lrace_800FC2E8
/* B2628 800FC268 2625006C */   addiu     $a1, $s1, 0x6C
/* B262C 800FC26C 8E300148 */  lw         $s0, 0x148($s1)
/* B2630 800FC270 8E030000 */  lw         $v1, 0x0($s0)
/* B2634 800FC274 8C62000C */  lw         $v0, 0xC($v1)
/* B2638 800FC278 84440090 */  lh         $a0, 0x90($v0)
/* B263C 800FC27C 8C420094 */  lw         $v0, 0x94($v0)
/* B2640 800FC280 0040F809 */  jalr       $v0
/* B2644 800FC284 00642021 */   addu      $a0, $v1, $a0
/* B2648 800FC288 8E02002C */  lw         $v0, 0x2C($s0)
/* B264C 800FC28C 34420001 */  ori        $v0, $v0, 0x1
/* B2650 800FC290 AE02002C */  sw         $v0, 0x2C($s0)
/* B2654 800FC294 C6200060 */  lwc1       $f0, 0x60($s1)
/* B2658 800FC298 46000007 */  neg.s      $f0, $f0
/* B265C 800FC29C E7A00010 */  swc1       $f0, 0x10($sp)
/* B2660 800FC2A0 C6200064 */  lwc1       $f0, 0x64($s1)
/* B2664 800FC2A4 46000007 */  neg.s      $f0, $f0
/* B2668 800FC2A8 E7A00014 */  swc1       $f0, 0x14($sp)
/* B266C 800FC2AC C6200068 */  lwc1       $f0, 0x68($s1)
/* B2670 800FC2B0 46000007 */  neg.s      $f0, $f0
/* B2674 800FC2B4 E7A00018 */  swc1       $f0, 0x18($sp)
/* B2678 800FC2B8 C6200054 */  lwc1       $f0, 0x54($s1)
/* B267C 800FC2BC E7A00020 */  swc1       $f0, 0x20($sp)
/* B2680 800FC2C0 C6200058 */  lwc1       $f0, 0x58($s1)
/* B2684 800FC2C4 E7A00024 */  swc1       $f0, 0x24($sp)
/* B2688 800FC2C8 C620005C */  lwc1       $f0, 0x5C($s1)
/* B268C 800FC2CC E7A00028 */  swc1       $f0, 0x28($sp)
/* B2690 800FC2D0 8E300148 */  lw         $s0, 0x148($s1)
/* B2694 800FC2D4 8E030000 */  lw         $v1, 0x0($s0)
/* B2698 800FC2D8 27A50010 */  addiu      $a1, $sp, 0x10
/* B269C 800FC2DC 8C62000C */  lw         $v0, 0xC($v1)
/* B26A0 800FC2E0 0803F0CA */  j          .Lrace_800FC328
/* B26A4 800FC2E4 27A60020 */   addiu     $a2, $sp, 0x20
.Lrace_800FC2E8:
/* B26A8 800FC2E8 8E300148 */  lw         $s0, 0x148($s1)
/* B26AC 800FC2EC 8E030000 */  lw         $v1, 0x0($s0)
/* B26B0 800FC2F0 8C62000C */  lw         $v0, 0xC($v1)
/* B26B4 800FC2F4 2625006C */  addiu      $a1, $s1, 0x6C
/* B26B8 800FC2F8 84440090 */  lh         $a0, 0x90($v0)
/* B26BC 800FC2FC 8C420094 */  lw         $v0, 0x94($v0)
/* B26C0 800FC300 0040F809 */  jalr       $v0
/* B26C4 800FC304 00642021 */   addu      $a0, $v1, $a0
/* B26C8 800FC308 8E02002C */  lw         $v0, 0x2C($s0)
/* B26CC 800FC30C 34420001 */  ori        $v0, $v0, 0x1
/* B26D0 800FC310 AE02002C */  sw         $v0, 0x2C($s0)
/* B26D4 800FC314 8E300148 */  lw         $s0, 0x148($s1)
/* B26D8 800FC318 8E030000 */  lw         $v1, 0x0($s0)
/* B26DC 800FC31C 26250060 */  addiu      $a1, $s1, 0x60
/* B26E0 800FC320 8C62000C */  lw         $v0, 0xC($v1)
/* B26E4 800FC324 26260054 */  addiu      $a2, $s1, 0x54
.Lrace_800FC328:
/* B26E8 800FC328 84440050 */  lh         $a0, 0x50($v0)
/* B26EC 800FC32C 8C420054 */  lw         $v0, 0x54($v0)
/* B26F0 800FC330 0040F809 */  jalr       $v0
/* B26F4 800FC334 00642021 */   addu      $a0, $v1, $a0
/* B26F8 800FC338 8E02002C */  lw         $v0, 0x2C($s0)
/* B26FC 800FC33C 34420001 */  ori        $v0, $v0, 0x1
/* B2700 800FC340 AE02002C */  sw         $v0, 0x2C($s0)
.Lrace_800FC344:
/* B2704 800FC344 8FBF0048 */  lw         $ra, 0x48($sp)
/* B2708 800FC348 8FB10044 */  lw         $s1, 0x44($sp)
/* B270C 800FC34C 8FB00040 */  lw         $s0, 0x40($sp)
/* B2710 800FC350 03E00008 */  jr         $ra
/* B2714 800FC354 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800FC358
/* B2718 800FC358 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B271C 800FC35C AFB00010 */  sw         $s0, 0x10($sp)
/* B2720 800FC360 00808021 */  addu       $s0, $a0, $zero
/* B2724 800FC364 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2728 800FC368 8E0400D0 */  lw         $a0, 0xD0($s0)
/* B272C 800FC36C 8E030140 */  lw         $v1, 0x140($s0)
/* B2730 800FC370 0064102B */  sltu       $v0, $v1, $a0
/* B2734 800FC374 10400003 */  beqz       $v0, .Lrace_800FC384
/* B2738 800FC378 00641023 */   subu      $v0, $v1, $a0
/* B273C 800FC37C 0803F0E2 */  j          .Lrace_800FC388
/* B2740 800FC380 AE000140 */   sw        $zero, 0x140($s0)
.Lrace_800FC384:
/* B2744 800FC384 AE020140 */  sw         $v0, 0x140($s0)
.Lrace_800FC388:
/* B2748 800FC388 8E0200D4 */  lw         $v0, 0xD4($s0)
/* B274C 800FC38C 8C420D04 */  lw         $v0, 0xD04($v0)
/* B2750 800FC390 30420010 */  andi       $v0, $v0, 0x10
/* B2754 800FC394 5440006E */  bnel       $v0, $zero, .Lrace_800FC550
/* B2758 800FC398 AE000140 */   sw        $zero, 0x140($s0)
/* B275C 800FC39C 8E020140 */  lw         $v0, 0x140($s0)
/* B2760 800FC3A0 1440006E */  bnez       $v0, .Lrace_800FC55C
/* B2764 800FC3A4 240201F4 */   addiu     $v0, $zero, 0x1F4
/* B2768 800FC3A8 8E030148 */  lw         $v1, 0x148($s0)
/* B276C 800FC3AC AE020140 */  sw         $v0, 0x140($s0)
/* B2770 800FC3B0 8E0200D4 */  lw         $v0, 0xD4($s0)
/* B2774 800FC3B4 C4640004 */  lwc1       $f4, 0x4($v1)
/* B2778 800FC3B8 E6040138 */  swc1       $f4, 0x138($s0)
/* B277C 800FC3BC 8C420D04 */  lw         $v0, 0xD04($v0)
/* B2780 800FC3C0 30420800 */  andi       $v0, $v0, 0x800
/* B2784 800FC3C4 10400054 */  beqz       $v0, .Lrace_800FC518
/* B2788 800FC3C8 00000000 */   nop
/* B278C 800FC3CC C602013C */  lwc1       $f2, 0x13C($s0)
/* B2790 800FC3D0 44800000 */  mtc1       $zero, $f0
/* B2794 800FC3D4 4602003C */  c.lt.s     $f0, $f2
/* B2798 800FC3D8 00000000 */  nop
/* B279C 800FC3DC 45010007 */  bc1t       .Lrace_800FC3FC
/* B27A0 800FC3E0 00000000 */   nop
/* B27A4 800FC3E4 3C01800D */  lui        $at, %hi(D_race_800CD038)
/* B27A8 800FC3E8 C420D038 */  lwc1       $f0, %lo(D_race_800CD038)($at)
/* B27AC 800FC3EC 4600203E */  c.le.s     $f4, $f0
/* B27B0 800FC3F0 00000000 */  nop
/* B27B4 800FC3F4 45000027 */  bc1f       .Lrace_800FC494
/* B27B8 800FC3F8 3C058003 */   lui       $a1, %hi(D_8002FAB0)
.Lrace_800FC3FC:
/* B27BC 800FC3FC 3C01800D */  lui        $at, %hi(D_race_800CD03C)
/* B27C0 800FC400 C422D03C */  lwc1       $f2, %lo(D_race_800CD03C)($at)
/* B27C4 800FC404 4602203C */  c.lt.s     $f4, $f2
/* B27C8 800FC408 00000000 */  nop
/* B27CC 800FC40C 45000021 */  bc1f       .Lrace_800FC494
/* B27D0 800FC410 3C058003 */   lui       $a1, %hi(D_8002FAB0)
/* B27D4 800FC414 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* B27D8 800FC418 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* B27DC 800FC41C 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* B27E0 800FC420 C6000138 */  lwc1       $f0, 0x138($s0)
/* B27E4 800FC424 24840001 */  addiu      $a0, $a0, 0x1
/* B27E8 800FC428 308403FF */  andi       $a0, $a0, 0x3FF
/* B27EC 800FC42C 00041040 */  sll        $v0, $a0, 1
/* B27F0 800FC430 46001001 */  sub.s      $f0, $f2, $f0
/* B27F4 800FC434 00431021 */  addu       $v0, $v0, $v1
/* B27F8 800FC438 94420000 */  lhu        $v0, 0x0($v0)
/* B27FC 800FC43C 4600018D */  trunc.w.s  $f6, $f0
/* B2800 800FC440 44033000 */  mfc1       $v1, $f6
/* B2804 800FC444 0043001A */  div        $zero, $v0, $v1
/* B2808 800FC448 14600002 */  bnez       $v1, .Lrace_800FC454
/* B280C 800FC44C 00000000 */   nop
/* B2810 800FC450 0007000D */  break      7
.Lrace_800FC454:
/* B2814 800FC454 2401FFFF */  addiu      $at, $zero, -0x1
/* B2818 800FC458 14610004 */  bne        $v1, $at, .Lrace_800FC46C
/* B281C 800FC45C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* B2820 800FC460 14410002 */  bne        $v0, $at, .Lrace_800FC46C
/* B2824 800FC464 00000000 */   nop
/* B2828 800FC468 0006000D */  break      6
.Lrace_800FC46C:
/* B282C 800FC46C 00001810 */  mfhi       $v1
/* B2830 800FC470 3C01800D */  lui        $at, %hi(D_race_800CD040)
/* B2834 800FC474 C422D040 */  lwc1       $f2, %lo(D_race_800CD040)($at)
/* B2838 800FC478 44830000 */  mtc1       $v1, $f0
/* B283C 800FC47C 46800020 */  cvt.s.w    $f0, $f0
/* B2840 800FC480 46020002 */  mul.s      $f0, $f0, $f2
/* B2844 800FC484 ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* B2848 800FC488 46000007 */  neg.s      $f0, $f0
/* B284C 800FC48C 0803F154 */  j          .Lrace_800FC550
/* B2850 800FC490 E600013C */   swc1      $f0, 0x13C($s0)
.Lrace_800FC494:
/* B2854 800FC494 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* B2858 800FC498 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* B285C 800FC49C 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* B2860 800FC4A0 C6000138 */  lwc1       $f0, 0x138($s0)
/* B2864 800FC4A4 3C01800D */  lui        $at, %hi(D_race_800CD044)
/* B2868 800FC4A8 C422D044 */  lwc1       $f2, %lo(D_race_800CD044)($at)
/* B286C 800FC4AC 24840001 */  addiu      $a0, $a0, 0x1
/* B2870 800FC4B0 308403FF */  andi       $a0, $a0, 0x3FF
/* B2874 800FC4B4 00041040 */  sll        $v0, $a0, 1
/* B2878 800FC4B8 46020001 */  sub.s      $f0, $f0, $f2
/* B287C 800FC4BC 00431021 */  addu       $v0, $v0, $v1
/* B2880 800FC4C0 94420000 */  lhu        $v0, 0x0($v0)
/* B2884 800FC4C4 4600018D */  trunc.w.s  $f6, $f0
/* B2888 800FC4C8 44033000 */  mfc1       $v1, $f6
/* B288C 800FC4CC 0043001A */  div        $zero, $v0, $v1
/* B2890 800FC4D0 14600002 */  bnez       $v1, .Lrace_800FC4DC
/* B2894 800FC4D4 00000000 */   nop
/* B2898 800FC4D8 0007000D */  break      7
.Lrace_800FC4DC:
/* B289C 800FC4DC 2401FFFF */  addiu      $at, $zero, -0x1
/* B28A0 800FC4E0 14610004 */  bne        $v1, $at, .Lrace_800FC4F4
/* B28A4 800FC4E4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* B28A8 800FC4E8 14410002 */  bne        $v0, $at, .Lrace_800FC4F4
/* B28AC 800FC4EC 00000000 */   nop
/* B28B0 800FC4F0 0006000D */  break      6
.Lrace_800FC4F4:
/* B28B4 800FC4F4 00001810 */  mfhi       $v1
/* B28B8 800FC4F8 3C01800D */  lui        $at, %hi(D_race_800CD048)
/* B28BC 800FC4FC C422D048 */  lwc1       $f2, %lo(D_race_800CD048)($at)
/* B28C0 800FC500 44830000 */  mtc1       $v1, $f0
/* B28C4 800FC504 46800020 */  cvt.s.w    $f0, $f0
/* B28C8 800FC508 46020002 */  mul.s      $f0, $f0, $f2
/* B28CC 800FC50C ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* B28D0 800FC510 0803F154 */  j          .Lrace_800FC550
/* B28D4 800FC514 E600013C */   swc1      $f0, 0x13C($s0)
.Lrace_800FC518:
/* B28D8 800FC518 8E020148 */  lw         $v0, 0x148($s0)
/* B28DC 800FC51C C6020134 */  lwc1       $f2, 0x134($s0)
/* B28E0 800FC520 C4400004 */  lwc1       $f0, 0x4($v0)
/* B28E4 800FC524 46020032 */  c.eq.s     $f0, $f2
/* B28E8 800FC528 00000000 */  nop
/* B28EC 800FC52C 45030007 */  bc1tl      .Lrace_800FC54C
/* B28F0 800FC530 AE00013C */   sw        $zero, 0x13C($s0)
/* B28F4 800FC534 46022001 */  sub.s      $f0, $f4, $f2
/* B28F8 800FC538 3C01800D */  lui        $at, %hi(D_race_800CD04C)
/* B28FC 800FC53C C422D04C */  lwc1       $f2, %lo(D_race_800CD04C)($at)
/* B2900 800FC540 46020002 */  mul.s      $f0, $f0, $f2
/* B2904 800FC544 0803F154 */  j          .Lrace_800FC550
/* B2908 800FC548 E600013C */   swc1      $f0, 0x13C($s0)
.Lrace_800FC54C:
/* B290C 800FC54C AE000140 */  sw         $zero, 0x140($s0)
.Lrace_800FC550:
/* B2910 800FC550 8E020140 */  lw         $v0, 0x140($s0)
/* B2914 800FC554 1040001B */  beqz       $v0, .Lrace_800FC5C4
/* B2918 800FC558 240201F4 */   addiu     $v0, $zero, 0x1F4
.Lrace_800FC55C:
/* B291C 800FC55C 8E030140 */  lw         $v1, 0x140($s0)
/* B2920 800FC560 3C01800D */  lui        $at, %hi(D_race_800CD050)
/* B2924 800FC564 C420D050 */  lwc1       $f0, %lo(D_race_800CD050)($at)
/* B2928 800FC568 00431023 */  subu       $v0, $v0, $v1
/* B292C 800FC56C 44826000 */  mtc1       $v0, $f12
/* B2930 800FC570 46806320 */  cvt.s.w    $f12, $f12
/* B2934 800FC574 46006302 */  mul.s      $f12, $f12, $f0
/* B2938 800FC578 3C01800D */  lui        $at, %hi(D_race_800CD054)
/* B293C 800FC57C C420D054 */  lwc1       $f0, %lo(D_race_800CD054)($at)
/* B2940 800FC580 46006302 */  mul.s      $f12, $f12, $f0
/* B2944 800FC584 3C01800D */  lui        $at, %hi(D_race_800CD058)
/* B2948 800FC588 C420D058 */  lwc1       $f0, %lo(D_race_800CD058)($at)
/* B294C 800FC58C 46006302 */  mul.s      $f12, $f12, $f0
/* B2950 800FC590 0C006BCC */  jal        cosf
/* B2954 800FC594 00000000 */   nop
/* B2958 800FC598 C604013C */  lwc1       $f4, 0x13C($s0)
/* B295C 800FC59C 46002002 */  mul.s      $f0, $f4, $f0
/* B2960 800FC5A0 C6020138 */  lwc1       $f2, 0x138($s0)
/* B2964 800FC5A4 8E030148 */  lw         $v1, 0x148($s0)
/* B2968 800FC5A8 46041081 */  sub.s      $f2, $f2, $f4
/* B296C 800FC5AC 8C62002C */  lw         $v0, 0x2C($v1)
/* B2970 800FC5B0 46001080 */  add.s      $f2, $f2, $f0
/* B2974 800FC5B4 34420002 */  ori        $v0, $v0, 0x2
/* B2978 800FC5B8 AC62002C */  sw         $v0, 0x2C($v1)
/* B297C 800FC5BC 0803F17C */  j          .Lrace_800FC5F0
/* B2980 800FC5C0 E4620004 */   swc1      $f2, 0x4($v1)
.Lrace_800FC5C4:
/* B2984 800FC5C4 8E030148 */  lw         $v1, 0x148($s0)
/* B2988 800FC5C8 C6020134 */  lwc1       $f2, 0x134($s0)
/* B298C 800FC5CC C4600004 */  lwc1       $f0, 0x4($v1)
/* B2990 800FC5D0 46020032 */  c.eq.s     $f0, $f2
/* B2994 800FC5D4 00000000 */  nop
/* B2998 800FC5D8 4501000B */  bc1t       .Lrace_800FC608
/* B299C 800FC5DC 00000000 */   nop
/* B29A0 800FC5E0 8C62002C */  lw         $v0, 0x2C($v1)
/* B29A4 800FC5E4 E4620004 */  swc1       $f2, 0x4($v1)
/* B29A8 800FC5E8 34420002 */  ori        $v0, $v0, 0x2
/* B29AC 800FC5EC AC62002C */  sw         $v0, 0x2C($v1)
.Lrace_800FC5F0:
/* B29B0 800FC5F0 8E030144 */  lw         $v1, 0x144($s0)
/* B29B4 800FC5F4 8C62012C */  lw         $v0, 0x12C($v1)
/* B29B8 800FC5F8 844400C0 */  lh         $a0, 0xC0($v0)
/* B29BC 800FC5FC 8C4200C4 */  lw         $v0, 0xC4($v0)
/* B29C0 800FC600 0040F809 */  jalr       $v0
/* B29C4 800FC604 00642021 */   addu      $a0, $v1, $a0
.Lrace_800FC608:
/* B29C8 800FC608 8FBF0014 */  lw         $ra, 0x14($sp)
/* B29CC 800FC60C 8FB00010 */  lw         $s0, 0x10($sp)
/* B29D0 800FC610 03E00008 */  jr         $ra
/* B29D4 800FC614 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FC618
/* B29D8 800FC618 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B29DC 800FC61C AFB10034 */  sw         $s1, 0x34($sp)
/* B29E0 800FC620 00808821 */  addu       $s1, $a0, $zero
/* B29E4 800FC624 AFB00030 */  sw         $s0, 0x30($sp)
/* B29E8 800FC628 26300008 */  addiu      $s0, $s1, 0x8
/* B29EC 800FC62C 02002021 */  addu       $a0, $s0, $zero
/* B29F0 800FC630 AFB20038 */  sw         $s2, 0x38($sp)
/* B29F4 800FC634 26320038 */  addiu      $s2, $s1, 0x38
/* B29F8 800FC638 AFBF003C */  sw         $ra, 0x3C($sp)
/* B29FC 800FC63C 0C00109A */  jal        func_80004268
/* B2A00 800FC640 02402821 */   addu      $a1, $s2, $zero
/* B2A04 800FC644 92220001 */  lbu        $v0, 0x1($s1)
/* B2A08 800FC648 30420001 */  andi       $v0, $v0, 0x1
/* B2A0C 800FC64C 10400018 */  beqz       $v0, .Lrace_800FC6B0
/* B2A10 800FC650 26220048 */   addiu     $v0, $s1, 0x48
/* B2A14 800FC654 02002021 */  addu       $a0, $s0, $zero
/* B2A18 800FC658 02402821 */  addu       $a1, $s2, $zero
.Lrace_800FC65C:
/* B2A1C 800FC65C 8C880000 */  lw         $t0, 0x0($a0)
/* B2A20 800FC660 8C890004 */  lw         $t1, 0x4($a0)
/* B2A24 800FC664 8C8A0008 */  lw         $t2, 0x8($a0)
/* B2A28 800FC668 8C8B000C */  lw         $t3, 0xC($a0)
/* B2A2C 800FC66C AC480000 */  sw         $t0, 0x0($v0)
/* B2A30 800FC670 AC490004 */  sw         $t1, 0x4($v0)
/* B2A34 800FC674 AC4A0008 */  sw         $t2, 0x8($v0)
/* B2A38 800FC678 AC4B000C */  sw         $t3, 0xC($v0)
/* B2A3C 800FC67C 24840010 */  addiu      $a0, $a0, 0x10
/* B2A40 800FC680 1485FFF6 */  bne        $a0, $a1, .Lrace_800FC65C
/* B2A44 800FC684 24420010 */   addiu     $v0, $v0, 0x10
/* B2A48 800FC688 8E280038 */  lw         $t0, 0x38($s1)
/* B2A4C 800FC68C 8E29003C */  lw         $t1, 0x3C($s1)
/* B2A50 800FC690 8E2A0040 */  lw         $t2, 0x40($s1)
/* B2A54 800FC694 8E2B0044 */  lw         $t3, 0x44($s1)
/* B2A58 800FC698 AE280078 */  sw         $t0, 0x78($s1)
/* B2A5C 800FC69C AE29007C */  sw         $t1, 0x7C($s1)
/* B2A60 800FC6A0 AE2A0080 */  sw         $t2, 0x80($s1)
/* B2A64 800FC6A4 AE2B0084 */  sw         $t3, 0x84($s1)
/* B2A68 800FC6A8 0803F1E2 */  j          .Lrace_800FC788
/* B2A6C 800FC6AC 00000000 */   nop
.Lrace_800FC6B0:
/* B2A70 800FC6B0 C62400F8 */  lwc1       $f4, 0xF8($s1)
/* B2A74 800FC6B4 C62000CC */  lwc1       $f0, 0xCC($s1)
/* B2A78 800FC6B8 46002102 */  mul.s      $f4, $f4, $f0
/* B2A7C 800FC6BC C62600AC */  lwc1       $f6, 0xAC($s1)
/* B2A80 800FC6C0 C620002C */  lwc1       $f0, 0x2C($s1)
/* B2A84 800FC6C4 46003181 */  sub.s      $f6, $f6, $f0
/* B2A88 800FC6C8 3C01800D */  lui        $at, %hi(D_race_800CD05C)
/* B2A8C 800FC6CC C428D05C */  lwc1       $f8, %lo(D_race_800CD05C)($at)
/* B2A90 800FC6D0 46082100 */  add.s      $f4, $f4, $f8
/* B2A94 800FC6D4 262400AC */  addiu      $a0, $s1, 0xAC
/* B2A98 800FC6D8 E7A60010 */  swc1       $f6, 0x10($sp)
/* B2A9C 800FC6DC 46044103 */  div.s      $f4, $f8, $f4
/* B2AA0 800FC6E0 46043182 */  mul.s      $f6, $f6, $f4
/* B2AA4 800FC6E4 2623002C */  addiu      $v1, $s1, 0x2C
/* B2AA8 800FC6E8 C4800004 */  lwc1       $f0, 0x4($a0)
/* B2AAC 800FC6EC C4620004 */  lwc1       $f2, 0x4($v1)
/* B2AB0 800FC6F0 46020001 */  sub.s      $f0, $f0, $f2
/* B2AB4 800FC6F4 27A20010 */  addiu      $v0, $sp, 0x10
/* B2AB8 800FC6F8 46040282 */  mul.s      $f10, $f0, $f4
/* B2ABC 800FC6FC E4400004 */  swc1       $f0, 0x4($v0)
/* B2AC0 800FC700 C4800008 */  lwc1       $f0, 0x8($a0)
/* B2AC4 800FC704 C4620008 */  lwc1       $f2, 0x8($v1)
/* B2AC8 800FC708 46020001 */  sub.s      $f0, $f0, $f2
/* B2ACC 800FC70C 46040102 */  mul.s      $f4, $f0, $f4
/* B2AD0 800FC710 E4400008 */  swc1       $f0, 0x8($v0)
/* B2AD4 800FC714 E7A60020 */  swc1       $f6, 0x20($sp)
/* B2AD8 800FC718 E7AA0024 */  swc1       $f10, 0x24($sp)
/* B2ADC 800FC71C E7A40028 */  swc1       $f4, 0x28($sp)
/* B2AE0 800FC720 C620002C */  lwc1       $f0, 0x2C($s1)
/* B2AE4 800FC724 46060000 */  add.s      $f0, $f0, $f6
/* B2AE8 800FC728 E620006C */  swc1       $f0, 0x6C($s1)
/* B2AEC 800FC72C C4600004 */  lwc1       $f0, 0x4($v1)
/* B2AF0 800FC730 C7A20024 */  lwc1       $f2, 0x24($sp)
/* B2AF4 800FC734 46020000 */  add.s      $f0, $f0, $f2
/* B2AF8 800FC738 2622006C */  addiu      $v0, $s1, 0x6C
/* B2AFC 800FC73C E4400004 */  swc1       $f0, 0x4($v0)
/* B2B00 800FC740 C4600008 */  lwc1       $f0, 0x8($v1)
/* B2B04 800FC744 C7A20028 */  lwc1       $f2, 0x28($sp)
/* B2B08 800FC748 46020000 */  add.s      $f0, $f0, $f2
/* B2B0C 800FC74C E4400008 */  swc1       $f0, 0x8($v0)
/* B2B10 800FC750 C62200FC */  lwc1       $f2, 0xFC($s1)
/* B2B14 800FC754 C62000CC */  lwc1       $f0, 0xCC($s1)
/* B2B18 800FC758 46001082 */  mul.s      $f2, $f2, $f0
/* B2B1C 800FC75C 262500B8 */  addiu      $a1, $s1, 0xB8
/* B2B20 800FC760 46081080 */  add.s      $f2, $f2, $f8
/* B2B24 800FC764 26300078 */  addiu      $s0, $s1, 0x78
/* B2B28 800FC768 02003821 */  addu       $a3, $s0, $zero
/* B2B2C 800FC76C 46024203 */  div.s      $f8, $f8, $f2
/* B2B30 800FC770 44064000 */  mfc1       $a2, $f8
/* B2B34 800FC774 0C0012B8 */  jal        func_80004AE0
/* B2B38 800FC778 02402021 */   addu      $a0, $s2, $zero
/* B2B3C 800FC77C 02002021 */  addu       $a0, $s0, $zero
/* B2B40 800FC780 0C001055 */  jal        func_80004154
/* B2B44 800FC784 26250048 */   addiu     $a1, $s1, 0x48
.Lrace_800FC788:
/* B2B48 800FC788 0C03F05B */  jal        func_race_800FC16C
/* B2B4C 800FC78C 02202021 */   addu      $a0, $s1, $zero
/* B2B50 800FC790 0C03EFF6 */  jal        func_race_800FBFD8
/* B2B54 800FC794 02202021 */   addu      $a0, $s1, $zero
/* B2B58 800FC798 8FBF003C */  lw         $ra, 0x3C($sp)
/* B2B5C 800FC79C 8FB20038 */  lw         $s2, 0x38($sp)
/* B2B60 800FC7A0 8FB10034 */  lw         $s1, 0x34($sp)
/* B2B64 800FC7A4 8FB00030 */  lw         $s0, 0x30($sp)
/* B2B68 800FC7A8 03E00008 */  jr         $ra
/* B2B6C 800FC7AC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800FC7B0
/* B2B70 800FC7B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B2B74 800FC7B4 AFB00010 */  sw         $s0, 0x10($sp)
/* B2B78 800FC7B8 00808021 */  addu       $s0, $a0, $zero
/* B2B7C 800FC7BC 24020001 */  addiu      $v0, $zero, 0x1
/* B2B80 800FC7C0 00002821 */  addu       $a1, $zero, $zero
/* B2B84 800FC7C4 00A03021 */  addu       $a2, $a1, $zero
/* B2B88 800FC7C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2B8C 800FC7CC AE0000D4 */  sw         $zero, 0xD4($s0)
/* B2B90 800FC7D0 0C03F26E */  jal        func_race_800FC9B8
/* B2B94 800FC7D4 A2020000 */   sb        $v0, 0x0($s0)
/* B2B98 800FC7D8 3C01800D */  lui        $at, %hi(D_race_800CD060)
/* B2B9C 800FC7DC C420D060 */  lwc1       $f0, %lo(D_race_800CD060)($at)
/* B2BA0 800FC7E0 3C01800D */  lui        $at, %hi(D_race_800CD064)
/* B2BA4 800FC7E4 C422D064 */  lwc1       $f2, %lo(D_race_800CD064)($at)
/* B2BA8 800FC7E8 3C01800D */  lui        $at, %hi(D_race_800CD068)
/* B2BAC 800FC7EC C424D068 */  lwc1       $f4, %lo(D_race_800CD068)($at)
/* B2BB0 800FC7F0 AE000140 */  sw         $zero, 0x140($s0)
/* B2BB4 800FC7F4 AE00014C */  sw         $zero, 0x14C($s0)
/* B2BB8 800FC7F8 A2000004 */  sb         $zero, 0x4($s0)
/* B2BBC 800FC7FC A2000005 */  sb         $zero, 0x5($s0)
/* B2BC0 800FC800 E6000100 */  swc1       $f0, 0x100($s0)
/* B2BC4 800FC804 E6020104 */  swc1       $f2, 0x104($s0)
/* B2BC8 800FC808 E6040108 */  swc1       $f4, 0x108($s0)
/* B2BCC 800FC80C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2BD0 800FC810 8FB00010 */  lw         $s0, 0x10($sp)
/* B2BD4 800FC814 03E00008 */  jr         $ra
/* B2BD8 800FC818 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FC81C
/* B2BDC 800FC81C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B2BE0 800FC820 AFB00010 */  sw         $s0, 0x10($sp)
/* B2BE4 800FC824 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2BE8 800FC828 0C03F1EC */  jal        func_race_800FC7B0
/* B2BEC 800FC82C 00808021 */   addu      $s0, $a0, $zero
/* B2BF0 800FC830 02001021 */  addu       $v0, $s0, $zero
/* B2BF4 800FC834 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2BF8 800FC838 8FB00010 */  lw         $s0, 0x10($sp)
/* B2BFC 800FC83C 03E00008 */  jr         $ra
/* B2C00 800FC840 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FC844
/* B2C04 800FC844 AC850148 */  sw         $a1, 0x148($a0)
/* B2C08 800FC848 00A01021 */  addu       $v0, $a1, $zero
/* B2C0C 800FC84C AC860144 */  sw         $a2, 0x144($a0)
/* B2C10 800FC850 C4400004 */  lwc1       $f0, 0x4($v0)
/* B2C14 800FC854 03E00008 */  jr         $ra
/* B2C18 800FC858 E4800134 */   swc1      $f0, 0x134($a0)

glabel func_race_800FC85C
/* B2C1C 800FC85C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B2C20 800FC860 AFB00010 */  sw         $s0, 0x10($sp)
/* B2C24 800FC864 00808021 */  addu       $s0, $a0, $zero
/* B2C28 800FC868 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2C2C 800FC86C 8E0200D4 */  lw         $v0, 0xD4($s0)
/* B2C30 800FC870 10450019 */  beq        $v0, $a1, .Lrace_800FC8D8
/* B2C34 800FC874 00000000 */   nop
/* B2C38 800FC878 AE0500D4 */  sw         $a1, 0xD4($s0)
/* B2C3C 800FC87C 8CA2005C */  lw         $v0, 0x5C($a1)
/* B2C40 800FC880 8C430024 */  lw         $v1, 0x24($v0)
/* B2C44 800FC884 84640010 */  lh         $a0, 0x10($v1)
/* B2C48 800FC888 00442021 */  addu       $a0, $v0, $a0
/* B2C4C 800FC88C 8C620014 */  lw         $v0, 0x14($v1)
/* B2C50 800FC890 0040F809 */  jalr       $v0
/* B2C54 800FC894 260500E4 */   addiu     $a1, $s0, 0xE4
/* B2C58 800FC898 8E0200D4 */  lw         $v0, 0xD4($s0)
/* B2C5C 800FC89C 3C01800D */  lui        $at, %hi(D_race_800CD06C)
/* B2C60 800FC8A0 C420D06C */  lwc1       $f0, %lo(D_race_800CD06C)($at)
/* B2C64 800FC8A4 8E0300D4 */  lw         $v1, 0xD4($s0)
/* B2C68 800FC8A8 8C420C84 */  lw         $v0, 0xC84($v0)
/* B2C6C 800FC8AC E6000120 */  swc1       $f0, 0x120($s0)
/* B2C70 800FC8B0 30420001 */  andi       $v0, $v0, 0x1
/* B2C74 800FC8B4 AE02011C */  sw         $v0, 0x11C($s0)
/* B2C78 800FC8B8 8C62005C */  lw         $v0, 0x5C($v1)
/* B2C7C 800FC8BC C4400028 */  lwc1       $f0, 0x28($v0)
/* B2C80 800FC8C0 E60000D8 */  swc1       $f0, 0xD8($s0)
/* B2C84 800FC8C4 C440002C */  lwc1       $f0, 0x2C($v0)
/* B2C88 800FC8C8 260300D8 */  addiu      $v1, $s0, 0xD8
/* B2C8C 800FC8CC E4600004 */  swc1       $f0, 0x4($v1)
/* B2C90 800FC8D0 C4400030 */  lwc1       $f0, 0x30($v0)
/* B2C94 800FC8D4 E4600008 */  swc1       $f0, 0x8($v1)
.Lrace_800FC8D8:
/* B2C98 800FC8D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2C9C 800FC8DC 8FB00010 */  lw         $s0, 0x10($sp)
/* B2CA0 800FC8E0 03E00008 */  jr         $ra
/* B2CA4 800FC8E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FC8E8
/* B2CA8 800FC8E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B2CAC 800FC8EC AFB00010 */  sw         $s0, 0x10($sp)
/* B2CB0 800FC8F0 00808021 */  addu       $s0, $a0, $zero
/* B2CB4 800FC8F4 AFB10014 */  sw         $s1, 0x14($sp)
/* B2CB8 800FC8F8 26110048 */  addiu      $s1, $s0, 0x48
/* B2CBC 800FC8FC 00A02021 */  addu       $a0, $a1, $zero
/* B2CC0 800FC900 00C02821 */  addu       $a1, $a2, $zero
/* B2CC4 800FC904 AFBF0018 */  sw         $ra, 0x18($sp)
/* B2CC8 800FC908 0C03EF70 */  jal        func_race_800FBDC0
/* B2CCC 800FC90C 02203021 */   addu      $a2, $s1, $zero
/* B2CD0 800FC910 26020088 */  addiu      $v0, $s0, 0x88
/* B2CD4 800FC914 26100068 */  addiu      $s0, $s0, 0x68
.Lrace_800FC918:
/* B2CD8 800FC918 8E230000 */  lw         $v1, 0x0($s1)
/* B2CDC 800FC91C 8E270004 */  lw         $a3, 0x4($s1)
/* B2CE0 800FC920 8E280008 */  lw         $t0, 0x8($s1)
/* B2CE4 800FC924 8E29000C */  lw         $t1, 0xC($s1)
/* B2CE8 800FC928 AC430000 */  sw         $v1, 0x0($v0)
/* B2CEC 800FC92C AC470004 */  sw         $a3, 0x4($v0)
/* B2CF0 800FC930 AC480008 */  sw         $t0, 0x8($v0)
/* B2CF4 800FC934 AC49000C */  sw         $t1, 0xC($v0)
/* B2CF8 800FC938 26310010 */  addiu      $s1, $s1, 0x10
/* B2CFC 800FC93C 1630FFF6 */  bne        $s1, $s0, .Lrace_800FC918
/* B2D00 800FC940 24420010 */   addiu     $v0, $v0, 0x10
/* B2D04 800FC944 8E230000 */  lw         $v1, 0x0($s1)
/* B2D08 800FC948 AC430000 */  sw         $v1, 0x0($v0)
/* B2D0C 800FC94C 8FBF0018 */  lw         $ra, 0x18($sp)
/* B2D10 800FC950 8FB10014 */  lw         $s1, 0x14($sp)
/* B2D14 800FC954 8FB00010 */  lw         $s0, 0x10($sp)
/* B2D18 800FC958 03E00008 */  jr         $ra
/* B2D1C 800FC95C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800FC960
/* B2D20 800FC960 8CA20000 */  lw         $v0, 0x0($a1)
/* B2D24 800FC964 8CA30004 */  lw         $v1, 0x4($a1)
/* B2D28 800FC968 8CA60008 */  lw         $a2, 0x8($a1)
/* B2D2C 800FC96C AC8200AC */  sw         $v0, 0xAC($a0)
/* B2D30 800FC970 AC8300B0 */  sw         $v1, 0xB0($a0)
/* B2D34 800FC974 AC8600B4 */  sw         $a2, 0xB4($a0)
/* B2D38 800FC978 8C8200AC */  lw         $v0, 0xAC($a0)
/* B2D3C 800FC97C 8C8300B0 */  lw         $v1, 0xB0($a0)
/* B2D40 800FC980 8C8600B4 */  lw         $a2, 0xB4($a0)
/* B2D44 800FC984 AC82006C */  sw         $v0, 0x6C($a0)
/* B2D48 800FC988 AC830070 */  sw         $v1, 0x70($a0)
/* B2D4C 800FC98C AC860074 */  sw         $a2, 0x74($a0)
/* B2D50 800FC990 03E00008 */  jr         $ra
/* B2D54 800FC994 00000000 */   nop

glabel func_race_800FC998
/* B2D58 800FC998 90830002 */  lbu        $v1, 0x2($a0)
/* B2D5C 800FC99C 30A200FF */  andi       $v0, $a1, 0xFF
/* B2D60 800FC9A0 10620003 */  beq        $v1, $v0, .Lrace_800FC9B0
/* B2D64 800FC9A4 00000000 */   nop
/* B2D68 800FC9A8 A0850002 */  sb         $a1, 0x2($a0)
/* B2D6C 800FC9AC AC8000C8 */  sw         $zero, 0xC8($a0)
.Lrace_800FC9B0:
/* B2D70 800FC9B0 03E00008 */  jr         $ra
/* B2D74 800FC9B4 00000000 */   nop

glabel func_race_800FC9B8
/* B2D78 800FC9B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B2D7C 800FC9BC AFB00010 */  sw         $s0, 0x10($sp)
/* B2D80 800FC9C0 00808021 */  addu       $s0, $a0, $zero
/* B2D84 800FC9C4 AFBF001C */  sw         $ra, 0x1C($sp)
/* B2D88 800FC9C8 AFB20018 */  sw         $s2, 0x18($sp)
/* B2D8C 800FC9CC AFB10014 */  sw         $s1, 0x14($sp)
/* B2D90 800FC9D0 10C00004 */  beqz       $a2, .Lrace_800FC9E4
/* B2D94 800FC9D4 A2060005 */   sb        $a2, 0x5($s0)
/* B2D98 800FC9D8 28A20003 */  slti       $v0, $a1, 0x3
/* B2D9C 800FC9DC 54400001 */  bnel       $v0, $zero, .Lrace_800FC9E4
/* B2DA0 800FC9E0 24A50005 */   addiu     $a1, $a1, 0x5
.Lrace_800FC9E4:
/* B2DA4 800FC9E4 3C02800D */  lui        $v0, %hi(D_race_800CD110)
/* B2DA8 800FC9E8 2442D110 */  addiu      $v0, $v0, %lo(D_race_800CD110)
/* B2DAC 800FC9EC 00051840 */  sll        $v1, $a1, 1
/* B2DB0 800FC9F0 00651821 */  addu       $v1, $v1, $a1
/* B2DB4 800FC9F4 000318C0 */  sll        $v1, $v1, 3
/* B2DB8 800FC9F8 00628821 */  addu       $s1, $v1, $v0
/* B2DBC 800FC9FC 92250003 */  lbu        $a1, 0x3($s1)
/* B2DC0 800FCA00 0C03F266 */  jal        func_race_800FC998
/* B2DC4 800FCA04 02002021 */   addu      $a0, $s0, $zero
/* B2DC8 800FCA08 92020002 */  lbu        $v0, 0x2($s0)
/* B2DCC 800FCA0C 24120003 */  addiu      $s2, $zero, 0x3
/* B2DD0 800FCA10 14520009 */  bne        $v0, $s2, .Lrace_800FCA38
/* B2DD4 800FCA14 00000000 */   nop
/* B2DD8 800FCA18 C600010C */  lwc1       $f0, 0x10C($s0)
/* B2DDC 800FCA1C C6020110 */  lwc1       $f2, 0x110($s0)
/* B2DE0 800FCA20 C6040114 */  lwc1       $f4, 0x114($s0)
/* B2DE4 800FCA24 C6060118 */  lwc1       $f6, 0x118($s0)
/* B2DE8 800FCA28 E6000124 */  swc1       $f0, 0x124($s0)
/* B2DEC 800FCA2C E6020128 */  swc1       $f2, 0x128($s0)
/* B2DF0 800FCA30 E604012C */  swc1       $f4, 0x12C($s0)
/* B2DF4 800FCA34 E6060130 */  swc1       $f6, 0x130($s0)
.Lrace_800FCA38:
/* B2DF8 800FCA38 8E250004 */  lw         $a1, 0x4($s1)
/* B2DFC 800FCA3C 0C03EFD4 */  jal        func_race_800FBF50
/* B2E00 800FCA40 02002021 */   addu      $a0, $s0, $zero
/* B2E04 800FCA44 8E250008 */  lw         $a1, 0x8($s1)
/* B2E08 800FCA48 0C03EFE8 */  jal        func_race_800FBFA0
/* B2E0C 800FCA4C 02002021 */   addu      $a0, $s0, $zero
/* B2E10 800FCA50 8E250010 */  lw         $a1, 0x10($s1)
/* B2E14 800FCA54 C620000C */  lwc1       $f0, 0xC($s1)
/* B2E18 800FCA58 02002021 */  addu       $a0, $s0, $zero
/* B2E1C 800FCA5C 0C03EFC0 */  jal        func_race_800FBF00
/* B2E20 800FCA60 E6000118 */   swc1      $f0, 0x118($s0)
/* B2E24 800FCA64 8E250014 */  lw         $a1, 0x14($s1)
/* B2E28 800FCA68 0C03EFCA */  jal        func_race_800FBF28
/* B2E2C 800FCA6C 02002021 */   addu      $a0, $s0, $zero
/* B2E30 800FCA70 92020002 */  lbu        $v0, 0x2($s0)
/* B2E34 800FCA74 54520012 */  bnel       $v0, $s2, .Lrace_800FCAC0
/* B2E38 800FCA78 A2000004 */   sb        $zero, 0x4($s0)
/* B2E3C 800FCA7C C6080124 */  lwc1       $f8, 0x124($s0)
/* B2E40 800FCA80 C600010C */  lwc1       $f0, 0x10C($s0)
/* B2E44 800FCA84 C6060128 */  lwc1       $f6, 0x128($s0)
/* B2E48 800FCA88 46004201 */  sub.s      $f8, $f8, $f0
/* B2E4C 800FCA8C C6000110 */  lwc1       $f0, 0x110($s0)
/* B2E50 800FCA90 C602012C */  lwc1       $f2, 0x12C($s0)
/* B2E54 800FCA94 46003181 */  sub.s      $f6, $f6, $f0
/* B2E58 800FCA98 C6000114 */  lwc1       $f0, 0x114($s0)
/* B2E5C 800FCA9C C6040118 */  lwc1       $f4, 0x118($s0)
/* B2E60 800FCAA0 46001081 */  sub.s      $f2, $f2, $f0
/* B2E64 800FCAA4 C6000130 */  lwc1       $f0, 0x130($s0)
/* B2E68 800FCAA8 E6080124 */  swc1       $f8, 0x124($s0)
/* B2E6C 800FCAAC 46040001 */  sub.s      $f0, $f0, $f4
/* B2E70 800FCAB0 E6060128 */  swc1       $f6, 0x128($s0)
/* B2E74 800FCAB4 E602012C */  swc1       $f2, 0x12C($s0)
/* B2E78 800FCAB8 E6000130 */  swc1       $f0, 0x130($s0)
/* B2E7C 800FCABC A2000004 */  sb         $zero, 0x4($s0)
.Lrace_800FCAC0:
/* B2E80 800FCAC0 8FBF001C */  lw         $ra, 0x1C($sp)
/* B2E84 800FCAC4 8FB20018 */  lw         $s2, 0x18($sp)
/* B2E88 800FCAC8 8FB10014 */  lw         $s1, 0x14($sp)
/* B2E8C 800FCACC 8FB00010 */  lw         $s0, 0x10($sp)
/* B2E90 800FCAD0 03E00008 */  jr         $ra
/* B2E94 800FCAD4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800FCAD8
/* B2E98 800FCAD8 90830002 */  lbu        $v1, 0x2($a0)
/* B2E9C 800FCADC 24020003 */  addiu      $v0, $zero, 0x3
/* B2EA0 800FCAE0 14620009 */  bne        $v1, $v0, .Lrace_800FCB08
/* B2EA4 800FCAE4 00000000 */   nop
/* B2EA8 800FCAE8 8C8600D8 */  lw         $a2, 0xD8($a0)
/* B2EAC 800FCAEC 8C8700DC */  lw         $a3, 0xDC($a0)
/* B2EB0 800FCAF0 8C8800E0 */  lw         $t0, 0xE0($a0)
/* B2EB4 800FCAF4 ACA60000 */  sw         $a2, 0x0($a1)
/* B2EB8 800FCAF8 ACA70004 */  sw         $a3, 0x4($a1)
/* B2EBC 800FCAFC ACA80008 */  sw         $t0, 0x8($a1)
/* B2EC0 800FCB00 03E00008 */  jr         $ra
/* B2EC4 800FCB04 00000000 */   nop
.Lrace_800FCB08:
/* B2EC8 800FCB08 C4800060 */  lwc1       $f0, 0x60($a0)
/* B2ECC 800FCB0C E4A00000 */  swc1       $f0, 0x0($a1)
/* B2ED0 800FCB10 C4800064 */  lwc1       $f0, 0x64($a0)
/* B2ED4 800FCB14 E4A00004 */  swc1       $f0, 0x4($a1)
/* B2ED8 800FCB18 C4800068 */  lwc1       $f0, 0x68($a0)
/* B2EDC 800FCB1C 03E00008 */  jr         $ra
/* B2EE0 800FCB20 E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_800FCB24
/* B2EE4 800FCB24 44800000 */  mtc1       $zero, $f0
/* B2EE8 800FCB28 4600703C */  c.lt.s     $f14, $f0
/* B2EEC 800FCB2C 00000000 */  nop
/* B2EF0 800FCB30 45000002 */  bc1f       .Lrace_800FCB3C
/* B2EF4 800FCB34 46007106 */   mov.s     $f4, $f14
/* B2EF8 800FCB38 46007107 */  neg.s      $f4, $f14
.Lrace_800FCB3C:
/* B2EFC 800FCB3C 4600603C */  c.lt.s     $f12, $f0
/* B2F00 800FCB40 00000000 */  nop
/* B2F04 800FCB44 45000002 */  bc1f       .Lrace_800FCB50
/* B2F08 800FCB48 46006086 */   mov.s     $f2, $f12
/* B2F0C 800FCB4C 46006087 */  neg.s      $f2, $f12
.Lrace_800FCB50:
/* B2F10 800FCB50 4602203C */  c.lt.s     $f4, $f2
/* B2F14 800FCB54 00000000 */  nop
/* B2F18 800FCB58 45000025 */  bc1f       .Lrace_800FCBF0
/* B2F1C 800FCB5C 00000000 */   nop
/* B2F20 800FCB60 460C003C */  c.lt.s     $f0, $f12
/* B2F24 800FCB64 00000000 */  nop
/* B2F28 800FCB68 45000010 */  bc1f       .Lrace_800FCBAC
/* B2F2C 800FCB6C 3C038003 */   lui       $v1, %hi(D_8002E2B0)
/* B2F30 800FCB70 3C01800D */  lui        $at, %hi(D_race_800CD070)
/* B2F34 800FCB74 C420D070 */  lwc1       $f0, %lo(D_race_800CD070)($at)
/* B2F38 800FCB78 46007000 */  add.s      $f0, $f14, $f0
/* B2F3C 800FCB7C 3C01800D */  lui        $at, %hi(D_race_800CD074)
/* B2F40 800FCB80 C422D074 */  lwc1       $f2, %lo(D_race_800CD074)($at)
/* B2F44 800FCB84 46020002 */  mul.s      $f0, $f0, $f2
/* B2F48 800FCB88 2463E2B0 */  addiu      $v1, $v1, %lo(D_8002E2B0)
/* B2F4C 800FCB8C 4600018D */  trunc.w.s  $f6, $f0
/* B2F50 800FCB90 44023000 */  mfc1       $v0, $f6
/* B2F54 800FCB94 304203FF */  andi       $v0, $v0, 0x3FF
/* B2F58 800FCB98 00021080 */  sll        $v0, $v0, 2
/* B2F5C 800FCB9C 00431021 */  addu       $v0, $v0, $v1
/* B2F60 800FCBA0 C4400000 */  lwc1       $f0, 0x0($v0)
/* B2F64 800FCBA4 0803F2F8 */  j          .Lrace_800FCBE0
/* B2F68 800FCBA8 46000087 */   neg.s     $f2, $f0
.Lrace_800FCBAC:
/* B2F6C 800FCBAC 3C01800D */  lui        $at, %hi(D_race_800CD078)
/* B2F70 800FCBB0 C420D078 */  lwc1       $f0, %lo(D_race_800CD078)($at)
/* B2F74 800FCBB4 46007000 */  add.s      $f0, $f14, $f0
/* B2F78 800FCBB8 3C01800D */  lui        $at, %hi(D_race_800CD07C)
/* B2F7C 800FCBBC C422D07C */  lwc1       $f2, %lo(D_race_800CD07C)($at)
/* B2F80 800FCBC0 46020002 */  mul.s      $f0, $f0, $f2
/* B2F84 800FCBC4 2463E2B0 */  addiu      $v1, $v1, %lo(D_8002E2B0)
/* B2F88 800FCBC8 4600018D */  trunc.w.s  $f6, $f0
/* B2F8C 800FCBCC 44023000 */  mfc1       $v0, $f6
/* B2F90 800FCBD0 304203FF */  andi       $v0, $v0, 0x3FF
/* B2F94 800FCBD4 00021080 */  sll        $v0, $v0, 2
/* B2F98 800FCBD8 00431021 */  addu       $v0, $v0, $v1
/* B2F9C 800FCBDC C4420000 */  lwc1       $f2, 0x0($v0)
.Lrace_800FCBE0:
/* B2FA0 800FCBE0 3C01800D */  lui        $at, %hi(D_race_800CD080)
/* B2FA4 800FCBE4 C420D080 */  lwc1       $f0, %lo(D_race_800CD080)($at)
/* B2FA8 800FCBE8 03E00008 */  jr         $ra
/* B2FAC 800FCBEC 46001000 */   add.s     $f0, $f2, $f0
.Lrace_800FCBF0:
/* B2FB0 800FCBF0 460E003C */  c.lt.s     $f0, $f14
/* B2FB4 800FCBF4 00000000 */  nop
/* B2FB8 800FCBF8 45010010 */  bc1t       .Lrace_800FCC3C
/* B2FBC 800FCBFC 3C038003 */   lui       $v1, %hi(D_8002E2B0)
/* B2FC0 800FCC00 3C01800D */  lui        $at, %hi(D_race_800CD084)
/* B2FC4 800FCC04 C420D084 */  lwc1       $f0, %lo(D_race_800CD084)($at)
/* B2FC8 800FCC08 46006000 */  add.s      $f0, $f12, $f0
/* B2FCC 800FCC0C 3C01800D */  lui        $at, %hi(D_race_800CD088)
/* B2FD0 800FCC10 C422D088 */  lwc1       $f2, %lo(D_race_800CD088)($at)
/* B2FD4 800FCC14 46020002 */  mul.s      $f0, $f0, $f2
/* B2FD8 800FCC18 2463E2B0 */  addiu      $v1, $v1, %lo(D_8002E2B0)
/* B2FDC 800FCC1C 4600018D */  trunc.w.s  $f6, $f0
/* B2FE0 800FCC20 44023000 */  mfc1       $v0, $f6
/* B2FE4 800FCC24 304203FF */  andi       $v0, $v0, 0x3FF
/* B2FE8 800FCC28 00021080 */  sll        $v0, $v0, 2
/* B2FEC 800FCC2C 00431021 */  addu       $v0, $v0, $v1
/* B2FF0 800FCC30 C4400000 */  lwc1       $f0, 0x0($v0)
/* B2FF4 800FCC34 03E00008 */  jr         $ra
/* B2FF8 800FCC38 46000007 */   neg.s     $f0, $f0
.Lrace_800FCC3C:
/* B2FFC 800FCC3C 3C01800D */  lui        $at, %hi(D_race_800CD08C)
/* B3000 800FCC40 C420D08C */  lwc1       $f0, %lo(D_race_800CD08C)($at)
/* B3004 800FCC44 46006000 */  add.s      $f0, $f12, $f0
/* B3008 800FCC48 3C01800D */  lui        $at, %hi(D_race_800CD090)
/* B300C 800FCC4C C422D090 */  lwc1       $f2, %lo(D_race_800CD090)($at)
/* B3010 800FCC50 46020002 */  mul.s      $f0, $f0, $f2
/* B3014 800FCC54 2463E2B0 */  addiu      $v1, $v1, %lo(D_8002E2B0)
/* B3018 800FCC58 4600018D */  trunc.w.s  $f6, $f0
/* B301C 800FCC5C 44023000 */  mfc1       $v0, $f6
/* B3020 800FCC60 304203FF */  andi       $v0, $v0, 0x3FF
/* B3024 800FCC64 00021080 */  sll        $v0, $v0, 2
/* B3028 800FCC68 00431021 */  addu       $v0, $v0, $v1
/* B302C 800FCC6C C4400000 */  lwc1       $f0, 0x0($v0)
/* B3030 800FCC70 03E00008 */  jr         $ra
/* B3034 800FCC74 00000000 */   nop

glabel func_race_800FCC78
/* B3038 800FCC78 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* B303C 800FCC7C AFB10074 */  sw         $s1, 0x74($sp)
/* B3040 800FCC80 00808821 */  addu       $s1, $a0, $zero
/* B3044 800FCC84 AFBF007C */  sw         $ra, 0x7C($sp)
/* B3048 800FCC88 AFB20078 */  sw         $s2, 0x78($sp)
/* B304C 800FCC8C AFB00070 */  sw         $s0, 0x70($sp)
/* B3050 800FCC90 F7BC00A0 */  sdc1       $f28, 0xA0($sp)
/* B3054 800FCC94 F7BA0098 */  sdc1       $f26, 0x98($sp)
/* B3058 800FCC98 F7B80090 */  sdc1       $f24, 0x90($sp)
/* B305C 800FCC9C F7B60088 */  sdc1       $f22, 0x88($sp)
/* B3060 800FCCA0 F7B40080 */  sdc1       $f20, 0x80($sp)
/* B3064 800FCCA4 8E2200D4 */  lw         $v0, 0xD4($s1)
/* B3068 800FCCA8 44850000 */  mtc1       $a1, $f0
/* B306C 800FCCAC 14400003 */  bnez       $v0, .Lrace_800FCCBC
/* B3070 800FCCB0 24020001 */   addiu     $v0, $zero, 0x1
/* B3074 800FCCB4 0803F5F5 */  j          .Lrace_800FD7D4
/* B3078 800FCCB8 A2220000 */   sb        $v0, 0x0($s1)
.Lrace_800FCCBC:
/* B307C 800FCCBC 8E240148 */  lw         $a0, 0x148($s1)
/* B3080 800FCCC0 8C820024 */  lw         $v0, 0x24($a0)
/* B3084 800FCCC4 10400005 */  beqz       $v0, .Lrace_800FCCDC
/* B3088 800FCCC8 00000000 */   nop
/* B308C 800FCCCC 0C0129DA */  jal        func_8004A768
/* B3090 800FCCD0 00000000 */   nop
/* B3094 800FCCD4 0803F5F5 */  j          .Lrace_800FD7D4
/* B3098 800FCCD8 00000000 */   nop
.Lrace_800FCCDC:
/* B309C 800FCCDC 44801000 */  mtc1       $zero, $f2
/* B30A0 800FCCE0 4602003E */  c.le.s     $f0, $f2
/* B30A4 800FCCE4 00000000 */  nop
/* B30A8 800FCCE8 45000005 */  bc1f       .Lrace_800FCD00
/* B30AC 800FCCEC 00000000 */   nop
/* B30B0 800FCCF0 92220000 */  lbu        $v0, 0x0($s1)
/* B30B4 800FCCF4 30420001 */  andi       $v0, $v0, 0x1
/* B30B8 800FCCF8 104002B6 */  beqz       $v0, .Lrace_800FD7D4
/* B30BC 800FCCFC 46001006 */   mov.s     $f0, $f2
.Lrace_800FCD00:
/* B30C0 800FCD00 92230000 */  lbu        $v1, 0x0($s1)
/* B30C4 800FCD04 3C01800D */  lui        $at, %hi(D_race_800CD094)
/* B30C8 800FCD08 C422D094 */  lwc1       $f2, %lo(D_race_800CD094)($at)
/* B30CC 800FCD0C 00601021 */  addu       $v0, $v1, $zero
/* B30D0 800FCD10 304200F0 */  andi       $v0, $v0, 0xF0
/* B30D4 800FCD14 4600103C */  c.lt.s     $f2, $f0
/* B30D8 800FCD18 A2230001 */  sb         $v1, 0x1($s1)
/* B30DC 800FCD1C 45000003 */  bc1f       .Lrace_800FCD2C
/* B30E0 800FCD20 A2220000 */   sb        $v0, 0x0($s1)
/* B30E4 800FCD24 0803F34C */  j          .Lrace_800FCD30
/* B30E8 800FCD28 E62200CC */   swc1      $f2, 0xCC($s1)
.Lrace_800FCD2C:
/* B30EC 800FCD2C E62000CC */  swc1       $f0, 0xCC($s1)
.Lrace_800FCD30:
/* B30F0 800FCD30 C62000CC */  lwc1       $f0, 0xCC($s1)
/* B30F4 800FCD34 4600040D */  trunc.w.s  $f16, $f0
/* B30F8 800FCD38 E63000D0 */  swc1       $f16, 0xD0($s1)
/* B30FC 800FCD3C 0C03F0D6 */  jal        func_race_800FC358
/* B3100 800FCD40 02202021 */   addu      $a0, $s1, $zero
/* B3104 800FCD44 92220002 */  lbu        $v0, 0x2($s1)
/* B3108 800FCD48 10400016 */  beqz       $v0, .Lrace_800FCDA4
/* B310C 800FCD4C 26230088 */   addiu     $v1, $s1, 0x88
/* B3110 800FCD50 26220048 */  addiu      $v0, $s1, 0x48
/* B3114 800FCD54 26240078 */  addiu      $a0, $s1, 0x78
.Lrace_800FCD58:
/* B3118 800FCD58 8C490000 */  lw         $t1, 0x0($v0)
/* B311C 800FCD5C 8C4A0004 */  lw         $t2, 0x4($v0)
/* B3120 800FCD60 8C4B0008 */  lw         $t3, 0x8($v0)
/* B3124 800FCD64 8C48000C */  lw         $t0, 0xC($v0)
/* B3128 800FCD68 AC690000 */  sw         $t1, 0x0($v1)
/* B312C 800FCD6C AC6A0004 */  sw         $t2, 0x4($v1)
/* B3130 800FCD70 AC6B0008 */  sw         $t3, 0x8($v1)
/* B3134 800FCD74 AC68000C */  sw         $t0, 0xC($v1)
/* B3138 800FCD78 24420010 */  addiu      $v0, $v0, 0x10
/* B313C 800FCD7C 1444FFF6 */  bne        $v0, $a0, .Lrace_800FCD58
/* B3140 800FCD80 24630010 */   addiu     $v1, $v1, 0x10
/* B3144 800FCD84 8E290078 */  lw         $t1, 0x78($s1)
/* B3148 800FCD88 8E2A007C */  lw         $t2, 0x7C($s1)
/* B314C 800FCD8C 8E2B0080 */  lw         $t3, 0x80($s1)
/* B3150 800FCD90 8E280084 */  lw         $t0, 0x84($s1)
/* B3154 800FCD94 AE2900B8 */  sw         $t1, 0xB8($s1)
/* B3158 800FCD98 AE2A00BC */  sw         $t2, 0xBC($s1)
/* B315C 800FCD9C AE2B00C0 */  sw         $t3, 0xC0($s1)
/* B3160 800FCDA0 AE2800C4 */  sw         $t0, 0xC4($s1)
.Lrace_800FCDA4:
/* B3164 800FCDA4 92230002 */  lbu        $v1, 0x2($s1)
/* B3168 800FCDA8 24020001 */  addiu      $v0, $zero, 0x1
/* B316C 800FCDAC 1062005D */  beq        $v1, $v0, .Lrace_800FCF24
/* B3170 800FCDB0 28620002 */   slti      $v0, $v1, 0x2
/* B3174 800FCDB4 50400005 */  beql       $v0, $zero, .Lrace_800FCDCC
/* B3178 800FCDB8 24020002 */   addiu     $v0, $zero, 0x2
/* B317C 800FCDBC 10600009 */  beqz       $v1, .Lrace_800FCDE4
/* B3180 800FCDC0 262500E4 */   addiu     $a1, $s1, 0xE4
/* B3184 800FCDC4 0803F5F5 */  j          .Lrace_800FD7D4
/* B3188 800FCDC8 00000000 */   nop
.Lrace_800FCDCC:
/* B318C 800FCDCC 1062024C */  beq        $v1, $v0, .Lrace_800FD700
/* B3190 800FCDD0 24020003 */   addiu     $v0, $zero, 0x3
/* B3194 800FCDD4 10620053 */  beq        $v1, $v0, .Lrace_800FCF24
/* B3198 800FCDD8 00000000 */   nop
/* B319C 800FCDDC 0803F5F5 */  j          .Lrace_800FD7D4
/* B31A0 800FCDE0 00000000 */   nop
.Lrace_800FCDE4:
/* B31A4 800FCDE4 8E2200D4 */  lw         $v0, 0xD4($s1)
/* B31A8 800FCDE8 8C43005C */  lw         $v1, 0x5C($v0)
/* B31AC 800FCDEC 8C620024 */  lw         $v0, 0x24($v1)
/* B31B0 800FCDF0 84440010 */  lh         $a0, 0x10($v0)
/* B31B4 800FCDF4 8C420014 */  lw         $v0, 0x14($v0)
/* B31B8 800FCDF8 0040F809 */  jalr       $v0
/* B31BC 800FCDFC 00642021 */   addu      $a0, $v1, $a0
/* B31C0 800FCE00 C62200C8 */  lwc1       $f2, 0xC8($s1)
/* B31C4 800FCE04 44800000 */  mtc1       $zero, $f0
/* B31C8 800FCE08 46001032 */  c.eq.s     $f2, $f0
/* B31CC 800FCE0C 00000000 */  nop
/* B31D0 800FCE10 45000007 */  bc1f       .Lrace_800FCE30
/* B31D4 800FCE14 26240088 */   addiu     $a0, $s1, 0x88
/* B31D8 800FCE18 0C00109A */  jal        func_80004268
/* B31DC 800FCE1C 262500B8 */   addiu     $a1, $s1, 0xB8
/* B31E0 800FCE20 26240008 */  addiu      $a0, $s1, 0x8
/* B31E4 800FCE24 0C00109A */  jal        func_80004268
/* B31E8 800FCE28 26250038 */   addiu     $a1, $s1, 0x38
/* B31EC 800FCE2C C62200C8 */  lwc1       $f2, 0xC8($s1)
.Lrace_800FCE30:
/* B31F0 800FCE30 C62000CC */  lwc1       $f0, 0xCC($s1)
/* B31F4 800FCE34 46001000 */  add.s      $f0, $f2, $f0
/* B31F8 800FCE38 3C01800D */  lui        $at, %hi(D_race_800CD098)
/* B31FC 800FCE3C C422D098 */  lwc1       $f2, %lo(D_race_800CD098)($at)
/* B3200 800FCE40 4600103C */  c.lt.s     $f2, $f0
/* B3204 800FCE44 00000000 */  nop
/* B3208 800FCE48 45000005 */  bc1f       .Lrace_800FCE60
/* B320C 800FCE4C E62000C8 */   swc1      $f0, 0xC8($s1)
/* B3210 800FCE50 3C01800D */  lui        $at, %hi(D_race_800CD09C)
/* B3214 800FCE54 C438D09C */  lwc1       $f24, %lo(D_race_800CD09C)($at)
/* B3218 800FCE58 0803F399 */  j          .Lrace_800FCE64
/* B321C 800FCE5C E62200C8 */   swc1      $f2, 0xC8($s1)
.Lrace_800FCE60:
/* B3220 800FCE60 46020603 */  div.s      $f24, $f0, $f2
.Lrace_800FCE64:
/* B3224 800FCE64 C624002C */  lwc1       $f4, 0x2C($s1)
/* B3228 800FCE68 C62000AC */  lwc1       $f0, 0xAC($s1)
/* B322C 800FCE6C 46002101 */  sub.s      $f4, $f4, $f0
/* B3230 800FCE70 2624002C */  addiu      $a0, $s1, 0x2C
/* B3234 800FCE74 E7A40010 */  swc1       $f4, 0x10($sp)
/* B3238 800FCE78 46182102 */  mul.s      $f4, $f4, $f24
/* B323C 800FCE7C 262200AC */  addiu      $v0, $s1, 0xAC
/* B3240 800FCE80 C4800004 */  lwc1       $f0, 0x4($a0)
/* B3244 800FCE84 C4420004 */  lwc1       $f2, 0x4($v0)
/* B3248 800FCE88 46020001 */  sub.s      $f0, $f0, $f2
/* B324C 800FCE8C 27A30010 */  addiu      $v1, $sp, 0x10
/* B3250 800FCE90 46180182 */  mul.s      $f6, $f0, $f24
/* B3254 800FCE94 E4600004 */  swc1       $f0, 0x4($v1)
/* B3258 800FCE98 C4800008 */  lwc1       $f0, 0x8($a0)
/* B325C 800FCE9C C4420008 */  lwc1       $f2, 0x8($v0)
/* B3260 800FCEA0 46020001 */  sub.s      $f0, $f0, $f2
/* B3264 800FCEA4 46180082 */  mul.s      $f2, $f0, $f24
/* B3268 800FCEA8 E4600008 */  swc1       $f0, 0x8($v1)
/* B326C 800FCEAC E7A40050 */  swc1       $f4, 0x50($sp)
/* B3270 800FCEB0 E7A60054 */  swc1       $f6, 0x54($sp)
/* B3274 800FCEB4 E7A20058 */  swc1       $f2, 0x58($sp)
/* B3278 800FCEB8 C62000AC */  lwc1       $f0, 0xAC($s1)
/* B327C 800FCEBC 46040000 */  add.s      $f0, $f0, $f4
/* B3280 800FCEC0 E620006C */  swc1       $f0, 0x6C($s1)
/* B3284 800FCEC4 C4400004 */  lwc1       $f0, 0x4($v0)
/* B3288 800FCEC8 C7A20054 */  lwc1       $f2, 0x54($sp)
/* B328C 800FCECC 26250038 */  addiu      $a1, $s1, 0x38
/* B3290 800FCED0 46020000 */  add.s      $f0, $f0, $f2
/* B3294 800FCED4 26300078 */  addiu      $s0, $s1, 0x78
/* B3298 800FCED8 2623006C */  addiu      $v1, $s1, 0x6C
/* B329C 800FCEDC E4600004 */  swc1       $f0, 0x4($v1)
/* B32A0 800FCEE0 C4400008 */  lwc1       $f0, 0x8($v0)
/* B32A4 800FCEE4 C7A20058 */  lwc1       $f2, 0x58($sp)
/* B32A8 800FCEE8 02003821 */  addu       $a3, $s0, $zero
/* B32AC 800FCEEC 46020000 */  add.s      $f0, $f0, $f2
/* B32B0 800FCEF0 4406C000 */  mfc1       $a2, $f24
/* B32B4 800FCEF4 262400B8 */  addiu      $a0, $s1, 0xB8
/* B32B8 800FCEF8 0C0012B8 */  jal        func_80004AE0
/* B32BC 800FCEFC E4600008 */   swc1      $f0, 0x8($v1)
/* B32C0 800FCF00 02002021 */  addu       $a0, $s0, $zero
/* B32C4 800FCF04 0C001055 */  jal        func_80004154
/* B32C8 800FCF08 26250048 */   addiu     $a1, $s1, 0x48
/* B32CC 800FCF0C 0C03F05B */  jal        func_race_800FC16C
/* B32D0 800FCF10 02202021 */   addu      $a0, $s1, $zero
/* B32D4 800FCF14 0C03EFF6 */  jal        func_race_800FBFD8
/* B32D8 800FCF18 02202021 */   addu      $a0, $s1, $zero
/* B32DC 800FCF1C 0803F5F5 */  j          .Lrace_800FD7D4
/* B32E0 800FCF20 00000000 */   nop
.Lrace_800FCF24:
/* B32E4 800FCF24 8E2200D4 */  lw         $v0, 0xD4($s1)
/* B32E8 800FCF28 8C43005C */  lw         $v1, 0x5C($v0)
/* B32EC 800FCF2C 8C660024 */  lw         $a2, 0x24($v1)
/* B32F0 800FCF30 27A50040 */  addiu      $a1, $sp, 0x40
/* B32F4 800FCF34 84C40010 */  lh         $a0, 0x10($a2)
/* B32F8 800FCF38 245003FC */  addiu      $s0, $v0, 0x3FC
/* B32FC 800FCF3C 00642021 */  addu       $a0, $v1, $a0
/* B3300 800FCF40 8CC30014 */  lw         $v1, 0x14($a2)
/* B3304 800FCF44 0060F809 */  jalr       $v1
/* B3308 800FCF48 24520C70 */   addiu     $s2, $v0, 0xC70
/* B330C 800FCF4C 8E2200D4 */  lw         $v0, 0xD4($s1)
/* B3310 800FCF50 8C42005C */  lw         $v0, 0x5C($v0)
/* B3314 800FCF54 44802000 */  mtc1       $zero, $f4
/* B3318 800FCF58 C4420028 */  lwc1       $f2, 0x28($v0)
/* B331C 800FCF5C E7A20020 */  swc1       $f2, 0x20($sp)
/* B3320 800FCF60 C446002C */  lwc1       $f6, 0x2C($v0)
/* B3324 800FCF64 E7A60024 */  swc1       $f6, 0x24($sp)
/* B3328 800FCF68 C4400030 */  lwc1       $f0, 0x30($v0)
/* B332C 800FCF6C 46041032 */  c.eq.s     $f2, $f4
/* B3330 800FCF70 00000000 */  nop
/* B3334 800FCF74 4500001A */  bc1f       .Lrace_800FCFE0
/* B3338 800FCF78 E7A00028 */   swc1      $f0, 0x28($sp)
/* B333C 800FCF7C 46043032 */  c.eq.s     $f6, $f4
/* B3340 800FCF80 00000000 */  nop
/* B3344 800FCF84 45000017 */  bc1f       .Lrace_800FCFE4
/* B3348 800FCF88 27A40020 */   addiu     $a0, $sp, 0x20
/* B334C 800FCF8C C62000D8 */  lwc1       $f0, 0xD8($s1)
/* B3350 800FCF90 46040032 */  c.eq.s     $f0, $f4
/* B3354 800FCF94 00000000 */  nop
/* B3358 800FCF98 4500000B */  bc1f       .Lrace_800FCFC8
/* B335C 800FCF9C 00000000 */   nop
/* B3360 800FCFA0 C62000DC */  lwc1       $f0, 0xDC($s1)
/* B3364 800FCFA4 46040032 */  c.eq.s     $f0, $f4
/* B3368 800FCFA8 00000000 */  nop
/* B336C 800FCFAC 45000006 */  bc1f       .Lrace_800FCFC8
/* B3370 800FCFB0 00000000 */   nop
/* B3374 800FCFB4 3C01800D */  lui        $at, %hi(D_race_800CD0A0)
/* B3378 800FCFB8 C420D0A0 */  lwc1       $f0, %lo(D_race_800CD0A0)($at)
/* B337C 800FCFBC E62400DC */  swc1       $f4, 0xDC($s1)
/* B3380 800FCFC0 E62400E0 */  swc1       $f4, 0xE0($s1)
/* B3384 800FCFC4 E62000D8 */  swc1       $f0, 0xD8($s1)
.Lrace_800FCFC8:
/* B3388 800FCFC8 8E2900D8 */  lw         $t1, 0xD8($s1)
/* B338C 800FCFCC 8E2A00DC */  lw         $t2, 0xDC($s1)
/* B3390 800FCFD0 8E2B00E0 */  lw         $t3, 0xE0($s1)
/* B3394 800FCFD4 AFA90020 */  sw         $t1, 0x20($sp)
/* B3398 800FCFD8 AFAA0024 */  sw         $t2, 0x24($sp)
/* B339C 800FCFDC AFAB0028 */  sw         $t3, 0x28($sp)
.Lrace_800FCFE0:
/* B33A0 800FCFE0 27A40020 */  addiu      $a0, $sp, 0x20
.Lrace_800FCFE4:
/* B33A4 800FCFE4 00802821 */  addu       $a1, $a0, $zero
/* B33A8 800FCFE8 0C000EFC */  jal        func_80003BF0
/* B33AC 800FCFEC AFA00028 */   sw        $zero, 0x28($sp)
/* B33B0 800FCFF0 C62000E0 */  lwc1       $f0, 0xE0($s1)
/* B33B4 800FCFF4 4480A000 */  mtc1       $zero, $f20
/* B33B8 800FCFF8 46140032 */  c.eq.s     $f0, $f20
/* B33BC 800FCFFC 00000000 */  nop
/* B33C0 800FD000 45010004 */  bc1t       .Lrace_800FD014
/* B33C4 800FD004 262400D8 */   addiu     $a0, $s1, 0xD8
/* B33C8 800FD008 E63400E0 */  swc1       $f20, 0xE0($s1)
/* B33CC 800FD00C 0C000EFC */  jal        func_80003BF0
/* B33D0 800FD010 00802821 */   addu      $a1, $a0, $zero
.Lrace_800FD014:
/* B33D4 800FD014 92220001 */  lbu        $v0, 0x1($s1)
/* B33D8 800FD018 30420001 */  andi       $v0, $v0, 0x1
/* B33DC 800FD01C 1040000A */  beqz       $v0, .Lrace_800FD048
/* B33E0 800FD020 00000000 */   nop
/* B33E4 800FD024 E63400F4 */  swc1       $f20, 0xF4($s1)
/* B33E8 800FD028 8FA90020 */  lw         $t1, 0x20($sp)
/* B33EC 800FD02C 8FAA0024 */  lw         $t2, 0x24($sp)
/* B33F0 800FD030 8FAB0028 */  lw         $t3, 0x28($sp)
/* B33F4 800FD034 AE2900D8 */  sw         $t1, 0xD8($s1)
/* B33F8 800FD038 AE2A00DC */  sw         $t2, 0xDC($s1)
/* B33FC 800FD03C AE2B00E0 */  sw         $t3, 0xE0($s1)
/* B3400 800FD040 0803F4BA */  j          .Lrace_800FD2E8
/* B3404 800FD044 00000000 */   nop
.Lrace_800FD048:
/* B3408 800FD048 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B340C 800FD04C 30420002 */  andi       $v0, $v0, 0x2
/* B3410 800FD050 10400009 */  beqz       $v0, .Lrace_800FD078
/* B3414 800FD054 00000000 */   nop
/* B3418 800FD058 8E2900D8 */  lw         $t1, 0xD8($s1)
/* B341C 800FD05C 8E2A00DC */  lw         $t2, 0xDC($s1)
/* B3420 800FD060 8E2B00E0 */  lw         $t3, 0xE0($s1)
/* B3424 800FD064 AFA90020 */  sw         $t1, 0x20($sp)
/* B3428 800FD068 AFAA0024 */  sw         $t2, 0x24($sp)
/* B342C 800FD06C AFAB0028 */  sw         $t3, 0x28($sp)
/* B3430 800FD070 0803F499 */  j          .Lrace_800FD264
/* B3434 800FD074 00000000 */   nop
.Lrace_800FD078:
/* B3438 800FD078 C6040650 */  lwc1       $f4, 0x650($s0)
/* B343C 800FD07C 46142032 */  c.eq.s     $f4, $f20
/* B3440 800FD080 00000000 */  nop
/* B3444 800FD084 45010018 */  bc1t       .Lrace_800FD0E8
/* B3448 800FD088 E7A40060 */   swc1      $f4, 0x60($sp)
/* B344C 800FD08C 8E2200D4 */  lw         $v0, 0xD4($s1)
/* B3450 800FD090 3C01800D */  lui        $at, %hi(D_race_800CD0A4)
/* B3454 800FD094 C420D0A4 */  lwc1       $f0, %lo(D_race_800CD0A4)($at)
/* B3458 800FD098 C4420A18 */  lwc1       $f2, 0xA18($v0)
/* B345C 800FD09C 46001002 */  mul.s      $f0, $f2, $f0
/* B3460 800FD0A0 E7A20064 */  swc1       $f2, 0x64($sp)
/* B3464 800FD0A4 3C01800D */  lui        $at, %hi(D_race_800CD0A8)
/* B3468 800FD0A8 C422D0A8 */  lwc1       $f2, %lo(D_race_800CD0A8)($at)
/* B346C 800FD0AC 46040583 */  div.s      $f22, $f0, $f4
/* B3470 800FD0B0 4602B03C */  c.lt.s     $f22, $f2
/* B3474 800FD0B4 00000000 */  nop
/* B3478 800FD0B8 45000003 */  bc1f       .Lrace_800FD0C8
/* B347C 800FD0BC 00000000 */   nop
/* B3480 800FD0C0 0803F43B */  j          .Lrace_800FD0EC
/* B3484 800FD0C4 46001586 */   mov.s     $f22, $f2
.Lrace_800FD0C8:
/* B3488 800FD0C8 3C01800D */  lui        $at, %hi(D_race_800CD0AC)
/* B348C 800FD0CC C420D0AC */  lwc1       $f0, %lo(D_race_800CD0AC)($at)
/* B3490 800FD0D0 4616003C */  c.lt.s     $f0, $f22
/* B3494 800FD0D4 00000000 */  nop
/* B3498 800FD0D8 45030004 */  bc1tl      .Lrace_800FD0EC
/* B349C 800FD0DC 46000586 */   mov.s     $f22, $f0
/* B34A0 800FD0E0 0803F43B */  j          .Lrace_800FD0EC
/* B34A4 800FD0E4 00000000 */   nop
.Lrace_800FD0E8:
/* B34A8 800FD0E8 4600A586 */  mov.s      $f22, $f20
.Lrace_800FD0EC:
/* B34AC 800FD0EC C6220104 */  lwc1       $f2, 0x104($s1)
/* B34B0 800FD0F0 C62000CC */  lwc1       $f0, 0xCC($s1)
/* B34B4 800FD0F4 46001082 */  mul.s      $f2, $f2, $f0
/* B34B8 800FD0F8 3C01800D */  lui        $at, %hi(D_race_800CD0B0)
/* B34BC 800FD0FC C420D0B0 */  lwc1       $f0, %lo(D_race_800CD0B0)($at)
/* B34C0 800FD100 46001080 */  add.s      $f2, $f2, $f0
/* B34C4 800FD104 C63400F4 */  lwc1       $f20, 0xF4($s1)
/* B34C8 800FD108 4616A501 */  sub.s      $f20, $f20, $f22
/* B34CC 800FD10C 46020003 */  div.s      $f0, $f0, $f2
/* B34D0 800FD110 4600A502 */  mul.s      $f20, $f20, $f0
/* B34D4 800FD114 4614B500 */  add.s      $f20, $f22, $f20
/* B34D8 800FD118 4600A306 */  mov.s      $f12, $f20
/* B34DC 800FD11C 0C006D60 */  jal        sinf
/* B34E0 800FD120 E63400F4 */   swc1      $f20, 0xF4($s1)
/* B34E4 800FD124 4600A306 */  mov.s      $f12, $f20
/* B34E8 800FD128 0C006BCC */  jal        cosf
/* B34EC 800FD12C E7A00060 */   swc1      $f0, 0x60($sp)
/* B34F0 800FD130 C7A60020 */  lwc1       $f6, 0x20($sp)
/* B34F4 800FD134 46060182 */  mul.s      $f6, $f0, $f6
/* B34F8 800FD138 C7A40060 */  lwc1       $f4, 0x60($sp)
/* B34FC 800FD13C C7A20024 */  lwc1       $f2, 0x24($sp)
/* B3500 800FD140 46022202 */  mul.s      $f8, $f4, $f2
/* B3504 800FD144 00000000 */  nop
/* B3508 800FD148 46020082 */  mul.s      $f2, $f0, $f2
/* B350C 800FD14C 46083181 */  sub.s      $f6, $f6, $f8
/* B3510 800FD150 46062102 */  mul.s      $f4, $f4, $f6
/* B3514 800FD154 46041080 */  add.s      $f2, $f2, $f4
/* B3518 800FD158 E7A60020 */  swc1       $f6, 0x20($sp)
/* B351C 800FD15C E7A20024 */  swc1       $f2, 0x24($sp)
/* B3520 800FD160 C62C00D8 */  lwc1       $f12, 0xD8($s1)
/* B3524 800FD164 C62E00DC */  lwc1       $f14, 0xDC($s1)
/* B3528 800FD168 0C03F2C9 */  jal        func_race_800FCB24
/* B352C 800FD16C E7A00064 */   swc1      $f0, 0x64($sp)
/* B3530 800FD170 C7AC0020 */  lwc1       $f12, 0x20($sp)
/* B3534 800FD174 C7AE0024 */  lwc1       $f14, 0x24($sp)
/* B3538 800FD178 0C03F2C9 */  jal        func_race_800FCB24
/* B353C 800FD17C E7A00064 */   swc1      $f0, 0x64($sp)
/* B3540 800FD180 C7A20064 */  lwc1       $f2, 0x64($sp)
/* B3544 800FD184 46001581 */  sub.s      $f22, $f2, $f0
/* B3548 800FD188 3C01800D */  lui        $at, %hi(D_race_800CD0B4)
/* B354C 800FD18C C422D0B4 */  lwc1       $f2, %lo(D_race_800CD0B4)($at)
/* B3550 800FD190 4602B03C */  c.lt.s     $f22, $f2
/* B3554 800FD194 00000000 */  nop
/* B3558 800FD198 45010007 */  bc1t       .Lrace_800FD1B8
/* B355C 800FD19C E7A00060 */   swc1      $f0, 0x60($sp)
/* B3560 800FD1A0 3C01800D */  lui        $at, %hi(D_race_800CD0B8)
/* B3564 800FD1A4 C420D0B8 */  lwc1       $f0, %lo(D_race_800CD0B8)($at)
/* B3568 800FD1A8 4616003C */  c.lt.s     $f0, $f22
/* B356C 800FD1AC 00000000 */  nop
/* B3570 800FD1B0 4500002C */  bc1f       .Lrace_800FD264
/* B3574 800FD1B4 00000000 */   nop
.Lrace_800FD1B8:
/* B3578 800FD1B8 3C01800D */  lui        $at, %hi(D_race_800CD0BC)
/* B357C 800FD1BC C420D0BC */  lwc1       $f0, %lo(D_race_800CD0BC)($at)
/* B3580 800FD1C0 4600B03C */  c.lt.s     $f22, $f0
/* B3584 800FD1C4 00000000 */  nop
/* B3588 800FD1C8 45000008 */  bc1f       .Lrace_800FD1EC
/* B358C 800FD1CC 00000000 */   nop
/* B3590 800FD1D0 3C01800D */  lui        $at, %hi(D_race_800CD0C0)
/* B3594 800FD1D4 C422D0C0 */  lwc1       $f2, %lo(D_race_800CD0C0)($at)
/* B3598 800FD1D8 4602B580 */  add.s      $f22, $f22, $f2
.Lrace_800FD1DC:
/* B359C 800FD1DC 4600B03C */  c.lt.s     $f22, $f0
/* B35A0 800FD1E0 00000000 */  nop
/* B35A4 800FD1E4 4503FFFD */  bc1tl      .Lrace_800FD1DC
/* B35A8 800FD1E8 4602B580 */   add.s     $f22, $f22, $f2
.Lrace_800FD1EC:
/* B35AC 800FD1EC 3C01800D */  lui        $at, %hi(D_race_800CD0C4)
/* B35B0 800FD1F0 C420D0C4 */  lwc1       $f0, %lo(D_race_800CD0C4)($at)
/* B35B4 800FD1F4 4616003C */  c.lt.s     $f0, $f22
/* B35B8 800FD1F8 00000000 */  nop
/* B35BC 800FD1FC 45000008 */  bc1f       .Lrace_800FD220
/* B35C0 800FD200 00000000 */   nop
/* B35C4 800FD204 3C01800D */  lui        $at, %hi(D_race_800CD0C8)
/* B35C8 800FD208 C422D0C8 */  lwc1       $f2, %lo(D_race_800CD0C8)($at)
/* B35CC 800FD20C 4602B581 */  sub.s      $f22, $f22, $f2
.Lrace_800FD210:
/* B35D0 800FD210 4616003C */  c.lt.s     $f0, $f22
/* B35D4 800FD214 00000000 */  nop
/* B35D8 800FD218 4503FFFD */  bc1tl      .Lrace_800FD210
/* B35DC 800FD21C 4602B581 */   sub.s     $f22, $f22, $f2
.Lrace_800FD220:
/* B35E0 800FD220 C6200108 */  lwc1       $f0, 0x108($s1)
/* B35E4 800FD224 C62200CC */  lwc1       $f2, 0xCC($s1)
/* B35E8 800FD228 46020002 */  mul.s      $f0, $f0, $f2
/* B35EC 800FD22C 3C01800D */  lui        $at, %hi(D_race_800CD0CC)
/* B35F0 800FD230 C422D0CC */  lwc1       $f2, %lo(D_race_800CD0CC)($at)
/* B35F4 800FD234 46020000 */  add.s      $f0, $f0, $f2
/* B35F8 800FD238 46001083 */  div.s      $f2, $f2, $f0
/* B35FC 800FD23C 4602B102 */  mul.s      $f4, $f22, $f2
/* B3600 800FD240 C7A00060 */  lwc1       $f0, 0x60($sp)
/* B3604 800FD244 46040580 */  add.s      $f22, $f0, $f4
/* B3608 800FD248 E7A20064 */  swc1       $f2, 0x64($sp)
/* B360C 800FD24C 0C006D60 */  jal        sinf
/* B3610 800FD250 4600B306 */   mov.s     $f12, $f22
/* B3614 800FD254 4600B306 */  mov.s      $f12, $f22
/* B3618 800FD258 0C006BCC */  jal        cosf
/* B361C 800FD25C E7A00024 */   swc1      $f0, 0x24($sp)
/* B3620 800FD260 E7A00020 */  swc1       $f0, 0x20($sp)
.Lrace_800FD264:
/* B3624 800FD264 C6220100 */  lwc1       $f2, 0x100($s1)
/* B3628 800FD268 C62000CC */  lwc1       $f0, 0xCC($s1)
/* B362C 800FD26C 46001082 */  mul.s      $f2, $f2, $f0
/* B3630 800FD270 C62400E4 */  lwc1       $f4, 0xE4($s1)
/* B3634 800FD274 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* B3638 800FD278 460A2101 */  sub.s      $f4, $f4, $f10
/* B363C 800FD27C 3C01800D */  lui        $at, %hi(D_race_800CD0D0)
/* B3640 800FD280 C420D0D0 */  lwc1       $f0, %lo(D_race_800CD0D0)($at)
/* B3644 800FD284 46001080 */  add.s      $f2, $f2, $f0
/* B3648 800FD288 E7A40010 */  swc1       $f4, 0x10($sp)
/* B364C 800FD28C 46020603 */  div.s      $f24, $f0, $f2
/* B3650 800FD290 46182102 */  mul.s      $f4, $f4, $f24
/* B3654 800FD294 262200E4 */  addiu      $v0, $s1, 0xE4
/* B3658 800FD298 C7A60044 */  lwc1       $f6, 0x44($sp)
/* B365C 800FD29C C4400004 */  lwc1       $f0, 0x4($v0)
/* B3660 800FD2A0 46060001 */  sub.s      $f0, $f0, $f6
/* B3664 800FD2A4 27A30010 */  addiu      $v1, $sp, 0x10
/* B3668 800FD2A8 46180302 */  mul.s      $f12, $f0, $f24
/* B366C 800FD2AC E4600004 */  swc1       $f0, 0x4($v1)
/* B3670 800FD2B0 C4400008 */  lwc1       $f0, 0x8($v0)
/* B3674 800FD2B4 C7A20048 */  lwc1       $f2, 0x48($sp)
/* B3678 800FD2B8 46020001 */  sub.s      $f0, $f0, $f2
/* B367C 800FD2BC 46180202 */  mul.s      $f8, $f0, $f24
/* B3680 800FD2C0 46045280 */  add.s      $f10, $f10, $f4
/* B3684 800FD2C4 E4600008 */  swc1       $f0, 0x8($v1)
/* B3688 800FD2C8 E7A40050 */  swc1       $f4, 0x50($sp)
/* B368C 800FD2CC 460C3180 */  add.s      $f6, $f6, $f12
/* B3690 800FD2D0 E7AA0040 */  swc1       $f10, 0x40($sp)
/* B3694 800FD2D4 E7AC0054 */  swc1       $f12, 0x54($sp)
/* B3698 800FD2D8 46081080 */  add.s      $f2, $f2, $f8
/* B369C 800FD2DC E7A60044 */  swc1       $f6, 0x44($sp)
/* B36A0 800FD2E0 E7A80058 */  swc1       $f8, 0x58($sp)
/* B36A4 800FD2E4 E7A20048 */  swc1       $f2, 0x48($sp)
.Lrace_800FD2E8:
/* B36A8 800FD2E8 8FA90040 */  lw         $t1, 0x40($sp)
/* B36AC 800FD2EC 8FAA0044 */  lw         $t2, 0x44($sp)
/* B36B0 800FD2F0 8FAB0048 */  lw         $t3, 0x48($sp)
/* B36B4 800FD2F4 AE2900E4 */  sw         $t1, 0xE4($s1)
/* B36B8 800FD2F8 AE2A00E8 */  sw         $t2, 0xE8($s1)
/* B36BC 800FD2FC AE2B00EC */  sw         $t3, 0xEC($s1)
/* B36C0 800FD300 8E22011C */  lw         $v0, 0x11C($s1)
/* B36C4 800FD304 14400022 */  bnez       $v0, .Lrace_800FD390
/* B36C8 800FD308 00000000 */   nop
/* B36CC 800FD30C 8E420014 */  lw         $v0, 0x14($s2)
/* B36D0 800FD310 30420001 */  andi       $v0, $v0, 0x1
/* B36D4 800FD314 10400021 */  beqz       $v0, .Lrace_800FD39C
/* B36D8 800FD318 AE22011C */   sw        $v0, 0x11C($s1)
/* B36DC 800FD31C 8E2200D4 */  lw         $v0, 0xD4($s1)
/* B36E0 800FD320 8C430D60 */  lw         $v1, 0xD60($v0)
/* B36E4 800FD324 24020001 */  addiu      $v0, $zero, 0x1
/* B36E8 800FD328 1062000D */  beq        $v1, $v0, .Lrace_800FD360
/* B36EC 800FD32C 00000000 */   nop
/* B36F0 800FD330 10600007 */  beqz       $v1, .Lrace_800FD350
/* B36F4 800FD334 24020002 */   addiu     $v0, $zero, 0x2
/* B36F8 800FD338 1062000D */  beq        $v1, $v0, .Lrace_800FD370
/* B36FC 800FD33C 24020003 */   addiu     $v0, $zero, 0x3
/* B3700 800FD340 1062000F */  beq        $v1, $v0, .Lrace_800FD380
/* B3704 800FD344 00000000 */   nop
/* B3708 800FD348 0803F4E7 */  j          .Lrace_800FD39C
/* B370C 800FD34C 00000000 */   nop
.Lrace_800FD350:
/* B3710 800FD350 3C01800D */  lui        $at, %hi(D_race_800CD0D4)
/* B3714 800FD354 C420D0D4 */  lwc1       $f0, %lo(D_race_800CD0D4)($at)
/* B3718 800FD358 0803F4E7 */  j          .Lrace_800FD39C
/* B371C 800FD35C E6200120 */   swc1      $f0, 0x120($s1)
.Lrace_800FD360:
/* B3720 800FD360 3C01800D */  lui        $at, %hi(D_race_800CD0D8)
/* B3724 800FD364 C420D0D8 */  lwc1       $f0, %lo(D_race_800CD0D8)($at)
/* B3728 800FD368 0803F4E7 */  j          .Lrace_800FD39C
/* B372C 800FD36C E6200120 */   swc1      $f0, 0x120($s1)
.Lrace_800FD370:
/* B3730 800FD370 3C01800D */  lui        $at, %hi(D_race_800CD0DC)
/* B3734 800FD374 C420D0DC */  lwc1       $f0, %lo(D_race_800CD0DC)($at)
/* B3738 800FD378 0803F4E7 */  j          .Lrace_800FD39C
/* B373C 800FD37C E6200120 */   swc1      $f0, 0x120($s1)
.Lrace_800FD380:
/* B3740 800FD380 3C01800D */  lui        $at, %hi(D_race_800CD0E0)
/* B3744 800FD384 C420D0E0 */  lwc1       $f0, %lo(D_race_800CD0E0)($at)
/* B3748 800FD388 0803F4E7 */  j          .Lrace_800FD39C
/* B374C 800FD38C E6200120 */   swc1      $f0, 0x120($s1)
.Lrace_800FD390:
/* B3750 800FD390 8E420014 */  lw         $v0, 0x14($s2)
/* B3754 800FD394 30420001 */  andi       $v0, $v0, 0x1
/* B3758 800FD398 AE22011C */  sw         $v0, 0x11C($s1)
.Lrace_800FD39C:
/* B375C 800FD39C C6240120 */  lwc1       $f4, 0x120($s1)
/* B3760 800FD3A0 3C01800D */  lui        $at, %hi(D_race_800CD0E4)
/* B3764 800FD3A4 C420D0E4 */  lwc1       $f0, %lo(D_race_800CD0E4)($at)
/* B3768 800FD3A8 4600203C */  c.lt.s     $f4, $f0
/* B376C 800FD3AC 00000000 */  nop
/* B3770 800FD3B0 4500002E */  bc1f       .Lrace_800FD46C
/* B3774 800FD3B4 00000000 */   nop
/* B3778 800FD3B8 44800000 */  mtc1       $zero, $f0
/* B377C 800FD3BC 4600203C */  c.lt.s     $f4, $f0
/* B3780 800FD3C0 00000000 */  nop
/* B3784 800FD3C4 45000006 */  bc1f       .Lrace_800FD3E0
/* B3788 800FD3C8 00000000 */   nop
/* B378C 800FD3CC C62000CC */  lwc1       $f0, 0xCC($s1)
/* B3790 800FD3D0 3C01800D */  lui        $at, %hi(D_race_800CD0E8)
/* B3794 800FD3D4 C422D0E8 */  lwc1       $f2, %lo(D_race_800CD0E8)($at)
/* B3798 800FD3D8 0803F4FB */  j          .Lrace_800FD3EC
/* B379C 800FD3DC 00000000 */   nop
.Lrace_800FD3E0:
/* B37A0 800FD3E0 C62000CC */  lwc1       $f0, 0xCC($s1)
/* B37A4 800FD3E4 3C01800D */  lui        $at, %hi(D_race_800CD0EC)
/* B37A8 800FD3E8 C422D0EC */  lwc1       $f2, %lo(D_race_800CD0EC)($at)
.Lrace_800FD3EC:
/* B37AC 800FD3EC 46020002 */  mul.s      $f0, $f0, $f2
/* B37B0 800FD3F0 46002000 */  add.s      $f0, $f4, $f0
/* B37B4 800FD3F4 E6200120 */  swc1       $f0, 0x120($s1)
/* B37B8 800FD3F8 C6220120 */  lwc1       $f2, 0x120($s1)
/* B37BC 800FD3FC 3C01800D */  lui        $at, %hi(D_race_800CD0F0)
/* B37C0 800FD400 C420D0F0 */  lwc1       $f0, %lo(D_race_800CD0F0)($at)
/* B37C4 800FD404 4602003C */  c.lt.s     $f0, $f2
/* B37C8 800FD408 00000000 */  nop
/* B37CC 800FD40C 45000004 */  bc1f       .Lrace_800FD420
/* B37D0 800FD410 00000000 */   nop
/* B37D4 800FD414 C63A0118 */  lwc1       $f26, 0x118($s1)
/* B37D8 800FD418 0803F51C */  j          .Lrace_800FD470
/* B37DC 800FD41C E6200120 */   swc1      $f0, 0x120($s1)
.Lrace_800FD420:
/* B37E0 800FD420 44800000 */  mtc1       $zero, $f0
/* B37E4 800FD424 4600103C */  c.lt.s     $f2, $f0
/* B37E8 800FD428 00000000 */  nop
/* B37EC 800FD42C 45000005 */  bc1f       .Lrace_800FD444
/* B37F0 800FD430 00000000 */   nop
/* B37F4 800FD434 C6200118 */  lwc1       $f0, 0x118($s1)
/* B37F8 800FD438 46001002 */  mul.s      $f0, $f2, $f0
/* B37FC 800FD43C 0803F513 */  j          .Lrace_800FD44C
/* B3800 800FD440 46000687 */   neg.s     $f26, $f0
.Lrace_800FD444:
/* B3804 800FD444 C6200118 */  lwc1       $f0, 0x118($s1)
/* B3808 800FD448 46001682 */  mul.s      $f26, $f2, $f0
.Lrace_800FD44C:
/* B380C 800FD44C 3C01800D */  lui        $at, %hi(D_race_800CD0F4)
/* B3810 800FD450 C420D0F4 */  lwc1       $f0, %lo(D_race_800CD0F4)($at)
/* B3814 800FD454 4600D03C */  c.lt.s     $f26, $f0
/* B3818 800FD458 00000000 */  nop
/* B381C 800FD45C 45030004 */  bc1tl      .Lrace_800FD470
/* B3820 800FD460 46000686 */   mov.s     $f26, $f0
/* B3824 800FD464 0803F51C */  j          .Lrace_800FD470
/* B3828 800FD468 00000000 */   nop
.Lrace_800FD46C:
/* B382C 800FD46C C63A0118 */  lwc1       $f26, 0x118($s1)
.Lrace_800FD470:
/* B3830 800FD470 C7A00020 */  lwc1       $f0, 0x20($sp)
/* B3834 800FD474 44801000 */  mtc1       $zero, $f2
/* B3838 800FD478 46020032 */  c.eq.s     $f0, $f2
/* B383C 800FD47C 00000000 */  nop
/* B3840 800FD480 45000006 */  bc1f       .Lrace_800FD49C
/* B3844 800FD484 00000000 */   nop
/* B3848 800FD488 C7A00024 */  lwc1       $f0, 0x24($sp)
/* B384C 800FD48C 46020032 */  c.eq.s     $f0, $f2
/* B3850 800FD490 00000000 */  nop
/* B3854 800FD494 45010008 */  bc1t       .Lrace_800FD4B8
/* B3858 800FD498 262400D8 */   addiu     $a0, $s1, 0xD8
.Lrace_800FD49C:
/* B385C 800FD49C 8FA90020 */  lw         $t1, 0x20($sp)
/* B3860 800FD4A0 8FAA0024 */  lw         $t2, 0x24($sp)
/* B3864 800FD4A4 8FAB0028 */  lw         $t3, 0x28($sp)
/* B3868 800FD4A8 AE2900D8 */  sw         $t1, 0xD8($s1)
/* B386C 800FD4AC AE2A00DC */  sw         $t2, 0xDC($s1)
/* B3870 800FD4B0 AE2B00E0 */  sw         $t3, 0xE0($s1)
/* B3874 800FD4B4 262400D8 */  addiu      $a0, $s1, 0xD8
.Lrace_800FD4B8:
/* B3878 800FD4B8 3C01800D */  lui        $at, %hi(D_race_800CD0F8)
/* B387C 800FD4BC C420D0F8 */  lwc1       $f0, %lo(D_race_800CD0F8)($at)
/* B3880 800FD4C0 00802821 */  addu       $a1, $a0, $zero
/* B3884 800FD4C4 AFA00030 */  sw         $zero, 0x30($sp)
/* B3888 800FD4C8 AFA00034 */  sw         $zero, 0x34($sp)
/* B388C 800FD4CC E7A00038 */  swc1       $f0, 0x38($sp)
/* B3890 800FD4D0 0C000EFC */  jal        func_80003BF0
/* B3894 800FD4D4 AE2000E0 */   sw        $zero, 0xE0($s1)
/* B3898 800FD4D8 24020003 */  addiu      $v0, $zero, 0x3
/* B389C 800FD4DC 92230002 */  lbu        $v1, 0x2($s1)
/* B38A0 800FD4E0 C63C010C */  lwc1       $f28, 0x10C($s1)
/* B38A4 800FD4E4 14620045 */  bne        $v1, $v0, .Lrace_800FD5FC
/* B38A8 800FD4E8 00000000 */   nop
/* B38AC 800FD4EC C62200C8 */  lwc1       $f2, 0xC8($s1)
/* B38B0 800FD4F0 C62000CC */  lwc1       $f0, 0xCC($s1)
/* B38B4 800FD4F4 46001300 */  add.s      $f12, $f2, $f0
/* B38B8 800FD4F8 3C01800D */  lui        $at, %hi(D_race_800CD0FC)
/* B38BC 800FD4FC C424D0FC */  lwc1       $f4, %lo(D_race_800CD0FC)($at)
/* B38C0 800FD500 4604603C */  c.lt.s     $f12, $f4
/* B38C4 800FD504 00000000 */  nop
/* B38C8 800FD508 45000030 */  bc1f       .Lrace_800FD5CC
/* B38CC 800FD50C E62C00C8 */   swc1      $f12, 0xC8($s1)
/* B38D0 800FD510 3C01800D */  lui        $at, %hi(D_race_800CD100)
/* B38D4 800FD514 C422D100 */  lwc1       $f2, %lo(D_race_800CD100)($at)
/* B38D8 800FD518 46046003 */  div.s      $f0, $f12, $f4
/* B38DC 800FD51C 46001581 */  sub.s      $f22, $f2, $f0
/* B38E0 800FD520 C6240130 */  lwc1       $f4, 0x130($s1)
/* B38E4 800FD524 4604B102 */  mul.s      $f4, $f22, $f4
/* B38E8 800FD528 C6280128 */  lwc1       $f8, 0x128($s1)
/* B38EC 800FD52C 4608B202 */  mul.s      $f8, $f22, $f8
/* B38F0 800FD530 C6220124 */  lwc1       $f2, 0x124($s1)
/* B38F4 800FD534 4602B082 */  mul.s      $f2, $f22, $f2
/* B38F8 800FD538 C626012C */  lwc1       $f6, 0x12C($s1)
/* B38FC 800FD53C 4606B182 */  mul.s      $f6, $f22, $f6
/* B3900 800FD540 C6200118 */  lwc1       $f0, 0x118($s1)
/* B3904 800FD544 46040680 */  add.s      $f26, $f0, $f4
/* B3908 800FD548 C6340110 */  lwc1       $f20, 0x110($s1)
/* B390C 800FD54C 4600E006 */  mov.s      $f0, $f28
/* B3910 800FD550 46020700 */  add.s      $f28, $f0, $f2
/* B3914 800FD554 3C01800D */  lui        $at, %hi(D_race_800CD104)
/* B3918 800FD558 C420D104 */  lwc1       $f0, %lo(D_race_800CD104)($at)
/* B391C 800FD55C C6220114 */  lwc1       $f2, 0x114($s1)
/* B3920 800FD560 4608A500 */  add.s      $f20, $f20, $f8
/* B3924 800FD564 46006603 */  div.s      $f24, $f12, $f0
/* B3928 800FD568 4600C306 */  mov.s      $f12, $f24
/* B392C 800FD56C 0C006D60 */  jal        sinf
/* B3930 800FD570 46061580 */   add.s     $f22, $f2, $f6
/* B3934 800FD574 4600C306 */  mov.s      $f12, $f24
/* B3938 800FD578 0C006BCC */  jal        cosf
/* B393C 800FD57C E7A00068 */   swc1      $f0, 0x68($sp)
/* B3940 800FD580 C62200D8 */  lwc1       $f2, 0xD8($s1)
/* B3944 800FD584 46001082 */  mul.s      $f2, $f2, $f0
/* B3948 800FD588 C62400DC */  lwc1       $f4, 0xDC($s1)
/* B394C 800FD58C C7A60068 */  lwc1       $f6, 0x68($sp)
/* B3950 800FD590 46062102 */  mul.s      $f4, $f4, $f6
/* B3954 800FD594 46041081 */  sub.s      $f2, $f2, $f4
/* B3958 800FD598 4602B082 */  mul.s      $f2, $f22, $f2
/* B395C 800FD59C E7A20020 */  swc1       $f2, 0x20($sp)
/* B3960 800FD5A0 C62400DC */  lwc1       $f4, 0xDC($s1)
/* B3964 800FD5A4 46002102 */  mul.s      $f4, $f4, $f0
/* B3968 800FD5A8 C62200D8 */  lwc1       $f2, 0xD8($s1)
/* B396C 800FD5AC 46061082 */  mul.s      $f2, $f2, $f6
/* B3970 800FD5B0 46022100 */  add.s      $f4, $f4, $f2
/* B3974 800FD5B4 4604B102 */  mul.s      $f4, $f22, $f4
/* B3978 800FD5B8 4600A507 */  neg.s      $f20, $f20
/* B397C 800FD5BC E7A0006C */  swc1       $f0, 0x6C($sp)
/* B3980 800FD5C0 E7B40028 */  swc1       $f20, 0x28($sp)
/* B3984 800FD5C4 0803F58A */  j          .Lrace_800FD628
/* B3988 800FD5C8 E7A40024 */   swc1      $f4, 0x24($sp)
.Lrace_800FD5CC:
/* B398C 800FD5CC C62000D8 */  lwc1       $f0, 0xD8($s1)
/* B3990 800FD5D0 C6220114 */  lwc1       $f2, 0x114($s1)
/* B3994 800FD5D4 46020002 */  mul.s      $f0, $f0, $f2
/* B3998 800FD5D8 C63A0118 */  lwc1       $f26, 0x118($s1)
/* B399C 800FD5DC E62400C8 */  swc1       $f4, 0xC8($s1)
/* B39A0 800FD5E0 46000007 */  neg.s      $f0, $f0
/* B39A4 800FD5E4 E7A00020 */  swc1       $f0, 0x20($sp)
/* B39A8 800FD5E8 C62000DC */  lwc1       $f0, 0xDC($s1)
/* B39AC 800FD5EC C6220114 */  lwc1       $f2, 0x114($s1)
/* B39B0 800FD5F0 46020002 */  mul.s      $f0, $f0, $f2
/* B39B4 800FD5F4 0803F586 */  j          .Lrace_800FD618
/* B39B8 800FD5F8 46000007 */   neg.s     $f0, $f0
.Lrace_800FD5FC:
/* B39BC 800FD5FC C62000D8 */  lwc1       $f0, 0xD8($s1)
/* B39C0 800FD600 C6220114 */  lwc1       $f2, 0x114($s1)
/* B39C4 800FD604 46020002 */  mul.s      $f0, $f0, $f2
/* B39C8 800FD608 E7A00020 */  swc1       $f0, 0x20($sp)
/* B39CC 800FD60C C62000DC */  lwc1       $f0, 0xDC($s1)
/* B39D0 800FD610 C6220114 */  lwc1       $f2, 0x114($s1)
/* B39D4 800FD614 46020002 */  mul.s      $f0, $f0, $f2
.Lrace_800FD618:
/* B39D8 800FD618 E7A00024 */  swc1       $f0, 0x24($sp)
/* B39DC 800FD61C C6200110 */  lwc1       $f0, 0x110($s1)
/* B39E0 800FD620 46000007 */  neg.s      $f0, $f0
/* B39E4 800FD624 E7A00028 */  swc1       $f0, 0x28($sp)
.Lrace_800FD628:
/* B39E8 800FD628 92220001 */  lbu        $v0, 0x1($s1)
/* B39EC 800FD62C 30420001 */  andi       $v0, $v0, 0x1
/* B39F0 800FD630 1040001D */  beqz       $v0, .Lrace_800FD6A8
/* B39F4 800FD634 27A20010 */   addiu     $v0, $sp, 0x10
/* B39F8 800FD638 C7A40020 */  lwc1       $f4, 0x20($sp)
/* B39FC 800FD63C 461A2182 */  mul.s      $f6, $f4, $f26
/* B3A00 800FD640 C7A00028 */  lwc1       $f0, 0x28($sp)
/* B3A04 800FD644 C7A20024 */  lwc1       $f2, 0x24($sp)
/* B3A08 800FD648 461C0001 */  sub.s      $f0, $f0, $f28
/* B3A0C 800FD64C E7A40010 */  swc1       $f4, 0x10($sp)
/* B3A10 800FD650 E7A20014 */  swc1       $f2, 0x14($sp)
/* B3A14 800FD654 E7A00018 */  swc1       $f0, 0x18($sp)
/* B3A18 800FD658 E7A60050 */  swc1       $f6, 0x50($sp)
/* B3A1C 800FD65C C4400004 */  lwc1       $f0, 0x4($v0)
/* B3A20 800FD660 461A0002 */  mul.s      $f0, $f0, $f26
/* B3A24 800FD664 E7A00054 */  swc1       $f0, 0x54($sp)
/* B3A28 800FD668 C4420008 */  lwc1       $f2, 0x8($v0)
/* B3A2C 800FD66C 461A1082 */  mul.s      $f2, $f2, $f26
/* B3A30 800FD670 C7A00040 */  lwc1       $f0, 0x40($sp)
/* B3A34 800FD674 46060001 */  sub.s      $f0, $f0, $f6
/* B3A38 800FD678 E7A20058 */  swc1       $f2, 0x58($sp)
/* B3A3C 800FD67C E620002C */  swc1       $f0, 0x2C($s1)
/* B3A40 800FD680 C7A00044 */  lwc1       $f0, 0x44($sp)
/* B3A44 800FD684 C7A20054 */  lwc1       $f2, 0x54($sp)
/* B3A48 800FD688 46020001 */  sub.s      $f0, $f0, $f2
/* B3A4C 800FD68C 2622002C */  addiu      $v0, $s1, 0x2C
/* B3A50 800FD690 E4400004 */  swc1       $f0, 0x4($v0)
/* B3A54 800FD694 C7A00048 */  lwc1       $f0, 0x48($sp)
/* B3A58 800FD698 C7A20058 */  lwc1       $f2, 0x58($sp)
/* B3A5C 800FD69C 46020001 */  sub.s      $f0, $f0, $f2
/* B3A60 800FD6A0 0803F5BA */  j          .Lrace_800FD6E8
/* B3A64 800FD6A4 E4400008 */   swc1      $f0, 0x8($v0)
.Lrace_800FD6A8:
/* B3A68 800FD6A8 C62200A0 */  lwc1       $f2, 0xA0($s1)
/* B3A6C 800FD6AC 461A1082 */  mul.s      $f2, $f2, $f26
/* B3A70 800FD6B0 C62400A4 */  lwc1       $f4, 0xA4($s1)
/* B3A74 800FD6B4 461A2102 */  mul.s      $f4, $f4, $f26
/* B3A78 800FD6B8 C7A00040 */  lwc1       $f0, 0x40($sp)
/* B3A7C 800FD6BC 46020001 */  sub.s      $f0, $f0, $f2
/* B3A80 800FD6C0 C62200A8 */  lwc1       $f2, 0xA8($s1)
/* B3A84 800FD6C4 461C1081 */  sub.s      $f2, $f2, $f28
/* B3A88 800FD6C8 E620002C */  swc1       $f0, 0x2C($s1)
/* B3A8C 800FD6CC C7A00044 */  lwc1       $f0, 0x44($sp)
/* B3A90 800FD6D0 46040001 */  sub.s      $f0, $f0, $f4
/* B3A94 800FD6D4 461A1082 */  mul.s      $f2, $f2, $f26
/* B3A98 800FD6D8 E6200030 */  swc1       $f0, 0x30($s1)
/* B3A9C 800FD6DC C7A00048 */  lwc1       $f0, 0x48($sp)
/* B3AA0 800FD6E0 46020001 */  sub.s      $f0, $f0, $f2
/* B3AA4 800FD6E4 E6200034 */  swc1       $f0, 0x34($s1)
.Lrace_800FD6E8:
/* B3AA8 800FD6E8 27A40020 */  addiu      $a0, $sp, 0x20
/* B3AAC 800FD6EC 27A50030 */  addiu      $a1, $sp, 0x30
/* B3AB0 800FD6F0 0C03EF70 */  jal        func_race_800FBDC0
/* B3AB4 800FD6F4 26260008 */   addiu     $a2, $s1, 0x8
/* B3AB8 800FD6F8 0803F5F3 */  j          .Lrace_800FD7CC
/* B3ABC 800FD6FC 00000000 */   nop
.Lrace_800FD700:
/* B3AC0 800FD700 8E2200D4 */  lw         $v0, 0xD4($s1)
/* B3AC4 800FD704 8C43005C */  lw         $v1, 0x5C($v0)
/* B3AC8 800FD708 8C620024 */  lw         $v0, 0x24($v1)
/* B3ACC 800FD70C 262500E4 */  addiu      $a1, $s1, 0xE4
/* B3AD0 800FD710 84440010 */  lh         $a0, 0x10($v0)
/* B3AD4 800FD714 8C420014 */  lw         $v0, 0x14($v0)
/* B3AD8 800FD718 0040F809 */  jalr       $v0
/* B3ADC 800FD71C 00642021 */   addu      $a0, $v1, $a0
/* B3AE0 800FD720 8E2200D4 */  lw         $v0, 0xD4($s1)
/* B3AE4 800FD724 8C50005C */  lw         $s0, 0x5C($v0)
/* B3AE8 800FD728 C6000028 */  lwc1       $f0, 0x28($s0)
/* B3AEC 800FD72C E7A00020 */  swc1       $f0, 0x20($sp)
/* B3AF0 800FD730 C600002C */  lwc1       $f0, 0x2C($s0)
/* B3AF4 800FD734 27A40020 */  addiu      $a0, $sp, 0x20
/* B3AF8 800FD738 E7A00024 */  swc1       $f0, 0x24($sp)
/* B3AFC 800FD73C C6000030 */  lwc1       $f0, 0x30($s0)
/* B3B00 800FD740 27A50030 */  addiu      $a1, $sp, 0x30
/* B3B04 800FD744 E7A00028 */  swc1       $f0, 0x28($sp)
/* B3B08 800FD748 C6040040 */  lwc1       $f4, 0x40($s0)
/* B3B0C 800FD74C 26260008 */  addiu      $a2, $s1, 0x8
/* B3B10 800FD750 E7A40030 */  swc1       $f4, 0x30($sp)
/* B3B14 800FD754 C6000044 */  lwc1       $f0, 0x44($s0)
/* B3B18 800FD758 46002107 */  neg.s      $f4, $f4
/* B3B1C 800FD75C E7A00034 */  swc1       $f0, 0x34($sp)
/* B3B20 800FD760 C6020048 */  lwc1       $f2, 0x48($s0)
/* B3B24 800FD764 46000007 */  neg.s      $f0, $f0
/* B3B28 800FD768 E7A40030 */  swc1       $f4, 0x30($sp)
/* B3B2C 800FD76C E7A00034 */  swc1       $f0, 0x34($sp)
/* B3B30 800FD770 E7A20038 */  swc1       $f2, 0x38($sp)
/* B3B34 800FD774 46001087 */  neg.s      $f2, $f2
/* B3B38 800FD778 0C03EF70 */  jal        func_race_800FBDC0
/* B3B3C 800FD77C E7A20038 */   swc1      $f2, 0x38($sp)
/* B3B40 800FD780 8E020024 */  lw         $v0, 0x24($s0)
/* B3B44 800FD784 2625002C */  addiu      $a1, $s1, 0x2C
/* B3B48 800FD788 84440010 */  lh         $a0, 0x10($v0)
/* B3B4C 800FD78C 8C420014 */  lw         $v0, 0x14($v0)
/* B3B50 800FD790 0040F809 */  jalr       $v0
/* B3B54 800FD794 02042021 */   addu      $a0, $s0, $a0
/* B3B58 800FD798 92220005 */  lbu        $v0, 0x5($s1)
/* B3B5C 800FD79C 10400006 */  beqz       $v0, .Lrace_800FD7B8
/* B3B60 800FD7A0 00000000 */   nop
/* B3B64 800FD7A4 C6200034 */  lwc1       $f0, 0x34($s1)
/* B3B68 800FD7A8 3C01800D */  lui        $at, %hi(D_race_800CD108)
/* B3B6C 800FD7AC C422D108 */  lwc1       $f2, %lo(D_race_800CD108)($at)
/* B3B70 800FD7B0 0803F5F2 */  j          .Lrace_800FD7C8
/* B3B74 800FD7B4 46020000 */   add.s     $f0, $f0, $f2
.Lrace_800FD7B8:
/* B3B78 800FD7B8 C6200034 */  lwc1       $f0, 0x34($s1)
/* B3B7C 800FD7BC 3C01800D */  lui        $at, %hi(D_race_800CD10C)
/* B3B80 800FD7C0 C422D10C */  lwc1       $f2, %lo(D_race_800CD10C)($at)
/* B3B84 800FD7C4 46020000 */  add.s      $f0, $f0, $f2
.Lrace_800FD7C8:
/* B3B88 800FD7C8 E6200034 */  swc1       $f0, 0x34($s1)
.Lrace_800FD7CC:
/* B3B8C 800FD7CC 0C03F186 */  jal        func_race_800FC618
/* B3B90 800FD7D0 02202021 */   addu      $a0, $s1, $zero
.Lrace_800FD7D4:
/* B3B94 800FD7D4 8FBF007C */  lw         $ra, 0x7C($sp)
/* B3B98 800FD7D8 8FB20078 */  lw         $s2, 0x78($sp)
/* B3B9C 800FD7DC 8FB10074 */  lw         $s1, 0x74($sp)
/* B3BA0 800FD7E0 8FB00070 */  lw         $s0, 0x70($sp)
/* B3BA4 800FD7E4 D7BC00A0 */  ldc1       $f28, 0xA0($sp)
/* B3BA8 800FD7E8 D7BA0098 */  ldc1       $f26, 0x98($sp)
/* B3BAC 800FD7EC D7B80090 */  ldc1       $f24, 0x90($sp)
/* B3BB0 800FD7F0 D7B60088 */  ldc1       $f22, 0x88($sp)
/* B3BB4 800FD7F4 D7B40080 */  ldc1       $f20, 0x80($sp)
/* B3BB8 800FD7F8 03E00008 */  jr         $ra
/* B3BBC 800FD7FC 27BD00A8 */   addiu     $sp, $sp, 0xA8

glabel func_race_800FD800
/* B3BC0 800FD800 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3BC4 800FD804 AFB00010 */  sw         $s0, 0x10($sp)
/* B3BC8 800FD808 AFBF0014 */  sw         $ra, 0x14($sp)
/* B3BCC 800FD80C 0C046A6C */  jal        func_race_8011A9B0
/* B3BD0 800FD810 00808021 */   addu      $s0, $a0, $zero
/* B3BD4 800FD814 3C02800D */  lui        $v0, %hi(D_race_800CD358)
/* B3BD8 800FD818 2442D358 */  addiu      $v0, $v0, %lo(D_race_800CD358)
/* B3BDC 800FD81C 26040738 */  addiu      $a0, $s0, 0x738
/* B3BE0 800FD820 0C04C394 */  jal        func_race_80130E50
/* B3BE4 800FD824 AE0200CC */   sw        $v0, 0xCC($s0)
/* B3BE8 800FD828 0C04C394 */  jal        func_race_80130E50
/* B3BEC 800FD82C 260407DC */   addiu     $a0, $s0, 0x7DC
/* B3BF0 800FD830 0C03F62D */  jal        func_race_800FD8B4
/* B3BF4 800FD834 02002021 */   addu      $a0, $s0, $zero
/* B3BF8 800FD838 02001021 */  addu       $v0, $s0, $zero
/* B3BFC 800FD83C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3C00 800FD840 8FB00010 */  lw         $s0, 0x10($sp)
/* B3C04 800FD844 03E00008 */  jr         $ra
/* B3C08 800FD848 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FD84C
/* B3C0C 800FD84C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B3C10 800FD850 AFB10014 */  sw         $s1, 0x14($sp)
/* B3C14 800FD854 00808821 */  addu       $s1, $a0, $zero
/* B3C18 800FD858 AFB00010 */  sw         $s0, 0x10($sp)
/* B3C1C 800FD85C 00A08021 */  addu       $s0, $a1, $zero
/* B3C20 800FD860 3C02800D */  lui        $v0, %hi(D_race_800CD358)
/* B3C24 800FD864 2442D358 */  addiu      $v0, $v0, %lo(D_race_800CD358)
/* B3C28 800FD868 AFBF0018 */  sw         $ra, 0x18($sp)
/* B3C2C 800FD86C 0C03F699 */  jal        func_race_800FDA64
/* B3C30 800FD870 AE2200CC */   sw        $v0, 0xCC($s1)
/* B3C34 800FD874 262407DC */  addiu      $a0, $s1, 0x7DC
/* B3C38 800FD878 0C04C39E */  jal        func_race_80130E78
/* B3C3C 800FD87C 24050002 */   addiu     $a1, $zero, 0x2
/* B3C40 800FD880 26240738 */  addiu      $a0, $s1, 0x738
/* B3C44 800FD884 0C04C39E */  jal        func_race_80130E78
/* B3C48 800FD888 24050002 */   addiu     $a1, $zero, 0x2
/* B3C4C 800FD88C 32100001 */  andi       $s0, $s0, 0x1
/* B3C50 800FD890 12000003 */  beqz       $s0, .Lrace_800FD8A0
/* B3C54 800FD894 00000000 */   nop
/* B3C58 800FD898 0C01FB5C */  jal        func_8007ED70
/* B3C5C 800FD89C 02202021 */   addu      $a0, $s1, $zero
.Lrace_800FD8A0:
/* B3C60 800FD8A0 8FBF0018 */  lw         $ra, 0x18($sp)
/* B3C64 800FD8A4 8FB10014 */  lw         $s1, 0x14($sp)
/* B3C68 800FD8A8 8FB00010 */  lw         $s0, 0x10($sp)
/* B3C6C 800FD8AC 03E00008 */  jr         $ra
/* B3C70 800FD8B0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800FD8B4
/* B3C74 800FD8B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3C78 800FD8B8 AFB00010 */  sw         $s0, 0x10($sp)
/* B3C7C 800FD8BC 00808021 */  addu       $s0, $a0, $zero
/* B3C80 800FD8C0 24050021 */  addiu      $a1, $zero, 0x21
/* B3C84 800FD8C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B3C88 800FD8C8 AE0006DC */  sw         $zero, 0x6DC($s0)
/* B3C8C 800FD8CC AE0006E0 */  sw         $zero, 0x6E0($s0)
/* B3C90 800FD8D0 AE0006E4 */  sw         $zero, 0x6E4($s0)
/* B3C94 800FD8D4 0C0400D4 */  jal        func_race_80100350
/* B3C98 800FD8D8 AE0006E8 */   sw        $zero, 0x6E8($s0)
/* B3C9C 800FD8DC 02002021 */  addu       $a0, $s0, $zero
/* B3CA0 800FD8E0 0C0400DF */  jal        func_race_8010037C
/* B3CA4 800FD8E4 24050021 */   addiu     $a1, $zero, 0x21
/* B3CA8 800FD8E8 02002021 */  addu       $a0, $s0, $zero
/* B3CAC 800FD8EC 0C0400EC */  jal        func_race_801003B0
/* B3CB0 800FD8F0 24050021 */   addiu     $a1, $zero, 0x21
/* B3CB4 800FD8F4 3C01800D */  lui        $at, %hi(D_race_800CD1D0)
/* B3CB8 800FD8F8 C422D1D0 */  lwc1       $f2, %lo(D_race_800CD1D0)($at)
/* B3CBC 800FD8FC 3C01800D */  lui        $at, %hi(D_race_800CD1D4)
/* B3CC0 800FD900 C420D1D4 */  lwc1       $f0, %lo(D_race_800CD1D4)($at)
/* B3CC4 800FD904 2402FFFF */  addiu      $v0, $zero, -0x1
/* B3CC8 800FD908 AE000724 */  sw         $zero, 0x724($s0)
/* B3CCC 800FD90C AE000730 */  sw         $zero, 0x730($s0)
/* B3CD0 800FD910 AE0007B0 */  sw         $zero, 0x7B0($s0)
/* B3CD4 800FD914 AE0007B8 */  sw         $zero, 0x7B8($s0)
/* B3CD8 800FD918 AE0007B4 */  sw         $zero, 0x7B4($s0)
/* B3CDC 800FD91C AE0007BC */  sw         $zero, 0x7BC($s0)
/* B3CE0 800FD920 AE0007C0 */  sw         $zero, 0x7C0($s0)
/* B3CE4 800FD924 AE0007C4 */  sw         $zero, 0x7C4($s0)
/* B3CE8 800FD928 AE0007C8 */  sw         $zero, 0x7C8($s0)
/* B3CEC 800FD92C AE0007CC */  sw         $zero, 0x7CC($s0)
/* B3CF0 800FD930 AE0007D0 */  sw         $zero, 0x7D0($s0)
/* B3CF4 800FD934 AE00065C */  sw         $zero, 0x65C($s0)
/* B3CF8 800FD938 AE00066C */  sw         $zero, 0x66C($s0)
/* B3CFC 800FD93C AE000668 */  sw         $zero, 0x668($s0)
/* B3D00 800FD940 AE000734 */  sw         $zero, 0x734($s0)
/* B3D04 800FD944 AE0006EC */  sw         $zero, 0x6EC($s0)
/* B3D08 800FD948 AE0006F0 */  sw         $zero, 0x6F0($s0)
/* B3D0C 800FD94C AE0006F4 */  sw         $zero, 0x6F4($s0)
/* B3D10 800FD950 AE0006F8 */  sw         $zero, 0x6F8($s0)
/* B3D14 800FD954 AE0006FC */  sw         $zero, 0x6FC($s0)
/* B3D18 800FD958 AE000700 */  sw         $zero, 0x700($s0)
/* B3D1C 800FD95C AE020728 */  sw         $v0, 0x728($s0)
/* B3D20 800FD960 AE00072C */  sw         $zero, 0x72C($s0)
/* B3D24 800FD964 E6020720 */  swc1       $f2, 0x720($s0)
/* B3D28 800FD968 E60007D4 */  swc1       $f0, 0x7D4($s0)
/* B3D2C 800FD96C E60007D8 */  swc1       $f0, 0x7D8($s0)
/* B3D30 800FD970 E6000704 */  swc1       $f0, 0x704($s0)
/* B3D34 800FD974 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3D38 800FD978 8FB00010 */  lw         $s0, 0x10($sp)
/* B3D3C 800FD97C 03E00008 */  jr         $ra
/* B3D40 800FD980 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FD984
/* B3D44 800FD984 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B3D48 800FD988 AFB1002C */  sw         $s1, 0x2C($sp)
/* B3D4C 800FD98C 8FB10058 */  lw         $s1, 0x58($sp)
/* B3D50 800FD990 AFB00028 */  sw         $s0, 0x28($sp)
/* B3D54 800FD994 00808021 */  addu       $s0, $a0, $zero
/* B3D58 800FD998 AFB20030 */  sw         $s2, 0x30($sp)
/* B3D5C 800FD99C 00A09021 */  addu       $s2, $a1, $zero
/* B3D60 800FD9A0 AFB40038 */  sw         $s4, 0x38($sp)
/* B3D64 800FD9A4 00C0A021 */  addu       $s4, $a2, $zero
/* B3D68 800FD9A8 AFB5003C */  sw         $s5, 0x3C($sp)
/* B3D6C 800FD9AC AFBF0040 */  sw         $ra, 0x40($sp)
/* B3D70 800FD9B0 AFB30034 */  sw         $s3, 0x34($sp)
/* B3D74 800FD9B4 8E0206DC */  lw         $v0, 0x6DC($s0)
/* B3D78 800FD9B8 8FB30060 */  lw         $s3, 0x60($sp)
/* B3D7C 800FD9BC 10400003 */  beqz       $v0, .Lrace_800FD9CC
/* B3D80 800FD9C0 00E0A821 */   addu      $s5, $a3, $zero
/* B3D84 800FD9C4 0C03F699 */  jal        func_race_800FDA64
/* B3D88 800FD9C8 00000000 */   nop
.Lrace_800FD9CC:
/* B3D8C 800FD9CC AE1206DC */  sw         $s2, 0x6DC($s0)
/* B3D90 800FD9D0 AE1406E0 */  sw         $s4, 0x6E0($s0)
/* B3D94 800FD9D4 AE1506E4 */  sw         $s5, 0x6E4($s0)
/* B3D98 800FD9D8 AE1306E8 */  sw         $s3, 0x6E8($s0)
/* B3D9C 800FD9DC C7A00068 */  lwc1       $f0, 0x68($sp)
/* B3DA0 800FD9E0 8FA20064 */  lw         $v0, 0x64($sp)
/* B3DA4 800FD9E4 8FA6005C */  lw         $a2, 0x5C($sp)
/* B3DA8 800FD9E8 E7A00014 */  swc1       $f0, 0x14($sp)
/* B3DAC 800FD9EC C7A0006C */  lwc1       $f0, 0x6C($sp)
/* B3DB0 800FD9F0 02002021 */  addu       $a0, $s0, $zero
/* B3DB4 800FD9F4 E7A00018 */  swc1       $f0, 0x18($sp)
/* B3DB8 800FD9F8 C7A00070 */  lwc1       $f0, 0x70($sp)
/* B3DBC 800FD9FC 02202821 */  addu       $a1, $s1, $zero
/* B3DC0 800FDA00 E7A0001C */  swc1       $f0, 0x1C($sp)
/* B3DC4 800FDA04 C7A00074 */  lwc1       $f0, 0x74($sp)
/* B3DC8 800FDA08 02603821 */  addu       $a3, $s3, $zero
/* B3DCC 800FDA0C AFA20010 */  sw         $v0, 0x10($sp)
/* B3DD0 800FDA10 0C046B06 */  jal        func_race_8011AC18
/* B3DD4 800FDA14 E7A00020 */   swc1      $f0, 0x20($sp)
/* B3DD8 800FDA18 8E220024 */  lw         $v0, 0x24($s1)
/* B3DDC 800FDA1C 260506EC */  addiu      $a1, $s0, 0x6EC
/* B3DE0 800FDA20 84440010 */  lh         $a0, 0x10($v0)
/* B3DE4 800FDA24 8C420014 */  lw         $v0, 0x14($v0)
/* B3DE8 800FDA28 0040F809 */  jalr       $v0
/* B3DEC 800FDA2C 02242021 */   addu      $a0, $s1, $a0
/* B3DF0 800FDA30 26240028 */  addiu      $a0, $s1, 0x28
/* B3DF4 800FDA34 0C00109A */  jal        func_80004268
/* B3DF8 800FDA38 260506F8 */   addiu     $a1, $s0, 0x6F8
/* B3DFC 800FDA3C AE000724 */  sw         $zero, 0x724($s0)
/* B3E00 800FDA40 8FBF0040 */  lw         $ra, 0x40($sp)
/* B3E04 800FDA44 8FB5003C */  lw         $s5, 0x3C($sp)
/* B3E08 800FDA48 8FB40038 */  lw         $s4, 0x38($sp)
/* B3E0C 800FDA4C 8FB30034 */  lw         $s3, 0x34($sp)
/* B3E10 800FDA50 8FB20030 */  lw         $s2, 0x30($sp)
/* B3E14 800FDA54 8FB1002C */  lw         $s1, 0x2C($sp)
/* B3E18 800FDA58 8FB00028 */  lw         $s0, 0x28($sp)
/* B3E1C 800FDA5C 03E00008 */  jr         $ra
/* B3E20 800FDA60 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_800FDA64
/* B3E24 800FDA64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3E28 800FDA68 AFB00010 */  sw         $s0, 0x10($sp)
/* B3E2C 800FDA6C AFBF0014 */  sw         $ra, 0x14($sp)
/* B3E30 800FDA70 0C0401AE */  jal        func_race_801006B8
/* B3E34 800FDA74 00808021 */   addu      $s0, $a0, $zero
/* B3E38 800FDA78 0C04C3CF */  jal        func_race_80130F3C
/* B3E3C 800FDA7C 26040738 */   addiu     $a0, $s0, 0x738
/* B3E40 800FDA80 0C03F62D */  jal        func_race_800FD8B4
/* B3E44 800FDA84 02002021 */   addu      $a0, $s0, $zero
/* B3E48 800FDA88 0C046B5A */  jal        func_race_8011AD68
/* B3E4C 800FDA8C 02002021 */   addu      $a0, $s0, $zero
/* B3E50 800FDA90 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3E54 800FDA94 8FB00010 */  lw         $s0, 0x10($sp)
/* B3E58 800FDA98 03E00008 */  jr         $ra
/* B3E5C 800FDA9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FDAA0
/* B3E60 800FDAA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3E64 800FDAA4 00803021 */  addu       $a2, $a0, $zero
/* B3E68 800FDAA8 3C020008 */  lui        $v0, (0x80002 >> 16)
/* B3E6C 800FDAAC AFBF0010 */  sw         $ra, 0x10($sp)
/* B3E70 800FDAB0 8CC406AC */  lw         $a0, 0x6AC($a2)
/* B3E74 800FDAB4 34420002 */  ori        $v0, $v0, (0x80002 & 0xFFFF)
/* B3E78 800FDAB8 00821024 */  and        $v0, $a0, $v0
/* B3E7C 800FDABC 14400014 */  bnez       $v0, .Lrace_800FDB10
/* B3E80 800FDAC0 3C020001 */   lui       $v0, (0x10000 >> 16)
/* B3E84 800FDAC4 8CC30730 */  lw         $v1, 0x730($a2)
/* B3E88 800FDAC8 00821025 */  or         $v0, $a0, $v0
/* B3E8C 800FDACC 10600004 */  beqz       $v1, .Lrace_800FDAE0
/* B3E90 800FDAD0 ACC206AC */   sw        $v0, 0x6AC($a2)
/* B3E94 800FDAD4 3C01800D */  lui        $at, %hi(D_race_800CD1D8)
/* B3E98 800FDAD8 C420D1D8 */  lwc1       $f0, %lo(D_race_800CD1D8)($at)
/* B3E9C 800FDADC E4C00764 */  swc1       $f0, 0x764($a2)
.Lrace_800FDAE0:
/* B3EA0 800FDAE0 3C01800D */  lui        $at, %hi(D_race_800CD1DC)
/* B3EA4 800FDAE4 C422D1DC */  lwc1       $f2, %lo(D_race_800CD1DC)($at)
/* B3EA8 800FDAE8 3C01800D */  lui        $at, %hi(D_race_800CD1E0)
/* B3EAC 800FDAEC C420D1E0 */  lwc1       $f0, %lo(D_race_800CD1E0)($at)
/* B3EB0 800FDAF0 8CC200CC */  lw         $v0, 0xCC($a2)
/* B3EB4 800FDAF4 E4C20720 */  swc1       $f2, 0x720($a2)
/* B3EB8 800FDAF8 E4C005F8 */  swc1       $f0, 0x5F8($a2)
/* B3EBC 800FDAFC 84440038 */  lh         $a0, 0x38($v0)
/* B3EC0 800FDB00 8C42003C */  lw         $v0, 0x3C($v0)
/* B3EC4 800FDB04 44051000 */  mfc1       $a1, $f2
/* B3EC8 800FDB08 0040F809 */  jalr       $v0
/* B3ECC 800FDB0C 00C42021 */   addu      $a0, $a2, $a0
.Lrace_800FDB10:
/* B3ED0 800FDB10 8FBF0010 */  lw         $ra, 0x10($sp)
/* B3ED4 800FDB14 03E00008 */  jr         $ra
/* B3ED8 800FDB18 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FDB1C
/* B3EDC 800FDB1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3EE0 800FDB20 00803021 */  addu       $a2, $a0, $zero
/* B3EE4 800FDB24 3C02FFFE */  lui        $v0, (0xFFFEFFFF >> 16)
/* B3EE8 800FDB28 3442FFFF */  ori        $v0, $v0, (0xFFFEFFFF & 0xFFFF)
/* B3EEC 800FDB2C AFBF0010 */  sw         $ra, 0x10($sp)
/* B3EF0 800FDB30 8CC306AC */  lw         $v1, 0x6AC($a2)
/* B3EF4 800FDB34 8CC40730 */  lw         $a0, 0x730($a2)
/* B3EF8 800FDB38 00621824 */  and        $v1, $v1, $v0
/* B3EFC 800FDB3C 10800009 */  beqz       $a0, .Lrace_800FDB64
/* B3F00 800FDB40 ACC306AC */   sw        $v1, 0x6AC($a2)
/* B3F04 800FDB44 3C020005 */  lui        $v0, (0x50002 >> 16)
/* B3F08 800FDB48 34420002 */  ori        $v0, $v0, (0x50002 & 0xFFFF)
/* B3F0C 800FDB4C 00621024 */  and        $v0, $v1, $v0
/* B3F10 800FDB50 14400004 */  bnez       $v0, .Lrace_800FDB64
/* B3F14 800FDB54 00000000 */   nop
/* B3F18 800FDB58 3C01800D */  lui        $at, %hi(D_race_800CD1E4)
/* B3F1C 800FDB5C C420D1E4 */  lwc1       $f0, %lo(D_race_800CD1E4)($at)
/* B3F20 800FDB60 E4C007D8 */  swc1       $f0, 0x7D8($a2)
.Lrace_800FDB64:
/* B3F24 800FDB64 3C01800D */  lui        $at, %hi(D_race_800CD1E8)
/* B3F28 800FDB68 C422D1E8 */  lwc1       $f2, %lo(D_race_800CD1E8)($at)
/* B3F2C 800FDB6C 3C01800D */  lui        $at, %hi(D_race_800CD1EC)
/* B3F30 800FDB70 C420D1EC */  lwc1       $f0, %lo(D_race_800CD1EC)($at)
/* B3F34 800FDB74 8CC200CC */  lw         $v0, 0xCC($a2)
/* B3F38 800FDB78 E4C20720 */  swc1       $f2, 0x720($a2)
/* B3F3C 800FDB7C E4C005F8 */  swc1       $f0, 0x5F8($a2)
/* B3F40 800FDB80 84440038 */  lh         $a0, 0x38($v0)
/* B3F44 800FDB84 8C42003C */  lw         $v0, 0x3C($v0)
/* B3F48 800FDB88 44051000 */  mfc1       $a1, $f2
/* B3F4C 800FDB8C 0040F809 */  jalr       $v0
/* B3F50 800FDB90 00C42021 */   addu      $a0, $a2, $a0
/* B3F54 800FDB94 8FBF0010 */  lw         $ra, 0x10($sp)
/* B3F58 800FDB98 03E00008 */  jr         $ra
/* B3F5C 800FDB9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FDBA0
/* B3F60 800FDBA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3F64 800FDBA4 AFB00010 */  sw         $s0, 0x10($sp)
/* B3F68 800FDBA8 00808021 */  addu       $s0, $a0, $zero
/* B3F6C 800FDBAC AFBF0014 */  sw         $ra, 0x14($sp)
/* B3F70 800FDBB0 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B3F74 800FDBB4 3C030001 */  lui        $v1, (0x10000 >> 16)
/* B3F78 800FDBB8 00431024 */  and        $v0, $v0, $v1
/* B3F7C 800FDBBC 10400004 */  beqz       $v0, .Lrace_800FDBD0
/* B3F80 800FDBC0 3C020008 */   lui       $v0, (0x80000 >> 16)
/* B3F84 800FDBC4 0C03F6C7 */  jal        func_race_800FDB1C
/* B3F88 800FDBC8 00000000 */   nop
/* B3F8C 800FDBCC 3C020008 */  lui        $v0, (0x80000 >> 16)
.Lrace_800FDBD0:
/* B3F90 800FDBD0 8E0306AC */  lw         $v1, 0x6AC($s0)
/* B3F94 800FDBD4 8E040730 */  lw         $a0, 0x730($s0)
/* B3F98 800FDBD8 00621825 */  or         $v1, $v1, $v0
/* B3F9C 800FDBDC 10800004 */  beqz       $a0, .Lrace_800FDBF0
/* B3FA0 800FDBE0 AE0306AC */   sw        $v1, 0x6AC($s0)
/* B3FA4 800FDBE4 3C01800D */  lui        $at, %hi(D_race_800CD1F0)
/* B3FA8 800FDBE8 C420D1F0 */  lwc1       $f0, %lo(D_race_800CD1F0)($at)
/* B3FAC 800FDBEC E6000764 */  swc1       $f0, 0x764($s0)
.Lrace_800FDBF0:
/* B3FB0 800FDBF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3FB4 800FDBF4 8FB00010 */  lw         $s0, 0x10($sp)
/* B3FB8 800FDBF8 03E00008 */  jr         $ra
/* B3FBC 800FDBFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FDC00
/* B3FC0 800FDC00 00802821 */  addu       $a1, $a0, $zero
/* B3FC4 800FDC04 3C02FFF7 */  lui        $v0, (0xFFF7FFFF >> 16)
/* B3FC8 800FDC08 3442FFFF */  ori        $v0, $v0, (0xFFF7FFFF & 0xFFFF)
/* B3FCC 800FDC0C 8CA306AC */  lw         $v1, 0x6AC($a1)
/* B3FD0 800FDC10 8CA40730 */  lw         $a0, 0x730($a1)
/* B3FD4 800FDC14 00621824 */  and        $v1, $v1, $v0
/* B3FD8 800FDC18 10800009 */  beqz       $a0, .Lrace_800FDC40
/* B3FDC 800FDC1C ACA306AC */   sw        $v1, 0x6AC($a1)
/* B3FE0 800FDC20 3C020005 */  lui        $v0, (0x50002 >> 16)
/* B3FE4 800FDC24 34420002 */  ori        $v0, $v0, (0x50002 & 0xFFFF)
/* B3FE8 800FDC28 00621024 */  and        $v0, $v1, $v0
/* B3FEC 800FDC2C 14400004 */  bnez       $v0, .Lrace_800FDC40
/* B3FF0 800FDC30 00000000 */   nop
/* B3FF4 800FDC34 3C01800D */  lui        $at, %hi(D_race_800CD1F4)
/* B3FF8 800FDC38 C420D1F4 */  lwc1       $f0, %lo(D_race_800CD1F4)($at)
/* B3FFC 800FDC3C E4A007D8 */  swc1       $f0, 0x7D8($a1)
.Lrace_800FDC40:
/* B4000 800FDC40 03E00008 */  jr         $ra
/* B4004 800FDC44 00000000 */   nop

glabel func_race_800FDC48
/* B4008 800FDC48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B400C 800FDC4C AFB00010 */  sw         $s0, 0x10($sp)
/* B4010 800FDC50 00808021 */  addu       $s0, $a0, $zero
/* B4014 800FDC54 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4018 800FDC58 F7B40018 */  sdc1       $f20, 0x18($sp)
/* B401C 800FDC5C C6020720 */  lwc1       $f2, 0x720($s0)
/* B4020 800FDC60 3C01800D */  lui        $at, %hi(D_race_800CD1F8)
/* B4024 800FDC64 C420D1F8 */  lwc1       $f0, %lo(D_race_800CD1F8)($at)
/* B4028 800FDC68 4485A000 */  mtc1       $a1, $f20
/* B402C 800FDC6C 46001032 */  c.eq.s     $f2, $f0
/* B4030 800FDC70 00000000 */  nop
/* B4034 800FDC74 45010028 */  bc1t       .Lrace_800FDD18
/* B4038 800FDC78 00000000 */   nop
/* B403C 800FDC7C 3C01800D */  lui        $at, %hi(D_race_800CD1FC)
/* B4040 800FDC80 C420D1FC */  lwc1       $f0, %lo(D_race_800CD1FC)($at)
/* B4044 800FDC84 4600A002 */  mul.s      $f0, $f20, $f0
/* B4048 800FDC88 3C01800D */  lui        $at, %hi(D_race_800CD200)
/* B404C 800FDC8C C422D200 */  lwc1       $f2, %lo(D_race_800CD200)($at)
/* B4050 800FDC90 4600103C */  c.lt.s     $f2, $f0
/* B4054 800FDC94 00000000 */  nop
/* B4058 800FDC98 45010007 */  bc1t       .Lrace_800FDCB8
/* B405C 800FDC9C E6000720 */   swc1      $f0, 0x720($s0)
/* B4060 800FDCA0 3C01800D */  lui        $at, %hi(D_race_800CD204)
/* B4064 800FDCA4 C422D204 */  lwc1       $f2, %lo(D_race_800CD204)($at)
/* B4068 800FDCA8 4602003C */  c.lt.s     $f0, $f2
/* B406C 800FDCAC 00000000 */  nop
/* B4070 800FDCB0 45000002 */  bc1f       .Lrace_800FDCBC
/* B4074 800FDCB4 00000000 */   nop
.Lrace_800FDCB8:
/* B4078 800FDCB8 E6020720 */  swc1       $f2, 0x720($s0)
.Lrace_800FDCBC:
/* B407C 800FDCBC 8E0200CC */  lw         $v0, 0xCC($s0)
/* B4080 800FDCC0 8E050720 */  lw         $a1, 0x720($s0)
/* B4084 800FDCC4 84440038 */  lh         $a0, 0x38($v0)
/* B4088 800FDCC8 8C42003C */  lw         $v0, 0x3C($v0)
/* B408C 800FDCCC 0040F809 */  jalr       $v0
/* B4090 800FDCD0 02042021 */   addu      $a0, $s0, $a0
/* B4094 800FDCD4 44800000 */  mtc1       $zero, $f0
/* B4098 800FDCD8 4600A03C */  c.lt.s     $f20, $f0
/* B409C 800FDCDC 00000000 */  nop
/* B40A0 800FDCE0 45030007 */  bc1tl      .Lrace_800FDD00
/* B40A4 800FDCE4 46000506 */   mov.s     $f20, $f0
/* B40A8 800FDCE8 3C01800D */  lui        $at, %hi(D_race_800CD208)
/* B40AC 800FDCEC C420D208 */  lwc1       $f0, %lo(D_race_800CD208)($at)
/* B40B0 800FDCF0 4614003C */  c.lt.s     $f0, $f20
/* B40B4 800FDCF4 00000000 */  nop
/* B40B8 800FDCF8 45030001 */  bc1tl      .Lrace_800FDD00
/* B40BC 800FDCFC 46000506 */   mov.s     $f20, $f0
.Lrace_800FDD00:
/* B40C0 800FDD00 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B40C4 800FDD04 3C030004 */  lui        $v1, (0x40000 >> 16)
/* B40C8 800FDD08 00431024 */  and        $v0, $v0, $v1
/* B40CC 800FDD0C 14400002 */  bnez       $v0, .Lrace_800FDD18
/* B40D0 800FDD10 E61407D4 */   swc1      $f20, 0x7D4($s0)
/* B40D4 800FDD14 E61407D8 */  swc1       $f20, 0x7D8($s0)
.Lrace_800FDD18:
/* B40D8 800FDD18 8FBF0014 */  lw         $ra, 0x14($sp)
/* B40DC 800FDD1C 8FB00010 */  lw         $s0, 0x10($sp)
/* B40E0 800FDD20 D7B40018 */  ldc1       $f20, 0x18($sp)
/* B40E4 800FDD24 03E00008 */  jr         $ra
/* B40E8 800FDD28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800FDD2C
/* B40EC 800FDD2C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B40F0 800FDD30 AFB00020 */  sw         $s0, 0x20($sp)
/* B40F4 800FDD34 00808021 */  addu       $s0, $a0, $zero
/* B40F8 800FDD38 AFBF002C */  sw         $ra, 0x2C($sp)
/* B40FC 800FDD3C AFB20028 */  sw         $s2, 0x28($sp)
/* B4100 800FDD40 AFB10024 */  sw         $s1, 0x24($sp)
/* B4104 800FDD44 8E020730 */  lw         $v0, 0x730($s0)
/* B4108 800FDD48 10400005 */  beqz       $v0, .Lrace_800FDD60
/* B410C 800FDD4C 00A09021 */   addu      $s2, $a1, $zero
/* B4110 800FDD50 0C03FA05 */  jal        func_race_800FE814
/* B4114 800FDD54 00000000 */   nop
/* B4118 800FDD58 0803F7A1 */  j          .Lrace_800FDE84
/* B411C 800FDD5C 00000000 */   nop
.Lrace_800FDD60:
/* B4120 800FDD60 02002021 */  addu       $a0, $s0, $zero
/* B4124 800FDD64 0C046B73 */  jal        func_race_8011ADCC
/* B4128 800FDD68 02402821 */   addu      $a1, $s2, $zero
/* B412C 800FDD6C 8E030370 */  lw         $v1, 0x370($s0)
/* B4130 800FDD70 24020004 */  addiu      $v0, $zero, 0x4
/* B4134 800FDD74 1462000C */  bne        $v1, $v0, .Lrace_800FDDA8
/* B4138 800FDD78 00002021 */   addu      $a0, $zero, $zero
/* B413C 800FDD7C 8E0203F0 */  lw         $v0, 0x3F0($s0)
/* B4140 800FDD80 14400009 */  bnez       $v0, .Lrace_800FDDA8
/* B4144 800FDD84 00000000 */   nop
/* B4148 800FDD88 8E0206DC */  lw         $v0, 0x6DC($s0)
/* B414C 800FDD8C 8C430D04 */  lw         $v1, 0xD04($v0)
/* B4150 800FDD90 30620400 */  andi       $v0, $v1, 0x400
/* B4154 800FDD94 10400003 */  beqz       $v0, .Lrace_800FDDA4
/* B4158 800FDD98 30620002 */   andi      $v0, $v1, 0x2
/* B415C 800FDD9C 14400002 */  bnez       $v0, .Lrace_800FDDA8
/* B4160 800FDDA0 00000000 */   nop
.Lrace_800FDDA4:
/* B4164 800FDDA4 24040001 */  addiu      $a0, $zero, 0x1
.Lrace_800FDDA8:
/* B4168 800FDDA8 10800006 */  beqz       $a0, .Lrace_800FDDC4
/* B416C 800FDDAC 260400E4 */   addiu     $a0, $s0, 0xE4
/* B4170 800FDDB0 0C01595B */  jal        func_8005656C
/* B4174 800FDDB4 260506EC */   addiu     $a1, $s0, 0x6EC
/* B4178 800FDDB8 2604010C */  addiu      $a0, $s0, 0x10C
/* B417C 800FDDBC 0C00109A */  jal        func_80004268
/* B4180 800FDDC0 260506F8 */   addiu     $a1, $s0, 0x6F8
.Lrace_800FDDC4:
/* B4184 800FDDC4 261100E4 */  addiu      $s1, $s0, 0xE4
/* B4188 800FDDC8 02202021 */  addu       $a0, $s1, $zero
/* B418C 800FDDCC 0C01595B */  jal        func_8005656C
/* B4190 800FDDD0 27A50010 */   addiu     $a1, $sp, 0x10
/* B4194 800FDDD4 C7A20018 */  lwc1       $f2, 0x18($sp)
/* B4198 800FDDD8 3C01800D */  lui        $at, %hi(D_race_800CD20C)
/* B419C 800FDDDC C420D20C */  lwc1       $f0, %lo(D_race_800CD20C)($at)
/* B41A0 800FDDE0 4600103C */  c.lt.s     $f2, $f0
/* B41A4 800FDDE4 00000000 */  nop
/* B41A8 800FDDE8 45010007 */  bc1t       .Lrace_800FDE08
/* B41AC 800FDDEC 02202021 */   addu      $a0, $s1, $zero
/* B41B0 800FDDF0 3C01800D */  lui        $at, %hi(D_race_800CD210)
/* B41B4 800FDDF4 C420D210 */  lwc1       $f0, %lo(D_race_800CD210)($at)
/* B41B8 800FDDF8 4602003C */  c.lt.s     $f0, $f2
/* B41BC 800FDDFC 00000000 */  nop
/* B41C0 800FDE00 4500000C */  bc1f       .Lrace_800FDE34
/* B41C4 800FDE04 00000000 */   nop
.Lrace_800FDE08:
/* B41C8 800FDE08 0C015962 */  jal        func_80056588
/* B41CC 800FDE0C 260506EC */   addiu     $a1, $s0, 0x6EC
/* B41D0 800FDE10 260406F8 */  addiu      $a0, $s0, 0x6F8
/* B41D4 800FDE14 0C001055 */  jal        func_80004154
/* B41D8 800FDE18 2605010C */   addiu     $a1, $s0, 0x10C
/* B41DC 800FDE1C AE000004 */  sw         $zero, 0x4($s0)
/* B41E0 800FDE20 AE000008 */  sw         $zero, 0x8($s0)
/* B41E4 800FDE24 AE00000C */  sw         $zero, 0xC($s0)
/* B41E8 800FDE28 AE0000A0 */  sw         $zero, 0xA0($s0)
/* B41EC 800FDE2C AE0000A4 */  sw         $zero, 0xA4($s0)
/* B41F0 800FDE30 AE0000A8 */  sw         $zero, 0xA8($s0)
.Lrace_800FDE34:
/* B41F4 800FDE34 8E0206DC */  lw         $v0, 0x6DC($s0)
/* B41F8 800FDE38 8C440D04 */  lw         $a0, 0xD04($v0)
/* B41FC 800FDE3C 30820400 */  andi       $v0, $a0, 0x400
/* B4200 800FDE40 10400003 */  beqz       $v0, .Lrace_800FDE50
/* B4204 800FDE44 00001821 */   addu      $v1, $zero, $zero
/* B4208 800FDE48 30820002 */  andi       $v0, $a0, 0x2
/* B420C 800FDE4C 0062182B */  sltu       $v1, $v1, $v0
.Lrace_800FDE50:
/* B4210 800FDE50 1060000C */  beqz       $v1, .Lrace_800FDE84
/* B4214 800FDE54 260400E4 */   addiu     $a0, $s0, 0xE4
/* B4218 800FDE58 0C015962 */  jal        func_80056588
/* B421C 800FDE5C 260506EC */   addiu     $a1, $s0, 0x6EC
/* B4220 800FDE60 260406F8 */  addiu      $a0, $s0, 0x6F8
/* B4224 800FDE64 0C001055 */  jal        func_80004154
/* B4228 800FDE68 2605010C */   addiu     $a1, $s0, 0x10C
/* B422C 800FDE6C AE000004 */  sw         $zero, 0x4($s0)
/* B4230 800FDE70 AE000008 */  sw         $zero, 0x8($s0)
/* B4234 800FDE74 AE00000C */  sw         $zero, 0xC($s0)
/* B4238 800FDE78 AE0000A0 */  sw         $zero, 0xA0($s0)
/* B423C 800FDE7C AE0000A4 */  sw         $zero, 0xA4($s0)
/* B4240 800FDE80 AE0000A8 */  sw         $zero, 0xA8($s0)
.Lrace_800FDE84:
/* B4244 800FDE84 8E02072C */  lw         $v0, 0x72C($s0)
/* B4248 800FDE88 10400056 */  beqz       $v0, .Lrace_800FDFE4
/* B424C 800FDE8C 00000000 */   nop
/* B4250 800FDE90 8E020370 */  lw         $v0, 0x370($s0)
/* B4254 800FDE94 10400012 */  beqz       $v0, .Lrace_800FDEE0
/* B4258 800FDE98 00000000 */   nop
/* B425C 800FDE9C 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4260 800FDEA0 30420008 */  andi       $v0, $v0, 0x8
/* B4264 800FDEA4 1440000E */  bnez       $v0, .Lrace_800FDEE0
/* B4268 800FDEA8 00000000 */   nop
/* B426C 800FDEAC C6020608 */  lwc1       $f2, 0x608($s0)
/* B4270 800FDEB0 3C01800D */  lui        $at, %hi(D_race_800CD214)
/* B4274 800FDEB4 C420D214 */  lwc1       $f0, %lo(D_race_800CD214)($at)
/* B4278 800FDEB8 4600103C */  c.lt.s     $f2, $f0
/* B427C 800FDEBC 00000000 */  nop
/* B4280 800FDEC0 4500000B */  bc1f       .Lrace_800FDEF0
/* B4284 800FDEC4 00000000 */   nop
/* B4288 800FDEC8 3C01800D */  lui        $at, %hi(D_race_800CD218)
/* B428C 800FDECC C420D218 */  lwc1       $f0, %lo(D_race_800CD218)($at)
/* B4290 800FDED0 4602003C */  c.lt.s     $f0, $f2
/* B4294 800FDED4 00000000 */  nop
/* B4298 800FDED8 45000005 */  bc1f       .Lrace_800FDEF0
/* B429C 800FDEDC 00000000 */   nop
.Lrace_800FDEE0:
/* B42A0 800FDEE0 0C0401AE */  jal        func_race_801006B8
/* B42A4 800FDEE4 02002021 */   addu      $a0, $s0, $zero
/* B42A8 800FDEE8 0803F7F9 */  j          .Lrace_800FDFE4
/* B42AC 800FDEEC 00000000 */   nop
.Lrace_800FDEF0:
/* B42B0 800FDEF0 8E020724 */  lw         $v0, 0x724($s0)
/* B42B4 800FDEF4 8E03013C */  lw         $v1, 0x13C($s0)
/* B42B8 800FDEF8 00521021 */  addu       $v0, $v0, $s2
/* B42BC 800FDEFC AE020724 */  sw         $v0, 0x724($s0)
/* B42C0 800FDF00 8C620024 */  lw         $v0, 0x24($v1)
/* B42C4 800FDF04 27A50010 */  addiu      $a1, $sp, 0x10
/* B42C8 800FDF08 84440010 */  lh         $a0, 0x10($v0)
/* B42CC 800FDF0C 8C420014 */  lw         $v0, 0x14($v0)
/* B42D0 800FDF10 0040F809 */  jalr       $v0
/* B42D4 800FDF14 00642021 */   addu      $a0, $v1, $a0
/* B42D8 800FDF18 8E02072C */  lw         $v0, 0x72C($s0)
/* B42DC 800FDF1C 3C01800D */  lui        $at, %hi(D_race_800CD21C)
/* B42E0 800FDF20 C422D21C */  lwc1       $f2, %lo(D_race_800CD21C)($at)
/* B42E4 800FDF24 8FA60010 */  lw         $a2, 0x10($sp)
/* B42E8 800FDF28 8FA70014 */  lw         $a3, 0x14($sp)
/* B42EC 800FDF2C 8FA80018 */  lw         $t0, 0x18($sp)
/* B42F0 800FDF30 AC460014 */  sw         $a2, 0x14($v0)
/* B42F4 800FDF34 AC470018 */  sw         $a3, 0x18($v0)
/* B42F8 800FDF38 AC48001C */  sw         $t0, 0x1C($v0)
/* B42FC 800FDF3C 8E02072C */  lw         $v0, 0x72C($s0)
/* B4300 800FDF40 C6000004 */  lwc1       $f0, 0x4($s0)
/* B4304 800FDF44 26030004 */  addiu      $v1, $s0, 0x4
/* B4308 800FDF48 E4400020 */  swc1       $f0, 0x20($v0)
/* B430C 800FDF4C C4600004 */  lwc1       $f0, 0x4($v1)
/* B4310 800FDF50 E4400024 */  swc1       $f0, 0x24($v0)
/* B4314 800FDF54 C4600008 */  lwc1       $f0, 0x8($v1)
/* B4318 800FDF58 E4400028 */  swc1       $f0, 0x28($v0)
/* B431C 800FDF5C C6000608 */  lwc1       $f0, 0x608($s0)
/* B4320 800FDF60 3C01800D */  lui        $at, %hi(D_race_800CD220)
/* B4324 800FDF64 C424D220 */  lwc1       $f4, %lo(D_race_800CD220)($at)
/* B4328 800FDF68 46020003 */  div.s      $f0, $f0, $f2
/* B432C 800FDF6C 46040000 */  add.s      $f0, $f0, $f4
/* B4330 800FDF70 3C01800D */  lui        $at, %hi(D_race_800CD224)
/* B4334 800FDF74 C422D224 */  lwc1       $f2, %lo(D_race_800CD224)($at)
/* B4338 800FDF78 4602003C */  c.lt.s     $f0, $f2
/* B433C 800FDF7C 00000000 */  nop
/* B4340 800FDF80 45030007 */  bc1tl      .Lrace_800FDFA0
/* B4344 800FDF84 46001006 */   mov.s     $f0, $f2
/* B4348 800FDF88 3C01800D */  lui        $at, %hi(D_race_800CD228)
/* B434C 800FDF8C C422D228 */  lwc1       $f2, %lo(D_race_800CD228)($at)
/* B4350 800FDF90 4600103C */  c.lt.s     $f2, $f0
/* B4354 800FDF94 00000000 */  nop
/* B4358 800FDF98 45030001 */  bc1tl      .Lrace_800FDFA0
/* B435C 800FDF9C 46001006 */   mov.s     $f0, $f2
.Lrace_800FDFA0:
/* B4360 800FDFA0 8E02072C */  lw         $v0, 0x72C($s0)
/* B4364 800FDFA4 3C01800D */  lui        $at, %hi(D_race_800CD22C)
/* B4368 800FDFA8 C424D22C */  lwc1       $f4, %lo(D_race_800CD22C)($at)
/* B436C 800FDFAC E4400004 */  swc1       $f0, 0x4($v0)
/* B4370 800FDFB0 3C01800D */  lui        $at, %hi(D_race_800CD230)
/* B4374 800FDFB4 C420D230 */  lwc1       $f0, %lo(D_race_800CD230)($at)
/* B4378 800FDFB8 C6020724 */  lwc1       $f2, 0x724($s0)
/* B437C 800FDFBC 468010A0 */  cvt.s.w    $f2, $f2
/* B4380 800FDFC0 46001003 */  div.s      $f0, $f2, $f0
/* B4384 800FDFC4 4600203C */  c.lt.s     $f4, $f0
/* B4388 800FDFC8 00000000 */  nop
/* B438C 800FDFCC 45030001 */  bc1tl      .Lrace_800FDFD4
/* B4390 800FDFD0 46002006 */   mov.s     $f0, $f4
.Lrace_800FDFD4:
/* B4394 800FDFD4 8E04072C */  lw         $a0, 0x72C($s0)
/* B4398 800FDFD8 44050000 */  mfc1       $a1, $f0
/* B439C 800FDFDC 0C01FDE4 */  jal        func_8007F790
/* B43A0 800FDFE0 00000000 */   nop
.Lrace_800FDFE4:
/* B43A4 800FDFE4 8FBF002C */  lw         $ra, 0x2C($sp)
/* B43A8 800FDFE8 8FB20028 */  lw         $s2, 0x28($sp)
/* B43AC 800FDFEC 8FB10024 */  lw         $s1, 0x24($sp)
/* B43B0 800FDFF0 8FB00020 */  lw         $s0, 0x20($sp)
/* B43B4 800FDFF4 03E00008 */  jr         $ra
/* B43B8 800FDFF8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800FDFFC
/* B43BC 800FDFFC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B43C0 800FE000 AFB10034 */  sw         $s1, 0x34($sp)
/* B43C4 800FE004 00808821 */  addu       $s1, $a0, $zero
/* B43C8 800FE008 AFBF003C */  sw         $ra, 0x3C($sp)
/* B43CC 800FE00C AFB20038 */  sw         $s2, 0x38($sp)
/* B43D0 800FE010 AFB00030 */  sw         $s0, 0x30($sp)
/* B43D4 800FE014 8E220730 */  lw         $v0, 0x730($s1)
/* B43D8 800FE018 10400036 */  beqz       $v0, .Lrace_800FE0F4
/* B43DC 800FE01C 00A01821 */   addu      $v1, $a1, $zero
/* B43E0 800FE020 26320738 */  addiu      $s2, $s1, 0x738
/* B43E4 800FE024 02402021 */  addu       $a0, $s2, $zero
/* B43E8 800FE028 27B00010 */  addiu      $s0, $sp, 0x10
/* B43EC 800FE02C 8C660000 */  lw         $a2, 0x0($v1)
/* B43F0 800FE030 8C670004 */  lw         $a3, 0x4($v1)
/* B43F4 800FE034 8C680008 */  lw         $t0, 0x8($v1)
/* B43F8 800FE038 AFA60010 */  sw         $a2, 0x10($sp)
/* B43FC 800FE03C AFA70014 */  sw         $a3, 0x14($sp)
/* B4400 800FE040 AFA80018 */  sw         $t0, 0x18($sp)
/* B4404 800FE044 0C04C5A1 */  jal        func_race_80131684
/* B4408 800FE048 02002821 */   addu      $a1, $s0, $zero
/* B440C 800FE04C 02202021 */  addu       $a0, $s1, $zero
/* B4410 800FE050 0C03FD12 */  jal        func_race_800FF448
/* B4414 800FE054 00002821 */   addu      $a1, $zero, $zero
/* B4418 800FE058 8E22013C */  lw         $v0, 0x13C($s1)
/* B441C 800FE05C C7A00010 */  lwc1       $f0, 0x10($sp)
/* B4420 800FE060 C4440034 */  lwc1       $f4, 0x34($v0)
/* B4424 800FE064 E7A40020 */  swc1       $f4, 0x20($sp)
/* B4428 800FE068 C4460038 */  lwc1       $f6, 0x38($v0)
/* B442C 800FE06C 46002102 */  mul.s      $f4, $f4, $f0
/* B4430 800FE070 E7A60024 */  swc1       $f6, 0x24($sp)
/* B4434 800FE074 C442003C */  lwc1       $f2, 0x3C($v0)
/* B4438 800FE078 E7A20028 */  swc1       $f2, 0x28($sp)
/* B443C 800FE07C C6000004 */  lwc1       $f0, 0x4($s0)
/* B4440 800FE080 46003182 */  mul.s      $f6, $f6, $f0
/* B4444 800FE084 C6000008 */  lwc1       $f0, 0x8($s0)
/* B4448 800FE088 46001082 */  mul.s      $f2, $f2, $f0
/* B444C 800FE08C 46062100 */  add.s      $f4, $f4, $f6
/* B4450 800FE090 46022100 */  add.s      $f4, $f4, $f2
/* B4454 800FE094 44800000 */  mtc1       $zero, $f0
/* B4458 800FE098 4604003C */  c.lt.s     $f0, $f4
/* B445C 800FE09C 00000000 */  nop
/* B4460 800FE0A0 45000008 */  bc1f       .Lrace_800FE0C4
/* B4464 800FE0A4 E62407B8 */   swc1      $f4, 0x7B8($s1)
/* B4468 800FE0A8 C6400024 */  lwc1       $f0, 0x24($s2)
/* B446C 800FE0AC 4604003C */  c.lt.s     $f0, $f4
/* B4470 800FE0B0 00000000 */  nop
/* B4474 800FE0B4 4500000B */  bc1f       .Lrace_800FE0E4
/* B4478 800FE0B8 00000000 */   nop
/* B447C 800FE0BC 0803F839 */  j          .Lrace_800FE0E4
/* B4480 800FE0C0 E62007B8 */   swc1      $f0, 0x7B8($s1)
.Lrace_800FE0C4:
/* B4484 800FE0C4 C6420020 */  lwc1       $f2, 0x20($s2)
/* B4488 800FE0C8 46002007 */  neg.s      $f0, $f4
/* B448C 800FE0CC 4600103C */  c.lt.s     $f2, $f0
/* B4490 800FE0D0 00000000 */  nop
/* B4494 800FE0D4 45000003 */  bc1f       .Lrace_800FE0E4
/* B4498 800FE0D8 00000000 */   nop
/* B449C 800FE0DC 46001007 */  neg.s      $f0, $f2
/* B44A0 800FE0E0 E62007B8 */  swc1       $f0, 0x7B8($s1)
.Lrace_800FE0E4:
/* B44A4 800FE0E4 0C03FDF4 */  jal        func_race_800FF7D0
/* B44A8 800FE0E8 02202021 */   addu      $a0, $s1, $zero
/* B44AC 800FE0EC 0803F840 */  j          .Lrace_800FE100
/* B44B0 800FE0F0 00000000 */   nop
.Lrace_800FE0F4:
/* B44B4 800FE0F4 02202021 */  addu       $a0, $s1, $zero
/* B44B8 800FE0F8 0C047D34 */  jal        func_race_8011F4D0
/* B44BC 800FE0FC 00602821 */   addu      $a1, $v1, $zero
.Lrace_800FE100:
/* B44C0 800FE100 8FBF003C */  lw         $ra, 0x3C($sp)
/* B44C4 800FE104 8FB20038 */  lw         $s2, 0x38($sp)
/* B44C8 800FE108 8FB10034 */  lw         $s1, 0x34($sp)
/* B44CC 800FE10C 8FB00030 */  lw         $s0, 0x30($sp)
/* B44D0 800FE110 03E00008 */  jr         $ra
/* B44D4 800FE114 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800FE118
/* B44D8 800FE118 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B44DC 800FE11C AFBF0010 */  sw         $ra, 0x10($sp)
/* B44E0 800FE120 8C820730 */  lw         $v0, 0x730($a0)
/* B44E4 800FE124 44864000 */  mtc1       $a2, $f8
/* B44E8 800FE128 14400005 */  bnez       $v0, .Lrace_800FE140
/* B44EC 800FE12C 2482016C */   addiu     $v0, $a0, 0x16C
/* B44F0 800FE130 0C047887 */  jal        func_race_8011E21C
/* B44F4 800FE134 00000000 */   nop
/* B44F8 800FE138 0803F899 */  j          .Lrace_800FE264
/* B44FC 800FE13C 00000000 */   nop
.Lrace_800FE140:
/* B4500 800FE140 C4A60000 */  lwc1       $f6, 0x0($a1)
/* B4504 800FE144 C480016C */  lwc1       $f0, 0x16C($a0)
/* B4508 800FE148 46003182 */  mul.s      $f6, $f6, $f0
/* B450C 800FE14C C4A20004 */  lwc1       $f2, 0x4($a1)
/* B4510 800FE150 C4400004 */  lwc1       $f0, 0x4($v0)
/* B4514 800FE154 46001082 */  mul.s      $f2, $f2, $f0
/* B4518 800FE158 C4A40008 */  lwc1       $f4, 0x8($a1)
/* B451C 800FE15C C4400008 */  lwc1       $f0, 0x8($v0)
/* B4520 800FE160 46002102 */  mul.s      $f4, $f4, $f0
/* B4524 800FE164 46023180 */  add.s      $f6, $f6, $f2
/* B4528 800FE168 44801000 */  mtc1       $zero, $f2
/* B452C 800FE16C 4602403C */  c.lt.s     $f8, $f2
/* B4530 800FE170 00000000 */  nop
/* B4534 800FE174 45000003 */  bc1f       .Lrace_800FE184
/* B4538 800FE178 46043180 */   add.s     $f6, $f6, $f4
/* B453C 800FE17C 46003187 */  neg.s      $f6, $f6
/* B4540 800FE180 46004207 */  neg.s      $f8, $f8
.Lrace_800FE184:
/* B4544 800FE184 3C01800D */  lui        $at, %hi(D_race_800CD234)
/* B4548 800FE188 C420D234 */  lwc1       $f0, %lo(D_race_800CD234)($at)
/* B454C 800FE18C 4608003C */  c.lt.s     $f0, $f8
/* B4550 800FE190 00000000 */  nop
/* B4554 800FE194 45030001 */  bc1tl      .Lrace_800FE19C
/* B4558 800FE198 46000206 */   mov.s     $f8, $f0
.Lrace_800FE19C:
/* B455C 800FE19C 4606103E */  c.le.s     $f2, $f6
/* B4560 800FE1A0 00000000 */  nop
/* B4564 800FE1A4 45000017 */  bc1f       .Lrace_800FE204
/* B4568 800FE1A8 46004103 */   div.s     $f4, $f8, $f0
/* B456C 800FE1AC 3C01800D */  lui        $at, %hi(D_race_800CD238)
/* B4570 800FE1B0 C420D238 */  lwc1       $f0, %lo(D_race_800CD238)($at)
/* B4574 800FE1B4 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B4578 800FE1B8 46060001 */  sub.s      $f0, $f0, $f6
/* B457C 800FE1BC 3C01800D */  lui        $at, %hi(D_race_800CD23C)
/* B4580 800FE1C0 C422D23C */  lwc1       $f2, %lo(D_race_800CD23C)($at)
/* B4584 800FE1C4 30420002 */  andi       $v0, $v0, 0x2
/* B4588 800FE1C8 46020082 */  mul.s      $f2, $f0, $f2
/* B458C 800FE1CC 10400005 */  beqz       $v0, .Lrace_800FE1E4
/* B4590 800FE1D0 00000000 */   nop
/* B4594 800FE1D4 3C01800D */  lui        $at, %hi(D_race_800CD240)
/* B4598 800FE1D8 C424D240 */  lwc1       $f4, %lo(D_race_800CD240)($at)
/* B459C 800FE1DC 0803F87C */  j          .Lrace_800FE1F0
/* B45A0 800FE1E0 46022100 */   add.s     $f4, $f4, $f2
.Lrace_800FE1E4:
/* B45A4 800FE1E4 C4800764 */  lwc1       $f0, 0x764($a0)
/* B45A8 800FE1E8 46002100 */  add.s      $f4, $f4, $f0
/* B45AC 800FE1EC 46022100 */  add.s      $f4, $f4, $f2
.Lrace_800FE1F0:
/* B45B0 800FE1F0 3C01800D */  lui        $at, %hi(D_race_800CD244)
/* B45B4 800FE1F4 C420D244 */  lwc1       $f0, %lo(D_race_800CD244)($at)
/* B45B8 800FE1F8 4604003C */  c.lt.s     $f0, $f4
/* B45BC 800FE1FC 0803F895 */  j          .Lrace_800FE254
/* B45C0 800FE200 00000000 */   nop
.Lrace_800FE204:
/* B45C4 800FE204 3C01800D */  lui        $at, %hi(D_race_800CD248)
/* B45C8 800FE208 C420D248 */  lwc1       $f0, %lo(D_race_800CD248)($at)
/* B45CC 800FE20C 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B45D0 800FE210 46003000 */  add.s      $f0, $f6, $f0
/* B45D4 800FE214 3C01800D */  lui        $at, %hi(D_race_800CD24C)
/* B45D8 800FE218 C422D24C */  lwc1       $f2, %lo(D_race_800CD24C)($at)
/* B45DC 800FE21C 30420002 */  andi       $v0, $v0, 0x2
/* B45E0 800FE220 46020082 */  mul.s      $f2, $f0, $f2
/* B45E4 800FE224 10400005 */  beqz       $v0, .Lrace_800FE23C
/* B45E8 800FE228 00000000 */   nop
/* B45EC 800FE22C 3C01800D */  lui        $at, %hi(D_race_800CD250)
/* B45F0 800FE230 C424D250 */  lwc1       $f4, %lo(D_race_800CD250)($at)
/* B45F4 800FE234 0803F892 */  j          .Lrace_800FE248
/* B45F8 800FE238 46022101 */   sub.s     $f4, $f4, $f2
.Lrace_800FE23C:
/* B45FC 800FE23C C4800764 */  lwc1       $f0, 0x764($a0)
/* B4600 800FE240 46040101 */  sub.s      $f4, $f0, $f4
/* B4604 800FE244 46022101 */  sub.s      $f4, $f4, $f2
.Lrace_800FE248:
/* B4608 800FE248 3C01800D */  lui        $at, %hi(D_race_800CD254)
/* B460C 800FE24C C420D254 */  lwc1       $f0, %lo(D_race_800CD254)($at)
/* B4610 800FE250 4600203C */  c.lt.s     $f4, $f0
.Lrace_800FE254:
/* B4614 800FE254 00000000 */  nop
/* B4618 800FE258 45030001 */  bc1tl      .Lrace_800FE260
/* B461C 800FE25C 46000106 */   mov.s     $f4, $f0
.Lrace_800FE260:
/* B4620 800FE260 E4840764 */  swc1       $f4, 0x764($a0)
.Lrace_800FE264:
/* B4624 800FE264 8FBF0010 */  lw         $ra, 0x10($sp)
/* B4628 800FE268 03E00008 */  jr         $ra
/* B462C 800FE26C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE270
/* B4630 800FE270 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4634 800FE274 AFBF0010 */  sw         $ra, 0x10($sp)
/* B4638 800FE278 8C820730 */  lw         $v0, 0x730($a0)
/* B463C 800FE27C 14400005 */  bnez       $v0, .Lrace_800FE294
/* B4640 800FE280 00000000 */   nop
/* B4644 800FE284 0C047A29 */  jal        func_race_8011E8A4
/* B4648 800FE288 00000000 */   nop
/* B464C 800FE28C 0803F8A7 */  j          .Lrace_800FE29C
/* B4650 800FE290 00000000 */   nop
.Lrace_800FE294:
/* B4654 800FE294 0C03F8EB */  jal        func_race_800FE3AC
/* B4658 800FE298 00000000 */   nop
.Lrace_800FE29C:
/* B465C 800FE29C 8FBF0010 */  lw         $ra, 0x10($sp)
/* B4660 800FE2A0 03E00008 */  jr         $ra
/* B4664 800FE2A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE2A8
/* B4668 800FE2A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B466C 800FE2AC AFBF0010 */  sw         $ra, 0x10($sp)
/* B4670 800FE2B0 8C820730 */  lw         $v0, 0x730($a0)
/* B4674 800FE2B4 14400005 */  bnez       $v0, .Lrace_800FE2CC
/* B4678 800FE2B8 00000000 */   nop
/* B467C 800FE2BC 0C047A38 */  jal        func_race_8011E8E0
/* B4680 800FE2C0 00000000 */   nop
/* B4684 800FE2C4 0803F8B5 */  j          .Lrace_800FE2D4
/* B4688 800FE2C8 00000000 */   nop
.Lrace_800FE2CC:
/* B468C 800FE2CC 0C03F8D4 */  jal        func_race_800FE350
/* B4690 800FE2D0 00000000 */   nop
.Lrace_800FE2D4:
/* B4694 800FE2D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* B4698 800FE2D8 03E00008 */  jr         $ra
/* B469C 800FE2DC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE2E0
/* B46A0 800FE2E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B46A4 800FE2E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* B46A8 800FE2E8 8C820730 */  lw         $v0, 0x730($a0)
/* B46AC 800FE2EC 14400005 */  bnez       $v0, .Lrace_800FE304
/* B46B0 800FE2F0 00000000 */   nop
/* B46B4 800FE2F4 0C047A3D */  jal        func_race_8011E8F4
/* B46B8 800FE2F8 00000000 */   nop
/* B46BC 800FE2FC 0803F8C3 */  j          .Lrace_800FE30C
/* B46C0 800FE300 00000000 */   nop
.Lrace_800FE304:
/* B46C4 800FE304 0C03F8EB */  jal        func_race_800FE3AC
/* B46C8 800FE308 00000000 */   nop
.Lrace_800FE30C:
/* B46CC 800FE30C 8FBF0010 */  lw         $ra, 0x10($sp)
/* B46D0 800FE310 03E00008 */  jr         $ra
/* B46D4 800FE314 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE318
/* B46D8 800FE318 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B46DC 800FE31C AFBF0010 */  sw         $ra, 0x10($sp)
/* B46E0 800FE320 8C820730 */  lw         $v0, 0x730($a0)
/* B46E4 800FE324 14400005 */  bnez       $v0, .Lrace_800FE33C
/* B46E8 800FE328 00000000 */   nop
/* B46EC 800FE32C 0C047A4C */  jal        func_race_8011E930
/* B46F0 800FE330 00000000 */   nop
/* B46F4 800FE334 0803F8D1 */  j          .Lrace_800FE344
/* B46F8 800FE338 00000000 */   nop
.Lrace_800FE33C:
/* B46FC 800FE33C 0C03F8D4 */  jal        func_race_800FE350
/* B4700 800FE340 00000000 */   nop
.Lrace_800FE344:
/* B4704 800FE344 8FBF0010 */  lw         $ra, 0x10($sp)
/* B4708 800FE348 03E00008 */  jr         $ra
/* B470C 800FE34C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE350
/* B4710 800FE350 3C02FFFB */  lui        $v0, (0xFFFBFFFF >> 16)
/* B4714 800FE354 8C8306AC */  lw         $v1, 0x6AC($a0)
/* B4718 800FE358 3442FFFF */  ori        $v0, $v0, (0xFFFBFFFF & 0xFFFF)
/* B471C 800FE35C 00621024 */  and        $v0, $v1, $v0
/* B4720 800FE360 30630002 */  andi       $v1, $v1, 0x2
/* B4724 800FE364 10600005 */  beqz       $v1, .Lrace_800FE37C
/* B4728 800FE368 AC8206AC */   sw        $v0, 0x6AC($a0)
/* B472C 800FE36C 3C01800D */  lui        $at, %hi(D_race_800CD258)
/* B4730 800FE370 C420D258 */  lwc1       $f0, %lo(D_race_800CD258)($at)
/* B4734 800FE374 03E00008 */  jr         $ra
/* B4738 800FE378 E48007D8 */   swc1      $f0, 0x7D8($a0)
.Lrace_800FE37C:
/* B473C 800FE37C C48207D4 */  lwc1       $f2, 0x7D4($a0)
/* B4740 800FE380 44800000 */  mtc1       $zero, $f0
/* B4744 800FE384 4600103C */  c.lt.s     $f2, $f0
/* B4748 800FE388 00000000 */  nop
/* B474C 800FE38C 45000004 */  bc1f       .Lrace_800FE3A0
/* B4750 800FE390 00000000 */   nop
/* B4754 800FE394 3C01800D */  lui        $at, %hi(D_race_800CD25C)
/* B4758 800FE398 C420D25C */  lwc1       $f0, %lo(D_race_800CD25C)($at)
/* B475C 800FE39C E48007D4 */  swc1       $f0, 0x7D4($a0)
.Lrace_800FE3A0:
/* B4760 800FE3A0 C48007D4 */  lwc1       $f0, 0x7D4($a0)
/* B4764 800FE3A4 03E00008 */  jr         $ra
/* B4768 800FE3A8 E48007D8 */   swc1      $f0, 0x7D8($a0)

glabel func_race_800FE3AC
/* B476C 800FE3AC 3C020004 */  lui        $v0, (0x40000 >> 16)
/* B4770 800FE3B0 8C8306AC */  lw         $v1, 0x6AC($a0)
/* B4774 800FE3B4 C480016C */  lwc1       $f0, 0x16C($a0)
/* B4778 800FE3B8 00621825 */  or         $v1, $v1, $v0
/* B477C 800FE3BC AC8306AC */  sw         $v1, 0x6AC($a0)
/* B4780 800FE3C0 C4A60000 */  lwc1       $f6, 0x0($a1)
/* B4784 800FE3C4 46003182 */  mul.s      $f6, $f6, $f0
/* B4788 800FE3C8 2482016C */  addiu      $v0, $a0, 0x16C
/* B478C 800FE3CC C4A40004 */  lwc1       $f4, 0x4($a1)
/* B4790 800FE3D0 C4400004 */  lwc1       $f0, 0x4($v0)
/* B4794 800FE3D4 46002102 */  mul.s      $f4, $f4, $f0
/* B4798 800FE3D8 C4420008 */  lwc1       $f2, 0x8($v0)
/* B479C 800FE3DC C4A00008 */  lwc1       $f0, 0x8($a1)
/* B47A0 800FE3E0 46020002 */  mul.s      $f0, $f0, $f2
/* B47A4 800FE3E4 46043180 */  add.s      $f6, $f6, $f4
/* B47A8 800FE3E8 46003180 */  add.s      $f6, $f6, $f0
/* B47AC 800FE3EC 44800000 */  mtc1       $zero, $f0
/* B47B0 800FE3F0 4606003E */  c.le.s     $f0, $f6
/* B47B4 800FE3F4 00000000 */  nop
/* B47B8 800FE3F8 45000014 */  bc1f       .Lrace_800FE44C
/* B47BC 800FE3FC 46003106 */   mov.s     $f4, $f6
/* B47C0 800FE400 30620002 */  andi       $v0, $v1, 0x2
/* B47C4 800FE404 10400005 */  beqz       $v0, .Lrace_800FE41C
/* B47C8 800FE408 00000000 */   nop
/* B47CC 800FE40C 3C01800D */  lui        $at, %hi(D_race_800CD260)
/* B47D0 800FE410 C420D260 */  lwc1       $f0, %lo(D_race_800CD260)($at)
/* B47D4 800FE414 0803F90D */  j          .Lrace_800FE434
/* B47D8 800FE418 E48007D8 */   swc1      $f0, 0x7D8($a0)
.Lrace_800FE41C:
/* B47DC 800FE41C 3C01800D */  lui        $at, %hi(D_race_800CD264)
/* B47E0 800FE420 C420D264 */  lwc1       $f0, %lo(D_race_800CD264)($at)
/* B47E4 800FE424 C4820764 */  lwc1       $f2, 0x764($a0)
/* B47E8 800FE428 46003003 */  div.s      $f0, $f6, $f0
/* B47EC 800FE42C 46001080 */  add.s      $f2, $f2, $f0
/* B47F0 800FE430 E48207D8 */  swc1       $f2, 0x7D8($a0)
.Lrace_800FE434:
/* B47F4 800FE434 C48007D8 */  lwc1       $f0, 0x7D8($a0)
/* B47F8 800FE438 3C01800D */  lui        $at, %hi(D_race_800CD268)
/* B47FC 800FE43C C422D268 */  lwc1       $f2, %lo(D_race_800CD268)($at)
/* B4800 800FE440 4600103C */  c.lt.s     $f2, $f0
/* B4804 800FE444 0803F924 */  j          .Lrace_800FE490
/* B4808 800FE448 00000000 */   nop
.Lrace_800FE44C:
/* B480C 800FE44C 30620002 */  andi       $v0, $v1, 0x2
/* B4810 800FE450 10400005 */  beqz       $v0, .Lrace_800FE468
/* B4814 800FE454 00000000 */   nop
/* B4818 800FE458 3C01800D */  lui        $at, %hi(D_race_800CD26C)
/* B481C 800FE45C C420D26C */  lwc1       $f0, %lo(D_race_800CD26C)($at)
/* B4820 800FE460 0803F920 */  j          .Lrace_800FE480
/* B4824 800FE464 E48007D8 */   swc1      $f0, 0x7D8($a0)
.Lrace_800FE468:
/* B4828 800FE468 3C01800D */  lui        $at, %hi(D_race_800CD270)
/* B482C 800FE46C C420D270 */  lwc1       $f0, %lo(D_race_800CD270)($at)
/* B4830 800FE470 C4820764 */  lwc1       $f2, 0x764($a0)
/* B4834 800FE474 46002003 */  div.s      $f0, $f4, $f0
/* B4838 800FE478 46001080 */  add.s      $f2, $f2, $f0
/* B483C 800FE47C E48207D8 */  swc1       $f2, 0x7D8($a0)
.Lrace_800FE480:
/* B4840 800FE480 C48007D8 */  lwc1       $f0, 0x7D8($a0)
/* B4844 800FE484 3C01800D */  lui        $at, %hi(D_race_800CD274)
/* B4848 800FE488 C422D274 */  lwc1       $f2, %lo(D_race_800CD274)($at)
/* B484C 800FE48C 4602003C */  c.lt.s     $f0, $f2
.Lrace_800FE490:
/* B4850 800FE490 00000000 */  nop
/* B4854 800FE494 45030001 */  bc1tl      .Lrace_800FE49C
/* B4858 800FE498 E48207D8 */   swc1      $f2, 0x7D8($a0)
.Lrace_800FE49C:
/* B485C 800FE49C 03E00008 */  jr         $ra
/* B4860 800FE4A0 00000000 */   nop

glabel func_race_800FE4A4
/* B4864 800FE4A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4868 800FE4A8 AFBF0010 */  sw         $ra, 0x10($sp)
/* B486C 800FE4AC 8C820730 */  lw         $v0, 0x730($a0)
/* B4870 800FE4B0 14400003 */  bnez       $v0, .Lrace_800FE4C0
/* B4874 800FE4B4 00000000 */   nop
/* B4878 800FE4B8 0C04786C */  jal        func_race_8011E1B0
/* B487C 800FE4BC 00000000 */   nop
.Lrace_800FE4C0:
/* B4880 800FE4C0 8FBF0010 */  lw         $ra, 0x10($sp)
/* B4884 800FE4C4 03E00008 */  jr         $ra
/* B4888 800FE4C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE4CC
/* B488C 800FE4CC 8C820730 */  lw         $v0, 0x730($a0)
/* B4890 800FE4D0 10400013 */  beqz       $v0, .Lrace_800FE520
/* B4894 800FE4D4 3C030003 */   lui       $v1, (0x30008 >> 16)
/* B4898 800FE4D8 34630008 */  ori        $v1, $v1, (0x30008 & 0xFFFF)
/* B489C 800FE4DC 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B48A0 800FE4E0 3C01800D */  lui        $at, %hi(D_race_800CD278)
/* B48A4 800FE4E4 C420D278 */  lwc1       $f0, %lo(D_race_800CD278)($at)
/* B48A8 800FE4E8 00431025 */  or         $v0, $v0, $v1
/* B48AC 800FE4EC AC8206AC */  sw         $v0, 0x6AC($a0)
/* B48B0 800FE4F0 30420008 */  andi       $v0, $v0, 0x8
/* B48B4 800FE4F4 14400003 */  bnez       $v0, .Lrace_800FE504
/* B48B8 800FE4F8 E4800764 */   swc1      $f0, 0x764($a0)
/* B48BC 800FE4FC AC80065C */  sw         $zero, 0x65C($a0)
/* B48C0 800FE500 AC80066C */  sw         $zero, 0x66C($a0)
.Lrace_800FE504:
/* B48C4 800FE504 3C01800D */  lui        $at, %hi(D_race_800CD27C)
/* B48C8 800FE508 C420D27C */  lwc1       $f0, %lo(D_race_800CD27C)($at)
/* B48CC 800FE50C 3C01800D */  lui        $at, %hi(D_race_800CD280)
/* B48D0 800FE510 C422D280 */  lwc1       $f2, %lo(D_race_800CD280)($at)
/* B48D4 800FE514 AC800668 */  sw         $zero, 0x668($a0)
/* B48D8 800FE518 E4800660 */  swc1       $f0, 0x660($a0)
/* B48DC 800FE51C E4820664 */  swc1       $f2, 0x664($a0)
.Lrace_800FE520:
/* B48E0 800FE520 03E00008 */  jr         $ra
/* B48E4 800FE524 00000000 */   nop

glabel func_race_800FE528
/* B48E8 800FE528 8C820730 */  lw         $v0, 0x730($a0)
/* B48EC 800FE52C 1040000C */  beqz       $v0, .Lrace_800FE560
/* B48F0 800FE530 3C03FFFC */   lui       $v1, (0xFFFCFFF7 >> 16)
/* B48F4 800FE534 C48007D4 */  lwc1       $f0, 0x7D4($a0)
/* B48F8 800FE538 3C01800D */  lui        $at, %hi(D_race_800CD284)
/* B48FC 800FE53C C422D284 */  lwc1       $f2, %lo(D_race_800CD284)($at)
/* B4900 800FE540 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B4904 800FE544 3463FFF7 */  ori        $v1, $v1, (0xFFFCFFF7 & 0xFFFF)
/* B4908 800FE548 AC800660 */  sw         $zero, 0x660($a0)
/* B490C 800FE54C AC800668 */  sw         $zero, 0x668($a0)
/* B4910 800FE550 00431024 */  and        $v0, $v0, $v1
/* B4914 800FE554 E4800764 */  swc1       $f0, 0x764($a0)
/* B4918 800FE558 E4820664 */  swc1       $f2, 0x664($a0)
/* B491C 800FE55C AC8206AC */  sw         $v0, 0x6AC($a0)
.Lrace_800FE560:
/* B4920 800FE560 03E00008 */  jr         $ra
/* B4924 800FE564 00000000 */   nop

glabel func_race_800FE568
/* B4928 800FE568 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B492C 800FE56C AFB00010 */  sw         $s0, 0x10($sp)
/* B4930 800FE570 00808021 */  addu       $s0, $a0, $zero
/* B4934 800FE574 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4938 800FE578 8E020730 */  lw         $v0, 0x730($s0)
/* B493C 800FE57C 14400005 */  bnez       $v0, .Lrace_800FE594
/* B4940 800FE580 00000000 */   nop
/* B4944 800FE584 0C047A0D */  jal        func_race_8011E834
/* B4948 800FE588 00000000 */   nop
/* B494C 800FE58C 0803F979 */  j          .Lrace_800FE5E4
/* B4950 800FE590 00000000 */   nop
.Lrace_800FE594:
/* B4954 800FE594 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4958 800FE598 30420008 */  andi       $v0, $v0, 0x8
/* B495C 800FE59C 14400011 */  bnez       $v0, .Lrace_800FE5E4
/* B4960 800FE5A0 02002021 */   addu      $a0, $s0, $zero
/* B4964 800FE5A4 3C05BB44 */  lui        $a1, (0xBB449BA6 >> 16)
/* B4968 800FE5A8 34A59BA6 */  ori        $a1, $a1, (0xBB449BA6 & 0xFFFF)
/* B496C 800FE5AC 0C03F9F1 */  jal        func_race_800FE7C4
/* B4970 800FE5B0 240600FA */   addiu     $a2, $zero, 0xFA
/* B4974 800FE5B4 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4978 800FE5B8 3C01800D */  lui        $at, %hi(D_race_800CD288)
/* B497C 800FE5BC C420D288 */  lwc1       $f0, %lo(D_race_800CD288)($at)
/* B4980 800FE5C0 3C01800D */  lui        $at, %hi(D_race_800CD28C)
/* B4984 800FE5C4 C422D28C */  lwc1       $f2, %lo(D_race_800CD28C)($at)
/* B4988 800FE5C8 AE00065C */  sw         $zero, 0x65C($s0)
/* B498C 800FE5CC AE00066C */  sw         $zero, 0x66C($s0)
/* B4990 800FE5D0 AE000668 */  sw         $zero, 0x668($s0)
/* B4994 800FE5D4 34420008 */  ori        $v0, $v0, 0x8
/* B4998 800FE5D8 AE0206AC */  sw         $v0, 0x6AC($s0)
/* B499C 800FE5DC E6000660 */  swc1       $f0, 0x660($s0)
/* B49A0 800FE5E0 E6020664 */  swc1       $f2, 0x664($s0)
.Lrace_800FE5E4:
/* B49A4 800FE5E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B49A8 800FE5E8 8FB00010 */  lw         $s0, 0x10($sp)
/* B49AC 800FE5EC 03E00008 */  jr         $ra
/* B49B0 800FE5F0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE5F4
/* B49B4 800FE5F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B49B8 800FE5F8 AFBF0010 */  sw         $ra, 0x10($sp)
/* B49BC 800FE5FC 8C820730 */  lw         $v0, 0x730($a0)
/* B49C0 800FE600 14400005 */  bnez       $v0, .Lrace_800FE618
/* B49C4 800FE604 2403FFF7 */   addiu     $v1, $zero, -0x9
/* B49C8 800FE608 0C047A21 */  jal        func_race_8011E884
/* B49CC 800FE60C 00000000 */   nop
/* B49D0 800FE610 0803F98E */  j          .Lrace_800FE638
/* B49D4 800FE614 00000000 */   nop
.Lrace_800FE618:
/* B49D8 800FE618 3C01800D */  lui        $at, %hi(D_race_800CD290)
/* B49DC 800FE61C C420D290 */  lwc1       $f0, %lo(D_race_800CD290)($at)
/* B49E0 800FE620 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B49E4 800FE624 AC800660 */  sw         $zero, 0x660($a0)
/* B49E8 800FE628 AC800668 */  sw         $zero, 0x668($a0)
/* B49EC 800FE62C 00431024 */  and        $v0, $v0, $v1
/* B49F0 800FE630 E4800664 */  swc1       $f0, 0x664($a0)
/* B49F4 800FE634 AC8206AC */  sw         $v0, 0x6AC($a0)
.Lrace_800FE638:
/* B49F8 800FE638 8FBF0010 */  lw         $ra, 0x10($sp)
/* B49FC 800FE63C 03E00008 */  jr         $ra
/* B4A00 800FE640 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE644
/* B4A04 800FE644 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4A08 800FE648 AFB00010 */  sw         $s0, 0x10($sp)
/* B4A0C 800FE64C AFBF0014 */  sw         $ra, 0x14($sp)
/* B4A10 800FE650 0C047A51 */  jal        func_race_8011E944
/* B4A14 800FE654 00808021 */   addu      $s0, $a0, $zero
/* B4A18 800FE658 3C01800D */  lui        $at, %hi(D_race_800CD294)
/* B4A1C 800FE65C C420D294 */  lwc1       $f0, %lo(D_race_800CD294)($at)
/* B4A20 800FE660 3C01800D */  lui        $at, %hi(D_race_800CD298)
/* B4A24 800FE664 C422D298 */  lwc1       $f2, %lo(D_race_800CD298)($at)
/* B4A28 800FE668 E60007BC */  swc1       $f0, 0x7BC($s0)
/* B4A2C 800FE66C E6020764 */  swc1       $f2, 0x764($s0)
/* B4A30 800FE670 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4A34 800FE674 8FB00010 */  lw         $s0, 0x10($sp)
/* B4A38 800FE678 03E00008 */  jr         $ra
/* B4A3C 800FE67C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE680
/* B4A40 800FE680 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4A44 800FE684 AFBF0010 */  sw         $ra, 0x10($sp)
/* B4A48 800FE688 8C820730 */  lw         $v0, 0x730($a0)
/* B4A4C 800FE68C 14400003 */  bnez       $v0, .Lrace_800FE69C
/* B4A50 800FE690 00000000 */   nop
/* B4A54 800FE694 0C047A57 */  jal        func_race_8011E95C
/* B4A58 800FE698 00000000 */   nop
.Lrace_800FE69C:
/* B4A5C 800FE69C 8FBF0010 */  lw         $ra, 0x10($sp)
/* B4A60 800FE6A0 03E00008 */  jr         $ra
/* B4A64 800FE6A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE6A8
/* B4A68 800FE6A8 44851000 */  mtc1       $a1, $f2
/* B4A6C 800FE6AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B4A70 800FE6B0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* B4A74 800FE6B4 4486A000 */  mtc1       $a2, $f20
/* B4A78 800FE6B8 AFB00010 */  sw         $s0, 0x10($sp)
/* B4A7C 800FE6BC 00808021 */  addu       $s0, $a0, $zero
/* B4A80 800FE6C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4A84 800FE6C4 8E020730 */  lw         $v0, 0x730($s0)
/* B4A88 800FE6C8 44870000 */  mtc1       $a3, $f0
/* B4A8C 800FE6CC 14400005 */  bnez       $v0, .Lrace_800FE6E4
/* B4A90 800FE6D0 00000000 */   nop
/* B4A94 800FE6D4 0C0478A2 */  jal        func_race_8011E288
/* B4A98 800FE6D8 00000000 */   nop
/* B4A9C 800FE6DC 0803F9DD */  j          .Lrace_800FE774
/* B4AA0 800FE6E0 00000000 */   nop
.Lrace_800FE6E4:
/* B4AA4 800FE6E4 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4AA8 800FE6E8 30420002 */  andi       $v0, $v0, 0x2
/* B4AAC 800FE6EC 14400021 */  bnez       $v0, .Lrace_800FE774
/* B4AB0 800FE6F0 00000000 */   nop
/* B4AB4 800FE6F4 3C01800D */  lui        $at, %hi(D_race_800CD29C)
/* B4AB8 800FE6F8 C420D29C */  lwc1       $f0, %lo(D_race_800CD29C)($at)
/* B4ABC 800FE6FC 46001002 */  mul.s      $f0, $f2, $f0
/* B4AC0 800FE700 46140003 */  div.s      $f0, $f0, $f20
/* B4AC4 800FE704 4600010D */  trunc.w.s  $f4, $f0
/* B4AC8 800FE708 44022000 */  mfc1       $v0, $f4
/* B4ACC 800FE70C 10400019 */  beqz       $v0, .Lrace_800FE774
/* B4AD0 800FE710 AE0205E4 */   sw        $v0, 0x5E4($s0)
/* B4AD4 800FE714 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4AD8 800FE718 3C030001 */  lui        $v1, (0x10000 >> 16)
/* B4ADC 800FE71C 00431024 */  and        $v0, $v0, $v1
/* B4AE0 800FE720 10400003 */  beqz       $v0, .Lrace_800FE730
/* B4AE4 800FE724 00000000 */   nop
/* B4AE8 800FE728 0C03F6C7 */  jal        func_race_800FDB1C
/* B4AEC 800FE72C 02002021 */   addu      $a0, $s0, $zero
.Lrace_800FE730:
/* B4AF0 800FE730 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4AF4 800FE734 3C030008 */  lui        $v1, (0x80000 >> 16)
/* B4AF8 800FE738 00431024 */  and        $v0, $v0, $v1
/* B4AFC 800FE73C 10400003 */  beqz       $v0, .Lrace_800FE74C
/* B4B00 800FE740 00000000 */   nop
/* B4B04 800FE744 0C03F700 */  jal        func_race_800FDC00
/* B4B08 800FE748 02002021 */   addu      $a0, $s0, $zero
.Lrace_800FE74C:
/* B4B0C 800FE74C 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4B10 800FE750 8E030370 */  lw         $v1, 0x370($s0)
/* B4B14 800FE754 E61407C0 */  swc1       $f20, 0x7C0($s0)
/* B4B18 800FE758 AE0007C4 */  sw         $zero, 0x7C4($s0)
/* B4B1C 800FE75C 34420002 */  ori        $v0, $v0, 0x2
/* B4B20 800FE760 10600004 */  beqz       $v1, .Lrace_800FE774
/* B4B24 800FE764 AE0206AC */   sw        $v0, 0x6AC($s0)
/* B4B28 800FE768 3C01800D */  lui        $at, %hi(D_race_800CD2A0)
/* B4B2C 800FE76C C420D2A0 */  lwc1       $f0, %lo(D_race_800CD2A0)($at)
/* B4B30 800FE770 E6000764 */  swc1       $f0, 0x764($s0)
.Lrace_800FE774:
/* B4B34 800FE774 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4B38 800FE778 8FB00010 */  lw         $s0, 0x10($sp)
/* B4B3C 800FE77C D7B40018 */  ldc1       $f20, 0x18($sp)
/* B4B40 800FE780 03E00008 */  jr         $ra
/* B4B44 800FE784 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800FE788
/* B4B48 800FE788 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4B4C 800FE78C AFBF0010 */  sw         $ra, 0x10($sp)
/* B4B50 800FE790 8C820730 */  lw         $v0, 0x730($a0)
/* B4B54 800FE794 14400005 */  bnez       $v0, .Lrace_800FE7AC
/* B4B58 800FE798 2403FFF9 */   addiu     $v1, $zero, -0x7
/* B4B5C 800FE79C 0C04790B */  jal        func_race_8011E42C
/* B4B60 800FE7A0 00000000 */   nop
/* B4B64 800FE7A4 0803F9EE */  j          .Lrace_800FE7B8
/* B4B68 800FE7A8 00000000 */   nop
.Lrace_800FE7AC:
/* B4B6C 800FE7AC 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B4B70 800FE7B0 00431024 */  and        $v0, $v0, $v1
/* B4B74 800FE7B4 AC8206AC */  sw         $v0, 0x6AC($a0)
.Lrace_800FE7B8:
/* B4B78 800FE7B8 8FBF0010 */  lw         $ra, 0x10($sp)
/* B4B7C 800FE7BC 03E00008 */  jr         $ra
/* B4B80 800FE7C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE7C4
/* B4B84 800FE7C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4B88 800FE7C8 AFBF0010 */  sw         $ra, 0x10($sp)
/* B4B8C 800FE7CC 8C820730 */  lw         $v0, 0x730($a0)
/* B4B90 800FE7D0 44850000 */  mtc1       $a1, $f0
/* B4B94 800FE7D4 14400005 */  bnez       $v0, .Lrace_800FE7EC
/* B4B98 800FE7D8 00000000 */   nop
/* B4B9C 800FE7DC 0C046F5D */  jal        func_race_8011BD74
/* B4BA0 800FE7E0 00000000 */   nop
/* B4BA4 800FE7E4 0803FA02 */  j          .Lrace_800FE808
/* B4BA8 800FE7E8 00000000 */   nop
.Lrace_800FE7EC:
/* B4BAC 800FE7EC 8C8205E0 */  lw         $v0, 0x5E0($a0)
/* B4BB0 800FE7F0 14400005 */  bnez       $v0, .Lrace_800FE808
/* B4BB4 800FE7F4 00000000 */   nop
/* B4BB8 800FE7F8 46000007 */  neg.s      $f0, $f0
/* B4BBC 800FE7FC E48007C8 */  swc1       $f0, 0x7C8($a0)
/* B4BC0 800FE800 AC8605E0 */  sw         $a2, 0x5E0($a0)
/* B4BC4 800FE804 AC8007CC */  sw         $zero, 0x7CC($a0)
.Lrace_800FE808:
/* B4BC8 800FE808 8FBF0010 */  lw         $ra, 0x10($sp)
/* B4BCC 800FE80C 03E00008 */  jr         $ra
/* B4BD0 800FE810 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FE814
/* B4BD4 800FE814 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B4BD8 800FE818 AFB00030 */  sw         $s0, 0x30($sp)
/* B4BDC 800FE81C AFB20038 */  sw         $s2, 0x38($sp)
/* B4BE0 800FE820 00A09021 */  addu       $s2, $a1, $zero
/* B4BE4 800FE824 AFBF004C */  sw         $ra, 0x4C($sp)
/* B4BE8 800FE828 AFB60048 */  sw         $s6, 0x48($sp)
/* B4BEC 800FE82C AFB50044 */  sw         $s5, 0x44($sp)
/* B4BF0 800FE830 AFB40040 */  sw         $s4, 0x40($sp)
/* B4BF4 800FE834 AFB3003C */  sw         $s3, 0x3C($sp)
/* B4BF8 800FE838 AFB10034 */  sw         $s1, 0x34($sp)
/* B4BFC 800FE83C F7B80060 */  sdc1       $f24, 0x60($sp)
/* B4C00 800FE840 F7B60058 */  sdc1       $f22, 0x58($sp)
/* B4C04 800FE844 F7B40050 */  sdc1       $f20, 0x50($sp)
/* B4C08 800FE848 12400105 */  beqz       $s2, .Lrace_800FEC60
/* B4C0C 800FE84C 00808021 */   addu      $s0, $a0, $zero
/* B4C10 800FE850 8E020734 */  lw         $v0, 0x734($s0)
/* B4C14 800FE854 14400102 */  bnez       $v0, .Lrace_800FEC60
/* B4C18 800FE858 00000000 */   nop
/* B4C1C 800FE85C 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4C20 800FE860 30420008 */  andi       $v0, $v0, 0x8
/* B4C24 800FE864 10400003 */  beqz       $v0, .Lrace_800FE874
/* B4C28 800FE868 00000000 */   nop
/* B4C2C 800FE86C 0C03FC05 */  jal        func_race_800FF014
/* B4C30 800FE870 00000000 */   nop
.Lrace_800FE874:
/* B4C34 800FE874 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4C38 800FE878 3C030001 */  lui        $v1, (0x10000 >> 16)
/* B4C3C 800FE87C 00431024 */  and        $v0, $v0, $v1
/* B4C40 800FE880 10400012 */  beqz       $v0, .Lrace_800FE8CC
/* B4C44 800FE884 00000000 */   nop
/* B4C48 800FE888 C6000768 */  lwc1       $f0, 0x768($s0)
/* B4C4C 800FE88C 3C01800D */  lui        $at, %hi(D_race_800CD2A4)
/* B4C50 800FE890 C422D2A4 */  lwc1       $f2, %lo(D_race_800CD2A4)($at)
/* B4C54 800FE894 4602003C */  c.lt.s     $f0, $f2
/* B4C58 800FE898 00000000 */  nop
/* B4C5C 800FE89C 4500000B */  bc1f       .Lrace_800FE8CC
/* B4C60 800FE8A0 00000000 */   nop
/* B4C64 800FE8A4 46020001 */  sub.s      $f0, $f0, $f2
/* B4C68 800FE8A8 46020003 */  div.s      $f0, $f0, $f2
/* B4C6C 800FE8AC 3C01800D */  lui        $at, %hi(D_race_800CD2A8)
/* B4C70 800FE8B0 C422D2A8 */  lwc1       $f2, %lo(D_race_800CD2A8)($at)
/* B4C74 800FE8B4 46000007 */  neg.s      $f0, $f0
/* B4C78 800FE8B8 46020002 */  mul.s      $f0, $f0, $f2
/* B4C7C 800FE8BC 3C01800D */  lui        $at, %hi(D_race_800CD2AC)
/* B4C80 800FE8C0 C422D2AC */  lwc1       $f2, %lo(D_race_800CD2AC)($at)
/* B4C84 800FE8C4 46020000 */  add.s      $f0, $f0, $f2
/* B4C88 800FE8C8 E60007D8 */  swc1       $f0, 0x7D8($s0)
.Lrace_800FE8CC:
/* B4C8C 800FE8CC 0C03FC68 */  jal        func_race_800FF1A0
/* B4C90 800FE8D0 02002021 */   addu      $a0, $s0, $zero
/* B4C94 800FE8D4 3C160004 */  lui        $s6, (0x40000 >> 16)
/* B4C98 800FE8D8 26150738 */  addiu      $s5, $s0, 0x738
/* B4C9C 800FE8DC 27B40010 */  addiu      $s4, $sp, 0x10
/* B4CA0 800FE8E0 26130004 */  addiu      $s3, $s0, 0x4
/* B4CA4 800FE8E4 261100E4 */  addiu      $s1, $s0, 0xE4
/* B4CA8 800FE8E8 4480B000 */  mtc1       $zero, $f22
/* B4CAC 800FE8EC 3C01800D */  lui        $at, %hi(D_race_800CD2B0)
/* B4CB0 800FE8F0 C438D2B0 */  lwc1       $f24, %lo(D_race_800CD2B0)($at)
.Lrace_800FE8F4:
/* B4CB4 800FE8F4 124000C8 */  beqz       $s2, .Lrace_800FEC18
/* B4CB8 800FE8F8 27A50010 */   addiu     $a1, $sp, 0x10
/* B4CBC 800FE8FC 8E03013C */  lw         $v1, 0x13C($s0)
/* B4CC0 800FE900 8C620024 */  lw         $v0, 0x24($v1)
/* B4CC4 800FE904 84440010 */  lh         $a0, 0x10($v0)
/* B4CC8 800FE908 8C420014 */  lw         $v0, 0x14($v0)
/* B4CCC 800FE90C 0040F809 */  jalr       $v0
/* B4CD0 800FE910 00642021 */   addu      $a0, $v1, $a0
/* B4CD4 800FE914 8E0306AC */  lw         $v1, 0x6AC($s0)
/* B4CD8 800FE918 4492A000 */  mtc1       $s2, $f20
/* B4CDC 800FE91C 4680A520 */  cvt.s.w    $f20, $f20
/* B4CE0 800FE920 00761024 */  and        $v0, $v1, $s6
/* B4CE4 800FE924 54400009 */  bnel       $v0, $zero, .Lrace_800FE94C
/* B4CE8 800FE928 26030738 */   addiu     $v1, $s0, 0x738
/* B4CEC 800FE92C 3C020009 */  lui        $v0, (0x90002 >> 16)
/* B4CF0 800FE930 34420002 */  ori        $v0, $v0, (0x90002 & 0xFFFF)
/* B4CF4 800FE934 00621024 */  and        $v0, $v1, $v0
/* B4CF8 800FE938 10400004 */  beqz       $v0, .Lrace_800FE94C
/* B4CFC 800FE93C 26030738 */   addiu     $v1, $s0, 0x738
/* B4D00 800FE940 8E020370 */  lw         $v0, 0x370($s0)
/* B4D04 800FE944 14400030 */  bnez       $v0, .Lrace_800FEA08
/* B4D08 800FE948 00000000 */   nop
.Lrace_800FE94C:
/* B4D0C 800FE94C C462002C */  lwc1       $f2, 0x2C($v1)
/* B4D10 800FE950 C60407D8 */  lwc1       $f4, 0x7D8($s0)
/* B4D14 800FE954 4604103C */  c.lt.s     $f2, $f4
/* B4D18 800FE958 00000000 */  nop
/* B4D1C 800FE95C 45000017 */  bc1f       .Lrace_800FE9BC
/* B4D20 800FE960 00000000 */   nop
/* B4D24 800FE964 8E0306AC */  lw         $v1, 0x6AC($s0)
/* B4D28 800FE968 00761024 */  and        $v0, $v1, $s6
/* B4D2C 800FE96C 3C01800D */  lui        $at, %hi(D_race_800CD2B4)
/* B4D30 800FE970 C420D2B4 */  lwc1       $f0, %lo(D_race_800CD2B4)($at)
/* B4D34 800FE974 14400008 */  bnez       $v0, .Lrace_800FE998
/* B4D38 800FE978 3C020001 */   lui       $v0, (0x10000 >> 16)
/* B4D3C 800FE97C 3C01800D */  lui        $at, %hi(D_race_800CD2B8)
/* B4D40 800FE980 C420D2B8 */  lwc1       $f0, %lo(D_race_800CD2B8)($at)
/* B4D44 800FE984 00621024 */  and        $v0, $v1, $v0
/* B4D48 800FE988 10400003 */  beqz       $v0, .Lrace_800FE998
/* B4D4C 800FE98C 00000000 */   nop
/* B4D50 800FE990 3C01800D */  lui        $at, %hi(D_race_800CD2BC)
/* B4D54 800FE994 C420D2BC */  lwc1       $f0, %lo(D_race_800CD2BC)($at)
.Lrace_800FE998:
/* B4D58 800FE998 46140002 */  mul.s      $f0, $f0, $f20
/* B4D5C 800FE99C 46001080 */  add.s      $f2, $f2, $f0
/* B4D60 800FE9A0 C60007D8 */  lwc1       $f0, 0x7D8($s0)
/* B4D64 800FE9A4 4602003C */  c.lt.s     $f0, $f2
/* B4D68 800FE9A8 00000000 */  nop
/* B4D6C 800FE9AC 45030001 */  bc1tl      .Lrace_800FE9B4
/* B4D70 800FE9B0 46000086 */   mov.s     $f2, $f0
.Lrace_800FE9B4:
/* B4D74 800FE9B4 0803FA82 */  j          .Lrace_800FEA08
/* B4D78 800FE9B8 E6A2002C */   swc1      $f2, 0x2C($s5)
.Lrace_800FE9BC:
/* B4D7C 800FE9BC 4602203C */  c.lt.s     $f4, $f2
/* B4D80 800FE9C0 00000000 */  nop
/* B4D84 800FE9C4 45000010 */  bc1f       .Lrace_800FEA08
/* B4D88 800FE9C8 00000000 */   nop
/* B4D8C 800FE9CC 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4D90 800FE9D0 3C01800D */  lui        $at, %hi(D_race_800CD2C0)
/* B4D94 800FE9D4 C420D2C0 */  lwc1       $f0, %lo(D_race_800CD2C0)($at)
/* B4D98 800FE9D8 00561024 */  and        $v0, $v0, $s6
/* B4D9C 800FE9DC 10400003 */  beqz       $v0, .Lrace_800FE9EC
/* B4DA0 800FE9E0 00000000 */   nop
/* B4DA4 800FE9E4 3C01800D */  lui        $at, %hi(D_race_800CD2C4)
/* B4DA8 800FE9E8 C420D2C4 */  lwc1       $f0, %lo(D_race_800CD2C4)($at)
.Lrace_800FE9EC:
/* B4DAC 800FE9EC 46140002 */  mul.s      $f0, $f0, $f20
/* B4DB0 800FE9F0 46001081 */  sub.s      $f2, $f2, $f0
/* B4DB4 800FE9F4 4604103C */  c.lt.s     $f2, $f4
/* B4DB8 800FE9F8 00000000 */  nop
/* B4DBC 800FE9FC 45030001 */  bc1tl      .Lrace_800FEA04
/* B4DC0 800FEA00 46002086 */   mov.s     $f2, $f4
.Lrace_800FEA04:
/* B4DC4 800FEA04 E462002C */  swc1       $f2, 0x2C($v1)
.Lrace_800FEA08:
/* B4DC8 800FEA08 4405A000 */  mfc1       $a1, $f20
/* B4DCC 800FEA0C 0C04C439 */  jal        func_race_801310E4
/* B4DD0 800FEA10 26040738 */   addiu     $a0, $s0, 0x738
/* B4DD4 800FEA14 C60207B8 */  lwc1       $f2, 0x7B8($s0)
/* B4DD8 800FEA18 4602B03C */  c.lt.s     $f22, $f2
/* B4DDC 800FEA1C 00000000 */  nop
/* B4DE0 800FEA20 45000006 */  bc1f       .Lrace_800FEA3C
/* B4DE4 800FEA24 00000000 */   nop
/* B4DE8 800FEA28 4618A002 */  mul.s      $f0, $f20, $f24
/* B4DEC 800FEA2C 46001001 */  sub.s      $f0, $f2, $f0
/* B4DF0 800FEA30 4616003C */  c.lt.s     $f0, $f22
/* B4DF4 800FEA34 0803FA97 */  j          .Lrace_800FEA5C
/* B4DF8 800FEA38 E60007B8 */   swc1      $f0, 0x7B8($s0)
.Lrace_800FEA3C:
/* B4DFC 800FEA3C 4616103C */  c.lt.s     $f2, $f22
/* B4E00 800FEA40 00000000 */  nop
/* B4E04 800FEA44 45000008 */  bc1f       .Lrace_800FEA68
/* B4E08 800FEA48 00000000 */   nop
/* B4E0C 800FEA4C 4618A002 */  mul.s      $f0, $f20, $f24
/* B4E10 800FEA50 46001000 */  add.s      $f0, $f2, $f0
/* B4E14 800FEA54 E60007B8 */  swc1       $f0, 0x7B8($s0)
/* B4E18 800FEA58 4600B03C */  c.lt.s     $f22, $f0
.Lrace_800FEA5C:
/* B4E1C 800FEA5C 00000000 */  nop
/* B4E20 800FEA60 45030001 */  bc1tl      .Lrace_800FEA68
/* B4E24 800FEA64 E61607B8 */   swc1      $f22, 0x7B8($s0)
.Lrace_800FEA68:
/* B4E28 800FEA68 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4E2C 800FEA6C 30420008 */  andi       $v0, $v0, 0x8
/* B4E30 800FEA70 14400006 */  bnez       $v0, .Lrace_800FEA8C
/* B4E34 800FEA74 02002021 */   addu      $a0, $s0, $zero
/* B4E38 800FEA78 C600065C */  lwc1       $f0, 0x65C($s0)
/* B4E3C 800FEA7C 46160032 */  c.eq.s     $f0, $f22
/* B4E40 800FEA80 00000000 */  nop
/* B4E44 800FEA84 45010003 */  bc1t       .Lrace_800FEA94
/* B4E48 800FEA88 00000000 */   nop
.Lrace_800FEA8C:
/* B4E4C 800FEA8C 0C0472B8 */  jal        func_race_8011CAE0
/* B4E50 800FEA90 02402821 */   addu      $a1, $s2, $zero
.Lrace_800FEA94:
/* B4E54 800FEA94 C60207BC */  lwc1       $f2, 0x7BC($s0)
/* B4E58 800FEA98 46161032 */  c.eq.s     $f2, $f22
/* B4E5C 800FEA9C 00000000 */  nop
/* B4E60 800FEAA0 45000006 */  bc1f       .Lrace_800FEABC
/* B4E64 800FEAA4 00000000 */   nop
/* B4E68 800FEAA8 C60007B4 */  lwc1       $f0, 0x7B4($s0)
/* B4E6C 800FEAAC 46160032 */  c.eq.s     $f0, $f22
/* B4E70 800FEAB0 00000000 */  nop
/* B4E74 800FEAB4 45010017 */  bc1t       .Lrace_800FEB14
/* B4E78 800FEAB8 02002021 */   addu      $a0, $s0, $zero
.Lrace_800FEABC:
/* B4E7C 800FEABC 3C01800D */  lui        $at, %hi(D_race_800CD2C8)
/* B4E80 800FEAC0 C420D2C8 */  lwc1       $f0, %lo(D_race_800CD2C8)($at)
/* B4E84 800FEAC4 3C01800D */  lui        $at, %hi(D_race_800CD2CC)
/* B4E88 800FEAC8 C424D2CC */  lwc1       $f4, %lo(D_race_800CD2CC)($at)
/* B4E8C 800FEACC 4600A003 */  div.s      $f0, $f20, $f0
/* B4E90 800FEAD0 46040102 */  mul.s      $f4, $f0, $f4
/* B4E94 800FEAD4 46041100 */  add.s      $f4, $f2, $f4
/* B4E98 800FEAD8 46040002 */  mul.s      $f0, $f0, $f4
/* B4E9C 800FEADC C60207B4 */  lwc1       $f2, 0x7B4($s0)
/* B4EA0 800FEAE0 46001080 */  add.s      $f2, $f2, $f0
/* B4EA4 800FEAE4 E60407BC */  swc1       $f4, 0x7BC($s0)
/* B4EA8 800FEAE8 4616103E */  c.le.s     $f2, $f22
/* B4EAC 800FEAEC 00000000 */  nop
/* B4EB0 800FEAF0 45000007 */  bc1f       .Lrace_800FEB10
/* B4EB4 800FEAF4 E60207B4 */   swc1      $f2, 0x7B4($s0)
/* B4EB8 800FEAF8 8E0206AC */  lw         $v0, 0x6AC($s0)
/* B4EBC 800FEAFC 2403FF7F */  addiu      $v1, $zero, -0x81
/* B4EC0 800FEB00 E61607B4 */  swc1       $f22, 0x7B4($s0)
/* B4EC4 800FEB04 E61607BC */  swc1       $f22, 0x7BC($s0)
/* B4EC8 800FEB08 00431024 */  and        $v0, $v0, $v1
/* B4ECC 800FEB0C AE0206AC */  sw         $v0, 0x6AC($s0)
.Lrace_800FEB10:
/* B4ED0 800FEB10 02002021 */  addu       $a0, $s0, $zero
.Lrace_800FEB14:
/* B4ED4 800FEB14 0C03FD12 */  jal        func_race_800FF448
/* B4ED8 800FEB18 02402821 */   addu      $a1, $s2, $zero
/* B4EDC 800FEB1C 0C03FDF4 */  jal        func_race_800FF7D0
/* B4EE0 800FEB20 02002021 */   addu      $a0, $s0, $zero
/* B4EE4 800FEB24 8E03013C */  lw         $v1, 0x13C($s0)
/* B4EE8 800FEB28 8C620024 */  lw         $v0, 0x24($v1)
/* B4EEC 800FEB2C 27A50020 */  addiu      $a1, $sp, 0x20
/* B4EF0 800FEB30 84440010 */  lh         $a0, 0x10($v0)
/* B4EF4 800FEB34 8C420014 */  lw         $v0, 0x14($v0)
/* B4EF8 800FEB38 0040F809 */  jalr       $v0
/* B4EFC 800FEB3C 00642021 */   addu      $a0, $v1, $a0
/* B4F00 800FEB40 C7A00020 */  lwc1       $f0, 0x20($sp)
/* B4F04 800FEB44 C7A20010 */  lwc1       $f2, 0x10($sp)
/* B4F08 800FEB48 46020001 */  sub.s      $f0, $f0, $f2
/* B4F0C 800FEB4C E6000004 */  swc1       $f0, 0x4($s0)
/* B4F10 800FEB50 C7A00024 */  lwc1       $f0, 0x24($sp)
/* B4F14 800FEB54 C6820004 */  lwc1       $f2, 0x4($s4)
/* B4F18 800FEB58 46020001 */  sub.s      $f0, $f0, $f2
/* B4F1C 800FEB5C E6600004 */  swc1       $f0, 0x4($s3)
/* B4F20 800FEB60 C7A00028 */  lwc1       $f0, 0x28($sp)
/* B4F24 800FEB64 C6820008 */  lwc1       $f2, 0x8($s4)
/* B4F28 800FEB68 46020001 */  sub.s      $f0, $f0, $f2
/* B4F2C 800FEB6C 3C01800D */  lui        $at, %hi(D_race_800CD2D0)
/* B4F30 800FEB70 C424D2D0 */  lwc1       $f4, %lo(D_race_800CD2D0)($at)
/* B4F34 800FEB74 E6600008 */  swc1       $f0, 0x8($s3)
/* B4F38 800FEB78 C6000004 */  lwc1       $f0, 0x4($s0)
/* B4F3C 800FEB7C 46142103 */  div.s      $f4, $f4, $f20
/* B4F40 800FEB80 46040002 */  mul.s      $f0, $f0, $f4
/* B4F44 800FEB84 E6000004 */  swc1       $f0, 0x4($s0)
/* B4F48 800FEB88 C6620004 */  lwc1       $f2, 0x4($s3)
/* B4F4C 800FEB8C 46041082 */  mul.s      $f2, $f2, $f4
/* B4F50 800FEB90 C6600008 */  lwc1       $f0, 0x8($s3)
/* B4F54 800FEB94 46040002 */  mul.s      $f0, $f0, $f4
/* B4F58 800FEB98 02002021 */  addu       $a0, $s0, $zero
/* B4F5C 800FEB9C E6620004 */  swc1       $f2, 0x4($s3)
/* B4F60 800FEBA0 0C047463 */  jal        func_race_8011D18C
/* B4F64 800FEBA4 E6600008 */   swc1      $f0, 0x8($s3)
/* B4F68 800FEBA8 8E02013C */  lw         $v0, 0x13C($s0)
/* B4F6C 800FEBAC 3C01800D */  lui        $at, %hi(D_race_800CD2D4)
/* B4F70 800FEBB0 C422D2D4 */  lwc1       $f2, %lo(D_race_800CD2D4)($at)
/* B4F74 800FEBB4 C4400028 */  lwc1       $f0, 0x28($v0)
/* B4F78 800FEBB8 E6200028 */  swc1       $f0, 0x28($s1)
/* B4F7C 800FEBBC C440002C */  lwc1       $f0, 0x2C($v0)
/* B4F80 800FEBC0 E620002C */  swc1       $f0, 0x2C($s1)
/* B4F84 800FEBC4 C4400030 */  lwc1       $f0, 0x30($v0)
/* B4F88 800FEBC8 E6200030 */  swc1       $f0, 0x30($s1)
/* B4F8C 800FEBCC C4400034 */  lwc1       $f0, 0x34($v0)
/* B4F90 800FEBD0 E6200034 */  swc1       $f0, 0x34($s1)
/* B4F94 800FEBD4 C4400038 */  lwc1       $f0, 0x38($v0)
/* B4F98 800FEBD8 E6200038 */  swc1       $f0, 0x38($s1)
/* B4F9C 800FEBDC C440003C */  lwc1       $f0, 0x3C($v0)
/* B4FA0 800FEBE0 E620003C */  swc1       $f0, 0x3C($s1)
/* B4FA4 800FEBE4 C4400040 */  lwc1       $f0, 0x40($v0)
/* B4FA8 800FEBE8 E6200040 */  swc1       $f0, 0x40($s1)
/* B4FAC 800FEBEC C4400044 */  lwc1       $f0, 0x44($v0)
/* B4FB0 800FEBF0 E6200044 */  swc1       $f0, 0x44($s1)
/* B4FB4 800FEBF4 C4400048 */  lwc1       $f0, 0x48($v0)
/* B4FB8 800FEBF8 E6200048 */  swc1       $f0, 0x48($s1)
/* B4FBC 800FEBFC 8C46004C */  lw         $a2, 0x4C($v0)
/* B4FC0 800FEC00 8C470050 */  lw         $a3, 0x50($v0)
/* B4FC4 800FEC04 8C480054 */  lw         $t0, 0x54($v0)
/* B4FC8 800FEC08 AE060130 */  sw         $a2, 0x130($s0)
/* B4FCC 800FEC0C AE070134 */  sw         $a3, 0x134($s0)
/* B4FD0 800FEC10 AE080138 */  sw         $t0, 0x138($s0)
/* B4FD4 800FEC14 E622000C */  swc1       $f2, 0xC($s1)
.Lrace_800FEC18:
/* B4FD8 800FEC18 8E0203F0 */  lw         $v0, 0x3F0($s0)
/* B4FDC 800FEC1C 1040000A */  beqz       $v0, .Lrace_800FEC48
/* B4FE0 800FEC20 02002021 */   addu      $a0, $s0, $zero
/* B4FE4 800FEC24 3C01800D */  lui        $at, %hi(D_race_800CD2D8)
/* B4FE8 800FEC28 C420D2D8 */  lwc1       $f0, %lo(D_race_800CD2D8)($at)
/* B4FEC 800FEC2C 0C0475E3 */  jal        func_race_8011D78C
/* B4FF0 800FEC30 E6A0002C */   swc1      $f0, 0x2C($s5)
/* B4FF4 800FEC34 0C03FC68 */  jal        func_race_800FF1A0
/* B4FF8 800FEC38 02002021 */   addu      $a0, $s0, $zero
/* B4FFC 800FEC3C 8E1203F4 */  lw         $s2, 0x3F4($s0)
/* B5000 800FEC40 0803FB15 */  j          .Lrace_800FEC54
/* B5004 800FEC44 00000000 */   nop
.Lrace_800FEC48:
/* B5008 800FEC48 0C03FB25 */  jal        func_race_800FEC94
/* B500C 800FEC4C 02402821 */   addu      $a1, $s2, $zero
/* B5010 800FEC50 00409021 */  addu       $s2, $v0, $zero
.Lrace_800FEC54:
/* B5014 800FEC54 8E0203F0 */  lw         $v0, 0x3F0($s0)
/* B5018 800FEC58 1440FF26 */  bnez       $v0, .Lrace_800FE8F4
/* B501C 800FEC5C 00000000 */   nop
.Lrace_800FEC60:
/* B5020 800FEC60 8FBF004C */  lw         $ra, 0x4C($sp)
/* B5024 800FEC64 8FB60048 */  lw         $s6, 0x48($sp)
/* B5028 800FEC68 8FB50044 */  lw         $s5, 0x44($sp)
/* B502C 800FEC6C 8FB40040 */  lw         $s4, 0x40($sp)
/* B5030 800FEC70 8FB3003C */  lw         $s3, 0x3C($sp)
/* B5034 800FEC74 8FB20038 */  lw         $s2, 0x38($sp)
/* B5038 800FEC78 8FB10034 */  lw         $s1, 0x34($sp)
/* B503C 800FEC7C 8FB00030 */  lw         $s0, 0x30($sp)
/* B5040 800FEC80 D7B80060 */  ldc1       $f24, 0x60($sp)
/* B5044 800FEC84 D7B60058 */  ldc1       $f22, 0x58($sp)
/* B5048 800FEC88 D7B40050 */  ldc1       $f20, 0x50($sp)
/* B504C 800FEC8C 03E00008 */  jr         $ra
/* B5050 800FEC90 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_800FEC94
/* B5054 800FEC94 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* B5058 800FEC98 AFB1008C */  sw         $s1, 0x8C($sp)
/* B505C 800FEC9C 00808821 */  addu       $s1, $a0, $zero
/* B5060 800FECA0 AFB700A4 */  sw         $s7, 0xA4($sp)
/* B5064 800FECA4 00A0B821 */  addu       $s7, $a1, $zero
/* B5068 800FECA8 262400E4 */  addiu      $a0, $s1, 0xE4
/* B506C 800FECAC 26250374 */  addiu      $a1, $s1, 0x374
/* B5070 800FECB0 262603A4 */  addiu      $a2, $s1, 0x3A4
/* B5074 800FECB4 AFBF00A8 */  sw         $ra, 0xA8($sp)
/* B5078 800FECB8 AFB600A0 */  sw         $s6, 0xA0($sp)
/* B507C 800FECBC AFB5009C */  sw         $s5, 0x9C($sp)
/* B5080 800FECC0 AFB40098 */  sw         $s4, 0x98($sp)
/* B5084 800FECC4 AFB30094 */  sw         $s3, 0x94($sp)
/* B5088 800FECC8 AFB20090 */  sw         $s2, 0x90($sp)
/* B508C 800FECCC AFB00088 */  sw         $s0, 0x88($sp)
/* B5090 800FECD0 F7B400B0 */  sdc1       $f20, 0xB0($sp)
/* B5094 800FECD4 AFA00080 */  sw         $zero, 0x80($sp)
/* B5098 800FECD8 0C0158C3 */  jal        func_8005630C
/* B509C 800FECDC AE2003F0 */   sw        $zero, 0x3F0($s1)
/* B50A0 800FECE0 00009821 */  addu       $s3, $zero, $zero
/* B50A4 800FECE4 3C168013 */  lui        $s6, %hi(D_race_80132BC0)
/* B50A8 800FECE8 26D42BC0 */  addiu      $s4, $s6, %lo(D_race_80132BC0)
/* B50AC 800FECEC 27B50020 */  addiu      $s5, $sp, 0x20
/* B50B0 800FECF0 02209021 */  addu       $s2, $s1, $zero
/* B50B4 800FECF4 4480A000 */  mtc1       $zero, $f20
.Lrace_800FECF8:
/* B50B8 800FECF8 8E220158 */  lw         $v0, 0x158($s1)
/* B50BC 800FECFC 0262102B */  sltu       $v0, $s3, $v0
/* B50C0 800FED00 1040005E */  beqz       $v0, .Lrace_800FEE7C
/* B50C4 800FED04 3C058013 */   lui       $a1, %hi(D_race_80132278)
/* B50C8 800FED08 8E50014C */  lw         $s0, 0x14C($s2)
/* B50CC 800FED0C 24A52278 */  addiu      $a1, $a1, %lo(D_race_80132278)
/* B50D0 800FED10 8E020024 */  lw         $v0, 0x24($s0)
/* B50D4 800FED14 27A60060 */  addiu      $a2, $sp, 0x60
/* B50D8 800FED18 84440068 */  lh         $a0, 0x68($v0)
/* B50DC 800FED1C 8C42006C */  lw         $v0, 0x6C($v0)
/* B50E0 800FED20 0040F809 */  jalr       $v0
/* B50E4 800FED24 02042021 */   addu      $a0, $s0, $a0
/* B50E8 800FED28 262503A4 */  addiu      $a1, $s1, 0x3A4
/* B50EC 800FED2C 8E020024 */  lw         $v0, 0x24($s0)
/* B50F0 800FED30 27A60070 */  addiu      $a2, $sp, 0x70
/* B50F4 800FED34 84440068 */  lh         $a0, 0x68($v0)
/* B50F8 800FED38 8C42006C */  lw         $v0, 0x6C($v0)
/* B50FC 800FED3C 0040F809 */  jalr       $v0
/* B5100 800FED40 02042021 */   addu      $a0, $s0, $a0
/* B5104 800FED44 26C72BC0 */  addiu      $a3, $s6, %lo(D_race_80132BC0)
/* B5108 800FED48 27A40050 */  addiu      $a0, $sp, 0x50
/* B510C 800FED4C 27A80080 */  addiu      $t0, $sp, 0x80
/* B5110 800FED50 8E02005C */  lw         $v0, 0x5C($s0)
/* B5114 800FED54 8E030058 */  lw         $v1, 0x58($s0)
/* B5118 800FED58 14400002 */  bnez       $v0, .Lrace_800FED64
/* B511C 800FED5C 27A90084 */   addiu     $t1, $sp, 0x84
/* B5120 800FED60 24620014 */  addiu      $v0, $v1, 0x14
.Lrace_800FED64:
/* B5124 800FED64 AC620020 */  sw         $v0, 0x20($v1)
/* B5128 800FED68 27A50060 */  addiu      $a1, $sp, 0x60
/* B512C 800FED6C AFA40010 */  sw         $a0, 0x10($sp)
/* B5130 800FED70 AFA80014 */  sw         $t0, 0x14($sp)
/* B5134 800FED74 AFA90018 */  sw         $t1, 0x18($sp)
/* B5138 800FED78 8E040058 */  lw         $a0, 0x58($s0)
/* B513C 800FED7C 0C038990 */  jal        func_race_800E2640
/* B5140 800FED80 27A60070 */   addiu     $a2, $sp, 0x70
/* B5144 800FED84 1040003A */  beqz       $v0, .Lrace_800FEE70
/* B5148 800FED88 27A50020 */   addiu     $a1, $sp, 0x20
/* B514C 800FED8C C6800024 */  lwc1       $f0, 0x24($s4)
/* B5150 800FED90 C6820028 */  lwc1       $f2, 0x28($s4)
/* B5154 800FED94 C684002C */  lwc1       $f4, 0x2C($s4)
/* B5158 800FED98 E7A00020 */  swc1       $f0, 0x20($sp)
/* B515C 800FED9C E7A20024 */  swc1       $f2, 0x24($sp)
/* B5160 800FEDA0 E7A40028 */  swc1       $f4, 0x28($sp)
/* B5164 800FEDA4 8E020024 */  lw         $v0, 0x24($s0)
/* B5168 800FEDA8 27A60030 */  addiu      $a2, $sp, 0x30
/* B516C 800FEDAC 84440070 */  lh         $a0, 0x70($v0)
/* B5170 800FEDB0 8C420074 */  lw         $v0, 0x74($v0)
/* B5174 800FEDB4 0040F809 */  jalr       $v0
/* B5178 800FEDB8 02042021 */   addu      $a0, $s0, $a0
/* B517C 800FEDBC C7AA0050 */  lwc1       $f10, 0x50($sp)
/* B5180 800FEDC0 C7A00070 */  lwc1       $f0, 0x70($sp)
/* B5184 800FEDC4 46005281 */  sub.s      $f10, $f10, $f0
/* B5188 800FEDC8 C7A20020 */  lwc1       $f2, 0x20($sp)
/* B518C 800FEDCC 460A1082 */  mul.s      $f2, $f2, $f10
/* B5190 800FEDD0 C7A80054 */  lwc1       $f8, 0x54($sp)
/* B5194 800FEDD4 C7A00074 */  lwc1       $f0, 0x74($sp)
/* B5198 800FEDD8 46004201 */  sub.s      $f8, $f8, $f0
/* B519C 800FEDDC C6A40004 */  lwc1       $f4, 0x4($s5)
/* B51A0 800FEDE0 46082102 */  mul.s      $f4, $f4, $f8
/* B51A4 800FEDE4 C7A60058 */  lwc1       $f6, 0x58($sp)
/* B51A8 800FEDE8 C7A00078 */  lwc1       $f0, 0x78($sp)
/* B51AC 800FEDEC 46003181 */  sub.s      $f6, $f6, $f0
/* B51B0 800FEDF0 C6A00008 */  lwc1       $f0, 0x8($s5)
/* B51B4 800FEDF4 46060002 */  mul.s      $f0, $f0, $f6
/* B51B8 800FEDF8 46041080 */  add.s      $f2, $f2, $f4
/* B51BC 800FEDFC E7AA0040 */  swc1       $f10, 0x40($sp)
/* B51C0 800FEE00 44802000 */  mtc1       $zero, $f4
/* B51C4 800FEE04 46001080 */  add.s      $f2, $f2, $f0
/* B51C8 800FEE08 E7A80044 */  swc1       $f8, 0x44($sp)
/* B51CC 800FEE0C 4602203C */  c.lt.s     $f4, $f2
/* B51D0 800FEE10 00000000 */  nop
/* B51D4 800FEE14 45000016 */  bc1f       .Lrace_800FEE70
/* B51D8 800FEE18 E7A60048 */   swc1      $f6, 0x48($sp)
/* B51DC 800FEE1C 8FA60080 */  lw         $a2, 0x80($sp)
/* B51E0 800FEE20 10C0000A */  beqz       $a2, .Lrace_800FEE4C
/* B51E4 800FEE24 27A50050 */   addiu     $a1, $sp, 0x50
/* B51E8 800FEE28 8E2200CC */  lw         $v0, 0xCC($s1)
/* B51EC 800FEE2C 84440020 */  lh         $a0, 0x20($v0)
/* B51F0 800FEE30 02003821 */  addu       $a3, $s0, $zero
/* B51F4 800FEE34 AFB40010 */  sw         $s4, 0x10($sp)
/* B51F8 800FEE38 8C420024 */  lw         $v0, 0x24($v0)
/* B51FC 800FEE3C 0040F809 */  jalr       $v0
/* B5200 800FEE40 02242021 */   addu      $a0, $s1, $a0
/* B5204 800FEE44 5040000B */  beql       $v0, $zero, .Lrace_800FEE74
/* B5208 800FEE48 26520004 */   addiu     $s2, $s2, 0x4
.Lrace_800FEE4C:
/* B520C 800FEE4C C7B40084 */  lwc1       $f20, 0x84($sp)
/* B5210 800FEE50 24020001 */  addiu      $v0, $zero, 0x1
/* B5214 800FEE54 8FAA0030 */  lw         $t2, 0x30($sp)
/* B5218 800FEE58 8FAB0034 */  lw         $t3, 0x34($sp)
/* B521C 800FEE5C 8FAC0038 */  lw         $t4, 0x38($sp)
/* B5220 800FEE60 AE2A03E4 */  sw         $t2, 0x3E4($s1)
/* B5224 800FEE64 AE2B03E8 */  sw         $t3, 0x3E8($s1)
/* B5228 800FEE68 AE2C03EC */  sw         $t4, 0x3EC($s1)
/* B522C 800FEE6C AE2203F0 */  sw         $v0, 0x3F0($s1)
.Lrace_800FEE70:
/* B5230 800FEE70 26520004 */  addiu      $s2, $s2, 0x4
.Lrace_800FEE74:
/* B5234 800FEE74 0803FB3E */  j          .Lrace_800FECF8
/* B5238 800FEE78 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_800FEE7C:
/* B523C 800FEE7C 8E220148 */  lw         $v0, 0x148($s1)
/* B5240 800FEE80 2C420002 */  sltiu      $v0, $v0, 0x2
/* B5244 800FEE84 14400048 */  bnez       $v0, .Lrace_800FEFA8
/* B5248 800FEE88 3C028013 */   lui       $v0, %hi(D_race_80132278)
/* B524C 800FEE8C 24452278 */  addiu      $a1, $v0, %lo(D_race_80132278)
/* B5250 800FEE90 262603A4 */  addiu      $a2, $s1, 0x3A4
/* B5254 800FEE94 3C028013 */  lui        $v0, %hi(D_race_80132BC0)
/* B5258 800FEE98 24472BC0 */  addiu      $a3, $v0, %lo(D_race_80132BC0)
/* B525C 800FEE9C 27A40050 */  addiu      $a0, $sp, 0x50
/* B5260 800FEEA0 27A80080 */  addiu      $t0, $sp, 0x80
/* B5264 800FEEA4 8E300144 */  lw         $s0, 0x144($s1)
/* B5268 800FEEA8 8E02005C */  lw         $v0, 0x5C($s0)
/* B526C 800FEEAC 8E030058 */  lw         $v1, 0x58($s0)
/* B5270 800FEEB0 14400002 */  bnez       $v0, .Lrace_800FEEBC
/* B5274 800FEEB4 27A90084 */   addiu     $t1, $sp, 0x84
/* B5278 800FEEB8 24620014 */  addiu      $v0, $v1, 0x14
.Lrace_800FEEBC:
/* B527C 800FEEBC AC620020 */  sw         $v0, 0x20($v1)
/* B5280 800FEEC0 AFA40010 */  sw         $a0, 0x10($sp)
/* B5284 800FEEC4 AFA80014 */  sw         $t0, 0x14($sp)
/* B5288 800FEEC8 AFA90018 */  sw         $t1, 0x18($sp)
/* B528C 800FEECC 8E040058 */  lw         $a0, 0x58($s0)
/* B5290 800FEED0 0C038990 */  jal        func_race_800E2640
/* B5294 800FEED4 00000000 */   nop
/* B5298 800FEED8 10400033 */  beqz       $v0, .Lrace_800FEFA8
/* B529C 800FEEDC 3C028013 */   lui       $v0, %hi(D_race_80132BC0)
/* B52A0 800FEEE0 24432BC0 */  addiu      $v1, $v0, %lo(D_race_80132BC0)
/* B52A4 800FEEE4 C4640024 */  lwc1       $f4, 0x24($v1)
/* B52A8 800FEEE8 C4660028 */  lwc1       $f6, 0x28($v1)
/* B52AC 800FEEEC C468002C */  lwc1       $f8, 0x2C($v1)
/* B52B0 800FEEF0 C7A00050 */  lwc1       $f0, 0x50($sp)
/* B52B4 800FEEF4 E7A40030 */  swc1       $f4, 0x30($sp)
/* B52B8 800FEEF8 E7A60034 */  swc1       $f6, 0x34($sp)
/* B52BC 800FEEFC E7A80038 */  swc1       $f8, 0x38($sp)
/* B52C0 800FEF00 C62203A4 */  lwc1       $f2, 0x3A4($s1)
/* B52C4 800FEF04 46020001 */  sub.s      $f0, $f0, $f2
/* B52C8 800FEF08 262203A4 */  addiu      $v0, $s1, 0x3A4
/* B52CC 800FEF0C 46002102 */  mul.s      $f4, $f4, $f0
/* B52D0 800FEF10 E7A00040 */  swc1       $f0, 0x40($sp)
/* B52D4 800FEF14 C7A00054 */  lwc1       $f0, 0x54($sp)
/* B52D8 800FEF18 C4420004 */  lwc1       $f2, 0x4($v0)
/* B52DC 800FEF1C 46020001 */  sub.s      $f0, $f0, $f2
/* B52E0 800FEF20 C7A20058 */  lwc1       $f2, 0x58($sp)
/* B52E4 800FEF24 46003182 */  mul.s      $f6, $f6, $f0
/* B52E8 800FEF28 E7A00044 */  swc1       $f0, 0x44($sp)
/* B52EC 800FEF2C C4400008 */  lwc1       $f0, 0x8($v0)
/* B52F0 800FEF30 46001081 */  sub.s      $f2, $f2, $f0
/* B52F4 800FEF34 46024202 */  mul.s      $f8, $f8, $f2
/* B52F8 800FEF38 46062100 */  add.s      $f4, $f4, $f6
/* B52FC 800FEF3C 44800000 */  mtc1       $zero, $f0
/* B5300 800FEF40 46082100 */  add.s      $f4, $f4, $f8
/* B5304 800FEF44 4604003E */  c.le.s     $f0, $f4
/* B5308 800FEF48 00000000 */  nop
/* B530C 800FEF4C 45000016 */  bc1f       .Lrace_800FEFA8
/* B5310 800FEF50 E7A20048 */   swc1      $f2, 0x48($sp)
/* B5314 800FEF54 8FA60080 */  lw         $a2, 0x80($sp)
/* B5318 800FEF58 10C0000A */  beqz       $a2, .Lrace_800FEF84
/* B531C 800FEF5C 27A50050 */   addiu     $a1, $sp, 0x50
/* B5320 800FEF60 8E2200CC */  lw         $v0, 0xCC($s1)
/* B5324 800FEF64 84440020 */  lh         $a0, 0x20($v0)
/* B5328 800FEF68 02003821 */  addu       $a3, $s0, $zero
/* B532C 800FEF6C AFA30010 */  sw         $v1, 0x10($sp)
/* B5330 800FEF70 8C420024 */  lw         $v0, 0x24($v0)
/* B5334 800FEF74 0040F809 */  jalr       $v0
/* B5338 800FEF78 02242021 */   addu      $a0, $s1, $a0
/* B533C 800FEF7C 1040000A */  beqz       $v0, .Lrace_800FEFA8
/* B5340 800FEF80 00000000 */   nop
.Lrace_800FEF84:
/* B5344 800FEF84 C7B40084 */  lwc1       $f20, 0x84($sp)
/* B5348 800FEF88 24020001 */  addiu      $v0, $zero, 0x1
/* B534C 800FEF8C 8FAA0030 */  lw         $t2, 0x30($sp)
/* B5350 800FEF90 8FAB0034 */  lw         $t3, 0x34($sp)
/* B5354 800FEF94 8FAC0038 */  lw         $t4, 0x38($sp)
/* B5358 800FEF98 AE2A03E4 */  sw         $t2, 0x3E4($s1)
/* B535C 800FEF9C AE2B03E8 */  sw         $t3, 0x3E8($s1)
/* B5360 800FEFA0 AE2C03EC */  sw         $t4, 0x3EC($s1)
/* B5364 800FEFA4 AE2203F0 */  sw         $v0, 0x3F0($s1)
.Lrace_800FEFA8:
/* B5368 800FEFA8 8E2203F0 */  lw         $v0, 0x3F0($s1)
/* B536C 800FEFAC 1040000D */  beqz       $v0, .Lrace_800FEFE4
/* B5370 800FEFB0 00001021 */   addu      $v0, $zero, $zero
/* B5374 800FEFB4 44970000 */  mtc1       $s7, $f0
/* B5378 800FEFB8 46800020 */  cvt.s.w    $f0, $f0
/* B537C 800FEFBC 4600A002 */  mul.s      $f0, $f20, $f0
/* B5380 800FEFC0 4600030D */  trunc.w.s  $f12, $f0
/* B5384 800FEFC4 44106000 */  mfc1       $s0, $f12
/* B5388 800FEFC8 2E020005 */  sltiu      $v0, $s0, 0x5
/* B538C 800FEFCC 10400002 */  beqz       $v0, .Lrace_800FEFD8
/* B5390 800FEFD0 2610FFFB */   addiu     $s0, $s0, -0x5
/* B5394 800FEFD4 00008021 */  addu       $s0, $zero, $zero
.Lrace_800FEFD8:
/* B5398 800FEFD8 0C03FCBE */  jal        func_race_800FF2F8
/* B539C 800FEFDC 02202021 */   addu      $a0, $s1, $zero
/* B53A0 800FEFE0 02001021 */  addu       $v0, $s0, $zero
.Lrace_800FEFE4:
/* B53A4 800FEFE4 8FBF00A8 */  lw         $ra, 0xA8($sp)
/* B53A8 800FEFE8 8FB700A4 */  lw         $s7, 0xA4($sp)
/* B53AC 800FEFEC 8FB600A0 */  lw         $s6, 0xA0($sp)
/* B53B0 800FEFF0 8FB5009C */  lw         $s5, 0x9C($sp)
/* B53B4 800FEFF4 8FB40098 */  lw         $s4, 0x98($sp)
/* B53B8 800FEFF8 8FB30094 */  lw         $s3, 0x94($sp)
/* B53BC 800FEFFC 8FB20090 */  lw         $s2, 0x90($sp)
/* B53C0 800FF000 8FB1008C */  lw         $s1, 0x8C($sp)
/* B53C4 800FF004 8FB00088 */  lw         $s0, 0x88($sp)
/* B53C8 800FF008 D7B400B0 */  ldc1       $f20, 0xB0($sp)
/* B53CC 800FF00C 03E00008 */  jr         $ra
/* B53D0 800FF010 27BD00B8 */   addiu     $sp, $sp, 0xB8

glabel func_race_800FF014
/* B53D4 800FF014 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* B53D8 800FF018 AFB300B4 */  sw         $s3, 0xB4($sp)
/* B53DC 800FF01C 00809821 */  addu       $s3, $a0, $zero
/* B53E0 800FF020 27A30030 */  addiu      $v1, $sp, 0x30
/* B53E4 800FF024 26620738 */  addiu      $v0, $s3, 0x738
/* B53E8 800FF028 266407A8 */  addiu      $a0, $s3, 0x7A8
/* B53EC 800FF02C AFBF00B8 */  sw         $ra, 0xB8($sp)
/* B53F0 800FF030 AFB200B0 */  sw         $s2, 0xB0($sp)
/* B53F4 800FF034 AFB100AC */  sw         $s1, 0xAC($sp)
/* B53F8 800FF038 AFB000A8 */  sw         $s0, 0xA8($sp)
.Lrace_800FF03C:
/* B53FC 800FF03C 8C460000 */  lw         $a2, 0x0($v0)
/* B5400 800FF040 8C470004 */  lw         $a3, 0x4($v0)
/* B5404 800FF044 8C480008 */  lw         $t0, 0x8($v0)
/* B5408 800FF048 8C49000C */  lw         $t1, 0xC($v0)
/* B540C 800FF04C AC660000 */  sw         $a2, 0x0($v1)
/* B5410 800FF050 AC670004 */  sw         $a3, 0x4($v1)
/* B5414 800FF054 AC680008 */  sw         $t0, 0x8($v1)
/* B5418 800FF058 AC69000C */  sw         $t1, 0xC($v1)
/* B541C 800FF05C 24420010 */  addiu      $v0, $v0, 0x10
/* B5420 800FF060 1444FFF6 */  bne        $v0, $a0, .Lrace_800FF03C
/* B5424 800FF064 24630010 */   addiu     $v1, $v1, 0x10
/* B5428 800FF068 27B10010 */  addiu      $s1, $sp, 0x10
/* B542C 800FF06C 02202021 */  addu       $a0, $s1, $zero
/* B5430 800FF070 3C128013 */  lui        $s2, %hi(D_race_80132B90)
/* B5434 800FF074 26502B90 */  addiu      $s0, $s2, %lo(D_race_80132B90)
/* B5438 800FF078 8C460000 */  lw         $a2, 0x0($v0)
/* B543C 800FF07C 8C470004 */  lw         $a3, 0x4($v0)
/* B5440 800FF080 AC660000 */  sw         $a2, 0x0($v1)
/* B5444 800FF084 AC670004 */  sw         $a3, 0x4($v1)
/* B5448 800FF088 8E660744 */  lw         $a2, 0x744($s3)
/* B544C 800FF08C 8E670748 */  lw         $a3, 0x748($s3)
/* B5450 800FF090 8E68074C */  lw         $t0, 0x74C($s3)
/* B5454 800FF094 8E690750 */  lw         $t1, 0x750($s3)
/* B5458 800FF098 AFA60010 */  sw         $a2, 0x10($sp)
/* B545C 800FF09C AFA70014 */  sw         $a3, 0x14($sp)
/* B5460 800FF0A0 AFA80018 */  sw         $t0, 0x18($sp)
/* B5464 800FF0A4 AFA9001C */  sw         $t1, 0x1C($sp)
/* B5468 800FF0A8 0C001055 */  jal        func_80004154
/* B546C 800FF0AC 02002821 */   addu      $a1, $s0, $zero
/* B5470 800FF0B0 3C0543FA */  lui        $a1, (0x43FA0000 >> 16)
/* B5474 800FF0B4 C600000C */  lwc1       $f0, 0xC($s0)
/* B5478 800FF0B8 C6020010 */  lwc1       $f2, 0x10($s0)
/* B547C 800FF0BC C6040014 */  lwc1       $f4, 0x14($s0)
/* B5480 800FF0C0 27A40030 */  addiu      $a0, $sp, 0x30
/* B5484 800FF0C4 E7A00020 */  swc1       $f0, 0x20($sp)
/* B5488 800FF0C8 E7A20024 */  swc1       $f2, 0x24($sp)
/* B548C 800FF0CC 0C04C439 */  jal        func_race_801310E4
/* B5490 800FF0D0 E7A40028 */   swc1      $f4, 0x28($sp)
/* B5494 800FF0D4 02202021 */  addu       $a0, $s1, $zero
/* B5498 800FF0D8 8FA6003C */  lw         $a2, 0x3C($sp)
/* B549C 800FF0DC 8FA70040 */  lw         $a3, 0x40($sp)
/* B54A0 800FF0E0 8FA80044 */  lw         $t0, 0x44($sp)
/* B54A4 800FF0E4 8FA90048 */  lw         $t1, 0x48($sp)
/* B54A8 800FF0E8 AFA60010 */  sw         $a2, 0x10($sp)
/* B54AC 800FF0EC AFA70014 */  sw         $a3, 0x14($sp)
/* B54B0 800FF0F0 AFA80018 */  sw         $t0, 0x18($sp)
/* B54B4 800FF0F4 AFA9001C */  sw         $t1, 0x1C($sp)
/* B54B8 800FF0F8 0C001055 */  jal        func_80004154
/* B54BC 800FF0FC 02002821 */   addu      $a1, $s0, $zero
/* B54C0 800FF100 C7A00020 */  lwc1       $f0, 0x20($sp)
/* B54C4 800FF104 C6422B90 */  lwc1       $f2, %lo(D_race_80132B90)($s2)
/* B54C8 800FF108 46020002 */  mul.s      $f0, $f0, $f2
/* B54CC 800FF10C C7A60024 */  lwc1       $f6, 0x24($sp)
/* B54D0 800FF110 C6020004 */  lwc1       $f2, 0x4($s0)
/* B54D4 800FF114 46023182 */  mul.s      $f6, $f6, $f2
/* B54D8 800FF118 C6040008 */  lwc1       $f4, 0x8($s0)
/* B54DC 800FF11C C7A20028 */  lwc1       $f2, 0x28($sp)
/* B54E0 800FF120 46041082 */  mul.s      $f2, $f2, $f4
/* B54E4 800FF124 46060000 */  add.s      $f0, $f0, $f6
/* B54E8 800FF128 46020000 */  add.s      $f0, $f0, $f2
/* B54EC 800FF12C 3C01800D */  lui        $at, %hi(D_race_800CD2DC)
/* B54F0 800FF130 C422D2DC */  lwc1       $f2, %lo(D_race_800CD2DC)($at)
/* B54F4 800FF134 46020082 */  mul.s      $f2, $f0, $f2
/* B54F8 800FF138 3C01800D */  lui        $at, %hi(D_race_800CD2E0)
/* B54FC 800FF13C C420D2E0 */  lwc1       $f0, %lo(D_race_800CD2E0)($at)
/* B5500 800FF140 4602003C */  c.lt.s     $f0, $f2
/* B5504 800FF144 00000000 */  nop
/* B5508 800FF148 45030007 */  bc1tl      .Lrace_800FF168
/* B550C 800FF14C 46000086 */   mov.s     $f2, $f0
/* B5510 800FF150 3C01800D */  lui        $at, %hi(D_race_800CD2E4)
/* B5514 800FF154 C420D2E4 */  lwc1       $f0, %lo(D_race_800CD2E4)($at)
/* B5518 800FF158 4600103C */  c.lt.s     $f2, $f0
/* B551C 800FF15C 00000000 */  nop
/* B5520 800FF160 45030001 */  bc1tl      .Lrace_800FF168
/* B5524 800FF164 46000086 */   mov.s     $f2, $f0
.Lrace_800FF168:
/* B5528 800FF168 3C01800D */  lui        $at, %hi(D_race_800CD2E8)
/* B552C 800FF16C C420D2E8 */  lwc1       $f0, %lo(D_race_800CD2E8)($at)
/* B5530 800FF170 46001002 */  mul.s      $f0, $f2, $f0
/* B5534 800FF174 27A40030 */  addiu      $a0, $sp, 0x30
/* B5538 800FF178 24050002 */  addiu      $a1, $zero, 0x2
/* B553C 800FF17C 0C04C39E */  jal        func_race_80130E78
/* B5540 800FF180 E6600668 */   swc1      $f0, 0x668($s3)
/* B5544 800FF184 8FBF00B8 */  lw         $ra, 0xB8($sp)
/* B5548 800FF188 8FB300B4 */  lw         $s3, 0xB4($sp)
/* B554C 800FF18C 8FB200B0 */  lw         $s2, 0xB0($sp)
/* B5550 800FF190 8FB100AC */  lw         $s1, 0xAC($sp)
/* B5554 800FF194 8FB000A8 */  lw         $s0, 0xA8($sp)
/* B5558 800FF198 03E00008 */  jr         $ra
/* B555C 800FF19C 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_race_800FF1A0
/* B5560 800FF1A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B5564 800FF1A4 AFB10014 */  sw         $s1, 0x14($sp)
/* B5568 800FF1A8 00808821 */  addu       $s1, $a0, $zero
/* B556C 800FF1AC AFBF0018 */  sw         $ra, 0x18($sp)
/* B5570 800FF1B0 AFB00010 */  sw         $s0, 0x10($sp)
/* B5574 800FF1B4 8E220730 */  lw         $v0, 0x730($s1)
/* B5578 800FF1B8 14400005 */  bnez       $v0, .Lrace_800FF1D0
/* B557C 800FF1BC 263000E4 */   addiu     $s0, $s1, 0xE4
/* B5580 800FF1C0 0C0474DD */  jal        func_race_8011D374
/* B5584 800FF1C4 00000000 */   nop
/* B5588 800FF1C8 0803FCB9 */  j          .Lrace_800FF2E4
/* B558C 800FF1CC 00000000 */   nop
.Lrace_800FF1D0:
/* B5590 800FF1D0 02002021 */  addu       $a0, $s0, $zero
/* B5594 800FF1D4 0C01595B */  jal        func_8005656C
/* B5598 800FF1D8 2625067C */   addiu     $a1, $s1, 0x67C
/* B559C 800FF1DC 02002021 */  addu       $a0, $s0, $zero
/* B55A0 800FF1E0 0C01583B */  jal        func_800560EC
/* B55A4 800FF1E4 26250688 */   addiu     $a1, $s1, 0x688
/* B55A8 800FF1E8 2626019C */  addiu      $a2, $s1, 0x19C
/* B55AC 800FF1EC 3C028013 */  lui        $v0, %hi(D_race_80132270)
/* B55B0 800FF1F0 C620065C */  lwc1       $f0, 0x65C($s1)
/* B55B4 800FF1F4 2627035C */  addiu      $a3, $s1, 0x35C
/* B55B8 800FF1F8 E4402270 */  swc1       $f0, %lo(D_race_80132270)($v0)
/* B55BC 800FF1FC C620066C */  lwc1       $f0, 0x66C($s1)
/* B55C0 800FF200 3C028013 */  lui        $v0, %hi(D_race_80132274)
/* B55C4 800FF204 E4402274 */  swc1       $f0, %lo(D_race_80132274)($v0)
/* B55C8 800FF208 3C028013 */  lui        $v0, %hi(D_race_801322A8)
/* B55CC 800FF20C 244322A8 */  addiu      $v1, $v0, %lo(D_race_801322A8)
/* B55D0 800FF210 00C7102B */  sltu       $v0, $a2, $a3
/* B55D4 800FF214 1040000D */  beqz       $v0, .Lrace_800FF24C
/* B55D8 800FF218 262401E4 */   addiu     $a0, $s1, 0x1E4
/* B55DC 800FF21C 24650048 */  addiu      $a1, $v1, 0x48
.Lrace_800FF220:
/* B55E0 800FF220 8C82FFF4 */  lw         $v0, -0xC($a0)
/* B55E4 800FF224 24C60070 */  addiu      $a2, $a2, 0x70
/* B55E8 800FF228 00401821 */  addu       $v1, $v0, $zero
/* B55EC 800FF22C AC82FFF8 */  sw         $v0, -0x8($a0)
/* B55F0 800FF230 ACA3FFF4 */  sw         $v1, -0xC($a1)
/* B55F4 800FF234 8C820000 */  lw         $v0, 0x0($a0)
/* B55F8 800FF238 24840070 */  addiu      $a0, $a0, 0x70
/* B55FC 800FF23C ACA20000 */  sw         $v0, 0x0($a1)
/* B5600 800FF240 00C7102B */  sltu       $v0, $a2, $a3
/* B5604 800FF244 1440FFF6 */  bnez       $v0, .Lrace_800FF220
/* B5608 800FF248 24A50070 */   addiu     $a1, $a1, 0x70
.Lrace_800FF24C:
/* B560C 800FF24C 3C028013 */  lui        $v0, %hi(D_race_80132278)
/* B5610 800FF250 244B2278 */  addiu      $t3, $v0, %lo(D_race_80132278)
/* B5614 800FF254 8E2803A4 */  lw         $t0, 0x3A4($s1)
/* B5618 800FF258 8E2903A8 */  lw         $t1, 0x3A8($s1)
/* B561C 800FF25C 8E2A03AC */  lw         $t2, 0x3AC($s1)
/* B5620 800FF260 AD680000 */  sw         $t0, 0x0($t3)
/* B5624 800FF264 AD690004 */  sw         $t1, 0x4($t3)
/* B5628 800FF268 AD6A0008 */  sw         $t2, 0x8($t3)
/* B562C 800FF26C 262307DC */  addiu      $v1, $s1, 0x7DC
/* B5630 800FF270 26220738 */  addiu      $v0, $s1, 0x738
/* B5634 800FF274 262407A8 */  addiu      $a0, $s1, 0x7A8
.Lrace_800FF278:
/* B5638 800FF278 8C480000 */  lw         $t0, 0x0($v0)
/* B563C 800FF27C 8C490004 */  lw         $t1, 0x4($v0)
/* B5640 800FF280 8C4A0008 */  lw         $t2, 0x8($v0)
/* B5644 800FF284 8C4B000C */  lw         $t3, 0xC($v0)
/* B5648 800FF288 AC680000 */  sw         $t0, 0x0($v1)
/* B564C 800FF28C AC690004 */  sw         $t1, 0x4($v1)
/* B5650 800FF290 AC6A0008 */  sw         $t2, 0x8($v1)
/* B5654 800FF294 AC6B000C */  sw         $t3, 0xC($v1)
/* B5658 800FF298 24420010 */  addiu      $v0, $v0, 0x10
/* B565C 800FF29C 1444FFF6 */  bne        $v0, $a0, .Lrace_800FF278
/* B5660 800FF2A0 24630010 */   addiu     $v1, $v1, 0x10
/* B5664 800FF2A4 8C480000 */  lw         $t0, 0x0($v0)
/* B5668 800FF2A8 8C490004 */  lw         $t1, 0x4($v0)
/* B566C 800FF2AC AC680000 */  sw         $t0, 0x0($v1)
/* B5670 800FF2B0 AC690004 */  sw         $t1, 0x4($v1)
/* B5674 800FF2B4 C62007B0 */  lwc1       $f0, 0x7B0($s1)
/* B5678 800FF2B8 C62207B4 */  lwc1       $f2, 0x7B4($s1)
/* B567C 800FF2BC C62407B8 */  lwc1       $f4, 0x7B8($s1)
/* B5680 800FF2C0 C62607BC */  lwc1       $f6, 0x7BC($s1)
/* B5684 800FF2C4 C62807C0 */  lwc1       $f8, 0x7C0($s1)
/* B5688 800FF2C8 C62A07C4 */  lwc1       $f10, 0x7C4($s1)
/* B568C 800FF2CC E6200854 */  swc1       $f0, 0x854($s1)
/* B5690 800FF2D0 E6220858 */  swc1       $f2, 0x858($s1)
/* B5694 800FF2D4 E624085C */  swc1       $f4, 0x85C($s1)
/* B5698 800FF2D8 E6260860 */  swc1       $f6, 0x860($s1)
/* B569C 800FF2DC E6280864 */  swc1       $f8, 0x864($s1)
/* B56A0 800FF2E0 E62A0868 */  swc1       $f10, 0x868($s1)
.Lrace_800FF2E4:
/* B56A4 800FF2E4 8FBF0018 */  lw         $ra, 0x18($sp)
/* B56A8 800FF2E8 8FB10014 */  lw         $s1, 0x14($sp)
/* B56AC 800FF2EC 8FB00010 */  lw         $s0, 0x10($sp)
/* B56B0 800FF2F0 03E00008 */  jr         $ra
/* B56B4 800FF2F4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800FF2F8
/* B56B8 800FF2F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B56BC 800FF2FC AFB10014 */  sw         $s1, 0x14($sp)
/* B56C0 800FF300 00808821 */  addu       $s1, $a0, $zero
/* B56C4 800FF304 AFBF0018 */  sw         $ra, 0x18($sp)
/* B56C8 800FF308 AFB00010 */  sw         $s0, 0x10($sp)
/* B56CC 800FF30C 8E220730 */  lw         $v0, 0x730($s1)
/* B56D0 800FF310 14400005 */  bnez       $v0, .Lrace_800FF328
/* B56D4 800FF314 263000E4 */   addiu     $s0, $s1, 0xE4
/* B56D8 800FF318 0C04755E */  jal        func_race_8011D578
/* B56DC 800FF31C 00000000 */   nop
/* B56E0 800FF320 0803FD0D */  j          .Lrace_800FF434
/* B56E4 800FF324 00000000 */   nop
.Lrace_800FF328:
/* B56E8 800FF328 02002021 */  addu       $a0, $s0, $zero
/* B56EC 800FF32C 0C015962 */  jal        func_80056588
/* B56F0 800FF330 2625067C */   addiu     $a1, $s1, 0x67C
/* B56F4 800FF334 02002021 */  addu       $a0, $s0, $zero
/* B56F8 800FF338 0C01584E */  jal        func_80056138
/* B56FC 800FF33C 26250688 */   addiu     $a1, $s1, 0x688
/* B5700 800FF340 3C028013 */  lui        $v0, %hi(D_race_80132270)
/* B5704 800FF344 3C038013 */  lui        $v1, %hi(D_race_80132274)
/* B5708 800FF348 2625019C */  addiu      $a1, $s1, 0x19C
/* B570C 800FF34C C4402270 */  lwc1       $f0, %lo(D_race_80132270)($v0)
/* B5710 800FF350 3C028013 */  lui        $v0, %hi(D_race_801322A8)
/* B5714 800FF354 C4622274 */  lwc1       $f2, %lo(D_race_80132274)($v1)
/* B5718 800FF358 244322A8 */  addiu      $v1, $v0, %lo(D_race_801322A8)
/* B571C 800FF35C 2626035C */  addiu      $a2, $s1, 0x35C
/* B5720 800FF360 00A6102B */  sltu       $v0, $a1, $a2
/* B5724 800FF364 E620065C */  swc1       $f0, 0x65C($s1)
/* B5728 800FF368 1040000C */  beqz       $v0, .Lrace_800FF39C
/* B572C 800FF36C E622066C */   swc1      $f2, 0x66C($s1)
/* B5730 800FF370 24640048 */  addiu      $a0, $v1, 0x48
/* B5734 800FF374 262301E4 */  addiu      $v1, $s1, 0x1E4
.Lrace_800FF378:
/* B5738 800FF378 8C82FFF4 */  lw         $v0, -0xC($a0)
/* B573C 800FF37C 24A50070 */  addiu      $a1, $a1, 0x70
/* B5740 800FF380 AC62FFF4 */  sw         $v0, -0xC($v1)
/* B5744 800FF384 8C820000 */  lw         $v0, 0x0($a0)
/* B5748 800FF388 24840070 */  addiu      $a0, $a0, 0x70
/* B574C 800FF38C AC620000 */  sw         $v0, 0x0($v1)
/* B5750 800FF390 00A6102B */  sltu       $v0, $a1, $a2
/* B5754 800FF394 1440FFF8 */  bnez       $v0, .Lrace_800FF378
/* B5758 800FF398 24630070 */   addiu     $v1, $v1, 0x70
.Lrace_800FF39C:
/* B575C 800FF39C 3C028013 */  lui        $v0, %hi(D_race_80132278)
/* B5760 800FF3A0 244A2278 */  addiu      $t2, $v0, %lo(D_race_80132278)
/* B5764 800FF3A4 8D470000 */  lw         $a3, 0x0($t2)
/* B5768 800FF3A8 8D480004 */  lw         $t0, 0x4($t2)
/* B576C 800FF3AC 8D490008 */  lw         $t1, 0x8($t2)
/* B5770 800FF3B0 AE2703A4 */  sw         $a3, 0x3A4($s1)
/* B5774 800FF3B4 AE2803A8 */  sw         $t0, 0x3A8($s1)
/* B5778 800FF3B8 AE2903AC */  sw         $t1, 0x3AC($s1)
/* B577C 800FF3BC 26230738 */  addiu      $v1, $s1, 0x738
/* B5780 800FF3C0 262207DC */  addiu      $v0, $s1, 0x7DC
/* B5784 800FF3C4 2624084C */  addiu      $a0, $s1, 0x84C
.Lrace_800FF3C8:
/* B5788 800FF3C8 8C470000 */  lw         $a3, 0x0($v0)
/* B578C 800FF3CC 8C480004 */  lw         $t0, 0x4($v0)
/* B5790 800FF3D0 8C490008 */  lw         $t1, 0x8($v0)
/* B5794 800FF3D4 8C4A000C */  lw         $t2, 0xC($v0)
/* B5798 800FF3D8 AC670000 */  sw         $a3, 0x0($v1)
/* B579C 800FF3DC AC680004 */  sw         $t0, 0x4($v1)
/* B57A0 800FF3E0 AC690008 */  sw         $t1, 0x8($v1)
/* B57A4 800FF3E4 AC6A000C */  sw         $t2, 0xC($v1)
/* B57A8 800FF3E8 24420010 */  addiu      $v0, $v0, 0x10
/* B57AC 800FF3EC 1444FFF6 */  bne        $v0, $a0, .Lrace_800FF3C8
/* B57B0 800FF3F0 24630010 */   addiu     $v1, $v1, 0x10
/* B57B4 800FF3F4 8C470000 */  lw         $a3, 0x0($v0)
/* B57B8 800FF3F8 8C480004 */  lw         $t0, 0x4($v0)
/* B57BC 800FF3FC AC670000 */  sw         $a3, 0x0($v1)
/* B57C0 800FF400 AC680004 */  sw         $t0, 0x4($v1)
/* B57C4 800FF404 C6200854 */  lwc1       $f0, 0x854($s1)
/* B57C8 800FF408 C6220858 */  lwc1       $f2, 0x858($s1)
/* B57CC 800FF40C C624085C */  lwc1       $f4, 0x85C($s1)
/* B57D0 800FF410 C6260860 */  lwc1       $f6, 0x860($s1)
/* B57D4 800FF414 C6280864 */  lwc1       $f8, 0x864($s1)
/* B57D8 800FF418 C62A0868 */  lwc1       $f10, 0x868($s1)
/* B57DC 800FF41C E62007B0 */  swc1       $f0, 0x7B0($s1)
/* B57E0 800FF420 E62207B4 */  swc1       $f2, 0x7B4($s1)
/* B57E4 800FF424 E62407B8 */  swc1       $f4, 0x7B8($s1)
/* B57E8 800FF428 E62607BC */  swc1       $f6, 0x7BC($s1)
/* B57EC 800FF42C E62807C0 */  swc1       $f8, 0x7C0($s1)
/* B57F0 800FF430 E62A07C4 */  swc1       $f10, 0x7C4($s1)
.Lrace_800FF434:
/* B57F4 800FF434 8FBF0018 */  lw         $ra, 0x18($sp)
/* B57F8 800FF438 8FB10014 */  lw         $s1, 0x14($sp)
/* B57FC 800FF43C 8FB00010 */  lw         $s0, 0x10($sp)
/* B5800 800FF440 03E00008 */  jr         $ra
/* B5804 800FF444 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800FF448
/* B5808 800FF448 27BDFF70 */  addiu      $sp, $sp, -0x90
/* B580C 800FF44C AFB20078 */  sw         $s2, 0x78($sp)
/* B5810 800FF450 00809021 */  addu       $s2, $a0, $zero
/* B5814 800FF454 AFB3007C */  sw         $s3, 0x7C($sp)
/* B5818 800FF458 00A09821 */  addu       $s3, $a1, $zero
/* B581C 800FF45C AFBF0080 */  sw         $ra, 0x80($sp)
/* B5820 800FF460 AFB10074 */  sw         $s1, 0x74($sp)
/* B5824 800FF464 AFB00070 */  sw         $s0, 0x70($sp)
/* B5828 800FF468 F7B40088 */  sdc1       $f20, 0x88($sp)
/* B582C 800FF46C 8E480744 */  lw         $t0, 0x744($s2)
/* B5830 800FF470 8E490748 */  lw         $t1, 0x748($s2)
/* B5834 800FF474 8E4A074C */  lw         $t2, 0x74C($s2)
/* B5838 800FF478 8E4B0750 */  lw         $t3, 0x750($s2)
/* B583C 800FF47C AFA80010 */  sw         $t0, 0x10($sp)
/* B5840 800FF480 AFA90014 */  sw         $t1, 0x14($sp)
/* B5844 800FF484 AFAA0018 */  sw         $t2, 0x18($sp)
/* B5848 800FF488 AFAB001C */  sw         $t3, 0x1C($sp)
/* B584C 800FF48C 8E45013C */  lw         $a1, 0x13C($s2)
/* B5850 800FF490 27A40010 */  addiu      $a0, $sp, 0x10
/* B5854 800FF494 0C001055 */  jal        func_80004154
/* B5858 800FF498 24A50028 */   addiu     $a1, $a1, 0x28
/* B585C 800FF49C 8E4206AC */  lw         $v0, 0x6AC($s2)
/* B5860 800FF4A0 30420008 */  andi       $v0, $v0, 0x8
/* B5864 800FF4A4 14400007 */  bnez       $v0, .Lrace_800FF4C4
/* B5868 800FF4A8 00000000 */   nop
/* B586C 800FF4AC C642066C */  lwc1       $f2, 0x66C($s2)
/* B5870 800FF4B0 44800000 */  mtc1       $zero, $f0
/* B5874 800FF4B4 46001032 */  c.eq.s     $f2, $f0
/* B5878 800FF4B8 00000000 */  nop
/* B587C 800FF4BC 45010023 */  bc1t       .Lrace_800FF54C
/* B5880 800FF4C0 00000000 */   nop
.Lrace_800FF4C4:
/* B5884 800FF4C4 8E42013C */  lw         $v0, 0x13C($s2)
/* B5888 800FF4C8 C4400028 */  lwc1       $f0, 0x28($v0)
/* B588C 800FF4CC E7A00020 */  swc1       $f0, 0x20($sp)
/* B5890 800FF4D0 C440002C */  lwc1       $f0, 0x2C($v0)
/* B5894 800FF4D4 E7A00024 */  swc1       $f0, 0x24($sp)
/* B5898 800FF4D8 C4400030 */  lwc1       $f0, 0x30($v0)
/* B589C 800FF4DC E7A00028 */  swc1       $f0, 0x28($sp)
/* B58A0 800FF4E0 C4400034 */  lwc1       $f0, 0x34($v0)
/* B58A4 800FF4E4 E7A00030 */  swc1       $f0, 0x30($sp)
/* B58A8 800FF4E8 C4400038 */  lwc1       $f0, 0x38($v0)
/* B58AC 800FF4EC E7A00034 */  swc1       $f0, 0x34($sp)
/* B58B0 800FF4F0 C440003C */  lwc1       $f0, 0x3C($v0)
/* B58B4 800FF4F4 27A40040 */  addiu      $a0, $sp, 0x40
/* B58B8 800FF4F8 E7A00038 */  swc1       $f0, 0x38($sp)
/* B58BC 800FF4FC C4400040 */  lwc1       $f0, 0x40($v0)
/* B58C0 800FF500 27B10050 */  addiu      $s1, $sp, 0x50
/* B58C4 800FF504 E7A00040 */  swc1       $f0, 0x40($sp)
/* B58C8 800FF508 C4400044 */  lwc1       $f0, 0x44($v0)
/* B58CC 800FF50C 02202821 */  addu       $a1, $s1, $zero
/* B58D0 800FF510 E7A00044 */  swc1       $f0, 0x44($sp)
/* B58D4 800FF514 C4400048 */  lwc1       $f0, 0x48($v0)
/* B58D8 800FF518 27B00020 */  addiu      $s0, $sp, 0x20
/* B58DC 800FF51C E7A00048 */  swc1       $f0, 0x48($sp)
/* B58E0 800FF520 8E47066C */  lw         $a3, 0x66C($s2)
/* B58E4 800FF524 0C0012FA */  jal        func_80004BE8
/* B58E8 800FF528 02003021 */   addu      $a2, $s0, $zero
/* B58EC 800FF52C 8E43013C */  lw         $v1, 0x13C($s2)
/* B58F0 800FF530 02002821 */  addu       $a1, $s0, $zero
/* B58F4 800FF534 8C620024 */  lw         $v0, 0x24($v1)
/* B58F8 800FF538 02203021 */  addu       $a2, $s1, $zero
/* B58FC 800FF53C 84440080 */  lh         $a0, 0x80($v0)
/* B5900 800FF540 8C420084 */  lw         $v0, 0x84($v0)
/* B5904 800FF544 0040F809 */  jalr       $v0
/* B5908 800FF548 00642021 */   addu      $a0, $v1, $a0
.Lrace_800FF54C:
/* B590C 800FF54C 8E4305E0 */  lw         $v1, 0x5E0($s2)
/* B5910 800FF550 14600009 */  bnez       $v1, .Lrace_800FF578
/* B5914 800FF554 0263102B */   sltu      $v0, $s3, $v1
/* B5918 800FF558 C64207CC */  lwc1       $f2, 0x7CC($s2)
/* B591C 800FF55C 44800000 */  mtc1       $zero, $f0
/* B5920 800FF560 46001032 */  c.eq.s     $f2, $f0
/* B5924 800FF564 00000000 */  nop
/* B5928 800FF568 4500000E */  bc1f       .Lrace_800FF5A4
/* B592C 800FF56C 00000000 */   nop
/* B5930 800FF570 0803FDB9 */  j          .Lrace_800FF6E4
/* B5934 800FF574 00000000 */   nop
.Lrace_800FF578:
/* B5938 800FF578 14400009 */  bnez       $v0, .Lrace_800FF5A0
/* B593C 800FF57C 00731023 */   subu      $v0, $v1, $s3
/* B5940 800FF580 C64007C8 */  lwc1       $f0, 0x7C8($s2)
/* B5944 800FF584 3C01800D */  lui        $at, %hi(D_race_800CD2EC)
/* B5948 800FF588 C422D2EC */  lwc1       $f2, %lo(D_race_800CD2EC)($at)
/* B594C 800FF58C 46020002 */  mul.s      $f0, $f0, $f2
/* B5950 800FF590 AE4005E0 */  sw         $zero, 0x5E0($s2)
/* B5954 800FF594 46000007 */  neg.s      $f0, $f0
/* B5958 800FF598 0803FD69 */  j          .Lrace_800FF5A4
/* B595C 800FF59C E64007C8 */   swc1      $f0, 0x7C8($s2)
.Lrace_800FF5A0:
/* B5960 800FF5A0 AE4205E0 */  sw         $v0, 0x5E0($s2)
.Lrace_800FF5A4:
/* B5964 800FF5A4 C64007CC */  lwc1       $f0, 0x7CC($s2)
/* B5968 800FF5A8 44802000 */  mtc1       $zero, $f4
/* B596C 800FF5AC 4600203E */  c.le.s     $f4, $f0
/* B5970 800FF5B0 00000000 */  nop
/* B5974 800FF5B4 45010002 */  bc1t       .Lrace_800FF5C0
/* B5978 800FF5B8 24030001 */   addiu     $v1, $zero, 0x1
/* B597C 800FF5BC 00001821 */  addu       $v1, $zero, $zero
.Lrace_800FF5C0:
/* B5980 800FF5C0 8E42013C */  lw         $v0, 0x13C($s2)
/* B5984 800FF5C4 C4400028 */  lwc1       $f0, 0x28($v0)
/* B5988 800FF5C8 E7A00020 */  swc1       $f0, 0x20($sp)
/* B598C 800FF5CC C440002C */  lwc1       $f0, 0x2C($v0)
/* B5990 800FF5D0 E7A00024 */  swc1       $f0, 0x24($sp)
/* B5994 800FF5D4 C4400030 */  lwc1       $f0, 0x30($v0)
/* B5998 800FF5D8 E7A00028 */  swc1       $f0, 0x28($sp)
/* B599C 800FF5DC C4400034 */  lwc1       $f0, 0x34($v0)
/* B59A0 800FF5E0 E7A00030 */  swc1       $f0, 0x30($sp)
/* B59A4 800FF5E4 C4400038 */  lwc1       $f0, 0x38($v0)
/* B59A8 800FF5E8 E7A00034 */  swc1       $f0, 0x34($sp)
/* B59AC 800FF5EC C440003C */  lwc1       $f0, 0x3C($v0)
/* B59B0 800FF5F0 E7A00038 */  swc1       $f0, 0x38($sp)
/* B59B4 800FF5F4 C4400040 */  lwc1       $f0, 0x40($v0)
/* B59B8 800FF5F8 E7A00040 */  swc1       $f0, 0x40($sp)
/* B59BC 800FF5FC C4400044 */  lwc1       $f0, 0x44($v0)
/* B59C0 800FF600 E7A00044 */  swc1       $f0, 0x44($sp)
/* B59C4 800FF604 C4400048 */  lwc1       $f0, 0x48($v0)
/* B59C8 800FF608 E7A00048 */  swc1       $f0, 0x48($sp)
/* B59CC 800FF60C C64007C8 */  lwc1       $f0, 0x7C8($s2)
/* B59D0 800FF610 4493A000 */  mtc1       $s3, $f20
/* B59D4 800FF614 4680A520 */  cvt.s.w    $f20, $f20
/* B59D8 800FF618 46140002 */  mul.s      $f0, $f0, $f20
/* B59DC 800FF61C C64207CC */  lwc1       $f2, 0x7CC($s2)
/* B59E0 800FF620 46001080 */  add.s      $f2, $f2, $f0
/* B59E4 800FF624 8E4205E0 */  lw         $v0, 0x5E0($s2)
/* B59E8 800FF628 1440000B */  bnez       $v0, .Lrace_800FF658
/* B59EC 800FF62C E64207CC */   swc1      $f2, 0x7CC($s2)
/* B59F0 800FF630 4602203E */  c.le.s     $f4, $f2
/* B59F4 800FF634 00000000 */  nop
/* B59F8 800FF638 45010002 */  bc1t       .Lrace_800FF644
/* B59FC 800FF63C 24020001 */   addiu     $v0, $zero, 0x1
/* B5A00 800FF640 00001021 */  addu       $v0, $zero, $zero
.Lrace_800FF644:
/* B5A04 800FF644 10620005 */  beq        $v1, $v0, .Lrace_800FF65C
/* B5A08 800FF648 2651035C */   addiu     $s1, $s2, 0x35C
/* B5A0C 800FF64C E64407CC */  swc1       $f4, 0x7CC($s2)
/* B5A10 800FF650 0803FDB9 */  j          .Lrace_800FF6E4
/* B5A14 800FF654 E64407D0 */   swc1      $f4, 0x7D0($s2)
.Lrace_800FF658:
/* B5A18 800FF658 2651035C */  addiu      $s1, $s2, 0x35C
.Lrace_800FF65C:
/* B5A1C 800FF65C 8E43013C */  lw         $v1, 0x13C($s2)
/* B5A20 800FF660 02202821 */  addu       $a1, $s1, $zero
/* B5A24 800FF664 8C620024 */  lw         $v0, 0x24($v1)
/* B5A28 800FF668 26460218 */  addiu      $a2, $s2, 0x218
/* B5A2C 800FF66C 84440060 */  lh         $a0, 0x60($v0)
/* B5A30 800FF670 8C420064 */  lw         $v0, 0x64($v0)
/* B5A34 800FF674 0040F809 */  jalr       $v0
/* B5A38 800FF678 00642021 */   addu      $a0, $v1, $a0
/* B5A3C 800FF67C 27A40020 */  addiu      $a0, $sp, 0x20
/* B5A40 800FF680 27B00050 */  addiu      $s0, $sp, 0x50
/* B5A44 800FF684 02002821 */  addu       $a1, $s0, $zero
/* B5A48 800FF688 8E4707CC */  lw         $a3, 0x7CC($s2)
/* B5A4C 800FF68C 0C0012FA */  jal        func_80004BE8
/* B5A50 800FF690 27A60030 */   addiu     $a2, $sp, 0x30
/* B5A54 800FF694 8E43013C */  lw         $v1, 0x13C($s2)
/* B5A58 800FF698 02002821 */  addu       $a1, $s0, $zero
/* B5A5C 800FF69C 8C620024 */  lw         $v0, 0x24($v1)
/* B5A60 800FF6A0 27A60040 */  addiu      $a2, $sp, 0x40
/* B5A64 800FF6A4 84440080 */  lh         $a0, 0x80($v0)
/* B5A68 800FF6A8 8C420084 */  lw         $v0, 0x84($v0)
/* B5A6C 800FF6AC 0040F809 */  jalr       $v0
/* B5A70 800FF6B0 00642021 */   addu      $a0, $v1, $a0
/* B5A74 800FF6B4 8E43013C */  lw         $v1, 0x13C($s2)
/* B5A78 800FF6B8 02202821 */  addu       $a1, $s1, $zero
/* B5A7C 800FF6BC 8C620024 */  lw         $v0, 0x24($v1)
/* B5A80 800FF6C0 27A60060 */  addiu      $a2, $sp, 0x60
/* B5A84 800FF6C4 84440060 */  lh         $a0, 0x60($v0)
/* B5A88 800FF6C8 8C420064 */  lw         $v0, 0x64($v0)
/* B5A8C 800FF6CC 0040F809 */  jalr       $v0
/* B5A90 800FF6D0 00642021 */   addu      $a0, $v1, $a0
/* B5A94 800FF6D4 C7A00068 */  lwc1       $f0, 0x68($sp)
/* B5A98 800FF6D8 C6420220 */  lwc1       $f2, 0x220($s2)
/* B5A9C 800FF6DC 46020001 */  sub.s      $f0, $f0, $f2
/* B5AA0 800FF6E0 E64007D0 */  swc1       $f0, 0x7D0($s2)
.Lrace_800FF6E4:
/* B5AA4 800FF6E4 8E4305E4 */  lw         $v1, 0x5E4($s2)
/* B5AA8 800FF6E8 1060002D */  beqz       $v1, .Lrace_800FF7A0
/* B5AAC 800FF6EC 0263102B */   sltu      $v0, $s3, $v1
/* B5AB0 800FF6F0 14400009 */  bnez       $v0, .Lrace_800FF718
/* B5AB4 800FF6F4 27B00020 */   addiu     $s0, $sp, 0x20
/* B5AB8 800FF6F8 8E4200CC */  lw         $v0, 0xCC($s2)
/* B5ABC 800FF6FC AE4005E4 */  sw         $zero, 0x5E4($s2)
/* B5AC0 800FF700 84440060 */  lh         $a0, 0x60($v0)
/* B5AC4 800FF704 8C420064 */  lw         $v0, 0x64($v0)
/* B5AC8 800FF708 0040F809 */  jalr       $v0
/* B5ACC 800FF70C 02442021 */   addu      $a0, $s2, $a0
/* B5AD0 800FF710 0803FDEC */  j          .Lrace_800FF7B0
/* B5AD4 800FF714 00000000 */   nop
.Lrace_800FF718:
/* B5AD8 800FF718 4493A000 */  mtc1       $s3, $f20
/* B5ADC 800FF71C 4680A520 */  cvt.s.w    $f20, $f20
/* B5AE0 800FF720 02002821 */  addu       $a1, $s0, $zero
/* B5AE4 800FF724 00731023 */  subu       $v0, $v1, $s3
/* B5AE8 800FF728 8E43013C */  lw         $v1, 0x13C($s2)
/* B5AEC 800FF72C 27B10040 */  addiu      $s1, $sp, 0x40
/* B5AF0 800FF730 AE4205E4 */  sw         $v0, 0x5E4($s2)
/* B5AF4 800FF734 8C620024 */  lw         $v0, 0x24($v1)
/* B5AF8 800FF738 02203021 */  addu       $a2, $s1, $zero
/* B5AFC 800FF73C 84440088 */  lh         $a0, 0x88($v0)
/* B5B00 800FF740 8C42008C */  lw         $v0, 0x8C($v0)
/* B5B04 800FF744 0040F809 */  jalr       $v0
/* B5B08 800FF748 00642021 */   addu      $a0, $v1, $a0
/* B5B0C 800FF74C C64007C0 */  lwc1       $f0, 0x7C0($s2)
/* B5B10 800FF750 46140002 */  mul.s      $f0, $f0, $f20
/* B5B14 800FF754 C64207C4 */  lwc1       $f2, 0x7C4($s2)
/* B5B18 800FF758 02002021 */  addu       $a0, $s0, $zero
/* B5B1C 800FF75C 46001080 */  add.s      $f2, $f2, $f0
/* B5B20 800FF760 27B00050 */  addiu      $s0, $sp, 0x50
/* B5B24 800FF764 02002821 */  addu       $a1, $s0, $zero
/* B5B28 800FF768 44071000 */  mfc1       $a3, $f2
/* B5B2C 800FF76C 02203021 */  addu       $a2, $s1, $zero
/* B5B30 800FF770 0C0012FA */  jal        func_80004BE8
/* B5B34 800FF774 AE4707C4 */   sw        $a3, 0x7C4($s2)
/* B5B38 800FF778 8E43013C */  lw         $v1, 0x13C($s2)
/* B5B3C 800FF77C 02002821 */  addu       $a1, $s0, $zero
/* B5B40 800FF780 8C620024 */  lw         $v0, 0x24($v1)
/* B5B44 800FF784 02203021 */  addu       $a2, $s1, $zero
/* B5B48 800FF788 84440080 */  lh         $a0, 0x80($v0)
/* B5B4C 800FF78C 8C420084 */  lw         $v0, 0x84($v0)
/* B5B50 800FF790 0040F809 */  jalr       $v0
/* B5B54 800FF794 00642021 */   addu      $a0, $v1, $a0
/* B5B58 800FF798 0803FDEC */  j          .Lrace_800FF7B0
/* B5B5C 800FF79C 00000000 */   nop
.Lrace_800FF7A0:
/* B5B60 800FF7A0 8E4206AC */  lw         $v0, 0x6AC($s2)
/* B5B64 800FF7A4 2403FFF9 */  addiu      $v1, $zero, -0x7
/* B5B68 800FF7A8 00431024 */  and        $v0, $v0, $v1
/* B5B6C 800FF7AC AE4206AC */  sw         $v0, 0x6AC($s2)
.Lrace_800FF7B0:
/* B5B70 800FF7B0 8FBF0080 */  lw         $ra, 0x80($sp)
/* B5B74 800FF7B4 8FB3007C */  lw         $s3, 0x7C($sp)
/* B5B78 800FF7B8 8FB20078 */  lw         $s2, 0x78($sp)
/* B5B7C 800FF7BC 8FB10074 */  lw         $s1, 0x74($sp)
/* B5B80 800FF7C0 8FB00070 */  lw         $s0, 0x70($sp)
/* B5B84 800FF7C4 D7B40088 */  ldc1       $f20, 0x88($sp)
/* B5B88 800FF7C8 03E00008 */  jr         $ra
/* B5B8C 800FF7CC 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_race_800FF7D0
/* B5B90 800FF7D0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B5B94 800FF7D4 AFB00040 */  sw         $s0, 0x40($sp)
/* B5B98 800FF7D8 00808021 */  addu       $s0, $a0, $zero
/* B5B9C 800FF7DC AFBF0048 */  sw         $ra, 0x48($sp)
/* B5BA0 800FF7E0 AFB10044 */  sw         $s1, 0x44($sp)
/* B5BA4 800FF7E4 8E070738 */  lw         $a3, 0x738($s0)
/* B5BA8 800FF7E8 8E08073C */  lw         $t0, 0x73C($s0)
/* B5BAC 800FF7EC 8E090740 */  lw         $t1, 0x740($s0)
/* B5BB0 800FF7F0 AFA70020 */  sw         $a3, 0x20($sp)
/* B5BB4 800FF7F4 AFA80024 */  sw         $t0, 0x24($sp)
/* B5BB8 800FF7F8 AFA90028 */  sw         $t1, 0x28($sp)
/* B5BBC 800FF7FC 8E02013C */  lw         $v0, 0x13C($s0)
/* B5BC0 800FF800 C4480034 */  lwc1       $f8, 0x34($v0)
/* B5BC4 800FF804 E7A80010 */  swc1       $f8, 0x10($sp)
/* B5BC8 800FF808 C44A0038 */  lwc1       $f10, 0x38($v0)
/* B5BCC 800FF80C 27A30010 */  addiu      $v1, $sp, 0x10
/* B5BD0 800FF810 E46A0004 */  swc1       $f10, 0x4($v1)
/* B5BD4 800FF814 C446003C */  lwc1       $f6, 0x3C($v0)
/* B5BD8 800FF818 E4660008 */  swc1       $f6, 0x8($v1)
/* B5BDC 800FF81C C7A40028 */  lwc1       $f4, 0x28($sp)
/* B5BE0 800FF820 C60007B0 */  lwc1       $f0, 0x7B0($s0)
/* B5BE4 800FF824 46002101 */  sub.s      $f4, $f4, $f0
/* B5BE8 800FF828 E7A40028 */  swc1       $f4, 0x28($sp)
/* B5BEC 800FF82C C60007B4 */  lwc1       $f0, 0x7B4($s0)
/* B5BF0 800FF830 C60207D0 */  lwc1       $f2, 0x7D0($s0)
/* B5BF4 800FF834 46020000 */  add.s      $f0, $f0, $f2
/* B5BF8 800FF838 C602065C */  lwc1       $f2, 0x65C($s0)
/* B5BFC 800FF83C 46020000 */  add.s      $f0, $f0, $f2
/* B5C00 800FF840 46002100 */  add.s      $f4, $f4, $f0
/* B5C04 800FF844 E7A40028 */  swc1       $f4, 0x28($sp)
/* B5C08 800FF848 C60007B8 */  lwc1       $f0, 0x7B8($s0)
/* B5C0C 800FF84C 46004202 */  mul.s      $f8, $f8, $f0
/* B5C10 800FF850 00000000 */  nop
/* B5C14 800FF854 46005282 */  mul.s      $f10, $f10, $f0
/* B5C18 800FF858 00000000 */  nop
/* B5C1C 800FF85C 46003182 */  mul.s      $f6, $f6, $f0
/* B5C20 800FF860 C7A20020 */  lwc1       $f2, 0x20($sp)
/* B5C24 800FF864 46081080 */  add.s      $f2, $f2, $f8
/* B5C28 800FF868 C7A00024 */  lwc1       $f0, 0x24($sp)
/* B5C2C 800FF86C 460A0000 */  add.s      $f0, $f0, $f10
/* B5C30 800FF870 46062100 */  add.s      $f4, $f4, $f6
/* B5C34 800FF874 E7A80030 */  swc1       $f8, 0x30($sp)
/* B5C38 800FF878 E7AA0034 */  swc1       $f10, 0x34($sp)
/* B5C3C 800FF87C E7A60038 */  swc1       $f6, 0x38($sp)
/* B5C40 800FF880 E7A20020 */  swc1       $f2, 0x20($sp)
/* B5C44 800FF884 E7A00024 */  swc1       $f0, 0x24($sp)
/* B5C48 800FF888 E7A40028 */  swc1       $f4, 0x28($sp)
/* B5C4C 800FF88C 8E02013C */  lw         $v0, 0x13C($s0)
/* B5C50 800FF890 8C430024 */  lw         $v1, 0x24($v0)
/* B5C54 800FF894 84640018 */  lh         $a0, 0x18($v1)
/* B5C58 800FF898 27A50020 */  addiu      $a1, $sp, 0x20
/* B5C5C 800FF89C 00442021 */  addu       $a0, $v0, $a0
/* B5C60 800FF8A0 8C62001C */  lw         $v0, 0x1C($v1)
/* B5C64 800FF8A4 0040F809 */  jalr       $v0
/* B5C68 800FF8A8 26110738 */   addiu     $s1, $s0, 0x738
/* B5C6C 800FF8AC 8E22001C */  lw         $v0, 0x1C($s1)
/* B5C70 800FF8B0 8E03013C */  lw         $v1, 0x13C($s0)
/* B5C74 800FF8B4 26050010 */  addiu      $a1, $s0, 0x10
/* B5C78 800FF8B8 AE020370 */  sw         $v0, 0x370($s0)
/* B5C7C 800FF8BC 8C620024 */  lw         $v0, 0x24($v1)
/* B5C80 800FF8C0 2606001C */  addiu      $a2, $s0, 0x1C
/* B5C84 800FF8C4 84440060 */  lh         $a0, 0x60($v0)
/* B5C88 800FF8C8 8C420064 */  lw         $v0, 0x64($v0)
/* B5C8C 800FF8CC 0040F809 */  jalr       $v0
/* B5C90 800FF8D0 00642021 */   addu      $a0, $v1, $a0
/* B5C94 800FF8D4 8E02013C */  lw         $v0, 0x13C($s0)
/* B5C98 800FF8D8 C4400028 */  lwc1       $f0, 0x28($v0)
/* B5C9C 800FF8DC E600016C */  swc1       $f0, 0x16C($s0)
/* B5CA0 800FF8E0 C440002C */  lwc1       $f0, 0x2C($v0)
/* B5CA4 800FF8E4 2603016C */  addiu      $v1, $s0, 0x16C
/* B5CA8 800FF8E8 E4600004 */  swc1       $f0, 0x4($v1)
/* B5CAC 800FF8EC C4400030 */  lwc1       $f0, 0x30($v0)
/* B5CB0 800FF8F0 02002021 */  addu       $a0, $s0, $zero
/* B5CB4 800FF8F4 0C045B7A */  jal        func_race_80116DE8
/* B5CB8 800FF8F8 E4600008 */   swc1      $f0, 0x8($v1)
/* B5CBC 800FF8FC 8FBF0048 */  lw         $ra, 0x48($sp)
/* B5CC0 800FF900 8FB10044 */  lw         $s1, 0x44($sp)
/* B5CC4 800FF904 8FB00040 */  lw         $s0, 0x40($sp)
/* B5CC8 800FF908 03E00008 */  jr         $ra
/* B5CCC 800FF90C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800FF910
/* B5CD0 800FF910 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B5CD4 800FF914 AFB10034 */  sw         $s1, 0x34($sp)
/* B5CD8 800FF918 00808821 */  addu       $s1, $a0, $zero
/* B5CDC 800FF91C AFB00030 */  sw         $s0, 0x30($sp)
/* B5CE0 800FF920 00A08021 */  addu       $s0, $a1, $zero
/* B5CE4 800FF924 26240738 */  addiu      $a0, $s1, 0x738
/* B5CE8 800FF928 24020001 */  addiu      $v0, $zero, 0x1
/* B5CEC 800FF92C AFBF0040 */  sw         $ra, 0x40($sp)
/* B5CF0 800FF930 AFB3003C */  sw         $s3, 0x3C($sp)
/* B5CF4 800FF934 AFB20038 */  sw         $s2, 0x38($sp)
/* B5CF8 800FF938 0C04C3D6 */  jal        func_race_80130F58
/* B5CFC 800FF93C AE220730 */   sw        $v0, 0x730($s1)
/* B5D00 800FF940 27A50010 */  addiu      $a1, $sp, 0x10
/* B5D04 800FF944 00009821 */  addu       $s3, $zero, $zero
/* B5D08 800FF948 8E070008 */  lw         $a3, 0x8($s0)
/* B5D0C 800FF94C 8E08000C */  lw         $t0, 0xC($s0)
/* B5D10 800FF950 8E090010 */  lw         $t1, 0x10($s0)
/* B5D14 800FF954 AFA70010 */  sw         $a3, 0x10($sp)
/* B5D18 800FF958 AFA80014 */  sw         $t0, 0x14($sp)
/* B5D1C 800FF95C AFA90018 */  sw         $t1, 0x18($sp)
/* B5D20 800FF960 8E070014 */  lw         $a3, 0x14($s0)
/* B5D24 800FF964 8E080018 */  lw         $t0, 0x18($s0)
/* B5D28 800FF968 8E09001C */  lw         $t1, 0x1C($s0)
/* B5D2C 800FF96C 8E0A0020 */  lw         $t2, 0x20($s0)
/* B5D30 800FF970 AFA70020 */  sw         $a3, 0x20($sp)
/* B5D34 800FF974 AFA80024 */  sw         $t0, 0x24($sp)
/* B5D38 800FF978 AFA90028 */  sw         $t1, 0x28($sp)
/* B5D3C 800FF97C AFAA002C */  sw         $t2, 0x2C($sp)
/* B5D40 800FF980 8E23013C */  lw         $v1, 0x13C($s1)
/* B5D44 800FF984 241203A4 */  addiu      $s2, $zero, 0x3A4
/* B5D48 800FF988 8C620024 */  lw         $v0, 0x24($v1)
/* B5D4C 800FF98C 24100374 */  addiu      $s0, $zero, 0x374
/* B5D50 800FF990 84440018 */  lh         $a0, 0x18($v0)
/* B5D54 800FF994 8C42001C */  lw         $v0, 0x1C($v0)
/* B5D58 800FF998 0040F809 */  jalr       $v0
/* B5D5C 800FF99C 00642021 */   addu      $a0, $v1, $a0
/* B5D60 800FF9A0 8E25013C */  lw         $a1, 0x13C($s1)
/* B5D64 800FF9A4 27A40020 */  addiu      $a0, $sp, 0x20
/* B5D68 800FF9A8 0C001055 */  jal        func_80004154
/* B5D6C 800FF9AC 24A50028 */   addiu     $a1, $a1, 0x28
/* B5D70 800FF9B0 02302821 */  addu       $a1, $s1, $s0
.Lrace_800FF9B4:
/* B5D74 800FF9B4 02323021 */  addu       $a2, $s1, $s2
/* B5D78 800FF9B8 2652000C */  addiu      $s2, $s2, 0xC
/* B5D7C 800FF9BC 8E23013C */  lw         $v1, 0x13C($s1)
/* B5D80 800FF9C0 2610000C */  addiu      $s0, $s0, 0xC
/* B5D84 800FF9C4 8C620024 */  lw         $v0, 0x24($v1)
/* B5D88 800FF9C8 26730001 */  addiu      $s3, $s3, 0x1
/* B5D8C 800FF9CC 84440060 */  lh         $a0, 0x60($v0)
/* B5D90 800FF9D0 8C420064 */  lw         $v0, 0x64($v0)
/* B5D94 800FF9D4 0040F809 */  jalr       $v0
/* B5D98 800FF9D8 00642021 */   addu      $a0, $v1, $a0
/* B5D9C 800FF9DC 2E620004 */  sltiu      $v0, $s3, 0x4
/* B5DA0 800FF9E0 1440FFF4 */  bnez       $v0, .Lrace_800FF9B4
/* B5DA4 800FF9E4 02302821 */   addu      $a1, $s1, $s0
/* B5DA8 800FF9E8 C6280374 */  lwc1       $f8, 0x374($s1)
/* B5DAC 800FF9EC C6200380 */  lwc1       $f0, 0x380($s1)
/* B5DB0 800FF9F0 46004200 */  add.s      $f8, $f8, $f0
/* B5DB4 800FF9F4 3C01800D */  lui        $at, %hi(D_race_800CD2F0)
/* B5DB8 800FF9F8 C426D2F0 */  lwc1       $f6, %lo(D_race_800CD2F0)($at)
/* B5DBC 800FF9FC 46064202 */  mul.s      $f8, $f8, $f6
/* B5DC0 800FFA00 C6240378 */  lwc1       $f4, 0x378($s1)
/* B5DC4 800FFA04 C6200384 */  lwc1       $f0, 0x384($s1)
/* B5DC8 800FFA08 46002100 */  add.s      $f4, $f4, $f0
/* B5DCC 800FFA0C 46062102 */  mul.s      $f4, $f4, $f6
/* B5DD0 800FFA10 C622037C */  lwc1       $f2, 0x37C($s1)
/* B5DD4 800FFA14 C6200388 */  lwc1       $f0, 0x388($s1)
/* B5DD8 800FFA18 46001080 */  add.s      $f2, $f2, $f0
/* B5DDC 800FFA1C 46061082 */  mul.s      $f2, $f2, $f6
/* B5DE0 800FFA20 8E23013C */  lw         $v1, 0x13C($s1)
/* B5DE4 800FFA24 26250010 */  addiu      $a1, $s1, 0x10
/* B5DE8 800FFA28 E6280374 */  swc1       $f8, 0x374($s1)
/* B5DEC 800FFA2C E6240378 */  swc1       $f4, 0x378($s1)
/* B5DF0 800FFA30 E622037C */  swc1       $f2, 0x37C($s1)
/* B5DF4 800FFA34 8C620024 */  lw         $v0, 0x24($v1)
/* B5DF8 800FFA38 2626001C */  addiu      $a2, $s1, 0x1C
/* B5DFC 800FFA3C 84440060 */  lh         $a0, 0x60($v0)
/* B5E00 800FFA40 8C420064 */  lw         $v0, 0x64($v0)
/* B5E04 800FFA44 0040F809 */  jalr       $v0
/* B5E08 800FFA48 00642021 */   addu      $a0, $v1, $a0
/* B5E0C 800FFA4C 8FBF0040 */  lw         $ra, 0x40($sp)
/* B5E10 800FFA50 8FB3003C */  lw         $s3, 0x3C($sp)
/* B5E14 800FFA54 8FB20038 */  lw         $s2, 0x38($sp)
/* B5E18 800FFA58 8FB10034 */  lw         $s1, 0x34($sp)
/* B5E1C 800FFA5C 8FB00030 */  lw         $s0, 0x30($sp)
/* B5E20 800FFA60 03E00008 */  jr         $ra
/* B5E24 800FFA64 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_800FFA68
/* B5E28 800FFA68 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B5E2C 800FFA6C AFB10034 */  sw         $s1, 0x34($sp)
/* B5E30 800FFA70 00808821 */  addu       $s1, $a0, $zero
/* B5E34 800FFA74 AFB00030 */  sw         $s0, 0x30($sp)
/* B5E38 800FFA78 00A08021 */  addu       $s0, $a1, $zero
/* B5E3C 800FFA7C 26240738 */  addiu      $a0, $s1, 0x738
/* B5E40 800FFA80 24020001 */  addiu      $v0, $zero, 0x1
/* B5E44 800FFA84 AFBF0040 */  sw         $ra, 0x40($sp)
/* B5E48 800FFA88 AFB3003C */  sw         $s3, 0x3C($sp)
/* B5E4C 800FFA8C AFB20038 */  sw         $s2, 0x38($sp)
/* B5E50 800FFA90 0C04C3DD */  jal        func_race_80130F74
/* B5E54 800FFA94 AE220730 */   sw        $v0, 0x730($s1)
/* B5E58 800FFA98 27A50010 */  addiu      $a1, $sp, 0x10
/* B5E5C 800FFA9C 00009821 */  addu       $s3, $zero, $zero
/* B5E60 800FFAA0 8E070024 */  lw         $a3, 0x24($s0)
/* B5E64 800FFAA4 8E080028 */  lw         $t0, 0x28($s0)
/* B5E68 800FFAA8 8E09002C */  lw         $t1, 0x2C($s0)
/* B5E6C 800FFAAC AFA70010 */  sw         $a3, 0x10($sp)
/* B5E70 800FFAB0 AFA80014 */  sw         $t0, 0x14($sp)
/* B5E74 800FFAB4 AFA90018 */  sw         $t1, 0x18($sp)
/* B5E78 800FFAB8 8E070030 */  lw         $a3, 0x30($s0)
/* B5E7C 800FFABC 8E080034 */  lw         $t0, 0x34($s0)
/* B5E80 800FFAC0 8E090038 */  lw         $t1, 0x38($s0)
/* B5E84 800FFAC4 8E0A003C */  lw         $t2, 0x3C($s0)
/* B5E88 800FFAC8 AFA70020 */  sw         $a3, 0x20($sp)
/* B5E8C 800FFACC AFA80024 */  sw         $t0, 0x24($sp)
/* B5E90 800FFAD0 AFA90028 */  sw         $t1, 0x28($sp)
/* B5E94 800FFAD4 AFAA002C */  sw         $t2, 0x2C($sp)
/* B5E98 800FFAD8 8E23013C */  lw         $v1, 0x13C($s1)
/* B5E9C 800FFADC 241203A4 */  addiu      $s2, $zero, 0x3A4
/* B5EA0 800FFAE0 8C620024 */  lw         $v0, 0x24($v1)
/* B5EA4 800FFAE4 24100374 */  addiu      $s0, $zero, 0x374
/* B5EA8 800FFAE8 84440018 */  lh         $a0, 0x18($v0)
/* B5EAC 800FFAEC 8C42001C */  lw         $v0, 0x1C($v0)
/* B5EB0 800FFAF0 0040F809 */  jalr       $v0
/* B5EB4 800FFAF4 00642021 */   addu      $a0, $v1, $a0
/* B5EB8 800FFAF8 8E25013C */  lw         $a1, 0x13C($s1)
/* B5EBC 800FFAFC 27A40020 */  addiu      $a0, $sp, 0x20
/* B5EC0 800FFB00 0C001055 */  jal        func_80004154
/* B5EC4 800FFB04 24A50028 */   addiu     $a1, $a1, 0x28
/* B5EC8 800FFB08 8E23013C */  lw         $v1, 0x13C($s1)
/* B5ECC 800FFB0C 26250010 */  addiu      $a1, $s1, 0x10
/* B5ED0 800FFB10 8C620024 */  lw         $v0, 0x24($v1)
/* B5ED4 800FFB14 2626001C */  addiu      $a2, $s1, 0x1C
/* B5ED8 800FFB18 84440060 */  lh         $a0, 0x60($v0)
/* B5EDC 800FFB1C 8C420064 */  lw         $v0, 0x64($v0)
/* B5EE0 800FFB20 0040F809 */  jalr       $v0
/* B5EE4 800FFB24 00642021 */   addu      $a0, $v1, $a0
/* B5EE8 800FFB28 02302821 */  addu       $a1, $s1, $s0
.Lrace_800FFB2C:
/* B5EEC 800FFB2C 02323021 */  addu       $a2, $s1, $s2
/* B5EF0 800FFB30 2652000C */  addiu      $s2, $s2, 0xC
/* B5EF4 800FFB34 8E23013C */  lw         $v1, 0x13C($s1)
/* B5EF8 800FFB38 2610000C */  addiu      $s0, $s0, 0xC
/* B5EFC 800FFB3C 8C620024 */  lw         $v0, 0x24($v1)
/* B5F00 800FFB40 26730001 */  addiu      $s3, $s3, 0x1
/* B5F04 800FFB44 84440060 */  lh         $a0, 0x60($v0)
/* B5F08 800FFB48 8C420064 */  lw         $v0, 0x64($v0)
/* B5F0C 800FFB4C 0040F809 */  jalr       $v0
/* B5F10 800FFB50 00642021 */   addu      $a0, $v1, $a0
/* B5F14 800FFB54 2E620004 */  sltiu      $v0, $s3, 0x4
/* B5F18 800FFB58 1440FFF4 */  bnez       $v0, .Lrace_800FFB2C
/* B5F1C 800FFB5C 02302821 */   addu      $a1, $s1, $s0
/* B5F20 800FFB60 8FBF0040 */  lw         $ra, 0x40($sp)
/* B5F24 800FFB64 8FB3003C */  lw         $s3, 0x3C($sp)
/* B5F28 800FFB68 8FB20038 */  lw         $s2, 0x38($sp)
/* B5F2C 800FFB6C 8FB10034 */  lw         $s1, 0x34($sp)
/* B5F30 800FFB70 8FB00030 */  lw         $s0, 0x30($sp)
/* B5F34 800FFB74 03E00008 */  jr         $ra
/* B5F38 800FFB78 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_800FFB7C
/* B5F3C 800FFB7C C4820608 */  lwc1       $f2, 0x608($a0)
/* B5F40 800FFB80 3C01800D */  lui        $at, %hi(D_race_800CD2F4)
/* B5F44 800FFB84 C420D2F4 */  lwc1       $f0, %lo(D_race_800CD2F4)($at)
/* B5F48 800FFB88 4600103C */  c.lt.s     $f2, $f0
/* B5F4C 800FFB8C 00000000 */  nop
/* B5F50 800FFB90 45000008 */  bc1f       .Lrace_800FFBB4
/* B5F54 800FFB94 24020001 */   addiu     $v0, $zero, 0x1
/* B5F58 800FFB98 3C01800D */  lui        $at, %hi(D_race_800CD2F8)
/* B5F5C 800FFB9C C420D2F8 */  lwc1       $f0, %lo(D_race_800CD2F8)($at)
/* B5F60 800FFBA0 4602003C */  c.lt.s     $f0, $f2
/* B5F64 800FFBA4 00000000 */  nop
/* B5F68 800FFBA8 45010002 */  bc1t       .Lrace_800FFBB4
/* B5F6C 800FFBAC 00001021 */   addu      $v0, $zero, $zero
/* B5F70 800FFBB0 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800FFBB4:
/* B5F74 800FFBB4 03E00008 */  jr         $ra
/* B5F78 800FFBB8 00000000 */   nop

glabel func_race_800FFBBC
/* B5F7C 800FFBBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B5F80 800FFBC0 AFB1001C */  sw         $s1, 0x1C($sp)
/* B5F84 800FFBC4 00808821 */  addu       $s1, $a0, $zero
/* B5F88 800FFBC8 AFBF0024 */  sw         $ra, 0x24($sp)
/* B5F8C 800FFBCC AFB20020 */  sw         $s2, 0x20($sp)
/* B5F90 800FFBD0 AFB00018 */  sw         $s0, 0x18($sp)
/* B5F94 800FFBD4 8E2206E8 */  lw         $v0, 0x6E8($s1)
/* B5F98 800FFBD8 8FA30038 */  lw         $v1, 0x38($sp)
/* B5F9C 800FFBDC 14E20016 */  bne        $a3, $v0, .Lrace_800FFC38
/* B5FA0 800FFBE0 00000000 */   nop
/* B5FA4 800FFBE4 10600031 */  beqz       $v1, .Lrace_800FFCAC
/* B5FA8 800FFBE8 00001021 */   addu      $v0, $zero, $zero
/* B5FAC 800FFBEC 88C80014 */  lwl        $t0, 0x14($a2)
/* B5FB0 800FFBF0 98C80017 */  lwr        $t0, 0x17($a2)
/* B5FB4 800FFBF4 88C90018 */  lwl        $t1, 0x18($a2)
/* B5FB8 800FFBF8 98C9001B */  lwr        $t1, 0x1B($a2)
/* B5FBC 800FFBFC ABA80010 */  swl        $t0, 0x10($sp)
/* B5FC0 800FFC00 BBA80013 */  swr        $t0, 0x13($sp)
/* B5FC4 800FFC04 ABA90014 */  swl        $t1, 0x14($sp)
/* B5FC8 800FFC08 BBA90017 */  swr        $t1, 0x17($sp)
/* B5FCC 800FFC0C 93A20010 */  lbu        $v0, 0x10($sp)
/* B5FD0 800FFC10 2442FFD0 */  addiu      $v0, $v0, -0x30
/* B5FD4 800FFC14 2C42000A */  sltiu      $v0, $v0, 0xA
/* B5FD8 800FFC18 10400007 */  beqz       $v0, .Lrace_800FFC38
/* B5FDC 800FFC1C 00000000 */   nop
/* B5FE0 800FFC20 8E2406DC */  lw         $a0, 0x6DC($s1)
/* B5FE4 800FFC24 8CC50010 */  lw         $a1, 0x10($a2)
/* B5FE8 800FFC28 0C0437EF */  jal        func_race_8010DFBC
/* B5FEC 800FFC2C 00603021 */   addu      $a2, $v1, $zero
/* B5FF0 800FFC30 0803FF2B */  j          .Lrace_800FFCAC
/* B5FF4 800FFC34 00001021 */   addu      $v0, $zero, $zero
.Lrace_800FFC38:
/* B5FF8 800FFC38 8CD00010 */  lw         $s0, 0x10($a2)
/* B5FFC 800FFC3C 02009021 */  addu       $s2, $s0, $zero
/* B6000 800FFC40 1200001A */  beqz       $s0, .Lrace_800FFCAC
/* B6004 800FFC44 24020001 */   addiu     $v0, $zero, 0x1
/* B6008 800FFC48 8E020008 */  lw         $v0, 0x8($s0)
/* B600C 800FFC4C 3C030004 */  lui        $v1, (0x40000 >> 16)
/* B6010 800FFC50 00431024 */  and        $v0, $v0, $v1
/* B6014 800FFC54 10400004 */  beqz       $v0, .Lrace_800FFC68
/* B6018 800FFC58 00000000 */   nop
/* B601C 800FFC5C 8E2306DC */  lw         $v1, 0x6DC($s1)
/* B6020 800FFC60 90620CE0 */  lbu        $v0, 0xCE0($v1)
/* B6024 800FFC64 AC620CE4 */  sw         $v0, 0xCE4($v1)
.Lrace_800FFC68:
/* B6028 800FFC68 8E020008 */  lw         $v0, 0x8($s0)
/* B602C 800FFC6C 30420008 */  andi       $v0, $v0, 0x8
/* B6030 800FFC70 1040000A */  beqz       $v0, .Lrace_800FFC9C
/* B6034 800FFC74 00A03821 */   addu      $a3, $a1, $zero
/* B6038 800FFC78 8E050014 */  lw         $a1, 0x14($s0)
/* B603C 800FFC7C 8E2406E0 */  lw         $a0, 0x6E0($s1)
/* B6040 800FFC80 0C036D74 */  jal        func_race_800DB5D0
/* B6044 800FFC84 00A03021 */   addu      $a2, $a1, $zero
/* B6048 800FFC88 8E2406E0 */  lw         $a0, 0x6E0($s1)
/* B604C 800FFC8C 8E050014 */  lw         $a1, 0x14($s0)
/* B6050 800FFC90 8E2706DC */  lw         $a3, 0x6DC($s1)
/* B6054 800FFC94 0C036FA2 */  jal        func_race_800DBE88
/* B6058 800FFC98 00A03021 */   addu      $a2, $a1, $zero
.Lrace_800FFC9C:
/* B605C 800FFC9C 8E420008 */  lw         $v0, 0x8($s2)
/* B6060 800FFCA0 3C030001 */  lui        $v1, (0x10000 >> 16)
/* B6064 800FFCA4 00431024 */  and        $v0, $v0, $v1
/* B6068 800FFCA8 2C420001 */  sltiu      $v0, $v0, 0x1
.Lrace_800FFCAC:
/* B606C 800FFCAC 8FBF0024 */  lw         $ra, 0x24($sp)
/* B6070 800FFCB0 8FB20020 */  lw         $s2, 0x20($sp)
/* B6074 800FFCB4 8FB1001C */  lw         $s1, 0x1C($sp)
/* B6078 800FFCB8 8FB00018 */  lw         $s0, 0x18($sp)
/* B607C 800FFCBC 03E00008 */  jr         $ra
/* B6080 800FFCC0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800FFCC4
/* B6084 800FFCC4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B6088 800FFCC8 AFB60028 */  sw         $s6, 0x28($sp)
/* B608C 800FFCCC 0080B021 */  addu       $s6, $a0, $zero
/* B6090 800FFCD0 AFB00010 */  sw         $s0, 0x10($sp)
/* B6094 800FFCD4 26D0019C */  addiu      $s0, $s6, 0x19C
/* B6098 800FFCD8 AFB50024 */  sw         $s5, 0x24($sp)
/* B609C 800FFCDC 26D5035C */  addiu      $s5, $s6, 0x35C
/* B60A0 800FFCE0 AFB10014 */  sw         $s1, 0x14($sp)
/* B60A4 800FFCE4 26D101DC */  addiu      $s1, $s6, 0x1DC
/* B60A8 800FFCE8 AFBF002C */  sw         $ra, 0x2C($sp)
/* B60AC 800FFCEC AFB40020 */  sw         $s4, 0x20($sp)
/* B60B0 800FFCF0 AFB3001C */  sw         $s3, 0x1C($sp)
/* B60B4 800FFCF4 AFB20018 */  sw         $s2, 0x18($sp)
.Lrace_800FFCF8:
/* B60B8 800FFCF8 0215102B */  sltu       $v0, $s0, $s5
/* B60BC 800FFCFC 10400044 */  beqz       $v0, .Lrace_800FFE10
/* B60C0 800FFD00 00000000 */   nop
/* B60C4 800FFD04 8E22FFFC */  lw         $v0, -0x4($s1)
/* B60C8 800FFD08 10400002 */  beqz       $v0, .Lrace_800FFD14
/* B60CC 800FFD0C 00009021 */   addu      $s2, $zero, $zero
/* B60D0 800FFD10 8C520010 */  lw         $s2, 0x10($v0)
.Lrace_800FFD14:
/* B60D4 800FFD14 8E220000 */  lw         $v0, 0x0($s1)
/* B60D8 800FFD18 10400002 */  beqz       $v0, .Lrace_800FFD24
/* B60DC 800FFD1C 00009821 */   addu      $s3, $zero, $zero
/* B60E0 800FFD20 8C530010 */  lw         $s3, 0x10($v0)
.Lrace_800FFD24:
/* B60E4 800FFD24 16400007 */  bnez       $s2, .Lrace_800FFD44
/* B60E8 800FFD28 02C02021 */   addu      $a0, $s6, $zero
/* B60EC 800FFD2C 0C04008F */  jal        func_race_8010023C
/* B60F0 800FFD30 02002821 */   addu      $a1, $s0, $zero
/* B60F4 800FFD34 16600006 */  bnez       $s3, .Lrace_800FFD50
/* B60F8 800FFD38 00000000 */   nop
/* B60FC 800FFD3C 0803FF82 */  j          .Lrace_800FFE08
/* B6100 800FFD40 26310070 */   addiu     $s1, $s1, 0x70
.Lrace_800FFD44:
/* B6104 800FFD44 02002821 */  addu       $a1, $s0, $zero
/* B6108 800FFD48 0C03FFCD */  jal        func_race_800FFF34
/* B610C 800FFD4C 02403021 */   addu      $a2, $s2, $zero
.Lrace_800FFD50:
/* B6110 800FFD50 8E23FFFC */  lw         $v1, -0x4($s1)
/* B6114 800FFD54 8E220000 */  lw         $v0, 0x0($s1)
/* B6118 800FFD58 1062002A */  beq        $v1, $v0, .Lrace_800FFE04
/* B611C 800FFD5C 0012A02B */   sltu      $s4, $zero, $s2
/* B6120 800FFD60 0013282B */  sltu       $a1, $zero, $s3
/* B6124 800FFD64 26C3019C */  addiu      $v1, $s6, 0x19C
.Lrace_800FFD68:
/* B6128 800FFD68 0075102B */  sltu       $v0, $v1, $s5
/* B612C 800FFD6C 1040001B */  beqz       $v0, .Lrace_800FFDDC
/* B6130 800FFD70 00000000 */   nop
/* B6134 800FFD74 16030003 */  bne        $s0, $v1, .Lrace_800FFD84
/* B6138 800FFD78 00000000 */   nop
/* B613C 800FFD7C 0803FF5A */  j          .Lrace_800FFD68
/* B6140 800FFD80 26030070 */   addiu     $v1, $s0, 0x70
.Lrace_800FFD84:
/* B6144 800FFD84 8E24FFFC */  lw         $a0, -0x4($s1)
/* B6148 800FFD88 8C620040 */  lw         $v0, 0x40($v1)
/* B614C 800FFD8C 50820006 */  beql       $a0, $v0, .Lrace_800FFDA8
/* B6150 800FFD90 0000A021 */   addu      $s4, $zero, $zero
/* B6154 800FFD94 8C62003C */  lw         $v0, 0x3C($v1)
/* B6158 800FFD98 14820003 */  bne        $a0, $v0, .Lrace_800FFDA8
/* B615C 800FFD9C 0070102B */   sltu      $v0, $v1, $s0
/* B6160 800FFDA0 54400001 */  bnel       $v0, $zero, .Lrace_800FFDA8
/* B6164 800FFDA4 0000A021 */   addu      $s4, $zero, $zero
.Lrace_800FFDA8:
/* B6168 800FFDA8 8E240000 */  lw         $a0, 0x0($s1)
/* B616C 800FFDAC 8C62003C */  lw         $v0, 0x3C($v1)
/* B6170 800FFDB0 50820008 */  beql       $a0, $v0, .Lrace_800FFDD4
/* B6174 800FFDB4 00002821 */   addu      $a1, $zero, $zero
/* B6178 800FFDB8 8C620040 */  lw         $v0, 0x40($v1)
/* B617C 800FFDBC 5482FFEA */  bnel       $a0, $v0, .Lrace_800FFD68
/* B6180 800FFDC0 24630070 */   addiu     $v1, $v1, 0x70
/* B6184 800FFDC4 0070102B */  sltu       $v0, $v1, $s0
/* B6188 800FFDC8 5040FFE7 */  beql       $v0, $zero, .Lrace_800FFD68
/* B618C 800FFDCC 24630070 */   addiu     $v1, $v1, 0x70
/* B6190 800FFDD0 00002821 */  addu       $a1, $zero, $zero
.Lrace_800FFDD4:
/* B6194 800FFDD4 0803FF5A */  j          .Lrace_800FFD68
/* B6198 800FFDD8 24630070 */   addiu     $v1, $v1, 0x70
.Lrace_800FFDDC:
/* B619C 800FFDDC 10A00004 */  beqz       $a1, .Lrace_800FFDF0
/* B61A0 800FFDE0 02C02021 */   addu      $a0, $s6, $zero
/* B61A4 800FFDE4 02002821 */  addu       $a1, $s0, $zero
/* B61A8 800FFDE8 0C03FFA6 */  jal        func_race_800FFE98
/* B61AC 800FFDEC 02603021 */   addu      $a2, $s3, $zero
.Lrace_800FFDF0:
/* B61B0 800FFDF0 12800004 */  beqz       $s4, .Lrace_800FFE04
/* B61B4 800FFDF4 02C02021 */   addu      $a0, $s6, $zero
/* B61B8 800FFDF8 02002821 */  addu       $a1, $s0, $zero
/* B61BC 800FFDFC 0C03FF8E */  jal        func_race_800FFE38
/* B61C0 800FFE00 02403021 */   addu      $a2, $s2, $zero
.Lrace_800FFE04:
/* B61C4 800FFE04 26310070 */  addiu      $s1, $s1, 0x70
.Lrace_800FFE08:
/* B61C8 800FFE08 0803FF3E */  j          .Lrace_800FFCF8
/* B61CC 800FFE0C 26100070 */   addiu     $s0, $s0, 0x70
.Lrace_800FFE10:
/* B61D0 800FFE10 8FBF002C */  lw         $ra, 0x2C($sp)
/* B61D4 800FFE14 8FB60028 */  lw         $s6, 0x28($sp)
/* B61D8 800FFE18 8FB50024 */  lw         $s5, 0x24($sp)
/* B61DC 800FFE1C 8FB40020 */  lw         $s4, 0x20($sp)
/* B61E0 800FFE20 8FB3001C */  lw         $s3, 0x1C($sp)
/* B61E4 800FFE24 8FB20018 */  lw         $s2, 0x18($sp)
/* B61E8 800FFE28 8FB10014 */  lw         $s1, 0x14($sp)
/* B61EC 800FFE2C 8FB00010 */  lw         $s0, 0x10($sp)
/* B61F0 800FFE30 03E00008 */  jr         $ra
/* B61F4 800FFE34 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800FFE38
/* B61F8 800FFE38 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B61FC 800FFE3C AFB10014 */  sw         $s1, 0x14($sp)
/* B6200 800FFE40 00808821 */  addu       $s1, $a0, $zero
/* B6204 800FFE44 AFB00010 */  sw         $s0, 0x10($sp)
/* B6208 800FFE48 00C08021 */  addu       $s0, $a2, $zero
/* B620C 800FFE4C AFBF0018 */  sw         $ra, 0x18($sp)
/* B6210 800FFE50 8E020008 */  lw         $v0, 0x8($s0)
/* B6214 800FFE54 30420002 */  andi       $v0, $v0, 0x2
/* B6218 800FFE58 1040000A */  beqz       $v0, .Lrace_800FFE84
/* B621C 800FFE5C 00A01821 */   addu      $v1, $a1, $zero
/* B6220 800FFE60 8E2406E0 */  lw         $a0, 0x6E0($s1)
/* B6224 800FFE64 8E05000C */  lw         $a1, 0xC($s0)
/* B6228 800FFE68 0C036B0B */  jal        func_race_800DAC2C
/* B622C 800FFE6C 2466000C */   addiu     $a2, $v1, 0xC
/* B6230 800FFE70 8E2406E0 */  lw         $a0, 0x6E0($s1)
/* B6234 800FFE74 8E05000C */  lw         $a1, 0xC($s0)
/* B6238 800FFE78 8E2606DC */  lw         $a2, 0x6DC($s1)
/* B623C 800FFE7C 0C036EE4 */  jal        func_race_800DBB90
/* B6240 800FFE80 00000000 */   nop
.Lrace_800FFE84:
/* B6244 800FFE84 8FBF0018 */  lw         $ra, 0x18($sp)
/* B6248 800FFE88 8FB10014 */  lw         $s1, 0x14($sp)
/* B624C 800FFE8C 8FB00010 */  lw         $s0, 0x10($sp)
/* B6250 800FFE90 03E00008 */  jr         $ra
/* B6254 800FFE94 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800FFE98
/* B6258 800FFE98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B625C 800FFE9C AFB10014 */  sw         $s1, 0x14($sp)
/* B6260 800FFEA0 00808821 */  addu       $s1, $a0, $zero
/* B6264 800FFEA4 AFB20018 */  sw         $s2, 0x18($sp)
/* B6268 800FFEA8 00A09021 */  addu       $s2, $a1, $zero
/* B626C 800FFEAC AFB00010 */  sw         $s0, 0x10($sp)
/* B6270 800FFEB0 00C08021 */  addu       $s0, $a2, $zero
/* B6274 800FFEB4 AFBF001C */  sw         $ra, 0x1C($sp)
/* B6278 800FFEB8 8E020008 */  lw         $v0, 0x8($s0)
/* B627C 800FFEBC 30420080 */  andi       $v0, $v0, 0x80
/* B6280 800FFEC0 10400005 */  beqz       $v0, .Lrace_800FFED8
/* B6284 800FFEC4 00001821 */   addu      $v1, $zero, $zero
/* B6288 800FFEC8 8E020034 */  lw         $v0, 0x34($s0)
/* B628C 800FFECC 8E230728 */  lw         $v1, 0x728($s1)
/* B6290 800FFED0 00431026 */  xor        $v0, $v0, $v1
/* B6294 800FFED4 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_800FFED8:
/* B6298 800FFED8 10600003 */  beqz       $v1, .Lrace_800FFEE8
/* B629C 800FFEDC 00000000 */   nop
/* B62A0 800FFEE0 0C0401AE */  jal        func_race_801006B8
/* B62A4 800FFEE4 02202021 */   addu      $a0, $s1, $zero
.Lrace_800FFEE8:
/* B62A8 800FFEE8 8E020008 */  lw         $v0, 0x8($s0)
/* B62AC 800FFEEC 30420004 */  andi       $v0, $v0, 0x4
/* B62B0 800FFEF0 1040000A */  beqz       $v0, .Lrace_800FFF1C
/* B62B4 800FFEF4 00000000 */   nop
/* B62B8 800FFEF8 8E2406E0 */  lw         $a0, 0x6E0($s1)
/* B62BC 800FFEFC 8E050010 */  lw         $a1, 0x10($s0)
/* B62C0 800FFF00 0C036BE1 */  jal        func_race_800DAF84
/* B62C4 800FFF04 2646000C */   addiu     $a2, $s2, 0xC
/* B62C8 800FFF08 8E2406E0 */  lw         $a0, 0x6E0($s1)
/* B62CC 800FFF0C 8E050010 */  lw         $a1, 0x10($s0)
/* B62D0 800FFF10 8E2606DC */  lw         $a2, 0x6DC($s1)
/* B62D4 800FFF14 0C036F43 */  jal        func_race_800DBD0C
/* B62D8 800FFF18 00000000 */   nop
.Lrace_800FFF1C:
/* B62DC 800FFF1C 8FBF001C */  lw         $ra, 0x1C($sp)
/* B62E0 800FFF20 8FB20018 */  lw         $s2, 0x18($sp)
/* B62E4 800FFF24 8FB10014 */  lw         $s1, 0x14($sp)
/* B62E8 800FFF28 8FB00010 */  lw         $s0, 0x10($sp)
/* B62EC 800FFF2C 03E00008 */  jr         $ra
/* B62F0 800FFF30 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800FFF34
/* B62F4 800FFF34 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B62F8 800FFF38 AFB20020 */  sw         $s2, 0x20($sp)
/* B62FC 800FFF3C 00809021 */  addu       $s2, $a0, $zero
/* B6300 800FFF40 AFB00018 */  sw         $s0, 0x18($sp)
/* B6304 800FFF44 00A08021 */  addu       $s0, $a1, $zero
/* B6308 800FFF48 AFBF0024 */  sw         $ra, 0x24($sp)
/* B630C 800FFF4C AFB1001C */  sw         $s1, 0x1C($sp)
/* B6310 800FFF50 8E020048 */  lw         $v0, 0x48($s0)
/* B6314 800FFF54 30420001 */  andi       $v0, $v0, 0x1
/* B6318 800FFF58 14400005 */  bnez       $v0, .Lrace_800FFF70
/* B631C 800FFF5C 00C08821 */   addu      $s1, $a2, $zero
/* B6320 800FFF60 0C04008F */  jal        func_race_8010023C
/* B6324 800FFF64 00000000 */   nop
/* B6328 800FFF68 08040089 */  j          .Lrace_80100224
/* B632C 800FFF6C 00000000 */   nop
.Lrace_800FFF70:
/* B6330 800FFF70 8E220008 */  lw         $v0, 0x8($s1)
/* B6334 800FFF74 30420080 */  andi       $v0, $v0, 0x80
/* B6338 800FFF78 10400004 */  beqz       $v0, .Lrace_800FFF8C
/* B633C 800FFF7C 00000000 */   nop
/* B6340 800FFF80 8E250034 */  lw         $a1, 0x34($s1)
/* B6344 800FFF84 0C040172 */  jal        func_race_801005C8
/* B6348 800FFF88 02402021 */   addu      $a0, $s2, $zero
.Lrace_800FFF8C:
/* B634C 800FFF8C 8E220008 */  lw         $v0, 0x8($s1)
/* B6350 800FFF90 30428000 */  andi       $v0, $v0, 0x8000
/* B6354 800FFF94 1040000E */  beqz       $v0, .Lrace_800FFFD0
/* B6358 800FFF98 3C030010 */   lui       $v1, (0x100000 >> 16)
/* B635C 800FFF9C 8E4206AC */  lw         $v0, 0x6AC($s2)
/* B6360 800FFFA0 00431024 */  and        $v0, $v0, $v1
/* B6364 800FFFA4 5440000B */  bnel       $v0, $zero, .Lrace_800FFFD4
/* B6368 800FFFA8 AE000050 */   sw        $zero, 0x50($s0)
/* B636C 800FFFAC C6200058 */  lwc1       $f0, 0x58($s1)
/* B6370 800FFFB0 E6000050 */  swc1       $f0, 0x50($s0)
/* B6374 800FFFB4 8E4206DC */  lw         $v0, 0x6DC($s2)
/* B6378 800FFFB8 8C440014 */  lw         $a0, 0x14($v0)
/* B637C 800FFFBC 1080000C */  beqz       $a0, .Lrace_800FFFF0
/* B6380 800FFFC0 00000000 */   nop
/* B6384 800FFFC4 44050000 */  mfc1       $a1, $f0
/* B6388 800FFFC8 0803FFFA */  j          .Lrace_800FFFE8
/* B638C 800FFFCC 00000000 */   nop
.Lrace_800FFFD0:
/* B6390 800FFFD0 AE000050 */  sw         $zero, 0x50($s0)
.Lrace_800FFFD4:
/* B6394 800FFFD4 8E4206DC */  lw         $v0, 0x6DC($s2)
/* B6398 800FFFD8 8C440014 */  lw         $a0, 0x14($v0)
/* B639C 800FFFDC 10800004 */  beqz       $a0, .Lrace_800FFFF0
/* B63A0 800FFFE0 00000000 */   nop
/* B63A4 800FFFE4 8E050050 */  lw         $a1, 0x50($s0)
.Lrace_800FFFE8:
/* B63A8 800FFFE8 0C03D391 */  jal        func_race_800F4E44
/* B63AC 800FFFEC 00000000 */   nop
.Lrace_800FFFF0:
/* B63B0 800FFFF0 8E220008 */  lw         $v0, 0x8($s1)
/* B63B4 800FFFF4 30420800 */  andi       $v0, $v0, 0x800
/* B63B8 800FFFF8 10400008 */  beqz       $v0, .Lrace_8010001C
/* B63BC 800FFFFC 3C030010 */   lui       $v1, (0x100000 >> 16)
/* B63C0 80100000 8E4206AC */  lw         $v0, 0x6AC($s2)
/* B63C4 80100004 00431024 */  and        $v0, $v0, $v1
/* B63C8 80100008 14400004 */  bnez       $v0, .Lrace_8010001C
/* B63CC 8010000C 00000000 */   nop
/* B63D0 80100010 C6200048 */  lwc1       $f0, 0x48($s1)
/* B63D4 80100014 0804000A */  j          .Lrace_80100028
/* B63D8 80100018 E6000054 */   swc1      $f0, 0x54($s0)
.Lrace_8010001C:
/* B63DC 8010001C 3C01800D */  lui        $at, %hi(D_race_800CD2FC)
/* B63E0 80100020 C420D2FC */  lwc1       $f0, %lo(D_race_800CD2FC)($at)
/* B63E4 80100024 E6000054 */  swc1       $f0, 0x54($s0)
.Lrace_80100028:
/* B63E8 80100028 8E220008 */  lw         $v0, 0x8($s1)
/* B63EC 8010002C 30421000 */  andi       $v0, $v0, 0x1000
/* B63F0 80100030 10400008 */  beqz       $v0, .Lrace_80100054
/* B63F4 80100034 3C030010 */   lui       $v1, (0x100000 >> 16)
/* B63F8 80100038 8E4206AC */  lw         $v0, 0x6AC($s2)
/* B63FC 8010003C 00431024 */  and        $v0, $v0, $v1
/* B6400 80100040 14400004 */  bnez       $v0, .Lrace_80100054
/* B6404 80100044 00000000 */   nop
/* B6408 80100048 C620004C */  lwc1       $f0, 0x4C($s1)
/* B640C 8010004C 08040018 */  j          .Lrace_80100060
/* B6410 80100050 E6000058 */   swc1      $f0, 0x58($s0)
.Lrace_80100054:
/* B6414 80100054 3C01800D */  lui        $at, %hi(D_race_800CD300)
/* B6418 80100058 C420D300 */  lwc1       $f0, %lo(D_race_800CD300)($at)
/* B641C 8010005C E6000058 */  swc1       $f0, 0x58($s0)
.Lrace_80100060:
/* B6420 80100060 8E220008 */  lw         $v0, 0x8($s1)
/* B6424 80100064 30422000 */  andi       $v0, $v0, 0x2000
/* B6428 80100068 10400008 */  beqz       $v0, .Lrace_8010008C
/* B642C 8010006C 3C030010 */   lui       $v1, (0x100000 >> 16)
/* B6430 80100070 8E4206AC */  lw         $v0, 0x6AC($s2)
/* B6434 80100074 00431024 */  and        $v0, $v0, $v1
/* B6438 80100078 14400004 */  bnez       $v0, .Lrace_8010008C
/* B643C 8010007C 00000000 */   nop
/* B6440 80100080 C6200050 */  lwc1       $f0, 0x50($s1)
/* B6444 80100084 08040026 */  j          .Lrace_80100098
/* B6448 80100088 E600005C */   swc1      $f0, 0x5C($s0)
.Lrace_8010008C:
/* B644C 8010008C 3C01800D */  lui        $at, %hi(D_race_800CD304)
/* B6450 80100090 C420D304 */  lwc1       $f0, %lo(D_race_800CD304)($at)
/* B6454 80100094 E600005C */  swc1       $f0, 0x5C($s0)
.Lrace_80100098:
/* B6458 80100098 8E220008 */  lw         $v0, 0x8($s1)
/* B645C 8010009C 30424000 */  andi       $v0, $v0, 0x4000
/* B6460 801000A0 10400008 */  beqz       $v0, .Lrace_801000C4
/* B6464 801000A4 3C030010 */   lui       $v1, (0x100000 >> 16)
/* B6468 801000A8 8E4206AC */  lw         $v0, 0x6AC($s2)
/* B646C 801000AC 00431024 */  and        $v0, $v0, $v1
/* B6470 801000B0 14400004 */  bnez       $v0, .Lrace_801000C4
/* B6474 801000B4 00000000 */   nop
/* B6478 801000B8 C6200054 */  lwc1       $f0, 0x54($s1)
/* B647C 801000BC 08040034 */  j          .Lrace_801000D0
/* B6480 801000C0 E6000060 */   swc1      $f0, 0x60($s0)
.Lrace_801000C4:
/* B6484 801000C4 3C01800D */  lui        $at, %hi(D_race_800CD308)
/* B6488 801000C8 C420D308 */  lwc1       $f0, %lo(D_race_800CD308)($at)
/* B648C 801000CC E6000060 */  swc1       $f0, 0x60($s0)
.Lrace_801000D0:
/* B6490 801000D0 8E220008 */  lw         $v0, 0x8($s1)
/* B6494 801000D4 30420040 */  andi       $v0, $v0, 0x40
/* B6498 801000D8 1040000D */  beqz       $v0, .Lrace_80100110
/* B649C 801000DC 3C030010 */   lui       $v1, (0x100000 >> 16)
/* B64A0 801000E0 8E4206AC */  lw         $v0, 0x6AC($s2)
/* B64A4 801000E4 00431024 */  and        $v0, $v0, $v1
/* B64A8 801000E8 5440000A */  bnel       $v0, $zero, .Lrace_80100114
/* B64AC 801000EC AE000064 */   sw        $zero, 0x64($s0)
/* B64B0 801000F0 8E270028 */  lw         $a3, 0x28($s1)
/* B64B4 801000F4 8E28002C */  lw         $t0, 0x2C($s1)
/* B64B8 801000F8 8E290030 */  lw         $t1, 0x30($s1)
/* B64BC 801000FC AE070064 */  sw         $a3, 0x64($s0)
/* B64C0 80100100 AE080068 */  sw         $t0, 0x68($s0)
/* B64C4 80100104 AE09006C */  sw         $t1, 0x6C($s0)
/* B64C8 80100108 08040047 */  j          .Lrace_8010011C
/* B64CC 8010010C 00000000 */   nop
.Lrace_80100110:
/* B64D0 80100110 AE000064 */  sw         $zero, 0x64($s0)
.Lrace_80100114:
/* B64D4 80100114 AE000068 */  sw         $zero, 0x68($s0)
/* B64D8 80100118 AE00006C */  sw         $zero, 0x6C($s0)
.Lrace_8010011C:
/* B64DC 8010011C 8E220008 */  lw         $v0, 0x8($s1)
/* B64E0 80100120 30420400 */  andi       $v0, $v0, 0x400
/* B64E4 80100124 10400012 */  beqz       $v0, .Lrace_80100170
/* B64E8 80100128 00002021 */   addu      $a0, $zero, $zero
/* B64EC 8010012C 8E4306AC */  lw         $v1, 0x6AC($s2)
/* B64F0 80100130 30620008 */  andi       $v0, $v1, 0x8
/* B64F4 80100134 1440000E */  bnez       $v0, .Lrace_80100170
/* B64F8 80100138 30620080 */   andi      $v0, $v1, 0x80
/* B64FC 8010013C 1440000C */  bnez       $v0, .Lrace_80100170
/* B6500 80100140 00000000 */   nop
/* B6504 80100144 C642061C */  lwc1       $f2, 0x61C($s2)
/* B6508 80100148 3C01800D */  lui        $at, %hi(D_race_800CD30C)
/* B650C 8010014C C420D30C */  lwc1       $f0, %lo(D_race_800CD30C)($at)
/* B6510 80100150 4602003C */  c.lt.s     $f0, $f2
/* B6514 80100154 00000000 */  nop
/* B6518 80100158 45000005 */  bc1f       .Lrace_80100170
/* B651C 8010015C 00000000 */   nop
/* B6520 80100160 8E4206DC */  lw         $v0, 0x6DC($s2)
/* B6524 80100164 8C420D08 */  lw         $v0, 0xD08($v0)
/* B6528 80100168 38420002 */  xori       $v0, $v0, 0x2
/* B652C 8010016C 0002202B */  sltu       $a0, $zero, $v0
.Lrace_80100170:
/* B6530 80100170 1080001C */  beqz       $a0, .Lrace_801001E4
/* B6534 80100174 2603FE64 */   addiu     $v1, $s0, -0x19C
/* B6538 80100178 00721823 */  subu       $v1, $v1, $s2
/* B653C 8010017C 000328C0 */  sll        $a1, $v1, 3
/* B6540 80100180 00A32821 */  addu       $a1, $a1, $v1
/* B6544 80100184 00051180 */  sll        $v0, $a1, 6
/* B6548 80100188 00A22821 */  addu       $a1, $a1, $v0
/* B654C 8010018C 000528C0 */  sll        $a1, $a1, 3
/* B6550 80100190 00A32821 */  addu       $a1, $a1, $v1
/* B6554 80100194 000513C0 */  sll        $v0, $a1, 15
/* B6558 80100198 00A22821 */  addu       $a1, $a1, $v0
/* B655C 8010019C 000528C0 */  sll        $a1, $a1, 3
/* B6560 801001A0 00A32821 */  addu       $a1, $a1, $v1
/* B6564 801001A4 00052823 */  negu       $a1, $a1
/* B6568 801001A8 00052903 */  sra        $a1, $a1, 4
/* B656C 801001AC 8A270040 */  lwl        $a3, 0x40($s1)
/* B6570 801001B0 9A270043 */  lwr        $a3, 0x43($s1)
/* B6574 801001B4 8A280044 */  lwl        $t0, 0x44($s1)
/* B6578 801001B8 9A280047 */  lwr        $t0, 0x47($s1)
/* B657C 801001BC ABA70010 */  swl        $a3, 0x10($sp)
/* B6580 801001C0 BBA70013 */  swr        $a3, 0x13($sp)
/* B6584 801001C4 ABA80014 */  swl        $t0, 0x14($sp)
/* B6588 801001C8 BBA80017 */  swr        $t0, 0x17($sp)
/* B658C 801001CC 8E4406DC */  lw         $a0, 0x6DC($s2)
/* B6590 801001D0 27A60010 */  addiu      $a2, $sp, 0x10
/* B6594 801001D4 0C044BC7 */  jal        func_race_80112F1C
/* B6598 801001D8 24840018 */   addiu     $a0, $a0, 0x18
/* B659C 801001DC 08040089 */  j          .Lrace_80100224
/* B65A0 801001E0 00000000 */   nop
.Lrace_801001E4:
/* B65A4 801001E4 8E4406DC */  lw         $a0, 0x6DC($s2)
/* B65A8 801001E8 00721823 */  subu       $v1, $v1, $s2
/* B65AC 801001EC 000328C0 */  sll        $a1, $v1, 3
/* B65B0 801001F0 00A32821 */  addu       $a1, $a1, $v1
/* B65B4 801001F4 00051180 */  sll        $v0, $a1, 6
/* B65B8 801001F8 00A22821 */  addu       $a1, $a1, $v0
/* B65BC 801001FC 000528C0 */  sll        $a1, $a1, 3
/* B65C0 80100200 00A32821 */  addu       $a1, $a1, $v1
/* B65C4 80100204 000513C0 */  sll        $v0, $a1, 15
/* B65C8 80100208 00A22821 */  addu       $a1, $a1, $v0
/* B65CC 8010020C 000528C0 */  sll        $a1, $a1, 3
/* B65D0 80100210 00A32821 */  addu       $a1, $a1, $v1
/* B65D4 80100214 00052823 */  negu       $a1, $a1
/* B65D8 80100218 00052903 */  sra        $a1, $a1, 4
/* B65DC 8010021C 0C044C2C */  jal        func_race_801130B0
/* B65E0 80100220 24840018 */   addiu     $a0, $a0, 0x18
.Lrace_80100224:
/* B65E4 80100224 8FBF0024 */  lw         $ra, 0x24($sp)
/* B65E8 80100228 8FB20020 */  lw         $s2, 0x20($sp)
/* B65EC 8010022C 8FB1001C */  lw         $s1, 0x1C($sp)
/* B65F0 80100230 8FB00018 */  lw         $s0, 0x18($sp)
/* B65F4 80100234 03E00008 */  jr         $ra
/* B65F8 80100238 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8010023C
/* B65FC 8010023C 3C01800D */  lui        $at, %hi(D_race_800CD310)
/* B6600 80100240 C420D310 */  lwc1       $f0, %lo(D_race_800CD310)($at)
/* B6604 80100244 3C01800D */  lui        $at, %hi(D_race_800CD314)
/* B6608 80100248 C422D314 */  lwc1       $f2, %lo(D_race_800CD314)($at)
/* B660C 8010024C 3C01800D */  lui        $at, %hi(D_race_800CD318)
/* B6610 80100250 C424D318 */  lwc1       $f4, %lo(D_race_800CD318)($at)
/* B6614 80100254 3C01800D */  lui        $at, %hi(D_race_800CD31C)
/* B6618 80100258 C426D31C */  lwc1       $f6, %lo(D_race_800CD31C)($at)
/* B661C 8010025C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B6620 80100260 AFB00010 */  sw         $s0, 0x10($sp)
/* B6624 80100264 00808021 */  addu       $s0, $a0, $zero
/* B6628 80100268 AFBF0014 */  sw         $ra, 0x14($sp)
/* B662C 8010026C ACA00050 */  sw         $zero, 0x50($a1)
/* B6630 80100270 ACA00064 */  sw         $zero, 0x64($a1)
/* B6634 80100274 ACA00068 */  sw         $zero, 0x68($a1)
/* B6638 80100278 ACA0006C */  sw         $zero, 0x6C($a1)
/* B663C 8010027C E4A00054 */  swc1       $f0, 0x54($a1)
/* B6640 80100280 E4A20058 */  swc1       $f2, 0x58($a1)
/* B6644 80100284 E4A4005C */  swc1       $f4, 0x5C($a1)
/* B6648 80100288 E4A60060 */  swc1       $f6, 0x60($a1)
/* B664C 8010028C 24A5FE64 */  addiu      $a1, $a1, -0x19C
/* B6650 80100290 00B02823 */  subu       $a1, $a1, $s0
/* B6654 80100294 000510C0 */  sll        $v0, $a1, 3
/* B6658 80100298 00451021 */  addu       $v0, $v0, $a1
/* B665C 8010029C 00021980 */  sll        $v1, $v0, 6
/* B6660 801002A0 00431021 */  addu       $v0, $v0, $v1
/* B6664 801002A4 000210C0 */  sll        $v0, $v0, 3
/* B6668 801002A8 00451021 */  addu       $v0, $v0, $a1
/* B666C 801002AC 00021BC0 */  sll        $v1, $v0, 15
/* B6670 801002B0 00431021 */  addu       $v0, $v0, $v1
/* B6674 801002B4 000210C0 */  sll        $v0, $v0, 3
/* B6678 801002B8 00451021 */  addu       $v0, $v0, $a1
/* B667C 801002BC 00021023 */  negu       $v0, $v0
/* B6680 801002C0 8E0406DC */  lw         $a0, 0x6DC($s0)
/* B6684 801002C4 00022903 */  sra        $a1, $v0, 4
/* B6688 801002C8 0C044C2C */  jal        func_race_801130B0
/* B668C 801002CC 24840018 */   addiu     $a0, $a0, 0x18
/* B6690 801002D0 8E0206DC */  lw         $v0, 0x6DC($s0)
/* B6694 801002D4 8C440014 */  lw         $a0, 0x14($v0)
/* B6698 801002D8 10800003 */  beqz       $a0, .Lrace_801002E8
/* B669C 801002DC 00000000 */   nop
/* B66A0 801002E0 0C03D391 */  jal        func_race_800F4E44
/* B66A4 801002E4 00002821 */   addu      $a1, $zero, $zero
.Lrace_801002E8:
/* B66A8 801002E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B66AC 801002EC 8FB00010 */  lw         $s0, 0x10($sp)
/* B66B0 801002F0 03E00008 */  jr         $ra
/* B66B4 801002F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801002F8
/* B66B8 801002F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B66BC 801002FC AFBF0010 */  sw         $ra, 0x10($sp)
/* B66C0 80100300 C4800718 */  lwc1       $f0, 0x718($a0)
/* B66C4 80100304 44851000 */  mtc1       $a1, $f2
/* B66C8 80100308 46001082 */  mul.s      $f2, $f2, $f0
/* B66CC 8010030C 44051000 */  mfc1       $a1, $f2
/* B66D0 80100310 0C047930 */  jal        func_race_8011E4C0
/* B66D4 80100314 00000000 */   nop
/* B66D8 80100318 8FBF0010 */  lw         $ra, 0x10($sp)
/* B66DC 8010031C 03E00008 */  jr         $ra
/* B66E0 80100320 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80100324
/* B66E4 80100324 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B66E8 80100328 AFBF0010 */  sw         $ra, 0x10($sp)
/* B66EC 8010032C C480071C */  lwc1       $f0, 0x71C($a0)
/* B66F0 80100330 44851000 */  mtc1       $a1, $f2
/* B66F4 80100334 46001082 */  mul.s      $f2, $f2, $f0
/* B66F8 80100338 44051000 */  mfc1       $a1, $f2
/* B66FC 8010033C 0C047937 */  jal        func_race_8011E4DC
/* B6700 80100340 00000000 */   nop
/* B6704 80100344 8FBF0010 */  lw         $ra, 0x10($sp)
/* B6708 80100348 03E00008 */  jr         $ra
/* B670C 8010034C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80100350
/* B6710 80100350 3C01800D */  lui        $at, %hi(D_race_800CD320)
/* B6714 80100354 C422D320 */  lwc1       $f2, %lo(D_race_800CD320)($at)
/* B6718 80100358 44850000 */  mtc1       $a1, $f0
/* B671C 8010035C 46800020 */  cvt.s.w    $f0, $f0
/* B6720 80100360 46020002 */  mul.s      $f0, $f0, $f2
/* B6724 80100364 3C01800D */  lui        $at, %hi(D_race_800CD324)
/* B6728 80100368 C422D324 */  lwc1       $f2, %lo(D_race_800CD324)($at)
/* B672C 8010036C 46020000 */  add.s      $f0, $f0, $f2
/* B6730 80100370 AC850708 */  sw         $a1, 0x708($a0)
/* B6734 80100374 03E00008 */  jr         $ra
/* B6738 80100378 E4800714 */   swc1      $f0, 0x714($a0)

glabel func_race_8010037C
/* B673C 8010037C 24020032 */  addiu      $v0, $zero, 0x32
/* B6740 80100380 00451023 */  subu       $v0, $v0, $a1
/* B6744 80100384 3C01800D */  lui        $at, %hi(D_race_800CD328)
/* B6748 80100388 C422D328 */  lwc1       $f2, %lo(D_race_800CD328)($at)
/* B674C 8010038C 44820000 */  mtc1       $v0, $f0
/* B6750 80100390 46800020 */  cvt.s.w    $f0, $f0
/* B6754 80100394 46020002 */  mul.s      $f0, $f0, $f2
/* B6758 80100398 3C01800D */  lui        $at, %hi(D_race_800CD32C)
/* B675C 8010039C C422D32C */  lwc1       $f2, %lo(D_race_800CD32C)($at)
/* B6760 801003A0 46001081 */  sub.s      $f2, $f2, $f0
/* B6764 801003A4 AC85070C */  sw         $a1, 0x70C($a0)
/* B6768 801003A8 03E00008 */  jr         $ra
/* B676C 801003AC E4820718 */   swc1      $f2, 0x718($a0)

glabel func_race_801003B0
/* B6770 801003B0 24020032 */  addiu      $v0, $zero, 0x32
/* B6774 801003B4 00451023 */  subu       $v0, $v0, $a1
/* B6778 801003B8 3C01800D */  lui        $at, %hi(D_race_800CD330)
/* B677C 801003BC C422D330 */  lwc1       $f2, %lo(D_race_800CD330)($at)
/* B6780 801003C0 44820000 */  mtc1       $v0, $f0
/* B6784 801003C4 46800020 */  cvt.s.w    $f0, $f0
/* B6788 801003C8 46020002 */  mul.s      $f0, $f0, $f2
/* B678C 801003CC 3C01800D */  lui        $at, %hi(D_race_800CD334)
/* B6790 801003D0 C422D334 */  lwc1       $f2, %lo(D_race_800CD334)($at)
/* B6794 801003D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B6798 801003D8 46001081 */  sub.s      $f2, $f2, $f0
/* B679C 801003DC AFBF0010 */  sw         $ra, 0x10($sp)
/* B67A0 801003E0 AC850710 */  sw         $a1, 0x710($a0)
/* B67A4 801003E4 0C03F6C7 */  jal        func_race_800FDB1C
/* B67A8 801003E8 E482071C */   swc1      $f2, 0x71C($a0)
/* B67AC 801003EC 8FBF0010 */  lw         $ra, 0x10($sp)
/* B67B0 801003F0 03E00008 */  jr         $ra
/* B67B4 801003F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801003F8
/* B67B8 801003F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B67BC 801003FC AFBF0010 */  sw         $ra, 0x10($sp)
/* B67C0 80100400 0C046FC8 */  jal        func_race_8011BF20
/* B67C4 80100404 00000000 */   nop
/* B67C8 80100408 8FBF0010 */  lw         $ra, 0x10($sp)
/* B67CC 8010040C 03E00008 */  jr         $ra
/* B67D0 80100410 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80100414
/* B67D4 80100414 8C8203F0 */  lw         $v0, 0x3F0($a0)
/* B67D8 80100418 14400028 */  bnez       $v0, .Lrace_801004BC
/* B67DC 8010041C 27BDFFF0 */   addiu     $sp, $sp, -0x10
/* B67E0 80100420 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B67E4 80100424 30420008 */  andi       $v0, $v0, 0x8
/* B67E8 80100428 14400005 */  bnez       $v0, .Lrace_80100440
/* B67EC 8010042C 00000000 */   nop
/* B67F0 80100430 8C820370 */  lw         $v0, 0x370($a0)
/* B67F4 80100434 2C420003 */  sltiu      $v0, $v0, 0x3
/* B67F8 80100438 14400021 */  bnez       $v0, .Lrace_801004C0
/* B67FC 8010043C 00001021 */   addu      $v0, $zero, $zero
.Lrace_80100440:
/* B6800 80100440 8C82013C */  lw         $v0, 0x13C($a0)
/* B6804 80100444 C4420028 */  lwc1       $f2, 0x28($v0)
/* B6808 80100448 E7A20000 */  swc1       $f2, 0x0($sp)
/* B680C 8010044C C446002C */  lwc1       $f6, 0x2C($v0)
/* B6810 80100450 E7A60004 */  swc1       $f6, 0x4($sp)
/* B6814 80100454 C4440030 */  lwc1       $f4, 0x30($v0)
/* B6818 80100458 E7A40008 */  swc1       $f4, 0x8($sp)
/* B681C 8010045C C48005FC */  lwc1       $f0, 0x5FC($a0)
/* B6820 80100460 46001082 */  mul.s      $f2, $f2, $f0
/* B6824 80100464 248205FC */  addiu      $v0, $a0, 0x5FC
/* B6828 80100468 C4400004 */  lwc1       $f0, 0x4($v0)
/* B682C 8010046C 46003182 */  mul.s      $f6, $f6, $f0
/* B6830 80100470 C4400008 */  lwc1       $f0, 0x8($v0)
/* B6834 80100474 46002102 */  mul.s      $f4, $f4, $f0
/* B6838 80100478 46061080 */  add.s      $f2, $f2, $f6
/* B683C 8010047C 46041080 */  add.s      $f2, $f2, $f4
/* B6840 80100480 3C01800D */  lui        $at, %hi(D_race_800CD338)
/* B6844 80100484 C420D338 */  lwc1       $f0, %lo(D_race_800CD338)($at)
/* B6848 80100488 4600103E */  c.le.s     $f2, $f0
/* B684C 8010048C 00000000 */  nop
/* B6850 80100490 4501000B */  bc1t       .Lrace_801004C0
/* B6854 80100494 00001021 */   addu      $v0, $zero, $zero
/* B6858 80100498 C482061C */  lwc1       $f2, 0x61C($a0)
/* B685C 8010049C 3C01800D */  lui        $at, %hi(D_race_800CD33C)
/* B6860 801004A0 C420D33C */  lwc1       $f0, %lo(D_race_800CD33C)($at)
/* B6864 801004A4 4600103C */  c.lt.s     $f2, $f0
/* B6868 801004A8 00000000 */  nop
/* B686C 801004AC 45010004 */  bc1t       .Lrace_801004C0
/* B6870 801004B0 00000000 */   nop
/* B6874 801004B4 08040130 */  j          .Lrace_801004C0
/* B6878 801004B8 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_801004BC:
/* B687C 801004BC 00001021 */  addu       $v0, $zero, $zero
.Lrace_801004C0:
/* B6880 801004C0 03E00008 */  jr         $ra
/* B6884 801004C4 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_race_801004C8
/* B6888 801004C8 8C82013C */  lw         $v0, 0x13C($a0)
/* B688C 801004CC C4420028 */  lwc1       $f2, 0x28($v0)
/* B6890 801004D0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B6894 801004D4 E7A20000 */  swc1       $f2, 0x0($sp)
/* B6898 801004D8 C446002C */  lwc1       $f6, 0x2C($v0)
/* B689C 801004DC E7A60004 */  swc1       $f6, 0x4($sp)
/* B68A0 801004E0 C4440030 */  lwc1       $f4, 0x30($v0)
/* B68A4 801004E4 E7A40008 */  swc1       $f4, 0x8($sp)
/* B68A8 801004E8 C48005FC */  lwc1       $f0, 0x5FC($a0)
/* B68AC 801004EC 46001082 */  mul.s      $f2, $f2, $f0
/* B68B0 801004F0 248205FC */  addiu      $v0, $a0, 0x5FC
/* B68B4 801004F4 C4400004 */  lwc1       $f0, 0x4($v0)
/* B68B8 801004F8 46003182 */  mul.s      $f6, $f6, $f0
/* B68BC 801004FC C4400008 */  lwc1       $f0, 0x8($v0)
/* B68C0 80100500 46002102 */  mul.s      $f4, $f4, $f0
/* B68C4 80100504 46061080 */  add.s      $f2, $f2, $f6
/* B68C8 80100508 46041080 */  add.s      $f2, $f2, $f4
/* B68CC 8010050C 44802000 */  mtc1       $zero, $f4
/* B68D0 80100510 44854000 */  mtc1       $a1, $f8
/* B68D4 80100514 4604103E */  c.le.s     $f2, $f4
/* B68D8 80100518 00000000 */  nop
/* B68DC 8010051C 45030028 */  bc1tl      .Lrace_801005C0
/* B68E0 80100520 00001021 */   addu      $v0, $zero, $zero
/* B68E4 80100524 4604403C */  c.lt.s     $f8, $f4
/* B68E8 80100528 00000000 */  nop
/* B68EC 8010052C 45000006 */  bc1f       .Lrace_80100548
/* B68F0 80100530 00000000 */   nop
/* B68F4 80100534 C4800650 */  lwc1       $f0, 0x650($a0)
/* B68F8 80100538 4600203C */  c.lt.s     $f4, $f0
/* B68FC 8010053C 00000000 */  nop
/* B6900 80100540 4501001F */  bc1t       .Lrace_801005C0
/* B6904 80100544 00001021 */   addu      $v0, $zero, $zero
.Lrace_80100548:
/* B6908 80100548 4608203C */  c.lt.s     $f4, $f8
/* B690C 8010054C 00000000 */  nop
/* B6910 80100550 45000006 */  bc1f       .Lrace_8010056C
/* B6914 80100554 00000000 */   nop
/* B6918 80100558 C4800650 */  lwc1       $f0, 0x650($a0)
/* B691C 8010055C 4604003C */  c.lt.s     $f0, $f4
/* B6920 80100560 00000000 */  nop
/* B6924 80100564 45010016 */  bc1t       .Lrace_801005C0
/* B6928 80100568 00001021 */   addu      $v0, $zero, $zero
.Lrace_8010056C:
/* B692C 8010056C 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B6930 80100570 30420001 */  andi       $v0, $v0, 0x1
/* B6934 80100574 14400007 */  bnez       $v0, .Lrace_80100594
/* B6938 80100578 00000000 */   nop
/* B693C 8010057C 3C01800D */  lui        $at, %hi(D_race_800CD340)
/* B6940 80100580 C420D340 */  lwc1       $f0, %lo(D_race_800CD340)($at)
/* B6944 80100584 4600103C */  c.lt.s     $f2, $f0
/* B6948 80100588 00000000 */  nop
/* B694C 8010058C 4501000C */  bc1t       .Lrace_801005C0
/* B6950 80100590 00001021 */   addu      $v0, $zero, $zero
.Lrace_80100594:
/* B6954 80100594 8C8203F0 */  lw         $v0, 0x3F0($a0)
/* B6958 80100598 14400009 */  bnez       $v0, .Lrace_801005C0
/* B695C 8010059C 00001021 */   addu      $v0, $zero, $zero
/* B6960 801005A0 C4820608 */  lwc1       $f2, 0x608($a0)
/* B6964 801005A4 3C01800D */  lui        $at, %hi(D_race_800CD344)
/* B6968 801005A8 C420D344 */  lwc1       $f0, %lo(D_race_800CD344)($at)
/* B696C 801005AC 4602003C */  c.lt.s     $f0, $f2
/* B6970 801005B0 00000000 */  nop
/* B6974 801005B4 45010002 */  bc1t       .Lrace_801005C0
/* B6978 801005B8 00000000 */   nop
/* B697C 801005BC 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_801005C0:
/* B6980 801005C0 03E00008 */  jr         $ra
/* B6984 801005C4 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_race_801005C8
/* B6988 801005C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B698C 801005CC AFB00020 */  sw         $s0, 0x20($sp)
/* B6990 801005D0 00808021 */  addu       $s0, $a0, $zero
/* B6994 801005D4 AFBF0028 */  sw         $ra, 0x28($sp)
/* B6998 801005D8 AFB10024 */  sw         $s1, 0x24($sp)
/* B699C 801005DC 8E02072C */  lw         $v0, 0x72C($s0)
/* B69A0 801005E0 10400006 */  beqz       $v0, .Lrace_801005FC
/* B69A4 801005E4 00A08821 */   addu      $s1, $a1, $zero
/* B69A8 801005E8 8E020728 */  lw         $v0, 0x728($s0)
/* B69AC 801005EC 1222002D */  beq        $s1, $v0, .Lrace_801006A4
/* B69B0 801005F0 00000000 */   nop
/* B69B4 801005F4 0C0401AE */  jal        func_race_801006B8
/* B69B8 801005F8 00000000 */   nop
.Lrace_801005FC:
/* B69BC 801005FC 8E04015C */  lw         $a0, 0x15C($s0)
/* B69C0 80100600 02202821 */  addu       $a1, $s1, $zero
/* B69C4 80100604 AE000724 */  sw         $zero, 0x724($s0)
/* B69C8 80100608 0C04654F */  jal        func_race_8011953C
/* B69CC 8010060C AE050728 */   sw        $a1, 0x728($s0)
/* B69D0 80100610 10400024 */  beqz       $v0, .Lrace_801006A4
/* B69D4 80100614 AE02072C */   sw        $v0, 0x72C($s0)
/* B69D8 80100618 3C01800D */  lui        $at, %hi(D_race_800CD348)
/* B69DC 8010061C C420D348 */  lwc1       $f0, %lo(D_race_800CD348)($at)
/* B69E0 80100620 3C01800D */  lui        $at, %hi(D_race_800CD34C)
/* B69E4 80100624 C422D34C */  lwc1       $f2, %lo(D_race_800CD34C)($at)
/* B69E8 80100628 E440002C */  swc1       $f0, 0x2C($v0)
/* B69EC 8010062C E4420030 */  swc1       $f2, 0x30($v0)
/* B69F0 80100630 8E03013C */  lw         $v1, 0x13C($s0)
/* B69F4 80100634 8C620024 */  lw         $v0, 0x24($v1)
/* B69F8 80100638 27A50010 */  addiu      $a1, $sp, 0x10
/* B69FC 8010063C 84440010 */  lh         $a0, 0x10($v0)
/* B6A00 80100640 8C420014 */  lw         $v0, 0x14($v0)
/* B6A04 80100644 0040F809 */  jalr       $v0
/* B6A08 80100648 00642021 */   addu      $a0, $v1, $a0
/* B6A0C 8010064C 8E02072C */  lw         $v0, 0x72C($s0)
/* B6A10 80100650 8FA60010 */  lw         $a2, 0x10($sp)
/* B6A14 80100654 8FA70014 */  lw         $a3, 0x14($sp)
/* B6A18 80100658 8FA80018 */  lw         $t0, 0x18($sp)
/* B6A1C 8010065C AC460014 */  sw         $a2, 0x14($v0)
/* B6A20 80100660 AC470018 */  sw         $a3, 0x18($v0)
/* B6A24 80100664 AC48001C */  sw         $t0, 0x1C($v0)
/* B6A28 80100668 8E02072C */  lw         $v0, 0x72C($s0)
/* B6A2C 8010066C C6000004 */  lwc1       $f0, 0x4($s0)
/* B6A30 80100670 26030004 */  addiu      $v1, $s0, 0x4
/* B6A34 80100674 E4400020 */  swc1       $f0, 0x20($v0)
/* B6A38 80100678 C4600004 */  lwc1       $f0, 0x4($v1)
/* B6A3C 8010067C E4400024 */  swc1       $f0, 0x24($v0)
/* B6A40 80100680 C4600008 */  lwc1       $f0, 0x8($v1)
/* B6A44 80100684 E4400028 */  swc1       $f0, 0x28($v0)
/* B6A48 80100688 8E03072C */  lw         $v1, 0x72C($s0)
/* B6A4C 8010068C 8C620034 */  lw         $v0, 0x34($v1)
/* B6A50 80100690 24050001 */  addiu      $a1, $zero, 0x1
/* B6A54 80100694 84440010 */  lh         $a0, 0x10($v0)
/* B6A58 80100698 8C420014 */  lw         $v0, 0x14($v0)
/* B6A5C 8010069C 0040F809 */  jalr       $v0
/* B6A60 801006A0 00642021 */   addu      $a0, $v1, $a0
.Lrace_801006A4:
/* B6A64 801006A4 8FBF0028 */  lw         $ra, 0x28($sp)
/* B6A68 801006A8 8FB10024 */  lw         $s1, 0x24($sp)
/* B6A6C 801006AC 8FB00020 */  lw         $s0, 0x20($sp)
/* B6A70 801006B0 03E00008 */  jr         $ra
/* B6A74 801006B4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_801006B8
/* B6A78 801006B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B6A7C 801006BC AFB00010 */  sw         $s0, 0x10($sp)
/* B6A80 801006C0 00808021 */  addu       $s0, $a0, $zero
/* B6A84 801006C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6A88 801006C8 8E03072C */  lw         $v1, 0x72C($s0)
/* B6A8C 801006CC 10600016 */  beqz       $v1, .Lrace_80100728
/* B6A90 801006D0 00000000 */   nop
/* B6A94 801006D4 8C620034 */  lw         $v0, 0x34($v1)
/* B6A98 801006D8 84440020 */  lh         $a0, 0x20($v0)
/* B6A9C 801006DC 8C420024 */  lw         $v0, 0x24($v0)
/* B6AA0 801006E0 0040F809 */  jalr       $v0
/* B6AA4 801006E4 00642021 */   addu      $a0, $v1, $a0
/* B6AA8 801006E8 10400007 */  beqz       $v0, .Lrace_80100708
/* B6AAC 801006EC 00000000 */   nop
/* B6AB0 801006F0 8E03072C */  lw         $v1, 0x72C($s0)
/* B6AB4 801006F4 8C620034 */  lw         $v0, 0x34($v1)
/* B6AB8 801006F8 84440018 */  lh         $a0, 0x18($v0)
/* B6ABC 801006FC 8C42001C */  lw         $v0, 0x1C($v0)
/* B6AC0 80100700 0040F809 */  jalr       $v0
/* B6AC4 80100704 00642021 */   addu      $a0, $v1, $a0
.Lrace_80100708:
/* B6AC8 80100708 8E04015C */  lw         $a0, 0x15C($s0)
/* B6ACC 8010070C 8E05072C */  lw         $a1, 0x72C($s0)
/* B6AD0 80100710 0C046564 */  jal        func_race_80119590
/* B6AD4 80100714 00000000 */   nop
/* B6AD8 80100718 2402FFFF */  addiu      $v0, $zero, -0x1
/* B6ADC 8010071C AE020728 */  sw         $v0, 0x728($s0)
/* B6AE0 80100720 AE00072C */  sw         $zero, 0x72C($s0)
/* B6AE4 80100724 AE000724 */  sw         $zero, 0x724($s0)
.Lrace_80100728:
/* B6AE8 80100728 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6AEC 8010072C 8FB00010 */  lw         $s0, 0x10($sp)
/* B6AF0 80100730 03E00008 */  jr         $ra
/* B6AF4 80100734 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80100738
/* B6AF8 80100738 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B6AFC 8010073C AFB00020 */  sw         $s0, 0x20($sp)
/* B6B00 80100740 00808021 */  addu       $s0, $a0, $zero
/* B6B04 80100744 26040738 */  addiu      $a0, $s0, 0x738
/* B6B08 80100748 F7B40028 */  sdc1       $f20, 0x28($sp)
/* B6B0C 8010074C 3C01800D */  lui        $at, %hi(D_race_800CD350)
/* B6B10 80100750 C434D350 */  lwc1       $f20, %lo(D_race_800CD350)($at)
/* B6B14 80100754 27A50010 */  addiu      $a1, $sp, 0x10
/* B6B18 80100758 AFBF0024 */  sw         $ra, 0x24($sp)
/* B6B1C 8010075C E494002C */  swc1       $f20, 0x2C($a0)
/* B6B20 80100760 AFA00010 */  sw         $zero, 0x10($sp)
/* B6B24 80100764 AFA00014 */  sw         $zero, 0x14($sp)
/* B6B28 80100768 0C04C5A1 */  jal        func_race_80131684
/* B6B2C 8010076C AFA00018 */   sw        $zero, 0x18($sp)
/* B6B30 80100770 AE0007B0 */  sw         $zero, 0x7B0($s0)
/* B6B34 80100774 AE0007B4 */  sw         $zero, 0x7B4($s0)
/* B6B38 80100778 AE0007B8 */  sw         $zero, 0x7B8($s0)
/* B6B3C 8010077C AE0007BC */  sw         $zero, 0x7BC($s0)
/* B6B40 80100780 E61407D4 */  swc1       $f20, 0x7D4($s0)
/* B6B44 80100784 E61407D8 */  swc1       $f20, 0x7D8($s0)
/* B6B48 80100788 8FBF0024 */  lw         $ra, 0x24($sp)
/* B6B4C 8010078C 8FB00020 */  lw         $s0, 0x20($sp)
/* B6B50 80100790 D7B40028 */  ldc1       $f20, 0x28($sp)
/* B6B54 80100794 03E00008 */  jr         $ra
/* B6B58 80100798 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_8010079C
/* B6B5C 8010079C 3C03FFEF */  lui        $v1, (0xFFEFFFFF >> 16)
/* B6B60 801007A0 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B6B64 801007A4 3463FFFF */  ori        $v1, $v1, (0xFFEFFFFF & 0xFFFF)
/* B6B68 801007A8 00431024 */  and        $v0, $v0, $v1
/* B6B6C 801007AC 03E00008 */  jr         $ra
/* B6B70 801007B0 AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_801007B4
/* B6B74 801007B4 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B6B78 801007B8 3C030010 */  lui        $v1, (0x100000 >> 16)
/* B6B7C 801007BC 00431025 */  or         $v0, $v0, $v1
/* B6B80 801007C0 03E00008 */  jr         $ra
/* B6B84 801007C4 AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_801007C8
/* B6B88 801007C8 8C8206DC */  lw         $v0, 0x6DC($a0)
/* B6B8C 801007CC 03E00008 */  jr         $ra
/* B6B90 801007D0 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_801007D4
/* B6B94 801007D4 8C8206E8 */  lw         $v0, 0x6E8($a0)
/* B6B98 801007D8 03E00008 */  jr         $ra
/* B6B9C 801007DC 00000000 */   nop

glabel func_race_801007E0
/* B6BA0 801007E0 8C8206E4 */  lw         $v0, 0x6E4($a0)
/* B6BA4 801007E4 03E00008 */  jr         $ra
/* B6BA8 801007E8 00000000 */   nop

glabel func_race_801007EC
/* B6BAC 801007EC C48007D4 */  lwc1       $f0, 0x7D4($a0)
/* B6BB0 801007F0 03E00008 */  jr         $ra
/* B6BB4 801007F4 00000000 */   nop

glabel func_race_801007F8
/* B6BB8 801007F8 3C030004 */  lui        $v1, (0x40000 >> 16)
/* B6BBC 801007FC 8C8206AC */  lw         $v0, 0x6AC($a0)
/* B6BC0 80100800 44850000 */  mtc1       $a1, $f0
/* B6BC4 80100804 00431024 */  and        $v0, $v0, $v1
/* B6BC8 80100808 14400002 */  bnez       $v0, .Lrace_80100814
/* B6BCC 8010080C E48007D4 */   swc1      $f0, 0x7D4($a0)
/* B6BD0 80100810 E48007D8 */  swc1       $f0, 0x7D8($a0)
.Lrace_80100814:
/* B6BD4 80100814 03E00008 */  jr         $ra
/* B6BD8 80100818 00000000 */   nop

glabel func_race_8010081C
/* B6BDC 8010081C 03E00008 */  jr         $ra
/* B6BE0 80100820 AC850764 */   sw        $a1, 0x764($a0)

glabel func_race_80100824
/* B6BE4 80100824 03E00008 */  jr         $ra
/* B6BE8 80100828 24820738 */   addiu     $v0, $a0, 0x738

glabel func_race_8010082C
/* B6BEC 8010082C 8C8206E0 */  lw         $v0, 0x6E0($a0)
/* B6BF0 80100830 03E00008 */  jr         $ra
/* B6BF4 80100834 00000000 */   nop

glabel func_race_80100838
/* B6BF8 80100838 8C820710 */  lw         $v0, 0x710($a0)
/* B6BFC 8010083C 03E00008 */  jr         $ra
/* B6C00 80100840 00000000 */   nop

glabel func_race_80100844
/* B6C04 80100844 8C82070C */  lw         $v0, 0x70C($a0)
/* B6C08 80100848 03E00008 */  jr         $ra
/* B6C0C 8010084C 00000000 */   nop

glabel func_race_80100850
/* B6C10 80100850 8C820708 */  lw         $v0, 0x708($a0)
/* B6C14 80100854 03E00008 */  jr         $ra
/* B6C18 80100858 00000000 */   nop

glabel func_race_8010085C
/* B6C1C 8010085C 03E00008 */  jr         $ra
/* B6C20 80100860 AC800734 */   sw        $zero, 0x734($a0)

glabel func_race_80100864
/* B6C24 80100864 24020001 */  addiu      $v0, $zero, 0x1
/* B6C28 80100868 03E00008 */  jr         $ra
/* B6C2C 8010086C AC820734 */   sw        $v0, 0x734($a0)

glabel func_race_80100870
/* B6C30 80100870 8C820730 */  lw         $v0, 0x730($a0)
/* B6C34 80100874 03E00008 */  jr         $ra
/* B6C38 80100878 00000000 */   nop

glabel func_race_8010087C
/* B6C3C 8010087C C4800714 */  lwc1       $f0, 0x714($a0)
/* B6C40 80100880 03E00008 */  jr         $ra
/* B6C44 80100884 00000000 */   nop
