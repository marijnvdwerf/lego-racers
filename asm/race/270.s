.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E8570
/* 9E930 800E8570 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9E934 800E8574 AFB00010 */  sw         $s0, 0x10($sp)
/* 9E938 800E8578 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9E93C 800E857C 0C016D78 */  jal        func_8005B5E0
/* 9E940 800E8580 00808021 */   addu      $s0, $a0, $zero
/* 9E944 800E8584 02001021 */  addu       $v0, $s0, $zero
/* 9E948 800E8588 3C03800D */  lui        $v1, %hi(D_race_800CB9C0)
/* 9E94C 800E858C 2463B9C0 */  addiu      $v1, $v1, %lo(D_race_800CB9C0)
/* 9E950 800E8590 AC43012C */  sw         $v1, 0x12C($v0)
/* 9E954 800E8594 AC400130 */  sw         $zero, 0x130($v0)
/* 9E958 800E8598 AC400134 */  sw         $zero, 0x134($v0)
/* 9E95C 800E859C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9E960 800E85A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 9E964 800E85A4 03E00008 */  jr         $ra
/* 9E968 800E85A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E85AC
/* 9E96C 800E85AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9E970 800E85B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 9E974 800E85B4 00808021 */  addu       $s0, $a0, $zero
/* 9E978 800E85B8 AFB10014 */  sw         $s1, 0x14($sp)
/* 9E97C 800E85BC 00A08821 */  addu       $s1, $a1, $zero
/* 9E980 800E85C0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 9E984 800E85C4 AFB20018 */  sw         $s2, 0x18($sp)
/* 9E988 800E85C8 8E020000 */  lw         $v0, 0x0($s0)
/* 9E98C 800E85CC 30420001 */  andi       $v0, $v0, 0x1
/* 9E990 800E85D0 10400006 */  beqz       $v0, .Lrace_800E85EC
/* 9E994 800E85D4 00C09021 */   addu      $s2, $a2, $zero
/* 9E998 800E85D8 8E02012C */  lw         $v0, 0x12C($s0)
/* 9E99C 800E85DC 84440038 */  lh         $a0, 0x38($v0)
/* 9E9A0 800E85E0 8C42003C */  lw         $v0, 0x3C($v0)
/* 9E9A4 800E85E4 0040F809 */  jalr       $v0
/* 9E9A8 800E85E8 02042021 */   addu      $a0, $s0, $a0
.Lrace_800E85EC:
/* 9E9AC 800E85EC 02202021 */  addu       $a0, $s1, $zero
/* 9E9B0 800E85F0 02002821 */  addu       $a1, $s0, $zero
/* 9E9B4 800E85F4 0C011C2D */  jal        func_800470B4
/* 9E9B8 800E85F8 AE120134 */   sw        $s2, 0x134($s0)
/* 9E9BC 800E85FC 24020001 */  addiu      $v0, $zero, 0x1
/* 9E9C0 800E8600 AE110130 */  sw         $s1, 0x130($s0)
/* 9E9C4 800E8604 AE020000 */  sw         $v0, 0x0($s0)
/* 9E9C8 800E8608 8FBF001C */  lw         $ra, 0x1C($sp)
/* 9E9CC 800E860C 8FB20018 */  lw         $s2, 0x18($sp)
/* 9E9D0 800E8610 8FB10014 */  lw         $s1, 0x14($sp)
/* 9E9D4 800E8614 8FB00010 */  lw         $s0, 0x10($sp)
/* 9E9D8 800E8618 03E00008 */  jr         $ra
/* 9E9DC 800E861C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E8620
/* 9E9E0 800E8620 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9E9E4 800E8624 AFB00010 */  sw         $s0, 0x10($sp)
/* 9E9E8 800E8628 00808021 */  addu       $s0, $a0, $zero
/* 9E9EC 800E862C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9E9F0 800E8630 8E040130 */  lw         $a0, 0x130($s0)
/* 9E9F4 800E8634 10800004 */  beqz       $a0, .Lrace_800E8648
/* 9E9F8 800E8638 00000000 */   nop
/* 9E9FC 800E863C 0C011C31 */  jal        func_800470C4
/* 9EA00 800E8640 02002821 */   addu      $a1, $s0, $zero
/* 9EA04 800E8644 AE000130 */  sw         $zero, 0x130($s0)
.Lrace_800E8648:
/* 9EA08 800E8648 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9EA0C 800E864C 8FB00010 */  lw         $s0, 0x10($sp)
/* 9EA10 800E8650 03E00008 */  jr         $ra
/* 9EA14 800E8654 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E8658
/* 9EA18 800E8658 8C820134 */  lw         $v0, 0x134($a0)
/* 9EA1C 800E865C 03E00008 */  jr         $ra
/* 9EA20 800E8660 00000000 */   nop

glabel func_race_800E8664
/* 9EA24 800E8664 03E00008 */  jr         $ra
/* 9EA28 800E8668 00000000 */   nop

glabel func_race_800E866C
/* 9EA2C 800E866C 03E00008 */  jr         $ra
/* 9EA30 800E8670 AC850134 */   sw        $a1, 0x134($a0)

glabel func_race_800E8674
/* 9EA34 800E8674 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9EA38 800E8678 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9EA3C 800E867C 0C016DA0 */  jal        func_8005B680
/* 9EA40 800E8680 00000000 */   nop
/* 9EA44 800E8684 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9EA48 800E8688 03E00008 */  jr         $ra
/* 9EA4C 800E868C 27BD0018 */   addiu     $sp, $sp, 0x18
