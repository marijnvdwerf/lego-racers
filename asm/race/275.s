.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E8690
/* 9EA50 800E8690 00801021 */  addu       $v0, $a0, $zero
/* 9EA54 800E8694 3C03800D */  lui        $v1, %hi(D_race_800CBC00)
/* 9EA58 800E8698 2463BC00 */  addiu      $v1, $v1, %lo(D_race_800CBC00)
/* 9EA5C 800E869C AC430000 */  sw         $v1, 0x0($v0)
/* 9EA60 800E86A0 AC400004 */  sw         $zero, 0x4($v0)
/* 9EA64 800E86A4 AC40000C */  sw         $zero, 0xC($v0)
/* 9EA68 800E86A8 03E00008 */  jr         $ra
/* 9EA6C 800E86AC AC400008 */   sw        $zero, 0x8($v0)

glabel func_race_800E86B0
/* 9EA70 800E86B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9EA74 800E86B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 9EA78 800E86B8 00808821 */  addu       $s1, $a0, $zero
/* 9EA7C 800E86BC AFB00010 */  sw         $s0, 0x10($sp)
/* 9EA80 800E86C0 00A08021 */  addu       $s0, $a1, $zero
/* 9EA84 800E86C4 3C02800D */  lui        $v0, %hi(D_race_800CBC00)
/* 9EA88 800E86C8 2442BC00 */  addiu      $v0, $v0, %lo(D_race_800CBC00)
/* 9EA8C 800E86CC AFBF0018 */  sw         $ra, 0x18($sp)
/* 9EA90 800E86D0 0C03A1C0 */  jal        func_race_800E8700
/* 9EA94 800E86D4 AE220000 */   sw        $v0, 0x0($s1)
/* 9EA98 800E86D8 32100001 */  andi       $s0, $s0, 0x1
/* 9EA9C 800E86DC 12000003 */  beqz       $s0, .Lrace_800E86EC
/* 9EAA0 800E86E0 00000000 */   nop
/* 9EAA4 800E86E4 0C01FB5C */  jal        func_8007ED70
/* 9EAA8 800E86E8 02202021 */   addu      $a0, $s1, $zero
.Lrace_800E86EC:
/* 9EAAC 800E86EC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9EAB0 800E86F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 9EAB4 800E86F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 9EAB8 800E86F8 03E00008 */  jr         $ra
/* 9EABC 800E86FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E8700
/* 9EAC0 800E8700 AC800004 */  sw         $zero, 0x4($a0)
/* 9EAC4 800E8704 AC80000C */  sw         $zero, 0xC($a0)
/* 9EAC8 800E8708 03E00008 */  jr         $ra
/* 9EACC 800E870C AC800008 */   sw        $zero, 0x8($a0)

glabel func_race_800E8710
/* 9EAD0 800E8710 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9EAD4 800E8714 00802821 */  addu       $a1, $a0, $zero
/* 9EAD8 800E8718 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9EADC 800E871C 8CA3000C */  lw         $v1, 0xC($a1)
/* 9EAE0 800E8720 24020003 */  addiu      $v0, $zero, 0x3
/* 9EAE4 800E8724 14620007 */  bne        $v1, $v0, .Lrace_800E8744
/* 9EAE8 800E8728 00000000 */   nop
/* 9EAEC 800E872C 8CA20000 */  lw         $v0, 0x0($a1)
/* 9EAF0 800E8730 84440018 */  lh         $a0, 0x18($v0)
/* 9EAF4 800E8734 8C42001C */  lw         $v0, 0x1C($v0)
/* 9EAF8 800E8738 00A42021 */  addu       $a0, $a1, $a0
/* 9EAFC 800E873C 0040F809 */  jalr       $v0
/* 9EB00 800E8740 00002821 */   addu      $a1, $zero, $zero
.Lrace_800E8744:
/* 9EB04 800E8744 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9EB08 800E8748 03E00008 */  jr         $ra
/* 9EB0C 800E874C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E8750
/* 9EB10 800E8750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9EB14 800E8754 00803021 */  addu       $a2, $a0, $zero
/* 9EB18 800E8758 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9EB1C 800E875C 8CC3000C */  lw         $v1, 0xC($a2)
/* 9EB20 800E8760 24020001 */  addiu      $v0, $zero, 0x1
/* 9EB24 800E8764 14620006 */  bne        $v1, $v0, .Lrace_800E8780
/* 9EB28 800E8768 00000000 */   nop
/* 9EB2C 800E876C 8CC20000 */  lw         $v0, 0x0($a2)
/* 9EB30 800E8770 84440010 */  lh         $a0, 0x10($v0)
/* 9EB34 800E8774 8C420014 */  lw         $v0, 0x14($v0)
/* 9EB38 800E8778 0040F809 */  jalr       $v0
/* 9EB3C 800E877C 00C42021 */   addu      $a0, $a2, $a0
.Lrace_800E8780:
/* 9EB40 800E8780 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9EB44 800E8784 03E00008 */  jr         $ra
/* 9EB48 800E8788 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E878C
/* 9EB4C 800E878C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9EB50 800E8790 00803021 */  addu       $a2, $a0, $zero
/* 9EB54 800E8794 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9EB58 800E8798 8CC3000C */  lw         $v1, 0xC($a2)
/* 9EB5C 800E879C 24020001 */  addiu      $v0, $zero, 0x1
/* 9EB60 800E87A0 10620006 */  beq        $v1, $v0, .Lrace_800E87BC
/* 9EB64 800E87A4 00000000 */   nop
/* 9EB68 800E87A8 8CC20000 */  lw         $v0, 0x0($a2)
/* 9EB6C 800E87AC 84440018 */  lh         $a0, 0x18($v0)
/* 9EB70 800E87B0 8C42001C */  lw         $v0, 0x1C($v0)
/* 9EB74 800E87B4 0040F809 */  jalr       $v0
/* 9EB78 800E87B8 00C42021 */   addu      $a0, $a2, $a0
.Lrace_800E87BC:
/* 9EB7C 800E87BC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9EB80 800E87C0 03E00008 */  jr         $ra
/* 9EB84 800E87C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E87C8
/* 9EB88 800E87C8 03E00008 */  jr         $ra
/* 9EB8C 800E87CC 00000000 */   nop

glabel func_race_800E87D0
/* 9EB90 800E87D0 03E00008 */  jr         $ra
/* 9EB94 800E87D4 00000000 */   nop

glabel func_race_800E87D8
/* 9EB98 800E87D8 03E00008 */  jr         $ra
/* 9EB9C 800E87DC 00000000 */   nop

glabel func_race_800E87E0
/* 9EBA0 800E87E0 03E00008 */  jr         $ra
/* 9EBA4 800E87E4 00000000 */   nop

glabel func_race_800E87E8
/* 9EBA8 800E87E8 03E00008 */  jr         $ra
/* 9EBAC 800E87EC 00000000 */   nop

glabel func_race_800E87F0
/* 9EBB0 800E87F0 03E00008 */  jr         $ra
/* 9EBB4 800E87F4 00001021 */   addu      $v0, $zero, $zero

glabel func_race_800E87F8
/* 9EBB8 800E87F8 03E00008 */  jr         $ra
/* 9EBBC 800E87FC 00000000 */   nop

glabel func_race_800E8800
/* 9EBC0 800E8800 8C82000C */  lw         $v0, 0xC($a0)
/* 9EBC4 800E8804 03E00008 */  jr         $ra
/* 9EBC8 800E8808 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800E880C
/* 9EBCC 800E880C 8C820008 */  lw         $v0, 0x8($a0)
/* 9EBD0 800E8810 03E00008 */  jr         $ra
/* 9EBD4 800E8814 00000000 */   nop

glabel func_race_800E8818
/* 9EBD8 800E8818 8C82000C */  lw         $v0, 0xC($a0)
/* 9EBDC 800E881C 03E00008 */  jr         $ra
/* 9EBE0 800E8820 00000000 */   nop

glabel func_race_800E8824
/* 9EBE4 800E8824 03E00008 */  jr         $ra
/* 9EBE8 800E8828 AC85000C */   sw        $a1, 0xC($a0)
