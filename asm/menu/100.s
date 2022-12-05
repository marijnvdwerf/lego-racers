.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800E15E0
/* FF6D0 800E15E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FF6D4 800E15E4 AFB00010 */  sw         $s0, 0x10($sp)
/* FF6D8 800E15E8 00808021 */  addu       $s0, $a0, $zero
/* FF6DC 800E15EC 3C02800D */  lui        $v0, %hi(D_menu_800CAFD0)
/* FF6E0 800E15F0 2442AFD0 */  addiu      $v0, $v0, %lo(D_menu_800CAFD0)
/* FF6E4 800E15F4 26040014 */  addiu      $a0, $s0, 0x14
/* FF6E8 800E15F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* FF6EC 800E15FC 0C01FC3C */  jal        func_8007F0F0
/* FF6F0 800E1600 AE020000 */   sw        $v0, 0x0($s0)
/* FF6F4 800E1604 0C01637C */  jal        func_80058DF0
/* FF6F8 800E1608 260400A8 */   addiu     $a0, $s0, 0xA8
/* FF6FC 800E160C 0C01637C */  jal        func_80058DF0
/* FF700 800E1610 260400BC */   addiu     $a0, $s0, 0xBC
/* FF704 800E1614 0C01637C */  jal        func_80058DF0
/* FF708 800E1618 260400D0 */   addiu     $a0, $s0, 0xD0
/* FF70C 800E161C 0C01637C */  jal        func_80058DF0
/* FF710 800E1620 260400E4 */   addiu     $a0, $s0, 0xE4
/* FF714 800E1624 0C01637C */  jal        func_80058DF0
/* FF718 800E1628 260400F8 */   addiu     $a0, $s0, 0xF8
/* FF71C 800E162C 0C01637C */  jal        func_80058DF0
/* FF720 800E1630 2604010C */   addiu     $a0, $s0, 0x10C
/* FF724 800E1634 0C01637C */  jal        func_80058DF0
/* FF728 800E1638 26040120 */   addiu     $a0, $s0, 0x120
/* FF72C 800E163C 0C01637C */  jal        func_80058DF0
/* FF730 800E1640 2604013C */   addiu     $a0, $s0, 0x13C
/* FF734 800E1644 0C01637C */  jal        func_80058DF0
/* FF738 800E1648 26040150 */   addiu     $a0, $s0, 0x150
/* FF73C 800E164C 0C01637C */  jal        func_80058DF0
/* FF740 800E1650 26040164 */   addiu     $a0, $s0, 0x164
/* FF744 800E1654 0C01637C */  jal        func_80058DF0
/* FF748 800E1658 26040178 */   addiu     $a0, $s0, 0x178
/* FF74C 800E165C 0C01637C */  jal        func_80058DF0
/* FF750 800E1660 2604018C */   addiu     $a0, $s0, 0x18C
/* FF754 800E1664 0C01637C */  jal        func_80058DF0
/* FF758 800E1668 260401A0 */   addiu     $a0, $s0, 0x1A0
/* FF75C 800E166C 0C01637C */  jal        func_80058DF0
/* FF760 800E1670 260401B4 */   addiu     $a0, $s0, 0x1B4
/* FF764 800E1674 0C01637C */  jal        func_80058DF0
/* FF768 800E1678 260401C8 */   addiu     $a0, $s0, 0x1C8
/* FF76C 800E167C 0C01637C */  jal        func_80058DF0
/* FF770 800E1680 260401DC */   addiu     $a0, $s0, 0x1DC
/* FF774 800E1684 0C01637C */  jal        func_80058DF0
/* FF778 800E1688 260401F0 */   addiu     $a0, $s0, 0x1F0
/* FF77C 800E168C 0C01637C */  jal        func_80058DF0
/* FF780 800E1690 26040204 */   addiu     $a0, $s0, 0x204
/* FF784 800E1694 0C01637C */  jal        func_80058DF0
/* FF788 800E1698 26040218 */   addiu     $a0, $s0, 0x218
/* FF78C 800E169C 0C0385FB */  jal        func_menu_800E17EC
/* FF790 800E16A0 02002021 */   addu      $a0, $s0, $zero
/* FF794 800E16A4 02001021 */  addu       $v0, $s0, $zero
/* FF798 800E16A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* FF79C 800E16AC 8FB00010 */  lw         $s0, 0x10($sp)
/* FF7A0 800E16B0 03E00008 */  jr         $ra
/* FF7A4 800E16B4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E16B8
/* FF7A8 800E16B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FF7AC 800E16BC AFB10014 */  sw         $s1, 0x14($sp)
/* FF7B0 800E16C0 00808821 */  addu       $s1, $a0, $zero
/* FF7B4 800E16C4 AFB00010 */  sw         $s0, 0x10($sp)
/* FF7B8 800E16C8 00A08021 */  addu       $s0, $a1, $zero
/* FF7BC 800E16CC 3C02800D */  lui        $v0, %hi(D_menu_800CAFD0)
/* FF7C0 800E16D0 2442AFD0 */  addiu      $v0, $v0, %lo(D_menu_800CAFD0)
/* FF7C4 800E16D4 AFBF0018 */  sw         $ra, 0x18($sp)
/* FF7C8 800E16D8 0C0387A4 */  jal        func_menu_800E1E90
/* FF7CC 800E16DC AE220000 */   sw        $v0, 0x0($s1)
/* FF7D0 800E16E0 26240218 */  addiu      $a0, $s1, 0x218
/* FF7D4 800E16E4 0C016383 */  jal        func_80058E0C
/* FF7D8 800E16E8 24050002 */   addiu     $a1, $zero, 0x2
/* FF7DC 800E16EC 26240204 */  addiu      $a0, $s1, 0x204
/* FF7E0 800E16F0 0C016383 */  jal        func_80058E0C
/* FF7E4 800E16F4 24050002 */   addiu     $a1, $zero, 0x2
/* FF7E8 800E16F8 262401F0 */  addiu      $a0, $s1, 0x1F0
/* FF7EC 800E16FC 0C016383 */  jal        func_80058E0C
/* FF7F0 800E1700 24050002 */   addiu     $a1, $zero, 0x2
/* FF7F4 800E1704 262401DC */  addiu      $a0, $s1, 0x1DC
/* FF7F8 800E1708 0C016383 */  jal        func_80058E0C
/* FF7FC 800E170C 24050002 */   addiu     $a1, $zero, 0x2
/* FF800 800E1710 262401C8 */  addiu      $a0, $s1, 0x1C8
/* FF804 800E1714 0C016383 */  jal        func_80058E0C
/* FF808 800E1718 24050002 */   addiu     $a1, $zero, 0x2
/* FF80C 800E171C 262401B4 */  addiu      $a0, $s1, 0x1B4
/* FF810 800E1720 0C016383 */  jal        func_80058E0C
/* FF814 800E1724 24050002 */   addiu     $a1, $zero, 0x2
/* FF818 800E1728 262401A0 */  addiu      $a0, $s1, 0x1A0
/* FF81C 800E172C 0C016383 */  jal        func_80058E0C
/* FF820 800E1730 24050002 */   addiu     $a1, $zero, 0x2
/* FF824 800E1734 2624018C */  addiu      $a0, $s1, 0x18C
/* FF828 800E1738 0C016383 */  jal        func_80058E0C
/* FF82C 800E173C 24050002 */   addiu     $a1, $zero, 0x2
/* FF830 800E1740 26240178 */  addiu      $a0, $s1, 0x178
/* FF834 800E1744 0C016383 */  jal        func_80058E0C
/* FF838 800E1748 24050002 */   addiu     $a1, $zero, 0x2
/* FF83C 800E174C 26240164 */  addiu      $a0, $s1, 0x164
/* FF840 800E1750 0C016383 */  jal        func_80058E0C
/* FF844 800E1754 24050002 */   addiu     $a1, $zero, 0x2
/* FF848 800E1758 26240150 */  addiu      $a0, $s1, 0x150
/* FF84C 800E175C 0C016383 */  jal        func_80058E0C
/* FF850 800E1760 24050002 */   addiu     $a1, $zero, 0x2
/* FF854 800E1764 2624013C */  addiu      $a0, $s1, 0x13C
/* FF858 800E1768 0C016383 */  jal        func_80058E0C
/* FF85C 800E176C 24050002 */   addiu     $a1, $zero, 0x2
/* FF860 800E1770 26240120 */  addiu      $a0, $s1, 0x120
/* FF864 800E1774 0C016383 */  jal        func_80058E0C
/* FF868 800E1778 24050002 */   addiu     $a1, $zero, 0x2
/* FF86C 800E177C 2624010C */  addiu      $a0, $s1, 0x10C
/* FF870 800E1780 0C016383 */  jal        func_80058E0C
/* FF874 800E1784 24050002 */   addiu     $a1, $zero, 0x2
/* FF878 800E1788 262400F8 */  addiu      $a0, $s1, 0xF8
/* FF87C 800E178C 0C016383 */  jal        func_80058E0C
/* FF880 800E1790 24050002 */   addiu     $a1, $zero, 0x2
/* FF884 800E1794 262400E4 */  addiu      $a0, $s1, 0xE4
/* FF888 800E1798 0C016383 */  jal        func_80058E0C
/* FF88C 800E179C 24050002 */   addiu     $a1, $zero, 0x2
/* FF890 800E17A0 262400D0 */  addiu      $a0, $s1, 0xD0
/* FF894 800E17A4 0C016383 */  jal        func_80058E0C
/* FF898 800E17A8 24050002 */   addiu     $a1, $zero, 0x2
/* FF89C 800E17AC 262400BC */  addiu      $a0, $s1, 0xBC
/* FF8A0 800E17B0 0C016383 */  jal        func_80058E0C
/* FF8A4 800E17B4 24050002 */   addiu     $a1, $zero, 0x2
/* FF8A8 800E17B8 262400A8 */  addiu      $a0, $s1, 0xA8
/* FF8AC 800E17BC 0C016383 */  jal        func_80058E0C
/* FF8B0 800E17C0 24050002 */   addiu     $a1, $zero, 0x2
/* FF8B4 800E17C4 32100001 */  andi       $s0, $s0, 0x1
/* FF8B8 800E17C8 12000003 */  beqz       $s0, .Lmenu_800E17D8
/* FF8BC 800E17CC 00000000 */   nop
/* FF8C0 800E17D0 0C01FB5C */  jal        func_8007ED70
/* FF8C4 800E17D4 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800E17D8:
/* FF8C8 800E17D8 8FBF0018 */  lw         $ra, 0x18($sp)
/* FF8CC 800E17DC 8FB10014 */  lw         $s1, 0x14($sp)
/* FF8D0 800E17E0 8FB00010 */  lw         $s0, 0x10($sp)
/* FF8D4 800E17E4 03E00008 */  jr         $ra
/* FF8D8 800E17E8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E17EC
/* FF8DC 800E17EC AC800004 */  sw         $zero, 0x4($a0)
/* FF8E0 800E17F0 AC800008 */  sw         $zero, 0x8($a0)
/* FF8E4 800E17F4 AC80000C */  sw         $zero, 0xC($a0)
/* FF8E8 800E17F8 AC800010 */  sw         $zero, 0x10($a0)
/* FF8EC 800E17FC AC800064 */  sw         $zero, 0x64($a0)
/* FF8F0 800E1800 AC800068 */  sw         $zero, 0x68($a0)
/* FF8F4 800E1804 AC80006C */  sw         $zero, 0x6C($a0)
/* FF8F8 800E1808 AC800070 */  sw         $zero, 0x70($a0)
/* FF8FC 800E180C AC800074 */  sw         $zero, 0x74($a0)
/* FF900 800E1810 AC800078 */  sw         $zero, 0x78($a0)
/* FF904 800E1814 AC80007C */  sw         $zero, 0x7C($a0)
/* FF908 800E1818 AC800080 */  sw         $zero, 0x80($a0)
/* FF90C 800E181C AC800084 */  sw         $zero, 0x84($a0)
/* FF910 800E1820 AC800088 */  sw         $zero, 0x88($a0)
/* FF914 800E1824 AC80008C */  sw         $zero, 0x8C($a0)
/* FF918 800E1828 AC800090 */  sw         $zero, 0x90($a0)
/* FF91C 800E182C AC800094 */  sw         $zero, 0x94($a0)
/* FF920 800E1830 AC800098 */  sw         $zero, 0x98($a0)
/* FF924 800E1834 AC80009C */  sw         $zero, 0x9C($a0)
/* FF928 800E1838 AC8000A0 */  sw         $zero, 0xA0($a0)
/* FF92C 800E183C AC8000A4 */  sw         $zero, 0xA4($a0)
/* FF930 800E1840 AC8000B4 */  sw         $zero, 0xB4($a0)
/* FF934 800E1844 AC8000B8 */  sw         $zero, 0xB8($a0)
/* FF938 800E1848 AC8000C8 */  sw         $zero, 0xC8($a0)
/* FF93C 800E184C AC8000CC */  sw         $zero, 0xCC($a0)
/* FF940 800E1850 AC8000DC */  sw         $zero, 0xDC($a0)
/* FF944 800E1854 AC8000E0 */  sw         $zero, 0xE0($a0)
/* FF948 800E1858 AC8000F0 */  sw         $zero, 0xF0($a0)
/* FF94C 800E185C AC8000F4 */  sw         $zero, 0xF4($a0)
/* FF950 800E1860 AC800104 */  sw         $zero, 0x104($a0)
/* FF954 800E1864 AC800108 */  sw         $zero, 0x108($a0)
/* FF958 800E1868 AC800118 */  sw         $zero, 0x118($a0)
/* FF95C 800E186C AC80011C */  sw         $zero, 0x11C($a0)
/* FF960 800E1870 AC80012C */  sw         $zero, 0x12C($a0)
/* FF964 800E1874 AC800130 */  sw         $zero, 0x130($a0)
/* FF968 800E1878 AC800134 */  sw         $zero, 0x134($a0)
/* FF96C 800E187C AC800138 */  sw         $zero, 0x138($a0)
/* FF970 800E1880 AC800148 */  sw         $zero, 0x148($a0)
/* FF974 800E1884 AC80014C */  sw         $zero, 0x14C($a0)
/* FF978 800E1888 AC80015C */  sw         $zero, 0x15C($a0)
/* FF97C 800E188C AC800160 */  sw         $zero, 0x160($a0)
/* FF980 800E1890 AC800170 */  sw         $zero, 0x170($a0)
/* FF984 800E1894 AC800174 */  sw         $zero, 0x174($a0)
/* FF988 800E1898 AC800184 */  sw         $zero, 0x184($a0)
/* FF98C 800E189C AC800188 */  sw         $zero, 0x188($a0)
/* FF990 800E18A0 AC800198 */  sw         $zero, 0x198($a0)
/* FF994 800E18A4 AC80019C */  sw         $zero, 0x19C($a0)
/* FF998 800E18A8 AC8001AC */  sw         $zero, 0x1AC($a0)
/* FF99C 800E18AC AC8001B0 */  sw         $zero, 0x1B0($a0)
/* FF9A0 800E18B0 AC8001C0 */  sw         $zero, 0x1C0($a0)
/* FF9A4 800E18B4 AC8001C4 */  sw         $zero, 0x1C4($a0)
/* FF9A8 800E18B8 AC8001D4 */  sw         $zero, 0x1D4($a0)
/* FF9AC 800E18BC AC8001D8 */  sw         $zero, 0x1D8($a0)
/* FF9B0 800E18C0 AC8001E8 */  sw         $zero, 0x1E8($a0)
/* FF9B4 800E18C4 AC8001EC */  sw         $zero, 0x1EC($a0)
/* FF9B8 800E18C8 AC8001FC */  sw         $zero, 0x1FC($a0)
/* FF9BC 800E18CC AC800200 */  sw         $zero, 0x200($a0)
/* FF9C0 800E18D0 AC800210 */  sw         $zero, 0x210($a0)
/* FF9C4 800E18D4 AC800214 */  sw         $zero, 0x214($a0)
/* FF9C8 800E18D8 03E00008 */  jr         $ra
/* FF9CC 800E18DC AC800224 */   sw        $zero, 0x224($a0)

glabel func_menu_800E18E0
/* FF9D0 800E18E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FF9D4 800E18E4 AFB10014 */  sw         $s1, 0x14($sp)
/* FF9D8 800E18E8 00A08821 */  addu       $s1, $a1, $zero
/* FF9DC 800E18EC AFB20018 */  sw         $s2, 0x18($sp)
/* FF9E0 800E18F0 00C09021 */  addu       $s2, $a2, $zero
/* FF9E4 800E18F4 02202021 */  addu       $a0, $s1, $zero
/* FF9E8 800E18F8 AFBF001C */  sw         $ra, 0x1C($sp)
/* FF9EC 800E18FC 0C006DFE */  jal        strlen
/* FF9F0 800E1900 AFB00010 */   sw        $s0, 0x10($sp)
/* FF9F4 800E1904 02402021 */  addu       $a0, $s2, $zero
/* FF9F8 800E1908 0C006DFE */  jal        strlen
/* FF9FC 800E190C 00408021 */   addu      $s0, $v0, $zero
/* FFA00 800E1910 02028021 */  addu       $s0, $s0, $v0
/* FFA04 800E1914 0C00943C */  jal        func_800250F0
/* FFA08 800E1918 26040001 */   addiu     $a0, $s0, 0x1
/* FFA0C 800E191C 00408021 */  addu       $s0, $v0, $zero
/* FFA10 800E1920 56000008 */  bnel       $s0, $zero, .Lmenu_800E1944
/* FFA14 800E1924 02002021 */   addu      $a0, $s0, $zero
/* FFA18 800E1928 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* FFA1C 800E192C 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* FFA20 800E1930 00002821 */  addu       $a1, $zero, $zero
/* FFA24 800E1934 00A03021 */  addu       $a2, $a1, $zero
/* FFA28 800E1938 0C011ACF */  jal        func_80046B3C
/* FFA2C 800E193C 00A03821 */   addu      $a3, $a1, $zero
/* FFA30 800E1940 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800E1944:
/* FFA34 800E1944 0C0006FA */  jal        func_80001BE8
/* FFA38 800E1948 02202821 */   addu      $a1, $s1, $zero
/* FFA3C 800E194C 02002021 */  addu       $a0, $s0, $zero
/* FFA40 800E1950 0C0006C8 */  jal        func_80001B20
/* FFA44 800E1954 02402821 */   addu      $a1, $s2, $zero
/* FFA48 800E1958 0C0018F2 */  jal        func_800063C8
/* FFA4C 800E195C 02002021 */   addu      $a0, $s0, $zero
/* FFA50 800E1960 12000003 */  beqz       $s0, .Lmenu_800E1970
/* FFA54 800E1964 00408821 */   addu      $s1, $v0, $zero
/* FFA58 800E1968 0C009444 */  jal        func_80025110
/* FFA5C 800E196C 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800E1970:
/* FFA60 800E1970 2E220001 */  sltiu      $v0, $s1, 0x1
/* FFA64 800E1974 8FBF001C */  lw         $ra, 0x1C($sp)
/* FFA68 800E1978 8FB20018 */  lw         $s2, 0x18($sp)
/* FFA6C 800E197C 8FB10014 */  lw         $s1, 0x14($sp)
/* FFA70 800E1980 8FB00010 */  lw         $s0, 0x10($sp)
/* FFA74 800E1984 03E00008 */  jr         $ra
/* FFA78 800E1988 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E198C
/* FFA7C 800E198C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* FFA80 800E1990 AFB40028 */  sw         $s4, 0x28($sp)
/* FFA84 800E1994 8FB40054 */  lw         $s4, 0x54($sp)
/* FFA88 800E1998 AFB1001C */  sw         $s1, 0x1C($sp)
/* FFA8C 800E199C 00808821 */  addu       $s1, $a0, $zero
/* FFA90 800E19A0 AFB60030 */  sw         $s6, 0x30($sp)
/* FFA94 800E19A4 00A0B021 */  addu       $s6, $a1, $zero
/* FFA98 800E19A8 AFB70034 */  sw         $s7, 0x34($sp)
/* FFA9C 800E19AC 00C0B821 */  addu       $s7, $a2, $zero
/* FFAA0 800E19B0 AFB30024 */  sw         $s3, 0x24($sp)
/* FFAA4 800E19B4 AFBF0038 */  sw         $ra, 0x38($sp)
/* FFAA8 800E19B8 AFB5002C */  sw         $s5, 0x2C($sp)
/* FFAAC 800E19BC AFB20020 */  sw         $s2, 0x20($sp)
/* FFAB0 800E19C0 AFB00018 */  sw         $s0, 0x18($sp)
/* FFAB4 800E19C4 8E220004 */  lw         $v0, 0x4($s1)
/* FFAB8 800E19C8 8FB50058 */  lw         $s5, 0x58($sp)
/* FFABC 800E19CC 10400003 */  beqz       $v0, .Lmenu_800E19DC
/* FFAC0 800E19D0 00E09821 */   addu      $s3, $a3, $zero
/* FFAC4 800E19D4 0C0387A4 */  jal        func_menu_800E1E90
/* FFAC8 800E19D8 00000000 */   nop
.Lmenu_800E19DC:
/* FFACC 800E19DC 12A0001A */  beqz       $s5, .Lmenu_800E1A48
/* FFAD0 800E19E0 02202021 */   addu      $a0, $s1, $zero
/* FFAD4 800E19E4 02802821 */  addu       $a1, $s4, $zero
/* FFAD8 800E19E8 3C02800D */  lui        $v0, %hi(D_menu_800CAD14)
/* FFADC 800E19EC 2452AD14 */  addiu      $s2, $v0, %lo(D_menu_800CAD14)
/* FFAE0 800E19F0 0C038638 */  jal        func_menu_800E18E0
/* FFAE4 800E19F4 02403021 */   addu      $a2, $s2, $zero
/* FFAE8 800E19F8 1040011A */  beqz       $v0, .Lmenu_800E1E64
/* FFAEC 800E19FC 00000000 */   nop
/* FFAF0 800E1A00 0C01FB4C */  jal        func_8007ED30
/* FFAF4 800E1A04 24040654 */   addiu     $a0, $zero, 0x654
/* FFAF8 800E1A08 0C00278C */  jal        func_80009E30
/* FFAFC 800E1A0C 00402021 */   addu      $a0, $v0, $zero
/* FFB00 800E1A10 00408021 */  addu       $s0, $v0, $zero
/* FFB04 800E1A14 56000008 */  bnel       $s0, $zero, .Lmenu_800E1A38
/* FFB08 800E1A18 02002021 */   addu      $a0, $s0, $zero
/* FFB0C 800E1A1C 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* FFB10 800E1A20 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* FFB14 800E1A24 00002821 */  addu       $a1, $zero, $zero
/* FFB18 800E1A28 00A03021 */  addu       $a2, $a1, $zero
/* FFB1C 800E1A2C 0C011ACF */  jal        func_80046B3C
/* FFB20 800E1A30 00A03821 */   addu      $a3, $a1, $zero
/* FFB24 800E1A34 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800E1A38:
/* FFB28 800E1A38 0C0025BA */  jal        func_800096E8
/* FFB2C 800E1A3C 02402821 */   addu      $a1, $s2, $zero
/* FFB30 800E1A40 080386B5 */  j          .Lmenu_800E1AD4
/* FFB34 800E1A44 AE360004 */   sw        $s6, 0x4($s1)
.Lmenu_800E1A48:
/* FFB38 800E1A48 0C01FB4C */  jal        func_8007ED30
/* FFB3C 800E1A4C 24040658 */   addiu     $a0, $zero, 0x658
/* FFB40 800E1A50 00408021 */  addu       $s0, $v0, $zero
/* FFB44 800E1A54 0C002504 */  jal        func_80009410
/* FFB48 800E1A58 02002021 */   addu      $a0, $s0, $zero
/* FFB4C 800E1A5C 3C02800D */  lui        $v0, %hi(D_menu_800CAF20)
/* FFB50 800E1A60 2442AF20 */  addiu      $v0, $v0, %lo(D_menu_800CAF20)
/* FFB54 800E1A64 16000007 */  bnez       $s0, .Lmenu_800E1A84
/* FFB58 800E1A68 AE020028 */   sw        $v0, 0x28($s0)
/* FFB5C 800E1A6C 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* FFB60 800E1A70 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* FFB64 800E1A74 00002821 */  addu       $a1, $zero, $zero
/* FFB68 800E1A78 00A03021 */  addu       $a2, $a1, $zero
/* FFB6C 800E1A7C 0C011ACF */  jal        func_80046B3C
/* FFB70 800E1A80 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E1A84:
/* FFB74 800E1A84 8E020028 */  lw         $v0, 0x28($s0)
/* FFB78 800E1A88 84440090 */  lh         $a0, 0x90($v0)
/* FFB7C 800E1A8C 8C420094 */  lw         $v0, 0x94($v0)
/* FFB80 800E1A90 0040F809 */  jalr       $v0
/* FFB84 800E1A94 02042021 */   addu      $a0, $s0, $a0
/* FFB88 800E1A98 02202021 */  addu       $a0, $s1, $zero
/* FFB8C 800E1A9C 02802821 */  addu       $a1, $s4, $zero
/* FFB90 800E1AA0 0C038638 */  jal        func_menu_800E18E0
/* FFB94 800E1AA4 00403021 */   addu      $a2, $v0, $zero
/* FFB98 800E1AA8 5440000A */  bnel       $v0, $zero, .Lmenu_800E1AD4
/* FFB9C 800E1AAC AE360004 */   sw        $s6, 0x4($s1)
/* FFBA0 800E1AB0 120000EC */  beqz       $s0, .Lmenu_800E1E64
/* FFBA4 800E1AB4 24050003 */   addiu     $a1, $zero, 0x3
/* FFBA8 800E1AB8 8E020028 */  lw         $v0, 0x28($s0)
/* FFBAC 800E1ABC 84440038 */  lh         $a0, 0x38($v0)
/* FFBB0 800E1AC0 8C42003C */  lw         $v0, 0x3C($v0)
/* FFBB4 800E1AC4 0040F809 */  jalr       $v0
/* FFBB8 800E1AC8 02042021 */   addu      $a0, $s0, $a0
/* FFBBC 800E1ACC 08038799 */  j          .Lmenu_800E1E64
/* FFBC0 800E1AD0 00000000 */   nop
.Lmenu_800E1AD4:
/* FFBC4 800E1AD4 AE370008 */  sw         $s7, 0x8($s1)
/* FFBC8 800E1AD8 8FA20050 */  lw         $v0, 0x50($sp)
/* FFBCC 800E1ADC AE33000C */  sw         $s3, 0xC($s1)
/* FFBD0 800E1AE0 AE220010 */  sw         $v0, 0x10($s1)
/* FFBD4 800E1AE4 8E620014 */  lw         $v0, 0x14($s3)
/* FFBD8 800E1AE8 26250014 */  addiu      $a1, $s1, 0x14
/* FFBDC 800E1AEC 84440060 */  lh         $a0, 0x60($v0)
/* FFBE0 800E1AF0 8C420064 */  lw         $v0, 0x64($v0)
/* FFBE4 800E1AF4 0040F809 */  jalr       $v0
/* FFBE8 800E1AF8 02642021 */   addu      $a0, $s3, $a0
/* FFBEC 800E1AFC 8E020028 */  lw         $v0, 0x28($s0)
/* FFBF0 800E1B00 02802821 */  addu       $a1, $s4, $zero
/* FFBF4 800E1B04 84440088 */  lh         $a0, 0x88($v0)
/* FFBF8 800E1B08 8C42008C */  lw         $v0, 0x8C($v0)
/* FFBFC 800E1B0C 0040F809 */  jalr       $v0
/* FFC00 800E1B10 02042021 */   addu      $a0, $s0, $a0
/* FFC04 800E1B14 3C02800D */  lui        $v0, %hi(jtbl_menu_800CAD20)
/* FFC08 800E1B18 2452AD20 */  addiu      $s2, $v0, %lo(jtbl_menu_800CAD20)
.Lmenu_800E1B1C:
/* FFC0C 800E1B1C 8E020028 */  lw         $v0, 0x28($s0)
/* FFC10 800E1B20 844400A0 */  lh         $a0, 0xA0($v0)
/* FFC14 800E1B24 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FFC18 800E1B28 0040F809 */  jalr       $v0
/* FFC1C 800E1B2C 02042021 */   addu      $a0, $s0, $a0
/* FFC20 800E1B30 104000AF */  beqz       $v0, .Lmenu_800E1DF0
/* FFC24 800E1B34 2443FFD9 */   addiu     $v1, $v0, -0x27
/* FFC28 800E1B38 2C62003A */  sltiu      $v0, $v1, 0x3A
/* FFC2C 800E1B3C 104000A4 */  beqz       $v0, Lmenu_800E1DD0
/* FFC30 800E1B40 00031080 */   sll       $v0, $v1, 2
/* FFC34 800E1B44 00521021 */  addu       $v0, $v0, $s2
/* FFC38 800E1B48 8C420000 */  lw         $v0, 0x0($v0)
/* FFC3C 800E1B4C 00400008 */  jr         $v0
/* FFC40 800E1B50 00000000 */   nop
glabel Lmenu_800E1B54
/* FFC44 800E1B54 02202021 */  addu       $a0, $s1, $zero
/* FFC48 800E1B58 0C03897A */  jal        func_menu_800E25E8
/* FFC4C 800E1B5C 02002821 */   addu      $a1, $s0, $zero
/* FFC50 800E1B60 080386C7 */  j          .Lmenu_800E1B1C
/* FFC54 800E1B64 00000000 */   nop
glabel Lmenu_800E1B68
/* FFC58 800E1B68 02202021 */  addu       $a0, $s1, $zero
/* FFC5C 800E1B6C 0C038A42 */  jal        func_menu_800E2908
/* FFC60 800E1B70 02002821 */   addu      $a1, $s0, $zero
/* FFC64 800E1B74 080386C7 */  j          .Lmenu_800E1B1C
/* FFC68 800E1B78 00000000 */   nop
glabel Lmenu_800E1B7C
/* FFC6C 800E1B7C 02202021 */  addu       $a0, $s1, $zero
/* FFC70 800E1B80 0C038B04 */  jal        func_menu_800E2C10
/* FFC74 800E1B84 02002821 */   addu      $a1, $s0, $zero
/* FFC78 800E1B88 080386C7 */  j          .Lmenu_800E1B1C
/* FFC7C 800E1B8C 00000000 */   nop
glabel Lmenu_800E1B90
/* FFC80 800E1B90 02202021 */  addu       $a0, $s1, $zero
/* FFC84 800E1B94 0C038B96 */  jal        func_menu_800E2E58
/* FFC88 800E1B98 02002821 */   addu      $a1, $s0, $zero
/* FFC8C 800E1B9C 080386C7 */  j          .Lmenu_800E1B1C
/* FFC90 800E1BA0 00000000 */   nop
glabel Lmenu_800E1BA4
/* FFC94 800E1BA4 02202021 */  addu       $a0, $s1, $zero
/* FFC98 800E1BA8 0C038C26 */  jal        func_menu_800E3098
/* FFC9C 800E1BAC 02002821 */   addu      $a1, $s0, $zero
/* FFCA0 800E1BB0 080386C7 */  j          .Lmenu_800E1B1C
/* FFCA4 800E1BB4 00000000 */   nop
glabel Lmenu_800E1BB8
/* FFCA8 800E1BB8 02202021 */  addu       $a0, $s1, $zero
/* FFCAC 800E1BBC 0C038CB6 */  jal        func_menu_800E32D8
/* FFCB0 800E1BC0 02002821 */   addu      $a1, $s0, $zero
/* FFCB4 800E1BC4 080386C7 */  j          .Lmenu_800E1B1C
/* FFCB8 800E1BC8 00000000 */   nop
glabel Lmenu_800E1BCC
/* FFCBC 800E1BCC 02202021 */  addu       $a0, $s1, $zero
/* FFCC0 800E1BD0 0C038D28 */  jal        func_menu_800E34A0
/* FFCC4 800E1BD4 02002821 */   addu      $a1, $s0, $zero
/* FFCC8 800E1BD8 080386C7 */  j          .Lmenu_800E1B1C
/* FFCCC 800E1BDC 00000000 */   nop
glabel Lmenu_800E1BE0
/* FFCD0 800E1BE0 02202021 */  addu       $a0, $s1, $zero
/* FFCD4 800E1BE4 0C038D9A */  jal        func_menu_800E3668
/* FFCD8 800E1BE8 02002821 */   addu      $a1, $s0, $zero
/* FFCDC 800E1BEC 080386C7 */  j          .Lmenu_800E1B1C
/* FFCE0 800E1BF0 00000000 */   nop
glabel Lmenu_800E1BF4
/* FFCE4 800E1BF4 02202021 */  addu       $a0, $s1, $zero
/* FFCE8 800E1BF8 0C038E0C */  jal        func_menu_800E3830
/* FFCEC 800E1BFC 02002821 */   addu      $a1, $s0, $zero
/* FFCF0 800E1C00 080386C7 */  j          .Lmenu_800E1B1C
/* FFCF4 800E1C04 00000000 */   nop
glabel Lmenu_800E1C08
/* FFCF8 800E1C08 02202021 */  addu       $a0, $s1, $zero
/* FFCFC 800E1C0C 0C038E7E */  jal        func_menu_800E39F8
/* FFD00 800E1C10 02002821 */   addu      $a1, $s0, $zero
/* FFD04 800E1C14 080386C7 */  j          .Lmenu_800E1B1C
/* FFD08 800E1C18 00000000 */   nop
glabel Lmenu_800E1C1C
/* FFD0C 800E1C1C 02202021 */  addu       $a0, $s1, $zero
/* FFD10 800E1C20 0C038F05 */  jal        func_menu_800E3C14
/* FFD14 800E1C24 02002821 */   addu      $a1, $s0, $zero
/* FFD18 800E1C28 080386C7 */  j          .Lmenu_800E1B1C
/* FFD1C 800E1C2C 00000000 */   nop
glabel Lmenu_800E1C30
/* FFD20 800E1C30 02202021 */  addu       $a0, $s1, $zero
/* FFD24 800E1C34 0C038F92 */  jal        func_menu_800E3E48
/* FFD28 800E1C38 02002821 */   addu      $a1, $s0, $zero
/* FFD2C 800E1C3C 080386C7 */  j          .Lmenu_800E1B1C
/* FFD30 800E1C40 00000000 */   nop
glabel Lmenu_800E1C44
/* FFD34 800E1C44 02202021 */  addu       $a0, $s1, $zero
/* FFD38 800E1C48 02002821 */  addu       $a1, $s0, $zero
/* FFD3C 800E1C4C 24060050 */  addiu      $a2, $zero, 0x50
/* FFD40 800E1C50 26270134 */  addiu      $a3, $s1, 0x134
/* FFD44 800E1C54 26220138 */  addiu      $v0, $s1, 0x138
/* FFD48 800E1C58 AFA20010 */  sw         $v0, 0x10($sp)
/* FFD4C 800E1C5C 08038770 */  j          .Lmenu_800E1DC0
/* FFD50 800E1C60 2622013C */   addiu     $v0, $s1, 0x13C
glabel Lmenu_800E1C64
/* FFD54 800E1C64 02202021 */  addu       $a0, $s1, $zero
/* FFD58 800E1C68 02002821 */  addu       $a1, $s0, $zero
/* FFD5C 800E1C6C 24060051 */  addiu      $a2, $zero, 0x51
/* FFD60 800E1C70 26270148 */  addiu      $a3, $s1, 0x148
/* FFD64 800E1C74 2622014C */  addiu      $v0, $s1, 0x14C
/* FFD68 800E1C78 AFA20010 */  sw         $v0, 0x10($sp)
/* FFD6C 800E1C7C 08038770 */  j          .Lmenu_800E1DC0
/* FFD70 800E1C80 26220150 */   addiu     $v0, $s1, 0x150
glabel Lmenu_800E1C84
/* FFD74 800E1C84 02202021 */  addu       $a0, $s1, $zero
/* FFD78 800E1C88 02002821 */  addu       $a1, $s0, $zero
/* FFD7C 800E1C8C 24060052 */  addiu      $a2, $zero, 0x52
/* FFD80 800E1C90 2627015C */  addiu      $a3, $s1, 0x15C
/* FFD84 800E1C94 26220160 */  addiu      $v0, $s1, 0x160
/* FFD88 800E1C98 AFA20010 */  sw         $v0, 0x10($sp)
/* FFD8C 800E1C9C 08038770 */  j          .Lmenu_800E1DC0
/* FFD90 800E1CA0 26220164 */   addiu     $v0, $s1, 0x164
glabel Lmenu_800E1CA4
/* FFD94 800E1CA4 02202021 */  addu       $a0, $s1, $zero
/* FFD98 800E1CA8 02002821 */  addu       $a1, $s0, $zero
/* FFD9C 800E1CAC 24060053 */  addiu      $a2, $zero, 0x53
/* FFDA0 800E1CB0 26270170 */  addiu      $a3, $s1, 0x170
/* FFDA4 800E1CB4 26220174 */  addiu      $v0, $s1, 0x174
/* FFDA8 800E1CB8 AFA20010 */  sw         $v0, 0x10($sp)
/* FFDAC 800E1CBC 08038770 */  j          .Lmenu_800E1DC0
/* FFDB0 800E1CC0 26220178 */   addiu     $v0, $s1, 0x178
glabel Lmenu_800E1CC4
/* FFDB4 800E1CC4 02202021 */  addu       $a0, $s1, $zero
/* FFDB8 800E1CC8 02002821 */  addu       $a1, $s0, $zero
/* FFDBC 800E1CCC 24060054 */  addiu      $a2, $zero, 0x54
/* FFDC0 800E1CD0 26270184 */  addiu      $a3, $s1, 0x184
/* FFDC4 800E1CD4 26220188 */  addiu      $v0, $s1, 0x188
/* FFDC8 800E1CD8 AFA20010 */  sw         $v0, 0x10($sp)
/* FFDCC 800E1CDC 08038770 */  j          .Lmenu_800E1DC0
/* FFDD0 800E1CE0 2622018C */   addiu     $v0, $s1, 0x18C
glabel Lmenu_800E1CE4
/* FFDD4 800E1CE4 02202021 */  addu       $a0, $s1, $zero
/* FFDD8 800E1CE8 02002821 */  addu       $a1, $s0, $zero
/* FFDDC 800E1CEC 24060055 */  addiu      $a2, $zero, 0x55
/* FFDE0 800E1CF0 26270198 */  addiu      $a3, $s1, 0x198
/* FFDE4 800E1CF4 2622019C */  addiu      $v0, $s1, 0x19C
/* FFDE8 800E1CF8 AFA20010 */  sw         $v0, 0x10($sp)
/* FFDEC 800E1CFC 08038770 */  j          .Lmenu_800E1DC0
/* FFDF0 800E1D00 262201A0 */   addiu     $v0, $s1, 0x1A0
glabel Lmenu_800E1D04
/* FFDF4 800E1D04 02202021 */  addu       $a0, $s1, $zero
/* FFDF8 800E1D08 02002821 */  addu       $a1, $s0, $zero
/* FFDFC 800E1D0C 24060056 */  addiu      $a2, $zero, 0x56
/* FFE00 800E1D10 262701AC */  addiu      $a3, $s1, 0x1AC
/* FFE04 800E1D14 262201B0 */  addiu      $v0, $s1, 0x1B0
/* FFE08 800E1D18 AFA20010 */  sw         $v0, 0x10($sp)
/* FFE0C 800E1D1C 08038770 */  j          .Lmenu_800E1DC0
/* FFE10 800E1D20 262201B4 */   addiu     $v0, $s1, 0x1B4
glabel Lmenu_800E1D24
/* FFE14 800E1D24 02202021 */  addu       $a0, $s1, $zero
/* FFE18 800E1D28 02002821 */  addu       $a1, $s0, $zero
/* FFE1C 800E1D2C 24060057 */  addiu      $a2, $zero, 0x57
/* FFE20 800E1D30 262701C0 */  addiu      $a3, $s1, 0x1C0
/* FFE24 800E1D34 262201C4 */  addiu      $v0, $s1, 0x1C4
/* FFE28 800E1D38 AFA20010 */  sw         $v0, 0x10($sp)
/* FFE2C 800E1D3C 08038770 */  j          .Lmenu_800E1DC0
/* FFE30 800E1D40 262201C8 */   addiu     $v0, $s1, 0x1C8
glabel Lmenu_800E1D44
/* FFE34 800E1D44 02202021 */  addu       $a0, $s1, $zero
/* FFE38 800E1D48 02002821 */  addu       $a1, $s0, $zero
/* FFE3C 800E1D4C 24060058 */  addiu      $a2, $zero, 0x58
/* FFE40 800E1D50 262701D4 */  addiu      $a3, $s1, 0x1D4
/* FFE44 800E1D54 262201D8 */  addiu      $v0, $s1, 0x1D8
/* FFE48 800E1D58 AFA20010 */  sw         $v0, 0x10($sp)
/* FFE4C 800E1D5C 08038770 */  j          .Lmenu_800E1DC0
/* FFE50 800E1D60 262201DC */   addiu     $v0, $s1, 0x1DC
glabel Lmenu_800E1D64
/* FFE54 800E1D64 02202021 */  addu       $a0, $s1, $zero
/* FFE58 800E1D68 02002821 */  addu       $a1, $s0, $zero
/* FFE5C 800E1D6C 24060059 */  addiu      $a2, $zero, 0x59
/* FFE60 800E1D70 262701E8 */  addiu      $a3, $s1, 0x1E8
/* FFE64 800E1D74 262201EC */  addiu      $v0, $s1, 0x1EC
/* FFE68 800E1D78 AFA20010 */  sw         $v0, 0x10($sp)
/* FFE6C 800E1D7C 08038770 */  j          .Lmenu_800E1DC0
/* FFE70 800E1D80 262201F0 */   addiu     $v0, $s1, 0x1F0
glabel Lmenu_800E1D84
/* FFE74 800E1D84 02202021 */  addu       $a0, $s1, $zero
/* FFE78 800E1D88 02002821 */  addu       $a1, $s0, $zero
/* FFE7C 800E1D8C 2406005A */  addiu      $a2, $zero, 0x5A
/* FFE80 800E1D90 262701FC */  addiu      $a3, $s1, 0x1FC
/* FFE84 800E1D94 26220200 */  addiu      $v0, $s1, 0x200
/* FFE88 800E1D98 AFA20010 */  sw         $v0, 0x10($sp)
/* FFE8C 800E1D9C 08038770 */  j          .Lmenu_800E1DC0
/* FFE90 800E1DA0 26220204 */   addiu     $v0, $s1, 0x204
glabel Lmenu_800E1DA4
/* FFE94 800E1DA4 02202021 */  addu       $a0, $s1, $zero
/* FFE98 800E1DA8 02002821 */  addu       $a1, $s0, $zero
/* FFE9C 800E1DAC 2406005B */  addiu      $a2, $zero, 0x5B
/* FFEA0 800E1DB0 26270210 */  addiu      $a3, $s1, 0x210
/* FFEA4 800E1DB4 26220214 */  addiu      $v0, $s1, 0x214
/* FFEA8 800E1DB8 AFA20010 */  sw         $v0, 0x10($sp)
/* FFEAC 800E1DBC 26220218 */  addiu      $v0, $s1, 0x218
.Lmenu_800E1DC0:
/* FFEB0 800E1DC0 0C039020 */  jal        func_menu_800E4080
/* FFEB4 800E1DC4 AFA20014 */   sw        $v0, 0x14($sp)
/* FFEB8 800E1DC8 080386C7 */  j          .Lmenu_800E1B1C
/* FFEBC 800E1DCC 00000000 */   nop
glabel Lmenu_800E1DD0
/* FFEC0 800E1DD0 8E020028 */  lw         $v0, 0x28($s0)
/* FFEC4 800E1DD4 00002821 */  addu       $a1, $zero, $zero
/* FFEC8 800E1DD8 84440098 */  lh         $a0, 0x98($v0)
/* FFECC 800E1DDC 8C42009C */  lw         $v0, 0x9C($v0)
/* FFED0 800E1DE0 0040F809 */  jalr       $v0
/* FFED4 800E1DE4 02042021 */   addu      $a0, $s0, $a0
/* FFED8 800E1DE8 080386C7 */  j          .Lmenu_800E1B1C
/* FFEDC 800E1DEC 00000000 */   nop
.Lmenu_800E1DF0:
/* FFEE0 800E1DF0 8E020028 */  lw         $v0, 0x28($s0)
/* FFEE4 800E1DF4 84440048 */  lh         $a0, 0x48($v0)
/* FFEE8 800E1DF8 8C42004C */  lw         $v0, 0x4C($v0)
/* FFEEC 800E1DFC 0040F809 */  jalr       $v0
/* FFEF0 800E1E00 02042021 */   addu      $a0, $s0, $a0
/* FFEF4 800E1E04 12000006 */  beqz       $s0, .Lmenu_800E1E20
/* FFEF8 800E1E08 24050003 */   addiu     $a1, $zero, 0x3
/* FFEFC 800E1E0C 8E020028 */  lw         $v0, 0x28($s0)
/* FFF00 800E1E10 84440038 */  lh         $a0, 0x38($v0)
/* FFF04 800E1E14 8C42003C */  lw         $v0, 0x3C($v0)
/* FFF08 800E1E18 0040F809 */  jalr       $v0
/* FFF0C 800E1E1C 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800E1E20:
/* FFF10 800E1E20 02202021 */  addu       $a0, $s1, $zero
/* FFF14 800E1E24 0C038A02 */  jal        func_menu_800E2808
/* FFF18 800E1E28 02A02821 */   addu      $a1, $s5, $zero
/* FFF1C 800E1E2C 0C038ABB */  jal        func_menu_800E2AEC
/* FFF20 800E1E30 02202021 */   addu      $a0, $s1, $zero
/* FFF24 800E1E34 0C038B6D */  jal        func_menu_800E2DB4
/* FFF28 800E1E38 02202021 */   addu      $a0, $s1, $zero
/* FFF2C 800E1E3C 02202021 */  addu       $a0, $s1, $zero
/* FFF30 800E1E40 0C038BF0 */  jal        func_menu_800E2FC0
/* FFF34 800E1E44 02A02821 */   addu      $a1, $s5, $zero
/* FFF38 800E1E48 02202021 */  addu       $a0, $s1, $zero
/* FFF3C 800E1E4C 0C038C80 */  jal        func_menu_800E3200
/* FFF40 800E1E50 02A02821 */   addu      $a1, $s5, $zero
/* FFF44 800E1E54 0C038F78 */  jal        func_menu_800E3DE0
/* FFF48 800E1E58 02202021 */   addu      $a0, $s1, $zero
/* FFF4C 800E1E5C 0C039007 */  jal        func_menu_800E401C
/* FFF50 800E1E60 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800E1E64:
/* FFF54 800E1E64 8FBF0038 */  lw         $ra, 0x38($sp)
/* FFF58 800E1E68 8FB70034 */  lw         $s7, 0x34($sp)
/* FFF5C 800E1E6C 8FB60030 */  lw         $s6, 0x30($sp)
/* FFF60 800E1E70 8FB5002C */  lw         $s5, 0x2C($sp)
/* FFF64 800E1E74 8FB40028 */  lw         $s4, 0x28($sp)
/* FFF68 800E1E78 8FB30024 */  lw         $s3, 0x24($sp)
/* FFF6C 800E1E7C 8FB20020 */  lw         $s2, 0x20($sp)
/* FFF70 800E1E80 8FB1001C */  lw         $s1, 0x1C($sp)
/* FFF74 800E1E84 8FB00018 */  lw         $s0, 0x18($sp)
/* FFF78 800E1E88 03E00008 */  jr         $ra
/* FFF7C 800E1E8C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800E1E90
/* FFF80 800E1E90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FFF84 800E1E94 AFB10014 */  sw         $s1, 0x14($sp)
/* FFF88 800E1E98 00808821 */  addu       $s1, $a0, $zero
/* FFF8C 800E1E9C AFBF0018 */  sw         $ra, 0x18($sp)
/* FFF90 800E1EA0 AFB00010 */  sw         $s0, 0x10($sp)
/* FFF94 800E1EA4 8E23000C */  lw         $v1, 0xC($s1)
/* FFF98 800E1EA8 10600006 */  beqz       $v1, .Lmenu_800E1EC4
/* FFF9C 800E1EAC 26250014 */   addiu     $a1, $s1, 0x14
/* FFFA0 800E1EB0 8C620014 */  lw         $v0, 0x14($v1)
/* FFFA4 800E1EB4 84440068 */  lh         $a0, 0x68($v0)
/* FFFA8 800E1EB8 8C42006C */  lw         $v0, 0x6C($v0)
/* FFFAC 800E1EBC 0040F809 */  jalr       $v0
/* FFFB0 800E1EC0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E1EC4:
/* FFFB4 800E1EC4 8E220088 */  lw         $v0, 0x88($s1)
/* FFFB8 800E1EC8 1040001A */  beqz       $v0, .Lmenu_800E1F34
/* FFFBC 800E1ECC 00000000 */   nop
/* FFFC0 800E1ED0 8E220084 */  lw         $v0, 0x84($s1)
/* FFFC4 800E1ED4 10400012 */  beqz       $v0, .Lmenu_800E1F20
/* FFFC8 800E1ED8 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800E1EDC:
/* FFFCC 800E1EDC 8E230088 */  lw         $v1, 0x88($s1)
/* FFFD0 800E1EE0 00101080 */  sll        $v0, $s0, 2
/* FFFD4 800E1EE4 00431021 */  addu       $v0, $v0, $v1
/* FFFD8 800E1EE8 8C450000 */  lw         $a1, 0x0($v0)
/* FFFDC 800E1EEC 10A00007 */  beqz       $a1, .Lmenu_800E1F0C
/* FFFE0 800E1EF0 00000000 */   nop
/* FFFE4 800E1EF4 8E23000C */  lw         $v1, 0xC($s1)
/* FFFE8 800E1EF8 8C620014 */  lw         $v0, 0x14($v1)
/* FFFEC 800E1EFC 84440048 */  lh         $a0, 0x48($v0)
/* FFFF0 800E1F00 8C42004C */  lw         $v0, 0x4C($v0)
/* FFFF4 800E1F04 0040F809 */  jalr       $v0
/* FFFF8 800E1F08 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E1F0C:
/* FFFFC 800E1F0C 8E220084 */  lw         $v0, 0x84($s1)
/* 100000 800E1F10 26100001 */  addiu      $s0, $s0, 0x1
/* 100004 800E1F14 0202102B */  sltu       $v0, $s0, $v0
/* 100008 800E1F18 1440FFF0 */  bnez       $v0, .Lmenu_800E1EDC
/* 10000C 800E1F1C 00000000 */   nop
.Lmenu_800E1F20:
/* 100010 800E1F20 8E240088 */  lw         $a0, 0x88($s1)
/* 100014 800E1F24 10800003 */  beqz       $a0, .Lmenu_800E1F34
/* 100018 800E1F28 00000000 */   nop
/* 10001C 800E1F2C 0C009444 */  jal        func_80025110
/* 100020 800E1F30 00000000 */   nop
.Lmenu_800E1F34:
/* 100024 800E1F34 8E24008C */  lw         $a0, 0x8C($s1)
/* 100028 800E1F38 10800003 */  beqz       $a0, .Lmenu_800E1F48
/* 10002C 800E1F3C 00000000 */   nop
/* 100030 800E1F40 0C009444 */  jal        func_80025110
/* 100034 800E1F44 00000000 */   nop
.Lmenu_800E1F48:
/* 100038 800E1F48 8E220094 */  lw         $v0, 0x94($s1)
/* 10003C 800E1F4C 1040001A */  beqz       $v0, .Lmenu_800E1FB8
/* 100040 800E1F50 00000000 */   nop
/* 100044 800E1F54 8E220090 */  lw         $v0, 0x90($s1)
/* 100048 800E1F58 10400012 */  beqz       $v0, .Lmenu_800E1FA4
/* 10004C 800E1F5C 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800E1F60:
/* 100050 800E1F60 8E230094 */  lw         $v1, 0x94($s1)
/* 100054 800E1F64 00101080 */  sll        $v0, $s0, 2
/* 100058 800E1F68 00431021 */  addu       $v0, $v0, $v1
/* 10005C 800E1F6C 8C450000 */  lw         $a1, 0x0($v0)
/* 100060 800E1F70 10A00007 */  beqz       $a1, .Lmenu_800E1F90
/* 100064 800E1F74 00000000 */   nop
/* 100068 800E1F78 8E230004 */  lw         $v1, 0x4($s1)
/* 10006C 800E1F7C 8C620000 */  lw         $v0, 0x0($v1)
/* 100070 800E1F80 844400E0 */  lh         $a0, 0xE0($v0)
/* 100074 800E1F84 8C4200E4 */  lw         $v0, 0xE4($v0)
/* 100078 800E1F88 0040F809 */  jalr       $v0
/* 10007C 800E1F8C 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E1F90:
/* 100080 800E1F90 8E220090 */  lw         $v0, 0x90($s1)
/* 100084 800E1F94 26100001 */  addiu      $s0, $s0, 0x1
/* 100088 800E1F98 0202102B */  sltu       $v0, $s0, $v0
/* 10008C 800E1F9C 1440FFF0 */  bnez       $v0, .Lmenu_800E1F60
/* 100090 800E1FA0 00000000 */   nop
.Lmenu_800E1FA4:
/* 100094 800E1FA4 8E240094 */  lw         $a0, 0x94($s1)
/* 100098 800E1FA8 10800003 */  beqz       $a0, .Lmenu_800E1FB8
/* 10009C 800E1FAC 00000000 */   nop
/* 1000A0 800E1FB0 0C009444 */  jal        func_80025110
/* 1000A4 800E1FB4 00000000 */   nop
.Lmenu_800E1FB8:
/* 1000A8 800E1FB8 8E240098 */  lw         $a0, 0x98($s1)
/* 1000AC 800E1FBC 10800003 */  beqz       $a0, .Lmenu_800E1FCC
/* 1000B0 800E1FC0 00000000 */   nop
/* 1000B4 800E1FC4 0C009444 */  jal        func_80025110
/* 1000B8 800E1FC8 00000000 */   nop
.Lmenu_800E1FCC:
/* 1000BC 800E1FCC 8E2200A0 */  lw         $v0, 0xA0($s1)
/* 1000C0 800E1FD0 1040001A */  beqz       $v0, .Lmenu_800E203C
/* 1000C4 800E1FD4 00000000 */   nop
/* 1000C8 800E1FD8 8E22009C */  lw         $v0, 0x9C($s1)
/* 1000CC 800E1FDC 10400012 */  beqz       $v0, .Lmenu_800E2028
/* 1000D0 800E1FE0 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800E1FE4:
/* 1000D4 800E1FE4 8E2300A0 */  lw         $v1, 0xA0($s1)
/* 1000D8 800E1FE8 00101080 */  sll        $v0, $s0, 2
/* 1000DC 800E1FEC 00431021 */  addu       $v0, $v0, $v1
/* 1000E0 800E1FF0 8C450000 */  lw         $a1, 0x0($v0)
/* 1000E4 800E1FF4 10A00007 */  beqz       $a1, .Lmenu_800E2014
/* 1000E8 800E1FF8 00000000 */   nop
/* 1000EC 800E1FFC 8E230004 */  lw         $v1, 0x4($s1)
/* 1000F0 800E2000 8C620000 */  lw         $v0, 0x0($v1)
/* 1000F4 800E2004 844400D8 */  lh         $a0, 0xD8($v0)
/* 1000F8 800E2008 8C4200DC */  lw         $v0, 0xDC($v0)
/* 1000FC 800E200C 0040F809 */  jalr       $v0
/* 100100 800E2010 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E2014:
/* 100104 800E2014 8E22009C */  lw         $v0, 0x9C($s1)
/* 100108 800E2018 26100001 */  addiu      $s0, $s0, 0x1
/* 10010C 800E201C 0202102B */  sltu       $v0, $s0, $v0
/* 100110 800E2020 1440FFF0 */  bnez       $v0, .Lmenu_800E1FE4
/* 100114 800E2024 00000000 */   nop
.Lmenu_800E2028:
/* 100118 800E2028 8E2400A0 */  lw         $a0, 0xA0($s1)
/* 10011C 800E202C 10800003 */  beqz       $a0, .Lmenu_800E203C
/* 100120 800E2030 00000000 */   nop
/* 100124 800E2034 0C009444 */  jal        func_80025110
/* 100128 800E2038 00000000 */   nop
.Lmenu_800E203C:
/* 10012C 800E203C 8E2400A4 */  lw         $a0, 0xA4($s1)
/* 100130 800E2040 10800003 */  beqz       $a0, .Lmenu_800E2050
/* 100134 800E2044 00000000 */   nop
/* 100138 800E2048 0C009444 */  jal        func_80025110
/* 10013C 800E204C 00000000 */   nop
.Lmenu_800E2050:
/* 100140 800E2050 8E24006C */  lw         $a0, 0x6C($s1)
/* 100144 800E2054 10800019 */  beqz       $a0, .Lmenu_800E20BC
/* 100148 800E2058 00000000 */   nop
/* 10014C 800E205C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 100150 800E2060 00031040 */  sll        $v0, $v1, 1
/* 100154 800E2064 00431021 */  addu       $v0, $v0, $v1
/* 100158 800E2068 00021080 */  sll        $v0, $v0, 2
/* 10015C 800E206C 00431021 */  addu       $v0, $v0, $v1
/* 100160 800E2070 00021100 */  sll        $v0, $v0, 4
/* 100164 800E2074 00431023 */  subu       $v0, $v0, $v1
/* 100168 800E2078 00021080 */  sll        $v0, $v0, 2
/* 10016C 800E207C 00828021 */  addu       $s0, $a0, $v0
/* 100170 800E2080 1090000C */  beq        $a0, $s0, .Lmenu_800E20B4
/* 100174 800E2084 00000000 */   nop
/* 100178 800E2088 2610FCC4 */  addiu      $s0, $s0, -0x33C
.Lmenu_800E208C:
/* 10017C 800E208C 8E020008 */  lw         $v0, 0x8($s0)
/* 100180 800E2090 24050002 */  addiu      $a1, $zero, 0x2
/* 100184 800E2094 84440008 */  lh         $a0, 0x8($v0)
/* 100188 800E2098 8C42000C */  lw         $v0, 0xC($v0)
/* 10018C 800E209C 0040F809 */  jalr       $v0
/* 100190 800E20A0 02042021 */   addu      $a0, $s0, $a0
/* 100194 800E20A4 8E22006C */  lw         $v0, 0x6C($s1)
/* 100198 800E20A8 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E208C
/* 10019C 800E20AC 2610FCC4 */   addiu     $s0, $s0, -0x33C
/* 1001A0 800E20B0 8E24006C */  lw         $a0, 0x6C($s1)
.Lmenu_800E20B4:
/* 1001A4 800E20B4 0C009444 */  jal        func_80025110
/* 1001A8 800E20B8 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E20BC:
/* 1001AC 800E20BC 8E240074 */  lw         $a0, 0x74($s1)
/* 1001B0 800E20C0 10800003 */  beqz       $a0, .Lmenu_800E20D0
/* 1001B4 800E20C4 00000000 */   nop
/* 1001B8 800E20C8 0C009444 */  jal        func_80025110
/* 1001BC 800E20CC 00000000 */   nop
.Lmenu_800E20D0:
/* 1001C0 800E20D0 8E240070 */  lw         $a0, 0x70($s1)
/* 1001C4 800E20D4 10800015 */  beqz       $a0, .Lmenu_800E212C
/* 1001C8 800E20D8 00000000 */   nop
/* 1001CC 800E20DC 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 1001D0 800E20E0 00031080 */  sll        $v0, $v1, 2
/* 1001D4 800E20E4 00431021 */  addu       $v0, $v0, $v1
/* 1001D8 800E20E8 00021080 */  sll        $v0, $v0, 2
/* 1001DC 800E20EC 00828021 */  addu       $s0, $a0, $v0
/* 1001E0 800E20F0 1090000C */  beq        $a0, $s0, .Lmenu_800E2124
/* 1001E4 800E20F4 00000000 */   nop
/* 1001E8 800E20F8 2610FFEC */  addiu      $s0, $s0, -0x14
.Lmenu_800E20FC:
/* 1001EC 800E20FC 8E020010 */  lw         $v0, 0x10($s0)
/* 1001F0 800E2100 24050002 */  addiu      $a1, $zero, 0x2
/* 1001F4 800E2104 84440008 */  lh         $a0, 0x8($v0)
/* 1001F8 800E2108 8C42000C */  lw         $v0, 0xC($v0)
/* 1001FC 800E210C 0040F809 */  jalr       $v0
/* 100200 800E2110 02042021 */   addu      $a0, $s0, $a0
/* 100204 800E2114 8E220070 */  lw         $v0, 0x70($s1)
/* 100208 800E2118 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E20FC
/* 10020C 800E211C 2610FFEC */   addiu     $s0, $s0, -0x14
/* 100210 800E2120 8E240070 */  lw         $a0, 0x70($s1)
.Lmenu_800E2124:
/* 100214 800E2124 0C009444 */  jal        func_80025110
/* 100218 800E2128 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E212C:
/* 10021C 800E212C 8E24007C */  lw         $a0, 0x7C($s1)
/* 100220 800E2130 10800015 */  beqz       $a0, .Lmenu_800E2188
/* 100224 800E2134 00000000 */   nop
/* 100228 800E2138 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 10022C 800E213C 00031080 */  sll        $v0, $v1, 2
/* 100230 800E2140 00431021 */  addu       $v0, $v0, $v1
/* 100234 800E2144 00021080 */  sll        $v0, $v0, 2
/* 100238 800E2148 00828021 */  addu       $s0, $a0, $v0
/* 10023C 800E214C 1090000C */  beq        $a0, $s0, .Lmenu_800E2180
/* 100240 800E2150 00000000 */   nop
/* 100244 800E2154 2610FFEC */  addiu      $s0, $s0, -0x14
.Lmenu_800E2158:
/* 100248 800E2158 8E020010 */  lw         $v0, 0x10($s0)
/* 10024C 800E215C 24050002 */  addiu      $a1, $zero, 0x2
/* 100250 800E2160 84440008 */  lh         $a0, 0x8($v0)
/* 100254 800E2164 8C42000C */  lw         $v0, 0xC($v0)
/* 100258 800E2168 0040F809 */  jalr       $v0
/* 10025C 800E216C 02042021 */   addu      $a0, $s0, $a0
/* 100260 800E2170 8E22007C */  lw         $v0, 0x7C($s1)
/* 100264 800E2174 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E2158
/* 100268 800E2178 2610FFEC */   addiu     $s0, $s0, -0x14
/* 10026C 800E217C 8E24007C */  lw         $a0, 0x7C($s1)
.Lmenu_800E2180:
/* 100270 800E2180 0C009444 */  jal        func_80025110
/* 100274 800E2184 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E2188:
/* 100278 800E2188 8E240080 */  lw         $a0, 0x80($s1)
/* 10027C 800E218C 10800003 */  beqz       $a0, .Lmenu_800E219C
/* 100280 800E2190 00000000 */   nop
/* 100284 800E2194 0C009444 */  jal        func_80025110
/* 100288 800E2198 00000000 */   nop
.Lmenu_800E219C:
/* 10028C 800E219C 8E2400B8 */  lw         $a0, 0xB8($s1)
/* 100290 800E21A0 10800015 */  beqz       $a0, .Lmenu_800E21F8
/* 100294 800E21A4 00000000 */   nop
/* 100298 800E21A8 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 10029C 800E21AC 000310C0 */  sll        $v0, $v1, 3
/* 1002A0 800E21B0 00431021 */  addu       $v0, $v0, $v1
/* 1002A4 800E21B4 000210C0 */  sll        $v0, $v0, 3
/* 1002A8 800E21B8 00828021 */  addu       $s0, $a0, $v0
/* 1002AC 800E21BC 1090000C */  beq        $a0, $s0, .Lmenu_800E21F0
/* 1002B0 800E21C0 00000000 */   nop
/* 1002B4 800E21C4 2610FFB8 */  addiu      $s0, $s0, -0x48
.Lmenu_800E21C8:
/* 1002B8 800E21C8 8E020010 */  lw         $v0, 0x10($s0)
/* 1002BC 800E21CC 24050002 */  addiu      $a1, $zero, 0x2
/* 1002C0 800E21D0 84440008 */  lh         $a0, 0x8($v0)
/* 1002C4 800E21D4 8C42000C */  lw         $v0, 0xC($v0)
/* 1002C8 800E21D8 0040F809 */  jalr       $v0
/* 1002CC 800E21DC 02042021 */   addu      $a0, $s0, $a0
/* 1002D0 800E21E0 8E2200B8 */  lw         $v0, 0xB8($s1)
/* 1002D4 800E21E4 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E21C8
/* 1002D8 800E21E8 2610FFB8 */   addiu     $s0, $s0, -0x48
/* 1002DC 800E21EC 8E2400B8 */  lw         $a0, 0xB8($s1)
.Lmenu_800E21F0:
/* 1002E0 800E21F0 0C009444 */  jal        func_80025110
/* 1002E4 800E21F4 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E21F8:
/* 1002E8 800E21F8 8E2400CC */  lw         $a0, 0xCC($s1)
/* 1002EC 800E21FC 10800015 */  beqz       $a0, .Lmenu_800E2254
/* 1002F0 800E2200 00000000 */   nop
/* 1002F4 800E2204 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 1002F8 800E2208 00031040 */  sll        $v0, $v1, 1
/* 1002FC 800E220C 00431021 */  addu       $v0, $v0, $v1
/* 100300 800E2210 00021100 */  sll        $v0, $v0, 4
/* 100304 800E2214 00828021 */  addu       $s0, $a0, $v0
/* 100308 800E2218 1090000C */  beq        $a0, $s0, .Lmenu_800E224C
/* 10030C 800E221C 00000000 */   nop
/* 100310 800E2220 2610FFD0 */  addiu      $s0, $s0, -0x30
.Lmenu_800E2224:
/* 100314 800E2224 8E020010 */  lw         $v0, 0x10($s0)
/* 100318 800E2228 24050002 */  addiu      $a1, $zero, 0x2
/* 10031C 800E222C 84440008 */  lh         $a0, 0x8($v0)
/* 100320 800E2230 8C42000C */  lw         $v0, 0xC($v0)
/* 100324 800E2234 0040F809 */  jalr       $v0
/* 100328 800E2238 02042021 */   addu      $a0, $s0, $a0
/* 10032C 800E223C 8E2200CC */  lw         $v0, 0xCC($s1)
/* 100330 800E2240 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E2224
/* 100334 800E2244 2610FFD0 */   addiu     $s0, $s0, -0x30
/* 100338 800E2248 8E2400CC */  lw         $a0, 0xCC($s1)
.Lmenu_800E224C:
/* 10033C 800E224C 0C009444 */  jal        func_80025110
/* 100340 800E2250 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E2254:
/* 100344 800E2254 8E2400E0 */  lw         $a0, 0xE0($s1)
/* 100348 800E2258 10800015 */  beqz       $a0, .Lmenu_800E22B0
/* 10034C 800E225C 00000000 */   nop
/* 100350 800E2260 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 100354 800E2264 00031080 */  sll        $v0, $v1, 2
/* 100358 800E2268 00431021 */  addu       $v0, $v0, $v1
/* 10035C 800E226C 00021100 */  sll        $v0, $v0, 4
/* 100360 800E2270 00828021 */  addu       $s0, $a0, $v0
/* 100364 800E2274 1090000C */  beq        $a0, $s0, .Lmenu_800E22A8
/* 100368 800E2278 00000000 */   nop
/* 10036C 800E227C 2610FFB0 */  addiu      $s0, $s0, -0x50
.Lmenu_800E2280:
/* 100370 800E2280 8E020010 */  lw         $v0, 0x10($s0)
/* 100374 800E2284 24050002 */  addiu      $a1, $zero, 0x2
/* 100378 800E2288 84440008 */  lh         $a0, 0x8($v0)
/* 10037C 800E228C 8C42000C */  lw         $v0, 0xC($v0)
/* 100380 800E2290 0040F809 */  jalr       $v0
/* 100384 800E2294 02042021 */   addu      $a0, $s0, $a0
/* 100388 800E2298 8E2200E0 */  lw         $v0, 0xE0($s1)
/* 10038C 800E229C 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E2280
/* 100390 800E22A0 2610FFB0 */   addiu     $s0, $s0, -0x50
/* 100394 800E22A4 8E2400E0 */  lw         $a0, 0xE0($s1)
.Lmenu_800E22A8:
/* 100398 800E22A8 0C009444 */  jal        func_80025110
/* 10039C 800E22AC 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E22B0:
/* 1003A0 800E22B0 8E2400F4 */  lw         $a0, 0xF4($s1)
/* 1003A4 800E22B4 10800015 */  beqz       $a0, .Lmenu_800E230C
/* 1003A8 800E22B8 00000000 */   nop
/* 1003AC 800E22BC 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 1003B0 800E22C0 00031080 */  sll        $v0, $v1, 2
/* 1003B4 800E22C4 00431021 */  addu       $v0, $v0, $v1
/* 1003B8 800E22C8 00021100 */  sll        $v0, $v0, 4
/* 1003BC 800E22CC 00828021 */  addu       $s0, $a0, $v0
/* 1003C0 800E22D0 1090000C */  beq        $a0, $s0, .Lmenu_800E2304
/* 1003C4 800E22D4 00000000 */   nop
/* 1003C8 800E22D8 2610FFB0 */  addiu      $s0, $s0, -0x50
.Lmenu_800E22DC:
/* 1003CC 800E22DC 8E020010 */  lw         $v0, 0x10($s0)
/* 1003D0 800E22E0 24050002 */  addiu      $a1, $zero, 0x2
/* 1003D4 800E22E4 84440008 */  lh         $a0, 0x8($v0)
/* 1003D8 800E22E8 8C42000C */  lw         $v0, 0xC($v0)
/* 1003DC 800E22EC 0040F809 */  jalr       $v0
/* 1003E0 800E22F0 02042021 */   addu      $a0, $s0, $a0
/* 1003E4 800E22F4 8E2200F4 */  lw         $v0, 0xF4($s1)
/* 1003E8 800E22F8 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E22DC
/* 1003EC 800E22FC 2610FFB0 */   addiu     $s0, $s0, -0x50
/* 1003F0 800E2300 8E2400F4 */  lw         $a0, 0xF4($s1)
.Lmenu_800E2304:
/* 1003F4 800E2304 0C009444 */  jal        func_80025110
/* 1003F8 800E2308 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E230C:
/* 1003FC 800E230C 8E240064 */  lw         $a0, 0x64($s1)
/* 100400 800E2310 10800003 */  beqz       $a0, .Lmenu_800E2320
/* 100404 800E2314 00000000 */   nop
/* 100408 800E2318 0C0103BC */  jal        func_80040EF0
/* 10040C 800E231C 24050003 */   addiu     $a1, $zero, 0x3
.Lmenu_800E2320:
/* 100410 800E2320 8E240108 */  lw         $a0, 0x108($s1)
/* 100414 800E2324 10800017 */  beqz       $a0, .Lmenu_800E2384
/* 100418 800E2328 00000000 */   nop
/* 10041C 800E232C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 100420 800E2330 00031040 */  sll        $v0, $v1, 1
/* 100424 800E2334 00431021 */  addu       $v0, $v0, $v1
/* 100428 800E2338 00021080 */  sll        $v0, $v0, 2
/* 10042C 800E233C 00431023 */  subu       $v0, $v0, $v1
/* 100430 800E2340 00021080 */  sll        $v0, $v0, 2
/* 100434 800E2344 00828021 */  addu       $s0, $a0, $v0
/* 100438 800E2348 1090000C */  beq        $a0, $s0, .Lmenu_800E237C
/* 10043C 800E234C 00000000 */   nop
/* 100440 800E2350 2610FFD4 */  addiu      $s0, $s0, -0x2C
.Lmenu_800E2354:
/* 100444 800E2354 8E020010 */  lw         $v0, 0x10($s0)
/* 100448 800E2358 24050002 */  addiu      $a1, $zero, 0x2
/* 10044C 800E235C 84440008 */  lh         $a0, 0x8($v0)
/* 100450 800E2360 8C42000C */  lw         $v0, 0xC($v0)
/* 100454 800E2364 0040F809 */  jalr       $v0
/* 100458 800E2368 02042021 */   addu      $a0, $s0, $a0
/* 10045C 800E236C 8E220108 */  lw         $v0, 0x108($s1)
/* 100460 800E2370 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E2354
/* 100464 800E2374 2610FFD4 */   addiu     $s0, $s0, -0x2C
/* 100468 800E2378 8E240108 */  lw         $a0, 0x108($s1)
.Lmenu_800E237C:
/* 10046C 800E237C 0C009444 */  jal        func_80025110
/* 100470 800E2380 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E2384:
/* 100474 800E2384 8E24011C */  lw         $a0, 0x11C($s1)
/* 100478 800E2388 10800015 */  beqz       $a0, .Lmenu_800E23E0
/* 10047C 800E238C 00000000 */   nop
/* 100480 800E2390 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 100484 800E2394 000310C0 */  sll        $v0, $v1, 3
/* 100488 800E2398 00431023 */  subu       $v0, $v0, $v1
/* 10048C 800E239C 00021100 */  sll        $v0, $v0, 4
/* 100490 800E23A0 00828021 */  addu       $s0, $a0, $v0
/* 100494 800E23A4 1090000C */  beq        $a0, $s0, .Lmenu_800E23D8
/* 100498 800E23A8 00000000 */   nop
/* 10049C 800E23AC 2610FF90 */  addiu      $s0, $s0, -0x70
.Lmenu_800E23B0:
/* 1004A0 800E23B0 8E020010 */  lw         $v0, 0x10($s0)
/* 1004A4 800E23B4 24050002 */  addiu      $a1, $zero, 0x2
/* 1004A8 800E23B8 84440008 */  lh         $a0, 0x8($v0)
/* 1004AC 800E23BC 8C42000C */  lw         $v0, 0xC($v0)
/* 1004B0 800E23C0 0040F809 */  jalr       $v0
/* 1004B4 800E23C4 02042021 */   addu      $a0, $s0, $a0
/* 1004B8 800E23C8 8E22011C */  lw         $v0, 0x11C($s1)
/* 1004BC 800E23CC 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E23B0
/* 1004C0 800E23D0 2610FF90 */   addiu     $s0, $s0, -0x70
/* 1004C4 800E23D4 8E24011C */  lw         $a0, 0x11C($s1)
.Lmenu_800E23D8:
/* 1004C8 800E23D8 0C009444 */  jal        func_80025110
/* 1004CC 800E23DC 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E23E0:
/* 1004D0 800E23E0 8E240130 */  lw         $a0, 0x130($s1)
/* 1004D4 800E23E4 10800017 */  beqz       $a0, .Lmenu_800E2444
/* 1004D8 800E23E8 00000000 */   nop
/* 1004DC 800E23EC 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 1004E0 800E23F0 00031040 */  sll        $v0, $v1, 1
/* 1004E4 800E23F4 00431021 */  addu       $v0, $v0, $v1
/* 1004E8 800E23F8 000210C0 */  sll        $v0, $v0, 3
/* 1004EC 800E23FC 00431021 */  addu       $v0, $v0, $v1
/* 1004F0 800E2400 00021080 */  sll        $v0, $v0, 2
/* 1004F4 800E2404 00828021 */  addu       $s0, $a0, $v0
/* 1004F8 800E2408 1090000C */  beq        $a0, $s0, .Lmenu_800E243C
/* 1004FC 800E240C 00000000 */   nop
/* 100500 800E2410 2610FF9C */  addiu      $s0, $s0, -0x64
.Lmenu_800E2414:
/* 100504 800E2414 8E020010 */  lw         $v0, 0x10($s0)
/* 100508 800E2418 24050002 */  addiu      $a1, $zero, 0x2
/* 10050C 800E241C 84440008 */  lh         $a0, 0x8($v0)
/* 100510 800E2420 8C42000C */  lw         $v0, 0xC($v0)
/* 100514 800E2424 0040F809 */  jalr       $v0
/* 100518 800E2428 02042021 */   addu      $a0, $s0, $a0
/* 10051C 800E242C 8E220130 */  lw         $v0, 0x130($s1)
/* 100520 800E2430 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E2414
/* 100524 800E2434 2610FF9C */   addiu     $s0, $s0, -0x64
/* 100528 800E2438 8E240130 */  lw         $a0, 0x130($s1)
.Lmenu_800E243C:
/* 10052C 800E243C 0C009444 */  jal        func_80025110
/* 100530 800E2440 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E2444:
/* 100534 800E2444 8E240138 */  lw         $a0, 0x138($s1)
/* 100538 800E2448 10800003 */  beqz       $a0, .Lmenu_800E2458
/* 10053C 800E244C 00000000 */   nop
/* 100540 800E2450 0C009444 */  jal        func_80025110
/* 100544 800E2454 00000000 */   nop
.Lmenu_800E2458:
/* 100548 800E2458 8E24014C */  lw         $a0, 0x14C($s1)
/* 10054C 800E245C 10800003 */  beqz       $a0, .Lmenu_800E246C
/* 100550 800E2460 00000000 */   nop
/* 100554 800E2464 0C009444 */  jal        func_80025110
/* 100558 800E2468 00000000 */   nop
.Lmenu_800E246C:
/* 10055C 800E246C 8E240160 */  lw         $a0, 0x160($s1)
/* 100560 800E2470 10800003 */  beqz       $a0, .Lmenu_800E2480
/* 100564 800E2474 00000000 */   nop
/* 100568 800E2478 0C009444 */  jal        func_80025110
/* 10056C 800E247C 00000000 */   nop
.Lmenu_800E2480:
/* 100570 800E2480 8E240174 */  lw         $a0, 0x174($s1)
/* 100574 800E2484 10800003 */  beqz       $a0, .Lmenu_800E2494
/* 100578 800E2488 00000000 */   nop
/* 10057C 800E248C 0C009444 */  jal        func_80025110
/* 100580 800E2490 00000000 */   nop
.Lmenu_800E2494:
/* 100584 800E2494 8E240188 */  lw         $a0, 0x188($s1)
/* 100588 800E2498 10800003 */  beqz       $a0, .Lmenu_800E24A8
/* 10058C 800E249C 00000000 */   nop
/* 100590 800E24A0 0C009444 */  jal        func_80025110
/* 100594 800E24A4 00000000 */   nop
.Lmenu_800E24A8:
/* 100598 800E24A8 8E24019C */  lw         $a0, 0x19C($s1)
/* 10059C 800E24AC 10800003 */  beqz       $a0, .Lmenu_800E24BC
/* 1005A0 800E24B0 00000000 */   nop
/* 1005A4 800E24B4 0C009444 */  jal        func_80025110
/* 1005A8 800E24B8 00000000 */   nop
.Lmenu_800E24BC:
/* 1005AC 800E24BC 8E2401B0 */  lw         $a0, 0x1B0($s1)
/* 1005B0 800E24C0 10800003 */  beqz       $a0, .Lmenu_800E24D0
/* 1005B4 800E24C4 00000000 */   nop
/* 1005B8 800E24C8 0C009444 */  jal        func_80025110
/* 1005BC 800E24CC 00000000 */   nop
.Lmenu_800E24D0:
/* 1005C0 800E24D0 8E2401C4 */  lw         $a0, 0x1C4($s1)
/* 1005C4 800E24D4 10800003 */  beqz       $a0, .Lmenu_800E24E4
/* 1005C8 800E24D8 00000000 */   nop
/* 1005CC 800E24DC 0C009444 */  jal        func_80025110
/* 1005D0 800E24E0 00000000 */   nop
.Lmenu_800E24E4:
/* 1005D4 800E24E4 8E2401D8 */  lw         $a0, 0x1D8($s1)
/* 1005D8 800E24E8 10800003 */  beqz       $a0, .Lmenu_800E24F8
/* 1005DC 800E24EC 00000000 */   nop
/* 1005E0 800E24F0 0C009444 */  jal        func_80025110
/* 1005E4 800E24F4 00000000 */   nop
.Lmenu_800E24F8:
/* 1005E8 800E24F8 8E2401EC */  lw         $a0, 0x1EC($s1)
/* 1005EC 800E24FC 10800003 */  beqz       $a0, .Lmenu_800E250C
/* 1005F0 800E2500 00000000 */   nop
/* 1005F4 800E2504 0C009444 */  jal        func_80025110
/* 1005F8 800E2508 00000000 */   nop
.Lmenu_800E250C:
/* 1005FC 800E250C 8E240200 */  lw         $a0, 0x200($s1)
/* 100600 800E2510 10800003 */  beqz       $a0, .Lmenu_800E2520
/* 100604 800E2514 00000000 */   nop
/* 100608 800E2518 0C009444 */  jal        func_80025110
/* 10060C 800E251C 00000000 */   nop
.Lmenu_800E2520:
/* 100610 800E2520 8E240214 */  lw         $a0, 0x214($s1)
/* 100614 800E2524 10800003 */  beqz       $a0, .Lmenu_800E2534
/* 100618 800E2528 00000000 */   nop
/* 10061C 800E252C 0C009444 */  jal        func_80025110
/* 100620 800E2530 00000000 */   nop
.Lmenu_800E2534:
/* 100624 800E2534 0C0163B9 */  jal        func_80058EE4
/* 100628 800E2538 262400A8 */   addiu     $a0, $s1, 0xA8
/* 10062C 800E253C 0C0163B9 */  jal        func_80058EE4
/* 100630 800E2540 262400BC */   addiu     $a0, $s1, 0xBC
/* 100634 800E2544 0C0163B9 */  jal        func_80058EE4
/* 100638 800E2548 262400D0 */   addiu     $a0, $s1, 0xD0
/* 10063C 800E254C 0C0163B9 */  jal        func_80058EE4
/* 100640 800E2550 262400E4 */   addiu     $a0, $s1, 0xE4
/* 100644 800E2554 0C0163B9 */  jal        func_80058EE4
/* 100648 800E2558 262400F8 */   addiu     $a0, $s1, 0xF8
/* 10064C 800E255C 0C0163B9 */  jal        func_80058EE4
/* 100650 800E2560 2624010C */   addiu     $a0, $s1, 0x10C
/* 100654 800E2564 0C0163B9 */  jal        func_80058EE4
/* 100658 800E2568 26240120 */   addiu     $a0, $s1, 0x120
/* 10065C 800E256C 0C0163B9 */  jal        func_80058EE4
/* 100660 800E2570 2624013C */   addiu     $a0, $s1, 0x13C
/* 100664 800E2574 0C0163B9 */  jal        func_80058EE4
/* 100668 800E2578 26240150 */   addiu     $a0, $s1, 0x150
/* 10066C 800E257C 0C0163B9 */  jal        func_80058EE4
/* 100670 800E2580 26240164 */   addiu     $a0, $s1, 0x164
/* 100674 800E2584 0C0163B9 */  jal        func_80058EE4
/* 100678 800E2588 26240178 */   addiu     $a0, $s1, 0x178
/* 10067C 800E258C 0C0163B9 */  jal        func_80058EE4
/* 100680 800E2590 2624018C */   addiu     $a0, $s1, 0x18C
/* 100684 800E2594 0C0163B9 */  jal        func_80058EE4
/* 100688 800E2598 262401A0 */   addiu     $a0, $s1, 0x1A0
/* 10068C 800E259C 0C0163B9 */  jal        func_80058EE4
/* 100690 800E25A0 262401B4 */   addiu     $a0, $s1, 0x1B4
/* 100694 800E25A4 0C0163B9 */  jal        func_80058EE4
/* 100698 800E25A8 262401C8 */   addiu     $a0, $s1, 0x1C8
/* 10069C 800E25AC 0C0163B9 */  jal        func_80058EE4
/* 1006A0 800E25B0 262401DC */   addiu     $a0, $s1, 0x1DC
/* 1006A4 800E25B4 0C0163B9 */  jal        func_80058EE4
/* 1006A8 800E25B8 262401F0 */   addiu     $a0, $s1, 0x1F0
/* 1006AC 800E25BC 0C0163B9 */  jal        func_80058EE4
/* 1006B0 800E25C0 26240204 */   addiu     $a0, $s1, 0x204
/* 1006B4 800E25C4 0C0163B9 */  jal        func_80058EE4
/* 1006B8 800E25C8 26240218 */   addiu     $a0, $s1, 0x218
/* 1006BC 800E25CC 0C0385FB */  jal        func_menu_800E17EC
/* 1006C0 800E25D0 02202021 */   addu      $a0, $s1, $zero
/* 1006C4 800E25D4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1006C8 800E25D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1006CC 800E25DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1006D0 800E25E0 03E00008 */  jr         $ra
/* 1006D4 800E25E4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E25E8
/* 1006D8 800E25E8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1006DC 800E25EC AFB40020 */  sw         $s4, 0x20($sp)
/* 1006E0 800E25F0 0080A021 */  addu       $s4, $a0, $zero
/* 1006E4 800E25F4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1006E8 800E25F8 AFB50024 */  sw         $s5, 0x24($sp)
/* 1006EC 800E25FC AFB3001C */  sw         $s3, 0x1C($sp)
/* 1006F0 800E2600 AFB20018 */  sw         $s2, 0x18($sp)
/* 1006F4 800E2604 AFB10014 */  sw         $s1, 0x14($sp)
/* 1006F8 800E2608 AFB00010 */  sw         $s0, 0x10($sp)
/* 1006FC 800E260C 8E82006C */  lw         $v0, 0x6C($s4)
/* 100700 800E2610 10400007 */  beqz       $v0, .Lmenu_800E2630
/* 100704 800E2614 00A0A821 */   addu      $s5, $a1, $zero
/* 100708 800E2618 8EA20028 */  lw         $v0, 0x28($s5)
/* 10070C 800E261C 24050012 */  addiu      $a1, $zero, 0x12
/* 100710 800E2620 84440098 */  lh         $a0, 0x98($v0)
/* 100714 800E2624 8C42009C */  lw         $v0, 0x9C($v0)
/* 100718 800E2628 0040F809 */  jalr       $v0
/* 10071C 800E262C 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800E2630:
/* 100720 800E2630 02A02021 */  addu       $a0, $s5, $zero
/* 100724 800E2634 0C0026F4 */  jal        func_80009BD0
/* 100728 800E2638 24050007 */   addiu     $a1, $zero, 0x7
/* 10072C 800E263C 0C002680 */  jal        func_80009A00
/* 100730 800E2640 02A02021 */   addu      $a0, $s5, $zero
/* 100734 800E2644 14400007 */  bnez       $v0, .Lmenu_800E2664
/* 100738 800E2648 AE820068 */   sw        $v0, 0x68($s4)
/* 10073C 800E264C 8EA20028 */  lw         $v0, 0x28($s5)
/* 100740 800E2650 24050004 */  addiu      $a1, $zero, 0x4
/* 100744 800E2654 84440098 */  lh         $a0, 0x98($v0)
/* 100748 800E2658 8C42009C */  lw         $v0, 0x9C($v0)
/* 10074C 800E265C 0040F809 */  jalr       $v0
/* 100750 800E2660 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800E2664:
/* 100754 800E2664 02A02021 */  addu       $a0, $s5, $zero
/* 100758 800E2668 0C0026F4 */  jal        func_80009BD0
/* 10075C 800E266C 24050008 */   addiu     $a1, $zero, 0x8
/* 100760 800E2670 02A02021 */  addu       $a0, $s5, $zero
/* 100764 800E2674 0C0026F4 */  jal        func_80009BD0
/* 100768 800E2678 24050005 */   addiu     $a1, $zero, 0x5
/* 10076C 800E267C 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 100770 800E2680 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 100774 800E2684 0C01FB65 */  jal        func_8007ED94
/* 100778 800E2688 00000000 */   nop
/* 10077C 800E268C 8E900068 */  lw         $s0, 0x68($s4)
/* 100780 800E2690 00102040 */  sll        $a0, $s0, 1
/* 100784 800E2694 00902021 */  addu       $a0, $a0, $s0
/* 100788 800E2698 00042080 */  sll        $a0, $a0, 2
/* 10078C 800E269C 00902021 */  addu       $a0, $a0, $s0
/* 100790 800E26A0 00042100 */  sll        $a0, $a0, 4
/* 100794 800E26A4 00902023 */  subu       $a0, $a0, $s0
/* 100798 800E26A8 00042080 */  sll        $a0, $a0, 2
/* 10079C 800E26AC 0C00943C */  jal        func_800250F0
/* 1007A0 800E26B0 24840008 */   addiu     $a0, $a0, 0x8
/* 1007A4 800E26B4 24420008 */  addiu      $v0, $v0, 0x8
/* 1007A8 800E26B8 00409821 */  addu       $s3, $v0, $zero
/* 1007AC 800E26BC 02609021 */  addu       $s2, $s3, $zero
/* 1007B0 800E26C0 2611FFFF */  addiu      $s1, $s0, -0x1
/* 1007B4 800E26C4 06200007 */  bltz       $s1, .Lmenu_800E26E4
/* 1007B8 800E26C8 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 1007BC 800E26CC 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E26D0:
/* 1007C0 800E26D0 0C010684 */  jal        func_80041A10
/* 1007C4 800E26D4 02402021 */   addu      $a0, $s2, $zero
/* 1007C8 800E26D8 2631FFFF */  addiu      $s1, $s1, -0x1
/* 1007CC 800E26DC 1630FFFC */  bne        $s1, $s0, .Lmenu_800E26D0
/* 1007D0 800E26E0 2652033C */   addiu     $s2, $s2, 0x33C
.Lmenu_800E26E4:
/* 1007D4 800E26E4 8E900068 */  lw         $s0, 0x68($s4)
/* 1007D8 800E26E8 AE93006C */  sw         $s3, 0x6C($s4)
/* 1007DC 800E26EC 00102080 */  sll        $a0, $s0, 2
/* 1007E0 800E26F0 00902021 */  addu       $a0, $a0, $s0
/* 1007E4 800E26F4 00042080 */  sll        $a0, $a0, 2
/* 1007E8 800E26F8 0C00943C */  jal        func_800250F0
/* 1007EC 800E26FC 24840008 */   addiu     $a0, $a0, 0x8
/* 1007F0 800E2700 24420008 */  addiu      $v0, $v0, 0x8
/* 1007F4 800E2704 00409821 */  addu       $s3, $v0, $zero
/* 1007F8 800E2708 02609021 */  addu       $s2, $s3, $zero
/* 1007FC 800E270C 2611FFFF */  addiu      $s1, $s0, -0x1
/* 100800 800E2710 06200007 */  bltz       $s1, .Lmenu_800E2730
/* 100804 800E2714 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 100808 800E2718 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E271C:
/* 10080C 800E271C 0C019E00 */  jal        func_80067800
/* 100810 800E2720 02402021 */   addu      $a0, $s2, $zero
/* 100814 800E2724 2631FFFF */  addiu      $s1, $s1, -0x1
/* 100818 800E2728 1630FFFC */  bne        $s1, $s0, .Lmenu_800E271C
/* 10081C 800E272C 26520014 */   addiu     $s2, $s2, 0x14
.Lmenu_800E2730:
/* 100820 800E2730 0C01FB72 */  jal        func_8007EDC8
/* 100824 800E2734 AE930070 */   sw        $s3, 0x70($s4)
/* 100828 800E2738 8E820068 */  lw         $v0, 0x68($s4)
/* 10082C 800E273C 000220C0 */  sll        $a0, $v0, 3
/* 100830 800E2740 0C00943C */  jal        func_800250F0
/* 100834 800E2744 00822021 */   addu      $a0, $a0, $v0
/* 100838 800E2748 8E83006C */  lw         $v1, 0x6C($s4)
/* 10083C 800E274C 00402021 */  addu       $a0, $v0, $zero
/* 100840 800E2750 10600006 */  beqz       $v1, .Lmenu_800E276C
/* 100844 800E2754 AE840074 */   sw        $a0, 0x74($s4)
/* 100848 800E2758 8E820070 */  lw         $v0, 0x70($s4)
/* 10084C 800E275C 50400004 */  beql       $v0, $zero, .Lmenu_800E2770
/* 100850 800E2760 3C04800D */   lui       $a0, %hi(D_menu_800CAD10)
/* 100854 800E2764 14800008 */  bnez       $a0, .Lmenu_800E2788
/* 100858 800E2768 00008821 */   addu      $s1, $zero, $zero
.Lmenu_800E276C:
/* 10085C 800E276C 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
.Lmenu_800E2770:
/* 100860 800E2770 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 100864 800E2774 00002821 */  addu       $a1, $zero, $zero
/* 100868 800E2778 00A03021 */  addu       $a2, $a1, $zero
/* 10086C 800E277C 0C011ACF */  jal        func_80046B3C
/* 100870 800E2780 00A03821 */   addu      $a3, $a1, $zero
/* 100874 800E2784 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800E2788:
/* 100878 800E2788 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E278C:
/* 10087C 800E278C 8E820068 */  lw         $v0, 0x68($s4)
/* 100880 800E2790 0222102B */  sltu       $v0, $s1, $v0
/* 100884 800E2794 10400011 */  beqz       $v0, .Lmenu_800E27DC
/* 100888 800E2798 02A02021 */   addu      $a0, $s5, $zero
/* 10088C 800E279C 8EA20028 */  lw         $v0, 0x28($s5)
/* 100890 800E27A0 844400A0 */  lh         $a0, 0xA0($v0)
/* 100894 800E27A4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 100898 800E27A8 0040F809 */  jalr       $v0
/* 10089C 800E27AC 02A42021 */   addu      $a0, $s5, $a0
/* 1008A0 800E27B0 26A50044 */  addiu      $a1, $s5, 0x44
/* 1008A4 800E27B4 8E840074 */  lw         $a0, 0x74($s4)
/* 1008A8 800E27B8 24060008 */  addiu      $a2, $zero, 0x8
/* 1008AC 800E27BC 0C000708 */  jal        func_80001C20
/* 1008B0 800E27C0 00902021 */   addu      $a0, $a0, $s0
/* 1008B4 800E27C4 8E820074 */  lw         $v0, 0x74($s4)
/* 1008B8 800E27C8 26310001 */  addiu      $s1, $s1, 0x1
/* 1008BC 800E27CC 02021021 */  addu       $v0, $s0, $v0
/* 1008C0 800E27D0 26100009 */  addiu      $s0, $s0, 0x9
/* 1008C4 800E27D4 080389E3 */  j          .Lmenu_800E278C
/* 1008C8 800E27D8 A0400008 */   sb        $zero, 0x8($v0)
.Lmenu_800E27DC:
/* 1008CC 800E27DC 0C0026F4 */  jal        func_80009BD0
/* 1008D0 800E27E0 24050006 */   addiu     $a1, $zero, 0x6
/* 1008D4 800E27E4 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1008D8 800E27E8 8FB50024 */  lw         $s5, 0x24($sp)
/* 1008DC 800E27EC 8FB40020 */  lw         $s4, 0x20($sp)
/* 1008E0 800E27F0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1008E4 800E27F4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1008E8 800E27F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1008EC 800E27FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1008F0 800E2800 03E00008 */  jr         $ra
/* 1008F4 800E2804 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E2808
/* 1008F8 800E2808 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1008FC 800E280C AFB00020 */  sw         $s0, 0x20($sp)
/* 100900 800E2810 00808021 */  addu       $s0, $a0, $zero
/* 100904 800E2814 AFBF0038 */  sw         $ra, 0x38($sp)
/* 100908 800E2818 AFB50034 */  sw         $s5, 0x34($sp)
/* 10090C 800E281C AFB40030 */  sw         $s4, 0x30($sp)
/* 100910 800E2820 AFB3002C */  sw         $s3, 0x2C($sp)
/* 100914 800E2824 AFB20028 */  sw         $s2, 0x28($sp)
/* 100918 800E2828 AFB10024 */  sw         $s1, 0x24($sp)
/* 10091C 800E282C 8E020074 */  lw         $v0, 0x74($s0)
/* 100920 800E2830 1040002C */  beqz       $v0, .Lmenu_800E28E4
/* 100924 800E2834 00A0A821 */   addu      $s5, $a1, $zero
/* 100928 800E2838 8E020068 */  lw         $v0, 0x68($s0)
/* 10092C 800E283C 10400023 */  beqz       $v0, .Lmenu_800E28CC
/* 100930 800E2840 00009821 */   addu      $s3, $zero, $zero
/* 100934 800E2844 0260A021 */  addu       $s4, $s3, $zero
/* 100938 800E2848 02609021 */  addu       $s2, $s3, $zero
/* 10093C 800E284C 02608821 */  addu       $s1, $s3, $zero
.Lmenu_800E2850:
/* 100940 800E2850 02A03821 */  addu       $a3, $s5, $zero
/* 100944 800E2854 26730001 */  addiu      $s3, $s3, 0x1
/* 100948 800E2858 8E030070 */  lw         $v1, 0x70($s0)
/* 10094C 800E285C 8E050008 */  lw         $a1, 0x8($s0)
/* 100950 800E2860 8E060074 */  lw         $a2, 0x74($s0)
/* 100954 800E2864 02231821 */  addu       $v1, $s1, $v1
/* 100958 800E2868 8C620010 */  lw         $v0, 0x10($v1)
/* 10095C 800E286C 00D23021 */  addu       $a2, $a2, $s2
/* 100960 800E2870 84440010 */  lh         $a0, 0x10($v0)
/* 100964 800E2874 8C420014 */  lw         $v0, 0x14($v0)
/* 100968 800E2878 0040F809 */  jalr       $v0
/* 10096C 800E287C 00642021 */   addu      $a0, $v1, $a0
/* 100970 800E2880 24050003 */  addiu      $a1, $zero, 0x3
/* 100974 800E2884 8E04006C */  lw         $a0, 0x6C($s0)
/* 100978 800E2888 8E020070 */  lw         $v0, 0x70($s0)
/* 10097C 800E288C 00942021 */  addu       $a0, $a0, $s4
/* 100980 800E2890 00511021 */  addu       $v0, $v0, $s1
/* 100984 800E2894 AFA20010 */  sw         $v0, 0x10($sp)
/* 100988 800E2898 8E020074 */  lw         $v0, 0x74($s0)
/* 10098C 800E289C 2694033C */  addiu      $s4, $s4, 0x33C
/* 100990 800E28A0 AFB50018 */  sw         $s5, 0x18($sp)
/* 100994 800E28A4 00521021 */  addu       $v0, $v0, $s2
/* 100998 800E28A8 AFA20014 */  sw         $v0, 0x14($sp)
/* 10099C 800E28AC 8E060004 */  lw         $a2, 0x4($s0)
/* 1009A0 800E28B0 8E070008 */  lw         $a3, 0x8($s0)
/* 1009A4 800E28B4 0C010701 */  jal        func_80041C04
/* 1009A8 800E28B8 26310014 */   addiu     $s1, $s1, 0x14
/* 1009AC 800E28BC 8E020068 */  lw         $v0, 0x68($s0)
/* 1009B0 800E28C0 0262102B */  sltu       $v0, $s3, $v0
/* 1009B4 800E28C4 1440FFE2 */  bnez       $v0, .Lmenu_800E2850
/* 1009B8 800E28C8 26520009 */   addiu     $s2, $s2, 0x9
.Lmenu_800E28CC:
/* 1009BC 800E28CC 8E040074 */  lw         $a0, 0x74($s0)
/* 1009C0 800E28D0 50800004 */  beql       $a0, $zero, .Lmenu_800E28E4
/* 1009C4 800E28D4 AE000074 */   sw        $zero, 0x74($s0)
/* 1009C8 800E28D8 0C009444 */  jal        func_80025110
/* 1009CC 800E28DC 00000000 */   nop
/* 1009D0 800E28E0 AE000074 */  sw         $zero, 0x74($s0)
.Lmenu_800E28E4:
/* 1009D4 800E28E4 8FBF0038 */  lw         $ra, 0x38($sp)
/* 1009D8 800E28E8 8FB50034 */  lw         $s5, 0x34($sp)
/* 1009DC 800E28EC 8FB40030 */  lw         $s4, 0x30($sp)
/* 1009E0 800E28F0 8FB3002C */  lw         $s3, 0x2C($sp)
/* 1009E4 800E28F4 8FB20028 */  lw         $s2, 0x28($sp)
/* 1009E8 800E28F8 8FB10024 */  lw         $s1, 0x24($sp)
/* 1009EC 800E28FC 8FB00020 */  lw         $s0, 0x20($sp)
/* 1009F0 800E2900 03E00008 */  jr         $ra
/* 1009F4 800E2904 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800E2908
/* 1009F8 800E2908 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1009FC 800E290C AFB40020 */  sw         $s4, 0x20($sp)
/* 100A00 800E2910 0080A021 */  addu       $s4, $a0, $zero
/* 100A04 800E2914 AFBF0028 */  sw         $ra, 0x28($sp)
/* 100A08 800E2918 AFB50024 */  sw         $s5, 0x24($sp)
/* 100A0C 800E291C AFB3001C */  sw         $s3, 0x1C($sp)
/* 100A10 800E2920 AFB20018 */  sw         $s2, 0x18($sp)
/* 100A14 800E2924 AFB10014 */  sw         $s1, 0x14($sp)
/* 100A18 800E2928 AFB00010 */  sw         $s0, 0x10($sp)
/* 100A1C 800E292C 8E82007C */  lw         $v0, 0x7C($s4)
/* 100A20 800E2930 10400007 */  beqz       $v0, .Lmenu_800E2950
/* 100A24 800E2934 00A0A821 */   addu      $s5, $a1, $zero
/* 100A28 800E2938 8EA20028 */  lw         $v0, 0x28($s5)
/* 100A2C 800E293C 24050012 */  addiu      $a1, $zero, 0x12
/* 100A30 800E2940 84440098 */  lh         $a0, 0x98($v0)
/* 100A34 800E2944 8C42009C */  lw         $v0, 0x9C($v0)
/* 100A38 800E2948 0040F809 */  jalr       $v0
/* 100A3C 800E294C 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800E2950:
/* 100A40 800E2950 02A02021 */  addu       $a0, $s5, $zero
/* 100A44 800E2954 0C0026F4 */  jal        func_80009BD0
/* 100A48 800E2958 24050007 */   addiu     $a1, $zero, 0x7
/* 100A4C 800E295C 0C002680 */  jal        func_80009A00
/* 100A50 800E2960 02A02021 */   addu      $a0, $s5, $zero
/* 100A54 800E2964 14400007 */  bnez       $v0, .Lmenu_800E2984
/* 100A58 800E2968 AE820078 */   sw        $v0, 0x78($s4)
/* 100A5C 800E296C 8EA20028 */  lw         $v0, 0x28($s5)
/* 100A60 800E2970 24050004 */  addiu      $a1, $zero, 0x4
/* 100A64 800E2974 84440098 */  lh         $a0, 0x98($v0)
/* 100A68 800E2978 8C42009C */  lw         $v0, 0x9C($v0)
/* 100A6C 800E297C 0040F809 */  jalr       $v0
/* 100A70 800E2980 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800E2984:
/* 100A74 800E2984 02A02021 */  addu       $a0, $s5, $zero
/* 100A78 800E2988 0C0026F4 */  jal        func_80009BD0
/* 100A7C 800E298C 24050008 */   addiu     $a1, $zero, 0x8
/* 100A80 800E2990 02A02021 */  addu       $a0, $s5, $zero
/* 100A84 800E2994 0C0026F4 */  jal        func_80009BD0
/* 100A88 800E2998 24050005 */   addiu     $a1, $zero, 0x5
/* 100A8C 800E299C 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 100A90 800E29A0 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 100A94 800E29A4 0C01FB65 */  jal        func_8007ED94
/* 100A98 800E29A8 00000000 */   nop
/* 100A9C 800E29AC 8E900078 */  lw         $s0, 0x78($s4)
/* 100AA0 800E29B0 00102080 */  sll        $a0, $s0, 2
/* 100AA4 800E29B4 00902021 */  addu       $a0, $a0, $s0
/* 100AA8 800E29B8 00042080 */  sll        $a0, $a0, 2
/* 100AAC 800E29BC 0C00943C */  jal        func_800250F0
/* 100AB0 800E29C0 24840008 */   addiu     $a0, $a0, 0x8
/* 100AB4 800E29C4 24420008 */  addiu      $v0, $v0, 0x8
/* 100AB8 800E29C8 00409821 */  addu       $s3, $v0, $zero
/* 100ABC 800E29CC 02609021 */  addu       $s2, $s3, $zero
/* 100AC0 800E29D0 2611FFFF */  addiu      $s1, $s0, -0x1
/* 100AC4 800E29D4 06200007 */  bltz       $s1, .Lmenu_800E29F4
/* 100AC8 800E29D8 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 100ACC 800E29DC 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E29E0:
/* 100AD0 800E29E0 0C002F50 */  jal        func_8000BD40
/* 100AD4 800E29E4 02402021 */   addu      $a0, $s2, $zero
/* 100AD8 800E29E8 2631FFFF */  addiu      $s1, $s1, -0x1
/* 100ADC 800E29EC 1630FFFC */  bne        $s1, $s0, .Lmenu_800E29E0
/* 100AE0 800E29F0 26520014 */   addiu     $s2, $s2, 0x14
.Lmenu_800E29F4:
/* 100AE4 800E29F4 0C01FB72 */  jal        func_8007EDC8
/* 100AE8 800E29F8 AE93007C */   sw        $s3, 0x7C($s4)
/* 100AEC 800E29FC 8E820078 */  lw         $v0, 0x78($s4)
/* 100AF0 800E2A00 00022040 */  sll        $a0, $v0, 1
/* 100AF4 800E2A04 00822021 */  addu       $a0, $a0, $v0
/* 100AF8 800E2A08 00042080 */  sll        $a0, $a0, 2
/* 100AFC 800E2A0C 0C00943C */  jal        func_800250F0
/* 100B00 800E2A10 00822021 */   addu      $a0, $a0, $v0
/* 100B04 800E2A14 8E83007C */  lw         $v1, 0x7C($s4)
/* 100B08 800E2A18 10600003 */  beqz       $v1, .Lmenu_800E2A28
/* 100B0C 800E2A1C AE820080 */   sw        $v0, 0x80($s4)
/* 100B10 800E2A20 14400008 */  bnez       $v0, .Lmenu_800E2A44
/* 100B14 800E2A24 00009021 */   addu      $s2, $zero, $zero
.Lmenu_800E2A28:
/* 100B18 800E2A28 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 100B1C 800E2A2C 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 100B20 800E2A30 00002821 */  addu       $a1, $zero, $zero
/* 100B24 800E2A34 00A03021 */  addu       $a2, $a1, $zero
/* 100B28 800E2A38 0C011ACF */  jal        func_80046B3C
/* 100B2C 800E2A3C 00A03821 */   addu      $a3, $a1, $zero
/* 100B30 800E2A40 00009021 */  addu       $s2, $zero, $zero
.Lmenu_800E2A44:
/* 100B34 800E2A44 3C13800D */  lui        $s3, %hi(D_menu_800CAE08)
/* 100B38 800E2A48 02408821 */  addu       $s1, $s2, $zero
/* 100B3C 800E2A4C 02408021 */  addu       $s0, $s2, $zero
.Lmenu_800E2A50:
/* 100B40 800E2A50 8E820078 */  lw         $v0, 0x78($s4)
/* 100B44 800E2A54 0242102B */  sltu       $v0, $s2, $v0
/* 100B48 800E2A58 10400019 */  beqz       $v0, .Lmenu_800E2AC0
/* 100B4C 800E2A5C 02A02021 */   addu      $a0, $s5, $zero
/* 100B50 800E2A60 8EA20028 */  lw         $v0, 0x28($s5)
/* 100B54 800E2A64 844400A0 */  lh         $a0, 0xA0($v0)
/* 100B58 800E2A68 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 100B5C 800E2A6C 0040F809 */  jalr       $v0
/* 100B60 800E2A70 02A42021 */   addu      $a0, $s5, $a0
/* 100B64 800E2A74 26A50044 */  addiu      $a1, $s5, 0x44
/* 100B68 800E2A78 8E840080 */  lw         $a0, 0x80($s4)
/* 100B6C 800E2A7C 24060008 */  addiu      $a2, $zero, 0x8
/* 100B70 800E2A80 0C000708 */  jal        func_80001C20
/* 100B74 800E2A84 00902021 */   addu      $a0, $a0, $s0
/* 100B78 800E2A88 8E820080 */  lw         $v0, 0x80($s4)
/* 100B7C 800E2A8C 26520001 */  addiu      $s2, $s2, 0x1
/* 100B80 800E2A90 02021021 */  addu       $v0, $s0, $v0
/* 100B84 800E2A94 A0400008 */  sb         $zero, 0x8($v0)
/* 100B88 800E2A98 8E840080 */  lw         $a0, 0x80($s4)
/* 100B8C 800E2A9C 2665AE08 */  addiu      $a1, $s3, %lo(D_menu_800CAE08)
/* 100B90 800E2AA0 0C0006C8 */  jal        func_80001B20
/* 100B94 800E2AA4 00902021 */   addu      $a0, $a0, $s0
/* 100B98 800E2AA8 8E84007C */  lw         $a0, 0x7C($s4)
/* 100B9C 800E2AAC 2610000D */  addiu      $s0, $s0, 0xD
/* 100BA0 800E2AB0 0C002F70 */  jal        func_8000BDC0
/* 100BA4 800E2AB4 00912021 */   addu      $a0, $a0, $s1
/* 100BA8 800E2AB8 08038A94 */  j          .Lmenu_800E2A50
/* 100BAC 800E2ABC 26310014 */   addiu     $s1, $s1, 0x14
.Lmenu_800E2AC0:
/* 100BB0 800E2AC0 0C0026F4 */  jal        func_80009BD0
/* 100BB4 800E2AC4 24050006 */   addiu     $a1, $zero, 0x6
/* 100BB8 800E2AC8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 100BBC 800E2ACC 8FB50024 */  lw         $s5, 0x24($sp)
/* 100BC0 800E2AD0 8FB40020 */  lw         $s4, 0x20($sp)
/* 100BC4 800E2AD4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 100BC8 800E2AD8 8FB20018 */  lw         $s2, 0x18($sp)
/* 100BCC 800E2ADC 8FB10014 */  lw         $s1, 0x14($sp)
/* 100BD0 800E2AE0 8FB00010 */  lw         $s0, 0x10($sp)
/* 100BD4 800E2AE4 03E00008 */  jr         $ra
/* 100BD8 800E2AE8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E2AEC
/* 100BDC 800E2AEC 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 100BE0 800E2AF0 AFB20048 */  sw         $s2, 0x48($sp)
/* 100BE4 800E2AF4 00809021 */  addu       $s2, $a0, $zero
/* 100BE8 800E2AF8 AFBF0058 */  sw         $ra, 0x58($sp)
/* 100BEC 800E2AFC AFB50054 */  sw         $s5, 0x54($sp)
/* 100BF0 800E2B00 AFB40050 */  sw         $s4, 0x50($sp)
/* 100BF4 800E2B04 AFB3004C */  sw         $s3, 0x4C($sp)
/* 100BF8 800E2B08 AFB10044 */  sw         $s1, 0x44($sp)
/* 100BFC 800E2B0C AFB00040 */  sw         $s0, 0x40($sp)
/* 100C00 800E2B10 8E420080 */  lw         $v0, 0x80($s2)
/* 100C04 800E2B14 10400035 */  beqz       $v0, .Lmenu_800E2BEC
/* 100C08 800E2B18 00009821 */   addu      $s3, $zero, $zero
/* 100C0C 800E2B1C 3C15800D */  lui        $s5, %hi(D_menu_800CAE10)
/* 100C10 800E2B20 3C14800D */  lui        $s4, %hi(D_menu_800CAD10)
/* 100C14 800E2B24 02608821 */  addu       $s1, $s3, $zero
/* 100C18 800E2B28 02608021 */  addu       $s0, $s3, $zero
.Lmenu_800E2B2C:
/* 100C1C 800E2B2C 8E420078 */  lw         $v0, 0x78($s2)
/* 100C20 800E2B30 0262102B */  sltu       $v0, $s3, $v0
/* 100C24 800E2B34 10400027 */  beqz       $v0, .Lmenu_800E2BD4
/* 100C28 800E2B38 00000000 */   nop
/* 100C2C 800E2B3C 8E44007C */  lw         $a0, 0x7C($s2)
/* 100C30 800E2B40 0C002F70 */  jal        func_8000BDC0
/* 100C34 800E2B44 00902021 */   addu      $a0, $a0, $s0
/* 100C38 800E2B48 8E44007C */  lw         $a0, 0x7C($s2)
/* 100C3C 800E2B4C 8E450080 */  lw         $a1, 0x80($s2)
/* 100C40 800E2B50 02042021 */  addu       $a0, $s0, $a0
/* 100C44 800E2B54 8C820010 */  lw         $v0, 0x10($a0)
/* 100C48 800E2B58 00B12821 */  addu       $a1, $a1, $s1
/* 100C4C 800E2B5C 84430018 */  lh         $v1, 0x18($v0)
/* 100C50 800E2B60 8C42001C */  lw         $v0, 0x1C($v0)
/* 100C54 800E2B64 0040F809 */  jalr       $v0
/* 100C58 800E2B68 00832021 */   addu      $a0, $a0, $v1
/* 100C5C 800E2B6C 54400016 */  bnel       $v0, $zero, .Lmenu_800E2BC8
/* 100C60 800E2B70 2631000D */   addiu     $s1, $s1, 0xD
/* 100C64 800E2B74 26ABAE10 */  addiu      $t3, $s5, %lo(D_menu_800CAE10)
/* 100C68 800E2B78 8D680000 */  lw         $t0, 0x0($t3)
/* 100C6C 800E2B7C 8D690004 */  lw         $t1, 0x4($t3)
/* 100C70 800E2B80 8D6A0008 */  lw         $t2, 0x8($t3)
/* 100C74 800E2B84 AFA80010 */  sw         $t0, 0x10($sp)
/* 100C78 800E2B88 AFA90014 */  sw         $t1, 0x14($sp)
/* 100C7C 800E2B8C AFAA0018 */  sw         $t2, 0x18($sp)
/* 100C80 800E2B90 8D68000C */  lw         $t0, 0xC($t3)
/* 100C84 800E2B94 81690010 */  lb         $t1, 0x10($t3)
/* 100C88 800E2B98 AFA8001C */  sw         $t0, 0x1C($sp)
/* 100C8C 800E2B9C A3A90020 */  sb         $t1, 0x20($sp)
/* 100C90 800E2BA0 8E450080 */  lw         $a1, 0x80($s2)
/* 100C94 800E2BA4 27A40010 */  addiu      $a0, $sp, 0x10
/* 100C98 800E2BA8 0C0006C8 */  jal        func_80001B20
/* 100C9C 800E2BAC 00B12821 */   addu      $a1, $a1, $s1
/* 100CA0 800E2BB0 2684AD10 */  addiu      $a0, $s4, %lo(D_menu_800CAD10)
/* 100CA4 800E2BB4 00002821 */  addu       $a1, $zero, $zero
/* 100CA8 800E2BB8 00A03021 */  addu       $a2, $a1, $zero
/* 100CAC 800E2BBC 0C011ACF */  jal        func_80046B3C
/* 100CB0 800E2BC0 00A03821 */   addu      $a3, $a1, $zero
/* 100CB4 800E2BC4 2631000D */  addiu      $s1, $s1, 0xD
.Lmenu_800E2BC8:
/* 100CB8 800E2BC8 26100014 */  addiu      $s0, $s0, 0x14
/* 100CBC 800E2BCC 08038ACB */  j          .Lmenu_800E2B2C
/* 100CC0 800E2BD0 26730001 */   addiu     $s3, $s3, 0x1
.Lmenu_800E2BD4:
/* 100CC4 800E2BD4 8E440080 */  lw         $a0, 0x80($s2)
/* 100CC8 800E2BD8 50800004 */  beql       $a0, $zero, .Lmenu_800E2BEC
/* 100CCC 800E2BDC AE400080 */   sw        $zero, 0x80($s2)
/* 100CD0 800E2BE0 0C009444 */  jal        func_80025110
/* 100CD4 800E2BE4 00000000 */   nop
/* 100CD8 800E2BE8 AE400080 */  sw         $zero, 0x80($s2)
.Lmenu_800E2BEC:
/* 100CDC 800E2BEC 8FBF0058 */  lw         $ra, 0x58($sp)
/* 100CE0 800E2BF0 8FB50054 */  lw         $s5, 0x54($sp)
/* 100CE4 800E2BF4 8FB40050 */  lw         $s4, 0x50($sp)
/* 100CE8 800E2BF8 8FB3004C */  lw         $s3, 0x4C($sp)
/* 100CEC 800E2BFC 8FB20048 */  lw         $s2, 0x48($sp)
/* 100CF0 800E2C00 8FB10044 */  lw         $s1, 0x44($sp)
/* 100CF4 800E2C04 8FB00040 */  lw         $s0, 0x40($sp)
/* 100CF8 800E2C08 03E00008 */  jr         $ra
/* 100CFC 800E2C0C 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_menu_800E2C10
/* 100D00 800E2C10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 100D04 800E2C14 AFB20018 */  sw         $s2, 0x18($sp)
/* 100D08 800E2C18 00809021 */  addu       $s2, $a0, $zero
/* 100D0C 800E2C1C AFBF0020 */  sw         $ra, 0x20($sp)
/* 100D10 800E2C20 AFB3001C */  sw         $s3, 0x1C($sp)
/* 100D14 800E2C24 AFB10014 */  sw         $s1, 0x14($sp)
/* 100D18 800E2C28 AFB00010 */  sw         $s0, 0x10($sp)
/* 100D1C 800E2C2C 8E420088 */  lw         $v0, 0x88($s2)
/* 100D20 800E2C30 10400007 */  beqz       $v0, .Lmenu_800E2C50
/* 100D24 800E2C34 00A09821 */   addu      $s3, $a1, $zero
/* 100D28 800E2C38 8E620028 */  lw         $v0, 0x28($s3)
/* 100D2C 800E2C3C 24050012 */  addiu      $a1, $zero, 0x12
/* 100D30 800E2C40 84440098 */  lh         $a0, 0x98($v0)
/* 100D34 800E2C44 8C42009C */  lw         $v0, 0x9C($v0)
/* 100D38 800E2C48 0040F809 */  jalr       $v0
/* 100D3C 800E2C4C 02642021 */   addu      $a0, $s3, $a0
.Lmenu_800E2C50:
/* 100D40 800E2C50 02602021 */  addu       $a0, $s3, $zero
/* 100D44 800E2C54 0C0026F4 */  jal        func_80009BD0
/* 100D48 800E2C58 24050007 */   addiu     $a1, $zero, 0x7
/* 100D4C 800E2C5C 0C002680 */  jal        func_80009A00
/* 100D50 800E2C60 02602021 */   addu      $a0, $s3, $zero
/* 100D54 800E2C64 14400007 */  bnez       $v0, .Lmenu_800E2C84
/* 100D58 800E2C68 AE420084 */   sw        $v0, 0x84($s2)
/* 100D5C 800E2C6C 8E620028 */  lw         $v0, 0x28($s3)
/* 100D60 800E2C70 24050004 */  addiu      $a1, $zero, 0x4
/* 100D64 800E2C74 84440098 */  lh         $a0, 0x98($v0)
/* 100D68 800E2C78 8C42009C */  lw         $v0, 0x9C($v0)
/* 100D6C 800E2C7C 0040F809 */  jalr       $v0
/* 100D70 800E2C80 02642021 */   addu      $a0, $s3, $a0
.Lmenu_800E2C84:
/* 100D74 800E2C84 02602021 */  addu       $a0, $s3, $zero
/* 100D78 800E2C88 0C0026F4 */  jal        func_80009BD0
/* 100D7C 800E2C8C 24050008 */   addiu     $a1, $zero, 0x8
/* 100D80 800E2C90 02602021 */  addu       $a0, $s3, $zero
/* 100D84 800E2C94 0C0026F4 */  jal        func_80009BD0
/* 100D88 800E2C98 24050005 */   addiu     $a1, $zero, 0x5
/* 100D8C 800E2C9C 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 100D90 800E2CA0 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 100D94 800E2CA4 0C01FB65 */  jal        func_8007ED94
/* 100D98 800E2CA8 00000000 */   nop
/* 100D9C 800E2CAC 8E440084 */  lw         $a0, 0x84($s2)
/* 100DA0 800E2CB0 0C00943C */  jal        func_800250F0
/* 100DA4 800E2CB4 00042080 */   sll       $a0, $a0, 2
/* 100DA8 800E2CB8 0C01FB72 */  jal        func_8007EDC8
/* 100DAC 800E2CBC AE420088 */   sw        $v0, 0x88($s2)
/* 100DB0 800E2CC0 8E420088 */  lw         $v0, 0x88($s2)
/* 100DB4 800E2CC4 14400006 */  bnez       $v0, .Lmenu_800E2CE0
/* 100DB8 800E2CC8 00002821 */   addu      $a1, $zero, $zero
/* 100DBC 800E2CCC 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 100DC0 800E2CD0 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 100DC4 800E2CD4 00A03021 */  addu       $a2, $a1, $zero
/* 100DC8 800E2CD8 0C011ACF */  jal        func_80046B3C
/* 100DCC 800E2CDC 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E2CE0:
/* 100DD0 800E2CE0 8E420084 */  lw         $v0, 0x84($s2)
/* 100DD4 800E2CE4 000220C0 */  sll        $a0, $v0, 3
/* 100DD8 800E2CE8 0C00943C */  jal        func_800250F0
/* 100DDC 800E2CEC 00822021 */   addu      $a0, $a0, $v0
/* 100DE0 800E2CF0 14400007 */  bnez       $v0, .Lmenu_800E2D10
/* 100DE4 800E2CF4 AE42008C */   sw        $v0, 0x8C($s2)
/* 100DE8 800E2CF8 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 100DEC 800E2CFC 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 100DF0 800E2D00 00002821 */  addu       $a1, $zero, $zero
/* 100DF4 800E2D04 00A03021 */  addu       $a2, $a1, $zero
/* 100DF8 800E2D08 0C011ACF */  jal        func_80046B3C
/* 100DFC 800E2D0C 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E2D10:
/* 100E00 800E2D10 00008821 */  addu       $s1, $zero, $zero
/* 100E04 800E2D14 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E2D18:
/* 100E08 800E2D18 8E420084 */  lw         $v0, 0x84($s2)
/* 100E0C 800E2D1C 0222102B */  sltu       $v0, $s1, $v0
/* 100E10 800E2D20 1040001B */  beqz       $v0, .Lmenu_800E2D90
/* 100E14 800E2D24 02602021 */   addu      $a0, $s3, $zero
/* 100E18 800E2D28 8E620028 */  lw         $v0, 0x28($s3)
/* 100E1C 800E2D2C 844400A0 */  lh         $a0, 0xA0($v0)
/* 100E20 800E2D30 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 100E24 800E2D34 0040F809 */  jalr       $v0
/* 100E28 800E2D38 02642021 */   addu      $a0, $s3, $a0
/* 100E2C 800E2D3C 26650044 */  addiu      $a1, $s3, 0x44
/* 100E30 800E2D40 8E44008C */  lw         $a0, 0x8C($s2)
/* 100E34 800E2D44 24060008 */  addiu      $a2, $zero, 0x8
/* 100E38 800E2D48 0C000708 */  jal        func_80001C20
/* 100E3C 800E2D4C 00902021 */   addu      $a0, $a0, $s0
/* 100E40 800E2D50 8E42008C */  lw         $v0, 0x8C($s2)
/* 100E44 800E2D54 02021021 */  addu       $v0, $s0, $v0
/* 100E48 800E2D58 A0400008 */  sb         $zero, 0x8($v0)
/* 100E4C 800E2D5C 8E43000C */  lw         $v1, 0xC($s2)
/* 100E50 800E2D60 8C620014 */  lw         $v0, 0x14($v1)
/* 100E54 800E2D64 26100009 */  addiu      $s0, $s0, 0x9
/* 100E58 800E2D68 84440040 */  lh         $a0, 0x40($v0)
/* 100E5C 800E2D6C 8C420044 */  lw         $v0, 0x44($v0)
/* 100E60 800E2D70 0040F809 */  jalr       $v0
/* 100E64 800E2D74 00642021 */   addu      $a0, $v1, $a0
/* 100E68 800E2D78 00111880 */  sll        $v1, $s1, 2
/* 100E6C 800E2D7C 8E440088 */  lw         $a0, 0x88($s2)
/* 100E70 800E2D80 26310001 */  addiu      $s1, $s1, 0x1
/* 100E74 800E2D84 00641821 */  addu       $v1, $v1, $a0
/* 100E78 800E2D88 08038B46 */  j          .Lmenu_800E2D18
/* 100E7C 800E2D8C AC620000 */   sw        $v0, 0x0($v1)
.Lmenu_800E2D90:
/* 100E80 800E2D90 0C0026F4 */  jal        func_80009BD0
/* 100E84 800E2D94 24050006 */   addiu     $a1, $zero, 0x6
/* 100E88 800E2D98 8FBF0020 */  lw         $ra, 0x20($sp)
/* 100E8C 800E2D9C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 100E90 800E2DA0 8FB20018 */  lw         $s2, 0x18($sp)
/* 100E94 800E2DA4 8FB10014 */  lw         $s1, 0x14($sp)
/* 100E98 800E2DA8 8FB00010 */  lw         $s0, 0x10($sp)
/* 100E9C 800E2DAC 03E00008 */  jr         $ra
/* 100EA0 800E2DB0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E2DB4
/* 100EA4 800E2DB4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 100EA8 800E2DB8 AFB20018 */  sw         $s2, 0x18($sp)
/* 100EAC 800E2DBC 00809021 */  addu       $s2, $a0, $zero
/* 100EB0 800E2DC0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 100EB4 800E2DC4 AFB10014 */  sw         $s1, 0x14($sp)
/* 100EB8 800E2DC8 AFB00010 */  sw         $s0, 0x10($sp)
/* 100EBC 800E2DCC 8E42008C */  lw         $v0, 0x8C($s2)
/* 100EC0 800E2DD0 1040001B */  beqz       $v0, .Lmenu_800E2E40
/* 100EC4 800E2DD4 00000000 */   nop
/* 100EC8 800E2DD8 8E420084 */  lw         $v0, 0x84($s2)
/* 100ECC 800E2DDC 10400012 */  beqz       $v0, .Lmenu_800E2E28
/* 100ED0 800E2DE0 00008021 */   addu      $s0, $zero, $zero
/* 100ED4 800E2DE4 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E2DE8:
/* 100ED8 800E2DE8 8E430088 */  lw         $v1, 0x88($s2)
/* 100EDC 800E2DEC 00101080 */  sll        $v0, $s0, 2
/* 100EE0 800E2DF0 00431021 */  addu       $v0, $v0, $v1
/* 100EE4 800E2DF4 8C420000 */  lw         $v0, 0x0($v0)
/* 100EE8 800E2DF8 8C430000 */  lw         $v1, 0x0($v0)
/* 100EEC 800E2DFC 26100001 */  addiu      $s0, $s0, 0x1
/* 100EF0 800E2E00 84640008 */  lh         $a0, 0x8($v1)
/* 100EF4 800E2E04 8E45008C */  lw         $a1, 0x8C($s2)
/* 100EF8 800E2E08 00442021 */  addu       $a0, $v0, $a0
/* 100EFC 800E2E0C 8C62000C */  lw         $v0, 0xC($v1)
/* 100F00 800E2E10 0040F809 */  jalr       $v0
/* 100F04 800E2E14 00B12821 */   addu      $a1, $a1, $s1
/* 100F08 800E2E18 8E420084 */  lw         $v0, 0x84($s2)
/* 100F0C 800E2E1C 0202102B */  sltu       $v0, $s0, $v0
/* 100F10 800E2E20 1440FFF1 */  bnez       $v0, .Lmenu_800E2DE8
/* 100F14 800E2E24 26310009 */   addiu     $s1, $s1, 0x9
.Lmenu_800E2E28:
/* 100F18 800E2E28 8E44008C */  lw         $a0, 0x8C($s2)
/* 100F1C 800E2E2C 50800004 */  beql       $a0, $zero, .Lmenu_800E2E40
/* 100F20 800E2E30 AE40008C */   sw        $zero, 0x8C($s2)
/* 100F24 800E2E34 0C009444 */  jal        func_80025110
/* 100F28 800E2E38 00000000 */   nop
/* 100F2C 800E2E3C AE40008C */  sw         $zero, 0x8C($s2)
.Lmenu_800E2E40:
/* 100F30 800E2E40 8FBF001C */  lw         $ra, 0x1C($sp)
/* 100F34 800E2E44 8FB20018 */  lw         $s2, 0x18($sp)
/* 100F38 800E2E48 8FB10014 */  lw         $s1, 0x14($sp)
/* 100F3C 800E2E4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 100F40 800E2E50 03E00008 */  jr         $ra
/* 100F44 800E2E54 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E2E58
/* 100F48 800E2E58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 100F4C 800E2E5C AFB3001C */  sw         $s3, 0x1C($sp)
/* 100F50 800E2E60 00809821 */  addu       $s3, $a0, $zero
/* 100F54 800E2E64 AFBF0020 */  sw         $ra, 0x20($sp)
/* 100F58 800E2E68 AFB20018 */  sw         $s2, 0x18($sp)
/* 100F5C 800E2E6C AFB10014 */  sw         $s1, 0x14($sp)
/* 100F60 800E2E70 AFB00010 */  sw         $s0, 0x10($sp)
/* 100F64 800E2E74 8E620094 */  lw         $v0, 0x94($s3)
/* 100F68 800E2E78 10400007 */  beqz       $v0, .Lmenu_800E2E98
/* 100F6C 800E2E7C 00A09021 */   addu      $s2, $a1, $zero
/* 100F70 800E2E80 8E420028 */  lw         $v0, 0x28($s2)
/* 100F74 800E2E84 24050012 */  addiu      $a1, $zero, 0x12
/* 100F78 800E2E88 84440098 */  lh         $a0, 0x98($v0)
/* 100F7C 800E2E8C 8C42009C */  lw         $v0, 0x9C($v0)
/* 100F80 800E2E90 0040F809 */  jalr       $v0
/* 100F84 800E2E94 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800E2E98:
/* 100F88 800E2E98 02402021 */  addu       $a0, $s2, $zero
/* 100F8C 800E2E9C 0C0026F4 */  jal        func_80009BD0
/* 100F90 800E2EA0 24050007 */   addiu     $a1, $zero, 0x7
/* 100F94 800E2EA4 0C002680 */  jal        func_80009A00
/* 100F98 800E2EA8 02402021 */   addu      $a0, $s2, $zero
/* 100F9C 800E2EAC 14400007 */  bnez       $v0, .Lmenu_800E2ECC
/* 100FA0 800E2EB0 AE620090 */   sw        $v0, 0x90($s3)
/* 100FA4 800E2EB4 8E420028 */  lw         $v0, 0x28($s2)
/* 100FA8 800E2EB8 24050004 */  addiu      $a1, $zero, 0x4
/* 100FAC 800E2EBC 84440098 */  lh         $a0, 0x98($v0)
/* 100FB0 800E2EC0 8C42009C */  lw         $v0, 0x9C($v0)
/* 100FB4 800E2EC4 0040F809 */  jalr       $v0
/* 100FB8 800E2EC8 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800E2ECC:
/* 100FBC 800E2ECC 02402021 */  addu       $a0, $s2, $zero
/* 100FC0 800E2ED0 0C0026F4 */  jal        func_80009BD0
/* 100FC4 800E2ED4 24050008 */   addiu     $a1, $zero, 0x8
/* 100FC8 800E2ED8 02402021 */  addu       $a0, $s2, $zero
/* 100FCC 800E2EDC 0C0026F4 */  jal        func_80009BD0
/* 100FD0 800E2EE0 24050005 */   addiu     $a1, $zero, 0x5
/* 100FD4 800E2EE4 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 100FD8 800E2EE8 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 100FDC 800E2EEC 0C01FB65 */  jal        func_8007ED94
/* 100FE0 800E2EF0 00000000 */   nop
/* 100FE4 800E2EF4 8E640090 */  lw         $a0, 0x90($s3)
/* 100FE8 800E2EF8 0C00943C */  jal        func_800250F0
/* 100FEC 800E2EFC 00042080 */   sll       $a0, $a0, 2
/* 100FF0 800E2F00 0C01FB72 */  jal        func_8007EDC8
/* 100FF4 800E2F04 AE620094 */   sw        $v0, 0x94($s3)
/* 100FF8 800E2F08 8E620090 */  lw         $v0, 0x90($s3)
/* 100FFC 800E2F0C 000220C0 */  sll        $a0, $v0, 3
/* 101000 800E2F10 0C00943C */  jal        func_800250F0
/* 101004 800E2F14 00822021 */   addu      $a0, $a0, $v0
/* 101008 800E2F18 8E630094 */  lw         $v1, 0x94($s3)
/* 10100C 800E2F1C 10600003 */  beqz       $v1, .Lmenu_800E2F2C
/* 101010 800E2F20 AE620098 */   sw        $v0, 0x98($s3)
/* 101014 800E2F24 14400008 */  bnez       $v0, .Lmenu_800E2F48
/* 101018 800E2F28 00008821 */   addu      $s1, $zero, $zero
.Lmenu_800E2F2C:
/* 10101C 800E2F2C 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 101020 800E2F30 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 101024 800E2F34 00002821 */  addu       $a1, $zero, $zero
/* 101028 800E2F38 00A03021 */  addu       $a2, $a1, $zero
/* 10102C 800E2F3C 0C011ACF */  jal        func_80046B3C
/* 101030 800E2F40 00A03821 */   addu      $a3, $a1, $zero
/* 101034 800E2F44 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800E2F48:
/* 101038 800E2F48 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E2F4C:
/* 10103C 800E2F4C 8E620090 */  lw         $v0, 0x90($s3)
/* 101040 800E2F50 0222102B */  sltu       $v0, $s1, $v0
/* 101044 800E2F54 10400011 */  beqz       $v0, .Lmenu_800E2F9C
/* 101048 800E2F58 02402021 */   addu      $a0, $s2, $zero
/* 10104C 800E2F5C 8E420028 */  lw         $v0, 0x28($s2)
/* 101050 800E2F60 844400A0 */  lh         $a0, 0xA0($v0)
/* 101054 800E2F64 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 101058 800E2F68 0040F809 */  jalr       $v0
/* 10105C 800E2F6C 02442021 */   addu      $a0, $s2, $a0
/* 101060 800E2F70 26450044 */  addiu      $a1, $s2, 0x44
/* 101064 800E2F74 8E640098 */  lw         $a0, 0x98($s3)
/* 101068 800E2F78 24060008 */  addiu      $a2, $zero, 0x8
/* 10106C 800E2F7C 0C000708 */  jal        func_80001C20
/* 101070 800E2F80 00902021 */   addu      $a0, $a0, $s0
/* 101074 800E2F84 8E620098 */  lw         $v0, 0x98($s3)
/* 101078 800E2F88 26310001 */  addiu      $s1, $s1, 0x1
/* 10107C 800E2F8C 02021021 */  addu       $v0, $s0, $v0
/* 101080 800E2F90 26100009 */  addiu      $s0, $s0, 0x9
/* 101084 800E2F94 08038BD3 */  j          .Lmenu_800E2F4C
/* 101088 800E2F98 A0400008 */   sb        $zero, 0x8($v0)
.Lmenu_800E2F9C:
/* 10108C 800E2F9C 0C0026F4 */  jal        func_80009BD0
/* 101090 800E2FA0 24050006 */   addiu     $a1, $zero, 0x6
/* 101094 800E2FA4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 101098 800E2FA8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10109C 800E2FAC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1010A0 800E2FB0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1010A4 800E2FB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1010A8 800E2FB8 03E00008 */  jr         $ra
/* 1010AC 800E2FBC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E2FC0
/* 1010B0 800E2FC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1010B4 800E2FC4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1010B8 800E2FC8 00808821 */  addu       $s1, $a0, $zero
/* 1010BC 800E2FCC AFBF0020 */  sw         $ra, 0x20($sp)
/* 1010C0 800E2FD0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1010C4 800E2FD4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1010C8 800E2FD8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1010CC 800E2FDC 8E220098 */  lw         $v0, 0x98($s1)
/* 1010D0 800E2FE0 10400026 */  beqz       $v0, .Lmenu_800E307C
/* 1010D4 800E2FE4 00A09821 */   addu      $s3, $a1, $zero
/* 1010D8 800E2FE8 8E220090 */  lw         $v0, 0x90($s1)
/* 1010DC 800E2FEC 1040001D */  beqz       $v0, .Lmenu_800E3064
/* 1010E0 800E2FF0 00008021 */   addu      $s0, $zero, $zero
/* 1010E4 800E2FF4 02009021 */  addu       $s2, $s0, $zero
.Lmenu_800E2FF8:
/* 1010E8 800E2FF8 8E230004 */  lw         $v1, 0x4($s1)
/* 1010EC 800E2FFC 8C620000 */  lw         $v0, 0x0($v1)
/* 1010F0 800E3000 84440078 */  lh         $a0, 0x78($v0)
/* 1010F4 800E3004 8C42007C */  lw         $v0, 0x7C($v0)
/* 1010F8 800E3008 0040F809 */  jalr       $v0
/* 1010FC 800E300C 00642021 */   addu      $a0, $v1, $a0
/* 101100 800E3010 8E230094 */  lw         $v1, 0x94($s1)
/* 101104 800E3014 00102080 */  sll        $a0, $s0, 2
/* 101108 800E3018 00831821 */  addu       $v1, $a0, $v1
/* 10110C 800E301C AC620000 */  sw         $v0, 0x0($v1)
/* 101110 800E3020 8E220094 */  lw         $v0, 0x94($s1)
/* 101114 800E3024 26100001 */  addiu      $s0, $s0, 0x1
/* 101118 800E3028 00822021 */  addu       $a0, $a0, $v0
/* 10111C 800E302C 8C820000 */  lw         $v0, 0x0($a0)
/* 101120 800E3030 02603821 */  addu       $a3, $s3, $zero
/* 101124 800E3034 8C430008 */  lw         $v1, 0x8($v0)
/* 101128 800E3038 8E260098 */  lw         $a2, 0x98($s1)
/* 10112C 800E303C 84640048 */  lh         $a0, 0x48($v1)
/* 101130 800E3040 8E250008 */  lw         $a1, 0x8($s1)
/* 101134 800E3044 00442021 */  addu       $a0, $v0, $a0
/* 101138 800E3048 8C62004C */  lw         $v0, 0x4C($v1)
/* 10113C 800E304C 0040F809 */  jalr       $v0
/* 101140 800E3050 00D23021 */   addu      $a2, $a2, $s2
/* 101144 800E3054 8E220090 */  lw         $v0, 0x90($s1)
/* 101148 800E3058 0202102B */  sltu       $v0, $s0, $v0
/* 10114C 800E305C 1440FFE6 */  bnez       $v0, .Lmenu_800E2FF8
/* 101150 800E3060 26520009 */   addiu     $s2, $s2, 0x9
.Lmenu_800E3064:
/* 101154 800E3064 8E240098 */  lw         $a0, 0x98($s1)
/* 101158 800E3068 50800004 */  beql       $a0, $zero, .Lmenu_800E307C
/* 10115C 800E306C AE200098 */   sw        $zero, 0x98($s1)
/* 101160 800E3070 0C009444 */  jal        func_80025110
/* 101164 800E3074 00000000 */   nop
/* 101168 800E3078 AE200098 */  sw         $zero, 0x98($s1)
.Lmenu_800E307C:
/* 10116C 800E307C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 101170 800E3080 8FB3001C */  lw         $s3, 0x1C($sp)
/* 101174 800E3084 8FB20018 */  lw         $s2, 0x18($sp)
/* 101178 800E3088 8FB10014 */  lw         $s1, 0x14($sp)
/* 10117C 800E308C 8FB00010 */  lw         $s0, 0x10($sp)
/* 101180 800E3090 03E00008 */  jr         $ra
/* 101184 800E3094 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E3098
/* 101188 800E3098 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10118C 800E309C AFB3001C */  sw         $s3, 0x1C($sp)
/* 101190 800E30A0 00809821 */  addu       $s3, $a0, $zero
/* 101194 800E30A4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 101198 800E30A8 AFB20018 */  sw         $s2, 0x18($sp)
/* 10119C 800E30AC AFB10014 */  sw         $s1, 0x14($sp)
/* 1011A0 800E30B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1011A4 800E30B4 8E6200A0 */  lw         $v0, 0xA0($s3)
/* 1011A8 800E30B8 10400007 */  beqz       $v0, .Lmenu_800E30D8
/* 1011AC 800E30BC 00A09021 */   addu      $s2, $a1, $zero
/* 1011B0 800E30C0 8E420028 */  lw         $v0, 0x28($s2)
/* 1011B4 800E30C4 24050012 */  addiu      $a1, $zero, 0x12
/* 1011B8 800E30C8 84440098 */  lh         $a0, 0x98($v0)
/* 1011BC 800E30CC 8C42009C */  lw         $v0, 0x9C($v0)
/* 1011C0 800E30D0 0040F809 */  jalr       $v0
/* 1011C4 800E30D4 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800E30D8:
/* 1011C8 800E30D8 02402021 */  addu       $a0, $s2, $zero
/* 1011CC 800E30DC 0C0026F4 */  jal        func_80009BD0
/* 1011D0 800E30E0 24050007 */   addiu     $a1, $zero, 0x7
/* 1011D4 800E30E4 0C002680 */  jal        func_80009A00
/* 1011D8 800E30E8 02402021 */   addu      $a0, $s2, $zero
/* 1011DC 800E30EC 14400007 */  bnez       $v0, .Lmenu_800E310C
/* 1011E0 800E30F0 AE62009C */   sw        $v0, 0x9C($s3)
/* 1011E4 800E30F4 8E420028 */  lw         $v0, 0x28($s2)
/* 1011E8 800E30F8 24050004 */  addiu      $a1, $zero, 0x4
/* 1011EC 800E30FC 84440098 */  lh         $a0, 0x98($v0)
/* 1011F0 800E3100 8C42009C */  lw         $v0, 0x9C($v0)
/* 1011F4 800E3104 0040F809 */  jalr       $v0
/* 1011F8 800E3108 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800E310C:
/* 1011FC 800E310C 02402021 */  addu       $a0, $s2, $zero
/* 101200 800E3110 0C0026F4 */  jal        func_80009BD0
/* 101204 800E3114 24050008 */   addiu     $a1, $zero, 0x8
/* 101208 800E3118 02402021 */  addu       $a0, $s2, $zero
/* 10120C 800E311C 0C0026F4 */  jal        func_80009BD0
/* 101210 800E3120 24050005 */   addiu     $a1, $zero, 0x5
/* 101214 800E3124 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 101218 800E3128 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 10121C 800E312C 0C01FB65 */  jal        func_8007ED94
/* 101220 800E3130 00000000 */   nop
/* 101224 800E3134 8E64009C */  lw         $a0, 0x9C($s3)
/* 101228 800E3138 0C00943C */  jal        func_800250F0
/* 10122C 800E313C 00042080 */   sll       $a0, $a0, 2
/* 101230 800E3140 0C01FB72 */  jal        func_8007EDC8
/* 101234 800E3144 AE6200A0 */   sw        $v0, 0xA0($s3)
/* 101238 800E3148 8E62009C */  lw         $v0, 0x9C($s3)
/* 10123C 800E314C 000220C0 */  sll        $a0, $v0, 3
/* 101240 800E3150 0C00943C */  jal        func_800250F0
/* 101244 800E3154 00822021 */   addu      $a0, $a0, $v0
/* 101248 800E3158 8E6300A0 */  lw         $v1, 0xA0($s3)
/* 10124C 800E315C 10600003 */  beqz       $v1, .Lmenu_800E316C
/* 101250 800E3160 AE6200A4 */   sw        $v0, 0xA4($s3)
/* 101254 800E3164 14400008 */  bnez       $v0, .Lmenu_800E3188
/* 101258 800E3168 00008821 */   addu      $s1, $zero, $zero
.Lmenu_800E316C:
/* 10125C 800E316C 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 101260 800E3170 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 101264 800E3174 00002821 */  addu       $a1, $zero, $zero
/* 101268 800E3178 00A03021 */  addu       $a2, $a1, $zero
/* 10126C 800E317C 0C011ACF */  jal        func_80046B3C
/* 101270 800E3180 00A03821 */   addu      $a3, $a1, $zero
/* 101274 800E3184 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800E3188:
/* 101278 800E3188 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E318C:
/* 10127C 800E318C 8E62009C */  lw         $v0, 0x9C($s3)
/* 101280 800E3190 0222102B */  sltu       $v0, $s1, $v0
/* 101284 800E3194 10400011 */  beqz       $v0, .Lmenu_800E31DC
/* 101288 800E3198 02402021 */   addu      $a0, $s2, $zero
/* 10128C 800E319C 8E420028 */  lw         $v0, 0x28($s2)
/* 101290 800E31A0 844400A0 */  lh         $a0, 0xA0($v0)
/* 101294 800E31A4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 101298 800E31A8 0040F809 */  jalr       $v0
/* 10129C 800E31AC 02442021 */   addu      $a0, $s2, $a0
/* 1012A0 800E31B0 26450044 */  addiu      $a1, $s2, 0x44
/* 1012A4 800E31B4 8E6400A4 */  lw         $a0, 0xA4($s3)
/* 1012A8 800E31B8 24060008 */  addiu      $a2, $zero, 0x8
/* 1012AC 800E31BC 0C000708 */  jal        func_80001C20
/* 1012B0 800E31C0 00902021 */   addu      $a0, $a0, $s0
/* 1012B4 800E31C4 8E6200A4 */  lw         $v0, 0xA4($s3)
/* 1012B8 800E31C8 26310001 */  addiu      $s1, $s1, 0x1
/* 1012BC 800E31CC 02021021 */  addu       $v0, $s0, $v0
/* 1012C0 800E31D0 26100009 */  addiu      $s0, $s0, 0x9
/* 1012C4 800E31D4 08038C63 */  j          .Lmenu_800E318C
/* 1012C8 800E31D8 A0400008 */   sb        $zero, 0x8($v0)
.Lmenu_800E31DC:
/* 1012CC 800E31DC 0C0026F4 */  jal        func_80009BD0
/* 1012D0 800E31E0 24050006 */   addiu     $a1, $zero, 0x6
/* 1012D4 800E31E4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1012D8 800E31E8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1012DC 800E31EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1012E0 800E31F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1012E4 800E31F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1012E8 800E31F8 03E00008 */  jr         $ra
/* 1012EC 800E31FC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E3200
/* 1012F0 800E3200 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1012F4 800E3204 AFB10014 */  sw         $s1, 0x14($sp)
/* 1012F8 800E3208 00808821 */  addu       $s1, $a0, $zero
/* 1012FC 800E320C AFBF0020 */  sw         $ra, 0x20($sp)
/* 101300 800E3210 AFB3001C */  sw         $s3, 0x1C($sp)
/* 101304 800E3214 AFB20018 */  sw         $s2, 0x18($sp)
/* 101308 800E3218 AFB00010 */  sw         $s0, 0x10($sp)
/* 10130C 800E321C 8E2200A4 */  lw         $v0, 0xA4($s1)
/* 101310 800E3220 10400026 */  beqz       $v0, .Lmenu_800E32BC
/* 101314 800E3224 00A09821 */   addu      $s3, $a1, $zero
/* 101318 800E3228 8E22009C */  lw         $v0, 0x9C($s1)
/* 10131C 800E322C 1040001D */  beqz       $v0, .Lmenu_800E32A4
/* 101320 800E3230 00008021 */   addu      $s0, $zero, $zero
/* 101324 800E3234 02009021 */  addu       $s2, $s0, $zero
.Lmenu_800E3238:
/* 101328 800E3238 8E230004 */  lw         $v1, 0x4($s1)
/* 10132C 800E323C 8C620000 */  lw         $v0, 0x0($v1)
/* 101330 800E3240 84440070 */  lh         $a0, 0x70($v0)
/* 101334 800E3244 8C420074 */  lw         $v0, 0x74($v0)
/* 101338 800E3248 0040F809 */  jalr       $v0
/* 10133C 800E324C 00642021 */   addu      $a0, $v1, $a0
/* 101340 800E3250 8E2300A0 */  lw         $v1, 0xA0($s1)
/* 101344 800E3254 00102080 */  sll        $a0, $s0, 2
/* 101348 800E3258 00831821 */  addu       $v1, $a0, $v1
/* 10134C 800E325C AC620000 */  sw         $v0, 0x0($v1)
/* 101350 800E3260 8E2200A0 */  lw         $v0, 0xA0($s1)
/* 101354 800E3264 26100001 */  addiu      $s0, $s0, 0x1
/* 101358 800E3268 00822021 */  addu       $a0, $a0, $v0
/* 10135C 800E326C 8C820000 */  lw         $v0, 0x0($a0)
/* 101360 800E3270 02603821 */  addu       $a3, $s3, $zero
/* 101364 800E3274 8C430008 */  lw         $v1, 0x8($v0)
/* 101368 800E3278 8E2600A4 */  lw         $a2, 0xA4($s1)
/* 10136C 800E327C 84640040 */  lh         $a0, 0x40($v1)
/* 101370 800E3280 8E250008 */  lw         $a1, 0x8($s1)
/* 101374 800E3284 00442021 */  addu       $a0, $v0, $a0
/* 101378 800E3288 8C620044 */  lw         $v0, 0x44($v1)
/* 10137C 800E328C 0040F809 */  jalr       $v0
/* 101380 800E3290 00D23021 */   addu      $a2, $a2, $s2
/* 101384 800E3294 8E22009C */  lw         $v0, 0x9C($s1)
/* 101388 800E3298 0202102B */  sltu       $v0, $s0, $v0
/* 10138C 800E329C 1440FFE6 */  bnez       $v0, .Lmenu_800E3238
/* 101390 800E32A0 26520009 */   addiu     $s2, $s2, 0x9
.Lmenu_800E32A4:
/* 101394 800E32A4 8E2400A4 */  lw         $a0, 0xA4($s1)
/* 101398 800E32A8 50800004 */  beql       $a0, $zero, .Lmenu_800E32BC
/* 10139C 800E32AC AE2000A4 */   sw        $zero, 0xA4($s1)
/* 1013A0 800E32B0 0C009444 */  jal        func_80025110
/* 1013A4 800E32B4 00000000 */   nop
/* 1013A8 800E32B8 AE2000A4 */  sw         $zero, 0xA4($s1)
.Lmenu_800E32BC:
/* 1013AC 800E32BC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1013B0 800E32C0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1013B4 800E32C4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1013B8 800E32C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1013BC 800E32CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1013C0 800E32D0 03E00008 */  jr         $ra
/* 1013C4 800E32D4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E32D8
/* 1013C8 800E32D8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1013CC 800E32DC AFB5002C */  sw         $s5, 0x2C($sp)
/* 1013D0 800E32E0 0080A821 */  addu       $s5, $a0, $zero
/* 1013D4 800E32E4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1013D8 800E32E8 AFB40028 */  sw         $s4, 0x28($sp)
/* 1013DC 800E32EC AFB30024 */  sw         $s3, 0x24($sp)
/* 1013E0 800E32F0 AFB20020 */  sw         $s2, 0x20($sp)
/* 1013E4 800E32F4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1013E8 800E32F8 AFB00018 */  sw         $s0, 0x18($sp)
/* 1013EC 800E32FC 8EA200B8 */  lw         $v0, 0xB8($s5)
/* 1013F0 800E3300 10400007 */  beqz       $v0, .Lmenu_800E3320
/* 1013F4 800E3304 00A0A021 */   addu      $s4, $a1, $zero
/* 1013F8 800E3308 8E820028 */  lw         $v0, 0x28($s4)
/* 1013FC 800E330C 24050012 */  addiu      $a1, $zero, 0x12
/* 101400 800E3310 84440098 */  lh         $a0, 0x98($v0)
/* 101404 800E3314 8C42009C */  lw         $v0, 0x9C($v0)
/* 101408 800E3318 0040F809 */  jalr       $v0
/* 10140C 800E331C 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E3320:
/* 101410 800E3320 02802021 */  addu       $a0, $s4, $zero
/* 101414 800E3324 0C0026F4 */  jal        func_80009BD0
/* 101418 800E3328 24050007 */   addiu     $a1, $zero, 0x7
/* 10141C 800E332C 0C002680 */  jal        func_80009A00
/* 101420 800E3330 02802021 */   addu      $a0, $s4, $zero
/* 101424 800E3334 14400007 */  bnez       $v0, .Lmenu_800E3354
/* 101428 800E3338 AEA200B4 */   sw        $v0, 0xB4($s5)
/* 10142C 800E333C 8E820028 */  lw         $v0, 0x28($s4)
/* 101430 800E3340 24050004 */  addiu      $a1, $zero, 0x4
/* 101434 800E3344 84440098 */  lh         $a0, 0x98($v0)
/* 101438 800E3348 8C42009C */  lw         $v0, 0x9C($v0)
/* 10143C 800E334C 0040F809 */  jalr       $v0
/* 101440 800E3350 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E3354:
/* 101444 800E3354 02802021 */  addu       $a0, $s4, $zero
/* 101448 800E3358 0C0026F4 */  jal        func_80009BD0
/* 10144C 800E335C 24050008 */   addiu     $a1, $zero, 0x8
/* 101450 800E3360 02802021 */  addu       $a0, $s4, $zero
/* 101454 800E3364 0C0026F4 */  jal        func_80009BD0
/* 101458 800E3368 24050005 */   addiu     $a1, $zero, 0x5
/* 10145C 800E336C 8EA500B4 */  lw         $a1, 0xB4($s5)
/* 101460 800E3370 0C016397 */  jal        func_80058E5C
/* 101464 800E3374 26A400A8 */   addiu     $a0, $s5, 0xA8
/* 101468 800E3378 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 10146C 800E337C 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 101470 800E3380 0C01FB65 */  jal        func_8007ED94
/* 101474 800E3384 00000000 */   nop
/* 101478 800E3388 8EB000B4 */  lw         $s0, 0xB4($s5)
/* 10147C 800E338C 001020C0 */  sll        $a0, $s0, 3
/* 101480 800E3390 00902021 */  addu       $a0, $a0, $s0
/* 101484 800E3394 000420C0 */  sll        $a0, $a0, 3
/* 101488 800E3398 0C00943C */  jal        func_800250F0
/* 10148C 800E339C 24840008 */   addiu     $a0, $a0, 0x8
/* 101490 800E33A0 24420008 */  addiu      $v0, $v0, 0x8
/* 101494 800E33A4 00409821 */  addu       $s3, $v0, $zero
/* 101498 800E33A8 02609021 */  addu       $s2, $s3, $zero
/* 10149C 800E33AC 2611FFFF */  addiu      $s1, $s0, -0x1
/* 1014A0 800E33B0 06200007 */  bltz       $s1, .Lmenu_800E33D0
/* 1014A4 800E33B4 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 1014A8 800E33B8 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E33BC:
/* 1014AC 800E33BC 0C039CF4 */  jal        func_menu_800E73D0
/* 1014B0 800E33C0 02402021 */   addu      $a0, $s2, $zero
/* 1014B4 800E33C4 2631FFFF */  addiu      $s1, $s1, -0x1
/* 1014B8 800E33C8 1630FFFC */  bne        $s1, $s0, .Lmenu_800E33BC
/* 1014BC 800E33CC 26520048 */   addiu     $s2, $s2, 0x48
.Lmenu_800E33D0:
/* 1014C0 800E33D0 0C01FB72 */  jal        func_8007EDC8
/* 1014C4 800E33D4 AEB300B8 */   sw        $s3, 0xB8($s5)
/* 1014C8 800E33D8 8EA200B8 */  lw         $v0, 0xB8($s5)
/* 1014CC 800E33DC 14400008 */  bnez       $v0, .Lmenu_800E3400
/* 1014D0 800E33E0 00008821 */   addu      $s1, $zero, $zero
/* 1014D4 800E33E4 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 1014D8 800E33E8 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 1014DC 800E33EC 00002821 */  addu       $a1, $zero, $zero
/* 1014E0 800E33F0 00A03021 */  addu       $a2, $a1, $zero
/* 1014E4 800E33F4 0C011ACF */  jal        func_80046B3C
/* 1014E8 800E33F8 00A03821 */   addu      $a3, $a1, $zero
/* 1014EC 800E33FC 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800E3400:
/* 1014F0 800E3400 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E3404:
/* 1014F4 800E3404 8EA200B4 */  lw         $v0, 0xB4($s5)
/* 1014F8 800E3408 0222102B */  sltu       $v0, $s1, $v0
/* 1014FC 800E340C 10400019 */  beqz       $v0, .Lmenu_800E3474
/* 101500 800E3410 02802021 */   addu      $a0, $s4, $zero
/* 101504 800E3414 0C0026F4 */  jal        func_80009BD0
/* 101508 800E3418 2405002B */   addiu     $a1, $zero, 0x2B
/* 10150C 800E341C 8E820028 */  lw         $v0, 0x28($s4)
/* 101510 800E3420 26310001 */  addiu      $s1, $s1, 0x1
/* 101514 800E3424 844400A0 */  lh         $a0, 0xA0($v0)
/* 101518 800E3428 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10151C 800E342C 0040F809 */  jalr       $v0
/* 101520 800E3430 02842021 */   addu      $a0, $s4, $a0
/* 101524 800E3434 27A40010 */  addiu      $a0, $sp, 0x10
/* 101528 800E3438 26850044 */  addiu      $a1, $s4, 0x44
/* 10152C 800E343C 0C000708 */  jal        func_80001C20
/* 101530 800E3440 24060008 */   addiu     $a2, $zero, 0x8
/* 101534 800E3444 26A400A8 */  addiu      $a0, $s5, 0xA8
/* 101538 800E3448 8EA600B8 */  lw         $a2, 0xB8($s5)
/* 10153C 800E344C 27A50010 */  addiu      $a1, $sp, 0x10
/* 101540 800E3450 0C0163C7 */  jal        func_80058F1C
/* 101544 800E3454 00D03021 */   addu      $a2, $a2, $s0
/* 101548 800E3458 02802821 */  addu       $a1, $s4, $zero
/* 10154C 800E345C 8EA400B8 */  lw         $a0, 0xB8($s5)
/* 101550 800E3460 02A03021 */  addu       $a2, $s5, $zero
/* 101554 800E3464 0C039D12 */  jal        func_menu_800E7448
/* 101558 800E3468 00902021 */   addu      $a0, $a0, $s0
/* 10155C 800E346C 08038D01 */  j          .Lmenu_800E3404
/* 101560 800E3470 26100048 */   addiu     $s0, $s0, 0x48
.Lmenu_800E3474:
/* 101564 800E3474 0C0026F4 */  jal        func_80009BD0
/* 101568 800E3478 24050006 */   addiu     $a1, $zero, 0x6
/* 10156C 800E347C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 101570 800E3480 8FB5002C */  lw         $s5, 0x2C($sp)
/* 101574 800E3484 8FB40028 */  lw         $s4, 0x28($sp)
/* 101578 800E3488 8FB30024 */  lw         $s3, 0x24($sp)
/* 10157C 800E348C 8FB20020 */  lw         $s2, 0x20($sp)
/* 101580 800E3490 8FB1001C */  lw         $s1, 0x1C($sp)
/* 101584 800E3494 8FB00018 */  lw         $s0, 0x18($sp)
/* 101588 800E3498 03E00008 */  jr         $ra
/* 10158C 800E349C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E34A0
/* 101590 800E34A0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 101594 800E34A4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 101598 800E34A8 0080A821 */  addu       $s5, $a0, $zero
/* 10159C 800E34AC AFBF0030 */  sw         $ra, 0x30($sp)
/* 1015A0 800E34B0 AFB40028 */  sw         $s4, 0x28($sp)
/* 1015A4 800E34B4 AFB30024 */  sw         $s3, 0x24($sp)
/* 1015A8 800E34B8 AFB20020 */  sw         $s2, 0x20($sp)
/* 1015AC 800E34BC AFB1001C */  sw         $s1, 0x1C($sp)
/* 1015B0 800E34C0 AFB00018 */  sw         $s0, 0x18($sp)
/* 1015B4 800E34C4 8EA200CC */  lw         $v0, 0xCC($s5)
/* 1015B8 800E34C8 10400007 */  beqz       $v0, .Lmenu_800E34E8
/* 1015BC 800E34CC 00A0A021 */   addu      $s4, $a1, $zero
/* 1015C0 800E34D0 8E820028 */  lw         $v0, 0x28($s4)
/* 1015C4 800E34D4 24050012 */  addiu      $a1, $zero, 0x12
/* 1015C8 800E34D8 84440098 */  lh         $a0, 0x98($v0)
/* 1015CC 800E34DC 8C42009C */  lw         $v0, 0x9C($v0)
/* 1015D0 800E34E0 0040F809 */  jalr       $v0
/* 1015D4 800E34E4 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E34E8:
/* 1015D8 800E34E8 02802021 */  addu       $a0, $s4, $zero
/* 1015DC 800E34EC 0C0026F4 */  jal        func_80009BD0
/* 1015E0 800E34F0 24050007 */   addiu     $a1, $zero, 0x7
/* 1015E4 800E34F4 0C002680 */  jal        func_80009A00
/* 1015E8 800E34F8 02802021 */   addu      $a0, $s4, $zero
/* 1015EC 800E34FC 14400007 */  bnez       $v0, .Lmenu_800E351C
/* 1015F0 800E3500 AEA200C8 */   sw        $v0, 0xC8($s5)
/* 1015F4 800E3504 8E820028 */  lw         $v0, 0x28($s4)
/* 1015F8 800E3508 24050004 */  addiu      $a1, $zero, 0x4
/* 1015FC 800E350C 84440098 */  lh         $a0, 0x98($v0)
/* 101600 800E3510 8C42009C */  lw         $v0, 0x9C($v0)
/* 101604 800E3514 0040F809 */  jalr       $v0
/* 101608 800E3518 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E351C:
/* 10160C 800E351C 02802021 */  addu       $a0, $s4, $zero
/* 101610 800E3520 0C0026F4 */  jal        func_80009BD0
/* 101614 800E3524 24050008 */   addiu     $a1, $zero, 0x8
/* 101618 800E3528 02802021 */  addu       $a0, $s4, $zero
/* 10161C 800E352C 0C0026F4 */  jal        func_80009BD0
/* 101620 800E3530 24050005 */   addiu     $a1, $zero, 0x5
/* 101624 800E3534 8EA500C8 */  lw         $a1, 0xC8($s5)
/* 101628 800E3538 0C016397 */  jal        func_80058E5C
/* 10162C 800E353C 26A400BC */   addiu     $a0, $s5, 0xBC
/* 101630 800E3540 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 101634 800E3544 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 101638 800E3548 0C01FB65 */  jal        func_8007ED94
/* 10163C 800E354C 00000000 */   nop
/* 101640 800E3550 8EB000C8 */  lw         $s0, 0xC8($s5)
/* 101644 800E3554 00102040 */  sll        $a0, $s0, 1
/* 101648 800E3558 00902021 */  addu       $a0, $a0, $s0
/* 10164C 800E355C 00042100 */  sll        $a0, $a0, 4
/* 101650 800E3560 0C00943C */  jal        func_800250F0
/* 101654 800E3564 34840008 */   ori       $a0, $a0, 0x8
/* 101658 800E3568 24420008 */  addiu      $v0, $v0, 0x8
/* 10165C 800E356C 00409821 */  addu       $s3, $v0, $zero
/* 101660 800E3570 02609021 */  addu       $s2, $s3, $zero
/* 101664 800E3574 2611FFFF */  addiu      $s1, $s0, -0x1
/* 101668 800E3578 06200007 */  bltz       $s1, .Lmenu_800E3598
/* 10166C 800E357C AE70FFF8 */   sw        $s0, -0x8($s3)
/* 101670 800E3580 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E3584:
/* 101674 800E3584 0C039820 */  jal        func_menu_800E6080
/* 101678 800E3588 02402021 */   addu      $a0, $s2, $zero
/* 10167C 800E358C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 101680 800E3590 1630FFFC */  bne        $s1, $s0, .Lmenu_800E3584
/* 101684 800E3594 26520030 */   addiu     $s2, $s2, 0x30
.Lmenu_800E3598:
/* 101688 800E3598 0C01FB72 */  jal        func_8007EDC8
/* 10168C 800E359C AEB300CC */   sw        $s3, 0xCC($s5)
/* 101690 800E35A0 8EA200CC */  lw         $v0, 0xCC($s5)
/* 101694 800E35A4 14400008 */  bnez       $v0, .Lmenu_800E35C8
/* 101698 800E35A8 00008821 */   addu      $s1, $zero, $zero
/* 10169C 800E35AC 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 1016A0 800E35B0 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 1016A4 800E35B4 00002821 */  addu       $a1, $zero, $zero
/* 1016A8 800E35B8 00A03021 */  addu       $a2, $a1, $zero
/* 1016AC 800E35BC 0C011ACF */  jal        func_80046B3C
/* 1016B0 800E35C0 00A03821 */   addu      $a3, $a1, $zero
/* 1016B4 800E35C4 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800E35C8:
/* 1016B8 800E35C8 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E35CC:
/* 1016BC 800E35CC 8EA200C8 */  lw         $v0, 0xC8($s5)
/* 1016C0 800E35D0 0222102B */  sltu       $v0, $s1, $v0
/* 1016C4 800E35D4 10400019 */  beqz       $v0, .Lmenu_800E363C
/* 1016C8 800E35D8 02802021 */   addu      $a0, $s4, $zero
/* 1016CC 800E35DC 0C0026F4 */  jal        func_80009BD0
/* 1016D0 800E35E0 2405002F */   addiu     $a1, $zero, 0x2F
/* 1016D4 800E35E4 8E820028 */  lw         $v0, 0x28($s4)
/* 1016D8 800E35E8 26310001 */  addiu      $s1, $s1, 0x1
/* 1016DC 800E35EC 844400A0 */  lh         $a0, 0xA0($v0)
/* 1016E0 800E35F0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 1016E4 800E35F4 0040F809 */  jalr       $v0
/* 1016E8 800E35F8 02842021 */   addu      $a0, $s4, $a0
/* 1016EC 800E35FC 27A40010 */  addiu      $a0, $sp, 0x10
/* 1016F0 800E3600 26850044 */  addiu      $a1, $s4, 0x44
/* 1016F4 800E3604 0C000708 */  jal        func_80001C20
/* 1016F8 800E3608 24060008 */   addiu     $a2, $zero, 0x8
/* 1016FC 800E360C 26A400BC */  addiu      $a0, $s5, 0xBC
/* 101700 800E3610 8EA600CC */  lw         $a2, 0xCC($s5)
/* 101704 800E3614 27A50010 */  addiu      $a1, $sp, 0x10
/* 101708 800E3618 0C0163C7 */  jal        func_80058F1C
/* 10170C 800E361C 00D03021 */   addu      $a2, $a2, $s0
/* 101710 800E3620 02802821 */  addu       $a1, $s4, $zero
/* 101714 800E3624 8EA400CC */  lw         $a0, 0xCC($s5)
/* 101718 800E3628 02A03021 */  addu       $a2, $s5, $zero
/* 10171C 800E362C 0C03983A */  jal        func_menu_800E60E8
/* 101720 800E3630 00902021 */   addu      $a0, $a0, $s0
/* 101724 800E3634 08038D73 */  j          .Lmenu_800E35CC
/* 101728 800E3638 26100030 */   addiu     $s0, $s0, 0x30
.Lmenu_800E363C:
/* 10172C 800E363C 0C0026F4 */  jal        func_80009BD0
/* 101730 800E3640 24050006 */   addiu     $a1, $zero, 0x6
/* 101734 800E3644 8FBF0030 */  lw         $ra, 0x30($sp)
/* 101738 800E3648 8FB5002C */  lw         $s5, 0x2C($sp)
/* 10173C 800E364C 8FB40028 */  lw         $s4, 0x28($sp)
/* 101740 800E3650 8FB30024 */  lw         $s3, 0x24($sp)
/* 101744 800E3654 8FB20020 */  lw         $s2, 0x20($sp)
/* 101748 800E3658 8FB1001C */  lw         $s1, 0x1C($sp)
/* 10174C 800E365C 8FB00018 */  lw         $s0, 0x18($sp)
/* 101750 800E3660 03E00008 */  jr         $ra
/* 101754 800E3664 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E3668
/* 101758 800E3668 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10175C 800E366C AFB5002C */  sw         $s5, 0x2C($sp)
/* 101760 800E3670 0080A821 */  addu       $s5, $a0, $zero
/* 101764 800E3674 AFBF0030 */  sw         $ra, 0x30($sp)
/* 101768 800E3678 AFB40028 */  sw         $s4, 0x28($sp)
/* 10176C 800E367C AFB30024 */  sw         $s3, 0x24($sp)
/* 101770 800E3680 AFB20020 */  sw         $s2, 0x20($sp)
/* 101774 800E3684 AFB1001C */  sw         $s1, 0x1C($sp)
/* 101778 800E3688 AFB00018 */  sw         $s0, 0x18($sp)
/* 10177C 800E368C 8EA200E0 */  lw         $v0, 0xE0($s5)
/* 101780 800E3690 10400007 */  beqz       $v0, .Lmenu_800E36B0
/* 101784 800E3694 00A0A021 */   addu      $s4, $a1, $zero
/* 101788 800E3698 8E820028 */  lw         $v0, 0x28($s4)
/* 10178C 800E369C 24050012 */  addiu      $a1, $zero, 0x12
/* 101790 800E36A0 84440098 */  lh         $a0, 0x98($v0)
/* 101794 800E36A4 8C42009C */  lw         $v0, 0x9C($v0)
/* 101798 800E36A8 0040F809 */  jalr       $v0
/* 10179C 800E36AC 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E36B0:
/* 1017A0 800E36B0 02802021 */  addu       $a0, $s4, $zero
/* 1017A4 800E36B4 0C0026F4 */  jal        func_80009BD0
/* 1017A8 800E36B8 24050007 */   addiu     $a1, $zero, 0x7
/* 1017AC 800E36BC 0C002680 */  jal        func_80009A00
/* 1017B0 800E36C0 02802021 */   addu      $a0, $s4, $zero
/* 1017B4 800E36C4 14400007 */  bnez       $v0, .Lmenu_800E36E4
/* 1017B8 800E36C8 AEA200DC */   sw        $v0, 0xDC($s5)
/* 1017BC 800E36CC 8E820028 */  lw         $v0, 0x28($s4)
/* 1017C0 800E36D0 24050004 */  addiu      $a1, $zero, 0x4
/* 1017C4 800E36D4 84440098 */  lh         $a0, 0x98($v0)
/* 1017C8 800E36D8 8C42009C */  lw         $v0, 0x9C($v0)
/* 1017CC 800E36DC 0040F809 */  jalr       $v0
/* 1017D0 800E36E0 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E36E4:
/* 1017D4 800E36E4 02802021 */  addu       $a0, $s4, $zero
/* 1017D8 800E36E8 0C0026F4 */  jal        func_80009BD0
/* 1017DC 800E36EC 24050008 */   addiu     $a1, $zero, 0x8
/* 1017E0 800E36F0 02802021 */  addu       $a0, $s4, $zero
/* 1017E4 800E36F4 0C0026F4 */  jal        func_80009BD0
/* 1017E8 800E36F8 24050005 */   addiu     $a1, $zero, 0x5
/* 1017EC 800E36FC 8EA500DC */  lw         $a1, 0xDC($s5)
/* 1017F0 800E3700 0C016397 */  jal        func_80058E5C
/* 1017F4 800E3704 26A400D0 */   addiu     $a0, $s5, 0xD0
/* 1017F8 800E3708 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 1017FC 800E370C 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 101800 800E3710 0C01FB65 */  jal        func_8007ED94
/* 101804 800E3714 00000000 */   nop
/* 101808 800E3718 8EB000DC */  lw         $s0, 0xDC($s5)
/* 10180C 800E371C 00102080 */  sll        $a0, $s0, 2
/* 101810 800E3720 00902021 */  addu       $a0, $a0, $s0
/* 101814 800E3724 00042100 */  sll        $a0, $a0, 4
/* 101818 800E3728 0C00943C */  jal        func_800250F0
/* 10181C 800E372C 34840008 */   ori       $a0, $a0, 0x8
/* 101820 800E3730 24420008 */  addiu      $v0, $v0, 0x8
/* 101824 800E3734 00409821 */  addu       $s3, $v0, $zero
/* 101828 800E3738 02609021 */  addu       $s2, $s3, $zero
/* 10182C 800E373C 2611FFFF */  addiu      $s1, $s0, -0x1
/* 101830 800E3740 06200007 */  bltz       $s1, .Lmenu_800E3760
/* 101834 800E3744 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 101838 800E3748 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E374C:
/* 10183C 800E374C 0C039928 */  jal        func_menu_800E64A0
/* 101840 800E3750 02402021 */   addu      $a0, $s2, $zero
/* 101844 800E3754 2631FFFF */  addiu      $s1, $s1, -0x1
/* 101848 800E3758 1630FFFC */  bne        $s1, $s0, .Lmenu_800E374C
/* 10184C 800E375C 26520050 */   addiu     $s2, $s2, 0x50
.Lmenu_800E3760:
/* 101850 800E3760 0C01FB72 */  jal        func_8007EDC8
/* 101854 800E3764 AEB300E0 */   sw        $s3, 0xE0($s5)
/* 101858 800E3768 8EA200E0 */  lw         $v0, 0xE0($s5)
/* 10185C 800E376C 14400008 */  bnez       $v0, .Lmenu_800E3790
/* 101860 800E3770 00008821 */   addu      $s1, $zero, $zero
/* 101864 800E3774 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 101868 800E3778 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 10186C 800E377C 00002821 */  addu       $a1, $zero, $zero
/* 101870 800E3780 00A03021 */  addu       $a2, $a1, $zero
/* 101874 800E3784 0C011ACF */  jal        func_80046B3C
/* 101878 800E3788 00A03821 */   addu      $a3, $a1, $zero
/* 10187C 800E378C 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800E3790:
/* 101880 800E3790 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E3794:
/* 101884 800E3794 8EA200DC */  lw         $v0, 0xDC($s5)
/* 101888 800E3798 0222102B */  sltu       $v0, $s1, $v0
/* 10188C 800E379C 10400019 */  beqz       $v0, .Lmenu_800E3804
/* 101890 800E37A0 02802021 */   addu      $a0, $s4, $zero
/* 101894 800E37A4 0C0026F4 */  jal        func_80009BD0
/* 101898 800E37A8 24050036 */   addiu     $a1, $zero, 0x36
/* 10189C 800E37AC 8E820028 */  lw         $v0, 0x28($s4)
/* 1018A0 800E37B0 26310001 */  addiu      $s1, $s1, 0x1
/* 1018A4 800E37B4 844400A0 */  lh         $a0, 0xA0($v0)
/* 1018A8 800E37B8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 1018AC 800E37BC 0040F809 */  jalr       $v0
/* 1018B0 800E37C0 02842021 */   addu      $a0, $s4, $a0
/* 1018B4 800E37C4 27A40010 */  addiu      $a0, $sp, 0x10
/* 1018B8 800E37C8 26850044 */  addiu      $a1, $s4, 0x44
/* 1018BC 800E37CC 0C000708 */  jal        func_80001C20
/* 1018C0 800E37D0 24060008 */   addiu     $a2, $zero, 0x8
/* 1018C4 800E37D4 26A400D0 */  addiu      $a0, $s5, 0xD0
/* 1018C8 800E37D8 8EA600E0 */  lw         $a2, 0xE0($s5)
/* 1018CC 800E37DC 27A50010 */  addiu      $a1, $sp, 0x10
/* 1018D0 800E37E0 0C0163C7 */  jal        func_80058F1C
/* 1018D4 800E37E4 00D03021 */   addu      $a2, $a2, $s0
/* 1018D8 800E37E8 02802821 */  addu       $a1, $s4, $zero
/* 1018DC 800E37EC 8EA400E0 */  lw         $a0, 0xE0($s5)
/* 1018E0 800E37F0 02A03021 */  addu       $a2, $s5, $zero
/* 1018E4 800E37F4 0C03994E */  jal        func_menu_800E6538
/* 1018E8 800E37F8 00902021 */   addu      $a0, $a0, $s0
/* 1018EC 800E37FC 08038DE5 */  j          .Lmenu_800E3794
/* 1018F0 800E3800 26100050 */   addiu     $s0, $s0, 0x50
.Lmenu_800E3804:
/* 1018F4 800E3804 0C0026F4 */  jal        func_80009BD0
/* 1018F8 800E3808 24050006 */   addiu     $a1, $zero, 0x6
/* 1018FC 800E380C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 101900 800E3810 8FB5002C */  lw         $s5, 0x2C($sp)
/* 101904 800E3814 8FB40028 */  lw         $s4, 0x28($sp)
/* 101908 800E3818 8FB30024 */  lw         $s3, 0x24($sp)
/* 10190C 800E381C 8FB20020 */  lw         $s2, 0x20($sp)
/* 101910 800E3820 8FB1001C */  lw         $s1, 0x1C($sp)
/* 101914 800E3824 8FB00018 */  lw         $s0, 0x18($sp)
/* 101918 800E3828 03E00008 */  jr         $ra
/* 10191C 800E382C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E3830
/* 101920 800E3830 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 101924 800E3834 AFB5002C */  sw         $s5, 0x2C($sp)
/* 101928 800E3838 0080A821 */  addu       $s5, $a0, $zero
/* 10192C 800E383C AFBF0030 */  sw         $ra, 0x30($sp)
/* 101930 800E3840 AFB40028 */  sw         $s4, 0x28($sp)
/* 101934 800E3844 AFB30024 */  sw         $s3, 0x24($sp)
/* 101938 800E3848 AFB20020 */  sw         $s2, 0x20($sp)
/* 10193C 800E384C AFB1001C */  sw         $s1, 0x1C($sp)
/* 101940 800E3850 AFB00018 */  sw         $s0, 0x18($sp)
/* 101944 800E3854 8EA200F4 */  lw         $v0, 0xF4($s5)
/* 101948 800E3858 10400007 */  beqz       $v0, .Lmenu_800E3878
/* 10194C 800E385C 00A0A021 */   addu      $s4, $a1, $zero
/* 101950 800E3860 8E820028 */  lw         $v0, 0x28($s4)
/* 101954 800E3864 24050012 */  addiu      $a1, $zero, 0x12
/* 101958 800E3868 84440098 */  lh         $a0, 0x98($v0)
/* 10195C 800E386C 8C42009C */  lw         $v0, 0x9C($v0)
/* 101960 800E3870 0040F809 */  jalr       $v0
/* 101964 800E3874 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E3878:
/* 101968 800E3878 02802021 */  addu       $a0, $s4, $zero
/* 10196C 800E387C 0C0026F4 */  jal        func_80009BD0
/* 101970 800E3880 24050007 */   addiu     $a1, $zero, 0x7
/* 101974 800E3884 0C002680 */  jal        func_80009A00
/* 101978 800E3888 02802021 */   addu      $a0, $s4, $zero
/* 10197C 800E388C 14400007 */  bnez       $v0, .Lmenu_800E38AC
/* 101980 800E3890 AEA200F0 */   sw        $v0, 0xF0($s5)
/* 101984 800E3894 8E820028 */  lw         $v0, 0x28($s4)
/* 101988 800E3898 24050004 */  addiu      $a1, $zero, 0x4
/* 10198C 800E389C 84440098 */  lh         $a0, 0x98($v0)
/* 101990 800E38A0 8C42009C */  lw         $v0, 0x9C($v0)
/* 101994 800E38A4 0040F809 */  jalr       $v0
/* 101998 800E38A8 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E38AC:
/* 10199C 800E38AC 02802021 */  addu       $a0, $s4, $zero
/* 1019A0 800E38B0 0C0026F4 */  jal        func_80009BD0
/* 1019A4 800E38B4 24050008 */   addiu     $a1, $zero, 0x8
/* 1019A8 800E38B8 02802021 */  addu       $a0, $s4, $zero
/* 1019AC 800E38BC 0C0026F4 */  jal        func_80009BD0
/* 1019B0 800E38C0 24050005 */   addiu     $a1, $zero, 0x5
/* 1019B4 800E38C4 8EA500F0 */  lw         $a1, 0xF0($s5)
/* 1019B8 800E38C8 0C016397 */  jal        func_80058E5C
/* 1019BC 800E38CC 26A400E4 */   addiu     $a0, $s5, 0xE4
/* 1019C0 800E38D0 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 1019C4 800E38D4 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 1019C8 800E38D8 0C01FB65 */  jal        func_8007ED94
/* 1019CC 800E38DC 00000000 */   nop
/* 1019D0 800E38E0 8EB000F0 */  lw         $s0, 0xF0($s5)
/* 1019D4 800E38E4 00102080 */  sll        $a0, $s0, 2
/* 1019D8 800E38E8 00902021 */  addu       $a0, $a0, $s0
/* 1019DC 800E38EC 00042100 */  sll        $a0, $a0, 4
/* 1019E0 800E38F0 0C00943C */  jal        func_800250F0
/* 1019E4 800E38F4 34840008 */   ori       $a0, $a0, 0x8
/* 1019E8 800E38F8 24420008 */  addiu      $v0, $v0, 0x8
/* 1019EC 800E38FC 00409821 */  addu       $s3, $v0, $zero
/* 1019F0 800E3900 02609021 */  addu       $s2, $s3, $zero
/* 1019F4 800E3904 2611FFFF */  addiu      $s1, $s0, -0x1
/* 1019F8 800E3908 06200007 */  bltz       $s1, .Lmenu_800E3928
/* 1019FC 800E390C AE70FFF8 */   sw        $s0, -0x8($s3)
/* 101A00 800E3910 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E3914:
/* 101A04 800E3914 0C039698 */  jal        func_menu_800E5A60
/* 101A08 800E3918 02402021 */   addu      $a0, $s2, $zero
/* 101A0C 800E391C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 101A10 800E3920 1630FFFC */  bne        $s1, $s0, .Lmenu_800E3914
/* 101A14 800E3924 26520050 */   addiu     $s2, $s2, 0x50
.Lmenu_800E3928:
/* 101A18 800E3928 0C01FB72 */  jal        func_8007EDC8
/* 101A1C 800E392C AEB300F4 */   sw        $s3, 0xF4($s5)
/* 101A20 800E3930 8EA200F4 */  lw         $v0, 0xF4($s5)
/* 101A24 800E3934 14400008 */  bnez       $v0, .Lmenu_800E3958
/* 101A28 800E3938 00008821 */   addu      $s1, $zero, $zero
/* 101A2C 800E393C 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 101A30 800E3940 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 101A34 800E3944 00002821 */  addu       $a1, $zero, $zero
/* 101A38 800E3948 00A03021 */  addu       $a2, $a1, $zero
/* 101A3C 800E394C 0C011ACF */  jal        func_80046B3C
/* 101A40 800E3950 00A03821 */   addu      $a3, $a1, $zero
/* 101A44 800E3954 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800E3958:
/* 101A48 800E3958 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E395C:
/* 101A4C 800E395C 8EA200F0 */  lw         $v0, 0xF0($s5)
/* 101A50 800E3960 0222102B */  sltu       $v0, $s1, $v0
/* 101A54 800E3964 10400019 */  beqz       $v0, .Lmenu_800E39CC
/* 101A58 800E3968 02802021 */   addu      $a0, $s4, $zero
/* 101A5C 800E396C 0C0026F4 */  jal        func_80009BD0
/* 101A60 800E3970 2405003C */   addiu     $a1, $zero, 0x3C
/* 101A64 800E3974 8E820028 */  lw         $v0, 0x28($s4)
/* 101A68 800E3978 26310001 */  addiu      $s1, $s1, 0x1
/* 101A6C 800E397C 844400A0 */  lh         $a0, 0xA0($v0)
/* 101A70 800E3980 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 101A74 800E3984 0040F809 */  jalr       $v0
/* 101A78 800E3988 02842021 */   addu      $a0, $s4, $a0
/* 101A7C 800E398C 27A40010 */  addiu      $a0, $sp, 0x10
/* 101A80 800E3990 26850044 */  addiu      $a1, $s4, 0x44
/* 101A84 800E3994 0C000708 */  jal        func_80001C20
/* 101A88 800E3998 24060008 */   addiu     $a2, $zero, 0x8
/* 101A8C 800E399C 26A400E4 */  addiu      $a0, $s5, 0xE4
/* 101A90 800E39A0 8EA600F4 */  lw         $a2, 0xF4($s5)
/* 101A94 800E39A4 27A50010 */  addiu      $a1, $sp, 0x10
/* 101A98 800E39A8 0C0163C7 */  jal        func_80058F1C
/* 101A9C 800E39AC 00D03021 */   addu      $a2, $a2, $s0
/* 101AA0 800E39B0 02802821 */  addu       $a1, $s4, $zero
/* 101AA4 800E39B4 8EA400F4 */  lw         $a0, 0xF4($s5)
/* 101AA8 800E39B8 02A03021 */  addu       $a2, $s5, $zero
/* 101AAC 800E39BC 0C0396B5 */  jal        func_menu_800E5AD4
/* 101AB0 800E39C0 00902021 */   addu      $a0, $a0, $s0
/* 101AB4 800E39C4 08038E57 */  j          .Lmenu_800E395C
/* 101AB8 800E39C8 26100050 */   addiu     $s0, $s0, 0x50
.Lmenu_800E39CC:
/* 101ABC 800E39CC 0C0026F4 */  jal        func_80009BD0
/* 101AC0 800E39D0 24050006 */   addiu     $a1, $zero, 0x6
/* 101AC4 800E39D4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 101AC8 800E39D8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 101ACC 800E39DC 8FB40028 */  lw         $s4, 0x28($sp)
/* 101AD0 800E39E0 8FB30024 */  lw         $s3, 0x24($sp)
/* 101AD4 800E39E4 8FB20020 */  lw         $s2, 0x20($sp)
/* 101AD8 800E39E8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 101ADC 800E39EC 8FB00018 */  lw         $s0, 0x18($sp)
/* 101AE0 800E39F0 03E00008 */  jr         $ra
/* 101AE4 800E39F4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E39F8
/* 101AE8 800E39F8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 101AEC 800E39FC AFB40030 */  sw         $s4, 0x30($sp)
/* 101AF0 800E3A00 0080A021 */  addu       $s4, $a0, $zero
/* 101AF4 800E3A04 AFBF0038 */  sw         $ra, 0x38($sp)
/* 101AF8 800E3A08 AFB50034 */  sw         $s5, 0x34($sp)
/* 101AFC 800E3A0C AFB3002C */  sw         $s3, 0x2C($sp)
/* 101B00 800E3A10 AFB20028 */  sw         $s2, 0x28($sp)
/* 101B04 800E3A14 AFB10024 */  sw         $s1, 0x24($sp)
/* 101B08 800E3A18 AFB00020 */  sw         $s0, 0x20($sp)
/* 101B0C 800E3A1C 8E820108 */  lw         $v0, 0x108($s4)
/* 101B10 800E3A20 10400007 */  beqz       $v0, .Lmenu_800E3A40
/* 101B14 800E3A24 00A0A821 */   addu      $s5, $a1, $zero
/* 101B18 800E3A28 8EA20028 */  lw         $v0, 0x28($s5)
/* 101B1C 800E3A2C 24050012 */  addiu      $a1, $zero, 0x12
/* 101B20 800E3A30 84440098 */  lh         $a0, 0x98($v0)
/* 101B24 800E3A34 8C42009C */  lw         $v0, 0x9C($v0)
/* 101B28 800E3A38 0040F809 */  jalr       $v0
/* 101B2C 800E3A3C 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800E3A40:
/* 101B30 800E3A40 02A02021 */  addu       $a0, $s5, $zero
/* 101B34 800E3A44 0C0026F4 */  jal        func_80009BD0
/* 101B38 800E3A48 24050007 */   addiu     $a1, $zero, 0x7
/* 101B3C 800E3A4C 0C002680 */  jal        func_80009A00
/* 101B40 800E3A50 02A02021 */   addu      $a0, $s5, $zero
/* 101B44 800E3A54 14400007 */  bnez       $v0, .Lmenu_800E3A74
/* 101B48 800E3A58 AE820104 */   sw        $v0, 0x104($s4)
/* 101B4C 800E3A5C 8EA20028 */  lw         $v0, 0x28($s5)
/* 101B50 800E3A60 24050004 */  addiu      $a1, $zero, 0x4
/* 101B54 800E3A64 84440098 */  lh         $a0, 0x98($v0)
/* 101B58 800E3A68 8C42009C */  lw         $v0, 0x9C($v0)
/* 101B5C 800E3A6C 0040F809 */  jalr       $v0
/* 101B60 800E3A70 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800E3A74:
/* 101B64 800E3A74 02A02021 */  addu       $a0, $s5, $zero
/* 101B68 800E3A78 0C0026F4 */  jal        func_80009BD0
/* 101B6C 800E3A7C 24050008 */   addiu     $a1, $zero, 0x8
/* 101B70 800E3A80 02A02021 */  addu       $a0, $s5, $zero
/* 101B74 800E3A84 0C0026F4 */  jal        func_80009BD0
/* 101B78 800E3A88 24050005 */   addiu     $a1, $zero, 0x5
/* 101B7C 800E3A8C 8E850104 */  lw         $a1, 0x104($s4)
/* 101B80 800E3A90 0C016397 */  jal        func_80058E5C
/* 101B84 800E3A94 268400F8 */   addiu     $a0, $s4, 0xF8
/* 101B88 800E3A98 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 101B8C 800E3A9C 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 101B90 800E3AA0 0C01FB65 */  jal        func_8007ED94
/* 101B94 800E3AA4 00000000 */   nop
/* 101B98 800E3AA8 8E900104 */  lw         $s0, 0x104($s4)
/* 101B9C 800E3AAC 00102040 */  sll        $a0, $s0, 1
/* 101BA0 800E3AB0 00902021 */  addu       $a0, $a0, $s0
/* 101BA4 800E3AB4 00042080 */  sll        $a0, $a0, 2
/* 101BA8 800E3AB8 00902023 */  subu       $a0, $a0, $s0
/* 101BAC 800E3ABC 00042080 */  sll        $a0, $a0, 2
/* 101BB0 800E3AC0 0C00943C */  jal        func_800250F0
/* 101BB4 800E3AC4 24840008 */   addiu     $a0, $a0, 0x8
/* 101BB8 800E3AC8 24420008 */  addiu      $v0, $v0, 0x8
/* 101BBC 800E3ACC 00409821 */  addu       $s3, $v0, $zero
/* 101BC0 800E3AD0 02609021 */  addu       $s2, $s3, $zero
/* 101BC4 800E3AD4 2611FFFF */  addiu      $s1, $s0, -0x1
/* 101BC8 800E3AD8 06200007 */  bltz       $s1, .Lmenu_800E3AF8
/* 101BCC 800E3ADC AE70FFF8 */   sw        $s0, -0x8($s3)
/* 101BD0 800E3AE0 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E3AE4:
/* 101BD4 800E3AE4 0C039C20 */  jal        func_menu_800E7080
/* 101BD8 800E3AE8 02402021 */   addu      $a0, $s2, $zero
/* 101BDC 800E3AEC 2631FFFF */  addiu      $s1, $s1, -0x1
/* 101BE0 800E3AF0 1630FFFC */  bne        $s1, $s0, .Lmenu_800E3AE4
/* 101BE4 800E3AF4 2652002C */   addiu     $s2, $s2, 0x2C
.Lmenu_800E3AF8:
/* 101BE8 800E3AF8 24040008 */  addiu      $a0, $zero, 0x8
/* 101BEC 800E3AFC 0C01FB4C */  jal        func_8007ED30
/* 101BF0 800E3B00 AE930108 */   sw        $s3, 0x108($s4)
/* 101BF4 800E3B04 0C0103B8 */  jal        func_80040EE0
/* 101BF8 800E3B08 00402021 */   addu      $a0, $v0, $zero
/* 101BFC 800E3B0C 0C01FB72 */  jal        func_8007EDC8
/* 101C00 800E3B10 AE820064 */   sw        $v0, 0x64($s4)
/* 101C04 800E3B14 8E820108 */  lw         $v0, 0x108($s4)
/* 101C08 800E3B18 14400006 */  bnez       $v0, .Lmenu_800E3B34
/* 101C0C 800E3B1C 3C04800D */   lui       $a0, %hi(D_menu_800CAD10)
/* 101C10 800E3B20 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 101C14 800E3B24 00002821 */  addu       $a1, $zero, $zero
/* 101C18 800E3B28 00A03021 */  addu       $a2, $a1, $zero
/* 101C1C 800E3B2C 0C011ACF */  jal        func_80046B3C
/* 101C20 800E3B30 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E3B34:
/* 101C24 800E3B34 8E820064 */  lw         $v0, 0x64($s4)
/* 101C28 800E3B38 14400006 */  bnez       $v0, .Lmenu_800E3B54
/* 101C2C 800E3B3C 3C04800D */   lui       $a0, %hi(D_menu_800CAD10)
/* 101C30 800E3B40 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 101C34 800E3B44 00002821 */  addu       $a1, $zero, $zero
/* 101C38 800E3B48 00A03021 */  addu       $a2, $a1, $zero
/* 101C3C 800E3B4C 0C011ACF */  jal        func_80046B3C
/* 101C40 800E3B50 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E3B54:
/* 101C44 800E3B54 8E840064 */  lw         $a0, 0x64($s4)
/* 101C48 800E3B58 24050002 */  addiu      $a1, $zero, 0x2
/* 101C4C 800E3B5C 00008821 */  addu       $s1, $zero, $zero
/* 101C50 800E3B60 0C0103FD */  jal        func_80040FF4
/* 101C54 800E3B64 02208021 */   addu      $s0, $s1, $zero
.Lmenu_800E3B68:
/* 101C58 800E3B68 8E820104 */  lw         $v0, 0x104($s4)
/* 101C5C 800E3B6C 0222102B */  sltu       $v0, $s1, $v0
/* 101C60 800E3B70 1040001D */  beqz       $v0, .Lmenu_800E3BE8
/* 101C64 800E3B74 02A02021 */   addu      $a0, $s5, $zero
/* 101C68 800E3B78 0C0026F4 */  jal        func_80009BD0
/* 101C6C 800E3B7C 24050060 */   addiu     $a1, $zero, 0x60
/* 101C70 800E3B80 8EA20028 */  lw         $v0, 0x28($s5)
/* 101C74 800E3B84 26310001 */  addiu      $s1, $s1, 0x1
/* 101C78 800E3B88 844400A0 */  lh         $a0, 0xA0($v0)
/* 101C7C 800E3B8C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 101C80 800E3B90 0040F809 */  jalr       $v0
/* 101C84 800E3B94 02A42021 */   addu      $a0, $s5, $a0
/* 101C88 800E3B98 27A40018 */  addiu      $a0, $sp, 0x18
/* 101C8C 800E3B9C 26A50044 */  addiu      $a1, $s5, 0x44
/* 101C90 800E3BA0 0C000708 */  jal        func_80001C20
/* 101C94 800E3BA4 24060008 */   addiu     $a2, $zero, 0x8
/* 101C98 800E3BA8 268400F8 */  addiu      $a0, $s4, 0xF8
/* 101C9C 800E3BAC 8E860108 */  lw         $a2, 0x108($s4)
/* 101CA0 800E3BB0 27A50018 */  addiu      $a1, $sp, 0x18
/* 101CA4 800E3BB4 0C0163C7 */  jal        func_80058F1C
/* 101CA8 800E3BB8 00D03021 */   addu      $a2, $a2, $s0
/* 101CAC 800E3BBC 02A02821 */  addu       $a1, $s5, $zero
/* 101CB0 800E3BC0 02803021 */  addu       $a2, $s4, $zero
/* 101CB4 800E3BC4 8E840108 */  lw         $a0, 0x108($s4)
/* 101CB8 800E3BC8 8E820008 */  lw         $v0, 0x8($s4)
/* 101CBC 800E3BCC 00902021 */  addu       $a0, $a0, $s0
/* 101CC0 800E3BD0 AFA20010 */  sw         $v0, 0x10($sp)
/* 101CC4 800E3BD4 8E870064 */  lw         $a3, 0x64($s4)
/* 101CC8 800E3BD8 0C039C39 */  jal        func_menu_800E70E4
/* 101CCC 800E3BDC 2610002C */   addiu     $s0, $s0, 0x2C
/* 101CD0 800E3BE0 08038EDA */  j          .Lmenu_800E3B68
/* 101CD4 800E3BE4 00000000 */   nop
.Lmenu_800E3BE8:
/* 101CD8 800E3BE8 0C0026F4 */  jal        func_80009BD0
/* 101CDC 800E3BEC 24050006 */   addiu     $a1, $zero, 0x6
/* 101CE0 800E3BF0 8FBF0038 */  lw         $ra, 0x38($sp)
/* 101CE4 800E3BF4 8FB50034 */  lw         $s5, 0x34($sp)
/* 101CE8 800E3BF8 8FB40030 */  lw         $s4, 0x30($sp)
/* 101CEC 800E3BFC 8FB3002C */  lw         $s3, 0x2C($sp)
/* 101CF0 800E3C00 8FB20028 */  lw         $s2, 0x28($sp)
/* 101CF4 800E3C04 8FB10024 */  lw         $s1, 0x24($sp)
/* 101CF8 800E3C08 8FB00020 */  lw         $s0, 0x20($sp)
/* 101CFC 800E3C0C 03E00008 */  jr         $ra
/* 101D00 800E3C10 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800E3C14
/* 101D04 800E3C14 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 101D08 800E3C18 AFB40028 */  sw         $s4, 0x28($sp)
/* 101D0C 800E3C1C 0080A021 */  addu       $s4, $a0, $zero
/* 101D10 800E3C20 AFBF0030 */  sw         $ra, 0x30($sp)
/* 101D14 800E3C24 AFB5002C */  sw         $s5, 0x2C($sp)
/* 101D18 800E3C28 AFB30024 */  sw         $s3, 0x24($sp)
/* 101D1C 800E3C2C AFB20020 */  sw         $s2, 0x20($sp)
/* 101D20 800E3C30 AFB1001C */  sw         $s1, 0x1C($sp)
/* 101D24 800E3C34 AFB00018 */  sw         $s0, 0x18($sp)
/* 101D28 800E3C38 8E82011C */  lw         $v0, 0x11C($s4)
/* 101D2C 800E3C3C 10400007 */  beqz       $v0, .Lmenu_800E3C5C
/* 101D30 800E3C40 00A0A821 */   addu      $s5, $a1, $zero
/* 101D34 800E3C44 8EA20028 */  lw         $v0, 0x28($s5)
/* 101D38 800E3C48 24050012 */  addiu      $a1, $zero, 0x12
/* 101D3C 800E3C4C 84440098 */  lh         $a0, 0x98($v0)
/* 101D40 800E3C50 8C42009C */  lw         $v0, 0x9C($v0)
/* 101D44 800E3C54 0040F809 */  jalr       $v0
/* 101D48 800E3C58 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800E3C5C:
/* 101D4C 800E3C5C 02A02021 */  addu       $a0, $s5, $zero
/* 101D50 800E3C60 0C0026F4 */  jal        func_80009BD0
/* 101D54 800E3C64 24050007 */   addiu     $a1, $zero, 0x7
/* 101D58 800E3C68 0C002680 */  jal        func_80009A00
/* 101D5C 800E3C6C 02A02021 */   addu      $a0, $s5, $zero
/* 101D60 800E3C70 14400007 */  bnez       $v0, .Lmenu_800E3C90
/* 101D64 800E3C74 AE820118 */   sw        $v0, 0x118($s4)
/* 101D68 800E3C78 8EA20028 */  lw         $v0, 0x28($s5)
/* 101D6C 800E3C7C 24050004 */  addiu      $a1, $zero, 0x4
/* 101D70 800E3C80 84440098 */  lh         $a0, 0x98($v0)
/* 101D74 800E3C84 8C42009C */  lw         $v0, 0x9C($v0)
/* 101D78 800E3C88 0040F809 */  jalr       $v0
/* 101D7C 800E3C8C 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800E3C90:
/* 101D80 800E3C90 02A02021 */  addu       $a0, $s5, $zero
/* 101D84 800E3C94 0C0026F4 */  jal        func_80009BD0
/* 101D88 800E3C98 24050008 */   addiu     $a1, $zero, 0x8
/* 101D8C 800E3C9C 02A02021 */  addu       $a0, $s5, $zero
/* 101D90 800E3CA0 0C0026F4 */  jal        func_80009BD0
/* 101D94 800E3CA4 24050005 */   addiu     $a1, $zero, 0x5
/* 101D98 800E3CA8 8E850118 */  lw         $a1, 0x118($s4)
/* 101D9C 800E3CAC 0C016397 */  jal        func_80058E5C
/* 101DA0 800E3CB0 2684010C */   addiu     $a0, $s4, 0x10C
/* 101DA4 800E3CB4 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 101DA8 800E3CB8 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 101DAC 800E3CBC 0C01FB65 */  jal        func_8007ED94
/* 101DB0 800E3CC0 00000000 */   nop
/* 101DB4 800E3CC4 8E900118 */  lw         $s0, 0x118($s4)
/* 101DB8 800E3CC8 001020C0 */  sll        $a0, $s0, 3
/* 101DBC 800E3CCC 00902023 */  subu       $a0, $a0, $s0
/* 101DC0 800E3CD0 00042100 */  sll        $a0, $a0, 4
/* 101DC4 800E3CD4 0C00943C */  jal        func_800250F0
/* 101DC8 800E3CD8 34840008 */   ori       $a0, $a0, 0x8
/* 101DCC 800E3CDC 24420008 */  addiu      $v0, $v0, 0x8
/* 101DD0 800E3CE0 00409821 */  addu       $s3, $v0, $zero
/* 101DD4 800E3CE4 02609021 */  addu       $s2, $s3, $zero
/* 101DD8 800E3CE8 2611FFFF */  addiu      $s1, $s0, -0x1
/* 101DDC 800E3CEC 06200007 */  bltz       $s1, .Lmenu_800E3D0C
/* 101DE0 800E3CF0 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 101DE4 800E3CF4 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E3CF8:
/* 101DE8 800E3CF8 0C039AE4 */  jal        func_menu_800E6B90
/* 101DEC 800E3CFC 02402021 */   addu      $a0, $s2, $zero
/* 101DF0 800E3D00 2631FFFF */  addiu      $s1, $s1, -0x1
/* 101DF4 800E3D04 1630FFFC */  bne        $s1, $s0, .Lmenu_800E3CF8
/* 101DF8 800E3D08 26520070 */   addiu     $s2, $s2, 0x70
.Lmenu_800E3D0C:
/* 101DFC 800E3D0C 0C01FB72 */  jal        func_8007EDC8
/* 101E00 800E3D10 AE93011C */   sw        $s3, 0x11C($s4)
/* 101E04 800E3D14 8E82011C */  lw         $v0, 0x11C($s4)
/* 101E08 800E3D18 14400008 */  bnez       $v0, .Lmenu_800E3D3C
/* 101E0C 800E3D1C 00008821 */   addu      $s1, $zero, $zero
/* 101E10 800E3D20 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 101E14 800E3D24 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 101E18 800E3D28 00002821 */  addu       $a1, $zero, $zero
/* 101E1C 800E3D2C 00A03021 */  addu       $a2, $a1, $zero
/* 101E20 800E3D30 0C011ACF */  jal        func_80046B3C
/* 101E24 800E3D34 00A03821 */   addu      $a3, $a1, $zero
/* 101E28 800E3D38 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800E3D3C:
/* 101E2C 800E3D3C 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E3D40:
/* 101E30 800E3D40 8E820118 */  lw         $v0, 0x118($s4)
/* 101E34 800E3D44 0222102B */  sltu       $v0, $s1, $v0
/* 101E38 800E3D48 1040001A */  beqz       $v0, .Lmenu_800E3DB4
/* 101E3C 800E3D4C 02A02021 */   addu      $a0, $s5, $zero
/* 101E40 800E3D50 0C0026F4 */  jal        func_80009BD0
/* 101E44 800E3D54 2405003F */   addiu     $a1, $zero, 0x3F
/* 101E48 800E3D58 8EA20028 */  lw         $v0, 0x28($s5)
/* 101E4C 800E3D5C 26310001 */  addiu      $s1, $s1, 0x1
/* 101E50 800E3D60 844400A0 */  lh         $a0, 0xA0($v0)
/* 101E54 800E3D64 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 101E58 800E3D68 0040F809 */  jalr       $v0
/* 101E5C 800E3D6C 02A42021 */   addu      $a0, $s5, $a0
/* 101E60 800E3D70 27A40010 */  addiu      $a0, $sp, 0x10
/* 101E64 800E3D74 26A50044 */  addiu      $a1, $s5, 0x44
/* 101E68 800E3D78 0C000708 */  jal        func_80001C20
/* 101E6C 800E3D7C 24060008 */   addiu     $a2, $zero, 0x8
/* 101E70 800E3D80 2684010C */  addiu      $a0, $s4, 0x10C
/* 101E74 800E3D84 8E86011C */  lw         $a2, 0x11C($s4)
/* 101E78 800E3D88 27A50010 */  addiu      $a1, $sp, 0x10
/* 101E7C 800E3D8C 0C0163C7 */  jal        func_80058F1C
/* 101E80 800E3D90 00D03021 */   addu      $a2, $a2, $s0
/* 101E84 800E3D94 02A02821 */  addu       $a1, $s5, $zero
/* 101E88 800E3D98 02803021 */  addu       $a2, $s4, $zero
/* 101E8C 800E3D9C 8E84011C */  lw         $a0, 0x11C($s4)
/* 101E90 800E3DA0 8E870008 */  lw         $a3, 0x8($s4)
/* 101E94 800E3DA4 0C039B15 */  jal        func_menu_800E6C54
/* 101E98 800E3DA8 00902021 */   addu      $a0, $a0, $s0
/* 101E9C 800E3DAC 08038F50 */  j          .Lmenu_800E3D40
/* 101EA0 800E3DB0 26100070 */   addiu     $s0, $s0, 0x70
.Lmenu_800E3DB4:
/* 101EA4 800E3DB4 0C0026F4 */  jal        func_80009BD0
/* 101EA8 800E3DB8 24050006 */   addiu     $a1, $zero, 0x6
/* 101EAC 800E3DBC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 101EB0 800E3DC0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 101EB4 800E3DC4 8FB40028 */  lw         $s4, 0x28($sp)
/* 101EB8 800E3DC8 8FB30024 */  lw         $s3, 0x24($sp)
/* 101EBC 800E3DCC 8FB20020 */  lw         $s2, 0x20($sp)
/* 101EC0 800E3DD0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 101EC4 800E3DD4 8FB00018 */  lw         $s0, 0x18($sp)
/* 101EC8 800E3DD8 03E00008 */  jr         $ra
/* 101ECC 800E3DDC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E3DE0
/* 101ED0 800E3DE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 101ED4 800E3DE4 AFB20018 */  sw         $s2, 0x18($sp)
/* 101ED8 800E3DE8 00809021 */  addu       $s2, $a0, $zero
/* 101EDC 800E3DEC AFBF001C */  sw         $ra, 0x1C($sp)
/* 101EE0 800E3DF0 AFB10014 */  sw         $s1, 0x14($sp)
/* 101EE4 800E3DF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 101EE8 800E3DF8 8E420118 */  lw         $v0, 0x118($s2)
/* 101EEC 800E3DFC 1040000C */  beqz       $v0, .Lmenu_800E3E30
/* 101EF0 800E3E00 00008021 */   addu      $s0, $zero, $zero
/* 101EF4 800E3E04 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E3E08:
/* 101EF8 800E3E08 26100001 */  addiu      $s0, $s0, 0x1
/* 101EFC 800E3E0C 02402821 */  addu       $a1, $s2, $zero
/* 101F00 800E3E10 8E44011C */  lw         $a0, 0x11C($s2)
/* 101F04 800E3E14 8E460008 */  lw         $a2, 0x8($s2)
/* 101F08 800E3E18 0C039B7F */  jal        func_menu_800E6DFC
/* 101F0C 800E3E1C 00912021 */   addu      $a0, $a0, $s1
/* 101F10 800E3E20 8E420118 */  lw         $v0, 0x118($s2)
/* 101F14 800E3E24 0202102B */  sltu       $v0, $s0, $v0
/* 101F18 800E3E28 1440FFF7 */  bnez       $v0, .Lmenu_800E3E08
/* 101F1C 800E3E2C 26310070 */   addiu     $s1, $s1, 0x70
.Lmenu_800E3E30:
/* 101F20 800E3E30 8FBF001C */  lw         $ra, 0x1C($sp)
/* 101F24 800E3E34 8FB20018 */  lw         $s2, 0x18($sp)
/* 101F28 800E3E38 8FB10014 */  lw         $s1, 0x14($sp)
/* 101F2C 800E3E3C 8FB00010 */  lw         $s0, 0x10($sp)
/* 101F30 800E3E40 03E00008 */  jr         $ra
/* 101F34 800E3E44 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E3E48
/* 101F38 800E3E48 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 101F3C 800E3E4C AFB40028 */  sw         $s4, 0x28($sp)
/* 101F40 800E3E50 0080A021 */  addu       $s4, $a0, $zero
/* 101F44 800E3E54 AFBF0030 */  sw         $ra, 0x30($sp)
/* 101F48 800E3E58 AFB5002C */  sw         $s5, 0x2C($sp)
/* 101F4C 800E3E5C AFB30024 */  sw         $s3, 0x24($sp)
/* 101F50 800E3E60 AFB20020 */  sw         $s2, 0x20($sp)
/* 101F54 800E3E64 AFB1001C */  sw         $s1, 0x1C($sp)
/* 101F58 800E3E68 AFB00018 */  sw         $s0, 0x18($sp)
/* 101F5C 800E3E6C 8E820130 */  lw         $v0, 0x130($s4)
/* 101F60 800E3E70 10400007 */  beqz       $v0, .Lmenu_800E3E90
/* 101F64 800E3E74 00A0A821 */   addu      $s5, $a1, $zero
/* 101F68 800E3E78 8EA20028 */  lw         $v0, 0x28($s5)
/* 101F6C 800E3E7C 24050012 */  addiu      $a1, $zero, 0x12
/* 101F70 800E3E80 84440098 */  lh         $a0, 0x98($v0)
/* 101F74 800E3E84 8C42009C */  lw         $v0, 0x9C($v0)
/* 101F78 800E3E88 0040F809 */  jalr       $v0
/* 101F7C 800E3E8C 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800E3E90:
/* 101F80 800E3E90 02A02021 */  addu       $a0, $s5, $zero
/* 101F84 800E3E94 0C0026F4 */  jal        func_80009BD0
/* 101F88 800E3E98 24050007 */   addiu     $a1, $zero, 0x7
/* 101F8C 800E3E9C 0C002680 */  jal        func_80009A00
/* 101F90 800E3EA0 02A02021 */   addu      $a0, $s5, $zero
/* 101F94 800E3EA4 14400007 */  bnez       $v0, .Lmenu_800E3EC4
/* 101F98 800E3EA8 AE82012C */   sw        $v0, 0x12C($s4)
/* 101F9C 800E3EAC 8EA20028 */  lw         $v0, 0x28($s5)
/* 101FA0 800E3EB0 24050004 */  addiu      $a1, $zero, 0x4
/* 101FA4 800E3EB4 84440098 */  lh         $a0, 0x98($v0)
/* 101FA8 800E3EB8 8C42009C */  lw         $v0, 0x9C($v0)
/* 101FAC 800E3EBC 0040F809 */  jalr       $v0
/* 101FB0 800E3EC0 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800E3EC4:
/* 101FB4 800E3EC4 02A02021 */  addu       $a0, $s5, $zero
/* 101FB8 800E3EC8 0C0026F4 */  jal        func_80009BD0
/* 101FBC 800E3ECC 24050008 */   addiu     $a1, $zero, 0x8
/* 101FC0 800E3ED0 02A02021 */  addu       $a0, $s5, $zero
/* 101FC4 800E3ED4 0C0026F4 */  jal        func_80009BD0
/* 101FC8 800E3ED8 24050005 */   addiu     $a1, $zero, 0x5
/* 101FCC 800E3EDC 8E85012C */  lw         $a1, 0x12C($s4)
/* 101FD0 800E3EE0 0C016397 */  jal        func_80058E5C
/* 101FD4 800E3EE4 26840120 */   addiu     $a0, $s4, 0x120
/* 101FD8 800E3EE8 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 101FDC 800E3EEC 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 101FE0 800E3EF0 0C01FB65 */  jal        func_8007ED94
/* 101FE4 800E3EF4 00000000 */   nop
/* 101FE8 800E3EF8 8E90012C */  lw         $s0, 0x12C($s4)
/* 101FEC 800E3EFC 00102040 */  sll        $a0, $s0, 1
/* 101FF0 800E3F00 00902021 */  addu       $a0, $a0, $s0
/* 101FF4 800E3F04 000420C0 */  sll        $a0, $a0, 3
/* 101FF8 800E3F08 00902021 */  addu       $a0, $a0, $s0
/* 101FFC 800E3F0C 00042080 */  sll        $a0, $a0, 2
/* 102000 800E3F10 0C00943C */  jal        func_800250F0
/* 102004 800E3F14 24840008 */   addiu     $a0, $a0, 0x8
/* 102008 800E3F18 24420008 */  addiu      $v0, $v0, 0x8
/* 10200C 800E3F1C 00409821 */  addu       $s3, $v0, $zero
/* 102010 800E3F20 02609021 */  addu       $s2, $s3, $zero
/* 102014 800E3F24 2611FFFF */  addiu      $s1, $s0, -0x1
/* 102018 800E3F28 06200007 */  bltz       $s1, .Lmenu_800E3F48
/* 10201C 800E3F2C AE70FFF8 */   sw        $s0, -0x8($s3)
/* 102020 800E3F30 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E3F34:
/* 102024 800E3F34 0C0395D0 */  jal        func_menu_800E5740
/* 102028 800E3F38 02402021 */   addu      $a0, $s2, $zero
/* 10202C 800E3F3C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 102030 800E3F40 1630FFFC */  bne        $s1, $s0, .Lmenu_800E3F34
/* 102034 800E3F44 26520064 */   addiu     $s2, $s2, 0x64
.Lmenu_800E3F48:
/* 102038 800E3F48 0C01FB72 */  jal        func_8007EDC8
/* 10203C 800E3F4C AE930130 */   sw        $s3, 0x130($s4)
/* 102040 800E3F50 8E820130 */  lw         $v0, 0x130($s4)
/* 102044 800E3F54 14400008 */  bnez       $v0, .Lmenu_800E3F78
/* 102048 800E3F58 00008821 */   addu      $s1, $zero, $zero
/* 10204C 800E3F5C 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 102050 800E3F60 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 102054 800E3F64 00002821 */  addu       $a1, $zero, $zero
/* 102058 800E3F68 00A03021 */  addu       $a2, $a1, $zero
/* 10205C 800E3F6C 0C011ACF */  jal        func_80046B3C
/* 102060 800E3F70 00A03821 */   addu      $a3, $a1, $zero
/* 102064 800E3F74 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800E3F78:
/* 102068 800E3F78 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E3F7C:
/* 10206C 800E3F7C 8E82012C */  lw         $v0, 0x12C($s4)
/* 102070 800E3F80 0222102B */  sltu       $v0, $s1, $v0
/* 102074 800E3F84 1040001A */  beqz       $v0, .Lmenu_800E3FF0
/* 102078 800E3F88 02A02021 */   addu      $a0, $s5, $zero
/* 10207C 800E3F8C 0C0026F4 */  jal        func_80009BD0
/* 102080 800E3F90 2405004D */   addiu     $a1, $zero, 0x4D
/* 102084 800E3F94 8EA20028 */  lw         $v0, 0x28($s5)
/* 102088 800E3F98 26310001 */  addiu      $s1, $s1, 0x1
/* 10208C 800E3F9C 844400A0 */  lh         $a0, 0xA0($v0)
/* 102090 800E3FA0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 102094 800E3FA4 0040F809 */  jalr       $v0
/* 102098 800E3FA8 02A42021 */   addu      $a0, $s5, $a0
/* 10209C 800E3FAC 27A40010 */  addiu      $a0, $sp, 0x10
/* 1020A0 800E3FB0 26A50044 */  addiu      $a1, $s5, 0x44
/* 1020A4 800E3FB4 0C000708 */  jal        func_80001C20
/* 1020A8 800E3FB8 24060008 */   addiu     $a2, $zero, 0x8
/* 1020AC 800E3FBC 26840120 */  addiu      $a0, $s4, 0x120
/* 1020B0 800E3FC0 8E860130 */  lw         $a2, 0x130($s4)
/* 1020B4 800E3FC4 27A50010 */  addiu      $a1, $sp, 0x10
/* 1020B8 800E3FC8 0C0163C7 */  jal        func_80058F1C
/* 1020BC 800E3FCC 00D03021 */   addu      $a2, $a2, $s0
/* 1020C0 800E3FD0 02A02821 */  addu       $a1, $s5, $zero
/* 1020C4 800E3FD4 02803021 */  addu       $a2, $s4, $zero
/* 1020C8 800E3FD8 8E840130 */  lw         $a0, 0x130($s4)
/* 1020CC 800E3FDC 8E870008 */  lw         $a3, 0x8($s4)
/* 1020D0 800E3FE0 0C0395F9 */  jal        func_menu_800E57E4
/* 1020D4 800E3FE4 00902021 */   addu      $a0, $a0, $s0
/* 1020D8 800E3FE8 08038FDF */  j          .Lmenu_800E3F7C
/* 1020DC 800E3FEC 26100064 */   addiu     $s0, $s0, 0x64
.Lmenu_800E3FF0:
/* 1020E0 800E3FF0 0C0026F4 */  jal        func_80009BD0
/* 1020E4 800E3FF4 24050006 */   addiu     $a1, $zero, 0x6
/* 1020E8 800E3FF8 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1020EC 800E3FFC 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1020F0 800E4000 8FB40028 */  lw         $s4, 0x28($sp)
/* 1020F4 800E4004 8FB30024 */  lw         $s3, 0x24($sp)
/* 1020F8 800E4008 8FB20020 */  lw         $s2, 0x20($sp)
/* 1020FC 800E400C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 102100 800E4010 8FB00018 */  lw         $s0, 0x18($sp)
/* 102104 800E4014 03E00008 */  jr         $ra
/* 102108 800E4018 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E401C
/* 10210C 800E401C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 102110 800E4020 AFB20018 */  sw         $s2, 0x18($sp)
/* 102114 800E4024 00809021 */  addu       $s2, $a0, $zero
/* 102118 800E4028 AFBF001C */  sw         $ra, 0x1C($sp)
/* 10211C 800E402C AFB10014 */  sw         $s1, 0x14($sp)
/* 102120 800E4030 AFB00010 */  sw         $s0, 0x10($sp)
/* 102124 800E4034 8E42012C */  lw         $v0, 0x12C($s2)
/* 102128 800E4038 1040000B */  beqz       $v0, .Lmenu_800E4068
/* 10212C 800E403C 00008021 */   addu      $s0, $zero, $zero
/* 102130 800E4040 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E4044:
/* 102134 800E4044 26100001 */  addiu      $s0, $s0, 0x1
/* 102138 800E4048 8E440130 */  lw         $a0, 0x130($s2)
/* 10213C 800E404C 8E450008 */  lw         $a1, 0x8($s2)
/* 102140 800E4050 0C039638 */  jal        func_menu_800E58E0
/* 102144 800E4054 00912021 */   addu      $a0, $a0, $s1
/* 102148 800E4058 8E42012C */  lw         $v0, 0x12C($s2)
/* 10214C 800E405C 0202102B */  sltu       $v0, $s0, $v0
/* 102150 800E4060 1440FFF8 */  bnez       $v0, .Lmenu_800E4044
/* 102154 800E4064 26310064 */   addiu     $s1, $s1, 0x64
.Lmenu_800E4068:
/* 102158 800E4068 8FBF001C */  lw         $ra, 0x1C($sp)
/* 10215C 800E406C 8FB20018 */  lw         $s2, 0x18($sp)
/* 102160 800E4070 8FB10014 */  lw         $s1, 0x14($sp)
/* 102164 800E4074 8FB00010 */  lw         $s0, 0x10($sp)
/* 102168 800E4078 03E00008 */  jr         $ra
/* 10216C 800E407C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E4080
/* 102170 800E4080 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 102174 800E4084 8FA80098 */  lw         $t0, 0x98($sp)
/* 102178 800E4088 AFB7007C */  sw         $s7, 0x7C($sp)
/* 10217C 800E408C 0080B821 */  addu       $s7, $a0, $zero
/* 102180 800E4090 AFB40070 */  sw         $s4, 0x70($sp)
/* 102184 800E4094 00A0A021 */  addu       $s4, $a1, $zero
/* 102188 800E4098 AFB00060 */  sw         $s0, 0x60($sp)
/* 10218C 800E409C 00E08021 */  addu       $s0, $a3, $zero
/* 102190 800E40A0 AFBE0080 */  sw         $fp, 0x80($sp)
/* 102194 800E40A4 0000F021 */  addu       $fp, $zero, $zero
/* 102198 800E40A8 AFBF0084 */  sw         $ra, 0x84($sp)
/* 10219C 800E40AC AFB60078 */  sw         $s6, 0x78($sp)
/* 1021A0 800E40B0 AFB50074 */  sw         $s5, 0x74($sp)
/* 1021A4 800E40B4 AFB3006C */  sw         $s3, 0x6C($sp)
/* 1021A8 800E40B8 AFB20068 */  sw         $s2, 0x68($sp)
/* 1021AC 800E40BC AFB10064 */  sw         $s1, 0x64($sp)
/* 1021B0 800E40C0 AFA60090 */  sw         $a2, 0x90($sp)
/* 1021B4 800E40C4 8D020000 */  lw         $v0, 0x0($t0)
/* 1021B8 800E40C8 10400007 */  beqz       $v0, .Lmenu_800E40E8
/* 1021BC 800E40CC 03C0A821 */   addu      $s5, $fp, $zero
/* 1021C0 800E40D0 8E820028 */  lw         $v0, 0x28($s4)
/* 1021C4 800E40D4 24050012 */  addiu      $a1, $zero, 0x12
/* 1021C8 800E40D8 84440098 */  lh         $a0, 0x98($v0)
/* 1021CC 800E40DC 8C42009C */  lw         $v0, 0x9C($v0)
/* 1021D0 800E40E0 0040F809 */  jalr       $v0
/* 1021D4 800E40E4 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E40E8:
/* 1021D8 800E40E8 02802021 */  addu       $a0, $s4, $zero
/* 1021DC 800E40EC 0C0026F4 */  jal        func_80009BD0
/* 1021E0 800E40F0 24050007 */   addiu     $a1, $zero, 0x7
/* 1021E4 800E40F4 0C002680 */  jal        func_80009A00
/* 1021E8 800E40F8 02802021 */   addu      $a0, $s4, $zero
/* 1021EC 800E40FC 00409021 */  addu       $s2, $v0, $zero
/* 1021F0 800E4100 56400008 */  bnel       $s2, $zero, .Lmenu_800E4124
/* 1021F4 800E4104 02802021 */   addu      $a0, $s4, $zero
/* 1021F8 800E4108 8E820028 */  lw         $v0, 0x28($s4)
/* 1021FC 800E410C 24050004 */  addiu      $a1, $zero, 0x4
/* 102200 800E4110 84440098 */  lh         $a0, 0x98($v0)
/* 102204 800E4114 8C42009C */  lw         $v0, 0x9C($v0)
/* 102208 800E4118 0040F809 */  jalr       $v0
/* 10220C 800E411C 02842021 */   addu      $a0, $s4, $a0
/* 102210 800E4120 02802021 */  addu       $a0, $s4, $zero
.Lmenu_800E4124:
/* 102214 800E4124 0C0026F4 */  jal        func_80009BD0
/* 102218 800E4128 24050008 */   addiu     $a1, $zero, 0x8
/* 10221C 800E412C 02802021 */  addu       $a0, $s4, $zero
/* 102220 800E4130 0C0026F4 */  jal        func_80009BD0
/* 102224 800E4134 24050005 */   addiu     $a1, $zero, 0x5
/* 102228 800E4138 AE120000 */  sw         $s2, 0x0($s0)
/* 10222C 800E413C 8FA8009C */  lw         $t0, 0x9C($sp)
/* 102230 800E4140 8D020008 */  lw         $v0, 0x8($t0)
/* 102234 800E4144 02402821 */  addu       $a1, $s2, $zero
/* 102238 800E4148 84440010 */  lh         $a0, 0x10($v0)
/* 10223C 800E414C 8C420014 */  lw         $v0, 0x14($v0)
/* 102240 800E4150 0040F809 */  jalr       $v0
/* 102244 800E4154 01042021 */   addu      $a0, $t0, $a0
/* 102248 800E4158 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 10224C 800E415C 8C4469F0 */  lw         $a0, %lo(D_menu_801269F0)($v0)
/* 102250 800E4160 0C01FB65 */  jal        func_8007ED94
/* 102254 800E4164 2651FFFF */   addiu     $s1, $s2, -0x1
/* 102258 800E4168 00122040 */  sll        $a0, $s2, 1
/* 10225C 800E416C 00922021 */  addu       $a0, $a0, $s2
/* 102260 800E4170 0C00943C */  jal        func_800250F0
/* 102264 800E4174 00042080 */   sll       $a0, $a0, 2
/* 102268 800E4178 00409821 */  addu       $s3, $v0, $zero
/* 10226C 800E417C 06200007 */  bltz       $s1, .Lmenu_800E419C
/* 102270 800E4180 02608021 */   addu      $s0, $s3, $zero
/* 102274 800E4184 2416FFFF */  addiu      $s6, $zero, -0x1
.Lmenu_800E4188:
/* 102278 800E4188 0C0384D0 */  jal        func_menu_800E1340
/* 10227C 800E418C 02002021 */   addu      $a0, $s0, $zero
/* 102280 800E4190 2631FFFF */  addiu      $s1, $s1, -0x1
/* 102284 800E4194 1636FFFC */  bne        $s1, $s6, .Lmenu_800E4188
/* 102288 800E4198 2610000C */   addiu     $s0, $s0, 0xC
.Lmenu_800E419C:
/* 10228C 800E419C 0C01FB72 */  jal        func_8007EDC8
/* 102290 800E41A0 00000000 */   nop
/* 102294 800E41A4 16600008 */  bnez       $s3, .Lmenu_800E41C8
/* 102298 800E41A8 02608021 */   addu      $s0, $s3, $zero
/* 10229C 800E41AC 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 1022A0 800E41B0 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 1022A4 800E41B4 00002821 */  addu       $a1, $zero, $zero
/* 1022A8 800E41B8 00A03021 */  addu       $a2, $a1, $zero
/* 1022AC 800E41BC 0C011ACF */  jal        func_80046B3C
/* 1022B0 800E41C0 00A03821 */   addu      $a3, $a1, $zero
/* 1022B4 800E41C4 02608021 */  addu       $s0, $s3, $zero
.Lmenu_800E41C8:
/* 1022B8 800E41C8 00121040 */  sll        $v0, $s2, 1
/* 1022BC 800E41CC 00521021 */  addu       $v0, $v0, $s2
/* 1022C0 800E41D0 00021080 */  sll        $v0, $v0, 2
/* 1022C4 800E41D4 8FA80098 */  lw         $t0, 0x98($sp)
/* 1022C8 800E41D8 27B20020 */  addiu      $s2, $sp, 0x20
/* 1022CC 800E41DC AD130000 */  sw         $s3, 0x0($t0)
/* 1022D0 800E41E0 02029821 */  addu       $s3, $s0, $v0
/* 1022D4 800E41E4 3C02800D */  lui        $v0, %hi(jtbl_menu_800CAE40)
/* 1022D8 800E41E8 2456AE40 */  addiu      $s6, $v0, %lo(jtbl_menu_800CAE40)
.Lmenu_800E41EC:
/* 1022DC 800E41EC 0213102B */  sltu       $v0, $s0, $s3
/* 1022E0 800E41F0 50400079 */  beql       $v0, $zero, .Lmenu_800E43D8
/* 1022E4 800E41F4 02802021 */   addu      $a0, $s4, $zero
/* 1022E8 800E41F8 8FA50090 */  lw         $a1, 0x90($sp)
/* 1022EC 800E41FC 0C0026F4 */  jal        func_80009BD0
/* 1022F0 800E4200 02802021 */   addu      $a0, $s4, $zero
/* 1022F4 800E4204 8E820028 */  lw         $v0, 0x28($s4)
/* 1022F8 800E4208 844400A0 */  lh         $a0, 0xA0($v0)
/* 1022FC 800E420C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 102300 800E4210 0040F809 */  jalr       $v0
/* 102304 800E4214 02842021 */   addu      $a0, $s4, $a0
/* 102308 800E4218 27A40010 */  addiu      $a0, $sp, 0x10
/* 10230C 800E421C 26850044 */  addiu      $a1, $s4, 0x44
/* 102310 800E4220 0C000708 */  jal        func_80001C20
/* 102314 800E4224 24060008 */   addiu     $a2, $zero, 0x8
/* 102318 800E4228 8FA4009C */  lw         $a0, 0x9C($sp)
/* 10231C 800E422C 0C016427 */  jal        func_8005909C
/* 102320 800E4230 27A50010 */   addiu     $a1, $sp, 0x10
/* 102324 800E4234 00401821 */  addu       $v1, $v0, $zero
/* 102328 800E4238 10600005 */  beqz       $v1, .Lmenu_800E4250
/* 10232C 800E423C 27A50010 */   addiu     $a1, $sp, 0x10
/* 102330 800E4240 8C620008 */  lw         $v0, 0x8($v1)
/* 102334 800E4244 AE020008 */  sw         $v0, 0x8($s0)
/* 102338 800E4248 08039097 */  j          .Lmenu_800E425C
/* 10233C 800E424C AC700008 */   sw        $s0, 0x8($v1)
.Lmenu_800E4250:
/* 102340 800E4250 8FA4009C */  lw         $a0, 0x9C($sp)
/* 102344 800E4254 0C0163C7 */  jal        func_80058F1C
/* 102348 800E4258 02003021 */   addu      $a2, $s0, $zero
.Lmenu_800E425C:
/* 10234C 800E425C 02802021 */  addu       $a0, $s4, $zero
/* 102350 800E4260 0C0026F4 */  jal        func_80009BD0
/* 102354 800E4264 24050005 */   addiu     $a1, $zero, 0x5
/* 102358 800E4268 8E820028 */  lw         $v0, 0x28($s4)
/* 10235C 800E426C 844400A0 */  lh         $a0, 0xA0($v0)
/* 102360 800E4270 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 102364 800E4274 0040F809 */  jalr       $v0
/* 102368 800E4278 02842021 */   addu      $a0, $s4, $a0
/* 10236C 800E427C 8E830028 */  lw         $v1, 0x28($s4)
/* 102370 800E4280 00408821 */  addu       $s1, $v0, $zero
/* 102374 800E4284 846400A0 */  lh         $a0, 0xA0($v1)
/* 102378 800E4288 8C6300A4 */  lw         $v1, 0xA4($v1)
/* 10237C 800E428C 0060F809 */  jalr       $v1
/* 102380 800E4290 02842021 */   addu      $a0, $s4, $a0
/* 102384 800E4294 00401821 */  addu       $v1, $v0, $zero
/* 102388 800E4298 2402004E */  addiu      $v0, $zero, 0x4E
/* 10238C 800E429C 14620003 */  bne        $v1, $v0, .Lmenu_800E42AC
/* 102390 800E42A0 2402004F */   addiu     $v0, $zero, 0x4F
/* 102394 800E42A4 080390B4 */  j          .Lmenu_800E42D0
/* 102398 800E42A8 241E0001 */   addiu     $fp, $zero, 0x1
.Lmenu_800E42AC:
/* 10239C 800E42AC 14620003 */  bne        $v1, $v0, .Lmenu_800E42BC
/* 1023A0 800E42B0 24050013 */   addiu     $a1, $zero, 0x13
/* 1023A4 800E42B4 080390B4 */  j          .Lmenu_800E42D0
/* 1023A8 800E42B8 0000F021 */   addu      $fp, $zero, $zero
.Lmenu_800E42BC:
/* 1023AC 800E42BC 8E820028 */  lw         $v0, 0x28($s4)
/* 1023B0 800E42C0 84440098 */  lh         $a0, 0x98($v0)
/* 1023B4 800E42C4 8C42009C */  lw         $v0, 0x9C($v0)
/* 1023B8 800E42C8 0040F809 */  jalr       $v0
/* 1023BC 800E42CC 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E42D0:
/* 1023C0 800E42D0 8E820028 */  lw         $v0, 0x28($s4)
/* 1023C4 800E42D4 844400A0 */  lh         $a0, 0xA0($v0)
/* 1023C8 800E42D8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 1023CC 800E42DC 0040F809 */  jalr       $v0
/* 1023D0 800E42E0 02842021 */   addu      $a0, $s4, $a0
/* 1023D4 800E42E4 27A40018 */  addiu      $a0, $sp, 0x18
/* 1023D8 800E42E8 26850044 */  addiu      $a1, $s4, 0x44
/* 1023DC 800E42EC 0C000708 */  jal        func_80001C20
/* 1023E0 800E42F0 24060008 */   addiu     $a2, $zero, 0x8
/* 1023E4 800E42F4 2623FFD5 */  addiu      $v1, $s1, -0x2B
/* 1023E8 800E42F8 2C620036 */  sltiu      $v0, $v1, 0x36
/* 1023EC 800E42FC 10400016 */  beqz       $v0, Lmenu_800E4358
/* 1023F0 800E4300 00031080 */   sll       $v0, $v1, 2
/* 1023F4 800E4304 00561021 */  addu       $v0, $v0, $s6
/* 1023F8 800E4308 8C420000 */  lw         $v0, 0x0($v0)
/* 1023FC 800E430C 00400008 */  jr         $v0
/* 102400 800E4310 00000000 */   nop
glabel Lmenu_800E4314
/* 102404 800E4314 080390D2 */  j          .Lmenu_800E4348
/* 102408 800E4318 26E400A8 */   addiu     $a0, $s7, 0xA8
glabel Lmenu_800E431C
/* 10240C 800E431C 080390D2 */  j          .Lmenu_800E4348
/* 102410 800E4320 26E400BC */   addiu     $a0, $s7, 0xBC
glabel Lmenu_800E4324
/* 102414 800E4324 080390D2 */  j          .Lmenu_800E4348
/* 102418 800E4328 26E400D0 */   addiu     $a0, $s7, 0xD0
glabel Lmenu_800E432C
/* 10241C 800E432C 080390D2 */  j          .Lmenu_800E4348
/* 102420 800E4330 26E400E4 */   addiu     $a0, $s7, 0xE4
glabel Lmenu_800E4334
/* 102424 800E4334 080390D2 */  j          .Lmenu_800E4348
/* 102428 800E4338 26E400F8 */   addiu     $a0, $s7, 0xF8
glabel Lmenu_800E433C
/* 10242C 800E433C 080390D2 */  j          .Lmenu_800E4348
/* 102430 800E4340 26E4010C */   addiu     $a0, $s7, 0x10C
glabel Lmenu_800E4344
/* 102434 800E4344 26E40120 */  addiu      $a0, $s7, 0x120
.Lmenu_800E4348:
/* 102438 800E4348 0C016427 */  jal        func_8005909C
/* 10243C 800E434C 27A50018 */   addiu     $a1, $sp, 0x18
/* 102440 800E4350 080390DC */  j          .Lmenu_800E4370
/* 102444 800E4354 0040A821 */   addu      $s5, $v0, $zero
glabel Lmenu_800E4358
/* 102448 800E4358 8E820028 */  lw         $v0, 0x28($s4)
/* 10244C 800E435C 00002821 */  addu       $a1, $zero, $zero
/* 102450 800E4360 84440098 */  lh         $a0, 0x98($v0)
/* 102454 800E4364 8C42009C */  lw         $v0, 0x9C($v0)
/* 102458 800E4368 0040F809 */  jalr       $v0
/* 10245C 800E436C 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E4370:
/* 102460 800E4370 16A00011 */  bnez       $s5, .Lmenu_800E43B8
/* 102464 800E4374 02002021 */   addu      $a0, $s0, $zero
/* 102468 800E4378 02402021 */  addu       $a0, $s2, $zero
/* 10246C 800E437C 27A50018 */  addiu      $a1, $sp, 0x18
/* 102470 800E4380 0C000708 */  jal        func_80001C20
/* 102474 800E4384 24060008 */   addiu     $a2, $zero, 0x8
/* 102478 800E4388 A3A00028 */  sb         $zero, 0x28($sp)
/* 10247C 800E438C 02402021 */  addu       $a0, $s2, $zero
/* 102480 800E4390 3C05800D */  lui        $a1, %hi(D_menu_800CAE24)
/* 102484 800E4394 0C0006C8 */  jal        func_80001B20
/* 102488 800E4398 24A5AE24 */   addiu     $a1, $a1, %lo(D_menu_800CAE24)
/* 10248C 800E439C 3C04800D */  lui        $a0, %hi(D_menu_800CAD10)
/* 102490 800E43A0 2484AD10 */  addiu      $a0, $a0, %lo(D_menu_800CAD10)
/* 102494 800E43A4 00002821 */  addu       $a1, $zero, $zero
/* 102498 800E43A8 00A03021 */  addu       $a2, $a1, $zero
/* 10249C 800E43AC 0C011ACF */  jal        func_80046B3C
/* 1024A0 800E43B0 00A03821 */   addu      $a3, $a1, $zero
/* 1024A4 800E43B4 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800E43B8:
/* 1024A8 800E43B8 03C02821 */  addu       $a1, $fp, $zero
/* 1024AC 800E43BC 0C0384D5 */  jal        func_menu_800E1354
/* 1024B0 800E43C0 02A03021 */   addu      $a2, $s5, $zero
/* 1024B4 800E43C4 02802021 */  addu       $a0, $s4, $zero
/* 1024B8 800E43C8 0C0026F4 */  jal        func_80009BD0
/* 1024BC 800E43CC 24050006 */   addiu     $a1, $zero, 0x6
/* 1024C0 800E43D0 0803907B */  j          .Lmenu_800E41EC
/* 1024C4 800E43D4 2610000C */   addiu     $s0, $s0, 0xC
.Lmenu_800E43D8:
/* 1024C8 800E43D8 0C0026F4 */  jal        func_80009BD0
/* 1024CC 800E43DC 24050006 */   addiu     $a1, $zero, 0x6
/* 1024D0 800E43E0 8FBF0084 */  lw         $ra, 0x84($sp)
/* 1024D4 800E43E4 8FBE0080 */  lw         $fp, 0x80($sp)
/* 1024D8 800E43E8 8FB7007C */  lw         $s7, 0x7C($sp)
/* 1024DC 800E43EC 8FB60078 */  lw         $s6, 0x78($sp)
/* 1024E0 800E43F0 8FB50074 */  lw         $s5, 0x74($sp)
/* 1024E4 800E43F4 8FB40070 */  lw         $s4, 0x70($sp)
/* 1024E8 800E43F8 8FB3006C */  lw         $s3, 0x6C($sp)
/* 1024EC 800E43FC 8FB20068 */  lw         $s2, 0x68($sp)
/* 1024F0 800E4400 8FB10064 */  lw         $s1, 0x64($sp)
/* 1024F4 800E4404 8FB00060 */  lw         $s0, 0x60($sp)
/* 1024F8 800E4408 03E00008 */  jr         $ra
/* 1024FC 800E440C 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_menu_800E4410
/* 102500 800E4410 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 102504 800E4414 00C02821 */  addu       $a1, $a2, $zero
/* 102508 800E4418 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10250C 800E441C AFB00010 */  sw         $s0, 0x10($sp)
/* 102510 800E4420 8C82013C */  lw         $v0, 0x13C($a0)
/* 102514 800E4424 1040000B */  beqz       $v0, .Lmenu_800E4454
/* 102518 800E4428 2484013C */   addiu     $a0, $a0, 0x13C
/* 10251C 800E442C 0C016427 */  jal        func_8005909C
/* 102520 800E4430 00000000 */   nop
/* 102524 800E4434 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E4438:
/* 102528 800E4438 12000006 */  beqz       $s0, .Lmenu_800E4454
/* 10252C 800E443C 00000000 */   nop
/* 102530 800E4440 0C0384D8 */  jal        func_menu_800E1360
/* 102534 800E4444 02002021 */   addu      $a0, $s0, $zero
/* 102538 800E4448 8E100008 */  lw         $s0, 0x8($s0)
/* 10253C 800E444C 0803910E */  j          .Lmenu_800E4438
/* 102540 800E4450 00000000 */   nop
.Lmenu_800E4454:
/* 102544 800E4454 8FBF0014 */  lw         $ra, 0x14($sp)
/* 102548 800E4458 8FB00010 */  lw         $s0, 0x10($sp)
/* 10254C 800E445C 03E00008 */  jr         $ra
/* 102550 800E4460 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E4464
/* 102554 800E4464 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 102558 800E4468 00C02821 */  addu       $a1, $a2, $zero
/* 10255C 800E446C AFBF0014 */  sw         $ra, 0x14($sp)
/* 102560 800E4470 AFB00010 */  sw         $s0, 0x10($sp)
/* 102564 800E4474 8C820150 */  lw         $v0, 0x150($a0)
/* 102568 800E4478 1040000B */  beqz       $v0, .Lmenu_800E44A8
/* 10256C 800E447C 24840150 */   addiu     $a0, $a0, 0x150
/* 102570 800E4480 0C016427 */  jal        func_8005909C
/* 102574 800E4484 00000000 */   nop
/* 102578 800E4488 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E448C:
/* 10257C 800E448C 12000006 */  beqz       $s0, .Lmenu_800E44A8
/* 102580 800E4490 00000000 */   nop
/* 102584 800E4494 0C0384D8 */  jal        func_menu_800E1360
/* 102588 800E4498 02002021 */   addu      $a0, $s0, $zero
/* 10258C 800E449C 8E100008 */  lw         $s0, 0x8($s0)
/* 102590 800E44A0 08039123 */  j          .Lmenu_800E448C
/* 102594 800E44A4 00000000 */   nop
.Lmenu_800E44A8:
/* 102598 800E44A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10259C 800E44AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1025A0 800E44B0 03E00008 */  jr         $ra
/* 1025A4 800E44B4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E44B8
/* 1025A8 800E44B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1025AC 800E44BC 00C02821 */  addu       $a1, $a2, $zero
/* 1025B0 800E44C0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1025B4 800E44C4 00E08821 */  addu       $s1, $a3, $zero
/* 1025B8 800E44C8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1025BC 800E44CC AFB00010 */  sw         $s0, 0x10($sp)
/* 1025C0 800E44D0 8C820164 */  lw         $v0, 0x164($a0)
/* 1025C4 800E44D4 1040000B */  beqz       $v0, .Lmenu_800E4504
/* 1025C8 800E44D8 24840164 */   addiu     $a0, $a0, 0x164
/* 1025CC 800E44DC 0C016427 */  jal        func_8005909C
/* 1025D0 800E44E0 00000000 */   nop
/* 1025D4 800E44E4 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E44E8:
/* 1025D8 800E44E8 12000006 */  beqz       $s0, .Lmenu_800E4504
/* 1025DC 800E44EC 02002021 */   addu      $a0, $s0, $zero
/* 1025E0 800E44F0 0C0384EC */  jal        func_menu_800E13B0
/* 1025E4 800E44F4 02202821 */   addu      $a1, $s1, $zero
/* 1025E8 800E44F8 8E100008 */  lw         $s0, 0x8($s0)
/* 1025EC 800E44FC 0803913A */  j          .Lmenu_800E44E8
/* 1025F0 800E4500 00000000 */   nop
.Lmenu_800E4504:
/* 1025F4 800E4504 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1025F8 800E4508 8FB10014 */  lw         $s1, 0x14($sp)
/* 1025FC 800E450C 8FB00010 */  lw         $s0, 0x10($sp)
/* 102600 800E4510 03E00008 */  jr         $ra
/* 102604 800E4514 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E4518
/* 102608 800E4518 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10260C 800E451C 00C02821 */  addu       $a1, $a2, $zero
/* 102610 800E4520 AFB10014 */  sw         $s1, 0x14($sp)
/* 102614 800E4524 00E08821 */  addu       $s1, $a3, $zero
/* 102618 800E4528 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10261C 800E452C AFB00010 */  sw         $s0, 0x10($sp)
/* 102620 800E4530 8C820178 */  lw         $v0, 0x178($a0)
/* 102624 800E4534 1040000B */  beqz       $v0, .Lmenu_800E4564
/* 102628 800E4538 24840178 */   addiu     $a0, $a0, 0x178
/* 10262C 800E453C 0C016427 */  jal        func_8005909C
/* 102630 800E4540 00000000 */   nop
/* 102634 800E4544 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E4548:
/* 102638 800E4548 12000006 */  beqz       $s0, .Lmenu_800E4564
/* 10263C 800E454C 02002021 */   addu      $a0, $s0, $zero
/* 102640 800E4550 0C0384EC */  jal        func_menu_800E13B0
/* 102644 800E4554 02202821 */   addu      $a1, $s1, $zero
/* 102648 800E4558 8E100008 */  lw         $s0, 0x8($s0)
/* 10264C 800E455C 08039152 */  j          .Lmenu_800E4548
/* 102650 800E4560 00000000 */   nop
.Lmenu_800E4564:
/* 102654 800E4564 8FBF0018 */  lw         $ra, 0x18($sp)
/* 102658 800E4568 8FB10014 */  lw         $s1, 0x14($sp)
/* 10265C 800E456C 8FB00010 */  lw         $s0, 0x10($sp)
/* 102660 800E4570 03E00008 */  jr         $ra
/* 102664 800E4574 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E4578
/* 102668 800E4578 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10266C 800E457C 00C02821 */  addu       $a1, $a2, $zero
/* 102670 800E4580 AFB10014 */  sw         $s1, 0x14($sp)
/* 102674 800E4584 00E08821 */  addu       $s1, $a3, $zero
/* 102678 800E4588 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10267C 800E458C AFB00010 */  sw         $s0, 0x10($sp)
/* 102680 800E4590 8C82018C */  lw         $v0, 0x18C($a0)
/* 102684 800E4594 1040000B */  beqz       $v0, .Lmenu_800E45C4
/* 102688 800E4598 2484018C */   addiu     $a0, $a0, 0x18C
/* 10268C 800E459C 0C016427 */  jal        func_8005909C
/* 102690 800E45A0 00000000 */   nop
/* 102694 800E45A4 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E45A8:
/* 102698 800E45A8 12000006 */  beqz       $s0, .Lmenu_800E45C4
/* 10269C 800E45AC 02002021 */   addu      $a0, $s0, $zero
/* 1026A0 800E45B0 0C03850B */  jal        func_menu_800E142C
/* 1026A4 800E45B4 02202821 */   addu      $a1, $s1, $zero
/* 1026A8 800E45B8 8E100008 */  lw         $s0, 0x8($s0)
/* 1026AC 800E45BC 0803916A */  j          .Lmenu_800E45A8
/* 1026B0 800E45C0 00000000 */   nop
.Lmenu_800E45C4:
/* 1026B4 800E45C4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1026B8 800E45C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1026BC 800E45CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1026C0 800E45D0 03E00008 */  jr         $ra
/* 1026C4 800E45D4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E45D8
/* 1026C8 800E45D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1026CC 800E45DC 00C02821 */  addu       $a1, $a2, $zero
/* 1026D0 800E45E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1026D4 800E45E4 00E08821 */  addu       $s1, $a3, $zero
/* 1026D8 800E45E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1026DC 800E45EC AFB00010 */  sw         $s0, 0x10($sp)
/* 1026E0 800E45F0 8C8201A0 */  lw         $v0, 0x1A0($a0)
/* 1026E4 800E45F4 1040000B */  beqz       $v0, .Lmenu_800E4624
/* 1026E8 800E45F8 248401A0 */   addiu     $a0, $a0, 0x1A0
/* 1026EC 800E45FC 0C016427 */  jal        func_8005909C
/* 1026F0 800E4600 00000000 */   nop
/* 1026F4 800E4604 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E4608:
/* 1026F8 800E4608 12000006 */  beqz       $s0, .Lmenu_800E4624
/* 1026FC 800E460C 02002021 */   addu      $a0, $s0, $zero
/* 102700 800E4610 0C03850B */  jal        func_menu_800E142C
/* 102704 800E4614 02202821 */   addu      $a1, $s1, $zero
/* 102708 800E4618 8E100008 */  lw         $s0, 0x8($s0)
/* 10270C 800E461C 08039182 */  j          .Lmenu_800E4608
/* 102710 800E4620 00000000 */   nop
.Lmenu_800E4624:
/* 102714 800E4624 8FBF0018 */  lw         $ra, 0x18($sp)
/* 102718 800E4628 8FB10014 */  lw         $s1, 0x14($sp)
/* 10271C 800E462C 8FB00010 */  lw         $s0, 0x10($sp)
/* 102720 800E4630 03E00008 */  jr         $ra
/* 102724 800E4634 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E4638
/* 102728 800E4638 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10272C 800E463C 00C02821 */  addu       $a1, $a2, $zero
/* 102730 800E4640 AFB10014 */  sw         $s1, 0x14($sp)
/* 102734 800E4644 00E08821 */  addu       $s1, $a3, $zero
/* 102738 800E4648 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10273C 800E464C AFB00010 */  sw         $s0, 0x10($sp)
/* 102740 800E4650 8C8201B4 */  lw         $v0, 0x1B4($a0)
/* 102744 800E4654 1040000B */  beqz       $v0, .Lmenu_800E4684
/* 102748 800E4658 248401B4 */   addiu     $a0, $a0, 0x1B4
/* 10274C 800E465C 0C016427 */  jal        func_8005909C
/* 102750 800E4660 00000000 */   nop
/* 102754 800E4664 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E4668:
/* 102758 800E4668 12000006 */  beqz       $s0, .Lmenu_800E4684
/* 10275C 800E466C 02002021 */   addu      $a0, $s0, $zero
/* 102760 800E4670 0C03853F */  jal        func_menu_800E14FC
/* 102764 800E4674 02202821 */   addu      $a1, $s1, $zero
/* 102768 800E4678 8E100008 */  lw         $s0, 0x8($s0)
/* 10276C 800E467C 0803919A */  j          .Lmenu_800E4668
/* 102770 800E4680 00000000 */   nop
.Lmenu_800E4684:
/* 102774 800E4684 8FBF0018 */  lw         $ra, 0x18($sp)
/* 102778 800E4688 8FB10014 */  lw         $s1, 0x14($sp)
/* 10277C 800E468C 8FB00010 */  lw         $s0, 0x10($sp)
/* 102780 800E4690 03E00008 */  jr         $ra
/* 102784 800E4694 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E4698
/* 102788 800E4698 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10278C 800E469C 00C02821 */  addu       $a1, $a2, $zero
/* 102790 800E46A0 AFB10014 */  sw         $s1, 0x14($sp)
/* 102794 800E46A4 00E08821 */  addu       $s1, $a3, $zero
/* 102798 800E46A8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10279C 800E46AC AFB00010 */  sw         $s0, 0x10($sp)
/* 1027A0 800E46B0 8C8201C8 */  lw         $v0, 0x1C8($a0)
/* 1027A4 800E46B4 1040000B */  beqz       $v0, .Lmenu_800E46E4
/* 1027A8 800E46B8 248401C8 */   addiu     $a0, $a0, 0x1C8
/* 1027AC 800E46BC 0C016427 */  jal        func_8005909C
/* 1027B0 800E46C0 00000000 */   nop
/* 1027B4 800E46C4 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E46C8:
/* 1027B8 800E46C8 12000006 */  beqz       $s0, .Lmenu_800E46E4
/* 1027BC 800E46CC 02002021 */   addu      $a0, $s0, $zero
/* 1027C0 800E46D0 0C03853F */  jal        func_menu_800E14FC
/* 1027C4 800E46D4 02202821 */   addu      $a1, $s1, $zero
/* 1027C8 800E46D8 8E100008 */  lw         $s0, 0x8($s0)
/* 1027CC 800E46DC 080391B2 */  j          .Lmenu_800E46C8
/* 1027D0 800E46E0 00000000 */   nop
.Lmenu_800E46E4:
/* 1027D4 800E46E4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1027D8 800E46E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1027DC 800E46EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1027E0 800E46F0 03E00008 */  jr         $ra
/* 1027E4 800E46F4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E46F8
/* 1027E8 800E46F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1027EC 800E46FC 00C02821 */  addu       $a1, $a2, $zero
/* 1027F0 800E4700 AFB10014 */  sw         $s1, 0x14($sp)
/* 1027F4 800E4704 00E08821 */  addu       $s1, $a3, $zero
/* 1027F8 800E4708 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1027FC 800E470C AFB00010 */  sw         $s0, 0x10($sp)
/* 102800 800E4710 8C8201DC */  lw         $v0, 0x1DC($a0)
/* 102804 800E4714 1040000B */  beqz       $v0, .Lmenu_800E4744
/* 102808 800E4718 248401DC */   addiu     $a0, $a0, 0x1DC
/* 10280C 800E471C 0C016427 */  jal        func_8005909C
/* 102810 800E4720 00000000 */   nop
/* 102814 800E4724 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E4728:
/* 102818 800E4728 12000006 */  beqz       $s0, .Lmenu_800E4744
/* 10281C 800E472C 02002021 */   addu      $a0, $s0, $zero
/* 102820 800E4730 0C038569 */  jal        func_menu_800E15A4
/* 102824 800E4734 02202821 */   addu      $a1, $s1, $zero
/* 102828 800E4738 8E100008 */  lw         $s0, 0x8($s0)
/* 10282C 800E473C 080391CA */  j          .Lmenu_800E4728
/* 102830 800E4740 00000000 */   nop
.Lmenu_800E4744:
/* 102834 800E4744 8FBF0018 */  lw         $ra, 0x18($sp)
/* 102838 800E4748 8FB10014 */  lw         $s1, 0x14($sp)
/* 10283C 800E474C 8FB00010 */  lw         $s0, 0x10($sp)
/* 102840 800E4750 03E00008 */  jr         $ra
/* 102844 800E4754 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E4758
/* 102848 800E4758 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10284C 800E475C 00C02821 */  addu       $a1, $a2, $zero
/* 102850 800E4760 AFB10014 */  sw         $s1, 0x14($sp)
/* 102854 800E4764 00E08821 */  addu       $s1, $a3, $zero
/* 102858 800E4768 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10285C 800E476C AFB00010 */  sw         $s0, 0x10($sp)
/* 102860 800E4770 8C8201F0 */  lw         $v0, 0x1F0($a0)
/* 102864 800E4774 1040000B */  beqz       $v0, .Lmenu_800E47A4
/* 102868 800E4778 248401F0 */   addiu     $a0, $a0, 0x1F0
/* 10286C 800E477C 0C016427 */  jal        func_8005909C
/* 102870 800E4780 00000000 */   nop
/* 102874 800E4784 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E4788:
/* 102878 800E4788 12000006 */  beqz       $s0, .Lmenu_800E47A4
/* 10287C 800E478C 02002021 */   addu      $a0, $s0, $zero
/* 102880 800E4790 0C038569 */  jal        func_menu_800E15A4
/* 102884 800E4794 02202821 */   addu      $a1, $s1, $zero
/* 102888 800E4798 8E100008 */  lw         $s0, 0x8($s0)
/* 10288C 800E479C 080391E2 */  j          .Lmenu_800E4788
/* 102890 800E47A0 00000000 */   nop
.Lmenu_800E47A4:
/* 102894 800E47A4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 102898 800E47A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 10289C 800E47AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1028A0 800E47B0 03E00008 */  jr         $ra
/* 1028A4 800E47B4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E47B8
/* 1028A8 800E47B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1028AC 800E47BC 00C02821 */  addu       $a1, $a2, $zero
/* 1028B0 800E47C0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1028B4 800E47C4 00E08821 */  addu       $s1, $a3, $zero
/* 1028B8 800E47C8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1028BC 800E47CC AFB00010 */  sw         $s0, 0x10($sp)
/* 1028C0 800E47D0 8C820204 */  lw         $v0, 0x204($a0)
/* 1028C4 800E47D4 1040000B */  beqz       $v0, .Lmenu_800E4804
/* 1028C8 800E47D8 24840204 */   addiu     $a0, $a0, 0x204
/* 1028CC 800E47DC 0C016427 */  jal        func_8005909C
/* 1028D0 800E47E0 00000000 */   nop
/* 1028D4 800E47E4 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E47E8:
/* 1028D8 800E47E8 12000006 */  beqz       $s0, .Lmenu_800E4804
/* 1028DC 800E47EC 02002021 */   addu      $a0, $s0, $zero
/* 1028E0 800E47F0 0C038570 */  jal        func_menu_800E15C0
/* 1028E4 800E47F4 02202821 */   addu      $a1, $s1, $zero
/* 1028E8 800E47F8 8E100008 */  lw         $s0, 0x8($s0)
/* 1028EC 800E47FC 080391FA */  j          .Lmenu_800E47E8
/* 1028F0 800E4800 00000000 */   nop
.Lmenu_800E4804:
/* 1028F4 800E4804 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1028F8 800E4808 8FB10014 */  lw         $s1, 0x14($sp)
/* 1028FC 800E480C 8FB00010 */  lw         $s0, 0x10($sp)
/* 102900 800E4810 03E00008 */  jr         $ra
/* 102904 800E4814 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E4818
/* 102908 800E4818 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10290C 800E481C 00C02821 */  addu       $a1, $a2, $zero
/* 102910 800E4820 AFB10014 */  sw         $s1, 0x14($sp)
/* 102914 800E4824 00E08821 */  addu       $s1, $a3, $zero
/* 102918 800E4828 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10291C 800E482C AFB00010 */  sw         $s0, 0x10($sp)
/* 102920 800E4830 8C820218 */  lw         $v0, 0x218($a0)
/* 102924 800E4834 1040000B */  beqz       $v0, .Lmenu_800E4864
/* 102928 800E4838 24840218 */   addiu     $a0, $a0, 0x218
/* 10292C 800E483C 0C016427 */  jal        func_8005909C
/* 102930 800E4840 00000000 */   nop
/* 102934 800E4844 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800E4848:
/* 102938 800E4848 12000006 */  beqz       $s0, .Lmenu_800E4864
/* 10293C 800E484C 02002021 */   addu      $a0, $s0, $zero
/* 102940 800E4850 0C038570 */  jal        func_menu_800E15C0
/* 102944 800E4854 02202821 */   addu      $a1, $s1, $zero
/* 102948 800E4858 8E100008 */  lw         $s0, 0x8($s0)
/* 10294C 800E485C 08039212 */  j          .Lmenu_800E4848
/* 102950 800E4860 00000000 */   nop
.Lmenu_800E4864:
/* 102954 800E4864 8FBF0018 */  lw         $ra, 0x18($sp)
/* 102958 800E4868 8FB10014 */  lw         $s1, 0x14($sp)
/* 10295C 800E486C 8FB00010 */  lw         $s0, 0x10($sp)
/* 102960 800E4870 03E00008 */  jr         $ra
/* 102964 800E4874 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E4878
/* 102968 800E4878 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10296C 800E487C AFB20018 */  sw         $s2, 0x18($sp)
/* 102970 800E4880 00809021 */  addu       $s2, $a0, $zero
/* 102974 800E4884 AFBF0020 */  sw         $ra, 0x20($sp)
/* 102978 800E4888 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10297C 800E488C AFB10014 */  sw         $s1, 0x14($sp)
/* 102980 800E4890 AFB00010 */  sw         $s0, 0x10($sp)
/* 102984 800E4894 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 102988 800E4898 8E420004 */  lw         $v0, 0x4($s2)
/* 10298C 800E489C 10400064 */  beqz       $v0, .Lmenu_800E4A30
/* 102990 800E48A0 00A09821 */   addu      $s3, $a1, $zero
/* 102994 800E48A4 44930000 */  mtc1       $s3, $f0
/* 102998 800E48A8 46800020 */  cvt.s.w    $f0, $f0
/* 10299C 800E48AC 3C01800D */  lui        $at, %hi(D_menu_800CAF18)
/* 1029A0 800E48B0 C422AF18 */  lwc1       $f2, %lo(D_menu_800CAF18)($at)
/* 1029A4 800E48B4 8E4200B4 */  lw         $v0, 0xB4($s2)
/* 1029A8 800E48B8 46020502 */  mul.s      $f20, $f0, $f2
/* 1029AC 800E48BC 1040000B */  beqz       $v0, .Lmenu_800E48EC
/* 1029B0 800E48C0 00008021 */   addu      $s0, $zero, $zero
/* 1029B4 800E48C4 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E48C8:
/* 1029B8 800E48C8 26100001 */  addiu      $s0, $s0, 0x1
/* 1029BC 800E48CC 8E4400B8 */  lw         $a0, 0xB8($s2)
/* 1029C0 800E48D0 4405A000 */  mfc1       $a1, $f20
/* 1029C4 800E48D4 0C039D9E */  jal        func_menu_800E7678
/* 1029C8 800E48D8 00912021 */   addu      $a0, $a0, $s1
/* 1029CC 800E48DC 8E4200B4 */  lw         $v0, 0xB4($s2)
/* 1029D0 800E48E0 0202102B */  sltu       $v0, $s0, $v0
/* 1029D4 800E48E4 1440FFF8 */  bnez       $v0, .Lmenu_800E48C8
/* 1029D8 800E48E8 26310048 */   addiu     $s1, $s1, 0x48
.Lmenu_800E48EC:
/* 1029DC 800E48EC 8E4200C8 */  lw         $v0, 0xC8($s2)
/* 1029E0 800E48F0 1040000A */  beqz       $v0, .Lmenu_800E491C
/* 1029E4 800E48F4 00008021 */   addu      $s0, $zero, $zero
/* 1029E8 800E48F8 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E48FC:
/* 1029EC 800E48FC 8E4400CC */  lw         $a0, 0xCC($s2)
/* 1029F0 800E4900 26100001 */  addiu      $s0, $s0, 0x1
/* 1029F4 800E4904 0C039906 */  jal        func_menu_800E6418
/* 1029F8 800E4908 00912021 */   addu      $a0, $a0, $s1
/* 1029FC 800E490C 8E4200C8 */  lw         $v0, 0xC8($s2)
/* 102A00 800E4910 0202102B */  sltu       $v0, $s0, $v0
/* 102A04 800E4914 1440FFF9 */  bnez       $v0, .Lmenu_800E48FC
/* 102A08 800E4918 26310030 */   addiu     $s1, $s1, 0x30
.Lmenu_800E491C:
/* 102A0C 800E491C 8E4200DC */  lw         $v0, 0xDC($s2)
/* 102A10 800E4920 1040000A */  beqz       $v0, .Lmenu_800E494C
/* 102A14 800E4924 00008021 */   addu      $s0, $zero, $zero
/* 102A18 800E4928 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E492C:
/* 102A1C 800E492C 8E4400E0 */  lw         $a0, 0xE0($s2)
/* 102A20 800E4930 26100001 */  addiu      $s0, $s0, 0x1
/* 102A24 800E4934 0C039A8F */  jal        func_menu_800E6A3C
/* 102A28 800E4938 00912021 */   addu      $a0, $a0, $s1
/* 102A2C 800E493C 8E4200DC */  lw         $v0, 0xDC($s2)
/* 102A30 800E4940 0202102B */  sltu       $v0, $s0, $v0
/* 102A34 800E4944 1440FFF9 */  bnez       $v0, .Lmenu_800E492C
/* 102A38 800E4948 26310050 */   addiu     $s1, $s1, 0x50
.Lmenu_800E494C:
/* 102A3C 800E494C 8E420068 */  lw         $v0, 0x68($s2)
/* 102A40 800E4950 1040000B */  beqz       $v0, .Lmenu_800E4980
/* 102A44 800E4954 00008021 */   addu      $s0, $zero, $zero
/* 102A48 800E4958 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E495C:
/* 102A4C 800E495C 02602821 */  addu       $a1, $s3, $zero
/* 102A50 800E4960 8E44006C */  lw         $a0, 0x6C($s2)
/* 102A54 800E4964 26100001 */  addiu      $s0, $s0, 0x1
/* 102A58 800E4968 0C0108B9 */  jal        func_800422E4
/* 102A5C 800E496C 00912021 */   addu      $a0, $a0, $s1
/* 102A60 800E4970 8E420068 */  lw         $v0, 0x68($s2)
/* 102A64 800E4974 0202102B */  sltu       $v0, $s0, $v0
/* 102A68 800E4978 1440FFF8 */  bnez       $v0, .Lmenu_800E495C
/* 102A6C 800E497C 2631033C */   addiu     $s1, $s1, 0x33C
.Lmenu_800E4980:
/* 102A70 800E4980 8E420118 */  lw         $v0, 0x118($s2)
/* 102A74 800E4984 1040000B */  beqz       $v0, .Lmenu_800E49B4
/* 102A78 800E4988 00008021 */   addu      $s0, $zero, $zero
/* 102A7C 800E498C 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E4990:
/* 102A80 800E4990 26100001 */  addiu      $s0, $s0, 0x1
/* 102A84 800E4994 8E44011C */  lw         $a0, 0x11C($s2)
/* 102A88 800E4998 4405A000 */  mfc1       $a1, $f20
/* 102A8C 800E499C 0C0394D2 */  jal        func_menu_800E5348
/* 102A90 800E49A0 00912021 */   addu      $a0, $a0, $s1
/* 102A94 800E49A4 8E420118 */  lw         $v0, 0x118($s2)
/* 102A98 800E49A8 0202102B */  sltu       $v0, $s0, $v0
/* 102A9C 800E49AC 1440FFF8 */  bnez       $v0, .Lmenu_800E4990
/* 102AA0 800E49B0 26310070 */   addiu     $s1, $s1, 0x70
.Lmenu_800E49B4:
/* 102AA4 800E49B4 8E42012C */  lw         $v0, 0x12C($s2)
/* 102AA8 800E49B8 1040000B */  beqz       $v0, .Lmenu_800E49E8
/* 102AAC 800E49BC 00008021 */   addu      $s0, $zero, $zero
/* 102AB0 800E49C0 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E49C4:
/* 102AB4 800E49C4 26100001 */  addiu      $s0, $s0, 0x1
/* 102AB8 800E49C8 8E440130 */  lw         $a0, 0x130($s2)
/* 102ABC 800E49CC 4405A000 */  mfc1       $a1, $f20
/* 102AC0 800E49D0 0C0394D2 */  jal        func_menu_800E5348
/* 102AC4 800E49D4 00912021 */   addu      $a0, $a0, $s1
/* 102AC8 800E49D8 8E42012C */  lw         $v0, 0x12C($s2)
/* 102ACC 800E49DC 0202102B */  sltu       $v0, $s0, $v0
/* 102AD0 800E49E0 1440FFF8 */  bnez       $v0, .Lmenu_800E49C4
/* 102AD4 800E49E4 26310064 */   addiu     $s1, $s1, 0x64
.Lmenu_800E49E8:
/* 102AD8 800E49E8 8E4200F0 */  lw         $v0, 0xF0($s2)
/* 102ADC 800E49EC 1040000B */  beqz       $v0, .Lmenu_800E4A1C
/* 102AE0 800E49F0 00008021 */   addu      $s0, $zero, $zero
/* 102AE4 800E49F4 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E49F8:
/* 102AE8 800E49F8 02602821 */  addu       $a1, $s3, $zero
/* 102AEC 800E49FC 8E4400F4 */  lw         $a0, 0xF4($s2)
/* 102AF0 800E4A00 26100001 */  addiu      $s0, $s0, 0x1
/* 102AF4 800E4A04 0C0397EC */  jal        func_menu_800E5FB0
/* 102AF8 800E4A08 00912021 */   addu      $a0, $a0, $s1
/* 102AFC 800E4A0C 8E4200F0 */  lw         $v0, 0xF0($s2)
/* 102B00 800E4A10 0202102B */  sltu       $v0, $s0, $v0
/* 102B04 800E4A14 1440FFF8 */  bnez       $v0, .Lmenu_800E49F8
/* 102B08 800E4A18 26310050 */   addiu     $s1, $s1, 0x50
.Lmenu_800E4A1C:
/* 102B0C 800E4A1C 8E440064 */  lw         $a0, 0x64($s2)
/* 102B10 800E4A20 10800003 */  beqz       $a0, .Lmenu_800E4A30
/* 102B14 800E4A24 00000000 */   nop
/* 102B18 800E4A28 0C010479 */  jal        func_800411E4
/* 102B1C 800E4A2C 02602821 */   addu      $a1, $s3, $zero
.Lmenu_800E4A30:
/* 102B20 800E4A30 8FBF0020 */  lw         $ra, 0x20($sp)
/* 102B24 800E4A34 8FB3001C */  lw         $s3, 0x1C($sp)
/* 102B28 800E4A38 8FB20018 */  lw         $s2, 0x18($sp)
/* 102B2C 800E4A3C 8FB10014 */  lw         $s1, 0x14($sp)
/* 102B30 800E4A40 8FB00010 */  lw         $s0, 0x10($sp)
/* 102B34 800E4A44 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 102B38 800E4A48 03E00008 */  jr         $ra
/* 102B3C 800E4A4C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E4A50
/* 102B40 800E4A50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 102B44 800E4A54 AFB20018 */  sw         $s2, 0x18($sp)
/* 102B48 800E4A58 00809021 */  addu       $s2, $a0, $zero
/* 102B4C 800E4A5C AFBF0020 */  sw         $ra, 0x20($sp)
/* 102B50 800E4A60 AFB3001C */  sw         $s3, 0x1C($sp)
/* 102B54 800E4A64 AFB10014 */  sw         $s1, 0x14($sp)
/* 102B58 800E4A68 AFB00010 */  sw         $s0, 0x10($sp)
/* 102B5C 800E4A6C 8E420004 */  lw         $v0, 0x4($s2)
/* 102B60 800E4A70 10400010 */  beqz       $v0, .Lmenu_800E4AB4
/* 102B64 800E4A74 00A09821 */   addu      $s3, $a1, $zero
/* 102B68 800E4A78 8E650008 */  lw         $a1, 0x8($s3)
/* 102B6C 800E4A7C 0C0392B4 */  jal        func_menu_800E4AD0
/* 102B70 800E4A80 00008021 */   addu      $s0, $zero, $zero
/* 102B74 800E4A84 8E420068 */  lw         $v0, 0x68($s2)
/* 102B78 800E4A88 1040000A */  beqz       $v0, .Lmenu_800E4AB4
/* 102B7C 800E4A8C 02008821 */   addu      $s1, $s0, $zero
.Lmenu_800E4A90:
/* 102B80 800E4A90 02602821 */  addu       $a1, $s3, $zero
/* 102B84 800E4A94 8E44006C */  lw         $a0, 0x6C($s2)
/* 102B88 800E4A98 26100001 */  addiu      $s0, $s0, 0x1
/* 102B8C 800E4A9C 0C0108D9 */  jal        func_80042364
/* 102B90 800E4AA0 00912021 */   addu      $a0, $a0, $s1
/* 102B94 800E4AA4 8E420068 */  lw         $v0, 0x68($s2)
/* 102B98 800E4AA8 0202102B */  sltu       $v0, $s0, $v0
/* 102B9C 800E4AAC 1440FFF8 */  bnez       $v0, .Lmenu_800E4A90
/* 102BA0 800E4AB0 2631033C */   addiu     $s1, $s1, 0x33C
.Lmenu_800E4AB4:
/* 102BA4 800E4AB4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 102BA8 800E4AB8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 102BAC 800E4ABC 8FB20018 */  lw         $s2, 0x18($sp)
/* 102BB0 800E4AC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 102BB4 800E4AC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 102BB8 800E4AC8 03E00008 */  jr         $ra
/* 102BBC 800E4ACC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E4AD0
/* 102BC0 800E4AD0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 102BC4 800E4AD4 AFB10044 */  sw         $s1, 0x44($sp)
/* 102BC8 800E4AD8 00A08821 */  addu       $s1, $a1, $zero
/* 102BCC 800E4ADC AFBF004C */  sw         $ra, 0x4C($sp)
/* 102BD0 800E4AE0 AFB20048 */  sw         $s2, 0x48($sp)
/* 102BD4 800E4AE4 AFB00040 */  sw         $s0, 0x40($sp)
/* 102BD8 800E4AE8 8E230000 */  lw         $v1, 0x0($s1)
/* 102BDC 800E4AEC 00808021 */  addu       $s0, $a0, $zero
/* 102BE0 800E4AF0 8C62000C */  lw         $v0, 0xC($v1)
/* 102BE4 800E4AF4 27A50010 */  addiu      $a1, $sp, 0x10
/* 102BE8 800E4AF8 84440088 */  lh         $a0, 0x88($v0)
/* 102BEC 800E4AFC 8C42008C */  lw         $v0, 0x8C($v0)
/* 102BF0 800E4B00 0040F809 */  jalr       $v0
/* 102BF4 800E4B04 00642021 */   addu      $a0, $v1, $a0
/* 102BF8 800E4B08 8E230000 */  lw         $v1, 0x0($s1)
/* 102BFC 800E4B0C 8C62000C */  lw         $v0, 0xC($v1)
/* 102C00 800E4B10 27A50020 */  addiu      $a1, $sp, 0x20
/* 102C04 800E4B14 84440078 */  lh         $a0, 0x78($v0)
/* 102C08 800E4B18 8C42007C */  lw         $v0, 0x7C($v0)
/* 102C0C 800E4B1C 0040F809 */  jalr       $v0
/* 102C10 800E4B20 00642021 */   addu      $a0, $v1, $a0
/* 102C14 800E4B24 8E230000 */  lw         $v1, 0x0($s1)
/* 102C18 800E4B28 8C62000C */  lw         $v0, 0xC($v1)
/* 102C1C 800E4B2C 27A50030 */  addiu      $a1, $sp, 0x30
/* 102C20 800E4B30 84440070 */  lh         $a0, 0x70($v0)
/* 102C24 800E4B34 8C420074 */  lw         $v0, 0x74($v0)
/* 102C28 800E4B38 0040F809 */  jalr       $v0
/* 102C2C 800E4B3C 00642021 */   addu      $a0, $v1, $a0
/* 102C30 800E4B40 26120014 */  addiu      $s2, $s0, 0x14
/* 102C34 800E4B44 24110001 */  addiu      $s1, $zero, 0x1
/* 102C38 800E4B48 2602002C */  addiu      $v0, $s0, 0x2C
/* 102C3C 800E4B4C 26030038 */  addiu      $v1, $s0, 0x38
/* 102C40 800E4B50 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 102C44 800E4B54 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 102C48 800E4B58 46000007 */  neg.s      $f0, $f0
/* 102C4C 800E4B5C E7A00030 */  swc1       $f0, 0x30($sp)
/* 102C50 800E4B60 C7A00034 */  lwc1       $f0, 0x34($sp)
/* 102C54 800E4B64 46001087 */  neg.s      $f2, $f2
/* 102C58 800E4B68 E7A20038 */  swc1       $f2, 0x38($sp)
/* 102C5C 800E4B6C 46000007 */  neg.s      $f0, $f0
/* 102C60 800E4B70 E7A00034 */  swc1       $f0, 0x34($sp)
/* 102C64 800E4B74 8FA60010 */  lw         $a2, 0x10($sp)
/* 102C68 800E4B78 8FA70014 */  lw         $a3, 0x14($sp)
/* 102C6C 800E4B7C 8FA80018 */  lw         $t0, 0x18($sp)
/* 102C70 800E4B80 AE060014 */  sw         $a2, 0x14($s0)
/* 102C74 800E4B84 AE070018 */  sw         $a3, 0x18($s0)
/* 102C78 800E4B88 AE08001C */  sw         $t0, 0x1C($s0)
/* 102C7C 800E4B8C AE510044 */  sw         $s1, 0x44($s2)
/* 102C80 800E4B90 8FA60020 */  lw         $a2, 0x20($sp)
/* 102C84 800E4B94 8FA70024 */  lw         $a3, 0x24($sp)
/* 102C88 800E4B98 8FA80028 */  lw         $t0, 0x28($sp)
/* 102C8C 800E4B9C AE06002C */  sw         $a2, 0x2C($s0)
/* 102C90 800E4BA0 AE070030 */  sw         $a3, 0x30($s0)
/* 102C94 800E4BA4 AE080034 */  sw         $t0, 0x34($s0)
/* 102C98 800E4BA8 8FA60030 */  lw         $a2, 0x30($sp)
/* 102C9C 800E4BAC 8FA70034 */  lw         $a3, 0x34($sp)
/* 102CA0 800E4BB0 8FA80038 */  lw         $t0, 0x38($sp)
/* 102CA4 800E4BB4 AE060038 */  sw         $a2, 0x38($s0)
/* 102CA8 800E4BB8 AE07003C */  sw         $a3, 0x3C($s0)
/* 102CAC 800E4BBC AE080040 */  sw         $t0, 0x40($s0)
/* 102CB0 800E4BC0 C4640004 */  lwc1       $f4, 0x4($v1)
/* 102CB4 800E4BC4 C4400008 */  lwc1       $f0, 0x8($v0)
/* 102CB8 800E4BC8 46002102 */  mul.s      $f4, $f4, $f0
/* 102CBC 800E4BCC C4420004 */  lwc1       $f2, 0x4($v0)
/* 102CC0 800E4BD0 C4600008 */  lwc1       $f0, 0x8($v1)
/* 102CC4 800E4BD4 46020002 */  mul.s      $f0, $f0, $f2
/* 102CC8 800E4BD8 46002101 */  sub.s      $f4, $f4, $f0
/* 102CCC 800E4BDC C600002C */  lwc1       $f0, 0x2C($s0)
/* 102CD0 800E4BE0 E6040044 */  swc1       $f4, 0x44($s0)
/* 102CD4 800E4BE4 C4640008 */  lwc1       $f4, 0x8($v1)
/* 102CD8 800E4BE8 46002102 */  mul.s      $f4, $f4, $f0
/* 102CDC 800E4BEC C4420008 */  lwc1       $f2, 0x8($v0)
/* 102CE0 800E4BF0 C6000038 */  lwc1       $f0, 0x38($s0)
/* 102CE4 800E4BF4 46020002 */  mul.s      $f0, $f0, $f2
/* 102CE8 800E4BF8 46002101 */  sub.s      $f4, $f4, $f0
/* 102CEC 800E4BFC 26040044 */  addiu      $a0, $s0, 0x44
/* 102CF0 800E4C00 E4840004 */  swc1       $f4, 0x4($a0)
/* 102CF4 800E4C04 C6040038 */  lwc1       $f4, 0x38($s0)
/* 102CF8 800E4C08 C4400004 */  lwc1       $f0, 0x4($v0)
/* 102CFC 800E4C0C 46002102 */  mul.s      $f4, $f4, $f0
/* 102D00 800E4C10 C602002C */  lwc1       $f2, 0x2C($s0)
/* 102D04 800E4C14 C4600004 */  lwc1       $f0, 0x4($v1)
/* 102D08 800E4C18 46020002 */  mul.s      $f0, $f0, $f2
/* 102D0C 800E4C1C 46002101 */  sub.s      $f4, $f4, $f0
/* 102D10 800E4C20 00802821 */  addu       $a1, $a0, $zero
/* 102D14 800E4C24 0C000F26 */  jal        func_80003C98
/* 102D18 800E4C28 E4840008 */   swc1      $f4, 0x8($a0)
/* 102D1C 800E4C2C AE510044 */  sw         $s1, 0x44($s2)
/* 102D20 800E4C30 8FBF004C */  lw         $ra, 0x4C($sp)
/* 102D24 800E4C34 8FB20048 */  lw         $s2, 0x48($sp)
/* 102D28 800E4C38 8FB10044 */  lw         $s1, 0x44($sp)
/* 102D2C 800E4C3C 8FB00040 */  lw         $s0, 0x40($sp)
/* 102D30 800E4C40 03E00008 */  jr         $ra
/* 102D34 800E4C44 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800E4C48
/* 102D38 800E4C48 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 102D3C 800E4C4C AFB20018 */  sw         $s2, 0x18($sp)
/* 102D40 800E4C50 00809021 */  addu       $s2, $a0, $zero
/* 102D44 800E4C54 AFBF0020 */  sw         $ra, 0x20($sp)
/* 102D48 800E4C58 AFB3001C */  sw         $s3, 0x1C($sp)
/* 102D4C 800E4C5C AFB10014 */  sw         $s1, 0x14($sp)
/* 102D50 800E4C60 AFB00010 */  sw         $s0, 0x10($sp)
/* 102D54 800E4C64 8E420004 */  lw         $v0, 0x4($s2)
/* 102D58 800E4C68 1040000E */  beqz       $v0, .Lmenu_800E4CA4
/* 102D5C 800E4C6C 00A09821 */   addu      $s3, $a1, $zero
/* 102D60 800E4C70 8E420068 */  lw         $v0, 0x68($s2)
/* 102D64 800E4C74 1040000B */  beqz       $v0, .Lmenu_800E4CA4
/* 102D68 800E4C78 00008021 */   addu      $s0, $zero, $zero
/* 102D6C 800E4C7C 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E4C80:
/* 102D70 800E4C80 26100001 */  addiu      $s0, $s0, 0x1
/* 102D74 800E4C84 8E44006C */  lw         $a0, 0x6C($s2)
/* 102D78 800E4C88 02602821 */  addu       $a1, $s3, $zero
/* 102D7C 800E4C8C 0C0108F9 */  jal        func_800423E4
/* 102D80 800E4C90 00912021 */   addu      $a0, $a0, $s1
/* 102D84 800E4C94 8E420068 */  lw         $v0, 0x68($s2)
/* 102D88 800E4C98 0202102B */  sltu       $v0, $s0, $v0
/* 102D8C 800E4C9C 1440FFF8 */  bnez       $v0, .Lmenu_800E4C80
/* 102D90 800E4CA0 2631033C */   addiu     $s1, $s1, 0x33C
.Lmenu_800E4CA4:
/* 102D94 800E4CA4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 102D98 800E4CA8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 102D9C 800E4CAC 8FB20018 */  lw         $s2, 0x18($sp)
/* 102DA0 800E4CB0 8FB10014 */  lw         $s1, 0x14($sp)
/* 102DA4 800E4CB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 102DA8 800E4CB8 03E00008 */  jr         $ra
/* 102DAC 800E4CBC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E4CC0
/* 102DB0 800E4CC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 102DB4 800E4CC4 AFB20018 */  sw         $s2, 0x18($sp)
/* 102DB8 800E4CC8 00809021 */  addu       $s2, $a0, $zero
/* 102DBC 800E4CCC AFBF0020 */  sw         $ra, 0x20($sp)
/* 102DC0 800E4CD0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 102DC4 800E4CD4 AFB10014 */  sw         $s1, 0x14($sp)
/* 102DC8 800E4CD8 AFB00010 */  sw         $s0, 0x10($sp)
/* 102DCC 800E4CDC 8E420004 */  lw         $v0, 0x4($s2)
/* 102DD0 800E4CE0 1040002B */  beqz       $v0, .Lmenu_800E4D90
/* 102DD4 800E4CE4 00A09821 */   addu      $s3, $a1, $zero
/* 102DD8 800E4CE8 8E62012C */  lw         $v0, 0x12C($s3)
/* 102DDC 800E4CEC 00002821 */  addu       $a1, $zero, $zero
/* 102DE0 800E4CF0 844401D0 */  lh         $a0, 0x1D0($v0)
/* 102DE4 800E4CF4 8C4201D4 */  lw         $v0, 0x1D4($v0)
/* 102DE8 800E4CF8 0040F809 */  jalr       $v0
/* 102DEC 800E4CFC 02642021 */   addu      $a0, $s3, $a0
/* 102DF0 800E4D00 8E42012C */  lw         $v0, 0x12C($s2)
/* 102DF4 800E4D04 1040000B */  beqz       $v0, .Lmenu_800E4D34
/* 102DF8 800E4D08 00008021 */   addu      $s0, $zero, $zero
/* 102DFC 800E4D0C 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E4D10:
/* 102E00 800E4D10 02602821 */  addu       $a1, $s3, $zero
/* 102E04 800E4D14 8E440130 */  lw         $a0, 0x130($s2)
/* 102E08 800E4D18 26100001 */  addiu      $s0, $s0, 0x1
/* 102E0C 800E4D1C 0C0394EF */  jal        func_menu_800E53BC
/* 102E10 800E4D20 00912021 */   addu      $a0, $a0, $s1
/* 102E14 800E4D24 8E42012C */  lw         $v0, 0x12C($s2)
/* 102E18 800E4D28 0202102B */  sltu       $v0, $s0, $v0
/* 102E1C 800E4D2C 1440FFF8 */  bnez       $v0, .Lmenu_800E4D10
/* 102E20 800E4D30 26310064 */   addiu     $s1, $s1, 0x64
.Lmenu_800E4D34:
/* 102E24 800E4D34 8E420118 */  lw         $v0, 0x118($s2)
/* 102E28 800E4D38 1040000B */  beqz       $v0, .Lmenu_800E4D68
/* 102E2C 800E4D3C 00008021 */   addu      $s0, $zero, $zero
/* 102E30 800E4D40 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E4D44:
/* 102E34 800E4D44 02602821 */  addu       $a1, $s3, $zero
/* 102E38 800E4D48 8E44011C */  lw         $a0, 0x11C($s2)
/* 102E3C 800E4D4C 26100001 */  addiu      $s0, $s0, 0x1
/* 102E40 800E4D50 0C0394EF */  jal        func_menu_800E53BC
/* 102E44 800E4D54 00912021 */   addu      $a0, $a0, $s1
/* 102E48 800E4D58 8E420118 */  lw         $v0, 0x118($s2)
/* 102E4C 800E4D5C 0202102B */  sltu       $v0, $s0, $v0
/* 102E50 800E4D60 1440FFF8 */  bnez       $v0, .Lmenu_800E4D44
/* 102E54 800E4D64 26310070 */   addiu     $s1, $s1, 0x70
.Lmenu_800E4D68:
/* 102E58 800E4D68 8E440064 */  lw         $a0, 0x64($s2)
/* 102E5C 800E4D6C 10800003 */  beqz       $a0, .Lmenu_800E4D7C
/* 102E60 800E4D70 00000000 */   nop
/* 102E64 800E4D74 0C010499 */  jal        func_80041264
/* 102E68 800E4D78 02602821 */   addu      $a1, $s3, $zero
.Lmenu_800E4D7C:
/* 102E6C 800E4D7C 8E62012C */  lw         $v0, 0x12C($s3)
/* 102E70 800E4D80 844401C8 */  lh         $a0, 0x1C8($v0)
/* 102E74 800E4D84 8C4201CC */  lw         $v0, 0x1CC($v0)
/* 102E78 800E4D88 0040F809 */  jalr       $v0
/* 102E7C 800E4D8C 02642021 */   addu      $a0, $s3, $a0
.Lmenu_800E4D90:
/* 102E80 800E4D90 8FBF0020 */  lw         $ra, 0x20($sp)
/* 102E84 800E4D94 8FB3001C */  lw         $s3, 0x1C($sp)
/* 102E88 800E4D98 8FB20018 */  lw         $s2, 0x18($sp)
/* 102E8C 800E4D9C 8FB10014 */  lw         $s1, 0x14($sp)
/* 102E90 800E4DA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 102E94 800E4DA4 03E00008 */  jr         $ra
/* 102E98 800E4DA8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E4DAC
/* 102E9C 800E4DAC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 102EA0 800E4DB0 AFB20018 */  sw         $s2, 0x18($sp)
/* 102EA4 800E4DB4 00809021 */  addu       $s2, $a0, $zero
/* 102EA8 800E4DB8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 102EAC 800E4DBC AFB10014 */  sw         $s1, 0x14($sp)
/* 102EB0 800E4DC0 AFB00010 */  sw         $s0, 0x10($sp)
/* 102EB4 800E4DC4 8E4200B4 */  lw         $v0, 0xB4($s2)
/* 102EB8 800E4DC8 1040000E */  beqz       $v0, .Lmenu_800E4E04
/* 102EBC 800E4DCC 00008021 */   addu      $s0, $zero, $zero
/* 102EC0 800E4DD0 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E4DD4:
/* 102EC4 800E4DD4 8E4400B8 */  lw         $a0, 0xB8($s2)
/* 102EC8 800E4DD8 02242021 */  addu       $a0, $s1, $a0
/* 102ECC 800E4DDC 8C820010 */  lw         $v0, 0x10($a0)
/* 102ED0 800E4DE0 26100001 */  addiu      $s0, $s0, 0x1
/* 102ED4 800E4DE4 84430038 */  lh         $v1, 0x38($v0)
/* 102ED8 800E4DE8 8C42003C */  lw         $v0, 0x3C($v0)
/* 102EDC 800E4DEC 0040F809 */  jalr       $v0
/* 102EE0 800E4DF0 00832021 */   addu      $a0, $a0, $v1
/* 102EE4 800E4DF4 8E4200B4 */  lw         $v0, 0xB4($s2)
/* 102EE8 800E4DF8 0202102B */  sltu       $v0, $s0, $v0
/* 102EEC 800E4DFC 1440FFF5 */  bnez       $v0, .Lmenu_800E4DD4
/* 102EF0 800E4E00 26310048 */   addiu     $s1, $s1, 0x48
.Lmenu_800E4E04:
/* 102EF4 800E4E04 8E4200C8 */  lw         $v0, 0xC8($s2)
/* 102EF8 800E4E08 1040000E */  beqz       $v0, .Lmenu_800E4E44
/* 102EFC 800E4E0C 00008021 */   addu      $s0, $zero, $zero
/* 102F00 800E4E10 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E4E14:
/* 102F04 800E4E14 8E4400CC */  lw         $a0, 0xCC($s2)
/* 102F08 800E4E18 02242021 */  addu       $a0, $s1, $a0
/* 102F0C 800E4E1C 8C820010 */  lw         $v0, 0x10($a0)
/* 102F10 800E4E20 26100001 */  addiu      $s0, $s0, 0x1
/* 102F14 800E4E24 84430038 */  lh         $v1, 0x38($v0)
/* 102F18 800E4E28 8C42003C */  lw         $v0, 0x3C($v0)
/* 102F1C 800E4E2C 0040F809 */  jalr       $v0
/* 102F20 800E4E30 00832021 */   addu      $a0, $a0, $v1
/* 102F24 800E4E34 8E4200C8 */  lw         $v0, 0xC8($s2)
/* 102F28 800E4E38 0202102B */  sltu       $v0, $s0, $v0
/* 102F2C 800E4E3C 1440FFF5 */  bnez       $v0, .Lmenu_800E4E14
/* 102F30 800E4E40 26310030 */   addiu     $s1, $s1, 0x30
.Lmenu_800E4E44:
/* 102F34 800E4E44 8E4200DC */  lw         $v0, 0xDC($s2)
/* 102F38 800E4E48 1040000E */  beqz       $v0, .Lmenu_800E4E84
/* 102F3C 800E4E4C 00008021 */   addu      $s0, $zero, $zero
/* 102F40 800E4E50 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E4E54:
/* 102F44 800E4E54 8E4400E0 */  lw         $a0, 0xE0($s2)
/* 102F48 800E4E58 02242021 */  addu       $a0, $s1, $a0
/* 102F4C 800E4E5C 8C820010 */  lw         $v0, 0x10($a0)
/* 102F50 800E4E60 26100001 */  addiu      $s0, $s0, 0x1
/* 102F54 800E4E64 84430038 */  lh         $v1, 0x38($v0)
/* 102F58 800E4E68 8C42003C */  lw         $v0, 0x3C($v0)
/* 102F5C 800E4E6C 0040F809 */  jalr       $v0
/* 102F60 800E4E70 00832021 */   addu      $a0, $a0, $v1
/* 102F64 800E4E74 8E4200DC */  lw         $v0, 0xDC($s2)
/* 102F68 800E4E78 0202102B */  sltu       $v0, $s0, $v0
/* 102F6C 800E4E7C 1440FFF5 */  bnez       $v0, .Lmenu_800E4E54
/* 102F70 800E4E80 26310050 */   addiu     $s1, $s1, 0x50
.Lmenu_800E4E84:
/* 102F74 800E4E84 8E420118 */  lw         $v0, 0x118($s2)
/* 102F78 800E4E88 1040000E */  beqz       $v0, .Lmenu_800E4EC4
/* 102F7C 800E4E8C 00008021 */   addu      $s0, $zero, $zero
/* 102F80 800E4E90 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E4E94:
/* 102F84 800E4E94 8E44011C */  lw         $a0, 0x11C($s2)
/* 102F88 800E4E98 02242021 */  addu       $a0, $s1, $a0
/* 102F8C 800E4E9C 8C820010 */  lw         $v0, 0x10($a0)
/* 102F90 800E4EA0 26100001 */  addiu      $s0, $s0, 0x1
/* 102F94 800E4EA4 84430038 */  lh         $v1, 0x38($v0)
/* 102F98 800E4EA8 8C42003C */  lw         $v0, 0x3C($v0)
/* 102F9C 800E4EAC 0040F809 */  jalr       $v0
/* 102FA0 800E4EB0 00832021 */   addu      $a0, $a0, $v1
/* 102FA4 800E4EB4 8E420118 */  lw         $v0, 0x118($s2)
/* 102FA8 800E4EB8 0202102B */  sltu       $v0, $s0, $v0
/* 102FAC 800E4EBC 1440FFF5 */  bnez       $v0, .Lmenu_800E4E94
/* 102FB0 800E4EC0 26310070 */   addiu     $s1, $s1, 0x70
.Lmenu_800E4EC4:
/* 102FB4 800E4EC4 8E42012C */  lw         $v0, 0x12C($s2)
/* 102FB8 800E4EC8 1040000E */  beqz       $v0, .Lmenu_800E4F04
/* 102FBC 800E4ECC 00008021 */   addu      $s0, $zero, $zero
/* 102FC0 800E4ED0 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E4ED4:
/* 102FC4 800E4ED4 8E440130 */  lw         $a0, 0x130($s2)
/* 102FC8 800E4ED8 02242021 */  addu       $a0, $s1, $a0
/* 102FCC 800E4EDC 8C820010 */  lw         $v0, 0x10($a0)
/* 102FD0 800E4EE0 26100001 */  addiu      $s0, $s0, 0x1
/* 102FD4 800E4EE4 84430038 */  lh         $v1, 0x38($v0)
/* 102FD8 800E4EE8 8C42003C */  lw         $v0, 0x3C($v0)
/* 102FDC 800E4EEC 0040F809 */  jalr       $v0
/* 102FE0 800E4EF0 00832021 */   addu      $a0, $a0, $v1
/* 102FE4 800E4EF4 8E42012C */  lw         $v0, 0x12C($s2)
/* 102FE8 800E4EF8 0202102B */  sltu       $v0, $s0, $v0
/* 102FEC 800E4EFC 1440FFF5 */  bnez       $v0, .Lmenu_800E4ED4
/* 102FF0 800E4F00 26310064 */   addiu     $s1, $s1, 0x64
.Lmenu_800E4F04:
/* 102FF4 800E4F04 8FBF001C */  lw         $ra, 0x1C($sp)
/* 102FF8 800E4F08 8FB20018 */  lw         $s2, 0x18($sp)
/* 102FFC 800E4F0C 8FB10014 */  lw         $s1, 0x14($sp)
/* 103000 800E4F10 8FB00010 */  lw         $s0, 0x10($sp)
/* 103004 800E4F14 03E00008 */  jr         $ra
/* 103008 800E4F18 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E4F1C
/* 10300C 800E4F1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103010 800E4F20 AFBF0010 */  sw         $ra, 0x10($sp)
/* 103014 800E4F24 8C840010 */  lw         $a0, 0x10($a0)
/* 103018 800E4F28 0C03AB34 */  jal        func_menu_800EACD0
/* 10301C 800E4F2C 00000000 */   nop
/* 103020 800E4F30 8FBF0010 */  lw         $ra, 0x10($sp)
/* 103024 800E4F34 03E00008 */  jr         $ra
/* 103028 800E4F38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E4F3C
/* 10302C 800E4F3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103030 800E4F40 AFBF0010 */  sw         $ra, 0x10($sp)
/* 103034 800E4F44 8C840010 */  lw         $a0, 0x10($a0)
/* 103038 800E4F48 0C03AB55 */  jal        func_menu_800EAD54
/* 10303C 800E4F4C 00000000 */   nop
/* 103040 800E4F50 8FBF0010 */  lw         $ra, 0x10($sp)
/* 103044 800E4F54 03E00008 */  jr         $ra
/* 103048 800E4F58 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E4F5C
/* 10304C 800E4F5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103050 800E4F60 AFBF0010 */  sw         $ra, 0x10($sp)
/* 103054 800E4F64 8C840010 */  lw         $a0, 0x10($a0)
/* 103058 800E4F68 0C03AB76 */  jal        func_menu_800EADD8
/* 10305C 800E4F6C 00000000 */   nop
/* 103060 800E4F70 8FBF0010 */  lw         $ra, 0x10($sp)
/* 103064 800E4F74 03E00008 */  jr         $ra
/* 103068 800E4F78 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E4F7C
/* 10306C 800E4F7C 14A00005 */  bnez       $a1, .Lmenu_800E4F94
/* 103070 800E4F80 00051080 */   sll       $v0, $a1, 2
/* 103074 800E4F84 8C820224 */  lw         $v0, 0x224($a0)
/* 103078 800E4F88 14400006 */  bnez       $v0, .Lmenu_800E4FA4
/* 10307C 800E4F8C 00000000 */   nop
/* 103080 800E4F90 00051080 */  sll        $v0, $a1, 2
.Lmenu_800E4F94:
/* 103084 800E4F94 00451021 */  addu       $v0, $v0, $a1
/* 103088 800E4F98 8C83007C */  lw         $v1, 0x7C($a0)
/* 10308C 800E4F9C 00021080 */  sll        $v0, $v0, 2
/* 103090 800E4FA0 00621021 */  addu       $v0, $v1, $v0
.Lmenu_800E4FA4:
/* 103094 800E4FA4 03E00008 */  jr         $ra
/* 103098 800E4FA8 00000000 */   nop

glabel func_menu_800E4FAC
/* 10309C 800E4FAC 3C028012 */  lui        $v0, %hi(D_menu_801269F0)
/* 1030A0 800E4FB0 03E00008 */  jr         $ra
/* 1030A4 800E4FB4 AC4469F0 */   sw        $a0, %lo(D_menu_801269F0)($v0)

glabel func_menu_800E4FB8
/* 1030A8 800E4FB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1030AC 800E4FBC AFBF0010 */  sw         $ra, 0x10($sp)
/* 1030B0 800E4FC0 0C002513 */  jal        func_8000944C
/* 1030B4 800E4FC4 00000000 */   nop
/* 1030B8 800E4FC8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1030BC 800E4FCC 03E00008 */  jr         $ra
/* 1030C0 800E4FD0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E4FD4
/* 1030C4 800E4FD4 8C820118 */  lw         $v0, 0x118($a0)
/* 1030C8 800E4FD8 03E00008 */  jr         $ra
/* 1030CC 800E4FDC 00000000 */   nop

glabel func_menu_800E4FE0
/* 1030D0 800E4FE0 03E00008 */  jr         $ra
/* 1030D4 800E4FE4 AC850224 */   sw        $a1, 0x224($a0)

glabel func_menu_800E4FE8
/* 1030D8 800E4FE8 8C820224 */  lw         $v0, 0x224($a0)
/* 1030DC 800E4FEC 03E00008 */  jr         $ra
/* 1030E0 800E4FF0 00000000 */   nop

glabel func_menu_800E4FF4
/* 1030E4 800E4FF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1030E8 800E4FF8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1030EC 800E4FFC 0C016427 */  jal        func_8005909C
/* 1030F0 800E5000 2484010C */   addiu     $a0, $a0, 0x10C
/* 1030F4 800E5004 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1030F8 800E5008 03E00008 */  jr         $ra
/* 1030FC 800E500C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E5010
/* 103100 800E5010 00051040 */  sll        $v0, $a1, 1
/* 103104 800E5014 00451021 */  addu       $v0, $v0, $a1
/* 103108 800E5018 00021080 */  sll        $v0, $v0, 2
/* 10310C 800E501C 00451021 */  addu       $v0, $v0, $a1
/* 103110 800E5020 00021100 */  sll        $v0, $v0, 4
/* 103114 800E5024 00451023 */  subu       $v0, $v0, $a1
/* 103118 800E5028 8C83006C */  lw         $v1, 0x6C($a0)
/* 10311C 800E502C 00021080 */  sll        $v0, $v0, 2
/* 103120 800E5030 03E00008 */  jr         $ra
/* 103124 800E5034 00621021 */   addu      $v0, $v1, $v0

glabel func_menu_800E5038
/* 103128 800E5038 8C820068 */  lw         $v0, 0x68($a0)
/* 10312C 800E503C 03E00008 */  jr         $ra
/* 103130 800E5040 00000000 */   nop

glabel func_menu_800E5044
/* 103134 800E5044 8C820078 */  lw         $v0, 0x78($a0)
/* 103138 800E5048 03E00008 */  jr         $ra
/* 10313C 800E504C 00000000 */   nop

glabel func_menu_800E5050
/* 103140 800E5050 8C820088 */  lw         $v0, 0x88($a0)
/* 103144 800E5054 00052880 */  sll        $a1, $a1, 2
/* 103148 800E5058 00A22821 */  addu       $a1, $a1, $v0
/* 10314C 800E505C 8CA20000 */  lw         $v0, 0x0($a1)
/* 103150 800E5060 03E00008 */  jr         $ra
/* 103154 800E5064 00000000 */   nop

glabel func_menu_800E5068
/* 103158 800E5068 8C820084 */  lw         $v0, 0x84($a0)
/* 10315C 800E506C 03E00008 */  jr         $ra
/* 103160 800E5070 00000000 */   nop

glabel func_menu_800E5074
/* 103164 800E5074 8C820004 */  lw         $v0, 0x4($a0)
/* 103168 800E5078 03E00008 */  jr         $ra
/* 10316C 800E507C 0002102B */   sltu      $v0, $zero, $v0

glabel func_menu_800E5080
/* 103170 800E5080 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103174 800E5084 AFB00010 */  sw         $s0, 0x10($sp)
/* 103178 800E5088 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10317C 800E508C 0C038384 */  jal        func_menu_800E0E10
/* 103180 800E5090 00808021 */   addu      $s0, $a0, $zero
/* 103184 800E5094 3C02800D */  lui        $v0, %hi(D_menu_800CB0D0)
/* 103188 800E5098 2442B0D0 */  addiu      $v0, $v0, %lo(D_menu_800CB0D0)
/* 10318C 800E509C 02002021 */  addu       $a0, $s0, $zero
/* 103190 800E50A0 0C039441 */  jal        func_menu_800E5104
/* 103194 800E50A4 AE020010 */   sw        $v0, 0x10($s0)
/* 103198 800E50A8 02001021 */  addu       $v0, $s0, $zero
/* 10319C 800E50AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1031A0 800E50B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1031A4 800E50B4 03E00008 */  jr         $ra
/* 1031A8 800E50B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E50BC
/* 1031AC 800E50BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1031B0 800E50C0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1031B4 800E50C4 00808021 */  addu       $s0, $a0, $zero
/* 1031B8 800E50C8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1031BC 800E50CC 00A08821 */  addu       $s1, $a1, $zero
/* 1031C0 800E50D0 3C02800D */  lui        $v0, %hi(D_menu_800CB0D0)
/* 1031C4 800E50D4 2442B0D0 */  addiu      $v0, $v0, %lo(D_menu_800CB0D0)
/* 1031C8 800E50D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1031CC 800E50DC 0C0394B2 */  jal        func_menu_800E52C8
/* 1031D0 800E50E0 AE020010 */   sw        $v0, 0x10($s0)
/* 1031D4 800E50E4 02002021 */  addu       $a0, $s0, $zero
/* 1031D8 800E50E8 0C038391 */  jal        func_menu_800E0E44
/* 1031DC 800E50EC 02202821 */   addu      $a1, $s1, $zero
/* 1031E0 800E50F0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1031E4 800E50F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1031E8 800E50F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1031EC 800E50FC 03E00008 */  jr         $ra
/* 1031F0 800E5100 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E5104
/* 1031F4 800E5104 240200FF */  addiu      $v0, $zero, 0xFF
/* 1031F8 800E5108 AC800014 */  sw         $zero, 0x14($a0)
/* 1031FC 800E510C AC800018 */  sw         $zero, 0x18($a0)
/* 103200 800E5110 AC80001C */  sw         $zero, 0x1C($a0)
/* 103204 800E5114 AC800020 */  sw         $zero, 0x20($a0)
/* 103208 800E5118 AC800024 */  sw         $zero, 0x24($a0)
/* 10320C 800E511C AC800028 */  sw         $zero, 0x28($a0)
/* 103210 800E5120 AC80002C */  sw         $zero, 0x2C($a0)
/* 103214 800E5124 AC800030 */  sw         $zero, 0x30($a0)
/* 103218 800E5128 AC800034 */  sw         $zero, 0x34($a0)
/* 10321C 800E512C AC800038 */  sw         $zero, 0x38($a0)
/* 103220 800E5130 AC80003C */  sw         $zero, 0x3C($a0)
/* 103224 800E5134 AC800040 */  sw         $zero, 0x40($a0)
/* 103228 800E5138 A0800054 */  sb         $zero, 0x54($a0)
/* 10322C 800E513C A0800055 */  sb         $zero, 0x55($a0)
/* 103230 800E5140 A0800056 */  sb         $zero, 0x56($a0)
/* 103234 800E5144 A0820057 */  sb         $v0, 0x57($a0)
/* 103238 800E5148 03E00008 */  jr         $ra
/* 10323C 800E514C AC800044 */   sw        $zero, 0x44($a0)

glabel func_menu_800E5150
/* 103240 800E5150 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 103244 800E5154 AFB10014 */  sw         $s1, 0x14($sp)
/* 103248 800E5158 00808821 */  addu       $s1, $a0, $zero
/* 10324C 800E515C AFB00010 */  sw         $s0, 0x10($sp)
/* 103250 800E5160 00A08021 */  addu       $s0, $a1, $zero
/* 103254 800E5164 24C3FFBD */  addiu      $v1, $a2, -0x43
/* 103258 800E5168 2C620024 */  sltiu      $v0, $v1, 0x24
/* 10325C 800E516C 1040004B */  beqz       $v0, Lmenu_800E529C
/* 103260 800E5170 AFBF0018 */   sw        $ra, 0x18($sp)
/* 103264 800E5174 3C02800D */  lui        $v0, %hi(jtbl_menu_800CB040)
/* 103268 800E5178 2442B040 */  addiu      $v0, $v0, %lo(jtbl_menu_800CB040)
/* 10326C 800E517C 00031880 */  sll        $v1, $v1, 2
/* 103270 800E5180 00621821 */  addu       $v1, $v1, $v0
/* 103274 800E5184 8C620000 */  lw         $v0, 0x0($v1)
/* 103278 800E5188 00400008 */  jr         $v0
/* 10327C 800E518C 00000000 */   nop
glabel Lmenu_800E5190
/* 103280 800E5190 0C0025F8 */  jal        func_800097E0
/* 103284 800E5194 02002021 */   addu      $a0, $s0, $zero
/* 103288 800E5198 8E220044 */  lw         $v0, 0x44($s1)
/* 10328C 800E519C 2403FFFE */  addiu      $v1, $zero, -0x2
/* 103290 800E51A0 E6200014 */  swc1       $f0, 0x14($s1)
/* 103294 800E51A4 08039479 */  j          .Lmenu_800E51E4
/* 103298 800E51A8 34420004 */   ori       $v0, $v0, 0x4
glabel Lmenu_800E51AC
/* 10329C 800E51AC 0C0025F8 */  jal        func_800097E0
/* 1032A0 800E51B0 02002021 */   addu      $a0, $s0, $zero
/* 1032A4 800E51B4 8E220044 */  lw         $v0, 0x44($s1)
/* 1032A8 800E51B8 2403FFFD */  addiu      $v1, $zero, -0x3
/* 1032AC 800E51BC E6200018 */  swc1       $f0, 0x18($s1)
/* 1032B0 800E51C0 08039479 */  j          .Lmenu_800E51E4
/* 1032B4 800E51C4 34420008 */   ori       $v0, $v0, 0x8
glabel Lmenu_800E51C8
/* 1032B8 800E51C8 8E220044 */  lw         $v0, 0x44($s1)
/* 1032BC 800E51CC 2403FFFB */  addiu      $v1, $zero, -0x5
/* 1032C0 800E51D0 08039479 */  j          .Lmenu_800E51E4
/* 1032C4 800E51D4 34420001 */   ori       $v0, $v0, 0x1
glabel Lmenu_800E51D8
/* 1032C8 800E51D8 8E220044 */  lw         $v0, 0x44($s1)
/* 1032CC 800E51DC 2403FFF7 */  addiu      $v1, $zero, -0x9
/* 1032D0 800E51E0 34420002 */  ori        $v0, $v0, 0x2
.Lmenu_800E51E4:
/* 1032D4 800E51E4 00431024 */  and        $v0, $v0, $v1
/* 1032D8 800E51E8 080394AD */  j          .Lmenu_800E52B4
/* 1032DC 800E51EC AE220044 */   sw        $v0, 0x44($s1)
glabel Lmenu_800E51F0
/* 1032E0 800E51F0 0C0025F8 */  jal        func_800097E0
/* 1032E4 800E51F4 02002021 */   addu      $a0, $s0, $zero
/* 1032E8 800E51F8 8E220044 */  lw         $v0, 0x44($s1)
/* 1032EC 800E51FC E6200024 */  swc1       $f0, 0x24($s1)
/* 1032F0 800E5200 34420010 */  ori        $v0, $v0, 0x10
/* 1032F4 800E5204 080394AD */  j          .Lmenu_800E52B4
/* 1032F8 800E5208 AE220044 */   sw        $v0, 0x44($s1)
glabel Lmenu_800E520C
/* 1032FC 800E520C 0C0025F8 */  jal        func_800097E0
/* 103300 800E5210 02002021 */   addu      $a0, $s0, $zero
/* 103304 800E5214 8E220044 */  lw         $v0, 0x44($s1)
/* 103308 800E5218 E6200028 */  swc1       $f0, 0x28($s1)
/* 10330C 800E521C 34420020 */  ori        $v0, $v0, 0x20
/* 103310 800E5220 080394AD */  j          .Lmenu_800E52B4
/* 103314 800E5224 AE220044 */   sw        $v0, 0x44($s1)
glabel Lmenu_800E5228
/* 103318 800E5228 0C0025F8 */  jal        func_800097E0
/* 10331C 800E522C 02002021 */   addu      $a0, $s0, $zero
/* 103320 800E5230 080394AD */  j          .Lmenu_800E52B4
/* 103324 800E5234 E6200034 */   swc1      $f0, 0x34($s1)
glabel Lmenu_800E5238
/* 103328 800E5238 0C0025F8 */  jal        func_800097E0
/* 10332C 800E523C 02002021 */   addu      $a0, $s0, $zero
/* 103330 800E5240 080394AD */  j          .Lmenu_800E52B4
/* 103334 800E5244 E6200038 */   swc1      $f0, 0x38($s1)
glabel Lmenu_800E5248
/* 103338 800E5248 0C0025F8 */  jal        func_800097E0
/* 10333C 800E524C 02002021 */   addu      $a0, $s0, $zero
/* 103340 800E5250 080394AD */  j          .Lmenu_800E52B4
/* 103344 800E5254 E620003C */   swc1      $f0, 0x3C($s1)
glabel Lmenu_800E5258
/* 103348 800E5258 0C0025F8 */  jal        func_800097E0
/* 10334C 800E525C 02002021 */   addu      $a0, $s0, $zero
/* 103350 800E5260 080394AD */  j          .Lmenu_800E52B4
/* 103354 800E5264 E6200040 */   swc1      $f0, 0x40($s1)
glabel Lmenu_800E5268
/* 103358 800E5268 0C002680 */  jal        func_80009A00
/* 10335C 800E526C 02002021 */   addu      $a0, $s0, $zero
/* 103360 800E5270 02002021 */  addu       $a0, $s0, $zero
/* 103364 800E5274 0C002680 */  jal        func_80009A00
/* 103368 800E5278 A2220054 */   sb        $v0, 0x54($s1)
/* 10336C 800E527C 02002021 */  addu       $a0, $s0, $zero
/* 103370 800E5280 0C002680 */  jal        func_80009A00
/* 103374 800E5284 A2220055 */   sb        $v0, 0x55($s1)
/* 103378 800E5288 8E230044 */  lw         $v1, 0x44($s1)
/* 10337C 800E528C A2220056 */  sb         $v0, 0x56($s1)
/* 103380 800E5290 34630100 */  ori        $v1, $v1, 0x100
/* 103384 800E5294 080394AD */  j          .Lmenu_800E52B4
/* 103388 800E5298 AE230044 */   sw        $v1, 0x44($s1)
glabel Lmenu_800E529C
/* 10338C 800E529C 8E020028 */  lw         $v0, 0x28($s0)
/* 103390 800E52A0 00002821 */  addu       $a1, $zero, $zero
/* 103394 800E52A4 84440098 */  lh         $a0, 0x98($v0)
/* 103398 800E52A8 8C42009C */  lw         $v0, 0x9C($v0)
/* 10339C 800E52AC 0040F809 */  jalr       $v0
/* 1033A0 800E52B0 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800E52B4:
/* 1033A4 800E52B4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1033A8 800E52B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1033AC 800E52BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1033B0 800E52C0 03E00008 */  jr         $ra
/* 1033B4 800E52C4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E52C8
/* 1033B8 800E52C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1033BC 800E52CC AFBF0010 */  sw         $ra, 0x10($sp)
/* 1033C0 800E52D0 0C039441 */  jal        func_menu_800E5104
/* 1033C4 800E52D4 00000000 */   nop
/* 1033C8 800E52D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1033CC 800E52DC 03E00008 */  jr         $ra
/* 1033D0 800E52E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E52E4
/* 1033D4 800E52E4 8C820044 */  lw         $v0, 0x44($a0)
/* 1033D8 800E52E8 30420040 */  andi       $v0, $v0, 0x40
/* 1033DC 800E52EC 1440000F */  bnez       $v0, .Lmenu_800E532C
/* 1033E0 800E52F0 00000000 */   nop
/* 1033E4 800E52F4 8C82000C */  lw         $v0, 0xC($a0)
/* 1033E8 800E52F8 1440000C */  bnez       $v0, .Lmenu_800E532C
/* 1033EC 800E52FC 00000000 */   nop
/* 1033F0 800E5300 8C830014 */  lw         $v1, 0x14($a0)
/* 1033F4 800E5304 8C850018 */  lw         $a1, 0x18($a0)
/* 1033F8 800E5308 AC83001C */  sw         $v1, 0x1C($a0)
/* 1033FC 800E530C AC850020 */  sw         $a1, 0x20($a0)
/* 103400 800E5310 8C830024 */  lw         $v1, 0x24($a0)
/* 103404 800E5314 8C850028 */  lw         $a1, 0x28($a0)
/* 103408 800E5318 AC83002C */  sw         $v1, 0x2C($a0)
/* 10340C 800E531C AC850030 */  sw         $a1, 0x30($a0)
/* 103410 800E5320 8C820044 */  lw         $v0, 0x44($a0)
/* 103414 800E5324 344200C0 */  ori        $v0, $v0, 0xC0
/* 103418 800E5328 AC820044 */  sw         $v0, 0x44($a0)
.Lmenu_800E532C:
/* 10341C 800E532C 03E00008 */  jr         $ra
/* 103420 800E5330 00000000 */   nop

glabel func_menu_800E5334
/* 103424 800E5334 8C820044 */  lw         $v0, 0x44($a0)
/* 103428 800E5338 2403FFBF */  addiu      $v1, $zero, -0x41
/* 10342C 800E533C 00431024 */  and        $v0, $v0, $v1
/* 103430 800E5340 03E00008 */  jr         $ra
/* 103434 800E5344 AC820044 */   sw        $v0, 0x44($a0)

glabel func_menu_800E5348
/* 103438 800E5348 8C830044 */  lw         $v1, 0x44($a0)
/* 10343C 800E534C 44852000 */  mtc1       $a1, $f4
/* 103440 800E5350 30620040 */  andi       $v0, $v1, 0x40
/* 103444 800E5354 10400017 */  beqz       $v0, .Lmenu_800E53B4
/* 103448 800E5358 30620080 */   andi      $v0, $v1, 0x80
/* 10344C 800E535C 14400015 */  bnez       $v0, .Lmenu_800E53B4
/* 103450 800E5360 00000000 */   nop
/* 103454 800E5364 C4800034 */  lwc1       $f0, 0x34($a0)
/* 103458 800E5368 46040002 */  mul.s      $f0, $f0, $f4
/* 10345C 800E536C C4820038 */  lwc1       $f2, 0x38($a0)
/* 103460 800E5370 46041082 */  mul.s      $f2, $f2, $f4
/* 103464 800E5374 C488003C */  lwc1       $f8, 0x3C($a0)
/* 103468 800E5378 46044202 */  mul.s      $f8, $f8, $f4
/* 10346C 800E537C C48A0040 */  lwc1       $f10, 0x40($a0)
/* 103470 800E5380 46045282 */  mul.s      $f10, $f10, $f4
/* 103474 800E5384 C484001C */  lwc1       $f4, 0x1C($a0)
/* 103478 800E5388 46002100 */  add.s      $f4, $f4, $f0
/* 10347C 800E538C C4860020 */  lwc1       $f6, 0x20($a0)
/* 103480 800E5390 46023180 */  add.s      $f6, $f6, $f2
/* 103484 800E5394 C480002C */  lwc1       $f0, 0x2C($a0)
/* 103488 800E5398 46080000 */  add.s      $f0, $f0, $f8
/* 10348C 800E539C C4820030 */  lwc1       $f2, 0x30($a0)
/* 103490 800E53A0 460A1080 */  add.s      $f2, $f2, $f10
/* 103494 800E53A4 E484001C */  swc1       $f4, 0x1C($a0)
/* 103498 800E53A8 E4860020 */  swc1       $f6, 0x20($a0)
/* 10349C 800E53AC E480002C */  swc1       $f0, 0x2C($a0)
/* 1034A0 800E53B0 E4820030 */  swc1       $f2, 0x30($a0)
.Lmenu_800E53B4:
/* 1034A4 800E53B4 03E00008 */  jr         $ra
/* 1034A8 800E53B8 00000000 */   nop

glabel func_menu_800E53BC
/* 1034AC 800E53BC 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1034B0 800E53C0 AFB20030 */  sw         $s2, 0x30($sp)
/* 1034B4 800E53C4 00809021 */  addu       $s2, $a0, $zero
/* 1034B8 800E53C8 AFBF0048 */  sw         $ra, 0x48($sp)
/* 1034BC 800E53CC AFB70044 */  sw         $s7, 0x44($sp)
/* 1034C0 800E53D0 AFB60040 */  sw         $s6, 0x40($sp)
/* 1034C4 800E53D4 AFB5003C */  sw         $s5, 0x3C($sp)
/* 1034C8 800E53D8 AFB40038 */  sw         $s4, 0x38($sp)
/* 1034CC 800E53DC AFB30034 */  sw         $s3, 0x34($sp)
/* 1034D0 800E53E0 AFB1002C */  sw         $s1, 0x2C($sp)
/* 1034D4 800E53E4 AFB00028 */  sw         $s0, 0x28($sp)
/* 1034D8 800E53E8 F7B60058 */  sdc1       $f22, 0x58($sp)
/* 1034DC 800E53EC F7B40050 */  sdc1       $f20, 0x50($sp)
/* 1034E0 800E53F0 8E420044 */  lw         $v0, 0x44($s2)
/* 1034E4 800E53F4 30420040 */  andi       $v0, $v0, 0x40
/* 1034E8 800E53F8 1040005B */  beqz       $v0, .Lmenu_800E5568
/* 1034EC 800E53FC 00A0A821 */   addu      $s5, $a1, $zero
/* 1034F0 800E5400 8EA2012C */  lw         $v0, 0x12C($s5)
/* 1034F4 800E5404 84440030 */  lh         $a0, 0x30($v0)
/* 1034F8 800E5408 8C420034 */  lw         $v0, 0x34($v0)
/* 1034FC 800E540C 0040F809 */  jalr       $v0
/* 103500 800E5410 02A42021 */   addu      $a0, $s5, $a0
/* 103504 800E5414 8EA3012C */  lw         $v1, 0x12C($s5)
/* 103508 800E5418 94500026 */  lhu        $s0, 0x26($v0)
/* 10350C 800E541C 84640030 */  lh         $a0, 0x30($v1)
/* 103510 800E5420 8C630034 */  lw         $v1, 0x34($v1)
/* 103514 800E5424 0060F809 */  jalr       $v1
/* 103518 800E5428 02A42021 */   addu      $a0, $s5, $a0
/* 10351C 800E542C 0200B021 */  addu       $s6, $s0, $zero
/* 103520 800E5430 94420028 */  lhu        $v0, 0x28($v0)
/* 103524 800E5434 4496A000 */  mtc1       $s6, $f20
/* 103528 800E5438 4680A520 */  cvt.s.w    $f20, $f20
/* 10352C 800E543C 0040B821 */  addu       $s7, $v0, $zero
/* 103530 800E5440 8E420044 */  lw         $v0, 0x44($s2)
/* 103534 800E5444 4497B000 */  mtc1       $s7, $f22
/* 103538 800E5448 4680B5A0 */  cvt.s.w    $f22, $f22
/* 10353C 800E544C 30420080 */  andi       $v0, $v0, 0x80
/* 103540 800E5450 10400005 */  beqz       $v0, .Lmenu_800E5468
/* 103544 800E5454 02402021 */   addu      $a0, $s2, $zero
/* 103548 800E5458 4406A000 */  mfc1       $a2, $f20
/* 10354C 800E545C 4407B000 */  mfc1       $a3, $f22
/* 103550 800E5460 0C039567 */  jal        func_menu_800E559C
/* 103554 800E5464 02A02821 */   addu      $a1, $s5, $zero
.Lmenu_800E5468:
/* 103558 800E5468 C644001C */  lwc1       $f4, 0x1C($s2)
/* 10355C 800E546C 44800000 */  mtc1       $zero, $f0
/* 103560 800E5470 4600203C */  c.lt.s     $f4, $f0
/* 103564 800E5474 00000000 */  nop
/* 103568 800E5478 4501003B */  bc1t       .Lmenu_800E5568
/* 10356C 800E547C 00000000 */   nop
/* 103570 800E5480 C6460020 */  lwc1       $f6, 0x20($s2)
/* 103574 800E5484 4600303C */  c.lt.s     $f6, $f0
/* 103578 800E5488 00000000 */  nop
/* 10357C 800E548C 45010036 */  bc1t       .Lmenu_800E5568
/* 103580 800E5490 00000000 */   nop
/* 103584 800E5494 46142102 */  mul.s      $f4, $f4, $f20
/* 103588 800E5498 00000000 */  nop
/* 10358C 800E549C 46163182 */  mul.s      $f6, $f6, $f22
/* 103590 800E54A0 C642002C */  lwc1       $f2, 0x2C($s2)
/* 103594 800E54A4 46141082 */  mul.s      $f2, $f2, $f20
/* 103598 800E54A8 C6400030 */  lwc1       $f0, 0x30($s2)
/* 10359C 800E54AC 46160002 */  mul.s      $f0, $f0, $f22
/* 1035A0 800E54B0 4600220D */  trunc.w.s  $f8, $f4
/* 1035A4 800E54B4 44134000 */  mfc1       $s3, $f8
/* 1035A8 800E54B8 4600320D */  trunc.w.s  $f8, $f6
/* 1035AC 800E54BC 44144000 */  mfc1       $s4, $f8
/* 1035B0 800E54C0 4600120D */  trunc.w.s  $f8, $f2
/* 1035B4 800E54C4 44104000 */  mfc1       $s0, $f8
/* 1035B8 800E54C8 4600020D */  trunc.w.s  $f8, $f0
/* 1035BC 800E54CC 44114000 */  mfc1       $s1, $f8
/* 1035C0 800E54D0 12000025 */  beqz       $s0, .Lmenu_800E5568
/* 1035C4 800E54D4 00000000 */   nop
/* 1035C8 800E54D8 12200023 */  beqz       $s1, .Lmenu_800E5568
/* 1035CC 800E54DC 02701021 */   addu      $v0, $s3, $s0
/* 1035D0 800E54E0 02C2102B */  sltu       $v0, $s6, $v0
/* 1035D4 800E54E4 14400020 */  bnez       $v0, .Lmenu_800E5568
/* 1035D8 800E54E8 02911021 */   addu      $v0, $s4, $s1
/* 1035DC 800E54EC 02E2102B */  sltu       $v0, $s7, $v0
/* 1035E0 800E54F0 1440001D */  bnez       $v0, .Lmenu_800E5568
/* 1035E4 800E54F4 27A50020 */   addiu     $a1, $sp, 0x20
/* 1035E8 800E54F8 8E420010 */  lw         $v0, 0x10($s2)
/* 1035EC 800E54FC 27A60024 */  addiu      $a2, $sp, 0x24
/* 1035F0 800E5500 84440040 */  lh         $a0, 0x40($v0)
/* 1035F4 800E5504 8C420044 */  lw         $v0, 0x44($v0)
/* 1035F8 800E5508 0040F809 */  jalr       $v0
/* 1035FC 800E550C 02442021 */   addu      $a0, $s2, $a0
/* 103600 800E5510 02A02821 */  addu       $a1, $s5, $zero
/* 103604 800E5514 02603021 */  addu       $a2, $s3, $zero
/* 103608 800E5518 02803821 */  addu       $a3, $s4, $zero
/* 10360C 800E551C C7A20020 */  lwc1       $f2, 0x20($sp)
/* 103610 800E5520 468010A0 */  cvt.s.w    $f2, $f2
/* 103614 800E5524 C7A40024 */  lwc1       $f4, 0x24($sp)
/* 103618 800E5528 46802120 */  cvt.s.w    $f4, $f4
/* 10361C 800E552C 8E420010 */  lw         $v0, 0x10($s2)
/* 103620 800E5530 44900000 */  mtc1       $s0, $f0
/* 103624 800E5534 46800020 */  cvt.s.w    $f0, $f0
/* 103628 800E5538 84440048 */  lh         $a0, 0x48($v0)
/* 10362C 800E553C 46020003 */  div.s      $f0, $f0, $f2
/* 103630 800E5540 E7A00018 */  swc1       $f0, 0x18($sp)
/* 103634 800E5544 44910000 */  mtc1       $s1, $f0
/* 103638 800E5548 46800020 */  cvt.s.w    $f0, $f0
/* 10363C 800E554C 46040003 */  div.s      $f0, $f0, $f4
/* 103640 800E5550 AFB00010 */  sw         $s0, 0x10($sp)
/* 103644 800E5554 AFB10014 */  sw         $s1, 0x14($sp)
/* 103648 800E5558 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 10364C 800E555C 8C42004C */  lw         $v0, 0x4C($v0)
/* 103650 800E5560 0040F809 */  jalr       $v0
/* 103654 800E5564 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800E5568:
/* 103658 800E5568 8FBF0048 */  lw         $ra, 0x48($sp)
/* 10365C 800E556C 8FB70044 */  lw         $s7, 0x44($sp)
/* 103660 800E5570 8FB60040 */  lw         $s6, 0x40($sp)
/* 103664 800E5574 8FB5003C */  lw         $s5, 0x3C($sp)
/* 103668 800E5578 8FB40038 */  lw         $s4, 0x38($sp)
/* 10366C 800E557C 8FB30034 */  lw         $s3, 0x34($sp)
/* 103670 800E5580 8FB20030 */  lw         $s2, 0x30($sp)
/* 103674 800E5584 8FB1002C */  lw         $s1, 0x2C($sp)
/* 103678 800E5588 8FB00028 */  lw         $s0, 0x28($sp)
/* 10367C 800E558C D7B60058 */  ldc1       $f22, 0x58($sp)
/* 103680 800E5590 D7B40050 */  ldc1       $f20, 0x50($sp)
/* 103684 800E5594 03E00008 */  jr         $ra
/* 103688 800E5598 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_menu_800E559C
/* 10368C 800E559C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 103690 800E55A0 AFB00028 */  sw         $s0, 0x28($sp)
/* 103694 800E55A4 00808021 */  addu       $s0, $a0, $zero
/* 103698 800E55A8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 10369C 800E55AC AFB20030 */  sw         $s2, 0x30($sp)
/* 1036A0 800E55B0 AFB1002C */  sw         $s1, 0x2C($sp)
/* 1036A4 800E55B4 F7B60040 */  sdc1       $f22, 0x40($sp)
/* 1036A8 800E55B8 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 1036AC 800E55BC 8CA20008 */  lw         $v0, 0x8($a1)
/* 1036B0 800E55C0 27A50020 */  addiu      $a1, $sp, 0x20
/* 1036B4 800E55C4 4486A000 */  mtc1       $a2, $f20
/* 1036B8 800E55C8 4487B000 */  mtc1       $a3, $f22
/* 1036BC 800E55CC 27A60024 */  addiu      $a2, $sp, 0x24
/* 1036C0 800E55D0 8C49010C */  lw         $t1, 0x10C($v0)
/* 1036C4 800E55D4 8C4A0110 */  lw         $t2, 0x110($v0)
/* 1036C8 800E55D8 8C4B0114 */  lw         $t3, 0x114($v0)
/* 1036CC 800E55DC 8C4C0118 */  lw         $t4, 0x118($v0)
/* 1036D0 800E55E0 AFA90010 */  sw         $t1, 0x10($sp)
/* 1036D4 800E55E4 AFAA0014 */  sw         $t2, 0x14($sp)
/* 1036D8 800E55E8 AFAB0018 */  sw         $t3, 0x18($sp)
/* 1036DC 800E55EC AFAC001C */  sw         $t4, 0x1C($sp)
/* 1036E0 800E55F0 8FA30018 */  lw         $v1, 0x18($sp)
/* 1036E4 800E55F4 8FA20010 */  lw         $v0, 0x10($sp)
/* 1036E8 800E55F8 8E080010 */  lw         $t0, 0x10($s0)
/* 1036EC 800E55FC 00628823 */  subu       $s1, $v1, $v0
/* 1036F0 800E5600 8FA3001C */  lw         $v1, 0x1C($sp)
/* 1036F4 800E5604 8FA20014 */  lw         $v0, 0x14($sp)
/* 1036F8 800E5608 85040040 */  lh         $a0, 0x40($t0)
/* 1036FC 800E560C 00629023 */  subu       $s2, $v1, $v0
/* 103700 800E5610 8D020044 */  lw         $v0, 0x44($t0)
/* 103704 800E5614 0040F809 */  jalr       $v0
/* 103708 800E5618 02042021 */   addu      $a0, $s0, $a0
/* 10370C 800E561C 8E020044 */  lw         $v0, 0x44($s0)
/* 103710 800E5620 30420010 */  andi       $v0, $v0, 0x10
/* 103714 800E5624 10400005 */  beqz       $v0, .Lmenu_800E563C
/* 103718 800E5628 00000000 */   nop
/* 10371C 800E562C C600002C */  lwc1       $f0, 0x2C($s0)
/* 103720 800E5630 46140002 */  mul.s      $f0, $f0, $f20
/* 103724 800E5634 4600008D */  trunc.w.s  $f2, $f0
/* 103728 800E5638 E7A20020 */  swc1       $f2, 0x20($sp)
.Lmenu_800E563C:
/* 10372C 800E563C 8E020044 */  lw         $v0, 0x44($s0)
/* 103730 800E5640 30420020 */  andi       $v0, $v0, 0x20
/* 103734 800E5644 10400005 */  beqz       $v0, .Lmenu_800E565C
/* 103738 800E5648 00000000 */   nop
/* 10373C 800E564C C6000030 */  lwc1       $f0, 0x30($s0)
/* 103740 800E5650 46160002 */  mul.s      $f0, $f0, $f22
/* 103744 800E5654 4600008D */  trunc.w.s  $f2, $f0
/* 103748 800E5658 E7A20024 */  swc1       $f2, 0x24($sp)
.Lmenu_800E565C:
/* 10374C 800E565C 8FA30020 */  lw         $v1, 0x20($sp)
/* 103750 800E5660 02231823 */  subu       $v1, $s1, $v1
/* 103754 800E5664 000317C2 */  srl        $v0, $v1, 31
/* 103758 800E5668 00621821 */  addu       $v1, $v1, $v0
/* 10375C 800E566C 8FA20024 */  lw         $v0, 0x24($sp)
/* 103760 800E5670 00031843 */  sra        $v1, $v1, 1
/* 103764 800E5674 02421023 */  subu       $v0, $s2, $v0
/* 103768 800E5678 000227C2 */  srl        $a0, $v0, 31
/* 10376C 800E567C 00441021 */  addu       $v0, $v0, $a0
/* 103770 800E5680 8FA40010 */  lw         $a0, 0x10($sp)
/* 103774 800E5684 00021043 */  sra        $v0, $v0, 1
/* 103778 800E5688 00832821 */  addu       $a1, $a0, $v1
/* 10377C 800E568C 8FA40014 */  lw         $a0, 0x14($sp)
/* 103780 800E5690 8E030044 */  lw         $v1, 0x44($s0)
/* 103784 800E5694 30630004 */  andi       $v1, $v1, 0x4
/* 103788 800E5698 14600005 */  bnez       $v1, .Lmenu_800E56B0
/* 10378C 800E569C 00822021 */   addu      $a0, $a0, $v0
/* 103790 800E56A0 44850000 */  mtc1       $a1, $f0
/* 103794 800E56A4 46800020 */  cvt.s.w    $f0, $f0
/* 103798 800E56A8 46140003 */  div.s      $f0, $f0, $f20
/* 10379C 800E56AC E600001C */  swc1       $f0, 0x1C($s0)
.Lmenu_800E56B0:
/* 1037A0 800E56B0 8E020044 */  lw         $v0, 0x44($s0)
/* 1037A4 800E56B4 30420008 */  andi       $v0, $v0, 0x8
/* 1037A8 800E56B8 14400005 */  bnez       $v0, .Lmenu_800E56D0
/* 1037AC 800E56BC 00000000 */   nop
/* 1037B0 800E56C0 44840000 */  mtc1       $a0, $f0
/* 1037B4 800E56C4 46800020 */  cvt.s.w    $f0, $f0
/* 1037B8 800E56C8 46160003 */  div.s      $f0, $f0, $f22
/* 1037BC 800E56CC E6000020 */  swc1       $f0, 0x20($s0)
.Lmenu_800E56D0:
/* 1037C0 800E56D0 8E020044 */  lw         $v0, 0x44($s0)
/* 1037C4 800E56D4 30420010 */  andi       $v0, $v0, 0x10
/* 1037C8 800E56D8 14400005 */  bnez       $v0, .Lmenu_800E56F0
/* 1037CC 800E56DC 00000000 */   nop
/* 1037D0 800E56E0 C7A00020 */  lwc1       $f0, 0x20($sp)
/* 1037D4 800E56E4 46800020 */  cvt.s.w    $f0, $f0
/* 1037D8 800E56E8 46140003 */  div.s      $f0, $f0, $f20
/* 1037DC 800E56EC E600002C */  swc1       $f0, 0x2C($s0)
.Lmenu_800E56F0:
/* 1037E0 800E56F0 8E020044 */  lw         $v0, 0x44($s0)
/* 1037E4 800E56F4 30420020 */  andi       $v0, $v0, 0x20
/* 1037E8 800E56F8 14400005 */  bnez       $v0, .Lmenu_800E5710
/* 1037EC 800E56FC 00000000 */   nop
/* 1037F0 800E5700 C7A00024 */  lwc1       $f0, 0x24($sp)
/* 1037F4 800E5704 46800020 */  cvt.s.w    $f0, $f0
/* 1037F8 800E5708 46160003 */  div.s      $f0, $f0, $f22
/* 1037FC 800E570C E6000030 */  swc1       $f0, 0x30($s0)
.Lmenu_800E5710:
/* 103800 800E5710 8E020044 */  lw         $v0, 0x44($s0)
/* 103804 800E5714 2403FF7F */  addiu      $v1, $zero, -0x81
/* 103808 800E5718 00431024 */  and        $v0, $v0, $v1
/* 10380C 800E571C AE020044 */  sw         $v0, 0x44($s0)
/* 103810 800E5720 8FBF0034 */  lw         $ra, 0x34($sp)
/* 103814 800E5724 8FB20030 */  lw         $s2, 0x30($sp)
/* 103818 800E5728 8FB1002C */  lw         $s1, 0x2C($sp)
/* 10381C 800E572C 8FB00028 */  lw         $s0, 0x28($sp)
/* 103820 800E5730 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 103824 800E5734 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 103828 800E5738 03E00008 */  jr         $ra
/* 10382C 800E573C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800E5740
/* 103830 800E5740 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103834 800E5744 AFB00010 */  sw         $s0, 0x10($sp)
/* 103838 800E5748 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10383C 800E574C 0C039420 */  jal        func_menu_800E5080
/* 103840 800E5750 00808021 */   addu      $s0, $a0, $zero
/* 103844 800E5754 3C02800D */  lui        $v0, %hi(D_menu_800CB140)
/* 103848 800E5758 2442B140 */  addiu      $v0, $v0, %lo(D_menu_800CB140)
/* 10384C 800E575C 02002021 */  addu       $a0, $s0, $zero
/* 103850 800E5760 0C0395F1 */  jal        func_menu_800E57C4
/* 103854 800E5764 AE020010 */   sw        $v0, 0x10($s0)
/* 103858 800E5768 02001021 */  addu       $v0, $s0, $zero
/* 10385C 800E576C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 103860 800E5770 8FB00010 */  lw         $s0, 0x10($sp)
/* 103864 800E5774 03E00008 */  jr         $ra
/* 103868 800E5778 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E577C
/* 10386C 800E577C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 103870 800E5780 AFB00010 */  sw         $s0, 0x10($sp)
/* 103874 800E5784 00808021 */  addu       $s0, $a0, $zero
/* 103878 800E5788 AFB10014 */  sw         $s1, 0x14($sp)
/* 10387C 800E578C 00A08821 */  addu       $s1, $a1, $zero
/* 103880 800E5790 3C02800D */  lui        $v0, %hi(D_menu_800CB140)
/* 103884 800E5794 2442B140 */  addiu      $v0, $v0, %lo(D_menu_800CB140)
/* 103888 800E5798 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10388C 800E579C 0C039657 */  jal        func_menu_800E595C
/* 103890 800E57A0 AE020010 */   sw        $v0, 0x10($s0)
/* 103894 800E57A4 02002021 */  addu       $a0, $s0, $zero
/* 103898 800E57A8 0C03942F */  jal        func_menu_800E50BC
/* 10389C 800E57AC 02202821 */   addu      $a1, $s1, $zero
/* 1038A0 800E57B0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1038A4 800E57B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1038A8 800E57B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1038AC 800E57BC 03E00008 */  jr         $ra
/* 1038B0 800E57C0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E57C4
/* 1038B4 800E57C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1038B8 800E57C8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1038BC 800E57CC AC800058 */  sw         $zero, 0x58($a0)
/* 1038C0 800E57D0 0C039441 */  jal        func_menu_800E5104
/* 1038C4 800E57D4 A080005C */   sb        $zero, 0x5C($a0)
/* 1038C8 800E57D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1038CC 800E57DC 03E00008 */  jr         $ra
/* 1038D0 800E57E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E57E4
/* 1038D4 800E57E4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1038D8 800E57E8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1038DC 800E57EC 00808821 */  addu       $s1, $a0, $zero
/* 1038E0 800E57F0 AFB00018 */  sw         $s0, 0x18($sp)
/* 1038E4 800E57F4 00A08021 */  addu       $s0, $a1, $zero
/* 1038E8 800E57F8 AFB40028 */  sw         $s4, 0x28($sp)
/* 1038EC 800E57FC 00C0A021 */  addu       $s4, $a2, $zero
/* 1038F0 800E5800 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1038F4 800E5804 00E0A821 */  addu       $s5, $a3, $zero
/* 1038F8 800E5808 02002021 */  addu       $a0, $s0, $zero
/* 1038FC 800E580C 24050005 */  addiu      $a1, $zero, 0x5
/* 103900 800E5810 AFBF0030 */  sw         $ra, 0x30($sp)
/* 103904 800E5814 AFB30024 */  sw         $s3, 0x24($sp)
/* 103908 800E5818 0C0026F4 */  jal        func_80009BD0
/* 10390C 800E581C AFB20020 */   sw        $s2, 0x20($sp)
/* 103910 800E5820 24020003 */  addiu      $v0, $zero, 0x3
/* 103914 800E5824 24130006 */  addiu      $s3, $zero, 0x6
/* 103918 800E5828 2412004D */  addiu      $s2, $zero, 0x4D
/* 10391C 800E582C AE220044 */  sw         $v0, 0x44($s1)
.Lmenu_800E5830:
/* 103920 800E5830 8E020028 */  lw         $v0, 0x28($s0)
/* 103924 800E5834 844400A0 */  lh         $a0, 0xA0($v0)
/* 103928 800E5838 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10392C 800E583C 0040F809 */  jalr       $v0
/* 103930 800E5840 02042021 */   addu      $a0, $s0, $a0
/* 103934 800E5844 10530015 */  beq        $v0, $s3, .Lmenu_800E589C
/* 103938 800E5848 00000000 */   nop
/* 10393C 800E584C 5452000C */  bnel       $v0, $s2, .Lmenu_800E5880
/* 103940 800E5850 AFB50010 */   sw        $s5, 0x10($sp)
/* 103944 800E5854 8E020028 */  lw         $v0, 0x28($s0)
/* 103948 800E5858 844400A0 */  lh         $a0, 0xA0($v0)
/* 10394C 800E585C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 103950 800E5860 0040F809 */  jalr       $v0
/* 103954 800E5864 02042021 */   addu      $a0, $s0, $a0
/* 103958 800E5868 2624005C */  addiu      $a0, $s1, 0x5C
/* 10395C 800E586C 26050044 */  addiu      $a1, $s0, 0x44
/* 103960 800E5870 0C000708 */  jal        func_80001C20
/* 103964 800E5874 24060008 */   addiu     $a2, $zero, 0x8
/* 103968 800E5878 0803960C */  j          .Lmenu_800E5830
/* 10396C 800E587C 00000000 */   nop
.Lmenu_800E5880:
/* 103970 800E5880 02202021 */  addu       $a0, $s1, $zero
/* 103974 800E5884 02002821 */  addu       $a1, $s0, $zero
/* 103978 800E5888 00403021 */  addu       $a2, $v0, $zero
/* 10397C 800E588C 0C039454 */  jal        func_menu_800E5150
/* 103980 800E5890 02803821 */   addu      $a3, $s4, $zero
/* 103984 800E5894 0803960C */  j          .Lmenu_800E5830
/* 103988 800E5898 00000000 */   nop
.Lmenu_800E589C:
/* 10398C 800E589C 9222005C */  lbu        $v0, 0x5C($s1)
/* 103990 800E58A0 14400006 */  bnez       $v0, .Lmenu_800E58BC
/* 103994 800E58A4 24050013 */   addiu     $a1, $zero, 0x13
/* 103998 800E58A8 8E020028 */  lw         $v0, 0x28($s0)
/* 10399C 800E58AC 84440098 */  lh         $a0, 0x98($v0)
/* 1039A0 800E58B0 8C42009C */  lw         $v0, 0x9C($v0)
/* 1039A4 800E58B4 0040F809 */  jalr       $v0
/* 1039A8 800E58B8 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800E58BC:
/* 1039AC 800E58BC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1039B0 800E58C0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1039B4 800E58C4 8FB40028 */  lw         $s4, 0x28($sp)
/* 1039B8 800E58C8 8FB30024 */  lw         $s3, 0x24($sp)
/* 1039BC 800E58CC 8FB20020 */  lw         $s2, 0x20($sp)
/* 1039C0 800E58D0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1039C4 800E58D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1039C8 800E58D8 03E00008 */  jr         $ra
/* 1039CC 800E58DC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E58E0
/* 1039D0 800E58E0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1039D4 800E58E4 AFB00050 */  sw         $s0, 0x50($sp)
/* 1039D8 800E58E8 00808021 */  addu       $s0, $a0, $zero
/* 1039DC 800E58EC 00A02021 */  addu       $a0, $a1, $zero
/* 1039E0 800E58F0 AFB10054 */  sw         $s1, 0x54($sp)
/* 1039E4 800E58F4 2611005C */  addiu      $s1, $s0, 0x5C
/* 1039E8 800E58F8 AFBF0058 */  sw         $ra, 0x58($sp)
/* 1039EC 800E58FC 0C016EC5 */  jal        func_8005BB14
/* 1039F0 800E5900 02202821 */   addu      $a1, $s1, $zero
/* 1039F4 800E5904 14400010 */  bnez       $v0, .Lmenu_800E5948
/* 1039F8 800E5908 AE020058 */   sw        $v0, 0x58($s0)
/* 1039FC 800E590C 27A40010 */  addiu      $a0, $sp, 0x10
/* 103A00 800E5910 02202821 */  addu       $a1, $s1, $zero
/* 103A04 800E5914 0C000708 */  jal        func_80001C20
/* 103A08 800E5918 24060008 */   addiu     $a2, $zero, 0x8
/* 103A0C 800E591C A3A00018 */  sb         $zero, 0x18($sp)
/* 103A10 800E5920 27A40010 */  addiu      $a0, $sp, 0x10
/* 103A14 800E5924 3C05800D */  lui        $a1, %hi(D_menu_800CB120)
/* 103A18 800E5928 0C0006C8 */  jal        func_80001B20
/* 103A1C 800E592C 24A5B120 */   addiu     $a1, $a1, %lo(D_menu_800CB120)
/* 103A20 800E5930 3C04800D */  lui        $a0, %hi(D_menu_800CB138)
/* 103A24 800E5934 2484B138 */  addiu      $a0, $a0, %lo(D_menu_800CB138)
/* 103A28 800E5938 00002821 */  addu       $a1, $zero, $zero
/* 103A2C 800E593C 00A03021 */  addu       $a2, $a1, $zero
/* 103A30 800E5940 0C011ACF */  jal        func_80046B3C
/* 103A34 800E5944 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E5948:
/* 103A38 800E5948 8FBF0058 */  lw         $ra, 0x58($sp)
/* 103A3C 800E594C 8FB10054 */  lw         $s1, 0x54($sp)
/* 103A40 800E5950 8FB00050 */  lw         $s0, 0x50($sp)
/* 103A44 800E5954 03E00008 */  jr         $ra
/* 103A48 800E5958 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_menu_800E595C
/* 103A4C 800E595C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103A50 800E5960 AFB00010 */  sw         $s0, 0x10($sp)
/* 103A54 800E5964 AFBF0014 */  sw         $ra, 0x14($sp)
/* 103A58 800E5968 0C0395F1 */  jal        func_menu_800E57C4
/* 103A5C 800E596C 00808021 */   addu      $s0, $a0, $zero
/* 103A60 800E5970 0C03839D */  jal        func_menu_800E0E74
/* 103A64 800E5974 02002021 */   addu      $a0, $s0, $zero
/* 103A68 800E5978 8FBF0014 */  lw         $ra, 0x14($sp)
/* 103A6C 800E597C 8FB00010 */  lw         $s0, 0x10($sp)
/* 103A70 800E5980 03E00008 */  jr         $ra
/* 103A74 800E5984 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E5988
/* 103A78 800E5988 8C820058 */  lw         $v0, 0x58($a0)
/* 103A7C 800E598C 8C420030 */  lw         $v0, 0x30($v0)
/* 103A80 800E5990 ACA20000 */  sw         $v0, 0x0($a1)
/* 103A84 800E5994 8C820058 */  lw         $v0, 0x58($a0)
/* 103A88 800E5998 8C420034 */  lw         $v0, 0x34($v0)
/* 103A8C 800E599C 03E00008 */  jr         $ra
/* 103A90 800E59A0 ACC20000 */   sw        $v0, 0x0($a2)

glabel func_menu_800E59A4
/* 103A94 800E59A4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 103A98 800E59A8 8FA20048 */  lw         $v0, 0x48($sp)
/* 103A9C 800E59AC 8FA3004C */  lw         $v1, 0x4C($sp)
/* 103AA0 800E59B0 AFB00030 */  sw         $s0, 0x30($sp)
/* 103AA4 800E59B4 00808021 */  addu       $s0, $a0, $zero
/* 103AA8 800E59B8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 103AAC 800E59BC AFA60020 */  sw         $a2, 0x20($sp)
/* 103AB0 800E59C0 AFA70024 */  sw         $a3, 0x24($sp)
/* 103AB4 800E59C4 00C23021 */  addu       $a2, $a2, $v0
/* 103AB8 800E59C8 00E33821 */  addu       $a3, $a3, $v1
/* 103ABC 800E59CC AFA60028 */  sw         $a2, 0x28($sp)
/* 103AC0 800E59D0 AFA7002C */  sw         $a3, 0x2C($sp)
/* 103AC4 800E59D4 8E020044 */  lw         $v0, 0x44($s0)
/* 103AC8 800E59D8 30420100 */  andi       $v0, $v0, 0x100
/* 103ACC 800E59DC 10400006 */  beqz       $v0, .Lmenu_800E59F8
/* 103AD0 800E59E0 00000000 */   nop
/* 103AD4 800E59E4 8E020058 */  lw         $v0, 0x58($s0)
/* 103AD8 800E59E8 8A080054 */  lwl        $t0, 0x54($s0)
/* 103ADC 800E59EC 9A080057 */  lwr        $t0, 0x57($s0)
/* 103AE0 800E59F0 A8480046 */  swl        $t0, 0x46($v0)
/* 103AE4 800E59F4 B8480049 */  swr        $t0, 0x49($v0)
.Lmenu_800E59F8:
/* 103AE8 800E59F8 8CA2012C */  lw         $v0, 0x12C($a1)
/* 103AEC 800E59FC 844400F0 */  lh         $a0, 0xF0($v0)
/* 103AF0 800E5A00 00003021 */  addu       $a2, $zero, $zero
/* 103AF4 800E5A04 AFA00010 */  sw         $zero, 0x10($sp)
/* 103AF8 800E5A08 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 103AFC 800E5A0C 00A42021 */  addu       $a0, $a1, $a0
/* 103B00 800E5A10 8E050058 */  lw         $a1, 0x58($s0)
/* 103B04 800E5A14 0040F809 */  jalr       $v0
/* 103B08 800E5A18 27A70020 */   addiu     $a3, $sp, 0x20
/* 103B0C 800E5A1C 8E020044 */  lw         $v0, 0x44($s0)
/* 103B10 800E5A20 30420100 */  andi       $v0, $v0, 0x100
/* 103B14 800E5A24 1040000A */  beqz       $v0, .Lmenu_800E5A50
/* 103B18 800E5A28 240200FF */   addiu     $v0, $zero, 0xFF
/* 103B1C 800E5A2C A3A20018 */  sb         $v0, 0x18($sp)
/* 103B20 800E5A30 A3A20019 */  sb         $v0, 0x19($sp)
/* 103B24 800E5A34 A3A2001A */  sb         $v0, 0x1A($sp)
/* 103B28 800E5A38 A3A2001B */  sb         $v0, 0x1B($sp)
/* 103B2C 800E5A3C 8E020058 */  lw         $v0, 0x58($s0)
/* 103B30 800E5A40 8BA80018 */  lwl        $t0, 0x18($sp)
/* 103B34 800E5A44 9BA8001B */  lwr        $t0, 0x1B($sp)
/* 103B38 800E5A48 A8480046 */  swl        $t0, 0x46($v0)
/* 103B3C 800E5A4C B8480049 */  swr        $t0, 0x49($v0)
.Lmenu_800E5A50:
/* 103B40 800E5A50 8FBF0034 */  lw         $ra, 0x34($sp)
/* 103B44 800E5A54 8FB00030 */  lw         $s0, 0x30($sp)
/* 103B48 800E5A58 03E00008 */  jr         $ra
/* 103B4C 800E5A5C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E5A60
/* 103B50 800E5A60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103B54 800E5A64 AFB00010 */  sw         $s0, 0x10($sp)
/* 103B58 800E5A68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 103B5C 800E5A6C 0C038384 */  jal        func_menu_800E0E10
/* 103B60 800E5A70 00808021 */   addu      $s0, $a0, $zero
/* 103B64 800E5A74 3C02800D */  lui        $v0, %hi(D_menu_800CB1B0)
/* 103B68 800E5A78 2442B1B0 */  addiu      $v0, $v0, %lo(D_menu_800CB1B0)
/* 103B6C 800E5A7C 02002021 */  addu       $a0, $s0, $zero
/* 103B70 800E5A80 0C0396A7 */  jal        func_menu_800E5A9C
/* 103B74 800E5A84 AE020010 */   sw        $v0, 0x10($s0)
/* 103B78 800E5A88 02001021 */  addu       $v0, $s0, $zero
/* 103B7C 800E5A8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 103B80 800E5A90 8FB00010 */  lw         $s0, 0x10($sp)
/* 103B84 800E5A94 03E00008 */  jr         $ra
/* 103B88 800E5A98 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E5A9C
/* 103B8C 800E5A9C AC800014 */  sw         $zero, 0x14($a0)
/* 103B90 800E5AA0 AC800018 */  sw         $zero, 0x18($a0)
/* 103B94 800E5AA4 A080001C */  sb         $zero, 0x1C($a0)
/* 103B98 800E5AA8 AC800024 */  sw         $zero, 0x24($a0)
/* 103B9C 800E5AAC AC800028 */  sw         $zero, 0x28($a0)
/* 103BA0 800E5AB0 AC80002C */  sw         $zero, 0x2C($a0)
/* 103BA4 800E5AB4 AC800030 */  sw         $zero, 0x30($a0)
/* 103BA8 800E5AB8 AC800034 */  sw         $zero, 0x34($a0)
/* 103BAC 800E5ABC AC800038 */  sw         $zero, 0x38($a0)
/* 103BB0 800E5AC0 AC80003C */  sw         $zero, 0x3C($a0)
/* 103BB4 800E5AC4 AC800040 */  sw         $zero, 0x40($a0)
/* 103BB8 800E5AC8 AC800044 */  sw         $zero, 0x44($a0)
/* 103BBC 800E5ACC 03E00008 */  jr         $ra
/* 103BC0 800E5AD0 AC800048 */   sw        $zero, 0x48($a0)

glabel func_menu_800E5AD4
/* 103BC4 800E5AD4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 103BC8 800E5AD8 AFB10014 */  sw         $s1, 0x14($sp)
/* 103BCC 800E5ADC 00808821 */  addu       $s1, $a0, $zero
/* 103BD0 800E5AE0 AFB20018 */  sw         $s2, 0x18($sp)
/* 103BD4 800E5AE4 00A09021 */  addu       $s2, $a1, $zero
/* 103BD8 800E5AE8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 103BDC 800E5AEC 00C09821 */  addu       $s3, $a2, $zero
/* 103BE0 800E5AF0 02402021 */  addu       $a0, $s2, $zero
/* 103BE4 800E5AF4 24050005 */  addiu      $a1, $zero, 0x5
/* 103BE8 800E5AF8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 103BEC 800E5AFC AFB40020 */  sw         $s4, 0x20($sp)
/* 103BF0 800E5B00 0C0026F4 */  jal        func_80009BD0
/* 103BF4 800E5B04 AFB00010 */   sw        $s0, 0x10($sp)
/* 103BF8 800E5B08 3C02800D */  lui        $v0, %hi(jtbl_menu_800CB190)
/* 103BFC 800E5B0C 2454B190 */  addiu      $s4, $v0, %lo(jtbl_menu_800CB190)
.Lmenu_800E5B10:
/* 103C00 800E5B10 8E420028 */  lw         $v0, 0x28($s2)
/* 103C04 800E5B14 844400A0 */  lh         $a0, 0xA0($v0)
/* 103C08 800E5B18 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 103C0C 800E5B1C 0040F809 */  jalr       $v0
/* 103C10 800E5B20 02442021 */   addu      $a0, $s2, $a0
/* 103C14 800E5B24 00403821 */  addu       $a3, $v0, $zero
/* 103C18 800E5B28 24020006 */  addiu      $v0, $zero, 0x6
/* 103C1C 800E5B2C 10E2005E */  beq        $a3, $v0, .Lmenu_800E5CA8
/* 103C20 800E5B30 24E3FFC7 */   addiu     $v1, $a3, -0x39
/* 103C24 800E5B34 0062102B */  sltu       $v0, $v1, $v0
/* 103C28 800E5B38 10400055 */  beqz       $v0, Lmenu_800E5C90
/* 103C2C 800E5B3C 00031080 */   sll       $v0, $v1, 2
/* 103C30 800E5B40 00541021 */  addu       $v0, $v0, $s4
/* 103C34 800E5B44 8C420000 */  lw         $v0, 0x0($v0)
/* 103C38 800E5B48 00400008 */  jr         $v0
/* 103C3C 800E5B4C 00000000 */   nop
glabel Lmenu_800E5B50
/* 103C40 800E5B50 0C002680 */  jal        func_80009A00
/* 103C44 800E5B54 02402021 */   addu      $a0, $s2, $zero
/* 103C48 800E5B58 8E630068 */  lw         $v1, 0x68($s3)
/* 103C4C 800E5B5C 00408021 */  addu       $s0, $v0, $zero
/* 103C50 800E5B60 0203182B */  sltu       $v1, $s0, $v1
/* 103C54 800E5B64 14600008 */  bnez       $v1, .Lmenu_800E5B88
/* 103C58 800E5B68 00101040 */   sll       $v0, $s0, 1
/* 103C5C 800E5B6C 8E420028 */  lw         $v0, 0x28($s2)
/* 103C60 800E5B70 2405000F */  addiu      $a1, $zero, 0xF
/* 103C64 800E5B74 84440098 */  lh         $a0, 0x98($v0)
/* 103C68 800E5B78 8C42009C */  lw         $v0, 0x9C($v0)
/* 103C6C 800E5B7C 0040F809 */  jalr       $v0
/* 103C70 800E5B80 02442021 */   addu      $a0, $s2, $a0
/* 103C74 800E5B84 00101040 */  sll        $v0, $s0, 1
.Lmenu_800E5B88:
/* 103C78 800E5B88 00501021 */  addu       $v0, $v0, $s0
/* 103C7C 800E5B8C 00021080 */  sll        $v0, $v0, 2
/* 103C80 800E5B90 00501021 */  addu       $v0, $v0, $s0
/* 103C84 800E5B94 00021100 */  sll        $v0, $v0, 4
/* 103C88 800E5B98 00501023 */  subu       $v0, $v0, $s0
/* 103C8C 800E5B9C 8E63006C */  lw         $v1, 0x6C($s3)
/* 103C90 800E5BA0 00021080 */  sll        $v0, $v0, 2
/* 103C94 800E5BA4 00621821 */  addu       $v1, $v1, $v0
/* 103C98 800E5BA8 AE230014 */  sw         $v1, 0x14($s1)
/* 103C9C 800E5BAC 8E420028 */  lw         $v0, 0x28($s2)
/* 103CA0 800E5BB0 844400A0 */  lh         $a0, 0xA0($v0)
/* 103CA4 800E5BB4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 103CA8 800E5BB8 0040F809 */  jalr       $v0
/* 103CAC 800E5BBC 02442021 */   addu      $a0, $s2, $a0
/* 103CB0 800E5BC0 2624001C */  addiu      $a0, $s1, 0x1C
/* 103CB4 800E5BC4 26450044 */  addiu      $a1, $s2, 0x44
/* 103CB8 800E5BC8 0C000708 */  jal        func_80001C20
/* 103CBC 800E5BCC 24060008 */   addiu     $a2, $zero, 0x8
/* 103CC0 800E5BD0 080396C4 */  j          .Lmenu_800E5B10
/* 103CC4 800E5BD4 00000000 */   nop
glabel Lmenu_800E5BD8
/* 103CC8 800E5BD8 0C0025F8 */  jal        func_800097E0
/* 103CCC 800E5BDC 02402021 */   addu      $a0, $s2, $zero
/* 103CD0 800E5BE0 02402021 */  addu       $a0, $s2, $zero
/* 103CD4 800E5BE4 0C0025F8 */  jal        func_800097E0
/* 103CD8 800E5BE8 E6200024 */   swc1      $f0, 0x24($s1)
/* 103CDC 800E5BEC 02402021 */  addu       $a0, $s2, $zero
/* 103CE0 800E5BF0 0C0025F8 */  jal        func_800097E0
/* 103CE4 800E5BF4 E6200028 */   swc1      $f0, 0x28($s1)
/* 103CE8 800E5BF8 8E220048 */  lw         $v0, 0x48($s1)
/* 103CEC 800E5BFC E620002C */  swc1       $f0, 0x2C($s1)
/* 103CF0 800E5C00 34420001 */  ori        $v0, $v0, 0x1
/* 103CF4 800E5C04 080396C4 */  j          .Lmenu_800E5B10
/* 103CF8 800E5C08 AE220048 */   sw        $v0, 0x48($s1)
glabel Lmenu_800E5C0C
/* 103CFC 800E5C0C 0C0025F8 */  jal        func_800097E0
/* 103D00 800E5C10 02402021 */   addu      $a0, $s2, $zero
/* 103D04 800E5C14 02402021 */  addu       $a0, $s2, $zero
/* 103D08 800E5C18 0C0025F8 */  jal        func_800097E0
/* 103D0C 800E5C1C E6200030 */   swc1      $f0, 0x30($s1)
/* 103D10 800E5C20 02402021 */  addu       $a0, $s2, $zero
/* 103D14 800E5C24 0C0025F8 */  jal        func_800097E0
/* 103D18 800E5C28 E6200034 */   swc1      $f0, 0x34($s1)
/* 103D1C 800E5C2C 02402021 */  addu       $a0, $s2, $zero
/* 103D20 800E5C30 0C0025F8 */  jal        func_800097E0
/* 103D24 800E5C34 E6200038 */   swc1      $f0, 0x38($s1)
/* 103D28 800E5C38 02402021 */  addu       $a0, $s2, $zero
/* 103D2C 800E5C3C 0C0025F8 */  jal        func_800097E0
/* 103D30 800E5C40 E620003C */   swc1      $f0, 0x3C($s1)
/* 103D34 800E5C44 02402021 */  addu       $a0, $s2, $zero
/* 103D38 800E5C48 0C0025F8 */  jal        func_800097E0
/* 103D3C 800E5C4C E6200040 */   swc1      $f0, 0x40($s1)
/* 103D40 800E5C50 8E220048 */  lw         $v0, 0x48($s1)
/* 103D44 800E5C54 E6200044 */  swc1       $f0, 0x44($s1)
/* 103D48 800E5C58 34420002 */  ori        $v0, $v0, 0x2
/* 103D4C 800E5C5C 080396C4 */  j          .Lmenu_800E5B10
/* 103D50 800E5C60 AE220048 */   sw        $v0, 0x48($s1)
glabel Lmenu_800E5C64
/* 103D54 800E5C64 8E220048 */  lw         $v0, 0x48($s1)
/* 103D58 800E5C68 34420004 */  ori        $v0, $v0, 0x4
/* 103D5C 800E5C6C 080396C4 */  j          .Lmenu_800E5B10
/* 103D60 800E5C70 AE220048 */   sw        $v0, 0x48($s1)
glabel Lmenu_800E5C74
/* 103D64 800E5C74 0C002680 */  jal        func_80009A00
/* 103D68 800E5C78 02402021 */   addu      $a0, $s2, $zero
/* 103D6C 800E5C7C 8E230048 */  lw         $v1, 0x48($s1)
/* 103D70 800E5C80 AE22004C */  sw         $v0, 0x4C($s1)
/* 103D74 800E5C84 34630008 */  ori        $v1, $v1, 0x8
/* 103D78 800E5C88 080396C4 */  j          .Lmenu_800E5B10
/* 103D7C 800E5C8C AE230048 */   sw        $v1, 0x48($s1)
glabel Lmenu_800E5C90
/* 103D80 800E5C90 02202021 */  addu       $a0, $s1, $zero
/* 103D84 800E5C94 02402821 */  addu       $a1, $s2, $zero
/* 103D88 800E5C98 0C038462 */  jal        func_menu_800E1188
/* 103D8C 800E5C9C 02603021 */   addu      $a2, $s3, $zero
/* 103D90 800E5CA0 080396C4 */  j          .Lmenu_800E5B10
/* 103D94 800E5CA4 00000000 */   nop
.Lmenu_800E5CA8:
/* 103D98 800E5CA8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 103D9C 800E5CAC 8FB40020 */  lw         $s4, 0x20($sp)
/* 103DA0 800E5CB0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 103DA4 800E5CB4 8FB20018 */  lw         $s2, 0x18($sp)
/* 103DA8 800E5CB8 8FB10014 */  lw         $s1, 0x14($sp)
/* 103DAC 800E5CBC 8FB00010 */  lw         $s0, 0x10($sp)
/* 103DB0 800E5CC0 03E00008 */  jr         $ra
/* 103DB4 800E5CC4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E5CC8
/* 103DB8 800E5CC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103DBC 800E5CCC AFB00010 */  sw         $s0, 0x10($sp)
/* 103DC0 800E5CD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 103DC4 800E5CD4 0C0396A7 */  jal        func_menu_800E5A9C
/* 103DC8 800E5CD8 00808021 */   addu      $s0, $a0, $zero
/* 103DCC 800E5CDC 0C03839D */  jal        func_menu_800E0E74
/* 103DD0 800E5CE0 02002021 */   addu      $a0, $s0, $zero
/* 103DD4 800E5CE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 103DD8 800E5CE8 8FB00010 */  lw         $s0, 0x10($sp)
/* 103DDC 800E5CEC 03E00008 */  jr         $ra
/* 103DE0 800E5CF0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E5CF4
/* 103DE4 800E5CF4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 103DE8 800E5CF8 00801821 */  addu       $v1, $a0, $zero
/* 103DEC 800E5CFC AFBF0040 */  sw         $ra, 0x40($sp)
/* 103DF0 800E5D00 8C620018 */  lw         $v0, 0x18($v1)
/* 103DF4 800E5D04 14400013 */  bnez       $v0, .Lmenu_800E5D54
/* 103DF8 800E5D08 27A50010 */   addiu     $a1, $sp, 0x10
/* 103DFC 800E5D0C 3C01800D */  lui        $at, %hi(D_menu_800CB1A8)
/* 103E00 800E5D10 C420B1A8 */  lwc1       $f0, %lo(D_menu_800CB1A8)($at)
/* 103E04 800E5D14 27A60020 */  addiu      $a2, $sp, 0x20
/* 103E08 800E5D18 AFA00010 */  sw         $zero, 0x10($sp)
/* 103E0C 800E5D1C AFA00014 */  sw         $zero, 0x14($sp)
/* 103E10 800E5D20 AFA00018 */  sw         $zero, 0x18($sp)
/* 103E14 800E5D24 AFA00024 */  sw         $zero, 0x24($sp)
/* 103E18 800E5D28 AFA00028 */  sw         $zero, 0x28($sp)
/* 103E1C 800E5D2C AFA00030 */  sw         $zero, 0x30($sp)
/* 103E20 800E5D30 AFA00034 */  sw         $zero, 0x34($sp)
/* 103E24 800E5D34 E7A00020 */  swc1       $f0, 0x20($sp)
/* 103E28 800E5D38 E7A00038 */  swc1       $f0, 0x38($sp)
/* 103E2C 800E5D3C 8C620010 */  lw         $v0, 0x10($v1)
/* 103E30 800E5D40 27A70030 */  addiu      $a3, $sp, 0x30
/* 103E34 800E5D44 84440018 */  lh         $a0, 0x18($v0)
/* 103E38 800E5D48 8C42001C */  lw         $v0, 0x1C($v0)
/* 103E3C 800E5D4C 0040F809 */  jalr       $v0
/* 103E40 800E5D50 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E5D54:
/* 103E44 800E5D54 8FBF0040 */  lw         $ra, 0x40($sp)
/* 103E48 800E5D58 03E00008 */  jr         $ra
/* 103E4C 800E5D5C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800E5D60
/* 103E50 800E5D60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 103E54 800E5D64 AFB00010 */  sw         $s0, 0x10($sp)
/* 103E58 800E5D68 00808021 */  addu       $s0, $a0, $zero
/* 103E5C 800E5D6C AFB10014 */  sw         $s1, 0x14($sp)
/* 103E60 800E5D70 00C08821 */  addu       $s1, $a2, $zero
/* 103E64 800E5D74 AFBF001C */  sw         $ra, 0x1C($sp)
/* 103E68 800E5D78 AFB20018 */  sw         $s2, 0x18($sp)
/* 103E6C 800E5D7C 8E020018 */  lw         $v0, 0x18($s0)
/* 103E70 800E5D80 14400044 */  bnez       $v0, .Lmenu_800E5E94
/* 103E74 800E5D84 00E09021 */   addu      $s2, $a3, $zero
/* 103E78 800E5D88 8E020048 */  lw         $v0, 0x48($s0)
/* 103E7C 800E5D8C 30420008 */  andi       $v0, $v0, 0x8
/* 103E80 800E5D90 1040000E */  beqz       $v0, .Lmenu_800E5DCC
/* 103E84 800E5D94 00000000 */   nop
/* 103E88 800E5D98 8E020008 */  lw         $v0, 0x8($s0)
/* 103E8C 800E5D9C 1040000B */  beqz       $v0, .Lmenu_800E5DCC
/* 103E90 800E5DA0 00000000 */   nop
/* 103E94 800E5DA4 8E05004C */  lw         $a1, 0x4C($s0)
/* 103E98 800E5DA8 0C0383DE */  jal        func_menu_800E0F78
/* 103E9C 800E5DAC 26060024 */   addiu     $a2, $s0, 0x24
/* 103EA0 800E5DB0 02002021 */  addu       $a0, $s0, $zero
/* 103EA4 800E5DB4 26060030 */  addiu      $a2, $s0, 0x30
/* 103EA8 800E5DB8 8E05004C */  lw         $a1, 0x4C($s0)
/* 103EAC 800E5DBC 0C038419 */  jal        func_menu_800E1064
/* 103EB0 800E5DC0 2607003C */   addiu     $a3, $s0, 0x3C
/* 103EB4 800E5DC4 080397A3 */  j          .Lmenu_800E5E8C
/* 103EB8 800E5DC8 00000000 */   nop
.Lmenu_800E5DCC:
/* 103EBC 800E5DCC 8E020048 */  lw         $v0, 0x48($s0)
/* 103EC0 800E5DD0 30420001 */  andi       $v0, $v0, 0x1
/* 103EC4 800E5DD4 14400012 */  bnez       $v0, .Lmenu_800E5E20
/* 103EC8 800E5DD8 00000000 */   nop
/* 103ECC 800E5DDC 8E030000 */  lw         $v1, 0x0($s0)
/* 103ED0 800E5DE0 10600009 */  beqz       $v1, .Lmenu_800E5E08
/* 103ED4 800E5DE4 00000000 */   nop
/* 103ED8 800E5DE8 8C620024 */  lw         $v0, 0x24($v1)
/* 103EDC 800E5DEC 26050024 */  addiu      $a1, $s0, 0x24
/* 103EE0 800E5DF0 84440010 */  lh         $a0, 0x10($v0)
/* 103EE4 800E5DF4 8C420014 */  lw         $v0, 0x14($v0)
/* 103EE8 800E5DF8 0040F809 */  jalr       $v0
/* 103EEC 800E5DFC 00642021 */   addu      $a0, $v1, $a0
/* 103EF0 800E5E00 08039788 */  j          .Lmenu_800E5E20
/* 103EF4 800E5E04 00000000 */   nop
.Lmenu_800E5E08:
/* 103EF8 800E5E08 8CA80000 */  lw         $t0, 0x0($a1)
/* 103EFC 800E5E0C 8CA90004 */  lw         $t1, 0x4($a1)
/* 103F00 800E5E10 8CAA0008 */  lw         $t2, 0x8($a1)
/* 103F04 800E5E14 AE080024 */  sw         $t0, 0x24($s0)
/* 103F08 800E5E18 AE090028 */  sw         $t1, 0x28($s0)
/* 103F0C 800E5E1C AE0A002C */  sw         $t2, 0x2C($s0)
.Lmenu_800E5E20:
/* 103F10 800E5E20 8E020048 */  lw         $v0, 0x48($s0)
/* 103F14 800E5E24 30420002 */  andi       $v0, $v0, 0x2
/* 103F18 800E5E28 14400018 */  bnez       $v0, .Lmenu_800E5E8C
/* 103F1C 800E5E2C 00000000 */   nop
/* 103F20 800E5E30 8E030000 */  lw         $v1, 0x0($s0)
/* 103F24 800E5E34 10600009 */  beqz       $v1, .Lmenu_800E5E5C
/* 103F28 800E5E38 26050030 */   addiu     $a1, $s0, 0x30
/* 103F2C 800E5E3C 8C620024 */  lw         $v0, 0x24($v1)
/* 103F30 800E5E40 2606003C */  addiu      $a2, $s0, 0x3C
/* 103F34 800E5E44 84440088 */  lh         $a0, 0x88($v0)
/* 103F38 800E5E48 8C42008C */  lw         $v0, 0x8C($v0)
/* 103F3C 800E5E4C 0040F809 */  jalr       $v0
/* 103F40 800E5E50 00642021 */   addu      $a0, $v1, $a0
/* 103F44 800E5E54 080397A3 */  j          .Lmenu_800E5E8C
/* 103F48 800E5E58 00000000 */   nop
.Lmenu_800E5E5C:
/* 103F4C 800E5E5C 8E280000 */  lw         $t0, 0x0($s1)
/* 103F50 800E5E60 8E290004 */  lw         $t1, 0x4($s1)
/* 103F54 800E5E64 8E2A0008 */  lw         $t2, 0x8($s1)
/* 103F58 800E5E68 AE080030 */  sw         $t0, 0x30($s0)
/* 103F5C 800E5E6C AE090034 */  sw         $t1, 0x34($s0)
/* 103F60 800E5E70 AE0A0038 */  sw         $t2, 0x38($s0)
/* 103F64 800E5E74 8E480000 */  lw         $t0, 0x0($s2)
/* 103F68 800E5E78 8E490004 */  lw         $t1, 0x4($s2)
/* 103F6C 800E5E7C 8E4A0008 */  lw         $t2, 0x8($s2)
/* 103F70 800E5E80 AE08003C */  sw         $t0, 0x3C($s0)
/* 103F74 800E5E84 AE090040 */  sw         $t1, 0x40($s0)
/* 103F78 800E5E88 AE0A0044 */  sw         $t2, 0x44($s0)
.Lmenu_800E5E8C:
/* 103F7C 800E5E8C 0C0397CD */  jal        func_menu_800E5F34
/* 103F80 800E5E90 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800E5E94:
/* 103F84 800E5E94 8FBF001C */  lw         $ra, 0x1C($sp)
/* 103F88 800E5E98 8FB20018 */  lw         $s2, 0x18($sp)
/* 103F8C 800E5E9C 8FB10014 */  lw         $s1, 0x14($sp)
/* 103F90 800E5EA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 103F94 800E5EA4 03E00008 */  jr         $ra
/* 103F98 800E5EA8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E5EAC
/* 103F9C 800E5EAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103FA0 800E5EB0 00801821 */  addu       $v1, $a0, $zero
/* 103FA4 800E5EB4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 103FA8 800E5EB8 8C620018 */  lw         $v0, 0x18($v1)
/* 103FAC 800E5EBC 14400009 */  bnez       $v0, .Lmenu_800E5EE4
/* 103FB0 800E5EC0 00000000 */   nop
/* 103FB4 800E5EC4 8C620000 */  lw         $v0, 0x0($v1)
/* 103FB8 800E5EC8 50400001 */  beql       $v0, $zero, .Lmenu_800E5ED0
/* 103FBC 800E5ECC AC650000 */   sw        $a1, 0x0($v1)
.Lmenu_800E5ED0:
/* 103FC0 800E5ED0 8C620010 */  lw         $v0, 0x10($v1)
/* 103FC4 800E5ED4 84440010 */  lh         $a0, 0x10($v0)
/* 103FC8 800E5ED8 8C420014 */  lw         $v0, 0x14($v0)
/* 103FCC 800E5EDC 0040F809 */  jalr       $v0
/* 103FD0 800E5EE0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E5EE4:
/* 103FD4 800E5EE4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 103FD8 800E5EE8 03E00008 */  jr         $ra
/* 103FDC 800E5EEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E5EF0
/* 103FE0 800E5EF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103FE4 800E5EF4 00801821 */  addu       $v1, $a0, $zero
/* 103FE8 800E5EF8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 103FEC 800E5EFC 8C620018 */  lw         $v0, 0x18($v1)
/* 103FF0 800E5F00 14400009 */  bnez       $v0, .Lmenu_800E5F28
/* 103FF4 800E5F04 00000000 */   nop
/* 103FF8 800E5F08 8C620008 */  lw         $v0, 0x8($v1)
/* 103FFC 800E5F0C 50400001 */  beql       $v0, $zero, .Lmenu_800E5F14
/* 104000 800E5F10 AC650008 */   sw        $a1, 0x8($v1)
.Lmenu_800E5F14:
/* 104004 800E5F14 8C620010 */  lw         $v0, 0x10($v1)
/* 104008 800E5F18 84440010 */  lh         $a0, 0x10($v0)
/* 10400C 800E5F1C 8C420014 */  lw         $v0, 0x14($v0)
/* 104010 800E5F20 0040F809 */  jalr       $v0
/* 104014 800E5F24 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E5F28:
/* 104018 800E5F28 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10401C 800E5F2C 03E00008 */  jr         $ra
/* 104020 800E5F30 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E5F34
/* 104024 800E5F34 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 104028 800E5F38 AFB00018 */  sw         $s0, 0x18($sp)
/* 10402C 800E5F3C 00808021 */  addu       $s0, $a0, $zero
/* 104030 800E5F40 2602003C */  addiu      $v0, $s0, 0x3C
/* 104034 800E5F44 2605001C */  addiu      $a1, $s0, 0x1C
/* 104038 800E5F48 26060024 */  addiu      $a2, $s0, 0x24
/* 10403C 800E5F4C AFBF001C */  sw         $ra, 0x1C($sp)
/* 104040 800E5F50 AFA20010 */  sw         $v0, 0x10($sp)
/* 104044 800E5F54 8E040014 */  lw         $a0, 0x14($s0)
/* 104048 800E5F58 0C0107DD */  jal        func_80041F74
/* 10404C 800E5F5C 26070030 */   addiu     $a3, $s0, 0x30
/* 104050 800E5F60 AE020018 */  sw         $v0, 0x18($s0)
/* 104054 800E5F64 8FBF001C */  lw         $ra, 0x1C($sp)
/* 104058 800E5F68 8FB00018 */  lw         $s0, 0x18($sp)
/* 10405C 800E5F6C 03E00008 */  jr         $ra
/* 104060 800E5F70 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E5F74
/* 104064 800E5F74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104068 800E5F78 AFB00010 */  sw         $s0, 0x10($sp)
/* 10406C 800E5F7C 00808021 */  addu       $s0, $a0, $zero
/* 104070 800E5F80 AFBF0014 */  sw         $ra, 0x14($sp)
/* 104074 800E5F84 8E050018 */  lw         $a1, 0x18($s0)
/* 104078 800E5F88 10A00005 */  beqz       $a1, .Lmenu_800E5FA0
/* 10407C 800E5F8C 00000000 */   nop
/* 104080 800E5F90 8E040014 */  lw         $a0, 0x14($s0)
/* 104084 800E5F94 0C01087B */  jal        func_800421EC
/* 104088 800E5F98 00000000 */   nop
/* 10408C 800E5F9C AE000018 */  sw         $zero, 0x18($s0)
.Lmenu_800E5FA0:
/* 104090 800E5FA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 104094 800E5FA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 104098 800E5FA8 03E00008 */  jr         $ra
/* 10409C 800E5FAC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E5FB0
/* 1040A0 800E5FB0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1040A4 800E5FB4 AFB00040 */  sw         $s0, 0x40($sp)
/* 1040A8 800E5FB8 00808021 */  addu       $s0, $a0, $zero
/* 1040AC 800E5FBC AFBF004C */  sw         $ra, 0x4C($sp)
/* 1040B0 800E5FC0 AFB20048 */  sw         $s2, 0x48($sp)
/* 1040B4 800E5FC4 AFB10044 */  sw         $s1, 0x44($sp)
/* 1040B8 800E5FC8 8E020018 */  lw         $v0, 0x18($s0)
/* 1040BC 800E5FCC 1040001D */  beqz       $v0, .Lmenu_800E6044
/* 1040C0 800E5FD0 00000000 */   nop
/* 1040C4 800E5FD4 8E020048 */  lw         $v0, 0x48($s0)
/* 1040C8 800E5FD8 30420008 */  andi       $v0, $v0, 0x8
/* 1040CC 800E5FDC 10400019 */  beqz       $v0, .Lmenu_800E6044
/* 1040D0 800E5FE0 00000000 */   nop
/* 1040D4 800E5FE4 8E020008 */  lw         $v0, 0x8($s0)
/* 1040D8 800E5FE8 10400016 */  beqz       $v0, .Lmenu_800E6044
/* 1040DC 800E5FEC 27B10030 */   addiu     $s1, $sp, 0x30
/* 1040E0 800E5FF0 8E05004C */  lw         $a1, 0x4C($s0)
/* 1040E4 800E5FF4 0C0383DE */  jal        func_menu_800E0F78
/* 1040E8 800E5FF8 02203021 */   addu      $a2, $s1, $zero
/* 1040EC 800E5FFC 02002021 */  addu       $a0, $s0, $zero
/* 1040F0 800E6000 27A60010 */  addiu      $a2, $sp, 0x10
/* 1040F4 800E6004 27B20020 */  addiu      $s2, $sp, 0x20
/* 1040F8 800E6008 8E05004C */  lw         $a1, 0x4C($s0)
/* 1040FC 800E600C 0C038419 */  jal        func_menu_800E1064
/* 104100 800E6010 02403821 */   addu      $a3, $s2, $zero
/* 104104 800E6014 8E020018 */  lw         $v0, 0x18($s0)
/* 104108 800E6018 8C440000 */  lw         $a0, 0x0($v0)
/* 10410C 800E601C 10800005 */  beqz       $a0, .Lmenu_800E6034
/* 104110 800E6020 00000000 */   nop
/* 104114 800E6024 0C01058D */  jal        func_80041634
/* 104118 800E6028 02202821 */   addu      $a1, $s1, $zero
/* 10411C 800E602C 8E020018 */  lw         $v0, 0x18($s0)
/* 104120 800E6030 8C440000 */  lw         $a0, 0x0($v0)
.Lmenu_800E6034:
/* 104124 800E6034 10800003 */  beqz       $a0, .Lmenu_800E6044
/* 104128 800E6038 27A50010 */   addiu     $a1, $sp, 0x10
/* 10412C 800E603C 0C010521 */  jal        func_80041484
/* 104130 800E6040 02403021 */   addu      $a2, $s2, $zero
.Lmenu_800E6044:
/* 104134 800E6044 8FBF004C */  lw         $ra, 0x4C($sp)
/* 104138 800E6048 8FB20048 */  lw         $s2, 0x48($sp)
/* 10413C 800E604C 8FB10044 */  lw         $s1, 0x44($sp)
/* 104140 800E6050 8FB00040 */  lw         $s0, 0x40($sp)
/* 104144 800E6054 03E00008 */  jr         $ra
/* 104148 800E6058 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800E605C
/* 10414C 800E605C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104150 800E6060 AFBF0010 */  sw         $ra, 0x10($sp)
/* 104154 800E6064 0C038391 */  jal        func_menu_800E0E44
/* 104158 800E6068 00000000 */   nop
/* 10415C 800E606C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 104160 800E6070 03E00008 */  jr         $ra
/* 104164 800E6074 27BD0018 */   addiu     $sp, $sp, 0x18
