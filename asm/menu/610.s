.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8010B640
/* 129730 8010B640 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 129734 8010B644 AFB00010 */  sw         $s0, 0x10($sp)
/* 129738 8010B648 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12973C 8010B64C 0C04639C */  jal        func_menu_80118E70
/* 129740 8010B650 00808021 */   addu      $s0, $a0, $zero
/* 129744 8010B654 3C02800D */  lui        $v0, %hi(D_menu_800CEAC8)
/* 129748 8010B658 2442EAC8 */  addiu      $v0, $v0, %lo(D_menu_800CEAC8)
/* 12974C 8010B65C 02002021 */  addu       $a0, $s0, $zero
/* 129750 8010B660 0C042DB1 */  jal        func_menu_8010B6C4
/* 129754 8010B664 AE020018 */   sw        $v0, 0x18($s0)
/* 129758 8010B668 02001021 */  addu       $v0, $s0, $zero
/* 12975C 8010B66C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 129760 8010B670 8FB00010 */  lw         $s0, 0x10($sp)
/* 129764 8010B674 03E00008 */  jr         $ra
/* 129768 8010B678 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010B67C
/* 12976C 8010B67C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 129770 8010B680 AFB00010 */  sw         $s0, 0x10($sp)
/* 129774 8010B684 00808021 */  addu       $s0, $a0, $zero
/* 129778 8010B688 AFB10014 */  sw         $s1, 0x14($sp)
/* 12977C 8010B68C 00A08821 */  addu       $s1, $a1, $zero
/* 129780 8010B690 3C02800D */  lui        $v0, %hi(D_menu_800CEAC8)
/* 129784 8010B694 2442EAC8 */  addiu      $v0, $v0, %lo(D_menu_800CEAC8)
/* 129788 8010B698 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12978C 8010B69C 0C0463DD */  jal        func_menu_80118F74
/* 129790 8010B6A0 AE020018 */   sw        $v0, 0x18($s0)
/* 129794 8010B6A4 02002021 */  addu       $a0, $s0, $zero
/* 129798 8010B6A8 0C0463A9 */  jal        func_menu_80118EA4
/* 12979C 8010B6AC 02202821 */   addu      $a1, $s1, $zero
/* 1297A0 8010B6B0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1297A4 8010B6B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1297A8 8010B6B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1297AC 8010B6BC 03E00008 */  jr         $ra
/* 1297B0 8010B6C0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010B6C4
/* 1297B4 8010B6C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1297B8 8010B6C8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1297BC 8010B6CC 00808021 */  addu       $s0, $a0, $zero
/* 1297C0 8010B6D0 2604001C */  addiu      $a0, $s0, 0x1C
/* 1297C4 8010B6D4 00002821 */  addu       $a1, $zero, $zero
/* 1297C8 8010B6D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1297CC 8010B6DC 0C000697 */  jal        func_80001A5C
/* 1297D0 8010B6E0 24060048 */   addiu     $a2, $zero, 0x48
/* 1297D4 8010B6E4 44800000 */  mtc1       $zero, $f0
/* 1297D8 8010B6E8 3C01800D */  lui        $at, %hi(D_menu_800CEAC0)
/* 1297DC 8010B6EC C422EAC0 */  lwc1       $f2, %lo(D_menu_800CEAC0)($at)
/* 1297E0 8010B6F0 24020001 */  addiu      $v0, $zero, 0x1
/* 1297E4 8010B6F4 AE000068 */  sw         $zero, 0x68($s0)
/* 1297E8 8010B6F8 AE00006C */  sw         $zero, 0x6C($s0)
/* 1297EC 8010B6FC AE000064 */  sw         $zero, 0x64($s0)
/* 1297F0 8010B700 E6000074 */  swc1       $f0, 0x74($s0)
/* 1297F4 8010B704 E6000070 */  swc1       $f0, 0x70($s0)
/* 1297F8 8010B708 E6020078 */  swc1       $f2, 0x78($s0)
/* 1297FC 8010B70C E6000084 */  swc1       $f0, 0x84($s0)
/* 129800 8010B710 E6000080 */  swc1       $f0, 0x80($s0)
/* 129804 8010B714 E600007C */  swc1       $f0, 0x7C($s0)
/* 129808 8010B718 8E03007C */  lw         $v1, 0x7C($s0)
/* 12980C 8010B71C 8E070080 */  lw         $a3, 0x80($s0)
/* 129810 8010B720 8E080084 */  lw         $t0, 0x84($s0)
/* 129814 8010B724 AE030088 */  sw         $v1, 0x88($s0)
/* 129818 8010B728 AE07008C */  sw         $a3, 0x8C($s0)
/* 12981C 8010B72C AE080090 */  sw         $t0, 0x90($s0)
/* 129820 8010B730 AE000098 */  sw         $zero, 0x98($s0)
/* 129824 8010B734 AE000094 */  sw         $zero, 0x94($s0)
/* 129828 8010B738 AE02009C */  sw         $v0, 0x9C($s0)
/* 12982C 8010B73C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 129830 8010B740 8FB00010 */  lw         $s0, 0x10($sp)
/* 129834 8010B744 03E00008 */  jr         $ra
/* 129838 8010B748 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010B74C
/* 12983C 8010B74C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 129840 8010B750 AFB00010 */  sw         $s0, 0x10($sp)
/* 129844 8010B754 00808021 */  addu       $s0, $a0, $zero
/* 129848 8010B758 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12984C 8010B75C AFB10014 */  sw         $s1, 0x14($sp)
/* 129850 8010B760 8E020018 */  lw         $v0, 0x18($s0)
/* 129854 8010B764 00A08821 */  addu       $s1, $a1, $zero
/* 129858 8010B768 84440018 */  lh         $a0, 0x18($v0)
/* 12985C 8010B76C 8C42001C */  lw         $v0, 0x1C($v0)
/* 129860 8010B770 0040F809 */  jalr       $v0
/* 129864 8010B774 02042021 */   addu      $a0, $s0, $a0
/* 129868 8010B778 2603001C */  addiu      $v1, $s0, 0x1C
/* 12986C 8010B77C 02201021 */  addu       $v0, $s1, $zero
/* 129870 8010B780 26240040 */  addiu      $a0, $s1, 0x40
.Lmenu_8010B784:
/* 129874 8010B784 8C460000 */  lw         $a2, 0x0($v0)
/* 129878 8010B788 8C470004 */  lw         $a3, 0x4($v0)
/* 12987C 8010B78C 8C480008 */  lw         $t0, 0x8($v0)
/* 129880 8010B790 8C49000C */  lw         $t1, 0xC($v0)
/* 129884 8010B794 AC660000 */  sw         $a2, 0x0($v1)
/* 129888 8010B798 AC670004 */  sw         $a3, 0x4($v1)
/* 12988C 8010B79C AC680008 */  sw         $t0, 0x8($v1)
/* 129890 8010B7A0 AC69000C */  sw         $t1, 0xC($v1)
/* 129894 8010B7A4 24420010 */  addiu      $v0, $v0, 0x10
/* 129898 8010B7A8 1444FFF6 */  bne        $v0, $a0, .Lmenu_8010B784
/* 12989C 8010B7AC 24630010 */   addiu     $v1, $v1, 0x10
/* 1298A0 8010B7B0 02002021 */  addu       $a0, $s0, $zero
/* 1298A4 8010B7B4 02202821 */  addu       $a1, $s1, $zero
/* 1298A8 8010B7B8 8C460000 */  lw         $a2, 0x0($v0)
/* 1298AC 8010B7BC 8C470004 */  lw         $a3, 0x4($v0)
/* 1298B0 8010B7C0 AC660000 */  sw         $a2, 0x0($v1)
/* 1298B4 8010B7C4 0C0463C4 */  jal        func_menu_80118F10
/* 1298B8 8010B7C8 AC670004 */   sw        $a3, 0x4($v1)
/* 1298BC 8010B7CC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1298C0 8010B7D0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1298C4 8010B7D4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1298C8 8010B7D8 03E00008 */  jr         $ra
/* 1298CC 8010B7DC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010B7E0
/* 1298D0 8010B7E0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1298D4 8010B7E4 F7B40050 */  sdc1       $f20, 0x50($sp)
/* 1298D8 8010B7E8 4486A000 */  mtc1       $a2, $f20
/* 1298DC 8010B7EC AFB10044 */  sw         $s1, 0x44($sp)
/* 1298E0 8010B7F0 00808821 */  addu       $s1, $a0, $zero
/* 1298E4 8010B7F4 AFB20048 */  sw         $s2, 0x48($sp)
/* 1298E8 8010B7F8 00A09021 */  addu       $s2, $a1, $zero
/* 1298EC 8010B7FC AFB00040 */  sw         $s0, 0x40($sp)
/* 1298F0 8010B800 00E08021 */  addu       $s0, $a3, $zero
/* 1298F4 8010B804 12400035 */  beqz       $s2, .Lmenu_8010B8DC
/* 1298F8 8010B808 AFBF004C */   sw        $ra, 0x4C($sp)
/* 1298FC 8010B80C 8E420024 */  lw         $v0, 0x24($s2)
/* 129900 8010B810 27A50030 */  addiu      $a1, $sp, 0x30
/* 129904 8010B814 84440010 */  lh         $a0, 0x10($v0)
/* 129908 8010B818 8C420014 */  lw         $v0, 0x14($v0)
/* 12990C 8010B81C 0040F809 */  jalr       $v0
/* 129910 8010B820 02442021 */   addu      $a0, $s2, $a0
/* 129914 8010B824 C6220048 */  lwc1       $f2, 0x48($s1)
/* 129918 8010B828 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 12991C 8010B82C 46001081 */  sub.s      $f2, $f2, $f0
/* 129920 8010B830 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 129924 8010B834 44903000 */  mtc1       $s0, $f6
/* 129928 8010B838 468031A0 */  cvt.s.w    $f6, $f6
/* 12992C 8010B83C E7A20010 */  swc1       $f2, 0x10($sp)
/* 129930 8010B840 C620004C */  lwc1       $f0, 0x4C($s1)
/* 129934 8010B844 46061083 */  div.s      $f2, $f2, $f6
/* 129938 8010B848 E7A20020 */  swc1       $f2, 0x20($sp)
/* 12993C 8010B84C 44801000 */  mtc1       $zero, $f2
/* 129940 8010B850 46040001 */  sub.s      $f0, $f0, $f4
/* 129944 8010B854 AFA00018 */  sw         $zero, 0x18($sp)
/* 129948 8010B858 AFA00028 */  sw         $zero, 0x28($sp)
/* 12994C 8010B85C E7A00014 */  swc1       $f0, 0x14($sp)
/* 129950 8010B860 46060003 */  div.s      $f0, $f0, $f6
/* 129954 8010B864 E7A00024 */  swc1       $f0, 0x24($sp)
/* 129958 8010B868 AE300094 */  sw         $s0, 0x94($s1)
/* 12995C 8010B86C C7A00020 */  lwc1       $f0, 0x20($sp)
/* 129960 8010B870 E6400018 */  swc1       $f0, 0x18($s2)
/* 129964 8010B874 C7A00024 */  lwc1       $f0, 0x24($sp)
/* 129968 8010B878 E640001C */  swc1       $f0, 0x1C($s2)
/* 12996C 8010B87C C7A00028 */  lwc1       $f0, 0x28($sp)
/* 129970 8010B880 4602A032 */  c.eq.s     $f20, $f2
/* 129974 8010B884 00000000 */  nop
/* 129978 8010B888 45010006 */  bc1t       .Lmenu_8010B8A4
/* 12997C 8010B88C E6400020 */   swc1      $f0, 0x20($s2)
/* 129980 8010B890 3C01800D */  lui        $at, %hi(D_menu_800CEAC4)
/* 129984 8010B894 C420EAC4 */  lwc1       $f0, %lo(D_menu_800CEAC4)($at)
/* 129988 8010B898 E7A20018 */  swc1       $f2, 0x18($sp)
/* 12998C 8010B89C E7A20014 */  swc1       $f2, 0x14($sp)
/* 129990 8010B8A0 E7A00010 */  swc1       $f0, 0x10($sp)
.Lmenu_8010B8A4:
/* 129994 8010B8A4 27A40010 */  addiu      $a0, $sp, 0x10
/* 129998 8010B8A8 27B00020 */  addiu      $s0, $sp, 0x20
/* 12999C 8010B8AC 02002821 */  addu       $a1, $s0, $zero
/* 1299A0 8010B8B0 26310070 */  addiu      $s1, $s1, 0x70
/* 1299A4 8010B8B4 4407A000 */  mfc1       $a3, $f20
/* 1299A8 8010B8B8 0C0012FA */  jal        func_80004BE8
/* 1299AC 8010B8BC 02203021 */   addu      $a2, $s1, $zero
/* 1299B0 8010B8C0 02002821 */  addu       $a1, $s0, $zero
/* 1299B4 8010B8C4 8E420024 */  lw         $v0, 0x24($s2)
/* 1299B8 8010B8C8 02203021 */  addu       $a2, $s1, $zero
/* 1299BC 8010B8CC 84440080 */  lh         $a0, 0x80($v0)
/* 1299C0 8010B8D0 8C420084 */  lw         $v0, 0x84($v0)
/* 1299C4 8010B8D4 0040F809 */  jalr       $v0
/* 1299C8 8010B8D8 02442021 */   addu      $a0, $s2, $a0
.Lmenu_8010B8DC:
/* 1299CC 8010B8DC 8FBF004C */  lw         $ra, 0x4C($sp)
/* 1299D0 8010B8E0 8FB20048 */  lw         $s2, 0x48($sp)
/* 1299D4 8010B8E4 8FB10044 */  lw         $s1, 0x44($sp)
/* 1299D8 8010B8E8 8FB00040 */  lw         $s0, 0x40($sp)
/* 1299DC 8010B8EC D7B40050 */  ldc1       $f20, 0x50($sp)
/* 1299E0 8010B8F0 03E00008 */  jr         $ra
/* 1299E4 8010B8F4 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_menu_8010B8F8
/* 1299E8 8010B8F8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1299EC 8010B8FC AFB3004C */  sw         $s3, 0x4C($sp)
/* 1299F0 8010B900 00809821 */  addu       $s3, $a0, $zero
/* 1299F4 8010B904 AFB00040 */  sw         $s0, 0x40($sp)
/* 1299F8 8010B908 00A08021 */  addu       $s0, $a1, $zero
/* 1299FC 8010B90C AFB10044 */  sw         $s1, 0x44($sp)
/* 129A00 8010B910 00C08821 */  addu       $s1, $a2, $zero
/* 129A04 8010B914 AFB20048 */  sw         $s2, 0x48($sp)
/* 129A08 8010B918 00E09021 */  addu       $s2, $a3, $zero
/* 129A0C 8010B91C 1200001E */  beqz       $s0, .Lmenu_8010B998
/* 129A10 8010B920 AFBF0050 */   sw        $ra, 0x50($sp)
/* 129A14 8010B924 8E020024 */  lw         $v0, 0x24($s0)
/* 129A18 8010B928 27A50030 */  addiu      $a1, $sp, 0x30
/* 129A1C 8010B92C 84440010 */  lh         $a0, 0x10($v0)
/* 129A20 8010B930 8C420014 */  lw         $v0, 0x14($v0)
/* 129A24 8010B934 0040F809 */  jalr       $v0
/* 129A28 8010B938 02042021 */   addu      $a0, $s0, $a0
/* 129A2C 8010B93C C6220000 */  lwc1       $f2, 0x0($s1)
/* 129A30 8010B940 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 129A34 8010B944 46001081 */  sub.s      $f2, $f2, $f0
/* 129A38 8010B948 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 129A3C 8010B94C 44924000 */  mtc1       $s2, $f8
/* 129A40 8010B950 46804220 */  cvt.s.w    $f8, $f8
/* 129A44 8010B954 E7A20010 */  swc1       $f2, 0x10($sp)
/* 129A48 8010B958 C6200004 */  lwc1       $f0, 0x4($s1)
/* 129A4C 8010B95C 46081083 */  div.s      $f2, $f2, $f8
/* 129A50 8010B960 AFA00018 */  sw         $zero, 0x18($sp)
/* 129A54 8010B964 C7A60018 */  lwc1       $f6, 0x18($sp)
/* 129A58 8010B968 46040001 */  sub.s      $f0, $f0, $f4
/* 129A5C 8010B96C E7A20020 */  swc1       $f2, 0x20($sp)
/* 129A60 8010B970 E7A60028 */  swc1       $f6, 0x28($sp)
/* 129A64 8010B974 E7A00014 */  swc1       $f0, 0x14($sp)
/* 129A68 8010B978 46080003 */  div.s      $f0, $f0, $f8
/* 129A6C 8010B97C E7A00024 */  swc1       $f0, 0x24($sp)
/* 129A70 8010B980 E6020018 */  swc1       $f2, 0x18($s0)
/* 129A74 8010B984 C7A00024 */  lwc1       $f0, 0x24($sp)
/* 129A78 8010B988 E600001C */  swc1       $f0, 0x1C($s0)
/* 129A7C 8010B98C C7A00028 */  lwc1       $f0, 0x28($sp)
/* 129A80 8010B990 E6000020 */  swc1       $f0, 0x20($s0)
/* 129A84 8010B994 AE720098 */  sw         $s2, 0x98($s3)
.Lmenu_8010B998:
/* 129A88 8010B998 8FBF0050 */  lw         $ra, 0x50($sp)
/* 129A8C 8010B99C 8FB3004C */  lw         $s3, 0x4C($sp)
/* 129A90 8010B9A0 8FB20048 */  lw         $s2, 0x48($sp)
/* 129A94 8010B9A4 8FB10044 */  lw         $s1, 0x44($sp)
/* 129A98 8010B9A8 8FB00040 */  lw         $s0, 0x40($sp)
/* 129A9C 8010B9AC 03E00008 */  jr         $ra
/* 129AA0 8010B9B0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_menu_8010B9B4
/* 129AA4 8010B9B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 129AA8 8010B9B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 129AAC 8010B9BC 00808021 */  addu       $s0, $a0, $zero
/* 129AB0 8010B9C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 129AB4 8010B9C4 8E020068 */  lw         $v0, 0x68($s0)
/* 129AB8 8010B9C8 AE050064 */  sw         $a1, 0x64($s0)
/* 129ABC 8010B9CC AE000068 */  sw         $zero, 0x68($s0)
/* 129AC0 8010B9D0 10A00008 */  beqz       $a1, .Lmenu_8010B9F4
/* 129AC4 8010B9D4 AE02006C */   sw        $v0, 0x6C($s0)
/* 129AC8 8010B9D8 00A01821 */  addu       $v1, $a1, $zero
/* 129ACC 8010B9DC 8C620024 */  lw         $v0, 0x24($v1)
/* 129AD0 8010B9E0 26050030 */  addiu      $a1, $s0, 0x30
/* 129AD4 8010B9E4 84440018 */  lh         $a0, 0x18($v0)
/* 129AD8 8010B9E8 8C42001C */  lw         $v0, 0x1C($v0)
/* 129ADC 8010B9EC 0040F809 */  jalr       $v0
/* 129AE0 8010B9F0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8010B9F4:
/* 129AE4 8010B9F4 8E050064 */  lw         $a1, 0x64($s0)
/* 129AE8 8010B9F8 8E060054 */  lw         $a2, 0x54($s0)
/* 129AEC 8010B9FC 8E070028 */  lw         $a3, 0x28($s0)
/* 129AF0 8010BA00 0C042DF8 */  jal        func_menu_8010B7E0
/* 129AF4 8010BA04 02002021 */   addu      $a0, $s0, $zero
/* 129AF8 8010BA08 02002021 */  addu       $a0, $s0, $zero
/* 129AFC 8010BA0C 8E05006C */  lw         $a1, 0x6C($s0)
/* 129B00 8010BA10 8E07002C */  lw         $a3, 0x2C($s0)
/* 129B04 8010BA14 0C042E3E */  jal        func_menu_8010B8F8
/* 129B08 8010BA18 2606003C */   addiu     $a2, $s0, 0x3C
/* 129B0C 8010BA1C 24020001 */  addiu      $v0, $zero, 0x1
/* 129B10 8010BA20 AE02009C */  sw         $v0, 0x9C($s0)
/* 129B14 8010BA24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 129B18 8010BA28 8FB00010 */  lw         $s0, 0x10($sp)
/* 129B1C 8010BA2C 03E00008 */  jr         $ra
/* 129B20 8010BA30 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010BA34
/* 129B24 8010BA34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 129B28 8010BA38 AFB00010 */  sw         $s0, 0x10($sp)
/* 129B2C 8010BA3C 00808021 */  addu       $s0, $a0, $zero
/* 129B30 8010BA40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 129B34 8010BA44 8E020068 */  lw         $v0, 0x68($s0)
/* 129B38 8010BA48 AE05006C */  sw         $a1, 0x6C($s0)
/* 129B3C 8010BA4C AE000068 */  sw         $zero, 0x68($s0)
/* 129B40 8010BA50 10A00008 */  beqz       $a1, .Lmenu_8010BA74
/* 129B44 8010BA54 AE020064 */   sw        $v0, 0x64($s0)
/* 129B48 8010BA58 00A01821 */  addu       $v1, $a1, $zero
/* 129B4C 8010BA5C 8C620024 */  lw         $v0, 0x24($v1)
/* 129B50 8010BA60 2605003C */  addiu      $a1, $s0, 0x3C
/* 129B54 8010BA64 84440018 */  lh         $a0, 0x18($v0)
/* 129B58 8010BA68 8C42001C */  lw         $v0, 0x1C($v0)
/* 129B5C 8010BA6C 0040F809 */  jalr       $v0
/* 129B60 8010BA70 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8010BA74:
/* 129B64 8010BA74 8E05006C */  lw         $a1, 0x6C($s0)
/* 129B68 8010BA78 8E060058 */  lw         $a2, 0x58($s0)
/* 129B6C 8010BA7C 8E07002C */  lw         $a3, 0x2C($s0)
/* 129B70 8010BA80 0C042DF8 */  jal        func_menu_8010B7E0
/* 129B74 8010BA84 02002021 */   addu      $a0, $s0, $zero
/* 129B78 8010BA88 02002021 */  addu       $a0, $s0, $zero
/* 129B7C 8010BA8C 8E050064 */  lw         $a1, 0x64($s0)
/* 129B80 8010BA90 8E070028 */  lw         $a3, 0x28($s0)
/* 129B84 8010BA94 0C042E3E */  jal        func_menu_8010B8F8
/* 129B88 8010BA98 26060030 */   addiu     $a2, $s0, 0x30
/* 129B8C 8010BA9C AE00009C */  sw         $zero, 0x9C($s0)
/* 129B90 8010BAA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 129B94 8010BAA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 129B98 8010BAA8 03E00008 */  jr         $ra
/* 129B9C 8010BAAC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010BAB0
/* 129BA0 8010BAB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 129BA4 8010BAB4 00801821 */  addu       $v1, $a0, $zero
/* 129BA8 8010BAB8 AFB00020 */  sw         $s0, 0x20($sp)
/* 129BAC 8010BABC 00A08021 */  addu       $s0, $a1, $zero
/* 129BB0 8010BAC0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 129BB4 8010BAC4 12000011 */  beqz       $s0, .Lmenu_8010BB0C
/* 129BB8 8010BAC8 AC700068 */   sw        $s0, 0x68($v1)
/* 129BBC 8010BACC 8E020024 */  lw         $v0, 0x24($s0)
/* 129BC0 8010BAD0 24650048 */  addiu      $a1, $v1, 0x48
/* 129BC4 8010BAD4 84440018 */  lh         $a0, 0x18($v0)
/* 129BC8 8010BAD8 8C42001C */  lw         $v0, 0x1C($v0)
/* 129BCC 8010BADC 0040F809 */  jalr       $v0
/* 129BD0 8010BAE0 02042021 */   addu      $a0, $s0, $a0
/* 129BD4 8010BAE4 44800000 */  mtc1       $zero, $f0
/* 129BD8 8010BAE8 27A20010 */  addiu      $v0, $sp, 0x10
/* 129BDC 8010BAEC E7A00018 */  swc1       $f0, 0x18($sp)
/* 129BE0 8010BAF0 E7A00014 */  swc1       $f0, 0x14($sp)
/* 129BE4 8010BAF4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 129BE8 8010BAF8 E6000018 */  swc1       $f0, 0x18($s0)
/* 129BEC 8010BAFC C4400004 */  lwc1       $f0, 0x4($v0)
/* 129BF0 8010BB00 E600001C */  swc1       $f0, 0x1C($s0)
/* 129BF4 8010BB04 C4400008 */  lwc1       $f0, 0x8($v0)
/* 129BF8 8010BB08 E6000020 */  swc1       $f0, 0x20($s0)
.Lmenu_8010BB0C:
/* 129BFC 8010BB0C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 129C00 8010BB10 8FB00020 */  lw         $s0, 0x20($sp)
/* 129C04 8010BB14 03E00008 */  jr         $ra
/* 129C08 8010BB18 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010BB1C
/* 129C0C 8010BB1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 129C10 8010BB20 AFB10014 */  sw         $s1, 0x14($sp)
/* 129C14 8010BB24 00808821 */  addu       $s1, $a0, $zero
/* 129C18 8010BB28 AFBF0018 */  sw         $ra, 0x18($sp)
/* 129C1C 8010BB2C AFB00010 */  sw         $s0, 0x10($sp)
/* 129C20 8010BB30 8E260064 */  lw         $a2, 0x64($s1)
/* 129C24 8010BB34 10C00016 */  beqz       $a2, .Lmenu_8010BB90
/* 129C28 8010BB38 00A08021 */   addu      $s0, $a1, $zero
/* 129C2C 8010BB3C 8E230094 */  lw         $v1, 0x94($s1)
/* 129C30 8010BB40 0070102B */  sltu       $v0, $v1, $s0
/* 129C34 8010BB44 54400001 */  bnel       $v0, $zero, .Lmenu_8010BB4C
/* 129C38 8010BB48 00608021 */   addu      $s0, $v1, $zero
.Lmenu_8010BB4C:
/* 129C3C 8010BB4C 8CC20024 */  lw         $v0, 0x24($a2)
/* 129C40 8010BB50 02002821 */  addu       $a1, $s0, $zero
/* 129C44 8010BB54 84440020 */  lh         $a0, 0x20($v0)
/* 129C48 8010BB58 8C420024 */  lw         $v0, 0x24($v0)
/* 129C4C 8010BB5C 0040F809 */  jalr       $v0
/* 129C50 8010BB60 00C42021 */   addu      $a0, $a2, $a0
/* 129C54 8010BB64 8E220094 */  lw         $v0, 0x94($s1)
/* 129C58 8010BB68 00501023 */  subu       $v0, $v0, $s0
/* 129C5C 8010BB6C 14400008 */  bnez       $v0, .Lmenu_8010BB90
/* 129C60 8010BB70 AE220094 */   sw        $v0, 0x94($s1)
/* 129C64 8010BB74 8E22009C */  lw         $v0, 0x9C($s1)
/* 129C68 8010BB78 50400005 */  beql       $v0, $zero, .Lmenu_8010BB90
/* 129C6C 8010BB7C AE200064 */   sw        $zero, 0x64($s1)
/* 129C70 8010BB80 8E250064 */  lw         $a1, 0x64($s1)
/* 129C74 8010BB84 0C042EAC */  jal        func_menu_8010BAB0
/* 129C78 8010BB88 02202021 */   addu      $a0, $s1, $zero
/* 129C7C 8010BB8C AE200064 */  sw         $zero, 0x64($s1)
.Lmenu_8010BB90:
/* 129C80 8010BB90 24020001 */  addiu      $v0, $zero, 0x1
/* 129C84 8010BB94 8FBF0018 */  lw         $ra, 0x18($sp)
/* 129C88 8010BB98 8FB10014 */  lw         $s1, 0x14($sp)
/* 129C8C 8010BB9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 129C90 8010BBA0 03E00008 */  jr         $ra
/* 129C94 8010BBA4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010BBA8
/* 129C98 8010BBA8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 129C9C 8010BBAC AFB10014 */  sw         $s1, 0x14($sp)
/* 129CA0 8010BBB0 00808821 */  addu       $s1, $a0, $zero
/* 129CA4 8010BBB4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 129CA8 8010BBB8 AFB00010 */  sw         $s0, 0x10($sp)
/* 129CAC 8010BBBC 8E26006C */  lw         $a2, 0x6C($s1)
/* 129CB0 8010BBC0 10C00016 */  beqz       $a2, .Lmenu_8010BC1C
/* 129CB4 8010BBC4 00A08021 */   addu      $s0, $a1, $zero
/* 129CB8 8010BBC8 8E230098 */  lw         $v1, 0x98($s1)
/* 129CBC 8010BBCC 0070102B */  sltu       $v0, $v1, $s0
/* 129CC0 8010BBD0 54400001 */  bnel       $v0, $zero, .Lmenu_8010BBD8
/* 129CC4 8010BBD4 00608021 */   addu      $s0, $v1, $zero
.Lmenu_8010BBD8:
/* 129CC8 8010BBD8 8CC20024 */  lw         $v0, 0x24($a2)
/* 129CCC 8010BBDC 02002821 */  addu       $a1, $s0, $zero
/* 129CD0 8010BBE0 84440020 */  lh         $a0, 0x20($v0)
/* 129CD4 8010BBE4 8C420024 */  lw         $v0, 0x24($v0)
/* 129CD8 8010BBE8 0040F809 */  jalr       $v0
/* 129CDC 8010BBEC 00C42021 */   addu      $a0, $a2, $a0
/* 129CE0 8010BBF0 8E220098 */  lw         $v0, 0x98($s1)
/* 129CE4 8010BBF4 00501023 */  subu       $v0, $v0, $s0
/* 129CE8 8010BBF8 14400008 */  bnez       $v0, .Lmenu_8010BC1C
/* 129CEC 8010BBFC AE220098 */   sw        $v0, 0x98($s1)
/* 129CF0 8010BC00 8E22009C */  lw         $v0, 0x9C($s1)
/* 129CF4 8010BC04 54400005 */  bnel       $v0, $zero, .Lmenu_8010BC1C
/* 129CF8 8010BC08 AE20006C */   sw        $zero, 0x6C($s1)
/* 129CFC 8010BC0C 8E25006C */  lw         $a1, 0x6C($s1)
/* 129D00 8010BC10 0C042EAC */  jal        func_menu_8010BAB0
/* 129D04 8010BC14 02202021 */   addu      $a0, $s1, $zero
/* 129D08 8010BC18 AE20006C */  sw         $zero, 0x6C($s1)
.Lmenu_8010BC1C:
/* 129D0C 8010BC1C 24020001 */  addiu      $v0, $zero, 0x1
/* 129D10 8010BC20 8FBF0018 */  lw         $ra, 0x18($sp)
/* 129D14 8010BC24 8FB10014 */  lw         $s1, 0x14($sp)
/* 129D18 8010BC28 8FB00010 */  lw         $s0, 0x10($sp)
/* 129D1C 8010BC2C 03E00008 */  jr         $ra
/* 129D20 8010BC30 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010BC34
/* 129D24 8010BC34 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 129D28 8010BC38 AFB20038 */  sw         $s2, 0x38($sp)
/* 129D2C 8010BC3C 00809021 */  addu       $s2, $a0, $zero
/* 129D30 8010BC40 AFBF003C */  sw         $ra, 0x3C($sp)
/* 129D34 8010BC44 AFB10034 */  sw         $s1, 0x34($sp)
/* 129D38 8010BC48 AFB00030 */  sw         $s0, 0x30($sp)
/* 129D3C 8010BC4C F7B40040 */  sdc1       $f20, 0x40($sp)
/* 129D40 8010BC50 8E430068 */  lw         $v1, 0x68($s2)
/* 129D44 8010BC54 00A08821 */  addu       $s1, $a1, $zero
/* 129D48 8010BC58 1060002A */  beqz       $v1, .Lmenu_8010BD04
/* 129D4C 8010BC5C 24020001 */   addiu     $v0, $zero, 0x1
/* 129D50 8010BC60 8E420060 */  lw         $v0, 0x60($s2)
/* 129D54 8010BC64 10400006 */  beqz       $v0, .Lmenu_8010BC80
/* 129D58 8010BC68 02202821 */   addu      $a1, $s1, $zero
/* 129D5C 8010BC6C 8C620024 */  lw         $v0, 0x24($v1)
/* 129D60 8010BC70 84440020 */  lh         $a0, 0x20($v0)
/* 129D64 8010BC74 8C420024 */  lw         $v0, 0x24($v0)
/* 129D68 8010BC78 0040F809 */  jalr       $v0
/* 129D6C 8010BC7C 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8010BC80:
/* 129D70 8010BC80 C642005C */  lwc1       $f2, 0x5C($s2)
/* 129D74 8010BC84 44800000 */  mtc1       $zero, $f0
/* 129D78 8010BC88 46001032 */  c.eq.s     $f2, $f0
/* 129D7C 8010BC8C 00000000 */  nop
/* 129D80 8010BC90 4501001C */  bc1t       .Lmenu_8010BD04
/* 129D84 8010BC94 24020001 */   addiu     $v0, $zero, 0x1
/* 129D88 8010BC98 27A50010 */  addiu      $a1, $sp, 0x10
/* 129D8C 8010BC9C 8E420068 */  lw         $v0, 0x68($s2)
/* 129D90 8010BCA0 27B00020 */  addiu      $s0, $sp, 0x20
/* 129D94 8010BCA4 8C430024 */  lw         $v1, 0x24($v0)
/* 129D98 8010BCA8 84640088 */  lh         $a0, 0x88($v1)
/* 129D9C 8010BCAC 4491A000 */  mtc1       $s1, $f20
/* 129DA0 8010BCB0 4680A520 */  cvt.s.w    $f20, $f20
/* 129DA4 8010BCB4 00442021 */  addu       $a0, $v0, $a0
/* 129DA8 8010BCB8 8C62008C */  lw         $v0, 0x8C($v1)
/* 129DAC 8010BCBC 4602A502 */  mul.s      $f20, $f20, $f2
/* 129DB0 8010BCC0 0040F809 */  jalr       $v0
/* 129DB4 8010BCC4 02003021 */   addu      $a2, $s0, $zero
/* 129DB8 8010BCC8 27A40010 */  addiu      $a0, $sp, 0x10
/* 129DBC 8010BCCC 02002821 */  addu       $a1, $s0, $zero
/* 129DC0 8010BCD0 26510070 */  addiu      $s1, $s2, 0x70
/* 129DC4 8010BCD4 4407A000 */  mfc1       $a3, $f20
/* 129DC8 8010BCD8 0C0012FA */  jal        func_80004BE8
/* 129DCC 8010BCDC 02203021 */   addu      $a2, $s1, $zero
/* 129DD0 8010BCE0 8E430068 */  lw         $v1, 0x68($s2)
/* 129DD4 8010BCE4 02002821 */  addu       $a1, $s0, $zero
/* 129DD8 8010BCE8 8C620024 */  lw         $v0, 0x24($v1)
/* 129DDC 8010BCEC 02203021 */  addu       $a2, $s1, $zero
/* 129DE0 8010BCF0 84440080 */  lh         $a0, 0x80($v0)
/* 129DE4 8010BCF4 8C420084 */  lw         $v0, 0x84($v0)
/* 129DE8 8010BCF8 0040F809 */  jalr       $v0
/* 129DEC 8010BCFC 00642021 */   addu      $a0, $v1, $a0
/* 129DF0 8010BD00 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_8010BD04:
/* 129DF4 8010BD04 8FBF003C */  lw         $ra, 0x3C($sp)
/* 129DF8 8010BD08 8FB20038 */  lw         $s2, 0x38($sp)
/* 129DFC 8010BD0C 8FB10034 */  lw         $s1, 0x34($sp)
/* 129E00 8010BD10 8FB00030 */  lw         $s0, 0x30($sp)
/* 129E04 8010BD14 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 129E08 8010BD18 03E00008 */  jr         $ra
/* 129E0C 8010BD1C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_8010BD20
/* 129E10 8010BD20 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 129E14 8010BD24 AFB00020 */  sw         $s0, 0x20($sp)
/* 129E18 8010BD28 00808021 */  addu       $s0, $a0, $zero
/* 129E1C 8010BD2C AFBF0024 */  sw         $ra, 0x24($sp)
/* 129E20 8010BD30 8E030064 */  lw         $v1, 0x64($s0)
/* 129E24 8010BD34 10600014 */  beqz       $v1, .Lmenu_8010BD88
/* 129E28 8010BD38 27A50010 */   addiu     $a1, $sp, 0x10
/* 129E2C 8010BD3C 8C620024 */  lw         $v0, 0x24($v1)
/* 129E30 8010BD40 84440010 */  lh         $a0, 0x10($v0)
/* 129E34 8010BD44 8C420014 */  lw         $v0, 0x14($v0)
/* 129E38 8010BD48 0040F809 */  jalr       $v0
/* 129E3C 8010BD4C 00642021 */   addu      $a0, $v1, $a0
/* 129E40 8010BD50 8E030064 */  lw         $v1, 0x64($s0)
/* 129E44 8010BD54 8C620024 */  lw         $v0, 0x24($v1)
/* 129E48 8010BD58 27A50010 */  addiu      $a1, $sp, 0x10
/* 129E4C 8010BD5C 84440018 */  lh         $a0, 0x18($v0)
/* 129E50 8010BD60 8C42001C */  lw         $v0, 0x1C($v0)
/* 129E54 8010BD64 0040F809 */  jalr       $v0
/* 129E58 8010BD68 00642021 */   addu      $a0, $v1, $a0
/* 129E5C 8010BD6C 8E030064 */  lw         $v1, 0x64($s0)
/* 129E60 8010BD70 8C620024 */  lw         $v0, 0x24($v1)
/* 129E64 8010BD74 8E05000C */  lw         $a1, 0xC($s0)
/* 129E68 8010BD78 84440040 */  lh         $a0, 0x40($v0)
/* 129E6C 8010BD7C 8C420044 */  lw         $v0, 0x44($v0)
/* 129E70 8010BD80 0040F809 */  jalr       $v0
/* 129E74 8010BD84 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8010BD88:
/* 129E78 8010BD88 8E030068 */  lw         $v1, 0x68($s0)
/* 129E7C 8010BD8C 10600014 */  beqz       $v1, .Lmenu_8010BDE0
/* 129E80 8010BD90 27A50010 */   addiu     $a1, $sp, 0x10
/* 129E84 8010BD94 8C620024 */  lw         $v0, 0x24($v1)
/* 129E88 8010BD98 84440010 */  lh         $a0, 0x10($v0)
/* 129E8C 8010BD9C 8C420014 */  lw         $v0, 0x14($v0)
/* 129E90 8010BDA0 0040F809 */  jalr       $v0
/* 129E94 8010BDA4 00642021 */   addu      $a0, $v1, $a0
/* 129E98 8010BDA8 8E030068 */  lw         $v1, 0x68($s0)
/* 129E9C 8010BDAC 8C620024 */  lw         $v0, 0x24($v1)
/* 129EA0 8010BDB0 27A50010 */  addiu      $a1, $sp, 0x10
/* 129EA4 8010BDB4 84440018 */  lh         $a0, 0x18($v0)
/* 129EA8 8010BDB8 8C42001C */  lw         $v0, 0x1C($v0)
/* 129EAC 8010BDBC 0040F809 */  jalr       $v0
/* 129EB0 8010BDC0 00642021 */   addu      $a0, $v1, $a0
/* 129EB4 8010BDC4 8E030068 */  lw         $v1, 0x68($s0)
/* 129EB8 8010BDC8 8C620024 */  lw         $v0, 0x24($v1)
/* 129EBC 8010BDCC 8E05000C */  lw         $a1, 0xC($s0)
/* 129EC0 8010BDD0 84440040 */  lh         $a0, 0x40($v0)
/* 129EC4 8010BDD4 8C420044 */  lw         $v0, 0x44($v0)
/* 129EC8 8010BDD8 0040F809 */  jalr       $v0
/* 129ECC 8010BDDC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8010BDE0:
/* 129ED0 8010BDE0 8E03006C */  lw         $v1, 0x6C($s0)
/* 129ED4 8010BDE4 10600014 */  beqz       $v1, .Lmenu_8010BE38
/* 129ED8 8010BDE8 27A50010 */   addiu     $a1, $sp, 0x10
/* 129EDC 8010BDEC 8C620024 */  lw         $v0, 0x24($v1)
/* 129EE0 8010BDF0 84440010 */  lh         $a0, 0x10($v0)
/* 129EE4 8010BDF4 8C420014 */  lw         $v0, 0x14($v0)
/* 129EE8 8010BDF8 0040F809 */  jalr       $v0
/* 129EEC 8010BDFC 00642021 */   addu      $a0, $v1, $a0
/* 129EF0 8010BE00 8E03006C */  lw         $v1, 0x6C($s0)
/* 129EF4 8010BE04 8C620024 */  lw         $v0, 0x24($v1)
/* 129EF8 8010BE08 27A50010 */  addiu      $a1, $sp, 0x10
/* 129EFC 8010BE0C 84440018 */  lh         $a0, 0x18($v0)
/* 129F00 8010BE10 8C42001C */  lw         $v0, 0x1C($v0)
/* 129F04 8010BE14 0040F809 */  jalr       $v0
/* 129F08 8010BE18 00642021 */   addu      $a0, $v1, $a0
/* 129F0C 8010BE1C 8E03006C */  lw         $v1, 0x6C($s0)
/* 129F10 8010BE20 8C620024 */  lw         $v0, 0x24($v1)
/* 129F14 8010BE24 8E05000C */  lw         $a1, 0xC($s0)
/* 129F18 8010BE28 84440040 */  lh         $a0, 0x40($v0)
/* 129F1C 8010BE2C 8C420044 */  lw         $v0, 0x44($v0)
/* 129F20 8010BE30 0040F809 */  jalr       $v0
/* 129F24 8010BE34 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8010BE38:
/* 129F28 8010BE38 8FBF0024 */  lw         $ra, 0x24($sp)
/* 129F2C 8010BE3C 8FB00020 */  lw         $s0, 0x20($sp)
/* 129F30 8010BE40 24020001 */  addiu      $v0, $zero, 0x1
/* 129F34 8010BE44 03E00008 */  jr         $ra
/* 129F38 8010BE48 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010BE4C
/* 129F3C 8010BE4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 129F40 8010BE50 AFB00010 */  sw         $s0, 0x10($sp)
/* 129F44 8010BE54 00808021 */  addu       $s0, $a0, $zero
/* 129F48 8010BE58 AFB10014 */  sw         $s1, 0x14($sp)
/* 129F4C 8010BE5C AFBF0018 */  sw         $ra, 0x18($sp)
/* 129F50 8010BE60 0C042EC7 */  jal        func_menu_8010BB1C
/* 129F54 8010BE64 00A08821 */   addu      $s1, $a1, $zero
/* 129F58 8010BE68 02002021 */  addu       $a0, $s0, $zero
/* 129F5C 8010BE6C 0C042F0D */  jal        func_menu_8010BC34
/* 129F60 8010BE70 02202821 */   addu      $a1, $s1, $zero
/* 129F64 8010BE74 02002021 */  addu       $a0, $s0, $zero
/* 129F68 8010BE78 0C042EEA */  jal        func_menu_8010BBA8
/* 129F6C 8010BE7C 02202821 */   addu      $a1, $s1, $zero
/* 129F70 8010BE80 8FBF0018 */  lw         $ra, 0x18($sp)
/* 129F74 8010BE84 8FB10014 */  lw         $s1, 0x14($sp)
/* 129F78 8010BE88 8FB00010 */  lw         $s0, 0x10($sp)
/* 129F7C 8010BE8C 24020001 */  addiu      $v0, $zero, 0x1
/* 129F80 8010BE90 03E00008 */  jr         $ra
/* 129F84 8010BE94 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010BE98
/* 129F88 8010BE98 8C82006C */  lw         $v0, 0x6C($a0)
/* 129F8C 8010BE9C 03E00008 */  jr         $ra
/* 129F90 8010BEA0 00000000 */   nop

glabel func_menu_8010BEA4
/* 129F94 8010BEA4 8C820068 */  lw         $v0, 0x68($a0)
/* 129F98 8010BEA8 03E00008 */  jr         $ra
/* 129F9C 8010BEAC 00000000 */   nop

glabel func_menu_8010BEB0
/* 129FA0 8010BEB0 8C820064 */  lw         $v0, 0x64($a0)
/* 129FA4 8010BEB4 03E00008 */  jr         $ra
/* 129FA8 8010BEB8 00000000 */   nop
