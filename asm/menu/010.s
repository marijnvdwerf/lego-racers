.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800D1670
/* EF760 800D1670 8C840000 */  lw         $a0, 0x0($a0)
/* EF764 800D1674 8CA50000 */  lw         $a1, 0x0($a1)
/* EF768 800D1678 94830002 */  lhu        $v1, 0x2($a0)
/* EF76C 800D167C 94A20002 */  lhu        $v0, 0x2($a1)
/* EF770 800D1680 00621023 */  subu       $v0, $v1, $v0
/* EF774 800D1684 1440000E */  bnez       $v0, .Lmenu_800D16C0
/* EF778 800D1688 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* EF77C 800D168C 3C028013 */  lui        $v0, %hi(D_menu_8012A520)
/* EF780 800D1690 94830008 */  lhu        $v1, 0x8($a0)
/* EF784 800D1694 8C44A520 */  lw         $a0, %lo(D_menu_8012A520)($v0)
/* EF788 800D1698 94A20008 */  lhu        $v0, 0x8($a1)
/* EF78C 800D169C 00031940 */  sll        $v1, $v1, 5
/* EF790 800D16A0 00641821 */  addu       $v1, $v1, $a0
/* EF794 800D16A4 00021140 */  sll        $v0, $v0, 5
/* EF798 800D16A8 00441021 */  addu       $v0, $v0, $a0
/* EF79C 800D16AC C4600014 */  lwc1       $f0, 0x14($v1)
/* EF7A0 800D16B0 C4420014 */  lwc1       $f2, 0x14($v0)
/* EF7A4 800D16B4 46020001 */  sub.s      $f0, $f0, $f2
/* EF7A8 800D16B8 E7A00000 */  swc1       $f0, 0x0($sp)
/* EF7AC 800D16BC 8FA20000 */  lw         $v0, 0x0($sp)
.Lmenu_800D16C0:
/* EF7B0 800D16C0 03E00008 */  jr         $ra
/* EF7B4 800D16C4 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_menu_800D16C8
/* EF7B8 800D16C8 3C038013 */  lui        $v1, %hi(D_menu_8012A520)
/* EF7BC 800D16CC 94820008 */  lhu        $v0, 0x8($a0)
/* EF7C0 800D16D0 8C66A520 */  lw         $a2, %lo(D_menu_8012A520)($v1)
/* EF7C4 800D16D4 00021140 */  sll        $v0, $v0, 5
/* EF7C8 800D16D8 00C21021 */  addu       $v0, $a2, $v0
/* EF7CC 800D16DC C440000C */  lwc1       $f0, 0xC($v0)
/* EF7D0 800D16E0 E4A00004 */  swc1       $f0, 0x4($a1)
/* EF7D4 800D16E4 E4A00000 */  swc1       $f0, 0x0($a1)
/* EF7D8 800D16E8 C4400010 */  lwc1       $f0, 0x10($v0)
/* EF7DC 800D16EC E4A0000C */  swc1       $f0, 0xC($a1)
/* EF7E0 800D16F0 E4A00008 */  swc1       $f0, 0x8($a1)
/* EF7E4 800D16F4 C4400014 */  lwc1       $f0, 0x14($v0)
/* EF7E8 800D16F8 E4A00014 */  swc1       $f0, 0x14($a1)
/* EF7EC 800D16FC E4A00010 */  swc1       $f0, 0x10($a1)
/* EF7F0 800D1700 90820000 */  lbu        $v0, 0x0($a0)
/* EF7F4 800D1704 24030001 */  addiu      $v1, $zero, 0x1
/* EF7F8 800D1708 0062102A */  slt        $v0, $v1, $v0
/* EF7FC 800D170C 1040002E */  beqz       $v0, .Lmenu_800D17C8
/* EF800 800D1710 00C03821 */   addu      $a3, $a2, $zero
/* EF804 800D1714 24860002 */  addiu      $a2, $a0, 0x2
.Lmenu_800D1718:
/* EF808 800D1718 94C20008 */  lhu        $v0, 0x8($a2)
/* EF80C 800D171C C4A00000 */  lwc1       $f0, 0x0($a1)
/* EF810 800D1720 00021140 */  sll        $v0, $v0, 5
/* EF814 800D1724 00E21021 */  addu       $v0, $a3, $v0
/* EF818 800D1728 C442000C */  lwc1       $f2, 0xC($v0)
/* EF81C 800D172C 4600103C */  c.lt.s     $f2, $f0
/* EF820 800D1730 00000000 */  nop
/* EF824 800D1734 45030001 */  bc1tl      .Lmenu_800D173C
/* EF828 800D1738 E4A20000 */   swc1      $f2, 0x0($a1)
.Lmenu_800D173C:
/* EF82C 800D173C C4A00004 */  lwc1       $f0, 0x4($a1)
/* EF830 800D1740 C442000C */  lwc1       $f2, 0xC($v0)
/* EF834 800D1744 4602003C */  c.lt.s     $f0, $f2
/* EF838 800D1748 00000000 */  nop
/* EF83C 800D174C 45030001 */  bc1tl      .Lmenu_800D1754
/* EF840 800D1750 E4A20004 */   swc1      $f2, 0x4($a1)
.Lmenu_800D1754:
/* EF844 800D1754 C4A00008 */  lwc1       $f0, 0x8($a1)
/* EF848 800D1758 C4420010 */  lwc1       $f2, 0x10($v0)
/* EF84C 800D175C 4600103C */  c.lt.s     $f2, $f0
/* EF850 800D1760 00000000 */  nop
/* EF854 800D1764 45030001 */  bc1tl      .Lmenu_800D176C
/* EF858 800D1768 E4A20008 */   swc1      $f2, 0x8($a1)
.Lmenu_800D176C:
/* EF85C 800D176C C4A0000C */  lwc1       $f0, 0xC($a1)
/* EF860 800D1770 C4420010 */  lwc1       $f2, 0x10($v0)
/* EF864 800D1774 4602003C */  c.lt.s     $f0, $f2
/* EF868 800D1778 00000000 */  nop
/* EF86C 800D177C 45030001 */  bc1tl      .Lmenu_800D1784
/* EF870 800D1780 E4A2000C */   swc1      $f2, 0xC($a1)
.Lmenu_800D1784:
/* EF874 800D1784 C4A00010 */  lwc1       $f0, 0x10($a1)
/* EF878 800D1788 C4420014 */  lwc1       $f2, 0x14($v0)
/* EF87C 800D178C 4600103C */  c.lt.s     $f2, $f0
/* EF880 800D1790 00000000 */  nop
/* EF884 800D1794 45030001 */  bc1tl      .Lmenu_800D179C
/* EF888 800D1798 E4A20010 */   swc1      $f2, 0x10($a1)
.Lmenu_800D179C:
/* EF88C 800D179C C4A00014 */  lwc1       $f0, 0x14($a1)
/* EF890 800D17A0 C4420014 */  lwc1       $f2, 0x14($v0)
/* EF894 800D17A4 4602003C */  c.lt.s     $f0, $f2
/* EF898 800D17A8 00000000 */  nop
/* EF89C 800D17AC 45030001 */  bc1tl      .Lmenu_800D17B4
/* EF8A0 800D17B0 E4A20014 */   swc1      $f2, 0x14($a1)
.Lmenu_800D17B4:
/* EF8A4 800D17B4 90820000 */  lbu        $v0, 0x0($a0)
/* EF8A8 800D17B8 24630001 */  addiu      $v1, $v1, 0x1
/* EF8AC 800D17BC 0062102A */  slt        $v0, $v1, $v0
/* EF8B0 800D17C0 1440FFD5 */  bnez       $v0, .Lmenu_800D1718
/* EF8B4 800D17C4 24C60002 */   addiu     $a2, $a2, 0x2
.Lmenu_800D17C8:
/* EF8B8 800D17C8 03E00008 */  jr         $ra
/* EF8BC 800D17CC 00000000 */   nop

glabel func_menu_800D17D0
/* EF8C0 800D17D0 44872000 */  mtc1       $a3, $f4
/* EF8C4 800D17D4 C4A20018 */  lwc1       $f2, 0x18($a1)
/* EF8C8 800D17D8 46022082 */  mul.s      $f2, $f4, $f2
/* EF8CC 800D17DC C7A60010 */  lwc1       $f6, 0x10($sp)
/* EF8D0 800D17E0 C4C00018 */  lwc1       $f0, 0x18($a2)
/* EF8D4 800D17E4 46003002 */  mul.s      $f0, $f6, $f0
/* EF8D8 800D17E8 46001080 */  add.s      $f2, $f2, $f0
/* EF8DC 800D17EC E4820018 */  swc1       $f2, 0x18($a0)
/* EF8E0 800D17F0 C4A2001C */  lwc1       $f2, 0x1C($a1)
/* EF8E4 800D17F4 46022082 */  mul.s      $f2, $f4, $f2
/* EF8E8 800D17F8 C4C0001C */  lwc1       $f0, 0x1C($a2)
/* EF8EC 800D17FC 46003002 */  mul.s      $f0, $f6, $f0
/* EF8F0 800D1800 46001080 */  add.s      $f2, $f2, $f0
/* EF8F4 800D1804 E482001C */  swc1       $f2, 0x1C($a0)
/* EF8F8 800D1808 80A20009 */  lb         $v0, 0x9($a1)
/* EF8FC 800D180C 44821000 */  mtc1       $v0, $f2
/* EF900 800D1810 468010A0 */  cvt.s.w    $f2, $f2
/* EF904 800D1814 46022082 */  mul.s      $f2, $f4, $f2
/* EF908 800D1818 80C20009 */  lb         $v0, 0x9($a2)
/* EF90C 800D181C 44820000 */  mtc1       $v0, $f0
/* EF910 800D1820 46800020 */  cvt.s.w    $f0, $f0
/* EF914 800D1824 46003002 */  mul.s      $f0, $f6, $f0
/* EF918 800D1828 46001080 */  add.s      $f2, $f2, $f0
/* EF91C 800D182C 4600120D */  trunc.w.s  $f8, $f2
/* EF920 800D1830 44024000 */  mfc1       $v0, $f8
/* EF924 800D1834 A0820009 */  sb         $v0, 0x9($a0)
/* EF928 800D1838 80A2000A */  lb         $v0, 0xA($a1)
/* EF92C 800D183C 44821000 */  mtc1       $v0, $f2
/* EF930 800D1840 468010A0 */  cvt.s.w    $f2, $f2
/* EF934 800D1844 46022082 */  mul.s      $f2, $f4, $f2
/* EF938 800D1848 80C2000A */  lb         $v0, 0xA($a2)
/* EF93C 800D184C 44820000 */  mtc1       $v0, $f0
/* EF940 800D1850 46800020 */  cvt.s.w    $f0, $f0
/* EF944 800D1854 46003002 */  mul.s      $f0, $f6, $f0
/* EF948 800D1858 46001080 */  add.s      $f2, $f2, $f0
/* EF94C 800D185C 4600120D */  trunc.w.s  $f8, $f2
/* EF950 800D1860 44024000 */  mfc1       $v0, $f8
/* EF954 800D1864 A082000A */  sb         $v0, 0xA($a0)
/* EF958 800D1868 80A2000B */  lb         $v0, 0xB($a1)
/* EF95C 800D186C 44820000 */  mtc1       $v0, $f0
/* EF960 800D1870 46800020 */  cvt.s.w    $f0, $f0
/* EF964 800D1874 46002102 */  mul.s      $f4, $f4, $f0
/* EF968 800D1878 80C2000B */  lb         $v0, 0xB($a2)
/* EF96C 800D187C 44820000 */  mtc1       $v0, $f0
/* EF970 800D1880 46800020 */  cvt.s.w    $f0, $f0
/* EF974 800D1884 46003182 */  mul.s      $f6, $f6, $f0
/* EF978 800D1888 46062100 */  add.s      $f4, $f4, $f6
/* EF97C 800D188C 4600220D */  trunc.w.s  $f8, $f4
/* EF980 800D1890 44024000 */  mfc1       $v0, $f8
/* EF984 800D1894 03E00008 */  jr         $ra
/* EF988 800D1898 A082000B */   sb        $v0, 0xB($a0)

glabel func_menu_800D189C
/* EF98C 800D189C 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* EF990 800D18A0 AFB10084 */  sw         $s1, 0x84($sp)
/* EF994 800D18A4 00808821 */  addu       $s1, $a0, $zero
/* EF998 800D18A8 AFB3008C */  sw         $s3, 0x8C($sp)
/* EF99C 800D18AC 00009821 */  addu       $s3, $zero, $zero
/* EF9A0 800D18B0 AFBF00A4 */  sw         $ra, 0xA4($sp)
/* EF9A4 800D18B4 AFBE00A0 */  sw         $fp, 0xA0($sp)
/* EF9A8 800D18B8 AFB7009C */  sw         $s7, 0x9C($sp)
/* EF9AC 800D18BC AFB60098 */  sw         $s6, 0x98($sp)
/* EF9B0 800D18C0 AFB50094 */  sw         $s5, 0x94($sp)
/* EF9B4 800D18C4 AFB40090 */  sw         $s4, 0x90($sp)
/* EF9B8 800D18C8 AFB20088 */  sw         $s2, 0x88($sp)
/* EF9BC 800D18CC AFB00080 */  sw         $s0, 0x80($sp)
/* EF9C0 800D18D0 F7B800B8 */  sdc1       $f24, 0xB8($sp)
/* EF9C4 800D18D4 F7B600B0 */  sdc1       $f22, 0xB0($sp)
/* EF9C8 800D18D8 F7B400A8 */  sdc1       $f20, 0xA8($sp)
/* EF9CC 800D18DC 8E220E14 */  lw         $v0, 0xE14($s1)
/* EF9D0 800D18E0 18400016 */  blez       $v0, .Lmenu_800D193C
/* EF9D4 800D18E4 0260B821 */   addu      $s7, $s3, $zero
/* EF9D8 800D18E8 24070489 */  addiu      $a3, $zero, 0x489
.Lmenu_800D18EC:
/* EF9DC 800D18EC 8E240DD0 */  lw         $a0, 0xDD0($s1)
/* EF9E0 800D18F0 00171080 */  sll        $v0, $s7, 2
/* EF9E4 800D18F4 00442821 */  addu       $a1, $v0, $a0
/* EF9E8 800D18F8 8CA60000 */  lw         $a2, 0x0($a1)
/* EF9EC 800D18FC 94C20000 */  lhu        $v0, 0x0($a2)
/* EF9F0 800D1900 3042FF89 */  andi       $v0, $v0, 0xFF89
/* EF9F4 800D1904 14470008 */  bne        $v0, $a3, .Lmenu_800D1928
/* EF9F8 800D1908 00131880 */   sll       $v1, $s3, 2
/* EF9FC 800D190C 00641021 */  addu       $v0, $v1, $a0
/* EFA00 800D1910 8C420000 */  lw         $v0, 0x0($v0)
/* EFA04 800D1914 ACA20000 */  sw         $v0, 0x0($a1)
/* EFA08 800D1918 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFA0C 800D191C 26730001 */  addiu      $s3, $s3, 0x1
/* EFA10 800D1920 00621821 */  addu       $v1, $v1, $v0
/* EFA14 800D1924 AC660000 */  sw         $a2, 0x0($v1)
.Lmenu_800D1928:
/* EFA18 800D1928 8E220E14 */  lw         $v0, 0xE14($s1)
/* EFA1C 800D192C 26F70001 */  addiu      $s7, $s7, 0x1
/* EFA20 800D1930 02E2102A */  slt        $v0, $s7, $v0
/* EFA24 800D1934 1440FFED */  bnez       $v0, .Lmenu_800D18EC
/* EFA28 800D1938 00000000 */   nop
.Lmenu_800D193C:
/* EFA2C 800D193C 0000B821 */  addu       $s7, $zero, $zero
/* EFA30 800D1940 3C01800D */  lui        $at, %hi(D_menu_800CA7D0)
/* EFA34 800D1944 C438A7D0 */  lwc1       $f24, %lo(D_menu_800CA7D0)($at)
/* EFA38 800D1948 27B40060 */  addiu      $s4, $sp, 0x60
/* EFA3C 800D194C 02E0F021 */  addu       $fp, $s7, $zero
.Lmenu_800D1950:
/* EFA40 800D1950 2662FFFF */  addiu      $v0, $s3, -0x1
/* EFA44 800D1954 02E2102A */  slt        $v0, $s7, $v0
/* EFA48 800D1958 1040032A */  beqz       $v0, .Lmenu_800D2604
/* EFA4C 800D195C 27A50018 */   addiu     $a1, $sp, 0x18
/* EFA50 800D1960 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFA54 800D1964 26F50001 */  addiu      $s5, $s7, 0x1
/* EFA58 800D1968 03C21021 */  addu       $v0, $fp, $v0
/* EFA5C 800D196C 8C440000 */  lw         $a0, 0x0($v0)
/* EFA60 800D1970 0C0345B2 */  jal        func_menu_800D16C8
/* EFA64 800D1974 03C0B021 */   addu      $s6, $fp, $zero
.Lmenu_800D1978:
/* EFA68 800D1978 02B3102A */  slt        $v0, $s5, $s3
/* EFA6C 800D197C 1040031E */  beqz       $v0, .Lmenu_800D25F8
/* EFA70 800D1980 00151080 */   sll       $v0, $s5, 2
/* EFA74 800D1984 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* EFA78 800D1988 00431021 */  addu       $v0, $v0, $v1
/* EFA7C 800D198C 8C440000 */  lw         $a0, 0x0($v0)
/* EFA80 800D1990 0C0345B2 */  jal        func_menu_800D16C8
/* EFA84 800D1994 27A50030 */   addiu     $a1, $sp, 0x30
/* EFA88 800D1998 C7A20028 */  lwc1       $f2, 0x28($sp)
/* EFA8C 800D199C C7A00040 */  lwc1       $f0, 0x40($sp)
/* EFA90 800D19A0 46001081 */  sub.s      $f2, $f2, $f0
/* EFA94 800D19A4 3C01800D */  lui        $at, %hi(D_menu_800CA7D4)
/* EFA98 800D19A8 C420A7D4 */  lwc1       $f0, %lo(D_menu_800CA7D4)($at)
/* EFA9C 800D19AC 4602003C */  c.lt.s     $f0, $f2
/* EFAA0 800D19B0 00000000 */  nop
/* EFAA4 800D19B4 45000007 */  bc1f       .Lmenu_800D19D4
/* EFAA8 800D19B8 00001021 */   addu      $v0, $zero, $zero
/* EFAAC 800D19BC 3C01800D */  lui        $at, %hi(D_menu_800CA7D8)
/* EFAB0 800D19C0 C420A7D8 */  lwc1       $f0, %lo(D_menu_800CA7D8)($at)
/* EFAB4 800D19C4 4600103C */  c.lt.s     $f2, $f0
/* EFAB8 800D19C8 00000000 */  nop
/* EFABC 800D19CC 45030001 */  bc1tl      .Lmenu_800D19D4
/* EFAC0 800D19D0 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800D19D4:
/* EFAC4 800D19D4 10400306 */  beqz       $v0, .Lmenu_800D25F0
/* EFAC8 800D19D8 00153880 */   sll       $a3, $s5, 2
/* EFACC 800D19DC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFAD0 800D19E0 02C22821 */  addu       $a1, $s6, $v0
/* EFAD4 800D19E4 00E21021 */  addu       $v0, $a3, $v0
/* EFAD8 800D19E8 8CA60000 */  lw         $a2, 0x0($a1)
/* EFADC 800D19EC 8C440000 */  lw         $a0, 0x0($v0)
/* EFAE0 800D19F0 94C30004 */  lhu        $v1, 0x4($a2)
/* EFAE4 800D19F4 94820004 */  lhu        $v0, 0x4($a0)
/* EFAE8 800D19F8 5062FFDF */  beql       $v1, $v0, .Lmenu_800D1978
/* EFAEC 800D19FC 26B50001 */   addiu     $s5, $s5, 0x1
/* EFAF0 800D1A00 C7A20018 */  lwc1       $f2, 0x18($sp)
/* EFAF4 800D1A04 C7A00034 */  lwc1       $f0, 0x34($sp)
/* EFAF8 800D1A08 4600103C */  c.lt.s     $f2, $f0
/* EFAFC 800D1A0C 00000000 */  nop
/* EFB00 800D1A10 4502FFD9 */  bc1fl      .Lmenu_800D1978
/* EFB04 800D1A14 26B50001 */   addiu     $s5, $s5, 0x1
/* EFB08 800D1A18 C7A20030 */  lwc1       $f2, 0x30($sp)
/* EFB0C 800D1A1C C7A0001C */  lwc1       $f0, 0x1C($sp)
/* EFB10 800D1A20 4600103C */  c.lt.s     $f2, $f0
/* EFB14 800D1A24 00000000 */  nop
/* EFB18 800D1A28 4502FFD3 */  bc1fl      .Lmenu_800D1978
/* EFB1C 800D1A2C 26B50001 */   addiu     $s5, $s5, 0x1
/* EFB20 800D1A30 C7A40020 */  lwc1       $f4, 0x20($sp)
/* EFB24 800D1A34 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* EFB28 800D1A38 4600203C */  c.lt.s     $f4, $f0
/* EFB2C 800D1A3C 00000000 */  nop
/* EFB30 800D1A40 4502FFCD */  bc1fl      .Lmenu_800D1978
/* EFB34 800D1A44 26B50001 */   addiu     $s5, $s5, 0x1
/* EFB38 800D1A48 C7A20038 */  lwc1       $f2, 0x38($sp)
/* EFB3C 800D1A4C C7A00024 */  lwc1       $f0, 0x24($sp)
/* EFB40 800D1A50 4600103C */  c.lt.s     $f2, $f0
/* EFB44 800D1A54 00000000 */  nop
/* EFB48 800D1A58 4502FFC7 */  bc1fl      .Lmenu_800D1978
/* EFB4C 800D1A5C 26B50001 */   addiu     $s5, $s5, 0x1
/* EFB50 800D1A60 46022032 */  c.eq.s     $f4, $f2
/* EFB54 800D1A64 00000000 */  nop
/* EFB58 800D1A68 450100A0 */  bc1t       .Lmenu_800D1CEC
/* EFB5C 800D1A6C 00000000 */   nop
/* EFB60 800D1A70 4604103C */  c.lt.s     $f2, $f4
/* EFB64 800D1A74 00000000 */  nop
/* EFB68 800D1A78 45000029 */  bc1f       .Lmenu_800D1B20
/* EFB6C 800D1A7C 00000000 */   nop
/* EFB70 800D1A80 ACA40000 */  sw         $a0, 0x0($a1)
/* EFB74 800D1A84 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFB78 800D1A88 00E21021 */  addu       $v0, $a3, $v0
/* EFB7C 800D1A8C AC460000 */  sw         $a2, 0x0($v0)
/* EFB80 800D1A90 8FA80018 */  lw         $t0, 0x18($sp)
/* EFB84 800D1A94 8FA9001C */  lw         $t1, 0x1C($sp)
/* EFB88 800D1A98 8FAA0020 */  lw         $t2, 0x20($sp)
/* EFB8C 800D1A9C 8FAB0024 */  lw         $t3, 0x24($sp)
/* EFB90 800D1AA0 AFA80048 */  sw         $t0, 0x48($sp)
/* EFB94 800D1AA4 AFA9004C */  sw         $t1, 0x4C($sp)
/* EFB98 800D1AA8 AFAA0050 */  sw         $t2, 0x50($sp)
/* EFB9C 800D1AAC AFAB0054 */  sw         $t3, 0x54($sp)
/* EFBA0 800D1AB0 8FA80028 */  lw         $t0, 0x28($sp)
/* EFBA4 800D1AB4 8FA9002C */  lw         $t1, 0x2C($sp)
/* EFBA8 800D1AB8 AFA80058 */  sw         $t0, 0x58($sp)
/* EFBAC 800D1ABC AFA9005C */  sw         $t1, 0x5C($sp)
/* EFBB0 800D1AC0 8FA80030 */  lw         $t0, 0x30($sp)
/* EFBB4 800D1AC4 8FA90034 */  lw         $t1, 0x34($sp)
/* EFBB8 800D1AC8 8FAA0038 */  lw         $t2, 0x38($sp)
/* EFBBC 800D1ACC 8FAB003C */  lw         $t3, 0x3C($sp)
/* EFBC0 800D1AD0 AFA80018 */  sw         $t0, 0x18($sp)
/* EFBC4 800D1AD4 AFA9001C */  sw         $t1, 0x1C($sp)
/* EFBC8 800D1AD8 AFAA0020 */  sw         $t2, 0x20($sp)
/* EFBCC 800D1ADC AFAB0024 */  sw         $t3, 0x24($sp)
/* EFBD0 800D1AE0 8FA80040 */  lw         $t0, 0x40($sp)
/* EFBD4 800D1AE4 8FA90044 */  lw         $t1, 0x44($sp)
/* EFBD8 800D1AE8 AFA80028 */  sw         $t0, 0x28($sp)
/* EFBDC 800D1AEC AFA9002C */  sw         $t1, 0x2C($sp)
/* EFBE0 800D1AF0 8FA80048 */  lw         $t0, 0x48($sp)
/* EFBE4 800D1AF4 8FA9004C */  lw         $t1, 0x4C($sp)
/* EFBE8 800D1AF8 8FAA0050 */  lw         $t2, 0x50($sp)
/* EFBEC 800D1AFC 8FAB0054 */  lw         $t3, 0x54($sp)
/* EFBF0 800D1B00 AFA80030 */  sw         $t0, 0x30($sp)
/* EFBF4 800D1B04 AFA90034 */  sw         $t1, 0x34($sp)
/* EFBF8 800D1B08 AFAA0038 */  sw         $t2, 0x38($sp)
/* EFBFC 800D1B0C AFAB003C */  sw         $t3, 0x3C($sp)
/* EFC00 800D1B10 8FA80058 */  lw         $t0, 0x58($sp)
/* EFC04 800D1B14 8FA9005C */  lw         $t1, 0x5C($sp)
/* EFC08 800D1B18 AFA80040 */  sw         $t0, 0x40($sp)
/* EFC0C 800D1B1C AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D1B20:
/* EFC10 800D1B20 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFC14 800D1B24 02C21021 */  addu       $v0, $s6, $v0
/* EFC18 800D1B28 8C500000 */  lw         $s0, 0x0($v0)
/* EFC1C 800D1B2C 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* EFC20 800D1B30 96020008 */  lhu        $v0, 0x8($s0)
/* EFC24 800D1B34 C7A20020 */  lwc1       $f2, 0x20($sp)
/* EFC28 800D1B38 080346DC */  j          .Lmenu_800D1B70
/* EFC2C 800D1B3C 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D1B40:
/* EFC30 800D1B40 9602000A */  lhu        $v0, 0xA($s0)
/* EFC34 800D1B44 96050008 */  lhu        $a1, 0x8($s0)
/* EFC38 800D1B48 9603000E */  lhu        $v1, 0xE($s0)
/* EFC3C 800D1B4C 9604000C */  lhu        $a0, 0xC($s0)
/* EFC40 800D1B50 A6020008 */  sh         $v0, 0x8($s0)
/* EFC44 800D1B54 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* EFC48 800D1B58 00021140 */  sll        $v0, $v0, 5
/* EFC4C 800D1B5C A603000A */  sh         $v1, 0xA($s0)
/* EFC50 800D1B60 A604000E */  sh         $a0, 0xE($s0)
/* EFC54 800D1B64 A605000C */  sh         $a1, 0xC($s0)
/* EFC58 800D1B68 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* EFC5C 800D1B6C C7A20020 */  lwc1       $f2, 0x20($sp)
.Lmenu_800D1B70:
/* EFC60 800D1B70 00431021 */  addu       $v0, $v0, $v1
/* EFC64 800D1B74 C4400010 */  lwc1       $f0, 0x10($v0)
/* EFC68 800D1B78 46020032 */  c.eq.s     $f0, $f2
/* EFC6C 800D1B7C 00000000 */  nop
/* EFC70 800D1B80 4500FFEF */  bc1f       .Lmenu_800D1B40
/* EFC74 800D1B84 00000000 */   nop
/* EFC78 800D1B88 9602000A */  lhu        $v0, 0xA($s0)
/* EFC7C 800D1B8C 00021140 */  sll        $v0, $v0, 5
/* EFC80 800D1B90 00431021 */  addu       $v0, $v0, $v1
/* EFC84 800D1B94 C4400010 */  lwc1       $f0, 0x10($v0)
/* EFC88 800D1B98 46020032 */  c.eq.s     $f0, $f2
/* EFC8C 800D1B9C 00000000 */  nop
/* EFC90 800D1BA0 4500FFE7 */  bc1f       .Lmenu_800D1B40
/* EFC94 800D1BA4 00132080 */   sll       $a0, $s3, 2
/* EFC98 800D1BA8 8E230E14 */  lw         $v1, 0xE14($s1)
/* EFC9C 800D1BAC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFCA0 800D1BB0 00031880 */  sll        $v1, $v1, 2
/* EFCA4 800D1BB4 00621821 */  addu       $v1, $v1, $v0
/* EFCA8 800D1BB8 00821021 */  addu       $v0, $a0, $v0
/* EFCAC 800D1BBC 8C420000 */  lw         $v0, 0x0($v0)
/* EFCB0 800D1BC0 8C720000 */  lw         $s2, 0x0($v1)
/* EFCB4 800D1BC4 AC620000 */  sw         $v0, 0x0($v1)
/* EFCB8 800D1BC8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFCBC 800D1BCC 00822021 */  addu       $a0, $a0, $v0
/* EFCC0 800D1BD0 AC920000 */  sw         $s2, 0x0($a0)
/* EFCC4 800D1BD4 8E220E14 */  lw         $v0, 0xE14($s1)
/* EFCC8 800D1BD8 24420001 */  addiu      $v0, $v0, 0x1
/* EFCCC 800D1BDC AE220E14 */  sw         $v0, 0xE14($s1)
/* EFCD0 800D1BE0 8A080000 */  lwl        $t0, 0x0($s0)
/* EFCD4 800D1BE4 9A080003 */  lwr        $t0, 0x3($s0)
/* EFCD8 800D1BE8 8A090004 */  lwl        $t1, 0x4($s0)
/* EFCDC 800D1BEC 9A090007 */  lwr        $t1, 0x7($s0)
/* EFCE0 800D1BF0 8A0A0008 */  lwl        $t2, 0x8($s0)
/* EFCE4 800D1BF4 9A0A000B */  lwr        $t2, 0xB($s0)
/* EFCE8 800D1BF8 8A0B000C */  lwl        $t3, 0xC($s0)
/* EFCEC 800D1BFC 9A0B000F */  lwr        $t3, 0xF($s0)
/* EFCF0 800D1C00 AA480000 */  swl        $t0, 0x0($s2)
/* EFCF4 800D1C04 BA480003 */  swr        $t0, 0x3($s2)
/* EFCF8 800D1C08 AA490004 */  swl        $t1, 0x4($s2)
/* EFCFC 800D1C0C BA490007 */  swr        $t1, 0x7($s2)
/* EFD00 800D1C10 AA4A0008 */  swl        $t2, 0x8($s2)
/* EFD04 800D1C14 BA4A000B */  swr        $t2, 0xB($s2)
/* EFD08 800D1C18 AA4B000C */  swl        $t3, 0xC($s2)
/* EFD0C 800D1C1C BA4B000F */  swr        $t3, 0xF($s2)
/* EFD10 800D1C20 8E220E14 */  lw         $v0, 0xE14($s1)
/* EFD14 800D1C24 28420672 */  slti       $v0, $v0, 0x672
/* EFD18 800D1C28 10400891 */  beqz       $v0, .Lmenu_800D3E70
/* EFD1C 800D1C2C 26730001 */   addiu     $s3, $s3, 0x1
/* EFD20 800D1C30 02802021 */  addu       $a0, $s4, $zero
/* EFD24 800D1C34 C7A40038 */  lwc1       $f4, 0x38($sp)
/* EFD28 800D1C38 96020008 */  lhu        $v0, 0x8($s0)
/* EFD2C 800D1C3C C7A20020 */  lwc1       $f2, 0x20($sp)
/* EFD30 800D1C40 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* EFD34 800D1C44 C7A00024 */  lwc1       $f0, 0x24($sp)
/* EFD38 800D1C48 9606000C */  lhu        $a2, 0xC($s0)
/* EFD3C 800D1C4C 46022181 */  sub.s      $f6, $f4, $f2
/* EFD40 800D1C50 00021140 */  sll        $v0, $v0, 5
/* EFD44 800D1C54 00622821 */  addu       $a1, $v1, $v0
/* EFD48 800D1C58 46020001 */  sub.s      $f0, $f0, $f2
/* EFD4C 800D1C5C C4A2000C */  lwc1       $f2, 0xC($a1)
/* EFD50 800D1C60 00063140 */  sll        $a2, $a2, 5
/* EFD54 800D1C64 E7A40020 */  swc1       $f4, 0x20($sp)
/* EFD58 800D1C68 E7A40070 */  swc1       $f4, 0x70($sp)
/* EFD5C 800D1C6C 46003583 */  div.s      $f22, $f6, $f0
/* EFD60 800D1C70 4616C501 */  sub.s      $f20, $f24, $f22
/* EFD64 800D1C74 E7A2006C */  swc1       $f2, 0x6C($sp)
/* EFD68 800D1C78 C4A00014 */  lwc1       $f0, 0x14($a1)
/* EFD6C 800D1C7C 4407A000 */  mfc1       $a3, $f20
/* EFD70 800D1C80 00663021 */  addu       $a2, $v1, $a2
/* EFD74 800D1C84 E7A00074 */  swc1       $f0, 0x74($sp)
/* EFD78 800D1C88 0C0345F4 */  jal        func_menu_800D17D0
/* EFD7C 800D1C8C E7B60010 */   swc1      $f22, 0x10($sp)
/* EFD80 800D1C90 02202021 */  addu       $a0, $s1, $zero
/* EFD84 800D1C94 0C0352FC */  jal        func_menu_800D4BF0
/* EFD88 800D1C98 02802821 */   addu      $a1, $s4, $zero
/* EFD8C 800D1C9C 4407A000 */  mfc1       $a3, $f20
/* EFD90 800D1CA0 02802021 */  addu       $a0, $s4, $zero
/* EFD94 800D1CA4 A642000C */  sh         $v0, 0xC($s2)
/* EFD98 800D1CA8 A6020008 */  sh         $v0, 0x8($s0)
/* EFD9C 800D1CAC 9602000A */  lhu        $v0, 0xA($s0)
/* EFDA0 800D1CB0 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* EFDA4 800D1CB4 9606000E */  lhu        $a2, 0xE($s0)
/* EFDA8 800D1CB8 00021140 */  sll        $v0, $v0, 5
/* EFDAC 800D1CBC 00622821 */  addu       $a1, $v1, $v0
/* EFDB0 800D1CC0 00063140 */  sll        $a2, $a2, 5
/* EFDB4 800D1CC4 C4A0000C */  lwc1       $f0, 0xC($a1)
/* EFDB8 800D1CC8 00663021 */  addu       $a2, $v1, $a2
/* EFDBC 800D1CCC E7A0006C */  swc1       $f0, 0x6C($sp)
/* EFDC0 800D1CD0 0C0345F4 */  jal        func_menu_800D17D0
/* EFDC4 800D1CD4 E7B60010 */   swc1      $f22, 0x10($sp)
/* EFDC8 800D1CD8 02202021 */  addu       $a0, $s1, $zero
/* EFDCC 800D1CDC 0C0352FC */  jal        func_menu_800D4BF0
/* EFDD0 800D1CE0 02802821 */   addu      $a1, $s4, $zero
/* EFDD4 800D1CE4 A642000E */  sh         $v0, 0xE($s2)
/* EFDD8 800D1CE8 A602000A */  sh         $v0, 0xA($s0)
.Lmenu_800D1CEC:
/* EFDDC 800D1CEC C7A20024 */  lwc1       $f2, 0x24($sp)
/* EFDE0 800D1CF0 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* EFDE4 800D1CF4 46001032 */  c.eq.s     $f2, $f0
/* EFDE8 800D1CF8 00000000 */  nop
/* EFDEC 800D1CFC 450100AC */  bc1t       .Lmenu_800D1FB0
/* EFDF0 800D1D00 00000000 */   nop
/* EFDF4 800D1D04 4600103C */  c.lt.s     $f2, $f0
/* EFDF8 800D1D08 00000000 */  nop
/* EFDFC 800D1D0C 4500002E */  bc1f       .Lmenu_800D1DC8
/* EFE00 800D1D10 00151880 */   sll       $v1, $s5, 2
/* EFE04 800D1D14 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFE08 800D1D18 02C22021 */  addu       $a0, $s6, $v0
/* EFE0C 800D1D1C 00621021 */  addu       $v0, $v1, $v0
/* EFE10 800D1D20 8C420000 */  lw         $v0, 0x0($v0)
/* EFE14 800D1D24 8C900000 */  lw         $s0, 0x0($a0)
/* EFE18 800D1D28 AC820000 */  sw         $v0, 0x0($a0)
/* EFE1C 800D1D2C 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFE20 800D1D30 00621821 */  addu       $v1, $v1, $v0
/* EFE24 800D1D34 AC700000 */  sw         $s0, 0x0($v1)
/* EFE28 800D1D38 8FA80018 */  lw         $t0, 0x18($sp)
/* EFE2C 800D1D3C 8FA9001C */  lw         $t1, 0x1C($sp)
/* EFE30 800D1D40 8FAA0020 */  lw         $t2, 0x20($sp)
/* EFE34 800D1D44 8FAB0024 */  lw         $t3, 0x24($sp)
/* EFE38 800D1D48 AFA80048 */  sw         $t0, 0x48($sp)
/* EFE3C 800D1D4C AFA9004C */  sw         $t1, 0x4C($sp)
/* EFE40 800D1D50 AFAA0050 */  sw         $t2, 0x50($sp)
/* EFE44 800D1D54 AFAB0054 */  sw         $t3, 0x54($sp)
/* EFE48 800D1D58 8FA80028 */  lw         $t0, 0x28($sp)
/* EFE4C 800D1D5C 8FA9002C */  lw         $t1, 0x2C($sp)
/* EFE50 800D1D60 AFA80058 */  sw         $t0, 0x58($sp)
/* EFE54 800D1D64 AFA9005C */  sw         $t1, 0x5C($sp)
/* EFE58 800D1D68 8FA80030 */  lw         $t0, 0x30($sp)
/* EFE5C 800D1D6C 8FA90034 */  lw         $t1, 0x34($sp)
/* EFE60 800D1D70 8FAA0038 */  lw         $t2, 0x38($sp)
/* EFE64 800D1D74 8FAB003C */  lw         $t3, 0x3C($sp)
/* EFE68 800D1D78 AFA80018 */  sw         $t0, 0x18($sp)
/* EFE6C 800D1D7C AFA9001C */  sw         $t1, 0x1C($sp)
/* EFE70 800D1D80 AFAA0020 */  sw         $t2, 0x20($sp)
/* EFE74 800D1D84 AFAB0024 */  sw         $t3, 0x24($sp)
/* EFE78 800D1D88 8FA80040 */  lw         $t0, 0x40($sp)
/* EFE7C 800D1D8C 8FA90044 */  lw         $t1, 0x44($sp)
/* EFE80 800D1D90 AFA80028 */  sw         $t0, 0x28($sp)
/* EFE84 800D1D94 AFA9002C */  sw         $t1, 0x2C($sp)
/* EFE88 800D1D98 8FA80048 */  lw         $t0, 0x48($sp)
/* EFE8C 800D1D9C 8FA9004C */  lw         $t1, 0x4C($sp)
/* EFE90 800D1DA0 8FAA0050 */  lw         $t2, 0x50($sp)
/* EFE94 800D1DA4 8FAB0054 */  lw         $t3, 0x54($sp)
/* EFE98 800D1DA8 AFA80030 */  sw         $t0, 0x30($sp)
/* EFE9C 800D1DAC AFA90034 */  sw         $t1, 0x34($sp)
/* EFEA0 800D1DB0 AFAA0038 */  sw         $t2, 0x38($sp)
/* EFEA4 800D1DB4 AFAB003C */  sw         $t3, 0x3C($sp)
/* EFEA8 800D1DB8 8FA80058 */  lw         $t0, 0x58($sp)
/* EFEAC 800D1DBC 8FA9005C */  lw         $t1, 0x5C($sp)
/* EFEB0 800D1DC0 AFA80040 */  sw         $t0, 0x40($sp)
/* EFEB4 800D1DC4 AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D1DC8:
/* EFEB8 800D1DC8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFEBC 800D1DCC 02C21021 */  addu       $v0, $s6, $v0
/* EFEC0 800D1DD0 8C500000 */  lw         $s0, 0x0($v0)
/* EFEC4 800D1DD4 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* EFEC8 800D1DD8 9602000C */  lhu        $v0, 0xC($s0)
/* EFECC 800D1DDC C7A20024 */  lwc1       $f2, 0x24($sp)
/* EFED0 800D1DE0 00021140 */  sll        $v0, $v0, 5
/* EFED4 800D1DE4 00431021 */  addu       $v0, $v0, $v1
/* EFED8 800D1DE8 C4400010 */  lwc1       $f0, 0x10($v0)
/* EFEDC 800D1DEC 46020032 */  c.eq.s     $f0, $f2
/* EFEE0 800D1DF0 00000000 */  nop
/* EFEE4 800D1DF4 45000004 */  bc1f       .Lmenu_800D1E08
/* EFEE8 800D1DF8 00000000 */   nop
/* EFEEC 800D1DFC 9602000E */  lhu        $v0, 0xE($s0)
/* EFEF0 800D1E00 08034795 */  j          .Lmenu_800D1E54
/* EFEF4 800D1E04 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D1E08:
/* EFEF8 800D1E08 9602000A */  lhu        $v0, 0xA($s0)
/* EFEFC 800D1E0C 96050008 */  lhu        $a1, 0x8($s0)
/* EFF00 800D1E10 9603000E */  lhu        $v1, 0xE($s0)
/* EFF04 800D1E14 9604000C */  lhu        $a0, 0xC($s0)
/* EFF08 800D1E18 A6020008 */  sh         $v0, 0x8($s0)
/* EFF0C 800D1E1C A605000C */  sh         $a1, 0xC($s0)
/* EFF10 800D1E20 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* EFF14 800D1E24 00021140 */  sll        $v0, $v0, 5
/* EFF18 800D1E28 A603000A */  sh         $v1, 0xA($s0)
/* EFF1C 800D1E2C A604000E */  sh         $a0, 0xE($s0)
/* EFF20 800D1E30 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* EFF24 800D1E34 C7A20024 */  lwc1       $f2, 0x24($sp)
/* EFF28 800D1E38 00431021 */  addu       $v0, $v0, $v1
/* EFF2C 800D1E3C C4400010 */  lwc1       $f0, 0x10($v0)
/* EFF30 800D1E40 46020032 */  c.eq.s     $f0, $f2
/* EFF34 800D1E44 00000000 */  nop
/* EFF38 800D1E48 4500FFEF */  bc1f       .Lmenu_800D1E08
/* EFF3C 800D1E4C 3082FFFF */   andi      $v0, $a0, 0xFFFF
/* EFF40 800D1E50 00021140 */  sll        $v0, $v0, 5
.Lmenu_800D1E54:
/* EFF44 800D1E54 00431021 */  addu       $v0, $v0, $v1
/* EFF48 800D1E58 C4400010 */  lwc1       $f0, 0x10($v0)
/* EFF4C 800D1E5C 46020032 */  c.eq.s     $f0, $f2
/* EFF50 800D1E60 00000000 */  nop
/* EFF54 800D1E64 4500FFE8 */  bc1f       .Lmenu_800D1E08
/* EFF58 800D1E68 00132080 */   sll       $a0, $s3, 2
/* EFF5C 800D1E6C 8E230E14 */  lw         $v1, 0xE14($s1)
/* EFF60 800D1E70 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFF64 800D1E74 00031880 */  sll        $v1, $v1, 2
/* EFF68 800D1E78 00621821 */  addu       $v1, $v1, $v0
/* EFF6C 800D1E7C 00821021 */  addu       $v0, $a0, $v0
/* EFF70 800D1E80 8C420000 */  lw         $v0, 0x0($v0)
/* EFF74 800D1E84 8C720000 */  lw         $s2, 0x0($v1)
/* EFF78 800D1E88 AC620000 */  sw         $v0, 0x0($v1)
/* EFF7C 800D1E8C 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* EFF80 800D1E90 00822021 */  addu       $a0, $a0, $v0
/* EFF84 800D1E94 AC920000 */  sw         $s2, 0x0($a0)
/* EFF88 800D1E98 8E220E14 */  lw         $v0, 0xE14($s1)
/* EFF8C 800D1E9C 24420001 */  addiu      $v0, $v0, 0x1
/* EFF90 800D1EA0 AE220E14 */  sw         $v0, 0xE14($s1)
/* EFF94 800D1EA4 8A080000 */  lwl        $t0, 0x0($s0)
/* EFF98 800D1EA8 9A080003 */  lwr        $t0, 0x3($s0)
/* EFF9C 800D1EAC 8A090004 */  lwl        $t1, 0x4($s0)
/* EFFA0 800D1EB0 9A090007 */  lwr        $t1, 0x7($s0)
/* EFFA4 800D1EB4 8A0A0008 */  lwl        $t2, 0x8($s0)
/* EFFA8 800D1EB8 9A0A000B */  lwr        $t2, 0xB($s0)
/* EFFAC 800D1EBC 8A0B000C */  lwl        $t3, 0xC($s0)
/* EFFB0 800D1EC0 9A0B000F */  lwr        $t3, 0xF($s0)
/* EFFB4 800D1EC4 AA480000 */  swl        $t0, 0x0($s2)
/* EFFB8 800D1EC8 BA480003 */  swr        $t0, 0x3($s2)
/* EFFBC 800D1ECC AA490004 */  swl        $t1, 0x4($s2)
/* EFFC0 800D1ED0 BA490007 */  swr        $t1, 0x7($s2)
/* EFFC4 800D1ED4 AA4A0008 */  swl        $t2, 0x8($s2)
/* EFFC8 800D1ED8 BA4A000B */  swr        $t2, 0xB($s2)
/* EFFCC 800D1EDC AA4B000C */  swl        $t3, 0xC($s2)
/* EFFD0 800D1EE0 BA4B000F */  swr        $t3, 0xF($s2)
/* EFFD4 800D1EE4 8E220E14 */  lw         $v0, 0xE14($s1)
/* EFFD8 800D1EE8 28420672 */  slti       $v0, $v0, 0x672
/* EFFDC 800D1EEC 104007E0 */  beqz       $v0, .Lmenu_800D3E70
/* EFFE0 800D1EF0 26730001 */   addiu     $s3, $s3, 0x1
/* EFFE4 800D1EF4 02802021 */  addu       $a0, $s4, $zero
/* EFFE8 800D1EF8 C7A4003C */  lwc1       $f4, 0x3C($sp)
/* EFFEC 800D1EFC 96020008 */  lhu        $v0, 0x8($s0)
/* EFFF0 800D1F00 C7A20020 */  lwc1       $f2, 0x20($sp)
/* EFFF4 800D1F04 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* EFFF8 800D1F08 C7A00024 */  lwc1       $f0, 0x24($sp)
/* EFFFC 800D1F0C 9606000C */  lhu        $a2, 0xC($s0)
/* F0000 800D1F10 46022181 */  sub.s      $f6, $f4, $f2
/* F0004 800D1F14 00021140 */  sll        $v0, $v0, 5
/* F0008 800D1F18 00622821 */  addu       $a1, $v1, $v0
/* F000C 800D1F1C 46020001 */  sub.s      $f0, $f0, $f2
/* F0010 800D1F20 C4A2000C */  lwc1       $f2, 0xC($a1)
/* F0014 800D1F24 00063140 */  sll        $a2, $a2, 5
/* F0018 800D1F28 E7A40024 */  swc1       $f4, 0x24($sp)
/* F001C 800D1F2C E7A40070 */  swc1       $f4, 0x70($sp)
/* F0020 800D1F30 46003583 */  div.s      $f22, $f6, $f0
/* F0024 800D1F34 4616C501 */  sub.s      $f20, $f24, $f22
/* F0028 800D1F38 E7A2006C */  swc1       $f2, 0x6C($sp)
/* F002C 800D1F3C C4A00014 */  lwc1       $f0, 0x14($a1)
/* F0030 800D1F40 4407A000 */  mfc1       $a3, $f20
/* F0034 800D1F44 00663021 */  addu       $a2, $v1, $a2
/* F0038 800D1F48 E7A00074 */  swc1       $f0, 0x74($sp)
/* F003C 800D1F4C 0C0345F4 */  jal        func_menu_800D17D0
/* F0040 800D1F50 E7B60010 */   swc1      $f22, 0x10($sp)
/* F0044 800D1F54 02202021 */  addu       $a0, $s1, $zero
/* F0048 800D1F58 0C0352FC */  jal        func_menu_800D4BF0
/* F004C 800D1F5C 02802821 */   addu      $a1, $s4, $zero
/* F0050 800D1F60 4407A000 */  mfc1       $a3, $f20
/* F0054 800D1F64 02802021 */  addu       $a0, $s4, $zero
/* F0058 800D1F68 A6420008 */  sh         $v0, 0x8($s2)
/* F005C 800D1F6C A602000C */  sh         $v0, 0xC($s0)
/* F0060 800D1F70 9602000A */  lhu        $v0, 0xA($s0)
/* F0064 800D1F74 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0068 800D1F78 9606000E */  lhu        $a2, 0xE($s0)
/* F006C 800D1F7C 00021140 */  sll        $v0, $v0, 5
/* F0070 800D1F80 00622821 */  addu       $a1, $v1, $v0
/* F0074 800D1F84 00063140 */  sll        $a2, $a2, 5
/* F0078 800D1F88 C4A0000C */  lwc1       $f0, 0xC($a1)
/* F007C 800D1F8C 00663021 */  addu       $a2, $v1, $a2
/* F0080 800D1F90 E7A0006C */  swc1       $f0, 0x6C($sp)
/* F0084 800D1F94 0C0345F4 */  jal        func_menu_800D17D0
/* F0088 800D1F98 E7B60010 */   swc1      $f22, 0x10($sp)
/* F008C 800D1F9C 02202021 */  addu       $a0, $s1, $zero
/* F0090 800D1FA0 0C0352FC */  jal        func_menu_800D4BF0
/* F0094 800D1FA4 02802821 */   addu      $a1, $s4, $zero
/* F0098 800D1FA8 A642000A */  sh         $v0, 0xA($s2)
/* F009C 800D1FAC A602000E */  sh         $v0, 0xE($s0)
.Lmenu_800D1FB0:
/* F00A0 800D1FB0 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F00A4 800D1FB4 C7A00030 */  lwc1       $f0, 0x30($sp)
/* F00A8 800D1FB8 46001032 */  c.eq.s     $f2, $f0
/* F00AC 800D1FBC 00000000 */  nop
/* F00B0 800D1FC0 450100A5 */  bc1t       .Lmenu_800D2258
/* F00B4 800D1FC4 00000000 */   nop
/* F00B8 800D1FC8 4602003C */  c.lt.s     $f0, $f2
/* F00BC 800D1FCC 00000000 */  nop
/* F00C0 800D1FD0 4500002E */  bc1f       .Lmenu_800D208C
/* F00C4 800D1FD4 00151880 */   sll       $v1, $s5, 2
/* F00C8 800D1FD8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F00CC 800D1FDC 02C22021 */  addu       $a0, $s6, $v0
/* F00D0 800D1FE0 00621021 */  addu       $v0, $v1, $v0
/* F00D4 800D1FE4 8C420000 */  lw         $v0, 0x0($v0)
/* F00D8 800D1FE8 8C900000 */  lw         $s0, 0x0($a0)
/* F00DC 800D1FEC AC820000 */  sw         $v0, 0x0($a0)
/* F00E0 800D1FF0 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F00E4 800D1FF4 00621821 */  addu       $v1, $v1, $v0
/* F00E8 800D1FF8 AC700000 */  sw         $s0, 0x0($v1)
/* F00EC 800D1FFC 8FA80018 */  lw         $t0, 0x18($sp)
/* F00F0 800D2000 8FA9001C */  lw         $t1, 0x1C($sp)
/* F00F4 800D2004 8FAA0020 */  lw         $t2, 0x20($sp)
/* F00F8 800D2008 8FAB0024 */  lw         $t3, 0x24($sp)
/* F00FC 800D200C AFA80048 */  sw         $t0, 0x48($sp)
/* F0100 800D2010 AFA9004C */  sw         $t1, 0x4C($sp)
/* F0104 800D2014 AFAA0050 */  sw         $t2, 0x50($sp)
/* F0108 800D2018 AFAB0054 */  sw         $t3, 0x54($sp)
/* F010C 800D201C 8FA80028 */  lw         $t0, 0x28($sp)
/* F0110 800D2020 8FA9002C */  lw         $t1, 0x2C($sp)
/* F0114 800D2024 AFA80058 */  sw         $t0, 0x58($sp)
/* F0118 800D2028 AFA9005C */  sw         $t1, 0x5C($sp)
/* F011C 800D202C 8FA80030 */  lw         $t0, 0x30($sp)
/* F0120 800D2030 8FA90034 */  lw         $t1, 0x34($sp)
/* F0124 800D2034 8FAA0038 */  lw         $t2, 0x38($sp)
/* F0128 800D2038 8FAB003C */  lw         $t3, 0x3C($sp)
/* F012C 800D203C AFA80018 */  sw         $t0, 0x18($sp)
/* F0130 800D2040 AFA9001C */  sw         $t1, 0x1C($sp)
/* F0134 800D2044 AFAA0020 */  sw         $t2, 0x20($sp)
/* F0138 800D2048 AFAB0024 */  sw         $t3, 0x24($sp)
/* F013C 800D204C 8FA80040 */  lw         $t0, 0x40($sp)
/* F0140 800D2050 8FA90044 */  lw         $t1, 0x44($sp)
/* F0144 800D2054 AFA80028 */  sw         $t0, 0x28($sp)
/* F0148 800D2058 AFA9002C */  sw         $t1, 0x2C($sp)
/* F014C 800D205C 8FA80048 */  lw         $t0, 0x48($sp)
/* F0150 800D2060 8FA9004C */  lw         $t1, 0x4C($sp)
/* F0154 800D2064 8FAA0050 */  lw         $t2, 0x50($sp)
/* F0158 800D2068 8FAB0054 */  lw         $t3, 0x54($sp)
/* F015C 800D206C AFA80030 */  sw         $t0, 0x30($sp)
/* F0160 800D2070 AFA90034 */  sw         $t1, 0x34($sp)
/* F0164 800D2074 AFAA0038 */  sw         $t2, 0x38($sp)
/* F0168 800D2078 AFAB003C */  sw         $t3, 0x3C($sp)
/* F016C 800D207C 8FA80058 */  lw         $t0, 0x58($sp)
/* F0170 800D2080 8FA9005C */  lw         $t1, 0x5C($sp)
/* F0174 800D2084 AFA80040 */  sw         $t0, 0x40($sp)
/* F0178 800D2088 AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D208C:
/* F017C 800D208C 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0180 800D2090 02C21021 */  addu       $v0, $s6, $v0
/* F0184 800D2094 8C500000 */  lw         $s0, 0x0($v0)
/* F0188 800D2098 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F018C 800D209C 96020008 */  lhu        $v0, 0x8($s0)
/* F0190 800D20A0 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F0194 800D20A4 08034837 */  j          .Lmenu_800D20DC
/* F0198 800D20A8 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D20AC:
/* F019C 800D20AC 9602000A */  lhu        $v0, 0xA($s0)
/* F01A0 800D20B0 96050008 */  lhu        $a1, 0x8($s0)
/* F01A4 800D20B4 9603000E */  lhu        $v1, 0xE($s0)
/* F01A8 800D20B8 9604000C */  lhu        $a0, 0xC($s0)
/* F01AC 800D20BC A6020008 */  sh         $v0, 0x8($s0)
/* F01B0 800D20C0 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* F01B4 800D20C4 00021140 */  sll        $v0, $v0, 5
/* F01B8 800D20C8 A603000A */  sh         $v1, 0xA($s0)
/* F01BC 800D20CC A604000E */  sh         $a0, 0xE($s0)
/* F01C0 800D20D0 A605000C */  sh         $a1, 0xC($s0)
/* F01C4 800D20D4 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F01C8 800D20D8 C7A20018 */  lwc1       $f2, 0x18($sp)
.Lmenu_800D20DC:
/* F01CC 800D20DC 00431021 */  addu       $v0, $v0, $v1
/* F01D0 800D20E0 C440000C */  lwc1       $f0, 0xC($v0)
/* F01D4 800D20E4 46020032 */  c.eq.s     $f0, $f2
/* F01D8 800D20E8 00000000 */  nop
/* F01DC 800D20EC 4500FFEF */  bc1f       .Lmenu_800D20AC
/* F01E0 800D20F0 00000000 */   nop
/* F01E4 800D20F4 9602000A */  lhu        $v0, 0xA($s0)
/* F01E8 800D20F8 00021140 */  sll        $v0, $v0, 5
/* F01EC 800D20FC 00431021 */  addu       $v0, $v0, $v1
/* F01F0 800D2100 C440000C */  lwc1       $f0, 0xC($v0)
/* F01F4 800D2104 46020032 */  c.eq.s     $f0, $f2
/* F01F8 800D2108 00000000 */  nop
/* F01FC 800D210C 4500FFE7 */  bc1f       .Lmenu_800D20AC
/* F0200 800D2110 00132080 */   sll       $a0, $s3, 2
/* F0204 800D2114 8E230E14 */  lw         $v1, 0xE14($s1)
/* F0208 800D2118 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F020C 800D211C 00031880 */  sll        $v1, $v1, 2
/* F0210 800D2120 00621821 */  addu       $v1, $v1, $v0
/* F0214 800D2124 00821021 */  addu       $v0, $a0, $v0
/* F0218 800D2128 8C420000 */  lw         $v0, 0x0($v0)
/* F021C 800D212C 8C720000 */  lw         $s2, 0x0($v1)
/* F0220 800D2130 AC620000 */  sw         $v0, 0x0($v1)
/* F0224 800D2134 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0228 800D2138 00822021 */  addu       $a0, $a0, $v0
/* F022C 800D213C AC920000 */  sw         $s2, 0x0($a0)
/* F0230 800D2140 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0234 800D2144 24420001 */  addiu      $v0, $v0, 0x1
/* F0238 800D2148 AE220E14 */  sw         $v0, 0xE14($s1)
/* F023C 800D214C 8A080000 */  lwl        $t0, 0x0($s0)
/* F0240 800D2150 9A080003 */  lwr        $t0, 0x3($s0)
/* F0244 800D2154 8A090004 */  lwl        $t1, 0x4($s0)
/* F0248 800D2158 9A090007 */  lwr        $t1, 0x7($s0)
/* F024C 800D215C 8A0A0008 */  lwl        $t2, 0x8($s0)
/* F0250 800D2160 9A0A000B */  lwr        $t2, 0xB($s0)
/* F0254 800D2164 8A0B000C */  lwl        $t3, 0xC($s0)
/* F0258 800D2168 9A0B000F */  lwr        $t3, 0xF($s0)
/* F025C 800D216C AA480000 */  swl        $t0, 0x0($s2)
/* F0260 800D2170 BA480003 */  swr        $t0, 0x3($s2)
/* F0264 800D2174 AA490004 */  swl        $t1, 0x4($s2)
/* F0268 800D2178 BA490007 */  swr        $t1, 0x7($s2)
/* F026C 800D217C AA4A0008 */  swl        $t2, 0x8($s2)
/* F0270 800D2180 BA4A000B */  swr        $t2, 0xB($s2)
/* F0274 800D2184 AA4B000C */  swl        $t3, 0xC($s2)
/* F0278 800D2188 BA4B000F */  swr        $t3, 0xF($s2)
/* F027C 800D218C 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0280 800D2190 28420672 */  slti       $v0, $v0, 0x672
/* F0284 800D2194 10400736 */  beqz       $v0, .Lmenu_800D3E70
/* F0288 800D2198 26730001 */   addiu     $s3, $s3, 0x1
/* F028C 800D219C 02802021 */  addu       $a0, $s4, $zero
/* F0290 800D21A0 96020008 */  lhu        $v0, 0x8($s0)
/* F0294 800D21A4 C7A40030 */  lwc1       $f4, 0x30($sp)
/* F0298 800D21A8 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F029C 800D21AC C7A20018 */  lwc1       $f2, 0x18($sp)
/* F02A0 800D21B0 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* F02A4 800D21B4 9606000C */  lhu        $a2, 0xC($s0)
/* F02A8 800D21B8 00021140 */  sll        $v0, $v0, 5
/* F02AC 800D21BC 46022181 */  sub.s      $f6, $f4, $f2
/* F02B0 800D21C0 00622821 */  addu       $a1, $v1, $v0
/* F02B4 800D21C4 00063140 */  sll        $a2, $a2, 5
/* F02B8 800D21C8 46020001 */  sub.s      $f0, $f0, $f2
/* F02BC 800D21CC E7A40018 */  swc1       $f4, 0x18($sp)
/* F02C0 800D21D0 E7A4006C */  swc1       $f4, 0x6C($sp)
/* F02C4 800D21D4 46003583 */  div.s      $f22, $f6, $f0
/* F02C8 800D21D8 C4A00010 */  lwc1       $f0, 0x10($a1)
/* F02CC 800D21DC 4616C501 */  sub.s      $f20, $f24, $f22
/* F02D0 800D21E0 E7A00070 */  swc1       $f0, 0x70($sp)
/* F02D4 800D21E4 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F02D8 800D21E8 4407A000 */  mfc1       $a3, $f20
/* F02DC 800D21EC 00663021 */  addu       $a2, $v1, $a2
/* F02E0 800D21F0 E7A00074 */  swc1       $f0, 0x74($sp)
/* F02E4 800D21F4 0C0345F4 */  jal        func_menu_800D17D0
/* F02E8 800D21F8 E7B60010 */   swc1      $f22, 0x10($sp)
/* F02EC 800D21FC 02202021 */  addu       $a0, $s1, $zero
/* F02F0 800D2200 0C0352FC */  jal        func_menu_800D4BF0
/* F02F4 800D2204 02802821 */   addu      $a1, $s4, $zero
/* F02F8 800D2208 4407A000 */  mfc1       $a3, $f20
/* F02FC 800D220C 02802021 */  addu       $a0, $s4, $zero
/* F0300 800D2210 A642000C */  sh         $v0, 0xC($s2)
/* F0304 800D2214 A6020008 */  sh         $v0, 0x8($s0)
/* F0308 800D2218 9602000A */  lhu        $v0, 0xA($s0)
/* F030C 800D221C 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0310 800D2220 9606000E */  lhu        $a2, 0xE($s0)
/* F0314 800D2224 00021140 */  sll        $v0, $v0, 5
/* F0318 800D2228 00622821 */  addu       $a1, $v1, $v0
/* F031C 800D222C 00063140 */  sll        $a2, $a2, 5
/* F0320 800D2230 C4A00010 */  lwc1       $f0, 0x10($a1)
/* F0324 800D2234 00663021 */  addu       $a2, $v1, $a2
/* F0328 800D2238 E7A00070 */  swc1       $f0, 0x70($sp)
/* F032C 800D223C 0C0345F4 */  jal        func_menu_800D17D0
/* F0330 800D2240 E7B60010 */   swc1      $f22, 0x10($sp)
/* F0334 800D2244 02202021 */  addu       $a0, $s1, $zero
/* F0338 800D2248 0C0352FC */  jal        func_menu_800D4BF0
/* F033C 800D224C 02802821 */   addu      $a1, $s4, $zero
/* F0340 800D2250 A642000E */  sh         $v0, 0xE($s2)
/* F0344 800D2254 A602000A */  sh         $v0, 0xA($s0)
.Lmenu_800D2258:
/* F0348 800D2258 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* F034C 800D225C C7A00034 */  lwc1       $f0, 0x34($sp)
/* F0350 800D2260 46001032 */  c.eq.s     $f2, $f0
/* F0354 800D2264 00000000 */  nop
/* F0358 800D2268 450300AD */  bc1tl      .Lmenu_800D2520
/* F035C 800D226C 2673FFFF */   addiu     $s3, $s3, -0x1
/* F0360 800D2270 4600103C */  c.lt.s     $f2, $f0
/* F0364 800D2274 00000000 */  nop
/* F0368 800D2278 4500002E */  bc1f       .Lmenu_800D2334
/* F036C 800D227C 00151880 */   sll       $v1, $s5, 2
/* F0370 800D2280 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0374 800D2284 02C22021 */  addu       $a0, $s6, $v0
/* F0378 800D2288 00621021 */  addu       $v0, $v1, $v0
/* F037C 800D228C 8C420000 */  lw         $v0, 0x0($v0)
/* F0380 800D2290 8C900000 */  lw         $s0, 0x0($a0)
/* F0384 800D2294 AC820000 */  sw         $v0, 0x0($a0)
/* F0388 800D2298 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F038C 800D229C 00621821 */  addu       $v1, $v1, $v0
/* F0390 800D22A0 AC700000 */  sw         $s0, 0x0($v1)
/* F0394 800D22A4 8FA80018 */  lw         $t0, 0x18($sp)
/* F0398 800D22A8 8FA9001C */  lw         $t1, 0x1C($sp)
/* F039C 800D22AC 8FAA0020 */  lw         $t2, 0x20($sp)
/* F03A0 800D22B0 8FAB0024 */  lw         $t3, 0x24($sp)
/* F03A4 800D22B4 AFA80048 */  sw         $t0, 0x48($sp)
/* F03A8 800D22B8 AFA9004C */  sw         $t1, 0x4C($sp)
/* F03AC 800D22BC AFAA0050 */  sw         $t2, 0x50($sp)
/* F03B0 800D22C0 AFAB0054 */  sw         $t3, 0x54($sp)
/* F03B4 800D22C4 8FA80028 */  lw         $t0, 0x28($sp)
/* F03B8 800D22C8 8FA9002C */  lw         $t1, 0x2C($sp)
/* F03BC 800D22CC AFA80058 */  sw         $t0, 0x58($sp)
/* F03C0 800D22D0 AFA9005C */  sw         $t1, 0x5C($sp)
/* F03C4 800D22D4 8FA80030 */  lw         $t0, 0x30($sp)
/* F03C8 800D22D8 8FA90034 */  lw         $t1, 0x34($sp)
/* F03CC 800D22DC 8FAA0038 */  lw         $t2, 0x38($sp)
/* F03D0 800D22E0 8FAB003C */  lw         $t3, 0x3C($sp)
/* F03D4 800D22E4 AFA80018 */  sw         $t0, 0x18($sp)
/* F03D8 800D22E8 AFA9001C */  sw         $t1, 0x1C($sp)
/* F03DC 800D22EC AFAA0020 */  sw         $t2, 0x20($sp)
/* F03E0 800D22F0 AFAB0024 */  sw         $t3, 0x24($sp)
/* F03E4 800D22F4 8FA80040 */  lw         $t0, 0x40($sp)
/* F03E8 800D22F8 8FA90044 */  lw         $t1, 0x44($sp)
/* F03EC 800D22FC AFA80028 */  sw         $t0, 0x28($sp)
/* F03F0 800D2300 AFA9002C */  sw         $t1, 0x2C($sp)
/* F03F4 800D2304 8FA80048 */  lw         $t0, 0x48($sp)
/* F03F8 800D2308 8FA9004C */  lw         $t1, 0x4C($sp)
/* F03FC 800D230C 8FAA0050 */  lw         $t2, 0x50($sp)
/* F0400 800D2310 8FAB0054 */  lw         $t3, 0x54($sp)
/* F0404 800D2314 AFA80030 */  sw         $t0, 0x30($sp)
/* F0408 800D2318 AFA90034 */  sw         $t1, 0x34($sp)
/* F040C 800D231C AFAA0038 */  sw         $t2, 0x38($sp)
/* F0410 800D2320 AFAB003C */  sw         $t3, 0x3C($sp)
/* F0414 800D2324 8FA80058 */  lw         $t0, 0x58($sp)
/* F0418 800D2328 8FA9005C */  lw         $t1, 0x5C($sp)
/* F041C 800D232C AFA80040 */  sw         $t0, 0x40($sp)
/* F0420 800D2330 AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D2334:
/* F0424 800D2334 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0428 800D2338 02C21021 */  addu       $v0, $s6, $v0
/* F042C 800D233C 8C500000 */  lw         $s0, 0x0($v0)
/* F0430 800D2340 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0434 800D2344 9602000C */  lhu        $v0, 0xC($s0)
/* F0438 800D2348 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* F043C 800D234C 00021140 */  sll        $v0, $v0, 5
/* F0440 800D2350 00431021 */  addu       $v0, $v0, $v1
/* F0444 800D2354 C440000C */  lwc1       $f0, 0xC($v0)
/* F0448 800D2358 46020032 */  c.eq.s     $f0, $f2
/* F044C 800D235C 00000000 */  nop
/* F0450 800D2360 45000004 */  bc1f       .Lmenu_800D2374
/* F0454 800D2364 00000000 */   nop
/* F0458 800D2368 9602000E */  lhu        $v0, 0xE($s0)
/* F045C 800D236C 080348F0 */  j          .Lmenu_800D23C0
/* F0460 800D2370 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D2374:
/* F0464 800D2374 9602000A */  lhu        $v0, 0xA($s0)
/* F0468 800D2378 96050008 */  lhu        $a1, 0x8($s0)
/* F046C 800D237C 9603000E */  lhu        $v1, 0xE($s0)
/* F0470 800D2380 9604000C */  lhu        $a0, 0xC($s0)
/* F0474 800D2384 A6020008 */  sh         $v0, 0x8($s0)
/* F0478 800D2388 A605000C */  sh         $a1, 0xC($s0)
/* F047C 800D238C 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* F0480 800D2390 00021140 */  sll        $v0, $v0, 5
/* F0484 800D2394 A603000A */  sh         $v1, 0xA($s0)
/* F0488 800D2398 A604000E */  sh         $a0, 0xE($s0)
/* F048C 800D239C 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0490 800D23A0 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* F0494 800D23A4 00431021 */  addu       $v0, $v0, $v1
/* F0498 800D23A8 C440000C */  lwc1       $f0, 0xC($v0)
/* F049C 800D23AC 46020032 */  c.eq.s     $f0, $f2
/* F04A0 800D23B0 00000000 */  nop
/* F04A4 800D23B4 4500FFEF */  bc1f       .Lmenu_800D2374
/* F04A8 800D23B8 3082FFFF */   andi      $v0, $a0, 0xFFFF
/* F04AC 800D23BC 00021140 */  sll        $v0, $v0, 5
.Lmenu_800D23C0:
/* F04B0 800D23C0 00431021 */  addu       $v0, $v0, $v1
/* F04B4 800D23C4 C440000C */  lwc1       $f0, 0xC($v0)
/* F04B8 800D23C8 46020032 */  c.eq.s     $f0, $f2
/* F04BC 800D23CC 00000000 */  nop
/* F04C0 800D23D0 4500FFE8 */  bc1f       .Lmenu_800D2374
/* F04C4 800D23D4 00132080 */   sll       $a0, $s3, 2
/* F04C8 800D23D8 8E230E14 */  lw         $v1, 0xE14($s1)
/* F04CC 800D23DC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F04D0 800D23E0 00031880 */  sll        $v1, $v1, 2
/* F04D4 800D23E4 00621821 */  addu       $v1, $v1, $v0
/* F04D8 800D23E8 00821021 */  addu       $v0, $a0, $v0
/* F04DC 800D23EC 8C420000 */  lw         $v0, 0x0($v0)
/* F04E0 800D23F0 8C720000 */  lw         $s2, 0x0($v1)
/* F04E4 800D23F4 AC620000 */  sw         $v0, 0x0($v1)
/* F04E8 800D23F8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F04EC 800D23FC 00822021 */  addu       $a0, $a0, $v0
/* F04F0 800D2400 AC920000 */  sw         $s2, 0x0($a0)
/* F04F4 800D2404 8E220E14 */  lw         $v0, 0xE14($s1)
/* F04F8 800D2408 24420001 */  addiu      $v0, $v0, 0x1
/* F04FC 800D240C AE220E14 */  sw         $v0, 0xE14($s1)
/* F0500 800D2410 8A080000 */  lwl        $t0, 0x0($s0)
/* F0504 800D2414 9A080003 */  lwr        $t0, 0x3($s0)
/* F0508 800D2418 8A090004 */  lwl        $t1, 0x4($s0)
/* F050C 800D241C 9A090007 */  lwr        $t1, 0x7($s0)
/* F0510 800D2420 8A0A0008 */  lwl        $t2, 0x8($s0)
/* F0514 800D2424 9A0A000B */  lwr        $t2, 0xB($s0)
/* F0518 800D2428 8A0B000C */  lwl        $t3, 0xC($s0)
/* F051C 800D242C 9A0B000F */  lwr        $t3, 0xF($s0)
/* F0520 800D2430 AA480000 */  swl        $t0, 0x0($s2)
/* F0524 800D2434 BA480003 */  swr        $t0, 0x3($s2)
/* F0528 800D2438 AA490004 */  swl        $t1, 0x4($s2)
/* F052C 800D243C BA490007 */  swr        $t1, 0x7($s2)
/* F0530 800D2440 AA4A0008 */  swl        $t2, 0x8($s2)
/* F0534 800D2444 BA4A000B */  swr        $t2, 0xB($s2)
/* F0538 800D2448 AA4B000C */  swl        $t3, 0xC($s2)
/* F053C 800D244C BA4B000F */  swr        $t3, 0xF($s2)
/* F0540 800D2450 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0544 800D2454 28420672 */  slti       $v0, $v0, 0x672
/* F0548 800D2458 10400685 */  beqz       $v0, .Lmenu_800D3E70
/* F054C 800D245C 26730001 */   addiu     $s3, $s3, 0x1
/* F0550 800D2460 02802021 */  addu       $a0, $s4, $zero
/* F0554 800D2464 96020008 */  lhu        $v0, 0x8($s0)
/* F0558 800D2468 C7A40034 */  lwc1       $f4, 0x34($sp)
/* F055C 800D246C 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0560 800D2470 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F0564 800D2474 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* F0568 800D2478 9606000C */  lhu        $a2, 0xC($s0)
/* F056C 800D247C 00021140 */  sll        $v0, $v0, 5
/* F0570 800D2480 46022181 */  sub.s      $f6, $f4, $f2
/* F0574 800D2484 00622821 */  addu       $a1, $v1, $v0
/* F0578 800D2488 00063140 */  sll        $a2, $a2, 5
/* F057C 800D248C 46020001 */  sub.s      $f0, $f0, $f2
/* F0580 800D2490 E7A4001C */  swc1       $f4, 0x1C($sp)
/* F0584 800D2494 E7A4006C */  swc1       $f4, 0x6C($sp)
/* F0588 800D2498 46003583 */  div.s      $f22, $f6, $f0
/* F058C 800D249C C4A00010 */  lwc1       $f0, 0x10($a1)
/* F0590 800D24A0 4616C501 */  sub.s      $f20, $f24, $f22
/* F0594 800D24A4 E7A00070 */  swc1       $f0, 0x70($sp)
/* F0598 800D24A8 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F059C 800D24AC 4407A000 */  mfc1       $a3, $f20
/* F05A0 800D24B0 00663021 */  addu       $a2, $v1, $a2
/* F05A4 800D24B4 E7A00074 */  swc1       $f0, 0x74($sp)
/* F05A8 800D24B8 0C0345F4 */  jal        func_menu_800D17D0
/* F05AC 800D24BC E7B60010 */   swc1      $f22, 0x10($sp)
/* F05B0 800D24C0 02202021 */  addu       $a0, $s1, $zero
/* F05B4 800D24C4 0C0352FC */  jal        func_menu_800D4BF0
/* F05B8 800D24C8 02802821 */   addu      $a1, $s4, $zero
/* F05BC 800D24CC 4407A000 */  mfc1       $a3, $f20
/* F05C0 800D24D0 02802021 */  addu       $a0, $s4, $zero
/* F05C4 800D24D4 A6420008 */  sh         $v0, 0x8($s2)
/* F05C8 800D24D8 A602000C */  sh         $v0, 0xC($s0)
/* F05CC 800D24DC 9602000A */  lhu        $v0, 0xA($s0)
/* F05D0 800D24E0 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F05D4 800D24E4 9606000E */  lhu        $a2, 0xE($s0)
/* F05D8 800D24E8 00021140 */  sll        $v0, $v0, 5
/* F05DC 800D24EC 00622821 */  addu       $a1, $v1, $v0
/* F05E0 800D24F0 00063140 */  sll        $a2, $a2, 5
/* F05E4 800D24F4 C4A00010 */  lwc1       $f0, 0x10($a1)
/* F05E8 800D24F8 00663021 */  addu       $a2, $v1, $a2
/* F05EC 800D24FC E7A00070 */  swc1       $f0, 0x70($sp)
/* F05F0 800D2500 0C0345F4 */  jal        func_menu_800D17D0
/* F05F4 800D2504 E7B60010 */   swc1      $f22, 0x10($sp)
/* F05F8 800D2508 02202021 */  addu       $a0, $s1, $zero
/* F05FC 800D250C 0C0352FC */  jal        func_menu_800D4BF0
/* F0600 800D2510 02802821 */   addu      $a1, $s4, $zero
/* F0604 800D2514 A642000A */  sh         $v0, 0xA($s2)
/* F0608 800D2518 A602000E */  sh         $v0, 0xE($s0)
/* F060C 800D251C 2673FFFF */  addiu      $s3, $s3, -0x1
.Lmenu_800D2520:
/* F0610 800D2520 00151880 */  sll        $v1, $s5, 2
/* F0614 800D2524 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0618 800D2528 00132080 */  sll        $a0, $s3, 2
/* F061C 800D252C 2442FFFF */  addiu      $v0, $v0, -0x1
/* F0620 800D2530 AE220E14 */  sw         $v0, 0xE14($s1)
/* F0624 800D2534 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0628 800D2538 2673FFFF */  addiu      $s3, $s3, -0x1
/* F062C 800D253C 00621821 */  addu       $v1, $v1, $v0
/* F0630 800D2540 00821021 */  addu       $v0, $a0, $v0
/* F0634 800D2544 8C700000 */  lw         $s0, 0x0($v1)
/* F0638 800D2548 8C420000 */  lw         $v0, 0x0($v0)
/* F063C 800D254C 00132880 */  sll        $a1, $s3, 2
/* F0640 800D2550 AC620000 */  sw         $v0, 0x0($v1)
/* F0644 800D2554 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0648 800D2558 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F064C 800D255C 00021080 */  sll        $v0, $v0, 2
/* F0650 800D2560 00431021 */  addu       $v0, $v0, $v1
/* F0654 800D2564 8C420000 */  lw         $v0, 0x0($v0)
/* F0658 800D2568 00832021 */  addu       $a0, $a0, $v1
/* F065C 800D256C AC820000 */  sw         $v0, 0x0($a0)
/* F0660 800D2570 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0664 800D2574 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F0668 800D2578 00021080 */  sll        $v0, $v0, 2
/* F066C 800D257C 00431021 */  addu       $v0, $v0, $v1
/* F0670 800D2580 AC500000 */  sw         $s0, 0x0($v0)
/* F0674 800D2584 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0678 800D2588 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F067C 800D258C 2442FFFF */  addiu      $v0, $v0, -0x1
/* F0680 800D2590 02C32021 */  addu       $a0, $s6, $v1
/* F0684 800D2594 00A31821 */  addu       $v1, $a1, $v1
/* F0688 800D2598 AE220E14 */  sw         $v0, 0xE14($s1)
/* F068C 800D259C 8C620000 */  lw         $v0, 0x0($v1)
/* F0690 800D25A0 8C900000 */  lw         $s0, 0x0($a0)
/* F0694 800D25A4 AC820000 */  sw         $v0, 0x0($a0)
/* F0698 800D25A8 8E220E14 */  lw         $v0, 0xE14($s1)
/* F069C 800D25AC 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F06A0 800D25B0 00021080 */  sll        $v0, $v0, 2
/* F06A4 800D25B4 00431021 */  addu       $v0, $v0, $v1
/* F06A8 800D25B8 8C420000 */  lw         $v0, 0x0($v0)
/* F06AC 800D25BC 00A32821 */  addu       $a1, $a1, $v1
/* F06B0 800D25C0 ACA20000 */  sw         $v0, 0x0($a1)
/* F06B4 800D25C4 8E220E14 */  lw         $v0, 0xE14($s1)
/* F06B8 800D25C8 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F06BC 800D25CC 00021080 */  sll        $v0, $v0, 2
/* F06C0 800D25D0 00431021 */  addu       $v0, $v0, $v1
/* F06C4 800D25D4 AC500000 */  sw         $s0, 0x0($v0)
/* F06C8 800D25D8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F06CC 800D25DC 02E0A821 */  addu       $s5, $s7, $zero
/* F06D0 800D25E0 02C21021 */  addu       $v0, $s6, $v0
/* F06D4 800D25E4 8C440000 */  lw         $a0, 0x0($v0)
/* F06D8 800D25E8 0C0345B2 */  jal        func_menu_800D16C8
/* F06DC 800D25EC 27A50018 */   addiu     $a1, $sp, 0x18
.Lmenu_800D25F0:
/* F06E0 800D25F0 0803465E */  j          .Lmenu_800D1978
/* F06E4 800D25F4 26B50001 */   addiu     $s5, $s5, 0x1
.Lmenu_800D25F8:
/* F06E8 800D25F8 27DE0004 */  addiu      $fp, $fp, 0x4
/* F06EC 800D25FC 08034654 */  j          .Lmenu_800D1950
/* F06F0 800D2600 26F70001 */   addiu     $s7, $s7, 0x1
.Lmenu_800D2604:
/* F06F4 800D2604 00009821 */  addu       $s3, $zero, $zero
/* F06F8 800D2608 8E220E14 */  lw         $v0, 0xE14($s1)
/* F06FC 800D260C 18400016 */  blez       $v0, .Lmenu_800D2668
/* F0700 800D2610 0260B821 */   addu      $s7, $s3, $zero
/* F0704 800D2614 24070485 */  addiu      $a3, $zero, 0x485
.Lmenu_800D2618:
/* F0708 800D2618 8E240DD0 */  lw         $a0, 0xDD0($s1)
/* F070C 800D261C 00171080 */  sll        $v0, $s7, 2
/* F0710 800D2620 00442821 */  addu       $a1, $v0, $a0
/* F0714 800D2624 8CA60000 */  lw         $a2, 0x0($a1)
/* F0718 800D2628 94C20000 */  lhu        $v0, 0x0($a2)
/* F071C 800D262C 3042FF85 */  andi       $v0, $v0, 0xFF85
/* F0720 800D2630 14470008 */  bne        $v0, $a3, .Lmenu_800D2654
/* F0724 800D2634 00131880 */   sll       $v1, $s3, 2
/* F0728 800D2638 00641021 */  addu       $v0, $v1, $a0
/* F072C 800D263C 8C420000 */  lw         $v0, 0x0($v0)
/* F0730 800D2640 ACA20000 */  sw         $v0, 0x0($a1)
/* F0734 800D2644 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0738 800D2648 26730001 */  addiu      $s3, $s3, 0x1
/* F073C 800D264C 00621821 */  addu       $v1, $v1, $v0
/* F0740 800D2650 AC660000 */  sw         $a2, 0x0($v1)
.Lmenu_800D2654:
/* F0744 800D2654 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0748 800D2658 26F70001 */  addiu      $s7, $s7, 0x1
/* F074C 800D265C 02E2102A */  slt        $v0, $s7, $v0
/* F0750 800D2660 1440FFED */  bnez       $v0, .Lmenu_800D2618
/* F0754 800D2664 00000000 */   nop
.Lmenu_800D2668:
/* F0758 800D2668 2662FFFF */  addiu      $v0, $s3, -0x1
/* F075C 800D266C 18400329 */  blez       $v0, .Lmenu_800D3314
/* F0760 800D2670 0000B821 */   addu      $s7, $zero, $zero
/* F0764 800D2674 3C01800D */  lui        $at, %hi(D_menu_800CA7DC)
/* F0768 800D2678 C438A7DC */  lwc1       $f24, %lo(D_menu_800CA7DC)($at)
/* F076C 800D267C 27B40060 */  addiu      $s4, $sp, 0x60
/* F0770 800D2680 02E0F021 */  addu       $fp, $s7, $zero
.Lmenu_800D2684:
/* F0774 800D2684 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0778 800D2688 27A50018 */  addiu      $a1, $sp, 0x18
/* F077C 800D268C 03C21021 */  addu       $v0, $fp, $v0
/* F0780 800D2690 8C440000 */  lw         $a0, 0x0($v0)
/* F0784 800D2694 0C0345B2 */  jal        func_menu_800D16C8
/* F0788 800D2698 26F50001 */   addiu     $s5, $s7, 0x1
/* F078C 800D269C 02B3102A */  slt        $v0, $s5, $s3
/* F0790 800D26A0 50400318 */  beql       $v0, $zero, .Lmenu_800D3304
/* F0794 800D26A4 26F70001 */   addiu     $s7, $s7, 0x1
/* F0798 800D26A8 03C0B021 */  addu       $s6, $fp, $zero
.Lmenu_800D26AC:
/* F079C 800D26AC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F07A0 800D26B0 00158080 */  sll        $s0, $s5, 2
/* F07A4 800D26B4 02021021 */  addu       $v0, $s0, $v0
/* F07A8 800D26B8 8C440000 */  lw         $a0, 0x0($v0)
/* F07AC 800D26BC 0C0345B2 */  jal        func_menu_800D16C8
/* F07B0 800D26C0 27A50030 */   addiu     $a1, $sp, 0x30
/* F07B4 800D26C4 C7A20020 */  lwc1       $f2, 0x20($sp)
/* F07B8 800D26C8 C7A00038 */  lwc1       $f0, 0x38($sp)
/* F07BC 800D26CC 46001032 */  c.eq.s     $f2, $f0
/* F07C0 800D26D0 00000000 */  nop
/* F07C4 800D26D4 45020307 */  bc1fl      .Lmenu_800D32F4
/* F07C8 800D26D8 26B50001 */   addiu     $s5, $s5, 0x1
/* F07CC 800D26DC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F07D0 800D26E0 02C22821 */  addu       $a1, $s6, $v0
/* F07D4 800D26E4 02021021 */  addu       $v0, $s0, $v0
/* F07D8 800D26E8 8CA60000 */  lw         $a2, 0x0($a1)
/* F07DC 800D26EC 8C440000 */  lw         $a0, 0x0($v0)
/* F07E0 800D26F0 94C30004 */  lhu        $v1, 0x4($a2)
/* F07E4 800D26F4 94820004 */  lhu        $v0, 0x4($a0)
/* F07E8 800D26F8 506202FE */  beql       $v1, $v0, .Lmenu_800D32F4
/* F07EC 800D26FC 26B50001 */   addiu     $s5, $s5, 0x1
/* F07F0 800D2700 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F07F4 800D2704 C7A00034 */  lwc1       $f0, 0x34($sp)
/* F07F8 800D2708 4600103C */  c.lt.s     $f2, $f0
/* F07FC 800D270C 00000000 */  nop
/* F0800 800D2710 450202F8 */  bc1fl      .Lmenu_800D32F4
/* F0804 800D2714 26B50001 */   addiu     $s5, $s5, 0x1
/* F0808 800D2718 C7A20030 */  lwc1       $f2, 0x30($sp)
/* F080C 800D271C C7A0001C */  lwc1       $f0, 0x1C($sp)
/* F0810 800D2720 4600103C */  c.lt.s     $f2, $f0
/* F0814 800D2724 00000000 */  nop
/* F0818 800D2728 450202F2 */  bc1fl      .Lmenu_800D32F4
/* F081C 800D272C 26B50001 */   addiu     $s5, $s5, 0x1
/* F0820 800D2730 C7A40028 */  lwc1       $f4, 0x28($sp)
/* F0824 800D2734 C7A00044 */  lwc1       $f0, 0x44($sp)
/* F0828 800D2738 4600203C */  c.lt.s     $f4, $f0
/* F082C 800D273C 00000000 */  nop
/* F0830 800D2740 450202EC */  bc1fl      .Lmenu_800D32F4
/* F0834 800D2744 26B50001 */   addiu     $s5, $s5, 0x1
/* F0838 800D2748 C7A20040 */  lwc1       $f2, 0x40($sp)
/* F083C 800D274C C7A0002C */  lwc1       $f0, 0x2C($sp)
/* F0840 800D2750 4600103C */  c.lt.s     $f2, $f0
/* F0844 800D2754 00000000 */  nop
/* F0848 800D2758 450202E6 */  bc1fl      .Lmenu_800D32F4
/* F084C 800D275C 26B50001 */   addiu     $s5, $s5, 0x1
/* F0850 800D2760 46022032 */  c.eq.s     $f4, $f2
/* F0854 800D2764 00000000 */  nop
/* F0858 800D2768 450100A0 */  bc1t       .Lmenu_800D29EC
/* F085C 800D276C 00000000 */   nop
/* F0860 800D2770 4604103C */  c.lt.s     $f2, $f4
/* F0864 800D2774 00000000 */  nop
/* F0868 800D2778 45000029 */  bc1f       .Lmenu_800D2820
/* F086C 800D277C 00000000 */   nop
/* F0870 800D2780 ACA40000 */  sw         $a0, 0x0($a1)
/* F0874 800D2784 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0878 800D2788 02021021 */  addu       $v0, $s0, $v0
/* F087C 800D278C AC460000 */  sw         $a2, 0x0($v0)
/* F0880 800D2790 8FA80018 */  lw         $t0, 0x18($sp)
/* F0884 800D2794 8FA9001C */  lw         $t1, 0x1C($sp)
/* F0888 800D2798 8FAA0020 */  lw         $t2, 0x20($sp)
/* F088C 800D279C 8FAB0024 */  lw         $t3, 0x24($sp)
/* F0890 800D27A0 AFA80048 */  sw         $t0, 0x48($sp)
/* F0894 800D27A4 AFA9004C */  sw         $t1, 0x4C($sp)
/* F0898 800D27A8 AFAA0050 */  sw         $t2, 0x50($sp)
/* F089C 800D27AC AFAB0054 */  sw         $t3, 0x54($sp)
/* F08A0 800D27B0 8FA80028 */  lw         $t0, 0x28($sp)
/* F08A4 800D27B4 8FA9002C */  lw         $t1, 0x2C($sp)
/* F08A8 800D27B8 AFA80058 */  sw         $t0, 0x58($sp)
/* F08AC 800D27BC AFA9005C */  sw         $t1, 0x5C($sp)
/* F08B0 800D27C0 8FA80030 */  lw         $t0, 0x30($sp)
/* F08B4 800D27C4 8FA90034 */  lw         $t1, 0x34($sp)
/* F08B8 800D27C8 8FAA0038 */  lw         $t2, 0x38($sp)
/* F08BC 800D27CC 8FAB003C */  lw         $t3, 0x3C($sp)
/* F08C0 800D27D0 AFA80018 */  sw         $t0, 0x18($sp)
/* F08C4 800D27D4 AFA9001C */  sw         $t1, 0x1C($sp)
/* F08C8 800D27D8 AFAA0020 */  sw         $t2, 0x20($sp)
/* F08CC 800D27DC AFAB0024 */  sw         $t3, 0x24($sp)
/* F08D0 800D27E0 8FA80040 */  lw         $t0, 0x40($sp)
/* F08D4 800D27E4 8FA90044 */  lw         $t1, 0x44($sp)
/* F08D8 800D27E8 AFA80028 */  sw         $t0, 0x28($sp)
/* F08DC 800D27EC AFA9002C */  sw         $t1, 0x2C($sp)
/* F08E0 800D27F0 8FA80048 */  lw         $t0, 0x48($sp)
/* F08E4 800D27F4 8FA9004C */  lw         $t1, 0x4C($sp)
/* F08E8 800D27F8 8FAA0050 */  lw         $t2, 0x50($sp)
/* F08EC 800D27FC 8FAB0054 */  lw         $t3, 0x54($sp)
/* F08F0 800D2800 AFA80030 */  sw         $t0, 0x30($sp)
/* F08F4 800D2804 AFA90034 */  sw         $t1, 0x34($sp)
/* F08F8 800D2808 AFAA0038 */  sw         $t2, 0x38($sp)
/* F08FC 800D280C AFAB003C */  sw         $t3, 0x3C($sp)
/* F0900 800D2810 8FA80058 */  lw         $t0, 0x58($sp)
/* F0904 800D2814 8FA9005C */  lw         $t1, 0x5C($sp)
/* F0908 800D2818 AFA80040 */  sw         $t0, 0x40($sp)
/* F090C 800D281C AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D2820:
/* F0910 800D2820 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0914 800D2824 02C21021 */  addu       $v0, $s6, $v0
/* F0918 800D2828 8C500000 */  lw         $s0, 0x0($v0)
/* F091C 800D282C 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0920 800D2830 96020008 */  lhu        $v0, 0x8($s0)
/* F0924 800D2834 C7A20028 */  lwc1       $f2, 0x28($sp)
/* F0928 800D2838 08034A1C */  j          .Lmenu_800D2870
/* F092C 800D283C 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D2840:
/* F0930 800D2840 9602000A */  lhu        $v0, 0xA($s0)
/* F0934 800D2844 96050008 */  lhu        $a1, 0x8($s0)
/* F0938 800D2848 9603000E */  lhu        $v1, 0xE($s0)
/* F093C 800D284C 9604000C */  lhu        $a0, 0xC($s0)
/* F0940 800D2850 A6020008 */  sh         $v0, 0x8($s0)
/* F0944 800D2854 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* F0948 800D2858 00021140 */  sll        $v0, $v0, 5
/* F094C 800D285C A603000A */  sh         $v1, 0xA($s0)
/* F0950 800D2860 A604000E */  sh         $a0, 0xE($s0)
/* F0954 800D2864 A605000C */  sh         $a1, 0xC($s0)
/* F0958 800D2868 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F095C 800D286C C7A20028 */  lwc1       $f2, 0x28($sp)
.Lmenu_800D2870:
/* F0960 800D2870 00431021 */  addu       $v0, $v0, $v1
/* F0964 800D2874 C4400014 */  lwc1       $f0, 0x14($v0)
/* F0968 800D2878 46020032 */  c.eq.s     $f0, $f2
/* F096C 800D287C 00000000 */  nop
/* F0970 800D2880 4500FFEF */  bc1f       .Lmenu_800D2840
/* F0974 800D2884 00000000 */   nop
/* F0978 800D2888 9602000A */  lhu        $v0, 0xA($s0)
/* F097C 800D288C 00021140 */  sll        $v0, $v0, 5
/* F0980 800D2890 00431021 */  addu       $v0, $v0, $v1
/* F0984 800D2894 C4400014 */  lwc1       $f0, 0x14($v0)
/* F0988 800D2898 46020032 */  c.eq.s     $f0, $f2
/* F098C 800D289C 00000000 */  nop
/* F0990 800D28A0 4500FFE7 */  bc1f       .Lmenu_800D2840
/* F0994 800D28A4 00132080 */   sll       $a0, $s3, 2
/* F0998 800D28A8 8E230E14 */  lw         $v1, 0xE14($s1)
/* F099C 800D28AC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F09A0 800D28B0 00031880 */  sll        $v1, $v1, 2
/* F09A4 800D28B4 00621821 */  addu       $v1, $v1, $v0
/* F09A8 800D28B8 00821021 */  addu       $v0, $a0, $v0
/* F09AC 800D28BC 8C420000 */  lw         $v0, 0x0($v0)
/* F09B0 800D28C0 8C720000 */  lw         $s2, 0x0($v1)
/* F09B4 800D28C4 AC620000 */  sw         $v0, 0x0($v1)
/* F09B8 800D28C8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F09BC 800D28CC 00822021 */  addu       $a0, $a0, $v0
/* F09C0 800D28D0 AC920000 */  sw         $s2, 0x0($a0)
/* F09C4 800D28D4 8E220E14 */  lw         $v0, 0xE14($s1)
/* F09C8 800D28D8 24420001 */  addiu      $v0, $v0, 0x1
/* F09CC 800D28DC AE220E14 */  sw         $v0, 0xE14($s1)
/* F09D0 800D28E0 8A080000 */  lwl        $t0, 0x0($s0)
/* F09D4 800D28E4 9A080003 */  lwr        $t0, 0x3($s0)
/* F09D8 800D28E8 8A090004 */  lwl        $t1, 0x4($s0)
/* F09DC 800D28EC 9A090007 */  lwr        $t1, 0x7($s0)
/* F09E0 800D28F0 8A0A0008 */  lwl        $t2, 0x8($s0)
/* F09E4 800D28F4 9A0A000B */  lwr        $t2, 0xB($s0)
/* F09E8 800D28F8 8A0B000C */  lwl        $t3, 0xC($s0)
/* F09EC 800D28FC 9A0B000F */  lwr        $t3, 0xF($s0)
/* F09F0 800D2900 AA480000 */  swl        $t0, 0x0($s2)
/* F09F4 800D2904 BA480003 */  swr        $t0, 0x3($s2)
/* F09F8 800D2908 AA490004 */  swl        $t1, 0x4($s2)
/* F09FC 800D290C BA490007 */  swr        $t1, 0x7($s2)
/* F0A00 800D2910 AA4A0008 */  swl        $t2, 0x8($s2)
/* F0A04 800D2914 BA4A000B */  swr        $t2, 0xB($s2)
/* F0A08 800D2918 AA4B000C */  swl        $t3, 0xC($s2)
/* F0A0C 800D291C BA4B000F */  swr        $t3, 0xF($s2)
/* F0A10 800D2920 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0A14 800D2924 28420672 */  slti       $v0, $v0, 0x672
/* F0A18 800D2928 10400551 */  beqz       $v0, .Lmenu_800D3E70
/* F0A1C 800D292C 26730001 */   addiu     $s3, $s3, 0x1
/* F0A20 800D2930 02802021 */  addu       $a0, $s4, $zero
/* F0A24 800D2934 C7A40040 */  lwc1       $f4, 0x40($sp)
/* F0A28 800D2938 C7A00028 */  lwc1       $f0, 0x28($sp)
/* F0A2C 800D293C C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F0A30 800D2940 96020008 */  lhu        $v0, 0x8($s0)
/* F0A34 800D2944 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0A38 800D2948 9606000C */  lhu        $a2, 0xC($s0)
/* F0A3C 800D294C 46002181 */  sub.s      $f6, $f4, $f0
/* F0A40 800D2950 00021140 */  sll        $v0, $v0, 5
/* F0A44 800D2954 00622821 */  addu       $a1, $v1, $v0
/* F0A48 800D2958 46001081 */  sub.s      $f2, $f2, $f0
/* F0A4C 800D295C 00063140 */  sll        $a2, $a2, 5
/* F0A50 800D2960 C4A0000C */  lwc1       $f0, 0xC($a1)
/* F0A54 800D2964 46023583 */  div.s      $f22, $f6, $f2
/* F0A58 800D2968 4616C501 */  sub.s      $f20, $f24, $f22
/* F0A5C 800D296C E7A0006C */  swc1       $f0, 0x6C($sp)
/* F0A60 800D2970 C4A00010 */  lwc1       $f0, 0x10($a1)
/* F0A64 800D2974 4407A000 */  mfc1       $a3, $f20
/* F0A68 800D2978 00663021 */  addu       $a2, $v1, $a2
/* F0A6C 800D297C E7A40028 */  swc1       $f4, 0x28($sp)
/* F0A70 800D2980 E7A40074 */  swc1       $f4, 0x74($sp)
/* F0A74 800D2984 E7A00070 */  swc1       $f0, 0x70($sp)
/* F0A78 800D2988 0C0345F4 */  jal        func_menu_800D17D0
/* F0A7C 800D298C E7B60010 */   swc1      $f22, 0x10($sp)
/* F0A80 800D2990 02202021 */  addu       $a0, $s1, $zero
/* F0A84 800D2994 0C0352FC */  jal        func_menu_800D4BF0
/* F0A88 800D2998 02802821 */   addu      $a1, $s4, $zero
/* F0A8C 800D299C 4407A000 */  mfc1       $a3, $f20
/* F0A90 800D29A0 02802021 */  addu       $a0, $s4, $zero
/* F0A94 800D29A4 A642000C */  sh         $v0, 0xC($s2)
/* F0A98 800D29A8 A6020008 */  sh         $v0, 0x8($s0)
/* F0A9C 800D29AC 9602000A */  lhu        $v0, 0xA($s0)
/* F0AA0 800D29B0 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0AA4 800D29B4 9606000E */  lhu        $a2, 0xE($s0)
/* F0AA8 800D29B8 00021140 */  sll        $v0, $v0, 5
/* F0AAC 800D29BC 00622821 */  addu       $a1, $v1, $v0
/* F0AB0 800D29C0 00063140 */  sll        $a2, $a2, 5
/* F0AB4 800D29C4 C4A0000C */  lwc1       $f0, 0xC($a1)
/* F0AB8 800D29C8 00663021 */  addu       $a2, $v1, $a2
/* F0ABC 800D29CC E7A0006C */  swc1       $f0, 0x6C($sp)
/* F0AC0 800D29D0 0C0345F4 */  jal        func_menu_800D17D0
/* F0AC4 800D29D4 E7B60010 */   swc1      $f22, 0x10($sp)
/* F0AC8 800D29D8 02202021 */  addu       $a0, $s1, $zero
/* F0ACC 800D29DC 0C0352FC */  jal        func_menu_800D4BF0
/* F0AD0 800D29E0 02802821 */   addu      $a1, $s4, $zero
/* F0AD4 800D29E4 A642000E */  sh         $v0, 0xE($s2)
/* F0AD8 800D29E8 A602000A */  sh         $v0, 0xA($s0)
.Lmenu_800D29EC:
/* F0ADC 800D29EC C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F0AE0 800D29F0 C7A00044 */  lwc1       $f0, 0x44($sp)
/* F0AE4 800D29F4 46001032 */  c.eq.s     $f2, $f0
/* F0AE8 800D29F8 00000000 */  nop
/* F0AEC 800D29FC 450100AC */  bc1t       .Lmenu_800D2CB0
/* F0AF0 800D2A00 00000000 */   nop
/* F0AF4 800D2A04 4600103C */  c.lt.s     $f2, $f0
/* F0AF8 800D2A08 00000000 */  nop
/* F0AFC 800D2A0C 4500002E */  bc1f       .Lmenu_800D2AC8
/* F0B00 800D2A10 00151880 */   sll       $v1, $s5, 2
/* F0B04 800D2A14 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0B08 800D2A18 02C22021 */  addu       $a0, $s6, $v0
/* F0B0C 800D2A1C 00621021 */  addu       $v0, $v1, $v0
/* F0B10 800D2A20 8C420000 */  lw         $v0, 0x0($v0)
/* F0B14 800D2A24 8C900000 */  lw         $s0, 0x0($a0)
/* F0B18 800D2A28 AC820000 */  sw         $v0, 0x0($a0)
/* F0B1C 800D2A2C 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0B20 800D2A30 00621821 */  addu       $v1, $v1, $v0
/* F0B24 800D2A34 AC700000 */  sw         $s0, 0x0($v1)
/* F0B28 800D2A38 8FA80018 */  lw         $t0, 0x18($sp)
/* F0B2C 800D2A3C 8FA9001C */  lw         $t1, 0x1C($sp)
/* F0B30 800D2A40 8FAA0020 */  lw         $t2, 0x20($sp)
/* F0B34 800D2A44 8FAB0024 */  lw         $t3, 0x24($sp)
/* F0B38 800D2A48 AFA80048 */  sw         $t0, 0x48($sp)
/* F0B3C 800D2A4C AFA9004C */  sw         $t1, 0x4C($sp)
/* F0B40 800D2A50 AFAA0050 */  sw         $t2, 0x50($sp)
/* F0B44 800D2A54 AFAB0054 */  sw         $t3, 0x54($sp)
/* F0B48 800D2A58 8FA80028 */  lw         $t0, 0x28($sp)
/* F0B4C 800D2A5C 8FA9002C */  lw         $t1, 0x2C($sp)
/* F0B50 800D2A60 AFA80058 */  sw         $t0, 0x58($sp)
/* F0B54 800D2A64 AFA9005C */  sw         $t1, 0x5C($sp)
/* F0B58 800D2A68 8FA80030 */  lw         $t0, 0x30($sp)
/* F0B5C 800D2A6C 8FA90034 */  lw         $t1, 0x34($sp)
/* F0B60 800D2A70 8FAA0038 */  lw         $t2, 0x38($sp)
/* F0B64 800D2A74 8FAB003C */  lw         $t3, 0x3C($sp)
/* F0B68 800D2A78 AFA80018 */  sw         $t0, 0x18($sp)
/* F0B6C 800D2A7C AFA9001C */  sw         $t1, 0x1C($sp)
/* F0B70 800D2A80 AFAA0020 */  sw         $t2, 0x20($sp)
/* F0B74 800D2A84 AFAB0024 */  sw         $t3, 0x24($sp)
/* F0B78 800D2A88 8FA80040 */  lw         $t0, 0x40($sp)
/* F0B7C 800D2A8C 8FA90044 */  lw         $t1, 0x44($sp)
/* F0B80 800D2A90 AFA80028 */  sw         $t0, 0x28($sp)
/* F0B84 800D2A94 AFA9002C */  sw         $t1, 0x2C($sp)
/* F0B88 800D2A98 8FA80048 */  lw         $t0, 0x48($sp)
/* F0B8C 800D2A9C 8FA9004C */  lw         $t1, 0x4C($sp)
/* F0B90 800D2AA0 8FAA0050 */  lw         $t2, 0x50($sp)
/* F0B94 800D2AA4 8FAB0054 */  lw         $t3, 0x54($sp)
/* F0B98 800D2AA8 AFA80030 */  sw         $t0, 0x30($sp)
/* F0B9C 800D2AAC AFA90034 */  sw         $t1, 0x34($sp)
/* F0BA0 800D2AB0 AFAA0038 */  sw         $t2, 0x38($sp)
/* F0BA4 800D2AB4 AFAB003C */  sw         $t3, 0x3C($sp)
/* F0BA8 800D2AB8 8FA80058 */  lw         $t0, 0x58($sp)
/* F0BAC 800D2ABC 8FA9005C */  lw         $t1, 0x5C($sp)
/* F0BB0 800D2AC0 AFA80040 */  sw         $t0, 0x40($sp)
/* F0BB4 800D2AC4 AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D2AC8:
/* F0BB8 800D2AC8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0BBC 800D2ACC 02C21021 */  addu       $v0, $s6, $v0
/* F0BC0 800D2AD0 8C500000 */  lw         $s0, 0x0($v0)
/* F0BC4 800D2AD4 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0BC8 800D2AD8 9602000C */  lhu        $v0, 0xC($s0)
/* F0BCC 800D2ADC C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F0BD0 800D2AE0 00021140 */  sll        $v0, $v0, 5
/* F0BD4 800D2AE4 00431021 */  addu       $v0, $v0, $v1
/* F0BD8 800D2AE8 C4400014 */  lwc1       $f0, 0x14($v0)
/* F0BDC 800D2AEC 46020032 */  c.eq.s     $f0, $f2
/* F0BE0 800D2AF0 00000000 */  nop
/* F0BE4 800D2AF4 45000004 */  bc1f       .Lmenu_800D2B08
/* F0BE8 800D2AF8 00000000 */   nop
/* F0BEC 800D2AFC 9602000E */  lhu        $v0, 0xE($s0)
/* F0BF0 800D2B00 08034AD5 */  j          .Lmenu_800D2B54
/* F0BF4 800D2B04 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D2B08:
/* F0BF8 800D2B08 9602000A */  lhu        $v0, 0xA($s0)
/* F0BFC 800D2B0C 96050008 */  lhu        $a1, 0x8($s0)
/* F0C00 800D2B10 9603000E */  lhu        $v1, 0xE($s0)
/* F0C04 800D2B14 9604000C */  lhu        $a0, 0xC($s0)
/* F0C08 800D2B18 A6020008 */  sh         $v0, 0x8($s0)
/* F0C0C 800D2B1C A605000C */  sh         $a1, 0xC($s0)
/* F0C10 800D2B20 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* F0C14 800D2B24 00021140 */  sll        $v0, $v0, 5
/* F0C18 800D2B28 A603000A */  sh         $v1, 0xA($s0)
/* F0C1C 800D2B2C A604000E */  sh         $a0, 0xE($s0)
/* F0C20 800D2B30 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0C24 800D2B34 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F0C28 800D2B38 00431021 */  addu       $v0, $v0, $v1
/* F0C2C 800D2B3C C4400014 */  lwc1       $f0, 0x14($v0)
/* F0C30 800D2B40 46020032 */  c.eq.s     $f0, $f2
/* F0C34 800D2B44 00000000 */  nop
/* F0C38 800D2B48 4500FFEF */  bc1f       .Lmenu_800D2B08
/* F0C3C 800D2B4C 3082FFFF */   andi      $v0, $a0, 0xFFFF
/* F0C40 800D2B50 00021140 */  sll        $v0, $v0, 5
.Lmenu_800D2B54:
/* F0C44 800D2B54 00431021 */  addu       $v0, $v0, $v1
/* F0C48 800D2B58 C4400014 */  lwc1       $f0, 0x14($v0)
/* F0C4C 800D2B5C 46020032 */  c.eq.s     $f0, $f2
/* F0C50 800D2B60 00000000 */  nop
/* F0C54 800D2B64 4500FFE8 */  bc1f       .Lmenu_800D2B08
/* F0C58 800D2B68 00132080 */   sll       $a0, $s3, 2
/* F0C5C 800D2B6C 8E230E14 */  lw         $v1, 0xE14($s1)
/* F0C60 800D2B70 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0C64 800D2B74 00031880 */  sll        $v1, $v1, 2
/* F0C68 800D2B78 00621821 */  addu       $v1, $v1, $v0
/* F0C6C 800D2B7C 00821021 */  addu       $v0, $a0, $v0
/* F0C70 800D2B80 8C420000 */  lw         $v0, 0x0($v0)
/* F0C74 800D2B84 8C720000 */  lw         $s2, 0x0($v1)
/* F0C78 800D2B88 AC620000 */  sw         $v0, 0x0($v1)
/* F0C7C 800D2B8C 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0C80 800D2B90 00822021 */  addu       $a0, $a0, $v0
/* F0C84 800D2B94 AC920000 */  sw         $s2, 0x0($a0)
/* F0C88 800D2B98 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0C8C 800D2B9C 24420001 */  addiu      $v0, $v0, 0x1
/* F0C90 800D2BA0 AE220E14 */  sw         $v0, 0xE14($s1)
/* F0C94 800D2BA4 8A080000 */  lwl        $t0, 0x0($s0)
/* F0C98 800D2BA8 9A080003 */  lwr        $t0, 0x3($s0)
/* F0C9C 800D2BAC 8A090004 */  lwl        $t1, 0x4($s0)
/* F0CA0 800D2BB0 9A090007 */  lwr        $t1, 0x7($s0)
/* F0CA4 800D2BB4 8A0A0008 */  lwl        $t2, 0x8($s0)
/* F0CA8 800D2BB8 9A0A000B */  lwr        $t2, 0xB($s0)
/* F0CAC 800D2BBC 8A0B000C */  lwl        $t3, 0xC($s0)
/* F0CB0 800D2BC0 9A0B000F */  lwr        $t3, 0xF($s0)
/* F0CB4 800D2BC4 AA480000 */  swl        $t0, 0x0($s2)
/* F0CB8 800D2BC8 BA480003 */  swr        $t0, 0x3($s2)
/* F0CBC 800D2BCC AA490004 */  swl        $t1, 0x4($s2)
/* F0CC0 800D2BD0 BA490007 */  swr        $t1, 0x7($s2)
/* F0CC4 800D2BD4 AA4A0008 */  swl        $t2, 0x8($s2)
/* F0CC8 800D2BD8 BA4A000B */  swr        $t2, 0xB($s2)
/* F0CCC 800D2BDC AA4B000C */  swl        $t3, 0xC($s2)
/* F0CD0 800D2BE0 BA4B000F */  swr        $t3, 0xF($s2)
/* F0CD4 800D2BE4 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0CD8 800D2BE8 28420672 */  slti       $v0, $v0, 0x672
/* F0CDC 800D2BEC 104004A0 */  beqz       $v0, .Lmenu_800D3E70
/* F0CE0 800D2BF0 26730001 */   addiu     $s3, $s3, 0x1
/* F0CE4 800D2BF4 02802021 */  addu       $a0, $s4, $zero
/* F0CE8 800D2BF8 C7A40044 */  lwc1       $f4, 0x44($sp)
/* F0CEC 800D2BFC C7A00028 */  lwc1       $f0, 0x28($sp)
/* F0CF0 800D2C00 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F0CF4 800D2C04 96020008 */  lhu        $v0, 0x8($s0)
/* F0CF8 800D2C08 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0CFC 800D2C0C 9606000C */  lhu        $a2, 0xC($s0)
/* F0D00 800D2C10 46002181 */  sub.s      $f6, $f4, $f0
/* F0D04 800D2C14 00021140 */  sll        $v0, $v0, 5
/* F0D08 800D2C18 00622821 */  addu       $a1, $v1, $v0
/* F0D0C 800D2C1C 46001081 */  sub.s      $f2, $f2, $f0
/* F0D10 800D2C20 00063140 */  sll        $a2, $a2, 5
/* F0D14 800D2C24 C4A0000C */  lwc1       $f0, 0xC($a1)
/* F0D18 800D2C28 46023583 */  div.s      $f22, $f6, $f2
/* F0D1C 800D2C2C 4616C501 */  sub.s      $f20, $f24, $f22
/* F0D20 800D2C30 E7A0006C */  swc1       $f0, 0x6C($sp)
/* F0D24 800D2C34 C4A00010 */  lwc1       $f0, 0x10($a1)
/* F0D28 800D2C38 4407A000 */  mfc1       $a3, $f20
/* F0D2C 800D2C3C 00663021 */  addu       $a2, $v1, $a2
/* F0D30 800D2C40 E7A4002C */  swc1       $f4, 0x2C($sp)
/* F0D34 800D2C44 E7A40074 */  swc1       $f4, 0x74($sp)
/* F0D38 800D2C48 E7A00070 */  swc1       $f0, 0x70($sp)
/* F0D3C 800D2C4C 0C0345F4 */  jal        func_menu_800D17D0
/* F0D40 800D2C50 E7B60010 */   swc1      $f22, 0x10($sp)
/* F0D44 800D2C54 02202021 */  addu       $a0, $s1, $zero
/* F0D48 800D2C58 0C0352FC */  jal        func_menu_800D4BF0
/* F0D4C 800D2C5C 02802821 */   addu      $a1, $s4, $zero
/* F0D50 800D2C60 4407A000 */  mfc1       $a3, $f20
/* F0D54 800D2C64 02802021 */  addu       $a0, $s4, $zero
/* F0D58 800D2C68 A6420008 */  sh         $v0, 0x8($s2)
/* F0D5C 800D2C6C A602000C */  sh         $v0, 0xC($s0)
/* F0D60 800D2C70 9602000A */  lhu        $v0, 0xA($s0)
/* F0D64 800D2C74 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0D68 800D2C78 9606000E */  lhu        $a2, 0xE($s0)
/* F0D6C 800D2C7C 00021140 */  sll        $v0, $v0, 5
/* F0D70 800D2C80 00622821 */  addu       $a1, $v1, $v0
/* F0D74 800D2C84 00063140 */  sll        $a2, $a2, 5
/* F0D78 800D2C88 C4A0000C */  lwc1       $f0, 0xC($a1)
/* F0D7C 800D2C8C 00663021 */  addu       $a2, $v1, $a2
/* F0D80 800D2C90 E7A0006C */  swc1       $f0, 0x6C($sp)
/* F0D84 800D2C94 0C0345F4 */  jal        func_menu_800D17D0
/* F0D88 800D2C98 E7B60010 */   swc1      $f22, 0x10($sp)
/* F0D8C 800D2C9C 02202021 */  addu       $a0, $s1, $zero
/* F0D90 800D2CA0 0C0352FC */  jal        func_menu_800D4BF0
/* F0D94 800D2CA4 02802821 */   addu      $a1, $s4, $zero
/* F0D98 800D2CA8 A642000A */  sh         $v0, 0xA($s2)
/* F0D9C 800D2CAC A602000E */  sh         $v0, 0xE($s0)
.Lmenu_800D2CB0:
/* F0DA0 800D2CB0 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F0DA4 800D2CB4 C7A00030 */  lwc1       $f0, 0x30($sp)
/* F0DA8 800D2CB8 46001032 */  c.eq.s     $f2, $f0
/* F0DAC 800D2CBC 00000000 */  nop
/* F0DB0 800D2CC0 450100A5 */  bc1t       .Lmenu_800D2F58
/* F0DB4 800D2CC4 00000000 */   nop
/* F0DB8 800D2CC8 4602003C */  c.lt.s     $f0, $f2
/* F0DBC 800D2CCC 00000000 */  nop
/* F0DC0 800D2CD0 4500002E */  bc1f       .Lmenu_800D2D8C
/* F0DC4 800D2CD4 00151880 */   sll       $v1, $s5, 2
/* F0DC8 800D2CD8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0DCC 800D2CDC 02C22021 */  addu       $a0, $s6, $v0
/* F0DD0 800D2CE0 00621021 */  addu       $v0, $v1, $v0
/* F0DD4 800D2CE4 8C420000 */  lw         $v0, 0x0($v0)
/* F0DD8 800D2CE8 8C900000 */  lw         $s0, 0x0($a0)
/* F0DDC 800D2CEC AC820000 */  sw         $v0, 0x0($a0)
/* F0DE0 800D2CF0 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0DE4 800D2CF4 00621821 */  addu       $v1, $v1, $v0
/* F0DE8 800D2CF8 AC700000 */  sw         $s0, 0x0($v1)
/* F0DEC 800D2CFC 8FA80018 */  lw         $t0, 0x18($sp)
/* F0DF0 800D2D00 8FA9001C */  lw         $t1, 0x1C($sp)
/* F0DF4 800D2D04 8FAA0020 */  lw         $t2, 0x20($sp)
/* F0DF8 800D2D08 8FAB0024 */  lw         $t3, 0x24($sp)
/* F0DFC 800D2D0C AFA80048 */  sw         $t0, 0x48($sp)
/* F0E00 800D2D10 AFA9004C */  sw         $t1, 0x4C($sp)
/* F0E04 800D2D14 AFAA0050 */  sw         $t2, 0x50($sp)
/* F0E08 800D2D18 AFAB0054 */  sw         $t3, 0x54($sp)
/* F0E0C 800D2D1C 8FA80028 */  lw         $t0, 0x28($sp)
/* F0E10 800D2D20 8FA9002C */  lw         $t1, 0x2C($sp)
/* F0E14 800D2D24 AFA80058 */  sw         $t0, 0x58($sp)
/* F0E18 800D2D28 AFA9005C */  sw         $t1, 0x5C($sp)
/* F0E1C 800D2D2C 8FA80030 */  lw         $t0, 0x30($sp)
/* F0E20 800D2D30 8FA90034 */  lw         $t1, 0x34($sp)
/* F0E24 800D2D34 8FAA0038 */  lw         $t2, 0x38($sp)
/* F0E28 800D2D38 8FAB003C */  lw         $t3, 0x3C($sp)
/* F0E2C 800D2D3C AFA80018 */  sw         $t0, 0x18($sp)
/* F0E30 800D2D40 AFA9001C */  sw         $t1, 0x1C($sp)
/* F0E34 800D2D44 AFAA0020 */  sw         $t2, 0x20($sp)
/* F0E38 800D2D48 AFAB0024 */  sw         $t3, 0x24($sp)
/* F0E3C 800D2D4C 8FA80040 */  lw         $t0, 0x40($sp)
/* F0E40 800D2D50 8FA90044 */  lw         $t1, 0x44($sp)
/* F0E44 800D2D54 AFA80028 */  sw         $t0, 0x28($sp)
/* F0E48 800D2D58 AFA9002C */  sw         $t1, 0x2C($sp)
/* F0E4C 800D2D5C 8FA80048 */  lw         $t0, 0x48($sp)
/* F0E50 800D2D60 8FA9004C */  lw         $t1, 0x4C($sp)
/* F0E54 800D2D64 8FAA0050 */  lw         $t2, 0x50($sp)
/* F0E58 800D2D68 8FAB0054 */  lw         $t3, 0x54($sp)
/* F0E5C 800D2D6C AFA80030 */  sw         $t0, 0x30($sp)
/* F0E60 800D2D70 AFA90034 */  sw         $t1, 0x34($sp)
/* F0E64 800D2D74 AFAA0038 */  sw         $t2, 0x38($sp)
/* F0E68 800D2D78 AFAB003C */  sw         $t3, 0x3C($sp)
/* F0E6C 800D2D7C 8FA80058 */  lw         $t0, 0x58($sp)
/* F0E70 800D2D80 8FA9005C */  lw         $t1, 0x5C($sp)
/* F0E74 800D2D84 AFA80040 */  sw         $t0, 0x40($sp)
/* F0E78 800D2D88 AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D2D8C:
/* F0E7C 800D2D8C 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0E80 800D2D90 02C21021 */  addu       $v0, $s6, $v0
/* F0E84 800D2D94 8C500000 */  lw         $s0, 0x0($v0)
/* F0E88 800D2D98 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0E8C 800D2D9C 96020008 */  lhu        $v0, 0x8($s0)
/* F0E90 800D2DA0 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F0E94 800D2DA4 08034B77 */  j          .Lmenu_800D2DDC
/* F0E98 800D2DA8 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D2DAC:
/* F0E9C 800D2DAC 9602000A */  lhu        $v0, 0xA($s0)
/* F0EA0 800D2DB0 96050008 */  lhu        $a1, 0x8($s0)
/* F0EA4 800D2DB4 9603000E */  lhu        $v1, 0xE($s0)
/* F0EA8 800D2DB8 9604000C */  lhu        $a0, 0xC($s0)
/* F0EAC 800D2DBC A6020008 */  sh         $v0, 0x8($s0)
/* F0EB0 800D2DC0 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* F0EB4 800D2DC4 00021140 */  sll        $v0, $v0, 5
/* F0EB8 800D2DC8 A603000A */  sh         $v1, 0xA($s0)
/* F0EBC 800D2DCC A604000E */  sh         $a0, 0xE($s0)
/* F0EC0 800D2DD0 A605000C */  sh         $a1, 0xC($s0)
/* F0EC4 800D2DD4 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0EC8 800D2DD8 C7A20018 */  lwc1       $f2, 0x18($sp)
.Lmenu_800D2DDC:
/* F0ECC 800D2DDC 00431021 */  addu       $v0, $v0, $v1
/* F0ED0 800D2DE0 C440000C */  lwc1       $f0, 0xC($v0)
/* F0ED4 800D2DE4 46020032 */  c.eq.s     $f0, $f2
/* F0ED8 800D2DE8 00000000 */  nop
/* F0EDC 800D2DEC 4500FFEF */  bc1f       .Lmenu_800D2DAC
/* F0EE0 800D2DF0 00000000 */   nop
/* F0EE4 800D2DF4 9602000A */  lhu        $v0, 0xA($s0)
/* F0EE8 800D2DF8 00021140 */  sll        $v0, $v0, 5
/* F0EEC 800D2DFC 00431021 */  addu       $v0, $v0, $v1
/* F0EF0 800D2E00 C440000C */  lwc1       $f0, 0xC($v0)
/* F0EF4 800D2E04 46020032 */  c.eq.s     $f0, $f2
/* F0EF8 800D2E08 00000000 */  nop
/* F0EFC 800D2E0C 4500FFE7 */  bc1f       .Lmenu_800D2DAC
/* F0F00 800D2E10 00132080 */   sll       $a0, $s3, 2
/* F0F04 800D2E14 8E230E14 */  lw         $v1, 0xE14($s1)
/* F0F08 800D2E18 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0F0C 800D2E1C 00031880 */  sll        $v1, $v1, 2
/* F0F10 800D2E20 00621821 */  addu       $v1, $v1, $v0
/* F0F14 800D2E24 00821021 */  addu       $v0, $a0, $v0
/* F0F18 800D2E28 8C420000 */  lw         $v0, 0x0($v0)
/* F0F1C 800D2E2C 8C720000 */  lw         $s2, 0x0($v1)
/* F0F20 800D2E30 AC620000 */  sw         $v0, 0x0($v1)
/* F0F24 800D2E34 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F0F28 800D2E38 00822021 */  addu       $a0, $a0, $v0
/* F0F2C 800D2E3C AC920000 */  sw         $s2, 0x0($a0)
/* F0F30 800D2E40 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0F34 800D2E44 24420001 */  addiu      $v0, $v0, 0x1
/* F0F38 800D2E48 AE220E14 */  sw         $v0, 0xE14($s1)
/* F0F3C 800D2E4C 8A080000 */  lwl        $t0, 0x0($s0)
/* F0F40 800D2E50 9A080003 */  lwr        $t0, 0x3($s0)
/* F0F44 800D2E54 8A090004 */  lwl        $t1, 0x4($s0)
/* F0F48 800D2E58 9A090007 */  lwr        $t1, 0x7($s0)
/* F0F4C 800D2E5C 8A0A0008 */  lwl        $t2, 0x8($s0)
/* F0F50 800D2E60 9A0A000B */  lwr        $t2, 0xB($s0)
/* F0F54 800D2E64 8A0B000C */  lwl        $t3, 0xC($s0)
/* F0F58 800D2E68 9A0B000F */  lwr        $t3, 0xF($s0)
/* F0F5C 800D2E6C AA480000 */  swl        $t0, 0x0($s2)
/* F0F60 800D2E70 BA480003 */  swr        $t0, 0x3($s2)
/* F0F64 800D2E74 AA490004 */  swl        $t1, 0x4($s2)
/* F0F68 800D2E78 BA490007 */  swr        $t1, 0x7($s2)
/* F0F6C 800D2E7C AA4A0008 */  swl        $t2, 0x8($s2)
/* F0F70 800D2E80 BA4A000B */  swr        $t2, 0xB($s2)
/* F0F74 800D2E84 AA4B000C */  swl        $t3, 0xC($s2)
/* F0F78 800D2E88 BA4B000F */  swr        $t3, 0xF($s2)
/* F0F7C 800D2E8C 8E220E14 */  lw         $v0, 0xE14($s1)
/* F0F80 800D2E90 28420672 */  slti       $v0, $v0, 0x672
/* F0F84 800D2E94 104003F6 */  beqz       $v0, .Lmenu_800D3E70
/* F0F88 800D2E98 26730001 */   addiu     $s3, $s3, 0x1
/* F0F8C 800D2E9C 02802021 */  addu       $a0, $s4, $zero
/* F0F90 800D2EA0 96020008 */  lhu        $v0, 0x8($s0)
/* F0F94 800D2EA4 C7A40030 */  lwc1       $f4, 0x30($sp)
/* F0F98 800D2EA8 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F0F9C 800D2EAC C7A20018 */  lwc1       $f2, 0x18($sp)
/* F0FA0 800D2EB0 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* F0FA4 800D2EB4 9606000C */  lhu        $a2, 0xC($s0)
/* F0FA8 800D2EB8 00021140 */  sll        $v0, $v0, 5
/* F0FAC 800D2EBC 46022181 */  sub.s      $f6, $f4, $f2
/* F0FB0 800D2EC0 00622821 */  addu       $a1, $v1, $v0
/* F0FB4 800D2EC4 00063140 */  sll        $a2, $a2, 5
/* F0FB8 800D2EC8 46020001 */  sub.s      $f0, $f0, $f2
/* F0FBC 800D2ECC E7A40018 */  swc1       $f4, 0x18($sp)
/* F0FC0 800D2ED0 E7A4006C */  swc1       $f4, 0x6C($sp)
/* F0FC4 800D2ED4 46003583 */  div.s      $f22, $f6, $f0
/* F0FC8 800D2ED8 C4A00010 */  lwc1       $f0, 0x10($a1)
/* F0FCC 800D2EDC 4616C501 */  sub.s      $f20, $f24, $f22
/* F0FD0 800D2EE0 E7A00070 */  swc1       $f0, 0x70($sp)
/* F0FD4 800D2EE4 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F0FD8 800D2EE8 4407A000 */  mfc1       $a3, $f20
/* F0FDC 800D2EEC 00663021 */  addu       $a2, $v1, $a2
/* F0FE0 800D2EF0 E7A00074 */  swc1       $f0, 0x74($sp)
/* F0FE4 800D2EF4 0C0345F4 */  jal        func_menu_800D17D0
/* F0FE8 800D2EF8 E7B60010 */   swc1      $f22, 0x10($sp)
/* F0FEC 800D2EFC 02202021 */  addu       $a0, $s1, $zero
/* F0FF0 800D2F00 0C0352FC */  jal        func_menu_800D4BF0
/* F0FF4 800D2F04 02802821 */   addu      $a1, $s4, $zero
/* F0FF8 800D2F08 4407A000 */  mfc1       $a3, $f20
/* F0FFC 800D2F0C 02802021 */  addu       $a0, $s4, $zero
/* F1000 800D2F10 A642000C */  sh         $v0, 0xC($s2)
/* F1004 800D2F14 A6020008 */  sh         $v0, 0x8($s0)
/* F1008 800D2F18 9602000A */  lhu        $v0, 0xA($s0)
/* F100C 800D2F1C 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1010 800D2F20 9606000E */  lhu        $a2, 0xE($s0)
/* F1014 800D2F24 00021140 */  sll        $v0, $v0, 5
/* F1018 800D2F28 00622821 */  addu       $a1, $v1, $v0
/* F101C 800D2F2C 00063140 */  sll        $a2, $a2, 5
/* F1020 800D2F30 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F1024 800D2F34 00663021 */  addu       $a2, $v1, $a2
/* F1028 800D2F38 E7A00074 */  swc1       $f0, 0x74($sp)
/* F102C 800D2F3C 0C0345F4 */  jal        func_menu_800D17D0
/* F1030 800D2F40 E7B60010 */   swc1      $f22, 0x10($sp)
/* F1034 800D2F44 02202021 */  addu       $a0, $s1, $zero
/* F1038 800D2F48 0C0352FC */  jal        func_menu_800D4BF0
/* F103C 800D2F4C 02802821 */   addu      $a1, $s4, $zero
/* F1040 800D2F50 A642000E */  sh         $v0, 0xE($s2)
/* F1044 800D2F54 A602000A */  sh         $v0, 0xA($s0)
.Lmenu_800D2F58:
/* F1048 800D2F58 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* F104C 800D2F5C C7A00034 */  lwc1       $f0, 0x34($sp)
/* F1050 800D2F60 46001032 */  c.eq.s     $f2, $f0
/* F1054 800D2F64 00000000 */  nop
/* F1058 800D2F68 450300AD */  bc1tl      .Lmenu_800D3220
/* F105C 800D2F6C 2673FFFF */   addiu     $s3, $s3, -0x1
/* F1060 800D2F70 4600103C */  c.lt.s     $f2, $f0
/* F1064 800D2F74 00000000 */  nop
/* F1068 800D2F78 4500002E */  bc1f       .Lmenu_800D3034
/* F106C 800D2F7C 00151880 */   sll       $v1, $s5, 2
/* F1070 800D2F80 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1074 800D2F84 02C22021 */  addu       $a0, $s6, $v0
/* F1078 800D2F88 00621021 */  addu       $v0, $v1, $v0
/* F107C 800D2F8C 8C420000 */  lw         $v0, 0x0($v0)
/* F1080 800D2F90 8C900000 */  lw         $s0, 0x0($a0)
/* F1084 800D2F94 AC820000 */  sw         $v0, 0x0($a0)
/* F1088 800D2F98 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F108C 800D2F9C 00621821 */  addu       $v1, $v1, $v0
/* F1090 800D2FA0 AC700000 */  sw         $s0, 0x0($v1)
/* F1094 800D2FA4 8FA80018 */  lw         $t0, 0x18($sp)
/* F1098 800D2FA8 8FA9001C */  lw         $t1, 0x1C($sp)
/* F109C 800D2FAC 8FAA0020 */  lw         $t2, 0x20($sp)
/* F10A0 800D2FB0 8FAB0024 */  lw         $t3, 0x24($sp)
/* F10A4 800D2FB4 AFA80048 */  sw         $t0, 0x48($sp)
/* F10A8 800D2FB8 AFA9004C */  sw         $t1, 0x4C($sp)
/* F10AC 800D2FBC AFAA0050 */  sw         $t2, 0x50($sp)
/* F10B0 800D2FC0 AFAB0054 */  sw         $t3, 0x54($sp)
/* F10B4 800D2FC4 8FA80028 */  lw         $t0, 0x28($sp)
/* F10B8 800D2FC8 8FA9002C */  lw         $t1, 0x2C($sp)
/* F10BC 800D2FCC AFA80058 */  sw         $t0, 0x58($sp)
/* F10C0 800D2FD0 AFA9005C */  sw         $t1, 0x5C($sp)
/* F10C4 800D2FD4 8FA80030 */  lw         $t0, 0x30($sp)
/* F10C8 800D2FD8 8FA90034 */  lw         $t1, 0x34($sp)
/* F10CC 800D2FDC 8FAA0038 */  lw         $t2, 0x38($sp)
/* F10D0 800D2FE0 8FAB003C */  lw         $t3, 0x3C($sp)
/* F10D4 800D2FE4 AFA80018 */  sw         $t0, 0x18($sp)
/* F10D8 800D2FE8 AFA9001C */  sw         $t1, 0x1C($sp)
/* F10DC 800D2FEC AFAA0020 */  sw         $t2, 0x20($sp)
/* F10E0 800D2FF0 AFAB0024 */  sw         $t3, 0x24($sp)
/* F10E4 800D2FF4 8FA80040 */  lw         $t0, 0x40($sp)
/* F10E8 800D2FF8 8FA90044 */  lw         $t1, 0x44($sp)
/* F10EC 800D2FFC AFA80028 */  sw         $t0, 0x28($sp)
/* F10F0 800D3000 AFA9002C */  sw         $t1, 0x2C($sp)
/* F10F4 800D3004 8FA80048 */  lw         $t0, 0x48($sp)
/* F10F8 800D3008 8FA9004C */  lw         $t1, 0x4C($sp)
/* F10FC 800D300C 8FAA0050 */  lw         $t2, 0x50($sp)
/* F1100 800D3010 8FAB0054 */  lw         $t3, 0x54($sp)
/* F1104 800D3014 AFA80030 */  sw         $t0, 0x30($sp)
/* F1108 800D3018 AFA90034 */  sw         $t1, 0x34($sp)
/* F110C 800D301C AFAA0038 */  sw         $t2, 0x38($sp)
/* F1110 800D3020 AFAB003C */  sw         $t3, 0x3C($sp)
/* F1114 800D3024 8FA80058 */  lw         $t0, 0x58($sp)
/* F1118 800D3028 8FA9005C */  lw         $t1, 0x5C($sp)
/* F111C 800D302C AFA80040 */  sw         $t0, 0x40($sp)
/* F1120 800D3030 AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D3034:
/* F1124 800D3034 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1128 800D3038 02C21021 */  addu       $v0, $s6, $v0
/* F112C 800D303C 8C500000 */  lw         $s0, 0x0($v0)
/* F1130 800D3040 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1134 800D3044 9602000C */  lhu        $v0, 0xC($s0)
/* F1138 800D3048 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* F113C 800D304C 00021140 */  sll        $v0, $v0, 5
/* F1140 800D3050 00431021 */  addu       $v0, $v0, $v1
/* F1144 800D3054 C440000C */  lwc1       $f0, 0xC($v0)
/* F1148 800D3058 46020032 */  c.eq.s     $f0, $f2
/* F114C 800D305C 00000000 */  nop
/* F1150 800D3060 45000004 */  bc1f       .Lmenu_800D3074
/* F1154 800D3064 00000000 */   nop
/* F1158 800D3068 9602000E */  lhu        $v0, 0xE($s0)
/* F115C 800D306C 08034C30 */  j          .Lmenu_800D30C0
/* F1160 800D3070 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D3074:
/* F1164 800D3074 9602000A */  lhu        $v0, 0xA($s0)
/* F1168 800D3078 96050008 */  lhu        $a1, 0x8($s0)
/* F116C 800D307C 9603000E */  lhu        $v1, 0xE($s0)
/* F1170 800D3080 9604000C */  lhu        $a0, 0xC($s0)
/* F1174 800D3084 A6020008 */  sh         $v0, 0x8($s0)
/* F1178 800D3088 A605000C */  sh         $a1, 0xC($s0)
/* F117C 800D308C 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* F1180 800D3090 00021140 */  sll        $v0, $v0, 5
/* F1184 800D3094 A603000A */  sh         $v1, 0xA($s0)
/* F1188 800D3098 A604000E */  sh         $a0, 0xE($s0)
/* F118C 800D309C 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1190 800D30A0 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* F1194 800D30A4 00431021 */  addu       $v0, $v0, $v1
/* F1198 800D30A8 C440000C */  lwc1       $f0, 0xC($v0)
/* F119C 800D30AC 46020032 */  c.eq.s     $f0, $f2
/* F11A0 800D30B0 00000000 */  nop
/* F11A4 800D30B4 4500FFEF */  bc1f       .Lmenu_800D3074
/* F11A8 800D30B8 3082FFFF */   andi      $v0, $a0, 0xFFFF
/* F11AC 800D30BC 00021140 */  sll        $v0, $v0, 5
.Lmenu_800D30C0:
/* F11B0 800D30C0 00431021 */  addu       $v0, $v0, $v1
/* F11B4 800D30C4 C440000C */  lwc1       $f0, 0xC($v0)
/* F11B8 800D30C8 46020032 */  c.eq.s     $f0, $f2
/* F11BC 800D30CC 00000000 */  nop
/* F11C0 800D30D0 4500FFE8 */  bc1f       .Lmenu_800D3074
/* F11C4 800D30D4 00132080 */   sll       $a0, $s3, 2
/* F11C8 800D30D8 8E230E14 */  lw         $v1, 0xE14($s1)
/* F11CC 800D30DC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F11D0 800D30E0 00031880 */  sll        $v1, $v1, 2
/* F11D4 800D30E4 00621821 */  addu       $v1, $v1, $v0
/* F11D8 800D30E8 00821021 */  addu       $v0, $a0, $v0
/* F11DC 800D30EC 8C420000 */  lw         $v0, 0x0($v0)
/* F11E0 800D30F0 8C720000 */  lw         $s2, 0x0($v1)
/* F11E4 800D30F4 AC620000 */  sw         $v0, 0x0($v1)
/* F11E8 800D30F8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F11EC 800D30FC 00822021 */  addu       $a0, $a0, $v0
/* F11F0 800D3100 AC920000 */  sw         $s2, 0x0($a0)
/* F11F4 800D3104 8E220E14 */  lw         $v0, 0xE14($s1)
/* F11F8 800D3108 24420001 */  addiu      $v0, $v0, 0x1
/* F11FC 800D310C AE220E14 */  sw         $v0, 0xE14($s1)
/* F1200 800D3110 8A080000 */  lwl        $t0, 0x0($s0)
/* F1204 800D3114 9A080003 */  lwr        $t0, 0x3($s0)
/* F1208 800D3118 8A090004 */  lwl        $t1, 0x4($s0)
/* F120C 800D311C 9A090007 */  lwr        $t1, 0x7($s0)
/* F1210 800D3120 8A0A0008 */  lwl        $t2, 0x8($s0)
/* F1214 800D3124 9A0A000B */  lwr        $t2, 0xB($s0)
/* F1218 800D3128 8A0B000C */  lwl        $t3, 0xC($s0)
/* F121C 800D312C 9A0B000F */  lwr        $t3, 0xF($s0)
/* F1220 800D3130 AA480000 */  swl        $t0, 0x0($s2)
/* F1224 800D3134 BA480003 */  swr        $t0, 0x3($s2)
/* F1228 800D3138 AA490004 */  swl        $t1, 0x4($s2)
/* F122C 800D313C BA490007 */  swr        $t1, 0x7($s2)
/* F1230 800D3140 AA4A0008 */  swl        $t2, 0x8($s2)
/* F1234 800D3144 BA4A000B */  swr        $t2, 0xB($s2)
/* F1238 800D3148 AA4B000C */  swl        $t3, 0xC($s2)
/* F123C 800D314C BA4B000F */  swr        $t3, 0xF($s2)
/* F1240 800D3150 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1244 800D3154 28420672 */  slti       $v0, $v0, 0x672
/* F1248 800D3158 10400345 */  beqz       $v0, .Lmenu_800D3E70
/* F124C 800D315C 26730001 */   addiu     $s3, $s3, 0x1
/* F1250 800D3160 02802021 */  addu       $a0, $s4, $zero
/* F1254 800D3164 96020008 */  lhu        $v0, 0x8($s0)
/* F1258 800D3168 C7A40034 */  lwc1       $f4, 0x34($sp)
/* F125C 800D316C 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1260 800D3170 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F1264 800D3174 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* F1268 800D3178 9606000C */  lhu        $a2, 0xC($s0)
/* F126C 800D317C 00021140 */  sll        $v0, $v0, 5
/* F1270 800D3180 46022181 */  sub.s      $f6, $f4, $f2
/* F1274 800D3184 00622821 */  addu       $a1, $v1, $v0
/* F1278 800D3188 00063140 */  sll        $a2, $a2, 5
/* F127C 800D318C 46020001 */  sub.s      $f0, $f0, $f2
/* F1280 800D3190 E7A4001C */  swc1       $f4, 0x1C($sp)
/* F1284 800D3194 E7A4006C */  swc1       $f4, 0x6C($sp)
/* F1288 800D3198 46003583 */  div.s      $f22, $f6, $f0
/* F128C 800D319C C4A00010 */  lwc1       $f0, 0x10($a1)
/* F1290 800D31A0 4616C501 */  sub.s      $f20, $f24, $f22
/* F1294 800D31A4 E7A00070 */  swc1       $f0, 0x70($sp)
/* F1298 800D31A8 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F129C 800D31AC 4407A000 */  mfc1       $a3, $f20
/* F12A0 800D31B0 00663021 */  addu       $a2, $v1, $a2
/* F12A4 800D31B4 E7A00074 */  swc1       $f0, 0x74($sp)
/* F12A8 800D31B8 0C0345F4 */  jal        func_menu_800D17D0
/* F12AC 800D31BC E7B60010 */   swc1      $f22, 0x10($sp)
/* F12B0 800D31C0 02202021 */  addu       $a0, $s1, $zero
/* F12B4 800D31C4 0C0352FC */  jal        func_menu_800D4BF0
/* F12B8 800D31C8 02802821 */   addu      $a1, $s4, $zero
/* F12BC 800D31CC 4407A000 */  mfc1       $a3, $f20
/* F12C0 800D31D0 02802021 */  addu       $a0, $s4, $zero
/* F12C4 800D31D4 A6420008 */  sh         $v0, 0x8($s2)
/* F12C8 800D31D8 A602000C */  sh         $v0, 0xC($s0)
/* F12CC 800D31DC 9602000A */  lhu        $v0, 0xA($s0)
/* F12D0 800D31E0 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F12D4 800D31E4 9606000E */  lhu        $a2, 0xE($s0)
/* F12D8 800D31E8 00021140 */  sll        $v0, $v0, 5
/* F12DC 800D31EC 00622821 */  addu       $a1, $v1, $v0
/* F12E0 800D31F0 00063140 */  sll        $a2, $a2, 5
/* F12E4 800D31F4 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F12E8 800D31F8 00663021 */  addu       $a2, $v1, $a2
/* F12EC 800D31FC E7A00074 */  swc1       $f0, 0x74($sp)
/* F12F0 800D3200 0C0345F4 */  jal        func_menu_800D17D0
/* F12F4 800D3204 E7B60010 */   swc1      $f22, 0x10($sp)
/* F12F8 800D3208 02202021 */  addu       $a0, $s1, $zero
/* F12FC 800D320C 0C0352FC */  jal        func_menu_800D4BF0
/* F1300 800D3210 02802821 */   addu      $a1, $s4, $zero
/* F1304 800D3214 A642000A */  sh         $v0, 0xA($s2)
/* F1308 800D3218 A602000E */  sh         $v0, 0xE($s0)
/* F130C 800D321C 2673FFFF */  addiu      $s3, $s3, -0x1
.Lmenu_800D3220:
/* F1310 800D3220 00151880 */  sll        $v1, $s5, 2
/* F1314 800D3224 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1318 800D3228 00132080 */  sll        $a0, $s3, 2
/* F131C 800D322C 2442FFFF */  addiu      $v0, $v0, -0x1
/* F1320 800D3230 AE220E14 */  sw         $v0, 0xE14($s1)
/* F1324 800D3234 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1328 800D3238 2673FFFF */  addiu      $s3, $s3, -0x1
/* F132C 800D323C 00621821 */  addu       $v1, $v1, $v0
/* F1330 800D3240 00821021 */  addu       $v0, $a0, $v0
/* F1334 800D3244 8C700000 */  lw         $s0, 0x0($v1)
/* F1338 800D3248 8C420000 */  lw         $v0, 0x0($v0)
/* F133C 800D324C 00132880 */  sll        $a1, $s3, 2
/* F1340 800D3250 AC620000 */  sw         $v0, 0x0($v1)
/* F1344 800D3254 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1348 800D3258 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F134C 800D325C 00021080 */  sll        $v0, $v0, 2
/* F1350 800D3260 00431021 */  addu       $v0, $v0, $v1
/* F1354 800D3264 8C420000 */  lw         $v0, 0x0($v0)
/* F1358 800D3268 00832021 */  addu       $a0, $a0, $v1
/* F135C 800D326C AC820000 */  sw         $v0, 0x0($a0)
/* F1360 800D3270 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1364 800D3274 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F1368 800D3278 00021080 */  sll        $v0, $v0, 2
/* F136C 800D327C 00431021 */  addu       $v0, $v0, $v1
/* F1370 800D3280 AC500000 */  sw         $s0, 0x0($v0)
/* F1374 800D3284 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1378 800D3288 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F137C 800D328C 2442FFFF */  addiu      $v0, $v0, -0x1
/* F1380 800D3290 02C32021 */  addu       $a0, $s6, $v1
/* F1384 800D3294 00A31821 */  addu       $v1, $a1, $v1
/* F1388 800D3298 AE220E14 */  sw         $v0, 0xE14($s1)
/* F138C 800D329C 8C620000 */  lw         $v0, 0x0($v1)
/* F1390 800D32A0 8C900000 */  lw         $s0, 0x0($a0)
/* F1394 800D32A4 AC820000 */  sw         $v0, 0x0($a0)
/* F1398 800D32A8 8E220E14 */  lw         $v0, 0xE14($s1)
/* F139C 800D32AC 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F13A0 800D32B0 00021080 */  sll        $v0, $v0, 2
/* F13A4 800D32B4 00431021 */  addu       $v0, $v0, $v1
/* F13A8 800D32B8 8C420000 */  lw         $v0, 0x0($v0)
/* F13AC 800D32BC 00A32821 */  addu       $a1, $a1, $v1
/* F13B0 800D32C0 ACA20000 */  sw         $v0, 0x0($a1)
/* F13B4 800D32C4 8E220E14 */  lw         $v0, 0xE14($s1)
/* F13B8 800D32C8 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F13BC 800D32CC 00021080 */  sll        $v0, $v0, 2
/* F13C0 800D32D0 00431021 */  addu       $v0, $v0, $v1
/* F13C4 800D32D4 AC500000 */  sw         $s0, 0x0($v0)
/* F13C8 800D32D8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F13CC 800D32DC 02E0A821 */  addu       $s5, $s7, $zero
/* F13D0 800D32E0 02C21021 */  addu       $v0, $s6, $v0
/* F13D4 800D32E4 8C440000 */  lw         $a0, 0x0($v0)
/* F13D8 800D32E8 0C0345B2 */  jal        func_menu_800D16C8
/* F13DC 800D32EC 27A50018 */   addiu     $a1, $sp, 0x18
/* F13E0 800D32F0 26B50001 */  addiu      $s5, $s5, 0x1
.Lmenu_800D32F4:
/* F13E4 800D32F4 02B3102A */  slt        $v0, $s5, $s3
/* F13E8 800D32F8 1440FCEC */  bnez       $v0, .Lmenu_800D26AC
/* F13EC 800D32FC 00000000 */   nop
/* F13F0 800D3300 26F70001 */  addiu      $s7, $s7, 0x1
.Lmenu_800D3304:
/* F13F4 800D3304 2662FFFF */  addiu      $v0, $s3, -0x1
/* F13F8 800D3308 02E2102A */  slt        $v0, $s7, $v0
/* F13FC 800D330C 1440FCDD */  bnez       $v0, .Lmenu_800D2684
/* F1400 800D3310 27DE0004 */   addiu     $fp, $fp, 0x4
.Lmenu_800D3314:
/* F1404 800D3314 00009821 */  addu       $s3, $zero, $zero
/* F1408 800D3318 8E220E14 */  lw         $v0, 0xE14($s1)
/* F140C 800D331C 18400016 */  blez       $v0, .Lmenu_800D3378
/* F1410 800D3320 0260B821 */   addu      $s7, $s3, $zero
/* F1414 800D3324 24070483 */  addiu      $a3, $zero, 0x483
.Lmenu_800D3328:
/* F1418 800D3328 8E240DD0 */  lw         $a0, 0xDD0($s1)
/* F141C 800D332C 00171080 */  sll        $v0, $s7, 2
/* F1420 800D3330 00442821 */  addu       $a1, $v0, $a0
/* F1424 800D3334 8CA60000 */  lw         $a2, 0x0($a1)
/* F1428 800D3338 94C20000 */  lhu        $v0, 0x0($a2)
/* F142C 800D333C 3042FF83 */  andi       $v0, $v0, 0xFF83
/* F1430 800D3340 14470008 */  bne        $v0, $a3, .Lmenu_800D3364
/* F1434 800D3344 00131880 */   sll       $v1, $s3, 2
/* F1438 800D3348 00641021 */  addu       $v0, $v1, $a0
/* F143C 800D334C 8C420000 */  lw         $v0, 0x0($v0)
/* F1440 800D3350 ACA20000 */  sw         $v0, 0x0($a1)
/* F1444 800D3354 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1448 800D3358 26730001 */  addiu      $s3, $s3, 0x1
/* F144C 800D335C 00621821 */  addu       $v1, $v1, $v0
/* F1450 800D3360 AC660000 */  sw         $a2, 0x0($v1)
.Lmenu_800D3364:
/* F1454 800D3364 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1458 800D3368 26F70001 */  addiu      $s7, $s7, 0x1
/* F145C 800D336C 02E2102A */  slt        $v0, $s7, $v0
/* F1460 800D3370 1440FFED */  bnez       $v0, .Lmenu_800D3328
/* F1464 800D3374 00000000 */   nop
.Lmenu_800D3378:
/* F1468 800D3378 2662FFFF */  addiu      $v0, $s3, -0x1
/* F146C 800D337C 1840032D */  blez       $v0, .Lmenu_800D4034
/* F1470 800D3380 0000B821 */   addu      $s7, $zero, $zero
/* F1474 800D3384 3C01800D */  lui        $at, %hi(D_menu_800CA7E0)
/* F1478 800D3388 C438A7E0 */  lwc1       $f24, %lo(D_menu_800CA7E0)($at)
/* F147C 800D338C 27B40060 */  addiu      $s4, $sp, 0x60
/* F1480 800D3390 02E0F021 */  addu       $fp, $s7, $zero
.Lmenu_800D3394:
/* F1484 800D3394 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1488 800D3398 27A50018 */  addiu      $a1, $sp, 0x18
/* F148C 800D339C 03C21021 */  addu       $v0, $fp, $v0
/* F1490 800D33A0 8C440000 */  lw         $a0, 0x0($v0)
/* F1494 800D33A4 0C0345B2 */  jal        func_menu_800D16C8
/* F1498 800D33A8 26F50001 */   addiu     $s5, $s7, 0x1
/* F149C 800D33AC 02B3102A */  slt        $v0, $s5, $s3
/* F14A0 800D33B0 5040031C */  beql       $v0, $zero, .Lmenu_800D4024
/* F14A4 800D33B4 26F70001 */   addiu     $s7, $s7, 0x1
/* F14A8 800D33B8 03C0B021 */  addu       $s6, $fp, $zero
.Lmenu_800D33BC:
/* F14AC 800D33BC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F14B0 800D33C0 00158080 */  sll        $s0, $s5, 2
/* F14B4 800D33C4 02021021 */  addu       $v0, $s0, $v0
/* F14B8 800D33C8 8C440000 */  lw         $a0, 0x0($v0)
/* F14BC 800D33CC 0C0345B2 */  jal        func_menu_800D16C8
/* F14C0 800D33D0 27A50030 */   addiu     $a1, $sp, 0x30
/* F14C4 800D33D4 C7A20018 */  lwc1       $f2, 0x18($sp)
/* F14C8 800D33D8 C7A00030 */  lwc1       $f0, 0x30($sp)
/* F14CC 800D33DC 46001032 */  c.eq.s     $f2, $f0
/* F14D0 800D33E0 00000000 */  nop
/* F14D4 800D33E4 4502030B */  bc1fl      .Lmenu_800D4014
/* F14D8 800D33E8 26B50001 */   addiu     $s5, $s5, 0x1
/* F14DC 800D33EC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F14E0 800D33F0 02C22821 */  addu       $a1, $s6, $v0
/* F14E4 800D33F4 02021021 */  addu       $v0, $s0, $v0
/* F14E8 800D33F8 8CA60000 */  lw         $a2, 0x0($a1)
/* F14EC 800D33FC 8C440000 */  lw         $a0, 0x0($v0)
/* F14F0 800D3400 94C30004 */  lhu        $v1, 0x4($a2)
/* F14F4 800D3404 94820004 */  lhu        $v0, 0x4($a0)
/* F14F8 800D3408 50620302 */  beql       $v1, $v0, .Lmenu_800D4014
/* F14FC 800D340C 26B50001 */   addiu     $s5, $s5, 0x1
/* F1500 800D3410 C7A20020 */  lwc1       $f2, 0x20($sp)
/* F1504 800D3414 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* F1508 800D3418 4600103C */  c.lt.s     $f2, $f0
/* F150C 800D341C 00000000 */  nop
/* F1510 800D3420 450202FC */  bc1fl      .Lmenu_800D4014
/* F1514 800D3424 26B50001 */   addiu     $s5, $s5, 0x1
/* F1518 800D3428 C7A20038 */  lwc1       $f2, 0x38($sp)
/* F151C 800D342C C7A00024 */  lwc1       $f0, 0x24($sp)
/* F1520 800D3430 4600103C */  c.lt.s     $f2, $f0
/* F1524 800D3434 00000000 */  nop
/* F1528 800D3438 450202F6 */  bc1fl      .Lmenu_800D4014
/* F152C 800D343C 26B50001 */   addiu     $s5, $s5, 0x1
/* F1530 800D3440 C7A40028 */  lwc1       $f4, 0x28($sp)
/* F1534 800D3444 C7A00044 */  lwc1       $f0, 0x44($sp)
/* F1538 800D3448 4600203C */  c.lt.s     $f4, $f0
/* F153C 800D344C 00000000 */  nop
/* F1540 800D3450 450202F0 */  bc1fl      .Lmenu_800D4014
/* F1544 800D3454 26B50001 */   addiu     $s5, $s5, 0x1
/* F1548 800D3458 C7A20040 */  lwc1       $f2, 0x40($sp)
/* F154C 800D345C C7A0002C */  lwc1       $f0, 0x2C($sp)
/* F1550 800D3460 4600103C */  c.lt.s     $f2, $f0
/* F1554 800D3464 00000000 */  nop
/* F1558 800D3468 450202EA */  bc1fl      .Lmenu_800D4014
/* F155C 800D346C 26B50001 */   addiu     $s5, $s5, 0x1
/* F1560 800D3470 46022032 */  c.eq.s     $f4, $f2
/* F1564 800D3474 00000000 */  nop
/* F1568 800D3478 450100A0 */  bc1t       .Lmenu_800D36FC
/* F156C 800D347C 00000000 */   nop
/* F1570 800D3480 4604103C */  c.lt.s     $f2, $f4
/* F1574 800D3484 00000000 */  nop
/* F1578 800D3488 45000029 */  bc1f       .Lmenu_800D3530
/* F157C 800D348C 00000000 */   nop
/* F1580 800D3490 ACA40000 */  sw         $a0, 0x0($a1)
/* F1584 800D3494 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1588 800D3498 02021021 */  addu       $v0, $s0, $v0
/* F158C 800D349C AC460000 */  sw         $a2, 0x0($v0)
/* F1590 800D34A0 8FA80018 */  lw         $t0, 0x18($sp)
/* F1594 800D34A4 8FA9001C */  lw         $t1, 0x1C($sp)
/* F1598 800D34A8 8FAA0020 */  lw         $t2, 0x20($sp)
/* F159C 800D34AC 8FAB0024 */  lw         $t3, 0x24($sp)
/* F15A0 800D34B0 AFA80048 */  sw         $t0, 0x48($sp)
/* F15A4 800D34B4 AFA9004C */  sw         $t1, 0x4C($sp)
/* F15A8 800D34B8 AFAA0050 */  sw         $t2, 0x50($sp)
/* F15AC 800D34BC AFAB0054 */  sw         $t3, 0x54($sp)
/* F15B0 800D34C0 8FA80028 */  lw         $t0, 0x28($sp)
/* F15B4 800D34C4 8FA9002C */  lw         $t1, 0x2C($sp)
/* F15B8 800D34C8 AFA80058 */  sw         $t0, 0x58($sp)
/* F15BC 800D34CC AFA9005C */  sw         $t1, 0x5C($sp)
/* F15C0 800D34D0 8FA80030 */  lw         $t0, 0x30($sp)
/* F15C4 800D34D4 8FA90034 */  lw         $t1, 0x34($sp)
/* F15C8 800D34D8 8FAA0038 */  lw         $t2, 0x38($sp)
/* F15CC 800D34DC 8FAB003C */  lw         $t3, 0x3C($sp)
/* F15D0 800D34E0 AFA80018 */  sw         $t0, 0x18($sp)
/* F15D4 800D34E4 AFA9001C */  sw         $t1, 0x1C($sp)
/* F15D8 800D34E8 AFAA0020 */  sw         $t2, 0x20($sp)
/* F15DC 800D34EC AFAB0024 */  sw         $t3, 0x24($sp)
/* F15E0 800D34F0 8FA80040 */  lw         $t0, 0x40($sp)
/* F15E4 800D34F4 8FA90044 */  lw         $t1, 0x44($sp)
/* F15E8 800D34F8 AFA80028 */  sw         $t0, 0x28($sp)
/* F15EC 800D34FC AFA9002C */  sw         $t1, 0x2C($sp)
/* F15F0 800D3500 8FA80048 */  lw         $t0, 0x48($sp)
/* F15F4 800D3504 8FA9004C */  lw         $t1, 0x4C($sp)
/* F15F8 800D3508 8FAA0050 */  lw         $t2, 0x50($sp)
/* F15FC 800D350C 8FAB0054 */  lw         $t3, 0x54($sp)
/* F1600 800D3510 AFA80030 */  sw         $t0, 0x30($sp)
/* F1604 800D3514 AFA90034 */  sw         $t1, 0x34($sp)
/* F1608 800D3518 AFAA0038 */  sw         $t2, 0x38($sp)
/* F160C 800D351C AFAB003C */  sw         $t3, 0x3C($sp)
/* F1610 800D3520 8FA80058 */  lw         $t0, 0x58($sp)
/* F1614 800D3524 8FA9005C */  lw         $t1, 0x5C($sp)
/* F1618 800D3528 AFA80040 */  sw         $t0, 0x40($sp)
/* F161C 800D352C AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D3530:
/* F1620 800D3530 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1624 800D3534 02C21021 */  addu       $v0, $s6, $v0
/* F1628 800D3538 8C500000 */  lw         $s0, 0x0($v0)
/* F162C 800D353C 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1630 800D3540 96020008 */  lhu        $v0, 0x8($s0)
/* F1634 800D3544 C7A20028 */  lwc1       $f2, 0x28($sp)
/* F1638 800D3548 08034D60 */  j          .Lmenu_800D3580
/* F163C 800D354C 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D3550:
/* F1640 800D3550 9602000A */  lhu        $v0, 0xA($s0)
/* F1644 800D3554 96050008 */  lhu        $a1, 0x8($s0)
/* F1648 800D3558 9603000E */  lhu        $v1, 0xE($s0)
/* F164C 800D355C 9604000C */  lhu        $a0, 0xC($s0)
/* F1650 800D3560 A6020008 */  sh         $v0, 0x8($s0)
/* F1654 800D3564 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* F1658 800D3568 00021140 */  sll        $v0, $v0, 5
/* F165C 800D356C A603000A */  sh         $v1, 0xA($s0)
/* F1660 800D3570 A604000E */  sh         $a0, 0xE($s0)
/* F1664 800D3574 A605000C */  sh         $a1, 0xC($s0)
/* F1668 800D3578 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F166C 800D357C C7A20028 */  lwc1       $f2, 0x28($sp)
.Lmenu_800D3580:
/* F1670 800D3580 00431021 */  addu       $v0, $v0, $v1
/* F1674 800D3584 C4400014 */  lwc1       $f0, 0x14($v0)
/* F1678 800D3588 46020032 */  c.eq.s     $f0, $f2
/* F167C 800D358C 00000000 */  nop
/* F1680 800D3590 4500FFEF */  bc1f       .Lmenu_800D3550
/* F1684 800D3594 00000000 */   nop
/* F1688 800D3598 9602000A */  lhu        $v0, 0xA($s0)
/* F168C 800D359C 00021140 */  sll        $v0, $v0, 5
/* F1690 800D35A0 00431021 */  addu       $v0, $v0, $v1
/* F1694 800D35A4 C4400014 */  lwc1       $f0, 0x14($v0)
/* F1698 800D35A8 46020032 */  c.eq.s     $f0, $f2
/* F169C 800D35AC 00000000 */  nop
/* F16A0 800D35B0 4500FFE7 */  bc1f       .Lmenu_800D3550
/* F16A4 800D35B4 00132080 */   sll       $a0, $s3, 2
/* F16A8 800D35B8 8E230E14 */  lw         $v1, 0xE14($s1)
/* F16AC 800D35BC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F16B0 800D35C0 00031880 */  sll        $v1, $v1, 2
/* F16B4 800D35C4 00621821 */  addu       $v1, $v1, $v0
/* F16B8 800D35C8 00821021 */  addu       $v0, $a0, $v0
/* F16BC 800D35CC 8C420000 */  lw         $v0, 0x0($v0)
/* F16C0 800D35D0 8C720000 */  lw         $s2, 0x0($v1)
/* F16C4 800D35D4 AC620000 */  sw         $v0, 0x0($v1)
/* F16C8 800D35D8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F16CC 800D35DC 00822021 */  addu       $a0, $a0, $v0
/* F16D0 800D35E0 AC920000 */  sw         $s2, 0x0($a0)
/* F16D4 800D35E4 8E220E14 */  lw         $v0, 0xE14($s1)
/* F16D8 800D35E8 24420001 */  addiu      $v0, $v0, 0x1
/* F16DC 800D35EC AE220E14 */  sw         $v0, 0xE14($s1)
/* F16E0 800D35F0 8A080000 */  lwl        $t0, 0x0($s0)
/* F16E4 800D35F4 9A080003 */  lwr        $t0, 0x3($s0)
/* F16E8 800D35F8 8A090004 */  lwl        $t1, 0x4($s0)
/* F16EC 800D35FC 9A090007 */  lwr        $t1, 0x7($s0)
/* F16F0 800D3600 8A0A0008 */  lwl        $t2, 0x8($s0)
/* F16F4 800D3604 9A0A000B */  lwr        $t2, 0xB($s0)
/* F16F8 800D3608 8A0B000C */  lwl        $t3, 0xC($s0)
/* F16FC 800D360C 9A0B000F */  lwr        $t3, 0xF($s0)
/* F1700 800D3610 AA480000 */  swl        $t0, 0x0($s2)
/* F1704 800D3614 BA480003 */  swr        $t0, 0x3($s2)
/* F1708 800D3618 AA490004 */  swl        $t1, 0x4($s2)
/* F170C 800D361C BA490007 */  swr        $t1, 0x7($s2)
/* F1710 800D3620 AA4A0008 */  swl        $t2, 0x8($s2)
/* F1714 800D3624 BA4A000B */  swr        $t2, 0xB($s2)
/* F1718 800D3628 AA4B000C */  swl        $t3, 0xC($s2)
/* F171C 800D362C BA4B000F */  swr        $t3, 0xF($s2)
/* F1720 800D3630 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1724 800D3634 28420672 */  slti       $v0, $v0, 0x672
/* F1728 800D3638 1040020D */  beqz       $v0, .Lmenu_800D3E70
/* F172C 800D363C 26730001 */   addiu     $s3, $s3, 0x1
/* F1730 800D3640 02802021 */  addu       $a0, $s4, $zero
/* F1734 800D3644 C7A40040 */  lwc1       $f4, 0x40($sp)
/* F1738 800D3648 C7A00028 */  lwc1       $f0, 0x28($sp)
/* F173C 800D364C C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F1740 800D3650 96020008 */  lhu        $v0, 0x8($s0)
/* F1744 800D3654 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1748 800D3658 9606000C */  lhu        $a2, 0xC($s0)
/* F174C 800D365C 46002181 */  sub.s      $f6, $f4, $f0
/* F1750 800D3660 00021140 */  sll        $v0, $v0, 5
/* F1754 800D3664 00622821 */  addu       $a1, $v1, $v0
/* F1758 800D3668 46001081 */  sub.s      $f2, $f2, $f0
/* F175C 800D366C 00063140 */  sll        $a2, $a2, 5
/* F1760 800D3670 C4A0000C */  lwc1       $f0, 0xC($a1)
/* F1764 800D3674 46023583 */  div.s      $f22, $f6, $f2
/* F1768 800D3678 4616C501 */  sub.s      $f20, $f24, $f22
/* F176C 800D367C E7A0006C */  swc1       $f0, 0x6C($sp)
/* F1770 800D3680 C4A00010 */  lwc1       $f0, 0x10($a1)
/* F1774 800D3684 4407A000 */  mfc1       $a3, $f20
/* F1778 800D3688 00663021 */  addu       $a2, $v1, $a2
/* F177C 800D368C E7A40028 */  swc1       $f4, 0x28($sp)
/* F1780 800D3690 E7A40074 */  swc1       $f4, 0x74($sp)
/* F1784 800D3694 E7A00070 */  swc1       $f0, 0x70($sp)
/* F1788 800D3698 0C0345F4 */  jal        func_menu_800D17D0
/* F178C 800D369C E7B60010 */   swc1      $f22, 0x10($sp)
/* F1790 800D36A0 02202021 */  addu       $a0, $s1, $zero
/* F1794 800D36A4 0C0352FC */  jal        func_menu_800D4BF0
/* F1798 800D36A8 02802821 */   addu      $a1, $s4, $zero
/* F179C 800D36AC 4407A000 */  mfc1       $a3, $f20
/* F17A0 800D36B0 02802021 */  addu       $a0, $s4, $zero
/* F17A4 800D36B4 A642000C */  sh         $v0, 0xC($s2)
/* F17A8 800D36B8 A6020008 */  sh         $v0, 0x8($s0)
/* F17AC 800D36BC 9602000A */  lhu        $v0, 0xA($s0)
/* F17B0 800D36C0 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F17B4 800D36C4 9606000E */  lhu        $a2, 0xE($s0)
/* F17B8 800D36C8 00021140 */  sll        $v0, $v0, 5
/* F17BC 800D36CC 00622821 */  addu       $a1, $v1, $v0
/* F17C0 800D36D0 00063140 */  sll        $a2, $a2, 5
/* F17C4 800D36D4 C4A00010 */  lwc1       $f0, 0x10($a1)
/* F17C8 800D36D8 00663021 */  addu       $a2, $v1, $a2
/* F17CC 800D36DC E7A00070 */  swc1       $f0, 0x70($sp)
/* F17D0 800D36E0 0C0345F4 */  jal        func_menu_800D17D0
/* F17D4 800D36E4 E7B60010 */   swc1      $f22, 0x10($sp)
/* F17D8 800D36E8 02202021 */  addu       $a0, $s1, $zero
/* F17DC 800D36EC 0C0352FC */  jal        func_menu_800D4BF0
/* F17E0 800D36F0 02802821 */   addu      $a1, $s4, $zero
/* F17E4 800D36F4 A642000E */  sh         $v0, 0xE($s2)
/* F17E8 800D36F8 A602000A */  sh         $v0, 0xA($s0)
.Lmenu_800D36FC:
/* F17EC 800D36FC C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F17F0 800D3700 C7A00044 */  lwc1       $f0, 0x44($sp)
/* F17F4 800D3704 46001032 */  c.eq.s     $f2, $f0
/* F17F8 800D3708 00000000 */  nop
/* F17FC 800D370C 450100AC */  bc1t       .Lmenu_800D39C0
/* F1800 800D3710 00000000 */   nop
/* F1804 800D3714 4600103C */  c.lt.s     $f2, $f0
/* F1808 800D3718 00000000 */  nop
/* F180C 800D371C 4500002E */  bc1f       .Lmenu_800D37D8
/* F1810 800D3720 00151880 */   sll       $v1, $s5, 2
/* F1814 800D3724 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1818 800D3728 02C22021 */  addu       $a0, $s6, $v0
/* F181C 800D372C 00621021 */  addu       $v0, $v1, $v0
/* F1820 800D3730 8C420000 */  lw         $v0, 0x0($v0)
/* F1824 800D3734 8C900000 */  lw         $s0, 0x0($a0)
/* F1828 800D3738 AC820000 */  sw         $v0, 0x0($a0)
/* F182C 800D373C 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1830 800D3740 00621821 */  addu       $v1, $v1, $v0
/* F1834 800D3744 AC700000 */  sw         $s0, 0x0($v1)
/* F1838 800D3748 8FA80018 */  lw         $t0, 0x18($sp)
/* F183C 800D374C 8FA9001C */  lw         $t1, 0x1C($sp)
/* F1840 800D3750 8FAA0020 */  lw         $t2, 0x20($sp)
/* F1844 800D3754 8FAB0024 */  lw         $t3, 0x24($sp)
/* F1848 800D3758 AFA80048 */  sw         $t0, 0x48($sp)
/* F184C 800D375C AFA9004C */  sw         $t1, 0x4C($sp)
/* F1850 800D3760 AFAA0050 */  sw         $t2, 0x50($sp)
/* F1854 800D3764 AFAB0054 */  sw         $t3, 0x54($sp)
/* F1858 800D3768 8FA80028 */  lw         $t0, 0x28($sp)
/* F185C 800D376C 8FA9002C */  lw         $t1, 0x2C($sp)
/* F1860 800D3770 AFA80058 */  sw         $t0, 0x58($sp)
/* F1864 800D3774 AFA9005C */  sw         $t1, 0x5C($sp)
/* F1868 800D3778 8FA80030 */  lw         $t0, 0x30($sp)
/* F186C 800D377C 8FA90034 */  lw         $t1, 0x34($sp)
/* F1870 800D3780 8FAA0038 */  lw         $t2, 0x38($sp)
/* F1874 800D3784 8FAB003C */  lw         $t3, 0x3C($sp)
/* F1878 800D3788 AFA80018 */  sw         $t0, 0x18($sp)
/* F187C 800D378C AFA9001C */  sw         $t1, 0x1C($sp)
/* F1880 800D3790 AFAA0020 */  sw         $t2, 0x20($sp)
/* F1884 800D3794 AFAB0024 */  sw         $t3, 0x24($sp)
/* F1888 800D3798 8FA80040 */  lw         $t0, 0x40($sp)
/* F188C 800D379C 8FA90044 */  lw         $t1, 0x44($sp)
/* F1890 800D37A0 AFA80028 */  sw         $t0, 0x28($sp)
/* F1894 800D37A4 AFA9002C */  sw         $t1, 0x2C($sp)
/* F1898 800D37A8 8FA80048 */  lw         $t0, 0x48($sp)
/* F189C 800D37AC 8FA9004C */  lw         $t1, 0x4C($sp)
/* F18A0 800D37B0 8FAA0050 */  lw         $t2, 0x50($sp)
/* F18A4 800D37B4 8FAB0054 */  lw         $t3, 0x54($sp)
/* F18A8 800D37B8 AFA80030 */  sw         $t0, 0x30($sp)
/* F18AC 800D37BC AFA90034 */  sw         $t1, 0x34($sp)
/* F18B0 800D37C0 AFAA0038 */  sw         $t2, 0x38($sp)
/* F18B4 800D37C4 AFAB003C */  sw         $t3, 0x3C($sp)
/* F18B8 800D37C8 8FA80058 */  lw         $t0, 0x58($sp)
/* F18BC 800D37CC 8FA9005C */  lw         $t1, 0x5C($sp)
/* F18C0 800D37D0 AFA80040 */  sw         $t0, 0x40($sp)
/* F18C4 800D37D4 AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D37D8:
/* F18C8 800D37D8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F18CC 800D37DC 02C21021 */  addu       $v0, $s6, $v0
/* F18D0 800D37E0 8C500000 */  lw         $s0, 0x0($v0)
/* F18D4 800D37E4 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F18D8 800D37E8 9602000C */  lhu        $v0, 0xC($s0)
/* F18DC 800D37EC C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F18E0 800D37F0 00021140 */  sll        $v0, $v0, 5
/* F18E4 800D37F4 00431021 */  addu       $v0, $v0, $v1
/* F18E8 800D37F8 C4400014 */  lwc1       $f0, 0x14($v0)
/* F18EC 800D37FC 46020032 */  c.eq.s     $f0, $f2
/* F18F0 800D3800 00000000 */  nop
/* F18F4 800D3804 45000004 */  bc1f       .Lmenu_800D3818
/* F18F8 800D3808 00000000 */   nop
/* F18FC 800D380C 9602000E */  lhu        $v0, 0xE($s0)
/* F1900 800D3810 08034E19 */  j          .Lmenu_800D3864
/* F1904 800D3814 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D3818:
/* F1908 800D3818 9602000A */  lhu        $v0, 0xA($s0)
/* F190C 800D381C 96050008 */  lhu        $a1, 0x8($s0)
/* F1910 800D3820 9603000E */  lhu        $v1, 0xE($s0)
/* F1914 800D3824 9604000C */  lhu        $a0, 0xC($s0)
/* F1918 800D3828 A6020008 */  sh         $v0, 0x8($s0)
/* F191C 800D382C A605000C */  sh         $a1, 0xC($s0)
/* F1920 800D3830 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* F1924 800D3834 00021140 */  sll        $v0, $v0, 5
/* F1928 800D3838 A603000A */  sh         $v1, 0xA($s0)
/* F192C 800D383C A604000E */  sh         $a0, 0xE($s0)
/* F1930 800D3840 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1934 800D3844 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F1938 800D3848 00431021 */  addu       $v0, $v0, $v1
/* F193C 800D384C C4400014 */  lwc1       $f0, 0x14($v0)
/* F1940 800D3850 46020032 */  c.eq.s     $f0, $f2
/* F1944 800D3854 00000000 */  nop
/* F1948 800D3858 4500FFEF */  bc1f       .Lmenu_800D3818
/* F194C 800D385C 3082FFFF */   andi      $v0, $a0, 0xFFFF
/* F1950 800D3860 00021140 */  sll        $v0, $v0, 5
.Lmenu_800D3864:
/* F1954 800D3864 00431021 */  addu       $v0, $v0, $v1
/* F1958 800D3868 C4400014 */  lwc1       $f0, 0x14($v0)
/* F195C 800D386C 46020032 */  c.eq.s     $f0, $f2
/* F1960 800D3870 00000000 */  nop
/* F1964 800D3874 4500FFE8 */  bc1f       .Lmenu_800D3818
/* F1968 800D3878 00132080 */   sll       $a0, $s3, 2
/* F196C 800D387C 8E230E14 */  lw         $v1, 0xE14($s1)
/* F1970 800D3880 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1974 800D3884 00031880 */  sll        $v1, $v1, 2
/* F1978 800D3888 00621821 */  addu       $v1, $v1, $v0
/* F197C 800D388C 00821021 */  addu       $v0, $a0, $v0
/* F1980 800D3890 8C420000 */  lw         $v0, 0x0($v0)
/* F1984 800D3894 8C720000 */  lw         $s2, 0x0($v1)
/* F1988 800D3898 AC620000 */  sw         $v0, 0x0($v1)
/* F198C 800D389C 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1990 800D38A0 00822021 */  addu       $a0, $a0, $v0
/* F1994 800D38A4 AC920000 */  sw         $s2, 0x0($a0)
/* F1998 800D38A8 8E220E14 */  lw         $v0, 0xE14($s1)
/* F199C 800D38AC 24420001 */  addiu      $v0, $v0, 0x1
/* F19A0 800D38B0 AE220E14 */  sw         $v0, 0xE14($s1)
/* F19A4 800D38B4 8A080000 */  lwl        $t0, 0x0($s0)
/* F19A8 800D38B8 9A080003 */  lwr        $t0, 0x3($s0)
/* F19AC 800D38BC 8A090004 */  lwl        $t1, 0x4($s0)
/* F19B0 800D38C0 9A090007 */  lwr        $t1, 0x7($s0)
/* F19B4 800D38C4 8A0A0008 */  lwl        $t2, 0x8($s0)
/* F19B8 800D38C8 9A0A000B */  lwr        $t2, 0xB($s0)
/* F19BC 800D38CC 8A0B000C */  lwl        $t3, 0xC($s0)
/* F19C0 800D38D0 9A0B000F */  lwr        $t3, 0xF($s0)
/* F19C4 800D38D4 AA480000 */  swl        $t0, 0x0($s2)
/* F19C8 800D38D8 BA480003 */  swr        $t0, 0x3($s2)
/* F19CC 800D38DC AA490004 */  swl        $t1, 0x4($s2)
/* F19D0 800D38E0 BA490007 */  swr        $t1, 0x7($s2)
/* F19D4 800D38E4 AA4A0008 */  swl        $t2, 0x8($s2)
/* F19D8 800D38E8 BA4A000B */  swr        $t2, 0xB($s2)
/* F19DC 800D38EC AA4B000C */  swl        $t3, 0xC($s2)
/* F19E0 800D38F0 BA4B000F */  swr        $t3, 0xF($s2)
/* F19E4 800D38F4 8E220E14 */  lw         $v0, 0xE14($s1)
/* F19E8 800D38F8 28420672 */  slti       $v0, $v0, 0x672
/* F19EC 800D38FC 1040015C */  beqz       $v0, .Lmenu_800D3E70
/* F19F0 800D3900 26730001 */   addiu     $s3, $s3, 0x1
/* F19F4 800D3904 02802021 */  addu       $a0, $s4, $zero
/* F19F8 800D3908 C7A40044 */  lwc1       $f4, 0x44($sp)
/* F19FC 800D390C C7A00028 */  lwc1       $f0, 0x28($sp)
/* F1A00 800D3910 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* F1A04 800D3914 96020008 */  lhu        $v0, 0x8($s0)
/* F1A08 800D3918 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1A0C 800D391C 9606000C */  lhu        $a2, 0xC($s0)
/* F1A10 800D3920 46002181 */  sub.s      $f6, $f4, $f0
/* F1A14 800D3924 00021140 */  sll        $v0, $v0, 5
/* F1A18 800D3928 00622821 */  addu       $a1, $v1, $v0
/* F1A1C 800D392C 46001081 */  sub.s      $f2, $f2, $f0
/* F1A20 800D3930 00063140 */  sll        $a2, $a2, 5
/* F1A24 800D3934 C4A0000C */  lwc1       $f0, 0xC($a1)
/* F1A28 800D3938 46023583 */  div.s      $f22, $f6, $f2
/* F1A2C 800D393C 4616C501 */  sub.s      $f20, $f24, $f22
/* F1A30 800D3940 E7A0006C */  swc1       $f0, 0x6C($sp)
/* F1A34 800D3944 C4A00010 */  lwc1       $f0, 0x10($a1)
/* F1A38 800D3948 4407A000 */  mfc1       $a3, $f20
/* F1A3C 800D394C 00663021 */  addu       $a2, $v1, $a2
/* F1A40 800D3950 E7A4002C */  swc1       $f4, 0x2C($sp)
/* F1A44 800D3954 E7A40074 */  swc1       $f4, 0x74($sp)
/* F1A48 800D3958 E7A00070 */  swc1       $f0, 0x70($sp)
/* F1A4C 800D395C 0C0345F4 */  jal        func_menu_800D17D0
/* F1A50 800D3960 E7B60010 */   swc1      $f22, 0x10($sp)
/* F1A54 800D3964 02202021 */  addu       $a0, $s1, $zero
/* F1A58 800D3968 0C0352FC */  jal        func_menu_800D4BF0
/* F1A5C 800D396C 02802821 */   addu      $a1, $s4, $zero
/* F1A60 800D3970 4407A000 */  mfc1       $a3, $f20
/* F1A64 800D3974 02802021 */  addu       $a0, $s4, $zero
/* F1A68 800D3978 A6420008 */  sh         $v0, 0x8($s2)
/* F1A6C 800D397C A602000C */  sh         $v0, 0xC($s0)
/* F1A70 800D3980 9602000A */  lhu        $v0, 0xA($s0)
/* F1A74 800D3984 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1A78 800D3988 9606000E */  lhu        $a2, 0xE($s0)
/* F1A7C 800D398C 00021140 */  sll        $v0, $v0, 5
/* F1A80 800D3990 00622821 */  addu       $a1, $v1, $v0
/* F1A84 800D3994 00063140 */  sll        $a2, $a2, 5
/* F1A88 800D3998 C4A00010 */  lwc1       $f0, 0x10($a1)
/* F1A8C 800D399C 00663021 */  addu       $a2, $v1, $a2
/* F1A90 800D39A0 E7A00070 */  swc1       $f0, 0x70($sp)
/* F1A94 800D39A4 0C0345F4 */  jal        func_menu_800D17D0
/* F1A98 800D39A8 E7B60010 */   swc1      $f22, 0x10($sp)
/* F1A9C 800D39AC 02202021 */  addu       $a0, $s1, $zero
/* F1AA0 800D39B0 0C0352FC */  jal        func_menu_800D4BF0
/* F1AA4 800D39B4 02802821 */   addu      $a1, $s4, $zero
/* F1AA8 800D39B8 A642000A */  sh         $v0, 0xA($s2)
/* F1AAC 800D39BC A602000E */  sh         $v0, 0xE($s0)
.Lmenu_800D39C0:
/* F1AB0 800D39C0 C7A20020 */  lwc1       $f2, 0x20($sp)
/* F1AB4 800D39C4 C7A00038 */  lwc1       $f0, 0x38($sp)
/* F1AB8 800D39C8 46001032 */  c.eq.s     $f2, $f0
/* F1ABC 800D39CC 00000000 */  nop
/* F1AC0 800D39D0 450100A5 */  bc1t       .Lmenu_800D3C68
/* F1AC4 800D39D4 00000000 */   nop
/* F1AC8 800D39D8 4602003C */  c.lt.s     $f0, $f2
/* F1ACC 800D39DC 00000000 */  nop
/* F1AD0 800D39E0 4500002E */  bc1f       .Lmenu_800D3A9C
/* F1AD4 800D39E4 00151880 */   sll       $v1, $s5, 2
/* F1AD8 800D39E8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1ADC 800D39EC 02C22021 */  addu       $a0, $s6, $v0
/* F1AE0 800D39F0 00621021 */  addu       $v0, $v1, $v0
/* F1AE4 800D39F4 8C420000 */  lw         $v0, 0x0($v0)
/* F1AE8 800D39F8 8C900000 */  lw         $s0, 0x0($a0)
/* F1AEC 800D39FC AC820000 */  sw         $v0, 0x0($a0)
/* F1AF0 800D3A00 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1AF4 800D3A04 00621821 */  addu       $v1, $v1, $v0
/* F1AF8 800D3A08 AC700000 */  sw         $s0, 0x0($v1)
/* F1AFC 800D3A0C 8FA80018 */  lw         $t0, 0x18($sp)
/* F1B00 800D3A10 8FA9001C */  lw         $t1, 0x1C($sp)
/* F1B04 800D3A14 8FAA0020 */  lw         $t2, 0x20($sp)
/* F1B08 800D3A18 8FAB0024 */  lw         $t3, 0x24($sp)
/* F1B0C 800D3A1C AFA80048 */  sw         $t0, 0x48($sp)
/* F1B10 800D3A20 AFA9004C */  sw         $t1, 0x4C($sp)
/* F1B14 800D3A24 AFAA0050 */  sw         $t2, 0x50($sp)
/* F1B18 800D3A28 AFAB0054 */  sw         $t3, 0x54($sp)
/* F1B1C 800D3A2C 8FA80028 */  lw         $t0, 0x28($sp)
/* F1B20 800D3A30 8FA9002C */  lw         $t1, 0x2C($sp)
/* F1B24 800D3A34 AFA80058 */  sw         $t0, 0x58($sp)
/* F1B28 800D3A38 AFA9005C */  sw         $t1, 0x5C($sp)
/* F1B2C 800D3A3C 8FA80030 */  lw         $t0, 0x30($sp)
/* F1B30 800D3A40 8FA90034 */  lw         $t1, 0x34($sp)
/* F1B34 800D3A44 8FAA0038 */  lw         $t2, 0x38($sp)
/* F1B38 800D3A48 8FAB003C */  lw         $t3, 0x3C($sp)
/* F1B3C 800D3A4C AFA80018 */  sw         $t0, 0x18($sp)
/* F1B40 800D3A50 AFA9001C */  sw         $t1, 0x1C($sp)
/* F1B44 800D3A54 AFAA0020 */  sw         $t2, 0x20($sp)
/* F1B48 800D3A58 AFAB0024 */  sw         $t3, 0x24($sp)
/* F1B4C 800D3A5C 8FA80040 */  lw         $t0, 0x40($sp)
/* F1B50 800D3A60 8FA90044 */  lw         $t1, 0x44($sp)
/* F1B54 800D3A64 AFA80028 */  sw         $t0, 0x28($sp)
/* F1B58 800D3A68 AFA9002C */  sw         $t1, 0x2C($sp)
/* F1B5C 800D3A6C 8FA80048 */  lw         $t0, 0x48($sp)
/* F1B60 800D3A70 8FA9004C */  lw         $t1, 0x4C($sp)
/* F1B64 800D3A74 8FAA0050 */  lw         $t2, 0x50($sp)
/* F1B68 800D3A78 8FAB0054 */  lw         $t3, 0x54($sp)
/* F1B6C 800D3A7C AFA80030 */  sw         $t0, 0x30($sp)
/* F1B70 800D3A80 AFA90034 */  sw         $t1, 0x34($sp)
/* F1B74 800D3A84 AFAA0038 */  sw         $t2, 0x38($sp)
/* F1B78 800D3A88 AFAB003C */  sw         $t3, 0x3C($sp)
/* F1B7C 800D3A8C 8FA80058 */  lw         $t0, 0x58($sp)
/* F1B80 800D3A90 8FA9005C */  lw         $t1, 0x5C($sp)
/* F1B84 800D3A94 AFA80040 */  sw         $t0, 0x40($sp)
/* F1B88 800D3A98 AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D3A9C:
/* F1B8C 800D3A9C 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1B90 800D3AA0 02C21021 */  addu       $v0, $s6, $v0
/* F1B94 800D3AA4 8C500000 */  lw         $s0, 0x0($v0)
/* F1B98 800D3AA8 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1B9C 800D3AAC 96020008 */  lhu        $v0, 0x8($s0)
/* F1BA0 800D3AB0 C7A20020 */  lwc1       $f2, 0x20($sp)
/* F1BA4 800D3AB4 08034EBB */  j          .Lmenu_800D3AEC
/* F1BA8 800D3AB8 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D3ABC:
/* F1BAC 800D3ABC 9602000A */  lhu        $v0, 0xA($s0)
/* F1BB0 800D3AC0 96050008 */  lhu        $a1, 0x8($s0)
/* F1BB4 800D3AC4 9603000E */  lhu        $v1, 0xE($s0)
/* F1BB8 800D3AC8 9604000C */  lhu        $a0, 0xC($s0)
/* F1BBC 800D3ACC A6020008 */  sh         $v0, 0x8($s0)
/* F1BC0 800D3AD0 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* F1BC4 800D3AD4 00021140 */  sll        $v0, $v0, 5
/* F1BC8 800D3AD8 A603000A */  sh         $v1, 0xA($s0)
/* F1BCC 800D3ADC A604000E */  sh         $a0, 0xE($s0)
/* F1BD0 800D3AE0 A605000C */  sh         $a1, 0xC($s0)
/* F1BD4 800D3AE4 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1BD8 800D3AE8 C7A20020 */  lwc1       $f2, 0x20($sp)
.Lmenu_800D3AEC:
/* F1BDC 800D3AEC 00431021 */  addu       $v0, $v0, $v1
/* F1BE0 800D3AF0 C4400010 */  lwc1       $f0, 0x10($v0)
/* F1BE4 800D3AF4 46020032 */  c.eq.s     $f0, $f2
/* F1BE8 800D3AF8 00000000 */  nop
/* F1BEC 800D3AFC 4500FFEF */  bc1f       .Lmenu_800D3ABC
/* F1BF0 800D3B00 00000000 */   nop
/* F1BF4 800D3B04 9602000A */  lhu        $v0, 0xA($s0)
/* F1BF8 800D3B08 00021140 */  sll        $v0, $v0, 5
/* F1BFC 800D3B0C 00431021 */  addu       $v0, $v0, $v1
/* F1C00 800D3B10 C4400010 */  lwc1       $f0, 0x10($v0)
/* F1C04 800D3B14 46020032 */  c.eq.s     $f0, $f2
/* F1C08 800D3B18 00000000 */  nop
/* F1C0C 800D3B1C 4500FFE7 */  bc1f       .Lmenu_800D3ABC
/* F1C10 800D3B20 00132080 */   sll       $a0, $s3, 2
/* F1C14 800D3B24 8E230E14 */  lw         $v1, 0xE14($s1)
/* F1C18 800D3B28 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1C1C 800D3B2C 00031880 */  sll        $v1, $v1, 2
/* F1C20 800D3B30 00621821 */  addu       $v1, $v1, $v0
/* F1C24 800D3B34 00821021 */  addu       $v0, $a0, $v0
/* F1C28 800D3B38 8C420000 */  lw         $v0, 0x0($v0)
/* F1C2C 800D3B3C 8C720000 */  lw         $s2, 0x0($v1)
/* F1C30 800D3B40 AC620000 */  sw         $v0, 0x0($v1)
/* F1C34 800D3B44 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1C38 800D3B48 00822021 */  addu       $a0, $a0, $v0
/* F1C3C 800D3B4C AC920000 */  sw         $s2, 0x0($a0)
/* F1C40 800D3B50 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1C44 800D3B54 24420001 */  addiu      $v0, $v0, 0x1
/* F1C48 800D3B58 AE220E14 */  sw         $v0, 0xE14($s1)
/* F1C4C 800D3B5C 8A080000 */  lwl        $t0, 0x0($s0)
/* F1C50 800D3B60 9A080003 */  lwr        $t0, 0x3($s0)
/* F1C54 800D3B64 8A090004 */  lwl        $t1, 0x4($s0)
/* F1C58 800D3B68 9A090007 */  lwr        $t1, 0x7($s0)
/* F1C5C 800D3B6C 8A0A0008 */  lwl        $t2, 0x8($s0)
/* F1C60 800D3B70 9A0A000B */  lwr        $t2, 0xB($s0)
/* F1C64 800D3B74 8A0B000C */  lwl        $t3, 0xC($s0)
/* F1C68 800D3B78 9A0B000F */  lwr        $t3, 0xF($s0)
/* F1C6C 800D3B7C AA480000 */  swl        $t0, 0x0($s2)
/* F1C70 800D3B80 BA480003 */  swr        $t0, 0x3($s2)
/* F1C74 800D3B84 AA490004 */  swl        $t1, 0x4($s2)
/* F1C78 800D3B88 BA490007 */  swr        $t1, 0x7($s2)
/* F1C7C 800D3B8C AA4A0008 */  swl        $t2, 0x8($s2)
/* F1C80 800D3B90 BA4A000B */  swr        $t2, 0xB($s2)
/* F1C84 800D3B94 AA4B000C */  swl        $t3, 0xC($s2)
/* F1C88 800D3B98 BA4B000F */  swr        $t3, 0xF($s2)
/* F1C8C 800D3B9C 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1C90 800D3BA0 28420672 */  slti       $v0, $v0, 0x672
/* F1C94 800D3BA4 104000B2 */  beqz       $v0, .Lmenu_800D3E70
/* F1C98 800D3BA8 26730001 */   addiu     $s3, $s3, 0x1
/* F1C9C 800D3BAC 02802021 */  addu       $a0, $s4, $zero
/* F1CA0 800D3BB0 C7A40038 */  lwc1       $f4, 0x38($sp)
/* F1CA4 800D3BB4 96020008 */  lhu        $v0, 0x8($s0)
/* F1CA8 800D3BB8 C7A20020 */  lwc1       $f2, 0x20($sp)
/* F1CAC 800D3BBC 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1CB0 800D3BC0 C7A00024 */  lwc1       $f0, 0x24($sp)
/* F1CB4 800D3BC4 9606000C */  lhu        $a2, 0xC($s0)
/* F1CB8 800D3BC8 46022181 */  sub.s      $f6, $f4, $f2
/* F1CBC 800D3BCC 00021140 */  sll        $v0, $v0, 5
/* F1CC0 800D3BD0 00622821 */  addu       $a1, $v1, $v0
/* F1CC4 800D3BD4 46020001 */  sub.s      $f0, $f0, $f2
/* F1CC8 800D3BD8 C4A2000C */  lwc1       $f2, 0xC($a1)
/* F1CCC 800D3BDC 00063140 */  sll        $a2, $a2, 5
/* F1CD0 800D3BE0 E7A40020 */  swc1       $f4, 0x20($sp)
/* F1CD4 800D3BE4 E7A40070 */  swc1       $f4, 0x70($sp)
/* F1CD8 800D3BE8 46003583 */  div.s      $f22, $f6, $f0
/* F1CDC 800D3BEC 4616C501 */  sub.s      $f20, $f24, $f22
/* F1CE0 800D3BF0 E7A2006C */  swc1       $f2, 0x6C($sp)
/* F1CE4 800D3BF4 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F1CE8 800D3BF8 4407A000 */  mfc1       $a3, $f20
/* F1CEC 800D3BFC 00663021 */  addu       $a2, $v1, $a2
/* F1CF0 800D3C00 E7A00074 */  swc1       $f0, 0x74($sp)
/* F1CF4 800D3C04 0C0345F4 */  jal        func_menu_800D17D0
/* F1CF8 800D3C08 E7B60010 */   swc1      $f22, 0x10($sp)
/* F1CFC 800D3C0C 02202021 */  addu       $a0, $s1, $zero
/* F1D00 800D3C10 0C0352FC */  jal        func_menu_800D4BF0
/* F1D04 800D3C14 02802821 */   addu      $a1, $s4, $zero
/* F1D08 800D3C18 4407A000 */  mfc1       $a3, $f20
/* F1D0C 800D3C1C 02802021 */  addu       $a0, $s4, $zero
/* F1D10 800D3C20 A642000C */  sh         $v0, 0xC($s2)
/* F1D14 800D3C24 A6020008 */  sh         $v0, 0x8($s0)
/* F1D18 800D3C28 9602000A */  lhu        $v0, 0xA($s0)
/* F1D1C 800D3C2C 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1D20 800D3C30 9606000E */  lhu        $a2, 0xE($s0)
/* F1D24 800D3C34 00021140 */  sll        $v0, $v0, 5
/* F1D28 800D3C38 00622821 */  addu       $a1, $v1, $v0
/* F1D2C 800D3C3C 00063140 */  sll        $a2, $a2, 5
/* F1D30 800D3C40 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F1D34 800D3C44 00663021 */  addu       $a2, $v1, $a2
/* F1D38 800D3C48 E7A00074 */  swc1       $f0, 0x74($sp)
/* F1D3C 800D3C4C 0C0345F4 */  jal        func_menu_800D17D0
/* F1D40 800D3C50 E7B60010 */   swc1      $f22, 0x10($sp)
/* F1D44 800D3C54 02202021 */  addu       $a0, $s1, $zero
/* F1D48 800D3C58 0C0352FC */  jal        func_menu_800D4BF0
/* F1D4C 800D3C5C 02802821 */   addu      $a1, $s4, $zero
/* F1D50 800D3C60 A642000E */  sh         $v0, 0xE($s2)
/* F1D54 800D3C64 A602000A */  sh         $v0, 0xA($s0)
.Lmenu_800D3C68:
/* F1D58 800D3C68 C7A20024 */  lwc1       $f2, 0x24($sp)
/* F1D5C 800D3C6C C7A0003C */  lwc1       $f0, 0x3C($sp)
/* F1D60 800D3C70 46001032 */  c.eq.s     $f2, $f0
/* F1D64 800D3C74 00000000 */  nop
/* F1D68 800D3C78 450300B1 */  bc1tl      .Lmenu_800D3F40
/* F1D6C 800D3C7C 2673FFFF */   addiu     $s3, $s3, -0x1
/* F1D70 800D3C80 4600103C */  c.lt.s     $f2, $f0
/* F1D74 800D3C84 00000000 */  nop
/* F1D78 800D3C88 4500002E */  bc1f       .Lmenu_800D3D44
/* F1D7C 800D3C8C 00151880 */   sll       $v1, $s5, 2
/* F1D80 800D3C90 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1D84 800D3C94 02C22021 */  addu       $a0, $s6, $v0
/* F1D88 800D3C98 00621021 */  addu       $v0, $v1, $v0
/* F1D8C 800D3C9C 8C420000 */  lw         $v0, 0x0($v0)
/* F1D90 800D3CA0 8C900000 */  lw         $s0, 0x0($a0)
/* F1D94 800D3CA4 AC820000 */  sw         $v0, 0x0($a0)
/* F1D98 800D3CA8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1D9C 800D3CAC 00621821 */  addu       $v1, $v1, $v0
/* F1DA0 800D3CB0 AC700000 */  sw         $s0, 0x0($v1)
/* F1DA4 800D3CB4 8FA80018 */  lw         $t0, 0x18($sp)
/* F1DA8 800D3CB8 8FA9001C */  lw         $t1, 0x1C($sp)
/* F1DAC 800D3CBC 8FAA0020 */  lw         $t2, 0x20($sp)
/* F1DB0 800D3CC0 8FAB0024 */  lw         $t3, 0x24($sp)
/* F1DB4 800D3CC4 AFA80048 */  sw         $t0, 0x48($sp)
/* F1DB8 800D3CC8 AFA9004C */  sw         $t1, 0x4C($sp)
/* F1DBC 800D3CCC AFAA0050 */  sw         $t2, 0x50($sp)
/* F1DC0 800D3CD0 AFAB0054 */  sw         $t3, 0x54($sp)
/* F1DC4 800D3CD4 8FA80028 */  lw         $t0, 0x28($sp)
/* F1DC8 800D3CD8 8FA9002C */  lw         $t1, 0x2C($sp)
/* F1DCC 800D3CDC AFA80058 */  sw         $t0, 0x58($sp)
/* F1DD0 800D3CE0 AFA9005C */  sw         $t1, 0x5C($sp)
/* F1DD4 800D3CE4 8FA80030 */  lw         $t0, 0x30($sp)
/* F1DD8 800D3CE8 8FA90034 */  lw         $t1, 0x34($sp)
/* F1DDC 800D3CEC 8FAA0038 */  lw         $t2, 0x38($sp)
/* F1DE0 800D3CF0 8FAB003C */  lw         $t3, 0x3C($sp)
/* F1DE4 800D3CF4 AFA80018 */  sw         $t0, 0x18($sp)
/* F1DE8 800D3CF8 AFA9001C */  sw         $t1, 0x1C($sp)
/* F1DEC 800D3CFC AFAA0020 */  sw         $t2, 0x20($sp)
/* F1DF0 800D3D00 AFAB0024 */  sw         $t3, 0x24($sp)
/* F1DF4 800D3D04 8FA80040 */  lw         $t0, 0x40($sp)
/* F1DF8 800D3D08 8FA90044 */  lw         $t1, 0x44($sp)
/* F1DFC 800D3D0C AFA80028 */  sw         $t0, 0x28($sp)
/* F1E00 800D3D10 AFA9002C */  sw         $t1, 0x2C($sp)
/* F1E04 800D3D14 8FA80048 */  lw         $t0, 0x48($sp)
/* F1E08 800D3D18 8FA9004C */  lw         $t1, 0x4C($sp)
/* F1E0C 800D3D1C 8FAA0050 */  lw         $t2, 0x50($sp)
/* F1E10 800D3D20 8FAB0054 */  lw         $t3, 0x54($sp)
/* F1E14 800D3D24 AFA80030 */  sw         $t0, 0x30($sp)
/* F1E18 800D3D28 AFA90034 */  sw         $t1, 0x34($sp)
/* F1E1C 800D3D2C AFAA0038 */  sw         $t2, 0x38($sp)
/* F1E20 800D3D30 AFAB003C */  sw         $t3, 0x3C($sp)
/* F1E24 800D3D34 8FA80058 */  lw         $t0, 0x58($sp)
/* F1E28 800D3D38 8FA9005C */  lw         $t1, 0x5C($sp)
/* F1E2C 800D3D3C AFA80040 */  sw         $t0, 0x40($sp)
/* F1E30 800D3D40 AFA90044 */  sw         $t1, 0x44($sp)
.Lmenu_800D3D44:
/* F1E34 800D3D44 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1E38 800D3D48 02C21021 */  addu       $v0, $s6, $v0
/* F1E3C 800D3D4C 8C500000 */  lw         $s0, 0x0($v0)
/* F1E40 800D3D50 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1E44 800D3D54 9602000C */  lhu        $v0, 0xC($s0)
/* F1E48 800D3D58 C7A20024 */  lwc1       $f2, 0x24($sp)
/* F1E4C 800D3D5C 00021140 */  sll        $v0, $v0, 5
/* F1E50 800D3D60 00431021 */  addu       $v0, $v0, $v1
/* F1E54 800D3D64 C4400010 */  lwc1       $f0, 0x10($v0)
/* F1E58 800D3D68 46020032 */  c.eq.s     $f0, $f2
/* F1E5C 800D3D6C 00000000 */  nop
/* F1E60 800D3D70 45000004 */  bc1f       .Lmenu_800D3D84
/* F1E64 800D3D74 00000000 */   nop
/* F1E68 800D3D78 9602000E */  lhu        $v0, 0xE($s0)
/* F1E6C 800D3D7C 08034F74 */  j          .Lmenu_800D3DD0
/* F1E70 800D3D80 00021140 */   sll       $v0, $v0, 5
.Lmenu_800D3D84:
/* F1E74 800D3D84 9602000A */  lhu        $v0, 0xA($s0)
/* F1E78 800D3D88 96050008 */  lhu        $a1, 0x8($s0)
/* F1E7C 800D3D8C 9603000E */  lhu        $v1, 0xE($s0)
/* F1E80 800D3D90 9604000C */  lhu        $a0, 0xC($s0)
/* F1E84 800D3D94 A6020008 */  sh         $v0, 0x8($s0)
/* F1E88 800D3D98 A605000C */  sh         $a1, 0xC($s0)
/* F1E8C 800D3D9C 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* F1E90 800D3DA0 00021140 */  sll        $v0, $v0, 5
/* F1E94 800D3DA4 A603000A */  sh         $v1, 0xA($s0)
/* F1E98 800D3DA8 A604000E */  sh         $a0, 0xE($s0)
/* F1E9C 800D3DAC 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1EA0 800D3DB0 C7A20024 */  lwc1       $f2, 0x24($sp)
/* F1EA4 800D3DB4 00431021 */  addu       $v0, $v0, $v1
/* F1EA8 800D3DB8 C4400010 */  lwc1       $f0, 0x10($v0)
/* F1EAC 800D3DBC 46020032 */  c.eq.s     $f0, $f2
/* F1EB0 800D3DC0 00000000 */  nop
/* F1EB4 800D3DC4 4500FFEF */  bc1f       .Lmenu_800D3D84
/* F1EB8 800D3DC8 3082FFFF */   andi      $v0, $a0, 0xFFFF
/* F1EBC 800D3DCC 00021140 */  sll        $v0, $v0, 5
.Lmenu_800D3DD0:
/* F1EC0 800D3DD0 00431021 */  addu       $v0, $v0, $v1
/* F1EC4 800D3DD4 C4400010 */  lwc1       $f0, 0x10($v0)
/* F1EC8 800D3DD8 46020032 */  c.eq.s     $f0, $f2
/* F1ECC 800D3DDC 00000000 */  nop
/* F1ED0 800D3DE0 4500FFE8 */  bc1f       .Lmenu_800D3D84
/* F1ED4 800D3DE4 00132080 */   sll       $a0, $s3, 2
/* F1ED8 800D3DE8 8E230E14 */  lw         $v1, 0xE14($s1)
/* F1EDC 800D3DEC 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1EE0 800D3DF0 00031880 */  sll        $v1, $v1, 2
/* F1EE4 800D3DF4 00621821 */  addu       $v1, $v1, $v0
/* F1EE8 800D3DF8 00821021 */  addu       $v0, $a0, $v0
/* F1EEC 800D3DFC 8C420000 */  lw         $v0, 0x0($v0)
/* F1EF0 800D3E00 8C720000 */  lw         $s2, 0x0($v1)
/* F1EF4 800D3E04 AC620000 */  sw         $v0, 0x0($v1)
/* F1EF8 800D3E08 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F1EFC 800D3E0C 00822021 */  addu       $a0, $a0, $v0
/* F1F00 800D3E10 AC920000 */  sw         $s2, 0x0($a0)
/* F1F04 800D3E14 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1F08 800D3E18 24420001 */  addiu      $v0, $v0, 0x1
/* F1F0C 800D3E1C AE220E14 */  sw         $v0, 0xE14($s1)
/* F1F10 800D3E20 8A080000 */  lwl        $t0, 0x0($s0)
/* F1F14 800D3E24 9A080003 */  lwr        $t0, 0x3($s0)
/* F1F18 800D3E28 8A090004 */  lwl        $t1, 0x4($s0)
/* F1F1C 800D3E2C 9A090007 */  lwr        $t1, 0x7($s0)
/* F1F20 800D3E30 8A0A0008 */  lwl        $t2, 0x8($s0)
/* F1F24 800D3E34 9A0A000B */  lwr        $t2, 0xB($s0)
/* F1F28 800D3E38 8A0B000C */  lwl        $t3, 0xC($s0)
/* F1F2C 800D3E3C 9A0B000F */  lwr        $t3, 0xF($s0)
/* F1F30 800D3E40 AA480000 */  swl        $t0, 0x0($s2)
/* F1F34 800D3E44 BA480003 */  swr        $t0, 0x3($s2)
/* F1F38 800D3E48 AA490004 */  swl        $t1, 0x4($s2)
/* F1F3C 800D3E4C BA490007 */  swr        $t1, 0x7($s2)
/* F1F40 800D3E50 AA4A0008 */  swl        $t2, 0x8($s2)
/* F1F44 800D3E54 BA4A000B */  swr        $t2, 0xB($s2)
/* F1F48 800D3E58 AA4B000C */  swl        $t3, 0xC($s2)
/* F1F4C 800D3E5C BA4B000F */  swr        $t3, 0xF($s2)
/* F1F50 800D3E60 8E220E14 */  lw         $v0, 0xE14($s1)
/* F1F54 800D3E64 28420672 */  slti       $v0, $v0, 0x672
/* F1F58 800D3E68 14400005 */  bnez       $v0, .Lmenu_800D3E80
/* F1F5C 800D3E6C 26730001 */   addiu     $s3, $s3, 0x1
.Lmenu_800D3E70:
/* F1F60 800D3E70 922200DC */  lbu        $v0, 0xDC($s1)
/* F1F64 800D3E74 34420001 */  ori        $v0, $v0, 0x1
/* F1F68 800D3E78 0803500D */  j          .Lmenu_800D4034
/* F1F6C 800D3E7C A22200DC */   sb        $v0, 0xDC($s1)
.Lmenu_800D3E80:
/* F1F70 800D3E80 02802021 */  addu       $a0, $s4, $zero
/* F1F74 800D3E84 C7A4003C */  lwc1       $f4, 0x3C($sp)
/* F1F78 800D3E88 96020008 */  lhu        $v0, 0x8($s0)
/* F1F7C 800D3E8C C7A20020 */  lwc1       $f2, 0x20($sp)
/* F1F80 800D3E90 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1F84 800D3E94 C7A00024 */  lwc1       $f0, 0x24($sp)
/* F1F88 800D3E98 9606000C */  lhu        $a2, 0xC($s0)
/* F1F8C 800D3E9C 46022181 */  sub.s      $f6, $f4, $f2
/* F1F90 800D3EA0 00021140 */  sll        $v0, $v0, 5
/* F1F94 800D3EA4 00622821 */  addu       $a1, $v1, $v0
/* F1F98 800D3EA8 46020001 */  sub.s      $f0, $f0, $f2
/* F1F9C 800D3EAC C4A2000C */  lwc1       $f2, 0xC($a1)
/* F1FA0 800D3EB0 00063140 */  sll        $a2, $a2, 5
/* F1FA4 800D3EB4 E7A40024 */  swc1       $f4, 0x24($sp)
/* F1FA8 800D3EB8 E7A40070 */  swc1       $f4, 0x70($sp)
/* F1FAC 800D3EBC 46003583 */  div.s      $f22, $f6, $f0
/* F1FB0 800D3EC0 4616C501 */  sub.s      $f20, $f24, $f22
/* F1FB4 800D3EC4 E7A2006C */  swc1       $f2, 0x6C($sp)
/* F1FB8 800D3EC8 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F1FBC 800D3ECC 4407A000 */  mfc1       $a3, $f20
/* F1FC0 800D3ED0 00663021 */  addu       $a2, $v1, $a2
/* F1FC4 800D3ED4 E7A00074 */  swc1       $f0, 0x74($sp)
/* F1FC8 800D3ED8 0C0345F4 */  jal        func_menu_800D17D0
/* F1FCC 800D3EDC E7B60010 */   swc1      $f22, 0x10($sp)
/* F1FD0 800D3EE0 02202021 */  addu       $a0, $s1, $zero
/* F1FD4 800D3EE4 0C0352FC */  jal        func_menu_800D4BF0
/* F1FD8 800D3EE8 02802821 */   addu      $a1, $s4, $zero
/* F1FDC 800D3EEC 4407A000 */  mfc1       $a3, $f20
/* F1FE0 800D3EF0 02802021 */  addu       $a0, $s4, $zero
/* F1FE4 800D3EF4 A6420008 */  sh         $v0, 0x8($s2)
/* F1FE8 800D3EF8 A602000C */  sh         $v0, 0xC($s0)
/* F1FEC 800D3EFC 9602000A */  lhu        $v0, 0xA($s0)
/* F1FF0 800D3F00 8E230DC8 */  lw         $v1, 0xDC8($s1)
/* F1FF4 800D3F04 9606000E */  lhu        $a2, 0xE($s0)
/* F1FF8 800D3F08 00021140 */  sll        $v0, $v0, 5
/* F1FFC 800D3F0C 00622821 */  addu       $a1, $v1, $v0
/* F2000 800D3F10 00063140 */  sll        $a2, $a2, 5
/* F2004 800D3F14 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F2008 800D3F18 00663021 */  addu       $a2, $v1, $a2
/* F200C 800D3F1C E7A00074 */  swc1       $f0, 0x74($sp)
/* F2010 800D3F20 0C0345F4 */  jal        func_menu_800D17D0
/* F2014 800D3F24 E7B60010 */   swc1      $f22, 0x10($sp)
/* F2018 800D3F28 02202021 */  addu       $a0, $s1, $zero
/* F201C 800D3F2C 0C0352FC */  jal        func_menu_800D4BF0
/* F2020 800D3F30 02802821 */   addu      $a1, $s4, $zero
/* F2024 800D3F34 A642000A */  sh         $v0, 0xA($s2)
/* F2028 800D3F38 A602000E */  sh         $v0, 0xE($s0)
/* F202C 800D3F3C 2673FFFF */  addiu      $s3, $s3, -0x1
.Lmenu_800D3F40:
/* F2030 800D3F40 00151880 */  sll        $v1, $s5, 2
/* F2034 800D3F44 8E220E14 */  lw         $v0, 0xE14($s1)
/* F2038 800D3F48 00132080 */  sll        $a0, $s3, 2
/* F203C 800D3F4C 2442FFFF */  addiu      $v0, $v0, -0x1
/* F2040 800D3F50 AE220E14 */  sw         $v0, 0xE14($s1)
/* F2044 800D3F54 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F2048 800D3F58 2673FFFF */  addiu      $s3, $s3, -0x1
/* F204C 800D3F5C 00621821 */  addu       $v1, $v1, $v0
/* F2050 800D3F60 00821021 */  addu       $v0, $a0, $v0
/* F2054 800D3F64 8C700000 */  lw         $s0, 0x0($v1)
/* F2058 800D3F68 8C420000 */  lw         $v0, 0x0($v0)
/* F205C 800D3F6C 00132880 */  sll        $a1, $s3, 2
/* F2060 800D3F70 AC620000 */  sw         $v0, 0x0($v1)
/* F2064 800D3F74 8E220E14 */  lw         $v0, 0xE14($s1)
/* F2068 800D3F78 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F206C 800D3F7C 00021080 */  sll        $v0, $v0, 2
/* F2070 800D3F80 00431021 */  addu       $v0, $v0, $v1
/* F2074 800D3F84 8C420000 */  lw         $v0, 0x0($v0)
/* F2078 800D3F88 00832021 */  addu       $a0, $a0, $v1
/* F207C 800D3F8C AC820000 */  sw         $v0, 0x0($a0)
/* F2080 800D3F90 8E220E14 */  lw         $v0, 0xE14($s1)
/* F2084 800D3F94 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F2088 800D3F98 00021080 */  sll        $v0, $v0, 2
/* F208C 800D3F9C 00431021 */  addu       $v0, $v0, $v1
/* F2090 800D3FA0 AC500000 */  sw         $s0, 0x0($v0)
/* F2094 800D3FA4 8E220E14 */  lw         $v0, 0xE14($s1)
/* F2098 800D3FA8 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F209C 800D3FAC 2442FFFF */  addiu      $v0, $v0, -0x1
/* F20A0 800D3FB0 02C32021 */  addu       $a0, $s6, $v1
/* F20A4 800D3FB4 00A31821 */  addu       $v1, $a1, $v1
/* F20A8 800D3FB8 AE220E14 */  sw         $v0, 0xE14($s1)
/* F20AC 800D3FBC 8C620000 */  lw         $v0, 0x0($v1)
/* F20B0 800D3FC0 8C900000 */  lw         $s0, 0x0($a0)
/* F20B4 800D3FC4 AC820000 */  sw         $v0, 0x0($a0)
/* F20B8 800D3FC8 8E220E14 */  lw         $v0, 0xE14($s1)
/* F20BC 800D3FCC 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F20C0 800D3FD0 00021080 */  sll        $v0, $v0, 2
/* F20C4 800D3FD4 00431021 */  addu       $v0, $v0, $v1
/* F20C8 800D3FD8 8C420000 */  lw         $v0, 0x0($v0)
/* F20CC 800D3FDC 00A32821 */  addu       $a1, $a1, $v1
/* F20D0 800D3FE0 ACA20000 */  sw         $v0, 0x0($a1)
/* F20D4 800D3FE4 8E220E14 */  lw         $v0, 0xE14($s1)
/* F20D8 800D3FE8 8E230DD0 */  lw         $v1, 0xDD0($s1)
/* F20DC 800D3FEC 00021080 */  sll        $v0, $v0, 2
/* F20E0 800D3FF0 00431021 */  addu       $v0, $v0, $v1
/* F20E4 800D3FF4 AC500000 */  sw         $s0, 0x0($v0)
/* F20E8 800D3FF8 8E220DD0 */  lw         $v0, 0xDD0($s1)
/* F20EC 800D3FFC 02E0A821 */  addu       $s5, $s7, $zero
/* F20F0 800D4000 02C21021 */  addu       $v0, $s6, $v0
/* F20F4 800D4004 8C440000 */  lw         $a0, 0x0($v0)
/* F20F8 800D4008 0C0345B2 */  jal        func_menu_800D16C8
/* F20FC 800D400C 27A50018 */   addiu     $a1, $sp, 0x18
/* F2100 800D4010 26B50001 */  addiu      $s5, $s5, 0x1
.Lmenu_800D4014:
/* F2104 800D4014 02B3102A */  slt        $v0, $s5, $s3
/* F2108 800D4018 1440FCE8 */  bnez       $v0, .Lmenu_800D33BC
/* F210C 800D401C 00000000 */   nop
/* F2110 800D4020 26F70001 */  addiu      $s7, $s7, 0x1
.Lmenu_800D4024:
/* F2114 800D4024 2662FFFF */  addiu      $v0, $s3, -0x1
/* F2118 800D4028 02E2102A */  slt        $v0, $s7, $v0
/* F211C 800D402C 1440FCD9 */  bnez       $v0, .Lmenu_800D3394
/* F2120 800D4030 27DE0004 */   addiu     $fp, $fp, 0x4
.Lmenu_800D4034:
/* F2124 800D4034 8FBF00A4 */  lw         $ra, 0xA4($sp)
/* F2128 800D4038 8FBE00A0 */  lw         $fp, 0xA0($sp)
/* F212C 800D403C 8FB7009C */  lw         $s7, 0x9C($sp)
/* F2130 800D4040 8FB60098 */  lw         $s6, 0x98($sp)
/* F2134 800D4044 8FB50094 */  lw         $s5, 0x94($sp)
/* F2138 800D4048 8FB40090 */  lw         $s4, 0x90($sp)
/* F213C 800D404C 8FB3008C */  lw         $s3, 0x8C($sp)
/* F2140 800D4050 8FB20088 */  lw         $s2, 0x88($sp)
/* F2144 800D4054 8FB10084 */  lw         $s1, 0x84($sp)
/* F2148 800D4058 8FB00080 */  lw         $s0, 0x80($sp)
/* F214C 800D405C D7B800B8 */  ldc1       $f24, 0xB8($sp)
/* F2150 800D4060 D7B600B0 */  ldc1       $f22, 0xB0($sp)
/* F2154 800D4064 D7B400A8 */  ldc1       $f20, 0xA8($sp)
/* F2158 800D4068 03E00008 */  jr         $ra
/* F215C 800D406C 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_menu_800D4070
/* F2160 800D4070 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F2164 800D4074 AFB00010 */  sw         $s0, 0x10($sp)
/* F2168 800D4078 00808021 */  addu       $s0, $a0, $zero
/* F216C 800D407C AFB20018 */  sw         $s2, 0x18($sp)
/* F2170 800D4080 00A09021 */  addu       $s2, $a1, $zero
/* F2174 800D4084 3C028012 */  lui        $v0, %hi(D_menu_80127190)
/* F2178 800D4088 AFB10014 */  sw         $s1, 0x14($sp)
/* F217C 800D408C 24517190 */  addiu      $s1, $v0, %lo(D_menu_80127190)
/* F2180 800D4090 02202021 */  addu       $a0, $s1, $zero
/* F2184 800D4094 00002821 */  addu       $a1, $zero, $zero
/* F2188 800D4098 AFBF001C */  sw         $ra, 0x1C($sp)
/* F218C 800D409C 0C000697 */  jal        func_80001A5C
/* F2190 800D40A0 24063390 */   addiu     $a2, $zero, 0x3390
/* F2194 800D40A4 00007821 */  addu       $t7, $zero, $zero
/* F2198 800D40A8 2418FFFF */  addiu      $t8, $zero, -0x1
/* F219C 800D40AC 8E020E14 */  lw         $v0, 0xE14($s0)
/* F21A0 800D40B0 01E05021 */  addu       $t2, $t7, $zero
/* F21A4 800D40B4 00581021 */  addu       $v0, $v0, $t8
/* F21A8 800D40B8 184000BE */  blez       $v0, .Lmenu_800D43B4
/* F21AC 800D40BC AE000E3C */   sw        $zero, 0xE3C($s0)
/* F21B0 800D40C0 32520080 */  andi       $s2, $s2, 0x80
/* F21B4 800D40C4 02207021 */  addu       $t6, $s1, $zero
/* F21B8 800D40C8 24110001 */  addiu      $s1, $zero, 0x1
/* F21BC 800D40CC 01E04821 */  addu       $t1, $t7, $zero
.Lmenu_800D40D0:
/* F21C0 800D40D0 240B0022 */  addiu      $t3, $zero, 0x22
/* F21C4 800D40D4 8E020E3C */  lw         $v0, 0xE3C($s0)
/* F21C8 800D40D8 10400035 */  beqz       $v0, .Lmenu_800D41B0
/* F21CC 800D40DC 00006021 */   addu      $t4, $zero, $zero
/* F21D0 800D40E0 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F21D4 800D40E4 01221021 */  addu       $v0, $t1, $v0
/* F21D8 800D40E8 8C420000 */  lw         $v0, 0x0($v0)
/* F21DC 800D40EC 94420002 */  lhu        $v0, 0x2($v0)
/* F21E0 800D40F0 17020035 */  bne        $t8, $v0, .Lmenu_800D41C8
/* F21E4 800D40F4 00000000 */   nop
/* F21E8 800D40F8 16400005 */  bnez       $s2, .Lmenu_800D4110
/* F21EC 800D40FC 01E04021 */   addu      $t0, $t7, $zero
/* F21F0 800D4100 25480040 */  addiu      $t0, $t2, 0x40
/* F21F4 800D4104 01E8102A */  slt        $v0, $t7, $t0
/* F21F8 800D4108 54400001 */  bnel       $v0, $zero, .Lmenu_800D4110
/* F21FC 800D410C 01E04021 */   addu      $t0, $t7, $zero
.Lmenu_800D4110:
/* F2200 800D4110 0148102A */  slt        $v0, $t2, $t0
/* F2204 800D4114 10400061 */  beqz       $v0, .Lmenu_800D429C
/* F2208 800D4118 01403021 */   addu      $a2, $t2, $zero
/* F220C 800D411C 8E0D0DD0 */  lw         $t5, 0xDD0($s0)
/* F2210 800D4120 00062880 */  sll        $a1, $a2, 2
.Lmenu_800D4124:
/* F2214 800D4124 00AD1021 */  addu       $v0, $a1, $t5
/* F2218 800D4128 8C420000 */  lw         $v0, 0x0($v0)
/* F221C 800D412C 90470000 */  lbu        $a3, 0x0($v0)
/* F2220 800D4130 00002021 */  addu       $a0, $zero, $zero
/* F2224 800D4134 10E0000E */  beqz       $a3, .Lmenu_800D4170
/* F2228 800D4138 00E01821 */   addu      $v1, $a3, $zero
/* F222C 800D413C 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F2230 800D4140 00A21021 */  addu       $v0, $a1, $v0
/* F2234 800D4144 8C450000 */  lw         $a1, 0x0($v0)
.Lmenu_800D4148:
/* F2238 800D4148 94A20008 */  lhu        $v0, 0x8($a1)
/* F223C 800D414C 00021080 */  sll        $v0, $v0, 2
/* F2240 800D4150 004E1021 */  addu       $v0, $v0, $t6
/* F2244 800D4154 90420002 */  lbu        $v0, 0x2($v0)
/* F2248 800D4158 54400001 */  bnel       $v0, $zero, .Lmenu_800D4160
/* F224C 800D415C 2463FFFF */   addiu     $v1, $v1, -0x1
.Lmenu_800D4160:
/* F2250 800D4160 24840001 */  addiu      $a0, $a0, 0x1
/* F2254 800D4164 0087102A */  slt        $v0, $a0, $a3
/* F2258 800D4168 1440FFF7 */  bnez       $v0, .Lmenu_800D4148
/* F225C 800D416C 24A50002 */   addiu     $a1, $a1, 0x2
.Lmenu_800D4170:
/* F2260 800D4170 14600005 */  bnez       $v1, .Lmenu_800D4188
/* F2264 800D4174 006B102A */   slt       $v0, $v1, $t3
/* F2268 800D4178 00C06021 */  addu       $t4, $a2, $zero
/* F226C 800D417C 8E060E14 */  lw         $a2, 0xE14($s0)
/* F2270 800D4180 08035066 */  j          .Lmenu_800D4198
/* F2274 800D4184 00005821 */   addu      $t3, $zero, $zero
.Lmenu_800D4188:
/* F2278 800D4188 50400004 */  beql       $v0, $zero, .Lmenu_800D419C
/* F227C 800D418C 24C60001 */   addiu     $a2, $a2, 0x1
/* F2280 800D4190 00605821 */  addu       $t3, $v1, $zero
/* F2284 800D4194 00C06021 */  addu       $t4, $a2, $zero
.Lmenu_800D4198:
/* F2288 800D4198 24C60001 */  addiu      $a2, $a2, 0x1
.Lmenu_800D419C:
/* F228C 800D419C 00C8102A */  slt        $v0, $a2, $t0
/* F2290 800D41A0 1440FFE0 */  bnez       $v0, .Lmenu_800D4124
/* F2294 800D41A4 00062880 */   sll       $a1, $a2, 2
/* F2298 800D41A8 080350A7 */  j          .Lmenu_800D429C
/* F229C 800D41AC 00000000 */   nop
.Lmenu_800D41B0:
/* F22A0 800D41B0 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F22A4 800D41B4 01221021 */  addu       $v0, $t1, $v0
/* F22A8 800D41B8 8C420000 */  lw         $v0, 0x0($v0)
/* F22AC 800D41BC 94420002 */  lhu        $v0, 0x2($v0)
/* F22B0 800D41C0 13020036 */  beq        $t8, $v0, .Lmenu_800D429C
/* F22B4 800D41C4 00000000 */   nop
.Lmenu_800D41C8:
/* F22B8 800D41C8 8E020E3C */  lw         $v0, 0xE3C($s0)
/* F22BC 800D41CC 1840000B */  blez       $v0, .Lmenu_800D41FC
/* F22C0 800D41D0 00003021 */   addu      $a2, $zero, $zero
/* F22C4 800D41D4 02001821 */  addu       $v1, $s0, $zero
.Lmenu_800D41D8:
/* F22C8 800D41D8 94620DD4 */  lhu        $v0, 0xDD4($v1)
/* F22CC 800D41DC 00021080 */  sll        $v0, $v0, 2
/* F22D0 800D41E0 004E1021 */  addu       $v0, $v0, $t6
/* F22D4 800D41E4 A0400002 */  sb         $zero, 0x2($v0)
/* F22D8 800D41E8 8E020E3C */  lw         $v0, 0xE3C($s0)
/* F22DC 800D41EC 24C60001 */  addiu      $a2, $a2, 0x1
/* F22E0 800D41F0 00C2102A */  slt        $v0, $a2, $v0
/* F22E4 800D41F4 1440FFF8 */  bnez       $v0, .Lmenu_800D41D8
/* F22E8 800D41F8 24630002 */   addiu     $v1, $v1, 0x2
.Lmenu_800D41FC:
/* F22EC 800D41FC 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F22F0 800D4200 01221021 */  addu       $v0, $t1, $v0
/* F22F4 800D4204 8C430000 */  lw         $v1, 0x0($v0)
/* F22F8 800D4208 8E020E14 */  lw         $v0, 0xE14($s0)
/* F22FC 800D420C 0142102A */  slt        $v0, $t2, $v0
/* F2300 800D4210 94780002 */  lhu        $t8, 0x2($v1)
/* F2304 800D4214 10400020 */  beqz       $v0, .Lmenu_800D4298
/* F2308 800D4218 01403021 */   addu      $a2, $t2, $zero
/* F230C 800D421C 000A2880 */  sll        $a1, $t2, 2
.Lmenu_800D4220:
/* F2310 800D4220 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F2314 800D4224 00A21021 */  addu       $v0, $a1, $v0
/* F2318 800D4228 8C430000 */  lw         $v1, 0x0($v0)
/* F231C 800D422C 94620002 */  lhu        $v0, 0x2($v1)
/* F2320 800D4230 5702001A */  bnel       $t8, $v0, .Lmenu_800D429C
/* F2324 800D4234 00C07821 */   addu      $t7, $a2, $zero
/* F2328 800D4238 90670000 */  lbu        $a3, 0x0($v1)
/* F232C 800D423C 10E00011 */  beqz       $a3, .Lmenu_800D4284
/* F2330 800D4240 00002021 */   addu      $a0, $zero, $zero
/* F2334 800D4244 00A04021 */  addu       $t0, $a1, $zero
.Lmenu_800D4248:
/* F2338 800D4248 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F233C 800D424C 01021021 */  addu       $v0, $t0, $v0
/* F2340 800D4250 8C430000 */  lw         $v1, 0x0($v0)
/* F2344 800D4254 00041040 */  sll        $v0, $a0, 1
/* F2348 800D4258 00621821 */  addu       $v1, $v1, $v0
/* F234C 800D425C 94630008 */  lhu        $v1, 0x8($v1)
/* F2350 800D4260 00031880 */  sll        $v1, $v1, 2
/* F2354 800D4264 006E1821 */  addu       $v1, $v1, $t6
/* F2358 800D4268 94620000 */  lhu        $v0, 0x0($v1)
/* F235C 800D426C 24840001 */  addiu      $a0, $a0, 0x1
/* F2360 800D4270 24420001 */  addiu      $v0, $v0, 0x1
/* F2364 800D4274 A4620000 */  sh         $v0, 0x0($v1)
/* F2368 800D4278 0087102A */  slt        $v0, $a0, $a3
/* F236C 800D427C 1440FFF2 */  bnez       $v0, .Lmenu_800D4248
/* F2370 800D4280 00000000 */   nop
.Lmenu_800D4284:
/* F2374 800D4284 8E020E14 */  lw         $v0, 0xE14($s0)
/* F2378 800D4288 24C60001 */  addiu      $a2, $a2, 0x1
/* F237C 800D428C 00C2102A */  slt        $v0, $a2, $v0
/* F2380 800D4290 1440FFE3 */  bnez       $v0, .Lmenu_800D4220
/* F2384 800D4294 24A50004 */   addiu     $a1, $a1, 0x4
.Lmenu_800D4298:
/* F2388 800D4298 00C07821 */  addu       $t7, $a2, $zero
.Lmenu_800D429C:
/* F238C 800D429C 8E030E3C */  lw         $v1, 0xE3C($s0)
/* F2390 800D42A0 006B1021 */  addu       $v0, $v1, $t3
/* F2394 800D42A4 2C420021 */  sltiu      $v0, $v0, 0x21
/* F2398 800D42A8 1440000F */  bnez       $v0, .Lmenu_800D42E8
/* F239C 800D42AC 00000000 */   nop
/* F23A0 800D42B0 00006021 */  addu       $t4, $zero, $zero
/* F23A4 800D42B4 1860000B */  blez       $v1, .Lmenu_800D42E4
/* F23A8 800D42B8 01803021 */   addu      $a2, $t4, $zero
/* F23AC 800D42BC 02001821 */  addu       $v1, $s0, $zero
.Lmenu_800D42C0:
/* F23B0 800D42C0 94620DD4 */  lhu        $v0, 0xDD4($v1)
/* F23B4 800D42C4 00021080 */  sll        $v0, $v0, 2
/* F23B8 800D42C8 004E1021 */  addu       $v0, $v0, $t6
/* F23BC 800D42CC A0400002 */  sb         $zero, 0x2($v0)
/* F23C0 800D42D0 8E020E3C */  lw         $v0, 0xE3C($s0)
/* F23C4 800D42D4 24C60001 */  addiu      $a2, $a2, 0x1
/* F23C8 800D42D8 00C2102A */  slt        $v0, $a2, $v0
/* F23CC 800D42DC 1440FFF8 */  bnez       $v0, .Lmenu_800D42C0
/* F23D0 800D42E0 24630002 */   addiu     $v1, $v1, 0x2
.Lmenu_800D42E4:
/* F23D4 800D42E4 AE000E3C */  sw         $zero, 0xE3C($s0)
.Lmenu_800D42E8:
/* F23D8 800D42E8 1180000A */  beqz       $t4, .Lmenu_800D4314
/* F23DC 800D42EC 000C1880 */   sll       $v1, $t4, 2
/* F23E0 800D42F0 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F23E4 800D42F4 01222021 */  addu       $a0, $t1, $v0
/* F23E8 800D42F8 00621021 */  addu       $v0, $v1, $v0
/* F23EC 800D42FC 8C420000 */  lw         $v0, 0x0($v0)
/* F23F0 800D4300 8C850000 */  lw         $a1, 0x0($a0)
/* F23F4 800D4304 AC820000 */  sw         $v0, 0x0($a0)
/* F23F8 800D4308 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F23FC 800D430C 00621821 */  addu       $v1, $v1, $v0
/* F2400 800D4310 AC650000 */  sw         $a1, 0x0($v1)
.Lmenu_800D4314:
/* F2404 800D4314 8E030DD0 */  lw         $v1, 0xDD0($s0)
/* F2408 800D4318 01231021 */  addu       $v0, $t1, $v1
/* F240C 800D431C 8C420000 */  lw         $v0, 0x0($v0)
/* F2410 800D4320 90420000 */  lbu        $v0, 0x0($v0)
/* F2414 800D4324 1040001D */  beqz       $v0, .Lmenu_800D439C
/* F2418 800D4328 00003021 */   addu      $a2, $zero, $zero
/* F241C 800D432C 01231021 */  addu       $v0, $t1, $v1
.Lmenu_800D4330:
/* F2420 800D4330 8C420000 */  lw         $v0, 0x0($v0)
/* F2424 800D4334 00061840 */  sll        $v1, $a2, 1
/* F2428 800D4338 00431021 */  addu       $v0, $v0, $v1
/* F242C 800D433C 94450008 */  lhu        $a1, 0x8($v0)
/* F2430 800D4340 00051080 */  sll        $v0, $a1, 2
/* F2434 800D4344 004E2021 */  addu       $a0, $v0, $t6
/* F2438 800D4348 94820000 */  lhu        $v0, 0x0($a0)
/* F243C 800D434C 90830002 */  lbu        $v1, 0x2($a0)
/* F2440 800D4350 2442FFFF */  addiu      $v0, $v0, -0x1
/* F2444 800D4354 14600009 */  bnez       $v1, .Lmenu_800D437C
/* F2448 800D4358 A4820000 */   sh        $v0, 0x0($a0)
/* F244C 800D435C A0910002 */  sb         $s1, 0x2($a0)
/* F2450 800D4360 8E020E3C */  lw         $v0, 0xE3C($s0)
/* F2454 800D4364 00021040 */  sll        $v0, $v0, 1
/* F2458 800D4368 02021021 */  addu       $v0, $s0, $v0
/* F245C 800D436C A4450DD4 */  sh         $a1, 0xDD4($v0)
/* F2460 800D4370 8E020E3C */  lw         $v0, 0xE3C($s0)
/* F2464 800D4374 24420001 */  addiu      $v0, $v0, 0x1
/* F2468 800D4378 AE020E3C */  sw         $v0, 0xE3C($s0)
.Lmenu_800D437C:
/* F246C 800D437C 8E030DD0 */  lw         $v1, 0xDD0($s0)
/* F2470 800D4380 01231021 */  addu       $v0, $t1, $v1
/* F2474 800D4384 8C420000 */  lw         $v0, 0x0($v0)
/* F2478 800D4388 90420000 */  lbu        $v0, 0x0($v0)
/* F247C 800D438C 24C60001 */  addiu      $a2, $a2, 0x1
/* F2480 800D4390 00C2102A */  slt        $v0, $a2, $v0
/* F2484 800D4394 1440FFE6 */  bnez       $v0, .Lmenu_800D4330
/* F2488 800D4398 01231021 */   addu      $v0, $t1, $v1
.Lmenu_800D439C:
/* F248C 800D439C 8E020E14 */  lw         $v0, 0xE14($s0)
/* F2490 800D43A0 254A0001 */  addiu      $t2, $t2, 0x1
/* F2494 800D43A4 2442FFFF */  addiu      $v0, $v0, -0x1
/* F2498 800D43A8 0142102A */  slt        $v0, $t2, $v0
/* F249C 800D43AC 1440FF48 */  bnez       $v0, .Lmenu_800D40D0
/* F24A0 800D43B0 25290004 */   addiu     $t1, $t1, 0x4
.Lmenu_800D43B4:
/* F24A4 800D43B4 8FBF001C */  lw         $ra, 0x1C($sp)
/* F24A8 800D43B8 8FB20018 */  lw         $s2, 0x18($sp)
/* F24AC 800D43BC 8FB10014 */  lw         $s1, 0x14($sp)
/* F24B0 800D43C0 8FB00010 */  lw         $s0, 0x10($sp)
/* F24B4 800D43C4 03E00008 */  jr         $ra
/* F24B8 800D43C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D43CC
/* F24BC 800D43CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F24C0 800D43D0 AFB00010 */  sw         $s0, 0x10($sp)
/* F24C4 800D43D4 00808021 */  addu       $s0, $a0, $zero
/* F24C8 800D43D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* F24CC 800D43DC AFB10014 */  sw         $s1, 0x14($sp)
/* F24D0 800D43E0 8E060E14 */  lw         $a2, 0xE14($s0)
/* F24D4 800D43E4 28C20672 */  slti       $v0, $a2, 0x672
/* F24D8 800D43E8 1040000C */  beqz       $v0, .Lmenu_800D441C
/* F24DC 800D43EC 00A08821 */   addu      $s1, $a1, $zero
/* F24E0 800D43F0 00062080 */  sll        $a0, $a2, 2
.Lmenu_800D43F4:
/* F24E4 800D43F4 00062900 */  sll        $a1, $a2, 4
/* F24E8 800D43F8 24C60001 */  addiu      $a2, $a2, 0x1
/* F24EC 800D43FC 8E030DD0 */  lw         $v1, 0xDD0($s0)
/* F24F0 800D4400 8E020DCC */  lw         $v0, 0xDCC($s0)
/* F24F4 800D4404 00832021 */  addu       $a0, $a0, $v1
/* F24F8 800D4408 00451021 */  addu       $v0, $v0, $a1
/* F24FC 800D440C AC820000 */  sw         $v0, 0x0($a0)
/* F2500 800D4410 28C20672 */  slti       $v0, $a2, 0x672
/* F2504 800D4414 1440FFF7 */  bnez       $v0, .Lmenu_800D43F4
/* F2508 800D4418 00062080 */   sll       $a0, $a2, 2
.Lmenu_800D441C:
/* F250C 800D441C 8E020DC8 */  lw         $v0, 0xDC8($s0)
/* F2510 800D4420 3C038013 */  lui        $v1, %hi(D_menu_8012A520)
/* F2514 800D4424 AC62A520 */  sw         $v0, %lo(D_menu_8012A520)($v1)
/* F2518 800D4428 32220002 */  andi       $v0, $s1, 0x2
/* F251C 800D442C 10400007 */  beqz       $v0, .Lmenu_800D444C
/* F2520 800D4430 32220010 */   andi      $v0, $s1, 0x10
/* F2524 800D4434 0C034627 */  jal        func_menu_800D189C
/* F2528 800D4438 02002021 */   addu      $a0, $s0, $zero
/* F252C 800D443C 920200DC */  lbu        $v0, 0xDC($s0)
/* F2530 800D4440 30420001 */  andi       $v0, $v0, 0x1
/* F2534 800D4444 1440006F */  bnez       $v0, .Lmenu_800D4604
/* F2538 800D4448 32220010 */   andi      $v0, $s1, 0x10
.Lmenu_800D444C:
/* F253C 800D444C 1040001F */  beqz       $v0, .Lmenu_800D44CC
/* F2540 800D4450 00000000 */   nop
/* F2544 800D4454 8E050E14 */  lw         $a1, 0xE14($s0)
/* F2548 800D4458 18A0001C */  blez       $a1, .Lmenu_800D44CC
/* F254C 800D445C 00003021 */   addu      $a2, $zero, $zero
/* F2550 800D4460 24070001 */  addiu      $a3, $zero, 0x1
.Lmenu_800D4464:
/* F2554 800D4464 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F2558 800D4468 00062080 */  sll        $a0, $a2, 2
/* F255C 800D446C 00821021 */  addu       $v0, $a0, $v0
/* F2560 800D4470 8C420000 */  lw         $v0, 0x0($v0)
/* F2564 800D4474 94420006 */  lhu        $v0, 0x6($v0)
/* F2568 800D4478 1447000F */  bne        $v0, $a3, .Lmenu_800D44B8
/* F256C 800D447C 24A2FFFF */   addiu     $v0, $a1, -0x1
/* F2570 800D4480 8E030DD0 */  lw         $v1, 0xDD0($s0)
/* F2574 800D4484 AE020E14 */  sw         $v0, 0xE14($s0)
/* F2578 800D4488 00021080 */  sll        $v0, $v0, 2
/* F257C 800D448C 00832021 */  addu       $a0, $a0, $v1
/* F2580 800D4490 00431021 */  addu       $v0, $v0, $v1
/* F2584 800D4494 8C850000 */  lw         $a1, 0x0($a0)
/* F2588 800D4498 8C420000 */  lw         $v0, 0x0($v0)
/* F258C 800D449C 24C6FFFF */  addiu      $a2, $a2, -0x1
/* F2590 800D44A0 AC820000 */  sw         $v0, 0x0($a0)
/* F2594 800D44A4 8E020E14 */  lw         $v0, 0xE14($s0)
/* F2598 800D44A8 8E030DD0 */  lw         $v1, 0xDD0($s0)
/* F259C 800D44AC 00021080 */  sll        $v0, $v0, 2
/* F25A0 800D44B0 00431021 */  addu       $v0, $v0, $v1
/* F25A4 800D44B4 AC450000 */  sw         $a1, 0x0($v0)
.Lmenu_800D44B8:
/* F25A8 800D44B8 8E050E14 */  lw         $a1, 0xE14($s0)
/* F25AC 800D44BC 24C60001 */  addiu      $a2, $a2, 0x1
/* F25B0 800D44C0 00C5102A */  slt        $v0, $a2, $a1
/* F25B4 800D44C4 1440FFE7 */  bnez       $v0, .Lmenu_800D4464
/* F25B8 800D44C8 00000000 */   nop
.Lmenu_800D44CC:
/* F25BC 800D44CC 8E070E14 */  lw         $a3, 0xE14($s0)
/* F25C0 800D44D0 18E00041 */  blez       $a3, .Lmenu_800D45D8
/* F25C4 800D44D4 00003021 */   addu      $a2, $zero, $zero
/* F25C8 800D44D8 24090004 */  addiu      $t1, $zero, 0x4
/* F25CC 800D44DC 24080003 */  addiu      $t0, $zero, 0x3
.Lmenu_800D44E0:
/* F25D0 800D44E0 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F25D4 800D44E4 00062880 */  sll        $a1, $a2, 2
/* F25D8 800D44E8 00A21021 */  addu       $v0, $a1, $v0
/* F25DC 800D44EC 8C430000 */  lw         $v1, 0x0($v0)
/* F25E0 800D44F0 90620000 */  lbu        $v0, 0x0($v1)
/* F25E4 800D44F4 14490035 */  bne        $v0, $t1, .Lmenu_800D45CC
/* F25E8 800D44F8 24C60001 */   addiu     $a2, $a2, 0x1
/* F25EC 800D44FC A0680000 */  sb         $t0, 0x0($v1)
/* F25F0 800D4500 8E020E14 */  lw         $v0, 0xE14($s0)
/* F25F4 800D4504 8E030DD0 */  lw         $v1, 0xDD0($s0)
/* F25F8 800D4508 00021080 */  sll        $v0, $v0, 2
/* F25FC 800D450C 00431021 */  addu       $v0, $v0, $v1
/* F2600 800D4510 00A31821 */  addu       $v1, $a1, $v1
/* F2604 800D4514 8C440000 */  lw         $a0, 0x0($v0)
/* F2608 800D4518 8C620000 */  lw         $v0, 0x0($v1)
/* F260C 800D451C 884A0000 */  lwl        $t2, 0x0($v0)
/* F2610 800D4520 984A0003 */  lwr        $t2, 0x3($v0)
/* F2614 800D4524 884B0004 */  lwl        $t3, 0x4($v0)
/* F2618 800D4528 984B0007 */  lwr        $t3, 0x7($v0)
/* F261C 800D452C 884C0008 */  lwl        $t4, 0x8($v0)
/* F2620 800D4530 984C000B */  lwr        $t4, 0xB($v0)
/* F2624 800D4534 884D000C */  lwl        $t5, 0xC($v0)
/* F2628 800D4538 984D000F */  lwr        $t5, 0xF($v0)
/* F262C 800D453C A88A0000 */  swl        $t2, 0x0($a0)
/* F2630 800D4540 B88A0003 */  swr        $t2, 0x3($a0)
/* F2634 800D4544 A88B0004 */  swl        $t3, 0x4($a0)
/* F2638 800D4548 B88B0007 */  swr        $t3, 0x7($a0)
/* F263C 800D454C A88C0008 */  swl        $t4, 0x8($a0)
/* F2640 800D4550 B88C000B */  swr        $t4, 0xB($a0)
/* F2644 800D4554 A88D000C */  swl        $t5, 0xC($a0)
/* F2648 800D4558 B88D000F */  swr        $t5, 0xF($a0)
/* F264C 800D455C 8E030E14 */  lw         $v1, 0xE14($s0)
/* F2650 800D4560 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F2654 800D4564 00031880 */  sll        $v1, $v1, 2
/* F2658 800D4568 00621821 */  addu       $v1, $v1, $v0
/* F265C 800D456C 00A21021 */  addu       $v0, $a1, $v0
/* F2660 800D4570 8C420000 */  lw         $v0, 0x0($v0)
/* F2664 800D4574 8C630000 */  lw         $v1, 0x0($v1)
/* F2668 800D4578 9442000C */  lhu        $v0, 0xC($v0)
/* F266C 800D457C A4620008 */  sh         $v0, 0x8($v1)
/* F2670 800D4580 8E030E14 */  lw         $v1, 0xE14($s0)
/* F2674 800D4584 8E020DD0 */  lw         $v0, 0xDD0($s0)
/* F2678 800D4588 00031880 */  sll        $v1, $v1, 2
/* F267C 800D458C 00621821 */  addu       $v1, $v1, $v0
/* F2680 800D4590 00A21021 */  addu       $v0, $a1, $v0
/* F2684 800D4594 8C420000 */  lw         $v0, 0x0($v0)
/* F2688 800D4598 8C630000 */  lw         $v1, 0x0($v1)
/* F268C 800D459C 9442000E */  lhu        $v0, 0xE($v0)
/* F2690 800D45A0 A462000C */  sh         $v0, 0xC($v1)
/* F2694 800D45A4 8E020E14 */  lw         $v0, 0xE14($s0)
/* F2698 800D45A8 24420001 */  addiu      $v0, $v0, 0x1
/* F269C 800D45AC AE020E14 */  sw         $v0, 0xE14($s0)
/* F26A0 800D45B0 28420672 */  slti       $v0, $v0, 0x672
/* F26A4 800D45B4 14400006 */  bnez       $v0, .Lmenu_800D45D0
/* F26A8 800D45B8 00C7102A */   slt       $v0, $a2, $a3
/* F26AC 800D45BC 920200DC */  lbu        $v0, 0xDC($s0)
/* F26B0 800D45C0 34420001 */  ori        $v0, $v0, 0x1
/* F26B4 800D45C4 08035181 */  j          .Lmenu_800D4604
/* F26B8 800D45C8 A20200DC */   sb        $v0, 0xDC($s0)
.Lmenu_800D45CC:
/* F26BC 800D45CC 00C7102A */  slt        $v0, $a2, $a3
.Lmenu_800D45D0:
/* F26C0 800D45D0 1440FFC3 */  bnez       $v0, .Lmenu_800D44E0
/* F26C4 800D45D4 00000000 */   nop
.Lmenu_800D45D8:
/* F26C8 800D45D8 3C07800D */  lui        $a3, %hi(func_menu_800D1670)
/* F26CC 800D45DC 24060004 */  addiu      $a2, $zero, 0x4
/* F26D0 800D45E0 8E040DD0 */  lw         $a0, 0xDD0($s0)
/* F26D4 800D45E4 8E050E14 */  lw         $a1, 0xE14($s0)
/* F26D8 800D45E8 0C0007B1 */  jal        func_80001EC4
/* F26DC 800D45EC 24E71670 */   addiu     $a3, $a3, %lo(func_menu_800D1670)
/* F26E0 800D45F0 32220001 */  andi       $v0, $s1, 0x1
/* F26E4 800D45F4 10400003 */  beqz       $v0, .Lmenu_800D4604
/* F26E8 800D45F8 02002021 */   addu      $a0, $s0, $zero
/* F26EC 800D45FC 0C03501C */  jal        func_menu_800D4070
/* F26F0 800D4600 02202821 */   addu      $a1, $s1, $zero
.Lmenu_800D4604:
/* F26F4 800D4604 8FBF0018 */  lw         $ra, 0x18($sp)
/* F26F8 800D4608 8FB10014 */  lw         $s1, 0x14($sp)
/* F26FC 800D460C 8FB00010 */  lw         $s0, 0x10($sp)
/* F2700 800D4610 03E00008 */  jr         $ra
/* F2704 800D4614 27BD0020 */   addiu     $sp, $sp, 0x20
