.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80000400
/* 1000 80000400 3C1D8002 */  lui        $sp, %hi(D_80027248)
/* 1004 80000404 27BD7248 */  addiu      $sp, $sp, %lo(D_80027248)
/* 1008 80000408 3C088003 */  lui        $t0, %hi(D_80032410)
/* 100C 8000040C 25082410 */  addiu      $t0, $t0, %lo(D_80032410)
/* 1010 80000410 3C098004 */  lui        $t1, %hi(D_8003BCE0)
/* 1014 80000414 2529BCE0 */  addiu      $t1, $t1, %lo(D_8003BCE0)
/* 1018 80000418 11090005 */  beq        $t0, $t1, .L80000430
/* 101C 8000041C 00000000 */   nop
.L80000420:
/* 1020 80000420 25080004 */  addiu      $t0, $t0, 0x4
/* 1024 80000424 0109082B */  sltu       $at, $t0, $t1
/* 1028 80000428 1420FFFD */  bnez       $at, .L80000420
/* 102C 8000042C AD00FFFC */   sw        $zero, -0x4($t0)
.L80000430:
/* 1030 80000430 3C088003 */  lui        $t0, %hi(D_80032410)
/* 1034 80000434 25082410 */  addiu      $t0, $t0, %lo(D_80032410)
/* 1038 80000438 3C098003 */  lui        $t1, %hi(D_80032410)
/* 103C 8000043C 25292410 */  addiu      $t1, $t1, %lo(D_80032410)
/* 1040 80000440 11090005 */  beq        $t0, $t1, .L80000458
/* 1044 80000444 00000000 */   nop
.L80000448:
/* 1048 80000448 25080004 */  addiu      $t0, $t0, 0x4
/* 104C 8000044C 0109082B */  sltu       $at, $t0, $t1
/* 1050 80000450 1420FFFD */  bnez       $at, .L80000448
/* 1054 80000454 AD00FFFC */   sw        $zero, -0x4($t0)
.L80000458:
/* 1058 80000458 0C000963 */  jal        func_8000258C
/* 105C 8000045C 00000000 */   nop
/* 1060 80000460 0001008D */  break      1, 2
