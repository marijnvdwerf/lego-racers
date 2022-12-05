.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E9CA0
/* A0060 800E9CA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A0064 800E9CA4 AFB00010 */  sw         $s0, 0x10($sp)
/* A0068 800E9CA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A006C 800E9CAC 0C03A1A4 */  jal        func_race_800E8690
/* A0070 800E9CB0 00808021 */   addu      $s0, $a0, $zero
/* A0074 800E9CB4 3C02800D */  lui        $v0, %hi(D_race_800CBED0)
/* A0078 800E9CB8 2442BED0 */  addiu      $v0, $v0, %lo(D_race_800CBED0)
/* A007C 800E9CBC 02002021 */  addu       $a0, $s0, $zero
/* A0080 800E9CC0 0C03A749 */  jal        func_race_800E9D24
/* A0084 800E9CC4 AE020000 */   sw        $v0, 0x0($s0)
/* A0088 800E9CC8 02001021 */  addu       $v0, $s0, $zero
/* A008C 800E9CCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0090 800E9CD0 8FB00010 */  lw         $s0, 0x10($sp)
/* A0094 800E9CD4 03E00008 */  jr         $ra
/* A0098 800E9CD8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E9CDC
/* A009C 800E9CDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A00A0 800E9CE0 AFB00010 */  sw         $s0, 0x10($sp)
/* A00A4 800E9CE4 00808021 */  addu       $s0, $a0, $zero
/* A00A8 800E9CE8 AFB10014 */  sw         $s1, 0x14($sp)
/* A00AC 800E9CEC 00A08821 */  addu       $s1, $a1, $zero
/* A00B0 800E9CF0 3C02800D */  lui        $v0, %hi(D_race_800CBED0)
/* A00B4 800E9CF4 2442BED0 */  addiu      $v0, $v0, %lo(D_race_800CBED0)
/* A00B8 800E9CF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* A00BC 800E9CFC 0C03A7B0 */  jal        func_race_800E9EC0
/* A00C0 800E9D00 AE020000 */   sw        $v0, 0x0($s0)
/* A00C4 800E9D04 02002021 */  addu       $a0, $s0, $zero
/* A00C8 800E9D08 0C03A1AC */  jal        func_race_800E86B0
/* A00CC 800E9D0C 02202821 */   addu      $a1, $s1, $zero
/* A00D0 800E9D10 8FBF0018 */  lw         $ra, 0x18($sp)
/* A00D4 800E9D14 8FB10014 */  lw         $s1, 0x14($sp)
/* A00D8 800E9D18 8FB00010 */  lw         $s0, 0x10($sp)
/* A00DC 800E9D1C 03E00008 */  jr         $ra
/* A00E0 800E9D20 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E9D24
/* A00E4 800E9D24 AC800038 */  sw         $zero, 0x38($a0)
/* A00E8 800E9D28 AC800034 */  sw         $zero, 0x34($a0)
/* A00EC 800E9D2C AC80003C */  sw         $zero, 0x3C($a0)
/* A00F0 800E9D30 AC800040 */  sw         $zero, 0x40($a0)
/* A00F4 800E9D34 AC800018 */  sw         $zero, 0x18($a0)
/* A00F8 800E9D38 AC80001C */  sw         $zero, 0x1C($a0)
/* A00FC 800E9D3C AC800020 */  sw         $zero, 0x20($a0)
/* A0100 800E9D40 AC800024 */  sw         $zero, 0x24($a0)
/* A0104 800E9D44 AC800028 */  sw         $zero, 0x28($a0)
/* A0108 800E9D48 AC80002C */  sw         $zero, 0x2C($a0)
/* A010C 800E9D4C 03E00008 */  jr         $ra
/* A0110 800E9D50 A0800010 */   sb        $zero, 0x10($a0)

glabel func_race_800E9D54
/* A0114 800E9D54 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A0118 800E9D58 AFB1001C */  sw         $s1, 0x1C($sp)
/* A011C 800E9D5C 00808821 */  addu       $s1, $a0, $zero
/* A0120 800E9D60 AFB20020 */  sw         $s2, 0x20($sp)
/* A0124 800E9D64 00A09021 */  addu       $s2, $a1, $zero
/* A0128 800E9D68 AFBF0024 */  sw         $ra, 0x24($sp)
/* A012C 800E9D6C AFB00018 */  sw         $s0, 0x18($sp)
/* A0130 800E9D70 8E22000C */  lw         $v0, 0xC($s1)
/* A0134 800E9D74 10400003 */  beqz       $v0, .Lrace_800E9D84
/* A0138 800E9D78 00C08021 */   addu      $s0, $a2, $zero
/* A013C 800E9D7C 0C03A7B0 */  jal        func_race_800E9EC0
/* A0140 800E9D80 00000000 */   nop
.Lrace_800E9D84:
/* A0144 800E9D84 02002021 */  addu       $a0, $s0, $zero
/* A0148 800E9D88 0C0026F4 */  jal        func_80009BD0
/* A014C 800E9D8C 24050005 */   addiu     $a1, $zero, 0x5
.Lrace_800E9D90:
/* A0150 800E9D90 8E020028 */  lw         $v0, 0x28($s0)
/* A0154 800E9D94 844400A0 */  lh         $a0, 0xA0($v0)
/* A0158 800E9D98 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A015C 800E9D9C 0040F809 */  jalr       $v0
/* A0160 800E9DA0 02042021 */   addu      $a0, $s0, $a0
/* A0164 800E9DA4 00401821 */  addu       $v1, $v0, $zero
/* A0168 800E9DA8 24020006 */  addiu      $v0, $zero, 0x6
/* A016C 800E9DAC 10620030 */  beq        $v1, $v0, .Lrace_800E9E70
/* A0170 800E9DB0 24020044 */   addiu     $v0, $zero, 0x44
/* A0174 800E9DB4 10620022 */  beq        $v1, $v0, .Lrace_800E9E40
/* A0178 800E9DB8 2C620045 */   sltiu     $v0, $v1, 0x45
/* A017C 800E9DBC 10400007 */  beqz       $v0, .Lrace_800E9DDC
/* A0180 800E9DC0 2402003B */   addiu     $v0, $zero, 0x3B
/* A0184 800E9DC4 1062001A */  beq        $v1, $v0, .Lrace_800E9E30
/* A0188 800E9DC8 24020042 */   addiu     $v0, $zero, 0x42
/* A018C 800E9DCC 1062000D */  beq        $v1, $v0, .Lrace_800E9E04
/* A0190 800E9DD0 00000000 */   nop
/* A0194 800E9DD4 0803A794 */  j          .Lrace_800E9E50
/* A0198 800E9DD8 00000000 */   nop
.Lrace_800E9DDC:
/* A019C 800E9DDC 24020045 */  addiu      $v0, $zero, 0x45
/* A01A0 800E9DE0 1462001B */  bne        $v1, $v0, .Lrace_800E9E50
/* A01A4 800E9DE4 00000000 */   nop
/* A01A8 800E9DE8 8E020028 */  lw         $v0, 0x28($s0)
/* A01AC 800E9DEC 844400A0 */  lh         $a0, 0xA0($v0)
/* A01B0 800E9DF0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A01B4 800E9DF4 0040F809 */  jalr       $v0
/* A01B8 800E9DF8 02042021 */   addu      $a0, $s0, $a0
/* A01BC 800E9DFC 0803A787 */  j          .Lrace_800E9E1C
/* A01C0 800E9E00 26240010 */   addiu     $a0, $s1, 0x10
.Lrace_800E9E04:
/* A01C4 800E9E04 8E020028 */  lw         $v0, 0x28($s0)
/* A01C8 800E9E08 844400A0 */  lh         $a0, 0xA0($v0)
/* A01CC 800E9E0C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A01D0 800E9E10 0040F809 */  jalr       $v0
/* A01D4 800E9E14 02042021 */   addu      $a0, $s0, $a0
/* A01D8 800E9E18 27A40010 */  addiu      $a0, $sp, 0x10
.Lrace_800E9E1C:
/* A01DC 800E9E1C 26050044 */  addiu      $a1, $s0, 0x44
/* A01E0 800E9E20 0C000708 */  jal        func_80001C20
/* A01E4 800E9E24 24060008 */   addiu     $a2, $zero, 0x8
/* A01E8 800E9E28 0803A764 */  j          .Lrace_800E9D90
/* A01EC 800E9E2C 00000000 */   nop
.Lrace_800E9E30:
/* A01F0 800E9E30 0C002680 */  jal        func_80009A00
/* A01F4 800E9E34 02002021 */   addu      $a0, $s0, $zero
/* A01F8 800E9E38 0803A764 */  j          .Lrace_800E9D90
/* A01FC 800E9E3C AE220008 */   sw        $v0, 0x8($s1)
.Lrace_800E9E40:
/* A0200 800E9E40 0C002680 */  jal        func_80009A00
/* A0204 800E9E44 02002021 */   addu      $a0, $s0, $zero
/* A0208 800E9E48 0803A764 */  j          .Lrace_800E9D90
/* A020C 800E9E4C AE220040 */   sw        $v0, 0x40($s1)
.Lrace_800E9E50:
/* A0210 800E9E50 8E020028 */  lw         $v0, 0x28($s0)
/* A0214 800E9E54 00002821 */  addu       $a1, $zero, $zero
/* A0218 800E9E58 84440098 */  lh         $a0, 0x98($v0)
/* A021C 800E9E5C 8C42009C */  lw         $v0, 0x9C($v0)
/* A0220 800E9E60 0040F809 */  jalr       $v0
/* A0224 800E9E64 02042021 */   addu      $a0, $s0, $a0
/* A0228 800E9E68 0803A764 */  j          .Lrace_800E9D90
/* A022C 800E9E6C 00000000 */   nop
.Lrace_800E9E70:
/* A0230 800E9E70 8E420038 */  lw         $v0, 0x38($s2)
/* A0234 800E9E74 AE220034 */  sw         $v0, 0x34($s1)
/* A0238 800E9E78 8E420010 */  lw         $v0, 0x10($s2)
/* A023C 800E9E7C 27A50010 */  addiu      $a1, $sp, 0x10
/* A0240 800E9E80 8C4300BC */  lw         $v1, 0xBC($v0)
/* A0244 800E9E84 14600003 */  bnez       $v1, .Lrace_800E9E94
/* A0248 800E9E88 244400BC */   addiu     $a0, $v0, 0xBC
/* A024C 800E9E8C 0803A7A7 */  j          .Lrace_800E9E9C
/* A0250 800E9E90 00001021 */   addu      $v0, $zero, $zero
.Lrace_800E9E94:
/* A0254 800E9E94 0C016427 */  jal        func_8005909C
/* A0258 800E9E98 00000000 */   nop
.Lrace_800E9E9C:
/* A025C 800E9E9C AE220038 */  sw         $v0, 0x38($s1)
/* A0260 800E9EA0 24020001 */  addiu      $v0, $zero, 0x1
/* A0264 800E9EA4 AE22000C */  sw         $v0, 0xC($s1)
/* A0268 800E9EA8 8FBF0024 */  lw         $ra, 0x24($sp)
/* A026C 800E9EAC 8FB20020 */  lw         $s2, 0x20($sp)
/* A0270 800E9EB0 8FB1001C */  lw         $s1, 0x1C($sp)
/* A0274 800E9EB4 8FB00018 */  lw         $s0, 0x18($sp)
/* A0278 800E9EB8 03E00008 */  jr         $ra
/* A027C 800E9EBC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E9EC0
/* A0280 800E9EC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A0284 800E9EC4 AFB00010 */  sw         $s0, 0x10($sp)
/* A0288 800E9EC8 00808021 */  addu       $s0, $a0, $zero
/* A028C 800E9ECC AFBF0014 */  sw         $ra, 0x14($sp)
/* A0290 800E9ED0 8E020000 */  lw         $v0, 0x0($s0)
/* A0294 800E9ED4 00002821 */  addu       $a1, $zero, $zero
/* A0298 800E9ED8 84440018 */  lh         $a0, 0x18($v0)
/* A029C 800E9EDC 8C42001C */  lw         $v0, 0x1C($v0)
/* A02A0 800E9EE0 0040F809 */  jalr       $v0
/* A02A4 800E9EE4 02042021 */   addu      $a0, $s0, $a0
/* A02A8 800E9EE8 0C03A749 */  jal        func_race_800E9D24
/* A02AC 800E9EEC 02002021 */   addu      $a0, $s0, $zero
/* A02B0 800E9EF0 0C03A1C0 */  jal        func_race_800E8700
/* A02B4 800E9EF4 02002021 */   addu      $a0, $s0, $zero
/* A02B8 800E9EF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A02BC 800E9EFC 8FB00010 */  lw         $s0, 0x10($sp)
/* A02C0 800E9F00 03E00008 */  jr         $ra
/* A02C4 800E9F04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E9F08
/* A02C8 800E9F08 8C830040 */  lw         $v1, 0x40($a0)
/* A02CC 800E9F0C 24020002 */  addiu      $v0, $zero, 0x2
/* A02D0 800E9F10 AC82000C */  sw         $v0, 0xC($a0)
/* A02D4 800E9F14 03E00008 */  jr         $ra
/* A02D8 800E9F18 AC83003C */   sw        $v1, 0x3C($a0)

glabel func_race_800E9F1C
/* A02DC 800E9F1C 24020001 */  addiu      $v0, $zero, 0x1
/* A02E0 800E9F20 03E00008 */  jr         $ra
/* A02E4 800E9F24 AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800E9F28
/* A02E8 800E9F28 27BDFF88 */  addiu      $sp, $sp, -0x78
/* A02EC 800E9F2C AFB3006C */  sw         $s3, 0x6C($sp)
/* A02F0 800E9F30 00809821 */  addu       $s3, $a0, $zero
/* A02F4 800E9F34 AFB00060 */  sw         $s0, 0x60($sp)
/* A02F8 800E9F38 AFBF0070 */  sw         $ra, 0x70($sp)
/* A02FC 800E9F3C AFB20068 */  sw         $s2, 0x68($sp)
/* A0300 800E9F40 AFB10064 */  sw         $s1, 0x64($sp)
/* A0304 800E9F44 8E63000C */  lw         $v1, 0xC($s3)
/* A0308 800E9F48 24020001 */  addiu      $v0, $zero, 0x1
/* A030C 800E9F4C 1062009B */  beq        $v1, $v0, .Lrace_800EA1BC
/* A0310 800E9F50 00A08021 */   addu      $s0, $a1, $zero
/* A0314 800E9F54 0C03A1C4 */  jal        func_race_800E8710
/* A0318 800E9F58 00000000 */   nop
/* A031C 800E9F5C 8E62003C */  lw         $v0, 0x3C($s3)
/* A0320 800E9F60 8E630040 */  lw         $v1, 0x40($s3)
/* A0324 800E9F64 00501021 */  addu       $v0, $v0, $s0
/* A0328 800E9F68 AE62003C */  sw         $v0, 0x3C($s3)
/* A032C 800E9F6C 0043102B */  sltu       $v0, $v0, $v1
/* A0330 800E9F70 14400092 */  bnez       $v0, .Lrace_800EA1BC
/* A0334 800E9F74 00002821 */   addu      $a1, $zero, $zero
/* A0338 800E9F78 8E630038 */  lw         $v1, 0x38($s3)
/* A033C 800E9F7C 8C620024 */  lw         $v0, 0x24($v1)
/* A0340 800E9F80 844400C0 */  lh         $a0, 0xC0($v0)
/* A0344 800E9F84 8C4200C4 */  lw         $v0, 0xC4($v0)
/* A0348 800E9F88 0040F809 */  jalr       $v0
/* A034C 800E9F8C 00642021 */   addu      $a0, $v1, $a0
/* A0350 800E9F90 8E630038 */  lw         $v1, 0x38($s3)
/* A0354 800E9F94 8C620024 */  lw         $v0, 0x24($v1)
/* A0358 800E9F98 00002821 */  addu       $a1, $zero, $zero
/* A035C 800E9F9C 844400B8 */  lh         $a0, 0xB8($v0)
/* A0360 800E9FA0 8C4200BC */  lw         $v0, 0xBC($v0)
/* A0364 800E9FA4 0040F809 */  jalr       $v0
/* A0368 800E9FA8 00642021 */   addu      $a0, $v1, $a0
/* A036C 800E9FAC 8C430008 */  lw         $v1, 0x8($v0)
/* A0370 800E9FB0 24050001 */  addiu      $a1, $zero, 0x1
/* A0374 800E9FB4 84640038 */  lh         $a0, 0x38($v1)
/* A0378 800E9FB8 8C63003C */  lw         $v1, 0x3C($v1)
/* A037C 800E9FBC 0060F809 */  jalr       $v1
/* A0380 800E9FC0 00442021 */   addu      $a0, $v0, $a0
/* A0384 800E9FC4 00408021 */  addu       $s0, $v0, $zero
/* A0388 800E9FC8 27B10030 */  addiu      $s1, $sp, 0x30
/* A038C 800E9FCC 8E02000C */  lw         $v0, 0xC($s0)
/* A0390 800E9FD0 02202821 */  addu       $a1, $s1, $zero
/* A0394 800E9FD4 84440088 */  lh         $a0, 0x88($v0)
/* A0398 800E9FD8 8C42008C */  lw         $v0, 0x8C($v0)
/* A039C 800E9FDC 0040F809 */  jalr       $v0
/* A03A0 800E9FE0 02042021 */   addu      $a0, $s0, $a0
/* A03A4 800E9FE4 27B20040 */  addiu      $s2, $sp, 0x40
/* A03A8 800E9FE8 8E02000C */  lw         $v0, 0xC($s0)
/* A03AC 800E9FEC 02402821 */  addu       $a1, $s2, $zero
/* A03B0 800E9FF0 84440078 */  lh         $a0, 0x78($v0)
/* A03B4 800E9FF4 8C42007C */  lw         $v0, 0x7C($v0)
/* A03B8 800E9FF8 0040F809 */  jalr       $v0
/* A03BC 800E9FFC 02042021 */   addu      $a0, $s0, $a0
/* A03C0 800EA000 8E630038 */  lw         $v1, 0x38($s3)
/* A03C4 800EA004 8C620078 */  lw         $v0, 0x78($v1)
/* A03C8 800EA008 C4620058 */  lwc1       $f2, 0x58($v1)
/* A03CC 800EA00C C4400034 */  lwc1       $f0, 0x34($v0)
/* A03D0 800EA010 46001082 */  mul.s      $f2, $f2, $f0
/* A03D4 800EA014 C7A60030 */  lwc1       $f6, 0x30($sp)
/* A03D8 800EA018 46023182 */  mul.s      $f6, $f6, $f2
/* A03DC 800EA01C C7A40034 */  lwc1       $f4, 0x34($sp)
/* A03E0 800EA020 46022102 */  mul.s      $f4, $f4, $f2
/* A03E4 800EA024 C7A00038 */  lwc1       $f0, 0x38($sp)
/* A03E8 800EA028 46020002 */  mul.s      $f0, $f0, $f2
/* A03EC 800EA02C E7A60030 */  swc1       $f6, 0x30($sp)
/* A03F0 800EA030 E7A40034 */  swc1       $f4, 0x34($sp)
/* A03F4 800EA034 E7A00038 */  swc1       $f0, 0x38($sp)
/* A03F8 800EA038 8E630038 */  lw         $v1, 0x38($s3)
/* A03FC 800EA03C 02202821 */  addu       $a1, $s1, $zero
/* A0400 800EA040 8C620024 */  lw         $v0, 0x24($v1)
/* A0404 800EA044 26660024 */  addiu      $a2, $s3, 0x24
/* A0408 800EA048 84440060 */  lh         $a0, 0x60($v0)
/* A040C 800EA04C 8C420064 */  lw         $v0, 0x64($v0)
/* A0410 800EA050 0040F809 */  jalr       $v0
/* A0414 800EA054 00642021 */   addu      $a0, $v1, $a0
/* A0418 800EA058 8E630038 */  lw         $v1, 0x38($s3)
/* A041C 800EA05C 02402821 */  addu       $a1, $s2, $zero
/* A0420 800EA060 8C620024 */  lw         $v0, 0x24($v1)
/* A0424 800EA064 27A60050 */  addiu      $a2, $sp, 0x50
/* A0428 800EA068 84440070 */  lh         $a0, 0x70($v0)
/* A042C 800EA06C 8C420074 */  lw         $v0, 0x74($v0)
/* A0430 800EA070 0040F809 */  jalr       $v0
/* A0434 800EA074 00642021 */   addu      $a0, $v1, $a0
/* A0438 800EA078 C7A20050 */  lwc1       $f2, 0x50($sp)
/* A043C 800EA07C 3C01800D */  lui        $at, %hi(D_race_800CBEC0)
/* A0440 800EA080 C424BEC0 */  lwc1       $f4, %lo(D_race_800CBEC0)($at)
/* A0444 800EA084 46041082 */  mul.s      $f2, $f2, $f4
/* A0448 800EA088 C6600024 */  lwc1       $f0, 0x24($s3)
/* A044C 800EA08C 46020001 */  sub.s      $f0, $f0, $f2
/* A0450 800EA090 E6600024 */  swc1       $f0, 0x24($s3)
/* A0454 800EA094 C7A20054 */  lwc1       $f2, 0x54($sp)
/* A0458 800EA098 46041082 */  mul.s      $f2, $f2, $f4
/* A045C 800EA09C 3C068003 */  lui        $a2, %hi(D_8002FAB0)
/* A0460 800EA0A0 C6600028 */  lwc1       $f0, 0x28($s3)
/* A0464 800EA0A4 3C058003 */  lui        $a1, %hi(D_8002F2B0)
/* A0468 800EA0A8 46020001 */  sub.s      $f0, $f0, $f2
/* A046C 800EA0AC 8CC3FAB0 */  lw         $v1, %lo(D_8002FAB0)($a2)
/* A0470 800EA0B0 24A5F2B0 */  addiu      $a1, $a1, %lo(D_8002F2B0)
/* A0474 800EA0B4 E6600028 */  swc1       $f0, 0x28($s3)
/* A0478 800EA0B8 C7A00058 */  lwc1       $f0, 0x58($sp)
/* A047C 800EA0BC 3C01800D */  lui        $at, %hi(D_race_800CBEC4)
/* A0480 800EA0C0 C426BEC4 */  lwc1       $f6, %lo(D_race_800CBEC4)($at)
/* A0484 800EA0C4 46040002 */  mul.s      $f0, $f0, $f4
/* A0488 800EA0C8 24630001 */  addiu      $v1, $v1, 0x1
/* A048C 800EA0CC 306303FF */  andi       $v1, $v1, 0x3FF
/* A0490 800EA0D0 C662002C */  lwc1       $f2, 0x2C($s3)
/* A0494 800EA0D4 00031040 */  sll        $v0, $v1, 1
/* A0498 800EA0D8 46001081 */  sub.s      $f2, $f2, $f0
/* A049C 800EA0DC 3C01800D */  lui        $at, %hi(D_race_800CBEC8)
/* A04A0 800EA0E0 C420BEC8 */  lwc1       $f0, %lo(D_race_800CBEC8)($at)
/* A04A4 800EA0E4 00451021 */  addu       $v0, $v0, $a1
/* A04A8 800EA0E8 E6600030 */  swc1       $f0, 0x30($s3)
/* A04AC 800EA0EC E662002C */  swc1       $f2, 0x2C($s3)
/* A04B0 800EA0F0 94420000 */  lhu        $v0, 0x0($v0)
/* A04B4 800EA0F4 C6600024 */  lwc1       $f0, 0x24($s3)
/* A04B8 800EA0F8 30420003 */  andi       $v0, $v0, 0x3
/* A04BC 800EA0FC 44821000 */  mtc1       $v0, $f2
/* A04C0 800EA100 468010A0 */  cvt.s.w    $f2, $f2
/* A04C4 800EA104 46020000 */  add.s      $f0, $f0, $f2
/* A04C8 800EA108 24640001 */  addiu      $a0, $v1, 0x1
/* A04CC 800EA10C 308403FF */  andi       $a0, $a0, 0x3FF
/* A04D0 800EA110 46060001 */  sub.s      $f0, $f0, $f6
/* A04D4 800EA114 00041040 */  sll        $v0, $a0, 1
/* A04D8 800EA118 00451021 */  addu       $v0, $v0, $a1
/* A04DC 800EA11C E6600018 */  swc1       $f0, 0x18($s3)
/* A04E0 800EA120 94420000 */  lhu        $v0, 0x0($v0)
/* A04E4 800EA124 C6620028 */  lwc1       $f2, 0x28($s3)
/* A04E8 800EA128 30420003 */  andi       $v0, $v0, 0x3
/* A04EC 800EA12C 44820000 */  mtc1       $v0, $f0
/* A04F0 800EA130 46800020 */  cvt.s.w    $f0, $f0
/* A04F4 800EA134 46001080 */  add.s      $f2, $f2, $f0
/* A04F8 800EA138 C6640018 */  lwc1       $f4, 0x18($s3)
/* A04FC 800EA13C C6600024 */  lwc1       $f0, 0x24($s3)
/* A0500 800EA140 46061081 */  sub.s      $f2, $f2, $f6
/* A0504 800EA144 ACC3FAB0 */  sw         $v1, %lo(D_8002FAB0)($a2)
/* A0508 800EA148 ACC4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a2)
/* A050C 800EA14C 46002032 */  c.eq.s     $f4, $f0
/* A0510 800EA150 00000000 */  nop
/* A0514 800EA154 45000008 */  bc1f       .Lrace_800EA178
/* A0518 800EA158 E662001C */   swc1      $f2, 0x1C($s3)
/* A051C 800EA15C C6600028 */  lwc1       $f0, 0x28($s3)
/* A0520 800EA160 46001032 */  c.eq.s     $f2, $f0
/* A0524 800EA164 00000000 */  nop
/* A0528 800EA168 45000003 */  bc1f       .Lrace_800EA178
/* A052C 800EA16C 00000000 */   nop
/* A0530 800EA170 46062000 */  add.s      $f0, $f4, $f6
/* A0534 800EA174 E6600018 */  swc1       $f0, 0x18($s3)
.Lrace_800EA178:
/* A0538 800EA178 C660002C */  lwc1       $f0, 0x2C($s3)
/* A053C 800EA17C 3C01800D */  lui        $at, %hi(D_race_800CBECC)
/* A0540 800EA180 C422BECC */  lwc1       $f2, %lo(D_race_800CBECC)($at)
/* A0544 800EA184 46020000 */  add.s      $f0, $f0, $f2
/* A0548 800EA188 00002821 */  addu       $a1, $zero, $zero
/* A054C 800EA18C 26620010 */  addiu      $v0, $s3, 0x10
/* A0550 800EA190 E6600020 */  swc1       $f0, 0x20($s3)
/* A0554 800EA194 AFA20028 */  sw         $v0, 0x28($sp)
/* A0558 800EA198 8E630034 */  lw         $v1, 0x34($s3)
/* A055C 800EA19C 27A20010 */  addiu      $v0, $sp, 0x10
/* A0560 800EA1A0 AC621998 */  sw         $v0, 0x1998($v1)
/* A0564 800EA1A4 8E640034 */  lw         $a0, 0x34($s3)
/* A0568 800EA1A8 0C04AF09 */  jal        func_race_8012BC24
/* A056C 800EA1AC 00A03021 */   addu      $a2, $a1, $zero
/* A0570 800EA1B0 8E620034 */  lw         $v0, 0x34($s3)
/* A0574 800EA1B4 AC401998 */  sw         $zero, 0x1998($v0)
/* A0578 800EA1B8 AE60003C */  sw         $zero, 0x3C($s3)
.Lrace_800EA1BC:
/* A057C 800EA1BC 8FBF0070 */  lw         $ra, 0x70($sp)
/* A0580 800EA1C0 8FB3006C */  lw         $s3, 0x6C($sp)
/* A0584 800EA1C4 8FB20068 */  lw         $s2, 0x68($sp)
/* A0588 800EA1C8 8FB10064 */  lw         $s1, 0x64($sp)
/* A058C 800EA1CC 8FB00060 */  lw         $s0, 0x60($sp)
/* A0590 800EA1D0 03E00008 */  jr         $ra
/* A0594 800EA1D4 27BD0078 */   addiu     $sp, $sp, 0x78
