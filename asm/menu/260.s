.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800ED5B0
/* 10B6A0 800ED5B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B6A4 800ED5B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 10B6A8 800ED5B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10B6AC 800ED5BC 0C016670 */  jal        func_800599C0
/* 10B6B0 800ED5C0 00808021 */   addu      $s0, $a0, $zero
/* 10B6B4 800ED5C4 3C02800D */  lui        $v0, %hi(D_menu_800CB960)
/* 10B6B8 800ED5C8 2442B960 */  addiu      $v0, $v0, %lo(D_menu_800CB960)
/* 10B6BC 800ED5CC AE020024 */  sw         $v0, 0x24($s0)
/* 10B6C0 800ED5D0 02001021 */  addu       $v0, $s0, $zero
/* 10B6C4 800ED5D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10B6C8 800ED5D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 10B6CC 800ED5DC 03E00008 */  jr         $ra
/* 10B6D0 800ED5E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ED5E4
/* 10B6D4 800ED5E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10B6D8 800ED5E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 10B6DC 800ED5EC 00808021 */  addu       $s0, $a0, $zero
/* 10B6E0 800ED5F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 10B6E4 800ED5F4 00A08821 */  addu       $s1, $a1, $zero
/* 10B6E8 800ED5F8 3C02800D */  lui        $v0, %hi(D_menu_800CB960)
/* 10B6EC 800ED5FC 2442B960 */  addiu      $v0, $v0, %lo(D_menu_800CB960)
/* 10B6F0 800ED600 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10B6F4 800ED604 0C03B5D2 */  jal        func_menu_800ED748
/* 10B6F8 800ED608 AE020024 */   sw        $v0, 0x24($s0)
/* 10B6FC 800ED60C 02002021 */  addu       $a0, $s0, $zero
/* 10B700 800ED610 0C016684 */  jal        func_80059A10
/* 10B704 800ED614 02202821 */   addu      $a1, $s1, $zero
/* 10B708 800ED618 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10B70C 800ED61C 8FB10014 */  lw         $s1, 0x14($sp)
/* 10B710 800ED620 8FB00010 */  lw         $s0, 0x10($sp)
/* 10B714 800ED624 03E00008 */  jr         $ra
/* 10B718 800ED628 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800ED62C
/* 10B71C 800ED62C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10B720 800ED630 AFB10014 */  sw         $s1, 0x14($sp)
/* 10B724 800ED634 00808821 */  addu       $s1, $a0, $zero
/* 10B728 800ED638 AFB00010 */  sw         $s0, 0x10($sp)
/* 10B72C 800ED63C 00A08021 */  addu       $s0, $a1, $zero
/* 10B730 800ED640 02002021 */  addu       $a0, $s0, $zero
/* 10B734 800ED644 00002821 */  addu       $a1, $zero, $zero
/* 10B738 800ED648 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10B73C 800ED64C 8E02005C */  lw         $v0, 0x5C($s0)
/* 10B740 800ED650 3C030001 */  lui        $v1, (0x10000 >> 16)
/* 10B744 800ED654 00431025 */  or         $v0, $v0, $v1
/* 10B748 800ED658 0C01971D */  jal        func_80065C74
/* 10B74C 800ED65C AE02005C */   sw        $v0, 0x5C($s0)
/* 10B750 800ED660 0C0165C5 */  jal        func_80059714
/* 10B754 800ED664 02002021 */   addu      $a0, $s0, $zero
/* 10B758 800ED668 02202021 */  addu       $a0, $s1, $zero
/* 10B75C 800ED66C 0C0166CE */  jal        func_80059B38
/* 10B760 800ED670 02002821 */   addu      $a1, $s0, $zero
/* 10B764 800ED674 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10B768 800ED678 8FB10014 */  lw         $s1, 0x14($sp)
/* 10B76C 800ED67C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10B770 800ED680 03E00008 */  jr         $ra
/* 10B774 800ED684 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800ED688
/* 10B778 800ED688 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10B77C 800ED68C AFB00010 */  sw         $s0, 0x10($sp)
/* 10B780 800ED690 00808021 */  addu       $s0, $a0, $zero
/* 10B784 800ED694 AFB10014 */  sw         $s1, 0x14($sp)
/* 10B788 800ED698 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10B78C 800ED69C 0C03B5D2 */  jal        func_menu_800ED748
/* 10B790 800ED6A0 00A08821 */   addu      $s1, $a1, $zero
/* 10B794 800ED6A4 02002021 */  addu       $a0, $s0, $zero
/* 10B798 800ED6A8 8E230000 */  lw         $v1, 0x0($s1)
/* 10B79C 800ED6AC 8E260004 */  lw         $a2, 0x4($s1)
/* 10B7A0 800ED6B0 8E270008 */  lw         $a3, 0x8($s1)
/* 10B7A4 800ED6B4 8E28000C */  lw         $t0, 0xC($s1)
/* 10B7A8 800ED6B8 AE030038 */  sw         $v1, 0x38($s0)
/* 10B7AC 800ED6BC AE06003C */  sw         $a2, 0x3C($s0)
/* 10B7B0 800ED6C0 AE070040 */  sw         $a3, 0x40($s0)
/* 10B7B4 800ED6C4 AE080044 */  sw         $t0, 0x44($s0)
/* 10B7B8 800ED6C8 8E230010 */  lw         $v1, 0x10($s1)
/* 10B7BC 800ED6CC 8E260014 */  lw         $a2, 0x14($s1)
/* 10B7C0 800ED6D0 AE030048 */  sw         $v1, 0x48($s0)
/* 10B7C4 800ED6D4 AE06004C */  sw         $a2, 0x4C($s0)
/* 10B7C8 800ED6D8 0C016698 */  jal        func_80059A60
/* 10B7CC 800ED6DC 24050004 */   addiu     $a1, $zero, 0x4
/* 10B7D0 800ED6E0 8E020040 */  lw         $v0, 0x40($s0)
/* 10B7D4 800ED6E4 14400004 */  bnez       $v0, .Lmenu_800ED6F8
/* 10B7D8 800ED6E8 00000000 */   nop
/* 10B7DC 800ED6EC 8E220004 */  lw         $v0, 0x4($s1)
/* 10B7E0 800ED6F0 2442000C */  addiu      $v0, $v0, 0xC
/* 10B7E4 800ED6F4 AE020040 */  sw         $v0, 0x40($s0)
.Lmenu_800ED6F8:
/* 10B7E8 800ED6F8 8E050040 */  lw         $a1, 0x40($s0)
/* 10B7EC 800ED6FC 0C0166CE */  jal        func_80059B38
/* 10B7F0 800ED700 02002021 */   addu      $a0, $s0, $zero
/* 10B7F4 800ED704 8E040038 */  lw         $a0, 0x38($s0)
/* 10B7F8 800ED708 0C010F4E */  jal        func_80043D38
/* 10B7FC 800ED70C 26050048 */   addiu     $a1, $s0, 0x48
/* 10B800 800ED710 02002021 */  addu       $a0, $s0, $zero
/* 10B804 800ED714 0C03B58B */  jal        func_menu_800ED62C
/* 10B808 800ED718 00402821 */   addu      $a1, $v0, $zero
/* 10B80C 800ED71C 8E050044 */  lw         $a1, 0x44($s0)
/* 10B810 800ED720 10A00003 */  beqz       $a1, .Lmenu_800ED730
/* 10B814 800ED724 00000000 */   nop
/* 10B818 800ED728 0C03B58B */  jal        func_menu_800ED62C
/* 10B81C 800ED72C 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800ED730:
/* 10B820 800ED730 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10B824 800ED734 8FB10014 */  lw         $s1, 0x14($sp)
/* 10B828 800ED738 8FB00010 */  lw         $s0, 0x10($sp)
/* 10B82C 800ED73C 24020001 */  addiu      $v0, $zero, 0x1
/* 10B830 800ED740 03E00008 */  jr         $ra
/* 10B834 800ED744 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800ED748
/* 10B838 800ED748 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B83C 800ED74C AFB00010 */  sw         $s0, 0x10($sp)
/* 10B840 800ED750 00808021 */  addu       $s0, $a0, $zero
/* 10B844 800ED754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10B848 800ED758 8E020034 */  lw         $v0, 0x34($s0)
/* 10B84C 800ED75C 10400004 */  beqz       $v0, .Lmenu_800ED770
/* 10B850 800ED760 00000000 */   nop
/* 10B854 800ED764 0C0166BD */  jal        func_80059AF4
/* 10B858 800ED768 00000000 */   nop
/* 10B85C 800ED76C 8E020034 */  lw         $v0, 0x34($s0)
.Lmenu_800ED770:
/* 10B860 800ED770 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10B864 800ED774 8FB00010 */  lw         $s0, 0x10($sp)
/* 10B868 800ED778 2C420001 */  sltiu      $v0, $v0, 0x1
/* 10B86C 800ED77C 03E00008 */  jr         $ra
/* 10B870 800ED780 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ED784
/* 10B874 800ED784 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10B878 800ED788 AFB00020 */  sw         $s0, 0x20($sp)
/* 10B87C 800ED78C 00808021 */  addu       $s0, $a0, $zero
/* 10B880 800ED790 AFBF0028 */  sw         $ra, 0x28($sp)
/* 10B884 800ED794 0C01680D */  jal        func_8005A034
/* 10B888 800ED798 AFB10024 */   sw        $s1, 0x24($sp)
/* 10B88C 800ED79C 8E020044 */  lw         $v0, 0x44($s0)
/* 10B890 800ED7A0 1040001F */  beqz       $v0, .Lmenu_800ED820
/* 10B894 800ED7A4 00008821 */   addu      $s1, $zero, $zero
.Lmenu_800ED7A8:
/* 10B898 800ED7A8 8E020030 */  lw         $v0, 0x30($s0)
/* 10B89C 800ED7AC 0222102B */  sltu       $v0, $s1, $v0
/* 10B8A0 800ED7B0 1040001B */  beqz       $v0, .Lmenu_800ED820
/* 10B8A4 800ED7B4 00111080 */   sll       $v0, $s1, 2
/* 10B8A8 800ED7B8 8E030034 */  lw         $v1, 0x34($s0)
/* 10B8AC 800ED7BC 00431021 */  addu       $v0, $v0, $v1
/* 10B8B0 800ED7C0 8C430000 */  lw         $v1, 0x0($v0)
/* 10B8B4 800ED7C4 8E020044 */  lw         $v0, 0x44($s0)
/* 10B8B8 800ED7C8 5443FFF7 */  bnel       $v0, $v1, .Lmenu_800ED7A8
/* 10B8BC 800ED7CC 26310001 */   addiu     $s1, $s1, 0x1
/* 10B8C0 800ED7D0 8E040038 */  lw         $a0, 0x38($s0)
/* 10B8C4 800ED7D4 0C016427 */  jal        func_8005909C
/* 10B8C8 800ED7D8 26050048 */   addiu     $a1, $s0, 0x48
/* 10B8CC 800ED7DC 8E030040 */  lw         $v1, 0x40($s0)
/* 10B8D0 800ED7E0 8C660024 */  lw         $a2, 0x24($v1)
/* 10B8D4 800ED7E4 244500C4 */  addiu      $a1, $v0, 0xC4
/* 10B8D8 800ED7E8 84C40060 */  lh         $a0, 0x60($a2)
/* 10B8DC 800ED7EC 8CC20064 */  lw         $v0, 0x64($a2)
/* 10B8E0 800ED7F0 27A60010 */  addiu      $a2, $sp, 0x10
/* 10B8E4 800ED7F4 0040F809 */  jalr       $v0
/* 10B8E8 800ED7F8 00642021 */   addu      $a0, $v1, $a0
/* 10B8EC 800ED7FC 8E030044 */  lw         $v1, 0x44($s0)
/* 10B8F0 800ED800 8C620024 */  lw         $v0, 0x24($v1)
/* 10B8F4 800ED804 27A50010 */  addiu      $a1, $sp, 0x10
/* 10B8F8 800ED808 84440018 */  lh         $a0, 0x18($v0)
/* 10B8FC 800ED80C 8C42001C */  lw         $v0, 0x1C($v0)
/* 10B900 800ED810 0040F809 */  jalr       $v0
/* 10B904 800ED814 00642021 */   addu      $a0, $v1, $a0
/* 10B908 800ED818 0803B5EA */  j          .Lmenu_800ED7A8
/* 10B90C 800ED81C 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800ED820:
/* 10B910 800ED820 8FBF0028 */  lw         $ra, 0x28($sp)
/* 10B914 800ED824 8FB10024 */  lw         $s1, 0x24($sp)
/* 10B918 800ED828 8FB00020 */  lw         $s0, 0x20($sp)
/* 10B91C 800ED82C 03E00008 */  jr         $ra
/* 10B920 800ED830 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800ED834
/* 10B924 800ED834 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10B928 800ED838 AFB00020 */  sw         $s0, 0x20($sp)
/* 10B92C 800ED83C 00808021 */  addu       $s0, $a0, $zero
/* 10B930 800ED840 AFBF0028 */  sw         $ra, 0x28($sp)
/* 10B934 800ED844 0C01683C */  jal        func_8005A0F0
/* 10B938 800ED848 AFB10024 */   sw        $s1, 0x24($sp)
/* 10B93C 800ED84C 8E020044 */  lw         $v0, 0x44($s0)
/* 10B940 800ED850 1040001F */  beqz       $v0, .Lmenu_800ED8D0
/* 10B944 800ED854 00008821 */   addu      $s1, $zero, $zero
.Lmenu_800ED858:
/* 10B948 800ED858 8E020030 */  lw         $v0, 0x30($s0)
/* 10B94C 800ED85C 0222102B */  sltu       $v0, $s1, $v0
/* 10B950 800ED860 1040001B */  beqz       $v0, .Lmenu_800ED8D0
/* 10B954 800ED864 00111080 */   sll       $v0, $s1, 2
/* 10B958 800ED868 8E030034 */  lw         $v1, 0x34($s0)
/* 10B95C 800ED86C 00431021 */  addu       $v0, $v0, $v1
/* 10B960 800ED870 8C430000 */  lw         $v1, 0x0($v0)
/* 10B964 800ED874 8E020044 */  lw         $v0, 0x44($s0)
/* 10B968 800ED878 5443FFF7 */  bnel       $v0, $v1, .Lmenu_800ED858
/* 10B96C 800ED87C 26310001 */   addiu     $s1, $s1, 0x1
/* 10B970 800ED880 8E040038 */  lw         $a0, 0x38($s0)
/* 10B974 800ED884 0C016427 */  jal        func_8005909C
/* 10B978 800ED888 26050048 */   addiu     $a1, $s0, 0x48
/* 10B97C 800ED88C 8E030040 */  lw         $v1, 0x40($s0)
/* 10B980 800ED890 244500C4 */  addiu      $a1, $v0, 0xC4
/* 10B984 800ED894 8C620024 */  lw         $v0, 0x24($v1)
/* 10B988 800ED898 27A60010 */  addiu      $a2, $sp, 0x10
/* 10B98C 800ED89C 84440060 */  lh         $a0, 0x60($v0)
/* 10B990 800ED8A0 8C420064 */  lw         $v0, 0x64($v0)
/* 10B994 800ED8A4 0040F809 */  jalr       $v0
/* 10B998 800ED8A8 00642021 */   addu      $a0, $v1, $a0
/* 10B99C 800ED8AC 8E030044 */  lw         $v1, 0x44($s0)
/* 10B9A0 800ED8B0 8C620024 */  lw         $v0, 0x24($v1)
/* 10B9A4 800ED8B4 27A50010 */  addiu      $a1, $sp, 0x10
/* 10B9A8 800ED8B8 84440018 */  lh         $a0, 0x18($v0)
/* 10B9AC 800ED8BC 8C42001C */  lw         $v0, 0x1C($v0)
/* 10B9B0 800ED8C0 0040F809 */  jalr       $v0
/* 10B9B4 800ED8C4 00642021 */   addu      $a0, $v1, $a0
/* 10B9B8 800ED8C8 0803B616 */  j          .Lmenu_800ED858
/* 10B9BC 800ED8CC 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800ED8D0:
/* 10B9C0 800ED8D0 8FBF0028 */  lw         $ra, 0x28($sp)
/* 10B9C4 800ED8D4 8FB10024 */  lw         $s1, 0x24($sp)
/* 10B9C8 800ED8D8 8FB00020 */  lw         $s0, 0x20($sp)
/* 10B9CC 800ED8DC 03E00008 */  jr         $ra
/* 10B9D0 800ED8E0 27BD0030 */   addiu     $sp, $sp, 0x30
