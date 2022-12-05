.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800FB290
/* B1650 800FB290 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B1654 800FB294 AFB20018 */  sw         $s2, 0x18($sp)
/* B1658 800FB298 00809021 */  addu       $s2, $a0, $zero
/* B165C 800FB29C AFB10014 */  sw         $s1, 0x14($sp)
/* B1660 800FB2A0 2651000C */  addiu      $s1, $s2, 0xC
/* B1664 800FB2A4 AFB00010 */  sw         $s0, 0x10($sp)
/* B1668 800FB2A8 24100002 */  addiu      $s0, $zero, 0x2
/* B166C 800FB2AC AFB3001C */  sw         $s3, 0x1C($sp)
/* B1670 800FB2B0 2413FFFF */  addiu      $s3, $zero, -0x1
/* B1674 800FB2B4 AFBF0020 */  sw         $ra, 0x20($sp)
.Lrace_800FB2B8:
/* B1678 800FB2B8 0C0016DC */  jal        func_80005B70
/* B167C 800FB2BC 02202021 */   addu      $a0, $s1, $zero
/* B1680 800FB2C0 2610FFFF */  addiu      $s0, $s0, -0x1
/* B1684 800FB2C4 1613FFFC */  bne        $s0, $s3, .Lrace_800FB2B8
/* B1688 800FB2C8 2631000C */   addiu     $s1, $s1, 0xC
/* B168C 800FB2CC 0C0016DC */  jal        func_80005B70
/* B1690 800FB2D0 26440030 */   addiu     $a0, $s2, 0x30
/* B1694 800FB2D4 0C0016DC */  jal        func_80005B70
/* B1698 800FB2D8 2644003C */   addiu     $a0, $s2, 0x3C
/* B169C 800FB2DC 0C03ED05 */  jal        func_race_800FB414
/* B16A0 800FB2E0 02402021 */   addu      $a0, $s2, $zero
/* B16A4 800FB2E4 02401021 */  addu       $v0, $s2, $zero
/* B16A8 800FB2E8 8FBF0020 */  lw         $ra, 0x20($sp)
/* B16AC 800FB2EC 8FB3001C */  lw         $s3, 0x1C($sp)
/* B16B0 800FB2F0 8FB20018 */  lw         $s2, 0x18($sp)
/* B16B4 800FB2F4 8FB10014 */  lw         $s1, 0x14($sp)
/* B16B8 800FB2F8 8FB00010 */  lw         $s0, 0x10($sp)
/* B16BC 800FB2FC 03E00008 */  jr         $ra
/* B16C0 800FB300 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800FB304
/* B16C4 800FB304 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B16C8 800FB308 AFB20018 */  sw         $s2, 0x18($sp)
/* B16CC 800FB30C 00809021 */  addu       $s2, $a0, $zero
/* B16D0 800FB310 AFB3001C */  sw         $s3, 0x1C($sp)
/* B16D4 800FB314 00A09821 */  addu       $s3, $a1, $zero
/* B16D8 800FB318 AFBF0020 */  sw         $ra, 0x20($sp)
/* B16DC 800FB31C AFB10014 */  sw         $s1, 0x14($sp)
/* B16E0 800FB320 0C03ECE8 */  jal        func_race_800FB3A0
/* B16E4 800FB324 AFB00010 */   sw        $s0, 0x10($sp)
/* B16E8 800FB328 2644003C */  addiu      $a0, $s2, 0x3C
/* B16EC 800FB32C 0C0016E2 */  jal        func_80005B88
/* B16F0 800FB330 24050002 */   addiu     $a1, $zero, 0x2
/* B16F4 800FB334 26500030 */  addiu      $s0, $s2, 0x30
/* B16F8 800FB338 02002021 */  addu       $a0, $s0, $zero
/* B16FC 800FB33C 0C0016E2 */  jal        func_80005B88
/* B1700 800FB340 24050002 */   addiu     $a1, $zero, 0x2
/* B1704 800FB344 2642000C */  addiu      $v0, $s2, 0xC
/* B1708 800FB348 5040000A */  beql       $v0, $zero, .Lrace_800FB374
/* B170C 800FB34C 32620001 */   andi      $v0, $s3, 0x1
/* B1710 800FB350 10500007 */  beq        $v0, $s0, .Lrace_800FB370
/* B1714 800FB354 00408821 */   addu      $s1, $v0, $zero
/* B1718 800FB358 2610FFF4 */  addiu      $s0, $s0, -0xC
.Lrace_800FB35C:
/* B171C 800FB35C 02002021 */  addu       $a0, $s0, $zero
/* B1720 800FB360 0C0016E2 */  jal        func_80005B88
/* B1724 800FB364 24050002 */   addiu     $a1, $zero, 0x2
/* B1728 800FB368 1630FFFC */  bne        $s1, $s0, .Lrace_800FB35C
/* B172C 800FB36C 2610FFF4 */   addiu     $s0, $s0, -0xC
.Lrace_800FB370:
/* B1730 800FB370 32620001 */  andi       $v0, $s3, 0x1
.Lrace_800FB374:
/* B1734 800FB374 10400003 */  beqz       $v0, .Lrace_800FB384
/* B1738 800FB378 00000000 */   nop
/* B173C 800FB37C 0C01FB5C */  jal        func_8007ED70
/* B1740 800FB380 02402021 */   addu      $a0, $s2, $zero
.Lrace_800FB384:
/* B1744 800FB384 8FBF0020 */  lw         $ra, 0x20($sp)
/* B1748 800FB388 8FB3001C */  lw         $s3, 0x1C($sp)
/* B174C 800FB38C 8FB20018 */  lw         $s2, 0x18($sp)
/* B1750 800FB390 8FB10014 */  lw         $s1, 0x14($sp)
/* B1754 800FB394 8FB00010 */  lw         $s0, 0x10($sp)
/* B1758 800FB398 03E00008 */  jr         $ra
/* B175C 800FB39C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800FB3A0
/* B1760 800FB3A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B1764 800FB3A4 AFBF0010 */  sw         $ra, 0x10($sp)
/* B1768 800FB3A8 00002821 */  addu       $a1, $zero, $zero
/* B176C 800FB3AC 00A01821 */  addu       $v1, $a1, $zero
.Lrace_800FB3B0:
/* B1770 800FB3B0 2CA20003 */  sltiu      $v0, $a1, 0x3
/* B1774 800FB3B4 10400009 */  beqz       $v0, .Lrace_800FB3DC
/* B1778 800FB3B8 00641021 */   addu      $v0, $v1, $a0
/* B177C 800FB3BC 2442000C */  addiu      $v0, $v0, 0xC
/* B1780 800FB3C0 2463000C */  addiu      $v1, $v1, 0xC
/* B1784 800FB3C4 24A50001 */  addiu      $a1, $a1, 0x1
/* B1788 800FB3C8 AC400000 */  sw         $zero, 0x0($v0)
/* B178C 800FB3CC A4400008 */  sh         $zero, 0x8($v0)
/* B1790 800FB3D0 A4400006 */  sh         $zero, 0x6($v0)
/* B1794 800FB3D4 0803ECEC */  j          .Lrace_800FB3B0
/* B1798 800FB3D8 A4400004 */   sh        $zero, 0x4($v0)
.Lrace_800FB3DC:
/* B179C 800FB3DC 24820030 */  addiu      $v0, $a0, 0x30
/* B17A0 800FB3E0 AC800030 */  sw         $zero, 0x30($a0)
/* B17A4 800FB3E4 A4400008 */  sh         $zero, 0x8($v0)
/* B17A8 800FB3E8 A4400006 */  sh         $zero, 0x6($v0)
/* B17AC 800FB3EC A4400004 */  sh         $zero, 0x4($v0)
/* B17B0 800FB3F0 2482003C */  addiu      $v0, $a0, 0x3C
/* B17B4 800FB3F4 AC80003C */  sw         $zero, 0x3C($a0)
/* B17B8 800FB3F8 A4400008 */  sh         $zero, 0x8($v0)
/* B17BC 800FB3FC A4400006 */  sh         $zero, 0x6($v0)
/* B17C0 800FB400 0C03ED05 */  jal        func_race_800FB414
/* B17C4 800FB404 A4400004 */   sh        $zero, 0x4($v0)
/* B17C8 800FB408 8FBF0010 */  lw         $ra, 0x10($sp)
/* B17CC 800FB40C 03E00008 */  jr         $ra
/* B17D0 800FB410 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FB414
/* B17D4 800FB414 24020001 */  addiu      $v0, $zero, 0x1
/* B17D8 800FB418 AC800000 */  sw         $zero, 0x0($a0)
/* B17DC 800FB41C AC800004 */  sw         $zero, 0x4($a0)
/* B17E0 800FB420 AC800008 */  sw         $zero, 0x8($a0)
/* B17E4 800FB424 AC800048 */  sw         $zero, 0x48($a0)
/* B17E8 800FB428 AC800050 */  sw         $zero, 0x50($a0)
/* B17EC 800FB42C AC800054 */  sw         $zero, 0x54($a0)
/* B17F0 800FB430 AC820058 */  sw         $v0, 0x58($a0)
/* B17F4 800FB434 AC80005C */  sw         $zero, 0x5C($a0)
/* B17F8 800FB438 AC800060 */  sw         $zero, 0x60($a0)
/* B17FC 800FB43C AC800064 */  sw         $zero, 0x64($a0)
/* B1800 800FB440 03E00008 */  jr         $ra
/* B1804 800FB444 AC800068 */   sw        $zero, 0x68($a0)

glabel func_race_800FB448
/* B1808 800FB448 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B180C 800FB44C AFB00010 */  sw         $s0, 0x10($sp)
/* B1810 800FB450 00808021 */  addu       $s0, $a0, $zero
/* B1814 800FB454 AFB3001C */  sw         $s3, 0x1C($sp)
/* B1818 800FB458 00A09821 */  addu       $s3, $a1, $zero
/* B181C 800FB45C AFB20018 */  sw         $s2, 0x18($sp)
/* B1820 800FB460 00C09021 */  addu       $s2, $a2, $zero
/* B1824 800FB464 AFB40020 */  sw         $s4, 0x20($sp)
/* B1828 800FB468 AFBF0024 */  sw         $ra, 0x24($sp)
/* B182C 800FB46C AFB10014 */  sw         $s1, 0x14($sp)
/* B1830 800FB470 8E020000 */  lw         $v0, 0x0($s0)
/* B1834 800FB474 8FB10038 */  lw         $s1, 0x38($sp)
/* B1838 800FB478 10400003 */  beqz       $v0, .Lrace_800FB488
/* B183C 800FB47C 00E0A021 */   addu      $s4, $a3, $zero
/* B1840 800FB480 0C03ECE8 */  jal        func_race_800FB3A0
/* B1844 800FB484 00000000 */   nop
.Lrace_800FB488:
/* B1848 800FB488 3C021000 */  lui        $v0, (0x100000C8 >> 16)
/* B184C 800FB48C 344200C8 */  ori        $v0, $v0, (0x100000C8 & 0xFFFF)
/* B1850 800FB490 AE120004 */  sw         $s2, 0x4($s0)
/* B1854 800FB494 AE130000 */  sw         $s3, 0x0($s0)
/* B1858 800FB498 AE140008 */  sw         $s4, 0x8($s0)
/* B185C 800FB49C 12220005 */  beq        $s1, $v0, .Lrace_800FB4B4
/* B1860 800FB4A0 AE110064 */   sw        $s1, 0x64($s0)
/* B1864 800FB4A4 3C021000 */  lui        $v0, (0x100000D0 >> 16)
/* B1868 800FB4A8 344200D0 */  ori        $v0, $v0, (0x100000D0 & 0xFFFF)
/* B186C 800FB4AC 56220005 */  bnel       $s1, $v0, .Lrace_800FB4C4
/* B1870 800FB4B0 AE000068 */   sw        $zero, 0x68($s0)
.Lrace_800FB4B4:
/* B1874 800FB4B4 3C021000 */  lui        $v0, (0x1000001C >> 16)
/* B1878 800FB4B8 3442001C */  ori        $v0, $v0, (0x1000001C & 0xFFFF)
/* B187C 800FB4BC AE020064 */  sw         $v0, 0x64($s0)
/* B1880 800FB4C0 AE000068 */  sw         $zero, 0x68($s0)
.Lrace_800FB4C4:
/* B1884 800FB4C4 8FBF0024 */  lw         $ra, 0x24($sp)
/* B1888 800FB4C8 8FB40020 */  lw         $s4, 0x20($sp)
/* B188C 800FB4CC 8FB3001C */  lw         $s3, 0x1C($sp)
/* B1890 800FB4D0 8FB20018 */  lw         $s2, 0x18($sp)
/* B1894 800FB4D4 8FB10014 */  lw         $s1, 0x14($sp)
/* B1898 800FB4D8 8FB00010 */  lw         $s0, 0x10($sp)
/* B189C 800FB4DC 03E00008 */  jr         $ra
/* B18A0 800FB4E0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800FB4E4
/* B18A4 800FB4E4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B18A8 800FB4E8 AFB30024 */  sw         $s3, 0x24($sp)
/* B18AC 800FB4EC 00809821 */  addu       $s3, $a0, $zero
/* B18B0 800FB4F0 AFBE0038 */  sw         $fp, 0x38($sp)
/* B18B4 800FB4F4 00A0F021 */  addu       $fp, $a1, $zero
/* B18B8 800FB4F8 AFB40028 */  sw         $s4, 0x28($sp)
/* B18BC 800FB4FC 00C0A021 */  addu       $s4, $a2, $zero
/* B18C0 800FB500 AFBF003C */  sw         $ra, 0x3C($sp)
/* B18C4 800FB504 AFB70034 */  sw         $s7, 0x34($sp)
/* B18C8 800FB508 AFB60030 */  sw         $s6, 0x30($sp)
/* B18CC 800FB50C AFB5002C */  sw         $s5, 0x2C($sp)
/* B18D0 800FB510 AFB20020 */  sw         $s2, 0x20($sp)
/* B18D4 800FB514 AFB1001C */  sw         $s1, 0x1C($sp)
/* B18D8 800FB518 AFB00018 */  sw         $s0, 0x18($sp)
/* B18DC 800FB51C 8E620004 */  lw         $v0, 0x4($s3)
/* B18E0 800FB520 00E08821 */  addu       $s1, $a3, $zero
/* B18E4 800FB524 8C43012C */  lw         $v1, 0x12C($v0)
/* B18E8 800FB528 84640030 */  lh         $a0, 0x30($v1)
/* B18EC 800FB52C 97B50052 */  lhu        $s5, 0x52($sp)
/* B18F0 800FB530 00442021 */  addu       $a0, $v0, $a0
/* B18F4 800FB534 8C620034 */  lw         $v0, 0x34($v1)
/* B18F8 800FB538 97B60056 */  lhu        $s6, 0x56($sp)
/* B18FC 800FB53C 0040F809 */  jalr       $v0
/* B1900 800FB540 00008021 */   addu      $s0, $zero, $zero
/* B1904 800FB544 1280000E */  beqz       $s4, .Lrace_800FB580
/* B1908 800FB548 0040B821 */   addu      $s7, $v0, $zero
/* B190C 800FB54C 2412000C */  addiu      $s2, $zero, 0xC
.Lrace_800FB550:
/* B1910 800FB550 96250000 */  lhu        $a1, 0x0($s1)
/* B1914 800FB554 26310002 */  addiu      $s1, $s1, 0x2
/* B1918 800FB558 8E640008 */  lw         $a0, 0x8($s3)
/* B191C 800FB55C 0C00306A */  jal        func_8000C1A8
/* B1920 800FB560 26100001 */   addiu     $s0, $s0, 0x1
/* B1924 800FB564 02722021 */  addu       $a0, $s3, $s2
/* B1928 800FB568 00402821 */  addu       $a1, $v0, $zero
/* B192C 800FB56C 0C0016F6 */  jal        func_80005BD8
/* B1930 800FB570 00003021 */   addu      $a2, $zero, $zero
/* B1934 800FB574 0214102B */  sltu       $v0, $s0, $s4
/* B1938 800FB578 1440FFF5 */  bnez       $v0, .Lrace_800FB550
/* B193C 800FB57C 2652000C */   addiu     $s2, $s2, 0xC
.Lrace_800FB580:
/* B1940 800FB580 8E640008 */  lw         $a0, 0x8($s3)
/* B1944 800FB584 0C00306A */  jal        func_8000C1A8
/* B1948 800FB588 32A5FFFF */   andi      $a1, $s5, 0xFFFF
/* B194C 800FB58C 26640030 */  addiu      $a0, $s3, 0x30
/* B1950 800FB590 00402821 */  addu       $a1, $v0, $zero
/* B1954 800FB594 0C0016F6 */  jal        func_80005BD8
/* B1958 800FB598 00003021 */   addu      $a2, $zero, $zero
/* B195C 800FB59C 32C5FFFF */  andi       $a1, $s6, 0xFFFF
/* B1960 800FB5A0 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* B1964 800FB5A4 10A2000A */  beq        $a1, $v0, .Lrace_800FB5D0
/* B1968 800FB5A8 2662003C */   addiu     $v0, $s3, 0x3C
/* B196C 800FB5AC 8E640008 */  lw         $a0, 0x8($s3)
/* B1970 800FB5B0 0C00306A */  jal        func_8000C1A8
/* B1974 800FB5B4 00008021 */   addu      $s0, $zero, $zero
/* B1978 800FB5B8 2664003C */  addiu      $a0, $s3, 0x3C
/* B197C 800FB5BC 00402821 */  addu       $a1, $v0, $zero
/* B1980 800FB5C0 0C0016F6 */  jal        func_80005BD8
/* B1984 800FB5C4 00003021 */   addu      $a2, $zero, $zero
/* B1988 800FB5C8 0803ED7A */  j          .Lrace_800FB5E8
/* B198C 800FB5CC 24030001 */   addiu     $v1, $zero, 0x1
.Lrace_800FB5D0:
/* B1990 800FB5D0 AE60003C */  sw         $zero, 0x3C($s3)
/* B1994 800FB5D4 A4400008 */  sh         $zero, 0x8($v0)
/* B1998 800FB5D8 A4400006 */  sh         $zero, 0x6($v0)
/* B199C 800FB5DC A4400004 */  sh         $zero, 0x4($v0)
/* B19A0 800FB5E0 00008021 */  addu       $s0, $zero, $zero
/* B19A4 800FB5E4 24030001 */  addiu      $v1, $zero, 0x1
.Lrace_800FB5E8:
/* B19A8 800FB5E8 AE74004C */  sw         $s4, 0x4C($s3)
/* B19AC 800FB5EC AE630048 */  sw         $v1, 0x48($s3)
/* B19B0 800FB5F0 8FA20058 */  lw         $v0, 0x58($sp)
/* B19B4 800FB5F4 02802021 */  addu       $a0, $s4, $zero
/* B19B8 800FB5F8 AE630058 */  sw         $v1, 0x58($s3)
/* B19BC 800FB5FC AE7E0068 */  sw         $fp, 0x68($s3)
/* B19C0 800FB600 AE600060 */  sw         $zero, 0x60($s3)
/* B19C4 800FB604 10800011 */  beqz       $a0, .Lrace_800FB64C
/* B19C8 800FB608 AE620050 */   sw        $v0, 0x50($s3)
/* B19CC 800FB60C 2411000C */  addiu      $s1, $zero, 0xC
.Lrace_800FB610:
/* B19D0 800FB610 02712821 */  addu       $a1, $s3, $s1
/* B19D4 800FB614 27A60010 */  addiu      $a2, $sp, 0x10
/* B19D8 800FB618 8E640000 */  lw         $a0, 0x0($s3)
/* B19DC 800FB61C 0C01376C */  jal        func_8004DDB0
/* B19E0 800FB620 27A70014 */   addiu     $a3, $sp, 0x14
/* B19E4 800FB624 8FA30014 */  lw         $v1, 0x14($sp)
/* B19E8 800FB628 8E620060 */  lw         $v0, 0x60($s3)
/* B19EC 800FB62C 0043102B */  sltu       $v0, $v0, $v1
/* B19F0 800FB630 54400001 */  bnel       $v0, $zero, .Lrace_800FB638
/* B19F4 800FB634 AE630060 */   sw        $v1, 0x60($s3)
.Lrace_800FB638:
/* B19F8 800FB638 8E62004C */  lw         $v0, 0x4C($s3)
/* B19FC 800FB63C 26100001 */  addiu      $s0, $s0, 0x1
/* B1A00 800FB640 0202102B */  sltu       $v0, $s0, $v0
/* B1A04 800FB644 1440FFF2 */  bnez       $v0, .Lrace_800FB610
/* B1A08 800FB648 2631000C */   addiu     $s1, $s1, 0xC
.Lrace_800FB64C:
/* B1A0C 800FB64C 8E620060 */  lw         $v0, 0x60($s3)
/* B1A10 800FB650 8E63004C */  lw         $v1, 0x4C($s3)
/* B1A14 800FB654 24420002 */  addiu      $v0, $v0, 0x2
/* B1A18 800FB658 00430018 */  mult       $v0, $v1
/* B1A1C 800FB65C AE620060 */  sw         $v0, 0x60($s3)
/* B1A20 800FB660 96E20028 */  lhu        $v0, 0x28($s7)
/* B1A24 800FB664 00021042 */  srl        $v0, $v0, 1
/* B1A28 800FB668 00004012 */  mflo       $t0
/* B1A2C 800FB66C 00081842 */  srl        $v1, $t0, 1
/* B1A30 800FB670 00431023 */  subu       $v0, $v0, $v1
/* B1A34 800FB674 AE62005C */  sw         $v0, 0x5C($s3)
/* B1A38 800FB678 8FBF003C */  lw         $ra, 0x3C($sp)
/* B1A3C 800FB67C 8FBE0038 */  lw         $fp, 0x38($sp)
/* B1A40 800FB680 8FB70034 */  lw         $s7, 0x34($sp)
/* B1A44 800FB684 8FB60030 */  lw         $s6, 0x30($sp)
/* B1A48 800FB688 8FB5002C */  lw         $s5, 0x2C($sp)
/* B1A4C 800FB68C 8FB40028 */  lw         $s4, 0x28($sp)
/* B1A50 800FB690 8FB30024 */  lw         $s3, 0x24($sp)
/* B1A54 800FB694 8FB20020 */  lw         $s2, 0x20($sp)
/* B1A58 800FB698 8FB1001C */  lw         $s1, 0x1C($sp)
/* B1A5C 800FB69C 8FB00018 */  lw         $s0, 0x18($sp)
/* B1A60 800FB6A0 03E00008 */  jr         $ra
/* B1A64 800FB6A4 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800FB6A8
/* B1A68 800FB6A8 8C820054 */  lw         $v0, 0x54($a0)
/* B1A6C 800FB6AC 00451021 */  addu       $v0, $v0, $a1
/* B1A70 800FB6B0 AC820054 */  sw         $v0, 0x54($a0)
/* B1A74 800FB6B4 2C4201F4 */  sltiu      $v0, $v0, 0x1F4
/* B1A78 800FB6B8 50400001 */  beql       $v0, $zero, .Lrace_800FB6C0
/* B1A7C 800FB6BC AC800054 */   sw        $zero, 0x54($a0)
.Lrace_800FB6C0:
/* B1A80 800FB6C0 03E00008 */  jr         $ra
/* B1A84 800FB6C4 00000000 */   nop

glabel func_race_800FB6C8
/* B1A88 800FB6C8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* B1A8C 800FB6CC AFB10044 */  sw         $s1, 0x44($sp)
/* B1A90 800FB6D0 00808821 */  addu       $s1, $a0, $zero
/* B1A94 800FB6D4 AFBF0064 */  sw         $ra, 0x64($sp)
/* B1A98 800FB6D8 AFBE0060 */  sw         $fp, 0x60($sp)
/* B1A9C 800FB6DC AFB7005C */  sw         $s7, 0x5C($sp)
/* B1AA0 800FB6E0 AFB60058 */  sw         $s6, 0x58($sp)
/* B1AA4 800FB6E4 AFB50054 */  sw         $s5, 0x54($sp)
/* B1AA8 800FB6E8 AFB40050 */  sw         $s4, 0x50($sp)
/* B1AAC 800FB6EC AFB3004C */  sw         $s3, 0x4C($sp)
/* B1AB0 800FB6F0 AFB20048 */  sw         $s2, 0x48($sp)
/* B1AB4 800FB6F4 AFB00040 */  sw         $s0, 0x40($sp)
/* B1AB8 800FB6F8 F7B40068 */  sdc1       $f20, 0x68($sp)
/* B1ABC 800FB6FC 8E230048 */  lw         $v1, 0x48($s1)
/* B1AC0 800FB700 24020001 */  addiu      $v0, $zero, 0x1
/* B1AC4 800FB704 146200DE */  bne        $v1, $v0, .Lrace_800FBA80
/* B1AC8 800FB708 00000000 */   nop
/* B1ACC 800FB70C 8E24005C */  lw         $a0, 0x5C($s1)
/* B1AD0 800FB710 8E250004 */  lw         $a1, 0x4($s1)
/* B1AD4 800FB714 8E220060 */  lw         $v0, 0x60($s1)
/* B1AD8 800FB718 8CA3012C */  lw         $v1, 0x12C($a1)
/* B1ADC 800FB71C 00829023 */  subu       $s2, $a0, $v0
/* B1AE0 800FB720 84640030 */  lh         $a0, 0x30($v1)
/* B1AE4 800FB724 8C620034 */  lw         $v0, 0x34($v1)
/* B1AE8 800FB728 0040F809 */  jalr       $v0
/* B1AEC 800FB72C 00A42021 */   addu      $a0, $a1, $a0
/* B1AF0 800FB730 02202021 */  addu       $a0, $s1, $zero
/* B1AF4 800FB734 0C03EEAD */  jal        func_race_800FBAB4
/* B1AF8 800FB738 0040F021 */   addu      $fp, $v0, $zero
/* B1AFC 800FB73C 8E220058 */  lw         $v0, 0x58($s1)
/* B1B00 800FB740 240900FF */  addiu      $t1, $zero, 0xFF
/* B1B04 800FB744 1040001C */  beqz       $v0, .Lrace_800FB7B8
/* B1B08 800FB748 AFA90038 */   sw        $t1, 0x38($sp)
/* B1B0C 800FB74C C6200054 */  lwc1       $f0, 0x54($s1)
/* B1B10 800FB750 46800020 */  cvt.s.w    $f0, $f0
/* B1B14 800FB754 3C01800D */  lui        $at, %hi(D_race_800CD000)
/* B1B18 800FB758 C422D000 */  lwc1       $f2, %lo(D_race_800CD000)($at)
/* B1B1C 800FB75C 3C01800D */  lui        $at, %hi(D_race_800CD004)
/* B1B20 800FB760 C424D004 */  lwc1       $f4, %lo(D_race_800CD004)($at)
/* B1B24 800FB764 46020003 */  div.s      $f0, $f0, $f2
/* B1B28 800FB768 46040002 */  mul.s      $f0, $f0, $f4
/* B1B2C 800FB76C 3C01800D */  lui        $at, %hi(D_race_800CD008)
/* B1B30 800FB770 C422D008 */  lwc1       $f2, %lo(D_race_800CD008)($at)
/* B1B34 800FB774 46020002 */  mul.s      $f0, $f0, $f2
/* B1B38 800FB778 3C038003 */  lui        $v1, %hi(D_8002D2B0)
/* B1B3C 800FB77C 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* B1B40 800FB780 3C01800D */  lui        $at, %hi(D_race_800CD00C)
/* B1B44 800FB784 C422D00C */  lwc1       $f2, %lo(D_race_800CD00C)($at)
/* B1B48 800FB788 4600018D */  trunc.w.s  $f6, $f0
/* B1B4C 800FB78C 44023000 */  mfc1       $v0, $f6
/* B1B50 800FB790 2442FF00 */  addiu      $v0, $v0, -0x100
/* B1B54 800FB794 304203FF */  andi       $v0, $v0, 0x3FF
/* B1B58 800FB798 00021080 */  sll        $v0, $v0, 2
/* B1B5C 800FB79C 00431021 */  addu       $v0, $v0, $v1
/* B1B60 800FB7A0 C4400000 */  lwc1       $f0, 0x0($v0)
/* B1B64 800FB7A4 46020002 */  mul.s      $f0, $f0, $f2
/* B1B68 800FB7A8 4600018D */  trunc.w.s  $f6, $f0
/* B1B6C 800FB7AC 44023000 */  mfc1       $v0, $f6
/* B1B70 800FB7B0 244200BF */  addiu      $v0, $v0, 0xBF
/* B1B74 800FB7B4 AFA20038 */  sw         $v0, 0x38($sp)
.Lrace_800FB7B8:
/* B1B78 800FB7B8 240200FF */  addiu      $v0, $zero, 0xFF
/* B1B7C 800FB7BC A3A20028 */  sb         $v0, 0x28($sp)
/* B1B80 800FB7C0 A3A20029 */  sb         $v0, 0x29($sp)
/* B1B84 800FB7C4 A3A2002A */  sb         $v0, 0x2A($sp)
/* B1B88 800FB7C8 A3A2002B */  sb         $v0, 0x2B($sp)
/* B1B8C 800FB7CC 8E220000 */  lw         $v0, 0x0($s1)
/* B1B90 800FB7D0 8BAA0028 */  lwl        $t2, 0x28($sp)
/* B1B94 800FB7D4 9BAA002B */  lwr        $t2, 0x2B($sp)
/* B1B98 800FB7D8 A84A0038 */  swl        $t2, 0x38($v0)
/* B1B9C 800FB7DC B84A003B */  swr        $t2, 0x3B($v0)
/* B1BA0 800FB7E0 8E22003C */  lw         $v0, 0x3C($s1)
/* B1BA4 800FB7E4 10400004 */  beqz       $v0, .Lrace_800FB7F8
/* B1BA8 800FB7E8 2635003C */   addiu     $s5, $s1, 0x3C
/* B1BAC 800FB7EC 8E220060 */  lw         $v0, 0x60($s1)
/* B1BB0 800FB7F0 00021042 */  srl        $v0, $v0, 1
/* B1BB4 800FB7F4 02429023 */  subu       $s2, $s2, $v0
.Lrace_800FB7F8:
/* B1BB8 800FB7F8 26300030 */  addiu      $s0, $s1, 0x30
/* B1BBC 800FB7FC 02002821 */  addu       $a1, $s0, $zero
/* B1BC0 800FB800 27B40030 */  addiu      $s4, $sp, 0x30
/* B1BC4 800FB804 02803021 */  addu       $a2, $s4, $zero
/* B1BC8 800FB808 27B30034 */  addiu      $s3, $sp, 0x34
/* B1BCC 800FB80C 8E240000 */  lw         $a0, 0x0($s1)
/* B1BD0 800FB810 0C01376C */  jal        func_8004DDB0
/* B1BD4 800FB814 02603821 */   addu      $a3, $s3, $zero
/* B1BD8 800FB818 02002821 */  addu       $a1, $s0, $zero
/* B1BDC 800FB81C 97C20026 */  lhu        $v0, 0x26($fp)
/* B1BE0 800FB820 8E240004 */  lw         $a0, 0x4($s1)
/* B1BE4 800FB824 8FA70030 */  lw         $a3, 0x30($sp)
/* B1BE8 800FB828 3C01800D */  lui        $at, %hi(D_race_800CD010)
/* B1BEC 800FB82C C434D010 */  lwc1       $f20, %lo(D_race_800CD010)($at)
/* B1BF0 800FB830 00021042 */  srl        $v0, $v0, 1
/* B1BF4 800FB834 8C83012C */  lw         $v1, 0x12C($a0)
/* B1BF8 800FB838 00073842 */  srl        $a3, $a3, 1
/* B1BFC 800FB83C 846800D8 */  lh         $t0, 0xD8($v1)
/* B1C00 800FB840 00473823 */  subu       $a3, $v0, $a3
/* B1C04 800FB844 AFB20010 */  sw         $s2, 0x10($sp)
/* B1C08 800FB848 E7B40014 */  swc1       $f20, 0x14($sp)
/* B1C0C 800FB84C E7B40018 */  swc1       $f20, 0x18($sp)
/* B1C10 800FB850 AFA0001C */  sw         $zero, 0x1C($sp)
/* B1C14 800FB854 AFA00020 */  sw         $zero, 0x20($sp)
/* B1C18 800FB858 8E260000 */  lw         $a2, 0x0($s1)
/* B1C1C 800FB85C 8C6200DC */  lw         $v0, 0xDC($v1)
/* B1C20 800FB860 0040F809 */  jalr       $v0
/* B1C24 800FB864 00882021 */   addu      $a0, $a0, $t0
/* B1C28 800FB868 8E220060 */  lw         $v0, 0x60($s1)
/* B1C2C 800FB86C 8E23003C */  lw         $v1, 0x3C($s1)
/* B1C30 800FB870 1060001A */  beqz       $v1, .Lrace_800FB8DC
/* B1C34 800FB874 02429021 */   addu      $s2, $s2, $v0
/* B1C38 800FB878 02A02821 */  addu       $a1, $s5, $zero
/* B1C3C 800FB87C 02803021 */  addu       $a2, $s4, $zero
/* B1C40 800FB880 8E240000 */  lw         $a0, 0x0($s1)
/* B1C44 800FB884 0C01376C */  jal        func_8004DDB0
/* B1C48 800FB888 02603821 */   addu      $a3, $s3, $zero
/* B1C4C 800FB88C 02A02821 */  addu       $a1, $s5, $zero
/* B1C50 800FB890 97C20026 */  lhu        $v0, 0x26($fp)
/* B1C54 800FB894 8E240004 */  lw         $a0, 0x4($s1)
/* B1C58 800FB898 8FA70030 */  lw         $a3, 0x30($sp)
/* B1C5C 800FB89C 00021042 */  srl        $v0, $v0, 1
/* B1C60 800FB8A0 8C83012C */  lw         $v1, 0x12C($a0)
/* B1C64 800FB8A4 00073842 */  srl        $a3, $a3, 1
/* B1C68 800FB8A8 846800D8 */  lh         $t0, 0xD8($v1)
/* B1C6C 800FB8AC 00473823 */  subu       $a3, $v0, $a3
/* B1C70 800FB8B0 AFB20010 */  sw         $s2, 0x10($sp)
/* B1C74 800FB8B4 E7B40014 */  swc1       $f20, 0x14($sp)
/* B1C78 800FB8B8 E7B40018 */  swc1       $f20, 0x18($sp)
/* B1C7C 800FB8BC AFA0001C */  sw         $zero, 0x1C($sp)
/* B1C80 800FB8C0 AFA00020 */  sw         $zero, 0x20($sp)
/* B1C84 800FB8C4 8E260000 */  lw         $a2, 0x0($s1)
/* B1C88 800FB8C8 8C6200DC */  lw         $v0, 0xDC($v1)
/* B1C8C 800FB8CC 0040F809 */  jalr       $v0
/* B1C90 800FB8D0 00882021 */   addu      $a0, $a0, $t0
/* B1C94 800FB8D4 8E220060 */  lw         $v0, 0x60($s1)
/* B1C98 800FB8D8 02429021 */  addu       $s2, $s2, $v0
.Lrace_800FB8DC:
/* B1C9C 800FB8DC 0000A821 */  addu       $s5, $zero, $zero
/* B1CA0 800FB8E0 241600FF */  addiu      $s6, $zero, 0xFF
/* B1CA4 800FB8E4 2417007F */  addiu      $s7, $zero, 0x7F
/* B1CA8 800FB8E8 2414000C */  addiu      $s4, $zero, 0xC
.Lrace_800FB8EC:
/* B1CAC 800FB8EC 8E22004C */  lw         $v0, 0x4C($s1)
/* B1CB0 800FB8F0 02A2102B */  sltu       $v0, $s5, $v0
/* B1CB4 800FB8F4 10400058 */  beqz       $v0, .Lrace_800FBA58
/* B1CB8 800FB8F8 02349821 */   addu      $s3, $s1, $s4
/* B1CBC 800FB8FC 02602821 */  addu       $a1, $s3, $zero
/* B1CC0 800FB900 27A60030 */  addiu      $a2, $sp, 0x30
/* B1CC4 800FB904 8E240000 */  lw         $a0, 0x0($s1)
/* B1CC8 800FB908 0C01376C */  jal        func_8004DDB0
/* B1CCC 800FB90C 27A70034 */   addiu     $a3, $sp, 0x34
/* B1CD0 800FB910 97C20026 */  lhu        $v0, 0x26($fp)
/* B1CD4 800FB914 8FA30030 */  lw         $v1, 0x30($sp)
/* B1CD8 800FB918 8E240058 */  lw         $a0, 0x58($s1)
/* B1CDC 800FB91C 00021042 */  srl        $v0, $v0, 1
/* B1CE0 800FB920 00031842 */  srl        $v1, $v1, 1
/* B1CE4 800FB924 1080002F */  beqz       $a0, .Lrace_800FB9E4
/* B1CE8 800FB928 00438023 */   subu      $s0, $v0, $v1
/* B1CEC 800FB92C 8E220050 */  lw         $v0, 0x50($s1)
/* B1CF0 800FB930 1455002D */  bne        $v0, $s5, .Lrace_800FB9E8
/* B1CF4 800FB934 24020012 */   addiu     $v0, $zero, 0x12
/* B1CF8 800FB938 24020024 */  addiu      $v0, $zero, 0x24
/* B1CFC 800FB93C A3B60028 */  sb         $s6, 0x28($sp)
/* B1D00 800FB940 A3B60029 */  sb         $s6, 0x29($sp)
/* B1D04 800FB944 A3A2002A */  sb         $v0, 0x2A($sp)
/* B1D08 800FB948 A3B6002B */  sb         $s6, 0x2B($sp)
/* B1D0C 800FB94C 8E220000 */  lw         $v0, 0x0($s1)
/* B1D10 800FB950 8BAA0028 */  lwl        $t2, 0x28($sp)
/* B1D14 800FB954 9BAA002B */  lwr        $t2, 0x2B($sp)
/* B1D18 800FB958 A84A0038 */  swl        $t2, 0x38($v0)
/* B1D1C 800FB95C B84A003B */  swr        $t2, 0x3B($v0)
/* B1D20 800FB960 8E230004 */  lw         $v1, 0x4($s1)
/* B1D24 800FB964 24060001 */  addiu      $a2, $zero, 0x1
/* B1D28 800FB968 8C62012C */  lw         $v0, 0x12C($v1)
/* B1D2C 800FB96C 8FA50038 */  lw         $a1, 0x38($sp)
/* B1D30 800FB970 84440170 */  lh         $a0, 0x170($v0)
/* B1D34 800FB974 8C420174 */  lw         $v0, 0x174($v0)
/* B1D38 800FB978 0040F809 */  jalr       $v0
/* B1D3C 800FB97C 00642021 */   addu      $a0, $v1, $a0
/* B1D40 800FB980 8E220054 */  lw         $v0, 0x54($s1)
/* B1D44 800FB984 2C4200FA */  sltiu      $v0, $v0, 0xFA
/* B1D48 800FB988 1040000E */  beqz       $v0, .Lrace_800FB9C4
/* B1D4C 800FB98C 02602821 */   addu      $a1, $s3, $zero
/* B1D50 800FB990 8E240004 */  lw         $a0, 0x4($s1)
/* B1D54 800FB994 8C82012C */  lw         $v0, 0x12C($a0)
/* B1D58 800FB998 844300D8 */  lh         $v1, 0xD8($v0)
/* B1D5C 800FB99C 02003821 */  addu       $a3, $s0, $zero
/* B1D60 800FB9A0 AFB20010 */  sw         $s2, 0x10($sp)
/* B1D64 800FB9A4 E7B40014 */  swc1       $f20, 0x14($sp)
/* B1D68 800FB9A8 E7B40018 */  swc1       $f20, 0x18($sp)
/* B1D6C 800FB9AC AFA0001C */  sw         $zero, 0x1C($sp)
/* B1D70 800FB9B0 AFA00020 */  sw         $zero, 0x20($sp)
/* B1D74 800FB9B4 8E260000 */  lw         $a2, 0x0($s1)
/* B1D78 800FB9B8 8C4200DC */  lw         $v0, 0xDC($v0)
/* B1D7C 800FB9BC 0040F809 */  jalr       $v0
/* B1D80 800FB9C0 00832021 */   addu      $a0, $a0, $v1
.Lrace_800FB9C4:
/* B1D84 800FB9C4 8E230004 */  lw         $v1, 0x4($s1)
/* B1D88 800FB9C8 8C62012C */  lw         $v0, 0x12C($v1)
/* B1D8C 800FB9CC 84440178 */  lh         $a0, 0x178($v0)
/* B1D90 800FB9D0 8C42017C */  lw         $v0, 0x17C($v0)
/* B1D94 800FB9D4 0040F809 */  jalr       $v0
/* B1D98 800FB9D8 00642021 */   addu      $a0, $v1, $a0
/* B1D9C 800FB9DC 0803EE92 */  j          .Lrace_800FBA48
/* B1DA0 800FB9E0 2694000C */   addiu     $s4, $s4, 0xC
.Lrace_800FB9E4:
/* B1DA4 800FB9E4 24020012 */  addiu      $v0, $zero, 0x12
.Lrace_800FB9E8:
/* B1DA8 800FB9E8 A3B70028 */  sb         $s7, 0x28($sp)
/* B1DAC 800FB9EC A3B70029 */  sb         $s7, 0x29($sp)
/* B1DB0 800FB9F0 A3A2002A */  sb         $v0, 0x2A($sp)
/* B1DB4 800FB9F4 A3B6002B */  sb         $s6, 0x2B($sp)
/* B1DB8 800FB9F8 8E220000 */  lw         $v0, 0x0($s1)
/* B1DBC 800FB9FC 8BAA0028 */  lwl        $t2, 0x28($sp)
/* B1DC0 800FBA00 9BAA002B */  lwr        $t2, 0x2B($sp)
/* B1DC4 800FBA04 A84A0038 */  swl        $t2, 0x38($v0)
/* B1DC8 800FBA08 B84A003B */  swr        $t2, 0x3B($v0)
/* B1DCC 800FBA0C 8E240004 */  lw         $a0, 0x4($s1)
/* B1DD0 800FBA10 8C82012C */  lw         $v0, 0x12C($a0)
/* B1DD4 800FBA14 02342821 */  addu       $a1, $s1, $s4
/* B1DD8 800FBA18 844300D8 */  lh         $v1, 0xD8($v0)
/* B1DDC 800FBA1C 02003821 */  addu       $a3, $s0, $zero
/* B1DE0 800FBA20 AFB20010 */  sw         $s2, 0x10($sp)
/* B1DE4 800FBA24 E7B40014 */  swc1       $f20, 0x14($sp)
/* B1DE8 800FBA28 E7B40018 */  swc1       $f20, 0x18($sp)
/* B1DEC 800FBA2C AFA0001C */  sw         $zero, 0x1C($sp)
/* B1DF0 800FBA30 AFA00020 */  sw         $zero, 0x20($sp)
/* B1DF4 800FBA34 8E260000 */  lw         $a2, 0x0($s1)
/* B1DF8 800FBA38 8C4200DC */  lw         $v0, 0xDC($v0)
/* B1DFC 800FBA3C 0040F809 */  jalr       $v0
/* B1E00 800FBA40 00832021 */   addu      $a0, $a0, $v1
/* B1E04 800FBA44 2694000C */  addiu      $s4, $s4, 0xC
.Lrace_800FBA48:
/* B1E08 800FBA48 8E220060 */  lw         $v0, 0x60($s1)
/* B1E0C 800FBA4C 26B50001 */  addiu      $s5, $s5, 0x1
/* B1E10 800FBA50 0803EE3B */  j          .Lrace_800FB8EC
/* B1E14 800FBA54 02429021 */   addu      $s2, $s2, $v0
.Lrace_800FBA58:
/* B1E18 800FBA58 240200FF */  addiu      $v0, $zero, 0xFF
/* B1E1C 800FBA5C A3A20028 */  sb         $v0, 0x28($sp)
/* B1E20 800FBA60 A3A20029 */  sb         $v0, 0x29($sp)
/* B1E24 800FBA64 A3A2002A */  sb         $v0, 0x2A($sp)
/* B1E28 800FBA68 A3A2002B */  sb         $v0, 0x2B($sp)
/* B1E2C 800FBA6C 8E220000 */  lw         $v0, 0x0($s1)
/* B1E30 800FBA70 8BAA0028 */  lwl        $t2, 0x28($sp)
/* B1E34 800FBA74 9BAA002B */  lwr        $t2, 0x2B($sp)
/* B1E38 800FBA78 A84A0038 */  swl        $t2, 0x38($v0)
/* B1E3C 800FBA7C B84A003B */  swr        $t2, 0x3B($v0)
.Lrace_800FBA80:
/* B1E40 800FBA80 8FBF0064 */  lw         $ra, 0x64($sp)
/* B1E44 800FBA84 8FBE0060 */  lw         $fp, 0x60($sp)
/* B1E48 800FBA88 8FB7005C */  lw         $s7, 0x5C($sp)
/* B1E4C 800FBA8C 8FB60058 */  lw         $s6, 0x58($sp)
/* B1E50 800FBA90 8FB50054 */  lw         $s5, 0x54($sp)
/* B1E54 800FBA94 8FB40050 */  lw         $s4, 0x50($sp)
/* B1E58 800FBA98 8FB3004C */  lw         $s3, 0x4C($sp)
/* B1E5C 800FBA9C 8FB20048 */  lw         $s2, 0x48($sp)
/* B1E60 800FBAA0 8FB10044 */  lw         $s1, 0x44($sp)
/* B1E64 800FBAA4 8FB00040 */  lw         $s0, 0x40($sp)
/* B1E68 800FBAA8 D7B40068 */  ldc1       $f20, 0x68($sp)
/* B1E6C 800FBAAC 03E00008 */  jr         $ra
/* B1E70 800FBAB0 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_800FBAB4
/* B1E74 800FBAB4 27BDFF68 */  addiu      $sp, $sp, -0x98
/* B1E78 800FBAB8 AFB20090 */  sw         $s2, 0x90($sp)
/* B1E7C 800FBABC 00809021 */  addu       $s2, $a0, $zero
/* B1E80 800FBAC0 AFBF0094 */  sw         $ra, 0x94($sp)
/* B1E84 800FBAC4 AFB1008C */  sw         $s1, 0x8C($sp)
/* B1E88 800FBAC8 AFB00088 */  sw         $s0, 0x88($sp)
/* B1E8C 800FBACC 8E430004 */  lw         $v1, 0x4($s2)
/* B1E90 800FBAD0 00002821 */  addu       $a1, $zero, $zero
/* B1E94 800FBAD4 8C62012C */  lw         $v0, 0x12C($v1)
/* B1E98 800FBAD8 00A03021 */  addu       $a2, $a1, $zero
/* B1E9C 800FBADC 84440170 */  lh         $a0, 0x170($v0)
/* B1EA0 800FBAE0 8C420174 */  lw         $v0, 0x174($v0)
/* B1EA4 800FBAE4 0040F809 */  jalr       $v0
/* B1EA8 800FBAE8 00642021 */   addu      $a0, $v1, $a0
/* B1EAC 800FBAEC AFA0001C */  sw         $zero, 0x1C($sp)
/* B1EB0 800FBAF0 AFA00018 */  sw         $zero, 0x18($sp)
/* B1EB4 800FBAF4 8E430004 */  lw         $v1, 0x4($s2)
/* B1EB8 800FBAF8 8C62012C */  lw         $v0, 0x12C($v1)
/* B1EBC 800FBAFC 84440030 */  lh         $a0, 0x30($v0)
/* B1EC0 800FBB00 8C420034 */  lw         $v0, 0x34($v0)
/* B1EC4 800FBB04 0040F809 */  jalr       $v0
/* B1EC8 800FBB08 00642021 */   addu      $a0, $v1, $a0
/* B1ECC 800FBB0C 94420028 */  lhu        $v0, 0x28($v0)
/* B1ED0 800FBB10 AFA20024 */  sw         $v0, 0x24($sp)
/* B1ED4 800FBB14 8E430004 */  lw         $v1, 0x4($s2)
/* B1ED8 800FBB18 8C62012C */  lw         $v0, 0x12C($v1)
/* B1EDC 800FBB1C 84440030 */  lh         $a0, 0x30($v0)
/* B1EE0 800FBB20 8C420034 */  lw         $v0, 0x34($v0)
/* B1EE4 800FBB24 0040F809 */  jalr       $v0
/* B1EE8 800FBB28 00642021 */   addu      $a0, $v1, $a0
/* B1EEC 800FBB2C 27A50040 */  addiu      $a1, $sp, 0x40
/* B1EF0 800FBB30 C7A00018 */  lwc1       $f0, 0x18($sp)
/* B1EF4 800FBB34 46800020 */  cvt.s.w    $f0, $f0
/* B1EF8 800FBB38 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* B1EFC 800FBB3C 468010A0 */  cvt.s.w    $f2, $f2
/* B1F00 800FBB40 94430026 */  lhu        $v1, 0x26($v0)
/* B1F04 800FBB44 24020040 */  addiu      $v0, $zero, 0x40
/* B1F08 800FBB48 C7A40024 */  lwc1       $f4, 0x24($sp)
/* B1F0C 800FBB4C 46802120 */  cvt.s.w    $f4, $f4
/* B1F10 800FBB50 27B10028 */  addiu      $s1, $sp, 0x28
/* B1F14 800FBB54 E7A00028 */  swc1       $f0, 0x28($sp)
/* B1F18 800FBB58 E7A2002C */  swc1       $f2, 0x2C($sp)
/* B1F1C 800FBB5C AFA00030 */  sw         $zero, 0x30($sp)
/* B1F20 800FBB60 AFA00034 */  sw         $zero, 0x34($sp)
/* B1F24 800FBB64 AFA00038 */  sw         $zero, 0x38($sp)
/* B1F28 800FBB68 A3A0003C */  sb         $zero, 0x3C($sp)
/* B1F2C 800FBB6C A3A0003D */  sb         $zero, 0x3D($sp)
/* B1F30 800FBB70 A3A0003E */  sb         $zero, 0x3E($sp)
/* B1F34 800FBB74 A3A2003F */  sb         $v0, 0x3F($sp)
/* B1F38 800FBB78 E7A00040 */  swc1       $f0, 0x40($sp)
/* B1F3C 800FBB7C E7A40044 */  swc1       $f4, 0x44($sp)
/* B1F40 800FBB80 AFA00048 */  sw         $zero, 0x48($sp)
/* B1F44 800FBB84 AFA0004C */  sw         $zero, 0x4C($sp)
/* B1F48 800FBB88 AFA00050 */  sw         $zero, 0x50($sp)
/* B1F4C 800FBB8C A3A00054 */  sb         $zero, 0x54($sp)
/* B1F50 800FBB90 A3A00055 */  sb         $zero, 0x55($sp)
/* B1F54 800FBB94 A3A00056 */  sb         $zero, 0x56($sp)
/* B1F58 800FBB98 A3A20057 */  sb         $v0, 0x57($sp)
/* B1F5C 800FBB9C E7A2005C */  swc1       $f2, 0x5C($sp)
/* B1F60 800FBBA0 AFA00060 */  sw         $zero, 0x60($sp)
/* B1F64 800FBBA4 AFA00064 */  sw         $zero, 0x64($sp)
/* B1F68 800FBBA8 AFA00068 */  sw         $zero, 0x68($sp)
/* B1F6C 800FBBAC A3A0006C */  sb         $zero, 0x6C($sp)
/* B1F70 800FBBB0 A3A0006D */  sb         $zero, 0x6D($sp)
/* B1F74 800FBBB4 A3A0006E */  sb         $zero, 0x6E($sp)
/* B1F78 800FBBB8 A3A2006F */  sb         $v0, 0x6F($sp)
/* B1F7C 800FBBBC 44830000 */  mtc1       $v1, $f0
/* B1F80 800FBBC0 46800020 */  cvt.s.w    $f0, $f0
/* B1F84 800FBBC4 AFA30020 */  sw         $v1, 0x20($sp)
/* B1F88 800FBBC8 E7A00058 */  swc1       $f0, 0x58($sp)
/* B1F8C 800FBBCC E7A00070 */  swc1       $f0, 0x70($sp)
/* B1F90 800FBBD0 E7A40074 */  swc1       $f4, 0x74($sp)
/* B1F94 800FBBD4 AFA00078 */  sw         $zero, 0x78($sp)
/* B1F98 800FBBD8 AFA0007C */  sw         $zero, 0x7C($sp)
/* B1F9C 800FBBDC AFA00080 */  sw         $zero, 0x80($sp)
/* B1FA0 800FBBE0 A3A00084 */  sb         $zero, 0x84($sp)
/* B1FA4 800FBBE4 A3A00085 */  sb         $zero, 0x85($sp)
/* B1FA8 800FBBE8 A3A00086 */  sb         $zero, 0x86($sp)
/* B1FAC 800FBBEC A3A20087 */  sb         $v0, 0x87($sp)
/* B1FB0 800FBBF0 8E430004 */  lw         $v1, 0x4($s2)
/* B1FB4 800FBBF4 02203021 */  addu       $a2, $s1, $zero
/* B1FB8 800FBBF8 8C62012C */  lw         $v0, 0x12C($v1)
/* B1FBC 800FBBFC 27B00070 */  addiu      $s0, $sp, 0x70
/* B1FC0 800FBC00 84440110 */  lh         $a0, 0x110($v0)
/* B1FC4 800FBC04 02003821 */  addu       $a3, $s0, $zero
/* B1FC8 800FBC08 AFA00010 */  sw         $zero, 0x10($sp)
/* B1FCC 800FBC0C AFA00014 */  sw         $zero, 0x14($sp)
/* B1FD0 800FBC10 8C420114 */  lw         $v0, 0x114($v0)
/* B1FD4 800FBC14 0040F809 */  jalr       $v0
/* B1FD8 800FBC18 00642021 */   addu      $a0, $v1, $a0
/* B1FDC 800FBC1C 8E430004 */  lw         $v1, 0x4($s2)
/* B1FE0 800FBC20 02002821 */  addu       $a1, $s0, $zero
/* B1FE4 800FBC24 8C62012C */  lw         $v0, 0x12C($v1)
/* B1FE8 800FBC28 02203021 */  addu       $a2, $s1, $zero
/* B1FEC 800FBC2C 84440110 */  lh         $a0, 0x110($v0)
/* B1FF0 800FBC30 27A70058 */  addiu      $a3, $sp, 0x58
/* B1FF4 800FBC34 AFA00010 */  sw         $zero, 0x10($sp)
/* B1FF8 800FBC38 AFA00014 */  sw         $zero, 0x14($sp)
/* B1FFC 800FBC3C 8C420114 */  lw         $v0, 0x114($v0)
/* B2000 800FBC40 0040F809 */  jalr       $v0
/* B2004 800FBC44 00642021 */   addu      $a0, $v1, $a0
/* B2008 800FBC48 8E430004 */  lw         $v1, 0x4($s2)
/* B200C 800FBC4C 8C62012C */  lw         $v0, 0x12C($v1)
/* B2010 800FBC50 84440178 */  lh         $a0, 0x178($v0)
/* B2014 800FBC54 8C42017C */  lw         $v0, 0x17C($v0)
/* B2018 800FBC58 0040F809 */  jalr       $v0
/* B201C 800FBC5C 00642021 */   addu      $a0, $v1, $a0
/* B2020 800FBC60 8FBF0094 */  lw         $ra, 0x94($sp)
/* B2024 800FBC64 8FB20090 */  lw         $s2, 0x90($sp)
/* B2028 800FBC68 8FB1008C */  lw         $s1, 0x8C($sp)
/* B202C 800FBC6C 8FB00088 */  lw         $s0, 0x88($sp)
/* B2030 800FBC70 03E00008 */  jr         $ra
/* B2034 800FBC74 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_race_800FBC78
/* B2038 800FBC78 8C830048 */  lw         $v1, 0x48($a0)
/* B203C 800FBC7C 24020001 */  addiu      $v0, $zero, 0x1
/* B2040 800FBC80 14620036 */  bne        $v1, $v0, .Lrace_800FBD5C
/* B2044 800FBC84 00000000 */   nop
/* B2048 800FBC88 8C820058 */  lw         $v0, 0x58($a0)
/* B204C 800FBC8C 10400033 */  beqz       $v0, .Lrace_800FBD5C
/* B2050 800FBC90 00000000 */   nop
/* B2054 800FBC94 8C820068 */  lw         $v0, 0x68($a0)
/* B2058 800FBC98 50400003 */  beql       $v0, $zero, .Lrace_800FBCA8
/* B205C 800FBC9C 3C023000 */   lui       $v0, (0x3000000D >> 16)
/* B2060 800FBCA0 14C2002E */  bne        $a2, $v0, .Lrace_800FBD5C
/* B2064 800FBCA4 3C023000 */   lui       $v0, (0x3000000D >> 16)
.Lrace_800FBCA8:
/* B2068 800FBCA8 3442000D */  ori        $v0, $v0, (0x3000000D & 0xFFFF)
/* B206C 800FBCAC 10A20027 */  beq        $a1, $v0, .Lrace_800FBD4C
/* B2070 800FBCB0 0045102B */   sltu      $v0, $v0, $a1
/* B2074 800FBCB4 1440000A */  bnez       $v0, .Lrace_800FBCE0
/* B2078 800FBCB8 3C024000 */   lui       $v0, (0x40000002 >> 16)
/* B207C 800FBCBC 3C023000 */  lui        $v0, (0x3000000A >> 16)
/* B2080 800FBCC0 3442000A */  ori        $v0, $v0, (0x3000000A & 0xFFFF)
/* B2084 800FBCC4 10A2001A */  beq        $a1, $v0, .Lrace_800FBD30
/* B2088 800FBCC8 3C023000 */   lui       $v0, (0x3000000B >> 16)
/* B208C 800FBCCC 3442000B */  ori        $v0, $v0, (0x3000000B & 0xFFFF)
/* B2090 800FBCD0 10A20011 */  beq        $a1, $v0, .Lrace_800FBD18
/* B2094 800FBCD4 00000000 */   nop
/* B2098 800FBCD8 0803EF54 */  j          .Lrace_800FBD50
/* B209C 800FBCDC 00000000 */   nop
.Lrace_800FBCE0:
/* B20A0 800FBCE0 34420002 */  ori        $v0, $v0, (0x40000002 & 0xFFFF)
/* B20A4 800FBCE4 10A20012 */  beq        $a1, $v0, .Lrace_800FBD30
/* B20A8 800FBCE8 0045102B */   sltu      $v0, $v0, $a1
/* B20AC 800FBCEC 14400007 */  bnez       $v0, .Lrace_800FBD0C
/* B20B0 800FBCF0 3C024000 */   lui       $v0, (0x40000003 >> 16)
/* B20B4 800FBCF4 3C023000 */  lui        $v0, (0x3000000F >> 16)
/* B20B8 800FBCF8 3442000F */  ori        $v0, $v0, (0x3000000F & 0xFFFF)
/* B20BC 800FBCFC 50A20014 */  beql       $a1, $v0, .Lrace_800FBD50
/* B20C0 800FBD00 AC800058 */   sw        $zero, 0x58($a0)
/* B20C4 800FBD04 0803EF54 */  j          .Lrace_800FBD50
/* B20C8 800FBD08 00000000 */   nop
.Lrace_800FBD0C:
/* B20CC 800FBD0C 34420003 */  ori        $v0, $v0, (0x40000003 & 0xFFFF)
/* B20D0 800FBD10 14A2000F */  bne        $a1, $v0, .Lrace_800FBD50
/* B20D4 800FBD14 00000000 */   nop
.Lrace_800FBD18:
/* B20D8 800FBD18 8C830050 */  lw         $v1, 0x50($a0)
/* B20DC 800FBD1C 14600009 */  bnez       $v1, .Lrace_800FBD44
/* B20E0 800FBD20 2463FFFF */   addiu     $v1, $v1, -0x1
/* B20E4 800FBD24 8C82004C */  lw         $v0, 0x4C($a0)
/* B20E8 800FBD28 0803EF51 */  j          .Lrace_800FBD44
/* B20EC 800FBD2C 2443FFFF */   addiu     $v1, $v0, -0x1
.Lrace_800FBD30:
/* B20F0 800FBD30 8C830050 */  lw         $v1, 0x50($a0)
/* B20F4 800FBD34 8C82004C */  lw         $v0, 0x4C($a0)
/* B20F8 800FBD38 24630001 */  addiu      $v1, $v1, 0x1
/* B20FC 800FBD3C 50620001 */  beql       $v1, $v0, .Lrace_800FBD44
/* B2100 800FBD40 00001821 */   addu      $v1, $zero, $zero
.Lrace_800FBD44:
/* B2104 800FBD44 0803EF54 */  j          .Lrace_800FBD50
/* B2108 800FBD48 AC830050 */   sw        $v1, 0x50($a0)
.Lrace_800FBD4C:
/* B210C 800FBD4C AC800058 */  sw         $zero, 0x58($a0)
.Lrace_800FBD50:
/* B2110 800FBD50 8C820064 */  lw         $v0, 0x64($a0)
/* B2114 800FBD54 50A20001 */  beql       $a1, $v0, .Lrace_800FBD5C
/* B2118 800FBD58 AC800058 */   sw        $zero, 0x58($a0)
.Lrace_800FBD5C:
/* B211C 800FBD5C 03E00008 */  jr         $ra
/* B2120 800FBD60 00000000 */   nop

glabel func_race_800FBD64
/* B2124 800FBD64 8C820068 */  lw         $v0, 0x68($a0)
/* B2128 800FBD68 50400003 */  beql       $v0, $zero, .Lrace_800FBD78
/* B212C 800FBD6C 3C023000 */   lui       $v0, (0x3000000D >> 16)
/* B2130 800FBD70 14C2000E */  bne        $a2, $v0, .Lrace_800FBDAC
/* B2134 800FBD74 3C023000 */   lui       $v0, (0x3000000D >> 16)
.Lrace_800FBD78:
/* B2138 800FBD78 3442000D */  ori        $v0, $v0, (0x3000000D & 0xFFFF)
/* B213C 800FBD7C 10A20007 */  beq        $a1, $v0, .Lrace_800FBD9C
/* B2140 800FBD80 3C023000 */   lui       $v0, (0x3000000F >> 16)
/* B2144 800FBD84 3442000F */  ori        $v0, $v0, (0x3000000F & 0xFFFF)
/* B2148 800FBD88 10A20004 */  beq        $a1, $v0, .Lrace_800FBD9C
/* B214C 800FBD8C 00000000 */   nop
/* B2150 800FBD90 8C820064 */  lw         $v0, 0x64($a0)
/* B2154 800FBD94 14A20005 */  bne        $a1, $v0, .Lrace_800FBDAC
/* B2158 800FBD98 00000000 */   nop
.Lrace_800FBD9C:
/* B215C 800FBD9C 8C820058 */  lw         $v0, 0x58($a0)
/* B2160 800FBDA0 14400002 */  bnez       $v0, .Lrace_800FBDAC
/* B2164 800FBDA4 24020002 */   addiu     $v0, $zero, 0x2
/* B2168 800FBDA8 AC820048 */  sw         $v0, 0x48($a0)
.Lrace_800FBDAC:
/* B216C 800FBDAC 03E00008 */  jr         $ra
/* B2170 800FBDB0 00000000 */   nop
