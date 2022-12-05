.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DCA80
/* 92E40 800DCA80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92E44 800DCA84 AFB00010 */  sw         $s0, 0x10($sp)
/* 92E48 800DCA88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 92E4C 800DCA8C 0C03592C */  jal        func_race_800D64B0
/* 92E50 800DCA90 00808021 */   addu      $s0, $a0, $zero
/* 92E54 800DCA94 02001021 */  addu       $v0, $s0, $zero
/* 92E58 800DCA98 3C03800D */  lui        $v1, %hi(D_race_800CB1A0)
/* 92E5C 800DCA9C 2463B1A0 */  addiu      $v1, $v1, %lo(D_race_800CB1A0)
/* 92E60 800DCAA0 AC43001C */  sw         $v1, 0x1C($v0)
/* 92E64 800DCAA4 AC400020 */  sw         $zero, 0x20($v0)
/* 92E68 800DCAA8 A0400018 */  sb         $zero, 0x18($v0)
/* 92E6C 800DCAAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92E70 800DCAB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 92E74 800DCAB4 03E00008 */  jr         $ra
/* 92E78 800DCAB8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DCABC
/* 92E7C 800DCABC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92E80 800DCAC0 AFB00010 */  sw         $s0, 0x10($sp)
/* 92E84 800DCAC4 00808021 */  addu       $s0, $a0, $zero
/* 92E88 800DCAC8 AFB10014 */  sw         $s1, 0x14($sp)
/* 92E8C 800DCACC 00A08821 */  addu       $s1, $a1, $zero
/* 92E90 800DCAD0 3C02800D */  lui        $v0, %hi(D_race_800CB1A0)
/* 92E94 800DCAD4 2442B1A0 */  addiu      $v0, $v0, %lo(D_race_800CB1A0)
/* 92E98 800DCAD8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 92E9C 800DCADC 0C03730D */  jal        func_race_800DCC34
/* 92EA0 800DCAE0 AE02001C */   sw        $v0, 0x1C($s0)
/* 92EA4 800DCAE4 02002021 */  addu       $a0, $s0, $zero
/* 92EA8 800DCAE8 0C03593D */  jal        func_race_800D64F4
/* 92EAC 800DCAEC 02202821 */   addu      $a1, $s1, $zero
/* 92EB0 800DCAF0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 92EB4 800DCAF4 8FB10014 */  lw         $s1, 0x14($sp)
/* 92EB8 800DCAF8 8FB00010 */  lw         $s0, 0x10($sp)
/* 92EBC 800DCAFC 03E00008 */  jr         $ra
/* 92EC0 800DCB00 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DCB04
/* 92EC4 800DCB04 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92EC8 800DCB08 AFB00010 */  sw         $s0, 0x10($sp)
/* 92ECC 800DCB0C 00808021 */  addu       $s0, $a0, $zero
/* 92ED0 800DCB10 AFBF0018 */  sw         $ra, 0x18($sp)
/* 92ED4 800DCB14 AFB10014 */  sw         $s1, 0x14($sp)
/* 92ED8 800DCB18 8E020014 */  lw         $v0, 0x14($s0)
/* 92EDC 800DCB1C 10400003 */  beqz       $v0, .Lrace_800DCB2C
/* 92EE0 800DCB20 00A08821 */   addu      $s1, $a1, $zero
/* 92EE4 800DCB24 0C03730D */  jal        func_race_800DCC34
/* 92EE8 800DCB28 00000000 */   nop
.Lrace_800DCB2C:
/* 92EEC 800DCB2C 00002821 */  addu       $a1, $zero, $zero
/* 92EF0 800DCB30 02202021 */  addu       $a0, $s1, $zero
/* 92EF4 800DCB34 8E220000 */  lw         $v0, 0x0($s1)
/* 92EF8 800DCB38 02001821 */  addu       $v1, $s0, $zero
/* 92EFC 800DCB3C AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800DCB40:
/* 92F00 800DCB40 8C820004 */  lw         $v0, 0x4($a0)
/* 92F04 800DCB44 24840004 */  addiu      $a0, $a0, 0x4
/* 92F08 800DCB48 24A50001 */  addiu      $a1, $a1, 0x1
/* 92F0C 800DCB4C AC620004 */  sw         $v0, 0x4($v1)
/* 92F10 800DCB50 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 92F14 800DCB54 1440FFFA */  bnez       $v0, .Lrace_800DCB40
/* 92F18 800DCB58 24630004 */   addiu     $v1, $v1, 0x4
/* 92F1C 800DCB5C 8E220010 */  lw         $v0, 0x10($s1)
/* 92F20 800DCB60 AE020000 */  sw         $v0, 0x0($s0)
/* 92F24 800DCB64 8E220014 */  lw         $v0, 0x14($s1)
/* 92F28 800DCB68 AE020020 */  sw         $v0, 0x20($s0)
/* 92F2C 800DCB6C 8E220018 */  lw         $v0, 0x18($s1)
/* 92F30 800DCB70 AE020024 */  sw         $v0, 0x24($s0)
/* 92F34 800DCB74 8E22001C */  lw         $v0, 0x1C($s1)
/* 92F38 800DCB78 AE020028 */  sw         $v0, 0x28($s0)
/* 92F3C 800DCB7C 8E220020 */  lw         $v0, 0x20($s1)
/* 92F40 800DCB80 AE02002C */  sw         $v0, 0x2C($s0)
/* 92F44 800DCB84 8E220024 */  lw         $v0, 0x24($s1)
/* 92F48 800DCB88 AE020030 */  sw         $v0, 0x30($s0)
/* 92F4C 800DCB8C 8E220028 */  lw         $v0, 0x28($s1)
/* 92F50 800DCB90 10400004 */  beqz       $v0, .Lrace_800DCBA4
/* 92F54 800DCB94 00000000 */   nop
/* 92F58 800DCB98 92020018 */  lbu        $v0, 0x18($s0)
/* 92F5C 800DCB9C 34420001 */  ori        $v0, $v0, 0x1
/* 92F60 800DCBA0 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DCBA4:
/* 92F64 800DCBA4 8E22002C */  lw         $v0, 0x2C($s1)
/* 92F68 800DCBA8 10400004 */  beqz       $v0, .Lrace_800DCBBC
/* 92F6C 800DCBAC 00000000 */   nop
/* 92F70 800DCBB0 92020018 */  lbu        $v0, 0x18($s0)
/* 92F74 800DCBB4 34420002 */  ori        $v0, $v0, 0x2
/* 92F78 800DCBB8 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DCBBC:
/* 92F7C 800DCBBC 8E220030 */  lw         $v0, 0x30($s1)
/* 92F80 800DCBC0 10400004 */  beqz       $v0, .Lrace_800DCBD4
/* 92F84 800DCBC4 00000000 */   nop
/* 92F88 800DCBC8 92020018 */  lbu        $v0, 0x18($s0)
/* 92F8C 800DCBCC 34420004 */  ori        $v0, $v0, 0x4
/* 92F90 800DCBD0 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DCBD4:
/* 92F94 800DCBD4 8E220034 */  lw         $v0, 0x34($s1)
/* 92F98 800DCBD8 10400004 */  beqz       $v0, .Lrace_800DCBEC
/* 92F9C 800DCBDC 00000000 */   nop
/* 92FA0 800DCBE0 92020018 */  lbu        $v0, 0x18($s0)
/* 92FA4 800DCBE4 34420008 */  ori        $v0, $v0, 0x8
/* 92FA8 800DCBE8 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DCBEC:
/* 92FAC 800DCBEC 8E220038 */  lw         $v0, 0x38($s1)
/* 92FB0 800DCBF0 10400004 */  beqz       $v0, .Lrace_800DCC04
/* 92FB4 800DCBF4 00000000 */   nop
/* 92FB8 800DCBF8 92020018 */  lbu        $v0, 0x18($s0)
/* 92FBC 800DCBFC 34420010 */  ori        $v0, $v0, 0x10
/* 92FC0 800DCC00 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DCC04:
/* 92FC4 800DCC04 8E040020 */  lw         $a0, 0x20($s0)
/* 92FC8 800DCC08 8C82005C */  lw         $v0, 0x5C($a0)
/* 92FCC 800DCC0C 3C030020 */  lui        $v1, (0x200000 >> 16)
/* 92FD0 800DCC10 00431025 */  or         $v0, $v0, $v1
/* 92FD4 800DCC14 AC82005C */  sw         $v0, 0x5C($a0)
/* 92FD8 800DCC18 24020001 */  addiu      $v0, $zero, 0x1
/* 92FDC 800DCC1C AE020014 */  sw         $v0, 0x14($s0)
/* 92FE0 800DCC20 8FBF0018 */  lw         $ra, 0x18($sp)
/* 92FE4 800DCC24 8FB10014 */  lw         $s1, 0x14($sp)
/* 92FE8 800DCC28 8FB00010 */  lw         $s0, 0x10($sp)
/* 92FEC 800DCC2C 03E00008 */  jr         $ra
/* 92FF0 800DCC30 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DCC34
/* 92FF4 800DCC34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92FF8 800DCC38 AFBF0010 */  sw         $ra, 0x10($sp)
/* 92FFC 800DCC3C 0C035951 */  jal        func_race_800D6544
/* 93000 800DCC40 AC800020 */   sw        $zero, 0x20($a0)
/* 93004 800DCC44 8FBF0010 */  lw         $ra, 0x10($sp)
/* 93008 800DCC48 03E00008 */  jr         $ra
/* 9300C 800DCC4C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DCC50
/* 93010 800DCC50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 93014 800DCC54 AFB00010 */  sw         $s0, 0x10($sp)
/* 93018 800DCC58 00808021 */  addu       $s0, $a0, $zero
/* 9301C 800DCC5C AFBF0018 */  sw         $ra, 0x18($sp)
/* 93020 800DCC60 0C03595D */  jal        func_race_800D6574
/* 93024 800DCC64 AFB10014 */   sw        $s1, 0x14($sp)
/* 93028 800DCC68 24020002 */  addiu      $v0, $zero, 0x2
/* 9302C 800DCC6C 8E060020 */  lw         $a2, 0x20($s0)
/* 93030 800DCC70 8E030014 */  lw         $v1, 0x14($s0)
/* 93034 800DCC74 94C700BC */  lhu        $a3, 0xBC($a2)
/* 93038 800DCC78 14620019 */  bne        $v1, $v0, .Lrace_800DCCE0
/* 9303C 800DCC7C 24020004 */   addiu     $v0, $zero, 0x4
/* 93040 800DCC80 8E02002C */  lw         $v0, 0x2C($s0)
/* 93044 800DCC84 14E20054 */  bne        $a3, $v0, .Lrace_800DCDD8
/* 93048 800DCC88 3C030012 */   lui       $v1, (0x120000 >> 16)
/* 9304C 800DCC8C 8CC2005C */  lw         $v0, 0x5C($a2)
/* 93050 800DCC90 00431024 */  and        $v0, $v0, $v1
/* 93054 800DCC94 10400002 */  beqz       $v0, .Lrace_800DCCA0
/* 93058 800DCC98 2404FFFF */   addiu     $a0, $zero, -0x1
/* 9305C 800DCC9C 94C400D8 */  lhu        $a0, 0xD8($a2)
.Lrace_800DCCA0:
/* 93060 800DCCA0 2402FFFF */  addiu      $v0, $zero, -0x1
/* 93064 800DCCA4 14820044 */  bne        $a0, $v0, .Lrace_800DCDB8
/* 93068 800DCCA8 3C05FFB1 */   lui       $a1, (0xFFB1FFFF >> 16)
/* 9306C 800DCCAC 34A5FFFF */  ori        $a1, $a1, (0xFFB1FFFF & 0xFFFF)
/* 93070 800DCCB0 92040018 */  lbu        $a0, 0x18($s0)
/* 93074 800DCCB4 8CC3005C */  lw         $v1, 0x5C($a2)
/* 93078 800DCCB8 8E020024 */  lw         $v0, 0x24($s0)
/* 9307C 800DCCBC 00651824 */  and        $v1, $v1, $a1
/* 93080 800DCCC0 A4C200D8 */  sh         $v0, 0xD8($a2)
/* 93084 800DCCC4 3C020010 */  lui        $v0, (0x100000 >> 16)
/* 93088 800DCCC8 00621825 */  or         $v1, $v1, $v0
/* 9308C 800DCCCC 30840001 */  andi       $a0, $a0, 0x1
/* 93090 800DCCD0 10800039 */  beqz       $a0, .Lrace_800DCDB8
/* 93094 800DCCD4 ACC3005C */   sw        $v1, 0x5C($a2)
/* 93098 800DCCD8 0803736C */  j          .Lrace_800DCDB0
/* 9309C 800DCCDC 3C020040 */   lui       $v0, (0x400000 >> 16)
.Lrace_800DCCE0:
/* 930A0 800DCCE0 1462000E */  bne        $v1, $v0, .Lrace_800DCD1C
/* 930A4 800DCCE4 24020003 */   addiu     $v0, $zero, 0x3
/* 930A8 800DCCE8 8E020030 */  lw         $v0, 0x30($s0)
/* 930AC 800DCCEC 14E20032 */  bne        $a3, $v0, .Lrace_800DCDB8
/* 930B0 800DCCF0 3C030012 */   lui       $v1, (0x120000 >> 16)
/* 930B4 800DCCF4 8CC2005C */  lw         $v0, 0x5C($a2)
/* 930B8 800DCCF8 00431024 */  and        $v0, $v0, $v1
/* 930BC 800DCCFC 10400002 */  beqz       $v0, .Lrace_800DCD08
/* 930C0 800DCD00 2404FFFF */   addiu     $a0, $zero, -0x1
/* 930C4 800DCD04 94C400D8 */  lhu        $a0, 0xD8($a2)
.Lrace_800DCD08:
/* 930C8 800DCD08 2402FFFF */  addiu      $v0, $zero, -0x1
/* 930CC 800DCD0C 1482002A */  bne        $a0, $v0, .Lrace_800DCDB8
/* 930D0 800DCD10 3C04FFB1 */   lui       $a0, (0xFFB1FFFF >> 16)
/* 930D4 800DCD14 08037365 */  j          .Lrace_800DCD94
/* 930D8 800DCD18 3484FFFF */   ori       $a0, $a0, (0xFFB1FFFF & 0xFFFF)
.Lrace_800DCD1C:
/* 930DC 800DCD1C 14620026 */  bne        $v1, $v0, .Lrace_800DCDB8
/* 930E0 800DCD20 00000000 */   nop
/* 930E4 800DCD24 92020018 */  lbu        $v0, 0x18($s0)
/* 930E8 800DCD28 30420001 */  andi       $v0, $v0, 0x1
/* 930EC 800DCD2C 14400022 */  bnez       $v0, .Lrace_800DCDB8
/* 930F0 800DCD30 00000000 */   nop
/* 930F4 800DCD34 8E020024 */  lw         $v0, 0x24($s0)
/* 930F8 800DCD38 14E2001F */  bne        $a3, $v0, .Lrace_800DCDB8
/* 930FC 800DCD3C 3C030012 */   lui       $v1, (0x120000 >> 16)
/* 93100 800DCD40 8CC2005C */  lw         $v0, 0x5C($a2)
/* 93104 800DCD44 00431024 */  and        $v0, $v0, $v1
/* 93108 800DCD48 10400002 */  beqz       $v0, .Lrace_800DCD54
/* 9310C 800DCD4C 2404FFFF */   addiu     $a0, $zero, -0x1
/* 93110 800DCD50 94C400D8 */  lhu        $a0, 0xD8($a2)
.Lrace_800DCD54:
/* 93114 800DCD54 2402FFFF */  addiu      $v0, $zero, -0x1
/* 93118 800DCD58 14820017 */  bne        $a0, $v0, .Lrace_800DCDB8
/* 9311C 800DCD5C 00000000 */   nop
/* 93120 800DCD60 8E050030 */  lw         $a1, 0x30($s0)
/* 93124 800DCD64 10A40009 */  beq        $a1, $a0, .Lrace_800DCD8C
/* 93128 800DCD68 3C02FFB1 */   lui       $v0, (0xFFB1FFFF >> 16)
/* 9312C 800DCD6C 8CC3005C */  lw         $v1, 0x5C($a2)
/* 93130 800DCD70 3442FFFF */  ori        $v0, $v0, (0xFFB1FFFF & 0xFFFF)
/* 93134 800DCD74 A4C500D8 */  sh         $a1, 0xD8($a2)
/* 93138 800DCD78 00621824 */  and        $v1, $v1, $v0
/* 9313C 800DCD7C 3C020010 */  lui        $v0, (0x100000 >> 16)
/* 93140 800DCD80 00621825 */  or         $v1, $v1, $v0
/* 93144 800DCD84 0803736E */  j          .Lrace_800DCDB8
/* 93148 800DCD88 ACC3005C */   sw        $v1, 0x5C($a2)
.Lrace_800DCD8C:
/* 9314C 800DCD8C 3C04FFB1 */  lui        $a0, (0xFFB1FFFF >> 16)
/* 93150 800DCD90 3484FFFF */  ori        $a0, $a0, (0xFFB1FFFF & 0xFFFF)
.Lrace_800DCD94:
/* 93154 800DCD94 8CC2005C */  lw         $v0, 0x5C($a2)
/* 93158 800DCD98 8E030028 */  lw         $v1, 0x28($s0)
/* 9315C 800DCD9C 00441024 */  and        $v0, $v0, $a0
/* 93160 800DCDA0 A4C300D8 */  sh         $v1, 0xD8($a2)
/* 93164 800DCDA4 3C030010 */  lui        $v1, (0x100000 >> 16)
/* 93168 800DCDA8 00431025 */  or         $v0, $v0, $v1
/* 9316C 800DCDAC 3C030040 */  lui        $v1, (0x400000 >> 16)
.Lrace_800DCDB0:
/* 93170 800DCDB0 00431025 */  or         $v0, $v0, $v1
/* 93174 800DCDB4 ACC2005C */  sw         $v0, 0x5C($a2)
.Lrace_800DCDB8:
/* 93178 800DCDB8 8E02002C */  lw         $v0, 0x2C($s0)
/* 9317C 800DCDBC 14E20006 */  bne        $a3, $v0, .Lrace_800DCDD8
/* 93180 800DCDC0 24110002 */   addiu     $s1, $zero, 0x2
/* 93184 800DCDC4 8E050014 */  lw         $a1, 0x14($s0)
/* 93188 800DCDC8 10B10003 */  beq        $a1, $s1, .Lrace_800DCDD8
/* 9318C 800DCDCC 02002021 */   addu      $a0, $s0, $zero
/* 93190 800DCDD0 0803738D */  j          .Lrace_800DCE34
/* 93194 800DCDD4 00003021 */   addu      $a2, $zero, $zero
.Lrace_800DCDD8:
/* 93198 800DCDD8 8E020024 */  lw         $v0, 0x24($s0)
/* 9319C 800DCDDC 14E20006 */  bne        $a3, $v0, .Lrace_800DCDF8
/* 931A0 800DCDE0 24110003 */   addiu     $s1, $zero, 0x3
/* 931A4 800DCDE4 8E050014 */  lw         $a1, 0x14($s0)
/* 931A8 800DCDE8 10B10003 */  beq        $a1, $s1, .Lrace_800DCDF8
/* 931AC 800DCDEC 02002021 */   addu      $a0, $s0, $zero
/* 931B0 800DCDF0 0803738D */  j          .Lrace_800DCE34
/* 931B4 800DCDF4 24060001 */   addiu     $a2, $zero, 0x1
.Lrace_800DCDF8:
/* 931B8 800DCDF8 8E020030 */  lw         $v0, 0x30($s0)
/* 931BC 800DCDFC 14E20006 */  bne        $a3, $v0, .Lrace_800DCE18
/* 931C0 800DCE00 24110004 */   addiu     $s1, $zero, 0x4
/* 931C4 800DCE04 8E050014 */  lw         $a1, 0x14($s0)
/* 931C8 800DCE08 10B10003 */  beq        $a1, $s1, .Lrace_800DCE18
/* 931CC 800DCE0C 02002021 */   addu      $a0, $s0, $zero
/* 931D0 800DCE10 0803738D */  j          .Lrace_800DCE34
/* 931D4 800DCE14 24060002 */   addiu     $a2, $zero, 0x2
.Lrace_800DCE18:
/* 931D8 800DCE18 8E020028 */  lw         $v0, 0x28($s0)
/* 931DC 800DCE1C 14E20008 */  bne        $a3, $v0, .Lrace_800DCE40
/* 931E0 800DCE20 24110001 */   addiu     $s1, $zero, 0x1
/* 931E4 800DCE24 8E050014 */  lw         $a1, 0x14($s0)
/* 931E8 800DCE28 10B10005 */  beq        $a1, $s1, .Lrace_800DCE40
/* 931EC 800DCE2C 02002021 */   addu      $a0, $s0, $zero
/* 931F0 800DCE30 24060003 */  addiu      $a2, $zero, 0x3
.Lrace_800DCE34:
/* 931F4 800DCE34 0C03596C */  jal        func_race_800D65B0
/* 931F8 800DCE38 00000000 */   nop
/* 931FC 800DCE3C AE110014 */  sw         $s1, 0x14($s0)
.Lrace_800DCE40:
/* 93200 800DCE40 8FBF0018 */  lw         $ra, 0x18($sp)
/* 93204 800DCE44 8FB10014 */  lw         $s1, 0x14($sp)
/* 93208 800DCE48 8FB00010 */  lw         $s0, 0x10($sp)
/* 9320C 800DCE4C 03E00008 */  jr         $ra
/* 93210 800DCE50 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DCE54
/* 93214 800DCE54 00801821 */  addu       $v1, $a0, $zero
/* 93218 800DCE58 8C65002C */  lw         $a1, 0x2C($v1)
/* 9321C 800DCE5C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 93220 800DCE60 50A20009 */  beql       $a1, $v0, .Lrace_800DCE88
/* 93224 800DCE64 3C05FFB1 */   lui       $a1, (0xFFB1FFFF >> 16)
/* 93228 800DCE68 8C640020 */  lw         $a0, 0x20($v1)
/* 9322C 800DCE6C 3C03FFB1 */  lui        $v1, (0xFFB1FFFF >> 16)
/* 93230 800DCE70 8C82005C */  lw         $v0, 0x5C($a0)
/* 93234 800DCE74 3463FFFF */  ori        $v1, $v1, (0xFFB1FFFF & 0xFFFF)
/* 93238 800DCE78 A48500D8 */  sh         $a1, 0xD8($a0)
/* 9323C 800DCE7C 00431024 */  and        $v0, $v0, $v1
/* 93240 800DCE80 080373AB */  j          .Lrace_800DCEAC
/* 93244 800DCE84 3C030010 */   lui       $v1, (0x100000 >> 16)
.Lrace_800DCE88:
/* 93248 800DCE88 8C640020 */  lw         $a0, 0x20($v1)
/* 9324C 800DCE8C 8C630024 */  lw         $v1, 0x24($v1)
/* 93250 800DCE90 8C82005C */  lw         $v0, 0x5C($a0)
/* 93254 800DCE94 34A5FFFF */  ori        $a1, $a1, (0xFFB1FFFF & 0xFFFF)
/* 93258 800DCE98 A48300D8 */  sh         $v1, 0xD8($a0)
/* 9325C 800DCE9C 3C030010 */  lui        $v1, (0x100000 >> 16)
/* 93260 800DCEA0 00451024 */  and        $v0, $v0, $a1
/* 93264 800DCEA4 00431025 */  or         $v0, $v0, $v1
/* 93268 800DCEA8 3C030040 */  lui        $v1, (0x400000 >> 16)
.Lrace_800DCEAC:
/* 9326C 800DCEAC 00431025 */  or         $v0, $v0, $v1
/* 93270 800DCEB0 03E00008 */  jr         $ra
/* 93274 800DCEB4 AC82005C */   sw        $v0, 0x5C($a0)

glabel func_race_800DCEB8
/* 93278 800DCEB8 00803021 */  addu       $a2, $a0, $zero
/* 9327C 800DCEBC 8CC30014 */  lw         $v1, 0x14($a2)
/* 93280 800DCEC0 24020001 */  addiu      $v0, $zero, 0x1
/* 93284 800DCEC4 1062000B */  beq        $v1, $v0, .Lrace_800DCEF4
/* 93288 800DCEC8 00002821 */   addu      $a1, $zero, $zero
/* 9328C 800DCECC 8CC20020 */  lw         $v0, 0x20($a2)
/* 93290 800DCED0 944400BC */  lhu        $a0, 0xBC($v0)
/* 93294 800DCED4 8CC20028 */  lw         $v0, 0x28($a2)
/* 93298 800DCED8 10820006 */  beq        $a0, $v0, .Lrace_800DCEF4
/* 9329C 800DCEDC 2402FFFF */   addiu     $v0, $zero, -0x1
/* 932A0 800DCEE0 8CC30030 */  lw         $v1, 0x30($a2)
/* 932A4 800DCEE4 50620003 */  beql       $v1, $v0, .Lrace_800DCEF4
/* 932A8 800DCEE8 24050001 */   addiu     $a1, $zero, 0x1
/* 932AC 800DCEEC 54830001 */  bnel       $a0, $v1, .Lrace_800DCEF4
/* 932B0 800DCEF0 24050001 */   addiu     $a1, $zero, 0x1
.Lrace_800DCEF4:
/* 932B4 800DCEF4 10A00017 */  beqz       $a1, .Lrace_800DCF54
/* 932B8 800DCEF8 2402FFFF */   addiu     $v0, $zero, -0x1
/* 932BC 800DCEFC 8CC50030 */  lw         $a1, 0x30($a2)
/* 932C0 800DCF00 10A20008 */  beq        $a1, $v0, .Lrace_800DCF24
/* 932C4 800DCF04 3C03FFB1 */   lui       $v1, (0xFFB1FFFF >> 16)
/* 932C8 800DCF08 8CC40020 */  lw         $a0, 0x20($a2)
/* 932CC 800DCF0C 8C82005C */  lw         $v0, 0x5C($a0)
/* 932D0 800DCF10 3463FFFF */  ori        $v1, $v1, (0xFFB1FFFF & 0xFFFF)
/* 932D4 800DCF14 A48500D8 */  sh         $a1, 0xD8($a0)
/* 932D8 800DCF18 00431024 */  and        $v0, $v0, $v1
/* 932DC 800DCF1C 080373D3 */  j          .Lrace_800DCF4C
/* 932E0 800DCF20 3C030010 */   lui       $v1, (0x100000 >> 16)
.Lrace_800DCF24:
/* 932E4 800DCF24 3C05FFB1 */  lui        $a1, (0xFFB1FFFF >> 16)
/* 932E8 800DCF28 8CC40020 */  lw         $a0, 0x20($a2)
/* 932EC 800DCF2C 8CC30028 */  lw         $v1, 0x28($a2)
/* 932F0 800DCF30 8C82005C */  lw         $v0, 0x5C($a0)
/* 932F4 800DCF34 34A5FFFF */  ori        $a1, $a1, (0xFFB1FFFF & 0xFFFF)
/* 932F8 800DCF38 A48300D8 */  sh         $v1, 0xD8($a0)
/* 932FC 800DCF3C 3C030010 */  lui        $v1, (0x100000 >> 16)
/* 93300 800DCF40 00451024 */  and        $v0, $v0, $a1
/* 93304 800DCF44 00431025 */  or         $v0, $v0, $v1
/* 93308 800DCF48 3C030040 */  lui        $v1, (0x400000 >> 16)
.Lrace_800DCF4C:
/* 9330C 800DCF4C 00431025 */  or         $v0, $v0, $v1
/* 93310 800DCF50 AC82005C */  sw         $v0, 0x5C($a0)
.Lrace_800DCF54:
/* 93314 800DCF54 24020001 */  addiu      $v0, $zero, 0x1
/* 93318 800DCF58 03E00008 */  jr         $ra
/* 9331C 800DCF5C ACC20014 */   sw        $v0, 0x14($a2)

glabel func_race_800DCF60
/* 93320 800DCF60 8C820020 */  lw         $v0, 0x20($a0)
/* 93324 800DCF64 03E00008 */  jr         $ra
/* 93328 800DCF68 00000000 */   nop

glabel func_race_800DCF6C
/* 9332C 800DCF6C 8C820030 */  lw         $v0, 0x30($a0)
/* 93330 800DCF70 03E00008 */  jr         $ra
/* 93334 800DCF74 00000000 */   nop

glabel func_race_800DCF78
/* 93338 800DCF78 8C82002C */  lw         $v0, 0x2C($a0)
/* 9333C 800DCF7C 03E00008 */  jr         $ra
/* 93340 800DCF80 00000000 */   nop

glabel func_race_800DCF84
/* 93344 800DCF84 8C820028 */  lw         $v0, 0x28($a0)
/* 93348 800DCF88 03E00008 */  jr         $ra
/* 9334C 800DCF8C 00000000 */   nop

glabel func_race_800DCF90
/* 93350 800DCF90 8C820024 */  lw         $v0, 0x24($a0)
/* 93354 800DCF94 03E00008 */  jr         $ra
/* 93358 800DCF98 00000000 */   nop

glabel func_race_800DCF9C
/* 9335C 800DCF9C 03E00008 */  jr         $ra
/* 93360 800DCFA0 24020001 */   addiu     $v0, $zero, 0x1
