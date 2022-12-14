.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel func_800160C0
/* 16CC0 800160C0 3C038003 */  lui        $v1, %hi(D_80030C90)
/* 16CC4 800160C4 8C630C90 */  lw         $v1, %lo(D_80030C90)($v1)
/* 16CC8 800160C8 10600003 */  beqz       $v1, .L800160D8
/* 16CCC 800160CC 00001021 */   addu      $v0, $zero, $zero
/* 16CD0 800160D0 3C028003 */  lui        $v0, %hi(D_80030C98)
/* 16CD4 800160D4 8C420C98 */  lw         $v0, %lo(D_80030C98)($v0)
.L800160D8:
/* 16CD8 800160D8 03E00008 */  jr         $ra
/* 16CDC 800160DC 00000000 */   nop

glabel osCartRomInit
/* 16CE0 800160E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 16CE4 800160E4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 16CE8 800160E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 16CEC 800160EC 0C005A79 */  jal        func_800169E4
/* 16CF0 800160F0 AFB00010 */   sw        $s0, 0x10($sp)
/* 16CF4 800160F4 3C028003 */  lui        $v0, %hi(D_80030CC0)
/* 16CF8 800160F8 8C420CC0 */  lw         $v0, %lo(D_80030CC0)($v0)
/* 16CFC 800160FC 1040004D */  beqz       $v0, .L80016234
/* 16D00 80016100 00000000 */   nop
/* 16D04 80016104 3C028004 */  lui        $v0, %hi(D_8003A454)
/* 16D08 80016108 2442A454 */  addiu      $v0, $v0, %lo(D_8003A454)
/* 16D0C 8001610C 24440010 */  addiu      $a0, $v0, 0x10
/* 16D10 80016110 3C018003 */  lui        $at, %hi(D_80030CC0)
/* 16D14 80016114 AC200CC0 */  sw         $zero, %lo(D_80030CC0)($at)
/* 16D18 80016118 A0400000 */  sb         $zero, 0x0($v0)
/* 16D1C 8001611C 3C02B000 */  lui        $v0, (0xB0000000 >> 16)
/* 16D20 80016120 3C018004 */  lui        $at, %hi(D_8003A45C)
/* 16D24 80016124 AC22A45C */  sw         $v0, %lo(D_8003A45C)($at)
/* 16D28 80016128 3C018004 */  lui        $at, %hi(D_8003A459)
/* 16D2C 8001612C A020A459 */  sb         $zero, %lo(D_8003A459)($at)
/* 16D30 80016130 3C018004 */  lui        $at, %hi(D_8003A460)
/* 16D34 80016134 AC20A460 */  sw         $zero, %lo(D_8003A460)($at)
/* 16D38 80016138 0C006DC8 */  jal        func_8001B720
/* 16D3C 8001613C 24050060 */   addiu     $a1, $zero, 0x60
/* 16D40 80016140 3C02A460 */  lui        $v0, (0xA4600010 >> 16)
/* 16D44 80016144 34420010 */  ori        $v0, $v0, (0xA4600010 & 0xFFFF)
/* 16D48 80016148 8C420000 */  lw         $v0, 0x0($v0)
/* 16D4C 8001614C 30420003 */  andi       $v0, $v0, 0x3
/* 16D50 80016150 10400006 */  beqz       $v0, .L8001616C
/* 16D54 80016154 3C03A460 */   lui       $v1, (0xA4600010 >> 16)
/* 16D58 80016158 34630010 */  ori        $v1, $v1, (0xA4600010 & 0xFFFF)
.L8001615C:
/* 16D5C 8001615C 8C620000 */  lw         $v0, 0x0($v1)
/* 16D60 80016160 30420003 */  andi       $v0, $v0, 0x3
/* 16D64 80016164 1440FFFD */  bnez       $v0, .L8001615C
/* 16D68 80016168 00000000 */   nop
.L8001616C:
/* 16D6C 8001616C 3C08A460 */  lui        $t0, (0xA4600014 >> 16)
/* 16D70 80016170 35080014 */  ori        $t0, $t0, (0xA4600014 & 0xFFFF)
/* 16D74 80016174 3C07A460 */  lui        $a3, (0xA460001C >> 16)
/* 16D78 80016178 34E7001C */  ori        $a3, $a3, (0xA460001C & 0xFFFF)
/* 16D7C 8001617C 3C06A460 */  lui        $a2, (0xA4600020 >> 16)
/* 16D80 80016180 34C60020 */  ori        $a2, $a2, (0xA4600020 & 0xFFFF)
/* 16D84 80016184 3C05A460 */  lui        $a1, (0xA4600018 >> 16)
/* 16D88 80016188 34A50018 */  ori        $a1, $a1, (0xA4600018 & 0xFFFF)
/* 16D8C 8001618C 8D090000 */  lw         $t1, 0x0($t0)
/* 16D90 80016190 8CEA0000 */  lw         $t2, 0x0($a3)
/* 16D94 80016194 8CCB0000 */  lw         $t3, 0x0($a2)
/* 16D98 80016198 8CAC0000 */  lw         $t4, 0x0($a1)
/* 16D9C 8001619C 3C118004 */  lui        $s1, %hi(D_8003A45C)
/* 16DA0 800161A0 2631A45C */  addiu      $s1, $s1, %lo(D_8003A45C)
/* 16DA4 800161A4 8E230000 */  lw         $v1, 0x0($s1)
/* 16DA8 800161A8 240400FF */  addiu      $a0, $zero, 0xFF
/* 16DAC 800161AC 24020003 */  addiu      $v0, $zero, 0x3
/* 16DB0 800161B0 AD040000 */  sw         $a0, 0x0($t0)
/* 16DB4 800161B4 ACE00000 */  sw         $zero, 0x0($a3)
/* 16DB8 800161B8 ACC20000 */  sw         $v0, 0x0($a2)
/* 16DBC 800161BC 3C02A000 */  lui        $v0, %hi(D_A0000000)
/* 16DC0 800161C0 ACA40000 */  sw         $a0, 0x0($a1)
/* 16DC4 800161C4 00621825 */  or         $v1, $v1, $v0
/* 16DC8 800161C8 8C630000 */  lw         $v1, %lo(D_A0000000)($v1)
/* 16DCC 800161CC AD090000 */  sw         $t1, 0x0($t0)
/* 16DD0 800161D0 ACEA0000 */  sw         $t2, 0x0($a3)
/* 16DD4 800161D4 ACCB0000 */  sw         $t3, 0x0($a2)
/* 16DD8 800161D8 ACAC0000 */  sw         $t4, 0x0($a1)
/* 16DDC 800161DC 00031402 */  srl        $v0, $v1, 16
/* 16DE0 800161E0 3042000F */  andi       $v0, $v0, 0xF
/* 16DE4 800161E4 3C018004 */  lui        $at, %hi(D_8003A456)
/* 16DE8 800161E8 A022A456 */  sb         $v0, %lo(D_8003A456)($at)
/* 16DEC 800161EC 00031502 */  srl        $v0, $v1, 20
/* 16DF0 800161F0 3042000F */  andi       $v0, $v0, 0xF
/* 16DF4 800161F4 3C018004 */  lui        $at, %hi(D_8003A455)
/* 16DF8 800161F8 A023A455 */  sb         $v1, %lo(D_8003A455)($at)
/* 16DFC 800161FC 00031A02 */  srl        $v1, $v1, 8
/* 16E00 80016200 3C018004 */  lui        $at, %hi(D_8003A457)
/* 16E04 80016204 A022A457 */  sb         $v0, %lo(D_8003A457)($at)
/* 16E08 80016208 3C018004 */  lui        $at, %hi(D_8003A458)
/* 16E0C 8001620C A023A458 */  sb         $v1, %lo(D_8003A458)($at)
/* 16E10 80016210 0C005734 */  jal        func_80015CD0
/* 16E14 80016214 2630FFF4 */   addiu     $s0, $s1, -0xC
/* 16E18 80016218 3C038003 */  lui        $v1, %hi(D_80030CAC)
/* 16E1C 8001621C 8C630CAC */  lw         $v1, %lo(D_80030CAC)($v1)
/* 16E20 80016220 00402021 */  addu       $a0, $v0, $zero
/* 16E24 80016224 3C018003 */  lui        $at, %hi(D_80030CAC)
/* 16E28 80016228 AC300CAC */  sw         $s0, %lo(D_80030CAC)($at)
/* 16E2C 8001622C 0C005750 */  jal        func_80015D40
/* 16E30 80016230 AE23FFF4 */   sw        $v1, -0xC($s1)
.L80016234:
/* 16E34 80016234 0C005A94 */  jal        func_80016A50
/* 16E38 80016238 00000000 */   nop
/* 16E3C 8001623C 3C028004 */  lui        $v0, %hi(D_8003A450)
/* 16E40 80016240 2442A450 */  addiu      $v0, $v0, %lo(D_8003A450)
/* 16E44 80016244 8FBF0018 */  lw         $ra, 0x18($sp)
/* 16E48 80016248 8FB10014 */  lw         $s1, 0x14($sp)
/* 16E4C 8001624C 8FB00010 */  lw         $s0, 0x10($sp)
/* 16E50 80016250 03E00008 */  jr         $ra
/* 16E54 80016254 27BD0020 */   addiu     $sp, $sp, 0x20
/* 16E58 80016258 00000000 */  nop
/* 16E5C 8001625C 00000000 */  nop
