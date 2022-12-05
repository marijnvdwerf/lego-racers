.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004C380
/* 436B0 8004C380 00801021 */  addu       $v0, $a0, $zero
/* 436B4 8004C384 3C038004 */  lui        $v1, %hi(D_8003C890)
/* 436B8 8004C388 2463C890 */  addiu      $v1, $v1, %lo(D_8003C890)
/* 436BC 8004C38C AC430004 */  sw         $v1, 0x4($v0)
/* 436C0 8004C390 03E00008 */  jr         $ra
/* 436C4 8004C394 AC400000 */   sw        $zero, 0x0($v0)

glabel func_8004C398
/* 436C8 8004C398 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 436CC 8004C39C AFB10014 */  sw         $s1, 0x14($sp)
/* 436D0 8004C3A0 00808821 */  addu       $s1, $a0, $zero
/* 436D4 8004C3A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 436D8 8004C3A8 00A08021 */  addu       $s0, $a1, $zero
/* 436DC 8004C3AC 3C028004 */  lui        $v0, %hi(D_8003C890)
/* 436E0 8004C3B0 2442C890 */  addiu      $v0, $v0, %lo(D_8003C890)
/* 436E4 8004C3B4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 436E8 8004C3B8 0C0130FA */  jal        func_8004C3E8
/* 436EC 8004C3BC AE220004 */   sw        $v0, 0x4($s1)
/* 436F0 8004C3C0 32100001 */  andi       $s0, $s0, 0x1
/* 436F4 8004C3C4 12000003 */  beqz       $s0, .L8004C3D4
/* 436F8 8004C3C8 00000000 */   nop
/* 436FC 8004C3CC 0C01FB5C */  jal        func_8007ED70
/* 43700 8004C3D0 02202021 */   addu      $a0, $s1, $zero
.L8004C3D4:
/* 43704 8004C3D4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 43708 8004C3D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4370C 8004C3DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 43710 8004C3E0 03E00008 */  jr         $ra
/* 43714 8004C3E4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004C3E8
/* 43718 8004C3E8 03E00008 */  jr         $ra
/* 4371C 8004C3EC AC800000 */   sw        $zero, 0x0($a0)

glabel func_8004C3F0
/* 43720 8004C3F0 8C820000 */  lw         $v0, 0x0($a0)
/* 43724 8004C3F4 03E00008 */  jr         $ra
/* 43728 8004C3F8 00000000 */   nop

glabel func_8004C3FC
/* 4372C 8004C3FC 8C820000 */  lw         $v0, 0x0($a0)
/* 43730 8004C400 03E00008 */  jr         $ra
/* 43734 8004C404 0002102B */   sltu      $v0, $zero, $v0
