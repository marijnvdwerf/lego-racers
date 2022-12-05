.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViSetEvent
/* 20E20 80020220 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20E24 80020224 AFB00010 */  sw         $s0, 0x10($sp)
/* 20E28 80020228 00808021 */  addu       $s0, $a0, $zero
/* 20E2C 8002022C AFB10014 */  sw         $s1, 0x14($sp)
/* 20E30 80020230 00A08821 */  addu       $s1, $a1, $zero
/* 20E34 80020234 AFB20018 */  sw         $s2, 0x18($sp)
/* 20E38 80020238 AFBF001C */  sw         $ra, 0x1C($sp)
/* 20E3C 8002023C 0C005734 */  jal        func_80015CD0
/* 20E40 80020240 00C09021 */   addu      $s2, $a2, $zero
/* 20E44 80020244 3C038003 */  lui        $v1, %hi(D_80031134)
/* 20E48 80020248 8C631134 */  lw         $v1, %lo(D_80031134)($v1)
/* 20E4C 8002024C 00402021 */  addu       $a0, $v0, $zero
/* 20E50 80020250 AC700010 */  sw         $s0, 0x10($v1)
/* 20E54 80020254 AC710014 */  sw         $s1, 0x14($v1)
/* 20E58 80020258 0C005750 */  jal        func_80015D40
/* 20E5C 8002025C A4720002 */   sh        $s2, 0x2($v1)
/* 20E60 80020260 8FBF001C */  lw         $ra, 0x1C($sp)
/* 20E64 80020264 8FB20018 */  lw         $s2, 0x18($sp)
/* 20E68 80020268 8FB10014 */  lw         $s1, 0x14($sp)
/* 20E6C 8002026C 8FB00010 */  lw         $s0, 0x10($sp)
/* 20E70 80020270 03E00008 */  jr         $ra
/* 20E74 80020274 27BD0020 */   addiu     $sp, $sp, 0x20
/* 20E78 80020278 00000000 */  nop
/* 20E7C 8002027C 00000000 */  nop
