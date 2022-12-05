.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001F750
/* 20350 8001F750 8C820000 */  lw         $v0, 0x0($a0)
/* 20354 8001F754 10400009 */  beqz       $v0, .L8001F77C
/* 20358 8001F758 00000000 */   nop
.L8001F75C:
/* 2035C 8001F75C 54450004 */  bnel       $v0, $a1, .L8001F770
/* 20360 8001F760 00402021 */   addu      $a0, $v0, $zero
/* 20364 8001F764 8C420000 */  lw         $v0, 0x0($v0)
/* 20368 8001F768 08007DDF */  j          .L8001F77C
/* 2036C 8001F76C AC820000 */   sw        $v0, 0x0($a0)
.L8001F770:
/* 20370 8001F770 8C420000 */  lw         $v0, 0x0($v0)
/* 20374 8001F774 1440FFF9 */  bnez       $v0, .L8001F75C
/* 20378 8001F778 00000000 */   nop
.L8001F77C:
/* 2037C 8001F77C 03E00008 */  jr         $ra
/* 20380 8001F780 00000000 */   nop
/* 20384 8001F784 00000000 */  nop
/* 20388 8001F788 00000000 */  nop
/* 2038C 8001F78C 00000000 */  nop
