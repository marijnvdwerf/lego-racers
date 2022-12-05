.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80016620
/* 17220 80016620 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17224 80016624 AFB00010 */  sw         $s0, 0x10($sp)
/* 17228 80016628 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1722C 8001662C 0C005734 */  jal        func_80015CD0
/* 17230 80016630 00808021 */   addu      $s0, $a0, $zero
/* 17234 80016634 3C038003 */  lui        $v1, %hi(D_80032400)
/* 17238 80016638 8C632400 */  lw         $v1, %lo(D_80032400)($v1)
/* 1723C 8001663C 00701825 */  or         $v1, $v1, $s0
/* 17240 80016640 3C018003 */  lui        $at, %hi(D_80032400)
/* 17244 80016644 AC232400 */  sw         $v1, %lo(D_80032400)($at)
/* 17248 80016648 0C005750 */  jal        func_80015D40
/* 1724C 8001664C 00402021 */   addu      $a0, $v0, $zero
/* 17250 80016650 8FBF0014 */  lw         $ra, 0x14($sp)
/* 17254 80016654 8FB00010 */  lw         $s0, 0x10($sp)
/* 17258 80016658 03E00008 */  jr         $ra
/* 1725C 8001665C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80016660
/* 17260 80016660 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17264 80016664 AFB00010 */  sw         $s0, 0x10($sp)
/* 17268 80016668 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1726C 8001666C 0C005734 */  jal        func_80015CD0
/* 17270 80016670 00808021 */   addu      $s0, $a0, $zero
/* 17274 80016674 3C038003 */  lui        $v1, %hi(D_80032400)
/* 17278 80016678 8C632400 */  lw         $v1, %lo(D_80032400)($v1)
/* 1727C 8001667C 00108027 */  nor        $s0, $zero, $s0
/* 17280 80016680 36100401 */  ori        $s0, $s0, 0x401
/* 17284 80016684 00701824 */  and        $v1, $v1, $s0
/* 17288 80016688 3C018003 */  lui        $at, %hi(D_80032400)
/* 1728C 8001668C AC232400 */  sw         $v1, %lo(D_80032400)($at)
/* 17290 80016690 0C005750 */  jal        func_80015D40
/* 17294 80016694 00402021 */   addu      $a0, $v0, $zero
/* 17298 80016698 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1729C 8001669C 8FB00010 */  lw         $s0, 0x10($sp)
/* 172A0 800166A0 03E00008 */  jr         $ra
/* 172A4 800166A4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 172A8 800166A8 00000000 */  nop
/* 172AC 800166AC 00000000 */  nop
