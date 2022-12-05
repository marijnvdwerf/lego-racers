.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DCFB0
/* 93370 800DCFB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93374 800DCFB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 93378 800DCFB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9337C 800DCFBC 0C03592C */  jal        func_race_800D64B0
/* 93380 800DCFC0 00808021 */   addu      $s0, $a0, $zero
/* 93384 800DCFC4 02002021 */  addu       $a0, $s0, $zero
/* 93388 800DCFC8 3C02800D */  lui        $v0, %hi(D_race_800CB1F0)
/* 9338C 800DCFCC 2442B1F0 */  addiu      $v0, $v0, %lo(D_race_800CB1F0)
/* 93390 800DCFD0 AE02001C */  sw         $v0, 0x1C($s0)
/* 93394 800DCFD4 0C03740E */  jal        func_race_800DD038
/* 93398 800DCFD8 A2000018 */   sb        $zero, 0x18($s0)
/* 9339C 800DCFDC 02001021 */  addu       $v0, $s0, $zero
/* 933A0 800DCFE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 933A4 800DCFE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 933A8 800DCFE8 03E00008 */  jr         $ra
/* 933AC 800DCFEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DCFF0
/* 933B0 800DCFF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 933B4 800DCFF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 933B8 800DCFF8 00808021 */  addu       $s0, $a0, $zero
/* 933BC 800DCFFC AFB10014 */  sw         $s1, 0x14($sp)
/* 933C0 800DD000 00A08821 */  addu       $s1, $a1, $zero
/* 933C4 800DD004 3C02800D */  lui        $v0, %hi(D_race_800CB1F0)
/* 933C8 800DD008 2442B1F0 */  addiu      $v0, $v0, %lo(D_race_800CB1F0)
/* 933CC 800DD00C AFBF0018 */  sw         $ra, 0x18($sp)
/* 933D0 800DD010 0C037459 */  jal        func_race_800DD164
/* 933D4 800DD014 AE02001C */   sw        $v0, 0x1C($s0)
/* 933D8 800DD018 02002021 */  addu       $a0, $s0, $zero
/* 933DC 800DD01C 0C03593D */  jal        func_race_800D64F4
/* 933E0 800DD020 02202821 */   addu      $a1, $s1, $zero
/* 933E4 800DD024 8FBF0018 */  lw         $ra, 0x18($sp)
/* 933E8 800DD028 8FB10014 */  lw         $s1, 0x14($sp)
/* 933EC 800DD02C 8FB00010 */  lw         $s0, 0x10($sp)
/* 933F0 800DD030 03E00008 */  jr         $ra
/* 933F4 800DD034 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DD038
/* 933F8 800DD038 00002821 */  addu       $a1, $zero, $zero
/* 933FC 800DD03C 00801821 */  addu       $v1, $a0, $zero
.Lrace_800DD040:
/* 93400 800DD040 AC600024 */  sw         $zero, 0x24($v1)
/* 93404 800DD044 24A50001 */  addiu      $a1, $a1, 0x1
/* 93408 800DD048 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 9340C 800DD04C 1440FFFC */  bnez       $v0, .Lrace_800DD040
/* 93410 800DD050 24630004 */   addiu     $v1, $v1, 0x4
/* 93414 800DD054 AC800030 */  sw         $zero, 0x30($a0)
/* 93418 800DD058 03E00008 */  jr         $ra
/* 9341C 800DD05C AC800020 */   sw        $zero, 0x20($a0)

glabel func_race_800DD060
/* 93420 800DD060 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 93424 800DD064 AFB00010 */  sw         $s0, 0x10($sp)
/* 93428 800DD068 00808021 */  addu       $s0, $a0, $zero
/* 9342C 800DD06C AFBF0018 */  sw         $ra, 0x18($sp)
/* 93430 800DD070 AFB10014 */  sw         $s1, 0x14($sp)
/* 93434 800DD074 8E020014 */  lw         $v0, 0x14($s0)
/* 93438 800DD078 10400003 */  beqz       $v0, .Lrace_800DD088
/* 9343C 800DD07C 00A08821 */   addu      $s1, $a1, $zero
/* 93440 800DD080 0C037459 */  jal        func_race_800DD164
/* 93444 800DD084 00000000 */   nop
.Lrace_800DD088:
/* 93448 800DD088 00001821 */  addu       $v1, $zero, $zero
/* 9344C 800DD08C 02202821 */  addu       $a1, $s1, $zero
/* 93450 800DD090 8E220000 */  lw         $v0, 0x0($s1)
/* 93454 800DD094 02002021 */  addu       $a0, $s0, $zero
/* 93458 800DD098 AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800DD09C:
/* 9345C 800DD09C 8CA20004 */  lw         $v0, 0x4($a1)
/* 93460 800DD0A0 24A50004 */  addiu      $a1, $a1, 0x4
/* 93464 800DD0A4 24630001 */  addiu      $v1, $v1, 0x1
/* 93468 800DD0A8 AC820004 */  sw         $v0, 0x4($a0)
/* 9346C 800DD0AC 2C620003 */  sltiu      $v0, $v1, 0x3
/* 93470 800DD0B0 1440FFFA */  bnez       $v0, .Lrace_800DD09C
/* 93474 800DD0B4 24840004 */   addiu     $a0, $a0, 0x4
/* 93478 800DD0B8 8E220010 */  lw         $v0, 0x10($s1)
/* 9347C 800DD0BC AE020000 */  sw         $v0, 0x0($s0)
/* 93480 800DD0C0 8E220014 */  lw         $v0, 0x14($s1)
/* 93484 800DD0C4 AE020020 */  sw         $v0, 0x20($s0)
/* 93488 800DD0C8 8E220020 */  lw         $v0, 0x20($s1)
/* 9348C 800DD0CC AE020030 */  sw         $v0, 0x30($s0)
/* 93490 800DD0D0 8E220018 */  lw         $v0, 0x18($s1)
/* 93494 800DD0D4 10400004 */  beqz       $v0, .Lrace_800DD0E8
/* 93498 800DD0D8 00000000 */   nop
/* 9349C 800DD0DC 92020018 */  lbu        $v0, 0x18($s0)
/* 934A0 800DD0E0 34420002 */  ori        $v0, $v0, 0x2
/* 934A4 800DD0E4 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DD0E8:
/* 934A8 800DD0E8 8E22001C */  lw         $v0, 0x1C($s1)
/* 934AC 800DD0EC 10400004 */  beqz       $v0, .Lrace_800DD100
/* 934B0 800DD0F0 00001821 */   addu      $v1, $zero, $zero
/* 934B4 800DD0F4 92020018 */  lbu        $v0, 0x18($s0)
/* 934B8 800DD0F8 34420004 */  ori        $v0, $v0, 0x4
/* 934BC 800DD0FC A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DD100:
/* 934C0 800DD100 3C01800D */  lui        $at, %hi(D_race_800CB1E0)
/* 934C4 800DD104 C422B1E0 */  lwc1       $f2, %lo(D_race_800CB1E0)($at)
/* 934C8 800DD108 02002821 */  addu       $a1, $s0, $zero
.Lrace_800DD10C:
/* 934CC 800DD10C 2C620003 */  sltiu      $v0, $v1, 0x3
/* 934D0 800DD110 1040000D */  beqz       $v0, .Lrace_800DD148
/* 934D4 800DD114 00032080 */   sll       $a0, $v1, 2
/* 934D8 800DD118 8E020020 */  lw         $v0, 0x20($s0)
/* 934DC 800DD11C 00441021 */  addu       $v0, $v0, $a0
/* 934E0 800DD120 C4400084 */  lwc1       $f0, 0x84($v0)
/* 934E4 800DD124 E4A00024 */  swc1       $f0, 0x24($a1)
/* 934E8 800DD128 8E020030 */  lw         $v0, 0x30($s0)
/* 934EC 800DD12C 14400004 */  bnez       $v0, .Lrace_800DD140
/* 934F0 800DD130 24A50004 */   addiu     $a1, $a1, 0x4
/* 934F4 800DD134 8E020020 */  lw         $v0, 0x20($s0)
/* 934F8 800DD138 00441021 */  addu       $v0, $v0, $a0
/* 934FC 800DD13C E4420084 */  swc1       $f2, 0x84($v0)
.Lrace_800DD140:
/* 93500 800DD140 08037443 */  j          .Lrace_800DD10C
/* 93504 800DD144 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DD148:
/* 93508 800DD148 24020001 */  addiu      $v0, $zero, 0x1
/* 9350C 800DD14C AE020014 */  sw         $v0, 0x14($s0)
/* 93510 800DD150 8FBF0018 */  lw         $ra, 0x18($sp)
/* 93514 800DD154 8FB10014 */  lw         $s1, 0x14($sp)
/* 93518 800DD158 8FB00010 */  lw         $s0, 0x10($sp)
/* 9351C 800DD15C 03E00008 */  jr         $ra
/* 93520 800DD160 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DD164
/* 93524 800DD164 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93528 800DD168 AFB00010 */  sw         $s0, 0x10($sp)
/* 9352C 800DD16C AFBF0014 */  sw         $ra, 0x14($sp)
/* 93530 800DD170 0C03740E */  jal        func_race_800DD038
/* 93534 800DD174 00808021 */   addu      $s0, $a0, $zero
/* 93538 800DD178 0C035951 */  jal        func_race_800D6544
/* 9353C 800DD17C 02002021 */   addu      $a0, $s0, $zero
/* 93540 800DD180 8FBF0014 */  lw         $ra, 0x14($sp)
/* 93544 800DD184 8FB00010 */  lw         $s0, 0x10($sp)
/* 93548 800DD188 03E00008 */  jr         $ra
/* 9354C 800DD18C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DD190
/* 93550 800DD190 00003021 */  addu       $a2, $zero, $zero
/* 93554 800DD194 3C01800D */  lui        $at, %hi(D_race_800CB1E4)
/* 93558 800DD198 C422B1E4 */  lwc1       $f2, %lo(D_race_800CB1E4)($at)
/* 9355C 800DD19C 00802821 */  addu       $a1, $a0, $zero
/* 93560 800DD1A0 00C01821 */  addu       $v1, $a2, $zero
.Lrace_800DD1A4:
/* 93564 800DD1A4 2CC20003 */  sltiu      $v0, $a2, 0x3
/* 93568 800DD1A8 10400010 */  beqz       $v0, .Lrace_800DD1EC
/* 9356C 800DD1AC 24020003 */   addiu     $v0, $zero, 0x3
/* 93570 800DD1B0 8C820030 */  lw         $v0, 0x30($a0)
/* 93574 800DD1B4 10400005 */  beqz       $v0, .Lrace_800DD1CC
/* 93578 800DD1B8 00000000 */   nop
/* 9357C 800DD1BC 8C820020 */  lw         $v0, 0x20($a0)
/* 93580 800DD1C0 00431021 */  addu       $v0, $v0, $v1
/* 93584 800DD1C4 08037477 */  j          .Lrace_800DD1DC
/* 93588 800DD1C8 E4420084 */   swc1      $f2, 0x84($v0)
.Lrace_800DD1CC:
/* 9358C 800DD1CC 8C820020 */  lw         $v0, 0x20($a0)
/* 93590 800DD1D0 C4A00024 */  lwc1       $f0, 0x24($a1)
/* 93594 800DD1D4 00431021 */  addu       $v0, $v0, $v1
/* 93598 800DD1D8 E4400084 */  swc1       $f0, 0x84($v0)
.Lrace_800DD1DC:
/* 9359C 800DD1DC 24A50004 */  addiu      $a1, $a1, 0x4
/* 935A0 800DD1E0 24630004 */  addiu      $v1, $v1, 0x4
/* 935A4 800DD1E4 08037469 */  j          .Lrace_800DD1A4
/* 935A8 800DD1E8 24C60001 */   addiu     $a2, $a2, 0x1
.Lrace_800DD1EC:
/* 935AC 800DD1EC 03E00008 */  jr         $ra
/* 935B0 800DD1F0 AC820014 */   sw        $v0, 0x14($a0)

glabel func_race_800DD1F4
/* 935B4 800DD1F4 00003021 */  addu       $a2, $zero, $zero
/* 935B8 800DD1F8 3C01800D */  lui        $at, %hi(D_race_800CB1E8)
/* 935BC 800DD1FC C422B1E8 */  lwc1       $f2, %lo(D_race_800CB1E8)($at)
/* 935C0 800DD200 00C01821 */  addu       $v1, $a2, $zero
/* 935C4 800DD204 00802821 */  addu       $a1, $a0, $zero
.Lrace_800DD208:
/* 935C8 800DD208 2CC20003 */  sltiu      $v0, $a2, 0x3
/* 935CC 800DD20C 10400010 */  beqz       $v0, .Lrace_800DD250
/* 935D0 800DD210 24020001 */   addiu     $v0, $zero, 0x1
/* 935D4 800DD214 8C820030 */  lw         $v0, 0x30($a0)
/* 935D8 800DD218 10400006 */  beqz       $v0, .Lrace_800DD234
/* 935DC 800DD21C 00000000 */   nop
/* 935E0 800DD220 8C820020 */  lw         $v0, 0x20($a0)
/* 935E4 800DD224 C4A00024 */  lwc1       $f0, 0x24($a1)
/* 935E8 800DD228 00431021 */  addu       $v0, $v0, $v1
/* 935EC 800DD22C 08037490 */  j          .Lrace_800DD240
/* 935F0 800DD230 E4400084 */   swc1      $f0, 0x84($v0)
.Lrace_800DD234:
/* 935F4 800DD234 8C820020 */  lw         $v0, 0x20($a0)
/* 935F8 800DD238 00431021 */  addu       $v0, $v0, $v1
/* 935FC 800DD23C E4420084 */  swc1       $f2, 0x84($v0)
.Lrace_800DD240:
/* 93600 800DD240 24630004 */  addiu      $v1, $v1, 0x4
/* 93604 800DD244 24A50004 */  addiu      $a1, $a1, 0x4
/* 93608 800DD248 08037482 */  j          .Lrace_800DD208
/* 9360C 800DD24C 24C60001 */   addiu     $a2, $a2, 0x1
.Lrace_800DD250:
/* 93610 800DD250 03E00008 */  jr         $ra
/* 93614 800DD254 AC820014 */   sw        $v0, 0x14($a0)

glabel func_race_800DD258
/* 93618 800DD258 8C820030 */  lw         $v0, 0x30($a0)
/* 9361C 800DD25C 03E00008 */  jr         $ra
/* 93620 800DD260 00000000 */   nop

glabel func_race_800DD264
/* 93624 800DD264 8C820020 */  lw         $v0, 0x20($a0)
/* 93628 800DD268 03E00008 */  jr         $ra
/* 9362C 800DD26C 00000000 */   nop

glabel func_race_800DD270
/* 93630 800DD270 03E00008 */  jr         $ra
/* 93634 800DD274 2402000A */   addiu     $v0, $zero, 0xA
