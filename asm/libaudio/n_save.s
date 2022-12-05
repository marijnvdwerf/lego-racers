.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel n_alSavePull
/* 16570 80015970 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 16574 80015974 AFBF0010 */  sw         $ra, 0x10($sp)
/* 16578 80015978 0C005670 */  jal        n_alMainBusPull
/* 1657C 8001597C 00000000 */   nop
/* 16580 80015980 00401821 */  addu       $v1, $v0, $zero
/* 16584 80015984 00602021 */  addu       $a0, $v1, $zero
/* 16588 80015988 24630008 */  addiu      $v1, $v1, 0x8
/* 1658C 8001598C 3C020D00 */  lui        $v0, (0xD000000 >> 16)
/* 16590 80015990 AC820000 */  sw         $v0, 0x0($a0)
/* 16594 80015994 3C028003 */  lui        $v0, %hi(n_syn)
/* 16598 80015998 8C440C84 */  lw         $a0, %lo(n_syn)($v0)
/* 1659C 8001599C 3C02062E */  lui        $v0, (0x62E0000 >> 16)
/* 165A0 800159A0 AC620000 */  sw         $v0, 0x0($v1)
/* 165A4 800159A4 8C840048 */  lw         $a0, 0x48($a0)
/* 165A8 800159A8 AC640004 */  sw         $a0, 0x4($v1)
/* 165AC 800159AC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 165B0 800159B0 24620008 */  addiu      $v0, $v1, 0x8
/* 165B4 800159B4 03E00008 */  jr         $ra
/* 165B8 800159B8 27BD0018 */   addiu     $sp, $sp, 0x18
