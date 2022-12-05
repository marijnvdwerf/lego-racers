.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800151A0
/* 15DA0 800151A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 15DA4 800151A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 15DA8 800151A8 00808021 */  addu       $s0, $a0, $zero
/* 15DAC 800151AC AFBF0018 */  sw         $ra, 0x18($sp)
/* 15DB0 800151B0 AFB10014 */  sw         $s1, 0x14($sp)
/* 15DB4 800151B4 8E020008 */  lw         $v0, 0x8($s0)
/* 15DB8 800151B8 10400014 */  beqz       $v0, .L8001520C
/* 15DBC 800151BC 00A08821 */   addu      $s1, $a1, $zero
/* 15DC0 800151C0 0C005607 */  jal        func_8001581C
/* 15DC4 800151C4 00000000 */   nop
/* 15DC8 800151C8 00403021 */  addu       $a2, $v0, $zero
/* 15DCC 800151CC 10C0000F */  beqz       $a2, .L8001520C
/* 15DD0 800151D0 3C028003 */   lui       $v0, %hi(n_syn)
/* 15DD4 800151D4 8C420C84 */  lw         $v0, %lo(n_syn)($v0)
/* 15DD8 800151D8 8E030008 */  lw         $v1, 0x8($s0)
/* 15DDC 800151DC 8C44001C */  lw         $a0, 0x1C($v0)
/* 15DE0 800151E0 8C630088 */  lw         $v1, 0x88($v1)
/* 15DE4 800151E4 2402000C */  addiu      $v0, $zero, 0xC
/* 15DE8 800151E8 A4C20008 */  sh         $v0, 0x8($a2)
/* 15DEC 800151EC 322200FF */  andi       $v0, $s1, 0xFF
/* 15DF0 800151F0 ACC2000C */  sw         $v0, 0xC($a2)
/* 15DF4 800151F4 ACC00000 */  sw         $zero, 0x0($a2)
/* 15DF8 800151F8 00832021 */  addu       $a0, $a0, $v1
/* 15DFC 800151FC ACC40004 */  sw         $a0, 0x4($a2)
/* 15E00 80015200 8E040008 */  lw         $a0, 0x8($s0)
/* 15E04 80015204 0C004DE1 */  jal        func_80013784
/* 15E08 80015208 24050003 */   addiu     $a1, $zero, 0x3
.L8001520C:
/* 15E0C 8001520C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 15E10 80015210 8FB10014 */  lw         $s1, 0x14($sp)
/* 15E14 80015214 8FB00010 */  lw         $s0, 0x10($sp)
/* 15E18 80015218 03E00008 */  jr         $ra
/* 15E1C 8001521C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80015220
/* 15E20 80015220 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 15E24 80015224 AFB00010 */  sw         $s0, 0x10($sp)
/* 15E28 80015228 00808021 */  addu       $s0, $a0, $zero
/* 15E2C 8001522C AFBF0014 */  sw         $ra, 0x14($sp)
/* 15E30 80015230 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 15E34 80015234 8E020008 */  lw         $v0, 0x8($s0)
/* 15E38 80015238 4485A000 */  mtc1       $a1, $f20
/* 15E3C 8001523C 10400013 */  beqz       $v0, .L8001528C
/* 15E40 80015240 00000000 */   nop
/* 15E44 80015244 0C005607 */  jal        func_8001581C
/* 15E48 80015248 00000000 */   nop
/* 15E4C 8001524C 00403021 */  addu       $a2, $v0, $zero
/* 15E50 80015250 10C0000E */  beqz       $a2, .L8001528C
/* 15E54 80015254 3C028003 */   lui       $v0, %hi(n_syn)
/* 15E58 80015258 8C420C84 */  lw         $v0, %lo(n_syn)($v0)
/* 15E5C 8001525C 8E040008 */  lw         $a0, 0x8($s0)
/* 15E60 80015260 8C43001C */  lw         $v1, 0x1C($v0)
/* 15E64 80015264 8C840088 */  lw         $a0, 0x88($a0)
/* 15E68 80015268 24020007 */  addiu      $v0, $zero, 0x7
/* 15E6C 8001526C A4C20008 */  sh         $v0, 0x8($a2)
/* 15E70 80015270 E4D4000C */  swc1       $f20, 0xC($a2)
/* 15E74 80015274 ACC00000 */  sw         $zero, 0x0($a2)
/* 15E78 80015278 00641821 */  addu       $v1, $v1, $a0
/* 15E7C 8001527C ACC30004 */  sw         $v1, 0x4($a2)
/* 15E80 80015280 8E040008 */  lw         $a0, 0x8($s0)
/* 15E84 80015284 0C004DE1 */  jal        func_80013784
/* 15E88 80015288 24050003 */   addiu     $a1, $zero, 0x3
.L8001528C:
/* 15E8C 8001528C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15E90 80015290 8FB00010 */  lw         $s0, 0x10($sp)
/* 15E94 80015294 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 15E98 80015298 03E00008 */  jr         $ra
/* 15E9C 8001529C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800152A0
/* 15EA0 800152A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 15EA4 800152A4 AFB10014 */  sw         $s1, 0x14($sp)
/* 15EA8 800152A8 00808821 */  addu       $s1, $a0, $zero
/* 15EAC 800152AC AFB3001C */  sw         $s3, 0x1C($sp)
/* 15EB0 800152B0 00A09821 */  addu       $s3, $a1, $zero
/* 15EB4 800152B4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 15EB8 800152B8 AFB20018 */  sw         $s2, 0x18($sp)
/* 15EBC 800152BC AFB00010 */  sw         $s0, 0x10($sp)
/* 15EC0 800152C0 8E220008 */  lw         $v0, 0x8($s1)
/* 15EC4 800152C4 10400019 */  beqz       $v0, .L8001532C
/* 15EC8 800152C8 00C09021 */   addu      $s2, $a2, $zero
/* 15ECC 800152CC 0C005607 */  jal        func_8001581C
/* 15ED0 800152D0 00000000 */   nop
/* 15ED4 800152D4 00408021 */  addu       $s0, $v0, $zero
/* 15ED8 800152D8 12000014 */  beqz       $s0, .L8001532C
/* 15EDC 800152DC 02402021 */   addu      $a0, $s2, $zero
/* 15EE0 800152E0 3C028003 */  lui        $v0, %hi(n_syn)
/* 15EE4 800152E4 8C420C84 */  lw         $v0, %lo(n_syn)($v0)
/* 15EE8 800152E8 8E230008 */  lw         $v1, 0x8($s1)
/* 15EEC 800152EC 8C45001C */  lw         $a1, 0x1C($v0)
/* 15EF0 800152F0 8C630088 */  lw         $v1, 0x88($v1)
/* 15EF4 800152F4 2402000B */  addiu      $v0, $zero, 0xB
/* 15EF8 800152F8 A6020008 */  sh         $v0, 0x8($s0)
/* 15EFC 800152FC 00131400 */  sll        $v0, $s3, 16
/* 15F00 80015300 00021403 */  sra        $v0, $v0, 16
/* 15F04 80015304 AE02000C */  sw         $v0, 0xC($s0)
/* 15F08 80015308 00A32821 */  addu       $a1, $a1, $v1
/* 15F0C 8001530C 0C005651 */  jal        func_80015944
/* 15F10 80015310 AE050004 */   sw        $a1, 0x4($s0)
/* 15F14 80015314 24050003 */  addiu      $a1, $zero, 0x3
/* 15F18 80015318 AE020010 */  sw         $v0, 0x10($s0)
/* 15F1C 8001531C AE000000 */  sw         $zero, 0x0($s0)
/* 15F20 80015320 8E240008 */  lw         $a0, 0x8($s1)
/* 15F24 80015324 0C004DE1 */  jal        func_80013784
/* 15F28 80015328 02003021 */   addu      $a2, $s0, $zero
.L8001532C:
/* 15F2C 8001532C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 15F30 80015330 8FB3001C */  lw         $s3, 0x1C($sp)
/* 15F34 80015334 8FB20018 */  lw         $s2, 0x18($sp)
/* 15F38 80015338 8FB10014 */  lw         $s1, 0x14($sp)
/* 15F3C 8001533C 8FB00010 */  lw         $s0, 0x10($sp)
/* 15F40 80015340 03E00008 */  jr         $ra
/* 15F44 80015344 27BD0028 */   addiu     $sp, $sp, 0x28
