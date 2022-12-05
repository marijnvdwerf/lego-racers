.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8012F9A0
/* E5D60 8012F9A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E5D64 8012F9A4 AFB00010 */  sw         $s0, 0x10($sp)
/* E5D68 8012F9A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* E5D6C 8012F9AC 0C047E80 */  jal        func_race_8011FA00
/* E5D70 8012F9B0 00808021 */   addu      $s0, $a0, $zero
/* E5D74 8012F9B4 3C02800D */  lui        $v0, %hi(D_race_800CF238)
/* E5D78 8012F9B8 2442F238 */  addiu      $v0, $v0, %lo(D_race_800CF238)
/* E5D7C 8012F9BC 26040018 */  addiu      $a0, $s0, 0x18
/* E5D80 8012F9C0 0C016038 */  jal        func_800580E0
/* E5D84 8012F9C4 AE020000 */   sw        $v0, 0x0($s0)
/* E5D88 8012F9C8 0C04BE8B */  jal        func_race_8012FA2C
/* E5D8C 8012F9CC 02002021 */   addu      $a0, $s0, $zero
/* E5D90 8012F9D0 02001021 */  addu       $v0, $s0, $zero
/* E5D94 8012F9D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* E5D98 8012F9D8 8FB00010 */  lw         $s0, 0x10($sp)
/* E5D9C 8012F9DC 03E00008 */  jr         $ra
/* E5DA0 8012F9E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012F9E4
/* E5DA4 8012F9E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E5DA8 8012F9E8 AFB00010 */  sw         $s0, 0x10($sp)
/* E5DAC 8012F9EC 00808021 */  addu       $s0, $a0, $zero
/* E5DB0 8012F9F0 AFB10014 */  sw         $s1, 0x14($sp)
/* E5DB4 8012F9F4 00A08821 */  addu       $s1, $a1, $zero
/* E5DB8 8012F9F8 3C02800D */  lui        $v0, %hi(D_race_800CF238)
/* E5DBC 8012F9FC 2442F238 */  addiu      $v0, $v0, %lo(D_race_800CF238)
/* E5DC0 8012FA00 AFBF0018 */  sw         $ra, 0x18($sp)
/* E5DC4 8012FA04 0C04BEB1 */  jal        func_race_8012FAC4
/* E5DC8 8012FA08 AE020000 */   sw        $v0, 0x0($s0)
/* E5DCC 8012FA0C 02002021 */  addu       $a0, $s0, $zero
/* E5DD0 8012FA10 0C047E8A */  jal        func_race_8011FA28
/* E5DD4 8012FA14 02202821 */   addu      $a1, $s1, $zero
/* E5DD8 8012FA18 8FBF0018 */  lw         $ra, 0x18($sp)
/* E5DDC 8012FA1C 8FB10014 */  lw         $s1, 0x14($sp)
/* E5DE0 8012FA20 8FB00010 */  lw         $s0, 0x10($sp)
/* E5DE4 8012FA24 03E00008 */  jr         $ra
/* E5DE8 8012FA28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012FA2C
/* E5DEC 8012FA2C AC800004 */  sw         $zero, 0x4($a0)
/* E5DF0 8012FA30 AC8000E0 */  sw         $zero, 0xE0($a0)
/* E5DF4 8012FA34 AC8000A8 */  sw         $zero, 0xA8($a0)
/* E5DF8 8012FA38 AC8000AC */  sw         $zero, 0xAC($a0)
/* E5DFC 8012FA3C AC8000B0 */  sw         $zero, 0xB0($a0)
/* E5E00 8012FA40 AC8000B4 */  sw         $zero, 0xB4($a0)
/* E5E04 8012FA44 AC8000B8 */  sw         $zero, 0xB8($a0)
/* E5E08 8012FA48 AC8000BC */  sw         $zero, 0xBC($a0)
/* E5E0C 8012FA4C AC8000C0 */  sw         $zero, 0xC0($a0)
/* E5E10 8012FA50 AC8000C4 */  sw         $zero, 0xC4($a0)
/* E5E14 8012FA54 AC8000C8 */  sw         $zero, 0xC8($a0)
/* E5E18 8012FA58 AC8000CC */  sw         $zero, 0xCC($a0)
/* E5E1C 8012FA5C AC8000D0 */  sw         $zero, 0xD0($a0)
/* E5E20 8012FA60 AC8000D4 */  sw         $zero, 0xD4($a0)
/* E5E24 8012FA64 AC8000D8 */  sw         $zero, 0xD8($a0)
/* E5E28 8012FA68 03E00008 */  jr         $ra
/* E5E2C 8012FA6C AC8000DC */   sw        $zero, 0xDC($a0)

glabel func_race_8012FA70
/* E5E30 8012FA70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E5E34 8012FA74 AFB00010 */  sw         $s0, 0x10($sp)
/* E5E38 8012FA78 00808021 */  addu       $s0, $a0, $zero
/* E5E3C 8012FA7C AFBF0018 */  sw         $ra, 0x18($sp)
/* E5E40 8012FA80 AFB10014 */  sw         $s1, 0x14($sp)
/* E5E44 8012FA84 8E020004 */  lw         $v0, 0x4($s0)
/* E5E48 8012FA88 10400003 */  beqz       $v0, .Lrace_8012FA98
/* E5E4C 8012FA8C 00A08821 */   addu      $s1, $a1, $zero
/* E5E50 8012FA90 0C04BEB1 */  jal        func_race_8012FAC4
/* E5E54 8012FA94 00000000 */   nop
.Lrace_8012FA98:
/* E5E58 8012FA98 8E220000 */  lw         $v0, 0x0($s1)
/* E5E5C 8012FA9C AE0200AC */  sw         $v0, 0xAC($s0)
/* E5E60 8012FAA0 C6200004 */  lwc1       $f0, 0x4($s1)
/* E5E64 8012FAA4 24020001 */  addiu      $v0, $zero, 0x1
/* E5E68 8012FAA8 AE020004 */  sw         $v0, 0x4($s0)
/* E5E6C 8012FAAC E60000B0 */  swc1       $f0, 0xB0($s0)
/* E5E70 8012FAB0 8FBF0018 */  lw         $ra, 0x18($sp)
/* E5E74 8012FAB4 8FB10014 */  lw         $s1, 0x14($sp)
/* E5E78 8012FAB8 8FB00010 */  lw         $s0, 0x10($sp)
/* E5E7C 8012FABC 03E00008 */  jr         $ra
/* E5E80 8012FAC0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012FAC4
/* E5E84 8012FAC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E5E88 8012FAC8 AFB00010 */  sw         $s0, 0x10($sp)
/* E5E8C 8012FACC 00808021 */  addu       $s0, $a0, $zero
/* E5E90 8012FAD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* E5E94 8012FAD4 8E020000 */  lw         $v0, 0x0($s0)
/* E5E98 8012FAD8 84440040 */  lh         $a0, 0x40($v0)
/* E5E9C 8012FADC 8C420044 */  lw         $v0, 0x44($v0)
/* E5EA0 8012FAE0 0040F809 */  jalr       $v0
/* E5EA4 8012FAE4 02042021 */   addu      $a0, $s0, $a0
/* E5EA8 8012FAE8 0C04BE8B */  jal        func_race_8012FA2C
/* E5EAC 8012FAEC 02002021 */   addu      $a0, $s0, $zero
/* E5EB0 8012FAF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* E5EB4 8012FAF4 8FB00010 */  lw         $s0, 0x10($sp)
/* E5EB8 8012FAF8 03E00008 */  jr         $ra
/* E5EBC 8012FAFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012FB00
/* E5EC0 8012FB00 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* E5EC4 8012FB04 AFB20028 */  sw         $s2, 0x28($sp)
/* E5EC8 8012FB08 00809021 */  addu       $s2, $a0, $zero
/* E5ECC 8012FB0C AFB40030 */  sw         $s4, 0x30($sp)
/* E5ED0 8012FB10 00A0A021 */  addu       $s4, $a1, $zero
/* E5ED4 8012FB14 AFB3002C */  sw         $s3, 0x2C($sp)
/* E5ED8 8012FB18 00C09821 */  addu       $s3, $a2, $zero
/* E5EDC 8012FB1C AFB50034 */  sw         $s5, 0x34($sp)
/* E5EE0 8012FB20 00E0A821 */  addu       $s5, $a3, $zero
/* E5EE4 8012FB24 AFBF0038 */  sw         $ra, 0x38($sp)
/* E5EE8 8012FB28 AFB10024 */  sw         $s1, 0x24($sp)
/* E5EEC 8012FB2C AFB00020 */  sw         $s0, 0x20($sp)
/* E5EF0 8012FB30 F7B40040 */  sdc1       $f20, 0x40($sp)
/* E5EF4 8012FB34 8E830D04 */  lw         $v1, 0xD04($s4)
/* E5EF8 8012FB38 30620010 */  andi       $v0, $v1, 0x10
/* E5EFC 8012FB3C 14400005 */  bnez       $v0, .Lrace_8012FB54
/* E5F00 8012FB40 00002021 */   addu      $a0, $zero, $zero
/* E5F04 8012FB44 3C020020 */  lui        $v0, (0x200000 >> 16)
/* E5F08 8012FB48 00621024 */  and        $v0, $v1, $v0
/* E5F0C 8012FB4C 10400002 */  beqz       $v0, .Lrace_8012FB58
/* E5F10 8012FB50 00000000 */   nop
.Lrace_8012FB54:
/* E5F14 8012FB54 24040001 */  addiu      $a0, $zero, 0x1
.Lrace_8012FB58:
/* E5F18 8012FB58 14800077 */  bnez       $a0, .Lrace_8012FD38
/* E5F1C 8012FB5C 24020006 */   addiu     $v0, $zero, 0x6
/* E5F20 8012FB60 8E4400AC */  lw         $a0, 0xAC($s2)
/* E5F24 8012FB64 0C04B3E2 */  jal        func_race_8012CF88
/* E5F28 8012FB68 02802821 */   addu      $a1, $s4, $zero
/* E5F2C 8012FB6C 24110001 */  addiu      $s1, $zero, 0x1
/* E5F30 8012FB70 AE5400A8 */  sw         $s4, 0xA8($s2)
/* E5F34 8012FB74 8E820D08 */  lw         $v0, 0xD08($s4)
/* E5F38 8012FB78 02802021 */  addu       $a0, $s4, $zero
/* E5F3C 8012FB7C 38420002 */  xori       $v0, $v0, 0x2
/* E5F40 8012FB80 0051102B */  sltu       $v0, $v0, $s1
/* E5F44 8012FB84 AE4200E0 */  sw         $v0, 0xE0($s2)
/* E5F48 8012FB88 8C820D04 */  lw         $v0, 0xD04($a0)
/* E5F4C 8012FB8C 3C030020 */  lui        $v1, (0x200000 >> 16)
/* E5F50 8012FB90 00431025 */  or         $v0, $v0, $v1
/* E5F54 8012FB94 AC820D04 */  sw         $v0, 0xD04($a0)
/* E5F58 8012FB98 8E650078 */  lw         $a1, 0x78($s3)
/* E5F5C 8012FB9C 8E660084 */  lw         $a2, 0x84($s3)
/* E5F60 8012FBA0 0C016059 */  jal        func_80058164
/* E5F64 8012FBA4 26440018 */   addiu     $a0, $s2, 0x18
/* E5F68 8012FBA8 26700004 */  addiu      $s0, $s3, 0x4
.Lrace_8012FBAC:
/* E5F6C 8012FBAC 2E220003 */  sltiu      $v0, $s1, 0x3
/* E5F70 8012FBB0 1040000A */  beqz       $v0, .Lrace_8012FBDC
/* E5F74 8012FBB4 00000000 */   nop
/* E5F78 8012FBB8 8E050078 */  lw         $a1, 0x78($s0)
/* E5F7C 8012FBBC 50A00005 */  beql       $a1, $zero, .Lrace_8012FBD4
/* E5F80 8012FBC0 26100004 */   addiu     $s0, $s0, 0x4
/* E5F84 8012FBC4 8E060084 */  lw         $a2, 0x84($s0)
/* E5F88 8012FBC8 0C016098 */  jal        func_80058260
/* E5F8C 8012FBCC 26440018 */   addiu     $a0, $s2, 0x18
/* E5F90 8012FBD0 26100004 */  addiu      $s0, $s0, 0x4
.Lrace_8012FBD4:
/* E5F94 8012FBD4 0804BEEB */  j          .Lrace_8012FBAC
/* E5F98 8012FBD8 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_8012FBDC:
/* E5F9C 8012FBDC 0C016264 */  jal        func_80058990
/* E5FA0 8012FBE0 02602021 */   addu      $a0, $s3, $zero
/* E5FA4 8012FBE4 26510018 */  addiu      $s1, $s2, 0x18
/* E5FA8 8012FBE8 44050000 */  mfc1       $a1, $f0
/* E5FAC 8012FBEC 0C016274 */  jal        func_800589D0
/* E5FB0 8012FBF0 02202021 */   addu      $a0, $s1, $zero
/* E5FB4 8012FBF4 0C01626C */  jal        func_800589B0
/* E5FB8 8012FBF8 02602021 */   addu      $a0, $s3, $zero
/* E5FBC 8012FBFC 44050000 */  mfc1       $a1, $f0
/* E5FC0 8012FC00 0C01627F */  jal        func_800589FC
/* E5FC4 8012FC04 02202021 */   addu      $a0, $s1, $zero
/* E5FC8 8012FC08 0C01628A */  jal        func_80058A28
/* E5FCC 8012FC0C 02602021 */   addu      $a0, $s3, $zero
/* E5FD0 8012FC10 44050000 */  mfc1       $a1, $f0
/* E5FD4 8012FC14 0C016298 */  jal        func_80058A60
/* E5FD8 8012FC18 02202021 */   addu      $a0, $s1, $zero
/* E5FDC 8012FC1C 0C016291 */  jal        func_80058A44
/* E5FE0 8012FC20 02602021 */   addu      $a0, $s3, $zero
/* E5FE4 8012FC24 44050000 */  mfc1       $a1, $f0
/* E5FE8 8012FC28 0C0162A3 */  jal        func_80058A8C
/* E5FEC 8012FC2C 02202021 */   addu      $a0, $s1, $zero
/* E5FF0 8012FC30 8E90005C */  lw         $s0, 0x5C($s4)
/* E5FF4 8012FC34 8E020024 */  lw         $v0, 0x24($s0)
/* E5FF8 8012FC38 27A50010 */  addiu      $a1, $sp, 0x10
/* E5FFC 8012FC3C 84440010 */  lh         $a0, 0x10($v0)
/* E6000 8012FC40 8C420014 */  lw         $v0, 0x14($v0)
/* E6004 8012FC44 0040F809 */  jalr       $v0
/* E6008 8012FC48 02042021 */   addu      $a0, $s0, $a0
/* E600C 8012FC4C C7A00018 */  lwc1       $f0, 0x18($sp)
/* E6010 8012FC50 3C01800D */  lui        $at, %hi(D_race_800CF1D0)
/* E6014 8012FC54 C434F1D0 */  lwc1       $f20, %lo(D_race_800CF1D0)($at)
/* E6018 8012FC58 46140000 */  add.s      $f0, $f0, $f20
/* E601C 8012FC5C 02202021 */  addu       $a0, $s1, $zero
/* E6020 8012FC60 27A50010 */  addiu      $a1, $sp, 0x10
/* E6024 8012FC64 0C015962 */  jal        func_80056588
/* E6028 8012FC68 E7A00018 */   swc1      $f0, 0x18($sp)
/* E602C 8012FC6C C7A00018 */  lwc1       $f0, 0x18($sp)
/* E6030 8012FC70 46140001 */  sub.s      $f0, $f0, $f20
/* E6034 8012FC74 E7A00018 */  swc1       $f0, 0x18($sp)
/* E6038 8012FC78 C6000028 */  lwc1       $f0, 0x28($s0)
/* E603C 8012FC7C E6200028 */  swc1       $f0, 0x28($s1)
/* E6040 8012FC80 C600002C */  lwc1       $f0, 0x2C($s0)
/* E6044 8012FC84 E620002C */  swc1       $f0, 0x2C($s1)
/* E6048 8012FC88 C6000030 */  lwc1       $f0, 0x30($s0)
/* E604C 8012FC8C E6200030 */  swc1       $f0, 0x30($s1)
/* E6050 8012FC90 C6000034 */  lwc1       $f0, 0x34($s0)
/* E6054 8012FC94 E6200034 */  swc1       $f0, 0x34($s1)
/* E6058 8012FC98 C6000038 */  lwc1       $f0, 0x38($s0)
/* E605C 8012FC9C E6200038 */  swc1       $f0, 0x38($s1)
/* E6060 8012FCA0 C600003C */  lwc1       $f0, 0x3C($s0)
/* E6064 8012FCA4 E620003C */  swc1       $f0, 0x3C($s1)
/* E6068 8012FCA8 C6000040 */  lwc1       $f0, 0x40($s0)
/* E606C 8012FCAC E6200040 */  swc1       $f0, 0x40($s1)
/* E6070 8012FCB0 C6000044 */  lwc1       $f0, 0x44($s0)
/* E6074 8012FCB4 E6200044 */  swc1       $f0, 0x44($s1)
/* E6078 8012FCB8 C6000048 */  lwc1       $f0, 0x48($s0)
/* E607C 8012FCBC E6200048 */  swc1       $f0, 0x48($s1)
/* E6080 8012FCC0 8E4200A8 */  lw         $v0, 0xA8($s2)
/* E6084 8012FCC4 8C420DAC */  lw         $v0, 0xDAC($v0)
/* E6088 8012FCC8 10400006 */  beqz       $v0, .Lrace_8012FCE4
/* E608C 8012FCCC 00000000 */   nop
/* E6090 8012FCD0 C64000B0 */  lwc1       $f0, 0xB0($s2)
/* E6094 8012FCD4 3C01800D */  lui        $at, %hi(D_race_800CF1D4)
/* E6098 8012FCD8 C422F1D4 */  lwc1       $f2, %lo(D_race_800CF1D4)($at)
/* E609C 8012FCDC 46020000 */  add.s      $f0, $f0, $f2
/* E60A0 8012FCE0 E4400134 */  swc1       $f0, 0x134($v0)
.Lrace_8012FCE4:
/* E60A4 8012FCE4 12A00010 */  beqz       $s5, .Lrace_8012FD28
/* E60A8 8012FCE8 24020001 */   addiu     $v0, $zero, 0x1
/* E60AC 8012FCEC AE400008 */  sw         $zero, 0x8($s2)
/* E60B0 8012FCF0 8EA80000 */  lw         $t0, 0x0($s5)
/* E60B4 8012FCF4 8EA90004 */  lw         $t1, 0x4($s5)
/* E60B8 8012FCF8 8EAA0008 */  lw         $t2, 0x8($s5)
/* E60BC 8012FCFC AE4800C0 */  sw         $t0, 0xC0($s2)
/* E60C0 8012FD00 AE4900C4 */  sw         $t1, 0xC4($s2)
/* E60C4 8012FD04 AE4A00C8 */  sw         $t2, 0xC8($s2)
/* E60C8 8012FD08 8EA8000C */  lw         $t0, 0xC($s5)
/* E60CC 8012FD0C 8EA90010 */  lw         $t1, 0x10($s5)
/* E60D0 8012FD10 8EAA0014 */  lw         $t2, 0x14($s5)
/* E60D4 8012FD14 AE4800CC */  sw         $t0, 0xCC($s2)
/* E60D8 8012FD18 AE4900D0 */  sw         $t1, 0xD0($s2)
/* E60DC 8012FD1C AE4A00D4 */  sw         $t2, 0xD4($s2)
/* E60E0 8012FD20 0804BF4D */  j          .Lrace_8012FD34
/* E60E4 8012FD24 AE4200D8 */   sw        $v0, 0xD8($s2)
.Lrace_8012FD28:
/* E60E8 8012FD28 240201F4 */  addiu      $v0, $zero, 0x1F4
/* E60EC 8012FD2C AE420008 */  sw         $v0, 0x8($s2)
/* E60F0 8012FD30 AE4000D8 */  sw         $zero, 0xD8($s2)
.Lrace_8012FD34:
/* E60F4 8012FD34 24020002 */  addiu      $v0, $zero, 0x2
.Lrace_8012FD38:
/* E60F8 8012FD38 AE420004 */  sw         $v0, 0x4($s2)
/* E60FC 8012FD3C 8FBF0038 */  lw         $ra, 0x38($sp)
/* E6100 8012FD40 8FB50034 */  lw         $s5, 0x34($sp)
/* E6104 8012FD44 8FB40030 */  lw         $s4, 0x30($sp)
/* E6108 8012FD48 8FB3002C */  lw         $s3, 0x2C($sp)
/* E610C 8012FD4C 8FB20028 */  lw         $s2, 0x28($sp)
/* E6110 8012FD50 8FB10024 */  lw         $s1, 0x24($sp)
/* E6114 8012FD54 8FB00020 */  lw         $s0, 0x20($sp)
/* E6118 8012FD58 D7B40040 */  ldc1       $f20, 0x40($sp)
/* E611C 8012FD5C 03E00008 */  jr         $ra
/* E6120 8012FD60 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_8012FD64
/* E6124 8012FD64 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* E6128 8012FD68 AFB20038 */  sw         $s2, 0x38($sp)
/* E612C 8012FD6C 00809021 */  addu       $s2, $a0, $zero
/* E6130 8012FD70 AFB3003C */  sw         $s3, 0x3C($sp)
/* E6134 8012FD74 AFBF0040 */  sw         $ra, 0x40($sp)
/* E6138 8012FD78 AFB10034 */  sw         $s1, 0x34($sp)
/* E613C 8012FD7C AFB00030 */  sw         $s0, 0x30($sp)
/* E6140 8012FD80 F7B40048 */  sdc1       $f20, 0x48($sp)
/* E6144 8012FD84 8E440004 */  lw         $a0, 0x4($s2)
/* E6148 8012FD88 24020006 */  addiu      $v0, $zero, 0x6
/* E614C 8012FD8C 1082007D */  beq        $a0, $v0, .Lrace_8012FF84
/* E6150 8012FD90 00A09821 */   addu      $s3, $a1, $zero
/* E6154 8012FD94 8E420008 */  lw         $v0, 0x8($s2)
/* E6158 8012FD98 8E4300AC */  lw         $v1, 0xAC($s2)
/* E615C 8012FD9C 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* E6160 8012FDA0 8C70004C */  lw         $s0, 0x4C($v1)
/* E6164 8012FDA4 1040001C */  beqz       $v0, .Lrace_8012FE18
/* E6168 8012FDA8 24020002 */   addiu     $v0, $zero, 0x2
/* E616C 8012FDAC 1482001A */  bne        $a0, $v0, .Lrace_8012FE18
/* E6170 8012FDB0 00000000 */   nop
/* E6174 8012FDB4 8E4200E0 */  lw         $v0, 0xE0($s2)
/* E6178 8012FDB8 14400017 */  bnez       $v0, .Lrace_8012FE18
/* E617C 8012FDBC 00000000 */   nop
/* E6180 8012FDC0 0C010467 */  jal        func_8004119C
/* E6184 8012FDC4 02002021 */   addu      $a0, $s0, $zero
/* E6188 8012FDC8 14400013 */  bnez       $v0, .Lrace_8012FE18
/* E618C 8012FDCC 02002021 */   addu      $a0, $s0, $zero
/* E6190 8012FDD0 8E4200A8 */  lw         $v0, 0xA8($s2)
/* E6194 8012FDD4 240500C8 */  addiu      $a1, $zero, 0xC8
/* E6198 8012FDD8 8C420DAC */  lw         $v0, 0xDAC($v0)
/* E619C 8012FDDC 00003021 */  addu       $a2, $zero, $zero
/* E61A0 8012FDE0 8C420148 */  lw         $v0, 0x148($v0)
/* E61A4 8012FDE4 00C03821 */  addu       $a3, $a2, $zero
/* E61A8 8012FDE8 0C010435 */  jal        func_800410D4
/* E61AC 8012FDEC AFA20010 */   sw        $v0, 0x10($sp)
/* E61B0 8012FDF0 00401821 */  addu       $v1, $v0, $zero
/* E61B4 8012FDF4 10600008 */  beqz       $v1, .Lrace_8012FE18
/* E61B8 8012FDF8 24020064 */   addiu     $v0, $zero, 0x64
/* E61BC 8012FDFC A3A00018 */  sb         $zero, 0x18($sp)
/* E61C0 8012FE00 A3A00019 */  sb         $zero, 0x19($sp)
/* E61C4 8012FE04 A3A2001A */  sb         $v0, 0x1A($sp)
/* E61C8 8012FE08 8BA80018 */  lwl        $t0, 0x18($sp)
/* E61CC 8012FE0C 9BA8001B */  lwr        $t0, 0x1B($sp)
/* E61D0 8012FE10 A8680008 */  swl        $t0, 0x8($v1)
/* E61D4 8012FE14 B868000B */  swr        $t0, 0xB($v1)
.Lrace_8012FE18:
/* E61D8 8012FE18 8E430004 */  lw         $v1, 0x4($s2)
/* E61DC 8012FE1C 24020003 */  addiu      $v0, $zero, 0x3
/* E61E0 8012FE20 14620053 */  bne        $v1, $v0, .Lrace_8012FF70
/* E61E4 8012FE24 26440018 */   addiu     $a0, $s2, 0x18
/* E61E8 8012FE28 8E4200D8 */  lw         $v0, 0xD8($s2)
/* E61EC 8012FE2C 1040001D */  beqz       $v0, .Lrace_8012FEA4
/* E61F0 8012FE30 27B00020 */   addiu     $s0, $sp, 0x20
/* E61F4 8012FE34 C64200C0 */  lwc1       $f2, 0xC0($s2)
/* E61F8 8012FE38 C64000B4 */  lwc1       $f0, 0xB4($s2)
/* E61FC 8012FE3C 3C01800D */  lui        $at, %hi(D_race_800CF1D8)
/* E6200 8012FE40 C426F1D8 */  lwc1       $f6, %lo(D_race_800CF1D8)($at)
/* E6204 8012FE44 46001001 */  sub.s      $f0, $f2, $f0
/* E6208 8012FE48 C6440008 */  lwc1       $f4, 0x8($s2)
/* E620C 8012FE4C 46802120 */  cvt.s.w    $f4, $f4
/* E6210 8012FE50 46062103 */  div.s      $f4, $f4, $f6
/* E6214 8012FE54 46002002 */  mul.s      $f0, $f4, $f0
/* E6218 8012FE58 46001081 */  sub.s      $f2, $f2, $f0
/* E621C 8012FE5C E7A20020 */  swc1       $f2, 0x20($sp)
/* E6220 8012FE60 C64200C4 */  lwc1       $f2, 0xC4($s2)
/* E6224 8012FE64 C64000B8 */  lwc1       $f0, 0xB8($s2)
/* E6228 8012FE68 46001001 */  sub.s      $f0, $f2, $f0
/* E622C 8012FE6C 46002002 */  mul.s      $f0, $f4, $f0
/* E6230 8012FE70 46001081 */  sub.s      $f2, $f2, $f0
/* E6234 8012FE74 E7A20024 */  swc1       $f2, 0x24($sp)
/* E6238 8012FE78 C64000C8 */  lwc1       $f0, 0xC8($s2)
/* E623C 8012FE7C C64200BC */  lwc1       $f2, 0xBC($s2)
/* E6240 8012FE80 46020001 */  sub.s      $f0, $f0, $f2
/* E6244 8012FE84 46002102 */  mul.s      $f4, $f4, $f0
/* E6248 8012FE88 C64000C0 */  lwc1       $f0, 0xC0($s2)
/* E624C 8012FE8C 46040001 */  sub.s      $f0, $f0, $f4
/* E6250 8012FE90 E7A00028 */  swc1       $f0, 0x28($sp)
/* E6254 8012FE94 8E4200A8 */  lw         $v0, 0xA8($s2)
/* E6258 8012FE98 8C43005C */  lw         $v1, 0x5C($v0)
/* E625C 8012FE9C 0804BFCD */  j          .Lrace_8012FF34
/* E6260 8012FEA0 00000000 */   nop
.Lrace_8012FEA4:
/* E6264 8012FEA4 8E4200DC */  lw         $v0, 0xDC($s2)
/* E6268 8012FEA8 10400031 */  beqz       $v0, .Lrace_8012FF70
/* E626C 8012FEAC 26440018 */   addiu     $a0, $s2, 0x18
/* E6270 8012FEB0 8E4200A8 */  lw         $v0, 0xA8($s2)
/* E6274 8012FEB4 8C440010 */  lw         $a0, 0x10($v0)
/* E6278 8012FEB8 5080002D */  beql       $a0, $zero, .Lrace_8012FF70
/* E627C 8012FEBC 26440018 */   addiu     $a0, $s2, 0x18
/* E6280 8012FEC0 44930000 */  mtc1       $s3, $f0
/* E6284 8012FEC4 46800020 */  cvt.s.w    $f0, $f0
/* E6288 8012FEC8 3C01800D */  lui        $at, %hi(D_race_800CF1DC)
/* E628C 8012FECC C422F1DC */  lwc1       $f2, %lo(D_race_800CF1DC)($at)
/* E6290 8012FED0 8C510CC4 */  lw         $s1, 0xCC4($v0)
/* E6294 8012FED4 46020502 */  mul.s      $f20, $f0, $f2
/* E6298 8012FED8 12200006 */  beqz       $s1, .Lrace_8012FEF4
/* E629C 8012FEDC 00000000 */   nop
/* E62A0 8012FEE0 92250020 */  lbu        $a1, 0x20($s1)
/* E62A4 8012FEE4 0C03C8CA */  jal        func_race_800F2328
/* E62A8 8012FEE8 00000000 */   nop
/* E62AC 8012FEEC 00408821 */  addu       $s1, $v0, $zero
/* E62B0 8012FEF0 8E4200A8 */  lw         $v0, 0xA8($s2)
.Lrace_8012FEF4:
/* E62B4 8012FEF4 8C43005C */  lw         $v1, 0x5C($v0)
/* E62B8 8012FEF8 8C620024 */  lw         $v0, 0x24($v1)
/* E62BC 8012FEFC 27A50020 */  addiu      $a1, $sp, 0x20
/* E62C0 8012FF00 84440010 */  lh         $a0, 0x10($v0)
/* E62C4 8012FF04 8C420014 */  lw         $v0, 0x14($v0)
/* E62C8 8012FF08 0040F809 */  jalr       $v0
/* E62CC 8012FF0C 00642021 */   addu      $a0, $v1, $a0
/* E62D0 8012FF10 27B00020 */  addiu      $s0, $sp, 0x20
/* E62D4 8012FF14 02002821 */  addu       $a1, $s0, $zero
/* E62D8 8012FF18 8E4200A8 */  lw         $v0, 0xA8($s2)
/* E62DC 8012FF1C 4406A000 */  mfc1       $a2, $f20
/* E62E0 8012FF20 8C440010 */  lw         $a0, 0x10($v0)
/* E62E4 8012FF24 0C03C965 */  jal        func_race_800F2594
/* E62E8 8012FF28 02203821 */   addu      $a3, $s1, $zero
/* E62EC 8012FF2C 8E4200A8 */  lw         $v0, 0xA8($s2)
/* E62F0 8012FF30 8C43005C */  lw         $v1, 0x5C($v0)
.Lrace_8012FF34:
/* E62F4 8012FF34 8C620024 */  lw         $v0, 0x24($v1)
/* E62F8 8012FF38 02002821 */  addu       $a1, $s0, $zero
/* E62FC 8012FF3C 84440018 */  lh         $a0, 0x18($v0)
/* E6300 8012FF40 8C42001C */  lw         $v0, 0x1C($v0)
/* E6304 8012FF44 0040F809 */  jalr       $v0
/* E6308 8012FF48 00642021 */   addu      $a0, $v1, $a0
/* E630C 8012FF4C 8E4400A8 */  lw         $a0, 0xA8($s2)
/* E6310 8012FF50 248404E0 */  addiu      $a0, $a0, 0x4E0
/* E6314 8012FF54 8C820024 */  lw         $v0, 0x24($a0)
/* E6318 8012FF58 02002821 */  addu       $a1, $s0, $zero
/* E631C 8012FF5C 84430018 */  lh         $v1, 0x18($v0)
/* E6320 8012FF60 8C42001C */  lw         $v0, 0x1C($v0)
/* E6324 8012FF64 0040F809 */  jalr       $v0
/* E6328 8012FF68 00832021 */   addu      $a0, $a0, $v1
/* E632C 8012FF6C 26440018 */  addiu      $a0, $s2, 0x18
.Lrace_8012FF70:
/* E6330 8012FF70 0C0161A1 */  jal        func_80058684
/* E6334 8012FF74 02602821 */   addu      $a1, $s3, $zero
/* E6338 8012FF78 02402021 */  addu       $a0, $s2, $zero
/* E633C 8012FF7C 0C047E96 */  jal        func_race_8011FA58
/* E6340 8012FF80 02602821 */   addu      $a1, $s3, $zero
.Lrace_8012FF84:
/* E6344 8012FF84 8FBF0040 */  lw         $ra, 0x40($sp)
/* E6348 8012FF88 8FB3003C */  lw         $s3, 0x3C($sp)
/* E634C 8012FF8C 8FB20038 */  lw         $s2, 0x38($sp)
/* E6350 8012FF90 8FB10034 */  lw         $s1, 0x34($sp)
/* E6354 8012FF94 8FB00030 */  lw         $s0, 0x30($sp)
/* E6358 8012FF98 D7B40048 */  ldc1       $f20, 0x48($sp)
/* E635C 8012FF9C 03E00008 */  jr         $ra
/* E6360 8012FFA0 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_8012FFA4
/* E6364 8012FFA4 27BDFF60 */  addiu      $sp, $sp, -0xA0
/* E6368 8012FFA8 AFB20080 */  sw         $s2, 0x80($sp)
/* E636C 8012FFAC 00809021 */  addu       $s2, $a0, $zero
/* E6370 8012FFB0 AFB5008C */  sw         $s5, 0x8C($sp)
/* E6374 8012FFB4 24030006 */  addiu      $v1, $zero, 0x6
/* E6378 8012FFB8 AFBF0094 */  sw         $ra, 0x94($sp)
/* E637C 8012FFBC AFB60090 */  sw         $s6, 0x90($sp)
/* E6380 8012FFC0 AFB40088 */  sw         $s4, 0x88($sp)
/* E6384 8012FFC4 AFB30084 */  sw         $s3, 0x84($sp)
/* E6388 8012FFC8 AFB1007C */  sw         $s1, 0x7C($sp)
/* E638C 8012FFCC AFB00078 */  sw         $s0, 0x78($sp)
/* E6390 8012FFD0 F7B40098 */  sdc1       $f20, 0x98($sp)
/* E6394 8012FFD4 8E4200AC */  lw         $v0, 0xAC($s2)
/* E6398 8012FFD8 8E440004 */  lw         $a0, 0x4($s2)
/* E639C 8012FFDC 8C56004C */  lw         $s6, 0x4C($v0)
/* E63A0 8012FFE0 108300BD */  beq        $a0, $v1, .Lrace_801302D8
/* E63A4 8012FFE4 00A0A821 */   addu      $s5, $a1, $zero
/* E63A8 8012FFE8 24020003 */  addiu      $v0, $zero, 0x3
/* E63AC 8012FFEC 148200BA */  bne        $a0, $v0, .Lrace_801302D8
/* E63B0 8012FFF0 00000000 */   nop
/* E63B4 8012FFF4 8E4400A8 */  lw         $a0, 0xA8($s2)
/* E63B8 8012FFF8 8C820DAC */  lw         $v0, 0xDAC($a0)
/* E63BC 8012FFFC 104000B6 */  beqz       $v0, .Lrace_801302D8
/* E63C0 80130000 00000000 */   nop
/* E63C4 80130004 8C420148 */  lw         $v0, 0x148($v0)
/* E63C8 80130008 8EA30008 */  lw         $v1, 0x8($s5)
/* E63CC 8013000C 144300B2 */  bne        $v0, $v1, .Lrace_801302D8
/* E63D0 80130010 24940018 */   addiu     $s4, $a0, 0x18
/* E63D4 80130014 8E910044 */  lw         $s1, 0x44($s4)
/* E63D8 80130018 27A50048 */  addiu      $a1, $sp, 0x48
/* E63DC 8013001C 8E220024 */  lw         $v0, 0x24($s1)
/* E63E0 80130020 00609821 */  addu       $s3, $v1, $zero
/* E63E4 80130024 84440010 */  lh         $a0, 0x10($v0)
/* E63E8 80130028 8C420014 */  lw         $v0, 0x14($v0)
/* E63EC 8013002C 0040F809 */  jalr       $v0
/* E63F0 80130030 02242021 */   addu      $a0, $s1, $a0
/* E63F4 80130034 8E220024 */  lw         $v0, 0x24($s1)
/* E63F8 80130038 27A50020 */  addiu      $a1, $sp, 0x20
/* E63FC 8013003C 84440090 */  lh         $a0, 0x90($v0)
/* E6400 80130040 8C420094 */  lw         $v0, 0x94($v0)
/* E6404 80130044 0040F809 */  jalr       $v0
/* E6408 80130048 02242021 */   addu      $a0, $s1, $a0
/* E640C 8013004C 3C01800D */  lui        $at, %hi(D_race_800CF1F0)
/* E6410 80130050 C420F1F0 */  lwc1       $f0, %lo(D_race_800CF1F0)($at)
/* E6414 80130054 3C01800D */  lui        $at, %hi(D_race_800CF1F4)
/* E6418 80130058 C422F1F4 */  lwc1       $f2, %lo(D_race_800CF1F4)($at)
/* E641C 8013005C AFA00058 */  sw         $zero, 0x58($sp)
/* E6420 80130060 AFA00060 */  sw         $zero, 0x60($sp)
/* E6424 80130064 AFA00068 */  sw         $zero, 0x68($sp)
/* E6428 80130068 AFA0006C */  sw         $zero, 0x6C($sp)
/* E642C 8013006C AFA00010 */  sw         $zero, 0x10($sp)
/* E6430 80130070 AFA00014 */  sw         $zero, 0x14($sp)
/* E6434 80130074 AFA00018 */  sw         $zero, 0x18($sp)
/* E6438 80130078 E7A0005C */  swc1       $f0, 0x5C($sp)
/* E643C 8013007C E7A20070 */  swc1       $f2, 0x70($sp)
/* E6440 80130080 8E220024 */  lw         $v0, 0x24($s1)
/* E6444 80130084 27A50010 */  addiu      $a1, $sp, 0x10
/* E6448 80130088 84440018 */  lh         $a0, 0x18($v0)
/* E644C 8013008C 8C42001C */  lw         $v0, 0x1C($v0)
/* E6450 80130090 0040F809 */  jalr       $v0
/* E6454 80130094 02242021 */   addu      $a0, $s1, $a0
/* E6458 80130098 27A50058 */  addiu      $a1, $sp, 0x58
/* E645C 8013009C 8E220024 */  lw         $v0, 0x24($s1)
/* E6460 801300A0 27A60068 */  addiu      $a2, $sp, 0x68
/* E6464 801300A4 84440080 */  lh         $a0, 0x80($v0)
/* E6468 801300A8 8C420084 */  lw         $v0, 0x84($v0)
/* E646C 801300AC 0040F809 */  jalr       $v0
/* E6470 801300B0 02242021 */   addu      $a0, $s1, $a0
/* E6474 801300B4 8E4200A8 */  lw         $v0, 0xA8($s2)
/* E6478 801300B8 8C430DAC */  lw         $v1, 0xDAC($v0)
/* E647C 801300BC 24020001 */  addiu      $v0, $zero, 0x1
/* E6480 801300C0 A0620000 */  sb         $v0, 0x0($v1)
/* E6484 801300C4 8E4200A8 */  lw         $v0, 0xA8($s2)
/* E6488 801300C8 8C440DAC */  lw         $a0, 0xDAC($v0)
/* E648C 801300CC 0C03F31E */  jal        func_race_800FCC78
/* E6490 801300D0 00002821 */   addu      $a1, $zero, $zero
/* E6494 801300D4 3C01800D */  lui        $at, %hi(D_race_800CF1F8)
/* E6498 801300D8 C422F1F8 */  lwc1       $f2, %lo(D_race_800CF1F8)($at)
/* E649C 801300DC C6400008 */  lwc1       $f0, 0x8($s2)
/* E64A0 801300E0 46800020 */  cvt.s.w    $f0, $f0
/* E64A4 801300E4 46020002 */  mul.s      $f0, $f0, $f2
/* E64A8 801300E8 3C01800D */  lui        $at, %hi(D_race_800CF1FC)
/* E64AC 801300EC C422F1FC */  lwc1       $f2, %lo(D_race_800CF1FC)($at)
/* E64B0 801300F0 3C01800D */  lui        $at, %hi(D_race_800CF200)
/* E64B4 801300F4 C424F200 */  lwc1       $f4, %lo(D_race_800CF200)($at)
/* E64B8 801300F8 46020003 */  div.s      $f0, $f0, $f2
/* E64BC 801300FC 46040002 */  mul.s      $f0, $f0, $f4
/* E64C0 80130100 3C038003 */  lui        $v1, %hi(D_8002D2B0)
/* E64C4 80130104 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* E64C8 80130108 4600018D */  trunc.w.s  $f6, $f0
/* E64CC 8013010C 44023000 */  mfc1       $v0, $f6
/* E64D0 80130110 2442FF00 */  addiu      $v0, $v0, -0x100
/* E64D4 80130114 304203FF */  andi       $v0, $v0, 0x3FF
/* E64D8 80130118 00021080 */  sll        $v0, $v0, 2
/* E64DC 8013011C 00431021 */  addu       $v0, $v0, $v1
/* E64E0 80130120 C4420000 */  lwc1       $f2, 0x0($v0)
/* E64E4 80130124 3C01800D */  lui        $at, %hi(D_race_800CF204)
/* E64E8 80130128 C420F204 */  lwc1       $f0, %lo(D_race_800CF204)($at)
/* E64EC 8013012C 46001082 */  mul.s      $f2, $f2, $f0
/* E64F0 80130130 C64000B0 */  lwc1       $f0, 0xB0($s2)
/* E64F4 80130134 8E62002C */  lw         $v0, 0x2C($s3)
/* E64F8 80130138 46020000 */  add.s      $f0, $f0, $f2
/* E64FC 8013013C 34420002 */  ori        $v0, $v0, 0x2
/* E6500 80130140 AE62002C */  sw         $v0, 0x2C($s3)
/* E6504 80130144 E6600004 */  swc1       $f0, 0x4($s3)
/* E6508 80130148 8EA2012C */  lw         $v0, 0x12C($s5)
/* E650C 8013014C 844400C0 */  lh         $a0, 0xC0($v0)
/* E6510 80130150 8C4200C4 */  lw         $v0, 0xC4($v0)
/* E6514 80130154 0040F809 */  jalr       $v0
/* E6518 80130158 02A42021 */   addu      $a0, $s5, $a0
/* E651C 8013015C 0C044B17 */  jal        func_race_80112C5C
/* E6520 80130160 02802021 */   addu      $a0, $s4, $zero
/* E6524 80130164 8E4200AC */  lw         $v0, 0xAC($s2)
/* E6528 80130168 3C03800D */  lui        $v1, %hi(D_race_800CF1E0)
/* E652C 8013016C 8C420064 */  lw         $v0, 0x64($v0)
/* E6530 80130170 2465F1E0 */  addiu      $a1, $v1, %lo(D_race_800CF1E0)
/* E6534 80130174 8C4300BC */  lw         $v1, 0xBC($v0)
/* E6538 80130178 14600003 */  bnez       $v1, .Lrace_80130188
/* E653C 8013017C 244400BC */   addiu     $a0, $v0, 0xBC
/* E6540 80130180 0804C065 */  j          .Lrace_80130194
/* E6544 80130184 00008021 */   addu      $s0, $zero, $zero
.Lrace_80130188:
/* E6548 80130188 0C016427 */  jal        func_8005909C
/* E654C 8013018C 00000000 */   nop
/* E6550 80130190 00408021 */  addu       $s0, $v0, $zero
.Lrace_80130194:
/* E6554 80130194 0C0195AD */  jal        func_800656B4
/* E6558 80130198 02002021 */   addu      $a0, $s0, $zero
/* E655C 8013019C 4480A000 */  mtc1       $zero, $f20
/* E6560 801301A0 C60000B8 */  lwc1       $f0, 0xB8($s0)
/* E6564 801301A4 46140002 */  mul.s      $f0, $f0, $f20
/* E6568 801301A8 4405A000 */  mfc1       $a1, $f20
/* E656C 801301AC 02002021 */  addu       $a0, $s0, $zero
/* E6570 801301B0 0C016274 */  jal        func_800589D0
/* E6574 801301B4 E60000B4 */   swc1      $f0, 0xB4($s0)
/* E6578 801301B8 4405A000 */  mfc1       $a1, $f20
/* E657C 801301BC 0C01627F */  jal        func_800589FC
/* E6580 801301C0 02002021 */   addu      $a0, $s0, $zero
/* E6584 801301C4 8E4200AC */  lw         $v0, 0xAC($s2)
/* E6588 801301C8 3C03800D */  lui        $v1, %hi(D_race_800CF1E8)
/* E658C 801301CC 8C420064 */  lw         $v0, 0x64($v0)
/* E6590 801301D0 2465F1E8 */  addiu      $a1, $v1, %lo(D_race_800CF1E8)
/* E6594 801301D4 8C4300BC */  lw         $v1, 0xBC($v0)
/* E6598 801301D8 14600003 */  bnez       $v1, .Lrace_801301E8
/* E659C 801301DC 244400BC */   addiu     $a0, $v0, 0xBC
/* E65A0 801301E0 0804C07D */  j          .Lrace_801301F4
/* E65A4 801301E4 00008021 */   addu      $s0, $zero, $zero
.Lrace_801301E8:
/* E65A8 801301E8 0C016427 */  jal        func_8005909C
/* E65AC 801301EC 00000000 */   nop
/* E65B0 801301F0 00408021 */  addu       $s0, $v0, $zero
.Lrace_801301F4:
/* E65B4 801301F4 0C0195AD */  jal        func_800656B4
/* E65B8 801301F8 02002021 */   addu      $a0, $s0, $zero
/* E65BC 801301FC 4480A000 */  mtc1       $zero, $f20
/* E65C0 80130200 C60000B8 */  lwc1       $f0, 0xB8($s0)
/* E65C4 80130204 46140002 */  mul.s      $f0, $f0, $f20
/* E65C8 80130208 4405A000 */  mfc1       $a1, $f20
/* E65CC 8013020C 02002021 */  addu       $a0, $s0, $zero
/* E65D0 80130210 0C016274 */  jal        func_800589D0
/* E65D4 80130214 E60000B4 */   swc1      $f0, 0xB4($s0)
/* E65D8 80130218 4405A000 */  mfc1       $a1, $f20
/* E65DC 8013021C 0C01627F */  jal        func_800589FC
/* E65E0 80130220 02002021 */   addu      $a0, $s0, $zero
/* E65E4 80130224 8E4200AC */  lw         $v0, 0xAC($s2)
/* E65E8 80130228 8C440064 */  lw         $a0, 0x64($v0)
/* E65EC 8013022C 8E420008 */  lw         $v0, 0x8($s2)
/* E65F0 80130230 240505DC */  addiu      $a1, $zero, 0x5DC
/* E65F4 80130234 0C0190C0 */  jal        func_80064300
/* E65F8 80130238 00A22823 */   subu      $a1, $a1, $v0
/* E65FC 8013023C 8E4200AC */  lw         $v0, 0xAC($s2)
/* E6600 80130240 8C440064 */  lw         $a0, 0x64($v0)
/* E6604 80130244 0C019094 */  jal        func_80064250
/* E6608 80130248 00000000 */   nop
/* E660C 8013024C 0C044E89 */  jal        func_race_80113A24
/* E6610 80130250 02802021 */   addu      $a0, $s4, $zero
/* E6614 80130254 8E4200A8 */  lw         $v0, 0xA8($s2)
/* E6618 80130258 8C430DB0 */  lw         $v1, 0xDB0($v0)
/* E661C 8013025C 24020003 */  addiu      $v0, $zero, 0x3
/* E6620 80130260 10620004 */  beq        $v1, $v0, .Lrace_80130274
/* E6624 80130264 00000000 */   nop
/* E6628 80130268 02802021 */  addu       $a0, $s4, $zero
/* E662C 8013026C 0C0454B2 */  jal        func_race_801152C8
/* E6630 80130270 02A02821 */   addu      $a1, $s5, $zero
.Lrace_80130274:
/* E6634 80130274 8E220024 */  lw         $v0, 0x24($s1)
/* E6638 80130278 27A50048 */  addiu      $a1, $sp, 0x48
/* E663C 8013027C 84440018 */  lh         $a0, 0x18($v0)
/* E6640 80130280 8C42001C */  lw         $v0, 0x1C($v0)
/* E6644 80130284 0040F809 */  jalr       $v0
/* E6648 80130288 02242021 */   addu      $a0, $s1, $a0
/* E664C 8013028C 8E220024 */  lw         $v0, 0x24($s1)
/* E6650 80130290 27A50020 */  addiu      $a1, $sp, 0x20
/* E6654 80130294 84440098 */  lh         $a0, 0x98($v0)
/* E6658 80130298 8C42009C */  lw         $v0, 0x9C($v0)
/* E665C 8013029C 0040F809 */  jalr       $v0
/* E6660 801302A0 02242021 */   addu      $a0, $s1, $a0
/* E6664 801302A4 8E4400A8 */  lw         $a0, 0xA8($s2)
/* E6668 801302A8 0C043967 */  jal        func_race_8010E59C
/* E666C 801302AC 00000000 */   nop
/* E6670 801302B0 02C02021 */  addu       $a0, $s6, $zero
/* E6674 801302B4 0C010499 */  jal        func_80041264
/* E6678 801302B8 02A02821 */   addu      $a1, $s5, $zero
/* E667C 801302BC 0C044B35 */  jal        func_race_80112CD4
/* E6680 801302C0 02802021 */   addu      $a0, $s4, $zero
/* E6684 801302C4 8E62002C */  lw         $v0, 0x2C($s3)
/* E6688 801302C8 C64000B0 */  lwc1       $f0, 0xB0($s2)
/* E668C 801302CC 34420002 */  ori        $v0, $v0, 0x2
/* E6690 801302D0 E6600004 */  swc1       $f0, 0x4($s3)
/* E6694 801302D4 AE62002C */  sw         $v0, 0x2C($s3)
.Lrace_801302D8:
/* E6698 801302D8 8FBF0094 */  lw         $ra, 0x94($sp)
/* E669C 801302DC 8FB60090 */  lw         $s6, 0x90($sp)
/* E66A0 801302E0 8FB5008C */  lw         $s5, 0x8C($sp)
/* E66A4 801302E4 8FB40088 */  lw         $s4, 0x88($sp)
/* E66A8 801302E8 8FB30084 */  lw         $s3, 0x84($sp)
/* E66AC 801302EC 8FB20080 */  lw         $s2, 0x80($sp)
/* E66B0 801302F0 8FB1007C */  lw         $s1, 0x7C($sp)
/* E66B4 801302F4 8FB00078 */  lw         $s0, 0x78($sp)
/* E66B8 801302F8 D7B40098 */  ldc1       $f20, 0x98($sp)
/* E66BC 801302FC 03E00008 */  jr         $ra
/* E66C0 80130300 27BD00A0 */   addiu     $sp, $sp, 0xA0

glabel func_race_80130304
/* E66C4 80130304 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E66C8 80130308 AFB00020 */  sw         $s0, 0x20($sp)
/* E66CC 8013030C 00808021 */  addu       $s0, $a0, $zero
/* E66D0 80130310 AFB20028 */  sw         $s2, 0x28($sp)
/* E66D4 80130314 AFBF002C */  sw         $ra, 0x2C($sp)
/* E66D8 80130318 AFB10024 */  sw         $s1, 0x24($sp)
/* E66DC 8013031C 8E030004 */  lw         $v1, 0x4($s0)
/* E66E0 80130320 24020002 */  addiu      $v0, $zero, 0x2
/* E66E4 80130324 14620031 */  bne        $v1, $v0, .Lrace_801303EC
/* E66E8 80130328 00A09021 */   addu      $s2, $a1, $zero
/* E66EC 8013032C C6000008 */  lwc1       $f0, 0x8($s0)
/* E66F0 80130330 46800020 */  cvt.s.w    $f0, $f0
/* E66F4 80130334 3C01800D */  lui        $at, %hi(D_race_800CF208)
/* E66F8 80130338 C422F208 */  lwc1       $f2, %lo(D_race_800CF208)($at)
/* E66FC 8013033C 3C01800D */  lui        $at, %hi(D_race_800CF20C)
/* E6700 80130340 C424F20C */  lwc1       $f4, %lo(D_race_800CF20C)($at)
/* E6704 80130344 46020003 */  div.s      $f0, $f0, $f2
/* E6708 80130348 46040002 */  mul.s      $f0, $f0, $f4
/* E670C 8013034C 3C01800D */  lui        $at, %hi(D_race_800CF210)
/* E6710 80130350 C422F210 */  lwc1       $f2, %lo(D_race_800CF210)($at)
/* E6714 80130354 46020002 */  mul.s      $f0, $f0, $f2
/* E6718 80130358 3C038003 */  lui        $v1, %hi(D_8002D2B0)
/* E671C 8013035C 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* E6720 80130360 4600018D */  trunc.w.s  $f6, $f0
/* E6724 80130364 44023000 */  mfc1       $v0, $f6
/* E6728 80130368 2442FF00 */  addiu      $v0, $v0, -0x100
/* E672C 8013036C 304203FF */  andi       $v0, $v0, 0x3FF
/* E6730 80130370 00021080 */  sll        $v0, $v0, 2
/* E6734 80130374 00431021 */  addu       $v0, $v0, $v1
/* E6738 80130378 C4420000 */  lwc1       $f2, 0x0($v0)
/* E673C 8013037C 3C01800D */  lui        $at, %hi(D_race_800CF214)
/* E6740 80130380 C420F214 */  lwc1       $f0, %lo(D_race_800CF214)($at)
/* E6744 80130384 26110018 */  addiu      $s1, $s0, 0x18
/* E6748 80130388 E620000C */  swc1       $f0, 0xC($s1)
/* E674C 8013038C E6220058 */  swc1       $f2, 0x58($s1)
/* E6750 80130390 8E020008 */  lw         $v0, 0x8($s0)
/* E6754 80130394 2C4200FA */  sltiu      $v0, $v0, 0xFA
/* E6758 80130398 10400005 */  beqz       $v0, .Lrace_801303B0
/* E675C 8013039C 00000000 */   nop
/* E6760 801303A0 8E0400A8 */  lw         $a0, 0xA8($s0)
/* E6764 801303A4 44051000 */  mfc1       $a1, $f2
/* E6768 801303A8 0C0456FA */  jal        func_race_80115BE8
/* E676C 801303AC 24840018 */   addiu     $a0, $a0, 0x18
.Lrace_801303B0:
/* E6770 801303B0 8E0200A8 */  lw         $v0, 0xA8($s0)
/* E6774 801303B4 8C43005C */  lw         $v1, 0x5C($v0)
/* E6778 801303B8 27B00010 */  addiu      $s0, $sp, 0x10
/* E677C 801303BC 8C620024 */  lw         $v0, 0x24($v1)
/* E6780 801303C0 02002821 */  addu       $a1, $s0, $zero
/* E6784 801303C4 84440010 */  lh         $a0, 0x10($v0)
/* E6788 801303C8 8C420014 */  lw         $v0, 0x14($v0)
/* E678C 801303CC 0040F809 */  jalr       $v0
/* E6790 801303D0 00642021 */   addu      $a0, $v1, $a0
/* E6794 801303D4 02202021 */  addu       $a0, $s1, $zero
/* E6798 801303D8 0C015962 */  jal        func_80056588
/* E679C 801303DC 02002821 */   addu      $a1, $s0, $zero
/* E67A0 801303E0 02202021 */  addu       $a0, $s1, $zero
/* E67A4 801303E4 0C016203 */  jal        func_8005880C
/* E67A8 801303E8 02402821 */   addu      $a1, $s2, $zero
.Lrace_801303EC:
/* E67AC 801303EC 8FBF002C */  lw         $ra, 0x2C($sp)
/* E67B0 801303F0 8FB20028 */  lw         $s2, 0x28($sp)
/* E67B4 801303F4 8FB10024 */  lw         $s1, 0x24($sp)
/* E67B8 801303F8 8FB00020 */  lw         $s0, 0x20($sp)
/* E67BC 801303FC 03E00008 */  jr         $ra
/* E67C0 80130400 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_80130404
/* E67C4 80130404 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* E67C8 80130408 AFB10044 */  sw         $s1, 0x44($sp)
/* E67CC 8013040C 00808821 */  addu       $s1, $a0, $zero
/* E67D0 80130410 AFBF0048 */  sw         $ra, 0x48($sp)
/* E67D4 80130414 AFB00040 */  sw         $s0, 0x40($sp)
/* E67D8 80130418 F7B40050 */  sdc1       $f20, 0x50($sp)
/* E67DC 8013041C 8E230004 */  lw         $v1, 0x4($s1)
/* E67E0 80130420 24020002 */  addiu      $v0, $zero, 0x2
/* E67E4 80130424 10620005 */  beq        $v1, $v0, .Lrace_8013043C
/* E67E8 80130428 24020003 */   addiu     $v0, $zero, 0x3
/* E67EC 8013042C 10620050 */  beq        $v1, $v0, .Lrace_80130570
/* E67F0 80130430 00000000 */   nop
/* E67F4 80130434 0804C1E7 */  j          .Lrace_8013079C
/* E67F8 80130438 00000000 */   nop
.Lrace_8013043C:
/* E67FC 8013043C 8E2400A8 */  lw         $a0, 0xA8($s1)
/* E6800 80130440 3C03FFDF */  lui        $v1, (0xFFDFFFFF >> 16)
/* E6804 80130444 8C820D04 */  lw         $v0, 0xD04($a0)
/* E6808 80130448 3463FFFF */  ori        $v1, $v1, (0xFFDFFFFF & 0xFFFF)
/* E680C 8013044C 00431024 */  and        $v0, $v0, $v1
/* E6810 80130450 AC820D04 */  sw         $v0, 0xD04($a0)
/* E6814 80130454 8E2400A8 */  lw         $a0, 0xA8($s1)
/* E6818 80130458 0C0434C7 */  jal        func_race_8010D31C
/* E681C 8013045C 00000000 */   nop
/* E6820 80130460 3C01800D */  lui        $at, %hi(D_race_800CF218)
/* E6824 80130464 C434F218 */  lwc1       $f20, %lo(D_race_800CF218)($at)
/* E6828 80130468 8E2400A8 */  lw         $a0, 0xA8($s1)
/* E682C 8013046C 4405A000 */  mfc1       $a1, $f20
/* E6830 80130470 0C0456FA */  jal        func_race_80115BE8
/* E6834 80130474 24840018 */   addiu     $a0, $a0, 0x18
/* E6838 80130478 8E2400A8 */  lw         $a0, 0xA8($s1)
/* E683C 8013047C 248403FC */  addiu      $a0, $a0, 0x3FC
/* E6840 80130480 8C8200CC */  lw         $v0, 0xCC($a0)
/* E6844 80130484 84430090 */  lh         $v1, 0x90($v0)
/* E6848 80130488 8C420094 */  lw         $v0, 0x94($v0)
/* E684C 8013048C 0040F809 */  jalr       $v0
/* E6850 80130490 00832021 */   addu      $a0, $a0, $v1
/* E6854 80130494 8E2400A8 */  lw         $a0, 0xA8($s1)
/* E6858 80130498 248403FC */  addiu      $a0, $a0, 0x3FC
/* E685C 8013049C 8C8200CC */  lw         $v0, 0xCC($a0)
/* E6860 801304A0 844300A0 */  lh         $v1, 0xA0($v0)
/* E6864 801304A4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* E6868 801304A8 0040F809 */  jalr       $v0
/* E686C 801304AC 00832021 */   addu      $a0, $a0, $v1
/* E6870 801304B0 8E2200A8 */  lw         $v0, 0xA8($s1)
/* E6874 801304B4 8C420DAC */  lw         $v0, 0xDAC($v0)
/* E6878 801304B8 1040000B */  beqz       $v0, .Lrace_801304E8
/* E687C 801304BC 00000000 */   nop
/* E6880 801304C0 8C430148 */  lw         $v1, 0x148($v0)
/* E6884 801304C4 C62000B0 */  lwc1       $f0, 0xB0($s1)
/* E6888 801304C8 8C62002C */  lw         $v0, 0x2C($v1)
/* E688C 801304CC E4600004 */  swc1       $f0, 0x4($v1)
/* E6890 801304D0 34420002 */  ori        $v0, $v0, 0x2
/* E6894 801304D4 AC62002C */  sw         $v0, 0x2C($v1)
/* E6898 801304D8 8E2200A8 */  lw         $v0, 0xA8($s1)
/* E689C 801304DC C62000B0 */  lwc1       $f0, 0xB0($s1)
/* E68A0 801304E0 8C420DAC */  lw         $v0, 0xDAC($v0)
/* E68A4 801304E4 E4400134 */  swc1       $f0, 0x134($v0)
.Lrace_801304E8:
/* E68A8 801304E8 8E2200A8 */  lw         $v0, 0xA8($s1)
/* E68AC 801304EC 8C43005C */  lw         $v1, 0x5C($v0)
/* E68B0 801304F0 263000B4 */  addiu      $s0, $s1, 0xB4
/* E68B4 801304F4 8C620024 */  lw         $v0, 0x24($v1)
/* E68B8 801304F8 02002821 */  addu       $a1, $s0, $zero
/* E68BC 801304FC 84440010 */  lh         $a0, 0x10($v0)
/* E68C0 80130500 8C420014 */  lw         $v0, 0x14($v0)
/* E68C4 80130504 0040F809 */  jalr       $v0
/* E68C8 80130508 00642021 */   addu      $a0, $v1, $a0
/* E68CC 8013050C 8E2200E0 */  lw         $v0, 0xE0($s1)
/* E68D0 80130510 14400004 */  bnez       $v0, .Lrace_80130524
/* E68D4 80130514 00000000 */   nop
/* E68D8 80130518 8E240010 */  lw         $a0, 0x10($s1)
/* E68DC 8013051C 0C04651F */  jal        func_race_8011947C
/* E68E0 80130520 24050027 */   addiu     $a1, $zero, 0x27
.Lrace_80130524:
/* E68E4 80130524 3C01800D */  lui        $at, %hi(D_race_800CF21C)
/* E68E8 80130528 C420F21C */  lwc1       $f0, %lo(D_race_800CF21C)($at)
/* E68EC 8013052C 3C074348 */  lui        $a3, (0x43480000 >> 16)
/* E68F0 80130530 24050041 */  addiu      $a1, $zero, 0x41
/* E68F4 80130534 E7B40014 */  swc1       $f20, 0x14($sp)
/* E68F8 80130538 E7B40018 */  swc1       $f20, 0x18($sp)
/* E68FC 8013053C E7A00010 */  swc1       $f0, 0x10($sp)
/* E6900 80130540 8E240010 */  lw         $a0, 0x10($s1)
/* E6904 80130544 0C046530 */  jal        func_race_801194C0
/* E6908 80130548 02003021 */   addu      $a2, $s0, $zero
/* E690C 8013054C 8E2200E0 */  lw         $v0, 0xE0($s1)
/* E6910 80130550 54400004 */  bnel       $v0, $zero, .Lrace_80130564
/* E6914 80130554 240205DC */   addiu     $v0, $zero, 0x5DC
/* E6918 80130558 24020001 */  addiu      $v0, $zero, 0x1
/* E691C 8013055C AE2200DC */  sw         $v0, 0xDC($s1)
/* E6920 80130560 240205DC */  addiu      $v0, $zero, 0x5DC
.Lrace_80130564:
/* E6924 80130564 AE220008 */  sw         $v0, 0x8($s1)
/* E6928 80130568 0804C1E6 */  j          .Lrace_80130798
/* E692C 8013056C 24020003 */   addiu     $v0, $zero, 0x3
.Lrace_80130570:
/* E6930 80130570 8E2200A8 */  lw         $v0, 0xA8($s1)
/* E6934 80130574 8C420DAC */  lw         $v0, 0xDAC($v0)
/* E6938 80130578 1040000B */  beqz       $v0, .Lrace_801305A8
/* E693C 8013057C 00000000 */   nop
/* E6940 80130580 8C430148 */  lw         $v1, 0x148($v0)
/* E6944 80130584 C62000B0 */  lwc1       $f0, 0xB0($s1)
/* E6948 80130588 8C62002C */  lw         $v0, 0x2C($v1)
/* E694C 8013058C E4600004 */  swc1       $f0, 0x4($v1)
/* E6950 80130590 34420002 */  ori        $v0, $v0, 0x2
/* E6954 80130594 AC62002C */  sw         $v0, 0x2C($v1)
/* E6958 80130598 8E2200A8 */  lw         $v0, 0xA8($s1)
/* E695C 8013059C C62000B0 */  lwc1       $f0, 0xB0($s1)
/* E6960 801305A0 8C420DAC */  lw         $v0, 0xDAC($v0)
/* E6964 801305A4 E4400134 */  swc1       $f0, 0x134($v0)
.Lrace_801305A8:
/* E6968 801305A8 8E2200A8 */  lw         $v0, 0xA8($s1)
/* E696C 801305AC 8C50005C */  lw         $s0, 0x5C($v0)
/* E6970 801305B0 02202021 */  addu       $a0, $s1, $zero
/* E6974 801305B4 0C04C20F */  jal        func_race_8013083C
/* E6978 801305B8 02002821 */   addu      $a1, $s0, $zero
/* E697C 801305BC 8E2200A8 */  lw         $v0, 0xA8($s1)
/* E6980 801305C0 3C01800D */  lui        $at, %hi(D_race_800CF220)
/* E6984 801305C4 C420F220 */  lwc1       $f0, %lo(D_race_800CF220)($at)
/* E6988 801305C8 8E08004C */  lw         $t0, 0x4C($s0)
/* E698C 801305CC 8E090050 */  lw         $t1, 0x50($s0)
/* E6990 801305D0 8E0A0054 */  lw         $t2, 0x54($s0)
/* E6994 801305D4 AC48052C */  sw         $t0, 0x52C($v0)
/* E6998 801305D8 AC490530 */  sw         $t1, 0x530($v0)
/* E699C 801305DC AC4A0534 */  sw         $t2, 0x534($v0)
/* E69A0 801305E0 E44004EC */  swc1       $f0, 0x4EC($v0)
/* E69A4 801305E4 8E2200D8 */  lw         $v0, 0xD8($s1)
/* E69A8 801305E8 10400009 */  beqz       $v0, .Lrace_80130610
/* E69AC 801305EC 00000000 */   nop
/* E69B0 801305F0 8E2800CC */  lw         $t0, 0xCC($s1)
/* E69B4 801305F4 8E2900D0 */  lw         $t1, 0xD0($s1)
/* E69B8 801305F8 8E2A00D4 */  lw         $t2, 0xD4($s1)
/* E69BC 801305FC AFA80020 */  sw         $t0, 0x20($sp)
/* E69C0 80130600 AFA90024 */  sw         $t1, 0x24($sp)
/* E69C4 80130604 AFAA0028 */  sw         $t2, 0x28($sp)
/* E69C8 80130608 0804C1A0 */  j          .Lrace_80130680
/* E69CC 8013060C 00000000 */   nop
.Lrace_80130610:
/* E69D0 80130610 8E2200A8 */  lw         $v0, 0xA8($s1)
/* E69D4 80130614 8C430CC4 */  lw         $v1, 0xCC4($v0)
/* E69D8 80130618 50600015 */  beql       $v1, $zero, .Lrace_80130670
/* E69DC 8013061C AFA00024 */   sw        $zero, 0x24($sp)
/* E69E0 80130620 8C440010 */  lw         $a0, 0x10($v0)
/* E69E4 80130624 90650020 */  lbu        $a1, 0x20($v1)
/* E69E8 80130628 0C03C8CA */  jal        func_race_800F2328
/* E69EC 8013062C 00000000 */   nop
/* E69F0 80130630 C4420000 */  lwc1       $f2, 0x0($v0)
/* E69F4 80130634 E7A20020 */  swc1       $f2, 0x20($sp)
/* E69F8 80130638 C4400004 */  lwc1       $f0, 0x4($v0)
/* E69FC 8013063C 27A30020 */  addiu      $v1, $sp, 0x20
/* E6A00 80130640 E4600004 */  swc1       $f0, 0x4($v1)
/* E6A04 80130644 C4400008 */  lwc1       $f0, 0x8($v0)
/* E6A08 80130648 E4600008 */  swc1       $f0, 0x8($v1)
/* E6A0C 8013064C C7A00024 */  lwc1       $f0, 0x24($sp)
/* E6A10 80130650 46001087 */  neg.s      $f2, $f2
/* E6A14 80130654 E7A20020 */  swc1       $f2, 0x20($sp)
/* E6A18 80130658 C7A20028 */  lwc1       $f2, 0x28($sp)
/* E6A1C 8013065C 46000007 */  neg.s      $f0, $f0
/* E6A20 80130660 46001087 */  neg.s      $f2, $f2
/* E6A24 80130664 E7A00024 */  swc1       $f0, 0x24($sp)
/* E6A28 80130668 0804C1A0 */  j          .Lrace_80130680
/* E6A2C 8013066C E7A20028 */   swc1      $f2, 0x28($sp)
.Lrace_80130670:
/* E6A30 80130670 3C01800D */  lui        $at, %hi(D_race_800CF224)
/* E6A34 80130674 C420F224 */  lwc1       $f0, %lo(D_race_800CF224)($at)
/* E6A38 80130678 AFA00028 */  sw         $zero, 0x28($sp)
/* E6A3C 8013067C E7A00020 */  swc1       $f0, 0x20($sp)
.Lrace_80130680:
/* E6A40 80130680 3C01800D */  lui        $at, %hi(D_race_800CF228)
/* E6A44 80130684 C420F228 */  lwc1       $f0, %lo(D_race_800CF228)($at)
/* E6A48 80130688 AFA00030 */  sw         $zero, 0x30($sp)
/* E6A4C 8013068C AFA00034 */  sw         $zero, 0x34($sp)
/* E6A50 80130690 E7A00038 */  swc1       $f0, 0x38($sp)
/* E6A54 80130694 8E2200E0 */  lw         $v0, 0xE0($s1)
/* E6A58 80130698 1440003B */  bnez       $v0, .Lrace_80130788
/* E6A5C 8013069C 27A50020 */   addiu     $a1, $sp, 0x20
/* E6A60 801306A0 8E020024 */  lw         $v0, 0x24($s0)
/* E6A64 801306A4 27A60030 */  addiu      $a2, $sp, 0x30
/* E6A68 801306A8 84440080 */  lh         $a0, 0x80($v0)
/* E6A6C 801306AC 8C420084 */  lw         $v0, 0x84($v0)
/* E6A70 801306B0 0040F809 */  jalr       $v0
/* E6A74 801306B4 02042021 */   addu      $a0, $s0, $a0
/* E6A78 801306B8 8E2200A8 */  lw         $v0, 0xA8($s1)
/* E6A7C 801306BC C6000028 */  lwc1       $f0, 0x28($s0)
/* E6A80 801306C0 244204E0 */  addiu      $v0, $v0, 0x4E0
/* E6A84 801306C4 E4400028 */  swc1       $f0, 0x28($v0)
/* E6A88 801306C8 C600002C */  lwc1       $f0, 0x2C($s0)
/* E6A8C 801306CC E440002C */  swc1       $f0, 0x2C($v0)
/* E6A90 801306D0 C6000030 */  lwc1       $f0, 0x30($s0)
/* E6A94 801306D4 E4400030 */  swc1       $f0, 0x30($v0)
/* E6A98 801306D8 C6000034 */  lwc1       $f0, 0x34($s0)
/* E6A9C 801306DC E4400034 */  swc1       $f0, 0x34($v0)
/* E6AA0 801306E0 C6000038 */  lwc1       $f0, 0x38($s0)
/* E6AA4 801306E4 E4400038 */  swc1       $f0, 0x38($v0)
/* E6AA8 801306E8 C600003C */  lwc1       $f0, 0x3C($s0)
/* E6AAC 801306EC E440003C */  swc1       $f0, 0x3C($v0)
/* E6AB0 801306F0 C6000040 */  lwc1       $f0, 0x40($s0)
/* E6AB4 801306F4 E4400040 */  swc1       $f0, 0x40($v0)
/* E6AB8 801306F8 C6000044 */  lwc1       $f0, 0x44($s0)
/* E6ABC 801306FC E4400044 */  swc1       $f0, 0x44($v0)
/* E6AC0 80130700 C6000048 */  lwc1       $f0, 0x48($s0)
/* E6AC4 80130704 E4400048 */  swc1       $f0, 0x48($v0)
/* E6AC8 80130708 AFA00030 */  sw         $zero, 0x30($sp)
/* E6ACC 8013070C AFA00034 */  sw         $zero, 0x34($sp)
/* E6AD0 80130710 AFA00038 */  sw         $zero, 0x38($sp)
/* E6AD4 80130714 8E2200A8 */  lw         $v0, 0xA8($s1)
/* E6AD8 80130718 C7A00030 */  lwc1       $f0, 0x30($sp)
/* E6ADC 8013071C 244203FC */  addiu      $v0, $v0, 0x3FC
/* E6AE0 80130720 E4400004 */  swc1       $f0, 0x4($v0)
/* E6AE4 80130724 C7A00034 */  lwc1       $f0, 0x34($sp)
/* E6AE8 80130728 E4400008 */  swc1       $f0, 0x8($v0)
/* E6AEC 8013072C C7A00038 */  lwc1       $f0, 0x38($sp)
/* E6AF0 80130730 E440000C */  swc1       $f0, 0xC($v0)
/* E6AF4 80130734 8E2400A8 */  lw         $a0, 0xA8($s1)
/* E6AF8 80130738 27A50020 */  addiu      $a1, $sp, 0x20
/* E6AFC 8013073C 248403FC */  addiu      $a0, $a0, 0x3FC
/* E6B00 80130740 8C8200CC */  lw         $v0, 0xCC($a0)
/* E6B04 80130744 3C06442F */  lui        $a2, (0x442F0000 >> 16)
/* E6B08 80130748 84430040 */  lh         $v1, 0x40($v0)
/* E6B0C 8013074C 8C420044 */  lw         $v0, 0x44($v0)
/* E6B10 80130750 0040F809 */  jalr       $v0
/* E6B14 80130754 00832021 */   addu      $a0, $a0, $v1
/* E6B18 80130758 8E2400A8 */  lw         $a0, 0xA8($s1)
/* E6B1C 8013075C 0C04734C */  jal        func_race_8011CD30
/* E6B20 80130760 248403FC */   addiu     $a0, $a0, 0x3FC
/* E6B24 80130764 8E2400A8 */  lw         $a0, 0xA8($s1)
/* E6B28 80130768 0C043967 */  jal        func_race_8010E59C
/* E6B2C 8013076C 00000000 */   nop
/* E6B30 80130770 8E2200E0 */  lw         $v0, 0xE0($s1)
/* E6B34 80130774 14400004 */  bnez       $v0, .Lrace_80130788
/* E6B38 80130778 00000000 */   nop
/* E6B3C 8013077C 8E240010 */  lw         $a0, 0x10($s1)
/* E6B40 80130780 0C04651F */  jal        func_race_8011947C
/* E6B44 80130784 24050029 */   addiu     $a1, $zero, 0x29
.Lrace_80130788:
/* E6B48 80130788 8E2400A8 */  lw         $a0, 0xA8($s1)
/* E6B4C 8013078C 0C0434F8 */  jal        func_race_8010D3E0
/* E6B50 80130790 00000000 */   nop
/* E6B54 80130794 24020006 */  addiu      $v0, $zero, 0x6
.Lrace_80130798:
/* E6B58 80130798 AE220004 */  sw         $v0, 0x4($s1)
.Lrace_8013079C:
/* E6B5C 8013079C 8FBF0048 */  lw         $ra, 0x48($sp)
/* E6B60 801307A0 8FB10044 */  lw         $s1, 0x44($sp)
/* E6B64 801307A4 8FB00040 */  lw         $s0, 0x40($sp)
/* E6B68 801307A8 D7B40050 */  ldc1       $f20, 0x50($sp)
/* E6B6C 801307AC 03E00008 */  jr         $ra
/* E6B70 801307B0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_801307B4
/* E6B74 801307B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E6B78 801307B8 AFB00010 */  sw         $s0, 0x10($sp)
/* E6B7C 801307BC 00808021 */  addu       $s0, $a0, $zero
/* E6B80 801307C0 26040018 */  addiu      $a0, $s0, 0x18
/* E6B84 801307C4 24020001 */  addiu      $v0, $zero, 0x1
/* E6B88 801307C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* E6B8C 801307CC 0C01607E */  jal        func_800581F8
/* E6B90 801307D0 AE020004 */   sw        $v0, 0x4($s0)
/* E6B94 801307D4 8E0200A8 */  lw         $v0, 0xA8($s0)
/* E6B98 801307D8 50400014 */  beql       $v0, $zero, .Lrace_8013082C
/* E6B9C 801307DC AE0000DC */   sw        $zero, 0xDC($s0)
/* E6BA0 801307E0 8C420DAC */  lw         $v0, 0xDAC($v0)
/* E6BA4 801307E4 1040000B */  beqz       $v0, .Lrace_80130814
/* E6BA8 801307E8 00000000 */   nop
/* E6BAC 801307EC 8C430148 */  lw         $v1, 0x148($v0)
/* E6BB0 801307F0 C60000B0 */  lwc1       $f0, 0xB0($s0)
/* E6BB4 801307F4 8C62002C */  lw         $v0, 0x2C($v1)
/* E6BB8 801307F8 E4600004 */  swc1       $f0, 0x4($v1)
/* E6BBC 801307FC 34420002 */  ori        $v0, $v0, 0x2
/* E6BC0 80130800 AC62002C */  sw         $v0, 0x2C($v1)
/* E6BC4 80130804 8E0200A8 */  lw         $v0, 0xA8($s0)
/* E6BC8 80130808 C60000B0 */  lwc1       $f0, 0xB0($s0)
/* E6BCC 8013080C 8C420DAC */  lw         $v0, 0xDAC($v0)
/* E6BD0 80130810 E4400134 */  swc1       $f0, 0x134($v0)
.Lrace_80130814:
/* E6BD4 80130814 8E0400A8 */  lw         $a0, 0xA8($s0)
/* E6BD8 80130818 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* E6BDC 8013081C 0C0456FA */  jal        func_race_80115BE8
/* E6BE0 80130820 24840018 */   addiu     $a0, $a0, 0x18
/* E6BE4 80130824 AE0000A8 */  sw         $zero, 0xA8($s0)
/* E6BE8 80130828 AE0000DC */  sw         $zero, 0xDC($s0)
.Lrace_8013082C:
/* E6BEC 8013082C 8FBF0014 */  lw         $ra, 0x14($sp)
/* E6BF0 80130830 8FB00010 */  lw         $s0, 0x10($sp)
/* E6BF4 80130834 03E00008 */  jr         $ra
/* E6BF8 80130838 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8013083C
/* E6BFC 8013083C 27BDFF68 */  addiu      $sp, $sp, -0x98
/* E6C00 80130840 AFB00080 */  sw         $s0, 0x80($sp)
/* E6C04 80130844 00808021 */  addu       $s0, $a0, $zero
/* E6C08 80130848 AFBF0088 */  sw         $ra, 0x88($sp)
/* E6C0C 8013084C AFB10084 */  sw         $s1, 0x84($sp)
/* E6C10 80130850 F7B40090 */  sdc1       $f20, 0x90($sp)
/* E6C14 80130854 8E0200D8 */  lw         $v0, 0xD8($s0)
/* E6C18 80130858 10400009 */  beqz       $v0, .Lrace_80130880
/* E6C1C 8013085C 00A08821 */   addu      $s1, $a1, $zero
/* E6C20 80130860 8E0300C0 */  lw         $v1, 0xC0($s0)
/* E6C24 80130864 8E0800C4 */  lw         $t0, 0xC4($s0)
/* E6C28 80130868 8E0900C8 */  lw         $t1, 0xC8($s0)
/* E6C2C 8013086C AFA30050 */  sw         $v1, 0x50($sp)
/* E6C30 80130870 AFA80054 */  sw         $t0, 0x54($sp)
/* E6C34 80130874 AFA90058 */  sw         $t1, 0x58($sp)
/* E6C38 80130878 0804C226 */  j          .Lrace_80130898
/* E6C3C 8013087C 00000000 */   nop
.Lrace_80130880:
/* E6C40 80130880 8E220024 */  lw         $v0, 0x24($s1)
/* E6C44 80130884 27A50050 */  addiu      $a1, $sp, 0x50
/* E6C48 80130888 84440010 */  lh         $a0, 0x10($v0)
/* E6C4C 8013088C 8C420014 */  lw         $v0, 0x14($v0)
/* E6C50 80130890 0040F809 */  jalr       $v0
/* E6C54 80130894 02242021 */   addu      $a0, $s1, $a0
.Lrace_80130898:
/* E6C58 80130898 8FA30050 */  lw         $v1, 0x50($sp)
/* E6C5C 8013089C 8FA80054 */  lw         $t0, 0x54($sp)
/* E6C60 801308A0 8FA90058 */  lw         $t1, 0x58($sp)
/* E6C64 801308A4 AFA30060 */  sw         $v1, 0x60($sp)
/* E6C68 801308A8 AFA80064 */  sw         $t0, 0x64($sp)
/* E6C6C 801308AC AFA90068 */  sw         $t1, 0x68($sp)
/* E6C70 801308B0 8FA30050 */  lw         $v1, 0x50($sp)
/* E6C74 801308B4 8FA80054 */  lw         $t0, 0x54($sp)
/* E6C78 801308B8 8FA90058 */  lw         $t1, 0x58($sp)
/* E6C7C 801308BC AFA30070 */  sw         $v1, 0x70($sp)
/* E6C80 801308C0 AFA80074 */  sw         $t0, 0x74($sp)
/* E6C84 801308C4 AFA90078 */  sw         $t1, 0x78($sp)
/* E6C88 801308C8 C7A40068 */  lwc1       $f4, 0x68($sp)
/* E6C8C 801308CC 3C01800D */  lui        $at, %hi(D_race_800CF22C)
/* E6C90 801308D0 C434F22C */  lwc1       $f20, %lo(D_race_800CF22C)($at)
/* E6C94 801308D4 C7A00078 */  lwc1       $f0, 0x78($sp)
/* E6C98 801308D8 46142100 */  add.s      $f4, $f4, $f20
/* E6C9C 801308DC 3C01800D */  lui        $at, %hi(D_race_800CF230)
/* E6CA0 801308E0 C422F230 */  lwc1       $f2, %lo(D_race_800CF230)($at)
/* E6CA4 801308E4 27A50060 */  addiu      $a1, $sp, 0x60
/* E6CA8 801308E8 46020001 */  sub.s      $f0, $f0, $f2
/* E6CAC 801308EC 27A60070 */  addiu      $a2, $sp, 0x70
/* E6CB0 801308F0 E7A40068 */  swc1       $f4, 0x68($sp)
/* E6CB4 801308F4 E7A00078 */  swc1       $f0, 0x78($sp)
/* E6CB8 801308F8 8E0200AC */  lw         $v0, 0xAC($s0)
/* E6CBC 801308FC 27A70018 */  addiu      $a3, $sp, 0x18
/* E6CC0 80130900 8C440068 */  lw         $a0, 0x68($v0)
/* E6CC4 80130904 27B00050 */  addiu      $s0, $sp, 0x50
/* E6CC8 80130908 AFB00010 */  sw         $s0, 0x10($sp)
/* E6CCC 8013090C 0C03CA12 */  jal        func_race_800F2848
/* E6CD0 80130910 AFA00014 */   sw        $zero, 0x14($sp)
/* E6CD4 80130914 C7A00058 */  lwc1       $f0, 0x58($sp)
/* E6CD8 80130918 46140000 */  add.s      $f0, $f0, $f20
/* E6CDC 8013091C E7A00058 */  swc1       $f0, 0x58($sp)
/* E6CE0 80130920 8E220024 */  lw         $v0, 0x24($s1)
/* E6CE4 80130924 02002821 */  addu       $a1, $s0, $zero
/* E6CE8 80130928 84440018 */  lh         $a0, 0x18($v0)
/* E6CEC 8013092C 8C42001C */  lw         $v0, 0x1C($v0)
/* E6CF0 80130930 0040F809 */  jalr       $v0
/* E6CF4 80130934 02242021 */   addu      $a0, $s1, $a0
/* E6CF8 80130938 8FBF0088 */  lw         $ra, 0x88($sp)
/* E6CFC 8013093C 8FB10084 */  lw         $s1, 0x84($sp)
/* E6D00 80130940 8FB00080 */  lw         $s0, 0x80($sp)
/* E6D04 80130944 D7B40090 */  ldc1       $f20, 0x90($sp)
/* E6D08 80130948 03E00008 */  jr         $ra
/* E6D0C 8013094C 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_race_80130950
/* E6D10 80130950 8C8200A8 */  lw         $v0, 0xA8($a0)
/* E6D14 80130954 03E00008 */  jr         $ra
/* E6D18 80130958 00000000 */   nop

glabel func_race_8013095C
/* E6D1C 8013095C 03E00008 */  jr         $ra
/* E6D20 80130960 24020003 */   addiu     $v0, $zero, 0x3
