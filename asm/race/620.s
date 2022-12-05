.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8010EB30
/* C4EF0 8010EB30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4EF4 8010EB34 AFB00010 */  sw         $s0, 0x10($sp)
/* C4EF8 8010EB38 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4EFC 8010EB3C 0C043AE7 */  jal        func_race_8010EB9C
/* C4F00 8010EB40 00808021 */   addu      $s0, $a0, $zero
/* C4F04 8010EB44 02001021 */  addu       $v0, $s0, $zero
/* C4F08 8010EB48 8FBF0014 */  lw         $ra, 0x14($sp)
/* C4F0C 8010EB4C 8FB00010 */  lw         $s0, 0x10($sp)
/* C4F10 8010EB50 03E00008 */  jr         $ra
/* C4F14 8010EB54 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010EB58
/* C4F18 8010EB58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C4F1C 8010EB5C AFB10014 */  sw         $s1, 0x14($sp)
/* C4F20 8010EB60 00808821 */  addu       $s1, $a0, $zero
/* C4F24 8010EB64 AFB00010 */  sw         $s0, 0x10($sp)
/* C4F28 8010EB68 AFBF0018 */  sw         $ra, 0x18($sp)
/* C4F2C 8010EB6C 0C043AEC */  jal        func_race_8010EBB0
/* C4F30 8010EB70 00A08021 */   addu      $s0, $a1, $zero
/* C4F34 8010EB74 32100001 */  andi       $s0, $s0, 0x1
/* C4F38 8010EB78 12000003 */  beqz       $s0, .Lrace_8010EB88
/* C4F3C 8010EB7C 00000000 */   nop
/* C4F40 8010EB80 0C01FB5C */  jal        func_8007ED70
/* C4F44 8010EB84 02202021 */   addu      $a0, $s1, $zero
.Lrace_8010EB88:
/* C4F48 8010EB88 8FBF0018 */  lw         $ra, 0x18($sp)
/* C4F4C 8010EB8C 8FB10014 */  lw         $s1, 0x14($sp)
/* C4F50 8010EB90 8FB00010 */  lw         $s0, 0x10($sp)
/* C4F54 8010EB94 03E00008 */  jr         $ra
/* C4F58 8010EB98 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010EB9C
/* C4F5C 8010EB9C AC800000 */  sw         $zero, 0x0($a0)
/* C4F60 8010EBA0 AC800004 */  sw         $zero, 0x4($a0)
/* C4F64 8010EBA4 AC800008 */  sw         $zero, 0x8($a0)
/* C4F68 8010EBA8 03E00008 */  jr         $ra
/* C4F6C 8010EBAC AC80000C */   sw        $zero, 0xC($a0)

glabel func_race_8010EBB0
/* C4F70 8010EBB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4F74 8010EBB4 AFBF0010 */  sw         $ra, 0x10($sp)
/* C4F78 8010EBB8 0C043AE7 */  jal        func_race_8010EB9C
/* C4F7C 8010EBBC 00000000 */   nop
/* C4F80 8010EBC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* C4F84 8010EBC4 03E00008 */  jr         $ra
/* C4F88 8010EBC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010EBCC
/* C4F8C 8010EBCC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C4F90 8010EBD0 AFB00010 */  sw         $s0, 0x10($sp)
/* C4F94 8010EBD4 00808021 */  addu       $s0, $a0, $zero
/* C4F98 8010EBD8 AFB10014 */  sw         $s1, 0x14($sp)
/* C4F9C 8010EBDC 00A08821 */  addu       $s1, $a1, $zero
/* C4FA0 8010EBE0 AFBF001C */  sw         $ra, 0x1C($sp)
/* C4FA4 8010EBE4 AFB20018 */  sw         $s2, 0x18($sp)
/* C4FA8 8010EBE8 8E020000 */  lw         $v0, 0x0($s0)
/* C4FAC 8010EBEC 10400003 */  beqz       $v0, .Lrace_8010EBFC
/* C4FB0 8010EBF0 00C09021 */   addu      $s2, $a2, $zero
/* C4FB4 8010EBF4 0C043AEC */  jal        func_race_8010EBB0
/* C4FB8 8010EBF8 00000000 */   nop
.Lrace_8010EBFC:
/* C4FBC 8010EBFC 24023A98 */  addiu      $v0, $zero, 0x3A98
/* C4FC0 8010EC00 AE110000 */  sw         $s1, 0x0($s0)
/* C4FC4 8010EC04 AE120004 */  sw         $s2, 0x4($s0)
/* C4FC8 8010EC08 AE020008 */  sw         $v0, 0x8($s0)
/* C4FCC 8010EC0C 8FBF001C */  lw         $ra, 0x1C($sp)
/* C4FD0 8010EC10 8FB20018 */  lw         $s2, 0x18($sp)
/* C4FD4 8010EC14 8FB10014 */  lw         $s1, 0x14($sp)
/* C4FD8 8010EC18 8FB00010 */  lw         $s0, 0x10($sp)
/* C4FDC 8010EC1C 03E00008 */  jr         $ra
/* C4FE0 8010EC20 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010EC24
/* C4FE4 8010EC24 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C4FE8 8010EC28 AFB3001C */  sw         $s3, 0x1C($sp)
/* C4FEC 8010EC2C 00809821 */  addu       $s3, $a0, $zero
/* C4FF0 8010EC30 AFBF0024 */  sw         $ra, 0x24($sp)
/* C4FF4 8010EC34 AFB40020 */  sw         $s4, 0x20($sp)
/* C4FF8 8010EC38 AFB20018 */  sw         $s2, 0x18($sp)
/* C4FFC 8010EC3C AFB10014 */  sw         $s1, 0x14($sp)
/* C5000 8010EC40 AFB00010 */  sw         $s0, 0x10($sp)
/* C5004 8010EC44 F7B60030 */  sdc1       $f22, 0x30($sp)
/* C5008 8010EC48 F7B40028 */  sdc1       $f20, 0x28($sp)
/* C500C 8010EC4C 8E630008 */  lw         $v1, 0x8($s3)
/* C5010 8010EC50 3C01800D */  lui        $at, %hi(D_race_800CDC90)
/* C5014 8010EC54 C434DC90 */  lwc1       $f20, %lo(D_race_800CDC90)($at)
/* C5018 8010EC58 0065102B */  sltu       $v0, $v1, $a1
/* C501C 8010EC5C 54400004 */  bnel       $v0, $zero, .Lrace_8010EC70
/* C5020 8010EC60 AE600008 */   sw        $zero, 0x8($s3)
/* C5024 8010EC64 00651023 */  subu       $v0, $v1, $a1
/* C5028 8010EC68 08043B8D */  j          .Lrace_8010EE34
/* C502C 8010EC6C AE620008 */   sw        $v0, 0x8($s3)
.Lrace_8010EC70:
/* C5030 8010EC70 00009021 */  addu       $s2, $zero, $zero
/* C5034 8010EC74 02408821 */  addu       $s1, $s2, $zero
.Lrace_8010EC78:
/* C5038 8010EC78 8E620004 */  lw         $v0, 0x4($s3)
/* C503C 8010EC7C 0242102B */  sltu       $v0, $s2, $v0
/* C5040 8010EC80 10400016 */  beqz       $v0, .Lrace_8010ECDC
/* C5044 8010EC84 00000000 */   nop
/* C5048 8010EC88 8E620000 */  lw         $v0, 0x0($s3)
/* C504C 8010EC8C 02222021 */  addu       $a0, $s1, $v0
/* C5050 8010EC90 8C820D08 */  lw         $v0, 0xD08($a0)
/* C5054 8010EC94 38420002 */  xori       $v0, $v0, 0x2
/* C5058 8010EC98 10400007 */  beqz       $v0, .Lrace_8010ECB8
/* C505C 8010EC9C 00008021 */   addu      $s0, $zero, $zero
/* C5060 8010ECA0 0C04382E */  jal        func_race_8010E0B8
/* C5064 8010ECA4 00000000 */   nop
/* C5068 8010ECA8 4600A03C */  c.lt.s     $f20, $f0
/* C506C 8010ECAC 00000000 */  nop
/* C5070 8010ECB0 45030001 */  bc1tl      .Lrace_8010ECB8
/* C5074 8010ECB4 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_8010ECB8:
/* C5078 8010ECB8 52000006 */  beql       $s0, $zero, .Lrace_8010ECD4
/* C507C 8010ECBC 26310E2C */   addiu     $s1, $s1, 0xE2C
/* C5080 8010ECC0 8E640000 */  lw         $a0, 0x0($s3)
/* C5084 8010ECC4 0C04382E */  jal        func_race_8010E0B8
/* C5088 8010ECC8 00912021 */   addu      $a0, $a0, $s1
/* C508C 8010ECCC 46000506 */  mov.s      $f20, $f0
/* C5090 8010ECD0 26310E2C */  addiu      $s1, $s1, 0xE2C
.Lrace_8010ECD4:
/* C5094 8010ECD4 08043B1E */  j          .Lrace_8010EC78
/* C5098 8010ECD8 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_8010ECDC:
/* C509C 8010ECDC 3C01800D */  lui        $at, %hi(D_race_800CDC94)
/* C50A0 8010ECE0 C420DC94 */  lwc1       $f0, %lo(D_race_800CDC94)($at)
/* C50A4 8010ECE4 4600A032 */  c.eq.s     $f20, $f0
/* C50A8 8010ECE8 00000000 */  nop
/* C50AC 8010ECEC 45000019 */  bc1f       .Lrace_8010ED54
/* C50B0 8010ECF0 00009021 */   addu      $s2, $zero, $zero
/* C50B4 8010ECF4 3C062010 */  lui        $a2, (0x20100000 >> 16)
/* C50B8 8010ECF8 3C050004 */  lui        $a1, (0x40000 >> 16)
/* C50BC 8010ECFC 02402021 */  addu       $a0, $s2, $zero
.Lrace_8010ED00:
/* C50C0 8010ED00 8E620004 */  lw         $v0, 0x4($s3)
/* C50C4 8010ED04 0242102B */  sltu       $v0, $s2, $v0
/* C50C8 8010ED08 1040004A */  beqz       $v0, .Lrace_8010EE34
/* C50CC 8010ED0C 00000000 */   nop
/* C50D0 8010ED10 8E620000 */  lw         $v0, 0x0($s3)
/* C50D4 8010ED14 00821821 */  addu       $v1, $a0, $v0
/* C50D8 8010ED18 8C620D04 */  lw         $v0, 0xD04($v1)
/* C50DC 8010ED1C 00461024 */  and        $v0, $v0, $a2
/* C50E0 8010ED20 5440000A */  bnel       $v0, $zero, .Lrace_8010ED4C
/* C50E4 8010ED24 24840E2C */   addiu     $a0, $a0, 0xE2C
/* C50E8 8010ED28 246303FC */  addiu      $v1, $v1, 0x3FC
/* C50EC 8010ED2C 8C6206AC */  lw         $v0, 0x6AC($v1)
/* C50F0 8010ED30 3C01800D */  lui        $at, %hi(D_race_800CDC98)
/* C50F4 8010ED34 C420DC98 */  lwc1       $f0, %lo(D_race_800CDC98)($at)
/* C50F8 8010ED38 00451024 */  and        $v0, $v0, $a1
/* C50FC 8010ED3C 14400002 */  bnez       $v0, .Lrace_8010ED48
/* C5100 8010ED40 E46007D4 */   swc1      $f0, 0x7D4($v1)
/* C5104 8010ED44 E46007D8 */  swc1       $f0, 0x7D8($v1)
.Lrace_8010ED48:
/* C5108 8010ED48 24840E2C */  addiu      $a0, $a0, 0xE2C
.Lrace_8010ED4C:
/* C510C 8010ED4C 08043B40 */  j          .Lrace_8010ED00
/* C5110 8010ED50 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_8010ED54:
/* C5114 8010ED54 3C142010 */  lui        $s4, (0x20100000 >> 16)
/* C5118 8010ED58 3C01800D */  lui        $at, %hi(D_race_800CDC9C)
/* C511C 8010ED5C C436DC9C */  lwc1       $f22, %lo(D_race_800CDC9C)($at)
/* C5120 8010ED60 3C110004 */  lui        $s1, (0x40000 >> 16)
/* C5124 8010ED64 02408021 */  addu       $s0, $s2, $zero
.Lrace_8010ED68:
/* C5128 8010ED68 8E620004 */  lw         $v0, 0x4($s3)
/* C512C 8010ED6C 0242102B */  sltu       $v0, $s2, $v0
/* C5130 8010ED70 10400030 */  beqz       $v0, .Lrace_8010EE34
/* C5134 8010ED74 00000000 */   nop
/* C5138 8010ED78 5240002C */  beql       $s2, $zero, .Lrace_8010EE2C
/* C513C 8010ED7C 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C5140 8010ED80 8E620000 */  lw         $v0, 0x0($s3)
/* C5144 8010ED84 02022021 */  addu       $a0, $s0, $v0
/* C5148 8010ED88 8C820D04 */  lw         $v0, 0xD04($a0)
/* C514C 8010ED8C 00541024 */  and        $v0, $v0, $s4
/* C5150 8010ED90 54400026 */  bnel       $v0, $zero, .Lrace_8010EE2C
/* C5154 8010ED94 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C5158 8010ED98 0C04382E */  jal        func_race_8010E0B8
/* C515C 8010ED9C 00000000 */   nop
/* C5160 8010EDA0 4600A03C */  c.lt.s     $f20, $f0
/* C5164 8010EDA4 00000000 */  nop
/* C5168 8010EDA8 4500000C */  bc1f       .Lrace_8010EDDC
/* C516C 8010EDAC 00000000 */   nop
/* C5170 8010EDB0 8E620000 */  lw         $v0, 0x0($s3)
/* C5174 8010EDB4 C660000C */  lwc1       $f0, 0xC($s3)
/* C5178 8010EDB8 02021021 */  addu       $v0, $s0, $v0
/* C517C 8010EDBC 244303FC */  addiu      $v1, $v0, 0x3FC
/* C5180 8010EDC0 46160000 */  add.s      $f0, $f0, $f22
/* C5184 8010EDC4 8C6206AC */  lw         $v0, 0x6AC($v1)
/* C5188 8010EDC8 00511024 */  and        $v0, $v0, $s1
/* C518C 8010EDCC 14400016 */  bnez       $v0, .Lrace_8010EE28
/* C5190 8010EDD0 E46007D4 */   swc1      $f0, 0x7D4($v1)
/* C5194 8010EDD4 08043B8A */  j          .Lrace_8010EE28
/* C5198 8010EDD8 E46007D8 */   swc1      $f0, 0x7D8($v1)
.Lrace_8010EDDC:
/* C519C 8010EDDC 8E640000 */  lw         $a0, 0x0($s3)
/* C51A0 8010EDE0 0C04382E */  jal        func_race_8010E0B8
/* C51A4 8010EDE4 00902021 */   addu      $a0, $a0, $s0
/* C51A8 8010EDE8 4614003C */  c.lt.s     $f0, $f20
/* C51AC 8010EDEC 00000000 */  nop
/* C51B0 8010EDF0 4502000E */  bc1fl      .Lrace_8010EE2C
/* C51B4 8010EDF4 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C51B8 8010EDF8 8E620000 */  lw         $v0, 0x0($s3)
/* C51BC 8010EDFC C662000C */  lwc1       $f2, 0xC($s3)
/* C51C0 8010EE00 3C01800D */  lui        $at, %hi(D_race_800CDCA0)
/* C51C4 8010EE04 C420DCA0 */  lwc1       $f0, %lo(D_race_800CDCA0)($at)
/* C51C8 8010EE08 02021021 */  addu       $v0, $s0, $v0
/* C51CC 8010EE0C 244303FC */  addiu      $v1, $v0, 0x3FC
/* C51D0 8010EE10 46001080 */  add.s      $f2, $f2, $f0
/* C51D4 8010EE14 8C6206AC */  lw         $v0, 0x6AC($v1)
/* C51D8 8010EE18 00511024 */  and        $v0, $v0, $s1
/* C51DC 8010EE1C 14400002 */  bnez       $v0, .Lrace_8010EE28
/* C51E0 8010EE20 E46207D4 */   swc1      $f2, 0x7D4($v1)
/* C51E4 8010EE24 E46207D8 */  swc1       $f2, 0x7D8($v1)
.Lrace_8010EE28:
/* C51E8 8010EE28 26100E2C */  addiu      $s0, $s0, 0xE2C
.Lrace_8010EE2C:
/* C51EC 8010EE2C 08043B5A */  j          .Lrace_8010ED68
/* C51F0 8010EE30 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_8010EE34:
/* C51F4 8010EE34 8FBF0024 */  lw         $ra, 0x24($sp)
/* C51F8 8010EE38 8FB40020 */  lw         $s4, 0x20($sp)
/* C51FC 8010EE3C 8FB3001C */  lw         $s3, 0x1C($sp)
/* C5200 8010EE40 8FB20018 */  lw         $s2, 0x18($sp)
/* C5204 8010EE44 8FB10014 */  lw         $s1, 0x14($sp)
/* C5208 8010EE48 8FB00010 */  lw         $s0, 0x10($sp)
/* C520C 8010EE4C D7B60030 */  ldc1       $f22, 0x30($sp)
/* C5210 8010EE50 D7B40028 */  ldc1       $f20, 0x28($sp)
/* C5214 8010EE54 03E00008 */  jr         $ra
/* C5218 8010EE58 27BD0038 */   addiu     $sp, $sp, 0x38
