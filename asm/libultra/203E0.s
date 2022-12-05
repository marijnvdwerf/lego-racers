.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osGetTime
/* 203E0 8001F7E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 203E4 8001F7E4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 203E8 8001F7E8 AFB40020 */  sw         $s4, 0x20($sp)
/* 203EC 8001F7EC AFB3001C */  sw         $s3, 0x1C($sp)
/* 203F0 8001F7F0 AFB20018 */  sw         $s2, 0x18($sp)
/* 203F4 8001F7F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 203F8 8001F7F8 0C005734 */  jal        func_80015CD0
/* 203FC 8001F7FC AFB00010 */   sw        $s0, 0x10($sp)
/* 20400 8001F800 0C007E1C */  jal        func_8001F870
/* 20404 8001F804 0040A021 */   addu      $s4, $v0, $zero
/* 20408 8001F808 3C038004 */  lui        $v1, %hi(D_8003A830)
/* 2040C 8001F80C 8C63A830 */  lw         $v1, %lo(D_8003A830)($v1)
/* 20410 8001F810 3C128004 */  lui        $s2, %hi(D_8003A838)
/* 20414 8001F814 8E52A838 */  lw         $s2, %lo(D_8003A838)($s2)
/* 20418 8001F818 3C138004 */  lui        $s3, %hi(D_8003A83C)
/* 2041C 8001F81C 8E73A83C */  lw         $s3, %lo(D_8003A83C)($s3)
/* 20420 8001F820 02802021 */  addu       $a0, $s4, $zero
/* 20424 8001F824 0C005750 */  jal        func_80015D40
/* 20428 8001F828 00438023 */   subu      $s0, $v0, $v1
/* 2042C 8001F82C 02008821 */  addu       $s1, $s0, $zero
/* 20430 8001F830 00008021 */  addu       $s0, $zero, $zero
/* 20434 8001F834 02711821 */  addu       $v1, $s3, $s1
/* 20438 8001F838 0071202B */  sltu       $a0, $v1, $s1
/* 2043C 8001F83C 02501021 */  addu       $v0, $s2, $s0
/* 20440 8001F840 00441021 */  addu       $v0, $v0, $a0
/* 20444 8001F844 8FBF0024 */  lw         $ra, 0x24($sp)
/* 20448 8001F848 8FB40020 */  lw         $s4, 0x20($sp)
/* 2044C 8001F84C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 20450 8001F850 8FB20018 */  lw         $s2, 0x18($sp)
/* 20454 8001F854 8FB10014 */  lw         $s1, 0x14($sp)
/* 20458 8001F858 8FB00010 */  lw         $s0, 0x10($sp)
/* 2045C 8001F85C 03E00008 */  jr         $ra
/* 20460 8001F860 27BD0028 */   addiu     $sp, $sp, 0x28
/* 20464 8001F864 00000000 */  nop
/* 20468 8001F868 00000000 */  nop
/* 2046C 8001F86C 00000000 */  nop
