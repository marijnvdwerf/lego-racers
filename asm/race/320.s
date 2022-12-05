.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800EA1E0
/* A05A0 800EA1E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A05A4 800EA1E4 AFB20018 */  sw         $s2, 0x18($sp)
/* A05A8 800EA1E8 00809021 */  addu       $s2, $a0, $zero
/* A05AC 800EA1EC AFBF0020 */  sw         $ra, 0x20($sp)
/* A05B0 800EA1F0 AFB3001C */  sw         $s3, 0x1C($sp)
/* A05B4 800EA1F4 AFB10014 */  sw         $s1, 0x14($sp)
/* A05B8 800EA1F8 0C03A1A4 */  jal        func_race_800E8690
/* A05BC 800EA1FC AFB00010 */   sw        $s0, 0x10($sp)
/* A05C0 800EA200 3C02800D */  lui        $v0, %hi(D_race_800CBF98)
/* A05C4 800EA204 2442BF98 */  addiu      $v0, $v0, %lo(D_race_800CBF98)
/* A05C8 800EA208 26440010 */  addiu      $a0, $s2, 0x10
/* A05CC 800EA20C 0C0164A4 */  jal        func_80059290
/* A05D0 800EA210 AE420000 */   sw        $v0, 0x0($s2)
/* A05D4 800EA214 26510070 */  addiu      $s1, $s2, 0x70
/* A05D8 800EA218 24100002 */  addiu      $s0, $zero, 0x2
/* A05DC 800EA21C 2413FFFF */  addiu      $s3, $zero, -0x1
.Lrace_800EA220:
/* A05E0 800EA220 0C016038 */  jal        func_800580E0
/* A05E4 800EA224 02202021 */   addu      $a0, $s1, $zero
/* A05E8 800EA228 2610FFFF */  addiu      $s0, $s0, -0x1
/* A05EC 800EA22C 1613FFFC */  bne        $s0, $s3, .Lrace_800EA220
/* A05F0 800EA230 26310090 */   addiu     $s1, $s1, 0x90
/* A05F4 800EA234 0C03A8A9 */  jal        func_race_800EA2A4
/* A05F8 800EA238 02402021 */   addu      $a0, $s2, $zero
/* A05FC 800EA23C 02401021 */  addu       $v0, $s2, $zero
/* A0600 800EA240 8FBF0020 */  lw         $ra, 0x20($sp)
/* A0604 800EA244 8FB3001C */  lw         $s3, 0x1C($sp)
/* A0608 800EA248 8FB20018 */  lw         $s2, 0x18($sp)
/* A060C 800EA24C 8FB10014 */  lw         $s1, 0x14($sp)
/* A0610 800EA250 8FB00010 */  lw         $s0, 0x10($sp)
/* A0614 800EA254 03E00008 */  jr         $ra
/* A0618 800EA258 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800EA25C
/* A061C 800EA25C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A0620 800EA260 AFB00010 */  sw         $s0, 0x10($sp)
/* A0624 800EA264 00808021 */  addu       $s0, $a0, $zero
/* A0628 800EA268 AFB10014 */  sw         $s1, 0x14($sp)
/* A062C 800EA26C 00A08821 */  addu       $s1, $a1, $zero
/* A0630 800EA270 3C02800D */  lui        $v0, %hi(D_race_800CBF98)
/* A0634 800EA274 2442BF98 */  addiu      $v0, $v0, %lo(D_race_800CBF98)
/* A0638 800EA278 AFBF0018 */  sw         $ra, 0x18($sp)
/* A063C 800EA27C 0C03A929 */  jal        func_race_800EA4A4
/* A0640 800EA280 AE020000 */   sw        $v0, 0x0($s0)
/* A0644 800EA284 02002021 */  addu       $a0, $s0, $zero
/* A0648 800EA288 0C03A1AC */  jal        func_race_800E86B0
/* A064C 800EA28C 02202821 */   addu      $a1, $s1, $zero
/* A0650 800EA290 8FBF0018 */  lw         $ra, 0x18($sp)
/* A0654 800EA294 8FB10014 */  lw         $s1, 0x14($sp)
/* A0658 800EA298 8FB00010 */  lw         $s0, 0x10($sp)
/* A065C 800EA29C 03E00008 */  jr         $ra
/* A0660 800EA2A0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EA2A4
/* A0664 800EA2A4 AC800050 */  sw         $zero, 0x50($a0)
/* A0668 800EA2A8 AC800054 */  sw         $zero, 0x54($a0)
/* A066C 800EA2AC AC800038 */  sw         $zero, 0x38($a0)
/* A0670 800EA2B0 AC80003C */  sw         $zero, 0x3C($a0)
/* A0674 800EA2B4 AC800040 */  sw         $zero, 0x40($a0)
/* A0678 800EA2B8 AC800044 */  sw         $zero, 0x44($a0)
/* A067C 800EA2BC AC800048 */  sw         $zero, 0x48($a0)
/* A0680 800EA2C0 AC80004C */  sw         $zero, 0x4C($a0)
/* A0684 800EA2C4 AC800058 */  sw         $zero, 0x58($a0)
/* A0688 800EA2C8 AC80005C */  sw         $zero, 0x5C($a0)
/* A068C 800EA2CC AC800060 */  sw         $zero, 0x60($a0)
/* A0690 800EA2D0 AC800064 */  sw         $zero, 0x64($a0)
/* A0694 800EA2D4 AC800068 */  sw         $zero, 0x68($a0)
/* A0698 800EA2D8 03E00008 */  jr         $ra
/* A069C 800EA2DC AC80006C */   sw        $zero, 0x6C($a0)

glabel func_race_800EA2E0
/* A06A0 800EA2E0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A06A4 800EA2E4 AFB30034 */  sw         $s3, 0x34($sp)
/* A06A8 800EA2E8 00809821 */  addu       $s3, $a0, $zero
/* A06AC 800EA2EC AFBF0038 */  sw         $ra, 0x38($sp)
/* A06B0 800EA2F0 AFB20030 */  sw         $s2, 0x30($sp)
/* A06B4 800EA2F4 AFB1002C */  sw         $s1, 0x2C($sp)
/* A06B8 800EA2F8 AFB00028 */  sw         $s0, 0x28($sp)
/* A06BC 800EA2FC 8E62000C */  lw         $v0, 0xC($s3)
/* A06C0 800EA300 10400003 */  beqz       $v0, .Lrace_800EA310
/* A06C4 800EA304 00A08021 */   addu      $s0, $a1, $zero
/* A06C8 800EA308 0C03A929 */  jal        func_race_800EA4A4
/* A06CC 800EA30C 00000000 */   nop
.Lrace_800EA310:
/* A06D0 800EA310 2402000A */  addiu      $v0, $zero, 0xA
/* A06D4 800EA314 AE620008 */  sw         $v0, 0x8($s3)
/* A06D8 800EA318 8E02000C */  lw         $v0, 0xC($s0)
/* A06DC 800EA31C AE620004 */  sw         $v0, 0x4($s3)
/* A06E0 800EA320 8E020000 */  lw         $v0, 0x0($s0)
/* A06E4 800EA324 AE620040 */  sw         $v0, 0x40($s3)
/* A06E8 800EA328 8E02001C */  lw         $v0, 0x1C($s0)
/* A06EC 800EA32C AE620048 */  sw         $v0, 0x48($s3)
/* A06F0 800EA330 8E020008 */  lw         $v0, 0x8($s0)
/* A06F4 800EA334 AE620054 */  sw         $v0, 0x54($s3)
/* A06F8 800EA338 8E020030 */  lw         $v0, 0x30($s0)
/* A06FC 800EA33C AE620058 */  sw         $v0, 0x58($s3)
/* A0700 800EA340 3C02800D */  lui        $v0, %hi(D_race_800CBF40)
/* A0704 800EA344 8E030010 */  lw         $v1, 0x10($s0)
/* A0708 800EA348 2445BF40 */  addiu      $a1, $v0, %lo(D_race_800CBF40)
/* A070C 800EA34C 8C6200BC */  lw         $v0, 0xBC($v1)
/* A0710 800EA350 14400003 */  bnez       $v0, .Lrace_800EA360
/* A0714 800EA354 246400BC */   addiu     $a0, $v1, 0xBC
/* A0718 800EA358 0803A8DA */  j          .Lrace_800EA368
/* A071C 800EA35C 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EA360:
/* A0720 800EA360 0C016427 */  jal        func_8005909C
/* A0724 800EA364 00000000 */   nop
.Lrace_800EA368:
/* A0728 800EA368 AE620038 */  sw         $v0, 0x38($s3)
/* A072C 800EA36C 3C02800D */  lui        $v0, %hi(D_race_800CBF48)
/* A0730 800EA370 8E030010 */  lw         $v1, 0x10($s0)
/* A0734 800EA374 2445BF48 */  addiu      $a1, $v0, %lo(D_race_800CBF48)
/* A0738 800EA378 8C6200B0 */  lw         $v0, 0xB0($v1)
/* A073C 800EA37C 14400003 */  bnez       $v0, .Lrace_800EA38C
/* A0740 800EA380 246400B0 */   addiu     $a0, $v1, 0xB0
/* A0744 800EA384 0803A8E5 */  j          .Lrace_800EA394
/* A0748 800EA388 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EA38C:
/* A074C 800EA38C 0C016427 */  jal        func_8005909C
/* A0750 800EA390 00000000 */   nop
.Lrace_800EA394:
/* A0754 800EA394 AE62003C */  sw         $v0, 0x3C($s3)
/* A0758 800EA398 00008021 */  addu       $s0, $zero, $zero
/* A075C 800EA39C 24120070 */  addiu      $s2, $zero, 0x70
/* A0760 800EA3A0 02608821 */  addu       $s1, $s3, $zero
/* A0764 800EA3A4 2E020003 */  sltiu      $v0, $s0, 0x3
.Lrace_800EA3A8:
/* A0768 800EA3A8 1040000E */  beqz       $v0, .Lrace_800EA3E4
/* A076C 800EA3AC 02723821 */   addu      $a3, $s3, $s2
/* A0770 800EA3B0 26520090 */  addiu      $s2, $s2, 0x90
/* A0774 800EA3B4 8E220094 */  lw         $v0, 0x94($s1)
/* A0778 800EA3B8 26310090 */  addiu      $s1, $s1, 0x90
/* A077C 800EA3BC 8E63003C */  lw         $v1, 0x3C($s3)
/* A0780 800EA3C0 26100001 */  addiu      $s0, $s0, 0x1
/* A0784 800EA3C4 8C650078 */  lw         $a1, 0x78($v1)
/* A0788 800EA3C8 844400A8 */  lh         $a0, 0xA8($v0)
/* A078C 800EA3CC 8C4200AC */  lw         $v0, 0xAC($v0)
/* A0790 800EA3D0 8C660084 */  lw         $a2, 0x84($v1)
/* A0794 800EA3D4 0040F809 */  jalr       $v0
/* A0798 800EA3D8 00E42021 */   addu      $a0, $a3, $a0
/* A079C 800EA3DC 0803A8EA */  j          .Lrace_800EA3A8
/* A07A0 800EA3E0 2E020003 */   sltiu     $v0, $s0, 0x3
.Lrace_800EA3E4:
/* A07A4 800EA3E4 00008021 */  addu       $s0, $zero, $zero
.Lrace_800EA3E8:
/* A07A8 800EA3E8 2E020003 */  sltiu      $v0, $s0, 0x3
/* A07AC 800EA3EC 10400006 */  beqz       $v0, .Lrace_800EA408
/* A07B0 800EA3F0 00101880 */   sll       $v1, $s0, 2
/* A07B4 800EA3F4 8E62003C */  lw         $v0, 0x3C($s3)
/* A07B8 800EA3F8 26100001 */  addiu      $s0, $s0, 0x1
/* A07BC 800EA3FC 00431021 */  addu       $v0, $v0, $v1
/* A07C0 800EA400 0803A8FA */  j          .Lrace_800EA3E8
/* A07C4 800EA404 AC400084 */   sw        $zero, 0x84($v0)
.Lrace_800EA408:
/* A07C8 800EA408 8E620038 */  lw         $v0, 0x38($s3)
/* A07CC 800EA40C 3C01800D */  lui        $at, %hi(D_race_800CBF50)
/* A07D0 800EA410 C420BF50 */  lwc1       $f0, %lo(D_race_800CBF50)($at)
/* A07D4 800EA414 8C420078 */  lw         $v0, 0x78($v0)
/* A07D8 800EA418 8C480024 */  lw         $t0, 0x24($v0)
/* A07DC 800EA41C 8C490028 */  lw         $t1, 0x28($v0)
/* A07E0 800EA420 8C4A002C */  lw         $t2, 0x2C($v0)
/* A07E4 800EA424 AFA80010 */  sw         $t0, 0x10($sp)
/* A07E8 800EA428 AFA90014 */  sw         $t1, 0x14($sp)
/* A07EC 800EA42C AFAA0018 */  sw         $t2, 0x18($sp)
/* A07F0 800EA430 C4420030 */  lwc1       $f2, 0x30($v0)
/* A07F4 800EA434 46001000 */  add.s      $f0, $f2, $f0
/* A07F8 800EA438 44050000 */  mfc1       $a1, $f0
/* A07FC 800EA43C 26640010 */  addiu      $a0, $s3, 0x10
/* A0800 800EA440 0C0165E8 */  jal        func_800597A0
/* A0804 800EA444 E7A20020 */   swc1      $f2, 0x20($sp)
/* A0808 800EA448 8E620038 */  lw         $v0, 0x38($s3)
/* A080C 800EA44C 8C4200A8 */  lw         $v0, 0xA8($v0)
/* A0810 800EA450 8C42002C */  lw         $v0, 0x2C($v0)
/* A0814 800EA454 3C01800D */  lui        $at, %hi(D_race_800CBF54)
/* A0818 800EA458 C422BF54 */  lwc1       $f2, %lo(D_race_800CBF54)($at)
/* A081C 800EA45C C4400000 */  lwc1       $f0, 0x0($v0)
/* A0820 800EA460 94420024 */  lhu        $v0, 0x24($v0)
/* A0824 800EA464 46001083 */  div.s      $f2, $f2, $f0
/* A0828 800EA468 44820000 */  mtc1       $v0, $f0
/* A082C 800EA46C 46800020 */  cvt.s.w    $f0, $f0
/* A0830 800EA470 46001082 */  mul.s      $f2, $f2, $f0
/* A0834 800EA474 AE60006C */  sw         $zero, 0x6C($s3)
/* A0838 800EA478 24020001 */  addiu      $v0, $zero, 0x1
/* A083C 800EA47C AE62000C */  sw         $v0, 0xC($s3)
/* A0840 800EA480 4600110D */  trunc.w.s  $f4, $f2
/* A0844 800EA484 E6640060 */  swc1       $f4, 0x60($s3)
/* A0848 800EA488 8FBF0038 */  lw         $ra, 0x38($sp)
/* A084C 800EA48C 8FB30034 */  lw         $s3, 0x34($sp)
/* A0850 800EA490 8FB20030 */  lw         $s2, 0x30($sp)
/* A0854 800EA494 8FB1002C */  lw         $s1, 0x2C($sp)
/* A0858 800EA498 8FB00028 */  lw         $s0, 0x28($sp)
/* A085C 800EA49C 03E00008 */  jr         $ra
/* A0860 800EA4A0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800EA4A4
/* A0864 800EA4A4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A0868 800EA4A8 AFB3001C */  sw         $s3, 0x1C($sp)
/* A086C 800EA4AC 00809821 */  addu       $s3, $a0, $zero
/* A0870 800EA4B0 AFB20018 */  sw         $s2, 0x18($sp)
/* A0874 800EA4B4 00009021 */  addu       $s2, $zero, $zero
/* A0878 800EA4B8 AFB10014 */  sw         $s1, 0x14($sp)
/* A087C 800EA4BC 24110070 */  addiu      $s1, $zero, 0x70
/* A0880 800EA4C0 AFBF0020 */  sw         $ra, 0x20($sp)
/* A0884 800EA4C4 AFB00010 */  sw         $s0, 0x10($sp)
/* A0888 800EA4C8 8E620000 */  lw         $v0, 0x0($s3)
/* A088C 800EA4CC 02402821 */  addu       $a1, $s2, $zero
/* A0890 800EA4D0 84440018 */  lh         $a0, 0x18($v0)
/* A0894 800EA4D4 8C42001C */  lw         $v0, 0x1C($v0)
/* A0898 800EA4D8 0040F809 */  jalr       $v0
/* A089C 800EA4DC 02642021 */   addu      $a0, $s3, $a0
/* A08A0 800EA4E0 02608021 */  addu       $s0, $s3, $zero
/* A08A4 800EA4E4 02711821 */  addu       $v1, $s3, $s1
.Lrace_800EA4E8:
/* A08A8 800EA4E8 26310090 */  addiu      $s1, $s1, 0x90
/* A08AC 800EA4EC 8E020094 */  lw         $v0, 0x94($s0)
/* A08B0 800EA4F0 26100090 */  addiu      $s0, $s0, 0x90
/* A08B4 800EA4F4 26520001 */  addiu      $s2, $s2, 0x1
/* A08B8 800EA4F8 844400B0 */  lh         $a0, 0xB0($v0)
/* A08BC 800EA4FC 8C4200B4 */  lw         $v0, 0xB4($v0)
/* A08C0 800EA500 0040F809 */  jalr       $v0
/* A08C4 800EA504 00642021 */   addu      $a0, $v1, $a0
/* A08C8 800EA508 2E420003 */  sltiu      $v0, $s2, 0x3
/* A08CC 800EA50C 1440FFF6 */  bnez       $v0, .Lrace_800EA4E8
/* A08D0 800EA510 02711821 */   addu      $v1, $s3, $s1
/* A08D4 800EA514 0C03A8A9 */  jal        func_race_800EA2A4
/* A08D8 800EA518 02602021 */   addu      $a0, $s3, $zero
/* A08DC 800EA51C 0C03A1C0 */  jal        func_race_800E8700
/* A08E0 800EA520 02602021 */   addu      $a0, $s3, $zero
/* A08E4 800EA524 8FBF0020 */  lw         $ra, 0x20($sp)
/* A08E8 800EA528 8FB3001C */  lw         $s3, 0x1C($sp)
/* A08EC 800EA52C 8FB20018 */  lw         $s2, 0x18($sp)
/* A08F0 800EA530 8FB10014 */  lw         $s1, 0x14($sp)
/* A08F4 800EA534 8FB00010 */  lw         $s0, 0x10($sp)
/* A08F8 800EA538 03E00008 */  jr         $ra
/* A08FC 800EA53C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800EA540
/* A0900 800EA540 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A0904 800EA544 AFB00028 */  sw         $s0, 0x28($sp)
/* A0908 800EA548 00808021 */  addu       $s0, $a0, $zero
/* A090C 800EA54C 02002821 */  addu       $a1, $s0, $zero
/* A0910 800EA550 24020004 */  addiu      $v0, $zero, 0x4
/* A0914 800EA554 AFA20010 */  sw         $v0, 0x10($sp)
/* A0918 800EA558 24020001 */  addiu      $v0, $zero, 0x1
/* A091C 800EA55C AFA20014 */  sw         $v0, 0x14($sp)
/* A0920 800EA560 26020010 */  addiu      $v0, $s0, 0x10
/* A0924 800EA564 AFBF002C */  sw         $ra, 0x2C($sp)
/* A0928 800EA568 AFA00018 */  sw         $zero, 0x18($sp)
/* A092C 800EA56C AFA0001C */  sw         $zero, 0x1C($sp)
/* A0930 800EA570 AFA20020 */  sw         $v0, 0x20($sp)
/* A0934 800EA574 8E040040 */  lw         $a0, 0x40($s0)
/* A0938 800EA578 0C04053E */  jal        func_race_801014F8
/* A093C 800EA57C 27A60010 */   addiu     $a2, $sp, 0x10
/* A0940 800EA580 8E040054 */  lw         $a0, 0x54($s0)
/* A0944 800EA584 24050BC4 */  addiu      $a1, $zero, 0xBC4
/* A0948 800EA588 AE020044 */  sw         $v0, 0x44($s0)
/* A094C 800EA58C 240201F4 */  addiu      $v0, $zero, 0x1F4
/* A0950 800EA590 AE00005C */  sw         $zero, 0x5C($s0)
/* A0954 800EA594 0C04654F */  jal        func_race_8011953C
/* A0958 800EA598 AE020064 */   sw        $v0, 0x64($s0)
/* A095C 800EA59C 1040000E */  beqz       $v0, .Lrace_800EA5D8
/* A0960 800EA5A0 AE020050 */   sw        $v0, 0x50($s0)
/* A0964 800EA5A4 3C01800D */  lui        $at, %hi(D_race_800CBF58)
/* A0968 800EA5A8 C420BF58 */  lwc1       $f0, %lo(D_race_800CBF58)($at)
/* A096C 800EA5AC 3C01800D */  lui        $at, %hi(D_race_800CBF5C)
/* A0970 800EA5B0 C422BF5C */  lwc1       $f2, %lo(D_race_800CBF5C)($at)
/* A0974 800EA5B4 E440002C */  swc1       $f0, 0x2C($v0)
/* A0978 800EA5B8 E4420030 */  swc1       $f2, 0x30($v0)
/* A097C 800EA5BC 8E030050 */  lw         $v1, 0x50($s0)
/* A0980 800EA5C0 8C620034 */  lw         $v0, 0x34($v1)
/* A0984 800EA5C4 24050001 */  addiu      $a1, $zero, 0x1
/* A0988 800EA5C8 84440010 */  lh         $a0, 0x10($v0)
/* A098C 800EA5CC 8C420014 */  lw         $v0, 0x14($v0)
/* A0990 800EA5D0 0040F809 */  jalr       $v0
/* A0994 800EA5D4 00642021 */   addu      $a0, $v1, $a0
.Lrace_800EA5D8:
/* A0998 800EA5D8 24020002 */  addiu      $v0, $zero, 0x2
/* A099C 800EA5DC AE02000C */  sw         $v0, 0xC($s0)
/* A09A0 800EA5E0 8FBF002C */  lw         $ra, 0x2C($sp)
/* A09A4 800EA5E4 8FB00028 */  lw         $s0, 0x28($sp)
/* A09A8 800EA5E8 03E00008 */  jr         $ra
/* A09AC 800EA5EC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800EA5F0
/* A09B0 800EA5F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A09B4 800EA5F4 AFB00010 */  sw         $s0, 0x10($sp)
/* A09B8 800EA5F8 00808021 */  addu       $s0, $a0, $zero
/* A09BC 800EA5FC AFBF0014 */  sw         $ra, 0x14($sp)
/* A09C0 800EA600 8E05004C */  lw         $a1, 0x4C($s0)
/* A09C4 800EA604 10A00005 */  beqz       $a1, .Lrace_800EA61C
/* A09C8 800EA608 00000000 */   nop
/* A09CC 800EA60C 8E040048 */  lw         $a0, 0x48($s0)
/* A09D0 800EA610 0C01088C */  jal        func_80042230
/* A09D4 800EA614 00000000 */   nop
/* A09D8 800EA618 AE00004C */  sw         $zero, 0x4C($s0)
.Lrace_800EA61C:
/* A09DC 800EA61C 8E020044 */  lw         $v0, 0x44($s0)
/* A09E0 800EA620 10400003 */  beqz       $v0, .Lrace_800EA630
/* A09E4 800EA624 00000000 */   nop
/* A09E8 800EA628 AC400024 */  sw         $zero, 0x24($v0)
/* A09EC 800EA62C AE000044 */  sw         $zero, 0x44($s0)
.Lrace_800EA630:
/* A09F0 800EA630 8E050050 */  lw         $a1, 0x50($s0)
/* A09F4 800EA634 10A00006 */  beqz       $a1, .Lrace_800EA650
/* A09F8 800EA638 24020001 */   addiu     $v0, $zero, 0x1
/* A09FC 800EA63C 8E040054 */  lw         $a0, 0x54($s0)
/* A0A00 800EA640 0C046564 */  jal        func_race_80119590
/* A0A04 800EA644 00000000 */   nop
/* A0A08 800EA648 AE000050 */  sw         $zero, 0x50($s0)
/* A0A0C 800EA64C 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800EA650:
/* A0A10 800EA650 AE02000C */  sw         $v0, 0xC($s0)
/* A0A14 800EA654 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0A18 800EA658 8FB00010 */  lw         $s0, 0x10($sp)
/* A0A1C 800EA65C 03E00008 */  jr         $ra
/* A0A20 800EA660 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EA664
/* A0A24 800EA664 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* A0A28 800EA668 AFB30094 */  sw         $s3, 0x94($sp)
/* A0A2C 800EA66C 00809821 */  addu       $s3, $a0, $zero
/* A0A30 800EA670 AFBF00AC */  sw         $ra, 0xAC($sp)
/* A0A34 800EA674 AFBE00A8 */  sw         $fp, 0xA8($sp)
/* A0A38 800EA678 AFB700A4 */  sw         $s7, 0xA4($sp)
/* A0A3C 800EA67C AFB600A0 */  sw         $s6, 0xA0($sp)
/* A0A40 800EA680 AFB5009C */  sw         $s5, 0x9C($sp)
/* A0A44 800EA684 AFB40098 */  sw         $s4, 0x98($sp)
/* A0A48 800EA688 AFB20090 */  sw         $s2, 0x90($sp)
/* A0A4C 800EA68C AFB1008C */  sw         $s1, 0x8C($sp)
/* A0A50 800EA690 AFB00088 */  sw         $s0, 0x88($sp)
/* A0A54 800EA694 F7B600B8 */  sdc1       $f22, 0xB8($sp)
/* A0A58 800EA698 F7B400B0 */  sdc1       $f20, 0xB0($sp)
/* A0A5C 800EA69C AFA500C4 */  sw         $a1, 0xC4($sp)
/* A0A60 800EA6A0 8E62006C */  lw         $v0, 0x6C($s3)
/* A0A64 800EA6A4 8E63000C */  lw         $v1, 0xC($s3)
/* A0A68 800EA6A8 00451021 */  addu       $v0, $v0, $a1
/* A0A6C 800EA6AC AE62006C */  sw         $v0, 0x6C($s3)
/* A0A70 800EA6B0 24020001 */  addiu      $v0, $zero, 0x1
/* A0A74 800EA6B4 106200F9 */  beq        $v1, $v0, .Lrace_800EAA9C
/* A0A78 800EA6B8 00000000 */   nop
/* A0A7C 800EA6BC 8E620038 */  lw         $v0, 0x38($s3)
/* A0A80 800EA6C0 8C460024 */  lw         $a2, 0x24($v0)
/* A0A84 800EA6C4 C44000B4 */  lwc1       $f0, 0xB4($v0)
/* A0A88 800EA6C8 C44200B8 */  lwc1       $f2, 0xB8($v0)
/* A0A8C 800EA6CC 8C430078 */  lw         $v1, 0x78($v0)
/* A0A90 800EA6D0 46020003 */  div.s      $f0, $f0, $f2
/* A0A94 800EA6D4 84C400B8 */  lh         $a0, 0xB8($a2)
/* A0A98 800EA6D8 4600018D */  trunc.w.s  $f6, $f0
/* A0A9C 800EA6DC E7A60080 */  swc1       $f6, 0x80($sp)
/* A0AA0 800EA6E0 C4620034 */  lwc1       $f2, 0x34($v1)
/* A0AA4 800EA6E4 C4400058 */  lwc1       $f0, 0x58($v0)
/* A0AA8 800EA6E8 00442021 */  addu       $a0, $v0, $a0
/* A0AAC 800EA6EC 8CC200BC */  lw         $v0, 0xBC($a2)
/* A0AB0 800EA6F0 46020502 */  mul.s      $f20, $f0, $f2
/* A0AB4 800EA6F4 0040F809 */  jalr       $v0
/* A0AB8 800EA6F8 00002821 */   addu      $a1, $zero, $zero
/* A0ABC 800EA6FC 8C430008 */  lw         $v1, 0x8($v0)
/* A0AC0 800EA700 24050001 */  addiu      $a1, $zero, 0x1
/* A0AC4 800EA704 84640038 */  lh         $a0, 0x38($v1)
/* A0AC8 800EA708 8C63003C */  lw         $v1, 0x3C($v1)
/* A0ACC 800EA70C 0060F809 */  jalr       $v1
/* A0AD0 800EA710 00442021 */   addu      $a0, $v0, $a0
/* A0AD4 800EA714 02602021 */  addu       $a0, $s3, $zero
/* A0AD8 800EA718 8FA500C4 */  lw         $a1, 0xC4($sp)
/* A0ADC 800EA71C 0C03A1C4 */  jal        func_race_800E8710
/* A0AE0 800EA720 00408021 */   addu      $s0, $v0, $zero
/* A0AE4 800EA724 27B10070 */  addiu      $s1, $sp, 0x70
/* A0AE8 800EA728 8E02000C */  lw         $v0, 0xC($s0)
/* A0AEC 800EA72C 02202821 */  addu       $a1, $s1, $zero
/* A0AF0 800EA730 84440088 */  lh         $a0, 0x88($v0)
/* A0AF4 800EA734 8C42008C */  lw         $v0, 0x8C($v0)
/* A0AF8 800EA738 0040F809 */  jalr       $v0
/* A0AFC 800EA73C 02042021 */   addu      $a0, $s0, $a0
/* A0B00 800EA740 C7A40070 */  lwc1       $f4, 0x70($sp)
/* A0B04 800EA744 46142102 */  mul.s      $f4, $f4, $f20
/* A0B08 800EA748 C7A20074 */  lwc1       $f2, 0x74($sp)
/* A0B0C 800EA74C 46141082 */  mul.s      $f2, $f2, $f20
/* A0B10 800EA750 C7A00078 */  lwc1       $f0, 0x78($sp)
/* A0B14 800EA754 46140002 */  mul.s      $f0, $f0, $f20
/* A0B18 800EA758 02202821 */  addu       $a1, $s1, $zero
/* A0B1C 800EA75C E7A40070 */  swc1       $f4, 0x70($sp)
/* A0B20 800EA760 E7A20074 */  swc1       $f2, 0x74($sp)
/* A0B24 800EA764 E7A00078 */  swc1       $f0, 0x78($sp)
/* A0B28 800EA768 8E630038 */  lw         $v1, 0x38($s3)
/* A0B2C 800EA76C 27B00060 */  addiu      $s0, $sp, 0x60
/* A0B30 800EA770 8C620024 */  lw         $v0, 0x24($v1)
/* A0B34 800EA774 02003021 */  addu       $a2, $s0, $zero
/* A0B38 800EA778 84440060 */  lh         $a0, 0x60($v0)
/* A0B3C 800EA77C 8C420064 */  lw         $v0, 0x64($v0)
/* A0B40 800EA780 0040F809 */  jalr       $v0
/* A0B44 800EA784 00642021 */   addu      $a0, $v1, $a0
/* A0B48 800EA788 26640010 */  addiu      $a0, $s3, 0x10
/* A0B4C 800EA78C 0C0165D9 */  jal        func_80059764
/* A0B50 800EA790 02002821 */   addu      $a1, $s0, $zero
/* A0B54 800EA794 8E62004C */  lw         $v0, 0x4C($s3)
/* A0B58 800EA798 14400009 */  bnez       $v0, .Lrace_800EA7C0
/* A0B5C 800EA79C 3C05800D */   lui       $a1, %hi(D_race_800CBF60)
/* A0B60 800EA7A0 24A5BF60 */  addiu      $a1, $a1, %lo(D_race_800CBF60)
/* A0B64 800EA7A4 00003021 */  addu       $a2, $zero, $zero
/* A0B68 800EA7A8 AFA00010 */  sw         $zero, 0x10($sp)
/* A0B6C 800EA7AC 8E640048 */  lw         $a0, 0x48($s3)
/* A0B70 800EA7B0 0C0107DD */  jal        func_80041F74
/* A0B74 800EA7B4 00C03821 */   addu      $a3, $a2, $zero
/* A0B78 800EA7B8 1040000F */  beqz       $v0, .Lrace_800EA7F8
/* A0B7C 800EA7BC AE62004C */   sw        $v0, 0x4C($s3)
.Lrace_800EA7C0:
/* A0B80 800EA7C0 C7A00068 */  lwc1       $f0, 0x68($sp)
/* A0B84 800EA7C4 3C01800D */  lui        $at, %hi(D_race_800CBF68)
/* A0B88 800EA7C8 C436BF68 */  lwc1       $f22, %lo(D_race_800CBF68)($at)
/* A0B8C 800EA7CC 46160001 */  sub.s      $f0, $f0, $f22
/* A0B90 800EA7D0 E7A00068 */  swc1       $f0, 0x68($sp)
/* A0B94 800EA7D4 8E62004C */  lw         $v0, 0x4C($s3)
/* A0B98 800EA7D8 8C440000 */  lw         $a0, 0x0($v0)
/* A0B9C 800EA7DC 10800003 */  beqz       $a0, .Lrace_800EA7EC
/* A0BA0 800EA7E0 00000000 */   nop
/* A0BA4 800EA7E4 0C01058D */  jal        func_80041634
/* A0BA8 800EA7E8 02002821 */   addu      $a1, $s0, $zero
.Lrace_800EA7EC:
/* A0BAC 800EA7EC C7A00068 */  lwc1       $f0, 0x68($sp)
/* A0BB0 800EA7F0 46160000 */  add.s      $f0, $f0, $f22
/* A0BB4 800EA7F4 E7A00068 */  swc1       $f0, 0x68($sp)
.Lrace_800EA7F8:
/* A0BB8 800EA7F8 8E62006C */  lw         $v0, 0x6C($s3)
/* A0BBC 800EA7FC 2C420FA1 */  sltiu      $v0, $v0, 0xFA1
/* A0BC0 800EA800 14400016 */  bnez       $v0, .Lrace_800EA85C
/* A0BC4 800EA804 0000B021 */   addu      $s6, $zero, $zero
/* A0BC8 800EA808 27B00070 */  addiu      $s0, $sp, 0x70
/* A0BCC 800EA80C 02002821 */  addu       $a1, $s0, $zero
/* A0BD0 800EA810 8E640058 */  lw         $a0, 0x58($s3)
/* A0BD4 800EA814 3C074561 */  lui        $a3, (0x45610000 >> 16)
/* A0BD8 800EA818 00003021 */  addu       $a2, $zero, $zero
/* A0BDC 800EA81C 0C0445F0 */  jal        func_race_801117C0
/* A0BE0 800EA820 AE60006C */   sw        $zero, 0x6C($s3)
/* A0BE4 800EA824 1040000C */  beqz       $v0, .Lrace_800EA858
/* A0BE8 800EA828 24050BC5 */   addiu     $a1, $zero, 0xBC5
/* A0BEC 800EA82C 3C074348 */  lui        $a3, (0x43480000 >> 16)
/* A0BF0 800EA830 3C01800D */  lui        $at, %hi(D_race_800CBF6C)
/* A0BF4 800EA834 C422BF6C */  lwc1       $f2, %lo(D_race_800CBF6C)($at)
/* A0BF8 800EA838 3C01800D */  lui        $at, %hi(D_race_800CBF70)
/* A0BFC 800EA83C C420BF70 */  lwc1       $f0, %lo(D_race_800CBF70)($at)
/* A0C00 800EA840 E7A20010 */  swc1       $f2, 0x10($sp)
/* A0C04 800EA844 E7A00014 */  swc1       $f0, 0x14($sp)
/* A0C08 800EA848 E7A00018 */  swc1       $f0, 0x18($sp)
/* A0C0C 800EA84C 8E640054 */  lw         $a0, 0x54($s3)
/* A0C10 800EA850 0C046530 */  jal        func_race_801194C0
/* A0C14 800EA854 02003021 */   addu      $a2, $s0, $zero
.Lrace_800EA858:
/* A0C18 800EA858 0000B021 */  addu       $s6, $zero, $zero
.Lrace_800EA85C:
/* A0C1C 800EA85C 27BE0050 */  addiu      $fp, $sp, 0x50
/* A0C20 800EA860 27B70070 */  addiu      $s7, $sp, 0x70
/* A0C24 800EA864 24150070 */  addiu      $s5, $zero, 0x70
/* A0C28 800EA868 0260A021 */  addu       $s4, $s3, $zero
/* A0C2C 800EA86C 24120064 */  addiu      $s2, $zero, 0x64
/* A0C30 800EA870 2EC20003 */  sltiu      $v0, $s6, 0x3
.Lrace_800EA874:
/* A0C34 800EA874 10400037 */  beqz       $v0, .Lrace_800EA954
/* A0C38 800EA878 00000000 */   nop
/* A0C3C 800EA87C 8FA90080 */  lw         $t1, 0x80($sp)
/* A0C40 800EA880 0249102B */  sltu       $v0, $s2, $t1
/* A0C44 800EA884 14400005 */  bnez       $v0, .Lrace_800EA89C
/* A0C48 800EA888 01328023 */   subu      $s0, $t1, $s2
/* A0C4C 800EA88C 8E620060 */  lw         $v0, 0x60($s3)
/* A0C50 800EA890 8FAA0080 */  lw         $t2, 0x80($sp)
/* A0C54 800EA894 004A1021 */  addu       $v0, $v0, $t2
/* A0C58 800EA898 00528023 */  subu       $s0, $v0, $s2
.Lrace_800EA89C:
/* A0C5C 800EA89C 00002821 */  addu       $a1, $zero, $zero
/* A0C60 800EA8A0 24060001 */  addiu      $a2, $zero, 0x1
/* A0C64 800EA8A4 AFB00010 */  sw         $s0, 0x10($sp)
/* A0C68 800EA8A8 AFBE0014 */  sw         $fp, 0x14($sp)
/* A0C6C 800EA8AC 8E640038 */  lw         $a0, 0x38($s3)
/* A0C70 800EA8B0 0C0199F8 */  jal        func_800667E0
/* A0C74 800EA8B4 00A03821 */   addu      $a3, $a1, $zero
/* A0C78 800EA8B8 00002821 */  addu       $a1, $zero, $zero
/* A0C7C 800EA8BC 24060001 */  addiu      $a2, $zero, 0x1
/* A0C80 800EA8C0 AFB00010 */  sw         $s0, 0x10($sp)
/* A0C84 800EA8C4 AFB70014 */  sw         $s7, 0x14($sp)
/* A0C88 800EA8C8 8E640038 */  lw         $a0, 0x38($s3)
/* A0C8C 800EA8CC 0C0199DA */  jal        func_80066768
/* A0C90 800EA8D0 00A03821 */   addu      $a3, $a1, $zero
/* A0C94 800EA8D4 03C02021 */  addu       $a0, $fp, $zero
/* A0C98 800EA8D8 0C001055 */  jal        func_80004154
/* A0C9C 800EA8DC 27A50020 */   addiu     $a1, $sp, 0x20
/* A0CA0 800EA8E0 27A50020 */  addiu      $a1, $sp, 0x20
/* A0CA4 800EA8E4 26900070 */  addiu      $s0, $s4, 0x70
/* A0CA8 800EA8E8 8E020024 */  lw         $v0, 0x24($s0)
/* A0CAC 800EA8EC 02758821 */  addu       $s1, $s3, $s5
/* A0CB0 800EA8F0 84440098 */  lh         $a0, 0x98($v0)
/* A0CB4 800EA8F4 8C42009C */  lw         $v0, 0x9C($v0)
/* A0CB8 800EA8F8 0040F809 */  jalr       $v0
/* A0CBC 800EA8FC 02242021 */   addu      $a0, $s1, $a0
/* A0CC0 800EA900 C7A40070 */  lwc1       $f4, 0x70($sp)
/* A0CC4 800EA904 46142102 */  mul.s      $f4, $f4, $f20
/* A0CC8 800EA908 C7A20074 */  lwc1       $f2, 0x74($sp)
/* A0CCC 800EA90C 46141082 */  mul.s      $f2, $f2, $f20
/* A0CD0 800EA910 26940090 */  addiu      $s4, $s4, 0x90
/* A0CD4 800EA914 C7A00078 */  lwc1       $f0, 0x78($sp)
/* A0CD8 800EA918 26520064 */  addiu      $s2, $s2, 0x64
/* A0CDC 800EA91C 46140002 */  mul.s      $f0, $f0, $f20
/* A0CE0 800EA920 26D60001 */  addiu      $s6, $s6, 0x1
/* A0CE4 800EA924 26B50090 */  addiu      $s5, $s5, 0x90
/* A0CE8 800EA928 E7A40070 */  swc1       $f4, 0x70($sp)
/* A0CEC 800EA92C E7A20074 */  swc1       $f2, 0x74($sp)
/* A0CF0 800EA930 E7A00078 */  swc1       $f0, 0x78($sp)
/* A0CF4 800EA934 8E020024 */  lw         $v0, 0x24($s0)
/* A0CF8 800EA938 02E02821 */  addu       $a1, $s7, $zero
/* A0CFC 800EA93C 84440018 */  lh         $a0, 0x18($v0)
/* A0D00 800EA940 8C42001C */  lw         $v0, 0x1C($v0)
/* A0D04 800EA944 0040F809 */  jalr       $v0
/* A0D08 800EA948 02242021 */   addu      $a0, $s1, $a0
/* A0D0C 800EA94C 0803AA1D */  j          .Lrace_800EA874
/* A0D10 800EA950 2EC20003 */   sltiu     $v0, $s6, 0x3
.Lrace_800EA954:
/* A0D14 800EA954 8E620050 */  lw         $v0, 0x50($s3)
/* A0D18 800EA958 10400050 */  beqz       $v0, .Lrace_800EAA9C
/* A0D1C 800EA95C 27A50070 */   addiu     $a1, $sp, 0x70
/* A0D20 800EA960 8E630038 */  lw         $v1, 0x38($s3)
/* A0D24 800EA964 8C620024 */  lw         $v0, 0x24($v1)
/* A0D28 800EA968 27A60060 */  addiu      $a2, $sp, 0x60
/* A0D2C 800EA96C 84440060 */  lh         $a0, 0x60($v0)
/* A0D30 800EA970 8C420064 */  lw         $v0, 0x64($v0)
/* A0D34 800EA974 0040F809 */  jalr       $v0
/* A0D38 800EA978 00642021 */   addu      $a0, $v1, $a0
/* A0D3C 800EA97C 8E620050 */  lw         $v0, 0x50($s3)
/* A0D40 800EA980 8FAB0060 */  lw         $t3, 0x60($sp)
/* A0D44 800EA984 8FA80064 */  lw         $t0, 0x64($sp)
/* A0D48 800EA988 8FA90068 */  lw         $t1, 0x68($sp)
/* A0D4C 800EA98C AC4B0014 */  sw         $t3, 0x14($v0)
/* A0D50 800EA990 AC480018 */  sw         $t0, 0x18($v0)
/* A0D54 800EA994 AC49001C */  sw         $t1, 0x1C($v0)
/* A0D58 800EA998 8E620064 */  lw         $v0, 0x64($s3)
/* A0D5C 800EA99C 8FAB00C4 */  lw         $t3, 0xC4($sp)
/* A0D60 800EA9A0 004B1021 */  addu       $v0, $v0, $t3
/* A0D64 800EA9A4 AE620064 */  sw         $v0, 0x64($s3)
/* A0D68 800EA9A8 2C4201F4 */  sltiu      $v0, $v0, 0x1F4
/* A0D6C 800EA9AC 14400020 */  bnez       $v0, .Lrace_800EAA30
/* A0D70 800EA9B0 3C078003 */   lui       $a3, %hi(D_8002FAB0)
/* A0D74 800EA9B4 3C0651EB */  lui        $a2, (0x51EB851F >> 16)
/* A0D78 800EA9B8 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* A0D7C 800EA9BC 8CE5FAB0 */  lw         $a1, %lo(D_8002FAB0)($a3)
/* A0D80 800EA9C0 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* A0D84 800EA9C4 AE600064 */  sw         $zero, 0x64($s3)
/* A0D88 800EA9C8 24A50001 */  addiu      $a1, $a1, 0x1
/* A0D8C 800EA9CC 30A503FF */  andi       $a1, $a1, 0x3FF
/* A0D90 800EA9D0 00051040 */  sll        $v0, $a1, 1
/* A0D94 800EA9D4 00431021 */  addu       $v0, $v0, $v1
/* A0D98 800EA9D8 94440000 */  lhu        $a0, 0x0($v0)
/* A0D9C 800EA9DC 34C6851F */  ori        $a2, $a2, (0x51EB851F & 0xFFFF)
/* A0DA0 800EA9E0 00860019 */  multu      $a0, $a2
/* A0DA4 800EA9E4 3C01800D */  lui        $at, %hi(D_race_800CBF74)
/* A0DA8 800EA9E8 C422BF74 */  lwc1       $f2, %lo(D_race_800CBF74)($at)
/* A0DAC 800EA9EC 00004010 */  mfhi       $t0
/* A0DB0 800EA9F0 00081942 */  srl        $v1, $t0, 5
/* A0DB4 800EA9F4 00031040 */  sll        $v0, $v1, 1
/* A0DB8 800EA9F8 00431021 */  addu       $v0, $v0, $v1
/* A0DBC 800EA9FC 000210C0 */  sll        $v0, $v0, 3
/* A0DC0 800EAA00 00431021 */  addu       $v0, $v0, $v1
/* A0DC4 800EAA04 00021080 */  sll        $v0, $v0, 2
/* A0DC8 800EAA08 00822023 */  subu       $a0, $a0, $v0
/* A0DCC 800EAA0C 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* A0DD0 800EAA10 44840000 */  mtc1       $a0, $f0
/* A0DD4 800EAA14 46800020 */  cvt.s.w    $f0, $f0
/* A0DD8 800EAA18 46020002 */  mul.s      $f0, $f0, $f2
/* A0DDC 800EAA1C 3C01800D */  lui        $at, %hi(D_race_800CBF78)
/* A0DE0 800EAA20 C422BF78 */  lwc1       $f2, %lo(D_race_800CBF78)($at)
/* A0DE4 800EAA24 46020002 */  mul.s      $f0, $f0, $f2
/* A0DE8 800EAA28 ACE5FAB0 */  sw         $a1, %lo(D_8002FAB0)($a3)
/* A0DEC 800EAA2C E6600068 */  swc1       $f0, 0x68($s3)
.Lrace_800EAA30:
/* A0DF0 800EAA30 C6600064 */  lwc1       $f0, 0x64($s3)
/* A0DF4 800EAA34 46800020 */  cvt.s.w    $f0, $f0
/* A0DF8 800EAA38 3C01800D */  lui        $at, %hi(D_race_800CBF7C)
/* A0DFC 800EAA3C C422BF7C */  lwc1       $f2, %lo(D_race_800CBF7C)($at)
/* A0E00 800EAA40 3C01800D */  lui        $at, %hi(D_race_800CBF80)
/* A0E04 800EAA44 C424BF80 */  lwc1       $f4, %lo(D_race_800CBF80)($at)
/* A0E08 800EAA48 46020003 */  div.s      $f0, $f0, $f2
/* A0E0C 800EAA4C 46040002 */  mul.s      $f0, $f0, $f4
/* A0E10 800EAA50 3C01800D */  lui        $at, %hi(D_race_800CBF84)
/* A0E14 800EAA54 C422BF84 */  lwc1       $f2, %lo(D_race_800CBF84)($at)
/* A0E18 800EAA58 46020002 */  mul.s      $f0, $f0, $f2
/* A0E1C 800EAA5C 3C038003 */  lui        $v1, %hi(D_8002D2B0)
/* A0E20 800EAA60 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* A0E24 800EAA64 4600018D */  trunc.w.s  $f6, $f0
/* A0E28 800EAA68 44023000 */  mfc1       $v0, $f6
/* A0E2C 800EAA6C 2442FF00 */  addiu      $v0, $v0, -0x100
/* A0E30 800EAA70 304203FF */  andi       $v0, $v0, 0x3FF
/* A0E34 800EAA74 00021080 */  sll        $v0, $v0, 2
/* A0E38 800EAA78 00431021 */  addu       $v0, $v0, $v1
/* A0E3C 800EAA7C C4420000 */  lwc1       $f2, 0x0($v0)
/* A0E40 800EAA80 C6600068 */  lwc1       $f0, 0x68($s3)
/* A0E44 800EAA84 46001082 */  mul.s      $f2, $f2, $f0
/* A0E48 800EAA88 3C01800D */  lui        $at, %hi(D_race_800CBF88)
/* A0E4C 800EAA8C C420BF88 */  lwc1       $f0, %lo(D_race_800CBF88)($at)
/* A0E50 800EAA90 46020001 */  sub.s      $f0, $f0, $f2
/* A0E54 800EAA94 8E620050 */  lw         $v0, 0x50($s3)
/* A0E58 800EAA98 E4400004 */  swc1       $f0, 0x4($v0)
.Lrace_800EAA9C:
/* A0E5C 800EAA9C 8FBF00AC */  lw         $ra, 0xAC($sp)
/* A0E60 800EAAA0 8FBE00A8 */  lw         $fp, 0xA8($sp)
/* A0E64 800EAAA4 8FB700A4 */  lw         $s7, 0xA4($sp)
/* A0E68 800EAAA8 8FB600A0 */  lw         $s6, 0xA0($sp)
/* A0E6C 800EAAAC 8FB5009C */  lw         $s5, 0x9C($sp)
/* A0E70 800EAAB0 8FB40098 */  lw         $s4, 0x98($sp)
/* A0E74 800EAAB4 8FB30094 */  lw         $s3, 0x94($sp)
/* A0E78 800EAAB8 8FB20090 */  lw         $s2, 0x90($sp)
/* A0E7C 800EAABC 8FB1008C */  lw         $s1, 0x8C($sp)
/* A0E80 800EAAC0 8FB00088 */  lw         $s0, 0x88($sp)
/* A0E84 800EAAC4 D7B600B8 */  ldc1       $f22, 0xB8($sp)
/* A0E88 800EAAC8 D7B400B0 */  ldc1       $f20, 0xB0($sp)
/* A0E8C 800EAACC 03E00008 */  jr         $ra
/* A0E90 800EAAD0 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_race_800EAAD4
/* A0E94 800EAAD4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* A0E98 800EAAD8 AFBF005C */  sw         $ra, 0x5C($sp)
/* A0E9C 800EAADC AFB20058 */  sw         $s2, 0x58($sp)
/* A0EA0 800EAAE0 AFB10054 */  sw         $s1, 0x54($sp)
/* A0EA4 800EAAE4 AFB00050 */  sw         $s0, 0x50($sp)
/* A0EA8 800EAAE8 F7B60068 */  sdc1       $f22, 0x68($sp)
/* A0EAC 800EAAEC F7B40060 */  sdc1       $f20, 0x60($sp)
/* A0EB0 800EAAF0 8CB10014 */  lw         $s1, 0x14($a1)
/* A0EB4 800EAAF4 00809021 */  addu       $s2, $a0, $zero
/* A0EB8 800EAAF8 263003FC */  addiu      $s0, $s1, 0x3FC
/* A0EBC 800EAAFC 8E0206AC */  lw         $v0, 0x6AC($s0)
/* A0EC0 800EAB00 30420002 */  andi       $v0, $v0, 0x2
/* A0EC4 800EAB04 1440000A */  bnez       $v0, .Lrace_800EAB30
/* A0EC8 800EAB08 00001821 */   addu      $v1, $zero, $zero
/* A0ECC 800EAB0C C602061C */  lwc1       $f2, 0x61C($s0)
/* A0ED0 800EAB10 44800000 */  mtc1       $zero, $f0
/* A0ED4 800EAB14 46001032 */  c.eq.s     $f2, $f0
/* A0ED8 800EAB18 00000000 */  nop
/* A0EDC 800EAB1C 45010004 */  bc1t       .Lrace_800EAB30
/* A0EE0 800EAB20 00000000 */   nop
/* A0EE4 800EAB24 8E220D04 */  lw         $v0, 0xD04($s1)
/* A0EE8 800EAB28 30420001 */  andi       $v0, $v0, 0x1
/* A0EEC 800EAB2C 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_800EAB30:
/* A0EF0 800EAB30 10600041 */  beqz       $v1, .Lrace_800EAC38
/* A0EF4 800EAB34 00000000 */   nop
/* A0EF8 800EAB38 3C01800D */  lui        $at, %hi(D_race_800CBF8C)
/* A0EFC 800EAB3C C436BF8C */  lwc1       $f22, %lo(D_race_800CBF8C)($at)
/* A0F00 800EAB40 3C063C23 */  lui        $a2, (0x3C23D70A >> 16)
/* A0F04 800EAB44 34C6D70A */  ori        $a2, $a2, (0x3C23D70A & 0xFFFF)
/* A0F08 800EAB48 4480A000 */  mtc1       $zero, $f20
/* A0F0C 800EAB4C 8E0200CC */  lw         $v0, 0xCC($s0)
/* A0F10 800EAB50 4405B000 */  mfc1       $a1, $f22
/* A0F14 800EAB54 4407A000 */  mfc1       $a3, $f20
/* A0F18 800EAB58 84440050 */  lh         $a0, 0x50($v0)
/* A0F1C 800EAB5C 8C420054 */  lw         $v0, 0x54($v0)
/* A0F20 800EAB60 0040F809 */  jalr       $v0
/* A0F24 800EAB64 02042021 */   addu      $a0, $s0, $a0
/* A0F28 800EAB68 0C04355D */  jal        func_race_8010D574
/* A0F2C 800EAB6C 02202021 */   addu      $a0, $s1, $zero
/* A0F30 800EAB70 27A20020 */  addiu      $v0, $sp, 0x20
/* A0F34 800EAB74 E7B40020 */  swc1       $f20, 0x20($sp)
/* A0F38 800EAB78 E4540004 */  swc1       $f20, 0x4($v0)
/* A0F3C 800EAB7C E4560008 */  swc1       $f22, 0x8($v0)
/* A0F40 800EAB80 E7B40030 */  swc1       $f20, 0x30($sp)
/* A0F44 800EAB84 E7B40034 */  swc1       $f20, 0x34($sp)
/* A0F48 800EAB88 E7B40038 */  swc1       $f20, 0x38($sp)
/* A0F4C 800EAB8C E6140004 */  swc1       $f20, 0x4($s0)
/* A0F50 800EAB90 C7A00034 */  lwc1       $f0, 0x34($sp)
/* A0F54 800EAB94 3C01800D */  lui        $at, %hi(D_race_800CBF90)
/* A0F58 800EAB98 C422BF90 */  lwc1       $f2, %lo(D_race_800CBF90)($at)
/* A0F5C 800EAB9C E6000008 */  swc1       $f0, 0x8($s0)
/* A0F60 800EABA0 C7A00038 */  lwc1       $f0, 0x38($sp)
/* A0F64 800EABA4 E600000C */  swc1       $f0, 0xC($s0)
/* A0F68 800EABA8 C7A00020 */  lwc1       $f0, 0x20($sp)
/* A0F6C 800EABAC 46020002 */  mul.s      $f0, $f0, $f2
/* A0F70 800EABB0 E7A00030 */  swc1       $f0, 0x30($sp)
/* A0F74 800EABB4 C4400004 */  lwc1       $f0, 0x4($v0)
/* A0F78 800EABB8 46020002 */  mul.s      $f0, $f0, $f2
/* A0F7C 800EABBC E7A00034 */  swc1       $f0, 0x34($sp)
/* A0F80 800EABC0 C4400008 */  lwc1       $f0, 0x8($v0)
/* A0F84 800EABC4 46020002 */  mul.s      $f0, $f0, $f2
/* A0F88 800EABC8 27A50030 */  addiu      $a1, $sp, 0x30
/* A0F8C 800EABCC E7A00038 */  swc1       $f0, 0x38($sp)
/* A0F90 800EABD0 8E0200CC */  lw         $v0, 0xCC($s0)
/* A0F94 800EABD4 00A03021 */  addu       $a2, $a1, $zero
/* A0F98 800EABD8 84440048 */  lh         $a0, 0x48($v0)
/* A0F9C 800EABDC 8C42004C */  lw         $v0, 0x4C($v0)
/* A0FA0 800EABE0 0040F809 */  jalr       $v0
/* A0FA4 800EABE4 02042021 */   addu      $a0, $s0, $a0
/* A0FA8 800EABE8 02202021 */  addu       $a0, $s1, $zero
/* A0FAC 800EABEC 0C04339E */  jal        func_race_8010CE78
/* A0FB0 800EABF0 00002821 */   addu      $a1, $zero, $zero
/* A0FB4 800EABF4 8E23005C */  lw         $v1, 0x5C($s1)
/* A0FB8 800EABF8 8C620024 */  lw         $v0, 0x24($v1)
/* A0FBC 800EABFC 27A50040 */  addiu      $a1, $sp, 0x40
/* A0FC0 800EAC00 84440010 */  lh         $a0, 0x10($v0)
/* A0FC4 800EAC04 8C420014 */  lw         $v0, 0x14($v0)
/* A0FC8 800EAC08 0040F809 */  jalr       $v0
/* A0FCC 800EAC0C 00642021 */   addu      $a0, $v1, $a0
/* A0FD0 800EAC10 3C074348 */  lui        $a3, (0x43480000 >> 16)
/* A0FD4 800EAC14 3C01800D */  lui        $at, %hi(D_race_800CBF94)
/* A0FD8 800EAC18 C420BF94 */  lwc1       $f0, %lo(D_race_800CBF94)($at)
/* A0FDC 800EAC1C 24050BC7 */  addiu      $a1, $zero, 0xBC7
/* A0FE0 800EAC20 E7B60014 */  swc1       $f22, 0x14($sp)
/* A0FE4 800EAC24 E7B60018 */  swc1       $f22, 0x18($sp)
/* A0FE8 800EAC28 E7A00010 */  swc1       $f0, 0x10($sp)
/* A0FEC 800EAC2C 8E440054 */  lw         $a0, 0x54($s2)
/* A0FF0 800EAC30 0C046530 */  jal        func_race_801194C0
/* A0FF4 800EAC34 27A60040 */   addiu     $a2, $sp, 0x40
.Lrace_800EAC38:
/* A0FF8 800EAC38 8FBF005C */  lw         $ra, 0x5C($sp)
/* A0FFC 800EAC3C 8FB20058 */  lw         $s2, 0x58($sp)
/* A1000 800EAC40 8FB10054 */  lw         $s1, 0x54($sp)
/* A1004 800EAC44 8FB00050 */  lw         $s0, 0x50($sp)
/* A1008 800EAC48 D7B60068 */  ldc1       $f22, 0x68($sp)
/* A100C 800EAC4C D7B40060 */  ldc1       $f20, 0x60($sp)
/* A1010 800EAC50 03E00008 */  jr         $ra
/* A1014 800EAC54 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_800EAC58
/* A1018 800EAC58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A101C 800EAC5C AFB40020 */  sw         $s4, 0x20($sp)
/* A1020 800EAC60 0080A021 */  addu       $s4, $a0, $zero
/* A1024 800EAC64 AFB3001C */  sw         $s3, 0x1C($sp)
/* A1028 800EAC68 AFBF0024 */  sw         $ra, 0x24($sp)
/* A102C 800EAC6C AFB20018 */  sw         $s2, 0x18($sp)
/* A1030 800EAC70 AFB10014 */  sw         $s1, 0x14($sp)
/* A1034 800EAC74 AFB00010 */  sw         $s0, 0x10($sp)
/* A1038 800EAC78 8E83000C */  lw         $v1, 0xC($s4)
/* A103C 800EAC7C 24020001 */  addiu      $v0, $zero, 0x1
/* A1040 800EAC80 1062001B */  beq        $v1, $v0, .Lrace_800EACF0
/* A1044 800EAC84 00A09821 */   addu      $s3, $a1, $zero
/* A1048 800EAC88 2412002A */  addiu      $s2, $zero, 0x2A
/* A104C 800EAC8C 24110002 */  addiu      $s1, $zero, 0x2
/* A1050 800EAC90 24100190 */  addiu      $s0, $zero, 0x190
/* A1054 800EAC94 02402821 */  addu       $a1, $s2, $zero
.Lrace_800EAC98:
/* A1058 800EAC98 2652002A */  addiu      $s2, $s2, 0x2A
/* A105C 800EAC9C 2631FFFF */  addiu      $s1, $s1, -0x1
/* A1060 800EACA0 8E62012C */  lw         $v0, 0x12C($s3)
/* A1064 800EACA4 24060001 */  addiu      $a2, $zero, 0x1
/* A1068 800EACA8 84440170 */  lh         $a0, 0x170($v0)
/* A106C 800EACAC 8C420174 */  lw         $v0, 0x174($v0)
/* A1070 800EACB0 0040F809 */  jalr       $v0
/* A1074 800EACB4 02642021 */   addu      $a0, $s3, $a0
/* A1078 800EACB8 02902821 */  addu       $a1, $s4, $s0
/* A107C 800EACBC 8E62012C */  lw         $v0, 0x12C($s3)
/* A1080 800EACC0 2610FF70 */  addiu      $s0, $s0, -0x90
/* A1084 800EACC4 84440118 */  lh         $a0, 0x118($v0)
/* A1088 800EACC8 8C42011C */  lw         $v0, 0x11C($v0)
/* A108C 800EACCC 0040F809 */  jalr       $v0
/* A1090 800EACD0 02642021 */   addu      $a0, $s3, $a0
/* A1094 800EACD4 0621FFF0 */  bgez       $s1, .Lrace_800EAC98
/* A1098 800EACD8 02402821 */   addu      $a1, $s2, $zero
/* A109C 800EACDC 8E62012C */  lw         $v0, 0x12C($s3)
/* A10A0 800EACE0 84440178 */  lh         $a0, 0x178($v0)
/* A10A4 800EACE4 8C42017C */  lw         $v0, 0x17C($v0)
/* A10A8 800EACE8 0040F809 */  jalr       $v0
/* A10AC 800EACEC 02642021 */   addu      $a0, $s3, $a0
.Lrace_800EACF0:
/* A10B0 800EACF0 8FBF0024 */  lw         $ra, 0x24($sp)
/* A10B4 800EACF4 8FB40020 */  lw         $s4, 0x20($sp)
/* A10B8 800EACF8 8FB3001C */  lw         $s3, 0x1C($sp)
/* A10BC 800EACFC 8FB20018 */  lw         $s2, 0x18($sp)
/* A10C0 800EAD00 8FB10014 */  lw         $s1, 0x14($sp)
/* A10C4 800EAD04 8FB00010 */  lw         $s0, 0x10($sp)
/* A10C8 800EAD08 03E00008 */  jr         $ra
/* A10CC 800EAD0C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800EAD10
/* A10D0 800EAD10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A10D4 800EAD14 AFB00010 */  sw         $s0, 0x10($sp)
/* A10D8 800EAD18 AFBF0014 */  sw         $ra, 0x14($sp)
/* A10DC 800EAD1C 0C03A1A4 */  jal        func_race_800E8690
/* A10E0 800EAD20 00808021 */   addu      $s0, $a0, $zero
/* A10E4 800EAD24 02001021 */  addu       $v0, $s0, $zero
/* A10E8 800EAD28 3C03800D */  lui        $v1, %hi(D_race_800CC028)
/* A10EC 800EAD2C 2463C028 */  addiu      $v1, $v1, %lo(D_race_800CC028)
/* A10F0 800EAD30 AC430000 */  sw         $v1, 0x0($v0)
/* A10F4 800EAD34 AC400010 */  sw         $zero, 0x10($v0)
/* A10F8 800EAD38 8FBF0014 */  lw         $ra, 0x14($sp)
/* A10FC 800EAD3C 8FB00010 */  lw         $s0, 0x10($sp)
/* A1100 800EAD40 03E00008 */  jr         $ra
/* A1104 800EAD44 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EAD48
/* A1108 800EAD48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A110C 800EAD4C AFB00010 */  sw         $s0, 0x10($sp)
/* A1110 800EAD50 00808021 */  addu       $s0, $a0, $zero
/* A1114 800EAD54 AFB10014 */  sw         $s1, 0x14($sp)
/* A1118 800EAD58 00A08821 */  addu       $s1, $a1, $zero
/* A111C 800EAD5C 3C02800D */  lui        $v0, %hi(D_race_800CC028)
/* A1120 800EAD60 2442C028 */  addiu      $v0, $v0, %lo(D_race_800CC028)
/* A1124 800EAD64 AFBF0018 */  sw         $ra, 0x18($sp)
/* A1128 800EAD68 0C03AB8D */  jal        func_race_800EAE34
/* A112C 800EAD6C AE020000 */   sw        $v0, 0x0($s0)
/* A1130 800EAD70 02002021 */  addu       $a0, $s0, $zero
/* A1134 800EAD74 0C03A1AC */  jal        func_race_800E86B0
/* A1138 800EAD78 02202821 */   addu      $a1, $s1, $zero
/* A113C 800EAD7C 8FBF0018 */  lw         $ra, 0x18($sp)
/* A1140 800EAD80 8FB10014 */  lw         $s1, 0x14($sp)
/* A1144 800EAD84 8FB00010 */  lw         $s0, 0x10($sp)
/* A1148 800EAD88 03E00008 */  jr         $ra
/* A114C 800EAD8C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EAD90
/* A1150 800EAD90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A1154 800EAD94 AFB1001C */  sw         $s1, 0x1C($sp)
/* A1158 800EAD98 00808821 */  addu       $s1, $a0, $zero
/* A115C 800EAD9C AFBF0024 */  sw         $ra, 0x24($sp)
/* A1160 800EADA0 AFB20020 */  sw         $s2, 0x20($sp)
/* A1164 800EADA4 AFB00018 */  sw         $s0, 0x18($sp)
/* A1168 800EADA8 8E22000C */  lw         $v0, 0xC($s1)
/* A116C 800EADAC 10400003 */  beqz       $v0, .Lrace_800EADBC
/* A1170 800EADB0 00A09021 */   addu      $s2, $a1, $zero
/* A1174 800EADB4 0C03AB8D */  jal        func_race_800EAE34
/* A1178 800EADB8 00000000 */   nop
.Lrace_800EADBC:
/* A117C 800EADBC 27A40010 */  addiu      $a0, $sp, 0x10
/* A1180 800EADC0 24100032 */  addiu      $s0, $zero, 0x32
/* A1184 800EADC4 3C05800D */  lui        $a1, %hi(D_race_800CC000)
/* A1188 800EADC8 24A5C000 */  addiu      $a1, $a1, %lo(D_race_800CC000)
/* A118C 800EADCC AE300008 */  sw         $s0, 0x8($s1)
/* A1190 800EADD0 8E42000C */  lw         $v0, 0xC($s2)
/* A1194 800EADD4 24060008 */  addiu      $a2, $zero, 0x8
/* A1198 800EADD8 0C000708 */  jal        func_80001C20
/* A119C 800EADDC AE220004 */   sw        $v0, 0x4($s1)
/* A11A0 800EADE0 24020030 */  addiu      $v0, $zero, 0x30
/* A11A4 800EADE4 A3A20016 */  sb         $v0, 0x16($sp)
/* A11A8 800EADE8 A3B00017 */  sb         $s0, 0x17($sp)
/* A11AC 800EADEC 8E420010 */  lw         $v0, 0x10($s2)
/* A11B0 800EADF0 27A50010 */  addiu      $a1, $sp, 0x10
/* A11B4 800EADF4 8C4300BC */  lw         $v1, 0xBC($v0)
/* A11B8 800EADF8 14600003 */  bnez       $v1, .Lrace_800EAE08
/* A11BC 800EADFC 244400BC */   addiu     $a0, $v0, 0xBC
/* A11C0 800EAE00 0803AB84 */  j          .Lrace_800EAE10
/* A11C4 800EAE04 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EAE08:
/* A11C8 800EAE08 0C016427 */  jal        func_8005909C
/* A11CC 800EAE0C 00000000 */   nop
.Lrace_800EAE10:
/* A11D0 800EAE10 AE220010 */  sw         $v0, 0x10($s1)
/* A11D4 800EAE14 24020001 */  addiu      $v0, $zero, 0x1
/* A11D8 800EAE18 AE22000C */  sw         $v0, 0xC($s1)
/* A11DC 800EAE1C 8FBF0024 */  lw         $ra, 0x24($sp)
/* A11E0 800EAE20 8FB20020 */  lw         $s2, 0x20($sp)
/* A11E4 800EAE24 8FB1001C */  lw         $s1, 0x1C($sp)
/* A11E8 800EAE28 8FB00018 */  lw         $s0, 0x18($sp)
/* A11EC 800EAE2C 03E00008 */  jr         $ra
/* A11F0 800EAE30 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800EAE34
/* A11F4 800EAE34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A11F8 800EAE38 AFB00010 */  sw         $s0, 0x10($sp)
/* A11FC 800EAE3C 00808021 */  addu       $s0, $a0, $zero
/* A1200 800EAE40 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1204 800EAE44 8E020000 */  lw         $v0, 0x0($s0)
/* A1208 800EAE48 00002821 */  addu       $a1, $zero, $zero
/* A120C 800EAE4C 84440018 */  lh         $a0, 0x18($v0)
/* A1210 800EAE50 8C42001C */  lw         $v0, 0x1C($v0)
/* A1214 800EAE54 0040F809 */  jalr       $v0
/* A1218 800EAE58 02042021 */   addu      $a0, $s0, $a0
/* A121C 800EAE5C 02002021 */  addu       $a0, $s0, $zero
/* A1220 800EAE60 0C03A1C0 */  jal        func_race_800E8700
/* A1224 800EAE64 AC800010 */   sw        $zero, 0x10($a0)
/* A1228 800EAE68 8FBF0014 */  lw         $ra, 0x14($sp)
/* A122C 800EAE6C 8FB00010 */  lw         $s0, 0x10($sp)
/* A1230 800EAE70 03E00008 */  jr         $ra
/* A1234 800EAE74 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EAE78
/* A1238 800EAE78 24020007 */  addiu      $v0, $zero, 0x7
/* A123C 800EAE7C AC820014 */  sw         $v0, 0x14($a0)
/* A1240 800EAE80 24020002 */  addiu      $v0, $zero, 0x2
/* A1244 800EAE84 03E00008 */  jr         $ra
/* A1248 800EAE88 AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800EAE8C
/* A124C 800EAE8C 24020001 */  addiu      $v0, $zero, 0x1
/* A1250 800EAE90 03E00008 */  jr         $ra
/* A1254 800EAE94 AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800EAE98
/* A1258 800EAE98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A125C 800EAE9C AFB00010 */  sw         $s0, 0x10($sp)
/* A1260 800EAEA0 00808021 */  addu       $s0, $a0, $zero
/* A1264 800EAEA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1268 800EAEA8 8E03000C */  lw         $v1, 0xC($s0)
/* A126C 800EAEAC 24020001 */  addiu      $v0, $zero, 0x1
/* A1270 800EAEB0 10620049 */  beq        $v1, $v0, .Lrace_800EAFD8
/* A1274 800EAEB4 00000000 */   nop
/* A1278 800EAEB8 0C03A1C4 */  jal        func_race_800E8710
/* A127C 800EAEBC 00000000 */   nop
/* A1280 800EAEC0 8E030010 */  lw         $v1, 0x10($s0)
/* A1284 800EAEC4 10600044 */  beqz       $v1, .Lrace_800EAFD8
/* A1288 800EAEC8 00000000 */   nop
/* A128C 800EAECC 8E020014 */  lw         $v0, 0x14($s0)
/* A1290 800EAED0 C46200B4 */  lwc1       $f2, 0xB4($v1)
/* A1294 800EAED4 30420001 */  andi       $v0, $v0, 0x1
/* A1298 800EAED8 10400025 */  beqz       $v0, .Lrace_800EAF70
/* A129C 800EAEDC 00000000 */   nop
/* A12A0 800EAEE0 3C01800D */  lui        $at, %hi(D_race_800CC008)
/* A12A4 800EAEE4 C420C008 */  lwc1       $f0, %lo(D_race_800CC008)($at)
/* A12A8 800EAEE8 4602003C */  c.lt.s     $f0, $f2
/* A12AC 800EAEEC 00000000 */  nop
/* A12B0 800EAEF0 45000007 */  bc1f       .Lrace_800EAF10
/* A12B4 800EAEF4 00000000 */   nop
/* A12B8 800EAEF8 3C01800D */  lui        $at, %hi(D_race_800CC00C)
/* A12BC 800EAEFC C420C00C */  lwc1       $f0, %lo(D_race_800CC00C)($at)
/* A12C0 800EAF00 4600103C */  c.lt.s     $f2, $f0
/* A12C4 800EAF04 00000000 */  nop
/* A12C8 800EAF08 4501000D */  bc1t       .Lrace_800EAF40
/* A12CC 800EAF0C 2405002B */   addiu     $a1, $zero, 0x2B
.Lrace_800EAF10:
/* A12D0 800EAF10 3C01800D */  lui        $at, %hi(D_race_800CC010)
/* A12D4 800EAF14 C420C010 */  lwc1       $f0, %lo(D_race_800CC010)($at)
/* A12D8 800EAF18 4602003C */  c.lt.s     $f0, $f2
/* A12DC 800EAF1C 00000000 */  nop
/* A12E0 800EAF20 4500000F */  bc1f       .Lrace_800EAF60
/* A12E4 800EAF24 00000000 */   nop
/* A12E8 800EAF28 3C01800D */  lui        $at, %hi(D_race_800CC014)
/* A12EC 800EAF2C C420C014 */  lwc1       $f0, %lo(D_race_800CC014)($at)
/* A12F0 800EAF30 4600103C */  c.lt.s     $f2, $f0
/* A12F4 800EAF34 00000000 */  nop
/* A12F8 800EAF38 45000009 */  bc1f       .Lrace_800EAF60
/* A12FC 800EAF3C 2405002B */   addiu     $a1, $zero, 0x2B
.Lrace_800EAF40:
/* A1300 800EAF40 00A03021 */  addu       $a2, $a1, $zero
/* A1304 800EAF44 8E040004 */  lw         $a0, 0x4($s0)
/* A1308 800EAF48 0C036D74 */  jal        func_race_800DB5D0
/* A130C 800EAF4C 00003821 */   addu      $a3, $zero, $zero
/* A1310 800EAF50 8E020014 */  lw         $v0, 0x14($s0)
/* A1314 800EAF54 2403FFFE */  addiu      $v1, $zero, -0x2
/* A1318 800EAF58 0803ABF5 */  j          .Lrace_800EAFD4
/* A131C 800EAF5C 00431024 */   and       $v0, $v0, $v1
.Lrace_800EAF60:
/* A1320 800EAF60 8E020014 */  lw         $v0, 0x14($s0)
/* A1324 800EAF64 30420001 */  andi       $v0, $v0, 0x1
/* A1328 800EAF68 1440001B */  bnez       $v0, .Lrace_800EAFD8
/* A132C 800EAF6C 00000000 */   nop
.Lrace_800EAF70:
/* A1330 800EAF70 44800000 */  mtc1       $zero, $f0
/* A1334 800EAF74 4602003C */  c.lt.s     $f0, $f2
/* A1338 800EAF78 00000000 */  nop
/* A133C 800EAF7C 45000007 */  bc1f       .Lrace_800EAF9C
/* A1340 800EAF80 00000000 */   nop
/* A1344 800EAF84 3C01800D */  lui        $at, %hi(D_race_800CC018)
/* A1348 800EAF88 C420C018 */  lwc1       $f0, %lo(D_race_800CC018)($at)
/* A134C 800EAF8C 4600103C */  c.lt.s     $f2, $f0
/* A1350 800EAF90 00000000 */  nop
/* A1354 800EAF94 4501000D */  bc1t       .Lrace_800EAFCC
/* A1358 800EAF98 00000000 */   nop
.Lrace_800EAF9C:
/* A135C 800EAF9C 3C01800D */  lui        $at, %hi(D_race_800CC01C)
/* A1360 800EAFA0 C420C01C */  lwc1       $f0, %lo(D_race_800CC01C)($at)
/* A1364 800EAFA4 4602003C */  c.lt.s     $f0, $f2
/* A1368 800EAFA8 00000000 */  nop
/* A136C 800EAFAC 4500000A */  bc1f       .Lrace_800EAFD8
/* A1370 800EAFB0 00000000 */   nop
/* A1374 800EAFB4 3C01800D */  lui        $at, %hi(D_race_800CC020)
/* A1378 800EAFB8 C420C020 */  lwc1       $f0, %lo(D_race_800CC020)($at)
/* A137C 800EAFBC 4600103C */  c.lt.s     $f2, $f0
/* A1380 800EAFC0 00000000 */  nop
/* A1384 800EAFC4 45000004 */  bc1f       .Lrace_800EAFD8
/* A1388 800EAFC8 00000000 */   nop
.Lrace_800EAFCC:
/* A138C 800EAFCC 8E020014 */  lw         $v0, 0x14($s0)
/* A1390 800EAFD0 34420001 */  ori        $v0, $v0, 0x1
.Lrace_800EAFD4:
/* A1394 800EAFD4 AE020014 */  sw         $v0, 0x14($s0)
.Lrace_800EAFD8:
/* A1398 800EAFD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A139C 800EAFDC 8FB00010 */  lw         $s0, 0x10($sp)
/* A13A0 800EAFE0 03E00008 */  jr         $ra
/* A13A4 800EAFE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EAFE8
/* A13A8 800EAFE8 03E00008 */  jr         $ra
/* A13AC 800EAFEC 00000000 */   nop

glabel func_race_800EAFF0
/* A13B0 800EAFF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A13B4 800EAFF4 AFB00010 */  sw         $s0, 0x10($sp)
/* A13B8 800EAFF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A13BC 800EAFFC 0C03A1A4 */  jal        func_race_800E8690
/* A13C0 800EB000 00808021 */   addu      $s0, $a0, $zero
/* A13C4 800EB004 02001021 */  addu       $v0, $s0, $zero
/* A13C8 800EB008 3C03800D */  lui        $v1, %hi(D_race_800CC090)
/* A13CC 800EB00C 2463C090 */  addiu      $v1, $v1, %lo(D_race_800CC090)
/* A13D0 800EB010 AC430000 */  sw         $v1, 0x0($v0)
/* A13D4 800EB014 AC400010 */  sw         $zero, 0x10($v0)
/* A13D8 800EB018 AC400014 */  sw         $zero, 0x14($v0)
/* A13DC 800EB01C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A13E0 800EB020 8FB00010 */  lw         $s0, 0x10($sp)
/* A13E4 800EB024 03E00008 */  jr         $ra
/* A13E8 800EB028 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EB02C
/* A13EC 800EB02C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A13F0 800EB030 AFB00010 */  sw         $s0, 0x10($sp)
/* A13F4 800EB034 00808021 */  addu       $s0, $a0, $zero
/* A13F8 800EB038 AFB10014 */  sw         $s1, 0x14($sp)
/* A13FC 800EB03C 00A08821 */  addu       $s1, $a1, $zero
/* A1400 800EB040 3C02800D */  lui        $v0, %hi(D_race_800CC090)
/* A1404 800EB044 2442C090 */  addiu      $v0, $v0, %lo(D_race_800CC090)
/* A1408 800EB048 AFBF0018 */  sw         $ra, 0x18($sp)
/* A140C 800EB04C 0C03AC34 */  jal        func_race_800EB0D0
/* A1410 800EB050 AE020000 */   sw        $v0, 0x0($s0)
/* A1414 800EB054 02002021 */  addu       $a0, $s0, $zero
/* A1418 800EB058 0C03A1AC */  jal        func_race_800E86B0
/* A141C 800EB05C 02202821 */   addu      $a1, $s1, $zero
/* A1420 800EB060 8FBF0018 */  lw         $ra, 0x18($sp)
/* A1424 800EB064 8FB10014 */  lw         $s1, 0x14($sp)
/* A1428 800EB068 8FB00010 */  lw         $s0, 0x10($sp)
/* A142C 800EB06C 03E00008 */  jr         $ra
/* A1430 800EB070 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EB074
/* A1434 800EB074 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A1438 800EB078 AFB00010 */  sw         $s0, 0x10($sp)
/* A143C 800EB07C 00808021 */  addu       $s0, $a0, $zero
/* A1440 800EB080 AFBF0018 */  sw         $ra, 0x18($sp)
/* A1444 800EB084 AFB10014 */  sw         $s1, 0x14($sp)
/* A1448 800EB088 8E02000C */  lw         $v0, 0xC($s0)
/* A144C 800EB08C 10400003 */  beqz       $v0, .Lrace_800EB09C
/* A1450 800EB090 00A08821 */   addu      $s1, $a1, $zero
/* A1454 800EB094 0C03AC34 */  jal        func_race_800EB0D0
/* A1458 800EB098 00000000 */   nop
.Lrace_800EB09C:
/* A145C 800EB09C 8E220038 */  lw         $v0, 0x38($s1)
/* A1460 800EB0A0 AE020010 */  sw         $v0, 0x10($s0)
/* A1464 800EB0A4 8E230040 */  lw         $v1, 0x40($s1)
/* A1468 800EB0A8 24020008 */  addiu      $v0, $zero, 0x8
/* A146C 800EB0AC AE020008 */  sw         $v0, 0x8($s0)
/* A1470 800EB0B0 24020001 */  addiu      $v0, $zero, 0x1
/* A1474 800EB0B4 AE02000C */  sw         $v0, 0xC($s0)
/* A1478 800EB0B8 AE030014 */  sw         $v1, 0x14($s0)
/* A147C 800EB0BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* A1480 800EB0C0 8FB10014 */  lw         $s1, 0x14($sp)
/* A1484 800EB0C4 8FB00010 */  lw         $s0, 0x10($sp)
/* A1488 800EB0C8 03E00008 */  jr         $ra
/* A148C 800EB0CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EB0D0
/* A1490 800EB0D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A1494 800EB0D4 AFB00010 */  sw         $s0, 0x10($sp)
/* A1498 800EB0D8 00808021 */  addu       $s0, $a0, $zero
/* A149C 800EB0DC AFBF0014 */  sw         $ra, 0x14($sp)
/* A14A0 800EB0E0 8E020000 */  lw         $v0, 0x0($s0)
/* A14A4 800EB0E4 00002821 */  addu       $a1, $zero, $zero
/* A14A8 800EB0E8 84440018 */  lh         $a0, 0x18($v0)
/* A14AC 800EB0EC 8C42001C */  lw         $v0, 0x1C($v0)
/* A14B0 800EB0F0 0040F809 */  jalr       $v0
/* A14B4 800EB0F4 02042021 */   addu      $a0, $s0, $a0
/* A14B8 800EB0F8 02002021 */  addu       $a0, $s0, $zero
/* A14BC 800EB0FC AC800010 */  sw         $zero, 0x10($a0)
/* A14C0 800EB100 0C03A1C0 */  jal        func_race_800E8700
/* A14C4 800EB104 AC800014 */   sw        $zero, 0x14($a0)
/* A14C8 800EB108 8FBF0014 */  lw         $ra, 0x14($sp)
/* A14CC 800EB10C 8FB00010 */  lw         $s0, 0x10($sp)
/* A14D0 800EB110 03E00008 */  jr         $ra
/* A14D4 800EB114 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EB118
/* A14D8 800EB118 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A14DC 800EB11C AFB00030 */  sw         $s0, 0x30($sp)
/* A14E0 800EB120 00808021 */  addu       $s0, $a0, $zero
/* A14E4 800EB124 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* A14E8 800EB128 3C02800D */  lui        $v0, %hi(D_race_800CC11C)
/* A14EC 800EB12C 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* A14F0 800EB130 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* A14F4 800EB134 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* A14F8 800EB138 AFBF0034 */  sw         $ra, 0x34($sp)
/* A14FC 800EB13C 244AC11C */  addiu      $t2, $v0, %lo(D_race_800CC11C)
/* A1500 800EB140 8D470000 */  lw         $a3, 0x0($t2)
/* A1504 800EB144 8D480004 */  lw         $t0, 0x4($t2)
/* A1508 800EB148 8D490008 */  lw         $t1, 0x8($t2)
/* A150C 800EB14C AFA7001C */  sw         $a3, 0x1C($sp)
/* A1510 800EB150 AFA80020 */  sw         $t0, 0x20($sp)
/* A1514 800EB154 AFA90024 */  sw         $t1, 0x24($sp)
/* A1518 800EB158 AFA00028 */  sw         $zero, 0x28($sp)
/* A151C 800EB15C 24840001 */  addiu      $a0, $a0, 0x1
/* A1520 800EB160 308403FF */  andi       $a0, $a0, 0x3FF
/* A1524 800EB164 00041040 */  sll        $v0, $a0, 1
/* A1528 800EB168 00431021 */  addu       $v0, $v0, $v1
/* A152C 800EB16C 94430000 */  lhu        $v1, 0x0($v0)
/* A1530 800EB170 3C02AAAA */  lui        $v0, (0xAAAAAAAB >> 16)
/* A1534 800EB174 3442AAAB */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
/* A1538 800EB178 00620019 */  multu      $v1, $v0
/* A153C 800EB17C ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* A1540 800EB180 00003810 */  mfhi       $a3
/* A1544 800EB184 00072042 */  srl        $a0, $a3, 1
/* A1548 800EB188 00041040 */  sll        $v0, $a0, 1
/* A154C 800EB18C 00441021 */  addu       $v0, $v0, $a0
/* A1550 800EB190 00621823 */  subu       $v1, $v1, $v0
/* A1554 800EB194 3C04800D */  lui        $a0, %hi(D_race_800CC0F8)
/* A1558 800EB198 2484C0F8 */  addiu      $a0, $a0, %lo(D_race_800CC0F8)
/* A155C 800EB19C 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* A1560 800EB1A0 00031040 */  sll        $v0, $v1, 1
/* A1564 800EB1A4 00431021 */  addu       $v0, $v0, $v1
/* A1568 800EB1A8 00021080 */  sll        $v0, $v0, 2
/* A156C 800EB1AC 00441021 */  addu       $v0, $v0, $a0
/* A1570 800EB1B0 8C480000 */  lw         $t0, 0x0($v0)
/* A1574 800EB1B4 8C490004 */  lw         $t1, 0x4($v0)
/* A1578 800EB1B8 8C4A0008 */  lw         $t2, 0x8($v0)
/* A157C 800EB1BC AFA80010 */  sw         $t0, 0x10($sp)
/* A1580 800EB1C0 AFA90014 */  sw         $t1, 0x14($sp)
/* A1584 800EB1C4 AFAA0018 */  sw         $t2, 0x18($sp)
/* A1588 800EB1C8 8E020014 */  lw         $v0, 0x14($s0)
/* A158C 800EB1CC 10400004 */  beqz       $v0, .Lrace_800EB1E0
/* A1590 800EB1D0 27A30010 */   addiu     $v1, $sp, 0x10
/* A1594 800EB1D4 C7A00014 */  lwc1       $f0, 0x14($sp)
/* A1598 800EB1D8 46000007 */  neg.s      $f0, $f0
/* A159C 800EB1DC E7A00014 */  swc1       $f0, 0x14($sp)
.Lrace_800EB1E0:
/* A15A0 800EB1E0 8E020010 */  lw         $v0, 0x10($s0)
/* A15A4 800EB1E4 00002821 */  addu       $a1, $zero, $zero
/* A15A8 800EB1E8 AC431998 */  sw         $v1, 0x1998($v0)
/* A15AC 800EB1EC 8E040010 */  lw         $a0, 0x10($s0)
/* A15B0 800EB1F0 0C04AF26 */  jal        func_race_8012BC98
/* A15B4 800EB1F4 24060003 */   addiu     $a2, $zero, 0x3
/* A15B8 800EB1F8 8E020010 */  lw         $v0, 0x10($s0)
/* A15BC 800EB1FC AC401998 */  sw         $zero, 0x1998($v0)
/* A15C0 800EB200 24020002 */  addiu      $v0, $zero, 0x2
/* A15C4 800EB204 AE02000C */  sw         $v0, 0xC($s0)
/* A15C8 800EB208 8FBF0034 */  lw         $ra, 0x34($sp)
/* A15CC 800EB20C 8FB00030 */  lw         $s0, 0x30($sp)
/* A15D0 800EB210 03E00008 */  jr         $ra
/* A15D4 800EB214 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800EB218
/* A15D8 800EB218 24020001 */  addiu      $v0, $zero, 0x1
/* A15DC 800EB21C 03E00008 */  jr         $ra
/* A15E0 800EB220 AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800EB224
/* A15E4 800EB224 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A15E8 800EB228 AFBF0010 */  sw         $ra, 0x10($sp)
/* A15EC 800EB22C 8C83000C */  lw         $v1, 0xC($a0)
/* A15F0 800EB230 24020001 */  addiu      $v0, $zero, 0x1
/* A15F4 800EB234 10620003 */  beq        $v1, $v0, .Lrace_800EB244
/* A15F8 800EB238 00000000 */   nop
/* A15FC 800EB23C 0C03A1C4 */  jal        func_race_800E8710
/* A1600 800EB240 00000000 */   nop
.Lrace_800EB244:
/* A1604 800EB244 8FBF0010 */  lw         $ra, 0x10($sp)
/* A1608 800EB248 03E00008 */  jr         $ra
/* A160C 800EB24C 27BD0018 */   addiu     $sp, $sp, 0x18
