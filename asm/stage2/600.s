.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800781E0
/* 6F510 800781E0 03E00008 */  jr         $ra
/* 6F514 800781E4 24820008 */   addiu     $v0, $a0, 0x8

glabel func_800781E8
/* 6F518 800781E8 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F51C 800781EC 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F520 800781F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F524 800781F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F528 800781F8 0C01FB65 */  jal        func_8007ED94
/* 6F52C 800781FC AFB00010 */   sw        $s0, 0x10($sp)
/* 6F530 80078200 0C01FB4C */  jal        func_8007ED30
/* 6F534 80078204 24040118 */   addiu     $a0, $zero, 0x118
/* 6F538 80078208 0C01E8E0 */  jal        func_8007A380
/* 6F53C 8007820C 00402021 */   addu      $a0, $v0, $zero
/* 6F540 80078210 0C01FB72 */  jal        func_8007EDC8
/* 6F544 80078214 00408021 */   addu      $s0, $v0, $zero
/* 6F548 80078218 16000008 */  bnez       $s0, .L8007823C
/* 6F54C 8007821C 02001021 */   addu      $v0, $s0, $zero
/* 6F550 80078220 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F554 80078224 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F558 80078228 00002821 */  addu       $a1, $zero, $zero
/* 6F55C 8007822C 00A03021 */  addu       $a2, $a1, $zero
/* 6F560 80078230 0C011ACF */  jal        func_80046B3C
/* 6F564 80078234 00A03821 */   addu      $a3, $a1, $zero
/* 6F568 80078238 02001021 */  addu       $v0, $s0, $zero
.L8007823C:
/* 6F56C 8007823C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F570 80078240 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F574 80078244 03E00008 */  jr         $ra
/* 6F578 80078248 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007824C
/* 6F57C 8007824C 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F580 80078250 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F584 80078254 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F588 80078258 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F58C 8007825C 0C01FB65 */  jal        func_8007ED94
/* 6F590 80078260 AFB00010 */   sw        $s0, 0x10($sp)
/* 6F594 80078264 0C01FB4C */  jal        func_8007ED30
/* 6F598 80078268 24040020 */   addiu     $a0, $zero, 0x20
/* 6F59C 8007826C 0C01E3DC */  jal        func_80078F70
/* 6F5A0 80078270 00402021 */   addu      $a0, $v0, $zero
/* 6F5A4 80078274 0C01FB72 */  jal        func_8007EDC8
/* 6F5A8 80078278 00408021 */   addu      $s0, $v0, $zero
/* 6F5AC 8007827C 16000008 */  bnez       $s0, .L800782A0
/* 6F5B0 80078280 02001021 */   addu      $v0, $s0, $zero
/* 6F5B4 80078284 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F5B8 80078288 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F5BC 8007828C 00002821 */  addu       $a1, $zero, $zero
/* 6F5C0 80078290 00A03021 */  addu       $a2, $a1, $zero
/* 6F5C4 80078294 0C011ACF */  jal        func_80046B3C
/* 6F5C8 80078298 00A03821 */   addu      $a3, $a1, $zero
/* 6F5CC 8007829C 02001021 */  addu       $v0, $s0, $zero
.L800782A0:
/* 6F5D0 800782A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F5D4 800782A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F5D8 800782A8 03E00008 */  jr         $ra
/* 6F5DC 800782AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800782B0
/* 6F5E0 800782B0 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F5E4 800782B4 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F5E8 800782B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F5EC 800782BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F5F0 800782C0 0C01FB65 */  jal        func_8007ED94
/* 6F5F4 800782C4 AFB00010 */   sw        $s0, 0x10($sp)
/* 6F5F8 800782C8 0C01FB4C */  jal        func_8007ED30
/* 6F5FC 800782CC 24040020 */   addiu     $a0, $zero, 0x20
/* 6F600 800782D0 0C01B830 */  jal        func_8006E0C0
/* 6F604 800782D4 00402021 */   addu      $a0, $v0, $zero
/* 6F608 800782D8 0C01FB72 */  jal        func_8007EDC8
/* 6F60C 800782DC 00408021 */   addu      $s0, $v0, $zero
/* 6F610 800782E0 16000008 */  bnez       $s0, .L80078304
/* 6F614 800782E4 02001021 */   addu      $v0, $s0, $zero
/* 6F618 800782E8 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F61C 800782EC 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F620 800782F0 00002821 */  addu       $a1, $zero, $zero
/* 6F624 800782F4 00A03021 */  addu       $a2, $a1, $zero
/* 6F628 800782F8 0C011ACF */  jal        func_80046B3C
/* 6F62C 800782FC 00A03821 */   addu      $a3, $a1, $zero
/* 6F630 80078300 02001021 */  addu       $v0, $s0, $zero
.L80078304:
/* 6F634 80078304 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F638 80078308 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F63C 8007830C 03E00008 */  jr         $ra
/* 6F640 80078310 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078314
/* 6F644 80078314 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F648 80078318 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F64C 8007831C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F650 80078320 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F654 80078324 0C01FB65 */  jal        func_8007ED94
/* 6F658 80078328 AFB00010 */   sw        $s0, 0x10($sp)
/* 6F65C 8007832C 0C01FB4C */  jal        func_8007ED30
/* 6F660 80078330 2404004C */   addiu     $a0, $zero, 0x4C
/* 6F664 80078334 0C01B8E4 */  jal        func_8006E390
/* 6F668 80078338 00402021 */   addu      $a0, $v0, $zero
/* 6F66C 8007833C 0C01FB72 */  jal        func_8007EDC8
/* 6F670 80078340 00408021 */   addu      $s0, $v0, $zero
/* 6F674 80078344 16000008 */  bnez       $s0, .L80078368
/* 6F678 80078348 02001021 */   addu      $v0, $s0, $zero
/* 6F67C 8007834C 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F680 80078350 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F684 80078354 00002821 */  addu       $a1, $zero, $zero
/* 6F688 80078358 00A03021 */  addu       $a2, $a1, $zero
/* 6F68C 8007835C 0C011ACF */  jal        func_80046B3C
/* 6F690 80078360 00A03821 */   addu      $a3, $a1, $zero
/* 6F694 80078364 02001021 */  addu       $v0, $s0, $zero
.L80078368:
/* 6F698 80078368 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F69C 8007836C 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F6A0 80078370 03E00008 */  jr         $ra
/* 6F6A4 80078374 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078378
/* 6F6A8 80078378 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F6AC 8007837C 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F6B0 80078380 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F6B4 80078384 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F6B8 80078388 0C01FB65 */  jal        func_8007ED94
/* 6F6BC 8007838C AFB00010 */   sw        $s0, 0x10($sp)
/* 6F6C0 80078390 0C01FB4C */  jal        func_8007ED30
/* 6F6C4 80078394 2404001C */   addiu     $a0, $zero, 0x1C
/* 6F6C8 80078398 0C01DB64 */  jal        func_80076D90
/* 6F6CC 8007839C 00402021 */   addu      $a0, $v0, $zero
/* 6F6D0 800783A0 0C01FB72 */  jal        func_8007EDC8
/* 6F6D4 800783A4 00408021 */   addu      $s0, $v0, $zero
/* 6F6D8 800783A8 16000008 */  bnez       $s0, .L800783CC
/* 6F6DC 800783AC 02001021 */   addu      $v0, $s0, $zero
/* 6F6E0 800783B0 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F6E4 800783B4 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F6E8 800783B8 00002821 */  addu       $a1, $zero, $zero
/* 6F6EC 800783BC 00A03021 */  addu       $a2, $a1, $zero
/* 6F6F0 800783C0 0C011ACF */  jal        func_80046B3C
/* 6F6F4 800783C4 00A03821 */   addu      $a3, $a1, $zero
/* 6F6F8 800783C8 02001021 */  addu       $v0, $s0, $zero
.L800783CC:
/* 6F6FC 800783CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F700 800783D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F704 800783D4 03E00008 */  jr         $ra
/* 6F708 800783D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800783DC
/* 6F70C 800783DC 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F710 800783E0 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F714 800783E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F718 800783E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F71C 800783EC 0C01FB65 */  jal        func_8007ED94
/* 6F720 800783F0 AFB00010 */   sw        $s0, 0x10($sp)
/* 6F724 800783F4 0C01FB4C */  jal        func_8007ED30
/* 6F728 800783F8 2404002C */   addiu     $a0, $zero, 0x2C
/* 6F72C 800783FC 0C0380A8 */  jal        func_race_800E02A0
/* 6F730 80078400 00402021 */   addu      $a0, $v0, $zero
/* 6F734 80078404 0C01FB72 */  jal        func_8007EDC8
/* 6F738 80078408 00408021 */   addu      $s0, $v0, $zero
/* 6F73C 8007840C 16000008 */  bnez       $s0, .L80078430
/* 6F740 80078410 02001021 */   addu      $v0, $s0, $zero
/* 6F744 80078414 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F748 80078418 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F74C 8007841C 00002821 */  addu       $a1, $zero, $zero
/* 6F750 80078420 00A03021 */  addu       $a2, $a1, $zero
/* 6F754 80078424 0C011ACF */  jal        func_80046B3C
/* 6F758 80078428 00A03821 */   addu      $a3, $a1, $zero
/* 6F75C 8007842C 02001021 */  addu       $v0, $s0, $zero
.L80078430:
/* 6F760 80078430 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F764 80078434 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F768 80078438 03E00008 */  jr         $ra
/* 6F76C 8007843C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078440
/* 6F770 80078440 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F774 80078444 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F778 80078448 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F77C 8007844C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F780 80078450 0C01FB65 */  jal        func_8007ED94
/* 6F784 80078454 AFB00010 */   sw        $s0, 0x10($sp)
/* 6F788 80078458 0C01FB4C */  jal        func_8007ED30
/* 6F78C 8007845C 24040290 */   addiu     $a0, $zero, 0x290
/* 6F790 80078460 0C01A5B0 */  jal        func_800696C0
/* 6F794 80078464 00402021 */   addu      $a0, $v0, $zero
/* 6F798 80078468 0C01FB72 */  jal        func_8007EDC8
/* 6F79C 8007846C 00408021 */   addu      $s0, $v0, $zero
/* 6F7A0 80078470 16000008 */  bnez       $s0, .L80078494
/* 6F7A4 80078474 02001021 */   addu      $v0, $s0, $zero
/* 6F7A8 80078478 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F7AC 8007847C 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F7B0 80078480 00002821 */  addu       $a1, $zero, $zero
/* 6F7B4 80078484 00A03021 */  addu       $a2, $a1, $zero
/* 6F7B8 80078488 0C011ACF */  jal        func_80046B3C
/* 6F7BC 8007848C 00A03821 */   addu      $a3, $a1, $zero
/* 6F7C0 80078490 02001021 */  addu       $v0, $s0, $zero
.L80078494:
/* 6F7C4 80078494 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F7C8 80078498 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F7CC 8007849C 03E00008 */  jr         $ra
/* 6F7D0 800784A0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800784A4
/* 6F7D4 800784A4 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F7D8 800784A8 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F7DC 800784AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F7E0 800784B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F7E4 800784B4 0C01FB65 */  jal        func_8007ED94
/* 6F7E8 800784B8 AFB00010 */   sw        $s0, 0x10($sp)
/* 6F7EC 800784BC 0C01FB4C */  jal        func_8007ED30
/* 6F7F0 800784C0 24040140 */   addiu     $a0, $zero, 0x140
/* 6F7F4 800784C4 0C01E4A8 */  jal        func_800792A0
/* 6F7F8 800784C8 00402021 */   addu      $a0, $v0, $zero
/* 6F7FC 800784CC 0C01FB72 */  jal        func_8007EDC8
/* 6F800 800784D0 00408021 */   addu      $s0, $v0, $zero
/* 6F804 800784D4 16000008 */  bnez       $s0, .L800784F8
/* 6F808 800784D8 02001021 */   addu      $v0, $s0, $zero
/* 6F80C 800784DC 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F810 800784E0 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F814 800784E4 00002821 */  addu       $a1, $zero, $zero
/* 6F818 800784E8 00A03021 */  addu       $a2, $a1, $zero
/* 6F81C 800784EC 0C011ACF */  jal        func_80046B3C
/* 6F820 800784F0 00A03821 */   addu      $a3, $a1, $zero
/* 6F824 800784F4 02001021 */  addu       $v0, $s0, $zero
.L800784F8:
/* 6F828 800784F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F82C 800784FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F830 80078500 03E00008 */  jr         $ra
/* 6F834 80078504 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078508
/* 6F838 80078508 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F83C 8007850C 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F840 80078510 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F844 80078514 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F848 80078518 0C01FB65 */  jal        func_8007ED94
/* 6F84C 8007851C AFB00010 */   sw        $s0, 0x10($sp)
/* 6F850 80078520 0C01FB4C */  jal        func_8007ED30
/* 6F854 80078524 24040054 */   addiu     $a0, $zero, 0x54
/* 6F858 80078528 0C01B214 */  jal        func_8006C850
/* 6F85C 8007852C 00402021 */   addu      $a0, $v0, $zero
/* 6F860 80078530 0C01FB72 */  jal        func_8007EDC8
/* 6F864 80078534 00408021 */   addu      $s0, $v0, $zero
/* 6F868 80078538 16000008 */  bnez       $s0, .L8007855C
/* 6F86C 8007853C 02001021 */   addu      $v0, $s0, $zero
/* 6F870 80078540 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F874 80078544 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F878 80078548 00002821 */  addu       $a1, $zero, $zero
/* 6F87C 8007854C 00A03021 */  addu       $a2, $a1, $zero
/* 6F880 80078550 0C011ACF */  jal        func_80046B3C
/* 6F884 80078554 00A03821 */   addu      $a3, $a1, $zero
/* 6F888 80078558 02001021 */  addu       $v0, $s0, $zero
.L8007855C:
/* 6F88C 8007855C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F890 80078560 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F894 80078564 03E00008 */  jr         $ra
/* 6F898 80078568 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007856C
/* 6F89C 8007856C 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F8A0 80078570 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F8A4 80078574 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F8A8 80078578 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F8AC 8007857C 0C01FB65 */  jal        func_8007ED94
/* 6F8B0 80078580 AFB00010 */   sw        $s0, 0x10($sp)
/* 6F8B4 80078584 0C01FB4C */  jal        func_8007ED30
/* 6F8B8 80078588 24040050 */   addiu     $a0, $zero, 0x50
/* 6F8BC 8007858C 0C01AF80 */  jal        func_8006BE00
/* 6F8C0 80078590 00402021 */   addu      $a0, $v0, $zero
/* 6F8C4 80078594 0C01FB72 */  jal        func_8007EDC8
/* 6F8C8 80078598 00408021 */   addu      $s0, $v0, $zero
/* 6F8CC 8007859C 16000008 */  bnez       $s0, .L800785C0
/* 6F8D0 800785A0 02001021 */   addu      $v0, $s0, $zero
/* 6F8D4 800785A4 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F8D8 800785A8 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F8DC 800785AC 00002821 */  addu       $a1, $zero, $zero
/* 6F8E0 800785B0 00A03021 */  addu       $a2, $a1, $zero
/* 6F8E4 800785B4 0C011ACF */  jal        func_80046B3C
/* 6F8E8 800785B8 00A03821 */   addu      $a3, $a1, $zero
/* 6F8EC 800785BC 02001021 */  addu       $v0, $s0, $zero
.L800785C0:
/* 6F8F0 800785C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F8F4 800785C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F8F8 800785C8 03E00008 */  jr         $ra
/* 6F8FC 800785CC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800785D0
/* 6F900 800785D0 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F904 800785D4 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F908 800785D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F90C 800785DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F910 800785E0 0C01FB65 */  jal        func_8007ED94
/* 6F914 800785E4 AFB00010 */   sw        $s0, 0x10($sp)
/* 6F918 800785E8 0C01FB4C */  jal        func_8007ED30
/* 6F91C 800785EC 2404005C */   addiu     $a0, $zero, 0x5C
/* 6F920 800785F0 00408021 */  addu       $s0, $v0, $zero
/* 6F924 800785F4 0C01A33C */  jal        func_80068CF0
/* 6F928 800785F8 02002021 */   addu      $a0, $s0, $zero
/* 6F92C 800785FC 3C028004 */  lui        $v0, %hi(D_8003F560)
/* 6F930 80078600 2442F560 */  addiu      $v0, $v0, %lo(D_8003F560)
/* 6F934 80078604 0C01FB72 */  jal        func_8007EDC8
/* 6F938 80078608 AE020024 */   sw        $v0, 0x24($s0)
/* 6F93C 8007860C 16000008 */  bnez       $s0, .L80078630
/* 6F940 80078610 02001021 */   addu      $v0, $s0, $zero
/* 6F944 80078614 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F948 80078618 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F94C 8007861C 00002821 */  addu       $a1, $zero, $zero
/* 6F950 80078620 00A03021 */  addu       $a2, $a1, $zero
/* 6F954 80078624 0C011ACF */  jal        func_80046B3C
/* 6F958 80078628 00A03821 */   addu      $a3, $a1, $zero
/* 6F95C 8007862C 02001021 */  addu       $v0, $s0, $zero
.L80078630:
/* 6F960 80078630 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F964 80078634 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F968 80078638 03E00008 */  jr         $ra
/* 6F96C 8007863C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078640
/* 6F970 80078640 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F974 80078644 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F978 80078648 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F97C 8007864C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F980 80078650 0C01FB65 */  jal        func_8007ED94
/* 6F984 80078654 AFB00010 */   sw        $s0, 0x10($sp)
/* 6F988 80078658 0C01FB4C */  jal        func_8007ED30
/* 6F98C 8007865C 2404001C */   addiu     $a0, $zero, 0x1C
/* 6F990 80078660 0C01B60C */  jal        func_8006D830
/* 6F994 80078664 00402021 */   addu      $a0, $v0, $zero
/* 6F998 80078668 0C01FB72 */  jal        func_8007EDC8
/* 6F99C 8007866C 00408021 */   addu      $s0, $v0, $zero
/* 6F9A0 80078670 16000008 */  bnez       $s0, .L80078694
/* 6F9A4 80078674 02001021 */   addu      $v0, $s0, $zero
/* 6F9A8 80078678 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6F9AC 8007867C 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6F9B0 80078680 00002821 */  addu       $a1, $zero, $zero
/* 6F9B4 80078684 00A03021 */  addu       $a2, $a1, $zero
/* 6F9B8 80078688 0C011ACF */  jal        func_80046B3C
/* 6F9BC 8007868C 00A03821 */   addu      $a3, $a1, $zero
/* 6F9C0 80078690 02001021 */  addu       $v0, $s0, $zero
.L80078694:
/* 6F9C4 80078694 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F9C8 80078698 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F9CC 8007869C 03E00008 */  jr         $ra
/* 6F9D0 800786A0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800786A4
/* 6F9D4 800786A4 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6F9D8 800786A8 8C447300 */  lw         $a0, %lo(D_80087300)($v0)
/* 6F9DC 800786AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F9E0 800786B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F9E4 800786B4 0C01FB65 */  jal        func_8007ED94
/* 6F9E8 800786B8 AFB00010 */   sw        $s0, 0x10($sp)
/* 6F9EC 800786BC 0C01FB4C */  jal        func_8007ED30
/* 6F9F0 800786C0 24040028 */   addiu     $a0, $zero, 0x28
/* 6F9F4 800786C4 0C01AE64 */  jal        func_8006B990
/* 6F9F8 800786C8 00402021 */   addu      $a0, $v0, $zero
/* 6F9FC 800786CC 0C01FB72 */  jal        func_8007EDC8
/* 6FA00 800786D0 00408021 */   addu      $s0, $v0, $zero
/* 6FA04 800786D4 16000008 */  bnez       $s0, .L800786F8
/* 6FA08 800786D8 02001021 */   addu      $v0, $s0, $zero
/* 6FA0C 800786DC 3C048004 */  lui        $a0, %hi(D_8003F610)
/* 6FA10 800786E0 2484F610 */  addiu      $a0, $a0, %lo(D_8003F610)
/* 6FA14 800786E4 00002821 */  addu       $a1, $zero, $zero
/* 6FA18 800786E8 00A03021 */  addu       $a2, $a1, $zero
/* 6FA1C 800786EC 0C011ACF */  jal        func_80046B3C
/* 6FA20 800786F0 00A03821 */   addu      $a3, $a1, $zero
/* 6FA24 800786F4 02001021 */  addu       $v0, $s0, $zero
.L800786F8:
/* 6FA28 800786F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6FA2C 800786FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 6FA30 80078700 03E00008 */  jr         $ra
/* 6FA34 80078704 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078708
/* 6FA38 80078708 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FA3C 8007870C 10A00007 */  beqz       $a1, .L8007872C
/* 6FA40 80078710 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FA44 80078714 8CA200EC */  lw         $v0, 0xEC($a1)
/* 6FA48 80078718 84440028 */  lh         $a0, 0x28($v0)
/* 6FA4C 8007871C 8C42002C */  lw         $v0, 0x2C($v0)
/* 6FA50 80078720 00A42021 */  addu       $a0, $a1, $a0
/* 6FA54 80078724 0040F809 */  jalr       $v0
/* 6FA58 80078728 24050003 */   addiu     $a1, $zero, 0x3
.L8007872C:
/* 6FA5C 8007872C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FA60 80078730 03E00008 */  jr         $ra
/* 6FA64 80078734 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078738
/* 6FA68 80078738 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FA6C 8007873C 10A00007 */  beqz       $a1, .L8007875C
/* 6FA70 80078740 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FA74 80078744 8CA20008 */  lw         $v0, 0x8($a1)
/* 6FA78 80078748 84440008 */  lh         $a0, 0x8($v0)
/* 6FA7C 8007874C 8C42000C */  lw         $v0, 0xC($v0)
/* 6FA80 80078750 00A42021 */  addu       $a0, $a1, $a0
/* 6FA84 80078754 0040F809 */  jalr       $v0
/* 6FA88 80078758 24050003 */   addiu     $a1, $zero, 0x3
.L8007875C:
/* 6FA8C 8007875C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FA90 80078760 03E00008 */  jr         $ra
/* 6FA94 80078764 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078768
/* 6FA98 80078768 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FA9C 8007876C 10A00007 */  beqz       $a1, .L8007878C
/* 6FAA0 80078770 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FAA4 80078774 8CA20008 */  lw         $v0, 0x8($a1)
/* 6FAA8 80078778 84440008 */  lh         $a0, 0x8($v0)
/* 6FAAC 8007877C 8C42000C */  lw         $v0, 0xC($v0)
/* 6FAB0 80078780 00A42021 */  addu       $a0, $a1, $a0
/* 6FAB4 80078784 0040F809 */  jalr       $v0
/* 6FAB8 80078788 24050003 */   addiu     $a1, $zero, 0x3
.L8007878C:
/* 6FABC 8007878C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FAC0 80078790 03E00008 */  jr         $ra
/* 6FAC4 80078794 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078798
/* 6FAC8 80078798 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FACC 8007879C 10A00007 */  beqz       $a1, .L800787BC
/* 6FAD0 800787A0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FAD4 800787A4 8CA2003C */  lw         $v0, 0x3C($a1)
/* 6FAD8 800787A8 84440038 */  lh         $a0, 0x38($v0)
/* 6FADC 800787AC 8C42003C */  lw         $v0, 0x3C($v0)
/* 6FAE0 800787B0 00A42021 */  addu       $a0, $a1, $a0
/* 6FAE4 800787B4 0040F809 */  jalr       $v0
/* 6FAE8 800787B8 24050003 */   addiu     $a1, $zero, 0x3
.L800787BC:
/* 6FAEC 800787BC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FAF0 800787C0 03E00008 */  jr         $ra
/* 6FAF4 800787C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800787C8
/* 6FAF8 800787C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FAFC 800787CC 10A00007 */  beqz       $a1, .L800787EC
/* 6FB00 800787D0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FB04 800787D4 8CA20008 */  lw         $v0, 0x8($a1)
/* 6FB08 800787D8 84440008 */  lh         $a0, 0x8($v0)
/* 6FB0C 800787DC 8C42000C */  lw         $v0, 0xC($v0)
/* 6FB10 800787E0 00A42021 */  addu       $a0, $a1, $a0
/* 6FB14 800787E4 0040F809 */  jalr       $v0
/* 6FB18 800787E8 24050003 */   addiu     $a1, $zero, 0x3
.L800787EC:
/* 6FB1C 800787EC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FB20 800787F0 03E00008 */  jr         $ra
/* 6FB24 800787F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800787F8
/* 6FB28 800787F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FB2C 800787FC 10A00007 */  beqz       $a1, .L8007881C
/* 6FB30 80078800 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FB34 80078804 8CA20028 */  lw         $v0, 0x28($a1)
/* 6FB38 80078808 84440008 */  lh         $a0, 0x8($v0)
/* 6FB3C 8007880C 8C42000C */  lw         $v0, 0xC($v0)
/* 6FB40 80078810 00A42021 */  addu       $a0, $a1, $a0
/* 6FB44 80078814 0040F809 */  jalr       $v0
/* 6FB48 80078818 24050003 */   addiu     $a1, $zero, 0x3
.L8007881C:
/* 6FB4C 8007881C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FB50 80078820 03E00008 */  jr         $ra
/* 6FB54 80078824 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078828
/* 6FB58 80078828 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FB5C 8007882C 10A00007 */  beqz       $a1, .L8007884C
/* 6FB60 80078830 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FB64 80078834 8CA2011C */  lw         $v0, 0x11C($a1)
/* 6FB68 80078838 84440018 */  lh         $a0, 0x18($v0)
/* 6FB6C 8007883C 8C42001C */  lw         $v0, 0x1C($v0)
/* 6FB70 80078840 00A42021 */  addu       $a0, $a1, $a0
/* 6FB74 80078844 0040F809 */  jalr       $v0
/* 6FB78 80078848 24050003 */   addiu     $a1, $zero, 0x3
.L8007884C:
/* 6FB7C 8007884C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FB80 80078850 03E00008 */  jr         $ra
/* 6FB84 80078854 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078858
/* 6FB88 80078858 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FB8C 8007885C 10A00007 */  beqz       $a1, .L8007887C
/* 6FB90 80078860 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FB94 80078864 8CA2012C */  lw         $v0, 0x12C($a1)
/* 6FB98 80078868 84440018 */  lh         $a0, 0x18($v0)
/* 6FB9C 8007886C 8C42001C */  lw         $v0, 0x1C($v0)
/* 6FBA0 80078870 00A42021 */  addu       $a0, $a1, $a0
/* 6FBA4 80078874 0040F809 */  jalr       $v0
/* 6FBA8 80078878 24050003 */   addiu     $a1, $zero, 0x3
.L8007887C:
/* 6FBAC 8007887C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FBB0 80078880 03E00008 */  jr         $ra
/* 6FBB4 80078884 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80078888
/* 6FBB8 80078888 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FBBC 8007888C 10A00007 */  beqz       $a1, .L800788AC
/* 6FBC0 80078890 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FBC4 80078894 8CA2004C */  lw         $v0, 0x4C($a1)
/* 6FBC8 80078898 84440030 */  lh         $a0, 0x30($v0)
/* 6FBCC 8007889C 8C420034 */  lw         $v0, 0x34($v0)
/* 6FBD0 800788A0 00A42021 */  addu       $a0, $a1, $a0
/* 6FBD4 800788A4 0040F809 */  jalr       $v0
/* 6FBD8 800788A8 24050003 */   addiu     $a1, $zero, 0x3
.L800788AC:
/* 6FBDC 800788AC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FBE0 800788B0 03E00008 */  jr         $ra
/* 6FBE4 800788B4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800788B8
/* 6FBE8 800788B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FBEC 800788BC 10A00007 */  beqz       $a1, .L800788DC
/* 6FBF0 800788C0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FBF4 800788C4 8CA2003C */  lw         $v0, 0x3C($a1)
/* 6FBF8 800788C8 84440040 */  lh         $a0, 0x40($v0)
/* 6FBFC 800788CC 8C420044 */  lw         $v0, 0x44($v0)
/* 6FC00 800788D0 00A42021 */  addu       $a0, $a1, $a0
/* 6FC04 800788D4 0040F809 */  jalr       $v0
/* 6FC08 800788D8 24050003 */   addiu     $a1, $zero, 0x3
.L800788DC:
/* 6FC0C 800788DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FC10 800788E0 03E00008 */  jr         $ra
/* 6FC14 800788E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800788E8
/* 6FC18 800788E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FC1C 800788EC 00A02021 */  addu       $a0, $a1, $zero
/* 6FC20 800788F0 10800003 */  beqz       $a0, .L80078900
/* 6FC24 800788F4 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FC28 800788F8 0C01FB5C */  jal        func_8007ED70
/* 6FC2C 800788FC 00000000 */   nop
.L80078900:
/* 6FC30 80078900 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FC34 80078904 03E00008 */  jr         $ra
/* 6FC38 80078908 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007890C
/* 6FC3C 8007890C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FC40 80078910 10A00007 */  beqz       $a1, .L80078930
/* 6FC44 80078914 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FC48 80078918 8CA20008 */  lw         $v0, 0x8($a1)
/* 6FC4C 8007891C 84440008 */  lh         $a0, 0x8($v0)
/* 6FC50 80078920 8C42000C */  lw         $v0, 0xC($v0)
/* 6FC54 80078924 00A42021 */  addu       $a0, $a1, $a0
/* 6FC58 80078928 0040F809 */  jalr       $v0
/* 6FC5C 8007892C 24050003 */   addiu     $a1, $zero, 0x3
.L80078930:
/* 6FC60 80078930 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FC64 80078934 03E00008 */  jr         $ra
/* 6FC68 80078938 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007893C
/* 6FC6C 8007893C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FC70 80078940 10A00007 */  beqz       $a1, .L80078960
/* 6FC74 80078944 AFBF0010 */   sw        $ra, 0x10($sp)
/* 6FC78 80078948 8CA20008 */  lw         $v0, 0x8($a1)
/* 6FC7C 8007894C 84440008 */  lh         $a0, 0x8($v0)
/* 6FC80 80078950 8C42000C */  lw         $v0, 0xC($v0)
/* 6FC84 80078954 00A42021 */  addu       $a0, $a1, $a0
/* 6FC88 80078958 0040F809 */  jalr       $v0
/* 6FC8C 8007895C 24050003 */   addiu     $a1, $zero, 0x3
.L80078960:
/* 6FC90 80078960 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FC94 80078964 03E00008 */  jr         $ra
/* 6FC98 80078968 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007896C
/* 6FC9C 8007896C 3C028008 */  lui        $v0, %hi(D_80087300)
/* 6FCA0 80078970 03E00008 */  jr         $ra
/* 6FCA4 80078974 AC447300 */   sw        $a0, %lo(D_80087300)($v0)

glabel func_80078978
/* 6FCA8 80078978 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6FCAC 8007897C AFB10014 */  sw         $s1, 0x14($sp)
/* 6FCB0 80078980 00808821 */  addu       $s1, $a0, $zero
/* 6FCB4 80078984 AFB00010 */  sw         $s0, 0x10($sp)
/* 6FCB8 80078988 00A08021 */  addu       $s0, $a1, $zero
/* 6FCBC 8007898C 26240008 */  addiu      $a0, $s1, 0x8
/* 6FCC0 80078990 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6FCC4 80078994 0C01A4C5 */  jal        func_80069314
/* 6FCC8 80078998 24050002 */   addiu     $a1, $zero, 0x2
/* 6FCCC 8007899C 3C028004 */  lui        $v0, %hi(D_8003F700)
/* 6FCD0 800789A0 2442F700 */  addiu      $v0, $v0, %lo(D_8003F700)
/* 6FCD4 800789A4 32100001 */  andi       $s0, $s0, 0x1
/* 6FCD8 800789A8 12000003 */  beqz       $s0, .L800789B8
/* 6FCDC 800789AC AE220000 */   sw        $v0, 0x0($s1)
/* 6FCE0 800789B0 0C01FB5C */  jal        func_8007ED70
/* 6FCE4 800789B4 02202021 */   addu      $a0, $s1, $zero
.L800789B8:
/* 6FCE8 800789B8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 6FCEC 800789BC 8FB10014 */  lw         $s1, 0x14($sp)
/* 6FCF0 800789C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 6FCF4 800789C4 03E00008 */  jr         $ra
/* 6FCF8 800789C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800789CC
/* 6FCFC 800789CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6FD00 800789D0 3C028004 */  lui        $v0, %hi(D_8003F700)
/* 6FD04 800789D4 2442F700 */  addiu      $v0, $v0, %lo(D_8003F700)
/* 6FD08 800789D8 30A50001 */  andi       $a1, $a1, 0x1
/* 6FD0C 800789DC AFBF0010 */  sw         $ra, 0x10($sp)
/* 6FD10 800789E0 10A00003 */  beqz       $a1, .L800789F0
/* 6FD14 800789E4 AC820000 */   sw        $v0, 0x0($a0)
/* 6FD18 800789E8 0C01FB5C */  jal        func_8007ED70
/* 6FD1C 800789EC 00000000 */   nop
.L800789F0:
/* 6FD20 800789F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6FD24 800789F4 03E00008 */  jr         $ra
/* 6FD28 800789F8 27BD0018 */   addiu     $sp, $sp, 0x18
