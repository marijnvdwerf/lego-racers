.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800E0490
/* FE580 800E0490 8C820010 */  lw         $v0, 0x10($a0)
/* FE584 800E0494 8FA30010 */  lw         $v1, 0x10($sp)
/* FE588 800E0498 ACA20000 */  sw         $v0, 0x0($a1)
/* FE58C 800E049C 8C820014 */  lw         $v0, 0x14($a0)
/* FE590 800E04A0 ACC20000 */  sw         $v0, 0x0($a2)
/* FE594 800E04A4 8C820018 */  lw         $v0, 0x18($a0)
/* FE598 800E04A8 ACE20000 */  sw         $v0, 0x0($a3)
/* FE59C 800E04AC 8C82000C */  lw         $v0, 0xC($a0)
/* FE5A0 800E04B0 03E00008 */  jr         $ra
/* FE5A4 800E04B4 AC620000 */   sw        $v0, 0x0($v1)

glabel func_menu_800E04B8
/* FE5A8 800E04B8 8FA20010 */  lw         $v0, 0x10($sp)
/* FE5AC 800E04BC AC850010 */  sw         $a1, 0x10($a0)
/* FE5B0 800E04C0 AC860014 */  sw         $a2, 0x14($a0)
/* FE5B4 800E04C4 AC870018 */  sw         $a3, 0x18($a0)
/* FE5B8 800E04C8 30420003 */  andi       $v0, $v0, 0x3
/* FE5BC 800E04CC 03E00008 */  jr         $ra
/* FE5C0 800E04D0 AC82000C */   sw        $v0, 0xC($a0)

glabel func_menu_800E04D4
/* FE5C4 800E04D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FE5C8 800E04D8 AFB00018 */  sw         $s0, 0x18($sp)
/* FE5CC 800E04DC 00808021 */  addu       $s0, $a0, $zero
/* FE5D0 800E04E0 AFBF001C */  sw         $ra, 0x1C($sp)
/* FE5D4 800E04E4 8E030008 */  lw         $v1, 0x8($s0)
/* FE5D8 800E04E8 000310C0 */  sll        $v0, $v1, 3
/* FE5DC 800E04EC 00431023 */  subu       $v0, $v0, $v1
/* FE5E0 800E04F0 8E03000C */  lw         $v1, 0xC($s0)
/* FE5E4 800E04F4 00021080 */  sll        $v0, $v0, 2
/* FE5E8 800E04F8 00431021 */  addu       $v0, $v0, $v1
/* FE5EC 800E04FC AC450000 */  sw         $a1, 0x0($v0)
/* FE5F0 800E0500 00C02821 */  addu       $a1, $a2, $zero
/* FE5F4 800E0504 00E03021 */  addu       $a2, $a3, $zero
/* FE5F8 800E0508 8E030008 */  lw         $v1, 0x8($s0)
/* FE5FC 800E050C 8FA40034 */  lw         $a0, 0x34($sp)
/* FE600 800E0510 000310C0 */  sll        $v0, $v1, 3
/* FE604 800E0514 00431023 */  subu       $v0, $v0, $v1
/* FE608 800E0518 8E03000C */  lw         $v1, 0xC($s0)
/* FE60C 800E051C 00021080 */  sll        $v0, $v0, 2
/* FE610 800E0520 00431021 */  addu       $v0, $v0, $v1
/* FE614 800E0524 AC440004 */  sw         $a0, 0x4($v0)
/* FE618 800E0528 8E030008 */  lw         $v1, 0x8($s0)
/* FE61C 800E052C 8FA40038 */  lw         $a0, 0x38($sp)
/* FE620 800E0530 000310C0 */  sll        $v0, $v1, 3
/* FE624 800E0534 00431023 */  subu       $v0, $v0, $v1
/* FE628 800E0538 8E03000C */  lw         $v1, 0xC($s0)
/* FE62C 800E053C 00021080 */  sll        $v0, $v0, 2
/* FE630 800E0540 00431021 */  addu       $v0, $v0, $v1
/* FE634 800E0544 AC440008 */  sw         $a0, 0x8($v0)
/* FE638 800E0548 8FA30030 */  lw         $v1, 0x30($sp)
/* FE63C 800E054C 8E020008 */  lw         $v0, 0x8($s0)
/* FE640 800E0550 8E08000C */  lw         $t0, 0xC($s0)
/* FE644 800E0554 000220C0 */  sll        $a0, $v0, 3
/* FE648 800E0558 00822023 */  subu       $a0, $a0, $v0
/* FE64C 800E055C 00042080 */  sll        $a0, $a0, 2
/* FE650 800E0560 AFA30010 */  sw         $v1, 0x10($sp)
/* FE654 800E0564 8FA7003C */  lw         $a3, 0x3C($sp)
/* FE658 800E0568 0C03812E */  jal        func_menu_800E04B8
/* FE65C 800E056C 01042021 */   addu      $a0, $t0, $a0
/* FE660 800E0570 8E020008 */  lw         $v0, 0x8($s0)
/* FE664 800E0574 24430001 */  addiu      $v1, $v0, 0x1
/* FE668 800E0578 AE030008 */  sw         $v1, 0x8($s0)
/* FE66C 800E057C 8FBF001C */  lw         $ra, 0x1C($sp)
/* FE670 800E0580 8FB00018 */  lw         $s0, 0x18($sp)
/* FE674 800E0584 03E00008 */  jr         $ra
/* FE678 800E0588 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E058C
/* FE67C 800E058C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* FE680 800E0590 AFB00030 */  sw         $s0, 0x30($sp)
/* FE684 800E0594 00808021 */  addu       $s0, $a0, $zero
/* FE688 800E0598 AFBF0038 */  sw         $ra, 0x38($sp)
/* FE68C 800E059C AFB10034 */  sw         $s1, 0x34($sp)
/* FE690 800E05A0 8E020008 */  lw         $v0, 0x8($s0)
/* FE694 800E05A4 00A08821 */  addu       $s1, $a1, $zero
/* FE698 800E05A8 0222102A */  slt        $v0, $s1, $v0
/* FE69C 800E05AC 10400068 */  beqz       $v0, .Lmenu_800E0750
/* FE6A0 800E05B0 00001021 */   addu      $v0, $zero, $zero
/* FE6A4 800E05B4 06200065 */  bltz       $s1, .Lmenu_800E074C
/* FE6A8 800E05B8 001110C0 */   sll       $v0, $s1, 3
/* FE6AC 800E05BC 00511023 */  subu       $v0, $v0, $s1
/* FE6B0 800E05C0 8E03000C */  lw         $v1, 0xC($s0)
/* FE6B4 800E05C4 00022880 */  sll        $a1, $v0, 2
/* FE6B8 800E05C8 00A31821 */  addu       $v1, $a1, $v1
/* FE6BC 800E05CC 8C660000 */  lw         $a2, 0x0($v1)
/* FE6C0 800E05D0 8C670004 */  lw         $a3, 0x4($v1)
/* FE6C4 800E05D4 8C680008 */  lw         $t0, 0x8($v1)
/* FE6C8 800E05D8 8C69000C */  lw         $t1, 0xC($v1)
/* FE6CC 800E05DC AFA60010 */  sw         $a2, 0x10($sp)
/* FE6D0 800E05E0 AFA70014 */  sw         $a3, 0x14($sp)
/* FE6D4 800E05E4 AFA80018 */  sw         $t0, 0x18($sp)
/* FE6D8 800E05E8 AFA9001C */  sw         $t1, 0x1C($sp)
/* FE6DC 800E05EC 8C660010 */  lw         $a2, 0x10($v1)
/* FE6E0 800E05F0 8C670014 */  lw         $a3, 0x14($v1)
/* FE6E4 800E05F4 8C680018 */  lw         $t0, 0x18($v1)
/* FE6E8 800E05F8 AFA60020 */  sw         $a2, 0x20($sp)
/* FE6EC 800E05FC AFA70024 */  sw         $a3, 0x24($sp)
/* FE6F0 800E0600 AFA80028 */  sw         $t0, 0x28($sp)
/* FE6F4 800E0604 8E020008 */  lw         $v0, 0x8($s0)
/* FE6F8 800E0608 02202021 */  addu       $a0, $s1, $zero
/* FE6FC 800E060C 2442FFFF */  addiu      $v0, $v0, -0x1
/* FE700 800E0610 AE020008 */  sw         $v0, 0x8($s0)
/* FE704 800E0614 0082102A */  slt        $v0, $a0, $v0
/* FE708 800E0618 10400016 */  beqz       $v0, .Lmenu_800E0674
/* FE70C 800E061C 00A01821 */   addu      $v1, $a1, $zero
.Lmenu_800E0620:
/* FE710 800E0620 8E02000C */  lw         $v0, 0xC($s0)
/* FE714 800E0624 24840001 */  addiu      $a0, $a0, 0x1
/* FE718 800E0628 00621021 */  addu       $v0, $v1, $v0
/* FE71C 800E062C 8C46001C */  lw         $a2, 0x1C($v0)
/* FE720 800E0630 8C470020 */  lw         $a3, 0x20($v0)
/* FE724 800E0634 8C480024 */  lw         $t0, 0x24($v0)
/* FE728 800E0638 8C490028 */  lw         $t1, 0x28($v0)
/* FE72C 800E063C AC460000 */  sw         $a2, 0x0($v0)
/* FE730 800E0640 AC470004 */  sw         $a3, 0x4($v0)
/* FE734 800E0644 AC480008 */  sw         $t0, 0x8($v0)
/* FE738 800E0648 AC49000C */  sw         $t1, 0xC($v0)
/* FE73C 800E064C 8C46002C */  lw         $a2, 0x2C($v0)
/* FE740 800E0650 8C470030 */  lw         $a3, 0x30($v0)
/* FE744 800E0654 8C480034 */  lw         $t0, 0x34($v0)
/* FE748 800E0658 AC460010 */  sw         $a2, 0x10($v0)
/* FE74C 800E065C AC470014 */  sw         $a3, 0x14($v0)
/* FE750 800E0660 AC480018 */  sw         $t0, 0x18($v0)
/* FE754 800E0664 8E020008 */  lw         $v0, 0x8($s0)
/* FE758 800E0668 0082102A */  slt        $v0, $a0, $v0
/* FE75C 800E066C 1440FFEC */  bnez       $v0, .Lmenu_800E0620
/* FE760 800E0670 2463001C */   addiu     $v1, $v1, 0x1C
.Lmenu_800E0674:
/* FE764 800E0674 0C03821F */  jal        func_menu_800E087C
/* FE768 800E0678 02002021 */   addu      $a0, $s0, $zero
/* FE76C 800E067C 14400034 */  bnez       $v0, .Lmenu_800E0750
/* FE770 800E0680 24020001 */   addiu     $v0, $zero, 0x1
/* FE774 800E0684 8E040008 */  lw         $a0, 0x8($s0)
/* FE778 800E0688 24820001 */  addiu      $v0, $a0, 0x1
/* FE77C 800E068C AE020008 */  sw         $v0, 0x8($s0)
/* FE780 800E0690 0224102A */  slt        $v0, $s1, $a0
/* FE784 800E0694 10400017 */  beqz       $v0, .Lmenu_800E06F4
/* FE788 800E0698 000410C0 */   sll       $v0, $a0, 3
/* FE78C 800E069C 00441023 */  subu       $v0, $v0, $a0
/* FE790 800E06A0 00021880 */  sll        $v1, $v0, 2
.Lmenu_800E06A4:
/* FE794 800E06A4 8E02000C */  lw         $v0, 0xC($s0)
/* FE798 800E06A8 2484FFFF */  addiu      $a0, $a0, -0x1
/* FE79C 800E06AC 00621021 */  addu       $v0, $v1, $v0
/* FE7A0 800E06B0 8C46FFE4 */  lw         $a2, -0x1C($v0)
/* FE7A4 800E06B4 8C47FFE8 */  lw         $a3, -0x18($v0)
/* FE7A8 800E06B8 8C48FFEC */  lw         $t0, -0x14($v0)
/* FE7AC 800E06BC 8C49FFF0 */  lw         $t1, -0x10($v0)
/* FE7B0 800E06C0 AC460000 */  sw         $a2, 0x0($v0)
/* FE7B4 800E06C4 AC470004 */  sw         $a3, 0x4($v0)
/* FE7B8 800E06C8 AC480008 */  sw         $t0, 0x8($v0)
/* FE7BC 800E06CC AC49000C */  sw         $t1, 0xC($v0)
/* FE7C0 800E06D0 8C46FFF4 */  lw         $a2, -0xC($v0)
/* FE7C4 800E06D4 8C47FFF8 */  lw         $a3, -0x8($v0)
/* FE7C8 800E06D8 8C48FFFC */  lw         $t0, -0x4($v0)
/* FE7CC 800E06DC AC460010 */  sw         $a2, 0x10($v0)
/* FE7D0 800E06E0 AC470014 */  sw         $a3, 0x14($v0)
/* FE7D4 800E06E4 AC480018 */  sw         $t0, 0x18($v0)
/* FE7D8 800E06E8 0224102A */  slt        $v0, $s1, $a0
/* FE7DC 800E06EC 1440FFED */  bnez       $v0, .Lmenu_800E06A4
/* FE7E0 800E06F0 2463FFE4 */   addiu     $v1, $v1, -0x1C
.Lmenu_800E06F4:
/* FE7E4 800E06F4 02002021 */  addu       $a0, $s0, $zero
/* FE7E8 800E06F8 001110C0 */  sll        $v0, $s1, 3
/* FE7EC 800E06FC 00511023 */  subu       $v0, $v0, $s1
/* FE7F0 800E0700 8C83000C */  lw         $v1, 0xC($a0)
/* FE7F4 800E0704 00021080 */  sll        $v0, $v0, 2
/* FE7F8 800E0708 00431021 */  addu       $v0, $v0, $v1
/* FE7FC 800E070C 8FA60010 */  lw         $a2, 0x10($sp)
/* FE800 800E0710 8FA70014 */  lw         $a3, 0x14($sp)
/* FE804 800E0714 8FA80018 */  lw         $t0, 0x18($sp)
/* FE808 800E0718 8FA9001C */  lw         $t1, 0x1C($sp)
/* FE80C 800E071C AC460000 */  sw         $a2, 0x0($v0)
/* FE810 800E0720 AC470004 */  sw         $a3, 0x4($v0)
/* FE814 800E0724 AC480008 */  sw         $t0, 0x8($v0)
/* FE818 800E0728 AC49000C */  sw         $t1, 0xC($v0)
/* FE81C 800E072C 8FA60020 */  lw         $a2, 0x20($sp)
/* FE820 800E0730 8FA70024 */  lw         $a3, 0x24($sp)
/* FE824 800E0734 8FA80028 */  lw         $t0, 0x28($sp)
/* FE828 800E0738 AC460010 */  sw         $a2, 0x10($v0)
/* FE82C 800E073C AC470014 */  sw         $a3, 0x14($v0)
/* FE830 800E0740 AC480018 */  sw         $t0, 0x18($v0)
/* FE834 800E0744 0C03821F */  jal        func_menu_800E087C
/* FE838 800E0748 00000000 */   nop
.Lmenu_800E074C:
/* FE83C 800E074C 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800E0750:
/* FE840 800E0750 8FBF0038 */  lw         $ra, 0x38($sp)
/* FE844 800E0754 8FB10034 */  lw         $s1, 0x34($sp)
/* FE848 800E0758 8FB00030 */  lw         $s0, 0x30($sp)
/* FE84C 800E075C 03E00008 */  jr         $ra
/* FE850 800E0760 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800E0764
/* FE854 800E0764 00801021 */  addu       $v0, $a0, $zero
/* FE858 800E0768 AC400010 */  sw         $zero, 0x10($v0)
/* FE85C 800E076C AC40000C */  sw         $zero, 0xC($v0)
/* FE860 800E0770 AC400008 */  sw         $zero, 0x8($v0)
/* FE864 800E0774 AC400004 */  sw         $zero, 0x4($v0)
/* FE868 800E0778 03E00008 */  jr         $ra
/* FE86C 800E077C AC400000 */   sw        $zero, 0x0($v0)

glabel func_menu_800E0780
/* FE870 800E0780 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FE874 800E0784 AFB10014 */  sw         $s1, 0x14($sp)
/* FE878 800E0788 00808821 */  addu       $s1, $a0, $zero
/* FE87C 800E078C AFB00010 */  sw         $s0, 0x10($sp)
/* FE880 800E0790 AFBF0018 */  sw         $ra, 0x18($sp)
/* FE884 800E0794 0C0381F1 */  jal        func_menu_800E07C4
/* FE888 800E0798 00A08021 */   addu      $s0, $a1, $zero
/* FE88C 800E079C 32100001 */  andi       $s0, $s0, 0x1
/* FE890 800E07A0 12000003 */  beqz       $s0, .Lmenu_800E07B0
/* FE894 800E07A4 00000000 */   nop
/* FE898 800E07A8 0C01FB5C */  jal        func_8007ED70
/* FE89C 800E07AC 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800E07B0:
/* FE8A0 800E07B0 8FBF0018 */  lw         $ra, 0x18($sp)
/* FE8A4 800E07B4 8FB10014 */  lw         $s1, 0x14($sp)
/* FE8A8 800E07B8 8FB00010 */  lw         $s0, 0x10($sp)
/* FE8AC 800E07BC 03E00008 */  jr         $ra
/* FE8B0 800E07C0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E07C4
/* FE8B4 800E07C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FE8B8 800E07C8 AFB00010 */  sw         $s0, 0x10($sp)
/* FE8BC 800E07CC 00808021 */  addu       $s0, $a0, $zero
/* FE8C0 800E07D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* FE8C4 800E07D4 8E04000C */  lw         $a0, 0xC($s0)
/* FE8C8 800E07D8 50800005 */  beql       $a0, $zero, .Lmenu_800E07F0
/* FE8CC 800E07DC AE000008 */   sw        $zero, 0x8($s0)
/* FE8D0 800E07E0 0C009444 */  jal        func_80025110
/* FE8D4 800E07E4 00000000 */   nop
/* FE8D8 800E07E8 AE00000C */  sw         $zero, 0xC($s0)
/* FE8DC 800E07EC AE000008 */  sw         $zero, 0x8($s0)
.Lmenu_800E07F0:
/* FE8E0 800E07F0 AE000004 */  sw         $zero, 0x4($s0)
/* FE8E4 800E07F4 AE000000 */  sw         $zero, 0x0($s0)
/* FE8E8 800E07F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* FE8EC 800E07FC 8FB00010 */  lw         $s0, 0x10($sp)
/* FE8F0 800E0800 03E00008 */  jr         $ra
/* FE8F4 800E0804 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0808
/* FE8F8 800E0808 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FE8FC 800E080C AFB00010 */  sw         $s0, 0x10($sp)
/* FE900 800E0810 00808021 */  addu       $s0, $a0, $zero
/* FE904 800E0814 AFB10014 */  sw         $s1, 0x14($sp)
/* FE908 800E0818 AFBF0018 */  sw         $ra, 0x18($sp)
/* FE90C 800E081C 0C0381F1 */  jal        func_menu_800E07C4
/* FE910 800E0820 00A08821 */   addu      $s1, $a1, $zero
/* FE914 800E0824 3C028012 */  lui        $v0, %hi(D_menu_801269E0)
/* FE918 800E0828 8C4469E0 */  lw         $a0, %lo(D_menu_801269E0)($v0)
/* FE91C 800E082C 0C01FB65 */  jal        func_8007ED94
/* FE920 800E0830 00000000 */   nop
/* FE924 800E0834 001120C0 */  sll        $a0, $s1, 3
/* FE928 800E0838 00912023 */  subu       $a0, $a0, $s1
/* FE92C 800E083C 0C00943C */  jal        func_800250F0
/* FE930 800E0840 00042080 */   sll       $a0, $a0, 2
/* FE934 800E0844 0C01FB72 */  jal        func_8007EDC8
/* FE938 800E0848 AE02000C */   sw        $v0, 0xC($s0)
/* FE93C 800E084C 8E02000C */  lw         $v0, 0xC($s0)
/* FE940 800E0850 54400004 */  bnel       $v0, $zero, .Lmenu_800E0864
/* FE944 800E0854 AE110004 */   sw        $s1, 0x4($s0)
/* FE948 800E0858 AE000004 */  sw         $zero, 0x4($s0)
/* FE94C 800E085C 0803821A */  j          .Lmenu_800E0868
/* FE950 800E0860 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800E0864:
/* FE954 800E0864 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800E0868:
/* FE958 800E0868 8FBF0018 */  lw         $ra, 0x18($sp)
/* FE95C 800E086C 8FB10014 */  lw         $s1, 0x14($sp)
/* FE960 800E0870 8FB00010 */  lw         $s0, 0x10($sp)
/* FE964 800E0874 03E00008 */  jr         $ra
/* FE968 800E0878 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E087C
/* FE96C 800E087C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* FE970 800E0880 AFB20038 */  sw         $s2, 0x38($sp)
/* FE974 800E0884 00809021 */  addu       $s2, $a0, $zero
/* FE978 800E0888 AFB50044 */  sw         $s5, 0x44($sp)
/* FE97C 800E088C 24150001 */  addiu      $s5, $zero, 0x1
/* FE980 800E0890 AFB40040 */  sw         $s4, 0x40($sp)
/* FE984 800E0894 0000A021 */  addu       $s4, $zero, $zero
/* FE988 800E0898 AFB60048 */  sw         $s6, 0x48($sp)
/* FE98C 800E089C 2416FFFF */  addiu      $s6, $zero, -0x1
/* FE990 800E08A0 AFBF004C */  sw         $ra, 0x4C($sp)
/* FE994 800E08A4 AFB3003C */  sw         $s3, 0x3C($sp)
/* FE998 800E08A8 AFB10034 */  sw         $s1, 0x34($sp)
/* FE99C 800E08AC AFB00030 */  sw         $s0, 0x30($sp)
/* FE9A0 800E08B0 8E440010 */  lw         $a0, 0x10($s2)
/* FE9A4 800E08B4 0C0379CC */  jal        func_menu_800DE730
/* FE9A8 800E08B8 02809821 */   addu      $s3, $s4, $zero
.Lmenu_800E08BC:
/* FE9AC 800E08BC 8E420008 */  lw         $v0, 0x8($s2)
/* FE9B0 800E08C0 0282102A */  slt        $v0, $s4, $v0
/* FE9B4 800E08C4 10400045 */  beqz       $v0, .Lmenu_800E09DC
/* FE9B8 800E08C8 27A50020 */   addiu     $a1, $sp, 0x20
/* FE9BC 800E08CC 27A60024 */  addiu      $a2, $sp, 0x24
/* FE9C0 800E08D0 8E44000C */  lw         $a0, 0xC($s2)
/* FE9C4 800E08D4 27A70028 */  addiu      $a3, $sp, 0x28
/* FE9C8 800E08D8 02642021 */  addu       $a0, $s3, $a0
/* FE9CC 800E08DC 8C910000 */  lw         $s1, 0x0($a0)
/* FE9D0 800E08E0 27A2002C */  addiu      $v0, $sp, 0x2C
/* FE9D4 800E08E4 0C038124 */  jal        func_menu_800E0490
/* FE9D8 800E08E8 AFA20010 */   sw        $v0, 0x10($sp)
/* FE9DC 800E08EC 8FA60020 */  lw         $a2, 0x20($sp)
/* FE9E0 800E08F0 8FA70024 */  lw         $a3, 0x24($sp)
/* FE9E4 800E08F4 8FA2002C */  lw         $v0, 0x2C($sp)
/* FE9E8 800E08F8 AFA00014 */  sw         $zero, 0x14($sp)
/* FE9EC 800E08FC AFA20010 */  sw         $v0, 0x10($sp)
/* FE9F0 800E0900 8E440010 */  lw         $a0, 0x10($s2)
/* FE9F4 800E0904 0C037A0A */  jal        func_menu_800DE828
/* FE9F8 800E0908 02202821 */   addu      $a1, $s1, $zero
/* FE9FC 800E090C 00408021 */  addu       $s0, $v0, $zero
/* FEA00 800E0910 1616000C */  bne        $s0, $s6, .Lmenu_800E0944
/* FEA04 800E0914 24020001 */   addiu     $v0, $zero, 0x1
/* FEA08 800E0918 8FA60020 */  lw         $a2, 0x20($sp)
/* FEA0C 800E091C 8FA70024 */  lw         $a3, 0x24($sp)
/* FEA10 800E0920 8FA3002C */  lw         $v1, 0x2C($sp)
/* FEA14 800E0924 AFA20014 */  sw         $v0, 0x14($sp)
/* FEA18 800E0928 AFA30010 */  sw         $v1, 0x10($sp)
/* FEA1C 800E092C 8E440010 */  lw         $a0, 0x10($s2)
/* FEA20 800E0930 0C037A0A */  jal        func_menu_800DE828
/* FEA24 800E0934 02202821 */   addu      $a1, $s1, $zero
/* FEA28 800E0938 00408021 */  addu       $s0, $v0, $zero
/* FEA2C 800E093C 52160024 */  beql       $s0, $s6, .Lmenu_800E09D0
/* FEA30 800E0940 0000A821 */   addu      $s5, $zero, $zero
.Lmenu_800E0944:
/* FEA34 800E0944 8FA20028 */  lw         $v0, 0x28($sp)
/* FEA38 800E0948 1456000A */  bne        $v0, $s6, .Lmenu_800E0974
/* FEA3C 800E094C 02003821 */   addu      $a3, $s0, $zero
/* FEA40 800E0950 8E44000C */  lw         $a0, 0xC($s2)
/* FEA44 800E0954 8FA50020 */  lw         $a1, 0x20($sp)
/* FEA48 800E0958 8FA60024 */  lw         $a2, 0x24($sp)
/* FEA4C 800E095C 8FA2002C */  lw         $v0, 0x2C($sp)
/* FEA50 800E0960 00932021 */  addu       $a0, $a0, $s3
/* FEA54 800E0964 0C03812E */  jal        func_menu_800E04B8
/* FEA58 800E0968 AFA20010 */   sw        $v0, 0x10($sp)
/* FEA5C 800E096C 0803825F */  j          .Lmenu_800E097C
/* FEA60 800E0970 00000000 */   nop
.Lmenu_800E0974:
/* FEA64 800E0974 56020001 */  bnel       $s0, $v0, .Lmenu_800E097C
/* FEA68 800E0978 0000A821 */   addu      $s5, $zero, $zero
.Lmenu_800E097C:
/* FEA6C 800E097C 8FA60020 */  lw         $a2, 0x20($sp)
/* FEA70 800E0980 8FA70024 */  lw         $a3, 0x24($sp)
/* FEA74 800E0984 8FA2002C */  lw         $v0, 0x2C($sp)
/* FEA78 800E0988 AFB00014 */  sw         $s0, 0x14($sp)
/* FEA7C 800E098C AFA20010 */  sw         $v0, 0x10($sp)
/* FEA80 800E0990 8E440010 */  lw         $a0, 0x10($s2)
/* FEA84 800E0994 0C037A8C */  jal        func_menu_800DEA30
/* FEA88 800E0998 02202821 */   addu      $a1, $s1, $zero
/* FEA8C 800E099C 5440000C */  bnel       $v0, $zero, .Lmenu_800E09D0
/* FEA90 800E09A0 0000A821 */   addu      $s5, $zero, $zero
/* FEA94 800E09A4 8FA60020 */  lw         $a2, 0x20($sp)
/* FEA98 800E09A8 8FA70024 */  lw         $a3, 0x24($sp)
/* FEA9C 800E09AC 8FA2002C */  lw         $v0, 0x2C($sp)
/* FEAA0 800E09B0 AFB00014 */  sw         $s0, 0x14($sp)
/* FEAA4 800E09B4 AFB40018 */  sw         $s4, 0x18($sp)
/* FEAA8 800E09B8 AFA20010 */  sw         $v0, 0x10($sp)
/* FEAAC 800E09BC 8E440010 */  lw         $a0, 0x10($s2)
/* FEAB0 800E09C0 0C037896 */  jal        func_menu_800DE258
/* FEAB4 800E09C4 02202821 */   addu      $a1, $s1, $zero
/* FEAB8 800E09C8 08038275 */  j          .Lmenu_800E09D4
/* FEABC 800E09CC 2673001C */   addiu     $s3, $s3, 0x1C
.Lmenu_800E09D0:
/* FEAC0 800E09D0 2673001C */  addiu      $s3, $s3, 0x1C
.Lmenu_800E09D4:
/* FEAC4 800E09D4 0803822F */  j          .Lmenu_800E08BC
/* FEAC8 800E09D8 26940001 */   addiu     $s4, $s4, 0x1
.Lmenu_800E09DC:
/* FEACC 800E09DC 02A01021 */  addu       $v0, $s5, $zero
/* FEAD0 800E09E0 8FBF004C */  lw         $ra, 0x4C($sp)
/* FEAD4 800E09E4 8FB60048 */  lw         $s6, 0x48($sp)
/* FEAD8 800E09E8 8FB50044 */  lw         $s5, 0x44($sp)
/* FEADC 800E09EC 8FB40040 */  lw         $s4, 0x40($sp)
/* FEAE0 800E09F0 8FB3003C */  lw         $s3, 0x3C($sp)
/* FEAE4 800E09F4 8FB20038 */  lw         $s2, 0x38($sp)
/* FEAE8 800E09F8 8FB10034 */  lw         $s1, 0x34($sp)
/* FEAEC 800E09FC 8FB00030 */  lw         $s0, 0x30($sp)
/* FEAF0 800E0A00 03E00008 */  jr         $ra
/* FEAF4 800E0A04 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800E0A08
/* FEAF8 800E0A08 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FEAFC 800E0A0C AFB20018 */  sw         $s2, 0x18($sp)
/* FEB00 800E0A10 00809021 */  addu       $s2, $a0, $zero
/* FEB04 800E0A14 AFB3001C */  sw         $s3, 0x1C($sp)
/* FEB08 800E0A18 00A09821 */  addu       $s3, $a1, $zero
/* FEB0C 800E0A1C AFBF0020 */  sw         $ra, 0x20($sp)
/* FEB10 800E0A20 AFB10014 */  sw         $s1, 0x14($sp)
/* FEB14 800E0A24 14C00004 */  bnez       $a2, .Lmenu_800E0A38
/* FEB18 800E0A28 AFB00010 */   sw        $s0, 0x10($sp)
/* FEB1C 800E0A2C 8E420000 */  lw         $v0, 0x0($s2)
/* FEB20 800E0A30 50530012 */  beql       $v0, $s3, .Lmenu_800E0A7C
/* FEB24 800E0A34 AE530000 */   sw        $s3, 0x0($s2)
.Lmenu_800E0A38:
/* FEB28 800E0A38 00008821 */  addu       $s1, $zero, $zero
/* FEB2C 800E0A3C 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E0A40:
/* FEB30 800E0A40 8E420008 */  lw         $v0, 0x8($s2)
/* FEB34 800E0A44 0222102A */  slt        $v0, $s1, $v0
/* FEB38 800E0A48 5040000C */  beql       $v0, $zero, .Lmenu_800E0A7C
/* FEB3C 800E0A4C AE530000 */   sw        $s3, 0x0($s2)
/* FEB40 800E0A50 8E42000C */  lw         $v0, 0xC($s2)
/* FEB44 800E0A54 02021021 */  addu       $v0, $s0, $v0
/* FEB48 800E0A58 8C440000 */  lw         $a0, 0x0($v0)
/* FEB4C 800E0A5C 0C03805C */  jal        func_menu_800E0170
/* FEB50 800E0A60 02602821 */   addu      $a1, $s3, $zero
/* FEB54 800E0A64 8E43000C */  lw         $v1, 0xC($s2)
/* FEB58 800E0A68 26310001 */  addiu      $s1, $s1, 0x1
/* FEB5C 800E0A6C 02031821 */  addu       $v1, $s0, $v1
/* FEB60 800E0A70 2610001C */  addiu      $s0, $s0, 0x1C
/* FEB64 800E0A74 08038290 */  j          .Lmenu_800E0A40
/* FEB68 800E0A78 AC620000 */   sw        $v0, 0x0($v1)
.Lmenu_800E0A7C:
/* FEB6C 800E0A7C 8FBF0020 */  lw         $ra, 0x20($sp)
/* FEB70 800E0A80 8FB3001C */  lw         $s3, 0x1C($sp)
/* FEB74 800E0A84 8FB20018 */  lw         $s2, 0x18($sp)
/* FEB78 800E0A88 8FB10014 */  lw         $s1, 0x14($sp)
/* FEB7C 800E0A8C 8FB00010 */  lw         $s0, 0x10($sp)
/* FEB80 800E0A90 03E00008 */  jr         $ra
/* FEB84 800E0A94 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E0A98
/* FEB88 800E0A98 8C830014 */  lw         $v1, 0x14($a0)
/* FEB8C 800E0A9C 90620000 */  lbu        $v0, 0x0($v1)
/* FEB90 800E0AA0 24630001 */  addiu      $v1, $v1, 0x1
/* FEB94 800E0AA4 AC830014 */  sw         $v1, 0x14($a0)
/* FEB98 800E0AA8 90650000 */  lbu        $a1, 0x0($v1)
/* FEB9C 800E0AAC 24630001 */  addiu      $v1, $v1, 0x1
/* FEBA0 800E0AB0 AC830014 */  sw         $v1, 0x14($a0)
/* FEBA4 800E0AB4 00021200 */  sll        $v0, $v0, 8
/* FEBA8 800E0AB8 03E00008 */  jr         $ra
/* FEBAC 800E0ABC 00451025 */   or        $v0, $v0, $a1

glabel func_menu_800E0AC0
/* FEBB0 800E0AC0 8C820014 */  lw         $v0, 0x14($a0)
/* FEBB4 800E0AC4 00051A03 */  sra        $v1, $a1, 8
/* FEBB8 800E0AC8 A0430000 */  sb         $v1, 0x0($v0)
/* FEBBC 800E0ACC 24420001 */  addiu      $v0, $v0, 0x1
/* FEBC0 800E0AD0 AC820014 */  sw         $v0, 0x14($a0)
/* FEBC4 800E0AD4 A0450000 */  sb         $a1, 0x0($v0)
/* FEBC8 800E0AD8 24420001 */  addiu      $v0, $v0, 0x1
/* FEBCC 800E0ADC 03E00008 */  jr         $ra
/* FEBD0 800E0AE0 AC820014 */   sw        $v0, 0x14($a0)

glabel func_menu_800E0AE4
/* FEBD4 800E0AE4 8C820008 */  lw         $v0, 0x8($a0)
/* FEBD8 800E0AE8 000210C0 */  sll        $v0, $v0, 3
/* FEBDC 800E0AEC 03E00008 */  jr         $ra
/* FEBE0 800E0AF0 34420002 */   ori       $v0, $v0, 0x2

glabel func_menu_800E0AF4
/* FEBE4 800E0AF4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* FEBE8 800E0AF8 AFB20030 */  sw         $s2, 0x30($sp)
/* FEBEC 800E0AFC 00809021 */  addu       $s2, $a0, $zero
/* FEBF0 800E0B00 AFB00028 */  sw         $s0, 0x28($sp)
/* FEBF4 800E0B04 00A08021 */  addu       $s0, $a1, $zero
/* FEBF8 800E0B08 AFBF004C */  sw         $ra, 0x4C($sp)
/* FEBFC 800E0B0C AFBE0048 */  sw         $fp, 0x48($sp)
/* FEC00 800E0B10 AFB70044 */  sw         $s7, 0x44($sp)
/* FEC04 800E0B14 AFB60040 */  sw         $s6, 0x40($sp)
/* FEC08 800E0B18 AFB5003C */  sw         $s5, 0x3C($sp)
/* FEC0C 800E0B1C AFB40038 */  sw         $s4, 0x38($sp)
/* FEC10 800E0B20 AFB30034 */  sw         $s3, 0x34($sp)
/* FEC14 800E0B24 AFB1002C */  sw         $s1, 0x2C($sp)
/* FEC18 800E0B28 AFA60058 */  sw         $a2, 0x58($sp)
/* FEC1C 800E0B2C 0C0381F1 */  jal        func_menu_800E07C4
/* FEC20 800E0B30 AFA7005C */   sw        $a3, 0x5C($sp)
/* FEC24 800E0B34 02402021 */  addu       $a0, $s2, $zero
/* FEC28 800E0B38 0C0382A6 */  jal        func_menu_800E0A98
/* FEC2C 800E0B3C AE500014 */   sw        $s0, 0x14($s2)
/* FEC30 800E0B40 AFA20020 */  sw         $v0, 0x20($sp)
/* FEC34 800E0B44 28420041 */  slti       $v0, $v0, 0x41
/* FEC38 800E0B48 10400007 */  beqz       $v0, .Lmenu_800E0B68
/* FEC3C 800E0B4C 02402021 */   addu      $a0, $s2, $zero
/* FEC40 800E0B50 0C038202 */  jal        func_menu_800E0808
/* FEC44 800E0B54 24050040 */   addiu     $a1, $zero, 0x40
/* FEC48 800E0B58 54400005 */  bnel       $v0, $zero, .Lmenu_800E0B70
/* FEC4C 800E0B5C AE400008 */   sw        $zero, 0x8($s2)
/* FEC50 800E0B60 0C0381F1 */  jal        func_menu_800E07C4
/* FEC54 800E0B64 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800E0B68:
/* FEC58 800E0B68 08038328 */  j          .Lmenu_800E0CA0
/* FEC5C 800E0B6C 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800E0B70:
/* FEC60 800E0B70 0C03821F */  jal        func_menu_800E087C
/* FEC64 800E0B74 02402021 */   addu      $a0, $s2, $zero
/* FEC68 800E0B78 0000F021 */  addu       $fp, $zero, $zero
.Lmenu_800E0B7C:
/* FEC6C 800E0B7C 8FA90020 */  lw         $t1, 0x20($sp)
/* FEC70 800E0B80 03C9102A */  slt        $v0, $fp, $t1
/* FEC74 800E0B84 10400046 */  beqz       $v0, .Lmenu_800E0CA0
/* FEC78 800E0B88 24020001 */   addiu     $v0, $zero, 0x1
/* FEC7C 800E0B8C 0C0382A6 */  jal        func_menu_800E0A98
/* FEC80 800E0B90 02402021 */   addu      $a0, $s2, $zero
/* FEC84 800E0B94 02402021 */  addu       $a0, $s2, $zero
/* FEC88 800E0B98 8E430014 */  lw         $v1, 0x14($s2)
/* FEC8C 800E0B9C 00408021 */  addu       $s0, $v0, $zero
/* FEC90 800E0BA0 90680000 */  lbu        $t0, 0x0($v1)
/* FEC94 800E0BA4 24630001 */  addiu      $v1, $v1, 0x1
/* FEC98 800E0BA8 AE430014 */  sw         $v1, 0x14($s2)
/* FEC9C 800E0BAC 90670000 */  lbu        $a3, 0x0($v1)
/* FECA0 800E0BB0 24650001 */  addiu      $a1, $v1, 0x1
/* FECA4 800E0BB4 AE450014 */  sw         $a1, 0x14($s2)
/* FECA8 800E0BB8 90660001 */  lbu        $a2, 0x1($v1)
/* FECAC 800E0BBC 24650002 */  addiu      $a1, $v1, 0x2
/* FECB0 800E0BC0 AE450014 */  sw         $a1, 0x14($s2)
/* FECB4 800E0BC4 90650002 */  lbu        $a1, 0x2($v1)
/* FECB8 800E0BC8 24630003 */  addiu      $v1, $v1, 0x3
/* FECBC 800E0BCC AE430014 */  sw         $v1, 0x14($s2)
/* FECC0 800E0BD0 0100A021 */  addu       $s4, $t0, $zero
/* FECC4 800E0BD4 00E0A821 */  addu       $s5, $a3, $zero
/* FECC8 800E0BD8 00C09821 */  addu       $s3, $a2, $zero
/* FECCC 800E0BDC 0C0382A6 */  jal        func_menu_800E0A98
/* FECD0 800E0BE0 00A0B821 */   addu      $s7, $a1, $zero
/* FECD4 800E0BE4 02002821 */  addu       $a1, $s0, $zero
/* FECD8 800E0BE8 24060001 */  addiu      $a2, $zero, 0x1
/* FECDC 800E0BEC 8FA40058 */  lw         $a0, 0x58($sp)
/* FECE0 800E0BF0 0C038006 */  jal        func_menu_800E0018
/* FECE4 800E0BF4 0040B021 */   addu      $s6, $v0, $zero
/* FECE8 800E0BF8 00408821 */  addu       $s1, $v0, $zero
/* FECEC 800E0BFC 12200026 */  beqz       $s1, .Lmenu_800E0C98
/* FECF0 800E0C00 02202821 */   addu      $a1, $s1, $zero
/* FECF4 800E0C04 02803021 */  addu       $a2, $s4, $zero
/* FECF8 800E0C08 AFB30010 */  sw         $s3, 0x10($sp)
/* FECFC 800E0C0C AFA00014 */  sw         $zero, 0x14($sp)
/* FED00 800E0C10 8E440010 */  lw         $a0, 0x10($s2)
/* FED04 800E0C14 0C037A0A */  jal        func_menu_800DE828
/* FED08 800E0C18 02A03821 */   addu      $a3, $s5, $zero
/* FED0C 800E0C1C 00408021 */  addu       $s0, $v0, $zero
/* FED10 800E0C20 06000009 */  bltz       $s0, .Lmenu_800E0C48
/* FED14 800E0C24 02202821 */   addu      $a1, $s1, $zero
/* FED18 800E0C28 0C037D2F */  jal        func_menu_800DF4BC
/* FED1C 800E0C2C 02202021 */   addu      $a0, $s1, $zero
/* FED20 800E0C30 8FA9005C */  lw         $t1, 0x5C($sp)
/* FED24 800E0C34 02021021 */  addu       $v0, $s0, $v0
/* FED28 800E0C38 0122102A */  slt        $v0, $t1, $v0
/* FED2C 800E0C3C 5440FFCF */  bnel       $v0, $zero, .Lmenu_800E0B7C
/* FED30 800E0C40 27DE0001 */   addiu     $fp, $fp, 0x1
/* FED34 800E0C44 02202821 */  addu       $a1, $s1, $zero
.Lmenu_800E0C48:
/* FED38 800E0C48 02803021 */  addu       $a2, $s4, $zero
/* FED3C 800E0C4C AFB30010 */  sw         $s3, 0x10($sp)
/* FED40 800E0C50 AFB70014 */  sw         $s7, 0x14($sp)
/* FED44 800E0C54 AFB60018 */  sw         $s6, 0x18($sp)
/* FED48 800E0C58 AFA0001C */  sw         $zero, 0x1C($sp)
/* FED4C 800E0C5C 8E440010 */  lw         $a0, 0x10($s2)
/* FED50 800E0C60 0C037B82 */  jal        func_menu_800DEE08
/* FED54 800E0C64 02A03821 */   addu      $a3, $s5, $zero
/* FED58 800E0C68 5440FFC4 */  bnel       $v0, $zero, .Lmenu_800E0B7C
/* FED5C 800E0C6C 27DE0001 */   addiu     $fp, $fp, 0x1
/* FED60 800E0C70 02202821 */  addu       $a1, $s1, $zero
/* FED64 800E0C74 02803021 */  addu       $a2, $s4, $zero
/* FED68 800E0C78 24020001 */  addiu      $v0, $zero, 0x1
/* FED6C 800E0C7C AFB30010 */  sw         $s3, 0x10($sp)
/* FED70 800E0C80 AFB70014 */  sw         $s7, 0x14($sp)
/* FED74 800E0C84 AFB60018 */  sw         $s6, 0x18($sp)
/* FED78 800E0C88 AFA2001C */  sw         $v0, 0x1C($sp)
/* FED7C 800E0C8C 8E440010 */  lw         $a0, 0x10($s2)
/* FED80 800E0C90 0C037B82 */  jal        func_menu_800DEE08
/* FED84 800E0C94 02A03821 */   addu      $a3, $s5, $zero
.Lmenu_800E0C98:
/* FED88 800E0C98 080382DF */  j          .Lmenu_800E0B7C
/* FED8C 800E0C9C 27DE0001 */   addiu     $fp, $fp, 0x1
.Lmenu_800E0CA0:
/* FED90 800E0CA0 8FBF004C */  lw         $ra, 0x4C($sp)
/* FED94 800E0CA4 8FBE0048 */  lw         $fp, 0x48($sp)
/* FED98 800E0CA8 8FB70044 */  lw         $s7, 0x44($sp)
/* FED9C 800E0CAC 8FB60040 */  lw         $s6, 0x40($sp)
/* FEDA0 800E0CB0 8FB5003C */  lw         $s5, 0x3C($sp)
/* FEDA4 800E0CB4 8FB40038 */  lw         $s4, 0x38($sp)
/* FEDA8 800E0CB8 8FB30034 */  lw         $s3, 0x34($sp)
/* FEDAC 800E0CBC 8FB20030 */  lw         $s2, 0x30($sp)
/* FEDB0 800E0CC0 8FB1002C */  lw         $s1, 0x2C($sp)
/* FEDB4 800E0CC4 8FB00028 */  lw         $s0, 0x28($sp)
/* FEDB8 800E0CC8 03E00008 */  jr         $ra
/* FEDBC 800E0CCC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800E0CD0
/* FEDC0 800E0CD0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* FEDC4 800E0CD4 AFB00028 */  sw         $s0, 0x28($sp)
/* FEDC8 800E0CD8 00808021 */  addu       $s0, $a0, $zero
/* FEDCC 800E0CDC AFB20030 */  sw         $s2, 0x30($sp)
/* FEDD0 800E0CE0 00009021 */  addu       $s2, $zero, $zero
/* FEDD4 800E0CE4 AFB5003C */  sw         $s5, 0x3C($sp)
/* FEDD8 800E0CE8 27B50018 */  addiu      $s5, $sp, 0x18
/* FEDDC 800E0CEC AFB40038 */  sw         $s4, 0x38($sp)
/* FEDE0 800E0CF0 27B4001C */  addiu      $s4, $sp, 0x1C
/* FEDE4 800E0CF4 AFB30034 */  sw         $s3, 0x34($sp)
/* FEDE8 800E0CF8 27B30024 */  addiu      $s3, $sp, 0x24
/* FEDEC 800E0CFC AFBF0040 */  sw         $ra, 0x40($sp)
/* FEDF0 800E0D00 AFB1002C */  sw         $s1, 0x2C($sp)
/* FEDF4 800E0D04 AE050014 */  sw         $a1, 0x14($s0)
/* FEDF8 800E0D08 8E050008 */  lw         $a1, 0x8($s0)
/* FEDFC 800E0D0C 02408821 */  addu       $s1, $s2, $zero
.Lmenu_800E0D10:
/* FEE00 800E0D10 0C0382B0 */  jal        func_menu_800E0AC0
/* FEE04 800E0D14 00000000 */   nop
/* FEE08 800E0D18 8E020008 */  lw         $v0, 0x8($s0)
/* FEE0C 800E0D1C 0242102A */  slt        $v0, $s2, $v0
/* FEE10 800E0D20 10400028 */  beqz       $v0, .Lmenu_800E0DC4
/* FEE14 800E0D24 00000000 */   nop
/* FEE18 800E0D28 8E02000C */  lw         $v0, 0xC($s0)
/* FEE1C 800E0D2C 02221021 */  addu       $v0, $s1, $v0
/* FEE20 800E0D30 8C420000 */  lw         $v0, 0x0($v0)
/* FEE24 800E0D34 94450010 */  lhu        $a1, 0x10($v0)
/* FEE28 800E0D38 0C0382B0 */  jal        func_menu_800E0AC0
/* FEE2C 800E0D3C 02002021 */   addu      $a0, $s0, $zero
/* FEE30 800E0D40 02A02821 */  addu       $a1, $s5, $zero
/* FEE34 800E0D44 02803021 */  addu       $a2, $s4, $zero
/* FEE38 800E0D48 8E04000C */  lw         $a0, 0xC($s0)
/* FEE3C 800E0D4C 27A70020 */  addiu      $a3, $sp, 0x20
/* FEE40 800E0D50 AFB30010 */  sw         $s3, 0x10($sp)
/* FEE44 800E0D54 0C038124 */  jal        func_menu_800E0490
/* FEE48 800E0D58 00912021 */   addu      $a0, $a0, $s1
/* FEE4C 800E0D5C 8E050014 */  lw         $a1, 0x14($s0)
/* FEE50 800E0D60 92A20003 */  lbu        $v0, 0x3($s5)
/* FEE54 800E0D64 A0A20000 */  sb         $v0, 0x0($a1)
/* FEE58 800E0D68 24A50001 */  addiu      $a1, $a1, 0x1
/* FEE5C 800E0D6C AE050014 */  sw         $a1, 0x14($s0)
/* FEE60 800E0D70 92820003 */  lbu        $v0, 0x3($s4)
/* FEE64 800E0D74 A0A20000 */  sb         $v0, 0x0($a1)
/* FEE68 800E0D78 24A20001 */  addiu      $v0, $a1, 0x1
/* FEE6C 800E0D7C AE020014 */  sw         $v0, 0x14($s0)
/* FEE70 800E0D80 92620003 */  lbu        $v0, 0x3($s3)
/* FEE74 800E0D84 26520001 */  addiu      $s2, $s2, 0x1
/* FEE78 800E0D88 A0A20001 */  sb         $v0, 0x1($a1)
/* FEE7C 800E0D8C 8E03000C */  lw         $v1, 0xC($s0)
/* FEE80 800E0D90 24A20002 */  addiu      $v0, $a1, 0x2
/* FEE84 800E0D94 AE020014 */  sw         $v0, 0x14($s0)
/* FEE88 800E0D98 02231821 */  addu       $v1, $s1, $v1
/* FEE8C 800E0D9C 8C620004 */  lw         $v0, 0x4($v1)
/* FEE90 800E0DA0 02002021 */  addu       $a0, $s0, $zero
/* FEE94 800E0DA4 A0A20002 */  sb         $v0, 0x2($a1)
/* FEE98 800E0DA8 8E02000C */  lw         $v0, 0xC($s0)
/* FEE9C 800E0DAC 24A50003 */  addiu      $a1, $a1, 0x3
/* FEEA0 800E0DB0 AE050014 */  sw         $a1, 0x14($s0)
/* FEEA4 800E0DB4 02221021 */  addu       $v0, $s1, $v0
/* FEEA8 800E0DB8 8C450008 */  lw         $a1, 0x8($v0)
/* FEEAC 800E0DBC 08038344 */  j          .Lmenu_800E0D10
/* FEEB0 800E0DC0 2631001C */   addiu     $s1, $s1, 0x1C
.Lmenu_800E0DC4:
/* FEEB4 800E0DC4 8FBF0040 */  lw         $ra, 0x40($sp)
/* FEEB8 800E0DC8 8FB5003C */  lw         $s5, 0x3C($sp)
/* FEEBC 800E0DCC 8FB40038 */  lw         $s4, 0x38($sp)
/* FEEC0 800E0DD0 8FB30034 */  lw         $s3, 0x34($sp)
/* FEEC4 800E0DD4 8FB20030 */  lw         $s2, 0x30($sp)
/* FEEC8 800E0DD8 8FB1002C */  lw         $s1, 0x2C($sp)
/* FEECC 800E0DDC 8FB00028 */  lw         $s0, 0x28($sp)
/* FEED0 800E0DE0 03E00008 */  jr         $ra
/* FEED4 800E0DE4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800E0DE8
/* FEED8 800E0DE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FEEDC 800E0DEC AFBF0010 */  sw         $ra, 0x10($sp)
/* FEEE0 800E0DF0 0C03821F */  jal        func_menu_800E087C
/* FEEE4 800E0DF4 AC800008 */   sw        $zero, 0x8($a0)
/* FEEE8 800E0DF8 8FBF0010 */  lw         $ra, 0x10($sp)
/* FEEEC 800E0DFC 03E00008 */  jr         $ra
/* FEEF0 800E0E00 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0E04
/* FEEF4 800E0E04 3C028012 */  lui        $v0, %hi(D_menu_801269E0)
/* FEEF8 800E0E08 03E00008 */  jr         $ra
/* FEEFC 800E0E0C AC4469E0 */   sw        $a0, %lo(D_menu_801269E0)($v0)

glabel func_menu_800E0E10
/* FEF00 800E0E10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FEF04 800E0E14 AFB00010 */  sw         $s0, 0x10($sp)
/* FEF08 800E0E18 00808021 */  addu       $s0, $a0, $zero
/* FEF0C 800E0E1C 3C02800D */  lui        $v0, %hi(D_menu_800CACD0)
/* FEF10 800E0E20 2442ACD0 */  addiu      $v0, $v0, %lo(D_menu_800CACD0)
/* FEF14 800E0E24 AFBF0014 */  sw         $ra, 0x14($sp)
/* FEF18 800E0E28 0C03839D */  jal        func_menu_800E0E74
/* FEF1C 800E0E2C AE020010 */   sw        $v0, 0x10($s0)
/* FEF20 800E0E30 02001021 */  addu       $v0, $s0, $zero
/* FEF24 800E0E34 8FBF0014 */  lw         $ra, 0x14($sp)
/* FEF28 800E0E38 8FB00010 */  lw         $s0, 0x10($sp)
/* FEF2C 800E0E3C 03E00008 */  jr         $ra
/* FEF30 800E0E40 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0E44
/* FEF34 800E0E44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FEF38 800E0E48 3C02800D */  lui        $v0, %hi(D_menu_800CACD0)
/* FEF3C 800E0E4C 2442ACD0 */  addiu      $v0, $v0, %lo(D_menu_800CACD0)
/* FEF40 800E0E50 30A50001 */  andi       $a1, $a1, 0x1
/* FEF44 800E0E54 AFBF0010 */  sw         $ra, 0x10($sp)
/* FEF48 800E0E58 10A00003 */  beqz       $a1, .Lmenu_800E0E68
/* FEF4C 800E0E5C AC820010 */   sw        $v0, 0x10($a0)
/* FEF50 800E0E60 0C01FB5C */  jal        func_8007ED70
/* FEF54 800E0E64 00000000 */   nop
.Lmenu_800E0E68:
/* FEF58 800E0E68 8FBF0010 */  lw         $ra, 0x10($sp)
/* FEF5C 800E0E6C 03E00008 */  jr         $ra
/* FEF60 800E0E70 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0E74
/* FEF64 800E0E74 AC800000 */  sw         $zero, 0x0($a0)
/* FEF68 800E0E78 AC800004 */  sw         $zero, 0x4($a0)
/* FEF6C 800E0E7C AC800008 */  sw         $zero, 0x8($a0)
/* FEF70 800E0E80 03E00008 */  jr         $ra
/* FEF74 800E0E84 AC80000C */   sw        $zero, 0xC($a0)

glabel func_menu_800E0E88
/* FEF78 800E0E88 03E00008 */  jr         $ra
/* FEF7C 800E0E8C 00000000 */   nop

glabel func_menu_800E0E90
/* FEF80 800E0E90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FEF84 800E0E94 00801821 */  addu       $v1, $a0, $zero
/* FEF88 800E0E98 AFBF0010 */  sw         $ra, 0x10($sp)
/* FEF8C 800E0E9C 8C62000C */  lw         $v0, 0xC($v1)
/* FEF90 800E0EA0 14400006 */  bnez       $v0, .Lmenu_800E0EBC
/* FEF94 800E0EA4 00000000 */   nop
/* FEF98 800E0EA8 8C620010 */  lw         $v0, 0x10($v1)
/* FEF9C 800E0EAC 84440010 */  lh         $a0, 0x10($v0)
/* FEFA0 800E0EB0 8C420014 */  lw         $v0, 0x14($v0)
/* FEFA4 800E0EB4 0040F809 */  jalr       $v0
/* FEFA8 800E0EB8 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E0EBC:
/* FEFAC 800E0EBC 8FBF0010 */  lw         $ra, 0x10($sp)
/* FEFB0 800E0EC0 03E00008 */  jr         $ra
/* FEFB4 800E0EC4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0EC8
/* FEFB8 800E0EC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FEFBC 800E0ECC 00801821 */  addu       $v1, $a0, $zero
/* FEFC0 800E0ED0 AFBF0010 */  sw         $ra, 0x10($sp)
/* FEFC4 800E0ED4 8C62000C */  lw         $v0, 0xC($v1)
/* FEFC8 800E0ED8 14400006 */  bnez       $v0, .Lmenu_800E0EF4
/* FEFCC 800E0EDC 00000000 */   nop
/* FEFD0 800E0EE0 8C620010 */  lw         $v0, 0x10($v1)
/* FEFD4 800E0EE4 84440010 */  lh         $a0, 0x10($v0)
/* FEFD8 800E0EE8 8C420014 */  lw         $v0, 0x14($v0)
/* FEFDC 800E0EEC 0040F809 */  jalr       $v0
/* FEFE0 800E0EF0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E0EF4:
/* FEFE4 800E0EF4 8FBF0010 */  lw         $ra, 0x10($sp)
/* FEFE8 800E0EF8 03E00008 */  jr         $ra
/* FEFEC 800E0EFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0F00
/* FEFF0 800E0F00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FEFF4 800E0F04 00801821 */  addu       $v1, $a0, $zero
/* FEFF8 800E0F08 AFBF0010 */  sw         $ra, 0x10($sp)
/* FEFFC 800E0F0C 8C62000C */  lw         $v0, 0xC($v1)
/* FF000 800E0F10 14400006 */  bnez       $v0, .Lmenu_800E0F2C
/* FF004 800E0F14 00000000 */   nop
/* FF008 800E0F18 8C620010 */  lw         $v0, 0x10($v1)
/* FF00C 800E0F1C 84440020 */  lh         $a0, 0x20($v0)
/* FF010 800E0F20 8C420024 */  lw         $v0, 0x24($v0)
/* FF014 800E0F24 0040F809 */  jalr       $v0
/* FF018 800E0F28 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E0F2C:
/* FF01C 800E0F2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* FF020 800E0F30 03E00008 */  jr         $ra
/* FF024 800E0F34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0F38
/* FF028 800E0F38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FF02C 800E0F3C 00801821 */  addu       $v1, $a0, $zero
/* FF030 800E0F40 AFBF0010 */  sw         $ra, 0x10($sp)
/* FF034 800E0F44 8C62000C */  lw         $v0, 0xC($v1)
/* FF038 800E0F48 14400006 */  bnez       $v0, .Lmenu_800E0F64
/* FF03C 800E0F4C 00000000 */   nop
/* FF040 800E0F50 8C620010 */  lw         $v0, 0x10($v1)
/* FF044 800E0F54 84440028 */  lh         $a0, 0x28($v0)
/* FF048 800E0F58 8C42002C */  lw         $v0, 0x2C($v0)
/* FF04C 800E0F5C 0040F809 */  jalr       $v0
/* FF050 800E0F60 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E0F64:
/* FF054 800E0F64 8FBF0010 */  lw         $ra, 0x10($sp)
/* FF058 800E0F68 03E00008 */  jr         $ra
/* FF05C 800E0F6C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0F70
/* FF060 800E0F70 03E00008 */  jr         $ra
/* FF064 800E0F74 00000000 */   nop

glabel func_menu_800E0F78
/* FF068 800E0F78 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* FF06C 800E0F7C AFB00030 */  sw         $s0, 0x30($sp)
/* FF070 800E0F80 00808021 */  addu       $s0, $a0, $zero
/* FF074 800E0F84 AFB10034 */  sw         $s1, 0x34($sp)
/* FF078 800E0F88 00A08821 */  addu       $s1, $a1, $zero
/* FF07C 800E0F8C AFBF003C */  sw         $ra, 0x3C($sp)
/* FF080 800E0F90 AFB20038 */  sw         $s2, 0x38($sp)
/* FF084 800E0F94 8E030008 */  lw         $v1, 0x8($s0)
/* FF088 800E0F98 00C09021 */  addu       $s2, $a2, $zero
/* FF08C 800E0F9C 8C620024 */  lw         $v0, 0x24($v1)
/* FF090 800E0FA0 00002821 */  addu       $a1, $zero, $zero
/* FF094 800E0FA4 844400C0 */  lh         $a0, 0xC0($v0)
/* FF098 800E0FA8 8C4200C4 */  lw         $v0, 0xC4($v0)
/* FF09C 800E0FAC 0040F809 */  jalr       $v0
/* FF0A0 800E0FB0 00642021 */   addu      $a0, $v1, $a0
/* FF0A4 800E0FB4 8E030008 */  lw         $v1, 0x8($s0)
/* FF0A8 800E0FB8 8C620024 */  lw         $v0, 0x24($v1)
/* FF0AC 800E0FBC 00002821 */  addu       $a1, $zero, $zero
/* FF0B0 800E0FC0 844400B8 */  lh         $a0, 0xB8($v0)
/* FF0B4 800E0FC4 8C4200BC */  lw         $v0, 0xBC($v0)
/* FF0B8 800E0FC8 0040F809 */  jalr       $v0
/* FF0BC 800E0FCC 00642021 */   addu      $a0, $v1, $a0
/* FF0C0 800E0FD0 00402021 */  addu       $a0, $v0, $zero
/* FF0C4 800E0FD4 02202821 */  addu       $a1, $s1, $zero
/* FF0C8 800E0FD8 27A60010 */  addiu      $a2, $sp, 0x10
/* FF0CC 800E0FDC 27B10020 */  addiu      $s1, $sp, 0x20
/* FF0D0 800E0FE0 02203821 */  addu       $a3, $s1, $zero
/* FF0D4 800E0FE4 AFA00010 */  sw         $zero, 0x10($sp)
/* FF0D8 800E0FE8 AFA00014 */  sw         $zero, 0x14($sp)
/* FF0DC 800E0FEC 0C01A27A */  jal        func_800689E8
/* FF0E0 800E0FF0 AFA00018 */   sw        $zero, 0x18($sp)
/* FF0E4 800E0FF4 8E030008 */  lw         $v1, 0x8($s0)
/* FF0E8 800E0FF8 8C620078 */  lw         $v0, 0x78($v1)
/* FF0EC 800E0FFC C4620058 */  lwc1       $f2, 0x58($v1)
/* FF0F0 800E1000 C4400034 */  lwc1       $f0, 0x34($v0)
/* FF0F4 800E1004 46001082 */  mul.s      $f2, $f2, $f0
/* FF0F8 800E1008 C7A60020 */  lwc1       $f6, 0x20($sp)
/* FF0FC 800E100C 46023182 */  mul.s      $f6, $f6, $f2
/* FF100 800E1010 C7A40024 */  lwc1       $f4, 0x24($sp)
/* FF104 800E1014 46022102 */  mul.s      $f4, $f4, $f2
/* FF108 800E1018 C7A00028 */  lwc1       $f0, 0x28($sp)
/* FF10C 800E101C 46020002 */  mul.s      $f0, $f0, $f2
/* FF110 800E1020 E7A60020 */  swc1       $f6, 0x20($sp)
/* FF114 800E1024 E7A40024 */  swc1       $f4, 0x24($sp)
/* FF118 800E1028 E7A00028 */  swc1       $f0, 0x28($sp)
/* FF11C 800E102C 8E030008 */  lw         $v1, 0x8($s0)
/* FF120 800E1030 02202821 */  addu       $a1, $s1, $zero
/* FF124 800E1034 8C620024 */  lw         $v0, 0x24($v1)
/* FF128 800E1038 02403021 */  addu       $a2, $s2, $zero
/* FF12C 800E103C 84440060 */  lh         $a0, 0x60($v0)
/* FF130 800E1040 8C420064 */  lw         $v0, 0x64($v0)
/* FF134 800E1044 0040F809 */  jalr       $v0
/* FF138 800E1048 00642021 */   addu      $a0, $v1, $a0
/* FF13C 800E104C 8FBF003C */  lw         $ra, 0x3C($sp)
/* FF140 800E1050 8FB20038 */  lw         $s2, 0x38($sp)
/* FF144 800E1054 8FB10034 */  lw         $s1, 0x34($sp)
/* FF148 800E1058 8FB00030 */  lw         $s0, 0x30($sp)
/* FF14C 800E105C 03E00008 */  jr         $ra
/* FF150 800E1060 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800E1064
/* FF154 800E1064 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* FF158 800E1068 AFB10034 */  sw         $s1, 0x34($sp)
/* FF15C 800E106C 00808821 */  addu       $s1, $a0, $zero
/* FF160 800E1070 AFB3003C */  sw         $s3, 0x3C($sp)
/* FF164 800E1074 00A09821 */  addu       $s3, $a1, $zero
/* FF168 800E1078 AFB40040 */  sw         $s4, 0x40($sp)
/* FF16C 800E107C 00C0A021 */  addu       $s4, $a2, $zero
/* FF170 800E1080 AFBF0048 */  sw         $ra, 0x48($sp)
/* FF174 800E1084 AFB50044 */  sw         $s5, 0x44($sp)
/* FF178 800E1088 AFB20038 */  sw         $s2, 0x38($sp)
/* FF17C 800E108C AFB00030 */  sw         $s0, 0x30($sp)
/* FF180 800E1090 F7B40050 */  sdc1       $f20, 0x50($sp)
/* FF184 800E1094 8E230008 */  lw         $v1, 0x8($s1)
/* FF188 800E1098 00E0A821 */  addu       $s5, $a3, $zero
/* FF18C 800E109C 8C620024 */  lw         $v0, 0x24($v1)
/* FF190 800E10A0 00002821 */  addu       $a1, $zero, $zero
/* FF194 800E10A4 844400C0 */  lh         $a0, 0xC0($v0)
/* FF198 800E10A8 8C4200C4 */  lw         $v0, 0xC4($v0)
/* FF19C 800E10AC 0040F809 */  jalr       $v0
/* FF1A0 800E10B0 00642021 */   addu      $a0, $v1, $a0
/* FF1A4 800E10B4 8E230008 */  lw         $v1, 0x8($s1)
/* FF1A8 800E10B8 8C620024 */  lw         $v0, 0x24($v1)
/* FF1AC 800E10BC 00002821 */  addu       $a1, $zero, $zero
/* FF1B0 800E10C0 844400B8 */  lh         $a0, 0xB8($v0)
/* FF1B4 800E10C4 8C4200BC */  lw         $v0, 0xBC($v0)
/* FF1B8 800E10C8 0040F809 */  jalr       $v0
/* FF1BC 800E10CC 00642021 */   addu      $a0, $v1, $a0
/* FF1C0 800E10D0 00409021 */  addu       $s2, $v0, $zero
/* FF1C4 800E10D4 02402021 */  addu       $a0, $s2, $zero
/* FF1C8 800E10D8 02602821 */  addu       $a1, $s3, $zero
/* FF1CC 800E10DC 27A60010 */  addiu      $a2, $sp, 0x10
/* FF1D0 800E10E0 27B00020 */  addiu      $s0, $sp, 0x20
/* FF1D4 800E10E4 3C01800D */  lui        $at, %hi(D_menu_800CAC70)
/* FF1D8 800E10E8 C434AC70 */  lwc1       $f20, %lo(D_menu_800CAC70)($at)
/* FF1DC 800E10EC 02003821 */  addu       $a3, $s0, $zero
/* FF1E0 800E10F0 AFA00014 */  sw         $zero, 0x14($sp)
/* FF1E4 800E10F4 AFA00018 */  sw         $zero, 0x18($sp)
/* FF1E8 800E10F8 0C01A2A1 */  jal        func_80068A84
/* FF1EC 800E10FC E7B40010 */   swc1      $f20, 0x10($sp)
/* FF1F0 800E1100 8E230008 */  lw         $v1, 0x8($s1)
/* FF1F4 800E1104 02002821 */  addu       $a1, $s0, $zero
/* FF1F8 800E1108 8C620024 */  lw         $v0, 0x24($v1)
/* FF1FC 800E110C 02803021 */  addu       $a2, $s4, $zero
/* FF200 800E1110 84440070 */  lh         $a0, 0x70($v0)
/* FF204 800E1114 8C420074 */  lw         $v0, 0x74($v0)
/* FF208 800E1118 0040F809 */  jalr       $v0
/* FF20C 800E111C 00642021 */   addu      $a0, $v1, $a0
/* FF210 800E1120 02402021 */  addu       $a0, $s2, $zero
/* FF214 800E1124 02602821 */  addu       $a1, $s3, $zero
/* FF218 800E1128 27A60010 */  addiu      $a2, $sp, 0x10
/* FF21C 800E112C 02003821 */  addu       $a3, $s0, $zero
/* FF220 800E1130 AFA00010 */  sw         $zero, 0x10($sp)
/* FF224 800E1134 AFA00014 */  sw         $zero, 0x14($sp)
/* FF228 800E1138 0C01A2A1 */  jal        func_80068A84
/* FF22C 800E113C E7B40018 */   swc1      $f20, 0x18($sp)
/* FF230 800E1140 8E230008 */  lw         $v1, 0x8($s1)
/* FF234 800E1144 02002821 */  addu       $a1, $s0, $zero
/* FF238 800E1148 8C620024 */  lw         $v0, 0x24($v1)
/* FF23C 800E114C 02A03021 */  addu       $a2, $s5, $zero
/* FF240 800E1150 84440070 */  lh         $a0, 0x70($v0)
/* FF244 800E1154 8C420074 */  lw         $v0, 0x74($v0)
/* FF248 800E1158 0040F809 */  jalr       $v0
/* FF24C 800E115C 00642021 */   addu      $a0, $v1, $a0
/* FF250 800E1160 8FBF0048 */  lw         $ra, 0x48($sp)
/* FF254 800E1164 8FB50044 */  lw         $s5, 0x44($sp)
/* FF258 800E1168 8FB40040 */  lw         $s4, 0x40($sp)
/* FF25C 800E116C 8FB3003C */  lw         $s3, 0x3C($sp)
/* FF260 800E1170 8FB20038 */  lw         $s2, 0x38($sp)
/* FF264 800E1174 8FB10034 */  lw         $s1, 0x34($sp)
/* FF268 800E1178 8FB00030 */  lw         $s0, 0x30($sp)
/* FF26C 800E117C D7B40050 */  ldc1       $f20, 0x50($sp)
/* FF270 800E1180 03E00008 */  jr         $ra
/* FF274 800E1184 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_menu_800E1188
/* FF278 800E1188 27BDFF90 */  addiu      $sp, $sp, -0x70
/* FF27C 800E118C AFB00058 */  sw         $s0, 0x58($sp)
/* FF280 800E1190 00808021 */  addu       $s0, $a0, $zero
/* FF284 800E1194 AFB20060 */  sw         $s2, 0x60($sp)
/* FF288 800E1198 00A09021 */  addu       $s2, $a1, $zero
/* FF28C 800E119C AFB30064 */  sw         $s3, 0x64($sp)
/* FF290 800E11A0 00C09821 */  addu       $s3, $a2, $zero
/* FF294 800E11A4 AFBF0068 */  sw         $ra, 0x68($sp)
/* FF298 800E11A8 AFB1005C */  sw         $s1, 0x5C($sp)
/* FF29C 800E11AC 8E420028 */  lw         $v0, 0x28($s2)
/* FF2A0 800E11B0 00E08821 */  addu       $s1, $a3, $zero
/* FF2A4 800E11B4 844400A0 */  lh         $a0, 0xA0($v0)
/* FF2A8 800E11B8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FF2AC 800E11BC 0040F809 */  jalr       $v0
/* FF2B0 800E11C0 02442021 */   addu      $a0, $s2, $a0
/* FF2B4 800E11C4 27A40010 */  addiu      $a0, $sp, 0x10
/* FF2B8 800E11C8 26450044 */  addiu      $a1, $s2, 0x44
/* FF2BC 800E11CC 0C000708 */  jal        func_80001C20
/* FF2C0 800E11D0 24060008 */   addiu     $a2, $zero, 0x8
/* FF2C4 800E11D4 2402005E */  addiu      $v0, $zero, 0x5E
/* FF2C8 800E11D8 1222001D */  beq        $s1, $v0, .Lmenu_800E1250
/* FF2CC 800E11DC 2E22005F */   sltiu     $v0, $s1, 0x5F
/* FF2D0 800E11E0 10400005 */  beqz       $v0, .Lmenu_800E11F8
/* FF2D4 800E11E4 2402005D */   addiu     $v0, $zero, 0x5D
/* FF2D8 800E11E8 52220008 */  beql       $s1, $v0, .Lmenu_800E120C
/* FF2DC 800E11EC 02602021 */   addu      $a0, $s3, $zero
/* FF2E0 800E11F0 080384BE */  j          .Lmenu_800E12F8
/* FF2E4 800E11F4 00000000 */   nop
.Lmenu_800E11F8:
/* FF2E8 800E11F8 2402005F */  addiu      $v0, $zero, 0x5F
/* FF2EC 800E11FC 52220025 */  beql       $s1, $v0, .Lmenu_800E1294
/* FF2F0 800E1200 02602021 */   addu      $a0, $s3, $zero
/* FF2F4 800E1204 080384BE */  j          .Lmenu_800E12F8
/* FF2F8 800E1208 00000000 */   nop
.Lmenu_800E120C:
/* FF2FC 800E120C 0C0393CF */  jal        func_menu_800E4F3C
/* FF300 800E1210 27A50010 */   addiu     $a1, $sp, 0x10
/* FF304 800E1214 AE020008 */  sw         $v0, 0x8($s0)
/* FF308 800E1218 00401821 */  addu       $v1, $v0, $zero
/* FF30C 800E121C AE020004 */  sw         $v0, 0x4($s0)
/* FF310 800E1220 1460003B */  bnez       $v1, .Lmenu_800E1310
/* FF314 800E1224 AE020000 */   sw        $v0, 0x0($s0)
/* FF318 800E1228 27B00018 */  addiu      $s0, $sp, 0x18
/* FF31C 800E122C 02002021 */  addu       $a0, $s0, $zero
/* FF320 800E1230 27A50010 */  addiu      $a1, $sp, 0x10
/* FF324 800E1234 0C000708 */  jal        func_80001C20
/* FF328 800E1238 24060008 */   addiu     $a2, $zero, 0x8
/* FF32C 800E123C A3A00020 */  sb         $zero, 0x20($sp)
/* FF330 800E1240 02002021 */  addu       $a0, $s0, $zero
/* FF334 800E1244 3C05800D */  lui        $a1, %hi(D_menu_800CAC74)
/* FF338 800E1248 080384B4 */  j          .Lmenu_800E12D0
/* FF33C 800E124C 24A5AC74 */   addiu     $a1, $a1, %lo(D_menu_800CAC74)
.Lmenu_800E1250:
/* FF340 800E1250 02602021 */  addu       $a0, $s3, $zero
/* FF344 800E1254 0C0393C7 */  jal        func_menu_800E4F1C
/* FF348 800E1258 27A50010 */   addiu     $a1, $sp, 0x10
/* FF34C 800E125C AE020004 */  sw         $v0, 0x4($s0)
/* FF350 800E1260 00401821 */  addu       $v1, $v0, $zero
/* FF354 800E1264 1460002A */  bnez       $v1, .Lmenu_800E1310
/* FF358 800E1268 AE020000 */   sw        $v0, 0x0($s0)
/* FF35C 800E126C 27B00018 */  addiu      $s0, $sp, 0x18
/* FF360 800E1270 02002021 */  addu       $a0, $s0, $zero
/* FF364 800E1274 27A50010 */  addiu      $a1, $sp, 0x10
/* FF368 800E1278 0C000708 */  jal        func_80001C20
/* FF36C 800E127C 24060008 */   addiu     $a2, $zero, 0x8
/* FF370 800E1280 A3A00020 */  sb         $zero, 0x20($sp)
/* FF374 800E1284 02002021 */  addu       $a0, $s0, $zero
/* FF378 800E1288 3C05800D */  lui        $a1, %hi(D_menu_800CAC98)
/* FF37C 800E128C 080384B4 */  j          .Lmenu_800E12D0
/* FF380 800E1290 24A5AC98 */   addiu     $a1, $a1, %lo(D_menu_800CAC98)
.Lmenu_800E1294:
/* FF384 800E1294 0C0393D7 */  jal        func_menu_800E4F5C
/* FF388 800E1298 27A50010 */   addiu     $a1, $sp, 0x10
/* FF38C 800E129C AE020004 */  sw         $v0, 0x4($s0)
/* FF390 800E12A0 00401821 */  addu       $v1, $v0, $zero
/* FF394 800E12A4 1460001A */  bnez       $v1, .Lmenu_800E1310
/* FF398 800E12A8 AE020000 */   sw        $v0, 0x0($s0)
/* FF39C 800E12AC 27B00018 */  addiu      $s0, $sp, 0x18
/* FF3A0 800E12B0 02002021 */  addu       $a0, $s0, $zero
/* FF3A4 800E12B4 27A50010 */  addiu      $a1, $sp, 0x10
/* FF3A8 800E12B8 0C000708 */  jal        func_80001C20
/* FF3AC 800E12BC 24060008 */   addiu     $a2, $zero, 0x8
/* FF3B0 800E12C0 A3A00020 */  sb         $zero, 0x20($sp)
/* FF3B4 800E12C4 02002021 */  addu       $a0, $s0, $zero
/* FF3B8 800E12C8 3C05800D */  lui        $a1, %hi(D_menu_800CACB0)
/* FF3BC 800E12CC 24A5ACB0 */  addiu      $a1, $a1, %lo(D_menu_800CACB0)
.Lmenu_800E12D0:
/* FF3C0 800E12D0 0C0006C8 */  jal        func_80001B20
/* FF3C4 800E12D4 00000000 */   nop
/* FF3C8 800E12D8 3C04800D */  lui        $a0, %hi(D_menu_800CAC94)
/* FF3CC 800E12DC 2484AC94 */  addiu      $a0, $a0, %lo(D_menu_800CAC94)
/* FF3D0 800E12E0 00002821 */  addu       $a1, $zero, $zero
/* FF3D4 800E12E4 00A03021 */  addu       $a2, $a1, $zero
/* FF3D8 800E12E8 0C011ACF */  jal        func_80046B3C
/* FF3DC 800E12EC 00A03821 */   addu      $a3, $a1, $zero
/* FF3E0 800E12F0 080384C4 */  j          .Lmenu_800E1310
/* FF3E4 800E12F4 00000000 */   nop
.Lmenu_800E12F8:
/* FF3E8 800E12F8 8E420028 */  lw         $v0, 0x28($s2)
/* FF3EC 800E12FC 00002821 */  addu       $a1, $zero, $zero
/* FF3F0 800E1300 84440098 */  lh         $a0, 0x98($v0)
/* FF3F4 800E1304 8C42009C */  lw         $v0, 0x9C($v0)
/* FF3F8 800E1308 0040F809 */  jalr       $v0
/* FF3FC 800E130C 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800E1310:
/* FF400 800E1310 8FBF0068 */  lw         $ra, 0x68($sp)
/* FF404 800E1314 8FB30064 */  lw         $s3, 0x64($sp)
/* FF408 800E1318 8FB20060 */  lw         $s2, 0x60($sp)
/* FF40C 800E131C 8FB1005C */  lw         $s1, 0x5C($sp)
/* FF410 800E1320 8FB00058 */  lw         $s0, 0x58($sp)
/* FF414 800E1324 03E00008 */  jr         $ra
/* FF418 800E1328 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_menu_800E132C
/* FF41C 800E132C 03E00008 */  jr         $ra
/* FF420 800E1330 AC80000C */   sw        $zero, 0xC($a0)

glabel func_menu_800E1334
/* FF424 800E1334 24020001 */  addiu      $v0, $zero, 0x1
/* FF428 800E1338 03E00008 */  jr         $ra
/* FF42C 800E133C AC82000C */   sw        $v0, 0xC($a0)

glabel func_menu_800E1340
/* FF430 800E1340 00801021 */  addu       $v0, $a0, $zero
/* FF434 800E1344 AC400000 */  sw         $zero, 0x0($v0)
/* FF438 800E1348 AC400004 */  sw         $zero, 0x4($v0)
/* FF43C 800E134C 03E00008 */  jr         $ra
/* FF440 800E1350 AC400008 */   sw        $zero, 0x8($v0)

glabel func_menu_800E1354
/* FF444 800E1354 AC850000 */  sw         $a1, 0x0($a0)
/* FF448 800E1358 03E00008 */  jr         $ra
/* FF44C 800E135C AC860004 */   sw        $a2, 0x4($a0)

glabel func_menu_800E1360
/* FF450 800E1360 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FF454 800E1364 AFBF0010 */  sw         $ra, 0x10($sp)
/* FF458 800E1368 8C820000 */  lw         $v0, 0x0($a0)
/* FF45C 800E136C 10400007 */  beqz       $v0, .Lmenu_800E138C
/* FF460 800E1370 00000000 */   nop
/* FF464 800E1374 8C830004 */  lw         $v1, 0x4($a0)
/* FF468 800E1378 8C620010 */  lw         $v0, 0x10($v1)
/* FF46C 800E137C 84440010 */  lh         $a0, 0x10($v0)
/* FF470 800E1380 8C420014 */  lw         $v0, 0x14($v0)
/* FF474 800E1384 080384E7 */  j          .Lmenu_800E139C
/* FF478 800E1388 00000000 */   nop
.Lmenu_800E138C:
/* FF47C 800E138C 8C830004 */  lw         $v1, 0x4($a0)
/* FF480 800E1390 8C620010 */  lw         $v0, 0x10($v1)
/* FF484 800E1394 84440038 */  lh         $a0, 0x38($v0)
/* FF488 800E1398 8C42003C */  lw         $v0, 0x3C($v0)
.Lmenu_800E139C:
/* FF48C 800E139C 0040F809 */  jalr       $v0
/* FF490 800E13A0 00642021 */   addu      $a0, $v1, $a0
/* FF494 800E13A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* FF498 800E13A8 03E00008 */  jr         $ra
/* FF49C 800E13AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E13B0
/* FF4A0 800E13B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FF4A4 800E13B4 AFBF0010 */  sw         $ra, 0x10($sp)
/* FF4A8 800E13B8 8CA20020 */  lw         $v0, 0x20($a1)
/* FF4AC 800E13BC 8C450024 */  lw         $a1, 0x24($v0)
/* FF4B0 800E13C0 10A00015 */  beqz       $a1, .Lmenu_800E1418
/* FF4B4 800E13C4 00000000 */   nop
/* FF4B8 800E13C8 8C820000 */  lw         $v0, 0x0($a0)
/* FF4BC 800E13CC 1040000A */  beqz       $v0, .Lmenu_800E13F8
/* FF4C0 800E13D0 00000000 */   nop
/* FF4C4 800E13D4 8C820004 */  lw         $v0, 0x4($a0)
/* FF4C8 800E13D8 8C430010 */  lw         $v1, 0x10($v0)
/* FF4CC 800E13DC 84640030 */  lh         $a0, 0x30($v1)
/* FF4D0 800E13E0 00442021 */  addu       $a0, $v0, $a0
/* FF4D4 800E13E4 8C620034 */  lw         $v0, 0x34($v1)
/* FF4D8 800E13E8 0040F809 */  jalr       $v0
/* FF4DC 800E13EC 00000000 */   nop
/* FF4E0 800E13F0 08038508 */  j          .Lmenu_800E1420
/* FF4E4 800E13F4 00000000 */   nop
.Lmenu_800E13F8:
/* FF4E8 800E13F8 8C830004 */  lw         $v1, 0x4($a0)
/* FF4EC 800E13FC 8C620010 */  lw         $v0, 0x10($v1)
/* FF4F0 800E1400 84440038 */  lh         $a0, 0x38($v0)
/* FF4F4 800E1404 8C42003C */  lw         $v0, 0x3C($v0)
/* FF4F8 800E1408 0040F809 */  jalr       $v0
/* FF4FC 800E140C 00642021 */   addu      $a0, $v1, $a0
/* FF500 800E1410 08038508 */  j          .Lmenu_800E1420
/* FF504 800E1414 00000000 */   nop
.Lmenu_800E1418:
/* FF508 800E1418 0C0384D8 */  jal        func_menu_800E1360
/* FF50C 800E141C 00000000 */   nop
.Lmenu_800E1420:
/* FF510 800E1420 8FBF0010 */  lw         $ra, 0x10($sp)
/* FF514 800E1424 03E00008 */  jr         $ra
/* FF518 800E1428 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E142C
/* FF51C 800E142C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FF520 800E1430 AFBF0010 */  sw         $ra, 0x10($sp)
/* FF524 800E1434 8CA30020 */  lw         $v1, 0x20($a1)
/* FF528 800E1438 24020002 */  addiu      $v0, $zero, 0x2
/* FF52C 800E143C 1462000B */  bne        $v1, $v0, .Lmenu_800E146C
/* FF530 800E1440 00603021 */   addu      $a2, $v1, $zero
/* FF534 800E1444 8C820000 */  lw         $v0, 0x0($a0)
/* FF538 800E1448 10400023 */  beqz       $v0, .Lmenu_800E14D8
/* FF53C 800E144C 00000000 */   nop
/* FF540 800E1450 8C830004 */  lw         $v1, 0x4($a0)
/* FF544 800E1454 8C620010 */  lw         $v0, 0x10($v1)
/* FF548 800E1458 8CA50024 */  lw         $a1, 0x24($a1)
/* FF54C 800E145C 84440030 */  lh         $a0, 0x30($v0)
/* FF550 800E1460 8C420034 */  lw         $v0, 0x34($v0)
/* FF554 800E1464 08038532 */  j          .Lmenu_800E14C8
/* FF558 800E1468 00000000 */   nop
.Lmenu_800E146C:
/* FF55C 800E146C 24020003 */  addiu      $v0, $zero, 0x3
/* FF560 800E1470 10C20003 */  beq        $a2, $v0, .Lmenu_800E1480
/* FF564 800E1474 24020001 */   addiu     $v0, $zero, 0x1
/* FF568 800E1478 14C2000B */  bne        $a2, $v0, .Lmenu_800E14A8
/* FF56C 800E147C 00000000 */   nop
.Lmenu_800E1480:
/* FF570 800E1480 8C820000 */  lw         $v0, 0x0($a0)
/* FF574 800E1484 10400014 */  beqz       $v0, .Lmenu_800E14D8
/* FF578 800E1488 00000000 */   nop
/* FF57C 800E148C 8C830004 */  lw         $v1, 0x4($a0)
/* FF580 800E1490 8C620010 */  lw         $v0, 0x10($v1)
/* FF584 800E1494 8CA50024 */  lw         $a1, 0x24($a1)
/* FF588 800E1498 84440028 */  lh         $a0, 0x28($v0)
/* FF58C 800E149C 8C42002C */  lw         $v0, 0x2C($v0)
/* FF590 800E14A0 08038532 */  j          .Lmenu_800E14C8
/* FF594 800E14A4 00000000 */   nop
.Lmenu_800E14A8:
/* FF598 800E14A8 8C820000 */  lw         $v0, 0x0($a0)
/* FF59C 800E14AC 1040000A */  beqz       $v0, .Lmenu_800E14D8
/* FF5A0 800E14B0 00000000 */   nop
/* FF5A4 800E14B4 8C830004 */  lw         $v1, 0x4($a0)
/* FF5A8 800E14B8 8C620010 */  lw         $v0, 0x10($v1)
/* FF5AC 800E14BC 8CA50024 */  lw         $a1, 0x24($a1)
/* FF5B0 800E14C0 84440020 */  lh         $a0, 0x20($v0)
/* FF5B4 800E14C4 8C420024 */  lw         $v0, 0x24($v0)
.Lmenu_800E14C8:
/* FF5B8 800E14C8 0040F809 */  jalr       $v0
/* FF5BC 800E14CC 00642021 */   addu      $a0, $v1, $a0
/* FF5C0 800E14D0 0803853C */  j          .Lmenu_800E14F0
/* FF5C4 800E14D4 00000000 */   nop
.Lmenu_800E14D8:
/* FF5C8 800E14D8 8C830004 */  lw         $v1, 0x4($a0)
/* FF5CC 800E14DC 8C620010 */  lw         $v0, 0x10($v1)
/* FF5D0 800E14E0 84440038 */  lh         $a0, 0x38($v0)
/* FF5D4 800E14E4 8C42003C */  lw         $v0, 0x3C($v0)
/* FF5D8 800E14E8 0040F809 */  jalr       $v0
/* FF5DC 800E14EC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E14F0:
/* FF5E0 800E14F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* FF5E4 800E14F4 03E00008 */  jr         $ra
/* FF5E8 800E14F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E14FC
/* FF5EC 800E14FC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* FF5F0 800E1500 AFBF0040 */  sw         $ra, 0x40($sp)
/* FF5F4 800E1504 8CA80020 */  lw         $t0, 0x20($a1)
/* FF5F8 800E1508 8CA90024 */  lw         $t1, 0x24($a1)
/* FF5FC 800E150C 8CAA0028 */  lw         $t2, 0x28($a1)
/* FF600 800E1510 AFA80010 */  sw         $t0, 0x10($sp)
/* FF604 800E1514 AFA90014 */  sw         $t1, 0x14($sp)
/* FF608 800E1518 AFAA0018 */  sw         $t2, 0x18($sp)
/* FF60C 800E151C 8CA8002C */  lw         $t0, 0x2C($a1)
/* FF610 800E1520 8CA90030 */  lw         $t1, 0x30($a1)
/* FF614 800E1524 8CAA0034 */  lw         $t2, 0x34($a1)
/* FF618 800E1528 AFA80020 */  sw         $t0, 0x20($sp)
/* FF61C 800E152C AFA90024 */  sw         $t1, 0x24($sp)
/* FF620 800E1530 AFAA0028 */  sw         $t2, 0x28($sp)
/* FF624 800E1534 8CA80038 */  lw         $t0, 0x38($a1)
/* FF628 800E1538 8CA9003C */  lw         $t1, 0x3C($a1)
/* FF62C 800E153C 8CAA0040 */  lw         $t2, 0x40($a1)
/* FF630 800E1540 AFA80030 */  sw         $t0, 0x30($sp)
/* FF634 800E1544 AFA90034 */  sw         $t1, 0x34($sp)
/* FF638 800E1548 AFAA0038 */  sw         $t2, 0x38($sp)
/* FF63C 800E154C 8C820000 */  lw         $v0, 0x0($a0)
/* FF640 800E1550 1040000B */  beqz       $v0, .Lmenu_800E1580
/* FF644 800E1554 27A50010 */   addiu     $a1, $sp, 0x10
/* FF648 800E1558 8C820004 */  lw         $v0, 0x4($a0)
/* FF64C 800E155C 8C430010 */  lw         $v1, 0x10($v0)
/* FF650 800E1560 84640018 */  lh         $a0, 0x18($v1)
/* FF654 800E1564 27A60020 */  addiu      $a2, $sp, 0x20
/* FF658 800E1568 00442021 */  addu       $a0, $v0, $a0
/* FF65C 800E156C 8C62001C */  lw         $v0, 0x1C($v1)
/* FF660 800E1570 0040F809 */  jalr       $v0
/* FF664 800E1574 27A70030 */   addiu     $a3, $sp, 0x30
/* FF668 800E1578 08038566 */  j          .Lmenu_800E1598
/* FF66C 800E157C 00000000 */   nop
.Lmenu_800E1580:
/* FF670 800E1580 8C830004 */  lw         $v1, 0x4($a0)
/* FF674 800E1584 8C620010 */  lw         $v0, 0x10($v1)
/* FF678 800E1588 84440038 */  lh         $a0, 0x38($v0)
/* FF67C 800E158C 8C42003C */  lw         $v0, 0x3C($v0)
/* FF680 800E1590 0040F809 */  jalr       $v0
/* FF684 800E1594 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E1598:
/* FF688 800E1598 8FBF0040 */  lw         $ra, 0x40($sp)
/* FF68C 800E159C 03E00008 */  jr         $ra
/* FF690 800E15A0 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800E15A4
/* FF694 800E15A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FF698 800E15A8 AFBF0010 */  sw         $ra, 0x10($sp)
/* FF69C 800E15AC 0C0384D8 */  jal        func_menu_800E1360
/* FF6A0 800E15B0 00000000 */   nop
/* FF6A4 800E15B4 8FBF0010 */  lw         $ra, 0x10($sp)
/* FF6A8 800E15B8 03E00008 */  jr         $ra
/* FF6AC 800E15BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E15C0
/* FF6B0 800E15C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FF6B4 800E15C4 AFBF0010 */  sw         $ra, 0x10($sp)
/* FF6B8 800E15C8 0C0384D8 */  jal        func_menu_800E1360
/* FF6BC 800E15CC 00000000 */   nop
/* FF6C0 800E15D0 8FBF0010 */  lw         $ra, 0x10($sp)
/* FF6C4 800E15D4 03E00008 */  jr         $ra
/* FF6C8 800E15D8 27BD0018 */   addiu     $sp, $sp, 0x18
