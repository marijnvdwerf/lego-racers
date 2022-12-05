.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8011A5E0
/* D09A0 8011A5E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D09A4 8011A5E4 AFB00010 */  sw         $s0, 0x10($sp)
/* D09A8 8011A5E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D09AC 8011A5EC 0C01637C */  jal        func_80058DF0
/* D09B0 8011A5F0 00808021 */   addu      $s0, $a0, $zero
/* D09B4 8011A5F4 02001021 */  addu       $v0, $s0, $zero
/* D09B8 8011A5F8 3C03800D */  lui        $v1, %hi(D_race_800CE230)
/* D09BC 8011A5FC 2463E230 */  addiu      $v1, $v1, %lo(D_race_800CE230)
/* D09C0 8011A600 AC430008 */  sw         $v1, 0x8($v0)
/* D09C4 8011A604 AC40000C */  sw         $zero, 0xC($v0)
/* D09C8 8011A608 AC400010 */  sw         $zero, 0x10($v0)
/* D09CC 8011A60C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D09D0 8011A610 8FB00010 */  lw         $s0, 0x10($sp)
/* D09D4 8011A614 03E00008 */  jr         $ra
/* D09D8 8011A618 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011A61C
/* D09DC 8011A61C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D09E0 8011A620 AFB00010 */  sw         $s0, 0x10($sp)
/* D09E4 8011A624 00808021 */  addu       $s0, $a0, $zero
/* D09E8 8011A628 AFB10014 */  sw         $s1, 0x14($sp)
/* D09EC 8011A62C 00A08821 */  addu       $s1, $a1, $zero
/* D09F0 8011A630 3C02800D */  lui        $v0, %hi(D_race_800CE230)
/* D09F4 8011A634 2442E230 */  addiu      $v0, $v0, %lo(D_race_800CE230)
/* D09F8 8011A638 AFBF0018 */  sw         $ra, 0x18($sp)
/* D09FC 8011A63C 0C046A36 */  jal        func_race_8011A8D8
/* D0A00 8011A640 AE020008 */   sw        $v0, 0x8($s0)
/* D0A04 8011A644 02002021 */  addu       $a0, $s0, $zero
/* D0A08 8011A648 0C016383 */  jal        func_80058E0C
/* D0A0C 8011A64C 02202821 */   addu      $a1, $s1, $zero
/* D0A10 8011A650 8FBF0018 */  lw         $ra, 0x18($sp)
/* D0A14 8011A654 8FB10014 */  lw         $s1, 0x14($sp)
/* D0A18 8011A658 8FB00010 */  lw         $s0, 0x10($sp)
/* D0A1C 8011A65C 03E00008 */  jr         $ra
/* D0A20 8011A660 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011A664
/* D0A24 8011A664 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D0A28 8011A668 AFB30024 */  sw         $s3, 0x24($sp)
/* D0A2C 8011A66C 00809821 */  addu       $s3, $a0, $zero
/* D0A30 8011A670 AFB1001C */  sw         $s1, 0x1C($sp)
/* D0A34 8011A674 00A08821 */  addu       $s1, $a1, $zero
/* D0A38 8011A678 AFB00018 */  sw         $s0, 0x18($sp)
/* D0A3C 8011A67C 00C08021 */  addu       $s0, $a2, $zero
/* D0A40 8011A680 AFBF0034 */  sw         $ra, 0x34($sp)
/* D0A44 8011A684 AFB60030 */  sw         $s6, 0x30($sp)
/* D0A48 8011A688 AFB5002C */  sw         $s5, 0x2C($sp)
/* D0A4C 8011A68C AFB40028 */  sw         $s4, 0x28($sp)
/* D0A50 8011A690 AFB20020 */  sw         $s2, 0x20($sp)
/* D0A54 8011A694 8E620010 */  lw         $v0, 0x10($s3)
/* D0A58 8011A698 10400006 */  beqz       $v0, .Lrace_8011A6B4
/* D0A5C 8011A69C 00E0B021 */   addu      $s6, $a3, $zero
/* D0A60 8011A6A0 8E620008 */  lw         $v0, 0x8($s3)
/* D0A64 8011A6A4 84440018 */  lh         $a0, 0x18($v0)
/* D0A68 8011A6A8 8C42001C */  lw         $v0, 0x1C($v0)
/* D0A6C 8011A6AC 0040F809 */  jalr       $v0
/* D0A70 8011A6B0 02642021 */   addu      $a0, $s3, $a0
.Lrace_8011A6B4:
/* D0A74 8011A6B4 12000014 */  beqz       $s0, .Lrace_8011A708
/* D0A78 8011A6B8 00000000 */   nop
/* D0A7C 8011A6BC 0C01FB4C */  jal        func_8007ED30
/* D0A80 8011A6C0 24040654 */   addiu     $a0, $zero, 0x654
/* D0A84 8011A6C4 0C00278C */  jal        func_80009E30
/* D0A88 8011A6C8 00402021 */   addu      $a0, $v0, $zero
/* D0A8C 8011A6CC 00409021 */  addu       $s2, $v0, $zero
/* D0A90 8011A6D0 56400008 */  bnel       $s2, $zero, .Lrace_8011A6F4
/* D0A94 8011A6D4 02402021 */   addu      $a0, $s2, $zero
/* D0A98 8011A6D8 3C04800D */  lui        $a0, %hi(D_race_800CE170)
/* D0A9C 8011A6DC 2484E170 */  addiu      $a0, $a0, %lo(D_race_800CE170)
/* D0AA0 8011A6E0 00002821 */  addu       $a1, $zero, $zero
/* D0AA4 8011A6E4 00A03021 */  addu       $a2, $a1, $zero
/* D0AA8 8011A6E8 0C011ACF */  jal        func_80046B3C
/* D0AAC 8011A6EC 00A03821 */   addu      $a3, $a1, $zero
/* D0AB0 8011A6F0 02402021 */  addu       $a0, $s2, $zero
.Lrace_8011A6F4:
/* D0AB4 8011A6F4 3C05800D */  lui        $a1, %hi(D_race_800CE174)
/* D0AB8 8011A6F8 0C0025BA */  jal        func_800096E8
/* D0ABC 8011A6FC 24A5E174 */   addiu     $a1, $a1, %lo(D_race_800CE174)
/* D0AC0 8011A700 080469D2 */  j          .Lrace_8011A748
/* D0AC4 8011A704 00000000 */   nop
.Lrace_8011A708:
/* D0AC8 8011A708 0C01FB4C */  jal        func_8007ED30
/* D0ACC 8011A70C 24040658 */   addiu     $a0, $zero, 0x658
/* D0AD0 8011A710 00408021 */  addu       $s0, $v0, $zero
/* D0AD4 8011A714 0C002504 */  jal        func_80009410
/* D0AD8 8011A718 02002021 */   addu      $a0, $s0, $zero
/* D0ADC 8011A71C 3C02800D */  lui        $v0, %hi(D_race_800CE180)
/* D0AE0 8011A720 2442E180 */  addiu      $v0, $v0, %lo(D_race_800CE180)
/* D0AE4 8011A724 02009021 */  addu       $s2, $s0, $zero
/* D0AE8 8011A728 16400007 */  bnez       $s2, .Lrace_8011A748
/* D0AEC 8011A72C AE020028 */   sw        $v0, 0x28($s0)
/* D0AF0 8011A730 3C04800D */  lui        $a0, %hi(D_race_800CE170)
/* D0AF4 8011A734 2484E170 */  addiu      $a0, $a0, %lo(D_race_800CE170)
/* D0AF8 8011A738 00002821 */  addu       $a1, $zero, $zero
/* D0AFC 8011A73C 00A03021 */  addu       $a2, $a1, $zero
/* D0B00 8011A740 0C011ACF */  jal        func_80046B3C
/* D0B04 8011A744 00A03821 */   addu      $a3, $a1, $zero
.Lrace_8011A748:
/* D0B08 8011A748 8E420028 */  lw         $v0, 0x28($s2)
/* D0B0C 8011A74C 02202821 */  addu       $a1, $s1, $zero
/* D0B10 8011A750 84440088 */  lh         $a0, 0x88($v0)
/* D0B14 8011A754 8C42008C */  lw         $v0, 0x8C($v0)
/* D0B18 8011A758 0040F809 */  jalr       $v0
/* D0B1C 8011A75C 02442021 */   addu      $a0, $s2, $a0
/* D0B20 8011A760 02402021 */  addu       $a0, $s2, $zero
/* D0B24 8011A764 0C0026F4 */  jal        func_80009BD0
/* D0B28 8011A768 24050027 */   addiu     $a1, $zero, 0x27
/* D0B2C 8011A76C 0C002723 */  jal        func_80009C8C
/* D0B30 8011A770 02402021 */   addu      $a0, $s2, $zero
/* D0B34 8011A774 02602021 */  addu       $a0, $s3, $zero
/* D0B38 8011A778 00402821 */  addu       $a1, $v0, $zero
/* D0B3C 8011A77C 0C016397 */  jal        func_80058E5C
/* D0B40 8011A780 AE65000C */   sw        $a1, 0xC($s3)
/* D0B44 8011A784 3C028013 */  lui        $v0, %hi(D_race_80132260)
/* D0B48 8011A788 8C442260 */  lw         $a0, %lo(D_race_80132260)($v0)
/* D0B4C 8011A78C 0C01FB65 */  jal        func_8007ED94
/* D0B50 8011A790 00000000 */   nop
/* D0B54 8011A794 8E70000C */  lw         $s0, 0xC($s3)
/* D0B58 8011A798 00102040 */  sll        $a0, $s0, 1
/* D0B5C 8011A79C 00902021 */  addu       $a0, $a0, $s0
/* D0B60 8011A7A0 000420C0 */  sll        $a0, $a0, 3
/* D0B64 8011A7A4 00902023 */  subu       $a0, $a0, $s0
/* D0B68 8011A7A8 0C00943C */  jal        func_800250F0
/* D0B6C 8011A7AC 00042080 */   sll       $a0, $a0, 2
/* D0B70 8011A7B0 0040A021 */  addu       $s4, $v0, $zero
/* D0B74 8011A7B4 2610FFFF */  addiu      $s0, $s0, -0x1
/* D0B78 8011A7B8 06000007 */  bltz       $s0, .Lrace_8011A7D8
/* D0B7C 8011A7BC 02808821 */   addu      $s1, $s4, $zero
/* D0B80 8011A7C0 2415FFFF */  addiu      $s5, $zero, -0x1
.Lrace_8011A7C4:
/* D0B84 8011A7C4 0C046878 */  jal        func_race_8011A1E0
/* D0B88 8011A7C8 02202021 */   addu      $a0, $s1, $zero
/* D0B8C 8011A7CC 2610FFFF */  addiu      $s0, $s0, -0x1
/* D0B90 8011A7D0 1615FFFC */  bne        $s0, $s5, .Lrace_8011A7C4
/* D0B94 8011A7D4 2631005C */   addiu     $s1, $s1, 0x5C
.Lrace_8011A7D8:
/* D0B98 8011A7D8 0C01FB72 */  jal        func_8007EDC8
/* D0B9C 8011A7DC AE740010 */   sw        $s4, 0x10($s3)
/* D0BA0 8011A7E0 8E620010 */  lw         $v0, 0x10($s3)
/* D0BA4 8011A7E4 14400008 */  bnez       $v0, .Lrace_8011A808
/* D0BA8 8011A7E8 00008821 */   addu      $s1, $zero, $zero
/* D0BAC 8011A7EC 3C04800D */  lui        $a0, %hi(D_race_800CE170)
/* D0BB0 8011A7F0 2484E170 */  addiu      $a0, $a0, %lo(D_race_800CE170)
/* D0BB4 8011A7F4 00002821 */  addu       $a1, $zero, $zero
/* D0BB8 8011A7F8 00A03021 */  addu       $a2, $a1, $zero
/* D0BBC 8011A7FC 0C011ACF */  jal        func_80046B3C
/* D0BC0 8011A800 00A03821 */   addu      $a3, $a1, $zero
/* D0BC4 8011A804 00008821 */  addu       $s1, $zero, $zero
.Lrace_8011A808:
/* D0BC8 8011A808 02208021 */  addu       $s0, $s1, $zero
.Lrace_8011A80C:
/* D0BCC 8011A80C 8E62000C */  lw         $v0, 0xC($s3)
/* D0BD0 8011A810 0222102B */  sltu       $v0, $s1, $v0
/* D0BD4 8011A814 10400017 */  beqz       $v0, .Lrace_8011A874
/* D0BD8 8011A818 02402821 */   addu      $a1, $s2, $zero
/* D0BDC 8011A81C 02C03021 */  addu       $a2, $s6, $zero
/* D0BE0 8011A820 8E640010 */  lw         $a0, 0x10($s3)
/* D0BE4 8011A824 26310001 */  addiu      $s1, $s1, 0x1
/* D0BE8 8011A828 0C046898 */  jal        func_race_8011A260
/* D0BEC 8011A82C 00902021 */   addu      $a0, $a0, $s0
/* D0BF0 8011A830 8E620010 */  lw         $v0, 0x10($s3)
/* D0BF4 8011A834 02602021 */  addu       $a0, $s3, $zero
/* D0BF8 8011A838 02021021 */  addu       $v0, $s0, $v0
/* D0BFC 8011A83C 88430000 */  lwl        $v1, 0x0($v0)
/* D0C00 8011A840 98430003 */  lwr        $v1, 0x3($v0)
/* D0C04 8011A844 88480004 */  lwl        $t0, 0x4($v0)
/* D0C08 8011A848 98480007 */  lwr        $t0, 0x7($v0)
/* D0C0C 8011A84C ABA30010 */  swl        $v1, 0x10($sp)
/* D0C10 8011A850 BBA30013 */  swr        $v1, 0x13($sp)
/* D0C14 8011A854 ABA80014 */  swl        $t0, 0x14($sp)
/* D0C18 8011A858 BBA80017 */  swr        $t0, 0x17($sp)
/* D0C1C 8011A85C 8E660010 */  lw         $a2, 0x10($s3)
/* D0C20 8011A860 27A50010 */  addiu      $a1, $sp, 0x10
/* D0C24 8011A864 0C0163C7 */  jal        func_80058F1C
/* D0C28 8011A868 00D03021 */   addu      $a2, $a2, $s0
/* D0C2C 8011A86C 08046A03 */  j          .Lrace_8011A80C
/* D0C30 8011A870 2610005C */   addiu     $s0, $s0, 0x5C
.Lrace_8011A874:
/* D0C34 8011A874 02402021 */  addu       $a0, $s2, $zero
/* D0C38 8011A878 0C0026F4 */  jal        func_80009BD0
/* D0C3C 8011A87C 24050006 */   addiu     $a1, $zero, 0x6
/* D0C40 8011A880 8E420028 */  lw         $v0, 0x28($s2)
/* D0C44 8011A884 84440048 */  lh         $a0, 0x48($v0)
/* D0C48 8011A888 8C42004C */  lw         $v0, 0x4C($v0)
/* D0C4C 8011A88C 0040F809 */  jalr       $v0
/* D0C50 8011A890 02442021 */   addu      $a0, $s2, $a0
/* D0C54 8011A894 12400006 */  beqz       $s2, .Lrace_8011A8B0
/* D0C58 8011A898 24050003 */   addiu     $a1, $zero, 0x3
/* D0C5C 8011A89C 8E420028 */  lw         $v0, 0x28($s2)
/* D0C60 8011A8A0 84440038 */  lh         $a0, 0x38($v0)
/* D0C64 8011A8A4 8C42003C */  lw         $v0, 0x3C($v0)
/* D0C68 8011A8A8 0040F809 */  jalr       $v0
/* D0C6C 8011A8AC 02442021 */   addu      $a0, $s2, $a0
.Lrace_8011A8B0:
/* D0C70 8011A8B0 8FBF0034 */  lw         $ra, 0x34($sp)
/* D0C74 8011A8B4 8FB60030 */  lw         $s6, 0x30($sp)
/* D0C78 8011A8B8 8FB5002C */  lw         $s5, 0x2C($sp)
/* D0C7C 8011A8BC 8FB40028 */  lw         $s4, 0x28($sp)
/* D0C80 8011A8C0 8FB30024 */  lw         $s3, 0x24($sp)
/* D0C84 8011A8C4 8FB20020 */  lw         $s2, 0x20($sp)
/* D0C88 8011A8C8 8FB1001C */  lw         $s1, 0x1C($sp)
/* D0C8C 8011A8CC 8FB00018 */  lw         $s0, 0x18($sp)
/* D0C90 8011A8D0 03E00008 */  jr         $ra
/* D0C94 8011A8D4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8011A8D8
/* D0C98 8011A8D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0C9C 8011A8DC AFB00010 */  sw         $s0, 0x10($sp)
/* D0CA0 8011A8E0 00808021 */  addu       $s0, $a0, $zero
/* D0CA4 8011A8E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* D0CA8 8011A8E8 8E040010 */  lw         $a0, 0x10($s0)
/* D0CAC 8011A8EC 10800004 */  beqz       $a0, .Lrace_8011A900
/* D0CB0 8011A8F0 00000000 */   nop
/* D0CB4 8011A8F4 0C009444 */  jal        func_80025110
/* D0CB8 8011A8F8 00000000 */   nop
/* D0CBC 8011A8FC AE000010 */  sw         $zero, 0x10($s0)
.Lrace_8011A900:
/* D0CC0 8011A900 8E020000 */  lw         $v0, 0x0($s0)
/* D0CC4 8011A904 50400004 */  beql       $v0, $zero, .Lrace_8011A918
/* D0CC8 8011A908 AE00000C */   sw        $zero, 0xC($s0)
/* D0CCC 8011A90C 0C0163B9 */  jal        func_80058EE4
/* D0CD0 8011A910 02002021 */   addu      $a0, $s0, $zero
/* D0CD4 8011A914 AE00000C */  sw         $zero, 0xC($s0)
.Lrace_8011A918:
/* D0CD8 8011A918 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0CDC 8011A91C 8FB00010 */  lw         $s0, 0x10($sp)
/* D0CE0 8011A920 03E00008 */  jr         $ra
/* D0CE4 8011A924 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011A928
/* D0CE8 8011A928 3C028013 */  lui        $v0, %hi(D_race_80132260)
/* D0CEC 8011A92C 03E00008 */  jr         $ra
/* D0CF0 8011A930 AC442260 */   sw        $a0, %lo(D_race_80132260)($v0)

glabel func_race_8011A934
/* D0CF4 8011A934 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0CF8 8011A938 AFBF0010 */  sw         $ra, 0x10($sp)
/* D0CFC 8011A93C 0C002513 */  jal        func_8000944C
/* D0D00 8011A940 00000000 */   nop
/* D0D04 8011A944 8FBF0010 */  lw         $ra, 0x10($sp)
/* D0D08 8011A948 03E00008 */  jr         $ra
/* D0D0C 8011A94C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011A950
/* D0D10 8011A950 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0D14 8011A954 AFBF0010 */  sw         $ra, 0x10($sp)
/* D0D18 8011A958 8C820000 */  lw         $v0, 0x0($a0)
/* D0D1C 8011A95C 10400003 */  beqz       $v0, .Lrace_8011A96C
/* D0D20 8011A960 00001021 */   addu      $v0, $zero, $zero
/* D0D24 8011A964 0C016427 */  jal        func_8005909C
/* D0D28 8011A968 00000000 */   nop
.Lrace_8011A96C:
/* D0D2C 8011A96C 8FBF0010 */  lw         $ra, 0x10($sp)
/* D0D30 8011A970 03E00008 */  jr         $ra
/* D0D34 8011A974 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011A978
/* D0D38 8011A978 8C82000C */  lw         $v0, 0xC($a0)
/* D0D3C 8011A97C 03E00008 */  jr         $ra
/* D0D40 8011A980 00000000 */   nop

glabel func_race_8011A984
/* D0D44 8011A984 00051040 */  sll        $v0, $a1, 1
/* D0D48 8011A988 00451021 */  addu       $v0, $v0, $a1
/* D0D4C 8011A98C 000210C0 */  sll        $v0, $v0, 3
/* D0D50 8011A990 00451023 */  subu       $v0, $v0, $a1
/* D0D54 8011A994 8C830010 */  lw         $v1, 0x10($a0)
/* D0D58 8011A998 00021080 */  sll        $v0, $v0, 2
/* D0D5C 8011A99C 03E00008 */  jr         $ra
/* D0D60 8011A9A0 00621021 */   addu      $v0, $v1, $v0

glabel func_race_8011A9A4
/* D0D64 8011A9A4 8C820010 */  lw         $v0, 0x10($a0)
/* D0D68 8011A9A8 03E00008 */  jr         $ra
/* D0D6C 8011A9AC 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_8011A9B0
/* D0D70 8011A9B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0D74 8011A9B4 AFB00010 */  sw         $s0, 0x10($sp)
/* D0D78 8011A9B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D0D7C 8011A9BC 0C045E3C */  jal        func_race_801178F0
/* D0D80 8011A9C0 00808021 */   addu      $s0, $a0, $zero
/* D0D84 8011A9C4 3C02800D */  lui        $v0, %hi(D_race_800CE3E8)
/* D0D88 8011A9C8 2442E3E8 */  addiu      $v0, $v0, %lo(D_race_800CE3E8)
/* D0D8C 8011A9CC 260400E4 */  addiu      $a0, $s0, 0xE4
/* D0D90 8011A9D0 0C015708 */  jal        func_80055C20
/* D0D94 8011A9D4 AE0200CC */   sw        $v0, 0xCC($s0)
/* D0D98 8011A9D8 0C046A7D */  jal        func_race_8011A9F4
/* D0D9C 8011A9DC 02002021 */   addu      $a0, $s0, $zero
/* D0DA0 8011A9E0 02001021 */  addu       $v0, $s0, $zero
/* D0DA4 8011A9E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0DA8 8011A9E8 8FB00010 */  lw         $s0, 0x10($sp)
/* D0DAC 8011A9EC 03E00008 */  jr         $ra
/* D0DB0 8011A9F0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011A9F4
/* D0DB4 8011A9F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D0DB8 8011A9F8 AFB00010 */  sw         $s0, 0x10($sp)
/* D0DBC 8011A9FC 00808021 */  addu       $s0, $a0, $zero
/* D0DC0 8011AA00 26040140 */  addiu      $a0, $s0, 0x140
/* D0DC4 8011AA04 00002821 */  addu       $a1, $zero, $zero
/* D0DC8 8011AA08 24060008 */  addiu      $a2, $zero, 0x8
/* D0DCC 8011AA0C AFBF0014 */  sw         $ra, 0x14($sp)
/* D0DD0 8011AA10 F7B40018 */  sdc1       $f20, 0x18($sp)
/* D0DD4 8011AA14 0C000697 */  jal        func_80001A5C
/* D0DD8 8011AA18 AE00013C */   sw        $zero, 0x13C($s0)
/* D0DDC 8011AA1C 2604014C */  addiu      $a0, $s0, 0x14C
/* D0DE0 8011AA20 00002821 */  addu       $a1, $zero, $zero
/* D0DE4 8011AA24 0C000697 */  jal        func_80001A5C
/* D0DE8 8011AA28 2406000C */   addiu     $a2, $zero, 0xC
/* D0DEC 8011AA2C 00002821 */  addu       $a1, $zero, $zero
/* D0DF0 8011AA30 02002021 */  addu       $a0, $s0, $zero
/* D0DF4 8011AA34 3C01800D */  lui        $at, %hi(D_race_800CE250)
/* D0DF8 8011AA38 C422E250 */  lwc1       $f2, %lo(D_race_800CE250)($at)
/* D0DFC 8011AA3C 3C01800D */  lui        $at, %hi(D_race_800CE254)
/* D0E00 8011AA40 C420E254 */  lwc1       $f0, %lo(D_race_800CE254)($at)
/* D0E04 8011AA44 3C01800D */  lui        $at, %hi(D_race_800CE258)
/* D0E08 8011AA48 C424E258 */  lwc1       $f4, %lo(D_race_800CE258)($at)
/* D0E0C 8011AA4C 3C01800D */  lui        $at, %hi(D_race_800CE25C)
/* D0E10 8011AA50 C426E25C */  lwc1       $f6, %lo(D_race_800CE25C)($at)
/* D0E14 8011AA54 02001821 */  addu       $v1, $s0, $zero
/* D0E18 8011AA58 AE000148 */  sw         $zero, 0x148($s0)
/* D0E1C 8011AA5C AE000158 */  sw         $zero, 0x158($s0)
/* D0E20 8011AA60 AE00015C */  sw         $zero, 0x15C($s0)
/* D0E24 8011AA64 AE000168 */  sw         $zero, 0x168($s0)
/* D0E28 8011AA68 AE000170 */  sw         $zero, 0x170($s0)
/* D0E2C 8011AA6C AE000174 */  sw         $zero, 0x174($s0)
/* D0E30 8011AA70 AE000178 */  sw         $zero, 0x178($s0)
/* D0E34 8011AA74 AE00017C */  sw         $zero, 0x17C($s0)
/* D0E38 8011AA78 AE000180 */  sw         $zero, 0x180($s0)
/* D0E3C 8011AA7C AE000184 */  sw         $zero, 0x184($s0)
/* D0E40 8011AA80 AE000188 */  sw         $zero, 0x188($s0)
/* D0E44 8011AA84 AE00018C */  sw         $zero, 0x18C($s0)
/* D0E48 8011AA88 AE000634 */  sw         $zero, 0x634($s0)
/* D0E4C 8011AA8C AE000638 */  sw         $zero, 0x638($s0)
/* D0E50 8011AA90 AE00063C */  sw         $zero, 0x63C($s0)
/* D0E54 8011AA94 AE000640 */  sw         $zero, 0x640($s0)
/* D0E58 8011AA98 AE000644 */  sw         $zero, 0x644($s0)
/* D0E5C 8011AA9C AE000648 */  sw         $zero, 0x648($s0)
/* D0E60 8011AAA0 AE000190 */  sw         $zero, 0x190($s0)
/* D0E64 8011AAA4 AE000194 */  sw         $zero, 0x194($s0)
/* D0E68 8011AAA8 AE000610 */  sw         $zero, 0x610($s0)
/* D0E6C 8011AAAC AE000614 */  sw         $zero, 0x614($s0)
/* D0E70 8011AAB0 AE000618 */  sw         $zero, 0x618($s0)
/* D0E74 8011AAB4 AE000600 */  sw         $zero, 0x600($s0)
/* D0E78 8011AAB8 AE000604 */  sw         $zero, 0x604($s0)
/* D0E7C 8011AABC AE00061C */  sw         $zero, 0x61C($s0)
/* D0E80 8011AAC0 AE000608 */  sw         $zero, 0x608($s0)
/* D0E84 8011AAC4 AE0005F4 */  sw         $zero, 0x5F4($s0)
/* D0E88 8011AAC8 AE0006BC */  sw         $zero, 0x6BC($s0)
/* D0E8C 8011AACC E6020164 */  swc1       $f2, 0x164($s0)
/* D0E90 8011AAD0 E600016C */  swc1       $f0, 0x16C($s0)
/* D0E94 8011AAD4 E6040198 */  swc1       $f4, 0x198($s0)
/* D0E98 8011AAD8 E60005FC */  swc1       $f0, 0x5FC($s0)
/* D0E9C 8011AADC AE00062C */  sw         $zero, 0x62C($s0)
/* D0EA0 8011AAE0 AE000630 */  sw         $zero, 0x630($s0)
/* D0EA4 8011AAE4 AE00064C */  sw         $zero, 0x64C($s0)
/* D0EA8 8011AAE8 AE000650 */  sw         $zero, 0x650($s0)
/* D0EAC 8011AAEC AE000654 */  sw         $zero, 0x654($s0)
/* D0EB0 8011AAF0 E6060658 */  swc1       $f6, 0x658($s0)
/* D0EB4 8011AAF4 AE00067C */  sw         $zero, 0x67C($s0)
/* D0EB8 8011AAF8 AE000680 */  sw         $zero, 0x680($s0)
/* D0EBC 8011AAFC AE000684 */  sw         $zero, 0x684($s0)
/* D0EC0 8011AB00 AE0003F0 */  sw         $zero, 0x3F0($s0)
/* D0EC4 8011AB04 AE0003F4 */  sw         $zero, 0x3F4($s0)
.Lrace_8011AB08:
/* D0EC8 8011AB08 AC600374 */  sw         $zero, 0x374($v1)
/* D0ECC 8011AB0C AC600378 */  sw         $zero, 0x378($v1)
/* D0ED0 8011AB10 AC60037C */  sw         $zero, 0x37C($v1)
/* D0ED4 8011AB14 AC6003A4 */  sw         $zero, 0x3A4($v1)
/* D0ED8 8011AB18 AC6003A8 */  sw         $zero, 0x3A8($v1)
/* D0EDC 8011AB1C AC6003AC */  sw         $zero, 0x3AC($v1)
/* D0EE0 8011AB20 AC8003D4 */  sw         $zero, 0x3D4($a0)
/* D0EE4 8011AB24 24840004 */  addiu      $a0, $a0, 0x4
/* D0EE8 8011AB28 24A50001 */  addiu      $a1, $a1, 0x1
/* D0EEC 8011AB2C 2CA20004 */  sltiu      $v0, $a1, 0x4
/* D0EF0 8011AB30 1440FFF5 */  bnez       $v0, .Lrace_8011AB08
/* D0EF4 8011AB34 2463000C */   addiu     $v1, $v1, 0xC
/* D0EF8 8011AB38 2604019C */  addiu      $a0, $s0, 0x19C
/* D0EFC 8011AB3C 00002821 */  addu       $a1, $zero, $zero
/* D0F00 8011AB40 0C000697 */  jal        func_80001A5C
/* D0F04 8011AB44 240601C0 */   addiu     $a2, $zero, 0x1C0
/* D0F08 8011AB48 260403F8 */  addiu      $a0, $s0, 0x3F8
/* D0F0C 8011AB4C 00002821 */  addu       $a1, $zero, $zero
/* D0F10 8011AB50 0C000697 */  jal        func_80001A5C
/* D0F14 8011AB54 240601E0 */   addiu     $a2, $zero, 0x1E0
/* D0F18 8011AB58 3C0542DC */  lui        $a1, (0x42DC0000 >> 16)
/* D0F1C 8011AB5C 3C01800D */  lui        $at, %hi(D_race_800CE260)
/* D0F20 8011AB60 C434E260 */  lwc1       $f20, %lo(D_race_800CE260)($at)
/* D0F24 8011AB64 3C01800D */  lui        $at, %hi(D_race_800CE264)
/* D0F28 8011AB68 C420E264 */  lwc1       $f0, %lo(D_race_800CE264)($at)
/* D0F2C 8011AB6C 3C01800D */  lui        $at, %hi(D_race_800CE268)
/* D0F30 8011AB70 C422E268 */  lwc1       $f2, %lo(D_race_800CE268)($at)
/* D0F34 8011AB74 3C01800D */  lui        $at, %hi(D_race_800CE26C)
/* D0F38 8011AB78 C424E26C */  lwc1       $f4, %lo(D_race_800CE26C)($at)
/* D0F3C 8011AB7C 3C01800D */  lui        $at, %hi(D_race_800CE270)
/* D0F40 8011AB80 C426E270 */  lwc1       $f6, %lo(D_race_800CE270)($at)
/* D0F44 8011AB84 3C01800D */  lui        $at, %hi(D_race_800CE274)
/* D0F48 8011AB88 C428E274 */  lwc1       $f8, %lo(D_race_800CE274)($at)
/* D0F4C 8011AB8C 8E0300CC */  lw         $v1, 0xCC($s0)
/* D0F50 8011AB90 24020001 */  addiu      $v0, $zero, 0x1
/* D0F54 8011AB94 AE0005D8 */  sw         $zero, 0x5D8($s0)
/* D0F58 8011AB98 AE000370 */  sw         $zero, 0x370($s0)
/* D0F5C 8011AB9C AE0005DC */  sw         $zero, 0x5DC($s0)
/* D0F60 8011ABA0 AE0005E0 */  sw         $zero, 0x5E0($s0)
/* D0F64 8011ABA4 AE0005E4 */  sw         $zero, 0x5E4($s0)
/* D0F68 8011ABA8 AE0005E8 */  sw         $zero, 0x5E8($s0)
/* D0F6C 8011ABAC AE0005EC */  sw         $zero, 0x5EC($s0)
/* D0F70 8011ABB0 AE0006AC */  sw         $zero, 0x6AC($s0)
/* D0F74 8011ABB4 AE0006D0 */  sw         $zero, 0x6D0($s0)
/* D0F78 8011ABB8 AE0006D4 */  sw         $zero, 0x6D4($s0)
/* D0F7C 8011ABBC AE0206D8 */  sw         $v0, 0x6D8($s0)
/* D0F80 8011ABC0 AE0006C8 */  sw         $zero, 0x6C8($s0)
/* D0F84 8011ABC4 AE00065C */  sw         $zero, 0x65C($s0)
/* D0F88 8011ABC8 AE000668 */  sw         $zero, 0x668($s0)
/* D0F8C 8011ABCC AE00066C */  sw         $zero, 0x66C($s0)
/* D0F90 8011ABD0 AE0006C0 */  sw         $zero, 0x6C0($s0)
/* D0F94 8011ABD4 AE0006CC */  sw         $zero, 0x6CC($s0)
/* D0F98 8011ABD8 E61406B0 */  swc1       $f20, 0x6B0($s0)
/* D0F9C 8011ABDC E60006B4 */  swc1       $f0, 0x6B4($s0)
/* D0FA0 8011ABE0 E60206B8 */  swc1       $f2, 0x6B8($s0)
/* D0FA4 8011ABE4 E6040660 */  swc1       $f4, 0x660($s0)
/* D0FA8 8011ABE8 E6060664 */  swc1       $f6, 0x664($s0)
/* D0FAC 8011ABEC E60806C4 */  swc1       $f8, 0x6C4($s0)
/* D0FB0 8011ABF0 84640038 */  lh         $a0, 0x38($v1)
/* D0FB4 8011ABF4 8C62003C */  lw         $v0, 0x3C($v1)
/* D0FB8 8011ABF8 0040F809 */  jalr       $v0
/* D0FBC 8011ABFC 02042021 */   addu      $a0, $s0, $a0
/* D0FC0 8011AC00 E61405F8 */  swc1       $f20, 0x5F8($s0)
/* D0FC4 8011AC04 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0FC8 8011AC08 8FB00010 */  lw         $s0, 0x10($sp)
/* D0FCC 8011AC0C D7B40018 */  ldc1       $f20, 0x18($sp)
/* D0FD0 8011AC10 03E00008 */  jr         $ra
/* D0FD4 8011AC14 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011AC18
/* D0FD8 8011AC18 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D0FDC 8011AC1C AFB1001C */  sw         $s1, 0x1C($sp)
/* D0FE0 8011AC20 00808821 */  addu       $s1, $a0, $zero
/* D0FE4 8011AC24 AFB20020 */  sw         $s2, 0x20($sp)
/* D0FE8 8011AC28 00A09021 */  addu       $s2, $a1, $zero
/* D0FEC 8011AC2C AFB00018 */  sw         $s0, 0x18($sp)
/* D0FF0 8011AC30 00C08021 */  addu       $s0, $a2, $zero
/* D0FF4 8011AC34 AFB30024 */  sw         $s3, 0x24($sp)
/* D0FF8 8011AC38 AFBF0028 */  sw         $ra, 0x28($sp)
/* D0FFC 8011AC3C F7B40030 */  sdc1       $f20, 0x30($sp)
/* D1000 8011AC40 8E220000 */  lw         $v0, 0x0($s1)
/* D1004 8011AC44 C7B4004C */  lwc1       $f20, 0x4C($sp)
/* D1008 8011AC48 10400003 */  beqz       $v0, .Lrace_8011AC58
/* D100C 8011AC4C 00E09821 */   addu      $s3, $a3, $zero
/* D1010 8011AC50 0C046B5A */  jal        func_race_8011AD68
/* D1014 8011AC54 00000000 */   nop
.Lrace_8011AC58:
/* D1018 8011AC58 24020001 */  addiu      $v0, $zero, 0x1
/* D101C 8011AC5C AE300140 */  sw         $s0, 0x140($s1)
/* D1020 8011AC60 AE220148 */  sw         $v0, 0x148($s1)
/* D1024 8011AC64 12600004 */  beqz       $s3, .Lrace_8011AC78
/* D1028 8011AC68 AE200158 */   sw        $zero, 0x158($s1)
/* D102C 8011AC6C 00421021 */  addu       $v0, $v0, $v0
/* D1030 8011AC70 AE330144 */  sw         $s3, 0x144($s1)
/* D1034 8011AC74 AE220148 */  sw         $v0, 0x148($s1)
.Lrace_8011AC78:
/* D1038 8011AC78 8FA20048 */  lw         $v0, 0x48($sp)
/* D103C 8011AC7C 3C01800D */  lui        $at, %hi(D_race_800CE278)
/* D1040 8011AC80 C422E278 */  lwc1       $f2, %lo(D_race_800CE278)($at)
/* D1044 8011AC84 4406A000 */  mfc1       $a2, $f20
/* D1048 8011AC88 AE32013C */  sw         $s2, 0x13C($s1)
/* D104C 8011AC8C AE22015C */  sw         $v0, 0x15C($s1)
/* D1050 8011AC90 C6400028 */  lwc1       $f0, 0x28($s2)
/* D1054 8011AC94 263000E4 */  addiu      $s0, $s1, 0xE4
/* D1058 8011AC98 E6000028 */  swc1       $f0, 0x28($s0)
/* D105C 8011AC9C C640002C */  lwc1       $f0, 0x2C($s2)
/* D1060 8011ACA0 E600002C */  swc1       $f0, 0x2C($s0)
/* D1064 8011ACA4 C6400030 */  lwc1       $f0, 0x30($s2)
/* D1068 8011ACA8 E6000030 */  swc1       $f0, 0x30($s0)
/* D106C 8011ACAC C6400034 */  lwc1       $f0, 0x34($s2)
/* D1070 8011ACB0 E6000034 */  swc1       $f0, 0x34($s0)
/* D1074 8011ACB4 C6400038 */  lwc1       $f0, 0x38($s2)
/* D1078 8011ACB8 E6000038 */  swc1       $f0, 0x38($s0)
/* D107C 8011ACBC C640003C */  lwc1       $f0, 0x3C($s2)
/* D1080 8011ACC0 E600003C */  swc1       $f0, 0x3C($s0)
/* D1084 8011ACC4 C6400040 */  lwc1       $f0, 0x40($s2)
/* D1088 8011ACC8 E6000040 */  swc1       $f0, 0x40($s0)
/* D108C 8011ACCC C6400044 */  lwc1       $f0, 0x44($s2)
/* D1090 8011ACD0 E6000044 */  swc1       $f0, 0x44($s0)
/* D1094 8011ACD4 C6400048 */  lwc1       $f0, 0x48($s2)
/* D1098 8011ACD8 E6000048 */  swc1       $f0, 0x48($s0)
/* D109C 8011ACDC 8E43004C */  lw         $v1, 0x4C($s2)
/* D10A0 8011ACE0 8E480050 */  lw         $t0, 0x50($s2)
/* D10A4 8011ACE4 8E490054 */  lw         $t1, 0x54($s2)
/* D10A8 8011ACE8 AE230130 */  sw         $v1, 0x130($s1)
/* D10AC 8011ACEC AE280134 */  sw         $t0, 0x134($s1)
/* D10B0 8011ACF0 AE290138 */  sw         $t1, 0x138($s1)
/* D10B4 8011ACF4 E602000C */  swc1       $f2, 0xC($s0)
/* D10B8 8011ACF8 C7A00054 */  lwc1       $f0, 0x54($sp)
/* D10BC 8011ACFC 8FA70050 */  lw         $a3, 0x50($sp)
/* D10C0 8011AD00 02202021 */  addu       $a0, $s1, $zero
/* D10C4 8011AD04 E7A00010 */  swc1       $f0, 0x10($sp)
/* D10C8 8011AD08 C7A00058 */  lwc1       $f0, 0x58($sp)
/* D10CC 8011AD0C 02002821 */  addu       $a1, $s0, $zero
/* D10D0 8011AD10 0C045E4E */  jal        func_race_80117938
/* D10D4 8011AD14 E7A00014 */   swc1      $f0, 0x14($sp)
/* D10D8 8011AD18 3C01800D */  lui        $at, %hi(D_race_800CE27C)
/* D10DC 8011AD1C C424E27C */  lwc1       $f4, %lo(D_race_800CE27C)($at)
/* D10E0 8011AD20 4604A082 */  mul.s      $f2, $f20, $f4
/* D10E4 8011AD24 C6000028 */  lwc1       $f0, 0x28($s0)
/* D10E8 8011AD28 2622016C */  addiu      $v0, $s1, 0x16C
/* D10EC 8011AD2C E620016C */  swc1       $f0, 0x16C($s1)
/* D10F0 8011AD30 C600002C */  lwc1       $f0, 0x2C($s0)
/* D10F4 8011AD34 46041082 */  mul.s      $f2, $f2, $f4
/* D10F8 8011AD38 E4400004 */  swc1       $f0, 0x4($v0)
/* D10FC 8011AD3C C6000030 */  lwc1       $f0, 0x30($s0)
/* D1100 8011AD40 E4400008 */  swc1       $f0, 0x8($v0)
/* D1104 8011AD44 E6220160 */  swc1       $f2, 0x160($s1)
/* D1108 8011AD48 8FBF0028 */  lw         $ra, 0x28($sp)
/* D110C 8011AD4C 8FB30024 */  lw         $s3, 0x24($sp)
/* D1110 8011AD50 8FB20020 */  lw         $s2, 0x20($sp)
/* D1114 8011AD54 8FB1001C */  lw         $s1, 0x1C($sp)
/* D1118 8011AD58 8FB00018 */  lw         $s0, 0x18($sp)
/* D111C 8011AD5C D7B40030 */  ldc1       $f20, 0x30($sp)
/* D1120 8011AD60 03E00008 */  jr         $ra
/* D1124 8011AD64 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8011AD68
/* D1128 8011AD68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D112C 8011AD6C AFB00010 */  sw         $s0, 0x10($sp)
/* D1130 8011AD70 AFBF0014 */  sw         $ra, 0x14($sp)
/* D1134 8011AD74 0C046A7D */  jal        func_race_8011A9F4
/* D1138 8011AD78 00808021 */   addu      $s0, $a0, $zero
/* D113C 8011AD7C 0C045B73 */  jal        func_race_80116DCC
/* D1140 8011AD80 02002021 */   addu      $a0, $s0, $zero
/* D1144 8011AD84 8E0506D0 */  lw         $a1, 0x6D0($s0)
/* D1148 8011AD88 10A00005 */  beqz       $a1, .Lrace_8011ADA0
/* D114C 8011AD8C 00000000 */   nop
/* D1150 8011AD90 8E04015C */  lw         $a0, 0x15C($s0)
/* D1154 8011AD94 0C046564 */  jal        func_race_80119590
/* D1158 8011AD98 00000000 */   nop
/* D115C 8011AD9C AE0006D0 */  sw         $zero, 0x6D0($s0)
.Lrace_8011ADA0:
/* D1160 8011ADA0 8E0506D4 */  lw         $a1, 0x6D4($s0)
/* D1164 8011ADA4 10A00005 */  beqz       $a1, .Lrace_8011ADBC
/* D1168 8011ADA8 00000000 */   nop
/* D116C 8011ADAC 8E04015C */  lw         $a0, 0x15C($s0)
/* D1170 8011ADB0 0C046564 */  jal        func_race_80119590
/* D1174 8011ADB4 00000000 */   nop
/* D1178 8011ADB8 AE0006D4 */  sw         $zero, 0x6D4($s0)
.Lrace_8011ADBC:
/* D117C 8011ADBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D1180 8011ADC0 8FB00010 */  lw         $s0, 0x10($sp)
/* D1184 8011ADC4 03E00008 */  jr         $ra
/* D1188 8011ADC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011ADCC
/* D118C 8011ADCC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D1190 8011ADD0 AFB00030 */  sw         $s0, 0x30($sp)
/* D1194 8011ADD4 00808021 */  addu       $s0, $a0, $zero
/* D1198 8011ADD8 AFB10034 */  sw         $s1, 0x34($sp)
/* D119C 8011ADDC 00A08821 */  addu       $s1, $a1, $zero
/* D11A0 8011ADE0 AFB3003C */  sw         $s3, 0x3C($sp)
/* D11A4 8011ADE4 02209821 */  addu       $s3, $s1, $zero
/* D11A8 8011ADE8 AFBF0040 */  sw         $ra, 0x40($sp)
/* D11AC 8011ADEC 0C0475E3 */  jal        func_race_8011D78C
/* D11B0 8011ADF0 AFB20038 */   sw        $s2, 0x38($sp)
/* D11B4 8011ADF4 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D11B8 8011ADF8 30420080 */  andi       $v0, $v0, 0x80
/* D11BC 8011ADFC 1040000D */  beqz       $v0, .Lrace_8011AE34
/* D11C0 8011AE00 00009021 */   addu      $s2, $zero, $zero
/* D11C4 8011AE04 8E0306CC */  lw         $v1, 0x6CC($s0)
/* D11C8 8011AE08 0263102B */  sltu       $v0, $s3, $v1
/* D11CC 8011AE0C 14400008 */  bnez       $v0, .Lrace_8011AE30
/* D11D0 8011AE10 00731023 */   subu      $v0, $v1, $s3
/* D11D4 8011AE14 8E0200CC */  lw         $v0, 0xCC($s0)
/* D11D8 8011AE18 84440080 */  lh         $a0, 0x80($v0)
/* D11DC 8011AE1C 8C420084 */  lw         $v0, 0x84($v0)
/* D11E0 8011AE20 0040F809 */  jalr       $v0
/* D11E4 8011AE24 02042021 */   addu      $a0, $s0, $a0
/* D11E8 8011AE28 08046B8D */  j          .Lrace_8011AE34
/* D11EC 8011AE2C 00000000 */   nop
.Lrace_8011AE30:
/* D11F0 8011AE30 AE0206CC */  sw         $v0, 0x6CC($s0)
.Lrace_8011AE34:
/* D11F4 8011AE34 8E0306AC */  lw         $v1, 0x6AC($s0)
/* D11F8 8011AE38 30620002 */  andi       $v0, $v1, 0x2
/* D11FC 8011AE3C 10400013 */  beqz       $v0, .Lrace_8011AE8C
/* D1200 8011AE40 30620004 */   andi      $v0, $v1, 0x4
/* D1204 8011AE44 14400022 */  bnez       $v0, .Lrace_8011AED0
/* D1208 8011AE48 2402FFFB */   addiu     $v0, $zero, -0x5
/* D120C 8011AE4C 8E0305E4 */  lw         $v1, 0x5E4($s0)
/* D1210 8011AE50 0223102B */  sltu       $v0, $s1, $v1
/* D1214 8011AE54 14400021 */  bnez       $v0, .Lrace_8011AEDC
/* D1218 8011AE58 00711023 */   subu      $v0, $v1, $s1
/* D121C 8011AE5C 10600004 */  beqz       $v1, .Lrace_8011AE70
/* D1220 8011AE60 00000000 */   nop
/* D1224 8011AE64 00608821 */  addu       $s1, $v1, $zero
/* D1228 8011AE68 08046BB8 */  j          .Lrace_8011AEE0
/* D122C 8011AE6C AE0005E4 */   sw        $zero, 0x5E4($s0)
.Lrace_8011AE70:
/* D1230 8011AE70 8E0200CC */  lw         $v0, 0xCC($s0)
/* D1234 8011AE74 84440060 */  lh         $a0, 0x60($v0)
/* D1238 8011AE78 8C420064 */  lw         $v0, 0x64($v0)
/* D123C 8011AE7C 0040F809 */  jalr       $v0
/* D1240 8011AE80 02042021 */   addu      $a0, $s0, $a0
/* D1244 8011AE84 08046BB8 */  j          .Lrace_8011AEE0
/* D1248 8011AE88 00000000 */   nop
.Lrace_8011AE8C:
/* D124C 8011AE8C 8E0305E4 */  lw         $v1, 0x5E4($s0)
/* D1250 8011AE90 0223102B */  sltu       $v0, $s1, $v1
/* D1254 8011AE94 14400011 */  bnez       $v0, .Lrace_8011AEDC
/* D1258 8011AE98 00711023 */   subu      $v0, $v1, $s1
/* D125C 8011AE9C 260200E4 */  addiu      $v0, $s0, 0xE4
/* D1260 8011AEA0 AE0005E4 */  sw         $zero, 0x5E4($s0)
/* D1264 8011AEA4 C4400040 */  lwc1       $f0, 0x40($v0)
/* D1268 8011AEA8 E7A00010 */  swc1       $f0, 0x10($sp)
/* D126C 8011AEAC C4400044 */  lwc1       $f0, 0x44($v0)
/* D1270 8011AEB0 27A50010 */  addiu      $a1, $sp, 0x10
/* D1274 8011AEB4 E4A00004 */  swc1       $f0, 0x4($a1)
/* D1278 8011AEB8 C4400048 */  lwc1       $f0, 0x48($v0)
/* D127C 8011AEBC 02002021 */  addu       $a0, $s0, $zero
/* D1280 8011AEC0 0C045C7E */  jal        func_race_801171F8
/* D1284 8011AEC4 E4A00008 */   swc1      $f0, 0x8($a1)
/* D1288 8011AEC8 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D128C 8011AECC 2403F7FF */  addiu      $v1, $zero, -0x801
.Lrace_8011AED0:
/* D1290 8011AED0 00431024 */  and        $v0, $v0, $v1
/* D1294 8011AED4 08046BB8 */  j          .Lrace_8011AEE0
/* D1298 8011AED8 AE0206AC */   sw        $v0, 0x6AC($s0)
.Lrace_8011AEDC:
/* D129C 8011AEDC AE0205E4 */  sw         $v0, 0x5E4($s0)
.Lrace_8011AEE0:
/* D12A0 8011AEE0 8E0305E8 */  lw         $v1, 0x5E8($s0)
/* D12A4 8011AEE4 0071102B */  sltu       $v0, $v1, $s1
/* D12A8 8011AEE8 10400003 */  beqz       $v0, .Lrace_8011AEF8
/* D12AC 8011AEEC 00711023 */   subu      $v0, $v1, $s1
/* D12B0 8011AEF0 08046BBF */  j          .Lrace_8011AEFC
/* D12B4 8011AEF4 AE0005E8 */   sw        $zero, 0x5E8($s0)
.Lrace_8011AEF8:
/* D12B8 8011AEF8 AE0205E8 */  sw         $v0, 0x5E8($s0)
.Lrace_8011AEFC:
/* D12BC 8011AEFC 8E0305DC */  lw         $v1, 0x5DC($s0)
/* D12C0 8011AF00 10600011 */  beqz       $v1, .Lrace_8011AF48
/* D12C4 8011AF04 0223102B */   sltu      $v0, $s1, $v1
/* D12C8 8011AF08 1440000E */  bnez       $v0, .Lrace_8011AF44
/* D12CC 8011AF0C 00711023 */   subu      $v0, $v1, $s1
/* D12D0 8011AF10 260200E4 */  addiu      $v0, $s0, 0xE4
/* D12D4 8011AF14 AE0005DC */  sw         $zero, 0x5DC($s0)
/* D12D8 8011AF18 C4400028 */  lwc1       $f0, 0x28($v0)
/* D12DC 8011AF1C E7A00010 */  swc1       $f0, 0x10($sp)
/* D12E0 8011AF20 C440002C */  lwc1       $f0, 0x2C($v0)
/* D12E4 8011AF24 27A50010 */  addiu      $a1, $sp, 0x10
/* D12E8 8011AF28 E4A00004 */  swc1       $f0, 0x4($a1)
/* D12EC 8011AF2C C4400030 */  lwc1       $f0, 0x30($v0)
/* D12F0 8011AF30 02002021 */  addu       $a0, $s0, $zero
/* D12F4 8011AF34 0C045C7E */  jal        func_race_801171F8
/* D12F8 8011AF38 E4A00008 */   swc1      $f0, 0x8($a1)
/* D12FC 8011AF3C 08046BD2 */  j          .Lrace_8011AF48
/* D1300 8011AF40 00000000 */   nop
.Lrace_8011AF44:
/* D1304 8011AF44 AE0205DC */  sw         $v0, 0x5DC($s0)
.Lrace_8011AF48:
/* D1308 8011AF48 8E0305E0 */  lw         $v1, 0x5E0($s0)
/* D130C 8011AF4C 10600011 */  beqz       $v1, .Lrace_8011AF94
/* D1310 8011AF50 0223102B */   sltu      $v0, $s1, $v1
/* D1314 8011AF54 1440000E */  bnez       $v0, .Lrace_8011AF90
/* D1318 8011AF58 00711023 */   subu      $v0, $v1, $s1
/* D131C 8011AF5C 260200E4 */  addiu      $v0, $s0, 0xE4
/* D1320 8011AF60 AE0005E0 */  sw         $zero, 0x5E0($s0)
/* D1324 8011AF64 C4400034 */  lwc1       $f0, 0x34($v0)
/* D1328 8011AF68 E7A00010 */  swc1       $f0, 0x10($sp)
/* D132C 8011AF6C C4400038 */  lwc1       $f0, 0x38($v0)
/* D1330 8011AF70 27A50010 */  addiu      $a1, $sp, 0x10
/* D1334 8011AF74 E4A00004 */  swc1       $f0, 0x4($a1)
/* D1338 8011AF78 C440003C */  lwc1       $f0, 0x3C($v0)
/* D133C 8011AF7C 02002021 */  addu       $a0, $s0, $zero
/* D1340 8011AF80 0C045C7E */  jal        func_race_801171F8
/* D1344 8011AF84 E4A00008 */   swc1      $f0, 0x8($a1)
/* D1348 8011AF88 08046BE5 */  j          .Lrace_8011AF94
/* D134C 8011AF8C 00000000 */   nop
.Lrace_8011AF90:
/* D1350 8011AF90 AE0205E0 */  sw         $v0, 0x5E0($s0)
.Lrace_8011AF94:
/* D1354 8011AF94 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D1358 8011AF98 30420008 */  andi       $v0, $v0, 0x8
/* D135C 8011AF9C 50400004 */  beql       $v0, $zero, .Lrace_8011AFB0
/* D1360 8011AFA0 AE1103F4 */   sw        $s1, 0x3F4($s0)
/* D1364 8011AFA4 0C047A5D */  jal        func_race_8011E974
/* D1368 8011AFA8 02002021 */   addu      $a0, $s0, $zero
/* D136C 8011AFAC AE1103F4 */  sw         $s1, 0x3F4($s0)
.Lrace_8011AFB0:
/* D1370 8011AFB0 0C0474DD */  jal        func_race_8011D374
/* D1374 8011AFB4 02002021 */   addu      $a0, $s0, $zero
.Lrace_8011AFB8:
/* D1378 8011AFB8 8E0203F0 */  lw         $v0, 0x3F0($s0)
/* D137C 8011AFBC 14400003 */  bnez       $v0, .Lrace_8011AFCC
/* D1380 8011AFC0 00000000 */   nop
/* D1384 8011AFC4 1220004B */  beqz       $s1, .Lrace_8011B0F4
/* D1388 8011AFC8 00000000 */   nop
.Lrace_8011AFCC:
/* D138C 8011AFCC 12200021 */  beqz       $s1, .Lrace_8011B054
/* D1390 8011AFD0 00000000 */   nop
/* D1394 8011AFD4 0C046D4D */  jal        func_race_8011B534
/* D1398 8011AFD8 02002021 */   addu      $a0, $s0, $zero
/* D139C 8011AFDC 02002021 */  addu       $a0, $s0, $zero
/* D13A0 8011AFE0 0C045CA0 */  jal        func_race_80117280
/* D13A4 8011AFE4 02202821 */   addu      $a1, $s1, $zero
/* D13A8 8011AFE8 0C047003 */  jal        func_race_8011C00C
/* D13AC 8011AFEC 02002021 */   addu      $a0, $s0, $zero
/* D13B0 8011AFF0 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D13B4 8011AFF4 30420008 */  andi       $v0, $v0, 0x8
/* D13B8 8011AFF8 10400004 */  beqz       $v0, .Lrace_8011B00C
/* D13BC 8011AFFC 02002021 */   addu      $a0, $s0, $zero
/* D13C0 8011B000 0C0472B8 */  jal        func_race_8011CAE0
/* D13C4 8011B004 02202821 */   addu      $a1, $s1, $zero
/* D13C8 8011B008 02002021 */  addu       $a0, $s0, $zero
.Lrace_8011B00C:
/* D13CC 8011B00C 0C047053 */  jal        func_race_8011C14C
/* D13D0 8011B010 02202821 */   addu      $a1, $s1, $zero
/* D13D4 8011B014 02002021 */  addu       $a0, $s0, $zero
/* D13D8 8011B018 0C04735A */  jal        func_race_8011CD68
/* D13DC 8011B01C 02202821 */   addu      $a1, $s1, $zero
/* D13E0 8011B020 0C047463 */  jal        func_race_8011D18C
/* D13E4 8011B024 02002021 */   addu      $a0, $s0, $zero
/* D13E8 8011B028 8E0200CC */  lw         $v0, 0xCC($s0)
/* D13EC 8011B02C 84440028 */  lh         $a0, 0x28($v0)
/* D13F0 8011B030 8C42002C */  lw         $v0, 0x2C($v0)
/* D13F4 8011B034 0040F809 */  jalr       $v0
/* D13F8 8011B038 02042021 */   addu      $a0, $s0, $a0
/* D13FC 8011B03C 260400E4 */  addiu      $a0, $s0, 0xE4
/* D1400 8011B040 26050010 */  addiu      $a1, $s0, 0x10
/* D1404 8011B044 0C0158C3 */  jal        func_8005630C
/* D1408 8011B048 2606001C */   addiu     $a2, $s0, 0x1C
/* D140C 8011B04C 0C045B7A */  jal        func_race_80116DE8
/* D1410 8011B050 02002021 */   addu      $a0, $s0, $zero
.Lrace_8011B054:
/* D1414 8011B054 8E0203F0 */  lw         $v0, 0x3F0($s0)
/* D1418 8011B058 1040001B */  beqz       $v0, .Lrace_8011B0C8
/* D141C 8011B05C 02002021 */   addu      $a0, $s0, $zero
/* D1420 8011B060 1220000B */  beqz       $s1, .Lrace_8011B090
/* D1424 8011B064 02202821 */   addu      $a1, $s1, $zero
/* D1428 8011B068 8E0606AC */  lw         $a2, 0x6AC($s0)
/* D142C 8011B06C 00063302 */  srl        $a2, $a2, 12
/* D1430 8011B070 38C60001 */  xori       $a2, $a2, 0x1
/* D1434 8011B074 0C0475EC */  jal        func_race_8011D7B0
/* D1438 8011B078 30C60001 */   andi      $a2, $a2, 0x1
/* D143C 8011B07C 8E0303F0 */  lw         $v1, 0x3F0($s0)
/* D1440 8011B080 10600003 */  beqz       $v1, .Lrace_8011B090
/* D1444 8011B084 00000000 */   nop
/* D1448 8011B088 08046BEE */  j          .Lrace_8011AFB8
/* D144C 8011B08C 00408821 */   addu      $s1, $v0, $zero
.Lrace_8011B090:
/* D1450 8011B090 0C047731 */  jal        func_race_8011DCC4
/* D1454 8011B094 02002021 */   addu      $a0, $s0, $zero
/* D1458 8011B098 0C047463 */  jal        func_race_8011D18C
/* D145C 8011B09C 02002021 */   addu      $a0, $s0, $zero
/* D1460 8011B0A0 0C0475E3 */  jal        func_race_8011D78C
/* D1464 8011B0A4 02002021 */   addu      $a0, $s0, $zero
/* D1468 8011B0A8 0C0474DD */  jal        func_race_8011D374
/* D146C 8011B0AC 02002021 */   addu      $a0, $s0, $zero
/* D1470 8011B0B0 8E0203F4 */  lw         $v0, 0x3F4($s0)
/* D1474 8011B0B4 24120001 */  addiu      $s2, $zero, 0x1
/* D1478 8011B0B8 00511023 */  subu       $v0, $v0, $s1
/* D147C 8011B0BC 00408821 */  addu       $s1, $v0, $zero
/* D1480 8011B0C0 08046BEE */  j          .Lrace_8011AFB8
/* D1484 8011B0C4 AE1103F4 */   sw        $s1, 0x3F4($s0)
.Lrace_8011B0C8:
/* D1488 8011B0C8 8E0606AC */  lw         $a2, 0x6AC($s0)
/* D148C 8011B0CC 02202821 */  addu       $a1, $s1, $zero
/* D1490 8011B0D0 00063302 */  srl        $a2, $a2, 12
/* D1494 8011B0D4 38C60001 */  xori       $a2, $a2, 0x1
/* D1498 8011B0D8 0C0475EC */  jal        func_race_8011D7B0
/* D149C 8011B0DC 30C60001 */   andi      $a2, $a2, 0x1
/* D14A0 8011B0E0 00408821 */  addu       $s1, $v0, $zero
/* D14A4 8011B0E4 1620FFB4 */  bnez       $s1, .Lrace_8011AFB8
/* D14A8 8011B0E8 00000000 */   nop
/* D14AC 8011B0EC 1240FFB2 */  beqz       $s2, .Lrace_8011AFB8
/* D14B0 8011B0F0 00000000 */   nop
.Lrace_8011B0F4:
/* D14B4 8011B0F4 12400002 */  beqz       $s2, .Lrace_8011B100
/* D14B8 8011B0F8 24020001 */   addiu     $v0, $zero, 0x1
/* D14BC 8011B0FC AE0203F0 */  sw         $v0, 0x3F0($s0)
.Lrace_8011B100:
/* D14C0 8011B100 8E020370 */  lw         $v0, 0x370($s0)
/* D14C4 8011B104 54400004 */  bnel       $v0, $zero, .Lrace_8011B118
/* D14C8 8011B108 AE0006C8 */   sw        $zero, 0x6C8($s0)
/* D14CC 8011B10C 8E0206C8 */  lw         $v0, 0x6C8($s0)
/* D14D0 8011B110 00531021 */  addu       $v0, $v0, $s3
/* D14D4 8011B114 AE0206C8 */  sw         $v0, 0x6C8($s0)
.Lrace_8011B118:
/* D14D8 8011B118 260400E4 */  addiu      $a0, $s0, 0xE4
/* D14DC 8011B11C 0C01595B */  jal        func_8005656C
/* D14E0 8011B120 27A50020 */   addiu     $a1, $sp, 0x20
/* D14E4 8011B124 8E0206D4 */  lw         $v0, 0x6D4($s0)
/* D14E8 8011B128 10400031 */  beqz       $v0, .Lrace_8011B1F0
/* D14EC 8011B12C 26030004 */   addiu     $v1, $s0, 0x4
/* D14F0 8011B130 8FA70020 */  lw         $a3, 0x20($sp)
/* D14F4 8011B134 8FA80024 */  lw         $t0, 0x24($sp)
/* D14F8 8011B138 8FA90028 */  lw         $t1, 0x28($sp)
/* D14FC 8011B13C AC470014 */  sw         $a3, 0x14($v0)
/* D1500 8011B140 AC480018 */  sw         $t0, 0x18($v0)
/* D1504 8011B144 AC49001C */  sw         $t1, 0x1C($v0)
/* D1508 8011B148 8E0206D4 */  lw         $v0, 0x6D4($s0)
/* D150C 8011B14C C6000004 */  lwc1       $f0, 0x4($s0)
/* D1510 8011B150 E4400020 */  swc1       $f0, 0x20($v0)
/* D1514 8011B154 C4600004 */  lwc1       $f0, 0x4($v1)
/* D1518 8011B158 E4400024 */  swc1       $f0, 0x24($v0)
/* D151C 8011B15C C4600008 */  lwc1       $f0, 0x8($v1)
/* D1520 8011B160 E4400028 */  swc1       $f0, 0x28($v0)
/* D1524 8011B164 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D1528 8011B168 30420400 */  andi       $v0, $v0, 0x400
/* D152C 8011B16C 10400014 */  beqz       $v0, .Lrace_8011B1C0
/* D1530 8011B170 00000000 */   nop
/* D1534 8011B174 C60006C4 */  lwc1       $f0, 0x6C4($s0)
/* D1538 8011B178 3C01800D */  lui        $at, %hi(D_race_800CE280)
/* D153C 8011B17C C422E280 */  lwc1       $f2, %lo(D_race_800CE280)($at)
/* D1540 8011B180 46020002 */  mul.s      $f0, $f0, $f2
/* D1544 8011B184 3C01800D */  lui        $at, %hi(D_race_800CE284)
/* D1548 8011B188 C424E284 */  lwc1       $f4, %lo(D_race_800CE284)($at)
/* D154C 8011B18C C602061C */  lwc1       $f2, 0x61C($s0)
/* D1550 8011B190 46022101 */  sub.s      $f4, $f4, $f2
/* D1554 8011B194 3C01800D */  lui        $at, %hi(D_race_800CE288)
/* D1558 8011B198 C422E288 */  lwc1       $f2, %lo(D_race_800CE288)($at)
/* D155C 8011B19C 46022102 */  mul.s      $f4, $f4, $f2
/* D1560 8011B1A0 3C01800D */  lui        $at, %hi(D_race_800CE28C)
/* D1564 8011B1A4 C422E28C */  lwc1       $f2, %lo(D_race_800CE28C)($at)
/* D1568 8011B1A8 46020000 */  add.s      $f0, $f0, $f2
/* D156C 8011B1AC 3C01800D */  lui        $at, %hi(D_race_800CE290)
/* D1570 8011B1B0 C422E290 */  lwc1       $f2, %lo(D_race_800CE290)($at)
/* D1574 8011B1B4 46020000 */  add.s      $f0, $f0, $f2
/* D1578 8011B1B8 08046C7A */  j          .Lrace_8011B1E8
/* D157C 8011B1BC 46040001 */   sub.s     $f0, $f0, $f4
.Lrace_8011B1C0:
/* D1580 8011B1C0 C600061C */  lwc1       $f0, 0x61C($s0)
/* D1584 8011B1C4 3C01800D */  lui        $at, %hi(D_race_800CE294)
/* D1588 8011B1C8 C422E294 */  lwc1       $f2, %lo(D_race_800CE294)($at)
/* D158C 8011B1CC 46001081 */  sub.s      $f2, $f2, $f0
/* D1590 8011B1D0 3C01800D */  lui        $at, %hi(D_race_800CE298)
/* D1594 8011B1D4 C420E298 */  lwc1       $f0, %lo(D_race_800CE298)($at)
/* D1598 8011B1D8 46001082 */  mul.s      $f2, $f2, $f0
/* D159C 8011B1DC 3C01800D */  lui        $at, %hi(D_race_800CE29C)
/* D15A0 8011B1E0 C420E29C */  lwc1       $f0, %lo(D_race_800CE29C)($at)
/* D15A4 8011B1E4 46020001 */  sub.s      $f0, $f0, $f2
.Lrace_8011B1E8:
/* D15A8 8011B1E8 8E0206D4 */  lw         $v0, 0x6D4($s0)
/* D15AC 8011B1EC E4400004 */  swc1       $f0, 0x4($v0)
.Lrace_8011B1F0:
/* D15B0 8011B1F0 8E0206D0 */  lw         $v0, 0x6D0($s0)
/* D15B4 8011B1F4 10400007 */  beqz       $v0, .Lrace_8011B214
/* D15B8 8011B1F8 02002021 */   addu      $a0, $s0, $zero
/* D15BC 8011B1FC 8FA70020 */  lw         $a3, 0x20($sp)
/* D15C0 8011B200 8FA80024 */  lw         $t0, 0x24($sp)
/* D15C4 8011B204 8FA90028 */  lw         $t1, 0x28($sp)
/* D15C8 8011B208 AC470014 */  sw         $a3, 0x14($v0)
/* D15CC 8011B20C AC480018 */  sw         $t0, 0x18($v0)
/* D15D0 8011B210 AC49001C */  sw         $t1, 0x1C($v0)
.Lrace_8011B214:
/* D15D4 8011B214 0C046C8E */  jal        func_race_8011B238
/* D15D8 8011B218 02602821 */   addu      $a1, $s3, $zero
/* D15DC 8011B21C 8FBF0040 */  lw         $ra, 0x40($sp)
/* D15E0 8011B220 8FB3003C */  lw         $s3, 0x3C($sp)
/* D15E4 8011B224 8FB20038 */  lw         $s2, 0x38($sp)
/* D15E8 8011B228 8FB10034 */  lw         $s1, 0x34($sp)
/* D15EC 8011B22C 8FB00030 */  lw         $s0, 0x30($sp)
/* D15F0 8011B230 03E00008 */  jr         $ra
/* D15F4 8011B234 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_8011B238
/* D15F8 8011B238 27BDFF90 */  addiu      $sp, $sp, -0x70
/* D15FC 8011B23C AFB3005C */  sw         $s3, 0x5C($sp)
/* D1600 8011B240 00809821 */  addu       $s3, $a0, $zero
/* D1604 8011B244 AFBF0060 */  sw         $ra, 0x60($sp)
/* D1608 8011B248 AFB20058 */  sw         $s2, 0x58($sp)
/* D160C 8011B24C AFB10054 */  sw         $s1, 0x54($sp)
/* D1610 8011B250 AFB00050 */  sw         $s0, 0x50($sp)
/* D1614 8011B254 F7B40068 */  sdc1       $f20, 0x68($sp)
/* D1618 8011B258 8E6306AC */  lw         $v1, 0x6AC($s3)
/* D161C 8011B25C 30620008 */  andi       $v0, $v1, 0x8
/* D1620 8011B260 10400004 */  beqz       $v0, .Lrace_8011B274
/* D1624 8011B264 30620400 */   andi      $v0, $v1, 0x400
/* D1628 8011B268 C660066C */  lwc1       $f0, 0x66C($s3)
/* D162C 8011B26C 08046CCC */  j          .Lrace_8011B330
/* D1630 8011B270 46000307 */   neg.s     $f12, $f0
.Lrace_8011B274:
/* D1634 8011B274 1040002D */  beqz       $v0, .Lrace_8011B32C
/* D1638 8011B278 00000000 */   nop
/* D163C 8011B27C C6620650 */  lwc1       $f2, 0x650($s3)
/* D1640 8011B280 3C01800D */  lui        $at, %hi(D_race_800CE2A0)
/* D1644 8011B284 C420E2A0 */  lwc1       $f0, %lo(D_race_800CE2A0)($at)
/* D1648 8011B288 4600103E */  c.le.s     $f2, $f0
/* D164C 8011B28C 00000000 */  nop
/* D1650 8011B290 45010007 */  bc1t       .Lrace_8011B2B0
/* D1654 8011B294 00000000 */   nop
/* D1658 8011B298 3C01800D */  lui        $at, %hi(D_race_800CE2A4)
/* D165C 8011B29C C420E2A4 */  lwc1       $f0, %lo(D_race_800CE2A4)($at)
/* D1660 8011B2A0 4602003E */  c.le.s     $f0, $f2
/* D1664 8011B2A4 00000000 */  nop
/* D1668 8011B2A8 45000020 */  bc1f       .Lrace_8011B32C
/* D166C 8011B2AC 00000000 */   nop
.Lrace_8011B2B0:
/* D1670 8011B2B0 C6640608 */  lwc1       $f4, 0x608($s3)
/* D1674 8011B2B4 3C01800D */  lui        $at, %hi(D_race_800CE2A8)
/* D1678 8011B2B8 C420E2A8 */  lwc1       $f0, %lo(D_race_800CE2A8)($at)
/* D167C 8011B2BC 46002102 */  mul.s      $f4, $f4, $f0
/* D1680 8011B2C0 3C01800D */  lui        $at, %hi(D_race_800CE2AC)
/* D1684 8011B2C4 C420E2AC */  lwc1       $f0, %lo(D_race_800CE2AC)($at)
/* D1688 8011B2C8 46020003 */  div.s      $f0, $f0, $f2
/* D168C 8011B2CC 3C01800D */  lui        $at, %hi(D_race_800CE2B0)
/* D1690 8011B2D0 C422E2B0 */  lwc1       $f2, %lo(D_race_800CE2B0)($at)
/* D1694 8011B2D4 46000007 */  neg.s      $f0, $f0
/* D1698 8011B2D8 46020002 */  mul.s      $f0, $f0, $f2
/* D169C 8011B2DC C66206C4 */  lwc1       $f2, 0x6C4($s3)
/* D16A0 8011B2E0 46020002 */  mul.s      $f0, $f0, $f2
/* D16A4 8011B2E4 C662060C */  lwc1       $f2, 0x60C($s3)
/* D16A8 8011B2E8 46022103 */  div.s      $f4, $f4, $f2
/* D16AC 8011B2EC 46040502 */  mul.s      $f20, $f0, $f4
/* D16B0 8011B2F0 3C01800D */  lui        $at, %hi(D_race_800CE2B4)
/* D16B4 8011B2F4 C420E2B4 */  lwc1       $f0, %lo(D_race_800CE2B4)($at)
/* D16B8 8011B2F8 4614003C */  c.lt.s     $f0, $f20
/* D16BC 8011B2FC 00000000 */  nop
/* D16C0 8011B300 45030008 */  bc1tl      .Lrace_8011B324
/* D16C4 8011B304 46000506 */   mov.s     $f20, $f0
/* D16C8 8011B308 3C01800D */  lui        $at, %hi(D_race_800CE2B8)
/* D16CC 8011B30C C420E2B8 */  lwc1       $f0, %lo(D_race_800CE2B8)($at)
/* D16D0 8011B310 4600A03C */  c.lt.s     $f20, $f0
/* D16D4 8011B314 00000000 */  nop
/* D16D8 8011B318 45000005 */  bc1f       .Lrace_8011B330
/* D16DC 8011B31C 4600A306 */   mov.s     $f12, $f20
/* D16E0 8011B320 46000506 */  mov.s      $f20, $f0
.Lrace_8011B324:
/* D16E4 8011B324 08046CCC */  j          .Lrace_8011B330
/* D16E8 8011B328 4600A306 */   mov.s     $f12, $f20
.Lrace_8011B32C:
/* D16EC 8011B32C 44806000 */  mtc1       $zero, $f12
.Lrace_8011B330:
/* D16F0 8011B330 C66406C0 */  lwc1       $f4, 0x6C0($s3)
/* D16F4 8011B334 4604603C */  c.lt.s     $f12, $f4
/* D16F8 8011B338 00000000 */  nop
/* D16FC 8011B33C 4500000A */  bc1f       .Lrace_8011B368
/* D1700 8011B340 00000000 */   nop
/* D1704 8011B344 3C01800D */  lui        $at, %hi(D_race_800CE2BC)
/* D1708 8011B348 C422E2BC */  lwc1       $f2, %lo(D_race_800CE2BC)($at)
/* D170C 8011B34C 44850000 */  mtc1       $a1, $f0
/* D1710 8011B350 46800020 */  cvt.s.w    $f0, $f0
/* D1714 8011B354 46020002 */  mul.s      $f0, $f0, $f2
/* D1718 8011B358 46002001 */  sub.s      $f0, $f4, $f0
/* D171C 8011B35C 460C003C */  c.lt.s     $f0, $f12
/* D1720 8011B360 08046CE6 */  j          .Lrace_8011B398
/* D1724 8011B364 E66006C0 */   swc1      $f0, 0x6C0($s3)
.Lrace_8011B368:
/* D1728 8011B368 460C203C */  c.lt.s     $f4, $f12
/* D172C 8011B36C 00000000 */  nop
/* D1730 8011B370 4500000C */  bc1f       .Lrace_8011B3A4
/* D1734 8011B374 00000000 */   nop
/* D1738 8011B378 3C01800D */  lui        $at, %hi(D_race_800CE2C0)
/* D173C 8011B37C C422E2C0 */  lwc1       $f2, %lo(D_race_800CE2C0)($at)
/* D1740 8011B380 44850000 */  mtc1       $a1, $f0
/* D1744 8011B384 46800020 */  cvt.s.w    $f0, $f0
/* D1748 8011B388 46020002 */  mul.s      $f0, $f0, $f2
/* D174C 8011B38C 46002000 */  add.s      $f0, $f4, $f0
/* D1750 8011B390 E66006C0 */  swc1       $f0, 0x6C0($s3)
/* D1754 8011B394 4600603C */  c.lt.s     $f12, $f0
.Lrace_8011B398:
/* D1758 8011B398 00000000 */  nop
/* D175C 8011B39C 45030001 */  bc1tl      .Lrace_8011B3A4
/* D1760 8011B3A0 E66C06C0 */   swc1      $f12, 0x6C0($s3)
.Lrace_8011B3A4:
/* D1764 8011B3A4 C67406C0 */  lwc1       $f20, 0x6C0($s3)
/* D1768 8011B3A8 44800000 */  mtc1       $zero, $f0
/* D176C 8011B3AC 4600A03C */  c.lt.s     $f20, $f0
/* D1770 8011B3B0 00000000 */  nop
/* D1774 8011B3B4 45030001 */  bc1tl      .Lrace_8011B3BC
/* D1778 8011B3B8 4600A507 */   neg.s     $f20, $f20
.Lrace_8011B3BC:
/* D177C 8011B3BC 4600A032 */  c.eq.s     $f20, $f0
/* D1780 8011B3C0 00000000 */  nop
/* D1784 8011B3C4 45010037 */  bc1t       .Lrace_8011B4A4
/* D1788 8011B3C8 266300E4 */   addiu     $v1, $s3, 0xE4
/* D178C 8011B3CC 266400E4 */  addiu      $a0, $s3, 0xE4
/* D1790 8011B3D0 C4800028 */  lwc1       $f0, 0x28($a0)
/* D1794 8011B3D4 E7A00010 */  swc1       $f0, 0x10($sp)
/* D1798 8011B3D8 C480002C */  lwc1       $f0, 0x2C($a0)
/* D179C 8011B3DC 27B00010 */  addiu      $s0, $sp, 0x10
/* D17A0 8011B3E0 E6000004 */  swc1       $f0, 0x4($s0)
/* D17A4 8011B3E4 C4800030 */  lwc1       $f0, 0x30($a0)
/* D17A8 8011B3E8 E6000008 */  swc1       $f0, 0x8($s0)
/* D17AC 8011B3EC C4800040 */  lwc1       $f0, 0x40($a0)
/* D17B0 8011B3F0 E7A00020 */  swc1       $f0, 0x20($sp)
/* D17B4 8011B3F4 C4800044 */  lwc1       $f0, 0x44($a0)
/* D17B8 8011B3F8 27B20040 */  addiu      $s2, $sp, 0x40
/* D17BC 8011B3FC E7A00024 */  swc1       $f0, 0x24($sp)
/* D17C0 8011B400 C4800048 */  lwc1       $f0, 0x48($a0)
/* D17C4 8011B404 02402821 */  addu       $a1, $s2, $zero
/* D17C8 8011B408 0C01595B */  jal        func_8005656C
/* D17CC 8011B40C E7A00028 */   swc1      $f0, 0x28($sp)
/* D17D0 8011B410 0C006D60 */  jal        sinf
/* D17D4 8011B414 4600A306 */   mov.s     $f12, $f20
/* D17D8 8011B418 4600A306 */  mov.s      $f12, $f20
/* D17DC 8011B41C 0C006BCC */  jal        cosf
/* D17E0 8011B420 46000506 */   mov.s     $f20, $f0
/* D17E4 8011B424 C6640368 */  lwc1       $f4, 0x368($s3)
/* D17E8 8011B428 3C01800D */  lui        $at, %hi(D_race_800CE2C4)
/* D17EC 8011B42C C422E2C4 */  lwc1       $f2, %lo(D_race_800CE2C4)($at)
/* D17F0 8011B430 27A40020 */  addiu      $a0, $sp, 0x20
/* D17F4 8011B434 46022102 */  mul.s      $f4, $f4, $f2
/* D17F8 8011B438 27B10030 */  addiu      $s1, $sp, 0x30
/* D17FC 8011B43C 02202821 */  addu       $a1, $s1, $zero
/* D1800 8011B440 4600A503 */  div.s      $f20, $f20, $f0
/* D1804 8011B444 8E6706C0 */  lw         $a3, 0x6C0($s3)
/* D1808 8011B448 4604A502 */  mul.s      $f20, $f20, $f4
/* D180C 8011B44C 0C0012FA */  jal        func_80004BE8
/* D1810 8011B450 02003021 */   addu      $a2, $s0, $zero
/* D1814 8011B454 C7A00048 */  lwc1       $f0, 0x48($sp)
/* D1818 8011B458 46140000 */  add.s      $f0, $f0, $f20
/* D181C 8011B45C E7A00048 */  swc1       $f0, 0x48($sp)
/* D1820 8011B460 8E63013C */  lw         $v1, 0x13C($s3)
/* D1824 8011B464 02002821 */  addu       $a1, $s0, $zero
/* D1828 8011B468 8C620024 */  lw         $v0, 0x24($v1)
/* D182C 8011B46C 02203021 */  addu       $a2, $s1, $zero
/* D1830 8011B470 84440080 */  lh         $a0, 0x80($v0)
/* D1834 8011B474 8C420084 */  lw         $v0, 0x84($v0)
/* D1838 8011B478 0040F809 */  jalr       $v0
/* D183C 8011B47C 00642021 */   addu      $a0, $v1, $a0
/* D1840 8011B480 8E63013C */  lw         $v1, 0x13C($s3)
/* D1844 8011B484 8C620024 */  lw         $v0, 0x24($v1)
/* D1848 8011B488 02402821 */  addu       $a1, $s2, $zero
/* D184C 8011B48C 84440018 */  lh         $a0, 0x18($v0)
/* D1850 8011B490 8C42001C */  lw         $v0, 0x1C($v0)
/* D1854 8011B494 0040F809 */  jalr       $v0
/* D1858 8011B498 00642021 */   addu      $a0, $v1, $a0
/* D185C 8011B49C 08046D45 */  j          .Lrace_8011B514
/* D1860 8011B4A0 00000000 */   nop
.Lrace_8011B4A4:
/* D1864 8011B4A4 8E62013C */  lw         $v0, 0x13C($s3)
/* D1868 8011B4A8 C4600028 */  lwc1       $f0, 0x28($v1)
/* D186C 8011B4AC 3C01800D */  lui        $at, %hi(D_race_800CE2C8)
/* D1870 8011B4B0 C422E2C8 */  lwc1       $f2, %lo(D_race_800CE2C8)($at)
/* D1874 8011B4B4 E4400028 */  swc1       $f0, 0x28($v0)
/* D1878 8011B4B8 C460002C */  lwc1       $f0, 0x2C($v1)
/* D187C 8011B4BC E440002C */  swc1       $f0, 0x2C($v0)
/* D1880 8011B4C0 C4600030 */  lwc1       $f0, 0x30($v1)
/* D1884 8011B4C4 E4400030 */  swc1       $f0, 0x30($v0)
/* D1888 8011B4C8 C4600034 */  lwc1       $f0, 0x34($v1)
/* D188C 8011B4CC E4400034 */  swc1       $f0, 0x34($v0)
/* D1890 8011B4D0 C4600038 */  lwc1       $f0, 0x38($v1)
/* D1894 8011B4D4 E4400038 */  swc1       $f0, 0x38($v0)
/* D1898 8011B4D8 C460003C */  lwc1       $f0, 0x3C($v1)
/* D189C 8011B4DC E440003C */  swc1       $f0, 0x3C($v0)
/* D18A0 8011B4E0 C4600040 */  lwc1       $f0, 0x40($v1)
/* D18A4 8011B4E4 E4400040 */  swc1       $f0, 0x40($v0)
/* D18A8 8011B4E8 C4600044 */  lwc1       $f0, 0x44($v1)
/* D18AC 8011B4EC E4400044 */  swc1       $f0, 0x44($v0)
/* D18B0 8011B4F0 C4600048 */  lwc1       $f0, 0x48($v1)
/* D18B4 8011B4F4 E4400048 */  swc1       $f0, 0x48($v0)
/* D18B8 8011B4F8 8E680130 */  lw         $t0, 0x130($s3)
/* D18BC 8011B4FC 8E690134 */  lw         $t1, 0x134($s3)
/* D18C0 8011B500 8E6A0138 */  lw         $t2, 0x138($s3)
/* D18C4 8011B504 AC48004C */  sw         $t0, 0x4C($v0)
/* D18C8 8011B508 AC490050 */  sw         $t1, 0x50($v0)
/* D18CC 8011B50C AC4A0054 */  sw         $t2, 0x54($v0)
/* D18D0 8011B510 E442000C */  swc1       $f2, 0xC($v0)
.Lrace_8011B514:
/* D18D4 8011B514 8FBF0060 */  lw         $ra, 0x60($sp)
/* D18D8 8011B518 8FB3005C */  lw         $s3, 0x5C($sp)
/* D18DC 8011B51C 8FB20058 */  lw         $s2, 0x58($sp)
/* D18E0 8011B520 8FB10054 */  lw         $s1, 0x54($sp)
/* D18E4 8011B524 8FB00050 */  lw         $s0, 0x50($sp)
/* D18E8 8011B528 D7B40068 */  ldc1       $f20, 0x68($sp)
/* D18EC 8011B52C 03E00008 */  jr         $ra
/* D18F0 8011B530 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_8011B534
/* D18F4 8011B534 27BDFF98 */  addiu      $sp, $sp, -0x68
/* D18F8 8011B538 AFB20038 */  sw         $s2, 0x38($sp)
/* D18FC 8011B53C 00809021 */  addu       $s2, $a0, $zero
/* D1900 8011B540 AFB50044 */  sw         $s5, 0x44($sp)
/* D1904 8011B544 2655035C */  addiu      $s5, $s2, 0x35C
/* D1908 8011B548 AFBF0048 */  sw         $ra, 0x48($sp)
/* D190C 8011B54C AFB40040 */  sw         $s4, 0x40($sp)
/* D1910 8011B550 AFB3003C */  sw         $s3, 0x3C($sp)
/* D1914 8011B554 AFB10034 */  sw         $s1, 0x34($sp)
/* D1918 8011B558 AFB00030 */  sw         $s0, 0x30($sp)
/* D191C 8011B55C F7B80060 */  sdc1       $f24, 0x60($sp)
/* D1920 8011B560 F7B60058 */  sdc1       $f22, 0x58($sp)
/* D1924 8011B564 F7B40050 */  sdc1       $f20, 0x50($sp)
/* D1928 8011B568 C6400164 */  lwc1       $f0, 0x164($s2)
/* D192C 8011B56C C6420160 */  lwc1       $f2, 0x160($s2)
/* D1930 8011B570 46000007 */  neg.s      $f0, $f0
/* D1934 8011B574 46020002 */  mul.s      $f0, $f0, $f2
/* D1938 8011B578 8E4206AC */  lw         $v0, 0x6AC($s2)
/* D193C 8011B57C 4480B000 */  mtc1       $zero, $f22
/* D1940 8011B580 30420001 */  andi       $v0, $v0, 0x1
/* D1944 8011B584 E6560654 */  swc1       $f22, 0x654($s2)
/* D1948 8011B588 10400018 */  beqz       $v0, .Lrace_8011B5EC
/* D194C 8011B58C E6400168 */   swc1      $f0, 0x168($s2)
/* D1950 8011B590 264200E4 */  addiu      $v0, $s2, 0xE4
/* D1954 8011B594 C4420028 */  lwc1       $f2, 0x28($v0)
/* D1958 8011B598 E7A20020 */  swc1       $f2, 0x20($sp)
/* D195C 8011B59C C446002C */  lwc1       $f6, 0x2C($v0)
/* D1960 8011B5A0 E7A60024 */  swc1       $f6, 0x24($sp)
/* D1964 8011B5A4 C4440030 */  lwc1       $f4, 0x30($v0)
/* D1968 8011B5A8 E7A40028 */  swc1       $f4, 0x28($sp)
/* D196C 8011B5AC C64005FC */  lwc1       $f0, 0x5FC($s2)
/* D1970 8011B5B0 46001082 */  mul.s      $f2, $f2, $f0
/* D1974 8011B5B4 264205FC */  addiu      $v0, $s2, 0x5FC
/* D1978 8011B5B8 C4400004 */  lwc1       $f0, 0x4($v0)
/* D197C 8011B5BC 46003182 */  mul.s      $f6, $f6, $f0
/* D1980 8011B5C0 C4400008 */  lwc1       $f0, 0x8($v0)
/* D1984 8011B5C4 46002102 */  mul.s      $f4, $f4, $f0
/* D1988 8011B5C8 46061080 */  add.s      $f2, $f2, $f6
/* D198C 8011B5CC 46041580 */  add.s      $f22, $f2, $f4
/* D1990 8011B5D0 44800000 */  mtc1       $zero, $f0
/* D1994 8011B5D4 4600B03E */  c.le.s     $f22, $f0
/* D1998 8011B5D8 00000000 */  nop
/* D199C 8011B5DC 45000003 */  bc1f       .Lrace_8011B5EC
/* D19A0 8011B5E0 00000000 */   nop
/* D19A4 8011B5E4 0C047851 */  jal        func_race_8011E144
/* D19A8 8011B5E8 00000000 */   nop
.Lrace_8011B5EC:
/* D19AC 8011B5EC 8E420370 */  lw         $v0, 0x370($s2)
/* D19B0 8011B5F0 14400030 */  bnez       $v0, .Lrace_8011B6B4
/* D19B4 8011B5F4 02402021 */   addu      $a0, $s2, $zero
/* D19B8 8011B5F8 AFA00010 */  sw         $zero, 0x10($sp)
/* D19BC 8011B5FC AFA00014 */  sw         $zero, 0x14($sp)
/* D19C0 8011B600 C6420168 */  lwc1       $f2, 0x168($s2)
/* D19C4 8011B604 3C01800D */  lui        $at, %hi(D_race_800CE2CC)
/* D19C8 8011B608 C420E2CC */  lwc1       $f0, %lo(D_race_800CE2CC)($at)
/* D19CC 8011B60C 46001082 */  mul.s      $f2, $f2, $f0
/* D19D0 8011B610 27A50010 */  addiu      $a1, $sp, 0x10
/* D19D4 8011B614 0C045BAE */  jal        func_race_80116EB8
/* D19D8 8011B618 E7A20018 */   swc1      $f2, 0x18($sp)
/* D19DC 8011B61C C642062C */  lwc1       $f2, 0x62C($s2)
/* D19E0 8011B620 C6400160 */  lwc1       $f0, 0x160($s2)
/* D19E4 8011B624 46001202 */  mul.s      $f8, $f2, $f0
/* D19E8 8011B628 C640016C */  lwc1       $f0, 0x16C($s2)
/* D19EC 8011B62C 46080002 */  mul.s      $f0, $f0, $f8
/* D19F0 8011B630 2642016C */  addiu      $v0, $s2, 0x16C
/* D19F4 8011B634 E7A00010 */  swc1       $f0, 0x10($sp)
/* D19F8 8011B638 C4400004 */  lwc1       $f0, 0x4($v0)
/* D19FC 8011B63C 46080002 */  mul.s      $f0, $f0, $f8
/* D1A00 8011B640 27A50010 */  addiu      $a1, $sp, 0x10
/* D1A04 8011B644 E4A00004 */  swc1       $f0, 0x4($a1)
/* D1A08 8011B648 C4400008 */  lwc1       $f0, 0x8($v0)
/* D1A0C 8011B64C 46080002 */  mul.s      $f0, $f0, $f8
/* D1A10 8011B650 E4A00008 */  swc1       $f0, 0x8($a1)
/* D1A14 8011B654 C6400168 */  lwc1       $f0, 0x168($s2)
/* D1A18 8011B658 C7A20018 */  lwc1       $f2, 0x18($sp)
/* D1A1C 8011B65C 46000207 */  neg.s      $f8, $f0
/* D1A20 8011B660 4602403C */  c.lt.s     $f8, $f2
/* D1A24 8011B664 00000000 */  nop
/* D1A28 8011B668 45030001 */  bc1tl      .Lrace_8011B670
/* D1A2C 8011B66C E7A80018 */   swc1      $f8, 0x18($sp)
.Lrace_8011B670:
/* D1A30 8011B670 0C045BAE */  jal        func_race_80116EB8
/* D1A34 8011B674 02402021 */   addu      $a0, $s2, $zero
/* D1A38 8011B678 C6420650 */  lwc1       $f2, 0x650($s2)
/* D1A3C 8011B67C 44800000 */  mtc1       $zero, $f0
/* D1A40 8011B680 46001032 */  c.eq.s     $f2, $f0
/* D1A44 8011B684 00000000 */  nop
/* D1A48 8011B688 4501012A */  bc1t       .Lrace_8011BB34
/* D1A4C 8011B68C 00000000 */   nop
/* D1A50 8011B690 8E4206AC */  lw         $v0, 0x6AC($s2)
/* D1A54 8011B694 30420800 */  andi       $v0, $v0, 0x800
/* D1A58 8011B698 14400126 */  bnez       $v0, .Lrace_8011BB34
/* D1A5C 8011B69C 02402021 */   addu      $a0, $s2, $zero
/* D1A60 8011B6A0 C640061C */  lwc1       $f0, 0x61C($s2)
/* D1A64 8011B6A4 46020003 */  div.s      $f0, $f0, $f2
/* D1A68 8011B6A8 44050000 */  mfc1       $a1, $f0
/* D1A6C 8011B6AC 08046EB7 */  j          .Lrace_8011BADC
/* D1A70 8011B6B0 00000000 */   nop
.Lrace_8011B6B4:
/* D1A74 8011B6B4 0C047AB5 */  jal        func_race_8011EAD4
/* D1A78 8011B6B8 02402021 */   addu      $a0, $s2, $zero
/* D1A7C 8011B6BC 02402021 */  addu       $a0, $s2, $zero
/* D1A80 8011B6C0 0C047AC5 */  jal        func_race_8011EB14
/* D1A84 8011B6C4 46000506 */   mov.s     $f20, $f0
/* D1A88 8011B6C8 C6460184 */  lwc1       $f6, 0x184($s2)
/* D1A8C 8011B6CC 46063182 */  mul.s      $f6, $f6, $f6
/* D1A90 8011B6D0 26500184 */  addiu      $s0, $s2, 0x184
/* D1A94 8011B6D4 C6040004 */  lwc1       $f4, 0x4($s0)
/* D1A98 8011B6D8 46042102 */  mul.s      $f4, $f4, $f4
/* D1A9C 8011B6DC C6020008 */  lwc1       $f2, 0x8($s0)
/* D1AA0 8011B6E0 46021082 */  mul.s      $f2, $f2, $f2
/* D1AA4 8011B6E4 46043180 */  add.s      $f6, $f6, $f4
/* D1AA8 8011B6E8 46023300 */  add.s      $f12, $f6, $f2
/* D1AAC 8011B6EC 46006104 */  sqrt.s     $f4, $f12
/* D1AB0 8011B6F0 46042032 */  c.eq.s     $f4, $f4
/* D1AB4 8011B6F4 00000000 */  nop
/* D1AB8 8011B6F8 45010004 */  bc1t       .Lrace_8011B70C
/* D1ABC 8011B6FC 46000606 */   mov.s     $f24, $f0
/* D1AC0 8011B700 0C006BC8 */  jal        sqrt
/* D1AC4 8011B704 00000000 */   nop
/* D1AC8 8011B708 46000106 */  mov.s      $f4, $f0
.Lrace_8011B70C:
/* D1ACC 8011B70C C6400160 */  lwc1       $f0, 0x160($s2)
/* D1AD0 8011B710 C6420164 */  lwc1       $f2, 0x164($s2)
/* D1AD4 8011B714 46020002 */  mul.s      $f0, $f0, $f2
/* D1AD8 8011B718 00000000 */  nop
/* D1ADC 8011B71C 4600A002 */  mul.s      $f0, $f20, $f0
/* D1AE0 8011B720 4604003C */  c.lt.s     $f0, $f4
/* D1AE4 8011B724 00000000 */  nop
/* D1AE8 8011B728 45000003 */  bc1f       .Lrace_8011B738
/* D1AEC 8011B72C 02402021 */   addu      $a0, $s2, $zero
/* D1AF0 8011B730 0C045BAE */  jal        func_race_80116EB8
/* D1AF4 8011B734 02002821 */   addu      $a1, $s0, $zero
.Lrace_8011B738:
/* D1AF8 8011B738 8E4205DC */  lw         $v0, 0x5DC($s2)
/* D1AFC 8011B73C 14400022 */  bnez       $v0, .Lrace_8011B7C8
/* D1B00 8011B740 00000000 */   nop
/* D1B04 8011B744 8E4205E0 */  lw         $v0, 0x5E0($s2)
/* D1B08 8011B748 1440001F */  bnez       $v0, .Lrace_8011B7C8
/* D1B0C 8011B74C 3C02800D */   lui       $v0, %hi(D_race_800CE49C)
/* D1B10 8011B750 2650019C */  addiu      $s0, $s2, 0x19C
/* D1B14 8011B754 0000A021 */  addu       $s4, $zero, $zero
/* D1B18 8011B758 2453E49C */  addiu      $s3, $v0, %lo(D_race_800CE49C)
/* D1B1C 8011B75C 265101A8 */  addiu      $s1, $s2, 0x1A8
.Lrace_8011B760:
/* D1B20 8011B760 8E22003C */  lw         $v0, 0x3C($s1)
/* D1B24 8011B764 30420001 */  andi       $v0, $v0, 0x1
/* D1B28 8011B768 50400012 */  beql       $v0, $zero, .Lrace_8011B7B4
/* D1B2C 8011B76C 26310070 */   addiu     $s1, $s1, 0x70
/* D1B30 8011B770 8E420370 */  lw         $v0, 0x370($s2)
/* D1B34 8011B774 2C420003 */  sltiu      $v0, $v0, 0x3
/* D1B38 8011B778 10400004 */  beqz       $v0, .Lrace_8011B78C
/* D1B3C 8011B77C 02402021 */   addu      $a0, $s2, $zero
/* D1B40 8011B780 02002821 */  addu       $a1, $s0, $zero
/* D1B44 8011B784 0C045BBB */  jal        func_race_80116EEC
/* D1B48 8011B788 02203021 */   addu      $a2, $s1, $zero
.Lrace_8011B78C:
/* D1B4C 8011B78C 02402021 */  addu       $a0, $s2, $zero
/* D1B50 8011B790 8E620000 */  lw         $v0, 0x0($s3)
/* D1B54 8011B794 26450178 */  addiu      $a1, $s2, 0x178
/* D1B58 8011B798 000230C0 */  sll        $a2, $v0, 3
/* D1B5C 8011B79C 00C23023 */  subu       $a2, $a2, $v0
/* D1B60 8011B7A0 00063100 */  sll        $a2, $a2, 4
/* D1B64 8011B7A4 00D23021 */  addu       $a2, $a2, $s2
/* D1B68 8011B7A8 0C045C2E */  jal        func_race_801170B8
/* D1B6C 8011B7AC 24C601A8 */   addiu     $a2, $a2, 0x1A8
/* D1B70 8011B7B0 26310070 */  addiu      $s1, $s1, 0x70
.Lrace_8011B7B4:
/* D1B74 8011B7B4 26100070 */  addiu      $s0, $s0, 0x70
/* D1B78 8011B7B8 26940001 */  addiu      $s4, $s4, 0x1
/* D1B7C 8011B7BC 2E820004 */  sltiu      $v0, $s4, 0x4
/* D1B80 8011B7C0 1440FFE7 */  bnez       $v0, .Lrace_8011B760
/* D1B84 8011B7C4 26730004 */   addiu     $s3, $s3, 0x4
.Lrace_8011B7C8:
/* D1B88 8011B7C8 8E4306AC */  lw         $v1, 0x6AC($s2)
/* D1B8C 8011B7CC 30620002 */  andi       $v0, $v1, 0x2
/* D1B90 8011B7D0 14400004 */  bnez       $v0, .Lrace_8011B7E4
/* D1B94 8011B7D4 00002021 */   addu      $a0, $zero, $zero
/* D1B98 8011B7D8 30620001 */  andi       $v0, $v1, 0x1
/* D1B9C 8011B7DC 10400002 */  beqz       $v0, .Lrace_8011B7E8
/* D1BA0 8011B7E0 00000000 */   nop
.Lrace_8011B7E4:
/* D1BA4 8011B7E4 24040001 */  addiu      $a0, $zero, 0x1
.Lrace_8011B7E8:
/* D1BA8 8011B7E8 1080001A */  beqz       $a0, .Lrace_8011B854
/* D1BAC 8011B7EC 264205FC */   addiu     $v0, $s2, 0x5FC
/* D1BB0 8011B7F0 C6400160 */  lwc1       $f0, 0x160($s2)
/* D1BB4 8011B7F4 C6420164 */  lwc1       $f2, 0x164($s2)
/* D1BB8 8011B7F8 46020002 */  mul.s      $f0, $f0, $f2
/* D1BBC 8011B7FC 00000000 */  nop
/* D1BC0 8011B800 4600C002 */  mul.s      $f0, $f24, $f0
/* D1BC4 8011B804 C64206BC */  lwc1       $f2, 0x6BC($s2)
/* D1BC8 8011B808 46020002 */  mul.s      $f0, $f0, $f2
/* D1BCC 8011B80C C64205FC */  lwc1       $f2, 0x5FC($s2)
/* D1BD0 8011B810 46000207 */  neg.s      $f8, $f0
/* D1BD4 8011B814 46081082 */  mul.s      $f2, $f2, $f8
/* D1BD8 8011B818 E7A20010 */  swc1       $f2, 0x10($sp)
/* D1BDC 8011B81C C4400004 */  lwc1       $f0, 0x4($v0)
/* D1BE0 8011B820 46080002 */  mul.s      $f0, $f0, $f8
/* D1BE4 8011B824 27A50010 */  addiu      $a1, $sp, 0x10
/* D1BE8 8011B828 E4A00004 */  swc1       $f0, 0x4($a1)
/* D1BEC 8011B82C C4400008 */  lwc1       $f0, 0x8($v0)
/* D1BF0 8011B830 46080002 */  mul.s      $f0, $f0, $f8
/* D1BF4 8011B834 02402021 */  addu       $a0, $s2, $zero
/* D1BF8 8011B838 0C045BAE */  jal        func_race_80116EB8
/* D1BFC 8011B83C E4A00008 */   swc1      $f0, 0x8($a1)
/* D1C00 8011B840 C64206BC */  lwc1       $f2, 0x6BC($s2)
/* D1C04 8011B844 3C01800D */  lui        $at, %hi(D_race_800CE2D0)
/* D1C08 8011B848 C420E2D0 */  lwc1       $f0, %lo(D_race_800CE2D0)($at)
/* D1C0C 8011B84C 08046E17 */  j          .Lrace_8011B85C
/* D1C10 8011B850 46020101 */   sub.s     $f4, $f0, $f2
.Lrace_8011B854:
/* D1C14 8011B854 3C01800D */  lui        $at, %hi(D_race_800CE2D4)
/* D1C18 8011B858 C424E2D4 */  lwc1       $f4, %lo(D_race_800CE2D4)($at)
.Lrace_8011B85C:
/* D1C1C 8011B85C 8E4406AC */  lw         $a0, 0x6AC($s2)
/* D1C20 8011B860 30820002 */  andi       $v0, $a0, 0x2
/* D1C24 8011B864 14400003 */  bnez       $v0, .Lrace_8011B874
/* D1C28 8011B868 00001821 */   addu      $v1, $zero, $zero
/* D1C2C 8011B86C 30820800 */  andi       $v0, $a0, 0x800
/* D1C30 8011B870 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_8011B874:
/* D1C34 8011B874 1060009D */  beqz       $v1, .Lrace_8011BAEC
/* D1C38 8011B878 26420620 */   addiu     $v0, $s2, 0x620
/* D1C3C 8011B87C C64000C4 */  lwc1       $f0, 0xC4($s2)
/* D1C40 8011B880 3C01800D */  lui        $at, %hi(D_race_800CE2D8)
/* D1C44 8011B884 C422E2D8 */  lwc1       $f2, %lo(D_race_800CE2D8)($at)
/* D1C48 8011B888 46020002 */  mul.s      $f0, $f0, $f2
/* D1C4C 8011B88C 00000000 */  nop
/* D1C50 8011B890 46040102 */  mul.s      $f4, $f0, $f4
/* D1C54 8011B894 C6400620 */  lwc1       $f0, 0x620($s2)
/* D1C58 8011B898 46040002 */  mul.s      $f0, $f0, $f4
/* D1C5C 8011B89C E7A00010 */  swc1       $f0, 0x10($sp)
/* D1C60 8011B8A0 C4400004 */  lwc1       $f0, 0x4($v0)
/* D1C64 8011B8A4 46040002 */  mul.s      $f0, $f0, $f4
/* D1C68 8011B8A8 27B00010 */  addiu      $s0, $sp, 0x10
/* D1C6C 8011B8AC E6000004 */  swc1       $f0, 0x4($s0)
/* D1C70 8011B8B0 C4400008 */  lwc1       $f0, 0x8($v0)
/* D1C74 8011B8B4 46040002 */  mul.s      $f0, $f0, $f4
/* D1C78 8011B8B8 02402021 */  addu       $a0, $s2, $zero
/* D1C7C 8011B8BC 02002821 */  addu       $a1, $s0, $zero
/* D1C80 8011B8C0 0C045BAE */  jal        func_race_80116EB8
/* D1C84 8011B8C4 E6000008 */   swc1      $f0, 0x8($s0)
/* D1C88 8011B8C8 C642062C */  lwc1       $f2, 0x62C($s2)
/* D1C8C 8011B8CC 44800000 */  mtc1       $zero, $f0
/* D1C90 8011B8D0 46001032 */  c.eq.s     $f2, $f0
/* D1C94 8011B8D4 00000000 */  nop
/* D1C98 8011B8D8 45010026 */  bc1t       .Lrace_8011B974
/* D1C9C 8011B8DC 26420610 */   addiu     $v0, $s2, 0x610
/* D1CA0 8011B8E0 8E420370 */  lw         $v0, 0x370($s2)
/* D1CA4 8011B8E4 C6400160 */  lwc1       $f0, 0x160($s2)
/* D1CA8 8011B8E8 2C420003 */  sltiu      $v0, $v0, 0x3
/* D1CAC 8011B8EC 46001202 */  mul.s      $f8, $f2, $f0
/* D1CB0 8011B8F0 14400012 */  bnez       $v0, .Lrace_8011B93C
/* D1CB4 8011B8F4 00000000 */   nop
/* D1CB8 8011B8F8 8E4206AC */  lw         $v0, 0x6AC($s2)
/* D1CBC 8011B8FC 30420001 */  andi       $v0, $v0, 0x1
/* D1CC0 8011B900 1440000E */  bnez       $v0, .Lrace_8011B93C
/* D1CC4 8011B904 264200E4 */   addiu     $v0, $s2, 0xE4
/* D1CC8 8011B908 C4400028 */  lwc1       $f0, 0x28($v0)
/* D1CCC 8011B90C 46080182 */  mul.s      $f6, $f0, $f8
/* D1CD0 8011B910 E7A00020 */  swc1       $f0, 0x20($sp)
/* D1CD4 8011B914 C440002C */  lwc1       $f0, 0x2C($v0)
/* D1CD8 8011B918 46080102 */  mul.s      $f4, $f0, $f8
/* D1CDC 8011B91C E7A00024 */  swc1       $f0, 0x24($sp)
/* D1CE0 8011B920 C4400030 */  lwc1       $f0, 0x30($v0)
/* D1CE4 8011B924 46080082 */  mul.s      $f2, $f0, $f8
/* D1CE8 8011B928 E7A00028 */  swc1       $f0, 0x28($sp)
/* D1CEC 8011B92C E7A60010 */  swc1       $f6, 0x10($sp)
/* D1CF0 8011B930 E6040004 */  swc1       $f4, 0x4($s0)
/* D1CF4 8011B934 08046E5A */  j          .Lrace_8011B968
/* D1CF8 8011B938 E6020008 */   swc1      $f2, 0x8($s0)
.Lrace_8011B93C:
/* D1CFC 8011B93C C640016C */  lwc1       $f0, 0x16C($s2)
/* D1D00 8011B940 46080002 */  mul.s      $f0, $f0, $f8
/* D1D04 8011B944 2643016C */  addiu      $v1, $s2, 0x16C
/* D1D08 8011B948 E7A00010 */  swc1       $f0, 0x10($sp)
/* D1D0C 8011B94C C4600004 */  lwc1       $f0, 0x4($v1)
/* D1D10 8011B950 46080002 */  mul.s      $f0, $f0, $f8
/* D1D14 8011B954 27A20010 */  addiu      $v0, $sp, 0x10
/* D1D18 8011B958 E4400004 */  swc1       $f0, 0x4($v0)
/* D1D1C 8011B95C C4600008 */  lwc1       $f0, 0x8($v1)
/* D1D20 8011B960 46080002 */  mul.s      $f0, $f0, $f8
/* D1D24 8011B964 E4400008 */  swc1       $f0, 0x8($v0)
.Lrace_8011B968:
/* D1D28 8011B968 02402021 */  addu       $a0, $s2, $zero
/* D1D2C 8011B96C 08046E6C */  j          .Lrace_8011B9B0
/* D1D30 8011B970 27A50010 */   addiu     $a1, $sp, 0x10
.Lrace_8011B974:
/* D1D34 8011B974 C64200C4 */  lwc1       $f2, 0xC4($s2)
/* D1D38 8011B978 3C01800D */  lui        $at, %hi(D_race_800CE2DC)
/* D1D3C 8011B97C C420E2DC */  lwc1       $f0, %lo(D_race_800CE2DC)($at)
/* D1D40 8011B980 46001102 */  mul.s      $f4, $f2, $f0
/* D1D44 8011B984 C6400610 */  lwc1       $f0, 0x610($s2)
/* D1D48 8011B988 46040002 */  mul.s      $f0, $f0, $f4
/* D1D4C 8011B98C E7A00010 */  swc1       $f0, 0x10($sp)
/* D1D50 8011B990 C4400004 */  lwc1       $f0, 0x4($v0)
/* D1D54 8011B994 46040002 */  mul.s      $f0, $f0, $f4
/* D1D58 8011B998 E6000004 */  swc1       $f0, 0x4($s0)
/* D1D5C 8011B99C C4400008 */  lwc1       $f0, 0x8($v0)
/* D1D60 8011B9A0 46040002 */  mul.s      $f0, $f0, $f4
/* D1D64 8011B9A4 02402021 */  addu       $a0, $s2, $zero
/* D1D68 8011B9A8 02002821 */  addu       $a1, $s0, $zero
/* D1D6C 8011B9AC E4A00008 */  swc1       $f0, 0x8($a1)
.Lrace_8011B9B0:
/* D1D70 8011B9B0 0C045BAE */  jal        func_race_80116EB8
/* D1D74 8011B9B4 00000000 */   nop
/* D1D78 8011B9B8 C6400650 */  lwc1       $f0, 0x650($s2)
/* D1D7C 8011B9BC 4480A000 */  mtc1       $zero, $f20
/* D1D80 8011B9C0 46140032 */  c.eq.s     $f0, $f20
/* D1D84 8011B9C4 00000000 */  nop
/* D1D88 8011B9C8 4501005A */  bc1t       .Lrace_8011BB34
/* D1D8C 8011B9CC 27A40010 */   addiu     $a0, $sp, 0x10
/* D1D90 8011B9D0 C6400170 */  lwc1       $f0, 0x170($s2)
/* D1D94 8011B9D4 46000007 */  neg.s      $f0, $f0
/* D1D98 8011B9D8 E7A00010 */  swc1       $f0, 0x10($sp)
/* D1D9C 8011B9DC C640016C */  lwc1       $f0, 0x16C($s2)
/* D1DA0 8011B9E0 00802821 */  addu       $a1, $a0, $zero
/* D1DA4 8011B9E4 E7B40018 */  swc1       $f20, 0x18($sp)
/* D1DA8 8011B9E8 0C000F26 */  jal        func_80003C98
/* D1DAC 8011B9EC E7A00014 */   swc1      $f0, 0x14($sp)
/* D1DB0 8011B9F0 C642061C */  lwc1       $f2, 0x61C($s2)
/* D1DB4 8011B9F4 C64000C4 */  lwc1       $f0, 0xC4($s2)
/* D1DB8 8011B9F8 46001002 */  mul.s      $f0, $f2, $f0
/* D1DBC 8011B9FC 00000000 */  nop
/* D1DC0 8011BA00 46020202 */  mul.s      $f8, $f0, $f2
/* D1DC4 8011BA04 C6400650 */  lwc1       $f0, 0x650($s2)
/* D1DC8 8011BA08 46004003 */  div.s      $f0, $f8, $f0
/* D1DCC 8011BA0C E640064C */  swc1       $f0, 0x64C($s2)
/* D1DD0 8011BA10 C7A60010 */  lwc1       $f6, 0x10($sp)
/* D1DD4 8011BA14 46003182 */  mul.s      $f6, $f6, $f0
/* D1DD8 8011BA18 27A50010 */  addiu      $a1, $sp, 0x10
/* D1DDC 8011BA1C C4A40004 */  lwc1       $f4, 0x4($a1)
/* D1DE0 8011BA20 46002102 */  mul.s      $f4, $f4, $f0
/* D1DE4 8011BA24 C4A20008 */  lwc1       $f2, 0x8($a1)
/* D1DE8 8011BA28 46001082 */  mul.s      $f2, $f2, $f0
/* D1DEC 8011BA2C 02402021 */  addu       $a0, $s2, $zero
/* D1DF0 8011BA30 E7A60010 */  swc1       $f6, 0x10($sp)
/* D1DF4 8011BA34 E4A40004 */  swc1       $f4, 0x4($a1)
/* D1DF8 8011BA38 0C045BAE */  jal        func_race_80116EB8
/* D1DFC 8011BA3C E4A20008 */   swc1      $f2, 0x8($a1)
/* D1E00 8011BA40 8E4206AC */  lw         $v0, 0x6AC($s2)
/* D1E04 8011BA44 30420001 */  andi       $v0, $v0, 0x1
/* D1E08 8011BA48 1040000D */  beqz       $v0, .Lrace_8011BA80
/* D1E0C 8011BA4C 00000000 */   nop
/* D1E10 8011BA50 C64006B4 */  lwc1       $f0, 0x6B4($s2)
/* D1E14 8011BA54 4616003E */  c.le.s     $f0, $f22
/* D1E18 8011BA58 00000000 */  nop
/* D1E1C 8011BA5C 4500001D */  bc1f       .Lrace_8011BAD4
/* D1E20 8011BA60 4600A106 */   mov.s     $f4, $f20
/* D1E24 8011BA64 C640061C */  lwc1       $f0, 0x61C($s2)
/* D1E28 8011BA68 C6420650 */  lwc1       $f2, 0x650($s2)
/* D1E2C 8011BA6C C64406B0 */  lwc1       $f4, 0x6B0($s2)
/* D1E30 8011BA70 46020003 */  div.s      $f0, $f0, $f2
/* D1E34 8011BA74 46002102 */  mul.s      $f4, $f4, $f0
/* D1E38 8011BA78 08046EB5 */  j          .Lrace_8011BAD4
/* D1E3C 8011BA7C E6400654 */   swc1      $f0, 0x654($s2)
.Lrace_8011BA80:
/* D1E40 8011BA80 C642061C */  lwc1       $f2, 0x61C($s2)
/* D1E44 8011BA84 3C01800D */  lui        $at, %hi(D_race_800CE2E0)
/* D1E48 8011BA88 C424E2E0 */  lwc1       $f4, %lo(D_race_800CE2E0)($at)
/* D1E4C 8011BA8C 4604103C */  c.lt.s     $f2, $f4
/* D1E50 8011BA90 00000000 */  nop
/* D1E54 8011BA94 4500000A */  bc1f       .Lrace_8011BAC0
/* D1E58 8011BA98 00000000 */   nop
/* D1E5C 8011BA9C 3C01800D */  lui        $at, %hi(D_race_800CE2E4)
/* D1E60 8011BAA0 C420E2E4 */  lwc1       $f0, %lo(D_race_800CE2E4)($at)
/* D1E64 8011BAA4 4602003C */  c.lt.s     $f0, $f2
/* D1E68 8011BAA8 00000000 */  nop
/* D1E6C 8011BAAC 45000004 */  bc1f       .Lrace_8011BAC0
/* D1E70 8011BAB0 00000000 */   nop
/* D1E74 8011BAB4 C6400650 */  lwc1       $f0, 0x650($s2)
/* D1E78 8011BAB8 08046EB3 */  j          .Lrace_8011BACC
/* D1E7C 8011BABC 46002003 */   div.s     $f0, $f4, $f0
.Lrace_8011BAC0:
/* D1E80 8011BAC0 C640061C */  lwc1       $f0, 0x61C($s2)
/* D1E84 8011BAC4 C6420650 */  lwc1       $f2, 0x650($s2)
/* D1E88 8011BAC8 46020003 */  div.s      $f0, $f0, $f2
.Lrace_8011BACC:
/* D1E8C 8011BACC 46000106 */  mov.s      $f4, $f0
/* D1E90 8011BAD0 E6440654 */  swc1       $f4, 0x654($s2)
.Lrace_8011BAD4:
/* D1E94 8011BAD4 02402021 */  addu       $a0, $s2, $zero
/* D1E98 8011BAD8 44052000 */  mfc1       $a1, $f4
.Lrace_8011BADC:
/* D1E9C 8011BADC 0C046F83 */  jal        func_race_8011BE0C
/* D1EA0 8011BAE0 240600C8 */   addiu     $a2, $zero, 0xC8
/* D1EA4 8011BAE4 08046ECD */  j          .Lrace_8011BB34
/* D1EA8 8011BAE8 00000000 */   nop
.Lrace_8011BAEC:
/* D1EAC 8011BAEC C64000C4 */  lwc1       $f0, 0xC4($s2)
/* D1EB0 8011BAF0 3C01800D */  lui        $at, %hi(D_race_800CE2E8)
/* D1EB4 8011BAF4 C422E2E8 */  lwc1       $f2, %lo(D_race_800CE2E8)($at)
/* D1EB8 8011BAF8 46020002 */  mul.s      $f0, $f0, $f2
/* D1EBC 8011BAFC 00000000 */  nop
/* D1EC0 8011BB00 46040102 */  mul.s      $f4, $f0, $f4
/* D1EC4 8011BB04 C6400620 */  lwc1       $f0, 0x620($s2)
/* D1EC8 8011BB08 46040002 */  mul.s      $f0, $f0, $f4
/* D1ECC 8011BB0C E7A00010 */  swc1       $f0, 0x10($sp)
/* D1ED0 8011BB10 C4400004 */  lwc1       $f0, 0x4($v0)
/* D1ED4 8011BB14 46040002 */  mul.s      $f0, $f0, $f4
/* D1ED8 8011BB18 27A50010 */  addiu      $a1, $sp, 0x10
/* D1EDC 8011BB1C E4A00004 */  swc1       $f0, 0x4($a1)
/* D1EE0 8011BB20 C4400008 */  lwc1       $f0, 0x8($v0)
/* D1EE4 8011BB24 46040002 */  mul.s      $f0, $f0, $f4
/* D1EE8 8011BB28 02402021 */  addu       $a0, $s2, $zero
/* D1EEC 8011BB2C 0C045BAE */  jal        func_race_80116EB8
/* D1EF0 8011BB30 E4A00008 */   swc1      $f0, 0x8($a1)
.Lrace_8011BB34:
/* D1EF4 8011BB34 8E4406AC */  lw         $a0, 0x6AC($s2)
/* D1EF8 8011BB38 30820008 */  andi       $v0, $a0, 0x8
/* D1EFC 8011BB3C 14400003 */  bnez       $v0, .Lrace_8011BB4C
/* D1F00 8011BB40 00001821 */   addu      $v1, $zero, $zero
/* D1F04 8011BB44 30820080 */  andi       $v0, $a0, 0x80
/* D1F08 8011BB48 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_8011BB4C:
/* D1F0C 8011BB4C 10600028 */  beqz       $v1, .Lrace_8011BBF0
/* D1F10 8011BB50 2650019C */   addiu     $s0, $s2, 0x19C
/* D1F14 8011BB54 27A40010 */  addiu      $a0, $sp, 0x10
/* D1F18 8011BB58 44800000 */  mtc1       $zero, $f0
/* D1F1C 8011BB5C 26430208 */  addiu      $v1, $s2, 0x208
/* D1F20 8011BB60 E7A00018 */  swc1       $f0, 0x18($sp)
/* D1F24 8011BB64 E7A00014 */  swc1       $f0, 0x14($sp)
/* D1F28 8011BB68 E7A00010 */  swc1       $f0, 0x10($sp)
.Lrace_8011BB6C:
/* D1F2C 8011BB6C 0215102B */  sltu       $v0, $s0, $s5
/* D1F30 8011BB70 1040000F */  beqz       $v0, .Lrace_8011BBB0
/* D1F34 8011BB74 26100070 */   addiu     $s0, $s0, 0x70
/* D1F38 8011BB78 C7A00010 */  lwc1       $f0, 0x10($sp)
/* D1F3C 8011BB7C C462FFF8 */  lwc1       $f2, -0x8($v1)
/* D1F40 8011BB80 46020000 */  add.s      $f0, $f0, $f2
/* D1F44 8011BB84 E7A00010 */  swc1       $f0, 0x10($sp)
/* D1F48 8011BB88 C4800004 */  lwc1       $f0, 0x4($a0)
/* D1F4C 8011BB8C C462FFFC */  lwc1       $f2, -0x4($v1)
/* D1F50 8011BB90 46020000 */  add.s      $f0, $f0, $f2
/* D1F54 8011BB94 C4820008 */  lwc1       $f2, 0x8($a0)
/* D1F58 8011BB98 E4800004 */  swc1       $f0, 0x4($a0)
/* D1F5C 8011BB9C C4600000 */  lwc1       $f0, 0x0($v1)
/* D1F60 8011BBA0 46001080 */  add.s      $f2, $f2, $f0
/* D1F64 8011BBA4 24630070 */  addiu      $v1, $v1, 0x70
/* D1F68 8011BBA8 08046EDB */  j          .Lrace_8011BB6C
/* D1F6C 8011BBAC E4820008 */   swc1      $f2, 0x8($a0)
.Lrace_8011BBB0:
/* D1F70 8011BBB0 C6420160 */  lwc1       $f2, 0x160($s2)
/* D1F74 8011BBB4 3C01800D */  lui        $at, %hi(D_race_800CE2EC)
/* D1F78 8011BBB8 C420E2EC */  lwc1       $f0, %lo(D_race_800CE2EC)($at)
/* D1F7C 8011BBBC 46001102 */  mul.s      $f4, $f2, $f0
/* D1F80 8011BBC0 C7A00010 */  lwc1       $f0, 0x10($sp)
/* D1F84 8011BBC4 46040002 */  mul.s      $f0, $f0, $f4
/* D1F88 8011BBC8 27A50010 */  addiu      $a1, $sp, 0x10
/* D1F8C 8011BBCC E7A00010 */  swc1       $f0, 0x10($sp)
/* D1F90 8011BBD0 C4A20004 */  lwc1       $f2, 0x4($a1)
/* D1F94 8011BBD4 46041082 */  mul.s      $f2, $f2, $f4
/* D1F98 8011BBD8 C4A00008 */  lwc1       $f0, 0x8($a1)
/* D1F9C 8011BBDC 46040002 */  mul.s      $f0, $f0, $f4
/* D1FA0 8011BBE0 02402021 */  addu       $a0, $s2, $zero
/* D1FA4 8011BBE4 E4A20004 */  swc1       $f2, 0x4($a1)
/* D1FA8 8011BBE8 0C045BAE */  jal        func_race_80116EB8
/* D1FAC 8011BBEC E4A00008 */   swc1      $f0, 0x8($a1)
.Lrace_8011BBF0:
/* D1FB0 8011BBF0 8E4206AC */  lw         $v0, 0x6AC($s2)
/* D1FB4 8011BBF4 44801000 */  mtc1       $zero, $f2
/* D1FB8 8011BBF8 30420008 */  andi       $v0, $v0, 0x8
/* D1FBC 8011BBFC 1440000D */  bnez       $v0, .Lrace_8011BC34
/* D1FC0 8011BC00 00000000 */   nop
/* D1FC4 8011BC04 2650019C */  addiu      $s0, $s2, 0x19C
/* D1FC8 8011BC08 0215102B */  sltu       $v0, $s0, $s5
/* D1FCC 8011BC0C 10400006 */  beqz       $v0, .Lrace_8011BC28
/* D1FD0 8011BC10 00000000 */   nop
.Lrace_8011BC14:
/* D1FD4 8011BC14 C6000050 */  lwc1       $f0, 0x50($s0)
/* D1FD8 8011BC18 26100070 */  addiu      $s0, $s0, 0x70
/* D1FDC 8011BC1C 0215102B */  sltu       $v0, $s0, $s5
/* D1FE0 8011BC20 1440FFFC */  bnez       $v0, .Lrace_8011BC14
/* D1FE4 8011BC24 46001080 */   add.s     $f2, $f2, $f0
.Lrace_8011BC28:
/* D1FE8 8011BC28 3C01800D */  lui        $at, %hi(D_race_800CE2F0)
/* D1FEC 8011BC2C C420E2F0 */  lwc1       $f0, %lo(D_race_800CE2F0)($at)
/* D1FF0 8011BC30 46001082 */  mul.s      $f2, $f2, $f0
.Lrace_8011BC34:
/* D1FF4 8011BC34 C64005F0 */  lwc1       $f0, 0x5F0($s2)
/* D1FF8 8011BC38 46001080 */  add.s      $f2, $f2, $f0
/* D1FFC 8011BC3C C6400608 */  lwc1       $f0, 0x608($s2)
/* D2000 8011BC40 46020002 */  mul.s      $f0, $f0, $f2
/* D2004 8011BC44 C6420004 */  lwc1       $f2, 0x4($s2)
/* D2008 8011BC48 46000107 */  neg.s      $f4, $f0
/* D200C 8011BC4C 46041082 */  mul.s      $f2, $f2, $f4
/* D2010 8011BC50 26420004 */  addiu      $v0, $s2, 0x4
/* D2014 8011BC54 E7A20010 */  swc1       $f2, 0x10($sp)
/* D2018 8011BC58 C4400004 */  lwc1       $f0, 0x4($v0)
/* D201C 8011BC5C 46040002 */  mul.s      $f0, $f0, $f4
/* D2020 8011BC60 27A50010 */  addiu      $a1, $sp, 0x10
/* D2024 8011BC64 E4A00004 */  swc1       $f0, 0x4($a1)
/* D2028 8011BC68 C4400008 */  lwc1       $f0, 0x8($v0)
/* D202C 8011BC6C 46040002 */  mul.s      $f0, $f0, $f4
/* D2030 8011BC70 02402021 */  addu       $a0, $s2, $zero
/* D2034 8011BC74 0C045BAE */  jal        func_race_80116EB8
/* D2038 8011BC78 E4A00008 */   swc1      $f0, 0x8($a1)
/* D203C 8011BC7C 8E4206AC */  lw         $v0, 0x6AC($s2)
/* D2040 8011BC80 30420020 */  andi       $v0, $v0, 0x20
/* D2044 8011BC84 10400003 */  beqz       $v0, .Lrace_8011BC94
/* D2048 8011BC88 02402021 */   addu      $a0, $s2, $zero
/* D204C 8011BC8C 0C045BAE */  jal        func_race_80116EB8
/* D2050 8011BC90 26450634 */   addiu     $a1, $s2, 0x634
.Lrace_8011BC94:
/* D2054 8011BC94 8E4206AC */  lw         $v0, 0x6AC($s2)
/* D2058 8011BC98 30420040 */  andi       $v0, $v0, 0x40
/* D205C 8011BC9C 10400003 */  beqz       $v0, .Lrace_8011BCAC
/* D2060 8011BCA0 02402021 */   addu      $a0, $s2, $zero
/* D2064 8011BCA4 0C045BAE */  jal        func_race_80116EB8
/* D2068 8011BCA8 24850640 */   addiu     $a1, $a0, 0x640
.Lrace_8011BCAC:
/* D206C 8011BCAC 8FBF0048 */  lw         $ra, 0x48($sp)
/* D2070 8011BCB0 8FB50044 */  lw         $s5, 0x44($sp)
/* D2074 8011BCB4 8FB40040 */  lw         $s4, 0x40($sp)
/* D2078 8011BCB8 8FB3003C */  lw         $s3, 0x3C($sp)
/* D207C 8011BCBC 8FB20038 */  lw         $s2, 0x38($sp)
/* D2080 8011BCC0 8FB10034 */  lw         $s1, 0x34($sp)
/* D2084 8011BCC4 8FB00030 */  lw         $s0, 0x30($sp)
/* D2088 8011BCC8 D7B80060 */  ldc1       $f24, 0x60($sp)
/* D208C 8011BCCC D7B60058 */  ldc1       $f22, 0x58($sp)
/* D2090 8011BCD0 D7B40050 */  ldc1       $f20, 0x50($sp)
/* D2094 8011BCD4 03E00008 */  jr         $ra
/* D2098 8011BCD8 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_8011BCDC
/* D209C 8011BCDC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D20A0 8011BCE0 AFB10024 */  sw         $s1, 0x24($sp)
/* D20A4 8011BCE4 00808821 */  addu       $s1, $a0, $zero
/* D20A8 8011BCE8 AFBF0028 */  sw         $ra, 0x28($sp)
/* D20AC 8011BCEC AFB00020 */  sw         $s0, 0x20($sp)
/* D20B0 8011BCF0 F7B40030 */  sdc1       $f20, 0x30($sp)
/* D20B4 8011BCF4 8E2205E0 */  lw         $v0, 0x5E0($s1)
/* D20B8 8011BCF8 4485A000 */  mtc1       $a1, $f20
/* D20BC 8011BCFC 14400017 */  bnez       $v0, .Lrace_8011BD5C
/* D20C0 8011BD00 262200E4 */   addiu     $v0, $s1, 0xE4
/* D20C4 8011BD04 AE2605DC */  sw         $a2, 0x5DC($s1)
/* D20C8 8011BD08 C4400028 */  lwc1       $f0, 0x28($v0)
/* D20CC 8011BD0C E7A00010 */  swc1       $f0, 0x10($sp)
/* D20D0 8011BD10 C440002C */  lwc1       $f0, 0x2C($v0)
/* D20D4 8011BD14 27B00010 */  addiu      $s0, $sp, 0x10
/* D20D8 8011BD18 E6000004 */  swc1       $f0, 0x4($s0)
/* D20DC 8011BD1C C4400030 */  lwc1       $f0, 0x30($v0)
/* D20E0 8011BD20 02002821 */  addu       $a1, $s0, $zero
/* D20E4 8011BD24 0C045C7E */  jal        func_race_801171F8
/* D20E8 8011BD28 E6000008 */   swc1      $f0, 0x8($s0)
/* D20EC 8011BD2C C7A00010 */  lwc1       $f0, 0x10($sp)
/* D20F0 8011BD30 46140002 */  mul.s      $f0, $f0, $f20
/* D20F4 8011BD34 E7A00010 */  swc1       $f0, 0x10($sp)
/* D20F8 8011BD38 C6020004 */  lwc1       $f2, 0x4($s0)
/* D20FC 8011BD3C 46141082 */  mul.s      $f2, $f2, $f20
/* D2100 8011BD40 C6000008 */  lwc1       $f0, 0x8($s0)
/* D2104 8011BD44 46140002 */  mul.s      $f0, $f0, $f20
/* D2108 8011BD48 02202021 */  addu       $a0, $s1, $zero
/* D210C 8011BD4C 02002821 */  addu       $a1, $s0, $zero
/* D2110 8011BD50 E4A20004 */  swc1       $f2, 0x4($a1)
/* D2114 8011BD54 0C045BE7 */  jal        func_race_80116F9C
/* D2118 8011BD58 E4A00008 */   swc1      $f0, 0x8($a1)
.Lrace_8011BD5C:
/* D211C 8011BD5C 8FBF0028 */  lw         $ra, 0x28($sp)
/* D2120 8011BD60 8FB10024 */  lw         $s1, 0x24($sp)
/* D2124 8011BD64 8FB00020 */  lw         $s0, 0x20($sp)
/* D2128 8011BD68 D7B40030 */  ldc1       $f20, 0x30($sp)
/* D212C 8011BD6C 03E00008 */  jr         $ra
/* D2130 8011BD70 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8011BD74
/* D2134 8011BD74 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D2138 8011BD78 AFB10024 */  sw         $s1, 0x24($sp)
/* D213C 8011BD7C 00808821 */  addu       $s1, $a0, $zero
/* D2140 8011BD80 AFBF0028 */  sw         $ra, 0x28($sp)
/* D2144 8011BD84 AFB00020 */  sw         $s0, 0x20($sp)
/* D2148 8011BD88 F7B40030 */  sdc1       $f20, 0x30($sp)
/* D214C 8011BD8C 8E2205DC */  lw         $v0, 0x5DC($s1)
/* D2150 8011BD90 4485A000 */  mtc1       $a1, $f20
/* D2154 8011BD94 14400017 */  bnez       $v0, .Lrace_8011BDF4
/* D2158 8011BD98 262200E4 */   addiu     $v0, $s1, 0xE4
/* D215C 8011BD9C AE2605E0 */  sw         $a2, 0x5E0($s1)
/* D2160 8011BDA0 C4400034 */  lwc1       $f0, 0x34($v0)
/* D2164 8011BDA4 E7A00010 */  swc1       $f0, 0x10($sp)
/* D2168 8011BDA8 C4400038 */  lwc1       $f0, 0x38($v0)
/* D216C 8011BDAC 27B00010 */  addiu      $s0, $sp, 0x10
/* D2170 8011BDB0 E6000004 */  swc1       $f0, 0x4($s0)
/* D2174 8011BDB4 C440003C */  lwc1       $f0, 0x3C($v0)
/* D2178 8011BDB8 02002821 */  addu       $a1, $s0, $zero
/* D217C 8011BDBC 0C045C7E */  jal        func_race_801171F8
/* D2180 8011BDC0 E6000008 */   swc1      $f0, 0x8($s0)
/* D2184 8011BDC4 C7A00010 */  lwc1       $f0, 0x10($sp)
/* D2188 8011BDC8 46140002 */  mul.s      $f0, $f0, $f20
/* D218C 8011BDCC E7A00010 */  swc1       $f0, 0x10($sp)
/* D2190 8011BDD0 C6020004 */  lwc1       $f2, 0x4($s0)
/* D2194 8011BDD4 46141082 */  mul.s      $f2, $f2, $f20
/* D2198 8011BDD8 C6000008 */  lwc1       $f0, 0x8($s0)
/* D219C 8011BDDC 46140002 */  mul.s      $f0, $f0, $f20
/* D21A0 8011BDE0 02202021 */  addu       $a0, $s1, $zero
/* D21A4 8011BDE4 02002821 */  addu       $a1, $s0, $zero
/* D21A8 8011BDE8 E4A20004 */  swc1       $f2, 0x4($a1)
/* D21AC 8011BDEC 0C045BE7 */  jal        func_race_80116F9C
/* D21B0 8011BDF0 E4A00008 */   swc1      $f0, 0x8($a1)
.Lrace_8011BDF4:
/* D21B4 8011BDF4 8FBF0028 */  lw         $ra, 0x28($sp)
/* D21B8 8011BDF8 8FB10024 */  lw         $s1, 0x24($sp)
/* D21BC 8011BDFC 8FB00020 */  lw         $s0, 0x20($sp)
/* D21C0 8011BE00 D7B40030 */  ldc1       $f20, 0x30($sp)
/* D21C4 8011BE04 03E00008 */  jr         $ra
/* D21C8 8011BE08 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8011BE0C
/* D21CC 8011BE0C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D21D0 8011BE10 AFB10024 */  sw         $s1, 0x24($sp)
/* D21D4 8011BE14 00808821 */  addu       $s1, $a0, $zero
/* D21D8 8011BE18 F7B40030 */  sdc1       $f20, 0x30($sp)
/* D21DC 8011BE1C 4485A000 */  mtc1       $a1, $f20
/* D21E0 8011BE20 262200E4 */  addiu      $v0, $s1, 0xE4
/* D21E4 8011BE24 AFBF0028 */  sw         $ra, 0x28($sp)
/* D21E8 8011BE28 AFB00020 */  sw         $s0, 0x20($sp)
/* D21EC 8011BE2C AE2605E4 */  sw         $a2, 0x5E4($s1)
/* D21F0 8011BE30 C4400040 */  lwc1       $f0, 0x40($v0)
/* D21F4 8011BE34 E7A00010 */  swc1       $f0, 0x10($sp)
/* D21F8 8011BE38 C4400044 */  lwc1       $f0, 0x44($v0)
/* D21FC 8011BE3C 27B00010 */  addiu      $s0, $sp, 0x10
/* D2200 8011BE40 E6000004 */  swc1       $f0, 0x4($s0)
/* D2204 8011BE44 C4400048 */  lwc1       $f0, 0x48($v0)
/* D2208 8011BE48 02002821 */  addu       $a1, $s0, $zero
/* D220C 8011BE4C 0C045C7E */  jal        func_race_801171F8
/* D2210 8011BE50 E6000008 */   swc1      $f0, 0x8($s0)
/* D2214 8011BE54 C7A00010 */  lwc1       $f0, 0x10($sp)
/* D2218 8011BE58 46140002 */  mul.s      $f0, $f0, $f20
/* D221C 8011BE5C E7A00010 */  swc1       $f0, 0x10($sp)
/* D2220 8011BE60 C6020004 */  lwc1       $f2, 0x4($s0)
/* D2224 8011BE64 46141082 */  mul.s      $f2, $f2, $f20
/* D2228 8011BE68 C6000008 */  lwc1       $f0, 0x8($s0)
/* D222C 8011BE6C 46140002 */  mul.s      $f0, $f0, $f20
/* D2230 8011BE70 02202021 */  addu       $a0, $s1, $zero
/* D2234 8011BE74 02002821 */  addu       $a1, $s0, $zero
/* D2238 8011BE78 E4A20004 */  swc1       $f2, 0x4($a1)
/* D223C 8011BE7C 0C045BE7 */  jal        func_race_80116F9C
/* D2240 8011BE80 E4A00008 */   swc1      $f0, 0x8($a1)
/* D2244 8011BE84 8FBF0028 */  lw         $ra, 0x28($sp)
/* D2248 8011BE88 8FB10024 */  lw         $s1, 0x24($sp)
/* D224C 8011BE8C 8FB00020 */  lw         $s0, 0x20($sp)
/* D2250 8011BE90 D7B40030 */  ldc1       $f20, 0x30($sp)
/* D2254 8011BE94 03E00008 */  jr         $ra
/* D2258 8011BE98 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8011BE9C
/* D225C 8011BE9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D2260 8011BEA0 AFB00010 */  sw         $s0, 0x10($sp)
/* D2264 8011BEA4 00808021 */  addu       $s0, $a0, $zero
/* D2268 8011BEA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D226C 8011BEAC F7B40018 */  sdc1       $f20, 0x18($sp)
/* D2270 8011BEB0 C600061C */  lwc1       $f0, 0x61C($s0)
/* D2274 8011BEB4 46000002 */  mul.s      $f0, $f0, $f0
/* D2278 8011BEB8 C60200C4 */  lwc1       $f2, 0xC4($s0)
/* D227C 8011BEBC 46020502 */  mul.s      $f20, $f0, $f2
/* D2280 8011BEC0 44853000 */  mtc1       $a1, $f6
/* D2284 8011BEC4 0C047AD5 */  jal        func_race_8011EB54
/* D2288 8011BEC8 4606A503 */   div.s     $f20, $f20, $f6
/* D228C 8011BECC C6040160 */  lwc1       $f4, 0x160($s0)
/* D2290 8011BED0 C6020164 */  lwc1       $f2, 0x164($s0)
/* D2294 8011BED4 46022102 */  mul.s      $f4, $f4, $f2
/* D2298 8011BED8 44801000 */  mtc1       $zero, $f2
/* D229C 8011BEDC 4602A03C */  c.lt.s     $f20, $f2
/* D22A0 8011BEE0 46040002 */  mul.s      $f0, $f0, $f4
/* D22A4 8011BEE4 45010004 */  bc1t       .Lrace_8011BEF8
/* D22A8 8011BEE8 00001021 */   addu      $v0, $zero, $zero
/* D22AC 8011BEEC 4614003C */  c.lt.s     $f0, $f20
/* D22B0 8011BEF0 08046FC0 */  j          .Lrace_8011BF00
/* D22B4 8011BEF4 00000000 */   nop
.Lrace_8011BEF8:
/* D22B8 8011BEF8 46000007 */  neg.s      $f0, $f0
/* D22BC 8011BEFC 4600A03C */  c.lt.s     $f20, $f0
.Lrace_8011BF00:
/* D22C0 8011BF00 00000000 */  nop
/* D22C4 8011BF04 45020001 */  bc1fl      .Lrace_8011BF0C
/* D22C8 8011BF08 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_8011BF0C:
/* D22CC 8011BF0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D22D0 8011BF10 8FB00010 */  lw         $s0, 0x10($sp)
/* D22D4 8011BF14 D7B40018 */  ldc1       $f20, 0x18($sp)
/* D22D8 8011BF18 03E00008 */  jr         $ra
/* D22DC 8011BF1C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011BF20
/* D22E0 8011BF20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D22E4 8011BF24 AFB00010 */  sw         $s0, 0x10($sp)
/* D22E8 8011BF28 AFBF0014 */  sw         $ra, 0x14($sp)
/* D22EC 8011BF2C 0C047AD5 */  jal        func_race_8011EB54
/* D22F0 8011BF30 00808021 */   addu      $s0, $a0, $zero
/* D22F4 8011BF34 C6020160 */  lwc1       $f2, 0x160($s0)
/* D22F8 8011BF38 C6040164 */  lwc1       $f4, 0x164($s0)
/* D22FC 8011BF3C 46041082 */  mul.s      $f2, $f2, $f4
/* D2300 8011BF40 00000000 */  nop
/* D2304 8011BF44 46020102 */  mul.s      $f4, $f0, $f2
/* D2308 8011BF48 44800000 */  mtc1       $zero, $f0
/* D230C 8011BF4C 46002032 */  c.eq.s     $f4, $f0
/* D2310 8011BF50 00000000 */  nop
/* D2314 8011BF54 45010007 */  bc1t       .Lrace_8011BF74
/* D2318 8011BF58 00000000 */   nop
/* D231C 8011BF5C C600061C */  lwc1       $f0, 0x61C($s0)
/* D2320 8011BF60 46000002 */  mul.s      $f0, $f0, $f0
/* D2324 8011BF64 C60200C4 */  lwc1       $f2, 0xC4($s0)
/* D2328 8011BF68 46020002 */  mul.s      $f0, $f0, $f2
/* D232C 8011BF6C 08046FE4 */  j          .Lrace_8011BF90
/* D2330 8011BF70 46040003 */   div.s     $f0, $f0, $f4
.Lrace_8011BF74:
/* D2334 8011BF74 8E020370 */  lw         $v0, 0x370($s0)
/* D2338 8011BF78 3C01800D */  lui        $at, %hi(D_race_800CE2F4)
/* D233C 8011BF7C C420E2F4 */  lwc1       $f0, %lo(D_race_800CE2F4)($at)
/* D2340 8011BF80 10400003 */  beqz       $v0, .Lrace_8011BF90
/* D2344 8011BF84 00000000 */   nop
/* D2348 8011BF88 3C01800D */  lui        $at, %hi(D_race_800CE2F8)
/* D234C 8011BF8C C420E2F8 */  lwc1       $f0, %lo(D_race_800CE2F8)($at)
.Lrace_8011BF90:
/* D2350 8011BF90 8FBF0014 */  lw         $ra, 0x14($sp)
/* D2354 8011BF94 8FB00010 */  lw         $s0, 0x10($sp)
/* D2358 8011BF98 03E00008 */  jr         $ra
/* D235C 8011BF9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011BFA0
/* D2360 8011BFA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D2364 8011BFA4 AFB00010 */  sw         $s0, 0x10($sp)
/* D2368 8011BFA8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* D236C 8011BFAC 4485A000 */  mtc1       $a1, $f20
/* D2370 8011BFB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* D2374 8011BFB4 0C047AD5 */  jal        func_race_8011EB54
/* D2378 8011BFB8 00808021 */   addu      $s0, $a0, $zero
/* D237C 8011BFBC C6020164 */  lwc1       $f2, 0x164($s0)
/* D2380 8011BFC0 46020002 */  mul.s      $f0, $f0, $f2
/* D2384 8011BFC4 00000000 */  nop
/* D2388 8011BFC8 4600A302 */  mul.s      $f12, $f20, $f0
/* D238C 8011BFCC 46006084 */  sqrt.s     $f2, $f12
/* D2390 8011BFD0 46021032 */  c.eq.s     $f2, $f2
/* D2394 8011BFD4 00000000 */  nop
/* D2398 8011BFD8 45010004 */  bc1t       .Lrace_8011BFEC
/* D239C 8011BFDC 00000000 */   nop
/* D23A0 8011BFE0 0C006BC8 */  jal        sqrt
/* D23A4 8011BFE4 00000000 */   nop
/* D23A8 8011BFE8 46000086 */  mov.s      $f2, $f0
.Lrace_8011BFEC:
/* D23AC 8011BFEC 3C01800D */  lui        $at, %hi(D_race_800CE2FC)
/* D23B0 8011BFF0 C420E2FC */  lwc1       $f0, %lo(D_race_800CE2FC)($at)
/* D23B4 8011BFF4 46001002 */  mul.s      $f0, $f2, $f0
/* D23B8 8011BFF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* D23BC 8011BFFC 8FB00010 */  lw         $s0, 0x10($sp)
/* D23C0 8011C000 D7B40018 */  ldc1       $f20, 0x18($sp)
/* D23C4 8011C004 03E00008 */  jr         $ra
/* D23C8 8011C008 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011C00C
/* D23CC 8011C00C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* D23D0 8011C010 AFB00048 */  sw         $s0, 0x48($sp)
/* D23D4 8011C014 249000E4 */  addiu      $s0, $a0, 0xE4
/* D23D8 8011C018 AFBF0050 */  sw         $ra, 0x50($sp)
/* D23DC 8011C01C AFB1004C */  sw         $s1, 0x4C($sp)
/* D23E0 8011C020 C6000028 */  lwc1       $f0, 0x28($s0)
/* D23E4 8011C024 3C01800D */  lui        $at, %hi(D_race_800CE300)
/* D23E8 8011C028 C422E300 */  lwc1       $f2, %lo(D_race_800CE300)($at)
/* D23EC 8011C02C E7A00010 */  swc1       $f0, 0x10($sp)
/* D23F0 8011C030 C600002C */  lwc1       $f0, 0x2C($s0)
/* D23F4 8011C034 27B10010 */  addiu      $s1, $sp, 0x10
/* D23F8 8011C038 E6200004 */  swc1       $f0, 0x4($s1)
/* D23FC 8011C03C C6000030 */  lwc1       $f0, 0x30($s0)
/* D2400 8011C040 E6200008 */  swc1       $f0, 0x8($s1)
/* D2404 8011C044 C6060040 */  lwc1       $f6, 0x40($s0)
/* D2408 8011C048 E7A60020 */  swc1       $f6, 0x20($sp)
/* D240C 8011C04C C6040044 */  lwc1       $f4, 0x44($s0)
/* D2410 8011C050 E7A40024 */  swc1       $f4, 0x24($sp)
/* D2414 8011C054 C6000048 */  lwc1       $f0, 0x48($s0)
/* D2418 8011C058 4602003C */  c.lt.s     $f0, $f2
/* D241C 8011C05C 00000000 */  nop
/* D2420 8011C060 4500001E */  bc1f       .Lrace_8011C0DC
/* D2424 8011C064 E7A00028 */   swc1      $f0, 0x28($sp)
/* D2428 8011C068 27A40030 */  addiu      $a0, $sp, 0x30
/* D242C 8011C06C 00802821 */  addu       $a1, $a0, $zero
/* D2430 8011C070 46003007 */  neg.s      $f0, $f6
/* D2434 8011C074 E7A40030 */  swc1       $f4, 0x30($sp)
/* D2438 8011C078 E7A00034 */  swc1       $f0, 0x34($sp)
/* D243C 8011C07C 0C000F26 */  jal        func_80003C98
/* D2440 8011C080 AFA00038 */   sw        $zero, 0x38($sp)
/* D2444 8011C084 3C01800D */  lui        $at, %hi(D_race_800CE304)
/* D2448 8011C088 C42CE304 */  lwc1       $f12, %lo(D_race_800CE304)($at)
/* D244C 8011C08C 0C006D60 */  jal        sinf
/* D2450 8011C090 00000000 */   nop
/* D2454 8011C094 3C01800D */  lui        $at, %hi(D_race_800CE308)
/* D2458 8011C098 C42CE308 */  lwc1       $f12, %lo(D_race_800CE308)($at)
/* D245C 8011C09C 0C006BCC */  jal        cosf
/* D2460 8011C0A0 E7A00040 */   swc1      $f0, 0x40($sp)
/* D2464 8011C0A4 C7A60040 */  lwc1       $f6, 0x40($sp)
/* D2468 8011C0A8 C7A20034 */  lwc1       $f2, 0x34($sp)
/* D246C 8011C0AC 46023082 */  mul.s      $f2, $f6, $f2
/* D2470 8011C0B0 C7A40030 */  lwc1       $f4, 0x30($sp)
/* D2474 8011C0B4 02002021 */  addu       $a0, $s0, $zero
/* D2478 8011C0B8 46043182 */  mul.s      $f6, $f6, $f4
/* D247C 8011C0BC 27A50020 */  addiu      $a1, $sp, 0x20
/* D2480 8011C0C0 02203021 */  addu       $a2, $s1, $zero
/* D2484 8011C0C4 E7A00044 */  swc1       $f0, 0x44($sp)
/* D2488 8011C0C8 E7A00028 */  swc1       $f0, 0x28($sp)
/* D248C 8011C0CC 46001087 */  neg.s      $f2, $f2
/* D2490 8011C0D0 E7A20020 */  swc1       $f2, 0x20($sp)
/* D2494 8011C0D4 0C0157D3 */  jal        func_80055F4C
/* D2498 8011C0D8 E7A60024 */   swc1      $f6, 0x24($sp)
.Lrace_8011C0DC:
/* D249C 8011C0DC 8FBF0050 */  lw         $ra, 0x50($sp)
/* D24A0 8011C0E0 8FB1004C */  lw         $s1, 0x4C($sp)
/* D24A4 8011C0E4 8FB00048 */  lw         $s0, 0x48($sp)
/* D24A8 8011C0E8 03E00008 */  jr         $ra
/* D24AC 8011C0EC 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_8011C0F0
/* D24B0 8011C0F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D24B4 8011C0F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* D24B8 8011C0F8 AFB00010 */  sw         $s0, 0x10($sp)
/* D24BC 8011C0FC C4A40000 */  lwc1       $f4, 0x0($a1)
/* D24C0 8011C100 46042102 */  mul.s      $f4, $f4, $f4
/* D24C4 8011C104 C4A20004 */  lwc1       $f2, 0x4($a1)
/* D24C8 8011C108 46021082 */  mul.s      $f2, $f2, $f2
/* D24CC 8011C10C C4A00008 */  lwc1       $f0, 0x8($a1)
/* D24D0 8011C110 46000002 */  mul.s      $f0, $f0, $f0
/* D24D4 8011C114 46022100 */  add.s      $f4, $f4, $f2
/* D24D8 8011C118 46002300 */  add.s      $f12, $f4, $f0
/* D24DC 8011C11C 46006004 */  sqrt.s     $f0, $f12
/* D24E0 8011C120 46000032 */  c.eq.s     $f0, $f0
/* D24E4 8011C124 00000000 */  nop
/* D24E8 8011C128 45010003 */  bc1t       .Lrace_8011C138
/* D24EC 8011C12C 00808021 */   addu      $s0, $a0, $zero
/* D24F0 8011C130 0C006BC8 */  jal        sqrt
/* D24F4 8011C134 00000000 */   nop
.Lrace_8011C138:
/* D24F8 8011C138 E6000164 */  swc1       $f0, 0x164($s0)
/* D24FC 8011C13C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D2500 8011C140 8FB00010 */  lw         $s0, 0x10($sp)
/* D2504 8011C144 03E00008 */  jr         $ra
/* D2508 8011C148 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011C14C
/* D250C 8011C14C 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* D2510 8011C150 AFB50094 */  sw         $s5, 0x94($sp)
/* D2514 8011C154 0080A821 */  addu       $s5, $a0, $zero
/* D2518 8011C158 AFBF00A4 */  sw         $ra, 0xA4($sp)
/* D251C 8011C15C AFBE00A0 */  sw         $fp, 0xA0($sp)
/* D2520 8011C160 AFB7009C */  sw         $s7, 0x9C($sp)
/* D2524 8011C164 AFB60098 */  sw         $s6, 0x98($sp)
/* D2528 8011C168 AFB40090 */  sw         $s4, 0x90($sp)
/* D252C 8011C16C AFB3008C */  sw         $s3, 0x8C($sp)
/* D2530 8011C170 AFB20088 */  sw         $s2, 0x88($sp)
/* D2534 8011C174 AFB10084 */  sw         $s1, 0x84($sp)
/* D2538 8011C178 AFB00080 */  sw         $s0, 0x80($sp)
/* D253C 8011C17C F7B800B8 */  sdc1       $f24, 0xB8($sp)
/* D2540 8011C180 F7B600B0 */  sdc1       $f22, 0xB0($sp)
/* D2544 8011C184 F7B400A8 */  sdc1       $f20, 0xA8($sp)
/* D2548 8011C188 8EA206AC */  lw         $v0, 0x6AC($s5)
/* D254C 8011C18C 30420100 */  andi       $v0, $v0, 0x100
/* D2550 8011C190 10400024 */  beqz       $v0, .Lrace_8011C224
/* D2554 8011C194 00A08021 */   addu      $s0, $a1, $zero
/* D2558 8011C198 C6A00004 */  lwc1       $f0, 0x4($s5)
/* D255C 8011C19C 44801000 */  mtc1       $zero, $f2
/* D2560 8011C1A0 46020032 */  c.eq.s     $f0, $f2
/* D2564 8011C1A4 00000000 */  nop
/* D2568 8011C1A8 4500001A */  bc1f       .Lrace_8011C214
/* D256C 8011C1AC 00000000 */   nop
/* D2570 8011C1B0 C6A00008 */  lwc1       $f0, 0x8($s5)
/* D2574 8011C1B4 46020032 */  c.eq.s     $f0, $f2
/* D2578 8011C1B8 00000000 */  nop
/* D257C 8011C1BC 45000015 */  bc1f       .Lrace_8011C214
/* D2580 8011C1C0 00000000 */   nop
/* D2584 8011C1C4 C6A0000C */  lwc1       $f0, 0xC($s5)
/* D2588 8011C1C8 46020032 */  c.eq.s     $f0, $f2
/* D258C 8011C1CC 00000000 */  nop
/* D2590 8011C1D0 45000010 */  bc1f       .Lrace_8011C214
/* D2594 8011C1D4 00000000 */   nop
/* D2598 8011C1D8 C6A00094 */  lwc1       $f0, 0x94($s5)
/* D259C 8011C1DC 46020032 */  c.eq.s     $f0, $f2
/* D25A0 8011C1E0 00000000 */  nop
/* D25A4 8011C1E4 4500000B */  bc1f       .Lrace_8011C214
/* D25A8 8011C1E8 00000000 */   nop
/* D25AC 8011C1EC C6A00098 */  lwc1       $f0, 0x98($s5)
/* D25B0 8011C1F0 46020032 */  c.eq.s     $f0, $f2
/* D25B4 8011C1F4 00000000 */  nop
/* D25B8 8011C1F8 45000006 */  bc1f       .Lrace_8011C214
/* D25BC 8011C1FC 00000000 */   nop
/* D25C0 8011C200 C6A0009C */  lwc1       $f0, 0x9C($s5)
/* D25C4 8011C204 46020032 */  c.eq.s     $f0, $f2
/* D25C8 8011C208 00000000 */  nop
/* D25CC 8011C20C 45010225 */  bc1t       .Lrace_8011CAA4
/* D25D0 8011C210 00000000 */   nop
.Lrace_8011C214:
/* D25D4 8011C214 8EA206AC */  lw         $v0, 0x6AC($s5)
/* D25D8 8011C218 2403FEFF */  addiu      $v1, $zero, -0x101
/* D25DC 8011C21C 00431024 */  and        $v0, $v0, $v1
/* D25E0 8011C220 AEA206AC */  sw         $v0, 0x6AC($s5)
.Lrace_8011C224:
/* D25E4 8011C224 02A02021 */  addu       $a0, $s5, $zero
/* D25E8 8011C228 0C047B19 */  jal        func_race_8011EC64
/* D25EC 8011C22C 26B6035C */   addiu     $s6, $s5, 0x35C
/* D25F0 8011C230 26A400E4 */  addiu      $a0, $s5, 0xE4
/* D25F4 8011C234 8EA90370 */  lw         $t1, 0x370($s5)
/* D25F8 8011C238 27A50030 */  addiu      $a1, $sp, 0x30
/* D25FC 8011C23C 0C01595B */  jal        func_8005656C
/* D2600 8011C240 AFA90074 */   sw        $t1, 0x74($sp)
/* D2604 8011C244 C7A00030 */  lwc1       $f0, 0x30($sp)
/* D2608 8011C248 C6A2067C */  lwc1       $f2, 0x67C($s5)
/* D260C 8011C24C 46020001 */  sub.s      $f0, $f0, $f2
/* D2610 8011C250 26A2067C */  addiu      $v0, $s5, 0x67C
/* D2614 8011C254 E7A00050 */  swc1       $f0, 0x50($sp)
/* D2618 8011C258 C7A00034 */  lwc1       $f0, 0x34($sp)
/* D261C 8011C25C C4420004 */  lwc1       $f2, 0x4($v0)
/* D2620 8011C260 46020001 */  sub.s      $f0, $f0, $f2
/* D2624 8011C264 C7A20038 */  lwc1       $f2, 0x38($sp)
/* D2628 8011C268 E7A00054 */  swc1       $f0, 0x54($sp)
/* D262C 8011C26C C4400008 */  lwc1       $f0, 0x8($v0)
/* D2630 8011C270 46001081 */  sub.s      $f2, $f2, $f0
/* D2634 8011C274 44800000 */  mtc1       $zero, $f0
/* D2638 8011C278 46001507 */  neg.s      $f20, $f2
/* D263C 8011C27C 4600A03C */  c.lt.s     $f20, $f0
/* D2640 8011C280 00000000 */  nop
/* D2644 8011C284 45000002 */  bc1f       .Lrace_8011C290
/* D2648 8011C288 E7A20058 */   swc1      $f2, 0x58($sp)
/* D264C 8011C28C 46000506 */  mov.s      $f20, $f0
.Lrace_8011C290:
/* D2650 8011C290 8EA4013C */  lw         $a0, 0x13C($s5)
/* D2654 8011C294 0C0165C5 */  jal        func_80059714
/* D2658 8011C298 00000000 */   nop
/* D265C 8011C29C 8EA20370 */  lw         $v0, 0x370($s5)
/* D2660 8011C2A0 10400016 */  beqz       $v0, .Lrace_8011C2FC
/* D2664 8011C2A4 46140600 */   add.s     $f24, $f0, $f20
/* D2668 8011C2A8 8EA306AC */  lw         $v1, 0x6AC($s5)
/* D266C 8011C2AC 30620080 */  andi       $v0, $v1, 0x80
/* D2670 8011C2B0 14400012 */  bnez       $v0, .Lrace_8011C2FC
/* D2674 8011C2B4 30620008 */   andi      $v0, $v1, 0x8
/* D2678 8011C2B8 10400009 */  beqz       $v0, .Lrace_8011C2E0
/* D267C 8011C2BC 00000000 */   nop
/* D2680 8011C2C0 3C01800D */  lui        $at, %hi(D_race_800CE30C)
/* D2684 8011C2C4 C420E30C */  lwc1       $f0, %lo(D_race_800CE30C)($at)
/* D2688 8011C2C8 44901000 */  mtc1       $s0, $f2
/* D268C 8011C2CC 468010A0 */  cvt.s.w    $f2, $f2
/* D2690 8011C2D0 46001082 */  mul.s      $f2, $f2, $f0
/* D2694 8011C2D4 C6A0065C */  lwc1       $f0, 0x65C($s5)
/* D2698 8011C2D8 080470BD */  j          .Lrace_8011C2F4
/* D269C 8011C2DC 46001580 */   add.s     $f22, $f2, $f0
.Lrace_8011C2E0:
/* D26A0 8011C2E0 3C01800D */  lui        $at, %hi(D_race_800CE310)
/* D26A4 8011C2E4 C422E310 */  lwc1       $f2, %lo(D_race_800CE310)($at)
/* D26A8 8011C2E8 44900000 */  mtc1       $s0, $f0
/* D26AC 8011C2EC 46800020 */  cvt.s.w    $f0, $f0
/* D26B0 8011C2F0 46020582 */  mul.s      $f22, $f0, $f2
.Lrace_8011C2F4:
/* D26B4 8011C2F4 080470C6 */  j          .Lrace_8011C318
/* D26B8 8011C2F8 AFA00078 */   sw        $zero, 0x78($sp)
.Lrace_8011C2FC:
/* D26BC 8011C2FC 8EA206AC */  lw         $v0, 0x6AC($s5)
/* D26C0 8011C300 4480B000 */  mtc1       $zero, $f22
/* D26C4 8011C304 30420008 */  andi       $v0, $v0, 0x8
/* D26C8 8011C308 10400002 */  beqz       $v0, .Lrace_8011C314
/* D26CC 8011C30C 240A0001 */   addiu     $t2, $zero, 0x1
/* D26D0 8011C310 C6B6065C */  lwc1       $f22, 0x65C($s5)
.Lrace_8011C314:
/* D26D4 8011C314 AFAA0078 */  sw         $t2, 0x78($sp)
.Lrace_8011C318:
/* D26D8 8011C318 4480A000 */  mtc1       $zero, $f20
/* D26DC 8011C31C 02A02021 */  addu       $a0, $s5, $zero
/* D26E0 8011C320 AEA00370 */  sw         $zero, 0x370($s5)
/* D26E4 8011C324 E7B80048 */  swc1       $f24, 0x48($sp)
/* D26E8 8011C328 E7B60058 */  swc1       $f22, 0x58($sp)
/* D26EC 8011C32C E7B40050 */  swc1       $f20, 0x50($sp)
/* D26F0 8011C330 E7B40040 */  swc1       $f20, 0x40($sp)
/* D26F4 8011C334 E7B40054 */  swc1       $f20, 0x54($sp)
/* D26F8 8011C338 0C047BE0 */  jal        func_race_8011EF80
/* D26FC 8011C33C E7B40044 */   swc1      $f20, 0x44($sp)
/* D2700 8011C340 26B1019C */  addiu      $s1, $s5, 0x19C
/* D2704 8011C344 0236102B */  sltu       $v0, $s1, $s6
/* D2708 8011C348 10400012 */  beqz       $v0, .Lrace_8011C394
/* D270C 8011C34C 0000F021 */   addu      $fp, $zero, $zero
/* D2710 8011C350 4600A006 */  mov.s      $f0, $f20
/* D2714 8011C354 3C01800D */  lui        $at, %hi(D_race_800CE314)
/* D2718 8011C358 C422E314 */  lwc1       $f2, %lo(D_race_800CE314)($at)
/* D271C 8011C35C 2404FFFC */  addiu      $a0, $zero, -0x4
/* D2720 8011C360 26A301E4 */  addiu      $v1, $s5, 0x1E4
.Lrace_8011C364:
/* D2724 8011C364 E460FFC0 */  swc1       $f0, -0x40($v1)
/* D2728 8011C368 E460FFBC */  swc1       $f0, -0x44($v1)
/* D272C 8011C36C E6200000 */  swc1       $f0, 0x0($s1)
/* D2730 8011C370 8C620000 */  lw         $v0, 0x0($v1)
/* D2734 8011C374 26310070 */  addiu      $s1, $s1, 0x70
/* D2738 8011C378 E4620004 */  swc1       $f2, 0x4($v1)
/* D273C 8011C37C 00441024 */  and        $v0, $v0, $a0
/* D2740 8011C380 AC620000 */  sw         $v0, 0x0($v1)
/* D2744 8011C384 0236102B */  sltu       $v0, $s1, $s6
/* D2748 8011C388 1440FFF6 */  bnez       $v0, .Lrace_8011C364
/* D274C 8011C38C 24630070 */   addiu     $v1, $v1, 0x70
/* D2750 8011C390 0000F021 */  addu       $fp, $zero, $zero
.Lrace_8011C394:
/* D2754 8011C394 3C0B8013 */  lui        $t3, %hi(D_race_80132E70)
/* D2758 8011C398 25732E70 */  addiu      $s3, $t3, %lo(D_race_80132E70)
/* D275C 8011C39C 3C01800D */  lui        $at, %hi(D_race_800CE318)
/* D2760 8011C3A0 C434E318 */  lwc1       $f20, %lo(D_race_800CE318)($at)
/* D2764 8011C3A4 02A0B821 */  addu       $s7, $s5, $zero
/* D2768 8011C3A8 AFA00070 */  sw         $zero, 0x70($sp)
.Lrace_8011C3AC:
/* D276C 8011C3AC 8EA20158 */  lw         $v0, 0x158($s5)
/* D2770 8011C3B0 03C2102B */  sltu       $v0, $fp, $v0
/* D2774 8011C3B4 10400052 */  beqz       $v0, .Lrace_8011C500
/* D2778 8011C3B8 02A02021 */   addu      $a0, $s5, $zero
/* D277C 8011C3BC 27B20020 */  addiu      $s2, $sp, 0x20
/* D2780 8011C3C0 8EF4014C */  lw         $s4, 0x14C($s7)
/* D2784 8011C3C4 4406C000 */  mfc1       $a2, $f24
/* D2788 8011C3C8 4407B000 */  mfc1       $a3, $f22
/* D278C 8011C3CC 0C047C37 */  jal        func_race_8011F0DC
/* D2790 8011C3D0 02802821 */   addu      $a1, $s4, $zero
/* D2794 8011C3D4 26B1019C */  addiu      $s1, $s5, 0x19C
/* D2798 8011C3D8 02208021 */  addu       $s0, $s1, $zero
.Lrace_8011C3DC:
/* D279C 8011C3DC 0236102B */  sltu       $v0, $s1, $s6
/* D27A0 8011C3E0 50400045 */  beql       $v0, $zero, .Lrace_8011C4F8
/* D27A4 8011C3E4 26F70004 */   addiu     $s7, $s7, 0x4
/* D27A8 8011C3E8 8E020048 */  lw         $v0, 0x48($s0)
/* D27AC 8011C3EC 30420002 */  andi       $v0, $v0, 0x2
/* D27B0 8011C3F0 5440003F */  bnel       $v0, $zero, .Lrace_8011C4F0
/* D27B4 8011C3F4 26100070 */   addiu     $s0, $s0, 0x70
/* D27B8 8011C3F8 26250018 */  addiu      $a1, $s1, 0x18
/* D27BC 8011C3FC 26260024 */  addiu      $a2, $s1, 0x24
/* D27C0 8011C400 3C0C8013 */  lui        $t4, %hi(D_race_80132E70)
/* D27C4 8011C404 25872E70 */  addiu      $a3, $t4, %lo(D_race_80132E70)
/* D27C8 8011C408 27A40020 */  addiu      $a0, $sp, 0x20
/* D27CC 8011C40C 8E82005C */  lw         $v0, 0x5C($s4)
/* D27D0 8011C410 8E830058 */  lw         $v1, 0x58($s4)
/* D27D4 8011C414 14400002 */  bnez       $v0, .Lrace_8011C420
/* D27D8 8011C418 2628003C */   addiu     $t0, $s1, 0x3C
/* D27DC 8011C41C 24620014 */  addiu      $v0, $v1, 0x14
.Lrace_8011C420:
/* D27E0 8011C420 AC620020 */  sw         $v0, 0x20($v1)
/* D27E4 8011C424 AFA40010 */  sw         $a0, 0x10($sp)
/* D27E8 8011C428 AFA80014 */  sw         $t0, 0x14($sp)
/* D27EC 8011C42C AFA00018 */  sw         $zero, 0x18($sp)
/* D27F0 8011C430 8E840058 */  lw         $a0, 0x58($s4)
/* D27F4 8011C434 0C038990 */  jal        func_race_800E2640
/* D27F8 8011C438 00000000 */   nop
/* D27FC 8011C43C 1040002B */  beqz       $v0, .Lrace_8011C4EC
/* D2800 8011C440 27A50020 */   addiu     $a1, $sp, 0x20
/* D2804 8011C444 8E020048 */  lw         $v0, 0x48($s0)
/* D2808 8011C448 34420002 */  ori        $v0, $v0, 0x2
/* D280C 8011C44C AE020048 */  sw         $v0, 0x48($s0)
/* D2810 8011C450 8E820024 */  lw         $v0, 0x24($s4)
/* D2814 8011C454 26260030 */  addiu      $a2, $s1, 0x30
/* D2818 8011C458 84440060 */  lh         $a0, 0x60($v0)
/* D281C 8011C45C 8C420064 */  lw         $v0, 0x64($v0)
/* D2820 8011C460 0040F809 */  jalr       $v0
/* D2824 8011C464 02842021 */   addu      $a0, $s4, $a0
/* D2828 8011C468 C6600024 */  lwc1       $f0, 0x24($s3)
/* D282C 8011C46C C6620028 */  lwc1       $f2, 0x28($s3)
/* D2830 8011C470 C664002C */  lwc1       $f4, 0x2C($s3)
/* D2834 8011C474 27A50060 */  addiu      $a1, $sp, 0x60
/* D2838 8011C478 E7A00060 */  swc1       $f0, 0x60($sp)
/* D283C 8011C47C E7A20064 */  swc1       $f2, 0x64($sp)
/* D2840 8011C480 E7A40068 */  swc1       $f4, 0x68($sp)
/* D2844 8011C484 8E820024 */  lw         $v0, 0x24($s4)
/* D2848 8011C488 02203021 */  addu       $a2, $s1, $zero
/* D284C 8011C48C 84440070 */  lh         $a0, 0x70($v0)
/* D2850 8011C490 8C420074 */  lw         $v0, 0x74($v0)
/* D2854 8011C494 0040F809 */  jalr       $v0
/* D2858 8011C498 02842021 */   addu      $a0, $s4, $a0
/* D285C 8011C49C C6060024 */  lwc1       $f6, 0x24($s0)
/* D2860 8011C4A0 C7A00020 */  lwc1       $f0, 0x20($sp)
/* D2864 8011C4A4 46003181 */  sub.s      $f6, $f6, $f0
/* D2868 8011C4A8 46063182 */  mul.s      $f6, $f6, $f6
/* D286C 8011C4AC C6040028 */  lwc1       $f4, 0x28($s0)
/* D2870 8011C4B0 C6400004 */  lwc1       $f0, 0x4($s2)
/* D2874 8011C4B4 46002101 */  sub.s      $f4, $f4, $f0
/* D2878 8011C4B8 46042102 */  mul.s      $f4, $f4, $f4
/* D287C 8011C4BC C6420008 */  lwc1       $f2, 0x8($s2)
/* D2880 8011C4C0 C600002C */  lwc1       $f0, 0x2C($s0)
/* D2884 8011C4C4 46020001 */  sub.s      $f0, $f0, $f2
/* D2888 8011C4C8 46000002 */  mul.s      $f0, $f0, $f0
/* D288C 8011C4CC 46043180 */  add.s      $f6, $f6, $f4
/* D2890 8011C4D0 46003180 */  add.s      $f6, $f6, $f0
/* D2894 8011C4D4 4606A03C */  c.lt.s     $f20, $f6
/* D2898 8011C4D8 00000000 */  nop
/* D289C 8011C4DC 45000003 */  bc1f       .Lrace_8011C4EC
/* D28A0 8011C4E0 E606004C */   swc1      $f6, 0x4C($s0)
/* D28A4 8011C4E4 46003506 */  mov.s      $f20, $f6
/* D28A8 8011C4E8 AFB00070 */  sw         $s0, 0x70($sp)
.Lrace_8011C4EC:
/* D28AC 8011C4EC 26100070 */  addiu      $s0, $s0, 0x70
.Lrace_8011C4F0:
/* D28B0 8011C4F0 080470F7 */  j          .Lrace_8011C3DC
/* D28B4 8011C4F4 26310070 */   addiu     $s1, $s1, 0x70
.Lrace_8011C4F8:
/* D28B8 8011C4F8 080470EB */  j          .Lrace_8011C3AC
/* D28BC 8011C4FC 27DE0001 */   addiu     $fp, $fp, 0x1
.Lrace_8011C500:
/* D28C0 8011C500 8EB40140 */  lw         $s4, 0x140($s5)
/* D28C4 8011C504 26B1019C */  addiu      $s1, $s5, 0x19C
/* D28C8 8011C508 3C178013 */  lui        $s7, %hi(D_race_80132E70)
/* D28CC 8011C50C 26B001E4 */  addiu      $s0, $s5, 0x1E4
.Lrace_8011C510:
/* D28D0 8011C510 0236102B */  sltu       $v0, $s1, $s6
/* D28D4 8011C514 1040005A */  beqz       $v0, .Lrace_8011C680
/* D28D8 8011C518 00000000 */   nop
/* D28DC 8011C51C 8E020000 */  lw         $v0, 0x0($s0)
/* D28E0 8011C520 30420002 */  andi       $v0, $v0, 0x2
/* D28E4 8011C524 54400054 */  bnel       $v0, $zero, .Lrace_8011C678
/* D28E8 8011C528 26100070 */   addiu     $s0, $s0, 0x70
/* D28EC 8011C52C C600FFC4 */  lwc1       $f0, -0x3C($s0)
/* D28F0 8011C530 C7A20040 */  lwc1       $f2, 0x40($sp)
/* D28F4 8011C534 46020000 */  add.s      $f0, $f0, $f2
/* D28F8 8011C538 E600FFD0 */  swc1       $f0, -0x30($s0)
/* D28FC 8011C53C C600FFC8 */  lwc1       $f0, -0x38($s0)
/* D2900 8011C540 C7A20044 */  lwc1       $f2, 0x44($sp)
/* D2904 8011C544 46020000 */  add.s      $f0, $f0, $f2
/* D2908 8011C548 E600FFD4 */  swc1       $f0, -0x2C($s0)
/* D290C 8011C54C C600FFCC */  lwc1       $f0, -0x34($s0)
/* D2910 8011C550 C7A20048 */  lwc1       $f2, 0x48($sp)
/* D2914 8011C554 46020000 */  add.s      $f0, $f0, $f2
/* D2918 8011C558 E600FFD8 */  swc1       $f0, -0x28($s0)
/* D291C 8011C55C C600FFC4 */  lwc1       $f0, -0x3C($s0)
/* D2920 8011C560 C7A20050 */  lwc1       $f2, 0x50($sp)
/* D2924 8011C564 46020001 */  sub.s      $f0, $f0, $f2
/* D2928 8011C568 E600FFDC */  swc1       $f0, -0x24($s0)
/* D292C 8011C56C C600FFC8 */  lwc1       $f0, -0x38($s0)
/* D2930 8011C570 C7A20054 */  lwc1       $f2, 0x54($sp)
/* D2934 8011C574 46020001 */  sub.s      $f0, $f0, $f2
/* D2938 8011C578 C602FFCC */  lwc1       $f2, -0x34($s0)
/* D293C 8011C57C 02A02021 */  addu       $a0, $s5, $zero
/* D2940 8011C580 E600FFE0 */  swc1       $f0, -0x20($s0)
/* D2944 8011C584 C7A00058 */  lwc1       $f0, 0x58($sp)
/* D2948 8011C588 02202821 */  addu       $a1, $s1, $zero
/* D294C 8011C58C 46001081 */  sub.s      $f2, $f2, $f0
/* D2950 8011C590 26320018 */  addiu      $s2, $s1, 0x18
/* D2954 8011C594 26330024 */  addiu      $s3, $s1, 0x24
/* D2958 8011C598 0C047B55 */  jal        func_race_8011ED54
/* D295C 8011C59C E602FFE4 */   swc1      $f2, -0x1C($s0)
/* D2960 8011C5A0 14400016 */  bnez       $v0, .Lrace_8011C5FC
/* D2964 8011C5A4 02603021 */   addu      $a2, $s3, $zero
/* D2968 8011C5A8 02402821 */  addu       $a1, $s2, $zero
/* D296C 8011C5AC 26E72E70 */  addiu      $a3, $s7, %lo(D_race_80132E70)
/* D2970 8011C5B0 26240030 */  addiu      $a0, $s1, 0x30
/* D2974 8011C5B4 8E82005C */  lw         $v0, 0x5C($s4)
/* D2978 8011C5B8 8E830058 */  lw         $v1, 0x58($s4)
/* D297C 8011C5BC 14400002 */  bnez       $v0, .Lrace_8011C5C8
/* D2980 8011C5C0 2628003C */   addiu     $t0, $s1, 0x3C
/* D2984 8011C5C4 24620014 */  addiu      $v0, $v1, 0x14
.Lrace_8011C5C8:
/* D2988 8011C5C8 AC620020 */  sw         $v0, 0x20($v1)
/* D298C 8011C5CC AFA40010 */  sw         $a0, 0x10($sp)
/* D2990 8011C5D0 AFA80014 */  sw         $t0, 0x14($sp)
/* D2994 8011C5D4 AFA00018 */  sw         $zero, 0x18($sp)
/* D2998 8011C5D8 8E840058 */  lw         $a0, 0x58($s4)
/* D299C 8011C5DC 0C038990 */  jal        func_race_800E2640
/* D29A0 8011C5E0 00000000 */   nop
/* D29A4 8011C5E4 10400023 */  beqz       $v0, .Lrace_8011C674
/* D29A8 8011C5E8 02A02021 */   addu      $a0, $s5, $zero
/* D29AC 8011C5EC 8E06FFF4 */  lw         $a2, -0xC($s0)
/* D29B0 8011C5F0 0C047B27 */  jal        func_race_8011EC9C
/* D29B4 8011C5F4 26E52E70 */   addiu     $a1, $s7, %lo(D_race_80132E70)
/* D29B8 8011C5F8 AE02FFFC */  sw         $v0, -0x4($s0)
.Lrace_8011C5FC:
/* D29BC 8011C5FC 8E02FFFC */  lw         $v0, -0x4($s0)
/* D29C0 8011C600 C4400024 */  lwc1       $f0, 0x24($v0)
/* D29C4 8011C604 E6200000 */  swc1       $f0, 0x0($s1)
/* D29C8 8011C608 C606FFDC */  lwc1       $f6, -0x24($s0)
/* D29CC 8011C60C C600FFE8 */  lwc1       $f0, -0x18($s0)
/* D29D0 8011C610 46003181 */  sub.s      $f6, $f6, $f0
/* D29D4 8011C614 46063182 */  mul.s      $f6, $f6, $f6
/* D29D8 8011C618 C604FFE0 */  lwc1       $f4, -0x20($s0)
/* D29DC 8011C61C C600FFEC */  lwc1       $f0, -0x14($s0)
/* D29E0 8011C620 46002101 */  sub.s      $f4, $f4, $f0
/* D29E4 8011C624 46042102 */  mul.s      $f4, $f4, $f4
/* D29E8 8011C628 C602FFE4 */  lwc1       $f2, -0x1C($s0)
/* D29EC 8011C62C C600FFF0 */  lwc1       $f0, -0x10($s0)
/* D29F0 8011C630 46001081 */  sub.s      $f2, $f2, $f0
/* D29F4 8011C634 46021082 */  mul.s      $f2, $f2, $f2
/* D29F8 8011C638 C4400028 */  lwc1       $f0, 0x28($v0)
/* D29FC 8011C63C 46043180 */  add.s      $f6, $f6, $f4
/* D2A00 8011C640 E600FFBC */  swc1       $f0, -0x44($s0)
/* D2A04 8011C644 C440002C */  lwc1       $f0, 0x2C($v0)
/* D2A08 8011C648 46023180 */  add.s      $f6, $f6, $f2
/* D2A0C 8011C64C E600FFC0 */  swc1       $f0, -0x40($s0)
/* D2A10 8011C650 4606A03C */  c.lt.s     $f20, $f6
/* D2A14 8011C654 00000000 */  nop
/* D2A18 8011C658 45000003 */  bc1f       .Lrace_8011C668
/* D2A1C 8011C65C E6060004 */   swc1      $f6, 0x4($s0)
/* D2A20 8011C660 46003506 */  mov.s      $f20, $f6
/* D2A24 8011C664 AFB10070 */  sw         $s1, 0x70($sp)
.Lrace_8011C668:
/* D2A28 8011C668 8E020000 */  lw         $v0, 0x0($s0)
/* D2A2C 8011C66C 34420002 */  ori        $v0, $v0, 0x2
/* D2A30 8011C670 AE020000 */  sw         $v0, 0x0($s0)
.Lrace_8011C674:
/* D2A34 8011C674 26100070 */  addiu      $s0, $s0, 0x70
.Lrace_8011C678:
/* D2A38 8011C678 08047144 */  j          .Lrace_8011C510
/* D2A3C 8011C67C 26310070 */   addiu     $s1, $s1, 0x70
.Lrace_8011C680:
/* D2A40 8011C680 8FA90070 */  lw         $t1, 0x70($sp)
/* D2A44 8011C684 5520000A */  bnel       $t1, $zero, .Lrace_8011C6B0
/* D2A48 8011C688 4600A084 */   sqrt.s    $f2, $f20
/* D2A4C 8011C68C 8FAA0074 */  lw         $t2, 0x74($sp)
/* D2A50 8011C690 11400104 */  beqz       $t2, .Lrace_8011CAA4
/* D2A54 8011C694 00000000 */   nop
/* D2A58 8011C698 C6A0000C */  lwc1       $f0, 0xC($s5)
/* D2A5C 8011C69C 3C01800D */  lui        $at, %hi(D_race_800CE31C)
/* D2A60 8011C6A0 C422E31C */  lwc1       $f2, %lo(D_race_800CE31C)($at)
/* D2A64 8011C6A4 46020001 */  sub.s      $f0, $f0, $f2
/* D2A68 8011C6A8 080472A9 */  j          .Lrace_8011CAA4
/* D2A6C 8011C6AC E6A0000C */   swc1      $f0, 0xC($s5)
.Lrace_8011C6B0:
/* D2A70 8011C6B0 46021032 */  c.eq.s     $f2, $f2
/* D2A74 8011C6B4 00000000 */  nop
/* D2A78 8011C6B8 45010004 */  bc1t       .Lrace_8011C6CC
/* D2A7C 8011C6BC 00000000 */   nop
/* D2A80 8011C6C0 0C006BC8 */  jal        sqrt
/* D2A84 8011C6C4 4600A306 */   mov.s     $f12, $f20
/* D2A88 8011C6C8 46000086 */  mov.s      $f2, $f0
.Lrace_8011C6CC:
/* D2A8C 8011C6CC 3C01800D */  lui        $at, %hi(D_race_800CE320)
/* D2A90 8011C6D0 C420E320 */  lwc1       $f0, %lo(D_race_800CE320)($at)
/* D2A94 8011C6D4 46001001 */  sub.s      $f0, $f2, $f0
/* D2A98 8011C6D8 44801000 */  mtc1       $zero, $f2
/* D2A9C 8011C6DC 4602003C */  c.lt.s     $f0, $f2
/* D2AA0 8011C6E0 00000000 */  nop
/* D2AA4 8011C6E4 45030001 */  bc1tl      .Lrace_8011C6EC
/* D2AA8 8011C6E8 46001006 */   mov.s     $f0, $f2
.Lrace_8011C6EC:
/* D2AAC 8011C6EC 26B1019C */  addiu      $s1, $s5, 0x19C
/* D2AB0 8011C6F0 26A40178 */  addiu      $a0, $s5, 0x178
/* D2AB4 8011C6F4 46001106 */  mov.s      $f4, $f2
/* D2AB8 8011C6F8 2405FFFE */  addiu      $a1, $zero, -0x2
/* D2ABC 8011C6FC 26A301E4 */  addiu      $v1, $s5, 0x1E4
/* D2AC0 8011C700 46000502 */  mul.s      $f20, $f0, $f0
/* D2AC4 8011C704 E6A40180 */  swc1       $f4, 0x180($s5)
/* D2AC8 8011C708 E6A4017C */  swc1       $f4, 0x17C($s5)
/* D2ACC 8011C70C E6A40178 */  swc1       $f4, 0x178($s5)
.Lrace_8011C710:
/* D2AD0 8011C710 0236102B */  sltu       $v0, $s1, $s6
/* D2AD4 8011C714 10400021 */  beqz       $v0, .Lrace_8011C79C
/* D2AD8 8011C718 00000000 */   nop
/* D2ADC 8011C71C C4600004 */  lwc1       $f0, 0x4($v1)
/* D2AE0 8011C720 4600A03E */  c.le.s     $f20, $f0
/* D2AE4 8011C724 00000000 */  nop
/* D2AE8 8011C728 45020014 */  bc1fl      .Lrace_8011C77C
/* D2AEC 8011C72C E464FFC0 */   swc1      $f4, -0x40($v1)
/* D2AF0 8011C730 C6A00178 */  lwc1       $f0, 0x178($s5)
/* D2AF4 8011C734 C6220000 */  lwc1       $f2, 0x0($s1)
/* D2AF8 8011C738 46020000 */  add.s      $f0, $f0, $f2
/* D2AFC 8011C73C E6A00178 */  swc1       $f0, 0x178($s5)
/* D2B00 8011C740 C4800004 */  lwc1       $f0, 0x4($a0)
/* D2B04 8011C744 C462FFBC */  lwc1       $f2, -0x44($v1)
/* D2B08 8011C748 46020000 */  add.s      $f0, $f0, $f2
/* D2B0C 8011C74C E4800004 */  swc1       $f0, 0x4($a0)
/* D2B10 8011C750 C4800008 */  lwc1       $f0, 0x8($a0)
/* D2B14 8011C754 C462FFC0 */  lwc1       $f2, -0x40($v1)
/* D2B18 8011C758 46020000 */  add.s      $f0, $f0, $f2
/* D2B1C 8011C75C E4800008 */  swc1       $f0, 0x8($a0)
/* D2B20 8011C760 8C620000 */  lw         $v0, 0x0($v1)
/* D2B24 8011C764 34420001 */  ori        $v0, $v0, 0x1
/* D2B28 8011C768 AC620000 */  sw         $v0, 0x0($v1)
/* D2B2C 8011C76C 8EA20370 */  lw         $v0, 0x370($s5)
/* D2B30 8011C770 24420001 */  addiu      $v0, $v0, 0x1
/* D2B34 8011C774 080471E4 */  j          .Lrace_8011C790
/* D2B38 8011C778 AEA20370 */   sw        $v0, 0x370($s5)
.Lrace_8011C77C:
/* D2B3C 8011C77C E464FFBC */  swc1       $f4, -0x44($v1)
/* D2B40 8011C780 E6240000 */  swc1       $f4, 0x0($s1)
/* D2B44 8011C784 8C620000 */  lw         $v0, 0x0($v1)
/* D2B48 8011C788 00451024 */  and        $v0, $v0, $a1
/* D2B4C 8011C78C AC620000 */  sw         $v0, 0x0($v1)
.Lrace_8011C790:
/* D2B50 8011C790 24630070 */  addiu      $v1, $v1, 0x70
/* D2B54 8011C794 080471C4 */  j          .Lrace_8011C710
/* D2B58 8011C798 26310070 */   addiu     $s1, $s1, 0x70
.Lrace_8011C79C:
/* D2B5C 8011C79C 8FA50070 */  lw         $a1, 0x70($sp)
/* D2B60 8011C7A0 0C047956 */  jal        func_race_8011E558
/* D2B64 8011C7A4 02A02021 */   addu      $a0, $s5, $zero
/* D2B68 8011C7A8 8EA20370 */  lw         $v0, 0x370($s5)
/* D2B6C 8011C7AC 2C420003 */  sltiu      $v0, $v0, 0x3
/* D2B70 8011C7B0 54400017 */  bnel       $v0, $zero, .Lrace_8011C810
/* D2B74 8011C7B4 26A40178 */   addiu     $a0, $s5, 0x178
/* D2B78 8011C7B8 26A200E4 */  addiu      $v0, $s5, 0xE4
/* D2B7C 8011C7BC C4400040 */  lwc1       $f0, 0x40($v0)
/* D2B80 8011C7C0 26A30178 */  addiu      $v1, $s5, 0x178
/* D2B84 8011C7C4 E6A00178 */  swc1       $f0, 0x178($s5)
/* D2B88 8011C7C8 C4400044 */  lwc1       $f0, 0x44($v0)
/* D2B8C 8011C7CC 26B1019C */  addiu      $s1, $s5, 0x19C
/* D2B90 8011C7D0 E4600004 */  swc1       $f0, 0x4($v1)
/* D2B94 8011C7D4 C4400048 */  lwc1       $f0, 0x48($v0)
/* D2B98 8011C7D8 0236102B */  sltu       $v0, $s1, $s6
/* D2B9C 8011C7DC 10400009 */  beqz       $v0, .Lrace_8011C804
/* D2BA0 8011C7E0 E4600008 */   swc1      $f0, 0x8($v1)
/* D2BA4 8011C7E4 26A301E4 */  addiu      $v1, $s5, 0x1E4
.Lrace_8011C7E8:
/* D2BA8 8011C7E8 8C620000 */  lw         $v0, 0x0($v1)
/* D2BAC 8011C7EC 26310070 */  addiu      $s1, $s1, 0x70
/* D2BB0 8011C7F0 34420001 */  ori        $v0, $v0, 0x1
/* D2BB4 8011C7F4 AC620000 */  sw         $v0, 0x0($v1)
/* D2BB8 8011C7F8 0236102B */  sltu       $v0, $s1, $s6
/* D2BBC 8011C7FC 1440FFFA */  bnez       $v0, .Lrace_8011C7E8
/* D2BC0 8011C800 24630070 */   addiu     $v1, $v1, 0x70
.Lrace_8011C804:
/* D2BC4 8011C804 24020004 */  addiu      $v0, $zero, 0x4
/* D2BC8 8011C808 08047206 */  j          .Lrace_8011C818
/* D2BCC 8011C80C AEA20370 */   sw        $v0, 0x370($s5)
.Lrace_8011C810:
/* D2BD0 8011C810 0C000F26 */  jal        func_80003C98
/* D2BD4 8011C814 00802821 */   addu      $a1, $a0, $zero
.Lrace_8011C818:
/* D2BD8 8011C818 8EA206AC */  lw         $v0, 0x6AC($s5)
/* D2BDC 8011C81C 30420008 */  andi       $v0, $v0, 0x8
/* D2BE0 8011C820 10400039 */  beqz       $v0, .Lrace_8011C908
/* D2BE4 8011C824 26B000E4 */   addiu     $s0, $s5, 0xE4
/* D2BE8 8011C828 8FAB0070 */  lw         $t3, 0x70($sp)
/* D2BEC 8011C82C C5600030 */  lwc1       $f0, 0x30($t3)
/* D2BF0 8011C830 C562000C */  lwc1       $f2, 0xC($t3)
/* D2BF4 8011C834 46020001 */  sub.s      $f0, $f0, $f2
/* D2BF8 8011C838 25620030 */  addiu      $v0, $t3, 0x30
/* D2BFC 8011C83C 2563000C */  addiu      $v1, $t3, 0xC
/* D2C00 8011C840 E7A00040 */  swc1       $f0, 0x40($sp)
/* D2C04 8011C844 C4400004 */  lwc1       $f0, 0x4($v0)
/* D2C08 8011C848 C4620004 */  lwc1       $f2, 0x4($v1)
/* D2C0C 8011C84C 46020001 */  sub.s      $f0, $f0, $f2
/* D2C10 8011C850 E7A00044 */  swc1       $f0, 0x44($sp)
/* D2C14 8011C854 C4420008 */  lwc1       $f2, 0x8($v0)
/* D2C18 8011C858 C4600008 */  lwc1       $f0, 0x8($v1)
/* D2C1C 8011C85C 46001081 */  sub.s      $f2, $f2, $f0
/* D2C20 8011C860 E7A20048 */  swc1       $f2, 0x48($sp)
/* D2C24 8011C864 C6A0065C */  lwc1       $f0, 0x65C($s5)
/* D2C28 8011C868 02002021 */  addu       $a0, $s0, $zero
/* D2C2C 8011C86C 46001080 */  add.s      $f2, $f2, $f0
/* D2C30 8011C870 27B10030 */  addiu      $s1, $sp, 0x30
/* D2C34 8011C874 02202821 */  addu       $a1, $s1, $zero
/* D2C38 8011C878 0C01595B */  jal        func_8005656C
/* D2C3C 8011C87C E7A20048 */   swc1      $f2, 0x48($sp)
/* D2C40 8011C880 02002021 */  addu       $a0, $s0, $zero
/* D2C44 8011C884 C7A60030 */  lwc1       $f6, 0x30($sp)
/* D2C48 8011C888 C7A00040 */  lwc1       $f0, 0x40($sp)
/* D2C4C 8011C88C C7A40034 */  lwc1       $f4, 0x34($sp)
/* D2C50 8011C890 46003180 */  add.s      $f6, $f6, $f0
/* D2C54 8011C894 C7A00044 */  lwc1       $f0, 0x44($sp)
/* D2C58 8011C898 C7A20048 */  lwc1       $f2, 0x48($sp)
/* D2C5C 8011C89C 46002100 */  add.s      $f4, $f4, $f0
/* D2C60 8011C8A0 C7A00038 */  lwc1       $f0, 0x38($sp)
/* D2C64 8011C8A4 02202821 */  addu       $a1, $s1, $zero
/* D2C68 8011C8A8 46020000 */  add.s      $f0, $f0, $f2
/* D2C6C 8011C8AC E7A60030 */  swc1       $f6, 0x30($sp)
/* D2C70 8011C8B0 E7A40034 */  swc1       $f4, 0x34($sp)
/* D2C74 8011C8B4 0C015962 */  jal        func_80056588
/* D2C78 8011C8B8 E7A00038 */   swc1      $f0, 0x38($sp)
/* D2C7C 8011C8BC 26B1019C */  addiu      $s1, $s5, 0x19C
/* D2C80 8011C8C0 26A301B0 */  addiu      $v1, $s5, 0x1B0
.Lrace_8011C8C4:
/* D2C84 8011C8C4 0236102B */  sltu       $v0, $s1, $s6
/* D2C88 8011C8C8 1040000F */  beqz       $v0, .Lrace_8011C908
/* D2C8C 8011C8CC 26310070 */   addiu     $s1, $s1, 0x70
/* D2C90 8011C8D0 C460FFF8 */  lwc1       $f0, -0x8($v1)
/* D2C94 8011C8D4 C7A20040 */  lwc1       $f2, 0x40($sp)
/* D2C98 8011C8D8 46020000 */  add.s      $f0, $f0, $f2
/* D2C9C 8011C8DC E460FFF8 */  swc1       $f0, -0x8($v1)
/* D2CA0 8011C8E0 C460FFFC */  lwc1       $f0, -0x4($v1)
/* D2CA4 8011C8E4 C7A20044 */  lwc1       $f2, 0x44($sp)
/* D2CA8 8011C8E8 46020000 */  add.s      $f0, $f0, $f2
/* D2CAC 8011C8EC C4620000 */  lwc1       $f2, 0x0($v1)
/* D2CB0 8011C8F0 E460FFFC */  swc1       $f0, -0x4($v1)
/* D2CB4 8011C8F4 C7A00048 */  lwc1       $f0, 0x48($sp)
/* D2CB8 8011C8F8 46001080 */  add.s      $f2, $f2, $f0
/* D2CBC 8011C8FC E4620000 */  swc1       $f2, 0x0($v1)
/* D2CC0 8011C900 08047231 */  j          .Lrace_8011C8C4
/* D2CC4 8011C904 24630070 */   addiu     $v1, $v1, 0x70
.Lrace_8011C908:
/* D2CC8 8011C908 8FAC0078 */  lw         $t4, 0x78($sp)
/* D2CCC 8011C90C 11800033 */  beqz       $t4, .Lrace_8011C9DC
/* D2CD0 8011C910 00000000 */   nop
/* D2CD4 8011C914 8EA206C8 */  lw         $v0, 0x6C8($s5)
/* D2CD8 8011C918 2C420191 */  sltiu      $v0, $v0, 0x191
/* D2CDC 8011C91C 1440002F */  bnez       $v0, .Lrace_8011C9DC
/* D2CE0 8011C920 26A30004 */   addiu     $v1, $s5, 0x4
/* D2CE4 8011C924 C6A60004 */  lwc1       $f6, 0x4($s5)
/* D2CE8 8011C928 C6A00178 */  lwc1       $f0, 0x178($s5)
/* D2CEC 8011C92C 46003182 */  mul.s      $f6, $f6, $f0
/* D2CF0 8011C930 26A20178 */  addiu      $v0, $s5, 0x178
/* D2CF4 8011C934 C4640004 */  lwc1       $f4, 0x4($v1)
/* D2CF8 8011C938 C4400004 */  lwc1       $f0, 0x4($v0)
/* D2CFC 8011C93C 46002102 */  mul.s      $f4, $f4, $f0
/* D2D00 8011C940 C4420008 */  lwc1       $f2, 0x8($v0)
/* D2D04 8011C944 C4600008 */  lwc1       $f0, 0x8($v1)
/* D2D08 8011C948 46020002 */  mul.s      $f0, $f0, $f2
/* D2D0C 8011C94C 46043180 */  add.s      $f6, $f6, $f4
/* D2D10 8011C950 46003500 */  add.s      $f20, $f6, $f0
/* D2D14 8011C954 44800000 */  mtc1       $zero, $f0
/* D2D18 8011C958 4600A03C */  c.lt.s     $f20, $f0
/* D2D1C 8011C95C 00000000 */  nop
/* D2D20 8011C960 4500001E */  bc1f       .Lrace_8011C9DC
/* D2D24 8011C964 00000000 */   nop
/* D2D28 8011C968 3C01800D */  lui        $at, %hi(D_race_800CE324)
/* D2D2C 8011C96C C420E324 */  lwc1       $f0, %lo(D_race_800CE324)($at)
/* D2D30 8011C970 4600A03C */  c.lt.s     $f20, $f0
/* D2D34 8011C974 00000000 */  nop
/* D2D38 8011C978 45000015 */  bc1f       .Lrace_8011C9D0
/* D2D3C 8011C97C 26B1019C */   addiu     $s1, $s5, 0x19C
/* D2D40 8011C980 3C01800D */  lui        $at, %hi(D_race_800CE328)
/* D2D44 8011C984 C420E328 */  lwc1       $f0, %lo(D_race_800CE328)($at)
/* D2D48 8011C988 4600A502 */  mul.s      $f20, $f20, $f0
/* D2D4C 8011C98C C6A0000C */  lwc1       $f0, 0xC($s5)
/* D2D50 8011C990 46140001 */  sub.s      $f0, $f0, $f20
/* D2D54 8011C994 0236102B */  sltu       $v0, $s1, $s6
/* D2D58 8011C998 AEA00370 */  sw         $zero, 0x370($s5)
/* D2D5C 8011C99C 10400041 */  beqz       $v0, .Lrace_8011CAA4
/* D2D60 8011C9A0 E6A0000C */   swc1      $f0, 0xC($s5)
/* D2D64 8011C9A4 2404FFFE */  addiu      $a0, $zero, -0x2
/* D2D68 8011C9A8 26A301E4 */  addiu      $v1, $s5, 0x1E4
.Lrace_8011C9AC:
/* D2D6C 8011C9AC 8C620000 */  lw         $v0, 0x0($v1)
/* D2D70 8011C9B0 26310070 */  addiu      $s1, $s1, 0x70
/* D2D74 8011C9B4 00441024 */  and        $v0, $v0, $a0
/* D2D78 8011C9B8 AC620000 */  sw         $v0, 0x0($v1)
/* D2D7C 8011C9BC 0236102B */  sltu       $v0, $s1, $s6
/* D2D80 8011C9C0 1440FFFA */  bnez       $v0, .Lrace_8011C9AC
/* D2D84 8011C9C4 24630070 */   addiu     $v1, $v1, 0x70
/* D2D88 8011C9C8 080472A9 */  j          .Lrace_8011CAA4
/* D2D8C 8011C9CC 00000000 */   nop
.Lrace_8011C9D0:
/* D2D90 8011C9D0 C6A0000C */  lwc1       $f0, 0xC($s5)
/* D2D94 8011C9D4 46140001 */  sub.s      $f0, $f0, $f20
/* D2D98 8011C9D8 E6A0000C */  swc1       $f0, 0xC($s5)
.Lrace_8011C9DC:
/* D2D9C 8011C9DC C6A20180 */  lwc1       $f2, 0x180($s5)
/* D2DA0 8011C9E0 C6A00168 */  lwc1       $f0, 0x168($s5)
/* D2DA4 8011C9E4 46001502 */  mul.s      $f20, $f2, $f0
/* D2DA8 8011C9E8 C6A20178 */  lwc1       $f2, 0x178($s5)
/* D2DAC 8011C9EC 46141082 */  mul.s      $f2, $f2, $f20
/* D2DB0 8011C9F0 C6A4017C */  lwc1       $f4, 0x17C($s5)
/* D2DB4 8011C9F4 46142102 */  mul.s      $f4, $f4, $f20
/* D2DB8 8011C9F8 C6A00180 */  lwc1       $f0, 0x180($s5)
/* D2DBC 8011C9FC 3C048013 */  lui        $a0, %hi(D_race_80132EB0)
/* D2DC0 8011CA00 46140002 */  mul.s      $f0, $f0, $f20
/* D2DC4 8011CA04 24832EB0 */  addiu      $v1, $a0, %lo(D_race_80132EB0)
/* D2DC8 8011CA08 8EA20370 */  lw         $v0, 0x370($s5)
/* D2DCC 8011CA0C C6A60168 */  lwc1       $f6, 0x168($s5)
/* D2DD0 8011CA10 24420008 */  addiu      $v0, $v0, 0x8
/* D2DD4 8011CA14 46001087 */  neg.s      $f2, $f2
/* D2DD8 8011CA18 E6A20184 */  swc1       $f2, 0x184($s5)
/* D2DDC 8011CA1C 46003181 */  sub.s      $f6, $f6, $f0
/* D2DE0 8011CA20 44821000 */  mtc1       $v0, $f2
/* D2DE4 8011CA24 468010A0 */  cvt.s.w    $f2, $f2
/* D2DE8 8011CA28 3C01800D */  lui        $at, %hi(D_race_800CE32C)
/* D2DEC 8011CA2C C420E32C */  lwc1       $f0, %lo(D_race_800CE32C)($at)
/* D2DF0 8011CA30 46002107 */  neg.s      $f4, $f4
/* D2DF4 8011CA34 E6A40188 */  swc1       $f4, 0x188($s5)
/* D2DF8 8011CA38 46020003 */  div.s      $f0, $f0, $f2
/* D2DFC 8011CA3C E6A6018C */  swc1       $f6, 0x18C($s5)
/* D2E00 8011CA40 AC802EB0 */  sw         $zero, %lo(D_race_80132EB0)($a0)
/* D2E04 8011CA44 AC600004 */  sw         $zero, 0x4($v1)
/* D2E08 8011CA48 C6A20168 */  lwc1       $f2, 0x168($s5)
/* D2E0C 8011CA4C 46000007 */  neg.s      $f0, $f0
/* D2E10 8011CA50 46001082 */  mul.s      $f2, $f2, $f0
/* D2E14 8011CA54 26B1019C */  addiu      $s1, $s5, 0x19C
/* D2E18 8011CA58 0236102B */  sltu       $v0, $s1, $s6
/* D2E1C 8011CA5C 10400011 */  beqz       $v0, .Lrace_8011CAA4
/* D2E20 8011CA60 E4620008 */   swc1      $f2, 0x8($v1)
/* D2E24 8011CA64 00801821 */  addu       $v1, $a0, $zero
.Lrace_8011CA68:
/* D2E28 8011CA68 8E220048 */  lw         $v0, 0x48($s1)
/* D2E2C 8011CA6C 30420001 */  andi       $v0, $v0, 0x1
/* D2E30 8011CA70 50400009 */  beql       $v0, $zero, .Lrace_8011CA98
/* D2E34 8011CA74 26310070 */   addiu     $s1, $s1, 0x70
/* D2E38 8011CA78 246C2EB0 */  addiu      $t4, $v1, %lo(D_race_80132EB0)
/* D2E3C 8011CA7C 8D890000 */  lw         $t1, 0x0($t4)
/* D2E40 8011CA80 8D8A0004 */  lw         $t2, 0x4($t4)
/* D2E44 8011CA84 8D8B0008 */  lw         $t3, 0x8($t4)
/* D2E48 8011CA88 AE290000 */  sw         $t1, 0x0($s1)
/* D2E4C 8011CA8C AE2A0004 */  sw         $t2, 0x4($s1)
/* D2E50 8011CA90 AE2B0008 */  sw         $t3, 0x8($s1)
/* D2E54 8011CA94 26310070 */  addiu      $s1, $s1, 0x70
.Lrace_8011CA98:
/* D2E58 8011CA98 0236102B */  sltu       $v0, $s1, $s6
/* D2E5C 8011CA9C 1440FFF2 */  bnez       $v0, .Lrace_8011CA68
/* D2E60 8011CAA0 00000000 */   nop
.Lrace_8011CAA4:
/* D2E64 8011CAA4 8FBF00A4 */  lw         $ra, 0xA4($sp)
/* D2E68 8011CAA8 8FBE00A0 */  lw         $fp, 0xA0($sp)
/* D2E6C 8011CAAC 8FB7009C */  lw         $s7, 0x9C($sp)
/* D2E70 8011CAB0 8FB60098 */  lw         $s6, 0x98($sp)
/* D2E74 8011CAB4 8FB50094 */  lw         $s5, 0x94($sp)
/* D2E78 8011CAB8 8FB40090 */  lw         $s4, 0x90($sp)
/* D2E7C 8011CABC 8FB3008C */  lw         $s3, 0x8C($sp)
/* D2E80 8011CAC0 8FB20088 */  lw         $s2, 0x88($sp)
/* D2E84 8011CAC4 8FB10084 */  lw         $s1, 0x84($sp)
/* D2E88 8011CAC8 8FB00080 */  lw         $s0, 0x80($sp)
/* D2E8C 8011CACC D7B800B8 */  ldc1       $f24, 0xB8($sp)
/* D2E90 8011CAD0 D7B600B0 */  ldc1       $f22, 0xB0($sp)
/* D2E94 8011CAD4 D7B400A8 */  ldc1       $f20, 0xA8($sp)
/* D2E98 8011CAD8 03E00008 */  jr         $ra
/* D2E9C 8011CADC 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_race_8011CAE0
/* D2EA0 8011CAE0 C484065C */  lwc1       $f4, 0x65C($a0)
/* D2EA4 8011CAE4 C4800660 */  lwc1       $f0, 0x660($a0)
/* D2EA8 8011CAE8 4600203C */  c.lt.s     $f4, $f0
/* D2EAC 8011CAEC 00000000 */  nop
/* D2EB0 8011CAF0 4500000D */  bc1f       .Lrace_8011CB28
/* D2EB4 8011CAF4 00000000 */   nop
/* D2EB8 8011CAF8 C4800664 */  lwc1       $f0, 0x664($a0)
/* D2EBC 8011CAFC 44851000 */  mtc1       $a1, $f2
/* D2EC0 8011CB00 468010A0 */  cvt.s.w    $f2, $f2
/* D2EC4 8011CB04 46020002 */  mul.s      $f0, $f0, $f2
/* D2EC8 8011CB08 3C01800D */  lui        $at, %hi(D_race_800CE330)
/* D2ECC 8011CB0C C422E330 */  lwc1       $f2, %lo(D_race_800CE330)($at)
/* D2ED0 8011CB10 46020002 */  mul.s      $f0, $f0, $f2
/* D2ED4 8011CB14 46002000 */  add.s      $f0, $f4, $f0
/* D2ED8 8011CB18 C4820660 */  lwc1       $f2, 0x660($a0)
/* D2EDC 8011CB1C 4600103C */  c.lt.s     $f2, $f0
/* D2EE0 8011CB20 080472D9 */  j          .Lrace_8011CB64
/* D2EE4 8011CB24 E480065C */   swc1      $f0, 0x65C($a0)
.Lrace_8011CB28:
/* D2EE8 8011CB28 4604003C */  c.lt.s     $f0, $f4
/* D2EEC 8011CB2C 00000000 */  nop
/* D2EF0 8011CB30 4500000F */  bc1f       .Lrace_8011CB70
/* D2EF4 8011CB34 00000000 */   nop
/* D2EF8 8011CB38 C4800664 */  lwc1       $f0, 0x664($a0)
/* D2EFC 8011CB3C 44851000 */  mtc1       $a1, $f2
/* D2F00 8011CB40 468010A0 */  cvt.s.w    $f2, $f2
/* D2F04 8011CB44 46020002 */  mul.s      $f0, $f0, $f2
/* D2F08 8011CB48 3C01800D */  lui        $at, %hi(D_race_800CE334)
/* D2F0C 8011CB4C C422E334 */  lwc1       $f2, %lo(D_race_800CE334)($at)
/* D2F10 8011CB50 46020002 */  mul.s      $f0, $f0, $f2
/* D2F14 8011CB54 46002001 */  sub.s      $f0, $f4, $f0
/* D2F18 8011CB58 C4820660 */  lwc1       $f2, 0x660($a0)
/* D2F1C 8011CB5C E480065C */  swc1       $f0, 0x65C($a0)
/* D2F20 8011CB60 4602003C */  c.lt.s     $f0, $f2
.Lrace_8011CB64:
/* D2F24 8011CB64 00000000 */  nop
/* D2F28 8011CB68 45030001 */  bc1tl      .Lrace_8011CB70
/* D2F2C 8011CB6C E482065C */   swc1      $f2, 0x65C($a0)
.Lrace_8011CB70:
/* D2F30 8011CB70 C484066C */  lwc1       $f4, 0x66C($a0)
/* D2F34 8011CB74 C4800668 */  lwc1       $f0, 0x668($a0)
/* D2F38 8011CB78 4600203C */  c.lt.s     $f4, $f0
/* D2F3C 8011CB7C 00000000 */  nop
/* D2F40 8011CB80 4500000B */  bc1f       .Lrace_8011CBB0
/* D2F44 8011CB84 00000000 */   nop
/* D2F48 8011CB88 3C01800D */  lui        $at, %hi(D_race_800CE338)
/* D2F4C 8011CB8C C422E338 */  lwc1       $f2, %lo(D_race_800CE338)($at)
/* D2F50 8011CB90 44850000 */  mtc1       $a1, $f0
/* D2F54 8011CB94 46800020 */  cvt.s.w    $f0, $f0
/* D2F58 8011CB98 46020002 */  mul.s      $f0, $f0, $f2
/* D2F5C 8011CB9C 46002000 */  add.s      $f0, $f4, $f0
/* D2F60 8011CBA0 C4820668 */  lwc1       $f2, 0x668($a0)
/* D2F64 8011CBA4 4600103C */  c.lt.s     $f2, $f0
/* D2F68 8011CBA8 080472F9 */  j          .Lrace_8011CBE4
/* D2F6C 8011CBAC E480066C */   swc1      $f0, 0x66C($a0)
.Lrace_8011CBB0:
/* D2F70 8011CBB0 4604003C */  c.lt.s     $f0, $f4
/* D2F74 8011CBB4 00000000 */  nop
/* D2F78 8011CBB8 4500000D */  bc1f       .Lrace_8011CBF0
/* D2F7C 8011CBBC 00000000 */   nop
/* D2F80 8011CBC0 3C01800D */  lui        $at, %hi(D_race_800CE33C)
/* D2F84 8011CBC4 C422E33C */  lwc1       $f2, %lo(D_race_800CE33C)($at)
/* D2F88 8011CBC8 44850000 */  mtc1       $a1, $f0
/* D2F8C 8011CBCC 46800020 */  cvt.s.w    $f0, $f0
/* D2F90 8011CBD0 46020002 */  mul.s      $f0, $f0, $f2
/* D2F94 8011CBD4 46002001 */  sub.s      $f0, $f4, $f0
/* D2F98 8011CBD8 C4820668 */  lwc1       $f2, 0x668($a0)
/* D2F9C 8011CBDC E480066C */  swc1       $f0, 0x66C($a0)
/* D2FA0 8011CBE0 4602003C */  c.lt.s     $f0, $f2
.Lrace_8011CBE4:
/* D2FA4 8011CBE4 00000000 */  nop
/* D2FA8 8011CBE8 45030001 */  bc1tl      .Lrace_8011CBF0
/* D2FAC 8011CBEC E482066C */   swc1      $f2, 0x66C($a0)
.Lrace_8011CBF0:
/* D2FB0 8011CBF0 03E00008 */  jr         $ra
/* D2FB4 8011CBF4 00000000 */   nop

glabel func_race_8011CBF8
/* D2FB8 8011CBF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D2FBC 8011CBFC AFBF0010 */  sw         $ra, 0x10($sp)
/* D2FC0 8011CC00 8CA20000 */  lw         $v0, 0x0($a1)
/* D2FC4 8011CC04 8CA30004 */  lw         $v1, 0x4($a1)
/* D2FC8 8011CC08 8CA80008 */  lw         $t0, 0x8($a1)
/* D2FCC 8011CC0C AC82035C */  sw         $v0, 0x35C($a0)
/* D2FD0 8011CC10 AC830360 */  sw         $v1, 0x360($a0)
/* D2FD4 8011CC14 AC880364 */  sw         $t0, 0x364($a0)
/* D2FD8 8011CC18 AC860368 */  sw         $a2, 0x368($a0)
/* D2FDC 8011CC1C 0C047BE0 */  jal        func_race_8011EF80
/* D2FE0 8011CC20 AC87036C */   sw        $a3, 0x36C($a0)
/* D2FE4 8011CC24 8FBF0010 */  lw         $ra, 0x10($sp)
/* D2FE8 8011CC28 03E00008 */  jr         $ra
/* D2FEC 8011CC2C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011CC30
/* D2FF0 8011CC30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D2FF4 8011CC34 00803821 */  addu       $a3, $a0, $zero
/* D2FF8 8011CC38 00051040 */  sll        $v0, $a1, 1
/* D2FFC 8011CC3C 00451021 */  addu       $v0, $v0, $a1
/* D3000 8011CC40 00021080 */  sll        $v0, $v0, 2
/* D3004 8011CC44 00E21821 */  addu       $v1, $a3, $v0
/* D3008 8011CC48 24450374 */  addiu      $a1, $v0, 0x374
/* D300C 8011CC4C 244203A4 */  addiu      $v0, $v0, 0x3A4
/* D3010 8011CC50 24E400E4 */  addiu      $a0, $a3, 0xE4
/* D3014 8011CC54 00E52821 */  addu       $a1, $a3, $a1
/* D3018 8011CC58 AFBF0010 */  sw         $ra, 0x10($sp)
/* D301C 8011CC5C 8CC80000 */  lw         $t0, 0x0($a2)
/* D3020 8011CC60 8CC90004 */  lw         $t1, 0x4($a2)
/* D3024 8011CC64 8CCA0008 */  lw         $t2, 0x8($a2)
/* D3028 8011CC68 AC680374 */  sw         $t0, 0x374($v1)
/* D302C 8011CC6C AC690378 */  sw         $t1, 0x378($v1)
/* D3030 8011CC70 AC6A037C */  sw         $t2, 0x37C($v1)
/* D3034 8011CC74 0C0158C3 */  jal        func_8005630C
/* D3038 8011CC78 00E23021 */   addu      $a2, $a3, $v0
/* D303C 8011CC7C 8FBF0010 */  lw         $ra, 0x10($sp)
/* D3040 8011CC80 03E00008 */  jr         $ra
/* D3044 8011CC84 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011CC88
/* D3048 8011CC88 44851000 */  mtc1       $a1, $f2
/* D304C 8011CC8C 44802000 */  mtc1       $zero, $f4
/* D3050 8011CC90 4602203C */  c.lt.s     $f4, $f2
/* D3054 8011CC94 00000000 */  nop
/* D3058 8011CC98 45000013 */  bc1f       .Lrace_8011CCE8
/* D305C 8011CC9C 00000000 */   nop
/* D3060 8011CCA0 3C01800D */  lui        $at, %hi(D_race_800CE340)
/* D3064 8011CCA4 C420E340 */  lwc1       $f0, %lo(D_race_800CE340)($at)
/* D3068 8011CCA8 4600103C */  c.lt.s     $f2, $f0
/* D306C 8011CCAC 00000000 */  nop
/* D3070 8011CCB0 45000003 */  bc1f       .Lrace_8011CCC0
/* D3074 8011CCB4 00000000 */   nop
.Lrace_8011CCB8:
/* D3078 8011CCB8 03E00008 */  jr         $ra
/* D307C 8011CCBC E4800650 */   swc1      $f0, 0x650($a0)
.Lrace_8011CCC0:
/* D3080 8011CCC0 3C01800D */  lui        $at, %hi(D_race_800CE344)
/* D3084 8011CCC4 C420E344 */  lwc1       $f0, %lo(D_race_800CE344)($at)
/* D3088 8011CCC8 4602003C */  c.lt.s     $f0, $f2
/* D308C 8011CCCC 00000000 */  nop
/* D3090 8011CCD0 45000003 */  bc1f       .Lrace_8011CCE0
/* D3094 8011CCD4 00000000 */   nop
.Lrace_8011CCD8:
/* D3098 8011CCD8 03E00008 */  jr         $ra
/* D309C 8011CCDC E4840650 */   swc1      $f4, 0x650($a0)
.Lrace_8011CCE0:
/* D30A0 8011CCE0 03E00008 */  jr         $ra
/* D30A4 8011CCE4 E4820650 */   swc1      $f2, 0x650($a0)
.Lrace_8011CCE8:
/* D30A8 8011CCE8 4604103C */  c.lt.s     $f2, $f4
/* D30AC 8011CCEC 00000000 */  nop
/* D30B0 8011CCF0 4500FFF9 */  bc1f       .Lrace_8011CCD8
/* D30B4 8011CCF4 00000000 */   nop
/* D30B8 8011CCF8 3C01800D */  lui        $at, %hi(D_race_800CE348)
/* D30BC 8011CCFC C420E348 */  lwc1       $f0, %lo(D_race_800CE348)($at)
/* D30C0 8011CD00 4602003C */  c.lt.s     $f0, $f2
/* D30C4 8011CD04 00000000 */  nop
/* D30C8 8011CD08 4501FFEB */  bc1t       .Lrace_8011CCB8
/* D30CC 8011CD0C 00000000 */   nop
/* D30D0 8011CD10 3C01800D */  lui        $at, %hi(D_race_800CE34C)
/* D30D4 8011CD14 C420E34C */  lwc1       $f0, %lo(D_race_800CE34C)($at)
/* D30D8 8011CD18 4600103C */  c.lt.s     $f2, $f0
/* D30DC 8011CD1C 00000000 */  nop
/* D30E0 8011CD20 4500FFEF */  bc1f       .Lrace_8011CCE0
/* D30E4 8011CD24 00000000 */   nop
/* D30E8 8011CD28 08047336 */  j          .Lrace_8011CCD8
/* D30EC 8011CD2C 00000000 */   nop

glabel func_race_8011CD30
/* D30F0 8011CD30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D30F4 8011CD34 248200E4 */  addiu      $v0, $a0, 0xE4
/* D30F8 8011CD38 AFBF0010 */  sw         $ra, 0x10($sp)
/* D30FC 8011CD3C C4400028 */  lwc1       $f0, 0x28($v0)
/* D3100 8011CD40 E480016C */  swc1       $f0, 0x16C($a0)
/* D3104 8011CD44 C440002C */  lwc1       $f0, 0x2C($v0)
/* D3108 8011CD48 2483016C */  addiu      $v1, $a0, 0x16C
/* D310C 8011CD4C E4600004 */  swc1       $f0, 0x4($v1)
/* D3110 8011CD50 C4400030 */  lwc1       $f0, 0x30($v0)
/* D3114 8011CD54 0C047463 */  jal        func_race_8011D18C
/* D3118 8011CD58 E4600008 */   swc1      $f0, 0x8($v1)
/* D311C 8011CD5C 8FBF0010 */  lw         $ra, 0x10($sp)
/* D3120 8011CD60 03E00008 */  jr         $ra
/* D3124 8011CD64 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011CD68
/* D3128 8011CD68 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* D312C 8011CD6C AFB1004C */  sw         $s1, 0x4C($sp)
/* D3130 8011CD70 00808821 */  addu       $s1, $a0, $zero
/* D3134 8011CD74 262200E4 */  addiu      $v0, $s1, 0xE4
/* D3138 8011CD78 AFBF0054 */  sw         $ra, 0x54($sp)
/* D313C 8011CD7C AFB20050 */  sw         $s2, 0x50($sp)
/* D3140 8011CD80 AFB00048 */  sw         $s0, 0x48($sp)
/* D3144 8011CD84 F7B40058 */  sdc1       $f20, 0x58($sp)
/* D3148 8011CD88 C4480028 */  lwc1       $f8, 0x28($v0)
/* D314C 8011CD8C E7A80020 */  swc1       $f8, 0x20($sp)
/* D3150 8011CD90 C44A002C */  lwc1       $f10, 0x2C($v0)
/* D3154 8011CD94 E7AA0024 */  swc1       $f10, 0x24($sp)
/* D3158 8011CD98 C44C0030 */  lwc1       $f12, 0x30($v0)
/* D315C 8011CD9C E7AC0028 */  swc1       $f12, 0x28($sp)
/* D3160 8011CDA0 8E220370 */  lw         $v0, 0x370($s1)
/* D3164 8011CDA4 10400035 */  beqz       $v0, .Lrace_8011CE7C
/* D3168 8011CDA8 00A09021 */   addu      $s2, $a1, $zero
/* D316C 8011CDAC C622061C */  lwc1       $f2, 0x61C($s1)
/* D3170 8011CDB0 3C01800D */  lui        $at, %hi(D_race_800CE350)
/* D3174 8011CDB4 C420E350 */  lwc1       $f0, %lo(D_race_800CE350)($at)
/* D3178 8011CDB8 4600103C */  c.lt.s     $f2, $f0
/* D317C 8011CDBC 00000000 */  nop
/* D3180 8011CDC0 4501002F */  bc1t       .Lrace_8011CE80
/* D3184 8011CDC4 02202021 */   addu      $a0, $s1, $zero
/* D3188 8011CDC8 2C420003 */  sltiu      $v0, $v0, 0x3
/* D318C 8011CDCC 10400021 */  beqz       $v0, .Lrace_8011CE54
/* D3190 8011CDD0 26220178 */   addiu     $v0, $s1, 0x178
/* D3194 8011CDD4 C6240178 */  lwc1       $f4, 0x178($s1)
/* D3198 8011CDD8 46082182 */  mul.s      $f6, $f4, $f8
/* D319C 8011CDDC C4420004 */  lwc1       $f2, 0x4($v0)
/* D31A0 8011CDE0 460A1082 */  mul.s      $f2, $f2, $f10
/* D31A4 8011CDE4 C4400008 */  lwc1       $f0, 0x8($v0)
/* D31A8 8011CDE8 460C0002 */  mul.s      $f0, $f0, $f12
/* D31AC 8011CDEC 46023180 */  add.s      $f6, $f6, $f2
/* D31B0 8011CDF0 46003180 */  add.s      $f6, $f6, $f0
/* D31B4 8011CDF4 46062102 */  mul.s      $f4, $f4, $f6
/* D31B8 8011CDF8 E7A40030 */  swc1       $f4, 0x30($sp)
/* D31BC 8011CDFC C4400004 */  lwc1       $f0, 0x4($v0)
/* D31C0 8011CE00 46060002 */  mul.s      $f0, $f0, $f6
/* D31C4 8011CE04 E7A00034 */  swc1       $f0, 0x34($sp)
/* D31C8 8011CE08 C4420008 */  lwc1       $f2, 0x8($v0)
/* D31CC 8011CE0C 46061082 */  mul.s      $f2, $f2, $f6
/* D31D0 8011CE10 46044101 */  sub.s      $f4, $f8, $f4
/* D31D4 8011CE14 27B00020 */  addiu      $s0, $sp, 0x20
/* D31D8 8011CE18 02002021 */  addu       $a0, $s0, $zero
/* D31DC 8011CE1C 46005001 */  sub.s      $f0, $f10, $f0
/* D31E0 8011CE20 02002821 */  addu       $a1, $s0, $zero
/* D31E4 8011CE24 E7A40020 */  swc1       $f4, 0x20($sp)
/* D31E8 8011CE28 46026101 */  sub.s      $f4, $f12, $f2
/* D31EC 8011CE2C E7A00024 */  swc1       $f0, 0x24($sp)
/* D31F0 8011CE30 E7A20038 */  swc1       $f2, 0x38($sp)
/* D31F4 8011CE34 0C000F26 */  jal        func_80003C98
/* D31F8 8011CE38 E7A40028 */   swc1      $f4, 0x28($sp)
/* D31FC 8011CE3C 02202021 */  addu       $a0, $s1, $zero
/* D3200 8011CE40 02402821 */  addu       $a1, $s2, $zero
/* D3204 8011CE44 0C047407 */  jal        func_race_8011D01C
/* D3208 8011CE48 02003021 */   addu      $a2, $s0, $zero
/* D320C 8011CE4C 08047400 */  j          .Lrace_8011D000
/* D3210 8011CE50 00000000 */   nop
.Lrace_8011CE54:
/* D3214 8011CE54 8E2206AC */  lw         $v0, 0x6AC($s1)
/* D3218 8011CE58 30420001 */  andi       $v0, $v0, 0x1
/* D321C 8011CE5C 10400008 */  beqz       $v0, .Lrace_8011CE80
/* D3220 8011CE60 02202021 */   addu      $a0, $s1, $zero
/* D3224 8011CE64 C620062C */  lwc1       $f0, 0x62C($s1)
/* D3228 8011CE68 44807000 */  mtc1       $zero, $f14
/* D322C 8011CE6C 460E003E */  c.le.s     $f0, $f14
/* D3230 8011CE70 00000000 */  nop
/* D3234 8011CE74 45000007 */  bc1f       .Lrace_8011CE94
/* D3238 8011CE78 2622016C */   addiu     $v0, $s1, 0x16C
.Lrace_8011CE7C:
/* D323C 8011CE7C 02202021 */  addu       $a0, $s1, $zero
.Lrace_8011CE80:
/* D3240 8011CE80 02402821 */  addu       $a1, $s2, $zero
/* D3244 8011CE84 0C047407 */  jal        func_race_8011D01C
/* D3248 8011CE88 27A60020 */   addiu     $a2, $sp, 0x20
/* D324C 8011CE8C 08047400 */  j          .Lrace_8011D000
/* D3250 8011CE90 00000000 */   nop
.Lrace_8011CE94:
/* D3254 8011CE94 C624016C */  lwc1       $f4, 0x16C($s1)
/* D3258 8011CE98 46044102 */  mul.s      $f4, $f8, $f4
/* D325C 8011CE9C C4420004 */  lwc1       $f2, 0x4($v0)
/* D3260 8011CEA0 46025082 */  mul.s      $f2, $f10, $f2
/* D3264 8011CEA4 C4400008 */  lwc1       $f0, 0x8($v0)
/* D3268 8011CEA8 46006002 */  mul.s      $f0, $f12, $f0
/* D326C 8011CEAC 46022100 */  add.s      $f4, $f4, $f2
/* D3270 8011CEB0 46002180 */  add.s      $f6, $f4, $f0
/* D3274 8011CEB4 3C01800D */  lui        $at, %hi(D_race_800CE354)
/* D3278 8011CEB8 C424E354 */  lwc1       $f4, %lo(D_race_800CE354)($at)
/* D327C 8011CEBC 4606203C */  c.lt.s     $f4, $f6
/* D3280 8011CEC0 00000000 */  nop
/* D3284 8011CEC4 45030001 */  bc1tl      .Lrace_8011CECC
/* D3288 8011CEC8 46002186 */   mov.s     $f6, $f4
.Lrace_8011CECC:
/* D328C 8011CECC C6220654 */  lwc1       $f2, 0x654($s1)
/* D3290 8011CED0 44920000 */  mtc1       $s2, $f0
/* D3294 8011CED4 46800020 */  cvt.s.w    $f0, $f0
/* D3298 8011CED8 46001502 */  mul.s      $f20, $f2, $f0
/* D329C 8011CEDC 46043000 */  add.s      $f0, $f6, $f4
/* D32A0 8011CEE0 3C01800D */  lui        $at, %hi(D_race_800CE358)
/* D32A4 8011CEE4 C422E358 */  lwc1       $f2, %lo(D_race_800CE358)($at)
/* D32A8 8011CEE8 46020002 */  mul.s      $f0, $f0, $f2
/* D32AC 8011CEEC 3C038003 */  lui        $v1, %hi(D_8002E2B0)
/* D32B0 8011CEF0 2463E2B0 */  addiu      $v1, $v1, %lo(D_8002E2B0)
/* D32B4 8011CEF4 4614703C */  c.lt.s     $f14, $f20
/* D32B8 8011CEF8 4600040D */  trunc.w.s  $f16, $f0
/* D32BC 8011CEFC 44028000 */  mfc1       $v0, $f16
/* D32C0 8011CF00 304203FF */  andi       $v0, $v0, 0x3FF
/* D32C4 8011CF04 00021080 */  sll        $v0, $v0, 2
/* D32C8 8011CF08 00431021 */  addu       $v0, $v0, $v1
/* D32CC 8011CF0C C4420000 */  lwc1       $f2, 0x0($v0)
/* D32D0 8011CF10 45020002 */  bc1fl      .Lrace_8011CF1C
/* D32D4 8011CF14 46141081 */   sub.s     $f2, $f2, $f20
/* D32D8 8011CF18 46141080 */  add.s      $f2, $f2, $f20
.Lrace_8011CF1C:
/* D32DC 8011CF1C C62006B8 */  lwc1       $f0, 0x6B8($s1)
/* D32E0 8011CF20 4602003C */  c.lt.s     $f0, $f2
/* D32E4 8011CF24 00000000 */  nop
/* D32E8 8011CF28 4500001E */  bc1f       .Lrace_8011CFA4
/* D32EC 8011CF2C 2630016C */   addiu     $s0, $s1, 0x16C
/* D32F0 8011CF30 C6020004 */  lwc1       $f2, 0x4($s0)
/* D32F4 8011CF34 C7A60028 */  lwc1       $f6, 0x28($sp)
/* D32F8 8011CF38 46061082 */  mul.s      $f2, $f2, $f6
/* D32FC 8011CF3C C6000008 */  lwc1       $f0, 0x8($s0)
/* D3300 8011CF40 C7A80024 */  lwc1       $f8, 0x24($sp)
/* D3304 8011CF44 46080002 */  mul.s      $f0, $f0, $f8
/* D3308 8011CF48 46001081 */  sub.s      $f2, $f2, $f0
/* D330C 8011CF4C C7A40020 */  lwc1       $f4, 0x20($sp)
/* D3310 8011CF50 E7A20010 */  swc1       $f2, 0x10($sp)
/* D3314 8011CF54 C6020008 */  lwc1       $f2, 0x8($s0)
/* D3318 8011CF58 46041082 */  mul.s      $f2, $f2, $f4
/* D331C 8011CF5C C620016C */  lwc1       $f0, 0x16C($s1)
/* D3320 8011CF60 46060002 */  mul.s      $f0, $f0, $f6
/* D3324 8011CF64 46001081 */  sub.s      $f2, $f2, $f0
/* D3328 8011CF68 27A60010 */  addiu      $a2, $sp, 0x10
/* D332C 8011CF6C E4C20004 */  swc1       $f2, 0x4($a2)
/* D3330 8011CF70 C622016C */  lwc1       $f2, 0x16C($s1)
/* D3334 8011CF74 46081082 */  mul.s      $f2, $f2, $f8
/* D3338 8011CF78 C6000004 */  lwc1       $f0, 0x4($s0)
/* D333C 8011CF7C 46040002 */  mul.s      $f0, $f0, $f4
/* D3340 8011CF80 46001081 */  sub.s      $f2, $f2, $f0
/* D3344 8011CF84 27A40020 */  addiu      $a0, $sp, 0x20
/* D3348 8011CF88 E4C20008 */  swc1       $f2, 0x8($a2)
/* D334C 8011CF8C 8E2706B8 */  lw         $a3, 0x6B8($s1)
/* D3350 8011CF90 0C0012FA */  jal        func_80004BE8
/* D3354 8011CF94 02002821 */   addu      $a1, $s0, $zero
/* D3358 8011CF98 02002021 */  addu       $a0, $s0, $zero
/* D335C 8011CF9C 080473FE */  j          .Lrace_8011CFF8
/* D3360 8011CFA0 00802821 */   addu      $a1, $a0, $zero
.Lrace_8011CFA4:
/* D3364 8011CFA4 0C006D60 */  jal        sinf
/* D3368 8011CFA8 4600A306 */   mov.s     $f12, $f20
/* D336C 8011CFAC 4600A306 */  mov.s      $f12, $f20
/* D3370 8011CFB0 0C006BCC */  jal        cosf
/* D3374 8011CFB4 E7A00040 */   swc1      $f0, 0x40($sp)
/* D3378 8011CFB8 C626016C */  lwc1       $f6, 0x16C($s1)
/* D337C 8011CFBC 46003182 */  mul.s      $f6, $f6, $f0
/* D3380 8011CFC0 C6220170 */  lwc1       $f2, 0x170($s1)
/* D3384 8011CFC4 C7A40040 */  lwc1       $f4, 0x40($sp)
/* D3388 8011CFC8 46041082 */  mul.s      $f2, $f2, $f4
/* D338C 8011CFCC 46023181 */  sub.s      $f6, $f6, $f2
/* D3390 8011CFD0 C6220170 */  lwc1       $f2, 0x170($s1)
/* D3394 8011CFD4 46001082 */  mul.s      $f2, $f2, $f0
/* D3398 8011CFD8 00000000 */  nop
/* D339C 8011CFDC 46043102 */  mul.s      $f4, $f6, $f4
/* D33A0 8011CFE0 2624016C */  addiu      $a0, $s1, 0x16C
/* D33A4 8011CFE4 00802821 */  addu       $a1, $a0, $zero
/* D33A8 8011CFE8 46022100 */  add.s      $f4, $f4, $f2
/* D33AC 8011CFEC E7A00044 */  swc1       $f0, 0x44($sp)
/* D33B0 8011CFF0 E626016C */  swc1       $f6, 0x16C($s1)
/* D33B4 8011CFF4 E6240170 */  swc1       $f4, 0x170($s1)
.Lrace_8011CFF8:
/* D33B8 8011CFF8 0C000F26 */  jal        func_80003C98
/* D33BC 8011CFFC 00000000 */   nop
.Lrace_8011D000:
/* D33C0 8011D000 8FBF0054 */  lw         $ra, 0x54($sp)
/* D33C4 8011D004 8FB20050 */  lw         $s2, 0x50($sp)
/* D33C8 8011D008 8FB1004C */  lw         $s1, 0x4C($sp)
/* D33CC 8011D00C 8FB00048 */  lw         $s0, 0x48($sp)
/* D33D0 8011D010 D7B40058 */  ldc1       $f20, 0x58($sp)
/* D33D4 8011D014 03E00008 */  jr         $ra
/* D33D8 8011D018 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_race_8011D01C
/* D33DC 8011D01C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D33E0 8011D020 00C03821 */  addu       $a3, $a2, $zero
/* D33E4 8011D024 AFBF0024 */  sw         $ra, 0x24($sp)
/* D33E8 8011D028 AFB00020 */  sw         $s0, 0x20($sp)
/* D33EC 8011D02C C4E20000 */  lwc1       $f2, 0x0($a3)
/* D33F0 8011D030 C480016C */  lwc1       $f0, 0x16C($a0)
/* D33F4 8011D034 46001082 */  mul.s      $f2, $f2, $f0
/* D33F8 8011D038 2490016C */  addiu      $s0, $a0, 0x16C
/* D33FC 8011D03C C4EA0004 */  lwc1       $f10, 0x4($a3)
/* D3400 8011D040 C60C0004 */  lwc1       $f12, 0x4($s0)
/* D3404 8011D044 460C5102 */  mul.s      $f4, $f10, $f12
/* D3408 8011D048 C4E80008 */  lwc1       $f8, 0x8($a3)
/* D340C 8011D04C C6060008 */  lwc1       $f6, 0x8($s0)
/* D3410 8011D050 46064002 */  mul.s      $f0, $f8, $f6
/* D3414 8011D054 46041080 */  add.s      $f2, $f2, $f4
/* D3418 8011D058 46001080 */  add.s      $f2, $f2, $f0
/* D341C 8011D05C 3C01800D */  lui        $at, %hi(D_race_800CE35C)
/* D3420 8011D060 C420E35C */  lwc1       $f0, %lo(D_race_800CE35C)($at)
/* D3424 8011D064 4602003C */  c.lt.s     $f0, $f2
/* D3428 8011D068 00000000 */  nop
/* D342C 8011D06C 45000009 */  bc1f       .Lrace_8011D094
/* D3430 8011D070 3C038003 */   lui       $v1, %hi(D_8002E2B0)
/* D3434 8011D074 8CE80000 */  lw         $t0, 0x0($a3)
/* D3438 8011D078 8CE90004 */  lw         $t1, 0x4($a3)
/* D343C 8011D07C 8CEA0008 */  lw         $t2, 0x8($a3)
/* D3440 8011D080 AC88016C */  sw         $t0, 0x16C($a0)
/* D3444 8011D084 AC890170 */  sw         $t1, 0x170($a0)
/* D3448 8011D088 AC8A0174 */  sw         $t2, 0x174($a0)
/* D344C 8011D08C 0804745F */  j          .Lrace_8011D17C
/* D3450 8011D090 00000000 */   nop
.Lrace_8011D094:
/* D3454 8011D094 3C01800D */  lui        $at, %hi(D_race_800CE360)
/* D3458 8011D098 C420E360 */  lwc1       $f0, %lo(D_race_800CE360)($at)
/* D345C 8011D09C 46001000 */  add.s      $f0, $f2, $f0
/* D3460 8011D0A0 3C01800D */  lui        $at, %hi(D_race_800CE364)
/* D3464 8011D0A4 C422E364 */  lwc1       $f2, %lo(D_race_800CE364)($at)
/* D3468 8011D0A8 46020002 */  mul.s      $f0, $f0, $f2
/* D346C 8011D0AC 2463E2B0 */  addiu      $v1, $v1, %lo(D_8002E2B0)
/* D3470 8011D0B0 44851000 */  mtc1       $a1, $f2
/* D3474 8011D0B4 468010A0 */  cvt.s.w    $f2, $f2
/* D3478 8011D0B8 4600040D */  trunc.w.s  $f16, $f0
/* D347C 8011D0BC 44028000 */  mfc1       $v0, $f16
/* D3480 8011D0C0 3C01800D */  lui        $at, %hi(D_race_800CE368)
/* D3484 8011D0C4 C420E368 */  lwc1       $f0, %lo(D_race_800CE368)($at)
/* D3488 8011D0C8 304203FF */  andi       $v0, $v0, 0x3FF
/* D348C 8011D0CC 46001382 */  mul.s      $f14, $f2, $f0
/* D3490 8011D0D0 00021080 */  sll        $v0, $v0, 2
/* D3494 8011D0D4 00431021 */  addu       $v0, $v0, $v1
/* D3498 8011D0D8 C4400000 */  lwc1       $f0, 0x0($v0)
/* D349C 8011D0DC 460E003C */  c.lt.s     $f0, $f14
/* D34A0 8011D0E0 00000000 */  nop
/* D34A4 8011D0E4 45000009 */  bc1f       .Lrace_8011D10C
/* D34A8 8011D0E8 27A60010 */   addiu     $a2, $sp, 0x10
/* D34AC 8011D0EC 8CE90000 */  lw         $t1, 0x0($a3)
/* D34B0 8011D0F0 8CEA0004 */  lw         $t2, 0x4($a3)
/* D34B4 8011D0F4 8CEB0008 */  lw         $t3, 0x8($a3)
/* D34B8 8011D0F8 AC89016C */  sw         $t1, 0x16C($a0)
/* D34BC 8011D0FC AC8A0170 */  sw         $t2, 0x170($a0)
/* D34C0 8011D100 AC8B0174 */  sw         $t3, 0x174($a0)
/* D34C4 8011D104 0804745F */  j          .Lrace_8011D17C
/* D34C8 8011D108 00000000 */   nop
.Lrace_8011D10C:
/* D34CC 8011D10C 46065002 */  mul.s      $f0, $f10, $f6
/* D34D0 8011D110 00000000 */  nop
/* D34D4 8011D114 460C4082 */  mul.s      $f2, $f8, $f12
/* D34D8 8011D118 46020001 */  sub.s      $f0, $f0, $f2
/* D34DC 8011D11C E7A00010 */  swc1       $f0, 0x10($sp)
/* D34E0 8011D120 C4E40008 */  lwc1       $f4, 0x8($a3)
/* D34E4 8011D124 C480016C */  lwc1       $f0, 0x16C($a0)
/* D34E8 8011D128 46002102 */  mul.s      $f4, $f4, $f0
/* D34EC 8011D12C C6020008 */  lwc1       $f2, 0x8($s0)
/* D34F0 8011D130 C4E00000 */  lwc1       $f0, 0x0($a3)
/* D34F4 8011D134 46020002 */  mul.s      $f0, $f0, $f2
/* D34F8 8011D138 46002101 */  sub.s      $f4, $f4, $f0
/* D34FC 8011D13C E4C40004 */  swc1       $f4, 0x4($a2)
/* D3500 8011D140 C4E40000 */  lwc1       $f4, 0x0($a3)
/* D3504 8011D144 C6000004 */  lwc1       $f0, 0x4($s0)
/* D3508 8011D148 46002102 */  mul.s      $f4, $f4, $f0
/* D350C 8011D14C C482016C */  lwc1       $f2, 0x16C($a0)
/* D3510 8011D150 C4E00004 */  lwc1       $f0, 0x4($a3)
/* D3514 8011D154 46020002 */  mul.s      $f0, $f0, $f2
/* D3518 8011D158 02002821 */  addu       $a1, $s0, $zero
/* D351C 8011D15C 46002101 */  sub.s      $f4, $f4, $f0
/* D3520 8011D160 44077000 */  mfc1       $a3, $f14
/* D3524 8011D164 02002021 */  addu       $a0, $s0, $zero
/* D3528 8011D168 0C0012FA */  jal        func_80004BE8
/* D352C 8011D16C E4C40008 */   swc1      $f4, 0x8($a2)
/* D3530 8011D170 02002021 */  addu       $a0, $s0, $zero
/* D3534 8011D174 0C000F26 */  jal        func_80003C98
/* D3538 8011D178 00802821 */   addu      $a1, $a0, $zero
.Lrace_8011D17C:
/* D353C 8011D17C 8FBF0024 */  lw         $ra, 0x24($sp)
/* D3540 8011D180 8FB00020 */  lw         $s0, 0x20($sp)
/* D3544 8011D184 03E00008 */  jr         $ra
/* D3548 8011D188 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8011D18C
/* D354C 8011D18C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D3550 8011D190 AFB00020 */  sw         $s0, 0x20($sp)
/* D3554 8011D194 00808021 */  addu       $s0, $a0, $zero
/* D3558 8011D198 AFBF0028 */  sw         $ra, 0x28($sp)
/* D355C 8011D19C AFB10024 */  sw         $s1, 0x24($sp)
/* D3560 8011D1A0 C6000004 */  lwc1       $f0, 0x4($s0)
/* D3564 8011D1A4 44801000 */  mtc1       $zero, $f2
/* D3568 8011D1A8 46020032 */  c.eq.s     $f0, $f2
/* D356C 8011D1AC 00000000 */  nop
/* D3570 8011D1B0 4500000B */  bc1f       .Lrace_8011D1E0
/* D3574 8011D1B4 00000000 */   nop
/* D3578 8011D1B8 C6000008 */  lwc1       $f0, 0x8($s0)
/* D357C 8011D1BC 46020032 */  c.eq.s     $f0, $f2
/* D3580 8011D1C0 00000000 */  nop
/* D3584 8011D1C4 45000006 */  bc1f       .Lrace_8011D1E0
/* D3588 8011D1C8 00000000 */   nop
/* D358C 8011D1CC C600000C */  lwc1       $f0, 0xC($s0)
/* D3590 8011D1D0 46020032 */  c.eq.s     $f0, $f2
/* D3594 8011D1D4 00000000 */  nop
/* D3598 8011D1D8 45010017 */  bc1t       .Lrace_8011D238
/* D359C 8011D1DC 260200E4 */   addiu     $v0, $s0, 0xE4
.Lrace_8011D1E0:
/* D35A0 8011D1E0 C6040004 */  lwc1       $f4, 0x4($s0)
/* D35A4 8011D1E4 46042102 */  mul.s      $f4, $f4, $f4
/* D35A8 8011D1E8 26110004 */  addiu      $s1, $s0, 0x4
/* D35AC 8011D1EC C6220004 */  lwc1       $f2, 0x4($s1)
/* D35B0 8011D1F0 46021082 */  mul.s      $f2, $f2, $f2
/* D35B4 8011D1F4 C6200008 */  lwc1       $f0, 0x8($s1)
/* D35B8 8011D1F8 46000002 */  mul.s      $f0, $f0, $f0
/* D35BC 8011D1FC 46022100 */  add.s      $f4, $f4, $f2
/* D35C0 8011D200 46002300 */  add.s      $f12, $f4, $f0
/* D35C4 8011D204 46006004 */  sqrt.s     $f0, $f12
/* D35C8 8011D208 46000032 */  c.eq.s     $f0, $f0
/* D35CC 8011D20C 00000000 */  nop
/* D35D0 8011D210 45010004 */  bc1t       .Lrace_8011D224
/* D35D4 8011D214 02202021 */   addu      $a0, $s1, $zero
/* D35D8 8011D218 0C006BC8 */  jal        sqrt
/* D35DC 8011D21C 00000000 */   nop
/* D35E0 8011D220 02202021 */  addu       $a0, $s1, $zero
.Lrace_8011D224:
/* D35E4 8011D224 260505FC */  addiu      $a1, $s0, 0x5FC
/* D35E8 8011D228 0C000F26 */  jal        func_80003C98
/* D35EC 8011D22C E6000608 */   swc1      $f0, 0x608($s0)
/* D35F0 8011D230 080474A8 */  j          .Lrace_8011D2A0
/* D35F4 8011D234 00000000 */   nop
.Lrace_8011D238:
/* D35F8 8011D238 E6020608 */  swc1       $f2, 0x608($s0)
/* D35FC 8011D23C C4400028 */  lwc1       $f0, 0x28($v0)
/* D3600 8011D240 E60005FC */  swc1       $f0, 0x5FC($s0)
/* D3604 8011D244 C440002C */  lwc1       $f0, 0x2C($v0)
/* D3608 8011D248 260305FC */  addiu      $v1, $s0, 0x5FC
/* D360C 8011D24C E4600004 */  swc1       $f0, 0x4($v1)
/* D3610 8011D250 C4400030 */  lwc1       $f0, 0x30($v0)
/* D3614 8011D254 E4600008 */  swc1       $f0, 0x8($v1)
/* D3618 8011D258 C6000094 */  lwc1       $f0, 0x94($s0)
/* D361C 8011D25C 46020032 */  c.eq.s     $f0, $f2
/* D3620 8011D260 00000000 */  nop
/* D3624 8011D264 4500000E */  bc1f       .Lrace_8011D2A0
/* D3628 8011D268 00000000 */   nop
/* D362C 8011D26C C6000098 */  lwc1       $f0, 0x98($s0)
/* D3630 8011D270 46020032 */  c.eq.s     $f0, $f2
/* D3634 8011D274 00000000 */  nop
/* D3638 8011D278 45000009 */  bc1f       .Lrace_8011D2A0
/* D363C 8011D27C 00000000 */   nop
/* D3640 8011D280 C600009C */  lwc1       $f0, 0x9C($s0)
/* D3644 8011D284 46020032 */  c.eq.s     $f0, $f2
/* D3648 8011D288 00000000 */  nop
/* D364C 8011D28C 45000004 */  bc1f       .Lrace_8011D2A0
/* D3650 8011D290 00000000 */   nop
/* D3654 8011D294 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D3658 8011D298 080474AB */  j          .Lrace_8011D2AC
/* D365C 8011D29C 34420100 */   ori       $v0, $v0, 0x100
.Lrace_8011D2A0:
/* D3660 8011D2A0 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D3664 8011D2A4 2403FEFF */  addiu      $v1, $zero, -0x101
/* D3668 8011D2A8 00431024 */  and        $v0, $v0, $v1
.Lrace_8011D2AC:
/* D366C 8011D2AC AE0206AC */  sw         $v0, 0x6AC($s0)
/* D3670 8011D2B0 C6060004 */  lwc1       $f6, 0x4($s0)
/* D3674 8011D2B4 C608016C */  lwc1       $f8, 0x16C($s0)
/* D3678 8011D2B8 26040004 */  addiu      $a0, $s0, 0x4
/* D367C 8011D2BC 46083182 */  mul.s      $f6, $f6, $f8
/* D3680 8011D2C0 2603016C */  addiu      $v1, $s0, 0x16C
/* D3684 8011D2C4 C4840004 */  lwc1       $f4, 0x4($a0)
/* D3688 8011D2C8 C4600004 */  lwc1       $f0, 0x4($v1)
/* D368C 8011D2CC 46002102 */  mul.s      $f4, $f4, $f0
/* D3690 8011D2D0 C4620008 */  lwc1       $f2, 0x8($v1)
/* D3694 8011D2D4 C4800008 */  lwc1       $f0, 0x8($a0)
/* D3698 8011D2D8 46020002 */  mul.s      $f0, $f0, $f2
/* D369C 8011D2DC 46043180 */  add.s      $f6, $f6, $f4
/* D36A0 8011D2E0 46003180 */  add.s      $f6, $f6, $f0
/* D36A4 8011D2E4 46064202 */  mul.s      $f8, $f8, $f6
/* D36A8 8011D2E8 E6080610 */  swc1       $f8, 0x610($s0)
/* D36AC 8011D2EC C4600004 */  lwc1       $f0, 0x4($v1)
/* D36B0 8011D2F0 46060002 */  mul.s      $f0, $f0, $f6
/* D36B4 8011D2F4 26020610 */  addiu      $v0, $s0, 0x610
/* D36B8 8011D2F8 E4400004 */  swc1       $f0, 0x4($v0)
/* D36BC 8011D2FC C4600008 */  lwc1       $f0, 0x8($v1)
/* D36C0 8011D300 46060002 */  mul.s      $f0, $f0, $f6
/* D36C4 8011D304 E4400008 */  swc1       $f0, 0x8($v0)
/* D36C8 8011D308 C602016C */  lwc1       $f2, 0x16C($s0)
/* D36CC 8011D30C 46061082 */  mul.s      $f2, $f2, $f6
/* D36D0 8011D310 E7A20010 */  swc1       $f2, 0x10($sp)
/* D36D4 8011D314 C4600004 */  lwc1       $f0, 0x4($v1)
/* D36D8 8011D318 46060002 */  mul.s      $f0, $f0, $f6
/* D36DC 8011D31C E7A00014 */  swc1       $f0, 0x14($sp)
/* D36E0 8011D320 C4600008 */  lwc1       $f0, 0x8($v1)
/* D36E4 8011D324 46060002 */  mul.s      $f0, $f0, $f6
/* D36E8 8011D328 E7A00018 */  swc1       $f0, 0x18($sp)
/* D36EC 8011D32C C6000004 */  lwc1       $f0, 0x4($s0)
/* D36F0 8011D330 46020001 */  sub.s      $f0, $f0, $f2
/* D36F4 8011D334 E6000620 */  swc1       $f0, 0x620($s0)
/* D36F8 8011D338 C4800004 */  lwc1       $f0, 0x4($a0)
/* D36FC 8011D33C C7A20014 */  lwc1       $f2, 0x14($sp)
/* D3700 8011D340 46020001 */  sub.s      $f0, $f0, $f2
/* D3704 8011D344 26020620 */  addiu      $v0, $s0, 0x620
/* D3708 8011D348 E4400004 */  swc1       $f0, 0x4($v0)
/* D370C 8011D34C C4800008 */  lwc1       $f0, 0x8($a0)
/* D3710 8011D350 C7A20018 */  lwc1       $f2, 0x18($sp)
/* D3714 8011D354 46020001 */  sub.s      $f0, $f0, $f2
/* D3718 8011D358 E4400008 */  swc1       $f0, 0x8($v0)
/* D371C 8011D35C E606061C */  swc1       $f6, 0x61C($s0)
/* D3720 8011D360 8FBF0028 */  lw         $ra, 0x28($sp)
/* D3724 8011D364 8FB10024 */  lw         $s1, 0x24($sp)
/* D3728 8011D368 8FB00020 */  lw         $s0, 0x20($sp)
/* D372C 8011D36C 03E00008 */  jr         $ra
/* D3730 8011D370 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_8011D374
/* D3734 8011D374 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D3738 8011D378 AFB10014 */  sw         $s1, 0x14($sp)
/* D373C 8011D37C 00808821 */  addu       $s1, $a0, $zero
/* D3740 8011D380 AFB00010 */  sw         $s0, 0x10($sp)
/* D3744 8011D384 263000E4 */  addiu      $s0, $s1, 0xE4
/* D3748 8011D388 02002021 */  addu       $a0, $s0, $zero
/* D374C 8011D38C AFBF0018 */  sw         $ra, 0x18($sp)
/* D3750 8011D390 0C01595B */  jal        func_8005656C
/* D3754 8011D394 2625067C */   addiu     $a1, $s1, 0x67C
/* D3758 8011D398 02002021 */  addu       $a0, $s0, $zero
/* D375C 8011D39C 8E280004 */  lw         $t0, 0x4($s1)
/* D3760 8011D3A0 8E290008 */  lw         $t1, 0x8($s1)
/* D3764 8011D3A4 8E2A000C */  lw         $t2, 0xC($s1)
/* D3768 8011D3A8 AE280670 */  sw         $t0, 0x670($s1)
/* D376C 8011D3AC AE290674 */  sw         $t1, 0x674($s1)
/* D3770 8011D3B0 AE2A0678 */  sw         $t2, 0x678($s1)
/* D3774 8011D3B4 0C01583B */  jal        func_800560EC
/* D3778 8011D3B8 26250688 */   addiu     $a1, $s1, 0x688
/* D377C 8011D3BC C6200070 */  lwc1       $f0, 0x70($s1)
/* D3780 8011D3C0 3C028013 */  lui        $v0, %hi(D_race_80132EC0)
/* D3784 8011D3C4 E4402EC0 */  swc1       $f0, %lo(D_race_80132EC0)($v0)
/* D3788 8011D3C8 C6200074 */  lwc1       $f0, 0x74($s1)
/* D378C 8011D3CC 24422EC0 */  addiu      $v0, $v0, %lo(D_race_80132EC0)
/* D3790 8011D3D0 E4400004 */  swc1       $f0, 0x4($v0)
/* D3794 8011D3D4 C6200078 */  lwc1       $f0, 0x78($s1)
/* D3798 8011D3D8 E4400008 */  swc1       $f0, 0x8($v0)
/* D379C 8011D3DC C620007C */  lwc1       $f0, 0x7C($s1)
/* D37A0 8011D3E0 E440000C */  swc1       $f0, 0xC($v0)
/* D37A4 8011D3E4 C6200080 */  lwc1       $f0, 0x80($s1)
/* D37A8 8011D3E8 E4400010 */  swc1       $f0, 0x10($v0)
/* D37AC 8011D3EC C6200084 */  lwc1       $f0, 0x84($s1)
/* D37B0 8011D3F0 E4400014 */  swc1       $f0, 0x14($v0)
/* D37B4 8011D3F4 C6200088 */  lwc1       $f0, 0x88($s1)
/* D37B8 8011D3F8 E4400018 */  swc1       $f0, 0x18($v0)
/* D37BC 8011D3FC C620008C */  lwc1       $f0, 0x8C($s1)
/* D37C0 8011D400 2626019C */  addiu      $a2, $s1, 0x19C
/* D37C4 8011D404 E440001C */  swc1       $f0, 0x1C($v0)
/* D37C8 8011D408 C6200090 */  lwc1       $f0, 0x90($s1)
/* D37CC 8011D40C 2627035C */  addiu      $a3, $s1, 0x35C
/* D37D0 8011D410 E4400020 */  swc1       $f0, 0x20($v0)
/* D37D4 8011D414 3C028013 */  lui        $v0, %hi(D_race_80132EF0)
/* D37D8 8011D418 244B2EF0 */  addiu      $t3, $v0, %lo(D_race_80132EF0)
/* D37DC 8011D41C 8E280094 */  lw         $t0, 0x94($s1)
/* D37E0 8011D420 8E290098 */  lw         $t1, 0x98($s1)
/* D37E4 8011D424 8E2A009C */  lw         $t2, 0x9C($s1)
/* D37E8 8011D428 AD680000 */  sw         $t0, 0x0($t3)
/* D37EC 8011D42C AD690004 */  sw         $t1, 0x4($t3)
/* D37F0 8011D430 AD6A0008 */  sw         $t2, 0x8($t3)
/* D37F4 8011D434 3C028013 */  lui        $v0, %hi(D_race_80132F00)
/* D37F8 8011D438 244B2F00 */  addiu      $t3, $v0, %lo(D_race_80132F00)
/* D37FC 8011D43C 8E2800A0 */  lw         $t0, 0xA0($s1)
/* D3800 8011D440 8E2900A4 */  lw         $t1, 0xA4($s1)
/* D3804 8011D444 8E2A00A8 */  lw         $t2, 0xA8($s1)
/* D3808 8011D448 AD680000 */  sw         $t0, 0x0($t3)
/* D380C 8011D44C AD690004 */  sw         $t1, 0x4($t3)
/* D3810 8011D450 AD6A0008 */  sw         $t2, 0x8($t3)
/* D3814 8011D454 C620065C */  lwc1       $f0, 0x65C($s1)
/* D3818 8011D458 C622066C */  lwc1       $f2, 0x66C($s1)
/* D381C 8011D45C 3C028013 */  lui        $v0, %hi(D_race_80132F10)
/* D3820 8011D460 244B2F10 */  addiu      $t3, $v0, %lo(D_race_80132F10)
/* D3824 8011D464 8E28016C */  lw         $t0, 0x16C($s1)
/* D3828 8011D468 8E290170 */  lw         $t1, 0x170($s1)
/* D382C 8011D46C 8E2A0174 */  lw         $t2, 0x174($s1)
/* D3830 8011D470 AD680000 */  sw         $t0, 0x0($t3)
/* D3834 8011D474 AD690004 */  sw         $t1, 0x4($t3)
/* D3838 8011D478 AD6A0008 */  sw         $t2, 0x8($t3)
/* D383C 8011D47C 3C028013 */  lui        $v0, %hi(D_race_80132270)
/* D3840 8011D480 E4402270 */  swc1       $f0, %lo(D_race_80132270)($v0)
/* D3844 8011D484 3C028013 */  lui        $v0, %hi(D_race_80132274)
/* D3848 8011D488 E4422274 */  swc1       $f2, %lo(D_race_80132274)($v0)
/* D384C 8011D48C 3C028013 */  lui        $v0, %hi(D_race_801322A8)
/* D3850 8011D490 244322A8 */  addiu      $v1, $v0, %lo(D_race_801322A8)
/* D3854 8011D494 00C7102B */  sltu       $v0, $a2, $a3
/* D3858 8011D498 10400023 */  beqz       $v0, .Lrace_8011D528
/* D385C 8011D49C 24650064 */   addiu     $a1, $v1, 0x64
/* D3860 8011D4A0 26240200 */  addiu      $a0, $s1, 0x200
.Lrace_8011D4A4:
/* D3864 8011D4A4 8C88FFA8 */  lw         $t0, -0x58($a0)
/* D3868 8011D4A8 8C89FFAC */  lw         $t1, -0x54($a0)
/* D386C 8011D4AC 8C8AFFB0 */  lw         $t2, -0x50($a0)
/* D3870 8011D4B0 ACA8FFA8 */  sw         $t0, -0x58($a1)
/* D3874 8011D4B4 ACA9FFAC */  sw         $t1, -0x54($a1)
/* D3878 8011D4B8 ACAAFFB0 */  sw         $t2, -0x50($a1)
/* D387C 8011D4BC 8C82FFD8 */  lw         $v0, -0x28($a0)
/* D3880 8011D4C0 00401821 */  addu       $v1, $v0, $zero
/* D3884 8011D4C4 AC82FFDC */  sw         $v0, -0x24($a0)
/* D3888 8011D4C8 ACA3FFD8 */  sw         $v1, -0x28($a1)
/* D388C 8011D4CC 8C82FFE4 */  lw         $v0, -0x1C($a0)
/* D3890 8011D4D0 ACA2FFE4 */  sw         $v0, -0x1C($a1)
/* D3894 8011D4D4 C480FFEC */  lwc1       $f0, -0x14($a0)
/* D3898 8011D4D8 E4A0FFEC */  swc1       $f0, -0x14($a1)
/* D389C 8011D4DC C480FFF0 */  lwc1       $f0, -0x10($a0)
/* D38A0 8011D4E0 E4A0FFF0 */  swc1       $f0, -0x10($a1)
/* D38A4 8011D4E4 C480FFF4 */  lwc1       $f0, -0xC($a0)
/* D38A8 8011D4E8 E4A0FFF4 */  swc1       $f0, -0xC($a1)
/* D38AC 8011D4EC C480FFF8 */  lwc1       $f0, -0x8($a0)
/* D38B0 8011D4F0 24C60070 */  addiu      $a2, $a2, 0x70
/* D38B4 8011D4F4 E4A0FFF8 */  swc1       $f0, -0x8($a1)
/* D38B8 8011D4F8 C480FFFC */  lwc1       $f0, -0x4($a0)
/* D38BC 8011D4FC 00C7102B */  sltu       $v0, $a2, $a3
/* D38C0 8011D500 E4A0FFFC */  swc1       $f0, -0x4($a1)
/* D38C4 8011D504 8C880000 */  lw         $t0, 0x0($a0)
/* D38C8 8011D508 8C890004 */  lw         $t1, 0x4($a0)
/* D38CC 8011D50C 8C8A0008 */  lw         $t2, 0x8($a0)
/* D38D0 8011D510 ACA80000 */  sw         $t0, 0x0($a1)
/* D38D4 8011D514 ACA90004 */  sw         $t1, 0x4($a1)
/* D38D8 8011D518 ACAA0008 */  sw         $t2, 0x8($a1)
/* D38DC 8011D51C 24840070 */  addiu      $a0, $a0, 0x70
/* D38E0 8011D520 1440FFE0 */  bnez       $v0, .Lrace_8011D4A4
/* D38E4 8011D524 24A50070 */   addiu     $a1, $a1, 0x70
.Lrace_8011D528:
/* D38E8 8011D528 00002821 */  addu       $a1, $zero, $zero
/* D38EC 8011D52C 3C028013 */  lui        $v0, %hi(D_race_80132278)
/* D38F0 8011D530 24432278 */  addiu      $v1, $v0, %lo(D_race_80132278)
/* D38F4 8011D534 02202021 */  addu       $a0, $s1, $zero
.Lrace_8011D538:
/* D38F8 8011D538 8C8803A4 */  lw         $t0, 0x3A4($a0)
/* D38FC 8011D53C 8C8903A8 */  lw         $t1, 0x3A8($a0)
/* D3900 8011D540 8C8A03AC */  lw         $t2, 0x3AC($a0)
/* D3904 8011D544 AC680000 */  sw         $t0, 0x0($v1)
/* D3908 8011D548 AC690004 */  sw         $t1, 0x4($v1)
/* D390C 8011D54C AC6A0008 */  sw         $t2, 0x8($v1)
/* D3910 8011D550 2463000C */  addiu      $v1, $v1, 0xC
/* D3914 8011D554 24A50001 */  addiu      $a1, $a1, 0x1
/* D3918 8011D558 2CA20004 */  sltiu      $v0, $a1, 0x4
/* D391C 8011D55C 1440FFF6 */  bnez       $v0, .Lrace_8011D538
/* D3920 8011D560 2484000C */   addiu     $a0, $a0, 0xC
/* D3924 8011D564 8FBF0018 */  lw         $ra, 0x18($sp)
/* D3928 8011D568 8FB10014 */  lw         $s1, 0x14($sp)
/* D392C 8011D56C 8FB00010 */  lw         $s0, 0x10($sp)
/* D3930 8011D570 03E00008 */  jr         $ra
/* D3934 8011D574 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011D578
/* D3938 8011D578 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D393C 8011D57C AFB10014 */  sw         $s1, 0x14($sp)
/* D3940 8011D580 00808821 */  addu       $s1, $a0, $zero
/* D3944 8011D584 AFB00010 */  sw         $s0, 0x10($sp)
/* D3948 8011D588 263000E4 */  addiu      $s0, $s1, 0xE4
/* D394C 8011D58C 02002021 */  addu       $a0, $s0, $zero
/* D3950 8011D590 AFBF0018 */  sw         $ra, 0x18($sp)
/* D3954 8011D594 0C015962 */  jal        func_80056588
/* D3958 8011D598 2625067C */   addiu     $a1, $s1, 0x67C
/* D395C 8011D59C 02002021 */  addu       $a0, $s0, $zero
/* D3960 8011D5A0 8E270670 */  lw         $a3, 0x670($s1)
/* D3964 8011D5A4 8E280674 */  lw         $t0, 0x674($s1)
/* D3968 8011D5A8 8E290678 */  lw         $t1, 0x678($s1)
/* D396C 8011D5AC AE270004 */  sw         $a3, 0x4($s1)
/* D3970 8011D5B0 AE280008 */  sw         $t0, 0x8($s1)
/* D3974 8011D5B4 AE29000C */  sw         $t1, 0xC($s1)
/* D3978 8011D5B8 0C01584E */  jal        func_80056138
/* D397C 8011D5BC 26250688 */   addiu     $a1, $s1, 0x688
/* D3980 8011D5C0 3C028013 */  lui        $v0, %hi(D_race_80132EC0)
/* D3984 8011D5C4 3C038013 */  lui        $v1, %hi(D_race_80132274)
/* D3988 8011D5C8 C4402EC0 */  lwc1       $f0, %lo(D_race_80132EC0)($v0)
/* D398C 8011D5CC C4622274 */  lwc1       $f2, %lo(D_race_80132274)($v1)
/* D3990 8011D5D0 24422EC0 */  addiu      $v0, $v0, %lo(D_race_80132EC0)
/* D3994 8011D5D4 E6200070 */  swc1       $f0, 0x70($s1)
/* D3998 8011D5D8 C4400004 */  lwc1       $f0, 0x4($v0)
/* D399C 8011D5DC E6200074 */  swc1       $f0, 0x74($s1)
/* D39A0 8011D5E0 C4400008 */  lwc1       $f0, 0x8($v0)
/* D39A4 8011D5E4 E6200078 */  swc1       $f0, 0x78($s1)
/* D39A8 8011D5E8 C440000C */  lwc1       $f0, 0xC($v0)
/* D39AC 8011D5EC E620007C */  swc1       $f0, 0x7C($s1)
/* D39B0 8011D5F0 C4400010 */  lwc1       $f0, 0x10($v0)
/* D39B4 8011D5F4 E6200080 */  swc1       $f0, 0x80($s1)
/* D39B8 8011D5F8 C4400014 */  lwc1       $f0, 0x14($v0)
/* D39BC 8011D5FC E6200084 */  swc1       $f0, 0x84($s1)
/* D39C0 8011D600 C4400018 */  lwc1       $f0, 0x18($v0)
/* D39C4 8011D604 2625019C */  addiu      $a1, $s1, 0x19C
/* D39C8 8011D608 E6200088 */  swc1       $f0, 0x88($s1)
/* D39CC 8011D60C C440001C */  lwc1       $f0, 0x1C($v0)
/* D39D0 8011D610 2626035C */  addiu      $a2, $s1, 0x35C
/* D39D4 8011D614 E620008C */  swc1       $f0, 0x8C($s1)
/* D39D8 8011D618 C4400020 */  lwc1       $f0, 0x20($v0)
/* D39DC 8011D61C 3C028013 */  lui        $v0, %hi(D_race_80132EF0)
/* D39E0 8011D620 E6200090 */  swc1       $f0, 0x90($s1)
/* D39E4 8011D624 244A2EF0 */  addiu      $t2, $v0, %lo(D_race_80132EF0)
/* D39E8 8011D628 8D470000 */  lw         $a3, 0x0($t2)
/* D39EC 8011D62C 8D480004 */  lw         $t0, 0x4($t2)
/* D39F0 8011D630 8D490008 */  lw         $t1, 0x8($t2)
/* D39F4 8011D634 AE270094 */  sw         $a3, 0x94($s1)
/* D39F8 8011D638 AE280098 */  sw         $t0, 0x98($s1)
/* D39FC 8011D63C AE29009C */  sw         $t1, 0x9C($s1)
/* D3A00 8011D640 3C028013 */  lui        $v0, %hi(D_race_80132270)
/* D3A04 8011D644 C4402270 */  lwc1       $f0, %lo(D_race_80132270)($v0)
/* D3A08 8011D648 3C028013 */  lui        $v0, %hi(D_race_80132F00)
/* D3A0C 8011D64C 244A2F00 */  addiu      $t2, $v0, %lo(D_race_80132F00)
/* D3A10 8011D650 8D470000 */  lw         $a3, 0x0($t2)
/* D3A14 8011D654 8D480004 */  lw         $t0, 0x4($t2)
/* D3A18 8011D658 8D490008 */  lw         $t1, 0x8($t2)
/* D3A1C 8011D65C AE2700A0 */  sw         $a3, 0xA0($s1)
/* D3A20 8011D660 AE2800A4 */  sw         $t0, 0xA4($s1)
/* D3A24 8011D664 AE2900A8 */  sw         $t1, 0xA8($s1)
/* D3A28 8011D668 3C028013 */  lui        $v0, %hi(D_race_80132F10)
/* D3A2C 8011D66C E622066C */  swc1       $f2, 0x66C($s1)
/* D3A30 8011D670 E620065C */  swc1       $f0, 0x65C($s1)
/* D3A34 8011D674 244A2F10 */  addiu      $t2, $v0, %lo(D_race_80132F10)
/* D3A38 8011D678 8D470000 */  lw         $a3, 0x0($t2)
/* D3A3C 8011D67C 8D480004 */  lw         $t0, 0x4($t2)
/* D3A40 8011D680 8D490008 */  lw         $t1, 0x8($t2)
/* D3A44 8011D684 AE27016C */  sw         $a3, 0x16C($s1)
/* D3A48 8011D688 AE280170 */  sw         $t0, 0x170($s1)
/* D3A4C 8011D68C AE290174 */  sw         $t1, 0x174($s1)
/* D3A50 8011D690 3C028013 */  lui        $v0, %hi(D_race_801322A8)
/* D3A54 8011D694 244322A8 */  addiu      $v1, $v0, %lo(D_race_801322A8)
/* D3A58 8011D698 00A6102B */  sltu       $v0, $a1, $a2
/* D3A5C 8011D69C 10400021 */  beqz       $v0, .Lrace_8011D724
/* D3A60 8011D6A0 24640064 */   addiu     $a0, $v1, 0x64
/* D3A64 8011D6A4 26230200 */  addiu      $v1, $s1, 0x200
.Lrace_8011D6A8:
/* D3A68 8011D6A8 8C87FFA8 */  lw         $a3, -0x58($a0)
/* D3A6C 8011D6AC 8C88FFAC */  lw         $t0, -0x54($a0)
/* D3A70 8011D6B0 8C89FFB0 */  lw         $t1, -0x50($a0)
/* D3A74 8011D6B4 AC67FFA8 */  sw         $a3, -0x58($v1)
/* D3A78 8011D6B8 AC68FFAC */  sw         $t0, -0x54($v1)
/* D3A7C 8011D6BC AC69FFB0 */  sw         $t1, -0x50($v1)
/* D3A80 8011D6C0 8C82FFD8 */  lw         $v0, -0x28($a0)
/* D3A84 8011D6C4 AC62FFD8 */  sw         $v0, -0x28($v1)
/* D3A88 8011D6C8 8C82FFE4 */  lw         $v0, -0x1C($a0)
/* D3A8C 8011D6CC AC62FFE4 */  sw         $v0, -0x1C($v1)
/* D3A90 8011D6D0 C480FFEC */  lwc1       $f0, -0x14($a0)
/* D3A94 8011D6D4 E460FFEC */  swc1       $f0, -0x14($v1)
/* D3A98 8011D6D8 C480FFF0 */  lwc1       $f0, -0x10($a0)
/* D3A9C 8011D6DC E460FFF0 */  swc1       $f0, -0x10($v1)
/* D3AA0 8011D6E0 C480FFF4 */  lwc1       $f0, -0xC($a0)
/* D3AA4 8011D6E4 E460FFF4 */  swc1       $f0, -0xC($v1)
/* D3AA8 8011D6E8 C480FFF8 */  lwc1       $f0, -0x8($a0)
/* D3AAC 8011D6EC 24A50070 */  addiu      $a1, $a1, 0x70
/* D3AB0 8011D6F0 E460FFF8 */  swc1       $f0, -0x8($v1)
/* D3AB4 8011D6F4 C480FFFC */  lwc1       $f0, -0x4($a0)
/* D3AB8 8011D6F8 00A6102B */  sltu       $v0, $a1, $a2
/* D3ABC 8011D6FC E460FFFC */  swc1       $f0, -0x4($v1)
/* D3AC0 8011D700 8C870000 */  lw         $a3, 0x0($a0)
/* D3AC4 8011D704 8C880004 */  lw         $t0, 0x4($a0)
/* D3AC8 8011D708 8C890008 */  lw         $t1, 0x8($a0)
/* D3ACC 8011D70C AC670000 */  sw         $a3, 0x0($v1)
/* D3AD0 8011D710 AC680004 */  sw         $t0, 0x4($v1)
/* D3AD4 8011D714 AC690008 */  sw         $t1, 0x8($v1)
/* D3AD8 8011D718 24630070 */  addiu      $v1, $v1, 0x70
/* D3ADC 8011D71C 1440FFE2 */  bnez       $v0, .Lrace_8011D6A8
/* D3AE0 8011D720 24840070 */   addiu     $a0, $a0, 0x70
.Lrace_8011D724:
/* D3AE4 8011D724 00002821 */  addu       $a1, $zero, $zero
/* D3AE8 8011D728 3C028013 */  lui        $v0, %hi(D_race_80132278)
/* D3AEC 8011D72C 24442278 */  addiu      $a0, $v0, %lo(D_race_80132278)
/* D3AF0 8011D730 02201821 */  addu       $v1, $s1, $zero
.Lrace_8011D734:
/* D3AF4 8011D734 8C870000 */  lw         $a3, 0x0($a0)
/* D3AF8 8011D738 8C880004 */  lw         $t0, 0x4($a0)
/* D3AFC 8011D73C 8C890008 */  lw         $t1, 0x8($a0)
/* D3B00 8011D740 AC6703A4 */  sw         $a3, 0x3A4($v1)
/* D3B04 8011D744 AC6803A8 */  sw         $t0, 0x3A8($v1)
/* D3B08 8011D748 AC6903AC */  sw         $t1, 0x3AC($v1)
/* D3B0C 8011D74C 2484000C */  addiu      $a0, $a0, 0xC
/* D3B10 8011D750 24A50001 */  addiu      $a1, $a1, 0x1
/* D3B14 8011D754 2CA20004 */  sltiu      $v0, $a1, 0x4
/* D3B18 8011D758 1440FFF6 */  bnez       $v0, .Lrace_8011D734
/* D3B1C 8011D75C 2463000C */   addiu     $v1, $v1, 0xC
/* D3B20 8011D760 262400E4 */  addiu      $a0, $s1, 0xE4
/* D3B24 8011D764 26250010 */  addiu      $a1, $s1, 0x10
/* D3B28 8011D768 0C0158C3 */  jal        func_8005630C
/* D3B2C 8011D76C 2626001C */   addiu     $a2, $s1, 0x1C
/* D3B30 8011D770 0C047463 */  jal        func_race_8011D18C
/* D3B34 8011D774 02202021 */   addu      $a0, $s1, $zero
/* D3B38 8011D778 8FBF0018 */  lw         $ra, 0x18($sp)
/* D3B3C 8011D77C 8FB10014 */  lw         $s1, 0x14($sp)
/* D3B40 8011D780 8FB00010 */  lw         $s0, 0x10($sp)
/* D3B44 8011D784 03E00008 */  jr         $ra
/* D3B48 8011D788 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011D78C
/* D3B4C 8011D78C 00002821 */  addu       $a1, $zero, $zero
/* D3B50 8011D790 00801821 */  addu       $v1, $a0, $zero
.Lrace_8011D794:
/* D3B54 8011D794 AC6003D4 */  sw         $zero, 0x3D4($v1)
/* D3B58 8011D798 24A50001 */  addiu      $a1, $a1, 0x1
/* D3B5C 8011D79C 2CA20004 */  sltiu      $v0, $a1, 0x4
/* D3B60 8011D7A0 1440FFFC */  bnez       $v0, .Lrace_8011D794
/* D3B64 8011D7A4 24630004 */   addiu     $v1, $v1, 0x4
/* D3B68 8011D7A8 03E00008 */  jr         $ra
/* D3B6C 8011D7AC AC8003F0 */   sw        $zero, 0x3F0($a0)

glabel func_race_8011D7B0
/* D3B70 8011D7B0 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* D3B74 8011D7B4 F7B400B0 */  sdc1       $f20, 0xB0($sp)
/* D3B78 8011D7B8 3C01800D */  lui        $at, %hi(D_race_800CE36C)
/* D3B7C 8011D7BC C434E36C */  lwc1       $f20, %lo(D_race_800CE36C)($at)
/* D3B80 8011D7C0 F7B600B8 */  sdc1       $f22, 0xB8($sp)
/* D3B84 8011D7C4 4480B000 */  mtc1       $zero, $f22
/* D3B88 8011D7C8 AFB30094 */  sw         $s3, 0x94($sp)
/* D3B8C 8011D7CC 00809821 */  addu       $s3, $a0, $zero
/* D3B90 8011D7D0 AFB40098 */  sw         $s4, 0x98($sp)
/* D3B94 8011D7D4 0000A021 */  addu       $s4, $zero, $zero
/* D3B98 8011D7D8 AFB20090 */  sw         $s2, 0x90($sp)
/* D3B9C 8011D7DC 02609021 */  addu       $s2, $s3, $zero
/* D3BA0 8011D7E0 AFB1008C */  sw         $s1, 0x8C($sp)
/* D3BA4 8011D7E4 241103A4 */  addiu      $s1, $zero, 0x3A4
/* D3BA8 8011D7E8 AFB00088 */  sw         $s0, 0x88($sp)
/* D3BAC 8011D7EC 24100374 */  addiu      $s0, $zero, 0x374
/* D3BB0 8011D7F0 AFBF00AC */  sw         $ra, 0xAC($sp)
/* D3BB4 8011D7F4 AFBE00A8 */  sw         $fp, 0xA8($sp)
/* D3BB8 8011D7F8 AFB700A4 */  sw         $s7, 0xA4($sp)
/* D3BBC 8011D7FC AFB600A0 */  sw         $s6, 0xA0($sp)
/* D3BC0 8011D800 AFB5009C */  sw         $s5, 0x9C($sp)
/* D3BC4 8011D804 AFA500C4 */  sw         $a1, 0xC4($sp)
/* D3BC8 8011D808 AFA600C8 */  sw         $a2, 0xC8($sp)
/* D3BCC 8011D80C AFA00080 */  sw         $zero, 0x80($sp)
/* D3BD0 8011D810 AE6003F0 */  sw         $zero, 0x3F0($s3)
.Lrace_8011D814:
/* D3BD4 8011D814 266400E4 */  addiu      $a0, $s3, 0xE4
/* D3BD8 8011D818 02702821 */  addu       $a1, $s3, $s0
/* D3BDC 8011D81C 0C0158C3 */  jal        func_8005630C
/* D3BE0 8011D820 02713021 */   addu      $a2, $s3, $s1
/* D3BE4 8011D824 AE4003D4 */  sw         $zero, 0x3D4($s2)
/* D3BE8 8011D828 26520004 */  addiu      $s2, $s2, 0x4
/* D3BEC 8011D82C 2631000C */  addiu      $s1, $s1, 0xC
/* D3BF0 8011D830 26940001 */  addiu      $s4, $s4, 0x1
/* D3BF4 8011D834 2E820004 */  sltiu      $v0, $s4, 0x4
/* D3BF8 8011D838 1440FFF6 */  bnez       $v0, .Lrace_8011D814
/* D3BFC 8011D83C 2610000C */   addiu     $s0, $s0, 0xC
/* D3C00 8011D840 0000B021 */  addu       $s6, $zero, $zero
/* D3C04 8011D844 3C1E8013 */  lui        $fp, %hi(D_race_80132E70)
/* D3C08 8011D848 27D72E70 */  addiu      $s7, $fp, %lo(D_race_80132E70)
.Lrace_8011D84C:
/* D3C0C 8011D84C 8E620158 */  lw         $v0, 0x158($s3)
/* D3C10 8011D850 02C2102B */  sltu       $v0, $s6, $v0
/* D3C14 8011D854 10400081 */  beqz       $v0, .Lrace_8011DA5C
/* D3C18 8011D858 00161080 */   sll       $v0, $s6, 2
/* D3C1C 8011D85C 02621021 */  addu       $v0, $s3, $v0
/* D3C20 8011D860 8C50014C */  lw         $s0, 0x14C($v0)
/* D3C24 8011D864 0000A021 */  addu       $s4, $zero, $zero
/* D3C28 8011D868 02608821 */  addu       $s1, $s3, $zero
/* D3C2C 8011D86C 241503A4 */  addiu      $s5, $zero, 0x3A4
/* D3C30 8011D870 3C128013 */  lui        $s2, %hi(D_race_80132278)
/* D3C34 8011D874 26522278 */  addiu      $s2, $s2, %lo(D_race_80132278)
.Lrace_8011D878:
/* D3C38 8011D878 2E820004 */  sltiu      $v0, $s4, 0x4
/* D3C3C 8011D87C 5040FFF3 */  beql       $v0, $zero, .Lrace_8011D84C
/* D3C40 8011D880 26D60001 */   addiu     $s6, $s6, 0x1
/* D3C44 8011D884 8E2203D4 */  lw         $v0, 0x3D4($s1)
/* D3C48 8011D888 54400070 */  bnel       $v0, $zero, .Lrace_8011DA4C
/* D3C4C 8011D88C 26310004 */   addiu     $s1, $s1, 0x4
/* D3C50 8011D890 02402821 */  addu       $a1, $s2, $zero
/* D3C54 8011D894 8E020024 */  lw         $v0, 0x24($s0)
/* D3C58 8011D898 27A60020 */  addiu      $a2, $sp, 0x20
/* D3C5C 8011D89C 84440068 */  lh         $a0, 0x68($v0)
/* D3C60 8011D8A0 8C42006C */  lw         $v0, 0x6C($v0)
/* D3C64 8011D8A4 0040F809 */  jalr       $v0
/* D3C68 8011D8A8 02042021 */   addu      $a0, $s0, $a0
/* D3C6C 8011D8AC 02752821 */  addu       $a1, $s3, $s5
/* D3C70 8011D8B0 8E020024 */  lw         $v0, 0x24($s0)
/* D3C74 8011D8B4 27A60030 */  addiu      $a2, $sp, 0x30
/* D3C78 8011D8B8 84440068 */  lh         $a0, 0x68($v0)
/* D3C7C 8011D8BC 8C42006C */  lw         $v0, 0x6C($v0)
/* D3C80 8011D8C0 0040F809 */  jalr       $v0
/* D3C84 8011D8C4 02042021 */   addu      $a0, $s0, $a0
/* D3C88 8011D8C8 27A50020 */  addiu      $a1, $sp, 0x20
/* D3C8C 8011D8CC 27C72E70 */  addiu      $a3, $fp, %lo(D_race_80132E70)
/* D3C90 8011D8D0 27A40040 */  addiu      $a0, $sp, 0x40
/* D3C94 8011D8D4 27A80080 */  addiu      $t0, $sp, 0x80
/* D3C98 8011D8D8 8E02005C */  lw         $v0, 0x5C($s0)
/* D3C9C 8011D8DC 8E030058 */  lw         $v1, 0x58($s0)
/* D3CA0 8011D8E0 14400002 */  bnez       $v0, .Lrace_8011D8EC
/* D3CA4 8011D8E4 27A90084 */   addiu     $t1, $sp, 0x84
/* D3CA8 8011D8E8 24620014 */  addiu      $v0, $v1, 0x14
.Lrace_8011D8EC:
/* D3CAC 8011D8EC AC620020 */  sw         $v0, 0x20($v1)
/* D3CB0 8011D8F0 AFA40010 */  sw         $a0, 0x10($sp)
/* D3CB4 8011D8F4 AFA80014 */  sw         $t0, 0x14($sp)
/* D3CB8 8011D8F8 AFA90018 */  sw         $t1, 0x18($sp)
/* D3CBC 8011D8FC 8E040058 */  lw         $a0, 0x58($s0)
/* D3CC0 8011D900 0C038990 */  jal        func_race_800E2640
/* D3CC4 8011D904 27A60030 */   addiu     $a2, $sp, 0x30
/* D3CC8 8011D908 1040004F */  beqz       $v0, .Lrace_8011DA48
/* D3CCC 8011D90C 27A50050 */   addiu     $a1, $sp, 0x50
/* D3CD0 8011D910 C6E00024 */  lwc1       $f0, 0x24($s7)
/* D3CD4 8011D914 C6E20028 */  lwc1       $f2, 0x28($s7)
/* D3CD8 8011D918 C6E4002C */  lwc1       $f4, 0x2C($s7)
/* D3CDC 8011D91C E7A00050 */  swc1       $f0, 0x50($sp)
/* D3CE0 8011D920 E7A20054 */  swc1       $f2, 0x54($sp)
/* D3CE4 8011D924 E7A40058 */  swc1       $f4, 0x58($sp)
/* D3CE8 8011D928 8E020024 */  lw         $v0, 0x24($s0)
/* D3CEC 8011D92C 27A60060 */  addiu      $a2, $sp, 0x60
/* D3CF0 8011D930 84440070 */  lh         $a0, 0x70($v0)
/* D3CF4 8011D934 8C420074 */  lw         $v0, 0x74($v0)
/* D3CF8 8011D938 0040F809 */  jalr       $v0
/* D3CFC 8011D93C 02042021 */   addu      $a0, $s0, $a0
/* D3D00 8011D940 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* D3D04 8011D944 C7A00030 */  lwc1       $f0, 0x30($sp)
/* D3D08 8011D948 46005281 */  sub.s      $f10, $f10, $f0
/* D3D0C 8011D94C C7A20050 */  lwc1       $f2, 0x50($sp)
/* D3D10 8011D950 460A1082 */  mul.s      $f2, $f2, $f10
/* D3D14 8011D954 C7A80044 */  lwc1       $f8, 0x44($sp)
/* D3D18 8011D958 C7A00034 */  lwc1       $f0, 0x34($sp)
/* D3D1C 8011D95C 46004201 */  sub.s      $f8, $f8, $f0
/* D3D20 8011D960 C7A40054 */  lwc1       $f4, 0x54($sp)
/* D3D24 8011D964 46082102 */  mul.s      $f4, $f4, $f8
/* D3D28 8011D968 C7A60048 */  lwc1       $f6, 0x48($sp)
/* D3D2C 8011D96C C7A00038 */  lwc1       $f0, 0x38($sp)
/* D3D30 8011D970 46003181 */  sub.s      $f6, $f6, $f0
/* D3D34 8011D974 C7A00058 */  lwc1       $f0, 0x58($sp)
/* D3D38 8011D978 46060002 */  mul.s      $f0, $f0, $f6
/* D3D3C 8011D97C 46041080 */  add.s      $f2, $f2, $f4
/* D3D40 8011D980 E7AA0070 */  swc1       $f10, 0x70($sp)
/* D3D44 8011D984 44802000 */  mtc1       $zero, $f4
/* D3D48 8011D988 46001080 */  add.s      $f2, $f2, $f0
/* D3D4C 8011D98C E7A80074 */  swc1       $f8, 0x74($sp)
/* D3D50 8011D990 4602203C */  c.lt.s     $f4, $f2
/* D3D54 8011D994 00000000 */  nop
/* D3D58 8011D998 4500002B */  bc1f       .Lrace_8011DA48
/* D3D5C 8011D99C E7A60078 */   swc1      $f6, 0x78($sp)
/* D3D60 8011D9A0 8FA60080 */  lw         $a2, 0x80($sp)
/* D3D64 8011D9A4 10C0000A */  beqz       $a2, .Lrace_8011D9D0
/* D3D68 8011D9A8 27A50040 */   addiu     $a1, $sp, 0x40
/* D3D6C 8011D9AC 8E6200CC */  lw         $v0, 0xCC($s3)
/* D3D70 8011D9B0 84440020 */  lh         $a0, 0x20($v0)
/* D3D74 8011D9B4 02003821 */  addu       $a3, $s0, $zero
/* D3D78 8011D9B8 AFB70010 */  sw         $s7, 0x10($sp)
/* D3D7C 8011D9BC 8C420024 */  lw         $v0, 0x24($v0)
/* D3D80 8011D9C0 0040F809 */  jalr       $v0
/* D3D84 8011D9C4 02642021 */   addu      $a0, $s3, $a0
/* D3D88 8011D9C8 50400020 */  beql       $v0, $zero, .Lrace_8011DA4C
/* D3D8C 8011D9CC 26310004 */   addiu     $s1, $s1, 0x4
.Lrace_8011D9D0:
/* D3D90 8011D9D0 C7A60030 */  lwc1       $f6, 0x30($sp)
/* D3D94 8011D9D4 C7A00040 */  lwc1       $f0, 0x40($sp)
/* D3D98 8011D9D8 46003181 */  sub.s      $f6, $f6, $f0
/* D3D9C 8011D9DC 46063182 */  mul.s      $f6, $f6, $f6
/* D3DA0 8011D9E0 C7A40034 */  lwc1       $f4, 0x34($sp)
/* D3DA4 8011D9E4 C7A00044 */  lwc1       $f0, 0x44($sp)
/* D3DA8 8011D9E8 46002101 */  sub.s      $f4, $f4, $f0
/* D3DAC 8011D9EC 46042102 */  mul.s      $f4, $f4, $f4
/* D3DB0 8011D9F0 C7A20048 */  lwc1       $f2, 0x48($sp)
/* D3DB4 8011D9F4 C7A00038 */  lwc1       $f0, 0x38($sp)
/* D3DB8 8011D9F8 46020001 */  sub.s      $f0, $f0, $f2
/* D3DBC 8011D9FC 46000002 */  mul.s      $f0, $f0, $f0
/* D3DC0 8011DA00 46043180 */  add.s      $f6, $f6, $f4
/* D3DC4 8011DA04 46003180 */  add.s      $f6, $f6, $f0
/* D3DC8 8011DA08 4606A03C */  c.lt.s     $f20, $f6
/* D3DCC 8011DA0C 00000000 */  nop
/* D3DD0 8011DA10 4500000D */  bc1f       .Lrace_8011DA48
/* D3DD4 8011DA14 24020001 */   addiu     $v0, $zero, 0x1
/* D3DD8 8011DA18 46003506 */  mov.s      $f20, $f6
/* D3DDC 8011DA1C 8FAA0060 */  lw         $t2, 0x60($sp)
/* D3DE0 8011DA20 8FAB0064 */  lw         $t3, 0x64($sp)
/* D3DE4 8011DA24 8FAC0068 */  lw         $t4, 0x68($sp)
/* D3DE8 8011DA28 AE6A03E4 */  sw         $t2, 0x3E4($s3)
/* D3DEC 8011DA2C AE6B03E8 */  sw         $t3, 0x3E8($s3)
/* D3DF0 8011DA30 AE6C03EC */  sw         $t4, 0x3EC($s3)
/* D3DF4 8011DA34 AE2203D4 */  sw         $v0, 0x3D4($s1)
/* D3DF8 8011DA38 8E6203F0 */  lw         $v0, 0x3F0($s3)
/* D3DFC 8011DA3C C7B60084 */  lwc1       $f22, 0x84($sp)
/* D3E00 8011DA40 24420001 */  addiu      $v0, $v0, 0x1
/* D3E04 8011DA44 AE6203F0 */  sw         $v0, 0x3F0($s3)
.Lrace_8011DA48:
/* D3E08 8011DA48 26310004 */  addiu      $s1, $s1, 0x4
.Lrace_8011DA4C:
/* D3E0C 8011DA4C 26B5000C */  addiu      $s5, $s5, 0xC
/* D3E10 8011DA50 2652000C */  addiu      $s2, $s2, 0xC
/* D3E14 8011DA54 0804761E */  j          .Lrace_8011D878
/* D3E18 8011DA58 26940001 */   addiu     $s4, $s4, 0x1
.Lrace_8011DA5C:
/* D3E1C 8011DA5C 0000B021 */  addu       $s6, $zero, $zero
/* D3E20 8011DA60 3C1E8013 */  lui        $fp, %hi(D_race_80132E70)
/* D3E24 8011DA64 27D72E70 */  addiu      $s7, $fp, %lo(D_race_80132E70)
.Lrace_8011DA68:
/* D3E28 8011DA68 8E620148 */  lw         $v0, 0x148($s3)
/* D3E2C 8011DA6C 02C2102B */  sltu       $v0, $s6, $v0
/* D3E30 8011DA70 10400077 */  beqz       $v0, .Lrace_8011DC50
/* D3E34 8011DA74 00000000 */   nop
/* D3E38 8011DA78 8FAA00C8 */  lw         $t2, 0xC8($sp)
/* D3E3C 8011DA7C 15400004 */  bnez       $t2, .Lrace_8011DA90
/* D3E40 8011DA80 00161080 */   sll       $v0, $s6, 2
/* D3E44 8011DA84 240B0001 */  addiu      $t3, $zero, 0x1
/* D3E48 8011DA88 08047712 */  j          .Lrace_8011DC48
/* D3E4C 8011DA8C AFAB00C8 */   sw        $t3, 0xC8($sp)
.Lrace_8011DA90:
/* D3E50 8011DA90 02621021 */  addu       $v0, $s3, $v0
/* D3E54 8011DA94 8C500140 */  lw         $s0, 0x140($v0)
/* D3E58 8011DA98 0000A021 */  addu       $s4, $zero, $zero
/* D3E5C 8011DA9C 02609021 */  addu       $s2, $s3, $zero
/* D3E60 8011DAA0 02808821 */  addu       $s1, $s4, $zero
/* D3E64 8011DAA4 3C158013 */  lui        $s5, %hi(D_race_80132278)
/* D3E68 8011DAA8 26B52278 */  addiu      $s5, $s5, %lo(D_race_80132278)
.Lrace_8011DAAC:
/* D3E6C 8011DAAC 2E820004 */  sltiu      $v0, $s4, 0x4
/* D3E70 8011DAB0 5040FFED */  beql       $v0, $zero, .Lrace_8011DA68
/* D3E74 8011DAB4 26D60001 */   addiu     $s6, $s6, 0x1
/* D3E78 8011DAB8 8E4203D4 */  lw         $v0, 0x3D4($s2)
/* D3E7C 8011DABC 5440005E */  bnel       $v0, $zero, .Lrace_8011DC38
/* D3E80 8011DAC0 26520004 */   addiu     $s2, $s2, 0x4
/* D3E84 8011DAC4 02333021 */  addu       $a2, $s1, $s3
/* D3E88 8011DAC8 24C603A4 */  addiu      $a2, $a2, 0x3A4
/* D3E8C 8011DACC 02A02821 */  addu       $a1, $s5, $zero
/* D3E90 8011DAD0 27C72E70 */  addiu      $a3, $fp, %lo(D_race_80132E70)
/* D3E94 8011DAD4 27A40040 */  addiu      $a0, $sp, 0x40
/* D3E98 8011DAD8 27A80080 */  addiu      $t0, $sp, 0x80
/* D3E9C 8011DADC 8E02005C */  lw         $v0, 0x5C($s0)
/* D3EA0 8011DAE0 8E030058 */  lw         $v1, 0x58($s0)
/* D3EA4 8011DAE4 14400002 */  bnez       $v0, .Lrace_8011DAF0
/* D3EA8 8011DAE8 27A90084 */   addiu     $t1, $sp, 0x84
/* D3EAC 8011DAEC 24620014 */  addiu      $v0, $v1, 0x14
.Lrace_8011DAF0:
/* D3EB0 8011DAF0 AC620020 */  sw         $v0, 0x20($v1)
/* D3EB4 8011DAF4 AFA40010 */  sw         $a0, 0x10($sp)
/* D3EB8 8011DAF8 AFA80014 */  sw         $t0, 0x14($sp)
/* D3EBC 8011DAFC AFA90018 */  sw         $t1, 0x18($sp)
/* D3EC0 8011DB00 8E040058 */  lw         $a0, 0x58($s0)
/* D3EC4 8011DB04 0C038990 */  jal        func_race_800E2640
/* D3EC8 8011DB08 00000000 */   nop
/* D3ECC 8011DB0C 10400049 */  beqz       $v0, .Lrace_8011DC34
/* D3ED0 8011DB10 02331021 */   addu      $v0, $s1, $s3
/* D3ED4 8011DB14 C6E40024 */  lwc1       $f4, 0x24($s7)
/* D3ED8 8011DB18 C6E60028 */  lwc1       $f6, 0x28($s7)
/* D3EDC 8011DB1C C6E8002C */  lwc1       $f8, 0x2C($s7)
/* D3EE0 8011DB20 C7A20040 */  lwc1       $f2, 0x40($sp)
/* D3EE4 8011DB24 244203A4 */  addiu      $v0, $v0, 0x3A4
/* D3EE8 8011DB28 E7A40060 */  swc1       $f4, 0x60($sp)
/* D3EEC 8011DB2C E7A60064 */  swc1       $f6, 0x64($sp)
/* D3EF0 8011DB30 E7A80068 */  swc1       $f8, 0x68($sp)
/* D3EF4 8011DB34 C4400000 */  lwc1       $f0, 0x0($v0)
/* D3EF8 8011DB38 46001081 */  sub.s      $f2, $f2, $f0
/* D3EFC 8011DB3C 46022102 */  mul.s      $f4, $f4, $f2
/* D3F00 8011DB40 E7A20070 */  swc1       $f2, 0x70($sp)
/* D3F04 8011DB44 C7A20044 */  lwc1       $f2, 0x44($sp)
/* D3F08 8011DB48 C4400004 */  lwc1       $f0, 0x4($v0)
/* D3F0C 8011DB4C 46001081 */  sub.s      $f2, $f2, $f0
/* D3F10 8011DB50 46023182 */  mul.s      $f6, $f6, $f2
/* D3F14 8011DB54 E7A20074 */  swc1       $f2, 0x74($sp)
/* D3F18 8011DB58 C7A20048 */  lwc1       $f2, 0x48($sp)
/* D3F1C 8011DB5C C4400008 */  lwc1       $f0, 0x8($v0)
/* D3F20 8011DB60 46001081 */  sub.s      $f2, $f2, $f0
/* D3F24 8011DB64 46024202 */  mul.s      $f8, $f8, $f2
/* D3F28 8011DB68 46062100 */  add.s      $f4, $f4, $f6
/* D3F2C 8011DB6C 44800000 */  mtc1       $zero, $f0
/* D3F30 8011DB70 46082100 */  add.s      $f4, $f4, $f8
/* D3F34 8011DB74 4604003E */  c.le.s     $f0, $f4
/* D3F38 8011DB78 00000000 */  nop
/* D3F3C 8011DB7C 4500002D */  bc1f       .Lrace_8011DC34
/* D3F40 8011DB80 E7A20078 */   swc1      $f2, 0x78($sp)
/* D3F44 8011DB84 8FA60080 */  lw         $a2, 0x80($sp)
/* D3F48 8011DB88 10C0000A */  beqz       $a2, .Lrace_8011DBB4
/* D3F4C 8011DB8C 27A50040 */   addiu     $a1, $sp, 0x40
/* D3F50 8011DB90 8E6200CC */  lw         $v0, 0xCC($s3)
/* D3F54 8011DB94 84440020 */  lh         $a0, 0x20($v0)
/* D3F58 8011DB98 02003821 */  addu       $a3, $s0, $zero
/* D3F5C 8011DB9C AFB70010 */  sw         $s7, 0x10($sp)
/* D3F60 8011DBA0 8C420024 */  lw         $v0, 0x24($v0)
/* D3F64 8011DBA4 0040F809 */  jalr       $v0
/* D3F68 8011DBA8 02642021 */   addu      $a0, $s3, $a0
/* D3F6C 8011DBAC 50400022 */  beql       $v0, $zero, .Lrace_8011DC38
/* D3F70 8011DBB0 26520004 */   addiu     $s2, $s2, 0x4
.Lrace_8011DBB4:
/* D3F74 8011DBB4 02331021 */  addu       $v0, $s1, $s3
/* D3F78 8011DBB8 244203A4 */  addiu      $v0, $v0, 0x3A4
/* D3F7C 8011DBBC C4460000 */  lwc1       $f6, 0x0($v0)
/* D3F80 8011DBC0 C7A00040 */  lwc1       $f0, 0x40($sp)
/* D3F84 8011DBC4 46003181 */  sub.s      $f6, $f6, $f0
/* D3F88 8011DBC8 46063182 */  mul.s      $f6, $f6, $f6
/* D3F8C 8011DBCC C4440004 */  lwc1       $f4, 0x4($v0)
/* D3F90 8011DBD0 C7A00044 */  lwc1       $f0, 0x44($sp)
/* D3F94 8011DBD4 46002101 */  sub.s      $f4, $f4, $f0
/* D3F98 8011DBD8 46042102 */  mul.s      $f4, $f4, $f4
/* D3F9C 8011DBDC C7A20048 */  lwc1       $f2, 0x48($sp)
/* D3FA0 8011DBE0 C4400008 */  lwc1       $f0, 0x8($v0)
/* D3FA4 8011DBE4 46020001 */  sub.s      $f0, $f0, $f2
/* D3FA8 8011DBE8 46000002 */  mul.s      $f0, $f0, $f0
/* D3FAC 8011DBEC 46043180 */  add.s      $f6, $f6, $f4
/* D3FB0 8011DBF0 46003180 */  add.s      $f6, $f6, $f0
/* D3FB4 8011DBF4 4606A03C */  c.lt.s     $f20, $f6
/* D3FB8 8011DBF8 00000000 */  nop
/* D3FBC 8011DBFC 4500000D */  bc1f       .Lrace_8011DC34
/* D3FC0 8011DC00 24020001 */   addiu     $v0, $zero, 0x1
/* D3FC4 8011DC04 46003506 */  mov.s      $f20, $f6
/* D3FC8 8011DC08 8FAC0060 */  lw         $t4, 0x60($sp)
/* D3FCC 8011DC0C 8FAD0064 */  lw         $t5, 0x64($sp)
/* D3FD0 8011DC10 8FAA0068 */  lw         $t2, 0x68($sp)
/* D3FD4 8011DC14 AE6C03E4 */  sw         $t4, 0x3E4($s3)
/* D3FD8 8011DC18 AE6D03E8 */  sw         $t5, 0x3E8($s3)
/* D3FDC 8011DC1C AE6A03EC */  sw         $t2, 0x3EC($s3)
/* D3FE0 8011DC20 AE4203D4 */  sw         $v0, 0x3D4($s2)
/* D3FE4 8011DC24 8E6203F0 */  lw         $v0, 0x3F0($s3)
/* D3FE8 8011DC28 C7B60084 */  lwc1       $f22, 0x84($sp)
/* D3FEC 8011DC2C 24420001 */  addiu      $v0, $v0, 0x1
/* D3FF0 8011DC30 AE6203F0 */  sw         $v0, 0x3F0($s3)
.Lrace_8011DC34:
/* D3FF4 8011DC34 26520004 */  addiu      $s2, $s2, 0x4
.Lrace_8011DC38:
/* D3FF8 8011DC38 2631000C */  addiu      $s1, $s1, 0xC
/* D3FFC 8011DC3C 26B5000C */  addiu      $s5, $s5, 0xC
/* D4000 8011DC40 080476AB */  j          .Lrace_8011DAAC
/* D4004 8011DC44 26940001 */   addiu     $s4, $s4, 0x1
.Lrace_8011DC48:
/* D4008 8011DC48 0804769A */  j          .Lrace_8011DA68
/* D400C 8011DC4C 26D60001 */   addiu     $s6, $s6, 0x1
.Lrace_8011DC50:
/* D4010 8011DC50 8E6203F0 */  lw         $v0, 0x3F0($s3)
/* D4014 8011DC54 1040000D */  beqz       $v0, .Lrace_8011DC8C
/* D4018 8011DC58 00001021 */   addu      $v0, $zero, $zero
/* D401C 8011DC5C C7A000C4 */  lwc1       $f0, 0xC4($sp)
/* D4020 8011DC60 46800020 */  cvt.s.w    $f0, $f0
/* D4024 8011DC64 4600B002 */  mul.s      $f0, $f22, $f0
/* D4028 8011DC68 4600030D */  trunc.w.s  $f12, $f0
/* D402C 8011DC6C 44106000 */  mfc1       $s0, $f12
/* D4030 8011DC70 2E020005 */  sltiu      $v0, $s0, 0x5
/* D4034 8011DC74 10400002 */  beqz       $v0, .Lrace_8011DC80
/* D4038 8011DC78 2610FFFB */   addiu     $s0, $s0, -0x5
/* D403C 8011DC7C 00008021 */  addu       $s0, $zero, $zero
.Lrace_8011DC80:
/* D4040 8011DC80 0C04755E */  jal        func_race_8011D578
/* D4044 8011DC84 02602021 */   addu      $a0, $s3, $zero
/* D4048 8011DC88 02001021 */  addu       $v0, $s0, $zero
.Lrace_8011DC8C:
/* D404C 8011DC8C 8FBF00AC */  lw         $ra, 0xAC($sp)
/* D4050 8011DC90 8FBE00A8 */  lw         $fp, 0xA8($sp)
/* D4054 8011DC94 8FB700A4 */  lw         $s7, 0xA4($sp)
/* D4058 8011DC98 8FB600A0 */  lw         $s6, 0xA0($sp)
/* D405C 8011DC9C 8FB5009C */  lw         $s5, 0x9C($sp)
/* D4060 8011DCA0 8FB40098 */  lw         $s4, 0x98($sp)
/* D4064 8011DCA4 8FB30094 */  lw         $s3, 0x94($sp)
/* D4068 8011DCA8 8FB20090 */  lw         $s2, 0x90($sp)
/* D406C 8011DCAC 8FB1008C */  lw         $s1, 0x8C($sp)
/* D4070 8011DCB0 8FB00088 */  lw         $s0, 0x88($sp)
/* D4074 8011DCB4 D7B600B8 */  ldc1       $f22, 0xB8($sp)
/* D4078 8011DCB8 D7B400B0 */  ldc1       $f20, 0xB0($sp)
/* D407C 8011DCBC 03E00008 */  jr         $ra
/* D4080 8011DCC0 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_race_8011DCC4
/* D4084 8011DCC4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D4088 8011DCC8 AFB00030 */  sw         $s0, 0x30($sp)
/* D408C 8011DCCC 00808021 */  addu       $s0, $a0, $zero
/* D4090 8011DCD0 AFBF0034 */  sw         $ra, 0x34($sp)
/* D4094 8011DCD4 F7B60040 */  sdc1       $f22, 0x40($sp)
/* D4098 8011DCD8 F7B40038 */  sdc1       $f20, 0x38($sp)
/* D409C 8011DCDC 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D40A0 8011DCE0 30420001 */  andi       $v0, $v0, 0x1
/* D40A4 8011DCE4 10400003 */  beqz       $v0, .Lrace_8011DCF4
/* D40A8 8011DCE8 00000000 */   nop
/* D40AC 8011DCEC 0C047851 */  jal        func_race_8011E144
/* D40B0 8011DCF0 00000000 */   nop
.Lrace_8011DCF4:
/* D40B4 8011DCF4 C6060004 */  lwc1       $f6, 0x4($s0)
/* D40B8 8011DCF8 C60803E4 */  lwc1       $f8, 0x3E4($s0)
/* D40BC 8011DCFC 26020004 */  addiu      $v0, $s0, 0x4
/* D40C0 8011DD00 46083182 */  mul.s      $f6, $f6, $f8
/* D40C4 8011DD04 260503E4 */  addiu      $a1, $s0, 0x3E4
/* D40C8 8011DD08 C4440004 */  lwc1       $f4, 0x4($v0)
/* D40CC 8011DD0C C4A00004 */  lwc1       $f0, 0x4($a1)
/* D40D0 8011DD10 46002102 */  mul.s      $f4, $f4, $f0
/* D40D4 8011DD14 C4A20008 */  lwc1       $f2, 0x8($a1)
/* D40D8 8011DD18 C4400008 */  lwc1       $f0, 0x8($v0)
/* D40DC 8011DD1C 46020002 */  mul.s      $f0, $f0, $f2
/* D40E0 8011DD20 46043180 */  add.s      $f6, $f6, $f4
/* D40E4 8011DD24 46003500 */  add.s      $f20, $f6, $f0
/* D40E8 8011DD28 44805000 */  mtc1       $zero, $f10
/* D40EC 8011DD2C 460AA03C */  c.lt.s     $f20, $f10
/* D40F0 8011DD30 00000000 */  nop
/* D40F4 8011DD34 45000014 */  bc1f       .Lrace_8011DD88
/* D40F8 8011DD38 00000000 */   nop
/* D40FC 8011DD3C 46144082 */  mul.s      $f2, $f8, $f20
/* D4100 8011DD40 E7A20020 */  swc1       $f2, 0x20($sp)
/* D4104 8011DD44 C4A00004 */  lwc1       $f0, 0x4($a1)
/* D4108 8011DD48 46140002 */  mul.s      $f0, $f0, $f20
/* D410C 8011DD4C E7A00024 */  swc1       $f0, 0x24($sp)
/* D4110 8011DD50 C4A00008 */  lwc1       $f0, 0x8($a1)
/* D4114 8011DD54 46140002 */  mul.s      $f0, $f0, $f20
/* D4118 8011DD58 E7A00028 */  swc1       $f0, 0x28($sp)
/* D411C 8011DD5C C6000004 */  lwc1       $f0, 0x4($s0)
/* D4120 8011DD60 46020001 */  sub.s      $f0, $f0, $f2
/* D4124 8011DD64 E6000004 */  swc1       $f0, 0x4($s0)
/* D4128 8011DD68 C4400004 */  lwc1       $f0, 0x4($v0)
/* D412C 8011DD6C C7A20024 */  lwc1       $f2, 0x24($sp)
/* D4130 8011DD70 46020001 */  sub.s      $f0, $f0, $f2
/* D4134 8011DD74 E4400004 */  swc1       $f0, 0x4($v0)
/* D4138 8011DD78 C4400008 */  lwc1       $f0, 0x8($v0)
/* D413C 8011DD7C C7A20028 */  lwc1       $f2, 0x28($sp)
/* D4140 8011DD80 46020001 */  sub.s      $f0, $f0, $f2
/* D4144 8011DD84 E4400008 */  swc1       $f0, 0x8($v0)
.Lrace_8011DD88:
/* D4148 8011DD88 C61603EC */  lwc1       $f22, 0x3EC($s0)
/* D414C 8011DD8C 3C01800D */  lui        $at, %hi(D_race_800CE370)
/* D4150 8011DD90 C420E370 */  lwc1       $f0, %lo(D_race_800CE370)($at)
/* D4154 8011DD94 4600B03C */  c.lt.s     $f22, $f0
/* D4158 8011DD98 00000000 */  nop
/* D415C 8011DD9C 45000045 */  bc1f       .Lrace_8011DEB4
/* D4160 8011DDA0 260300E4 */   addiu     $v1, $s0, 0xE4
/* D4164 8011DDA4 C4640028 */  lwc1       $f4, 0x28($v1)
/* D4168 8011DDA8 E7A40010 */  swc1       $f4, 0x10($sp)
/* D416C 8011DDAC C466002C */  lwc1       $f6, 0x2C($v1)
/* D4170 8011DDB0 27A40010 */  addiu      $a0, $sp, 0x10
/* D4174 8011DDB4 E4860004 */  swc1       $f6, 0x4($a0)
/* D4178 8011DDB8 C4620030 */  lwc1       $f2, 0x30($v1)
/* D417C 8011DDBC E4820008 */  swc1       $f2, 0x8($a0)
/* D4180 8011DDC0 C60003E4 */  lwc1       $f0, 0x3E4($s0)
/* D4184 8011DDC4 46002102 */  mul.s      $f4, $f4, $f0
/* D4188 8011DDC8 C4A00004 */  lwc1       $f0, 0x4($a1)
/* D418C 8011DDCC 46003182 */  mul.s      $f6, $f6, $f0
/* D4190 8011DDD0 C4A00008 */  lwc1       $f0, 0x8($a1)
/* D4194 8011DDD4 46001082 */  mul.s      $f2, $f2, $f0
/* D4198 8011DDD8 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D419C 8011DDDC 46062100 */  add.s      $f4, $f4, $f6
/* D41A0 8011DDE0 30420002 */  andi       $v0, $v0, 0x2
/* D41A4 8011DDE4 14400033 */  bnez       $v0, .Lrace_8011DEB4
/* D41A8 8011DDE8 46022100 */   add.s     $f4, $f4, $f2
/* D41AC 8011DDEC 460A203C */  c.lt.s     $f4, $f10
/* D41B0 8011DDF0 00000000 */  nop
/* D41B4 8011DDF4 4500002F */  bc1f       .Lrace_8011DEB4
/* D41B8 8011DDF8 00000000 */   nop
/* D41BC 8011DDFC C4640034 */  lwc1       $f4, 0x34($v1)
/* D41C0 8011DE00 E7A40010 */  swc1       $f4, 0x10($sp)
/* D41C4 8011DE04 C4660038 */  lwc1       $f6, 0x38($v1)
/* D41C8 8011DE08 E4860004 */  swc1       $f6, 0x4($a0)
/* D41CC 8011DE0C C462003C */  lwc1       $f2, 0x3C($v1)
/* D41D0 8011DE10 E4820008 */  swc1       $f2, 0x8($a0)
/* D41D4 8011DE14 C60003E4 */  lwc1       $f0, 0x3E4($s0)
/* D41D8 8011DE18 46002102 */  mul.s      $f4, $f4, $f0
/* D41DC 8011DE1C C4A00004 */  lwc1       $f0, 0x4($a1)
/* D41E0 8011DE20 46003182 */  mul.s      $f6, $f6, $f0
/* D41E4 8011DE24 C4A00008 */  lwc1       $f0, 0x8($a1)
/* D41E8 8011DE28 46001082 */  mul.s      $f2, $f2, $f0
/* D41EC 8011DE2C 46062100 */  add.s      $f4, $f4, $f6
/* D41F0 8011DE30 46022100 */  add.s      $f4, $f4, $f2
/* D41F4 8011DE34 460A203C */  c.lt.s     $f4, $f10
/* D41F8 8011DE38 00000000 */  nop
/* D41FC 8011DE3C 4500000C */  bc1f       .Lrace_8011DE70
/* D4200 8011DE40 00000000 */   nop
/* D4204 8011DE44 3C01800D */  lui        $at, %hi(D_race_800CE374)
/* D4208 8011DE48 C420E374 */  lwc1       $f0, %lo(D_race_800CE374)($at)
/* D420C 8011DE4C 46002000 */  add.s      $f0, $f4, $f0
/* D4210 8011DE50 3C01800D */  lui        $at, %hi(D_race_800CE378)
/* D4214 8011DE54 C422E378 */  lwc1       $f2, %lo(D_race_800CE378)($at)
/* D4218 8011DE58 46020002 */  mul.s      $f0, $f0, $f2
/* D421C 8011DE5C 46020000 */  add.s      $f0, $f0, $f2
/* D4220 8011DE60 3C01800D */  lui        $at, %hi(D_race_800CE37C)
/* D4224 8011DE64 C422E37C */  lwc1       $f2, %lo(D_race_800CE37C)($at)
/* D4228 8011DE68 080477A5 */  j          .Lrace_8011DE94
/* D422C 8011DE6C 00000000 */   nop
.Lrace_8011DE70:
/* D4230 8011DE70 3C01800D */  lui        $at, %hi(D_race_800CE380)
/* D4234 8011DE74 C420E380 */  lwc1       $f0, %lo(D_race_800CE380)($at)
/* D4238 8011DE78 46040001 */  sub.s      $f0, $f0, $f4
/* D423C 8011DE7C 3C01800D */  lui        $at, %hi(D_race_800CE384)
/* D4240 8011DE80 C422E384 */  lwc1       $f2, %lo(D_race_800CE384)($at)
/* D4244 8011DE84 46020002 */  mul.s      $f0, $f0, $f2
/* D4248 8011DE88 46020000 */  add.s      $f0, $f0, $f2
/* D424C 8011DE8C 3C01800D */  lui        $at, %hi(D_race_800CE388)
/* D4250 8011DE90 C422E388 */  lwc1       $f2, %lo(D_race_800CE388)($at)
.Lrace_8011DE94:
/* D4254 8011DE94 46020202 */  mul.s      $f8, $f0, $f2
/* D4258 8011DE98 02002021 */  addu       $a0, $s0, $zero
/* D425C 8011DE9C 44054000 */  mfc1       $a1, $f8
/* D4260 8011DEA0 0C046F83 */  jal        func_race_8011BE0C
/* D4264 8011DEA4 240600C8 */   addiu     $a2, $zero, 0xC8
/* D4268 8011DEA8 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D426C 8011DEAC 34420800 */  ori        $v0, $v0, 0x800
/* D4270 8011DEB0 AE0206AC */  sw         $v0, 0x6AC($s0)
.Lrace_8011DEB4:
/* D4274 8011DEB4 44800000 */  mtc1       $zero, $f0
/* D4278 8011DEB8 4600A03C */  c.lt.s     $f20, $f0
/* D427C 8011DEBC 00000000 */  nop
/* D4280 8011DEC0 45000020 */  bc1f       .Lrace_8011DF44
/* D4284 8011DEC4 00000000 */   nop
/* D4288 8011DEC8 3C01800D */  lui        $at, %hi(D_race_800CE38C)
/* D428C 8011DECC C420E38C */  lwc1       $f0, %lo(D_race_800CE38C)($at)
/* D4290 8011DED0 4600A202 */  mul.s      $f8, $f20, $f0
/* D4294 8011DED4 C60003E4 */  lwc1       $f0, 0x3E4($s0)
/* D4298 8011DED8 46004002 */  mul.s      $f0, $f8, $f0
/* D429C 8011DEDC C60203E8 */  lwc1       $f2, 0x3E8($s0)
/* D42A0 8011DEE0 46024082 */  mul.s      $f2, $f8, $f2
/* D42A4 8011DEE4 C6060004 */  lwc1       $f6, 0x4($s0)
/* D42A8 8011DEE8 46003181 */  sub.s      $f6, $f6, $f0
/* D42AC 8011DEEC C6040008 */  lwc1       $f4, 0x8($s0)
/* D42B0 8011DEF0 46022101 */  sub.s      $f4, $f4, $f2
/* D42B4 8011DEF4 3C01800D */  lui        $at, %hi(D_race_800CE390)
/* D42B8 8011DEF8 C420E390 */  lwc1       $f0, %lo(D_race_800CE390)($at)
/* D42BC 8011DEFC 4600B03C */  c.lt.s     $f22, $f0
/* D42C0 8011DF00 E6060004 */  swc1       $f6, 0x4($s0)
/* D42C4 8011DF04 4500000A */  bc1f       .Lrace_8011DF30
/* D42C8 8011DF08 E6040008 */   swc1      $f4, 0x8($s0)
/* D42CC 8011DF0C 3C01800D */  lui        $at, %hi(D_race_800CE394)
/* D42D0 8011DF10 C420E394 */  lwc1       $f0, %lo(D_race_800CE394)($at)
/* D42D4 8011DF14 4600A002 */  mul.s      $f0, $f20, $f0
/* D42D8 8011DF18 C60203EC */  lwc1       $f2, 0x3EC($s0)
/* D42DC 8011DF1C 46020002 */  mul.s      $f0, $f0, $f2
/* D42E0 8011DF20 C602000C */  lwc1       $f2, 0xC($s0)
/* D42E4 8011DF24 46001081 */  sub.s      $f2, $f2, $f0
/* D42E8 8011DF28 080477D1 */  j          .Lrace_8011DF44
/* D42EC 8011DF2C E602000C */   swc1      $f2, 0xC($s0)
.Lrace_8011DF30:
/* D42F0 8011DF30 C60203EC */  lwc1       $f2, 0x3EC($s0)
/* D42F4 8011DF34 46024082 */  mul.s      $f2, $f8, $f2
/* D42F8 8011DF38 C600000C */  lwc1       $f0, 0xC($s0)
/* D42FC 8011DF3C 46020001 */  sub.s      $f0, $f0, $f2
/* D4300 8011DF40 E600000C */  swc1       $f0, 0xC($s0)
.Lrace_8011DF44:
/* D4304 8011DF44 3C01800D */  lui        $at, %hi(D_race_800CE398)
/* D4308 8011DF48 C424E398 */  lwc1       $f4, %lo(D_race_800CE398)($at)
/* D430C 8011DF4C C60203E4 */  lwc1       $f2, 0x3E4($s0)
/* D4310 8011DF50 46041082 */  mul.s      $f2, $f2, $f4
/* D4314 8011DF54 260203E4 */  addiu      $v0, $s0, 0x3E4
/* D4318 8011DF58 E7A20020 */  swc1       $f2, 0x20($sp)
/* D431C 8011DF5C C4400004 */  lwc1       $f0, 0x4($v0)
/* D4320 8011DF60 46040002 */  mul.s      $f0, $f0, $f4
/* D4324 8011DF64 E7A00024 */  swc1       $f0, 0x24($sp)
/* D4328 8011DF68 C4400008 */  lwc1       $f0, 0x8($v0)
/* D432C 8011DF6C 46040002 */  mul.s      $f0, $f0, $f4
/* D4330 8011DF70 E7A00028 */  swc1       $f0, 0x28($sp)
/* D4334 8011DF74 C6000004 */  lwc1       $f0, 0x4($s0)
/* D4338 8011DF78 46020000 */  add.s      $f0, $f0, $f2
/* D433C 8011DF7C 26020004 */  addiu      $v0, $s0, 0x4
/* D4340 8011DF80 E6000004 */  swc1       $f0, 0x4($s0)
/* D4344 8011DF84 C4400004 */  lwc1       $f0, 0x4($v0)
/* D4348 8011DF88 C7A20024 */  lwc1       $f2, 0x24($sp)
/* D434C 8011DF8C 46020000 */  add.s      $f0, $f0, $f2
/* D4350 8011DF90 E4400004 */  swc1       $f0, 0x4($v0)
/* D4354 8011DF94 C4400008 */  lwc1       $f0, 0x8($v0)
/* D4358 8011DF98 C7A20028 */  lwc1       $f2, 0x28($sp)
/* D435C 8011DF9C 46020000 */  add.s      $f0, $f0, $f2
/* D4360 8011DFA0 3C01800D */  lui        $at, %hi(D_race_800CE39C)
/* D4364 8011DFA4 C422E39C */  lwc1       $f2, %lo(D_race_800CE39C)($at)
/* D4368 8011DFA8 E4400008 */  swc1       $f0, 0x8($v0)
/* D436C 8011DFAC C600000C */  lwc1       $f0, 0xC($s0)
/* D4370 8011DFB0 4600103E */  c.le.s     $f2, $f0
/* D4374 8011DFB4 00000000 */  nop
/* D4378 8011DFB8 45030001 */  bc1tl      .Lrace_8011DFC0
/* D437C 8011DFBC E602000C */   swc1      $f2, 0xC($s0)
.Lrace_8011DFC0:
/* D4380 8011DFC0 8FBF0034 */  lw         $ra, 0x34($sp)
/* D4384 8011DFC4 8FB00030 */  lw         $s0, 0x30($sp)
/* D4388 8011DFC8 D7B60040 */  ldc1       $f22, 0x40($sp)
/* D438C 8011DFCC D7B40038 */  ldc1       $f20, 0x38($sp)
/* D4390 8011DFD0 03E00008 */  jr         $ra
/* D4394 8011DFD4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_8011DFD8
/* D4398 8011DFD8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D439C 8011DFDC AFB00020 */  sw         $s0, 0x20($sp)
/* D43A0 8011DFE0 00808021 */  addu       $s0, $a0, $zero
/* D43A4 8011DFE4 44871000 */  mtc1       $a3, $f2
/* D43A8 8011DFE8 3C01800D */  lui        $at, %hi(D_race_800CE3A0)
/* D43AC 8011DFEC C420E3A0 */  lwc1       $f0, %lo(D_race_800CE3A0)($at)
/* D43B0 8011DFF0 3C038003 */  lui        $v1, %hi(D_8002D2B0)
/* D43B4 8011DFF4 AFBF0024 */  sw         $ra, 0x24($sp)
/* D43B8 8011DFF8 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D43BC 8011DFFC 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* D43C0 8011E000 AE0506B0 */  sw         $a1, 0x6B0($s0)
/* D43C4 8011E004 46001002 */  mul.s      $f0, $f2, $f0
/* D43C8 8011E008 AE0606BC */  sw         $a2, 0x6BC($s0)
/* D43CC 8011E00C 34420001 */  ori        $v0, $v0, 0x1
/* D43D0 8011E010 AE0206AC */  sw         $v0, 0x6AC($s0)
/* D43D4 8011E014 E60206B8 */  swc1       $f2, 0x6B8($s0)
/* D43D8 8011E018 4600028D */  trunc.w.s  $f10, $f0
/* D43DC 8011E01C 44025000 */  mfc1       $v0, $f10
/* D43E0 8011E020 304203FF */  andi       $v0, $v0, 0x3FF
/* D43E4 8011E024 00021080 */  sll        $v0, $v0, 2
/* D43E8 8011E028 00431021 */  addu       $v0, $v0, $v1
/* D43EC 8011E02C C4400000 */  lwc1       $f0, 0x0($v0)
/* D43F0 8011E030 8E0206D4 */  lw         $v0, 0x6D4($s0)
/* D43F4 8011E034 1440003F */  bnez       $v0, .Lrace_8011E134
/* D43F8 8011E038 E60006B4 */   swc1      $f0, 0x6B4($s0)
/* D43FC 8011E03C 260200E4 */  addiu      $v0, $s0, 0xE4
/* D4400 8011E040 C4400028 */  lwc1       $f0, 0x28($v0)
/* D4404 8011E044 E7A00010 */  swc1       $f0, 0x10($sp)
/* D4408 8011E048 C448002C */  lwc1       $f8, 0x2C($v0)
/* D440C 8011E04C 27A30010 */  addiu      $v1, $sp, 0x10
/* D4410 8011E050 E4680004 */  swc1       $f8, 0x4($v1)
/* D4414 8011E054 C4460030 */  lwc1       $f6, 0x30($v0)
/* D4418 8011E058 E4660008 */  swc1       $f6, 0x8($v1)
/* D441C 8011E05C 8E0306AC */  lw         $v1, 0x6AC($s0)
/* D4420 8011E060 30620008 */  andi       $v0, $v1, 0x8
/* D4424 8011E064 14400015 */  bnez       $v0, .Lrace_8011E0BC
/* D4428 8011E068 00002021 */   addu      $a0, $zero, $zero
/* D442C 8011E06C 8E0203F0 */  lw         $v0, 0x3F0($s0)
/* D4430 8011E070 14400012 */  bnez       $v0, .Lrace_8011E0BC
/* D4434 8011E074 30620400 */   andi      $v0, $v1, 0x400
/* D4438 8011E078 54400010 */  bnel       $v0, $zero, .Lrace_8011E0BC
/* D443C 8011E07C 24040001 */   addiu     $a0, $zero, 0x1
/* D4440 8011E080 C60205FC */  lwc1       $f2, 0x5FC($s0)
/* D4444 8011E084 46020082 */  mul.s      $f2, $f0, $f2
/* D4448 8011E088 260205FC */  addiu      $v0, $s0, 0x5FC
/* D444C 8011E08C C4440004 */  lwc1       $f4, 0x4($v0)
/* D4450 8011E090 46044102 */  mul.s      $f4, $f8, $f4
/* D4454 8011E094 C4400008 */  lwc1       $f0, 0x8($v0)
/* D4458 8011E098 46003002 */  mul.s      $f0, $f6, $f0
/* D445C 8011E09C 46041080 */  add.s      $f2, $f2, $f4
/* D4460 8011E0A0 46001080 */  add.s      $f2, $f2, $f0
/* D4464 8011E0A4 3C01800D */  lui        $at, %hi(D_race_800CE3A4)
/* D4468 8011E0A8 C420E3A4 */  lwc1       $f0, %lo(D_race_800CE3A4)($at)
/* D446C 8011E0AC 4600103C */  c.lt.s     $f2, $f0
/* D4470 8011E0B0 00000000 */  nop
/* D4474 8011E0B4 45030001 */  bc1tl      .Lrace_8011E0BC
/* D4478 8011E0B8 24040001 */   addiu     $a0, $zero, 0x1
.Lrace_8011E0BC:
/* D447C 8011E0BC 1080001D */  beqz       $a0, .Lrace_8011E134
/* D4480 8011E0C0 00000000 */   nop
/* D4484 8011E0C4 8E0206D8 */  lw         $v0, 0x6D8($s0)
/* D4488 8011E0C8 10400005 */  beqz       $v0, .Lrace_8011E0E0
/* D448C 8011E0CC 00000000 */   nop
/* D4490 8011E0D0 8E04015C */  lw         $a0, 0x15C($s0)
/* D4494 8011E0D4 0C04654F */  jal        func_race_8011953C
/* D4498 8011E0D8 2405003A */   addiu     $a1, $zero, 0x3A
/* D449C 8011E0DC AE0206D4 */  sw         $v0, 0x6D4($s0)
.Lrace_8011E0E0:
/* D44A0 8011E0E0 8E0206D4 */  lw         $v0, 0x6D4($s0)
/* D44A4 8011E0E4 10400013 */  beqz       $v0, .Lrace_8011E134
/* D44A8 8011E0E8 00000000 */   nop
/* D44AC 8011E0EC 3C01800D */  lui        $at, %hi(D_race_800CE3A8)
/* D44B0 8011E0F0 C420E3A8 */  lwc1       $f0, %lo(D_race_800CE3A8)($at)
/* D44B4 8011E0F4 3C053F4C */  lui        $a1, (0x3F4CCCCD >> 16)
/* D44B8 8011E0F8 34A5CCCD */  ori        $a1, $a1, (0x3F4CCCCD & 0xFFFF)
/* D44BC 8011E0FC 3C01800D */  lui        $at, %hi(D_race_800CE3AC)
/* D44C0 8011E100 C422E3AC */  lwc1       $f2, %lo(D_race_800CE3AC)($at)
/* D44C4 8011E104 E440002C */  swc1       $f0, 0x2C($v0)
/* D44C8 8011E108 E4420030 */  swc1       $f2, 0x30($v0)
/* D44CC 8011E10C 8E0406D4 */  lw         $a0, 0x6D4($s0)
/* D44D0 8011E110 0C01FDE4 */  jal        func_8007F790
/* D44D4 8011E114 00000000 */   nop
/* D44D8 8011E118 8E0306D4 */  lw         $v1, 0x6D4($s0)
/* D44DC 8011E11C 8C620034 */  lw         $v0, 0x34($v1)
/* D44E0 8011E120 24050001 */  addiu      $a1, $zero, 0x1
/* D44E4 8011E124 84440010 */  lh         $a0, 0x10($v0)
/* D44E8 8011E128 8C420014 */  lw         $v0, 0x14($v0)
/* D44EC 8011E12C 0040F809 */  jalr       $v0
/* D44F0 8011E130 00642021 */   addu      $a0, $v1, $a0
.Lrace_8011E134:
/* D44F4 8011E134 8FBF0024 */  lw         $ra, 0x24($sp)
/* D44F8 8011E138 8FB00020 */  lw         $s0, 0x20($sp)
/* D44FC 8011E13C 03E00008 */  jr         $ra
/* D4500 8011E140 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8011E144
/* D4504 8011E144 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D4508 8011E148 AFB00010 */  sw         $s0, 0x10($sp)
/* D450C 8011E14C 00808021 */  addu       $s0, $a0, $zero
/* D4510 8011E150 2403FDFF */  addiu      $v1, $zero, -0x201
/* D4514 8011E154 AFBF0014 */  sw         $ra, 0x14($sp)
/* D4518 8011E158 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D451C 8011E15C 3C01800D */  lui        $at, %hi(D_race_800CE3B0)
/* D4520 8011E160 C420E3B0 */  lwc1       $f0, %lo(D_race_800CE3B0)($at)
/* D4524 8011E164 3C01800D */  lui        $at, %hi(D_race_800CE3B4)
/* D4528 8011E168 C422E3B4 */  lwc1       $f2, %lo(D_race_800CE3B4)($at)
/* D452C 8011E16C 8E0506D4 */  lw         $a1, 0x6D4($s0)
/* D4530 8011E170 00431024 */  and        $v0, $v0, $v1
/* D4534 8011E174 2403FFFE */  addiu      $v1, $zero, -0x2
/* D4538 8011E178 AE0206AC */  sw         $v0, 0x6AC($s0)
/* D453C 8011E17C 00431024 */  and        $v0, $v0, $v1
/* D4540 8011E180 E60006B4 */  swc1       $f0, 0x6B4($s0)
/* D4544 8011E184 E60206B8 */  swc1       $f2, 0x6B8($s0)
/* D4548 8011E188 10A00005 */  beqz       $a1, .Lrace_8011E1A0
/* D454C 8011E18C AE0206AC */   sw        $v0, 0x6AC($s0)
/* D4550 8011E190 8E04015C */  lw         $a0, 0x15C($s0)
/* D4554 8011E194 0C046564 */  jal        func_race_80119590
/* D4558 8011E198 00000000 */   nop
/* D455C 8011E19C AE0006D4 */  sw         $zero, 0x6D4($s0)
.Lrace_8011E1A0:
/* D4560 8011E1A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* D4564 8011E1A4 8FB00010 */  lw         $s0, 0x10($sp)
/* D4568 8011E1A8 03E00008 */  jr         $ra
/* D456C 8011E1AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011E1B0
/* D4570 8011E1B0 C4A40000 */  lwc1       $f4, 0x0($a1)
/* D4574 8011E1B4 C48000C8 */  lwc1       $f0, 0xC8($a0)
/* D4578 8011E1B8 46002102 */  mul.s      $f4, $f4, $f0
/* D457C 8011E1BC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* D4580 8011E1C0 E7A40000 */  swc1       $f4, 0x0($sp)
/* D4584 8011E1C4 C4A00004 */  lwc1       $f0, 0x4($a1)
/* D4588 8011E1C8 C48200C8 */  lwc1       $f2, 0xC8($a0)
/* D458C 8011E1CC 46020002 */  mul.s      $f0, $f0, $f2
/* D4590 8011E1D0 E7A00004 */  swc1       $f0, 0x4($sp)
/* D4594 8011E1D4 C4A00008 */  lwc1       $f0, 0x8($a1)
/* D4598 8011E1D8 C48200C8 */  lwc1       $f2, 0xC8($a0)
/* D459C 8011E1DC 46020002 */  mul.s      $f0, $f0, $f2
/* D45A0 8011E1E0 E7A00008 */  swc1       $f0, 0x8($sp)
/* D45A4 8011E1E4 C4800004 */  lwc1       $f0, 0x4($a0)
/* D45A8 8011E1E8 46040000 */  add.s      $f0, $f0, $f4
/* D45AC 8011E1EC E4800004 */  swc1       $f0, 0x4($a0)
/* D45B0 8011E1F0 24840004 */  addiu      $a0, $a0, 0x4
/* D45B4 8011E1F4 C4800004 */  lwc1       $f0, 0x4($a0)
/* D45B8 8011E1F8 C7A20004 */  lwc1       $f2, 0x4($sp)
/* D45BC 8011E1FC 46020000 */  add.s      $f0, $f0, $f2
/* D45C0 8011E200 E4800004 */  swc1       $f0, 0x4($a0)
/* D45C4 8011E204 C4800008 */  lwc1       $f0, 0x8($a0)
/* D45C8 8011E208 C7A20008 */  lwc1       $f2, 0x8($sp)
/* D45CC 8011E20C 46020000 */  add.s      $f0, $f0, $f2
/* D45D0 8011E210 E4800008 */  swc1       $f0, 0x8($a0)
/* D45D4 8011E214 03E00008 */  jr         $ra
/* D45D8 8011E218 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_race_8011E21C
/* D45DC 8011E21C C48000C8 */  lwc1       $f0, 0xC8($a0)
/* D45E0 8011E220 44863000 */  mtc1       $a2, $f6
/* D45E4 8011E224 46003082 */  mul.s      $f2, $f6, $f0
/* D45E8 8011E228 C4A40000 */  lwc1       $f4, 0x0($a1)
/* D45EC 8011E22C 46022102 */  mul.s      $f4, $f4, $f2
/* D45F0 8011E230 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* D45F4 8011E234 E7A40000 */  swc1       $f4, 0x0($sp)
/* D45F8 8011E238 C4A00004 */  lwc1       $f0, 0x4($a1)
/* D45FC 8011E23C 46020002 */  mul.s      $f0, $f0, $f2
/* D4600 8011E240 E7A00004 */  swc1       $f0, 0x4($sp)
/* D4604 8011E244 C4A00008 */  lwc1       $f0, 0x8($a1)
/* D4608 8011E248 46020002 */  mul.s      $f0, $f0, $f2
/* D460C 8011E24C E7A00008 */  swc1       $f0, 0x8($sp)
/* D4610 8011E250 C4800004 */  lwc1       $f0, 0x4($a0)
/* D4614 8011E254 46040000 */  add.s      $f0, $f0, $f4
/* D4618 8011E258 E4800004 */  swc1       $f0, 0x4($a0)
/* D461C 8011E25C 24840004 */  addiu      $a0, $a0, 0x4
/* D4620 8011E260 C4800004 */  lwc1       $f0, 0x4($a0)
/* D4624 8011E264 C7A20004 */  lwc1       $f2, 0x4($sp)
/* D4628 8011E268 46020000 */  add.s      $f0, $f0, $f2
/* D462C 8011E26C E4800004 */  swc1       $f0, 0x4($a0)
/* D4630 8011E270 C4800008 */  lwc1       $f0, 0x8($a0)
/* D4634 8011E274 C7A20008 */  lwc1       $f2, 0x8($sp)
/* D4638 8011E278 46020000 */  add.s      $f0, $f0, $f2
/* D463C 8011E27C E4800008 */  swc1       $f0, 0x8($a0)
/* D4640 8011E280 03E00008 */  jr         $ra
/* D4644 8011E284 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_race_8011E288
/* D4648 8011E288 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* D464C 8011E28C F7B60030 */  sdc1       $f22, 0x30($sp)
/* D4650 8011E290 4485B000 */  mtc1       $a1, $f22
/* D4654 8011E294 F7B80038 */  sdc1       $f24, 0x38($sp)
/* D4658 8011E298 4486C000 */  mtc1       $a2, $f24
/* D465C 8011E29C AFB00020 */  sw         $s0, 0x20($sp)
/* D4660 8011E2A0 00808021 */  addu       $s0, $a0, $zero
/* D4664 8011E2A4 AFBF0024 */  sw         $ra, 0x24($sp)
/* D4668 8011E2A8 F7B40028 */  sdc1       $f20, 0x28($sp)
/* D466C 8011E2AC 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D4670 8011E2B0 4487A000 */  mtc1       $a3, $f20
/* D4674 8011E2B4 30420002 */  andi       $v0, $v0, 0x2
/* D4678 8011E2B8 14400042 */  bnez       $v0, .Lrace_8011E3C4
/* D467C 8011E2BC 260200E4 */   addiu     $v0, $s0, 0xE4
/* D4680 8011E2C0 C4400040 */  lwc1       $f0, 0x40($v0)
/* D4684 8011E2C4 E7A00010 */  swc1       $f0, 0x10($sp)
/* D4688 8011E2C8 C4400044 */  lwc1       $f0, 0x44($v0)
/* D468C 8011E2CC 27A50010 */  addiu      $a1, $sp, 0x10
/* D4690 8011E2D0 E4A00004 */  swc1       $f0, 0x4($a1)
/* D4694 8011E2D4 C4400048 */  lwc1       $f0, 0x48($v0)
/* D4698 8011E2D8 0C045C7E */  jal        func_race_801171F8
/* D469C 8011E2DC E4A00008 */   swc1      $f0, 0x8($a1)
/* D46A0 8011E2E0 3C01800D */  lui        $at, %hi(D_race_800CE3B8)
/* D46A4 8011E2E4 C420E3B8 */  lwc1       $f0, %lo(D_race_800CE3B8)($at)
/* D46A8 8011E2E8 46180003 */  div.s      $f0, $f0, $f24
/* D46AC 8011E2EC 4600010D */  trunc.w.s  $f4, $f0
/* D46B0 8011E2F0 44022000 */  mfc1       $v0, $f4
/* D46B4 8011E2F4 44820000 */  mtc1       $v0, $f0
/* D46B8 8011E2F8 46800020 */  cvt.s.w    $f0, $f0
/* D46BC 8011E2FC 4600B002 */  mul.s      $f0, $f22, $f0
/* D46C0 8011E300 4405C000 */  mfc1       $a1, $f24
/* D46C4 8011E304 02002021 */  addu       $a0, $s0, $zero
/* D46C8 8011E308 4600010D */  trunc.w.s  $f4, $f0
/* D46CC 8011E30C 44062000 */  mfc1       $a2, $f4
/* D46D0 8011E310 0C046F83 */  jal        func_race_8011BE0C
/* D46D4 8011E314 AE0205EC */   sw        $v0, 0x5EC($s0)
/* D46D8 8011E318 2403FFFE */  addiu      $v1, $zero, -0x2
/* D46DC 8011E31C 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D46E0 8011E320 44800000 */  mtc1       $zero, $f0
/* D46E4 8011E324 00431024 */  and        $v0, $v0, $v1
/* D46E8 8011E328 34420006 */  ori        $v0, $v0, 0x6
/* D46EC 8011E32C 4614003C */  c.lt.s     $f0, $f20
/* D46F0 8011E330 00000000 */  nop
/* D46F4 8011E334 4500000A */  bc1f       .Lrace_8011E360
/* D46F8 8011E338 AE0206AC */   sw        $v0, 0x6AC($s0)
/* D46FC 8011E33C 4614B03C */  c.lt.s     $f22, $f20
/* D4700 8011E340 00000000 */  nop
/* D4704 8011E344 45030001 */  bc1tl      .Lrace_8011E34C
/* D4708 8011E348 4600B506 */   mov.s     $f20, $f22
.Lrace_8011E34C:
/* D470C 8011E34C C60005EC */  lwc1       $f0, 0x5EC($s0)
/* D4710 8011E350 46800020 */  cvt.s.w    $f0, $f0
/* D4714 8011E354 4600A002 */  mul.s      $f0, $f20, $f0
/* D4718 8011E358 4600010D */  trunc.w.s  $f4, $f0
/* D471C 8011E35C E60405E8 */  swc1       $f4, 0x5E8($s0)
.Lrace_8011E360:
/* D4720 8011E360 8E0206D0 */  lw         $v0, 0x6D0($s0)
/* D4724 8011E364 14400017 */  bnez       $v0, .Lrace_8011E3C4
/* D4728 8011E368 00000000 */   nop
/* D472C 8011E36C 8E0206D8 */  lw         $v0, 0x6D8($s0)
/* D4730 8011E370 10400005 */  beqz       $v0, .Lrace_8011E388
/* D4734 8011E374 00000000 */   nop
/* D4738 8011E378 8E04015C */  lw         $a0, 0x15C($s0)
/* D473C 8011E37C 0C04654F */  jal        func_race_8011953C
/* D4740 8011E380 2405003C */   addiu     $a1, $zero, 0x3C
/* D4744 8011E384 AE0206D0 */  sw         $v0, 0x6D0($s0)
.Lrace_8011E388:
/* D4748 8011E388 8E0206D0 */  lw         $v0, 0x6D0($s0)
/* D474C 8011E38C 1040000D */  beqz       $v0, .Lrace_8011E3C4
/* D4750 8011E390 24050001 */   addiu     $a1, $zero, 0x1
/* D4754 8011E394 3C01800D */  lui        $at, %hi(D_race_800CE3BC)
/* D4758 8011E398 C420E3BC */  lwc1       $f0, %lo(D_race_800CE3BC)($at)
/* D475C 8011E39C 3C01800D */  lui        $at, %hi(D_race_800CE3C0)
/* D4760 8011E3A0 C422E3C0 */  lwc1       $f2, %lo(D_race_800CE3C0)($at)
/* D4764 8011E3A4 E440002C */  swc1       $f0, 0x2C($v0)
/* D4768 8011E3A8 E4420030 */  swc1       $f2, 0x30($v0)
/* D476C 8011E3AC 8E0306D0 */  lw         $v1, 0x6D0($s0)
/* D4770 8011E3B0 8C620034 */  lw         $v0, 0x34($v1)
/* D4774 8011E3B4 84440010 */  lh         $a0, 0x10($v0)
/* D4778 8011E3B8 8C420014 */  lw         $v0, 0x14($v0)
/* D477C 8011E3BC 0040F809 */  jalr       $v0
/* D4780 8011E3C0 00642021 */   addu      $a0, $v1, $a0
.Lrace_8011E3C4:
/* D4784 8011E3C4 8FBF0024 */  lw         $ra, 0x24($sp)
/* D4788 8011E3C8 8FB00020 */  lw         $s0, 0x20($sp)
/* D478C 8011E3CC D7B80038 */  ldc1       $f24, 0x38($sp)
/* D4790 8011E3D0 D7B60030 */  ldc1       $f22, 0x30($sp)
/* D4794 8011E3D4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* D4798 8011E3D8 03E00008 */  jr         $ra
/* D479C 8011E3DC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8011E3E0
/* D47A0 8011E3E0 8C8305E8 */  lw         $v1, 0x5E8($a0)
/* D47A4 8011E3E4 1060000F */  beqz       $v1, .Lrace_8011E424
/* D47A8 8011E3E8 00000000 */   nop
/* D47AC 8011E3EC 8C8505EC */  lw         $a1, 0x5EC($a0)
/* D47B0 8011E3F0 00A3102B */  sltu       $v0, $a1, $v1
/* D47B4 8011E3F4 10400007 */  beqz       $v0, .Lrace_8011E414
/* D47B8 8011E3F8 00000000 */   nop
.Lrace_8011E3FC:
/* D47BC 8011E3FC 00651023 */  subu       $v0, $v1, $a1
/* D47C0 8011E400 8C8505EC */  lw         $a1, 0x5EC($a0)
/* D47C4 8011E404 00401821 */  addu       $v1, $v0, $zero
/* D47C8 8011E408 00A3102B */  sltu       $v0, $a1, $v1
/* D47CC 8011E40C 1440FFFB */  bnez       $v0, .Lrace_8011E3FC
/* D47D0 8011E410 AC8305E8 */   sw        $v1, 0x5E8($a0)
.Lrace_8011E414:
/* D47D4 8011E414 8C8205E8 */  lw         $v0, 0x5E8($a0)
/* D47D8 8011E418 AC8005E8 */  sw         $zero, 0x5E8($a0)
/* D47DC 8011E41C AC8005EC */  sw         $zero, 0x5EC($a0)
/* D47E0 8011E420 AC8205E4 */  sw         $v0, 0x5E4($a0)
.Lrace_8011E424:
/* D47E4 8011E424 03E00008 */  jr         $ra
/* D47E8 8011E428 00000000 */   nop

glabel func_race_8011E42C
/* D47EC 8011E42C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D47F0 8011E430 AFB00020 */  sw         $s0, 0x20($sp)
/* D47F4 8011E434 00808021 */  addu       $s0, $a0, $zero
/* D47F8 8011E438 AFBF0024 */  sw         $ra, 0x24($sp)
/* D47FC 8011E43C 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D4800 8011E440 30420002 */  andi       $v0, $v0, 0x2
/* D4804 8011E444 1040001A */  beqz       $v0, .Lrace_8011E4B0
/* D4808 8011E448 260200E4 */   addiu     $v0, $s0, 0xE4
/* D480C 8011E44C AE0005E4 */  sw         $zero, 0x5E4($s0)
/* D4810 8011E450 C4400040 */  lwc1       $f0, 0x40($v0)
/* D4814 8011E454 E7A00010 */  swc1       $f0, 0x10($sp)
/* D4818 8011E458 C4400044 */  lwc1       $f0, 0x44($v0)
/* D481C 8011E45C 27A50010 */  addiu      $a1, $sp, 0x10
/* D4820 8011E460 E4A00004 */  swc1       $f0, 0x4($a1)
/* D4824 8011E464 C4400048 */  lwc1       $f0, 0x48($v0)
/* D4828 8011E468 0C045C7E */  jal        func_race_801171F8
/* D482C 8011E46C E4A00008 */   swc1      $f0, 0x8($a1)
/* D4830 8011E470 2403F7F9 */  addiu      $v1, $zero, -0x807
/* D4834 8011E474 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D4838 8011E478 8E0506D0 */  lw         $a1, 0x6D0($s0)
/* D483C 8011E47C 00431024 */  and        $v0, $v0, $v1
/* D4840 8011E480 10A0000B */  beqz       $a1, .Lrace_8011E4B0
/* D4844 8011E484 AE0206AC */   sw        $v0, 0x6AC($s0)
/* D4848 8011E488 8CA20034 */  lw         $v0, 0x34($a1)
/* D484C 8011E48C 84440018 */  lh         $a0, 0x18($v0)
/* D4850 8011E490 8C42001C */  lw         $v0, 0x1C($v0)
/* D4854 8011E494 0040F809 */  jalr       $v0
/* D4858 8011E498 00A42021 */   addu      $a0, $a1, $a0
/* D485C 8011E49C 8E04015C */  lw         $a0, 0x15C($s0)
/* D4860 8011E4A0 8E0506D0 */  lw         $a1, 0x6D0($s0)
/* D4864 8011E4A4 0C046564 */  jal        func_race_80119590
/* D4868 8011E4A8 00000000 */   nop
/* D486C 8011E4AC AE0006D0 */  sw         $zero, 0x6D0($s0)
.Lrace_8011E4B0:
/* D4870 8011E4B0 8FBF0024 */  lw         $ra, 0x24($sp)
/* D4874 8011E4B4 8FB00020 */  lw         $s0, 0x20($sp)
/* D4878 8011E4B8 03E00008 */  jr         $ra
/* D487C 8011E4BC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8011E4C0
/* D4880 8011E4C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D4884 8011E4C4 AFBF0010 */  sw         $ra, 0x10($sp)
/* D4888 8011E4C8 0C04793E */  jal        func_race_8011E4F8
/* D488C 8011E4CC AC85062C */   sw        $a1, 0x62C($a0)
/* D4890 8011E4D0 8FBF0010 */  lw         $ra, 0x10($sp)
/* D4894 8011E4D4 03E00008 */  jr         $ra
/* D4898 8011E4D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011E4DC
/* D489C 8011E4DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D48A0 8011E4E0 AFBF0010 */  sw         $ra, 0x10($sp)
/* D48A4 8011E4E4 0C04793E */  jal        func_race_8011E4F8
/* D48A8 8011E4E8 AC85060C */   sw        $a1, 0x60C($a0)
/* D48AC 8011E4EC 8FBF0010 */  lw         $ra, 0x10($sp)
/* D48B0 8011E4F0 03E00008 */  jr         $ra
/* D48B4 8011E4F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011E4F8
/* D48B8 8011E4F8 C484062C */  lwc1       $f4, 0x62C($a0)
/* D48BC 8011E4FC 44800000 */  mtc1       $zero, $f0
/* D48C0 8011E500 4600203C */  c.lt.s     $f4, $f0
/* D48C4 8011E504 00000000 */  nop
/* D48C8 8011E508 45000009 */  bc1f       .Lrace_8011E530
/* D48CC 8011E50C 00000000 */   nop
/* D48D0 8011E510 C48000C4 */  lwc1       $f0, 0xC4($a0)
/* D48D4 8011E514 46002087 */  neg.s      $f2, $f4
/* D48D8 8011E518 46001082 */  mul.s      $f2, $f2, $f0
.Lrace_8011E51C:
/* D48DC 8011E51C C480060C */  lwc1       $f0, 0x60C($a0)
/* D48E0 8011E520 46000002 */  mul.s      $f0, $f0, $f0
/* D48E4 8011E524 46001083 */  div.s      $f2, $f2, $f0
/* D48E8 8011E528 03E00008 */  jr         $ra
/* D48EC 8011E52C E48205F0 */   swc1      $f2, 0x5F0($a0)
.Lrace_8011E530:
/* D48F0 8011E530 4604003C */  c.lt.s     $f0, $f4
/* D48F4 8011E534 00000000 */  nop
/* D48F8 8011E538 45000005 */  bc1f       .Lrace_8011E550
/* D48FC 8011E53C 00000000 */   nop
/* D4900 8011E540 C48200C4 */  lwc1       $f2, 0xC4($a0)
/* D4904 8011E544 46022082 */  mul.s      $f2, $f4, $f2
/* D4908 8011E548 08047947 */  j          .Lrace_8011E51C
/* D490C 8011E54C 00000000 */   nop
.Lrace_8011E550:
/* D4910 8011E550 03E00008 */  jr         $ra
/* D4914 8011E554 E48005F0 */   swc1      $f0, 0x5F0($a0)

glabel func_race_8011E558
/* D4918 8011E558 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* D491C 8011E55C AFB20058 */  sw         $s2, 0x58($sp)
/* D4920 8011E560 00809021 */  addu       $s2, $a0, $zero
/* D4924 8011E564 AFBF005C */  sw         $ra, 0x5C($sp)
/* D4928 8011E568 AFB10054 */  sw         $s1, 0x54($sp)
/* D492C 8011E56C AFB00050 */  sw         $s0, 0x50($sp)
/* D4930 8011E570 8E430370 */  lw         $v1, 0x370($s2)
/* D4934 8011E574 2C620002 */  sltiu      $v0, $v1, 0x2
/* D4938 8011E578 14400080 */  bnez       $v0, .Lrace_8011E77C
/* D493C 8011E57C 00A08021 */   addu      $s0, $a1, $zero
/* D4940 8011E580 8E4205DC */  lw         $v0, 0x5DC($s2)
/* D4944 8011E584 1440007D */  bnez       $v0, .Lrace_8011E77C
/* D4948 8011E588 00000000 */   nop
/* D494C 8011E58C 8E4205E0 */  lw         $v0, 0x5E0($s2)
/* D4950 8011E590 1440007A */  bnez       $v0, .Lrace_8011E77C
/* D4954 8011E594 2C620004 */   sltiu     $v0, $v1, 0x4
/* D4958 8011E598 2650019C */  addiu      $s0, $s2, 0x19C
/* D495C 8011E59C 10400010 */  beqz       $v0, .Lrace_8011E5E0
/* D4960 8011E5A0 00003021 */   addu      $a2, $zero, $zero
/* D4964 8011E5A4 00A08021 */  addu       $s0, $a1, $zero
/* D4968 8011E5A8 2604FE64 */  addiu      $a0, $s0, -0x19C
/* D496C 8011E5AC 00922023 */  subu       $a0, $a0, $s2
/* D4970 8011E5B0 000410C0 */  sll        $v0, $a0, 3
/* D4974 8011E5B4 00441021 */  addu       $v0, $v0, $a0
/* D4978 8011E5B8 00021980 */  sll        $v1, $v0, 6
/* D497C 8011E5BC 00431021 */  addu       $v0, $v0, $v1
/* D4980 8011E5C0 000210C0 */  sll        $v0, $v0, 3
/* D4984 8011E5C4 00441021 */  addu       $v0, $v0, $a0
/* D4988 8011E5C8 00021BC0 */  sll        $v1, $v0, 15
/* D498C 8011E5CC 00431021 */  addu       $v0, $v0, $v1
/* D4990 8011E5D0 000210C0 */  sll        $v0, $v0, 3
/* D4994 8011E5D4 00441021 */  addu       $v0, $v0, $a0
/* D4998 8011E5D8 00021023 */  negu       $v0, $v0
/* D499C 8011E5DC 00023103 */  sra        $a2, $v0, 4
.Lrace_8011E5E0:
/* D49A0 8011E5E0 3C03800D */  lui        $v1, %hi(D_race_800CE4AC)
/* D49A4 8011E5E4 2463E4AC */  addiu      $v1, $v1, %lo(D_race_800CE4AC)
/* D49A8 8011E5E8 00061080 */  sll        $v0, $a2, 2
/* D49AC 8011E5EC 00431021 */  addu       $v0, $v0, $v1
/* D49B0 8011E5F0 8C430000 */  lw         $v1, 0x0($v0)
/* D49B4 8011E5F4 000310C0 */  sll        $v0, $v1, 3
/* D49B8 8011E5F8 00431023 */  subu       $v0, $v0, $v1
/* D49BC 8011E5FC 00021100 */  sll        $v0, $v0, 4
/* D49C0 8011E600 02421021 */  addu       $v0, $s2, $v0
/* D49C4 8011E604 8C4201E4 */  lw         $v0, 0x1E4($v0)
/* D49C8 8011E608 30420001 */  andi       $v0, $v0, 0x1
/* D49CC 8011E60C 1040001F */  beqz       $v0, .Lrace_8011E68C
/* D49D0 8011E610 0066102B */   sltu      $v0, $v1, $a2
/* D49D4 8011E614 10400003 */  beqz       $v0, .Lrace_8011E624
/* D49D8 8011E618 00C02021 */   addu      $a0, $a2, $zero
/* D49DC 8011E61C 0804798B */  j          .Lrace_8011E62C
/* D49E0 8011E620 00601021 */   addu      $v0, $v1, $zero
.Lrace_8011E624:
/* D49E4 8011E624 00602021 */  addu       $a0, $v1, $zero
/* D49E8 8011E628 00C01021 */  addu       $v0, $a2, $zero
.Lrace_8011E62C:
/* D49EC 8011E62C 000218C0 */  sll        $v1, $v0, 3
/* D49F0 8011E630 00621823 */  subu       $v1, $v1, $v0
/* D49F4 8011E634 00031900 */  sll        $v1, $v1, 4
/* D49F8 8011E638 00721821 */  addu       $v1, $v1, $s2
/* D49FC 8011E63C 246301CC */  addiu      $v1, $v1, 0x1CC
/* D4A00 8011E640 000410C0 */  sll        $v0, $a0, 3
/* D4A04 8011E644 00441023 */  subu       $v0, $v0, $a0
/* D4A08 8011E648 00021100 */  sll        $v0, $v0, 4
/* D4A0C 8011E64C 00521021 */  addu       $v0, $v0, $s2
/* D4A10 8011E650 244201CC */  addiu      $v0, $v0, 0x1CC
/* D4A14 8011E654 C4600000 */  lwc1       $f0, 0x0($v1)
/* D4A18 8011E658 C4420000 */  lwc1       $f2, 0x0($v0)
/* D4A1C 8011E65C 46020001 */  sub.s      $f0, $f0, $f2
/* D4A20 8011E660 E7A00010 */  swc1       $f0, 0x10($sp)
/* D4A24 8011E664 C4600004 */  lwc1       $f0, 0x4($v1)
/* D4A28 8011E668 C4420004 */  lwc1       $f2, 0x4($v0)
/* D4A2C 8011E66C 46020001 */  sub.s      $f0, $f0, $f2
/* D4A30 8011E670 27A40010 */  addiu      $a0, $sp, 0x10
/* D4A34 8011E674 E4800004 */  swc1       $f0, 0x4($a0)
/* D4A38 8011E678 C4600008 */  lwc1       $f0, 0x8($v1)
/* D4A3C 8011E67C C4420008 */  lwc1       $f2, 0x8($v0)
/* D4A40 8011E680 46020001 */  sub.s      $f0, $f0, $f2
/* D4A44 8011E684 080479AB */  j          .Lrace_8011E6AC
/* D4A48 8011E688 E4800008 */   swc1      $f0, 0x8($a0)
.Lrace_8011E68C:
/* D4A4C 8011E68C 264200E4 */  addiu      $v0, $s2, 0xE4
/* D4A50 8011E690 C4400028 */  lwc1       $f0, 0x28($v0)
/* D4A54 8011E694 E7A00010 */  swc1       $f0, 0x10($sp)
/* D4A58 8011E698 C440002C */  lwc1       $f0, 0x2C($v0)
/* D4A5C 8011E69C 27A30010 */  addiu      $v1, $sp, 0x10
/* D4A60 8011E6A0 E4600004 */  swc1       $f0, 0x4($v1)
/* D4A64 8011E6A4 C4400030 */  lwc1       $f0, 0x30($v0)
/* D4A68 8011E6A8 E4600008 */  swc1       $f0, 0x8($v1)
.Lrace_8011E6AC:
/* D4A6C 8011E6AC 3C03800D */  lui        $v1, %hi(D_race_800CE4BC)
/* D4A70 8011E6B0 2463E4BC */  addiu      $v1, $v1, %lo(D_race_800CE4BC)
/* D4A74 8011E6B4 00061080 */  sll        $v0, $a2, 2
/* D4A78 8011E6B8 00431021 */  addu       $v0, $v0, $v1
/* D4A7C 8011E6BC 8C430000 */  lw         $v1, 0x0($v0)
/* D4A80 8011E6C0 000310C0 */  sll        $v0, $v1, 3
/* D4A84 8011E6C4 00431023 */  subu       $v0, $v0, $v1
/* D4A88 8011E6C8 00021100 */  sll        $v0, $v0, 4
/* D4A8C 8011E6CC 02421021 */  addu       $v0, $s2, $v0
/* D4A90 8011E6D0 8C4201E4 */  lw         $v0, 0x1E4($v0)
/* D4A94 8011E6D4 30420001 */  andi       $v0, $v0, 0x1
/* D4A98 8011E6D8 1040001D */  beqz       $v0, .Lrace_8011E750
/* D4A9C 8011E6DC 00C3102B */   sltu      $v0, $a2, $v1
/* D4AA0 8011E6E0 10400003 */  beqz       $v0, .Lrace_8011E6F0
/* D4AA4 8011E6E4 00601021 */   addu      $v0, $v1, $zero
/* D4AA8 8011E6E8 080479BE */  j          .Lrace_8011E6F8
/* D4AAC 8011E6EC 00C02021 */   addu      $a0, $a2, $zero
.Lrace_8011E6F0:
/* D4AB0 8011E6F0 00602021 */  addu       $a0, $v1, $zero
/* D4AB4 8011E6F4 00C01021 */  addu       $v0, $a2, $zero
.Lrace_8011E6F8:
/* D4AB8 8011E6F8 000218C0 */  sll        $v1, $v0, 3
/* D4ABC 8011E6FC 00621823 */  subu       $v1, $v1, $v0
/* D4AC0 8011E700 00031900 */  sll        $v1, $v1, 4
/* D4AC4 8011E704 00721821 */  addu       $v1, $v1, $s2
/* D4AC8 8011E708 246301CC */  addiu      $v1, $v1, 0x1CC
/* D4ACC 8011E70C 000410C0 */  sll        $v0, $a0, 3
/* D4AD0 8011E710 00441023 */  subu       $v0, $v0, $a0
/* D4AD4 8011E714 00021100 */  sll        $v0, $v0, 4
/* D4AD8 8011E718 00521021 */  addu       $v0, $v0, $s2
/* D4ADC 8011E71C 244201CC */  addiu      $v0, $v0, 0x1CC
/* D4AE0 8011E720 C4600000 */  lwc1       $f0, 0x0($v1)
/* D4AE4 8011E724 C4420000 */  lwc1       $f2, 0x0($v0)
/* D4AE8 8011E728 46020001 */  sub.s      $f0, $f0, $f2
/* D4AEC 8011E72C E7A00020 */  swc1       $f0, 0x20($sp)
/* D4AF0 8011E730 C4600004 */  lwc1       $f0, 0x4($v1)
/* D4AF4 8011E734 C4420004 */  lwc1       $f2, 0x4($v0)
/* D4AF8 8011E738 46020001 */  sub.s      $f0, $f0, $f2
/* D4AFC 8011E73C E7A00024 */  swc1       $f0, 0x24($sp)
/* D4B00 8011E740 C4600008 */  lwc1       $f0, 0x8($v1)
/* D4B04 8011E744 C4420008 */  lwc1       $f2, 0x8($v0)
/* D4B08 8011E748 080479DA */  j          .Lrace_8011E768
/* D4B0C 8011E74C 46020001 */   sub.s     $f0, $f0, $f2
.Lrace_8011E750:
/* D4B10 8011E750 264200E4 */  addiu      $v0, $s2, 0xE4
/* D4B14 8011E754 C4400034 */  lwc1       $f0, 0x34($v0)
/* D4B18 8011E758 E7A00020 */  swc1       $f0, 0x20($sp)
/* D4B1C 8011E75C C4400038 */  lwc1       $f0, 0x38($v0)
/* D4B20 8011E760 E7A00024 */  swc1       $f0, 0x24($sp)
/* D4B24 8011E764 C440003C */  lwc1       $f0, 0x3C($v0)
.Lrace_8011E768:
/* D4B28 8011E768 E7A00028 */  swc1       $f0, 0x28($sp)
/* D4B2C 8011E76C 264400E4 */  addiu      $a0, $s2, 0xE4
/* D4B30 8011E770 27A50010 */  addiu      $a1, $sp, 0x10
/* D4B34 8011E774 0C01577E */  jal        func_80055DF8
/* D4B38 8011E778 27A60020 */   addiu     $a2, $sp, 0x20
.Lrace_8011E77C:
/* D4B3C 8011E77C C6000030 */  lwc1       $f0, 0x30($s0)
/* D4B40 8011E780 C602000C */  lwc1       $f2, 0xC($s0)
/* D4B44 8011E784 46020001 */  sub.s      $f0, $f0, $f2
/* D4B48 8011E788 C6420190 */  lwc1       $f2, 0x190($s2)
/* D4B4C 8011E78C 46020000 */  add.s      $f0, $f0, $f2
/* D4B50 8011E790 E7A00030 */  swc1       $f0, 0x30($sp)
/* D4B54 8011E794 C6000034 */  lwc1       $f0, 0x34($s0)
/* D4B58 8011E798 C6020010 */  lwc1       $f2, 0x10($s0)
/* D4B5C 8011E79C 46020001 */  sub.s      $f0, $f0, $f2
/* D4B60 8011E7A0 C6420194 */  lwc1       $f2, 0x194($s2)
/* D4B64 8011E7A4 46020000 */  add.s      $f0, $f0, $f2
/* D4B68 8011E7A8 E7A00034 */  swc1       $f0, 0x34($sp)
/* D4B6C 8011E7AC C6000038 */  lwc1       $f0, 0x38($s0)
/* D4B70 8011E7B0 C6020014 */  lwc1       $f2, 0x14($s0)
/* D4B74 8011E7B4 265100E4 */  addiu      $s1, $s2, 0xE4
/* D4B78 8011E7B8 46020001 */  sub.s      $f0, $f0, $f2
/* D4B7C 8011E7BC C6420198 */  lwc1       $f2, 0x198($s2)
/* D4B80 8011E7C0 02202021 */  addu       $a0, $s1, $zero
/* D4B84 8011E7C4 46020000 */  add.s      $f0, $f0, $f2
/* D4B88 8011E7C8 27B00040 */  addiu      $s0, $sp, 0x40
/* D4B8C 8011E7CC 02002821 */  addu       $a1, $s0, $zero
/* D4B90 8011E7D0 0C01595B */  jal        func_8005656C
/* D4B94 8011E7D4 E7A00038 */   swc1      $f0, 0x38($sp)
/* D4B98 8011E7D8 02202021 */  addu       $a0, $s1, $zero
/* D4B9C 8011E7DC C7A60040 */  lwc1       $f6, 0x40($sp)
/* D4BA0 8011E7E0 C7A00030 */  lwc1       $f0, 0x30($sp)
/* D4BA4 8011E7E4 C7A40044 */  lwc1       $f4, 0x44($sp)
/* D4BA8 8011E7E8 46003180 */  add.s      $f6, $f6, $f0
/* D4BAC 8011E7EC C7A00034 */  lwc1       $f0, 0x34($sp)
/* D4BB0 8011E7F0 C7A20038 */  lwc1       $f2, 0x38($sp)
/* D4BB4 8011E7F4 46002100 */  add.s      $f4, $f4, $f0
/* D4BB8 8011E7F8 C7A00048 */  lwc1       $f0, 0x48($sp)
/* D4BBC 8011E7FC 02002821 */  addu       $a1, $s0, $zero
/* D4BC0 8011E800 46020000 */  add.s      $f0, $f0, $f2
/* D4BC4 8011E804 E7A60040 */  swc1       $f6, 0x40($sp)
/* D4BC8 8011E808 E7A40044 */  swc1       $f4, 0x44($sp)
/* D4BCC 8011E80C 0C015962 */  jal        func_80056588
/* D4BD0 8011E810 E7A00048 */   swc1      $f0, 0x48($sp)
/* D4BD4 8011E814 0C047BE0 */  jal        func_race_8011EF80
/* D4BD8 8011E818 02402021 */   addu      $a0, $s2, $zero
/* D4BDC 8011E81C 8FBF005C */  lw         $ra, 0x5C($sp)
/* D4BE0 8011E820 8FB20058 */  lw         $s2, 0x58($sp)
/* D4BE4 8011E824 8FB10054 */  lw         $s1, 0x54($sp)
/* D4BE8 8011E828 8FB00050 */  lw         $s0, 0x50($sp)
/* D4BEC 8011E82C 03E00008 */  jr         $ra
/* D4BF0 8011E830 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_race_8011E834
/* D4BF4 8011E834 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D4BF8 8011E838 AFB00010 */  sw         $s0, 0x10($sp)
/* D4BFC 8011E83C 00808021 */  addu       $s0, $a0, $zero
/* D4C00 8011E840 24060096 */  addiu      $a2, $zero, 0x96
/* D4C04 8011E844 AFBF0014 */  sw         $ra, 0x14($sp)
/* D4C08 8011E848 8E0206AC */  lw         $v0, 0x6AC($s0)
/* D4C0C 8011E84C 3C05BB44 */  lui        $a1, (0xBB449BA6 >> 16)
/* D4C10 8011E850 34A59BA6 */  ori        $a1, $a1, (0xBB449BA6 & 0xFFFF)
/* D4C14 8011E854 34420008 */  ori        $v0, $v0, 0x8
/* D4C18 8011E858 0C046F5D */  jal        func_race_8011BD74
/* D4C1C 8011E85C AE0206AC */   sw        $v0, 0x6AC($s0)
/* D4C20 8011E860 02002021 */  addu       $a0, $s0, $zero
/* D4C24 8011E864 AC80065C */  sw         $zero, 0x65C($a0)
/* D4C28 8011E868 AC80066C */  sw         $zero, 0x66C($a0)
/* D4C2C 8011E86C 0C047BE0 */  jal        func_race_8011EF80
/* D4C30 8011E870 AC800668 */   sw        $zero, 0x668($a0)
/* D4C34 8011E874 8FBF0014 */  lw         $ra, 0x14($sp)
/* D4C38 8011E878 8FB00010 */  lw         $s0, 0x10($sp)
/* D4C3C 8011E87C 03E00008 */  jr         $ra
/* D4C40 8011E880 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011E884
/* D4C44 8011E884 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D4C48 8011E888 2403FFF7 */  addiu      $v1, $zero, -0x9
/* D4C4C 8011E88C AC80065C */  sw         $zero, 0x65C($a0)
/* D4C50 8011E890 AC80066C */  sw         $zero, 0x66C($a0)
/* D4C54 8011E894 AC800668 */  sw         $zero, 0x668($a0)
/* D4C58 8011E898 00431024 */  and        $v0, $v0, $v1
/* D4C5C 8011E89C 03E00008 */  jr         $ra
/* D4C60 8011E8A0 AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_8011E8A4
/* D4C64 8011E8A4 C4820160 */  lwc1       $f2, 0x160($a0)
/* D4C68 8011E8A8 C4A00000 */  lwc1       $f0, 0x0($a1)
/* D4C6C 8011E8AC 46020002 */  mul.s      $f0, $f0, $f2
/* D4C70 8011E8B0 E4800634 */  swc1       $f0, 0x634($a0)
/* D4C74 8011E8B4 C4A00004 */  lwc1       $f0, 0x4($a1)
/* D4C78 8011E8B8 46020002 */  mul.s      $f0, $f0, $f2
/* D4C7C 8011E8BC 24820634 */  addiu      $v0, $a0, 0x634
/* D4C80 8011E8C0 E4400004 */  swc1       $f0, 0x4($v0)
/* D4C84 8011E8C4 C4A00008 */  lwc1       $f0, 0x8($a1)
/* D4C88 8011E8C8 46020002 */  mul.s      $f0, $f0, $f2
/* D4C8C 8011E8CC E4400008 */  swc1       $f0, 0x8($v0)
/* D4C90 8011E8D0 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D4C94 8011E8D4 34420020 */  ori        $v0, $v0, 0x20
/* D4C98 8011E8D8 03E00008 */  jr         $ra
/* D4C9C 8011E8DC AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_8011E8E0
/* D4CA0 8011E8E0 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D4CA4 8011E8E4 2403FFDF */  addiu      $v1, $zero, -0x21
/* D4CA8 8011E8E8 00431024 */  and        $v0, $v0, $v1
/* D4CAC 8011E8EC 03E00008 */  jr         $ra
/* D4CB0 8011E8F0 AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_8011E8F4
/* D4CB4 8011E8F4 C4820160 */  lwc1       $f2, 0x160($a0)
/* D4CB8 8011E8F8 C4A00000 */  lwc1       $f0, 0x0($a1)
/* D4CBC 8011E8FC 46020002 */  mul.s      $f0, $f0, $f2
/* D4CC0 8011E900 E4800640 */  swc1       $f0, 0x640($a0)
/* D4CC4 8011E904 C4A00004 */  lwc1       $f0, 0x4($a1)
/* D4CC8 8011E908 46020002 */  mul.s      $f0, $f0, $f2
/* D4CCC 8011E90C 24820640 */  addiu      $v0, $a0, 0x640
/* D4CD0 8011E910 E4400004 */  swc1       $f0, 0x4($v0)
/* D4CD4 8011E914 C4A00008 */  lwc1       $f0, 0x8($a1)
/* D4CD8 8011E918 46020002 */  mul.s      $f0, $f0, $f2
/* D4CDC 8011E91C E4400008 */  swc1       $f0, 0x8($v0)
/* D4CE0 8011E920 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D4CE4 8011E924 34420040 */  ori        $v0, $v0, 0x40
/* D4CE8 8011E928 03E00008 */  jr         $ra
/* D4CEC 8011E92C AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_8011E930
/* D4CF0 8011E930 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D4CF4 8011E934 2403FFBF */  addiu      $v1, $zero, -0x41
/* D4CF8 8011E938 00431024 */  and        $v0, $v0, $v1
/* D4CFC 8011E93C 03E00008 */  jr         $ra
/* D4D00 8011E940 AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_8011E944
/* D4D04 8011E944 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D4D08 8011E948 24030258 */  addiu      $v1, $zero, 0x258
/* D4D0C 8011E94C AC8306CC */  sw         $v1, 0x6CC($a0)
/* D4D10 8011E950 34420080 */  ori        $v0, $v0, 0x80
/* D4D14 8011E954 03E00008 */  jr         $ra
/* D4D18 8011E958 AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_8011E95C
/* D4D1C 8011E95C 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D4D20 8011E960 2403FF7F */  addiu      $v1, $zero, -0x81
/* D4D24 8011E964 AC8006CC */  sw         $zero, 0x6CC($a0)
/* D4D28 8011E968 00431024 */  and        $v0, $v0, $v1
/* D4D2C 8011E96C 03E00008 */  jr         $ra
/* D4D30 8011E970 AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_8011E974
/* D4D34 8011E974 C4840650 */  lwc1       $f4, 0x650($a0)
/* D4D38 8011E978 44800000 */  mtc1       $zero, $f0
/* D4D3C 8011E97C 4604003C */  c.lt.s     $f0, $f4
/* D4D40 8011E980 00000000 */  nop
/* D4D44 8011E984 4500000D */  bc1f       .Lrace_8011E9BC
/* D4D48 8011E988 00000000 */   nop
/* D4D4C 8011E98C 3C01800D */  lui        $at, %hi(D_race_800CE3C4)
/* D4D50 8011E990 C420E3C4 */  lwc1       $f0, %lo(D_race_800CE3C4)($at)
/* D4D54 8011E994 3C01800D */  lui        $at, %hi(D_race_800CE3C8)
/* D4D58 8011E998 C422E3C8 */  lwc1       $f2, %lo(D_race_800CE3C8)($at)
/* D4D5C 8011E99C 46040003 */  div.s      $f0, $f0, $f4
/* D4D60 8011E9A0 46001081 */  sub.s      $f2, $f2, $f0
/* D4D64 8011E9A4 3C01800D */  lui        $at, %hi(D_race_800CE3CC)
/* D4D68 8011E9A8 C420E3CC */  lwc1       $f0, %lo(D_race_800CE3CC)($at)
/* D4D6C 8011E9AC 46001082 */  mul.s      $f2, $f2, $f0
/* D4D70 8011E9B0 46001087 */  neg.s      $f2, $f2
/* D4D74 8011E9B4 03E00008 */  jr         $ra
/* D4D78 8011E9B8 E4820668 */   swc1      $f2, 0x668($a0)
.Lrace_8011E9BC:
/* D4D7C 8011E9BC 4600203C */  c.lt.s     $f4, $f0
/* D4D80 8011E9C0 00000000 */  nop
/* D4D84 8011E9C4 4500000D */  bc1f       .Lrace_8011E9FC
/* D4D88 8011E9C8 00000000 */   nop
/* D4D8C 8011E9CC 3C01800D */  lui        $at, %hi(D_race_800CE3D0)
/* D4D90 8011E9D0 C420E3D0 */  lwc1       $f0, %lo(D_race_800CE3D0)($at)
/* D4D94 8011E9D4 3C01800D */  lui        $at, %hi(D_race_800CE3D4)
/* D4D98 8011E9D8 C422E3D4 */  lwc1       $f2, %lo(D_race_800CE3D4)($at)
/* D4D9C 8011E9DC 46040003 */  div.s      $f0, $f0, $f4
/* D4DA0 8011E9E0 46000007 */  neg.s      $f0, $f0
/* D4DA4 8011E9E4 46001081 */  sub.s      $f2, $f2, $f0
/* D4DA8 8011E9E8 3C01800D */  lui        $at, %hi(D_race_800CE3D8)
/* D4DAC 8011E9EC C420E3D8 */  lwc1       $f0, %lo(D_race_800CE3D8)($at)
/* D4DB0 8011E9F0 46001082 */  mul.s      $f2, $f2, $f0
/* D4DB4 8011E9F4 03E00008 */  jr         $ra
/* D4DB8 8011E9F8 E4820668 */   swc1      $f2, 0x668($a0)
.Lrace_8011E9FC:
/* D4DBC 8011E9FC 03E00008 */  jr         $ra
/* D4DC0 8011EA00 E4800668 */   swc1      $f0, 0x668($a0)

glabel func_race_8011EA04
/* D4DC4 8011EA04 8C870158 */  lw         $a3, 0x158($a0)
/* D4DC8 8011EA08 10E00008 */  beqz       $a3, .Lrace_8011EA2C
/* D4DCC 8011EA0C 00001821 */   addu      $v1, $zero, $zero
/* D4DD0 8011EA10 00803021 */  addu       $a2, $a0, $zero
.Lrace_8011EA14:
/* D4DD4 8011EA14 8CC2014C */  lw         $v0, 0x14C($a2)
/* D4DD8 8011EA18 1045000C */  beq        $v0, $a1, .Lrace_8011EA4C
/* D4DDC 8011EA1C 24630001 */   addiu     $v1, $v1, 0x1
/* D4DE0 8011EA20 0067102B */  sltu       $v0, $v1, $a3
/* D4DE4 8011EA24 1440FFFB */  bnez       $v0, .Lrace_8011EA14
/* D4DE8 8011EA28 24C60004 */   addiu     $a2, $a2, 0x4
.Lrace_8011EA2C:
/* D4DEC 8011EA2C 8C830158 */  lw         $v1, 0x158($a0)
/* D4DF0 8011EA30 2C620003 */  sltiu      $v0, $v1, 0x3
/* D4DF4 8011EA34 10400005 */  beqz       $v0, .Lrace_8011EA4C
/* D4DF8 8011EA38 00031080 */   sll       $v0, $v1, 2
/* D4DFC 8011EA3C 00821021 */  addu       $v0, $a0, $v0
/* D4E00 8011EA40 AC45014C */  sw         $a1, 0x14C($v0)
/* D4E04 8011EA44 24620001 */  addiu      $v0, $v1, 0x1
/* D4E08 8011EA48 AC820158 */  sw         $v0, 0x158($a0)
.Lrace_8011EA4C:
/* D4E0C 8011EA4C 03E00008 */  jr         $ra
/* D4E10 8011EA50 00000000 */   nop

glabel func_race_8011EA54
/* D4E14 8011EA54 8C870158 */  lw         $a3, 0x158($a0)
/* D4E18 8011EA58 10E0001C */  beqz       $a3, .Lrace_8011EACC
/* D4E1C 8011EA5C 00001821 */   addu      $v1, $zero, $zero
/* D4E20 8011EA60 00803021 */  addu       $a2, $a0, $zero
.Lrace_8011EA64:
/* D4E24 8011EA64 8CC2014C */  lw         $v0, 0x14C($a2)
/* D4E28 8011EA68 54450014 */  bnel       $v0, $a1, .Lrace_8011EABC
/* D4E2C 8011EA6C 24630001 */   addiu     $v1, $v1, 0x1
/* D4E30 8011EA70 24660001 */  addiu      $a2, $v1, 0x1
/* D4E34 8011EA74 00C7102B */  sltu       $v0, $a2, $a3
/* D4E38 8011EA78 1040000C */  beqz       $v0, .Lrace_8011EAAC
/* D4E3C 8011EA7C 00061080 */   sll       $v0, $a2, 2
/* D4E40 8011EA80 00443821 */  addu       $a3, $v0, $a0
/* D4E44 8011EA84 2445FFFC */  addiu      $a1, $v0, -0x4
.Lrace_8011EA88:
/* D4E48 8011EA88 8CE3014C */  lw         $v1, 0x14C($a3)
/* D4E4C 8011EA8C 24E70004 */  addiu      $a3, $a3, 0x4
/* D4E50 8011EA90 00851021 */  addu       $v0, $a0, $a1
/* D4E54 8011EA94 AC43014C */  sw         $v1, 0x14C($v0)
/* D4E58 8011EA98 8C820158 */  lw         $v0, 0x158($a0)
/* D4E5C 8011EA9C 24C60001 */  addiu      $a2, $a2, 0x1
/* D4E60 8011EAA0 00C2102B */  sltu       $v0, $a2, $v0
/* D4E64 8011EAA4 1440FFF8 */  bnez       $v0, .Lrace_8011EA88
/* D4E68 8011EAA8 24A50004 */   addiu     $a1, $a1, 0x4
.Lrace_8011EAAC:
/* D4E6C 8011EAAC 8C820158 */  lw         $v0, 0x158($a0)
/* D4E70 8011EAB0 2442FFFF */  addiu      $v0, $v0, -0x1
/* D4E74 8011EAB4 03E00008 */  jr         $ra
/* D4E78 8011EAB8 AC820158 */   sw        $v0, 0x158($a0)
.Lrace_8011EABC:
/* D4E7C 8011EABC 8C870158 */  lw         $a3, 0x158($a0)
/* D4E80 8011EAC0 0067102B */  sltu       $v0, $v1, $a3
/* D4E84 8011EAC4 1440FFE7 */  bnez       $v0, .Lrace_8011EA64
/* D4E88 8011EAC8 24C60004 */   addiu     $a2, $a2, 0x4
.Lrace_8011EACC:
/* D4E8C 8011EACC 03E00008 */  jr         $ra
/* D4E90 8011EAD0 00000000 */   nop

glabel func_race_8011EAD4
/* D4E94 8011EAD4 44801000 */  mtc1       $zero, $f2
/* D4E98 8011EAD8 2483019C */  addiu      $v1, $a0, 0x19C
/* D4E9C 8011EADC 2484035C */  addiu      $a0, $a0, 0x35C
/* D4EA0 8011EAE0 0064102B */  sltu       $v0, $v1, $a0
/* D4EA4 8011EAE4 10400006 */  beqz       $v0, .Lrace_8011EB00
/* D4EA8 8011EAE8 00000000 */   nop
.Lrace_8011EAEC:
/* D4EAC 8011EAEC C4600054 */  lwc1       $f0, 0x54($v1)
/* D4EB0 8011EAF0 24630070 */  addiu      $v1, $v1, 0x70
/* D4EB4 8011EAF4 0064102B */  sltu       $v0, $v1, $a0
/* D4EB8 8011EAF8 1440FFFC */  bnez       $v0, .Lrace_8011EAEC
/* D4EBC 8011EAFC 46001080 */   add.s     $f2, $f2, $f0
.Lrace_8011EB00:
/* D4EC0 8011EB00 3C01800D */  lui        $at, %hi(D_race_800CE3DC)
/* D4EC4 8011EB04 C420E3DC */  lwc1       $f0, %lo(D_race_800CE3DC)($at)
/* D4EC8 8011EB08 46001002 */  mul.s      $f0, $f2, $f0
/* D4ECC 8011EB0C 03E00008 */  jr         $ra
/* D4ED0 8011EB10 00000000 */   nop

glabel func_race_8011EB14
/* D4ED4 8011EB14 44801000 */  mtc1       $zero, $f2
/* D4ED8 8011EB18 2483019C */  addiu      $v1, $a0, 0x19C
/* D4EDC 8011EB1C 2484035C */  addiu      $a0, $a0, 0x35C
/* D4EE0 8011EB20 0064102B */  sltu       $v0, $v1, $a0
/* D4EE4 8011EB24 10400006 */  beqz       $v0, .Lrace_8011EB40
/* D4EE8 8011EB28 00000000 */   nop
.Lrace_8011EB2C:
/* D4EEC 8011EB2C C4600058 */  lwc1       $f0, 0x58($v1)
/* D4EF0 8011EB30 24630070 */  addiu      $v1, $v1, 0x70
/* D4EF4 8011EB34 0064102B */  sltu       $v0, $v1, $a0
/* D4EF8 8011EB38 1440FFFC */  bnez       $v0, .Lrace_8011EB2C
/* D4EFC 8011EB3C 46001080 */   add.s     $f2, $f2, $f0
.Lrace_8011EB40:
/* D4F00 8011EB40 3C01800D */  lui        $at, %hi(D_race_800CE3E0)
/* D4F04 8011EB44 C420E3E0 */  lwc1       $f0, %lo(D_race_800CE3E0)($at)
/* D4F08 8011EB48 46001002 */  mul.s      $f0, $f2, $f0
/* D4F0C 8011EB4C 03E00008 */  jr         $ra
/* D4F10 8011EB50 00000000 */   nop

glabel func_race_8011EB54
/* D4F14 8011EB54 44802000 */  mtc1       $zero, $f4
/* D4F18 8011EB58 2485019C */  addiu      $a1, $a0, 0x19C
/* D4F1C 8011EB5C 2487035C */  addiu      $a3, $a0, 0x35C
/* D4F20 8011EB60 00A7102B */  sltu       $v0, $a1, $a3
/* D4F24 8011EB64 1040000C */  beqz       $v0, .Lrace_8011EB98
/* D4F28 8011EB68 00003021 */   addu      $a2, $zero, $zero
/* D4F2C 8011EB6C 248301F8 */  addiu      $v1, $a0, 0x1F8
.Lrace_8011EB70:
/* D4F30 8011EB70 8C62FFEC */  lw         $v0, -0x14($v1)
/* D4F34 8011EB74 30420001 */  andi       $v0, $v0, 0x1
/* D4F38 8011EB78 10400004 */  beqz       $v0, .Lrace_8011EB8C
/* D4F3C 8011EB7C 24A50070 */   addiu     $a1, $a1, 0x70
/* D4F40 8011EB80 C4600000 */  lwc1       $f0, 0x0($v1)
/* D4F44 8011EB84 24C60001 */  addiu      $a2, $a2, 0x1
/* D4F48 8011EB88 46002100 */  add.s      $f4, $f4, $f0
.Lrace_8011EB8C:
/* D4F4C 8011EB8C 00A7102B */  sltu       $v0, $a1, $a3
/* D4F50 8011EB90 1440FFF7 */  bnez       $v0, .Lrace_8011EB70
/* D4F54 8011EB94 24630070 */   addiu     $v1, $v1, 0x70
.Lrace_8011EB98:
/* D4F58 8011EB98 14C00004 */  bnez       $a2, .Lrace_8011EBAC
/* D4F5C 8011EB9C 00000000 */   nop
/* D4F60 8011EBA0 44800000 */  mtc1       $zero, $f0
/* D4F64 8011EBA4 03E00008 */  jr         $ra
/* D4F68 8011EBA8 00000000 */   nop
.Lrace_8011EBAC:
/* D4F6C 8011EBAC 44860000 */  mtc1       $a2, $f0
/* D4F70 8011EBB0 46800020 */  cvt.s.w    $f0, $f0
/* D4F74 8011EBB4 C48205F8 */  lwc1       $f2, 0x5F8($a0)
/* D4F78 8011EBB8 46002003 */  div.s      $f0, $f4, $f0
/* D4F7C 8011EBBC 46020002 */  mul.s      $f0, $f0, $f2
/* D4F80 8011EBC0 03E00008 */  jr         $ra
/* D4F84 8011EBC4 00000000 */   nop

glabel func_race_8011EBC8
/* D4F88 8011EBC8 44801000 */  mtc1       $zero, $f2
/* D4F8C 8011EBCC 2483019C */  addiu      $v1, $a0, 0x19C
/* D4F90 8011EBD0 2486035C */  addiu      $a2, $a0, 0x35C
/* D4F94 8011EBD4 0066102B */  sltu       $v0, $v1, $a2
/* D4F98 8011EBD8 1040000C */  beqz       $v0, .Lrace_8011EC0C
/* D4F9C 8011EBDC 00002821 */   addu      $a1, $zero, $zero
/* D4FA0 8011EBE0 248401FC */  addiu      $a0, $a0, 0x1FC
.Lrace_8011EBE4:
/* D4FA4 8011EBE4 8C82FFE8 */  lw         $v0, -0x18($a0)
/* D4FA8 8011EBE8 30420001 */  andi       $v0, $v0, 0x1
/* D4FAC 8011EBEC 10400004 */  beqz       $v0, .Lrace_8011EC00
/* D4FB0 8011EBF0 24630070 */   addiu     $v1, $v1, 0x70
/* D4FB4 8011EBF4 C4800000 */  lwc1       $f0, 0x0($a0)
/* D4FB8 8011EBF8 24A50001 */  addiu      $a1, $a1, 0x1
/* D4FBC 8011EBFC 46001080 */  add.s      $f2, $f2, $f0
.Lrace_8011EC00:
/* D4FC0 8011EC00 0066102B */  sltu       $v0, $v1, $a2
/* D4FC4 8011EC04 1440FFF7 */  bnez       $v0, .Lrace_8011EBE4
/* D4FC8 8011EC08 24840070 */   addiu     $a0, $a0, 0x70
.Lrace_8011EC0C:
/* D4FCC 8011EC0C 14A00004 */  bnez       $a1, .Lrace_8011EC20
/* D4FD0 8011EC10 00000000 */   nop
/* D4FD4 8011EC14 44800000 */  mtc1       $zero, $f0
/* D4FD8 8011EC18 03E00008 */  jr         $ra
/* D4FDC 8011EC1C 00000000 */   nop
.Lrace_8011EC20:
/* D4FE0 8011EC20 44850000 */  mtc1       $a1, $f0
/* D4FE4 8011EC24 46800020 */  cvt.s.w    $f0, $f0
/* D4FE8 8011EC28 03E00008 */  jr         $ra
/* D4FEC 8011EC2C 46001003 */   div.s     $f0, $f2, $f0

glabel func_race_8011EC30
/* D4FF0 8011EC30 AC8005D8 */  sw         $zero, 0x5D8($a0)
/* D4FF4 8011EC34 2483019C */  addiu      $v1, $a0, 0x19C
/* D4FF8 8011EC38 2484035C */  addiu      $a0, $a0, 0x35C
/* D4FFC 8011EC3C 0064102B */  sltu       $v0, $v1, $a0
/* D5000 8011EC40 10400006 */  beqz       $v0, .Lrace_8011EC5C
/* D5004 8011EC44 00000000 */   nop
/* D5008 8011EC48 AC600044 */  sw         $zero, 0x44($v1)
.Lrace_8011EC4C:
/* D500C 8011EC4C 24630070 */  addiu      $v1, $v1, 0x70
/* D5010 8011EC50 0064102B */  sltu       $v0, $v1, $a0
/* D5014 8011EC54 5440FFFD */  bnel       $v0, $zero, .Lrace_8011EC4C
/* D5018 8011EC58 AC600044 */   sw        $zero, 0x44($v1)
.Lrace_8011EC5C:
/* D501C 8011EC5C 03E00008 */  jr         $ra
/* D5020 8011EC60 00000000 */   nop

glabel func_race_8011EC64
/* D5024 8011EC64 248303F8 */  addiu      $v1, $a0, 0x3F8
/* D5028 8011EC68 248505D8 */  addiu      $a1, $a0, 0x5D8
/* D502C 8011EC6C 0065102B */  sltu       $v0, $v1, $a1
/* D5030 8011EC70 10400008 */  beqz       $v0, .Lrace_8011EC94
/* D5034 8011EC74 2484042C */   addiu     $a0, $a0, 0x42C
.Lrace_8011EC78:
/* D5038 8011EC78 8C820000 */  lw         $v0, 0x0($a0)
/* D503C 8011EC7C 2463003C */  addiu      $v1, $v1, 0x3C
/* D5040 8011EC80 24420001 */  addiu      $v0, $v0, 0x1
/* D5044 8011EC84 AC820000 */  sw         $v0, 0x0($a0)
/* D5048 8011EC88 0065102B */  sltu       $v0, $v1, $a1
/* D504C 8011EC8C 1440FFFA */  bnez       $v0, .Lrace_8011EC78
/* D5050 8011EC90 2484003C */   addiu     $a0, $a0, 0x3C
.Lrace_8011EC94:
/* D5054 8011EC94 03E00008 */  jr         $ra
/* D5058 8011EC98 00000000 */   nop

glabel func_race_8011EC9C
/* D505C 8011EC9C 8C8305D8 */  lw         $v1, 0x5D8($a0)
/* D5060 8011ECA0 2C620008 */  sltiu      $v0, $v1, 0x8
/* D5064 8011ECA4 10400008 */  beqz       $v0, .Lrace_8011ECC8
/* D5068 8011ECA8 00031100 */   sll       $v0, $v1, 4
/* D506C 8011ECAC 00431023 */  subu       $v0, $v0, $v1
/* D5070 8011ECB0 00021080 */  sll        $v0, $v0, 2
/* D5074 8011ECB4 244203F8 */  addiu      $v0, $v0, 0x3F8
/* D5078 8011ECB8 00824021 */  addu       $t0, $a0, $v0
/* D507C 8011ECBC 24620001 */  addiu      $v0, $v1, 0x1
/* D5080 8011ECC0 08047B42 */  j          .Lrace_8011ED08
/* D5084 8011ECC4 AC8205D8 */   sw        $v0, 0x5D8($a0)
.Lrace_8011ECC8:
/* D5088 8011ECC8 00004821 */  addu       $t1, $zero, $zero
/* D508C 8011ECCC 248803F8 */  addiu      $t0, $a0, 0x3F8
/* D5090 8011ECD0 248405D8 */  addiu      $a0, $a0, 0x5D8
/* D5094 8011ECD4 0104102B */  sltu       $v0, $t0, $a0
/* D5098 8011ECD8 1040000B */  beqz       $v0, .Lrace_8011ED08
/* D509C 8011ECDC 01001821 */   addu      $v1, $t0, $zero
.Lrace_8011ECE0:
/* D50A0 8011ECE0 8C670034 */  lw         $a3, 0x34($v1)
/* D50A4 8011ECE4 0127102B */  sltu       $v0, $t1, $a3
/* D50A8 8011ECE8 50400004 */  beql       $v0, $zero, .Lrace_8011ECFC
/* D50AC 8011ECEC 2463003C */   addiu     $v1, $v1, 0x3C
/* D50B0 8011ECF0 00604021 */  addu       $t0, $v1, $zero
/* D50B4 8011ECF4 00E04821 */  addu       $t1, $a3, $zero
/* D50B8 8011ECF8 2463003C */  addiu      $v1, $v1, 0x3C
.Lrace_8011ECFC:
/* D50BC 8011ECFC 0064102B */  sltu       $v0, $v1, $a0
/* D50C0 8011ED00 1440FFF7 */  bnez       $v0, .Lrace_8011ECE0
/* D50C4 8011ED04 00000000 */   nop
.Lrace_8011ED08:
/* D50C8 8011ED08 01001021 */  addu       $v0, $t0, $zero
/* D50CC 8011ED0C 24A30030 */  addiu      $v1, $a1, 0x30
.Lrace_8011ED10:
/* D50D0 8011ED10 8CAA0000 */  lw         $t2, 0x0($a1)
/* D50D4 8011ED14 8CAB0004 */  lw         $t3, 0x4($a1)
/* D50D8 8011ED18 8CAC0008 */  lw         $t4, 0x8($a1)
/* D50DC 8011ED1C 8CAD000C */  lw         $t5, 0xC($a1)
/* D50E0 8011ED20 AC4A0000 */  sw         $t2, 0x0($v0)
/* D50E4 8011ED24 AC4B0004 */  sw         $t3, 0x4($v0)
/* D50E8 8011ED28 AC4C0008 */  sw         $t4, 0x8($v0)
/* D50EC 8011ED2C AC4D000C */  sw         $t5, 0xC($v0)
/* D50F0 8011ED30 24A50010 */  addiu      $a1, $a1, 0x10
/* D50F4 8011ED34 14A3FFF6 */  bne        $a1, $v1, .Lrace_8011ED10
/* D50F8 8011ED38 24420010 */   addiu     $v0, $v0, 0x10
/* D50FC 8011ED3C 8CAA0000 */  lw         $t2, 0x0($a1)
/* D5100 8011ED40 AC4A0000 */  sw         $t2, 0x0($v0)
/* D5104 8011ED44 01001021 */  addu       $v0, $t0, $zero
/* D5108 8011ED48 AD060038 */  sw         $a2, 0x38($t0)
/* D510C 8011ED4C 03E00008 */  jr         $ra
/* D5110 8011ED50 AD000034 */   sw        $zero, 0x34($t0)

glabel func_race_8011ED54
/* D5114 8011ED54 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D5118 8011ED58 AFB20018 */  sw         $s2, 0x18($sp)
/* D511C 8011ED5C 00A09021 */  addu       $s2, $a1, $zero
/* D5120 8011ED60 AFBF001C */  sw         $ra, 0x1C($sp)
/* D5124 8011ED64 AFB10014 */  sw         $s1, 0x14($sp)
/* D5128 8011ED68 AFB00010 */  sw         $s0, 0x10($sp)
/* D512C 8011ED6C 8E450044 */  lw         $a1, 0x44($s2)
/* D5130 8011ED70 10A00011 */  beqz       $a1, .Lrace_8011EDB8
/* D5134 8011ED74 00808821 */   addu      $s1, $a0, $zero
/* D5138 8011ED78 0C047B89 */  jal        func_race_8011EE24
/* D513C 8011ED7C 02402021 */   addu      $a0, $s2, $zero
/* D5140 8011ED80 1040000D */  beqz       $v0, .Lrace_8011EDB8
/* D5144 8011ED84 00000000 */   nop
/* D5148 8011ED88 8E420044 */  lw         $v0, 0x44($s2)
/* D514C 8011ED8C AC400034 */  sw         $zero, 0x34($v0)
/* D5150 8011ED90 8E420044 */  lw         $v0, 0x44($s2)
/* D5154 8011ED94 8C430038 */  lw         $v1, 0x38($v0)
/* D5158 8011ED98 24020001 */  addiu      $v0, $zero, 0x1
/* D515C 8011ED9C 08047B83 */  j          .Lrace_8011EE0C
/* D5160 8011EDA0 AE43003C */   sw        $v1, 0x3C($s2)
.Lrace_8011EDA4:
/* D5164 8011EDA4 8E030038 */  lw         $v1, 0x38($s0)
/* D5168 8011EDA8 24020001 */  addiu      $v0, $zero, 0x1
/* D516C 8011EDAC AE43003C */  sw         $v1, 0x3C($s2)
/* D5170 8011EDB0 08047B83 */  j          .Lrace_8011EE0C
/* D5174 8011EDB4 AE000034 */   sw        $zero, 0x34($s0)
.Lrace_8011EDB8:
/* D5178 8011EDB8 8E2205D8 */  lw         $v0, 0x5D8($s1)
/* D517C 8011EDBC 263003F8 */  addiu      $s0, $s1, 0x3F8
/* D5180 8011EDC0 00021900 */  sll        $v1, $v0, 4
/* D5184 8011EDC4 00621823 */  subu       $v1, $v1, $v0
/* D5188 8011EDC8 00031880 */  sll        $v1, $v1, 2
/* D518C 8011EDCC 246303F8 */  addiu      $v1, $v1, 0x3F8
/* D5190 8011EDD0 02238821 */  addu       $s1, $s1, $v1
/* D5194 8011EDD4 0211102B */  sltu       $v0, $s0, $s1
/* D5198 8011EDD8 1040000C */  beqz       $v0, .Lrace_8011EE0C
/* D519C 8011EDDC 00001021 */   addu      $v0, $zero, $zero
.Lrace_8011EDE0:
/* D51A0 8011EDE0 8E420044 */  lw         $v0, 0x44($s2)
/* D51A4 8011EDE4 10500005 */  beq        $v0, $s0, .Lrace_8011EDFC
/* D51A8 8011EDE8 02402021 */   addu      $a0, $s2, $zero
/* D51AC 8011EDEC 0C047B89 */  jal        func_race_8011EE24
/* D51B0 8011EDF0 02002821 */   addu      $a1, $s0, $zero
/* D51B4 8011EDF4 5440FFEB */  bnel       $v0, $zero, .Lrace_8011EDA4
/* D51B8 8011EDF8 AE500044 */   sw        $s0, 0x44($s2)
.Lrace_8011EDFC:
/* D51BC 8011EDFC 2610003C */  addiu      $s0, $s0, 0x3C
/* D51C0 8011EE00 0211102B */  sltu       $v0, $s0, $s1
/* D51C4 8011EE04 1440FFF6 */  bnez       $v0, .Lrace_8011EDE0
/* D51C8 8011EE08 00001021 */   addu      $v0, $zero, $zero
.Lrace_8011EE0C:
/* D51CC 8011EE0C 8FBF001C */  lw         $ra, 0x1C($sp)
/* D51D0 8011EE10 8FB20018 */  lw         $s2, 0x18($sp)
/* D51D4 8011EE14 8FB10014 */  lw         $s1, 0x14($sp)
/* D51D8 8011EE18 8FB00010 */  lw         $s0, 0x10($sp)
/* D51DC 8011EE1C 03E00008 */  jr         $ra
/* D51E0 8011EE20 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011EE24
/* D51E4 8011EE24 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D51E8 8011EE28 00803021 */  addu       $a2, $a0, $zero
/* D51EC 8011EE2C AFBF0020 */  sw         $ra, 0x20($sp)
/* D51F0 8011EE30 C4A40024 */  lwc1       $f4, 0x24($a1)
/* D51F4 8011EE34 C4C20018 */  lwc1       $f2, 0x18($a2)
/* D51F8 8011EE38 24A30024 */  addiu      $v1, $a1, 0x24
/* D51FC 8011EE3C 46022082 */  mul.s      $f2, $f4, $f2
/* D5200 8011EE40 24C20018 */  addiu      $v0, $a2, 0x18
/* D5204 8011EE44 C46C0004 */  lwc1       $f12, 0x4($v1)
/* D5208 8011EE48 C4480004 */  lwc1       $f8, 0x4($v0)
/* D520C 8011EE4C 46086202 */  mul.s      $f8, $f12, $f8
/* D5210 8011EE50 C46A0008 */  lwc1       $f10, 0x8($v1)
/* D5214 8011EE54 C4460008 */  lwc1       $f6, 0x8($v0)
/* D5218 8011EE58 46065182 */  mul.s      $f6, $f10, $f6
/* D521C 8011EE5C C4C00024 */  lwc1       $f0, 0x24($a2)
/* D5220 8011EE60 46002102 */  mul.s      $f4, $f4, $f0
/* D5224 8011EE64 24C20024 */  addiu      $v0, $a2, 0x24
/* D5228 8011EE68 C4400004 */  lwc1       $f0, 0x4($v0)
/* D522C 8011EE6C 46006302 */  mul.s      $f12, $f12, $f0
/* D5230 8011EE70 C4400008 */  lwc1       $f0, 0x8($v0)
/* D5234 8011EE74 46005282 */  mul.s      $f10, $f10, $f0
/* D5238 8011EE78 46081080 */  add.s      $f2, $f2, $f8
/* D523C 8011EE7C 460C2100 */  add.s      $f4, $f4, $f12
/* D5240 8011EE80 46061080 */  add.s      $f2, $f2, $f6
/* D5244 8011EE84 460A2100 */  add.s      $f4, $f4, $f10
/* D5248 8011EE88 C4A00030 */  lwc1       $f0, 0x30($a1)
/* D524C 8011EE8C 46001180 */  add.s      $f6, $f2, $f0
/* D5250 8011EE90 46002100 */  add.s      $f4, $f4, $f0
/* D5254 8011EE94 44800000 */  mtc1       $zero, $f0
/* D5258 8011EE98 4606003E */  c.le.s     $f0, $f6
/* D525C 8011EE9C 00000000 */  nop
/* D5260 8011EEA0 45010002 */  bc1t       .Lrace_8011EEAC
/* D5264 8011EEA4 24020001 */   addiu     $v0, $zero, 0x1
/* D5268 8011EEA8 00001021 */  addu       $v0, $zero, $zero
.Lrace_8011EEAC:
/* D526C 8011EEAC 4604003E */  c.le.s     $f0, $f4
/* D5270 8011EEB0 00000000 */  nop
/* D5274 8011EEB4 45010002 */  bc1t       .Lrace_8011EEC0
/* D5278 8011EEB8 24030001 */   addiu     $v1, $zero, 0x1
/* D527C 8011EEBC 00001821 */  addu       $v1, $zero, $zero
.Lrace_8011EEC0:
/* D5280 8011EEC0 14430003 */  bne        $v0, $v1, .Lrace_8011EED0
/* D5284 8011EEC4 00000000 */   nop
/* D5288 8011EEC8 08047BDD */  j          .Lrace_8011EF74
/* D528C 8011EECC 00001021 */   addu      $v0, $zero, $zero
.Lrace_8011EED0:
/* D5290 8011EED0 50400002 */  beql       $v0, $zero, .Lrace_8011EEDC
/* D5294 8011EED4 46003187 */   neg.s     $f6, $f6
/* D5298 8011EED8 46002107 */  neg.s      $f4, $f4
.Lrace_8011EEDC:
/* D529C 8011EEDC C4C00024 */  lwc1       $f0, 0x24($a2)
/* D52A0 8011EEE0 C4C20018 */  lwc1       $f2, 0x18($a2)
/* D52A4 8011EEE4 46020001 */  sub.s      $f0, $f0, $f2
/* D52A8 8011EEE8 24C20024 */  addiu      $v0, $a2, 0x24
/* D52AC 8011EEEC 24C30018 */  addiu      $v1, $a2, 0x18
/* D52B0 8011EEF0 E4C00030 */  swc1       $f0, 0x30($a2)
/* D52B4 8011EEF4 C4400004 */  lwc1       $f0, 0x4($v0)
/* D52B8 8011EEF8 C4620004 */  lwc1       $f2, 0x4($v1)
/* D52BC 8011EEFC 46020001 */  sub.s      $f0, $f0, $f2
/* D52C0 8011EF00 24C40030 */  addiu      $a0, $a2, 0x30
/* D52C4 8011EF04 E4800004 */  swc1       $f0, 0x4($a0)
/* D52C8 8011EF08 C4400008 */  lwc1       $f0, 0x8($v0)
/* D52CC 8011EF0C C4620008 */  lwc1       $f2, 0x8($v1)
/* D52D0 8011EF10 46020001 */  sub.s      $f0, $f0, $f2
/* D52D4 8011EF14 46043080 */  add.s      $f2, $f6, $f4
/* D52D8 8011EF18 E4800008 */  swc1       $f0, 0x8($a0)
/* D52DC 8011EF1C C4C40030 */  lwc1       $f4, 0x30($a2)
/* D52E0 8011EF20 46023083 */  div.s      $f2, $f6, $f2
/* D52E4 8011EF24 46022102 */  mul.s      $f4, $f4, $f2
/* D52E8 8011EF28 E7A40010 */  swc1       $f4, 0x10($sp)
/* D52EC 8011EF2C C4800004 */  lwc1       $f0, 0x4($a0)
/* D52F0 8011EF30 46020002 */  mul.s      $f0, $f0, $f2
/* D52F4 8011EF34 E7A00014 */  swc1       $f0, 0x14($sp)
/* D52F8 8011EF38 C4800008 */  lwc1       $f0, 0x8($a0)
/* D52FC 8011EF3C 46020002 */  mul.s      $f0, $f0, $f2
/* D5300 8011EF40 E7A00018 */  swc1       $f0, 0x18($sp)
/* D5304 8011EF44 C4C00018 */  lwc1       $f0, 0x18($a2)
/* D5308 8011EF48 46040000 */  add.s      $f0, $f0, $f4
/* D530C 8011EF4C E4C00030 */  swc1       $f0, 0x30($a2)
/* D5310 8011EF50 C4600004 */  lwc1       $f0, 0x4($v1)
/* D5314 8011EF54 C7A20014 */  lwc1       $f2, 0x14($sp)
/* D5318 8011EF58 46020000 */  add.s      $f0, $f0, $f2
/* D531C 8011EF5C E4800004 */  swc1       $f0, 0x4($a0)
/* D5320 8011EF60 C4600008 */  lwc1       $f0, 0x8($v1)
/* D5324 8011EF64 C7A20018 */  lwc1       $f2, 0x18($sp)
/* D5328 8011EF68 46020000 */  add.s      $f0, $f0, $f2
/* D532C 8011EF6C 0C00136F */  jal        func_80004DBC
/* D5330 8011EF70 E4800008 */   swc1      $f0, 0x8($a0)
.Lrace_8011EF74:
/* D5334 8011EF74 8FBF0020 */  lw         $ra, 0x20($sp)
/* D5338 8011EF78 03E00008 */  jr         $ra
/* D533C 8011EF7C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8011EF80
/* D5340 8011EF80 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* D5344 8011EF84 AFB00030 */  sw         $s0, 0x30($sp)
/* D5348 8011EF88 00808021 */  addu       $s0, $a0, $zero
/* D534C 8011EF8C AFB10034 */  sw         $s1, 0x34($sp)
/* D5350 8011EF90 261100E4 */  addiu      $s1, $s0, 0xE4
/* D5354 8011EF94 AFB20038 */  sw         $s2, 0x38($sp)
/* D5358 8011EF98 26120218 */  addiu      $s2, $s0, 0x218
/* D535C 8011EF9C 02202021 */  addu       $a0, $s1, $zero
/* D5360 8011EFA0 2605035C */  addiu      $a1, $s0, 0x35C
/* D5364 8011EFA4 AFBF003C */  sw         $ra, 0x3C($sp)
/* D5368 8011EFA8 0C0158C3 */  jal        func_8005630C
/* D536C 8011EFAC 02403021 */   addu      $a2, $s2, $zero
/* D5370 8011EFB0 C6260028 */  lwc1       $f6, 0x28($s1)
/* D5374 8011EFB4 E7A60020 */  swc1       $f6, 0x20($sp)
/* D5378 8011EFB8 C624002C */  lwc1       $f4, 0x2C($s1)
/* D537C 8011EFBC E7A40024 */  swc1       $f4, 0x24($sp)
/* D5380 8011EFC0 C6220030 */  lwc1       $f2, 0x30($s1)
/* D5384 8011EFC4 E7A20028 */  swc1       $f2, 0x28($sp)
/* D5388 8011EFC8 C600036C */  lwc1       $f0, 0x36C($s0)
/* D538C 8011EFCC 46003182 */  mul.s      $f6, $f6, $f0
/* D5390 8011EFD0 00000000 */  nop
/* D5394 8011EFD4 46002102 */  mul.s      $f4, $f4, $f0
/* D5398 8011EFD8 00000000 */  nop
/* D539C 8011EFDC 46001082 */  mul.s      $f2, $f2, $f0
/* D53A0 8011EFE0 E7A60020 */  swc1       $f6, 0x20($sp)
/* D53A4 8011EFE4 E7A40024 */  swc1       $f4, 0x24($sp)
/* D53A8 8011EFE8 E7A20028 */  swc1       $f2, 0x28($sp)
/* D53AC 8011EFEC C6260034 */  lwc1       $f6, 0x34($s1)
/* D53B0 8011EFF0 E7A60010 */  swc1       $f6, 0x10($sp)
/* D53B4 8011EFF4 C6240038 */  lwc1       $f4, 0x38($s1)
/* D53B8 8011EFF8 27A20010 */  addiu      $v0, $sp, 0x10
/* D53BC 8011EFFC E4440004 */  swc1       $f4, 0x4($v0)
/* D53C0 8011F000 C622003C */  lwc1       $f2, 0x3C($s1)
/* D53C4 8011F004 E4420008 */  swc1       $f2, 0x8($v0)
/* D53C8 8011F008 C6000368 */  lwc1       $f0, 0x368($s0)
/* D53CC 8011F00C 46003182 */  mul.s      $f6, $f6, $f0
/* D53D0 8011F010 00000000 */  nop
/* D53D4 8011F014 46002102 */  mul.s      $f4, $f4, $f0
/* D53D8 8011F018 00000000 */  nop
/* D53DC 8011F01C 46001082 */  mul.s      $f2, $f2, $f0
/* D53E0 8011F020 E7A60010 */  swc1       $f6, 0x10($sp)
/* D53E4 8011F024 E4440004 */  swc1       $f4, 0x4($v0)
/* D53E8 8011F028 E4420008 */  swc1       $f2, 0x8($v0)
/* D53EC 8011F02C C6000218 */  lwc1       $f0, 0x218($s0)
/* D53F0 8011F030 46060001 */  sub.s      $f0, $f0, $f6
/* D53F4 8011F034 E60001A8 */  swc1       $f0, 0x1A8($s0)
/* D53F8 8011F038 C6400004 */  lwc1       $f0, 0x4($s2)
/* D53FC 8011F03C C4420004 */  lwc1       $f2, 0x4($v0)
/* D5400 8011F040 46020001 */  sub.s      $f0, $f0, $f2
/* D5404 8011F044 260301A8 */  addiu      $v1, $s0, 0x1A8
/* D5408 8011F048 E4600004 */  swc1       $f0, 0x4($v1)
/* D540C 8011F04C C6400008 */  lwc1       $f0, 0x8($s2)
/* D5410 8011F050 C4420008 */  lwc1       $f2, 0x8($v0)
/* D5414 8011F054 46020001 */  sub.s      $f0, $f0, $f2
/* D5418 8011F058 E4600008 */  swc1       $f0, 0x8($v1)
/* D541C 8011F05C C6000218 */  lwc1       $f0, 0x218($s0)
/* D5420 8011F060 C7A20020 */  lwc1       $f2, 0x20($sp)
/* D5424 8011F064 46020001 */  sub.s      $f0, $f0, $f2
/* D5428 8011F068 E60002F8 */  swc1       $f0, 0x2F8($s0)
/* D542C 8011F06C C6400004 */  lwc1       $f0, 0x4($s2)
/* D5430 8011F070 C7A20024 */  lwc1       $f2, 0x24($sp)
/* D5434 8011F074 46020001 */  sub.s      $f0, $f0, $f2
/* D5438 8011F078 260202F8 */  addiu      $v0, $s0, 0x2F8
/* D543C 8011F07C E4400004 */  swc1       $f0, 0x4($v0)
/* D5440 8011F080 C6400008 */  lwc1       $f0, 0x8($s2)
/* D5444 8011F084 C7A20028 */  lwc1       $f2, 0x28($sp)
/* D5448 8011F088 46020001 */  sub.s      $f0, $f0, $f2
/* D544C 8011F08C E4400008 */  swc1       $f0, 0x8($v0)
/* D5450 8011F090 C60001A8 */  lwc1       $f0, 0x1A8($s0)
/* D5454 8011F094 C7A20020 */  lwc1       $f2, 0x20($sp)
/* D5458 8011F098 46020001 */  sub.s      $f0, $f0, $f2
/* D545C 8011F09C E6000288 */  swc1       $f0, 0x288($s0)
/* D5460 8011F0A0 C4600004 */  lwc1       $f0, 0x4($v1)
/* D5464 8011F0A4 C7A20024 */  lwc1       $f2, 0x24($sp)
/* D5468 8011F0A8 46020001 */  sub.s      $f0, $f0, $f2
/* D546C 8011F0AC 26100288 */  addiu      $s0, $s0, 0x288
/* D5470 8011F0B0 E6000004 */  swc1       $f0, 0x4($s0)
/* D5474 8011F0B4 C4600008 */  lwc1       $f0, 0x8($v1)
/* D5478 8011F0B8 C7A20028 */  lwc1       $f2, 0x28($sp)
/* D547C 8011F0BC 46020001 */  sub.s      $f0, $f0, $f2
/* D5480 8011F0C0 E6000008 */  swc1       $f0, 0x8($s0)
/* D5484 8011F0C4 8FBF003C */  lw         $ra, 0x3C($sp)
/* D5488 8011F0C8 8FB20038 */  lw         $s2, 0x38($sp)
/* D548C 8011F0CC 8FB10034 */  lw         $s1, 0x34($sp)
/* D5490 8011F0D0 8FB00030 */  lw         $s0, 0x30($sp)
/* D5494 8011F0D4 03E00008 */  jr         $ra
/* D5498 8011F0D8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8011F0DC
/* D549C 8011F0DC 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* D54A0 8011F0E0 AFB000B0 */  sw         $s0, 0xB0($sp)
/* D54A4 8011F0E4 00A08021 */  addu       $s0, $a1, $zero
/* D54A8 8011F0E8 AFBF00BC */  sw         $ra, 0xBC($sp)
/* D54AC 8011F0EC AFB200B8 */  sw         $s2, 0xB8($sp)
/* D54B0 8011F0F0 AFB100B4 */  sw         $s1, 0xB4($sp)
/* D54B4 8011F0F4 C6000028 */  lwc1       $f0, 0x28($s0)
/* D54B8 8011F0F8 44864000 */  mtc1       $a2, $f8
/* D54BC 8011F0FC 44873000 */  mtc1       $a3, $f6
/* D54C0 8011F100 E7A00040 */  swc1       $f0, 0x40($sp)
/* D54C4 8011F104 C600002C */  lwc1       $f0, 0x2C($s0)
/* D54C8 8011F108 E7A00044 */  swc1       $f0, 0x44($sp)
/* D54CC 8011F10C C6040030 */  lwc1       $f4, 0x30($s0)
/* D54D0 8011F110 E7A40048 */  swc1       $f4, 0x48($sp)
/* D54D4 8011F114 C6000034 */  lwc1       $f0, 0x34($s0)
/* D54D8 8011F118 46062302 */  mul.s      $f12, $f4, $f6
/* D54DC 8011F11C E7A00050 */  swc1       $f0, 0x50($sp)
/* D54E0 8011F120 C6000038 */  lwc1       $f0, 0x38($s0)
/* D54E4 8011F124 E7A00054 */  swc1       $f0, 0x54($sp)
/* D54E8 8011F128 C602003C */  lwc1       $f2, 0x3C($s0)
/* D54EC 8011F12C 46082282 */  mul.s      $f10, $f4, $f8
/* D54F0 8011F130 E7A20058 */  swc1       $f2, 0x58($sp)
/* D54F4 8011F134 C6000040 */  lwc1       $f0, 0x40($s0)
/* D54F8 8011F138 E7A00060 */  swc1       $f0, 0x60($sp)
/* D54FC 8011F13C C6000044 */  lwc1       $f0, 0x44($s0)
/* D5500 8011F140 46061382 */  mul.s      $f14, $f2, $f6
/* D5504 8011F144 E7A00064 */  swc1       $f0, 0x64($sp)
/* D5508 8011F148 C6000048 */  lwc1       $f0, 0x48($s0)
/* D550C 8011F14C E7A40090 */  swc1       $f4, 0x90($sp)
/* D5510 8011F150 46081102 */  mul.s      $f4, $f2, $f8
/* D5514 8011F154 00808821 */  addu       $s1, $a0, $zero
/* D5518 8011F158 46060182 */  mul.s      $f6, $f0, $f6
/* D551C 8011F15C 26250218 */  addiu      $a1, $s1, 0x218
/* D5520 8011F160 E7A20094 */  swc1       $f2, 0x94($sp)
/* D5524 8011F164 E7AC00A0 */  swc1       $f12, 0xA0($sp)
/* D5528 8011F168 E7AA0090 */  swc1       $f10, 0x90($sp)
/* D552C 8011F16C 46080202 */  mul.s      $f8, $f0, $f8
/* D5530 8011F170 E7A00068 */  swc1       $f0, 0x68($sp)
/* D5534 8011F174 E7A00098 */  swc1       $f0, 0x98($sp)
/* D5538 8011F178 E7AE00A4 */  swc1       $f14, 0xA4($sp)
/* D553C 8011F17C E7A40094 */  swc1       $f4, 0x94($sp)
/* D5540 8011F180 E7A600A8 */  swc1       $f6, 0xA8($sp)
/* D5544 8011F184 E7A80098 */  swc1       $f8, 0x98($sp)
/* D5548 8011F188 8E020024 */  lw         $v0, 0x24($s0)
/* D554C 8011F18C 27A60010 */  addiu      $a2, $sp, 0x10
/* D5550 8011F190 84440068 */  lh         $a0, 0x68($v0)
/* D5554 8011F194 8C42006C */  lw         $v0, 0x6C($v0)
/* D5558 8011F198 0040F809 */  jalr       $v0
/* D555C 8011F19C 02042021 */   addu      $a0, $s0, $a0
/* D5560 8011F1A0 C7A00010 */  lwc1       $f0, 0x10($sp)
/* D5564 8011F1A4 C7A20090 */  lwc1       $f2, 0x90($sp)
/* D5568 8011F1A8 46020000 */  add.s      $f0, $f0, $f2
/* D556C 8011F1AC 27B20010 */  addiu      $s2, $sp, 0x10
/* D5570 8011F1B0 E6200224 */  swc1       $f0, 0x224($s1)
/* D5574 8011F1B4 C6400004 */  lwc1       $f0, 0x4($s2)
/* D5578 8011F1B8 C7A20094 */  lwc1       $f2, 0x94($sp)
/* D557C 8011F1BC 46020000 */  add.s      $f0, $f0, $f2
/* D5580 8011F1C0 26220224 */  addiu      $v0, $s1, 0x224
/* D5584 8011F1C4 E4400004 */  swc1       $f0, 0x4($v0)
/* D5588 8011F1C8 C6400008 */  lwc1       $f0, 0x8($s2)
/* D558C 8011F1CC C7A20098 */  lwc1       $f2, 0x98($sp)
/* D5590 8011F1D0 46020000 */  add.s      $f0, $f0, $f2
/* D5594 8011F1D4 E4400008 */  swc1       $f0, 0x8($v0)
/* D5598 8011F1D8 C7A00010 */  lwc1       $f0, 0x10($sp)
/* D559C 8011F1DC C7A200A0 */  lwc1       $f2, 0xA0($sp)
/* D55A0 8011F1E0 46020001 */  sub.s      $f0, $f0, $f2
/* D55A4 8011F1E4 E6200230 */  swc1       $f0, 0x230($s1)
/* D55A8 8011F1E8 C6400004 */  lwc1       $f0, 0x4($s2)
/* D55AC 8011F1EC C7A200A4 */  lwc1       $f2, 0xA4($sp)
/* D55B0 8011F1F0 46020001 */  sub.s      $f0, $f0, $f2
/* D55B4 8011F1F4 26220230 */  addiu      $v0, $s1, 0x230
/* D55B8 8011F1F8 E4400004 */  swc1       $f0, 0x4($v0)
/* D55BC 8011F1FC C6400008 */  lwc1       $f0, 0x8($s2)
/* D55C0 8011F200 C7A200A8 */  lwc1       $f2, 0xA8($sp)
/* D55C4 8011F204 46020001 */  sub.s      $f0, $f0, $f2
/* D55C8 8011F208 E4400008 */  swc1       $f0, 0x8($v0)
/* D55CC 8011F20C 262200E4 */  addiu      $v0, $s1, 0xE4
/* D55D0 8011F210 C4400028 */  lwc1       $f0, 0x28($v0)
/* D55D4 8011F214 E7A00040 */  swc1       $f0, 0x40($sp)
/* D55D8 8011F218 C440002C */  lwc1       $f0, 0x2C($v0)
/* D55DC 8011F21C E7A00044 */  swc1       $f0, 0x44($sp)
/* D55E0 8011F220 C4400030 */  lwc1       $f0, 0x30($v0)
/* D55E4 8011F224 E7A00048 */  swc1       $f0, 0x48($sp)
/* D55E8 8011F228 C4400034 */  lwc1       $f0, 0x34($v0)
/* D55EC 8011F22C E7A00050 */  swc1       $f0, 0x50($sp)
/* D55F0 8011F230 C4400038 */  lwc1       $f0, 0x38($v0)
/* D55F4 8011F234 E7A00054 */  swc1       $f0, 0x54($sp)
/* D55F8 8011F238 C440003C */  lwc1       $f0, 0x3C($v0)
/* D55FC 8011F23C 27A50040 */  addiu      $a1, $sp, 0x40
/* D5600 8011F240 E7A00058 */  swc1       $f0, 0x58($sp)
/* D5604 8011F244 8E020024 */  lw         $v0, 0x24($s0)
/* D5608 8011F248 27A60080 */  addiu      $a2, $sp, 0x80
/* D560C 8011F24C 84440078 */  lh         $a0, 0x78($v0)
/* D5610 8011F250 8C42007C */  lw         $v0, 0x7C($v0)
/* D5614 8011F254 0040F809 */  jalr       $v0
/* D5618 8011F258 02042021 */   addu      $a0, $s0, $a0
/* D561C 8011F25C 27A50050 */  addiu      $a1, $sp, 0x50
/* D5620 8011F260 8E020024 */  lw         $v0, 0x24($s0)
/* D5624 8011F264 27A60070 */  addiu      $a2, $sp, 0x70
/* D5628 8011F268 84440078 */  lh         $a0, 0x78($v0)
/* D562C 8011F26C 8C42007C */  lw         $v0, 0x7C($v0)
/* D5630 8011F270 0040F809 */  jalr       $v0
/* D5634 8011F274 02042021 */   addu      $a0, $s0, $a0
/* D5638 8011F278 C624036C */  lwc1       $f4, 0x36C($s1)
/* D563C 8011F27C C7A60080 */  lwc1       $f6, 0x80($sp)
/* D5640 8011F280 46043182 */  mul.s      $f6, $f6, $f4
/* D5644 8011F284 C7A20084 */  lwc1       $f2, 0x84($sp)
/* D5648 8011F288 46041082 */  mul.s      $f2, $f2, $f4
/* D564C 8011F28C C7A00088 */  lwc1       $f0, 0x88($sp)
/* D5650 8011F290 46040002 */  mul.s      $f0, $f0, $f4
/* D5654 8011F294 E7A60080 */  swc1       $f6, 0x80($sp)
/* D5658 8011F298 E7A20084 */  swc1       $f2, 0x84($sp)
/* D565C 8011F29C E7A00088 */  swc1       $f0, 0x88($sp)
/* D5660 8011F2A0 C6200368 */  lwc1       $f0, 0x368($s1)
/* D5664 8011F2A4 C7A20070 */  lwc1       $f2, 0x70($sp)
/* D5668 8011F2A8 46001082 */  mul.s      $f2, $f2, $f0
/* D566C 8011F2AC C7A40074 */  lwc1       $f4, 0x74($sp)
/* D5670 8011F2B0 46002102 */  mul.s      $f4, $f4, $f0
/* D5674 8011F2B4 C7A80078 */  lwc1       $f8, 0x78($sp)
/* D5678 8011F2B8 46004202 */  mul.s      $f8, $f8, $f0
/* D567C 8011F2BC C7A60010 */  lwc1       $f6, 0x10($sp)
/* D5680 8011F2C0 46023181 */  sub.s      $f6, $f6, $f2
/* D5684 8011F2C4 C64A0004 */  lwc1       $f10, 0x4($s2)
/* D5688 8011F2C8 46045281 */  sub.s      $f10, $f10, $f4
/* D568C 8011F2CC E7A20070 */  swc1       $f2, 0x70($sp)
/* D5690 8011F2D0 E7A40074 */  swc1       $f4, 0x74($sp)
/* D5694 8011F2D4 C6400008 */  lwc1       $f0, 0x8($s2)
/* D5698 8011F2D8 C7A20090 */  lwc1       $f2, 0x90($sp)
/* D569C 8011F2DC 46080001 */  sub.s      $f0, $f0, $f8
/* D56A0 8011F2E0 E7A80078 */  swc1       $f8, 0x78($sp)
/* D56A4 8011F2E4 E7A60020 */  swc1       $f6, 0x20($sp)
/* D56A8 8011F2E8 46023180 */  add.s      $f6, $f6, $f2
/* D56AC 8011F2EC E7AA0024 */  swc1       $f10, 0x24($sp)
/* D56B0 8011F2F0 E7A00028 */  swc1       $f0, 0x28($sp)
/* D56B4 8011F2F4 E62601B4 */  swc1       $f6, 0x1B4($s1)
/* D56B8 8011F2F8 C7A00024 */  lwc1       $f0, 0x24($sp)
/* D56BC 8011F2FC C7A20094 */  lwc1       $f2, 0x94($sp)
/* D56C0 8011F300 46020000 */  add.s      $f0, $f0, $f2
/* D56C4 8011F304 262201B4 */  addiu      $v0, $s1, 0x1B4
/* D56C8 8011F308 E4400004 */  swc1       $f0, 0x4($v0)
/* D56CC 8011F30C C7A00028 */  lwc1       $f0, 0x28($sp)
/* D56D0 8011F310 C7A20098 */  lwc1       $f2, 0x98($sp)
/* D56D4 8011F314 46020000 */  add.s      $f0, $f0, $f2
/* D56D8 8011F318 E4400008 */  swc1       $f0, 0x8($v0)
/* D56DC 8011F31C C7A00020 */  lwc1       $f0, 0x20($sp)
/* D56E0 8011F320 C7A200A0 */  lwc1       $f2, 0xA0($sp)
/* D56E4 8011F324 46020001 */  sub.s      $f0, $f0, $f2
/* D56E8 8011F328 E62001C0 */  swc1       $f0, 0x1C0($s1)
/* D56EC 8011F32C C7A00024 */  lwc1       $f0, 0x24($sp)
/* D56F0 8011F330 C7A200A4 */  lwc1       $f2, 0xA4($sp)
/* D56F4 8011F334 46020001 */  sub.s      $f0, $f0, $f2
/* D56F8 8011F338 262201C0 */  addiu      $v0, $s1, 0x1C0
/* D56FC 8011F33C E4400004 */  swc1       $f0, 0x4($v0)
/* D5700 8011F340 C7A00028 */  lwc1       $f0, 0x28($sp)
/* D5704 8011F344 C7A200A8 */  lwc1       $f2, 0xA8($sp)
/* D5708 8011F348 46020001 */  sub.s      $f0, $f0, $f2
/* D570C 8011F34C E4400008 */  swc1       $f0, 0x8($v0)
/* D5710 8011F350 C7A40010 */  lwc1       $f4, 0x10($sp)
/* D5714 8011F354 C7A00080 */  lwc1       $f0, 0x80($sp)
/* D5718 8011F358 C6460004 */  lwc1       $f6, 0x4($s2)
/* D571C 8011F35C 46002101 */  sub.s      $f4, $f4, $f0
/* D5720 8011F360 C7A00084 */  lwc1       $f0, 0x84($sp)
/* D5724 8011F364 C6420008 */  lwc1       $f2, 0x8($s2)
/* D5728 8011F368 46003181 */  sub.s      $f6, $f6, $f0
/* D572C 8011F36C C7A00088 */  lwc1       $f0, 0x88($sp)
/* D5730 8011F370 46001081 */  sub.s      $f2, $f2, $f0
/* D5734 8011F374 C7A00090 */  lwc1       $f0, 0x90($sp)
/* D5738 8011F378 E7A40030 */  swc1       $f4, 0x30($sp)
/* D573C 8011F37C 46002100 */  add.s      $f4, $f4, $f0
/* D5740 8011F380 E7A60034 */  swc1       $f6, 0x34($sp)
/* D5744 8011F384 E7A20038 */  swc1       $f2, 0x38($sp)
/* D5748 8011F388 E6240304 */  swc1       $f4, 0x304($s1)
/* D574C 8011F38C C7A00034 */  lwc1       $f0, 0x34($sp)
/* D5750 8011F390 C7A20094 */  lwc1       $f2, 0x94($sp)
/* D5754 8011F394 46020000 */  add.s      $f0, $f0, $f2
/* D5758 8011F398 26220304 */  addiu      $v0, $s1, 0x304
/* D575C 8011F39C E4400004 */  swc1       $f0, 0x4($v0)
/* D5760 8011F3A0 C7A00038 */  lwc1       $f0, 0x38($sp)
/* D5764 8011F3A4 C7A20098 */  lwc1       $f2, 0x98($sp)
/* D5768 8011F3A8 46020000 */  add.s      $f0, $f0, $f2
/* D576C 8011F3AC E4400008 */  swc1       $f0, 0x8($v0)
/* D5770 8011F3B0 C7A00030 */  lwc1       $f0, 0x30($sp)
/* D5774 8011F3B4 C7A200A0 */  lwc1       $f2, 0xA0($sp)
/* D5778 8011F3B8 46020001 */  sub.s      $f0, $f0, $f2
/* D577C 8011F3BC E6200310 */  swc1       $f0, 0x310($s1)
/* D5780 8011F3C0 C7A00034 */  lwc1       $f0, 0x34($sp)
/* D5784 8011F3C4 C7A200A4 */  lwc1       $f2, 0xA4($sp)
/* D5788 8011F3C8 46020001 */  sub.s      $f0, $f0, $f2
/* D578C 8011F3CC 26220310 */  addiu      $v0, $s1, 0x310
/* D5790 8011F3D0 E4400004 */  swc1       $f0, 0x4($v0)
/* D5794 8011F3D4 C7A00038 */  lwc1       $f0, 0x38($sp)
/* D5798 8011F3D8 C7A200A8 */  lwc1       $f2, 0xA8($sp)
/* D579C 8011F3DC 46020001 */  sub.s      $f0, $f0, $f2
/* D57A0 8011F3E0 E4400008 */  swc1       $f0, 0x8($v0)
/* D57A4 8011F3E4 C7A40020 */  lwc1       $f4, 0x20($sp)
/* D57A8 8011F3E8 C7A00080 */  lwc1       $f0, 0x80($sp)
/* D57AC 8011F3EC C7A20084 */  lwc1       $f2, 0x84($sp)
/* D57B0 8011F3F0 46002101 */  sub.s      $f4, $f4, $f0
/* D57B4 8011F3F4 C7A00024 */  lwc1       $f0, 0x24($sp)
/* D57B8 8011F3F8 46020001 */  sub.s      $f0, $f0, $f2
/* D57BC 8011F3FC E7A40030 */  swc1       $f4, 0x30($sp)
/* D57C0 8011F400 E7A00034 */  swc1       $f0, 0x34($sp)
/* D57C4 8011F404 C7A20028 */  lwc1       $f2, 0x28($sp)
/* D57C8 8011F408 C7A00088 */  lwc1       $f0, 0x88($sp)
/* D57CC 8011F40C 46001081 */  sub.s      $f2, $f2, $f0
/* D57D0 8011F410 C7A00090 */  lwc1       $f0, 0x90($sp)
/* D57D4 8011F414 46002100 */  add.s      $f4, $f4, $f0
/* D57D8 8011F418 E7A20038 */  swc1       $f2, 0x38($sp)
/* D57DC 8011F41C E6240294 */  swc1       $f4, 0x294($s1)
/* D57E0 8011F420 C7A00034 */  lwc1       $f0, 0x34($sp)
/* D57E4 8011F424 C7A20094 */  lwc1       $f2, 0x94($sp)
/* D57E8 8011F428 46020000 */  add.s      $f0, $f0, $f2
/* D57EC 8011F42C 26220294 */  addiu      $v0, $s1, 0x294
/* D57F0 8011F430 E4400004 */  swc1       $f0, 0x4($v0)
/* D57F4 8011F434 C7A00038 */  lwc1       $f0, 0x38($sp)
/* D57F8 8011F438 C7A20098 */  lwc1       $f2, 0x98($sp)
/* D57FC 8011F43C 46020000 */  add.s      $f0, $f0, $f2
/* D5800 8011F440 E4400008 */  swc1       $f0, 0x8($v0)
/* D5804 8011F444 C7A00030 */  lwc1       $f0, 0x30($sp)
/* D5808 8011F448 C7A200A0 */  lwc1       $f2, 0xA0($sp)
/* D580C 8011F44C 46020001 */  sub.s      $f0, $f0, $f2
/* D5810 8011F450 E62002A0 */  swc1       $f0, 0x2A0($s1)
/* D5814 8011F454 C7A00034 */  lwc1       $f0, 0x34($sp)
/* D5818 8011F458 C7A200A4 */  lwc1       $f2, 0xA4($sp)
/* D581C 8011F45C 46020001 */  sub.s      $f0, $f0, $f2
/* D5820 8011F460 263102A0 */  addiu      $s1, $s1, 0x2A0
/* D5824 8011F464 E6200004 */  swc1       $f0, 0x4($s1)
/* D5828 8011F468 C7A00038 */  lwc1       $f0, 0x38($sp)
/* D582C 8011F46C C7A200A8 */  lwc1       $f2, 0xA8($sp)
/* D5830 8011F470 46020001 */  sub.s      $f0, $f0, $f2
/* D5834 8011F474 E6200008 */  swc1       $f0, 0x8($s1)
/* D5838 8011F478 8FBF00BC */  lw         $ra, 0xBC($sp)
/* D583C 8011F47C 8FB200B8 */  lw         $s2, 0xB8($sp)
/* D5840 8011F480 8FB100B4 */  lw         $s1, 0xB4($sp)
/* D5844 8011F484 8FB000B0 */  lw         $s0, 0xB0($sp)
/* D5848 8011F488 03E00008 */  jr         $ra
/* D584C 8011F48C 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_race_8011F490
/* D5850 8011F490 8C82013C */  lw         $v0, 0x13C($a0)
/* D5854 8011F494 03E00008 */  jr         $ra
/* D5858 8011F498 00000000 */   nop

glabel func_race_8011F49C
/* D585C 8011F49C 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5860 8011F4A0 AC8506C4 */  sw         $a1, 0x6C4($a0)
/* D5864 8011F4A4 34420400 */  ori        $v0, $v0, 0x400
/* D5868 8011F4A8 03E00008 */  jr         $ra
/* D586C 8011F4AC AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_8011F4B0
/* D5870 8011F4B0 2403FBFF */  addiu      $v1, $zero, -0x401
/* D5874 8011F4B4 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5878 8011F4B8 3C01800D */  lui        $at, %hi(D_race_800CE3E4)
/* D587C 8011F4BC C420E3E4 */  lwc1       $f0, %lo(D_race_800CE3E4)($at)
/* D5880 8011F4C0 00431024 */  and        $v0, $v0, $v1
/* D5884 8011F4C4 AC8206AC */  sw         $v0, 0x6AC($a0)
/* D5888 8011F4C8 03E00008 */  jr         $ra
/* D588C 8011F4CC E48006C4 */   swc1      $f0, 0x6C4($a0)

glabel func_race_8011F4D0
/* D5890 8011F4D0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D5894 8011F4D4 AFB10034 */  sw         $s1, 0x34($sp)
/* D5898 8011F4D8 00808821 */  addu       $s1, $a0, $zero
/* D589C 8011F4DC AFB00030 */  sw         $s0, 0x30($sp)
/* D58A0 8011F4E0 00A08021 */  addu       $s0, $a1, $zero
/* D58A4 8011F4E4 AFBF0040 */  sw         $ra, 0x40($sp)
/* D58A8 8011F4E8 AFB3003C */  sw         $s3, 0x3C($sp)
/* D58AC 8011F4EC 0C0475E3 */  jal        func_race_8011D78C
/* D58B0 8011F4F0 AFB20038 */   sw        $s2, 0x38($sp)
/* D58B4 8011F4F4 0C0474DD */  jal        func_race_8011D374
/* D58B8 8011F4F8 02202021 */   addu      $a0, $s1, $zero
/* D58BC 8011F4FC 8E23013C */  lw         $v1, 0x13C($s1)
/* D58C0 8011F500 8C620024 */  lw         $v0, 0x24($v1)
/* D58C4 8011F504 27A50010 */  addiu      $a1, $sp, 0x10
/* D58C8 8011F508 84440010 */  lh         $a0, 0x10($v0)
/* D58CC 8011F50C 8C420014 */  lw         $v0, 0x14($v0)
/* D58D0 8011F510 0040F809 */  jalr       $v0
/* D58D4 8011F514 00642021 */   addu      $a0, $v1, $a0
/* D58D8 8011F518 C6000000 */  lwc1       $f0, 0x0($s0)
/* D58DC 8011F51C C7A20010 */  lwc1       $f2, 0x10($sp)
/* D58E0 8011F520 46020000 */  add.s      $f0, $f0, $f2
/* D58E4 8011F524 27B20010 */  addiu      $s2, $sp, 0x10
/* D58E8 8011F528 E7A00020 */  swc1       $f0, 0x20($sp)
/* D58EC 8011F52C C6000004 */  lwc1       $f0, 0x4($s0)
/* D58F0 8011F530 C6420004 */  lwc1       $f2, 0x4($s2)
/* D58F4 8011F534 46020000 */  add.s      $f0, $f0, $f2
/* D58F8 8011F538 E7A00024 */  swc1       $f0, 0x24($sp)
/* D58FC 8011F53C C6000008 */  lwc1       $f0, 0x8($s0)
/* D5900 8011F540 C6420008 */  lwc1       $f2, 0x8($s2)
/* D5904 8011F544 46020000 */  add.s      $f0, $f0, $f2
/* D5908 8011F548 E7A00028 */  swc1       $f0, 0x28($sp)
/* D590C 8011F54C 8E23013C */  lw         $v1, 0x13C($s1)
/* D5910 8011F550 27B00020 */  addiu      $s0, $sp, 0x20
/* D5914 8011F554 8C620024 */  lw         $v0, 0x24($v1)
/* D5918 8011F558 02002821 */  addu       $a1, $s0, $zero
/* D591C 8011F55C 84440018 */  lh         $a0, 0x18($v0)
/* D5920 8011F560 8C42001C */  lw         $v0, 0x1C($v0)
/* D5924 8011F564 0040F809 */  jalr       $v0
/* D5928 8011F568 00642021 */   addu      $a0, $v1, $a0
/* D592C 8011F56C 263300E4 */  addiu      $s3, $s1, 0xE4
/* D5930 8011F570 02602021 */  addu       $a0, $s3, $zero
/* D5934 8011F574 0C015962 */  jal        func_80056588
/* D5938 8011F578 02002821 */   addu      $a1, $s0, $zero
/* D593C 8011F57C 02202021 */  addu       $a0, $s1, $zero
/* D5940 8011F580 8E2606AC */  lw         $a2, 0x6AC($s1)
/* D5944 8011F584 00002821 */  addu       $a1, $zero, $zero
/* D5948 8011F588 00063302 */  srl        $a2, $a2, 12
/* D594C 8011F58C 38C60001 */  xori       $a2, $a2, 0x1
/* D5950 8011F590 0C0475EC */  jal        func_race_8011D7B0
/* D5954 8011F594 30C60001 */   andi      $a2, $a2, 0x1
/* D5958 8011F598 8E2203F0 */  lw         $v0, 0x3F0($s1)
/* D595C 8011F59C 1040000B */  beqz       $v0, .Lrace_8011F5CC
/* D5960 8011F5A0 00000000 */   nop
/* D5964 8011F5A4 8E23013C */  lw         $v1, 0x13C($s1)
/* D5968 8011F5A8 8C620024 */  lw         $v0, 0x24($v1)
/* D596C 8011F5AC 02402821 */  addu       $a1, $s2, $zero
/* D5970 8011F5B0 84440018 */  lh         $a0, 0x18($v0)
/* D5974 8011F5B4 8C42001C */  lw         $v0, 0x1C($v0)
/* D5978 8011F5B8 0040F809 */  jalr       $v0
/* D597C 8011F5BC 00642021 */   addu      $a0, $v1, $a0
/* D5980 8011F5C0 02602021 */  addu       $a0, $s3, $zero
/* D5984 8011F5C4 0C015962 */  jal        func_80056588
/* D5988 8011F5C8 02402821 */   addu      $a1, $s2, $zero
.Lrace_8011F5CC:
/* D598C 8011F5CC 8FBF0040 */  lw         $ra, 0x40($sp)
/* D5990 8011F5D0 8FB3003C */  lw         $s3, 0x3C($sp)
/* D5994 8011F5D4 8FB20038 */  lw         $s2, 0x38($sp)
/* D5998 8011F5D8 8FB10034 */  lw         $s1, 0x34($sp)
/* D599C 8011F5DC 8FB00030 */  lw         $s0, 0x30($sp)
/* D59A0 8011F5E0 03E00008 */  jr         $ra
/* D59A4 8011F5E4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_8011F5E8
/* D59A8 8011F5E8 C480036C */  lwc1       $f0, 0x36C($a0)
/* D59AC 8011F5EC 03E00008 */  jr         $ra
/* D59B0 8011F5F0 00000000 */   nop

glabel func_race_8011F5F4
/* D59B4 8011F5F4 C4800368 */  lwc1       $f0, 0x368($a0)
/* D59B8 8011F5F8 03E00008 */  jr         $ra
/* D59BC 8011F5FC 00000000 */   nop

glabel func_race_8011F600
/* D59C0 8011F600 8C82035C */  lw         $v0, 0x35C($a0)
/* D59C4 8011F604 8C830360 */  lw         $v1, 0x360($a0)
/* D59C8 8011F608 8C860364 */  lw         $a2, 0x364($a0)
/* D59CC 8011F60C ACA20000 */  sw         $v0, 0x0($a1)
/* D59D0 8011F610 ACA30004 */  sw         $v1, 0x4($a1)
/* D59D4 8011F614 ACA60008 */  sw         $a2, 0x8($a1)
/* D59D8 8011F618 03E00008 */  jr         $ra
/* D59DC 8011F61C 00000000 */   nop

glabel func_race_8011F620
/* D59E0 8011F620 00052880 */  sll        $a1, $a1, 2
/* D59E4 8011F624 00852021 */  addu       $a0, $a0, $a1
/* D59E8 8011F628 8C820140 */  lw         $v0, 0x140($a0)
/* D59EC 8011F62C 03E00008 */  jr         $ra
/* D59F0 8011F630 00000000 */   nop

glabel func_race_8011F634
/* D59F4 8011F634 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D59F8 8011F638 34421000 */  ori        $v0, $v0, 0x1000
/* D59FC 8011F63C 03E00008 */  jr         $ra
/* D5A00 8011F640 AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_8011F644
/* D5A04 8011F644 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5A08 8011F648 2403EFFF */  addiu      $v1, $zero, -0x1001
/* D5A0C 8011F64C 00431024 */  and        $v0, $v0, $v1
/* D5A10 8011F650 03E00008 */  jr         $ra
/* D5A14 8011F654 AC8206AC */   sw        $v0, 0x6AC($a0)

glabel func_race_8011F658
/* D5A18 8011F658 03E00008 */  jr         $ra
/* D5A1C 8011F65C 248200E4 */   addiu     $v0, $a0, 0xE4

glabel func_race_8011F660
/* D5A20 8011F660 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5A24 8011F664 03E00008 */  jr         $ra
/* D5A28 8011F668 30420800 */   andi      $v0, $v0, 0x800

glabel func_race_8011F66C
/* D5A2C 8011F66C 8C8205E8 */  lw         $v0, 0x5E8($a0)
/* D5A30 8011F670 03E00008 */  jr         $ra
/* D5A34 8011F674 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_8011F678
/* D5A38 8011F678 8C8203F0 */  lw         $v0, 0x3F0($a0)
/* D5A3C 8011F67C 03E00008 */  jr         $ra
/* D5A40 8011F680 00000000 */   nop

glabel func_race_8011F684
/* D5A44 8011F684 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5A48 8011F688 03E00008 */  jr         $ra
/* D5A4C 8011F68C 30420040 */   andi      $v0, $v0, 0x40

glabel func_race_8011F690
/* D5A50 8011F690 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5A54 8011F694 03E00008 */  jr         $ra
/* D5A58 8011F698 30420020 */   andi      $v0, $v0, 0x20

glabel func_race_8011F69C
/* D5A5C 8011F69C 03E00008 */  jr         $ra
/* D5A60 8011F6A0 AC850664 */   sw        $a1, 0x664($a0)

glabel func_race_8011F6A4
/* D5A64 8011F6A4 C4800664 */  lwc1       $f0, 0x664($a0)
/* D5A68 8011F6A8 03E00008 */  jr         $ra
/* D5A6C 8011F6AC 00000000 */   nop

glabel func_race_8011F6B0
/* D5A70 8011F6B0 03E00008 */  jr         $ra
/* D5A74 8011F6B4 AC850660 */   sw        $a1, 0x660($a0)

glabel func_race_8011F6B8
/* D5A78 8011F6B8 C4800660 */  lwc1       $f0, 0x660($a0)
/* D5A7C 8011F6BC 03E00008 */  jr         $ra
/* D5A80 8011F6C0 00000000 */   nop

glabel func_race_8011F6C4
/* D5A84 8011F6C4 C480065C */  lwc1       $f0, 0x65C($a0)
/* D5A88 8011F6C8 03E00008 */  jr         $ra
/* D5A8C 8011F6CC 00000000 */   nop

glabel func_race_8011F6D0
/* D5A90 8011F6D0 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5A94 8011F6D4 03E00008 */  jr         $ra
/* D5A98 8011F6D8 30420100 */   andi      $v0, $v0, 0x100

glabel func_race_8011F6DC
/* D5A9C 8011F6DC 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5AA0 8011F6E0 03E00008 */  jr         $ra
/* D5AA4 8011F6E4 30420080 */   andi      $v0, $v0, 0x80

glabel func_race_8011F6E8
/* D5AA8 8011F6E8 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5AAC 8011F6EC 03E00008 */  jr         $ra
/* D5AB0 8011F6F0 30420008 */   andi      $v0, $v0, 0x8

glabel func_race_8011F6F4
/* D5AB4 8011F6F4 8C8206C8 */  lw         $v0, 0x6C8($a0)
/* D5AB8 8011F6F8 03E00008 */  jr         $ra
/* D5ABC 8011F6FC 00000000 */   nop

glabel func_race_8011F700
/* D5AC0 8011F700 03E00008 */  jr         $ra
/* D5AC4 8011F704 AC8006D8 */   sw        $zero, 0x6D8($a0)

glabel func_race_8011F708
/* D5AC8 8011F708 24020001 */  addiu      $v0, $zero, 0x1
/* D5ACC 8011F70C 03E00008 */  jr         $ra
/* D5AD0 8011F710 AC8206D8 */   sw        $v0, 0x6D8($a0)

glabel func_race_8011F714
/* D5AD4 8011F714 000510C0 */  sll        $v0, $a1, 3
/* D5AD8 8011F718 00451023 */  subu       $v0, $v0, $a1
/* D5ADC 8011F71C 00021100 */  sll        $v0, $v0, 4
/* D5AE0 8011F720 00822021 */  addu       $a0, $a0, $v0
/* D5AE4 8011F724 8C8301A8 */  lw         $v1, 0x1A8($a0)
/* D5AE8 8011F728 8C8701AC */  lw         $a3, 0x1AC($a0)
/* D5AEC 8011F72C 8C8801B0 */  lw         $t0, 0x1B0($a0)
/* D5AF0 8011F730 ACC30000 */  sw         $v1, 0x0($a2)
/* D5AF4 8011F734 ACC70004 */  sw         $a3, 0x4($a2)
/* D5AF8 8011F738 ACC80008 */  sw         $t0, 0x8($a2)
/* D5AFC 8011F73C 03E00008 */  jr         $ra
/* D5B00 8011F740 00000000 */   nop

glabel func_race_8011F744
/* D5B04 8011F744 00051040 */  sll        $v0, $a1, 1
/* D5B08 8011F748 00451021 */  addu       $v0, $v0, $a1
/* D5B0C 8011F74C 00021080 */  sll        $v0, $v0, 2
/* D5B10 8011F750 00822021 */  addu       $a0, $a0, $v0
/* D5B14 8011F754 8C8303A4 */  lw         $v1, 0x3A4($a0)
/* D5B18 8011F758 8C8703A8 */  lw         $a3, 0x3A8($a0)
/* D5B1C 8011F75C 8C8803AC */  lw         $t0, 0x3AC($a0)
/* D5B20 8011F760 ACC30000 */  sw         $v1, 0x0($a2)
/* D5B24 8011F764 ACC70004 */  sw         $a3, 0x4($a2)
/* D5B28 8011F768 ACC80008 */  sw         $t0, 0x8($a2)
/* D5B2C 8011F76C 03E00008 */  jr         $ra
/* D5B30 8011F770 00000000 */   nop

glabel func_race_8011F774
/* D5B34 8011F774 00051040 */  sll        $v0, $a1, 1
/* D5B38 8011F778 00451021 */  addu       $v0, $v0, $a1
/* D5B3C 8011F77C 00021080 */  sll        $v0, $v0, 2
/* D5B40 8011F780 00822021 */  addu       $a0, $a0, $v0
/* D5B44 8011F784 8C830374 */  lw         $v1, 0x374($a0)
/* D5B48 8011F788 8C870378 */  lw         $a3, 0x378($a0)
/* D5B4C 8011F78C 8C88037C */  lw         $t0, 0x37C($a0)
/* D5B50 8011F790 ACC30000 */  sw         $v1, 0x0($a2)
/* D5B54 8011F794 ACC70004 */  sw         $a3, 0x4($a2)
/* D5B58 8011F798 ACC80008 */  sw         $t0, 0x8($a2)
/* D5B5C 8011F79C 03E00008 */  jr         $ra
/* D5B60 8011F7A0 00000000 */   nop

glabel func_race_8011F7A4
/* D5B64 8011F7A4 C4800688 */  lwc1       $f0, 0x688($a0)
/* D5B68 8011F7A8 E4A00000 */  swc1       $f0, 0x0($a1)
/* D5B6C 8011F7AC C480068C */  lwc1       $f0, 0x68C($a0)
/* D5B70 8011F7B0 E4A00004 */  swc1       $f0, 0x4($a1)
/* D5B74 8011F7B4 C4800690 */  lwc1       $f0, 0x690($a0)
/* D5B78 8011F7B8 E4A00008 */  swc1       $f0, 0x8($a1)
/* D5B7C 8011F7BC C4800694 */  lwc1       $f0, 0x694($a0)
/* D5B80 8011F7C0 E4A0000C */  swc1       $f0, 0xC($a1)
/* D5B84 8011F7C4 C4800698 */  lwc1       $f0, 0x698($a0)
/* D5B88 8011F7C8 E4A00010 */  swc1       $f0, 0x10($a1)
/* D5B8C 8011F7CC C480069C */  lwc1       $f0, 0x69C($a0)
/* D5B90 8011F7D0 E4A00014 */  swc1       $f0, 0x14($a1)
/* D5B94 8011F7D4 C48006A0 */  lwc1       $f0, 0x6A0($a0)
/* D5B98 8011F7D8 E4A00018 */  swc1       $f0, 0x18($a1)
/* D5B9C 8011F7DC C48006A4 */  lwc1       $f0, 0x6A4($a0)
/* D5BA0 8011F7E0 E4A0001C */  swc1       $f0, 0x1C($a1)
/* D5BA4 8011F7E4 C48006A8 */  lwc1       $f0, 0x6A8($a0)
/* D5BA8 8011F7E8 03E00008 */  jr         $ra
/* D5BAC 8011F7EC E4A00020 */   swc1      $f0, 0x20($a1)

glabel func_race_8011F7F0
/* D5BB0 8011F7F0 8C820670 */  lw         $v0, 0x670($a0)
/* D5BB4 8011F7F4 8C830674 */  lw         $v1, 0x674($a0)
/* D5BB8 8011F7F8 8C860678 */  lw         $a2, 0x678($a0)
/* D5BBC 8011F7FC ACA20000 */  sw         $v0, 0x0($a1)
/* D5BC0 8011F800 ACA30004 */  sw         $v1, 0x4($a1)
/* D5BC4 8011F804 ACA60008 */  sw         $a2, 0x8($a1)
/* D5BC8 8011F808 03E00008 */  jr         $ra
/* D5BCC 8011F80C 00000000 */   nop

glabel func_race_8011F810
/* D5BD0 8011F810 8C82067C */  lw         $v0, 0x67C($a0)
/* D5BD4 8011F814 8C830680 */  lw         $v1, 0x680($a0)
/* D5BD8 8011F818 8C860684 */  lw         $a2, 0x684($a0)
/* D5BDC 8011F81C ACA20000 */  sw         $v0, 0x0($a1)
/* D5BE0 8011F820 ACA30004 */  sw         $v1, 0x4($a1)
/* D5BE4 8011F824 ACA60008 */  sw         $a2, 0x8($a1)
/* D5BE8 8011F828 03E00008 */  jr         $ra
/* D5BEC 8011F82C 00000000 */   nop

glabel func_race_8011F830
/* D5BF0 8011F830 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5BF4 8011F834 03E00008 */  jr         $ra
/* D5BF8 8011F838 30420002 */   andi      $v0, $v0, 0x2

glabel func_race_8011F83C
/* D5BFC 8011F83C 8C8206AC */  lw         $v0, 0x6AC($a0)
/* D5C00 8011F840 03E00008 */  jr         $ra
/* D5C04 8011F844 30420001 */   andi      $v0, $v0, 0x1

glabel func_race_8011F848
/* D5C08 8011F848 44851000 */  mtc1       $a1, $f2
/* D5C0C 8011F84C 3C01800D */  lui        $at, %hi(D_race_800CE490)
/* D5C10 8011F850 C420E490 */  lwc1       $f0, %lo(D_race_800CE490)($at)
/* D5C14 8011F854 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D5C18 8011F858 46001102 */  mul.s      $f4, $f2, $f0
/* D5C1C 8011F85C AFB00010 */  sw         $s0, 0x10($sp)
/* D5C20 8011F860 00808021 */  addu       $s0, $a0, $zero
/* D5C24 8011F864 AFBF0014 */  sw         $ra, 0x14($sp)
/* D5C28 8011F868 8E0200CC */  lw         $v0, 0xCC($s0)
/* D5C2C 8011F86C 46002102 */  mul.s      $f4, $f4, $f0
/* D5C30 8011F870 3C01800D */  lui        $at, %hi(D_race_800CE494)
/* D5C34 8011F874 C420E494 */  lwc1       $f0, %lo(D_race_800CE494)($at)
/* D5C38 8011F878 E60200C4 */  swc1       $f2, 0xC4($s0)
/* D5C3C 8011F87C 46020003 */  div.s      $f0, $f0, $f2
/* D5C40 8011F880 E60000C8 */  swc1       $f0, 0xC8($s0)
/* D5C44 8011F884 E6040160 */  swc1       $f4, 0x160($s0)
/* D5C48 8011F888 84440008 */  lh         $a0, 0x8($v0)
/* D5C4C 8011F88C 8C42000C */  lw         $v0, 0xC($v0)
/* D5C50 8011F890 0040F809 */  jalr       $v0
/* D5C54 8011F894 02042021 */   addu      $a0, $s0, $a0
/* D5C58 8011F898 0C045B7A */  jal        func_race_80116DE8
/* D5C5C 8011F89C 02002021 */   addu      $a0, $s0, $zero
/* D5C60 8011F8A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* D5C64 8011F8A4 8FB00010 */  lw         $s0, 0x10($sp)
/* D5C68 8011F8A8 03E00008 */  jr         $ra
/* D5C6C 8011F8AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011F8B0
/* D5C70 8011F8B0 8C820620 */  lw         $v0, 0x620($a0)
/* D5C74 8011F8B4 8C830624 */  lw         $v1, 0x624($a0)
/* D5C78 8011F8B8 8C860628 */  lw         $a2, 0x628($a0)
/* D5C7C 8011F8BC ACA20000 */  sw         $v0, 0x0($a1)
/* D5C80 8011F8C0 ACA30004 */  sw         $v1, 0x4($a1)
/* D5C84 8011F8C4 ACA60008 */  sw         $a2, 0x8($a1)
/* D5C88 8011F8C8 03E00008 */  jr         $ra
/* D5C8C 8011F8CC 00000000 */   nop

glabel func_race_8011F8D0
/* D5C90 8011F8D0 C480061C */  lwc1       $f0, 0x61C($a0)
/* D5C94 8011F8D4 03E00008 */  jr         $ra
/* D5C98 8011F8D8 00000000 */   nop

glabel func_race_8011F8DC
/* D5C9C 8011F8DC 8C820610 */  lw         $v0, 0x610($a0)
/* D5CA0 8011F8E0 8C830614 */  lw         $v1, 0x614($a0)
/* D5CA4 8011F8E4 8C860618 */  lw         $a2, 0x618($a0)
/* D5CA8 8011F8E8 ACA20000 */  sw         $v0, 0x0($a1)
/* D5CAC 8011F8EC ACA30004 */  sw         $v1, 0x4($a1)
/* D5CB0 8011F8F0 ACA60008 */  sw         $a2, 0x8($a1)
/* D5CB4 8011F8F4 03E00008 */  jr         $ra
/* D5CB8 8011F8F8 00000000 */   nop

glabel func_race_8011F8FC
/* D5CBC 8011F8FC 8C8205FC */  lw         $v0, 0x5FC($a0)
/* D5CC0 8011F900 8C830600 */  lw         $v1, 0x600($a0)
/* D5CC4 8011F904 8C860604 */  lw         $a2, 0x604($a0)
/* D5CC8 8011F908 ACA20000 */  sw         $v0, 0x0($a1)
/* D5CCC 8011F90C ACA30004 */  sw         $v1, 0x4($a1)
/* D5CD0 8011F910 ACA60008 */  sw         $a2, 0x8($a1)
/* D5CD4 8011F914 03E00008 */  jr         $ra
/* D5CD8 8011F918 00000000 */   nop

glabel func_race_8011F91C
/* D5CDC 8011F91C C4800608 */  lwc1       $f0, 0x608($a0)
/* D5CE0 8011F920 03E00008 */  jr         $ra
/* D5CE4 8011F924 00000000 */   nop

glabel func_race_8011F928
/* D5CE8 8011F928 8C820004 */  lw         $v0, 0x4($a0)
/* D5CEC 8011F92C 8C830008 */  lw         $v1, 0x8($a0)
/* D5CF0 8011F930 8C86000C */  lw         $a2, 0xC($a0)
/* D5CF4 8011F934 ACA20000 */  sw         $v0, 0x0($a1)
/* D5CF8 8011F938 ACA30004 */  sw         $v1, 0x4($a1)
/* D5CFC 8011F93C ACA60008 */  sw         $a2, 0x8($a1)
/* D5D00 8011F940 03E00008 */  jr         $ra
/* D5D04 8011F944 00000000 */   nop

glabel func_race_8011F948
/* D5D08 8011F948 000510C0 */  sll        $v0, $a1, 3
/* D5D0C 8011F94C 00451023 */  subu       $v0, $v0, $a1
/* D5D10 8011F950 00021100 */  sll        $v0, $v0, 4
/* D5D14 8011F954 00822021 */  addu       $a0, $a0, $v0
/* D5D18 8011F958 8C8201E4 */  lw         $v0, 0x1E4($a0)
/* D5D1C 8011F95C 03E00008 */  jr         $ra
/* D5D20 8011F960 30420001 */   andi      $v0, $v0, 0x1

glabel func_race_8011F964
/* D5D24 8011F964 8C820370 */  lw         $v0, 0x370($a0)
/* D5D28 8011F968 03E00008 */  jr         $ra
/* D5D2C 8011F96C 00000000 */   nop

glabel func_race_8011F970
/* D5D30 8011F970 C48005F4 */  lwc1       $f0, 0x5F4($a0)
/* D5D34 8011F974 03E00008 */  jr         $ra
/* D5D38 8011F978 00000000 */   nop

glabel func_race_8011F97C
/* D5D3C 8011F97C C4800650 */  lwc1       $f0, 0x650($a0)
/* D5D40 8011F980 03E00008 */  jr         $ra
/* D5D44 8011F984 00000000 */   nop

glabel func_race_8011F988
/* D5D48 8011F988 C480064C */  lwc1       $f0, 0x64C($a0)
/* D5D4C 8011F98C 03E00008 */  jr         $ra
/* D5D50 8011F990 00000000 */   nop

glabel func_race_8011F994
/* D5D54 8011F994 C480062C */  lwc1       $f0, 0x62C($a0)
/* D5D58 8011F998 03E00008 */  jr         $ra
/* D5D5C 8011F99C 00000000 */   nop

glabel func_race_8011F9A0
/* D5D60 8011F9A0 8C82016C */  lw         $v0, 0x16C($a0)
/* D5D64 8011F9A4 8C830170 */  lw         $v1, 0x170($a0)
/* D5D68 8011F9A8 8C860174 */  lw         $a2, 0x174($a0)
/* D5D6C 8011F9AC ACA20000 */  sw         $v0, 0x0($a1)
/* D5D70 8011F9B0 ACA30004 */  sw         $v1, 0x4($a1)
/* D5D74 8011F9B4 ACA60008 */  sw         $a2, 0x8($a1)
/* D5D78 8011F9B8 03E00008 */  jr         $ra
/* D5D7C 8011F9BC 00000000 */   nop

glabel func_race_8011F9C0
/* D5D80 8011F9C0 3C01800D */  lui        $at, %hi(D_race_800CE498)
/* D5D84 8011F9C4 C420E498 */  lwc1       $f0, %lo(D_race_800CE498)($at)
/* D5D88 8011F9C8 ACA00000 */  sw         $zero, 0x0($a1)
/* D5D8C 8011F9CC ACA00004 */  sw         $zero, 0x4($a1)
/* D5D90 8011F9D0 03E00008 */  jr         $ra
/* D5D94 8011F9D4 E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_8011F9D8
/* D5D98 8011F9D8 ACA00000 */  sw         $zero, 0x0($a1)
/* D5D9C 8011F9DC ACA00004 */  sw         $zero, 0x4($a1)
/* D5DA0 8011F9E0 C4800164 */  lwc1       $f0, 0x164($a0)
/* D5DA4 8011F9E4 03E00008 */  jr         $ra
/* D5DA8 8011F9E8 E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_8011F9EC
/* D5DAC 8011F9EC 8C82013C */  lw         $v0, 0x13C($a0)
/* D5DB0 8011F9F0 03E00008 */  jr         $ra
/* D5DB4 8011F9F4 00000000 */   nop
