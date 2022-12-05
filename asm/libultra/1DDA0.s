.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osCreateMesgQueue
/* 1DDA0 8001D1A0 3C028003 */  lui        $v0, %hi(D_800310A0)
/* 1DDA4 8001D1A4 244210A0 */  addiu      $v0, $v0, %lo(D_800310A0)
/* 1DDA8 8001D1A8 AC820000 */  sw         $v0, 0x0($a0)
/* 1DDAC 8001D1AC AC820004 */  sw         $v0, 0x4($a0)
/* 1DDB0 8001D1B0 AC800008 */  sw         $zero, 0x8($a0)
/* 1DDB4 8001D1B4 AC80000C */  sw         $zero, 0xC($a0)
/* 1DDB8 8001D1B8 AC860010 */  sw         $a2, 0x10($a0)
/* 1DDBC 8001D1BC 03E00008 */  jr         $ra
/* 1DDC0 8001D1C0 AC850014 */   sw        $a1, 0x14($a0)
/* 1DDC4 8001D1C4 00000000 */  nop
/* 1DDC8 8001D1C8 00000000 */  nop
/* 1DDCC 8001D1CC 00000000 */  nop
