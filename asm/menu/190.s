.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EA520
/* 108610 800EA520 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 108614 800EA524 AFB00010 */  sw         $s0, 0x10($sp)
/* 108618 800EA528 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10861C 800EA52C 0C01637C */  jal        func_80058DF0
/* 108620 800EA530 00808021 */   addu      $s0, $a0, $zero
/* 108624 800EA534 3C02800D */  lui        $v0, %hi(D_menu_800CB700)
/* 108628 800EA538 2442B700 */  addiu      $v0, $v0, %lo(D_menu_800CB700)
/* 10862C 800EA53C 02002021 */  addu       $a0, $s0, $zero
/* 108630 800EA540 0C03A969 */  jal        func_menu_800EA5A4
/* 108634 800EA544 AE020008 */   sw        $v0, 0x8($s0)
/* 108638 800EA548 02001021 */  addu       $v0, $s0, $zero
/* 10863C 800EA54C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 108640 800EA550 8FB00010 */  lw         $s0, 0x10($sp)
/* 108644 800EA554 03E00008 */  jr         $ra
/* 108648 800EA558 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EA55C
/* 10864C 800EA55C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 108650 800EA560 AFB00010 */  sw         $s0, 0x10($sp)
/* 108654 800EA564 00808021 */  addu       $s0, $a0, $zero
/* 108658 800EA568 AFB10014 */  sw         $s1, 0x14($sp)
/* 10865C 800EA56C 00A08821 */  addu       $s1, $a1, $zero
/* 108660 800EA570 3C02800D */  lui        $v0, %hi(D_menu_800CB700)
/* 108664 800EA574 2442B700 */  addiu      $v0, $v0, %lo(D_menu_800CB700)
/* 108668 800EA578 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10866C 800EA57C 0C03A9EE */  jal        func_menu_800EA7B8
/* 108670 800EA580 AE020008 */   sw        $v0, 0x8($s0)
/* 108674 800EA584 02002021 */  addu       $a0, $s0, $zero
/* 108678 800EA588 0C016383 */  jal        func_80058E0C
/* 10867C 800EA58C 02202821 */   addu      $a1, $s1, $zero
/* 108680 800EA590 8FBF0018 */  lw         $ra, 0x18($sp)
/* 108684 800EA594 8FB10014 */  lw         $s1, 0x14($sp)
/* 108688 800EA598 8FB00010 */  lw         $s0, 0x10($sp)
/* 10868C 800EA59C 03E00008 */  jr         $ra
/* 108690 800EA5A0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EA5A4
/* 108694 800EA5A4 AC80000C */  sw         $zero, 0xC($a0)
/* 108698 800EA5A8 AC800010 */  sw         $zero, 0x10($a0)
/* 10869C 800EA5AC AC800014 */  sw         $zero, 0x14($a0)
/* 1086A0 800EA5B0 AC800018 */  sw         $zero, 0x18($a0)
/* 1086A4 800EA5B4 AC80001C */  sw         $zero, 0x1C($a0)
/* 1086A8 800EA5B8 AC800020 */  sw         $zero, 0x20($a0)
/* 1086AC 800EA5BC AC800024 */  sw         $zero, 0x24($a0)
/* 1086B0 800EA5C0 03E00008 */  jr         $ra
/* 1086B4 800EA5C4 AC800028 */   sw        $zero, 0x28($a0)

glabel func_menu_800EA5C8
/* 1086B8 800EA5C8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1086BC 800EA5CC AFB20018 */  sw         $s2, 0x18($sp)
/* 1086C0 800EA5D0 00809021 */  addu       $s2, $a0, $zero
/* 1086C4 800EA5D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1086C8 800EA5D8 00A08021 */  addu       $s0, $a1, $zero
/* 1086CC 800EA5DC AFB10014 */  sw         $s1, 0x14($sp)
/* 1086D0 800EA5E0 00C08821 */  addu       $s1, $a2, $zero
/* 1086D4 800EA5E4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1086D8 800EA5E8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1086DC 800EA5EC AFB40020 */  sw         $s4, 0x20($sp)
/* 1086E0 800EA5F0 8E420010 */  lw         $v0, 0x10($s2)
/* 1086E4 800EA5F4 8FB40038 */  lw         $s4, 0x38($sp)
/* 1086E8 800EA5F8 10400006 */  beqz       $v0, .Lmenu_800EA614
/* 1086EC 800EA5FC 00E09821 */   addu      $s3, $a3, $zero
/* 1086F0 800EA600 8E420008 */  lw         $v0, 0x8($s2)
/* 1086F4 800EA604 84440018 */  lh         $a0, 0x18($v0)
/* 1086F8 800EA608 8C42001C */  lw         $v0, 0x1C($v0)
/* 1086FC 800EA60C 0040F809 */  jalr       $v0
/* 108700 800EA610 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800EA614:
/* 108704 800EA614 AE500010 */  sw         $s0, 0x10($s2)
/* 108708 800EA618 12800014 */  beqz       $s4, .Lmenu_800EA66C
/* 10870C 800EA61C AE510014 */   sw        $s1, 0x14($s2)
/* 108710 800EA620 0C01FB4C */  jal        func_8007ED30
/* 108714 800EA624 24040654 */   addiu     $a0, $zero, 0x654
/* 108718 800EA628 0C00278C */  jal        func_80009E30
/* 10871C 800EA62C 00402021 */   addu      $a0, $v0, $zero
/* 108720 800EA630 00408021 */  addu       $s0, $v0, $zero
/* 108724 800EA634 56000008 */  bnel       $s0, $zero, .Lmenu_800EA658
/* 108728 800EA638 02002021 */   addu      $a0, $s0, $zero
/* 10872C 800EA63C 3C04800D */  lui        $a0, %hi(D_menu_800CB640)
/* 108730 800EA640 2484B640 */  addiu      $a0, $a0, %lo(D_menu_800CB640)
/* 108734 800EA644 00002821 */  addu       $a1, $zero, $zero
/* 108738 800EA648 00A03021 */  addu       $a2, $a1, $zero
/* 10873C 800EA64C 0C011ACF */  jal        func_80046B3C
/* 108740 800EA650 00A03821 */   addu      $a3, $a1, $zero
/* 108744 800EA654 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800EA658:
/* 108748 800EA658 3C05800D */  lui        $a1, %hi(D_menu_800CB644)
/* 10874C 800EA65C 0C0025BA */  jal        func_800096E8
/* 108750 800EA660 24A5B644 */   addiu     $a1, $a1, %lo(D_menu_800CB644)
/* 108754 800EA664 0803A9AB */  j          .Lmenu_800EA6AC
/* 108758 800EA668 02602821 */   addu      $a1, $s3, $zero
.Lmenu_800EA66C:
/* 10875C 800EA66C 0C01FB4C */  jal        func_8007ED30
/* 108760 800EA670 24040658 */   addiu     $a0, $zero, 0x658
/* 108764 800EA674 00408021 */  addu       $s0, $v0, $zero
/* 108768 800EA678 0C002504 */  jal        func_80009410
/* 10876C 800EA67C 02002021 */   addu      $a0, $s0, $zero
/* 108770 800EA680 3C02800D */  lui        $v0, %hi(D_menu_800CB650)
/* 108774 800EA684 2442B650 */  addiu      $v0, $v0, %lo(D_menu_800CB650)
/* 108778 800EA688 16000007 */  bnez       $s0, .Lmenu_800EA6A8
/* 10877C 800EA68C AE020028 */   sw        $v0, 0x28($s0)
/* 108780 800EA690 3C04800D */  lui        $a0, %hi(D_menu_800CB640)
/* 108784 800EA694 2484B640 */  addiu      $a0, $a0, %lo(D_menu_800CB640)
/* 108788 800EA698 00002821 */  addu       $a1, $zero, $zero
/* 10878C 800EA69C 00A03021 */  addu       $a2, $a1, $zero
/* 108790 800EA6A0 0C011ACF */  jal        func_80046B3C
/* 108794 800EA6A4 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800EA6A8:
/* 108798 800EA6A8 02602821 */  addu       $a1, $s3, $zero
.Lmenu_800EA6AC:
/* 10879C 800EA6AC 24130027 */  addiu      $s3, $zero, 0x27
/* 1087A0 800EA6B0 8E020028 */  lw         $v0, 0x28($s0)
/* 1087A4 800EA6B4 24110028 */  addiu      $s1, $zero, 0x28
/* 1087A8 800EA6B8 84440088 */  lh         $a0, 0x88($v0)
/* 1087AC 800EA6BC 8C42008C */  lw         $v0, 0x8C($v0)
.Lmenu_800EA6C0:
/* 1087B0 800EA6C0 0040F809 */  jalr       $v0
/* 1087B4 800EA6C4 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800EA6C8:
/* 1087B8 800EA6C8 8E020028 */  lw         $v0, 0x28($s0)
/* 1087BC 800EA6CC 844400A0 */  lh         $a0, 0xA0($v0)
/* 1087C0 800EA6D0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 1087C4 800EA6D4 0040F809 */  jalr       $v0
/* 1087C8 800EA6D8 02042021 */   addu      $a0, $s0, $a0
/* 1087CC 800EA6DC 10400013 */  beqz       $v0, .Lmenu_800EA72C
/* 1087D0 800EA6E0 00000000 */   nop
/* 1087D4 800EA6E4 50530008 */  beql       $v0, $s3, .Lmenu_800EA708
/* 1087D8 800EA6E8 02402021 */   addu      $a0, $s2, $zero
/* 1087DC 800EA6EC 1451000A */  bne        $v0, $s1, .Lmenu_800EA718
/* 1087E0 800EA6F0 00000000 */   nop
/* 1087E4 800EA6F4 02402021 */  addu       $a0, $s2, $zero
/* 1087E8 800EA6F8 0C03AA3F */  jal        func_menu_800EA8FC
/* 1087EC 800EA6FC 02002821 */   addu      $a1, $s0, $zero
/* 1087F0 800EA700 0803A9B2 */  j          .Lmenu_800EA6C8
/* 1087F4 800EA704 00000000 */   nop
.Lmenu_800EA708:
/* 1087F8 800EA708 0C03AAB7 */  jal        func_menu_800EAADC
/* 1087FC 800EA70C 02002821 */   addu      $a1, $s0, $zero
/* 108800 800EA710 0803A9B2 */  j          .Lmenu_800EA6C8
/* 108804 800EA714 00000000 */   nop
.Lmenu_800EA718:
/* 108808 800EA718 8E020028 */  lw         $v0, 0x28($s0)
/* 10880C 800EA71C 84440098 */  lh         $a0, 0x98($v0)
/* 108810 800EA720 8C42009C */  lw         $v0, 0x9C($v0)
/* 108814 800EA724 0803A9B0 */  j          .Lmenu_800EA6C0
/* 108818 800EA728 00002821 */   addu      $a1, $zero, $zero
.Lmenu_800EA72C:
/* 10881C 800EA72C 8E020028 */  lw         $v0, 0x28($s0)
/* 108820 800EA730 84440048 */  lh         $a0, 0x48($v0)
/* 108824 800EA734 8C42004C */  lw         $v0, 0x4C($v0)
/* 108828 800EA738 0040F809 */  jalr       $v0
/* 10882C 800EA73C 02042021 */   addu      $a0, $s0, $a0
/* 108830 800EA740 12000006 */  beqz       $s0, .Lmenu_800EA75C
/* 108834 800EA744 24050003 */   addiu     $a1, $zero, 0x3
/* 108838 800EA748 8E020028 */  lw         $v0, 0x28($s0)
/* 10883C 800EA74C 84440038 */  lh         $a0, 0x38($v0)
/* 108840 800EA750 8C42003C */  lw         $v0, 0x3C($v0)
/* 108844 800EA754 0040F809 */  jalr       $v0
/* 108848 800EA758 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800EA75C:
/* 10884C 800EA75C 02402021 */  addu       $a0, $s2, $zero
/* 108850 800EA760 0C03AA82 */  jal        func_menu_800EAA08
/* 108854 800EA764 02802821 */   addu      $a1, $s4, $zero
/* 108858 800EA768 8E420024 */  lw         $v0, 0x24($s2)
/* 10885C 800EA76C 1040000A */  beqz       $v0, .Lmenu_800EA798
/* 108860 800EA770 00008021 */   addu      $s0, $zero, $zero
/* 108864 800EA774 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800EA778:
/* 108868 800EA778 8E440028 */  lw         $a0, 0x28($s2)
/* 10886C 800EA77C 26100001 */  addiu      $s0, $s0, 0x1
/* 108870 800EA780 0C03A921 */  jal        func_menu_800EA484
/* 108874 800EA784 00912021 */   addu      $a0, $a0, $s1
/* 108878 800EA788 8E420024 */  lw         $v0, 0x24($s2)
/* 10887C 800EA78C 0202102B */  sltu       $v0, $s0, $v0
/* 108880 800EA790 1440FFF9 */  bnez       $v0, .Lmenu_800EA778
/* 108884 800EA794 263100A8 */   addiu     $s1, $s1, 0xA8
.Lmenu_800EA798:
/* 108888 800EA798 8FBF0024 */  lw         $ra, 0x24($sp)
/* 10888C 800EA79C 8FB40020 */  lw         $s4, 0x20($sp)
/* 108890 800EA7A0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 108894 800EA7A4 8FB20018 */  lw         $s2, 0x18($sp)
/* 108898 800EA7A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 10889C 800EA7AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1088A0 800EA7B0 03E00008 */  jr         $ra
/* 1088A4 800EA7B4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EA7B8
/* 1088A8 800EA7B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1088AC 800EA7BC AFB20018 */  sw         $s2, 0x18($sp)
/* 1088B0 800EA7C0 00809021 */  addu       $s2, $a0, $zero
/* 1088B4 800EA7C4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1088B8 800EA7C8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1088BC 800EA7CC AFB00010 */  sw         $s0, 0x10($sp)
/* 1088C0 800EA7D0 8E42001C */  lw         $v0, 0x1C($s2)
/* 1088C4 800EA7D4 10400025 */  beqz       $v0, .Lmenu_800EA86C
/* 1088C8 800EA7D8 00000000 */   nop
/* 1088CC 800EA7DC 8E420010 */  lw         $v0, 0x10($s2)
/* 1088D0 800EA7E0 1040001D */  beqz       $v0, .Lmenu_800EA858
/* 1088D4 800EA7E4 00000000 */   nop
/* 1088D8 800EA7E8 8E420018 */  lw         $v0, 0x18($s2)
/* 1088DC 800EA7EC 1040001A */  beqz       $v0, .Lmenu_800EA858
/* 1088E0 800EA7F0 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800EA7F4:
/* 1088E4 800EA7F4 8E42001C */  lw         $v0, 0x1C($s2)
/* 1088E8 800EA7F8 00108880 */  sll        $s1, $s0, 2
/* 1088EC 800EA7FC 02221021 */  addu       $v0, $s1, $v0
/* 1088F0 800EA800 8C430000 */  lw         $v1, 0x0($v0)
/* 1088F4 800EA804 1060000F */  beqz       $v1, .Lmenu_800EA844
/* 1088F8 800EA808 00000000 */   nop
/* 1088FC 800EA80C 8C6200EC */  lw         $v0, 0xEC($v1)
/* 108900 800EA810 84440038 */  lh         $a0, 0x38($v0)
/* 108904 800EA814 8C42003C */  lw         $v0, 0x3C($v0)
/* 108908 800EA818 0040F809 */  jalr       $v0
/* 10890C 800EA81C 00642021 */   addu      $a0, $v1, $a0
/* 108910 800EA820 8E42001C */  lw         $v0, 0x1C($s2)
/* 108914 800EA824 8E460010 */  lw         $a2, 0x10($s2)
/* 108918 800EA828 02221021 */  addu       $v0, $s1, $v0
/* 10891C 800EA82C 8CC30000 */  lw         $v1, 0x0($a2)
/* 108920 800EA830 8C450000 */  lw         $a1, 0x0($v0)
/* 108924 800EA834 84640080 */  lh         $a0, 0x80($v1)
/* 108928 800EA838 8C620084 */  lw         $v0, 0x84($v1)
/* 10892C 800EA83C 0040F809 */  jalr       $v0
/* 108930 800EA840 00C42021 */   addu      $a0, $a2, $a0
.Lmenu_800EA844:
/* 108934 800EA844 8E420018 */  lw         $v0, 0x18($s2)
/* 108938 800EA848 26100001 */  addiu      $s0, $s0, 0x1
/* 10893C 800EA84C 0202102B */  sltu       $v0, $s0, $v0
/* 108940 800EA850 1440FFE8 */  bnez       $v0, .Lmenu_800EA7F4
/* 108944 800EA854 00000000 */   nop
.Lmenu_800EA858:
/* 108948 800EA858 8E44001C */  lw         $a0, 0x1C($s2)
/* 10894C 800EA85C 10800003 */  beqz       $a0, .Lmenu_800EA86C
/* 108950 800EA860 00000000 */   nop
/* 108954 800EA864 0C009444 */  jal        func_80025110
/* 108958 800EA868 00000000 */   nop
.Lmenu_800EA86C:
/* 10895C 800EA86C 8E440020 */  lw         $a0, 0x20($s2)
/* 108960 800EA870 10800003 */  beqz       $a0, .Lmenu_800EA880
/* 108964 800EA874 00000000 */   nop
/* 108968 800EA878 0C009444 */  jal        func_80025110
/* 10896C 800EA87C 00000000 */   nop
.Lmenu_800EA880:
/* 108970 800EA880 8E440028 */  lw         $a0, 0x28($s2)
/* 108974 800EA884 10800013 */  beqz       $a0, .Lmenu_800EA8D4
/* 108978 800EA888 00000000 */   nop
/* 10897C 800EA88C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 108980 800EA890 00031080 */  sll        $v0, $v1, 2
/* 108984 800EA894 00431021 */  addu       $v0, $v0, $v1
/* 108988 800EA898 00021080 */  sll        $v0, $v0, 2
/* 10898C 800EA89C 00431021 */  addu       $v0, $v0, $v1
/* 108990 800EA8A0 000210C0 */  sll        $v0, $v0, 3
/* 108994 800EA8A4 00828021 */  addu       $s0, $a0, $v0
/* 108998 800EA8A8 10900008 */  beq        $a0, $s0, .Lmenu_800EA8CC
/* 10899C 800EA8AC 2610FF58 */   addiu     $s0, $s0, -0xA8
.Lmenu_800EA8B0:
/* 1089A0 800EA8B0 02002021 */  addu       $a0, $s0, $zero
/* 1089A4 800EA8B4 0C03A3BA */  jal        func_menu_800E8EE8
/* 1089A8 800EA8B8 24050002 */   addiu     $a1, $zero, 0x2
/* 1089AC 800EA8BC 8E420028 */  lw         $v0, 0x28($s2)
/* 1089B0 800EA8C0 1450FFFB */  bne        $v0, $s0, .Lmenu_800EA8B0
/* 1089B4 800EA8C4 2610FF58 */   addiu     $s0, $s0, -0xA8
/* 1089B8 800EA8C8 8E440028 */  lw         $a0, 0x28($s2)
.Lmenu_800EA8CC:
/* 1089BC 800EA8CC 0C009444 */  jal        func_80025110
/* 1089C0 800EA8D0 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800EA8D4:
/* 1089C4 800EA8D4 0C0163B9 */  jal        func_80058EE4
/* 1089C8 800EA8D8 02402021 */   addu      $a0, $s2, $zero
/* 1089CC 800EA8DC 0C03A969 */  jal        func_menu_800EA5A4
/* 1089D0 800EA8E0 02402021 */   addu      $a0, $s2, $zero
/* 1089D4 800EA8E4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1089D8 800EA8E8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1089DC 800EA8EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1089E0 800EA8F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1089E4 800EA8F4 03E00008 */  jr         $ra
/* 1089E8 800EA8F8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EA8FC
/* 1089EC 800EA8FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1089F0 800EA900 AFB20018 */  sw         $s2, 0x18($sp)
/* 1089F4 800EA904 00809021 */  addu       $s2, $a0, $zero
/* 1089F8 800EA908 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1089FC 800EA90C 00A09821 */  addu       $s3, $a1, $zero
/* 108A00 800EA910 02602021 */  addu       $a0, $s3, $zero
/* 108A04 800EA914 AFBF0020 */  sw         $ra, 0x20($sp)
/* 108A08 800EA918 AFB10014 */  sw         $s1, 0x14($sp)
/* 108A0C 800EA91C 0C002723 */  jal        func_80009C8C
/* 108A10 800EA920 AFB00010 */   sw        $s0, 0x10($sp)
/* 108A14 800EA924 3C038012 */  lui        $v1, %hi(D_menu_80126A30)
/* 108A18 800EA928 8C646A30 */  lw         $a0, %lo(D_menu_80126A30)($v1)
/* 108A1C 800EA92C 0C01FB65 */  jal        func_8007ED94
/* 108A20 800EA930 AE420018 */   sw        $v0, 0x18($s2)
/* 108A24 800EA934 8E440018 */  lw         $a0, 0x18($s2)
/* 108A28 800EA938 0C00943C */  jal        func_800250F0
/* 108A2C 800EA93C 00042080 */   sll       $a0, $a0, 2
/* 108A30 800EA940 8E430018 */  lw         $v1, 0x18($s2)
/* 108A34 800EA944 AE42001C */  sw         $v0, 0x1C($s2)
/* 108A38 800EA948 000320C0 */  sll        $a0, $v1, 3
/* 108A3C 800EA94C 0C00943C */  jal        func_800250F0
/* 108A40 800EA950 00832021 */   addu      $a0, $a0, $v1
/* 108A44 800EA954 0C01FB72 */  jal        func_8007EDC8
/* 108A48 800EA958 AE420020 */   sw        $v0, 0x20($s2)
/* 108A4C 800EA95C 8E42001C */  lw         $v0, 0x1C($s2)
/* 108A50 800EA960 10400005 */  beqz       $v0, .Lmenu_800EA978
/* 108A54 800EA964 3C04800D */   lui       $a0, %hi(D_menu_800CB640)
/* 108A58 800EA968 8E420020 */  lw         $v0, 0x20($s2)
/* 108A5C 800EA96C 14400008 */  bnez       $v0, .Lmenu_800EA990
/* 108A60 800EA970 00008821 */   addu      $s1, $zero, $zero
/* 108A64 800EA974 3C04800D */  lui        $a0, %hi(D_menu_800CB640)
.Lmenu_800EA978:
/* 108A68 800EA978 2484B640 */  addiu      $a0, $a0, %lo(D_menu_800CB640)
/* 108A6C 800EA97C 00002821 */  addu       $a1, $zero, $zero
/* 108A70 800EA980 00A03021 */  addu       $a2, $a1, $zero
/* 108A74 800EA984 0C011ACF */  jal        func_80046B3C
/* 108A78 800EA988 00A03821 */   addu      $a3, $a1, $zero
/* 108A7C 800EA98C 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800EA990:
/* 108A80 800EA990 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800EA994:
/* 108A84 800EA994 8E420018 */  lw         $v0, 0x18($s2)
/* 108A88 800EA998 0222102B */  sltu       $v0, $s1, $v0
/* 108A8C 800EA99C 10400011 */  beqz       $v0, .Lmenu_800EA9E4
/* 108A90 800EA9A0 02602021 */   addu      $a0, $s3, $zero
/* 108A94 800EA9A4 8E620028 */  lw         $v0, 0x28($s3)
/* 108A98 800EA9A8 844400A0 */  lh         $a0, 0xA0($v0)
/* 108A9C 800EA9AC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 108AA0 800EA9B0 0040F809 */  jalr       $v0
/* 108AA4 800EA9B4 02642021 */   addu      $a0, $s3, $a0
/* 108AA8 800EA9B8 26650044 */  addiu      $a1, $s3, 0x44
/* 108AAC 800EA9BC 8E440020 */  lw         $a0, 0x20($s2)
/* 108AB0 800EA9C0 24060008 */  addiu      $a2, $zero, 0x8
/* 108AB4 800EA9C4 0C000708 */  jal        func_80001C20
/* 108AB8 800EA9C8 00902021 */   addu      $a0, $a0, $s0
/* 108ABC 800EA9CC 8E420020 */  lw         $v0, 0x20($s2)
/* 108AC0 800EA9D0 26310001 */  addiu      $s1, $s1, 0x1
/* 108AC4 800EA9D4 02021021 */  addu       $v0, $s0, $v0
/* 108AC8 800EA9D8 26100009 */  addiu      $s0, $s0, 0x9
/* 108ACC 800EA9DC 0803AA65 */  j          .Lmenu_800EA994
/* 108AD0 800EA9E0 A0400008 */   sb        $zero, 0x8($v0)
.Lmenu_800EA9E4:
/* 108AD4 800EA9E4 0C0026F4 */  jal        func_80009BD0
/* 108AD8 800EA9E8 24050006 */   addiu     $a1, $zero, 0x6
/* 108ADC 800EA9EC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 108AE0 800EA9F0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 108AE4 800EA9F4 8FB20018 */  lw         $s2, 0x18($sp)
/* 108AE8 800EA9F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 108AEC 800EA9FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 108AF0 800EAA00 03E00008 */  jr         $ra
/* 108AF4 800EAA04 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EAA08
/* 108AF8 800EAA08 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 108AFC 800EAA0C AFB1001C */  sw         $s1, 0x1C($sp)
/* 108B00 800EAA10 00808821 */  addu       $s1, $a0, $zero
/* 108B04 800EAA14 AFBF0028 */  sw         $ra, 0x28($sp)
/* 108B08 800EAA18 AFB30024 */  sw         $s3, 0x24($sp)
/* 108B0C 800EAA1C AFB20020 */  sw         $s2, 0x20($sp)
/* 108B10 800EAA20 AFB00018 */  sw         $s0, 0x18($sp)
/* 108B14 800EAA24 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 108B18 800EAA28 8E220020 */  lw         $v0, 0x20($s1)
/* 108B1C 800EAA2C 10400023 */  beqz       $v0, .Lmenu_800EAABC
/* 108B20 800EAA30 00A09821 */   addu      $s3, $a1, $zero
/* 108B24 800EAA34 8E220018 */  lw         $v0, 0x18($s1)
/* 108B28 800EAA38 10400020 */  beqz       $v0, .Lmenu_800EAABC
/* 108B2C 800EAA3C 00008021 */   addu      $s0, $zero, $zero
/* 108B30 800EAA40 3C01800D */  lui        $at, %hi(D_menu_800CB64C)
/* 108B34 800EAA44 C434B64C */  lwc1       $f20, %lo(D_menu_800CB64C)($at)
/* 108B38 800EAA48 02009021 */  addu       $s2, $s0, $zero
.Lmenu_800EAA4C:
/* 108B3C 800EAA4C 8E230010 */  lw         $v1, 0x10($s1)
/* 108B40 800EAA50 8C620000 */  lw         $v0, 0x0($v1)
/* 108B44 800EAA54 84440018 */  lh         $a0, 0x18($v0)
/* 108B48 800EAA58 8C42001C */  lw         $v0, 0x1C($v0)
/* 108B4C 800EAA5C 0040F809 */  jalr       $v0
/* 108B50 800EAA60 00642021 */   addu      $a0, $v1, $a0
/* 108B54 800EAA64 8E23001C */  lw         $v1, 0x1C($s1)
/* 108B58 800EAA68 00102080 */  sll        $a0, $s0, 2
/* 108B5C 800EAA6C 00831821 */  addu       $v1, $a0, $v1
/* 108B60 800EAA70 AC620000 */  sw         $v0, 0x0($v1)
/* 108B64 800EAA74 8E22001C */  lw         $v0, 0x1C($s1)
/* 108B68 800EAA78 00822021 */  addu       $a0, $a0, $v0
/* 108B6C 800EAA7C 8C840000 */  lw         $a0, 0x0($a0)
/* 108B70 800EAA80 26100001 */  addiu      $s0, $s0, 0x1
/* 108B74 800EAA84 8C8300EC */  lw         $v1, 0xEC($a0)
/* 108B78 800EAA88 8E260020 */  lw         $a2, 0x20($s1)
/* 108B7C 800EAA8C 84620030 */  lh         $v0, 0x30($v1)
/* 108B80 800EAA90 02603821 */  addu       $a3, $s3, $zero
/* 108B84 800EAA94 E7B40010 */  swc1       $f20, 0x10($sp)
/* 108B88 800EAA98 8E250014 */  lw         $a1, 0x14($s1)
/* 108B8C 800EAA9C 00822021 */  addu       $a0, $a0, $v0
/* 108B90 800EAAA0 8C620034 */  lw         $v0, 0x34($v1)
/* 108B94 800EAAA4 0040F809 */  jalr       $v0
/* 108B98 800EAAA8 00D23021 */   addu      $a2, $a2, $s2
/* 108B9C 800EAAAC 8E220018 */  lw         $v0, 0x18($s1)
/* 108BA0 800EAAB0 0202102B */  sltu       $v0, $s0, $v0
/* 108BA4 800EAAB4 1440FFE5 */  bnez       $v0, .Lmenu_800EAA4C
/* 108BA8 800EAAB8 26520009 */   addiu     $s2, $s2, 0x9
.Lmenu_800EAABC:
/* 108BAC 800EAABC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 108BB0 800EAAC0 8FB30024 */  lw         $s3, 0x24($sp)
/* 108BB4 800EAAC4 8FB20020 */  lw         $s2, 0x20($sp)
/* 108BB8 800EAAC8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 108BBC 800EAACC 8FB00018 */  lw         $s0, 0x18($sp)
/* 108BC0 800EAAD0 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 108BC4 800EAAD4 03E00008 */  jr         $ra
/* 108BC8 800EAAD8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800EAADC
/* 108BCC 800EAADC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 108BD0 800EAAE0 AFB40028 */  sw         $s4, 0x28($sp)
/* 108BD4 800EAAE4 0080A021 */  addu       $s4, $a0, $zero
/* 108BD8 800EAAE8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 108BDC 800EAAEC 00A0A821 */  addu       $s5, $a1, $zero
/* 108BE0 800EAAF0 02A02021 */  addu       $a0, $s5, $zero
/* 108BE4 800EAAF4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 108BE8 800EAAF8 AFB30024 */  sw         $s3, 0x24($sp)
/* 108BEC 800EAAFC AFB20020 */  sw         $s2, 0x20($sp)
/* 108BF0 800EAB00 AFB1001C */  sw         $s1, 0x1C($sp)
/* 108BF4 800EAB04 0C002723 */  jal        func_80009C8C
/* 108BF8 800EAB08 AFB00018 */   sw        $s0, 0x18($sp)
/* 108BFC 800EAB0C 02802021 */  addu       $a0, $s4, $zero
/* 108C00 800EAB10 00402821 */  addu       $a1, $v0, $zero
/* 108C04 800EAB14 0C016397 */  jal        func_80058E5C
/* 108C08 800EAB18 AE850024 */   sw        $a1, 0x24($s4)
/* 108C0C 800EAB1C 3C028012 */  lui        $v0, %hi(D_menu_80126A30)
/* 108C10 800EAB20 8C446A30 */  lw         $a0, %lo(D_menu_80126A30)($v0)
/* 108C14 800EAB24 0C01FB65 */  jal        func_8007ED94
/* 108C18 800EAB28 00000000 */   nop
/* 108C1C 800EAB2C 8E900024 */  lw         $s0, 0x24($s4)
/* 108C20 800EAB30 00102080 */  sll        $a0, $s0, 2
/* 108C24 800EAB34 00902021 */  addu       $a0, $a0, $s0
/* 108C28 800EAB38 00042080 */  sll        $a0, $a0, 2
/* 108C2C 800EAB3C 00902021 */  addu       $a0, $a0, $s0
/* 108C30 800EAB40 000420C0 */  sll        $a0, $a0, 3
/* 108C34 800EAB44 0C00943C */  jal        func_800250F0
/* 108C38 800EAB48 24840008 */   addiu     $a0, $a0, 0x8
/* 108C3C 800EAB4C 24420008 */  addiu      $v0, $v0, 0x8
/* 108C40 800EAB50 00409821 */  addu       $s3, $v0, $zero
/* 108C44 800EAB54 02609021 */  addu       $s2, $s3, $zero
/* 108C48 800EAB58 2611FFFF */  addiu      $s1, $s0, -0x1
/* 108C4C 800EAB5C 06200007 */  bltz       $s1, .Lmenu_800EAB7C
/* 108C50 800EAB60 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 108C54 800EAB64 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800EAB68:
/* 108C58 800EAB68 0C03A3B0 */  jal        func_menu_800E8EC0
/* 108C5C 800EAB6C 02402021 */   addu      $a0, $s2, $zero
/* 108C60 800EAB70 2631FFFF */  addiu      $s1, $s1, -0x1
/* 108C64 800EAB74 1630FFFC */  bne        $s1, $s0, .Lmenu_800EAB68
/* 108C68 800EAB78 265200A8 */   addiu     $s2, $s2, 0xA8
.Lmenu_800EAB7C:
/* 108C6C 800EAB7C 0C01FB72 */  jal        func_8007EDC8
/* 108C70 800EAB80 AE930028 */   sw        $s3, 0x28($s4)
/* 108C74 800EAB84 8E820028 */  lw         $v0, 0x28($s4)
/* 108C78 800EAB88 14400008 */  bnez       $v0, .Lmenu_800EABAC
/* 108C7C 800EAB8C 00008821 */   addu      $s1, $zero, $zero
/* 108C80 800EAB90 3C04800D */  lui        $a0, %hi(D_menu_800CB640)
/* 108C84 800EAB94 2484B640 */  addiu      $a0, $a0, %lo(D_menu_800CB640)
/* 108C88 800EAB98 00002821 */  addu       $a1, $zero, $zero
/* 108C8C 800EAB9C 00A03021 */  addu       $a2, $a1, $zero
/* 108C90 800EABA0 0C011ACF */  jal        func_80046B3C
/* 108C94 800EABA4 00A03821 */   addu      $a3, $a1, $zero
/* 108C98 800EABA8 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800EABAC:
/* 108C9C 800EABAC 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800EABB0:
/* 108CA0 800EABB0 8E820024 */  lw         $v0, 0x24($s4)
/* 108CA4 800EABB4 0222102B */  sltu       $v0, $s1, $v0
/* 108CA8 800EABB8 10400019 */  beqz       $v0, .Lmenu_800EAC20
/* 108CAC 800EABBC 02A02021 */   addu      $a0, $s5, $zero
/* 108CB0 800EABC0 0C0026F4 */  jal        func_80009BD0
/* 108CB4 800EABC4 24050027 */   addiu     $a1, $zero, 0x27
/* 108CB8 800EABC8 8EA20028 */  lw         $v0, 0x28($s5)
/* 108CBC 800EABCC 26310001 */  addiu      $s1, $s1, 0x1
/* 108CC0 800EABD0 844400A0 */  lh         $a0, 0xA0($v0)
/* 108CC4 800EABD4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 108CC8 800EABD8 0040F809 */  jalr       $v0
/* 108CCC 800EABDC 02A42021 */   addu      $a0, $s5, $a0
/* 108CD0 800EABE0 27A40010 */  addiu      $a0, $sp, 0x10
/* 108CD4 800EABE4 26A50044 */  addiu      $a1, $s5, 0x44
/* 108CD8 800EABE8 0C000708 */  jal        func_80001C20
/* 108CDC 800EABEC 24060008 */   addiu     $a2, $zero, 0x8
/* 108CE0 800EABF0 02802021 */  addu       $a0, $s4, $zero
/* 108CE4 800EABF4 8E860028 */  lw         $a2, 0x28($s4)
/* 108CE8 800EABF8 27A50010 */  addiu      $a1, $sp, 0x10
/* 108CEC 800EABFC 0C0163C7 */  jal        func_80058F1C
/* 108CF0 800EAC00 00D03021 */   addu      $a2, $a2, $s0
/* 108CF4 800EAC04 02802821 */  addu       $a1, $s4, $zero
/* 108CF8 800EAC08 8E840028 */  lw         $a0, 0x28($s4)
/* 108CFC 800EAC0C 02A03021 */  addu       $a2, $s5, $zero
/* 108D00 800EAC10 0C03A3FB */  jal        func_menu_800E8FEC
/* 108D04 800EAC14 00902021 */   addu      $a0, $a0, $s0
/* 108D08 800EAC18 0803AAEC */  j          .Lmenu_800EABB0
/* 108D0C 800EAC1C 261000A8 */   addiu     $s0, $s0, 0xA8
.Lmenu_800EAC20:
/* 108D10 800EAC20 0C0026F4 */  jal        func_80009BD0
/* 108D14 800EAC24 24050006 */   addiu     $a1, $zero, 0x6
/* 108D18 800EAC28 8FBF0030 */  lw         $ra, 0x30($sp)
/* 108D1C 800EAC2C 8FB5002C */  lw         $s5, 0x2C($sp)
/* 108D20 800EAC30 8FB40028 */  lw         $s4, 0x28($sp)
/* 108D24 800EAC34 8FB30024 */  lw         $s3, 0x24($sp)
/* 108D28 800EAC38 8FB20020 */  lw         $s2, 0x20($sp)
/* 108D2C 800EAC3C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 108D30 800EAC40 8FB00018 */  lw         $s0, 0x18($sp)
/* 108D34 800EAC44 03E00008 */  jr         $ra
/* 108D38 800EAC48 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800EAC4C
/* 108D3C 800EAC4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 108D40 800EAC50 AFB10014 */  sw         $s1, 0x14($sp)
/* 108D44 800EAC54 00808821 */  addu       $s1, $a0, $zero
/* 108D48 800EAC58 AFB20018 */  sw         $s2, 0x18($sp)
/* 108D4C 800EAC5C 00A09021 */  addu       $s2, $a1, $zero
/* 108D50 800EAC60 AFB00010 */  sw         $s0, 0x10($sp)
/* 108D54 800EAC64 00008021 */  addu       $s0, $zero, $zero
/* 108D58 800EAC68 AFBF001C */  sw         $ra, 0x1C($sp)
.Lmenu_800EAC6C:
/* 108D5C 800EAC6C 8E220018 */  lw         $v0, 0x18($s1)
/* 108D60 800EAC70 0202102B */  sltu       $v0, $s0, $v0
/* 108D64 800EAC74 1040000F */  beqz       $v0, .Lmenu_800EACB4
/* 108D68 800EAC78 00101080 */   sll       $v0, $s0, 2
/* 108D6C 800EAC7C 8E23001C */  lw         $v1, 0x1C($s1)
/* 108D70 800EAC80 00431021 */  addu       $v0, $v0, $v1
/* 108D74 800EAC84 8C420000 */  lw         $v0, 0x0($v0)
/* 108D78 800EAC88 8C4300E0 */  lw         $v1, 0xE0($v0)
/* 108D7C 800EAC8C 14600003 */  bnez       $v1, .Lmenu_800EAC9C
/* 108D80 800EAC90 244400E0 */   addiu     $a0, $v0, 0xE0
/* 108D84 800EAC94 0803AB29 */  j          .Lmenu_800EACA4
/* 108D88 800EAC98 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800EAC9C:
/* 108D8C 800EAC9C 0C016427 */  jal        func_8005909C
/* 108D90 800EACA0 02402821 */   addu      $a1, $s2, $zero
.Lmenu_800EACA4:
/* 108D94 800EACA4 14400004 */  bnez       $v0, .Lmenu_800EACB8
/* 108D98 800EACA8 26100001 */   addiu     $s0, $s0, 0x1
/* 108D9C 800EACAC 0803AB1B */  j          .Lmenu_800EAC6C
/* 108DA0 800EACB0 00000000 */   nop
.Lmenu_800EACB4:
/* 108DA4 800EACB4 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800EACB8:
/* 108DA8 800EACB8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 108DAC 800EACBC 8FB20018 */  lw         $s2, 0x18($sp)
/* 108DB0 800EACC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 108DB4 800EACC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 108DB8 800EACC8 03E00008 */  jr         $ra
/* 108DBC 800EACCC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EACD0
/* 108DC0 800EACD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 108DC4 800EACD4 AFB10014 */  sw         $s1, 0x14($sp)
/* 108DC8 800EACD8 00808821 */  addu       $s1, $a0, $zero
/* 108DCC 800EACDC AFB20018 */  sw         $s2, 0x18($sp)
/* 108DD0 800EACE0 00A09021 */  addu       $s2, $a1, $zero
/* 108DD4 800EACE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 108DD8 800EACE8 00008021 */  addu       $s0, $zero, $zero
/* 108DDC 800EACEC AFBF001C */  sw         $ra, 0x1C($sp)
.Lmenu_800EACF0:
/* 108DE0 800EACF0 8E220018 */  lw         $v0, 0x18($s1)
/* 108DE4 800EACF4 0202102B */  sltu       $v0, $s0, $v0
/* 108DE8 800EACF8 1040000F */  beqz       $v0, .Lmenu_800EAD38
/* 108DEC 800EACFC 00101080 */   sll       $v0, $s0, 2
/* 108DF0 800EAD00 8E23001C */  lw         $v1, 0x1C($s1)
/* 108DF4 800EAD04 00431021 */  addu       $v0, $v0, $v1
/* 108DF8 800EAD08 8C420000 */  lw         $v0, 0x0($v0)
/* 108DFC 800EAD0C 8C4300B0 */  lw         $v1, 0xB0($v0)
/* 108E00 800EAD10 14600003 */  bnez       $v1, .Lmenu_800EAD20
/* 108E04 800EAD14 244400B0 */   addiu     $a0, $v0, 0xB0
/* 108E08 800EAD18 0803AB4A */  j          .Lmenu_800EAD28
/* 108E0C 800EAD1C 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800EAD20:
/* 108E10 800EAD20 0C016427 */  jal        func_8005909C
/* 108E14 800EAD24 02402821 */   addu      $a1, $s2, $zero
.Lmenu_800EAD28:
/* 108E18 800EAD28 14400004 */  bnez       $v0, .Lmenu_800EAD3C
/* 108E1C 800EAD2C 26100001 */   addiu     $s0, $s0, 0x1
/* 108E20 800EAD30 0803AB3C */  j          .Lmenu_800EACF0
/* 108E24 800EAD34 00000000 */   nop
.Lmenu_800EAD38:
/* 108E28 800EAD38 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800EAD3C:
/* 108E2C 800EAD3C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 108E30 800EAD40 8FB20018 */  lw         $s2, 0x18($sp)
/* 108E34 800EAD44 8FB10014 */  lw         $s1, 0x14($sp)
/* 108E38 800EAD48 8FB00010 */  lw         $s0, 0x10($sp)
/* 108E3C 800EAD4C 03E00008 */  jr         $ra
/* 108E40 800EAD50 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EAD54
/* 108E44 800EAD54 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 108E48 800EAD58 AFB10014 */  sw         $s1, 0x14($sp)
/* 108E4C 800EAD5C 00808821 */  addu       $s1, $a0, $zero
/* 108E50 800EAD60 AFB20018 */  sw         $s2, 0x18($sp)
/* 108E54 800EAD64 00A09021 */  addu       $s2, $a1, $zero
/* 108E58 800EAD68 AFB00010 */  sw         $s0, 0x10($sp)
/* 108E5C 800EAD6C 00008021 */  addu       $s0, $zero, $zero
/* 108E60 800EAD70 AFBF001C */  sw         $ra, 0x1C($sp)
.Lmenu_800EAD74:
/* 108E64 800EAD74 8E220018 */  lw         $v0, 0x18($s1)
/* 108E68 800EAD78 0202102B */  sltu       $v0, $s0, $v0
/* 108E6C 800EAD7C 1040000F */  beqz       $v0, .Lmenu_800EADBC
/* 108E70 800EAD80 00101080 */   sll       $v0, $s0, 2
/* 108E74 800EAD84 8E23001C */  lw         $v1, 0x1C($s1)
/* 108E78 800EAD88 00431021 */  addu       $v0, $v0, $v1
/* 108E7C 800EAD8C 8C420000 */  lw         $v0, 0x0($v0)
/* 108E80 800EAD90 8C4300BC */  lw         $v1, 0xBC($v0)
/* 108E84 800EAD94 14600003 */  bnez       $v1, .Lmenu_800EADA4
/* 108E88 800EAD98 244400BC */   addiu     $a0, $v0, 0xBC
/* 108E8C 800EAD9C 0803AB6B */  j          .Lmenu_800EADAC
/* 108E90 800EADA0 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800EADA4:
/* 108E94 800EADA4 0C016427 */  jal        func_8005909C
/* 108E98 800EADA8 02402821 */   addu      $a1, $s2, $zero
.Lmenu_800EADAC:
/* 108E9C 800EADAC 14400004 */  bnez       $v0, .Lmenu_800EADC0
/* 108EA0 800EADB0 26100001 */   addiu     $s0, $s0, 0x1
/* 108EA4 800EADB4 0803AB5D */  j          .Lmenu_800EAD74
/* 108EA8 800EADB8 00000000 */   nop
.Lmenu_800EADBC:
/* 108EAC 800EADBC 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800EADC0:
/* 108EB0 800EADC0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 108EB4 800EADC4 8FB20018 */  lw         $s2, 0x18($sp)
/* 108EB8 800EADC8 8FB10014 */  lw         $s1, 0x14($sp)
/* 108EBC 800EADCC 8FB00010 */  lw         $s0, 0x10($sp)
/* 108EC0 800EADD0 03E00008 */  jr         $ra
/* 108EC4 800EADD4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EADD8
/* 108EC8 800EADD8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 108ECC 800EADDC AFB10014 */  sw         $s1, 0x14($sp)
/* 108ED0 800EADE0 00808821 */  addu       $s1, $a0, $zero
/* 108ED4 800EADE4 AFB20018 */  sw         $s2, 0x18($sp)
/* 108ED8 800EADE8 00A09021 */  addu       $s2, $a1, $zero
/* 108EDC 800EADEC AFB00010 */  sw         $s0, 0x10($sp)
/* 108EE0 800EADF0 00008021 */  addu       $s0, $zero, $zero
/* 108EE4 800EADF4 AFBF001C */  sw         $ra, 0x1C($sp)
.Lmenu_800EADF8:
/* 108EE8 800EADF8 8E220018 */  lw         $v0, 0x18($s1)
/* 108EEC 800EADFC 0202102B */  sltu       $v0, $s0, $v0
/* 108EF0 800EAE00 1040000F */  beqz       $v0, .Lmenu_800EAE40
/* 108EF4 800EAE04 00101080 */   sll       $v0, $s0, 2
/* 108EF8 800EAE08 8E23001C */  lw         $v1, 0x1C($s1)
/* 108EFC 800EAE0C 00431021 */  addu       $v0, $v0, $v1
/* 108F00 800EAE10 8C420000 */  lw         $v0, 0x0($v0)
/* 108F04 800EAE14 8C4300C8 */  lw         $v1, 0xC8($v0)
/* 108F08 800EAE18 14600003 */  bnez       $v1, .Lmenu_800EAE28
/* 108F0C 800EAE1C 244400C8 */   addiu     $a0, $v0, 0xC8
/* 108F10 800EAE20 0803AB8C */  j          .Lmenu_800EAE30
/* 108F14 800EAE24 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800EAE28:
/* 108F18 800EAE28 0C016427 */  jal        func_8005909C
/* 108F1C 800EAE2C 02402821 */   addu      $a1, $s2, $zero
.Lmenu_800EAE30:
/* 108F20 800EAE30 14400004 */  bnez       $v0, .Lmenu_800EAE44
/* 108F24 800EAE34 26100001 */   addiu     $s0, $s0, 0x1
/* 108F28 800EAE38 0803AB7E */  j          .Lmenu_800EADF8
/* 108F2C 800EAE3C 00000000 */   nop
.Lmenu_800EAE40:
/* 108F30 800EAE40 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800EAE44:
/* 108F34 800EAE44 8FBF001C */  lw         $ra, 0x1C($sp)
/* 108F38 800EAE48 8FB20018 */  lw         $s2, 0x18($sp)
/* 108F3C 800EAE4C 8FB10014 */  lw         $s1, 0x14($sp)
/* 108F40 800EAE50 8FB00010 */  lw         $s0, 0x10($sp)
/* 108F44 800EAE54 03E00008 */  jr         $ra
/* 108F48 800EAE58 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EAE5C
/* 108F4C 800EAE5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 108F50 800EAE60 AFBF0010 */  sw         $ra, 0x10($sp)
/* 108F54 800EAE64 8C82001C */  lw         $v0, 0x1C($a0)
/* 108F58 800EAE68 00052880 */  sll        $a1, $a1, 2
/* 108F5C 800EAE6C 00A22821 */  addu       $a1, $a1, $v0
/* 108F60 800EAE70 8CA20000 */  lw         $v0, 0x0($a1)
/* 108F64 800EAE74 8C4300EC */  lw         $v1, 0xEC($v0)
/* 108F68 800EAE78 84640098 */  lh         $a0, 0x98($v1)
/* 108F6C 800EAE7C 00442021 */  addu       $a0, $v0, $a0
/* 108F70 800EAE80 8C62009C */  lw         $v0, 0x9C($v1)
/* 108F74 800EAE84 0040F809 */  jalr       $v0
/* 108F78 800EAE88 00C02821 */   addu      $a1, $a2, $zero
/* 108F7C 800EAE8C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 108F80 800EAE90 03E00008 */  jr         $ra
/* 108F84 800EAE94 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EAE98
/* 108F88 800EAE98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 108F8C 800EAE9C AFBF0010 */  sw         $ra, 0x10($sp)
/* 108F90 800EAEA0 8C82001C */  lw         $v0, 0x1C($a0)
/* 108F94 800EAEA4 00052880 */  sll        $a1, $a1, 2
/* 108F98 800EAEA8 00A22821 */  addu       $a1, $a1, $v0
/* 108F9C 800EAEAC 8CA20000 */  lw         $v0, 0x0($a1)
/* 108FA0 800EAEB0 8C4300EC */  lw         $v1, 0xEC($v0)
/* 108FA4 800EAEB4 846400A0 */  lh         $a0, 0xA0($v1)
/* 108FA8 800EAEB8 00442021 */  addu       $a0, $v0, $a0
/* 108FAC 800EAEBC 8C6200A4 */  lw         $v0, 0xA4($v1)
/* 108FB0 800EAEC0 0040F809 */  jalr       $v0
/* 108FB4 800EAEC4 00C02821 */   addu      $a1, $a2, $zero
/* 108FB8 800EAEC8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 108FBC 800EAECC 03E00008 */  jr         $ra
/* 108FC0 800EAED0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EAED4
/* 108FC4 800EAED4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 108FC8 800EAED8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 108FCC 800EAEDC AFB00010 */  sw         $s0, 0x10($sp)
/* 108FD0 800EAEE0 8C82001C */  lw         $v0, 0x1C($a0)
/* 108FD4 800EAEE4 00052880 */  sll        $a1, $a1, 2
/* 108FD8 800EAEE8 00A22821 */  addu       $a1, $a1, $v0
/* 108FDC 800EAEEC 8CA20000 */  lw         $v0, 0x0($a1)
/* 108FE0 800EAEF0 8C4300EC */  lw         $v1, 0xEC($v0)
/* 108FE4 800EAEF4 846400A0 */  lh         $a0, 0xA0($v1)
/* 108FE8 800EAEF8 00E08021 */  addu       $s0, $a3, $zero
/* 108FEC 800EAEFC 00442021 */  addu       $a0, $v0, $a0
/* 108FF0 800EAF00 8C6200A4 */  lw         $v0, 0xA4($v1)
/* 108FF4 800EAF04 0040F809 */  jalr       $v0
/* 108FF8 800EAF08 00C02821 */   addu      $a1, $a2, $zero
/* 108FFC 800EAF0C 00101840 */  sll        $v1, $s0, 1
/* 109000 800EAF10 00701821 */  addu       $v1, $v1, $s0
/* 109004 800EAF14 000318C0 */  sll        $v1, $v1, 3
/* 109008 800EAF18 8C420008 */  lw         $v0, 0x8($v0)
/* 10900C 800EAF1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 109010 800EAF20 8FB00010 */  lw         $s0, 0x10($sp)
/* 109014 800EAF24 00431021 */  addu       $v0, $v0, $v1
/* 109018 800EAF28 03E00008 */  jr         $ra
/* 10901C 800EAF2C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EAF30
/* 109020 800EAF30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 109024 800EAF34 AFB10014 */  sw         $s1, 0x14($sp)
/* 109028 800EAF38 00808821 */  addu       $s1, $a0, $zero
/* 10902C 800EAF3C AFB00010 */  sw         $s0, 0x10($sp)
/* 109030 800EAF40 AFBF0018 */  sw         $ra, 0x18($sp)
/* 109034 800EAF44 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 109038 800EAF48 8E220018 */  lw         $v0, 0x18($s1)
/* 10903C 800EAF4C 4485A000 */  mtc1       $a1, $f20
/* 109040 800EAF50 1040000C */  beqz       $v0, .Lmenu_800EAF84
/* 109044 800EAF54 00008021 */   addu      $s0, $zero, $zero
/* 109048 800EAF58 00101880 */  sll        $v1, $s0, 2
.Lmenu_800EAF5C:
/* 10904C 800EAF5C 8E22001C */  lw         $v0, 0x1C($s1)
/* 109050 800EAF60 4405A000 */  mfc1       $a1, $f20
/* 109054 800EAF64 00621821 */  addu       $v1, $v1, $v0
/* 109058 800EAF68 8C640000 */  lw         $a0, 0x0($v1)
/* 10905C 800EAF6C 0C01919B */  jal        func_8006466C
/* 109060 800EAF70 26100001 */   addiu     $s0, $s0, 0x1
/* 109064 800EAF74 8E220018 */  lw         $v0, 0x18($s1)
/* 109068 800EAF78 0202102B */  sltu       $v0, $s0, $v0
/* 10906C 800EAF7C 1440FFF7 */  bnez       $v0, .Lmenu_800EAF5C
/* 109070 800EAF80 00101880 */   sll       $v1, $s0, 2
.Lmenu_800EAF84:
/* 109074 800EAF84 8FBF0018 */  lw         $ra, 0x18($sp)
/* 109078 800EAF88 8FB10014 */  lw         $s1, 0x14($sp)
/* 10907C 800EAF8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 109080 800EAF90 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 109084 800EAF94 03E00008 */  jr         $ra
/* 109088 800EAF98 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EAF9C
/* 10908C 800EAF9C 3C028012 */  lui        $v0, %hi(D_menu_80126A30)
/* 109090 800EAFA0 03E00008 */  jr         $ra
/* 109094 800EAFA4 AC446A30 */   sw        $a0, %lo(D_menu_80126A30)($v0)

glabel func_menu_800EAFA8
/* 109098 800EAFA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10909C 800EAFAC AFBF0010 */  sw         $ra, 0x10($sp)
/* 1090A0 800EAFB0 0C002513 */  jal        func_8000944C
/* 1090A4 800EAFB4 00000000 */   nop
/* 1090A8 800EAFB8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1090AC 800EAFBC 03E00008 */  jr         $ra
/* 1090B0 800EAFC0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EAFC4
/* 1090B4 800EAFC4 8C82001C */  lw         $v0, 0x1C($a0)
/* 1090B8 800EAFC8 00052880 */  sll        $a1, $a1, 2
/* 1090BC 800EAFCC 00A22821 */  addu       $a1, $a1, $v0
/* 1090C0 800EAFD0 8CA20000 */  lw         $v0, 0x0($a1)
/* 1090C4 800EAFD4 03E00008 */  jr         $ra
/* 1090C8 800EAFD8 00000000 */   nop

glabel func_menu_800EAFDC
/* 1090CC 800EAFDC 8C820018 */  lw         $v0, 0x18($a0)
/* 1090D0 800EAFE0 03E00008 */  jr         $ra
/* 1090D4 800EAFE4 00000000 */   nop

glabel func_menu_800EAFE8
/* 1090D8 800EAFE8 03E00008 */  jr         $ra
/* 1090DC 800EAFEC AC85000C */   sw        $a1, 0xC($a0)

glabel func_menu_800EAFF0
/* 1090E0 800EAFF0 8C82000C */  lw         $v0, 0xC($a0)
/* 1090E4 800EAFF4 03E00008 */  jr         $ra
/* 1090E8 800EAFF8 00000000 */   nop

glabel func_menu_800EAFFC
/* 1090EC 800EAFFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1090F0 800EB000 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1090F4 800EB004 8C820000 */  lw         $v0, 0x0($a0)
/* 1090F8 800EB008 10400003 */  beqz       $v0, .Lmenu_800EB018
/* 1090FC 800EB00C 00001021 */   addu      $v0, $zero, $zero
/* 109100 800EB010 0C016427 */  jal        func_8005909C
/* 109104 800EB014 00000000 */   nop
.Lmenu_800EB018:
/* 109108 800EB018 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10910C 800EB01C 03E00008 */  jr         $ra
/* 109110 800EB020 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EB024
/* 109114 800EB024 00051080 */  sll        $v0, $a1, 2
/* 109118 800EB028 00451021 */  addu       $v0, $v0, $a1
/* 10911C 800EB02C 00021080 */  sll        $v0, $v0, 2
/* 109120 800EB030 00451021 */  addu       $v0, $v0, $a1
/* 109124 800EB034 8C830028 */  lw         $v1, 0x28($a0)
/* 109128 800EB038 000210C0 */  sll        $v0, $v0, 3
/* 10912C 800EB03C 03E00008 */  jr         $ra
/* 109130 800EB040 00621021 */   addu      $v0, $v1, $v0

glabel func_menu_800EB044
/* 109134 800EB044 8C820024 */  lw         $v0, 0x24($a0)
/* 109138 800EB048 03E00008 */  jr         $ra
/* 10913C 800EB04C 00000000 */   nop

glabel func_menu_800EB050
/* 109140 800EB050 8C820010 */  lw         $v0, 0x10($a0)
/* 109144 800EB054 03E00008 */  jr         $ra
/* 109148 800EB058 0002102B */   sltu      $v0, $zero, $v0
