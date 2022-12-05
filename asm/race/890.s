.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8012D710
/* E3AD0 8012D710 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E3AD4 8012D714 AFB00010 */  sw         $s0, 0x10($sp)
/* E3AD8 8012D718 AFBF0014 */  sw         $ra, 0x14($sp)
/* E3ADC 8012D71C 0C047E80 */  jal        func_race_8011FA00
/* E3AE0 8012D720 00808021 */   addu      $s0, $a0, $zero
/* E3AE4 8012D724 02001021 */  addu       $v0, $s0, $zero
/* E3AE8 8012D728 3C03800D */  lui        $v1, %hi(D_race_800CEF40)
/* E3AEC 8012D72C 2463EF40 */  addiu      $v1, $v1, %lo(D_race_800CEF40)
/* E3AF0 8012D730 AC430000 */  sw         $v1, 0x0($v0)
/* E3AF4 8012D734 AC400018 */  sw         $zero, 0x18($v0)
/* E3AF8 8012D738 AC40001C */  sw         $zero, 0x1C($v0)
/* E3AFC 8012D73C AC400020 */  sw         $zero, 0x20($v0)
/* E3B00 8012D740 AC400024 */  sw         $zero, 0x24($v0)
/* E3B04 8012D744 AC400028 */  sw         $zero, 0x28($v0)
/* E3B08 8012D748 AC40002C */  sw         $zero, 0x2C($v0)
/* E3B0C 8012D74C 8FBF0014 */  lw         $ra, 0x14($sp)
/* E3B10 8012D750 8FB00010 */  lw         $s0, 0x10($sp)
/* E3B14 8012D754 03E00008 */  jr         $ra
/* E3B18 8012D758 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012D75C
/* E3B1C 8012D75C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E3B20 8012D760 AFBF0010 */  sw         $ra, 0x10($sp)
/* E3B24 8012D764 8C820018 */  lw         $v0, 0x18($a0)
/* E3B28 8012D768 8C440008 */  lw         $a0, 0x8($v0)
/* E3B2C 8012D76C 0C0165A4 */  jal        func_80059690
/* E3B30 8012D770 00000000 */   nop
/* E3B34 8012D774 8FBF0010 */  lw         $ra, 0x10($sp)
/* E3B38 8012D778 03E00008 */  jr         $ra
/* E3B3C 8012D77C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012D780
/* E3B40 8012D780 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E3B44 8012D784 AFBF0010 */  sw         $ra, 0x10($sp)
/* E3B48 8012D788 8C820018 */  lw         $v0, 0x18($a0)
/* E3B4C 8012D78C 8C430000 */  lw         $v1, 0x0($v0)
/* E3B50 8012D790 84640040 */  lh         $a0, 0x40($v1)
/* E3B54 8012D794 00442021 */  addu       $a0, $v0, $a0
/* E3B58 8012D798 8C620044 */  lw         $v0, 0x44($v1)
/* E3B5C 8012D79C 0040F809 */  jalr       $v0
/* E3B60 8012D7A0 00000000 */   nop
/* E3B64 8012D7A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* E3B68 8012D7A8 03E00008 */  jr         $ra
/* E3B6C 8012D7AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012D7B0
/* E3B70 8012D7B0 8C820018 */  lw         $v0, 0x18($a0)
/* E3B74 8012D7B4 14400003 */  bnez       $v0, .Lrace_8012D7C4
/* E3B78 8012D7B8 00000000 */   nop
/* E3B7C 8012D7BC 03E00008 */  jr         $ra
/* E3B80 8012D7C0 00001021 */   addu      $v0, $zero, $zero
.Lrace_8012D7C4:
/* E3B84 8012D7C4 8C420008 */  lw         $v0, 0x8($v0)
/* E3B88 8012D7C8 03E00008 */  jr         $ra
/* E3B8C 8012D7CC 00000000 */   nop

glabel func_race_8012D7D0
/* E3B90 8012D7D0 03E00008 */  jr         $ra
/* E3B94 8012D7D4 24020001 */   addiu     $v0, $zero, 0x1

glabel func_race_8012D7D8
/* E3B98 8012D7D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E3B9C 8012D7DC AFBF0010 */  sw         $ra, 0x10($sp)
/* E3BA0 8012D7E0 0C047E8A */  jal        func_race_8011FA28
/* E3BA4 8012D7E4 00000000 */   nop
/* E3BA8 8012D7E8 8FBF0010 */  lw         $ra, 0x10($sp)
/* E3BAC 8012D7EC 03E00008 */  jr         $ra
/* E3BB0 8012D7F0 27BD0018 */   addiu     $sp, $sp, 0x18
