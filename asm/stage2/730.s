.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007ED30
/* 76060 8007ED30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 76064 8007ED34 00803021 */  addu       $a2, $a0, $zero
/* 76068 8007ED38 3C048008 */  lui        $a0, %hi(D_80087570)
/* 7606C 8007ED3C 3C038008 */  lui        $v1, %hi(D_80087780)
/* 76070 8007ED40 3C028008 */  lui        $v0, %hi(D_800877C0)
/* 76074 8007ED44 8C4277C0 */  lw         $v0, %lo(D_800877C0)($v0)
/* 76078 8007ED48 24637780 */  addiu      $v1, $v1, %lo(D_80087780)
/* 7607C 8007ED4C AFBF0010 */  sw         $ra, 0x10($sp)
/* 76080 8007ED50 00021080 */  sll        $v0, $v0, 2
/* 76084 8007ED54 00431021 */  addu       $v0, $v0, $v1
/* 76088 8007ED58 8C450000 */  lw         $a1, 0x0($v0)
/* 7608C 8007ED5C 0C01FABA */  jal        func_8007EAE8
/* 76090 8007ED60 24847570 */   addiu     $a0, $a0, %lo(D_80087570)
/* 76094 8007ED64 8FBF0010 */  lw         $ra, 0x10($sp)
/* 76098 8007ED68 03E00008 */  jr         $ra
/* 7609C 8007ED6C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007ED70
/* 760A0 8007ED70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 760A4 8007ED74 00802821 */  addu       $a1, $a0, $zero
/* 760A8 8007ED78 3C048008 */  lui        $a0, %hi(D_80087570)
/* 760AC 8007ED7C AFBF0010 */  sw         $ra, 0x10($sp)
/* 760B0 8007ED80 0C01FAF6 */  jal        func_8007EBD8
/* 760B4 8007ED84 24847570 */   addiu     $a0, $a0, %lo(D_80087570)
/* 760B8 8007ED88 8FBF0010 */  lw         $ra, 0x10($sp)
/* 760BC 8007ED8C 03E00008 */  jr         $ra
/* 760C0 8007ED90 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007ED94
/* 760C4 8007ED94 3C028008 */  lui        $v0, %hi(D_800877C0)
/* 760C8 8007ED98 8C4377C0 */  lw         $v1, %lo(D_800877C0)($v0)
/* 760CC 8007ED9C 24650001 */  addiu      $a1, $v1, 0x1
/* 760D0 8007EDA0 AC4577C0 */  sw         $a1, %lo(D_800877C0)($v0)
/* 760D4 8007EDA4 28A20010 */  slti       $v0, $a1, 0x10
/* 760D8 8007EDA8 10400005 */  beqz       $v0, .L8007EDC0
/* 760DC 8007EDAC 3C038008 */   lui       $v1, %hi(D_80087780)
/* 760E0 8007EDB0 24637780 */  addiu      $v1, $v1, %lo(D_80087780)
/* 760E4 8007EDB4 00051080 */  sll        $v0, $a1, 2
/* 760E8 8007EDB8 00431021 */  addu       $v0, $v0, $v1
/* 760EC 8007EDBC AC440000 */  sw         $a0, 0x0($v0)
.L8007EDC0:
/* 760F0 8007EDC0 03E00008 */  jr         $ra
/* 760F4 8007EDC4 00000000 */   nop

glabel func_8007EDC8
/* 760F8 8007EDC8 3C038008 */  lui        $v1, %hi(D_80087780)
/* 760FC 8007EDCC 3C058008 */  lui        $a1, %hi(D_800877C0)
/* 76100 8007EDD0 8CA477C0 */  lw         $a0, %lo(D_800877C0)($a1)
/* 76104 8007EDD4 24637780 */  addiu      $v1, $v1, %lo(D_80087780)
/* 76108 8007EDD8 00041080 */  sll        $v0, $a0, 2
/* 7610C 8007EDDC 00431021 */  addu       $v0, $v0, $v1
/* 76110 8007EDE0 2403FFFF */  addiu      $v1, $zero, -0x1
/* 76114 8007EDE4 00832021 */  addu       $a0, $a0, $v1
/* 76118 8007EDE8 AC430000 */  sw         $v1, 0x0($v0)
/* 7611C 8007EDEC 03E00008 */  jr         $ra
/* 76120 8007EDF0 ACA477C0 */   sw        $a0, %lo(D_800877C0)($a1)

glabel func_8007EDF4
/* 76124 8007EDF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 76128 8007EDF8 3C048008 */  lui        $a0, %hi(D_80087570)
/* 7612C 8007EDFC AFBF0010 */  sw         $ra, 0x10($sp)
/* 76130 8007EE00 0C01F964 */  jal        func_8007E590
/* 76134 8007EE04 24847570 */   addiu     $a0, $a0, %lo(D_80087570)
/* 76138 8007EE08 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7613C 8007EE0C 03E00008 */  jr         $ra
/* 76140 8007EE10 27BD0018 */   addiu     $sp, $sp, 0x18
