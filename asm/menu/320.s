.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EF590
/* 10D680 800EF590 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D684 800EF594 AFB00010 */  sw         $s0, 0x10($sp)
/* 10D688 800EF598 00808021 */  addu       $s0, $a0, $zero
/* 10D68C 800EF59C 3C02800D */  lui        $v0, %hi(D_menu_800CBEA0)
/* 10D690 800EF5A0 2442BEA0 */  addiu      $v0, $v0, %lo(D_menu_800CBEA0)
/* 10D694 800EF5A4 26040008 */  addiu      $a0, $s0, 0x8
/* 10D698 800EF5A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10D69C 800EF5AC 0C040158 */  jal        func_menu_80100560
/* 10D6A0 800EF5B0 AE020000 */   sw        $v0, 0x0($s0)
/* 10D6A4 800EF5B4 0C03B7F8 */  jal        func_menu_800EDFE0
/* 10D6A8 800EF5B8 26040014 */   addiu     $a0, $s0, 0x14
/* 10D6AC 800EF5BC 0C03D1D0 */  jal        func_menu_800F4740
/* 10D6B0 800EF5C0 260402A8 */   addiu     $a0, $s0, 0x2A8
/* 10D6B4 800EF5C4 0C0371D1 */  jal        func_menu_800DC744
/* 10D6B8 800EF5C8 26042CB0 */   addiu     $a0, $s0, 0x2CB0
/* 10D6BC 800EF5CC 0C037D87 */  jal        func_menu_800DF61C
/* 10D6C0 800EF5D0 26042CC4 */   addiu     $a0, $s0, 0x2CC4
/* 10D6C4 800EF5D4 0C03619F */  jal        func_menu_800D867C
/* 10D6C8 800EF5D8 26042CFC */   addiu     $a0, $s0, 0x2CFC
/* 10D6CC 800EF5DC 0C035347 */  jal        func_menu_800D4D1C
/* 10D6D0 800EF5E0 26043C88 */   addiu     $a0, $s0, 0x3C88
/* 10D6D4 800EF5E4 0C011268 */  jal        func_800449A0
/* 10D6D8 800EF5E8 26043CC0 */   addiu     $a0, $s0, 0x3CC0
/* 10D6DC 800EF5EC 0C010A64 */  jal        func_80042990
/* 10D6E0 800EF5F0 26043D40 */   addiu     $a0, $s0, 0x3D40
/* 10D6E4 800EF5F4 0C010F84 */  jal        func_80043E10
/* 10D6E8 800EF5F8 26043D7C */   addiu     $a0, $s0, 0x3D7C
/* 10D6EC 800EF5FC 0C03B6E4 */  jal        func_menu_800EDB90
/* 10D6F0 800EF600 26043DB0 */   addiu     $a0, $s0, 0x3DB0
/* 10D6F4 800EF604 0C03CCBC */  jal        func_menu_800F32F0
/* 10D6F8 800EF608 26043DC4 */   addiu     $a0, $s0, 0x3DC4
/* 10D6FC 800EF60C 0C0103B8 */  jal        func_80040EE0
/* 10D700 800EF610 26043DD8 */   addiu     $a0, $s0, 0x3DD8
/* 10D704 800EF614 0C0358AC */  jal        func_menu_800D62B0
/* 10D708 800EF618 26043DE0 */   addiu     $a0, $s0, 0x3DE0
/* 10D70C 800EF61C 0C035594 */  jal        func_menu_800D5650
/* 10D710 800EF620 26044544 */   addiu     $a0, $s0, 0x4544
/* 10D714 800EF624 0C0372FC */  jal        func_menu_800DCBF0
/* 10D718 800EF628 260445A0 */   addiu     $a0, $s0, 0x45A0
/* 10D71C 800EF62C 0C03B970 */  jal        func_menu_800EE5C0
/* 10D720 800EF630 26044634 */   addiu     $a0, $s0, 0x4634
/* 10D724 800EF634 0C045374 */  jal        func_menu_80114DD0
/* 10D728 800EF638 26044638 */   addiu     $a0, $s0, 0x4638
/* 10D72C 800EF63C 0C045504 */  jal        func_menu_80115410
/* 10D730 800EF640 260446DC */   addiu     $a0, $s0, 0x46DC
/* 10D734 800EF644 0C002F50 */  jal        func_8000BD40
/* 10D738 800EF648 2604474C */   addiu     $a0, $s0, 0x474C
/* 10D73C 800EF64C 0C002F50 */  jal        func_8000BD40
/* 10D740 800EF650 26044760 */   addiu     $a0, $s0, 0x4760
/* 10D744 800EF654 0C002F50 */  jal        func_8000BD40
/* 10D748 800EF658 26044774 */   addiu     $a0, $s0, 0x4774
/* 10D74C 800EF65C 0C002F50 */  jal        func_8000BD40
/* 10D750 800EF660 26044788 */   addiu     $a0, $s0, 0x4788
/* 10D754 800EF664 0C0016DC */  jal        func_80005B70
/* 10D758 800EF668 260447A0 */   addiu     $a0, $s0, 0x47A0
/* 10D75C 800EF66C 0C0016DC */  jal        func_80005B70
/* 10D760 800EF670 260447AC */   addiu     $a0, $s0, 0x47AC
/* 10D764 800EF674 0C0478CC */  jal        func_menu_8011E330
/* 10D768 800EF678 260447B8 */   addiu     $a0, $s0, 0x47B8
/* 10D76C 800EF67C 0C0405A4 */  jal        func_menu_80101690
/* 10D770 800EF680 260447C4 */   addiu     $a0, $s0, 0x47C4
/* 10D774 800EF684 0C03BE0D */  jal        func_menu_800EF834
/* 10D778 800EF688 02002021 */   addu      $a0, $s0, $zero
/* 10D77C 800EF68C 02001021 */  addu       $v0, $s0, $zero
/* 10D780 800EF690 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10D784 800EF694 8FB00010 */  lw         $s0, 0x10($sp)
/* 10D788 800EF698 03E00008 */  jr         $ra
/* 10D78C 800EF69C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF6A0
/* 10D790 800EF6A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10D794 800EF6A4 AFB10014 */  sw         $s1, 0x14($sp)
/* 10D798 800EF6A8 00808821 */  addu       $s1, $a0, $zero
/* 10D79C 800EF6AC AFB00010 */  sw         $s0, 0x10($sp)
/* 10D7A0 800EF6B0 00A08021 */  addu       $s0, $a1, $zero
/* 10D7A4 800EF6B4 3C02800D */  lui        $v0, %hi(D_menu_800CBEA0)
/* 10D7A8 800EF6B8 2442BEA0 */  addiu      $v0, $v0, %lo(D_menu_800CBEA0)
/* 10D7AC 800EF6BC AFBF0018 */  sw         $ra, 0x18($sp)
/* 10D7B0 800EF6C0 0C03BE93 */  jal        func_menu_800EFA4C
/* 10D7B4 800EF6C4 AE220000 */   sw        $v0, 0x0($s1)
/* 10D7B8 800EF6C8 262447C4 */  addiu      $a0, $s1, 0x47C4
/* 10D7BC 800EF6CC 0C0405B3 */  jal        func_menu_801016CC
/* 10D7C0 800EF6D0 24050002 */   addiu     $a1, $zero, 0x2
/* 10D7C4 800EF6D4 262447B8 */  addiu      $a0, $s1, 0x47B8
/* 10D7C8 800EF6D8 0C0478D6 */  jal        func_menu_8011E358
/* 10D7CC 800EF6DC 24050002 */   addiu     $a1, $zero, 0x2
/* 10D7D0 800EF6E0 262447AC */  addiu      $a0, $s1, 0x47AC
/* 10D7D4 800EF6E4 0C0016E2 */  jal        func_80005B88
/* 10D7D8 800EF6E8 24050002 */   addiu     $a1, $zero, 0x2
/* 10D7DC 800EF6EC 262447A0 */  addiu      $a0, $s1, 0x47A0
/* 10D7E0 800EF6F0 0C0016E2 */  jal        func_80005B88
/* 10D7E4 800EF6F4 24050002 */   addiu     $a1, $zero, 0x2
/* 10D7E8 800EF6F8 26244788 */  addiu      $a0, $s1, 0x4788
/* 10D7EC 800EF6FC 0C002F59 */  jal        func_8000BD64
/* 10D7F0 800EF700 24050002 */   addiu     $a1, $zero, 0x2
/* 10D7F4 800EF704 26244774 */  addiu      $a0, $s1, 0x4774
/* 10D7F8 800EF708 0C002F59 */  jal        func_8000BD64
/* 10D7FC 800EF70C 24050002 */   addiu     $a1, $zero, 0x2
/* 10D800 800EF710 26244760 */  addiu      $a0, $s1, 0x4760
/* 10D804 800EF714 0C002F59 */  jal        func_8000BD64
/* 10D808 800EF718 24050002 */   addiu     $a1, $zero, 0x2
/* 10D80C 800EF71C 2624474C */  addiu      $a0, $s1, 0x474C
/* 10D810 800EF720 0C002F59 */  jal        func_8000BD64
/* 10D814 800EF724 24050002 */   addiu     $a1, $zero, 0x2
/* 10D818 800EF728 262446DC */  addiu      $a0, $s1, 0x46DC
/* 10D81C 800EF72C 0C045514 */  jal        func_menu_80115450
/* 10D820 800EF730 24050002 */   addiu     $a1, $zero, 0x2
/* 10D824 800EF734 26244638 */  addiu      $a0, $s1, 0x4638
/* 10D828 800EF738 0C045380 */  jal        func_menu_80114E00
/* 10D82C 800EF73C 24050002 */   addiu     $a1, $zero, 0x2
/* 10D830 800EF740 26244634 */  addiu      $a0, $s1, 0x4634
/* 10D834 800EF744 0C03B972 */  jal        func_menu_800EE5C8
/* 10D838 800EF748 24050002 */   addiu     $a1, $zero, 0x2
/* 10D83C 800EF74C 262445A0 */  addiu      $a0, $s1, 0x45A0
/* 10D840 800EF750 0C037306 */  jal        func_menu_800DCC18
/* 10D844 800EF754 24050002 */   addiu     $a1, $zero, 0x2
/* 10D848 800EF758 26244544 */  addiu      $a0, $s1, 0x4544
/* 10D84C 800EF75C 0C0355A0 */  jal        func_menu_800D5680
/* 10D850 800EF760 24050002 */   addiu     $a1, $zero, 0x2
/* 10D854 800EF764 26243DE0 */  addiu      $a0, $s1, 0x3DE0
/* 10D858 800EF768 0C0358B6 */  jal        func_menu_800D62D8
/* 10D85C 800EF76C 24050002 */   addiu     $a1, $zero, 0x2
/* 10D860 800EF770 26243DD8 */  addiu      $a0, $s1, 0x3DD8
/* 10D864 800EF774 0C0103BC */  jal        func_80040EF0
/* 10D868 800EF778 24050002 */   addiu     $a1, $zero, 0x2
/* 10D86C 800EF77C 26243DC4 */  addiu      $a0, $s1, 0x3DC4
/* 10D870 800EF780 0C03CCCB */  jal        func_menu_800F332C
/* 10D874 800EF784 24050002 */   addiu     $a1, $zero, 0x2
/* 10D878 800EF788 26243DB0 */  addiu      $a0, $s1, 0x3DB0
/* 10D87C 800EF78C 0C03B6F3 */  jal        func_menu_800EDBCC
/* 10D880 800EF790 24050002 */   addiu     $a1, $zero, 0x2
/* 10D884 800EF794 26243D7C */  addiu      $a0, $s1, 0x3D7C
/* 10D888 800EF798 0C010F93 */  jal        func_80043E4C
/* 10D88C 800EF79C 24050002 */   addiu     $a1, $zero, 0x2
/* 10D890 800EF7A0 26243D40 */  addiu      $a0, $s1, 0x3D40
/* 10D894 800EF7A4 0C010A73 */  jal        func_800429CC
/* 10D898 800EF7A8 24050002 */   addiu     $a1, $zero, 0x2
/* 10D89C 800EF7AC 26243CC0 */  addiu      $a0, $s1, 0x3CC0
/* 10D8A0 800EF7B0 0C01127B */  jal        func_800449EC
/* 10D8A4 800EF7B4 24050002 */   addiu     $a1, $zero, 0x2
/* 10D8A8 800EF7B8 26243C88 */  addiu      $a0, $s1, 0x3C88
/* 10D8AC 800EF7BC 0C035354 */  jal        func_menu_800D4D50
/* 10D8B0 800EF7C0 24050002 */   addiu     $a1, $zero, 0x2
/* 10D8B4 800EF7C4 26242CFC */  addiu      $a0, $s1, 0x2CFC
/* 10D8B8 800EF7C8 0C0361C1 */  jal        func_menu_800D8704
/* 10D8BC 800EF7CC 24050002 */   addiu     $a1, $zero, 0x2
/* 10D8C0 800EF7D0 26242CC4 */  addiu      $a0, $s1, 0x2CC4
/* 10D8C4 800EF7D4 0C037D91 */  jal        func_menu_800DF644
/* 10D8C8 800EF7D8 24050002 */   addiu     $a1, $zero, 0x2
/* 10D8CC 800EF7DC 26242CB0 */  addiu      $a0, $s1, 0x2CB0
/* 10D8D0 800EF7E0 0C0371D8 */  jal        func_menu_800DC760
/* 10D8D4 800EF7E4 24050002 */   addiu     $a1, $zero, 0x2
/* 10D8D8 800EF7E8 262402A8 */  addiu      $a0, $s1, 0x2A8
/* 10D8DC 800EF7EC 0C03D1F7 */  jal        func_menu_800F47DC
/* 10D8E0 800EF7F0 24050002 */   addiu     $a1, $zero, 0x2
/* 10D8E4 800EF7F4 26240014 */  addiu      $a0, $s1, 0x14
/* 10D8E8 800EF7F8 0C03B813 */  jal        func_menu_800EE04C
/* 10D8EC 800EF7FC 24050002 */   addiu     $a1, $zero, 0x2
/* 10D8F0 800EF800 26240008 */  addiu      $a0, $s1, 0x8
/* 10D8F4 800EF804 0C040162 */  jal        func_menu_80100588
/* 10D8F8 800EF808 24050002 */   addiu     $a1, $zero, 0x2
/* 10D8FC 800EF80C 32100001 */  andi       $s0, $s0, 0x1
/* 10D900 800EF810 12000003 */  beqz       $s0, .Lmenu_800EF820
/* 10D904 800EF814 00000000 */   nop
/* 10D908 800EF818 0C01FB5C */  jal        func_8007ED70
/* 10D90C 800EF81C 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800EF820:
/* 10D910 800EF820 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10D914 800EF824 8FB10014 */  lw         $s1, 0x14($sp)
/* 10D918 800EF828 8FB00010 */  lw         $s0, 0x10($sp)
/* 10D91C 800EF82C 03E00008 */  jr         $ra
/* 10D920 800EF830 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EF834
/* 10D924 800EF834 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D928 800EF838 248247A0 */  addiu      $v0, $a0, 0x47A0
/* 10D92C 800EF83C AFBF0010 */  sw         $ra, 0x10($sp)
/* 10D930 800EF840 AC800004 */  sw         $zero, 0x4($a0)
/* 10D934 800EF844 AC802CA4 */  sw         $zero, 0x2CA4($a0)
/* 10D938 800EF848 AC804618 */  sw         $zero, 0x4618($a0)
/* 10D93C 800EF84C AC804620 */  sw         $zero, 0x4620($a0)
/* 10D940 800EF850 AC80473C */  sw         $zero, 0x473C($a0)
/* 10D944 800EF854 AC804740 */  sw         $zero, 0x4740($a0)
/* 10D948 800EF858 AC80479C */  sw         $zero, 0x479C($a0)
/* 10D94C 800EF85C AC804844 */  sw         $zero, 0x4844($a0)
/* 10D950 800EF860 AC804744 */  sw         $zero, 0x4744($a0)
/* 10D954 800EF864 AC804748 */  sw         $zero, 0x4748($a0)
/* 10D958 800EF868 AC80484C */  sw         $zero, 0x484C($a0)
/* 10D95C 800EF86C AC8047A0 */  sw         $zero, 0x47A0($a0)
/* 10D960 800EF870 A4400008 */  sh         $zero, 0x8($v0)
/* 10D964 800EF874 A4400006 */  sh         $zero, 0x6($v0)
/* 10D968 800EF878 A4400004 */  sh         $zero, 0x4($v0)
/* 10D96C 800EF87C 248247AC */  addiu      $v0, $a0, 0x47AC
/* 10D970 800EF880 AC8047AC */  sw         $zero, 0x47AC($a0)
/* 10D974 800EF884 248447C4 */  addiu      $a0, $a0, 0x47C4
/* 10D978 800EF888 A4400008 */  sh         $zero, 0x8($v0)
/* 10D97C 800EF88C A4400006 */  sh         $zero, 0x6($v0)
/* 10D980 800EF890 0C0405CC */  jal        func_menu_80101730
/* 10D984 800EF894 A4400004 */   sh        $zero, 0x4($v0)
/* 10D988 800EF898 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10D98C 800EF89C 03E00008 */  jr         $ra
/* 10D990 800EF8A0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EF8A4
/* 10D994 800EF8A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10D998 800EF8A8 AFB10014 */  sw         $s1, 0x14($sp)
/* 10D99C 800EF8AC 00808821 */  addu       $s1, $a0, $zero
/* 10D9A0 800EF8B0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 10D9A4 800EF8B4 AFB20018 */  sw         $s2, 0x18($sp)
/* 10D9A8 800EF8B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 10D9AC 800EF8BC AE250004 */  sw         $a1, 0x4($s1)
/* 10D9B0 800EF8C0 8CA20004 */  lw         $v0, 0x4($a1)
/* 10D9B4 800EF8C4 8C42006C */  lw         $v0, 0x6C($v0)
/* 10D9B8 800EF8C8 00A01821 */  addu       $v1, $a1, $zero
/* 10D9BC 800EF8CC AE22473C */  sw         $v0, 0x473C($s1)
/* 10D9C0 800EF8D0 8C620004 */  lw         $v0, 0x4($v1)
/* 10D9C4 800EF8D4 8C420078 */  lw         $v0, 0x78($v0)
/* 10D9C8 800EF8D8 AE224740 */  sw         $v0, 0x4740($s1)
/* 10D9CC 800EF8DC 3C02800D */  lui        $v0, %hi(D_menu_800CBD70)
/* 10D9D0 800EF8E0 2445BD70 */  addiu      $a1, $v0, %lo(D_menu_800CBD70)
/* 10D9D4 800EF8E4 10A00008 */  beqz       $a1, .Lmenu_800EF908
/* 10D9D8 800EF8E8 00009021 */   addu      $s2, $zero, $zero
/* 10D9DC 800EF8EC 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 10D9E0 800EF8F0 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 10D9E4 800EF8F4 02002021 */  addu       $a0, $s0, $zero
/* 10D9E8 800EF8F8 0C000708 */  jal        func_80001C20
/* 10D9EC 800EF8FC 24060100 */   addiu     $a2, $zero, 0x100
/* 10D9F0 800EF900 0803BE44 */  j          .Lmenu_800EF910
/* 10D9F4 800EF904 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800EF908:
/* 10D9F8 800EF908 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 10D9FC 800EF90C A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800EF910:
/* 10DA00 800EF910 0C03C00B */  jal        func_menu_800F002C
/* 10DA04 800EF914 02202021 */   addu      $a0, $s1, $zero
/* 10DA08 800EF918 0C03C05A */  jal        func_menu_800F0168
/* 10DA0C 800EF91C 02202021 */   addu      $a0, $s1, $zero
/* 10DA10 800EF920 02202021 */  addu       $a0, $s1, $zero
/* 10DA14 800EF924 9225264A */  lbu        $a1, 0x264A($s1)
/* 10DA18 800EF928 0C03C11F */  jal        func_menu_800F047C
/* 10DA1C 800EF92C 24060001 */   addiu     $a2, $zero, 0x1
/* 10DA20 800EF930 0C03C0CD */  jal        func_menu_800F0334
/* 10DA24 800EF934 02202021 */   addu      $a0, $s1, $zero
/* 10DA28 800EF938 0C03C71E */  jal        func_menu_800F1C78
/* 10DA2C 800EF93C 02202021 */   addu      $a0, $s1, $zero
/* 10DA30 800EF940 0C03BEF0 */  jal        func_menu_800EFBC0
/* 10DA34 800EF944 02202021 */   addu      $a0, $s1, $zero
/* 10DA38 800EF948 0C03BF4B */  jal        func_menu_800EFD2C
/* 10DA3C 800EF94C 02202021 */   addu      $a0, $s1, $zero
/* 10DA40 800EF950 0C03BF93 */  jal        func_menu_800EFE4C
/* 10DA44 800EF954 02202021 */   addu      $a0, $s1, $zero
/* 10DA48 800EF958 0C03BEC8 */  jal        func_menu_800EFB20
/* 10DA4C 800EF95C 02202021 */   addu      $a0, $s1, $zero
/* 10DA50 800EF960 0C03C782 */  jal        func_menu_800F1E08
/* 10DA54 800EF964 02202021 */   addu      $a0, $s1, $zero
/* 10DA58 800EF968 54400001 */  bnel       $v0, $zero, .Lmenu_800EF970
/* 10DA5C 800EF96C 24120001 */   addiu     $s2, $zero, 0x1
.Lmenu_800EF970:
/* 10DA60 800EF970 0C03C806 */  jal        func_menu_800F2018
/* 10DA64 800EF974 02202021 */   addu      $a0, $s1, $zero
/* 10DA68 800EF978 54400001 */  bnel       $v0, $zero, .Lmenu_800EF980
/* 10DA6C 800EF97C 24120001 */   addiu     $s2, $zero, 0x1
.Lmenu_800EF980:
/* 10DA70 800EF980 24050007 */  addiu      $a1, $zero, 0x7
/* 10DA74 800EF984 8E234740 */  lw         $v1, 0x4740($s1)
/* 10DA78 800EF988 3C068012 */  lui        $a2, %hi(D_menu_80126C0C)
/* 10DA7C 800EF98C 8C62012C */  lw         $v0, 0x12C($v1)
/* 10DA80 800EF990 24C66C0C */  addiu      $a2, $a2, %lo(D_menu_80126C0C)
/* 10DA84 800EF994 84440070 */  lh         $a0, 0x70($v0)
/* 10DA88 800EF998 8C420074 */  lw         $v0, 0x74($v0)
/* 10DA8C 800EF99C 0040F809 */  jalr       $v0
/* 10DA90 800EF9A0 00642021 */   addu      $a0, $v1, $a0
/* 10DA94 800EF9A4 26300008 */  addiu      $s0, $s1, 0x8
/* 10DA98 800EF9A8 02002021 */  addu       $a0, $s0, $zero
/* 10DA9C 800EF9AC 0C040177 */  jal        func_menu_801005DC
/* 10DAA0 800EF9B0 2405000A */   addiu     $a1, $zero, 0xA
/* 10DAA4 800EF9B4 8E220004 */  lw         $v0, 0x4($s1)
/* 10DAA8 800EF9B8 94450020 */  lhu        $a1, 0x20($v0)
/* 10DAAC 800EF9BC 0C0401A6 */  jal        func_menu_80100698
/* 10DAB0 800EF9C0 02002021 */   addu      $a0, $s0, $zero
/* 10DAB4 800EF9C4 12400004 */  beqz       $s2, .Lmenu_800EF9D8
/* 10DAB8 800EF9C8 00000000 */   nop
/* 10DABC 800EF9CC 8E224618 */  lw         $v0, 0x4618($s1)
/* 10DAC0 800EF9D0 34420800 */  ori        $v0, $v0, 0x800
/* 10DAC4 800EF9D4 AE224618 */  sw         $v0, 0x4618($s1)
.Lmenu_800EF9D8:
/* 10DAC8 800EF9D8 8E220004 */  lw         $v0, 0x4($s1)
/* 10DACC 800EF9DC 94420022 */  lhu        $v0, 0x22($v0)
/* 10DAD0 800EF9E0 30420300 */  andi       $v0, $v0, 0x300
/* 10DAD4 800EF9E4 14400004 */  bnez       $v0, .Lmenu_800EF9F8
/* 10DAD8 800EF9E8 00000000 */   nop
/* 10DADC 800EF9EC 8E224618 */  lw         $v0, 0x4618($s1)
/* 10DAE0 800EF9F0 34420600 */  ori        $v0, $v0, 0x600
/* 10DAE4 800EF9F4 AE224618 */  sw         $v0, 0x4618($s1)
.Lmenu_800EF9F8:
/* 10DAE8 800EF9F8 0C03C170 */  jal        func_menu_800F05C0
/* 10DAEC 800EF9FC 02202021 */   addu      $a0, $s1, $zero
/* 10DAF0 800EFA00 02202021 */  addu       $a0, $s1, $zero
/* 10DAF4 800EFA04 0C03C1C1 */  jal        func_menu_800F0704
/* 10DAF8 800EFA08 3045FFFF */   andi      $a1, $v0, 0xFFFF
/* 10DAFC 800EFA0C 26244638 */  addiu      $a0, $s1, 0x4638
/* 10DB00 800EFA10 26254814 */  addiu      $a1, $s1, 0x4814
/* 10DB04 800EFA14 24060002 */  addiu      $a2, $zero, 0x2
/* 10DB08 800EFA18 0C0453C6 */  jal        func_menu_80114F18
/* 10DB0C 800EFA1C 262746DC */   addiu     $a3, $s1, 0x46DC
/* 10DB10 800EFA20 8E240004 */  lw         $a0, 0x4($s1)
/* 10DB14 800EFA24 94830022 */  lhu        $v1, 0x22($a0)
/* 10DB18 800EFA28 3063FCFF */  andi       $v1, $v1, 0xFCFF
/* 10DB1C 800EFA2C A4830022 */  sh         $v1, 0x22($a0)
/* 10DB20 800EFA30 8FBF001C */  lw         $ra, 0x1C($sp)
/* 10DB24 800EFA34 8FB20018 */  lw         $s2, 0x18($sp)
/* 10DB28 800EFA38 8FB10014 */  lw         $s1, 0x14($sp)
/* 10DB2C 800EFA3C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10DB30 800EFA40 24020001 */  addiu      $v0, $zero, 0x1
/* 10DB34 800EFA44 03E00008 */  jr         $ra
/* 10DB38 800EFA48 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EFA4C
/* 10DB3C 800EFA4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10DB40 800EFA50 AFB00010 */  sw         $s0, 0x10($sp)
/* 10DB44 800EFA54 00808021 */  addu       $s0, $a0, $zero
/* 10DB48 800EFA58 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 10DB4C 800EFA5C AFBF0014 */  sw         $ra, 0x14($sp)
/* 10DB50 800EFA60 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
/* 10DB54 800EFA64 8E020004 */  lw         $v0, 0x4($s0)
/* 10DB58 800EFA68 10400028 */  beqz       $v0, .Lmenu_800EFB0C
/* 10DB5C 800EFA6C 00000000 */   nop
/* 10DB60 800EFA70 8E034844 */  lw         $v1, 0x4844($s0)
/* 10DB64 800EFA74 1060000E */  beqz       $v1, .Lmenu_800EFAB0
/* 10DB68 800EFA78 00000000 */   nop
/* 10DB6C 800EFA7C 8C620000 */  lw         $v0, 0x0($v1)
/* 10DB70 800EFA80 844400F0 */  lh         $a0, 0xF0($v0)
/* 10DB74 800EFA84 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 10DB78 800EFA88 0040F809 */  jalr       $v0
/* 10DB7C 800EFA8C 00642021 */   addu      $a0, $v1, $a0
/* 10DB80 800EFA90 8E034844 */  lw         $v1, 0x4844($s0)
/* 10DB84 800EFA94 10600006 */  beqz       $v1, .Lmenu_800EFAB0
/* 10DB88 800EFA98 24050003 */   addiu     $a1, $zero, 0x3
/* 10DB8C 800EFA9C 8C620000 */  lw         $v0, 0x0($v1)
/* 10DB90 800EFAA0 844400D8 */  lh         $a0, 0xD8($v0)
/* 10DB94 800EFAA4 8C4200DC */  lw         $v0, 0xDC($v0)
/* 10DB98 800EFAA8 0040F809 */  jalr       $v0
/* 10DB9C 800EFAAC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800EFAB0:
/* 10DBA0 800EFAB0 0C045580 */  jal        func_menu_80115600
/* 10DBA4 800EFAB4 260446DC */   addiu     $a0, $s0, 0x46DC
/* 10DBA8 800EFAB8 0C04539B */  jal        func_menu_80114E6C
/* 10DBAC 800EFABC 26044638 */   addiu     $a0, $s0, 0x4638
/* 10DBB0 800EFAC0 0C03C0FF */  jal        func_menu_800F03FC
/* 10DBB4 800EFAC4 02002021 */   addu      $a0, $s0, $zero
/* 10DBB8 800EFAC8 0C03BF3B */  jal        func_menu_800EFCEC
/* 10DBBC 800EFACC 02002021 */   addu      $a0, $s0, $zero
/* 10DBC0 800EFAD0 0C03BF8C */  jal        func_menu_800EFE30
/* 10DBC4 800EFAD4 02002021 */   addu      $a0, $s0, $zero
/* 10DBC8 800EFAD8 0C03BFD0 */  jal        func_menu_800EFF40
/* 10DBCC 800EFADC 02002021 */   addu      $a0, $s0, $zero
/* 10DBD0 800EFAE0 0C03C032 */  jal        func_menu_800F00C8
/* 10DBD4 800EFAE4 02002021 */   addu      $a0, $s0, $zero
/* 10DBD8 800EFAE8 8E034740 */  lw         $v1, 0x4740($s0)
/* 10DBDC 800EFAEC 8C62012C */  lw         $v0, 0x12C($v1)
/* 10DBE0 800EFAF0 84440078 */  lh         $a0, 0x78($v0)
/* 10DBE4 800EFAF4 8C42007C */  lw         $v0, 0x7C($v0)
/* 10DBE8 800EFAF8 0040F809 */  jalr       $v0
/* 10DBEC 800EFAFC 00642021 */   addu      $a0, $v1, $a0
/* 10DBF0 800EFB00 0C03BE0D */  jal        func_menu_800EF834
/* 10DBF4 800EFB04 02002021 */   addu      $a0, $s0, $zero
/* 10DBF8 800EFB08 8E020004 */  lw         $v0, 0x4($s0)
.Lmenu_800EFB0C:
/* 10DBFC 800EFB0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10DC00 800EFB10 8FB00010 */  lw         $s0, 0x10($sp)
/* 10DC04 800EFB14 2C420001 */  sltiu      $v0, $v0, 0x1
/* 10DC08 800EFB18 03E00008 */  jr         $ra
/* 10DC0C 800EFB1C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EFB20
/* 10DC10 800EFB20 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 10DC14 800EFB24 AFB00030 */  sw         $s0, 0x30($sp)
/* 10DC18 800EFB28 00808021 */  addu       $s0, $a0, $zero
/* 10DC1C 800EFB2C 2604474C */  addiu      $a0, $s0, 0x474C
/* 10DC20 800EFB30 AFB10034 */  sw         $s1, 0x34($sp)
/* 10DC24 800EFB34 261147A0 */  addiu      $s1, $s0, 0x47A0
/* 10DC28 800EFB38 02202821 */  addu       $a1, $s1, $zero
/* 10DC2C 800EFB3C AFBF0038 */  sw         $ra, 0x38($sp)
/* 10DC30 800EFB40 0C003053 */  jal        func_8000C14C
/* 10DC34 800EFB44 2406003F */   addiu     $a2, $zero, 0x3F
/* 10DC38 800EFB48 02202021 */  addu       $a0, $s1, $zero
/* 10DC3C 800EFB4C 27B10028 */  addiu      $s1, $sp, 0x28
/* 10DC40 800EFB50 0C001867 */  jal        func_8000619C
/* 10DC44 800EFB54 02202821 */   addu      $a1, $s1, $zero
/* 10DC48 800EFB58 8E02473C */  lw         $v0, 0x473C($s0)
/* 10DC4C 800EFB5C AFA20010 */  sw         $v0, 0x10($sp)
/* 10DC50 800EFB60 8E024740 */  lw         $v0, 0x4740($s0)
/* 10DC54 800EFB64 AFA20014 */  sw         $v0, 0x14($sp)
/* 10DC58 800EFB68 8E044740 */  lw         $a0, 0x4740($s0)
/* 10DC5C 800EFB6C 0C016EC5 */  jal        func_8005BB14
/* 10DC60 800EFB70 02202821 */   addu      $a1, $s1, $zero
/* 10DC64 800EFB74 AFA20018 */  sw         $v0, 0x18($sp)
/* 10DC68 800EFB78 8E020004 */  lw         $v0, 0x4($s0)
/* 10DC6C 800EFB7C 8C430004 */  lw         $v1, 0x4($v0)
/* 10DC70 800EFB80 8C62009C */  lw         $v0, 0x9C($v1)
/* 10DC74 800EFB84 84440070 */  lh         $a0, 0x70($v0)
/* 10DC78 800EFB88 8C420074 */  lw         $v0, 0x74($v0)
/* 10DC7C 800EFB8C 0040F809 */  jalr       $v0
/* 10DC80 800EFB90 00642021 */   addu      $a0, $v1, $a0
/* 10DC84 800EFB94 260446DC */  addiu      $a0, $s0, 0x46DC
/* 10DC88 800EFB98 27A50010 */  addiu      $a1, $sp, 0x10
/* 10DC8C 800EFB9C 2610021C */  addiu      $s0, $s0, 0x21C
/* 10DC90 800EFBA0 AFA2001C */  sw         $v0, 0x1C($sp)
/* 10DC94 800EFBA4 0C045567 */  jal        func_menu_8011559C
/* 10DC98 800EFBA8 AFB00020 */   sw        $s0, 0x20($sp)
/* 10DC9C 800EFBAC 8FBF0038 */  lw         $ra, 0x38($sp)
/* 10DCA0 800EFBB0 8FB10034 */  lw         $s1, 0x34($sp)
/* 10DCA4 800EFBB4 8FB00030 */  lw         $s0, 0x30($sp)
/* 10DCA8 800EFBB8 03E00008 */  jr         $ra
/* 10DCAC 800EFBBC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800EFBC0
/* 10DCB0 800EFBC0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 10DCB4 800EFBC4 AFB10044 */  sw         $s1, 0x44($sp)
/* 10DCB8 800EFBC8 00808821 */  addu       $s1, $a0, $zero
/* 10DCBC 800EFBCC AFBF0048 */  sw         $ra, 0x48($sp)
/* 10DCC0 800EFBD0 AFB00040 */  sw         $s0, 0x40($sp)
/* 10DCC4 800EFBD4 8E23473C */  lw         $v1, 0x473C($s1)
/* 10DCC8 800EFBD8 8C620000 */  lw         $v0, 0x0($v1)
/* 10DCCC 800EFBDC 84440048 */  lh         $a0, 0x48($v0)
/* 10DCD0 800EFBE0 8C42004C */  lw         $v0, 0x4C($v0)
/* 10DCD4 800EFBE4 0040F809 */  jalr       $v0
/* 10DCD8 800EFBE8 00642021 */   addu      $a0, $v1, $a0
/* 10DCDC 800EFBEC 00408021 */  addu       $s0, $v0, $zero
/* 10DCE0 800EFBF0 8E230004 */  lw         $v1, 0x4($s1)
/* 10DCE4 800EFBF4 8E02002C */  lw         $v0, 0x2C($s0)
/* 10DCE8 800EFBF8 C4600010 */  lwc1       $f0, 0x10($v1)
/* 10DCEC 800EFBFC 34420002 */  ori        $v0, $v0, 0x2
/* 10DCF0 800EFC00 AE02002C */  sw         $v0, 0x2C($s0)
/* 10DCF4 800EFC04 E6000004 */  swc1       $f0, 0x4($s0)
/* 10DCF8 800EFC08 8E230004 */  lw         $v1, 0x4($s1)
/* 10DCFC 800EFC0C C4600014 */  lwc1       $f0, 0x14($v1)
/* 10DD00 800EFC10 34420002 */  ori        $v0, $v0, 0x2
/* 10DD04 800EFC14 AE02002C */  sw         $v0, 0x2C($s0)
/* 10DD08 800EFC18 E600000C */  swc1       $f0, 0xC($s0)
/* 10DD0C 800EFC1C 8E220004 */  lw         $v0, 0x4($s1)
/* 10DD10 800EFC20 3C01800D */  lui        $at, %hi(D_menu_800CBD7C)
/* 10DD14 800EFC24 C422BD7C */  lwc1       $f2, %lo(D_menu_800CBD7C)($at)
/* 10DD18 800EFC28 C4400018 */  lwc1       $f0, 0x18($v0)
/* 10DD1C 800EFC2C 8E02002C */  lw         $v0, 0x2C($s0)
/* 10DD20 800EFC30 3C01800D */  lui        $at, %hi(D_menu_800CBD80)
/* 10DD24 800EFC34 C424BD80 */  lwc1       $f4, %lo(D_menu_800CBD80)($at)
/* 10DD28 800EFC38 34420002 */  ori        $v0, $v0, 0x2
/* 10DD2C 800EFC3C AE02002C */  sw         $v0, 0x2C($s0)
/* 10DD30 800EFC40 E6000010 */  swc1       $f0, 0x10($s0)
/* 10DD34 800EFC44 AFA00030 */  sw         $zero, 0x30($sp)
/* 10DD38 800EFC48 AFA00034 */  sw         $zero, 0x34($sp)
/* 10DD3C 800EFC4C AFA00038 */  sw         $zero, 0x38($sp)
/* 10DD40 800EFC50 AFA00010 */  sw         $zero, 0x10($sp)
/* 10DD44 800EFC54 AFA00014 */  sw         $zero, 0x14($sp)
/* 10DD48 800EFC58 E7A20018 */  swc1       $f2, 0x18($sp)
/* 10DD4C 800EFC5C E7A40020 */  swc1       $f4, 0x20($sp)
/* 10DD50 800EFC60 AFA00024 */  sw         $zero, 0x24($sp)
/* 10DD54 800EFC64 AFA00028 */  sw         $zero, 0x28($sp)
/* 10DD58 800EFC68 8E030000 */  lw         $v1, 0x0($s0)
/* 10DD5C 800EFC6C 8C62000C */  lw         $v0, 0xC($v1)
/* 10DD60 800EFC70 27A50030 */  addiu      $a1, $sp, 0x30
/* 10DD64 800EFC74 84440090 */  lh         $a0, 0x90($v0)
/* 10DD68 800EFC78 8C420094 */  lw         $v0, 0x94($v0)
/* 10DD6C 800EFC7C 0040F809 */  jalr       $v0
/* 10DD70 800EFC80 00642021 */   addu      $a0, $v1, $a0
/* 10DD74 800EFC84 27A50020 */  addiu      $a1, $sp, 0x20
/* 10DD78 800EFC88 8E02002C */  lw         $v0, 0x2C($s0)
/* 10DD7C 800EFC8C 8E030000 */  lw         $v1, 0x0($s0)
/* 10DD80 800EFC90 34420001 */  ori        $v0, $v0, 0x1
/* 10DD84 800EFC94 AE02002C */  sw         $v0, 0x2C($s0)
/* 10DD88 800EFC98 8C62000C */  lw         $v0, 0xC($v1)
/* 10DD8C 800EFC9C 27A60010 */  addiu      $a2, $sp, 0x10
/* 10DD90 800EFCA0 84440050 */  lh         $a0, 0x50($v0)
/* 10DD94 800EFCA4 8C420054 */  lw         $v0, 0x54($v0)
/* 10DD98 800EFCA8 0040F809 */  jalr       $v0
/* 10DD9C 800EFCAC 00642021 */   addu      $a0, $v1, $a0
/* 10DDA0 800EFCB0 8E02002C */  lw         $v0, 0x2C($s0)
/* 10DDA4 800EFCB4 34420001 */  ori        $v0, $v0, 0x1
/* 10DDA8 800EFCB8 AE02002C */  sw         $v0, 0x2C($s0)
/* 10DDAC 800EFCBC 8E234740 */  lw         $v1, 0x4740($s1)
/* 10DDB0 800EFCC0 8C62012C */  lw         $v0, 0x12C($v1)
/* 10DDB4 800EFCC4 02002821 */  addu       $a1, $s0, $zero
/* 10DDB8 800EFCC8 84440048 */  lh         $a0, 0x48($v0)
/* 10DDBC 800EFCCC 8C42004C */  lw         $v0, 0x4C($v0)
/* 10DDC0 800EFCD0 0040F809 */  jalr       $v0
/* 10DDC4 800EFCD4 00642021 */   addu      $a0, $v1, $a0
/* 10DDC8 800EFCD8 8FBF0048 */  lw         $ra, 0x48($sp)
/* 10DDCC 800EFCDC 8FB10044 */  lw         $s1, 0x44($sp)
/* 10DDD0 800EFCE0 8FB00040 */  lw         $s0, 0x40($sp)
/* 10DDD4 800EFCE4 03E00008 */  jr         $ra
/* 10DDD8 800EFCE8 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800EFCEC
/* 10DDDC 800EFCEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10DDE0 800EFCF0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10DDE4 800EFCF4 8C824740 */  lw         $v0, 0x4740($a0)
/* 10DDE8 800EFCF8 8C450008 */  lw         $a1, 0x8($v0)
/* 10DDEC 800EFCFC 10A00008 */  beqz       $a1, .Lmenu_800EFD20
/* 10DDF0 800EFD00 00000000 */   nop
/* 10DDF4 800EFD04 8C82473C */  lw         $v0, 0x473C($a0)
/* 10DDF8 800EFD08 8C430000 */  lw         $v1, 0x0($v0)
/* 10DDFC 800EFD0C 846400B0 */  lh         $a0, 0xB0($v1)
/* 10DE00 800EFD10 00442021 */  addu       $a0, $v0, $a0
/* 10DE04 800EFD14 8C6200B4 */  lw         $v0, 0xB4($v1)
/* 10DE08 800EFD18 0040F809 */  jalr       $v0
/* 10DE0C 800EFD1C 00000000 */   nop
.Lmenu_800EFD20:
/* 10DE10 800EFD20 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10DE14 800EFD24 03E00008 */  jr         $ra
/* 10DE18 800EFD28 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EFD2C
/* 10DE1C 800EFD2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10DE20 800EFD30 AFB10014 */  sw         $s1, 0x14($sp)
/* 10DE24 800EFD34 00808821 */  addu       $s1, $a0, $zero
/* 10DE28 800EFD38 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10DE2C 800EFD3C AFB00010 */  sw         $s0, 0x10($sp)
/* 10DE30 800EFD40 8E220004 */  lw         $v0, 0x4($s1)
/* 10DE34 800EFD44 8C430004 */  lw         $v1, 0x4($v0)
/* 10DE38 800EFD48 8C62009C */  lw         $v0, 0x9C($v1)
/* 10DE3C 800EFD4C 00008021 */  addu       $s0, $zero, $zero
/* 10DE40 800EFD50 84440070 */  lh         $a0, 0x70($v0)
/* 10DE44 800EFD54 8C420074 */  lw         $v0, 0x74($v0)
/* 10DE48 800EFD58 0040F809 */  jalr       $v0
/* 10DE4C 800EFD5C 00642021 */   addu      $a0, $v1, $a0
/* 10DE50 800EFD60 26240014 */  addiu      $a0, $s1, 0x14
/* 10DE54 800EFD64 00402821 */  addu       $a1, $v0, $zero
/* 10DE58 800EFD68 0C03B839 */  jal        func_menu_800EE0E4
/* 10DE5C 800EFD6C 26264788 */   addiu     $a2, $s1, 0x4788
.Lmenu_800EFD70:
/* 10DE60 800EFD70 8E220004 */  lw         $v0, 0x4($s1)
/* 10DE64 800EFD74 8C440008 */  lw         $a0, 0x8($v0)
/* 10DE68 800EFD78 0C0200A5 */  jal        func_80080294
/* 10DE6C 800EFD7C 26100001 */   addiu     $s0, $s0, 0x1
/* 10DE70 800EFD80 8E220004 */  lw         $v0, 0x4($s1)
/* 10DE74 800EFD84 8C430004 */  lw         $v1, 0x4($v0)
/* 10DE78 800EFD88 8C62009C */  lw         $v0, 0x9C($v1)
/* 10DE7C 800EFD8C 02202821 */  addu       $a1, $s1, $zero
/* 10DE80 800EFD90 84440068 */  lh         $a0, 0x68($v0)
/* 10DE84 800EFD94 8C42006C */  lw         $v0, 0x6C($v0)
/* 10DE88 800EFD98 0040F809 */  jalr       $v0
/* 10DE8C 800EFD9C 00642021 */   addu      $a0, $v1, $a0
/* 10DE90 800EFDA0 2E020003 */  sltiu      $v0, $s0, 0x3
/* 10DE94 800EFDA4 1440FFF2 */  bnez       $v0, .Lmenu_800EFD70
/* 10DE98 800EFDA8 00000000 */   nop
/* 10DE9C 800EFDAC AE204630 */  sw         $zero, 0x4630($s1)
/* 10DEA0 800EFDB0 00008021 */  addu       $s0, $zero, $zero
.Lmenu_800EFDB4:
/* 10DEA4 800EFDB4 2E020004 */  sltiu      $v0, $s0, 0x4
/* 10DEA8 800EFDB8 10400018 */  beqz       $v0, .Lmenu_800EFE1C
/* 10DEAC 800EFDBC 02002821 */   addu      $a1, $s0, $zero
/* 10DEB0 800EFDC0 8E230014 */  lw         $v1, 0x14($s1)
/* 10DEB4 800EFDC4 8C620050 */  lw         $v0, 0x50($v1)
/* 10DEB8 800EFDC8 84440018 */  lh         $a0, 0x18($v0)
/* 10DEBC 800EFDCC 8C42001C */  lw         $v0, 0x1C($v0)
/* 10DEC0 800EFDD0 0040F809 */  jalr       $v0
/* 10DEC4 800EFDD4 00642021 */   addu      $a0, $v1, $a0
/* 10DEC8 800EFDD8 00401821 */  addu       $v1, $v0, $zero
/* 10DECC 800EFDDC 1060000D */  beqz       $v1, .Lmenu_800EFE14
/* 10DED0 800EFDE0 3C053000 */   lui       $a1, (0x3000000C >> 16)
/* 10DED4 800EFDE4 8C620098 */  lw         $v0, 0x98($v1)
/* 10DED8 800EFDE8 34A5000C */  ori        $a1, $a1, (0x3000000C & 0xFFFF)
/* 10DEDC 800EFDEC 84440070 */  lh         $a0, 0x70($v0)
/* 10DEE0 800EFDF0 8C420074 */  lw         $v0, 0x74($v0)
/* 10DEE4 800EFDF4 0040F809 */  jalr       $v0
/* 10DEE8 800EFDF8 00642021 */   addu      $a0, $v1, $a0
/* 10DEEC 800EFDFC 5040FFED */  beql       $v0, $zero, .Lmenu_800EFDB4
/* 10DEF0 800EFE00 26100001 */   addiu     $s0, $s0, 0x1
/* 10DEF4 800EFE04 8E224618 */  lw         $v0, 0x4618($s1)
/* 10DEF8 800EFE08 AE304630 */  sw         $s0, 0x4630($s1)
/* 10DEFC 800EFE0C 34428000 */  ori        $v0, $v0, 0x8000
/* 10DF00 800EFE10 AE224618 */  sw         $v0, 0x4618($s1)
.Lmenu_800EFE14:
/* 10DF04 800EFE14 0803BF6D */  j          .Lmenu_800EFDB4
/* 10DF08 800EFE18 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800EFE1C:
/* 10DF0C 800EFE1C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10DF10 800EFE20 8FB10014 */  lw         $s1, 0x14($sp)
/* 10DF14 800EFE24 8FB00010 */  lw         $s0, 0x10($sp)
/* 10DF18 800EFE28 03E00008 */  jr         $ra
/* 10DF1C 800EFE2C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EFE30
/* 10DF20 800EFE30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10DF24 800EFE34 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10DF28 800EFE38 0C03B8AF */  jal        func_menu_800EE2BC
/* 10DF2C 800EFE3C 24840014 */   addiu     $a0, $a0, 0x14
/* 10DF30 800EFE40 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10DF34 800EFE44 03E00008 */  jr         $ra
/* 10DF38 800EFE48 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EFE4C
/* 10DF3C 800EFE4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10DF40 800EFE50 AFB00010 */  sw         $s0, 0x10($sp)
/* 10DF44 800EFE54 00808021 */  addu       $s0, $a0, $zero
/* 10DF48 800EFE58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10DF4C 800EFE5C 8E020004 */  lw         $v0, 0x4($s0)
/* 10DF50 800EFE60 8C430008 */  lw         $v1, 0x8($v0)
/* 10DF54 800EFE64 8C620014 */  lw         $v0, 0x14($v1)
/* 10DF58 800EFE68 84440030 */  lh         $a0, 0x30($v0)
/* 10DF5C 800EFE6C 8C420034 */  lw         $v0, 0x34($v0)
/* 10DF60 800EFE70 0040F809 */  jalr       $v0
/* 10DF64 800EFE74 00642021 */   addu      $a0, $v1, $a0
/* 10DF68 800EFE78 14400007 */  bnez       $v0, .Lmenu_800EFE98
/* 10DF6C 800EFE7C AE02461C */   sw        $v0, 0x461C($s0)
/* 10DF70 800EFE80 3C04800D */  lui        $a0, %hi(D_menu_800CBD84)
/* 10DF74 800EFE84 2484BD84 */  addiu      $a0, $a0, %lo(D_menu_800CBD84)
/* 10DF78 800EFE88 00002821 */  addu       $a1, $zero, $zero
/* 10DF7C 800EFE8C 00A03021 */  addu       $a2, $a1, $zero
/* 10DF80 800EFE90 0C011ACF */  jal        func_80046B3C
/* 10DF84 800EFE94 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800EFE98:
/* 10DF88 800EFE98 8E03461C */  lw         $v1, 0x461C($s0)
/* 10DF8C 800EFE9C 3C05800D */  lui        $a1, %hi(D_menu_800CBD88)
/* 10DF90 800EFEA0 8C620004 */  lw         $v0, 0x4($v1)
/* 10DF94 800EFEA4 24A5BD88 */  addiu      $a1, $a1, %lo(D_menu_800CBD88)
/* 10DF98 800EFEA8 84440010 */  lh         $a0, 0x10($v0)
/* 10DF9C 800EFEAC 8C420014 */  lw         $v0, 0x14($v0)
/* 10DFA0 800EFEB0 0040F809 */  jalr       $v0
/* 10DFA4 800EFEB4 00642021 */   addu      $a0, $v1, $a0
/* 10DFA8 800EFEB8 8E020004 */  lw         $v0, 0x4($s0)
/* 10DFAC 800EFEBC AE004620 */  sw         $zero, 0x4620($s0)
/* 10DFB0 800EFEC0 8C430008 */  lw         $v1, 0x8($v0)
/* 10DFB4 800EFEC4 8C620014 */  lw         $v0, 0x14($v1)
/* 10DFB8 800EFEC8 84440040 */  lh         $a0, 0x40($v0)
/* 10DFBC 800EFECC 8C420044 */  lw         $v0, 0x44($v0)
/* 10DFC0 800EFED0 0040F809 */  jalr       $v0
/* 10DFC4 800EFED4 00642021 */   addu      $a0, $v1, $a0
/* 10DFC8 800EFED8 14400007 */  bnez       $v0, .Lmenu_800EFEF8
/* 10DFCC 800EFEDC AE02479C */   sw        $v0, 0x479C($s0)
/* 10DFD0 800EFEE0 3C04800D */  lui        $a0, %hi(D_menu_800CBD84)
/* 10DFD4 800EFEE4 2484BD84 */  addiu      $a0, $a0, %lo(D_menu_800CBD84)
/* 10DFD8 800EFEE8 00002821 */  addu       $a1, $zero, $zero
/* 10DFDC 800EFEEC 00A03021 */  addu       $a2, $a1, $zero
/* 10DFE0 800EFEF0 0C011ACF */  jal        func_80046B3C
/* 10DFE4 800EFEF4 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800EFEF8:
/* 10DFE8 800EFEF8 8E03479C */  lw         $v1, 0x479C($s0)
/* 10DFEC 800EFEFC 3C05800D */  lui        $a1, %hi(D_menu_800CBD90)
/* 10DFF0 800EFF00 8C620000 */  lw         $v0, 0x0($v1)
/* 10DFF4 800EFF04 24A5BD90 */  addiu      $a1, $a1, %lo(D_menu_800CBD90)
/* 10DFF8 800EFF08 84440008 */  lh         $a0, 0x8($v0)
/* 10DFFC 800EFF0C 8C42000C */  lw         $v0, 0xC($v0)
/* 10E000 800EFF10 0040F809 */  jalr       $v0
/* 10E004 800EFF14 00642021 */   addu      $a0, $v1, $a0
/* 10E008 800EFF18 260447B8 */  addiu      $a0, $s0, 0x47B8
/* 10E00C 800EFF1C 8E020004 */  lw         $v0, 0x4($s0)
/* 10E010 800EFF20 8E06479C */  lw         $a2, 0x479C($s0)
/* 10E014 800EFF24 8C450008 */  lw         $a1, 0x8($v0)
/* 10E018 800EFF28 0C0478EB */  jal        func_menu_8011E3AC
/* 10E01C 800EFF2C 00003821 */   addu      $a3, $zero, $zero
/* 10E020 800EFF30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10E024 800EFF34 8FB00010 */  lw         $s0, 0x10($sp)
/* 10E028 800EFF38 03E00008 */  jr         $ra
/* 10E02C 800EFF3C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EFF40
/* 10E030 800EFF40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10E034 800EFF44 AFB00010 */  sw         $s0, 0x10($sp)
/* 10E038 800EFF48 00808021 */  addu       $s0, $a0, $zero
/* 10E03C 800EFF4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 10E040 800EFF50 8E034620 */  lw         $v1, 0x4620($s0)
/* 10E044 800EFF54 1060000D */  beqz       $v1, .Lmenu_800EFF8C
/* 10E048 800EFF58 00000000 */   nop
/* 10E04C 800EFF5C 8C620000 */  lw         $v0, 0x0($v1)
/* 10E050 800EFF60 84440018 */  lh         $a0, 0x18($v0)
/* 10E054 800EFF64 8C42001C */  lw         $v0, 0x1C($v0)
/* 10E058 800EFF68 0040F809 */  jalr       $v0
/* 10E05C 800EFF6C 00642021 */   addu      $a0, $v1, $a0
/* 10E060 800EFF70 8E03461C */  lw         $v1, 0x461C($s0)
/* 10E064 800EFF74 8C620004 */  lw         $v0, 0x4($v1)
/* 10E068 800EFF78 8E054620 */  lw         $a1, 0x4620($s0)
/* 10E06C 800EFF7C 84440030 */  lh         $a0, 0x30($v0)
/* 10E070 800EFF80 8C420034 */  lw         $v0, 0x34($v0)
/* 10E074 800EFF84 0040F809 */  jalr       $v0
/* 10E078 800EFF88 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800EFF8C:
/* 10E07C 800EFF8C 0C047901 */  jal        func_menu_8011E404
/* 10E080 800EFF90 260447B8 */   addiu     $a0, $s0, 0x47B8
/* 10E084 800EFF94 8E03479C */  lw         $v1, 0x479C($s0)
/* 10E088 800EFF98 8C620000 */  lw         $v0, 0x0($v1)
/* 10E08C 800EFF9C 84440010 */  lh         $a0, 0x10($v0)
/* 10E090 800EFFA0 8C420014 */  lw         $v0, 0x14($v0)
/* 10E094 800EFFA4 0040F809 */  jalr       $v0
/* 10E098 800EFFA8 00642021 */   addu      $a0, $v1, $a0
/* 10E09C 800EFFAC 8E03461C */  lw         $v1, 0x461C($s0)
/* 10E0A0 800EFFB0 10600006 */  beqz       $v1, .Lmenu_800EFFCC
/* 10E0A4 800EFFB4 00000000 */   nop
/* 10E0A8 800EFFB8 8C620004 */  lw         $v0, 0x4($v1)
/* 10E0AC 800EFFBC 84440018 */  lh         $a0, 0x18($v0)
/* 10E0B0 800EFFC0 8C42001C */  lw         $v0, 0x1C($v0)
/* 10E0B4 800EFFC4 0040F809 */  jalr       $v0
/* 10E0B8 800EFFC8 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800EFFCC:
/* 10E0BC 800EFFCC 8E020004 */  lw         $v0, 0x4($s0)
/* 10E0C0 800EFFD0 8C430008 */  lw         $v1, 0x8($v0)
/* 10E0C4 800EFFD4 8C620014 */  lw         $v0, 0x14($v1)
/* 10E0C8 800EFFD8 8E05479C */  lw         $a1, 0x479C($s0)
/* 10E0CC 800EFFDC 84440048 */  lh         $a0, 0x48($v0)
/* 10E0D0 800EFFE0 8C42004C */  lw         $v0, 0x4C($v0)
/* 10E0D4 800EFFE4 0040F809 */  jalr       $v0
/* 10E0D8 800EFFE8 00642021 */   addu      $a0, $v1, $a0
/* 10E0DC 800EFFEC 8E05461C */  lw         $a1, 0x461C($s0)
/* 10E0E0 800EFFF0 50A00009 */  beql       $a1, $zero, .Lmenu_800F0018
/* 10E0E4 800EFFF4 AE00461C */   sw        $zero, 0x461C($s0)
/* 10E0E8 800EFFF8 8E020004 */  lw         $v0, 0x4($s0)
/* 10E0EC 800EFFFC 8C430008 */  lw         $v1, 0x8($v0)
/* 10E0F0 800F0000 8C620014 */  lw         $v0, 0x14($v1)
/* 10E0F4 800F0004 84440038 */  lh         $a0, 0x38($v0)
/* 10E0F8 800F0008 8C42003C */  lw         $v0, 0x3C($v0)
/* 10E0FC 800F000C 0040F809 */  jalr       $v0
/* 10E100 800F0010 00642021 */   addu      $a0, $v1, $a0
/* 10E104 800F0014 AE00461C */  sw         $zero, 0x461C($s0)
.Lmenu_800F0018:
/* 10E108 800F0018 AE004620 */  sw         $zero, 0x4620($s0)
/* 10E10C 800F001C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10E110 800F0020 8FB00010 */  lw         $s0, 0x10($sp)
/* 10E114 800F0024 03E00008 */  jr         $ra
/* 10E118 800F0028 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F002C
/* 10E11C 800F002C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10E120 800F0030 AFB00010 */  sw         $s0, 0x10($sp)
/* 10E124 800F0034 00808021 */  addu       $s0, $a0, $zero
/* 10E128 800F0038 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10E12C 800F003C 8E024744 */  lw         $v0, 0x4744($s0)
/* 10E130 800F0040 14400008 */  bnez       $v0, .Lmenu_800F0064
/* 10E134 800F0044 00000000 */   nop
/* 10E138 800F0048 8E03473C */  lw         $v1, 0x473C($s0)
/* 10E13C 800F004C 8C620000 */  lw         $v0, 0x0($v1)
/* 10E140 800F0050 84440070 */  lh         $a0, 0x70($v0)
/* 10E144 800F0054 8C420074 */  lw         $v0, 0x74($v0)
/* 10E148 800F0058 0040F809 */  jalr       $v0
/* 10E14C 800F005C 00642021 */   addu      $a0, $v1, $a0
/* 10E150 800F0060 AE024744 */  sw         $v0, 0x4744($s0)
.Lmenu_800F0064:
/* 10E154 800F0064 8E024748 */  lw         $v0, 0x4748($s0)
/* 10E158 800F0068 14400008 */  bnez       $v0, .Lmenu_800F008C
/* 10E15C 800F006C 00000000 */   nop
/* 10E160 800F0070 8E03473C */  lw         $v1, 0x473C($s0)
/* 10E164 800F0074 8C620000 */  lw         $v0, 0x0($v1)
/* 10E168 800F0078 84440078 */  lh         $a0, 0x78($v0)
/* 10E16C 800F007C 8C42007C */  lw         $v0, 0x7C($v0)
/* 10E170 800F0080 0040F809 */  jalr       $v0
/* 10E174 800F0084 00642021 */   addu      $a0, $v1, $a0
/* 10E178 800F0088 AE024748 */  sw         $v0, 0x4748($s0)
.Lmenu_800F008C:
/* 10E17C 800F008C 8E024744 */  lw         $v0, 0x4744($s0)
/* 10E180 800F0090 8C430008 */  lw         $v1, 0x8($v0)
/* 10E184 800F0094 3C06800D */  lui        $a2, %hi(D_menu_800CBD98)
/* 10E188 800F0098 84640040 */  lh         $a0, 0x40($v1)
/* 10E18C 800F009C 8E054740 */  lw         $a1, 0x4740($s0)
/* 10E190 800F00A0 00442021 */  addu       $a0, $v0, $a0
/* 10E194 800F00A4 8E020004 */  lw         $v0, 0x4($s0)
/* 10E198 800F00A8 8C630044 */  lw         $v1, 0x44($v1)
/* 10E19C 800F00AC 8C47001C */  lw         $a3, 0x1C($v0)
/* 10E1A0 800F00B0 0060F809 */  jalr       $v1
/* 10E1A4 800F00B4 24C6BD98 */   addiu     $a2, $a2, %lo(D_menu_800CBD98)
/* 10E1A8 800F00B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10E1AC 800F00BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 10E1B0 800F00C0 03E00008 */  jr         $ra
/* 10E1B4 800F00C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F00C8
/* 10E1B8 800F00C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10E1BC 800F00CC AFB00010 */  sw         $s0, 0x10($sp)
/* 10E1C0 800F00D0 00808021 */  addu       $s0, $a0, $zero
/* 10E1C4 800F00D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10E1C8 800F00D8 8E034744 */  lw         $v1, 0x4744($s0)
/* 10E1CC 800F00DC 1060000E */  beqz       $v1, .Lmenu_800F0118
/* 10E1D0 800F00E0 00000000 */   nop
/* 10E1D4 800F00E4 8C620008 */  lw         $v0, 0x8($v1)
/* 10E1D8 800F00E8 84440018 */  lh         $a0, 0x18($v0)
/* 10E1DC 800F00EC 8C42001C */  lw         $v0, 0x1C($v0)
/* 10E1E0 800F00F0 0040F809 */  jalr       $v0
/* 10E1E4 800F00F4 00642021 */   addu      $a0, $v1, $a0
/* 10E1E8 800F00F8 8E03473C */  lw         $v1, 0x473C($s0)
/* 10E1EC 800F00FC 8C620000 */  lw         $v0, 0x0($v1)
/* 10E1F0 800F0100 8E054744 */  lw         $a1, 0x4744($s0)
/* 10E1F4 800F0104 844400D8 */  lh         $a0, 0xD8($v0)
/* 10E1F8 800F0108 8C4200DC */  lw         $v0, 0xDC($v0)
/* 10E1FC 800F010C 0040F809 */  jalr       $v0
/* 10E200 800F0110 00642021 */   addu      $a0, $v1, $a0
/* 10E204 800F0114 AE004744 */  sw         $zero, 0x4744($s0)
.Lmenu_800F0118:
/* 10E208 800F0118 8E034748 */  lw         $v1, 0x4748($s0)
/* 10E20C 800F011C 1060000E */  beqz       $v1, .Lmenu_800F0158
/* 10E210 800F0120 00000000 */   nop
/* 10E214 800F0124 8C620008 */  lw         $v0, 0x8($v1)
/* 10E218 800F0128 84440018 */  lh         $a0, 0x18($v0)
/* 10E21C 800F012C 8C42001C */  lw         $v0, 0x1C($v0)
/* 10E220 800F0130 0040F809 */  jalr       $v0
/* 10E224 800F0134 00642021 */   addu      $a0, $v1, $a0
/* 10E228 800F0138 8E03473C */  lw         $v1, 0x473C($s0)
/* 10E22C 800F013C 8C620000 */  lw         $v0, 0x0($v1)
/* 10E230 800F0140 8E054748 */  lw         $a1, 0x4748($s0)
/* 10E234 800F0144 844400E0 */  lh         $a0, 0xE0($v0)
/* 10E238 800F0148 8C4200E4 */  lw         $v0, 0xE4($v0)
/* 10E23C 800F014C 0040F809 */  jalr       $v0
/* 10E240 800F0150 00642021 */   addu      $a0, $v1, $a0
/* 10E244 800F0154 AE004748 */  sw         $zero, 0x4748($s0)
.Lmenu_800F0158:
/* 10E248 800F0158 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10E24C 800F015C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10E250 800F0160 03E00008 */  jr         $ra
/* 10E254 800F0164 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F0168
/* 10E258 800F0168 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10E25C 800F016C AFB20018 */  sw         $s2, 0x18($sp)
/* 10E260 800F0170 00809021 */  addu       $s2, $a0, $zero
/* 10E264 800F0174 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10E268 800F0178 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10E26C 800F017C AFB10014 */  sw         $s1, 0x14($sp)
/* 10E270 800F0180 AFB00010 */  sw         $s0, 0x10($sp)
/* 10E274 800F0184 8E420004 */  lw         $v0, 0x4($s2)
/* 10E278 800F0188 8C430004 */  lw         $v1, 0x4($v0)
/* 10E27C 800F018C 8C62009C */  lw         $v0, 0x9C($v1)
/* 10E280 800F0190 84440070 */  lh         $a0, 0x70($v0)
/* 10E284 800F0194 8C420074 */  lw         $v0, 0x74($v0)
/* 10E288 800F0198 0040F809 */  jalr       $v0
/* 10E28C 800F019C 00642021 */   addu      $a0, $v1, $a0
/* 10E290 800F01A0 264402A8 */  addiu      $a0, $s2, 0x2A8
/* 10E294 800F01A4 00402821 */  addu       $a1, $v0, $zero
/* 10E298 800F01A8 0C03D22C */  jal        func_menu_800F48B0
/* 10E29C 800F01AC 00003021 */   addu      $a2, $zero, $zero
/* 10E2A0 800F01B0 00401821 */  addu       $v1, $v0, $zero
/* 10E2A4 800F01B4 24020015 */  addiu      $v0, $zero, 0x15
/* 10E2A8 800F01B8 10620003 */  beq        $v1, $v0, .Lmenu_800F01C8
/* 10E2AC 800F01BC 24020001 */   addiu     $v0, $zero, 0x1
/* 10E2B0 800F01C0 14620004 */  bne        $v1, $v0, .Lmenu_800F01D4
/* 10E2B4 800F01C4 00000000 */   nop
.Lmenu_800F01C8:
/* 10E2B8 800F01C8 8E424618 */  lw         $v0, 0x4618($s2)
/* 10E2BC 800F01CC 34426000 */  ori        $v0, $v0, 0x6000
/* 10E2C0 800F01D0 AE424618 */  sw         $v0, 0x4618($s2)
.Lmenu_800F01D4:
/* 10E2C4 800F01D4 8E450004 */  lw         $a1, 0x4($s2)
/* 10E2C8 800F01D8 94A20022 */  lhu        $v0, 0x22($a1)
/* 10E2CC 800F01DC 30420004 */  andi       $v0, $v0, 0x4
/* 10E2D0 800F01E0 1040003A */  beqz       $v0, .Lmenu_800F02CC
/* 10E2D4 800F01E4 264402CC */   addiu     $a0, $s2, 0x2CC
/* 10E2D8 800F01E8 24A30E85 */  addiu      $v1, $a1, 0xE85
/* 10E2DC 800F01EC 00641025 */  or         $v0, $v1, $a0
/* 10E2E0 800F01F0 30420003 */  andi       $v0, $v0, 0x3
/* 10E2E4 800F01F4 10400016 */  beqz       $v0, .Lmenu_800F0250
/* 10E2E8 800F01F8 24A212A5 */   addiu     $v0, $a1, 0x12A5
.Lmenu_800F01FC:
/* 10E2EC 800F01FC 88670000 */  lwl        $a3, 0x0($v1)
/* 10E2F0 800F0200 98670003 */  lwr        $a3, 0x3($v1)
/* 10E2F4 800F0204 88680004 */  lwl        $t0, 0x4($v1)
/* 10E2F8 800F0208 98680007 */  lwr        $t0, 0x7($v1)
/* 10E2FC 800F020C 88690008 */  lwl        $t1, 0x8($v1)
/* 10E300 800F0210 9869000B */  lwr        $t1, 0xB($v1)
/* 10E304 800F0214 886A000C */  lwl        $t2, 0xC($v1)
/* 10E308 800F0218 986A000F */  lwr        $t2, 0xF($v1)
/* 10E30C 800F021C A8870000 */  swl        $a3, 0x0($a0)
/* 10E310 800F0220 B8870003 */  swr        $a3, 0x3($a0)
/* 10E314 800F0224 A8880004 */  swl        $t0, 0x4($a0)
/* 10E318 800F0228 B8880007 */  swr        $t0, 0x7($a0)
/* 10E31C 800F022C A8890008 */  swl        $t1, 0x8($a0)
/* 10E320 800F0230 B889000B */  swr        $t1, 0xB($a0)
/* 10E324 800F0234 A88A000C */  swl        $t2, 0xC($a0)
/* 10E328 800F0238 B88A000F */  swr        $t2, 0xF($a0)
/* 10E32C 800F023C 24630010 */  addiu      $v1, $v1, 0x10
/* 10E330 800F0240 1462FFEE */  bne        $v1, $v0, .Lmenu_800F01FC
/* 10E334 800F0244 24840010 */   addiu     $a0, $a0, 0x10
/* 10E338 800F0248 0803C09F */  j          .Lmenu_800F027C
/* 10E33C 800F024C 00000000 */   nop
.Lmenu_800F0250:
/* 10E340 800F0250 8C670000 */  lw         $a3, 0x0($v1)
/* 10E344 800F0254 8C680004 */  lw         $t0, 0x4($v1)
/* 10E348 800F0258 8C690008 */  lw         $t1, 0x8($v1)
/* 10E34C 800F025C 8C6A000C */  lw         $t2, 0xC($v1)
/* 10E350 800F0260 AC870000 */  sw         $a3, 0x0($a0)
/* 10E354 800F0264 AC880004 */  sw         $t0, 0x4($a0)
/* 10E358 800F0268 AC890008 */  sw         $t1, 0x8($a0)
/* 10E35C 800F026C AC8A000C */  sw         $t2, 0xC($a0)
/* 10E360 800F0270 24630010 */  addiu      $v1, $v1, 0x10
/* 10E364 800F0274 1462FFF6 */  bne        $v1, $v0, .Lmenu_800F0250
/* 10E368 800F0278 24840010 */   addiu     $a0, $a0, 0x10
.Lmenu_800F027C:
/* 10E36C 800F027C 88670000 */  lwl        $a3, 0x0($v1)
/* 10E370 800F0280 98670003 */  lwr        $a3, 0x3($v1)
/* 10E374 800F0284 88680004 */  lwl        $t0, 0x4($v1)
/* 10E378 800F0288 98680007 */  lwr        $t0, 0x7($v1)
/* 10E37C 800F028C 88690008 */  lwl        $t1, 0x8($v1)
/* 10E380 800F0290 9869000B */  lwr        $t1, 0xB($v1)
/* 10E384 800F0294 A8870000 */  swl        $a3, 0x0($a0)
/* 10E388 800F0298 B8870003 */  swr        $a3, 0x3($a0)
/* 10E38C 800F029C A8880004 */  swl        $t0, 0x4($a0)
/* 10E390 800F02A0 B8880007 */  swr        $t0, 0x7($a0)
/* 10E394 800F02A4 A8890008 */  swl        $t1, 0x8($a0)
/* 10E398 800F02A8 B889000B */  swr        $t1, 0xB($a0)
/* 10E39C 800F02AC 8E430004 */  lw         $v1, 0x4($s2)
/* 10E3A0 800F02B0 94620022 */  lhu        $v0, 0x22($v1)
/* 10E3A4 800F02B4 26442628 */  addiu      $a0, $s2, 0x2628
/* 10E3A8 800F02B8 3042FFFB */  andi       $v0, $v0, 0xFFFB
/* 10E3AC 800F02BC A4620022 */  sh         $v0, 0x22($v1)
/* 10E3B0 800F02C0 8C860004 */  lw         $a2, 0x4($a0)
/* 10E3B4 800F02C4 0C03CB5C */  jal        func_menu_800F2D70
/* 10E3B8 800F02C8 264502A8 */   addiu     $a1, $s2, 0x2A8
.Lmenu_800F02CC:
/* 10E3BC 800F02CC 265302A8 */  addiu      $s3, $s2, 0x2A8
/* 10E3C0 800F02D0 00008821 */  addu       $s1, $zero, $zero
/* 10E3C4 800F02D4 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800F02D8:
/* 10E3C8 800F02D8 8E420004 */  lw         $v0, 0x4($s2)
/* 10E3CC 800F02DC 8C4203A0 */  lw         $v0, 0x3A0($v0)
/* 10E3D0 800F02E0 0222102B */  sltu       $v0, $s1, $v0
/* 10E3D4 800F02E4 1040000C */  beqz       $v0, .Lmenu_800F0318
/* 10E3D8 800F02E8 00000000 */   nop
/* 10E3DC 800F02EC 0C03BAFD */  jal        func_menu_800EEBF4
/* 10E3E0 800F02F0 02602021 */   addu      $a0, $s3, $zero
/* 10E3E4 800F02F4 24440014 */  addiu      $a0, $v0, 0x14
/* 10E3E8 800F02F8 2406022D */  addiu      $a2, $zero, 0x22D
/* 10E3EC 800F02FC 8E450004 */  lw         $a1, 0x4($s2)
/* 10E3F0 800F0300 26310001 */  addiu      $s1, $s1, 0x1
/* 10E3F4 800F0304 02052821 */  addu       $a1, $s0, $a1
/* 10E3F8 800F0308 0C006E07 */  jal        strncpy
/* 10E3FC 800F030C 24A503A4 */   addiu     $a1, $a1, 0x3A4
/* 10E400 800F0310 0803C0B6 */  j          .Lmenu_800F02D8
/* 10E404 800F0314 2610022D */   addiu     $s0, $s0, 0x22D
.Lmenu_800F0318:
/* 10E408 800F0318 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10E40C 800F031C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10E410 800F0320 8FB20018 */  lw         $s2, 0x18($sp)
/* 10E414 800F0324 8FB10014 */  lw         $s1, 0x14($sp)
/* 10E418 800F0328 8FB00010 */  lw         $s0, 0x10($sp)
/* 10E41C 800F032C 03E00008 */  jr         $ra
/* 10E420 800F0330 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F0334
/* 10E424 800F0334 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10E428 800F0338 AFB00018 */  sw         $s0, 0x18($sp)
/* 10E42C 800F033C 00808021 */  addu       $s0, $a0, $zero
/* 10E430 800F0340 AFB30024 */  sw         $s3, 0x24($sp)
/* 10E434 800F0344 26133DB0 */  addiu      $s3, $s0, 0x3DB0
/* 10E438 800F0348 02602021 */  addu       $a0, $s3, $zero
/* 10E43C 800F034C AFB20020 */  sw         $s2, 0x20($sp)
/* 10E440 800F0350 26124774 */  addiu      $s2, $s0, 0x4774
/* 10E444 800F0354 02402821 */  addu       $a1, $s2, $zero
/* 10E448 800F0358 AFB1001C */  sw         $s1, 0x1C($sp)
/* 10E44C 800F035C 3C11800D */  lui        $s1, %hi(D_menu_800CBDA0)
/* 10E450 800F0360 AFBF0028 */  sw         $ra, 0x28($sp)
/* 10E454 800F0364 8E020004 */  lw         $v0, 0x4($s0)
/* 10E458 800F0368 2631BDA0 */  addiu      $s1, $s1, %lo(D_menu_800CBDA0)
/* 10E45C 800F036C AE002CAC */  sw         $zero, 0x2CAC($s0)
/* 10E460 800F0370 AE002CA8 */  sw         $zero, 0x2CA8($s0)
/* 10E464 800F0374 8C47001C */  lw         $a3, 0x1C($v0)
/* 10E468 800F0378 0C03B705 */  jal        func_menu_800EDC14
/* 10E46C 800F037C 02203021 */   addu      $a2, $s1, $zero
/* 10E470 800F0380 26043DC4 */  addiu      $a0, $s0, 0x3DC4
/* 10E474 800F0384 02402821 */  addu       $a1, $s2, $zero
/* 10E478 800F0388 8E020004 */  lw         $v0, 0x4($s0)
/* 10E47C 800F038C 02603021 */  addu       $a2, $s3, $zero
/* 10E480 800F0390 8C42001C */  lw         $v0, 0x1C($v0)
/* 10E484 800F0394 02203821 */  addu       $a3, $s1, $zero
/* 10E488 800F0398 0C03CCDD */  jal        func_menu_800F3374
/* 10E48C 800F039C AFA20010 */   sw        $v0, 0x10($sp)
/* 10E490 800F03A0 0C03B983 */  jal        func_menu_800EE60C
/* 10E494 800F03A4 26044634 */   addiu     $a0, $s0, 0x4634
/* 10E498 800F03A8 26043DD8 */  addiu      $a0, $s0, 0x3DD8
/* 10E49C 800F03AC 0C0103FD */  jal        func_80040FF4
/* 10E4A0 800F03B0 24050002 */   addiu     $a1, $zero, 0x2
/* 10E4A4 800F03B4 2610474C */  addiu      $s0, $s0, 0x474C
/* 10E4A8 800F03B8 0C002F70 */  jal        func_8000BDC0
/* 10E4AC 800F03BC 02002021 */   addu      $a0, $s0, $zero
/* 10E4B0 800F03C0 02002021 */  addu       $a0, $s0, $zero
/* 10E4B4 800F03C4 3C05800D */  lui        $a1, %hi(D_menu_800CBDAC)
/* 10E4B8 800F03C8 0C002FA1 */  jal        func_8000BE84
/* 10E4BC 800F03CC 24A5BDAC */   addiu     $a1, $a1, %lo(D_menu_800CBDAC)
/* 10E4C0 800F03D0 3C028012 */  lui        $v0, %hi(D_80126C08)
/* 10E4C4 800F03D4 8C436C08 */  lw         $v1, %lo(D_80126C08)($v0)
/* 10E4C8 800F03D8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 10E4CC 800F03DC 8FB30024 */  lw         $s3, 0x24($sp)
/* 10E4D0 800F03E0 8FB20020 */  lw         $s2, 0x20($sp)
/* 10E4D4 800F03E4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 10E4D8 800F03E8 8FB00018 */  lw         $s0, 0x18($sp)
/* 10E4DC 800F03EC 3C028012 */  lui        $v0, %hi(D_80126BE8)
/* 10E4E0 800F03F0 AC436BE8 */  sw         $v1, %lo(D_80126BE8)($v0)
/* 10E4E4 800F03F4 03E00008 */  jr         $ra
/* 10E4E8 800F03F8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F03FC
/* 10E4EC 800F03FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10E4F0 800F0400 AFB00010 */  sw         $s0, 0x10($sp)
/* 10E4F4 800F0404 00808021 */  addu       $s0, $a0, $zero
/* 10E4F8 800F0408 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10E4FC 800F040C 0C03CD83 */  jal        func_menu_800F360C
/* 10E500 800F0410 26043DC4 */   addiu     $a0, $s0, 0x3DC4
/* 10E504 800F0414 0C03B7A9 */  jal        func_menu_800EDEA4
/* 10E508 800F0418 26043DB0 */   addiu     $a0, $s0, 0x3DB0
/* 10E50C 800F041C 0C002F89 */  jal        func_8000BE24
/* 10E510 800F0420 26044774 */   addiu     $a0, $s0, 0x4774
/* 10E514 800F0424 0C03D3C0 */  jal        func_menu_800F4F00
/* 10E518 800F0428 260402A8 */   addiu     $a0, $s0, 0x2A8
/* 10E51C 800F042C 0C037DA2 */  jal        func_menu_800DF688
/* 10E520 800F0430 26042CC4 */   addiu     $a0, $s0, 0x2CC4
/* 10E524 800F0434 0C0362CF */  jal        func_menu_800D8B3C
/* 10E528 800F0438 26042CFC */   addiu     $a0, $s0, 0x2CFC
/* 10E52C 800F043C 0C035379 */  jal        func_menu_800D4DE4
/* 10E530 800F0440 26043C88 */   addiu     $a0, $s0, 0x3C88
/* 10E534 800F0444 0C03736C */  jal        func_menu_800DCDB0
/* 10E538 800F0448 260445A0 */   addiu     $a0, $s0, 0x45A0
/* 10E53C 800F044C 0C035602 */  jal        func_menu_800D5808
/* 10E540 800F0450 26044544 */   addiu     $a0, $s0, 0x4544
/* 10E544 800F0454 0C035912 */  jal        func_menu_800D6448
/* 10E548 800F0458 26043DE0 */   addiu     $a0, $s0, 0x3DE0
/* 10E54C 800F045C 0C03B98B */  jal        func_menu_800EE62C
/* 10E550 800F0460 26044634 */   addiu     $a0, $s0, 0x4634
/* 10E554 800F0464 0C0103CD */  jal        func_80040F34
/* 10E558 800F0468 26043DD8 */   addiu     $a0, $s0, 0x3DD8
/* 10E55C 800F046C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10E560 800F0470 8FB00010 */  lw         $s0, 0x10($sp)
/* 10E564 800F0474 03E00008 */  jr         $ra
/* 10E568 800F0478 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F047C
/* 10E56C 800F047C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10E570 800F0480 AFB3002C */  sw         $s3, 0x2C($sp)
/* 10E574 800F0484 00809821 */  addu       $s3, $a0, $zero
/* 10E578 800F0488 AFBF0030 */  sw         $ra, 0x30($sp)
/* 10E57C 800F048C AFB20028 */  sw         $s2, 0x28($sp)
/* 10E580 800F0490 AFB10024 */  sw         $s1, 0x24($sp)
/* 10E584 800F0494 AFB00020 */  sw         $s0, 0x20($sp)
/* 10E588 800F0498 8E620004 */  lw         $v0, 0x4($s3)
/* 10E58C 800F049C 8C42002C */  lw         $v0, 0x2C($v0)
/* 10E590 800F04A0 00A08021 */  addu       $s0, $a1, $zero
/* 10E594 800F04A4 16020003 */  bne        $s0, $v0, .Lmenu_800F04B4
/* 10E598 800F04A8 00000000 */   nop
/* 10E59C 800F04AC 10C0003D */  beqz       $a2, .Lmenu_800F05A4
/* 10E5A0 800F04B0 00000000 */   nop
.Lmenu_800F04B4:
/* 10E5A4 800F04B4 0C03C9EE */  jal        func_menu_800F27B8
/* 10E5A8 800F04B8 26642628 */   addiu     $a0, $s3, 0x2628
/* 10E5AC 800F04BC 26714760 */  addiu      $s1, $s3, 0x4760
/* 10E5B0 800F04C0 8E620004 */  lw         $v0, 0x4($s3)
/* 10E5B4 800F04C4 02202021 */  addu       $a0, $s1, $zero
/* 10E5B8 800F04C8 0C002F70 */  jal        func_8000BDC0
/* 10E5BC 800F04CC AC50002C */   sw        $s0, 0x2C($v0)
/* 10E5C0 800F04D0 26704774 */  addiu      $s0, $s3, 0x4774
/* 10E5C4 800F04D4 0C002F70 */  jal        func_8000BDC0
/* 10E5C8 800F04D8 02002021 */   addu      $a0, $s0, $zero
/* 10E5CC 800F04DC 26724788 */  addiu      $s2, $s3, 0x4788
/* 10E5D0 800F04E0 0C002F70 */  jal        func_8000BDC0
/* 10E5D4 800F04E4 02402021 */   addu      $a0, $s2, $zero
/* 10E5D8 800F04E8 02202021 */  addu       $a0, $s1, $zero
/* 10E5DC 800F04EC 3C05800D */  lui        $a1, %hi(D_menu_800CBDBC)
/* 10E5E0 800F04F0 0C002FA1 */  jal        func_8000BE84
/* 10E5E4 800F04F4 24A5BDBC */   addiu     $a1, $a1, %lo(D_menu_800CBDBC)
/* 10E5E8 800F04F8 02002021 */  addu       $a0, $s0, $zero
/* 10E5EC 800F04FC 3C05800D */  lui        $a1, %hi(D_menu_800CBDCC)
/* 10E5F0 800F0500 0C002FA1 */  jal        func_8000BE84
/* 10E5F4 800F0504 24A5BDCC */   addiu     $a1, $a1, %lo(D_menu_800CBDCC)
/* 10E5F8 800F0508 02402021 */  addu       $a0, $s2, $zero
/* 10E5FC 800F050C 3C05800D */  lui        $a1, %hi(D_menu_800CBDD8)
/* 10E600 800F0510 0C002FA1 */  jal        func_8000BE84
/* 10E604 800F0514 24A5BDD8 */   addiu     $a1, $a1, %lo(D_menu_800CBDD8)
/* 10E608 800F0518 3C06800D */  lui        $a2, %hi(D_menu_800CBDE4)
/* 10E60C 800F051C 24C6BDE4 */  addiu      $a2, $a2, %lo(D_menu_800CBDE4)
/* 10E610 800F0520 8E684748 */  lw         $t0, 0x4748($s3)
/* 10E614 800F0524 8E654740 */  lw         $a1, 0x4740($s3)
/* 10E618 800F0528 8E620004 */  lw         $v0, 0x4($s3)
/* 10E61C 800F052C 8D030008 */  lw         $v1, 0x8($t0)
/* 10E620 800F0530 8C47001C */  lw         $a3, 0x1C($v0)
/* 10E624 800F0534 84640048 */  lh         $a0, 0x48($v1)
/* 10E628 800F0538 8C63004C */  lw         $v1, 0x4C($v1)
/* 10E62C 800F053C 0060F809 */  jalr       $v1
/* 10E630 800F0540 01042021 */   addu      $a0, $t0, $a0
/* 10E634 800F0544 3C02800D */  lui        $v0, %hi(D_menu_800CBD70)
/* 10E638 800F0548 2445BD70 */  addiu      $a1, $v0, %lo(D_menu_800CBD70)
/* 10E63C 800F054C 10A00007 */  beqz       $a1, .Lmenu_800F056C
/* 10E640 800F0550 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 10E644 800F0554 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 10E648 800F0558 02002021 */  addu       $a0, $s0, $zero
/* 10E64C 800F055C 0C000708 */  jal        func_80001C20
/* 10E650 800F0560 24060100 */   addiu     $a2, $zero, 0x100
/* 10E654 800F0564 0803C15D */  j          .Lmenu_800F0574
/* 10E658 800F0568 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F056C:
/* 10E65C 800F056C 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 10E660 800F0570 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F0574:
/* 10E664 800F0574 3C02800D */  lui        $v0, %hi(D_menu_800CBDEC)
/* 10E668 800F0578 8E634740 */  lw         $v1, 0x4740($s3)
/* 10E66C 800F057C 2442BDEC */  addiu      $v0, $v0, %lo(D_menu_800CBDEC)
/* 10E670 800F0580 AFA00014 */  sw         $zero, 0x14($sp)
/* 10E674 800F0584 AFA20018 */  sw         $v0, 0x18($sp)
/* 10E678 800F0588 AFA30010 */  sw         $v1, 0x10($sp)
/* 10E67C 800F058C 8E620004 */  lw         $v0, 0x4($s3)
/* 10E680 800F0590 266447C4 */  addiu      $a0, $s3, 0x47C4
/* 10E684 800F0594 8C42001C */  lw         $v0, 0x1C($v0)
/* 10E688 800F0598 27A50010 */  addiu      $a1, $sp, 0x10
/* 10E68C 800F059C 0C047EB6 */  jal        func_menu_8011FAD8
/* 10E690 800F05A0 AFA2001C */   sw        $v0, 0x1C($sp)
.Lmenu_800F05A4:
/* 10E694 800F05A4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 10E698 800F05A8 8FB3002C */  lw         $s3, 0x2C($sp)
/* 10E69C 800F05AC 8FB20028 */  lw         $s2, 0x28($sp)
/* 10E6A0 800F05B0 8FB10024 */  lw         $s1, 0x24($sp)
/* 10E6A4 800F05B4 8FB00020 */  lw         $s0, 0x20($sp)
/* 10E6A8 800F05B8 03E00008 */  jr         $ra
/* 10E6AC 800F05BC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800F05C0
/* 10E6B0 800F05C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10E6B4 800F05C4 AFB20018 */  sw         $s2, 0x18($sp)
/* 10E6B8 800F05C8 00809021 */  addu       $s2, $a0, $zero
/* 10E6BC 800F05CC AFB10014 */  sw         $s1, 0x14($sp)
/* 10E6C0 800F05D0 26510008 */  addiu      $s1, $s2, 0x8
/* 10E6C4 800F05D4 02202021 */  addu       $a0, $s1, $zero
/* 10E6C8 800F05D8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 10E6CC 800F05DC 0C0401BF */  jal        func_menu_801006FC
/* 10E6D0 800F05E0 AFB00010 */   sw        $s0, 0x10($sp)
/* 10E6D4 800F05E4 00408021 */  addu       $s0, $v0, $zero
/* 10E6D8 800F05E8 3203FFFF */  andi       $v1, $s0, 0xFFFF
/* 10E6DC 800F05EC 2402002A */  addiu      $v0, $zero, 0x2A
/* 10E6E0 800F05F0 14620016 */  bne        $v1, $v0, .Lmenu_800F064C
/* 10E6E4 800F05F4 2602FFFE */   addiu     $v0, $s0, -0x2
/* 10E6E8 800F05F8 8E434618 */  lw         $v1, 0x4618($s2)
/* 10E6EC 800F05FC 30622000 */  andi       $v0, $v1, 0x2000
/* 10E6F0 800F0600 10400007 */  beqz       $v0, .Lmenu_800F0620
/* 10E6F4 800F0604 02202021 */   addu      $a0, $s1, $zero
/* 10E6F8 800F0608 0C0401A6 */  jal        func_menu_80100698
/* 10E6FC 800F060C 2405003B */   addiu     $a1, $zero, 0x3B
/* 10E700 800F0610 2410003B */  addiu      $s0, $zero, 0x3B
/* 10E704 800F0614 8E424618 */  lw         $v0, 0x4618($s2)
/* 10E708 800F0618 0803C190 */  j          .Lmenu_800F0640
/* 10E70C 800F061C 2403DFFF */   addiu     $v1, $zero, -0x2001
.Lmenu_800F0620:
/* 10E710 800F0620 30624000 */  andi       $v0, $v1, 0x4000
/* 10E714 800F0624 10400009 */  beqz       $v0, .Lmenu_800F064C
/* 10E718 800F0628 2602FFFE */   addiu     $v0, $s0, -0x2
/* 10E71C 800F062C 0C0401A6 */  jal        func_menu_80100698
/* 10E720 800F0630 24050034 */   addiu     $a1, $zero, 0x34
/* 10E724 800F0634 24100034 */  addiu      $s0, $zero, 0x34
/* 10E728 800F0638 8E424618 */  lw         $v0, 0x4618($s2)
/* 10E72C 800F063C 2403BFFF */  addiu      $v1, $zero, -0x4001
.Lmenu_800F0640:
/* 10E730 800F0640 00431024 */  and        $v0, $v0, $v1
/* 10E734 800F0644 AE424618 */  sw         $v0, 0x4618($s2)
/* 10E738 800F0648 2602FFFE */  addiu      $v0, $s0, -0x2
.Lmenu_800F064C:
/* 10E73C 800F064C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 10E740 800F0650 2C420002 */  sltiu      $v0, $v0, 0x2
/* 10E744 800F0654 10400025 */  beqz       $v0, .Lmenu_800F06EC
/* 10E748 800F0658 3202FFFF */   andi      $v0, $s0, 0xFFFF
/* 10E74C 800F065C 8E434618 */  lw         $v1, 0x4618($s2)
/* 10E750 800F0660 30620200 */  andi       $v0, $v1, 0x200
/* 10E754 800F0664 10400008 */  beqz       $v0, .Lmenu_800F0688
/* 10E758 800F0668 2402FDFF */   addiu     $v0, $zero, -0x201
/* 10E75C 800F066C 00621024 */  and        $v0, $v1, $v0
/* 10E760 800F0670 AE424618 */  sw         $v0, 0x4618($s2)
/* 10E764 800F0674 26440008 */  addiu      $a0, $s2, 0x8
/* 10E768 800F0678 0C0401A6 */  jal        func_menu_80100698
/* 10E76C 800F067C 24050037 */   addiu     $a1, $zero, 0x37
/* 10E770 800F0680 0803C1BA */  j          .Lmenu_800F06E8
/* 10E774 800F0684 24100037 */   addiu     $s0, $zero, 0x37
.Lmenu_800F0688:
/* 10E778 800F0688 30620400 */  andi       $v0, $v1, 0x400
/* 10E77C 800F068C 10400008 */  beqz       $v0, .Lmenu_800F06B0
/* 10E780 800F0690 2402FBFF */   addiu     $v0, $zero, -0x401
/* 10E784 800F0694 00621024 */  and        $v0, $v1, $v0
/* 10E788 800F0698 AE424618 */  sw         $v0, 0x4618($s2)
/* 10E78C 800F069C 26440008 */  addiu      $a0, $s2, 0x8
/* 10E790 800F06A0 0C0401A6 */  jal        func_menu_80100698
/* 10E794 800F06A4 2405002E */   addiu     $a1, $zero, 0x2E
/* 10E798 800F06A8 0803C1BA */  j          .Lmenu_800F06E8
/* 10E79C 800F06AC 2410002E */   addiu     $s0, $zero, 0x2E
.Lmenu_800F06B0:
/* 10E7A0 800F06B0 30620800 */  andi       $v0, $v1, 0x800
/* 10E7A4 800F06B4 1040000C */  beqz       $v0, .Lmenu_800F06E8
/* 10E7A8 800F06B8 02402021 */   addu      $a0, $s2, $zero
/* 10E7AC 800F06BC 2402F7FF */  addiu      $v0, $zero, -0x801
/* 10E7B0 800F06C0 00621024 */  and        $v0, $v1, $v0
/* 10E7B4 800F06C4 AE424618 */  sw         $v0, 0x4618($s2)
/* 10E7B8 800F06C8 24020001 */  addiu      $v0, $zero, 0x1
/* 10E7BC 800F06CC 0C03C75B */  jal        func_menu_800F1D6C
/* 10E7C0 800F06D0 AE422628 */   sw        $v0, 0x2628($s2)
/* 10E7C4 800F06D4 10400004 */  beqz       $v0, .Lmenu_800F06E8
/* 10E7C8 800F06D8 26440008 */   addiu     $a0, $s2, 0x8
/* 10E7CC 800F06DC 0C0401A6 */  jal        func_menu_80100698
/* 10E7D0 800F06E0 24050031 */   addiu     $a1, $zero, 0x31
/* 10E7D4 800F06E4 24100031 */  addiu      $s0, $zero, 0x31
.Lmenu_800F06E8:
/* 10E7D8 800F06E8 3202FFFF */  andi       $v0, $s0, 0xFFFF
.Lmenu_800F06EC:
/* 10E7DC 800F06EC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 10E7E0 800F06F0 8FB20018 */  lw         $s2, 0x18($sp)
/* 10E7E4 800F06F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 10E7E8 800F06F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 10E7EC 800F06FC 03E00008 */  jr         $ra
/* 10E7F0 800F0700 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F0704
/* 10E7F4 800F0704 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10E7F8 800F0708 AFB20018 */  sw         $s2, 0x18($sp)
/* 10E7FC 800F070C 00809021 */  addu       $s2, $a0, $zero
/* 10E800 800F0710 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10E804 800F0714 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10E808 800F0718 AFB10014 */  sw         $s1, 0x14($sp)
/* 10E80C 800F071C AFB00010 */  sw         $s0, 0x10($sp)
/* 10E810 800F0720 8E424844 */  lw         $v0, 0x4844($s2)
/* 10E814 800F0724 10400015 */  beqz       $v0, .Lmenu_800F077C
/* 10E818 800F0728 00A09821 */   addu      $s3, $a1, $zero
/* 10E81C 800F072C 8E434740 */  lw         $v1, 0x4740($s2)
/* 10E820 800F0730 8C62012C */  lw         $v0, 0x12C($v1)
/* 10E824 800F0734 844401E8 */  lh         $a0, 0x1E8($v0)
/* 10E828 800F0738 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 10E82C 800F073C 0040F809 */  jalr       $v0
/* 10E830 800F0740 00642021 */   addu      $a0, $v1, $a0
/* 10E834 800F0744 8E434844 */  lw         $v1, 0x4844($s2)
/* 10E838 800F0748 8C620000 */  lw         $v0, 0x0($v1)
/* 10E83C 800F074C 844400F0 */  lh         $a0, 0xF0($v0)
/* 10E840 800F0750 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 10E844 800F0754 0040F809 */  jalr       $v0
/* 10E848 800F0758 00642021 */   addu      $a0, $v1, $a0
/* 10E84C 800F075C 8E434844 */  lw         $v1, 0x4844($s2)
/* 10E850 800F0760 10600006 */  beqz       $v1, .Lmenu_800F077C
/* 10E854 800F0764 24050003 */   addiu     $a1, $zero, 0x3
/* 10E858 800F0768 8C620000 */  lw         $v0, 0x0($v1)
/* 10E85C 800F076C 844400D8 */  lh         $a0, 0xD8($v0)
/* 10E860 800F0770 8C4200DC */  lw         $v0, 0xDC($v0)
/* 10E864 800F0774 0040F809 */  jalr       $v0
/* 10E868 800F0778 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F077C:
/* 10E86C 800F077C 02402021 */  addu       $a0, $s2, $zero
/* 10E870 800F0780 9245264A */  lbu        $a1, 0x264A($s2)
/* 10E874 800F0784 0C03C11F */  jal        func_menu_800F047C
/* 10E878 800F0788 00003021 */   addu      $a2, $zero, $zero
/* 10E87C 800F078C 2651474C */  addiu      $s1, $s2, 0x474C
/* 10E880 800F0790 02202021 */  addu       $a0, $s1, $zero
/* 10E884 800F0794 264547AC */  addiu      $a1, $s2, 0x47AC
/* 10E888 800F0798 3270FFFF */  andi       $s0, $s3, 0xFFFF
/* 10E88C 800F079C 0C003053 */  jal        func_8000C14C
/* 10E890 800F07A0 02003021 */   addu      $a2, $s0, $zero
/* 10E894 800F07A4 8E42473C */  lw         $v0, 0x473C($s2)
/* 10E898 800F07A8 8E434740 */  lw         $v1, 0x4740($s2)
/* 10E89C 800F07AC 8E440004 */  lw         $a0, 0x4($s2)
/* 10E8A0 800F07B0 AE424814 */  sw         $v0, 0x4814($s2)
/* 10E8A4 800F07B4 AE434818 */  sw         $v1, 0x4818($s2)
/* 10E8A8 800F07B8 8C830004 */  lw         $v1, 0x4($a0)
/* 10E8AC 800F07BC 8C62009C */  lw         $v0, 0x9C($v1)
/* 10E8B0 800F07C0 84440070 */  lh         $a0, 0x70($v0)
/* 10E8B4 800F07C4 8C420074 */  lw         $v0, 0x74($v0)
/* 10E8B8 800F07C8 0040F809 */  jalr       $v0
/* 10E8BC 800F07CC 00642021 */   addu      $a0, $v1, $a0
/* 10E8C0 800F07D0 26444634 */  addiu      $a0, $s2, 0x4634
/* 10E8C4 800F07D4 8E430004 */  lw         $v1, 0x4($s2)
/* 10E8C8 800F07D8 02002821 */  addu       $a1, $s0, $zero
/* 10E8CC 800F07DC AE424824 */  sw         $v0, 0x4824($s2)
/* 10E8D0 800F07E0 2642021C */  addiu      $v0, $s2, 0x21C
/* 10E8D4 800F07E4 AE424828 */  sw         $v0, 0x4828($s2)
/* 10E8D8 800F07E8 264247B8 */  addiu      $v0, $s2, 0x47B8
/* 10E8DC 800F07EC AE424830 */  sw         $v0, 0x4830($s2)
/* 10E8E0 800F07F0 264247C4 */  addiu      $v0, $s2, 0x47C4
/* 10E8E4 800F07F4 AE42482C */  sw         $v0, 0x482C($s2)
/* 10E8E8 800F07F8 26424638 */  addiu      $v0, $s2, 0x4638
/* 10E8EC 800F07FC A653483C */  sh         $s3, 0x483C($s2)
/* 10E8F0 800F0800 8C63001C */  lw         $v1, 0x1C($v1)
/* 10E8F4 800F0804 265046DC */  addiu      $s0, $s2, 0x46DC
/* 10E8F8 800F0808 AE424834 */  sw         $v0, 0x4834($s2)
/* 10E8FC 800F080C 264246E8 */  addiu      $v0, $s2, 0x46E8
/* 10E900 800F0810 AE424838 */  sw         $v0, 0x4838($s2)
/* 10E904 800F0814 26424760 */  addiu      $v0, $s2, 0x4760
/* 10E908 800F0818 AE51481C */  sw         $s1, 0x481C($s2)
/* 10E90C 800F081C AE424820 */  sw         $v0, 0x4820($s2)
/* 10E910 800F0820 0C03B98D */  jal        func_menu_800EE634
/* 10E914 800F0824 AE434840 */   sw        $v1, 0x4840($s2)
/* 10E918 800F0828 AE424844 */  sw         $v0, 0x4844($s2)
/* 10E91C 800F082C AE020050 */  sw         $v0, 0x50($s0)
/* 10E920 800F0830 8E434844 */  lw         $v1, 0x4844($s2)
/* 10E924 800F0834 26450004 */  addiu      $a1, $s2, 0x4
/* 10E928 800F0838 8C620000 */  lw         $v0, 0x0($v1)
/* 10E92C 800F083C 26464814 */  addiu      $a2, $s2, 0x4814
/* 10E930 800F0840 84440120 */  lh         $a0, 0x120($v0)
/* 10E934 800F0844 8C420124 */  lw         $v0, 0x124($v0)
/* 10E938 800F0848 0040F809 */  jalr       $v0
/* 10E93C 800F084C 00642021 */   addu      $a0, $v1, $a0
/* 10E940 800F0850 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10E944 800F0854 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10E948 800F0858 8FB20018 */  lw         $s2, 0x18($sp)
/* 10E94C 800F085C 8FB10014 */  lw         $s1, 0x14($sp)
/* 10E950 800F0860 8FB00010 */  lw         $s0, 0x10($sp)
/* 10E954 800F0864 03E00008 */  jr         $ra
/* 10E958 800F0868 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F086C
/* 10E95C 800F086C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10E960 800F0870 AFB1001C */  sw         $s1, 0x1C($sp)
/* 10E964 800F0874 00808821 */  addu       $s1, $a0, $zero
/* 10E968 800F0878 AFBF002C */  sw         $ra, 0x2C($sp)
/* 10E96C 800F087C AFB40028 */  sw         $s4, 0x28($sp)
/* 10E970 800F0880 AFB30024 */  sw         $s3, 0x24($sp)
/* 10E974 800F0884 AFB20020 */  sw         $s2, 0x20($sp)
/* 10E978 800F0888 AFB00018 */  sw         $s0, 0x18($sp)
/* 10E97C 800F088C 8E220004 */  lw         $v0, 0x4($s1)
/* 10E980 800F0890 8C530004 */  lw         $s3, 0x4($v0)
/* 10E984 800F0894 A3A00010 */  sb         $zero, 0x10($sp)
/* 10E988 800F0898 A3A00011 */  sb         $zero, 0x11($sp)
/* 10E98C 800F089C A3A00012 */  sb         $zero, 0x12($sp)
/* 10E990 800F08A0 A3A00013 */  sb         $zero, 0x13($sp)
/* 10E994 800F08A4 8E234740 */  lw         $v1, 0x4740($s1)
/* 10E998 800F08A8 8C62012C */  lw         $v0, 0x12C($v1)
/* 10E99C 800F08AC 27A50010 */  addiu      $a1, $sp, 0x10
/* 10E9A0 800F08B0 84440040 */  lh         $a0, 0x40($v0)
/* 10E9A4 800F08B4 8C420044 */  lw         $v0, 0x44($v0)
/* 10E9A8 800F08B8 0040F809 */  jalr       $v0
/* 10E9AC 800F08BC 00642021 */   addu      $a0, $v1, $a0
/* 10E9B0 800F08C0 26340008 */  addiu      $s4, $s1, 0x8
/* 10E9B4 800F08C4 24100001 */  addiu      $s0, $zero, 0x1
/* 10E9B8 800F08C8 AE30484C */  sw         $s0, 0x484C($s1)
.Lmenu_800F08CC:
/* 10E9BC 800F08CC 8E22484C */  lw         $v0, 0x484C($s1)
/* 10E9C0 800F08D0 1040007E */  beqz       $v0, .Lmenu_800F0ACC
/* 10E9C4 800F08D4 02202821 */   addu      $a1, $s1, $zero
/* 10E9C8 800F08D8 8E62009C */  lw         $v0, 0x9C($s3)
/* 10E9CC 800F08DC 84440068 */  lh         $a0, 0x68($v0)
/* 10E9D0 800F08E0 8C42006C */  lw         $v0, 0x6C($v0)
/* 10E9D4 800F08E4 0040F809 */  jalr       $v0
/* 10E9D8 800F08E8 02642021 */   addu      $a0, $s3, $a0
/* 10E9DC 800F08EC 10400004 */  beqz       $v0, .Lmenu_800F0900
/* 10E9E0 800F08F0 00000000 */   nop
/* 10E9E4 800F08F4 8E22484C */  lw         $v0, 0x484C($s1)
/* 10E9E8 800F08F8 14400004 */  bnez       $v0, .Lmenu_800F090C
/* 10E9EC 800F08FC 00000000 */   nop
.Lmenu_800F0900:
/* 10E9F0 800F0900 8E220004 */  lw         $v0, 0x4($s1)
/* 10E9F4 800F0904 0803C2B3 */  j          .Lmenu_800F0ACC
/* 10E9F8 800F0908 AC400000 */   sw        $zero, 0x0($v0)
.Lmenu_800F090C:
/* 10E9FC 800F090C 8E220004 */  lw         $v0, 0x4($s1)
/* 10EA00 800F0910 8C430008 */  lw         $v1, 0x8($v0)
/* 10EA04 800F0914 8E700090 */  lw         $s0, 0x90($s3)
/* 10EA08 800F0918 8C620014 */  lw         $v0, 0x14($v1)
/* 10EA0C 800F091C 02002821 */  addu       $a1, $s0, $zero
/* 10EA10 800F0920 84440070 */  lh         $a0, 0x70($v0)
/* 10EA14 800F0924 8C420074 */  lw         $v0, 0x74($v0)
/* 10EA18 800F0928 0040F809 */  jalr       $v0
/* 10EA1C 800F092C 00642021 */   addu      $a0, $v1, $a0
/* 10EA20 800F0930 8E620098 */  lw         $v0, 0x98($s3)
/* 10EA24 800F0934 1440FFE5 */  bnez       $v0, .Lmenu_800F08CC
/* 10EA28 800F0938 00000000 */   nop
/* 10EA2C 800F093C 0C0401BF */  jal        func_menu_801006FC
/* 10EA30 800F0940 02802021 */   addu      $a0, $s4, $zero
/* 10EA34 800F0944 262446DC */  addiu      $a0, $s1, 0x46DC
/* 10EA38 800F0948 02002821 */  addu       $a1, $s0, $zero
/* 10EA3C 800F094C 0C04573D */  jal        func_menu_80115CF4
/* 10EA40 800F0950 00409021 */   addu      $s2, $v0, $zero
/* 10EA44 800F0954 8E230004 */  lw         $v1, 0x4($s1)
/* 10EA48 800F0958 26244638 */  addiu      $a0, $s1, 0x4638
/* 10EA4C 800F095C AC620000 */  sw         $v0, 0x0($v1)
/* 10EA50 800F0960 8C82009C */  lw         $v0, 0x9C($a0)
/* 10EA54 800F0964 10400005 */  beqz       $v0, .Lmenu_800F097C
/* 10EA58 800F0968 02002821 */   addu      $a1, $s0, $zero
/* 10EA5C 800F096C 0C04548A */  jal        func_menu_80115228
/* 10EA60 800F0970 02002821 */   addu      $a1, $s0, $zero
/* 10EA64 800F0974 0803C27C */  j          .Lmenu_800F09F0
/* 10EA68 800F0978 26243DD8 */   addiu     $a0, $s1, 0x3DD8
.Lmenu_800F097C:
/* 10EA6C 800F097C 8E234844 */  lw         $v1, 0x4844($s1)
/* 10EA70 800F0980 8C620000 */  lw         $v0, 0x0($v1)
/* 10EA74 800F0984 844400F8 */  lh         $a0, 0xF8($v0)
/* 10EA78 800F0988 8C4200FC */  lw         $v0, 0xFC($v0)
/* 10EA7C 800F098C 0040F809 */  jalr       $v0
/* 10EA80 800F0990 00642021 */   addu      $a0, $v1, $a0
/* 10EA84 800F0994 10400003 */  beqz       $v0, .Lmenu_800F09A4
/* 10EA88 800F0998 00000000 */   nop
/* 10EA8C 800F099C 8E220004 */  lw         $v0, 0x4($s1)
/* 10EA90 800F09A0 AC400000 */  sw         $zero, 0x0($v0)
.Lmenu_800F09A4:
/* 10EA94 800F09A4 8E220004 */  lw         $v0, 0x4($s1)
/* 10EA98 800F09A8 8C420000 */  lw         $v0, 0x0($v0)
/* 10EA9C 800F09AC 10400047 */  beqz       $v0, .Lmenu_800F0ACC
/* 10EAA0 800F09B0 00000000 */   nop
/* 10EAA4 800F09B4 8E820008 */  lw         $v0, 0x8($s4)
/* 10EAA8 800F09B8 10400044 */  beqz       $v0, .Lmenu_800F0ACC
/* 10EAAC 800F09BC 00000000 */   nop
/* 10EAB0 800F09C0 0C0401BF */  jal        func_menu_801006FC
/* 10EAB4 800F09C4 02802021 */   addu      $a0, $s4, $zero
/* 10EAB8 800F09C8 3243FFFF */  andi       $v1, $s2, 0xFFFF
/* 10EABC 800F09CC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 10EAC0 800F09D0 50620007 */  beql       $v1, $v0, .Lmenu_800F09F0
/* 10EAC4 800F09D4 26243DD8 */   addiu     $a0, $s1, 0x3DD8
/* 10EAC8 800F09D8 0C03C170 */  jal        func_menu_800F05C0
/* 10EACC 800F09DC 02202021 */   addu      $a0, $s1, $zero
/* 10EAD0 800F09E0 02202021 */  addu       $a0, $s1, $zero
/* 10EAD4 800F09E4 0C03C1C1 */  jal        func_menu_800F0704
/* 10EAD8 800F09E8 3045FFFF */   andi      $a1, $v0, 0xFFFF
/* 10EADC 800F09EC 26243DD8 */  addiu      $a0, $s1, 0x3DD8
.Lmenu_800F09F0:
/* 10EAE0 800F09F0 0C010479 */  jal        func_800411E4
/* 10EAE4 800F09F4 02002821 */   addu      $a1, $s0, $zero
/* 10EAE8 800F09F8 8E234740 */  lw         $v1, 0x4740($s1)
/* 10EAEC 800F09FC 8C62012C */  lw         $v0, 0x12C($v1)
/* 10EAF0 800F0A00 24050001 */  addiu      $a1, $zero, 0x1
/* 10EAF4 800F0A04 844400B8 */  lh         $a0, 0xB8($v0)
/* 10EAF8 800F0A08 8C4200BC */  lw         $v0, 0xBC($v0)
/* 10EAFC 800F0A0C 0040F809 */  jalr       $v0
/* 10EB00 800F0A10 00642021 */   addu      $a0, $v1, $a0
/* 10EB04 800F0A14 8E234740 */  lw         $v1, 0x4740($s1)
/* 10EB08 800F0A18 8C62012C */  lw         $v0, 0x12C($v1)
/* 10EB0C 800F0A1C 24050006 */  addiu      $a1, $zero, 0x6
/* 10EB10 800F0A20 844401D8 */  lh         $a0, 0x1D8($v0)
/* 10EB14 800F0A24 8C4201DC */  lw         $v0, 0x1DC($v0)
/* 10EB18 800F0A28 0040F809 */  jalr       $v0
/* 10EB1C 800F0A2C 00642021 */   addu      $a0, $v1, $a0
/* 10EB20 800F0A30 8E234740 */  lw         $v1, 0x4740($s1)
/* 10EB24 800F0A34 8C62012C */  lw         $v0, 0x12C($v1)
/* 10EB28 800F0A38 24050001 */  addiu      $a1, $zero, 0x1
/* 10EB2C 800F0A3C 844401D0 */  lh         $a0, 0x1D0($v0)
/* 10EB30 800F0A40 8C4201D4 */  lw         $v0, 0x1D4($v0)
/* 10EB34 800F0A44 0040F809 */  jalr       $v0
/* 10EB38 800F0A48 00642021 */   addu      $a0, $v1, $a0
/* 10EB3C 800F0A4C 26244638 */  addiu      $a0, $s1, 0x4638
/* 10EB40 800F0A50 8C82009C */  lw         $v0, 0x9C($a0)
/* 10EB44 800F0A54 10400005 */  beqz       $v0, .Lmenu_800F0A6C
/* 10EB48 800F0A58 00000000 */   nop
/* 10EB4C 800F0A5C 0C0454BB */  jal        func_menu_801152EC
/* 10EB50 800F0A60 00000000 */   nop
/* 10EB54 800F0A64 0803C29D */  j          .Lmenu_800F0A74
/* 10EB58 800F0A68 00000000 */   nop
.Lmenu_800F0A6C:
/* 10EB5C 800F0A6C 0C045784 */  jal        func_menu_80115E10
/* 10EB60 800F0A70 262446DC */   addiu     $a0, $s1, 0x46DC
.Lmenu_800F0A74:
/* 10EB64 800F0A74 8E254740 */  lw         $a1, 0x4740($s1)
/* 10EB68 800F0A78 0C010499 */  jal        func_80041264
/* 10EB6C 800F0A7C 26243DD8 */   addiu     $a0, $s1, 0x3DD8
/* 10EB70 800F0A80 8E234740 */  lw         $v1, 0x4740($s1)
/* 10EB74 800F0A84 8C62012C */  lw         $v0, 0x12C($v1)
/* 10EB78 800F0A88 844401C8 */  lh         $a0, 0x1C8($v0)
/* 10EB7C 800F0A8C 8C4201CC */  lw         $v0, 0x1CC($v0)
/* 10EB80 800F0A90 0040F809 */  jalr       $v0
/* 10EB84 800F0A94 00642021 */   addu      $a0, $v1, $a0
/* 10EB88 800F0A98 8E234740 */  lw         $v1, 0x4740($s1)
/* 10EB8C 800F0A9C 8C62012C */  lw         $v0, 0x12C($v1)
/* 10EB90 800F0AA0 844401E0 */  lh         $a0, 0x1E0($v0)
/* 10EB94 800F0AA4 8C4201E4 */  lw         $v0, 0x1E4($v0)
/* 10EB98 800F0AA8 0040F809 */  jalr       $v0
/* 10EB9C 800F0AAC 00642021 */   addu      $a0, $v1, $a0
/* 10EBA0 800F0AB0 8E62009C */  lw         $v0, 0x9C($s3)
/* 10EBA4 800F0AB4 84440010 */  lh         $a0, 0x10($v0)
/* 10EBA8 800F0AB8 8C420014 */  lw         $v0, 0x14($v0)
/* 10EBAC 800F0ABC 0040F809 */  jalr       $v0
/* 10EBB0 800F0AC0 02642021 */   addu      $a0, $s3, $a0
/* 10EBB4 800F0AC4 0803C233 */  j          .Lmenu_800F08CC
/* 10EBB8 800F0AC8 00000000 */   nop
.Lmenu_800F0ACC:
/* 10EBBC 800F0ACC 8E234740 */  lw         $v1, 0x4740($s1)
/* 10EBC0 800F0AD0 8C62012C */  lw         $v0, 0x12C($v1)
/* 10EBC4 800F0AD4 844401E8 */  lh         $a0, 0x1E8($v0)
/* 10EBC8 800F0AD8 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 10EBCC 800F0ADC 0040F809 */  jalr       $v0
/* 10EBD0 800F0AE0 00642021 */   addu      $a0, $v1, $a0
/* 10EBD4 800F0AE4 8E234844 */  lw         $v1, 0x4844($s1)
/* 10EBD8 800F0AE8 1060000F */  beqz       $v1, .Lmenu_800F0B28
/* 10EBDC 800F0AEC 00000000 */   nop
/* 10EBE0 800F0AF0 8C620000 */  lw         $v0, 0x0($v1)
/* 10EBE4 800F0AF4 844400F0 */  lh         $a0, 0xF0($v0)
/* 10EBE8 800F0AF8 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 10EBEC 800F0AFC 0040F809 */  jalr       $v0
/* 10EBF0 800F0B00 00642021 */   addu      $a0, $v1, $a0
/* 10EBF4 800F0B04 8E234844 */  lw         $v1, 0x4844($s1)
/* 10EBF8 800F0B08 10600006 */  beqz       $v1, .Lmenu_800F0B24
/* 10EBFC 800F0B0C 24050003 */   addiu     $a1, $zero, 0x3
/* 10EC00 800F0B10 8C620000 */  lw         $v0, 0x0($v1)
/* 10EC04 800F0B14 844400D8 */  lh         $a0, 0xD8($v0)
/* 10EC08 800F0B18 8C4200DC */  lw         $v0, 0xDC($v0)
/* 10EC0C 800F0B1C 0040F809 */  jalr       $v0
/* 10EC10 800F0B20 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F0B24:
/* 10EC14 800F0B24 AE204844 */  sw         $zero, 0x4844($s1)
.Lmenu_800F0B28:
/* 10EC18 800F0B28 8E220004 */  lw         $v0, 0x4($s1)
/* 10EC1C 800F0B2C 8C420000 */  lw         $v0, 0x0($v0)
/* 10EC20 800F0B30 10400003 */  beqz       $v0, .Lmenu_800F0B40
/* 10EC24 800F0B34 00000000 */   nop
/* 10EC28 800F0B38 0C03C2D8 */  jal        func_menu_800F0B60
/* 10EC2C 800F0B3C 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800F0B40:
/* 10EC30 800F0B40 8FBF002C */  lw         $ra, 0x2C($sp)
/* 10EC34 800F0B44 8FB40028 */  lw         $s4, 0x28($sp)
/* 10EC38 800F0B48 8FB30024 */  lw         $s3, 0x24($sp)
/* 10EC3C 800F0B4C 8FB20020 */  lw         $s2, 0x20($sp)
/* 10EC40 800F0B50 8FB1001C */  lw         $s1, 0x1C($sp)
/* 10EC44 800F0B54 8FB00018 */  lw         $s0, 0x18($sp)
/* 10EC48 800F0B58 03E00008 */  jr         $ra
/* 10EC4C 800F0B5C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F0B60
/* 10EC50 800F0B60 27BDFEF0 */  addiu      $sp, $sp, -0x110
/* 10EC54 800F0B64 AFB700FC */  sw         $s7, 0xFC($sp)
/* 10EC58 800F0B68 0080B821 */  addu       $s7, $a0, $zero
/* 10EC5C 800F0B6C AFBF0104 */  sw         $ra, 0x104($sp)
/* 10EC60 800F0B70 AFBE0100 */  sw         $fp, 0x100($sp)
/* 10EC64 800F0B74 AFB600F8 */  sw         $s6, 0xF8($sp)
/* 10EC68 800F0B78 AFB500F4 */  sw         $s5, 0xF4($sp)
/* 10EC6C 800F0B7C AFB400F0 */  sw         $s4, 0xF0($sp)
/* 10EC70 800F0B80 AFB300EC */  sw         $s3, 0xEC($sp)
/* 10EC74 800F0B84 AFB200E8 */  sw         $s2, 0xE8($sp)
/* 10EC78 800F0B88 AFB100E4 */  sw         $s1, 0xE4($sp)
/* 10EC7C 800F0B8C AFB000E0 */  sw         $s0, 0xE0($sp)
/* 10EC80 800F0B90 F7B40108 */  sdc1       $f20, 0x108($sp)
/* 10EC84 800F0B94 0C0016DC */  jal        func_80005B70
/* 10EC88 800F0B98 27A40018 */   addiu     $a0, $sp, 0x18
/* 10EC8C 800F0B9C 0C03B3B4 */  jal        func_menu_800ECED0
/* 10EC90 800F0BA0 27A40048 */   addiu     $a0, $sp, 0x48
/* 10EC94 800F0BA4 0C03B39C */  jal        func_menu_800ECE70
/* 10EC98 800F0BA8 27A40050 */   addiu     $a0, $sp, 0x50
/* 10EC9C 800F0BAC 0C03B3C4 */  jal        func_menu_800ECF10
/* 10ECA0 800F0BB0 27A40078 */   addiu     $a0, $sp, 0x78
/* 10ECA4 800F0BB4 8EF30004 */  lw         $s3, 0x4($s7)
/* 10ECA8 800F0BB8 8E630028 */  lw         $v1, 0x28($s3)
/* 10ECAC 800F0BBC 10600003 */  beqz       $v1, .Lmenu_800F0BCC
/* 10ECB0 800F0BC0 24020002 */   addiu     $v0, $zero, 0x2
/* 10ECB4 800F0BC4 14620003 */  bne        $v1, $v0, .Lmenu_800F0BD4
/* 10ECB8 800F0BC8 26F002A8 */   addiu     $s0, $s7, 0x2A8
.Lmenu_800F0BCC:
/* 10ECBC 800F0BCC AE600024 */  sw         $zero, 0x24($s3)
/* 10ECC0 800F0BD0 26F002A8 */  addiu      $s0, $s7, 0x2A8
.Lmenu_800F0BD4:
/* 10ECC4 800F0BD4 00008821 */  addu       $s1, $zero, $zero
/* 10ECC8 800F0BD8 02609021 */  addu       $s2, $s3, $zero
.Lmenu_800F0BDC:
/* 10ECCC 800F0BDC 8E020000 */  lw         $v0, 0x0($s0)
/* 10ECD0 800F0BE0 0222102B */  sltu       $v0, $s1, $v0
/* 10ECD4 800F0BE4 1040000A */  beqz       $v0, .Lmenu_800F0C10
/* 10ECD8 800F0BE8 02002021 */   addu      $a0, $s0, $zero
/* 10ECDC 800F0BEC 0C03BB67 */  jal        func_menu_800EED9C
/* 10ECE0 800F0BF0 02202821 */   addu      $a1, $s1, $zero
/* 10ECE4 800F0BF4 264403A4 */  addiu      $a0, $s2, 0x3A4
/* 10ECE8 800F0BF8 24450014 */  addiu      $a1, $v0, 0x14
/* 10ECEC 800F0BFC 0C006E07 */  jal        strncpy
/* 10ECF0 800F0C00 2406022D */   addiu     $a2, $zero, 0x22D
/* 10ECF4 800F0C04 2652022D */  addiu      $s2, $s2, 0x22D
/* 10ECF8 800F0C08 0803C2F7 */  j          .Lmenu_800F0BDC
/* 10ECFC 800F0C0C 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800F0C10:
/* 10ED00 800F0C10 26E42628 */  addiu      $a0, $s7, 0x2628
/* 10ED04 800F0C14 8E020000 */  lw         $v0, 0x0($s0)
/* 10ED08 800F0C18 02002821 */  addu       $a1, $s0, $zero
/* 10ED0C 800F0C1C 0C03C9E5 */  jal        func_menu_800F2794
/* 10ED10 800F0C20 AE6203A0 */   sw        $v0, 0x3A0($s3)
/* 10ED14 800F0C24 26660E85 */  addiu      $a2, $s3, 0xE85
/* 10ED18 800F0C28 26030024 */  addiu      $v1, $s0, 0x24
/* 10ED1C 800F0C2C 00661025 */  or         $v0, $v1, $a2
/* 10ED20 800F0C30 30420003 */  andi       $v0, $v0, 0x3
/* 10ED24 800F0C34 10400016 */  beqz       $v0, .Lmenu_800F0C90
/* 10ED28 800F0C38 26020444 */   addiu     $v0, $s0, 0x444
.Lmenu_800F0C3C:
/* 10ED2C 800F0C3C 88680000 */  lwl        $t0, 0x0($v1)
/* 10ED30 800F0C40 98680003 */  lwr        $t0, 0x3($v1)
/* 10ED34 800F0C44 88690004 */  lwl        $t1, 0x4($v1)
/* 10ED38 800F0C48 98690007 */  lwr        $t1, 0x7($v1)
/* 10ED3C 800F0C4C 886A0008 */  lwl        $t2, 0x8($v1)
/* 10ED40 800F0C50 986A000B */  lwr        $t2, 0xB($v1)
/* 10ED44 800F0C54 886B000C */  lwl        $t3, 0xC($v1)
/* 10ED48 800F0C58 986B000F */  lwr        $t3, 0xF($v1)
/* 10ED4C 800F0C5C A8C80000 */  swl        $t0, 0x0($a2)
/* 10ED50 800F0C60 B8C80003 */  swr        $t0, 0x3($a2)
/* 10ED54 800F0C64 A8C90004 */  swl        $t1, 0x4($a2)
/* 10ED58 800F0C68 B8C90007 */  swr        $t1, 0x7($a2)
/* 10ED5C 800F0C6C A8CA0008 */  swl        $t2, 0x8($a2)
/* 10ED60 800F0C70 B8CA000B */  swr        $t2, 0xB($a2)
/* 10ED64 800F0C74 A8CB000C */  swl        $t3, 0xC($a2)
/* 10ED68 800F0C78 B8CB000F */  swr        $t3, 0xF($a2)
/* 10ED6C 800F0C7C 24630010 */  addiu      $v1, $v1, 0x10
/* 10ED70 800F0C80 1462FFEE */  bne        $v1, $v0, .Lmenu_800F0C3C
/* 10ED74 800F0C84 24C60010 */   addiu     $a2, $a2, 0x10
/* 10ED78 800F0C88 0803C32F */  j          .Lmenu_800F0CBC
/* 10ED7C 800F0C8C 00000000 */   nop
.Lmenu_800F0C90:
/* 10ED80 800F0C90 8C680000 */  lw         $t0, 0x0($v1)
/* 10ED84 800F0C94 8C690004 */  lw         $t1, 0x4($v1)
/* 10ED88 800F0C98 8C6A0008 */  lw         $t2, 0x8($v1)
/* 10ED8C 800F0C9C 8C6B000C */  lw         $t3, 0xC($v1)
/* 10ED90 800F0CA0 ACC80000 */  sw         $t0, 0x0($a2)
/* 10ED94 800F0CA4 ACC90004 */  sw         $t1, 0x4($a2)
/* 10ED98 800F0CA8 ACCA0008 */  sw         $t2, 0x8($a2)
/* 10ED9C 800F0CAC ACCB000C */  sw         $t3, 0xC($a2)
/* 10EDA0 800F0CB0 24630010 */  addiu      $v1, $v1, 0x10
/* 10EDA4 800F0CB4 1462FFF6 */  bne        $v1, $v0, .Lmenu_800F0C90
/* 10EDA8 800F0CB8 24C60010 */   addiu     $a2, $a2, 0x10
.Lmenu_800F0CBC:
/* 10EDAC 800F0CBC 88680000 */  lwl        $t0, 0x0($v1)
/* 10EDB0 800F0CC0 98680003 */  lwr        $t0, 0x3($v1)
/* 10EDB4 800F0CC4 88690004 */  lwl        $t1, 0x4($v1)
/* 10EDB8 800F0CC8 98690007 */  lwr        $t1, 0x7($v1)
/* 10EDBC 800F0CCC 886A0008 */  lwl        $t2, 0x8($v1)
/* 10EDC0 800F0CD0 986A000B */  lwr        $t2, 0xB($v1)
/* 10EDC4 800F0CD4 A8C80000 */  swl        $t0, 0x0($a2)
/* 10EDC8 800F0CD8 B8C80003 */  swr        $t0, 0x3($a2)
/* 10EDCC 800F0CDC A8C90004 */  swl        $t1, 0x4($a2)
/* 10EDD0 800F0CE0 B8C90007 */  swr        $t1, 0x7($a2)
/* 10EDD4 800F0CE4 A8CA0008 */  swl        $t2, 0x8($a2)
/* 10EDD8 800F0CE8 B8CA000B */  swr        $t2, 0xB($a2)
/* 10EDDC 800F0CEC 96630022 */  lhu        $v1, 0x22($s3)
/* 10EDE0 800F0CF0 34620004 */  ori        $v0, $v1, 0x4
/* 10EDE4 800F0CF4 A6620022 */  sh         $v0, 0x22($s3)
/* 10EDE8 800F0CF8 8EE22CA4 */  lw         $v0, 0x2CA4($s7)
/* 10EDEC 800F0CFC 1440002E */  bnez       $v0, .Lmenu_800F0DB8
/* 10EDF0 800F0D00 34620204 */   ori       $v0, $v1, 0x204
/* 10EDF4 800F0D04 A6620022 */  sh         $v0, 0x22($s3)
/* 10EDF8 800F0D08 24020006 */  addiu      $v0, $zero, 0x6
/* 10EDFC 800F0D0C 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* 10EE00 800F0D10 24060001 */  addiu      $a2, $zero, 0x1
/* 10EE04 800F0D14 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* 10EE08 800F0D18 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* 10EE0C 800F0D1C 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* 10EE10 800F0D20 AE620104 */  sw         $v0, 0x104($s3)
/* 10EE14 800F0D24 AE660028 */  sw         $a2, 0x28($s3)
/* 10EE18 800F0D28 00862021 */  addu       $a0, $a0, $a2
/* 10EE1C 800F0D2C 308403FF */  andi       $a0, $a0, 0x3FF
/* 10EE20 800F0D30 00C41004 */  sllv       $v0, $a0, $a2
/* 10EE24 800F0D34 00431021 */  addu       $v0, $v0, $v1
/* 10EE28 800F0D38 94420000 */  lhu        $v0, 0x0($v0)
/* 10EE2C 800F0D3C 8EE33DBC */  lw         $v1, 0x3DBC($s7)
/* 10EE30 800F0D40 30420003 */  andi       $v0, $v0, 0x3
/* 10EE34 800F0D44 00021080 */  sll        $v0, $v0, 2
/* 10EE38 800F0D48 00621821 */  addu       $v1, $v1, $v0
/* 10EE3C 800F0D4C 8C620048 */  lw         $v0, 0x48($v1)
/* 10EE40 800F0D50 10400014 */  beqz       $v0, .Lmenu_800F0DA4
/* 10EE44 800F0D54 ACA4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a1)
/* 10EE48 800F0D58 88480004 */  lwl        $t0, 0x4($v0)
/* 10EE4C 800F0D5C 98480007 */  lwr        $t0, 0x7($v0)
/* 10EE50 800F0D60 88490008 */  lwl        $t1, 0x8($v0)
/* 10EE54 800F0D64 9849000B */  lwr        $t1, 0xB($v0)
/* 10EE58 800F0D68 AA680044 */  swl        $t0, 0x44($s3)
/* 10EE5C 800F0D6C BA680047 */  swr        $t0, 0x47($s3)
/* 10EE60 800F0D70 AA690048 */  swl        $t1, 0x48($s3)
/* 10EE64 800F0D74 BA69004B */  swr        $t1, 0x4B($s3)
/* 10EE68 800F0D78 8848000C */  lwl        $t0, 0xC($v0)
/* 10EE6C 800F0D7C 9848000F */  lwr        $t0, 0xF($v0)
/* 10EE70 800F0D80 88490010 */  lwl        $t1, 0x10($v0)
/* 10EE74 800F0D84 98490013 */  lwr        $t1, 0x13($v0)
/* 10EE78 800F0D88 AA68004C */  swl        $t0, 0x4C($s3)
/* 10EE7C 800F0D8C BA68004F */  swr        $t0, 0x4F($s3)
/* 10EE80 800F0D90 AA690050 */  swl        $t1, 0x50($s3)
/* 10EE84 800F0D94 BA690053 */  swr        $t1, 0x53($s3)
/* 10EE88 800F0D98 AE66003C */  sw         $a2, 0x3C($s3)
/* 10EE8C 800F0D9C 8C42002C */  lw         $v0, 0x2C($v0)
/* 10EE90 800F0DA0 AE620040 */  sw         $v0, 0x40($s3)
.Lmenu_800F0DA4:
/* 10EE94 800F0DA4 24020063 */  addiu      $v0, $zero, 0x63
/* 10EE98 800F0DA8 A2620031 */  sb         $v0, 0x31($s3)
/* 10EE9C 800F0DAC 24020030 */  addiu      $v0, $zero, 0x30
/* 10EEA0 800F0DB0 A2620032 */  sb         $v0, 0x32($s3)
/* 10EEA4 800F0DB4 A2600033 */  sb         $zero, 0x33($s3)
.Lmenu_800F0DB8:
/* 10EEA8 800F0DB8 8E620024 */  lw         $v0, 0x24($s3)
/* 10EEAC 800F0DBC 30420020 */  andi       $v0, $v0, 0x20
/* 10EEB0 800F0DC0 10400007 */  beqz       $v0, .Lmenu_800F0DE0
/* 10EEB4 800F0DC4 26640031 */   addiu     $a0, $s3, 0x31
/* 10EEB8 800F0DC8 3C05800D */  lui        $a1, %hi(D_menu_800CBDF4)
/* 10EEBC 800F0DCC 0C0006A2 */  jal        func_80001A88
/* 10EEC0 800F0DD0 24A5BDF4 */   addiu     $a1, $a1, %lo(D_menu_800CBDF4)
/* 10EEC4 800F0DD4 14400002 */  bnez       $v0, .Lmenu_800F0DE0
/* 10EEC8 800F0DD8 24020001 */   addiu     $v0, $zero, 0x1
/* 10EECC 800F0DDC AE620040 */  sw         $v0, 0x40($s3)
.Lmenu_800F0DE0:
/* 10EED0 800F0DE0 8E630104 */  lw         $v1, 0x104($s3)
/* 10EED4 800F0DE4 8EE22CA4 */  lw         $v0, 0x2CA4($s7)
/* 10EED8 800F0DE8 0043102B */  sltu       $v0, $v0, $v1
/* 10EEDC 800F0DEC 10400025 */  beqz       $v0, .Lmenu_800F0E84
/* 10EEE0 800F0DF0 26E43DB0 */   addiu     $a0, $s7, 0x3DB0
/* 10EEE4 800F0DF4 0C016427 */  jal        func_8005909C
/* 10EEE8 800F0DF8 26650031 */   addiu     $a1, $s3, 0x31
/* 10EEEC 800F0DFC 00402021 */  addu       $a0, $v0, $zero
/* 10EEF0 800F0E00 8C830014 */  lw         $v1, 0x14($a0)
/* 10EEF4 800F0E04 8E620104 */  lw         $v0, 0x104($s3)
/* 10EEF8 800F0E08 0062102B */  sltu       $v0, $v1, $v0
/* 10EEFC 800F0E0C 54400001 */  bnel       $v0, $zero, .Lmenu_800F0E14
/* 10EF00 800F0E10 AE630104 */   sw        $v1, 0x104($s3)
.Lmenu_800F0E14:
/* 10EF04 800F0E14 26740108 */  addiu      $s4, $s3, 0x108
/* 10EF08 800F0E18 00008821 */  addu       $s1, $zero, $zero
/* 10EF0C 800F0E1C 24050002 */  addiu      $a1, $zero, 0x2
/* 10EF10 800F0E20 26630161 */  addiu      $v1, $s3, 0x161
.Lmenu_800F0E24:
/* 10EF14 800F0E24 8E620104 */  lw         $v0, 0x104($s3)
/* 10EF18 800F0E28 0222102B */  sltu       $v0, $s1, $v0
/* 10EF1C 800F0E2C 10400015 */  beqz       $v0, .Lmenu_800F0E84
/* 10EF20 800F0E30 26310001 */   addiu     $s1, $s1, 0x1
/* 10EF24 800F0E34 88880018 */  lwl        $t0, 0x18($a0)
/* 10EF28 800F0E38 9888001B */  lwr        $t0, 0x1B($a0)
/* 10EF2C 800F0E3C 8889001C */  lwl        $t1, 0x1C($a0)
/* 10EF30 800F0E40 9889001F */  lwr        $t1, 0x1F($a0)
/* 10EF34 800F0E44 AA880000 */  swl        $t0, 0x0($s4)
/* 10EF38 800F0E48 BA880003 */  swr        $t0, 0x3($s4)
/* 10EF3C 800F0E4C AA890004 */  swl        $t1, 0x4($s4)
/* 10EF40 800F0E50 BA890007 */  swr        $t1, 0x7($s4)
/* 10EF44 800F0E54 A060FFAF */  sb         $zero, -0x51($v1)
/* 10EF48 800F0E58 AC65FFB7 */  sw         $a1, -0x49($v1)
/* 10EF4C 800F0E5C A060FFFB */  sb         $zero, -0x5($v1)
/* 10EF50 800F0E60 A060FFFC */  sb         $zero, -0x4($v1)
/* 10EF54 800F0E64 A060FFFD */  sb         $zero, -0x3($v1)
/* 10EF58 800F0E68 A060FFFE */  sb         $zero, -0x2($v1)
/* 10EF5C 800F0E6C A060FFFF */  sb         $zero, -0x1($v1)
/* 10EF60 800F0E70 A0600000 */  sb         $zero, 0x0($v1)
/* 10EF64 800F0E74 2463005C */  addiu      $v1, $v1, 0x5C
/* 10EF68 800F0E78 2694005C */  addiu      $s4, $s4, 0x5C
/* 10EF6C 800F0E7C 0803C389 */  j          .Lmenu_800F0E24
/* 10EF70 800F0E80 24840008 */   addiu     $a0, $a0, 0x8
.Lmenu_800F0E84:
/* 10EF74 800F0E84 27B00028 */  addiu      $s0, $sp, 0x28
/* 10EF78 800F0E88 02002021 */  addu       $a0, $s0, $zero
/* 10EF7C 800F0E8C 00002821 */  addu       $a1, $zero, $zero
/* 10EF80 800F0E90 0C000697 */  jal        func_80001A5C
/* 10EF84 800F0E94 2406001E */   addiu     $a2, $zero, 0x1E
/* 10EF88 800F0E98 27A40018 */  addiu      $a0, $sp, 0x18
/* 10EF8C 800F0E9C 02002821 */  addu       $a1, $s0, $zero
/* 10EF90 800F0EA0 0C0016F6 */  jal        func_80005BD8
/* 10EF94 800F0EA4 2406000E */   addiu     $a2, $zero, 0xE
/* 10EF98 800F0EA8 8EE32CA4 */  lw         $v1, 0x2CA4($s7)
/* 10EF9C 800F0EAC 8E620104 */  lw         $v0, 0x104($s3)
/* 10EFA0 800F0EB0 26740108 */  addiu      $s4, $s3, 0x108
/* 10EFA4 800F0EB4 0043102B */  sltu       $v0, $v0, $v1
/* 10EFA8 800F0EB8 10400002 */  beqz       $v0, .Lmenu_800F0EC4
/* 10EFAC 800F0EBC AE630330 */   sw        $v1, 0x330($s3)
/* 10EFB0 800F0EC0 AE630104 */  sw         $v1, 0x104($s3)
.Lmenu_800F0EC4:
/* 10EFB4 800F0EC4 26F02CFC */  addiu      $s0, $s7, 0x2CFC
/* 10EFB8 800F0EC8 0C0362CC */  jal        func_menu_800D8B30
/* 10EFBC 800F0ECC 02002021 */   addu      $a0, $s0, $zero
/* 10EFC0 800F0ED0 1040000A */  beqz       $v0, .Lmenu_800F0EFC
/* 10EFC4 800F0ED4 3C02800D */   lui       $v0, %hi(D_menu_800CBDF8)
/* 10EFC8 800F0ED8 0C0371E9 */  jal        func_menu_800DC7A4
/* 10EFCC 800F0EDC 26E42CB0 */   addiu     $a0, $s7, 0x2CB0
/* 10EFD0 800F0EE0 0C0362CF */  jal        func_menu_800D8B3C
/* 10EFD4 800F0EE4 02002021 */   addu      $a0, $s0, $zero
/* 10EFD8 800F0EE8 0C035379 */  jal        func_menu_800D4DE4
/* 10EFDC 800F0EEC 26E43C88 */   addiu     $a0, $s7, 0x3C88
/* 10EFE0 800F0EF0 0C037DA2 */  jal        func_menu_800DF688
/* 10EFE4 800F0EF4 26E42CC4 */   addiu     $a0, $s7, 0x2CC4
/* 10EFE8 800F0EF8 3C02800D */  lui        $v0, %hi(D_menu_800CBDF8)
.Lmenu_800F0EFC:
/* 10EFEC 800F0EFC 2445BDF8 */  addiu      $a1, $v0, %lo(D_menu_800CBDF8)
/* 10EFF0 800F0F00 10A00007 */  beqz       $a1, .Lmenu_800F0F20
/* 10EFF4 800F0F04 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 10EFF8 800F0F08 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 10EFFC 800F0F0C 02002021 */  addu       $a0, $s0, $zero
/* 10F000 800F0F10 0C000708 */  jal        func_80001C20
/* 10F004 800F0F14 24060100 */   addiu     $a2, $zero, 0x100
/* 10F008 800F0F18 0803C3CA */  j          .Lmenu_800F0F28
/* 10F00C 800F0F1C A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F0F20:
/* 10F010 800F0F20 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 10F014 800F0F24 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F0F28:
/* 10F018 800F0F28 26F22CC4 */  addiu      $s2, $s7, 0x2CC4
/* 10F01C 800F0F2C 02402021 */  addu       $a0, $s2, $zero
/* 10F020 800F0F30 8EE20004 */  lw         $v0, 0x4($s7)
/* 10F024 800F0F34 3C05800D */  lui        $a1, %hi(D_menu_800CBE0C)
/* 10F028 800F0F38 8C46001C */  lw         $a2, 0x1C($v0)
/* 10F02C 800F0F3C 0C037E35 */  jal        func_menu_800DF8D4
/* 10F030 800F0F40 24A5BE0C */   addiu     $a1, $a1, %lo(D_menu_800CBE0C)
/* 10F034 800F0F44 26F03C88 */  addiu      $s0, $s7, 0x3C88
/* 10F038 800F0F48 8EE5473C */  lw         $a1, 0x473C($s7)
/* 10F03C 800F0F4C 8EE64740 */  lw         $a2, 0x4740($s7)
/* 10F040 800F0F50 0C035368 */  jal        func_menu_800D4DA0
/* 10F044 800F0F54 02002021 */   addu      $a0, $s0, $zero
/* 10F048 800F0F58 02002021 */  addu       $a0, $s0, $zero
/* 10F04C 800F0F5C 3C05800D */  lui        $a1, %hi(D_menu_800CBE1C)
/* 10F050 800F0F60 8EE20004 */  lw         $v0, 0x4($s7)
/* 10F054 800F0F64 24A5BE1C */  addiu      $a1, $a1, %lo(D_menu_800CBE1C)
/* 10F058 800F0F68 8C46001C */  lw         $a2, 0x1C($v0)
/* 10F05C 800F0F6C 0C0354AD */  jal        func_menu_800D52B4
/* 10F060 800F0F70 00003821 */   addu      $a3, $zero, $zero
/* 10F064 800F0F74 02002021 */  addu       $a0, $s0, $zero
/* 10F068 800F0F78 8EE20004 */  lw         $v0, 0x4($s7)
/* 10F06C 800F0F7C 3C05800D */  lui        $a1, %hi(D_menu_800CBE2C)
/* 10F070 800F0F80 8C46001C */  lw         $a2, 0x1C($v0)
/* 10F074 800F0F84 0C035401 */  jal        func_menu_800D5004
/* 10F078 800F0F88 24A5BE2C */   addiu     $a1, $a1, %lo(D_menu_800CBE2C)
/* 10F07C 800F0F8C 26F12CFC */  addiu      $s1, $s7, 0x2CFC
/* 10F080 800F0F90 02202021 */  addu       $a0, $s1, $zero
/* 10F084 800F0F94 AFB00010 */  sw         $s0, 0x10($sp)
/* 10F088 800F0F98 8EE5473C */  lw         $a1, 0x473C($s7)
/* 10F08C 800F0F9C 8EE64740 */  lw         $a2, 0x4740($s7)
/* 10F090 800F0FA0 0C036258 */  jal        func_menu_800D8960
/* 10F094 800F0FA4 02403821 */   addu      $a3, $s2, $zero
/* 10F098 800F0FA8 3C02800D */  lui        $v0, %hi(D_menu_800CBD70)
/* 10F09C 800F0FAC 2445BD70 */  addiu      $a1, $v0, %lo(D_menu_800CBD70)
/* 10F0A0 800F0FB0 10A00008 */  beqz       $a1, .Lmenu_800F0FD4
/* 10F0A4 800F0FB4 A22000D8 */   sb        $zero, 0xD8($s1)
/* 10F0A8 800F0FB8 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 10F0AC 800F0FBC 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 10F0B0 800F0FC0 02002021 */  addu       $a0, $s0, $zero
/* 10F0B4 800F0FC4 0C000708 */  jal        func_80001C20
/* 10F0B8 800F0FC8 24060100 */   addiu     $a2, $zero, 0x100
/* 10F0BC 800F0FCC 0803C3F7 */  j          .Lmenu_800F0FDC
/* 10F0C0 800F0FD0 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F0FD4:
/* 10F0C4 800F0FD4 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 10F0C8 800F0FD8 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F0FDC:
/* 10F0CC 800F0FDC 0C03C62E */  jal        func_menu_800F18B8
/* 10F0D0 800F0FE0 02E02021 */   addu      $a0, $s7, $zero
/* 10F0D4 800F0FE4 02E02021 */  addu       $a0, $s7, $zero
/* 10F0D8 800F0FE8 0C03C56F */  jal        func_menu_800F15BC
/* 10F0DC 800F0FEC 24050001 */   addiu     $a1, $zero, 0x1
/* 10F0E0 800F0FF0 00008821 */  addu       $s1, $zero, $zero
/* 10F0E4 800F0FF4 27B50078 */  addiu      $s5, $sp, 0x78
/* 10F0E8 800F0FF8 241E00FF */  addiu      $fp, $zero, 0xFF
/* 10F0EC 800F0FFC 27A80048 */  addiu      $t0, $sp, 0x48
/* 10F0F0 800F1000 3C09FF00 */  lui        $t1, (0xFF00FFFF >> 16)
/* 10F0F4 800F1004 3529FFFF */  ori        $t1, $t1, (0xFF00FFFF & 0xFFFF)
/* 10F0F8 800F1008 3C0AFFFF */  lui        $t2, (0xFFFF00FF >> 16)
/* 10F0FC 800F100C 354A00FF */  ori        $t2, $t2, (0xFFFF00FF & 0xFFFF)
/* 10F100 800F1010 27AB0050 */  addiu      $t3, $sp, 0x50
/* 10F104 800F1014 02609021 */  addu       $s2, $s3, $zero
/* 10F108 800F1018 3C01800D */  lui        $at, %hi(D_menu_800CBE3C)
/* 10F10C 800F101C C434BE3C */  lwc1       $f20, %lo(D_menu_800CBE3C)($at)
/* 10F110 800F1020 26960054 */  addiu      $s6, $s4, 0x54
/* 10F114 800F1024 AFA800C8 */  sw         $t0, 0xC8($sp)
/* 10F118 800F1028 AFA900CC */  sw         $t1, 0xCC($sp)
/* 10F11C 800F102C AFAA00D0 */  sw         $t2, 0xD0($sp)
/* 10F120 800F1030 AFAB00D4 */  sw         $t3, 0xD4($sp)
/* 10F124 800F1034 AFB700D8 */  sw         $s7, 0xD8($sp)
.Lmenu_800F1038:
/* 10F128 800F1038 8EE22CA4 */  lw         $v0, 0x2CA4($s7)
/* 10F12C 800F103C 0222102B */  sltu       $v0, $s1, $v0
/* 10F130 800F1040 1040006A */  beqz       $v0, .Lmenu_800F11EC
/* 10F134 800F1044 00002021 */   addu      $a0, $zero, $zero
/* 10F138 800F1048 8FA800D8 */  lw         $t0, 0xD8($sp)
/* 10F13C 800F104C 8D102CA8 */  lw         $s0, 0x2CA8($t0)
/* 10F140 800F1050 0C03B400 */  jal        func_menu_800ED000
/* 10F144 800F1054 02A02021 */   addu      $a0, $s5, $zero
/* 10F148 800F1058 240A0080 */  addiu      $t2, $zero, 0x80
/* 10F14C 800F105C 01405821 */  addu       $t3, $t2, $zero
/* 10F150 800F1060 01404021 */  addu       $t0, $t2, $zero
/* 10F154 800F1064 8FA400C8 */  lw         $a0, 0xC8($sp)
/* 10F158 800F1068 8FA900D8 */  lw         $t1, 0xD8($sp)
/* 10F15C 800F106C 26310001 */  addiu      $s1, $s1, 0x1
/* 10F160 800F1070 A3AA0060 */  sb         $t2, 0x60($sp)
/* 10F164 800F1074 A3AB0061 */  sb         $t3, 0x61($sp)
/* 10F168 800F1078 A3A80062 */  sb         $t0, 0x62($sp)
/* 10F16C 800F107C A3BE0063 */  sb         $fp, 0x63($sp)
/* 10F170 800F1080 25290004 */  addiu      $t1, $t1, 0x4
/* 10F174 800F1084 AFA900D8 */  sw         $t1, 0xD8($sp)
/* 10F178 800F1088 8BA90060 */  lwl        $t1, 0x60($sp)
/* 10F17C 800F108C 9BA90063 */  lwr        $t1, 0x63($sp)
/* 10F180 800F1090 ABA900C0 */  swl        $t1, 0xC0($sp)
/* 10F184 800F1094 BBA900C3 */  swr        $t1, 0xC3($sp)
/* 10F188 800F1098 240BFF00 */  addiu      $t3, $zero, -0x100
/* 10F18C 800F109C 93A500C0 */  lbu        $a1, 0xC0($sp)
/* 10F190 800F10A0 93A200C1 */  lbu        $v0, 0xC1($sp)
/* 10F194 800F10A4 8FA900CC */  lw         $t1, 0xCC($sp)
/* 10F198 800F10A8 8FAA00D0 */  lw         $t2, 0xD0($sp)
/* 10F19C 800F10AC 00052E00 */  sll        $a1, $a1, 24
/* 10F1A0 800F10B0 00A92824 */  and        $a1, $a1, $t1
/* 10F1A4 800F10B4 00021400 */  sll        $v0, $v0, 16
/* 10F1A8 800F10B8 00A22825 */  or         $a1, $a1, $v0
/* 10F1AC 800F10BC 93A200C2 */  lbu        $v0, 0xC2($sp)
/* 10F1B0 800F10C0 00AA2824 */  and        $a1, $a1, $t2
/* 10F1B4 800F10C4 00021200 */  sll        $v0, $v0, 8
/* 10F1B8 800F10C8 00A22825 */  or         $a1, $a1, $v0
/* 10F1BC 800F10CC 93A200C3 */  lbu        $v0, 0xC3($sp)
/* 10F1C0 800F10D0 00AB2824 */  and        $a1, $a1, $t3
/* 10F1C4 800F10D4 0C03B3BB */  jal        func_menu_800ECEEC
/* 10F1C8 800F10D8 00A22825 */   or        $a1, $a1, $v0
/* 10F1CC 800F10DC 8FA500C8 */  lw         $a1, 0xC8($sp)
/* 10F1D0 800F10E0 0C03B407 */  jal        func_menu_800ED01C
/* 10F1D4 800F10E4 02A02021 */   addu      $a0, $s5, $zero
/* 10F1D8 800F10E8 A3BE0060 */  sb         $fp, 0x60($sp)
/* 10F1DC 800F10EC A3BE0061 */  sb         $fp, 0x61($sp)
/* 10F1E0 800F10F0 A3BE0062 */  sb         $fp, 0x62($sp)
/* 10F1E4 800F10F4 A3BE0063 */  sb         $fp, 0x63($sp)
/* 10F1E8 800F10F8 8BA80060 */  lwl        $t0, 0x60($sp)
/* 10F1EC 800F10FC 9BA80063 */  lwr        $t0, 0x63($sp)
/* 10F1F0 800F1100 ABA800C0 */  swl        $t0, 0xC0($sp)
/* 10F1F4 800F1104 BBA800C3 */  swr        $t0, 0xC3($sp)
/* 10F1F8 800F1108 240AFF00 */  addiu      $t2, $zero, -0x100
/* 10F1FC 800F110C 93A500C0 */  lbu        $a1, 0xC0($sp)
/* 10F200 800F1110 8FA400D4 */  lw         $a0, 0xD4($sp)
/* 10F204 800F1114 93A200C1 */  lbu        $v0, 0xC1($sp)
/* 10F208 800F1118 8FA800CC */  lw         $t0, 0xCC($sp)
/* 10F20C 800F111C 8FA900D0 */  lw         $t1, 0xD0($sp)
/* 10F210 800F1120 00052E00 */  sll        $a1, $a1, 24
/* 10F214 800F1124 00A82824 */  and        $a1, $a1, $t0
/* 10F218 800F1128 00021400 */  sll        $v0, $v0, 16
/* 10F21C 800F112C 00A22825 */  or         $a1, $a1, $v0
/* 10F220 800F1130 93A200C2 */  lbu        $v0, 0xC2($sp)
/* 10F224 800F1134 00A92824 */  and        $a1, $a1, $t1
/* 10F228 800F1138 00021200 */  sll        $v0, $v0, 8
/* 10F22C 800F113C 00A22825 */  or         $a1, $a1, $v0
/* 10F230 800F1140 93A200C3 */  lbu        $v0, 0xC3($sp)
/* 10F234 800F1144 00AA2824 */  and        $a1, $a1, $t2
/* 10F238 800F1148 0C03B3BB */  jal        func_menu_800ECEEC
/* 10F23C 800F114C 00A22825 */   or        $a1, $a1, $v0
/* 10F240 800F1150 8FA400D4 */  lw         $a0, 0xD4($sp)
/* 10F244 800F1154 27A50068 */  addiu      $a1, $sp, 0x68
/* 10F248 800F1158 E7B40068 */  swc1       $f20, 0x68($sp)
/* 10F24C 800F115C AFA0006C */  sw         $zero, 0x6C($sp)
/* 10F250 800F1160 0C03B3AB */  jal        func_menu_800ECEAC
/* 10F254 800F1164 E7B40070 */   swc1      $f20, 0x70($sp)
/* 10F258 800F1168 8FA500D4 */  lw         $a1, 0xD4($sp)
/* 10F25C 800F116C 0C03B41C */  jal        func_menu_800ED070
/* 10F260 800F1170 02A02021 */   addu      $a0, $s5, $zero
/* 10F264 800F1174 02002021 */  addu       $a0, $s0, $zero
/* 10F268 800F1178 0C03BC12 */  jal        func_menu_800EF048
/* 10F26C 800F117C 27A50018 */   addiu     $a1, $sp, 0x18
/* 10F270 800F1180 27A40018 */  addiu      $a0, $sp, 0x18
/* 10F274 800F1184 0C001854 */  jal        func_80006150
/* 10F278 800F1188 26850030 */   addiu     $a1, $s4, 0x30
/* 10F27C 800F118C 02E02021 */  addu       $a0, $s7, $zero
/* 10F280 800F1190 02002821 */  addu       $a1, $s0, $zero
/* 10F284 800F1194 02803021 */  addu       $a2, $s4, $zero
/* 10F288 800F1198 0C03C4B3 */  jal        func_menu_800F12CC
/* 10F28C 800F119C 02A03821 */   addu      $a3, $s5, $zero
/* 10F290 800F11A0 02E02021 */  addu       $a0, $s7, $zero
/* 10F294 800F11A4 02002821 */  addu       $a1, $s0, $zero
/* 10F298 800F11A8 02803021 */  addu       $a2, $s4, $zero
/* 10F29C 800F11AC 0C03C63C */  jal        func_menu_800F18F0
/* 10F2A0 800F11B0 02A03821 */   addu      $a3, $s5, $zero
/* 10F2A4 800F11B4 8E020008 */  lw         $v0, 0x8($s0)
/* 10F2A8 800F11B8 02002021 */  addu       $a0, $s0, $zero
/* 10F2AC 800F11BC AE420334 */  sw         $v0, 0x334($s2)
/* 10F2B0 800F11C0 8C82000C */  lw         $v0, 0xC($a0)
/* 10F2B4 800F11C4 02C02821 */  addu       $a1, $s6, $zero
/* 10F2B8 800F11C8 AE420338 */  sw         $v0, 0x338($s2)
/* 10F2BC 800F11CC 8C820010 */  lw         $v0, 0x10($a0)
/* 10F2C0 800F11D0 2694005C */  addiu      $s4, $s4, 0x5C
/* 10F2C4 800F11D4 0C03BBD1 */  jal        func_menu_800EEF44
/* 10F2C8 800F11D8 AE42033C */   sw        $v0, 0x33C($s2)
/* 10F2CC 800F11DC AEC0FFBC */  sw         $zero, -0x44($s6)
/* 10F2D0 800F11E0 26D6005C */  addiu      $s6, $s6, 0x5C
/* 10F2D4 800F11E4 0803C40E */  j          .Lmenu_800F1038
/* 10F2D8 800F11E8 2652000C */   addiu     $s2, $s2, 0xC
.Lmenu_800F11EC:
/* 10F2DC 800F11EC 02601821 */  addu       $v1, $s3, $zero
.Lmenu_800F11F0:
/* 10F2E0 800F11F0 AC60009C */  sw         $zero, 0x9C($v1)
/* 10F2E4 800F11F4 AC6000AC */  sw         $zero, 0xAC($v1)
/* 10F2E8 800F11F8 AC6000BC */  sw         $zero, 0xBC($v1)
/* 10F2EC 800F11FC AC6000CC */  sw         $zero, 0xCC($v1)
/* 10F2F0 800F1200 24840001 */  addiu      $a0, $a0, 0x1
/* 10F2F4 800F1204 2C820004 */  sltiu      $v0, $a0, 0x4
/* 10F2F8 800F1208 1440FFF9 */  bnez       $v0, .Lmenu_800F11F0
/* 10F2FC 800F120C 24630004 */   addiu     $v1, $v1, 0x4
/* 10F300 800F1210 8EE22CA4 */  lw         $v0, 0x2CA4($s7)
/* 10F304 800F1214 1440000A */  bnez       $v0, .Lmenu_800F1240
/* 10F308 800F1218 00008821 */   addu      $s1, $zero, $zero
/* 10F30C 800F121C 8EE20014 */  lw         $v0, 0x14($s7)
/* 10F310 800F1220 8C420034 */  lw         $v0, 0x34($v0)
/* 10F314 800F1224 AE620330 */  sw         $v0, 0x330($s3)
/* 10F318 800F1228 2C420003 */  sltiu      $v0, $v0, 0x3
/* 10F31C 800F122C 14400005 */  bnez       $v0, .Lmenu_800F1244
/* 10F320 800F1230 2412034C */   addiu     $s2, $zero, 0x34C
/* 10F324 800F1234 24020002 */  addiu      $v0, $zero, 0x2
/* 10F328 800F1238 AE620330 */  sw         $v0, 0x330($s3)
/* 10F32C 800F123C 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800F1240:
/* 10F330 800F1240 2412034C */  addiu      $s2, $zero, 0x34C
.Lmenu_800F1244:
/* 10F334 800F1244 26F42628 */  addiu      $s4, $s7, 0x2628
/* 10F338 800F1248 02808021 */  addu       $s0, $s4, $zero
.Lmenu_800F124C:
/* 10F33C 800F124C 8E620330 */  lw         $v0, 0x330($s3)
/* 10F340 800F1250 0222102B */  sltu       $v0, $s1, $v0
/* 10F344 800F1254 1040000A */  beqz       $v0, .Lmenu_800F1280
/* 10F348 800F1258 02802021 */   addu      $a0, $s4, $zero
/* 10F34C 800F125C 02202821 */  addu       $a1, $s1, $zero
/* 10F350 800F1260 9206036B */  lbu        $a2, 0x36B($s0)
/* 10F354 800F1264 02723821 */  addu       $a3, $s3, $s2
/* 10F358 800F1268 26520028 */  addiu      $s2, $s2, 0x28
/* 10F35C 800F126C 26100004 */  addiu      $s0, $s0, 0x4
/* 10F360 800F1270 0C03C96D */  jal        func_menu_800F25B4
/* 10F364 800F1274 26310001 */   addiu     $s1, $s1, 0x1
/* 10F368 800F1278 0803C493 */  j          .Lmenu_800F124C
/* 10F36C 800F127C 00000000 */   nop
.Lmenu_800F1280:
/* 10F370 800F1280 8EE22CA4 */  lw         $v0, 0x2CA4($s7)
/* 10F374 800F1284 50400001 */  beql       $v0, $zero, .Lmenu_800F128C
/* 10F378 800F1288 AE600330 */   sw        $zero, 0x330($s3)
.Lmenu_800F128C:
/* 10F37C 800F128C 27A40018 */  addiu      $a0, $sp, 0x18
/* 10F380 800F1290 0C0016E2 */  jal        func_80005B88
/* 10F384 800F1294 24050002 */   addiu     $a1, $zero, 0x2
/* 10F388 800F1298 8FBF0104 */  lw         $ra, 0x104($sp)
/* 10F38C 800F129C 8FBE0100 */  lw         $fp, 0x100($sp)
/* 10F390 800F12A0 8FB700FC */  lw         $s7, 0xFC($sp)
/* 10F394 800F12A4 8FB600F8 */  lw         $s6, 0xF8($sp)
/* 10F398 800F12A8 8FB500F4 */  lw         $s5, 0xF4($sp)
/* 10F39C 800F12AC 8FB400F0 */  lw         $s4, 0xF0($sp)
/* 10F3A0 800F12B0 8FB300EC */  lw         $s3, 0xEC($sp)
/* 10F3A4 800F12B4 8FB200E8 */  lw         $s2, 0xE8($sp)
/* 10F3A8 800F12B8 8FB100E4 */  lw         $s1, 0xE4($sp)
/* 10F3AC 800F12BC 8FB000E0 */  lw         $s0, 0xE0($sp)
/* 10F3B0 800F12C0 D7B40108 */  ldc1       $f20, 0x108($sp)
/* 10F3B4 800F12C4 03E00008 */  jr         $ra
/* 10F3B8 800F12C8 27BD0110 */   addiu     $sp, $sp, 0x110

glabel func_menu_800F12CC
/* 10F3BC 800F12CC 27BDFF18 */  addiu      $sp, $sp, -0xE8
/* 10F3C0 800F12D0 AFB000C8 */  sw         $s0, 0xC8($sp)
/* 10F3C4 800F12D4 00808021 */  addu       $s0, $a0, $zero
/* 10F3C8 800F12D8 AFB100CC */  sw         $s1, 0xCC($sp)
/* 10F3CC 800F12DC 00A08821 */  addu       $s1, $a1, $zero
/* 10F3D0 800F12E0 AFB300D4 */  sw         $s3, 0xD4($sp)
/* 10F3D4 800F12E4 00C09821 */  addu       $s3, $a2, $zero
/* 10F3D8 800F12E8 AFB600E0 */  sw         $s6, 0xE0($sp)
/* 10F3DC 800F12EC 00E0B021 */  addu       $s6, $a3, $zero
/* 10F3E0 800F12F0 27A40020 */  addiu      $a0, $sp, 0x20
/* 10F3E4 800F12F4 AFBF00E4 */  sw         $ra, 0xE4($sp)
/* 10F3E8 800F12F8 AFB500DC */  sw         $s5, 0xDC($sp)
/* 10F3EC 800F12FC AFB400D8 */  sw         $s4, 0xD8($sp)
/* 10F3F0 800F1300 0C016038 */  jal        func_800580E0
/* 10F3F4 800F1304 AFB200D0 */   sw        $s2, 0xD0($sp)
/* 10F3F8 800F1308 02202021 */  addu       $a0, $s1, $zero
/* 10F3FC 800F130C 26650008 */  addiu      $a1, $s3, 0x8
/* 10F400 800F1310 0C03BC08 */  jal        func_menu_800EF020
/* 10F404 800F1314 A2600000 */   sb        $zero, 0x0($s3)
/* 10F408 800F1318 8E020004 */  lw         $v0, 0x4($s0)
/* 10F40C 800F131C 8C420004 */  lw         $v0, 0x4($v0)
/* 10F410 800F1320 8C52006C */  lw         $s2, 0x6C($v0)
/* 10F414 800F1324 8E420000 */  lw         $v0, 0x0($s2)
/* 10F418 800F1328 84440010 */  lh         $a0, 0x10($v0)
/* 10F41C 800F132C 8C420014 */  lw         $v0, 0x14($v0)
/* 10F420 800F1330 0040F809 */  jalr       $v0
/* 10F424 800F1334 02442021 */   addu      $a0, $s2, $a0
/* 10F428 800F1338 26102CFC */  addiu      $s0, $s0, 0x2CFC
/* 10F42C 800F133C 02002021 */  addu       $a0, $s0, $zero
/* 10F430 800F1340 2625003D */  addiu      $a1, $s1, 0x3D
/* 10F434 800F1344 8C51001C */  lw         $s1, 0x1C($v0)
/* 10F438 800F1348 0240A821 */  addu       $s5, $s2, $zero
/* 10F43C 800F134C 0C036F3B */  jal        func_menu_800DBCEC
/* 10F440 800F1350 0220A021 */   addu      $s4, $s1, $zero
/* 10F444 800F1354 14400008 */  bnez       $v0, .Lmenu_800F1378
/* 10F448 800F1358 02002021 */   addu      $a0, $s0, $zero
/* 10F44C 800F135C 3C04800D */  lui        $a0, %hi(D_menu_800CBD84)
/* 10F450 800F1360 2484BD84 */  addiu      $a0, $a0, %lo(D_menu_800CBD84)
/* 10F454 800F1364 00002821 */  addu       $a1, $zero, $zero
/* 10F458 800F1368 00A03021 */  addu       $a2, $a1, $zero
/* 10F45C 800F136C 0C011ACF */  jal        func_80046B3C
/* 10F460 800F1370 00A03821 */   addu      $a3, $a1, $zero
/* 10F464 800F1374 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800F1378:
/* 10F468 800F1378 0C03699C */  jal        func_menu_800DA670
/* 10F46C 800F137C 00002821 */   addu      $a1, $zero, $zero
/* 10F470 800F1380 02002021 */  addu       $a0, $s0, $zero
/* 10F474 800F1384 00002821 */  addu       $a1, $zero, $zero
/* 10F478 800F1388 0C036A24 */  jal        func_menu_800DA890
/* 10F47C 800F138C 240600FF */   addiu     $a2, $zero, 0xFF
/* 10F480 800F1390 8E020E44 */  lw         $v0, 0xE44($s0)
/* 10F484 800F1394 8E030E48 */  lw         $v1, 0xE48($s0)
/* 10F488 800F1398 8E650028 */  lw         $a1, 0x28($s3)
/* 10F48C 800F139C AFA200B0 */  sw         $v0, 0xB0($sp)
/* 10F490 800F13A0 10A00007 */  beqz       $a1, .Lmenu_800F13C0
/* 10F494 800F13A4 AFA300B4 */   sw        $v1, 0xB4($sp)
/* 10F498 800F13A8 8E420000 */  lw         $v0, 0x0($s2)
/* 10F49C 800F13AC 84440090 */  lh         $a0, 0x90($v0)
/* 10F4A0 800F13B0 8C420094 */  lw         $v0, 0x94($v0)
/* 10F4A4 800F13B4 0040F809 */  jalr       $v0
/* 10F4A8 800F13B8 02442021 */   addu      $a0, $s2, $a0
/* 10F4AC 800F13BC AE600028 */  sw         $zero, 0x28($s3)
.Lmenu_800F13C0:
/* 10F4B0 800F13C0 8E420000 */  lw         $v0, 0x0($s2)
/* 10F4B4 800F13C4 84440028 */  lh         $a0, 0x28($v0)
/* 10F4B8 800F13C8 8C42002C */  lw         $v0, 0x2C($v0)
/* 10F4BC 800F13CC 0040F809 */  jalr       $v0
/* 10F4C0 800F13D0 02442021 */   addu      $a0, $s2, $a0
/* 10F4C4 800F13D4 02202821 */  addu       $a1, $s1, $zero
/* 10F4C8 800F13D8 AE620028 */  sw         $v0, 0x28($s3)
/* 10F4CC 800F13DC 8C430008 */  lw         $v1, 0x8($v0)
/* 10F4D0 800F13E0 8FA600B0 */  lw         $a2, 0xB0($sp)
/* 10F4D4 800F13E4 84640050 */  lh         $a0, 0x50($v1)
/* 10F4D8 800F13E8 8C630054 */  lw         $v1, 0x54($v1)
/* 10F4DC 800F13EC 0060F809 */  jalr       $v1
/* 10F4E0 800F13F0 00442021 */   addu      $a0, $v0, $a0
/* 10F4E4 800F13F4 8E65002C */  lw         $a1, 0x2C($s3)
/* 10F4E8 800F13F8 10A00007 */  beqz       $a1, .Lmenu_800F1418
/* 10F4EC 800F13FC 00000000 */   nop
/* 10F4F0 800F1400 8E420000 */  lw         $v0, 0x0($s2)
/* 10F4F4 800F1404 84440088 */  lh         $a0, 0x88($v0)
/* 10F4F8 800F1408 8C42008C */  lw         $v0, 0x8C($v0)
/* 10F4FC 800F140C 0040F809 */  jalr       $v0
/* 10F500 800F1410 02442021 */   addu      $a0, $s2, $a0
/* 10F504 800F1414 AE60002C */  sw         $zero, 0x2C($s3)
.Lmenu_800F1418:
/* 10F508 800F1418 8E420000 */  lw         $v0, 0x0($s2)
/* 10F50C 800F141C 84440020 */  lh         $a0, 0x20($v0)
/* 10F510 800F1420 8C420024 */  lw         $v0, 0x24($v0)
/* 10F514 800F1424 0040F809 */  jalr       $v0
/* 10F518 800F1428 02442021 */   addu      $a0, $s2, $a0
/* 10F51C 800F142C 02202821 */  addu       $a1, $s1, $zero
/* 10F520 800F1430 AE62002C */  sw         $v0, 0x2C($s3)
/* 10F524 800F1434 8C430008 */  lw         $v1, 0x8($v0)
/* 10F528 800F1438 8FA600B4 */  lw         $a2, 0xB4($sp)
/* 10F52C 800F143C 84640050 */  lh         $a0, 0x50($v1)
/* 10F530 800F1440 8C630054 */  lw         $v1, 0x54($v1)
/* 10F534 800F1444 0060F809 */  jalr       $v1
/* 10F538 800F1448 00442021 */   addu      $a0, $v0, $a0
/* 10F53C 800F144C 8E650024 */  lw         $a1, 0x24($s3)
/* 10F540 800F1450 10A00007 */  beqz       $a1, .Lmenu_800F1470
/* 10F544 800F1454 00000000 */   nop
/* 10F548 800F1458 8E420000 */  lw         $v0, 0x0($s2)
/* 10F54C 800F145C 84440098 */  lh         $a0, 0x98($v0)
/* 10F550 800F1460 8C42009C */  lw         $v0, 0x9C($v0)
/* 10F554 800F1464 0040F809 */  jalr       $v0
/* 10F558 800F1468 02442021 */   addu      $a0, $s2, $a0
/* 10F55C 800F146C AE600024 */  sw         $zero, 0x24($s3)
.Lmenu_800F1470:
/* 10F560 800F1470 8EA20000 */  lw         $v0, 0x0($s5)
/* 10F564 800F1474 84440030 */  lh         $a0, 0x30($v0)
/* 10F568 800F1478 8C420034 */  lw         $v0, 0x34($v0)
/* 10F56C 800F147C 0040F809 */  jalr       $v0
/* 10F570 800F1480 02A42021 */   addu      $a0, $s5, $a0
/* 10F574 800F1484 AE620024 */  sw         $v0, 0x24($s3)
/* 10F578 800F1488 00402021 */  addu       $a0, $v0, $zero
/* 10F57C 800F148C 8E030E4C */  lw         $v1, 0xE4C($s0)
/* 10F580 800F1490 8E020E50 */  lw         $v0, 0xE50($s0)
/* 10F584 800F1494 8C88003C */  lw         $t0, 0x3C($a0)
/* 10F588 800F1498 8E070E54 */  lw         $a3, 0xE54($s0)
/* 10F58C 800F149C 85090048 */  lh         $t1, 0x48($t0)
/* 10F590 800F14A0 02802821 */  addu       $a1, $s4, $zero
/* 10F594 800F14A4 AFA300B8 */  sw         $v1, 0xB8($sp)
/* 10F598 800F14A8 AFA200BC */  sw         $v0, 0xBC($sp)
/* 10F59C 800F14AC AFA700C0 */  sw         $a3, 0xC0($sp)
/* 10F5A0 800F14B0 AFA20010 */  sw         $v0, 0x10($sp)
/* 10F5A4 800F14B4 AFA30014 */  sw         $v1, 0x14($sp)
/* 10F5A8 800F14B8 8FA200B0 */  lw         $v0, 0xB0($sp)
/* 10F5AC 800F14BC 24060003 */  addiu      $a2, $zero, 0x3
/* 10F5B0 800F14C0 AFA20018 */  sw         $v0, 0x18($sp)
/* 10F5B4 800F14C4 8D02004C */  lw         $v0, 0x4C($t0)
/* 10F5B8 800F14C8 0040F809 */  jalr       $v0
/* 10F5BC 800F14CC 00892021 */   addu      $a0, $a0, $t1
/* 10F5C0 800F14D0 8E650024 */  lw         $a1, 0x24($s3)
/* 10F5C4 800F14D4 8E660028 */  lw         $a2, 0x28($s3)
/* 10F5C8 800F14D8 8E67002C */  lw         $a3, 0x2C($s3)
/* 10F5CC 800F14DC 0C036F53 */  jal        func_menu_800DBD4C
/* 10F5D0 800F14E0 02002021 */   addu      $a0, $s0, $zero
/* 10F5D4 800F14E4 02002021 */  addu       $a0, $s0, $zero
/* 10F5D8 800F14E8 26650018 */  addiu      $a1, $s3, 0x18
/* 10F5DC 800F14EC 2666001C */  addiu      $a2, $s3, 0x1C
/* 10F5E0 800F14F0 0C036EC2 */  jal        func_menu_800DBB08
/* 10F5E4 800F14F4 26670020 */   addiu     $a3, $s3, 0x20
/* 10F5E8 800F14F8 27A40020 */  addiu      $a0, $sp, 0x20
/* 10F5EC 800F14FC 8E650024 */  lw         $a1, 0x24($s3)
/* 10F5F0 800F1500 3C067CF0 */  lui        $a2, (0x7CF0BDC2 >> 16)
/* 10F5F4 800F1504 34C6BDC2 */  ori        $a2, $a2, (0x7CF0BDC2 & 0xFFFF)
/* 10F5F8 800F1508 44820000 */  mtc1       $v0, $f0
/* 10F5FC 800F150C 46800020 */  cvt.s.w    $f0, $f0
/* 10F600 800F1510 0C016059 */  jal        func_80058164
/* 10F604 800F1514 E6600014 */   swc1      $f0, 0x14($s3)
/* 10F608 800F1518 27A50020 */  addiu      $a1, $sp, 0x20
/* 10F60C 800F151C 02C03021 */  addu       $a2, $s6, $zero
/* 10F610 800F1520 8E82012C */  lw         $v0, 0x12C($s4)
/* 10F614 800F1524 00003821 */  addu       $a3, $zero, $zero
/* 10F618 800F1528 84440138 */  lh         $a0, 0x138($v0)
/* 10F61C 800F152C 8C42013C */  lw         $v0, 0x13C($v0)
/* 10F620 800F1530 0040F809 */  jalr       $v0
/* 10F624 800F1534 02842021 */   addu      $a0, $s4, $a0
/* 10F628 800F1538 0C01607E */  jal        func_800581F8
/* 10F62C 800F153C 27A40020 */   addiu     $a0, $sp, 0x20
/* 10F630 800F1540 8E630024 */  lw         $v1, 0x24($s3)
/* 10F634 800F1544 8C62003C */  lw         $v0, 0x3C($v1)
/* 10F638 800F1548 27A500C4 */  addiu      $a1, $sp, 0xC4
/* 10F63C 800F154C 84440058 */  lh         $a0, 0x58($v0)
/* 10F640 800F1550 8C42005C */  lw         $v0, 0x5C($v0)
/* 10F644 800F1554 0040F809 */  jalr       $v0
/* 10F648 800F1558 00642021 */   addu      $a0, $v1, $a0
/* 10F64C 800F155C 8FA300C4 */  lw         $v1, 0xC4($sp)
/* 10F650 800F1560 8C620008 */  lw         $v0, 0x8($v1)
/* 10F654 800F1564 84440028 */  lh         $a0, 0x28($v0)
/* 10F658 800F1568 8C42002C */  lw         $v0, 0x2C($v0)
/* 10F65C 800F156C 0040F809 */  jalr       $v0
/* 10F660 800F1570 00642021 */   addu      $a0, $v1, $a0
/* 10F664 800F1574 8E630024 */  lw         $v1, 0x24($s3)
/* 10F668 800F1578 24050001 */  addiu      $a1, $zero, 0x1
/* 10F66C 800F157C 8C62003C */  lw         $v0, 0x3C($v1)
/* 10F670 800F1580 00003021 */  addu       $a2, $zero, $zero
/* 10F674 800F1584 84440060 */  lh         $a0, 0x60($v0)
/* 10F678 800F1588 8C420064 */  lw         $v0, 0x64($v0)
/* 10F67C 800F158C 0040F809 */  jalr       $v0
/* 10F680 800F1590 00642021 */   addu      $a0, $v1, $a0
/* 10F684 800F1594 8FBF00E4 */  lw         $ra, 0xE4($sp)
/* 10F688 800F1598 8FB600E0 */  lw         $s6, 0xE0($sp)
/* 10F68C 800F159C 8FB500DC */  lw         $s5, 0xDC($sp)
/* 10F690 800F15A0 8FB400D8 */  lw         $s4, 0xD8($sp)
/* 10F694 800F15A4 8FB300D4 */  lw         $s3, 0xD4($sp)
/* 10F698 800F15A8 8FB200D0 */  lw         $s2, 0xD0($sp)
/* 10F69C 800F15AC 8FB100CC */  lw         $s1, 0xCC($sp)
/* 10F6A0 800F15B0 8FB000C8 */  lw         $s0, 0xC8($sp)
/* 10F6A4 800F15B4 03E00008 */  jr         $ra
/* 10F6A8 800F15B8 27BD00E8 */   addiu     $sp, $sp, 0xE8

glabel func_menu_800F15BC
/* 10F6AC 800F15BC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 10F6B0 800F15C0 AFB20040 */  sw         $s2, 0x40($sp)
/* 10F6B4 800F15C4 00809021 */  addu       $s2, $a0, $zero
/* 10F6B8 800F15C8 AFB30044 */  sw         $s3, 0x44($sp)
/* 10F6BC 800F15CC 00A09821 */  addu       $s3, $a1, $zero
/* 10F6C0 800F15D0 3C02800D */  lui        $v0, %hi(D_menu_800CBE40)
/* 10F6C4 800F15D4 2445BE40 */  addiu      $a1, $v0, %lo(D_menu_800CBE40)
/* 10F6C8 800F15D8 AFBF0048 */  sw         $ra, 0x48($sp)
/* 10F6CC 800F15DC AFB1003C */  sw         $s1, 0x3C($sp)
/* 10F6D0 800F15E0 10A00008 */  beqz       $a1, .Lmenu_800F1604
/* 10F6D4 800F15E4 AFB00038 */   sw        $s0, 0x38($sp)
/* 10F6D8 800F15E8 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 10F6DC 800F15EC 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 10F6E0 800F15F0 02002021 */  addu       $a0, $s0, $zero
/* 10F6E4 800F15F4 0C000708 */  jal        func_80001C20
/* 10F6E8 800F15F8 24060100 */   addiu     $a2, $zero, 0x100
/* 10F6EC 800F15FC 0803C583 */  j          .Lmenu_800F160C
/* 10F6F0 800F1600 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F1604:
/* 10F6F4 800F1604 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 10F6F8 800F1608 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F160C:
/* 10F6FC 800F160C 26513DE0 */  addiu      $s1, $s2, 0x3DE0
/* 10F700 800F1610 02202021 */  addu       $a0, $s1, $zero
/* 10F704 800F1614 8E420004 */  lw         $v0, 0x4($s2)
/* 10F708 800F1618 3C05800D */  lui        $a1, %hi(D_menu_800CBE50)
/* 10F70C 800F161C 8C46001C */  lw         $a2, 0x1C($v0)
/* 10F710 800F1620 0C0358CD */  jal        func_menu_800D6334
/* 10F714 800F1624 24A5BE50 */   addiu     $a1, $a1, %lo(D_menu_800CBE50)
/* 10F718 800F1628 8E420004 */  lw         $v0, 0x4($s2)
/* 10F71C 800F162C 8C420004 */  lw         $v0, 0x4($v0)
/* 10F720 800F1630 8C42006C */  lw         $v0, 0x6C($v0)
/* 10F724 800F1634 AFA20014 */  sw         $v0, 0x14($sp)
/* 10F728 800F1638 8E420004 */  lw         $v0, 0x4($s2)
/* 10F72C 800F163C 26504544 */  addiu      $s0, $s2, 0x4544
/* 10F730 800F1640 8C420004 */  lw         $v0, 0x4($v0)
/* 10F734 800F1644 02002021 */  addu       $a0, $s0, $zero
/* 10F738 800F1648 8C420078 */  lw         $v0, 0x78($v0)
/* 10F73C 800F164C 27A50010 */  addiu      $a1, $sp, 0x10
/* 10F740 800F1650 AFB1001C */  sw         $s1, 0x1C($sp)
/* 10F744 800F1654 AFA20018 */  sw         $v0, 0x18($sp)
/* 10F748 800F1658 8E420004 */  lw         $v0, 0x4($s2)
/* 10F74C 800F165C 02603021 */  addu       $a2, $s3, $zero
/* 10F750 800F1660 8C43001C */  lw         $v1, 0x1C($v0)
/* 10F754 800F1664 2CC20001 */  sltiu      $v0, $a2, 0x1
/* 10F758 800F1668 AFA20024 */  sw         $v0, 0x24($sp)
/* 10F75C 800F166C 0C0355C4 */  jal        func_menu_800D5710
/* 10F760 800F1670 AFA30020 */   sw        $v1, 0x20($sp)
/* 10F764 800F1674 264445A0 */  addiu      $a0, $s2, 0x45A0
/* 10F768 800F1678 27A50028 */  addiu      $a1, $sp, 0x28
/* 10F76C 800F167C 8FA30014 */  lw         $v1, 0x14($sp)
/* 10F770 800F1680 8FA60018 */  lw         $a2, 0x18($sp)
/* 10F774 800F1684 24020006 */  addiu      $v0, $zero, 0x6
/* 10F778 800F1688 AFB00034 */  sw         $s0, 0x34($sp)
/* 10F77C 800F168C AFA20030 */  sw         $v0, 0x30($sp)
/* 10F780 800F1690 AFA30028 */  sw         $v1, 0x28($sp)
/* 10F784 800F1694 0C037353 */  jal        func_menu_800DCD4C
/* 10F788 800F1698 AFA6002C */   sw        $a2, 0x2C($sp)
/* 10F78C 800F169C 3C02800D */  lui        $v0, %hi(D_menu_800CBD70)
/* 10F790 800F16A0 2445BD70 */  addiu      $a1, $v0, %lo(D_menu_800CBD70)
/* 10F794 800F16A4 10A00007 */  beqz       $a1, .Lmenu_800F16C4
/* 10F798 800F16A8 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 10F79C 800F16AC 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 10F7A0 800F16B0 02002021 */  addu       $a0, $s0, $zero
/* 10F7A4 800F16B4 0C000708 */  jal        func_80001C20
/* 10F7A8 800F16B8 24060100 */   addiu     $a2, $zero, 0x100
/* 10F7AC 800F16BC 0803C5B3 */  j          .Lmenu_800F16CC
/* 10F7B0 800F16C0 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F16C4:
/* 10F7B4 800F16C4 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 10F7B8 800F16C8 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F16CC:
/* 10F7BC 800F16CC 8FBF0048 */  lw         $ra, 0x48($sp)
/* 10F7C0 800F16D0 8FB30044 */  lw         $s3, 0x44($sp)
/* 10F7C4 800F16D4 8FB20040 */  lw         $s2, 0x40($sp)
/* 10F7C8 800F16D8 8FB1003C */  lw         $s1, 0x3C($sp)
/* 10F7CC 800F16DC 8FB00038 */  lw         $s0, 0x38($sp)
/* 10F7D0 800F16E0 03E00008 */  jr         $ra
/* 10F7D4 800F16E4 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800F16E8
/* 10F7D8 800F16E8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 10F7DC 800F16EC AFB20038 */  sw         $s2, 0x38($sp)
/* 10F7E0 800F16F0 00809021 */  addu       $s2, $a0, $zero
/* 10F7E4 800F16F4 AFB10034 */  sw         $s1, 0x34($sp)
/* 10F7E8 800F16F8 00A08821 */  addu       $s1, $a1, $zero
/* 10F7EC 800F16FC 3C02800D */  lui        $v0, %hi(D_menu_800CBDF8)
/* 10F7F0 800F1700 2445BDF8 */  addiu      $a1, $v0, %lo(D_menu_800CBDF8)
/* 10F7F4 800F1704 AFBF0044 */  sw         $ra, 0x44($sp)
/* 10F7F8 800F1708 AFB40040 */  sw         $s4, 0x40($sp)
/* 10F7FC 800F170C AFB3003C */  sw         $s3, 0x3C($sp)
/* 10F800 800F1710 10A00008 */  beqz       $a1, .Lmenu_800F1734
/* 10F804 800F1714 AFB00030 */   sw        $s0, 0x30($sp)
/* 10F808 800F1718 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 10F80C 800F171C 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 10F810 800F1720 02002021 */  addu       $a0, $s0, $zero
/* 10F814 800F1724 0C000708 */  jal        func_80001C20
/* 10F818 800F1728 24060100 */   addiu     $a2, $zero, 0x100
/* 10F81C 800F172C 0803C5CF */  j          .Lmenu_800F173C
/* 10F820 800F1730 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F1734:
/* 10F824 800F1734 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 10F828 800F1738 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F173C:
/* 10F82C 800F173C 8E430004 */  lw         $v1, 0x4($s2)
/* 10F830 800F1740 8C620004 */  lw         $v0, 0x4($v1)
/* 10F834 800F1744 8C53006C */  lw         $s3, 0x6C($v0)
/* 10F838 800F1748 8C540078 */  lw         $s4, 0x78($v0)
/* 10F83C 800F174C 1220000F */  beqz       $s1, .Lmenu_800F178C
/* 10F840 800F1750 26442CC4 */   addiu     $a0, $s2, 0x2CC4
/* 10F844 800F1754 3C05800D */  lui        $a1, %hi(D_menu_800CBE60)
/* 10F848 800F1758 8C66001C */  lw         $a2, 0x1C($v1)
/* 10F84C 800F175C 0C037E35 */  jal        func_menu_800DF8D4
/* 10F850 800F1760 24A5BE60 */   addiu     $a1, $a1, %lo(D_menu_800CBE60)
/* 10F854 800F1764 26503C88 */  addiu      $s0, $s2, 0x3C88
/* 10F858 800F1768 02002021 */  addu       $a0, $s0, $zero
/* 10F85C 800F176C 02602821 */  addu       $a1, $s3, $zero
/* 10F860 800F1770 0C035368 */  jal        func_menu_800D4DA0
/* 10F864 800F1774 02803021 */   addu      $a2, $s4, $zero
/* 10F868 800F1778 02002021 */  addu       $a0, $s0, $zero
/* 10F86C 800F177C 3C05800D */  lui        $a1, %hi(D_menu_800CBE70)
/* 10F870 800F1780 8E420004 */  lw         $v0, 0x4($s2)
/* 10F874 800F1784 0803C5F0 */  j          .Lmenu_800F17C0
/* 10F878 800F1788 24A5BE70 */   addiu     $a1, $a1, %lo(D_menu_800CBE70)
.Lmenu_800F178C:
/* 10F87C 800F178C 3C05800D */  lui        $a1, %hi(D_menu_800CBE0C)
/* 10F880 800F1790 8C66001C */  lw         $a2, 0x1C($v1)
/* 10F884 800F1794 0C037E35 */  jal        func_menu_800DF8D4
/* 10F888 800F1798 24A5BE0C */   addiu     $a1, $a1, %lo(D_menu_800CBE0C)
/* 10F88C 800F179C 26503C88 */  addiu      $s0, $s2, 0x3C88
/* 10F890 800F17A0 02002021 */  addu       $a0, $s0, $zero
/* 10F894 800F17A4 02602821 */  addu       $a1, $s3, $zero
/* 10F898 800F17A8 0C035368 */  jal        func_menu_800D4DA0
/* 10F89C 800F17AC 02803021 */   addu      $a2, $s4, $zero
/* 10F8A0 800F17B0 02002021 */  addu       $a0, $s0, $zero
/* 10F8A4 800F17B4 3C05800D */  lui        $a1, %hi(D_menu_800CBE1C)
/* 10F8A8 800F17B8 8E420004 */  lw         $v0, 0x4($s2)
/* 10F8AC 800F17BC 24A5BE1C */  addiu      $a1, $a1, %lo(D_menu_800CBE1C)
.Lmenu_800F17C0:
/* 10F8B0 800F17C0 8C46001C */  lw         $a2, 0x1C($v0)
/* 10F8B4 800F17C4 0C0354AD */  jal        func_menu_800D52B4
/* 10F8B8 800F17C8 24070001 */   addiu     $a3, $zero, 0x1
/* 10F8BC 800F17CC 26503C88 */  addiu      $s0, $s2, 0x3C88
/* 10F8C0 800F17D0 02002021 */  addu       $a0, $s0, $zero
/* 10F8C4 800F17D4 8E420004 */  lw         $v0, 0x4($s2)
/* 10F8C8 800F17D8 3C05800D */  lui        $a1, %hi(D_menu_800CBE2C)
/* 10F8CC 800F17DC 8C46001C */  lw         $a2, 0x1C($v0)
/* 10F8D0 800F17E0 0C035401 */  jal        func_menu_800D5004
/* 10F8D4 800F17E4 24A5BE2C */   addiu     $a1, $a1, %lo(D_menu_800CBE2C)
/* 10F8D8 800F17E8 26442CFC */  addiu      $a0, $s2, 0x2CFC
/* 10F8DC 800F17EC 02602821 */  addu       $a1, $s3, $zero
/* 10F8E0 800F17F0 02803021 */  addu       $a2, $s4, $zero
/* 10F8E4 800F17F4 26512CC4 */  addiu      $s1, $s2, 0x2CC4
/* 10F8E8 800F17F8 02203821 */  addu       $a3, $s1, $zero
/* 10F8EC 800F17FC 0C036258 */  jal        func_menu_800D8960
/* 10F8F0 800F1800 AFB00010 */   sw        $s0, 0x10($sp)
/* 10F8F4 800F1804 26442CB0 */  addiu      $a0, $s2, 0x2CB0
/* 10F8F8 800F1808 3C05800D */  lui        $a1, %hi(D_menu_800CBE80)
/* 10F8FC 800F180C 24A5BE80 */  addiu      $a1, $a1, %lo(D_menu_800CBE80)
/* 10F900 800F1810 8E420004 */  lw         $v0, 0x4($s2)
/* 10F904 800F1814 02203021 */  addu       $a2, $s1, $zero
/* 10F908 800F1818 8C42001C */  lw         $v0, 0x1C($v0)
/* 10F90C 800F181C 02003821 */  addu       $a3, $s0, $zero
/* 10F910 800F1820 0C03720B */  jal        func_menu_800DC82C
/* 10F914 800F1824 AFA20010 */   sw        $v0, 0x10($sp)
/* 10F918 800F1828 2402FFFF */  addiu      $v0, $zero, -0x1
/* 10F91C 800F182C AFA20020 */  sw         $v0, 0x20($sp)
/* 10F920 800F1830 3C02800D */  lui        $v0, %hi(D_menu_800CBE8C)
/* 10F924 800F1834 2442BE8C */  addiu      $v0, $v0, %lo(D_menu_800CBE8C)
/* 10F928 800F1838 26503D40 */  addiu      $s0, $s2, 0x3D40
/* 10F92C 800F183C AFB30018 */  sw         $s3, 0x18($sp)
/* 10F930 800F1840 AFB4001C */  sw         $s4, 0x1C($sp)
/* 10F934 800F1844 AFA20024 */  sw         $v0, 0x24($sp)
/* 10F938 800F1848 8E420004 */  lw         $v0, 0x4($s2)
/* 10F93C 800F184C 02002021 */  addu       $a0, $s0, $zero
/* 10F940 800F1850 8C42001C */  lw         $v0, 0x1C($v0)
/* 10F944 800F1854 27A50018 */  addiu      $a1, $sp, 0x18
/* 10F948 800F1858 0C010B48 */  jal        func_80042D20
/* 10F94C 800F185C AFA20028 */   sw        $v0, 0x28($sp)
/* 10F950 800F1860 0C010F21 */  jal        func_80043C84
/* 10F954 800F1864 02002021 */   addu      $a0, $s0, $zero
/* 10F958 800F1868 3C02800D */  lui        $v0, %hi(D_menu_800CBD70)
/* 10F95C 800F186C 2445BD70 */  addiu      $a1, $v0, %lo(D_menu_800CBD70)
/* 10F960 800F1870 10A00007 */  beqz       $a1, .Lmenu_800F1890
/* 10F964 800F1874 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 10F968 800F1878 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 10F96C 800F187C 02002021 */  addu       $a0, $s0, $zero
/* 10F970 800F1880 0C000708 */  jal        func_80001C20
/* 10F974 800F1884 24060100 */   addiu     $a2, $zero, 0x100
/* 10F978 800F1888 0803C626 */  j          .Lmenu_800F1898
/* 10F97C 800F188C A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F1890:
/* 10F980 800F1890 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 10F984 800F1894 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F1898:
/* 10F988 800F1898 8FBF0044 */  lw         $ra, 0x44($sp)
/* 10F98C 800F189C 8FB40040 */  lw         $s4, 0x40($sp)
/* 10F990 800F18A0 8FB3003C */  lw         $s3, 0x3C($sp)
/* 10F994 800F18A4 8FB20038 */  lw         $s2, 0x38($sp)
/* 10F998 800F18A8 8FB10034 */  lw         $s1, 0x34($sp)
/* 10F99C 800F18AC 8FB00030 */  lw         $s0, 0x30($sp)
/* 10F9A0 800F18B0 03E00008 */  jr         $ra
/* 10F9A4 800F18B4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800F18B8
/* 10F9A8 800F18B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10F9AC 800F18BC AFB00010 */  sw         $s0, 0x10($sp)
/* 10F9B0 800F18C0 00808021 */  addu       $s0, $a0, $zero
/* 10F9B4 800F18C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10F9B8 800F18C8 0C03736C */  jal        func_menu_800DCDB0
/* 10F9BC 800F18CC 260445A0 */   addiu     $a0, $s0, 0x45A0
/* 10F9C0 800F18D0 0C035602 */  jal        func_menu_800D5808
/* 10F9C4 800F18D4 26044544 */   addiu     $a0, $s0, 0x4544
/* 10F9C8 800F18D8 0C035912 */  jal        func_menu_800D6448
/* 10F9CC 800F18DC 26043DE0 */   addiu     $a0, $s0, 0x3DE0
/* 10F9D0 800F18E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10F9D4 800F18E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 10F9D8 800F18E8 03E00008 */  jr         $ra
/* 10F9DC 800F18EC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F18F0
/* 10F9E0 800F18F0 27BDFE58 */  addiu      $sp, $sp, -0x1A8
/* 10F9E4 800F18F4 AFBE01A0 */  sw         $fp, 0x1A0($sp)
/* 10F9E8 800F18F8 0080F021 */  addu       $fp, $a0, $zero
/* 10F9EC 800F18FC AFB00180 */  sw         $s0, 0x180($sp)
/* 10F9F0 800F1900 00A08021 */  addu       $s0, $a1, $zero
/* 10F9F4 800F1904 AFB7019C */  sw         $s7, 0x19C($sp)
/* 10F9F8 800F1908 00C0B821 */  addu       $s7, $a2, $zero
/* 10F9FC 800F190C 27A40048 */  addiu      $a0, $sp, 0x48
/* 10FA00 800F1910 AFBF01A4 */  sw         $ra, 0x1A4($sp)
/* 10FA04 800F1914 AFB60198 */  sw         $s6, 0x198($sp)
/* 10FA08 800F1918 AFB50194 */  sw         $s5, 0x194($sp)
/* 10FA0C 800F191C AFB40190 */  sw         $s4, 0x190($sp)
/* 10FA10 800F1920 AFB3018C */  sw         $s3, 0x18C($sp)
/* 10FA14 800F1924 AFB20188 */  sw         $s2, 0x188($sp)
/* 10FA18 800F1928 AFB10184 */  sw         $s1, 0x184($sp)
/* 10FA1C 800F192C 0C01955C */  jal        func_80065570
/* 10FA20 800F1930 AFA701B4 */   sw        $a3, 0x1B4($sp)
/* 10FA24 800F1934 0C01933C */  jal        func_80064CF0
/* 10FA28 800F1938 27A40140 */   addiu     $a0, $sp, 0x140
/* 10FA2C 800F193C 02002021 */  addu       $a0, $s0, $zero
/* 10FA30 800F1940 0C03BBD1 */  jal        func_menu_800EEF44
/* 10FA34 800F1944 27A50018 */   addiu     $a1, $sp, 0x18
/* 10FA38 800F1948 27C445A0 */  addiu      $a0, $fp, 0x45A0
/* 10FA3C 800F194C 27A50018 */  addiu      $a1, $sp, 0x18
/* 10FA40 800F1950 00003021 */  addu       $a2, $zero, $zero
/* 10FA44 800F1954 0C037746 */  jal        func_menu_800DDD18
/* 10FA48 800F1958 24070003 */   addiu     $a3, $zero, 0x3
/* 10FA4C 800F195C 00009021 */  addu       $s2, $zero, $zero
/* 10FA50 800F1960 AEE20048 */  sw         $v0, 0x48($s7)
/* 10FA54 800F1964 93A20019 */  lbu        $v0, 0x19($sp)
/* 10FA58 800F1968 8EF30048 */  lw         $s3, 0x48($s7)
/* 10FA5C 800F196C 02408821 */  addu       $s1, $s2, $zero
/* 10FA60 800F1970 A2E20059 */  sb         $v0, 0x59($s7)
/* 10FA64 800F1974 8E760004 */  lw         $s6, 0x4($s3)
.Lmenu_800F1978:
/* 10FA68 800F1978 0236102B */  sltu       $v0, $s1, $s6
/* 10FA6C 800F197C 1040000C */  beqz       $v0, .Lmenu_800F19B0
/* 10FA70 800F1980 00111080 */   sll       $v0, $s1, 2
/* 10FA74 800F1984 8E630008 */  lw         $v1, 0x8($s3)
/* 10FA78 800F1988 00431021 */  addu       $v0, $v0, $v1
/* 10FA7C 800F198C 8C500000 */  lw         $s0, 0x0($v0)
/* 10FA80 800F1990 12000007 */  beqz       $s0, .Lmenu_800F19B0
/* 10FA84 800F1994 00000000 */   nop
/* 10FA88 800F1998 8E020004 */  lw         $v0, 0x4($s0)
/* 10FA8C 800F199C 30420008 */  andi       $v0, $v0, 0x8
/* 10FA90 800F19A0 54400001 */  bnel       $v0, $zero, .Lmenu_800F19A8
/* 10FA94 800F19A4 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_800F19A8:
/* 10FA98 800F19A8 0803C65E */  j          .Lmenu_800F1978
/* 10FA9C 800F19AC 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800F19B0:
/* 10FAA0 800F19B0 8FC20004 */  lw         $v0, 0x4($fp)
/* 10FAA4 800F19B4 8C420004 */  lw         $v0, 0x4($v0)
/* 10FAA8 800F19B8 8C50006C */  lw         $s0, 0x6C($v0)
/* 10FAAC 800F19BC 8E020000 */  lw         $v0, 0x0($s0)
/* 10FAB0 800F19C0 84440010 */  lh         $a0, 0x10($v0)
/* 10FAB4 800F19C4 8C420014 */  lw         $v0, 0x14($v0)
/* 10FAB8 800F19C8 0040F809 */  jalr       $v0
/* 10FABC 800F19CC 02042021 */   addu      $a0, $s0, $a0
/* 10FAC0 800F19D0 0220B021 */  addu       $s6, $s1, $zero
/* 10FAC4 800F19D4 0000A021 */  addu       $s4, $zero, $zero
/* 10FAC8 800F19D8 8E030000 */  lw         $v1, 0x0($s0)
/* 10FACC 800F19DC 8C55001C */  lw         $s5, 0x1C($v0)
/* 10FAD0 800F19E0 84640028 */  lh         $a0, 0x28($v1)
/* 10FAD4 800F19E4 8C63002C */  lw         $v1, 0x2C($v1)
/* 10FAD8 800F19E8 0060F809 */  jalr       $v1
/* 10FADC 800F19EC 02042021 */   addu      $a0, $s0, $a0
/* 10FAE0 800F19F0 02A02821 */  addu       $a1, $s5, $zero
/* 10FAE4 800F19F4 AEE2004C */  sw         $v0, 0x4C($s7)
/* 10FAE8 800F19F8 8C430008 */  lw         $v1, 0x8($v0)
/* 10FAEC 800F19FC 02C03021 */  addu       $a2, $s6, $zero
/* 10FAF0 800F1A00 84640050 */  lh         $a0, 0x50($v1)
/* 10FAF4 800F1A04 8C630054 */  lw         $v1, 0x54($v1)
/* 10FAF8 800F1A08 0060F809 */  jalr       $v1
/* 10FAFC 800F1A0C 00442021 */   addu      $a0, $v0, $a0
/* 10FB00 800F1A10 8E020000 */  lw         $v0, 0x0($s0)
/* 10FB04 800F1A14 02808821 */  addu       $s1, $s4, $zero
/* 10FB08 800F1A18 84440020 */  lh         $a0, 0x20($v0)
/* 10FB0C 800F1A1C 8C420024 */  lw         $v0, 0x24($v0)
/* 10FB10 800F1A20 0040F809 */  jalr       $v0
/* 10FB14 800F1A24 02042021 */   addu      $a0, $s0, $a0
/* 10FB18 800F1A28 02A02821 */  addu       $a1, $s5, $zero
/* 10FB1C 800F1A2C AEE20050 */  sw         $v0, 0x50($s7)
/* 10FB20 800F1A30 8C430008 */  lw         $v1, 0x8($v0)
/* 10FB24 800F1A34 02403021 */  addu       $a2, $s2, $zero
/* 10FB28 800F1A38 84640050 */  lh         $a0, 0x50($v1)
/* 10FB2C 800F1A3C 8C630054 */  lw         $v1, 0x54($v1)
/* 10FB30 800F1A40 0060F809 */  jalr       $v1
/* 10FB34 800F1A44 00442021 */   addu      $a0, $v0, $a0
.Lmenu_800F1A48:
/* 10FB38 800F1A48 0236102B */  sltu       $v0, $s1, $s6
/* 10FB3C 800F1A4C 1040004F */  beqz       $v0, .Lmenu_800F1B8C
/* 10FB40 800F1A50 00111880 */   sll       $v1, $s1, 2
/* 10FB44 800F1A54 8E620008 */  lw         $v0, 0x8($s3)
/* 10FB48 800F1A58 00621821 */  addu       $v1, $v1, $v0
/* 10FB4C 800F1A5C 8C700000 */  lw         $s0, 0x0($v1)
/* 10FB50 800F1A60 27A50020 */  addiu      $a1, $sp, 0x20
/* 10FB54 800F1A64 0C01523D */  jal        func_800548F4
/* 10FB58 800F1A68 02002021 */   addu      $a0, $s0, $zero
/* 10FB5C 800F1A6C 8E020004 */  lw         $v0, 0x4($s0)
/* 10FB60 800F1A70 30420008 */  andi       $v0, $v0, 0x8
/* 10FB64 800F1A74 1040002E */  beqz       $v0, .Lmenu_800F1B30
/* 10FB68 800F1A78 02802821 */   addu      $a1, $s4, $zero
/* 10FB6C 800F1A7C 8EE30050 */  lw         $v1, 0x50($s7)
/* 10FB70 800F1A80 8C620008 */  lw         $v0, 0x8($v1)
/* 10FB74 800F1A84 84440058 */  lh         $a0, 0x58($v0)
/* 10FB78 800F1A88 8C42005C */  lw         $v0, 0x5C($v0)
/* 10FB7C 800F1A8C 0040F809 */  jalr       $v0
/* 10FB80 800F1A90 00642021 */   addu      $a0, $v1, $a0
/* 10FB84 800F1A94 8FA30024 */  lw         $v1, 0x24($sp)
/* 10FB88 800F1A98 88680038 */  lwl        $t0, 0x38($v1)
/* 10FB8C 800F1A9C 9868003B */  lwr        $t0, 0x3B($v1)
/* 10FB90 800F1AA0 8869003C */  lwl        $t1, 0x3C($v1)
/* 10FB94 800F1AA4 9869003F */  lwr        $t1, 0x3F($v1)
/* 10FB98 800F1AA8 ABA80038 */  swl        $t0, 0x38($sp)
/* 10FB9C 800F1AAC BBA8003B */  swr        $t0, 0x3B($sp)
/* 10FBA0 800F1AB0 ABA9003C */  swl        $t1, 0x3C($sp)
/* 10FBA4 800F1AB4 BBA9003F */  swr        $t1, 0x3F($sp)
/* 10FBA8 800F1AB8 8BA80038 */  lwl        $t0, 0x38($sp)
/* 10FBAC 800F1ABC 9BA8003B */  lwr        $t0, 0x3B($sp)
/* 10FBB0 800F1AC0 8BA9003C */  lwl        $t1, 0x3C($sp)
/* 10FBB4 800F1AC4 9BA9003F */  lwr        $t1, 0x3F($sp)
/* 10FBB8 800F1AC8 A8480038 */  swl        $t0, 0x38($v0)
/* 10FBBC 800F1ACC B848003B */  swr        $t0, 0x3B($v0)
/* 10FBC0 800F1AD0 A849003C */  swl        $t1, 0x3C($v0)
/* 10FBC4 800F1AD4 B849003F */  swr        $t1, 0x3F($v0)
/* 10FBC8 800F1AD8 8FA30024 */  lw         $v1, 0x24($sp)
/* 10FBCC 800F1ADC 94630036 */  lhu        $v1, 0x36($v1)
/* 10FBD0 800F1AE0 A4430036 */  sh         $v1, 0x36($v0)
/* 10FBD4 800F1AE4 8FA30024 */  lw         $v1, 0x24($sp)
/* 10FBD8 800F1AE8 94630034 */  lhu        $v1, 0x34($v1)
/* 10FBDC 800F1AEC A4430034 */  sh         $v1, 0x34($v0)
/* 10FBE0 800F1AF0 8FA30024 */  lw         $v1, 0x24($sp)
/* 10FBE4 800F1AF4 88680030 */  lwl        $t0, 0x30($v1)
/* 10FBE8 800F1AF8 98680033 */  lwr        $t0, 0x33($v1)
/* 10FBEC 800F1AFC ABA80040 */  swl        $t0, 0x40($sp)
/* 10FBF0 800F1B00 BBA80043 */  swr        $t0, 0x43($sp)
/* 10FBF4 800F1B04 8BA80040 */  lwl        $t0, 0x40($sp)
/* 10FBF8 800F1B08 9BA80043 */  lwr        $t0, 0x43($sp)
/* 10FBFC 800F1B0C A8480030 */  swl        $t0, 0x30($v0)
/* 10FC00 800F1B10 B8480033 */  swr        $t0, 0x33($v0)
/* 10FC04 800F1B14 94430036 */  lhu        $v1, 0x36($v0)
/* 10FC08 800F1B18 26940001 */  addiu      $s4, $s4, 0x1
/* 10FC0C 800F1B1C A0400033 */  sb         $zero, 0x33($v0)
/* 10FC10 800F1B20 34630800 */  ori        $v1, $v1, 0x800
/* 10FC14 800F1B24 A4430036 */  sh         $v1, 0x36($v0)
/* 10FC18 800F1B28 0803C6CD */  j          .Lmenu_800F1B34
/* 10FC1C 800F1B2C AFA20024 */   sw        $v0, 0x24($sp)
.Lmenu_800F1B30:
/* 10FC20 800F1B30 AFA00024 */  sw         $zero, 0x24($sp)
.Lmenu_800F1B34:
/* 10FC24 800F1B34 8FA20020 */  lw         $v0, 0x20($sp)
/* 10FC28 800F1B38 2403FFFE */  addiu      $v1, $zero, -0x2
/* 10FC2C 800F1B3C 00431024 */  and        $v0, $v0, $v1
/* 10FC30 800F1B40 AFA20020 */  sw         $v0, 0x20($sp)
/* 10FC34 800F1B44 8EE3004C */  lw         $v1, 0x4C($s7)
/* 10FC38 800F1B48 8C620008 */  lw         $v0, 0x8($v1)
/* 10FC3C 800F1B4C 02202821 */  addu       $a1, $s1, $zero
/* 10FC40 800F1B50 84440058 */  lh         $a0, 0x58($v0)
/* 10FC44 800F1B54 8C42005C */  lw         $v0, 0x5C($v0)
/* 10FC48 800F1B58 0040F809 */  jalr       $v0
/* 10FC4C 800F1B5C 00642021 */   addu      $a0, $v1, $a0
/* 10FC50 800F1B60 00408021 */  addu       $s0, $v0, $zero
/* 10FC54 800F1B64 02002021 */  addu       $a0, $s0, $zero
/* 10FC58 800F1B68 02A02821 */  addu       $a1, $s5, $zero
/* 10FC5C 800F1B6C 0C0151F9 */  jal        func_800547E4
/* 10FC60 800F1B70 27A60020 */   addiu     $a2, $sp, 0x20
/* 10FC64 800F1B74 02602021 */  addu       $a0, $s3, $zero
/* 10FC68 800F1B78 02202821 */  addu       $a1, $s1, $zero
/* 10FC6C 800F1B7C 0C01543D */  jal        func_800550F4
/* 10FC70 800F1B80 02003021 */   addu      $a2, $s0, $zero
/* 10FC74 800F1B84 0803C692 */  j          .Lmenu_800F1A48
/* 10FC78 800F1B88 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800F1B8C:
/* 10FC7C 800F1B8C 27C445A0 */  addiu      $a0, $fp, 0x45A0
/* 10FC80 800F1B90 0C037778 */  jal        func_menu_800DDDE0
/* 10FC84 800F1B94 27A50018 */   addiu     $a1, $sp, 0x18
/* 10FC88 800F1B98 27B00048 */  addiu      $s0, $sp, 0x48
/* 10FC8C 800F1B9C 02002021 */  addu       $a0, $s0, $zero
/* 10FC90 800F1BA0 00403021 */  addu       $a2, $v0, $zero
/* 10FC94 800F1BA4 3C01800D */  lui        $at, %hi(D_menu_800CBE98)
/* 10FC98 800F1BA8 C420BE98 */  lwc1       $f0, %lo(D_menu_800CBE98)($at)
/* 10FC9C 800F1BAC 27B10140 */  addiu      $s1, $sp, 0x140
/* 10FCA0 800F1BB0 E7A00010 */  swc1       $f0, 0x10($sp)
/* 10FCA4 800F1BB4 8EE50048 */  lw         $a1, 0x48($s7)
/* 10FCA8 800F1BB8 0C01956B */  jal        func_800655AC
/* 10FCAC 800F1BBC 02203821 */   addu      $a3, $s1, $zero
/* 10FCB0 800F1BC0 02002821 */  addu       $a1, $s0, $zero
/* 10FCB4 800F1BC4 00003821 */  addu       $a3, $zero, $zero
/* 10FCB8 800F1BC8 8EA2012C */  lw         $v0, 0x12C($s5)
/* 10FCBC 800F1BCC 8FA601B4 */  lw         $a2, 0x1B4($sp)
/* 10FCC0 800F1BD0 84440138 */  lh         $a0, 0x138($v0)
/* 10FCC4 800F1BD4 8C42013C */  lw         $v0, 0x13C($v0)
/* 10FCC8 800F1BD8 0040F809 */  jalr       $v0
/* 10FCCC 800F1BDC 02A42021 */   addu      $a0, $s5, $a0
/* 10FCD0 800F1BE0 0C01958C */  jal        func_80065630
/* 10FCD4 800F1BE4 02002021 */   addu      $a0, $s0, $zero
/* 10FCD8 800F1BE8 8EE30048 */  lw         $v1, 0x48($s7)
/* 10FCDC 800F1BEC 8C62003C */  lw         $v0, 0x3C($v1)
/* 10FCE0 800F1BF0 27A50178 */  addiu      $a1, $sp, 0x178
/* 10FCE4 800F1BF4 84440058 */  lh         $a0, 0x58($v0)
/* 10FCE8 800F1BF8 8C42005C */  lw         $v0, 0x5C($v0)
/* 10FCEC 800F1BFC 0040F809 */  jalr       $v0
/* 10FCF0 800F1C00 00642021 */   addu      $a0, $v1, $a0
/* 10FCF4 800F1C04 8FA30178 */  lw         $v1, 0x178($sp)
/* 10FCF8 800F1C08 8C620008 */  lw         $v0, 0x8($v1)
/* 10FCFC 800F1C0C 84440028 */  lh         $a0, 0x28($v0)
/* 10FD00 800F1C10 8C42002C */  lw         $v0, 0x2C($v0)
/* 10FD04 800F1C14 0040F809 */  jalr       $v0
/* 10FD08 800F1C18 00642021 */   addu      $a0, $v1, $a0
/* 10FD0C 800F1C1C 8EE30048 */  lw         $v1, 0x48($s7)
/* 10FD10 800F1C20 24050001 */  addiu      $a1, $zero, 0x1
/* 10FD14 800F1C24 8C62003C */  lw         $v0, 0x3C($v1)
/* 10FD18 800F1C28 00003021 */  addu       $a2, $zero, $zero
/* 10FD1C 800F1C2C 84440060 */  lh         $a0, 0x60($v0)
/* 10FD20 800F1C30 8C420064 */  lw         $v0, 0x64($v0)
/* 10FD24 800F1C34 0040F809 */  jalr       $v0
/* 10FD28 800F1C38 00642021 */   addu      $a0, $v1, $a0
/* 10FD2C 800F1C3C 02202021 */  addu       $a0, $s1, $zero
/* 10FD30 800F1C40 0C01934F */  jal        func_80064D3C
/* 10FD34 800F1C44 24050002 */   addiu     $a1, $zero, 0x2
/* 10FD38 800F1C48 8FBF01A4 */  lw         $ra, 0x1A4($sp)
/* 10FD3C 800F1C4C 8FBE01A0 */  lw         $fp, 0x1A0($sp)
/* 10FD40 800F1C50 8FB7019C */  lw         $s7, 0x19C($sp)
/* 10FD44 800F1C54 8FB60198 */  lw         $s6, 0x198($sp)
/* 10FD48 800F1C58 8FB50194 */  lw         $s5, 0x194($sp)
/* 10FD4C 800F1C5C 8FB40190 */  lw         $s4, 0x190($sp)
/* 10FD50 800F1C60 8FB3018C */  lw         $s3, 0x18C($sp)
/* 10FD54 800F1C64 8FB20188 */  lw         $s2, 0x188($sp)
/* 10FD58 800F1C68 8FB10184 */  lw         $s1, 0x184($sp)
/* 10FD5C 800F1C6C 8FB00180 */  lw         $s0, 0x180($sp)
/* 10FD60 800F1C70 03E00008 */  jr         $ra
/* 10FD64 800F1C74 27BD01A8 */   addiu     $sp, $sp, 0x1A8

glabel func_menu_800F1C78
/* 10FD68 800F1C78 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10FD6C 800F1C7C AFB00010 */  sw         $s0, 0x10($sp)
/* 10FD70 800F1C80 00808021 */  addu       $s0, $a0, $zero
/* 10FD74 800F1C84 26042628 */  addiu      $a0, $s0, 0x2628
/* 10FD78 800F1C88 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10FD7C 800F1C8C AFB10014 */  sw         $s1, 0x14($sp)
/* 10FD80 800F1C90 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 10FD84 800F1C94 9083000C */  lbu        $v1, 0xC($a0)
/* 10FD88 800F1C98 8E020004 */  lw         $v0, 0x4($s0)
/* 10FD8C 800F1C9C AC430104 */  sw         $v1, 0x104($v0)
/* 10FD90 800F1CA0 90830023 */  lbu        $v1, 0x23($a0)
/* 10FD94 800F1CA4 8E020004 */  lw         $v0, 0x4($s0)
/* 10FD98 800F1CA8 A0430030 */  sb         $v1, 0x30($v0)
/* 10FD9C 800F1CAC 8E020004 */  lw         $v0, 0x4($s0)
/* 10FDA0 800F1CB0 8C430008 */  lw         $v1, 0x8($v0)
/* 10FDA4 800F1CB4 10600027 */  beqz       $v1, .Lmenu_800F1D54
/* 10FDA8 800F1CB8 00808821 */   addu      $s1, $a0, $zero
/* 10FDAC 800F1CBC 9082001F */  lbu        $v0, 0x1F($a0)
/* 10FDB0 800F1CC0 3C01800D */  lui        $at, %hi(D_menu_800CBE9C)
/* 10FDB4 800F1CC4 C434BE9C */  lwc1       $f20, %lo(D_menu_800CBE9C)($at)
/* 10FDB8 800F1CC8 44820000 */  mtc1       $v0, $f0
/* 10FDBC 800F1CCC 46800020 */  cvt.s.w    $f0, $f0
/* 10FDC0 800F1CD0 46140003 */  div.s      $f0, $f0, $f20
/* 10FDC4 800F1CD4 E4600010 */  swc1       $f0, 0x10($v1)
/* 10FDC8 800F1CD8 8E034620 */  lw         $v1, 0x4620($s0)
/* 10FDCC 800F1CDC 10600008 */  beqz       $v1, .Lmenu_800F1D00
/* 10FDD0 800F1CE0 00000000 */   nop
/* 10FDD4 800F1CE4 8C620000 */  lw         $v0, 0x0($v1)
/* 10FDD8 800F1CE8 3C053F4C */  lui        $a1, (0x3F4CCCCD >> 16)
/* 10FDDC 800F1CEC 34A5CCCD */  ori        $a1, $a1, (0x3F4CCCCD & 0xFFFF)
/* 10FDE0 800F1CF0 84440038 */  lh         $a0, 0x38($v0)
/* 10FDE4 800F1CF4 8C42003C */  lw         $v0, 0x3C($v0)
/* 10FDE8 800F1CF8 0040F809 */  jalr       $v0
/* 10FDEC 800F1CFC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F1D00:
/* 10FDF0 800F1D00 92220020 */  lbu        $v0, 0x20($s1)
/* 10FDF4 800F1D04 8E030004 */  lw         $v1, 0x4($s0)
/* 10FDF8 800F1D08 44820000 */  mtc1       $v0, $f0
/* 10FDFC 800F1D0C 46800020 */  cvt.s.w    $f0, $f0
/* 10FE00 800F1D10 8C620008 */  lw         $v0, 0x8($v1)
/* 10FE04 800F1D14 46140003 */  div.s      $f0, $f0, $f20
/* 10FE08 800F1D18 E440000C */  swc1       $f0, 0xC($v0)
/* 10FE0C 800F1D1C 92220021 */  lbu        $v0, 0x21($s1)
/* 10FE10 800F1D20 10400007 */  beqz       $v0, .Lmenu_800F1D40
/* 10FE14 800F1D24 2403FFFB */   addiu     $v1, $zero, -0x5
/* 10FE18 800F1D28 8E020004 */  lw         $v0, 0x4($s0)
/* 10FE1C 800F1D2C 8C440008 */  lw         $a0, 0x8($v0)
/* 10FE20 800F1D30 8C820000 */  lw         $v0, 0x0($a0)
/* 10FE24 800F1D34 00431024 */  and        $v0, $v0, $v1
/* 10FE28 800F1D38 0803C755 */  j          .Lmenu_800F1D54
/* 10FE2C 800F1D3C AC820000 */   sw        $v0, 0x0($a0)
.Lmenu_800F1D40:
/* 10FE30 800F1D40 8E020004 */  lw         $v0, 0x4($s0)
/* 10FE34 800F1D44 8C430008 */  lw         $v1, 0x8($v0)
/* 10FE38 800F1D48 8C620000 */  lw         $v0, 0x0($v1)
/* 10FE3C 800F1D4C 34420004 */  ori        $v0, $v0, 0x4
/* 10FE40 800F1D50 AC620000 */  sw         $v0, 0x0($v1)
.Lmenu_800F1D54:
/* 10FE44 800F1D54 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10FE48 800F1D58 8FB10014 */  lw         $s1, 0x14($sp)
/* 10FE4C 800F1D5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10FE50 800F1D60 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 10FE54 800F1D64 03E00008 */  jr         $ra
/* 10FE58 800F1D68 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F1D6C
/* 10FE5C 800F1D6C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10FE60 800F1D70 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10FE64 800F1D74 00009821 */  addu       $s3, $zero, $zero
/* 10FE68 800F1D78 AFB40020 */  sw         $s4, 0x20($sp)
/* 10FE6C 800F1D7C 249402A8 */  addiu      $s4, $a0, 0x2A8
/* 10FE70 800F1D80 AFB20018 */  sw         $s2, 0x18($sp)
/* 10FE74 800F1D84 24120B44 */  addiu      $s2, $zero, 0xB44
/* 10FE78 800F1D88 AFBF0024 */  sw         $ra, 0x24($sp)
/* 10FE7C 800F1D8C AFB10014 */  sw         $s1, 0x14($sp)
/* 10FE80 800F1D90 AFB00010 */  sw         $s0, 0x10($sp)
.Lmenu_800F1D94:
/* 10FE84 800F1D94 8E82237C */  lw         $v0, 0x237C($s4)
/* 10FE88 800F1D98 0262102B */  sltu       $v0, $s3, $v0
/* 10FE8C 800F1D9C 10400011 */  beqz       $v0, .Lmenu_800F1DE4
/* 10FE90 800F1DA0 02928821 */   addu      $s1, $s4, $s2
/* 10FE94 800F1DA4 8E2304A8 */  lw         $v1, 0x4A8($s1)
/* 10FE98 800F1DA8 8C620004 */  lw         $v0, 0x4($v1)
/* 10FE9C 800F1DAC 00008021 */  addu       $s0, $zero, $zero
/* 10FEA0 800F1DB0 84440050 */  lh         $a0, 0x50($v0)
/* 10FEA4 800F1DB4 8C420054 */  lw         $v0, 0x54($v0)
/* 10FEA8 800F1DB8 0040F809 */  jalr       $v0
/* 10FEAC 800F1DBC 00642021 */   addu      $a0, $v1, $a0
/* 10FEB0 800F1DC0 10400003 */  beqz       $v0, .Lmenu_800F1DD0
/* 10FEB4 800F1DC4 00000000 */   nop
/* 10FEB8 800F1DC8 8E2204B0 */  lw         $v0, 0x4B0($s1)
/* 10FEBC 800F1DCC 30500001 */  andi       $s0, $v0, 0x1
.Lmenu_800F1DD0:
/* 10FEC0 800F1DD0 16000005 */  bnez       $s0, .Lmenu_800F1DE8
/* 10FEC4 800F1DD4 24020001 */   addiu     $v0, $zero, 0x1
/* 10FEC8 800F1DD8 265204E4 */  addiu      $s2, $s2, 0x4E4
/* 10FECC 800F1DDC 0803C765 */  j          .Lmenu_800F1D94
/* 10FED0 800F1DE0 26730001 */   addiu     $s3, $s3, 0x1
.Lmenu_800F1DE4:
/* 10FED4 800F1DE4 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800F1DE8:
/* 10FED8 800F1DE8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 10FEDC 800F1DEC 8FB40020 */  lw         $s4, 0x20($sp)
/* 10FEE0 800F1DF0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10FEE4 800F1DF4 8FB20018 */  lw         $s2, 0x18($sp)
/* 10FEE8 800F1DF8 8FB10014 */  lw         $s1, 0x14($sp)
/* 10FEEC 800F1DFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 10FEF0 800F1E00 03E00008 */  jr         $ra
/* 10FEF4 800F1E04 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F1E08
/* 10FEF8 800F1E08 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 10FEFC 800F1E0C AFBF0084 */  sw         $ra, 0x84($sp)
/* 10FF00 800F1E10 AFBE0080 */  sw         $fp, 0x80($sp)
/* 10FF04 800F1E14 AFB7007C */  sw         $s7, 0x7C($sp)
/* 10FF08 800F1E18 AFB60078 */  sw         $s6, 0x78($sp)
/* 10FF0C 800F1E1C AFB50074 */  sw         $s5, 0x74($sp)
/* 10FF10 800F1E20 AFB40070 */  sw         $s4, 0x70($sp)
/* 10FF14 800F1E24 AFB3006C */  sw         $s3, 0x6C($sp)
/* 10FF18 800F1E28 AFB20068 */  sw         $s2, 0x68($sp)
/* 10FF1C 800F1E2C AFB10064 */  sw         $s1, 0x64($sp)
/* 10FF20 800F1E30 AFB00060 */  sw         $s0, 0x60($sp)
/* 10FF24 800F1E34 AFA40088 */  sw         $a0, 0x88($sp)
/* 10FF28 800F1E38 8C850004 */  lw         $a1, 0x4($a0)
/* 10FF2C 800F1E3C 94A30022 */  lhu        $v1, 0x22($a1)
/* 10FF30 800F1E40 30620010 */  andi       $v0, $v1, 0x10
/* 10FF34 800F1E44 14400003 */  bnez       $v0, .Lmenu_800F1E54
/* 10FF38 800F1E48 27B00028 */   addiu     $s0, $sp, 0x28
/* 10FF3C 800F1E4C 0803C7FA */  j          .Lmenu_800F1FE8
/* 10FF40 800F1E50 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F1E54:
/* 10FF44 800F1E54 8FA80088 */  lw         $t0, 0x88($sp)
/* 10FF48 800F1E58 3062FFEF */  andi       $v0, $v1, 0xFFEF
/* 10FF4C 800F1E5C A4A20022 */  sh         $v0, 0x22($a1)
/* 10FF50 800F1E60 25082628 */  addiu      $t0, $t0, 0x2628
/* 10FF54 800F1E64 AFA80058 */  sw         $t0, 0x58($sp)
/* 10FF58 800F1E68 8FA80088 */  lw         $t0, 0x88($sp)
/* 10FF5C 800F1E6C 8D120004 */  lw         $s2, 0x4($t0)
/* 10FF60 800F1E70 0C0016DC */  jal        func_80005B70
/* 10FF64 800F1E74 02002021 */   addu      $a0, $s0, $zero
/* 10FF68 800F1E78 00009821 */  addu       $s3, $zero, $zero
/* 10FF6C 800F1E7C 0260F021 */  addu       $fp, $s3, $zero
/* 10FF70 800F1E80 27B60038 */  addiu      $s6, $sp, 0x38
/* 10FF74 800F1E84 0200A821 */  addu       $s5, $s0, $zero
/* 10FF78 800F1E88 2414003C */  addiu      $s4, $zero, 0x3C
/* 10FF7C 800F1E8C 02408821 */  addu       $s1, $s2, $zero
.Lmenu_800F1E90:
/* 10FF80 800F1E90 8E22009C */  lw         $v0, 0x9C($s1)
/* 10FF84 800F1E94 10400024 */  beqz       $v0, .Lmenu_800F1F28
/* 10FF88 800F1E98 0000B821 */   addu      $s7, $zero, $zero
/* 10FF8C 800F1E9C 24170001 */  addiu      $s7, $zero, 0x1
/* 10FF90 800F1EA0 02542821 */  addu       $a1, $s2, $s4
/* 10FF94 800F1EA4 8FA80088 */  lw         $t0, 0x88($sp)
/* 10FF98 800F1EA8 24A50008 */  addiu      $a1, $a1, 0x8
/* 10FF9C 800F1EAC 0C03CDA2 */  jal        func_menu_800F3688
/* 10FFA0 800F1EB0 25043DC4 */   addiu     $a0, $t0, 0x3DC4
/* 10FFA4 800F1EB4 00409821 */  addu       $s3, $v0, $zero
/* 10FFA8 800F1EB8 27A40018 */  addiu      $a0, $sp, 0x18
/* 10FFAC 800F1EBC 8E2300AC */  lw         $v1, 0xAC($s1)
/* 10FFB0 800F1EC0 2406000E */  addiu      $a2, $zero, 0xE
/* 10FFB4 800F1EC4 02E31004 */  sllv       $v0, $v1, $s7
/* 10FFB8 800F1EC8 00431021 */  addu       $v0, $v0, $v1
/* 10FFBC 800F1ECC 000210C0 */  sll        $v0, $v0, 3
/* 10FFC0 800F1ED0 00431023 */  subu       $v0, $v0, $v1
/* 10FFC4 800F1ED4 00021080 */  sll        $v0, $v0, 2
/* 10FFC8 800F1ED8 00521021 */  addu       $v0, $v0, $s2
/* 10FFCC 800F1EDC 24500138 */  addiu      $s0, $v0, 0x138
/* 10FFD0 800F1EE0 0C000708 */  jal        func_80001C20
/* 10FFD4 800F1EE4 02002821 */   addu      $a1, $s0, $zero
/* 10FFD8 800F1EE8 02002021 */  addu       $a0, $s0, $zero
/* 10FFDC 800F1EEC 02C02821 */  addu       $a1, $s6, $zero
/* 10FFE0 800F1EF0 0C0016C8 */  jal        func_80005B20
/* 10FFE4 800F1EF4 A3A00026 */   sb        $zero, 0x26($sp)
/* 10FFE8 800F1EF8 02A02021 */  addu       $a0, $s5, $zero
/* 10FFEC 800F1EFC 02C02821 */  addu       $a1, $s6, $zero
/* 10FFF0 800F1F00 0C0016F6 */  jal        func_80005BD8
/* 10FFF4 800F1F04 2406000E */   addiu     $a2, $zero, 0xE
/* 10FFF8 800F1F08 8FA40058 */  lw         $a0, 0x58($sp)
/* 10FFFC 800F1F0C 02602821 */  addu       $a1, $s3, $zero
/* 110000 800F1F10 AFB50010 */  sw         $s5, 0x10($sp)
/* 110004 800F1F14 8E27009C */  lw         $a3, 0x9C($s1)
/* 110008 800F1F18 0C03CA6A */  jal        func_menu_800F29A8
/* 11000C 800F1F1C 00003021 */   addu      $a2, $zero, $zero
/* 110010 800F1F20 54400001 */  bnel       $v0, $zero, .Lmenu_800F1F28
/* 110014 800F1F24 02E0F021 */   addu      $fp, $s7, $zero
.Lmenu_800F1F28:
/* 110018 800F1F28 8E2200BC */  lw         $v0, 0xBC($s1)
/* 11001C 800F1F2C 50400026 */  beql       $v0, $zero, .Lmenu_800F1FC8
/* 110020 800F1F30 26310004 */   addiu     $s1, $s1, 0x4
/* 110024 800F1F34 16E00008 */  bnez       $s7, .Lmenu_800F1F58
/* 110028 800F1F38 27A40018 */   addiu     $a0, $sp, 0x18
/* 11002C 800F1F3C 8FA80088 */  lw         $t0, 0x88($sp)
/* 110030 800F1F40 02542821 */  addu       $a1, $s2, $s4
/* 110034 800F1F44 24A50008 */  addiu      $a1, $a1, 0x8
/* 110038 800F1F48 0C03CDA2 */  jal        func_menu_800F3688
/* 11003C 800F1F4C 25043DC4 */   addiu     $a0, $t0, 0x3DC4
/* 110040 800F1F50 00409821 */  addu       $s3, $v0, $zero
/* 110044 800F1F54 27A40018 */  addiu      $a0, $sp, 0x18
.Lmenu_800F1F58:
/* 110048 800F1F58 8E2200CC */  lw         $v0, 0xCC($s1)
/* 11004C 800F1F5C 2406000E */  addiu      $a2, $zero, 0xE
/* 110050 800F1F60 00021840 */  sll        $v1, $v0, 1
/* 110054 800F1F64 00621821 */  addu       $v1, $v1, $v0
/* 110058 800F1F68 000318C0 */  sll        $v1, $v1, 3
/* 11005C 800F1F6C 00621823 */  subu       $v1, $v1, $v0
/* 110060 800F1F70 00031880 */  sll        $v1, $v1, 2
/* 110064 800F1F74 00721021 */  addu       $v0, $v1, $s2
/* 110068 800F1F78 24500138 */  addiu      $s0, $v0, 0x138
/* 11006C 800F1F7C 0C000708 */  jal        func_80001C20
/* 110070 800F1F80 02002821 */   addu      $a1, $s0, $zero
/* 110074 800F1F84 02002021 */  addu       $a0, $s0, $zero
/* 110078 800F1F88 02C02821 */  addu       $a1, $s6, $zero
/* 11007C 800F1F8C 0C0016C8 */  jal        func_80005B20
/* 110080 800F1F90 A3A00026 */   sb        $zero, 0x26($sp)
/* 110084 800F1F94 02A02021 */  addu       $a0, $s5, $zero
/* 110088 800F1F98 02C02821 */  addu       $a1, $s6, $zero
/* 11008C 800F1F9C 0C0016F6 */  jal        func_80005BD8
/* 110090 800F1FA0 2406000E */   addiu     $a2, $zero, 0xE
/* 110094 800F1FA4 8FA40058 */  lw         $a0, 0x58($sp)
/* 110098 800F1FA8 02602821 */  addu       $a1, $s3, $zero
/* 11009C 800F1FAC AFB50010 */  sw         $s5, 0x10($sp)
/* 1100A0 800F1FB0 8E2700BC */  lw         $a3, 0xBC($s1)
/* 1100A4 800F1FB4 0C03CA6A */  jal        func_menu_800F29A8
/* 1100A8 800F1FB8 24060001 */   addiu     $a2, $zero, 0x1
/* 1100AC 800F1FBC 54400001 */  bnel       $v0, $zero, .Lmenu_800F1FC4
/* 1100B0 800F1FC0 241E0001 */   addiu     $fp, $zero, 0x1
.Lmenu_800F1FC4:
/* 1100B4 800F1FC4 26310004 */  addiu      $s1, $s1, 0x4
.Lmenu_800F1FC8:
/* 1100B8 800F1FC8 26420010 */  addiu      $v0, $s2, 0x10
/* 1100BC 800F1FCC 0222102B */  sltu       $v0, $s1, $v0
/* 1100C0 800F1FD0 1440FFAF */  bnez       $v0, .Lmenu_800F1E90
/* 1100C4 800F1FD4 26940018 */   addiu     $s4, $s4, 0x18
/* 1100C8 800F1FD8 27A40028 */  addiu      $a0, $sp, 0x28
/* 1100CC 800F1FDC 0C0016E2 */  jal        func_80005B88
/* 1100D0 800F1FE0 24050002 */   addiu     $a1, $zero, 0x2
/* 1100D4 800F1FE4 03C01021 */  addu       $v0, $fp, $zero
.Lmenu_800F1FE8:
/* 1100D8 800F1FE8 8FBF0084 */  lw         $ra, 0x84($sp)
/* 1100DC 800F1FEC 8FBE0080 */  lw         $fp, 0x80($sp)
/* 1100E0 800F1FF0 8FB7007C */  lw         $s7, 0x7C($sp)
/* 1100E4 800F1FF4 8FB60078 */  lw         $s6, 0x78($sp)
/* 1100E8 800F1FF8 8FB50074 */  lw         $s5, 0x74($sp)
/* 1100EC 800F1FFC 8FB40070 */  lw         $s4, 0x70($sp)
/* 1100F0 800F2000 8FB3006C */  lw         $s3, 0x6C($sp)
/* 1100F4 800F2004 8FB20068 */  lw         $s2, 0x68($sp)
/* 1100F8 800F2008 8FB10064 */  lw         $s1, 0x64($sp)
/* 1100FC 800F200C 8FB00060 */  lw         $s0, 0x60($sp)
/* 110100 800F2010 03E00008 */  jr         $ra
/* 110104 800F2014 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_menu_800F2018
/* 110108 800F2018 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11010C 800F201C AFB10014 */  sw         $s1, 0x14($sp)
/* 110110 800F2020 00808821 */  addu       $s1, $a0, $zero
/* 110114 800F2024 AFBF0018 */  sw         $ra, 0x18($sp)
/* 110118 800F2028 AFB00010 */  sw         $s0, 0x10($sp)
/* 11011C 800F202C 8E240004 */  lw         $a0, 0x4($s1)
/* 110120 800F2030 94830022 */  lhu        $v1, 0x22($a0)
/* 110124 800F2034 30620001 */  andi       $v0, $v1, 0x1
/* 110128 800F2038 1040001C */  beqz       $v0, .Lmenu_800F20AC
/* 11012C 800F203C 3062FFFE */   andi      $v0, $v1, 0xFFFE
/* 110130 800F2040 A4820022 */  sh         $v0, 0x22($a0)
/* 110134 800F2044 26243DC4 */  addiu      $a0, $s1, 0x3DC4
/* 110138 800F2048 8E250004 */  lw         $a1, 0x4($s1)
/* 11013C 800F204C 26302628 */  addiu      $s0, $s1, 0x2628
/* 110140 800F2050 0C03CDA2 */  jal        func_menu_800F3688
/* 110144 800F2054 24A50044 */   addiu     $a1, $a1, 0x44
/* 110148 800F2058 00401821 */  addu       $v1, $v0, $zero
/* 11014C 800F205C 2C62000C */  sltiu      $v0, $v1, 0xC
/* 110150 800F2060 10400012 */  beqz       $v0, .Lmenu_800F20AC
/* 110154 800F2064 24050001 */   addiu     $a1, $zero, 0x1
/* 110158 800F2068 00652804 */  sllv       $a1, $a1, $v1
/* 11015C 800F206C 02002021 */  addu       $a0, $s0, $zero
/* 110160 800F2070 0C03CA39 */  jal        func_menu_800F28E4
/* 110164 800F2074 30A5FFFF */   andi      $a1, $a1, 0xFFFF
/* 110168 800F2078 1040000D */  beqz       $v0, .Lmenu_800F20B0
/* 11016C 800F207C 00001021 */   addu      $v0, $zero, $zero
/* 110170 800F2080 0C03CA43 */  jal        func_menu_800F290C
/* 110174 800F2084 02002021 */   addu      $a0, $s0, $zero
/* 110178 800F2088 10400006 */  beqz       $v0, .Lmenu_800F20A4
/* 11017C 800F208C 02002021 */   addu      $a0, $s0, $zero
/* 110180 800F2090 0C03CA21 */  jal        func_menu_800F2884
/* 110184 800F2094 24050080 */   addiu     $a1, $zero, 0x80
/* 110188 800F2098 8E230004 */  lw         $v1, 0x4($s1)
/* 11018C 800F209C 2402001C */  addiu      $v0, $zero, 0x1C
/* 110190 800F20A0 A4620020 */  sh         $v0, 0x20($v1)
.Lmenu_800F20A4:
/* 110194 800F20A4 0803C82C */  j          .Lmenu_800F20B0
/* 110198 800F20A8 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800F20AC:
/* 11019C 800F20AC 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800F20B0:
/* 1101A0 800F20B0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1101A4 800F20B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1101A8 800F20B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1101AC 800F20BC 03E00008 */  jr         $ra
/* 1101B0 800F20C0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F20C4
/* 1101B4 800F20C4 8C820004 */  lw         $v0, 0x4($a0)
/* 1101B8 800F20C8 AC80484C */  sw         $zero, 0x484C($a0)
/* 1101BC 800F20CC 03E00008 */  jr         $ra
/* 1101C0 800F20D0 AC400000 */   sw        $zero, 0x0($v0)

glabel func_menu_800F20D4
/* 1101C4 800F20D4 3C028012 */  lui        $v0, %hi(D_80126C08)
/* 1101C8 800F20D8 03E00008 */  jr         $ra
/* 1101CC 800F20DC AC446C08 */   sw        $a0, %lo(D_80126C08)($v0)

glabel func_menu_800F20E0
/* 1101D0 800F20E0 8C820004 */  lw         $v0, 0x4($a0)
/* 1101D4 800F20E4 03E00008 */  jr         $ra
/* 1101D8 800F20E8 00000000 */   nop
