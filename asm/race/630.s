.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8010EE60
/* C5220 8010EE60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C5224 8010EE64 AFB00010 */  sw         $s0, 0x10($sp)
/* C5228 8010EE68 AFBF0014 */  sw         $ra, 0x14($sp)
/* C522C 8010EE6C 0C0405AC */  jal        func_race_801016B0
/* C5230 8010EE70 00808021 */   addu      $s0, $a0, $zero
/* C5234 8010EE74 02001021 */  addu       $v0, $s0, $zero
/* C5238 8010EE78 3C03800D */  lui        $v1, %hi(D_race_800CDCB0)
/* C523C 8010EE7C 2463DCB0 */  addiu      $v1, $v1, %lo(D_race_800CDCB0)
/* C5240 8010EE80 AC430024 */  sw         $v1, 0x24($v0)
/* C5244 8010EE84 AC40002C */  sw         $zero, 0x2C($v0)
/* C5248 8010EE88 8FBF0014 */  lw         $ra, 0x14($sp)
/* C524C 8010EE8C 8FB00010 */  lw         $s0, 0x10($sp)
/* C5250 8010EE90 03E00008 */  jr         $ra
/* C5254 8010EE94 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010EE98
/* C5258 8010EE98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C525C 8010EE9C AFBF0010 */  sw         $ra, 0x10($sp)
/* C5260 8010EEA0 0C0405BA */  jal        func_race_801016E8
/* C5264 8010EEA4 AC80002C */   sw        $zero, 0x2C($a0)
/* C5268 8010EEA8 8FBF0010 */  lw         $ra, 0x10($sp)
/* C526C 8010EEAC 03E00008 */  jr         $ra
/* C5270 8010EEB0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010EEB4
/* C5274 8010EEB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C5278 8010EEB8 AFB00010 */  sw         $s0, 0x10($sp)
/* C527C 8010EEBC AFBF0014 */  sw         $ra, 0x14($sp)
/* C5280 8010EEC0 0C0405C1 */  jal        func_race_80101704
/* C5284 8010EEC4 00808021 */   addu      $s0, $a0, $zero
/* C5288 8010EEC8 0C043C9F */  jal        func_race_8010F27C
/* C528C 8010EECC 02002021 */   addu      $a0, $s0, $zero
/* C5290 8010EED0 0C043C28 */  jal        func_race_8010F0A0
/* C5294 8010EED4 02002021 */   addu      $a0, $s0, $zero
/* C5298 8010EED8 0C043BD6 */  jal        func_race_8010EF58
/* C529C 8010EEDC 02002021 */   addu      $a0, $s0, $zero
/* C52A0 8010EEE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C52A4 8010EEE4 8FB00010 */  lw         $s0, 0x10($sp)
/* C52A8 8010EEE8 03E00008 */  jr         $ra
/* C52AC 8010EEEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010EEF0
/* C52B0 8010EEF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C52B4 8010EEF4 AFB10014 */  sw         $s1, 0x14($sp)
/* C52B8 8010EEF8 00808821 */  addu       $s1, $a0, $zero
/* C52BC 8010EEFC AFB00010 */  sw         $s0, 0x10($sp)
/* C52C0 8010EF00 AFBF0018 */  sw         $ra, 0x18($sp)
/* C52C4 8010EF04 0C0406C7 */  jal        func_race_80101B1C
/* C52C8 8010EF08 00A08021 */   addu      $s0, $a1, $zero
/* C52CC 8010EF0C 1440000D */  bnez       $v0, .Lrace_8010EF44
/* C52D0 8010EF10 24020001 */   addiu     $v0, $zero, 0x1
/* C52D4 8010EF14 8E030004 */  lw         $v1, 0x4($s0)
/* C52D8 8010EF18 24020003 */  addiu      $v0, $zero, 0x3
/* C52DC 8010EF1C 14620009 */  bne        $v1, $v0, .Lrace_8010EF44
/* C52E0 8010EF20 00001021 */   addu      $v0, $zero, $zero
/* C52E4 8010EF24 8E22002C */  lw         $v0, 0x2C($s1)
/* C52E8 8010EF28 54400001 */  bnel       $v0, $zero, .Lrace_8010EF30
/* C52EC 8010EF2C AC500018 */   sw        $s0, 0x18($v0)
.Lrace_8010EF30:
/* C52F0 8010EF30 AE000018 */  sw         $zero, 0x18($s0)
/* C52F4 8010EF34 8E23002C */  lw         $v1, 0x2C($s1)
/* C52F8 8010EF38 24020001 */  addiu      $v0, $zero, 0x1
/* C52FC 8010EF3C AE030028 */  sw         $v1, 0x28($s0)
/* C5300 8010EF40 AE30002C */  sw         $s0, 0x2C($s1)
.Lrace_8010EF44:
/* C5304 8010EF44 8FBF0018 */  lw         $ra, 0x18($sp)
/* C5308 8010EF48 8FB10014 */  lw         $s1, 0x14($sp)
/* C530C 8010EF4C 8FB00010 */  lw         $s0, 0x10($sp)
/* C5310 8010EF50 03E00008 */  jr         $ra
/* C5314 8010EF54 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010EF58
/* C5318 8010EF58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C531C 8010EF5C AFB20018 */  sw         $s2, 0x18($sp)
/* C5320 8010EF60 00809021 */  addu       $s2, $a0, $zero
/* C5324 8010EF64 AFB10014 */  sw         $s1, 0x14($sp)
/* C5328 8010EF68 00008821 */  addu       $s1, $zero, $zero
/* C532C 8010EF6C AFBF001C */  sw         $ra, 0x1C($sp)
/* C5330 8010EF70 AFB00010 */  sw         $s0, 0x10($sp)
/* C5334 8010EF74 8E45002C */  lw         $a1, 0x2C($s2)
.Lrace_8010EF78:
/* C5338 8010EF78 10A00015 */  beqz       $a1, .Lrace_8010EFD0
/* C533C 8010EF7C 00000000 */   nop
/* C5340 8010EF80 8CA20024 */  lw         $v0, 0x24($a1)
/* C5344 8010EF84 8CB00028 */  lw         $s0, 0x28($a1)
/* C5348 8010EF88 5440000F */  bnel       $v0, $zero, .Lrace_8010EFC8
/* C534C 8010EF8C 00A08821 */   addu      $s1, $a1, $zero
/* C5350 8010EF90 8E42002C */  lw         $v0, 0x2C($s2)
/* C5354 8010EF94 14450005 */  bne        $v0, $a1, .Lrace_8010EFAC
/* C5358 8010EF98 00000000 */   nop
/* C535C 8010EF9C 12000006 */  beqz       $s0, .Lrace_8010EFB8
/* C5360 8010EFA0 AE50002C */   sw        $s0, 0x2C($s2)
/* C5364 8010EFA4 08043BEE */  j          .Lrace_8010EFB8
/* C5368 8010EFA8 AE000018 */   sw        $zero, 0x18($s0)
.Lrace_8010EFAC:
/* C536C 8010EFAC 12000002 */  beqz       $s0, .Lrace_8010EFB8
/* C5370 8010EFB0 AE300028 */   sw        $s0, 0x28($s1)
/* C5374 8010EFB4 AE110018 */  sw         $s1, 0x18($s0)
.Lrace_8010EFB8:
/* C5378 8010EFB8 0C0405A4 */  jal        func_race_80101690
/* C537C 8010EFBC 02402021 */   addu      $a0, $s2, $zero
/* C5380 8010EFC0 08043BDE */  j          .Lrace_8010EF78
/* C5384 8010EFC4 02002821 */   addu      $a1, $s0, $zero
.Lrace_8010EFC8:
/* C5388 8010EFC8 08043BDE */  j          .Lrace_8010EF78
/* C538C 8010EFCC 02002821 */   addu      $a1, $s0, $zero
.Lrace_8010EFD0:
/* C5390 8010EFD0 8FBF001C */  lw         $ra, 0x1C($sp)
/* C5394 8010EFD4 8FB20018 */  lw         $s2, 0x18($sp)
/* C5398 8010EFD8 8FB10014 */  lw         $s1, 0x14($sp)
/* C539C 8010EFDC 8FB00010 */  lw         $s0, 0x10($sp)
/* C53A0 8010EFE0 03E00008 */  jr         $ra
/* C53A4 8010EFE4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010EFE8
/* C53A8 8010EFE8 8CA20014 */  lw         $v0, 0x14($a1)
/* C53AC 8010EFEC 8C4200E0 */  lw         $v0, 0xE0($v0)
/* C53B0 8010EFF0 03E00008 */  jr         $ra
/* C53B4 8010EFF4 2442001C */   addiu     $v0, $v0, 0x1C

glabel func_race_8010EFF8
/* C53B8 8010EFF8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* C53BC 8010EFFC AFB20048 */  sw         $s2, 0x48($sp)
/* C53C0 8010F000 00809021 */  addu       $s2, $a0, $zero
/* C53C4 8010F004 AFB3004C */  sw         $s3, 0x4C($sp)
/* C53C8 8010F008 00A09821 */  addu       $s3, $a1, $zero
/* C53CC 8010F00C 27A60034 */  addiu      $a2, $sp, 0x34
/* C53D0 8010F010 AFBF0050 */  sw         $ra, 0x50($sp)
/* C53D4 8010F014 AFB10044 */  sw         $s1, 0x44($sp)
/* C53D8 8010F018 AFB00040 */  sw         $s0, 0x40($sp)
/* C53DC 8010F01C 8CF00010 */  lw         $s0, 0x10($a3)
/* C53E0 8010F020 8CF10014 */  lw         $s1, 0x14($a3)
/* C53E4 8010F024 24020003 */  addiu      $v0, $zero, 0x3
/* C53E8 8010F028 AE420030 */  sw         $v0, 0x30($s2)
/* C53EC 8010F02C 27A2001C */  addiu      $v0, $sp, 0x1C
/* C53F0 8010F030 27A70028 */  addiu      $a3, $sp, 0x28
/* C53F4 8010F034 AFA20010 */  sw         $v0, 0x10($sp)
/* C53F8 8010F038 02002021 */  addu       $a0, $s0, $zero
/* C53FC 8010F03C 0C045E8B */  jal        func_race_80117A2C
/* C5400 8010F040 02202821 */   addu      $a1, $s1, $zero
/* C5404 8010F044 1040000F */  beqz       $v0, .Lrace_8010F084
/* C5408 8010F048 00000000 */   nop
/* C540C 8010F04C C7A20034 */  lwc1       $f2, 0x34($sp)
/* C5410 8010F050 44800000 */  mtc1       $zero, $f0
/* C5414 8010F054 46001032 */  c.eq.s     $f2, $f0
/* C5418 8010F058 00000000 */  nop
/* C541C 8010F05C 45010009 */  bc1t       .Lrace_8010F084
/* C5420 8010F060 02602021 */   addu      $a0, $s3, $zero
/* C5424 8010F064 02402821 */  addu       $a1, $s2, $zero
/* C5428 8010F068 24A60030 */  addiu      $a2, $a1, 0x30
/* C542C 8010F06C 27A20018 */  addiu      $v0, $sp, 0x18
/* C5430 8010F070 ACB00040 */  sw         $s0, 0x40($a1)
/* C5434 8010F074 AFB10038 */  sw         $s1, 0x38($sp)
/* C5438 8010F078 AFA00018 */  sw         $zero, 0x18($sp)
/* C543C 8010F07C 0C045AFC */  jal        func_race_80116BF0
/* C5440 8010F080 ACA20044 */   sw        $v0, 0x44($a1)
.Lrace_8010F084:
/* C5444 8010F084 8FBF0050 */  lw         $ra, 0x50($sp)
/* C5448 8010F088 8FB3004C */  lw         $s3, 0x4C($sp)
/* C544C 8010F08C 8FB20048 */  lw         $s2, 0x48($sp)
/* C5450 8010F090 8FB10044 */  lw         $s1, 0x44($sp)
/* C5454 8010F094 8FB00040 */  lw         $s0, 0x40($sp)
/* C5458 8010F098 03E00008 */  jr         $ra
/* C545C 8010F09C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_8010F0A0
/* C5460 8010F0A0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C5464 8010F0A4 AFB40020 */  sw         $s4, 0x20($sp)
/* C5468 8010F0A8 0080A021 */  addu       $s4, $a0, $zero
/* C546C 8010F0AC AFB7002C */  sw         $s7, 0x2C($sp)
/* C5470 8010F0B0 24170002 */  addiu      $s7, $zero, 0x2
/* C5474 8010F0B4 AFB60028 */  sw         $s6, 0x28($sp)
/* C5478 8010F0B8 2696000C */  addiu      $s6, $s4, 0xC
/* C547C 8010F0BC AFBF0030 */  sw         $ra, 0x30($sp)
/* C5480 8010F0C0 AFB50024 */  sw         $s5, 0x24($sp)
/* C5484 8010F0C4 AFB3001C */  sw         $s3, 0x1C($sp)
/* C5488 8010F0C8 AFB20018 */  sw         $s2, 0x18($sp)
/* C548C 8010F0CC AFB10014 */  sw         $s1, 0x14($sp)
/* C5490 8010F0D0 AFB00010 */  sw         $s0, 0x10($sp)
/* C5494 8010F0D4 F7B60040 */  sdc1       $f22, 0x40($sp)
/* C5498 8010F0D8 F7B40038 */  sdc1       $f20, 0x38($sp)
/* C549C 8010F0DC 8E92002C */  lw         $s2, 0x2C($s4)
/* C54A0 8010F0E0 4480B000 */  mtc1       $zero, $f22
.Lrace_8010F0E4:
/* C54A4 8010F0E4 12400058 */  beqz       $s2, .Lrace_8010F248
/* C54A8 8010F0E8 00000000 */   nop
/* C54AC 8010F0EC 8E420024 */  lw         $v0, 0x24($s2)
/* C54B0 8010F0F0 10400052 */  beqz       $v0, .Lrace_8010F23C
/* C54B4 8010F0F4 00000000 */   nop
/* C54B8 8010F0F8 8E430014 */  lw         $v1, 0x14($s2)
/* C54BC 8010F0FC 8C6200CC */  lw         $v0, 0xCC($v1)
/* C54C0 8010F100 84440018 */  lh         $a0, 0x18($v0)
/* C54C4 8010F104 8C42001C */  lw         $v0, 0x1C($v0)
/* C54C8 8010F108 0040F809 */  jalr       $v0
/* C54CC 8010F10C 00642021 */   addu      $a0, $v1, $a0
/* C54D0 8010F110 00409821 */  addu       $s3, $v0, $zero
/* C54D4 8010F114 8E510028 */  lw         $s1, 0x28($s2)
.Lrace_8010F118:
/* C54D8 8010F118 12200048 */  beqz       $s1, .Lrace_8010F23C
/* C54DC 8010F11C 00000000 */   nop
/* C54E0 8010F120 8E240014 */  lw         $a0, 0x14($s1)
/* C54E4 8010F124 8C8200CC */  lw         $v0, 0xCC($a0)
/* C54E8 8010F128 84430018 */  lh         $v1, 0x18($v0)
/* C54EC 8010F12C 8C42001C */  lw         $v0, 0x1C($v0)
/* C54F0 8010F130 0040F809 */  jalr       $v0
/* C54F4 8010F134 00832021 */   addu      $a0, $a0, $v1
/* C54F8 8010F138 00408021 */  addu       $s0, $v0, $zero
/* C54FC 8010F13C C660000C */  lwc1       $f0, 0xC($s3)
/* C5500 8010F140 4616003C */  c.lt.s     $f0, $f22
/* C5504 8010F144 00000000 */  nop
/* C5508 8010F148 45000006 */  bc1f       .Lrace_8010F164
/* C550C 8010F14C 0200A821 */   addu      $s5, $s0, $zero
/* C5510 8010F150 8E620024 */  lw         $v0, 0x24($s3)
/* C5514 8010F154 84440008 */  lh         $a0, 0x8($v0)
/* C5518 8010F158 8C42000C */  lw         $v0, 0xC($v0)
/* C551C 8010F15C 0040F809 */  jalr       $v0
/* C5520 8010F160 02642021 */   addu      $a0, $s3, $a0
.Lrace_8010F164:
/* C5524 8010F164 C600000C */  lwc1       $f0, 0xC($s0)
/* C5528 8010F168 C6740014 */  lwc1       $f20, 0x14($s3)
/* C552C 8010F16C 4616003C */  c.lt.s     $f0, $f22
/* C5530 8010F170 00000000 */  nop
/* C5534 8010F174 45000006 */  bc1f       .Lrace_8010F190
/* C5538 8010F178 00000000 */   nop
/* C553C 8010F17C 8E020024 */  lw         $v0, 0x24($s0)
/* C5540 8010F180 84440008 */  lh         $a0, 0x8($v0)
/* C5544 8010F184 8C42000C */  lw         $v0, 0xC($v0)
/* C5548 8010F188 0040F809 */  jalr       $v0
/* C554C 8010F18C 02042021 */   addu      $a0, $s0, $a0
.Lrace_8010F190:
/* C5550 8010F190 C6000010 */  lwc1       $f0, 0x10($s0)
/* C5554 8010F194 4600A03C */  c.lt.s     $f20, $f0
/* C5558 8010F198 00000000 */  nop
/* C555C 8010F19C 45010002 */  bc1t       .Lrace_8010F1A8
/* C5560 8010F1A0 24020001 */   addiu     $v0, $zero, 0x1
/* C5564 8010F1A4 00001021 */  addu       $v0, $zero, $zero
.Lrace_8010F1A8:
/* C5568 8010F1A8 14400024 */  bnez       $v0, .Lrace_8010F23C
/* C556C 8010F1AC 00000000 */   nop
/* C5570 8010F1B0 8E220024 */  lw         $v0, 0x24($s1)
/* C5574 8010F1B4 1040001E */  beqz       $v0, .Lrace_8010F230
/* C5578 8010F1B8 02A02821 */   addu      $a1, $s5, $zero
/* C557C 8010F1BC 8E620024 */  lw         $v0, 0x24($s3)
/* C5580 8010F1C0 84440038 */  lh         $a0, 0x38($v0)
/* C5584 8010F1C4 8C42003C */  lw         $v0, 0x3C($v0)
/* C5588 8010F1C8 0040F809 */  jalr       $v0
/* C558C 8010F1CC 02642021 */   addu      $a0, $s3, $a0
/* C5590 8010F1D0 10400017 */  beqz       $v0, .Lrace_8010F230
/* C5594 8010F1D4 02802021 */   addu      $a0, $s4, $zero
/* C5598 8010F1D8 02402821 */  addu       $a1, $s2, $zero
/* C559C 8010F1DC AE97000C */  sw         $s7, 0xC($s4)
/* C55A0 8010F1E0 8E420014 */  lw         $v0, 0x14($s2)
/* C55A4 8010F1E4 02803021 */  addu       $a2, $s4, $zero
/* C55A8 8010F1E8 AE82001C */  sw         $v0, 0x1C($s4)
/* C55AC 8010F1EC 8E220014 */  lw         $v0, 0x14($s1)
/* C55B0 8010F1F0 02C03821 */  addu       $a3, $s6, $zero
/* C55B4 8010F1F4 0C043BFE */  jal        func_race_8010EFF8
/* C55B8 8010F1F8 AE820020 */   sw        $v0, 0x20($s4)
/* C55BC 8010F1FC 8E420008 */  lw         $v0, 0x8($s2)
/* C55C0 8010F200 30420004 */  andi       $v0, $v0, 0x4
/* C55C4 8010F204 1440000A */  bnez       $v0, .Lrace_8010F230
/* C55C8 8010F208 02802021 */   addu      $a0, $s4, $zero
/* C55CC 8010F20C 02202821 */  addu       $a1, $s1, $zero
/* C55D0 8010F210 AE97000C */  sw         $s7, 0xC($s4)
/* C55D4 8010F214 8E220014 */  lw         $v0, 0x14($s1)
/* C55D8 8010F218 02803021 */  addu       $a2, $s4, $zero
/* C55DC 8010F21C AE82001C */  sw         $v0, 0x1C($s4)
/* C55E0 8010F220 8E420014 */  lw         $v0, 0x14($s2)
/* C55E4 8010F224 02C03821 */  addu       $a3, $s6, $zero
/* C55E8 8010F228 0C043BFE */  jal        func_race_8010EFF8
/* C55EC 8010F22C AE820020 */   sw        $v0, 0x20($s4)
.Lrace_8010F230:
/* C55F0 8010F230 8E310028 */  lw         $s1, 0x28($s1)
/* C55F4 8010F234 08043C46 */  j          .Lrace_8010F118
/* C55F8 8010F238 00000000 */   nop
.Lrace_8010F23C:
/* C55FC 8010F23C 8E520028 */  lw         $s2, 0x28($s2)
/* C5600 8010F240 08043C39 */  j          .Lrace_8010F0E4
/* C5604 8010F244 00000000 */   nop
.Lrace_8010F248:
/* C5608 8010F248 8FBF0030 */  lw         $ra, 0x30($sp)
/* C560C 8010F24C 8FB7002C */  lw         $s7, 0x2C($sp)
/* C5610 8010F250 8FB60028 */  lw         $s6, 0x28($sp)
/* C5614 8010F254 8FB50024 */  lw         $s5, 0x24($sp)
/* C5618 8010F258 8FB40020 */  lw         $s4, 0x20($sp)
/* C561C 8010F25C 8FB3001C */  lw         $s3, 0x1C($sp)
/* C5620 8010F260 8FB20018 */  lw         $s2, 0x18($sp)
/* C5624 8010F264 8FB10014 */  lw         $s1, 0x14($sp)
/* C5628 8010F268 8FB00010 */  lw         $s0, 0x10($sp)
/* C562C 8010F26C D7B60040 */  ldc1       $f22, 0x40($sp)
/* C5630 8010F270 D7B40038 */  ldc1       $f20, 0x38($sp)
/* C5634 8010F274 03E00008 */  jr         $ra
/* C5638 8010F278 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_8010F27C
/* C563C 8010F27C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* C5640 8010F280 AFB7002C */  sw         $s7, 0x2C($sp)
/* C5644 8010F284 0080B821 */  addu       $s7, $a0, $zero
/* C5648 8010F288 AFBF0030 */  sw         $ra, 0x30($sp)
/* C564C 8010F28C AFB60028 */  sw         $s6, 0x28($sp)
/* C5650 8010F290 AFB50024 */  sw         $s5, 0x24($sp)
/* C5654 8010F294 AFB40020 */  sw         $s4, 0x20($sp)
/* C5658 8010F298 AFB3001C */  sw         $s3, 0x1C($sp)
/* C565C 8010F29C AFB20018 */  sw         $s2, 0x18($sp)
/* C5660 8010F2A0 AFB10014 */  sw         $s1, 0x14($sp)
/* C5664 8010F2A4 AFB00010 */  sw         $s0, 0x10($sp)
/* C5668 8010F2A8 F7B80048 */  sdc1       $f24, 0x48($sp)
/* C566C 8010F2AC F7B60040 */  sdc1       $f22, 0x40($sp)
/* C5670 8010F2B0 F7B40038 */  sdc1       $f20, 0x38($sp)
/* C5674 8010F2B4 8EE2002C */  lw         $v0, 0x2C($s7)
/* C5678 8010F2B8 10400076 */  beqz       $v0, .Lrace_8010F494
/* C567C 8010F2BC 0040B021 */   addu      $s6, $v0, $zero
/* C5680 8010F2C0 8EC30014 */  lw         $v1, 0x14($s6)
/* C5684 8010F2C4 8C6200CC */  lw         $v0, 0xCC($v1)
/* C5688 8010F2C8 84440018 */  lh         $a0, 0x18($v0)
/* C568C 8010F2CC 8C42001C */  lw         $v0, 0x1C($v0)
/* C5690 8010F2D0 0040F809 */  jalr       $v0
/* C5694 8010F2D4 00642021 */   addu      $a0, $v1, $a0
/* C5698 8010F2D8 00408821 */  addu       $s1, $v0, $zero
/* C569C 8010F2DC C620000C */  lwc1       $f0, 0xC($s1)
/* C56A0 8010F2E0 4480A000 */  mtc1       $zero, $f20
/* C56A4 8010F2E4 4614003C */  c.lt.s     $f0, $f20
/* C56A8 8010F2E8 00000000 */  nop
/* C56AC 8010F2EC 45000007 */  bc1f       .Lrace_8010F30C
/* C56B0 8010F2F0 4600A586 */   mov.s     $f22, $f20
/* C56B4 8010F2F4 8E220024 */  lw         $v0, 0x24($s1)
/* C56B8 8010F2F8 84440008 */  lh         $a0, 0x8($v0)
/* C56BC 8010F2FC 8C42000C */  lw         $v0, 0xC($v0)
/* C56C0 8010F300 0040F809 */  jalr       $v0
/* C56C4 8010F304 02242021 */   addu      $a0, $s1, $a0
/* C56C8 8010F308 4600A586 */  mov.s      $f22, $f20
.Lrace_8010F30C:
/* C56CC 8010F30C 8EE2002C */  lw         $v0, 0x2C($s7)
/* C56D0 8010F310 C6380010 */  lwc1       $f24, 0x10($s1)
/* C56D4 8010F314 8C530028 */  lw         $s3, 0x28($v0)
.Lrace_8010F318:
/* C56D8 8010F318 1260005E */  beqz       $s3, .Lrace_8010F494
/* C56DC 8010F31C 00000000 */   nop
/* C56E0 8010F320 8E620014 */  lw         $v0, 0x14($s3)
/* C56E4 8010F324 8C4300CC */  lw         $v1, 0xCC($v0)
/* C56E8 8010F328 84640018 */  lh         $a0, 0x18($v1)
/* C56EC 8010F32C 00442021 */  addu       $a0, $v0, $a0
/* C56F0 8010F330 8C62001C */  lw         $v0, 0x1C($v1)
/* C56F4 8010F334 8E750028 */  lw         $s5, 0x28($s3)
/* C56F8 8010F338 0040F809 */  jalr       $v0
/* C56FC 8010F33C 00000000 */   nop
/* C5700 8010F340 C440000C */  lwc1       $f0, 0xC($v0)
/* C5704 8010F344 4616003C */  c.lt.s     $f0, $f22
/* C5708 8010F348 00000000 */  nop
/* C570C 8010F34C 45000006 */  bc1f       .Lrace_8010F368
/* C5710 8010F350 00408821 */   addu      $s1, $v0, $zero
/* C5714 8010F354 8E220024 */  lw         $v0, 0x24($s1)
/* C5718 8010F358 84440008 */  lh         $a0, 0x8($v0)
/* C571C 8010F35C 8C42000C */  lw         $v0, 0xC($v0)
/* C5720 8010F360 0040F809 */  jalr       $v0
/* C5724 8010F364 02242021 */   addu      $a0, $s1, $a0
.Lrace_8010F368:
/* C5728 8010F368 C6200010 */  lwc1       $f0, 0x10($s1)
/* C572C 8010F36C 4618003C */  c.lt.s     $f0, $f24
/* C5730 8010F370 00000000 */  nop
/* C5734 8010F374 4500003A */  bc1f       .Lrace_8010F460
/* C5738 8010F378 00000000 */   nop
/* C573C 8010F37C 12A00002 */  beqz       $s5, .Lrace_8010F388
/* C5740 8010F380 AED50028 */   sw        $s5, 0x28($s6)
/* C5744 8010F384 AEB60018 */  sw         $s6, 0x18($s5)
.Lrace_8010F388:
/* C5748 8010F388 8ED20018 */  lw         $s2, 0x18($s6)
.Lrace_8010F38C:
/* C574C 8010F38C 5240002E */  beql       $s2, $zero, .Lrace_8010F448
/* C5750 8010F390 AE600018 */   sw        $zero, 0x18($s3)
/* C5754 8010F394 8E440014 */  lw         $a0, 0x14($s2)
/* C5758 8010F398 8C8200CC */  lw         $v0, 0xCC($a0)
/* C575C 8010F39C 84430018 */  lh         $v1, 0x18($v0)
/* C5760 8010F3A0 8C42001C */  lw         $v0, 0x1C($v0)
/* C5764 8010F3A4 0040F809 */  jalr       $v0
/* C5768 8010F3A8 00832021 */   addu      $a0, $a0, $v1
/* C576C 8010F3AC 00408021 */  addu       $s0, $v0, $zero
/* C5770 8010F3B0 C620000C */  lwc1       $f0, 0xC($s1)
/* C5774 8010F3B4 4616003C */  c.lt.s     $f0, $f22
/* C5778 8010F3B8 00000000 */  nop
/* C577C 8010F3BC 45000006 */  bc1f       .Lrace_8010F3D8
/* C5780 8010F3C0 0200A021 */   addu      $s4, $s0, $zero
/* C5784 8010F3C4 8E220024 */  lw         $v0, 0x24($s1)
/* C5788 8010F3C8 84440008 */  lh         $a0, 0x8($v0)
/* C578C 8010F3CC 8C42000C */  lw         $v0, 0xC($v0)
/* C5790 8010F3D0 0040F809 */  jalr       $v0
/* C5794 8010F3D4 02242021 */   addu      $a0, $s1, $a0
.Lrace_8010F3D8:
/* C5798 8010F3D8 C600000C */  lwc1       $f0, 0xC($s0)
/* C579C 8010F3DC C6340010 */  lwc1       $f20, 0x10($s1)
/* C57A0 8010F3E0 4616003C */  c.lt.s     $f0, $f22
/* C57A4 8010F3E4 00000000 */  nop
/* C57A8 8010F3E8 45000006 */  bc1f       .Lrace_8010F404
/* C57AC 8010F3EC 00000000 */   nop
/* C57B0 8010F3F0 8E020024 */  lw         $v0, 0x24($s0)
/* C57B4 8010F3F4 84440008 */  lh         $a0, 0x8($v0)
/* C57B8 8010F3F8 8C42000C */  lw         $v0, 0xC($v0)
/* C57BC 8010F3FC 0040F809 */  jalr       $v0
/* C57C0 8010F400 02042021 */   addu      $a0, $s0, $a0
.Lrace_8010F404:
/* C57C4 8010F404 C6800010 */  lwc1       $f0, 0x10($s4)
/* C57C8 8010F408 4614003E */  c.le.s     $f0, $f20
/* C57CC 8010F40C 00000000 */  nop
/* C57D0 8010F410 45010002 */  bc1t       .Lrace_8010F41C
/* C57D4 8010F414 24020001 */   addiu     $v0, $zero, 0x1
/* C57D8 8010F418 00001021 */  addu       $v0, $zero, $zero
.Lrace_8010F41C:
/* C57DC 8010F41C 54400004 */  bnel       $v0, $zero, .Lrace_8010F430
/* C57E0 8010F420 AE720018 */   sw        $s2, 0x18($s3)
/* C57E4 8010F424 8E520018 */  lw         $s2, 0x18($s2)
/* C57E8 8010F428 08043CE3 */  j          .Lrace_8010F38C
/* C57EC 8010F42C 00000000 */   nop
.Lrace_8010F430:
/* C57F0 8010F430 8E420028 */  lw         $v0, 0x28($s2)
/* C57F4 8010F434 AE620028 */  sw         $v0, 0x28($s3)
/* C57F8 8010F438 8E420028 */  lw         $v0, 0x28($s2)
/* C57FC 8010F43C AC530018 */  sw         $s3, 0x18($v0)
/* C5800 8010F440 08043D23 */  j          .Lrace_8010F48C
/* C5804 8010F444 AE530028 */   sw        $s3, 0x28($s2)
.Lrace_8010F448:
/* C5808 8010F448 8EE2002C */  lw         $v0, 0x2C($s7)
/* C580C 8010F44C AE620028 */  sw         $v0, 0x28($s3)
/* C5810 8010F450 8EE2002C */  lw         $v0, 0x2C($s7)
/* C5814 8010F454 AC530018 */  sw         $s3, 0x18($v0)
/* C5818 8010F458 08043D23 */  j          .Lrace_8010F48C
/* C581C 8010F45C AEF3002C */   sw        $s3, 0x2C($s7)
.Lrace_8010F460:
/* C5820 8010F460 C620000C */  lwc1       $f0, 0xC($s1)
/* C5824 8010F464 4616003C */  c.lt.s     $f0, $f22
/* C5828 8010F468 00000000 */  nop
/* C582C 8010F46C 45000006 */  bc1f       .Lrace_8010F488
/* C5830 8010F470 0260B021 */   addu      $s6, $s3, $zero
/* C5834 8010F474 8E220024 */  lw         $v0, 0x24($s1)
/* C5838 8010F478 84440008 */  lh         $a0, 0x8($v0)
/* C583C 8010F47C 8C42000C */  lw         $v0, 0xC($v0)
/* C5840 8010F480 0040F809 */  jalr       $v0
/* C5844 8010F484 02242021 */   addu      $a0, $s1, $a0
.Lrace_8010F488:
/* C5848 8010F488 C6380010 */  lwc1       $f24, 0x10($s1)
.Lrace_8010F48C:
/* C584C 8010F48C 08043CC6 */  j          .Lrace_8010F318
/* C5850 8010F490 02A09821 */   addu      $s3, $s5, $zero
.Lrace_8010F494:
/* C5854 8010F494 8FBF0030 */  lw         $ra, 0x30($sp)
/* C5858 8010F498 8FB7002C */  lw         $s7, 0x2C($sp)
/* C585C 8010F49C 8FB60028 */  lw         $s6, 0x28($sp)
/* C5860 8010F4A0 8FB50024 */  lw         $s5, 0x24($sp)
/* C5864 8010F4A4 8FB40020 */  lw         $s4, 0x20($sp)
/* C5868 8010F4A8 8FB3001C */  lw         $s3, 0x1C($sp)
/* C586C 8010F4AC 8FB20018 */  lw         $s2, 0x18($sp)
/* C5870 8010F4B0 8FB10014 */  lw         $s1, 0x14($sp)
/* C5874 8010F4B4 8FB00010 */  lw         $s0, 0x10($sp)
/* C5878 8010F4B8 D7B80048 */  ldc1       $f24, 0x48($sp)
/* C587C 8010F4BC D7B60040 */  ldc1       $f22, 0x40($sp)
/* C5880 8010F4C0 D7B40038 */  ldc1       $f20, 0x38($sp)
/* C5884 8010F4C4 03E00008 */  jr         $ra
/* C5888 8010F4C8 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_8010F4CC
/* C588C 8010F4CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C5890 8010F4D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* C5894 8010F4D4 0C0404D3 */  jal        func_race_8010134C
/* C5898 8010F4D8 00000000 */   nop
/* C589C 8010F4DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* C58A0 8010F4E0 03E00008 */  jr         $ra
/* C58A4 8010F4E4 27BD0018 */   addiu     $sp, $sp, 0x18
