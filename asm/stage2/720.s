.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007E590
/* 758C0 8007E590 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 758C4 8007E594 AFB3001C */  sw         $s3, 0x1C($sp)
/* 758C8 8007E598 00809821 */  addu       $s3, $a0, $zero
/* 758CC 8007E59C AFB10014 */  sw         $s1, 0x14($sp)
/* 758D0 8007E5A0 2671000C */  addiu      $s1, $s3, 0xC
/* 758D4 8007E5A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 758D8 8007E5A8 2410000F */  addiu      $s0, $zero, 0xF
/* 758DC 8007E5AC AFB20018 */  sw         $s2, 0x18($sp)
/* 758E0 8007E5B0 2412FFFF */  addiu      $s2, $zero, -0x1
/* 758E4 8007E5B4 AFBF0020 */  sw         $ra, 0x20($sp)
.L8007E5B8:
/* 758E8 8007E5B8 0C01F82C */  jal        func_8007E0B0
/* 758EC 8007E5BC 02202021 */   addu      $a0, $s1, $zero
/* 758F0 8007E5C0 2610FFFF */  addiu      $s0, $s0, -0x1
/* 758F4 8007E5C4 1612FFFC */  bne        $s0, $s2, .L8007E5B8
/* 758F8 8007E5C8 26310018 */   addiu     $s1, $s1, 0x18
/* 758FC 8007E5CC 02601021 */  addu       $v0, $s3, $zero
/* 75900 8007E5D0 AC400000 */  sw         $zero, 0x0($v0)
/* 75904 8007E5D4 AC400008 */  sw         $zero, 0x8($v0)
/* 75908 8007E5D8 AC400004 */  sw         $zero, 0x4($v0)
/* 7590C 8007E5DC AC40018C */  sw         $zero, 0x18C($v0)
/* 75910 8007E5E0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 75914 8007E5E4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 75918 8007E5E8 8FB20018 */  lw         $s2, 0x18($sp)
/* 7591C 8007E5EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 75920 8007E5F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 75924 8007E5F4 03E00008 */  jr         $ra
/* 75928 8007E5F8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007E5FC
/* 7592C 8007E5FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 75930 8007E600 AFB00010 */  sw         $s0, 0x10($sp)
/* 75934 8007E604 00808021 */  addu       $s0, $a0, $zero
/* 75938 8007E608 AFB10014 */  sw         $s1, 0x14($sp)
/* 7593C 8007E60C 00A08821 */  addu       $s1, $a1, $zero
/* 75940 8007E610 AFBF001C */  sw         $ra, 0x1C($sp)
/* 75944 8007E614 AFB20018 */  sw         $s2, 0x18($sp)
/* 75948 8007E618 8E020004 */  lw         $v0, 0x4($s0)
/* 7594C 8007E61C 10400003 */  beqz       $v0, .L8007E62C
/* 75950 8007E620 00C09021 */   addu      $s2, $a2, $zero
/* 75954 8007E624 0C01F9A3 */  jal        func_8007E68C
/* 75958 8007E628 00000000 */   nop
.L8007E62C:
/* 7595C 8007E62C 2622003F */  addiu      $v0, $s1, 0x3F
/* 75960 8007E630 2403FFC0 */  addiu      $v1, $zero, -0x40
/* 75964 8007E634 00431024 */  and        $v0, $v0, $v1
/* 75968 8007E638 AE020000 */  sw         $v0, 0x0($s0)
/* 7596C 8007E63C 00511023 */  subu       $v0, $v0, $s1
/* 75970 8007E640 02421023 */  subu       $v0, $s2, $v0
/* 75974 8007E644 8E030000 */  lw         $v1, 0x0($s0)
/* 75978 8007E648 26040190 */  addiu      $a0, $s0, 0x190
/* 7597C 8007E64C AE020004 */  sw         $v0, 0x4($s0)
/* 75980 8007E650 AE030008 */  sw         $v1, 0x8($s0)
/* 75984 8007E654 AC720000 */  sw         $s2, 0x0($v1)
/* 75988 8007E658 8E020008 */  lw         $v0, 0x8($s0)
/* 7598C 8007E65C 00002821 */  addu       $a1, $zero, $zero
/* 75990 8007E660 AC400004 */  sw         $zero, 0x4($v0)
/* 75994 8007E664 8E020008 */  lw         $v0, 0x8($s0)
/* 75998 8007E668 24060040 */  addiu      $a2, $zero, 0x40
/* 7599C 8007E66C 0C000697 */  jal        func_80001A5C
/* 759A0 8007E670 AC400008 */   sw        $zero, 0x8($v0)
/* 759A4 8007E674 8FBF001C */  lw         $ra, 0x1C($sp)
/* 759A8 8007E678 8FB20018 */  lw         $s2, 0x18($sp)
/* 759AC 8007E67C 8FB10014 */  lw         $s1, 0x14($sp)
/* 759B0 8007E680 8FB00010 */  lw         $s0, 0x10($sp)
/* 759B4 8007E684 03E00008 */  jr         $ra
/* 759B8 8007E688 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007E68C
/* 759BC 8007E68C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 759C0 8007E690 AFB3001C */  sw         $s3, 0x1C($sp)
/* 759C4 8007E694 00809821 */  addu       $s3, $a0, $zero
/* 759C8 8007E698 AFB20018 */  sw         $s2, 0x18($sp)
/* 759CC 8007E69C 00009021 */  addu       $s2, $zero, $zero
/* 759D0 8007E6A0 AFB10014 */  sw         $s1, 0x14($sp)
/* 759D4 8007E6A4 2411000C */  addiu      $s1, $zero, 0xC
/* 759D8 8007E6A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 759DC 8007E6AC 02408021 */  addu       $s0, $s2, $zero
/* 759E0 8007E6B0 AFBF0020 */  sw         $ra, 0x20($sp)
.L8007E6B4:
/* 759E4 8007E6B4 2E420010 */  sltiu      $v0, $s2, 0x10
/* 759E8 8007E6B8 1040000A */  beqz       $v0, .L8007E6E4
/* 759EC 8007E6BC 02131021 */   addu      $v0, $s0, $s3
/* 759F0 8007E6C0 8C420010 */  lw         $v0, 0x10($v0)
/* 759F4 8007E6C4 50400004 */  beql       $v0, $zero, .L8007E6D8
/* 759F8 8007E6C8 26310018 */   addiu     $s1, $s1, 0x18
/* 759FC 8007E6CC 0C01F861 */  jal        func_8007E184
/* 75A00 8007E6D0 02712021 */   addu      $a0, $s3, $s1
/* 75A04 8007E6D4 26310018 */  addiu      $s1, $s1, 0x18
.L8007E6D8:
/* 75A08 8007E6D8 26100018 */  addiu      $s0, $s0, 0x18
/* 75A0C 8007E6DC 0801F9AD */  j          .L8007E6B4
/* 75A10 8007E6E0 26520001 */   addiu     $s2, $s2, 0x1
.L8007E6E4:
/* 75A14 8007E6E4 AE600000 */  sw         $zero, 0x0($s3)
/* 75A18 8007E6E8 AE600004 */  sw         $zero, 0x4($s3)
/* 75A1C 8007E6EC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 75A20 8007E6F0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 75A24 8007E6F4 8FB20018 */  lw         $s2, 0x18($sp)
/* 75A28 8007E6F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 75A2C 8007E6FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 75A30 8007E700 03E00008 */  jr         $ra
/* 75A34 8007E704 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007E708
/* 75A38 8007E708 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 75A3C 8007E70C AFB30024 */  sw         $s3, 0x24($sp)
/* 75A40 8007E710 00809821 */  addu       $s3, $a0, $zero
/* 75A44 8007E714 AFB40028 */  sw         $s4, 0x28($sp)
/* 75A48 8007E718 00C0A021 */  addu       $s4, $a2, $zero
/* 75A4C 8007E71C AFB1001C */  sw         $s1, 0x1C($sp)
/* 75A50 8007E720 24B1003F */  addiu      $s1, $a1, 0x3F
/* 75A54 8007E724 2402FFC0 */  addiu      $v0, $zero, -0x40
/* 75A58 8007E728 02228824 */  and        $s1, $s1, $v0
/* 75A5C 8007E72C AFB20020 */  sw         $s2, 0x20($sp)
/* 75A60 8007E730 00009021 */  addu       $s2, $zero, $zero
/* 75A64 8007E734 02401821 */  addu       $v1, $s2, $zero
/* 75A68 8007E738 AFBF002C */  sw         $ra, 0x2C($sp)
/* 75A6C 8007E73C AFB00018 */  sw         $s0, 0x18($sp)
.L8007E740:
/* 75A70 8007E740 2E420010 */  sltiu      $v0, $s2, 0x10
/* 75A74 8007E744 10400009 */  beqz       $v0, .L8007E76C
/* 75A78 8007E748 00731021 */   addu      $v0, $v1, $s3
/* 75A7C 8007E74C 8C420010 */  lw         $v0, 0x10($v0)
/* 75A80 8007E750 10400003 */  beqz       $v0, .L8007E760
/* 75A84 8007E754 24630018 */   addiu     $v1, $v1, 0x18
/* 75A88 8007E758 0801F9D0 */  j          .L8007E740
/* 75A8C 8007E75C 26520001 */   addiu     $s2, $s2, 0x1
.L8007E760:
/* 75A90 8007E760 2E420010 */  sltiu      $v0, $s2, 0x10
/* 75A94 8007E764 14400007 */  bnez       $v0, .L8007E784
/* 75A98 8007E768 00000000 */   nop
.L8007E76C:
/* 75A9C 8007E76C 3C048004 */  lui        $a0, %hi(D_800403C0)
/* 75AA0 8007E770 248403C0 */  addiu      $a0, $a0, %lo(D_800403C0)
/* 75AA4 8007E774 00002821 */  addu       $a1, $zero, $zero
/* 75AA8 8007E778 00A03021 */  addu       $a2, $a1, $zero
/* 75AAC 8007E77C 0C011ACF */  jal        func_80046B3C
/* 75AB0 8007E780 00A03821 */   addu      $a3, $a1, $zero
.L8007E784:
/* 75AB4 8007E784 8E700008 */  lw         $s0, 0x8($s3)
/* 75AB8 8007E788 1200000A */  beqz       $s0, .L8007E7B4
/* 75ABC 8007E78C 3C048004 */   lui       $a0, %hi(D_800403C0)
.L8007E790:
/* 75AC0 8007E790 8E020000 */  lw         $v0, 0x0($s0)
/* 75AC4 8007E794 0051102A */  slt        $v0, $v0, $s1
/* 75AC8 8007E798 10400004 */  beqz       $v0, .L8007E7AC
/* 75ACC 8007E79C 00000000 */   nop
/* 75AD0 8007E7A0 8E100004 */  lw         $s0, 0x4($s0)
/* 75AD4 8007E7A4 1600FFFA */  bnez       $s0, .L8007E790
/* 75AD8 8007E7A8 00000000 */   nop
.L8007E7AC:
/* 75ADC 8007E7AC 16000006 */  bnez       $s0, .L8007E7C8
/* 75AE0 8007E7B0 3C048004 */   lui       $a0, %hi(D_800403C0)
.L8007E7B4:
/* 75AE4 8007E7B4 248403C0 */  addiu      $a0, $a0, %lo(D_800403C0)
/* 75AE8 8007E7B8 00002821 */  addu       $a1, $zero, $zero
/* 75AEC 8007E7BC 00A03021 */  addu       $a2, $a1, $zero
/* 75AF0 8007E7C0 0C011ACF */  jal        func_80046B3C
/* 75AF4 8007E7C4 00A03821 */   addu      $a3, $a1, $zero
.L8007E7C8:
/* 75AF8 8007E7C8 8E030000 */  lw         $v1, 0x0($s0)
/* 75AFC 8007E7CC 00712023 */  subu       $a0, $v1, $s1
/* 75B00 8007E7D0 2C820041 */  sltiu      $v0, $a0, 0x41
/* 75B04 8007E7D4 5440000A */  bnel       $v0, $zero, .L8007E800
/* 75B08 8007E7D8 00608821 */   addu      $s1, $v1, $zero
/* 75B0C 8007E7DC 02111821 */  addu       $v1, $s0, $s1
/* 75B10 8007E7E0 AC640000 */  sw         $a0, 0x0($v1)
/* 75B14 8007E7E4 8E020004 */  lw         $v0, 0x4($s0)
/* 75B18 8007E7E8 10400002 */  beqz       $v0, .L8007E7F4
/* 75B1C 8007E7EC AC620004 */   sw        $v0, 0x4($v1)
/* 75B20 8007E7F0 AC430008 */  sw         $v1, 0x8($v0)
.L8007E7F4:
/* 75B24 8007E7F4 AC700008 */  sw         $s0, 0x8($v1)
/* 75B28 8007E7F8 AE110000 */  sw         $s1, 0x0($s0)
/* 75B2C 8007E7FC AE030004 */  sw         $v1, 0x4($s0)
.L8007E800:
/* 75B30 8007E800 8E620008 */  lw         $v0, 0x8($s3)
/* 75B34 8007E804 14500006 */  bne        $v0, $s0, .L8007E820
/* 75B38 8007E808 00000000 */   nop
/* 75B3C 8007E80C 8E020004 */  lw         $v0, 0x4($s0)
/* 75B40 8007E810 10400006 */  beqz       $v0, .L8007E82C
/* 75B44 8007E814 AE620008 */   sw        $v0, 0x8($s3)
/* 75B48 8007E818 0801FA0B */  j          .L8007E82C
/* 75B4C 8007E81C AC400008 */   sw        $zero, 0x8($v0)
.L8007E820:
/* 75B50 8007E820 8E030008 */  lw         $v1, 0x8($s0)
/* 75B54 8007E824 8E020004 */  lw         $v0, 0x4($s0)
/* 75B58 8007E828 AC620004 */  sw         $v0, 0x4($v1)
.L8007E82C:
/* 75B5C 8007E82C 8E030004 */  lw         $v1, 0x4($s0)
/* 75B60 8007E830 10600003 */  beqz       $v1, .L8007E840
/* 75B64 8007E834 00122040 */   sll       $a0, $s2, 1
/* 75B68 8007E838 8E020008 */  lw         $v0, 0x8($s0)
/* 75B6C 8007E83C AC620008 */  sw         $v0, 0x8($v1)
.L8007E840:
/* 75B70 8007E840 00922021 */  addu       $a0, $a0, $s2
/* 75B74 8007E844 000420C0 */  sll        $a0, $a0, 3
/* 75B78 8007E848 2484000C */  addiu      $a0, $a0, 0xC
/* 75B7C 8007E84C 02642021 */  addu       $a0, $s3, $a0
/* 75B80 8007E850 02002821 */  addu       $a1, $s0, $zero
/* 75B84 8007E854 02203021 */  addu       $a2, $s1, $zero
/* 75B88 8007E858 02403821 */  addu       $a3, $s2, $zero
/* 75B8C 8007E85C 0C01F834 */  jal        func_8007E0D0
/* 75B90 8007E860 AFB40010 */   sw        $s4, 0x10($sp)
/* 75B94 8007E864 00121880 */  sll        $v1, $s2, 2
/* 75B98 8007E868 02631821 */  addu       $v1, $s3, $v1
/* 75B9C 8007E86C 24020001 */  addiu      $v0, $zero, 0x1
/* 75BA0 8007E870 AC6201D0 */  sw         $v0, 0x1D0($v1)
/* 75BA4 8007E874 8E62018C */  lw         $v0, 0x18C($s3)
/* 75BA8 8007E878 24420001 */  addiu      $v0, $v0, 0x1
/* 75BAC 8007E87C AE62018C */  sw         $v0, 0x18C($s3)
/* 75BB0 8007E880 AC620190 */  sw         $v0, 0x190($v1)
/* 75BB4 8007E884 02401021 */  addu       $v0, $s2, $zero
/* 75BB8 8007E888 8FBF002C */  lw         $ra, 0x2C($sp)
/* 75BBC 8007E88C 8FB40028 */  lw         $s4, 0x28($sp)
/* 75BC0 8007E890 8FB30024 */  lw         $s3, 0x24($sp)
/* 75BC4 8007E894 8FB20020 */  lw         $s2, 0x20($sp)
/* 75BC8 8007E898 8FB1001C */  lw         $s1, 0x1C($sp)
/* 75BCC 8007E89C 8FB00018 */  lw         $s0, 0x18($sp)
/* 75BD0 8007E8A0 03E00008 */  jr         $ra
/* 75BD4 8007E8A4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007E8A8
/* 75BD8 8007E8A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 75BDC 8007E8AC AFB1001C */  sw         $s1, 0x1C($sp)
/* 75BE0 8007E8B0 00808821 */  addu       $s1, $a0, $zero
/* 75BE4 8007E8B4 AFB40028 */  sw         $s4, 0x28($sp)
/* 75BE8 8007E8B8 00E0A021 */  addu       $s4, $a3, $zero
/* 75BEC 8007E8BC 24C3003F */  addiu      $v1, $a2, 0x3F
/* 75BF0 8007E8C0 2402FFC0 */  addiu      $v0, $zero, -0x40
/* 75BF4 8007E8C4 AFB20020 */  sw         $s2, 0x20($sp)
/* 75BF8 8007E8C8 00629024 */  and        $s2, $v1, $v0
/* 75BFC 8007E8CC 02463023 */  subu       $a2, $s2, $a2
/* 75C00 8007E8D0 AFB30024 */  sw         $s3, 0x24($sp)
/* 75C04 8007E8D4 00A69823 */  subu       $s3, $a1, $a2
/* 75C08 8007E8D8 AFB00018 */  sw         $s0, 0x18($sp)
/* 75C0C 8007E8DC 00008021 */  addu       $s0, $zero, $zero
/* 75C10 8007E8E0 02001821 */  addu       $v1, $s0, $zero
/* 75C14 8007E8E4 AFBF002C */  sw         $ra, 0x2C($sp)
.L8007E8E8:
/* 75C18 8007E8E8 2E020010 */  sltiu      $v0, $s0, 0x10
/* 75C1C 8007E8EC 10400009 */  beqz       $v0, .L8007E914
/* 75C20 8007E8F0 00711021 */   addu      $v0, $v1, $s1
/* 75C24 8007E8F4 8C420010 */  lw         $v0, 0x10($v0)
/* 75C28 8007E8F8 10400003 */  beqz       $v0, .L8007E908
/* 75C2C 8007E8FC 24630018 */   addiu     $v1, $v1, 0x18
/* 75C30 8007E900 0801FA3A */  j          .L8007E8E8
/* 75C34 8007E904 26100001 */   addiu     $s0, $s0, 0x1
.L8007E908:
/* 75C38 8007E908 2E020010 */  sltiu      $v0, $s0, 0x10
/* 75C3C 8007E90C 14400008 */  bnez       $v0, .L8007E930
/* 75C40 8007E910 00102040 */   sll       $a0, $s0, 1
.L8007E914:
/* 75C44 8007E914 3C048004 */  lui        $a0, %hi(D_800403C0)
/* 75C48 8007E918 248403C0 */  addiu      $a0, $a0, %lo(D_800403C0)
/* 75C4C 8007E91C 00002821 */  addu       $a1, $zero, $zero
/* 75C50 8007E920 00A03021 */  addu       $a2, $a1, $zero
/* 75C54 8007E924 0C011ACF */  jal        func_80046B3C
/* 75C58 8007E928 00A03821 */   addu      $a3, $a1, $zero
/* 75C5C 8007E92C 00102040 */  sll        $a0, $s0, 1
.L8007E930:
/* 75C60 8007E930 00902021 */  addu       $a0, $a0, $s0
/* 75C64 8007E934 000420C0 */  sll        $a0, $a0, 3
/* 75C68 8007E938 2484000C */  addiu      $a0, $a0, 0xC
/* 75C6C 8007E93C 02242021 */  addu       $a0, $s1, $a0
/* 75C70 8007E940 02402821 */  addu       $a1, $s2, $zero
/* 75C74 8007E944 02603021 */  addu       $a2, $s3, $zero
/* 75C78 8007E948 02003821 */  addu       $a3, $s0, $zero
/* 75C7C 8007E94C 0C01F834 */  jal        func_8007E0D0
/* 75C80 8007E950 AFB40010 */   sw        $s4, 0x10($sp)
/* 75C84 8007E954 00101880 */  sll        $v1, $s0, 2
/* 75C88 8007E958 02231821 */  addu       $v1, $s1, $v1
/* 75C8C 8007E95C AC6001D0 */  sw         $zero, 0x1D0($v1)
/* 75C90 8007E960 8E22018C */  lw         $v0, 0x18C($s1)
/* 75C94 8007E964 24420001 */  addiu      $v0, $v0, 0x1
/* 75C98 8007E968 AE22018C */  sw         $v0, 0x18C($s1)
/* 75C9C 8007E96C AC620190 */  sw         $v0, 0x190($v1)
/* 75CA0 8007E970 02001021 */  addu       $v0, $s0, $zero
/* 75CA4 8007E974 8FBF002C */  lw         $ra, 0x2C($sp)
/* 75CA8 8007E978 8FB40028 */  lw         $s4, 0x28($sp)
/* 75CAC 8007E97C 8FB30024 */  lw         $s3, 0x24($sp)
/* 75CB0 8007E980 8FB20020 */  lw         $s2, 0x20($sp)
/* 75CB4 8007E984 8FB1001C */  lw         $s1, 0x1C($sp)
/* 75CB8 8007E988 8FB00018 */  lw         $s0, 0x18($sp)
/* 75CBC 8007E98C 03E00008 */  jr         $ra
/* 75CC0 8007E990 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007E994
/* 75CC4 8007E994 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 75CC8 8007E998 AFB00010 */  sw         $s0, 0x10($sp)
/* 75CCC 8007E99C 00808021 */  addu       $s0, $a0, $zero
/* 75CD0 8007E9A0 AFB10014 */  sw         $s1, 0x14($sp)
/* 75CD4 8007E9A4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 75CD8 8007E9A8 0C01FB35 */  jal        func_8007ECD4
/* 75CDC 8007E9AC 00A08821 */   addu      $s1, $a1, $zero
/* 75CE0 8007E9B0 00111080 */  sll        $v0, $s1, 2
/* 75CE4 8007E9B4 02021021 */  addu       $v0, $s0, $v0
/* 75CE8 8007E9B8 8C4201D0 */  lw         $v0, 0x1D0($v0)
/* 75CEC 8007E9BC 10400034 */  beqz       $v0, .L8007EA90
/* 75CF0 8007E9C0 00111040 */   sll       $v0, $s1, 1
/* 75CF4 8007E9C4 00511021 */  addu       $v0, $v0, $s1
/* 75CF8 8007E9C8 000210C0 */  sll        $v0, $v0, 3
/* 75CFC 8007E9CC 00501821 */  addu       $v1, $v0, $s0
/* 75D00 8007E9D0 00601021 */  addu       $v0, $v1, $zero
/* 75D04 8007E9D4 8E040008 */  lw         $a0, 0x8($s0)
/* 75D08 8007E9D8 8C630010 */  lw         $v1, 0x10($v1)
/* 75D0C 8007E9DC 8C45000C */  lw         $a1, 0xC($v0)
/* 75D10 8007E9E0 10800008 */  beqz       $a0, .L8007EA04
/* 75D14 8007E9E4 00003021 */   addu      $a2, $zero, $zero
/* 75D18 8007E9E8 0085102B */  sltu       $v0, $a0, $a1
.L8007E9EC:
/* 75D1C 8007E9EC 50400006 */  beql       $v0, $zero, .L8007EA08
/* 75D20 8007E9F0 ACA30000 */   sw        $v1, 0x0($a1)
/* 75D24 8007E9F4 00803021 */  addu       $a2, $a0, $zero
/* 75D28 8007E9F8 8CC40004 */  lw         $a0, 0x4($a2)
/* 75D2C 8007E9FC 1480FFFB */  bnez       $a0, .L8007E9EC
/* 75D30 8007EA00 0085102B */   sltu      $v0, $a0, $a1
.L8007EA04:
/* 75D34 8007EA04 ACA30000 */  sw         $v1, 0x0($a1)
.L8007EA08:
/* 75D38 8007EA08 ACA40004 */  sw         $a0, 0x4($a1)
/* 75D3C 8007EA0C 14C00003 */  bnez       $a2, .L8007EA1C
/* 75D40 8007EA10 ACA60008 */   sw        $a2, 0x8($a1)
/* 75D44 8007EA14 0801FA88 */  j          .L8007EA20
/* 75D48 8007EA18 AE050008 */   sw        $a1, 0x8($s0)
.L8007EA1C:
/* 75D4C 8007EA1C ACC50004 */  sw         $a1, 0x4($a2)
.L8007EA20:
/* 75D50 8007EA20 1080000C */  beqz       $a0, .L8007EA54
/* 75D54 8007EA24 00A31021 */   addu      $v0, $a1, $v1
/* 75D58 8007EA28 5444000A */  bnel       $v0, $a0, .L8007EA54
/* 75D5C 8007EA2C AC850008 */   sw        $a1, 0x8($a0)
/* 75D60 8007EA30 8C820004 */  lw         $v0, 0x4($a0)
/* 75D64 8007EA34 ACA20004 */  sw         $v0, 0x4($a1)
/* 75D68 8007EA38 8CA20000 */  lw         $v0, 0x0($a1)
/* 75D6C 8007EA3C 8C830000 */  lw         $v1, 0x0($a0)
/* 75D70 8007EA40 00431021 */  addu       $v0, $v0, $v1
/* 75D74 8007EA44 ACA20000 */  sw         $v0, 0x0($a1)
/* 75D78 8007EA48 8C820004 */  lw         $v0, 0x4($a0)
/* 75D7C 8007EA4C 54400001 */  bnel       $v0, $zero, .L8007EA54
/* 75D80 8007EA50 AC450008 */   sw        $a1, 0x8($v0)
.L8007EA54:
/* 75D84 8007EA54 50C0000F */  beql       $a2, $zero, .L8007EA94
/* 75D88 8007EA58 00112040 */   sll       $a0, $s1, 1
/* 75D8C 8007EA5C 8CC20000 */  lw         $v0, 0x0($a2)
/* 75D90 8007EA60 00C21021 */  addu       $v0, $a2, $v0
/* 75D94 8007EA64 5445000B */  bnel       $v0, $a1, .L8007EA94
/* 75D98 8007EA68 00112040 */   sll       $a0, $s1, 1
/* 75D9C 8007EA6C 8CA20004 */  lw         $v0, 0x4($a1)
/* 75DA0 8007EA70 ACC20004 */  sw         $v0, 0x4($a2)
/* 75DA4 8007EA74 8CC20000 */  lw         $v0, 0x0($a2)
/* 75DA8 8007EA78 8CA30000 */  lw         $v1, 0x0($a1)
/* 75DAC 8007EA7C 00431021 */  addu       $v0, $v0, $v1
/* 75DB0 8007EA80 ACC20000 */  sw         $v0, 0x0($a2)
/* 75DB4 8007EA84 8CA20004 */  lw         $v0, 0x4($a1)
/* 75DB8 8007EA88 54400001 */  bnel       $v0, $zero, .L8007EA90
/* 75DBC 8007EA8C AC460008 */   sw        $a2, 0x8($v0)
.L8007EA90:
/* 75DC0 8007EA90 00112040 */  sll        $a0, $s1, 1
.L8007EA94:
/* 75DC4 8007EA94 00912021 */  addu       $a0, $a0, $s1
/* 75DC8 8007EA98 000420C0 */  sll        $a0, $a0, 3
/* 75DCC 8007EA9C 2484000C */  addiu      $a0, $a0, 0xC
/* 75DD0 8007EAA0 0C01F861 */  jal        func_8007E184
/* 75DD4 8007EAA4 02042021 */   addu      $a0, $s0, $a0
/* 75DD8 8007EAA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 75DDC 8007EAAC 8FB10014 */  lw         $s1, 0x14($sp)
/* 75DE0 8007EAB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 75DE4 8007EAB4 03E00008 */  jr         $ra
/* 75DE8 8007EAB8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007EABC
/* 75DEC 8007EABC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 75DF0 8007EAC0 00051040 */  sll        $v0, $a1, 1
/* 75DF4 8007EAC4 00451021 */  addu       $v0, $v0, $a1
/* 75DF8 8007EAC8 000210C0 */  sll        $v0, $v0, 3
/* 75DFC 8007EACC 2442000C */  addiu      $v0, $v0, 0xC
/* 75E00 8007EAD0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 75E04 8007EAD4 0C01F83F */  jal        func_8007E0FC
/* 75E08 8007EAD8 00822021 */   addu      $a0, $a0, $v0
/* 75E0C 8007EADC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 75E10 8007EAE0 03E00008 */  jr         $ra
/* 75E14 8007EAE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007EAE8
/* 75E18 8007EAE8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 75E1C 8007EAEC AFB40020 */  sw         $s4, 0x20($sp)
/* 75E20 8007EAF0 0080A021 */  addu       $s4, $a0, $zero
/* 75E24 8007EAF4 AFB50024 */  sw         $s5, 0x24($sp)
/* 75E28 8007EAF8 00A0A821 */  addu       $s5, $a1, $zero
/* 75E2C 8007EAFC AFB7002C */  sw         $s7, 0x2C($sp)
/* 75E30 8007EB00 00C0B821 */  addu       $s7, $a2, $zero
/* 75E34 8007EB04 00152040 */  sll        $a0, $s5, 1
/* 75E38 8007EB08 00952021 */  addu       $a0, $a0, $s5
/* 75E3C 8007EB0C 000420C0 */  sll        $a0, $a0, 3
/* 75E40 8007EB10 2484000C */  addiu      $a0, $a0, 0xC
/* 75E44 8007EB14 02842021 */  addu       $a0, $s4, $a0
/* 75E48 8007EB18 02E02821 */  addu       $a1, $s7, $zero
/* 75E4C 8007EB1C AFBF0030 */  sw         $ra, 0x30($sp)
/* 75E50 8007EB20 AFB60028 */  sw         $s6, 0x28($sp)
/* 75E54 8007EB24 AFB3001C */  sw         $s3, 0x1C($sp)
/* 75E58 8007EB28 AFB20018 */  sw         $s2, 0x18($sp)
/* 75E5C 8007EB2C AFB10014 */  sw         $s1, 0x14($sp)
/* 75E60 8007EB30 0C01F868 */  jal        func_8007E1A0
/* 75E64 8007EB34 AFB00010 */   sw        $s0, 0x10($sp)
/* 75E68 8007EB38 1440001C */  bnez       $v0, .L8007EBAC
/* 75E6C 8007EB3C 00008021 */   addu      $s0, $zero, $zero
/* 75E70 8007EB40 00151080 */  sll        $v0, $s5, 2
/* 75E74 8007EB44 0282B021 */  addu       $s6, $s4, $v0
/* 75E78 8007EB48 2413000C */  addiu      $s3, $zero, 0xC
/* 75E7C 8007EB4C 02809021 */  addu       $s2, $s4, $zero
/* 75E80 8007EB50 02008821 */  addu       $s1, $s0, $zero
.L8007EB54:
/* 75E84 8007EB54 2E020010 */  sltiu      $v0, $s0, 0x10
/* 75E88 8007EB58 10400014 */  beqz       $v0, .L8007EBAC
/* 75E8C 8007EB5C 00001021 */   addu      $v0, $zero, $zero
/* 75E90 8007EB60 1215000D */  beq        $s0, $s5, .L8007EB98
/* 75E94 8007EB64 02341021 */   addu      $v0, $s1, $s4
/* 75E98 8007EB68 8C420010 */  lw         $v0, 0x10($v0)
/* 75E9C 8007EB6C 5040000B */  beql       $v0, $zero, .L8007EB9C
/* 75EA0 8007EB70 26730018 */   addiu     $s3, $s3, 0x18
/* 75EA4 8007EB74 8E430190 */  lw         $v1, 0x190($s2)
/* 75EA8 8007EB78 8EC20190 */  lw         $v0, 0x190($s6)
/* 75EAC 8007EB7C 54620007 */  bnel       $v1, $v0, .L8007EB9C
/* 75EB0 8007EB80 26730018 */   addiu     $s3, $s3, 0x18
/* 75EB4 8007EB84 02932021 */  addu       $a0, $s4, $s3
/* 75EB8 8007EB88 0C01F868 */  jal        func_8007E1A0
/* 75EBC 8007EB8C 02E02821 */   addu      $a1, $s7, $zero
/* 75EC0 8007EB90 14400006 */  bnez       $v0, .L8007EBAC
/* 75EC4 8007EB94 00000000 */   nop
.L8007EB98:
/* 75EC8 8007EB98 26730018 */  addiu      $s3, $s3, 0x18
.L8007EB9C:
/* 75ECC 8007EB9C 26520004 */  addiu      $s2, $s2, 0x4
/* 75ED0 8007EBA0 26310018 */  addiu      $s1, $s1, 0x18
/* 75ED4 8007EBA4 0801FAD5 */  j          .L8007EB54
/* 75ED8 8007EBA8 26100001 */   addiu     $s0, $s0, 0x1
.L8007EBAC:
/* 75EDC 8007EBAC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 75EE0 8007EBB0 8FB7002C */  lw         $s7, 0x2C($sp)
/* 75EE4 8007EBB4 8FB60028 */  lw         $s6, 0x28($sp)
/* 75EE8 8007EBB8 8FB50024 */  lw         $s5, 0x24($sp)
/* 75EEC 8007EBBC 8FB40020 */  lw         $s4, 0x20($sp)
/* 75EF0 8007EBC0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 75EF4 8007EBC4 8FB20018 */  lw         $s2, 0x18($sp)
/* 75EF8 8007EBC8 8FB10014 */  lw         $s1, 0x14($sp)
/* 75EFC 8007EBCC 8FB00010 */  lw         $s0, 0x10($sp)
/* 75F00 8007EBD0 03E00008 */  jr         $ra
/* 75F04 8007EBD4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8007EBD8
/* 75F08 8007EBD8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 75F0C 8007EBDC AFBF0010 */  sw         $ra, 0x10($sp)
/* 75F10 8007EBE0 00003821 */  addu       $a3, $zero, $zero
/* 75F14 8007EBE4 2408000C */  addiu      $t0, $zero, 0xC
/* 75F18 8007EBE8 00E03021 */  addu       $a2, $a3, $zero
.L8007EBEC:
/* 75F1C 8007EBEC 2CE20010 */  sltiu      $v0, $a3, 0x10
/* 75F20 8007EBF0 10400018 */  beqz       $v0, .L8007EC54
/* 75F24 8007EBF4 00C41021 */   addu      $v0, $a2, $a0
/* 75F28 8007EBF8 8C420010 */  lw         $v0, 0x10($v0)
/* 75F2C 8007EBFC 10400011 */  beqz       $v0, .L8007EC44
/* 75F30 8007EC00 00C41021 */   addu      $v0, $a2, $a0
/* 75F34 8007EC04 8C42000C */  lw         $v0, 0xC($v0)
/* 75F38 8007EC08 00A2102B */  sltu       $v0, $a1, $v0
/* 75F3C 8007EC0C 14400007 */  bnez       $v0, .L8007EC2C
/* 75F40 8007EC10 00001821 */   addu      $v1, $zero, $zero
/* 75F44 8007EC14 00C41021 */  addu       $v0, $a2, $a0
/* 75F48 8007EC18 2442000C */  addiu      $v0, $v0, 0xC
/* 75F4C 8007EC1C 8C430000 */  lw         $v1, 0x0($v0)
/* 75F50 8007EC20 8C420004 */  lw         $v0, 0x4($v0)
/* 75F54 8007EC24 00621821 */  addu       $v1, $v1, $v0
/* 75F58 8007EC28 00A3182B */  sltu       $v1, $a1, $v1
.L8007EC2C:
/* 75F5C 8007EC2C 50600006 */  beql       $v1, $zero, .L8007EC48
/* 75F60 8007EC30 25080018 */   addiu     $t0, $t0, 0x18
/* 75F64 8007EC34 0C01F8DD */  jal        func_8007E374
/* 75F68 8007EC38 00882021 */   addu      $a0, $a0, $t0
/* 75F6C 8007EC3C 0801FB15 */  j          .L8007EC54
/* 75F70 8007EC40 00000000 */   nop
.L8007EC44:
/* 75F74 8007EC44 25080018 */  addiu      $t0, $t0, 0x18
.L8007EC48:
/* 75F78 8007EC48 24C60018 */  addiu      $a2, $a2, 0x18
/* 75F7C 8007EC4C 0801FAFB */  j          .L8007EBEC
/* 75F80 8007EC50 24E70001 */   addiu     $a3, $a3, 0x1
.L8007EC54:
/* 75F84 8007EC54 8FBF0010 */  lw         $ra, 0x10($sp)
/* 75F88 8007EC58 03E00008 */  jr         $ra
/* 75F8C 8007EC5C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007EC60
/* 75F90 8007EC60 00003821 */  addu       $a3, $zero, $zero
/* 75F94 8007EC64 00801821 */  addu       $v1, $a0, $zero
/* 75F98 8007EC68 00052880 */  sll        $a1, $a1, 2
/* 75F9C 8007EC6C 8C82018C */  lw         $v0, 0x18C($a0)
/* 75FA0 8007EC70 00852821 */  addu       $a1, $a0, $a1
/* 75FA4 8007EC74 24420001 */  addiu      $v0, $v0, 0x1
/* 75FA8 8007EC78 00404021 */  addu       $t0, $v0, $zero
/* 75FAC 8007EC7C AC88018C */  sw         $t0, 0x18C($a0)
/* 75FB0 8007EC80 8CA50190 */  lw         $a1, 0x190($a1)
.L8007EC84:
/* 75FB4 8007EC84 8C620190 */  lw         $v0, 0x190($v1)
/* 75FB8 8007EC88 50450001 */  beql       $v0, $a1, .L8007EC90
/* 75FBC 8007EC8C AC680190 */   sw        $t0, 0x190($v1)
.L8007EC90:
/* 75FC0 8007EC90 24E70001 */  addiu      $a3, $a3, 0x1
/* 75FC4 8007EC94 2CE20010 */  sltiu      $v0, $a3, 0x10
/* 75FC8 8007EC98 1440FFFA */  bnez       $v0, .L8007EC84
/* 75FCC 8007EC9C 24630004 */   addiu     $v1, $v1, 0x4
/* 75FD0 8007ECA0 00061080 */  sll        $v0, $a2, 2
/* 75FD4 8007ECA4 00821021 */  addu       $v0, $a0, $v0
/* 75FD8 8007ECA8 8C450190 */  lw         $a1, 0x190($v0)
/* 75FDC 8007ECAC 00003821 */  addu       $a3, $zero, $zero
.L8007ECB0:
/* 75FE0 8007ECB0 8C820190 */  lw         $v0, 0x190($a0)
/* 75FE4 8007ECB4 50450001 */  beql       $v0, $a1, .L8007ECBC
/* 75FE8 8007ECB8 AC880190 */   sw        $t0, 0x190($a0)
.L8007ECBC:
/* 75FEC 8007ECBC 24E70001 */  addiu      $a3, $a3, 0x1
/* 75FF0 8007ECC0 2CE20010 */  sltiu      $v0, $a3, 0x10
/* 75FF4 8007ECC4 1440FFFA */  bnez       $v0, .L8007ECB0
/* 75FF8 8007ECC8 24840004 */   addiu     $a0, $a0, 0x4
/* 75FFC 8007ECCC 03E00008 */  jr         $ra
/* 76000 8007ECD0 00000000 */   nop

glabel func_8007ECD4
/* 76004 8007ECD4 8C82018C */  lw         $v0, 0x18C($a0)
/* 76008 8007ECD8 00052880 */  sll        $a1, $a1, 2
/* 7600C 8007ECDC 24420001 */  addiu      $v0, $v0, 0x1
/* 76010 8007ECE0 AC82018C */  sw         $v0, 0x18C($a0)
/* 76014 8007ECE4 00852021 */  addu       $a0, $a0, $a1
/* 76018 8007ECE8 03E00008 */  jr         $ra
/* 7601C 8007ECEC AC820190 */   sw        $v0, 0x190($a0)

glabel func_8007ECF0
/* 76020 8007ECF0 8C830008 */  lw         $v1, 0x8($a0)
/* 76024 8007ECF4 10600008 */  beqz       $v1, .L8007ED18
/* 76028 8007ECF8 00002821 */   addu      $a1, $zero, $zero
.L8007ECFC:
/* 7602C 8007ECFC 8C640000 */  lw         $a0, 0x0($v1)
/* 76030 8007ED00 00A4102A */  slt        $v0, $a1, $a0
/* 76034 8007ED04 54400001 */  bnel       $v0, $zero, .L8007ED0C
/* 76038 8007ED08 00802821 */   addu      $a1, $a0, $zero
.L8007ED0C:
/* 7603C 8007ED0C 8C630004 */  lw         $v1, 0x4($v1)
/* 76040 8007ED10 1460FFFA */  bnez       $v1, .L8007ECFC
/* 76044 8007ED14 00000000 */   nop
.L8007ED18:
/* 76048 8007ED18 2402FFC0 */  addiu      $v0, $zero, -0x40
/* 7604C 8007ED1C 03E00008 */  jr         $ra
/* 76050 8007ED20 00A21024 */   and       $v0, $a1, $v0
