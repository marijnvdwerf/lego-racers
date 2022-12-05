.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel func_8001D310
/* 1DF10 8001D310 3C1A8002 */  lui        $k0, %hi(D_8001D320)
/* 1DF14 8001D314 275AD320 */  addiu      $k0, $k0, %lo(D_8001D320)
/* 1DF18 8001D318 03400008 */  jr         $k0
/* 1DF1C 8001D31C 00000000 */   nop
D_8001D320:
/* 1DF20 8001D320 3C1A8004 */  lui        $k0, %hi(D_8003A590)
/* 1DF24 8001D324 275AA590 */  addiu      $k0, $k0, %lo(D_8003A590)
/* 1DF28 8001D328 FF410020 */  sd         $at, 0x20($k0)
/* 1DF2C 8001D32C 401B6000 */  mfc0       $k1, $12
/* 1DF30 8001D330 AF5B0118 */  sw         $k1, 0x118($k0)
/* 1DF34 8001D334 2401FFFC */  addiu      $at, $zero, -0x4
/* 1DF38 8001D338 0361D824 */  and        $k1, $k1, $at
/* 1DF3C 8001D33C 409B6000 */  mtc0       $k1, $12
/* 1DF40 8001D340 FF480058 */  sd         $t0, 0x58($k0)
/* 1DF44 8001D344 FF490060 */  sd         $t1, 0x60($k0)
/* 1DF48 8001D348 FF4A0068 */  sd         $t2, 0x68($k0)
/* 1DF4C 8001D34C AF400018 */  sw         $zero, 0x18($k0)
/* 1DF50 8001D350 40086800 */  mfc0       $t0, $13
/* 1DF54 8001D354 03404021 */  addu       $t0, $k0, $zero
/* 1DF58 8001D358 3C1A8003 */  lui        $k0, %hi(D_800310B0)
/* 1DF5C 8001D35C 8F5A10B0 */  lw         $k0, %lo(D_800310B0)($k0)
/* 1DF60 8001D360 DD090020 */  ld         $t1, 0x20($t0)
/* 1DF64 8001D364 FF490020 */  sd         $t1, 0x20($k0)
/* 1DF68 8001D368 DD090118 */  ld         $t1, 0x118($t0)
/* 1DF6C 8001D36C FF490118 */  sd         $t1, 0x118($k0)
/* 1DF70 8001D370 DD090058 */  ld         $t1, 0x58($t0)
/* 1DF74 8001D374 FF490058 */  sd         $t1, 0x58($k0)
/* 1DF78 8001D378 DD090060 */  ld         $t1, 0x60($t0)
/* 1DF7C 8001D37C FF490060 */  sd         $t1, 0x60($k0)
/* 1DF80 8001D380 DD090068 */  ld         $t1, 0x68($t0)
/* 1DF84 8001D384 FF490068 */  sd         $t1, 0x68($k0)
/* 1DF88 8001D388 FF420028 */  sd         $v0, 0x28($k0)
/* 1DF8C 8001D38C FF430030 */  sd         $v1, 0x30($k0)
/* 1DF90 8001D390 FF440038 */  sd         $a0, 0x38($k0)
/* 1DF94 8001D394 FF450040 */  sd         $a1, 0x40($k0)
/* 1DF98 8001D398 FF460048 */  sd         $a2, 0x48($k0)
/* 1DF9C 8001D39C FF470050 */  sd         $a3, 0x50($k0)
/* 1DFA0 8001D3A0 FF4B0070 */  sd         $t3, 0x70($k0)
/* 1DFA4 8001D3A4 FF4C0078 */  sd         $t4, 0x78($k0)
/* 1DFA8 8001D3A8 FF4D0080 */  sd         $t5, 0x80($k0)
/* 1DFAC 8001D3AC FF4E0088 */  sd         $t6, 0x88($k0)
/* 1DFB0 8001D3B0 FF4F0090 */  sd         $t7, 0x90($k0)
/* 1DFB4 8001D3B4 FF500098 */  sd         $s0, 0x98($k0)
/* 1DFB8 8001D3B8 FF5100A0 */  sd         $s1, 0xA0($k0)
/* 1DFBC 8001D3BC FF5200A8 */  sd         $s2, 0xA8($k0)
/* 1DFC0 8001D3C0 FF5300B0 */  sd         $s3, 0xB0($k0)
/* 1DFC4 8001D3C4 FF5400B8 */  sd         $s4, 0xB8($k0)
/* 1DFC8 8001D3C8 FF5500C0 */  sd         $s5, 0xC0($k0)
/* 1DFCC 8001D3CC FF5600C8 */  sd         $s6, 0xC8($k0)
/* 1DFD0 8001D3D0 FF5700D0 */  sd         $s7, 0xD0($k0)
/* 1DFD4 8001D3D4 FF5800D8 */  sd         $t8, 0xD8($k0)
/* 1DFD8 8001D3D8 FF5900E0 */  sd         $t9, 0xE0($k0)
/* 1DFDC 8001D3DC FF5C00E8 */  sd         $gp, 0xE8($k0)
/* 1DFE0 8001D3E0 FF5D00F0 */  sd         $sp, 0xF0($k0)
/* 1DFE4 8001D3E4 FF5E00F8 */  sd         $fp, 0xF8($k0)
/* 1DFE8 8001D3E8 FF5F0100 */  sd         $ra, 0x100($k0)
/* 1DFEC 8001D3EC 00004012 */  mflo       $t0
/* 1DFF0 8001D3F0 FF480108 */  sd         $t0, 0x108($k0)
/* 1DFF4 8001D3F4 00004010 */  mfhi       $t0
/* 1DFF8 8001D3F8 FF480110 */  sd         $t0, 0x110($k0)
/* 1DFFC 8001D3FC 8F5B0118 */  lw         $k1, 0x118($k0)
/* 1E000 8001D400 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 1E004 8001D404 11200013 */  beqz       $t1, .L8001D454
/* 1E008 8001D408 00000000 */   nop
/* 1E00C 8001D40C 3C088003 */  lui        $t0, %hi(D_80032400)
/* 1E010 8001D410 25082400 */  addiu      $t0, $t0, %lo(D_80032400)
/* 1E014 8001D414 8D080000 */  lw         $t0, 0x0($t0)
/* 1E018 8001D418 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E01C 8001D41C 01015026 */  xor        $t2, $t0, $at
/* 1E020 8001D420 314AFF00 */  andi       $t2, $t2, 0xFF00
/* 1E024 8001D424 012A6025 */  or         $t4, $t1, $t2
/* 1E028 8001D428 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 1E02C 8001D42C 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 1E030 8001D430 03615824 */  and        $t3, $k1, $at
/* 1E034 8001D434 016C5825 */  or         $t3, $t3, $t4
/* 1E038 8001D438 AF4B0118 */  sw         $t3, 0x118($k0)
/* 1E03C 8001D43C 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 1E040 8001D440 01284824 */  and        $t1, $t1, $t0
/* 1E044 8001D444 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 1E048 8001D448 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 1E04C 8001D44C 0361D824 */  and        $k1, $k1, $at
/* 1E050 8001D450 0369D825 */  or         $k1, $k1, $t1
.L8001D454:
/* 1E054 8001D454 3C09A430 */  lui        $t1, %hi(D_A430000C)
/* 1E058 8001D458 8D29000C */  lw         $t1, %lo(D_A430000C)($t1)
/* 1E05C 8001D45C 1120000B */  beqz       $t1, .L8001D48C
/* 1E060 8001D460 00000000 */   nop
/* 1E064 8001D464 3C088003 */  lui        $t0, %hi(D_80032400)
/* 1E068 8001D468 25082400 */  addiu      $t0, $t0, %lo(D_80032400)
/* 1E06C 8001D46C 8D080000 */  lw         $t0, 0x0($t0)
/* 1E070 8001D470 00084402 */  srl        $t0, $t0, 16
/* 1E074 8001D474 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E078 8001D478 01014026 */  xor        $t0, $t0, $at
/* 1E07C 8001D47C 3108003F */  andi       $t0, $t0, 0x3F
/* 1E080 8001D480 8F4C0128 */  lw         $t4, 0x128($k0)
/* 1E084 8001D484 010C4024 */  and        $t0, $t0, $t4
/* 1E088 8001D488 01284825 */  or         $t1, $t1, $t0
.L8001D48C:
/* 1E08C 8001D48C AF490128 */  sw         $t1, 0x128($k0)
/* 1E090 8001D490 40087000 */  mfc0       $t0, $14
/* 1E094 8001D494 AF48011C */  sw         $t0, 0x11C($k0)
/* 1E098 8001D498 8F480018 */  lw         $t0, 0x18($k0)
/* 1E09C 8001D49C 11000014 */  beqz       $t0, .L8001D4F0
/* 1E0A0 8001D4A0 00000000 */   nop
/* 1E0A4 8001D4A4 4448F800 */  cfc1       $t0, $31
/* 1E0A8 8001D4A8 00000000 */  nop
/* 1E0AC 8001D4AC AF48012C */  sw         $t0, 0x12C($k0)
/* 1E0B0 8001D4B0 F7400130 */  sdc1       $f0, 0x130($k0)
/* 1E0B4 8001D4B4 F7420138 */  sdc1       $f2, 0x138($k0)
/* 1E0B8 8001D4B8 F7440140 */  sdc1       $f4, 0x140($k0)
/* 1E0BC 8001D4BC F7460148 */  sdc1       $f6, 0x148($k0)
/* 1E0C0 8001D4C0 F7480150 */  sdc1       $f8, 0x150($k0)
/* 1E0C4 8001D4C4 F74A0158 */  sdc1       $f10, 0x158($k0)
/* 1E0C8 8001D4C8 F74C0160 */  sdc1       $f12, 0x160($k0)
/* 1E0CC 8001D4CC F74E0168 */  sdc1       $f14, 0x168($k0)
/* 1E0D0 8001D4D0 F7500170 */  sdc1       $f16, 0x170($k0)
/* 1E0D4 8001D4D4 F7520178 */  sdc1       $f18, 0x178($k0)
/* 1E0D8 8001D4D8 F7540180 */  sdc1       $f20, 0x180($k0)
/* 1E0DC 8001D4DC F7560188 */  sdc1       $f22, 0x188($k0)
/* 1E0E0 8001D4E0 F7580190 */  sdc1       $f24, 0x190($k0)
/* 1E0E4 8001D4E4 F75A0198 */  sdc1       $f26, 0x198($k0)
/* 1E0E8 8001D4E8 F75C01A0 */  sdc1       $f28, 0x1A0($k0)
/* 1E0EC 8001D4EC F75E01A8 */  sdc1       $f30, 0x1A8($k0)
.L8001D4F0:
/* 1E0F0 8001D4F0 40086800 */  mfc0       $t0, $13
/* 1E0F4 8001D4F4 AF480120 */  sw         $t0, 0x120($k0)
/* 1E0F8 8001D4F8 24090002 */  addiu      $t1, $zero, 0x2
/* 1E0FC 8001D4FC A7490010 */  sh         $t1, 0x10($k0)
/* 1E100 8001D500 3109007C */  andi       $t1, $t0, 0x7C
/* 1E104 8001D504 240A0024 */  addiu      $t2, $zero, 0x24
/* 1E108 8001D508 112A00BF */  beq        $t1, $t2, .L8001D808
/* 1E10C 8001D50C 00000000 */   nop
/* 1E110 8001D510 240A002C */  addiu      $t2, $zero, 0x2C
/* 1E114 8001D514 112A0110 */  beq        $t1, $t2, .L8001D958
/* 1E118 8001D518 00000000 */   nop
/* 1E11C 8001D51C 240A0000 */  addiu      $t2, $zero, 0x0
/* 1E120 8001D520 152A00D2 */  bne        $t1, $t2, .L8001D86C
/* 1E124 8001D524 00000000 */   nop
/* 1E128 8001D528 03688024 */  and        $s0, $k1, $t0
.L8001D52C:
/* 1E12C 8001D52C 3209FF00 */  andi       $t1, $s0, 0xFF00
/* 1E130 8001D530 00095302 */  srl        $t2, $t1, 12
/* 1E134 8001D534 15400003 */  bnez       $t2, .L8001D544
/* 1E138 8001D538 00000000 */   nop
/* 1E13C 8001D53C 00095202 */  srl        $t2, $t1, 8
/* 1E140 8001D540 214A0010 */  addi       $t2, $t2, 0x10
.L8001D544:
/* 1E144 8001D544 3C018000 */  lui        $at, %hi(D_80001990)
/* 1E148 8001D548 002A0821 */  addu       $at, $at, $t2
/* 1E14C 8001D54C 902A1990 */  lbu        $t2, %lo(D_80001990)($at)
/* 1E150 8001D550 3C018000 */  lui        $at, %hi(jtbl_800019B0)
/* 1E154 8001D554 002A0821 */  addu       $at, $at, $t2
/* 1E158 8001D558 8C2A19B0 */  lw         $t2, %lo(jtbl_800019B0)($at)
/* 1E15C 8001D55C 01400008 */  jr         $t2
/* 1E160 8001D560 00000000 */   nop
glabel L8001D564
/* 1E164 8001D564 2401DFFF */  addiu      $at, $zero, -0x2001
/* 1E168 8001D568 1000FFF0 */  b          .L8001D52C
/* 1E16C 8001D56C 02018024 */   and       $s0, $s0, $at
glabel L8001D570
/* 1E170 8001D570 2401BFFF */  addiu      $at, $zero, -0x4001
/* 1E174 8001D574 1000FFED */  b          .L8001D52C
/* 1E178 8001D578 02018024 */   and       $s0, $s0, $at
glabel L8001D57C
/* 1E17C 8001D57C 40095800 */  mfc0       $t1, $11
/* 1E180 8001D580 40895800 */  mtc0       $t1, $11
/* 1E184 8001D584 24040018 */  addiu      $a0, $zero, 0x18
/* 1E188 8001D588 0C007627 */  jal        func_8001D89C
/* 1E18C 8001D58C 00000000 */   nop
/* 1E190 8001D590 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
/* 1E194 8001D594 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
/* 1E198 8001D598 1000FFE4 */  b          .L8001D52C
/* 1E19C 8001D59C 02018024 */   and       $s0, $s0, $at
glabel L8001D5A0
/* 1E1A0 8001D5A0 2401F7FF */  addiu      $at, $zero, -0x801
/* 1E1A4 8001D5A4 02018024 */  and        $s0, $s0, $at
/* 1E1A8 8001D5A8 3C098003 */  lui        $t1, %hi(D_80031040)
/* 1E1AC 8001D5AC 25291040 */  addiu      $t1, $t1, %lo(D_80031040)
/* 1E1B0 8001D5B0 21290008 */  addi       $t1, $t1, 0x8
/* 1E1B4 8001D5B4 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1E1B8 8001D5B8 11400007 */  beqz       $t2, .L8001D5D8
/* 1E1BC 8001D5BC 00000000 */   nop
/* 1E1C0 8001D5C0 0140F809 */  jalr       $t2
/* 1E1C4 8001D5C4 8D3D0004 */   lw        $sp, 0x4($t1)
/* 1E1C8 8001D5C8 10400003 */  beqz       $v0, .L8001D5D8
/* 1E1CC 8001D5CC 00000000 */   nop
/* 1E1D0 8001D5D0 10000093 */  b          L8001D820
/* 1E1D4 8001D5D4 00000000 */   nop
.L8001D5D8:
/* 1E1D8 8001D5D8 0C007627 */  jal        func_8001D89C
/* 1E1DC 8001D5DC 24040010 */   addiu     $a0, $zero, 0x10
/* 1E1E0 8001D5E0 1000FFD2 */  b          .L8001D52C
/* 1E1E4 8001D5E4 00000000 */   nop
glabel L8001D5E8
/* 1E1E8 8001D5E8 3C11A430 */  lui        $s1, %hi(D_A4300008)
/* 1E1EC 8001D5EC 8E310008 */  lw         $s1, %lo(D_A4300008)($s1)
/* 1E1F0 8001D5F0 3C088003 */  lui        $t0, %hi(D_80032400)
/* 1E1F4 8001D5F4 25082400 */  addiu      $t0, $t0, %lo(D_80032400)
/* 1E1F8 8001D5F8 8D080000 */  lw         $t0, 0x0($t0)
/* 1E1FC 8001D5FC 00084402 */  srl        $t0, $t0, 16
/* 1E200 8001D600 02288824 */  and        $s1, $s1, $t0
/* 1E204 8001D604 32290001 */  andi       $t1, $s1, 0x1
/* 1E208 8001D608 11200014 */  beqz       $t1, .L8001D65C
/* 1E20C 8001D60C 00000000 */   nop
/* 1E210 8001D610 3231003E */  andi       $s1, $s1, 0x3E
/* 1E214 8001D614 3C0CA404 */  lui        $t4, %hi(D_A4040010)
/* 1E218 8001D618 8D8C0010 */  lw         $t4, %lo(D_A4040010)($t4)
/* 1E21C 8001D61C 34098008 */  ori        $t1, $zero, 0x8008
/* 1E220 8001D620 3C01A404 */  lui        $at, %hi(D_A4040010)
/* 1E224 8001D624 AC290010 */  sw         $t1, %lo(D_A4040010)($at)
/* 1E228 8001D628 318C0300 */  andi       $t4, $t4, 0x300
/* 1E22C 8001D62C 11800007 */  beqz       $t4, .L8001D64C
/* 1E230 8001D630 00000000 */   nop
/* 1E234 8001D634 0C007627 */  jal        func_8001D89C
/* 1E238 8001D638 24040020 */   addiu     $a0, $zero, 0x20
/* 1E23C 8001D63C 12200044 */  beqz       $s1, .L8001D750
/* 1E240 8001D640 00000000 */   nop
/* 1E244 8001D644 10000005 */  b          .L8001D65C
/* 1E248 8001D648 00000000 */   nop
.L8001D64C:
/* 1E24C 8001D64C 0C007627 */  jal        func_8001D89C
/* 1E250 8001D650 24040058 */   addiu     $a0, $zero, 0x58
/* 1E254 8001D654 1220003E */  beqz       $s1, .L8001D750
/* 1E258 8001D658 00000000 */   nop
.L8001D65C:
/* 1E25C 8001D65C 32290008 */  andi       $t1, $s1, 0x8
/* 1E260 8001D660 11200008 */  beqz       $t1, .L8001D684
/* 1E264 8001D664 00000000 */   nop
/* 1E268 8001D668 32310037 */  andi       $s1, $s1, 0x37
/* 1E26C 8001D66C 3C01A440 */  lui        $at, %hi(D_A4400010)
/* 1E270 8001D670 AC200010 */  sw         $zero, %lo(D_A4400010)($at)
/* 1E274 8001D674 0C007627 */  jal        func_8001D89C
/* 1E278 8001D678 24040038 */   addiu     $a0, $zero, 0x38
/* 1E27C 8001D67C 12200034 */  beqz       $s1, .L8001D750
/* 1E280 8001D680 00000000 */   nop
.L8001D684:
/* 1E284 8001D684 32290004 */  andi       $t1, $s1, 0x4
/* 1E288 8001D688 11200009 */  beqz       $t1, .L8001D6B0
/* 1E28C 8001D68C 00000000 */   nop
/* 1E290 8001D690 3231003B */  andi       $s1, $s1, 0x3B
/* 1E294 8001D694 24090001 */  addiu      $t1, $zero, 0x1
/* 1E298 8001D698 3C01A450 */  lui        $at, %hi(D_A450000C)
/* 1E29C 8001D69C AC29000C */  sw         $t1, %lo(D_A450000C)($at)
/* 1E2A0 8001D6A0 0C007627 */  jal        func_8001D89C
/* 1E2A4 8001D6A4 24040030 */   addiu     $a0, $zero, 0x30
/* 1E2A8 8001D6A8 12200029 */  beqz       $s1, .L8001D750
/* 1E2AC 8001D6AC 00000000 */   nop
.L8001D6B0:
/* 1E2B0 8001D6B0 32290002 */  andi       $t1, $s1, 0x2
/* 1E2B4 8001D6B4 11200008 */  beqz       $t1, .L8001D6D8
/* 1E2B8 8001D6B8 00000000 */   nop
/* 1E2BC 8001D6BC 3231003D */  andi       $s1, $s1, 0x3D
/* 1E2C0 8001D6C0 3C01A480 */  lui        $at, %hi(D_A4800018)
/* 1E2C4 8001D6C4 AC200018 */  sw         $zero, %lo(D_A4800018)($at)
/* 1E2C8 8001D6C8 0C007627 */  jal        func_8001D89C
/* 1E2CC 8001D6CC 24040028 */   addiu     $a0, $zero, 0x28
/* 1E2D0 8001D6D0 1220001F */  beqz       $s1, .L8001D750
/* 1E2D4 8001D6D4 00000000 */   nop
.L8001D6D8:
/* 1E2D8 8001D6D8 32290010 */  andi       $t1, $s1, 0x10
/* 1E2DC 8001D6DC 11200013 */  beqz       $t1, .L8001D72C
/* 1E2E0 8001D6E0 00000000 */   nop
/* 1E2E4 8001D6E4 3231002F */  andi       $s1, $s1, 0x2F
/* 1E2E8 8001D6E8 24090002 */  addiu      $t1, $zero, 0x2
/* 1E2EC 8001D6EC 3C01A460 */  lui        $at, %hi(D_A4600010)
/* 1E2F0 8001D6F0 AC290010 */  sw         $t1, %lo(D_A4600010)($at)
/* 1E2F4 8001D6F4 3C098003 */  lui        $t1, %hi(D_80031068)
/* 1E2F8 8001D6F8 25291068 */  addiu      $t1, $t1, %lo(D_80031068)
/* 1E2FC 8001D6FC 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1E300 8001D700 11400006 */  beqz       $t2, .L8001D71C
/* 1E304 8001D704 00000000 */   nop
/* 1E308 8001D708 8D3D0004 */  lw         $sp, 0x4($t1)
/* 1E30C 8001D70C 0140F809 */  jalr       $t2
/* 1E310 8001D710 00402021 */   addu      $a0, $v0, $zero
/* 1E314 8001D714 14400003 */  bnez       $v0, .L8001D724
/* 1E318 8001D718 00000000 */   nop
.L8001D71C:
/* 1E31C 8001D71C 0C007627 */  jal        func_8001D89C
/* 1E320 8001D720 24040040 */   addiu     $a0, $zero, 0x40
.L8001D724:
/* 1E324 8001D724 1220000A */  beqz       $s1, .L8001D750
/* 1E328 8001D728 00000000 */   nop
.L8001D72C:
/* 1E32C 8001D72C 32290020 */  andi       $t1, $s1, 0x20
/* 1E330 8001D730 11200007 */  beqz       $t1, .L8001D750
/* 1E334 8001D734 00000000 */   nop
/* 1E338 8001D738 3231001F */  andi       $s1, $s1, 0x1F
/* 1E33C 8001D73C 24090800 */  addiu      $t1, $zero, 0x800
/* 1E340 8001D740 3C01A430 */  lui        $at, %hi(D_A4300000)
/* 1E344 8001D744 AC290000 */  sw         $t1, %lo(D_A4300000)($at)
/* 1E348 8001D748 0C007627 */  jal        func_8001D89C
/* 1E34C 8001D74C 24040048 */   addiu     $a0, $zero, 0x48
.L8001D750:
/* 1E350 8001D750 2401FBFF */  addiu      $at, $zero, -0x401
/* 1E354 8001D754 1000FF75 */  b          .L8001D52C
/* 1E358 8001D758 02018024 */   and       $s0, $s0, $at
glabel L8001D75C
/* 1E35C 8001D75C 8F5B0118 */  lw         $k1, 0x118($k0)
/* 1E360 8001D760 2401EFFF */  addiu      $at, $zero, -0x1001
/* 1E364 8001D764 0361D824 */  and        $k1, $k1, $at
/* 1E368 8001D768 AF5B0118 */  sw         $k1, 0x118($k0)
/* 1E36C 8001D76C 3C098003 */  lui        $t1, %hi(D_800323FC)
/* 1E370 8001D770 252923FC */  addiu      $t1, $t1, %lo(D_800323FC)
/* 1E374 8001D774 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1E378 8001D778 11400004 */  beqz       $t2, .L8001D78C
/* 1E37C 8001D77C 00000000 */   nop
/* 1E380 8001D780 2401EFFF */  addiu      $at, $zero, -0x1001
/* 1E384 8001D784 10000026 */  b          L8001D820
/* 1E388 8001D788 02018024 */   and       $s0, $s0, $at
.L8001D78C:
/* 1E38C 8001D78C 240A0001 */  addiu      $t2, $zero, 0x1
/* 1E390 8001D790 AD2A0000 */  sw         $t2, 0x0($t1)
/* 1E394 8001D794 0C007627 */  jal        func_8001D89C
/* 1E398 8001D798 24040070 */   addiu     $a0, $zero, 0x70
/* 1E39C 8001D79C 2401EFFF */  addiu      $at, $zero, -0x1001
/* 1E3A0 8001D7A0 02018024 */  and        $s0, $s0, $at
/* 1E3A4 8001D7A4 3C0A8003 */  lui        $t2, %hi(D_800310A8)
/* 1E3A8 8001D7A8 8D4A10A8 */  lw         $t2, %lo(D_800310A8)($t2)
/* 1E3AC 8001D7AC 8D5B0118 */  lw         $k1, 0x118($t2)
/* 1E3B0 8001D7B0 2401EFFF */  addiu      $at, $zero, -0x1001
/* 1E3B4 8001D7B4 0361D824 */  and        $k1, $k1, $at
/* 1E3B8 8001D7B8 10000019 */  b          L8001D820
/* 1E3BC 8001D7BC AD5B0118 */   sw        $k1, 0x118($t2)
glabel L8001D7C0
/* 1E3C0 8001D7C0 2401FDFF */  addiu      $at, $zero, -0x201
/* 1E3C4 8001D7C4 01014024 */  and        $t0, $t0, $at
/* 1E3C8 8001D7C8 40886800 */  mtc0       $t0, $13
/* 1E3CC 8001D7CC 24040008 */  addiu      $a0, $zero, 0x8
/* 1E3D0 8001D7D0 0C007627 */  jal        func_8001D89C
/* 1E3D4 8001D7D4 00000000 */   nop
/* 1E3D8 8001D7D8 2401FDFF */  addiu      $at, $zero, -0x201
/* 1E3DC 8001D7DC 1000FF53 */  b          .L8001D52C
/* 1E3E0 8001D7E0 02018024 */   and       $s0, $s0, $at
glabel L8001D7E4
/* 1E3E4 8001D7E4 2401FEFF */  addiu      $at, $zero, -0x101
/* 1E3E8 8001D7E8 01014024 */  and        $t0, $t0, $at
/* 1E3EC 8001D7EC 40886800 */  mtc0       $t0, $13
/* 1E3F0 8001D7F0 24040000 */  addiu      $a0, $zero, 0x0
/* 1E3F4 8001D7F4 0C007627 */  jal        func_8001D89C
/* 1E3F8 8001D7F8 00000000 */   nop
/* 1E3FC 8001D7FC 2401FEFF */  addiu      $at, $zero, -0x101
/* 1E400 8001D800 1000FF4A */  b          .L8001D52C
/* 1E404 8001D804 02018024 */   and       $s0, $s0, $at
.L8001D808:
/* 1E408 8001D808 24090001 */  addiu      $t1, $zero, 0x1
/* 1E40C 8001D80C A7490012 */  sh         $t1, 0x12($k0)
/* 1E410 8001D810 0C007627 */  jal        func_8001D89C
/* 1E414 8001D814 24040050 */   addiu     $a0, $zero, 0x50
/* 1E418 8001D818 10000001 */  b          L8001D820
/* 1E41C 8001D81C 00000000 */   nop
glabel L8001D820
/* 1E420 8001D820 8F490004 */  lw         $t1, 0x4($k0)
/* 1E424 8001D824 3C0A8003 */  lui        $t2, %hi(D_800310A8)
/* 1E428 8001D828 8D4A10A8 */  lw         $t2, %lo(D_800310A8)($t2)
/* 1E42C 8001D82C 8D4B0004 */  lw         $t3, 0x4($t2)
/* 1E430 8001D830 012B082A */  slt        $at, $t1, $t3
/* 1E434 8001D834 10200007 */  beqz       $at, .L8001D854
/* 1E438 8001D838 00000000 */   nop
/* 1E43C 8001D83C 03402821 */  addu       $a1, $k0, $zero
/* 1E440 8001D840 3C048003 */  lui        $a0, %hi(D_800310A8)
/* 1E444 8001D844 0C0076A5 */  jal        func_8001DA94
/* 1E448 8001D848 248410A8 */   addiu     $a0, $a0, %lo(D_800310A8)
/* 1E44C 8001D84C 080076BB */  j          .L8001DAEC
/* 1E450 8001D850 00000000 */   nop
.L8001D854:
/* 1E454 8001D854 3C098003 */  lui        $t1, %hi(D_800310A8)
/* 1E458 8001D858 252910A8 */  addiu      $t1, $t1, %lo(D_800310A8)
/* 1E45C 8001D85C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1E460 8001D860 AF4A0000 */  sw         $t2, 0x0($k0)
/* 1E464 8001D864 080076BB */  j          .L8001DAEC
/* 1E468 8001D868 AD3A0000 */   sw        $k0, 0x0($t1)
.L8001D86C:
/* 1E46C 8001D86C 3C018003 */  lui        $at, %hi(D_800310B4)
/* 1E470 8001D870 AC3A10B4 */  sw         $k0, %lo(D_800310B4)($at)
/* 1E474 8001D874 24090001 */  addiu      $t1, $zero, 0x1
/* 1E478 8001D878 A7490010 */  sh         $t1, 0x10($k0)
/* 1E47C 8001D87C 24090002 */  addiu      $t1, $zero, 0x2
/* 1E480 8001D880 A7490012 */  sh         $t1, 0x12($k0)
/* 1E484 8001D884 400A4000 */  mfc0       $t2, $8
/* 1E488 8001D888 AF4A0124 */  sw         $t2, 0x124($k0)
/* 1E48C 8001D88C 0C007627 */  jal        func_8001D89C
/* 1E490 8001D890 24040060 */   addiu     $a0, $zero, 0x60
/* 1E494 8001D894 080076BB */  j          .L8001DAEC
/* 1E498 8001D898 00000000 */   nop

# Handwritten function
glabel func_8001D89C
/* 1E49C 8001D89C 03E09021 */  addu       $s2, $ra, $zero
/* 1E4A0 8001D8A0 3C0A8004 */  lui        $t2, %hi(D_8003A740)
/* 1E4A4 8001D8A4 254AA740 */  addiu      $t2, $t2, %lo(D_8003A740)
/* 1E4A8 8001D8A8 01445021 */  addu       $t2, $t2, $a0
/* 1E4AC 8001D8AC 8D490000 */  lw         $t1, 0x0($t2)
/* 1E4B0 8001D8B0 11200027 */  beqz       $t1, .L8001D950
/* 1E4B4 8001D8B4 00000000 */   nop
/* 1E4B8 8001D8B8 8D2B0008 */  lw         $t3, 0x8($t1)
/* 1E4BC 8001D8BC 8D2C0010 */  lw         $t4, 0x10($t1)
/* 1E4C0 8001D8C0 016C082A */  slt        $at, $t3, $t4
/* 1E4C4 8001D8C4 10200022 */  beqz       $at, .L8001D950
/* 1E4C8 8001D8C8 00000000 */   nop
/* 1E4CC 8001D8CC 8D2D000C */  lw         $t5, 0xC($t1)
/* 1E4D0 8001D8D0 01AB6821 */  addu       $t5, $t5, $t3
/* 1E4D4 8001D8D4 01AC001A */  div        $zero, $t5, $t4
/* 1E4D8 8001D8D8 15800002 */  bnez       $t4, .L8001D8E4
/* 1E4DC 8001D8DC 00000000 */   nop
/* 1E4E0 8001D8E0 0007000D */  break      7
.L8001D8E4:
/* 1E4E4 8001D8E4 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E4E8 8001D8E8 15810004 */  bne        $t4, $at, .L8001D8FC
/* 1E4EC 8001D8EC 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1E4F0 8001D8F0 15A10002 */  bne        $t5, $at, .L8001D8FC
/* 1E4F4 8001D8F4 00000000 */   nop
/* 1E4F8 8001D8F8 0006000D */  break      6
.L8001D8FC:
/* 1E4FC 8001D8FC 00006810 */  mfhi       $t5
/* 1E500 8001D900 8D2C0014 */  lw         $t4, 0x14($t1)
/* 1E504 8001D904 24010004 */  addiu      $at, $zero, 0x4
/* 1E508 8001D908 01A10018 */  mult       $t5, $at
/* 1E50C 8001D90C 00006812 */  mflo       $t5
/* 1E510 8001D910 018D6021 */  addu       $t4, $t4, $t5
/* 1E514 8001D914 8D4D0004 */  lw         $t5, 0x4($t2)
/* 1E518 8001D918 AD8D0000 */  sw         $t5, 0x0($t4)
/* 1E51C 8001D91C 256A0001 */  addiu      $t2, $t3, 0x1
/* 1E520 8001D920 AD2A0008 */  sw         $t2, 0x8($t1)
/* 1E524 8001D924 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1E528 8001D928 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1E52C 8001D92C 11600008 */  beqz       $t3, .L8001D950
/* 1E530 8001D930 00000000 */   nop
/* 1E534 8001D934 0C0076B7 */  jal        func_8001DADC
/* 1E538 8001D938 01202021 */   addu      $a0, $t1, $zero
/* 1E53C 8001D93C 00405021 */  addu       $t2, $v0, $zero
/* 1E540 8001D940 01402821 */  addu       $a1, $t2, $zero
/* 1E544 8001D944 3C048003 */  lui        $a0, %hi(D_800310A8)
/* 1E548 8001D948 0C0076A5 */  jal        func_8001DA94
/* 1E54C 8001D94C 248410A8 */   addiu     $a0, $a0, %lo(D_800310A8)
.L8001D950:
/* 1E550 8001D950 02400008 */  jr         $s2
/* 1E554 8001D954 00000000 */   nop
.L8001D958:
/* 1E558 8001D958 3C013000 */  lui        $at, (0x30000000 >> 16)
/* 1E55C 8001D95C 01014824 */  and        $t1, $t0, $at
/* 1E560 8001D960 00094F02 */  srl        $t1, $t1, 28
/* 1E564 8001D964 240A0001 */  addiu      $t2, $zero, 0x1
/* 1E568 8001D968 152AFFC0 */  bne        $t1, $t2, .L8001D86C
/* 1E56C 8001D96C 00000000 */   nop
/* 1E570 8001D970 24090001 */  addiu      $t1, $zero, 0x1
/* 1E574 8001D974 AF490018 */  sw         $t1, 0x18($k0)
/* 1E578 8001D978 8F5B0118 */  lw         $k1, 0x118($k0)
/* 1E57C 8001D97C 3C012000 */  lui        $at, (0x20000000 >> 16)
/* 1E580 8001D980 0361D825 */  or         $k1, $k1, $at
/* 1E584 8001D984 1000FFB3 */  b          .L8001D854
/* 1E588 8001D988 AF5B0118 */   sw        $k1, 0x118($k0)

# Handwritten function
glabel func_8001D98C
/* 1E58C 8001D98C 3C058003 */  lui        $a1, %hi(D_800310B0)
/* 1E590 8001D990 8CA510B0 */  lw         $a1, %lo(D_800310B0)($a1)
/* 1E594 8001D994 40086000 */  mfc0       $t0, $12
/* 1E598 8001D998 35080002 */  ori        $t0, $t0, 0x2
/* 1E59C 8001D99C ACA80118 */  sw         $t0, 0x118($a1)
/* 1E5A0 8001D9A0 FCB00098 */  sd         $s0, 0x98($a1)
/* 1E5A4 8001D9A4 FCB100A0 */  sd         $s1, 0xA0($a1)
/* 1E5A8 8001D9A8 FCB200A8 */  sd         $s2, 0xA8($a1)
/* 1E5AC 8001D9AC FCB300B0 */  sd         $s3, 0xB0($a1)
/* 1E5B0 8001D9B0 FCB400B8 */  sd         $s4, 0xB8($a1)
/* 1E5B4 8001D9B4 FCB500C0 */  sd         $s5, 0xC0($a1)
/* 1E5B8 8001D9B8 FCB600C8 */  sd         $s6, 0xC8($a1)
/* 1E5BC 8001D9BC FCB700D0 */  sd         $s7, 0xD0($a1)
/* 1E5C0 8001D9C0 FCBC00E8 */  sd         $gp, 0xE8($a1)
/* 1E5C4 8001D9C4 FCBD00F0 */  sd         $sp, 0xF0($a1)
/* 1E5C8 8001D9C8 FCBE00F8 */  sd         $fp, 0xF8($a1)
/* 1E5CC 8001D9CC FCBF0100 */  sd         $ra, 0x100($a1)
/* 1E5D0 8001D9D0 ACBF011C */  sw         $ra, 0x11C($a1)
/* 1E5D4 8001D9D4 8CBB0018 */  lw         $k1, 0x18($a1)
/* 1E5D8 8001D9D8 1360000A */  beqz       $k1, .L8001DA04
/* 1E5DC 8001D9DC 00000000 */   nop
/* 1E5E0 8001D9E0 445BF800 */  cfc1       $k1, $31
/* 1E5E4 8001D9E4 00000000 */  nop
/* 1E5E8 8001D9E8 ACBB012C */  sw         $k1, 0x12C($a1)
/* 1E5EC 8001D9EC F4B40180 */  sdc1       $f20, 0x180($a1)
/* 1E5F0 8001D9F0 F4B60188 */  sdc1       $f22, 0x188($a1)
/* 1E5F4 8001D9F4 F4B80190 */  sdc1       $f24, 0x190($a1)
/* 1E5F8 8001D9F8 F4BA0198 */  sdc1       $f26, 0x198($a1)
/* 1E5FC 8001D9FC F4BC01A0 */  sdc1       $f28, 0x1A0($a1)
/* 1E600 8001DA00 F4BE01A8 */  sdc1       $f30, 0x1A8($a1)
.L8001DA04:
/* 1E604 8001DA04 8CBB0118 */  lw         $k1, 0x118($a1)
/* 1E608 8001DA08 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 1E60C 8001DA0C 1120000D */  beqz       $t1, .L8001DA44
/* 1E610 8001DA10 00000000 */   nop
/* 1E614 8001DA14 3C088003 */  lui        $t0, %hi(D_80032400)
/* 1E618 8001DA18 25082400 */  addiu      $t0, $t0, %lo(D_80032400)
/* 1E61C 8001DA1C 8D080000 */  lw         $t0, 0x0($t0)
/* 1E620 8001DA20 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E624 8001DA24 01014026 */  xor        $t0, $t0, $at
/* 1E628 8001DA28 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 1E62C 8001DA2C 01284825 */  or         $t1, $t1, $t0
/* 1E630 8001DA30 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 1E634 8001DA34 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 1E638 8001DA38 0361D824 */  and        $k1, $k1, $at
/* 1E63C 8001DA3C 0369D825 */  or         $k1, $k1, $t1
/* 1E640 8001DA40 ACBB0118 */  sw         $k1, 0x118($a1)
.L8001DA44:
/* 1E644 8001DA44 3C1BA430 */  lui        $k1, %hi(D_A430000C)
/* 1E648 8001DA48 8F7B000C */  lw         $k1, %lo(D_A430000C)($k1)
/* 1E64C 8001DA4C 1360000B */  beqz       $k1, .L8001DA7C
/* 1E650 8001DA50 00000000 */   nop
/* 1E654 8001DA54 3C1A8003 */  lui        $k0, %hi(D_80032400)
/* 1E658 8001DA58 275A2400 */  addiu      $k0, $k0, %lo(D_80032400)
/* 1E65C 8001DA5C 8F5A0000 */  lw         $k0, 0x0($k0)
/* 1E660 8001DA60 001AD402 */  srl        $k0, $k0, 16
/* 1E664 8001DA64 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E668 8001DA68 0341D026 */  xor        $k0, $k0, $at
/* 1E66C 8001DA6C 335A003F */  andi       $k0, $k0, 0x3F
/* 1E670 8001DA70 8CA80128 */  lw         $t0, 0x128($a1)
/* 1E674 8001DA74 0348D024 */  and        $k0, $k0, $t0
/* 1E678 8001DA78 037AD825 */  or         $k1, $k1, $k0
.L8001DA7C:
/* 1E67C 8001DA7C 10800003 */  beqz       $a0, .L8001DA8C
/* 1E680 8001DA80 ACBB0128 */   sw        $k1, 0x128($a1)
/* 1E684 8001DA84 0C0076A5 */  jal        func_8001DA94
/* 1E688 8001DA88 00000000 */   nop
.L8001DA8C:
/* 1E68C 8001DA8C 080076BB */  j          .L8001DAEC
/* 1E690 8001DA90 00000000 */   nop

glabel func_8001DA94
/* 1E694 8001DA94 0080C821 */  addu       $t9, $a0, $zero
/* 1E698 8001DA98 8C980000 */  lw         $t8, 0x0($a0)
/* 1E69C 8001DA9C 8CAF0004 */  lw         $t7, 0x4($a1)
/* 1E6A0 8001DAA0 8F0E0004 */  lw         $t6, 0x4($t8)
/* 1E6A4 8001DAA4 01CF082A */  slt        $at, $t6, $t7
/* 1E6A8 8001DAA8 14200007 */  bnez       $at, .L8001DAC8
/* 1E6AC 8001DAAC 00000000 */   nop
.L8001DAB0:
/* 1E6B0 8001DAB0 0300C821 */  addu       $t9, $t8, $zero
/* 1E6B4 8001DAB4 8F180000 */  lw         $t8, 0x0($t8)
/* 1E6B8 8001DAB8 8F0E0004 */  lw         $t6, 0x4($t8)
/* 1E6BC 8001DABC 01CF082A */  slt        $at, $t6, $t7
/* 1E6C0 8001DAC0 1020FFFB */  beqz       $at, .L8001DAB0
/* 1E6C4 8001DAC4 00000000 */   nop
.L8001DAC8:
/* 1E6C8 8001DAC8 8F380000 */  lw         $t8, 0x0($t9)
/* 1E6CC 8001DACC ACB80000 */  sw         $t8, 0x0($a1)
/* 1E6D0 8001DAD0 AF250000 */  sw         $a1, 0x0($t9)
/* 1E6D4 8001DAD4 03E00008 */  jr         $ra
/* 1E6D8 8001DAD8 ACA40008 */   sw        $a0, 0x8($a1)

# Handwritten function
glabel func_8001DADC
/* 1E6DC 8001DADC 8C820000 */  lw         $v0, 0x0($a0)
/* 1E6E0 8001DAE0 8C590000 */  lw         $t9, 0x0($v0)
/* 1E6E4 8001DAE4 03E00008 */  jr         $ra
/* 1E6E8 8001DAE8 AC990000 */   sw        $t9, 0x0($a0)
glabel .L8001DAEC
/* 1E6EC 8001DAEC 3C048003 */  lui        $a0, %hi(D_800310A8)
/* 1E6F0 8001DAF0 0C0076B7 */  jal        func_8001DADC
/* 1E6F4 8001DAF4 248410A8 */   addiu     $a0, $a0, %lo(D_800310A8)
/* 1E6F8 8001DAF8 3C018003 */  lui        $at, %hi(D_800310B0)
/* 1E6FC 8001DAFC AC2210B0 */  sw         $v0, %lo(D_800310B0)($at)
/* 1E700 8001DB00 24080004 */  addiu      $t0, $zero, 0x4
/* 1E704 8001DB04 A4480010 */  sh         $t0, 0x10($v0)
/* 1E708 8001DB08 0040D021 */  addu       $k0, $v0, $zero
/* 1E70C 8001DB0C 8F5B0118 */  lw         $k1, 0x118($k0)
/* 1E710 8001DB10 3C088003 */  lui        $t0, %hi(D_80032400)
/* 1E714 8001DB14 25082400 */  addiu      $t0, $t0, %lo(D_80032400)
/* 1E718 8001DB18 8D080000 */  lw         $t0, 0x0($t0)
/* 1E71C 8001DB1C 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 1E720 8001DB20 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 1E724 8001DB24 01284824 */  and        $t1, $t1, $t0
/* 1E728 8001DB28 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 1E72C 8001DB2C 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 1E730 8001DB30 0361D824 */  and        $k1, $k1, $at
/* 1E734 8001DB34 0369D825 */  or         $k1, $k1, $t1
/* 1E738 8001DB38 409B6000 */  mtc0       $k1, $12
/* 1E73C 8001DB3C DF410020 */  ld         $at, 0x20($k0)
/* 1E740 8001DB40 DF420028 */  ld         $v0, 0x28($k0)
/* 1E744 8001DB44 DF430030 */  ld         $v1, 0x30($k0)
/* 1E748 8001DB48 DF440038 */  ld         $a0, 0x38($k0)
/* 1E74C 8001DB4C DF450040 */  ld         $a1, 0x40($k0)
/* 1E750 8001DB50 DF460048 */  ld         $a2, 0x48($k0)
/* 1E754 8001DB54 DF470050 */  ld         $a3, 0x50($k0)
/* 1E758 8001DB58 DF480058 */  ld         $t0, 0x58($k0)
/* 1E75C 8001DB5C DF490060 */  ld         $t1, 0x60($k0)
/* 1E760 8001DB60 DF4A0068 */  ld         $t2, 0x68($k0)
/* 1E764 8001DB64 DF4B0070 */  ld         $t3, 0x70($k0)
/* 1E768 8001DB68 DF4C0078 */  ld         $t4, 0x78($k0)
/* 1E76C 8001DB6C DF4D0080 */  ld         $t5, 0x80($k0)
/* 1E770 8001DB70 DF4E0088 */  ld         $t6, 0x88($k0)
/* 1E774 8001DB74 DF4F0090 */  ld         $t7, 0x90($k0)
/* 1E778 8001DB78 DF500098 */  ld         $s0, 0x98($k0)
/* 1E77C 8001DB7C DF5100A0 */  ld         $s1, 0xA0($k0)
/* 1E780 8001DB80 DF5200A8 */  ld         $s2, 0xA8($k0)
/* 1E784 8001DB84 DF5300B0 */  ld         $s3, 0xB0($k0)
/* 1E788 8001DB88 DF5400B8 */  ld         $s4, 0xB8($k0)
/* 1E78C 8001DB8C DF5500C0 */  ld         $s5, 0xC0($k0)
/* 1E790 8001DB90 DF5600C8 */  ld         $s6, 0xC8($k0)
/* 1E794 8001DB94 DF5700D0 */  ld         $s7, 0xD0($k0)
/* 1E798 8001DB98 DF5800D8 */  ld         $t8, 0xD8($k0)
/* 1E79C 8001DB9C DF5900E0 */  ld         $t9, 0xE0($k0)
/* 1E7A0 8001DBA0 DF5C00E8 */  ld         $gp, 0xE8($k0)
/* 1E7A4 8001DBA4 DF5D00F0 */  ld         $sp, 0xF0($k0)
/* 1E7A8 8001DBA8 DF5E00F8 */  ld         $fp, 0xF8($k0)
/* 1E7AC 8001DBAC DF5F0100 */  ld         $ra, 0x100($k0)
/* 1E7B0 8001DBB0 DF5B0108 */  ld         $k1, 0x108($k0)
/* 1E7B4 8001DBB4 03600013 */  mtlo       $k1
/* 1E7B8 8001DBB8 DF5B0110 */  ld         $k1, 0x110($k0)
/* 1E7BC 8001DBBC 03600011 */  mthi       $k1
/* 1E7C0 8001DBC0 8F5B011C */  lw         $k1, 0x11C($k0)
/* 1E7C4 8001DBC4 409B7000 */  mtc0       $k1, $14
/* 1E7C8 8001DBC8 8F5B0018 */  lw         $k1, 0x18($k0)
/* 1E7CC 8001DBCC 13600013 */  beqz       $k1, .L8001DC1C
/* 1E7D0 8001DBD0 00000000 */   nop
/* 1E7D4 8001DBD4 8F5B012C */  lw         $k1, 0x12C($k0)
/* 1E7D8 8001DBD8 44DBF800 */  ctc1       $k1, $31
/* 1E7DC 8001DBDC D7400130 */  ldc1       $f0, 0x130($k0)
/* 1E7E0 8001DBE0 D7420138 */  ldc1       $f2, 0x138($k0)
/* 1E7E4 8001DBE4 D7440140 */  ldc1       $f4, 0x140($k0)
/* 1E7E8 8001DBE8 D7460148 */  ldc1       $f6, 0x148($k0)
/* 1E7EC 8001DBEC D7480150 */  ldc1       $f8, 0x150($k0)
/* 1E7F0 8001DBF0 D74A0158 */  ldc1       $f10, 0x158($k0)
/* 1E7F4 8001DBF4 D74C0160 */  ldc1       $f12, 0x160($k0)
/* 1E7F8 8001DBF8 D74E0168 */  ldc1       $f14, 0x168($k0)
/* 1E7FC 8001DBFC D7500170 */  ldc1       $f16, 0x170($k0)
/* 1E800 8001DC00 D7520178 */  ldc1       $f18, 0x178($k0)
/* 1E804 8001DC04 D7540180 */  ldc1       $f20, 0x180($k0)
/* 1E808 8001DC08 D7560188 */  ldc1       $f22, 0x188($k0)
/* 1E80C 8001DC0C D7580190 */  ldc1       $f24, 0x190($k0)
/* 1E810 8001DC10 D75A0198 */  ldc1       $f26, 0x198($k0)
/* 1E814 8001DC14 D75C01A0 */  ldc1       $f28, 0x1A0($k0)
/* 1E818 8001DC18 D75E01A8 */  ldc1       $f30, 0x1A8($k0)
.L8001DC1C:
/* 1E81C 8001DC1C 8F5B0128 */  lw         $k1, 0x128($k0)
/* 1E820 8001DC20 3C1A8003 */  lui        $k0, %hi(D_80032400)
/* 1E824 8001DC24 275A2400 */  addiu      $k0, $k0, %lo(D_80032400)
/* 1E828 8001DC28 8F5A0000 */  lw         $k0, 0x0($k0)
/* 1E82C 8001DC2C 001AD402 */  srl        $k0, $k0, 16
/* 1E830 8001DC30 037AD824 */  and        $k1, $k1, $k0
/* 1E834 8001DC34 001BD840 */  sll        $k1, $k1, 1
/* 1E838 8001DC38 3C1A8000 */  lui        $k0, %hi(__osRcpImTable)
/* 1E83C 8001DC3C 275A1450 */  addiu      $k0, $k0, %lo(__osRcpImTable)
/* 1E840 8001DC40 037AD821 */  addu       $k1, $k1, $k0
/* 1E844 8001DC44 977B0000 */  lhu        $k1, 0x0($k1)
/* 1E848 8001DC48 3C1AA430 */  lui        $k0, (0xA430000C >> 16)
/* 1E84C 8001DC4C 375A000C */  ori        $k0, $k0, (0xA430000C & 0xFFFF)
/* 1E850 8001DC50 AF5B0000 */  sw         $k1, 0x0($k0)
/* 1E854 8001DC54 00000000 */  nop
/* 1E858 8001DC58 00000000 */  nop
/* 1E85C 8001DC5C 00000000 */  nop
/* 1E860 8001DC60 00000000 */  nop
/* 1E864 8001DC64 42000018 */  eret
D_8001DC68:
/* 1E868 8001DC68 00002021 */  addu       $a0, $zero, $zero
/* 1E86C 8001DC6C 0C007CE8 */  jal        func_8001F3A0
/* 1E870 8001DC70 00000000 */   nop
/* 1E874 8001DC74 00000000 */  nop
/* 1E878 8001DC78 00000000 */  nop
/* 1E87C 8001DC7C 00000000 */  nop
