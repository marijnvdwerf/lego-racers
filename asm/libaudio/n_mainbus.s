.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel n_alMainBusPull
/* 165C0 800159C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 165C4 800159C4 3C020200 */  lui        $v0, (0x20004E0 >> 16)
/* 165C8 800159C8 344204E0 */  ori        $v0, $v0, (0x20004E0 & 0xFFFF)
/* 165CC 800159CC AFBF0010 */  sw         $ra, 0x10($sp)
/* 165D0 800159D0 ACA20000 */  sw         $v0, 0x0($a1)
/* 165D4 800159D4 3C028003 */  lui        $v0, %hi(n_syn)
/* 165D8 800159D8 8C430C84 */  lw         $v1, %lo(n_syn)($v0)
/* 165DC 800159DC 240202E0 */  addiu      $v0, $zero, 0x2E0
/* 165E0 800159E0 ACA20004 */  sw         $v0, 0x4($a1)
/* 165E4 800159E4 8C620030 */  lw         $v0, 0x30($v1)
/* 165E8 800159E8 8C420004 */  lw         $v0, 0x4($v0)
/* 165EC 800159EC 0040F809 */  jalr       $v0
/* 165F0 800159F0 24A50008 */   addiu     $a1, $a1, 0x8
/* 165F4 800159F4 00401821 */  addu       $v1, $v0, $zero
/* 165F8 800159F8 00602821 */  addu       $a1, $v1, $zero
/* 165FC 800159FC 24630008 */  addiu      $v1, $v1, 0x8
/* 16600 80015A00 3C060C00 */  lui        $a2, (0xC007FFF >> 16)
/* 16604 80015A04 34C67FFF */  ori        $a2, $a2, (0xC007FFF & 0xFFFF)
/* 16608 80015A08 3C0407C0 */  lui        $a0, (0x7C004E0 >> 16)
/* 1660C 80015A0C 348404E0 */  ori        $a0, $a0, (0x7C004E0 & 0xFFFF)
/* 16610 80015A10 3C070930 */  lui        $a3, (0x9300650 >> 16)
/* 16614 80015A14 34E70650 */  ori        $a3, $a3, (0x9300650 & 0xFFFF)
/* 16618 80015A18 ACA60000 */  sw         $a2, 0x0($a1)
/* 1661C 80015A1C ACA40004 */  sw         $a0, 0x4($a1)
/* 16620 80015A20 AC660000 */  sw         $a2, 0x0($v1)
/* 16624 80015A24 AC670004 */  sw         $a3, 0x4($v1)
/* 16628 80015A28 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1662C 80015A2C 24620008 */  addiu      $v0, $v1, 0x8
/* 16630 80015A30 03E00008 */  jr         $ra
/* 16634 80015A34 27BD0018 */   addiu     $sp, $sp, 0x18
