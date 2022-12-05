.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osStopThread
/* 20290 8001F690 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20294 8001F694 AFB00010 */  sw         $s0, 0x10($sp)
/* 20298 8001F698 00808021 */  addu       $s0, $a0, $zero
/* 2029C 8001F69C AFBF0018 */  sw         $ra, 0x18($sp)
/* 202A0 8001F6A0 0C005734 */  jal        func_80015CD0
/* 202A4 8001F6A4 AFB10014 */   sw        $s1, 0x14($sp)
/* 202A8 8001F6A8 24030004 */  addiu      $v1, $zero, 0x4
/* 202AC 8001F6AC 12000002 */  beqz       $s0, .L8001F6B8
/* 202B0 8001F6B0 00408821 */   addu      $s1, $v0, $zero
/* 202B4 8001F6B4 96030010 */  lhu        $v1, 0x10($s0)
.L8001F6B8:
/* 202B8 8001F6B8 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 202BC 8001F6BC 24020004 */  addiu      $v0, $zero, 0x4
/* 202C0 8001F6C0 1062000C */  beq        $v1, $v0, .L8001F6F4
/* 202C4 8001F6C4 28620005 */   slti      $v0, $v1, 0x5
/* 202C8 8001F6C8 10400005 */  beqz       $v0, .L8001F6E0
/* 202CC 8001F6CC 24020002 */   addiu     $v0, $zero, 0x2
/* 202D0 8001F6D0 10620010 */  beq        $v1, $v0, .L8001F714
/* 202D4 8001F6D4 00000000 */   nop
/* 202D8 8001F6D8 08007DCA */  j          .L8001F728
/* 202DC 8001F6DC 00000000 */   nop
.L8001F6E0:
/* 202E0 8001F6E0 24020008 */  addiu      $v0, $zero, 0x8
/* 202E4 8001F6E4 1062000B */  beq        $v1, $v0, .L8001F714
/* 202E8 8001F6E8 00000000 */   nop
/* 202EC 8001F6EC 08007DCA */  j          .L8001F728
/* 202F0 8001F6F0 00000000 */   nop
.L8001F6F4:
/* 202F4 8001F6F4 3C038003 */  lui        $v1, %hi(D_800310B0)
/* 202F8 8001F6F8 8C6310B0 */  lw         $v1, %lo(D_800310B0)($v1)
/* 202FC 8001F6FC 00002021 */  addu       $a0, $zero, $zero
/* 20300 8001F700 24020001 */  addiu      $v0, $zero, 0x1
/* 20304 8001F704 0C007663 */  jal        func_8001D98C
/* 20308 8001F708 A4620010 */   sh        $v0, 0x10($v1)
/* 2030C 8001F70C 08007DCA */  j          .L8001F728
/* 20310 8001F710 00000000 */   nop
.L8001F714:
/* 20314 8001F714 8E040008 */  lw         $a0, 0x8($s0)
/* 20318 8001F718 24020001 */  addiu      $v0, $zero, 0x1
/* 2031C 8001F71C 02002821 */  addu       $a1, $s0, $zero
/* 20320 8001F720 0C007DD4 */  jal        func_8001F750
/* 20324 8001F724 A6020010 */   sh        $v0, 0x10($s0)
.L8001F728:
/* 20328 8001F728 0C005750 */  jal        func_80015D40
/* 2032C 8001F72C 02202021 */   addu      $a0, $s1, $zero
/* 20330 8001F730 8FBF0018 */  lw         $ra, 0x18($sp)
/* 20334 8001F734 8FB10014 */  lw         $s1, 0x14($sp)
/* 20338 8001F738 8FB00010 */  lw         $s0, 0x10($sp)
/* 2033C 8001F73C 03E00008 */  jr         $ra
/* 20340 8001F740 27BD0020 */   addiu     $sp, $sp, 0x20
/* 20344 8001F744 00000000 */  nop
/* 20348 8001F748 00000000 */  nop
/* 2034C 8001F74C 00000000 */  nop
