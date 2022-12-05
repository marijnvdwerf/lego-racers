.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001A6B0
/* 1B2B0 8001A6B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1B2B4 8001A6B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1B2B8 8001A6B8 00808821 */  addu       $s1, $a0, $zero
/* 1B2BC 8001A6BC 00051400 */  sll        $v0, $a1, 16
/* 1B2C0 8001A6C0 00C02821 */  addu       $a1, $a2, $zero
/* 1B2C4 8001A6C4 00E03021 */  addu       $a2, $a3, $zero
/* 1B2C8 8001A6C8 00021403 */  sra        $v0, $v0, 16
/* 1B2CC 8001A6CC AFB00010 */  sw         $s0, 0x10($sp)
/* 1B2D0 8001A6D0 00028080 */  sll        $s0, $v0, 2
/* 1B2D4 8001A6D4 02028021 */  addu       $s0, $s0, $v0
/* 1B2D8 8001A6D8 00108080 */  sll        $s0, $s0, 2
/* 1B2DC 8001A6DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 1B2E0 8001A6E0 8E240034 */  lw         $a0, 0x34($s1)
/* 1B2E4 8001A6E4 02028023 */  subu       $s0, $s0, $v0
/* 1B2E8 8001A6E8 00108080 */  sll        $s0, $s0, 2
/* 1B2EC 8001A6EC 00902021 */  addu       $a0, $a0, $s0
/* 1B2F0 8001A6F0 0C005B75 */  jal        func_80016DD4
/* 1B2F4 8001A6F4 24840020 */   addiu     $a0, $a0, 0x20
/* 1B2F8 8001A6F8 8E260034 */  lw         $a2, 0x34($s1)
/* 1B2FC 8001A6FC 24050001 */  addiu      $a1, $zero, 0x1
/* 1B300 8001A700 00D03021 */  addu       $a2, $a2, $s0
/* 1B304 8001A704 0C006579 */  jal        alFxParam
/* 1B308 8001A708 24C40020 */   addiu     $a0, $a2, 0x20
/* 1B30C 8001A70C 8E260034 */  lw         $a2, 0x34($s1)
/* 1B310 8001A710 8E240030 */  lw         $a0, 0x30($s1)
/* 1B314 8001A714 24050002 */  addiu      $a1, $zero, 0x2
/* 1B318 8001A718 00D03021 */  addu       $a2, $a2, $s0
/* 1B31C 8001A71C 0C0063E4 */  jal        func_80018F90
/* 1B320 8001A720 24C60020 */   addiu     $a2, $a2, 0x20
/* 1B324 8001A724 8E220034 */  lw         $v0, 0x34($s1)
/* 1B328 8001A728 00501021 */  addu       $v0, $v0, $s0
/* 1B32C 8001A72C 24420020 */  addiu      $v0, $v0, 0x20
/* 1B330 8001A730 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1B334 8001A734 8FB10014 */  lw         $s1, 0x14($sp)
/* 1B338 8001A738 8FB00010 */  lw         $s0, 0x10($sp)
/* 1B33C 8001A73C 03E00008 */  jr         $ra
/* 1B340 8001A740 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1B344 8001A744 00000000 */  nop
/* 1B348 8001A748 00000000 */  nop
/* 1B34C 8001A74C 00000000 */  nop
