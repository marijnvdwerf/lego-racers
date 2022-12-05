.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E1CD0
/* 98090 800E1CD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 98094 800E1CD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 98098 800E1CD8 00808021 */  addu       $s0, $a0, $zero
/* 9809C 800E1CDC 3C02800D */  lui        $v0, %hi(D_race_800CB810)
/* 980A0 800E1CE0 2442B810 */  addiu      $v0, $v0, %lo(D_race_800CB810)
/* 980A4 800E1CE4 26040014 */  addiu      $a0, $s0, 0x14
/* 980A8 800E1CE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 980AC 800E1CEC 0C0152E4 */  jal        func_80054B90
/* 980B0 800E1CF0 AE020060 */   sw        $v0, 0x60($s0)
/* 980B4 800E1CF4 0C03875B */  jal        func_race_800E1D6C
/* 980B8 800E1CF8 02002021 */   addu      $a0, $s0, $zero
/* 980BC 800E1CFC 02001021 */  addu       $v0, $s0, $zero
/* 980C0 800E1D00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 980C4 800E1D04 8FB00010 */  lw         $s0, 0x10($sp)
/* 980C8 800E1D08 03E00008 */  jr         $ra
/* 980CC 800E1D0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E1D10
/* 980D0 800E1D10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 980D4 800E1D14 AFB10014 */  sw         $s1, 0x14($sp)
/* 980D8 800E1D18 00808821 */  addu       $s1, $a0, $zero
/* 980DC 800E1D1C AFB00010 */  sw         $s0, 0x10($sp)
/* 980E0 800E1D20 00A08021 */  addu       $s0, $a1, $zero
/* 980E4 800E1D24 3C02800D */  lui        $v0, %hi(D_race_800CB810)
/* 980E8 800E1D28 2442B810 */  addiu      $v0, $v0, %lo(D_race_800CB810)
/* 980EC 800E1D2C AFBF0018 */  sw         $ra, 0x18($sp)
/* 980F0 800E1D30 0C03880A */  jal        func_race_800E2028
/* 980F4 800E1D34 AE220060 */   sw        $v0, 0x60($s1)
/* 980F8 800E1D38 26240014 */  addiu      $a0, $s1, 0x14
/* 980FC 800E1D3C 0C0152E9 */  jal        func_80054BA4
/* 98100 800E1D40 24050002 */   addiu     $a1, $zero, 0x2
/* 98104 800E1D44 32100001 */  andi       $s0, $s0, 0x1
/* 98108 800E1D48 12000003 */  beqz       $s0, .Lrace_800E1D58
/* 9810C 800E1D4C 00000000 */   nop
/* 98110 800E1D50 0C01FB5C */  jal        func_8007ED70
/* 98114 800E1D54 02202021 */   addu      $a0, $s1, $zero
.Lrace_800E1D58:
/* 98118 800E1D58 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9811C 800E1D5C 8FB10014 */  lw         $s1, 0x14($sp)
/* 98120 800E1D60 8FB00010 */  lw         $s0, 0x10($sp)
/* 98124 800E1D64 03E00008 */  jr         $ra
/* 98128 800E1D68 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E1D6C
/* 9812C 800E1D6C 24820014 */  addiu      $v0, $a0, 0x14
/* 98130 800E1D70 AC800000 */  sw         $zero, 0x0($a0)
/* 98134 800E1D74 AC800004 */  sw         $zero, 0x4($a0)
/* 98138 800E1D78 AC800008 */  sw         $zero, 0x8($a0)
/* 9813C 800E1D7C AC80000C */  sw         $zero, 0xC($a0)
/* 98140 800E1D80 AC800010 */  sw         $zero, 0x10($a0)
/* 98144 800E1D84 AC820020 */  sw         $v0, 0x20($a0)
/* 98148 800E1D88 AC800024 */  sw         $zero, 0x24($a0)
/* 9814C 800E1D8C 03E00008 */  jr         $ra
/* 98150 800E1D90 AC800028 */   sw        $zero, 0x28($a0)

glabel func_race_800E1D94
/* 98154 800E1D94 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 98158 800E1D98 AFB20018 */  sw         $s2, 0x18($sp)
/* 9815C 800E1D9C 00809021 */  addu       $s2, $a0, $zero
/* 98160 800E1DA0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 98164 800E1DA4 00A09821 */  addu       $s3, $a1, $zero
/* 98168 800E1DA8 AFB10014 */  sw         $s1, 0x14($sp)
/* 9816C 800E1DAC 00C08821 */  addu       $s1, $a2, $zero
/* 98170 800E1DB0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 98174 800E1DB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 98178 800E1DB8 8E420004 */  lw         $v0, 0x4($s2)
/* 9817C 800E1DBC 10400006 */  beqz       $v0, .Lrace_800E1DD8
/* 98180 800E1DC0 00E08021 */   addu      $s0, $a3, $zero
/* 98184 800E1DC4 8E420060 */  lw         $v0, 0x60($s2)
/* 98188 800E1DC8 84440018 */  lh         $a0, 0x18($v0)
/* 9818C 800E1DCC 8C42001C */  lw         $v0, 0x1C($v0)
/* 98190 800E1DD0 0040F809 */  jalr       $v0
/* 98194 800E1DD4 02442021 */   addu      $a0, $s2, $a0
.Lrace_800E1DD8:
/* 98198 800E1DD8 12000014 */  beqz       $s0, .Lrace_800E1E2C
/* 9819C 800E1DDC 00000000 */   nop
/* 981A0 800E1DE0 0C01FB4C */  jal        func_8007ED30
/* 981A4 800E1DE4 24040654 */   addiu     $a0, $zero, 0x654
/* 981A8 800E1DE8 0C00278C */  jal        func_80009E30
/* 981AC 800E1DEC 00402021 */   addu      $a0, $v0, $zero
/* 981B0 800E1DF0 00408021 */  addu       $s0, $v0, $zero
/* 981B4 800E1DF4 56000008 */  bnel       $s0, $zero, .Lrace_800E1E18
/* 981B8 800E1DF8 02002021 */   addu      $a0, $s0, $zero
/* 981BC 800E1DFC 3C04800D */  lui        $a0, %hi(D_race_800CB750)
/* 981C0 800E1E00 2484B750 */  addiu      $a0, $a0, %lo(D_race_800CB750)
/* 981C4 800E1E04 00002821 */  addu       $a1, $zero, $zero
/* 981C8 800E1E08 00A03021 */  addu       $a2, $a1, $zero
/* 981CC 800E1E0C 0C011ACF */  jal        func_80046B3C
/* 981D0 800E1E10 00A03821 */   addu      $a3, $a1, $zero
/* 981D4 800E1E14 02002021 */  addu       $a0, $s0, $zero
.Lrace_800E1E18:
/* 981D8 800E1E18 3C05800D */  lui        $a1, %hi(D_race_800CB754)
/* 981DC 800E1E1C 0C0025BA */  jal        func_800096E8
/* 981E0 800E1E20 24A5B754 */   addiu     $a1, $a1, %lo(D_race_800CB754)
/* 981E4 800E1E24 0803879A */  j          .Lrace_800E1E68
/* 981E8 800E1E28 00000000 */   nop
.Lrace_800E1E2C:
/* 981EC 800E1E2C 0C01FB4C */  jal        func_8007ED30
/* 981F0 800E1E30 24040658 */   addiu     $a0, $zero, 0x658
/* 981F4 800E1E34 00408021 */  addu       $s0, $v0, $zero
/* 981F8 800E1E38 0C002504 */  jal        func_80009410
/* 981FC 800E1E3C 02002021 */   addu      $a0, $s0, $zero
/* 98200 800E1E40 3C02800D */  lui        $v0, %hi(D_race_800CB760)
/* 98204 800E1E44 2442B760 */  addiu      $v0, $v0, %lo(D_race_800CB760)
/* 98208 800E1E48 16000007 */  bnez       $s0, .Lrace_800E1E68
/* 9820C 800E1E4C AE020028 */   sw        $v0, 0x28($s0)
/* 98210 800E1E50 3C04800D */  lui        $a0, %hi(D_race_800CB750)
/* 98214 800E1E54 2484B750 */  addiu      $a0, $a0, %lo(D_race_800CB750)
/* 98218 800E1E58 00002821 */  addu       $a1, $zero, $zero
/* 9821C 800E1E5C 00A03021 */  addu       $a2, $a1, $zero
/* 98220 800E1E60 0C011ACF */  jal        func_80046B3C
/* 98224 800E1E64 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E1E68:
/* 98228 800E1E68 8E020028 */  lw         $v0, 0x28($s0)
/* 9822C 800E1E6C 02202821 */  addu       $a1, $s1, $zero
/* 98230 800E1E70 84440088 */  lh         $a0, 0x88($v0)
/* 98234 800E1E74 8C42008C */  lw         $v0, 0x8C($v0)
.Lrace_800E1E78:
/* 98238 800E1E78 0040F809 */  jalr       $v0
/* 9823C 800E1E7C 02042021 */   addu      $a0, $s0, $a0
.Lrace_800E1E80:
/* 98240 800E1E80 8E020028 */  lw         $v0, 0x28($s0)
/* 98244 800E1E84 844400A0 */  lh         $a0, 0xA0($v0)
/* 98248 800E1E88 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 9824C 800E1E8C 0040F809 */  jalr       $v0
/* 98250 800E1E90 02042021 */   addu      $a0, $s0, $a0
/* 98254 800E1E94 00401821 */  addu       $v1, $v0, $zero
/* 98258 800E1E98 10600038 */  beqz       $v1, .Lrace_800E1F7C
/* 9825C 800E1E9C 24020034 */   addiu     $v0, $zero, 0x34
/* 98260 800E1EA0 1062001F */  beq        $v1, $v0, .Lrace_800E1F20
/* 98264 800E1EA4 2C620035 */   sltiu     $v0, $v1, 0x35
/* 98268 800E1EA8 10400007 */  beqz       $v0, .Lrace_800E1EC8
/* 9826C 800E1EAC 24020027 */   addiu     $v0, $zero, 0x27
/* 98270 800E1EB0 1062000C */  beq        $v1, $v0, .Lrace_800E1EE4
/* 98274 800E1EB4 2402002D */   addiu     $v0, $zero, 0x2D
/* 98278 800E1EB8 5062001E */  beql       $v1, $v0, .Lrace_800E1F34
/* 9827C 800E1EBC 02402021 */   addu      $a0, $s2, $zero
/* 98280 800E1EC0 080387DA */  j          .Lrace_800E1F68
/* 98284 800E1EC4 00000000 */   nop
.Lrace_800E1EC8:
/* 98288 800E1EC8 2402008B */  addiu      $v0, $zero, 0x8B
/* 9828C 800E1ECC 1062001D */  beq        $v1, $v0, .Lrace_800E1F44
/* 98290 800E1ED0 2402008E */   addiu     $v0, $zero, 0x8E
/* 98294 800E1ED4 50620020 */  beql       $v1, $v0, .Lrace_800E1F58
/* 98298 800E1ED8 02402021 */   addu      $a0, $s2, $zero
/* 9829C 800E1EDC 080387DA */  j          .Lrace_800E1F68
/* 982A0 800E1EE0 00000000 */   nop
.Lrace_800E1EE4:
/* 982A4 800E1EE4 8E420014 */  lw         $v0, 0x14($s2)
/* 982A8 800E1EE8 10400007 */  beqz       $v0, .Lrace_800E1F08
/* 982AC 800E1EEC 26510014 */   addiu     $s1, $s2, 0x14
/* 982B0 800E1EF0 8E020028 */  lw         $v0, 0x28($s0)
/* 982B4 800E1EF4 24050012 */  addiu      $a1, $zero, 0x12
/* 982B8 800E1EF8 84440098 */  lh         $a0, 0x98($v0)
/* 982BC 800E1EFC 8C42009C */  lw         $v0, 0x9C($v0)
/* 982C0 800E1F00 0040F809 */  jalr       $v0
/* 982C4 800E1F04 02042021 */   addu      $a0, $s0, $a0
.Lrace_800E1F08:
/* 982C8 800E1F08 02202021 */  addu       $a0, $s1, $zero
/* 982CC 800E1F0C 02602821 */  addu       $a1, $s3, $zero
/* 982D0 800E1F10 0C015375 */  jal        func_80054DD4
/* 982D4 800E1F14 02003021 */   addu      $a2, $s0, $zero
/* 982D8 800E1F18 080387A0 */  j          .Lrace_800E1E80
/* 982DC 800E1F1C 00000000 */   nop
.Lrace_800E1F20:
/* 982E0 800E1F20 02402021 */  addu       $a0, $s2, $zero
/* 982E4 800E1F24 0C038836 */  jal        func_race_800E20D8
/* 982E8 800E1F28 02002821 */   addu      $a1, $s0, $zero
/* 982EC 800E1F2C 080387A0 */  j          .Lrace_800E1E80
/* 982F0 800E1F30 00000000 */   nop
.Lrace_800E1F34:
/* 982F4 800E1F34 0C038862 */  jal        func_race_800E2188
/* 982F8 800E1F38 02002821 */   addu      $a1, $s0, $zero
/* 982FC 800E1F3C 080387A0 */  j          .Lrace_800E1E80
/* 98300 800E1F40 00000000 */   nop
.Lrace_800E1F44:
/* 98304 800E1F44 02402021 */  addu       $a0, $s2, $zero
/* 98308 800E1F48 0C0388A4 */  jal        func_race_800E2290
/* 9830C 800E1F4C 02002821 */   addu      $a1, $s0, $zero
/* 98310 800E1F50 080387A0 */  j          .Lrace_800E1E80
/* 98314 800E1F54 00000000 */   nop
.Lrace_800E1F58:
/* 98318 800E1F58 0C038920 */  jal        func_race_800E2480
/* 9831C 800E1F5C 02002821 */   addu      $a1, $s0, $zero
/* 98320 800E1F60 080387A0 */  j          .Lrace_800E1E80
/* 98324 800E1F64 00000000 */   nop
.Lrace_800E1F68:
/* 98328 800E1F68 8E020028 */  lw         $v0, 0x28($s0)
/* 9832C 800E1F6C 84440098 */  lh         $a0, 0x98($v0)
/* 98330 800E1F70 8C42009C */  lw         $v0, 0x9C($v0)
/* 98334 800E1F74 0803879E */  j          .Lrace_800E1E78
/* 98338 800E1F78 00002821 */   addu      $a1, $zero, $zero
.Lrace_800E1F7C:
/* 9833C 800E1F7C 8E420000 */  lw         $v0, 0x0($s2)
/* 98340 800E1F80 10400016 */  beqz       $v0, .Lrace_800E1FDC
/* 98344 800E1F84 00000000 */   nop
/* 98348 800E1F88 0C038BCF */  jal        func_race_800E2F3C
/* 9834C 800E1F8C 02402021 */   addu      $a0, $s2, $zero
/* 98350 800E1F90 3C038013 */  lui        $v1, %hi(D_race_801320F0)
/* 98354 800E1F94 8C6420F0 */  lw         $a0, %lo(D_race_801320F0)($v1)
/* 98358 800E1F98 0C01FB65 */  jal        func_8007ED94
/* 9835C 800E1F9C AE420024 */   sw        $v0, 0x24($s2)
/* 98360 800E1FA0 8E420024 */  lw         $v0, 0x24($s2)
/* 98364 800E1FA4 00022040 */  sll        $a0, $v0, 1
/* 98368 800E1FA8 00822021 */  addu       $a0, $a0, $v0
/* 9836C 800E1FAC 0C00943C */  jal        func_800250F0
/* 98370 800E1FB0 00042080 */   sll       $a0, $a0, 2
/* 98374 800E1FB4 0C01FB72 */  jal        func_8007EDC8
/* 98378 800E1FB8 AE420028 */   sw        $v0, 0x28($s2)
/* 9837C 800E1FBC 8E420028 */  lw         $v0, 0x28($s2)
/* 98380 800E1FC0 14400006 */  bnez       $v0, .Lrace_800E1FDC
/* 98384 800E1FC4 00002821 */   addu      $a1, $zero, $zero
/* 98388 800E1FC8 3C04800D */  lui        $a0, %hi(D_race_800CB750)
/* 9838C 800E1FCC 2484B750 */  addiu      $a0, $a0, %lo(D_race_800CB750)
/* 98390 800E1FD0 00A03021 */  addu       $a2, $a1, $zero
/* 98394 800E1FD4 0C011ACF */  jal        func_80046B3C
/* 98398 800E1FD8 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E1FDC:
/* 9839C 800E1FDC 8E020028 */  lw         $v0, 0x28($s0)
/* 983A0 800E1FE0 84440048 */  lh         $a0, 0x48($v0)
/* 983A4 800E1FE4 8C42004C */  lw         $v0, 0x4C($v0)
/* 983A8 800E1FE8 0040F809 */  jalr       $v0
/* 983AC 800E1FEC 02042021 */   addu      $a0, $s0, $a0
/* 983B0 800E1FF0 12000006 */  beqz       $s0, .Lrace_800E200C
/* 983B4 800E1FF4 24050003 */   addiu     $a1, $zero, 0x3
/* 983B8 800E1FF8 8E020028 */  lw         $v0, 0x28($s0)
/* 983BC 800E1FFC 84440038 */  lh         $a0, 0x38($v0)
/* 983C0 800E2000 8C42003C */  lw         $v0, 0x3C($v0)
/* 983C4 800E2004 0040F809 */  jalr       $v0
/* 983C8 800E2008 02042021 */   addu      $a0, $s0, $a0
.Lrace_800E200C:
/* 983CC 800E200C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 983D0 800E2010 8FB3001C */  lw         $s3, 0x1C($sp)
/* 983D4 800E2014 8FB20018 */  lw         $s2, 0x18($sp)
/* 983D8 800E2018 8FB10014 */  lw         $s1, 0x14($sp)
/* 983DC 800E201C 8FB00010 */  lw         $s0, 0x10($sp)
/* 983E0 800E2020 03E00008 */  jr         $ra
/* 983E4 800E2024 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E2028
/* 983E8 800E2028 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 983EC 800E202C AFB00010 */  sw         $s0, 0x10($sp)
/* 983F0 800E2030 00808021 */  addu       $s0, $a0, $zero
/* 983F4 800E2034 AFBF0014 */  sw         $ra, 0x14($sp)
/* 983F8 800E2038 8E020004 */  lw         $v0, 0x4($s0)
/* 983FC 800E203C 10400022 */  beqz       $v0, .Lrace_800E20C8
/* 98400 800E2040 00000000 */   nop
/* 98404 800E2044 8E030008 */  lw         $v1, 0x8($s0)
/* 98408 800E2048 1060000E */  beqz       $v1, .Lrace_800E2084
/* 9840C 800E204C 00000000 */   nop
/* 98410 800E2050 8C620008 */  lw         $v0, 0x8($v1)
/* 98414 800E2054 84440020 */  lh         $a0, 0x20($v0)
/* 98418 800E2058 8C420024 */  lw         $v0, 0x24($v0)
/* 9841C 800E205C 0040F809 */  jalr       $v0
/* 98420 800E2060 00642021 */   addu      $a0, $v1, $a0
/* 98424 800E2064 8E030008 */  lw         $v1, 0x8($s0)
/* 98428 800E2068 10600006 */  beqz       $v1, .Lrace_800E2084
/* 9842C 800E206C 24050003 */   addiu     $a1, $zero, 0x3
/* 98430 800E2070 8C620008 */  lw         $v0, 0x8($v1)
/* 98434 800E2074 84440008 */  lh         $a0, 0x8($v0)
/* 98438 800E2078 8C42000C */  lw         $v0, 0xC($v0)
/* 9843C 800E207C 0040F809 */  jalr       $v0
/* 98440 800E2080 00642021 */   addu      $a0, $v1, $a0
.Lrace_800E2084:
/* 98444 800E2084 8E040010 */  lw         $a0, 0x10($s0)
/* 98448 800E2088 10800003 */  beqz       $a0, .Lrace_800E2098
/* 9844C 800E208C 00000000 */   nop
/* 98450 800E2090 0C009444 */  jal        func_80025110
/* 98454 800E2094 00000000 */   nop
.Lrace_800E2098:
/* 98458 800E2098 8E040004 */  lw         $a0, 0x4($s0)
/* 9845C 800E209C 10800003 */  beqz       $a0, .Lrace_800E20AC
/* 98460 800E20A0 00000000 */   nop
/* 98464 800E20A4 0C009444 */  jal        func_80025110
/* 98468 800E20A8 00000000 */   nop
.Lrace_800E20AC:
/* 9846C 800E20AC 8E040028 */  lw         $a0, 0x28($s0)
/* 98470 800E20B0 10800003 */  beqz       $a0, .Lrace_800E20C0
/* 98474 800E20B4 00000000 */   nop
/* 98478 800E20B8 0C009444 */  jal        func_80025110
/* 9847C 800E20BC 00000000 */   nop
.Lrace_800E20C0:
/* 98480 800E20C0 0C03875B */  jal        func_race_800E1D6C
/* 98484 800E20C4 02002021 */   addu      $a0, $s0, $zero
.Lrace_800E20C8:
/* 98488 800E20C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9848C 800E20CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 98490 800E20D0 03E00008 */  jr         $ra
/* 98494 800E20D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E20D8
/* 98498 800E20D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9849C 800E20DC AFB00010 */  sw         $s0, 0x10($sp)
/* 984A0 800E20E0 00808021 */  addu       $s0, $a0, $zero
/* 984A4 800E20E4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 984A8 800E20E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 984AC 800E20EC 8E020008 */  lw         $v0, 0x8($s0)
/* 984B0 800E20F0 10400007 */  beqz       $v0, .Lrace_800E2110
/* 984B4 800E20F4 00A08821 */   addu      $s1, $a1, $zero
/* 984B8 800E20F8 8E220028 */  lw         $v0, 0x28($s1)
/* 984BC 800E20FC 24050012 */  addiu      $a1, $zero, 0x12
/* 984C0 800E2100 84440098 */  lh         $a0, 0x98($v0)
/* 984C4 800E2104 8C42009C */  lw         $v0, 0x9C($v0)
/* 984C8 800E2108 0040F809 */  jalr       $v0
/* 984CC 800E210C 02242021 */   addu      $a0, $s1, $a0
.Lrace_800E2110:
/* 984D0 800E2110 3C028013 */  lui        $v0, %hi(D_race_801320F0)
/* 984D4 800E2114 8C4420F0 */  lw         $a0, %lo(D_race_801320F0)($v0)
/* 984D8 800E2118 0C01FB65 */  jal        func_8007ED94
/* 984DC 800E211C 00000000 */   nop
/* 984E0 800E2120 0C01FB4C */  jal        func_8007ED30
/* 984E4 800E2124 2404000C */   addiu     $a0, $zero, 0xC
/* 984E8 800E2128 0C018020 */  jal        func_80060080
/* 984EC 800E212C 00402021 */   addu      $a0, $v0, $zero
/* 984F0 800E2130 0C01FB72 */  jal        func_8007EDC8
/* 984F4 800E2134 AE020008 */   sw        $v0, 0x8($s0)
/* 984F8 800E2138 8E020008 */  lw         $v0, 0x8($s0)
/* 984FC 800E213C 14400006 */  bnez       $v0, .Lrace_800E2158
/* 98500 800E2140 00002821 */   addu      $a1, $zero, $zero
/* 98504 800E2144 3C04800D */  lui        $a0, %hi(D_race_800CB750)
/* 98508 800E2148 2484B750 */  addiu      $a0, $a0, %lo(D_race_800CB750)
/* 9850C 800E214C 00A03021 */  addu       $a2, $a1, $zero
/* 98510 800E2150 0C011ACF */  jal        func_80046B3C
/* 98514 800E2154 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E2158:
/* 98518 800E2158 8E030008 */  lw         $v1, 0x8($s0)
/* 9851C 800E215C 8C620008 */  lw         $v0, 0x8($v1)
/* 98520 800E2160 02202821 */  addu       $a1, $s1, $zero
/* 98524 800E2164 84440010 */  lh         $a0, 0x10($v0)
/* 98528 800E2168 8C420014 */  lw         $v0, 0x14($v0)
/* 9852C 800E216C 0040F809 */  jalr       $v0
/* 98530 800E2170 00642021 */   addu      $a0, $v1, $a0
/* 98534 800E2174 8FBF0018 */  lw         $ra, 0x18($sp)
/* 98538 800E2178 8FB10014 */  lw         $s1, 0x14($sp)
/* 9853C 800E217C 8FB00010 */  lw         $s0, 0x10($sp)
/* 98540 800E2180 03E00008 */  jr         $ra
/* 98544 800E2184 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E2188
/* 98548 800E2188 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9854C 800E218C AFB20018 */  sw         $s2, 0x18($sp)
/* 98550 800E2190 00809021 */  addu       $s2, $a0, $zero
/* 98554 800E2194 AFB3001C */  sw         $s3, 0x1C($sp)
/* 98558 800E2198 00A09821 */  addu       $s3, $a1, $zero
/* 9855C 800E219C 02602021 */  addu       $a0, $s3, $zero
/* 98560 800E21A0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 98564 800E21A4 AFB10014 */  sw         $s1, 0x14($sp)
/* 98568 800E21A8 0C002723 */  jal        func_80009C8C
/* 9856C 800E21AC AFB00010 */   sw        $s0, 0x10($sp)
/* 98570 800E21B0 3C038013 */  lui        $v1, %hi(D_race_801320F0)
/* 98574 800E21B4 8C6420F0 */  lw         $a0, %lo(D_race_801320F0)($v1)
/* 98578 800E21B8 0C01FB65 */  jal        func_8007ED94
/* 9857C 800E21BC AE42000C */   sw        $v0, 0xC($s2)
/* 98580 800E21C0 8E44000C */  lw         $a0, 0xC($s2)
/* 98584 800E21C4 0C00943C */  jal        func_800250F0
/* 98588 800E21C8 000420C0 */   sll       $a0, $a0, 3
/* 9858C 800E21CC 0C01FB72 */  jal        func_8007EDC8
/* 98590 800E21D0 AE420010 */   sw        $v0, 0x10($s2)
/* 98594 800E21D4 8E420010 */  lw         $v0, 0x10($s2)
/* 98598 800E21D8 14400006 */  bnez       $v0, .Lrace_800E21F4
/* 9859C 800E21DC 3C04800D */   lui       $a0, %hi(D_race_800CB750)
/* 985A0 800E21E0 2484B750 */  addiu      $a0, $a0, %lo(D_race_800CB750)
/* 985A4 800E21E4 00002821 */  addu       $a1, $zero, $zero
/* 985A8 800E21E8 00A03021 */  addu       $a2, $a1, $zero
/* 985AC 800E21EC 0C011ACF */  jal        func_80046B3C
/* 985B0 800E21F0 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E21F4:
/* 985B4 800E21F4 8E42000C */  lw         $v0, 0xC($s2)
/* 985B8 800E21F8 1040001B */  beqz       $v0, .Lrace_800E2268
/* 985BC 800E21FC 00008821 */   addu      $s1, $zero, $zero
.Lrace_800E2200:
/* 985C0 800E2200 0C002680 */  jal        func_80009A00
/* 985C4 800E2204 02602021 */   addu      $a0, $s3, $zero
/* 985C8 800E2208 02602021 */  addu       $a0, $s3, $zero
/* 985CC 800E220C 8E430010 */  lw         $v1, 0x10($s2)
/* 985D0 800E2210 001180C0 */  sll        $s0, $s1, 3
/* 985D4 800E2214 02031821 */  addu       $v1, $s0, $v1
/* 985D8 800E2218 0C002680 */  jal        func_80009A00
/* 985DC 800E221C A4620000 */   sh        $v0, 0x0($v1)
/* 985E0 800E2220 8E430010 */  lw         $v1, 0x10($s2)
/* 985E4 800E2224 02602021 */  addu       $a0, $s3, $zero
/* 985E8 800E2228 02031821 */  addu       $v1, $s0, $v1
/* 985EC 800E222C 0C002680 */  jal        func_80009A00
/* 985F0 800E2230 A4620002 */   sh        $v0, 0x2($v1)
/* 985F4 800E2234 8E430010 */  lw         $v1, 0x10($s2)
/* 985F8 800E2238 02602021 */  addu       $a0, $s3, $zero
/* 985FC 800E223C 02031821 */  addu       $v1, $s0, $v1
/* 98600 800E2240 0C002680 */  jal        func_80009A00
/* 98604 800E2244 A4620004 */   sh        $v0, 0x4($v1)
/* 98608 800E2248 8E430010 */  lw         $v1, 0x10($s2)
/* 9860C 800E224C 02038021 */  addu       $s0, $s0, $v1
/* 98610 800E2250 A6020006 */  sh         $v0, 0x6($s0)
/* 98614 800E2254 8E42000C */  lw         $v0, 0xC($s2)
/* 98618 800E2258 26310001 */  addiu      $s1, $s1, 0x1
/* 9861C 800E225C 0222102B */  sltu       $v0, $s1, $v0
/* 98620 800E2260 1440FFE7 */  bnez       $v0, .Lrace_800E2200
/* 98624 800E2264 00000000 */   nop
.Lrace_800E2268:
/* 98628 800E2268 02602021 */  addu       $a0, $s3, $zero
/* 9862C 800E226C 0C0026F4 */  jal        func_80009BD0
/* 98630 800E2270 24050006 */   addiu     $a1, $zero, 0x6
/* 98634 800E2274 8FBF0020 */  lw         $ra, 0x20($sp)
/* 98638 800E2278 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9863C 800E227C 8FB20018 */  lw         $s2, 0x18($sp)
/* 98640 800E2280 8FB10014 */  lw         $s1, 0x14($sp)
/* 98644 800E2284 8FB00010 */  lw         $s0, 0x10($sp)
/* 98648 800E2288 03E00008 */  jr         $ra
/* 9864C 800E228C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E2290
/* 98650 800E2290 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 98654 800E2294 AFB40030 */  sw         $s4, 0x30($sp)
/* 98658 800E2298 0080A021 */  addu       $s4, $a0, $zero
/* 9865C 800E229C AFB3002C */  sw         $s3, 0x2C($sp)
/* 98660 800E22A0 00A09821 */  addu       $s3, $a1, $zero
/* 98664 800E22A4 02602021 */  addu       $a0, $s3, $zero
/* 98668 800E22A8 AFBF0038 */  sw         $ra, 0x38($sp)
/* 9866C 800E22AC AFB50034 */  sw         $s5, 0x34($sp)
/* 98670 800E22B0 AFB20028 */  sw         $s2, 0x28($sp)
/* 98674 800E22B4 AFB10024 */  sw         $s1, 0x24($sp)
/* 98678 800E22B8 0C002723 */  jal        func_80009C8C
/* 9867C 800E22BC AFB00020 */   sw        $s0, 0x20($sp)
/* 98680 800E22C0 3C038013 */  lui        $v1, %hi(D_race_801320F0)
/* 98684 800E22C4 8C6420F0 */  lw         $a0, %lo(D_race_801320F0)($v1)
/* 98688 800E22C8 0C01FB65 */  jal        func_8007ED94
/* 9868C 800E22CC AE820000 */   sw        $v0, 0x0($s4)
/* 98690 800E22D0 8E820000 */  lw         $v0, 0x0($s4)
/* 98694 800E22D4 00022080 */  sll        $a0, $v0, 2
/* 98698 800E22D8 00822021 */  addu       $a0, $a0, $v0
/* 9869C 800E22DC 0C00943C */  jal        func_800250F0
/* 986A0 800E22E0 00042080 */   sll       $a0, $a0, 2
/* 986A4 800E22E4 0C01FB72 */  jal        func_8007EDC8
/* 986A8 800E22E8 AE820004 */   sw        $v0, 0x4($s4)
/* 986AC 800E22EC 8E820004 */  lw         $v0, 0x4($s4)
/* 986B0 800E22F0 14400008 */  bnez       $v0, .Lrace_800E2314
/* 986B4 800E22F4 0000A821 */   addu      $s5, $zero, $zero
/* 986B8 800E22F8 3C04800D */  lui        $a0, %hi(D_race_800CB750)
/* 986BC 800E22FC 2484B750 */  addiu      $a0, $a0, %lo(D_race_800CB750)
/* 986C0 800E2300 00002821 */  addu       $a1, $zero, $zero
/* 986C4 800E2304 00A03021 */  addu       $a2, $a1, $zero
/* 986C8 800E2308 0C011ACF */  jal        func_80046B3C
/* 986CC 800E230C 00A03821 */   addu      $a3, $a1, $zero
/* 986D0 800E2310 0000A821 */  addu       $s5, $zero, $zero
.Lrace_800E2314:
/* 986D4 800E2314 02A08821 */  addu       $s1, $s5, $zero
.Lrace_800E2318:
/* 986D8 800E2318 8E820000 */  lw         $v0, 0x0($s4)
/* 986DC 800E231C 02A2102B */  sltu       $v0, $s5, $v0
/* 986E0 800E2320 1040004B */  beqz       $v0, .Lrace_800E2450
/* 986E4 800E2324 00009021 */   addu      $s2, $zero, $zero
/* 986E8 800E2328 02408021 */  addu       $s0, $s2, $zero
.Lrace_800E232C:
/* 986EC 800E232C 2E420002 */  sltiu      $v0, $s2, 0x2
/* 986F0 800E2330 1040002A */  beqz       $v0, .Lrace_800E23DC
/* 986F4 800E2334 00000000 */   nop
/* 986F8 800E2338 8E620028 */  lw         $v0, 0x28($s3)
/* 986FC 800E233C 844400A0 */  lh         $a0, 0xA0($v0)
/* 98700 800E2340 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 98704 800E2344 0040F809 */  jalr       $v0
/* 98708 800E2348 02642021 */   addu      $a0, $s3, $a0
/* 9870C 800E234C 00401821 */  addu       $v1, $v0, $zero
/* 98710 800E2350 2402008C */  addiu      $v0, $zero, 0x8C
/* 98714 800E2354 10620010 */  beq        $v1, $v0, .Lrace_800E2398
/* 98718 800E2358 2C62008D */   sltiu     $v0, $v1, 0x8D
/* 9871C 800E235C 10400005 */  beqz       $v0, .Lrace_800E2374
/* 98720 800E2360 24020004 */   addiu     $v0, $zero, 0x4
/* 98724 800E2364 10620008 */  beq        $v1, $v0, .Lrace_800E2388
/* 98728 800E2368 00000000 */   nop
/* 9872C 800E236C 080388EE */  j          .Lrace_800E23B8
/* 98730 800E2370 00000000 */   nop
.Lrace_800E2374:
/* 98734 800E2374 2402008D */  addiu      $v0, $zero, 0x8D
/* 98738 800E2378 1062000A */  beq        $v1, $v0, .Lrace_800E23A4
/* 9873C 800E237C 3403FFFE */   ori       $v1, $zero, 0xFFFE
/* 98740 800E2380 080388EE */  j          .Lrace_800E23B8
/* 98744 800E2384 00000000 */   nop
.Lrace_800E2388:
/* 98748 800E2388 8E820004 */  lw         $v0, 0x4($s4)
/* 9874C 800E238C 8E630038 */  lw         $v1, 0x38($s3)
/* 98750 800E2390 080388EB */  j          .Lrace_800E23AC
/* 98754 800E2394 02221021 */   addu      $v0, $s1, $v0
.Lrace_800E2398:
/* 98758 800E2398 8E820004 */  lw         $v0, 0x4($s4)
/* 9875C 800E239C 080388EA */  j          .Lrace_800E23A8
/* 98760 800E23A0 3403FFFF */   ori       $v1, $zero, 0xFFFF
.Lrace_800E23A4:
/* 98764 800E23A4 8E820004 */  lw         $v0, 0x4($s4)
.Lrace_800E23A8:
/* 98768 800E23A8 02221021 */  addu       $v0, $s1, $v0
.Lrace_800E23AC:
/* 9876C 800E23AC 00501021 */  addu       $v0, $v0, $s0
/* 98770 800E23B0 080388F4 */  j          .Lrace_800E23D0
/* 98774 800E23B4 A4430010 */   sh        $v1, 0x10($v0)
.Lrace_800E23B8:
/* 98778 800E23B8 8E620028 */  lw         $v0, 0x28($s3)
/* 9877C 800E23BC 00002821 */  addu       $a1, $zero, $zero
/* 98780 800E23C0 84440098 */  lh         $a0, 0x98($v0)
/* 98784 800E23C4 8C42009C */  lw         $v0, 0x9C($v0)
/* 98788 800E23C8 0040F809 */  jalr       $v0
/* 9878C 800E23CC 02642021 */   addu      $a0, $s3, $a0
.Lrace_800E23D0:
/* 98790 800E23D0 26100002 */  addiu      $s0, $s0, 0x2
/* 98794 800E23D4 080388CB */  j          .Lrace_800E232C
/* 98798 800E23D8 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800E23DC:
/* 9879C 800E23DC 0C0025F8 */  jal        func_800097E0
/* 987A0 800E23E0 02602021 */   addu      $a0, $s3, $zero
/* 987A4 800E23E4 02602021 */  addu       $a0, $s3, $zero
/* 987A8 800E23E8 0C0025F8 */  jal        func_800097E0
/* 987AC 800E23EC E7A00010 */   swc1      $f0, 0x10($sp)
/* 987B0 800E23F0 02602021 */  addu       $a0, $s3, $zero
/* 987B4 800E23F4 0C0025F8 */  jal        func_800097E0
/* 987B8 800E23F8 E7A00014 */   swc1      $f0, 0x14($sp)
/* 987BC 800E23FC 02602021 */  addu       $a0, $s3, $zero
/* 987C0 800E2400 0C0025F8 */  jal        func_800097E0
/* 987C4 800E2404 E7A00018 */   swc1      $f0, 0x18($sp)
/* 987C8 800E2408 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 987CC 800E240C 8E840004 */  lw         $a0, 0x4($s4)
/* 987D0 800E2410 27A50010 */  addiu      $a1, $sp, 0x10
/* 987D4 800E2414 0C038C48 */  jal        func_race_800E3120
/* 987D8 800E2418 00912021 */   addu      $a0, $a0, $s1
/* 987DC 800E241C 0C002680 */  jal        func_80009A00
/* 987E0 800E2420 02602021 */   addu      $a0, $s3, $zero
/* 987E4 800E2424 8E830004 */  lw         $v1, 0x4($s4)
/* 987E8 800E2428 02602021 */  addu       $a0, $s3, $zero
/* 987EC 800E242C 02231821 */  addu       $v1, $s1, $v1
/* 987F0 800E2430 0C002680 */  jal        func_80009A00
/* 987F4 800E2434 A462000C */   sh        $v0, 0xC($v1)
/* 987F8 800E2438 8E830004 */  lw         $v1, 0x4($s4)
/* 987FC 800E243C 26B50001 */  addiu      $s5, $s5, 0x1
/* 98800 800E2440 02231821 */  addu       $v1, $s1, $v1
/* 98804 800E2444 26310014 */  addiu      $s1, $s1, 0x14
/* 98808 800E2448 080388C6 */  j          .Lrace_800E2318
/* 9880C 800E244C A462000E */   sh        $v0, 0xE($v1)
.Lrace_800E2450:
/* 98810 800E2450 02602021 */  addu       $a0, $s3, $zero
/* 98814 800E2454 0C0026F4 */  jal        func_80009BD0
/* 98818 800E2458 24050006 */   addiu     $a1, $zero, 0x6
/* 9881C 800E245C 8FBF0038 */  lw         $ra, 0x38($sp)
/* 98820 800E2460 8FB50034 */  lw         $s5, 0x34($sp)
/* 98824 800E2464 8FB40030 */  lw         $s4, 0x30($sp)
/* 98828 800E2468 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9882C 800E246C 8FB20028 */  lw         $s2, 0x28($sp)
/* 98830 800E2470 8FB10024 */  lw         $s1, 0x24($sp)
/* 98834 800E2474 8FB00020 */  lw         $s0, 0x20($sp)
/* 98838 800E2478 03E00008 */  jr         $ra
/* 9883C 800E247C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800E2480
/* 98840 800E2480 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 98844 800E2484 AFB3001C */  sw         $s3, 0x1C($sp)
/* 98848 800E2488 00809821 */  addu       $s3, $a0, $zero
/* 9884C 800E248C AFB40020 */  sw         $s4, 0x20($sp)
/* 98850 800E2490 00A0A021 */  addu       $s4, $a1, $zero
/* 98854 800E2494 02802021 */  addu       $a0, $s4, $zero
/* 98858 800E2498 AFBF002C */  sw         $ra, 0x2C($sp)
/* 9885C 800E249C AFB60028 */  sw         $s6, 0x28($sp)
/* 98860 800E24A0 AFB50024 */  sw         $s5, 0x24($sp)
/* 98864 800E24A4 AFB20018 */  sw         $s2, 0x18($sp)
/* 98868 800E24A8 AFB10014 */  sw         $s1, 0x14($sp)
/* 9886C 800E24AC 0C002723 */  jal        func_80009C8C
/* 98870 800E24B0 AFB00010 */   sw        $s0, 0x10($sp)
/* 98874 800E24B4 3C038013 */  lui        $v1, %hi(D_race_801320F0)
/* 98878 800E24B8 8C6420F0 */  lw         $a0, %lo(D_race_801320F0)($v1)
/* 9887C 800E24BC 0C01FB65 */  jal        func_8007ED94
/* 98880 800E24C0 AE620000 */   sw        $v0, 0x0($s3)
/* 98884 800E24C4 8E620000 */  lw         $v0, 0x0($s3)
/* 98888 800E24C8 00022080 */  sll        $a0, $v0, 2
/* 9888C 800E24CC 00822021 */  addu       $a0, $a0, $v0
/* 98890 800E24D0 0C00943C */  jal        func_800250F0
/* 98894 800E24D4 00042080 */   sll       $a0, $a0, 2
/* 98898 800E24D8 0C01FB72 */  jal        func_8007EDC8
/* 9889C 800E24DC AE620004 */   sw        $v0, 0x4($s3)
/* 988A0 800E24E0 8E620004 */  lw         $v0, 0x4($s3)
/* 988A4 800E24E4 14400006 */  bnez       $v0, .Lrace_800E2500
/* 988A8 800E24E8 3C04800D */   lui       $a0, %hi(D_race_800CB750)
/* 988AC 800E24EC 2484B750 */  addiu      $a0, $a0, %lo(D_race_800CB750)
/* 988B0 800E24F0 00002821 */  addu       $a1, $zero, $zero
/* 988B4 800E24F4 00A03021 */  addu       $a2, $a1, $zero
/* 988B8 800E24F8 0C011ACF */  jal        func_80046B3C
/* 988BC 800E24FC 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E2500:
/* 988C0 800E2500 8E620000 */  lw         $v0, 0x0($s3)
/* 988C4 800E2504 10400041 */  beqz       $v0, .Lrace_800E260C
/* 988C8 800E2508 0000A821 */   addu      $s5, $zero, $zero
/* 988CC 800E250C 2416FFFF */  addiu      $s6, $zero, -0x1
/* 988D0 800E2510 02A09021 */  addu       $s2, $s5, $zero
.Lrace_800E2514:
/* 988D4 800E2514 00008821 */  addu       $s1, $zero, $zero
/* 988D8 800E2518 02208021 */  addu       $s0, $s1, $zero
.Lrace_800E251C:
/* 988DC 800E251C 0C002680 */  jal        func_80009A00
/* 988E0 800E2520 02802021 */   addu      $a0, $s4, $zero
/* 988E4 800E2524 00401821 */  addu       $v1, $v0, $zero
/* 988E8 800E2528 04610012 */  bgez       $v1, .Lrace_800E2574
/* 988EC 800E252C 00000000 */   nop
/* 988F0 800E2530 14760004 */  bne        $v1, $s6, .Lrace_800E2544
/* 988F4 800E2534 2402FFFE */   addiu     $v0, $zero, -0x2
/* 988F8 800E2538 8E620004 */  lw         $v0, 0x4($s3)
/* 988FC 800E253C 0803895E */  j          .Lrace_800E2578
/* 98900 800E2540 3403FFFF */   ori       $v1, $zero, 0xFFFF
.Lrace_800E2544:
/* 98904 800E2544 14620004 */  bne        $v1, $v0, .Lrace_800E2558
/* 98908 800E2548 00002821 */   addu      $a1, $zero, $zero
/* 9890C 800E254C 8E620004 */  lw         $v0, 0x4($s3)
/* 98910 800E2550 0803895E */  j          .Lrace_800E2578
/* 98914 800E2554 3403FFFE */   ori       $v1, $zero, 0xFFFE
.Lrace_800E2558:
/* 98918 800E2558 8E820028 */  lw         $v0, 0x28($s4)
/* 9891C 800E255C 84440098 */  lh         $a0, 0x98($v0)
/* 98920 800E2560 8C42009C */  lw         $v0, 0x9C($v0)
/* 98924 800E2564 0040F809 */  jalr       $v0
/* 98928 800E2568 02842021 */   addu      $a0, $s4, $a0
/* 9892C 800E256C 08038962 */  j          .Lrace_800E2588
/* 98930 800E2570 26100002 */   addiu     $s0, $s0, 0x2
.Lrace_800E2574:
/* 98934 800E2574 8E620004 */  lw         $v0, 0x4($s3)
.Lrace_800E2578:
/* 98938 800E2578 02421021 */  addu       $v0, $s2, $v0
/* 9893C 800E257C 00501021 */  addu       $v0, $v0, $s0
/* 98940 800E2580 A4430010 */  sh         $v1, 0x10($v0)
/* 98944 800E2584 26100002 */  addiu      $s0, $s0, 0x2
.Lrace_800E2588:
/* 98948 800E2588 26310001 */  addiu      $s1, $s1, 0x1
/* 9894C 800E258C 2E220002 */  sltiu      $v0, $s1, 0x2
/* 98950 800E2590 1440FFE2 */  bnez       $v0, .Lrace_800E251C
/* 98954 800E2594 00000000 */   nop
/* 98958 800E2598 0C002680 */  jal        func_80009A00
/* 9895C 800E259C 02802021 */   addu      $a0, $s4, $zero
/* 98960 800E25A0 02802021 */  addu       $a0, $s4, $zero
/* 98964 800E25A4 0C002680 */  jal        func_80009A00
/* 98968 800E25A8 00408821 */   addu      $s1, $v0, $zero
/* 9896C 800E25AC 02802021 */  addu       $a0, $s4, $zero
/* 98970 800E25B0 0C002680 */  jal        func_80009A00
/* 98974 800E25B4 00408021 */   addu      $s0, $v0, $zero
/* 98978 800E25B8 02202821 */  addu       $a1, $s1, $zero
/* 9897C 800E25BC 02003021 */  addu       $a2, $s0, $zero
/* 98980 800E25C0 8E640004 */  lw         $a0, 0x4($s3)
/* 98984 800E25C4 00403821 */  addu       $a3, $v0, $zero
/* 98988 800E25C8 0C038C4F */  jal        func_race_800E313C
/* 9898C 800E25CC 00922021 */   addu      $a0, $a0, $s2
/* 98990 800E25D0 0C002680 */  jal        func_80009A00
/* 98994 800E25D4 02802021 */   addu      $a0, $s4, $zero
/* 98998 800E25D8 8E630004 */  lw         $v1, 0x4($s3)
/* 9899C 800E25DC 02802021 */  addu       $a0, $s4, $zero
/* 989A0 800E25E0 02431821 */  addu       $v1, $s2, $v1
/* 989A4 800E25E4 0C002680 */  jal        func_80009A00
/* 989A8 800E25E8 A462000C */   sh        $v0, 0xC($v1)
/* 989AC 800E25EC 8E630004 */  lw         $v1, 0x4($s3)
/* 989B0 800E25F0 26B50001 */  addiu      $s5, $s5, 0x1
/* 989B4 800E25F4 02431821 */  addu       $v1, $s2, $v1
/* 989B8 800E25F8 A462000E */  sh         $v0, 0xE($v1)
/* 989BC 800E25FC 8E620000 */  lw         $v0, 0x0($s3)
/* 989C0 800E2600 02A2102B */  sltu       $v0, $s5, $v0
/* 989C4 800E2604 1440FFC3 */  bnez       $v0, .Lrace_800E2514
/* 989C8 800E2608 26520014 */   addiu     $s2, $s2, 0x14
.Lrace_800E260C:
/* 989CC 800E260C 02802021 */  addu       $a0, $s4, $zero
/* 989D0 800E2610 0C0026F4 */  jal        func_80009BD0
/* 989D4 800E2614 24050006 */   addiu     $a1, $zero, 0x6
/* 989D8 800E2618 8FBF002C */  lw         $ra, 0x2C($sp)
/* 989DC 800E261C 8FB60028 */  lw         $s6, 0x28($sp)
/* 989E0 800E2620 8FB50024 */  lw         $s5, 0x24($sp)
/* 989E4 800E2624 8FB40020 */  lw         $s4, 0x20($sp)
/* 989E8 800E2628 8FB3001C */  lw         $s3, 0x1C($sp)
/* 989EC 800E262C 8FB20018 */  lw         $s2, 0x18($sp)
/* 989F0 800E2630 8FB10014 */  lw         $s1, 0x14($sp)
/* 989F4 800E2634 8FB00010 */  lw         $s0, 0x10($sp)
/* 989F8 800E2638 03E00008 */  jr         $ra
/* 989FC 800E263C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800E2640
/* 98A00 800E2640 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 98A04 800E2644 AFB1005C */  sw         $s1, 0x5C($sp)
/* 98A08 800E2648 00808821 */  addu       $s1, $a0, $zero
/* 98A0C 800E264C 27A90010 */  addiu      $t1, $sp, 0x10
/* 98A10 800E2650 262A0038 */  addiu      $t2, $s1, 0x38
/* 98A14 800E2654 262B002C */  addiu      $t3, $s1, 0x2C
/* 98A18 800E2658 AFBF007C */  sw         $ra, 0x7C($sp)
/* 98A1C 800E265C AFBE0078 */  sw         $fp, 0x78($sp)
/* 98A20 800E2660 AFB70074 */  sw         $s7, 0x74($sp)
/* 98A24 800E2664 AFB60070 */  sw         $s6, 0x70($sp)
/* 98A28 800E2668 AFB5006C */  sw         $s5, 0x6C($sp)
/* 98A2C 800E266C AFB40068 */  sw         $s4, 0x68($sp)
/* 98A30 800E2670 AFB30064 */  sw         $s3, 0x64($sp)
/* 98A34 800E2674 AFB20060 */  sw         $s2, 0x60($sp)
/* 98A38 800E2678 AFB00058 */  sw         $s0, 0x58($sp)
/* 98A3C 800E267C F7B60088 */  sdc1       $f22, 0x88($sp)
/* 98A40 800E2680 F7B40080 */  sdc1       $f20, 0x80($sp)
/* 98A44 800E2684 AFA50094 */  sw         $a1, 0x94($sp)
/* 98A48 800E2688 AFA60098 */  sw         $a2, 0x98($sp)
/* 98A4C 800E268C AFA90034 */  sw         $t1, 0x34($sp)
/* 98A50 800E2690 AFAA003C */  sw         $t2, 0x3C($sp)
/* 98A54 800E2694 AFAB0040 */  sw         $t3, 0x40($sp)
/* 98A58 800E2698 8CAC0000 */  lw         $t4, 0x0($a1)
/* 98A5C 800E269C 8CAD0004 */  lw         $t5, 0x4($a1)
/* 98A60 800E26A0 8CA90008 */  lw         $t1, 0x8($a1)
/* 98A64 800E26A4 AE2C002C */  sw         $t4, 0x2C($s1)
/* 98A68 800E26A8 AE2D0030 */  sw         $t5, 0x30($s1)
/* 98A6C 800E26AC AE290034 */  sw         $t1, 0x34($s1)
/* 98A70 800E26B0 8FAB0098 */  lw         $t3, 0x98($sp)
/* 98A74 800E26B4 4480B000 */  mtc1       $zero, $f22
/* 98A78 800E26B8 8D6C0000 */  lw         $t4, 0x0($t3)
/* 98A7C 800E26BC 8D6D0004 */  lw         $t5, 0x4($t3)
/* 98A80 800E26C0 8D690008 */  lw         $t1, 0x8($t3)
/* 98A84 800E26C4 AE2C0038 */  sw         $t4, 0x38($s1)
/* 98A88 800E26C8 AE2D003C */  sw         $t5, 0x3C($s1)
/* 98A8C 800E26CC AE290040 */  sw         $t1, 0x40($s1)
/* 98A90 800E26D0 8E3E0028 */  lw         $fp, 0x28($s1)
/* 98A94 800E26D4 AE270050 */  sw         $a3, 0x50($s1)
/* 98A98 800E26D8 8FA200A0 */  lw         $v0, 0xA0($sp)
/* 98A9C 800E26DC 8FA300A4 */  lw         $v1, 0xA4($sp)
/* 98AA0 800E26E0 8FA400A8 */  lw         $a0, 0xA8($sp)
/* 98AA4 800E26E4 27D50008 */  addiu      $s5, $fp, 0x8
/* 98AA8 800E26E8 AE220054 */  sw         $v0, 0x54($s1)
/* 98AAC 800E26EC AE230058 */  sw         $v1, 0x58($s1)
/* 98AB0 800E26F0 AE24005C */  sw         $a0, 0x5C($s1)
/* 98AB4 800E26F4 A7C0000A */  sh         $zero, 0xA($fp)
/* 98AB8 800E26F8 A7C00008 */  sh         $zero, 0x8($fp)
/* 98ABC 800E26FC 8E220008 */  lw         $v0, 0x8($s1)
/* 98AC0 800E2700 8E370004 */  lw         $s7, 0x4($s1)
/* 98AC4 800E2704 8C420004 */  lw         $v0, 0x4($v0)
/* 98AC8 800E2708 AFA20030 */  sw         $v0, 0x30($sp)
.Lrace_800E270C:
/* 98ACC 800E270C 96A30002 */  lhu        $v1, 0x2($s5)
/* 98AD0 800E2710 14600029 */  bnez       $v1, .Lrace_800E27B8
/* 98AD4 800E2714 24020001 */   addiu     $v0, $zero, 0x1
/* 98AD8 800E2718 96E2000C */  lhu        $v0, 0xC($s7)
/* 98ADC 800E271C 8E230010 */  lw         $v1, 0x10($s1)
/* 98AE0 800E2720 000210C0 */  sll        $v0, $v0, 3
/* 98AE4 800E2724 00621821 */  addu       $v1, $v1, $v0
/* 98AE8 800E2728 94630000 */  lhu        $v1, 0x0($v1)
/* 98AEC 800E272C 8FAB0030 */  lw         $t3, 0x30($sp)
/* 98AF0 800E2730 00031040 */  sll        $v0, $v1, 1
/* 98AF4 800E2734 00431021 */  addu       $v0, $v0, $v1
/* 98AF8 800E2738 00021080 */  sll        $v0, $v0, 2
/* 98AFC 800E273C 01621021 */  addu       $v0, $t3, $v0
/* 98B00 800E2740 AFC20000 */  sw         $v0, 0x0($fp)
/* 98B04 800E2744 8FAC0094 */  lw         $t4, 0x94($sp)
/* 98B08 800E2748 C4420000 */  lwc1       $f2, 0x0($v0)
/* 98B0C 800E274C C5800000 */  lwc1       $f0, 0x0($t4)
/* 98B10 800E2750 46020001 */  sub.s      $f0, $f0, $f2
/* 98B14 800E2754 E7A00010 */  swc1       $f0, 0x10($sp)
/* 98B18 800E2758 C5800004 */  lwc1       $f0, 0x4($t4)
/* 98B1C 800E275C C4420004 */  lwc1       $f2, 0x4($v0)
/* 98B20 800E2760 46020001 */  sub.s      $f0, $f0, $f2
/* 98B24 800E2764 8FAD0034 */  lw         $t5, 0x34($sp)
/* 98B28 800E2768 E5A00004 */  swc1       $f0, 0x4($t5)
/* 98B2C 800E276C C5820008 */  lwc1       $f2, 0x8($t4)
/* 98B30 800E2770 C4400008 */  lwc1       $f0, 0x8($v0)
/* 98B34 800E2774 46001081 */  sub.s      $f2, $f2, $f0
/* 98B38 800E2778 8FA50034 */  lw         $a1, 0x34($sp)
/* 98B3C 800E277C 02E02021 */  addu       $a0, $s7, $zero
/* 98B40 800E2780 0C038C65 */  jal        func_race_800E3194
/* 98B44 800E2784 E5A20008 */   swc1      $f2, 0x8($t5)
/* 98B48 800E2788 4616003E */  c.le.s     $f0, $f22
/* 98B4C 800E278C 00000000 */  nop
/* 98B50 800E2790 45000004 */  bc1f       .Lrace_800E27A4
/* 98B54 800E2794 E6A0FFFC */   swc1      $f0, -0x4($s5)
/* 98B58 800E2798 96F60012 */  lhu        $s6, 0x12($s7)
/* 98B5C 800E279C 080389EA */  j          .Lrace_800E27A8
/* 98B60 800E27A0 00000000 */   nop
.Lrace_800E27A4:
/* 98B64 800E27A4 96F60010 */  lhu        $s6, 0x10($s7)
.Lrace_800E27A8:
/* 98B68 800E27A8 96A20002 */  lhu        $v0, 0x2($s5)
/* 98B6C 800E27AC 24420001 */  addiu      $v0, $v0, 0x1
/* 98B70 800E27B0 08038B5E */  j          .Lrace_800E2D78
/* 98B74 800E27B4 A6A20002 */   sh        $v0, 0x2($s5)
.Lrace_800E27B8:
/* 98B78 800E27B8 5462017C */  bnel       $v1, $v0, .Lrace_800E2DAC
/* 98B7C 800E27BC 27DEFFF4 */   addiu     $fp, $fp, -0xC
/* 98B80 800E27C0 24020002 */  addiu      $v0, $zero, 0x2
/* 98B84 800E27C4 A6A20002 */  sh         $v0, 0x2($s5)
/* 98B88 800E27C8 8FA90098 */  lw         $t1, 0x98($sp)
/* 98B8C 800E27CC 8FC20000 */  lw         $v0, 0x0($fp)
/* 98B90 800E27D0 C5200000 */  lwc1       $f0, 0x0($t1)
/* 98B94 800E27D4 C4420000 */  lwc1       $f2, 0x0($v0)
/* 98B98 800E27D8 46020001 */  sub.s      $f0, $f0, $f2
/* 98B9C 800E27DC E7A00010 */  swc1       $f0, 0x10($sp)
/* 98BA0 800E27E0 C5200004 */  lwc1       $f0, 0x4($t1)
/* 98BA4 800E27E4 C4420004 */  lwc1       $f2, 0x4($v0)
/* 98BA8 800E27E8 46020001 */  sub.s      $f0, $f0, $f2
/* 98BAC 800E27EC 8FAA0034 */  lw         $t2, 0x34($sp)
/* 98BB0 800E27F0 E5400004 */  swc1       $f0, 0x4($t2)
/* 98BB4 800E27F4 C5220008 */  lwc1       $f2, 0x8($t1)
/* 98BB8 800E27F8 C4400008 */  lwc1       $f0, 0x8($v0)
/* 98BBC 800E27FC 46001081 */  sub.s      $f2, $f2, $f0
/* 98BC0 800E2800 8FA50034 */  lw         $a1, 0x34($sp)
/* 98BC4 800E2804 02E02021 */  addu       $a0, $s7, $zero
/* 98BC8 800E2808 0C038C65 */  jal        func_race_800E3194
/* 98BCC 800E280C E5420008 */   swc1      $f2, 0x8($t2)
/* 98BD0 800E2810 46000086 */  mov.s      $f2, $f0
/* 98BD4 800E2814 4616103E */  c.le.s     $f2, $f22
/* 98BD8 800E2818 00000000 */  nop
/* 98BDC 800E281C 4500000C */  bc1f       .Lrace_800E2850
/* 98BE0 800E2820 00000000 */   nop
/* 98BE4 800E2824 C6A0FFFC */  lwc1       $f0, -0x4($s5)
/* 98BE8 800E2828 4600B03C */  c.lt.s     $f22, $f0
/* 98BEC 800E282C 00000000 */  nop
/* 98BF0 800E2830 4500FFB6 */  bc1f       .Lrace_800E270C
/* 98BF4 800E2834 00000000 */   nop
/* 98BF8 800E2838 E6200044 */  swc1       $f0, 0x44($s1)
/* 98BFC 800E283C 46001007 */  neg.s      $f0, $f2
/* 98C00 800E2840 E6200048 */  swc1       $f0, 0x48($s1)
/* 98C04 800E2844 96F60012 */  lhu        $s6, 0x12($s7)
/* 98C08 800E2848 08038A1D */  j          .Lrace_800E2874
/* 98C0C 800E284C 00000000 */   nop
.Lrace_800E2850:
/* 98C10 800E2850 C6A0FFFC */  lwc1       $f0, -0x4($s5)
/* 98C14 800E2854 4616003E */  c.le.s     $f0, $f22
/* 98C18 800E2858 00000000 */  nop
/* 98C1C 800E285C 4500FFAB */  bc1f       .Lrace_800E270C
/* 98C20 800E2860 00000000 */   nop
/* 98C24 800E2864 46000007 */  neg.s      $f0, $f0
/* 98C28 800E2868 E6200044 */  swc1       $f0, 0x44($s1)
/* 98C2C 800E286C E6220048 */  swc1       $f2, 0x48($s1)
/* 98C30 800E2870 96F60010 */  lhu        $s6, 0x10($s7)
.Lrace_800E2874:
/* 98C34 800E2874 C6260038 */  lwc1       $f6, 0x38($s1)
/* 98C38 800E2878 C620002C */  lwc1       $f0, 0x2C($s1)
/* 98C3C 800E287C AE37004C */  sw         $s7, 0x4C($s1)
/* 98C40 800E2880 8FAC003C */  lw         $t4, 0x3C($sp)
/* 98C44 800E2884 46003181 */  sub.s      $f6, $f6, $f0
/* 98C48 800E2888 8FAD0040 */  lw         $t5, 0x40($sp)
/* 98C4C 800E288C 3C0B8013 */  lui        $t3, %hi(D_race_801324F0)
/* 98C50 800E2890 E56624F0 */  swc1       $f6, %lo(D_race_801324F0)($t3)
/* 98C54 800E2894 C5880004 */  lwc1       $f8, 0x4($t4)
/* 98C58 800E2898 C5A00004 */  lwc1       $f0, 0x4($t5)
/* 98C5C 800E289C 46004201 */  sub.s      $f8, $f8, $f0
/* 98C60 800E28A0 01604821 */  addu       $t1, $t3, $zero
/* 98C64 800E28A4 252924F0 */  addiu      $t1, $t1, %lo(D_race_801324F0)
/* 98C68 800E28A8 E5280004 */  swc1       $f8, 0x4($t1)
/* 98C6C 800E28AC C5840008 */  lwc1       $f4, 0x8($t4)
/* 98C70 800E28B0 C5A00008 */  lwc1       $f0, 0x8($t5)
/* 98C74 800E28B4 46002101 */  sub.s      $f4, $f4, $f0
/* 98C78 800E28B8 E5240008 */  swc1       $f4, 0x8($t1)
/* 98C7C 800E28BC C6220044 */  lwc1       $f2, 0x44($s1)
/* 98C80 800E28C0 C6200048 */  lwc1       $f0, 0x48($s1)
/* 98C84 800E28C4 46001000 */  add.s      $f0, $f2, $f0
/* 98C88 800E28C8 46001503 */  div.s      $f20, $f2, $f0
/* 98C8C 800E28CC 46143182 */  mul.s      $f6, $f6, $f20
/* 98C90 800E28D0 00000000 */  nop
/* 98C94 800E28D4 46144202 */  mul.s      $f8, $f8, $f20
/* 98C98 800E28D8 00000000 */  nop
/* 98C9C 800E28DC 46142102 */  mul.s      $f4, $f4, $f20
/* 98CA0 800E28E0 8E220054 */  lw         $v0, 0x54($s1)
/* 98CA4 800E28E4 E7A60020 */  swc1       $f6, 0x20($sp)
/* 98CA8 800E28E8 E7A80024 */  swc1       $f8, 0x24($sp)
/* 98CAC 800E28EC E7A40028 */  swc1       $f4, 0x28($sp)
/* 98CB0 800E28F0 C620002C */  lwc1       $f0, 0x2C($s1)
/* 98CB4 800E28F4 46060000 */  add.s      $f0, $f0, $f6
/* 98CB8 800E28F8 E4400000 */  swc1       $f0, 0x0($v0)
/* 98CBC 800E28FC C5A00004 */  lwc1       $f0, 0x4($t5)
/* 98CC0 800E2900 C7A20024 */  lwc1       $f2, 0x24($sp)
/* 98CC4 800E2904 46020000 */  add.s      $f0, $f0, $f2
/* 98CC8 800E2908 E4400004 */  swc1       $f0, 0x4($v0)
/* 98CCC 800E290C C5A20008 */  lwc1       $f2, 0x8($t5)
/* 98CD0 800E2910 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 98CD4 800E2914 46001080 */  add.s      $f2, $f2, $f0
/* 98CD8 800E2918 3C058013 */  lui        $a1, %hi(D_race_80132520)
/* 98CDC 800E291C 24A52520 */  addiu      $a1, $a1, %lo(D_race_80132520)
/* 98CE0 800E2920 E4420008 */  swc1       $f2, 0x8($v0)
/* 98CE4 800E2924 8E24004C */  lw         $a0, 0x4C($s1)
/* 98CE8 800E2928 240A0001 */  addiu      $t2, $zero, 0x1
/* 98CEC 800E292C AFAA0038 */  sw         $t2, 0x38($sp)
/* 98CF0 800E2930 8E260010 */  lw         $a2, 0x10($s1)
/* 98CF4 800E2934 9483000C */  lhu        $v1, 0xC($a0)
/* 98CF8 800E2938 9482000E */  lhu        $v0, 0xE($a0)
/* 98CFC 800E293C 000318C0 */  sll        $v1, $v1, 3
/* 98D00 800E2940 00C39021 */  addu       $s2, $a2, $v1
/* 98D04 800E2944 000210C0 */  sll        $v0, $v0, 3
/* 98D08 800E2948 8E230008 */  lw         $v1, 0x8($s1)
/* 98D0C 800E294C 02421021 */  addu       $v0, $s2, $v0
/* 98D10 800E2950 AFA20044 */  sw         $v0, 0x44($sp)
/* 98D14 800E2954 8C740004 */  lw         $s4, 0x4($v1)
/* 98D18 800E2958 0C038C5E */  jal        func_race_800E3178
/* 98D1C 800E295C 00008021 */   addu      $s0, $zero, $zero
/* 98D20 800E2960 3C028013 */  lui        $v0, %hi(D_race_80132500)
/* 98D24 800E2964 24482500 */  addiu      $t0, $v0, %lo(D_race_80132500)
/* 98D28 800E2968 3C028013 */  lui        $v0, %hi(D_race_80132510)
/* 98D2C 800E296C 3C0B8013 */  lui        $t3, %hi(D_race_80132520)
/* 98D30 800E2970 24472510 */  addiu      $a3, $v0, %lo(D_race_80132510)
/* 98D34 800E2974 3C028013 */  lui        $v0, %hi(D_race_801324F0)
/* 98D38 800E2978 01606021 */  addu       $t4, $t3, $zero
/* 98D3C 800E297C 8E230050 */  lw         $v1, 0x50($s1)
/* 98D40 800E2980 C5602520 */  lwc1       $f0, %lo(D_race_80132520)($t3)
/* 98D44 800E2984 258C2520 */  addiu      $t4, $t4, %lo(D_race_80132520)
/* 98D48 800E2988 E4600024 */  swc1       $f0, 0x24($v1)
/* 98D4C 800E298C 8E230050 */  lw         $v1, 0x50($s1)
/* 98D50 800E2990 C5800004 */  lwc1       $f0, 0x4($t4)
/* 98D54 800E2994 244624F0 */  addiu      $a2, $v0, %lo(D_race_801324F0)
/* 98D58 800E2998 E4600028 */  swc1       $f0, 0x28($v1)
/* 98D5C 800E299C 8E220050 */  lw         $v0, 0x50($s1)
/* 98D60 800E29A0 C5800008 */  lwc1       $f0, 0x8($t4)
/* 98D64 800E29A4 26530006 */  addiu      $s3, $s2, 0x6
/* 98D68 800E29A8 E440002C */  swc1       $f0, 0x2C($v0)
.Lrace_800E29AC:
/* 98D6C 800E29AC 8FAD0044 */  lw         $t5, 0x44($sp)
/* 98D70 800E29B0 024D102B */  sltu       $v0, $s2, $t5
/* 98D74 800E29B4 1040009A */  beqz       $v0, .Lrace_800E2C20
/* 98D78 800E29B8 00000000 */   nop
/* 98D7C 800E29BC 96430000 */  lhu        $v1, 0x0($s2)
/* 98D80 800E29C0 00031040 */  sll        $v0, $v1, 1
/* 98D84 800E29C4 00431021 */  addu       $v0, $v0, $v1
/* 98D88 800E29C8 00021080 */  sll        $v0, $v0, 2
/* 98D8C 800E29CC 8E230050 */  lw         $v1, 0x50($s1)
/* 98D90 800E29D0 00541021 */  addu       $v0, $v0, $s4
/* 98D94 800E29D4 8C490000 */  lw         $t1, 0x0($v0)
/* 98D98 800E29D8 8C4A0004 */  lw         $t2, 0x4($v0)
/* 98D9C 800E29DC 8C4B0008 */  lw         $t3, 0x8($v0)
/* 98DA0 800E29E0 AC690000 */  sw         $t1, 0x0($v1)
/* 98DA4 800E29E4 AC6A0004 */  sw         $t2, 0x4($v1)
/* 98DA8 800E29E8 AC6B0008 */  sw         $t3, 0x8($v1)
/* 98DAC 800E29EC 9663FFFC */  lhu        $v1, -0x4($s3)
/* 98DB0 800E29F0 00031040 */  sll        $v0, $v1, 1
/* 98DB4 800E29F4 00431021 */  addu       $v0, $v0, $v1
/* 98DB8 800E29F8 00021080 */  sll        $v0, $v0, 2
/* 98DBC 800E29FC 8E230050 */  lw         $v1, 0x50($s1)
/* 98DC0 800E2A00 00541021 */  addu       $v0, $v0, $s4
/* 98DC4 800E2A04 8C4D0000 */  lw         $t5, 0x0($v0)
/* 98DC8 800E2A08 8C490004 */  lw         $t1, 0x4($v0)
/* 98DCC 800E2A0C 8C4A0008 */  lw         $t2, 0x8($v0)
/* 98DD0 800E2A10 AC6D000C */  sw         $t5, 0xC($v1)
/* 98DD4 800E2A14 AC690010 */  sw         $t1, 0x10($v1)
/* 98DD8 800E2A18 AC6A0014 */  sw         $t2, 0x14($v1)
/* 98DDC 800E2A1C 9663FFFE */  lhu        $v1, -0x2($s3)
/* 98DE0 800E2A20 00031040 */  sll        $v0, $v1, 1
/* 98DE4 800E2A24 00431021 */  addu       $v0, $v0, $v1
/* 98DE8 800E2A28 00021080 */  sll        $v0, $v0, 2
/* 98DEC 800E2A2C 8E230050 */  lw         $v1, 0x50($s1)
/* 98DF0 800E2A30 00541021 */  addu       $v0, $v0, $s4
/* 98DF4 800E2A34 8C4C0000 */  lw         $t4, 0x0($v0)
/* 98DF8 800E2A38 8C4D0004 */  lw         $t5, 0x4($v0)
/* 98DFC 800E2A3C 8C490008 */  lw         $t1, 0x8($v0)
/* 98E00 800E2A40 AC6C0018 */  sw         $t4, 0x18($v1)
/* 98E04 800E2A44 AC6D001C */  sw         $t5, 0x1C($v1)
/* 98E08 800E2A48 AC690020 */  sw         $t1, 0x20($v1)
/* 98E0C 800E2A4C 8E240054 */  lw         $a0, 0x54($s1)
/* 98E10 800E2A50 8E250050 */  lw         $a1, 0x50($s1)
/* 98E14 800E2A54 AFA60048 */  sw         $a2, 0x48($sp)
/* 98E18 800E2A58 AFA7004C */  sw         $a3, 0x4C($sp)
/* 98E1C 800E2A5C 0C00136F */  jal        func_80004DBC
/* 98E20 800E2A60 AFA80050 */   sw        $t0, 0x50($sp)
/* 98E24 800E2A64 8FA60048 */  lw         $a2, 0x48($sp)
/* 98E28 800E2A68 8FA7004C */  lw         $a3, 0x4C($sp)
/* 98E2C 800E2A6C 8FA80050 */  lw         $t0, 0x50($sp)
/* 98E30 800E2A70 10400068 */  beqz       $v0, .Lrace_800E2C14
/* 98E34 800E2A74 3C0B8013 */   lui       $t3, %hi(D_race_80132500)
/* 98E38 800E2A78 8E220050 */  lw         $v0, 0x50($s1)
/* 98E3C 800E2A7C C44E0000 */  lwc1       $f14, 0x0($v0)
/* 98E40 800E2A80 C440000C */  lwc1       $f0, 0xC($v0)
/* 98E44 800E2A84 46007381 */  sub.s      $f14, $f14, $f0
/* 98E48 800E2A88 2443000C */  addiu      $v1, $v0, 0xC
/* 98E4C 800E2A8C E56E2500 */  swc1       $f14, %lo(D_race_80132500)($t3)
/* 98E50 800E2A90 C44A0004 */  lwc1       $f10, 0x4($v0)
/* 98E54 800E2A94 C4600004 */  lwc1       $f0, 0x4($v1)
/* 98E58 800E2A98 46005281 */  sub.s      $f10, $f10, $f0
/* 98E5C 800E2A9C E50A0004 */  swc1       $f10, 0x4($t0)
/* 98E60 800E2AA0 C4420008 */  lwc1       $f2, 0x8($v0)
/* 98E64 800E2AA4 C4600008 */  lwc1       $f0, 0x8($v1)
/* 98E68 800E2AA8 46001081 */  sub.s      $f2, $f2, $f0
/* 98E6C 800E2AAC E5020008 */  swc1       $f2, 0x8($t0)
/* 98E70 800E2AB0 8E220050 */  lw         $v0, 0x50($s1)
/* 98E74 800E2AB4 C4460018 */  lwc1       $f6, 0x18($v0)
/* 98E78 800E2AB8 C440000C */  lwc1       $f0, 0xC($v0)
/* 98E7C 800E2ABC 3C0C8013 */  lui        $t4, %hi(D_race_80132510)
/* 98E80 800E2AC0 46003181 */  sub.s      $f6, $f6, $f0
/* 98E84 800E2AC4 24430018 */  addiu      $v1, $v0, 0x18
/* 98E88 800E2AC8 2442000C */  addiu      $v0, $v0, 0xC
/* 98E8C 800E2ACC E5862510 */  swc1       $f6, %lo(D_race_80132510)($t4)
/* 98E90 800E2AD0 C4640004 */  lwc1       $f4, 0x4($v1)
/* 98E94 800E2AD4 C4400004 */  lwc1       $f0, 0x4($v0)
/* 98E98 800E2AD8 46002101 */  sub.s      $f4, $f4, $f0
/* 98E9C 800E2ADC 46022402 */  mul.s      $f16, $f4, $f2
/* 98EA0 800E2AE0 00000000 */  nop
/* 98EA4 800E2AE4 46023082 */  mul.s      $f2, $f6, $f2
/* 98EA8 800E2AE8 00000000 */  nop
/* 98EAC 800E2AEC 460A3182 */  mul.s      $f6, $f6, $f10
/* 98EB0 800E2AF0 E4E40004 */  swc1       $f4, 0x4($a3)
/* 98EB4 800E2AF4 460E2102 */  mul.s      $f4, $f4, $f14
/* 98EB8 800E2AF8 C4680008 */  lwc1       $f8, 0x8($v1)
/* 98EBC 800E2AFC C4400008 */  lwc1       $f0, 0x8($v0)
/* 98EC0 800E2B00 46004201 */  sub.s      $f8, $f8, $f0
/* 98EC4 800E2B04 460A4002 */  mul.s      $f0, $f8, $f10
/* 98EC8 800E2B08 00000000 */  nop
/* 98ECC 800E2B0C 460E4302 */  mul.s      $f12, $f8, $f14
/* 98ED0 800E2B10 46043181 */  sub.s      $f6, $f6, $f4
/* 98ED4 800E2B14 C4C40008 */  lwc1       $f4, 0x8($a2)
/* 98ED8 800E2B18 46043102 */  mul.s      $f4, $f6, $f4
/* 98EDC 800E2B1C 3C0D8013 */  lui        $t5, %hi(D_race_801324F0)
/* 98EE0 800E2B20 46008401 */  sub.s      $f16, $f16, $f0
/* 98EE4 800E2B24 C5A024F0 */  lwc1       $f0, %lo(D_race_801324F0)($t5)
/* 98EE8 800E2B28 46008002 */  mul.s      $f0, $f16, $f0
/* 98EEC 800E2B2C 46026301 */  sub.s      $f12, $f12, $f2
/* 98EF0 800E2B30 C4C20004 */  lwc1       $f2, 0x4($a2)
/* 98EF4 800E2B34 46026082 */  mul.s      $f2, $f12, $f2
/* 98EF8 800E2B38 3C098013 */  lui        $t1, %hi(D_race_80132520)
/* 98EFC 800E2B3C 25302520 */  addiu      $s0, $t1, %lo(D_race_80132520)
/* 98F00 800E2B40 46020000 */  add.s      $f0, $f0, $f2
/* 98F04 800E2B44 E4E80008 */  swc1       $f8, 0x8($a3)
/* 98F08 800E2B48 E6060008 */  swc1       $f6, 0x8($s0)
/* 98F0C 800E2B4C 46040000 */  add.s      $f0, $f0, $f4
/* 98F10 800E2B50 E5302520 */  swc1       $f16, %lo(D_race_80132520)($t1)
/* 98F14 800E2B54 4600B03C */  c.lt.s     $f22, $f0
/* 98F18 800E2B58 00000000 */  nop
/* 98F1C 800E2B5C 45000003 */  bc1f       .Lrace_800E2B6C
/* 98F20 800E2B60 E60C0004 */   swc1      $f12, 0x4($s0)
/* 98F24 800E2B64 08038B05 */  j          .Lrace_800E2C14
/* 98F28 800E2B68 02408021 */   addu      $s0, $s2, $zero
.Lrace_800E2B6C:
/* 98F2C 800E2B6C 02002021 */  addu       $a0, $s0, $zero
/* 98F30 800E2B70 0C000F26 */  jal        func_80003C98
/* 98F34 800E2B74 02002821 */   addu      $a1, $s0, $zero
/* 98F38 800E2B78 3C0A8013 */  lui        $t2, %hi(D_race_80132520)
/* 98F3C 800E2B7C 8E220050 */  lw         $v0, 0x50($s1)
/* 98F40 800E2B80 C5402520 */  lwc1       $f0, %lo(D_race_80132520)($t2)
/* 98F44 800E2B84 E4400024 */  swc1       $f0, 0x24($v0)
/* 98F48 800E2B88 8E220050 */  lw         $v0, 0x50($s1)
/* 98F4C 800E2B8C C6000004 */  lwc1       $f0, 0x4($s0)
/* 98F50 800E2B90 E4400028 */  swc1       $f0, 0x28($v0)
/* 98F54 800E2B94 8E220050 */  lw         $v0, 0x50($s1)
/* 98F58 800E2B98 C6000008 */  lwc1       $f0, 0x8($s0)
/* 98F5C 800E2B9C E440002C */  swc1       $f0, 0x2C($v0)
/* 98F60 800E2BA0 8E220050 */  lw         $v0, 0x50($s1)
/* 98F64 800E2BA4 C5422520 */  lwc1       $f2, %lo(D_race_80132520)($t2)
/* 98F68 800E2BA8 C4400000 */  lwc1       $f0, 0x0($v0)
/* 98F6C 800E2BAC 46001082 */  mul.s      $f2, $f2, $f0
/* 98F70 800E2BB0 C6060004 */  lwc1       $f6, 0x4($s0)
/* 98F74 800E2BB4 C4400004 */  lwc1       $f0, 0x4($v0)
/* 98F78 800E2BB8 46003182 */  mul.s      $f6, $f6, $f0
/* 98F7C 800E2BBC C6040008 */  lwc1       $f4, 0x8($s0)
/* 98F80 800E2BC0 C4400008 */  lwc1       $f0, 0x8($v0)
/* 98F84 800E2BC4 46002102 */  mul.s      $f4, $f4, $f0
/* 98F88 800E2BC8 46061080 */  add.s      $f2, $f2, $f6
/* 98F8C 800E2BCC 46041080 */  add.s      $f2, $f2, $f4
/* 98F90 800E2BD0 46001087 */  neg.s      $f2, $f2
/* 98F94 800E2BD4 E4420030 */  swc1       $f2, 0x30($v0)
/* 98F98 800E2BD8 8E240058 */  lw         $a0, 0x58($s1)
/* 98F9C 800E2BDC 10800008 */  beqz       $a0, .Lrace_800E2C00
/* 98FA0 800E2BE0 00000000 */   nop
/* 98FA4 800E2BE4 8E230020 */  lw         $v1, 0x20($s1)
/* 98FA8 800E2BE8 96620000 */  lhu        $v0, 0x0($s3)
/* 98FAC 800E2BEC 8C630008 */  lw         $v1, 0x8($v1)
/* 98FB0 800E2BF0 00021080 */  sll        $v0, $v0, 2
/* 98FB4 800E2BF4 00431021 */  addu       $v0, $v0, $v1
/* 98FB8 800E2BF8 8C420000 */  lw         $v0, 0x0($v0)
/* 98FBC 800E2BFC AC820000 */  sw         $v0, 0x0($a0)
.Lrace_800E2C00:
/* 98FC0 800E2C00 8E22005C */  lw         $v0, 0x5C($s1)
/* 98FC4 800E2C04 54400059 */  bnel       $v0, $zero, .Lrace_800E2D6C
/* 98FC8 800E2C08 E4540000 */   swc1      $f20, 0x0($v0)
/* 98FCC 800E2C0C 08038B5B */  j          .Lrace_800E2D6C
/* 98FD0 800E2C10 00000000 */   nop
.Lrace_800E2C14:
/* 98FD4 800E2C14 26730008 */  addiu      $s3, $s3, 0x8
/* 98FD8 800E2C18 08038A6B */  j          .Lrace_800E29AC
/* 98FDC 800E2C1C 26520008 */   addiu     $s2, $s2, 0x8
.Lrace_800E2C20:
/* 98FE0 800E2C20 52000052 */  beql       $s0, $zero, .Lrace_800E2D6C
/* 98FE4 800E2C24 AFA00038 */   sw        $zero, 0x38($sp)
/* 98FE8 800E2C28 96030000 */  lhu        $v1, 0x0($s0)
/* 98FEC 800E2C2C 00031040 */  sll        $v0, $v1, 1
/* 98FF0 800E2C30 00431021 */  addu       $v0, $v0, $v1
/* 98FF4 800E2C34 00021080 */  sll        $v0, $v0, 2
/* 98FF8 800E2C38 8E230050 */  lw         $v1, 0x50($s1)
/* 98FFC 800E2C3C 00541021 */  addu       $v0, $v0, $s4
/* 99000 800E2C40 8C4B0000 */  lw         $t3, 0x0($v0)
/* 99004 800E2C44 8C4C0004 */  lw         $t4, 0x4($v0)
/* 99008 800E2C48 8C4D0008 */  lw         $t5, 0x8($v0)
/* 9900C 800E2C4C AC6B0000 */  sw         $t3, 0x0($v1)
/* 99010 800E2C50 AC6C0004 */  sw         $t4, 0x4($v1)
/* 99014 800E2C54 AC6D0008 */  sw         $t5, 0x8($v1)
/* 99018 800E2C58 96030002 */  lhu        $v1, 0x2($s0)
/* 9901C 800E2C5C 3C048013 */  lui        $a0, %hi(D_race_80132520)
/* 99020 800E2C60 24842520 */  addiu      $a0, $a0, %lo(D_race_80132520)
/* 99024 800E2C64 00031040 */  sll        $v0, $v1, 1
/* 99028 800E2C68 00431021 */  addu       $v0, $v0, $v1
/* 9902C 800E2C6C 00021080 */  sll        $v0, $v0, 2
/* 99030 800E2C70 8E230050 */  lw         $v1, 0x50($s1)
/* 99034 800E2C74 00541021 */  addu       $v0, $v0, $s4
/* 99038 800E2C78 8C4A0000 */  lw         $t2, 0x0($v0)
/* 9903C 800E2C7C 8C4B0004 */  lw         $t3, 0x4($v0)
/* 99040 800E2C80 8C4C0008 */  lw         $t4, 0x8($v0)
/* 99044 800E2C84 AC6A000C */  sw         $t2, 0xC($v1)
/* 99048 800E2C88 AC6B0010 */  sw         $t3, 0x10($v1)
/* 9904C 800E2C8C AC6C0014 */  sw         $t4, 0x14($v1)
/* 99050 800E2C90 96030004 */  lhu        $v1, 0x4($s0)
/* 99054 800E2C94 00031040 */  sll        $v0, $v1, 1
/* 99058 800E2C98 00431021 */  addu       $v0, $v0, $v1
/* 9905C 800E2C9C 00021080 */  sll        $v0, $v0, 2
/* 99060 800E2CA0 8E230050 */  lw         $v1, 0x50($s1)
/* 99064 800E2CA4 00541021 */  addu       $v0, $v0, $s4
/* 99068 800E2CA8 8C490000 */  lw         $t1, 0x0($v0)
/* 9906C 800E2CAC 8C4A0004 */  lw         $t2, 0x4($v0)
/* 99070 800E2CB0 8C4B0008 */  lw         $t3, 0x8($v0)
/* 99074 800E2CB4 AC690018 */  sw         $t1, 0x18($v1)
/* 99078 800E2CB8 AC6A001C */  sw         $t2, 0x1C($v1)
/* 9907C 800E2CBC AC6B0020 */  sw         $t3, 0x20($v1)
/* 99080 800E2CC0 0C000F26 */  jal        func_80003C98
/* 99084 800E2CC4 00802821 */   addu      $a1, $a0, $zero
/* 99088 800E2CC8 3C0D8013 */  lui        $t5, %hi(D_race_80132520)
/* 9908C 800E2CCC 01A04821 */  addu       $t1, $t5, $zero
/* 99090 800E2CD0 8E220050 */  lw         $v0, 0x50($s1)
/* 99094 800E2CD4 C5A02520 */  lwc1       $f0, %lo(D_race_80132520)($t5)
/* 99098 800E2CD8 25292520 */  addiu      $t1, $t1, %lo(D_race_80132520)
/* 9909C 800E2CDC E4400024 */  swc1       $f0, 0x24($v0)
/* 990A0 800E2CE0 8E220050 */  lw         $v0, 0x50($s1)
/* 990A4 800E2CE4 C5200004 */  lwc1       $f0, 0x4($t1)
/* 990A8 800E2CE8 E4400028 */  swc1       $f0, 0x28($v0)
/* 990AC 800E2CEC 8E220050 */  lw         $v0, 0x50($s1)
/* 990B0 800E2CF0 C5200008 */  lwc1       $f0, 0x8($t1)
/* 990B4 800E2CF4 E440002C */  swc1       $f0, 0x2C($v0)
/* 990B8 800E2CF8 8E220050 */  lw         $v0, 0x50($s1)
/* 990BC 800E2CFC C5A22520 */  lwc1       $f2, %lo(D_race_80132520)($t5)
/* 990C0 800E2D00 C4400000 */  lwc1       $f0, 0x0($v0)
/* 990C4 800E2D04 46001082 */  mul.s      $f2, $f2, $f0
/* 990C8 800E2D08 C5260004 */  lwc1       $f6, 0x4($t1)
/* 990CC 800E2D0C C4400004 */  lwc1       $f0, 0x4($v0)
/* 990D0 800E2D10 46003182 */  mul.s      $f6, $f6, $f0
/* 990D4 800E2D14 C5240008 */  lwc1       $f4, 0x8($t1)
/* 990D8 800E2D18 C4400008 */  lwc1       $f0, 0x8($v0)
/* 990DC 800E2D1C 46002102 */  mul.s      $f4, $f4, $f0
/* 990E0 800E2D20 46061080 */  add.s      $f2, $f2, $f6
/* 990E4 800E2D24 46041080 */  add.s      $f2, $f2, $f4
/* 990E8 800E2D28 46001087 */  neg.s      $f2, $f2
/* 990EC 800E2D2C E4420030 */  swc1       $f2, 0x30($v0)
/* 990F0 800E2D30 8E240058 */  lw         $a0, 0x58($s1)
/* 990F4 800E2D34 10800008 */  beqz       $a0, .Lrace_800E2D58
/* 990F8 800E2D38 00000000 */   nop
/* 990FC 800E2D3C 8E230020 */  lw         $v1, 0x20($s1)
/* 99100 800E2D40 96020006 */  lhu        $v0, 0x6($s0)
/* 99104 800E2D44 8C630008 */  lw         $v1, 0x8($v1)
/* 99108 800E2D48 00021080 */  sll        $v0, $v0, 2
/* 9910C 800E2D4C 00431021 */  addu       $v0, $v0, $v1
/* 99110 800E2D50 8C420000 */  lw         $v0, 0x0($v0)
/* 99114 800E2D54 AC820000 */  sw         $v0, 0x0($a0)
.Lrace_800E2D58:
/* 99118 800E2D58 8E22005C */  lw         $v0, 0x5C($s1)
/* 9911C 800E2D5C 54400001 */  bnel       $v0, $zero, .Lrace_800E2D64
/* 99120 800E2D60 E4540000 */   swc1      $f20, 0x0($v0)
.Lrace_800E2D64:
/* 99124 800E2D64 240A0001 */  addiu      $t2, $zero, 0x1
/* 99128 800E2D68 AFAA0038 */  sw         $t2, 0x38($sp)
.Lrace_800E2D6C:
/* 9912C 800E2D6C 8FAB0038 */  lw         $t3, 0x38($sp)
/* 99130 800E2D70 1560001A */  bnez       $t3, .Lrace_800E2DDC
/* 99134 800E2D74 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_800E2D78:
/* 99138 800E2D78 3402FFFD */  ori        $v0, $zero, 0xFFFD
/* 9913C 800E2D7C 0056102B */  sltu       $v0, $v0, $s6
/* 99140 800E2D80 1440FE62 */  bnez       $v0, .Lrace_800E270C
/* 99144 800E2D84 00161080 */   sll       $v0, $s6, 2
/* 99148 800E2D88 26B5000C */  addiu      $s5, $s5, 0xC
/* 9914C 800E2D8C 27DE000C */  addiu      $fp, $fp, 0xC
/* 99150 800E2D90 00561021 */  addu       $v0, $v0, $s6
/* 99154 800E2D94 8E230004 */  lw         $v1, 0x4($s1)
/* 99158 800E2D98 00021080 */  sll        $v0, $v0, 2
/* 9915C 800E2D9C A6B60000 */  sh         $s6, 0x0($s5)
/* 99160 800E2DA0 A6A00002 */  sh         $zero, 0x2($s5)
/* 99164 800E2DA4 080389C3 */  j          .Lrace_800E270C
/* 99168 800E2DA8 0062B821 */   addu      $s7, $v1, $v0
.Lrace_800E2DAC:
/* 9916C 800E2DAC 8E220028 */  lw         $v0, 0x28($s1)
/* 99170 800E2DB0 03C2102B */  sltu       $v0, $fp, $v0
/* 99174 800E2DB4 14400008 */  bnez       $v0, .Lrace_800E2DD8
/* 99178 800E2DB8 26B5FFF4 */   addiu     $s5, $s5, -0xC
/* 9917C 800E2DBC 96A20000 */  lhu        $v0, 0x0($s5)
/* 99180 800E2DC0 00021880 */  sll        $v1, $v0, 2
/* 99184 800E2DC4 00621821 */  addu       $v1, $v1, $v0
/* 99188 800E2DC8 8E220004 */  lw         $v0, 0x4($s1)
/* 9918C 800E2DCC 00031880 */  sll        $v1, $v1, 2
/* 99190 800E2DD0 080389C3 */  j          .Lrace_800E270C
/* 99194 800E2DD4 0043B821 */   addu      $s7, $v0, $v1
.Lrace_800E2DD8:
/* 99198 800E2DD8 00001021 */  addu       $v0, $zero, $zero
.Lrace_800E2DDC:
/* 9919C 800E2DDC 8FBF007C */  lw         $ra, 0x7C($sp)
/* 991A0 800E2DE0 8FBE0078 */  lw         $fp, 0x78($sp)
/* 991A4 800E2DE4 8FB70074 */  lw         $s7, 0x74($sp)
/* 991A8 800E2DE8 8FB60070 */  lw         $s6, 0x70($sp)
/* 991AC 800E2DEC 8FB5006C */  lw         $s5, 0x6C($sp)
/* 991B0 800E2DF0 8FB40068 */  lw         $s4, 0x68($sp)
/* 991B4 800E2DF4 8FB30064 */  lw         $s3, 0x64($sp)
/* 991B8 800E2DF8 8FB20060 */  lw         $s2, 0x60($sp)
/* 991BC 800E2DFC 8FB1005C */  lw         $s1, 0x5C($sp)
/* 991C0 800E2E00 8FB00058 */  lw         $s0, 0x58($sp)
/* 991C4 800E2E04 D7B60088 */  ldc1       $f22, 0x88($sp)
/* 991C8 800E2E08 D7B40080 */  ldc1       $f20, 0x80($sp)
/* 991CC 800E2E0C 03E00008 */  jr         $ra
/* 991D0 800E2E10 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_race_800E2E14
/* 991D4 800E2E14 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 991D8 800E2E18 AFB20028 */  sw         $s2, 0x28($sp)
/* 991DC 800E2E1C 00809021 */  addu       $s2, $a0, $zero
/* 991E0 800E2E20 AFB3002C */  sw         $s3, 0x2C($sp)
/* 991E4 800E2E24 00A09821 */  addu       $s3, $a1, $zero
/* 991E8 800E2E28 AFB10024 */  sw         $s1, 0x24($sp)
/* 991EC 800E2E2C 27B10010 */  addiu      $s1, $sp, 0x10
/* 991F0 800E2E30 AFB50034 */  sw         $s5, 0x34($sp)
/* 991F4 800E2E34 3415FFFF */  ori        $s5, $zero, 0xFFFF
/* 991F8 800E2E38 AFB40030 */  sw         $s4, 0x30($sp)
/* 991FC 800E2E3C 3414FFFE */  ori        $s4, $zero, 0xFFFE
/* 99200 800E2E40 AFBF003C */  sw         $ra, 0x3C($sp)
/* 99204 800E2E44 AFB60038 */  sw         $s6, 0x38($sp)
/* 99208 800E2E48 AFB00020 */  sw         $s0, 0x20($sp)
/* 9920C 800E2E4C 8E420008 */  lw         $v0, 0x8($s2)
/* 99210 800E2E50 8E500004 */  lw         $s0, 0x4($s2)
/* 99214 800E2E54 8C560004 */  lw         $s6, 0x4($v0)
.Lrace_800E2E58:
/* 99218 800E2E58 9602000C */  lhu        $v0, 0xC($s0)
/* 9921C 800E2E5C 8E430010 */  lw         $v1, 0x10($s2)
/* 99220 800E2E60 000210C0 */  sll        $v0, $v0, 3
/* 99224 800E2E64 00621821 */  addu       $v1, $v1, $v0
/* 99228 800E2E68 94630000 */  lhu        $v1, 0x0($v1)
/* 9922C 800E2E6C C6600000 */  lwc1       $f0, 0x0($s3)
/* 99230 800E2E70 00031040 */  sll        $v0, $v1, 1
/* 99234 800E2E74 00431021 */  addu       $v0, $v0, $v1
/* 99238 800E2E78 00021080 */  sll        $v0, $v0, 2
/* 9923C 800E2E7C 02C21021 */  addu       $v0, $s6, $v0
/* 99240 800E2E80 C4420000 */  lwc1       $f2, 0x0($v0)
/* 99244 800E2E84 46020001 */  sub.s      $f0, $f0, $f2
/* 99248 800E2E88 E7A00010 */  swc1       $f0, 0x10($sp)
/* 9924C 800E2E8C C6600004 */  lwc1       $f0, 0x4($s3)
/* 99250 800E2E90 C4420004 */  lwc1       $f2, 0x4($v0)
/* 99254 800E2E94 46020001 */  sub.s      $f0, $f0, $f2
/* 99258 800E2E98 E6200004 */  swc1       $f0, 0x4($s1)
/* 9925C 800E2E9C C6600008 */  lwc1       $f0, 0x8($s3)
/* 99260 800E2EA0 C4420008 */  lwc1       $f2, 0x8($v0)
/* 99264 800E2EA4 46020001 */  sub.s      $f0, $f0, $f2
/* 99268 800E2EA8 02002021 */  addu       $a0, $s0, $zero
/* 9926C 800E2EAC 02202821 */  addu       $a1, $s1, $zero
/* 99270 800E2EB0 0C038C65 */  jal        func_race_800E3194
/* 99274 800E2EB4 E6200008 */   swc1      $f0, 0x8($s1)
/* 99278 800E2EB8 44801000 */  mtc1       $zero, $f2
/* 9927C 800E2EBC 4602003E */  c.le.s     $f0, $f2
/* 99280 800E2EC0 00000000 */  nop
/* 99284 800E2EC4 45000008 */  bc1f       .Lrace_800E2EE8
/* 99288 800E2EC8 00000000 */   nop
/* 9928C 800E2ECC 96030012 */  lhu        $v1, 0x12($s0)
/* 99290 800E2ED0 10750010 */  beq        $v1, $s5, .Lrace_800E2F14
/* 99294 800E2ED4 24020001 */   addiu     $v0, $zero, 0x1
/* 99298 800E2ED8 1074000E */  beq        $v1, $s4, .Lrace_800E2F14
/* 9929C 800E2EDC 00001021 */   addu      $v0, $zero, $zero
/* 992A0 800E2EE0 08038BBF */  j          .Lrace_800E2EFC
/* 992A4 800E2EE4 00031080 */   sll       $v0, $v1, 2
.Lrace_800E2EE8:
/* 992A8 800E2EE8 96030010 */  lhu        $v1, 0x10($s0)
/* 992AC 800E2EEC 10750009 */  beq        $v1, $s5, .Lrace_800E2F14
/* 992B0 800E2EF0 24020001 */   addiu     $v0, $zero, 0x1
/* 992B4 800E2EF4 10740006 */  beq        $v1, $s4, .Lrace_800E2F10
/* 992B8 800E2EF8 00031080 */   sll       $v0, $v1, 2
.Lrace_800E2EFC:
/* 992BC 800E2EFC 00431021 */  addu       $v0, $v0, $v1
/* 992C0 800E2F00 8E430004 */  lw         $v1, 0x4($s2)
/* 992C4 800E2F04 00021080 */  sll        $v0, $v0, 2
/* 992C8 800E2F08 08038B96 */  j          .Lrace_800E2E58
/* 992CC 800E2F0C 00628021 */   addu      $s0, $v1, $v0
.Lrace_800E2F10:
/* 992D0 800E2F10 00001021 */  addu       $v0, $zero, $zero
.Lrace_800E2F14:
/* 992D4 800E2F14 8FBF003C */  lw         $ra, 0x3C($sp)
/* 992D8 800E2F18 8FB60038 */  lw         $s6, 0x38($sp)
/* 992DC 800E2F1C 8FB50034 */  lw         $s5, 0x34($sp)
/* 992E0 800E2F20 8FB40030 */  lw         $s4, 0x30($sp)
/* 992E4 800E2F24 8FB3002C */  lw         $s3, 0x2C($sp)
/* 992E8 800E2F28 8FB20028 */  lw         $s2, 0x28($sp)
/* 992EC 800E2F2C 8FB10024 */  lw         $s1, 0x24($sp)
/* 992F0 800E2F30 8FB00020 */  lw         $s0, 0x20($sp)
/* 992F4 800E2F34 03E00008 */  jr         $ra
/* 992F8 800E2F38 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800E2F3C
/* 992FC 800E2F3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 99300 800E2F40 AFB20018 */  sw         $s2, 0x18($sp)
/* 99304 800E2F44 00809021 */  addu       $s2, $a0, $zero
/* 99308 800E2F48 3C028013 */  lui        $v0, %hi(D_race_801320F0)
/* 9930C 800E2F4C 8C4420F0 */  lw         $a0, %lo(D_race_801320F0)($v0)
/* 99310 800E2F50 AFBF001C */  sw         $ra, 0x1C($sp)
/* 99314 800E2F54 AFB10014 */  sw         $s1, 0x14($sp)
/* 99318 800E2F58 0C01FB65 */  jal        func_8007ED94
/* 9931C 800E2F5C AFB00010 */   sw        $s0, 0x10($sp)
/* 99320 800E2F60 8E440000 */  lw         $a0, 0x0($s2)
/* 99324 800E2F64 0C00943C */  jal        func_800250F0
/* 99328 800E2F68 00042040 */   sll       $a0, $a0, 1
/* 9932C 800E2F6C 0C01FB72 */  jal        func_8007EDC8
/* 99330 800E2F70 00408821 */   addu      $s1, $v0, $zero
/* 99334 800E2F74 16200008 */  bnez       $s1, .Lrace_800E2F98
/* 99338 800E2F78 00008021 */   addu      $s0, $zero, $zero
/* 9933C 800E2F7C 3C04800D */  lui        $a0, %hi(D_race_800CB750)
/* 99340 800E2F80 2484B750 */  addiu      $a0, $a0, %lo(D_race_800CB750)
/* 99344 800E2F84 00002821 */  addu       $a1, $zero, $zero
/* 99348 800E2F88 00A03021 */  addu       $a2, $a1, $zero
/* 9934C 800E2F8C 0C011ACF */  jal        func_80046B3C
/* 99350 800E2F90 00A03821 */   addu      $a3, $a1, $zero
/* 99354 800E2F94 00008021 */  addu       $s0, $zero, $zero
.Lrace_800E2F98:
/* 99358 800E2F98 02003821 */  addu       $a3, $s0, $zero
/* 9935C 800E2F9C 02002821 */  addu       $a1, $s0, $zero
/* 99360 800E2FA0 02004021 */  addu       $t0, $s0, $zero
/* 99364 800E2FA4 A6200000 */  sh         $zero, 0x0($s1)
/* 99368 800E2FA8 3C09FFFF */  lui        $t1, (0xFFFF0002 >> 16)
/* 9936C 800E2FAC 35290002 */  ori        $t1, $t1, (0xFFFF0002 & 0xFFFF)
/* 99370 800E2FB0 02203021 */  addu       $a2, $s1, $zero
.Lrace_800E2FB4:
/* 99374 800E2FB4 00051080 */  sll        $v0, $a1, 2
/* 99378 800E2FB8 00451021 */  addu       $v0, $v0, $a1
/* 9937C 800E2FBC 8E430004 */  lw         $v1, 0x4($s2)
/* 99380 800E2FC0 00021080 */  sll        $v0, $v0, 2
/* 99384 800E2FC4 00621821 */  addu       $v1, $v1, $v0
/* 99388 800E2FC8 0207102B */  sltu       $v0, $s0, $a3
/* 9938C 800E2FCC 54400001 */  bnel       $v0, $zero, .Lrace_800E2FD4
/* 99390 800E2FD0 00E08021 */   addu      $s0, $a3, $zero
.Lrace_800E2FD4:
/* 99394 800E2FD4 94620012 */  lhu        $v0, 0x12($v1)
/* 99398 800E2FD8 11020011 */  beq        $t0, $v0, .Lrace_800E3020
/* 9939C 800E2FDC 00000000 */   nop
/* 993A0 800E2FE0 94640010 */  lhu        $a0, 0x10($v1)
/* 993A4 800E2FE4 11040004 */  beq        $t0, $a0, .Lrace_800E2FF8
/* 993A8 800E2FE8 00891021 */   addu      $v0, $a0, $t1
/* 993AC 800E2FEC 2C420002 */  sltiu      $v0, $v0, 0x2
/* 993B0 800E2FF0 10400006 */  beqz       $v0, .Lrace_800E300C
/* 993B4 800E2FF4 00A04021 */   addu      $t0, $a1, $zero
.Lrace_800E2FF8:
/* 993B8 800E2FF8 94640012 */  lhu        $a0, 0x12($v1)
/* 993BC 800E2FFC 00891021 */  addu       $v0, $a0, $t1
/* 993C0 800E3000 2C420002 */  sltiu      $v0, $v0, 0x2
/* 993C4 800E3004 14400006 */  bnez       $v0, .Lrace_800E3020
/* 993C8 800E3008 00A04021 */   addu      $t0, $a1, $zero
.Lrace_800E300C:
/* 993CC 800E300C 00802821 */  addu       $a1, $a0, $zero
/* 993D0 800E3010 24C60002 */  addiu      $a2, $a2, 0x2
/* 993D4 800E3014 24E70001 */  addiu      $a3, $a3, 0x1
/* 993D8 800E3018 08038BED */  j          .Lrace_800E2FB4
/* 993DC 800E301C A4C50000 */   sh        $a1, 0x0($a2)
.Lrace_800E3020:
/* 993E0 800E3020 10E00005 */  beqz       $a3, .Lrace_800E3038
/* 993E4 800E3024 00A04021 */   addu      $t0, $a1, $zero
/* 993E8 800E3028 24C6FFFE */  addiu      $a2, $a2, -0x2
/* 993EC 800E302C 94C50000 */  lhu        $a1, 0x0($a2)
/* 993F0 800E3030 08038BED */  j          .Lrace_800E2FB4
/* 993F4 800E3034 24E7FFFF */   addiu     $a3, $a3, -0x1
.Lrace_800E3038:
/* 993F8 800E3038 12200004 */  beqz       $s1, .Lrace_800E304C
/* 993FC 800E303C 26020001 */   addiu     $v0, $s0, 0x1
/* 99400 800E3040 0C009444 */  jal        func_80025110
/* 99404 800E3044 02202021 */   addu      $a0, $s1, $zero
/* 99408 800E3048 26020001 */  addiu      $v0, $s0, 0x1
.Lrace_800E304C:
/* 9940C 800E304C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 99410 800E3050 8FB20018 */  lw         $s2, 0x18($sp)
/* 99414 800E3054 8FB10014 */  lw         $s1, 0x14($sp)
/* 99418 800E3058 8FB00010 */  lw         $s0, 0x10($sp)
/* 9941C 800E305C 03E00008 */  jr         $ra
/* 99420 800E3060 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E3064
/* 99424 800E3064 00803821 */  addu       $a3, $a0, $zero
/* 99428 800E3068 8CE20000 */  lw         $v0, 0x0($a3)
/* 9942C 800E306C 1040000C */  beqz       $v0, .Lrace_800E30A0
/* 99430 800E3070 00003021 */   addu      $a2, $zero, $zero
/* 99434 800E3074 00C01821 */  addu       $v1, $a2, $zero
.Lrace_800E3078:
/* 99438 800E3078 8CE20004 */  lw         $v0, 0x4($a3)
/* 9943C 800E307C 00621021 */  addu       $v0, $v1, $v0
/* 99440 800E3080 C4400004 */  lwc1       $f0, 0x4($v0)
/* 99444 800E3084 24C60001 */  addiu      $a2, $a2, 0x1
/* 99448 800E3088 46000007 */  neg.s      $f0, $f0
/* 9944C 800E308C E4400004 */  swc1       $f0, 0x4($v0)
/* 99450 800E3090 8CE20000 */  lw         $v0, 0x0($a3)
/* 99454 800E3094 00C2102B */  sltu       $v0, $a2, $v0
/* 99458 800E3098 1440FFF7 */  bnez       $v0, .Lrace_800E3078
/* 9945C 800E309C 24630014 */   addiu     $v1, $v1, 0x14
.Lrace_800E30A0:
/* 99460 800E30A0 8CE20008 */  lw         $v0, 0x8($a3)
/* 99464 800E30A4 00003021 */  addu       $a2, $zero, $zero
/* 99468 800E30A8 8C430004 */  lw         $v1, 0x4($v0)
.Lrace_800E30AC:
/* 9946C 800E30AC 8CE20008 */  lw         $v0, 0x8($a3)
/* 99470 800E30B0 94420000 */  lhu        $v0, 0x0($v0)
/* 99474 800E30B4 00C2102B */  sltu       $v0, $a2, $v0
/* 99478 800E30B8 10400006 */  beqz       $v0, .Lrace_800E30D4
/* 9947C 800E30BC 24C60001 */   addiu     $a2, $a2, 0x1
/* 99480 800E30C0 C4600004 */  lwc1       $f0, 0x4($v1)
/* 99484 800E30C4 46000007 */  neg.s      $f0, $f0
/* 99488 800E30C8 E4600004 */  swc1       $f0, 0x4($v1)
/* 9948C 800E30CC 08038C2B */  j          .Lrace_800E30AC
/* 99490 800E30D0 2463000C */   addiu     $v1, $v1, 0xC
.Lrace_800E30D4:
/* 99494 800E30D4 8CE2000C */  lw         $v0, 0xC($a3)
/* 99498 800E30D8 1040000F */  beqz       $v0, .Lrace_800E3118
/* 9949C 800E30DC 00003021 */   addu      $a2, $zero, $zero
.Lrace_800E30E0:
/* 994A0 800E30E0 8CE20010 */  lw         $v0, 0x10($a3)
/* 994A4 800E30E4 000618C0 */  sll        $v1, $a2, 3
/* 994A8 800E30E8 00621021 */  addu       $v0, $v1, $v0
/* 994AC 800E30EC 94440004 */  lhu        $a0, 0x4($v0)
/* 994B0 800E30F0 94450002 */  lhu        $a1, 0x2($v0)
/* 994B4 800E30F4 A4440002 */  sh         $a0, 0x2($v0)
/* 994B8 800E30F8 8CE20010 */  lw         $v0, 0x10($a3)
/* 994BC 800E30FC 00621821 */  addu       $v1, $v1, $v0
/* 994C0 800E3100 A4650004 */  sh         $a1, 0x4($v1)
/* 994C4 800E3104 8CE2000C */  lw         $v0, 0xC($a3)
/* 994C8 800E3108 24C60001 */  addiu      $a2, $a2, 0x1
/* 994CC 800E310C 00C2102B */  sltu       $v0, $a2, $v0
/* 994D0 800E3110 1440FFF3 */  bnez       $v0, .Lrace_800E30E0
/* 994D4 800E3114 00000000 */   nop
.Lrace_800E3118:
/* 994D8 800E3118 03E00008 */  jr         $ra
/* 994DC 800E311C 00000000 */   nop

glabel func_race_800E3120
/* 994E0 800E3120 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 994E4 800E3124 E4800000 */  swc1       $f0, 0x0($a0)
/* 994E8 800E3128 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 994EC 800E312C E4800004 */  swc1       $f0, 0x4($a0)
/* 994F0 800E3130 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 994F4 800E3134 03E00008 */  jr         $ra
/* 994F8 800E3138 E4800008 */   swc1      $f0, 0x8($a0)

glabel func_race_800E313C
/* 994FC 800E313C 3C01800D */  lui        $at, %hi(D_race_800CB75C)
/* 99500 800E3140 C424B75C */  lwc1       $f4, %lo(D_race_800CB75C)($at)
/* 99504 800E3144 44853000 */  mtc1       $a1, $f6
/* 99508 800E3148 468031A0 */  cvt.s.w    $f6, $f6
/* 9950C 800E314C 46043182 */  mul.s      $f6, $f6, $f4
/* 99510 800E3150 44861000 */  mtc1       $a2, $f2
/* 99514 800E3154 468010A0 */  cvt.s.w    $f2, $f2
/* 99518 800E3158 46041082 */  mul.s      $f2, $f2, $f4
/* 9951C 800E315C 44870000 */  mtc1       $a3, $f0
/* 99520 800E3160 46800020 */  cvt.s.w    $f0, $f0
/* 99524 800E3164 46040002 */  mul.s      $f0, $f0, $f4
/* 99528 800E3168 E4860000 */  swc1       $f6, 0x0($a0)
/* 9952C 800E316C E4820004 */  swc1       $f2, 0x4($a0)
/* 99530 800E3170 03E00008 */  jr         $ra
/* 99534 800E3174 E4800008 */   swc1      $f0, 0x8($a0)

glabel func_race_800E3178
/* 99538 800E3178 C4800000 */  lwc1       $f0, 0x0($a0)
/* 9953C 800E317C E4A00000 */  swc1       $f0, 0x0($a1)
/* 99540 800E3180 C4800004 */  lwc1       $f0, 0x4($a0)
/* 99544 800E3184 E4A00004 */  swc1       $f0, 0x4($a1)
/* 99548 800E3188 C4800008 */  lwc1       $f0, 0x8($a0)
/* 9954C 800E318C 03E00008 */  jr         $ra
/* 99550 800E3190 E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_800E3194
/* 99554 800E3194 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 99558 800E3198 C4800000 */  lwc1       $f0, 0x0($a0)
/* 9955C 800E319C 46003182 */  mul.s      $f6, $f6, $f0
/* 99560 800E31A0 C4A40004 */  lwc1       $f4, 0x4($a1)
/* 99564 800E31A4 C4800004 */  lwc1       $f0, 0x4($a0)
/* 99568 800E31A8 46002102 */  mul.s      $f4, $f4, $f0
/* 9956C 800E31AC C4820008 */  lwc1       $f2, 0x8($a0)
/* 99570 800E31B0 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 99574 800E31B4 46020002 */  mul.s      $f0, $f0, $f2
/* 99578 800E31B8 46043180 */  add.s      $f6, $f6, $f4
/* 9957C 800E31BC 03E00008 */  jr         $ra
/* 99580 800E31C0 46003000 */   add.s     $f0, $f6, $f0

glabel func_race_800E31C4
/* 99584 800E31C4 3C028013 */  lui        $v0, %hi(D_race_801320F0)
/* 99588 800E31C8 03E00008 */  jr         $ra
/* 9958C 800E31CC AC4420F0 */   sw        $a0, %lo(D_race_801320F0)($v0)

glabel func_race_800E31D0
/* 99590 800E31D0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 99594 800E31D4 AFB30034 */  sw         $s3, 0x34($sp)
/* 99598 800E31D8 00809821 */  addu       $s3, $a0, $zero
/* 9959C 800E31DC AFBF004C */  sw         $ra, 0x4C($sp)
/* 995A0 800E31E0 AFBE0048 */  sw         $fp, 0x48($sp)
/* 995A4 800E31E4 AFB70044 */  sw         $s7, 0x44($sp)
/* 995A8 800E31E8 AFB60040 */  sw         $s6, 0x40($sp)
/* 995AC 800E31EC AFB5003C */  sw         $s5, 0x3C($sp)
/* 995B0 800E31F0 AFB40038 */  sw         $s4, 0x38($sp)
/* 995B4 800E31F4 AFB20030 */  sw         $s2, 0x30($sp)
/* 995B8 800E31F8 AFB1002C */  sw         $s1, 0x2C($sp)
/* 995BC 800E31FC AFB00028 */  sw         $s0, 0x28($sp)
/* 995C0 800E3200 F7B40050 */  sdc1       $f20, 0x50($sp)
/* 995C4 800E3204 C6660038 */  lwc1       $f6, 0x38($s3)
/* 995C8 800E3208 C660002C */  lwc1       $f0, 0x2C($s3)
/* 995CC 800E320C 3C128013 */  lui        $s2, %hi(D_race_801324F0)
/* 995D0 800E3210 46003181 */  sub.s      $f6, $f6, $f0
/* 995D4 800E3214 26620038 */  addiu      $v0, $s3, 0x38
/* 995D8 800E3218 2663002C */  addiu      $v1, $s3, 0x2C
/* 995DC 800E321C E64624F0 */  swc1       $f6, %lo(D_race_801324F0)($s2)
/* 995E0 800E3220 C4480004 */  lwc1       $f8, 0x4($v0)
/* 995E4 800E3224 C4600004 */  lwc1       $f0, 0x4($v1)
/* 995E8 800E3228 46004201 */  sub.s      $f8, $f8, $f0
/* 995EC 800E322C 265124F0 */  addiu      $s1, $s2, %lo(D_race_801324F0)
/* 995F0 800E3230 E6280004 */  swc1       $f8, 0x4($s1)
/* 995F4 800E3234 C4420008 */  lwc1       $f2, 0x8($v0)
/* 995F8 800E3238 C4600008 */  lwc1       $f0, 0x8($v1)
/* 995FC 800E323C 46001081 */  sub.s      $f2, $f2, $f0
/* 99600 800E3240 E6220008 */  swc1       $f2, 0x8($s1)
/* 99604 800E3244 C6640044 */  lwc1       $f4, 0x44($s3)
/* 99608 800E3248 C6600048 */  lwc1       $f0, 0x48($s3)
/* 9960C 800E324C 46002000 */  add.s      $f0, $f4, $f0
/* 99610 800E3250 46002503 */  div.s      $f20, $f4, $f0
/* 99614 800E3254 46143182 */  mul.s      $f6, $f6, $f20
/* 99618 800E3258 00000000 */  nop
/* 9961C 800E325C 46144202 */  mul.s      $f8, $f8, $f20
/* 99620 800E3260 00000000 */  nop
/* 99624 800E3264 46141082 */  mul.s      $f2, $f2, $f20
/* 99628 800E3268 8E620054 */  lw         $v0, 0x54($s3)
/* 9962C 800E326C E7A60010 */  swc1       $f6, 0x10($sp)
/* 99630 800E3270 E7A80014 */  swc1       $f8, 0x14($sp)
/* 99634 800E3274 E7A20018 */  swc1       $f2, 0x18($sp)
/* 99638 800E3278 C660002C */  lwc1       $f0, 0x2C($s3)
/* 9963C 800E327C 46060000 */  add.s      $f0, $f0, $f6
/* 99640 800E3280 E4400000 */  swc1       $f0, 0x0($v0)
/* 99644 800E3284 C4600004 */  lwc1       $f0, 0x4($v1)
/* 99648 800E3288 C7A20014 */  lwc1       $f2, 0x14($sp)
/* 9964C 800E328C 3C068013 */  lui        $a2, %hi(D_race_80132520)
/* 99650 800E3290 46020000 */  add.s      $f0, $f0, $f2
/* 99654 800E3294 24D02520 */  addiu      $s0, $a2, %lo(D_race_80132520)
/* 99658 800E3298 02002821 */  addu       $a1, $s0, $zero
/* 9965C 800E329C E4400004 */  swc1       $f0, 0x4($v0)
/* 99660 800E32A0 C4600008 */  lwc1       $f0, 0x8($v1)
/* 99664 800E32A4 C7A20018 */  lwc1       $f2, 0x18($sp)
/* 99668 800E32A8 3C078013 */  lui        $a3, %hi(D_race_80132510)
/* 9966C 800E32AC 46020000 */  add.s      $f0, $f0, $f2
/* 99670 800E32B0 00C0B821 */  addu       $s7, $a2, $zero
/* 99674 800E32B4 E4400008 */  swc1       $f0, 0x8($v0)
/* 99678 800E32B8 8E64004C */  lw         $a0, 0x4C($s3)
/* 9967C 800E32BC 8E660010 */  lw         $a2, 0x10($s3)
/* 99680 800E32C0 9483000C */  lhu        $v1, 0xC($a0)
/* 99684 800E32C4 9482000E */  lhu        $v0, 0xE($a0)
/* 99688 800E32C8 000318C0 */  sll        $v1, $v1, 3
/* 9968C 800E32CC 00C3A021 */  addu       $s4, $a2, $v1
/* 99690 800E32D0 000210C0 */  sll        $v0, $v0, 3
/* 99694 800E32D4 8E630008 */  lw         $v1, 0x8($s3)
/* 99698 800E32D8 02821021 */  addu       $v0, $s4, $v0
/* 9969C 800E32DC AFA20020 */  sw         $v0, 0x20($sp)
/* 996A0 800E32E0 8C750004 */  lw         $s5, 0x4($v1)
/* 996A4 800E32E4 0C038C5E */  jal        func_race_800E3178
/* 996A8 800E32E8 24FE2510 */   addiu     $fp, $a3, %lo(D_race_80132510)
/* 996AC 800E32EC 8E620050 */  lw         $v0, 0x50($s3)
/* 996B0 800E32F0 C6E02520 */  lwc1       $f0, %lo(D_race_80132520)($s7)
/* 996B4 800E32F4 0000B021 */  addu       $s6, $zero, $zero
/* 996B8 800E32F8 E4400024 */  swc1       $f0, 0x24($v0)
/* 996BC 800E32FC 8E620050 */  lw         $v0, 0x50($s3)
/* 996C0 800E3300 C6000004 */  lwc1       $f0, 0x4($s0)
/* 996C4 800E3304 02209021 */  addu       $s2, $s1, $zero
/* 996C8 800E3308 E4400028 */  swc1       $f0, 0x28($v0)
/* 996CC 800E330C 8E620050 */  lw         $v0, 0x50($s3)
/* 996D0 800E3310 C6000008 */  lwc1       $f0, 0x8($s0)
/* 996D4 800E3314 26910006 */  addiu      $s1, $s4, 0x6
/* 996D8 800E3318 E440002C */  swc1       $f0, 0x2C($v0)
.Lrace_800E331C:
/* 996DC 800E331C 8FA80020 */  lw         $t0, 0x20($sp)
/* 996E0 800E3320 0288102B */  sltu       $v0, $s4, $t0
/* 996E4 800E3324 1040008E */  beqz       $v0, .Lrace_800E3560
/* 996E8 800E3328 00000000 */   nop
/* 996EC 800E332C 96830000 */  lhu        $v1, 0x0($s4)
/* 996F0 800E3330 00031040 */  sll        $v0, $v1, 1
/* 996F4 800E3334 00431021 */  addu       $v0, $v0, $v1
/* 996F8 800E3338 00021080 */  sll        $v0, $v0, 2
/* 996FC 800E333C 8E630050 */  lw         $v1, 0x50($s3)
/* 99700 800E3340 00551021 */  addu       $v0, $v0, $s5
/* 99704 800E3344 8C490000 */  lw         $t1, 0x0($v0)
/* 99708 800E3348 8C4A0004 */  lw         $t2, 0x4($v0)
/* 9970C 800E334C 8C470008 */  lw         $a3, 0x8($v0)
/* 99710 800E3350 AC690000 */  sw         $t1, 0x0($v1)
/* 99714 800E3354 AC6A0004 */  sw         $t2, 0x4($v1)
/* 99718 800E3358 AC670008 */  sw         $a3, 0x8($v1)
/* 9971C 800E335C 9623FFFC */  lhu        $v1, -0x4($s1)
/* 99720 800E3360 00031040 */  sll        $v0, $v1, 1
/* 99724 800E3364 00431021 */  addu       $v0, $v0, $v1
/* 99728 800E3368 00021080 */  sll        $v0, $v0, 2
/* 9972C 800E336C 8E630050 */  lw         $v1, 0x50($s3)
/* 99730 800E3370 00551021 */  addu       $v0, $v0, $s5
/* 99734 800E3374 8C490000 */  lw         $t1, 0x0($v0)
/* 99738 800E3378 8C4A0004 */  lw         $t2, 0x4($v0)
/* 9973C 800E337C 8C470008 */  lw         $a3, 0x8($v0)
/* 99740 800E3380 AC69000C */  sw         $t1, 0xC($v1)
/* 99744 800E3384 AC6A0010 */  sw         $t2, 0x10($v1)
/* 99748 800E3388 AC670014 */  sw         $a3, 0x14($v1)
/* 9974C 800E338C 9623FFFE */  lhu        $v1, -0x2($s1)
/* 99750 800E3390 00031040 */  sll        $v0, $v1, 1
/* 99754 800E3394 00431021 */  addu       $v0, $v0, $v1
/* 99758 800E3398 00021080 */  sll        $v0, $v0, 2
/* 9975C 800E339C 8E630050 */  lw         $v1, 0x50($s3)
/* 99760 800E33A0 00551021 */  addu       $v0, $v0, $s5
/* 99764 800E33A4 8C490000 */  lw         $t1, 0x0($v0)
/* 99768 800E33A8 8C4A0004 */  lw         $t2, 0x4($v0)
/* 9976C 800E33AC 8C470008 */  lw         $a3, 0x8($v0)
/* 99770 800E33B0 AC690018 */  sw         $t1, 0x18($v1)
/* 99774 800E33B4 AC6A001C */  sw         $t2, 0x1C($v1)
/* 99778 800E33B8 AC670020 */  sw         $a3, 0x20($v1)
/* 9977C 800E33BC 8E640054 */  lw         $a0, 0x54($s3)
/* 99780 800E33C0 8E650050 */  lw         $a1, 0x50($s3)
/* 99784 800E33C4 0C00136F */  jal        func_80004DBC
/* 99788 800E33C8 00000000 */   nop
/* 9978C 800E33CC 10400061 */  beqz       $v0, .Lrace_800E3554
/* 99790 800E33D0 3C098013 */   lui       $t1, %hi(D_race_80132500)
/* 99794 800E33D4 8E620050 */  lw         $v0, 0x50($s3)
/* 99798 800E33D8 C4500000 */  lwc1       $f16, 0x0($v0)
/* 9979C 800E33DC C440000C */  lwc1       $f0, 0xC($v0)
/* 997A0 800E33E0 46008401 */  sub.s      $f16, $f16, $f0
/* 997A4 800E33E4 2443000C */  addiu      $v1, $v0, 0xC
/* 997A8 800E33E8 E5302500 */  swc1       $f16, %lo(D_race_80132500)($t1)
/* 997AC 800E33EC C44C0004 */  lwc1       $f12, 0x4($v0)
/* 997B0 800E33F0 C4600004 */  lwc1       $f0, 0x4($v1)
/* 997B4 800E33F4 46006301 */  sub.s      $f12, $f12, $f0
/* 997B8 800E33F8 01205021 */  addu       $t2, $t1, $zero
/* 997BC 800E33FC 254A2500 */  addiu      $t2, $t2, %lo(D_race_80132500)
/* 997C0 800E3400 E54C0004 */  swc1       $f12, 0x4($t2)
/* 997C4 800E3404 C4420008 */  lwc1       $f2, 0x8($v0)
/* 997C8 800E3408 C4600008 */  lwc1       $f0, 0x8($v1)
/* 997CC 800E340C 46001081 */  sub.s      $f2, $f2, $f0
/* 997D0 800E3410 E5420008 */  swc1       $f2, 0x8($t2)
/* 997D4 800E3414 8E620050 */  lw         $v0, 0x50($s3)
/* 997D8 800E3418 C4460018 */  lwc1       $f6, 0x18($v0)
/* 997DC 800E341C C440000C */  lwc1       $f0, 0xC($v0)
/* 997E0 800E3420 3C078013 */  lui        $a3, %hi(D_race_80132510)
/* 997E4 800E3424 46003181 */  sub.s      $f6, $f6, $f0
/* 997E8 800E3428 24430018 */  addiu      $v1, $v0, 0x18
/* 997EC 800E342C 2442000C */  addiu      $v0, $v0, 0xC
/* 997F0 800E3430 E4E62510 */  swc1       $f6, %lo(D_race_80132510)($a3)
/* 997F4 800E3434 C4640004 */  lwc1       $f4, 0x4($v1)
/* 997F8 800E3438 C4400004 */  lwc1       $f0, 0x4($v0)
/* 997FC 800E343C 46002101 */  sub.s      $f4, $f4, $f0
/* 99800 800E3440 46022382 */  mul.s      $f14, $f4, $f2
/* 99804 800E3444 00000000 */  nop
/* 99808 800E3448 46023082 */  mul.s      $f2, $f6, $f2
/* 9980C 800E344C 00000000 */  nop
/* 99810 800E3450 460C3182 */  mul.s      $f6, $f6, $f12
/* 99814 800E3454 E7C40004 */  swc1       $f4, 0x4($fp)
/* 99818 800E3458 46102102 */  mul.s      $f4, $f4, $f16
/* 9981C 800E345C C4680008 */  lwc1       $f8, 0x8($v1)
/* 99820 800E3460 C4400008 */  lwc1       $f0, 0x8($v0)
/* 99824 800E3464 46004201 */  sub.s      $f8, $f8, $f0
/* 99828 800E3468 460C4002 */  mul.s      $f0, $f8, $f12
/* 9982C 800E346C 00000000 */  nop
/* 99830 800E3470 46104282 */  mul.s      $f10, $f8, $f16
/* 99834 800E3474 46043181 */  sub.s      $f6, $f6, $f4
/* 99838 800E3478 C6440008 */  lwc1       $f4, 0x8($s2)
/* 9983C 800E347C 46043102 */  mul.s      $f4, $f6, $f4
/* 99840 800E3480 3C088013 */  lui        $t0, %hi(D_race_801324F0)
/* 99844 800E3484 46007381 */  sub.s      $f14, $f14, $f0
/* 99848 800E3488 C50024F0 */  lwc1       $f0, %lo(D_race_801324F0)($t0)
/* 9984C 800E348C 46007002 */  mul.s      $f0, $f14, $f0
/* 99850 800E3490 46025281 */  sub.s      $f10, $f10, $f2
/* 99854 800E3494 C6420004 */  lwc1       $f2, 0x4($s2)
/* 99858 800E3498 46025082 */  mul.s      $f2, $f10, $f2
/* 9985C 800E349C 26F02520 */  addiu      $s0, $s7, %lo(D_race_80132520)
/* 99860 800E34A0 E7C80008 */  swc1       $f8, 0x8($fp)
/* 99864 800E34A4 46020000 */  add.s      $f0, $f0, $f2
/* 99868 800E34A8 E6060008 */  swc1       $f6, 0x8($s0)
/* 9986C 800E34AC 44801000 */  mtc1       $zero, $f2
/* 99870 800E34B0 46040000 */  add.s      $f0, $f0, $f4
/* 99874 800E34B4 E6EE2520 */  swc1       $f14, %lo(D_race_80132520)($s7)
/* 99878 800E34B8 4600103C */  c.lt.s     $f2, $f0
/* 9987C 800E34BC 00000000 */  nop
/* 99880 800E34C0 45000003 */  bc1f       .Lrace_800E34D0
/* 99884 800E34C4 E60A0004 */   swc1      $f10, 0x4($s0)
/* 99888 800E34C8 08038D55 */  j          .Lrace_800E3554
/* 9988C 800E34CC 0280B021 */   addu      $s6, $s4, $zero
.Lrace_800E34D0:
/* 99890 800E34D0 02002021 */  addu       $a0, $s0, $zero
/* 99894 800E34D4 0C000F26 */  jal        func_80003C98
/* 99898 800E34D8 02002821 */   addu      $a1, $s0, $zero
/* 9989C 800E34DC 8E620050 */  lw         $v0, 0x50($s3)
/* 998A0 800E34E0 C6E02520 */  lwc1       $f0, %lo(D_race_80132520)($s7)
/* 998A4 800E34E4 E4400024 */  swc1       $f0, 0x24($v0)
/* 998A8 800E34E8 8E620050 */  lw         $v0, 0x50($s3)
/* 998AC 800E34EC C6000004 */  lwc1       $f0, 0x4($s0)
/* 998B0 800E34F0 E4400028 */  swc1       $f0, 0x28($v0)
/* 998B4 800E34F4 8E620050 */  lw         $v0, 0x50($s3)
/* 998B8 800E34F8 C6000008 */  lwc1       $f0, 0x8($s0)
/* 998BC 800E34FC E440002C */  swc1       $f0, 0x2C($v0)
/* 998C0 800E3500 8E620050 */  lw         $v0, 0x50($s3)
/* 998C4 800E3504 C6E22520 */  lwc1       $f2, %lo(D_race_80132520)($s7)
/* 998C8 800E3508 C4400000 */  lwc1       $f0, 0x0($v0)
/* 998CC 800E350C 46001082 */  mul.s      $f2, $f2, $f0
/* 998D0 800E3510 C6060004 */  lwc1       $f6, 0x4($s0)
/* 998D4 800E3514 C4400004 */  lwc1       $f0, 0x4($v0)
/* 998D8 800E3518 46003182 */  mul.s      $f6, $f6, $f0
/* 998DC 800E351C C6040008 */  lwc1       $f4, 0x8($s0)
/* 998E0 800E3520 C4400008 */  lwc1       $f0, 0x8($v0)
/* 998E4 800E3524 46002102 */  mul.s      $f4, $f4, $f0
/* 998E8 800E3528 46061080 */  add.s      $f2, $f2, $f6
/* 998EC 800E352C 46041080 */  add.s      $f2, $f2, $f4
/* 998F0 800E3530 46001087 */  neg.s      $f2, $f2
/* 998F4 800E3534 E4420030 */  swc1       $f2, 0x30($v0)
/* 998F8 800E3538 8E640058 */  lw         $a0, 0x58($s3)
/* 998FC 800E353C 10800053 */  beqz       $a0, .Lrace_800E368C
/* 99900 800E3540 00000000 */   nop
/* 99904 800E3544 8E630020 */  lw         $v1, 0x20($s3)
/* 99908 800E3548 96220000 */  lhu        $v0, 0x0($s1)
/* 9990C 800E354C 08038D9E */  j          .Lrace_800E3678
/* 99910 800E3550 00000000 */   nop
.Lrace_800E3554:
/* 99914 800E3554 26310008 */  addiu      $s1, $s1, 0x8
/* 99918 800E3558 08038CC7 */  j          .Lrace_800E331C
/* 9991C 800E355C 26940008 */   addiu     $s4, $s4, 0x8
.Lrace_800E3560:
/* 99920 800E3560 12C0004F */  beqz       $s6, .Lrace_800E36A0
/* 99924 800E3564 3C118013 */   lui       $s1, %hi(D_race_80132520)
/* 99928 800E3568 96C30000 */  lhu        $v1, 0x0($s6)
/* 9992C 800E356C 26302520 */  addiu      $s0, $s1, %lo(D_race_80132520)
/* 99930 800E3570 00031040 */  sll        $v0, $v1, 1
/* 99934 800E3574 00431021 */  addu       $v0, $v0, $v1
/* 99938 800E3578 00021080 */  sll        $v0, $v0, 2
/* 9993C 800E357C 8E630050 */  lw         $v1, 0x50($s3)
/* 99940 800E3580 00551021 */  addu       $v0, $v0, $s5
/* 99944 800E3584 8C490000 */  lw         $t1, 0x0($v0)
/* 99948 800E3588 8C4A0004 */  lw         $t2, 0x4($v0)
/* 9994C 800E358C 8C470008 */  lw         $a3, 0x8($v0)
/* 99950 800E3590 AC690000 */  sw         $t1, 0x0($v1)
/* 99954 800E3594 AC6A0004 */  sw         $t2, 0x4($v1)
/* 99958 800E3598 AC670008 */  sw         $a3, 0x8($v1)
/* 9995C 800E359C 96C30002 */  lhu        $v1, 0x2($s6)
/* 99960 800E35A0 02002021 */  addu       $a0, $s0, $zero
/* 99964 800E35A4 00031040 */  sll        $v0, $v1, 1
/* 99968 800E35A8 00431021 */  addu       $v0, $v0, $v1
/* 9996C 800E35AC 00021080 */  sll        $v0, $v0, 2
/* 99970 800E35B0 8E630050 */  lw         $v1, 0x50($s3)
/* 99974 800E35B4 00551021 */  addu       $v0, $v0, $s5
/* 99978 800E35B8 8C490000 */  lw         $t1, 0x0($v0)
/* 9997C 800E35BC 8C4A0004 */  lw         $t2, 0x4($v0)
/* 99980 800E35C0 8C470008 */  lw         $a3, 0x8($v0)
/* 99984 800E35C4 AC69000C */  sw         $t1, 0xC($v1)
/* 99988 800E35C8 AC6A0010 */  sw         $t2, 0x10($v1)
/* 9998C 800E35CC AC670014 */  sw         $a3, 0x14($v1)
/* 99990 800E35D0 96C30004 */  lhu        $v1, 0x4($s6)
/* 99994 800E35D4 00031040 */  sll        $v0, $v1, 1
/* 99998 800E35D8 00431021 */  addu       $v0, $v0, $v1
/* 9999C 800E35DC 00021080 */  sll        $v0, $v0, 2
/* 999A0 800E35E0 8E630050 */  lw         $v1, 0x50($s3)
/* 999A4 800E35E4 00551021 */  addu       $v0, $v0, $s5
/* 999A8 800E35E8 8C490000 */  lw         $t1, 0x0($v0)
/* 999AC 800E35EC 8C4A0004 */  lw         $t2, 0x4($v0)
/* 999B0 800E35F0 8C470008 */  lw         $a3, 0x8($v0)
/* 999B4 800E35F4 AC690018 */  sw         $t1, 0x18($v1)
/* 999B8 800E35F8 AC6A001C */  sw         $t2, 0x1C($v1)
/* 999BC 800E35FC AC670020 */  sw         $a3, 0x20($v1)
/* 999C0 800E3600 0C000F26 */  jal        func_80003C98
/* 999C4 800E3604 02002821 */   addu      $a1, $s0, $zero
/* 999C8 800E3608 8E620050 */  lw         $v0, 0x50($s3)
/* 999CC 800E360C C6202520 */  lwc1       $f0, %lo(D_race_80132520)($s1)
/* 999D0 800E3610 E4400024 */  swc1       $f0, 0x24($v0)
/* 999D4 800E3614 8E620050 */  lw         $v0, 0x50($s3)
/* 999D8 800E3618 C6000004 */  lwc1       $f0, 0x4($s0)
/* 999DC 800E361C E4400028 */  swc1       $f0, 0x28($v0)
/* 999E0 800E3620 8E620050 */  lw         $v0, 0x50($s3)
/* 999E4 800E3624 C6000008 */  lwc1       $f0, 0x8($s0)
/* 999E8 800E3628 E440002C */  swc1       $f0, 0x2C($v0)
/* 999EC 800E362C 8E620050 */  lw         $v0, 0x50($s3)
/* 999F0 800E3630 C6202520 */  lwc1       $f0, %lo(D_race_80132520)($s1)
/* 999F4 800E3634 C4420000 */  lwc1       $f2, 0x0($v0)
/* 999F8 800E3638 46020002 */  mul.s      $f0, $f0, $f2
/* 999FC 800E363C C6060004 */  lwc1       $f6, 0x4($s0)
/* 99A00 800E3640 C4420004 */  lwc1       $f2, 0x4($v0)
/* 99A04 800E3644 46023182 */  mul.s      $f6, $f6, $f2
/* 99A08 800E3648 C4440008 */  lwc1       $f4, 0x8($v0)
/* 99A0C 800E364C C6020008 */  lwc1       $f2, 0x8($s0)
/* 99A10 800E3650 46041082 */  mul.s      $f2, $f2, $f4
/* 99A14 800E3654 46060000 */  add.s      $f0, $f0, $f6
/* 99A18 800E3658 46020000 */  add.s      $f0, $f0, $f2
/* 99A1C 800E365C 46000007 */  neg.s      $f0, $f0
/* 99A20 800E3660 E4400030 */  swc1       $f0, 0x30($v0)
/* 99A24 800E3664 8E640058 */  lw         $a0, 0x58($s3)
/* 99A28 800E3668 10800008 */  beqz       $a0, .Lrace_800E368C
/* 99A2C 800E366C 00000000 */   nop
/* 99A30 800E3670 8E630020 */  lw         $v1, 0x20($s3)
/* 99A34 800E3674 96C20006 */  lhu        $v0, 0x6($s6)
.Lrace_800E3678:
/* 99A38 800E3678 8C630008 */  lw         $v1, 0x8($v1)
/* 99A3C 800E367C 00021080 */  sll        $v0, $v0, 2
/* 99A40 800E3680 00431021 */  addu       $v0, $v0, $v1
/* 99A44 800E3684 8C420000 */  lw         $v0, 0x0($v0)
/* 99A48 800E3688 AC820000 */  sw         $v0, 0x0($a0)
.Lrace_800E368C:
/* 99A4C 800E368C 8E62005C */  lw         $v0, 0x5C($s3)
/* 99A50 800E3690 54400001 */  bnel       $v0, $zero, .Lrace_800E3698
/* 99A54 800E3694 E4540000 */   swc1      $f20, 0x0($v0)
.Lrace_800E3698:
/* 99A58 800E3698 08038DA9 */  j          .Lrace_800E36A4
/* 99A5C 800E369C 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_800E36A0:
/* 99A60 800E36A0 00001021 */  addu       $v0, $zero, $zero
.Lrace_800E36A4:
/* 99A64 800E36A4 8FBF004C */  lw         $ra, 0x4C($sp)
/* 99A68 800E36A8 8FBE0048 */  lw         $fp, 0x48($sp)
/* 99A6C 800E36AC 8FB70044 */  lw         $s7, 0x44($sp)
/* 99A70 800E36B0 8FB60040 */  lw         $s6, 0x40($sp)
/* 99A74 800E36B4 8FB5003C */  lw         $s5, 0x3C($sp)
/* 99A78 800E36B8 8FB40038 */  lw         $s4, 0x38($sp)
/* 99A7C 800E36BC 8FB30034 */  lw         $s3, 0x34($sp)
/* 99A80 800E36C0 8FB20030 */  lw         $s2, 0x30($sp)
/* 99A84 800E36C4 8FB1002C */  lw         $s1, 0x2C($sp)
/* 99A88 800E36C8 8FB00028 */  lw         $s0, 0x28($sp)
/* 99A8C 800E36CC D7B40050 */  ldc1       $f20, 0x50($sp)
/* 99A90 800E36D0 03E00008 */  jr         $ra
/* 99A94 800E36D4 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_800E36D8
/* 99A98 800E36D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 99A9C 800E36DC AFBF0010 */  sw         $ra, 0x10($sp)
/* 99AA0 800E36E0 0C002513 */  jal        func_8000944C
/* 99AA4 800E36E4 00000000 */   nop
/* 99AA8 800E36E8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 99AAC 800E36EC 03E00008 */  jr         $ra
/* 99AB0 800E36F0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E36F4
/* 99AB4 800E36F4 8C820008 */  lw         $v0, 0x8($a0)
/* 99AB8 800E36F8 03E00008 */  jr         $ra
/* 99ABC 800E36FC 00000000 */   nop

glabel func_race_800E3700
/* 99AC0 800E3700 03E00008 */  jr         $ra
/* 99AC4 800E3704 24820014 */   addiu     $v0, $a0, 0x14

glabel func_race_800E3708
/* 99AC8 800E3708 14A00003 */  bnez       $a1, .Lrace_800E3718
/* 99ACC 800E370C 24820014 */   addiu     $v0, $a0, 0x14
/* 99AD0 800E3710 03E00008 */  jr         $ra
/* 99AD4 800E3714 AC820020 */   sw        $v0, 0x20($a0)
.Lrace_800E3718:
/* 99AD8 800E3718 03E00008 */  jr         $ra
/* 99ADC 800E371C AC850020 */   sw        $a1, 0x20($a0)

glabel func_race_800E3720
/* 99AE0 800E3720 8C820004 */  lw         $v0, 0x4($a0)
/* 99AE4 800E3724 03E00008 */  jr         $ra
/* 99AE8 800E3728 0002102B */   sltu      $v0, $zero, $v0
