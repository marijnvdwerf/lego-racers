.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F5090
/* AB450 800F5090 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB454 800F5094 AFB00010 */  sw         $s0, 0x10($sp)
/* AB458 800F5098 00808021 */  addu       $s0, $a0, $zero
/* AB45C 800F509C 3C02800D */  lui        $v0, %hi(D_race_800CCE18)
/* AB460 800F50A0 2442CE18 */  addiu      $v0, $v0, %lo(D_race_800CCE18)
/* AB464 800F50A4 26040018 */  addiu      $a0, $s0, 0x18
/* AB468 800F50A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB46C 800F50AC 0C01955C */  jal        func_80065570
/* AB470 800F50B0 AE0203B4 */   sw        $v0, 0x3B4($s0)
/* AB474 800F50B4 0C01955C */  jal        func_80065570
/* AB478 800F50B8 26040110 */   addiu     $a0, $s0, 0x110
/* AB47C 800F50BC 0C01955C */  jal        func_80065570
/* AB480 800F50C0 26040208 */   addiu     $a0, $s0, 0x208
/* AB484 800F50C4 0C016038 */  jal        func_800580E0
/* AB488 800F50C8 260402FC */   addiu     $a0, $s0, 0x2FC
/* AB48C 800F50CC 0C03D44E */  jal        func_race_800F5138
/* AB490 800F50D0 02002021 */   addu      $a0, $s0, $zero
/* AB494 800F50D4 02001021 */  addu       $v0, $s0, $zero
/* AB498 800F50D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB49C 800F50DC 8FB00010 */  lw         $s0, 0x10($sp)
/* AB4A0 800F50E0 03E00008 */  jr         $ra
/* AB4A4 800F50E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F50E8
/* AB4A8 800F50E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AB4AC 800F50EC AFB10014 */  sw         $s1, 0x14($sp)
/* AB4B0 800F50F0 00808821 */  addu       $s1, $a0, $zero
/* AB4B4 800F50F4 AFB00010 */  sw         $s0, 0x10($sp)
/* AB4B8 800F50F8 00A08021 */  addu       $s0, $a1, $zero
/* AB4BC 800F50FC 3C02800D */  lui        $v0, %hi(D_race_800CCE18)
/* AB4C0 800F5100 2442CE18 */  addiu      $v0, $v0, %lo(D_race_800CCE18)
/* AB4C4 800F5104 AFBF0018 */  sw         $ra, 0x18($sp)
/* AB4C8 800F5108 0C03D51A */  jal        func_race_800F5468
/* AB4CC 800F510C AE2203B4 */   sw        $v0, 0x3B4($s1)
/* AB4D0 800F5110 32100001 */  andi       $s0, $s0, 0x1
/* AB4D4 800F5114 12000003 */  beqz       $s0, .Lrace_800F5124
/* AB4D8 800F5118 00000000 */   nop
/* AB4DC 800F511C 0C01FB5C */  jal        func_8007ED70
/* AB4E0 800F5120 02202021 */   addu      $a0, $s1, $zero
.Lrace_800F5124:
/* AB4E4 800F5124 8FBF0018 */  lw         $ra, 0x18($sp)
/* AB4E8 800F5128 8FB10014 */  lw         $s1, 0x14($sp)
/* AB4EC 800F512C 8FB00010 */  lw         $s0, 0x10($sp)
/* AB4F0 800F5130 03E00008 */  jr         $ra
/* AB4F4 800F5134 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F5138
/* AB4F8 800F5138 AC800000 */  sw         $zero, 0x0($a0)
/* AB4FC 800F513C AC800004 */  sw         $zero, 0x4($a0)
/* AB500 800F5140 AC800014 */  sw         $zero, 0x14($a0)
/* AB504 800F5144 AC80010C */  sw         $zero, 0x10C($a0)
/* AB508 800F5148 AC80038C */  sw         $zero, 0x38C($a0)
/* AB50C 800F514C AC800204 */  sw         $zero, 0x204($a0)
/* AB510 800F5150 AC800008 */  sw         $zero, 0x8($a0)
/* AB514 800F5154 AC80000C */  sw         $zero, 0xC($a0)
/* AB518 800F5158 AC800010 */  sw         $zero, 0x10($a0)
/* AB51C 800F515C AC8003AC */  sw         $zero, 0x3AC($a0)
/* AB520 800F5160 A08003B0 */  sb         $zero, 0x3B0($a0)
/* AB524 800F5164 AC800390 */  sw         $zero, 0x390($a0)
/* AB528 800F5168 AC800394 */  sw         $zero, 0x394($a0)
/* AB52C 800F516C AC800398 */  sw         $zero, 0x398($a0)
/* AB530 800F5170 AC80039C */  sw         $zero, 0x39C($a0)
/* AB534 800F5174 AC8003A0 */  sw         $zero, 0x3A0($a0)
/* AB538 800F5178 03E00008 */  jr         $ra
/* AB53C 800F517C AC8003A4 */   sw        $zero, 0x3A4($a0)

glabel func_race_800F5180
/* AB540 800F5180 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AB544 800F5184 AFB00018 */  sw         $s0, 0x18($sp)
/* AB548 800F5188 00808021 */  addu       $s0, $a0, $zero
/* AB54C 800F518C AFB30024 */  sw         $s3, 0x24($sp)
/* AB550 800F5190 00A09821 */  addu       $s3, $a1, $zero
/* AB554 800F5194 AFB1001C */  sw         $s1, 0x1C($sp)
/* AB558 800F5198 00C08821 */  addu       $s1, $a2, $zero
/* AB55C 800F519C AFB20020 */  sw         $s2, 0x20($sp)
/* AB560 800F51A0 AFBF002C */  sw         $ra, 0x2C($sp)
/* AB564 800F51A4 AFB40028 */  sw         $s4, 0x28($sp)
/* AB568 800F51A8 8E020010 */  lw         $v0, 0x10($s0)
/* AB56C 800F51AC 8FB40040 */  lw         $s4, 0x40($sp)
/* AB570 800F51B0 10400003 */  beqz       $v0, .Lrace_800F51C0
/* AB574 800F51B4 00E09021 */   addu      $s2, $a3, $zero
/* AB578 800F51B8 0C03D51A */  jal        func_race_800F5468
/* AB57C 800F51BC 00000000 */   nop
.Lrace_800F51C0:
/* AB580 800F51C0 3C028013 */  lui        $v0, %hi(D_race_801321C0)
/* AB584 800F51C4 8C4421C0 */  lw         $a0, %lo(D_race_801321C0)($v0)
/* AB588 800F51C8 0C01FB65 */  jal        func_8007ED94
/* AB58C 800F51CC AE110004 */   sw        $s1, 0x4($s0)
/* AB590 800F51D0 0C01FB4C */  jal        func_8007ED30
/* AB594 800F51D4 240425C0 */   addiu     $a0, $zero, 0x25C0
/* AB598 800F51D8 14400007 */  bnez       $v0, .Lrace_800F51F8
/* AB59C 800F51DC AE020010 */   sw        $v0, 0x10($s0)
/* AB5A0 800F51E0 3C04800D */  lui        $a0, %hi(D_race_800CCD10)
/* AB5A4 800F51E4 2484CD10 */  addiu      $a0, $a0, %lo(D_race_800CCD10)
/* AB5A8 800F51E8 00002821 */  addu       $a1, $zero, $zero
/* AB5AC 800F51EC 00A03021 */  addu       $a2, $a1, $zero
/* AB5B0 800F51F0 0C011ACF */  jal        func_80046B3C
/* AB5B4 800F51F4 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800F51F8:
/* AB5B8 800F51F8 0C01FB4C */  jal        func_8007ED30
/* AB5BC 800F51FC 240425C0 */   addiu     $a0, $zero, 0x25C0
/* AB5C0 800F5200 14400007 */  bnez       $v0, .Lrace_800F5220
/* AB5C4 800F5204 AE02000C */   sw        $v0, 0xC($s0)
/* AB5C8 800F5208 3C04800D */  lui        $a0, %hi(D_race_800CCD10)
/* AB5CC 800F520C 2484CD10 */  addiu      $a0, $a0, %lo(D_race_800CCD10)
/* AB5D0 800F5210 00002821 */  addu       $a1, $zero, $zero
/* AB5D4 800F5214 00A03021 */  addu       $a2, $a1, $zero
/* AB5D8 800F5218 0C011ACF */  jal        func_80046B3C
/* AB5DC 800F521C 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800F5220:
/* AB5E0 800F5220 0C01FB4C */  jal        func_8007ED30
/* AB5E4 800F5224 240425C0 */   addiu     $a0, $zero, 0x25C0
/* AB5E8 800F5228 14400007 */  bnez       $v0, .Lrace_800F5248
/* AB5EC 800F522C AE020008 */   sw        $v0, 0x8($s0)
/* AB5F0 800F5230 3C04800D */  lui        $a0, %hi(D_race_800CCD10)
/* AB5F4 800F5234 2484CD10 */  addiu      $a0, $a0, %lo(D_race_800CCD10)
/* AB5F8 800F5238 00002821 */  addu       $a1, $zero, $zero
/* AB5FC 800F523C 00A03021 */  addu       $a2, $a1, $zero
/* AB600 800F5240 0C011ACF */  jal        func_80046B3C
/* AB604 800F5244 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800F5248:
/* AB608 800F5248 0C01FB72 */  jal        func_8007EDC8
/* AB60C 800F524C 00000000 */   nop
/* AB610 800F5250 00002021 */  addu       $a0, $zero, $zero
.Lrace_800F5254:
/* AB614 800F5254 8E020010 */  lw         $v0, 0x10($s0)
/* AB618 800F5258 00041880 */  sll        $v1, $a0, 2
/* AB61C 800F525C 00431021 */  addu       $v0, $v0, $v1
/* AB620 800F5260 AC400000 */  sw         $zero, 0x0($v0)
/* AB624 800F5264 8E02000C */  lw         $v0, 0xC($s0)
/* AB628 800F5268 00431021 */  addu       $v0, $v0, $v1
/* AB62C 800F526C AC400000 */  sw         $zero, 0x0($v0)
/* AB630 800F5270 8E020008 */  lw         $v0, 0x8($s0)
/* AB634 800F5274 24840001 */  addiu      $a0, $a0, 0x1
/* AB638 800F5278 00431021 */  addu       $v0, $v0, $v1
/* AB63C 800F527C AC400000 */  sw         $zero, 0x0($v0)
/* AB640 800F5280 2C820003 */  sltiu      $v0, $a0, 0x3
/* AB644 800F5284 1440FFF3 */  bnez       $v0, .Lrace_800F5254
/* AB648 800F5288 00000000 */   nop
/* AB64C 800F528C 8E020010 */  lw         $v0, 0x10($s0)
/* AB650 800F5290 AC402598 */  sw         $zero, 0x2598($v0)
/* AB654 800F5294 8E020010 */  lw         $v0, 0x10($s0)
/* AB658 800F5298 AC40259C */  sw         $zero, 0x259C($v0)
/* AB65C 800F529C 8E020010 */  lw         $v0, 0x10($s0)
/* AB660 800F52A0 AC4025BC */  sw         $zero, 0x25BC($v0)
/* AB664 800F52A4 8E020010 */  lw         $v0, 0x10($s0)
/* AB668 800F52A8 AC4025A0 */  sw         $zero, 0x25A0($v0)
/* AB66C 800F52AC 8E020010 */  lw         $v0, 0x10($s0)
/* AB670 800F52B0 AC4025A4 */  sw         $zero, 0x25A4($v0)
/* AB674 800F52B4 8E020010 */  lw         $v0, 0x10($s0)
/* AB678 800F52B8 AC4025A8 */  sw         $zero, 0x25A8($v0)
/* AB67C 800F52BC 8E020010 */  lw         $v0, 0x10($s0)
/* AB680 800F52C0 AC4025AC */  sw         $zero, 0x25AC($v0)
/* AB684 800F52C4 8E020010 */  lw         $v0, 0x10($s0)
/* AB688 800F52C8 AC4025B0 */  sw         $zero, 0x25B0($v0)
/* AB68C 800F52CC 8E020010 */  lw         $v0, 0x10($s0)
/* AB690 800F52D0 AC4025B4 */  sw         $zero, 0x25B4($v0)
/* AB694 800F52D4 8E020010 */  lw         $v0, 0x10($s0)
/* AB698 800F52D8 AC4025B8 */  sw         $zero, 0x25B8($v0)
/* AB69C 800F52DC 8E02000C */  lw         $v0, 0xC($s0)
/* AB6A0 800F52E0 AC402598 */  sw         $zero, 0x2598($v0)
/* AB6A4 800F52E4 8E02000C */  lw         $v0, 0xC($s0)
/* AB6A8 800F52E8 AC40259C */  sw         $zero, 0x259C($v0)
/* AB6AC 800F52EC 8E02000C */  lw         $v0, 0xC($s0)
/* AB6B0 800F52F0 AC4025BC */  sw         $zero, 0x25BC($v0)
/* AB6B4 800F52F4 8E02000C */  lw         $v0, 0xC($s0)
/* AB6B8 800F52F8 AC4025A0 */  sw         $zero, 0x25A0($v0)
/* AB6BC 800F52FC 8E02000C */  lw         $v0, 0xC($s0)
/* AB6C0 800F5300 AC4025A4 */  sw         $zero, 0x25A4($v0)
/* AB6C4 800F5304 8E02000C */  lw         $v0, 0xC($s0)
/* AB6C8 800F5308 AC4025A8 */  sw         $zero, 0x25A8($v0)
/* AB6CC 800F530C 8E02000C */  lw         $v0, 0xC($s0)
/* AB6D0 800F5310 AC4025AC */  sw         $zero, 0x25AC($v0)
/* AB6D4 800F5314 8E02000C */  lw         $v0, 0xC($s0)
/* AB6D8 800F5318 AC4025B0 */  sw         $zero, 0x25B0($v0)
/* AB6DC 800F531C 8E02000C */  lw         $v0, 0xC($s0)
/* AB6E0 800F5320 AC4025B4 */  sw         $zero, 0x25B4($v0)
/* AB6E4 800F5324 8E02000C */  lw         $v0, 0xC($s0)
/* AB6E8 800F5328 AC4025B8 */  sw         $zero, 0x25B8($v0)
/* AB6EC 800F532C 8E020008 */  lw         $v0, 0x8($s0)
/* AB6F0 800F5330 AC402598 */  sw         $zero, 0x2598($v0)
/* AB6F4 800F5334 8E020008 */  lw         $v0, 0x8($s0)
/* AB6F8 800F5338 AC40259C */  sw         $zero, 0x259C($v0)
/* AB6FC 800F533C 8E020008 */  lw         $v0, 0x8($s0)
/* AB700 800F5340 AC4025BC */  sw         $zero, 0x25BC($v0)
/* AB704 800F5344 8E020008 */  lw         $v0, 0x8($s0)
/* AB708 800F5348 AC4025A0 */  sw         $zero, 0x25A0($v0)
/* AB70C 800F534C 8E020008 */  lw         $v0, 0x8($s0)
/* AB710 800F5350 AC4025A4 */  sw         $zero, 0x25A4($v0)
/* AB714 800F5354 8E020008 */  lw         $v0, 0x8($s0)
/* AB718 800F5358 AC4025A8 */  sw         $zero, 0x25A8($v0)
/* AB71C 800F535C 8E020008 */  lw         $v0, 0x8($s0)
/* AB720 800F5360 AC4025AC */  sw         $zero, 0x25AC($v0)
/* AB724 800F5364 8E020008 */  lw         $v0, 0x8($s0)
/* AB728 800F5368 AC4025B0 */  sw         $zero, 0x25B0($v0)
/* AB72C 800F536C 8E020008 */  lw         $v0, 0x8($s0)
/* AB730 800F5370 AC4025B4 */  sw         $zero, 0x25B4($v0)
/* AB734 800F5374 8E020008 */  lw         $v0, 0x8($s0)
/* AB738 800F5378 AC4025B8 */  sw         $zero, 0x25B8($v0)
/* AB73C 800F537C 8E030004 */  lw         $v1, 0x4($s0)
/* AB740 800F5380 8C620000 */  lw         $v0, 0x0($v1)
/* AB744 800F5384 84440018 */  lh         $a0, 0x18($v0)
/* AB748 800F5388 8C42001C */  lw         $v0, 0x1C($v0)
/* AB74C 800F538C 0040F809 */  jalr       $v0
/* AB750 800F5390 00642021 */   addu      $a0, $v1, $a0
/* AB754 800F5394 02602821 */  addu       $a1, $s3, $zero
/* AB758 800F5398 3C06800D */  lui        $a2, %hi(D_race_800CCD14)
/* AB75C 800F539C 24C6CD14 */  addiu      $a2, $a2, %lo(D_race_800CCD14)
/* AB760 800F53A0 AE020000 */  sw         $v0, 0x0($s0)
/* AB764 800F53A4 8C4300EC */  lw         $v1, 0xEC($v0)
/* AB768 800F53A8 3C01800D */  lui        $at, %hi(D_race_800CCD1C)
/* AB76C 800F53AC C420CD1C */  lwc1       $f0, %lo(D_race_800CCD1C)($at)
/* AB770 800F53B0 84640030 */  lh         $a0, 0x30($v1)
/* AB774 800F53B4 02403821 */  addu       $a3, $s2, $zero
/* AB778 800F53B8 E7A00010 */  swc1       $f0, 0x10($sp)
/* AB77C 800F53BC 8C630034 */  lw         $v1, 0x34($v1)
/* AB780 800F53C0 0060F809 */  jalr       $v1
/* AB784 800F53C4 00442021 */   addu      $a0, $v0, $a0
/* AB788 800F53C8 8E020000 */  lw         $v0, 0x0($s0)
/* AB78C 800F53CC 8E030000 */  lw         $v1, 0x0($s0)
/* AB790 800F53D0 8C42009C */  lw         $v0, 0x9C($v0)
/* AB794 800F53D4 AE02010C */  sw         $v0, 0x10C($s0)
/* AB798 800F53D8 8C62009C */  lw         $v0, 0x9C($v1)
/* AB79C 800F53DC 244200F4 */  addiu      $v0, $v0, 0xF4
/* AB7A0 800F53E0 AE020204 */  sw         $v0, 0x204($s0)
/* AB7A4 800F53E4 00601021 */  addu       $v0, $v1, $zero
/* AB7A8 800F53E8 8E040204 */  lw         $a0, 0x204($s0)
/* AB7AC 800F53EC 8C420098 */  lw         $v0, 0x98($v0)
/* AB7B0 800F53F0 2405000C */  addiu      $a1, $zero, 0xC
/* AB7B4 800F53F4 0C01971D */  jal        func_80065C74
/* AB7B8 800F53F8 AE02038C */   sw        $v0, 0x38C($s0)
/* AB7BC 800F53FC 3C01800D */  lui        $at, %hi(D_race_800CCD20)
/* AB7C0 800F5400 C420CD20 */  lwc1       $f0, %lo(D_race_800CCD20)($at)
/* AB7C4 800F5404 3C01800D */  lui        $at, %hi(D_race_800CCD24)
/* AB7C8 800F5408 C422CD24 */  lwc1       $f2, %lo(D_race_800CCD24)($at)
/* AB7CC 800F540C 3C01800D */  lui        $at, %hi(D_race_800CCD28)
/* AB7D0 800F5410 C424CD28 */  lwc1       $f4, %lo(D_race_800CCD28)($at)
/* AB7D4 800F5414 E600039C */  swc1       $f0, 0x39C($s0)
/* AB7D8 800F5418 E60203A0 */  swc1       $f2, 0x3A0($s0)
/* AB7DC 800F541C 12400004 */  beqz       $s2, .Lrace_800F5430
/* AB7E0 800F5420 E60403A4 */   swc1      $f4, 0x3A4($s0)
/* AB7E4 800F5424 920203B0 */  lbu        $v0, 0x3B0($s0)
/* AB7E8 800F5428 34420004 */  ori        $v0, $v0, 0x4
/* AB7EC 800F542C A20203B0 */  sb         $v0, 0x3B0($s0)
.Lrace_800F5430:
/* AB7F0 800F5430 52800005 */  beql       $s4, $zero, .Lrace_800F5448
/* AB7F4 800F5434 AE0003A8 */   sw        $zero, 0x3A8($s0)
/* AB7F8 800F5438 920203B0 */  lbu        $v0, 0x3B0($s0)
/* AB7FC 800F543C 34420020 */  ori        $v0, $v0, 0x20
/* AB800 800F5440 A20203B0 */  sb         $v0, 0x3B0($s0)
/* AB804 800F5444 AE0003A8 */  sw         $zero, 0x3A8($s0)
.Lrace_800F5448:
/* AB808 800F5448 8FBF002C */  lw         $ra, 0x2C($sp)
/* AB80C 800F544C 8FB40028 */  lw         $s4, 0x28($sp)
/* AB810 800F5450 8FB30024 */  lw         $s3, 0x24($sp)
/* AB814 800F5454 8FB20020 */  lw         $s2, 0x20($sp)
/* AB818 800F5458 8FB1001C */  lw         $s1, 0x1C($sp)
/* AB81C 800F545C 8FB00018 */  lw         $s0, 0x18($sp)
/* AB820 800F5460 03E00008 */  jr         $ra
/* AB824 800F5464 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800F5468
/* AB828 800F5468 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB82C 800F546C AFB00010 */  sw         $s0, 0x10($sp)
/* AB830 800F5470 00808021 */  addu       $s0, $a0, $zero
/* AB834 800F5474 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB838 800F5478 0C01958C */  jal        func_80065630
/* AB83C 800F547C 26040208 */   addiu     $a0, $s0, 0x208
/* AB840 800F5480 0C01958C */  jal        func_80065630
/* AB844 800F5484 26040110 */   addiu     $a0, $s0, 0x110
/* AB848 800F5488 0C01958C */  jal        func_80065630
/* AB84C 800F548C 26040018 */   addiu     $a0, $s0, 0x18
/* AB850 800F5490 0C01607E */  jal        func_800581F8
/* AB854 800F5494 260402FC */   addiu     $a0, $s0, 0x2FC
/* AB858 800F5498 8E050000 */  lw         $a1, 0x0($s0)
/* AB85C 800F549C 10A00009 */  beqz       $a1, .Lrace_800F54C4
/* AB860 800F54A0 00000000 */   nop
/* AB864 800F54A4 8E020004 */  lw         $v0, 0x4($s0)
/* AB868 800F54A8 8C430000 */  lw         $v1, 0x0($v0)
/* AB86C 800F54AC 84640080 */  lh         $a0, 0x80($v1)
/* AB870 800F54B0 00442021 */  addu       $a0, $v0, $a0
/* AB874 800F54B4 8C620084 */  lw         $v0, 0x84($v1)
/* AB878 800F54B8 0040F809 */  jalr       $v0
/* AB87C 800F54BC 00000000 */   nop
/* AB880 800F54C0 AE000000 */  sw         $zero, 0x0($s0)
.Lrace_800F54C4:
/* AB884 800F54C4 8E040008 */  lw         $a0, 0x8($s0)
/* AB888 800F54C8 10800004 */  beqz       $a0, .Lrace_800F54DC
/* AB88C 800F54CC 00000000 */   nop
/* AB890 800F54D0 0C01FB5C */  jal        func_8007ED70
/* AB894 800F54D4 00000000 */   nop
/* AB898 800F54D8 AE000008 */  sw         $zero, 0x8($s0)
.Lrace_800F54DC:
/* AB89C 800F54DC 8E04000C */  lw         $a0, 0xC($s0)
/* AB8A0 800F54E0 10800004 */  beqz       $a0, .Lrace_800F54F4
/* AB8A4 800F54E4 00000000 */   nop
/* AB8A8 800F54E8 0C01FB5C */  jal        func_8007ED70
/* AB8AC 800F54EC 00000000 */   nop
/* AB8B0 800F54F0 AE00000C */  sw         $zero, 0xC($s0)
.Lrace_800F54F4:
/* AB8B4 800F54F4 8E040010 */  lw         $a0, 0x10($s0)
/* AB8B8 800F54F8 10800004 */  beqz       $a0, .Lrace_800F550C
/* AB8BC 800F54FC 00000000 */   nop
/* AB8C0 800F5500 0C01FB5C */  jal        func_8007ED70
/* AB8C4 800F5504 00000000 */   nop
/* AB8C8 800F5508 AE000010 */  sw         $zero, 0x10($s0)
.Lrace_800F550C:
/* AB8CC 800F550C 0C03D44E */  jal        func_race_800F5138
/* AB8D0 800F5510 02002021 */   addu      $a0, $s0, $zero
/* AB8D4 800F5514 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB8D8 800F5518 8FB00010 */  lw         $s0, 0x10($sp)
/* AB8DC 800F551C 03E00008 */  jr         $ra
/* AB8E0 800F5520 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F5524
/* AB8E4 800F5524 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* AB8E8 800F5528 AFB00030 */  sw         $s0, 0x30($sp)
/* AB8EC 800F552C 00808021 */  addu       $s0, $a0, $zero
/* AB8F0 800F5530 AFBF0038 */  sw         $ra, 0x38($sp)
/* AB8F4 800F5534 AFB10034 */  sw         $s1, 0x34($sp)
/* AB8F8 800F5538 920203B0 */  lbu        $v0, 0x3B0($s0)
/* AB8FC 800F553C 30420002 */  andi       $v0, $v0, 0x2
/* AB900 800F5540 104000B1 */  beqz       $v0, .Lrace_800F5808
/* AB904 800F5544 00A08821 */   addu      $s1, $a1, $zero
/* AB908 800F5548 8E0203AC */  lw         $v0, 0x3AC($s0)
/* AB90C 800F554C 920303B0 */  lbu        $v1, 0x3B0($s0)
/* AB910 800F5550 00511021 */  addu       $v0, $v0, $s1
/* AB914 800F5554 30630001 */  andi       $v1, $v1, 0x1
/* AB918 800F5558 10600010 */  beqz       $v1, .Lrace_800F559C
/* AB91C 800F555C AE0203AC */   sw        $v0, 0x3AC($s0)
/* AB920 800F5560 0C0161A1 */  jal        func_80058684
/* AB924 800F5564 260402FC */   addiu     $a0, $s0, 0x2FC
/* AB928 800F5568 26040018 */  addiu      $a0, $s0, 0x18
/* AB92C 800F556C 0C0197F5 */  jal        func_80065FD4
/* AB930 800F5570 02202821 */   addu      $a1, $s1, $zero
/* AB934 800F5574 26040110 */  addiu      $a0, $s0, 0x110
/* AB938 800F5578 0C0197F5 */  jal        func_80065FD4
/* AB93C 800F557C 02202821 */   addu      $a1, $s1, $zero
/* AB940 800F5580 26040208 */  addiu      $a0, $s0, 0x208
/* AB944 800F5584 8C82005C */  lw         $v0, 0x5C($a0)
/* AB948 800F5588 30420001 */  andi       $v0, $v0, 0x1
/* AB94C 800F558C 10400003 */  beqz       $v0, .Lrace_800F559C
/* AB950 800F5590 00000000 */   nop
/* AB954 800F5594 0C0197F5 */  jal        func_80065FD4
/* AB958 800F5598 02202821 */   addu      $a1, $s1, $zero
.Lrace_800F559C:
/* AB95C 800F559C 920203B0 */  lbu        $v0, 0x3B0($s0)
/* AB960 800F55A0 30420008 */  andi       $v0, $v0, 0x8
/* AB964 800F55A4 10400015 */  beqz       $v0, .Lrace_800F55FC
/* AB968 800F55A8 02202821 */   addu      $a1, $s1, $zero
/* AB96C 800F55AC 8E03010C */  lw         $v1, 0x10C($s0)
/* AB970 800F55B0 8C620024 */  lw         $v0, 0x24($v1)
/* AB974 800F55B4 84440020 */  lh         $a0, 0x20($v0)
/* AB978 800F55B8 8C420024 */  lw         $v0, 0x24($v0)
/* AB97C 800F55BC 0040F809 */  jalr       $v0
/* AB980 800F55C0 00642021 */   addu      $a0, $v1, $a0
/* AB984 800F55C4 8E03038C */  lw         $v1, 0x38C($s0)
/* AB988 800F55C8 8C620024 */  lw         $v0, 0x24($v1)
/* AB98C 800F55CC 02202821 */  addu       $a1, $s1, $zero
/* AB990 800F55D0 84440020 */  lh         $a0, 0x20($v0)
/* AB994 800F55D4 8C420024 */  lw         $v0, 0x24($v0)
/* AB998 800F55D8 0040F809 */  jalr       $v0
/* AB99C 800F55DC 00642021 */   addu      $a0, $v1, $a0
/* AB9A0 800F55E0 8E030204 */  lw         $v1, 0x204($s0)
/* AB9A4 800F55E4 8C620024 */  lw         $v0, 0x24($v1)
/* AB9A8 800F55E8 02202821 */  addu       $a1, $s1, $zero
/* AB9AC 800F55EC 84440020 */  lh         $a0, 0x20($v0)
/* AB9B0 800F55F0 8C420024 */  lw         $v0, 0x24($v0)
/* AB9B4 800F55F4 0040F809 */  jalr       $v0
/* AB9B8 800F55F8 00642021 */   addu      $a0, $v1, $a0
.Lrace_800F55FC:
/* AB9BC 800F55FC 8E0303A8 */  lw         $v1, 0x3A8($s0)
/* AB9C0 800F5600 0223102B */  sltu       $v0, $s1, $v1
/* AB9C4 800F5604 1440007F */  bnez       $v0, .Lrace_800F5804
/* AB9C8 800F5608 00711023 */   subu      $v0, $v1, $s1
/* AB9CC 800F560C 02231823 */  subu       $v1, $s1, $v1
/* AB9D0 800F5610 240200FA */  addiu      $v0, $zero, 0xFA
/* AB9D4 800F5614 8E040010 */  lw         $a0, 0x10($s0)
/* AB9D8 800F5618 00431023 */  subu       $v0, $v0, $v1
/* AB9DC 800F561C AE0203A8 */  sw         $v0, 0x3A8($s0)
/* AB9E0 800F5620 8C822598 */  lw         $v0, 0x2598($a0)
/* AB9E4 800F5624 2C4203C1 */  sltiu      $v0, $v0, 0x3C1
/* AB9E8 800F5628 10400077 */  beqz       $v0, .Lrace_800F5808
/* AB9EC 800F562C 27A50010 */   addiu     $a1, $sp, 0x10
/* AB9F0 800F5630 8E020014 */  lw         $v0, 0x14($s0)
/* AB9F4 800F5634 8C43005C */  lw         $v1, 0x5C($v0)
/* AB9F8 800F5638 8C620024 */  lw         $v0, 0x24($v1)
/* AB9FC 800F563C 84440010 */  lh         $a0, 0x10($v0)
/* ABA00 800F5640 8C420014 */  lw         $v0, 0x14($v0)
/* ABA04 800F5644 0040F809 */  jalr       $v0
/* ABA08 800F5648 00642021 */   addu      $a0, $v1, $a0
/* ABA0C 800F564C 8E030010 */  lw         $v1, 0x10($s0)
/* ABA10 800F5650 C7A00010 */  lwc1       $f0, 0x10($sp)
/* ABA14 800F5654 3C01800D */  lui        $at, %hi(D_race_800CCD2C)
/* ABA18 800F5658 C422CD2C */  lwc1       $f2, %lo(D_race_800CCD2C)($at)
/* ABA1C 800F565C 8C642598 */  lw         $a0, 0x2598($v1)
/* ABA20 800F5660 46020002 */  mul.s      $f0, $f0, $f2
/* ABA24 800F5664 00041080 */  sll        $v0, $a0, 2
/* ABA28 800F5668 00441021 */  addu       $v0, $v0, $a0
/* ABA2C 800F566C 00021040 */  sll        $v0, $v0, 1
/* ABA30 800F5670 00621821 */  addu       $v1, $v1, $v0
/* ABA34 800F5674 4600010D */  trunc.w.s  $f4, $f0
/* ABA38 800F5678 44022000 */  mfc1       $v0, $f4
/* ABA3C 800F567C A462000C */  sh         $v0, 0xC($v1)
/* ABA40 800F5680 8E030010 */  lw         $v1, 0x10($s0)
/* ABA44 800F5684 C7A00014 */  lwc1       $f0, 0x14($sp)
/* ABA48 800F5688 8C642598 */  lw         $a0, 0x2598($v1)
/* ABA4C 800F568C 46020002 */  mul.s      $f0, $f0, $f2
/* ABA50 800F5690 00041080 */  sll        $v0, $a0, 2
/* ABA54 800F5694 00441021 */  addu       $v0, $v0, $a0
/* ABA58 800F5698 00021040 */  sll        $v0, $v0, 1
/* ABA5C 800F569C 00621821 */  addu       $v1, $v1, $v0
/* ABA60 800F56A0 4600010D */  trunc.w.s  $f4, $f0
/* ABA64 800F56A4 44022000 */  mfc1       $v0, $f4
/* ABA68 800F56A8 A462000E */  sh         $v0, 0xE($v1)
/* ABA6C 800F56AC 8E030010 */  lw         $v1, 0x10($s0)
/* ABA70 800F56B0 C7A00018 */  lwc1       $f0, 0x18($sp)
/* ABA74 800F56B4 8C642598 */  lw         $a0, 0x2598($v1)
/* ABA78 800F56B8 46020002 */  mul.s      $f0, $f0, $f2
/* ABA7C 800F56BC 00041080 */  sll        $v0, $a0, 2
/* ABA80 800F56C0 00441021 */  addu       $v0, $v0, $a0
/* ABA84 800F56C4 00021040 */  sll        $v0, $v0, 1
/* ABA88 800F56C8 00621821 */  addu       $v1, $v1, $v0
/* ABA8C 800F56CC 4600010D */  trunc.w.s  $f4, $f0
/* ABA90 800F56D0 44022000 */  mfc1       $v0, $f4
/* ABA94 800F56D4 A4620010 */  sh         $v0, 0x10($v1)
/* ABA98 800F56D8 8E020014 */  lw         $v0, 0x14($s0)
/* ABA9C 800F56DC 8C44005C */  lw         $a0, 0x5C($v0)
/* ABAA0 800F56E0 27A50020 */  addiu      $a1, $sp, 0x20
/* ABAA4 800F56E4 0C00109A */  jal        func_80004268
/* ABAA8 800F56E8 24840028 */   addiu     $a0, $a0, 0x28
/* ABAAC 800F56EC 8E030010 */  lw         $v1, 0x10($s0)
/* ABAB0 800F56F0 C7A00020 */  lwc1       $f0, 0x20($sp)
/* ABAB4 800F56F4 3C01800D */  lui        $at, %hi(D_race_800CCD30)
/* ABAB8 800F56F8 C422CD30 */  lwc1       $f2, %lo(D_race_800CCD30)($at)
/* ABABC 800F56FC 8C642598 */  lw         $a0, 0x2598($v1)
/* ABAC0 800F5700 46020002 */  mul.s      $f0, $f0, $f2
/* ABAC4 800F5704 00041080 */  sll        $v0, $a0, 2
/* ABAC8 800F5708 00441021 */  addu       $v0, $v0, $a0
/* ABACC 800F570C 00021040 */  sll        $v0, $v0, 1
/* ABAD0 800F5710 00621821 */  addu       $v1, $v1, $v0
/* ABAD4 800F5714 4600010D */  trunc.w.s  $f4, $f0
/* ABAD8 800F5718 44022000 */  mfc1       $v0, $f4
/* ABADC 800F571C A0620012 */  sb         $v0, 0x12($v1)
/* ABAE0 800F5720 8E030010 */  lw         $v1, 0x10($s0)
/* ABAE4 800F5724 C7A00024 */  lwc1       $f0, 0x24($sp)
/* ABAE8 800F5728 8C642598 */  lw         $a0, 0x2598($v1)
/* ABAEC 800F572C 46020002 */  mul.s      $f0, $f0, $f2
/* ABAF0 800F5730 00041080 */  sll        $v0, $a0, 2
/* ABAF4 800F5734 00441021 */  addu       $v0, $v0, $a0
/* ABAF8 800F5738 00021040 */  sll        $v0, $v0, 1
/* ABAFC 800F573C 00621821 */  addu       $v1, $v1, $v0
/* ABB00 800F5740 4600010D */  trunc.w.s  $f4, $f0
/* ABB04 800F5744 44022000 */  mfc1       $v0, $f4
/* ABB08 800F5748 A0620013 */  sb         $v0, 0x13($v1)
/* ABB0C 800F574C 8E030010 */  lw         $v1, 0x10($s0)
/* ABB10 800F5750 C7A00028 */  lwc1       $f0, 0x28($sp)
/* ABB14 800F5754 8C642598 */  lw         $a0, 0x2598($v1)
/* ABB18 800F5758 46020002 */  mul.s      $f0, $f0, $f2
/* ABB1C 800F575C 00041080 */  sll        $v0, $a0, 2
/* ABB20 800F5760 00441021 */  addu       $v0, $v0, $a0
/* ABB24 800F5764 00021040 */  sll        $v0, $v0, 1
/* ABB28 800F5768 00621821 */  addu       $v1, $v1, $v0
/* ABB2C 800F576C 4600010D */  trunc.w.s  $f4, $f0
/* ABB30 800F5770 44022000 */  mfc1       $v0, $f4
/* ABB34 800F5774 A0620014 */  sb         $v0, 0x14($v1)
/* ABB38 800F5778 8E030010 */  lw         $v1, 0x10($s0)
/* ABB3C 800F577C C7A0002C */  lwc1       $f0, 0x2C($sp)
/* ABB40 800F5780 8C642598 */  lw         $a0, 0x2598($v1)
/* ABB44 800F5784 46020002 */  mul.s      $f0, $f0, $f2
/* ABB48 800F5788 00041080 */  sll        $v0, $a0, 2
/* ABB4C 800F578C 00441021 */  addu       $v0, $v0, $a0
/* ABB50 800F5790 00021040 */  sll        $v0, $v0, 1
/* ABB54 800F5794 00621821 */  addu       $v1, $v1, $v0
/* ABB58 800F5798 4600010D */  trunc.w.s  $f4, $f0
/* ABB5C 800F579C 44022000 */  mfc1       $v0, $f4
/* ABB60 800F57A0 A0620015 */  sb         $v0, 0x15($v1)
/* ABB64 800F57A4 8E030010 */  lw         $v1, 0x10($s0)
/* ABB68 800F57A8 8C622598 */  lw         $v0, 0x2598($v1)
/* ABB6C 800F57AC 14400013 */  bnez       $v0, .Lrace_800F57FC
/* ABB70 800F57B0 24420001 */   addiu     $v0, $v0, 0x1
/* ABB74 800F57B4 8FA70010 */  lw         $a3, 0x10($sp)
/* ABB78 800F57B8 8FA80014 */  lw         $t0, 0x14($sp)
/* ABB7C 800F57BC 8FA90018 */  lw         $t1, 0x18($sp)
/* ABB80 800F57C0 AC6725A0 */  sw         $a3, 0x25A0($v1)
/* ABB84 800F57C4 AC6825A4 */  sw         $t0, 0x25A4($v1)
/* ABB88 800F57C8 AC6925A8 */  sw         $t1, 0x25A8($v1)
/* ABB8C 800F57CC 8E020010 */  lw         $v0, 0x10($s0)
/* ABB90 800F57D0 8FA70020 */  lw         $a3, 0x20($sp)
/* ABB94 800F57D4 8FA80024 */  lw         $t0, 0x24($sp)
/* ABB98 800F57D8 8FA90028 */  lw         $t1, 0x28($sp)
/* ABB9C 800F57DC 8FA6002C */  lw         $a2, 0x2C($sp)
/* ABBA0 800F57E0 AC4725AC */  sw         $a3, 0x25AC($v0)
/* ABBA4 800F57E4 AC4825B0 */  sw         $t0, 0x25B0($v0)
/* ABBA8 800F57E8 AC4925B4 */  sw         $t1, 0x25B4($v0)
/* ABBAC 800F57EC AC4625B8 */  sw         $a2, 0x25B8($v0)
/* ABBB0 800F57F0 8E030010 */  lw         $v1, 0x10($s0)
/* ABBB4 800F57F4 8C622598 */  lw         $v0, 0x2598($v1)
/* ABBB8 800F57F8 24420001 */  addiu      $v0, $v0, 0x1
.Lrace_800F57FC:
/* ABBBC 800F57FC 0803D602 */  j          .Lrace_800F5808
/* ABBC0 800F5800 AC622598 */   sw        $v0, 0x2598($v1)
.Lrace_800F5804:
/* ABBC4 800F5804 AE0203A8 */  sw         $v0, 0x3A8($s0)
.Lrace_800F5808:
/* ABBC8 800F5808 8FBF0038 */  lw         $ra, 0x38($sp)
/* ABBCC 800F580C 8FB10034 */  lw         $s1, 0x34($sp)
/* ABBD0 800F5810 8FB00030 */  lw         $s0, 0x30($sp)
/* ABBD4 800F5814 03E00008 */  jr         $ra
/* ABBD8 800F5818 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800F581C
/* ABBDC 800F581C 27BDFF38 */  addiu      $sp, $sp, -0xC8
/* ABBE0 800F5820 AFB600A0 */  sw         $s6, 0xA0($sp)
/* ABBE4 800F5824 0080B021 */  addu       $s6, $a0, $zero
/* ABBE8 800F5828 AFB700A4 */  sw         $s7, 0xA4($sp)
/* ABBEC 800F582C 00A0B821 */  addu       $s7, $a1, $zero
/* ABBF0 800F5830 AFB30094 */  sw         $s3, 0x94($sp)
/* ABBF4 800F5834 3C020003 */  lui        $v0, (0x3A97F >> 16)
/* ABBF8 800F5838 AFBF00AC */  sw         $ra, 0xAC($sp)
/* ABBFC 800F583C AFBE00A8 */  sw         $fp, 0xA8($sp)
/* ABC00 800F5840 AFB5009C */  sw         $s5, 0x9C($sp)
/* ABC04 800F5844 AFB40098 */  sw         $s4, 0x98($sp)
/* ABC08 800F5848 AFB20090 */  sw         $s2, 0x90($sp)
/* ABC0C 800F584C AFB1008C */  sw         $s1, 0x8C($sp)
/* ABC10 800F5850 AFB00088 */  sw         $s0, 0x88($sp)
/* ABC14 800F5854 F7B800C0 */  sdc1       $f24, 0xC0($sp)
/* ABC18 800F5858 F7B600B8 */  sdc1       $f22, 0xB8($sp)
/* ABC1C 800F585C F7B400B0 */  sdc1       $f20, 0xB0($sp)
/* ABC20 800F5860 8EC303AC */  lw         $v1, 0x3AC($s6)
/* ABC24 800F5864 3442A97F */  ori        $v0, $v0, (0x3A97F & 0xFFFF)
/* ABC28 800F5868 0043102B */  sltu       $v0, $v0, $v1
/* ABC2C 800F586C 14400143 */  bnez       $v0, .Lrace_800F5D7C
/* ABC30 800F5870 00009821 */   addu      $s3, $zero, $zero
/* ABC34 800F5874 2405007F */  addiu      $a1, $zero, 0x7F
/* ABC38 800F5878 02603021 */  addu       $a2, $s3, $zero
/* ABC3C 800F587C 3C01800D */  lui        $at, %hi(D_race_800CCD34)
/* ABC40 800F5880 C438CD34 */  lwc1       $f24, %lo(D_race_800CCD34)($at)
/* ABC44 800F5884 27A80020 */  addiu      $t0, $sp, 0x20
/* ABC48 800F5888 AFA00080 */  sw         $zero, 0x80($sp)
/* ABC4C 800F588C AFA80084 */  sw         $t0, 0x84($sp)
/* ABC50 800F5890 8EE2012C */  lw         $v0, 0x12C($s7)
/* ABC54 800F5894 3C01800D */  lui        $at, %hi(D_race_800CCD38)
/* ABC58 800F5898 C436CD38 */  lwc1       $f22, %lo(D_race_800CCD38)($at)
/* ABC5C 800F589C 84440170 */  lh         $a0, 0x170($v0)
/* ABC60 800F58A0 8C420174 */  lw         $v0, 0x174($v0)
/* ABC64 800F58A4 0040F809 */  jalr       $v0
/* ABC68 800F58A8 02E42021 */   addu      $a0, $s7, $a0
.Lrace_800F58AC:
/* ABC6C 800F58AC 8FA80080 */  lw         $t0, 0x80($sp)
/* ABC70 800F58B0 2D020002 */  sltiu      $v0, $t0, 0x2
/* ABC74 800F58B4 1040012C */  beqz       $v0, .Lrace_800F5D68
/* ABC78 800F58B8 00000000 */   nop
/* ABC7C 800F58BC 15000014 */  bnez       $t0, .Lrace_800F5910
/* ABC80 800F58C0 00000000 */   nop
/* ABC84 800F58C4 92C203B0 */  lbu        $v0, 0x3B0($s6)
/* ABC88 800F58C8 30420001 */  andi       $v0, $v0, 0x1
/* ABC8C 800F58CC 10400124 */  beqz       $v0, .Lrace_800F5D60
/* ABC90 800F58D0 25080001 */   addiu     $t0, $t0, 0x1
/* ABC94 800F58D4 8EC3000C */  lw         $v1, 0xC($s6)
/* ABC98 800F58D8 8C6225BC */  lw         $v0, 0x25BC($v1)
/* ABC9C 800F58DC 5440FFF3 */  bnel       $v0, $zero, .Lrace_800F58AC
/* ABCA0 800F58E0 AFA80080 */   sw        $t0, 0x80($sp)
/* ABCA4 800F58E4 26D20018 */  addiu      $s2, $s6, 0x18
/* ABCA8 800F58E8 26D402FC */  addiu      $s4, $s6, 0x2FC
/* ABCAC 800F58EC 26C40208 */  addiu      $a0, $s6, 0x208
/* ABCB0 800F58F0 8C82005C */  lw         $v0, 0x5C($a0)
/* ABCB4 800F58F4 30420001 */  andi       $v0, $v0, 0x1
/* ABCB8 800F58F8 10400002 */  beqz       $v0, .Lrace_800F5904
/* ABCBC 800F58FC 26D50110 */   addiu     $s5, $s6, 0x110
/* ABCC0 800F5900 00809821 */  addu       $s3, $a0, $zero
.Lrace_800F5904:
/* ABCC4 800F5904 00608021 */  addu       $s0, $v1, $zero
/* ABCC8 800F5908 0803D650 */  j          .Lrace_800F5940
/* ABCCC 800F590C 26DE0390 */   addiu     $fp, $s6, 0x390
.Lrace_800F5910:
/* ABCD0 800F5910 92C203B0 */  lbu        $v0, 0x3B0($s6)
/* ABCD4 800F5914 30420008 */  andi       $v0, $v0, 0x8
/* ABCD8 800F5918 1040010F */  beqz       $v0, .Lrace_800F5D58
/* ABCDC 800F591C 00000000 */   nop
/* ABCE0 800F5920 8EC30008 */  lw         $v1, 0x8($s6)
/* ABCE4 800F5924 8C6225BC */  lw         $v0, 0x25BC($v1)
/* ABCE8 800F5928 1440010B */  bnez       $v0, .Lrace_800F5D58
/* ABCEC 800F592C 00608021 */   addu      $s0, $v1, $zero
/* ABCF0 800F5930 26DE039C */  addiu      $fp, $s6, 0x39C
/* ABCF4 800F5934 8ED2010C */  lw         $s2, 0x10C($s6)
/* ABCF8 800F5938 8ED4038C */  lw         $s4, 0x38C($s6)
/* ABCFC 800F593C 8ED50204 */  lw         $s5, 0x204($s6)
.Lrace_800F5940:
/* ABD00 800F5940 92C203B0 */  lbu        $v0, 0x3B0($s6)
/* ABD04 800F5944 30420002 */  andi       $v0, $v0, 0x2
/* ABD08 800F5948 1440002E */  bnez       $v0, .Lrace_800F5A04
/* ABD0C 800F594C 3C021062 */   lui       $v0, (0x10624DD3 >> 16)
/* ABD10 800F5950 261125A0 */  addiu      $s1, $s0, 0x25A0
/* ABD14 800F5954 8E420024 */  lw         $v0, 0x24($s2)
/* ABD18 800F5958 02202821 */  addu       $a1, $s1, $zero
/* ABD1C 800F595C 84440018 */  lh         $a0, 0x18($v0)
/* ABD20 800F5960 8C42001C */  lw         $v0, 0x1C($v0)
/* ABD24 800F5964 0040F809 */  jalr       $v0
/* ABD28 800F5968 02442021 */   addu      $a0, $s2, $a0
/* ABD2C 800F596C 261025AC */  addiu      $s0, $s0, 0x25AC
/* ABD30 800F5970 02002021 */  addu       $a0, $s0, $zero
/* ABD34 800F5974 0C001055 */  jal        func_80004154
/* ABD38 800F5978 26450028 */   addiu     $a1, $s2, 0x28
/* ABD3C 800F597C 8E820024 */  lw         $v0, 0x24($s4)
/* ABD40 800F5980 02202821 */  addu       $a1, $s1, $zero
/* ABD44 800F5984 84440018 */  lh         $a0, 0x18($v0)
/* ABD48 800F5988 8C42001C */  lw         $v0, 0x1C($v0)
/* ABD4C 800F598C 0040F809 */  jalr       $v0
/* ABD50 800F5990 02842021 */   addu      $a0, $s4, $a0
/* ABD54 800F5994 02002021 */  addu       $a0, $s0, $zero
/* ABD58 800F5998 0C001055 */  jal        func_80004154
/* ABD5C 800F599C 26850028 */   addiu     $a1, $s4, 0x28
/* ABD60 800F59A0 12600009 */  beqz       $s3, .Lrace_800F59C8
/* ABD64 800F59A4 02202821 */   addu      $a1, $s1, $zero
/* ABD68 800F59A8 8E620024 */  lw         $v0, 0x24($s3)
/* ABD6C 800F59AC 84440018 */  lh         $a0, 0x18($v0)
/* ABD70 800F59B0 8C42001C */  lw         $v0, 0x1C($v0)
/* ABD74 800F59B4 0040F809 */  jalr       $v0
/* ABD78 800F59B8 02642021 */   addu      $a0, $s3, $a0
/* ABD7C 800F59BC 02002021 */  addu       $a0, $s0, $zero
/* ABD80 800F59C0 0C001055 */  jal        func_80004154
/* ABD84 800F59C4 26650028 */   addiu     $a1, $s3, 0x28
.Lrace_800F59C8:
/* ABD88 800F59C8 03C02821 */  addu       $a1, $fp, $zero
/* ABD8C 800F59CC 8E420024 */  lw         $v0, 0x24($s2)
/* ABD90 800F59D0 27A60010 */  addiu      $a2, $sp, 0x10
/* ABD94 800F59D4 84440060 */  lh         $a0, 0x60($v0)
/* ABD98 800F59D8 8C420064 */  lw         $v0, 0x64($v0)
/* ABD9C 800F59DC 0040F809 */  jalr       $v0
/* ABDA0 800F59E0 02442021 */   addu      $a0, $s2, $a0
/* ABDA4 800F59E4 8EA20024 */  lw         $v0, 0x24($s5)
/* ABDA8 800F59E8 27A50010 */  addiu      $a1, $sp, 0x10
/* ABDAC 800F59EC 84440018 */  lh         $a0, 0x18($v0)
/* ABDB0 800F59F0 8C42001C */  lw         $v0, 0x1C($v0)
/* ABDB4 800F59F4 0040F809 */  jalr       $v0
/* ABDB8 800F59F8 02A42021 */   addu      $a0, $s5, $a0
/* ABDBC 800F59FC 0803D73B */  j          .Lrace_800F5CEC
/* ABDC0 800F5A00 02002021 */   addu      $a0, $s0, $zero
.Lrace_800F5A04:
/* ABDC4 800F5A04 8EC303AC */  lw         $v1, 0x3AC($s6)
/* ABDC8 800F5A08 34424DD3 */  ori        $v0, $v0, (0x10624DD3 & 0xFFFF)
/* ABDCC 800F5A0C 00620019 */  multu      $v1, $v0
/* ABDD0 800F5A10 3C01800D */  lui        $at, %hi(D_race_800CCD3C)
/* ABDD4 800F5A14 C422CD3C */  lwc1       $f2, %lo(D_race_800CCD3C)($at)
/* ABDD8 800F5A18 00004010 */  mfhi       $t0
/* ABDDC 800F5A1C 00082102 */  srl        $a0, $t0, 4
/* ABDE0 800F5A20 00041140 */  sll        $v0, $a0, 5
/* ABDE4 800F5A24 00441023 */  subu       $v0, $v0, $a0
/* ABDE8 800F5A28 00021080 */  sll        $v0, $v0, 2
/* ABDEC 800F5A2C 00441021 */  addu       $v0, $v0, $a0
/* ABDF0 800F5A30 00021040 */  sll        $v0, $v0, 1
/* ABDF4 800F5A34 00621823 */  subu       $v1, $v1, $v0
/* ABDF8 800F5A38 44830000 */  mtc1       $v1, $f0
/* ABDFC 800F5A3C 46800020 */  cvt.s.w    $f0, $f0
/* ABE00 800F5A40 8E022598 */  lw         $v0, 0x2598($s0)
/* ABE04 800F5A44 24850001 */  addiu      $a1, $a0, 0x1
/* ABE08 800F5A48 00A2102B */  sltu       $v0, $a1, $v0
/* ABE0C 800F5A4C 14400004 */  bnez       $v0, .Lrace_800F5A60
/* ABE10 800F5A50 46020503 */   div.s     $f20, $f0, $f2
/* ABE14 800F5A54 24020001 */  addiu      $v0, $zero, 0x1
/* ABE18 800F5A58 0803D756 */  j          .Lrace_800F5D58
/* ABE1C 800F5A5C AE0225BC */   sw        $v0, 0x25BC($s0)
.Lrace_800F5A60:
/* ABE20 800F5A60 00041880 */  sll        $v1, $a0, 2
/* ABE24 800F5A64 00641821 */  addu       $v1, $v1, $a0
/* ABE28 800F5A68 00031840 */  sll        $v1, $v1, 1
/* ABE2C 800F5A6C 02031821 */  addu       $v1, $s0, $v1
/* ABE30 800F5A70 8462000C */  lh         $v0, 0xC($v1)
/* ABE34 800F5A74 44824000 */  mtc1       $v0, $f8
/* ABE38 800F5A78 46804220 */  cvt.s.w    $f8, $f8
/* ABE3C 800F5A7C 46184202 */  mul.s      $f8, $f8, $f24
/* ABE40 800F5A80 E7A80050 */  swc1       $f8, 0x50($sp)
/* ABE44 800F5A84 8462000E */  lh         $v0, 0xE($v1)
/* ABE48 800F5A88 44825000 */  mtc1       $v0, $f10
/* ABE4C 800F5A8C 468052A0 */  cvt.s.w    $f10, $f10
/* ABE50 800F5A90 46185282 */  mul.s      $f10, $f10, $f24
/* ABE54 800F5A94 E7AA0054 */  swc1       $f10, 0x54($sp)
/* ABE58 800F5A98 84620010 */  lh         $v0, 0x10($v1)
/* ABE5C 800F5A9C 44823000 */  mtc1       $v0, $f6
/* ABE60 800F5AA0 468031A0 */  cvt.s.w    $f6, $f6
/* ABE64 800F5AA4 46183182 */  mul.s      $f6, $f6, $f24
/* ABE68 800F5AA8 00053080 */  sll        $a2, $a1, 2
/* ABE6C 800F5AAC 00C53021 */  addu       $a2, $a2, $a1
/* ABE70 800F5AB0 00063040 */  sll        $a2, $a2, 1
/* ABE74 800F5AB4 02063021 */  addu       $a2, $s0, $a2
/* ABE78 800F5AB8 E7A60058 */  swc1       $f6, 0x58($sp)
/* ABE7C 800F5ABC 84C2000C */  lh         $v0, 0xC($a2)
/* ABE80 800F5AC0 44821000 */  mtc1       $v0, $f2
/* ABE84 800F5AC4 468010A0 */  cvt.s.w    $f2, $f2
/* ABE88 800F5AC8 46181082 */  mul.s      $f2, $f2, $f24
/* ABE8C 800F5ACC E7A20060 */  swc1       $f2, 0x60($sp)
/* ABE90 800F5AD0 84C2000E */  lh         $v0, 0xE($a2)
/* ABE94 800F5AD4 44820000 */  mtc1       $v0, $f0
/* ABE98 800F5AD8 46800020 */  cvt.s.w    $f0, $f0
/* ABE9C 800F5ADC 46180002 */  mul.s      $f0, $f0, $f24
/* ABEA0 800F5AE0 46081081 */  sub.s      $f2, $f2, $f8
/* ABEA4 800F5AE4 4602A302 */  mul.s      $f12, $f20, $f2
/* ABEA8 800F5AE8 E7A00064 */  swc1       $f0, 0x64($sp)
/* ABEAC 800F5AEC 84C20010 */  lh         $v0, 0x10($a2)
/* ABEB0 800F5AF0 44822000 */  mtc1       $v0, $f4
/* ABEB4 800F5AF4 46802120 */  cvt.s.w    $f4, $f4
/* ABEB8 800F5AF8 46182102 */  mul.s      $f4, $f4, $f24
/* ABEBC 800F5AFC 460A0001 */  sub.s      $f0, $f0, $f10
/* ABEC0 800F5B00 4600A382 */  mul.s      $f14, $f20, $f0
/* ABEC4 800F5B04 46062401 */  sub.s      $f16, $f4, $f6
/* ABEC8 800F5B08 4610A482 */  mul.s      $f18, $f20, $f16
/* ABECC 800F5B0C 460C4200 */  add.s      $f8, $f8, $f12
/* ABED0 800F5B10 E7A20070 */  swc1       $f2, 0x70($sp)
/* ABED4 800F5B14 E7A00074 */  swc1       $f0, 0x74($sp)
/* ABED8 800F5B18 460E5280 */  add.s      $f10, $f10, $f14
/* ABEDC 800F5B1C E7A80010 */  swc1       $f8, 0x10($sp)
/* ABEE0 800F5B20 E7A40068 */  swc1       $f4, 0x68($sp)
/* ABEE4 800F5B24 46123180 */  add.s      $f6, $f6, $f18
/* ABEE8 800F5B28 E7B00078 */  swc1       $f16, 0x78($sp)
/* ABEEC 800F5B2C E7AA0014 */  swc1       $f10, 0x14($sp)
/* ABEF0 800F5B30 E7A60018 */  swc1       $f6, 0x18($sp)
/* ABEF4 800F5B34 80620012 */  lb         $v0, 0x12($v1)
/* ABEF8 800F5B38 44820000 */  mtc1       $v0, $f0
/* ABEFC 800F5B3C 46800020 */  cvt.s.w    $f0, $f0
/* ABF00 800F5B40 46160003 */  div.s      $f0, $f0, $f22
/* ABF04 800F5B44 E7A00030 */  swc1       $f0, 0x30($sp)
/* ABF08 800F5B48 80620013 */  lb         $v0, 0x13($v1)
/* ABF0C 800F5B4C 44820000 */  mtc1       $v0, $f0
/* ABF10 800F5B50 46800020 */  cvt.s.w    $f0, $f0
/* ABF14 800F5B54 46160003 */  div.s      $f0, $f0, $f22
/* ABF18 800F5B58 E7A00034 */  swc1       $f0, 0x34($sp)
/* ABF1C 800F5B5C 80620014 */  lb         $v0, 0x14($v1)
/* ABF20 800F5B60 44820000 */  mtc1       $v0, $f0
/* ABF24 800F5B64 46800020 */  cvt.s.w    $f0, $f0
/* ABF28 800F5B68 46160003 */  div.s      $f0, $f0, $f22
/* ABF2C 800F5B6C E7A00038 */  swc1       $f0, 0x38($sp)
/* ABF30 800F5B70 80620015 */  lb         $v0, 0x15($v1)
/* ABF34 800F5B74 44820000 */  mtc1       $v0, $f0
/* ABF38 800F5B78 46800020 */  cvt.s.w    $f0, $f0
/* ABF3C 800F5B7C 46160003 */  div.s      $f0, $f0, $f22
/* ABF40 800F5B80 E7A0003C */  swc1       $f0, 0x3C($sp)
/* ABF44 800F5B84 80C20012 */  lb         $v0, 0x12($a2)
/* ABF48 800F5B88 44820000 */  mtc1       $v0, $f0
/* ABF4C 800F5B8C 46800020 */  cvt.s.w    $f0, $f0
/* ABF50 800F5B90 46160003 */  div.s      $f0, $f0, $f22
/* ABF54 800F5B94 E7A00040 */  swc1       $f0, 0x40($sp)
/* ABF58 800F5B98 80C20013 */  lb         $v0, 0x13($a2)
/* ABF5C 800F5B9C 44820000 */  mtc1       $v0, $f0
/* ABF60 800F5BA0 46800020 */  cvt.s.w    $f0, $f0
/* ABF64 800F5BA4 46160003 */  div.s      $f0, $f0, $f22
/* ABF68 800F5BA8 E7A00044 */  swc1       $f0, 0x44($sp)
/* ABF6C 800F5BAC 80C20014 */  lb         $v0, 0x14($a2)
/* ABF70 800F5BB0 27A40030 */  addiu      $a0, $sp, 0x30
/* ABF74 800F5BB4 44820000 */  mtc1       $v0, $f0
/* ABF78 800F5BB8 46800020 */  cvt.s.w    $f0, $f0
/* ABF7C 800F5BBC 46160003 */  div.s      $f0, $f0, $f22
/* ABF80 800F5BC0 E7A00048 */  swc1       $f0, 0x48($sp)
/* ABF84 800F5BC4 80C20015 */  lb         $v0, 0x15($a2)
/* ABF88 800F5BC8 4406A000 */  mfc1       $a2, $f20
/* ABF8C 800F5BCC 44820000 */  mtc1       $v0, $f0
/* ABF90 800F5BD0 46800020 */  cvt.s.w    $f0, $f0
/* ABF94 800F5BD4 46160003 */  div.s      $f0, $f0, $f22
/* ABF98 800F5BD8 E7A0004C */  swc1       $f0, 0x4C($sp)
/* ABF9C 800F5BDC 8FA70084 */  lw         $a3, 0x84($sp)
/* ABFA0 800F5BE0 0C0012B8 */  jal        func_80004AE0
/* ABFA4 800F5BE4 27A50040 */   addiu     $a1, $sp, 0x40
/* ABFA8 800F5BE8 C7A40070 */  lwc1       $f4, 0x70($sp)
/* ABFAC 800F5BEC 46042102 */  mul.s      $f4, $f4, $f4
/* ABFB0 800F5BF0 C7A20074 */  lwc1       $f2, 0x74($sp)
/* ABFB4 800F5BF4 46021082 */  mul.s      $f2, $f2, $f2
/* ABFB8 800F5BF8 C7A00078 */  lwc1       $f0, 0x78($sp)
/* ABFBC 800F5BFC 46000002 */  mul.s      $f0, $f0, $f0
/* ABFC0 800F5C00 46022100 */  add.s      $f4, $f4, $f2
/* ABFC4 800F5C04 46002300 */  add.s      $f12, $f4, $f0
/* ABFC8 800F5C08 46006004 */  sqrt.s     $f0, $f12
/* ABFCC 800F5C0C 46000032 */  c.eq.s     $f0, $f0
/* ABFD0 800F5C10 00000000 */  nop
/* ABFD4 800F5C14 45010003 */  bc1t       .Lrace_800F5C24
/* ABFD8 800F5C18 00000000 */   nop
/* ABFDC 800F5C1C 0C006BC8 */  jal        sqrt
/* ABFE0 800F5C20 00000000 */   nop
.Lrace_800F5C24:
/* ABFE4 800F5C24 3C01800D */  lui        $at, %hi(D_race_800CCD40)
/* ABFE8 800F5C28 C422CD40 */  lwc1       $f2, %lo(D_race_800CCD40)($at)
/* ABFEC 800F5C2C 46020082 */  mul.s      $f2, $f0, $f2
/* ABFF0 800F5C30 3C01800D */  lui        $at, %hi(D_race_800CCD44)
/* ABFF4 800F5C34 C420CD44 */  lwc1       $f0, %lo(D_race_800CCD44)($at)
/* ABFF8 800F5C38 46001082 */  mul.s      $f2, $f2, $f0
/* ABFFC 800F5C3C 8E420024 */  lw         $v0, 0x24($s2)
/* AC000 800F5C40 27A50010 */  addiu      $a1, $sp, 0x10
/* AC004 800F5C44 E64200B8 */  swc1       $f2, 0xB8($s2)
/* AC008 800F5C48 84440018 */  lh         $a0, 0x18($v0)
/* AC00C 800F5C4C 8C42001C */  lw         $v0, 0x1C($v0)
/* AC010 800F5C50 0040F809 */  jalr       $v0
/* AC014 800F5C54 02442021 */   addu      $a0, $s2, $a0
/* AC018 800F5C58 8FA40084 */  lw         $a0, 0x84($sp)
/* AC01C 800F5C5C 0C001055 */  jal        func_80004154
/* AC020 800F5C60 26450028 */   addiu     $a1, $s2, 0x28
/* AC024 800F5C64 8E820024 */  lw         $v0, 0x24($s4)
/* AC028 800F5C68 27A50010 */  addiu      $a1, $sp, 0x10
/* AC02C 800F5C6C 84440018 */  lh         $a0, 0x18($v0)
/* AC030 800F5C70 8C42001C */  lw         $v0, 0x1C($v0)
/* AC034 800F5C74 0040F809 */  jalr       $v0
/* AC038 800F5C78 02842021 */   addu      $a0, $s4, $a0
/* AC03C 800F5C7C 8FA40084 */  lw         $a0, 0x84($sp)
/* AC040 800F5C80 0C001055 */  jal        func_80004154
/* AC044 800F5C84 26850028 */   addiu     $a1, $s4, 0x28
/* AC048 800F5C88 5260000B */  beql       $s3, $zero, .Lrace_800F5CB8
/* AC04C 800F5C8C 03C02821 */   addu      $a1, $fp, $zero
/* AC050 800F5C90 8E620024 */  lw         $v0, 0x24($s3)
/* AC054 800F5C94 27A50010 */  addiu      $a1, $sp, 0x10
/* AC058 800F5C98 84440018 */  lh         $a0, 0x18($v0)
/* AC05C 800F5C9C 8C42001C */  lw         $v0, 0x1C($v0)
/* AC060 800F5CA0 0040F809 */  jalr       $v0
/* AC064 800F5CA4 02642021 */   addu      $a0, $s3, $a0
/* AC068 800F5CA8 8FA40084 */  lw         $a0, 0x84($sp)
/* AC06C 800F5CAC 0C001055 */  jal        func_80004154
/* AC070 800F5CB0 26650028 */   addiu     $a1, $s3, 0x28
/* AC074 800F5CB4 03C02821 */  addu       $a1, $fp, $zero
.Lrace_800F5CB8:
/* AC078 800F5CB8 8E420024 */  lw         $v0, 0x24($s2)
/* AC07C 800F5CBC 27A60010 */  addiu      $a2, $sp, 0x10
/* AC080 800F5CC0 84440060 */  lh         $a0, 0x60($v0)
/* AC084 800F5CC4 8C420064 */  lw         $v0, 0x64($v0)
/* AC088 800F5CC8 0040F809 */  jalr       $v0
/* AC08C 800F5CCC 02442021 */   addu      $a0, $s2, $a0
/* AC090 800F5CD0 8EA20024 */  lw         $v0, 0x24($s5)
/* AC094 800F5CD4 27A50010 */  addiu      $a1, $sp, 0x10
/* AC098 800F5CD8 84440018 */  lh         $a0, 0x18($v0)
/* AC09C 800F5CDC 8C42001C */  lw         $v0, 0x1C($v0)
/* AC0A0 800F5CE0 0040F809 */  jalr       $v0
/* AC0A4 800F5CE4 02A42021 */   addu      $a0, $s5, $a0
/* AC0A8 800F5CE8 8FA40084 */  lw         $a0, 0x84($sp)
.Lrace_800F5CEC:
/* AC0AC 800F5CEC 0C001055 */  jal        func_80004154
/* AC0B0 800F5CF0 26A50028 */   addiu     $a1, $s5, 0x28
/* AC0B4 800F5CF4 8EE2012C */  lw         $v0, 0x12C($s7)
/* AC0B8 800F5CF8 02402821 */  addu       $a1, $s2, $zero
/* AC0BC 800F5CFC 84440118 */  lh         $a0, 0x118($v0)
/* AC0C0 800F5D00 8C42011C */  lw         $v0, 0x11C($v0)
/* AC0C4 800F5D04 0040F809 */  jalr       $v0
/* AC0C8 800F5D08 02E42021 */   addu      $a0, $s7, $a0
/* AC0CC 800F5D0C 8EE2012C */  lw         $v0, 0x12C($s7)
/* AC0D0 800F5D10 02802821 */  addu       $a1, $s4, $zero
/* AC0D4 800F5D14 84440118 */  lh         $a0, 0x118($v0)
/* AC0D8 800F5D18 8C42011C */  lw         $v0, 0x11C($v0)
/* AC0DC 800F5D1C 0040F809 */  jalr       $v0
/* AC0E0 800F5D20 02E42021 */   addu      $a0, $s7, $a0
/* AC0E4 800F5D24 12600006 */  beqz       $s3, .Lrace_800F5D40
/* AC0E8 800F5D28 02602821 */   addu      $a1, $s3, $zero
/* AC0EC 800F5D2C 8EE2012C */  lw         $v0, 0x12C($s7)
/* AC0F0 800F5D30 84440118 */  lh         $a0, 0x118($v0)
/* AC0F4 800F5D34 8C42011C */  lw         $v0, 0x11C($v0)
/* AC0F8 800F5D38 0040F809 */  jalr       $v0
/* AC0FC 800F5D3C 02E42021 */   addu      $a0, $s7, $a0
.Lrace_800F5D40:
/* AC100 800F5D40 8EE2012C */  lw         $v0, 0x12C($s7)
/* AC104 800F5D44 02A02821 */  addu       $a1, $s5, $zero
/* AC108 800F5D48 84440118 */  lh         $a0, 0x118($v0)
/* AC10C 800F5D4C 8C42011C */  lw         $v0, 0x11C($v0)
/* AC110 800F5D50 0040F809 */  jalr       $v0
/* AC114 800F5D54 02E42021 */   addu      $a0, $s7, $a0
.Lrace_800F5D58:
/* AC118 800F5D58 8FA80080 */  lw         $t0, 0x80($sp)
/* AC11C 800F5D5C 25080001 */  addiu      $t0, $t0, 0x1
.Lrace_800F5D60:
/* AC120 800F5D60 0803D62B */  j          .Lrace_800F58AC
/* AC124 800F5D64 AFA80080 */   sw        $t0, 0x80($sp)
.Lrace_800F5D68:
/* AC128 800F5D68 8EE2012C */  lw         $v0, 0x12C($s7)
/* AC12C 800F5D6C 84440178 */  lh         $a0, 0x178($v0)
/* AC130 800F5D70 8C42017C */  lw         $v0, 0x17C($v0)
/* AC134 800F5D74 0040F809 */  jalr       $v0
/* AC138 800F5D78 02E42021 */   addu      $a0, $s7, $a0
.Lrace_800F5D7C:
/* AC13C 800F5D7C 8FBF00AC */  lw         $ra, 0xAC($sp)
/* AC140 800F5D80 8FBE00A8 */  lw         $fp, 0xA8($sp)
/* AC144 800F5D84 8FB700A4 */  lw         $s7, 0xA4($sp)
/* AC148 800F5D88 8FB600A0 */  lw         $s6, 0xA0($sp)
/* AC14C 800F5D8C 8FB5009C */  lw         $s5, 0x9C($sp)
/* AC150 800F5D90 8FB40098 */  lw         $s4, 0x98($sp)
/* AC154 800F5D94 8FB30094 */  lw         $s3, 0x94($sp)
/* AC158 800F5D98 8FB20090 */  lw         $s2, 0x90($sp)
/* AC15C 800F5D9C 8FB1008C */  lw         $s1, 0x8C($sp)
/* AC160 800F5DA0 8FB00088 */  lw         $s0, 0x88($sp)
/* AC164 800F5DA4 D7B800C0 */  ldc1       $f24, 0xC0($sp)
/* AC168 800F5DA8 D7B600B8 */  ldc1       $f22, 0xB8($sp)
/* AC16C 800F5DAC D7B400B0 */  ldc1       $f20, 0xB0($sp)
/* AC170 800F5DB0 03E00008 */  jr         $ra
/* AC174 800F5DB4 27BD00C8 */   addiu     $sp, $sp, 0xC8

glabel func_race_800F5DB8
/* AC178 800F5DB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AC17C 800F5DBC AFB00010 */  sw         $s0, 0x10($sp)
/* AC180 800F5DC0 00808021 */  addu       $s0, $a0, $zero
/* AC184 800F5DC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AC188 800F5DC8 920203B0 */  lbu        $v0, 0x3B0($s0)
/* AC18C 800F5DCC 304200F7 */  andi       $v0, $v0, 0xF7
/* AC190 800F5DD0 10A00005 */  beqz       $a1, .Lrace_800F5DE8
/* AC194 800F5DD4 A20203B0 */   sb        $v0, 0x3B0($s0)
/* AC198 800F5DD8 3C06800D */  lui        $a2, %hi(D_race_800CCD14)
/* AC19C 800F5DDC 8E050008 */  lw         $a1, 0x8($s0)
/* AC1A0 800F5DE0 0C03D880 */  jal        func_race_800F6200
/* AC1A4 800F5DE4 24C6CD14 */   addiu     $a2, $a2, %lo(D_race_800CCD14)
.Lrace_800F5DE8:
/* AC1A8 800F5DE8 8E020008 */  lw         $v0, 0x8($s0)
/* AC1AC 800F5DEC 8C422598 */  lw         $v0, 0x2598($v0)
/* AC1B0 800F5DF0 10400004 */  beqz       $v0, .Lrace_800F5E04
/* AC1B4 800F5DF4 00000000 */   nop
/* AC1B8 800F5DF8 920203B0 */  lbu        $v0, 0x3B0($s0)
/* AC1BC 800F5DFC 34420008 */  ori        $v0, $v0, 0x8
/* AC1C0 800F5E00 A20203B0 */  sb         $v0, 0x3B0($s0)
.Lrace_800F5E04:
/* AC1C4 800F5E04 920203B0 */  lbu        $v0, 0x3B0($s0)
/* AC1C8 800F5E08 00002021 */  addu       $a0, $zero, $zero
/* AC1CC 800F5E0C AE0003AC */  sw         $zero, 0x3AC($s0)
/* AC1D0 800F5E10 304200FD */  andi       $v0, $v0, 0xFD
/* AC1D4 800F5E14 A20203B0 */  sb         $v0, 0x3B0($s0)
.Lrace_800F5E18:
/* AC1D8 800F5E18 00041080 */  sll        $v0, $a0, 2
/* AC1DC 800F5E1C 8E030010 */  lw         $v1, 0x10($s0)
/* AC1E0 800F5E20 24840001 */  addiu      $a0, $a0, 0x1
/* AC1E4 800F5E24 00621821 */  addu       $v1, $v1, $v0
/* AC1E8 800F5E28 2C820003 */  sltiu      $v0, $a0, 0x3
/* AC1EC 800F5E2C 1440FFFA */  bnez       $v0, .Lrace_800F5E18
/* AC1F0 800F5E30 AC600000 */   sw        $zero, 0x0($v1)
/* AC1F4 800F5E34 8E020010 */  lw         $v0, 0x10($s0)
/* AC1F8 800F5E38 AC402598 */  sw         $zero, 0x2598($v0)
/* AC1FC 800F5E3C 8E020010 */  lw         $v0, 0x10($s0)
/* AC200 800F5E40 AC4025A0 */  sw         $zero, 0x25A0($v0)
/* AC204 800F5E44 8E020010 */  lw         $v0, 0x10($s0)
/* AC208 800F5E48 AC4025A4 */  sw         $zero, 0x25A4($v0)
/* AC20C 800F5E4C 8E020010 */  lw         $v0, 0x10($s0)
/* AC210 800F5E50 AC4025A8 */  sw         $zero, 0x25A8($v0)
/* AC214 800F5E54 8E020010 */  lw         $v0, 0x10($s0)
/* AC218 800F5E58 AC4025AC */  sw         $zero, 0x25AC($v0)
/* AC21C 800F5E5C 8E020010 */  lw         $v0, 0x10($s0)
/* AC220 800F5E60 AC4025B0 */  sw         $zero, 0x25B0($v0)
/* AC224 800F5E64 8E020010 */  lw         $v0, 0x10($s0)
/* AC228 800F5E68 AC4025B4 */  sw         $zero, 0x25B4($v0)
/* AC22C 800F5E6C 8E020010 */  lw         $v0, 0x10($s0)
/* AC230 800F5E70 AC4025B8 */  sw         $zero, 0x25B8($v0)
/* AC234 800F5E74 8E020010 */  lw         $v0, 0x10($s0)
/* AC238 800F5E78 AC40259C */  sw         $zero, 0x259C($v0)
/* AC23C 800F5E7C 8E020010 */  lw         $v0, 0x10($s0)
/* AC240 800F5E80 AC4025BC */  sw         $zero, 0x25BC($v0)
/* AC244 800F5E84 8E020008 */  lw         $v0, 0x8($s0)
/* AC248 800F5E88 AC4025BC */  sw         $zero, 0x25BC($v0)
/* AC24C 800F5E8C 8E02000C */  lw         $v0, 0xC($s0)
/* AC250 800F5E90 AC4025BC */  sw         $zero, 0x25BC($v0)
/* AC254 800F5E94 8FBF0014 */  lw         $ra, 0x14($sp)
/* AC258 800F5E98 8FB00010 */  lw         $s0, 0x10($sp)
/* AC25C 800F5E9C 03E00008 */  jr         $ra
/* AC260 800F5EA0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F5EA4
/* AC264 800F5EA4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AC268 800F5EA8 AFB40028 */  sw         $s4, 0x28($sp)
/* AC26C 800F5EAC 0080A021 */  addu       $s4, $a0, $zero
/* AC270 800F5EB0 AFBF0030 */  sw         $ra, 0x30($sp)
/* AC274 800F5EB4 AFB5002C */  sw         $s5, 0x2C($sp)
/* AC278 800F5EB8 AFB30024 */  sw         $s3, 0x24($sp)
/* AC27C 800F5EBC AFB20020 */  sw         $s2, 0x20($sp)
/* AC280 800F5EC0 AFB1001C */  sw         $s1, 0x1C($sp)
/* AC284 800F5EC4 AFB00018 */  sw         $s0, 0x18($sp)
/* AC288 800F5EC8 928203B0 */  lbu        $v0, 0x3B0($s4)
/* AC28C 800F5ECC AE850014 */  sw         $a1, 0x14($s4)
/* AC290 800F5ED0 34420002 */  ori        $v0, $v0, 0x2
/* AC294 800F5ED4 A28203B0 */  sb         $v0, 0x3B0($s4)
/* AC298 800F5ED8 00401821 */  addu       $v1, $v0, $zero
/* AC29C 800F5EDC 30620010 */  andi       $v0, $v1, 0x10
/* AC2A0 800F5EE0 10400002 */  beqz       $v0, .Lrace_800F5EEC
/* AC2A4 800F5EE4 34620001 */   ori       $v0, $v1, 0x1
/* AC2A8 800F5EE8 A28203B0 */  sb         $v0, 0x3B0($s4)
.Lrace_800F5EEC:
/* AC2AC 800F5EEC 928203B0 */  lbu        $v0, 0x3B0($s4)
/* AC2B0 800F5EF0 30420001 */  andi       $v0, $v0, 0x1
/* AC2B4 800F5EF4 1040008F */  beqz       $v0, .Lrace_800F6134
/* AC2B8 800F5EF8 268402FC */   addiu     $a0, $s4, 0x2FC
/* AC2BC 800F5EFC 8E820014 */  lw         $v0, 0x14($s4)
/* AC2C0 800F5F00 24550018 */  addiu      $s5, $v0, 0x18
/* AC2C4 800F5F04 8EA2003C */  lw         $v0, 0x3C($s5)
/* AC2C8 800F5F08 24120001 */  addiu      $s2, $zero, 0x1
/* AC2CC 800F5F0C 8C450078 */  lw         $a1, 0x78($v0)
/* AC2D0 800F5F10 8C460084 */  lw         $a2, 0x84($v0)
/* AC2D4 800F5F14 0C016059 */  jal        func_80058164
/* AC2D8 800F5F18 24500004 */   addiu     $s0, $v0, 0x4
.Lrace_800F5F1C:
/* AC2DC 800F5F1C 2E420003 */  sltiu      $v0, $s2, 0x3
/* AC2E0 800F5F20 1040000A */  beqz       $v0, .Lrace_800F5F4C
/* AC2E4 800F5F24 00002821 */   addu      $a1, $zero, $zero
/* AC2E8 800F5F28 8E050078 */  lw         $a1, 0x78($s0)
/* AC2EC 800F5F2C 50A00005 */  beql       $a1, $zero, .Lrace_800F5F44
/* AC2F0 800F5F30 26100004 */   addiu     $s0, $s0, 0x4
/* AC2F4 800F5F34 8E060084 */  lw         $a2, 0x84($s0)
/* AC2F8 800F5F38 0C016098 */  jal        func_80058260
/* AC2FC 800F5F3C 268402FC */   addiu     $a0, $s4, 0x2FC
/* AC300 800F5F40 26100004 */  addiu      $s0, $s0, 0x4
.Lrace_800F5F44:
/* AC304 800F5F44 0803D7C7 */  j          .Lrace_800F5F1C
/* AC308 800F5F48 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800F5F4C:
/* AC30C 800F5F4C 8EB10044 */  lw         $s1, 0x44($s5)
/* AC310 800F5F50 24120001 */  addiu      $s2, $zero, 0x1
/* AC314 800F5F54 26330004 */  addiu      $s3, $s1, 0x4
/* AC318 800F5F58 8E220024 */  lw         $v0, 0x24($s1)
/* AC31C 800F5F5C 8E300078 */  lw         $s0, 0x78($s1)
/* AC320 800F5F60 844400B8 */  lh         $a0, 0xB8($v0)
/* AC324 800F5F64 8C4200BC */  lw         $v0, 0xBC($v0)
/* AC328 800F5F68 0040F809 */  jalr       $v0
/* AC32C 800F5F6C 02242021 */   addu      $a0, $s1, $a0
/* AC330 800F5F70 26840018 */  addiu      $a0, $s4, 0x18
/* AC334 800F5F74 02002821 */  addu       $a1, $s0, $zero
/* AC338 800F5F78 8E2700A8 */  lw         $a3, 0xA8($s1)
/* AC33C 800F5F7C C6200084 */  lwc1       $f0, 0x84($s1)
/* AC340 800F5F80 00403021 */  addu       $a2, $v0, $zero
/* AC344 800F5F84 0C01956B */  jal        func_800655AC
/* AC348 800F5F88 E7A00010 */   swc1      $f0, 0x10($sp)
.Lrace_800F5F8C:
/* AC34C 800F5F8C 2E420003 */  sltiu      $v0, $s2, 0x3
/* AC350 800F5F90 10400013 */  beqz       $v0, .Lrace_800F5FE0
/* AC354 800F5F94 00002821 */   addu      $a1, $zero, $zero
/* AC358 800F5F98 8E700078 */  lw         $s0, 0x78($s3)
/* AC35C 800F5F9C 1200000D */  beqz       $s0, .Lrace_800F5FD4
/* AC360 800F5FA0 02402821 */   addu      $a1, $s2, $zero
/* AC364 800F5FA4 8E220024 */  lw         $v0, 0x24($s1)
/* AC368 800F5FA8 844400B8 */  lh         $a0, 0xB8($v0)
/* AC36C 800F5FAC 8C4200BC */  lw         $v0, 0xBC($v0)
/* AC370 800F5FB0 0040F809 */  jalr       $v0
/* AC374 800F5FB4 02242021 */   addu      $a0, $s1, $a0
/* AC378 800F5FB8 26840018 */  addiu      $a0, $s4, 0x18
/* AC37C 800F5FBC 02002821 */  addu       $a1, $s0, $zero
/* AC380 800F5FC0 8E6700A8 */  lw         $a3, 0xA8($s3)
/* AC384 800F5FC4 C6600084 */  lwc1       $f0, 0x84($s3)
/* AC388 800F5FC8 00403021 */  addu       $a2, $v0, $zero
/* AC38C 800F5FCC 0C0196C4 */  jal        func_80065B10
/* AC390 800F5FD0 E7A00010 */   swc1      $f0, 0x10($sp)
.Lrace_800F5FD4:
/* AC394 800F5FD4 26730004 */  addiu      $s3, $s3, 0x4
/* AC398 800F5FD8 0803D7E3 */  j          .Lrace_800F5F8C
/* AC39C 800F5FDC 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800F5FE0:
/* AC3A0 800F5FE0 8EB10048 */  lw         $s1, 0x48($s5)
/* AC3A4 800F5FE4 24120001 */  addiu      $s2, $zero, 0x1
/* AC3A8 800F5FE8 26330004 */  addiu      $s3, $s1, 0x4
/* AC3AC 800F5FEC 8E220024 */  lw         $v0, 0x24($s1)
/* AC3B0 800F5FF0 8E300078 */  lw         $s0, 0x78($s1)
/* AC3B4 800F5FF4 844400B8 */  lh         $a0, 0xB8($v0)
/* AC3B8 800F5FF8 8C4200BC */  lw         $v0, 0xBC($v0)
/* AC3BC 800F5FFC 0040F809 */  jalr       $v0
/* AC3C0 800F6000 02242021 */   addu      $a0, $s1, $a0
/* AC3C4 800F6004 26840110 */  addiu      $a0, $s4, 0x110
/* AC3C8 800F6008 02002821 */  addu       $a1, $s0, $zero
/* AC3CC 800F600C 8E2700A8 */  lw         $a3, 0xA8($s1)
/* AC3D0 800F6010 C6200084 */  lwc1       $f0, 0x84($s1)
/* AC3D4 800F6014 00403021 */  addu       $a2, $v0, $zero
/* AC3D8 800F6018 0C01956B */  jal        func_800655AC
/* AC3DC 800F601C E7A00010 */   swc1      $f0, 0x10($sp)
.Lrace_800F6020:
/* AC3E0 800F6020 2E420003 */  sltiu      $v0, $s2, 0x3
/* AC3E4 800F6024 10400013 */  beqz       $v0, .Lrace_800F6074
/* AC3E8 800F6028 00000000 */   nop
/* AC3EC 800F602C 8E700078 */  lw         $s0, 0x78($s3)
/* AC3F0 800F6030 1200000D */  beqz       $s0, .Lrace_800F6068
/* AC3F4 800F6034 02402821 */   addu      $a1, $s2, $zero
/* AC3F8 800F6038 8E220024 */  lw         $v0, 0x24($s1)
/* AC3FC 800F603C 844400B8 */  lh         $a0, 0xB8($v0)
/* AC400 800F6040 8C4200BC */  lw         $v0, 0xBC($v0)
/* AC404 800F6044 0040F809 */  jalr       $v0
/* AC408 800F6048 02242021 */   addu      $a0, $s1, $a0
/* AC40C 800F604C 26840110 */  addiu      $a0, $s4, 0x110
/* AC410 800F6050 02002821 */  addu       $a1, $s0, $zero
/* AC414 800F6054 8E6700A8 */  lw         $a3, 0xA8($s3)
/* AC418 800F6058 C6600084 */  lwc1       $f0, 0x84($s3)
/* AC41C 800F605C 00403021 */  addu       $a2, $v0, $zero
/* AC420 800F6060 0C0196C4 */  jal        func_80065B10
/* AC424 800F6064 E7A00010 */   swc1      $f0, 0x10($sp)
.Lrace_800F6068:
/* AC428 800F6068 26730004 */  addiu      $s3, $s3, 0x4
/* AC42C 800F606C 0803D808 */  j          .Lrace_800F6020
/* AC430 800F6070 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800F6074:
/* AC434 800F6074 8EB10040 */  lw         $s1, 0x40($s5)
/* AC438 800F6078 12200025 */  beqz       $s1, .Lrace_800F6110
/* AC43C 800F607C 00002821 */   addu      $a1, $zero, $zero
/* AC440 800F6080 24120001 */  addiu      $s2, $zero, 0x1
/* AC444 800F6084 26330004 */  addiu      $s3, $s1, 0x4
/* AC448 800F6088 8E220024 */  lw         $v0, 0x24($s1)
/* AC44C 800F608C 8E300078 */  lw         $s0, 0x78($s1)
/* AC450 800F6090 844400B8 */  lh         $a0, 0xB8($v0)
/* AC454 800F6094 8C4200BC */  lw         $v0, 0xBC($v0)
/* AC458 800F6098 0040F809 */  jalr       $v0
/* AC45C 800F609C 02242021 */   addu      $a0, $s1, $a0
/* AC460 800F60A0 26840208 */  addiu      $a0, $s4, 0x208
/* AC464 800F60A4 02002821 */  addu       $a1, $s0, $zero
/* AC468 800F60A8 8E2700A8 */  lw         $a3, 0xA8($s1)
/* AC46C 800F60AC C6200084 */  lwc1       $f0, 0x84($s1)
/* AC470 800F60B0 00403021 */  addu       $a2, $v0, $zero
/* AC474 800F60B4 0C01956B */  jal        func_800655AC
/* AC478 800F60B8 E7A00010 */   swc1      $f0, 0x10($sp)
.Lrace_800F60BC:
/* AC47C 800F60BC 2E420003 */  sltiu      $v0, $s2, 0x3
/* AC480 800F60C0 10400013 */  beqz       $v0, .Lrace_800F6110
/* AC484 800F60C4 00000000 */   nop
/* AC488 800F60C8 8E700078 */  lw         $s0, 0x78($s3)
/* AC48C 800F60CC 1200000D */  beqz       $s0, .Lrace_800F6104
/* AC490 800F60D0 02402821 */   addu      $a1, $s2, $zero
/* AC494 800F60D4 8E220024 */  lw         $v0, 0x24($s1)
/* AC498 800F60D8 844400B8 */  lh         $a0, 0xB8($v0)
/* AC49C 800F60DC 8C4200BC */  lw         $v0, 0xBC($v0)
/* AC4A0 800F60E0 0040F809 */  jalr       $v0
/* AC4A4 800F60E4 02242021 */   addu      $a0, $s1, $a0
/* AC4A8 800F60E8 26840208 */  addiu      $a0, $s4, 0x208
/* AC4AC 800F60EC 02002821 */  addu       $a1, $s0, $zero
/* AC4B0 800F60F0 8E6700A8 */  lw         $a3, 0xA8($s3)
/* AC4B4 800F60F4 C6600084 */  lwc1       $f0, 0x84($s3)
/* AC4B8 800F60F8 00403021 */  addu       $a2, $v0, $zero
/* AC4BC 800F60FC 0C0196C4 */  jal        func_80065B10
/* AC4C0 800F6100 E7A00010 */   swc1      $f0, 0x10($sp)
.Lrace_800F6104:
/* AC4C4 800F6104 26730004 */  addiu      $s3, $s3, 0x4
/* AC4C8 800F6108 0803D82F */  j          .Lrace_800F60BC
/* AC4CC 800F610C 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800F6110:
/* AC4D0 800F6110 8EA8004C */  lw         $t0, 0x4C($s5)
/* AC4D4 800F6114 8EA90050 */  lw         $t1, 0x50($s5)
/* AC4D8 800F6118 8EAA0054 */  lw         $t2, 0x54($s5)
/* AC4DC 800F611C AE880390 */  sw         $t0, 0x390($s4)
/* AC4E0 800F6120 AE890394 */  sw         $t1, 0x394($s4)
/* AC4E4 800F6124 AE8A0398 */  sw         $t2, 0x398($s4)
/* AC4E8 800F6128 26840110 */  addiu      $a0, $s4, 0x110
/* AC4EC 800F612C 0C01971D */  jal        func_80065C74
/* AC4F0 800F6130 2405000D */   addiu     $a1, $zero, 0xD
.Lrace_800F6134:
/* AC4F4 800F6134 8FBF0030 */  lw         $ra, 0x30($sp)
/* AC4F8 800F6138 8FB5002C */  lw         $s5, 0x2C($sp)
/* AC4FC 800F613C 8FB40028 */  lw         $s4, 0x28($sp)
/* AC500 800F6140 8FB30024 */  lw         $s3, 0x24($sp)
/* AC504 800F6144 8FB20020 */  lw         $s2, 0x20($sp)
/* AC508 800F6148 8FB1001C */  lw         $s1, 0x1C($sp)
/* AC50C 800F614C 8FB00018 */  lw         $s0, 0x18($sp)
/* AC510 800F6150 03E00008 */  jr         $ra
/* AC514 800F6154 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800F6158
/* AC518 800F6158 00803821 */  addu       $a3, $a0, $zero
/* AC51C 800F615C 00004021 */  addu       $t0, $zero, $zero
/* AC520 800F6160 01004821 */  addu       $t1, $t0, $zero
/* AC524 800F6164 01002821 */  addu       $a1, $t0, $zero
.Lrace_800F6168:
/* AC528 800F6168 2CA20003 */  sltiu      $v0, $a1, 0x3
/* AC52C 800F616C 10400009 */  beqz       $v0, .Lrace_800F6194
/* AC530 800F6170 00052080 */   sll       $a0, $a1, 2
/* AC534 800F6174 24A50001 */  addiu      $a1, $a1, 0x1
/* AC538 800F6178 8CE30014 */  lw         $v1, 0x14($a3)
/* AC53C 800F617C 8CE20010 */  lw         $v0, 0x10($a3)
/* AC540 800F6180 00641821 */  addu       $v1, $v1, $a0
/* AC544 800F6184 8C630CEC */  lw         $v1, 0xCEC($v1)
/* AC548 800F6188 00441021 */  addu       $v0, $v0, $a0
/* AC54C 800F618C 0803D85A */  j          .Lrace_800F6168
/* AC550 800F6190 AC430000 */   sw        $v1, 0x0($v0)
.Lrace_800F6194:
/* AC554 800F6194 00002821 */  addu       $a1, $zero, $zero
/* AC558 800F6198 8CE60010 */  lw         $a2, 0x10($a3)
/* AC55C 800F619C 8CE4000C */  lw         $a0, 0xC($a3)
.Lrace_800F61A0:
/* AC560 800F61A0 8CC30000 */  lw         $v1, 0x0($a2)
/* AC564 800F61A4 24C60004 */  addiu      $a2, $a2, 0x4
/* AC568 800F61A8 8C820000 */  lw         $v0, 0x0($a0)
/* AC56C 800F61AC 24840004 */  addiu      $a0, $a0, 0x4
/* AC570 800F61B0 24A50001 */  addiu      $a1, $a1, 0x1
/* AC574 800F61B4 01024021 */  addu       $t0, $t0, $v0
/* AC578 800F61B8 2CA20003 */  sltiu      $v0, $a1, 0x3
/* AC57C 800F61BC 1440FFF8 */  bnez       $v0, .Lrace_800F61A0
/* AC580 800F61C0 01234821 */   addu      $t1, $t1, $v1
/* AC584 800F61C4 0128102B */  sltu       $v0, $t1, $t0
/* AC588 800F61C8 14400003 */  bnez       $v0, .Lrace_800F61D8
/* AC58C 800F61CC 00000000 */   nop
/* AC590 800F61D0 15000005 */  bnez       $t0, .Lrace_800F61E8
/* AC594 800F61D4 00000000 */   nop
.Lrace_800F61D8:
/* AC598 800F61D8 8CE20010 */  lw         $v0, 0x10($a3)
/* AC59C 800F61DC 8CE3000C */  lw         $v1, 0xC($a3)
/* AC5A0 800F61E0 ACE2000C */  sw         $v0, 0xC($a3)
/* AC5A4 800F61E4 ACE30010 */  sw         $v1, 0x10($a3)
.Lrace_800F61E8:
/* AC5A8 800F61E8 90E203B0 */  lbu        $v0, 0x3B0($a3)
/* AC5AC 800F61EC ACE00014 */  sw         $zero, 0x14($a3)
/* AC5B0 800F61F0 34420010 */  ori        $v0, $v0, 0x10
/* AC5B4 800F61F4 304200FC */  andi       $v0, $v0, 0xFC
/* AC5B8 800F61F8 03E00008 */  jr         $ra
/* AC5BC 800F61FC A0E203B0 */   sb        $v0, 0x3B0($a3)

glabel func_race_800F6200
/* AC5C0 800F6200 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* AC5C4 800F6204 AFB40030 */  sw         $s4, 0x30($sp)
/* AC5C8 800F6208 0080A021 */  addu       $s4, $a0, $zero
/* AC5CC 800F620C AFB3002C */  sw         $s3, 0x2C($sp)
/* AC5D0 800F6210 00A09821 */  addu       $s3, $a1, $zero
/* AC5D4 800F6214 AFBF0038 */  sw         $ra, 0x38($sp)
/* AC5D8 800F6218 AFB50034 */  sw         $s5, 0x34($sp)
/* AC5DC 800F621C AFB20028 */  sw         $s2, 0x28($sp)
/* AC5E0 800F6220 AFB10024 */  sw         $s1, 0x24($sp)
/* AC5E4 800F6224 AFB00020 */  sw         $s0, 0x20($sp)
/* AC5E8 800F6228 928203B0 */  lbu        $v0, 0x3B0($s4)
/* AC5EC 800F622C 30420004 */  andi       $v0, $v0, 0x4
/* AC5F0 800F6230 10400014 */  beqz       $v0, .Lrace_800F6284
/* AC5F4 800F6234 00C09021 */   addu      $s2, $a2, $zero
/* AC5F8 800F6238 0C01FB4C */  jal        func_8007ED30
/* AC5FC 800F623C 24040654 */   addiu     $a0, $zero, 0x654
/* AC600 800F6240 0C00278C */  jal        func_80009E30
/* AC604 800F6244 00402021 */   addu      $a0, $v0, $zero
/* AC608 800F6248 00408821 */  addu       $s1, $v0, $zero
/* AC60C 800F624C 56200008 */  bnel       $s1, $zero, .Lrace_800F6270
/* AC610 800F6250 02202021 */   addu      $a0, $s1, $zero
/* AC614 800F6254 3C04800D */  lui        $a0, %hi(D_race_800CCD10)
/* AC618 800F6258 2484CD10 */  addiu      $a0, $a0, %lo(D_race_800CCD10)
/* AC61C 800F625C 00002821 */  addu       $a1, $zero, $zero
/* AC620 800F6260 00A03021 */  addu       $a2, $a1, $zero
/* AC624 800F6264 0C011ACF */  jal        func_80046B3C
/* AC628 800F6268 00A03821 */   addu      $a3, $a1, $zero
/* AC62C 800F626C 02202021 */  addu       $a0, $s1, $zero
.Lrace_800F6270:
/* AC630 800F6270 3C05800D */  lui        $a1, %hi(D_race_800CCD48)
/* AC634 800F6274 0C0025BA */  jal        func_800096E8
/* AC638 800F6278 24A5CD48 */   addiu     $a1, $a1, %lo(D_race_800CCD48)
/* AC63C 800F627C 0803D8B2 */  j          .Lrace_800F62C8
/* AC640 800F6280 27A40010 */   addiu     $a0, $sp, 0x10
.Lrace_800F6284:
/* AC644 800F6284 0C01FB4C */  jal        func_8007ED30
/* AC648 800F6288 24040658 */   addiu     $a0, $zero, 0x658
/* AC64C 800F628C 00408021 */  addu       $s0, $v0, $zero
/* AC650 800F6290 0C002504 */  jal        func_80009410
/* AC654 800F6294 02002021 */   addu      $a0, $s0, $zero
/* AC658 800F6298 3C02800D */  lui        $v0, %hi(D_race_800CCD68)
/* AC65C 800F629C 2442CD68 */  addiu      $v0, $v0, %lo(D_race_800CCD68)
/* AC660 800F62A0 02008821 */  addu       $s1, $s0, $zero
/* AC664 800F62A4 16200007 */  bnez       $s1, .Lrace_800F62C4
/* AC668 800F62A8 AE020028 */   sw        $v0, 0x28($s0)
/* AC66C 800F62AC 3C04800D */  lui        $a0, %hi(D_race_800CCD10)
/* AC670 800F62B0 2484CD10 */  addiu      $a0, $a0, %lo(D_race_800CCD10)
/* AC674 800F62B4 00002821 */  addu       $a1, $zero, $zero
/* AC678 800F62B8 00A03021 */  addu       $a2, $a1, $zero
/* AC67C 800F62BC 0C011ACF */  jal        func_80046B3C
/* AC680 800F62C0 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800F62C4:
/* AC684 800F62C4 27A40010 */  addiu      $a0, $sp, 0x10
.Lrace_800F62C8:
/* AC688 800F62C8 02402821 */  addu       $a1, $s2, $zero
/* AC68C 800F62CC 0C000708 */  jal        func_80001C20
/* AC690 800F62D0 24060008 */   addiu     $a2, $zero, 0x8
/* AC694 800F62D4 8E220028 */  lw         $v0, 0x28($s1)
/* AC698 800F62D8 84440090 */  lh         $a0, 0x90($v0)
/* AC69C 800F62DC 8C420094 */  lw         $v0, 0x94($v0)
/* AC6A0 800F62E0 0040F809 */  jalr       $v0
/* AC6A4 800F62E4 02242021 */   addu      $a0, $s1, $a0
/* AC6A8 800F62E8 27A40010 */  addiu      $a0, $sp, 0x10
/* AC6AC 800F62EC 00402821 */  addu       $a1, $v0, $zero
/* AC6B0 800F62F0 0C0006E0 */  jal        func_80001B80
/* AC6B4 800F62F4 24060004 */   addiu     $a2, $zero, 0x4
/* AC6B8 800F62F8 27A40010 */  addiu      $a0, $sp, 0x10
/* AC6BC 800F62FC 0C0018F2 */  jal        func_800063C8
/* AC6C0 800F6300 A3A0001C */   sb        $zero, 0x1C($sp)
/* AC6C4 800F6304 24030008 */  addiu      $v1, $zero, 0x8
/* AC6C8 800F6308 1443000A */  bne        $v0, $v1, .Lrace_800F6334
/* AC6CC 800F630C 02402821 */   addu      $a1, $s2, $zero
/* AC6D0 800F6310 12200006 */  beqz       $s1, .Lrace_800F632C
/* AC6D4 800F6314 24050003 */   addiu     $a1, $zero, 0x3
/* AC6D8 800F6318 8E220028 */  lw         $v0, 0x28($s1)
/* AC6DC 800F631C 84440038 */  lh         $a0, 0x38($v0)
/* AC6E0 800F6320 8C42003C */  lw         $v0, 0x3C($v0)
/* AC6E4 800F6324 0040F809 */  jalr       $v0
/* AC6E8 800F6328 02242021 */   addu      $a0, $s1, $a0
.Lrace_800F632C:
/* AC6EC 800F632C 0803D968 */  j          .Lrace_800F65A0
/* AC6F0 800F6330 AE602598 */   sw        $zero, 0x2598($s3)
.Lrace_800F6334:
/* AC6F4 800F6334 8E220028 */  lw         $v0, 0x28($s1)
/* AC6F8 800F6338 84440088 */  lh         $a0, 0x88($v0)
/* AC6FC 800F633C 8C42008C */  lw         $v0, 0x8C($v0)
/* AC700 800F6340 0040F809 */  jalr       $v0
/* AC704 800F6344 02242021 */   addu      $a0, $s1, $a0
/* AC708 800F6348 02202021 */  addu       $a0, $s1, $zero
/* AC70C 800F634C 0C0026F4 */  jal        func_80009BD0
/* AC710 800F6350 2405002C */   addiu     $a1, $zero, 0x2C
/* AC714 800F6354 02202021 */  addu       $a0, $s1, $zero
/* AC718 800F6358 0C0026F4 */  jal        func_80009BD0
/* AC71C 800F635C 24050005 */   addiu     $a1, $zero, 0x5
/* AC720 800F6360 3C02800D */  lui        $v0, %hi(jtbl_race_800CCD50)
/* AC724 800F6364 2455CD50 */  addiu      $s5, $v0, %lo(jtbl_race_800CCD50)
.Lrace_800F6368:
/* AC728 800F6368 8E220028 */  lw         $v0, 0x28($s1)
/* AC72C 800F636C 844400A0 */  lh         $a0, 0xA0($v0)
/* AC730 800F6370 8C4200A4 */  lw         $v0, 0xA4($v0)
/* AC734 800F6374 0040F809 */  jalr       $v0
/* AC738 800F6378 02242021 */   addu      $a0, $s1, $a0
/* AC73C 800F637C 00401821 */  addu       $v1, $v0, $zero
/* AC740 800F6380 24020006 */  addiu      $v0, $zero, 0x6
/* AC744 800F6384 10620079 */  beq        $v1, $v0, .Lrace_800F656C
/* AC748 800F6388 2463FFD9 */   addiu     $v1, $v1, -0x27
/* AC74C 800F638C 2C620005 */  sltiu      $v0, $v1, 0x5
/* AC750 800F6390 1040006E */  beqz       $v0, .Lrace_800F654C
/* AC754 800F6394 00031080 */   sll       $v0, $v1, 2
/* AC758 800F6398 00551021 */  addu       $v0, $v0, $s5
/* AC75C 800F639C 8C420000 */  lw         $v0, 0x0($v0)
/* AC760 800F63A0 00400008 */  jr         $v0
/* AC764 800F63A4 00000000 */   nop
glabel Lrace_800F63A8
/* AC768 800F63A8 00009021 */  addu       $s2, $zero, $zero
/* AC76C 800F63AC 02608021 */  addu       $s0, $s3, $zero
.Lrace_800F63B0:
/* AC770 800F63B0 0C002680 */  jal        func_80009A00
/* AC774 800F63B4 02202021 */   addu      $a0, $s1, $zero
/* AC778 800F63B8 AE020000 */  sw         $v0, 0x0($s0)
/* AC77C 800F63BC 26520001 */  addiu      $s2, $s2, 0x1
/* AC780 800F63C0 2E420003 */  sltiu      $v0, $s2, 0x3
/* AC784 800F63C4 1440FFFA */  bnez       $v0, .Lrace_800F63B0
/* AC788 800F63C8 26100004 */   addiu     $s0, $s0, 0x4
/* AC78C 800F63CC 0803D8DA */  j          .Lrace_800F6368
/* AC790 800F63D0 00000000 */   nop
glabel Lrace_800F63D4
/* AC794 800F63D4 0C0025F8 */  jal        func_800097E0
/* AC798 800F63D8 02202021 */   addu      $a0, $s1, $zero
/* AC79C 800F63DC 02202021 */  addu       $a0, $s1, $zero
/* AC7A0 800F63E0 0C0025F8 */  jal        func_800097E0
/* AC7A4 800F63E4 E66025A0 */   swc1      $f0, 0x25A0($s3)
/* AC7A8 800F63E8 02202021 */  addu       $a0, $s1, $zero
/* AC7AC 800F63EC 0C0025F8 */  jal        func_800097E0
/* AC7B0 800F63F0 E66025A4 */   swc1      $f0, 0x25A4($s3)
/* AC7B4 800F63F4 E66025A8 */  swc1       $f0, 0x25A8($s3)
/* AC7B8 800F63F8 928203B0 */  lbu        $v0, 0x3B0($s4)
/* AC7BC 800F63FC 30420020 */  andi       $v0, $v0, 0x20
/* AC7C0 800F6400 1040FFD9 */  beqz       $v0, .Lrace_800F6368
/* AC7C4 800F6404 00000000 */   nop
/* AC7C8 800F6408 C66025A4 */  lwc1       $f0, 0x25A4($s3)
/* AC7CC 800F640C 46000007 */  neg.s      $f0, $f0
/* AC7D0 800F6410 0803D8DA */  j          .Lrace_800F6368
/* AC7D4 800F6414 E66025A4 */   swc1      $f0, 0x25A4($s3)
glabel Lrace_800F6418
/* AC7D8 800F6418 0C0025F8 */  jal        func_800097E0
/* AC7DC 800F641C 02202021 */   addu      $a0, $s1, $zero
/* AC7E0 800F6420 02202021 */  addu       $a0, $s1, $zero
/* AC7E4 800F6424 0C0025F8 */  jal        func_800097E0
/* AC7E8 800F6428 E66025AC */   swc1      $f0, 0x25AC($s3)
/* AC7EC 800F642C 02202021 */  addu       $a0, $s1, $zero
/* AC7F0 800F6430 0C0025F8 */  jal        func_800097E0
/* AC7F4 800F6434 E66025B0 */   swc1      $f0, 0x25B0($s3)
/* AC7F8 800F6438 02202021 */  addu       $a0, $s1, $zero
/* AC7FC 800F643C 0C0025F8 */  jal        func_800097E0
/* AC800 800F6440 E66025B4 */   swc1      $f0, 0x25B4($s3)
/* AC804 800F6444 E66025B8 */  swc1       $f0, 0x25B8($s3)
/* AC808 800F6448 928203B0 */  lbu        $v0, 0x3B0($s4)
/* AC80C 800F644C 30420020 */  andi       $v0, $v0, 0x20
/* AC810 800F6450 1040FFC5 */  beqz       $v0, .Lrace_800F6368
/* AC814 800F6454 00000000 */   nop
/* AC818 800F6458 C66025B0 */  lwc1       $f0, 0x25B0($s3)
/* AC81C 800F645C C66225B8 */  lwc1       $f2, 0x25B8($s3)
/* AC820 800F6460 46000007 */  neg.s      $f0, $f0
/* AC824 800F6464 46001087 */  neg.s      $f2, $f2
/* AC828 800F6468 E66025B0 */  swc1       $f0, 0x25B0($s3)
/* AC82C 800F646C 0803D8DA */  j          .Lrace_800F6368
/* AC830 800F6470 E66225B8 */   swc1      $f2, 0x25B8($s3)
glabel Lrace_800F6474
/* AC834 800F6474 0C002680 */  jal        func_80009A00
/* AC838 800F6478 02202021 */   addu      $a0, $s1, $zero
/* AC83C 800F647C 0803D8DA */  j          .Lrace_800F6368
/* AC840 800F6480 AE62259C */   sw        $v0, 0x259C($s3)
glabel Lrace_800F6484
/* AC844 800F6484 0C002723 */  jal        func_80009C8C
/* AC848 800F6488 02202021 */   addu      $a0, $s1, $zero
/* AC84C 800F648C AE622598 */  sw         $v0, 0x2598($s3)
/* AC850 800F6490 10400029 */  beqz       $v0, .Lrace_800F6538
/* AC854 800F6494 00009021 */   addu      $s2, $zero, $zero
/* AC858 800F6498 02608021 */  addu       $s0, $s3, $zero
.Lrace_800F649C:
/* AC85C 800F649C 0C002680 */  jal        func_80009A00
/* AC860 800F64A0 02202021 */   addu      $a0, $s1, $zero
/* AC864 800F64A4 02202021 */  addu       $a0, $s1, $zero
/* AC868 800F64A8 0C002680 */  jal        func_80009A00
/* AC86C 800F64AC A602000C */   sh        $v0, 0xC($s0)
/* AC870 800F64B0 02202021 */  addu       $a0, $s1, $zero
/* AC874 800F64B4 0C002680 */  jal        func_80009A00
/* AC878 800F64B8 A602000E */   sh        $v0, 0xE($s0)
/* AC87C 800F64BC 02202021 */  addu       $a0, $s1, $zero
/* AC880 800F64C0 0C002680 */  jal        func_80009A00
/* AC884 800F64C4 A6020010 */   sh        $v0, 0x10($s0)
/* AC888 800F64C8 02202021 */  addu       $a0, $s1, $zero
/* AC88C 800F64CC 0C002680 */  jal        func_80009A00
/* AC890 800F64D0 A2020012 */   sb        $v0, 0x12($s0)
/* AC894 800F64D4 02202021 */  addu       $a0, $s1, $zero
/* AC898 800F64D8 0C002680 */  jal        func_80009A00
/* AC89C 800F64DC A2020013 */   sb        $v0, 0x13($s0)
/* AC8A0 800F64E0 02202021 */  addu       $a0, $s1, $zero
/* AC8A4 800F64E4 0C002680 */  jal        func_80009A00
/* AC8A8 800F64E8 A2020014 */   sb        $v0, 0x14($s0)
/* AC8AC 800F64EC A2020015 */  sb         $v0, 0x15($s0)
/* AC8B0 800F64F0 928203B0 */  lbu        $v0, 0x3B0($s4)
/* AC8B4 800F64F4 30420020 */  andi       $v0, $v0, 0x20
/* AC8B8 800F64F8 1040000A */  beqz       $v0, .Lrace_800F6524
/* AC8BC 800F64FC 00000000 */   nop
/* AC8C0 800F6500 9602000E */  lhu        $v0, 0xE($s0)
/* AC8C4 800F6504 92030015 */  lbu        $v1, 0x15($s0)
/* AC8C8 800F6508 00021023 */  negu       $v0, $v0
/* AC8CC 800F650C A602000E */  sh         $v0, 0xE($s0)
/* AC8D0 800F6510 92020013 */  lbu        $v0, 0x13($s0)
/* AC8D4 800F6514 00031823 */  negu       $v1, $v1
/* AC8D8 800F6518 A2030015 */  sb         $v1, 0x15($s0)
/* AC8DC 800F651C 00021023 */  negu       $v0, $v0
/* AC8E0 800F6520 A2020013 */  sb         $v0, 0x13($s0)
.Lrace_800F6524:
/* AC8E4 800F6524 8E622598 */  lw         $v0, 0x2598($s3)
/* AC8E8 800F6528 26520001 */  addiu      $s2, $s2, 0x1
/* AC8EC 800F652C 0242102B */  sltu       $v0, $s2, $v0
/* AC8F0 800F6530 1440FFDA */  bnez       $v0, .Lrace_800F649C
/* AC8F4 800F6534 2610000A */   addiu     $s0, $s0, 0xA
.Lrace_800F6538:
/* AC8F8 800F6538 02202021 */  addu       $a0, $s1, $zero
/* AC8FC 800F653C 0C0026F4 */  jal        func_80009BD0
/* AC900 800F6540 24050006 */   addiu     $a1, $zero, 0x6
/* AC904 800F6544 0803D8DA */  j          .Lrace_800F6368
/* AC908 800F6548 00000000 */   nop
.Lrace_800F654C:
/* AC90C 800F654C 8E220028 */  lw         $v0, 0x28($s1)
/* AC910 800F6550 00002821 */  addu       $a1, $zero, $zero
/* AC914 800F6554 84440098 */  lh         $a0, 0x98($v0)
/* AC918 800F6558 8C42009C */  lw         $v0, 0x9C($v0)
/* AC91C 800F655C 0040F809 */  jalr       $v0
/* AC920 800F6560 02242021 */   addu      $a0, $s1, $a0
/* AC924 800F6564 0803D8DA */  j          .Lrace_800F6368
/* AC928 800F6568 00000000 */   nop
.Lrace_800F656C:
/* AC92C 800F656C AE6025BC */  sw         $zero, 0x25BC($s3)
/* AC930 800F6570 8E220028 */  lw         $v0, 0x28($s1)
/* AC934 800F6574 84440048 */  lh         $a0, 0x48($v0)
/* AC938 800F6578 8C42004C */  lw         $v0, 0x4C($v0)
/* AC93C 800F657C 0040F809 */  jalr       $v0
/* AC940 800F6580 02242021 */   addu      $a0, $s1, $a0
/* AC944 800F6584 12200006 */  beqz       $s1, .Lrace_800F65A0
/* AC948 800F6588 24050003 */   addiu     $a1, $zero, 0x3
/* AC94C 800F658C 8E220028 */  lw         $v0, 0x28($s1)
/* AC950 800F6590 84440038 */  lh         $a0, 0x38($v0)
/* AC954 800F6594 8C42003C */  lw         $v0, 0x3C($v0)
/* AC958 800F6598 0040F809 */  jalr       $v0
/* AC95C 800F659C 02242021 */   addu      $a0, $s1, $a0
.Lrace_800F65A0:
/* AC960 800F65A0 8FBF0038 */  lw         $ra, 0x38($sp)
/* AC964 800F65A4 8FB50034 */  lw         $s5, 0x34($sp)
/* AC968 800F65A8 8FB40030 */  lw         $s4, 0x30($sp)
/* AC96C 800F65AC 8FB3002C */  lw         $s3, 0x2C($sp)
/* AC970 800F65B0 8FB20028 */  lw         $s2, 0x28($sp)
/* AC974 800F65B4 8FB10024 */  lw         $s1, 0x24($sp)
/* AC978 800F65B8 8FB00020 */  lw         $s0, 0x20($sp)
/* AC97C 800F65BC 03E00008 */  jr         $ra
/* AC980 800F65C0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800F65C4
/* AC984 800F65C4 908303B0 */  lbu        $v1, 0x3B0($a0)
/* AC988 800F65C8 30620001 */  andi       $v0, $v1, 0x1
/* AC98C 800F65CC 14400004 */  bnez       $v0, .Lrace_800F65E0
/* AC990 800F65D0 30620008 */   andi      $v0, $v1, 0x8
/* AC994 800F65D4 30620010 */  andi       $v0, $v1, 0x10
/* AC998 800F65D8 10400003 */  beqz       $v0, .Lrace_800F65E8
/* AC99C 800F65DC 30620008 */   andi      $v0, $v1, 0x8
.Lrace_800F65E0:
/* AC9A0 800F65E0 14400003 */  bnez       $v0, .Lrace_800F65F0
/* AC9A4 800F65E4 00004021 */   addu      $t0, $zero, $zero
.Lrace_800F65E8:
/* AC9A8 800F65E8 03E00008 */  jr         $ra
/* AC9AC 800F65EC 00001021 */   addu      $v0, $zero, $zero
.Lrace_800F65F0:
/* AC9B0 800F65F0 01003821 */  addu       $a3, $t0, $zero
/* AC9B4 800F65F4 01003021 */  addu       $a2, $t0, $zero
/* AC9B8 800F65F8 8C85000C */  lw         $a1, 0xC($a0)
/* AC9BC 800F65FC 8C840008 */  lw         $a0, 0x8($a0)
.Lrace_800F6600:
/* AC9C0 800F6600 8CA30000 */  lw         $v1, 0x0($a1)
/* AC9C4 800F6604 24A50004 */  addiu      $a1, $a1, 0x4
/* AC9C8 800F6608 8C820000 */  lw         $v0, 0x0($a0)
/* AC9CC 800F660C 24840004 */  addiu      $a0, $a0, 0x4
/* AC9D0 800F6610 24C60001 */  addiu      $a2, $a2, 0x1
/* AC9D4 800F6614 01024021 */  addu       $t0, $t0, $v0
/* AC9D8 800F6618 2CC20003 */  sltiu      $v0, $a2, 0x3
/* AC9DC 800F661C 1440FFF8 */  bnez       $v0, .Lrace_800F6600
/* AC9E0 800F6620 00E33821 */   addu      $a3, $a3, $v1
/* AC9E4 800F6624 03E00008 */  jr         $ra
/* AC9E8 800F6628 00E8102B */   sltu      $v0, $a3, $t0

glabel func_race_800F662C
/* AC9EC 800F662C 908203B0 */  lbu        $v0, 0x3B0($a0)
/* AC9F0 800F6630 00002821 */  addu       $a1, $zero, $zero
/* AC9F4 800F6634 AC8003AC */  sw         $zero, 0x3AC($a0)
/* AC9F8 800F6638 304200FD */  andi       $v0, $v0, 0xFD
/* AC9FC 800F663C A08203B0 */  sb         $v0, 0x3B0($a0)
.Lrace_800F6640:
/* ACA00 800F6640 00051080 */  sll        $v0, $a1, 2
/* ACA04 800F6644 8C830010 */  lw         $v1, 0x10($a0)
/* ACA08 800F6648 24A50001 */  addiu      $a1, $a1, 0x1
/* ACA0C 800F664C 00621821 */  addu       $v1, $v1, $v0
/* ACA10 800F6650 2CA20003 */  sltiu      $v0, $a1, 0x3
/* ACA14 800F6654 1440FFFA */  bnez       $v0, .Lrace_800F6640
/* ACA18 800F6658 AC600000 */   sw        $zero, 0x0($v1)
/* ACA1C 800F665C 8C820010 */  lw         $v0, 0x10($a0)
/* ACA20 800F6660 AC402598 */  sw         $zero, 0x2598($v0)
/* ACA24 800F6664 8C820010 */  lw         $v0, 0x10($a0)
/* ACA28 800F6668 AC4025A0 */  sw         $zero, 0x25A0($v0)
/* ACA2C 800F666C 8C820010 */  lw         $v0, 0x10($a0)
/* ACA30 800F6670 AC4025A4 */  sw         $zero, 0x25A4($v0)
/* ACA34 800F6674 8C820010 */  lw         $v0, 0x10($a0)
/* ACA38 800F6678 AC4025A8 */  sw         $zero, 0x25A8($v0)
/* ACA3C 800F667C 8C820010 */  lw         $v0, 0x10($a0)
/* ACA40 800F6680 AC4025AC */  sw         $zero, 0x25AC($v0)
/* ACA44 800F6684 8C820010 */  lw         $v0, 0x10($a0)
/* ACA48 800F6688 AC4025B0 */  sw         $zero, 0x25B0($v0)
/* ACA4C 800F668C 8C820010 */  lw         $v0, 0x10($a0)
/* ACA50 800F6690 AC4025B4 */  sw         $zero, 0x25B4($v0)
/* ACA54 800F6694 8C820010 */  lw         $v0, 0x10($a0)
/* ACA58 800F6698 AC4025B8 */  sw         $zero, 0x25B8($v0)
/* ACA5C 800F669C 8C820010 */  lw         $v0, 0x10($a0)
/* ACA60 800F66A0 AC40259C */  sw         $zero, 0x259C($v0)
/* ACA64 800F66A4 8C820010 */  lw         $v0, 0x10($a0)
/* ACA68 800F66A8 AC4025BC */  sw         $zero, 0x25BC($v0)
/* ACA6C 800F66AC 8C820008 */  lw         $v0, 0x8($a0)
/* ACA70 800F66B0 AC4025BC */  sw         $zero, 0x25BC($v0)
/* ACA74 800F66B4 8C82000C */  lw         $v0, 0xC($a0)
/* ACA78 800F66B8 03E00008 */  jr         $ra
/* ACA7C 800F66BC AC4025BC */   sw        $zero, 0x25BC($v0)

glabel func_race_800F66C0
/* ACA80 800F66C0 3C028013 */  lui        $v0, %hi(D_race_801321C0)
/* ACA84 800F66C4 03E00008 */  jr         $ra
/* ACA88 800F66C8 AC4421C0 */   sw        $a0, %lo(D_race_801321C0)($v0)

glabel func_race_800F66CC
/* ACA8C 800F66CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* ACA90 800F66D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* ACA94 800F66D4 0C002513 */  jal        func_8000944C
/* ACA98 800F66D8 00000000 */   nop
/* ACA9C 800F66DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* ACAA0 800F66E0 03E00008 */  jr         $ra
/* ACAA4 800F66E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F66E8
/* ACAA8 800F66E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* ACAAC 800F66EC AFBF0010 */  sw         $ra, 0x10($sp)
/* ACAB0 800F66F0 0C01595B */  jal        func_8005656C
/* ACAB4 800F66F4 24840018 */   addiu     $a0, $a0, 0x18
/* ACAB8 800F66F8 8FBF0010 */  lw         $ra, 0x10($sp)
/* ACABC 800F66FC 03E00008 */  jr         $ra
/* ACAC0 800F6700 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F6704
/* ACAC4 800F6704 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* ACAC8 800F6708 AFBF0010 */  sw         $ra, 0x10($sp)
/* ACACC 800F670C 8C82010C */  lw         $v0, 0x10C($a0)
/* ACAD0 800F6710 8C430024 */  lw         $v1, 0x24($v0)
/* ACAD4 800F6714 84640010 */  lh         $a0, 0x10($v1)
/* ACAD8 800F6718 00442021 */  addu       $a0, $v0, $a0
/* ACADC 800F671C 8C620014 */  lw         $v0, 0x14($v1)
/* ACAE0 800F6720 0040F809 */  jalr       $v0
/* ACAE4 800F6724 00000000 */   nop
/* ACAE8 800F6728 8FBF0010 */  lw         $ra, 0x10($sp)
/* ACAEC 800F672C 03E00008 */  jr         $ra
/* ACAF0 800F6730 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F6734
/* ACAF4 800F6734 908303B0 */  lbu        $v1, 0x3B0($a0)
/* ACAF8 800F6738 30630008 */  andi       $v1, $v1, 0x8
/* ACAFC 800F673C 14600002 */  bnez       $v1, .Lrace_800F6748
/* ACB00 800F6740 24020002 */   addiu     $v0, $zero, 0x2
/* ACB04 800F6744 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800F6748:
/* ACB08 800F6748 03E00008 */  jr         $ra
/* ACB0C 800F674C 00000000 */   nop

glabel func_race_800F6750
/* ACB10 800F6750 8C820010 */  lw         $v0, 0x10($a0)
/* ACB14 800F6754 03E00008 */  jr         $ra
/* ACB18 800F6758 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800F675C
/* ACB1C 800F675C 8C82000C */  lw         $v0, 0xC($a0)
/* ACB20 800F6760 00052880 */  sll        $a1, $a1, 2
/* ACB24 800F6764 00451021 */  addu       $v0, $v0, $a1
/* ACB28 800F6768 8C420000 */  lw         $v0, 0x0($v0)
/* ACB2C 800F676C 03E00008 */  jr         $ra
/* ACB30 800F6770 00000000 */   nop

glabel func_race_800F6774
/* ACB34 800F6774 8C820008 */  lw         $v0, 0x8($a0)
/* ACB38 800F6778 00052880 */  sll        $a1, $a1, 2
/* ACB3C 800F677C 00451021 */  addu       $v0, $v0, $a1
/* ACB40 800F6780 8C420000 */  lw         $v0, 0x0($v0)
/* ACB44 800F6784 03E00008 */  jr         $ra
/* ACB48 800F6788 00000000 */   nop

glabel func_race_800F678C
/* ACB4C 800F678C 8C82000C */  lw         $v0, 0xC($a0)
/* ACB50 800F6790 8C4225BC */  lw         $v0, 0x25BC($v0)
/* ACB54 800F6794 03E00008 */  jr         $ra
/* ACB58 800F6798 00000000 */   nop

glabel func_race_800F679C
/* ACB5C 800F679C 8C820008 */  lw         $v0, 0x8($a0)
/* ACB60 800F67A0 8C4225BC */  lw         $v0, 0x25BC($v0)
/* ACB64 800F67A4 03E00008 */  jr         $ra
/* ACB68 800F67A8 00000000 */   nop

glabel func_race_800F67AC
/* ACB6C 800F67AC 908203B0 */  lbu        $v0, 0x3B0($a0)
/* ACB70 800F67B0 03E00008 */  jr         $ra
/* ACB74 800F67B4 30420001 */   andi      $v0, $v0, 0x1

glabel func_race_800F67B8
/* ACB78 800F67B8 908203B0 */  lbu        $v0, 0x3B0($a0)
/* ACB7C 800F67BC 03E00008 */  jr         $ra
/* ACB80 800F67C0 30420008 */   andi      $v0, $v0, 0x8
