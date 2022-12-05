.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel osUnmapTLBAll
/* 208F0 8001FCF0 40085000 */  mfc0       $t0, $10
/* 208F4 8001FCF4 2409001E */  addiu      $t1, $zero, 0x1E
/* 208F8 8001FCF8 3C0A8000 */  lui        $t2, (0x80000000 >> 16)
/* 208FC 8001FCFC 408A5000 */  mtc0       $t2, $10
/* 20900 8001FD00 40801000 */  mtc0       $zero, $2
/* 20904 8001FD04 40801800 */  mtc0       $zero, $3
.L8001FD08:
/* 20908 8001FD08 40890000 */  mtc0       $t1, $0
/* 2090C 8001FD0C 00000000 */  nop
/* 20910 8001FD10 42000002 */  tlbwi
/* 20914 8001FD14 00000000 */  nop
/* 20918 8001FD18 00000000 */  nop
/* 2091C 8001FD1C 2129FFFF */  addi       $t1, $t1, -0x1
/* 20920 8001FD20 0521FFF9 */  bgez       $t1, .L8001FD08
/* 20924 8001FD24 00000000 */   nop
/* 20928 8001FD28 40885000 */  mtc0       $t0, $10
/* 2092C 8001FD2C 03E00008 */  jr         $ra
/* 20930 8001FD30 00000000 */   nop
/* 20934 8001FD34 00000000 */  nop
/* 20938 8001FD38 00000000 */  nop
/* 2093C 8001FD3C 00000000 */  nop
