.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViBlack
/* 213A0 800207A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 213A4 800207A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 213A8 800207A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 213AC 800207AC 0C005734 */  jal        func_80015CD0
/* 213B0 800207B0 00808021 */   addu      $s0, $a0, $zero
/* 213B4 800207B4 321000FF */  andi       $s0, $s0, 0xFF
/* 213B8 800207B8 12000006 */  beqz       $s0, .L800207D4
/* 213BC 800207BC 00402021 */   addu      $a0, $v0, $zero
/* 213C0 800207C0 3C038003 */  lui        $v1, %hi(D_80031134)
/* 213C4 800207C4 8C631134 */  lw         $v1, %lo(D_80031134)($v1)
/* 213C8 800207C8 94620000 */  lhu        $v0, 0x0($v1)
/* 213CC 800207CC 080081F9 */  j          .L800207E4
/* 213D0 800207D0 34420020 */   ori       $v0, $v0, 0x20
.L800207D4:
/* 213D4 800207D4 3C038003 */  lui        $v1, %hi(D_80031134)
/* 213D8 800207D8 8C631134 */  lw         $v1, %lo(D_80031134)($v1)
/* 213DC 800207DC 94620000 */  lhu        $v0, 0x0($v1)
/* 213E0 800207E0 3042FFDF */  andi       $v0, $v0, 0xFFDF
.L800207E4:
/* 213E4 800207E4 0C005750 */  jal        func_80015D40
/* 213E8 800207E8 A4620000 */   sh        $v0, 0x0($v1)
/* 213EC 800207EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 213F0 800207F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 213F4 800207F4 03E00008 */  jr         $ra
/* 213F8 800207F8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 213FC 800207FC 00000000 */  nop
