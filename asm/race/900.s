.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8012D800
/* E3BC0 8012D800 00801021 */  addu       $v0, $a0, $zero
/* E3BC4 8012D804 2403FFFF */  addiu      $v1, $zero, -0x1
/* E3BC8 8012D808 AC400000 */  sw         $zero, 0x0($v0)
/* E3BCC 8012D80C AC400004 */  sw         $zero, 0x4($v0)
/* E3BD0 8012D810 AC400008 */  sw         $zero, 0x8($v0)
/* E3BD4 8012D814 AC43000C */  sw         $v1, 0xC($v0)
/* E3BD8 8012D818 03E00008 */  jr         $ra
/* E3BDC 8012D81C A0400010 */   sb        $zero, 0x10($v0)

glabel func_race_8012D820
/* E3BE0 8012D820 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E3BE4 8012D824 2402FFFF */  addiu      $v0, $zero, -0x1
/* E3BE8 8012D828 30A50001 */  andi       $a1, $a1, 0x1
/* E3BEC 8012D82C AFBF0010 */  sw         $ra, 0x10($sp)
/* E3BF0 8012D830 AC800000 */  sw         $zero, 0x0($a0)
/* E3BF4 8012D834 AC800004 */  sw         $zero, 0x4($a0)
/* E3BF8 8012D838 AC800008 */  sw         $zero, 0x8($a0)
/* E3BFC 8012D83C AC82000C */  sw         $v0, 0xC($a0)
/* E3C00 8012D840 10A00003 */  beqz       $a1, .Lrace_8012D850
/* E3C04 8012D844 A0800010 */   sb        $zero, 0x10($a0)
/* E3C08 8012D848 0C01FB5C */  jal        func_8007ED70
/* E3C0C 8012D84C 00000000 */   nop
.Lrace_8012D850:
/* E3C10 8012D850 8FBF0010 */  lw         $ra, 0x10($sp)
/* E3C14 8012D854 03E00008 */  jr         $ra
/* E3C18 8012D858 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012D85C
/* E3C1C 8012D85C C4A00000 */  lwc1       $f0, 0x0($a1)
/* E3C20 8012D860 90820010 */  lbu        $v0, 0x10($a0)
/* E3C24 8012D864 E4800000 */  swc1       $f0, 0x0($a0)
/* E3C28 8012D868 C4A00004 */  lwc1       $f0, 0x4($a1)
/* E3C2C 8012D86C E4800004 */  swc1       $f0, 0x4($a0)
/* E3C30 8012D870 C4A00008 */  lwc1       $f0, 0x8($a1)
/* E3C34 8012D874 34420003 */  ori        $v0, $v0, 0x3
/* E3C38 8012D878 AC86000C */  sw         $a2, 0xC($a0)
/* E3C3C 8012D87C A0820010 */  sb         $v0, 0x10($a0)
/* E3C40 8012D880 03E00008 */  jr         $ra
/* E3C44 8012D884 E4800008 */   swc1      $f0, 0x8($a0)
