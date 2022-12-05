.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000B0F0
/* BCF0 8000B0F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BCF4 8000B0F4 AFB00010 */  sw         $s0, 0x10($sp)
/* BCF8 8000B0F8 00808021 */  addu       $s0, $a0, $zero
/* BCFC 8000B0FC 3C028000 */  lui        $v0, %hi(D_80000CA8)
/* BD00 8000B100 24420CA8 */  addiu      $v0, $v0, %lo(D_80000CA8)
/* BD04 8000B104 00001821 */  addu       $v1, $zero, $zero
/* BD08 8000B108 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD0C 8000B10C AE020098 */  sw         $v0, 0x98($s0)
/* BD10 8000B110 3C028003 */  lui        $v0, %hi(D_8002FDF0)
/* BD14 8000B114 2444FDF0 */  addiu      $a0, $v0, %lo(D_8002FDF0)
/* BD18 8000B118 3062FFFF */  andi       $v0, $v1, 0xFFFF
.L8000B11C:
/* BD1C 8000B11C 00021040 */  sll        $v0, $v0, 1
/* BD20 8000B120 00441021 */  addu       $v0, $v0, $a0
/* BD24 8000B124 A4430000 */  sh         $v1, 0x0($v0)
/* BD28 8000B128 24630001 */  addiu      $v1, $v1, 0x1
/* BD2C 8000B12C 3062FFFF */  andi       $v0, $v1, 0xFFFF
/* BD30 8000B130 2C420100 */  sltiu      $v0, $v0, 0x100
/* BD34 8000B134 1440FFF9 */  bnez       $v0, .L8000B11C
/* BD38 8000B138 3062FFFF */   andi      $v0, $v1, 0xFFFF
/* BD3C 8000B13C 0C002C6A */  jal        func_8000B1A8
/* BD40 8000B140 02002021 */   addu      $a0, $s0, $zero
/* BD44 8000B144 02001021 */  addu       $v0, $s0, $zero
/* BD48 8000B148 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD4C 8000B14C 8FB00010 */  lw         $s0, 0x10($sp)
/* BD50 8000B150 03E00008 */  jr         $ra
/* BD54 8000B154 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000B158
/* BD58 8000B158 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BD5C 8000B15C AFB10014 */  sw         $s1, 0x14($sp)
/* BD60 8000B160 00808821 */  addu       $s1, $a0, $zero
/* BD64 8000B164 AFB00010 */  sw         $s0, 0x10($sp)
/* BD68 8000B168 00A08021 */  addu       $s0, $a1, $zero
/* BD6C 8000B16C 3C028000 */  lui        $v0, %hi(D_80000CA8)
/* BD70 8000B170 24420CA8 */  addiu      $v0, $v0, %lo(D_80000CA8)
/* BD74 8000B174 AFBF0018 */  sw         $ra, 0x18($sp)
/* BD78 8000B178 0C002C8D */  jal        func_8000B234
/* BD7C 8000B17C AE220098 */   sw        $v0, 0x98($s1)
/* BD80 8000B180 32100001 */  andi       $s0, $s0, 0x1
/* BD84 8000B184 12000003 */  beqz       $s0, .L8000B194
/* BD88 8000B188 00000000 */   nop
/* BD8C 8000B18C 0C01FB5C */  jal        func_8007ED70
/* BD90 8000B190 02202021 */   addu      $a0, $s1, $zero
.L8000B194:
/* BD94 8000B194 8FBF0018 */  lw         $ra, 0x18($sp)
/* BD98 8000B198 8FB10014 */  lw         $s1, 0x14($sp)
/* BD9C 8000B19C 8FB00010 */  lw         $s0, 0x10($sp)
/* BDA0 8000B1A0 03E00008 */  jr         $ra
/* BDA4 8000B1A4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000B1A8
/* BDA8 8000B1A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDAC 8000B1AC AFB00010 */  sw         $s0, 0x10($sp)
/* BDB0 8000B1B0 00808021 */  addu       $s0, $a0, $zero
/* BDB4 8000B1B4 3C028003 */  lui        $v0, %hi(D_8002FDF0)
/* BDB8 8000B1B8 2442FDF0 */  addiu      $v0, $v0, %lo(D_8002FDF0)
/* BDBC 8000B1BC 00002821 */  addu       $a1, $zero, $zero
/* BDC0 8000B1C0 24060010 */  addiu      $a2, $zero, 0x10
/* BDC4 8000B1C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BDC8 8000B1C8 AE000024 */  sw         $zero, 0x24($s0)
/* BDCC 8000B1CC AE000020 */  sw         $zero, 0x20($s0)
/* BDD0 8000B1D0 AE00001C */  sw         $zero, 0x1C($s0)
/* BDD4 8000B1D4 AE000018 */  sw         $zero, 0x18($s0)
/* BDD8 8000B1D8 AE000014 */  sw         $zero, 0x14($s0)
/* BDDC 8000B1DC AE02002C */  sw         $v0, 0x2C($s0)
/* BDE0 8000B1E0 0C000697 */  jal        func_80001A5C
/* BDE4 8000B1E4 AE020028 */   sw        $v0, 0x28($s0)
/* BDE8 8000B1E8 AE000010 */  sw         $zero, 0x10($s0)
/* BDEC 8000B1EC AE000090 */  sw         $zero, 0x90($s0)
/* BDF0 8000B1F0 AE000094 */  sw         $zero, 0x94($s0)
/* BDF4 8000B1F4 AE000044 */  sw         $zero, 0x44($s0)
/* BDF8 8000B1F8 AE000048 */  sw         $zero, 0x48($s0)
/* BDFC 8000B1FC AE00004C */  sw         $zero, 0x4C($s0)
/* BE00 8000B200 AE000054 */  sw         $zero, 0x54($s0)
/* BE04 8000B204 AE000050 */  sw         $zero, 0x50($s0)
/* BE08 8000B208 AE000034 */  sw         $zero, 0x34($s0)
/* BE0C 8000B20C AE000088 */  sw         $zero, 0x88($s0)
/* BE10 8000B210 AE000030 */  sw         $zero, 0x30($s0)
/* BE14 8000B214 AE00003C */  sw         $zero, 0x3C($s0)
/* BE18 8000B218 AE000040 */  sw         $zero, 0x40($s0)
/* BE1C 8000B21C A2000058 */  sb         $zero, 0x58($s0)
/* BE20 8000B220 AE00008C */  sw         $zero, 0x8C($s0)
/* BE24 8000B224 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE28 8000B228 8FB00010 */  lw         $s0, 0x10($sp)
/* BE2C 8000B22C 03E00008 */  jr         $ra
/* BE30 8000B230 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000B234
/* BE34 8000B234 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BE38 8000B238 AFB00010 */  sw         $s0, 0x10($sp)
/* BE3C 8000B23C 00808021 */  addu       $s0, $a0, $zero
/* BE40 8000B240 AFBF0014 */  sw         $ra, 0x14($sp)
/* BE44 8000B244 8E020014 */  lw         $v0, 0x14($s0)
/* BE48 8000B248 50400008 */  beql       $v0, $zero, .L8000B26C
/* BE4C 8000B24C 24020001 */   addiu     $v0, $zero, 0x1
/* BE50 8000B250 8E020098 */  lw         $v0, 0x98($s0)
/* BE54 8000B254 84440008 */  lh         $a0, 0x8($v0)
/* BE58 8000B258 8C42000C */  lw         $v0, 0xC($v0)
/* BE5C 8000B25C 0040F809 */  jalr       $v0
/* BE60 8000B260 02042021 */   addu      $a0, $s0, $a0
/* BE64 8000B264 8E020014 */  lw         $v0, 0x14($s0)
/* BE68 8000B268 2C420001 */  sltiu      $v0, $v0, 0x1
.L8000B26C:
/* BE6C 8000B26C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE70 8000B270 8FB00010 */  lw         $s0, 0x10($sp)
/* BE74 8000B274 03E00008 */  jr         $ra
/* BE78 8000B278 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000B27C
/* BE7C 8000B27C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BE80 8000B280 AFB20018 */  sw         $s2, 0x18($sp)
/* BE84 8000B284 00809021 */  addu       $s2, $a0, $zero
/* BE88 8000B288 AFB3001C */  sw         $s3, 0x1C($sp)
/* BE8C 8000B28C AFBF0020 */  sw         $ra, 0x20($sp)
/* BE90 8000B290 AFB10014 */  sw         $s1, 0x14($sp)
/* BE94 8000B294 AFB00010 */  sw         $s0, 0x10($sp)
/* BE98 8000B298 8E430054 */  lw         $v1, 0x54($s2)
/* BE9C 8000B29C 24020003 */  addiu      $v0, $zero, 0x3
/* BEA0 8000B2A0 1062000D */  beq        $v1, $v0, .L8000B2D8
/* BEA4 8000B2A4 00009821 */   addu      $s3, $zero, $zero
/* BEA8 8000B2A8 28620004 */  slti       $v0, $v1, 0x4
/* BEAC 8000B2AC 10400005 */  beqz       $v0, .L8000B2C4
/* BEB0 8000B2B0 24020002 */   addiu     $v0, $zero, 0x2
/* BEB4 8000B2B4 1062000A */  beq        $v1, $v0, .L8000B2E0
/* BEB8 8000B2B8 00008821 */   addu      $s1, $zero, $zero
/* BEBC 8000B2BC 08002CBA */  j          .L8000B2E8
/* BEC0 8000B2C0 00000000 */   nop
.L8000B2C4:
/* BEC4 8000B2C4 24020004 */  addiu      $v0, $zero, 0x4
/* BEC8 8000B2C8 50620006 */  beql       $v1, $v0, .L8000B2E4
/* BECC 8000B2CC 3C133000 */   lui       $s3, (0x30000000 >> 16)
/* BED0 8000B2D0 08002CBA */  j          .L8000B2E8
/* BED4 8000B2D4 00008821 */   addu      $s1, $zero, $zero
.L8000B2D8:
/* BED8 8000B2D8 08002CB9 */  j          .L8000B2E4
/* BEDC 8000B2DC 3C131000 */   lui       $s3, (0x10000000 >> 16)
.L8000B2E0:
/* BEE0 8000B2E0 3C132000 */  lui        $s3, (0x20000000 >> 16)
.L8000B2E4:
/* BEE4 8000B2E4 00008821 */  addu       $s1, $zero, $zero
.L8000B2E8:
/* BEE8 8000B2E8 8E420098 */  lw         $v0, 0x98($s2)
/* BEEC 8000B2EC 84440040 */  lh         $a0, 0x40($v0)
/* BEF0 8000B2F0 8C420044 */  lw         $v0, 0x44($v0)
/* BEF4 8000B2F4 0040F809 */  jalr       $v0
/* BEF8 8000B2F8 02442021 */   addu      $a0, $s2, $a0
/* BEFC 8000B2FC 0222102A */  slt        $v0, $s1, $v0
/* BF00 8000B300 10400012 */  beqz       $v0, .L8000B34C
/* BF04 8000B304 02718025 */   or        $s0, $s3, $s1
/* BF08 8000B308 8E420098 */  lw         $v0, 0x98($s2)
/* BF0C 8000B30C 02002821 */  addu       $a1, $s0, $zero
/* BF10 8000B310 84440070 */  lh         $a0, 0x70($v0)
/* BF14 8000B314 8C420074 */  lw         $v0, 0x74($v0)
/* BF18 8000B318 0040F809 */  jalr       $v0
/* BF1C 8000B31C 02442021 */   addu      $a0, $s2, $a0
/* BF20 8000B320 10400008 */  beqz       $v0, .L8000B344
/* BF24 8000B324 02002821 */   addu      $a1, $s0, $zero
/* BF28 8000B328 00003021 */  addu       $a2, $zero, $zero
/* BF2C 8000B32C 8E420098 */  lw         $v0, 0x98($s2)
/* BF30 8000B330 24070001 */  addiu      $a3, $zero, 0x1
/* BF34 8000B334 84440010 */  lh         $a0, 0x10($v0)
/* BF38 8000B338 8C420014 */  lw         $v0, 0x14($v0)
/* BF3C 8000B33C 0040F809 */  jalr       $v0
/* BF40 8000B340 02442021 */   addu      $a0, $s2, $a0
.L8000B344:
/* BF44 8000B344 08002CBA */  j          .L8000B2E8
/* BF48 8000B348 26310001 */   addiu     $s1, $s1, 0x1
.L8000B34C:
/* BF4C 8000B34C 8FBF0020 */  lw         $ra, 0x20($sp)
/* BF50 8000B350 8FB3001C */  lw         $s3, 0x1C($sp)
/* BF54 8000B354 8FB20018 */  lw         $s2, 0x18($sp)
/* BF58 8000B358 8FB10014 */  lw         $s1, 0x14($sp)
/* BF5C 8000B35C 8FB00010 */  lw         $s0, 0x10($sp)
/* BF60 8000B360 03E00008 */  jr         $ra
/* BF64 8000B364 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000B368
/* BF68 8000B368 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BF6C 8000B36C AFB20018 */  sw         $s2, 0x18($sp)
/* BF70 8000B370 00809021 */  addu       $s2, $a0, $zero
/* BF74 8000B374 AFB3001C */  sw         $s3, 0x1C($sp)
/* BF78 8000B378 00A09821 */  addu       $s3, $a1, $zero
/* BF7C 8000B37C AFB00010 */  sw         $s0, 0x10($sp)
/* BF80 8000B380 00008021 */  addu       $s0, $zero, $zero
/* BF84 8000B384 AFBF0020 */  sw         $ra, 0x20($sp)
/* BF88 8000B388 AFB10014 */  sw         $s1, 0x14($sp)
/* BF8C 8000B38C 8E420030 */  lw         $v0, 0x30($s2)
/* BF90 8000B390 8E43004C */  lw         $v1, 0x4C($s2)
/* BF94 8000B394 00531021 */  addu       $v0, $v0, $s3
/* BF98 8000B398 1860000C */  blez       $v1, .L8000B3CC
/* BF9C 8000B39C AE420030 */   sw        $v0, 0x30($s2)
/* BFA0 8000B3A0 02408821 */  addu       $s1, $s2, $zero
.L8000B3A4:
/* BFA4 8000B3A4 8E240000 */  lw         $a0, 0x0($s1)
/* BFA8 8000B3A8 26310004 */  addiu      $s1, $s1, 0x4
/* BFAC 8000B3AC 8E450030 */  lw         $a1, 0x30($s2)
/* BFB0 8000B3B0 0C001ED2 */  jal        func_80007B48
/* BFB4 8000B3B4 02403021 */   addu      $a2, $s2, $zero
/* BFB8 8000B3B8 8E42004C */  lw         $v0, 0x4C($s2)
/* BFBC 8000B3BC 26100001 */  addiu      $s0, $s0, 0x1
/* BFC0 8000B3C0 0202102A */  slt        $v0, $s0, $v0
/* BFC4 8000B3C4 1440FFF7 */  bnez       $v0, .L8000B3A4
/* BFC8 8000B3C8 00000000 */   nop
.L8000B3CC:
/* BFCC 8000B3CC 02402021 */  addu       $a0, $s2, $zero
/* BFD0 8000B3D0 0C002DC6 */  jal        func_8000B718
/* BFD4 8000B3D4 02602821 */   addu      $a1, $s3, $zero
/* BFD8 8000B3D8 8FBF0020 */  lw         $ra, 0x20($sp)
/* BFDC 8000B3DC 8FB3001C */  lw         $s3, 0x1C($sp)
/* BFE0 8000B3E0 8FB20018 */  lw         $s2, 0x18($sp)
/* BFE4 8000B3E4 8FB10014 */  lw         $s1, 0x14($sp)
/* BFE8 8000B3E8 8FB00010 */  lw         $s0, 0x10($sp)
/* BFEC 8000B3EC 00001021 */  addu       $v0, $zero, $zero
/* BFF0 8000B3F0 03E00008 */  jr         $ra
/* BFF4 8000B3F4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000B3F8
/* BFF8 8000B3F8 AC860038 */  sw         $a2, 0x38($a0)
/* BFFC 8000B3FC 00C01821 */  addu       $v1, $a2, $zero
/* C000 8000B400 24020001 */  addiu      $v0, $zero, 0x1
/* C004 8000B404 AC85003C */  sw         $a1, 0x3C($a0)
/* C008 8000B408 AC82001C */  sw         $v0, 0x1C($a0)
/* C00C 8000B40C 03E00008 */  jr         $ra
/* C010 8000B410 AC830040 */   sw        $v1, 0x40($a0)

glabel func_8000B414
/* C014 8000B414 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C018 8000B418 10A00005 */  beqz       $a1, .L8000B430
/* C01C 8000B41C AFBF0010 */   sw        $ra, 0x10($sp)
/* C020 8000B420 0C002CFE */  jal        func_8000B3F8
/* C024 8000B424 00000000 */   nop
/* C028 8000B428 08002D0D */  j          .L8000B434
/* C02C 8000B42C 00000000 */   nop
.L8000B430:
/* C030 8000B430 AC80001C */  sw         $zero, 0x1C($a0)
.L8000B434:
/* C034 8000B434 8FBF0010 */  lw         $ra, 0x10($sp)
/* C038 8000B438 03E00008 */  jr         $ra
/* C03C 8000B43C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000B440
/* C040 8000B440 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C044 8000B444 AFB00010 */  sw         $s0, 0x10($sp)
/* C048 8000B448 00808021 */  addu       $s0, $a0, $zero
/* C04C 8000B44C 26040058 */  addiu      $a0, $s0, 0x58
/* C050 8000B450 AFBF0014 */  sw         $ra, 0x14($sp)
/* C054 8000B454 0C000708 */  jal        func_80001C20
/* C058 8000B458 2406001F */   addiu     $a2, $zero, 0x1F
/* C05C 8000B45C A2000077 */  sb         $zero, 0x77($s0)
/* C060 8000B460 8FBF0014 */  lw         $ra, 0x14($sp)
/* C064 8000B464 8FB00010 */  lw         $s0, 0x10($sp)
/* C068 8000B468 03E00008 */  jr         $ra
/* C06C 8000B46C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000B470
/* C070 8000B470 14A00004 */  bnez       $a1, .L8000B484
/* C074 8000B474 AC850028 */   sw        $a1, 0x28($a0)
/* C078 8000B478 3C028003 */  lui        $v0, %hi(D_8002FDF0)
/* C07C 8000B47C 2442FDF0 */  addiu      $v0, $v0, %lo(D_8002FDF0)
/* C080 8000B480 AC820028 */  sw         $v0, 0x28($a0)
.L8000B484:
/* C084 8000B484 14C00004 */  bnez       $a2, .L8000B498
/* C088 8000B488 AC86002C */   sw        $a2, 0x2C($a0)
/* C08C 8000B48C 3C028003 */  lui        $v0, %hi(D_8002FDF0)
/* C090 8000B490 2442FDF0 */  addiu      $v0, $v0, %lo(D_8002FDF0)
/* C094 8000B494 AC82002C */  sw         $v0, 0x2C($a0)
.L8000B498:
/* C098 8000B498 03E00008 */  jr         $ra
/* C09C 8000B49C 00000000 */   nop

glabel func_8000B4A0
/* C0A0 8000B4A0 8C840028 */  lw         $a0, 0x28($a0)
/* C0A4 8000B4A4 3C038003 */  lui        $v1, %hi(D_8002FDF0)
/* C0A8 8000B4A8 2463FDF0 */  addiu      $v1, $v1, %lo(D_8002FDF0)
/* C0AC 8000B4AC 10830002 */  beq        $a0, $v1, .L8000B4B8
/* C0B0 8000B4B0 00001021 */   addu      $v0, $zero, $zero
/* C0B4 8000B4B4 00801021 */  addu       $v0, $a0, $zero
.L8000B4B8:
/* C0B8 8000B4B8 03E00008 */  jr         $ra
/* C0BC 8000B4BC 00000000 */   nop

glabel func_8000B4C0
/* C0C0 8000B4C0 8C84002C */  lw         $a0, 0x2C($a0)
/* C0C4 8000B4C4 3C038003 */  lui        $v1, %hi(D_8002FDF0)
/* C0C8 8000B4C8 2463FDF0 */  addiu      $v1, $v1, %lo(D_8002FDF0)
/* C0CC 8000B4CC 10830002 */  beq        $a0, $v1, .L8000B4D8
/* C0D0 8000B4D0 00001021 */   addu      $v0, $zero, $zero
/* C0D4 8000B4D4 00801021 */  addu       $v0, $a0, $zero
.L8000B4D8:
/* C0D8 8000B4D8 03E00008 */  jr         $ra
/* C0DC 8000B4DC 00000000 */   nop

glabel func_8000B4E0
/* C0E0 8000B4E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C0E4 8000B4E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* C0E8 8000B4E8 00A03021 */  addu       $a2, $a1, $zero
/* C0EC 8000B4EC 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* C0F0 8000B4F0 00A22824 */  and        $a1, $a1, $v0
/* C0F4 8000B4F4 3C022000 */  lui        $v0, (0x20000000 >> 16)
/* C0F8 8000B4F8 10A2000F */  beq        $a1, $v0, .L8000B538
/* C0FC 8000B4FC 00A01821 */   addu      $v1, $a1, $zero
/* C100 8000B500 0045102B */  sltu       $v0, $v0, $a1
/* C104 8000B504 14400006 */  bnez       $v0, .L8000B520
/* C108 8000B508 3C023000 */   lui       $v0, (0x30000000 >> 16)
/* C10C 8000B50C 3C021000 */  lui        $v0, (0x10000000 >> 16)
/* C110 8000B510 10A20009 */  beq        $a1, $v0, .L8000B538
/* C114 8000B514 3C028000 */   lui       $v0, %hi(D_80000C90)
/* C118 8000B518 08002D5E */  j          .L8000B578
/* C11C 8000B51C 24420C90 */   addiu     $v0, $v0, %lo(D_80000C90)
.L8000B520:
/* C120 8000B520 10620005 */  beq        $v1, $v0, .L8000B538
/* C124 8000B524 3C024000 */   lui       $v0, (0x40000000 >> 16)
/* C128 8000B528 10620006 */  beq        $v1, $v0, .L8000B544
/* C12C 8000B52C 3C028000 */   lui       $v0, %hi(D_80000C90)
/* C130 8000B530 08002D5E */  j          .L8000B578
/* C134 8000B534 24420C90 */   addiu     $v0, $v0, %lo(D_80000C90)
.L8000B538:
/* C138 8000B538 8C840090 */  lw         $a0, 0x90($a0)
/* C13C 8000B53C 08002D52 */  j          .L8000B548
/* C140 8000B540 00000000 */   nop
.L8000B544:
/* C144 8000B544 8C840094 */  lw         $a0, 0x94($a0)
.L8000B548:
/* C148 8000B548 10800009 */  beqz       $a0, .L8000B570
/* C14C 8000B54C 30C5FFFF */   andi      $a1, $a2, 0xFFFF
/* C150 8000B550 9482000C */  lhu        $v0, 0xC($a0)
/* C154 8000B554 00A2102B */  sltu       $v0, $a1, $v0
/* C158 8000B558 10400006 */  beqz       $v0, .L8000B574
/* C15C 8000B55C 3C028000 */   lui       $v0, %hi(D_80000C90)
/* C160 8000B560 0C00306A */  jal        func_8000C1A8
/* C164 8000B564 00000000 */   nop
/* C168 8000B568 08002D5E */  j          .L8000B578
/* C16C 8000B56C 00000000 */   nop
.L8000B570:
/* C170 8000B570 3C028000 */  lui        $v0, %hi(D_80000C90)
.L8000B574:
/* C174 8000B574 24420C90 */  addiu      $v0, $v0, %lo(D_80000C90)
.L8000B578:
/* C178 8000B578 8FBF0010 */  lw         $ra, 0x10($sp)
/* C17C 8000B57C 03E00008 */  jr         $ra
/* C180 8000B580 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000B584
/* C184 8000B584 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C188 8000B588 AFB20018 */  sw         $s2, 0x18($sp)
/* C18C 8000B58C 00809021 */  addu       $s2, $a0, $zero
/* C190 8000B590 AFB00010 */  sw         $s0, 0x10($sp)
/* C194 8000B594 00E08021 */  addu       $s0, $a3, $zero
/* C198 8000B598 AFB40020 */  sw         $s4, 0x20($sp)
/* C19C 8000B59C 2414FFFF */  addiu      $s4, $zero, -0x1
/* C1A0 8000B5A0 AFB3001C */  sw         $s3, 0x1C($sp)
/* C1A4 8000B5A4 02809821 */  addu       $s3, $s4, $zero
/* C1A8 8000B5A8 44850000 */  mtc1       $a1, $f0
/* C1AC 8000B5AC 44861000 */  mtc1       $a2, $f2
/* C1B0 8000B5B0 02002821 */  addu       $a1, $s0, $zero
/* C1B4 8000B5B4 F7B40028 */  sdc1       $f20, 0x28($sp)
/* C1B8 8000B5B8 4480A000 */  mtc1       $zero, $f20
/* C1BC 8000B5BC 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* C1C0 8000B5C0 AFBF0024 */  sw         $ra, 0x24($sp)
/* C1C4 8000B5C4 4600A03C */  c.lt.s     $f20, $f0
/* C1C8 8000B5C8 00000000 */  nop
/* C1CC 8000B5CC 4500000F */  bc1f       .L8000B60C
/* C1D0 8000B5D0 AFB10014 */   sw        $s1, 0x14($sp)
/* C1D4 8000B5D4 4614103E */  c.le.s     $f2, $f20
/* C1D8 8000B5D8 00000000 */  nop
/* C1DC 8000B5DC 45030001 */  bc1tl      .L8000B5E4
/* C1E0 8000B5E0 0200A021 */   addu      $s4, $s0, $zero
.L8000B5E4:
/* C1E4 8000B5E4 8E420098 */  lw         $v0, 0x98($s2)
/* C1E8 8000B5E8 24A50001 */  addiu      $a1, $a1, 0x1
/* C1EC 8000B5EC 84440070 */  lh         $a0, 0x70($v0)
/* C1F0 8000B5F0 8C420074 */  lw         $v0, 0x74($v0)
/* C1F4 8000B5F4 0040F809 */  jalr       $v0
/* C1F8 8000B5F8 02442021 */   addu      $a0, $s2, $a0
/* C1FC 8000B5FC 10400029 */  beqz       $v0, .L8000B6A4
/* C200 8000B600 00000000 */   nop
/* C204 8000B604 08002DA9 */  j          .L8000B6A4
/* C208 8000B608 26130001 */   addiu     $s3, $s0, 0x1
.L8000B60C:
/* C20C 8000B60C 4614003C */  c.lt.s     $f0, $f20
/* C210 8000B610 00000000 */  nop
/* C214 8000B614 4500000E */  bc1f       .L8000B650
/* C218 8000B618 00101042 */   srl       $v0, $s0, 1
/* C21C 8000B61C 4602A03E */  c.le.s     $f20, $f2
/* C220 8000B620 00000000 */  nop
/* C224 8000B624 45030001 */  bc1tl      .L8000B62C
/* C228 8000B628 26140001 */   addiu     $s4, $s0, 0x1
.L8000B62C:
/* C22C 8000B62C 8E420098 */  lw         $v0, 0x98($s2)
/* C230 8000B630 84440070 */  lh         $a0, 0x70($v0)
/* C234 8000B634 8C420074 */  lw         $v0, 0x74($v0)
/* C238 8000B638 0040F809 */  jalr       $v0
/* C23C 8000B63C 02442021 */   addu      $a0, $s2, $a0
/* C240 8000B640 10400018 */  beqz       $v0, .L8000B6A4
/* C244 8000B644 00000000 */   nop
/* C248 8000B648 08002DA9 */  j          .L8000B6A4
/* C24C 8000B64C 02009821 */   addu      $s3, $s0, $zero
.L8000B650:
/* C250 8000B650 24510001 */  addiu      $s1, $v0, 0x1
/* C254 8000B654 8E420098 */  lw         $v0, 0x98($s2)
/* C258 8000B658 02202821 */  addu       $a1, $s1, $zero
/* C25C 8000B65C 84440068 */  lh         $a0, 0x68($v0)
/* C260 8000B660 8C42006C */  lw         $v0, 0x6C($v0)
/* C264 8000B664 0040F809 */  jalr       $v0
/* C268 8000B668 02442021 */   addu      $a0, $s2, $a0
/* C26C 8000B66C 4600A03C */  c.lt.s     $f20, $f0
/* C270 8000B670 00000000 */  nop
/* C274 8000B674 4503000B */  bc1tl      .L8000B6A4
/* C278 8000B678 02009821 */   addu      $s3, $s0, $zero
/* C27C 8000B67C 8E420098 */  lw         $v0, 0x98($s2)
/* C280 8000B680 02202821 */  addu       $a1, $s1, $zero
/* C284 8000B684 84440068 */  lh         $a0, 0x68($v0)
/* C288 8000B688 8C42006C */  lw         $v0, 0x6C($v0)
/* C28C 8000B68C 0040F809 */  jalr       $v0
/* C290 8000B690 02442021 */   addu      $a0, $s2, $a0
/* C294 8000B694 4614003C */  c.lt.s     $f0, $f20
/* C298 8000B698 00000000 */  nop
/* C29C 8000B69C 45030001 */  bc1tl      .L8000B6A4
/* C2A0 8000B6A0 26130001 */   addiu     $s3, $s0, 0x1
.L8000B6A4:
/* C2A4 8000B6A4 06800009 */  bltz       $s4, .L8000B6CC
/* C2A8 8000B6A8 3C054000 */   lui       $a1, (0x40000000 >> 16)
/* C2AC 8000B6AC 02852825 */  or         $a1, $s4, $a1
/* C2B0 8000B6B0 24060001 */  addiu      $a2, $zero, 0x1
/* C2B4 8000B6B4 8E420098 */  lw         $v0, 0x98($s2)
/* C2B8 8000B6B8 00C03821 */  addu       $a3, $a2, $zero
/* C2BC 8000B6BC 84440010 */  lh         $a0, 0x10($v0)
/* C2C0 8000B6C0 8C420014 */  lw         $v0, 0x14($v0)
/* C2C4 8000B6C4 0040F809 */  jalr       $v0
/* C2C8 8000B6C8 02442021 */   addu      $a0, $s2, $a0
.L8000B6CC:
/* C2CC 8000B6CC 06600009 */  bltz       $s3, .L8000B6F4
/* C2D0 8000B6D0 3C054000 */   lui       $a1, (0x40000000 >> 16)
/* C2D4 8000B6D4 02652825 */  or         $a1, $s3, $a1
/* C2D8 8000B6D8 00003021 */  addu       $a2, $zero, $zero
/* C2DC 8000B6DC 8E420098 */  lw         $v0, 0x98($s2)
/* C2E0 8000B6E0 24070001 */  addiu      $a3, $zero, 0x1
/* C2E4 8000B6E4 84440010 */  lh         $a0, 0x10($v0)
/* C2E8 8000B6E8 8C420014 */  lw         $v0, 0x14($v0)
/* C2EC 8000B6EC 0040F809 */  jalr       $v0
/* C2F0 8000B6F0 02442021 */   addu      $a0, $s2, $a0
.L8000B6F4:
/* C2F4 8000B6F4 8FBF0024 */  lw         $ra, 0x24($sp)
/* C2F8 8000B6F8 8FB40020 */  lw         $s4, 0x20($sp)
/* C2FC 8000B6FC 8FB3001C */  lw         $s3, 0x1C($sp)
/* C300 8000B700 8FB20018 */  lw         $s2, 0x18($sp)
/* C304 8000B704 8FB10014 */  lw         $s1, 0x14($sp)
/* C308 8000B708 8FB00010 */  lw         $s0, 0x10($sp)
/* C30C 8000B70C D7B40028 */  ldc1       $f20, 0x28($sp)
/* C310 8000B710 03E00008 */  jr         $ra
/* C314 8000B714 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000B718
/* C318 8000B718 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C31C 8000B71C AFB20018 */  sw         $s2, 0x18($sp)
/* C320 8000B720 00809021 */  addu       $s2, $a0, $zero
/* C324 8000B724 AFB3001C */  sw         $s3, 0x1C($sp)
/* C328 8000B728 00009821 */  addu       $s3, $zero, $zero
/* C32C 8000B72C AFBF0020 */  sw         $ra, 0x20($sp)
/* C330 8000B730 AFB10014 */  sw         $s1, 0x14($sp)
/* C334 8000B734 AFB00010 */  sw         $s0, 0x10($sp)
/* C338 8000B738 8E420040 */  lw         $v0, 0x40($s2)
/* C33C 8000B73C 8E43001C */  lw         $v1, 0x1C($s2)
/* C340 8000B740 00451023 */  subu       $v0, $v0, $a1
/* C344 8000B744 1060006F */  beqz       $v1, .L8000B904
/* C348 8000B748 AE420040 */   sw        $v0, 0x40($s2)
/* C34C 8000B74C 1C40006D */  bgtz       $v0, .L8000B904
/* C350 8000B750 00000000 */   nop
/* C354 8000B754 8E42008C */  lw         $v0, 0x8C($s2)
/* C358 8000B758 1040006A */  beqz       $v0, .L8000B904
/* C35C 8000B75C 24020003 */   addiu     $v0, $zero, 0x3
/* C360 8000B760 8E430054 */  lw         $v1, 0x54($s2)
/* C364 8000B764 1062000C */  beq        $v1, $v0, .L8000B798
/* C368 8000B768 28620004 */   slti      $v0, $v1, 0x4
/* C36C 8000B76C 10400005 */  beqz       $v0, .L8000B784
/* C370 8000B770 24020002 */   addiu     $v0, $zero, 0x2
/* C374 8000B774 1062000A */  beq        $v1, $v0, .L8000B7A0
/* C378 8000B778 00008821 */   addu      $s1, $zero, $zero
/* C37C 8000B77C 08002DEB */  j          .L8000B7AC
/* C380 8000B780 02208021 */   addu      $s0, $s1, $zero
.L8000B784:
/* C384 8000B784 24020004 */  addiu      $v0, $zero, 0x4
/* C388 8000B788 50620006 */  beql       $v1, $v0, .L8000B7A4
/* C38C 8000B78C 3C133000 */   lui       $s3, (0x30000000 >> 16)
/* C390 8000B790 08002DEA */  j          .L8000B7A8
/* C394 8000B794 00008821 */   addu      $s1, $zero, $zero
.L8000B798:
/* C398 8000B798 08002DE9 */  j          .L8000B7A4
/* C39C 8000B79C 3C131000 */   lui       $s3, (0x10000000 >> 16)
.L8000B7A0:
/* C3A0 8000B7A0 3C132000 */  lui        $s3, (0x20000000 >> 16)
.L8000B7A4:
/* C3A4 8000B7A4 00008821 */  addu       $s1, $zero, $zero
.L8000B7A8:
/* C3A8 8000B7A8 02208021 */  addu       $s0, $s1, $zero
.L8000B7AC:
/* C3AC 8000B7AC 8E420098 */  lw         $v0, 0x98($s2)
/* C3B0 8000B7B0 84440040 */  lh         $a0, 0x40($v0)
/* C3B4 8000B7B4 8C420044 */  lw         $v0, 0x44($v0)
/* C3B8 8000B7B8 0040F809 */  jalr       $v0
/* C3BC 8000B7BC 02442021 */   addu      $a0, $s2, $a0
/* C3C0 8000B7C0 0202102A */  slt        $v0, $s0, $v0
/* C3C4 8000B7C4 10400017 */  beqz       $v0, .L8000B824
/* C3C8 8000B7C8 02702825 */   or        $a1, $s3, $s0
/* C3CC 8000B7CC 8E420098 */  lw         $v0, 0x98($s2)
/* C3D0 8000B7D0 84440070 */  lh         $a0, 0x70($v0)
/* C3D4 8000B7D4 8C420074 */  lw         $v0, 0x74($v0)
/* C3D8 8000B7D8 0040F809 */  jalr       $v0
/* C3DC 8000B7DC 02442021 */   addu      $a0, $s2, $a0
/* C3E0 8000B7E0 1040000E */  beqz       $v0, .L8000B81C
/* C3E4 8000B7E4 02402821 */   addu      $a1, $s2, $zero
/* C3E8 8000B7E8 26310001 */  addiu      $s1, $s1, 0x1
/* C3EC 8000B7EC 00101040 */  sll        $v0, $s0, 1
/* C3F0 8000B7F0 8E430028 */  lw         $v1, 0x28($s2)
/* C3F4 8000B7F4 8E470030 */  lw         $a3, 0x30($s2)
/* C3F8 8000B7F8 00431021 */  addu       $v0, $v0, $v1
/* C3FC 8000B7FC 8E43008C */  lw         $v1, 0x8C($s2)
/* C400 8000B800 94460000 */  lhu        $a2, 0x0($v0)
/* C404 8000B804 8C620000 */  lw         $v0, 0x0($v1)
/* C408 8000B808 02663025 */  or         $a2, $s3, $a2
/* C40C 8000B80C 84440018 */  lh         $a0, 0x18($v0)
/* C410 8000B810 8C42001C */  lw         $v0, 0x1C($v0)
/* C414 8000B814 0040F809 */  jalr       $v0
/* C418 8000B818 00642021 */   addu      $a0, $v1, $a0
.L8000B81C:
/* C41C 8000B81C 08002DEB */  j          .L8000B7AC
/* C420 8000B820 26100001 */   addiu     $s0, $s0, 0x1
.L8000B824:
/* C424 8000B824 8E420020 */  lw         $v0, 0x20($s2)
/* C428 8000B828 10400021 */  beqz       $v0, .L8000B8B0
/* C42C 8000B82C 00008021 */   addu      $s0, $zero, $zero
/* C430 8000B830 3C134000 */  lui        $s3, (0x40000000 >> 16)
.L8000B834:
/* C434 8000B834 8E420098 */  lw         $v0, 0x98($s2)
/* C438 8000B838 84440048 */  lh         $a0, 0x48($v0)
/* C43C 8000B83C 8C42004C */  lw         $v0, 0x4C($v0)
/* C440 8000B840 0040F809 */  jalr       $v0
/* C444 8000B844 02442021 */   addu      $a0, $s2, $a0
/* C448 8000B848 00021040 */  sll        $v0, $v0, 1
/* C44C 8000B84C 0202102A */  slt        $v0, $s0, $v0
/* C450 8000B850 10400017 */  beqz       $v0, .L8000B8B0
/* C454 8000B854 02132825 */   or        $a1, $s0, $s3
/* C458 8000B858 8E420098 */  lw         $v0, 0x98($s2)
/* C45C 8000B85C 84440070 */  lh         $a0, 0x70($v0)
/* C460 8000B860 8C420074 */  lw         $v0, 0x74($v0)
/* C464 8000B864 0040F809 */  jalr       $v0
/* C468 8000B868 02442021 */   addu      $a0, $s2, $a0
/* C46C 8000B86C 1040000E */  beqz       $v0, .L8000B8A8
/* C470 8000B870 02402821 */   addu      $a1, $s2, $zero
/* C474 8000B874 26310001 */  addiu      $s1, $s1, 0x1
/* C478 8000B878 00101040 */  sll        $v0, $s0, 1
/* C47C 8000B87C 8E43002C */  lw         $v1, 0x2C($s2)
/* C480 8000B880 8E470030 */  lw         $a3, 0x30($s2)
/* C484 8000B884 00431021 */  addu       $v0, $v0, $v1
/* C488 8000B888 8E43008C */  lw         $v1, 0x8C($s2)
/* C48C 8000B88C 94460000 */  lhu        $a2, 0x0($v0)
/* C490 8000B890 8C620000 */  lw         $v0, 0x0($v1)
/* C494 8000B894 00D33025 */  or         $a2, $a2, $s3
/* C498 8000B898 84440018 */  lh         $a0, 0x18($v0)
/* C49C 8000B89C 8C42001C */  lw         $v0, 0x1C($v0)
/* C4A0 8000B8A0 0040F809 */  jalr       $v0
/* C4A4 8000B8A4 00642021 */   addu      $a0, $v1, $a0
.L8000B8A8:
/* C4A8 8000B8A8 08002E0D */  j          .L8000B834
/* C4AC 8000B8AC 26100001 */   addiu     $s0, $s0, 0x1
.L8000B8B0:
/* C4B0 8000B8B0 12200004 */  beqz       $s1, .L8000B8C4
/* C4B4 8000B8B4 00000000 */   nop
/* C4B8 8000B8B8 8E42003C */  lw         $v0, 0x3C($s2)
/* C4BC 8000B8BC 08002E33 */  j          .L8000B8CC
/* C4C0 8000B8C0 AE420040 */   sw        $v0, 0x40($s2)
.L8000B8C4:
/* C4C4 8000B8C4 8E420038 */  lw         $v0, 0x38($s2)
/* C4C8 8000B8C8 AE420040 */  sw         $v0, 0x40($s2)
.L8000B8CC:
/* C4CC 8000B8CC 8E42004C */  lw         $v0, 0x4C($s2)
/* C4D0 8000B8D0 1840000C */  blez       $v0, .L8000B904
/* C4D4 8000B8D4 00008021 */   addu      $s0, $zero, $zero
/* C4D8 8000B8D8 02408821 */  addu       $s1, $s2, $zero
/* C4DC 8000B8DC 02403021 */  addu       $a2, $s2, $zero
.L8000B8E0:
/* C4E0 8000B8E0 8E240000 */  lw         $a0, 0x0($s1)
/* C4E4 8000B8E4 8E450030 */  lw         $a1, 0x30($s2)
/* C4E8 8000B8E8 0C001F1D */  jal        func_80007C74
/* C4EC 8000B8EC 26310004 */   addiu     $s1, $s1, 0x4
/* C4F0 8000B8F0 8E42004C */  lw         $v0, 0x4C($s2)
/* C4F4 8000B8F4 26100001 */  addiu      $s0, $s0, 0x1
/* C4F8 8000B8F8 0202102A */  slt        $v0, $s0, $v0
/* C4FC 8000B8FC 1440FFF8 */  bnez       $v0, .L8000B8E0
/* C500 8000B900 02403021 */   addu      $a2, $s2, $zero
.L8000B904:
/* C504 8000B904 8FBF0020 */  lw         $ra, 0x20($sp)
/* C508 8000B908 8FB3001C */  lw         $s3, 0x1C($sp)
/* C50C 8000B90C 8FB20018 */  lw         $s2, 0x18($sp)
/* C510 8000B910 8FB10014 */  lw         $s1, 0x14($sp)
/* C514 8000B914 8FB00010 */  lw         $s0, 0x10($sp)
/* C518 8000B918 03E00008 */  jr         $ra
/* C51C 8000B91C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000B920
/* C520 8000B920 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C524 8000B924 AFB20018 */  sw         $s2, 0x18($sp)
/* C528 8000B928 00809021 */  addu       $s2, $a0, $zero
/* C52C 8000B92C AFB00010 */  sw         $s0, 0x10($sp)
/* C530 8000B930 24100001 */  addiu      $s0, $zero, 0x1
/* C534 8000B934 AFB10014 */  sw         $s1, 0x14($sp)
/* C538 8000B938 00008821 */  addu       $s1, $zero, $zero
/* C53C 8000B93C AFBF0020 */  sw         $ra, 0x20($sp)
/* C540 8000B940 AFB3001C */  sw         $s3, 0x1C($sp)
/* C544 8000B944 8E530034 */  lw         $s3, 0x34($s2)
.L8000B948:
/* C548 8000B948 02131024 */  and        $v0, $s0, $s3
/* C54C 8000B94C 10400007 */  beqz       $v0, .L8000B96C
/* C550 8000B950 02002821 */   addu      $a1, $s0, $zero
/* C554 8000B954 8E420098 */  lw         $v0, 0x98($s2)
/* C558 8000B958 00003021 */  addu       $a2, $zero, $zero
/* C55C 8000B95C 84440018 */  lh         $a0, 0x18($v0)
/* C560 8000B960 8C42001C */  lw         $v0, 0x1C($v0)
/* C564 8000B964 0040F809 */  jalr       $v0
/* C568 8000B968 02442021 */   addu      $a0, $s2, $a0
.L8000B96C:
/* C56C 8000B96C 26310001 */  addiu      $s1, $s1, 0x1
/* C570 8000B970 2A220010 */  slti       $v0, $s1, 0x10
/* C574 8000B974 1440FFF4 */  bnez       $v0, .L8000B948
/* C578 8000B978 00108040 */   sll       $s0, $s0, 1
/* C57C 8000B97C 8FBF0020 */  lw         $ra, 0x20($sp)
/* C580 8000B980 8FB3001C */  lw         $s3, 0x1C($sp)
/* C584 8000B984 8FB20018 */  lw         $s2, 0x18($sp)
/* C588 8000B988 8FB10014 */  lw         $s1, 0x14($sp)
/* C58C 8000B98C 8FB00010 */  lw         $s0, 0x10($sp)
/* C590 8000B990 03E00008 */  jr         $ra
/* C594 8000B994 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000B998
/* C598 8000B998 00063600 */  sll        $a2, $a2, 24
/* C59C 8000B99C 10C00003 */  beqz       $a2, .L8000B9AC
/* C5A0 8000B9A0 00000000 */   nop
/* C5A4 8000B9A4 8C820038 */  lw         $v0, 0x38($a0)
/* C5A8 8000B9A8 AC820040 */  sw         $v0, 0x40($a0)
.L8000B9AC:
/* C5AC 8000B9AC 03E00008 */  jr         $ra
/* C5B0 8000B9B0 00000000 */   nop

glabel func_8000B9B4
/* C5B4 8000B9B4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C5B8 8000B9B8 AFB00010 */  sw         $s0, 0x10($sp)
/* C5BC 8000B9BC 00808021 */  addu       $s0, $a0, $zero
/* C5C0 8000B9C0 AFB10014 */  sw         $s1, 0x14($sp)
/* C5C4 8000B9C4 00A08821 */  addu       $s1, $a1, $zero
/* C5C8 8000B9C8 AFB20018 */  sw         $s2, 0x18($sp)
/* C5CC 8000B9CC 00C09021 */  addu       $s2, $a2, $zero
/* C5D0 8000B9D0 AFBF001C */  sw         $ra, 0x1C($sp)
/* C5D4 8000B9D4 F7B60028 */  sdc1       $f22, 0x28($sp)
/* C5D8 8000B9D8 F7B40020 */  sdc1       $f20, 0x20($sp)
/* C5DC 8000B9DC 8E020098 */  lw         $v0, 0x98($s0)
/* C5E0 8000B9E0 84440068 */  lh         $a0, 0x68($v0)
/* C5E4 8000B9E4 8C42006C */  lw         $v0, 0x6C($v0)
/* C5E8 8000B9E8 0040F809 */  jalr       $v0
/* C5EC 8000B9EC 02042021 */   addu      $a0, $s0, $a0
/* C5F0 8000B9F0 46000586 */  mov.s      $f22, $f0
/* C5F4 8000B9F4 8E020098 */  lw         $v0, 0x98($s0)
/* C5F8 8000B9F8 02402821 */  addu       $a1, $s2, $zero
/* C5FC 8000B9FC 84440068 */  lh         $a0, 0x68($v0)
/* C600 8000BA00 8C42006C */  lw         $v0, 0x6C($v0)
/* C604 8000BA04 0040F809 */  jalr       $v0
/* C608 8000BA08 02042021 */   addu      $a0, $s0, $a0
/* C60C 8000BA0C 24020002 */  addiu      $v0, $zero, 0x2
/* C610 8000BA10 16220003 */  bne        $s1, $v0, .L8000BA20
/* C614 8000BA14 00000000 */   nop
/* C618 8000BA18 08002E8A */  j          .L8000BA28
/* C61C 8000BA1C 4600B587 */   neg.s     $f22, $f22
.L8000BA20:
/* C620 8000BA20 52420001 */  beql       $s2, $v0, .L8000BA28
/* C624 8000BA24 46000007 */   neg.s     $f0, $f0
.L8000BA28:
/* C628 8000BA28 4480A000 */  mtc1       $zero, $f20
/* C62C 8000BA2C 4614B032 */  c.eq.s     $f22, $f20
/* C630 8000BA30 00000000 */  nop
/* C634 8000BA34 4500000B */  bc1f       .L8000BA64
/* C638 8000BA38 00000000 */   nop
/* C63C 8000BA3C 46140032 */  c.eq.s     $f0, $f20
/* C640 8000BA40 00000000 */  nop
/* C644 8000BA44 4501002A */  bc1t       .L8000BAF0
/* C648 8000BA48 00001021 */   addu      $v0, $zero, $zero
/* C64C 8000BA4C 4600A03C */  c.lt.s     $f20, $f0
/* C650 8000BA50 00000000 */  nop
/* C654 8000BA54 45010026 */  bc1t       .L8000BAF0
/* C658 8000BA58 24020003 */   addiu     $v0, $zero, 0x3
/* C65C 8000BA5C 08002EBC */  j          .L8000BAF0
/* C660 8000BA60 24020007 */   addiu     $v0, $zero, 0x7
.L8000BA64:
/* C664 8000BA64 46140032 */  c.eq.s     $f0, $f20
/* C668 8000BA68 00000000 */  nop
/* C66C 8000BA6C 45000007 */  bc1f       .L8000BA8C
/* C670 8000BA70 00000000 */   nop
/* C674 8000BA74 4616A03C */  c.lt.s     $f20, $f22
/* C678 8000BA78 00000000 */  nop
/* C67C 8000BA7C 4501001C */  bc1t       .L8000BAF0
/* C680 8000BA80 24020001 */   addiu     $v0, $zero, 0x1
/* C684 8000BA84 08002EBC */  j          .L8000BAF0
/* C688 8000BA88 24020005 */   addiu     $v0, $zero, 0x5
.L8000BA8C:
/* C68C 8000BA8C 0C001480 */  jal        func_80005200
/* C690 8000BA90 46160303 */   div.s     $f12, $f0, $f22
/* C694 8000BA94 4614B03C */  c.lt.s     $f22, $f20
/* C698 8000BA98 00000000 */  nop
/* C69C 8000BA9C 45000004 */  bc1f       .L8000BAB0
/* C6A0 8000BAA0 46000086 */   mov.s     $f2, $f0
/* C6A4 8000BAA4 3C018000 */  lui        $at, %hi(D_80000C94)
/* C6A8 8000BAA8 C4200C94 */  lwc1       $f0, %lo(D_80000C94)($at)
/* C6AC 8000BAAC 46001080 */  add.s      $f2, $f2, $f0
.L8000BAB0:
/* C6B0 8000BAB0 4614103C */  c.lt.s     $f2, $f20
/* C6B4 8000BAB4 00000000 */  nop
/* C6B8 8000BAB8 45000004 */  bc1f       .L8000BACC
/* C6BC 8000BABC 00000000 */   nop
/* C6C0 8000BAC0 3C018000 */  lui        $at, %hi(D_80000C98)
/* C6C4 8000BAC4 C4200C98 */  lwc1       $f0, %lo(D_80000C98)($at)
/* C6C8 8000BAC8 46001080 */  add.s      $f2, $f2, $f0
.L8000BACC:
/* C6CC 8000BACC 3C018000 */  lui        $at, %hi(D_80000C9C)
/* C6D0 8000BAD0 C4200C9C */  lwc1       $f0, %lo(D_80000C9C)($at)
/* C6D4 8000BAD4 46001080 */  add.s      $f2, $f2, $f0
/* C6D8 8000BAD8 3C018000 */  lui        $at, %hi(D_80000CA0)
/* C6DC 8000BADC C4200CA0 */  lwc1       $f0, %lo(D_80000CA0)($at)
/* C6E0 8000BAE0 46001083 */  div.s      $f2, $f2, $f0
/* C6E4 8000BAE4 4600110D */  trunc.w.s  $f4, $f2
/* C6E8 8000BAE8 44022000 */  mfc1       $v0, $f4
/* C6EC 8000BAEC 24420001 */  addiu      $v0, $v0, 0x1
.L8000BAF0:
/* C6F0 8000BAF0 8FBF001C */  lw         $ra, 0x1C($sp)
/* C6F4 8000BAF4 8FB20018 */  lw         $s2, 0x18($sp)
/* C6F8 8000BAF8 8FB10014 */  lw         $s1, 0x14($sp)
/* C6FC 8000BAFC 8FB00010 */  lw         $s0, 0x10($sp)
/* C700 8000BB00 D7B60028 */  ldc1       $f22, 0x28($sp)
/* C704 8000BB04 D7B40020 */  ldc1       $f20, 0x20($sp)
/* C708 8000BB08 03E00008 */  jr         $ra
/* C70C 8000BB0C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000BB10
/* C710 8000BB10 8C82004C */  lw         $v0, 0x4C($a0)
/* C714 8000BB14 00021880 */  sll        $v1, $v0, 2
/* C718 8000BB18 24420001 */  addiu      $v0, $v0, 0x1
/* C71C 8000BB1C 00831821 */  addu       $v1, $a0, $v1
/* C720 8000BB20 AC650000 */  sw         $a1, 0x0($v1)
/* C724 8000BB24 03E00008 */  jr         $ra
/* C728 8000BB28 AC82004C */   sw        $v0, 0x4C($a0)

glabel func_8000BB2C
/* C72C 8000BB2C 8C82004C */  lw         $v0, 0x4C($a0)
/* C730 8000BB30 1840001C */  blez       $v0, .L8000BBA4
/* C734 8000BB34 00003021 */   addu      $a2, $zero, $zero
/* C738 8000BB38 00061080 */  sll        $v0, $a2, 2
.L8000BB3C:
/* C73C 8000BB3C 00821021 */  addu       $v0, $a0, $v0
/* C740 8000BB40 8C420000 */  lw         $v0, 0x0($v0)
/* C744 8000BB44 54450013 */  bnel       $v0, $a1, .L8000BB94
/* C748 8000BB48 24C60001 */   addiu     $a2, $a2, 0x1
/* C74C 8000BB4C 28C20004 */  slti       $v0, $a2, 0x4
/* C750 8000BB50 1040000B */  beqz       $v0, .L8000BB80
/* C754 8000BB54 00061880 */   sll       $v1, $a2, 2
.L8000BB58:
/* C758 8000BB58 24C20001 */  addiu      $v0, $a2, 0x1
/* C75C 8000BB5C 00403021 */  addu       $a2, $v0, $zero
/* C760 8000BB60 00061080 */  sll        $v0, $a2, 2
/* C764 8000BB64 00821021 */  addu       $v0, $a0, $v0
/* C768 8000BB68 8C420000 */  lw         $v0, 0x0($v0)
/* C76C 8000BB6C 00831821 */  addu       $v1, $a0, $v1
/* C770 8000BB70 AC620000 */  sw         $v0, 0x0($v1)
/* C774 8000BB74 28C20004 */  slti       $v0, $a2, 0x4
/* C778 8000BB78 1440FFF7 */  bnez       $v0, .L8000BB58
/* C77C 8000BB7C 00061880 */   sll       $v1, $a2, 2
.L8000BB80:
/* C780 8000BB80 8C83004C */  lw         $v1, 0x4C($a0)
/* C784 8000BB84 24020001 */  addiu      $v0, $zero, 0x1
/* C788 8000BB88 2463FFFF */  addiu      $v1, $v1, -0x1
/* C78C 8000BB8C 03E00008 */  jr         $ra
/* C790 8000BB90 AC83004C */   sw        $v1, 0x4C($a0)
.L8000BB94:
/* C794 8000BB94 8C82004C */  lw         $v0, 0x4C($a0)
/* C798 8000BB98 00C2102A */  slt        $v0, $a2, $v0
/* C79C 8000BB9C 1440FFE7 */  bnez       $v0, .L8000BB3C
/* C7A0 8000BBA0 00061080 */   sll       $v0, $a2, 2
.L8000BBA4:
/* C7A4 8000BBA4 03E00008 */  jr         $ra
/* C7A8 8000BBA8 00001021 */   addu      $v0, $zero, $zero

glabel func_8000BBAC
/* C7AC 8000BBAC 03E00008 */  jr         $ra
/* C7B0 8000BBB0 24020100 */   addiu     $v0, $zero, 0x100

glabel func_8000BBB4
/* C7B4 8000BBB4 03E00008 */  jr         $ra
/* C7B8 8000BBB8 24020010 */   addiu     $v0, $zero, 0x10

glabel func_8000BBBC
/* C7BC 8000BBBC 8C820018 */  lw         $v0, 0x18($a0)
/* C7C0 8000BBC0 03E00008 */  jr         $ra
/* C7C4 8000BBC4 00000000 */   nop

glabel func_8000BBC8
/* C7C8 8000BBC8 24020001 */  addiu      $v0, $zero, 0x1
/* C7CC 8000BBCC 03E00008 */  jr         $ra
/* C7D0 8000BBD0 AC820018 */   sw        $v0, 0x18($a0)

glabel func_8000BBD4
/* C7D4 8000BBD4 AC800018 */  sw         $zero, 0x18($a0)
/* C7D8 8000BBD8 03E00008 */  jr         $ra
/* C7DC 8000BBDC 00001021 */   addu      $v0, $zero, $zero

glabel func_8000BBE0
/* C7E0 8000BBE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C7E4 8000BBE4 AFBF0010 */  sw         $ra, 0x10($sp)
/* C7E8 8000BBE8 8C820098 */  lw         $v0, 0x98($a0)
/* C7EC 8000BBEC 844300C8 */  lh         $v1, 0xC8($v0)
/* C7F0 8000BBF0 8C4200CC */  lw         $v0, 0xCC($v0)
/* C7F4 8000BBF4 0040F809 */  jalr       $v0
/* C7F8 8000BBF8 00832021 */   addu      $a0, $a0, $v1
/* C7FC 8000BBFC 8FBF0010 */  lw         $ra, 0x10($sp)
/* C800 8000BC00 03E00008 */  jr         $ra
/* C804 8000BC04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000BC08
/* C808 8000BC08 8C820024 */  lw         $v0, 0x24($a0)
/* C80C 8000BC0C 03E00008 */  jr         $ra
/* C810 8000BC10 00000000 */   nop

glabel func_8000BC14
/* C814 8000BC14 24020001 */  addiu      $v0, $zero, 0x1
/* C818 8000BC18 03E00008 */  jr         $ra
/* C81C 8000BC1C AC820024 */   sw        $v0, 0x24($a0)

glabel func_8000BC20
/* C820 8000BC20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C824 8000BC24 AFBF0010 */  sw         $ra, 0x10($sp)
/* C828 8000BC28 0C002CFE */  jal        func_8000B3F8
/* C82C 8000BC2C 00A03021 */   addu      $a2, $a1, $zero
/* C830 8000BC30 8FBF0010 */  lw         $ra, 0x10($sp)
/* C834 8000BC34 03E00008 */  jr         $ra
/* C838 8000BC38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000BC3C
/* C83C 8000BC3C 03E00008 */  jr         $ra
/* C840 8000BC40 AC80001C */   sw        $zero, 0x1C($a0)

glabel func_8000BC44
/* C844 8000BC44 24020001 */  addiu      $v0, $zero, 0x1
/* C848 8000BC48 03E00008 */  jr         $ra
/* C84C 8000BC4C AC820020 */   sw        $v0, 0x20($a0)

glabel func_8000BC50
/* C850 8000BC50 03E00008 */  jr         $ra
/* C854 8000BC54 AC800020 */   sw        $zero, 0x20($a0)

glabel func_8000BC58
/* C858 8000BC58 03E00008 */  jr         $ra
/* C85C 8000BC5C AC850094 */   sw        $a1, 0x94($a0)

glabel func_8000BC60
/* C860 8000BC60 03E00008 */  jr         $ra
/* C864 8000BC64 AC850090 */   sw        $a1, 0x90($a0)

glabel func_8000BC68
/* C868 8000BC68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C86C 8000BC6C AFBF0010 */  sw         $ra, 0x10($sp)
/* C870 8000BC70 8C860038 */  lw         $a2, 0x38($a0)
/* C874 8000BC74 0C002D05 */  jal        func_8000B414
/* C878 8000BC78 00000000 */   nop
/* C87C 8000BC7C 8FBF0010 */  lw         $ra, 0x10($sp)
/* C880 8000BC80 03E00008 */  jr         $ra
/* C884 8000BC84 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000BC88
/* C888 8000BC88 03E00008 */  jr         $ra
/* C88C 8000BC8C AC850050 */   sw        $a1, 0x50($a0)

glabel func_8000BC90
/* C890 8000BC90 03E00008 */  jr         $ra
/* C894 8000BC94 AC850054 */   sw        $a1, 0x54($a0)

glabel func_8000BC98
/* C898 8000BC98 03E00008 */  jr         $ra
/* C89C 8000BC9C AC85008C */   sw        $a1, 0x8C($a0)

glabel func_8000BCA0
/* C8A0 8000BCA0 8C820010 */  lw         $v0, 0x10($a0)
/* C8A4 8000BCA4 03E00008 */  jr         $ra
/* C8A8 8000BCA8 00000000 */   nop

glabel func_8000BCAC
/* C8AC 8000BCAC 8C820088 */  lw         $v0, 0x88($a0)
/* C8B0 8000BCB0 03E00008 */  jr         $ra
/* C8B4 8000BCB4 00000000 */   nop

glabel func_8000BCB8
/* C8B8 8000BCB8 8C820050 */  lw         $v0, 0x50($a0)
/* C8BC 8000BCBC 03E00008 */  jr         $ra
/* C8C0 8000BCC0 00000000 */   nop

glabel func_8000BCC4
/* C8C4 8000BCC4 8C820054 */  lw         $v0, 0x54($a0)
/* C8C8 8000BCC8 03E00008 */  jr         $ra
/* C8CC 8000BCCC 00000000 */   nop

glabel func_8000BCD0
/* C8D0 8000BCD0 8C820034 */  lw         $v0, 0x34($a0)
/* C8D4 8000BCD4 03E00008 */  jr         $ra
/* C8D8 8000BCD8 00000000 */   nop

glabel func_8000BCDC
/* C8DC 8000BCDC 03E00008 */  jr         $ra
/* C8E0 8000BCE0 24820058 */   addiu     $v0, $a0, 0x58

glabel func_8000BCE4
/* C8E4 8000BCE4 8C820048 */  lw         $v0, 0x48($a0)
/* C8E8 8000BCE8 03E00008 */  jr         $ra
/* C8EC 8000BCEC 00000000 */   nop

glabel func_8000BCF0
/* C8F0 8000BCF0 8C820044 */  lw         $v0, 0x44($a0)
/* C8F4 8000BCF4 03E00008 */  jr         $ra
/* C8F8 8000BCF8 00000000 */   nop

glabel func_8000BCFC
/* C8FC 8000BCFC 8C82003C */  lw         $v0, 0x3C($a0)
/* C900 8000BD00 03E00008 */  jr         $ra
/* C904 8000BD04 00000000 */   nop

glabel func_8000BD08
/* C908 8000BD08 8C82008C */  lw         $v0, 0x8C($a0)
/* C90C 8000BD0C 03E00008 */  jr         $ra
/* C910 8000BD10 00000000 */   nop

glabel func_8000BD14
/* C914 8000BD14 8C830004 */  lw         $v1, 0x4($a0)
/* C918 8000BD18 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* C91C 8000BD1C 03E00008 */  jr         $ra
/* C920 8000BD20 00621024 */   and       $v0, $v1, $v0

glabel func_8000BD24
/* C924 8000BD24 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* C928 8000BD28 03E00008 */  jr         $ra
/* C92C 8000BD2C 00821024 */   and       $v0, $a0, $v0

glabel func_8000BD30
/* C930 8000BD30 8C820014 */  lw         $v0, 0x14($a0)
/* C934 8000BD34 03E00008 */  jr         $ra
/* C938 8000BD38 00000000 */   nop
