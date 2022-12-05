.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EB620
/* 109710 800EB620 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 109714 800EB624 AFB00010 */  sw         $s0, 0x10($sp)
/* 109718 800EB628 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10971C 800EB62C 0C01637C */  jal        func_80058DF0
/* 109720 800EB630 00808021 */   addu      $s0, $a0, $zero
/* 109724 800EB634 3C02800D */  lui        $v0, %hi(D_menu_800CB848)
/* 109728 800EB638 2442B848 */  addiu      $v0, $v0, %lo(D_menu_800CB848)
/* 10972C 800EB63C 02002021 */  addu       $a0, $s0, $zero
/* 109730 800EB640 0C03ADA9 */  jal        func_menu_800EB6A4
/* 109734 800EB644 AE020008 */   sw        $v0, 0x8($s0)
/* 109738 800EB648 02001021 */  addu       $v0, $s0, $zero
/* 10973C 800EB64C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 109740 800EB650 8FB00010 */  lw         $s0, 0x10($sp)
/* 109744 800EB654 03E00008 */  jr         $ra
/* 109748 800EB658 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EB65C
/* 10974C 800EB65C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 109750 800EB660 AFB00010 */  sw         $s0, 0x10($sp)
/* 109754 800EB664 00808021 */  addu       $s0, $a0, $zero
/* 109758 800EB668 AFB10014 */  sw         $s1, 0x14($sp)
/* 10975C 800EB66C 00A08821 */  addu       $s1, $a1, $zero
/* 109760 800EB670 3C02800D */  lui        $v0, %hi(D_menu_800CB848)
/* 109764 800EB674 2442B848 */  addiu      $v0, $v0, %lo(D_menu_800CB848)
/* 109768 800EB678 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10976C 800EB67C 0C03AE83 */  jal        func_menu_800EBA0C
/* 109770 800EB680 AE020008 */   sw        $v0, 0x8($s0)
/* 109774 800EB684 02002021 */  addu       $a0, $s0, $zero
/* 109778 800EB688 0C016383 */  jal        func_80058E0C
/* 10977C 800EB68C 02202821 */   addu      $a1, $s1, $zero
/* 109780 800EB690 8FBF0018 */  lw         $ra, 0x18($sp)
/* 109784 800EB694 8FB10014 */  lw         $s1, 0x14($sp)
/* 109788 800EB698 8FB00010 */  lw         $s0, 0x10($sp)
/* 10978C 800EB69C 03E00008 */  jr         $ra
/* 109790 800EB6A0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EB6A4
/* 109794 800EB6A4 AC80000C */  sw         $zero, 0xC($a0)
/* 109798 800EB6A8 AC800010 */  sw         $zero, 0x10($a0)
/* 10979C 800EB6AC 03E00008 */  jr         $ra
/* 1097A0 800EB6B0 AC800014 */   sw        $zero, 0x14($a0)

glabel func_menu_800EB6B4
/* 1097A4 800EB6B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1097A8 800EB6B8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1097AC 800EB6BC 00808821 */  addu       $s1, $a0, $zero
/* 1097B0 800EB6C0 AFB20018 */  sw         $s2, 0x18($sp)
/* 1097B4 800EB6C4 00A09021 */  addu       $s2, $a1, $zero
/* 1097B8 800EB6C8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1097BC 800EB6CC AFB40020 */  sw         $s4, 0x20($sp)
/* 1097C0 800EB6D0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1097C4 800EB6D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1097C8 800EB6D8 8E22000C */  lw         $v0, 0xC($s1)
/* 1097CC 800EB6DC 10400006 */  beqz       $v0, .Lmenu_800EB6F8
/* 1097D0 800EB6E0 00C08021 */   addu      $s0, $a2, $zero
/* 1097D4 800EB6E4 8E220008 */  lw         $v0, 0x8($s1)
/* 1097D8 800EB6E8 84440018 */  lh         $a0, 0x18($v0)
/* 1097DC 800EB6EC 8C42001C */  lw         $v0, 0x1C($v0)
/* 1097E0 800EB6F0 0040F809 */  jalr       $v0
/* 1097E4 800EB6F4 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800EB6F8:
/* 1097E8 800EB6F8 12000014 */  beqz       $s0, .Lmenu_800EB74C
/* 1097EC 800EB6FC 00000000 */   nop
/* 1097F0 800EB700 0C01FB4C */  jal        func_8007ED30
/* 1097F4 800EB704 24040654 */   addiu     $a0, $zero, 0x654
/* 1097F8 800EB708 0C00278C */  jal        func_80009E30
/* 1097FC 800EB70C 00402021 */   addu      $a0, $v0, $zero
/* 109800 800EB710 00408021 */  addu       $s0, $v0, $zero
/* 109804 800EB714 56000008 */  bnel       $s0, $zero, .Lmenu_800EB738
/* 109808 800EB718 02002021 */   addu      $a0, $s0, $zero
/* 10980C 800EB71C 3C04800D */  lui        $a0, %hi(D_menu_800CB770)
/* 109810 800EB720 2484B770 */  addiu      $a0, $a0, %lo(D_menu_800CB770)
/* 109814 800EB724 00002821 */  addu       $a1, $zero, $zero
/* 109818 800EB728 00A03021 */  addu       $a2, $a1, $zero
/* 10981C 800EB72C 0C011ACF */  jal        func_80046B3C
/* 109820 800EB730 00A03821 */   addu      $a3, $a1, $zero
/* 109824 800EB734 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800EB738:
/* 109828 800EB738 3C05800D */  lui        $a1, %hi(D_menu_800CB774)
/* 10982C 800EB73C 0C0025BA */  jal        func_800096E8
/* 109830 800EB740 24A5B774 */   addiu     $a1, $a1, %lo(D_menu_800CB774)
/* 109834 800EB744 0803ADE3 */  j          .Lmenu_800EB78C
/* 109838 800EB748 3C028012 */   lui       $v0, %hi(D_menu_80126A50)
.Lmenu_800EB74C:
/* 10983C 800EB74C 0C01FB4C */  jal        func_8007ED30
/* 109840 800EB750 24040658 */   addiu     $a0, $zero, 0x658
/* 109844 800EB754 00408021 */  addu       $s0, $v0, $zero
/* 109848 800EB758 0C002504 */  jal        func_80009410
/* 10984C 800EB75C 02002021 */   addu      $a0, $s0, $zero
/* 109850 800EB760 3C02800D */  lui        $v0, %hi(D_menu_800CB798)
/* 109854 800EB764 2442B798 */  addiu      $v0, $v0, %lo(D_menu_800CB798)
/* 109858 800EB768 16000007 */  bnez       $s0, .Lmenu_800EB788
/* 10985C 800EB76C AE020028 */   sw        $v0, 0x28($s0)
/* 109860 800EB770 3C04800D */  lui        $a0, %hi(D_menu_800CB770)
/* 109864 800EB774 2484B770 */  addiu      $a0, $a0, %lo(D_menu_800CB770)
/* 109868 800EB778 00002821 */  addu       $a1, $zero, $zero
/* 10986C 800EB77C 00A03021 */  addu       $a2, $a1, $zero
/* 109870 800EB780 0C011ACF */  jal        func_80046B3C
/* 109874 800EB784 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800EB788:
/* 109878 800EB788 3C028012 */  lui        $v0, %hi(D_menu_80126A50)
.Lmenu_800EB78C:
/* 10987C 800EB78C 8C446A50 */  lw         $a0, %lo(D_menu_80126A50)($v0)
/* 109880 800EB790 0C01FB65 */  jal        func_8007ED94
/* 109884 800EB794 00000000 */   nop
/* 109888 800EB798 0C01FB4C */  jal        func_8007ED30
/* 10988C 800EB79C 24040014 */   addiu     $a0, $zero, 0x14
/* 109890 800EB7A0 0C03B118 */  jal        func_menu_800EC460
/* 109894 800EB7A4 00402021 */   addu      $a0, $v0, $zero
/* 109898 800EB7A8 0C01FB72 */  jal        func_8007EDC8
/* 10989C 800EB7AC AE22000C */   sw        $v0, 0xC($s1)
/* 1098A0 800EB7B0 8E22000C */  lw         $v0, 0xC($s1)
/* 1098A4 800EB7B4 14400008 */  bnez       $v0, .Lmenu_800EB7D8
/* 1098A8 800EB7B8 02402821 */   addu      $a1, $s2, $zero
/* 1098AC 800EB7BC 3C04800D */  lui        $a0, %hi(D_menu_800CB770)
/* 1098B0 800EB7C0 2484B770 */  addiu      $a0, $a0, %lo(D_menu_800CB770)
/* 1098B4 800EB7C4 00002821 */  addu       $a1, $zero, $zero
/* 1098B8 800EB7C8 00A03021 */  addu       $a2, $a1, $zero
/* 1098BC 800EB7CC 0C011ACF */  jal        func_80046B3C
/* 1098C0 800EB7D0 00A03821 */   addu      $a3, $a1, $zero
/* 1098C4 800EB7D4 02402821 */  addu       $a1, $s2, $zero
.Lmenu_800EB7D8:
/* 1098C8 800EB7D8 24140029 */  addiu      $s4, $zero, 0x29
/* 1098CC 800EB7DC 24130028 */  addiu      $s3, $zero, 0x28
/* 1098D0 800EB7E0 8E020028 */  lw         $v0, 0x28($s0)
/* 1098D4 800EB7E4 2412002C */  addiu      $s2, $zero, 0x2C
/* 1098D8 800EB7E8 84440088 */  lh         $a0, 0x88($v0)
/* 1098DC 800EB7EC 8C42008C */  lw         $v0, 0x8C($v0)
/* 1098E0 800EB7F0 0040F809 */  jalr       $v0
/* 1098E4 800EB7F4 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800EB7F8:
/* 1098E8 800EB7F8 8E020028 */  lw         $v0, 0x28($s0)
/* 1098EC 800EB7FC 844400A0 */  lh         $a0, 0xA0($v0)
/* 1098F0 800EB800 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 1098F4 800EB804 0040F809 */  jalr       $v0
/* 1098F8 800EB808 02042021 */   addu      $a0, $s0, $a0
/* 1098FC 800EB80C 00401821 */  addu       $v1, $v0, $zero
/* 109900 800EB810 1060001C */  beqz       $v1, .Lmenu_800EB884
/* 109904 800EB814 00000000 */   nop
/* 109908 800EB818 10740010 */  beq        $v1, $s4, .Lmenu_800EB85C
/* 10990C 800EB81C 2C62002A */   sltiu     $v0, $v1, 0x2A
/* 109910 800EB820 10400005 */  beqz       $v0, .Lmenu_800EB838
/* 109914 800EB824 00000000 */   nop
/* 109918 800EB828 10730007 */  beq        $v1, $s3, .Lmenu_800EB848
/* 10991C 800EB82C 02002821 */   addu      $a1, $s0, $zero
/* 109920 800EB830 0803ADFE */  j          .Lmenu_800EB7F8
/* 109924 800EB834 00000000 */   nop
.Lmenu_800EB838:
/* 109928 800EB838 5072000E */  beql       $v1, $s2, .Lmenu_800EB874
/* 10992C 800EB83C 02202021 */   addu      $a0, $s1, $zero
/* 109930 800EB840 0803ADFE */  j          .Lmenu_800EB7F8
/* 109934 800EB844 00000000 */   nop
.Lmenu_800EB848:
/* 109938 800EB848 8E24000C */  lw         $a0, 0xC($s1)
/* 10993C 800EB84C 0C03B139 */  jal        func_menu_800EC4E4
/* 109940 800EB850 24060002 */   addiu     $a2, $zero, 0x2
/* 109944 800EB854 0803ADFE */  j          .Lmenu_800EB7F8
/* 109948 800EB858 00000000 */   nop
.Lmenu_800EB85C:
/* 10994C 800EB85C 8E24000C */  lw         $a0, 0xC($s1)
/* 109950 800EB860 02002821 */  addu       $a1, $s0, $zero
/* 109954 800EB864 0C03B139 */  jal        func_menu_800EC4E4
/* 109958 800EB868 24060001 */   addiu     $a2, $zero, 0x1
/* 10995C 800EB86C 0803ADFE */  j          .Lmenu_800EB7F8
/* 109960 800EB870 00000000 */   nop
.Lmenu_800EB874:
/* 109964 800EB874 0C03AE35 */  jal        func_menu_800EB8D4
/* 109968 800EB878 02002821 */   addu      $a1, $s0, $zero
/* 10996C 800EB87C 0803ADFE */  j          .Lmenu_800EB7F8
/* 109970 800EB880 00000000 */   nop
.Lmenu_800EB884:
/* 109974 800EB884 8E020028 */  lw         $v0, 0x28($s0)
/* 109978 800EB888 84440048 */  lh         $a0, 0x48($v0)
/* 10997C 800EB88C 8C42004C */  lw         $v0, 0x4C($v0)
/* 109980 800EB890 0040F809 */  jalr       $v0
/* 109984 800EB894 02042021 */   addu      $a0, $s0, $a0
/* 109988 800EB898 12000006 */  beqz       $s0, .Lmenu_800EB8B4
/* 10998C 800EB89C 24050003 */   addiu     $a1, $zero, 0x3
/* 109990 800EB8A0 8E020028 */  lw         $v0, 0x28($s0)
/* 109994 800EB8A4 84440038 */  lh         $a0, 0x38($v0)
/* 109998 800EB8A8 8C42003C */  lw         $v0, 0x3C($v0)
/* 10999C 800EB8AC 0040F809 */  jalr       $v0
/* 1099A0 800EB8B0 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800EB8B4:
/* 1099A4 800EB8B4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1099A8 800EB8B8 8FB40020 */  lw         $s4, 0x20($sp)
/* 1099AC 800EB8BC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1099B0 800EB8C0 8FB20018 */  lw         $s2, 0x18($sp)
/* 1099B4 800EB8C4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1099B8 800EB8C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1099BC 800EB8CC 03E00008 */  jr         $ra
/* 1099C0 800EB8D0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EB8D4
/* 1099C4 800EB8D4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1099C8 800EB8D8 AFB40028 */  sw         $s4, 0x28($sp)
/* 1099CC 800EB8DC 0080A021 */  addu       $s4, $a0, $zero
/* 1099D0 800EB8E0 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1099D4 800EB8E4 00A0A821 */  addu       $s5, $a1, $zero
/* 1099D8 800EB8E8 02A02021 */  addu       $a0, $s5, $zero
/* 1099DC 800EB8EC AFBF0030 */  sw         $ra, 0x30($sp)
/* 1099E0 800EB8F0 AFB30024 */  sw         $s3, 0x24($sp)
/* 1099E4 800EB8F4 AFB20020 */  sw         $s2, 0x20($sp)
/* 1099E8 800EB8F8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1099EC 800EB8FC 0C002723 */  jal        func_80009C8C
/* 1099F0 800EB900 AFB00018 */   sw        $s0, 0x18($sp)
/* 1099F4 800EB904 02802021 */  addu       $a0, $s4, $zero
/* 1099F8 800EB908 00402821 */  addu       $a1, $v0, $zero
/* 1099FC 800EB90C 0C016397 */  jal        func_80058E5C
/* 109A00 800EB910 AE850010 */   sw        $a1, 0x10($s4)
/* 109A04 800EB914 3C028012 */  lui        $v0, %hi(D_menu_80126A50)
/* 109A08 800EB918 8C446A50 */  lw         $a0, %lo(D_menu_80126A50)($v0)
/* 109A0C 800EB91C 0C01FB65 */  jal        func_8007ED94
/* 109A10 800EB920 00000000 */   nop
/* 109A14 800EB924 8E900010 */  lw         $s0, 0x10($s4)
/* 109A18 800EB928 00102040 */  sll        $a0, $s0, 1
/* 109A1C 800EB92C 00902021 */  addu       $a0, $a0, $s0
/* 109A20 800EB930 00042080 */  sll        $a0, $a0, 2
/* 109A24 800EB934 0C00943C */  jal        func_800250F0
/* 109A28 800EB938 24840008 */   addiu     $a0, $a0, 0x8
/* 109A2C 800EB93C 24420008 */  addiu      $v0, $v0, 0x8
/* 109A30 800EB940 00409821 */  addu       $s3, $v0, $zero
/* 109A34 800EB944 02609021 */  addu       $s2, $s3, $zero
/* 109A38 800EB948 2611FFFF */  addiu      $s1, $s0, -0x1
/* 109A3C 800EB94C 06200007 */  bltz       $s1, .Lmenu_800EB96C
/* 109A40 800EB950 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 109A44 800EB954 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800EB958:
/* 109A48 800EB958 0C03ACF0 */  jal        func_menu_800EB3C0
/* 109A4C 800EB95C 02402021 */   addu      $a0, $s2, $zero
/* 109A50 800EB960 2631FFFF */  addiu      $s1, $s1, -0x1
/* 109A54 800EB964 1630FFFC */  bne        $s1, $s0, .Lmenu_800EB958
/* 109A58 800EB968 2652000C */   addiu     $s2, $s2, 0xC
.Lmenu_800EB96C:
/* 109A5C 800EB96C 0C01FB72 */  jal        func_8007EDC8
/* 109A60 800EB970 AE930014 */   sw        $s3, 0x14($s4)
/* 109A64 800EB974 00008821 */  addu       $s1, $zero, $zero
/* 109A68 800EB978 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800EB97C:
/* 109A6C 800EB97C 8E820010 */  lw         $v0, 0x10($s4)
/* 109A70 800EB980 0222102B */  sltu       $v0, $s1, $v0
/* 109A74 800EB984 10400018 */  beqz       $v0, .Lmenu_800EB9E8
/* 109A78 800EB988 02A02021 */   addu      $a0, $s5, $zero
/* 109A7C 800EB98C 0C0026F4 */  jal        func_80009BD0
/* 109A80 800EB990 2405002C */   addiu     $a1, $zero, 0x2C
/* 109A84 800EB994 8EA20028 */  lw         $v0, 0x28($s5)
/* 109A88 800EB998 26310001 */  addiu      $s1, $s1, 0x1
/* 109A8C 800EB99C 844400A0 */  lh         $a0, 0xA0($v0)
/* 109A90 800EB9A0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 109A94 800EB9A4 0040F809 */  jalr       $v0
/* 109A98 800EB9A8 02A42021 */   addu      $a0, $s5, $a0
/* 109A9C 800EB9AC 27A40010 */  addiu      $a0, $sp, 0x10
/* 109AA0 800EB9B0 26A50044 */  addiu      $a1, $s5, 0x44
/* 109AA4 800EB9B4 0C000708 */  jal        func_80001C20
/* 109AA8 800EB9B8 24060008 */   addiu     $a2, $zero, 0x8
/* 109AAC 800EB9BC 02802021 */  addu       $a0, $s4, $zero
/* 109AB0 800EB9C0 8E860014 */  lw         $a2, 0x14($s4)
/* 109AB4 800EB9C4 27A50010 */  addiu      $a1, $sp, 0x10
/* 109AB8 800EB9C8 0C0163C7 */  jal        func_80058F1C
/* 109ABC 800EB9CC 00D03021 */   addu      $a2, $a2, $s0
/* 109AC0 800EB9D0 8E840014 */  lw         $a0, 0x14($s4)
/* 109AC4 800EB9D4 02A02821 */  addu       $a1, $s5, $zero
/* 109AC8 800EB9D8 0C03AD08 */  jal        func_menu_800EB420
/* 109ACC 800EB9DC 00902021 */   addu      $a0, $a0, $s0
/* 109AD0 800EB9E0 0803AE5F */  j          .Lmenu_800EB97C
/* 109AD4 800EB9E4 2610000C */   addiu     $s0, $s0, 0xC
.Lmenu_800EB9E8:
/* 109AD8 800EB9E8 8FBF0030 */  lw         $ra, 0x30($sp)
/* 109ADC 800EB9EC 8FB5002C */  lw         $s5, 0x2C($sp)
/* 109AE0 800EB9F0 8FB40028 */  lw         $s4, 0x28($sp)
/* 109AE4 800EB9F4 8FB30024 */  lw         $s3, 0x24($sp)
/* 109AE8 800EB9F8 8FB20020 */  lw         $s2, 0x20($sp)
/* 109AEC 800EB9FC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 109AF0 800EBA00 8FB00018 */  lw         $s0, 0x18($sp)
/* 109AF4 800EBA04 03E00008 */  jr         $ra
/* 109AF8 800EBA08 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800EBA0C
/* 109AFC 800EBA0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 109B00 800EBA10 AFB10014 */  sw         $s1, 0x14($sp)
/* 109B04 800EBA14 00808821 */  addu       $s1, $a0, $zero
/* 109B08 800EBA18 AFBF0018 */  sw         $ra, 0x18($sp)
/* 109B0C 800EBA1C AFB00010 */  sw         $s0, 0x10($sp)
/* 109B10 800EBA20 8E240014 */  lw         $a0, 0x14($s1)
/* 109B14 800EBA24 10800011 */  beqz       $a0, .Lmenu_800EBA6C
/* 109B18 800EBA28 00000000 */   nop
/* 109B1C 800EBA2C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 109B20 800EBA30 00031040 */  sll        $v0, $v1, 1
/* 109B24 800EBA34 00431021 */  addu       $v0, $v0, $v1
/* 109B28 800EBA38 00021080 */  sll        $v0, $v0, 2
/* 109B2C 800EBA3C 00828021 */  addu       $s0, $a0, $v0
/* 109B30 800EBA40 10900008 */  beq        $a0, $s0, .Lmenu_800EBA64
/* 109B34 800EBA44 2610FFF4 */   addiu     $s0, $s0, -0xC
.Lmenu_800EBA48:
/* 109B38 800EBA48 02002021 */  addu       $a0, $s0, $zero
/* 109B3C 800EBA4C 0C03ACF7 */  jal        func_menu_800EB3DC
/* 109B40 800EBA50 24050002 */   addiu     $a1, $zero, 0x2
/* 109B44 800EBA54 8E220014 */  lw         $v0, 0x14($s1)
/* 109B48 800EBA58 1450FFFB */  bne        $v0, $s0, .Lmenu_800EBA48
/* 109B4C 800EBA5C 2610FFF4 */   addiu     $s0, $s0, -0xC
/* 109B50 800EBA60 8E240014 */  lw         $a0, 0x14($s1)
.Lmenu_800EBA64:
/* 109B54 800EBA64 0C009444 */  jal        func_80025110
/* 109B58 800EBA68 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800EBA6C:
/* 109B5C 800EBA6C 8E23000C */  lw         $v1, 0xC($s1)
/* 109B60 800EBA70 10600006 */  beqz       $v1, .Lmenu_800EBA8C
/* 109B64 800EBA74 24050003 */   addiu     $a1, $zero, 0x3
/* 109B68 800EBA78 8C620008 */  lw         $v0, 0x8($v1)
/* 109B6C 800EBA7C 84440008 */  lh         $a0, 0x8($v0)
/* 109B70 800EBA80 8C42000C */  lw         $v0, 0xC($v0)
/* 109B74 800EBA84 0040F809 */  jalr       $v0
/* 109B78 800EBA88 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800EBA8C:
/* 109B7C 800EBA8C 0C0163B9 */  jal        func_80058EE4
/* 109B80 800EBA90 02202021 */   addu      $a0, $s1, $zero
/* 109B84 800EBA94 0C03ADA9 */  jal        func_menu_800EB6A4
/* 109B88 800EBA98 02202021 */   addu      $a0, $s1, $zero
/* 109B8C 800EBA9C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 109B90 800EBAA0 8FB10014 */  lw         $s1, 0x14($sp)
/* 109B94 800EBAA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 109B98 800EBAA8 03E00008 */  jr         $ra
/* 109B9C 800EBAAC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EBAB0
/* 109BA0 800EBAB0 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 109BA4 800EBAB4 AFB50074 */  sw         $s5, 0x74($sp)
/* 109BA8 800EBAB8 0080A821 */  addu       $s5, $a0, $zero
/* 109BAC 800EBABC AFB60078 */  sw         $s6, 0x78($sp)
/* 109BB0 800EBAC0 00A0B021 */  addu       $s6, $a1, $zero
/* 109BB4 800EBAC4 AFB20068 */  sw         $s2, 0x68($sp)
/* 109BB8 800EBAC8 00C09021 */  addu       $s2, $a2, $zero
/* 109BBC 800EBACC AFB10064 */  sw         $s1, 0x64($sp)
/* 109BC0 800EBAD0 00E08821 */  addu       $s1, $a3, $zero
/* 109BC4 800EBAD4 02202821 */  addu       $a1, $s1, $zero
/* 109BC8 800EBAD8 AFBF007C */  sw         $ra, 0x7C($sp)
/* 109BCC 800EBADC AFB40070 */  sw         $s4, 0x70($sp)
/* 109BD0 800EBAE0 AFB3006C */  sw         $s3, 0x6C($sp)
/* 109BD4 800EBAE4 0C016427 */  jal        func_8005909C
/* 109BD8 800EBAE8 AFB00060 */   sw        $s0, 0x60($sp)
/* 109BDC 800EBAEC 0040A021 */  addu       $s4, $v0, $zero
/* 109BE0 800EBAF0 56800012 */  bnel       $s4, $zero, .Lmenu_800EBB3C
/* 109BE4 800EBAF4 3C058012 */   lui       $a1, %hi(D_menu_80126A58)
/* 109BE8 800EBAF8 27B00018 */  addiu      $s0, $sp, 0x18
/* 109BEC 800EBAFC 02002021 */  addu       $a0, $s0, $zero
/* 109BF0 800EBB00 02202821 */  addu       $a1, $s1, $zero
/* 109BF4 800EBB04 0C000708 */  jal        func_80001C20
/* 109BF8 800EBB08 24060008 */   addiu     $a2, $zero, 0x8
/* 109BFC 800EBB0C A3A00020 */  sb         $zero, 0x20($sp)
/* 109C00 800EBB10 02002021 */  addu       $a0, $s0, $zero
/* 109C04 800EBB14 3C05800D */  lui        $a1, %hi(D_menu_800CB77C)
/* 109C08 800EBB18 0C0006C8 */  jal        func_80001B20
/* 109C0C 800EBB1C 24A5B77C */   addiu     $a1, $a1, %lo(D_menu_800CB77C)
/* 109C10 800EBB20 3C04800D */  lui        $a0, %hi(D_menu_800CB770)
/* 109C14 800EBB24 2484B770 */  addiu      $a0, $a0, %lo(D_menu_800CB770)
/* 109C18 800EBB28 00002821 */  addu       $a1, $zero, $zero
/* 109C1C 800EBB2C 00A03021 */  addu       $a2, $a1, $zero
/* 109C20 800EBB30 0C011ACF */  jal        func_80046B3C
/* 109C24 800EBB34 00A03821 */   addu      $a3, $a1, $zero
/* 109C28 800EBB38 3C058012 */  lui        $a1, %hi(D_menu_80126A58)
.Lmenu_800EBB3C:
/* 109C2C 800EBB3C 24A56A58 */  addiu      $a1, $a1, %lo(D_menu_80126A58)
/* 109C30 800EBB40 8E42003C */  lw         $v0, 0x3C($s2)
/* 109C34 800EBB44 3C108012 */  lui        $s0, %hi(D_menu_80126A54)
/* 109C38 800EBB48 AE126A54 */  sw         $s2, %lo(D_menu_80126A54)($s0)
/* 109C3C 800EBB4C 84440058 */  lh         $a0, 0x58($v0)
/* 109C40 800EBB50 8C42005C */  lw         $v0, 0x5C($v0)
/* 109C44 800EBB54 0040F809 */  jalr       $v0
/* 109C48 800EBB58 02442021 */   addu      $a0, $s2, $a0
/* 109C4C 800EBB5C 8E036A54 */  lw         $v1, %lo(D_menu_80126A54)($s0)
/* 109C50 800EBB60 8C62003C */  lw         $v0, 0x3C($v1)
/* 109C54 800EBB64 27A50058 */  addiu      $a1, $sp, 0x58
/* 109C58 800EBB68 84440068 */  lh         $a0, 0x68($v0)
/* 109C5C 800EBB6C 8C42006C */  lw         $v0, 0x6C($v0)
/* 109C60 800EBB70 0040F809 */  jalr       $v0
/* 109C64 800EBB74 00642021 */   addu      $a0, $v1, $a0
/* 109C68 800EBB78 8FA30058 */  lw         $v1, 0x58($sp)
/* 109C6C 800EBB7C C6800008 */  lwc1       $f0, 0x8($s4)
/* 109C70 800EBB80 3C028012 */  lui        $v0, %hi(D_menu_80126A60)
/* 109C74 800EBB84 AC406A60 */  sw         $zero, %lo(D_menu_80126A60)($v0)
/* 109C78 800EBB88 3C028012 */  lui        $v0, %hi(D_menu_80126A64)
/* 109C7C 800EBB8C AC406A64 */  sw         $zero, %lo(D_menu_80126A64)($v0)
/* 109C80 800EBB90 3C028012 */  lui        $v0, %hi(D_menu_80126A68)
/* 109C84 800EBB94 AC406A68 */  sw         $zero, %lo(D_menu_80126A68)($v0)
/* 109C88 800EBB98 3C028012 */  lui        $v0, %hi(D_menu_80126A6C)
/* 109C8C 800EBB9C AC406A6C */  sw         $zero, %lo(D_menu_80126A6C)($v0)
/* 109C90 800EBBA0 8C650008 */  lw         $a1, 0x8($v1)
/* 109C94 800EBBA4 8E036A54 */  lw         $v1, %lo(D_menu_80126A54)($s0)
/* 109C98 800EBBA8 3C028012 */  lui        $v0, %hi(D_menu_80126A70)
/* 109C9C 800EBBAC AC406A70 */  sw         $zero, %lo(D_menu_80126A70)($v0)
/* 109CA0 800EBBB0 00608021 */  addu       $s0, $v1, $zero
/* 109CA4 800EBBB4 E4600034 */  swc1       $f0, 0x34($v1)
/* 109CA8 800EBBB8 8E030004 */  lw         $v1, 0x4($s0)
/* 109CAC 800EBBBC 8E840000 */  lw         $a0, 0x0($s4)
/* 109CB0 800EBBC0 3C028012 */  lui        $v0, %hi(D_menu_80126A5C)
/* 109CB4 800EBBC4 0064182B */  sltu       $v1, $v1, $a0
/* 109CB8 800EBBC8 10600007 */  beqz       $v1, .Lmenu_800EBBE8
/* 109CBC 800EBBCC AC456A5C */   sw        $a1, %lo(D_menu_80126A5C)($v0)
/* 109CC0 800EBBD0 0C0153DC */  jal        func_80054F70
/* 109CC4 800EBBD4 02002021 */   addu      $a0, $s0, $zero
/* 109CC8 800EBBD8 02002021 */  addu       $a0, $s0, $zero
/* 109CCC 800EBBDC 8E860000 */  lw         $a2, 0x0($s4)
/* 109CD0 800EBBE0 0C0152FA */  jal        func_80054BE8
/* 109CD4 800EBBE4 02C02821 */   addu      $a1, $s6, $zero
.Lmenu_800EBBE8:
/* 109CD8 800EBBE8 00002021 */  addu       $a0, $zero, $zero
.Lmenu_800EBBEC:
/* 109CDC 800EBBEC 8E020004 */  lw         $v0, 0x4($s0)
/* 109CE0 800EBBF0 0082102B */  sltu       $v0, $a0, $v0
/* 109CE4 800EBBF4 10400006 */  beqz       $v0, .Lmenu_800EBC10
/* 109CE8 800EBBF8 00041080 */   sll       $v0, $a0, 2
/* 109CEC 800EBBFC 8E030008 */  lw         $v1, 0x8($s0)
/* 109CF0 800EBC00 24840001 */  addiu      $a0, $a0, 0x1
/* 109CF4 800EBC04 00431021 */  addu       $v0, $v0, $v1
/* 109CF8 800EBC08 0803AEFB */  j          .Lmenu_800EBBEC
/* 109CFC 800EBC0C AC400000 */   sw        $zero, 0x0($v0)
.Lmenu_800EBC10:
/* 109D00 800EBC10 00009821 */  addu       $s3, $zero, $zero
.Lmenu_800EBC14:
/* 109D04 800EBC14 8E820000 */  lw         $v0, 0x0($s4)
/* 109D08 800EBC18 0262102B */  sltu       $v0, $s3, $v0
/* 109D0C 800EBC1C 10400027 */  beqz       $v0, .Lmenu_800EBCBC
/* 109D10 800EBC20 02C02821 */   addu      $a1, $s6, $zero
/* 109D14 800EBC24 02A02021 */  addu       $a0, $s5, $zero
/* 109D18 800EBC28 02603021 */  addu       $a2, $s3, $zero
/* 109D1C 800EBC2C 8E900004 */  lw         $s0, 0x4($s4)
/* 109D20 800EBC30 00131100 */  sll        $v0, $s3, 4
/* 109D24 800EBC34 02028021 */  addu       $s0, $s0, $v0
/* 109D28 800EBC38 8A080008 */  lwl        $t0, 0x8($s0)
/* 109D2C 800EBC3C 9A08000B */  lwr        $t0, 0xB($s0)
/* 109D30 800EBC40 8A09000C */  lwl        $t1, 0xC($s0)
/* 109D34 800EBC44 9A09000F */  lwr        $t1, 0xF($s0)
/* 109D38 800EBC48 ABA80010 */  swl        $t0, 0x10($sp)
/* 109D3C 800EBC4C BBA80013 */  swr        $t0, 0x13($sp)
/* 109D40 800EBC50 ABA90014 */  swl        $t1, 0x14($sp)
/* 109D44 800EBC54 BBA90017 */  swr        $t1, 0x17($sp)
/* 109D48 800EBC58 0C03AF55 */  jal        func_menu_800EBD54
/* 109D4C 800EBC5C 27A70010 */   addiu     $a3, $sp, 0x10
/* 109D50 800EBC60 8E030004 */  lw         $v1, 0x4($s0)
/* 109D54 800EBC64 8E100000 */  lw         $s0, 0x0($s0)
/* 109D58 800EBC68 00031040 */  sll        $v0, $v1, 1
/* 109D5C 800EBC6C 00431021 */  addu       $v0, $v0, $v1
/* 109D60 800EBC70 00021040 */  sll        $v0, $v0, 1
/* 109D64 800EBC74 02029021 */  addu       $s2, $s0, $v0
/* 109D68 800EBC78 0212102B */  sltu       $v0, $s0, $s2
/* 109D6C 800EBC7C 1040000B */  beqz       $v0, .Lmenu_800EBCAC
/* 109D70 800EBC80 26110004 */   addiu     $s1, $s0, 0x4
/* 109D74 800EBC84 02A02021 */  addu       $a0, $s5, $zero
.Lmenu_800EBC88:
/* 109D78 800EBC88 9626FFFE */  lhu        $a2, -0x2($s1)
/* 109D7C 800EBC8C 96270000 */  lhu        $a3, 0x0($s1)
/* 109D80 800EBC90 26310006 */  addiu      $s1, $s1, 0x6
/* 109D84 800EBC94 96050000 */  lhu        $a1, 0x0($s0)
/* 109D88 800EBC98 0C03AF7C */  jal        func_menu_800EBDF0
/* 109D8C 800EBC9C 26100006 */   addiu     $s0, $s0, 0x6
/* 109D90 800EBCA0 0212102B */  sltu       $v0, $s0, $s2
/* 109D94 800EBCA4 1440FFF8 */  bnez       $v0, .Lmenu_800EBC88
/* 109D98 800EBCA8 02A02021 */   addu      $a0, $s5, $zero
.Lmenu_800EBCAC:
/* 109D9C 800EBCAC 0C03B03D */  jal        func_menu_800EC0F4
/* 109DA0 800EBCB0 02A02021 */   addu      $a0, $s5, $zero
/* 109DA4 800EBCB4 0803AF05 */  j          .Lmenu_800EBC14
/* 109DA8 800EBCB8 26730001 */   addiu     $s3, $s3, 0x1
.Lmenu_800EBCBC:
/* 109DAC 800EBCBC 24050001 */  addiu      $a1, $zero, 0x1
/* 109DB0 800EBCC0 3C048012 */  lui        $a0, %hi(D_menu_80126A70)
/* 109DB4 800EBCC4 3C108012 */  lui        $s0, %hi(D_menu_80126A54)
/* 109DB8 800EBCC8 8C826A70 */  lw         $v0, %lo(D_menu_80126A70)($a0)
/* 109DBC 800EBCCC 8E066A54 */  lw         $a2, %lo(D_menu_80126A54)($s0)
/* 109DC0 800EBCD0 00401821 */  addu       $v1, $v0, $zero
/* 109DC4 800EBCD4 00451021 */  addu       $v0, $v0, $a1
/* 109DC8 800EBCD8 AC826A70 */  sw         $v0, %lo(D_menu_80126A70)($a0)
/* 109DCC 800EBCDC 8CC20020 */  lw         $v0, 0x20($a2)
/* 109DD0 800EBCE0 00031880 */  sll        $v1, $v1, 2
/* 109DD4 800EBCE4 00621821 */  addu       $v1, $v1, $v0
/* 109DD8 800EBCE8 3C026000 */  lui        $v0, (0x60000000 >> 16)
/* 109DDC 800EBCEC AC620000 */  sw         $v0, 0x0($v1)
/* 109DE0 800EBCF0 8CC3003C */  lw         $v1, 0x3C($a2)
/* 109DE4 800EBCF4 00A01021 */  addu       $v0, $a1, $zero
/* 109DE8 800EBCF8 ACC20038 */  sw         $v0, 0x38($a2)
/* 109DEC 800EBCFC 84640070 */  lh         $a0, 0x70($v1)
/* 109DF0 800EBD00 8C620074 */  lw         $v0, 0x74($v1)
/* 109DF4 800EBD04 0040F809 */  jalr       $v0
/* 109DF8 800EBD08 00C42021 */   addu      $a0, $a2, $a0
/* 109DFC 800EBD0C 8E036A54 */  lw         $v1, %lo(D_menu_80126A54)($s0)
/* 109E00 800EBD10 24050001 */  addiu      $a1, $zero, 0x1
/* 109E04 800EBD14 8C62003C */  lw         $v0, 0x3C($v1)
/* 109E08 800EBD18 00A03021 */  addu       $a2, $a1, $zero
/* 109E0C 800EBD1C 84440060 */  lh         $a0, 0x60($v0)
/* 109E10 800EBD20 8C420064 */  lw         $v0, 0x64($v0)
/* 109E14 800EBD24 0040F809 */  jalr       $v0
/* 109E18 800EBD28 00642021 */   addu      $a0, $v1, $a0
/* 109E1C 800EBD2C 8FBF007C */  lw         $ra, 0x7C($sp)
/* 109E20 800EBD30 8FB60078 */  lw         $s6, 0x78($sp)
/* 109E24 800EBD34 8FB50074 */  lw         $s5, 0x74($sp)
/* 109E28 800EBD38 8FB40070 */  lw         $s4, 0x70($sp)
/* 109E2C 800EBD3C 8FB3006C */  lw         $s3, 0x6C($sp)
/* 109E30 800EBD40 8FB20068 */  lw         $s2, 0x68($sp)
/* 109E34 800EBD44 8FB10064 */  lw         $s1, 0x64($sp)
/* 109E38 800EBD48 8FB00060 */  lw         $s0, 0x60($sp)
/* 109E3C 800EBD4C 03E00008 */  jr         $ra
/* 109E40 800EBD50 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_menu_800EBD54
/* 109E44 800EBD54 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 109E48 800EBD58 AFB00010 */  sw         $s0, 0x10($sp)
/* 109E4C 800EBD5C 00C08021 */  addu       $s0, $a2, $zero
/* 109E50 800EBD60 00A02021 */  addu       $a0, $a1, $zero
/* 109E54 800EBD64 00E02821 */  addu       $a1, $a3, $zero
/* 109E58 800EBD68 AFBF0018 */  sw         $ra, 0x18($sp)
/* 109E5C 800EBD6C 0C016F2D */  jal        func_8005BCB4
/* 109E60 800EBD70 AFB10014 */   sw        $s1, 0x14($sp)
/* 109E64 800EBD74 02002821 */  addu       $a1, $s0, $zero
/* 109E68 800EBD78 3C118012 */  lui        $s1, %hi(D_menu_80126A54)
/* 109E6C 800EBD7C 8E246A54 */  lw         $a0, %lo(D_menu_80126A54)($s1)
/* 109E70 800EBD80 0C01543D */  jal        func_800550F4
/* 109E74 800EBD84 00403021 */   addu      $a2, $v0, $zero
/* 109E78 800EBD88 3C0800FF */  lui        $t0, (0xFFFFFF >> 16)
/* 109E7C 800EBD8C 3C078012 */  lui        $a3, %hi(D_menu_80126A70)
/* 109E80 800EBD90 3C034000 */  lui        $v1, (0x40000000 >> 16)
/* 109E84 800EBD94 8CE56A70 */  lw         $a1, %lo(D_menu_80126A70)($a3)
/* 109E88 800EBD98 8E266A54 */  lw         $a2, %lo(D_menu_80126A54)($s1)
/* 109E8C 800EBD9C 00A02021 */  addu       $a0, $a1, $zero
/* 109E90 800EBDA0 8CC20020 */  lw         $v0, 0x20($a2)
/* 109E94 800EBDA4 00042080 */  sll        $a0, $a0, 2
/* 109E98 800EBDA8 00821021 */  addu       $v0, $a0, $v0
/* 109E9C 800EBDAC AC430000 */  sw         $v1, 0x0($v0)
/* 109EA0 800EBDB0 8CC20020 */  lw         $v0, 0x20($a2)
/* 109EA4 800EBDB4 3508FFFF */  ori        $t0, $t0, (0xFFFFFF & 0xFFFF)
/* 109EA8 800EBDB8 00822021 */  addu       $a0, $a0, $v0
/* 109EAC 800EBDBC 8C820000 */  lw         $v0, 0x0($a0)
/* 109EB0 800EBDC0 02088024 */  and        $s0, $s0, $t0
/* 109EB4 800EBDC4 00501025 */  or         $v0, $v0, $s0
/* 109EB8 800EBDC8 AC820000 */  sw         $v0, 0x0($a0)
/* 109EBC 800EBDCC 24020001 */  addiu      $v0, $zero, 0x1
/* 109EC0 800EBDD0 ACC20038 */  sw         $v0, 0x38($a2)
/* 109EC4 800EBDD4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 109EC8 800EBDD8 8FB10014 */  lw         $s1, 0x14($sp)
/* 109ECC 800EBDDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 109ED0 800EBDE0 24A50001 */  addiu      $a1, $a1, 0x1
/* 109ED4 800EBDE4 ACE56A70 */  sw         $a1, %lo(D_menu_80126A70)($a3)
/* 109ED8 800EBDE8 03E00008 */  jr         $ra
/* 109EDC 800EBDEC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EBDF0
/* 109EE0 800EBDF0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 109EE4 800EBDF4 AFB40020 */  sw         $s4, 0x20($sp)
/* 109EE8 800EBDF8 0080A021 */  addu       $s4, $a0, $zero
/* 109EEC 800EBDFC AFB3001C */  sw         $s3, 0x1C($sp)
/* 109EF0 800EBE00 00A09821 */  addu       $s3, $a1, $zero
/* 109EF4 800EBE04 AFB50024 */  sw         $s5, 0x24($sp)
/* 109EF8 800EBE08 00C0A821 */  addu       $s5, $a2, $zero
/* 109EFC 800EBE0C AFB60028 */  sw         $s6, 0x28($sp)
/* 109F00 800EBE10 00E0B021 */  addu       $s6, $a3, $zero
/* 109F04 800EBE14 2406FFFF */  addiu      $a2, $zero, -0x1
/* 109F08 800EBE18 AFB10014 */  sw         $s1, 0x14($sp)
/* 109F0C 800EBE1C 00C08821 */  addu       $s1, $a2, $zero
/* 109F10 800EBE20 AFB20018 */  sw         $s2, 0x18($sp)
/* 109F14 800EBE24 00C09021 */  addu       $s2, $a2, $zero
/* 109F18 800EBE28 24030003 */  addiu      $v1, $zero, 0x3
/* 109F1C 800EBE2C 3C028012 */  lui        $v0, %hi(D_menu_80126A74)
/* 109F20 800EBE30 24456A74 */  addiu      $a1, $v0, %lo(D_menu_80126A74)
/* 109F24 800EBE34 3C028012 */  lui        $v0, %hi(D_menu_80126A64)
/* 109F28 800EBE38 8C426A64 */  lw         $v0, %lo(D_menu_80126A64)($v0)
/* 109F2C 800EBE3C 00002021 */  addu       $a0, $zero, $zero
/* 109F30 800EBE40 AFBF002C */  sw         $ra, 0x2C($sp)
/* 109F34 800EBE44 10400015 */  beqz       $v0, .Lmenu_800EBE9C
/* 109F38 800EBE48 AFB00010 */   sw        $s0, 0x10($sp)
/* 109F3C 800EBE4C 00403821 */  addu       $a3, $v0, $zero
.Lmenu_800EBE50:
/* 109F40 800EBE50 10600013 */  beqz       $v1, .Lmenu_800EBEA0
/* 109F44 800EBE54 3C028012 */   lui       $v0, %hi(D_menu_80126A64)
/* 109F48 800EBE58 94A20000 */  lhu        $v0, 0x0($a1)
/* 109F4C 800EBE5C 14530003 */  bne        $v0, $s3, .Lmenu_800EBE6C
/* 109F50 800EBE60 00000000 */   nop
/* 109F54 800EBE64 00803021 */  addu       $a2, $a0, $zero
/* 109F58 800EBE68 2463FFFF */  addiu      $v1, $v1, -0x1
.Lmenu_800EBE6C:
/* 109F5C 800EBE6C 14550003 */  bne        $v0, $s5, .Lmenu_800EBE7C
/* 109F60 800EBE70 00000000 */   nop
/* 109F64 800EBE74 00808821 */  addu       $s1, $a0, $zero
/* 109F68 800EBE78 2463FFFF */  addiu      $v1, $v1, -0x1
.Lmenu_800EBE7C:
/* 109F6C 800EBE7C 54560004 */  bnel       $v0, $s6, .Lmenu_800EBE90
/* 109F70 800EBE80 24840001 */   addiu     $a0, $a0, 0x1
/* 109F74 800EBE84 00809021 */  addu       $s2, $a0, $zero
/* 109F78 800EBE88 2463FFFF */  addiu      $v1, $v1, -0x1
/* 109F7C 800EBE8C 24840001 */  addiu      $a0, $a0, 0x1
.Lmenu_800EBE90:
/* 109F80 800EBE90 0087102B */  sltu       $v0, $a0, $a3
/* 109F84 800EBE94 1440FFEE */  bnez       $v0, .Lmenu_800EBE50
/* 109F88 800EBE98 24A50002 */   addiu     $a1, $a1, 0x2
.Lmenu_800EBE9C:
/* 109F8C 800EBE9C 3C028012 */  lui        $v0, %hi(D_menu_80126A64)
.Lmenu_800EBEA0:
/* 109F90 800EBEA0 8C426A64 */  lw         $v0, %lo(D_menu_80126A64)($v0)
/* 109F94 800EBEA4 00431021 */  addu       $v0, $v0, $v1
/* 109F98 800EBEA8 2C420020 */  sltiu      $v0, $v0, 0x20
/* 109F9C 800EBEAC 14400007 */  bnez       $v0, .Lmenu_800EBECC
/* 109FA0 800EBEB0 3C038012 */   lui       $v1, %hi(D_menu_80126A6C)
/* 109FA4 800EBEB4 0C03B03D */  jal        func_menu_800EC0F4
/* 109FA8 800EBEB8 02802021 */   addu      $a0, $s4, $zero
/* 109FAC 800EBEBC 2406FFFF */  addiu      $a2, $zero, -0x1
/* 109FB0 800EBEC0 00C08821 */  addu       $s1, $a2, $zero
/* 109FB4 800EBEC4 00C09021 */  addu       $s2, $a2, $zero
/* 109FB8 800EBEC8 3C038012 */  lui        $v1, %hi(D_menu_80126A6C)
.Lmenu_800EBECC:
/* 109FBC 800EBECC 8C646A6C */  lw         $a0, %lo(D_menu_80126A6C)($v1)
/* 109FC0 800EBED0 24820001 */  addiu      $v0, $a0, 0x1
/* 109FC4 800EBED4 AC626A6C */  sw         $v0, %lo(D_menu_80126A6C)($v1)
/* 109FC8 800EBED8 3C028012 */  lui        $v0, %hi(D_menu_80126A68)
/* 109FCC 800EBEDC 3C038012 */  lui        $v1, %hi(D_menu_80126A5C)
/* 109FD0 800EBEE0 8C426A68 */  lw         $v0, %lo(D_menu_80126A68)($v0)
/* 109FD4 800EBEE4 8C636A5C */  lw         $v1, %lo(D_menu_80126A5C)($v1)
/* 109FD8 800EBEE8 00441021 */  addu       $v0, $v0, $a0
/* 109FDC 800EBEEC 00021080 */  sll        $v0, $v0, 2
/* 109FE0 800EBEF0 04C10006 */  bgez       $a2, .Lmenu_800EBF0C
/* 109FE4 800EBEF4 00628021 */   addu      $s0, $v1, $v0
/* 109FE8 800EBEF8 02802021 */  addu       $a0, $s4, $zero
/* 109FEC 800EBEFC 0C03AFDA */  jal        func_menu_800EBF68
/* 109FF0 800EBF00 02602821 */   addu      $a1, $s3, $zero
/* 109FF4 800EBF04 0803AFC4 */  j          .Lmenu_800EBF10
/* 109FF8 800EBF08 A2020001 */   sb        $v0, 0x1($s0)
.Lmenu_800EBF0C:
/* 109FFC 800EBF0C A2060001 */  sb         $a2, 0x1($s0)
.Lmenu_800EBF10:
/* 10A000 800EBF10 06230005 */  bgezl      $s1, .Lmenu_800EBF28
/* 10A004 800EBF14 A2110002 */   sb        $s1, 0x2($s0)
/* 10A008 800EBF18 02802021 */  addu       $a0, $s4, $zero
/* 10A00C 800EBF1C 0C03AFDA */  jal        func_menu_800EBF68
/* 10A010 800EBF20 02A02821 */   addu      $a1, $s5, $zero
/* 10A014 800EBF24 A2020002 */  sb         $v0, 0x2($s0)
.Lmenu_800EBF28:
/* 10A018 800EBF28 06430005 */  bgezl      $s2, .Lmenu_800EBF40
/* 10A01C 800EBF2C A2120003 */   sb        $s2, 0x3($s0)
/* 10A020 800EBF30 02802021 */  addu       $a0, $s4, $zero
/* 10A024 800EBF34 0C03AFDA */  jal        func_menu_800EBF68
/* 10A028 800EBF38 02C02821 */   addu      $a1, $s6, $zero
/* 10A02C 800EBF3C A2020003 */  sb         $v0, 0x3($s0)
.Lmenu_800EBF40:
/* 10A030 800EBF40 8FBF002C */  lw         $ra, 0x2C($sp)
/* 10A034 800EBF44 8FB60028 */  lw         $s6, 0x28($sp)
/* 10A038 800EBF48 8FB50024 */  lw         $s5, 0x24($sp)
/* 10A03C 800EBF4C 8FB40020 */  lw         $s4, 0x20($sp)
/* 10A040 800EBF50 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10A044 800EBF54 8FB20018 */  lw         $s2, 0x18($sp)
/* 10A048 800EBF58 8FB10014 */  lw         $s1, 0x14($sp)
/* 10A04C 800EBF5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10A050 800EBF60 03E00008 */  jr         $ra
/* 10A054 800EBF64 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800EBF68
/* 10A058 800EBF68 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 10A05C 800EBF6C AFB10044 */  sw         $s1, 0x44($sp)
/* 10A060 800EBF70 00808821 */  addu       $s1, $a0, $zero
/* 10A064 800EBF74 AFB3004C */  sw         $s3, 0x4C($sp)
/* 10A068 800EBF78 00A09821 */  addu       $s3, $a1, $zero
/* 10A06C 800EBF7C 3C038012 */  lui        $v1, %hi(D_menu_80126A74)
/* 10A070 800EBF80 3C028012 */  lui        $v0, %hi(D_menu_80126A64)
/* 10A074 800EBF84 8C476A64 */  lw         $a3, %lo(D_menu_80126A64)($v0)
/* 10A078 800EBF88 24636A74 */  addiu      $v1, $v1, %lo(D_menu_80126A74)
/* 10A07C 800EBF8C AFBF0054 */  sw         $ra, 0x54($sp)
/* 10A080 800EBF90 AFB40050 */  sw         $s4, 0x50($sp)
/* 10A084 800EBF94 AFB20048 */  sw         $s2, 0x48($sp)
/* 10A088 800EBF98 AFB00040 */  sw         $s0, 0x40($sp)
/* 10A08C 800EBF9C 00071040 */  sll        $v0, $a3, 1
/* 10A090 800EBFA0 00431021 */  addu       $v0, $v0, $v1
/* 10A094 800EBFA4 A4530000 */  sh         $s3, 0x0($v0)
/* 10A098 800EBFA8 8E22000C */  lw         $v0, 0xC($s1)
/* 10A09C 800EBFAC 8C430008 */  lw         $v1, 0x8($v0)
/* 10A0A0 800EBFB0 84640030 */  lh         $a0, 0x30($v1)
/* 10A0A4 800EBFB4 27A60010 */  addiu      $a2, $sp, 0x10
/* 10A0A8 800EBFB8 00442021 */  addu       $a0, $v0, $a0
/* 10A0AC 800EBFBC 3C028012 */  lui        $v0, %hi(D_menu_80126A60)
/* 10A0B0 800EBFC0 8C426A60 */  lw         $v0, %lo(D_menu_80126A60)($v0)
/* 10A0B4 800EBFC4 8C630034 */  lw         $v1, 0x34($v1)
/* 10A0B8 800EBFC8 0060F809 */  jalr       $v1
/* 10A0BC 800EBFCC 00479021 */   addu      $s2, $v0, $a3
/* 10A0C0 800EBFD0 3C148012 */  lui        $s4, %hi(D_menu_80126A58)
/* 10A0C4 800EBFD4 8E836A58 */  lw         $v1, %lo(D_menu_80126A58)($s4)
/* 10A0C8 800EBFD8 02402821 */  addu       $a1, $s2, $zero
/* 10A0CC 800EBFDC 8C620008 */  lw         $v0, 0x8($v1)
/* 10A0D0 800EBFE0 27A60010 */  addiu      $a2, $sp, 0x10
/* 10A0D4 800EBFE4 84440050 */  lh         $a0, 0x50($v0)
/* 10A0D8 800EBFE8 8C420054 */  lw         $v0, 0x54($v0)
/* 10A0DC 800EBFEC 0040F809 */  jalr       $v0
/* 10A0E0 800EBFF0 00642021 */   addu      $a0, $v1, $a0
/* 10A0E4 800EBFF4 02602821 */  addu       $a1, $s3, $zero
/* 10A0E8 800EBFF8 8E23000C */  lw         $v1, 0xC($s1)
/* 10A0EC 800EBFFC 27B00030 */  addiu      $s0, $sp, 0x30
/* 10A0F0 800EC000 8C620008 */  lw         $v0, 0x8($v1)
/* 10A0F4 800EC004 02003021 */  addu       $a2, $s0, $zero
/* 10A0F8 800EC008 84440038 */  lh         $a0, 0x38($v0)
/* 10A0FC 800EC00C 8C42003C */  lw         $v0, 0x3C($v0)
/* 10A100 800EC010 0040F809 */  jalr       $v0
/* 10A104 800EC014 00642021 */   addu      $a0, $v1, $a0
/* 10A108 800EC018 8E836A58 */  lw         $v1, %lo(D_menu_80126A58)($s4)
/* 10A10C 800EC01C 02402821 */  addu       $a1, $s2, $zero
/* 10A110 800EC020 8C620008 */  lw         $v0, 0x8($v1)
/* 10A114 800EC024 02003021 */  addu       $a2, $s0, $zero
/* 10A118 800EC028 84440058 */  lh         $a0, 0x58($v0)
/* 10A11C 800EC02C 8C42005C */  lw         $v0, 0x5C($v0)
/* 10A120 800EC030 0040F809 */  jalr       $v0
/* 10A124 800EC034 00642021 */   addu      $a0, $v1, $a0
/* 10A128 800EC038 8E27000C */  lw         $a3, 0xC($s1)
/* 10A12C 800EC03C 94E30002 */  lhu        $v1, 0x2($a3)
/* 10A130 800EC040 24020001 */  addiu      $v0, $zero, 0x1
/* 10A134 800EC044 1462000F */  bne        $v1, $v0, .Lmenu_800EC084
/* 10A138 800EC048 02602821 */   addu      $a1, $s3, $zero
/* 10A13C 800EC04C 27B00038 */  addiu      $s0, $sp, 0x38
/* 10A140 800EC050 8CE20008 */  lw         $v0, 0x8($a3)
/* 10A144 800EC054 02003021 */  addu       $a2, $s0, $zero
/* 10A148 800EC058 84440048 */  lh         $a0, 0x48($v0)
/* 10A14C 800EC05C 8C42004C */  lw         $v0, 0x4C($v0)
/* 10A150 800EC060 0040F809 */  jalr       $v0
/* 10A154 800EC064 00E42021 */   addu      $a0, $a3, $a0
/* 10A158 800EC068 8E836A58 */  lw         $v1, %lo(D_menu_80126A58)($s4)
/* 10A15C 800EC06C 02402821 */  addu       $a1, $s2, $zero
/* 10A160 800EC070 8C620008 */  lw         $v0, 0x8($v1)
/* 10A164 800EC074 84440068 */  lh         $a0, 0x68($v0)
/* 10A168 800EC078 8C42006C */  lw         $v0, 0x6C($v0)
/* 10A16C 800EC07C 0803B02E */  j          .Lmenu_800EC0B8
/* 10A170 800EC080 02003021 */   addu      $a2, $s0, $zero
.Lmenu_800EC084:
/* 10A174 800EC084 27B00020 */  addiu      $s0, $sp, 0x20
/* 10A178 800EC088 8CE20008 */  lw         $v0, 0x8($a3)
/* 10A17C 800EC08C 02003021 */  addu       $a2, $s0, $zero
/* 10A180 800EC090 84440040 */  lh         $a0, 0x40($v0)
/* 10A184 800EC094 8C420044 */  lw         $v0, 0x44($v0)
/* 10A188 800EC098 0040F809 */  jalr       $v0
/* 10A18C 800EC09C 00E42021 */   addu      $a0, $a3, $a0
/* 10A190 800EC0A0 8E836A58 */  lw         $v1, %lo(D_menu_80126A58)($s4)
/* 10A194 800EC0A4 02402821 */  addu       $a1, $s2, $zero
/* 10A198 800EC0A8 8C620008 */  lw         $v0, 0x8($v1)
/* 10A19C 800EC0AC 02003021 */  addu       $a2, $s0, $zero
/* 10A1A0 800EC0B0 84440060 */  lh         $a0, 0x60($v0)
/* 10A1A4 800EC0B4 8C420064 */  lw         $v0, 0x64($v0)
.Lmenu_800EC0B8:
/* 10A1A8 800EC0B8 0040F809 */  jalr       $v0
/* 10A1AC 800EC0BC 00642021 */   addu      $a0, $v1, $a0
/* 10A1B0 800EC0C0 3C038012 */  lui        $v1, %hi(D_menu_80126A64)
/* 10A1B4 800EC0C4 8C646A64 */  lw         $a0, %lo(D_menu_80126A64)($v1)
/* 10A1B8 800EC0C8 8FBF0054 */  lw         $ra, 0x54($sp)
/* 10A1BC 800EC0CC 8FB40050 */  lw         $s4, 0x50($sp)
/* 10A1C0 800EC0D0 8FB3004C */  lw         $s3, 0x4C($sp)
/* 10A1C4 800EC0D4 8FB20048 */  lw         $s2, 0x48($sp)
/* 10A1C8 800EC0D8 8FB10044 */  lw         $s1, 0x44($sp)
/* 10A1CC 800EC0DC 8FB00040 */  lw         $s0, 0x40($sp)
/* 10A1D0 800EC0E0 00801021 */  addu       $v0, $a0, $zero
/* 10A1D4 800EC0E4 24840001 */  addiu      $a0, $a0, 0x1
/* 10A1D8 800EC0E8 AC646A64 */  sw         $a0, %lo(D_menu_80126A64)($v1)
/* 10A1DC 800EC0EC 03E00008 */  jr         $ra
/* 10A1E0 800EC0F0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_menu_800EC0F4
/* 10A1E4 800EC0F4 3C048012 */  lui        $a0, %hi(D_menu_80126A6C)
/* 10A1E8 800EC0F8 8C8C6A6C */  lw         $t4, %lo(D_menu_80126A6C)($a0)
/* 10A1EC 800EC0FC 1180003F */  beqz       $t4, .Lmenu_800EC1FC
/* 10A1F0 800EC100 3C068012 */   lui       $a2, %hi(D_menu_80126A70)
/* 10A1F4 800EC104 3C028012 */  lui        $v0, %hi(D_menu_80126A54)
/* 10A1F8 800EC108 3C038012 */  lui        $v1, %hi(D_menu_80126A64)
/* 10A1FC 800EC10C 3C098012 */  lui        $t1, %hi(D_menu_80126A60)
/* 10A200 800EC110 8CC76A70 */  lw         $a3, %lo(D_menu_80126A70)($a2)
/* 10A204 800EC114 8C486A54 */  lw         $t0, %lo(D_menu_80126A54)($v0)
/* 10A208 800EC118 8C6B6A64 */  lw         $t3, %lo(D_menu_80126A64)($v1)
/* 10A20C 800EC11C 240A0001 */  addiu      $t2, $zero, 0x1
/* 10A210 800EC120 AC606A64 */  sw         $zero, %lo(D_menu_80126A64)($v1)
/* 10A214 800EC124 AC806A6C */  sw         $zero, %lo(D_menu_80126A6C)($a0)
/* 10A218 800EC128 00E02821 */  addu       $a1, $a3, $zero
/* 10A21C 800EC12C 00052880 */  sll        $a1, $a1, 2
/* 10A220 800EC130 8D020020 */  lw         $v0, 0x20($t0)
/* 10A224 800EC134 24E70001 */  addiu      $a3, $a3, 0x1
/* 10A228 800EC138 ACC76A70 */  sw         $a3, %lo(D_menu_80126A70)($a2)
/* 10A22C 800EC13C 00A21021 */  addu       $v0, $a1, $v0
/* 10A230 800EC140 AC400000 */  sw         $zero, 0x0($v0)
/* 10A234 800EC144 8D020020 */  lw         $v0, 0x20($t0)
/* 10A238 800EC148 8D040020 */  lw         $a0, 0x20($t0)
/* 10A23C 800EC14C 00A21021 */  addu       $v0, $a1, $v0
/* 10A240 800EC150 8C430000 */  lw         $v1, 0x0($v0)
/* 10A244 800EC154 24E20001 */  addiu      $v0, $a3, 0x1
/* 10A248 800EC158 00A42021 */  addu       $a0, $a1, $a0
/* 10A24C 800EC15C ACC26A70 */  sw         $v0, %lo(D_menu_80126A70)($a2)
/* 10A250 800EC160 2562FFFF */  addiu      $v0, $t3, -0x1
/* 10A254 800EC164 3042003F */  andi       $v0, $v0, 0x3F
/* 10A258 800EC168 00021400 */  sll        $v0, $v0, 16
/* 10A25C 800EC16C 00073880 */  sll        $a3, $a3, 2
/* 10A260 800EC170 8C830000 */  lw         $v1, 0x0($a0)
/* 10A264 800EC174 8D266A60 */  lw         $a2, %lo(D_menu_80126A60)($t1)
/* 10A268 800EC178 00621825 */  or         $v1, $v1, $v0
/* 10A26C 800EC17C AC830000 */  sw         $v1, 0x0($a0)
/* 10A270 800EC180 8D020020 */  lw         $v0, 0x20($t0)
/* 10A274 800EC184 30C3FFFF */  andi       $v1, $a2, 0xFFFF
/* 10A278 800EC188 00A22821 */  addu       $a1, $a1, $v0
/* 10A27C 800EC18C 8CA20000 */  lw         $v0, 0x0($a1)
/* 10A280 800EC190 00CB3021 */  addu       $a2, $a2, $t3
/* 10A284 800EC194 AD266A60 */  sw         $a2, %lo(D_menu_80126A60)($t1)
/* 10A288 800EC198 00431025 */  or         $v0, $v0, $v1
/* 10A28C 800EC19C ACA20000 */  sw         $v0, 0x0($a1)
/* 10A290 800EC1A0 8D020020 */  lw         $v0, 0x20($t0)
/* 10A294 800EC1A4 3C031000 */  lui        $v1, (0x10000000 >> 16)
/* 10A298 800EC1A8 AD0A0038 */  sw         $t2, 0x38($t0)
/* 10A29C 800EC1AC 00E21021 */  addu       $v0, $a3, $v0
/* 10A2A0 800EC1B0 AC430000 */  sw         $v1, 0x0($v0)
/* 10A2A4 800EC1B4 8D040020 */  lw         $a0, 0x20($t0)
/* 10A2A8 800EC1B8 31820FFF */  andi       $v0, $t4, 0xFFF
/* 10A2AC 800EC1BC 00E42021 */  addu       $a0, $a3, $a0
/* 10A2B0 800EC1C0 8C830000 */  lw         $v1, 0x0($a0)
/* 10A2B4 800EC1C4 00021400 */  sll        $v0, $v0, 16
/* 10A2B8 800EC1C8 00621825 */  or         $v1, $v1, $v0
/* 10A2BC 800EC1CC AC830000 */  sw         $v1, 0x0($a0)
/* 10A2C0 800EC1D0 3C048012 */  lui        $a0, %hi(D_menu_80126A68)
/* 10A2C4 800EC1D4 8C836A68 */  lw         $v1, %lo(D_menu_80126A68)($a0)
/* 10A2C8 800EC1D8 8D050020 */  lw         $a1, 0x20($t0)
/* 10A2CC 800EC1DC 006C1021 */  addu       $v0, $v1, $t4
/* 10A2D0 800EC1E0 00E53821 */  addu       $a3, $a3, $a1
/* 10A2D4 800EC1E4 AC826A68 */  sw         $v0, %lo(D_menu_80126A68)($a0)
/* 10A2D8 800EC1E8 8CE20000 */  lw         $v0, 0x0($a3)
/* 10A2DC 800EC1EC 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 10A2E0 800EC1F0 00431025 */  or         $v0, $v0, $v1
/* 10A2E4 800EC1F4 ACE20000 */  sw         $v0, 0x0($a3)
/* 10A2E8 800EC1F8 AD0A0038 */  sw         $t2, 0x38($t0)
.Lmenu_800EC1FC:
/* 10A2EC 800EC1FC 03E00008 */  jr         $ra
/* 10A2F0 800EC200 00000000 */   nop

glabel func_menu_800EC204
/* 10A2F4 800EC204 3C028012 */  lui        $v0, %hi(D_menu_80126A50)
/* 10A2F8 800EC208 03E00008 */  jr         $ra
/* 10A2FC 800EC20C AC446A50 */   sw        $a0, %lo(D_menu_80126A50)($v0)

glabel func_menu_800EC210
/* 10A300 800EC210 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10A304 800EC214 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10A308 800EC218 0C002513 */  jal        func_8000944C
/* 10A30C 800EC21C 00000000 */   nop
/* 10A310 800EC220 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10A314 800EC224 03E00008 */  jr         $ra
/* 10A318 800EC228 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EC22C
/* 10A31C 800EC22C 8C820010 */  lw         $v0, 0x10($a0)
/* 10A320 800EC230 03E00008 */  jr         $ra
/* 10A324 800EC234 00000000 */   nop

glabel func_menu_800EC238
/* 10A328 800EC238 8C82000C */  lw         $v0, 0xC($a0)
/* 10A32C 800EC23C 03E00008 */  jr         $ra
/* 10A330 800EC240 0002102B */   sltu      $v0, $zero, $v0
