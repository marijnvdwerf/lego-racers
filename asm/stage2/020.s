.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800419D0
/* 38D00 800419D0 00801021 */  addu       $v0, $a0, $zero
/* 38D04 800419D4 AC400000 */  sw         $zero, 0x0($v0)
/* 38D08 800419D8 03E00008 */  jr         $ra
/* 38D0C 800419DC A0400004 */   sb        $zero, 0x4($v0)

glabel func_800419E0
/* 38D10 800419E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 38D14 800419E4 30A50001 */  andi       $a1, $a1, 0x1
/* 38D18 800419E8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 38D1C 800419EC AC800000 */  sw         $zero, 0x0($a0)
/* 38D20 800419F0 10A00003 */  beqz       $a1, .L80041A00
/* 38D24 800419F4 A0800004 */   sb        $zero, 0x4($a0)
/* 38D28 800419F8 0C01FB5C */  jal        func_8007ED70
/* 38D2C 800419FC 00000000 */   nop
.L80041A00:
/* 38D30 80041A00 8FBF0010 */  lw         $ra, 0x10($sp)
/* 38D34 80041A04 03E00008 */  jr         $ra
/* 38D38 80041A08 27BD0018 */   addiu     $sp, $sp, 0x18
