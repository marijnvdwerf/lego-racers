.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alHeapInit
/* 1AB90 80019F90 30A3000F */  andi       $v1, $a1, 0xF
/* 1AB94 80019F94 24020010 */  addiu      $v0, $zero, 0x10
/* 1AB98 80019F98 00431823 */  subu       $v1, $v0, $v1
/* 1AB9C 80019F9C 10620003 */  beq        $v1, $v0, .L80019FAC
/* 1ABA0 80019FA0 00A31021 */   addu      $v0, $a1, $v1
/* 1ABA4 80019FA4 080067EC */  j          .L80019FB0
/* 1ABA8 80019FA8 AC820000 */   sw        $v0, 0x0($a0)
.L80019FAC:
/* 1ABAC 80019FAC AC850000 */  sw         $a1, 0x0($a0)
.L80019FB0:
/* 1ABB0 80019FB0 8C820000 */  lw         $v0, 0x0($a0)
/* 1ABB4 80019FB4 AC860008 */  sw         $a2, 0x8($a0)
/* 1ABB8 80019FB8 AC80000C */  sw         $zero, 0xC($a0)
/* 1ABBC 80019FBC 03E00008 */  jr         $ra
/* 1ABC0 80019FC0 AC820004 */   sw        $v0, 0x4($a0)
/* 1ABC4 80019FC4 00000000 */  nop
/* 1ABC8 80019FC8 00000000 */  nop
/* 1ABCC 80019FCC 00000000 */  nop
