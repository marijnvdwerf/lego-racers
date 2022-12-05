.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800EB250
/* A1610 800EB250 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A1614 800EB254 AFB00010 */  sw         $s0, 0x10($sp)
/* A1618 800EB258 AFBF0014 */  sw         $ra, 0x14($sp)
/* A161C 800EB25C 0C03A1A4 */  jal        func_race_800E8690
/* A1620 800EB260 00808021 */   addu      $s0, $a0, $zero
/* A1624 800EB264 3C02800D */  lui        $v0, %hi(D_race_800CC188)
/* A1628 800EB268 2442C188 */  addiu      $v0, $v0, %lo(D_race_800CC188)
/* A162C 800EB26C 02002021 */  addu       $a0, $s0, $zero
/* A1630 800EB270 0C03ACB5 */  jal        func_race_800EB2D4
/* A1634 800EB274 AE020000 */   sw        $v0, 0x0($s0)
/* A1638 800EB278 02001021 */  addu       $v0, $s0, $zero
/* A163C 800EB27C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A1640 800EB280 8FB00010 */  lw         $s0, 0x10($sp)
/* A1644 800EB284 03E00008 */  jr         $ra
/* A1648 800EB288 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EB28C
/* A164C 800EB28C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A1650 800EB290 AFB00010 */  sw         $s0, 0x10($sp)
/* A1654 800EB294 00808021 */  addu       $s0, $a0, $zero
/* A1658 800EB298 AFB10014 */  sw         $s1, 0x14($sp)
/* A165C 800EB29C 00A08821 */  addu       $s1, $a1, $zero
/* A1660 800EB2A0 3C02800D */  lui        $v0, %hi(D_race_800CC188)
/* A1664 800EB2A4 2442C188 */  addiu      $v0, $v0, %lo(D_race_800CC188)
/* A1668 800EB2A8 AFBF0018 */  sw         $ra, 0x18($sp)
/* A166C 800EB2AC 0C03AD38 */  jal        func_race_800EB4E0
/* A1670 800EB2B0 AE020000 */   sw        $v0, 0x0($s0)
/* A1674 800EB2B4 02002021 */  addu       $a0, $s0, $zero
/* A1678 800EB2B8 0C03A1AC */  jal        func_race_800E86B0
/* A167C 800EB2BC 02202821 */   addu      $a1, $s1, $zero
/* A1680 800EB2C0 8FBF0018 */  lw         $ra, 0x18($sp)
/* A1684 800EB2C4 8FB10014 */  lw         $s1, 0x14($sp)
/* A1688 800EB2C8 8FB00010 */  lw         $s0, 0x10($sp)
/* A168C 800EB2CC 03E00008 */  jr         $ra
/* A1690 800EB2D0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EB2D4
/* A1694 800EB2D4 AC800038 */  sw         $zero, 0x38($a0)
/* A1698 800EB2D8 AC800034 */  sw         $zero, 0x34($a0)
/* A169C 800EB2DC AC800048 */  sw         $zero, 0x48($a0)
/* A16A0 800EB2E0 AC80004C */  sw         $zero, 0x4C($a0)
/* A16A4 800EB2E4 AC800050 */  sw         $zero, 0x50($a0)
/* A16A8 800EB2E8 AC80003C */  sw         $zero, 0x3C($a0)
/* A16AC 800EB2EC AC800040 */  sw         $zero, 0x40($a0)
/* A16B0 800EB2F0 AC800044 */  sw         $zero, 0x44($a0)
/* A16B4 800EB2F4 AC800010 */  sw         $zero, 0x10($a0)
/* A16B8 800EB2F8 AC800014 */  sw         $zero, 0x14($a0)
/* A16BC 800EB2FC AC800018 */  sw         $zero, 0x18($a0)
/* A16C0 800EB300 AC80001C */  sw         $zero, 0x1C($a0)
/* A16C4 800EB304 AC800020 */  sw         $zero, 0x20($a0)
/* A16C8 800EB308 AC800024 */  sw         $zero, 0x24($a0)
/* A16CC 800EB30C AC800028 */  sw         $zero, 0x28($a0)
/* A16D0 800EB310 AC80002C */  sw         $zero, 0x2C($a0)
/* A16D4 800EB314 AC800030 */  sw         $zero, 0x30($a0)
/* A16D8 800EB318 03E00008 */  jr         $ra
/* A16DC 800EB31C AC800054 */   sw        $zero, 0x54($a0)

glabel func_race_800EB320
/* A16E0 800EB320 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A16E4 800EB324 AFB1001C */  sw         $s1, 0x1C($sp)
/* A16E8 800EB328 00808821 */  addu       $s1, $a0, $zero
/* A16EC 800EB32C AFB20020 */  sw         $s2, 0x20($sp)
/* A16F0 800EB330 00A09021 */  addu       $s2, $a1, $zero
/* A16F4 800EB334 AFBF0028 */  sw         $ra, 0x28($sp)
/* A16F8 800EB338 AFB30024 */  sw         $s3, 0x24($sp)
/* A16FC 800EB33C AFB00018 */  sw         $s0, 0x18($sp)
/* A1700 800EB340 8E22000C */  lw         $v0, 0xC($s1)
/* A1704 800EB344 10400003 */  beqz       $v0, .Lrace_800EB354
/* A1708 800EB348 00C08021 */   addu      $s0, $a2, $zero
/* A170C 800EB34C 0C03AD38 */  jal        func_race_800EB4E0
/* A1710 800EB350 00000000 */   nop
.Lrace_800EB354:
/* A1714 800EB354 02002021 */  addu       $a0, $s0, $zero
/* A1718 800EB358 A3A00010 */  sb         $zero, 0x10($sp)
/* A171C 800EB35C 8E420040 */  lw         $v0, 0x40($s2)
/* A1720 800EB360 24050005 */  addiu      $a1, $zero, 0x5
/* A1724 800EB364 0C0026F4 */  jal        func_80009BD0
/* A1728 800EB368 AE220054 */   sw        $v0, 0x54($s1)
/* A172C 800EB36C 3C02800D */  lui        $v0, %hi(jtbl_race_800CC130)
/* A1730 800EB370 2453C130 */  addiu      $s3, $v0, %lo(jtbl_race_800CC130)
.Lrace_800EB374:
/* A1734 800EB374 8E020028 */  lw         $v0, 0x28($s0)
/* A1738 800EB378 844400A0 */  lh         $a0, 0xA0($v0)
/* A173C 800EB37C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A1740 800EB380 0040F809 */  jalr       $v0
/* A1744 800EB384 02042021 */   addu      $a0, $s0, $a0
/* A1748 800EB388 00401821 */  addu       $v1, $v0, $zero
/* A174C 800EB38C 24020006 */  addiu      $v0, $zero, 0x6
/* A1750 800EB390 1062003C */  beq        $v1, $v0, .Lrace_800EB484
/* A1754 800EB394 2463FFC9 */   addiu     $v1, $v1, -0x37
/* A1758 800EB398 2C620011 */  sltiu      $v0, $v1, 0x11
/* A175C 800EB39C 10400031 */  beqz       $v0, Lrace_800EB464
/* A1760 800EB3A0 00031080 */   sll       $v0, $v1, 2
/* A1764 800EB3A4 00531021 */  addu       $v0, $v0, $s3
/* A1768 800EB3A8 8C420000 */  lw         $v0, 0x0($v0)
/* A176C 800EB3AC 00400008 */  jr         $v0
/* A1770 800EB3B0 00000000 */   nop
glabel Lrace_800EB3B4
/* A1774 800EB3B4 8E020028 */  lw         $v0, 0x28($s0)
/* A1778 800EB3B8 844400A0 */  lh         $a0, 0xA0($v0)
/* A177C 800EB3BC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A1780 800EB3C0 0040F809 */  jalr       $v0
/* A1784 800EB3C4 02042021 */   addu      $a0, $s0, $a0
/* A1788 800EB3C8 27A40010 */  addiu      $a0, $sp, 0x10
/* A178C 800EB3CC 26050044 */  addiu      $a1, $s0, 0x44
/* A1790 800EB3D0 0C000708 */  jal        func_80001C20
/* A1794 800EB3D4 24060008 */   addiu     $a2, $zero, 0x8
/* A1798 800EB3D8 0803ACDD */  j          .Lrace_800EB374
/* A179C 800EB3DC 00000000 */   nop
glabel Lrace_800EB3E0
/* A17A0 800EB3E0 0C0025F8 */  jal        func_800097E0
/* A17A4 800EB3E4 02002021 */   addu      $a0, $s0, $zero
/* A17A8 800EB3E8 02002021 */  addu       $a0, $s0, $zero
/* A17AC 800EB3EC 0C0025F8 */  jal        func_800097E0
/* A17B0 800EB3F0 E6200010 */   swc1      $f0, 0x10($s1)
/* A17B4 800EB3F4 02002021 */  addu       $a0, $s0, $zero
/* A17B8 800EB3F8 0C0025F8 */  jal        func_800097E0
/* A17BC 800EB3FC E6200014 */   swc1      $f0, 0x14($s1)
/* A17C0 800EB400 8E220054 */  lw         $v0, 0x54($s1)
/* A17C4 800EB404 1040FFDB */  beqz       $v0, .Lrace_800EB374
/* A17C8 800EB408 E6200018 */   swc1      $f0, 0x18($s1)
/* A17CC 800EB40C C6200014 */  lwc1       $f0, 0x14($s1)
/* A17D0 800EB410 46000007 */  neg.s      $f0, $f0
/* A17D4 800EB414 0803ACDD */  j          .Lrace_800EB374
/* A17D8 800EB418 E6200014 */   swc1      $f0, 0x14($s1)
glabel Lrace_800EB41C
/* A17DC 800EB41C 0C002680 */  jal        func_80009A00
/* A17E0 800EB420 02002021 */   addu      $a0, $s0, $zero
/* A17E4 800EB424 0803ACDD */  j          .Lrace_800EB374
/* A17E8 800EB428 AE220050 */   sw        $v0, 0x50($s1)
glabel Lrace_800EB42C
/* A17EC 800EB42C 0C002680 */  jal        func_80009A00
/* A17F0 800EB430 02002021 */   addu      $a0, $s0, $zero
/* A17F4 800EB434 0803ACDD */  j          .Lrace_800EB374
/* A17F8 800EB438 AE220008 */   sw        $v0, 0x8($s1)
glabel Lrace_800EB43C
/* A17FC 800EB43C 0C0025F8 */  jal        func_800097E0
/* A1800 800EB440 02002021 */   addu      $a0, $s0, $zero
/* A1804 800EB444 02002021 */  addu       $a0, $s0, $zero
/* A1808 800EB448 0C0025F8 */  jal        func_800097E0
/* A180C 800EB44C E620003C */   swc1      $f0, 0x3C($s1)
/* A1810 800EB450 02002021 */  addu       $a0, $s0, $zero
/* A1814 800EB454 0C0025F8 */  jal        func_800097E0
/* A1818 800EB458 E6200040 */   swc1      $f0, 0x40($s1)
/* A181C 800EB45C 0803ACDD */  j          .Lrace_800EB374
/* A1820 800EB460 E6200044 */   swc1      $f0, 0x44($s1)
glabel Lrace_800EB464
/* A1824 800EB464 8E020028 */  lw         $v0, 0x28($s0)
/* A1828 800EB468 00002821 */  addu       $a1, $zero, $zero
/* A182C 800EB46C 84440098 */  lh         $a0, 0x98($v0)
/* A1830 800EB470 8C42009C */  lw         $v0, 0x9C($v0)
/* A1834 800EB474 0040F809 */  jalr       $v0
/* A1838 800EB478 02042021 */   addu      $a0, $s0, $a0
/* A183C 800EB47C 0803ACDD */  j          .Lrace_800EB374
/* A1840 800EB480 00000000 */   nop
.Lrace_800EB484:
/* A1844 800EB484 8E420038 */  lw         $v0, 0x38($s2)
/* A1848 800EB488 AE220034 */  sw         $v0, 0x34($s1)
/* A184C 800EB48C 93A20010 */  lbu        $v0, 0x10($sp)
/* A1850 800EB490 1040000A */  beqz       $v0, .Lrace_800EB4BC
/* A1854 800EB494 27A50010 */   addiu     $a1, $sp, 0x10
/* A1858 800EB498 8E420010 */  lw         $v0, 0x10($s2)
/* A185C 800EB49C 8C4300BC */  lw         $v1, 0xBC($v0)
/* A1860 800EB4A0 14600003 */  bnez       $v1, .Lrace_800EB4B0
/* A1864 800EB4A4 244400BC */   addiu     $a0, $v0, 0xBC
/* A1868 800EB4A8 0803AD2E */  j          .Lrace_800EB4B8
/* A186C 800EB4AC 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EB4B0:
/* A1870 800EB4B0 0C016427 */  jal        func_8005909C
/* A1874 800EB4B4 00000000 */   nop
.Lrace_800EB4B8:
/* A1878 800EB4B8 AE220038 */  sw         $v0, 0x38($s1)
.Lrace_800EB4BC:
/* A187C 800EB4BC 24020001 */  addiu      $v0, $zero, 0x1
/* A1880 800EB4C0 AE22000C */  sw         $v0, 0xC($s1)
/* A1884 800EB4C4 8FBF0028 */  lw         $ra, 0x28($sp)
/* A1888 800EB4C8 8FB30024 */  lw         $s3, 0x24($sp)
/* A188C 800EB4CC 8FB20020 */  lw         $s2, 0x20($sp)
/* A1890 800EB4D0 8FB1001C */  lw         $s1, 0x1C($sp)
/* A1894 800EB4D4 8FB00018 */  lw         $s0, 0x18($sp)
/* A1898 800EB4D8 03E00008 */  jr         $ra
/* A189C 800EB4DC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800EB4E0
/* A18A0 800EB4E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A18A4 800EB4E4 AFB00010 */  sw         $s0, 0x10($sp)
/* A18A8 800EB4E8 00808021 */  addu       $s0, $a0, $zero
/* A18AC 800EB4EC AFBF0014 */  sw         $ra, 0x14($sp)
/* A18B0 800EB4F0 8E020000 */  lw         $v0, 0x0($s0)
/* A18B4 800EB4F4 00002821 */  addu       $a1, $zero, $zero
/* A18B8 800EB4F8 84440018 */  lh         $a0, 0x18($v0)
/* A18BC 800EB4FC 8C42001C */  lw         $v0, 0x1C($v0)
/* A18C0 800EB500 0040F809 */  jalr       $v0
/* A18C4 800EB504 02042021 */   addu      $a0, $s0, $a0
/* A18C8 800EB508 0C03ACB5 */  jal        func_race_800EB2D4
/* A18CC 800EB50C 02002021 */   addu      $a0, $s0, $zero
/* A18D0 800EB510 0C03A1C0 */  jal        func_race_800E8700
/* A18D4 800EB514 02002021 */   addu      $a0, $s0, $zero
/* A18D8 800EB518 8FBF0014 */  lw         $ra, 0x14($sp)
/* A18DC 800EB51C 8FB00010 */  lw         $s0, 0x10($sp)
/* A18E0 800EB520 03E00008 */  jr         $ra
/* A18E4 800EB524 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EB528
/* A18E8 800EB528 2402206C */  addiu      $v0, $zero, 0x206C
/* A18EC 800EB52C AC82004C */  sw         $v0, 0x4C($a0)
/* A18F0 800EB530 24020002 */  addiu      $v0, $zero, 0x2
/* A18F4 800EB534 03E00008 */  jr         $ra
/* A18F8 800EB538 AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800EB53C
/* A18FC 800EB53C 24020001 */  addiu      $v0, $zero, 0x1
/* A1900 800EB540 03E00008 */  jr         $ra
/* A1904 800EB544 AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800EB548
/* A1908 800EB548 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A190C 800EB54C AFB00030 */  sw         $s0, 0x30($sp)
/* A1910 800EB550 00808021 */  addu       $s0, $a0, $zero
/* A1914 800EB554 AFB10034 */  sw         $s1, 0x34($sp)
/* A1918 800EB558 AFBF0038 */  sw         $ra, 0x38($sp)
/* A191C 800EB55C 8E03000C */  lw         $v1, 0xC($s0)
/* A1920 800EB560 24020001 */  addiu      $v0, $zero, 0x1
/* A1924 800EB564 10620068 */  beq        $v1, $v0, .Lrace_800EB708
/* A1928 800EB568 00A08821 */   addu      $s1, $a1, $zero
/* A192C 800EB56C 0C03A1C4 */  jal        func_race_800E8710
/* A1930 800EB570 00000000 */   nop
/* A1934 800EB574 8E020048 */  lw         $v0, 0x48($s0)
/* A1938 800EB578 8E030050 */  lw         $v1, 0x50($s0)
/* A193C 800EB57C 00511021 */  addu       $v0, $v0, $s1
/* A1940 800EB580 AE020048 */  sw         $v0, 0x48($s0)
/* A1944 800EB584 0043102B */  sltu       $v0, $v0, $v1
/* A1948 800EB588 50400001 */  beql       $v0, $zero, .Lrace_800EB590
/* A194C 800EB58C AE000048 */   sw        $zero, 0x48($s0)
.Lrace_800EB590:
/* A1950 800EB590 8E030048 */  lw         $v1, 0x48($s0)
/* A1954 800EB594 8E020050 */  lw         $v0, 0x50($s0)
/* A1958 800EB598 C604003C */  lwc1       $f4, 0x3C($s0)
/* A195C 800EB59C 44830000 */  mtc1       $v1, $f0
/* A1960 800EB5A0 46800020 */  cvt.s.w    $f0, $f0
/* A1964 800EB5A4 00021042 */  srl        $v0, $v0, 1
/* A1968 800EB5A8 44821000 */  mtc1       $v0, $f2
/* A196C 800EB5AC 468010A0 */  cvt.s.w    $f2, $f2
/* A1970 800EB5B0 46020003 */  div.s      $f0, $f0, $f2
/* A1974 800EB5B4 0043102B */  sltu       $v0, $v0, $v1
/* A1978 800EB5B8 46040082 */  mul.s      $f2, $f0, $f4
/* A197C 800EB5BC 10400004 */  beqz       $v0, .Lrace_800EB5D0
/* A1980 800EB5C0 00000000 */   nop
/* A1984 800EB5C4 3C01800D */  lui        $at, %hi(D_race_800CC174)
/* A1988 800EB5C8 C420C174 */  lwc1       $f0, %lo(D_race_800CC174)($at)
/* A198C 800EB5CC 46020081 */  sub.s      $f2, $f0, $f2
.Lrace_800EB5D0:
/* A1990 800EB5D0 3C01800D */  lui        $at, %hi(D_race_800CC178)
/* A1994 800EB5D4 C426C178 */  lwc1       $f6, %lo(D_race_800CC178)($at)
/* A1998 800EB5D8 46061002 */  mul.s      $f0, $f2, $f6
/* A199C 800EB5DC 3C028003 */  lui        $v0, %hi(D_8002D2B0)
/* A19A0 800EB5E0 2444D2B0 */  addiu      $a0, $v0, %lo(D_8002D2B0)
/* A19A4 800EB5E4 4600020D */  trunc.w.s  $f8, $f0
/* A19A8 800EB5E8 44034000 */  mfc1       $v1, $f8
/* A19AC 800EB5EC 306203FF */  andi       $v0, $v1, 0x3FF
/* A19B0 800EB5F0 00021080 */  sll        $v0, $v0, 2
/* A19B4 800EB5F4 00441021 */  addu       $v0, $v0, $a0
/* A19B8 800EB5F8 2463FF00 */  addiu      $v1, $v1, -0x100
/* A19BC 800EB5FC 306303FF */  andi       $v1, $v1, 0x3FF
/* A19C0 800EB600 00031880 */  sll        $v1, $v1, 2
/* A19C4 800EB604 C4400000 */  lwc1       $f0, 0x0($v0)
/* A19C8 800EB608 8E020054 */  lw         $v0, 0x54($s0)
/* A19CC 800EB60C 00641821 */  addu       $v1, $v1, $a0
/* A19D0 800EB610 E6000028 */  swc1       $f0, 0x28($s0)
/* A19D4 800EB614 C4600000 */  lwc1       $f0, 0x0($v1)
/* A19D8 800EB618 10400003 */  beqz       $v0, .Lrace_800EB628
/* A19DC 800EB61C E600002C */   swc1      $f0, 0x2C($s0)
/* A19E0 800EB620 46000007 */  neg.s      $f0, $f0
/* A19E4 800EB624 E600002C */  swc1       $f0, 0x2C($s0)
.Lrace_800EB628:
/* A19E8 800EB628 C6000048 */  lwc1       $f0, 0x48($s0)
/* A19EC 800EB62C 46800020 */  cvt.s.w    $f0, $f0
/* A19F0 800EB630 8E020050 */  lw         $v0, 0x50($s0)
/* A19F4 800EB634 3C01800D */  lui        $at, %hi(D_race_800CC17C)
/* A19F8 800EB638 C424C17C */  lwc1       $f4, %lo(D_race_800CC17C)($at)
/* A19FC 800EB63C 00021082 */  srl        $v0, $v0, 2
/* A1A00 800EB640 44821000 */  mtc1       $v0, $f2
/* A1A04 800EB644 468010A0 */  cvt.s.w    $f2, $f2
/* A1A08 800EB648 46020003 */  div.s      $f0, $f0, $f2
/* A1A0C 800EB64C 46040082 */  mul.s      $f2, $f0, $f4
/* A1A10 800EB650 00000000 */  nop
/* A1A14 800EB654 46061002 */  mul.s      $f0, $f2, $f6
/* A1A18 800EB658 4600020D */  trunc.w.s  $f8, $f0
/* A1A1C 800EB65C 44024000 */  mfc1       $v0, $f8
/* A1A20 800EB660 304203FF */  andi       $v0, $v0, 0x3FF
/* A1A24 800EB664 00021080 */  sll        $v0, $v0, 2
/* A1A28 800EB668 00441021 */  addu       $v0, $v0, $a0
/* A1A2C 800EB66C C4420000 */  lwc1       $f2, 0x0($v0)
/* A1A30 800EB670 C6000040 */  lwc1       $f0, 0x40($s0)
/* A1A34 800EB674 46020002 */  mul.s      $f0, $f0, $f2
/* A1A38 800EB678 C6020044 */  lwc1       $f2, 0x44($s0)
/* A1A3C 800EB67C 46020000 */  add.s      $f0, $f0, $f2
/* A1A40 800EB680 26040028 */  addiu      $a0, $s0, 0x28
/* A1A44 800EB684 00802821 */  addu       $a1, $a0, $zero
/* A1A48 800EB688 0C000F26 */  jal        func_80003C98
/* A1A4C 800EB68C E6000030 */   swc1      $f0, 0x30($s0)
/* A1A50 800EB690 8E030038 */  lw         $v1, 0x38($s0)
/* A1A54 800EB694 1060000B */  beqz       $v1, .Lrace_800EB6C4
/* A1A58 800EB698 26050010 */   addiu     $a1, $s0, 0x10
/* A1A5C 800EB69C 8C620024 */  lw         $v0, 0x24($v1)
/* A1A60 800EB6A0 84440010 */  lh         $a0, 0x10($v0)
/* A1A64 800EB6A4 8C420014 */  lw         $v0, 0x14($v0)
/* A1A68 800EB6A8 0040F809 */  jalr       $v0
/* A1A6C 800EB6AC 00642021 */   addu      $a0, $v1, $a0
/* A1A70 800EB6B0 C6000018 */  lwc1       $f0, 0x18($s0)
/* A1A74 800EB6B4 3C01800D */  lui        $at, %hi(D_race_800CC180)
/* A1A78 800EB6B8 C422C180 */  lwc1       $f2, %lo(D_race_800CC180)($at)
/* A1A7C 800EB6BC 46020001 */  sub.s      $f0, $f0, $f2
/* A1A80 800EB6C0 E6000018 */  swc1       $f0, 0x18($s0)
.Lrace_800EB6C4:
/* A1A84 800EB6C4 8E02004C */  lw         $v0, 0x4C($s0)
/* A1A88 800EB6C8 00511021 */  addu       $v0, $v0, $s1
/* A1A8C 800EB6CC AE02004C */  sw         $v0, 0x4C($s0)
/* A1A90 800EB6D0 2C42206C */  sltiu      $v0, $v0, 0x206C
/* A1A94 800EB6D4 1440000C */  bnez       $v0, .Lrace_800EB708
/* A1A98 800EB6D8 00002821 */   addu      $a1, $zero, $zero
/* A1A9C 800EB6DC 26020010 */  addiu      $v0, $s0, 0x10
/* A1AA0 800EB6E0 AFA20028 */  sw         $v0, 0x28($sp)
/* A1AA4 800EB6E4 8E030034 */  lw         $v1, 0x34($s0)
/* A1AA8 800EB6E8 27A20010 */  addiu      $v0, $sp, 0x10
/* A1AAC 800EB6EC AC621998 */  sw         $v0, 0x1998($v1)
/* A1AB0 800EB6F0 8E040034 */  lw         $a0, 0x34($s0)
/* A1AB4 800EB6F4 0C04AF09 */  jal        func_race_8012BC24
/* A1AB8 800EB6F8 24060002 */   addiu     $a2, $zero, 0x2
/* A1ABC 800EB6FC 8E020034 */  lw         $v0, 0x34($s0)
/* A1AC0 800EB700 AC401998 */  sw         $zero, 0x1998($v0)
/* A1AC4 800EB704 AE00004C */  sw         $zero, 0x4C($s0)
.Lrace_800EB708:
/* A1AC8 800EB708 8FBF0038 */  lw         $ra, 0x38($sp)
/* A1ACC 800EB70C 8FB10034 */  lw         $s1, 0x34($sp)
/* A1AD0 800EB710 8FB00030 */  lw         $s0, 0x30($sp)
/* A1AD4 800EB714 03E00008 */  jr         $ra
/* A1AD8 800EB718 27BD0040 */   addiu     $sp, $sp, 0x40
