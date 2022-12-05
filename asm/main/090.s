.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80009E30
/* AA30 80009E30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AA34 80009E34 AFB00010 */  sw         $s0, 0x10($sp)
/* AA38 80009E38 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA3C 80009E3C 0C002504 */  jal        func_80009410
/* AA40 80009E40 00808021 */   addu      $s0, $a0, $zero
/* AA44 80009E44 3C028000 */  lui        $v0, %hi(D_80000B48)
/* AA48 80009E48 24420B48 */  addiu      $v0, $v0, %lo(D_80000B48)
/* AA4C 80009E4C 02002021 */  addu       $a0, $s0, $zero
/* AA50 80009E50 0C00279B */  jal        func_80009E6C
/* AA54 80009E54 AE020028 */   sw        $v0, 0x28($s0)
/* AA58 80009E58 02001021 */  addu       $v0, $s0, $zero
/* AA5C 80009E5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA60 80009E60 8FB00010 */  lw         $s0, 0x10($sp)
/* AA64 80009E64 03E00008 */  jr         $ra
/* AA68 80009E68 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80009E6C
/* AA6C 80009E6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AA70 80009E70 AFBF0010 */  sw         $ra, 0x10($sp)
/* AA74 80009E74 AC8001E8 */  sw         $zero, 0x1E8($a0)
/* AA78 80009E78 0C00252D */  jal        func_800094B4
/* AA7C 80009E7C AC800650 */   sw        $zero, 0x650($a0)
/* AA80 80009E80 8FBF0010 */  lw         $ra, 0x10($sp)
/* AA84 80009E84 03E00008 */  jr         $ra
/* AA88 80009E88 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80009E8C
/* AA8C 80009E8C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AA90 80009E90 AFB10014 */  sw         $s1, 0x14($sp)
/* AA94 80009E94 00808821 */  addu       $s1, $a0, $zero
/* AA98 80009E98 AFBF0024 */  sw         $ra, 0x24($sp)
/* AA9C 80009E9C AFB40020 */  sw         $s4, 0x20($sp)
/* AAA0 80009EA0 AFB3001C */  sw         $s3, 0x1C($sp)
/* AAA4 80009EA4 AFB20018 */  sw         $s2, 0x18($sp)
/* AAA8 80009EA8 AFB00010 */  sw         $s0, 0x10($sp)
/* AAAC 80009EAC 8E220004 */  lw         $v0, 0x4($s1)
/* AAB0 80009EB0 30420001 */  andi       $v0, $v0, 0x1
/* AAB4 80009EB4 10400006 */  beqz       $v0, .L80009ED0
/* AAB8 80009EB8 00A0A021 */   addu      $s4, $a1, $zero
/* AABC 80009EBC 8E220028 */  lw         $v0, 0x28($s1)
/* AAC0 80009EC0 84440048 */  lh         $a0, 0x48($v0)
/* AAC4 80009EC4 8C42004C */  lw         $v0, 0x4C($v0)
/* AAC8 80009EC8 0040F809 */  jalr       $v0
/* AACC 80009ECC 02242021 */   addu      $a0, $s1, $a0
.L80009ED0:
/* AAD0 80009ED0 2413FFFF */  addiu      $s3, $zero, -0x1
/* AAD4 80009ED4 92820000 */  lbu        $v0, 0x0($s4)
/* AAD8 80009ED8 1040000A */  beqz       $v0, .L80009F04
/* AADC 80009EDC 00008021 */   addu      $s0, $zero, $zero
/* AAE0 80009EE0 2404002E */  addiu      $a0, $zero, 0x2E
/* AAE4 80009EE4 02801821 */  addu       $v1, $s4, $zero
/* AAE8 80009EE8 90620000 */  lbu        $v0, 0x0($v1)
.L80009EEC:
/* AAEC 80009EEC 50440001 */  beql       $v0, $a0, .L80009EF4
/* AAF0 80009EF0 02009821 */   addu      $s3, $s0, $zero
.L80009EF4:
/* AAF4 80009EF4 24630001 */  addiu      $v1, $v1, 0x1
/* AAF8 80009EF8 90620000 */  lbu        $v0, 0x0($v1)
/* AAFC 80009EFC 1440FFFB */  bnez       $v0, .L80009EEC
/* AB00 80009F00 26100001 */   addiu     $s0, $s0, 0x1
.L80009F04:
/* AB04 80009F04 06610020 */  bgez       $s3, .L80009F88
/* AB08 80009F08 00000000 */   nop
/* AB0C 80009F0C 8E220028 */  lw         $v0, 0x28($s1)
/* AB10 80009F10 84440090 */  lh         $a0, 0x90($v0)
/* AB14 80009F14 8C420094 */  lw         $v0, 0x94($v0)
/* AB18 80009F18 0040F809 */  jalr       $v0
/* AB1C 80009F1C 02242021 */   addu      $a0, $s1, $a0
/* AB20 80009F20 00409021 */  addu       $s2, $v0, $zero
/* AB24 80009F24 0C006DFE */  jal        strlen
/* AB28 80009F28 02402021 */   addu      $a0, $s2, $zero
/* AB2C 80009F2C 02028021 */  addu       $s0, $s0, $v0
/* AB30 80009F30 2A020040 */  slti       $v0, $s0, 0x40
/* AB34 80009F34 14400003 */  bnez       $v0, .L80009F44
/* AB38 80009F38 262201A8 */   addiu     $v0, $s1, 0x1A8
/* AB3C 80009F3C 0C00943C */  jal        func_800250F0
/* AB40 80009F40 26040001 */   addiu     $a0, $s0, 0x1
.L80009F44:
/* AB44 80009F44 AE2201A4 */  sw         $v0, 0x1A4($s1)
/* AB48 80009F48 8E2201A4 */  lw         $v0, 0x1A4($s1)
/* AB4C 80009F4C 14400006 */  bnez       $v0, .L80009F68
/* AB50 80009F50 3C048000 */   lui       $a0, %hi(D_80000ADC)
/* AB54 80009F54 24840ADC */  addiu      $a0, $a0, %lo(D_80000ADC)
/* AB58 80009F58 00002821 */  addu       $a1, $zero, $zero
/* AB5C 80009F5C 00A03021 */  addu       $a2, $a1, $zero
/* AB60 80009F60 0C011ACF */  jal        func_80046B3C
/* AB64 80009F64 00A03821 */   addu      $a3, $a1, $zero
.L80009F68:
/* AB68 80009F68 8E2401A4 */  lw         $a0, 0x1A4($s1)
/* AB6C 80009F6C 0C0006FA */  jal        func_80001BE8
/* AB70 80009F70 02802821 */   addu      $a1, $s4, $zero
/* AB74 80009F74 8E2401A4 */  lw         $a0, 0x1A4($s1)
/* AB78 80009F78 0C0006C8 */  jal        func_80001B20
/* AB7C 80009F7C 02402821 */   addu      $a1, $s2, $zero
/* AB80 80009F80 08002815 */  j          .L8000A054
/* AB84 80009F84 02202021 */   addu      $a0, $s1, $zero
.L80009F88:
/* AB88 80009F88 922201EC */  lbu        $v0, 0x1EC($s1)
/* AB8C 80009F8C 1040001F */  beqz       $v0, .L8000A00C
/* AB90 80009F90 2A020040 */   slti      $v0, $s0, 0x40
/* AB94 80009F94 8E220028 */  lw         $v0, 0x28($s1)
/* AB98 80009F98 84440090 */  lh         $a0, 0x90($v0)
/* AB9C 80009F9C 8C420094 */  lw         $v0, 0x94($v0)
/* ABA0 80009FA0 0040F809 */  jalr       $v0
/* ABA4 80009FA4 02242021 */   addu      $a0, $s1, $a0
/* ABA8 80009FA8 00409021 */  addu       $s2, $v0, $zero
/* ABAC 80009FAC 0C006DFE */  jal        strlen
/* ABB0 80009FB0 02402021 */   addu      $a0, $s2, $zero
/* ABB4 80009FB4 02028021 */  addu       $s0, $s0, $v0
/* ABB8 80009FB8 2A020040 */  slti       $v0, $s0, 0x40
/* ABBC 80009FBC 14400003 */  bnez       $v0, .L80009FCC
/* ABC0 80009FC0 262201A8 */   addiu     $v0, $s1, 0x1A8
/* ABC4 80009FC4 0C00943C */  jal        func_800250F0
/* ABC8 80009FC8 26040001 */   addiu     $a0, $s0, 0x1
.L80009FCC:
/* ABCC 80009FCC AE2201A4 */  sw         $v0, 0x1A4($s1)
/* ABD0 80009FD0 8E2201A4 */  lw         $v0, 0x1A4($s1)
/* ABD4 80009FD4 14400006 */  bnez       $v0, .L80009FF0
/* ABD8 80009FD8 00002821 */   addu      $a1, $zero, $zero
/* ABDC 80009FDC 3C048000 */  lui        $a0, %hi(D_80000ADC)
/* ABE0 80009FE0 24840ADC */  addiu      $a0, $a0, %lo(D_80000ADC)
/* ABE4 80009FE4 00A03021 */  addu       $a2, $a1, $zero
/* ABE8 80009FE8 0C011ACF */  jal        func_80046B3C
/* ABEC 80009FEC 00A03821 */   addu      $a3, $a1, $zero
.L80009FF0:
/* ABF0 80009FF0 8E2401A4 */  lw         $a0, 0x1A4($s1)
/* ABF4 80009FF4 0C0006FA */  jal        func_80001BE8
/* ABF8 80009FF8 02802821 */   addu      $a1, $s4, $zero
/* ABFC 80009FFC 8E2401A4 */  lw         $a0, 0x1A4($s1)
/* AC00 8000A000 02402821 */  addu       $a1, $s2, $zero
/* AC04 8000A004 08002812 */  j          .L8000A048
/* AC08 8000A008 00932021 */   addu      $a0, $a0, $s3
.L8000A00C:
/* AC0C 8000A00C 14400003 */  bnez       $v0, .L8000A01C
/* AC10 8000A010 262201A8 */   addiu     $v0, $s1, 0x1A8
/* AC14 8000A014 0C00943C */  jal        func_800250F0
/* AC18 8000A018 26040001 */   addiu     $a0, $s0, 0x1
.L8000A01C:
/* AC1C 8000A01C AE2201A4 */  sw         $v0, 0x1A4($s1)
/* AC20 8000A020 8E2201A4 */  lw         $v0, 0x1A4($s1)
/* AC24 8000A024 14400006 */  bnez       $v0, .L8000A040
/* AC28 8000A028 3C048000 */   lui       $a0, %hi(D_80000ADC)
/* AC2C 8000A02C 24840ADC */  addiu      $a0, $a0, %lo(D_80000ADC)
/* AC30 8000A030 00002821 */  addu       $a1, $zero, $zero
/* AC34 8000A034 00A03021 */  addu       $a2, $a1, $zero
/* AC38 8000A038 0C011ACF */  jal        func_80046B3C
/* AC3C 8000A03C 00A03821 */   addu      $a3, $a1, $zero
.L8000A040:
/* AC40 8000A040 8E2401A4 */  lw         $a0, 0x1A4($s1)
/* AC44 8000A044 02802821 */  addu       $a1, $s4, $zero
.L8000A048:
/* AC48 8000A048 0C0006FA */  jal        func_80001BE8
/* AC4C 8000A04C 00000000 */   nop
/* AC50 8000A050 02202021 */  addu       $a0, $s1, $zero
.L8000A054:
/* AC54 8000A054 8E2501A4 */  lw         $a1, 0x1A4($s1)
/* AC58 8000A058 24060002 */  addiu      $a2, $zero, 0x2
/* AC5C 8000A05C 0C001989 */  jal        func_80006624
/* AC60 8000A060 24071000 */   addiu     $a3, $zero, 0x1000
/* AC64 8000A064 10400003 */  beqz       $v0, .L8000A074
/* AC68 8000A068 02202021 */   addu      $a0, $s1, $zero
/* AC6C 8000A06C 0C002579 */  jal        func_800095E4
/* AC70 8000A070 00402821 */   addu      $a1, $v0, $zero
.L8000A074:
/* AC74 8000A074 8E2501A4 */  lw         $a1, 0x1A4($s1)
/* AC78 8000A078 02202021 */  addu       $a0, $s1, $zero
/* AC7C 8000A07C AC8001E8 */  sw         $zero, 0x1E8($a0)
/* AC80 8000A080 AC800650 */  sw         $zero, 0x650($a0)
/* AC84 8000A084 AC800034 */  sw         $zero, 0x34($a0)
/* AC88 8000A088 0C0025A7 */  jal        func_8000969C
/* AC8C 8000A08C AC800030 */   sw        $zero, 0x30($a0)
/* AC90 8000A090 8FBF0024 */  lw         $ra, 0x24($sp)
/* AC94 8000A094 8FB40020 */  lw         $s4, 0x20($sp)
/* AC98 8000A098 8FB3001C */  lw         $s3, 0x1C($sp)
/* AC9C 8000A09C 8FB20018 */  lw         $s2, 0x18($sp)
/* ACA0 8000A0A0 8FB10014 */  lw         $s1, 0x14($sp)
/* ACA4 8000A0A4 8FB00010 */  lw         $s0, 0x10($sp)
/* ACA8 8000A0A8 03E00008 */  jr         $ra
/* ACAC 8000A0AC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000A0B0
/* ACB0 8000A0B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* ACB4 8000A0B4 AFB00010 */  sw         $s0, 0x10($sp)
/* ACB8 8000A0B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* ACBC 8000A0BC 0C00254D */  jal        func_80009534
/* ACC0 8000A0C0 00808021 */   addu      $s0, $a0, $zero
/* ACC4 8000A0C4 02002021 */  addu       $a0, $s0, $zero
/* ACC8 8000A0C8 0C00279B */  jal        func_80009E6C
/* ACCC 8000A0CC 00408021 */   addu      $s0, $v0, $zero
/* ACD0 8000A0D0 02001021 */  addu       $v0, $s0, $zero
/* ACD4 8000A0D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* ACD8 8000A0D8 8FB00010 */  lw         $s0, 0x10($sp)
/* ACDC 8000A0DC 03E00008 */  jr         $ra
/* ACE0 8000A0E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000A0E4
/* ACE4 8000A0E4 908201EC */  lbu        $v0, 0x1EC($a0)
/* ACE8 8000A0E8 14400003 */  bnez       $v0, .L8000A0F8
/* ACEC 8000A0EC 3C028000 */   lui       $v0, %hi(D_80000AE0)
/* ACF0 8000A0F0 03E00008 */  jr         $ra
/* ACF4 8000A0F4 24420AE0 */   addiu     $v0, $v0, %lo(D_80000AE0)
.L8000A0F8:
/* ACF8 8000A0F8 03E00008 */  jr         $ra
/* ACFC 8000A0FC 248201EC */   addiu     $v0, $a0, 0x1EC

glabel func_8000A100
/* AD00 8000A100 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AD04 8000A104 AFB00020 */  sw         $s0, 0x20($sp)
/* AD08 8000A108 00808021 */  addu       $s0, $a0, $zero
/* AD0C 8000A10C AFBF0028 */  sw         $ra, 0x28($sp)
/* AD10 8000A110 AFB10024 */  sw         $s1, 0x24($sp)
/* AD14 8000A114 8E020030 */  lw         $v0, 0x30($s0)
/* AD18 8000A118 10400004 */  beqz       $v0, .L8000A12C
/* AD1C 8000A11C 00000000 */   nop
/* AD20 8000A120 8E020034 */  lw         $v0, 0x34($s0)
/* AD24 8000A124 08002980 */  j          .L8000A600
/* AD28 8000A128 AE000030 */   sw        $zero, 0x30($s0)
.L8000A12C:
/* AD2C 8000A12C 8E0201F4 */  lw         $v0, 0x1F4($s0)
/* AD30 8000A130 10400005 */  beqz       $v0, .L8000A148
/* AD34 8000A134 02002021 */   addu      $a0, $s0, $zero
/* AD38 8000A138 0C0025C8 */  jal        func_80009720
/* AD3C 8000A13C 02002021 */   addu      $a0, $s0, $zero
/* AD40 8000A140 08002857 */  j          .L8000A15C
/* AD44 8000A144 00408821 */   addu      $s1, $v0, $zero
.L8000A148:
/* AD48 8000A148 0C0029B9 */  jal        func_8000A6E4
/* AD4C 8000A14C 24050001 */   addiu     $a1, $zero, 0x1
/* AD50 8000A150 1040012B */  beqz       $v0, .L8000A600
/* AD54 8000A154 00001021 */   addu      $v0, $zero, $zero
/* AD58 8000A158 921100A4 */  lbu        $s1, 0xA4($s0)
.L8000A15C:
/* AD5C 8000A15C 2623FFFE */  addiu      $v1, $s1, -0x2
/* AD60 8000A160 2C620015 */  sltiu      $v0, $v1, 0x15
/* AD64 8000A164 10400111 */  beqz       $v0, L8000A5AC
/* AD68 8000A168 3C028000 */   lui       $v0, %hi(jtbl_80000AE8)
/* AD6C 8000A16C 24420AE8 */  addiu      $v0, $v0, %lo(jtbl_80000AE8)
/* AD70 8000A170 00031880 */  sll        $v1, $v1, 2
/* AD74 8000A174 00621821 */  addu       $v1, $v1, $v0
/* AD78 8000A178 8C620000 */  lw         $v0, 0x0($v1)
/* AD7C 8000A17C 00400008 */  jr         $v0
/* AD80 8000A180 00000000 */   nop
glabel L8000A184
/* AD84 8000A184 27A20018 */  addiu      $v0, $sp, 0x18
/* AD88 8000A188 8E030028 */  lw         $v1, 0x28($s0)
/* AD8C 8000A18C 260600A4 */  addiu      $a2, $s0, 0xA4
/* AD90 8000A190 84640050 */  lh         $a0, 0x50($v1)
/* AD94 8000A194 2407003F */  addiu      $a3, $zero, 0x3F
/* AD98 8000A198 AFA20010 */  sw         $v0, 0x10($sp)
/* AD9C 8000A19C 8E0501E8 */  lw         $a1, 0x1E8($s0)
/* ADA0 8000A1A0 8C620054 */  lw         $v0, 0x54($v1)
/* ADA4 8000A1A4 0040F809 */  jalr       $v0
/* ADA8 8000A1A8 02042021 */   addu      $a0, $s0, $a0
/* ADAC 8000A1AC 00402821 */  addu       $a1, $v0, $zero
/* ADB0 8000A1B0 10A0000B */  beqz       $a1, .L8000A1E0
/* ADB4 8000A1B4 24020010 */   addiu     $v0, $zero, 0x10
/* ADB8 8000A1B8 14A20007 */  bne        $a1, $v0, .L8000A1D8
/* ADBC 8000A1BC 00000000 */   nop
/* ADC0 8000A1C0 8FA20018 */  lw         $v0, 0x18($sp)
/* ADC4 8000A1C4 14400007 */  bnez       $v0, .L8000A1E4
/* ADC8 8000A1C8 00000000 */   nop
/* ADCC 8000A1CC AE000034 */  sw         $zero, 0x34($s0)
.L8000A1D0:
/* ADD0 8000A1D0 08002980 */  j          .L8000A600
/* ADD4 8000A1D4 00001021 */   addu      $v0, $zero, $zero
.L8000A1D8:
/* ADD8 8000A1D8 0C002579 */  jal        func_800095E4
/* ADDC 8000A1DC 02002021 */   addu      $a0, $s0, $zero
.L8000A1E0:
/* ADE0 8000A1E0 8FA20018 */  lw         $v0, 0x18($sp)
.L8000A1E4:
/* ADE4 8000A1E4 1040000B */  beqz       $v0, .L8000A214
/* ADE8 8000A1E8 00002021 */   addu      $a0, $zero, $zero
/* ADEC 8000A1EC 02041821 */  addu       $v1, $s0, $a0
.L8000A1F0:
/* ADF0 8000A1F0 906200A4 */  lbu        $v0, 0xA4($v1)
/* ADF4 8000A1F4 50400008 */  beql       $v0, $zero, .L8000A218
/* ADF8 8000A1F8 02041021 */   addu      $v0, $s0, $a0
/* ADFC 8000A1FC A0620044 */  sb         $v0, 0x44($v1)
/* AE00 8000A200 8FA20018 */  lw         $v0, 0x18($sp)
/* AE04 8000A204 24840001 */  addiu      $a0, $a0, 0x1
/* AE08 8000A208 0082102B */  sltu       $v0, $a0, $v0
/* AE0C 8000A20C 1440FFF8 */  bnez       $v0, .L8000A1F0
/* AE10 8000A210 02041821 */   addu      $v1, $s0, $a0
.L8000A214:
/* AE14 8000A214 02041021 */  addu       $v0, $s0, $a0
.L8000A218:
/* AE18 8000A218 A0400044 */  sb         $zero, 0x44($v0)
/* AE1C 8000A21C 8E0301E8 */  lw         $v1, 0x1E8($s0)
/* AE20 8000A220 02201021 */  addu       $v0, $s1, $zero
/* AE24 8000A224 AE020034 */  sw         $v0, 0x34($s0)
/* AE28 8000A228 24630001 */  addiu      $v1, $v1, 0x1
/* AE2C 8000A22C 00641821 */  addu       $v1, $v1, $a0
/* AE30 8000A230 08002980 */  j          .L8000A600
/* AE34 8000A234 AE0301E8 */   sw        $v1, 0x1E8($s0)
glabel L8000A238
/* AE38 8000A238 02002021 */  addu       $a0, $s0, $zero
/* AE3C 8000A23C 0C0029B9 */  jal        func_8000A6E4
/* AE40 8000A240 24050004 */   addiu     $a1, $zero, 0x4
/* AE44 8000A244 104000EE */  beqz       $v0, .L8000A600
/* AE48 8000A248 00001021 */   addu      $v0, $zero, $zero
/* AE4C 8000A24C 920300A5 */  lbu        $v1, 0xA5($s0)
/* AE50 8000A250 920200A4 */  lbu        $v0, 0xA4($s0)
/* AE54 8000A254 920400A6 */  lbu        $a0, 0xA6($s0)
/* AE58 8000A258 00031A00 */  sll        $v1, $v1, 8
/* AE5C 8000A25C 00431021 */  addu       $v0, $v0, $v1
/* AE60 8000A260 00042400 */  sll        $a0, $a0, 16
/* AE64 8000A264 920300A7 */  lbu        $v1, 0xA7($s0)
/* AE68 8000A268 00441021 */  addu       $v0, $v0, $a0
/* AE6C 8000A26C 00031E00 */  sll        $v1, $v1, 24
/* AE70 8000A270 00431021 */  addu       $v0, $v0, $v1
/* AE74 8000A274 AFA2001C */  sw         $v0, 0x1C($sp)
/* AE78 8000A278 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* AE7C 8000A27C 02201021 */  addu       $v0, $s1, $zero
/* AE80 8000A280 AE110034 */  sw         $s1, 0x34($s0)
/* AE84 8000A284 08002980 */  j          .L8000A600
/* AE88 8000A288 E6000040 */   swc1      $f0, 0x40($s0)
glabel L8000A28C
/* AE8C 8000A28C 02002021 */  addu       $a0, $s0, $zero
/* AE90 8000A290 0C0029B9 */  jal        func_8000A6E4
/* AE94 8000A294 24050004 */   addiu     $a1, $zero, 0x4
/* AE98 8000A298 1040FFCD */  beqz       $v0, .L8000A1D0
/* AE9C 8000A29C 02201021 */   addu      $v0, $s1, $zero
/* AEA0 8000A2A0 920400A5 */  lbu        $a0, 0xA5($s0)
/* AEA4 8000A2A4 920300A4 */  lbu        $v1, 0xA4($s0)
/* AEA8 8000A2A8 920500A6 */  lbu        $a1, 0xA6($s0)
/* AEAC 8000A2AC AE020034 */  sw         $v0, 0x34($s0)
/* AEB0 8000A2B0 00042200 */  sll        $a0, $a0, 8
/* AEB4 8000A2B4 00641821 */  addu       $v1, $v1, $a0
/* AEB8 8000A2B8 00052C00 */  sll        $a1, $a1, 16
/* AEBC 8000A2BC 920400A7 */  lbu        $a0, 0xA7($s0)
/* AEC0 8000A2C0 00651821 */  addu       $v1, $v1, $a1
/* AEC4 8000A2C4 00042600 */  sll        $a0, $a0, 24
/* AEC8 8000A2C8 00641821 */  addu       $v1, $v1, $a0
/* AECC 8000A2CC AFA3001C */  sw         $v1, 0x1C($sp)
/* AED0 8000A2D0 08002980 */  j          .L8000A600
/* AED4 8000A2D4 AE030038 */   sw        $v1, 0x38($s0)
glabel L8000A2D8
/* AED8 8000A2D8 02002021 */  addu       $a0, $s0, $zero
/* AEDC 8000A2DC 0C0029B9 */  jal        func_8000A6E4
/* AEE0 8000A2E0 24050001 */   addiu     $a1, $zero, 0x1
/* AEE4 8000A2E4 1040FFBA */  beqz       $v0, .L8000A1D0
/* AEE8 8000A2E8 24020004 */   addiu     $v0, $zero, 0x4
/* AEEC 8000A2EC 920400A4 */  lbu        $a0, 0xA4($s0)
/* AEF0 8000A2F0 00401821 */  addu       $v1, $v0, $zero
/* AEF4 8000A2F4 AE030034 */  sw         $v1, 0x34($s0)
/* AEF8 8000A2F8 08002980 */  j          .L8000A600
/* AEFC 8000A2FC AE040038 */   sw        $a0, 0x38($s0)
glabel L8000A300
/* AF00 8000A300 02002021 */  addu       $a0, $s0, $zero
/* AF04 8000A304 0C0029B9 */  jal        func_8000A6E4
/* AF08 8000A308 24050002 */   addiu     $a1, $zero, 0x2
/* AF0C 8000A30C 1040FFB0 */  beqz       $v0, .L8000A1D0
/* AF10 8000A310 24020004 */   addiu     $v0, $zero, 0x4
/* AF14 8000A314 920400A5 */  lbu        $a0, 0xA5($s0)
/* AF18 8000A318 00401821 */  addu       $v1, $v0, $zero
/* AF1C 8000A31C AE030034 */  sw         $v1, 0x34($s0)
/* AF20 8000A320 920300A4 */  lbu        $v1, 0xA4($s0)
/* AF24 8000A324 00042200 */  sll        $a0, $a0, 8
/* AF28 8000A328 00641821 */  addu       $v1, $v1, $a0
/* AF2C 8000A32C 00031C00 */  sll        $v1, $v1, 16
/* AF30 8000A330 00031C03 */  sra        $v1, $v1, 16
/* AF34 8000A334 08002980 */  j          .L8000A600
/* AF38 8000A338 AE030038 */   sw        $v1, 0x38($s0)
glabel L8000A33C
/* AF3C 8000A33C 02002021 */  addu       $a0, $s0, $zero
/* AF40 8000A340 0C0029B9 */  jal        func_8000A6E4
/* AF44 8000A344 24050002 */   addiu     $a1, $zero, 0x2
/* AF48 8000A348 1040FFA1 */  beqz       $v0, .L8000A1D0
/* AF4C 8000A34C 24020004 */   addiu     $v0, $zero, 0x4
/* AF50 8000A350 00401821 */  addu       $v1, $v0, $zero
/* AF54 8000A354 AE030034 */  sw         $v1, 0x34($s0)
/* AF58 8000A358 920300A5 */  lbu        $v1, 0xA5($s0)
/* AF5C 8000A35C 920400A4 */  lbu        $a0, 0xA4($s0)
/* AF60 8000A360 00031A00 */  sll        $v1, $v1, 8
/* AF64 8000A364 00832025 */  or         $a0, $a0, $v1
/* AF68 8000A368 08002980 */  j          .L8000A600
/* AF6C 8000A36C AE040038 */   sw        $a0, 0x38($s0)
glabel L8000A370
/* AF70 8000A370 02002021 */  addu       $a0, $s0, $zero
/* AF74 8000A374 0C0029B9 */  jal        func_8000A6E4
/* AF78 8000A378 24050002 */   addiu     $a1, $zero, 0x2
/* AF7C 8000A37C 104000A0 */  beqz       $v0, .L8000A600
/* AF80 8000A380 00001021 */   addu      $v0, $zero, $zero
/* AF84 8000A384 920300A5 */  lbu        $v1, 0xA5($s0)
/* AF88 8000A388 920200A4 */  lbu        $v0, 0xA4($s0)
/* AF8C 8000A38C 3C018000 */  lui        $at, %hi(D_80000B3C)
/* AF90 8000A390 C4220B3C */  lwc1       $f2, %lo(D_80000B3C)($at)
/* AF94 8000A394 080028F1 */  j          .L8000A3C4
/* AF98 8000A398 00031A00 */   sll       $v1, $v1, 8
glabel L8000A39C
/* AF9C 8000A39C 02002021 */  addu       $a0, $s0, $zero
/* AFA0 8000A3A0 0C0029B9 */  jal        func_8000A6E4
/* AFA4 8000A3A4 24050002 */   addiu     $a1, $zero, 0x2
/* AFA8 8000A3A8 10400095 */  beqz       $v0, .L8000A600
/* AFAC 8000A3AC 00001021 */   addu      $v0, $zero, $zero
/* AFB0 8000A3B0 920300A5 */  lbu        $v1, 0xA5($s0)
/* AFB4 8000A3B4 920200A4 */  lbu        $v0, 0xA4($s0)
/* AFB8 8000A3B8 3C018000 */  lui        $at, %hi(D_80000B40)
/* AFBC 8000A3BC C4220B40 */  lwc1       $f2, %lo(D_80000B40)($at)
/* AFC0 8000A3C0 00031A00 */  sll        $v1, $v1, 8
.L8000A3C4:
/* AFC4 8000A3C4 00431021 */  addu       $v0, $v0, $v1
/* AFC8 8000A3C8 00021400 */  sll        $v0, $v0, 16
/* AFCC 8000A3CC 00021403 */  sra        $v0, $v0, 16
/* AFD0 8000A3D0 44820000 */  mtc1       $v0, $f0
/* AFD4 8000A3D4 46800020 */  cvt.s.w    $f0, $f0
/* AFD8 8000A3D8 46020002 */  mul.s      $f0, $f0, $f2
/* AFDC 8000A3DC 24020003 */  addiu      $v0, $zero, 0x3
/* AFE0 8000A3E0 00401821 */  addu       $v1, $v0, $zero
/* AFE4 8000A3E4 AE030034 */  sw         $v1, 0x34($s0)
/* AFE8 8000A3E8 08002980 */  j          .L8000A600
/* AFEC 8000A3EC E6000040 */   swc1      $f0, 0x40($s0)
glabel L8000A3F0
/* AFF0 8000A3F0 02002021 */  addu       $a0, $s0, $zero
/* AFF4 8000A3F4 0C0029B9 */  jal        func_8000A6E4
/* AFF8 8000A3F8 24050002 */   addiu     $a1, $zero, 0x2
/* AFFC 8000A3FC 1040FF74 */  beqz       $v0, .L8000A1D0
/* B000 8000A400 24020003 */   addiu     $v0, $zero, 0x3
/* B004 8000A404 920400A5 */  lbu        $a0, 0xA5($s0)
/* B008 8000A408 00401821 */  addu       $v1, $v0, $zero
/* B00C 8000A40C AE030034 */  sw         $v1, 0x34($s0)
/* B010 8000A410 920300A4 */  lbu        $v1, 0xA4($s0)
/* B014 8000A414 00042200 */  sll        $a0, $a0, 8
/* B018 8000A418 00641821 */  addu       $v1, $v1, $a0
/* B01C 8000A41C 00031C00 */  sll        $v1, $v1, 16
/* B020 8000A420 00031C03 */  sra        $v1, $v1, 16
/* B024 8000A424 44830000 */  mtc1       $v1, $f0
/* B028 8000A428 46800020 */  cvt.s.w    $f0, $f0
/* B02C 8000A42C 08002980 */  j          .L8000A600
/* B030 8000A430 E6000040 */   swc1      $f0, 0x40($s0)
glabel L8000A434
/* B034 8000A434 02002021 */  addu       $a0, $s0, $zero
/* B038 8000A438 0C0029B9 */  jal        func_8000A6E4
/* B03C 8000A43C 24050001 */   addiu     $a1, $zero, 0x1
/* B040 8000A440 1040FF63 */  beqz       $v0, .L8000A1D0
/* B044 8000A444 24020003 */   addiu     $v0, $zero, 0x3
/* B048 8000A448 920400A4 */  lbu        $a0, 0xA4($s0)
/* B04C 8000A44C 3C018000 */  lui        $at, %hi(D_80000B44)
/* B050 8000A450 C4200B44 */  lwc1       $f0, %lo(D_80000B44)($at)
/* B054 8000A454 44841000 */  mtc1       $a0, $f2
/* B058 8000A458 468010A0 */  cvt.s.w    $f2, $f2
/* B05C 8000A45C 46001082 */  mul.s      $f2, $f2, $f0
/* B060 8000A460 00401821 */  addu       $v1, $v0, $zero
/* B064 8000A464 AE030034 */  sw         $v1, 0x34($s0)
/* B068 8000A468 AFA4001C */  sw         $a0, 0x1C($sp)
/* B06C 8000A46C 08002980 */  j          .L8000A600
/* B070 8000A470 E6020040 */   swc1      $f2, 0x40($s0)
glabel L8000A474
/* B074 8000A474 02002021 */  addu       $a0, $s0, $zero
/* B078 8000A478 0C0029B9 */  jal        func_8000A6E4
/* B07C 8000A47C 24050002 */   addiu     $a1, $zero, 0x2
/* B080 8000A480 1040005F */  beqz       $v0, .L8000A600
/* B084 8000A484 00001021 */   addu      $v0, $zero, $zero
/* B088 8000A488 920200A5 */  lbu        $v0, 0xA5($s0)
/* B08C 8000A48C 920300A4 */  lbu        $v1, 0xA4($s0)
/* B090 8000A490 00021200 */  sll        $v0, $v0, 8
/* B094 8000A494 00628821 */  addu       $s1, $v1, $v0
/* B098 8000A498 02201021 */  addu       $v0, $s1, $zero
/* B09C 8000A49C 08002980 */  j          .L8000A600
/* B0A0 8000A4A0 AE020034 */   sw        $v0, 0x34($s0)
glabel L8000A4A4
/* B0A4 8000A4A4 02002021 */  addu       $a0, $s0, $zero
/* B0A8 8000A4A8 0C0029B9 */  jal        func_8000A6E4
/* B0AC 8000A4AC 24050002 */   addiu     $a1, $zero, 0x2
/* B0B0 8000A4B0 1040FF47 */  beqz       $v0, .L8000A1D0
/* B0B4 8000A4B4 02002021 */   addu      $a0, $s0, $zero
/* B0B8 8000A4B8 24050001 */  addiu      $a1, $zero, 0x1
/* B0BC 8000A4BC 920200A5 */  lbu        $v0, 0xA5($s0)
/* B0C0 8000A4C0 920300A4 */  lbu        $v1, 0xA4($s0)
/* B0C4 8000A4C4 00021200 */  sll        $v0, $v0, 8
/* B0C8 8000A4C8 00621821 */  addu       $v1, $v1, $v0
/* B0CC 8000A4CC 0C0029B9 */  jal        func_8000A6E4
/* B0D0 8000A4D0 AE0301F4 */   sw        $v1, 0x1F4($s0)
/* B0D4 8000A4D4 1040FF3E */  beqz       $v0, .L8000A1D0
/* B0D8 8000A4D8 24020013 */   addiu     $v0, $zero, 0x13
/* B0DC 8000A4DC 920300A4 */  lbu        $v1, 0xA4($s0)
/* B0E0 8000A4E0 1462000B */  bne        $v1, $v0, .L8000A510
/* B0E4 8000A4E4 AE0301F8 */   sw        $v1, 0x1F8($s0)
/* B0E8 8000A4E8 02002021 */  addu       $a0, $s0, $zero
/* B0EC 8000A4EC 0C0029B9 */  jal        func_8000A6E4
/* B0F0 8000A4F0 24050002 */   addiu     $a1, $zero, 0x2
/* B0F4 8000A4F4 10400042 */  beqz       $v0, .L8000A600
/* B0F8 8000A4F8 00001021 */   addu      $v0, $zero, $zero
/* B0FC 8000A4FC 920200A5 */  lbu        $v0, 0xA5($s0)
/* B100 8000A500 920300A4 */  lbu        $v1, 0xA4($s0)
/* B104 8000A504 00021200 */  sll        $v0, $v0, 8
/* B108 8000A508 00621821 */  addu       $v1, $v1, $v0
/* B10C 8000A50C AE0301F8 */  sw         $v1, 0x1F8($s0)
.L8000A510:
/* B110 8000A510 8E0401F8 */  lw         $a0, 0x1F8($s0)
/* B114 8000A514 2483FFE9 */  addiu      $v1, $a0, -0x17
/* B118 8000A518 2C620010 */  sltiu      $v0, $v1, 0x10
/* B11C 8000A51C 10400010 */  beqz       $v0, .L8000A560
/* B120 8000A520 AE000200 */   sw        $zero, 0x200($s0)
/* B124 8000A524 00031180 */  sll        $v0, $v1, 6
/* B128 8000A528 2442020C */  addiu      $v0, $v0, 0x20C
/* B12C 8000A52C 02021021 */  addu       $v0, $s0, $v0
/* B130 8000A530 14400007 */  bnez       $v0, .L8000A550
/* B134 8000A534 AE030204 */   sw        $v1, 0x204($s0)
/* B138 8000A538 8E020028 */  lw         $v0, 0x28($s0)
/* B13C 8000A53C 00002821 */  addu       $a1, $zero, $zero
/* B140 8000A540 84440098 */  lh         $a0, 0x98($v0)
/* B144 8000A544 8C42009C */  lw         $v0, 0x9C($v0)
/* B148 8000A548 0040F809 */  jalr       $v0
/* B14C 8000A54C 02042021 */   addu      $a0, $s0, $a0
.L8000A550:
/* B150 8000A550 24020001 */  addiu      $v0, $zero, 0x1
/* B154 8000A554 AE000208 */  sw         $zero, 0x208($s0)
/* B158 8000A558 0800284B */  j          .L8000A12C
/* B15C 8000A55C AE020200 */   sw        $v0, 0x200($s0)
.L8000A560:
/* B160 8000A560 24020015 */  addiu      $v0, $zero, 0x15
/* B164 8000A564 1482FEF1 */  bne        $a0, $v0, .L8000A12C
/* B168 8000A568 24020001 */   addiu     $v0, $zero, 0x1
/* B16C 8000A56C AE0201FC */  sw         $v0, 0x1FC($s0)
/* B170 8000A570 0800284B */  j          .L8000A12C
/* B174 8000A574 AE000208 */   sw        $zero, 0x208($s0)
glabel L8000A578
/* B178 8000A578 24020001 */  addiu      $v0, $zero, 0x1
/* B17C 8000A57C AE0201F4 */  sw         $v0, 0x1F4($s0)
/* B180 8000A580 AE0201FC */  sw         $v0, 0x1FC($s0)
/* B184 8000A584 AE000208 */  sw         $zero, 0x208($s0)
/* B188 8000A588 0800284B */  j          .L8000A12C
/* B18C 8000A58C AE000200 */   sw        $zero, 0x200($s0)
glabel L8000A590
/* B190 8000A590 0C002985 */  jal        func_8000A614
/* B194 8000A594 02002021 */   addu      $a0, $s0, $zero
/* B198 8000A598 8E020034 */  lw         $v0, 0x34($s0)
/* B19C 8000A59C 1440FEE3 */  bnez       $v0, .L8000A12C
/* B1A0 8000A5A0 00001021 */   addu      $v0, $zero, $zero
/* B1A4 8000A5A4 08002980 */  j          .L8000A600
/* B1A8 8000A5A8 00000000 */   nop
glabel L8000A5AC
/* B1AC 8000A5AC 2623FFE9 */  addiu      $v1, $s1, -0x17
/* B1B0 8000A5B0 2C620010 */  sltiu      $v0, $v1, 0x10
/* B1B4 8000A5B4 10400010 */  beqz       $v0, .L8000A5F8
/* B1B8 8000A5B8 00031180 */   sll       $v0, $v1, 6
/* B1BC 8000A5BC 2442020C */  addiu      $v0, $v0, 0x20C
/* B1C0 8000A5C0 02021021 */  addu       $v0, $s0, $v0
/* B1C4 8000A5C4 14400007 */  bnez       $v0, .L8000A5E4
/* B1C8 8000A5C8 AE030204 */   sw        $v1, 0x204($s0)
/* B1CC 8000A5CC 8E020028 */  lw         $v0, 0x28($s0)
/* B1D0 8000A5D0 00002821 */  addu       $a1, $zero, $zero
/* B1D4 8000A5D4 84440098 */  lh         $a0, 0x98($v0)
/* B1D8 8000A5D8 8C42009C */  lw         $v0, 0x9C($v0)
/* B1DC 8000A5DC 0040F809 */  jalr       $v0
/* B1E0 8000A5E0 02042021 */   addu      $a0, $s0, $a0
.L8000A5E4:
/* B1E4 8000A5E4 24020001 */  addiu      $v0, $zero, 0x1
/* B1E8 8000A5E8 AE000208 */  sw         $zero, 0x208($s0)
/* B1EC 8000A5EC AE020200 */  sw         $v0, 0x200($s0)
/* B1F0 8000A5F0 0800284B */  j          .L8000A12C
/* B1F4 8000A5F4 AE0201F4 */   sw        $v0, 0x1F4($s0)
.L8000A5F8:
/* B1F8 8000A5F8 AE110034 */  sw         $s1, 0x34($s0)
/* B1FC 8000A5FC 02201021 */  addu       $v0, $s1, $zero
.L8000A600:
/* B200 8000A600 8FBF0028 */  lw         $ra, 0x28($sp)
/* B204 8000A604 8FB10024 */  lw         $s1, 0x24($sp)
/* B208 8000A608 8FB00020 */  lw         $s0, 0x20($sp)
/* B20C 8000A60C 03E00008 */  jr         $ra
/* B210 8000A610 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000A614
/* B214 8000A614 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B218 8000A618 AFB00010 */  sw         $s0, 0x10($sp)
/* B21C 8000A61C 00808021 */  addu       $s0, $a0, $zero
/* B220 8000A620 24050002 */  addiu      $a1, $zero, 0x2
/* B224 8000A624 AFBF0024 */  sw         $ra, 0x24($sp)
/* B228 8000A628 AFB40020 */  sw         $s4, 0x20($sp)
/* B22C 8000A62C AFB3001C */  sw         $s3, 0x1C($sp)
/* B230 8000A630 AFB20018 */  sw         $s2, 0x18($sp)
/* B234 8000A634 0C0029B9 */  jal        func_8000A6E4
/* B238 8000A638 AFB10014 */   sw        $s1, 0x14($sp)
/* B23C 8000A63C 10400021 */  beqz       $v0, .L8000A6C4
/* B240 8000A640 00008821 */   addu      $s1, $zero, $zero
/* B244 8000A644 920200A4 */  lbu        $v0, 0xA4($s0)
/* B248 8000A648 921300A5 */  lbu        $s3, 0xA5($s0)
/* B24C 8000A64C 2443FFE9 */  addiu      $v1, $v0, -0x17
/* B250 8000A650 00031080 */  sll        $v0, $v1, 2
/* B254 8000A654 02021021 */  addu       $v0, $s0, $v0
/* B258 8000A658 1260001A */  beqz       $s3, .L8000A6C4
/* B25C 8000A65C AC53060C */   sw        $s3, 0x60C($v0)
/* B260 8000A660 24140013 */  addiu      $s4, $zero, 0x13
/* B264 8000A664 00039180 */  sll        $s2, $v1, 6
.L8000A668:
/* B268 8000A668 02002021 */  addu       $a0, $s0, $zero
/* B26C 8000A66C 0C0029B9 */  jal        func_8000A6E4
/* B270 8000A670 24050001 */   addiu     $a1, $zero, 0x1
/* B274 8000A674 10400013 */  beqz       $v0, .L8000A6C4
/* B278 8000A678 00000000 */   nop
/* B27C 8000A67C 920300A4 */  lbu        $v1, 0xA4($s0)
/* B280 8000A680 1474000B */  bne        $v1, $s4, .L8000A6B0
/* B284 8000A684 02121021 */   addu      $v0, $s0, $s2
/* B288 8000A688 02002021 */  addu       $a0, $s0, $zero
/* B28C 8000A68C 0C0029B9 */  jal        func_8000A6E4
/* B290 8000A690 24050002 */   addiu     $a1, $zero, 0x2
/* B294 8000A694 1040000B */  beqz       $v0, .L8000A6C4
/* B298 8000A698 00000000 */   nop
/* B29C 8000A69C 920200A5 */  lbu        $v0, 0xA5($s0)
/* B2A0 8000A6A0 920300A4 */  lbu        $v1, 0xA4($s0)
/* B2A4 8000A6A4 00021200 */  sll        $v0, $v0, 8
/* B2A8 8000A6A8 00621821 */  addu       $v1, $v1, $v0
/* B2AC 8000A6AC 02121021 */  addu       $v0, $s0, $s2
.L8000A6B0:
/* B2B0 8000A6B0 AC43020C */  sw         $v1, 0x20C($v0)
/* B2B4 8000A6B4 26310001 */  addiu      $s1, $s1, 0x1
/* B2B8 8000A6B8 0233102B */  sltu       $v0, $s1, $s3
/* B2BC 8000A6BC 1440FFEA */  bnez       $v0, .L8000A668
/* B2C0 8000A6C0 26520004 */   addiu     $s2, $s2, 0x4
.L8000A6C4:
/* B2C4 8000A6C4 8FBF0024 */  lw         $ra, 0x24($sp)
/* B2C8 8000A6C8 8FB40020 */  lw         $s4, 0x20($sp)
/* B2CC 8000A6CC 8FB3001C */  lw         $s3, 0x1C($sp)
/* B2D0 8000A6D0 8FB20018 */  lw         $s2, 0x18($sp)
/* B2D4 8000A6D4 8FB10014 */  lw         $s1, 0x14($sp)
/* B2D8 8000A6D8 8FB00010 */  lw         $s0, 0x10($sp)
/* B2DC 8000A6DC 03E00008 */  jr         $ra
/* B2E0 8000A6E0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000A6E4
/* B2E4 8000A6E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B2E8 8000A6E8 AFB00020 */  sw         $s0, 0x20($sp)
/* B2EC 8000A6EC 00808021 */  addu       $s0, $a0, $zero
/* B2F0 8000A6F0 AFB10024 */  sw         $s1, 0x24($sp)
/* B2F4 8000A6F4 00A08821 */  addu       $s1, $a1, $zero
/* B2F8 8000A6F8 27A20018 */  addiu      $v0, $sp, 0x18
/* B2FC 8000A6FC AFBF0028 */  sw         $ra, 0x28($sp)
/* B300 8000A700 8E030028 */  lw         $v1, 0x28($s0)
/* B304 8000A704 260600A4 */  addiu      $a2, $s0, 0xA4
/* B308 8000A708 84640050 */  lh         $a0, 0x50($v1)
/* B30C 8000A70C 02203821 */  addu       $a3, $s1, $zero
/* B310 8000A710 AFA20010 */  sw         $v0, 0x10($sp)
/* B314 8000A714 8E0501E8 */  lw         $a1, 0x1E8($s0)
/* B318 8000A718 8C620054 */  lw         $v0, 0x54($v1)
/* B31C 8000A71C 0040F809 */  jalr       $v0
/* B320 8000A720 02042021 */   addu      $a0, $s0, $a0
/* B324 8000A724 00402821 */  addu       $a1, $v0, $zero
/* B328 8000A728 10A0000B */  beqz       $a1, .L8000A758
/* B32C 8000A72C 24020010 */   addiu     $v0, $zero, 0x10
/* B330 8000A730 14A20007 */  bne        $a1, $v0, .L8000A750
/* B334 8000A734 00000000 */   nop
/* B338 8000A738 8FA20018 */  lw         $v0, 0x18($sp)
/* B33C 8000A73C 14400007 */  bnez       $v0, .L8000A75C
/* B340 8000A740 00000000 */   nop
/* B344 8000A744 AE000034 */  sw         $zero, 0x34($s0)
/* B348 8000A748 080029E2 */  j          .L8000A788
/* B34C 8000A74C 00001021 */   addu      $v0, $zero, $zero
.L8000A750:
/* B350 8000A750 0C002579 */  jal        func_800095E4
/* B354 8000A754 02002021 */   addu      $a0, $s0, $zero
.L8000A758:
/* B358 8000A758 8FA20018 */  lw         $v0, 0x18($sp)
.L8000A75C:
/* B35C 8000A75C 10510006 */  beq        $v0, $s1, .L8000A778
/* B360 8000A760 00002821 */   addu      $a1, $zero, $zero
/* B364 8000A764 8E020028 */  lw         $v0, 0x28($s0)
/* B368 8000A768 84440098 */  lh         $a0, 0x98($v0)
/* B36C 8000A76C 8C42009C */  lw         $v0, 0x9C($v0)
/* B370 8000A770 0040F809 */  jalr       $v0
/* B374 8000A774 02042021 */   addu      $a0, $s0, $a0
.L8000A778:
/* B378 8000A778 8E0301E8 */  lw         $v1, 0x1E8($s0)
/* B37C 8000A77C 24020001 */  addiu      $v0, $zero, 0x1
/* B380 8000A780 00711821 */  addu       $v1, $v1, $s1
/* B384 8000A784 AE0301E8 */  sw         $v1, 0x1E8($s0)
.L8000A788:
/* B388 8000A788 8FBF0028 */  lw         $ra, 0x28($sp)
/* B38C 8000A78C 8FB10024 */  lw         $s1, 0x24($sp)
/* B390 8000A790 8FB00020 */  lw         $s0, 0x20($sp)
/* B394 8000A794 03E00008 */  jr         $ra
/* B398 8000A798 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000A79C
/* B39C 8000A79C 03E00008 */  jr         $ra
/* B3A0 8000A7A0 24020001 */   addiu     $v0, $zero, 0x1

glabel func_8000A7A4
/* B3A4 8000A7A4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B3A8 8000A7A8 AFB10014 */  sw         $s1, 0x14($sp)
/* B3AC 8000A7AC 00808821 */  addu       $s1, $a0, $zero
/* B3B0 8000A7B0 AFBF0020 */  sw         $ra, 0x20($sp)
/* B3B4 8000A7B4 AFB3001C */  sw         $s3, 0x1C($sp)
/* B3B8 8000A7B8 AFB20018 */  sw         $s2, 0x18($sp)
/* B3BC 8000A7BC AFB00010 */  sw         $s0, 0x10($sp)
/* B3C0 8000A7C0 8E2401A4 */  lw         $a0, 0x1A4($s1)
/* B3C4 8000A7C4 1080001A */  beqz       $a0, .L8000A830
/* B3C8 8000A7C8 00A09821 */   addu      $s3, $a1, $zero
/* B3CC 8000A7CC 0C006DFE */  jal        strlen
/* B3D0 8000A7D0 3C128003 */   lui       $s2, %hi(D_8002FDD0)
/* B3D4 8000A7D4 8E44FDD0 */  lw         $a0, %lo(D_8002FDD0)($s2)
/* B3D8 8000A7D8 0C006DFE */  jal        strlen
/* B3DC 8000A7DC 00408021 */   addu      $s0, $v0, $zero
/* B3E0 8000A7E0 02202021 */  addu       $a0, $s1, $zero
/* B3E4 8000A7E4 02602821 */  addu       $a1, $s3, $zero
/* B3E8 8000A7E8 0C002564 */  jal        func_80009590
/* B3EC 8000A7EC 02028021 */   addu      $s0, $s0, $v0
/* B3F0 8000A7F0 0C006DFE */  jal        strlen
/* B3F4 8000A7F4 00402021 */   addu      $a0, $v0, $zero
/* B3F8 8000A7F8 02028021 */  addu       $s0, $s0, $v0
/* B3FC 8000A7FC 2A1000FF */  slti       $s0, $s0, 0xFF
/* B400 8000A800 12000005 */  beqz       $s0, .L8000A818
/* B404 8000A804 A22000A4 */   sb        $zero, 0xA4($s1)
/* B408 8000A808 8E45FDD0 */  lw         $a1, %lo(D_8002FDD0)($s2)
/* B40C 8000A80C 8E2601A4 */  lw         $a2, 0x1A4($s1)
/* B410 8000A810 0C006E14 */  jal        sprintf
/* B414 8000A814 262400A4 */   addiu     $a0, $s1, 0xA4
.L8000A818:
/* B418 8000A818 02202021 */  addu       $a0, $s1, $zero
/* B41C 8000A81C 0C002564 */  jal        func_80009590
/* B420 8000A820 02602821 */   addu      $a1, $s3, $zero
/* B424 8000A824 262400A4 */  addiu      $a0, $s1, 0xA4
/* B428 8000A828 0C0006C8 */  jal        func_80001B20
/* B42C 8000A82C 00402821 */   addu      $a1, $v0, $zero
.L8000A830:
/* B430 8000A830 3C048000 */  lui        $a0, %hi(D_80000ADC)
/* B434 8000A834 24840ADC */  addiu      $a0, $a0, %lo(D_80000ADC)
/* B438 8000A838 00002821 */  addu       $a1, $zero, $zero
/* B43C 8000A83C 00A03021 */  addu       $a2, $a1, $zero
/* B440 8000A840 0C011ACF */  jal        func_80046B3C
/* B444 8000A844 00A03821 */   addu      $a3, $a1, $zero
/* B448 8000A848 8FBF0020 */  lw         $ra, 0x20($sp)
/* B44C 8000A84C 8FB3001C */  lw         $s3, 0x1C($sp)
/* B450 8000A850 8FB20018 */  lw         $s2, 0x18($sp)
/* B454 8000A854 8FB10014 */  lw         $s1, 0x14($sp)
/* B458 8000A858 8FB00010 */  lw         $s0, 0x10($sp)
/* B45C 8000A85C 03E00008 */  jr         $ra
/* B460 8000A860 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000A864
/* B464 8000A864 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B468 8000A868 AFBF0010 */  sw         $ra, 0x10($sp)
/* B46C 8000A86C 0C002513 */  jal        func_8000944C
/* B470 8000A870 00000000 */   nop
/* B474 8000A874 8FBF0010 */  lw         $ra, 0x10($sp)
/* B478 8000A878 03E00008 */  jr         $ra
/* B47C 8000A87C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000A880
/* B480 8000A880 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B484 8000A884 AFB00010 */  sw         $s0, 0x10($sp)
/* B488 8000A888 00808021 */  addu       $s0, $a0, $zero
/* B48C 8000A88C 3C028000 */  lui        $v0, %hi(D_80000C08)
/* B490 8000A890 24420C08 */  addiu      $v0, $v0, %lo(D_80000C08)
/* B494 8000A894 AFBF0014 */  sw         $ra, 0x14($sp)
/* B498 8000A898 0C002A41 */  jal        func_8000A904
/* B49C 8000A89C AE020000 */   sw        $v0, 0x0($s0)
/* B4A0 8000A8A0 02001021 */  addu       $v0, $s0, $zero
/* B4A4 8000A8A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4A8 8000A8A8 8FB00010 */  lw         $s0, 0x10($sp)
/* B4AC 8000A8AC 03E00008 */  jr         $ra
/* B4B0 8000A8B0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000A8B4
/* B4B4 8000A8B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B4B8 8000A8B8 AFB10014 */  sw         $s1, 0x14($sp)
/* B4BC 8000A8BC 00808821 */  addu       $s1, $a0, $zero
/* B4C0 8000A8C0 AFB00010 */  sw         $s0, 0x10($sp)
/* B4C4 8000A8C4 00A08021 */  addu       $s0, $a1, $zero
/* B4C8 8000A8C8 3C028000 */  lui        $v0, %hi(D_80000C08)
/* B4CC 8000A8CC 24420C08 */  addiu      $v0, $v0, %lo(D_80000C08)
/* B4D0 8000A8D0 AFBF0018 */  sw         $ra, 0x18($sp)
/* B4D4 8000A8D4 0C002A7A */  jal        func_8000A9E8
/* B4D8 8000A8D8 AE220000 */   sw        $v0, 0x0($s1)
/* B4DC 8000A8DC 32100001 */  andi       $s0, $s0, 0x1
/* B4E0 8000A8E0 12000003 */  beqz       $s0, .L8000A8F0
/* B4E4 8000A8E4 00000000 */   nop
/* B4E8 8000A8E8 0C01FB5C */  jal        func_8007ED70
/* B4EC 8000A8EC 02202021 */   addu      $a0, $s1, $zero
.L8000A8F0:
/* B4F0 8000A8F0 8FBF0018 */  lw         $ra, 0x18($sp)
/* B4F4 8000A8F4 8FB10014 */  lw         $s1, 0x14($sp)
/* B4F8 8000A8F8 8FB00010 */  lw         $s0, 0x10($sp)
/* B4FC 8000A8FC 03E00008 */  jr         $ra
/* B500 8000A900 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000A904
/* B504 8000A904 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B508 8000A908 AFB00010 */  sw         $s0, 0x10($sp)
/* B50C 8000A90C AFBF0014 */  sw         $ra, 0x14($sp)
/* B510 8000A910 0C002AFE */  jal        func_8000ABF8
/* B514 8000A914 00808021 */   addu      $s0, $a0, $zero
/* B518 8000A918 A2000004 */  sb         $zero, 0x4($s0)
/* B51C 8000A91C AE000008 */  sw         $zero, 0x8($s0)
/* B520 8000A920 AE000014 */  sw         $zero, 0x14($s0)
/* B524 8000A924 8FBF0014 */  lw         $ra, 0x14($sp)
/* B528 8000A928 8FB00010 */  lw         $s0, 0x10($sp)
/* B52C 8000A92C 03E00008 */  jr         $ra
/* B530 8000A930 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000A934
/* B534 8000A934 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B538 8000A938 AFB00010 */  sw         $s0, 0x10($sp)
/* B53C 8000A93C 00808021 */  addu       $s0, $a0, $zero
/* B540 8000A940 AFBF001C */  sw         $ra, 0x1C($sp)
/* B544 8000A944 AFB20018 */  sw         $s2, 0x18($sp)
/* B548 8000A948 AFB10014 */  sw         $s1, 0x14($sp)
/* B54C 8000A94C 8E020000 */  lw         $v0, 0x0($s0)
/* B550 8000A950 00A09021 */  addu       $s2, $a1, $zero
/* B554 8000A954 84440030 */  lh         $a0, 0x30($v0)
/* B558 8000A958 8C420034 */  lw         $v0, 0x34($v0)
/* B55C 8000A95C 0040F809 */  jalr       $v0
/* B560 8000A960 02042021 */   addu      $a0, $s0, $a0
/* B564 8000A964 3C028003 */  lui        $v0, %hi(D_8002FDE0)
/* B568 8000A968 8C44FDE0 */  lw         $a0, %lo(D_8002FDE0)($v0)
/* B56C 8000A96C 2402FFFF */  addiu      $v0, $zero, -0x1
/* B570 8000A970 10820017 */  beq        $a0, $v0, .L8000A9D0
/* B574 8000A974 00001021 */   addu      $v0, $zero, $zero
/* B578 8000A978 0C01FB65 */  jal        func_8007ED94
/* B57C 8000A97C 00128900 */   sll       $s1, $s2, 4
/* B580 8000A980 0C00943C */  jal        func_800250F0
/* B584 8000A984 02202021 */   addu      $a0, $s1, $zero
/* B588 8000A988 0C01FB72 */  jal        func_8007EDC8
/* B58C 8000A98C AE020008 */   sw        $v0, 0x8($s0)
/* B590 8000A990 8E020008 */  lw         $v0, 0x8($s0)
/* B594 8000A994 14400007 */  bnez       $v0, .L8000A9B4
/* B598 8000A998 00002821 */   addu      $a1, $zero, $zero
/* B59C 8000A99C 3C048000 */  lui        $a0, %hi(D_80000C00)
/* B5A0 8000A9A0 24840C00 */  addiu      $a0, $a0, %lo(D_80000C00)
/* B5A4 8000A9A4 00A03021 */  addu       $a2, $a1, $zero
/* B5A8 8000A9A8 0C011ACF */  jal        func_80046B3C
/* B5AC 8000A9AC 00A03821 */   addu      $a3, $a1, $zero
/* B5B0 8000A9B0 00002821 */  addu       $a1, $zero, $zero
.L8000A9B4:
/* B5B4 8000A9B4 8E040008 */  lw         $a0, 0x8($s0)
/* B5B8 8000A9B8 0C000697 */  jal        func_80001A5C
/* B5BC 8000A9BC 02203021 */   addu      $a2, $s1, $zero
/* B5C0 8000A9C0 24020001 */  addiu      $v0, $zero, 0x1
/* B5C4 8000A9C4 00401821 */  addu       $v1, $v0, $zero
/* B5C8 8000A9C8 AE120014 */  sw         $s2, 0x14($s0)
/* B5CC 8000A9CC A2030004 */  sb         $v1, 0x4($s0)
.L8000A9D0:
/* B5D0 8000A9D0 8FBF001C */  lw         $ra, 0x1C($sp)
/* B5D4 8000A9D4 8FB20018 */  lw         $s2, 0x18($sp)
/* B5D8 8000A9D8 8FB10014 */  lw         $s1, 0x14($sp)
/* B5DC 8000A9DC 8FB00010 */  lw         $s0, 0x10($sp)
/* B5E0 8000A9E0 03E00008 */  jr         $ra
/* B5E4 8000A9E4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000A9E8
/* B5E8 8000A9E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B5EC 8000A9EC AFB00010 */  sw         $s0, 0x10($sp)
/* B5F0 8000A9F0 00808021 */  addu       $s0, $a0, $zero
/* B5F4 8000A9F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5F8 8000A9F8 92020004 */  lbu        $v0, 0x4($s0)
/* B5FC 8000A9FC 10400009 */  beqz       $v0, .L8000AA24
/* B600 8000AA00 24020001 */   addiu     $v0, $zero, 0x1
/* B604 8000AA04 8E040008 */  lw         $a0, 0x8($s0)
/* B608 8000AA08 10800003 */  beqz       $a0, .L8000AA18
/* B60C 8000AA0C 00000000 */   nop
/* B610 8000AA10 0C009444 */  jal        func_80025110
/* B614 8000AA14 00000000 */   nop
.L8000AA18:
/* B618 8000AA18 0C002A41 */  jal        func_8000A904
/* B61C 8000AA1C 02002021 */   addu      $a0, $s0, $zero
/* B620 8000AA20 24020001 */  addiu      $v0, $zero, 0x1
.L8000AA24:
/* B624 8000AA24 8FBF0014 */  lw         $ra, 0x14($sp)
/* B628 8000AA28 8FB00010 */  lw         $s0, 0x10($sp)
/* B62C 8000AA2C 03E00008 */  jr         $ra
/* B630 8000AA30 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000AA34
/* B634 8000AA34 00802821 */  addu       $a1, $a0, $zero
/* B638 8000AA38 8CA6000C */  lw         $a2, 0xC($a1)
/* B63C 8000AA3C 8CA30008 */  lw         $v1, 0x8($a1)
/* B640 8000AA40 8CA40018 */  lw         $a0, 0x18($a1)
/* B644 8000AA44 00061100 */  sll        $v0, $a2, 4
/* B648 8000AA48 10800014 */  beqz       $a0, .L8000AA9C
/* B64C 8000AA4C 00623821 */   addu      $a3, $v1, $v0
/* B650 8000AA50 8CA30014 */  lw         $v1, 0x14($a1)
/* B654 8000AA54 24C20001 */  addiu      $v0, $a2, 0x1
/* B658 8000AA58 0043001A */  div        $zero, $v0, $v1
/* B65C 8000AA5C 14600002 */  bnez       $v1, .L8000AA68
/* B660 8000AA60 00000000 */   nop
/* B664 8000AA64 0007000D */  break      7
.L8000AA68:
/* B668 8000AA68 2401FFFF */  addiu      $at, $zero, -0x1
/* B66C 8000AA6C 14610004 */  bne        $v1, $at, .L8000AA80
/* B670 8000AA70 3C018000 */   lui       $at, (0x80000000 >> 16)
/* B674 8000AA74 14410002 */  bne        $v0, $at, .L8000AA80
/* B678 8000AA78 00000000 */   nop
/* B67C 8000AA7C 0006000D */  break      6
.L8000AA80:
/* B680 8000AA80 00002010 */  mfhi       $a0
/* B684 8000AA84 8CA30018 */  lw         $v1, 0x18($a1)
/* B688 8000AA88 00E01021 */  addu       $v0, $a3, $zero
/* B68C 8000AA8C 2463FFFF */  addiu      $v1, $v1, -0x1
/* B690 8000AA90 ACA30018 */  sw         $v1, 0x18($a1)
/* B694 8000AA94 03E00008 */  jr         $ra
/* B698 8000AA98 ACA4000C */   sw        $a0, 0xC($a1)
.L8000AA9C:
/* B69C 8000AA9C 03E00008 */  jr         $ra
/* B6A0 8000AAA0 00001021 */   addu      $v0, $zero, $zero

glabel func_8000AAA4
/* B6A4 8000AAA4 8C830010 */  lw         $v1, 0x10($a0)
/* B6A8 8000AAA8 2463FFFF */  addiu      $v1, $v1, -0x1
/* B6AC 8000AAAC 04630003 */  bgezl      $v1, .L8000AABC
/* B6B0 8000AAB0 AC830010 */   sw        $v1, 0x10($a0)
/* B6B4 8000AAB4 8C830014 */  lw         $v1, 0x14($a0)
/* B6B8 8000AAB8 AC830010 */  sw         $v1, 0x10($a0)
.L8000AABC:
/* B6BC 8000AABC 00031900 */  sll        $v1, $v1, 4
/* B6C0 8000AAC0 8C820008 */  lw         $v0, 0x8($a0)
/* B6C4 8000AAC4 8C850018 */  lw         $a1, 0x18($a0)
/* B6C8 8000AAC8 10A00005 */  beqz       $a1, .L8000AAE0
/* B6CC 8000AACC 00431821 */   addu      $v1, $v0, $v1
/* B6D0 8000AAD0 24A2FFFF */  addiu      $v0, $a1, -0x1
/* B6D4 8000AAD4 AC820018 */  sw         $v0, 0x18($a0)
/* B6D8 8000AAD8 03E00008 */  jr         $ra
/* B6DC 8000AADC 00601021 */   addu      $v0, $v1, $zero
.L8000AAE0:
/* B6E0 8000AAE0 03E00008 */  jr         $ra
/* B6E4 8000AAE4 00001021 */   addu      $v0, $zero, $zero

glabel func_8000AAE8
/* B6E8 8000AAE8 00804821 */  addu       $t1, $a0, $zero
/* B6EC 8000AAEC 00A05021 */  addu       $t2, $a1, $zero
/* B6F0 8000AAF0 8D220010 */  lw         $v0, 0x10($t1)
/* B6F4 8000AAF4 8D240008 */  lw         $a0, 0x8($t1)
/* B6F8 8000AAF8 8D250018 */  lw         $a1, 0x18($t1)
/* B6FC 8000AAFC 8D230014 */  lw         $v1, 0x14($t1)
/* B700 8000AB00 00021100 */  sll        $v0, $v0, 4
/* B704 8000AB04 10A3001A */  beq        $a1, $v1, .L8000AB70
/* B708 8000AB08 00824021 */   addu      $t0, $a0, $v0
/* B70C 8000AB0C AD0A0000 */  sw         $t2, 0x0($t0)
/* B710 8000AB10 AD060004 */  sw         $a2, 0x4($t0)
/* B714 8000AB14 AD070008 */  sw         $a3, 0x8($t0)
/* B718 8000AB18 A100000D */  sb         $zero, 0xD($t0)
/* B71C 8000AB1C A100000C */  sb         $zero, 0xC($t0)
/* B720 8000AB20 8D220010 */  lw         $v0, 0x10($t1)
/* B724 8000AB24 8D230014 */  lw         $v1, 0x14($t1)
/* B728 8000AB28 24420001 */  addiu      $v0, $v0, 0x1
/* B72C 8000AB2C 0043001A */  div        $zero, $v0, $v1
/* B730 8000AB30 14600002 */  bnez       $v1, .L8000AB3C
/* B734 8000AB34 00000000 */   nop
/* B738 8000AB38 0007000D */  break      7
.L8000AB3C:
/* B73C 8000AB3C 2401FFFF */  addiu      $at, $zero, -0x1
/* B740 8000AB40 14610004 */  bne        $v1, $at, .L8000AB54
/* B744 8000AB44 3C018000 */   lui       $at, (0x80000000 >> 16)
/* B748 8000AB48 14410002 */  bne        $v0, $at, .L8000AB54
/* B74C 8000AB4C 00000000 */   nop
/* B750 8000AB50 0006000D */  break      6
.L8000AB54:
/* B754 8000AB54 00002010 */  mfhi       $a0
/* B758 8000AB58 8D230018 */  lw         $v1, 0x18($t1)
/* B75C 8000AB5C 01001021 */  addu       $v0, $t0, $zero
/* B760 8000AB60 24630001 */  addiu      $v1, $v1, 0x1
/* B764 8000AB64 AD230018 */  sw         $v1, 0x18($t1)
/* B768 8000AB68 03E00008 */  jr         $ra
/* B76C 8000AB6C AD240010 */   sw        $a0, 0x10($t1)
.L8000AB70:
/* B770 8000AB70 03E00008 */  jr         $ra
/* B774 8000AB74 00001021 */   addu      $v0, $zero, $zero

glabel func_8000AB78
/* B778 8000AB78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B77C 8000AB7C AFBF0010 */  sw         $ra, 0x10($sp)
/* B780 8000AB80 0C002ABA */  jal        func_8000AAE8
/* B784 8000AB84 00000000 */   nop
/* B788 8000AB88 00401821 */  addu       $v1, $v0, $zero
/* B78C 8000AB8C 10600002 */  beqz       $v1, .L8000AB98
/* B790 8000AB90 24020001 */   addiu     $v0, $zero, 0x1
/* B794 8000AB94 A062000C */  sb         $v0, 0xC($v1)
.L8000AB98:
/* B798 8000AB98 8FBF0010 */  lw         $ra, 0x10($sp)
/* B79C 8000AB9C 00601021 */  addu       $v0, $v1, $zero
/* B7A0 8000ABA0 03E00008 */  jr         $ra
/* B7A4 8000ABA4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000ABA8
/* B7A8 8000ABA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7AC 8000ABAC AFBF0010 */  sw         $ra, 0x10($sp)
/* B7B0 8000ABB0 0C002ABA */  jal        func_8000AAE8
/* B7B4 8000ABB4 00000000 */   nop
/* B7B8 8000ABB8 8FBF0010 */  lw         $ra, 0x10($sp)
/* B7BC 8000ABBC 03E00008 */  jr         $ra
/* B7C0 8000ABC0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000ABC4
/* B7C4 8000ABC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7C8 8000ABC8 AFBF0010 */  sw         $ra, 0x10($sp)
/* B7CC 8000ABCC 0C002ABA */  jal        func_8000AAE8
/* B7D0 8000ABD0 00000000 */   nop
/* B7D4 8000ABD4 00401821 */  addu       $v1, $v0, $zero
/* B7D8 8000ABD8 10600003 */  beqz       $v1, .L8000ABE8
/* B7DC 8000ABDC 24020001 */   addiu     $v0, $zero, 0x1
/* B7E0 8000ABE0 A062000C */  sb         $v0, 0xC($v1)
/* B7E4 8000ABE4 A062000D */  sb         $v0, 0xD($v1)
.L8000ABE8:
/* B7E8 8000ABE8 8FBF0010 */  lw         $ra, 0x10($sp)
/* B7EC 8000ABEC 00601021 */  addu       $v0, $v1, $zero
/* B7F0 8000ABF0 03E00008 */  jr         $ra
/* B7F4 8000ABF4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000ABF8
/* B7F8 8000ABF8 AC800010 */  sw         $zero, 0x10($a0)
/* B7FC 8000ABFC AC80000C */  sw         $zero, 0xC($a0)
/* B800 8000AC00 03E00008 */  jr         $ra
/* B804 8000AC04 AC800018 */   sw        $zero, 0x18($a0)

glabel func_8000AC08
/* B808 8000AC08 24A2FFFF */  addiu      $v0, $a1, -0x1
/* B80C 8000AC0C 04410002 */  bgez       $v0, .L8000AC18
/* B810 8000AC10 00000000 */   nop
/* B814 8000AC14 8C820014 */  lw         $v0, 0x14($a0)
.L8000AC18:
/* B818 8000AC18 03E00008 */  jr         $ra
/* B81C 8000AC1C 00000000 */   nop

glabel func_8000AC20
/* B820 8000AC20 3C028003 */  lui        $v0, %hi(D_8002FDE0)
/* B824 8000AC24 03E00008 */  jr         $ra
/* B828 8000AC28 AC44FDE0 */   sw        $a0, %lo(D_8002FDE0)($v0)

glabel func_8000AC2C
/* B82C 8000AC2C 8C820018 */  lw         $v0, 0x18($a0)
/* B830 8000AC30 8C830014 */  lw         $v1, 0x14($a0)
/* B834 8000AC34 00431026 */  xor        $v0, $v0, $v1
/* B838 8000AC38 03E00008 */  jr         $ra
/* B83C 8000AC3C 2C420001 */   sltiu     $v0, $v0, 0x1

glabel func_8000AC40
/* B840 8000AC40 8C820018 */  lw         $v0, 0x18($a0)
/* B844 8000AC44 03E00008 */  jr         $ra
/* B848 8000AC48 2C420001 */   sltiu     $v0, $v0, 0x1

glabel func_8000AC4C
/* B84C 8000AC4C 90820004 */  lbu        $v0, 0x4($a0)
/* B850 8000AC50 03E00008 */  jr         $ra
/* B854 8000AC54 00000000 */   nop

glabel func_8000AC58
/* B858 8000AC58 8C820014 */  lw         $v0, 0x14($a0)
/* B85C 8000AC5C 24A50001 */  addiu      $a1, $a1, 0x1
/* B860 8000AC60 00A2001A */  div        $zero, $a1, $v0
/* B864 8000AC64 14400002 */  bnez       $v0, .L8000AC70
/* B868 8000AC68 00000000 */   nop
/* B86C 8000AC6C 0007000D */  break      7
.L8000AC70:
/* B870 8000AC70 2401FFFF */  addiu      $at, $zero, -0x1
/* B874 8000AC74 14410004 */  bne        $v0, $at, .L8000AC88
/* B878 8000AC78 3C018000 */   lui       $at, (0x80000000 >> 16)
/* B87C 8000AC7C 14A10002 */  bne        $a1, $at, .L8000AC88
/* B880 8000AC80 00000000 */   nop
/* B884 8000AC84 0006000D */  break      6
.L8000AC88:
/* B888 8000AC88 00001010 */  mfhi       $v0
/* B88C 8000AC8C 03E00008 */  jr         $ra
/* B890 8000AC90 00000000 */   nop
