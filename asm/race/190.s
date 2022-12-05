.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DFD00
/* 960C0 800DFD00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 960C4 800DFD04 AFB00010 */  sw         $s0, 0x10($sp)
/* 960C8 800DFD08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 960CC 800DFD0C 0C03592C */  jal        func_race_800D64B0
/* 960D0 800DFD10 00808021 */   addu      $s0, $a0, $zero
/* 960D4 800DFD14 3C02800D */  lui        $v0, %hi(D_race_800CB560)
/* 960D8 800DFD18 2442B560 */  addiu      $v0, $v0, %lo(D_race_800CB560)
/* 960DC 800DFD1C 02002021 */  addu       $a0, $s0, $zero
/* 960E0 800DFD20 0C037F61 */  jal        func_race_800DFD84
/* 960E4 800DFD24 AE02001C */   sw        $v0, 0x1C($s0)
/* 960E8 800DFD28 02001021 */  addu       $v0, $s0, $zero
/* 960EC 800DFD2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 960F0 800DFD30 8FB00010 */  lw         $s0, 0x10($sp)
/* 960F4 800DFD34 03E00008 */  jr         $ra
/* 960F8 800DFD38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DFD3C
/* 960FC 800DFD3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 96100 800DFD40 AFB00010 */  sw         $s0, 0x10($sp)
/* 96104 800DFD44 00808021 */  addu       $s0, $a0, $zero
/* 96108 800DFD48 AFB10014 */  sw         $s1, 0x14($sp)
/* 9610C 800DFD4C 00A08821 */  addu       $s1, $a1, $zero
/* 96110 800DFD50 3C02800D */  lui        $v0, %hi(D_race_800CB560)
/* 96114 800DFD54 2442B560 */  addiu      $v0, $v0, %lo(D_race_800CB560)
/* 96118 800DFD58 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9611C 800DFD5C 0C037FA6 */  jal        func_race_800DFE98
/* 96120 800DFD60 AE02001C */   sw        $v0, 0x1C($s0)
/* 96124 800DFD64 02002021 */  addu       $a0, $s0, $zero
/* 96128 800DFD68 0C03593D */  jal        func_race_800D64F4
/* 9612C 800DFD6C 02202821 */   addu      $a1, $s1, $zero
/* 96130 800DFD70 8FBF0018 */  lw         $ra, 0x18($sp)
/* 96134 800DFD74 8FB10014 */  lw         $s1, 0x14($sp)
/* 96138 800DFD78 8FB00010 */  lw         $s0, 0x10($sp)
/* 9613C 800DFD7C 03E00008 */  jr         $ra
/* 96140 800DFD80 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DFD84
/* 96144 800DFD84 AC800000 */  sw         $zero, 0x0($a0)
/* 96148 800DFD88 AC800020 */  sw         $zero, 0x20($a0)
/* 9614C 800DFD8C AC800014 */  sw         $zero, 0x14($a0)
/* 96150 800DFD90 03E00008 */  jr         $ra
/* 96154 800DFD94 AC800010 */   sw        $zero, 0x10($a0)

glabel func_race_800DFD98
/* 96158 800DFD98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9615C 800DFD9C AFB00010 */  sw         $s0, 0x10($sp)
/* 96160 800DFDA0 00808021 */  addu       $s0, $a0, $zero
/* 96164 800DFDA4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 96168 800DFDA8 AFB10014 */  sw         $s1, 0x14($sp)
/* 9616C 800DFDAC 8E020014 */  lw         $v0, 0x14($s0)
/* 96170 800DFDB0 10400003 */  beqz       $v0, .Lrace_800DFDC0
/* 96174 800DFDB4 00A08821 */   addu      $s1, $a1, $zero
/* 96178 800DFDB8 0C037FA6 */  jal        func_race_800DFE98
/* 9617C 800DFDBC 00000000 */   nop
.Lrace_800DFDC0:
/* 96180 800DFDC0 00002821 */  addu       $a1, $zero, $zero
/* 96184 800DFDC4 02202021 */  addu       $a0, $s1, $zero
/* 96188 800DFDC8 8E220000 */  lw         $v0, 0x0($s1)
/* 9618C 800DFDCC 02001821 */  addu       $v1, $s0, $zero
/* 96190 800DFDD0 AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800DFDD4:
/* 96194 800DFDD4 8C820004 */  lw         $v0, 0x4($a0)
/* 96198 800DFDD8 24840004 */  addiu      $a0, $a0, 0x4
/* 9619C 800DFDDC 24A50001 */  addiu      $a1, $a1, 0x1
/* 961A0 800DFDE0 AC620004 */  sw         $v0, 0x4($v1)
/* 961A4 800DFDE4 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 961A8 800DFDE8 1440FFFA */  bnez       $v0, .Lrace_800DFDD4
/* 961AC 800DFDEC 24630004 */   addiu     $v1, $v1, 0x4
/* 961B0 800DFDF0 8E220010 */  lw         $v0, 0x10($s1)
/* 961B4 800DFDF4 AE020000 */  sw         $v0, 0x0($s0)
/* 961B8 800DFDF8 8E220014 */  lw         $v0, 0x14($s1)
/* 961BC 800DFDFC AE020020 */  sw         $v0, 0x20($s0)
/* 961C0 800DFE00 8E260018 */  lw         $a2, 0x18($s1)
/* 961C4 800DFE04 8E27001C */  lw         $a3, 0x1C($s1)
/* 961C8 800DFE08 8E280020 */  lw         $t0, 0x20($s1)
/* 961CC 800DFE0C 8E290024 */  lw         $t1, 0x24($s1)
/* 961D0 800DFE10 AE060024 */  sw         $a2, 0x24($s0)
/* 961D4 800DFE14 AE070028 */  sw         $a3, 0x28($s0)
/* 961D8 800DFE18 AE08002C */  sw         $t0, 0x2C($s0)
/* 961DC 800DFE1C AE090030 */  sw         $t1, 0x30($s0)
/* 961E0 800DFE20 8E260028 */  lw         $a2, 0x28($s1)
/* 961E4 800DFE24 8E27002C */  lw         $a3, 0x2C($s1)
/* 961E8 800DFE28 8E280030 */  lw         $t0, 0x30($s1)
/* 961EC 800DFE2C 8E290034 */  lw         $t1, 0x34($s1)
/* 961F0 800DFE30 AE060034 */  sw         $a2, 0x34($s0)
/* 961F4 800DFE34 AE070038 */  sw         $a3, 0x38($s0)
/* 961F8 800DFE38 AE08003C */  sw         $t0, 0x3C($s0)
/* 961FC 800DFE3C AE090040 */  sw         $t1, 0x40($s0)
/* 96200 800DFE40 8E020020 */  lw         $v0, 0x20($s0)
/* 96204 800DFE44 8E230038 */  lw         $v1, 0x38($s1)
/* 96208 800DFE48 30420001 */  andi       $v0, $v0, 0x1
/* 9620C 800DFE4C 10400004 */  beqz       $v0, .Lrace_800DFE60
/* 96210 800DFE50 AE030044 */   sw        $v1, 0x44($s0)
/* 96214 800DFE54 92020018 */  lbu        $v0, 0x18($s0)
/* 96218 800DFE58 34420004 */  ori        $v0, $v0, 0x4
/* 9621C 800DFE5C A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DFE60:
/* 96220 800DFE60 8E020020 */  lw         $v0, 0x20($s0)
/* 96224 800DFE64 30420004 */  andi       $v0, $v0, 0x4
/* 96228 800DFE68 10400005 */  beqz       $v0, .Lrace_800DFE80
/* 9622C 800DFE6C 24020004 */   addiu     $v0, $zero, 0x4
/* 96230 800DFE70 92020018 */  lbu        $v0, 0x18($s0)
/* 96234 800DFE74 34420002 */  ori        $v0, $v0, 0x2
/* 96238 800DFE78 A2020018 */  sb         $v0, 0x18($s0)
/* 9623C 800DFE7C 24020004 */  addiu      $v0, $zero, 0x4
.Lrace_800DFE80:
/* 96240 800DFE80 AE020014 */  sw         $v0, 0x14($s0)
/* 96244 800DFE84 8FBF0018 */  lw         $ra, 0x18($sp)
/* 96248 800DFE88 8FB10014 */  lw         $s1, 0x14($sp)
/* 9624C 800DFE8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 96250 800DFE90 03E00008 */  jr         $ra
/* 96254 800DFE94 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DFE98
/* 96258 800DFE98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9625C 800DFE9C AFB00010 */  sw         $s0, 0x10($sp)
/* 96260 800DFEA0 00808021 */  addu       $s0, $a0, $zero
/* 96264 800DFEA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 96268 800DFEA8 8E02001C */  lw         $v0, 0x1C($s0)
/* 9626C 800DFEAC 00002821 */  addu       $a1, $zero, $zero
/* 96270 800DFEB0 84440020 */  lh         $a0, 0x20($v0)
/* 96274 800DFEB4 8C420024 */  lw         $v0, 0x24($v0)
/* 96278 800DFEB8 0040F809 */  jalr       $v0
/* 9627C 800DFEBC 02042021 */   addu      $a0, $s0, $a0
/* 96280 800DFEC0 0C037F61 */  jal        func_race_800DFD84
/* 96284 800DFEC4 02002021 */   addu      $a0, $s0, $zero
/* 96288 800DFEC8 0C035951 */  jal        func_race_800D6544
/* 9628C 800DFECC 02002021 */   addu      $a0, $s0, $zero
/* 96290 800DFED0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 96294 800DFED4 8FB00010 */  lw         $s0, 0x10($sp)
/* 96298 800DFED8 03E00008 */  jr         $ra
/* 9629C 800DFEDC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DFEE0
/* 962A0 800DFEE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 962A4 800DFEE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 962A8 800DFEE8 00808021 */  addu       $s0, $a0, $zero
/* 962AC 800DFEEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 962B0 800DFEF0 8E020020 */  lw         $v0, 0x20($s0)
/* 962B4 800DFEF4 30420002 */  andi       $v0, $v0, 0x2
/* 962B8 800DFEF8 10400011 */  beqz       $v0, .Lrace_800DFF40
/* 962BC 800DFEFC 00000000 */   nop
/* 962C0 800DFF00 8E030044 */  lw         $v1, 0x44($s0)
/* 962C4 800DFF04 10600008 */  beqz       $v1, .Lrace_800DFF28
/* 962C8 800DFF08 00000000 */   nop
/* 962CC 800DFF0C 8C620024 */  lw         $v0, 0x24($v1)
/* 962D0 800DFF10 84440058 */  lh         $a0, 0x58($v0)
/* 962D4 800DFF14 8C42005C */  lw         $v0, 0x5C($v0)
/* 962D8 800DFF18 0040F809 */  jalr       $v0
/* 962DC 800DFF1C 00642021 */   addu      $a0, $v1, $a0
/* 962E0 800DFF20 08037FE0 */  j          .Lrace_800DFF80
/* 962E4 800DFF24 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DFF28:
/* 962E8 800DFF28 10A00015 */  beqz       $a1, .Lrace_800DFF80
/* 962EC 800DFF2C 02002021 */   addu      $a0, $s0, $zero
/* 962F0 800DFF30 0C0456D5 */  jal        func_race_80115B54
/* 962F4 800DFF34 24A40018 */   addiu     $a0, $a1, 0x18
/* 962F8 800DFF38 08037FE0 */  j          .Lrace_800DFF80
/* 962FC 800DFF3C 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DFF40:
/* 96300 800DFF40 8E030044 */  lw         $v1, 0x44($s0)
/* 96304 800DFF44 10600009 */  beqz       $v1, .Lrace_800DFF6C
/* 96308 800DFF48 00000000 */   nop
/* 9630C 800DFF4C 8C620024 */  lw         $v0, 0x24($v1)
/* 96310 800DFF50 26050024 */  addiu      $a1, $s0, 0x24
/* 96314 800DFF54 84440050 */  lh         $a0, 0x50($v0)
/* 96318 800DFF58 8C420054 */  lw         $v0, 0x54($v0)
/* 9631C 800DFF5C 0040F809 */  jalr       $v0
/* 96320 800DFF60 00642021 */   addu      $a0, $v1, $a0
/* 96324 800DFF64 08037FE0 */  j          .Lrace_800DFF80
/* 96328 800DFF68 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DFF6C:
/* 9632C 800DFF6C 10A00003 */  beqz       $a1, .Lrace_800DFF7C
/* 96330 800DFF70 24A40018 */   addiu     $a0, $a1, 0x18
/* 96334 800DFF74 0C0456B9 */  jal        func_race_80115AE4
/* 96338 800DFF78 26050024 */   addiu     $a1, $s0, 0x24
.Lrace_800DFF7C:
/* 9633C 800DFF7C 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DFF80:
/* 96340 800DFF80 24050001 */  addiu      $a1, $zero, 0x1
/* 96344 800DFF84 0C03596C */  jal        func_race_800D65B0
/* 96348 800DFF88 00A03021 */   addu      $a2, $a1, $zero
/* 9634C 800DFF8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 96350 800DFF90 8FB00010 */  lw         $s0, 0x10($sp)
/* 96354 800DFF94 03E00008 */  jr         $ra
/* 96358 800DFF98 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DFF9C
/* 9635C 800DFF9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 96360 800DFFA0 AFB00010 */  sw         $s0, 0x10($sp)
/* 96364 800DFFA4 00808021 */  addu       $s0, $a0, $zero
/* 96368 800DFFA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9636C 800DFFAC 8E020020 */  lw         $v0, 0x20($s0)
/* 96370 800DFFB0 30420002 */  andi       $v0, $v0, 0x2
/* 96374 800DFFB4 54400010 */  bnel       $v0, $zero, .Lrace_800DFFF8
/* 96378 800DFFB8 02002021 */   addu      $a0, $s0, $zero
/* 9637C 800DFFBC 8E030044 */  lw         $v1, 0x44($s0)
/* 96380 800DFFC0 10600008 */  beqz       $v1, .Lrace_800DFFE4
/* 96384 800DFFC4 00000000 */   nop
/* 96388 800DFFC8 8C620024 */  lw         $v0, 0x24($v1)
/* 9638C 800DFFCC 84440058 */  lh         $a0, 0x58($v0)
/* 96390 800DFFD0 8C42005C */  lw         $v0, 0x5C($v0)
/* 96394 800DFFD4 0040F809 */  jalr       $v0
/* 96398 800DFFD8 00642021 */   addu      $a0, $v1, $a0
/* 9639C 800DFFDC 08037FFE */  j          .Lrace_800DFFF8
/* 963A0 800DFFE0 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DFFE4:
/* 963A4 800DFFE4 10A00004 */  beqz       $a1, .Lrace_800DFFF8
/* 963A8 800DFFE8 02002021 */   addu      $a0, $s0, $zero
/* 963AC 800DFFEC 0C0456D5 */  jal        func_race_80115B54
/* 963B0 800DFFF0 24A40018 */   addiu     $a0, $a1, 0x18
/* 963B4 800DFFF4 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DFFF8:
/* 963B8 800DFFF8 8E050014 */  lw         $a1, 0x14($s0)
/* 963BC 800DFFFC 0C03596C */  jal        func_race_800D65B0
/* 963C0 800E0000 24060003 */   addiu     $a2, $zero, 0x3
/* 963C4 800E0004 24020004 */  addiu      $v0, $zero, 0x4
/* 963C8 800E0008 AE020014 */  sw         $v0, 0x14($s0)
/* 963CC 800E000C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 963D0 800E0010 8FB00010 */  lw         $s0, 0x10($sp)
/* 963D4 800E0014 03E00008 */  jr         $ra
/* 963D8 800E0018 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E001C
/* 963DC 800E001C 8C820044 */  lw         $v0, 0x44($a0)
/* 963E0 800E0020 03E00008 */  jr         $ra
/* 963E4 800E0024 00000000 */   nop

glabel func_race_800E0028
/* 963E8 800E0028 8C820024 */  lw         $v0, 0x24($a0)
/* 963EC 800E002C 8C830028 */  lw         $v1, 0x28($a0)
/* 963F0 800E0030 8C86002C */  lw         $a2, 0x2C($a0)
/* 963F4 800E0034 8C870030 */  lw         $a3, 0x30($a0)
/* 963F8 800E0038 ACA20000 */  sw         $v0, 0x0($a1)
/* 963FC 800E003C ACA30004 */  sw         $v1, 0x4($a1)
/* 96400 800E0040 ACA60008 */  sw         $a2, 0x8($a1)
/* 96404 800E0044 ACA7000C */  sw         $a3, 0xC($a1)
/* 96408 800E0048 8C820034 */  lw         $v0, 0x34($a0)
/* 9640C 800E004C 8C830038 */  lw         $v1, 0x38($a0)
/* 96410 800E0050 8C86003C */  lw         $a2, 0x3C($a0)
/* 96414 800E0054 8C870040 */  lw         $a3, 0x40($a0)
/* 96418 800E0058 ACA20010 */  sw         $v0, 0x10($a1)
/* 9641C 800E005C ACA30014 */  sw         $v1, 0x14($a1)
/* 96420 800E0060 ACA60018 */  sw         $a2, 0x18($a1)
/* 96424 800E0064 ACA7001C */  sw         $a3, 0x1C($a1)
/* 96428 800E0068 03E00008 */  jr         $ra
/* 9642C 800E006C 00000000 */   nop

glabel func_race_800E0070
/* 96430 800E0070 8C820020 */  lw         $v0, 0x20($a0)
/* 96434 800E0074 03E00008 */  jr         $ra
/* 96438 800E0078 30420002 */   andi      $v0, $v0, 0x2

glabel func_race_800E007C
/* 9643C 800E007C 03E00008 */  jr         $ra
/* 96440 800E0080 24020007 */   addiu     $v0, $zero, 0x7
