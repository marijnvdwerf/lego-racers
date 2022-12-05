.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osCreateThread
/* 1FED0 8001F2D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FED4 8001F2D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FED8 8001F2D8 00808021 */  addu       $s0, $a0, $zero
/* 1FEDC 8001F2DC 00E04821 */  addu       $t1, $a3, $zero
/* 1FEE0 8001F2E0 000747C3 */  sra        $t0, $a3, 31
/* 1FEE4 8001F2E4 3C048002 */  lui        $a0, %hi(D_8001DC68)
/* 1FEE8 8001F2E8 2484DC68 */  addiu      $a0, $a0, %lo(D_8001DC68)
/* 1FEEC 8001F2EC 00801821 */  addu       $v1, $a0, $zero
/* 1FEF0 8001F2F0 000417C3 */  sra        $v0, $a0, 31
/* 1FEF4 8001F2F4 8FA70028 */  lw         $a3, 0x28($sp)
/* 1FEF8 8001F2F8 3C040100 */  lui        $a0, (0x1000800 >> 16)
/* 1FEFC 8001F2FC 34840800 */  ori        $a0, $a0, (0x1000800 & 0xFFFF)
/* 1FF00 8001F300 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FF04 8001F304 AE020100 */  sw         $v0, 0x100($s0)
/* 1FF08 8001F308 AE030104 */  sw         $v1, 0x104($s0)
/* 1FF0C 8001F30C 3402FF03 */  ori        $v0, $zero, 0xFF03
/* 1FF10 8001F310 AE020118 */  sw         $v0, 0x118($s0)
/* 1FF14 8001F314 2402003F */  addiu      $v0, $zero, 0x3F
/* 1FF18 8001F318 AE020128 */  sw         $v0, 0x128($s0)
/* 1FF1C 8001F31C 24020001 */  addiu      $v0, $zero, 0x1
/* 1FF20 8001F320 AE050014 */  sw         $a1, 0x14($s0)
/* 1FF24 8001F324 AE000000 */  sw         $zero, 0x0($s0)
/* 1FF28 8001F328 AE000008 */  sw         $zero, 0x8($s0)
/* 1FF2C 8001F32C AE06011C */  sw         $a2, 0x11C($s0)
/* 1FF30 8001F330 AE080038 */  sw         $t0, 0x38($s0)
/* 1FF34 8001F334 AE09003C */  sw         $t1, 0x3C($s0)
/* 1FF38 8001F338 AE04012C */  sw         $a0, 0x12C($s0)
/* 1FF3C 8001F33C AE000018 */  sw         $zero, 0x18($s0)
/* 1FF40 8001F340 A6020010 */  sh         $v0, 0x10($s0)
/* 1FF44 8001F344 A6000012 */  sh         $zero, 0x12($s0)
/* 1FF48 8001F348 8FA2002C */  lw         $v0, 0x2C($sp)
/* 1FF4C 8001F34C 00E05821 */  addu       $t3, $a3, $zero
/* 1FF50 8001F350 000757C3 */  sra        $t2, $a3, 31
/* 1FF54 8001F354 AE020004 */  sw         $v0, 0x4($s0)
/* 1FF58 8001F358 256BFFF0 */  addiu      $t3, $t3, -0x10
/* 1FF5C 8001F35C 2D62FFF0 */  sltiu      $v0, $t3, -0x10
/* 1FF60 8001F360 254AFFFF */  addiu      $t2, $t2, -0x1
/* 1FF64 8001F364 01425021 */  addu       $t2, $t2, $v0
/* 1FF68 8001F368 AE0A00F0 */  sw         $t2, 0xF0($s0)
/* 1FF6C 8001F36C 0C005734 */  jal        func_80015CD0
/* 1FF70 8001F370 AE0B00F4 */   sw        $t3, 0xF4($s0)
/* 1FF74 8001F374 3C038003 */  lui        $v1, %hi(D_800310AC)
/* 1FF78 8001F378 8C6310AC */  lw         $v1, %lo(D_800310AC)($v1)
/* 1FF7C 8001F37C 00402021 */  addu       $a0, $v0, $zero
/* 1FF80 8001F380 3C018003 */  lui        $at, %hi(D_800310AC)
/* 1FF84 8001F384 AC3010AC */  sw         $s0, %lo(D_800310AC)($at)
/* 1FF88 8001F388 0C005750 */  jal        func_80015D40
/* 1FF8C 8001F38C AE03000C */   sw        $v1, 0xC($s0)
/* 1FF90 8001F390 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FF94 8001F394 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FF98 8001F398 03E00008 */  jr         $ra
/* 1FF9C 8001F39C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001F3A0
/* 1FFA0 8001F3A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FFA4 8001F3A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FFA8 8001F3A8 00808021 */  addu       $s0, $a0, $zero
/* 1FFAC 8001F3AC AFBF0018 */  sw         $ra, 0x18($sp)
/* 1FFB0 8001F3B0 0C005734 */  jal        func_80015CD0
/* 1FFB4 8001F3B4 AFB10014 */   sw        $s1, 0x14($sp)
/* 1FFB8 8001F3B8 16000004 */  bnez       $s0, .L8001F3CC
/* 1FFBC 8001F3BC 00408821 */   addu      $s1, $v0, $zero
/* 1FFC0 8001F3C0 3C108003 */  lui        $s0, %hi(D_800310B0)
/* 1FFC4 8001F3C4 08007CFA */  j          .L8001F3E8
/* 1FFC8 8001F3C8 8E1010B0 */   lw        $s0, %lo(D_800310B0)($s0)
.L8001F3CC:
/* 1FFCC 8001F3CC 96030010 */  lhu        $v1, %lo(D_80030010)($s0)
/* 1FFD0 8001F3D0 24020001 */  addiu      $v0, $zero, 0x1
/* 1FFD4 8001F3D4 10620004 */  beq        $v1, $v0, .L8001F3E8
/* 1FFD8 8001F3D8 00000000 */   nop
/* 1FFDC 8001F3DC 8E040008 */  lw         $a0, %lo(D_80030008)($s0)
/* 1FFE0 8001F3E0 0C007DD4 */  jal        func_8001F750
/* 1FFE4 8001F3E4 02002821 */   addu      $a1, $s0, $zero
.L8001F3E8:
/* 1FFE8 8001F3E8 3C028003 */  lui        $v0, %hi(D_800310AC)
/* 1FFEC 8001F3EC 8C4210AC */  lw         $v0, %lo(D_800310AC)($v0)
/* 1FFF0 8001F3F0 14500008 */  bne        $v0, $s0, .L8001F414
/* 1FFF4 8001F3F4 00402021 */   addu      $a0, $v0, $zero
/* 1FFF8 8001F3F8 8E02000C */  lw         $v0, 0xC($s0)
/* 1FFFC 8001F3FC 3C018003 */  lui        $at, %hi(D_800310AC)
/* 20000 8001F400 08007D11 */  j          .L8001F444
/* 20004 8001F404 AC2210AC */   sw        $v0, %lo(D_800310AC)($at)
.L8001F408:
/* 20008 8001F408 8E02000C */  lw         $v0, %lo(D_8003000C)($s0)
/* 2000C 8001F40C 08007D11 */  j          .L8001F444
/* 20010 8001F410 AC82000C */   sw        $v0, 0xC($a0)
.L8001F414:
/* 20014 8001F414 8C830004 */  lw         $v1, 0x4($a0)
/* 20018 8001F418 2402FFFF */  addiu      $v0, $zero, -0x1
/* 2001C 8001F41C 10620009 */  beq        $v1, $v0, .L8001F444
/* 20020 8001F420 00000000 */   nop
/* 20024 8001F424 2403FFFF */  addiu      $v1, $zero, -0x1
.L8001F428:
/* 20028 8001F428 8C82000C */  lw         $v0, 0xC($a0)
/* 2002C 8001F42C 1050FFF6 */  beq        $v0, $s0, .L8001F408
/* 20030 8001F430 00000000 */   nop
/* 20034 8001F434 00402021 */  addu       $a0, $v0, $zero
/* 20038 8001F438 8C820004 */  lw         $v0, 0x4($a0)
/* 2003C 8001F43C 1443FFFA */  bne        $v0, $v1, .L8001F428
/* 20040 8001F440 00000000 */   nop
.L8001F444:
/* 20044 8001F444 3C028003 */  lui        $v0, %hi(D_800310B0)
/* 20048 8001F448 8C4210B0 */  lw         $v0, %lo(D_800310B0)($v0)
/* 2004C 8001F44C 16020003 */  bne        $s0, $v0, .L8001F45C
/* 20050 8001F450 00000000 */   nop
/* 20054 8001F454 0C0076BB */  jal        .L8001DAEC
/* 20058 8001F458 00000000 */   nop
.L8001F45C:
/* 2005C 8001F45C 0C005750 */  jal        func_80015D40
/* 20060 8001F460 02202021 */   addu      $a0, $s1, $zero
/* 20064 8001F464 8FBF0018 */  lw         $ra, 0x18($sp)
/* 20068 8001F468 8FB10014 */  lw         $s1, 0x14($sp)
/* 2006C 8001F46C 8FB00010 */  lw         $s0, 0x10($sp)
/* 20070 8001F470 03E00008 */  jr         $ra
/* 20074 8001F474 27BD0020 */   addiu     $sp, $sp, 0x20
/* 20078 8001F478 00000000 */  nop
/* 2007C 8001F47C 00000000 */  nop
