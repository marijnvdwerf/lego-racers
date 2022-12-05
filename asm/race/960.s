.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80131E70
/* E8230 80131E70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E8234 80131E74 AFB20018 */  sw         $s2, 0x18($sp)
/* E8238 80131E78 00809021 */  addu       $s2, $a0, $zero
/* E823C 80131E7C AFB00010 */  sw         $s0, 0x10($sp)
/* E8240 80131E80 00A08021 */  addu       $s0, $a1, $zero
/* E8244 80131E84 AFB10014 */  sw         $s1, 0x14($sp)
/* E8248 80131E88 00C08821 */  addu       $s1, $a2, $zero
/* E824C 80131E8C AFBF001C */  sw         $ra, 0x1C($sp)
/* E8250 80131E90 0C002680 */  jal        func_80009A00
/* E8254 80131E94 02002021 */   addu      $a0, $s0, $zero
/* E8258 80131E98 02002021 */  addu       $a0, $s0, $zero
/* E825C 80131E9C 0C002680 */  jal        func_80009A00
/* E8260 80131EA0 A6420000 */   sh        $v0, 0x0($s2)
/* E8264 80131EA4 02002021 */  addu       $a0, $s0, $zero
/* E8268 80131EA8 0C002680 */  jal        func_80009A00
/* E826C 80131EAC A6420002 */   sh        $v0, 0x2($s2)
/* E8270 80131EB0 02002021 */  addu       $a0, $s0, $zero
/* E8274 80131EB4 0C002680 */  jal        func_80009A00
/* E8278 80131EB8 A2420004 */   sb        $v0, 0x4($s2)
/* E827C 80131EBC 02002021 */  addu       $a0, $s0, $zero
/* E8280 80131EC0 0C002680 */  jal        func_80009A00
/* E8284 80131EC4 A2420005 */   sb        $v0, 0x5($s2)
/* E8288 80131EC8 02002021 */  addu       $a0, $s0, $zero
/* E828C 80131ECC 0C002680 */  jal        func_80009A00
/* E8290 80131ED0 A2420006 */   sb        $v0, 0x6($s2)
/* E8294 80131ED4 02002021 */  addu       $a0, $s0, $zero
/* E8298 80131ED8 0C002680 */  jal        func_80009A00
/* E829C 80131EDC A2420007 */   sb        $v0, 0x7($s2)
/* E82A0 80131EE0 02002021 */  addu       $a0, $s0, $zero
/* E82A4 80131EE4 0C002680 */  jal        func_80009A00
/* E82A8 80131EE8 A2420008 */   sb        $v0, 0x8($s2)
/* E82AC 80131EEC 02002021 */  addu       $a0, $s0, $zero
/* E82B0 80131EF0 0C002680 */  jal        func_80009A00
/* E82B4 80131EF4 A2420009 */   sb        $v0, 0x9($s2)
/* E82B8 80131EF8 02002021 */  addu       $a0, $s0, $zero
/* E82BC 80131EFC 0C002680 */  jal        func_80009A00
/* E82C0 80131F00 A242000A */   sb        $v0, 0xA($s2)
/* E82C4 80131F04 1220000E */  beqz       $s1, .Lrace_80131F40
/* E82C8 80131F08 A242000B */   sb        $v0, 0xB($s2)
/* E82CC 80131F0C 9243000A */  lbu        $v1, 0xA($s2)
/* E82D0 80131F10 96420002 */  lhu        $v0, 0x2($s2)
/* E82D4 80131F14 92440009 */  lbu        $a0, 0x9($s2)
/* E82D8 80131F18 00021023 */  negu       $v0, $v0
/* E82DC 80131F1C A6420002 */  sh         $v0, 0x2($s2)
/* E82E0 80131F20 92420006 */  lbu        $v0, 0x6($s2)
/* E82E4 80131F24 A2430009 */  sb         $v1, 0x9($s2)
/* E82E8 80131F28 92430008 */  lbu        $v1, 0x8($s2)
/* E82EC 80131F2C A244000A */  sb         $a0, 0xA($s2)
/* E82F0 80131F30 00021023 */  negu       $v0, $v0
/* E82F4 80131F34 00031823 */  negu       $v1, $v1
/* E82F8 80131F38 A2420006 */  sb         $v0, 0x6($s2)
/* E82FC 80131F3C A2430008 */  sb         $v1, 0x8($s2)
.Lrace_80131F40:
/* E8300 80131F40 8FBF001C */  lw         $ra, 0x1C($sp)
/* E8304 80131F44 8FB20018 */  lw         $s2, 0x18($sp)
/* E8308 80131F48 8FB10014 */  lw         $s1, 0x14($sp)
/* E830C 80131F4C 8FB00010 */  lw         $s0, 0x10($sp)
/* E8310 80131F50 03E00008 */  jr         $ra
/* E8314 80131F54 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80131F58
/* E8318 80131F58 9082000B */  lbu        $v0, 0xB($a0)
/* E831C 80131F5C 00021982 */  srl        $v1, $v0, 6
/* E8320 80131F60 2C620003 */  sltiu      $v0, $v1, 0x3
/* E8324 80131F64 50400001 */  beql       $v0, $zero, .Lrace_80131F6C
/* E8328 80131F68 24030004 */   addiu     $v1, $zero, 0x4
.Lrace_80131F6C:
/* E832C 80131F6C 03E00008 */  jr         $ra
/* E8330 80131F70 00601021 */   addu      $v0, $v1, $zero

glabel func_race_80131F74
/* E8334 80131F74 9082000B */  lbu        $v0, 0xB($a0)
/* E8338 80131F78 3042003F */  andi       $v0, $v0, 0x3F
/* E833C 80131F7C 03E00008 */  jr         $ra
/* E8340 80131F80 00021140 */   sll       $v0, $v0, 5

glabel func_race_80131F84
/* E8344 80131F84 84820000 */  lh         $v0, 0x0($a0)
/* E8348 80131F88 3C01800D */  lui        $at, %hi(D_race_800CF380)
/* E834C 80131F8C C422F380 */  lwc1       $f2, %lo(D_race_800CF380)($at)
/* E8350 80131F90 44820000 */  mtc1       $v0, $f0
/* E8354 80131F94 46800020 */  cvt.s.w    $f0, $f0
/* E8358 80131F98 46020002 */  mul.s      $f0, $f0, $f2
/* E835C 80131F9C E4A00000 */  swc1       $f0, 0x0($a1)
/* E8360 80131FA0 84820002 */  lh         $v0, 0x2($a0)
/* E8364 80131FA4 44820000 */  mtc1       $v0, $f0
/* E8368 80131FA8 46800020 */  cvt.s.w    $f0, $f0
/* E836C 80131FAC 46020002 */  mul.s      $f0, $f0, $f2
/* E8370 80131FB0 E4A00004 */  swc1       $f0, 0x4($a1)
/* E8374 80131FB4 80820004 */  lb         $v0, 0x4($a0)
/* E8378 80131FB8 3C01800D */  lui        $at, %hi(D_race_800CF384)
/* E837C 80131FBC C422F384 */  lwc1       $f2, %lo(D_race_800CF384)($at)
/* E8380 80131FC0 44820000 */  mtc1       $v0, $f0
/* E8384 80131FC4 46800020 */  cvt.s.w    $f0, $f0
/* E8388 80131FC8 46020002 */  mul.s      $f0, $f0, $f2
/* E838C 80131FCC 03E00008 */  jr         $ra
/* E8390 80131FD0 E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_80131FD4
/* E8394 80131FD4 80820005 */  lb         $v0, 0x5($a0)
/* E8398 80131FD8 3C01800D */  lui        $at, %hi(D_race_800CF388)
/* E839C 80131FDC C422F388 */  lwc1       $f2, %lo(D_race_800CF388)($at)
/* E83A0 80131FE0 44820000 */  mtc1       $v0, $f0
/* E83A4 80131FE4 46800020 */  cvt.s.w    $f0, $f0
/* E83A8 80131FE8 46020002 */  mul.s      $f0, $f0, $f2
/* E83AC 80131FEC E4A00000 */  swc1       $f0, 0x0($a1)
/* E83B0 80131FF0 80820006 */  lb         $v0, 0x6($a0)
/* E83B4 80131FF4 44820000 */  mtc1       $v0, $f0
/* E83B8 80131FF8 46800020 */  cvt.s.w    $f0, $f0
/* E83BC 80131FFC 46020002 */  mul.s      $f0, $f0, $f2
/* E83C0 80132000 E4A00004 */  swc1       $f0, 0x4($a1)
/* E83C4 80132004 80820007 */  lb         $v0, 0x7($a0)
/* E83C8 80132008 44820000 */  mtc1       $v0, $f0
/* E83CC 8013200C 46800020 */  cvt.s.w    $f0, $f0
/* E83D0 80132010 46020002 */  mul.s      $f0, $f0, $f2
/* E83D4 80132014 E4A00008 */  swc1       $f0, 0x8($a1)
/* E83D8 80132018 80820008 */  lb         $v0, 0x8($a0)
/* E83DC 8013201C 44820000 */  mtc1       $v0, $f0
/* E83E0 80132020 46800020 */  cvt.s.w    $f0, $f0
/* E83E4 80132024 46020002 */  mul.s      $f0, $f0, $f2
/* E83E8 80132028 03E00008 */  jr         $ra
/* E83EC 8013202C E4A0000C */   swc1      $f0, 0xC($a1)

glabel func_race_80132030
/* E83F0 80132030 80820009 */  lb         $v0, 0x9($a0)
/* E83F4 80132034 3C01800D */  lui        $at, %hi(D_race_800CF38C)
/* E83F8 80132038 C422F38C */  lwc1       $f2, %lo(D_race_800CF38C)($at)
/* E83FC 8013203C 44820000 */  mtc1       $v0, $f0
/* E8400 80132040 46800020 */  cvt.s.w    $f0, $f0
/* E8404 80132044 46020002 */  mul.s      $f0, $f0, $f2
/* E8408 80132048 03E00008 */  jr         $ra
/* E840C 8013204C 00000000 */   nop

glabel func_race_80132050
/* E8410 80132050 8082000A */  lb         $v0, 0xA($a0)
/* E8414 80132054 3C01800D */  lui        $at, %hi(D_race_800CF390)
/* E8418 80132058 C422F390 */  lwc1       $f2, %lo(D_race_800CF390)($at)
/* E841C 8013205C 44820000 */  mtc1       $v0, $f0
/* E8420 80132060 46800020 */  cvt.s.w    $f0, $f0
/* E8424 80132064 46020002 */  mul.s      $f0, $f0, $f2
/* E8428 80132068 03E00008 */  jr         $ra
/* E842C 8013206C 00000000 */   nop
