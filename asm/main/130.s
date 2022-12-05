.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000C2E0
/* CEE0 8000C2E0 03E00008 */  jr         $ra
/* CEE4 8000C2E4 00000000 */   nop

glabel func_8000C2E8
/* CEE8 8000C2E8 3C028000 */  lui        $v0, %hi(D_80000E54)
/* CEEC 8000C2EC 03E00008 */  jr         $ra
/* CEF0 8000C2F0 24420E54 */   addiu     $v0, $v0, %lo(D_80000E54)

glabel func_8000C2F4
/* CEF4 8000C2F4 03E00008 */  jr         $ra
/* CEF8 8000C2F8 24020001 */   addiu     $v0, $zero, 0x1

glabel func_8000C2FC
/* CEFC 8000C2FC 03E00008 */  jr         $ra
/* CF00 8000C300 24020001 */   addiu     $v0, $zero, 0x1

glabel func_8000C304
/* CF04 8000C304 03E00008 */  jr         $ra
/* CF08 8000C308 00000000 */   nop

glabel func_8000C30C
/* CF0C 8000C30C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF10 8000C310 AFBF0010 */  sw         $ra, 0x10($sp)
/* CF14 8000C314 0C002513 */  jal        func_8000944C
/* CF18 8000C318 00000000 */   nop
/* CF1C 8000C31C 8FBF0010 */  lw         $ra, 0x10($sp)
/* CF20 8000C320 03E00008 */  jr         $ra
/* CF24 8000C324 27BD0018 */   addiu     $sp, $sp, 0x18
