.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osVirtualToPhysical
/* 1BAC0 8001AEC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1BAC4 8001AEC4 3C031FFF */  lui        $v1, (0x1FFFFFFF >> 16)
/* 1BAC8 8001AEC8 3463FFFF */  ori        $v1, $v1, (0x1FFFFFFF & 0xFFFF)
/* 1BACC 8001AECC 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 1BAD0 8001AED0 00821023 */  subu       $v0, $a0, $v0
/* 1BAD4 8001AED4 0062102B */  sltu       $v0, $v1, $v0
/* 1BAD8 8001AED8 1040000A */  beqz       $v0, .L8001AF04
/* 1BADC 8001AEDC AFBF0010 */   sw        $ra, 0x10($sp)
/* 1BAE0 8001AEE0 3C026000 */  lui        $v0, (0x60000000 >> 16)
/* 1BAE4 8001AEE4 00821021 */  addu       $v0, $a0, $v0
/* 1BAE8 8001AEE8 0062102B */  sltu       $v0, $v1, $v0
/* 1BAEC 8001AEEC 10400006 */  beqz       $v0, .L8001AF08
/* 1BAF0 8001AEF0 00831024 */   and       $v0, $a0, $v1
/* 1BAF4 8001AEF4 0C007F0C */  jal        func_8001FC30
/* 1BAF8 8001AEF8 00000000 */   nop
/* 1BAFC 8001AEFC 08006BC2 */  j          .L8001AF08
/* 1BB00 8001AF00 00000000 */   nop
.L8001AF04:
/* 1BB04 8001AF04 00831024 */  and        $v0, $a0, $v1
.L8001AF08:
/* 1BB08 8001AF08 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1BB0C 8001AF0C 03E00008 */  jr         $ra
/* 1BB10 8001AF10 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1BB14 8001AF14 00000000 */  nop
/* 1BB18 8001AF18 00000000 */  nop
/* 1BB1C 8001AF1C 00000000 */  nop
