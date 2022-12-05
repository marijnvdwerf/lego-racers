.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800D4620
/* F2710 800D4620 8C830DC8 */  lw         $v1, 0xDC8($a0)
/* F2714 800D4624 2402FFFF */  addiu      $v0, $zero, -0x1
/* F2718 800D4628 A4820E20 */  sh         $v0, 0xE20($a0)
/* F271C 800D462C AC800E18 */  sw         $zero, 0xE18($a0)
/* F2720 800D4630 03E00008 */  jr         $ra
/* F2724 800D4634 AC830E1C */   sw        $v1, 0xE1C($a0)

glabel func_menu_800D4638
/* F2728 800D4638 C482000C */  lwc1       $f2, 0xC($a0)
/* F272C 800D463C C4A0000C */  lwc1       $f0, 0xC($a1)
/* F2730 800D4640 46001081 */  sub.s      $f2, $f2, $f0
/* F2734 800D4644 44802000 */  mtc1       $zero, $f4
/* F2738 800D4648 46041032 */  c.eq.s     $f2, $f4
/* F273C 800D464C 00000000 */  nop
/* F2740 800D4650 4500001D */  bc1f       .Lmenu_800D46C8
/* F2744 800D4654 00001021 */   addu      $v0, $zero, $zero
/* F2748 800D4658 C4820010 */  lwc1       $f2, 0x10($a0)
/* F274C 800D465C C4A00010 */  lwc1       $f0, 0x10($a1)
/* F2750 800D4660 46001081 */  sub.s      $f2, $f2, $f0
/* F2754 800D4664 46041032 */  c.eq.s     $f2, $f4
/* F2758 800D4668 00000000 */  nop
/* F275C 800D466C 45020017 */  bc1fl      .Lmenu_800D46CC
/* F2760 800D4670 24020001 */   addiu     $v0, $zero, 0x1
/* F2764 800D4674 C4820014 */  lwc1       $f2, 0x14($a0)
/* F2768 800D4678 C4A00014 */  lwc1       $f0, 0x14($a1)
/* F276C 800D467C 46001081 */  sub.s      $f2, $f2, $f0
/* F2770 800D4680 46041032 */  c.eq.s     $f2, $f4
/* F2774 800D4684 00000000 */  nop
/* F2778 800D4688 45020010 */  bc1fl      .Lmenu_800D46CC
/* F277C 800D468C 24020001 */   addiu     $v0, $zero, 0x1
/* F2780 800D4690 C4820018 */  lwc1       $f2, 0x18($a0)
/* F2784 800D4694 C4A00018 */  lwc1       $f0, 0x18($a1)
/* F2788 800D4698 46001081 */  sub.s      $f2, $f2, $f0
/* F278C 800D469C 46041032 */  c.eq.s     $f2, $f4
/* F2790 800D46A0 00000000 */  nop
/* F2794 800D46A4 45020009 */  bc1fl      .Lmenu_800D46CC
/* F2798 800D46A8 24020001 */   addiu     $v0, $zero, 0x1
/* F279C 800D46AC C482001C */  lwc1       $f2, 0x1C($a0)
/* F27A0 800D46B0 C4A0001C */  lwc1       $f0, 0x1C($a1)
/* F27A4 800D46B4 46001081 */  sub.s      $f2, $f2, $f0
/* F27A8 800D46B8 46041032 */  c.eq.s     $f2, $f4
/* F27AC 800D46BC 00000000 */  nop
/* F27B0 800D46C0 45010002 */  bc1t       .Lmenu_800D46CC
/* F27B4 800D46C4 00000000 */   nop
.Lmenu_800D46C8:
/* F27B8 800D46C8 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800D46CC:
/* F27BC 800D46CC 10400008 */  beqz       $v0, .Lmenu_800D46F0
/* F27C0 800D46D0 00000000 */   nop
/* F27C4 800D46D4 44800000 */  mtc1       $zero, $f0
/* F27C8 800D46D8 4602003C */  c.lt.s     $f0, $f2
/* F27CC 800D46DC 00000000 */  nop
/* F27D0 800D46E0 45010015 */  bc1t       .Lmenu_800D4738
/* F27D4 800D46E4 24020001 */   addiu     $v0, $zero, 0x1
/* F27D8 800D46E8 03E00008 */  jr         $ra
/* F27DC 800D46EC 2402FFFF */   addiu     $v0, $zero, -0x1
.Lmenu_800D46F0:
/* F27E0 800D46F0 80830009 */  lb         $v1, 0x9($a0)
/* F27E4 800D46F4 80A20009 */  lb         $v0, 0x9($a1)
/* F27E8 800D46F8 00621023 */  subu       $v0, $v1, $v0
/* F27EC 800D46FC 1440000B */  bnez       $v0, .Lmenu_800D472C
/* F27F0 800D4700 00003021 */   addu      $a2, $zero, $zero
/* F27F4 800D4704 8083000A */  lb         $v1, 0xA($a0)
/* F27F8 800D4708 80A2000A */  lb         $v0, 0xA($a1)
/* F27FC 800D470C 00621023 */  subu       $v0, $v1, $v0
/* F2800 800D4710 54400007 */  bnel       $v0, $zero, .Lmenu_800D4730
/* F2804 800D4714 24060001 */   addiu     $a2, $zero, 0x1
/* F2808 800D4718 8083000B */  lb         $v1, 0xB($a0)
/* F280C 800D471C 80A2000B */  lb         $v0, 0xB($a1)
/* F2810 800D4720 00621023 */  subu       $v0, $v1, $v0
/* F2814 800D4724 10400002 */  beqz       $v0, .Lmenu_800D4730
/* F2818 800D4728 00000000 */   nop
.Lmenu_800D472C:
/* F281C 800D472C 24060001 */  addiu      $a2, $zero, 0x1
.Lmenu_800D4730:
/* F2820 800D4730 50C00001 */  beql       $a2, $zero, .Lmenu_800D4738
/* F2824 800D4734 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800D4738:
/* F2828 800D4738 03E00008 */  jr         $ra
/* F282C 800D473C 00000000 */   nop

glabel func_menu_800D4740
/* F2830 800D4740 00051400 */  sll        $v0, $a1, 16
/* F2834 800D4744 00025403 */  sra        $t2, $v0, 16
/* F2838 800D4748 8C870000 */  lw         $a3, 0x0($a0)
/* F283C 800D474C 000A1140 */  sll        $v0, $t2, 5
/* F2840 800D4750 00471821 */  addu       $v1, $v0, $a3
/* F2844 800D4754 84620004 */  lh         $v0, 0x4($v1)
/* F2848 800D4758 94660004 */  lhu        $a2, 0x4($v1)
/* F284C 800D475C 00021140 */  sll        $v0, $v0, 5
/* F2850 800D4760 00474021 */  addu       $t0, $v0, $a3
/* F2854 800D4764 95020002 */  lhu        $v0, 0x2($t0)
/* F2858 800D4768 A4620004 */  sh         $v0, 0x4($v1)
/* F285C 800D476C 00021400 */  sll        $v0, $v0, 16
/* F2860 800D4770 00021403 */  sra        $v0, $v0, 16
/* F2864 800D4774 04400004 */  bltz       $v0, .Lmenu_800D4788
/* F2868 800D4778 00A04821 */   addu      $t1, $a1, $zero
/* F286C 800D477C 00021140 */  sll        $v0, $v0, 5
/* F2870 800D4780 00471021 */  addu       $v0, $v0, $a3
/* F2874 800D4784 A4450000 */  sh         $a1, 0x0($v0)
.Lmenu_800D4788:
/* F2878 800D4788 94620000 */  lhu        $v0, 0x0($v1)
/* F287C 800D478C A5020000 */  sh         $v0, 0x0($t0)
/* F2880 800D4790 00021400 */  sll        $v0, $v0, 16
/* F2884 800D4794 04420008 */  bltzl      $v0, .Lmenu_800D47B8
/* F2888 800D4798 A4860004 */   sh        $a2, 0x4($a0)
/* F288C 800D479C 84620000 */  lh         $v0, 0x0($v1)
/* F2890 800D47A0 00021140 */  sll        $v0, $v0, 5
/* F2894 800D47A4 00471821 */  addu       $v1, $v0, $a3
/* F2898 800D47A8 84620002 */  lh         $v0, 0x2($v1)
/* F289C 800D47AC 55420002 */  bnel       $t2, $v0, .Lmenu_800D47B8
/* F28A0 800D47B0 A4660004 */   sh        $a2, 0x4($v1)
/* F28A4 800D47B4 A4660002 */  sh         $a2, 0x2($v1)
.Lmenu_800D47B8:
/* F28A8 800D47B8 00061400 */  sll        $v0, $a2, 16
/* F28AC 800D47BC 000212C3 */  sra        $v0, $v0, 11
/* F28B0 800D47C0 00471021 */  addu       $v0, $v0, $a3
/* F28B4 800D47C4 A4490002 */  sh         $t1, 0x2($v0)
/* F28B8 800D47C8 00091400 */  sll        $v0, $t1, 16
/* F28BC 800D47CC 000212C3 */  sra        $v0, $v0, 11
/* F28C0 800D47D0 00471021 */  addu       $v0, $v0, $a3
/* F28C4 800D47D4 03E00008 */  jr         $ra
/* F28C8 800D47D8 A4460000 */   sh        $a2, 0x0($v0)

glabel func_menu_800D47DC
/* F28CC 800D47DC 00051400 */  sll        $v0, $a1, 16
/* F28D0 800D47E0 00025403 */  sra        $t2, $v0, 16
/* F28D4 800D47E4 8C870000 */  lw         $a3, 0x0($a0)
/* F28D8 800D47E8 000A1140 */  sll        $v0, $t2, 5
/* F28DC 800D47EC 00471821 */  addu       $v1, $v0, $a3
/* F28E0 800D47F0 84620002 */  lh         $v0, 0x2($v1)
/* F28E4 800D47F4 94660002 */  lhu        $a2, 0x2($v1)
/* F28E8 800D47F8 00021140 */  sll        $v0, $v0, 5
/* F28EC 800D47FC 00474021 */  addu       $t0, $v0, $a3
/* F28F0 800D4800 95020004 */  lhu        $v0, 0x4($t0)
/* F28F4 800D4804 A4620002 */  sh         $v0, 0x2($v1)
/* F28F8 800D4808 00021400 */  sll        $v0, $v0, 16
/* F28FC 800D480C 00021403 */  sra        $v0, $v0, 16
/* F2900 800D4810 04400004 */  bltz       $v0, .Lmenu_800D4824
/* F2904 800D4814 00A04821 */   addu      $t1, $a1, $zero
/* F2908 800D4818 00021140 */  sll        $v0, $v0, 5
/* F290C 800D481C 00471021 */  addu       $v0, $v0, $a3
/* F2910 800D4820 A4450000 */  sh         $a1, 0x0($v0)
.Lmenu_800D4824:
/* F2914 800D4824 94620000 */  lhu        $v0, 0x0($v1)
/* F2918 800D4828 A5020000 */  sh         $v0, 0x0($t0)
/* F291C 800D482C 00021400 */  sll        $v0, $v0, 16
/* F2920 800D4830 04420008 */  bltzl      $v0, .Lmenu_800D4854
/* F2924 800D4834 A4860004 */   sh        $a2, 0x4($a0)
/* F2928 800D4838 84620000 */  lh         $v0, 0x0($v1)
/* F292C 800D483C 00021140 */  sll        $v0, $v0, 5
/* F2930 800D4840 00471821 */  addu       $v1, $v0, $a3
/* F2934 800D4844 84620002 */  lh         $v0, 0x2($v1)
/* F2938 800D4848 55420002 */  bnel       $t2, $v0, .Lmenu_800D4854
/* F293C 800D484C A4660004 */   sh        $a2, 0x4($v1)
/* F2940 800D4850 A4660002 */  sh         $a2, 0x2($v1)
.Lmenu_800D4854:
/* F2944 800D4854 00061400 */  sll        $v0, $a2, 16
/* F2948 800D4858 000212C3 */  sra        $v0, $v0, 11
/* F294C 800D485C 00471021 */  addu       $v0, $v0, $a3
/* F2950 800D4860 A4490004 */  sh         $t1, 0x4($v0)
/* F2954 800D4864 00091400 */  sll        $v0, $t1, 16
/* F2958 800D4868 000212C3 */  sra        $v0, $v0, 11
/* F295C 800D486C 00471021 */  addu       $v0, $v0, $a3
/* F2960 800D4870 03E00008 */  jr         $ra
/* F2964 800D4874 A4460000 */   sh        $a2, 0x0($v0)

glabel func_menu_800D4878
/* F2968 800D4878 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F296C 800D487C AFB3001C */  sw         $s3, 0x1C($sp)
/* F2970 800D4880 00809821 */  addu       $s3, $a0, $zero
/* F2974 800D4884 AFB10014 */  sw         $s1, 0x14($sp)
/* F2978 800D4888 00A08821 */  addu       $s1, $a1, $zero
/* F297C 800D488C 00052C00 */  sll        $a1, $a1, 16
/* F2980 800D4890 AFBF0020 */  sw         $ra, 0x20($sp)
/* F2984 800D4894 AFB20018 */  sw         $s2, 0x18($sp)
/* F2988 800D4898 AFB00010 */  sw         $s0, 0x10($sp)
/* F298C 800D489C 8E700000 */  lw         $s0, 0x0($s3)
/* F2990 800D48A0 00052AC3 */  sra        $a1, $a1, 11
/* F2994 800D48A4 00B02821 */  addu       $a1, $a1, $s0
/* F2998 800D48A8 A0A00008 */  sb         $zero, 0x8($a1)
/* F299C 800D48AC 84A40000 */  lh         $a0, 0x0($a1)
/* F29A0 800D48B0 080352A4 */  j          .Lmenu_800D4A90
/* F29A4 800D48B4 24120001 */   addiu     $s2, $zero, 0x1
.Lmenu_800D48B8:
/* F29A8 800D48B8 84620000 */  lh         $v0, 0x0($v1)
/* F29AC 800D48BC 00021140 */  sll        $v0, $v0, 5
/* F29B0 800D48C0 00501821 */  addu       $v1, $v0, $s0
/* F29B4 800D48C4 84620002 */  lh         $v0, 0x2($v1)
/* F29B8 800D48C8 14820037 */  bne        $a0, $v0, .Lmenu_800D49A8
/* F29BC 800D48CC 00000000 */   nop
/* F29C0 800D48D0 84620004 */  lh         $v0, 0x4($v1)
/* F29C4 800D48D4 04400010 */  bltz       $v0, .Lmenu_800D4918
/* F29C8 800D48D8 00021140 */   sll       $v0, $v0, 5
/* F29CC 800D48DC 00501821 */  addu       $v1, $v0, $s0
/* F29D0 800D48E0 90620008 */  lbu        $v0, 0x8($v1)
/* F29D4 800D48E4 1440000D */  bnez       $v0, .Lmenu_800D491C
/* F29D8 800D48E8 00112400 */   sll       $a0, $s1, 16
/* F29DC 800D48EC A0720008 */  sb         $s2, 0x8($v1)
/* F29E0 800D48F0 84A20000 */  lh         $v0, 0x0($a1)
/* F29E4 800D48F4 00021140 */  sll        $v0, $v0, 5
/* F29E8 800D48F8 00501021 */  addu       $v0, $v0, $s0
/* F29EC 800D48FC A0520008 */  sb         $s2, 0x8($v0)
/* F29F0 800D4900 84A20000 */  lh         $v0, 0x0($a1)
/* F29F4 800D4904 00021140 */  sll        $v0, $v0, 5
/* F29F8 800D4908 00501021 */  addu       $v0, $v0, $s0
/* F29FC 800D490C 84420000 */  lh         $v0, 0x0($v0)
/* F2A00 800D4910 0803527A */  j          .Lmenu_800D49E8
/* F2A04 800D4914 00408821 */   addu      $s1, $v0, $zero
.Lmenu_800D4918:
/* F2A08 800D4918 00112400 */  sll        $a0, $s1, 16
.Lmenu_800D491C:
/* F2A0C 800D491C 00042403 */  sra        $a0, $a0, 16
/* F2A10 800D4920 00041940 */  sll        $v1, $a0, 5
/* F2A14 800D4924 00701821 */  addu       $v1, $v1, $s0
/* F2A18 800D4928 84650000 */  lh         $a1, 0x0($v1)
/* F2A1C 800D492C 00051140 */  sll        $v0, $a1, 5
/* F2A20 800D4930 00501021 */  addu       $v0, $v0, $s0
/* F2A24 800D4934 84420004 */  lh         $v0, 0x4($v0)
/* F2A28 800D4938 94630000 */  lhu        $v1, 0x0($v1)
/* F2A2C 800D493C 54820005 */  bnel       $a0, $v0, .Lmenu_800D4954
/* F2A30 800D4940 00111C00 */   sll       $v1, $s1, 16
/* F2A34 800D4944 00608821 */  addu       $s1, $v1, $zero
/* F2A38 800D4948 0C0351D0 */  jal        func_menu_800D4740
/* F2A3C 800D494C 02602021 */   addu      $a0, $s3, $zero
/* F2A40 800D4950 00111C00 */  sll        $v1, $s1, 16
.Lmenu_800D4954:
/* F2A44 800D4954 00031AC3 */  sra        $v1, $v1, 11
/* F2A48 800D4958 00701821 */  addu       $v1, $v1, $s0
/* F2A4C 800D495C 84620000 */  lh         $v0, 0x0($v1)
/* F2A50 800D4960 00021140 */  sll        $v0, $v0, 5
/* F2A54 800D4964 00501021 */  addu       $v0, $v0, $s0
/* F2A58 800D4968 A0520008 */  sb         $s2, 0x8($v0)
/* F2A5C 800D496C 84620000 */  lh         $v0, 0x0($v1)
/* F2A60 800D4970 00021140 */  sll        $v0, $v0, 5
/* F2A64 800D4974 00501021 */  addu       $v0, $v0, $s0
/* F2A68 800D4978 84420000 */  lh         $v0, 0x0($v0)
/* F2A6C 800D497C 00021140 */  sll        $v0, $v0, 5
/* F2A70 800D4980 00501021 */  addu       $v0, $v0, $s0
/* F2A74 800D4984 A0400008 */  sb         $zero, 0x8($v0)
/* F2A78 800D4988 84620000 */  lh         $v0, 0x0($v1)
/* F2A7C 800D498C 00021140 */  sll        $v0, $v0, 5
/* F2A80 800D4990 00501021 */  addu       $v0, $v0, $s0
/* F2A84 800D4994 84450000 */  lh         $a1, 0x0($v0)
/* F2A88 800D4998 0C0351F7 */  jal        func_menu_800D47DC
/* F2A8C 800D499C 02602021 */   addu      $a0, $s3, $zero
/* F2A90 800D49A0 080352A1 */  j          .Lmenu_800D4A84
/* F2A94 800D49A4 00111400 */   sll       $v0, $s1, 16
.Lmenu_800D49A8:
/* F2A98 800D49A8 04400013 */  bltz       $v0, .Lmenu_800D49F8
/* F2A9C 800D49AC 00021140 */   sll       $v0, $v0, 5
/* F2AA0 800D49B0 00501821 */  addu       $v1, $v0, $s0
/* F2AA4 800D49B4 90620008 */  lbu        $v0, 0x8($v1)
/* F2AA8 800D49B8 14400010 */  bnez       $v0, .Lmenu_800D49FC
/* F2AAC 800D49BC 00112400 */   sll       $a0, $s1, 16
/* F2AB0 800D49C0 A0720008 */  sb         $s2, 0x8($v1)
/* F2AB4 800D49C4 84A20000 */  lh         $v0, 0x0($a1)
/* F2AB8 800D49C8 00021140 */  sll        $v0, $v0, 5
/* F2ABC 800D49CC 00501021 */  addu       $v0, $v0, $s0
/* F2AC0 800D49D0 A0520008 */  sb         $s2, 0x8($v0)
/* F2AC4 800D49D4 84A20000 */  lh         $v0, 0x0($a1)
/* F2AC8 800D49D8 00021140 */  sll        $v0, $v0, 5
/* F2ACC 800D49DC 00501021 */  addu       $v0, $v0, $s0
/* F2AD0 800D49E0 84420000 */  lh         $v0, 0x0($v0)
/* F2AD4 800D49E4 00408821 */  addu       $s1, $v0, $zero
.Lmenu_800D49E8:
/* F2AD8 800D49E8 00021140 */  sll        $v0, $v0, 5
/* F2ADC 800D49EC 00501021 */  addu       $v0, $v0, $s0
/* F2AE0 800D49F0 080352A0 */  j          .Lmenu_800D4A80
/* F2AE4 800D49F4 A0400008 */   sb        $zero, 0x8($v0)
.Lmenu_800D49F8:
/* F2AE8 800D49F8 00112400 */  sll        $a0, $s1, 16
.Lmenu_800D49FC:
/* F2AEC 800D49FC 00042403 */  sra        $a0, $a0, 16
/* F2AF0 800D4A00 00041940 */  sll        $v1, $a0, 5
/* F2AF4 800D4A04 00701821 */  addu       $v1, $v1, $s0
/* F2AF8 800D4A08 84650000 */  lh         $a1, 0x0($v1)
/* F2AFC 800D4A0C 00051140 */  sll        $v0, $a1, 5
/* F2B00 800D4A10 00501021 */  addu       $v0, $v0, $s0
/* F2B04 800D4A14 84420002 */  lh         $v0, 0x2($v0)
/* F2B08 800D4A18 94630000 */  lhu        $v1, 0x0($v1)
/* F2B0C 800D4A1C 54820005 */  bnel       $a0, $v0, .Lmenu_800D4A34
/* F2B10 800D4A20 00111C00 */   sll       $v1, $s1, 16
/* F2B14 800D4A24 00608821 */  addu       $s1, $v1, $zero
/* F2B18 800D4A28 0C0351F7 */  jal        func_menu_800D47DC
/* F2B1C 800D4A2C 02602021 */   addu      $a0, $s3, $zero
/* F2B20 800D4A30 00111C00 */  sll        $v1, $s1, 16
.Lmenu_800D4A34:
/* F2B24 800D4A34 00031AC3 */  sra        $v1, $v1, 11
/* F2B28 800D4A38 00701821 */  addu       $v1, $v1, $s0
/* F2B2C 800D4A3C 84620000 */  lh         $v0, 0x0($v1)
/* F2B30 800D4A40 00021140 */  sll        $v0, $v0, 5
/* F2B34 800D4A44 00501021 */  addu       $v0, $v0, $s0
/* F2B38 800D4A48 A0520008 */  sb         $s2, 0x8($v0)
/* F2B3C 800D4A4C 84620000 */  lh         $v0, 0x0($v1)
/* F2B40 800D4A50 00021140 */  sll        $v0, $v0, 5
/* F2B44 800D4A54 00501021 */  addu       $v0, $v0, $s0
/* F2B48 800D4A58 84420000 */  lh         $v0, 0x0($v0)
/* F2B4C 800D4A5C 00021140 */  sll        $v0, $v0, 5
/* F2B50 800D4A60 00501021 */  addu       $v0, $v0, $s0
/* F2B54 800D4A64 A0400008 */  sb         $zero, 0x8($v0)
/* F2B58 800D4A68 84620000 */  lh         $v0, 0x0($v1)
/* F2B5C 800D4A6C 00021140 */  sll        $v0, $v0, 5
/* F2B60 800D4A70 00501021 */  addu       $v0, $v0, $s0
/* F2B64 800D4A74 84450000 */  lh         $a1, 0x0($v0)
/* F2B68 800D4A78 0C0351D0 */  jal        func_menu_800D4740
/* F2B6C 800D4A7C 02602021 */   addu      $a0, $s3, $zero
.Lmenu_800D4A80:
/* F2B70 800D4A80 00111400 */  sll        $v0, $s1, 16
.Lmenu_800D4A84:
/* F2B74 800D4A84 000212C3 */  sra        $v0, $v0, 11
/* F2B78 800D4A88 00502821 */  addu       $a1, $v0, $s0
/* F2B7C 800D4A8C 84A40000 */  lh         $a0, 0x0($a1)
.Lmenu_800D4A90:
/* F2B80 800D4A90 04800005 */  bltz       $a0, .Lmenu_800D4AA8
/* F2B84 800D4A94 00041140 */   sll       $v0, $a0, 5
/* F2B88 800D4A98 00501821 */  addu       $v1, $v0, $s0
/* F2B8C 800D4A9C 90620008 */  lbu        $v0, 0x8($v1)
/* F2B90 800D4AA0 1040FF85 */  beqz       $v0, .Lmenu_800D48B8
/* F2B94 800D4AA4 00000000 */   nop
.Lmenu_800D4AA8:
/* F2B98 800D4AA8 86620004 */  lh         $v0, 0x4($s3)
/* F2B9C 800D4AAC 24030001 */  addiu      $v1, $zero, 0x1
/* F2BA0 800D4AB0 00021140 */  sll        $v0, $v0, 5
/* F2BA4 800D4AB4 00501021 */  addu       $v0, $v0, $s0
/* F2BA8 800D4AB8 A0430008 */  sb         $v1, 0x8($v0)
/* F2BAC 800D4ABC 8FBF0020 */  lw         $ra, 0x20($sp)
/* F2BB0 800D4AC0 8FB3001C */  lw         $s3, 0x1C($sp)
/* F2BB4 800D4AC4 8FB20018 */  lw         $s2, 0x18($sp)
/* F2BB8 800D4AC8 8FB10014 */  lw         $s1, 0x14($sp)
/* F2BBC 800D4ACC 8FB00010 */  lw         $s0, 0x10($sp)
/* F2BC0 800D4AD0 03E00008 */  jr         $ra
/* F2BC4 800D4AD4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D4AD8
/* F2BC8 800D4AD8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F2BCC 800D4ADC AFB50024 */  sw         $s5, 0x24($sp)
/* F2BD0 800D4AE0 0080A821 */  addu       $s5, $a0, $zero
/* F2BD4 800D4AE4 00051400 */  sll        $v0, $a1, 16
/* F2BD8 800D4AE8 000212C3 */  sra        $v0, $v0, 11
/* F2BDC 800D4AEC AFBF0028 */  sw         $ra, 0x28($sp)
/* F2BE0 800D4AF0 AFB40020 */  sw         $s4, 0x20($sp)
/* F2BE4 800D4AF4 AFB3001C */  sw         $s3, 0x1C($sp)
/* F2BE8 800D4AF8 AFB20018 */  sw         $s2, 0x18($sp)
/* F2BEC 800D4AFC AFB10014 */  sw         $s1, 0x14($sp)
/* F2BF0 800D4B00 AFB00010 */  sw         $s0, 0x10($sp)
/* F2BF4 800D4B04 8EB40000 */  lw         $s4, 0x0($s5)
/* F2BF8 800D4B08 2403FFFF */  addiu      $v1, $zero, -0x1
/* F2BFC 800D4B0C 00542021 */  addu       $a0, $v0, $s4
/* F2C00 800D4B10 A4830002 */  sh         $v1, 0x2($a0)
/* F2C04 800D4B14 A4830004 */  sh         $v1, 0x4($a0)
/* F2C08 800D4B18 86A20004 */  lh         $v0, 0x4($s5)
/* F2C0C 800D4B1C 00A09821 */  addu       $s3, $a1, $zero
/* F2C10 800D4B20 04400025 */  bltz       $v0, .Lmenu_800D4BB8
/* F2C14 800D4B24 00408021 */   addu      $s0, $v0, $zero
/* F2C18 800D4B28 00809021 */  addu       $s2, $a0, $zero
/* F2C1C 800D4B2C 02402021 */  addu       $a0, $s2, $zero
/* F2C20 800D4B30 00101400 */  sll        $v0, $s0, 16
.Lmenu_800D4B34:
/* F2C24 800D4B34 000212C3 */  sra        $v0, $v0, 11
/* F2C28 800D4B38 02828821 */  addu       $s1, $s4, $v0
/* F2C2C 800D4B3C 0C03518E */  jal        func_menu_800D4638
/* F2C30 800D4B40 02202821 */   addu      $a1, $s1, $zero
/* F2C34 800D4B44 50400021 */  beql       $v0, $zero, .Lmenu_800D4BCC
/* F2C38 800D4B48 02201021 */   addu      $v0, $s1, $zero
/* F2C3C 800D4B4C 18400009 */  blez       $v0, .Lmenu_800D4B74
/* F2C40 800D4B50 00000000 */   nop
/* F2C44 800D4B54 86220004 */  lh         $v0, 0x4($s1)
/* F2C48 800D4B58 96230004 */  lhu        $v1, 0x4($s1)
/* F2C4C 800D4B5C 0443000D */  bgezl      $v0, .Lmenu_800D4B94
/* F2C50 800D4B60 00608021 */   addu      $s0, $v1, $zero
/* F2C54 800D4B64 A6500000 */  sh         $s0, 0x0($s2)
/* F2C58 800D4B68 2410FFFF */  addiu      $s0, $zero, -0x1
/* F2C5C 800D4B6C 080352E5 */  j          .Lmenu_800D4B94
/* F2C60 800D4B70 A6330004 */   sh        $s3, 0x4($s1)
.Lmenu_800D4B74:
/* F2C64 800D4B74 86220002 */  lh         $v0, 0x2($s1)
/* F2C68 800D4B78 96230002 */  lhu        $v1, 0x2($s1)
/* F2C6C 800D4B7C 04420003 */  bltzl      $v0, .Lmenu_800D4B8C
/* F2C70 800D4B80 A6500000 */   sh        $s0, 0x0($s2)
/* F2C74 800D4B84 080352E5 */  j          .Lmenu_800D4B94
/* F2C78 800D4B88 00608021 */   addu      $s0, $v1, $zero
.Lmenu_800D4B8C:
/* F2C7C 800D4B8C 2410FFFF */  addiu      $s0, $zero, -0x1
/* F2C80 800D4B90 A6330002 */  sh         $s3, 0x2($s1)
.Lmenu_800D4B94:
/* F2C84 800D4B94 00101400 */  sll        $v0, $s0, 16
/* F2C88 800D4B98 0441FFE6 */  bgez       $v0, .Lmenu_800D4B34
/* F2C8C 800D4B9C 02402021 */   addu      $a0, $s2, $zero
/* F2C90 800D4BA0 02A02021 */  addu       $a0, $s5, $zero
/* F2C94 800D4BA4 00132C00 */  sll        $a1, $s3, 16
/* F2C98 800D4BA8 0C03521E */  jal        func_menu_800D4878
/* F2C9C 800D4BAC 00052C03 */   sra       $a1, $a1, 16
/* F2CA0 800D4BB0 080352F3 */  j          .Lmenu_800D4BCC
/* F2CA4 800D4BB4 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800D4BB8:
/* F2CA8 800D4BB8 24020001 */  addiu      $v0, $zero, 0x1
/* F2CAC 800D4BBC A4830000 */  sh         $v1, 0x0($a0)
/* F2CB0 800D4BC0 A0820008 */  sb         $v0, 0x8($a0)
/* F2CB4 800D4BC4 A6A50004 */  sh         $a1, 0x4($s5)
/* F2CB8 800D4BC8 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800D4BCC:
/* F2CBC 800D4BCC 8FBF0028 */  lw         $ra, 0x28($sp)
/* F2CC0 800D4BD0 8FB50024 */  lw         $s5, 0x24($sp)
/* F2CC4 800D4BD4 8FB40020 */  lw         $s4, 0x20($sp)
/* F2CC8 800D4BD8 8FB3001C */  lw         $s3, 0x1C($sp)
/* F2CCC 800D4BDC 8FB20018 */  lw         $s2, 0x18($sp)
/* F2CD0 800D4BE0 8FB10014 */  lw         $s1, 0x14($sp)
/* F2CD4 800D4BE4 8FB00010 */  lw         $s0, 0x10($sp)
/* F2CD8 800D4BE8 03E00008 */  jr         $ra
/* F2CDC 800D4BEC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800D4BF0
/* F2CE0 800D4BF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F2CE4 800D4BF4 AFB00010 */  sw         $s0, 0x10($sp)
/* F2CE8 800D4BF8 00808021 */  addu       $s0, $a0, $zero
/* F2CEC 800D4BFC AFBF0014 */  sw         $ra, 0x14($sp)
/* F2CF0 800D4C00 8E020E18 */  lw         $v0, 0xE18($s0)
/* F2CF4 800D4C04 8E030DC8 */  lw         $v1, 0xDC8($s0)
/* F2CF8 800D4C08 00021140 */  sll        $v0, $v0, 5
/* F2CFC 800D4C0C 00431021 */  addu       $v0, $v0, $v1
/* F2D00 800D4C10 8CA60000 */  lw         $a2, 0x0($a1)
/* F2D04 800D4C14 8CA70004 */  lw         $a3, 0x4($a1)
/* F2D08 800D4C18 8CA80008 */  lw         $t0, 0x8($a1)
/* F2D0C 800D4C1C 8CA9000C */  lw         $t1, 0xC($a1)
/* F2D10 800D4C20 AC460000 */  sw         $a2, 0x0($v0)
/* F2D14 800D4C24 AC470004 */  sw         $a3, 0x4($v0)
/* F2D18 800D4C28 AC480008 */  sw         $t0, 0x8($v0)
/* F2D1C 800D4C2C AC49000C */  sw         $t1, 0xC($v0)
/* F2D20 800D4C30 8CA60010 */  lw         $a2, 0x10($a1)
/* F2D24 800D4C34 8CA70014 */  lw         $a3, 0x14($a1)
/* F2D28 800D4C38 8CA80018 */  lw         $t0, 0x18($a1)
/* F2D2C 800D4C3C 8CA9001C */  lw         $t1, 0x1C($a1)
/* F2D30 800D4C40 AC460010 */  sw         $a2, 0x10($v0)
/* F2D34 800D4C44 AC470014 */  sw         $a3, 0x14($v0)
/* F2D38 800D4C48 AC480018 */  sw         $t0, 0x18($v0)
/* F2D3C 800D4C4C AC49001C */  sw         $t1, 0x1C($v0)
/* F2D40 800D4C50 8E020E18 */  lw         $v0, 0xE18($s0)
/* F2D44 800D4C54 8E030DC8 */  lw         $v1, 0xDC8($s0)
/* F2D48 800D4C58 96040E1A */  lhu        $a0, 0xE1A($s0)
/* F2D4C 800D4C5C 00021140 */  sll        $v0, $v0, 5
/* F2D50 800D4C60 00431021 */  addu       $v0, $v0, $v1
/* F2D54 800D4C64 A4440006 */  sh         $a0, 0x6($v0)
/* F2D58 800D4C68 8E020E18 */  lw         $v0, 0xE18($s0)
/* F2D5C 800D4C6C 8E030DC8 */  lw         $v1, 0xDC8($s0)
/* F2D60 800D4C70 00021140 */  sll        $v0, $v0, 5
/* F2D64 800D4C74 00431021 */  addu       $v0, $v0, $v1
/* F2D68 800D4C78 84450006 */  lh         $a1, 0x6($v0)
/* F2D6C 800D4C7C 0C0352B6 */  jal        func_menu_800D4AD8
/* F2D70 800D4C80 26040E1C */   addiu     $a0, $s0, 0xE1C
/* F2D74 800D4C84 14400005 */  bnez       $v0, .Lmenu_800D4C9C
/* F2D78 800D4C88 00000000 */   nop
/* F2D7C 800D4C8C 8E020E18 */  lw         $v0, 0xE18($s0)
/* F2D80 800D4C90 24430001 */  addiu      $v1, $v0, 0x1
/* F2D84 800D4C94 08035328 */  j          .Lmenu_800D4CA0
/* F2D88 800D4C98 AE030E18 */   sw        $v1, 0xE18($s0)
.Lmenu_800D4C9C:
/* F2D8C 800D4C9C 94420006 */  lhu        $v0, 0x6($v0)
.Lmenu_800D4CA0:
/* F2D90 800D4CA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* F2D94 800D4CA4 8FB00010 */  lw         $s0, 0x10($sp)
/* F2D98 800D4CA8 03E00008 */  jr         $ra
/* F2D9C 800D4CAC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D4CB0
/* F2DA0 800D4CB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F2DA4 800D4CB4 AFB00010 */  sw         $s0, 0x10($sp)
/* F2DA8 800D4CB8 00808021 */  addu       $s0, $a0, $zero
/* F2DAC 800D4CBC AFB10014 */  sw         $s1, 0x14($sp)
/* F2DB0 800D4CC0 00A08821 */  addu       $s1, $a1, $zero
/* F2DB4 800D4CC4 00002821 */  addu       $a1, $zero, $zero
/* F2DB8 800D4CC8 AFBF0018 */  sw         $ra, 0x18($sp)
/* F2DBC 800D4CCC 0C000697 */  jal        func_80001A5C
/* F2DC0 800D4CD0 2406000A */   addiu     $a2, $zero, 0xA
/* F2DC4 800D4CD4 02002021 */  addu       $a0, $s0, $zero
/* F2DC8 800D4CD8 02202821 */  addu       $a1, $s1, $zero
/* F2DCC 800D4CDC 0C000708 */  jal        func_80001C20
/* F2DD0 800D4CE0 2406000A */   addiu     $a2, $zero, 0xA
/* F2DD4 800D4CE4 8FBF0018 */  lw         $ra, 0x18($sp)
/* F2DD8 800D4CE8 8FB10014 */  lw         $s1, 0x14($sp)
/* F2DDC 800D4CEC 8FB00010 */  lw         $s0, 0x10($sp)
/* F2DE0 800D4CF0 03E00008 */  jr         $ra
/* F2DE4 800D4CF4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D4CF8
/* F2DE8 800D4CF8 AC800000 */  sw         $zero, 0x0($a0)
/* F2DEC 800D4CFC AC800004 */  sw         $zero, 0x4($a0)
/* F2DF0 800D4D00 AC800008 */  sw         $zero, 0x8($a0)
/* F2DF4 800D4D04 AC80000C */  sw         $zero, 0xC($a0)
/* F2DF8 800D4D08 AC800020 */  sw         $zero, 0x20($a0)
/* F2DFC 800D4D0C AC800024 */  sw         $zero, 0x24($a0)
/* F2E00 800D4D10 AC80001C */  sw         $zero, 0x1C($a0)
/* F2E04 800D4D14 03E00008 */  jr         $ra
/* F2E08 800D4D18 AC800028 */   sw        $zero, 0x28($a0)

glabel func_menu_800D4D1C
/* F2E0C 800D4D1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F2E10 800D4D20 AFB00010 */  sw         $s0, 0x10($sp)
/* F2E14 800D4D24 00808021 */  addu       $s0, $a0, $zero
/* F2E18 800D4D28 AFBF0014 */  sw         $ra, 0x14($sp)
/* F2E1C 800D4D2C 0C0152E4 */  jal        func_80054B90
/* F2E20 800D4D30 26040010 */   addiu     $a0, $s0, 0x10
/* F2E24 800D4D34 0C03533E */  jal        func_menu_800D4CF8
/* F2E28 800D4D38 02002021 */   addu      $a0, $s0, $zero
/* F2E2C 800D4D3C 02001021 */  addu       $v0, $s0, $zero
/* F2E30 800D4D40 8FBF0014 */  lw         $ra, 0x14($sp)
/* F2E34 800D4D44 8FB00010 */  lw         $s0, 0x10($sp)
/* F2E38 800D4D48 03E00008 */  jr         $ra
/* F2E3C 800D4D4C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D4D50
/* F2E40 800D4D50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F2E44 800D4D54 AFB10014 */  sw         $s1, 0x14($sp)
/* F2E48 800D4D58 00808821 */  addu       $s1, $a0, $zero
/* F2E4C 800D4D5C AFB00010 */  sw         $s0, 0x10($sp)
/* F2E50 800D4D60 AFBF0018 */  sw         $ra, 0x18($sp)
/* F2E54 800D4D64 0C035379 */  jal        func_menu_800D4DE4
/* F2E58 800D4D68 00A08021 */   addu      $s0, $a1, $zero
/* F2E5C 800D4D6C 26240010 */  addiu      $a0, $s1, 0x10
/* F2E60 800D4D70 0C0152E9 */  jal        func_80054BA4
/* F2E64 800D4D74 24050002 */   addiu     $a1, $zero, 0x2
/* F2E68 800D4D78 32100001 */  andi       $s0, $s0, 0x1
/* F2E6C 800D4D7C 12000003 */  beqz       $s0, .Lmenu_800D4D8C
/* F2E70 800D4D80 00000000 */   nop
/* F2E74 800D4D84 0C01FB5C */  jal        func_8007ED70
/* F2E78 800D4D88 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800D4D8C:
/* F2E7C 800D4D8C 8FBF0018 */  lw         $ra, 0x18($sp)
/* F2E80 800D4D90 8FB10014 */  lw         $s1, 0x14($sp)
/* F2E84 800D4D94 8FB00010 */  lw         $s0, 0x10($sp)
/* F2E88 800D4D98 03E00008 */  jr         $ra
/* F2E8C 800D4D9C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D4DA0
/* F2E90 800D4DA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F2E94 800D4DA4 AFB00010 */  sw         $s0, 0x10($sp)
/* F2E98 800D4DA8 00808021 */  addu       $s0, $a0, $zero
/* F2E9C 800D4DAC AFB10014 */  sw         $s1, 0x14($sp)
/* F2EA0 800D4DB0 00A08821 */  addu       $s1, $a1, $zero
/* F2EA4 800D4DB4 AFB20018 */  sw         $s2, 0x18($sp)
/* F2EA8 800D4DB8 AFBF001C */  sw         $ra, 0x1C($sp)
/* F2EAC 800D4DBC 0C035379 */  jal        func_menu_800D4DE4
/* F2EB0 800D4DC0 00C09021 */   addu      $s2, $a2, $zero
/* F2EB4 800D4DC4 AE110000 */  sw         $s1, 0x0($s0)
/* F2EB8 800D4DC8 AE120004 */  sw         $s2, 0x4($s0)
/* F2EBC 800D4DCC 8FBF001C */  lw         $ra, 0x1C($sp)
/* F2EC0 800D4DD0 8FB20018 */  lw         $s2, 0x18($sp)
/* F2EC4 800D4DD4 8FB10014 */  lw         $s1, 0x14($sp)
/* F2EC8 800D4DD8 8FB00010 */  lw         $s0, 0x10($sp)
/* F2ECC 800D4DDC 03E00008 */  jr         $ra
/* F2ED0 800D4DE0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D4DE4
/* F2ED4 800D4DE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F2ED8 800D4DE8 AFB00010 */  sw         $s0, 0x10($sp)
/* F2EDC 800D4DEC 00808021 */  addu       $s0, $a0, $zero
/* F2EE0 800D4DF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* F2EE4 800D4DF4 8E020010 */  lw         $v0, 0x10($s0)
/* F2EE8 800D4DF8 10400003 */  beqz       $v0, .Lmenu_800D4E08
/* F2EEC 800D4DFC 26040010 */   addiu     $a0, $s0, 0x10
/* F2EF0 800D4E00 0C0153DC */  jal        func_80054F70
/* F2EF4 800D4E04 00000000 */   nop
.Lmenu_800D4E08:
/* F2EF8 800D4E08 8E020000 */  lw         $v0, 0x0($s0)
/* F2EFC 800D4E0C 10400010 */  beqz       $v0, .Lmenu_800D4E50
/* F2F00 800D4E10 00000000 */   nop
/* F2F04 800D4E14 8E030008 */  lw         $v1, 0x8($s0)
/* F2F08 800D4E18 1060000D */  beqz       $v1, .Lmenu_800D4E50
/* F2F0C 800D4E1C 00000000 */   nop
/* F2F10 800D4E20 8C6200EC */  lw         $v0, 0xEC($v1)
/* F2F14 800D4E24 84440038 */  lh         $a0, 0x38($v0)
/* F2F18 800D4E28 8C42003C */  lw         $v0, 0x3C($v0)
/* F2F1C 800D4E2C 0040F809 */  jalr       $v0
/* F2F20 800D4E30 00642021 */   addu      $a0, $v1, $a0
/* F2F24 800D4E34 8E030000 */  lw         $v1, 0x0($s0)
/* F2F28 800D4E38 8C620000 */  lw         $v0, 0x0($v1)
/* F2F2C 800D4E3C 8E050008 */  lw         $a1, 0x8($s0)
/* F2F30 800D4E40 84440080 */  lh         $a0, 0x80($v0)
/* F2F34 800D4E44 8C420084 */  lw         $v0, 0x84($v0)
/* F2F38 800D4E48 0040F809 */  jalr       $v0
/* F2F3C 800D4E4C 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800D4E50:
/* F2F40 800D4E50 8E040020 */  lw         $a0, 0x20($s0)
/* F2F44 800D4E54 10800003 */  beqz       $a0, .Lmenu_800D4E64
/* F2F48 800D4E58 00000000 */   nop
/* F2F4C 800D4E5C 0C009444 */  jal        func_80025110
/* F2F50 800D4E60 00000000 */   nop
.Lmenu_800D4E64:
/* F2F54 800D4E64 8E040024 */  lw         $a0, 0x24($s0)
/* F2F58 800D4E68 10800003 */  beqz       $a0, .Lmenu_800D4E78
/* F2F5C 800D4E6C 00000000 */   nop
/* F2F60 800D4E70 0C009444 */  jal        func_80025110
/* F2F64 800D4E74 00000000 */   nop
.Lmenu_800D4E78:
/* F2F68 800D4E78 8E040028 */  lw         $a0, 0x28($s0)
/* F2F6C 800D4E7C 10800003 */  beqz       $a0, .Lmenu_800D4E8C
/* F2F70 800D4E80 00000000 */   nop
/* F2F74 800D4E84 0C009444 */  jal        func_80025110
/* F2F78 800D4E88 00000000 */   nop
.Lmenu_800D4E8C:
/* F2F7C 800D4E8C 0C03533E */  jal        func_menu_800D4CF8
/* F2F80 800D4E90 02002021 */   addu      $a0, $s0, $zero
/* F2F84 800D4E94 8FBF0014 */  lw         $ra, 0x14($sp)
/* F2F88 800D4E98 8FB00010 */  lw         $s0, 0x10($sp)
/* F2F8C 800D4E9C 03E00008 */  jr         $ra
/* F2F90 800D4EA0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D4EA4
/* F2F94 800D4EA4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F2F98 800D4EA8 AFB20020 */  sw         $s2, 0x20($sp)
/* F2F9C 800D4EAC 00809021 */  addu       $s2, $a0, $zero
/* F2FA0 800D4EB0 AFB30024 */  sw         $s3, 0x24($sp)
/* F2FA4 800D4EB4 00009821 */  addu       $s3, $zero, $zero
/* F2FA8 800D4EB8 AFB60030 */  sw         $s6, 0x30($sp)
/* F2FAC 800D4EBC 2416FFFF */  addiu      $s6, $zero, -0x1
/* F2FB0 800D4EC0 AFB1001C */  sw         $s1, 0x1C($sp)
/* F2FB4 800D4EC4 02608821 */  addu       $s1, $s3, $zero
/* F2FB8 800D4EC8 AFBF0034 */  sw         $ra, 0x34($sp)
/* F2FBC 800D4ECC AFB5002C */  sw         $s5, 0x2C($sp)
/* F2FC0 800D4ED0 AFB40028 */  sw         $s4, 0x28($sp)
/* F2FC4 800D4ED4 AFB00018 */  sw         $s0, 0x18($sp)
/* F2FC8 800D4ED8 8E540014 */  lw         $s4, 0x14($s2)
.Lmenu_800D4EDC:
/* F2FCC 800D4EDC 8E42001C */  lw         $v0, 0x1C($s2)
/* F2FD0 800D4EE0 0262102A */  slt        $v0, $s3, $v0
/* F2FD4 800D4EE4 1040002B */  beqz       $v0, .Lmenu_800D4F94
/* F2FD8 800D4EE8 00008021 */   addu      $s0, $zero, $zero
/* F2FDC 800D4EEC 8E420020 */  lw         $v0, 0x20($s2)
/* F2FE0 800D4EF0 26550010 */  addiu      $s5, $s2, 0x10
/* F2FE4 800D4EF4 02221021 */  addu       $v0, $s1, $v0
/* F2FE8 800D4EF8 8C42000C */  lw         $v0, 0xC($v0)
/* F2FEC 800D4EFC 8E430024 */  lw         $v1, 0x24($s2)
/* F2FF0 800D4F00 00021080 */  sll        $v0, $v0, 2
/* F2FF4 800D4F04 00431021 */  addu       $v0, $v0, $v1
/* F2FF8 800D4F08 AC560000 */  sw         $s6, 0x0($v0)
.Lmenu_800D4F0C:
/* F2FFC 800D4F0C 0214102A */  slt        $v0, $s0, $s4
/* F3000 800D4F10 1040001D */  beqz       $v0, .Lmenu_800D4F88
/* F3004 800D4F14 00101080 */   sll       $v0, $s0, 2
/* F3008 800D4F18 8EA30008 */  lw         $v1, 0x8($s5)
/* F300C 800D4F1C 00431021 */  addu       $v0, $v0, $v1
/* F3010 800D4F20 8C420000 */  lw         $v0, 0x0($v0)
/* F3014 800D4F24 27A40010 */  addiu      $a0, $sp, 0x10
/* F3018 800D4F28 88470014 */  lwl        $a3, 0x14($v0)
/* F301C 800D4F2C 98470017 */  lwr        $a3, 0x17($v0)
/* F3020 800D4F30 88480018 */  lwl        $t0, 0x18($v0)
/* F3024 800D4F34 9848001B */  lwr        $t0, 0x1B($v0)
/* F3028 800D4F38 ABA70010 */  swl        $a3, 0x10($sp)
/* F302C 800D4F3C BBA70013 */  swr        $a3, 0x13($sp)
/* F3030 800D4F40 ABA80014 */  swl        $t0, 0x14($sp)
/* F3034 800D4F44 BBA80017 */  swr        $t0, 0x17($sp)
/* F3038 800D4F48 8E450020 */  lw         $a1, 0x20($s2)
/* F303C 800D4F4C 24060008 */  addiu      $a2, $zero, 0x8
/* F3040 800D4F50 0C0006B2 */  jal        func_80001AC8
/* F3044 800D4F54 00B12821 */   addu      $a1, $a1, $s1
/* F3048 800D4F58 5440FFEC */  bnel       $v0, $zero, .Lmenu_800D4F0C
/* F304C 800D4F5C 26100001 */   addiu     $s0, $s0, 0x1
/* F3050 800D4F60 8E420020 */  lw         $v0, 0x20($s2)
/* F3054 800D4F64 02221021 */  addu       $v0, $s1, $v0
/* F3058 800D4F68 8C42000C */  lw         $v0, 0xC($v0)
/* F305C 800D4F6C 8E430024 */  lw         $v1, 0x24($s2)
/* F3060 800D4F70 00021080 */  sll        $v0, $v0, 2
/* F3064 800D4F74 00431021 */  addu       $v0, $v0, $v1
/* F3068 800D4F78 AC500000 */  sw         $s0, 0x0($v0)
/* F306C 800D4F7C 02808021 */  addu       $s0, $s4, $zero
/* F3070 800D4F80 080353C3 */  j          .Lmenu_800D4F0C
/* F3074 800D4F84 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800D4F88:
/* F3078 800D4F88 26310010 */  addiu      $s1, $s1, 0x10
/* F307C 800D4F8C 080353B7 */  j          .Lmenu_800D4EDC
/* F3080 800D4F90 26730001 */   addiu     $s3, $s3, 0x1
.Lmenu_800D4F94:
/* F3084 800D4F94 8FBF0034 */  lw         $ra, 0x34($sp)
/* F3088 800D4F98 8FB60030 */  lw         $s6, 0x30($sp)
/* F308C 800D4F9C 8FB5002C */  lw         $s5, 0x2C($sp)
/* F3090 800D4FA0 8FB40028 */  lw         $s4, 0x28($sp)
/* F3094 800D4FA4 8FB30024 */  lw         $s3, 0x24($sp)
/* F3098 800D4FA8 8FB20020 */  lw         $s2, 0x20($sp)
/* F309C 800D4FAC 8FB1001C */  lw         $s1, 0x1C($sp)
/* F30A0 800D4FB0 8FB00018 */  lw         $s0, 0x18($sp)
/* F30A4 800D4FB4 03E00008 */  jr         $ra
/* F30A8 800D4FB8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800D4FBC
/* F30AC 800D4FBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F30B0 800D4FC0 AFB00010 */  sw         $s0, 0x10($sp)
/* F30B4 800D4FC4 00808021 */  addu       $s0, $a0, $zero
/* F30B8 800D4FC8 AFB10014 */  sw         $s1, 0x14($sp)
/* F30BC 800D4FCC 00A08821 */  addu       $s1, $a1, $zero
/* F30C0 800D4FD0 AFBF0018 */  sw         $ra, 0x18($sp)
/* F30C4 800D4FD4 0C0006B2 */  jal        func_80001AC8
/* F30C8 800D4FD8 2406000A */   addiu     $a2, $zero, 0xA
/* F30CC 800D4FDC 14400004 */  bnez       $v0, .Lmenu_800D4FF0
/* F30D0 800D4FE0 00000000 */   nop
/* F30D4 800D4FE4 8E03000C */  lw         $v1, 0xC($s0)
/* F30D8 800D4FE8 8E22000C */  lw         $v0, 0xC($s1)
/* F30DC 800D4FEC 00621023 */  subu       $v0, $v1, $v0
.Lmenu_800D4FF0:
/* F30E0 800D4FF0 8FBF0018 */  lw         $ra, 0x18($sp)
/* F30E4 800D4FF4 8FB10014 */  lw         $s1, 0x14($sp)
/* F30E8 800D4FF8 8FB00010 */  lw         $s0, 0x10($sp)
/* F30EC 800D4FFC 03E00008 */  jr         $ra
/* F30F0 800D5000 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D5004
/* F30F4 800D5004 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F30F8 800D5008 AFB3001C */  sw         $s3, 0x1C($sp)
/* F30FC 800D500C 00809821 */  addu       $s3, $a0, $zero
/* F3100 800D5010 AFB10014 */  sw         $s1, 0x14($sp)
/* F3104 800D5014 00A08821 */  addu       $s1, $a1, $zero
/* F3108 800D5018 AFBF0020 */  sw         $ra, 0x20($sp)
/* F310C 800D501C AFB20018 */  sw         $s2, 0x18($sp)
/* F3110 800D5020 AFB00010 */  sw         $s0, 0x10($sp)
/* F3114 800D5024 8E640020 */  lw         $a0, 0x20($s3)
/* F3118 800D5028 10800003 */  beqz       $a0, .Lmenu_800D5038
/* F311C 800D502C 00C08021 */   addu      $s0, $a2, $zero
/* F3120 800D5030 0C009444 */  jal        func_80025110
/* F3124 800D5034 00000000 */   nop
.Lmenu_800D5038:
/* F3128 800D5038 8E640024 */  lw         $a0, 0x24($s3)
/* F312C 800D503C 50800004 */  beql       $a0, $zero, .Lmenu_800D5050
/* F3130 800D5040 AE600020 */   sw        $zero, 0x20($s3)
/* F3134 800D5044 0C009444 */  jal        func_80025110
/* F3138 800D5048 00000000 */   nop
/* F313C 800D504C AE600020 */  sw         $zero, 0x20($s3)
.Lmenu_800D5050:
/* F3140 800D5050 AE600024 */  sw         $zero, 0x24($s3)
/* F3144 800D5054 12000014 */  beqz       $s0, .Lmenu_800D50A8
/* F3148 800D5058 AE60001C */   sw        $zero, 0x1C($s3)
/* F314C 800D505C 0C01FB4C */  jal        func_8007ED30
/* F3150 800D5060 24040654 */   addiu     $a0, $zero, 0x654
/* F3154 800D5064 0C00278C */  jal        func_80009E30
/* F3158 800D5068 00402021 */   addu      $a0, $v0, $zero
/* F315C 800D506C 00409021 */  addu       $s2, $v0, $zero
/* F3160 800D5070 56400008 */  bnel       $s2, $zero, .Lmenu_800D5094
/* F3164 800D5074 02402021 */   addu      $a0, $s2, $zero
/* F3168 800D5078 3C04800D */  lui        $a0, %hi(D_menu_800CA7F0)
/* F316C 800D507C 2484A7F0 */  addiu      $a0, $a0, %lo(D_menu_800CA7F0)
/* F3170 800D5080 00002821 */  addu       $a1, $zero, $zero
/* F3174 800D5084 00A03021 */  addu       $a2, $a1, $zero
/* F3178 800D5088 0C011ACF */  jal        func_80046B3C
/* F317C 800D508C 00A03821 */   addu      $a3, $a1, $zero
/* F3180 800D5090 02402021 */  addu       $a0, $s2, $zero
.Lmenu_800D5094:
/* F3184 800D5094 3C05800D */  lui        $a1, %hi(D_menu_800CA7F4)
/* F3188 800D5098 0C0025BA */  jal        func_800096E8
/* F318C 800D509C 24A5A7F4 */   addiu     $a1, $a1, %lo(D_menu_800CA7F4)
/* F3190 800D50A0 0803543A */  j          .Lmenu_800D50E8
/* F3194 800D50A4 00000000 */   nop
.Lmenu_800D50A8:
/* F3198 800D50A8 0C01FB4C */  jal        func_8007ED30
/* F319C 800D50AC 24040658 */   addiu     $a0, $zero, 0x658
/* F31A0 800D50B0 00408021 */  addu       $s0, $v0, $zero
/* F31A4 800D50B4 0C002504 */  jal        func_80009410
/* F31A8 800D50B8 02002021 */   addu      $a0, $s0, $zero
/* F31AC 800D50BC 3C02800D */  lui        $v0, %hi(D_menu_800CA800)
/* F31B0 800D50C0 2442A800 */  addiu      $v0, $v0, %lo(D_menu_800CA800)
/* F31B4 800D50C4 02009021 */  addu       $s2, $s0, $zero
/* F31B8 800D50C8 16400007 */  bnez       $s2, .Lmenu_800D50E8
/* F31BC 800D50CC AE020028 */   sw        $v0, 0x28($s0)
/* F31C0 800D50D0 3C04800D */  lui        $a0, %hi(D_menu_800CA7F0)
/* F31C4 800D50D4 2484A7F0 */  addiu      $a0, $a0, %lo(D_menu_800CA7F0)
/* F31C8 800D50D8 00002821 */  addu       $a1, $zero, $zero
/* F31CC 800D50DC 00A03021 */  addu       $a2, $a1, $zero
/* F31D0 800D50E0 0C011ACF */  jal        func_80046B3C
/* F31D4 800D50E4 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800D50E8:
/* F31D8 800D50E8 8E420028 */  lw         $v0, 0x28($s2)
/* F31DC 800D50EC 02202821 */  addu       $a1, $s1, $zero
/* F31E0 800D50F0 84440088 */  lh         $a0, 0x88($v0)
/* F31E4 800D50F4 8C42008C */  lw         $v0, 0x8C($v0)
/* F31E8 800D50F8 0040F809 */  jalr       $v0
/* F31EC 800D50FC 02442021 */   addu      $a0, $s2, $a0
/* F31F0 800D5100 8E420004 */  lw         $v0, 0x4($s2)
/* F31F4 800D5104 30420001 */  andi       $v0, $v0, 0x1
/* F31F8 800D5108 14400006 */  bnez       $v0, .Lmenu_800D5124
/* F31FC 800D510C 00002821 */   addu      $a1, $zero, $zero
/* F3200 800D5110 3C04800D */  lui        $a0, %hi(D_menu_800CA7F0)
/* F3204 800D5114 2484A7F0 */  addiu      $a0, $a0, %lo(D_menu_800CA7F0)
/* F3208 800D5118 00A03021 */  addu       $a2, $a1, $zero
/* F320C 800D511C 0C011ACF */  jal        func_80046B3C
/* F3210 800D5120 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800D5124:
/* F3214 800D5124 8E420028 */  lw         $v0, 0x28($s2)
/* F3218 800D5128 844400A0 */  lh         $a0, 0xA0($v0)
/* F321C 800D512C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F3220 800D5130 0040F809 */  jalr       $v0
/* F3224 800D5134 02442021 */   addu      $a0, $s2, $a0
/* F3228 800D5138 2403002D */  addiu      $v1, $zero, 0x2D
/* F322C 800D513C 10430006 */  beq        $v0, $v1, .Lmenu_800D5158
/* F3230 800D5140 24050013 */   addiu     $a1, $zero, 0x13
/* F3234 800D5144 8E420028 */  lw         $v0, 0x28($s2)
/* F3238 800D5148 84440098 */  lh         $a0, 0x98($v0)
/* F323C 800D514C 8C42009C */  lw         $v0, 0x9C($v0)
/* F3240 800D5150 0040F809 */  jalr       $v0
/* F3244 800D5154 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800D5158:
/* F3248 800D5158 0C037CB8 */  jal        func_menu_800DF2E0
/* F324C 800D515C 02402021 */   addu      $a0, $s2, $zero
/* F3250 800D5160 3C038012 */  lui        $v1, %hi(D_menu_80126970)
/* F3254 800D5164 8C646970 */  lw         $a0, %lo(D_menu_80126970)($v1)
/* F3258 800D5168 0C01FB65 */  jal        func_8007ED94
/* F325C 800D516C AE62001C */   sw        $v0, 0x1C($s3)
/* F3260 800D5170 8E64001C */  lw         $a0, 0x1C($s3)
/* F3264 800D5174 0C00943C */  jal        func_800250F0
/* F3268 800D5178 00042100 */   sll       $a0, $a0, 4
/* F326C 800D517C 8E64001C */  lw         $a0, 0x1C($s3)
/* F3270 800D5180 AE620020 */  sw         $v0, 0x20($s3)
/* F3274 800D5184 0C00943C */  jal        func_800250F0
/* F3278 800D5188 00042080 */   sll       $a0, $a0, 2
/* F327C 800D518C 0C01FB72 */  jal        func_8007EDC8
/* F3280 800D5190 AE620024 */   sw        $v0, 0x24($s3)
/* F3284 800D5194 8E620020 */  lw         $v0, 0x20($s3)
/* F3288 800D5198 14400006 */  bnez       $v0, .Lmenu_800D51B4
/* F328C 800D519C 3C04800D */   lui       $a0, %hi(D_menu_800CA7F0)
/* F3290 800D51A0 2484A7F0 */  addiu      $a0, $a0, %lo(D_menu_800CA7F0)
/* F3294 800D51A4 00002821 */  addu       $a1, $zero, $zero
/* F3298 800D51A8 00A03021 */  addu       $a2, $a1, $zero
/* F329C 800D51AC 0C011ACF */  jal        func_80046B3C
/* F32A0 800D51B0 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800D51B4:
/* F32A4 800D51B4 8E620024 */  lw         $v0, 0x24($s3)
/* F32A8 800D51B8 14400008 */  bnez       $v0, .Lmenu_800D51DC
/* F32AC 800D51BC 00008821 */   addu      $s1, $zero, $zero
/* F32B0 800D51C0 3C04800D */  lui        $a0, %hi(D_menu_800CA7F0)
/* F32B4 800D51C4 2484A7F0 */  addiu      $a0, $a0, %lo(D_menu_800CA7F0)
/* F32B8 800D51C8 00002821 */  addu       $a1, $zero, $zero
/* F32BC 800D51CC 00A03021 */  addu       $a2, $a1, $zero
/* F32C0 800D51D0 0C011ACF */  jal        func_80046B3C
/* F32C4 800D51D4 00A03821 */   addu      $a3, $a1, $zero
/* F32C8 800D51D8 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800D51DC:
/* F32CC 800D51DC 8E62001C */  lw         $v0, 0x1C($s3)
/* F32D0 800D51E0 0222102A */  slt        $v0, $s1, $v0
/* F32D4 800D51E4 10400010 */  beqz       $v0, .Lmenu_800D5228
/* F32D8 800D51E8 00118100 */   sll       $s0, $s1, 4
/* F32DC 800D51EC 8E620020 */  lw         $v0, 0x20($s3)
/* F32E0 800D51F0 02021021 */  addu       $v0, $s0, $v0
/* F32E4 800D51F4 AC51000C */  sw         $s1, 0xC($v0)
/* F32E8 800D51F8 8E420028 */  lw         $v0, 0x28($s2)
/* F32EC 800D51FC 26310001 */  addiu      $s1, $s1, 0x1
/* F32F0 800D5200 844400A0 */  lh         $a0, 0xA0($v0)
/* F32F4 800D5204 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F32F8 800D5208 0040F809 */  jalr       $v0
/* F32FC 800D520C 02442021 */   addu      $a0, $s2, $a0
/* F3300 800D5210 8E640020 */  lw         $a0, 0x20($s3)
/* F3304 800D5214 26450044 */  addiu      $a1, $s2, 0x44
/* F3308 800D5218 0C03532C */  jal        func_menu_800D4CB0
/* F330C 800D521C 00902021 */   addu      $a0, $a0, $s0
/* F3310 800D5220 08035477 */  j          .Lmenu_800D51DC
/* F3314 800D5224 00000000 */   nop
.Lmenu_800D5228:
/* F3318 800D5228 24060010 */  addiu      $a2, $zero, 0x10
/* F331C 800D522C 3C07800D */  lui        $a3, %hi(func_menu_800D4FBC)
/* F3320 800D5230 8E640020 */  lw         $a0, 0x20($s3)
/* F3324 800D5234 8E65001C */  lw         $a1, 0x1C($s3)
/* F3328 800D5238 0C0007B1 */  jal        func_80001EC4
/* F332C 800D523C 24E74FBC */   addiu     $a3, $a3, %lo(func_menu_800D4FBC)
/* F3330 800D5240 8E420028 */  lw         $v0, 0x28($s2)
/* F3334 800D5244 844400A0 */  lh         $a0, 0xA0($v0)
/* F3338 800D5248 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F333C 800D524C 0040F809 */  jalr       $v0
/* F3340 800D5250 02442021 */   addu      $a0, $s2, $a0
/* F3344 800D5254 24030006 */  addiu      $v1, $zero, 0x6
/* F3348 800D5258 10430006 */  beq        $v0, $v1, .Lmenu_800D5274
/* F334C 800D525C 00602821 */   addu      $a1, $v1, $zero
/* F3350 800D5260 8E420028 */  lw         $v0, 0x28($s2)
/* F3354 800D5264 84440098 */  lh         $a0, 0x98($v0)
/* F3358 800D5268 8C42009C */  lw         $v0, 0x9C($v0)
/* F335C 800D526C 0040F809 */  jalr       $v0
/* F3360 800D5270 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800D5274:
/* F3364 800D5274 12400006 */  beqz       $s2, .Lmenu_800D5290
/* F3368 800D5278 24050003 */   addiu     $a1, $zero, 0x3
/* F336C 800D527C 8E420028 */  lw         $v0, 0x28($s2)
/* F3370 800D5280 84440038 */  lh         $a0, 0x38($v0)
/* F3374 800D5284 8C42003C */  lw         $v0, 0x3C($v0)
/* F3378 800D5288 0040F809 */  jalr       $v0
/* F337C 800D528C 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800D5290:
/* F3380 800D5290 0C0353A9 */  jal        func_menu_800D4EA4
/* F3384 800D5294 02602021 */   addu      $a0, $s3, $zero
/* F3388 800D5298 8FBF0020 */  lw         $ra, 0x20($sp)
/* F338C 800D529C 8FB3001C */  lw         $s3, 0x1C($sp)
/* F3390 800D52A0 8FB20018 */  lw         $s2, 0x18($sp)
/* F3394 800D52A4 8FB10014 */  lw         $s1, 0x14($sp)
/* F3398 800D52A8 8FB00010 */  lw         $s0, 0x10($sp)
/* F339C 800D52AC 03E00008 */  jr         $ra
/* F33A0 800D52B0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D52B4
/* F33A4 800D52B4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F33A8 800D52B8 AFB1001C */  sw         $s1, 0x1C($sp)
/* F33AC 800D52BC 00808821 */  addu       $s1, $a0, $zero
/* F33B0 800D52C0 AFB20020 */  sw         $s2, 0x20($sp)
/* F33B4 800D52C4 00A09021 */  addu       $s2, $a1, $zero
/* F33B8 800D52C8 AFB30024 */  sw         $s3, 0x24($sp)
/* F33BC 800D52CC 00C09821 */  addu       $s3, $a2, $zero
/* F33C0 800D52D0 AFB00018 */  sw         $s0, 0x18($sp)
/* F33C4 800D52D4 00E08021 */  addu       $s0, $a3, $zero
/* F33C8 800D52D8 AFBF0028 */  sw         $ra, 0x28($sp)
/* F33CC 800D52DC 8E220010 */  lw         $v0, 0x10($s1)
/* F33D0 800D52E0 10400003 */  beqz       $v0, .Lmenu_800D52F0
/* F33D4 800D52E4 26240010 */   addiu     $a0, $s1, 0x10
/* F33D8 800D52E8 0C0153DC */  jal        func_80054F70
/* F33DC 800D52EC 00000000 */   nop
.Lmenu_800D52F0:
/* F33E0 800D52F0 8E230008 */  lw         $v1, 0x8($s1)
/* F33E4 800D52F4 10600008 */  beqz       $v1, .Lmenu_800D5318
/* F33E8 800D52F8 00000000 */   nop
/* F33EC 800D52FC 8C6200EC */  lw         $v0, 0xEC($v1)
/* F33F0 800D5300 84440038 */  lh         $a0, 0x38($v0)
/* F33F4 800D5304 8C42003C */  lw         $v0, 0x3C($v0)
/* F33F8 800D5308 0040F809 */  jalr       $v0
/* F33FC 800D530C 00642021 */   addu      $a0, $v1, $a0
/* F3400 800D5310 080354CD */  j          .Lmenu_800D5334
/* F3404 800D5314 00000000 */   nop
.Lmenu_800D5318:
/* F3408 800D5318 8E230000 */  lw         $v1, 0x0($s1)
/* F340C 800D531C 8C620000 */  lw         $v0, 0x0($v1)
/* F3410 800D5320 84440018 */  lh         $a0, 0x18($v0)
/* F3414 800D5324 8C42001C */  lw         $v0, 0x1C($v0)
/* F3418 800D5328 0040F809 */  jalr       $v0
/* F341C 800D532C 00642021 */   addu      $a0, $v1, $a0
/* F3420 800D5330 AE220008 */  sw         $v0, 0x8($s1)
.Lmenu_800D5334:
/* F3424 800D5334 8E230008 */  lw         $v1, 0x8($s1)
/* F3428 800D5338 8C6200EC */  lw         $v0, 0xEC($v1)
/* F342C 800D533C 02002821 */  addu       $a1, $s0, $zero
/* F3430 800D5340 844400B0 */  lh         $a0, 0xB0($v0)
/* F3434 800D5344 8C4200B4 */  lw         $v0, 0xB4($v0)
/* F3438 800D5348 0040F809 */  jalr       $v0
/* F343C 800D534C 00642021 */   addu      $a0, $v1, $a0
/* F3440 800D5350 8E240008 */  lw         $a0, 0x8($s1)
/* F3444 800D5354 02403021 */  addu       $a2, $s2, $zero
/* F3448 800D5358 8C8200EC */  lw         $v0, 0xEC($a0)
/* F344C 800D535C 3C01800D */  lui        $at, %hi(D_menu_800CA7FC)
/* F3450 800D5360 C420A7FC */  lwc1       $f0, %lo(D_menu_800CA7FC)($at)
/* F3454 800D5364 84430030 */  lh         $v1, 0x30($v0)
/* F3458 800D5368 02603821 */  addu       $a3, $s3, $zero
/* F345C 800D536C E7A00010 */  swc1       $f0, 0x10($sp)
/* F3460 800D5370 8E250004 */  lw         $a1, 0x4($s1)
/* F3464 800D5374 8C420034 */  lw         $v0, 0x34($v0)
/* F3468 800D5378 0040F809 */  jalr       $v0
/* F346C 800D537C 00832021 */   addu      $a0, $a0, $v1
/* F3470 800D5380 8E230008 */  lw         $v1, 0x8($s1)
/* F3474 800D5384 8C6200EC */  lw         $v0, 0xEC($v1)
/* F3478 800D5388 24050001 */  addiu      $a1, $zero, 0x1
/* F347C 800D538C 844400B0 */  lh         $a0, 0xB0($v0)
/* F3480 800D5390 8C4200B4 */  lw         $v0, 0xB4($v0)
/* F3484 800D5394 0040F809 */  jalr       $v0
/* F3488 800D5398 00642021 */   addu      $a0, $v1, $a0
/* F348C 800D539C 8E230008 */  lw         $v1, 0x8($s1)
/* F3490 800D53A0 8C6200EC */  lw         $v0, 0xEC($v1)
/* F3494 800D53A4 00002821 */  addu       $a1, $zero, $zero
/* F3498 800D53A8 84440068 */  lh         $a0, 0x68($v0)
/* F349C 800D53AC 8C42006C */  lw         $v0, 0x6C($v0)
/* F34A0 800D53B0 0040F809 */  jalr       $v0
/* F34A4 800D53B4 00642021 */   addu      $a0, $v1, $a0
/* F34A8 800D53B8 26240010 */  addiu      $a0, $s1, 0x10
/* F34AC 800D53BC AE22000C */  sw         $v0, 0xC($s1)
/* F34B0 800D53C0 8C500018 */  lw         $s0, 0x18($v0)
/* F34B4 800D53C4 8E250004 */  lw         $a1, 0x4($s1)
/* F34B8 800D53C8 02003021 */  addu       $a2, $s0, $zero
/* F34BC 800D53CC 0C0152FA */  jal        func_80054BE8
/* F34C0 800D53D0 AE30002C */   sw        $s0, 0x2C($s1)
/* F34C4 800D53D4 1200000F */  beqz       $s0, .Lmenu_800D5414
/* F34C8 800D53D8 3C028012 */   lui       $v0, %hi(D_menu_80126970)
.Lmenu_800D53DC:
/* F34CC 800D53DC 8E23000C */  lw         $v1, 0xC($s1)
/* F34D0 800D53E0 2610FFFF */  addiu      $s0, $s0, -0x1
/* F34D4 800D53E4 8C620008 */  lw         $v0, 0x8($v1)
/* F34D8 800D53E8 02002821 */  addu       $a1, $s0, $zero
/* F34DC 800D53EC 84440058 */  lh         $a0, 0x58($v0)
/* F34E0 800D53F0 8C42005C */  lw         $v0, 0x5C($v0)
/* F34E4 800D53F4 0040F809 */  jalr       $v0
/* F34E8 800D53F8 00642021 */   addu      $a0, $v1, $a0
/* F34EC 800D53FC 26240010 */  addiu      $a0, $s1, 0x10
/* F34F0 800D5400 02002821 */  addu       $a1, $s0, $zero
/* F34F4 800D5404 0C01543D */  jal        func_800550F4
/* F34F8 800D5408 00403021 */   addu      $a2, $v0, $zero
/* F34FC 800D540C 1600FFF3 */  bnez       $s0, .Lmenu_800D53DC
/* F3500 800D5410 3C028012 */   lui       $v0, %hi(D_menu_80126970)
.Lmenu_800D5414:
/* F3504 800D5414 8C446970 */  lw         $a0, %lo(D_menu_80126970)($v0)
/* F3508 800D5418 0C01FB65 */  jal        func_8007ED94
/* F350C 800D541C 00000000 */   nop
/* F3510 800D5420 8E24002C */  lw         $a0, 0x2C($s1)
/* F3514 800D5424 0C00943C */  jal        func_800250F0
/* F3518 800D5428 00042080 */   sll       $a0, $a0, 2
/* F351C 800D542C 0C01FB72 */  jal        func_8007EDC8
/* F3520 800D5430 AE220028 */   sw        $v0, 0x28($s1)
/* F3524 800D5434 0C0353A9 */  jal        func_menu_800D4EA4
/* F3528 800D5438 02202021 */   addu      $a0, $s1, $zero
/* F352C 800D543C 8FBF0028 */  lw         $ra, 0x28($sp)
/* F3530 800D5440 8FB30024 */  lw         $s3, 0x24($sp)
/* F3534 800D5444 8FB20020 */  lw         $s2, 0x20($sp)
/* F3538 800D5448 8FB1001C */  lw         $s1, 0x1C($sp)
/* F353C 800D544C 8FB00018 */  lw         $s0, 0x18($sp)
/* F3540 800D5450 03E00008 */  jr         $ra
/* F3544 800D5454 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800D5458
/* F3548 800D5458 03E00008 */  jr         $ra
/* F354C 800D545C 00000000 */   nop

glabel func_menu_800D5460
/* F3550 800D5460 8C830010 */  lw         $v1, 0x10($a0)
/* F3554 800D5464 14600002 */  bnez       $v1, .Lmenu_800D5470
/* F3558 800D5468 24820010 */   addiu     $v0, $a0, 0x10
/* F355C 800D546C 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800D5470:
/* F3560 800D5470 03E00008 */  jr         $ra
/* F3564 800D5474 00000000 */   nop

glabel func_menu_800D5478
/* F3568 800D5478 8C830010 */  lw         $v1, 0x10($a0)
/* F356C 800D547C 14600002 */  bnez       $v1, .Lmenu_800D5488
/* F3570 800D5480 24820010 */   addiu     $v0, $a0, 0x10
/* F3574 800D5484 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800D5488:
/* F3578 800D5488 03E00008 */  jr         $ra
/* F357C 800D548C 00000000 */   nop

glabel func_menu_800D5490
/* F3580 800D5490 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F3584 800D5494 AFB00010 */  sw         $s0, 0x10($sp)
/* F3588 800D5498 00808021 */  addu       $s0, $a0, $zero
/* F358C 800D549C AFBF0014 */  sw         $ra, 0x14($sp)
/* F3590 800D54A0 8E040028 */  lw         $a0, 0x28($s0)
/* F3594 800D54A4 10800006 */  beqz       $a0, .Lmenu_800D54C0
/* F3598 800D54A8 00002821 */   addu      $a1, $zero, $zero
/* F359C 800D54AC 8E06002C */  lw         $a2, 0x2C($s0)
/* F35A0 800D54B0 0C000697 */  jal        func_80001A5C
/* F35A4 800D54B4 00063080 */   sll       $a2, $a2, 2
/* F35A8 800D54B8 AE000030 */  sw         $zero, 0x30($s0)
/* F35AC 800D54BC AE000034 */  sw         $zero, 0x34($s0)
.Lmenu_800D54C0:
/* F35B0 800D54C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* F35B4 800D54C4 8FB00010 */  lw         $s0, 0x10($sp)
/* F35B8 800D54C8 03E00008 */  jr         $ra
/* F35BC 800D54CC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D54D0
/* F35C0 800D54D0 8C820028 */  lw         $v0, 0x28($a0)
/* F35C4 800D54D4 00052880 */  sll        $a1, $a1, 2
/* F35C8 800D54D8 00A21821 */  addu       $v1, $a1, $v0
/* F35CC 800D54DC 90620000 */  lbu        $v0, 0x0($v1)
/* F35D0 800D54E0 14400012 */  bnez       $v0, .Lmenu_800D552C
/* F35D4 800D54E4 24020001 */   addiu     $v0, $zero, 0x1
/* F35D8 800D54E8 A0620000 */  sb         $v0, 0x0($v1)
/* F35DC 800D54EC 8C820028 */  lw         $v0, 0x28($a0)
/* F35E0 800D54F0 8C830030 */  lw         $v1, 0x30($a0)
/* F35E4 800D54F4 00A21021 */  addu       $v0, $a1, $v0
/* F35E8 800D54F8 A4430002 */  sh         $v1, 0x2($v0)
/* F35EC 800D54FC 8C820018 */  lw         $v0, 0x18($a0)
/* F35F0 800D5500 24630001 */  addiu      $v1, $v1, 0x1
/* F35F4 800D5504 AC830030 */  sw         $v1, 0x30($a0)
/* F35F8 800D5508 00A21021 */  addu       $v0, $a1, $v0
/* F35FC 800D550C 8C420000 */  lw         $v0, 0x0($v0)
/* F3600 800D5510 8C420004 */  lw         $v0, 0x4($v0)
/* F3604 800D5514 30420008 */  andi       $v0, $v0, 0x8
/* F3608 800D5518 10400004 */  beqz       $v0, .Lmenu_800D552C
/* F360C 800D551C 00000000 */   nop
/* F3610 800D5520 8C820034 */  lw         $v0, 0x34($a0)
/* F3614 800D5524 24420001 */  addiu      $v0, $v0, 0x1
/* F3618 800D5528 AC820034 */  sw         $v0, 0x34($a0)
.Lmenu_800D552C:
/* F361C 800D552C 03E00008 */  jr         $ra
/* F3620 800D5530 00000000 */   nop

glabel func_menu_800D5534
/* F3624 800D5534 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F3628 800D5538 AFB3001C */  sw         $s3, 0x1C($sp)
/* F362C 800D553C 00809821 */  addu       $s3, $a0, $zero
/* F3630 800D5540 AFB40020 */  sw         $s4, 0x20($sp)
/* F3634 800D5544 00A0A021 */  addu       $s4, $a1, $zero
/* F3638 800D5548 AFBF0024 */  sw         $ra, 0x24($sp)
/* F363C 800D554C AFB20018 */  sw         $s2, 0x18($sp)
/* F3640 800D5550 AFB10014 */  sw         $s1, 0x14($sp)
/* F3644 800D5554 AFB00010 */  sw         $s0, 0x10($sp)
/* F3648 800D5558 8E71001C */  lw         $s1, 0x1C($s3)
/* F364C 800D555C 00009021 */  addu       $s2, $zero, $zero
/* F3650 800D5560 00118043 */  sra        $s0, $s1, 1
.Lmenu_800D5564:
/* F3654 800D5564 8E620020 */  lw         $v0, 0x20($s3)
/* F3658 800D5568 00102100 */  sll        $a0, $s0, 4
/* F365C 800D556C 02802821 */  addu       $a1, $s4, $zero
/* F3660 800D5570 2406000A */  addiu      $a2, $zero, 0xA
/* F3664 800D5574 0C0006B2 */  jal        func_80001AC8
/* F3668 800D5578 00442021 */   addu      $a0, $v0, $a0
/* F366C 800D557C 5040000B */  beql       $v0, $zero, .Lmenu_800D55AC
/* F3670 800D5580 00101100 */   sll       $v0, $s0, 4
/* F3674 800D5584 16110003 */  bne        $s0, $s1, .Lmenu_800D5594
/* F3678 800D5588 00000000 */   nop
/* F367C 800D558C 0803556E */  j          .Lmenu_800D55B8
/* F3680 800D5590 2402FFFF */   addiu     $v0, $zero, -0x1
.Lmenu_800D5594:
/* F3684 800D5594 04430002 */  bgezl      $v0, .Lmenu_800D55A0
/* F3688 800D5598 02008821 */   addu      $s1, $s0, $zero
/* F368C 800D559C 02009021 */  addu       $s2, $s0, $zero
.Lmenu_800D55A0:
/* F3690 800D55A0 02511021 */  addu       $v0, $s2, $s1
/* F3694 800D55A4 08035559 */  j          .Lmenu_800D5564
/* F3698 800D55A8 00028043 */   sra       $s0, $v0, 1
.Lmenu_800D55AC:
/* F369C 800D55AC 8E630020 */  lw         $v1, 0x20($s3)
/* F36A0 800D55B0 00431021 */  addu       $v0, $v0, $v1
/* F36A4 800D55B4 8C42000C */  lw         $v0, 0xC($v0)
.Lmenu_800D55B8:
/* F36A8 800D55B8 8FBF0024 */  lw         $ra, 0x24($sp)
/* F36AC 800D55BC 8FB40020 */  lw         $s4, 0x20($sp)
/* F36B0 800D55C0 8FB3001C */  lw         $s3, 0x1C($sp)
/* F36B4 800D55C4 8FB20018 */  lw         $s2, 0x18($sp)
/* F36B8 800D55C8 8FB10014 */  lw         $s1, 0x14($sp)
/* F36BC 800D55CC 8FB00010 */  lw         $s0, 0x10($sp)
/* F36C0 800D55D0 03E00008 */  jr         $ra
/* F36C4 800D55D4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D55D8
/* F36C8 800D55D8 8C820024 */  lw         $v0, 0x24($a0)
/* F36CC 800D55DC 00052880 */  sll        $a1, $a1, 2
/* F36D0 800D55E0 00A22821 */  addu       $a1, $a1, $v0
/* F36D4 800D55E4 8CA20000 */  lw         $v0, 0x0($a1)
/* F36D8 800D55E8 03E00008 */  jr         $ra
/* F36DC 800D55EC 00000000 */   nop

glabel func_menu_800D55F0
/* F36E0 800D55F0 8C86001C */  lw         $a2, 0x1C($a0)
/* F36E4 800D55F4 18C0000A */  blez       $a2, .Lmenu_800D5620
/* F36E8 800D55F8 00001821 */   addu      $v1, $zero, $zero
/* F36EC 800D55FC 8C840024 */  lw         $a0, 0x24($a0)
.Lmenu_800D5600:
/* F36F0 800D5600 8C820000 */  lw         $v0, 0x0($a0)
/* F36F4 800D5604 54A20003 */  bnel       $a1, $v0, .Lmenu_800D5614
/* F36F8 800D5608 24630001 */   addiu     $v1, $v1, 0x1
/* F36FC 800D560C 03E00008 */  jr         $ra
/* F3700 800D5610 00601021 */   addu      $v0, $v1, $zero
.Lmenu_800D5614:
/* F3704 800D5614 0066102A */  slt        $v0, $v1, $a2
/* F3708 800D5618 1440FFF9 */  bnez       $v0, .Lmenu_800D5600
/* F370C 800D561C 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800D5620:
/* F3710 800D5620 03E00008 */  jr         $ra
/* F3714 800D5624 00001021 */   addu      $v0, $zero, $zero

glabel func_menu_800D5628
/* F3718 800D5628 3C028012 */  lui        $v0, %hi(D_menu_80126970)
/* F371C 800D562C 03E00008 */  jr         $ra
/* F3720 800D5630 AC446970 */   sw        $a0, %lo(D_menu_80126970)($v0)

glabel func_menu_800D5634
/* F3724 800D5634 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F3728 800D5638 AFBF0010 */  sw         $ra, 0x10($sp)
/* F372C 800D563C 0C002513 */  jal        func_8000944C
/* F3730 800D5640 00000000 */   nop
/* F3734 800D5644 8FBF0010 */  lw         $ra, 0x10($sp)
/* F3738 800D5648 03E00008 */  jr         $ra
/* F373C 800D564C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D5650
/* F3740 800D5650 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F3744 800D5654 AFB00010 */  sw         $s0, 0x10($sp)
/* F3748 800D5658 AFBF0014 */  sw         $ra, 0x14($sp)
/* F374C 800D565C 0C03AD88 */  jal        func_menu_800EB620
/* F3750 800D5660 00808021 */   addu      $s0, $a0, $zero
/* F3754 800D5664 0C0355B4 */  jal        func_menu_800D56D0
/* F3758 800D5668 02002021 */   addu      $a0, $s0, $zero
/* F375C 800D566C 02001021 */  addu       $v0, $s0, $zero
/* F3760 800D5670 8FBF0014 */  lw         $ra, 0x14($sp)
/* F3764 800D5674 8FB00010 */  lw         $s0, 0x10($sp)
/* F3768 800D5678 03E00008 */  jr         $ra
/* F376C 800D567C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D5680
/* F3770 800D5680 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F3774 800D5684 AFB10014 */  sw         $s1, 0x14($sp)
/* F3778 800D5688 00808821 */  addu       $s1, $a0, $zero
/* F377C 800D568C AFB00010 */  sw         $s0, 0x10($sp)
/* F3780 800D5690 AFBF0018 */  sw         $ra, 0x18($sp)
/* F3784 800D5694 0C035602 */  jal        func_menu_800D5808
/* F3788 800D5698 00A08021 */   addu      $s0, $a1, $zero
/* F378C 800D569C 02202021 */  addu       $a0, $s1, $zero
/* F3790 800D56A0 0C03AD97 */  jal        func_menu_800EB65C
/* F3794 800D56A4 24050002 */   addiu     $a1, $zero, 0x2
/* F3798 800D56A8 32100001 */  andi       $s0, $s0, 0x1
/* F379C 800D56AC 12000003 */  beqz       $s0, .Lmenu_800D56BC
/* F37A0 800D56B0 00000000 */   nop
/* F37A4 800D56B4 0C01FB5C */  jal        func_8007ED70
/* F37A8 800D56B8 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800D56BC:
/* F37AC 800D56BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* F37B0 800D56C0 8FB10014 */  lw         $s1, 0x14($sp)
/* F37B4 800D56C4 8FB00010 */  lw         $s0, 0x10($sp)
/* F37B8 800D56C8 03E00008 */  jr         $ra
/* F37BC 800D56CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D56D0
/* F37C0 800D56D0 AC80001C */  sw         $zero, 0x1C($a0)
/* F37C4 800D56D4 AC800018 */  sw         $zero, 0x18($a0)
/* F37C8 800D56D8 AC800020 */  sw         $zero, 0x20($a0)
/* F37CC 800D56DC AC800034 */  sw         $zero, 0x34($a0)
/* F37D0 800D56E0 AC800024 */  sw         $zero, 0x24($a0)
/* F37D4 800D56E4 AC80002C */  sw         $zero, 0x2C($a0)
/* F37D8 800D56E8 AC800030 */  sw         $zero, 0x30($a0)
/* F37DC 800D56EC AC800038 */  sw         $zero, 0x38($a0)
/* F37E0 800D56F0 AC800040 */  sw         $zero, 0x40($a0)
/* F37E4 800D56F4 AC800048 */  sw         $zero, 0x48($a0)
/* F37E8 800D56F8 AC800050 */  sw         $zero, 0x50($a0)
/* F37EC 800D56FC AC80003C */  sw         $zero, 0x3C($a0)
/* F37F0 800D5700 AC800044 */  sw         $zero, 0x44($a0)
/* F37F4 800D5704 AC80004C */  sw         $zero, 0x4C($a0)
/* F37F8 800D5708 03E00008 */  jr         $ra
/* F37FC 800D570C AC800054 */   sw        $zero, 0x54($a0)

glabel func_menu_800D5710
/* F3800 800D5710 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F3804 800D5714 AFB00020 */  sw         $s0, 0x20($sp)
/* F3808 800D5718 00808021 */  addu       $s0, $a0, $zero
/* F380C 800D571C AFB10024 */  sw         $s1, 0x24($sp)
/* F3810 800D5720 00A08821 */  addu       $s1, $a1, $zero
/* F3814 800D5724 AFB20028 */  sw         $s2, 0x28($sp)
/* F3818 800D5728 AFBF002C */  sw         $ra, 0x2C($sp)
/* F381C 800D572C 0C035602 */  jal        func_menu_800D5808
/* F3820 800D5730 00C09021 */   addu      $s2, $a2, $zero
/* F3824 800D5734 8E220004 */  lw         $v0, 0x4($s1)
/* F3828 800D5738 AE02001C */  sw         $v0, 0x1C($s0)
/* F382C 800D573C 8E220008 */  lw         $v0, 0x8($s1)
/* F3830 800D5740 AE020018 */  sw         $v0, 0x18($s0)
/* F3834 800D5744 8E22000C */  lw         $v0, 0xC($s1)
/* F3838 800D5748 AE120058 */  sw         $s2, 0x58($s0)
/* F383C 800D574C AE020034 */  sw         $v0, 0x34($s0)
/* F3840 800D5750 8E220014 */  lw         $v0, 0x14($s1)
/* F3844 800D5754 AE020028 */  sw         $v0, 0x28($s0)
/* F3848 800D5758 8E250010 */  lw         $a1, 0x10($s1)
/* F384C 800D575C 0C035691 */  jal        func_menu_800D5A44
/* F3850 800D5760 02002021 */   addu      $a0, $s0, $zero
/* F3854 800D5764 8E250010 */  lw         $a1, 0x10($s1)
/* F3858 800D5768 0C035635 */  jal        func_menu_800D58D4
/* F385C 800D576C 02002021 */   addu      $a0, $s0, $zero
/* F3860 800D5770 0C0356E9 */  jal        func_menu_800D5BA4
/* F3864 800D5774 02002021 */   addu      $a0, $s0, $zero
/* F3868 800D5778 8E03001C */  lw         $v1, 0x1C($s0)
/* F386C 800D577C 8C620000 */  lw         $v0, 0x0($v1)
/* F3870 800D5780 84440030 */  lh         $a0, 0x30($v0)
/* F3874 800D5784 8C420034 */  lw         $v0, 0x34($v0)
/* F3878 800D5788 0040F809 */  jalr       $v0
/* F387C 800D578C 00642021 */   addu      $a0, $v1, $a0
/* F3880 800D5790 AE020024 */  sw         $v0, 0x24($s0)
/* F3884 800D5794 8C47003C */  lw         $a3, 0x3C($v0)
/* F3888 800D5798 2403012C */  addiu      $v1, $zero, 0x12C
/* F388C 800D579C 84E40048 */  lh         $a0, 0x48($a3)
/* F3890 800D57A0 24060002 */  addiu      $a2, $zero, 0x2
/* F3894 800D57A4 AFA30010 */  sw         $v1, 0x10($sp)
/* F3898 800D57A8 24030064 */  addiu      $v1, $zero, 0x64
/* F389C 800D57AC AFA30014 */  sw         $v1, 0x14($sp)
/* F38A0 800D57B0 24030003 */  addiu      $v1, $zero, 0x3
/* F38A4 800D57B4 AFA30018 */  sw         $v1, 0x18($sp)
/* F38A8 800D57B8 8E050018 */  lw         $a1, 0x18($s0)
/* F38AC 800D57BC 00442021 */  addu       $a0, $v0, $a0
/* F38B0 800D57C0 8CE2004C */  lw         $v0, 0x4C($a3)
/* F38B4 800D57C4 0040F809 */  jalr       $v0
/* F38B8 800D57C8 24070258 */   addiu     $a3, $zero, 0x258
/* F38BC 800D57CC 0C035747 */  jal        func_menu_800D5D1C
/* F38C0 800D57D0 02002021 */   addu      $a0, $s0, $zero
/* F38C4 800D57D4 0C035791 */  jal        func_menu_800D5E44
/* F38C8 800D57D8 02002021 */   addu      $a0, $s0, $zero
/* F38CC 800D57DC 0C0357BB */  jal        func_menu_800D5EEC
/* F38D0 800D57E0 02002021 */   addu      $a0, $s0, $zero
/* F38D4 800D57E4 0C0357E3 */  jal        func_menu_800D5F8C
/* F38D8 800D57E8 02002021 */   addu      $a0, $s0, $zero
/* F38DC 800D57EC 8E020020 */  lw         $v0, 0x20($s0)
/* F38E0 800D57F0 8FBF002C */  lw         $ra, 0x2C($sp)
/* F38E4 800D57F4 8FB20028 */  lw         $s2, 0x28($sp)
/* F38E8 800D57F8 8FB10024 */  lw         $s1, 0x24($sp)
/* F38EC 800D57FC 8FB00020 */  lw         $s0, 0x20($sp)
/* F38F0 800D5800 03E00008 */  jr         $ra
/* F38F4 800D5804 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800D5808
/* F38F8 800D5808 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F38FC 800D580C AFB00010 */  sw         $s0, 0x10($sp)
/* F3900 800D5810 00808021 */  addu       $s0, $a0, $zero
/* F3904 800D5814 AFBF0014 */  sw         $ra, 0x14($sp)
/* F3908 800D5818 8E020020 */  lw         $v0, 0x20($s0)
/* F390C 800D581C 10400029 */  beqz       $v0, .Lmenu_800D58C4
/* F3910 800D5820 24020001 */   addiu     $v0, $zero, 0x1
/* F3914 800D5824 8E050024 */  lw         $a1, 0x24($s0)
/* F3918 800D5828 10A00007 */  beqz       $a1, .Lmenu_800D5848
/* F391C 800D582C 00000000 */   nop
/* F3920 800D5830 8E03001C */  lw         $v1, 0x1C($s0)
/* F3924 800D5834 8C620000 */  lw         $v0, 0x0($v1)
/* F3928 800D5838 84440098 */  lh         $a0, 0x98($v0)
/* F392C 800D583C 8C42009C */  lw         $v0, 0x9C($v0)
/* F3930 800D5840 0040F809 */  jalr       $v0
/* F3934 800D5844 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800D5848:
/* F3938 800D5848 8E05002C */  lw         $a1, 0x2C($s0)
/* F393C 800D584C 10A00007 */  beqz       $a1, .Lmenu_800D586C
/* F3940 800D5850 00000000 */   nop
/* F3944 800D5854 8E03001C */  lw         $v1, 0x1C($s0)
/* F3948 800D5858 8C620000 */  lw         $v0, 0x0($v1)
/* F394C 800D585C 84440090 */  lh         $a0, 0x90($v0)
/* F3950 800D5860 8C420094 */  lw         $v0, 0x94($v0)
/* F3954 800D5864 0040F809 */  jalr       $v0
/* F3958 800D5868 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800D586C:
/* F395C 800D586C 8E050030 */  lw         $a1, 0x30($s0)
/* F3960 800D5870 10A00007 */  beqz       $a1, .Lmenu_800D5890
/* F3964 800D5874 00000000 */   nop
/* F3968 800D5878 8E03001C */  lw         $v1, 0x1C($s0)
/* F396C 800D587C 8C620000 */  lw         $v0, 0x0($v1)
/* F3970 800D5880 84440088 */  lh         $a0, 0x88($v0)
/* F3974 800D5884 8C42008C */  lw         $v0, 0x8C($v0)
/* F3978 800D5888 0040F809 */  jalr       $v0
/* F397C 800D588C 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800D5890:
/* F3980 800D5890 8E050020 */  lw         $a1, 0x20($s0)
/* F3984 800D5894 10A00007 */  beqz       $a1, .Lmenu_800D58B4
/* F3988 800D5898 00000000 */   nop
/* F398C 800D589C 8E03001C */  lw         $v1, 0x1C($s0)
/* F3990 800D58A0 8C620000 */  lw         $v0, 0x0($v1)
/* F3994 800D58A4 84440080 */  lh         $a0, 0x80($v0)
/* F3998 800D58A8 8C420084 */  lw         $v0, 0x84($v0)
/* F399C 800D58AC 0040F809 */  jalr       $v0
/* F39A0 800D58B0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800D58B4:
/* F39A4 800D58B4 0C0355B4 */  jal        func_menu_800D56D0
/* F39A8 800D58B8 02002021 */   addu      $a0, $s0, $zero
/* F39AC 800D58BC 8E020020 */  lw         $v0, 0x20($s0)
/* F39B0 800D58C0 2C420001 */  sltiu      $v0, $v0, 0x1
.Lmenu_800D58C4:
/* F39B4 800D58C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* F39B8 800D58C8 8FB00010 */  lw         $s0, 0x10($sp)
/* F39BC 800D58CC 03E00008 */  jr         $ra
/* F39C0 800D58D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D58D4
/* F39C4 800D58D4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F39C8 800D58D8 AFB1002C */  sw         $s1, 0x2C($sp)
/* F39CC 800D58DC 00808821 */  addu       $s1, $a0, $zero
/* F39D0 800D58E0 AFB20030 */  sw         $s2, 0x30($sp)
/* F39D4 800D58E4 00A09021 */  addu       $s2, $a1, $zero
/* F39D8 800D58E8 AFBF0034 */  sw         $ra, 0x34($sp)
/* F39DC 800D58EC AFB00028 */  sw         $s0, 0x28($sp)
/* F39E0 800D58F0 8E220058 */  lw         $v0, 0x58($s1)
/* F39E4 800D58F4 27A40018 */  addiu      $a0, $sp, 0x18
/* F39E8 800D58F8 24420001 */  addiu      $v0, $v0, 0x1
/* F39EC 800D58FC 00022840 */  sll        $a1, $v0, 1
/* F39F0 800D5900 00A22821 */  addu       $a1, $a1, $v0
/* F39F4 800D5904 00052880 */  sll        $a1, $a1, 2
/* F39F8 800D5908 00A22821 */  addu       $a1, $a1, $v0
/* F39FC 800D590C 8E220034 */  lw         $v0, 0x34($s1)
/* F3A00 800D5910 24A506DA */  addiu      $a1, $a1, 0x6DA
/* F3A04 800D5914 0C0006FA */  jal        func_80001BE8
/* F3A08 800D5918 00452821 */   addu      $a1, $v0, $a1
/* F3A0C 800D591C 8E220058 */  lw         $v0, 0x58($s1)
/* F3A10 800D5920 8E230034 */  lw         $v1, 0x34($s1)
/* F3A14 800D5924 00021140 */  sll        $v0, $v0, 5
/* F3A18 800D5928 24420701 */  addiu      $v0, $v0, 0x701
/* F3A1C 800D592C 00622821 */  addu       $a1, $v1, $v0
/* F3A20 800D5930 10A00007 */  beqz       $a1, .Lmenu_800D5950
/* F3A24 800D5934 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* F3A28 800D5938 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* F3A2C 800D593C 02002021 */  addu       $a0, $s0, $zero
/* F3A30 800D5940 0C000708 */  jal        func_80001C20
/* F3A34 800D5944 24060100 */   addiu     $a2, $zero, 0x100
/* F3A38 800D5948 08035656 */  j          .Lmenu_800D5958
/* F3A3C 800D594C A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800D5950:
/* F3A40 800D5950 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* F3A44 800D5954 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800D5958:
/* F3A48 800D5958 8E23001C */  lw         $v1, 0x1C($s1)
/* F3A4C 800D595C 8C620000 */  lw         $v0, 0x0($v1)
/* F3A50 800D5960 84440018 */  lh         $a0, 0x18($v0)
/* F3A54 800D5964 8C42001C */  lw         $v0, 0x1C($v0)
/* F3A58 800D5968 0040F809 */  jalr       $v0
/* F3A5C 800D596C 00642021 */   addu      $a0, $v1, $a0
/* F3A60 800D5970 14400007 */  bnez       $v0, .Lmenu_800D5990
/* F3A64 800D5974 AE220020 */   sw        $v0, 0x20($s1)
/* F3A68 800D5978 3C04800D */  lui        $a0, %hi(D_menu_800CA8B0)
/* F3A6C 800D597C 2484A8B0 */  addiu      $a0, $a0, %lo(D_menu_800CA8B0)
/* F3A70 800D5980 00002821 */  addu       $a1, $zero, $zero
/* F3A74 800D5984 00A03021 */  addu       $a2, $a1, $zero
/* F3A78 800D5988 0C011ACF */  jal        func_80046B3C
/* F3A7C 800D598C 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800D5990:
/* F3A80 800D5990 8E240020 */  lw         $a0, 0x20($s1)
/* F3A84 800D5994 27A60018 */  addiu      $a2, $sp, 0x18
/* F3A88 800D5998 8C8200EC */  lw         $v0, 0xEC($a0)
/* F3A8C 800D599C 3C01800D */  lui        $at, %hi(D_menu_800CA8C4)
/* F3A90 800D59A0 C420A8C4 */  lwc1       $f0, %lo(D_menu_800CA8C4)($at)
/* F3A94 800D59A4 84430030 */  lh         $v1, 0x30($v0)
/* F3A98 800D59A8 02403821 */  addu       $a3, $s2, $zero
/* F3A9C 800D59AC E7A00010 */  swc1       $f0, 0x10($sp)
/* F3AA0 800D59B0 8E250018 */  lw         $a1, 0x18($s1)
/* F3AA4 800D59B4 8C420034 */  lw         $v0, 0x34($v0)
/* F3AA8 800D59B8 0040F809 */  jalr       $v0
/* F3AAC 800D59BC 00832021 */   addu      $a0, $a0, $v1
/* F3AB0 800D59C0 0C006DFE */  jal        strlen
/* F3AB4 800D59C4 27A40018 */   addiu     $a0, $sp, 0x18
/* F3AB8 800D59C8 27B00018 */  addiu      $s0, $sp, 0x18
/* F3ABC 800D59CC 02002021 */  addu       $a0, $s0, $zero
/* F3AC0 800D59D0 00501021 */  addu       $v0, $v0, $s0
/* F3AC4 800D59D4 24030067 */  addiu      $v1, $zero, 0x67
/* F3AC8 800D59D8 0C006DFE */  jal        strlen
/* F3ACC 800D59DC A043FFFD */   sb        $v1, -0x3($v0)
/* F3AD0 800D59E0 02202021 */  addu       $a0, $s1, $zero
/* F3AD4 800D59E4 02002821 */  addu       $a1, $s0, $zero
/* F3AD8 800D59E8 02403021 */  addu       $a2, $s2, $zero
/* F3ADC 800D59EC 00451021 */  addu       $v0, $v0, $a1
/* F3AE0 800D59F0 24030063 */  addiu      $v1, $zero, 0x63
/* F3AE4 800D59F4 0C03ADAD */  jal        func_menu_800EB6B4
/* F3AE8 800D59F8 A043FFFE */   sb        $v1, -0x2($v0)
/* F3AEC 800D59FC 3C02800D */  lui        $v0, %hi(D_menu_800CA8B4)
/* F3AF0 800D5A00 2445A8B4 */  addiu      $a1, $v0, %lo(D_menu_800CA8B4)
/* F3AF4 800D5A04 10A00007 */  beqz       $a1, .Lmenu_800D5A24
/* F3AF8 800D5A08 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* F3AFC 800D5A0C 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* F3B00 800D5A10 02002021 */  addu       $a0, $s0, $zero
/* F3B04 800D5A14 0C000708 */  jal        func_80001C20
/* F3B08 800D5A18 24060100 */   addiu     $a2, $zero, 0x100
/* F3B0C 800D5A1C 0803568B */  j          .Lmenu_800D5A2C
/* F3B10 800D5A20 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800D5A24:
/* F3B14 800D5A24 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* F3B18 800D5A28 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800D5A2C:
/* F3B1C 800D5A2C 8FBF0034 */  lw         $ra, 0x34($sp)
/* F3B20 800D5A30 8FB20030 */  lw         $s2, 0x30($sp)
/* F3B24 800D5A34 8FB1002C */  lw         $s1, 0x2C($sp)
/* F3B28 800D5A38 8FB00028 */  lw         $s0, 0x28($sp)
/* F3B2C 800D5A3C 03E00008 */  jr         $ra
/* F3B30 800D5A40 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800D5A44
/* F3B34 800D5A44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F3B38 800D5A48 AFB00010 */  sw         $s0, 0x10($sp)
/* F3B3C 800D5A4C 00808021 */  addu       $s0, $a0, $zero
/* F3B40 800D5A50 AFBF0018 */  sw         $ra, 0x18($sp)
/* F3B44 800D5A54 AFB10014 */  sw         $s1, 0x14($sp)
/* F3B48 800D5A58 8E03001C */  lw         $v1, 0x1C($s0)
/* F3B4C 800D5A5C 8C620000 */  lw         $v0, 0x0($v1)
/* F3B50 800D5A60 00A08821 */  addu       $s1, $a1, $zero
/* F3B54 800D5A64 84440020 */  lh         $a0, 0x20($v0)
/* F3B58 800D5A68 8C420024 */  lw         $v0, 0x24($v0)
/* F3B5C 800D5A6C 0040F809 */  jalr       $v0
/* F3B60 800D5A70 00642021 */   addu      $a0, $v1, $a0
/* F3B64 800D5A74 8E03001C */  lw         $v1, 0x1C($s0)
/* F3B68 800D5A78 AE020030 */  sw         $v0, 0x30($s0)
/* F3B6C 800D5A7C 8C620000 */  lw         $v0, 0x0($v1)
/* F3B70 800D5A80 84440028 */  lh         $a0, 0x28($v0)
/* F3B74 800D5A84 8C42002C */  lw         $v0, 0x2C($v0)
/* F3B78 800D5A88 0040F809 */  jalr       $v0
/* F3B7C 800D5A8C 00642021 */   addu      $a0, $v1, $a0
/* F3B80 800D5A90 8E030030 */  lw         $v1, 0x30($s0)
/* F3B84 800D5A94 14600007 */  bnez       $v1, .Lmenu_800D5AB4
/* F3B88 800D5A98 AE02002C */   sw        $v0, 0x2C($s0)
/* F3B8C 800D5A9C 3C04800D */  lui        $a0, %hi(D_menu_800CA8B0)
/* F3B90 800D5AA0 2484A8B0 */  addiu      $a0, $a0, %lo(D_menu_800CA8B0)
/* F3B94 800D5AA4 00002821 */  addu       $a1, $zero, $zero
/* F3B98 800D5AA8 00A03021 */  addu       $a2, $a1, $zero
/* F3B9C 800D5AAC 0C011ACF */  jal        func_80046B3C
/* F3BA0 800D5AB0 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800D5AB4:
/* F3BA4 800D5AB4 8E040028 */  lw         $a0, 0x28($s0)
/* F3BA8 800D5AB8 0C017CA7 */  jal        func_8005F29C
/* F3BAC 800D5ABC 00000000 */   nop
/* F3BB0 800D5AC0 3C06800D */  lui        $a2, %hi(D_menu_800CA8C8)
/* F3BB4 800D5AC4 24C6A8C8 */  addiu      $a2, $a2, %lo(D_menu_800CA8C8)
/* F3BB8 800D5AC8 8E030030 */  lw         $v1, 0x30($s0)
/* F3BBC 800D5ACC 02203821 */  addu       $a3, $s1, $zero
/* F3BC0 800D5AD0 8C620008 */  lw         $v0, 0x8($v1)
/* F3BC4 800D5AD4 8E050018 */  lw         $a1, 0x18($s0)
/* F3BC8 800D5AD8 84440040 */  lh         $a0, 0x40($v0)
/* F3BCC 800D5ADC 8C420044 */  lw         $v0, 0x44($v0)
/* F3BD0 800D5AE0 0040F809 */  jalr       $v0
/* F3BD4 800D5AE4 00642021 */   addu      $a0, $v1, $a0
/* F3BD8 800D5AE8 0C017CA7 */  jal        func_8005F29C
/* F3BDC 800D5AEC 24040001 */   addiu     $a0, $zero, 0x1
/* F3BE0 800D5AF0 3C06800D */  lui        $a2, %hi(D_menu_800CA8D8)
/* F3BE4 800D5AF4 24C6A8D8 */  addiu      $a2, $a2, %lo(D_menu_800CA8D8)
/* F3BE8 800D5AF8 8E03002C */  lw         $v1, 0x2C($s0)
/* F3BEC 800D5AFC 02203821 */  addu       $a3, $s1, $zero
/* F3BF0 800D5B00 8C620008 */  lw         $v0, 0x8($v1)
/* F3BF4 800D5B04 8E050018 */  lw         $a1, 0x18($s0)
/* F3BF8 800D5B08 84440040 */  lh         $a0, 0x40($v0)
/* F3BFC 800D5B0C 8C420044 */  lw         $v0, 0x44($v0)
/* F3C00 800D5B10 0040F809 */  jalr       $v0
/* F3C04 800D5B14 00642021 */   addu      $a0, $v1, $a0
/* F3C08 800D5B18 8FBF0018 */  lw         $ra, 0x18($sp)
/* F3C0C 800D5B1C 8FB10014 */  lw         $s1, 0x14($sp)
/* F3C10 800D5B20 8FB00010 */  lw         $s0, 0x10($sp)
/* F3C14 800D5B24 03E00008 */  jr         $ra
/* F3C18 800D5B28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D5B2C
/* F3C1C 800D5B2C 00002021 */  addu       $a0, $zero, $zero
/* F3C20 800D5B30 3C084000 */  lui        $t0, (0x40000000 >> 16)
/* F3C24 800D5B34 3C0200FF */  lui        $v0, (0xFFFFFF >> 16)
/* F3C28 800D5B38 3442FFFF */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* F3C2C 800D5B3C 00C23024 */  and        $a2, $a2, $v0
/* F3C30 800D5B40 00C84025 */  or         $t0, $a2, $t0
/* F3C34 800D5B44 8CA20078 */  lw         $v0, 0x78($a1)
/* F3C38 800D5B48 2403FFFC */  addiu      $v1, $zero, -0x4
/* F3C3C 800D5B4C 8C45001C */  lw         $a1, 0x1C($v0)
/* F3C40 800D5B50 8C460020 */  lw         $a2, 0x20($v0)
/* F3C44 800D5B54 24630004 */  addiu      $v1, $v1, 0x4
.Lmenu_800D5B58:
/* F3C48 800D5B58 00661021 */  addu       $v0, $v1, $a2
/* F3C4C 800D5B5C 8C420000 */  lw         $v0, 0x0($v0)
/* F3C50 800D5B60 10480004 */  beq        $v0, $t0, .Lmenu_800D5B74
/* F3C54 800D5B64 24840001 */   addiu     $a0, $a0, 0x1
/* F3C58 800D5B68 0085102A */  slt        $v0, $a0, $a1
/* F3C5C 800D5B6C 5440FFFA */  bnel       $v0, $zero, .Lmenu_800D5B58
/* F3C60 800D5B70 24630004 */   addiu     $v1, $v1, 0x4
.Lmenu_800D5B74:
/* F3C64 800D5B74 10850009 */  beq        $a0, $a1, .Lmenu_800D5B9C
/* F3C68 800D5B78 3C084000 */   lui       $t0, (0x40000000 >> 16)
/* F3C6C 800D5B7C 3C0200FF */  lui        $v0, (0xFFFFFF >> 16)
/* F3C70 800D5B80 3442FFFF */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* F3C74 800D5B84 00E21024 */  and        $v0, $a3, $v0
/* F3C78 800D5B88 00484025 */  or         $t0, $v0, $t0
/* F3C7C 800D5B8C 2482FFFF */  addiu      $v0, $a0, -0x1
/* F3C80 800D5B90 00021080 */  sll        $v0, $v0, 2
/* F3C84 800D5B94 00461021 */  addu       $v0, $v0, $a2
/* F3C88 800D5B98 AC480000 */  sw         $t0, 0x0($v0)
.Lmenu_800D5B9C:
/* F3C8C 800D5B9C 03E00008 */  jr         $ra
/* F3C90 800D5BA0 00000000 */   nop

glabel func_menu_800D5BA4
/* F3C94 800D5BA4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* F3C98 800D5BA8 AFB40030 */  sw         $s4, 0x30($sp)
/* F3C9C 800D5BAC 0080A021 */  addu       $s4, $a0, $zero
/* F3CA0 800D5BB0 AFB7003C */  sw         $s7, 0x3C($sp)
/* F3CA4 800D5BB4 0000B821 */  addu       $s7, $zero, $zero
/* F3CA8 800D5BB8 AFBF0044 */  sw         $ra, 0x44($sp)
/* F3CAC 800D5BBC AFBE0040 */  sw         $fp, 0x40($sp)
/* F3CB0 800D5BC0 AFB60038 */  sw         $s6, 0x38($sp)
/* F3CB4 800D5BC4 AFB50034 */  sw         $s5, 0x34($sp)
/* F3CB8 800D5BC8 AFB3002C */  sw         $s3, 0x2C($sp)
/* F3CBC 800D5BCC AFB20028 */  sw         $s2, 0x28($sp)
/* F3CC0 800D5BD0 AFB10024 */  sw         $s1, 0x24($sp)
/* F3CC4 800D5BD4 AFB00020 */  sw         $s0, 0x20($sp)
/* F3CC8 800D5BD8 8E820020 */  lw         $v0, 0x20($s4)
/* F3CCC 800D5BDC 3C1E800D */  lui        $fp, %hi(D_menu_800CA8E8)
/* F3CD0 800D5BE0 8C420050 */  lw         $v0, 0x50($v0)
/* F3CD4 800D5BE4 02E0A821 */  addu       $s5, $s7, $zero
/* F3CD8 800D5BE8 AFA20018 */  sw         $v0, 0x18($sp)
.Lmenu_800D5BEC:
/* F3CDC 800D5BEC 8FA80018 */  lw         $t0, 0x18($sp)
/* F3CE0 800D5BF0 02E8102A */  slt        $v0, $s7, $t0
/* F3CE4 800D5BF4 1040003D */  beqz       $v0, .Lmenu_800D5CEC
/* F3CE8 800D5BF8 00000000 */   nop
/* F3CEC 800D5BFC 8E820020 */  lw         $v0, 0x20($s4)
/* F3CF0 800D5C00 8C42009C */  lw         $v0, 0x9C($v0)
/* F3CF4 800D5C04 00559821 */  addu       $s3, $v0, $s5
/* F3CF8 800D5C08 8E64006C */  lw         $a0, 0x6C($s3)
/* F3CFC 800D5C0C 14800002 */  bnez       $a0, .Lmenu_800D5C18
/* F3D00 800D5C10 00809021 */   addu      $s2, $a0, $zero
/* F3D04 800D5C14 8E720078 */  lw         $s2, 0x78($s3)
.Lmenu_800D5C18:
/* F3D08 800D5C18 8E560004 */  lw         $s6, 0x4($s2)
/* F3D0C 800D5C1C 24110001 */  addiu      $s1, $zero, 0x1
.Lmenu_800D5C20:
/* F3D10 800D5C20 0236102A */  slt        $v0, $s1, $s6
/* F3D14 800D5C24 1040002E */  beqz       $v0, .Lmenu_800D5CE0
/* F3D18 800D5C28 00111080 */   sll       $v0, $s1, 2
/* F3D1C 800D5C2C 8E430008 */  lw         $v1, 0x8($s2)
/* F3D20 800D5C30 00431021 */  addu       $v0, $v0, $v1
/* F3D24 800D5C34 8C500000 */  lw         $s0, 0x0($v0)
/* F3D28 800D5C38 8A090014 */  lwl        $t1, 0x14($s0)
/* F3D2C 800D5C3C 9A090017 */  lwr        $t1, 0x17($s0)
/* F3D30 800D5C40 8A0A0018 */  lwl        $t2, 0x18($s0)
/* F3D34 800D5C44 9A0A001B */  lwr        $t2, 0x1B($s0)
/* F3D38 800D5C48 ABA90010 */  swl        $t1, 0x10($sp)
/* F3D3C 800D5C4C BBA90013 */  swr        $t1, 0x13($sp)
/* F3D40 800D5C50 ABAA0014 */  swl        $t2, 0x14($sp)
/* F3D44 800D5C54 BBAA0017 */  swr        $t2, 0x17($sp)
/* F3D48 800D5C58 1200001F */  beqz       $s0, .Lmenu_800D5CD8
/* F3D4C 800D5C5C 27A40010 */   addiu     $a0, $sp, 0x10
/* F3D50 800D5C60 27C5A8E8 */  addiu      $a1, $fp, %lo(D_menu_800CA8E8)
/* F3D54 800D5C64 0C0006B2 */  jal        func_80001AC8
/* F3D58 800D5C68 24060008 */   addiu     $a2, $zero, 0x8
/* F3D5C 800D5C6C 5440FFEC */  bnel       $v0, $zero, .Lmenu_800D5C20
/* F3D60 800D5C70 26310001 */   addiu     $s1, $s1, 0x1
/* F3D64 800D5C74 02402021 */  addu       $a0, $s2, $zero
/* F3D68 800D5C78 8E420008 */  lw         $v0, 0x8($s2)
/* F3D6C 800D5C7C 02003021 */  addu       $a2, $s0, $zero
/* F3D70 800D5C80 8C500000 */  lw         $s0, 0x0($v0)
/* F3D74 800D5C84 0C01543D */  jal        func_800550F4
/* F3D78 800D5C88 00002821 */   addu      $a1, $zero, $zero
/* F3D7C 800D5C8C 02402021 */  addu       $a0, $s2, $zero
/* F3D80 800D5C90 02202821 */  addu       $a1, $s1, $zero
/* F3D84 800D5C94 0C01543D */  jal        func_800550F4
/* F3D88 800D5C98 02003021 */   addu      $a2, $s0, $zero
/* F3D8C 800D5C9C 02802021 */  addu       $a0, $s4, $zero
/* F3D90 800D5CA0 02602821 */  addu       $a1, $s3, $zero
/* F3D94 800D5CA4 02203021 */  addu       $a2, $s1, $zero
/* F3D98 800D5CA8 0C0356CB */  jal        func_menu_800D5B2C
/* F3D9C 800D5CAC 3407FFFF */   ori       $a3, $zero, 0xFFFF
/* F3DA0 800D5CB0 02802021 */  addu       $a0, $s4, $zero
/* F3DA4 800D5CB4 02602821 */  addu       $a1, $s3, $zero
/* F3DA8 800D5CB8 00003021 */  addu       $a2, $zero, $zero
/* F3DAC 800D5CBC 0C0356CB */  jal        func_menu_800D5B2C
/* F3DB0 800D5CC0 02203821 */   addu      $a3, $s1, $zero
/* F3DB4 800D5CC4 02802021 */  addu       $a0, $s4, $zero
/* F3DB8 800D5CC8 02602821 */  addu       $a1, $s3, $zero
/* F3DBC 800D5CCC 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* F3DC0 800D5CD0 0C0356CB */  jal        func_menu_800D5B2C
/* F3DC4 800D5CD4 00003821 */   addu      $a3, $zero, $zero
.Lmenu_800D5CD8:
/* F3DC8 800D5CD8 08035708 */  j          .Lmenu_800D5C20
/* F3DCC 800D5CDC 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800D5CE0:
/* F3DD0 800D5CE0 26B500F4 */  addiu      $s5, $s5, 0xF4
/* F3DD4 800D5CE4 080356FB */  j          .Lmenu_800D5BEC
/* F3DD8 800D5CE8 26F70001 */   addiu     $s7, $s7, 0x1
.Lmenu_800D5CEC:
/* F3DDC 800D5CEC 8FBF0044 */  lw         $ra, 0x44($sp)
/* F3DE0 800D5CF0 8FBE0040 */  lw         $fp, 0x40($sp)
/* F3DE4 800D5CF4 8FB7003C */  lw         $s7, 0x3C($sp)
/* F3DE8 800D5CF8 8FB60038 */  lw         $s6, 0x38($sp)
/* F3DEC 800D5CFC 8FB50034 */  lw         $s5, 0x34($sp)
/* F3DF0 800D5D00 8FB40030 */  lw         $s4, 0x30($sp)
/* F3DF4 800D5D04 8FB3002C */  lw         $s3, 0x2C($sp)
/* F3DF8 800D5D08 8FB20028 */  lw         $s2, 0x28($sp)
/* F3DFC 800D5D0C 8FB10024 */  lw         $s1, 0x24($sp)
/* F3E00 800D5D10 8FB00020 */  lw         $s0, 0x20($sp)
/* F3E04 800D5D14 03E00008 */  jr         $ra
/* F3E08 800D5D18 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800D5D1C
/* F3E0C 800D5D1C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F3E10 800D5D20 AFB20020 */  sw         $s2, 0x20($sp)
/* F3E14 800D5D24 00809021 */  addu       $s2, $a0, $zero
/* F3E18 800D5D28 AFB1001C */  sw         $s1, 0x1C($sp)
/* F3E1C 800D5D2C 00008821 */  addu       $s1, $zero, $zero
/* F3E20 800D5D30 AFBF0024 */  sw         $ra, 0x24($sp)
/* F3E24 800D5D34 AFB00018 */  sw         $s0, 0x18($sp)
.Lmenu_800D5D38:
/* F3E28 800D5D38 8E420020 */  lw         $v0, 0x20($s2)
/* F3E2C 800D5D3C 8C420050 */  lw         $v0, 0x50($v0)
/* F3E30 800D5D40 0222102A */  slt        $v0, $s1, $v0
/* F3E34 800D5D44 1040001A */  beqz       $v0, .Lmenu_800D5DB0
/* F3E38 800D5D48 02402021 */   addu      $a0, $s2, $zero
/* F3E3C 800D5D4C 0C03581C */  jal        func_menu_800D6070
/* F3E40 800D5D50 02202821 */   addu      $a1, $s1, $zero
/* F3E44 800D5D54 00408021 */  addu       $s0, $v0, $zero
/* F3E48 800D5D58 8E02003C */  lw         $v0, 0x3C($s0)
/* F3E4C 800D5D5C 27A50010 */  addiu      $a1, $sp, 0x10
/* F3E50 800D5D60 84440058 */  lh         $a0, 0x58($v0)
/* F3E54 800D5D64 8C42005C */  lw         $v0, 0x5C($v0)
/* F3E58 800D5D68 0040F809 */  jalr       $v0
/* F3E5C 800D5D6C 02042021 */   addu      $a0, $s0, $a0
/* F3E60 800D5D70 8FA20010 */  lw         $v0, 0x10($sp)
/* F3E64 800D5D74 94430000 */  lhu        $v1, 0x0($v0)
/* F3E68 800D5D78 8E420040 */  lw         $v0, 0x40($s2)
/* F3E6C 800D5D7C 0043102A */  slt        $v0, $v0, $v1
/* F3E70 800D5D80 54400001 */  bnel       $v0, $zero, .Lmenu_800D5D88
/* F3E74 800D5D84 AE430040 */   sw        $v1, 0x40($s2)
.Lmenu_800D5D88:
/* F3E78 800D5D88 00002821 */  addu       $a1, $zero, $zero
/* F3E7C 800D5D8C 00A03021 */  addu       $a2, $a1, $zero
/* F3E80 800D5D90 8E02003C */  lw         $v0, 0x3C($s0)
/* F3E84 800D5D94 26310001 */  addiu      $s1, $s1, 0x1
/* F3E88 800D5D98 84440060 */  lh         $a0, 0x60($v0)
/* F3E8C 800D5D9C 8C420064 */  lw         $v0, 0x64($v0)
/* F3E90 800D5DA0 0040F809 */  jalr       $v0
/* F3E94 800D5DA4 02042021 */   addu      $a0, $s0, $a0
/* F3E98 800D5DA8 0803574E */  j          .Lmenu_800D5D38
/* F3E9C 800D5DAC 00000000 */   nop
.Lmenu_800D5DB0:
/* F3EA0 800D5DB0 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800D5DB4:
/* F3EA4 800D5DB4 8E420034 */  lw         $v0, 0x34($s2)
/* F3EA8 800D5DB8 8C420004 */  lw         $v0, 0x4($v0)
/* F3EAC 800D5DBC 0222102A */  slt        $v0, $s1, $v0
/* F3EB0 800D5DC0 1040001A */  beqz       $v0, .Lmenu_800D5E2C
/* F3EB4 800D5DC4 02402021 */   addu      $a0, $s2, $zero
/* F3EB8 800D5DC8 0C03580B */  jal        func_menu_800D602C
/* F3EBC 800D5DCC 02202821 */   addu      $a1, $s1, $zero
/* F3EC0 800D5DD0 00408021 */  addu       $s0, $v0, $zero
/* F3EC4 800D5DD4 8E02003C */  lw         $v0, 0x3C($s0)
/* F3EC8 800D5DD8 27A50010 */  addiu      $a1, $sp, 0x10
/* F3ECC 800D5DDC 84440058 */  lh         $a0, 0x58($v0)
/* F3ED0 800D5DE0 8C42005C */  lw         $v0, 0x5C($v0)
/* F3ED4 800D5DE4 0040F809 */  jalr       $v0
/* F3ED8 800D5DE8 02042021 */   addu      $a0, $s0, $a0
/* F3EDC 800D5DEC 8FA20010 */  lw         $v0, 0x10($sp)
/* F3EE0 800D5DF0 94430000 */  lhu        $v1, 0x0($v0)
/* F3EE4 800D5DF4 8E420044 */  lw         $v0, 0x44($s2)
/* F3EE8 800D5DF8 0043102A */  slt        $v0, $v0, $v1
/* F3EEC 800D5DFC 54400001 */  bnel       $v0, $zero, .Lmenu_800D5E04
/* F3EF0 800D5E00 AE430044 */   sw        $v1, 0x44($s2)
.Lmenu_800D5E04:
/* F3EF4 800D5E04 00002821 */  addu       $a1, $zero, $zero
/* F3EF8 800D5E08 00A03021 */  addu       $a2, $a1, $zero
/* F3EFC 800D5E0C 8E02003C */  lw         $v0, 0x3C($s0)
/* F3F00 800D5E10 26310001 */  addiu      $s1, $s1, 0x1
/* F3F04 800D5E14 84440060 */  lh         $a0, 0x60($v0)
/* F3F08 800D5E18 8C420064 */  lw         $v0, 0x64($v0)
/* F3F0C 800D5E1C 0040F809 */  jalr       $v0
/* F3F10 800D5E20 02042021 */   addu      $a0, $s0, $a0
/* F3F14 800D5E24 0803576D */  j          .Lmenu_800D5DB4
/* F3F18 800D5E28 00000000 */   nop
.Lmenu_800D5E2C:
/* F3F1C 800D5E2C 8FBF0024 */  lw         $ra, 0x24($sp)
/* F3F20 800D5E30 8FB20020 */  lw         $s2, 0x20($sp)
/* F3F24 800D5E34 8FB1001C */  lw         $s1, 0x1C($sp)
/* F3F28 800D5E38 8FB00018 */  lw         $s0, 0x18($sp)
/* F3F2C 800D5E3C 03E00008 */  jr         $ra
/* F3F30 800D5E40 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D5E44
/* F3F34 800D5E44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F3F38 800D5E48 AFB10014 */  sw         $s1, 0x14($sp)
/* F3F3C 800D5E4C 00808821 */  addu       $s1, $a0, $zero
/* F3F40 800D5E50 AFB00010 */  sw         $s0, 0x10($sp)
/* F3F44 800D5E54 00008021 */  addu       $s0, $zero, $zero
/* F3F48 800D5E58 AFBF0018 */  sw         $ra, 0x18($sp)
.Lmenu_800D5E5C:
/* F3F4C 800D5E5C 8E220020 */  lw         $v0, 0x20($s1)
/* F3F50 800D5E60 8C420050 */  lw         $v0, 0x50($v0)
/* F3F54 800D5E64 0202102A */  slt        $v0, $s0, $v0
/* F3F58 800D5E68 1040000B */  beqz       $v0, .Lmenu_800D5E98
/* F3F5C 800D5E6C 02202021 */   addu      $a0, $s1, $zero
/* F3F60 800D5E70 0C03581C */  jal        func_menu_800D6070
/* F3F64 800D5E74 02002821 */   addu      $a1, $s0, $zero
/* F3F68 800D5E78 8C420014 */  lw         $v0, 0x14($v0)
/* F3F6C 800D5E7C 8C430000 */  lw         $v1, 0x0($v0)
/* F3F70 800D5E80 8E220038 */  lw         $v0, 0x38($s1)
/* F3F74 800D5E84 0043102A */  slt        $v0, $v0, $v1
/* F3F78 800D5E88 54400001 */  bnel       $v0, $zero, .Lmenu_800D5E90
/* F3F7C 800D5E8C AE230038 */   sw        $v1, 0x38($s1)
.Lmenu_800D5E90:
/* F3F80 800D5E90 08035797 */  j          .Lmenu_800D5E5C
/* F3F84 800D5E94 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800D5E98:
/* F3F88 800D5E98 00008021 */  addu       $s0, $zero, $zero
.Lmenu_800D5E9C:
/* F3F8C 800D5E9C 8E220034 */  lw         $v0, 0x34($s1)
/* F3F90 800D5EA0 8C420004 */  lw         $v0, 0x4($v0)
/* F3F94 800D5EA4 0202102A */  slt        $v0, $s0, $v0
/* F3F98 800D5EA8 1040000B */  beqz       $v0, .Lmenu_800D5ED8
/* F3F9C 800D5EAC 02202021 */   addu      $a0, $s1, $zero
/* F3FA0 800D5EB0 0C03580B */  jal        func_menu_800D602C
/* F3FA4 800D5EB4 02002821 */   addu      $a1, $s0, $zero
/* F3FA8 800D5EB8 8C420014 */  lw         $v0, 0x14($v0)
/* F3FAC 800D5EBC 8C430000 */  lw         $v1, 0x0($v0)
/* F3FB0 800D5EC0 8E22003C */  lw         $v0, 0x3C($s1)
/* F3FB4 800D5EC4 0043102A */  slt        $v0, $v0, $v1
/* F3FB8 800D5EC8 54400001 */  bnel       $v0, $zero, .Lmenu_800D5ED0
/* F3FBC 800D5ECC AE23003C */   sw        $v1, 0x3C($s1)
.Lmenu_800D5ED0:
/* F3FC0 800D5ED0 080357A7 */  j          .Lmenu_800D5E9C
/* F3FC4 800D5ED4 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800D5ED8:
/* F3FC8 800D5ED8 8FBF0018 */  lw         $ra, 0x18($sp)
/* F3FCC 800D5EDC 8FB10014 */  lw         $s1, 0x14($sp)
/* F3FD0 800D5EE0 8FB00010 */  lw         $s0, 0x10($sp)
/* F3FD4 800D5EE4 03E00008 */  jr         $ra
/* F3FD8 800D5EE8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D5EEC
/* F3FDC 800D5EEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F3FE0 800D5EF0 AFB10014 */  sw         $s1, 0x14($sp)
/* F3FE4 800D5EF4 00808821 */  addu       $s1, $a0, $zero
/* F3FE8 800D5EF8 AFB00010 */  sw         $s0, 0x10($sp)
/* F3FEC 800D5EFC 00008021 */  addu       $s0, $zero, $zero
/* F3FF0 800D5F00 AFBF0018 */  sw         $ra, 0x18($sp)
.Lmenu_800D5F04:
/* F3FF4 800D5F04 8E220020 */  lw         $v0, 0x20($s1)
/* F3FF8 800D5F08 8C420050 */  lw         $v0, 0x50($v0)
/* F3FFC 800D5F0C 0202102A */  slt        $v0, $s0, $v0
/* F4000 800D5F10 1040000A */  beqz       $v0, .Lmenu_800D5F3C
/* F4004 800D5F14 02202021 */   addu      $a0, $s1, $zero
/* F4008 800D5F18 0C03581C */  jal        func_menu_800D6070
/* F400C 800D5F1C 02002821 */   addu      $a1, $s0, $zero
/* F4010 800D5F20 8C43001C */  lw         $v1, 0x1C($v0)
/* F4014 800D5F24 8E220048 */  lw         $v0, 0x48($s1)
/* F4018 800D5F28 0043102A */  slt        $v0, $v0, $v1
/* F401C 800D5F2C 54400001 */  bnel       $v0, $zero, .Lmenu_800D5F34
/* F4020 800D5F30 AE230048 */   sw        $v1, 0x48($s1)
.Lmenu_800D5F34:
/* F4024 800D5F34 080357C1 */  j          .Lmenu_800D5F04
/* F4028 800D5F38 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800D5F3C:
/* F402C 800D5F3C 00008021 */  addu       $s0, $zero, $zero
.Lmenu_800D5F40:
/* F4030 800D5F40 8E220034 */  lw         $v0, 0x34($s1)
/* F4034 800D5F44 8C420004 */  lw         $v0, 0x4($v0)
/* F4038 800D5F48 0202102A */  slt        $v0, $s0, $v0
/* F403C 800D5F4C 1040000A */  beqz       $v0, .Lmenu_800D5F78
/* F4040 800D5F50 02202021 */   addu      $a0, $s1, $zero
/* F4044 800D5F54 0C03580B */  jal        func_menu_800D602C
/* F4048 800D5F58 02002821 */   addu      $a1, $s0, $zero
/* F404C 800D5F5C 8C43001C */  lw         $v1, 0x1C($v0)
/* F4050 800D5F60 8E22004C */  lw         $v0, 0x4C($s1)
/* F4054 800D5F64 0043102A */  slt        $v0, $v0, $v1
/* F4058 800D5F68 54400001 */  bnel       $v0, $zero, .Lmenu_800D5F70
/* F405C 800D5F6C AE23004C */   sw        $v1, 0x4C($s1)
.Lmenu_800D5F70:
/* F4060 800D5F70 080357D0 */  j          .Lmenu_800D5F40
/* F4064 800D5F74 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800D5F78:
/* F4068 800D5F78 8FBF0018 */  lw         $ra, 0x18($sp)
/* F406C 800D5F7C 8FB10014 */  lw         $s1, 0x14($sp)
/* F4070 800D5F80 8FB00010 */  lw         $s0, 0x10($sp)
/* F4074 800D5F84 03E00008 */  jr         $ra
/* F4078 800D5F88 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D5F8C
/* F407C 800D5F8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F4080 800D5F90 AFB10014 */  sw         $s1, 0x14($sp)
/* F4084 800D5F94 00808821 */  addu       $s1, $a0, $zero
/* F4088 800D5F98 AFB00010 */  sw         $s0, 0x10($sp)
/* F408C 800D5F9C 00008021 */  addu       $s0, $zero, $zero
/* F4090 800D5FA0 AFBF0018 */  sw         $ra, 0x18($sp)
.Lmenu_800D5FA4:
/* F4094 800D5FA4 8E220020 */  lw         $v0, 0x20($s1)
/* F4098 800D5FA8 8C420050 */  lw         $v0, 0x50($v0)
/* F409C 800D5FAC 0202102A */  slt        $v0, $s0, $v0
/* F40A0 800D5FB0 1040000A */  beqz       $v0, .Lmenu_800D5FDC
/* F40A4 800D5FB4 02202021 */   addu      $a0, $s1, $zero
/* F40A8 800D5FB8 0C03581C */  jal        func_menu_800D6070
/* F40AC 800D5FBC 02002821 */   addu      $a1, $s0, $zero
/* F40B0 800D5FC0 8C430004 */  lw         $v1, 0x4($v0)
/* F40B4 800D5FC4 8E220050 */  lw         $v0, 0x50($s1)
/* F40B8 800D5FC8 0043102A */  slt        $v0, $v0, $v1
/* F40BC 800D5FCC 54400001 */  bnel       $v0, $zero, .Lmenu_800D5FD4
/* F40C0 800D5FD0 AE230050 */   sw        $v1, 0x50($s1)
.Lmenu_800D5FD4:
/* F40C4 800D5FD4 080357E9 */  j          .Lmenu_800D5FA4
/* F40C8 800D5FD8 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800D5FDC:
/* F40CC 800D5FDC 00008021 */  addu       $s0, $zero, $zero
.Lmenu_800D5FE0:
/* F40D0 800D5FE0 8E220034 */  lw         $v0, 0x34($s1)
/* F40D4 800D5FE4 8C420004 */  lw         $v0, 0x4($v0)
/* F40D8 800D5FE8 0202102A */  slt        $v0, $s0, $v0
/* F40DC 800D5FEC 1040000A */  beqz       $v0, .Lmenu_800D6018
/* F40E0 800D5FF0 02202021 */   addu      $a0, $s1, $zero
/* F40E4 800D5FF4 0C03580B */  jal        func_menu_800D602C
/* F40E8 800D5FF8 02002821 */   addu      $a1, $s0, $zero
/* F40EC 800D5FFC 8C430004 */  lw         $v1, 0x4($v0)
/* F40F0 800D6000 8E220054 */  lw         $v0, 0x54($s1)
/* F40F4 800D6004 0043102A */  slt        $v0, $v0, $v1
/* F40F8 800D6008 54400001 */  bnel       $v0, $zero, .Lmenu_800D6010
/* F40FC 800D600C AE230054 */   sw        $v1, 0x54($s1)
.Lmenu_800D6010:
/* F4100 800D6010 080357F8 */  j          .Lmenu_800D5FE0
/* F4104 800D6014 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800D6018:
/* F4108 800D6018 8FBF0018 */  lw         $ra, 0x18($sp)
/* F410C 800D601C 8FB10014 */  lw         $s1, 0x14($sp)
/* F4110 800D6020 8FB00010 */  lw         $s0, 0x10($sp)
/* F4114 800D6024 03E00008 */  jr         $ra
/* F4118 800D6028 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D602C
/* F411C 800D602C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F4120 800D6030 AFB00018 */  sw         $s0, 0x18($sp)
/* F4124 800D6034 00808021 */  addu       $s0, $a0, $zero
/* F4128 800D6038 AFBF001C */  sw         $ra, 0x1C($sp)
/* F412C 800D603C 8E040034 */  lw         $a0, 0x34($s0)
/* F4130 800D6040 0C035C3B */  jal        func_menu_800D70EC
/* F4134 800D6044 27A60010 */   addiu     $a2, $sp, 0x10
/* F4138 800D6048 02002021 */  addu       $a0, $s0, $zero
/* F413C 800D604C 8E050018 */  lw         $a1, 0x18($s0)
/* F4140 800D6050 8E060024 */  lw         $a2, 0x24($s0)
/* F4144 800D6054 0C03AEAC */  jal        func_menu_800EBAB0
/* F4148 800D6058 27A70010 */   addiu     $a3, $sp, 0x10
/* F414C 800D605C 8E020024 */  lw         $v0, 0x24($s0)
/* F4150 800D6060 8FBF001C */  lw         $ra, 0x1C($sp)
/* F4154 800D6064 8FB00018 */  lw         $s0, 0x18($sp)
/* F4158 800D6068 03E00008 */  jr         $ra
/* F415C 800D606C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D6070
/* F4160 800D6070 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F4164 800D6074 AFB00018 */  sw         $s0, 0x18($sp)
/* F4168 800D6078 00808021 */  addu       $s0, $a0, $zero
/* F416C 800D607C AFBF001C */  sw         $ra, 0x1C($sp)
/* F4170 800D6080 8E030058 */  lw         $v1, 0x58($s0)
/* F4174 800D6084 24020001 */  addiu      $v0, $zero, 0x1
/* F4178 800D6088 14620004 */  bne        $v1, $v0, .Lmenu_800D609C
/* F417C 800D608C 00000000 */   nop
/* F4180 800D6090 8E040034 */  lw         $a0, 0x34($s0)
/* F4184 800D6094 08035828 */  j          .Lmenu_800D60A0
/* F4188 800D6098 24050004 */   addiu     $a1, $zero, 0x4
.Lmenu_800D609C:
/* F418C 800D609C 8E040034 */  lw         $a0, 0x34($s0)
.Lmenu_800D60A0:
/* F4190 800D60A0 0C035C30 */  jal        func_menu_800D70C0
/* F4194 800D60A4 27A60010 */   addiu     $a2, $sp, 0x10
/* F4198 800D60A8 8E020020 */  lw         $v0, 0x20($s0)
/* F419C 800D60AC 27A50010 */  addiu      $a1, $sp, 0x10
/* F41A0 800D60B0 8C4300BC */  lw         $v1, 0xBC($v0)
/* F41A4 800D60B4 14600003 */  bnez       $v1, .Lmenu_800D60C4
/* F41A8 800D60B8 244400BC */   addiu     $a0, $v0, 0xBC
/* F41AC 800D60BC 08035833 */  j          .Lmenu_800D60CC
/* F41B0 800D60C0 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800D60C4:
/* F41B4 800D60C4 0C016427 */  jal        func_8005909C
/* F41B8 800D60C8 00000000 */   nop
.Lmenu_800D60CC:
/* F41BC 800D60CC 8C420078 */  lw         $v0, 0x78($v0)
/* F41C0 800D60D0 8FBF001C */  lw         $ra, 0x1C($sp)
/* F41C4 800D60D4 8FB00018 */  lw         $s0, 0x18($sp)
/* F41C8 800D60D8 03E00008 */  jr         $ra
/* F41CC 800D60DC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D60E0
/* F41D0 800D60E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F41D4 800D60E4 AFB00018 */  sw         $s0, 0x18($sp)
/* F41D8 800D60E8 00808021 */  addu       $s0, $a0, $zero
/* F41DC 800D60EC AFBF001C */  sw         $ra, 0x1C($sp)
/* F41E0 800D60F0 8E030058 */  lw         $v1, 0x58($s0)
/* F41E4 800D60F4 24020001 */  addiu      $v0, $zero, 0x1
/* F41E8 800D60F8 14620004 */  bne        $v1, $v0, .Lmenu_800D610C
/* F41EC 800D60FC 00000000 */   nop
/* F41F0 800D6100 8E040034 */  lw         $a0, 0x34($s0)
/* F41F4 800D6104 08035844 */  j          .Lmenu_800D6110
/* F41F8 800D6108 24050004 */   addiu     $a1, $zero, 0x4
.Lmenu_800D610C:
/* F41FC 800D610C 8E040034 */  lw         $a0, 0x34($s0)
.Lmenu_800D6110:
/* F4200 800D6110 0C035C30 */  jal        func_menu_800D70C0
/* F4204 800D6114 27A60010 */   addiu     $a2, $sp, 0x10
/* F4208 800D6118 8E020020 */  lw         $v0, 0x20($s0)
/* F420C 800D611C 27A50010 */  addiu      $a1, $sp, 0x10
/* F4210 800D6120 8C4300BC */  lw         $v1, 0xBC($v0)
/* F4214 800D6124 14600003 */  bnez       $v1, .Lmenu_800D6134
/* F4218 800D6128 244400BC */   addiu     $a0, $v0, 0xBC
/* F421C 800D612C 08035850 */  j          .Lmenu_800D6140
/* F4220 800D6130 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800D6134:
/* F4224 800D6134 0C016427 */  jal        func_8005909C
/* F4228 800D6138 00000000 */   nop
/* F422C 800D613C 00401821 */  addu       $v1, $v0, $zero
.Lmenu_800D6140:
/* F4230 800D6140 8C620024 */  lw         $v0, 0x24($v1)
/* F4234 800D6144 00002821 */  addu       $a1, $zero, $zero
/* F4238 800D6148 844400B8 */  lh         $a0, 0xB8($v0)
/* F423C 800D614C 8C4200BC */  lw         $v0, 0xBC($v0)
/* F4240 800D6150 0040F809 */  jalr       $v0
/* F4244 800D6154 00642021 */   addu      $a0, $v1, $a0
/* F4248 800D6158 8FBF001C */  lw         $ra, 0x1C($sp)
/* F424C 800D615C 8FB00018 */  lw         $s0, 0x18($sp)
/* F4250 800D6160 03E00008 */  jr         $ra
/* F4254 800D6164 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D6168
/* F4258 800D6168 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F425C 800D616C AFB00018 */  sw         $s0, 0x18($sp)
/* F4260 800D6170 00808021 */  addu       $s0, $a0, $zero
/* F4264 800D6174 AFBF001C */  sw         $ra, 0x1C($sp)
/* F4268 800D6178 8E030058 */  lw         $v1, 0x58($s0)
/* F426C 800D617C 24020001 */  addiu      $v0, $zero, 0x1
/* F4270 800D6180 14620004 */  bne        $v1, $v0, .Lmenu_800D6194
/* F4274 800D6184 00000000 */   nop
/* F4278 800D6188 8E040034 */  lw         $a0, 0x34($s0)
/* F427C 800D618C 08035866 */  j          .Lmenu_800D6198
/* F4280 800D6190 24050004 */   addiu     $a1, $zero, 0x4
.Lmenu_800D6194:
/* F4284 800D6194 8E040034 */  lw         $a0, 0x34($s0)
.Lmenu_800D6198:
/* F4288 800D6198 0C035C30 */  jal        func_menu_800D70C0
/* F428C 800D619C 27A60010 */   addiu     $a2, $sp, 0x10
/* F4290 800D61A0 8E020020 */  lw         $v0, 0x20($s0)
/* F4294 800D61A4 27A50010 */  addiu      $a1, $sp, 0x10
/* F4298 800D61A8 8C4300BC */  lw         $v1, 0xBC($v0)
/* F429C 800D61AC 14600003 */  bnez       $v1, .Lmenu_800D61BC
/* F42A0 800D61B0 244400BC */   addiu     $a0, $v0, 0xBC
/* F42A4 800D61B4 08035871 */  j          .Lmenu_800D61C4
/* F42A8 800D61B8 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800D61BC:
/* F42AC 800D61BC 0C016427 */  jal        func_8005909C
/* F42B0 800D61C0 00000000 */   nop
.Lmenu_800D61C4:
/* F42B4 800D61C4 8C4200A8 */  lw         $v0, 0xA8($v0)
/* F42B8 800D61C8 8FBF001C */  lw         $ra, 0x1C($sp)
/* F42BC 800D61CC 8FB00018 */  lw         $s0, 0x18($sp)
/* F42C0 800D61D0 03E00008 */  jr         $ra
/* F42C4 800D61D4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D61D8
/* F42C8 800D61D8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F42CC 800D61DC AFB10024 */  sw         $s1, 0x24($sp)
/* F42D0 800D61E0 00808821 */  addu       $s1, $a0, $zero
/* F42D4 800D61E4 AFB00020 */  sw         $s0, 0x20($sp)
/* F42D8 800D61E8 27B00018 */  addiu      $s0, $sp, 0x18
/* F42DC 800D61EC 27A60010 */  addiu      $a2, $sp, 0x10
/* F42E0 800D61F0 AFBF0028 */  sw         $ra, 0x28($sp)
/* F42E4 800D61F4 8E240034 */  lw         $a0, 0x34($s1)
/* F42E8 800D61F8 0C035BDB */  jal        func_menu_800D6F6C
/* F42EC 800D61FC 02003821 */   addu      $a3, $s0, $zero
/* F42F0 800D6200 8E240018 */  lw         $a0, 0x18($s1)
/* F42F4 800D6204 0C016F2D */  jal        func_8005BCB4
/* F42F8 800D6208 02002821 */   addu      $a1, $s0, $zero
/* F42FC 800D620C 8FBF0028 */  lw         $ra, 0x28($sp)
/* F4300 800D6210 8FB10024 */  lw         $s1, 0x24($sp)
/* F4304 800D6214 8FB00020 */  lw         $s0, 0x20($sp)
/* F4308 800D6218 03E00008 */  jr         $ra
/* F430C 800D621C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800D6220
/* F4310 800D6220 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F4314 800D6224 AFB10024 */  sw         $s1, 0x24($sp)
/* F4318 800D6228 00808821 */  addu       $s1, $a0, $zero
/* F431C 800D622C AFB00020 */  sw         $s0, 0x20($sp)
/* F4320 800D6230 27B00018 */  addiu      $s0, $sp, 0x18
/* F4324 800D6234 27A60010 */  addiu      $a2, $sp, 0x10
/* F4328 800D6238 AFBF0028 */  sw         $ra, 0x28($sp)
/* F432C 800D623C 8E240034 */  lw         $a0, 0x34($s1)
/* F4330 800D6240 0C035BF6 */  jal        func_menu_800D6FD8
/* F4334 800D6244 02003821 */   addu      $a3, $s0, $zero
/* F4338 800D6248 8E240018 */  lw         $a0, 0x18($s1)
/* F433C 800D624C 0C016F2D */  jal        func_8005BCB4
/* F4340 800D6250 02002821 */   addu      $a1, $s0, $zero
/* F4344 800D6254 8FBF0028 */  lw         $ra, 0x28($sp)
/* F4348 800D6258 8FB10024 */  lw         $s1, 0x24($sp)
/* F434C 800D625C 8FB00020 */  lw         $s0, 0x20($sp)
/* F4350 800D6260 03E00008 */  jr         $ra
/* F4354 800D6264 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800D6268
/* F4358 800D6268 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F435C 800D626C AFB10024 */  sw         $s1, 0x24($sp)
/* F4360 800D6270 00808821 */  addu       $s1, $a0, $zero
/* F4364 800D6274 AFB00020 */  sw         $s0, 0x20($sp)
/* F4368 800D6278 27B00018 */  addiu      $s0, $sp, 0x18
/* F436C 800D627C 27A60010 */  addiu      $a2, $sp, 0x10
/* F4370 800D6280 AFBF0028 */  sw         $ra, 0x28($sp)
/* F4374 800D6284 8E240034 */  lw         $a0, 0x34($s1)
/* F4378 800D6288 0C035C13 */  jal        func_menu_800D704C
/* F437C 800D628C 02003821 */   addu      $a3, $s0, $zero
/* F4380 800D6290 8E240018 */  lw         $a0, 0x18($s1)
/* F4384 800D6294 0C016F2D */  jal        func_8005BCB4
/* F4388 800D6298 02002821 */   addu      $a1, $s0, $zero
/* F438C 800D629C 8FBF0028 */  lw         $ra, 0x28($sp)
/* F4390 800D62A0 8FB10024 */  lw         $s1, 0x24($sp)
/* F4394 800D62A4 8FB00020 */  lw         $s0, 0x20($sp)
/* F4398 800D62A8 03E00008 */  jr         $ra
/* F439C 800D62AC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800D62B0
/* F43A0 800D62B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F43A4 800D62B4 AFB00010 */  sw         $s0, 0x10($sp)
/* F43A8 800D62B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* F43AC 800D62BC 0C0358C7 */  jal        func_menu_800D631C
/* F43B0 800D62C0 00808021 */   addu      $s0, $a0, $zero
/* F43B4 800D62C4 02001021 */  addu       $v0, $s0, $zero
/* F43B8 800D62C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* F43BC 800D62CC 8FB00010 */  lw         $s0, 0x10($sp)
/* F43C0 800D62D0 03E00008 */  jr         $ra
/* F43C4 800D62D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D62D8
/* F43C8 800D62D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F43CC 800D62DC AFB10014 */  sw         $s1, 0x14($sp)
/* F43D0 800D62E0 00808821 */  addu       $s1, $a0, $zero
/* F43D4 800D62E4 AFB00010 */  sw         $s0, 0x10($sp)
/* F43D8 800D62E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* F43DC 800D62EC 0C035912 */  jal        func_menu_800D6448
/* F43E0 800D62F0 00A08021 */   addu      $s0, $a1, $zero
/* F43E4 800D62F4 32100001 */  andi       $s0, $s0, 0x1
/* F43E8 800D62F8 12000003 */  beqz       $s0, .Lmenu_800D6308
/* F43EC 800D62FC 00000000 */   nop
/* F43F0 800D6300 0C01FB5C */  jal        func_8007ED70
/* F43F4 800D6304 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800D6308:
/* F43F8 800D6308 8FBF0018 */  lw         $ra, 0x18($sp)
/* F43FC 800D630C 8FB10014 */  lw         $s1, 0x14($sp)
/* F4400 800D6310 8FB00010 */  lw         $s0, 0x10($sp)
/* F4404 800D6314 03E00008 */  jr         $ra
/* F4408 800D6318 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D631C
/* F440C 800D631C AC800000 */  sw         $zero, 0x0($a0)
/* F4410 800D6320 AC800010 */  sw         $zero, 0x10($a0)
/* F4414 800D6324 AC80000C */  sw         $zero, 0xC($a0)
/* F4418 800D6328 AC800008 */  sw         $zero, 0x8($a0)
/* F441C 800D632C 03E00008 */  jr         $ra
/* F4420 800D6330 AC800004 */   sw        $zero, 0x4($a0)

glabel func_menu_800D6334
/* F4424 800D6334 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F4428 800D6338 AFB10014 */  sw         $s1, 0x14($sp)
/* F442C 800D633C 00808821 */  addu       $s1, $a0, $zero
/* F4430 800D6340 AFB20018 */  sw         $s2, 0x18($sp)
/* F4434 800D6344 00A09021 */  addu       $s2, $a1, $zero
/* F4438 800D6348 AFB00010 */  sw         $s0, 0x10($sp)
/* F443C 800D634C AFBF001C */  sw         $ra, 0x1C($sp)
/* F4440 800D6350 0C035912 */  jal        func_menu_800D6448
/* F4444 800D6354 00C08021 */   addu      $s0, $a2, $zero
/* F4448 800D6358 12000014 */  beqz       $s0, .Lmenu_800D63AC
/* F444C 800D635C 00000000 */   nop
/* F4450 800D6360 0C01FB4C */  jal        func_8007ED30
/* F4454 800D6364 24040654 */   addiu     $a0, $zero, 0x654
/* F4458 800D6368 0C00278C */  jal        func_80009E30
/* F445C 800D636C 00402021 */   addu      $a0, $v0, $zero
/* F4460 800D6370 00408021 */  addu       $s0, $v0, $zero
/* F4464 800D6374 56000008 */  bnel       $s0, $zero, .Lmenu_800D6398
/* F4468 800D6378 02002021 */   addu      $a0, $s0, $zero
/* F446C 800D637C 3C04800D */  lui        $a0, %hi(D_menu_800CA8F0)
/* F4470 800D6380 2484A8F0 */  addiu      $a0, $a0, %lo(D_menu_800CA8F0)
/* F4474 800D6384 00002821 */  addu       $a1, $zero, $zero
/* F4478 800D6388 00A03021 */  addu       $a2, $a1, $zero
/* F447C 800D638C 0C011ACF */  jal        func_80046B3C
/* F4480 800D6390 00A03821 */   addu      $a3, $a1, $zero
/* F4484 800D6394 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800D6398:
/* F4488 800D6398 3C05800D */  lui        $a1, %hi(D_menu_800CA8F4)
/* F448C 800D639C 0C0025BA */  jal        func_800096E8
/* F4490 800D63A0 24A5A8F4 */   addiu     $a1, $a1, %lo(D_menu_800CA8F4)
/* F4494 800D63A4 080358FA */  j          .Lmenu_800D63E8
/* F4498 800D63A8 00000000 */   nop
.Lmenu_800D63AC:
/* F449C 800D63AC 0C01FB4C */  jal        func_8007ED30
/* F44A0 800D63B0 24040658 */   addiu     $a0, $zero, 0x658
/* F44A4 800D63B4 00408021 */  addu       $s0, $v0, $zero
/* F44A8 800D63B8 0C002504 */  jal        func_80009410
/* F44AC 800D63BC 02002021 */   addu      $a0, $s0, $zero
/* F44B0 800D63C0 3C02800D */  lui        $v0, %hi(D_menu_800CA950)
/* F44B4 800D63C4 2442A950 */  addiu      $v0, $v0, %lo(D_menu_800CA950)
/* F44B8 800D63C8 16000007 */  bnez       $s0, .Lmenu_800D63E8
/* F44BC 800D63CC AE020028 */   sw        $v0, 0x28($s0)
/* F44C0 800D63D0 3C04800D */  lui        $a0, %hi(D_menu_800CA8F0)
/* F44C4 800D63D4 2484A8F0 */  addiu      $a0, $a0, %lo(D_menu_800CA8F0)
/* F44C8 800D63D8 00002821 */  addu       $a1, $zero, $zero
/* F44CC 800D63DC 00A03021 */  addu       $a2, $a1, $zero
/* F44D0 800D63E0 0C011ACF */  jal        func_80046B3C
/* F44D4 800D63E4 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800D63E8:
/* F44D8 800D63E8 8E020028 */  lw         $v0, 0x28($s0)
/* F44DC 800D63EC 02402821 */  addu       $a1, $s2, $zero
/* F44E0 800D63F0 84440088 */  lh         $a0, 0x88($v0)
/* F44E4 800D63F4 8C42008C */  lw         $v0, 0x8C($v0)
/* F44E8 800D63F8 0040F809 */  jalr       $v0
/* F44EC 800D63FC 02042021 */   addu      $a0, $s0, $a0
/* F44F0 800D6400 02202021 */  addu       $a0, $s1, $zero
/* F44F4 800D6404 0C035B7E */  jal        func_menu_800D6DF8
/* F44F8 800D6408 02002821 */   addu      $a1, $s0, $zero
/* F44FC 800D640C 12000006 */  beqz       $s0, .Lmenu_800D6428
/* F4500 800D6410 24050003 */   addiu     $a1, $zero, 0x3
/* F4504 800D6414 8E020028 */  lw         $v0, 0x28($s0)
/* F4508 800D6418 84440038 */  lh         $a0, 0x38($v0)
/* F450C 800D641C 8C42003C */  lw         $v0, 0x3C($v0)
/* F4510 800D6420 0040F809 */  jalr       $v0
/* F4514 800D6424 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800D6428:
/* F4518 800D6428 24020001 */  addiu      $v0, $zero, 0x1
/* F451C 800D642C AE220000 */  sw         $v0, 0x0($s1)
/* F4520 800D6430 8FBF001C */  lw         $ra, 0x1C($sp)
/* F4524 800D6434 8FB20018 */  lw         $s2, 0x18($sp)
/* F4528 800D6438 8FB10014 */  lw         $s1, 0x14($sp)
/* F452C 800D643C 8FB00010 */  lw         $s0, 0x10($sp)
/* F4530 800D6440 03E00008 */  jr         $ra
/* F4534 800D6444 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D6448
/* F4538 800D6448 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F453C 800D644C AFB00010 */  sw         $s0, 0x10($sp)
/* F4540 800D6450 00808021 */  addu       $s0, $a0, $zero
/* F4544 800D6454 AFBF0014 */  sw         $ra, 0x14($sp)
/* F4548 800D6458 8E020000 */  lw         $v0, 0x0($s0)
/* F454C 800D645C 10400004 */  beqz       $v0, .Lmenu_800D6470
/* F4550 800D6460 00000000 */   nop
/* F4554 800D6464 0C0358C7 */  jal        func_menu_800D631C
/* F4558 800D6468 00000000 */   nop
/* F455C 800D646C 8E020000 */  lw         $v0, 0x0($s0)
.Lmenu_800D6470:
/* F4560 800D6470 8FBF0014 */  lw         $ra, 0x14($sp)
/* F4564 800D6474 8FB00010 */  lw         $s0, 0x10($sp)
/* F4568 800D6478 2C420001 */  sltiu      $v0, $v0, 0x1
/* F456C 800D647C 03E00008 */  jr         $ra
/* F4570 800D6480 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D6484
/* F4574 800D6484 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F4578 800D6488 AFB00010 */  sw         $s0, 0x10($sp)
/* F457C 800D648C 00A08021 */  addu       $s0, $a1, $zero
/* F4580 800D6490 02002021 */  addu       $a0, $s0, $zero
/* F4584 800D6494 AFBF0014 */  sw         $ra, 0x14($sp)
/* F4588 800D6498 0C0026F4 */  jal        func_80009BD0
/* F458C 800D649C 24050007 */   addiu     $a1, $zero, 0x7
/* F4590 800D64A0 0C002680 */  jal        func_80009A00
/* F4594 800D64A4 02002021 */   addu      $a0, $s0, $zero
/* F4598 800D64A8 02002021 */  addu       $a0, $s0, $zero
/* F459C 800D64AC 24050008 */  addiu      $a1, $zero, 0x8
/* F45A0 800D64B0 0C0026F4 */  jal        func_80009BD0
/* F45A4 800D64B4 00408021 */   addu      $s0, $v0, $zero
/* F45A8 800D64B8 02001021 */  addu       $v0, $s0, $zero
/* F45AC 800D64BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* F45B0 800D64C0 8FB00010 */  lw         $s0, 0x10($sp)
/* F45B4 800D64C4 03E00008 */  jr         $ra
/* F45B8 800D64C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D64CC
/* F45BC 800D64CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F45C0 800D64D0 AFB10014 */  sw         $s1, 0x14($sp)
/* F45C4 800D64D4 00808821 */  addu       $s1, $a0, $zero
/* F45C8 800D64D8 AFB00010 */  sw         $s0, 0x10($sp)
/* F45CC 800D64DC AFBF0018 */  sw         $ra, 0x18($sp)
/* F45D0 800D64E0 0C035921 */  jal        func_menu_800D6484
/* F45D4 800D64E4 00A08021 */   addu      $s0, $a1, $zero
/* F45D8 800D64E8 02002021 */  addu       $a0, $s0, $zero
/* F45DC 800D64EC 0C0026F4 */  jal        func_80009BD0
/* F45E0 800D64F0 24050005 */   addiu     $a1, $zero, 0x5
/* F45E4 800D64F4 8E020028 */  lw         $v0, 0x28($s0)
/* F45E8 800D64F8 844400A0 */  lh         $a0, 0xA0($v0)
/* F45EC 800D64FC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F45F0 800D6500 0040F809 */  jalr       $v0
/* F45F4 800D6504 02042021 */   addu      $a0, $s0, $a0
/* F45F8 800D6508 8A030044 */  lwl        $v1, 0x44($s0)
/* F45FC 800D650C 9A030047 */  lwr        $v1, 0x47($s0)
/* F4600 800D6510 8A060048 */  lwl        $a2, 0x48($s0)
/* F4604 800D6514 9A06004B */  lwr        $a2, 0x4B($s0)
/* F4608 800D6518 8A07004C */  lwl        $a3, 0x4C($s0)
/* F460C 800D651C 9A07004F */  lwr        $a3, 0x4F($s0)
/* F4610 800D6520 82080050 */  lb         $t0, 0x50($s0)
/* F4614 800D6524 AA2306DA */  swl        $v1, 0x6DA($s1)
/* F4618 800D6528 BA2306DD */  swr        $v1, 0x6DD($s1)
/* F461C 800D652C AA2606DE */  swl        $a2, 0x6DE($s1)
/* F4620 800D6530 BA2606E1 */  swr        $a2, 0x6E1($s1)
/* F4624 800D6534 AA2706E2 */  swl        $a3, 0x6E2($s1)
/* F4628 800D6538 BA2706E5 */  swr        $a3, 0x6E5($s1)
/* F462C 800D653C A22806E6 */  sb         $t0, 0x6E6($s1)
/* F4630 800D6540 8E020028 */  lw         $v0, 0x28($s0)
/* F4634 800D6544 844400A0 */  lh         $a0, 0xA0($v0)
/* F4638 800D6548 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F463C 800D654C 0040F809 */  jalr       $v0
/* F4640 800D6550 02042021 */   addu      $a0, $s0, $a0
/* F4644 800D6554 8A030044 */  lwl        $v1, 0x44($s0)
/* F4648 800D6558 9A030047 */  lwr        $v1, 0x47($s0)
/* F464C 800D655C 8A060048 */  lwl        $a2, 0x48($s0)
/* F4650 800D6560 9A06004B */  lwr        $a2, 0x4B($s0)
/* F4654 800D6564 8A07004C */  lwl        $a3, 0x4C($s0)
/* F4658 800D6568 9A07004F */  lwr        $a3, 0x4F($s0)
/* F465C 800D656C 82080050 */  lb         $t0, 0x50($s0)
/* F4660 800D6570 AA2306E7 */  swl        $v1, 0x6E7($s1)
/* F4664 800D6574 BA2306EA */  swr        $v1, 0x6EA($s1)
/* F4668 800D6578 AA2606EB */  swl        $a2, 0x6EB($s1)
/* F466C 800D657C BA2606EE */  swr        $a2, 0x6EE($s1)
/* F4670 800D6580 AA2706EF */  swl        $a3, 0x6EF($s1)
/* F4674 800D6584 BA2706F2 */  swr        $a3, 0x6F2($s1)
/* F4678 800D6588 A22806F3 */  sb         $t0, 0x6F3($s1)
/* F467C 800D658C 8E020028 */  lw         $v0, 0x28($s0)
/* F4680 800D6590 844400A0 */  lh         $a0, 0xA0($v0)
/* F4684 800D6594 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4688 800D6598 0040F809 */  jalr       $v0
/* F468C 800D659C 02042021 */   addu      $a0, $s0, $a0
/* F4690 800D65A0 02002021 */  addu       $a0, $s0, $zero
/* F4694 800D65A4 88830044 */  lwl        $v1, 0x44($a0)
/* F4698 800D65A8 98830047 */  lwr        $v1, 0x47($a0)
/* F469C 800D65AC 88860048 */  lwl        $a2, 0x48($a0)
/* F46A0 800D65B0 9886004B */  lwr        $a2, 0x4B($a0)
/* F46A4 800D65B4 8887004C */  lwl        $a3, 0x4C($a0)
/* F46A8 800D65B8 9887004F */  lwr        $a3, 0x4F($a0)
/* F46AC 800D65BC 80880050 */  lb         $t0, 0x50($a0)
/* F46B0 800D65C0 AA2306F4 */  swl        $v1, 0x6F4($s1)
/* F46B4 800D65C4 BA2306F7 */  swr        $v1, 0x6F7($s1)
/* F46B8 800D65C8 AA2606F8 */  swl        $a2, 0x6F8($s1)
/* F46BC 800D65CC BA2606FB */  swr        $a2, 0x6FB($s1)
/* F46C0 800D65D0 AA2706FC */  swl        $a3, 0x6FC($s1)
/* F46C4 800D65D4 BA2706FF */  swr        $a3, 0x6FF($s1)
/* F46C8 800D65D8 A2280700 */  sb         $t0, 0x700($s1)
/* F46CC 800D65DC 0C0026F4 */  jal        func_80009BD0
/* F46D0 800D65E0 24050006 */   addiu     $a1, $zero, 0x6
/* F46D4 800D65E4 8FBF0018 */  lw         $ra, 0x18($sp)
/* F46D8 800D65E8 8FB10014 */  lw         $s1, 0x14($sp)
/* F46DC 800D65EC 8FB00010 */  lw         $s0, 0x10($sp)
/* F46E0 800D65F0 03E00008 */  jr         $ra
/* F46E4 800D65F4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D65F8
/* F46E8 800D65F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F46EC 800D65FC AFB10014 */  sw         $s1, 0x14($sp)
/* F46F0 800D6600 00808821 */  addu       $s1, $a0, $zero
/* F46F4 800D6604 AFB00010 */  sw         $s0, 0x10($sp)
/* F46F8 800D6608 AFBF0018 */  sw         $ra, 0x18($sp)
/* F46FC 800D660C 0C035921 */  jal        func_menu_800D6484
/* F4700 800D6610 00A08021 */   addu      $s0, $a1, $zero
/* F4704 800D6614 02002021 */  addu       $a0, $s0, $zero
/* F4708 800D6618 0C0026F4 */  jal        func_80009BD0
/* F470C 800D661C 24050005 */   addiu     $a1, $zero, 0x5
/* F4710 800D6620 8E020028 */  lw         $v0, 0x28($s0)
/* F4714 800D6624 844400A0 */  lh         $a0, 0xA0($v0)
/* F4718 800D6628 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F471C 800D662C 0040F809 */  jalr       $v0
/* F4720 800D6630 02042021 */   addu      $a0, $s0, $a0
/* F4724 800D6634 8A030044 */  lwl        $v1, 0x44($s0)
/* F4728 800D6638 9A030047 */  lwr        $v1, 0x47($s0)
/* F472C 800D663C 8A060048 */  lwl        $a2, 0x48($s0)
/* F4730 800D6640 9A06004B */  lwr        $a2, 0x4B($s0)
/* F4734 800D6644 8A07004C */  lwl        $a3, 0x4C($s0)
/* F4738 800D6648 9A07004F */  lwr        $a3, 0x4F($s0)
/* F473C 800D664C 8A080050 */  lwl        $t0, 0x50($s0)
/* F4740 800D6650 9A080053 */  lwr        $t0, 0x53($s0)
/* F4744 800D6654 AA230701 */  swl        $v1, 0x701($s1)
/* F4748 800D6658 BA230704 */  swr        $v1, 0x704($s1)
/* F474C 800D665C AA260705 */  swl        $a2, 0x705($s1)
/* F4750 800D6660 BA260708 */  swr        $a2, 0x708($s1)
/* F4754 800D6664 AA270709 */  swl        $a3, 0x709($s1)
/* F4758 800D6668 BA27070C */  swr        $a3, 0x70C($s1)
/* F475C 800D666C AA28070D */  swl        $t0, 0x70D($s1)
/* F4760 800D6670 BA280710 */  swr        $t0, 0x710($s1)
/* F4764 800D6674 8A030054 */  lwl        $v1, 0x54($s0)
/* F4768 800D6678 9A030057 */  lwr        $v1, 0x57($s0)
/* F476C 800D667C 8A060058 */  lwl        $a2, 0x58($s0)
/* F4770 800D6680 9A06005B */  lwr        $a2, 0x5B($s0)
/* F4774 800D6684 8A07005C */  lwl        $a3, 0x5C($s0)
/* F4778 800D6688 9A07005F */  lwr        $a3, 0x5F($s0)
/* F477C 800D668C 82080060 */  lb         $t0, 0x60($s0)
/* F4780 800D6690 AA230711 */  swl        $v1, 0x711($s1)
/* F4784 800D6694 BA230714 */  swr        $v1, 0x714($s1)
/* F4788 800D6698 AA260715 */  swl        $a2, 0x715($s1)
/* F478C 800D669C BA260718 */  swr        $a2, 0x718($s1)
/* F4790 800D66A0 AA270719 */  swl        $a3, 0x719($s1)
/* F4794 800D66A4 BA27071C */  swr        $a3, 0x71C($s1)
/* F4798 800D66A8 A228071D */  sb         $t0, 0x71D($s1)
/* F479C 800D66AC 82030061 */  lb         $v1, 0x61($s0)
/* F47A0 800D66B0 82060062 */  lb         $a2, 0x62($s0)
/* F47A4 800D66B4 A223071E */  sb         $v1, 0x71E($s1)
/* F47A8 800D66B8 A226071F */  sb         $a2, 0x71F($s1)
/* F47AC 800D66BC 8E020028 */  lw         $v0, 0x28($s0)
/* F47B0 800D66C0 844400A0 */  lh         $a0, 0xA0($v0)
/* F47B4 800D66C4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F47B8 800D66C8 0040F809 */  jalr       $v0
/* F47BC 800D66CC 02042021 */   addu      $a0, $s0, $a0
/* F47C0 800D66D0 02002021 */  addu       $a0, $s0, $zero
/* F47C4 800D66D4 88830044 */  lwl        $v1, 0x44($a0)
/* F47C8 800D66D8 98830047 */  lwr        $v1, 0x47($a0)
/* F47CC 800D66DC 88860048 */  lwl        $a2, 0x48($a0)
/* F47D0 800D66E0 9886004B */  lwr        $a2, 0x4B($a0)
/* F47D4 800D66E4 8887004C */  lwl        $a3, 0x4C($a0)
/* F47D8 800D66E8 9887004F */  lwr        $a3, 0x4F($a0)
/* F47DC 800D66EC 88880050 */  lwl        $t0, 0x50($a0)
/* F47E0 800D66F0 98880053 */  lwr        $t0, 0x53($a0)
/* F47E4 800D66F4 AA230721 */  swl        $v1, 0x721($s1)
/* F47E8 800D66F8 BA230724 */  swr        $v1, 0x724($s1)
/* F47EC 800D66FC AA260725 */  swl        $a2, 0x725($s1)
/* F47F0 800D6700 BA260728 */  swr        $a2, 0x728($s1)
/* F47F4 800D6704 AA270729 */  swl        $a3, 0x729($s1)
/* F47F8 800D6708 BA27072C */  swr        $a3, 0x72C($s1)
/* F47FC 800D670C AA28072D */  swl        $t0, 0x72D($s1)
/* F4800 800D6710 BA280730 */  swr        $t0, 0x730($s1)
/* F4804 800D6714 88830054 */  lwl        $v1, 0x54($a0)
/* F4808 800D6718 98830057 */  lwr        $v1, 0x57($a0)
/* F480C 800D671C 88860058 */  lwl        $a2, 0x58($a0)
/* F4810 800D6720 9886005B */  lwr        $a2, 0x5B($a0)
/* F4814 800D6724 8887005C */  lwl        $a3, 0x5C($a0)
/* F4818 800D6728 9887005F */  lwr        $a3, 0x5F($a0)
/* F481C 800D672C 80880060 */  lb         $t0, 0x60($a0)
/* F4820 800D6730 AA230731 */  swl        $v1, 0x731($s1)
/* F4824 800D6734 BA230734 */  swr        $v1, 0x734($s1)
/* F4828 800D6738 AA260735 */  swl        $a2, 0x735($s1)
/* F482C 800D673C BA260738 */  swr        $a2, 0x738($s1)
/* F4830 800D6740 AA270739 */  swl        $a3, 0x739($s1)
/* F4834 800D6744 BA27073C */  swr        $a3, 0x73C($s1)
/* F4838 800D6748 A228073D */  sb         $t0, 0x73D($s1)
/* F483C 800D674C 80830061 */  lb         $v1, 0x61($a0)
/* F4840 800D6750 80860062 */  lb         $a2, 0x62($a0)
/* F4844 800D6754 A223073E */  sb         $v1, 0x73E($s1)
/* F4848 800D6758 A226073F */  sb         $a2, 0x73F($s1)
/* F484C 800D675C 0C0026F4 */  jal        func_80009BD0
/* F4850 800D6760 24050006 */   addiu     $a1, $zero, 0x6
/* F4854 800D6764 8FBF0018 */  lw         $ra, 0x18($sp)
/* F4858 800D6768 8FB10014 */  lw         $s1, 0x14($sp)
/* F485C 800D676C 8FB00010 */  lw         $s0, 0x10($sp)
/* F4860 800D6770 03E00008 */  jr         $ra
/* F4864 800D6774 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D6778
/* F4868 800D6778 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F486C 800D677C AFB3001C */  sw         $s3, 0x1C($sp)
/* F4870 800D6780 00809821 */  addu       $s3, $a0, $zero
/* F4874 800D6784 AFB20018 */  sw         $s2, 0x18($sp)
/* F4878 800D6788 00A09021 */  addu       $s2, $a1, $zero
/* F487C 800D678C AFBF0020 */  sw         $ra, 0x20($sp)
/* F4880 800D6790 AFB10014 */  sw         $s1, 0x14($sp)
/* F4884 800D6794 0C035921 */  jal        func_menu_800D6484
/* F4888 800D6798 AFB00010 */   sw        $s0, 0x10($sp)
/* F488C 800D679C 02402021 */  addu       $a0, $s2, $zero
/* F4890 800D67A0 24050005 */  addiu      $a1, $zero, 0x5
/* F4894 800D67A4 0C0026F4 */  jal        func_80009BD0
/* F4898 800D67A8 AE620004 */   sw        $v0, 0x4($s3)
/* F489C 800D67AC 00008021 */  addu       $s0, $zero, $zero
/* F48A0 800D67B0 02608821 */  addu       $s1, $s3, $zero
.Lmenu_800D67B4:
/* F48A4 800D67B4 8E620004 */  lw         $v0, 0x4($s3)
/* F48A8 800D67B8 0202102A */  slt        $v0, $s0, $v0
/* F48AC 800D67BC 10400015 */  beqz       $v0, .Lmenu_800D6814
/* F48B0 800D67C0 02402021 */   addu      $a0, $s2, $zero
/* F48B4 800D67C4 8E420028 */  lw         $v0, 0x28($s2)
/* F48B8 800D67C8 844400A0 */  lh         $a0, 0xA0($v0)
/* F48BC 800D67CC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F48C0 800D67D0 0040F809 */  jalr       $v0
/* F48C4 800D67D4 02442021 */   addu      $a0, $s2, $a0
/* F48C8 800D67D8 8A460044 */  lwl        $a2, 0x44($s2)
/* F48CC 800D67DC 9A460047 */  lwr        $a2, 0x47($s2)
/* F48D0 800D67E0 8A470048 */  lwl        $a3, 0x48($s2)
/* F48D4 800D67E4 9A47004B */  lwr        $a3, 0x4B($s2)
/* F48D8 800D67E8 AA260018 */  swl        $a2, 0x18($s1)
/* F48DC 800D67EC BA26001B */  swr        $a2, 0x1B($s1)
/* F48E0 800D67F0 AA27001C */  swl        $a3, 0x1C($s1)
/* F48E4 800D67F4 BA27001F */  swr        $a3, 0x1F($s1)
/* F48E8 800D67F8 0C002680 */  jal        func_80009A00
/* F48EC 800D67FC 02402021 */   addu      $a0, $s2, $zero
/* F48F0 800D6800 26310008 */  addiu      $s1, $s1, 0x8
/* F48F4 800D6804 02701821 */  addu       $v1, $s3, $s0
/* F48F8 800D6808 26100001 */  addiu      $s0, $s0, 0x1
/* F48FC 800D680C 080359ED */  j          .Lmenu_800D67B4
/* F4900 800D6810 A0620158 */   sb        $v0, 0x158($v1)
.Lmenu_800D6814:
/* F4904 800D6814 0C0026F4 */  jal        func_80009BD0
/* F4908 800D6818 24050006 */   addiu     $a1, $zero, 0x6
/* F490C 800D681C 8FBF0020 */  lw         $ra, 0x20($sp)
/* F4910 800D6820 8FB3001C */  lw         $s3, 0x1C($sp)
/* F4914 800D6824 8FB20018 */  lw         $s2, 0x18($sp)
/* F4918 800D6828 8FB10014 */  lw         $s1, 0x14($sp)
/* F491C 800D682C 8FB00010 */  lw         $s0, 0x10($sp)
/* F4920 800D6830 03E00008 */  jr         $ra
/* F4924 800D6834 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D6838
/* F4928 800D6838 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F492C 800D683C AFB20018 */  sw         $s2, 0x18($sp)
/* F4930 800D6840 00809021 */  addu       $s2, $a0, $zero
/* F4934 800D6844 AFB10014 */  sw         $s1, 0x14($sp)
/* F4938 800D6848 00A08821 */  addu       $s1, $a1, $zero
/* F493C 800D684C AFBF0020 */  sw         $ra, 0x20($sp)
/* F4940 800D6850 AFB3001C */  sw         $s3, 0x1C($sp)
/* F4944 800D6854 0C035921 */  jal        func_menu_800D6484
/* F4948 800D6858 AFB00010 */   sw        $s0, 0x10($sp)
/* F494C 800D685C 02202021 */  addu       $a0, $s1, $zero
/* F4950 800D6860 24050005 */  addiu      $a1, $zero, 0x5
/* F4954 800D6864 0C0026F4 */  jal        func_80009BD0
/* F4958 800D6868 AE420008 */   sw        $v0, 0x8($s2)
/* F495C 800D686C 00008021 */  addu       $s0, $zero, $zero
/* F4960 800D6870 8E220028 */  lw         $v0, 0x28($s1)
/* F4964 800D6874 24130188 */  addiu      $s3, $zero, 0x188
/* F4968 800D6878 844400A0 */  lh         $a0, 0xA0($v0)
/* F496C 800D687C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4970 800D6880 0040F809 */  jalr       $v0
/* F4974 800D6884 02242021 */   addu      $a0, $s1, $a0
/* F4978 800D6888 8A260044 */  lwl        $a2, 0x44($s1)
/* F497C 800D688C 9A260047 */  lwr        $a2, 0x47($s1)
/* F4980 800D6890 8A270048 */  lwl        $a3, 0x48($s1)
/* F4984 800D6894 9A27004B */  lwr        $a3, 0x4B($s1)
/* F4988 800D6898 AA460180 */  swl        $a2, 0x180($s2)
/* F498C 800D689C BA460183 */  swr        $a2, 0x183($s2)
/* F4990 800D68A0 AA470184 */  swl        $a3, 0x184($s2)
/* F4994 800D68A4 BA470187 */  swr        $a3, 0x187($s2)
.Lmenu_800D68A8:
/* F4998 800D68A8 8E420008 */  lw         $v0, 0x8($s2)
/* F499C 800D68AC 0202102A */  slt        $v0, $s0, $v0
/* F49A0 800D68B0 50400010 */  beql       $v0, $zero, .Lmenu_800D68F4
/* F49A4 800D68B4 02202021 */   addu      $a0, $s1, $zero
/* F49A8 800D68B8 8E220028 */  lw         $v0, 0x28($s1)
/* F49AC 800D68BC 844400A0 */  lh         $a0, 0xA0($v0)
/* F49B0 800D68C0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F49B4 800D68C4 0040F809 */  jalr       $v0
/* F49B8 800D68C8 02242021 */   addu      $a0, $s1, $a0
/* F49BC 800D68CC 02532021 */  addu       $a0, $s2, $s3
/* F49C0 800D68D0 0C0006FA */  jal        func_80001BE8
/* F49C4 800D68D4 26250044 */   addiu     $a1, $s1, 0x44
/* F49C8 800D68D8 0C002680 */  jal        func_80009A00
/* F49CC 800D68DC 02202021 */   addu      $a0, $s1, $zero
/* F49D0 800D68E0 26730004 */  addiu      $s3, $s3, 0x4
/* F49D4 800D68E4 02501821 */  addu       $v1, $s2, $s0
/* F49D8 800D68E8 26100001 */  addiu      $s0, $s0, 0x1
/* F49DC 800D68EC 08035A2A */  j          .Lmenu_800D68A8
/* F49E0 800D68F0 A0620224 */   sb        $v0, 0x224($v1)
.Lmenu_800D68F4:
/* F49E4 800D68F4 0C0026F4 */  jal        func_80009BD0
/* F49E8 800D68F8 24050006 */   addiu     $a1, $zero, 0x6
/* F49EC 800D68FC 3C02800D */  lui        $v0, %hi(D_menu_800CA8FC)
/* F49F0 800D6900 2449A8FC */  addiu      $t1, $v0, %lo(D_menu_800CA8FC)
/* F49F4 800D6904 8D260000 */  lw         $a2, 0x0($t1)
/* F49F8 800D6908 81270004 */  lb         $a3, 0x4($t1)
/* F49FC 800D690C AE460200 */  sw         $a2, 0x200($s2)
/* F4A00 800D6910 A2470204 */  sb         $a3, 0x204($s2)
/* F4A04 800D6914 3C02800D */  lui        $v0, %hi(D_menu_800CA904)
/* F4A08 800D6918 2449A904 */  addiu      $t1, $v0, %lo(D_menu_800CA904)
/* F4A0C 800D691C 89260000 */  lwl        $a2, 0x0($t1)
/* F4A10 800D6920 99260003 */  lwr        $a2, 0x3($t1)
/* F4A14 800D6924 85270004 */  lh         $a3, 0x4($t1)
/* F4A18 800D6928 AA460206 */  swl        $a2, 0x206($s2)
/* F4A1C 800D692C BA460209 */  swr        $a2, 0x209($s2)
/* F4A20 800D6930 A647020A */  sh         $a3, 0x20A($s2)
/* F4A24 800D6934 3C02800D */  lui        $v0, %hi(D_menu_800CA90C)
/* F4A28 800D6938 2449A90C */  addiu      $t1, $v0, %lo(D_menu_800CA90C)
/* F4A2C 800D693C 8D260000 */  lw         $a2, 0x0($t1)
/* F4A30 800D6940 85270004 */  lh         $a3, 0x4($t1)
/* F4A34 800D6944 AE46020C */  sw         $a2, 0x20C($s2)
/* F4A38 800D6948 A6470210 */  sh         $a3, 0x210($s2)
/* F4A3C 800D694C 3C02800D */  lui        $v0, %hi(D_menu_800CA914)
/* F4A40 800D6950 2449A914 */  addiu      $t1, $v0, %lo(D_menu_800CA914)
/* F4A44 800D6954 89260000 */  lwl        $a2, 0x0($t1)
/* F4A48 800D6958 99260003 */  lwr        $a2, 0x3($t1)
/* F4A4C 800D695C 85270004 */  lh         $a3, 0x4($t1)
/* F4A50 800D6960 AA460212 */  swl        $a2, 0x212($s2)
/* F4A54 800D6964 BA460215 */  swr        $a2, 0x215($s2)
/* F4A58 800D6968 A6470216 */  sh         $a3, 0x216($s2)
/* F4A5C 800D696C 3C02800D */  lui        $v0, %hi(D_menu_800CA91C)
/* F4A60 800D6970 8C42A91C */  lw         $v0, %lo(D_menu_800CA91C)($v0)
/* F4A64 800D6974 AE420218 */  sw         $v0, 0x218($s2)
/* F4A68 800D6978 3C02800D */  lui        $v0, %hi(D_menu_800CA920)
/* F4A6C 800D697C 2449A920 */  addiu      $t1, $v0, %lo(D_menu_800CA920)
/* F4A70 800D6980 89260000 */  lwl        $a2, 0x0($t1)
/* F4A74 800D6984 99260003 */  lwr        $a2, 0x3($t1)
/* F4A78 800D6988 85270004 */  lh         $a3, 0x4($t1)
/* F4A7C 800D698C AA46021E */  swl        $a2, 0x21E($s2)
/* F4A80 800D6990 BA460221 */  swr        $a2, 0x221($s2)
/* F4A84 800D6994 A6470222 */  sh         $a3, 0x222($s2)
/* F4A88 800D6998 8FBF0020 */  lw         $ra, 0x20($sp)
/* F4A8C 800D699C 8FB3001C */  lw         $s3, 0x1C($sp)
/* F4A90 800D69A0 8FB20018 */  lw         $s2, 0x18($sp)
/* F4A94 800D69A4 8FB10014 */  lw         $s1, 0x14($sp)
/* F4A98 800D69A8 8FB00010 */  lw         $s0, 0x10($sp)
/* F4A9C 800D69AC 03E00008 */  jr         $ra
/* F4AA0 800D69B0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D69B4
/* F4AA4 800D69B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F4AA8 800D69B8 AFB40020 */  sw         $s4, 0x20($sp)
/* F4AAC 800D69BC 0080A021 */  addu       $s4, $a0, $zero
/* F4AB0 800D69C0 AFB20018 */  sw         $s2, 0x18($sp)
/* F4AB4 800D69C4 00A09021 */  addu       $s2, $a1, $zero
/* F4AB8 800D69C8 AFBF0024 */  sw         $ra, 0x24($sp)
/* F4ABC 800D69CC AFB3001C */  sw         $s3, 0x1C($sp)
/* F4AC0 800D69D0 AFB10014 */  sw         $s1, 0x14($sp)
/* F4AC4 800D69D4 0C035921 */  jal        func_menu_800D6484
/* F4AC8 800D69D8 AFB00010 */   sw        $s0, 0x10($sp)
/* F4ACC 800D69DC 02402021 */  addu       $a0, $s2, $zero
/* F4AD0 800D69E0 24050005 */  addiu      $a1, $zero, 0x5
/* F4AD4 800D69E4 0C0026F4 */  jal        func_80009BD0
/* F4AD8 800D69E8 AE82000C */   sw        $v0, 0xC($s4)
/* F4ADC 800D69EC 8E420028 */  lw         $v0, 0x28($s2)
/* F4AE0 800D69F0 844400A0 */  lh         $a0, 0xA0($v0)
/* F4AE4 800D69F4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4AE8 800D69F8 0040F809 */  jalr       $v0
/* F4AEC 800D69FC 02442021 */   addu      $a0, $s2, $a0
/* F4AF0 800D6A00 8A460044 */  lwl        $a2, 0x44($s2)
/* F4AF4 800D6A04 9A460047 */  lwr        $a2, 0x47($s2)
/* F4AF8 800D6A08 8A470048 */  lwl        $a3, 0x48($s2)
/* F4AFC 800D6A0C 9A47004B */  lwr        $a3, 0x4B($s2)
/* F4B00 800D6A10 AA860242 */  swl        $a2, 0x242($s4)
/* F4B04 800D6A14 BA860245 */  swr        $a2, 0x245($s4)
/* F4B08 800D6A18 AA870246 */  swl        $a3, 0x246($s4)
/* F4B0C 800D6A1C BA870249 */  swr        $a3, 0x249($s4)
/* F4B10 800D6A20 8E420028 */  lw         $v0, 0x28($s2)
/* F4B14 800D6A24 00008821 */  addu       $s1, $zero, $zero
/* F4B18 800D6A28 844400A0 */  lh         $a0, 0xA0($v0)
/* F4B1C 800D6A2C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4B20 800D6A30 0040F809 */  jalr       $v0
/* F4B24 800D6A34 02442021 */   addu      $a0, $s2, $a0
/* F4B28 800D6A38 02808021 */  addu       $s0, $s4, $zero
/* F4B2C 800D6A3C 02009821 */  addu       $s3, $s0, $zero
/* F4B30 800D6A40 8A460044 */  lwl        $a2, 0x44($s2)
/* F4B34 800D6A44 9A460047 */  lwr        $a2, 0x47($s2)
/* F4B38 800D6A48 8A470048 */  lwl        $a3, 0x48($s2)
/* F4B3C 800D6A4C 9A47004B */  lwr        $a3, 0x4B($s2)
/* F4B40 800D6A50 AA86024A */  swl        $a2, 0x24A($s4)
/* F4B44 800D6A54 BA86024D */  swr        $a2, 0x24D($s4)
/* F4B48 800D6A58 AA87024E */  swl        $a3, 0x24E($s4)
/* F4B4C 800D6A5C BA870251 */  swr        $a3, 0x251($s4)
.Lmenu_800D6A60:
/* F4B50 800D6A60 8E82000C */  lw         $v0, 0xC($s4)
/* F4B54 800D6A64 0222102A */  slt        $v0, $s1, $v0
/* F4B58 800D6A68 50400019 */  beql       $v0, $zero, .Lmenu_800D6AD0
/* F4B5C 800D6A6C 02402021 */   addu      $a0, $s2, $zero
/* F4B60 800D6A70 8E420028 */  lw         $v0, 0x28($s2)
/* F4B64 800D6A74 844400A0 */  lh         $a0, 0xA0($v0)
/* F4B68 800D6A78 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4B6C 800D6A7C 0040F809 */  jalr       $v0
/* F4B70 800D6A80 02442021 */   addu      $a0, $s2, $a0
/* F4B74 800D6A84 8A460044 */  lwl        $a2, 0x44($s2)
/* F4B78 800D6A88 9A460047 */  lwr        $a2, 0x47($s2)
/* F4B7C 800D6A8C 8A470048 */  lwl        $a3, 0x48($s2)
/* F4B80 800D6A90 9A47004B */  lwr        $a3, 0x4B($s2)
/* F4B84 800D6A94 AA060252 */  swl        $a2, 0x252($s0)
/* F4B88 800D6A98 BA060255 */  swr        $a2, 0x255($s0)
/* F4B8C 800D6A9C AA070256 */  swl        $a3, 0x256($s0)
/* F4B90 800D6AA0 BA070259 */  swr        $a3, 0x259($s0)
/* F4B94 800D6AA4 0C002680 */  jal        func_80009A00
/* F4B98 800D6AA8 02402021 */   addu      $a0, $s2, $zero
/* F4B9C 800D6AAC 02402021 */  addu       $a0, $s2, $zero
/* F4BA0 800D6AB0 0C002680 */  jal        func_80009A00
/* F4BA4 800D6AB4 AE620344 */   sw        $v0, 0x344($s3)
/* F4BA8 800D6AB8 26730004 */  addiu      $s3, $s3, 0x4
/* F4BAC 800D6ABC 26100008 */  addiu      $s0, $s0, 0x8
/* F4BB0 800D6AC0 02911821 */  addu       $v1, $s4, $s1
/* F4BB4 800D6AC4 26310001 */  addiu      $s1, $s1, 0x1
/* F4BB8 800D6AC8 08035A98 */  j          .Lmenu_800D6A60
/* F4BBC 800D6ACC A06203BC */   sb        $v0, 0x3BC($v1)
.Lmenu_800D6AD0:
/* F4BC0 800D6AD0 0C0026F4 */  jal        func_80009BD0
/* F4BC4 800D6AD4 24050006 */   addiu     $a1, $zero, 0x6
/* F4BC8 800D6AD8 8FBF0024 */  lw         $ra, 0x24($sp)
/* F4BCC 800D6ADC 8FB40020 */  lw         $s4, 0x20($sp)
/* F4BD0 800D6AE0 8FB3001C */  lw         $s3, 0x1C($sp)
/* F4BD4 800D6AE4 8FB20018 */  lw         $s2, 0x18($sp)
/* F4BD8 800D6AE8 8FB10014 */  lw         $s1, 0x14($sp)
/* F4BDC 800D6AEC 8FB00010 */  lw         $s0, 0x10($sp)
/* F4BE0 800D6AF0 03E00008 */  jr         $ra
/* F4BE4 800D6AF4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D6AF8
/* F4BE8 800D6AF8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F4BEC 800D6AFC AFB40020 */  sw         $s4, 0x20($sp)
/* F4BF0 800D6B00 0080A021 */  addu       $s4, $a0, $zero
/* F4BF4 800D6B04 AFB10014 */  sw         $s1, 0x14($sp)
/* F4BF8 800D6B08 00A08821 */  addu       $s1, $a1, $zero
/* F4BFC 800D6B0C AFBF0024 */  sw         $ra, 0x24($sp)
/* F4C00 800D6B10 AFB3001C */  sw         $s3, 0x1C($sp)
/* F4C04 800D6B14 AFB20018 */  sw         $s2, 0x18($sp)
/* F4C08 800D6B18 0C035921 */  jal        func_menu_800D6484
/* F4C0C 800D6B1C AFB00010 */   sw        $s0, 0x10($sp)
/* F4C10 800D6B20 02202021 */  addu       $a0, $s1, $zero
/* F4C14 800D6B24 24050005 */  addiu      $a1, $zero, 0x5
/* F4C18 800D6B28 0C0026F4 */  jal        func_80009BD0
/* F4C1C 800D6B2C AE820010 */   sw        $v0, 0x10($s4)
/* F4C20 800D6B30 8E220028 */  lw         $v0, 0x28($s1)
/* F4C24 800D6B34 00009021 */  addu       $s2, $zero, $zero
/* F4C28 800D6B38 844400A0 */  lh         $a0, 0xA0($v0)
/* F4C2C 800D6B3C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4C30 800D6B40 0040F809 */  jalr       $v0
/* F4C34 800D6B44 02242021 */   addu      $a0, $s1, $a0
/* F4C38 800D6B48 268403DA */  addiu      $a0, $s4, 0x3DA
/* F4C3C 800D6B4C 26300044 */  addiu      $s0, $s1, 0x44
/* F4C40 800D6B50 02002821 */  addu       $a1, $s0, $zero
/* F4C44 800D6B54 0C000708 */  jal        func_80001C20
/* F4C48 800D6B58 24060008 */   addiu     $a2, $zero, 0x8
/* F4C4C 800D6B5C 8E220028 */  lw         $v0, 0x28($s1)
/* F4C50 800D6B60 241303EA */  addiu      $s3, $zero, 0x3EA
/* F4C54 800D6B64 844400A0 */  lh         $a0, 0xA0($v0)
/* F4C58 800D6B68 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4C5C 800D6B6C 0040F809 */  jalr       $v0
/* F4C60 800D6B70 02242021 */   addu      $a0, $s1, $a0
/* F4C64 800D6B74 268403E2 */  addiu      $a0, $s4, 0x3E2
/* F4C68 800D6B78 02002821 */  addu       $a1, $s0, $zero
/* F4C6C 800D6B7C 0C000708 */  jal        func_80001C20
/* F4C70 800D6B80 24060008 */   addiu     $a2, $zero, 0x8
/* F4C74 800D6B84 02808021 */  addu       $s0, $s4, $zero
.Lmenu_800D6B88:
/* F4C78 800D6B88 8E820010 */  lw         $v0, 0x10($s4)
/* F4C7C 800D6B8C 0242102A */  slt        $v0, $s2, $v0
/* F4C80 800D6B90 10400015 */  beqz       $v0, .Lmenu_800D6BE8
/* F4C84 800D6B94 02202021 */   addu      $a0, $s1, $zero
/* F4C88 800D6B98 8E220028 */  lw         $v0, 0x28($s1)
/* F4C8C 800D6B9C 844400A0 */  lh         $a0, 0xA0($v0)
/* F4C90 800D6BA0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4C94 800D6BA4 0040F809 */  jalr       $v0
/* F4C98 800D6BA8 02242021 */   addu      $a0, $s1, $a0
/* F4C9C 800D6BAC 02932021 */  addu       $a0, $s4, $s3
/* F4CA0 800D6BB0 26250044 */  addiu      $a1, $s1, 0x44
/* F4CA4 800D6BB4 0C000708 */  jal        func_80001C20
/* F4CA8 800D6BB8 24060008 */   addiu     $a2, $zero, 0x8
/* F4CAC 800D6BBC 0C002680 */  jal        func_80009A00
/* F4CB0 800D6BC0 02202021 */   addu      $a0, $s1, $zero
/* F4CB4 800D6BC4 02202021 */  addu       $a0, $s1, $zero
/* F4CB8 800D6BC8 0C002680 */  jal        func_80009A00
/* F4CBC 800D6BCC AE0204DC */   sw        $v0, 0x4DC($s0)
/* F4CC0 800D6BD0 26100004 */  addiu      $s0, $s0, 0x4
/* F4CC4 800D6BD4 26730008 */  addiu      $s3, $s3, 0x8
/* F4CC8 800D6BD8 02921821 */  addu       $v1, $s4, $s2
/* F4CCC 800D6BDC 26520001 */  addiu      $s2, $s2, 0x1
/* F4CD0 800D6BE0 08035AE2 */  j          .Lmenu_800D6B88
/* F4CD4 800D6BE4 A0620554 */   sb        $v0, 0x554($v1)
.Lmenu_800D6BE8:
/* F4CD8 800D6BE8 0C0026F4 */  jal        func_80009BD0
/* F4CDC 800D6BEC 24050006 */   addiu     $a1, $zero, 0x6
/* F4CE0 800D6BF0 8FBF0024 */  lw         $ra, 0x24($sp)
/* F4CE4 800D6BF4 8FB40020 */  lw         $s4, 0x20($sp)
/* F4CE8 800D6BF8 8FB3001C */  lw         $s3, 0x1C($sp)
/* F4CEC 800D6BFC 8FB20018 */  lw         $s2, 0x18($sp)
/* F4CF0 800D6C00 8FB10014 */  lw         $s1, 0x14($sp)
/* F4CF4 800D6C04 8FB00010 */  lw         $s0, 0x10($sp)
/* F4CF8 800D6C08 03E00008 */  jr         $ra
/* F4CFC 800D6C0C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D6C10
/* F4D00 800D6C10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F4D04 800D6C14 AFB3001C */  sw         $s3, 0x1C($sp)
/* F4D08 800D6C18 00809821 */  addu       $s3, $a0, $zero
/* F4D0C 800D6C1C AFB20018 */  sw         $s2, 0x18($sp)
/* F4D10 800D6C20 00A09021 */  addu       $s2, $a1, $zero
/* F4D14 800D6C24 AFBF0024 */  sw         $ra, 0x24($sp)
/* F4D18 800D6C28 AFB40020 */  sw         $s4, 0x20($sp)
/* F4D1C 800D6C2C AFB10014 */  sw         $s1, 0x14($sp)
/* F4D20 800D6C30 0C035921 */  jal        func_menu_800D6484
/* F4D24 800D6C34 AFB00010 */   sw        $s0, 0x10($sp)
/* F4D28 800D6C38 02402021 */  addu       $a0, $s2, $zero
/* F4D2C 800D6C3C 24050005 */  addiu      $a1, $zero, 0x5
/* F4D30 800D6C40 0C0026F4 */  jal        func_80009BD0
/* F4D34 800D6C44 0040A021 */   addu      $s4, $v0, $zero
/* F4D38 800D6C48 00008821 */  addu       $s1, $zero, $zero
/* F4D3C 800D6C4C 24100572 */  addiu      $s0, $zero, 0x572
.Lmenu_800D6C50:
/* F4D40 800D6C50 0234102A */  slt        $v0, $s1, $s4
/* F4D44 800D6C54 1040000C */  beqz       $v0, .Lmenu_800D6C88
/* F4D48 800D6C58 26310001 */   addiu     $s1, $s1, 0x1
/* F4D4C 800D6C5C 8E420028 */  lw         $v0, 0x28($s2)
/* F4D50 800D6C60 844400A0 */  lh         $a0, 0xA0($v0)
/* F4D54 800D6C64 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4D58 800D6C68 0040F809 */  jalr       $v0
/* F4D5C 800D6C6C 02442021 */   addu      $a0, $s2, $a0
/* F4D60 800D6C70 02702021 */  addu       $a0, $s3, $s0
/* F4D64 800D6C74 26450044 */  addiu      $a1, $s2, 0x44
/* F4D68 800D6C78 0C000708 */  jal        func_80001C20
/* F4D6C 800D6C7C 24060008 */   addiu     $a2, $zero, 0x8
/* F4D70 800D6C80 08035B14 */  j          .Lmenu_800D6C50
/* F4D74 800D6C84 26100008 */   addiu     $s0, $s0, 0x8
.Lmenu_800D6C88:
/* F4D78 800D6C88 02402021 */  addu       $a0, $s2, $zero
/* F4D7C 800D6C8C 0C0026F4 */  jal        func_80009BD0
/* F4D80 800D6C90 24050006 */   addiu     $a1, $zero, 0x6
/* F4D84 800D6C94 8FBF0024 */  lw         $ra, 0x24($sp)
/* F4D88 800D6C98 8FB40020 */  lw         $s4, 0x20($sp)
/* F4D8C 800D6C9C 8FB3001C */  lw         $s3, 0x1C($sp)
/* F4D90 800D6CA0 8FB20018 */  lw         $s2, 0x18($sp)
/* F4D94 800D6CA4 8FB10014 */  lw         $s1, 0x14($sp)
/* F4D98 800D6CA8 8FB00010 */  lw         $s0, 0x10($sp)
/* F4D9C 800D6CAC 03E00008 */  jr         $ra
/* F4DA0 800D6CB0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D6CB4
/* F4DA4 800D6CB4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F4DA8 800D6CB8 AFB3001C */  sw         $s3, 0x1C($sp)
/* F4DAC 800D6CBC 00809821 */  addu       $s3, $a0, $zero
/* F4DB0 800D6CC0 AFB20018 */  sw         $s2, 0x18($sp)
/* F4DB4 800D6CC4 00A09021 */  addu       $s2, $a1, $zero
/* F4DB8 800D6CC8 AFBF0020 */  sw         $ra, 0x20($sp)
/* F4DBC 800D6CCC AFB10014 */  sw         $s1, 0x14($sp)
/* F4DC0 800D6CD0 0C035921 */  jal        func_menu_800D6484
/* F4DC4 800D6CD4 AFB00010 */   sw        $s0, 0x10($sp)
/* F4DC8 800D6CD8 02402021 */  addu       $a0, $s2, $zero
/* F4DCC 800D6CDC 24050005 */  addiu      $a1, $zero, 0x5
/* F4DD0 800D6CE0 0C0026F4 */  jal        func_80009BD0
/* F4DD4 800D6CE4 AE620014 */   sw        $v0, 0x14($s3)
/* F4DD8 800D6CE8 00008821 */  addu       $s1, $zero, $zero
/* F4DDC 800D6CEC 241006B2 */  addiu      $s0, $zero, 0x6B2
.Lmenu_800D6CF0:
/* F4DE0 800D6CF0 8E620014 */  lw         $v0, 0x14($s3)
/* F4DE4 800D6CF4 0222102A */  slt        $v0, $s1, $v0
/* F4DE8 800D6CF8 1040000C */  beqz       $v0, .Lmenu_800D6D2C
/* F4DEC 800D6CFC 26310001 */   addiu     $s1, $s1, 0x1
/* F4DF0 800D6D00 8E420028 */  lw         $v0, 0x28($s2)
/* F4DF4 800D6D04 844400A0 */  lh         $a0, 0xA0($v0)
/* F4DF8 800D6D08 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4DFC 800D6D0C 0040F809 */  jalr       $v0
/* F4E00 800D6D10 02442021 */   addu      $a0, $s2, $a0
/* F4E04 800D6D14 02702021 */  addu       $a0, $s3, $s0
/* F4E08 800D6D18 26450044 */  addiu      $a1, $s2, 0x44
/* F4E0C 800D6D1C 0C000708 */  jal        func_80001C20
/* F4E10 800D6D20 24060008 */   addiu     $a2, $zero, 0x8
/* F4E14 800D6D24 08035B3C */  j          .Lmenu_800D6CF0
/* F4E18 800D6D28 26100008 */   addiu     $s0, $s0, 0x8
.Lmenu_800D6D2C:
/* F4E1C 800D6D2C 02402021 */  addu       $a0, $s2, $zero
/* F4E20 800D6D30 0C0026F4 */  jal        func_80009BD0
/* F4E24 800D6D34 24050006 */   addiu     $a1, $zero, 0x6
/* F4E28 800D6D38 8FBF0020 */  lw         $ra, 0x20($sp)
/* F4E2C 800D6D3C 8FB3001C */  lw         $s3, 0x1C($sp)
/* F4E30 800D6D40 8FB20018 */  lw         $s2, 0x18($sp)
/* F4E34 800D6D44 8FB10014 */  lw         $s1, 0x14($sp)
/* F4E38 800D6D48 8FB00010 */  lw         $s0, 0x10($sp)
/* F4E3C 800D6D4C 03E00008 */  jr         $ra
/* F4E40 800D6D50 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D6D54
/* F4E44 800D6D54 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F4E48 800D6D58 AFB3001C */  sw         $s3, 0x1C($sp)
/* F4E4C 800D6D5C 00809821 */  addu       $s3, $a0, $zero
/* F4E50 800D6D60 AFB20018 */  sw         $s2, 0x18($sp)
/* F4E54 800D6D64 00A09021 */  addu       $s2, $a1, $zero
/* F4E58 800D6D68 AFBF0024 */  sw         $ra, 0x24($sp)
/* F4E5C 800D6D6C AFB40020 */  sw         $s4, 0x20($sp)
/* F4E60 800D6D70 AFB10014 */  sw         $s1, 0x14($sp)
/* F4E64 800D6D74 0C035921 */  jal        func_menu_800D6484
/* F4E68 800D6D78 AFB00010 */   sw        $s0, 0x10($sp)
/* F4E6C 800D6D7C 02402021 */  addu       $a0, $s2, $zero
/* F4E70 800D6D80 24050005 */  addiu      $a1, $zero, 0x5
/* F4E74 800D6D84 0C0026F4 */  jal        func_80009BD0
/* F4E78 800D6D88 0040A021 */   addu      $s4, $v0, $zero
/* F4E7C 800D6D8C 00008821 */  addu       $s1, $zero, $zero
/* F4E80 800D6D90 24100741 */  addiu      $s0, $zero, 0x741
.Lmenu_800D6D94:
/* F4E84 800D6D94 0234102A */  slt        $v0, $s1, $s4
/* F4E88 800D6D98 1040000C */  beqz       $v0, .Lmenu_800D6DCC
/* F4E8C 800D6D9C 26310001 */   addiu     $s1, $s1, 0x1
/* F4E90 800D6DA0 8E420028 */  lw         $v0, 0x28($s2)
/* F4E94 800D6DA4 844400A0 */  lh         $a0, 0xA0($v0)
/* F4E98 800D6DA8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4E9C 800D6DAC 0040F809 */  jalr       $v0
/* F4EA0 800D6DB0 02442021 */   addu      $a0, $s2, $a0
/* F4EA4 800D6DB4 02702021 */  addu       $a0, $s3, $s0
/* F4EA8 800D6DB8 26450044 */  addiu      $a1, $s2, 0x44
/* F4EAC 800D6DBC 0C000708 */  jal        func_80001C20
/* F4EB0 800D6DC0 24060008 */   addiu     $a2, $zero, 0x8
/* F4EB4 800D6DC4 08035B65 */  j          .Lmenu_800D6D94
/* F4EB8 800D6DC8 26100008 */   addiu     $s0, $s0, 0x8
.Lmenu_800D6DCC:
/* F4EBC 800D6DCC 02402021 */  addu       $a0, $s2, $zero
/* F4EC0 800D6DD0 0C0026F4 */  jal        func_80009BD0
/* F4EC4 800D6DD4 24050006 */   addiu     $a1, $zero, 0x6
/* F4EC8 800D6DD8 8FBF0024 */  lw         $ra, 0x24($sp)
/* F4ECC 800D6DDC 8FB40020 */  lw         $s4, 0x20($sp)
/* F4ED0 800D6DE0 8FB3001C */  lw         $s3, 0x1C($sp)
/* F4ED4 800D6DE4 8FB20018 */  lw         $s2, 0x18($sp)
/* F4ED8 800D6DE8 8FB10014 */  lw         $s1, 0x14($sp)
/* F4EDC 800D6DEC 8FB00010 */  lw         $s0, 0x10($sp)
/* F4EE0 800D6DF0 03E00008 */  jr         $ra
/* F4EE4 800D6DF4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D6DF8
/* F4EE8 800D6DF8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F4EEC 800D6DFC AFB10014 */  sw         $s1, 0x14($sp)
/* F4EF0 800D6E00 00808821 */  addu       $s1, $a0, $zero
/* F4EF4 800D6E04 AFB00010 */  sw         $s0, 0x10($sp)
/* F4EF8 800D6E08 00A08021 */  addu       $s0, $a1, $zero
/* F4EFC 800D6E0C 3C02800D */  lui        $v0, %hi(jtbl_menu_800CA928)
/* F4F00 800D6E10 AFB20018 */  sw         $s2, 0x18($sp)
/* F4F04 800D6E14 2452A928 */  addiu      $s2, $v0, %lo(jtbl_menu_800CA928)
/* F4F08 800D6E18 AFBF001C */  sw         $ra, 0x1C($sp)
.Lmenu_800D6E1C:
/* F4F0C 800D6E1C 8E020028 */  lw         $v0, 0x28($s0)
/* F4F10 800D6E20 844400A0 */  lh         $a0, 0xA0($v0)
/* F4F14 800D6E24 8C4200A4 */  lw         $v0, 0xA4($v0)
/* F4F18 800D6E28 0040F809 */  jalr       $v0
/* F4F1C 800D6E2C 02042021 */   addu      $a0, $s0, $a0
/* F4F20 800D6E30 1040003D */  beqz       $v0, .Lmenu_800D6F28
/* F4F24 800D6E34 2443FFD9 */   addiu     $v1, $v0, -0x27
/* F4F28 800D6E38 2C620009 */  sltiu      $v0, $v1, 0x9
/* F4F2C 800D6E3C 10400032 */  beqz       $v0, .Lmenu_800D6F08
/* F4F30 800D6E40 00031080 */   sll       $v0, $v1, 2
/* F4F34 800D6E44 00521021 */  addu       $v0, $v0, $s2
/* F4F38 800D6E48 8C420000 */  lw         $v0, 0x0($v0)
/* F4F3C 800D6E4C 00400008 */  jr         $v0
/* F4F40 800D6E50 00000000 */   nop
glabel Lmenu_800D6E54
/* F4F44 800D6E54 02202021 */  addu       $a0, $s1, $zero
/* F4F48 800D6E58 0C035933 */  jal        func_menu_800D64CC
/* F4F4C 800D6E5C 02002821 */   addu      $a1, $s0, $zero
/* F4F50 800D6E60 08035B87 */  j          .Lmenu_800D6E1C
/* F4F54 800D6E64 00000000 */   nop
glabel Lmenu_800D6E68
/* F4F58 800D6E68 02202021 */  addu       $a0, $s1, $zero
/* F4F5C 800D6E6C 0C03597E */  jal        func_menu_800D65F8
/* F4F60 800D6E70 02002821 */   addu      $a1, $s0, $zero
/* F4F64 800D6E74 08035B87 */  j          .Lmenu_800D6E1C
/* F4F68 800D6E78 00000000 */   nop
glabel Lmenu_800D6E7C
/* F4F6C 800D6E7C 02202021 */  addu       $a0, $s1, $zero
/* F4F70 800D6E80 0C0359DE */  jal        func_menu_800D6778
/* F4F74 800D6E84 02002821 */   addu      $a1, $s0, $zero
/* F4F78 800D6E88 08035B87 */  j          .Lmenu_800D6E1C
/* F4F7C 800D6E8C 00000000 */   nop
glabel Lmenu_800D6E90
/* F4F80 800D6E90 02202021 */  addu       $a0, $s1, $zero
/* F4F84 800D6E94 0C035A0E */  jal        func_menu_800D6838
/* F4F88 800D6E98 02002821 */   addu      $a1, $s0, $zero
/* F4F8C 800D6E9C 08035B87 */  j          .Lmenu_800D6E1C
/* F4F90 800D6EA0 00000000 */   nop
glabel Lmenu_800D6EA4
/* F4F94 800D6EA4 02202021 */  addu       $a0, $s1, $zero
/* F4F98 800D6EA8 0C035A6D */  jal        func_menu_800D69B4
/* F4F9C 800D6EAC 02002821 */   addu      $a1, $s0, $zero
/* F4FA0 800D6EB0 08035B87 */  j          .Lmenu_800D6E1C
/* F4FA4 800D6EB4 00000000 */   nop
glabel Lmenu_800D6EB8
/* F4FA8 800D6EB8 02202021 */  addu       $a0, $s1, $zero
/* F4FAC 800D6EBC 0C035ABE */  jal        func_menu_800D6AF8
/* F4FB0 800D6EC0 02002821 */   addu      $a1, $s0, $zero
/* F4FB4 800D6EC4 08035B87 */  j          .Lmenu_800D6E1C
/* F4FB8 800D6EC8 00000000 */   nop
glabel Lmenu_800D6ECC
/* F4FBC 800D6ECC 02202021 */  addu       $a0, $s1, $zero
/* F4FC0 800D6ED0 0C035B04 */  jal        func_menu_800D6C10
/* F4FC4 800D6ED4 02002821 */   addu      $a1, $s0, $zero
/* F4FC8 800D6ED8 08035B87 */  j          .Lmenu_800D6E1C
/* F4FCC 800D6EDC 00000000 */   nop
glabel Lmenu_800D6EE0
/* F4FD0 800D6EE0 02202021 */  addu       $a0, $s1, $zero
/* F4FD4 800D6EE4 0C035B2D */  jal        func_menu_800D6CB4
/* F4FD8 800D6EE8 02002821 */   addu      $a1, $s0, $zero
/* F4FDC 800D6EEC 08035B87 */  j          .Lmenu_800D6E1C
/* F4FE0 800D6EF0 00000000 */   nop
glabel Lmenu_800D6EF4
/* F4FE4 800D6EF4 02202021 */  addu       $a0, $s1, $zero
/* F4FE8 800D6EF8 0C035B55 */  jal        func_menu_800D6D54
/* F4FEC 800D6EFC 02002821 */   addu      $a1, $s0, $zero
/* F4FF0 800D6F00 08035B87 */  j          .Lmenu_800D6E1C
/* F4FF4 800D6F04 00000000 */   nop
.Lmenu_800D6F08:
/* F4FF8 800D6F08 8E020028 */  lw         $v0, 0x28($s0)
/* F4FFC 800D6F0C 24050013 */  addiu      $a1, $zero, 0x13
/* F5000 800D6F10 84440098 */  lh         $a0, 0x98($v0)
/* F5004 800D6F14 8C42009C */  lw         $v0, 0x9C($v0)
/* F5008 800D6F18 0040F809 */  jalr       $v0
/* F500C 800D6F1C 02042021 */   addu      $a0, $s0, $a0
/* F5010 800D6F20 08035B87 */  j          .Lmenu_800D6E1C
/* F5014 800D6F24 00000000 */   nop
.Lmenu_800D6F28:
/* F5018 800D6F28 8FBF001C */  lw         $ra, 0x1C($sp)
/* F501C 800D6F2C 8FB20018 */  lw         $s2, 0x18($sp)
/* F5020 800D6F30 8FB10014 */  lw         $s1, 0x14($sp)
/* F5024 800D6F34 8FB00010 */  lw         $s0, 0x10($sp)
/* F5028 800D6F38 03E00008 */  jr         $ra
/* F502C 800D6F3C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D6F40
/* F5030 800D6F40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F5034 800D6F44 000528C0 */  sll        $a1, $a1, 3
/* F5038 800D6F48 24A50018 */  addiu      $a1, $a1, 0x18
/* F503C 800D6F4C 00852821 */  addu       $a1, $a0, $a1
/* F5040 800D6F50 00C02021 */  addu       $a0, $a2, $zero
/* F5044 800D6F54 AFBF0010 */  sw         $ra, 0x10($sp)
/* F5048 800D6F58 0C000708 */  jal        func_80001C20
/* F504C 800D6F5C 24060008 */   addiu     $a2, $zero, 0x8
/* F5050 800D6F60 8FBF0010 */  lw         $ra, 0x10($sp)
/* F5054 800D6F64 03E00008 */  jr         $ra
/* F5058 800D6F68 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D6F6C
/* F505C 800D6F6C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F5060 800D6F70 AFB00010 */  sw         $s0, 0x10($sp)
/* F5064 800D6F74 00808021 */  addu       $s0, $a0, $zero
/* F5068 800D6F78 AFB10014 */  sw         $s1, 0x14($sp)
/* F506C 800D6F7C 00A08821 */  addu       $s1, $a1, $zero
/* F5070 800D6F80 00C02021 */  addu       $a0, $a2, $zero
/* F5074 800D6F84 26050180 */  addiu      $a1, $s0, 0x180
/* F5078 800D6F88 24060008 */  addiu      $a2, $zero, 0x8
/* F507C 800D6F8C AFB20018 */  sw         $s2, 0x18($sp)
/* F5080 800D6F90 AFBF001C */  sw         $ra, 0x1C($sp)
/* F5084 800D6F94 0C000708 */  jal        func_80001C20
/* F5088 800D6F98 00E09021 */   addu      $s2, $a3, $zero
/* F508C 800D6F9C 02402021 */  addu       $a0, $s2, $zero
/* F5090 800D6FA0 00118880 */  sll        $s1, $s1, 2
/* F5094 800D6FA4 26310188 */  addiu      $s1, $s1, 0x188
/* F5098 800D6FA8 0C0006FA */  jal        func_80001BE8
/* F509C 800D6FAC 02112821 */   addu      $a1, $s0, $s1
/* F50A0 800D6FB0 02402021 */  addu       $a0, $s2, $zero
/* F50A4 800D6FB4 26050200 */  addiu      $a1, $s0, 0x200
/* F50A8 800D6FB8 0C0006E0 */  jal        func_80001B80
/* F50AC 800D6FBC 24060005 */   addiu     $a2, $zero, 0x5
/* F50B0 800D6FC0 8FBF001C */  lw         $ra, 0x1C($sp)
/* F50B4 800D6FC4 8FB20018 */  lw         $s2, 0x18($sp)
/* F50B8 800D6FC8 8FB10014 */  lw         $s1, 0x14($sp)
/* F50BC 800D6FCC 8FB00010 */  lw         $s0, 0x10($sp)
/* F50C0 800D6FD0 03E00008 */  jr         $ra
/* F50C4 800D6FD4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D6FD8
/* F50C8 800D6FD8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F50CC 800D6FDC AFB20018 */  sw         $s2, 0x18($sp)
/* F50D0 800D6FE0 00809021 */  addu       $s2, $a0, $zero
/* F50D4 800D6FE4 AFB00010 */  sw         $s0, 0x10($sp)
/* F50D8 800D6FE8 00A08021 */  addu       $s0, $a1, $zero
/* F50DC 800D6FEC 00C02021 */  addu       $a0, $a2, $zero
/* F50E0 800D6FF0 00101080 */  sll        $v0, $s0, 2
/* F50E4 800D6FF4 02421021 */  addu       $v0, $s2, $v0
/* F50E8 800D6FF8 24060008 */  addiu      $a2, $zero, 0x8
/* F50EC 800D6FFC AFBF001C */  sw         $ra, 0x1C($sp)
/* F50F0 800D7000 AFB10014 */  sw         $s1, 0x14($sp)
/* F50F4 800D7004 8C450344 */  lw         $a1, 0x344($v0)
/* F50F8 800D7008 00E08821 */  addu       $s1, $a3, $zero
/* F50FC 800D700C 000528C0 */  sll        $a1, $a1, 3
/* F5100 800D7010 24A50242 */  addiu      $a1, $a1, 0x242
/* F5104 800D7014 0C000708 */  jal        func_80001C20
/* F5108 800D7018 02452821 */   addu      $a1, $s2, $a1
/* F510C 800D701C 02202021 */  addu       $a0, $s1, $zero
/* F5110 800D7020 001080C0 */  sll        $s0, $s0, 3
/* F5114 800D7024 26100252 */  addiu      $s0, $s0, 0x252
/* F5118 800D7028 02502821 */  addu       $a1, $s2, $s0
/* F511C 800D702C 0C000708 */  jal        func_80001C20
/* F5120 800D7030 24060008 */   addiu     $a2, $zero, 0x8
/* F5124 800D7034 8FBF001C */  lw         $ra, 0x1C($sp)
/* F5128 800D7038 8FB20018 */  lw         $s2, 0x18($sp)
/* F512C 800D703C 8FB10014 */  lw         $s1, 0x14($sp)
/* F5130 800D7040 8FB00010 */  lw         $s0, 0x10($sp)
/* F5134 800D7044 03E00008 */  jr         $ra
/* F5138 800D7048 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D704C
/* F513C 800D704C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F5140 800D7050 AFB20018 */  sw         $s2, 0x18($sp)
/* F5144 800D7054 00809021 */  addu       $s2, $a0, $zero
/* F5148 800D7058 AFB00010 */  sw         $s0, 0x10($sp)
/* F514C 800D705C 00A08021 */  addu       $s0, $a1, $zero
/* F5150 800D7060 00C02021 */  addu       $a0, $a2, $zero
/* F5154 800D7064 00101080 */  sll        $v0, $s0, 2
/* F5158 800D7068 02421021 */  addu       $v0, $s2, $v0
/* F515C 800D706C 24060008 */  addiu      $a2, $zero, 0x8
/* F5160 800D7070 AFBF001C */  sw         $ra, 0x1C($sp)
/* F5164 800D7074 AFB10014 */  sw         $s1, 0x14($sp)
/* F5168 800D7078 8C4504DC */  lw         $a1, 0x4DC($v0)
/* F516C 800D707C 00E08821 */  addu       $s1, $a3, $zero
/* F5170 800D7080 000528C0 */  sll        $a1, $a1, 3
/* F5174 800D7084 24A503DA */  addiu      $a1, $a1, 0x3DA
/* F5178 800D7088 0C000708 */  jal        func_80001C20
/* F517C 800D708C 02452821 */   addu      $a1, $s2, $a1
/* F5180 800D7090 02202021 */  addu       $a0, $s1, $zero
/* F5184 800D7094 001080C0 */  sll        $s0, $s0, 3
/* F5188 800D7098 261003EA */  addiu      $s0, $s0, 0x3EA
/* F518C 800D709C 02502821 */  addu       $a1, $s2, $s0
/* F5190 800D70A0 0C000708 */  jal        func_80001C20
/* F5194 800D70A4 24060008 */   addiu     $a2, $zero, 0x8
/* F5198 800D70A8 8FBF001C */  lw         $ra, 0x1C($sp)
/* F519C 800D70AC 8FB20018 */  lw         $s2, 0x18($sp)
/* F51A0 800D70B0 8FB10014 */  lw         $s1, 0x14($sp)
/* F51A4 800D70B4 8FB00010 */  lw         $s0, 0x10($sp)
/* F51A8 800D70B8 03E00008 */  jr         $ra
/* F51AC 800D70BC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D70C0
/* F51B0 800D70C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F51B4 800D70C4 000528C0 */  sll        $a1, $a1, 3
/* F51B8 800D70C8 24A506B2 */  addiu      $a1, $a1, 0x6B2
/* F51BC 800D70CC 00852821 */  addu       $a1, $a0, $a1
/* F51C0 800D70D0 00C02021 */  addu       $a0, $a2, $zero
/* F51C4 800D70D4 AFBF0010 */  sw         $ra, 0x10($sp)
/* F51C8 800D70D8 0C000708 */  jal        func_80001C20
/* F51CC 800D70DC 24060008 */   addiu     $a2, $zero, 0x8
/* F51D0 800D70E0 8FBF0010 */  lw         $ra, 0x10($sp)
/* F51D4 800D70E4 03E00008 */  jr         $ra
/* F51D8 800D70E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D70EC
/* F51DC 800D70EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F51E0 800D70F0 000528C0 */  sll        $a1, $a1, 3
/* F51E4 800D70F4 24A50572 */  addiu      $a1, $a1, 0x572
/* F51E8 800D70F8 00852821 */  addu       $a1, $a0, $a1
/* F51EC 800D70FC 00C02021 */  addu       $a0, $a2, $zero
/* F51F0 800D7100 AFBF0010 */  sw         $ra, 0x10($sp)
/* F51F4 800D7104 0C000708 */  jal        func_80001C20
/* F51F8 800D7108 24060008 */   addiu     $a2, $zero, 0x8
/* F51FC 800D710C 8FBF0010 */  lw         $ra, 0x10($sp)
/* F5200 800D7110 03E00008 */  jr         $ra
/* F5204 800D7114 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D7118
/* F5208 800D7118 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F520C 800D711C 000528C0 */  sll        $a1, $a1, 3
/* F5210 800D7120 24A50741 */  addiu      $a1, $a1, 0x741
/* F5214 800D7124 00852821 */  addu       $a1, $a0, $a1
/* F5218 800D7128 00C02021 */  addu       $a0, $a2, $zero
/* F521C 800D712C AFBF0010 */  sw         $ra, 0x10($sp)
/* F5220 800D7130 0C000708 */  jal        func_80001C20
/* F5224 800D7134 24060008 */   addiu     $a2, $zero, 0x8
/* F5228 800D7138 8FBF0010 */  lw         $ra, 0x10($sp)
/* F522C 800D713C 03E00008 */  jr         $ra
/* F5230 800D7140 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D7144
/* F5234 800D7144 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F5238 800D7148 AFB20018 */  sw         $s2, 0x18($sp)
/* F523C 800D714C 00809021 */  addu       $s2, $a0, $zero
/* F5240 800D7150 AFB10014 */  sw         $s1, 0x14($sp)
/* F5244 800D7154 00E08821 */  addu       $s1, $a3, $zero
/* F5248 800D7158 02202021 */  addu       $a0, $s1, $zero
/* F524C 800D715C 00052880 */  sll        $a1, $a1, 2
/* F5250 800D7160 24A50188 */  addiu      $a1, $a1, 0x188
/* F5254 800D7164 02452821 */  addu       $a1, $s2, $a1
/* F5258 800D7168 AFB00010 */  sw         $s0, 0x10($sp)
/* F525C 800D716C AFBF001C */  sw         $ra, 0x1C($sp)
/* F5260 800D7170 0C0006FA */  jal        func_80001BE8
/* F5264 800D7174 00C08021 */   addu      $s0, $a2, $zero
/* F5268 800D7178 26240003 */  addiu      $a0, $s1, 0x3
/* F526C 800D717C 00102840 */  sll        $a1, $s0, 1
/* F5270 800D7180 00B02821 */  addu       $a1, $a1, $s0
/* F5274 800D7184 00052840 */  sll        $a1, $a1, 1
/* F5278 800D7188 24A50200 */  addiu      $a1, $a1, 0x200
/* F527C 800D718C 02452821 */  addu       $a1, $s2, $a1
/* F5280 800D7190 0C000708 */  jal        func_80001C20
/* F5284 800D7194 24060005 */   addiu     $a2, $zero, 0x5
/* F5288 800D7198 8FBF001C */  lw         $ra, 0x1C($sp)
/* F528C 800D719C 8FB20018 */  lw         $s2, 0x18($sp)
/* F5290 800D71A0 8FB10014 */  lw         $s1, 0x14($sp)
/* F5294 800D71A4 8FB00010 */  lw         $s0, 0x10($sp)
/* F5298 800D71A8 03E00008 */  jr         $ra
/* F529C 800D71AC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D71B0
/* F52A0 800D71B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F52A4 800D71B4 AFBF0010 */  sw         $ra, 0x10($sp)
/* F52A8 800D71B8 0C002513 */  jal        func_8000944C
/* F52AC 800D71BC 00000000 */   nop
/* F52B0 800D71C0 8FBF0010 */  lw         $ra, 0x10($sp)
/* F52B4 800D71C4 03E00008 */  jr         $ra
/* F52B8 800D71C8 27BD0018 */   addiu     $sp, $sp, 0x18
