.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __MusIntMemInit
/* 13710 80012B10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13714 80012B14 AFB00010 */  sw         $s0, 0x10($sp)
/* 13718 80012B18 00808021 */  addu       $s0, $a0, $zero
/* 1371C 80012B1C AFB10014 */  sw         $s1, 0x14($sp)
/* 13720 80012B20 00A08821 */  addu       $s1, $a1, $zero
/* 13724 80012B24 00002821 */  addu       $a1, $zero, $zero
/* 13728 80012B28 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1372C 80012B2C 0C004AEC */  jal        func_80012BB0
/* 13730 80012B30 02203021 */   addu      $a2, $s1, $zero
/* 13734 80012B34 3C048004 */  lui        $a0, %hi(D_80039180)
/* 13738 80012B38 24849180 */  addiu      $a0, $a0, %lo(D_80039180)
/* 1373C 80012B3C 02002821 */  addu       $a1, $s0, $zero
/* 13740 80012B40 0C0067E4 */  jal        alHeapInit
/* 13744 80012B44 02203021 */   addu      $a2, $s1, $zero
/* 13748 80012B48 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1374C 80012B4C 8FB10014 */  lw         $s1, 0x14($sp)
/* 13750 80012B50 8FB00010 */  lw         $s0, 0x10($sp)
/* 13754 80012B54 03E00008 */  jr         $ra
/* 13758 80012B58 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80012B5C
/* 1375C 80012B5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13760 80012B60 3C068004 */  lui        $a2, %hi(D_80039180)
/* 13764 80012B64 AFA40010 */  sw         $a0, 0x10($sp)
/* 13768 80012B68 00002021 */  addu       $a0, $zero, $zero
/* 1376C 80012B6C 00802821 */  addu       $a1, $a0, $zero
/* 13770 80012B70 24C69180 */  addiu      $a2, $a2, %lo(D_80039180)
/* 13774 80012B74 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13778 80012B78 0C0067F4 */  jal        alHeapDBAlloc
/* 1377C 80012B7C 24070001 */   addiu     $a3, $zero, 0x1
/* 13780 80012B80 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13784 80012B84 03E00008 */  jr         $ra
/* 13788 80012B88 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80012B8C
/* 1378C 80012B8C 3C038004 */  lui        $v1, %hi(D_80039180)
/* 13790 80012B90 24629180 */  addiu      $v0, $v1, %lo(D_80039180)
/* 13794 80012B94 8C440004 */  lw         $a0, 0x4($v0)
/* 13798 80012B98 8C629180 */  lw         $v0, %lo(D_80039180)($v1)
/* 1379C 80012B9C 03E00008 */  jr         $ra
/* 137A0 80012BA0 00821023 */   subu      $v0, $a0, $v0

glabel func_80012BA4
/* 137A4 80012BA4 3C028004 */  lui        $v0, %hi(D_80039180)
/* 137A8 80012BA8 03E00008 */  jr         $ra
/* 137AC 80012BAC 24429180 */   addiu     $v0, $v0, %lo(D_80039180)

glabel func_80012BB0
/* 137B0 80012BB0 10C00006 */  beqz       $a2, .L80012BCC
/* 137B4 80012BB4 24C2FFFF */   addiu     $v0, $a2, -0x1
/* 137B8 80012BB8 2403FFFF */  addiu      $v1, $zero, -0x1
.L80012BBC:
/* 137BC 80012BBC A0850000 */  sb         $a1, 0x0($a0)
/* 137C0 80012BC0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 137C4 80012BC4 1443FFFD */  bne        $v0, $v1, .L80012BBC
/* 137C8 80012BC8 24840001 */   addiu     $a0, $a0, 0x1
.L80012BCC:
/* 137CC 80012BCC 03E00008 */  jr         $ra
/* 137D0 80012BD0 00000000 */   nop

glabel func_80012BD4
/* 137D4 80012BD4 00A4102B */  sltu       $v0, $a1, $a0
/* 137D8 80012BD8 1040000E */  beqz       $v0, .L80012C14
/* 137DC 80012BDC 2402FFFF */   addiu     $v0, $zero, -0x1
/* 137E0 80012BE0 00862021 */  addu       $a0, $a0, $a2
/* 137E4 80012BE4 00A62821 */  addu       $a1, $a1, $a2
/* 137E8 80012BE8 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 137EC 80012BEC 10C20007 */  beq        $a2, $v0, .L80012C0C
/* 137F0 80012BF0 00401821 */   addu      $v1, $v0, $zero
.L80012BF4:
/* 137F4 80012BF4 2484FFFF */  addiu      $a0, $a0, -0x1
/* 137F8 80012BF8 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 137FC 80012BFC 90A20000 */  lbu        $v0, 0x0($a1)
/* 13800 80012C00 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 13804 80012C04 14C3FFFB */  bne        $a2, $v1, .L80012BF4
/* 13808 80012C08 A0820000 */   sb        $v0, 0x0($a0)
.L80012C0C:
/* 1380C 80012C0C 03E00008 */  jr         $ra
/* 13810 80012C10 00000000 */   nop
.L80012C14:
/* 13814 80012C14 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 13818 80012C18 10C2FFFC */  beq        $a2, $v0, .L80012C0C
/* 1381C 80012C1C 00401821 */   addu      $v1, $v0, $zero
.L80012C20:
/* 13820 80012C20 90A20000 */  lbu        $v0, 0x0($a1)
/* 13824 80012C24 24A50001 */  addiu      $a1, $a1, 0x1
/* 13828 80012C28 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1382C 80012C2C A0820000 */  sb         $v0, 0x0($a0)
/* 13830 80012C30 14C3FFFB */  bne        $a2, $v1, .L80012C20
/* 13834 80012C34 24840001 */   addiu     $a0, $a0, 0x1
/* 13838 80012C38 03E00008 */  jr         $ra
/* 1383C 80012C3C 00000000 */   nop
