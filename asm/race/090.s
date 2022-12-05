.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800D68E0
/* 8CCA0 800D68E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8CCA4 800D68E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CCA8 800D68E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8CCAC 800D68EC 0C03592C */  jal        func_race_800D64B0
/* 8CCB0 800D68F0 00808021 */   addu      $s0, $a0, $zero
/* 8CCB4 800D68F4 02002021 */  addu       $a0, $s0, $zero
/* 8CCB8 800D68F8 3C02800D */  lui        $v0, %hi(D_race_800CAB18)
/* 8CCBC 800D68FC 2442AB18 */  addiu      $v0, $v0, %lo(D_race_800CAB18)
/* 8CCC0 800D6900 0C035A5A */  jal        func_race_800D6968
/* 8CCC4 800D6904 AE02001C */   sw        $v0, 0x1C($s0)
/* 8CCC8 800D6908 02001021 */  addu       $v0, $s0, $zero
/* 8CCCC 800D690C A0400018 */  sb         $zero, 0x18($v0)
/* 8CCD0 800D6910 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8CCD4 800D6914 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CCD8 800D6918 03E00008 */  jr         $ra
/* 8CCDC 800D691C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D6920
/* 8CCE0 800D6920 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8CCE4 800D6924 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CCE8 800D6928 00808021 */  addu       $s0, $a0, $zero
/* 8CCEC 800D692C AFB10014 */  sw         $s1, 0x14($sp)
/* 8CCF0 800D6930 00A08821 */  addu       $s1, $a1, $zero
/* 8CCF4 800D6934 3C02800D */  lui        $v0, %hi(D_race_800CAB18)
/* 8CCF8 800D6938 2442AB18 */  addiu      $v0, $v0, %lo(D_race_800CAB18)
/* 8CCFC 800D693C AFBF0018 */  sw         $ra, 0x18($sp)
/* 8CD00 800D6940 0C035ABF */  jal        func_race_800D6AFC
/* 8CD04 800D6944 AE02001C */   sw        $v0, 0x1C($s0)
/* 8CD08 800D6948 02002021 */  addu       $a0, $s0, $zero
/* 8CD0C 800D694C 0C03593D */  jal        func_race_800D64F4
/* 8CD10 800D6950 02202821 */   addu      $a1, $s1, $zero
/* 8CD14 800D6954 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8CD18 800D6958 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CD1C 800D695C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CD20 800D6960 03E00008 */  jr         $ra
/* 8CD24 800D6964 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D6968
/* 8CD28 800D6968 3C01800D */  lui        $at, %hi(D_race_800CAB10)
/* 8CD2C 800D696C C420AB10 */  lwc1       $f0, %lo(D_race_800CAB10)($at)
/* 8CD30 800D6970 AC800020 */  sw         $zero, 0x20($a0)
/* 8CD34 800D6974 AC800024 */  sw         $zero, 0x24($a0)
/* 8CD38 800D6978 AC800030 */  sw         $zero, 0x30($a0)
/* 8CD3C 800D697C AC800034 */  sw         $zero, 0x34($a0)
/* 8CD40 800D6980 A0800028 */  sb         $zero, 0x28($a0)
/* 8CD44 800D6984 AC80003C */  sw         $zero, 0x3C($a0)
/* 8CD48 800D6988 AC800040 */  sw         $zero, 0x40($a0)
/* 8CD4C 800D698C AC800044 */  sw         $zero, 0x44($a0)
/* 8CD50 800D6990 AC80004C */  sw         $zero, 0x4C($a0)
/* 8CD54 800D6994 AC800050 */  sw         $zero, 0x50($a0)
/* 8CD58 800D6998 AC800054 */  sw         $zero, 0x54($a0)
/* 8CD5C 800D699C AC800058 */  sw         $zero, 0x58($a0)
/* 8CD60 800D69A0 AC800060 */  sw         $zero, 0x60($a0)
/* 8CD64 800D69A4 AC800038 */  sw         $zero, 0x38($a0)
/* 8CD68 800D69A8 E4800048 */  swc1       $f0, 0x48($a0)
/* 8CD6C 800D69AC 03E00008 */  jr         $ra
/* 8CD70 800D69B0 E480005C */   swc1      $f0, 0x5C($a0)

glabel func_race_800D69B4
/* 8CD74 800D69B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8CD78 800D69B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CD7C 800D69BC 00808021 */  addu       $s0, $a0, $zero
/* 8CD80 800D69C0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8CD84 800D69C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 8CD88 800D69C8 8E020014 */  lw         $v0, 0x14($s0)
/* 8CD8C 800D69CC 10400003 */  beqz       $v0, .Lrace_800D69DC
/* 8CD90 800D69D0 00A08821 */   addu      $s1, $a1, $zero
/* 8CD94 800D69D4 0C035ABF */  jal        func_race_800D6AFC
/* 8CD98 800D69D8 00000000 */   nop
.Lrace_800D69DC:
/* 8CD9C 800D69DC 00002821 */  addu       $a1, $zero, $zero
/* 8CDA0 800D69E0 02202021 */  addu       $a0, $s1, $zero
/* 8CDA4 800D69E4 8E220000 */  lw         $v0, 0x0($s1)
/* 8CDA8 800D69E8 02001821 */  addu       $v1, $s0, $zero
/* 8CDAC 800D69EC AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800D69F0:
/* 8CDB0 800D69F0 8C820004 */  lw         $v0, 0x4($a0)
/* 8CDB4 800D69F4 24840004 */  addiu      $a0, $a0, 0x4
/* 8CDB8 800D69F8 24A50001 */  addiu      $a1, $a1, 0x1
/* 8CDBC 800D69FC AC620004 */  sw         $v0, 0x4($v1)
/* 8CDC0 800D6A00 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 8CDC4 800D6A04 1440FFFA */  bnez       $v0, .Lrace_800D69F0
/* 8CDC8 800D6A08 24630004 */   addiu     $v1, $v1, 0x4
/* 8CDCC 800D6A0C 8E220010 */  lw         $v0, 0x10($s1)
/* 8CDD0 800D6A10 AE020000 */  sw         $v0, 0x0($s0)
/* 8CDD4 800D6A14 8E220014 */  lw         $v0, 0x14($s1)
/* 8CDD8 800D6A18 AE020020 */  sw         $v0, 0x20($s0)
/* 8CDDC 800D6A1C 8E220018 */  lw         $v0, 0x18($s1)
/* 8CDE0 800D6A20 26040028 */  addiu      $a0, $s0, 0x28
/* 8CDE4 800D6A24 AE020024 */  sw         $v0, 0x24($s0)
/* 8CDE8 800D6A28 8E22001C */  lw         $v0, 0x1C($s1)
/* 8CDEC 800D6A2C 26250024 */  addiu      $a1, $s1, 0x24
/* 8CDF0 800D6A30 AE020034 */  sw         $v0, 0x34($s0)
/* 8CDF4 800D6A34 8E220020 */  lw         $v0, 0x20($s1)
/* 8CDF8 800D6A38 24060008 */  addiu      $a2, $zero, 0x8
/* 8CDFC 800D6A3C 0C000708 */  jal        func_80001C20
/* 8CE00 800D6A40 AE020038 */   sw        $v0, 0x38($s0)
/* 8CE04 800D6A44 C620002C */  lwc1       $f0, 0x2C($s1)
/* 8CE08 800D6A48 E600003C */  swc1       $f0, 0x3C($s0)
/* 8CE0C 800D6A4C C6200030 */  lwc1       $f0, 0x30($s1)
/* 8CE10 800D6A50 E6000040 */  swc1       $f0, 0x40($s0)
/* 8CE14 800D6A54 C6200034 */  lwc1       $f0, 0x34($s1)
/* 8CE18 800D6A58 E6000044 */  swc1       $f0, 0x44($s0)
/* 8CE1C 800D6A5C C6200038 */  lwc1       $f0, 0x38($s1)
/* 8CE20 800D6A60 E6000048 */  swc1       $f0, 0x48($s0)
/* 8CE24 800D6A64 C620003C */  lwc1       $f0, 0x3C($s1)
/* 8CE28 800D6A68 E600004C */  swc1       $f0, 0x4C($s0)
/* 8CE2C 800D6A6C C6200040 */  lwc1       $f0, 0x40($s1)
/* 8CE30 800D6A70 E6000050 */  swc1       $f0, 0x50($s0)
/* 8CE34 800D6A74 C6200044 */  lwc1       $f0, 0x44($s1)
/* 8CE38 800D6A78 E6000054 */  swc1       $f0, 0x54($s0)
/* 8CE3C 800D6A7C C6200048 */  lwc1       $f0, 0x48($s1)
/* 8CE40 800D6A80 E6000058 */  swc1       $f0, 0x58($s0)
/* 8CE44 800D6A84 C620004C */  lwc1       $f0, 0x4C($s1)
/* 8CE48 800D6A88 E600005C */  swc1       $f0, 0x5C($s0)
/* 8CE4C 800D6A8C 8E220050 */  lw         $v0, 0x50($s1)
/* 8CE50 800D6A90 10400004 */  beqz       $v0, .Lrace_800D6AA4
/* 8CE54 800D6A94 00000000 */   nop
/* 8CE58 800D6A98 92020018 */  lbu        $v0, 0x18($s0)
/* 8CE5C 800D6A9C 34420002 */  ori        $v0, $v0, 0x2
/* 8CE60 800D6AA0 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800D6AA4:
/* 8CE64 800D6AA4 8E220054 */  lw         $v0, 0x54($s1)
/* 8CE68 800D6AA8 10400004 */  beqz       $v0, .Lrace_800D6ABC
/* 8CE6C 800D6AAC 00000000 */   nop
/* 8CE70 800D6AB0 92020018 */  lbu        $v0, 0x18($s0)
/* 8CE74 800D6AB4 34420004 */  ori        $v0, $v0, 0x4
/* 8CE78 800D6AB8 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800D6ABC:
/* 8CE7C 800D6ABC 8E220058 */  lw         $v0, 0x58($s1)
/* 8CE80 800D6AC0 10400004 */  beqz       $v0, .Lrace_800D6AD4
/* 8CE84 800D6AC4 00000000 */   nop
/* 8CE88 800D6AC8 92020018 */  lbu        $v0, 0x18($s0)
/* 8CE8C 800D6ACC 34420008 */  ori        $v0, $v0, 0x8
/* 8CE90 800D6AD0 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800D6AD4:
/* 8CE94 800D6AD4 92020018 */  lbu        $v0, 0x18($s0)
/* 8CE98 800D6AD8 24030001 */  addiu      $v1, $zero, 0x1
/* 8CE9C 800D6ADC AE030014 */  sw         $v1, 0x14($s0)
/* 8CEA0 800D6AE0 304200DF */  andi       $v0, $v0, 0xDF
/* 8CEA4 800D6AE4 A2020018 */  sb         $v0, 0x18($s0)
/* 8CEA8 800D6AE8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8CEAC 800D6AEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CEB0 800D6AF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CEB4 800D6AF4 03E00008 */  jr         $ra
/* 8CEB8 800D6AF8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D6AFC
/* 8CEBC 800D6AFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8CEC0 800D6B00 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CEC4 800D6B04 00808021 */  addu       $s0, $a0, $zero
/* 8CEC8 800D6B08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8CECC 800D6B0C 8E02001C */  lw         $v0, 0x1C($s0)
/* 8CED0 800D6B10 84440010 */  lh         $a0, 0x10($v0)
/* 8CED4 800D6B14 8C420014 */  lw         $v0, 0x14($v0)
/* 8CED8 800D6B18 0040F809 */  jalr       $v0
/* 8CEDC 800D6B1C 02042021 */   addu      $a0, $s0, $a0
/* 8CEE0 800D6B20 0C035A5A */  jal        func_race_800D6968
/* 8CEE4 800D6B24 02002021 */   addu      $a0, $s0, $zero
/* 8CEE8 800D6B28 0C035951 */  jal        func_race_800D6544
/* 8CEEC 800D6B2C 02002021 */   addu      $a0, $s0, $zero
/* 8CEF0 800D6B30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8CEF4 800D6B34 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CEF8 800D6B38 03E00008 */  jr         $ra
/* 8CEFC 800D6B3C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D6B40
/* 8CF00 800D6B40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8CF04 800D6B44 AFB00018 */  sw         $s0, 0x18($sp)
/* 8CF08 800D6B48 00808021 */  addu       $s0, $a0, $zero
/* 8CF0C 800D6B4C AFBF0020 */  sw         $ra, 0x20($sp)
/* 8CF10 800D6B50 10A0000B */  beqz       $a1, .Lrace_800D6B80
/* 8CF14 800D6B54 AFB1001C */   sw        $s1, 0x1C($sp)
/* 8CF18 800D6B58 92020018 */  lbu        $v0, 0x18($s0)
/* 8CF1C 800D6B5C 30420008 */  andi       $v0, $v0, 0x8
/* 8CF20 800D6B60 10400007 */  beqz       $v0, .Lrace_800D6B80
/* 8CF24 800D6B64 00000000 */   nop
/* 8CF28 800D6B68 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 8CF2C 800D6B6C E600003C */  swc1       $f0, 0x3C($s0)
/* 8CF30 800D6B70 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 8CF34 800D6B74 E6000040 */  swc1       $f0, 0x40($s0)
/* 8CF38 800D6B78 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 8CF3C 800D6B7C E6000044 */  swc1       $f0, 0x44($s0)
.Lrace_800D6B80:
/* 8CF40 800D6B80 8E040020 */  lw         $a0, 0x20($s0)
/* 8CF44 800D6B84 26110028 */  addiu      $s1, $s0, 0x28
/* 8CF48 800D6B88 0C0107D5 */  jal        func_80041F54
/* 8CF4C 800D6B8C 02202821 */   addu      $a1, $s1, $zero
/* 8CF50 800D6B90 10400008 */  beqz       $v0, .Lrace_800D6BB4
/* 8CF54 800D6B94 02202821 */   addu      $a1, $s1, $zero
/* 8CF58 800D6B98 24020001 */  addiu      $v0, $zero, 0x1
/* 8CF5C 800D6B9C AE020060 */  sw         $v0, 0x60($s0)
/* 8CF60 800D6BA0 26020054 */  addiu      $v0, $s0, 0x54
/* 8CF64 800D6BA4 AFA20010 */  sw         $v0, 0x10($sp)
/* 8CF68 800D6BA8 8E040020 */  lw         $a0, 0x20($s0)
/* 8CF6C 800D6BAC 08035AF7 */  j          .Lrace_800D6BDC
/* 8CF70 800D6BB0 2606003C */   addiu     $a2, $s0, 0x3C
.Lrace_800D6BB4:
/* 8CF74 800D6BB4 8E040024 */  lw         $a0, 0x24($s0)
/* 8CF78 800D6BB8 0C0107D5 */  jal        func_80041F54
/* 8CF7C 800D6BBC 02202821 */   addu      $a1, $s1, $zero
/* 8CF80 800D6BC0 10400009 */  beqz       $v0, .Lrace_800D6BE8
/* 8CF84 800D6BC4 02202821 */   addu      $a1, $s1, $zero
/* 8CF88 800D6BC8 2606003C */  addiu      $a2, $s0, 0x3C
/* 8CF8C 800D6BCC 26020054 */  addiu      $v0, $s0, 0x54
/* 8CF90 800D6BD0 AE000060 */  sw         $zero, 0x60($s0)
/* 8CF94 800D6BD4 AFA20010 */  sw         $v0, 0x10($sp)
/* 8CF98 800D6BD8 8E040024 */  lw         $a0, 0x24($s0)
.Lrace_800D6BDC:
/* 8CF9C 800D6BDC 0C0107DD */  jal        func_80041F74
/* 8CFA0 800D6BE0 26070048 */   addiu     $a3, $s0, 0x48
/* 8CFA4 800D6BE4 AE020030 */  sw         $v0, 0x30($s0)
.Lrace_800D6BE8:
/* 8CFA8 800D6BE8 8E020030 */  lw         $v0, 0x30($s0)
/* 8CFAC 800D6BEC 10400004 */  beqz       $v0, .Lrace_800D6C00
/* 8CFB0 800D6BF0 02002021 */   addu      $a0, $s0, $zero
/* 8CFB4 800D6BF4 92020018 */  lbu        $v0, 0x18($s0)
/* 8CFB8 800D6BF8 34420020 */  ori        $v0, $v0, 0x20
/* 8CFBC 800D6BFC A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800D6C00:
/* 8CFC0 800D6C00 8E050014 */  lw         $a1, 0x14($s0)
/* 8CFC4 800D6C04 0C03596C */  jal        func_race_800D65B0
/* 8CFC8 800D6C08 24060001 */   addiu     $a2, $zero, 0x1
/* 8CFCC 800D6C0C 24020003 */  addiu      $v0, $zero, 0x3
/* 8CFD0 800D6C10 AE020014 */  sw         $v0, 0x14($s0)
/* 8CFD4 800D6C14 8FBF0020 */  lw         $ra, 0x20($sp)
/* 8CFD8 800D6C18 8FB1001C */  lw         $s1, 0x1C($sp)
/* 8CFDC 800D6C1C 8FB00018 */  lw         $s0, 0x18($sp)
/* 8CFE0 800D6C20 03E00008 */  jr         $ra
/* 8CFE4 800D6C24 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800D6C28
/* 8CFE8 800D6C28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8CFEC 800D6C2C AFB00010 */  sw         $s0, 0x10($sp)
/* 8CFF0 800D6C30 00808021 */  addu       $s0, $a0, $zero
/* 8CFF4 800D6C34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8CFF8 800D6C38 8E050030 */  lw         $a1, 0x30($s0)
/* 8CFFC 800D6C3C 10A0000C */  beqz       $a1, .Lrace_800D6C70
/* 8D000 800D6C40 02002021 */   addu      $a0, $s0, $zero
/* 8D004 800D6C44 8E020060 */  lw         $v0, 0x60($s0)
/* 8D008 800D6C48 10400004 */  beqz       $v0, .Lrace_800D6C5C
/* 8D00C 800D6C4C 00000000 */   nop
/* 8D010 800D6C50 8E040020 */  lw         $a0, 0x20($s0)
/* 8D014 800D6C54 08035B18 */  j          .Lrace_800D6C60
/* 8D018 800D6C58 00000000 */   nop
.Lrace_800D6C5C:
/* 8D01C 800D6C5C 8E040024 */  lw         $a0, 0x24($s0)
.Lrace_800D6C60:
/* 8D020 800D6C60 0C01088C */  jal        func_80042230
/* 8D024 800D6C64 00000000 */   nop
/* 8D028 800D6C68 AE000030 */  sw         $zero, 0x30($s0)
/* 8D02C 800D6C6C 02002021 */  addu       $a0, $s0, $zero
.Lrace_800D6C70:
/* 8D030 800D6C70 8E050014 */  lw         $a1, 0x14($s0)
/* 8D034 800D6C74 0C03596C */  jal        func_race_800D65B0
/* 8D038 800D6C78 24060003 */   addiu     $a2, $zero, 0x3
/* 8D03C 800D6C7C 92020018 */  lbu        $v0, 0x18($s0)
/* 8D040 800D6C80 24030001 */  addiu      $v1, $zero, 0x1
/* 8D044 800D6C84 AE030014 */  sw         $v1, 0x14($s0)
/* 8D048 800D6C88 304200DF */  andi       $v0, $v0, 0xDF
/* 8D04C 800D6C8C A2020018 */  sb         $v0, 0x18($s0)
/* 8D050 800D6C90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8D054 800D6C94 8FB00010 */  lw         $s0, 0x10($sp)
/* 8D058 800D6C98 03E00008 */  jr         $ra
/* 8D05C 800D6C9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D6CA0
/* 8D060 800D6CA0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 8D064 800D6CA4 AFB1003C */  sw         $s1, 0x3C($sp)
/* 8D068 800D6CA8 00808821 */  addu       $s1, $a0, $zero
/* 8D06C 800D6CAC AFBF0044 */  sw         $ra, 0x44($sp)
/* 8D070 800D6CB0 AFB20040 */  sw         $s2, 0x40($sp)
/* 8D074 800D6CB4 0C03595D */  jal        func_race_800D6574
/* 8D078 800D6CB8 AFB00038 */   sw        $s0, 0x38($sp)
/* 8D07C 800D6CBC 8E220014 */  lw         $v0, 0x14($s1)
/* 8D080 800D6CC0 24120001 */  addiu      $s2, $zero, 0x1
/* 8D084 800D6CC4 1052006B */  beq        $v0, $s2, .Lrace_800D6E74
/* 8D088 800D6CC8 00000000 */   nop
/* 8D08C 800D6CCC 92220018 */  lbu        $v0, 0x18($s1)
/* 8D090 800D6CD0 30420020 */  andi       $v0, $v0, 0x20
/* 8D094 800D6CD4 1440001F */  bnez       $v0, .Lrace_800D6D54
/* 8D098 800D6CD8 26300028 */   addiu     $s0, $s1, 0x28
/* 8D09C 800D6CDC 8E240020 */  lw         $a0, 0x20($s1)
/* 8D0A0 800D6CE0 0C0107D5 */  jal        func_80041F54
/* 8D0A4 800D6CE4 02002821 */   addu      $a1, $s0, $zero
/* 8D0A8 800D6CE8 10400007 */  beqz       $v0, .Lrace_800D6D08
/* 8D0AC 800D6CEC 02002821 */   addu      $a1, $s0, $zero
/* 8D0B0 800D6CF0 26220054 */  addiu      $v0, $s1, 0x54
/* 8D0B4 800D6CF4 AE320060 */  sw         $s2, 0x60($s1)
/* 8D0B8 800D6CF8 AFA20010 */  sw         $v0, 0x10($sp)
/* 8D0BC 800D6CFC 8E240020 */  lw         $a0, 0x20($s1)
/* 8D0C0 800D6D00 08035B4C */  j          .Lrace_800D6D30
/* 8D0C4 800D6D04 2626003C */   addiu     $a2, $s1, 0x3C
.Lrace_800D6D08:
/* 8D0C8 800D6D08 8E240024 */  lw         $a0, 0x24($s1)
/* 8D0CC 800D6D0C 0C0107D5 */  jal        func_80041F54
/* 8D0D0 800D6D10 02002821 */   addu      $a1, $s0, $zero
/* 8D0D4 800D6D14 10400009 */  beqz       $v0, .Lrace_800D6D3C
/* 8D0D8 800D6D18 02002821 */   addu      $a1, $s0, $zero
/* 8D0DC 800D6D1C 2626003C */  addiu      $a2, $s1, 0x3C
/* 8D0E0 800D6D20 26220054 */  addiu      $v0, $s1, 0x54
/* 8D0E4 800D6D24 AE200060 */  sw         $zero, 0x60($s1)
/* 8D0E8 800D6D28 AFA20010 */  sw         $v0, 0x10($sp)
/* 8D0EC 800D6D2C 8E240024 */  lw         $a0, 0x24($s1)
.Lrace_800D6D30:
/* 8D0F0 800D6D30 0C0107DD */  jal        func_80041F74
/* 8D0F4 800D6D34 26270048 */   addiu     $a3, $s1, 0x48
/* 8D0F8 800D6D38 AE220030 */  sw         $v0, 0x30($s1)
.Lrace_800D6D3C:
/* 8D0FC 800D6D3C 8E220030 */  lw         $v0, 0x30($s1)
/* 8D100 800D6D40 10400004 */  beqz       $v0, .Lrace_800D6D54
/* 8D104 800D6D44 00000000 */   nop
/* 8D108 800D6D48 92220018 */  lbu        $v0, 0x18($s1)
/* 8D10C 800D6D4C 34420020 */  ori        $v0, $v0, 0x20
/* 8D110 800D6D50 A2220018 */  sb         $v0, 0x18($s1)
.Lrace_800D6D54:
/* 8D114 800D6D54 8E230034 */  lw         $v1, 0x34($s1)
/* 8D118 800D6D58 10600046 */  beqz       $v1, .Lrace_800D6E74
/* 8D11C 800D6D5C 00000000 */   nop
/* 8D120 800D6D60 8E220030 */  lw         $v0, 0x30($s1)
/* 8D124 800D6D64 10400043 */  beqz       $v0, .Lrace_800D6E74
/* 8D128 800D6D68 00002821 */   addu      $a1, $zero, $zero
/* 8D12C 800D6D6C 8C620024 */  lw         $v0, 0x24($v1)
/* 8D130 800D6D70 844400C0 */  lh         $a0, 0xC0($v0)
/* 8D134 800D6D74 8C4200C4 */  lw         $v0, 0xC4($v0)
/* 8D138 800D6D78 0040F809 */  jalr       $v0
/* 8D13C 800D6D7C 00642021 */   addu      $a0, $v1, $a0
/* 8D140 800D6D80 8E230034 */  lw         $v1, 0x34($s1)
/* 8D144 800D6D84 8C620024 */  lw         $v0, 0x24($v1)
/* 8D148 800D6D88 00002821 */  addu       $a1, $zero, $zero
/* 8D14C 800D6D8C 844400B8 */  lh         $a0, 0xB8($v0)
/* 8D150 800D6D90 8C4200BC */  lw         $v0, 0xBC($v0)
/* 8D154 800D6D94 0040F809 */  jalr       $v0
/* 8D158 800D6D98 00642021 */   addu      $a0, $v1, $a0
/* 8D15C 800D6D9C 8C430008 */  lw         $v1, 0x8($v0)
/* 8D160 800D6DA0 8E250038 */  lw         $a1, 0x38($s1)
/* 8D164 800D6DA4 84640038 */  lh         $a0, 0x38($v1)
/* 8D168 800D6DA8 8C63003C */  lw         $v1, 0x3C($v1)
/* 8D16C 800D6DAC 0060F809 */  jalr       $v1
/* 8D170 800D6DB0 00442021 */   addu      $a0, $v0, $a0
/* 8D174 800D6DB4 00408021 */  addu       $s0, $v0, $zero
/* 8D178 800D6DB8 AFA00028 */  sw         $zero, 0x28($sp)
/* 8D17C 800D6DBC AFA0002C */  sw         $zero, 0x2C($sp)
/* 8D180 800D6DC0 AFA00030 */  sw         $zero, 0x30($sp)
/* 8D184 800D6DC4 27A50018 */  addiu      $a1, $sp, 0x18
.Lrace_800D6DC8:
/* 8D188 800D6DC8 8FA80028 */  lw         $t0, 0x28($sp)
/* 8D18C 800D6DCC 8FA9002C */  lw         $t1, 0x2C($sp)
/* 8D190 800D6DD0 8FAA0030 */  lw         $t2, 0x30($sp)
/* 8D194 800D6DD4 AFA80018 */  sw         $t0, 0x18($sp)
/* 8D198 800D6DD8 AFA9001C */  sw         $t1, 0x1C($sp)
/* 8D19C 800D6DDC AFAA0020 */  sw         $t2, 0x20($sp)
/* 8D1A0 800D6DE0 8E02000C */  lw         $v0, 0xC($s0)
/* 8D1A4 800D6DE4 27A60028 */  addiu      $a2, $sp, 0x28
/* 8D1A8 800D6DE8 84440010 */  lh         $a0, 0x10($v0)
/* 8D1AC 800D6DEC 8C420014 */  lw         $v0, 0x14($v0)
/* 8D1B0 800D6DF0 0040F809 */  jalr       $v0
/* 8D1B4 800D6DF4 02042021 */   addu      $a0, $s0, $a0
/* 8D1B8 800D6DF8 8E100000 */  lw         $s0, 0x0($s0)
/* 8D1BC 800D6DFC 5600FFF2 */  bnel       $s0, $zero, .Lrace_800D6DC8
/* 8D1C0 800D6E00 27A50018 */   addiu     $a1, $sp, 0x18
/* 8D1C4 800D6E04 8E230034 */  lw         $v1, 0x34($s1)
/* 8D1C8 800D6E08 8C620078 */  lw         $v0, 0x78($v1)
/* 8D1CC 800D6E0C C4620058 */  lwc1       $f2, 0x58($v1)
/* 8D1D0 800D6E10 C4400034 */  lwc1       $f0, 0x34($v0)
/* 8D1D4 800D6E14 46001082 */  mul.s      $f2, $f2, $f0
/* 8D1D8 800D6E18 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 8D1DC 800D6E1C 46023182 */  mul.s      $f6, $f6, $f2
/* 8D1E0 800D6E20 C7A4002C */  lwc1       $f4, 0x2C($sp)
/* 8D1E4 800D6E24 46022102 */  mul.s      $f4, $f4, $f2
/* 8D1E8 800D6E28 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 8D1EC 800D6E2C 46020002 */  mul.s      $f0, $f0, $f2
/* 8D1F0 800D6E30 E7A60028 */  swc1       $f6, 0x28($sp)
/* 8D1F4 800D6E34 E7A4002C */  swc1       $f4, 0x2C($sp)
/* 8D1F8 800D6E38 E7A00030 */  swc1       $f0, 0x30($sp)
/* 8D1FC 800D6E3C 8E230034 */  lw         $v1, 0x34($s1)
/* 8D200 800D6E40 27A50028 */  addiu      $a1, $sp, 0x28
/* 8D204 800D6E44 8C620024 */  lw         $v0, 0x24($v1)
/* 8D208 800D6E48 27A60018 */  addiu      $a2, $sp, 0x18
/* 8D20C 800D6E4C 84440060 */  lh         $a0, 0x60($v0)
/* 8D210 800D6E50 8C420064 */  lw         $v0, 0x64($v0)
/* 8D214 800D6E54 0040F809 */  jalr       $v0
/* 8D218 800D6E58 00642021 */   addu      $a0, $v1, $a0
/* 8D21C 800D6E5C 8E220030 */  lw         $v0, 0x30($s1)
/* 8D220 800D6E60 8C440000 */  lw         $a0, 0x0($v0)
/* 8D224 800D6E64 10800003 */  beqz       $a0, .Lrace_800D6E74
/* 8D228 800D6E68 27A50018 */   addiu     $a1, $sp, 0x18
/* 8D22C 800D6E6C 0C01058D */  jal        func_80041634
/* 8D230 800D6E70 00000000 */   nop
.Lrace_800D6E74:
/* 8D234 800D6E74 8FBF0044 */  lw         $ra, 0x44($sp)
/* 8D238 800D6E78 8FB20040 */  lw         $s2, 0x40($sp)
/* 8D23C 800D6E7C 8FB1003C */  lw         $s1, 0x3C($sp)
/* 8D240 800D6E80 8FB00038 */  lw         $s0, 0x38($sp)
/* 8D244 800D6E84 03E00008 */  jr         $ra
/* 8D248 800D6E88 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_800D6E8C
/* 8D24C 800D6E8C 8C820038 */  lw         $v0, 0x38($a0)
/* 8D250 800D6E90 03E00008 */  jr         $ra
/* 8D254 800D6E94 00000000 */   nop

glabel func_race_800D6E98
/* 8D258 800D6E98 8C820034 */  lw         $v0, 0x34($a0)
/* 8D25C 800D6E9C 03E00008 */  jr         $ra
/* 8D260 800D6EA0 00000000 */   nop

glabel func_race_800D6EA4
/* 8D264 800D6EA4 8C820020 */  lw         $v0, 0x20($a0)
/* 8D268 800D6EA8 03E00008 */  jr         $ra
/* 8D26C 800D6EAC 00000000 */   nop

glabel func_race_800D6EB0
/* 8D270 800D6EB0 03E00008 */  jr         $ra
/* 8D274 800D6EB4 2482003C */   addiu     $v0, $a0, 0x3C

glabel func_race_800D6EB8
/* 8D278 800D6EB8 C4800054 */  lwc1       $f0, 0x54($a0)
/* 8D27C 800D6EBC E4A00000 */  swc1       $f0, 0x0($a1)
/* 8D280 800D6EC0 C4800058 */  lwc1       $f0, 0x58($a0)
/* 8D284 800D6EC4 E4A00004 */  swc1       $f0, 0x4($a1)
/* 8D288 800D6EC8 C480005C */  lwc1       $f0, 0x5C($a0)
/* 8D28C 800D6ECC 03E00008 */  jr         $ra
/* 8D290 800D6ED0 E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_800D6ED4
/* 8D294 800D6ED4 C4800048 */  lwc1       $f0, 0x48($a0)
/* 8D298 800D6ED8 E4A00000 */  swc1       $f0, 0x0($a1)
/* 8D29C 800D6EDC C480004C */  lwc1       $f0, 0x4C($a0)
/* 8D2A0 800D6EE0 E4A00004 */  swc1       $f0, 0x4($a1)
/* 8D2A4 800D6EE4 C4800050 */  lwc1       $f0, 0x50($a0)
/* 8D2A8 800D6EE8 03E00008 */  jr         $ra
/* 8D2AC 800D6EEC E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_800D6EF0
/* 8D2B0 800D6EF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8D2B4 800D6EF4 24820028 */  addiu      $v0, $a0, 0x28
/* 8D2B8 800D6EF8 00A02021 */  addu       $a0, $a1, $zero
/* 8D2BC 800D6EFC 00402821 */  addu       $a1, $v0, $zero
/* 8D2C0 800D6F00 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8D2C4 800D6F04 0C000708 */  jal        func_80001C20
/* 8D2C8 800D6F08 24060008 */   addiu     $a2, $zero, 0x8
/* 8D2CC 800D6F0C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8D2D0 800D6F10 03E00008 */  jr         $ra
/* 8D2D4 800D6F14 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D6F18
/* 8D2D8 800D6F18 8C820030 */  lw         $v0, 0x30($a0)
/* 8D2DC 800D6F1C 03E00008 */  jr         $ra
/* 8D2E0 800D6F20 00000000 */   nop

glabel func_race_800D6F24
/* 8D2E4 800D6F24 03E00008 */  jr         $ra
/* 8D2E8 800D6F28 24020003 */   addiu     $v0, $zero, 0x3
