.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osAiSetNextBuffer
/* 17870 80016C70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17874 80016C74 AFB00010 */  sw         $s0, 0x10($sp)
/* 17878 80016C78 00808021 */  addu       $s0, $a0, $zero
/* 1787C 80016C7C AFB10014 */  sw         $s1, 0x14($sp)
/* 17880 80016C80 AFBF0018 */  sw         $ra, 0x18($sp)
/* 17884 80016C84 0C005B44 */  jal        func_80016D10
/* 17888 80016C88 00A08821 */   addu      $s1, $a1, $zero
/* 1788C 80016C8C 14400018 */  bnez       $v0, .L80016CF0
/* 17890 80016C90 2402FFFF */   addiu     $v0, $zero, -0x1
/* 17894 80016C94 3C028003 */  lui        $v0, %hi(D_80030CE0)
/* 17898 80016C98 90420CE0 */  lbu        $v0, %lo(D_80030CE0)($v0)
/* 1789C 80016C9C 10400002 */  beqz       $v0, .L80016CA8
/* 178A0 80016CA0 02002021 */   addu      $a0, $s0, $zero
/* 178A4 80016CA4 2484E000 */  addiu      $a0, $a0, -0x2000
.L80016CA8:
/* 178A8 80016CA8 02111021 */  addu       $v0, $s0, $s1
/* 178AC 80016CAC 30421FFF */  andi       $v0, $v0, 0x1FFF
/* 178B0 80016CB0 14400004 */  bnez       $v0, .L80016CC4
/* 178B4 80016CB4 24020001 */   addiu     $v0, $zero, 0x1
/* 178B8 80016CB8 3C018003 */  lui        $at, %hi(D_80030CE0)
/* 178BC 80016CBC 08005B33 */  j          .L80016CCC
/* 178C0 80016CC0 A0220CE0 */   sb        $v0, %lo(D_80030CE0)($at)
.L80016CC4:
/* 178C4 80016CC4 3C018003 */  lui        $at, %hi(D_80030CE0)
/* 178C8 80016CC8 A0200CE0 */  sb         $zero, %lo(D_80030CE0)($at)
.L80016CCC:
/* 178CC 80016CCC 0C006BB0 */  jal        osVirtualToPhysical
/* 178D0 80016CD0 00000000 */   nop
/* 178D4 80016CD4 3C05A450 */  lui        $a1, (0xA4500004 >> 16)
/* 178D8 80016CD8 34A50004 */  ori        $a1, $a1, (0xA4500004 & 0xFFFF)
/* 178DC 80016CDC 00402021 */  addu       $a0, $v0, $zero
/* 178E0 80016CE0 00001021 */  addu       $v0, $zero, $zero
/* 178E4 80016CE4 3C03A450 */  lui        $v1, %hi(D_A4500000)
/* 178E8 80016CE8 AC640000 */  sw         $a0, %lo(D_A4500000)($v1)
/* 178EC 80016CEC ACB10000 */  sw         $s1, 0x0($a1)
.L80016CF0:
/* 178F0 80016CF0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 178F4 80016CF4 8FB10014 */  lw         $s1, 0x14($sp)
/* 178F8 80016CF8 8FB00010 */  lw         $s0, 0x10($sp)
/* 178FC 80016CFC 03E00008 */  jr         $ra
/* 17900 80016D00 27BD0020 */   addiu     $sp, $sp, 0x20
/* 17904 80016D04 00000000 */  nop
/* 17908 80016D08 00000000 */  nop
/* 1790C 80016D0C 00000000 */  nop
