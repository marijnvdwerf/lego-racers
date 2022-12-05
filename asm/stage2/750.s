.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007F0F0
/* 76420 8007F0F0 00801021 */  addu       $v0, $a0, $zero
/* 76424 8007F0F4 3C018004 */  lui        $at, %hi(D_800404E0)
/* 76428 8007F0F8 C42004E0 */  lwc1       $f0, %lo(D_800404E0)($at)
/* 7642C 8007F0FC 3C018004 */  lui        $at, %hi(D_800404E4)
/* 76430 8007F100 C42204E4 */  lwc1       $f2, %lo(D_800404E4)($at)
/* 76434 8007F104 3C018004 */  lui        $at, %hi(D_800404E8)
/* 76438 8007F108 C42404E8 */  lwc1       $f4, %lo(D_800404E8)($at)
/* 7643C 8007F10C 24030001 */  addiu      $v1, $zero, 0x1
/* 76440 8007F110 AC400000 */  sw         $zero, 0x0($v0)
/* 76444 8007F114 AC400004 */  sw         $zero, 0x4($v0)
/* 76448 8007F118 AC400008 */  sw         $zero, 0x8($v0)
/* 7644C 8007F11C AC40000C */  sw         $zero, 0xC($v0)
/* 76450 8007F120 AC400010 */  sw         $zero, 0x10($v0)
/* 76454 8007F124 AC400014 */  sw         $zero, 0x14($v0)
/* 76458 8007F128 AC40001C */  sw         $zero, 0x1C($v0)
/* 7645C 8007F12C AC400020 */  sw         $zero, 0x20($v0)
/* 76460 8007F130 AC400024 */  sw         $zero, 0x24($v0)
/* 76464 8007F134 AC400028 */  sw         $zero, 0x28($v0)
/* 76468 8007F138 AC400030 */  sw         $zero, 0x30($v0)
/* 7646C 8007F13C AC400038 */  sw         $zero, 0x38($v0)
/* 76470 8007F140 AC430044 */  sw         $v1, 0x44($v0)
/* 76474 8007F144 E4400018 */  swc1       $f0, 0x18($v0)
/* 76478 8007F148 E440002C */  swc1       $f0, 0x2C($v0)
/* 7647C 8007F14C E4400034 */  swc1       $f0, 0x34($v0)
/* 76480 8007F150 E442003C */  swc1       $f2, 0x3C($v0)
/* 76484 8007F154 03E00008 */  jr         $ra
/* 76488 8007F158 E4440040 */   swc1      $f4, 0x40($v0)
