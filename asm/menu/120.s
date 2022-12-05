.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800E64A0
/* 104590 800E64A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104594 800E64A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 104598 800E64A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10459C 800E64AC 0C039820 */  jal        func_menu_800E6080
/* 1045A0 800E64B0 00808021 */   addu      $s0, $a0, $zero
/* 1045A4 800E64B4 3C02800D */  lui        $v0, %hi(D_menu_800CB270)
/* 1045A8 800E64B8 2442B270 */  addiu      $v0, $v0, %lo(D_menu_800CB270)
/* 1045AC 800E64BC 02002021 */  addu       $a0, $s0, $zero
/* 1045B0 800E64C0 0C039937 */  jal        func_menu_800E64DC
/* 1045B4 800E64C4 AE020010 */   sw        $v0, 0x10($s0)
/* 1045B8 800E64C8 02001021 */  addu       $v0, $s0, $zero
/* 1045BC 800E64CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1045C0 800E64D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1045C4 800E64D4 03E00008 */  jr         $ra
/* 1045C8 800E64D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E64DC
/* 1045CC 800E64DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1045D0 800E64E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1045D4 800E64E4 00808021 */  addu       $s0, $a0, $zero
/* 1045D8 800E64E8 3C01800D */  lui        $at, %hi(D_menu_800CB250)
/* 1045DC 800E64EC C420B250 */  lwc1       $f0, %lo(D_menu_800CB250)($at)
/* 1045E0 800E64F0 3C01800D */  lui        $at, %hi(D_menu_800CB254)
/* 1045E4 800E64F4 C422B254 */  lwc1       $f2, %lo(D_menu_800CB254)($at)
/* 1045E8 800E64F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1045EC 800E64FC AE000030 */  sw         $zero, 0x30($s0)
/* 1045F0 800E6500 AE00003C */  sw         $zero, 0x3C($s0)
/* 1045F4 800E6504 AE000040 */  sw         $zero, 0x40($s0)
/* 1045F8 800E6508 AE000044 */  sw         $zero, 0x44($s0)
/* 1045FC 800E650C AE000048 */  sw         $zero, 0x48($s0)
/* 104600 800E6510 AE00004C */  sw         $zero, 0x4C($s0)
/* 104604 800E6514 E6000034 */  swc1       $f0, 0x34($s0)
/* 104608 800E6518 0C03982F */  jal        func_menu_800E60BC
/* 10460C 800E651C E6020038 */   swc1      $f2, 0x38($s0)
/* 104610 800E6520 0C03839D */  jal        func_menu_800E0E74
/* 104614 800E6524 02002021 */   addu      $a0, $s0, $zero
/* 104618 800E6528 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10461C 800E652C 8FB00010 */  lw         $s0, 0x10($sp)
/* 104620 800E6530 03E00008 */  jr         $ra
/* 104624 800E6534 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E6538
/* 104628 800E6538 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10462C 800E653C AFB10014 */  sw         $s1, 0x14($sp)
/* 104630 800E6540 00808821 */  addu       $s1, $a0, $zero
/* 104634 800E6544 AFB20018 */  sw         $s2, 0x18($sp)
/* 104638 800E6548 00A09021 */  addu       $s2, $a1, $zero
/* 10463C 800E654C AFBF0024 */  sw         $ra, 0x24($sp)
/* 104640 800E6550 AFB40020 */  sw         $s4, 0x20($sp)
/* 104644 800E6554 AFB3001C */  sw         $s3, 0x1C($sp)
/* 104648 800E6558 AFB00010 */  sw         $s0, 0x10($sp)
/* 10464C 800E655C 8E220014 */  lw         $v0, 0x14($s1)
/* 104650 800E6560 10400003 */  beqz       $v0, .Lmenu_800E6570
/* 104654 800E6564 00C09821 */   addu      $s3, $a2, $zero
/* 104658 800E6568 0C0399B2 */  jal        func_menu_800E66C8
/* 10465C 800E656C 00000000 */   nop
.Lmenu_800E6570:
/* 104660 800E6570 02402021 */  addu       $a0, $s2, $zero
/* 104664 800E6574 0C0026F4 */  jal        func_80009BD0
/* 104668 800E6578 24050005 */   addiu     $a1, $zero, 0x5
/* 10466C 800E657C 3C02800D */  lui        $v0, %hi(jtbl_menu_800CB258)
/* 104670 800E6580 2454B258 */  addiu      $s4, $v0, %lo(jtbl_menu_800CB258)
.Lmenu_800E6584:
/* 104674 800E6584 8E420028 */  lw         $v0, 0x28($s2)
/* 104678 800E6588 844400A0 */  lh         $a0, 0xA0($v0)
/* 10467C 800E658C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 104680 800E6590 0040F809 */  jalr       $v0
/* 104684 800E6594 02442021 */   addu      $a0, $s2, $a0
/* 104688 800E6598 00408021 */  addu       $s0, $v0, $zero
/* 10468C 800E659C 24020006 */  addiu      $v0, $zero, 0x6
/* 104690 800E65A0 12020039 */  beq        $s0, $v0, .Lmenu_800E6688
/* 104694 800E65A4 2603FFC9 */   addiu     $v1, $s0, -0x37
/* 104698 800E65A8 2C620005 */  sltiu      $v0, $v1, 0x5
/* 10469C 800E65AC 10400029 */  beqz       $v0, .Lmenu_800E6654
/* 1046A0 800E65B0 00031080 */   sll       $v0, $v1, 2
/* 1046A4 800E65B4 00541021 */  addu       $v0, $v0, $s4
/* 1046A8 800E65B8 8C420000 */  lw         $v0, 0x0($v0)
/* 1046AC 800E65BC 00400008 */  jr         $v0
/* 1046B0 800E65C0 00000000 */   nop
glabel Lmenu_800E65C4
/* 1046B4 800E65C4 0C0025F8 */  jal        func_800097E0
/* 1046B8 800E65C8 02402021 */   addu      $a0, $s2, $zero
/* 1046BC 800E65CC 08039961 */  j          .Lmenu_800E6584
/* 1046C0 800E65D0 E6200034 */   swc1      $f0, 0x34($s1)
glabel Lmenu_800E65D4
/* 1046C4 800E65D4 0C0025F8 */  jal        func_800097E0
/* 1046C8 800E65D8 02402021 */   addu      $a0, $s2, $zero
/* 1046CC 800E65DC 08039961 */  j          .Lmenu_800E6584
/* 1046D0 800E65E0 E6200038 */   swc1      $f0, 0x38($s1)
glabel Lmenu_800E65E4
/* 1046D4 800E65E4 0C0025F8 */  jal        func_800097E0
/* 1046D8 800E65E8 02402021 */   addu      $a0, $s2, $zero
/* 1046DC 800E65EC 02402021 */  addu       $a0, $s2, $zero
/* 1046E0 800E65F0 0C0025F8 */  jal        func_800097E0
/* 1046E4 800E65F4 E620003C */   swc1      $f0, 0x3C($s1)
/* 1046E8 800E65F8 02402021 */  addu       $a0, $s2, $zero
/* 1046EC 800E65FC 0C0025F8 */  jal        func_800097E0
/* 1046F0 800E6600 E6200040 */   swc1      $f0, 0x40($s1)
/* 1046F4 800E6604 8E220048 */  lw         $v0, 0x48($s1)
/* 1046F8 800E6608 E6200044 */  swc1       $f0, 0x44($s1)
/* 1046FC 800E660C 34420001 */  ori        $v0, $v0, 0x1
/* 104700 800E6610 08039961 */  j          .Lmenu_800E6584
/* 104704 800E6614 AE220048 */   sw        $v0, 0x48($s1)
glabel Lmenu_800E6618
/* 104708 800E6618 8E220048 */  lw         $v0, 0x48($s1)
/* 10470C 800E661C 2403FFFB */  addiu      $v1, $zero, -0x5
/* 104710 800E6620 34420002 */  ori        $v0, $v0, 0x2
/* 104714 800E6624 00431024 */  and        $v0, $v0, $v1
/* 104718 800E6628 08039961 */  j          .Lmenu_800E6584
/* 10471C 800E662C AE220048 */   sw        $v0, 0x48($s1)
glabel Lmenu_800E6630
/* 104720 800E6630 0C002680 */  jal        func_80009A00
/* 104724 800E6634 02402021 */   addu      $a0, $s2, $zero
/* 104728 800E6638 8E230048 */  lw         $v1, 0x48($s1)
/* 10472C 800E663C AE22004C */  sw         $v0, 0x4C($s1)
/* 104730 800E6640 2402FFFD */  addiu      $v0, $zero, -0x3
/* 104734 800E6644 34630004 */  ori        $v1, $v1, 0x4
/* 104738 800E6648 00621824 */  and        $v1, $v1, $v0
/* 10473C 800E664C 08039961 */  j          .Lmenu_800E6584
/* 104740 800E6650 AE230048 */   sw        $v1, 0x48($s1)
.Lmenu_800E6654:
/* 104744 800E6654 02202021 */  addu       $a0, $s1, $zero
/* 104748 800E6658 02402821 */  addu       $a1, $s2, $zero
/* 10474C 800E665C 02603021 */  addu       $a2, $s3, $zero
/* 104750 800E6660 0C03986E */  jal        func_menu_800E61B8
/* 104754 800E6664 02003821 */   addu      $a3, $s0, $zero
/* 104758 800E6668 1440FFC6 */  bnez       $v0, .Lmenu_800E6584
/* 10475C 800E666C 02402821 */   addu      $a1, $s2, $zero
/* 104760 800E6670 02202021 */  addu       $a0, $s1, $zero
/* 104764 800E6674 02603021 */  addu       $a2, $s3, $zero
/* 104768 800E6678 0C038462 */  jal        func_menu_800E1188
/* 10476C 800E667C 02003821 */   addu      $a3, $s0, $zero
/* 104770 800E6680 08039961 */  j          .Lmenu_800E6584
/* 104774 800E6684 00000000 */   nop
.Lmenu_800E6688:
/* 104778 800E6688 8E220014 */  lw         $v0, 0x14($s1)
/* 10477C 800E668C 14400006 */  bnez       $v0, .Lmenu_800E66A8
/* 104780 800E6690 24050013 */   addiu     $a1, $zero, 0x13
/* 104784 800E6694 8E420028 */  lw         $v0, 0x28($s2)
/* 104788 800E6698 84440098 */  lh         $a0, 0x98($v0)
/* 10478C 800E669C 8C42009C */  lw         $v0, 0x9C($v0)
/* 104790 800E66A0 0040F809 */  jalr       $v0
/* 104794 800E66A4 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800E66A8:
/* 104798 800E66A8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 10479C 800E66AC 8FB40020 */  lw         $s4, 0x20($sp)
/* 1047A0 800E66B0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1047A4 800E66B4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1047A8 800E66B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1047AC 800E66BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1047B0 800E66C0 03E00008 */  jr         $ra
/* 1047B4 800E66C4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E66C8
/* 1047B8 800E66C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1047BC 800E66CC AFBF0010 */  sw         $ra, 0x10($sp)
/* 1047C0 800E66D0 0C039937 */  jal        func_menu_800E64DC
/* 1047C4 800E66D4 00000000 */   nop
/* 1047C8 800E66D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1047CC 800E66DC 03E00008 */  jr         $ra
/* 1047D0 800E66E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E66E4
/* 1047D4 800E66E4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1047D8 800E66E8 AFB00030 */  sw         $s0, 0x30($sp)
/* 1047DC 800E66EC 00808021 */  addu       $s0, $a0, $zero
/* 1047E0 800E66F0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1047E4 800E66F4 8E020030 */  lw         $v0, 0x30($s0)
/* 1047E8 800E66F8 1440003A */  bnez       $v0, .Lmenu_800E67E4
/* 1047EC 800E66FC 00000000 */   nop
/* 1047F0 800E6700 AFA00020 */  sw         $zero, 0x20($sp)
/* 1047F4 800E6704 AFA00024 */  sw         $zero, 0x24($sp)
/* 1047F8 800E6708 AFA00028 */  sw         $zero, 0x28($sp)
/* 1047FC 800E670C 8E020048 */  lw         $v0, 0x48($s0)
/* 104800 800E6710 30420004 */  andi       $v0, $v0, 0x4
/* 104804 800E6714 1040000A */  beqz       $v0, .Lmenu_800E6740
/* 104808 800E6718 00000000 */   nop
/* 10480C 800E671C 8E020008 */  lw         $v0, 0x8($s0)
/* 104810 800E6720 10400007 */  beqz       $v0, .Lmenu_800E6740
/* 104814 800E6724 00000000 */   nop
/* 104818 800E6728 8E05004C */  lw         $a1, 0x4C($s0)
/* 10481C 800E672C 0C0383DE */  jal        func_menu_800E0F78
/* 104820 800E6730 27A60010 */   addiu     $a2, $sp, 0x10
/* 104824 800E6734 8E020008 */  lw         $v0, 0x8($s0)
/* 104828 800E6738 080399E5 */  j          .Lmenu_800E6794
/* 10482C 800E673C 00000000 */   nop
.Lmenu_800E6740:
/* 104830 800E6740 8E020048 */  lw         $v0, 0x48($s0)
/* 104834 800E6744 30420001 */  andi       $v0, $v0, 0x1
/* 104838 800E6748 10400009 */  beqz       $v0, .Lmenu_800E6770
/* 10483C 800E674C 02002021 */   addu      $a0, $s0, $zero
/* 104840 800E6750 8E07003C */  lw         $a3, 0x3C($s0)
/* 104844 800E6754 8E080040 */  lw         $t0, 0x40($s0)
/* 104848 800E6758 8E090044 */  lw         $t1, 0x44($s0)
/* 10484C 800E675C AFA70010 */  sw         $a3, 0x10($sp)
/* 104850 800E6760 AFA80014 */  sw         $t0, 0x14($sp)
/* 104854 800E6764 AFA90018 */  sw         $t1, 0x18($sp)
/* 104858 800E6768 080399F0 */  j          .Lmenu_800E67C0
/* 10485C 800E676C 00000000 */   nop
.Lmenu_800E6770:
/* 104860 800E6770 8E030000 */  lw         $v1, 0x0($s0)
/* 104864 800E6774 1060000E */  beqz       $v1, .Lmenu_800E67B0
/* 104868 800E6778 27A50010 */   addiu     $a1, $sp, 0x10
/* 10486C 800E677C 8C620024 */  lw         $v0, 0x24($v1)
/* 104870 800E6780 84440010 */  lh         $a0, 0x10($v0)
/* 104874 800E6784 8C420014 */  lw         $v0, 0x14($v0)
/* 104878 800E6788 0040F809 */  jalr       $v0
/* 10487C 800E678C 00642021 */   addu      $a0, $v1, $a0
/* 104880 800E6790 8E020000 */  lw         $v0, 0x0($s0)
.Lmenu_800E6794:
/* 104884 800E6794 C4400018 */  lwc1       $f0, 0x18($v0)
/* 104888 800E6798 E7A00020 */  swc1       $f0, 0x20($sp)
/* 10488C 800E679C C440001C */  lwc1       $f0, 0x1C($v0)
/* 104890 800E67A0 E7A00024 */  swc1       $f0, 0x24($sp)
/* 104894 800E67A4 C4400020 */  lwc1       $f0, 0x20($v0)
/* 104898 800E67A8 080399EF */  j          .Lmenu_800E67BC
/* 10489C 800E67AC E7A00028 */   swc1      $f0, 0x28($sp)
.Lmenu_800E67B0:
/* 1048A0 800E67B0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1048A4 800E67B4 AFA00014 */  sw         $zero, 0x14($sp)
/* 1048A8 800E67B8 AFA00018 */  sw         $zero, 0x18($sp)
.Lmenu_800E67BC:
/* 1048AC 800E67BC 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800E67C0:
/* 1048B0 800E67C0 0C0399FD */  jal        func_menu_800E67F4
/* 1048B4 800E67C4 27A50010 */   addiu     $a1, $sp, 0x10
/* 1048B8 800E67C8 8E020030 */  lw         $v0, 0x30($s0)
/* 1048BC 800E67CC C7A00020 */  lwc1       $f0, 0x20($sp)
/* 1048C0 800E67D0 E4400020 */  swc1       $f0, 0x20($v0)
/* 1048C4 800E67D4 C7A00024 */  lwc1       $f0, 0x24($sp)
/* 1048C8 800E67D8 E4400024 */  swc1       $f0, 0x24($v0)
/* 1048CC 800E67DC C7A00028 */  lwc1       $f0, 0x28($sp)
/* 1048D0 800E67E0 E4400028 */  swc1       $f0, 0x28($v0)
.Lmenu_800E67E4:
/* 1048D4 800E67E4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1048D8 800E67E8 8FB00030 */  lw         $s0, 0x30($sp)
/* 1048DC 800E67EC 03E00008 */  jr         $ra
/* 1048E0 800E67F0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E67F4
/* 1048E4 800E67F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1048E8 800E67F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1048EC 800E67FC 00808021 */  addu       $s0, $a0, $zero
/* 1048F0 800E6800 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1048F4 800E6804 AFB10014 */  sw         $s1, 0x14($sp)
/* 1048F8 800E6808 8E020030 */  lw         $v0, 0x30($s0)
/* 1048FC 800E680C 14400033 */  bnez       $v0, .Lmenu_800E68DC
/* 104900 800E6810 00A08821 */   addu      $s1, $a1, $zero
/* 104904 800E6814 8E030014 */  lw         $v1, 0x14($s0)
/* 104908 800E6818 8C620000 */  lw         $v0, 0x0($v1)
/* 10490C 800E681C 9605002E */  lhu        $a1, 0x2E($s0)
/* 104910 800E6820 84440048 */  lh         $a0, 0x48($v0)
/* 104914 800E6824 8C42004C */  lw         $v0, 0x4C($v0)
/* 104918 800E6828 0040F809 */  jalr       $v0
/* 10491C 800E682C 00642021 */   addu      $a0, $v1, $a0
/* 104920 800E6830 AE020030 */  sw         $v0, 0x30($s0)
/* 104924 800E6834 8C430034 */  lw         $v1, 0x34($v0)
/* 104928 800E6838 9605002C */  lhu        $a1, 0x2C($s0)
/* 10492C 800E683C 84640010 */  lh         $a0, 0x10($v1)
/* 104930 800E6840 8C630014 */  lw         $v1, 0x14($v1)
/* 104934 800E6844 0060F809 */  jalr       $v1
/* 104938 800E6848 00442021 */   addu      $a0, $v0, $a0
/* 10493C 800E684C 8E040030 */  lw         $a0, 0x30($s0)
/* 104940 800E6850 8E05001C */  lw         $a1, 0x1C($s0)
/* 104944 800E6854 0C01FDE4 */  jal        func_8007F790
/* 104948 800E6858 00000000 */   nop
/* 10494C 800E685C 8E020030 */  lw         $v0, 0x30($s0)
/* 104950 800E6860 C6000024 */  lwc1       $f0, 0x24($s0)
/* 104954 800E6864 E4400004 */  swc1       $f0, 0x4($v0)
/* 104958 800E6868 C6020034 */  lwc1       $f2, 0x34($s0)
/* 10495C 800E686C 46021082 */  mul.s      $f2, $f2, $f2
/* 104960 800E6870 C6000038 */  lwc1       $f0, 0x38($s0)
/* 104964 800E6874 46000002 */  mul.s      $f0, $f0, $f0
/* 104968 800E6878 8E020030 */  lw         $v0, 0x30($s0)
/* 10496C 800E687C E442002C */  swc1       $f2, 0x2C($v0)
/* 104970 800E6880 E4400030 */  swc1       $f0, 0x30($v0)
/* 104974 800E6884 8E030048 */  lw         $v1, 0x48($s0)
/* 104978 800E6888 2402FFF7 */  addiu      $v0, $zero, -0x9
/* 10497C 800E688C 00621024 */  and        $v0, $v1, $v0
/* 104980 800E6890 30630001 */  andi       $v1, $v1, 0x1
/* 104984 800E6894 1060000A */  beqz       $v1, .Lmenu_800E68C0
/* 104988 800E6898 AE020048 */   sw        $v0, 0x48($s0)
/* 10498C 800E689C 8E020030 */  lw         $v0, 0x30($s0)
/* 104990 800E68A0 8E06003C */  lw         $a2, 0x3C($s0)
/* 104994 800E68A4 8E070040 */  lw         $a3, 0x40($s0)
/* 104998 800E68A8 8E080044 */  lw         $t0, 0x44($s0)
/* 10499C 800E68AC AC460014 */  sw         $a2, 0x14($v0)
/* 1049A0 800E68B0 AC470018 */  sw         $a3, 0x18($v0)
/* 1049A4 800E68B4 AC48001C */  sw         $t0, 0x1C($v0)
/* 1049A8 800E68B8 08039A37 */  j          .Lmenu_800E68DC
/* 1049AC 800E68BC 00000000 */   nop
.Lmenu_800E68C0:
/* 1049B0 800E68C0 8E020030 */  lw         $v0, 0x30($s0)
/* 1049B4 800E68C4 8E260000 */  lw         $a2, 0x0($s1)
/* 1049B8 800E68C8 8E270004 */  lw         $a3, 0x4($s1)
/* 1049BC 800E68CC 8E280008 */  lw         $t0, 0x8($s1)
/* 1049C0 800E68D0 AC460014 */  sw         $a2, 0x14($v0)
/* 1049C4 800E68D4 AC470018 */  sw         $a3, 0x18($v0)
/* 1049C8 800E68D8 AC48001C */  sw         $t0, 0x1C($v0)
.Lmenu_800E68DC:
/* 1049CC 800E68DC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1049D0 800E68E0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1049D4 800E68E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1049D8 800E68E8 03E00008 */  jr         $ra
/* 1049DC 800E68EC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E68F0
/* 1049E0 800E68F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1049E4 800E68F4 00801821 */  addu       $v1, $a0, $zero
/* 1049E8 800E68F8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1049EC 800E68FC 8C620030 */  lw         $v0, 0x30($v1)
/* 1049F0 800E6900 14400011 */  bnez       $v0, .Lmenu_800E6948
/* 1049F4 800E6904 00000000 */   nop
/* 1049F8 800E6908 8C620000 */  lw         $v0, 0x0($v1)
/* 1049FC 800E690C 14400005 */  bnez       $v0, .Lmenu_800E6924
/* 104A00 800E6910 00000000 */   nop
/* 104A04 800E6914 8C620048 */  lw         $v0, 0x48($v1)
/* 104A08 800E6918 30420001 */  andi       $v0, $v0, 0x1
/* 104A0C 800E691C 10400008 */  beqz       $v0, .Lmenu_800E6940
/* 104A10 800E6920 00000000 */   nop
.Lmenu_800E6924:
/* 104A14 800E6924 8C620010 */  lw         $v0, 0x10($v1)
/* 104A18 800E6928 84440010 */  lh         $a0, 0x10($v0)
/* 104A1C 800E692C 8C420014 */  lw         $v0, 0x14($v0)
/* 104A20 800E6930 0040F809 */  jalr       $v0
/* 104A24 800E6934 00642021 */   addu      $a0, $v1, $a0
/* 104A28 800E6938 08039A52 */  j          .Lmenu_800E6948
/* 104A2C 800E693C 00000000 */   nop
.Lmenu_800E6940:
/* 104A30 800E6940 0C0399FD */  jal        func_menu_800E67F4
/* 104A34 800E6944 00602021 */   addu      $a0, $v1, $zero
.Lmenu_800E6948:
/* 104A38 800E6948 8FBF0010 */  lw         $ra, 0x10($sp)
/* 104A3C 800E694C 03E00008 */  jr         $ra
/* 104A40 800E6950 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E6954
/* 104A44 800E6954 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104A48 800E6958 00801821 */  addu       $v1, $a0, $zero
/* 104A4C 800E695C AFBF0010 */  sw         $ra, 0x10($sp)
/* 104A50 800E6960 8C620030 */  lw         $v0, 0x30($v1)
/* 104A54 800E6964 14400009 */  bnez       $v0, .Lmenu_800E698C
/* 104A58 800E6968 00000000 */   nop
/* 104A5C 800E696C 8C620000 */  lw         $v0, 0x0($v1)
/* 104A60 800E6970 50400001 */  beql       $v0, $zero, .Lmenu_800E6978
/* 104A64 800E6974 AC650000 */   sw        $a1, 0x0($v1)
.Lmenu_800E6978:
/* 104A68 800E6978 8C620010 */  lw         $v0, 0x10($v1)
/* 104A6C 800E697C 84440010 */  lh         $a0, 0x10($v0)
/* 104A70 800E6980 8C420014 */  lw         $v0, 0x14($v0)
/* 104A74 800E6984 0040F809 */  jalr       $v0
/* 104A78 800E6988 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E698C:
/* 104A7C 800E698C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 104A80 800E6990 03E00008 */  jr         $ra
/* 104A84 800E6994 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E6998
/* 104A88 800E6998 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104A8C 800E699C 00801821 */  addu       $v1, $a0, $zero
/* 104A90 800E69A0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 104A94 800E69A4 8C620030 */  lw         $v0, 0x30($v1)
/* 104A98 800E69A8 1440000B */  bnez       $v0, .Lmenu_800E69D8
/* 104A9C 800E69AC 00000000 */   nop
/* 104AA0 800E69B0 8C620008 */  lw         $v0, 0x8($v1)
/* 104AA4 800E69B4 14400003 */  bnez       $v0, .Lmenu_800E69C4
/* 104AA8 800E69B8 00000000 */   nop
/* 104AAC 800E69BC AC650008 */  sw         $a1, 0x8($v1)
/* 104AB0 800E69C0 AC650000 */  sw         $a1, 0x0($v1)
.Lmenu_800E69C4:
/* 104AB4 800E69C4 8C620010 */  lw         $v0, 0x10($v1)
/* 104AB8 800E69C8 84440010 */  lh         $a0, 0x10($v0)
/* 104ABC 800E69CC 8C420014 */  lw         $v0, 0x14($v0)
/* 104AC0 800E69D0 0040F809 */  jalr       $v0
/* 104AC4 800E69D4 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E69D8:
/* 104AC8 800E69D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 104ACC 800E69DC 03E00008 */  jr         $ra
/* 104AD0 800E69E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E69E4
/* 104AD4 800E69E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104AD8 800E69E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 104ADC 800E69EC 00808021 */  addu       $s0, $a0, $zero
/* 104AE0 800E69F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 104AE4 800E69F4 8E020030 */  lw         $v0, 0x30($s0)
/* 104AE8 800E69F8 1040000C */  beqz       $v0, .Lmenu_800E6A2C
/* 104AEC 800E69FC 2403FFF7 */   addiu     $v1, $zero, -0x9
/* 104AF0 800E6A00 8E020048 */  lw         $v0, 0x48($s0)
/* 104AF4 800E6A04 8E060014 */  lw         $a2, 0x14($s0)
/* 104AF8 800E6A08 00431024 */  and        $v0, $v0, $v1
/* 104AFC 800E6A0C AE020048 */  sw         $v0, 0x48($s0)
/* 104B00 800E6A10 8CC20000 */  lw         $v0, 0x0($a2)
/* 104B04 800E6A14 8E050030 */  lw         $a1, 0x30($s0)
/* 104B08 800E6A18 84440050 */  lh         $a0, 0x50($v0)
/* 104B0C 800E6A1C 8C420054 */  lw         $v0, 0x54($v0)
/* 104B10 800E6A20 0040F809 */  jalr       $v0
/* 104B14 800E6A24 00C42021 */   addu      $a0, $a2, $a0
/* 104B18 800E6A28 AE000030 */  sw         $zero, 0x30($s0)
.Lmenu_800E6A2C:
/* 104B1C 800E6A2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 104B20 800E6A30 8FB00010 */  lw         $s0, 0x10($sp)
/* 104B24 800E6A34 03E00008 */  jr         $ra
/* 104B28 800E6A38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E6A3C
/* 104B2C 800E6A3C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 104B30 800E6A40 AFB00030 */  sw         $s0, 0x30($sp)
/* 104B34 800E6A44 00808021 */  addu       $s0, $a0, $zero
/* 104B38 800E6A48 AFBF0034 */  sw         $ra, 0x34($sp)
/* 104B3C 800E6A4C 8E030030 */  lw         $v1, 0x30($s0)
/* 104B40 800E6A50 10600044 */  beqz       $v1, .Lmenu_800E6B64
/* 104B44 800E6A54 00000000 */   nop
/* 104B48 800E6A58 8C620034 */  lw         $v0, 0x34($v1)
/* 104B4C 800E6A5C 84440020 */  lh         $a0, 0x20($v0)
/* 104B50 800E6A60 8C420024 */  lw         $v0, 0x24($v0)
/* 104B54 800E6A64 0040F809 */  jalr       $v0
/* 104B58 800E6A68 00642021 */   addu      $a0, $v1, $a0
/* 104B5C 800E6A6C 1440000C */  bnez       $v0, .Lmenu_800E6AA0
/* 104B60 800E6A70 00000000 */   nop
/* 104B64 800E6A74 8E020048 */  lw         $v0, 0x48($s0)
/* 104B68 800E6A78 30420008 */  andi       $v0, $v0, 0x8
/* 104B6C 800E6A7C 1040000B */  beqz       $v0, .Lmenu_800E6AAC
/* 104B70 800E6A80 00000000 */   nop
/* 104B74 800E6A84 8E020010 */  lw         $v0, 0x10($s0)
/* 104B78 800E6A88 84440038 */  lh         $a0, 0x38($v0)
/* 104B7C 800E6A8C 8C42003C */  lw         $v0, 0x3C($v0)
/* 104B80 800E6A90 0040F809 */  jalr       $v0
/* 104B84 800E6A94 02042021 */   addu      $a0, $s0, $a0
/* 104B88 800E6A98 08039AD9 */  j          .Lmenu_800E6B64
/* 104B8C 800E6A9C 00000000 */   nop
.Lmenu_800E6AA0:
/* 104B90 800E6AA0 8E020048 */  lw         $v0, 0x48($s0)
/* 104B94 800E6AA4 34420008 */  ori        $v0, $v0, 0x8
/* 104B98 800E6AA8 AE020048 */  sw         $v0, 0x48($s0)
.Lmenu_800E6AAC:
/* 104B9C 800E6AAC 8E030048 */  lw         $v1, 0x48($s0)
/* 104BA0 800E6AB0 30620004 */  andi       $v0, $v1, 0x4
/* 104BA4 800E6AB4 1040000E */  beqz       $v0, .Lmenu_800E6AF0
/* 104BA8 800E6AB8 02002021 */   addu      $a0, $s0, $zero
/* 104BAC 800E6ABC 8E05004C */  lw         $a1, 0x4C($s0)
/* 104BB0 800E6AC0 0C0383DE */  jal        func_menu_800E0F78
/* 104BB4 800E6AC4 27A60010 */   addiu     $a2, $sp, 0x10
/* 104BB8 800E6AC8 8E020030 */  lw         $v0, 0x30($s0)
/* 104BBC 800E6ACC 8FA70010 */  lw         $a3, 0x10($sp)
/* 104BC0 800E6AD0 8FA80014 */  lw         $t0, 0x14($sp)
/* 104BC4 800E6AD4 8FA90018 */  lw         $t1, 0x18($sp)
/* 104BC8 800E6AD8 AC470014 */  sw         $a3, 0x14($v0)
/* 104BCC 800E6ADC AC480018 */  sw         $t0, 0x18($v0)
/* 104BD0 800E6AE0 AC49001C */  sw         $t1, 0x1C($v0)
/* 104BD4 800E6AE4 8E020008 */  lw         $v0, 0x8($s0)
/* 104BD8 800E6AE8 08039ACD */  j          .Lmenu_800E6B34
/* 104BDC 800E6AEC 00000000 */   nop
.Lmenu_800E6AF0:
/* 104BE0 800E6AF0 30620002 */  andi       $v0, $v1, 0x2
/* 104BE4 800E6AF4 1040001B */  beqz       $v0, .Lmenu_800E6B64
/* 104BE8 800E6AF8 27A50010 */   addiu     $a1, $sp, 0x10
/* 104BEC 800E6AFC 8E030000 */  lw         $v1, 0x0($s0)
/* 104BF0 800E6B00 8C620024 */  lw         $v0, 0x24($v1)
/* 104BF4 800E6B04 84440010 */  lh         $a0, 0x10($v0)
/* 104BF8 800E6B08 8C420014 */  lw         $v0, 0x14($v0)
/* 104BFC 800E6B0C 0040F809 */  jalr       $v0
/* 104C00 800E6B10 00642021 */   addu      $a0, $v1, $a0
/* 104C04 800E6B14 8E020030 */  lw         $v0, 0x30($s0)
/* 104C08 800E6B18 8FA70010 */  lw         $a3, 0x10($sp)
/* 104C0C 800E6B1C 8FA80014 */  lw         $t0, 0x14($sp)
/* 104C10 800E6B20 8FA90018 */  lw         $t1, 0x18($sp)
/* 104C14 800E6B24 AC470014 */  sw         $a3, 0x14($v0)
/* 104C18 800E6B28 AC480018 */  sw         $t0, 0x18($v0)
/* 104C1C 800E6B2C AC49001C */  sw         $t1, 0x1C($v0)
/* 104C20 800E6B30 8E020000 */  lw         $v0, 0x0($s0)
.Lmenu_800E6B34:
/* 104C24 800E6B34 C4420018 */  lwc1       $f2, 0x18($v0)
/* 104C28 800E6B38 E7A20020 */  swc1       $f2, 0x20($sp)
/* 104C2C 800E6B3C C440001C */  lwc1       $f0, 0x1C($v0)
/* 104C30 800E6B40 E7A00024 */  swc1       $f0, 0x24($sp)
/* 104C34 800E6B44 C4400020 */  lwc1       $f0, 0x20($v0)
/* 104C38 800E6B48 E7A00028 */  swc1       $f0, 0x28($sp)
/* 104C3C 800E6B4C 8E020030 */  lw         $v0, 0x30($s0)
/* 104C40 800E6B50 E4420020 */  swc1       $f2, 0x20($v0)
/* 104C44 800E6B54 C7A00024 */  lwc1       $f0, 0x24($sp)
/* 104C48 800E6B58 E4400024 */  swc1       $f0, 0x24($v0)
/* 104C4C 800E6B5C C7A00028 */  lwc1       $f0, 0x28($sp)
/* 104C50 800E6B60 E4400028 */  swc1       $f0, 0x28($v0)
.Lmenu_800E6B64:
/* 104C54 800E6B64 8FBF0034 */  lw         $ra, 0x34($sp)
/* 104C58 800E6B68 8FB00030 */  lw         $s0, 0x30($sp)
/* 104C5C 800E6B6C 03E00008 */  jr         $ra
/* 104C60 800E6B70 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E6B74
/* 104C64 800E6B74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104C68 800E6B78 AFBF0010 */  sw         $ra, 0x10($sp)
/* 104C6C 800E6B7C 0C038391 */  jal        func_menu_800E0E44
/* 104C70 800E6B80 00000000 */   nop
/* 104C74 800E6B84 8FBF0010 */  lw         $ra, 0x10($sp)
/* 104C78 800E6B88 03E00008 */  jr         $ra
/* 104C7C 800E6B8C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E6B90
/* 104C80 800E6B90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104C84 800E6B94 AFB00010 */  sw         $s0, 0x10($sp)
/* 104C88 800E6B98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 104C8C 800E6B9C 0C039420 */  jal        func_menu_800E5080
/* 104C90 800E6BA0 00808021 */   addu      $s0, $a0, $zero
/* 104C94 800E6BA4 3C02800D */  lui        $v0, %hi(D_menu_800CB2D0)
/* 104C98 800E6BA8 2442B2D0 */  addiu      $v0, $v0, %lo(D_menu_800CB2D0)
/* 104C9C 800E6BAC 26040058 */  addiu      $a0, $s0, 0x58
/* 104CA0 800E6BB0 0C0016DC */  jal        func_80005B70
/* 104CA4 800E6BB4 AE020010 */   sw        $v0, 0x10($s0)
/* 104CA8 800E6BB8 0C039B0A */  jal        func_menu_800E6C28
/* 104CAC 800E6BBC 02002021 */   addu      $a0, $s0, $zero
/* 104CB0 800E6BC0 02001021 */  addu       $v0, $s0, $zero
/* 104CB4 800E6BC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 104CB8 800E6BC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 104CBC 800E6BCC 03E00008 */  jr         $ra
/* 104CC0 800E6BD0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E6BD4
/* 104CC4 800E6BD4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 104CC8 800E6BD8 AFB00010 */  sw         $s0, 0x10($sp)
/* 104CCC 800E6BDC 00808021 */  addu       $s0, $a0, $zero
/* 104CD0 800E6BE0 AFB10014 */  sw         $s1, 0x14($sp)
/* 104CD4 800E6BE4 00A08821 */  addu       $s1, $a1, $zero
/* 104CD8 800E6BE8 3C02800D */  lui        $v0, %hi(D_menu_800CB2D0)
/* 104CDC 800E6BEC 2442B2D0 */  addiu      $v0, $v0, %lo(D_menu_800CB2D0)
/* 104CE0 800E6BF0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 104CE4 800E6BF4 0C039BB5 */  jal        func_menu_800E6ED4
/* 104CE8 800E6BF8 AE020010 */   sw        $v0, 0x10($s0)
/* 104CEC 800E6BFC 26040058 */  addiu      $a0, $s0, 0x58
/* 104CF0 800E6C00 0C0016E2 */  jal        func_80005B88
/* 104CF4 800E6C04 24050002 */   addiu     $a1, $zero, 0x2
/* 104CF8 800E6C08 02002021 */  addu       $a0, $s0, $zero
/* 104CFC 800E6C0C 0C03942F */  jal        func_menu_800E50BC
/* 104D00 800E6C10 02202821 */   addu      $a1, $s1, $zero
/* 104D04 800E6C14 8FBF0018 */  lw         $ra, 0x18($sp)
/* 104D08 800E6C18 8FB10014 */  lw         $s1, 0x14($sp)
/* 104D0C 800E6C1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 104D10 800E6C20 03E00008 */  jr         $ra
/* 104D14 800E6C24 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E6C28
/* 104D18 800E6C28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104D1C 800E6C2C AFBF0010 */  sw         $ra, 0x10($sp)
/* 104D20 800E6C30 AC800064 */  sw         $zero, 0x64($a0)
/* 104D24 800E6C34 AC800068 */  sw         $zero, 0x68($a0)
/* 104D28 800E6C38 A0800048 */  sb         $zero, 0x48($a0)
/* 104D2C 800E6C3C AC800050 */  sw         $zero, 0x50($a0)
/* 104D30 800E6C40 0C039441 */  jal        func_menu_800E5104
/* 104D34 800E6C44 AC80006C */   sw        $zero, 0x6C($a0)
/* 104D38 800E6C48 8FBF0010 */  lw         $ra, 0x10($sp)
/* 104D3C 800E6C4C 03E00008 */  jr         $ra
/* 104D40 800E6C50 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E6C54
/* 104D44 800E6C54 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 104D48 800E6C58 AFB20020 */  sw         $s2, 0x20($sp)
/* 104D4C 800E6C5C 00809021 */  addu       $s2, $a0, $zero
/* 104D50 800E6C60 AFB1001C */  sw         $s1, 0x1C($sp)
/* 104D54 800E6C64 00A08821 */  addu       $s1, $a1, $zero
/* 104D58 800E6C68 AFB30024 */  sw         $s3, 0x24($sp)
/* 104D5C 800E6C6C 00C09821 */  addu       $s3, $a2, $zero
/* 104D60 800E6C70 AFB40028 */  sw         $s4, 0x28($sp)
/* 104D64 800E6C74 00E0A021 */  addu       $s4, $a3, $zero
/* 104D68 800E6C78 02202021 */  addu       $a0, $s1, $zero
/* 104D6C 800E6C7C 24050005 */  addiu      $a1, $zero, 0x5
/* 104D70 800E6C80 AFBF002C */  sw         $ra, 0x2C($sp)
/* 104D74 800E6C84 0C0026F4 */  jal        func_80009BD0
/* 104D78 800E6C88 AFB00018 */   sw        $s0, 0x18($sp)
/* 104D7C 800E6C8C 24020003 */  addiu      $v0, $zero, 0x3
/* 104D80 800E6C90 AE420044 */  sw         $v0, 0x44($s2)
.Lmenu_800E6C94:
/* 104D84 800E6C94 8E220028 */  lw         $v0, 0x28($s1)
/* 104D88 800E6C98 844400A0 */  lh         $a0, 0xA0($v0)
/* 104D8C 800E6C9C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 104D90 800E6CA0 0040F809 */  jalr       $v0
/* 104D94 800E6CA4 02242021 */   addu      $a0, $s1, $a0
/* 104D98 800E6CA8 00403021 */  addu       $a2, $v0, $zero
/* 104D9C 800E6CAC 24020006 */  addiu      $v0, $zero, 0x6
/* 104DA0 800E6CB0 10C20042 */  beq        $a2, $v0, .Lmenu_800E6DBC
/* 104DA4 800E6CB4 24020041 */   addiu     $v0, $zero, 0x41
/* 104DA8 800E6CB8 10C20013 */  beq        $a2, $v0, .Lmenu_800E6D08
/* 104DAC 800E6CBC 2CC20042 */   sltiu     $v0, $a2, 0x42
/* 104DB0 800E6CC0 10400005 */  beqz       $v0, .Lmenu_800E6CD8
/* 104DB4 800E6CC4 24020040 */   addiu     $v0, $zero, 0x40
/* 104DB8 800E6CC8 10C20008 */  beq        $a2, $v0, .Lmenu_800E6CEC
/* 104DBC 800E6CCC 00000000 */   nop
/* 104DC0 800E6CD0 08039B69 */  j          .Lmenu_800E6DA4
/* 104DC4 800E6CD4 AFB40010 */   sw        $s4, 0x10($sp)
.Lmenu_800E6CD8:
/* 104DC8 800E6CD8 24020042 */  addiu      $v0, $zero, 0x42
/* 104DCC 800E6CDC 10C20026 */  beq        $a2, $v0, .Lmenu_800E6D78
/* 104DD0 800E6CE0 00000000 */   nop
/* 104DD4 800E6CE4 08039B69 */  j          .Lmenu_800E6DA4
/* 104DD8 800E6CE8 AFB40010 */   sw        $s4, 0x10($sp)
.Lmenu_800E6CEC:
/* 104DDC 800E6CEC 0C002680 */  jal        func_80009A00
/* 104DE0 800E6CF0 02202021 */   addu      $a0, $s1, $zero
/* 104DE4 800E6CF4 02202021 */  addu       $a0, $s1, $zero
/* 104DE8 800E6CF8 0C002680 */  jal        func_80009A00
/* 104DEC 800E6CFC AE420050 */   sw        $v0, 0x50($s2)
/* 104DF0 800E6D00 08039B25 */  j          .Lmenu_800E6C94
/* 104DF4 800E6D04 AE42006C */   sw        $v0, 0x6C($s2)
.Lmenu_800E6D08:
/* 104DF8 800E6D08 8E220028 */  lw         $v0, 0x28($s1)
/* 104DFC 800E6D0C 844400A0 */  lh         $a0, 0xA0($v0)
/* 104E00 800E6D10 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 104E04 800E6D14 0040F809 */  jalr       $v0
/* 104E08 800E6D18 02242021 */   addu      $a0, $s1, $a0
/* 104E0C 800E6D1C 3C028012 */  lui        $v0, %hi(D_80126A00)
/* 104E10 800E6D20 8C446A00 */  lw         $a0, %lo(D_80126A00)($v0)
/* 104E14 800E6D24 0C01FB65 */  jal        func_8007ED94
/* 104E18 800E6D28 26300044 */   addiu     $s0, $s1, 0x44
/* 104E1C 800E6D2C 0C006DFE */  jal        strlen
/* 104E20 800E6D30 02002021 */   addu      $a0, $s0, $zero
/* 104E24 800E6D34 0C00943C */  jal        func_800250F0
/* 104E28 800E6D38 24440001 */   addiu     $a0, $v0, 0x1
/* 104E2C 800E6D3C 0C01FB72 */  jal        func_8007EDC8
/* 104E30 800E6D40 AE420064 */   sw        $v0, 0x64($s2)
/* 104E34 800E6D44 8E420064 */  lw         $v0, 0x64($s2)
/* 104E38 800E6D48 14400006 */  bnez       $v0, .Lmenu_800E6D64
/* 104E3C 800E6D4C 00002821 */   addu      $a1, $zero, $zero
/* 104E40 800E6D50 3C04800D */  lui        $a0, %hi(D_menu_800CB2B0)
/* 104E44 800E6D54 2484B2B0 */  addiu      $a0, $a0, %lo(D_menu_800CB2B0)
/* 104E48 800E6D58 00A03021 */  addu       $a2, $a1, $zero
/* 104E4C 800E6D5C 0C011ACF */  jal        func_80046B3C
/* 104E50 800E6D60 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E6D64:
/* 104E54 800E6D64 8E440064 */  lw         $a0, 0x64($s2)
/* 104E58 800E6D68 0C0006FA */  jal        func_80001BE8
/* 104E5C 800E6D6C 02002821 */   addu      $a1, $s0, $zero
/* 104E60 800E6D70 08039B25 */  j          .Lmenu_800E6C94
/* 104E64 800E6D74 00000000 */   nop
.Lmenu_800E6D78:
/* 104E68 800E6D78 8E220028 */  lw         $v0, 0x28($s1)
/* 104E6C 800E6D7C 844400A0 */  lh         $a0, 0xA0($v0)
/* 104E70 800E6D80 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 104E74 800E6D84 0040F809 */  jalr       $v0
/* 104E78 800E6D88 02242021 */   addu      $a0, $s1, $a0
/* 104E7C 800E6D8C 26440048 */  addiu      $a0, $s2, 0x48
/* 104E80 800E6D90 26250044 */  addiu      $a1, $s1, 0x44
/* 104E84 800E6D94 0C000708 */  jal        func_80001C20
/* 104E88 800E6D98 24060008 */   addiu     $a2, $zero, 0x8
/* 104E8C 800E6D9C 08039B25 */  j          .Lmenu_800E6C94
/* 104E90 800E6DA0 00000000 */   nop
.Lmenu_800E6DA4:
/* 104E94 800E6DA4 02402021 */  addu       $a0, $s2, $zero
/* 104E98 800E6DA8 02202821 */  addu       $a1, $s1, $zero
/* 104E9C 800E6DAC 0C039454 */  jal        func_menu_800E5150
/* 104EA0 800E6DB0 02603821 */   addu      $a3, $s3, $zero
/* 104EA4 800E6DB4 08039B25 */  j          .Lmenu_800E6C94
/* 104EA8 800E6DB8 00000000 */   nop
.Lmenu_800E6DBC:
/* 104EAC 800E6DBC 92420048 */  lbu        $v0, 0x48($s2)
/* 104EB0 800E6DC0 14400006 */  bnez       $v0, .Lmenu_800E6DDC
/* 104EB4 800E6DC4 24050013 */   addiu     $a1, $zero, 0x13
/* 104EB8 800E6DC8 8E220028 */  lw         $v0, 0x28($s1)
/* 104EBC 800E6DCC 84440098 */  lh         $a0, 0x98($v0)
/* 104EC0 800E6DD0 8C42009C */  lw         $v0, 0x9C($v0)
/* 104EC4 800E6DD4 0040F809 */  jalr       $v0
/* 104EC8 800E6DD8 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800E6DDC:
/* 104ECC 800E6DDC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 104ED0 800E6DE0 8FB40028 */  lw         $s4, 0x28($sp)
/* 104ED4 800E6DE4 8FB30024 */  lw         $s3, 0x24($sp)
/* 104ED8 800E6DE8 8FB20020 */  lw         $s2, 0x20($sp)
/* 104EDC 800E6DEC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 104EE0 800E6DF0 8FB00018 */  lw         $s0, 0x18($sp)
/* 104EE4 800E6DF4 03E00008 */  jr         $ra
/* 104EE8 800E6DF8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E6DFC
/* 104EEC 800E6DFC 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 104EF0 800E6E00 AFB00050 */  sw         $s0, 0x50($sp)
/* 104EF4 800E6E04 00808021 */  addu       $s0, $a0, $zero
/* 104EF8 800E6E08 AFB10054 */  sw         $s1, 0x54($sp)
/* 104EFC 800E6E0C 00A08821 */  addu       $s1, $a1, $zero
/* 104F00 800E6E10 AFBF005C */  sw         $ra, 0x5C($sp)
/* 104F04 800E6E14 AFB20058 */  sw         $s2, 0x58($sp)
/* 104F08 800E6E18 8E020064 */  lw         $v0, 0x64($s0)
/* 104F0C 800E6E1C 14400012 */  bnez       $v0, .Lmenu_800E6E68
/* 104F10 800E6E20 00C09021 */   addu      $s2, $a2, $zero
/* 104F14 800E6E24 8E230078 */  lw         $v1, 0x78($s1)
/* 104F18 800E6E28 8E020050 */  lw         $v0, 0x50($s0)
/* 104F1C 800E6E2C 0043102B */  sltu       $v0, $v0, $v1
/* 104F20 800E6E30 14400006 */  bnez       $v0, .Lmenu_800E6E4C
/* 104F24 800E6E34 3C04800D */   lui       $a0, %hi(D_menu_800CB2B0)
/* 104F28 800E6E38 2484B2B0 */  addiu      $a0, $a0, %lo(D_menu_800CB2B0)
/* 104F2C 800E6E3C 00002821 */  addu       $a1, $zero, $zero
/* 104F30 800E6E40 00A03021 */  addu       $a2, $a1, $zero
/* 104F34 800E6E44 0C011ACF */  jal        func_80046B3C
/* 104F38 800E6E48 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E6E4C:
/* 104F3C 800E6E4C 96050052 */  lhu        $a1, 0x52($s0)
/* 104F40 800E6E50 0C0393DF */  jal        func_menu_800E4F7C
/* 104F44 800E6E54 02202021 */   addu      $a0, $s1, $zero
/* 104F48 800E6E58 00402021 */  addu       $a0, $v0, $zero
/* 104F4C 800E6E5C 9606006E */  lhu        $a2, 0x6E($s0)
/* 104F50 800E6E60 0C003053 */  jal        func_8000C14C
/* 104F54 800E6E64 26050058 */   addiu     $a1, $s0, 0x58
.Lmenu_800E6E68:
/* 104F58 800E6E68 02402021 */  addu       $a0, $s2, $zero
/* 104F5C 800E6E6C 26110048 */  addiu      $s1, $s0, 0x48
/* 104F60 800E6E70 0C016E91 */  jal        func_8005BA44
/* 104F64 800E6E74 02202821 */   addu      $a1, $s1, $zero
/* 104F68 800E6E78 14400010 */  bnez       $v0, .Lmenu_800E6EBC
/* 104F6C 800E6E7C AE020068 */   sw        $v0, 0x68($s0)
/* 104F70 800E6E80 27A40010 */  addiu      $a0, $sp, 0x10
/* 104F74 800E6E84 02202821 */  addu       $a1, $s1, $zero
/* 104F78 800E6E88 0C000708 */  jal        func_80001C20
/* 104F7C 800E6E8C 24060008 */   addiu     $a2, $zero, 0x8
/* 104F80 800E6E90 A3A00018 */  sb         $zero, 0x18($sp)
/* 104F84 800E6E94 27A40010 */  addiu      $a0, $sp, 0x10
/* 104F88 800E6E98 3C05800D */  lui        $a1, %hi(D_menu_800CB2B4)
/* 104F8C 800E6E9C 0C0006C8 */  jal        func_80001B20
/* 104F90 800E6EA0 24A5B2B4 */   addiu     $a1, $a1, %lo(D_menu_800CB2B4)
/* 104F94 800E6EA4 3C04800D */  lui        $a0, %hi(D_menu_800CB2B0)
/* 104F98 800E6EA8 2484B2B0 */  addiu      $a0, $a0, %lo(D_menu_800CB2B0)
/* 104F9C 800E6EAC 00002821 */  addu       $a1, $zero, $zero
/* 104FA0 800E6EB0 00A03021 */  addu       $a2, $a1, $zero
/* 104FA4 800E6EB4 0C011ACF */  jal        func_80046B3C
/* 104FA8 800E6EB8 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E6EBC:
/* 104FAC 800E6EBC 8FBF005C */  lw         $ra, 0x5C($sp)
/* 104FB0 800E6EC0 8FB20058 */  lw         $s2, 0x58($sp)
/* 104FB4 800E6EC4 8FB10054 */  lw         $s1, 0x54($sp)
/* 104FB8 800E6EC8 8FB00050 */  lw         $s0, 0x50($sp)
/* 104FBC 800E6ECC 03E00008 */  jr         $ra
/* 104FC0 800E6ED0 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_menu_800E6ED4
/* 104FC4 800E6ED4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104FC8 800E6ED8 AFB00010 */  sw         $s0, 0x10($sp)
/* 104FCC 800E6EDC 00808021 */  addu       $s0, $a0, $zero
/* 104FD0 800E6EE0 26020058 */  addiu      $v0, $s0, 0x58
/* 104FD4 800E6EE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 104FD8 800E6EE8 AE000058 */  sw         $zero, 0x58($s0)
/* 104FDC 800E6EEC A4400008 */  sh         $zero, 0x8($v0)
/* 104FE0 800E6EF0 A4400006 */  sh         $zero, 0x6($v0)
/* 104FE4 800E6EF4 A4400004 */  sh         $zero, 0x4($v0)
/* 104FE8 800E6EF8 8E040064 */  lw         $a0, 0x64($s0)
/* 104FEC 800E6EFC 10800003 */  beqz       $a0, .Lmenu_800E6F0C
/* 104FF0 800E6F00 00000000 */   nop
/* 104FF4 800E6F04 0C009444 */  jal        func_80025110
/* 104FF8 800E6F08 00000000 */   nop
.Lmenu_800E6F0C:
/* 104FFC 800E6F0C 0C039B0A */  jal        func_menu_800E6C28
/* 105000 800E6F10 02002021 */   addu      $a0, $s0, $zero
/* 105004 800E6F14 0C03839D */  jal        func_menu_800E0E74
/* 105008 800E6F18 02002021 */   addu      $a0, $s0, $zero
/* 10500C 800E6F1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 105010 800E6F20 8FB00010 */  lw         $s0, 0x10($sp)
/* 105014 800E6F24 03E00008 */  jr         $ra
/* 105018 800E6F28 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E6F2C
/* 10501C 800E6F2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 105020 800E6F30 00801021 */  addu       $v0, $a0, $zero
/* 105024 800E6F34 00A01821 */  addu       $v1, $a1, $zero
/* 105028 800E6F38 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10502C 800E6F3C 8C450064 */  lw         $a1, 0x64($v0)
/* 105030 800E6F40 10A00006 */  beqz       $a1, .Lmenu_800E6F5C
/* 105034 800E6F44 00C03821 */   addu      $a3, $a2, $zero
/* 105038 800E6F48 8C440068 */  lw         $a0, 0x68($v0)
/* 10503C 800E6F4C 0C0137B6 */  jal        func_8004DED8
/* 105040 800E6F50 00603021 */   addu      $a2, $v1, $zero
/* 105044 800E6F54 08039BDB */  j          .Lmenu_800E6F6C
/* 105048 800E6F58 00000000 */   nop
.Lmenu_800E6F5C:
/* 10504C 800E6F5C 8C440068 */  lw         $a0, 0x68($v0)
/* 105050 800E6F60 24450058 */  addiu      $a1, $v0, 0x58
/* 105054 800E6F64 0C01376C */  jal        func_8004DDB0
/* 105058 800E6F68 00603021 */   addu      $a2, $v1, $zero
.Lmenu_800E6F6C:
/* 10505C 800E6F6C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 105060 800E6F70 03E00008 */  jr         $ra
/* 105064 800E6F74 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E6F78
/* 105068 800E6F78 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10506C 800E6F7C AFB00030 */  sw         $s0, 0x30($sp)
/* 105070 800E6F80 00808021 */  addu       $s0, $a0, $zero
/* 105074 800E6F84 00A01821 */  addu       $v1, $a1, $zero
/* 105078 800E6F88 AFBF0034 */  sw         $ra, 0x34($sp)
/* 10507C 800E6F8C 8E020044 */  lw         $v0, 0x44($s0)
/* 105080 800E6F90 C7A00050 */  lwc1       $f0, 0x50($sp)
/* 105084 800E6F94 C7A20054 */  lwc1       $f2, 0x54($sp)
/* 105088 800E6F98 30420100 */  andi       $v0, $v0, 0x100
/* 10508C 800E6F9C 10400006 */  beqz       $v0, .Lmenu_800E6FB8
/* 105090 800E6FA0 00E04021 */   addu      $t0, $a3, $zero
/* 105094 800E6FA4 8E020068 */  lw         $v0, 0x68($s0)
/* 105098 800E6FA8 8A090054 */  lwl        $t1, 0x54($s0)
/* 10509C 800E6FAC 9A090057 */  lwr        $t1, 0x57($s0)
/* 1050A0 800E6FB0 A8490038 */  swl        $t1, 0x38($v0)
/* 1050A4 800E6FB4 B849003B */  swr        $t1, 0x3B($v0)
.Lmenu_800E6FB8:
/* 1050A8 800E6FB8 8E020064 */  lw         $v0, 0x64($s0)
/* 1050AC 800E6FBC 1040000D */  beqz       $v0, .Lmenu_800E6FF4
/* 1050B0 800E6FC0 00C03821 */   addu      $a3, $a2, $zero
/* 1050B4 800E6FC4 8C62012C */  lw         $v0, 0x12C($v1)
/* 1050B8 800E6FC8 844400D0 */  lh         $a0, 0xD0($v0)
/* 1050BC 800E6FCC AFA80010 */  sw         $t0, 0x10($sp)
/* 1050C0 800E6FD0 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1050C4 800E6FD4 E7A20018 */  swc1       $f2, 0x18($sp)
/* 1050C8 800E6FD8 AFA0001C */  sw         $zero, 0x1C($sp)
/* 1050CC 800E6FDC AFA00020 */  sw         $zero, 0x20($sp)
/* 1050D0 800E6FE0 8E050064 */  lw         $a1, 0x64($s0)
/* 1050D4 800E6FE4 8E060068 */  lw         $a2, 0x68($s0)
/* 1050D8 800E6FE8 8C4200D4 */  lw         $v0, 0xD4($v0)
/* 1050DC 800E6FEC 08039C07 */  j          .Lmenu_800E701C
/* 1050E0 800E6FF0 00000000 */   nop
.Lmenu_800E6FF4:
/* 1050E4 800E6FF4 8C62012C */  lw         $v0, 0x12C($v1)
/* 1050E8 800E6FF8 26050058 */  addiu      $a1, $s0, 0x58
/* 1050EC 800E6FFC 844400D8 */  lh         $a0, 0xD8($v0)
/* 1050F0 800E7000 AFA80010 */  sw         $t0, 0x10($sp)
/* 1050F4 800E7004 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1050F8 800E7008 E7A20018 */  swc1       $f2, 0x18($sp)
/* 1050FC 800E700C AFA0001C */  sw         $zero, 0x1C($sp)
/* 105100 800E7010 AFA00020 */  sw         $zero, 0x20($sp)
/* 105104 800E7014 8E060068 */  lw         $a2, 0x68($s0)
/* 105108 800E7018 8C4200DC */  lw         $v0, 0xDC($v0)
.Lmenu_800E701C:
/* 10510C 800E701C 0040F809 */  jalr       $v0
/* 105110 800E7020 00642021 */   addu      $a0, $v1, $a0
/* 105114 800E7024 8E020044 */  lw         $v0, 0x44($s0)
/* 105118 800E7028 30420100 */  andi       $v0, $v0, 0x100
/* 10511C 800E702C 1040000A */  beqz       $v0, .Lmenu_800E7058
/* 105120 800E7030 240200FF */   addiu     $v0, $zero, 0xFF
/* 105124 800E7034 A3A20028 */  sb         $v0, 0x28($sp)
/* 105128 800E7038 A3A20029 */  sb         $v0, 0x29($sp)
/* 10512C 800E703C A3A2002A */  sb         $v0, 0x2A($sp)
/* 105130 800E7040 A3A2002B */  sb         $v0, 0x2B($sp)
/* 105134 800E7044 8E020068 */  lw         $v0, 0x68($s0)
/* 105138 800E7048 8BA90028 */  lwl        $t1, 0x28($sp)
/* 10513C 800E704C 9BA9002B */  lwr        $t1, 0x2B($sp)
/* 105140 800E7050 A8490038 */  swl        $t1, 0x38($v0)
/* 105144 800E7054 B849003B */  swr        $t1, 0x3B($v0)
.Lmenu_800E7058:
/* 105148 800E7058 8FBF0034 */  lw         $ra, 0x34($sp)
/* 10514C 800E705C 8FB00030 */  lw         $s0, 0x30($sp)
/* 105150 800E7060 03E00008 */  jr         $ra
/* 105154 800E7064 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E7068
/* 105158 800E7068 3C028012 */  lui        $v0, %hi(D_80126A00)
/* 10515C 800E706C 03E00008 */  jr         $ra
/* 105160 800E7070 AC446A00 */   sw        $a0, %lo(D_80126A00)($v0)
