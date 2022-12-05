.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EE5C0
/* 10C6B0 800EE5C0 03E00008 */  jr         $ra
/* 10C6B4 800EE5C4 00801021 */   addu      $v0, $a0, $zero

glabel func_menu_800EE5C8
/* 10C6B8 800EE5C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10C6BC 800EE5CC AFB10014 */  sw         $s1, 0x14($sp)
/* 10C6C0 800EE5D0 00808821 */  addu       $s1, $a0, $zero
/* 10C6C4 800EE5D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 10C6C8 800EE5D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10C6CC 800EE5DC 0C03B98B */  jal        func_menu_800EE62C
/* 10C6D0 800EE5E0 00A08021 */   addu      $s0, $a1, $zero
/* 10C6D4 800EE5E4 32100001 */  andi       $s0, $s0, 0x1
/* 10C6D8 800EE5E8 12000003 */  beqz       $s0, .Lmenu_800EE5F8
/* 10C6DC 800EE5EC 00000000 */   nop
/* 10C6E0 800EE5F0 0C01FB5C */  jal        func_8007ED70
/* 10C6E4 800EE5F4 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800EE5F8:
/* 10C6E8 800EE5F8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10C6EC 800EE5FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 10C6F0 800EE600 8FB00010 */  lw         $s0, 0x10($sp)
/* 10C6F4 800EE604 03E00008 */  jr         $ra
/* 10C6F8 800EE608 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EE60C
/* 10C6FC 800EE60C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10C700 800EE610 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10C704 800EE614 0C03B98B */  jal        func_menu_800EE62C
/* 10C708 800EE618 00000000 */   nop
/* 10C70C 800EE61C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10C710 800EE620 24020001 */  addiu      $v0, $zero, 0x1
/* 10C714 800EE624 03E00008 */  jr         $ra
/* 10C718 800EE628 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EE62C
/* 10C71C 800EE62C 03E00008 */  jr         $ra
/* 10C720 800EE630 24020001 */   addiu     $v0, $zero, 0x1

glabel func_menu_800EE634
/* 10C724 800EE634 3C028012 */  lui        $v0, %hi(D_80126BE8)
/* 10C728 800EE638 8C446BE8 */  lw         $a0, %lo(D_80126BE8)($v0)
/* 10C72C 800EE63C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10C730 800EE640 AFB00010 */  sw         $s0, 0x10($sp)
/* 10C734 800EE644 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10C738 800EE648 0C01FB65 */  jal        func_8007ED94
/* 10C73C 800EE64C 00A08021 */   addu      $s0, $a1, $zero
/* 10C740 800EE650 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* 10C744 800EE654 2603FFFF */  addiu      $v1, $s0, -0x1
/* 10C748 800EE658 2C620098 */  sltiu      $v0, $v1, 0x98
/* 10C74C 800EE65C 104000B7 */  beqz       $v0, Lmenu_800EE93C
/* 10C750 800EE660 3C02800D */   lui       $v0, %hi(jtbl_menu_800CBAF8)
/* 10C754 800EE664 2442BAF8 */  addiu      $v0, $v0, %lo(jtbl_menu_800CBAF8)
/* 10C758 800EE668 00031880 */  sll        $v1, $v1, 2
/* 10C75C 800EE66C 00621821 */  addu       $v1, $v1, $v0
/* 10C760 800EE670 8C620000 */  lw         $v0, 0x0($v1)
/* 10C764 800EE674 00400008 */  jr         $v0
/* 10C768 800EE678 00000000 */   nop
glabel Lmenu_800EE67C
/* 10C76C 800EE67C 0C01FB4C */  jal        func_8007ED30
/* 10C770 800EE680 24040658 */   addiu     $a0, $zero, 0x658
/* 10C774 800EE684 0C043424 */  jal        func_menu_8010D090
/* 10C778 800EE688 00402021 */   addu      $a0, $v0, $zero
/* 10C77C 800EE68C 0803BA50 */  j          .Lmenu_800EE940
/* 10C780 800EE690 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE694
/* 10C784 800EE694 0C01FB4C */  jal        func_8007ED30
/* 10C788 800EE698 24040658 */   addiu     $a0, $zero, 0x658
/* 10C78C 800EE69C 0C040708 */  jal        func_menu_80101C20
/* 10C790 800EE6A0 00402021 */   addu      $a0, $v0, $zero
/* 10C794 800EE6A4 0803BA50 */  j          .Lmenu_800EE940
/* 10C798 800EE6A8 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE6AC
/* 10C79C 800EE6AC 0C01FB4C */  jal        func_8007ED30
/* 10C7A0 800EE6B0 240424AC */   addiu     $a0, $zero, 0x24AC
/* 10C7A4 800EE6B4 0C0407C4 */  jal        func_menu_80101F10
/* 10C7A8 800EE6B8 00402021 */   addu      $a0, $v0, $zero
/* 10C7AC 800EE6BC 0803BA50 */  j          .Lmenu_800EE940
/* 10C7B0 800EE6C0 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE6C4
/* 10C7B4 800EE6C4 0C01FB4C */  jal        func_8007ED30
/* 10C7B8 800EE6C8 24042228 */   addiu     $a0, $zero, 0x2228
/* 10C7BC 800EE6CC 0C03E770 */  jal        func_menu_800F9DC0
/* 10C7C0 800EE6D0 00402021 */   addu      $a0, $v0, $zero
/* 10C7C4 800EE6D4 0803BA50 */  j          .Lmenu_800EE940
/* 10C7C8 800EE6D8 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE6DC
/* 10C7CC 800EE6DC 0C01FB4C */  jal        func_8007ED30
/* 10C7D0 800EE6E0 24042E60 */   addiu     $a0, $zero, 0x2E60
/* 10C7D4 800EE6E4 0C042FB0 */  jal        func_menu_8010BEC0
/* 10C7D8 800EE6E8 00402021 */   addu      $a0, $v0, $zero
/* 10C7DC 800EE6EC 0803BA50 */  j          .Lmenu_800EE940
/* 10C7E0 800EE6F0 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE6F4
/* 10C7E4 800EE6F4 0C01FB4C */  jal        func_8007ED30
/* 10C7E8 800EE6F8 24045430 */   addiu     $a0, $zero, 0x5430
/* 10C7EC 800EE6FC 0C03FC14 */  jal        func_menu_800FF050
/* 10C7F0 800EE700 00402021 */   addu      $a0, $v0, $zero
/* 10C7F4 800EE704 0803BA50 */  j          .Lmenu_800EE940
/* 10C7F8 800EE708 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE70C
/* 10C7FC 800EE70C 0C01FB4C */  jal        func_8007ED30
/* 10C800 800EE710 24042694 */   addiu     $a0, $zero, 0x2694
/* 10C804 800EE714 0C03EC98 */  jal        func_menu_800FB260
/* 10C808 800EE718 00402021 */   addu      $a0, $v0, $zero
/* 10C80C 800EE71C 0803BA50 */  j          .Lmenu_800EE940
/* 10C810 800EE720 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE724
/* 10C814 800EE724 0C01FB4C */  jal        func_8007ED30
/* 10C818 800EE728 24043744 */   addiu     $a0, $zero, 0x3744
/* 10C81C 800EE72C 0C03F094 */  jal        func_menu_800FC250
/* 10C820 800EE730 00402021 */   addu      $a0, $v0, $zero
/* 10C824 800EE734 0803BA50 */  j          .Lmenu_800EE940
/* 10C828 800EE738 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE73C
/* 10C82C 800EE73C 0C01FB4C */  jal        func_8007ED30
/* 10C830 800EE740 24044D58 */   addiu     $a0, $zero, 0x4D58
/* 10C834 800EE744 0C03F594 */  jal        func_menu_800FD650
/* 10C838 800EE748 00402021 */   addu      $a0, $v0, $zero
/* 10C83C 800EE74C 0803BA50 */  j          .Lmenu_800EE940
/* 10C840 800EE750 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE754
/* 10C844 800EE754 0C01FB4C */  jal        func_8007ED30
/* 10C848 800EE758 240451A8 */   addiu     $a0, $zero, 0x51A8
/* 10C84C 800EE75C 0C041118 */  jal        func_menu_80104460
/* 10C850 800EE760 00402021 */   addu      $a0, $v0, $zero
/* 10C854 800EE764 0803BA50 */  j          .Lmenu_800EE940
/* 10C858 800EE768 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE76C
/* 10C85C 800EE76C 0C01FB4C */  jal        func_8007ED30
/* 10C860 800EE770 24043360 */   addiu     $a0, $zero, 0x3360
/* 10C864 800EE774 0C03E9A8 */  jal        func_menu_800FA6A0
/* 10C868 800EE778 00402021 */   addu      $a0, $v0, $zero
/* 10C86C 800EE77C 0803BA50 */  j          .Lmenu_800EE940
/* 10C870 800EE780 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE784
/* 10C874 800EE784 0C01FB4C */  jal        func_8007ED30
/* 10C878 800EE788 240425C0 */   addiu     $a0, $zero, 0x25C0
/* 10C87C 800EE78C 0C041A60 */  jal        func_menu_80106980
/* 10C880 800EE790 00402021 */   addu      $a0, $v0, $zero
/* 10C884 800EE794 0803BA50 */  j          .Lmenu_800EE940
/* 10C888 800EE798 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE79C
/* 10C88C 800EE79C 0C01FB4C */  jal        func_8007ED30
/* 10C890 800EE7A0 24043CAC */   addiu     $a0, $zero, 0x3CAC
/* 10C894 800EE7A4 0C041C78 */  jal        func_menu_801071E0
/* 10C898 800EE7A8 00402021 */   addu      $a0, $v0, $zero
/* 10C89C 800EE7AC 0803BA50 */  j          .Lmenu_800EE940
/* 10C8A0 800EE7B0 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE7B4
/* 10C8A4 800EE7B4 0C01FB4C */  jal        func_8007ED30
/* 10C8A8 800EE7B8 240407B0 */   addiu     $a0, $zero, 0x7B0
/* 10C8AC 800EE7BC 0C03D4FC */  jal        func_menu_800F53F0
/* 10C8B0 800EE7C0 00402021 */   addu      $a0, $v0, $zero
/* 10C8B4 800EE7C4 0803BA50 */  j          .Lmenu_800EE940
/* 10C8B8 800EE7C8 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE7CC
/* 10C8BC 800EE7CC 0C01FB4C */  jal        func_8007ED30
/* 10C8C0 800EE7D0 24040658 */   addiu     $a0, $zero, 0x658
/* 10C8C4 800EE7D4 0C03E6AC */  jal        func_menu_800F9AB0
/* 10C8C8 800EE7D8 00402021 */   addu      $a0, $v0, $zero
/* 10C8CC 800EE7DC 0803BA50 */  j          .Lmenu_800EE940
/* 10C8D0 800EE7E0 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE7E4
/* 10C8D4 800EE7E4 0C01FB4C */  jal        func_8007ED30
/* 10C8D8 800EE7E8 2404317C */   addiu     $a0, $zero, 0x317C
/* 10C8DC 800EE7EC 00408021 */  addu       $s0, $v0, $zero
/* 10C8E0 800EE7F0 0C03D9A8 */  jal        func_menu_800F66A0
/* 10C8E4 800EE7F4 02002021 */   addu      $a0, $s0, $zero
/* 10C8E8 800EE7F8 3C02800D */  lui        $v0, %hi(D_menu_800CF370)
/* 10C8EC 800EE7FC 2442F370 */  addiu      $v0, $v0, %lo(D_menu_800CF370)
/* 10C8F0 800EE800 AE020000 */  sw         $v0, 0x0($s0)
/* 10C8F4 800EE804 0C047BA4 */  jal        func_menu_8011EE90
/* 10C8F8 800EE808 26042AD4 */   addiu     $a0, $s0, 0x2AD4
/* 10C8FC 800EE80C 0C047BA4 */  jal        func_menu_8011EE90
/* 10C900 800EE810 26042B30 */   addiu     $a0, $s0, 0x2B30
/* 10C904 800EE814 0C047BA4 */  jal        func_menu_8011EE90
/* 10C908 800EE818 26042B8C */   addiu     $a0, $s0, 0x2B8C
/* 10C90C 800EE81C 0C047BA4 */  jal        func_menu_8011EE90
/* 10C910 800EE820 26042BE8 */   addiu     $a0, $s0, 0x2BE8
/* 10C914 800EE824 0C047BA4 */  jal        func_menu_8011EE90
/* 10C918 800EE828 26042C44 */   addiu     $a0, $s0, 0x2C44
/* 10C91C 800EE82C 0C047BA4 */  jal        func_menu_8011EE90
/* 10C920 800EE830 26042CA0 */   addiu     $a0, $s0, 0x2CA0
/* 10C924 800EE834 0C047BA4 */  jal        func_menu_8011EE90
/* 10C928 800EE838 26042CFC */   addiu     $a0, $s0, 0x2CFC
/* 10C92C 800EE83C 0C047BA4 */  jal        func_menu_8011EE90
/* 10C930 800EE840 26042D58 */   addiu     $a0, $s0, 0x2D58
/* 10C934 800EE844 0C047BA4 */  jal        func_menu_8011EE90
/* 10C938 800EE848 26042DB4 */   addiu     $a0, $s0, 0x2DB4
/* 10C93C 800EE84C 0C047BA4 */  jal        func_menu_8011EE90
/* 10C940 800EE850 26042E10 */   addiu     $a0, $s0, 0x2E10
/* 10C944 800EE854 0C047BA4 */  jal        func_menu_8011EE90
/* 10C948 800EE858 26042E6C */   addiu     $a0, $s0, 0x2E6C
/* 10C94C 800EE85C 0C047BA4 */  jal        func_menu_8011EE90
/* 10C950 800EE860 26042EC8 */   addiu     $a0, $s0, 0x2EC8
/* 10C954 800EE864 0C047CA8 */  jal        func_menu_8011F2A0
/* 10C958 800EE868 26042F24 */   addiu     $a0, $s0, 0x2F24
/* 10C95C 800EE86C 0C047CA8 */  jal        func_menu_8011F2A0
/* 10C960 800EE870 26042F9C */   addiu     $a0, $s0, 0x2F9C
/* 10C964 800EE874 0C047CA8 */  jal        func_menu_8011F2A0
/* 10C968 800EE878 26043014 */   addiu     $a0, $s0, 0x3014
/* 10C96C 800EE87C 0C047CA8 */  jal        func_menu_8011F2A0
/* 10C970 800EE880 2604308C */   addiu     $a0, $s0, 0x308C
/* 10C974 800EE884 0C047CA8 */  jal        func_menu_8011F2A0
/* 10C978 800EE888 26043104 */   addiu     $a0, $s0, 0x3104
/* 10C97C 800EE88C 0803BA50 */  j          .Lmenu_800EE940
/* 10C980 800EE890 00000000 */   nop
glabel Lmenu_800EE894
/* 10C984 800EE894 0C01FB4C */  jal        func_8007ED30
/* 10C988 800EE898 24041CE4 */   addiu     $a0, $zero, 0x1CE4
/* 10C98C 800EE89C 0C040AB4 */  jal        func_menu_80102AD0
/* 10C990 800EE8A0 00402021 */   addu      $a0, $v0, $zero
/* 10C994 800EE8A4 0803BA50 */  j          .Lmenu_800EE940
/* 10C998 800EE8A8 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE8AC
/* 10C99C 800EE8AC 0C01FB4C */  jal        func_8007ED30
/* 10C9A0 800EE8B0 24040868 */   addiu     $a0, $zero, 0x868
/* 10C9A4 800EE8B4 0C042718 */  jal        func_menu_80109C60
/* 10C9A8 800EE8B8 00402021 */   addu      $a0, $v0, $zero
/* 10C9AC 800EE8BC 0803BA50 */  j          .Lmenu_800EE940
/* 10C9B0 800EE8C0 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE8C4
/* 10C9B4 800EE8C4 0C01FB4C */  jal        func_8007ED30
/* 10C9B8 800EE8C8 24042238 */   addiu     $a0, $zero, 0x2238
/* 10C9BC 800EE8CC 0C043BA8 */  jal        func_menu_8010EEA0
/* 10C9C0 800EE8D0 00402021 */   addu      $a0, $v0, $zero
/* 10C9C4 800EE8D4 0803BA50 */  j          .Lmenu_800EE940
/* 10C9C8 800EE8D8 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE8DC
/* 10C9CC 800EE8DC 0C01FB4C */  jal        func_8007ED30
/* 10C9D0 800EE8E0 24041664 */   addiu     $a0, $zero, 0x1664
/* 10C9D4 800EE8E4 0C041980 */  jal        func_menu_80106600
/* 10C9D8 800EE8E8 00402021 */   addu      $a0, $v0, $zero
/* 10C9DC 800EE8EC 0803BA50 */  j          .Lmenu_800EE940
/* 10C9E0 800EE8F0 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE8F4
/* 10C9E4 800EE8F4 0C01FB4C */  jal        func_8007ED30
/* 10C9E8 800EE8F8 24042368 */   addiu     $a0, $zero, 0x2368
/* 10C9EC 800EE8FC 0C04281C */  jal        func_menu_8010A070
/* 10C9F0 800EE900 00402021 */   addu      $a0, $v0, $zero
/* 10C9F4 800EE904 0803BA50 */  j          .Lmenu_800EE940
/* 10C9F8 800EE908 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE90C
/* 10C9FC 800EE90C 0C01FB4C */  jal        func_8007ED30
/* 10CA00 800EE910 24040770 */   addiu     $a0, $zero, 0x770
/* 10CA04 800EE914 0C040E1C */  jal        func_menu_80103870
/* 10CA08 800EE918 00402021 */   addu      $a0, $v0, $zero
/* 10CA0C 800EE91C 0803BA50 */  j          .Lmenu_800EE940
/* 10CA10 800EE920 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE924
/* 10CA14 800EE924 0C01FB4C */  jal        func_8007ED30
/* 10CA18 800EE928 240416A4 */   addiu     $a0, $zero, 0x16A4
/* 10CA1C 800EE92C 0C04333C */  jal        func_menu_8010CCF0
/* 10CA20 800EE930 00402021 */   addu      $a0, $v0, $zero
/* 10CA24 800EE934 0803BA50 */  j          .Lmenu_800EE940
/* 10CA28 800EE938 00408021 */   addu      $s0, $v0, $zero
glabel Lmenu_800EE93C
/* 10CA2C 800EE93C 00008021 */  addu       $s0, $zero, $zero
.Lmenu_800EE940:
/* 10CA30 800EE940 0C01FB72 */  jal        func_8007EDC8
/* 10CA34 800EE944 00000000 */   nop
/* 10CA38 800EE948 16000008 */  bnez       $s0, .Lmenu_800EE96C
/* 10CA3C 800EE94C 02001021 */   addu      $v0, $s0, $zero
/* 10CA40 800EE950 3C04800D */  lui        $a0, %hi(D_menu_800CBAF0)
/* 10CA44 800EE954 2484BAF0 */  addiu      $a0, $a0, %lo(D_menu_800CBAF0)
/* 10CA48 800EE958 00002821 */  addu       $a1, $zero, $zero
/* 10CA4C 800EE95C 00A03021 */  addu       $a2, $a1, $zero
/* 10CA50 800EE960 0C011ACF */  jal        func_80046B3C
/* 10CA54 800EE964 00A03821 */   addu      $a3, $a1, $zero
/* 10CA58 800EE968 02001021 */  addu       $v0, $s0, $zero
.Lmenu_800EE96C:
/* 10CA5C 800EE96C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10CA60 800EE970 8FB00010 */  lw         $s0, 0x10($sp)
/* 10CA64 800EE974 03E00008 */  jr         $ra
/* 10CA68 800EE978 27BD0018 */   addiu     $sp, $sp, 0x18
