.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80022CD0
/* 238D0 80022CD0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 238D4 80022CD4 AFB00038 */  sw         $s0, 0x38($sp)
/* 238D8 80022CD8 00808021 */  addu       $s0, $a0, $zero
/* 238DC 80022CDC AFB1003C */  sw         $s1, 0x3C($sp)
/* 238E0 80022CE0 00A08821 */  addu       $s1, $a1, $zero
/* 238E4 80022CE4 2403001F */  addiu      $v1, $zero, 0x1F
/* 238E8 80022CE8 27A20037 */  addiu      $v0, $sp, 0x37
/* 238EC 80022CEC AFBF0040 */  sw         $ra, 0x40($sp)
.L80022CF0:
/* 238F0 80022CF0 A0510000 */  sb         $s1, 0x0($v0)
/* 238F4 80022CF4 2463FFFF */  addiu      $v1, $v1, -0x1
/* 238F8 80022CF8 0461FFFD */  bgez       $v1, .L80022CF0
/* 238FC 80022CFC 2442FFFF */   addiu     $v0, $v0, -0x1
/* 23900 80022D00 AFA00010 */  sw         $zero, 0x10($sp)
/* 23904 80022D04 8E040004 */  lw         $a0, 0x4($s0)
/* 23908 80022D08 8E050008 */  lw         $a1, 0x8($s0)
/* 2390C 80022D0C 24060400 */  addiu      $a2, $zero, 0x400
/* 23910 80022D10 0C008E70 */  jal        func_800239C0
/* 23914 80022D14 27A70018 */   addiu     $a3, $sp, 0x18
/* 23918 80022D18 50400001 */  beql       $v0, $zero, .L80022D20
/* 2391C 80022D1C A2110065 */   sb        $s1, 0x65($s0)
.L80022D20:
/* 23920 80022D20 8FBF0040 */  lw         $ra, 0x40($sp)
/* 23924 80022D24 8FB1003C */  lw         $s1, 0x3C($sp)
/* 23928 80022D28 8FB00038 */  lw         $s0, 0x38($sp)
/* 2392C 80022D2C 03E00008 */  jr         $ra
/* 23930 80022D30 27BD0048 */   addiu     $sp, $sp, 0x48
/* 23934 80022D34 00000000 */  nop
/* 23938 80022D38 00000000 */  nop
/* 2393C 80022D3C 00000000 */  nop
