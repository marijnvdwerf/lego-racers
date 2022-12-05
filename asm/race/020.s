.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800D0CF0
/* 870B0 800D0CF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 870B4 800D0CF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 870B8 800D0CF8 00808021 */  addu       $s0, $a0, $zero
/* 870BC 800D0CFC 3C02800D */  lui        $v0, %hi(D_race_800CA818)
/* 870C0 800D0D00 2442A818 */  addiu      $v0, $v0, %lo(D_race_800CA818)
/* 870C4 800D0D04 2604001C */  addiu      $a0, $s0, 0x1C
/* 870C8 800D0D08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 870CC 800D0D0C 0C016038 */  jal        func_800580E0
/* 870D0 800D0D10 AE0200B8 */   sw        $v0, 0xB8($s0)
/* 870D4 800D0D14 00002021 */  addu       $a0, $zero, $zero
/* 870D8 800D0D18 02001821 */  addu       $v1, $s0, $zero
/* 870DC 800D0D1C AE000000 */  sw         $zero, 0x0($s0)
/* 870E0 800D0D20 AE000018 */  sw         $zero, 0x18($s0)
/* 870E4 800D0D24 AE000014 */  sw         $zero, 0x14($s0)
.Lrace_800D0D28:
/* 870E8 800D0D28 AC600004 */  sw         $zero, 0x4($v1)
/* 870EC 800D0D2C 24840001 */  addiu      $a0, $a0, 0x1
/* 870F0 800D0D30 2C820004 */  sltiu      $v0, $a0, 0x4
/* 870F4 800D0D34 1440FFFC */  bnez       $v0, .Lrace_800D0D28
/* 870F8 800D0D38 24630004 */   addiu     $v1, $v1, 0x4
/* 870FC 800D0D3C 02001021 */  addu       $v0, $s0, $zero
/* 87100 800D0D40 AC4000AC */  sw         $zero, 0xAC($v0)
/* 87104 800D0D44 AC4000B4 */  sw         $zero, 0xB4($v0)
/* 87108 800D0D48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8710C 800D0D4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 87110 800D0D50 03E00008 */  jr         $ra
/* 87114 800D0D54 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D0D58
/* 87118 800D0D58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8711C 800D0D5C AFB10014 */  sw         $s1, 0x14($sp)
/* 87120 800D0D60 00808821 */  addu       $s1, $a0, $zero
/* 87124 800D0D64 AFB00010 */  sw         $s0, 0x10($sp)
/* 87128 800D0D68 00A08021 */  addu       $s0, $a1, $zero
/* 8712C 800D0D6C 3C02800D */  lui        $v0, %hi(D_race_800CA818)
/* 87130 800D0D70 2442A818 */  addiu      $v0, $v0, %lo(D_race_800CA818)
/* 87134 800D0D74 AFBF0018 */  sw         $ra, 0x18($sp)
/* 87138 800D0D78 0C03436A */  jal        func_race_800D0DA8
/* 8713C 800D0D7C AE2200B8 */   sw        $v0, 0xB8($s1)
/* 87140 800D0D80 32100001 */  andi       $s0, $s0, 0x1
/* 87144 800D0D84 12000003 */  beqz       $s0, .Lrace_800D0D94
/* 87148 800D0D88 00000000 */   nop
/* 8714C 800D0D8C 0C01FB5C */  jal        func_8007ED70
/* 87150 800D0D90 02202021 */   addu      $a0, $s1, $zero
.Lrace_800D0D94:
/* 87154 800D0D94 8FBF0018 */  lw         $ra, 0x18($sp)
/* 87158 800D0D98 8FB10014 */  lw         $s1, 0x14($sp)
/* 8715C 800D0D9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 87160 800D0DA0 03E00008 */  jr         $ra
/* 87164 800D0DA4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D0DA8
/* 87168 800D0DA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8716C 800D0DAC AFB00010 */  sw         $s0, 0x10($sp)
/* 87170 800D0DB0 00808021 */  addu       $s0, $a0, $zero
/* 87174 800D0DB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 87178 800D0DB8 8E050000 */  lw         $a1, 0x0($s0)
/* 8717C 800D0DBC 10A00009 */  beqz       $a1, .Lrace_800D0DE4
/* 87180 800D0DC0 00000000 */   nop
/* 87184 800D0DC4 8E020018 */  lw         $v0, 0x18($s0)
/* 87188 800D0DC8 8C430000 */  lw         $v1, 0x0($v0)
/* 8718C 800D0DCC 84640098 */  lh         $a0, 0x98($v1)
/* 87190 800D0DD0 00442021 */  addu       $a0, $v0, $a0
/* 87194 800D0DD4 8C62009C */  lw         $v0, 0x9C($v1)
/* 87198 800D0DD8 0040F809 */  jalr       $v0
/* 8719C 800D0DDC 00000000 */   nop
/* 871A0 800D0DE0 AE000000 */  sw         $zero, 0x0($s0)
.Lrace_800D0DE4:
/* 871A4 800D0DE4 0C01607E */  jal        func_800581F8
/* 871A8 800D0DE8 2604001C */   addiu     $a0, $s0, 0x1C
/* 871AC 800D0DEC 00002021 */  addu       $a0, $zero, $zero
/* 871B0 800D0DF0 02001821 */  addu       $v1, $s0, $zero
/* 871B4 800D0DF4 AE000018 */  sw         $zero, 0x18($s0)
/* 871B8 800D0DF8 AE000014 */  sw         $zero, 0x14($s0)
.Lrace_800D0DFC:
/* 871BC 800D0DFC AC600004 */  sw         $zero, 0x4($v1)
/* 871C0 800D0E00 24840001 */  addiu      $a0, $a0, 0x1
/* 871C4 800D0E04 2C820004 */  sltiu      $v0, $a0, 0x4
/* 871C8 800D0E08 1440FFFC */  bnez       $v0, .Lrace_800D0DFC
/* 871CC 800D0E0C 24630004 */   addiu     $v1, $v1, 0x4
/* 871D0 800D0E10 AE0000AC */  sw         $zero, 0xAC($s0)
/* 871D4 800D0E14 AE0000B4 */  sw         $zero, 0xB4($s0)
/* 871D8 800D0E18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 871DC 800D0E1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 871E0 800D0E20 03E00008 */  jr         $ra
/* 871E4 800D0E24 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D0E28
/* 871E8 800D0E28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 871EC 800D0E2C AFB00010 */  sw         $s0, 0x10($sp)
/* 871F0 800D0E30 00808021 */  addu       $s0, $a0, $zero
/* 871F4 800D0E34 AFB20018 */  sw         $s2, 0x18($sp)
/* 871F8 800D0E38 00A09021 */  addu       $s2, $a1, $zero
/* 871FC 800D0E3C AFBF001C */  sw         $ra, 0x1C($sp)
/* 87200 800D0E40 AFB10014 */  sw         $s1, 0x14($sp)
/* 87204 800D0E44 8E020000 */  lw         $v0, 0x0($s0)
/* 87208 800D0E48 10400003 */  beqz       $v0, .Lrace_800D0E58
/* 8720C 800D0E4C 00C08821 */   addu      $s1, $a2, $zero
/* 87210 800D0E50 0C03436A */  jal        func_race_800D0DA8
/* 87214 800D0E54 00000000 */   nop
.Lrace_800D0E58:
/* 87218 800D0E58 AE110018 */  sw         $s1, 0x18($s0)
/* 8721C 800D0E5C 02201821 */  addu       $v1, $s1, $zero
/* 87220 800D0E60 AE120014 */  sw         $s2, 0x14($s0)
/* 87224 800D0E64 AE0000AC */  sw         $zero, 0xAC($s0)
/* 87228 800D0E68 8C620000 */  lw         $v0, 0x0($v1)
/* 8722C 800D0E6C 84440030 */  lh         $a0, 0x30($v0)
/* 87230 800D0E70 8C420034 */  lw         $v0, 0x34($v0)
/* 87234 800D0E74 0040F809 */  jalr       $v0
/* 87238 800D0E78 00642021 */   addu      $a0, $v1, $a0
/* 8723C 800D0E7C AE020000 */  sw         $v0, 0x0($s0)
/* 87240 800D0E80 8FBF001C */  lw         $ra, 0x1C($sp)
/* 87244 800D0E84 8FB20018 */  lw         $s2, 0x18($sp)
/* 87248 800D0E88 8FB10014 */  lw         $s1, 0x14($sp)
/* 8724C 800D0E8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 87250 800D0E90 03E00008 */  jr         $ra
/* 87254 800D0E94 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D0E98
/* 87258 800D0E98 8C8300AC */  lw         $v1, 0xAC($a0)
/* 8725C 800D0E9C 24020004 */  addiu      $v0, $zero, 0x4
/* 87260 800D0EA0 10620006 */  beq        $v1, $v0, .Lrace_800D0EBC
/* 87264 800D0EA4 00031080 */   sll       $v0, $v1, 2
/* 87268 800D0EA8 00821021 */  addu       $v0, $a0, $v0
/* 8726C 800D0EAC AC450004 */  sw         $a1, 0x4($v0)
/* 87270 800D0EB0 8C8200AC */  lw         $v0, 0xAC($a0)
/* 87274 800D0EB4 24420001 */  addiu      $v0, $v0, 0x1
/* 87278 800D0EB8 AC8200AC */  sw         $v0, 0xAC($a0)
.Lrace_800D0EBC:
/* 8727C 800D0EBC 03E00008 */  jr         $ra
/* 87280 800D0EC0 00000000 */   nop

glabel func_race_800D0EC4
/* 87284 800D0EC4 27BDFEC0 */  addiu      $sp, $sp, -0x140
/* 87288 800D0EC8 AFB5012C */  sw         $s5, 0x12C($sp)
/* 8728C 800D0ECC 0080A821 */  addu       $s5, $a0, $zero
/* 87290 800D0ED0 AFB30124 */  sw         $s3, 0x124($sp)
/* 87294 800D0ED4 00A09821 */  addu       $s3, $a1, $zero
/* 87298 800D0ED8 AFBF0130 */  sw         $ra, 0x130($sp)
/* 8729C 800D0EDC AFB40128 */  sw         $s4, 0x128($sp)
/* 872A0 800D0EE0 AFB20120 */  sw         $s2, 0x120($sp)
/* 872A4 800D0EE4 AFB1011C */  sw         $s1, 0x11C($sp)
/* 872A8 800D0EE8 AFB00118 */  sw         $s0, 0x118($sp)
/* 872AC 800D0EEC F7B40138 */  sdc1       $f20, 0x138($sp)
/* 872B0 800D0EF0 0C017CC8 */  jal        func_8005F320
/* 872B4 800D0EF4 27A400D0 */   addiu     $a0, $sp, 0xD0
/* 872B8 800D0EF8 8EA200AC */  lw         $v0, 0xAC($s5)
/* 872BC 800D0EFC 10400035 */  beqz       $v0, .Lrace_800D0FD4
/* 872C0 800D0F00 00008821 */   addu      $s1, $zero, $zero
/* 872C4 800D0F04 3C01800D */  lui        $at, %hi(D_race_800CA810)
/* 872C8 800D0F08 C434A810 */  lwc1       $f20, %lo(D_race_800CA810)($at)
/* 872CC 800D0F0C 02209021 */  addu       $s2, $s1, $zero
/* 872D0 800D0F10 02A08021 */  addu       $s0, $s5, $zero
.Lrace_800D0F14:
/* 872D4 800D0F14 27A50010 */  addiu      $a1, $sp, 0x10
/* 872D8 800D0F18 00B22821 */  addu       $a1, $a1, $s2
/* 872DC 800D0F1C 27A60040 */  addiu      $a2, $sp, 0x40
/* 872E0 800D0F20 8E030004 */  lw         $v1, 0x4($s0)
/* 872E4 800D0F24 00D23021 */  addu       $a2, $a2, $s2
/* 872E8 800D0F28 8C620024 */  lw         $v0, 0x24($v1)
/* 872EC 800D0F2C 26310001 */  addiu      $s1, $s1, 0x1
/* 872F0 800D0F30 84440088 */  lh         $a0, 0x88($v0)
/* 872F4 800D0F34 8C42008C */  lw         $v0, 0x8C($v0)
/* 872F8 800D0F38 0040F809 */  jalr       $v0
/* 872FC 800D0F3C 00642021 */   addu      $a0, $v1, $a0
/* 87300 800D0F40 8E030004 */  lw         $v1, 0x4($s0)
/* 87304 800D0F44 27A50090 */  addiu      $a1, $sp, 0x90
/* 87308 800D0F48 8C620024 */  lw         $v0, 0x24($v1)
/* 8730C 800D0F4C 00B22821 */  addu       $a1, $a1, $s2
/* 87310 800D0F50 84440010 */  lh         $a0, 0x10($v0)
/* 87314 800D0F54 8C420014 */  lw         $v0, 0x14($v0)
/* 87318 800D0F58 0040F809 */  jalr       $v0
/* 8731C 800D0F5C 00642021 */   addu      $a0, $v1, $a0
/* 87320 800D0F60 E7B40070 */  swc1       $f20, 0x70($sp)
/* 87324 800D0F64 AFA00074 */  sw         $zero, 0x74($sp)
/* 87328 800D0F68 AFA00078 */  sw         $zero, 0x78($sp)
/* 8732C 800D0F6C AFA00080 */  sw         $zero, 0x80($sp)
/* 87330 800D0F70 AFA00084 */  sw         $zero, 0x84($sp)
/* 87334 800D0F74 E7B40088 */  swc1       $f20, 0x88($sp)
/* 87338 800D0F78 AFA000C0 */  sw         $zero, 0xC0($sp)
/* 8733C 800D0F7C AFA000C4 */  sw         $zero, 0xC4($sp)
/* 87340 800D0F80 AFA000C8 */  sw         $zero, 0xC8($sp)
/* 87344 800D0F84 8E030004 */  lw         $v1, 0x4($s0)
/* 87348 800D0F88 27A50070 */  addiu      $a1, $sp, 0x70
/* 8734C 800D0F8C 8C620024 */  lw         $v0, 0x24($v1)
/* 87350 800D0F90 27A60080 */  addiu      $a2, $sp, 0x80
/* 87354 800D0F94 84440080 */  lh         $a0, 0x80($v0)
/* 87358 800D0F98 8C420084 */  lw         $v0, 0x84($v0)
/* 8735C 800D0F9C 0040F809 */  jalr       $v0
/* 87360 800D0FA0 00642021 */   addu      $a0, $v1, $a0
/* 87364 800D0FA4 8E030004 */  lw         $v1, 0x4($s0)
/* 87368 800D0FA8 2652000C */  addiu      $s2, $s2, 0xC
/* 8736C 800D0FAC 8C620024 */  lw         $v0, 0x24($v1)
/* 87370 800D0FB0 27A500C0 */  addiu      $a1, $sp, 0xC0
/* 87374 800D0FB4 84440018 */  lh         $a0, 0x18($v0)
/* 87378 800D0FB8 8C42001C */  lw         $v0, 0x1C($v0)
/* 8737C 800D0FBC 0040F809 */  jalr       $v0
/* 87380 800D0FC0 00642021 */   addu      $a0, $v1, $a0
/* 87384 800D0FC4 8EA200AC */  lw         $v0, 0xAC($s5)
/* 87388 800D0FC8 0222102B */  sltu       $v0, $s1, $v0
/* 8738C 800D0FCC 1440FFD1 */  bnez       $v0, .Lrace_800D0F14
/* 87390 800D0FD0 26100004 */   addiu     $s0, $s0, 0x4
.Lrace_800D0FD4:
/* 87394 800D0FD4 8EA20014 */  lw         $v0, 0x14($s5)
/* 87398 800D0FD8 AFA200E0 */  sw         $v0, 0xE0($sp)
/* 8739C 800D0FDC 8EA30000 */  lw         $v1, 0x0($s5)
/* 873A0 800D0FE0 24020001 */  addiu      $v0, $zero, 0x1
/* 873A4 800D0FE4 AFA200FC */  sw         $v0, 0xFC($sp)
/* 873A8 800D0FE8 AFA20100 */  sw         $v0, 0x100($sp)
/* 873AC 800D0FEC AFA2010C */  sw         $v0, 0x10C($sp)
/* 873B0 800D0FF0 A7A20110 */  sh         $v0, 0x110($sp)
/* 873B4 800D0FF4 27A200D0 */  addiu      $v0, $sp, 0xD0
/* 873B8 800D0FF8 AFB300F8 */  sw         $s3, 0xF8($sp)
/* 873BC 800D0FFC AFA00104 */  sw         $zero, 0x104($sp)
/* 873C0 800D1000 AFA00108 */  sw         $zero, 0x108($sp)
/* 873C4 800D1004 AFA20114 */  sw         $v0, 0x114($sp)
/* 873C8 800D1008 AFA300E4 */  sw         $v1, 0xE4($sp)
/* 873CC 800D100C 8EA200AC */  lw         $v0, 0xAC($s5)
/* 873D0 800D1010 4480A000 */  mtc1       $zero, $f20
/* 873D4 800D1014 1040000E */  beqz       $v0, .Lrace_800D1050
/* 873D8 800D1018 00008821 */   addu      $s1, $zero, $zero
/* 873DC 800D101C 02A08021 */  addu       $s0, $s5, $zero
.Lrace_800D1020:
/* 873E0 800D1020 8E040004 */  lw         $a0, 0x4($s0)
/* 873E4 800D1024 0C0165C5 */  jal        func_80059714
/* 873E8 800D1028 00000000 */   nop
/* 873EC 800D102C 4600A03C */  c.lt.s     $f20, $f0
/* 873F0 800D1030 00000000 */  nop
/* 873F4 800D1034 45030001 */  bc1tl      .Lrace_800D103C
/* 873F8 800D1038 46000506 */   mov.s     $f20, $f0
.Lrace_800D103C:
/* 873FC 800D103C 8EA200AC */  lw         $v0, 0xAC($s5)
/* 87400 800D1040 26310001 */  addiu      $s1, $s1, 0x1
/* 87404 800D1044 0222102B */  sltu       $v0, $s1, $v0
/* 87408 800D1048 1440FFF5 */  bnez       $v0, .Lrace_800D1020
/* 8740C 800D104C 26100004 */   addiu     $s0, $s0, 0x4
.Lrace_800D1050:
/* 87410 800D1050 26A400B0 */  addiu      $a0, $s5, 0xB0
/* 87414 800D1054 3C01800D */  lui        $at, %hi(D_race_800CA814)
/* 87418 800D1058 C420A814 */  lwc1       $f0, %lo(D_race_800CA814)($at)
/* 8741C 800D105C 27A500E0 */  addiu      $a1, $sp, 0xE0
/* 87420 800D1060 AFA000E8 */  sw         $zero, 0xE8($sp)
/* 87424 800D1064 4600A000 */  add.s      $f0, $f20, $f0
/* 87428 800D1068 AFA000EC */  sw         $zero, 0xEC($sp)
/* 8742C 800D106C AFA000F0 */  sw         $zero, 0xF0($sp)
/* 87430 800D1070 0C033D00 */  jal        func_race_800CF400
/* 87434 800D1074 E7A000F4 */   swc1      $f0, 0xF4($sp)
/* 87438 800D1078 26B0001C */  addiu      $s0, $s5, 0x1C
/* 8743C 800D107C 8EA50000 */  lw         $a1, 0x0($s5)
/* 87440 800D1080 3C067CF0 */  lui        $a2, (0x7CF0BDC2 >> 16)
/* 87444 800D1084 34C6BDC2 */  ori        $a2, $a2, (0x7CF0BDC2 & 0xFFFF)
/* 87448 800D1088 0C016059 */  jal        func_80058164
/* 8744C 800D108C 02002021 */   addu      $a0, $s0, $zero
/* 87450 800D1090 8E02005C */  lw         $v0, 0x5C($s0)
/* 87454 800D1094 27A400D0 */  addiu      $a0, $sp, 0xD0
/* 87458 800D1098 34420002 */  ori        $v0, $v0, 0x2
/* 8745C 800D109C 0C017D66 */  jal        func_8005F598
/* 87460 800D10A0 AE02005C */   sw        $v0, 0x5C($s0)
/* 87464 800D10A4 8EA200AC */  lw         $v0, 0xAC($s5)
/* 87468 800D10A8 1040001C */  beqz       $v0, .Lrace_800D111C
/* 8746C 800D10AC 00008821 */   addu      $s1, $zero, $zero
/* 87470 800D10B0 27B40090 */  addiu      $s4, $sp, 0x90
/* 87474 800D10B4 27B30040 */  addiu      $s3, $sp, 0x40
/* 87478 800D10B8 27B20010 */  addiu      $s2, $sp, 0x10
/* 8747C 800D10BC 02A08021 */  addu       $s0, $s5, $zero
.Lrace_800D10C0:
/* 87480 800D10C0 02402821 */  addu       $a1, $s2, $zero
/* 87484 800D10C4 02603021 */  addu       $a2, $s3, $zero
/* 87488 800D10C8 2673000C */  addiu      $s3, $s3, 0xC
/* 8748C 800D10CC 8E030004 */  lw         $v1, 0x4($s0)
/* 87490 800D10D0 2652000C */  addiu      $s2, $s2, 0xC
/* 87494 800D10D4 8C620024 */  lw         $v0, 0x24($v1)
/* 87498 800D10D8 26310001 */  addiu      $s1, $s1, 0x1
/* 8749C 800D10DC 84440080 */  lh         $a0, 0x80($v0)
/* 874A0 800D10E0 8C420084 */  lw         $v0, 0x84($v0)
/* 874A4 800D10E4 0040F809 */  jalr       $v0
/* 874A8 800D10E8 00642021 */   addu      $a0, $v1, $a0
/* 874AC 800D10EC 8E030004 */  lw         $v1, 0x4($s0)
/* 874B0 800D10F0 02802821 */  addu       $a1, $s4, $zero
/* 874B4 800D10F4 8C620024 */  lw         $v0, 0x24($v1)
/* 874B8 800D10F8 2694000C */  addiu      $s4, $s4, 0xC
/* 874BC 800D10FC 84440018 */  lh         $a0, 0x18($v0)
/* 874C0 800D1100 8C42001C */  lw         $v0, 0x1C($v0)
/* 874C4 800D1104 0040F809 */  jalr       $v0
/* 874C8 800D1108 00642021 */   addu      $a0, $v1, $a0
/* 874CC 800D110C 8EA200AC */  lw         $v0, 0xAC($s5)
/* 874D0 800D1110 0222102B */  sltu       $v0, $s1, $v0
/* 874D4 800D1114 1440FFEA */  bnez       $v0, .Lrace_800D10C0
/* 874D8 800D1118 26100004 */   addiu     $s0, $s0, 0x4
.Lrace_800D111C:
/* 874DC 800D111C 24020001 */  addiu      $v0, $zero, 0x1
/* 874E0 800D1120 27A400D0 */  addiu      $a0, $sp, 0xD0
/* 874E4 800D1124 24050002 */  addiu      $a1, $zero, 0x2
/* 874E8 800D1128 0C017CD6 */  jal        func_8005F358
/* 874EC 800D112C AEA200B4 */   sw        $v0, 0xB4($s5)
/* 874F0 800D1130 8FBF0130 */  lw         $ra, 0x130($sp)
/* 874F4 800D1134 8FB5012C */  lw         $s5, 0x12C($sp)
/* 874F8 800D1138 8FB40128 */  lw         $s4, 0x128($sp)
/* 874FC 800D113C 8FB30124 */  lw         $s3, 0x124($sp)
/* 87500 800D1140 8FB20120 */  lw         $s2, 0x120($sp)
/* 87504 800D1144 8FB1011C */  lw         $s1, 0x11C($sp)
/* 87508 800D1148 8FB00118 */  lw         $s0, 0x118($sp)
/* 8750C 800D114C D7B40138 */  ldc1       $f20, 0x138($sp)
/* 87510 800D1150 03E00008 */  jr         $ra
/* 87514 800D1154 27BD0140 */   addiu     $sp, $sp, 0x140

glabel func_race_800D1158
/* 87518 800D1158 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8751C 800D115C 00802821 */  addu       $a1, $a0, $zero
/* 87520 800D1160 AFBF0010 */  sw         $ra, 0x10($sp)
/* 87524 800D1164 8CA20014 */  lw         $v0, 0x14($a1)
/* 87528 800D1168 8C43012C */  lw         $v1, 0x12C($v0)
/* 8752C 800D116C 84640118 */  lh         $a0, 0x118($v1)
/* 87530 800D1170 00442021 */  addu       $a0, $v0, $a0
/* 87534 800D1174 8C62011C */  lw         $v0, 0x11C($v1)
/* 87538 800D1178 0040F809 */  jalr       $v0
/* 8753C 800D117C 24A5001C */   addiu     $a1, $a1, 0x1C
/* 87540 800D1180 8FBF0010 */  lw         $ra, 0x10($sp)
/* 87544 800D1184 03E00008 */  jr         $ra
/* 87548 800D1188 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D118C
/* 8754C 800D118C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 87550 800D1190 00802821 */  addu       $a1, $a0, $zero
/* 87554 800D1194 AFBF0010 */  sw         $ra, 0x10($sp)
/* 87558 800D1198 8CA20014 */  lw         $v0, 0x14($a1)
/* 8755C 800D119C 8C43012C */  lw         $v1, 0x12C($v0)
/* 87560 800D11A0 84640148 */  lh         $a0, 0x148($v1)
/* 87564 800D11A4 00442021 */  addu       $a0, $v0, $a0
/* 87568 800D11A8 8C62014C */  lw         $v0, 0x14C($v1)
/* 8756C 800D11AC 0040F809 */  jalr       $v0
/* 87570 800D11B0 24A5001C */   addiu     $a1, $a1, 0x1C
/* 87574 800D11B4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 87578 800D11B8 03E00008 */  jr         $ra
/* 8757C 800D11BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D11C0
/* 87580 800D11C0 8C820000 */  lw         $v0, 0x0($a0)
/* 87584 800D11C4 03E00008 */  jr         $ra
/* 87588 800D11C8 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800D11CC
/* 8758C 800D11CC 03E00008 */  jr         $ra
/* 87590 800D11D0 2482001C */   addiu     $v0, $a0, 0x1C

glabel func_race_800D11D4
/* 87594 800D11D4 8C820000 */  lw         $v0, 0x0($a0)
/* 87598 800D11D8 03E00008 */  jr         $ra
/* 8759C 800D11DC 00000000 */   nop
