.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel n_alSynAddPlayer
/* 15AC0 80014EC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15AC4 80014EC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 15AC8 80014EC8 00808021 */  addu       $s0, $a0, $zero
/* 15ACC 80014ECC AFBF0014 */  sw         $ra, 0x14($sp)
/* 15AD0 80014ED0 0C0056A8 */  jal        osSetIntMask
/* 15AD4 80014ED4 24040001 */   addiu     $a0, $zero, 0x1
/* 15AD8 80014ED8 3C038003 */  lui        $v1, %hi(n_syn)
/* 15ADC 80014EDC 8C650C84 */  lw         $a1, %lo(n_syn)($v1)
/* 15AE0 80014EE0 8CA30020 */  lw         $v1, 0x20($a1)
/* 15AE4 80014EE4 AE030010 */  sw         $v1, 0x10($s0)
/* 15AE8 80014EE8 8CA30000 */  lw         $v1, 0x0($a1)
/* 15AEC 80014EEC 00402021 */  addu       $a0, $v0, $zero
/* 15AF0 80014EF0 AE030000 */  sw         $v1, 0x0($s0)
/* 15AF4 80014EF4 0C0056A8 */  jal        osSetIntMask
/* 15AF8 80014EF8 ACB00000 */   sw        $s0, 0x0($a1)
/* 15AFC 80014EFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15B00 80014F00 8FB00010 */  lw         $s0, 0x10($sp)
/* 15B04 80014F04 03E00008 */  jr         $ra
/* 15B08 80014F08 27BD0018 */   addiu     $sp, $sp, 0x18
