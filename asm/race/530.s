.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F74B0
/* AD870 800F74B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AD874 800F74B4 AFB00010 */  sw         $s0, 0x10($sp)
/* AD878 800F74B8 00808021 */  addu       $s0, $a0, $zero
/* AD87C 800F74BC AFB10014 */  sw         $s1, 0x14($sp)
/* AD880 800F74C0 AFBF0018 */  sw         $ra, 0x18($sp)
/* AD884 800F74C4 0C006DFE */  jal        strlen
/* AD888 800F74C8 00A08821 */   addu      $s1, $a1, $zero
/* AD88C 800F74CC 00403021 */  addu       $a2, $v0, $zero
/* AD890 800F74D0 10C0000A */  beqz       $a2, .Lrace_800F74FC
/* AD894 800F74D4 00001821 */   addu      $v1, $zero, $zero
/* AD898 800F74D8 3C028013 */  lui        $v0, %hi(D_race_80132B40)
/* AD89C 800F74DC 24442B40 */  addiu      $a0, $v0, %lo(D_race_80132B40)
.Lrace_800F74E0:
/* AD8A0 800F74E0 02031021 */  addu       $v0, $s0, $v1
/* AD8A4 800F74E4 90420000 */  lbu        $v0, 0x0($v0)
/* AD8A8 800F74E8 24630001 */  addiu      $v1, $v1, 0x1
/* AD8AC 800F74EC A4820000 */  sh         $v0, 0x0($a0)
/* AD8B0 800F74F0 0066102B */  sltu       $v0, $v1, $a2
/* AD8B4 800F74F4 1440FFFA */  bnez       $v0, .Lrace_800F74E0
/* AD8B8 800F74F8 24840002 */   addiu     $a0, $a0, 0x2
.Lrace_800F74FC:
/* AD8BC 800F74FC 3C058013 */  lui        $a1, %hi(D_race_80132B40)
/* AD8C0 800F7500 24A52B40 */  addiu      $a1, $a1, %lo(D_race_80132B40)
/* AD8C4 800F7504 00061040 */  sll        $v0, $a2, 1
/* AD8C8 800F7508 00451021 */  addu       $v0, $v0, $a1
/* AD8CC 800F750C 02202021 */  addu       $a0, $s1, $zero
/* AD8D0 800F7510 0C001831 */  jal        func_800060C4
/* AD8D4 800F7514 A4400000 */   sh        $zero, 0x0($v0)
/* AD8D8 800F7518 8FBF0018 */  lw         $ra, 0x18($sp)
/* AD8DC 800F751C 8FB10014 */  lw         $s1, 0x14($sp)
/* AD8E0 800F7520 8FB00010 */  lw         $s0, 0x10($sp)
/* AD8E4 800F7524 03E00008 */  jr         $ra
/* AD8E8 800F7528 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F752C
/* AD8EC 800F752C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* AD8F0 800F7530 AFB10044 */  sw         $s1, 0x44($sp)
/* AD8F4 800F7534 00808821 */  addu       $s1, $a0, $zero
/* AD8F8 800F7538 00C01821 */  addu       $v1, $a2, $zero
/* AD8FC 800F753C AFBF0048 */  sw         $ra, 0x48($sp)
/* AD900 800F7540 AFB00040 */  sw         $s0, 0x40($sp)
/* AD904 800F7544 C4600004 */  lwc1       $f0, 0x4($v1)
/* AD908 800F7548 C622012C */  lwc1       $f2, 0x12C($s1)
/* AD90C 800F754C 4602003C */  c.lt.s     $f0, $f2
/* AD910 800F7550 00000000 */  nop
/* AD914 800F7554 45000011 */  bc1f       .Lrace_800F759C
/* AD918 800F7558 00E08021 */   addu      $s0, $a3, $zero
/* AD91C 800F755C C4A00004 */  lwc1       $f0, 0x4($a1)
/* AD920 800F7560 4602003C */  c.lt.s     $f0, $f2
/* AD924 800F7564 00000000 */  nop
/* AD928 800F7568 45000008 */  bc1f       .Lrace_800F758C
/* AD92C 800F756C 00A01021 */   addu      $v0, $a1, $zero
/* AD930 800F7570 C6000004 */  lwc1       $f0, 0x4($s0)
/* AD934 800F7574 4602003C */  c.lt.s     $f0, $f2
/* AD938 800F7578 00000000 */  nop
/* AD93C 800F757C 4500000F */  bc1f       .Lrace_800F75BC
/* AD940 800F7580 00000000 */   nop
/* AD944 800F7584 0803DDD9 */  j          .Lrace_800F7764
/* AD948 800F7588 00000000 */   nop
.Lrace_800F758C:
/* AD94C 800F758C 00602821 */  addu       $a1, $v1, $zero
/* AD950 800F7590 02001821 */  addu       $v1, $s0, $zero
/* AD954 800F7594 0803DD6F */  j          .Lrace_800F75BC
/* AD958 800F7598 00408021 */   addu      $s0, $v0, $zero
.Lrace_800F759C:
/* AD95C 800F759C C6000004 */  lwc1       $f0, 0x4($s0)
/* AD960 800F75A0 4602003C */  c.lt.s     $f0, $f2
/* AD964 800F75A4 00000000 */  nop
/* AD968 800F75A8 45000004 */  bc1f       .Lrace_800F75BC
/* AD96C 800F75AC 02001021 */   addu      $v0, $s0, $zero
/* AD970 800F75B0 00608021 */  addu       $s0, $v1, $zero
/* AD974 800F75B4 00A01821 */  addu       $v1, $a1, $zero
/* AD978 800F75B8 00402821 */  addu       $a1, $v0, $zero
.Lrace_800F75BC:
/* AD97C 800F75BC C4A20004 */  lwc1       $f2, 0x4($a1)
/* AD980 800F75C0 C620012C */  lwc1       $f0, 0x12C($s1)
/* AD984 800F75C4 4600103C */  c.lt.s     $f2, $f0
/* AD988 800F75C8 00000000 */  nop
/* AD98C 800F75CC 45000062 */  bc1f       .Lrace_800F7758
/* AD990 800F75D0 02202021 */   addu      $a0, $s1, $zero
/* AD994 800F75D4 44800000 */  mtc1       $zero, $f0
/* AD998 800F75D8 88A80014 */  lwl        $t0, 0x14($a1)
/* AD99C 800F75DC 98A80017 */  lwr        $t0, 0x17($a1)
/* AD9A0 800F75E0 ABA80024 */  swl        $t0, 0x24($sp)
/* AD9A4 800F75E4 BBA80027 */  swr        $t0, 0x27($sp)
/* AD9A8 800F75E8 8BA80024 */  lwl        $t0, 0x24($sp)
/* AD9AC 800F75EC 9BA80027 */  lwr        $t0, 0x27($sp)
/* AD9B0 800F75F0 ABA8003C */  swl        $t0, 0x3C($sp)
/* AD9B4 800F75F4 BBA8003F */  swr        $t0, 0x3F($sp)
/* AD9B8 800F75F8 E7A00018 */  swc1       $f0, 0x18($sp)
/* AD9BC 800F75FC E7A00030 */  swc1       $f0, 0x30($sp)
/* AD9C0 800F7600 C620012C */  lwc1       $f0, 0x12C($s1)
/* AD9C4 800F7604 E7A00014 */  swc1       $f0, 0x14($sp)
/* AD9C8 800F7608 E7A0002C */  swc1       $f0, 0x2C($sp)
/* AD9CC 800F760C C6040004 */  lwc1       $f4, 0x4($s0)
/* AD9D0 800F7610 C626012C */  lwc1       $f6, 0x12C($s1)
/* AD9D4 800F7614 46062181 */  sub.s      $f6, $f4, $f6
/* AD9D8 800F7618 C4A20004 */  lwc1       $f2, 0x4($a1)
/* AD9DC 800F761C C4A00000 */  lwc1       $f0, 0x0($a1)
/* AD9E0 800F7620 46022101 */  sub.s      $f4, $f4, $f2
/* AD9E4 800F7624 C6020000 */  lwc1       $f2, 0x0($s0)
/* AD9E8 800F7628 46020001 */  sub.s      $f0, $f0, $f2
/* AD9EC 800F762C 46043183 */  div.s      $f6, $f6, $f4
/* AD9F0 800F7630 46003002 */  mul.s      $f0, $f6, $f0
/* AD9F4 800F7634 46001080 */  add.s      $f2, $f2, $f0
/* AD9F8 800F7638 E7A20010 */  swc1       $f2, 0x10($sp)
/* AD9FC 800F763C C4A0000C */  lwc1       $f0, 0xC($a1)
/* ADA00 800F7640 C602000C */  lwc1       $f2, 0xC($s0)
/* ADA04 800F7644 46020001 */  sub.s      $f0, $f0, $f2
/* ADA08 800F7648 46003002 */  mul.s      $f0, $f6, $f0
/* ADA0C 800F764C 46001080 */  add.s      $f2, $f2, $f0
/* ADA10 800F7650 E7A2001C */  swc1       $f2, 0x1C($sp)
/* ADA14 800F7654 C4A00010 */  lwc1       $f0, 0x10($a1)
/* ADA18 800F7658 C6020010 */  lwc1       $f2, 0x10($s0)
/* ADA1C 800F765C 46020001 */  sub.s      $f0, $f0, $f2
/* ADA20 800F7660 46003002 */  mul.s      $f0, $f6, $f0
/* ADA24 800F7664 46001080 */  add.s      $f2, $f2, $f0
/* ADA28 800F7668 E7A20020 */  swc1       $f2, 0x20($sp)
/* ADA2C 800F766C C4620004 */  lwc1       $f2, 0x4($v1)
/* ADA30 800F7670 C620012C */  lwc1       $f0, 0x12C($s1)
/* ADA34 800F7674 4600103C */  c.lt.s     $f2, $f0
/* ADA38 800F7678 00000000 */  nop
/* ADA3C 800F767C 45020018 */  bc1fl      .Lrace_800F76E0
/* ADA40 800F7680 46001181 */   sub.s     $f6, $f2, $f0
/* ADA44 800F7684 C6040004 */  lwc1       $f4, 0x4($s0)
/* ADA48 800F7688 46002181 */  sub.s      $f6, $f4, $f0
/* ADA4C 800F768C C4600000 */  lwc1       $f0, 0x0($v1)
/* ADA50 800F7690 46022101 */  sub.s      $f4, $f4, $f2
/* ADA54 800F7694 C6020000 */  lwc1       $f2, 0x0($s0)
/* ADA58 800F7698 46020001 */  sub.s      $f0, $f0, $f2
/* ADA5C 800F769C 46043183 */  div.s      $f6, $f6, $f4
/* ADA60 800F76A0 46003002 */  mul.s      $f0, $f6, $f0
/* ADA64 800F76A4 46001080 */  add.s      $f2, $f2, $f0
/* ADA68 800F76A8 E7A20028 */  swc1       $f2, 0x28($sp)
/* ADA6C 800F76AC C460000C */  lwc1       $f0, 0xC($v1)
/* ADA70 800F76B0 C602000C */  lwc1       $f2, 0xC($s0)
/* ADA74 800F76B4 46020001 */  sub.s      $f0, $f0, $f2
/* ADA78 800F76B8 46003002 */  mul.s      $f0, $f6, $f0
/* ADA7C 800F76BC 46001080 */  add.s      $f2, $f2, $f0
/* ADA80 800F76C0 E7A20034 */  swc1       $f2, 0x34($sp)
/* ADA84 800F76C4 C4600010 */  lwc1       $f0, 0x10($v1)
/* ADA88 800F76C8 C6020010 */  lwc1       $f2, 0x10($s0)
/* ADA8C 800F76CC 46020001 */  sub.s      $f0, $f0, $f2
/* ADA90 800F76D0 46003002 */  mul.s      $f0, $f6, $f0
/* ADA94 800F76D4 46001080 */  add.s      $f2, $f2, $f0
/* ADA98 800F76D8 0803DDD3 */  j          .Lrace_800F774C
/* ADA9C 800F76DC E7A20038 */   swc1      $f2, 0x38($sp)
.Lrace_800F76E0:
/* ADAA0 800F76E0 C4A40004 */  lwc1       $f4, 0x4($a1)
/* ADAA4 800F76E4 C4A00000 */  lwc1       $f0, 0x0($a1)
/* ADAA8 800F76E8 46041101 */  sub.s      $f4, $f2, $f4
/* ADAAC 800F76EC C4620000 */  lwc1       $f2, 0x0($v1)
/* ADAB0 800F76F0 46020001 */  sub.s      $f0, $f0, $f2
/* ADAB4 800F76F4 46043183 */  div.s      $f6, $f6, $f4
/* ADAB8 800F76F8 46003002 */  mul.s      $f0, $f6, $f0
/* ADABC 800F76FC 46001080 */  add.s      $f2, $f2, $f0
/* ADAC0 800F7700 E7A20028 */  swc1       $f2, 0x28($sp)
/* ADAC4 800F7704 C4A0000C */  lwc1       $f0, 0xC($a1)
/* ADAC8 800F7708 C462000C */  lwc1       $f2, 0xC($v1)
/* ADACC 800F770C 46020001 */  sub.s      $f0, $f0, $f2
/* ADAD0 800F7710 46003002 */  mul.s      $f0, $f6, $f0
/* ADAD4 800F7714 46001080 */  add.s      $f2, $f2, $f0
/* ADAD8 800F7718 E7A20034 */  swc1       $f2, 0x34($sp)
/* ADADC 800F771C C4A00010 */  lwc1       $f0, 0x10($a1)
/* ADAE0 800F7720 C4620010 */  lwc1       $f2, 0x10($v1)
/* ADAE4 800F7724 46020001 */  sub.s      $f0, $f0, $f2
/* ADAE8 800F7728 46003002 */  mul.s      $f0, $f6, $f0
/* ADAEC 800F772C 02202021 */  addu       $a0, $s1, $zero
/* ADAF0 800F7730 27A60028 */  addiu      $a2, $sp, 0x28
/* ADAF4 800F7734 46001080 */  add.s      $f2, $f2, $f0
/* ADAF8 800F7738 00603821 */  addu       $a3, $v1, $zero
/* ADAFC 800F773C 02002821 */  addu       $a1, $s0, $zero
/* ADB00 800F7740 0C03DDDE */  jal        func_race_800F7778
/* ADB04 800F7744 E7A20038 */   swc1      $f2, 0x38($sp)
/* ADB08 800F7748 02202021 */  addu       $a0, $s1, $zero
.Lrace_800F774C:
/* ADB0C 800F774C 27A50010 */  addiu      $a1, $sp, 0x10
/* ADB10 800F7750 0803DDD7 */  j          .Lrace_800F775C
/* ADB14 800F7754 27A60028 */   addiu     $a2, $sp, 0x28
.Lrace_800F7758:
/* ADB18 800F7758 00603021 */  addu       $a2, $v1, $zero
.Lrace_800F775C:
/* ADB1C 800F775C 0C03DDDE */  jal        func_race_800F7778
/* ADB20 800F7760 02003821 */   addu      $a3, $s0, $zero
.Lrace_800F7764:
/* ADB24 800F7764 8FBF0048 */  lw         $ra, 0x48($sp)
/* ADB28 800F7768 8FB10044 */  lw         $s1, 0x44($sp)
/* ADB2C 800F776C 8FB00040 */  lw         $s0, 0x40($sp)
/* ADB30 800F7770 03E00008 */  jr         $ra
/* ADB34 800F7774 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800F7778
/* ADB38 800F7778 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* ADB3C 800F777C AFB10044 */  sw         $s1, 0x44($sp)
/* ADB40 800F7780 00808821 */  addu       $s1, $a0, $zero
/* ADB44 800F7784 00C01821 */  addu       $v1, $a2, $zero
/* ADB48 800F7788 AFBF0048 */  sw         $ra, 0x48($sp)
/* ADB4C 800F778C AFB00040 */  sw         $s0, 0x40($sp)
/* ADB50 800F7790 C4600000 */  lwc1       $f0, 0x0($v1)
/* ADB54 800F7794 C6220130 */  lwc1       $f2, 0x130($s1)
/* ADB58 800F7798 4602003C */  c.lt.s     $f0, $f2
/* ADB5C 800F779C 00000000 */  nop
/* ADB60 800F77A0 45000011 */  bc1f       .Lrace_800F77E8
/* ADB64 800F77A4 00E08021 */   addu      $s0, $a3, $zero
/* ADB68 800F77A8 C4A00000 */  lwc1       $f0, 0x0($a1)
/* ADB6C 800F77AC 4602003C */  c.lt.s     $f0, $f2
/* ADB70 800F77B0 00000000 */  nop
/* ADB74 800F77B4 45000008 */  bc1f       .Lrace_800F77D8
/* ADB78 800F77B8 00A01021 */   addu      $v0, $a1, $zero
/* ADB7C 800F77BC C6000000 */  lwc1       $f0, 0x0($s0)
/* ADB80 800F77C0 4602003C */  c.lt.s     $f0, $f2
/* ADB84 800F77C4 00000000 */  nop
/* ADB88 800F77C8 4500000F */  bc1f       .Lrace_800F7808
/* ADB8C 800F77CC 00000000 */   nop
/* ADB90 800F77D0 0803DE6C */  j          .Lrace_800F79B0
/* ADB94 800F77D4 00000000 */   nop
.Lrace_800F77D8:
/* ADB98 800F77D8 00602821 */  addu       $a1, $v1, $zero
/* ADB9C 800F77DC 02001821 */  addu       $v1, $s0, $zero
/* ADBA0 800F77E0 0803DE02 */  j          .Lrace_800F7808
/* ADBA4 800F77E4 00408021 */   addu      $s0, $v0, $zero
.Lrace_800F77E8:
/* ADBA8 800F77E8 C6000000 */  lwc1       $f0, 0x0($s0)
/* ADBAC 800F77EC 4602003C */  c.lt.s     $f0, $f2
/* ADBB0 800F77F0 00000000 */  nop
/* ADBB4 800F77F4 45000004 */  bc1f       .Lrace_800F7808
/* ADBB8 800F77F8 02001021 */   addu      $v0, $s0, $zero
/* ADBBC 800F77FC 00608021 */  addu       $s0, $v1, $zero
/* ADBC0 800F7800 00A01821 */  addu       $v1, $a1, $zero
/* ADBC4 800F7804 00402821 */  addu       $a1, $v0, $zero
.Lrace_800F7808:
/* ADBC8 800F7808 C4A20000 */  lwc1       $f2, 0x0($a1)
/* ADBCC 800F780C C6200130 */  lwc1       $f0, 0x130($s1)
/* ADBD0 800F7810 4600103C */  c.lt.s     $f2, $f0
/* ADBD4 800F7814 00000000 */  nop
/* ADBD8 800F7818 45000062 */  bc1f       .Lrace_800F79A4
/* ADBDC 800F781C 02202021 */   addu      $a0, $s1, $zero
/* ADBE0 800F7820 44800000 */  mtc1       $zero, $f0
/* ADBE4 800F7824 88A80014 */  lwl        $t0, 0x14($a1)
/* ADBE8 800F7828 98A80017 */  lwr        $t0, 0x17($a1)
/* ADBEC 800F782C ABA80024 */  swl        $t0, 0x24($sp)
/* ADBF0 800F7830 BBA80027 */  swr        $t0, 0x27($sp)
/* ADBF4 800F7834 8BA80024 */  lwl        $t0, 0x24($sp)
/* ADBF8 800F7838 9BA80027 */  lwr        $t0, 0x27($sp)
/* ADBFC 800F783C ABA8003C */  swl        $t0, 0x3C($sp)
/* ADC00 800F7840 BBA8003F */  swr        $t0, 0x3F($sp)
/* ADC04 800F7844 E7A00018 */  swc1       $f0, 0x18($sp)
/* ADC08 800F7848 E7A00030 */  swc1       $f0, 0x30($sp)
/* ADC0C 800F784C C6200130 */  lwc1       $f0, 0x130($s1)
/* ADC10 800F7850 E7A00010 */  swc1       $f0, 0x10($sp)
/* ADC14 800F7854 E7A00028 */  swc1       $f0, 0x28($sp)
/* ADC18 800F7858 C6040000 */  lwc1       $f4, 0x0($s0)
/* ADC1C 800F785C C6260130 */  lwc1       $f6, 0x130($s1)
/* ADC20 800F7860 46062181 */  sub.s      $f6, $f4, $f6
/* ADC24 800F7864 C4A20000 */  lwc1       $f2, 0x0($a1)
/* ADC28 800F7868 C4A00004 */  lwc1       $f0, 0x4($a1)
/* ADC2C 800F786C 46022101 */  sub.s      $f4, $f4, $f2
/* ADC30 800F7870 C6020004 */  lwc1       $f2, 0x4($s0)
/* ADC34 800F7874 46020001 */  sub.s      $f0, $f0, $f2
/* ADC38 800F7878 46043183 */  div.s      $f6, $f6, $f4
/* ADC3C 800F787C 46003002 */  mul.s      $f0, $f6, $f0
/* ADC40 800F7880 46001080 */  add.s      $f2, $f2, $f0
/* ADC44 800F7884 E7A20014 */  swc1       $f2, 0x14($sp)
/* ADC48 800F7888 C4A0000C */  lwc1       $f0, 0xC($a1)
/* ADC4C 800F788C C602000C */  lwc1       $f2, 0xC($s0)
/* ADC50 800F7890 46020001 */  sub.s      $f0, $f0, $f2
/* ADC54 800F7894 46003002 */  mul.s      $f0, $f6, $f0
/* ADC58 800F7898 46001080 */  add.s      $f2, $f2, $f0
/* ADC5C 800F789C E7A2001C */  swc1       $f2, 0x1C($sp)
/* ADC60 800F78A0 C4A00010 */  lwc1       $f0, 0x10($a1)
/* ADC64 800F78A4 C6020010 */  lwc1       $f2, 0x10($s0)
/* ADC68 800F78A8 46020001 */  sub.s      $f0, $f0, $f2
/* ADC6C 800F78AC 46003002 */  mul.s      $f0, $f6, $f0
/* ADC70 800F78B0 46001080 */  add.s      $f2, $f2, $f0
/* ADC74 800F78B4 E7A20020 */  swc1       $f2, 0x20($sp)
/* ADC78 800F78B8 C4620000 */  lwc1       $f2, 0x0($v1)
/* ADC7C 800F78BC C6200130 */  lwc1       $f0, 0x130($s1)
/* ADC80 800F78C0 4600103C */  c.lt.s     $f2, $f0
/* ADC84 800F78C4 00000000 */  nop
/* ADC88 800F78C8 45020018 */  bc1fl      .Lrace_800F792C
/* ADC8C 800F78CC 46001181 */   sub.s     $f6, $f2, $f0
/* ADC90 800F78D0 C6040000 */  lwc1       $f4, 0x0($s0)
/* ADC94 800F78D4 46002181 */  sub.s      $f6, $f4, $f0
/* ADC98 800F78D8 C4600004 */  lwc1       $f0, 0x4($v1)
/* ADC9C 800F78DC 46022101 */  sub.s      $f4, $f4, $f2
/* ADCA0 800F78E0 C6020004 */  lwc1       $f2, 0x4($s0)
/* ADCA4 800F78E4 46020001 */  sub.s      $f0, $f0, $f2
/* ADCA8 800F78E8 46043183 */  div.s      $f6, $f6, $f4
/* ADCAC 800F78EC 46003002 */  mul.s      $f0, $f6, $f0
/* ADCB0 800F78F0 46001080 */  add.s      $f2, $f2, $f0
/* ADCB4 800F78F4 E7A2002C */  swc1       $f2, 0x2C($sp)
/* ADCB8 800F78F8 C460000C */  lwc1       $f0, 0xC($v1)
/* ADCBC 800F78FC C602000C */  lwc1       $f2, 0xC($s0)
/* ADCC0 800F7900 46020001 */  sub.s      $f0, $f0, $f2
/* ADCC4 800F7904 46003002 */  mul.s      $f0, $f6, $f0
/* ADCC8 800F7908 46001080 */  add.s      $f2, $f2, $f0
/* ADCCC 800F790C E7A20034 */  swc1       $f2, 0x34($sp)
/* ADCD0 800F7910 C4600010 */  lwc1       $f0, 0x10($v1)
/* ADCD4 800F7914 C6020010 */  lwc1       $f2, 0x10($s0)
/* ADCD8 800F7918 46020001 */  sub.s      $f0, $f0, $f2
/* ADCDC 800F791C 46003002 */  mul.s      $f0, $f6, $f0
/* ADCE0 800F7920 46001080 */  add.s      $f2, $f2, $f0
/* ADCE4 800F7924 0803DE66 */  j          .Lrace_800F7998
/* ADCE8 800F7928 E7A20038 */   swc1      $f2, 0x38($sp)
.Lrace_800F792C:
/* ADCEC 800F792C C4A40000 */  lwc1       $f4, 0x0($a1)
/* ADCF0 800F7930 C4A00004 */  lwc1       $f0, 0x4($a1)
/* ADCF4 800F7934 46041101 */  sub.s      $f4, $f2, $f4
/* ADCF8 800F7938 C4620004 */  lwc1       $f2, 0x4($v1)
/* ADCFC 800F793C 46020001 */  sub.s      $f0, $f0, $f2
/* ADD00 800F7940 46043183 */  div.s      $f6, $f6, $f4
/* ADD04 800F7944 46003002 */  mul.s      $f0, $f6, $f0
/* ADD08 800F7948 46001080 */  add.s      $f2, $f2, $f0
/* ADD0C 800F794C E7A2002C */  swc1       $f2, 0x2C($sp)
/* ADD10 800F7950 C4A0000C */  lwc1       $f0, 0xC($a1)
/* ADD14 800F7954 C462000C */  lwc1       $f2, 0xC($v1)
/* ADD18 800F7958 46020001 */  sub.s      $f0, $f0, $f2
/* ADD1C 800F795C 46003002 */  mul.s      $f0, $f6, $f0
/* ADD20 800F7960 46001080 */  add.s      $f2, $f2, $f0
/* ADD24 800F7964 E7A20034 */  swc1       $f2, 0x34($sp)
/* ADD28 800F7968 C4A00010 */  lwc1       $f0, 0x10($a1)
/* ADD2C 800F796C C4620010 */  lwc1       $f2, 0x10($v1)
/* ADD30 800F7970 46020001 */  sub.s      $f0, $f0, $f2
/* ADD34 800F7974 46003002 */  mul.s      $f0, $f6, $f0
/* ADD38 800F7978 02202021 */  addu       $a0, $s1, $zero
/* ADD3C 800F797C 27A60028 */  addiu      $a2, $sp, 0x28
/* ADD40 800F7980 46001080 */  add.s      $f2, $f2, $f0
/* ADD44 800F7984 00603821 */  addu       $a3, $v1, $zero
/* ADD48 800F7988 02002821 */  addu       $a1, $s0, $zero
/* ADD4C 800F798C 0C03DE71 */  jal        func_race_800F79C4
/* ADD50 800F7990 E7A20038 */   swc1      $f2, 0x38($sp)
/* ADD54 800F7994 02202021 */  addu       $a0, $s1, $zero
.Lrace_800F7998:
/* ADD58 800F7998 27A50010 */  addiu      $a1, $sp, 0x10
/* ADD5C 800F799C 0803DE6A */  j          .Lrace_800F79A8
/* ADD60 800F79A0 27A60028 */   addiu     $a2, $sp, 0x28
.Lrace_800F79A4:
/* ADD64 800F79A4 00603021 */  addu       $a2, $v1, $zero
.Lrace_800F79A8:
/* ADD68 800F79A8 0C03DE71 */  jal        func_race_800F79C4
/* ADD6C 800F79AC 02003821 */   addu      $a3, $s0, $zero
.Lrace_800F79B0:
/* ADD70 800F79B0 8FBF0048 */  lw         $ra, 0x48($sp)
/* ADD74 800F79B4 8FB10044 */  lw         $s1, 0x44($sp)
/* ADD78 800F79B8 8FB00040 */  lw         $s0, 0x40($sp)
/* ADD7C 800F79BC 03E00008 */  jr         $ra
/* ADD80 800F79C0 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800F79C4
/* ADD84 800F79C4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* ADD88 800F79C8 AFB10044 */  sw         $s1, 0x44($sp)
/* ADD8C 800F79CC 00808821 */  addu       $s1, $a0, $zero
/* ADD90 800F79D0 00C01821 */  addu       $v1, $a2, $zero
/* ADD94 800F79D4 AFBF0048 */  sw         $ra, 0x48($sp)
/* ADD98 800F79D8 AFB00040 */  sw         $s0, 0x40($sp)
/* ADD9C 800F79DC C4600000 */  lwc1       $f0, 0x0($v1)
/* ADDA0 800F79E0 C6220138 */  lwc1       $f2, 0x138($s1)
/* ADDA4 800F79E4 4600103C */  c.lt.s     $f2, $f0
/* ADDA8 800F79E8 00000000 */  nop
/* ADDAC 800F79EC 45000011 */  bc1f       .Lrace_800F7A34
/* ADDB0 800F79F0 00E08021 */   addu      $s0, $a3, $zero
/* ADDB4 800F79F4 C4A00000 */  lwc1       $f0, 0x0($a1)
/* ADDB8 800F79F8 4600103C */  c.lt.s     $f2, $f0
/* ADDBC 800F79FC 00000000 */  nop
/* ADDC0 800F7A00 45000008 */  bc1f       .Lrace_800F7A24
/* ADDC4 800F7A04 00A01021 */   addu      $v0, $a1, $zero
/* ADDC8 800F7A08 C6000000 */  lwc1       $f0, 0x0($s0)
/* ADDCC 800F7A0C 4600103C */  c.lt.s     $f2, $f0
/* ADDD0 800F7A10 00000000 */  nop
/* ADDD4 800F7A14 4500000F */  bc1f       .Lrace_800F7A54
/* ADDD8 800F7A18 00000000 */   nop
/* ADDDC 800F7A1C 0803DEFF */  j          .Lrace_800F7BFC
/* ADDE0 800F7A20 00000000 */   nop
.Lrace_800F7A24:
/* ADDE4 800F7A24 00602821 */  addu       $a1, $v1, $zero
/* ADDE8 800F7A28 02001821 */  addu       $v1, $s0, $zero
/* ADDEC 800F7A2C 0803DE95 */  j          .Lrace_800F7A54
/* ADDF0 800F7A30 00408021 */   addu      $s0, $v0, $zero
.Lrace_800F7A34:
/* ADDF4 800F7A34 C6000000 */  lwc1       $f0, 0x0($s0)
/* ADDF8 800F7A38 4600103C */  c.lt.s     $f2, $f0
/* ADDFC 800F7A3C 00000000 */  nop
/* ADE00 800F7A40 45000004 */  bc1f       .Lrace_800F7A54
/* ADE04 800F7A44 02001021 */   addu      $v0, $s0, $zero
/* ADE08 800F7A48 00608021 */  addu       $s0, $v1, $zero
/* ADE0C 800F7A4C 00A01821 */  addu       $v1, $a1, $zero
/* ADE10 800F7A50 00402821 */  addu       $a1, $v0, $zero
.Lrace_800F7A54:
/* ADE14 800F7A54 C4A20000 */  lwc1       $f2, 0x0($a1)
/* ADE18 800F7A58 C6200138 */  lwc1       $f0, 0x138($s1)
/* ADE1C 800F7A5C 4602003C */  c.lt.s     $f0, $f2
/* ADE20 800F7A60 00000000 */  nop
/* ADE24 800F7A64 45000062 */  bc1f       .Lrace_800F7BF0
/* ADE28 800F7A68 02202021 */   addu      $a0, $s1, $zero
/* ADE2C 800F7A6C 44800000 */  mtc1       $zero, $f0
/* ADE30 800F7A70 88A80014 */  lwl        $t0, 0x14($a1)
/* ADE34 800F7A74 98A80017 */  lwr        $t0, 0x17($a1)
/* ADE38 800F7A78 ABA80024 */  swl        $t0, 0x24($sp)
/* ADE3C 800F7A7C BBA80027 */  swr        $t0, 0x27($sp)
/* ADE40 800F7A80 8BA80024 */  lwl        $t0, 0x24($sp)
/* ADE44 800F7A84 9BA80027 */  lwr        $t0, 0x27($sp)
/* ADE48 800F7A88 ABA8003C */  swl        $t0, 0x3C($sp)
/* ADE4C 800F7A8C BBA8003F */  swr        $t0, 0x3F($sp)
/* ADE50 800F7A90 E7A00018 */  swc1       $f0, 0x18($sp)
/* ADE54 800F7A94 E7A00030 */  swc1       $f0, 0x30($sp)
/* ADE58 800F7A98 C6200138 */  lwc1       $f0, 0x138($s1)
/* ADE5C 800F7A9C E7A00010 */  swc1       $f0, 0x10($sp)
/* ADE60 800F7AA0 E7A00028 */  swc1       $f0, 0x28($sp)
/* ADE64 800F7AA4 C6040000 */  lwc1       $f4, 0x0($s0)
/* ADE68 800F7AA8 C6260138 */  lwc1       $f6, 0x138($s1)
/* ADE6C 800F7AAC 46062181 */  sub.s      $f6, $f4, $f6
/* ADE70 800F7AB0 C4A20000 */  lwc1       $f2, 0x0($a1)
/* ADE74 800F7AB4 C4A00004 */  lwc1       $f0, 0x4($a1)
/* ADE78 800F7AB8 46022101 */  sub.s      $f4, $f4, $f2
/* ADE7C 800F7ABC C6020004 */  lwc1       $f2, 0x4($s0)
/* ADE80 800F7AC0 46020001 */  sub.s      $f0, $f0, $f2
/* ADE84 800F7AC4 46043183 */  div.s      $f6, $f6, $f4
/* ADE88 800F7AC8 46003002 */  mul.s      $f0, $f6, $f0
/* ADE8C 800F7ACC 46001080 */  add.s      $f2, $f2, $f0
/* ADE90 800F7AD0 E7A20014 */  swc1       $f2, 0x14($sp)
/* ADE94 800F7AD4 C4A0000C */  lwc1       $f0, 0xC($a1)
/* ADE98 800F7AD8 C602000C */  lwc1       $f2, 0xC($s0)
/* ADE9C 800F7ADC 46020001 */  sub.s      $f0, $f0, $f2
/* ADEA0 800F7AE0 46003002 */  mul.s      $f0, $f6, $f0
/* ADEA4 800F7AE4 46001080 */  add.s      $f2, $f2, $f0
/* ADEA8 800F7AE8 E7A2001C */  swc1       $f2, 0x1C($sp)
/* ADEAC 800F7AEC C4A00010 */  lwc1       $f0, 0x10($a1)
/* ADEB0 800F7AF0 C6020010 */  lwc1       $f2, 0x10($s0)
/* ADEB4 800F7AF4 46020001 */  sub.s      $f0, $f0, $f2
/* ADEB8 800F7AF8 46003002 */  mul.s      $f0, $f6, $f0
/* ADEBC 800F7AFC 46001080 */  add.s      $f2, $f2, $f0
/* ADEC0 800F7B00 E7A20020 */  swc1       $f2, 0x20($sp)
/* ADEC4 800F7B04 C4620000 */  lwc1       $f2, 0x0($v1)
/* ADEC8 800F7B08 C6200138 */  lwc1       $f0, 0x138($s1)
/* ADECC 800F7B0C 4602003C */  c.lt.s     $f0, $f2
/* ADED0 800F7B10 00000000 */  nop
/* ADED4 800F7B14 45020018 */  bc1fl      .Lrace_800F7B78
/* ADED8 800F7B18 46001181 */   sub.s     $f6, $f2, $f0
/* ADEDC 800F7B1C C6040000 */  lwc1       $f4, 0x0($s0)
/* ADEE0 800F7B20 46002181 */  sub.s      $f6, $f4, $f0
/* ADEE4 800F7B24 C4600004 */  lwc1       $f0, 0x4($v1)
/* ADEE8 800F7B28 46022101 */  sub.s      $f4, $f4, $f2
/* ADEEC 800F7B2C C6020004 */  lwc1       $f2, 0x4($s0)
/* ADEF0 800F7B30 46020001 */  sub.s      $f0, $f0, $f2
/* ADEF4 800F7B34 46043183 */  div.s      $f6, $f6, $f4
/* ADEF8 800F7B38 46003002 */  mul.s      $f0, $f6, $f0
/* ADEFC 800F7B3C 46001080 */  add.s      $f2, $f2, $f0
/* ADF00 800F7B40 E7A2002C */  swc1       $f2, 0x2C($sp)
/* ADF04 800F7B44 C460000C */  lwc1       $f0, 0xC($v1)
/* ADF08 800F7B48 C602000C */  lwc1       $f2, 0xC($s0)
/* ADF0C 800F7B4C 46020001 */  sub.s      $f0, $f0, $f2
/* ADF10 800F7B50 46003002 */  mul.s      $f0, $f6, $f0
/* ADF14 800F7B54 46001080 */  add.s      $f2, $f2, $f0
/* ADF18 800F7B58 E7A20034 */  swc1       $f2, 0x34($sp)
/* ADF1C 800F7B5C C4600010 */  lwc1       $f0, 0x10($v1)
/* ADF20 800F7B60 C6020010 */  lwc1       $f2, 0x10($s0)
/* ADF24 800F7B64 46020001 */  sub.s      $f0, $f0, $f2
/* ADF28 800F7B68 46003002 */  mul.s      $f0, $f6, $f0
/* ADF2C 800F7B6C 46001080 */  add.s      $f2, $f2, $f0
/* ADF30 800F7B70 0803DEF9 */  j          .Lrace_800F7BE4
/* ADF34 800F7B74 E7A20038 */   swc1      $f2, 0x38($sp)
.Lrace_800F7B78:
/* ADF38 800F7B78 C4A40000 */  lwc1       $f4, 0x0($a1)
/* ADF3C 800F7B7C C4A00004 */  lwc1       $f0, 0x4($a1)
/* ADF40 800F7B80 46041101 */  sub.s      $f4, $f2, $f4
/* ADF44 800F7B84 C4620004 */  lwc1       $f2, 0x4($v1)
/* ADF48 800F7B88 46020001 */  sub.s      $f0, $f0, $f2
/* ADF4C 800F7B8C 46043183 */  div.s      $f6, $f6, $f4
/* ADF50 800F7B90 46003002 */  mul.s      $f0, $f6, $f0
/* ADF54 800F7B94 46001080 */  add.s      $f2, $f2, $f0
/* ADF58 800F7B98 E7A2002C */  swc1       $f2, 0x2C($sp)
/* ADF5C 800F7B9C C4A0000C */  lwc1       $f0, 0xC($a1)
/* ADF60 800F7BA0 C462000C */  lwc1       $f2, 0xC($v1)
/* ADF64 800F7BA4 46020001 */  sub.s      $f0, $f0, $f2
/* ADF68 800F7BA8 46003002 */  mul.s      $f0, $f6, $f0
/* ADF6C 800F7BAC 46001080 */  add.s      $f2, $f2, $f0
/* ADF70 800F7BB0 E7A20034 */  swc1       $f2, 0x34($sp)
/* ADF74 800F7BB4 C4A00010 */  lwc1       $f0, 0x10($a1)
/* ADF78 800F7BB8 C4620010 */  lwc1       $f2, 0x10($v1)
/* ADF7C 800F7BBC 46020001 */  sub.s      $f0, $f0, $f2
/* ADF80 800F7BC0 46003002 */  mul.s      $f0, $f6, $f0
/* ADF84 800F7BC4 02202021 */  addu       $a0, $s1, $zero
/* ADF88 800F7BC8 27A60028 */  addiu      $a2, $sp, 0x28
/* ADF8C 800F7BCC 46001080 */  add.s      $f2, $f2, $f0
/* ADF90 800F7BD0 00603821 */  addu       $a3, $v1, $zero
/* ADF94 800F7BD4 02002821 */  addu       $a1, $s0, $zero
/* ADF98 800F7BD8 0C03DF04 */  jal        func_race_800F7C10
/* ADF9C 800F7BDC E7A20038 */   swc1      $f2, 0x38($sp)
/* ADFA0 800F7BE0 02202021 */  addu       $a0, $s1, $zero
.Lrace_800F7BE4:
/* ADFA4 800F7BE4 27A50010 */  addiu      $a1, $sp, 0x10
/* ADFA8 800F7BE8 0803DEFD */  j          .Lrace_800F7BF4
/* ADFAC 800F7BEC 27A60028 */   addiu     $a2, $sp, 0x28
.Lrace_800F7BF0:
/* ADFB0 800F7BF0 00603021 */  addu       $a2, $v1, $zero
.Lrace_800F7BF4:
/* ADFB4 800F7BF4 0C03DF04 */  jal        func_race_800F7C10
/* ADFB8 800F7BF8 02003821 */   addu      $a3, $s0, $zero
.Lrace_800F7BFC:
/* ADFBC 800F7BFC 8FBF0048 */  lw         $ra, 0x48($sp)
/* ADFC0 800F7C00 8FB10044 */  lw         $s1, 0x44($sp)
/* ADFC4 800F7C04 8FB00040 */  lw         $s0, 0x40($sp)
/* ADFC8 800F7C08 03E00008 */  jr         $ra
/* ADFCC 800F7C0C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800F7C10
/* ADFD0 800F7C10 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* ADFD4 800F7C14 AFB1004C */  sw         $s1, 0x4C($sp)
/* ADFD8 800F7C18 00808821 */  addu       $s1, $a0, $zero
/* ADFDC 800F7C1C 00C04821 */  addu       $t1, $a2, $zero
/* ADFE0 800F7C20 AFBF0050 */  sw         $ra, 0x50($sp)
/* ADFE4 800F7C24 AFB00048 */  sw         $s0, 0x48($sp)
/* ADFE8 800F7C28 C5200004 */  lwc1       $f0, 0x4($t1)
/* ADFEC 800F7C2C C6220134 */  lwc1       $f2, 0x134($s1)
/* ADFF0 800F7C30 4600103C */  c.lt.s     $f2, $f0
/* ADFF4 800F7C34 00000000 */  nop
/* ADFF8 800F7C38 45000011 */  bc1f       .Lrace_800F7C80
/* ADFFC 800F7C3C 00E08021 */   addu      $s0, $a3, $zero
/* AE000 800F7C40 C4A00004 */  lwc1       $f0, 0x4($a1)
/* AE004 800F7C44 4600103C */  c.lt.s     $f2, $f0
/* AE008 800F7C48 00000000 */  nop
/* AE00C 800F7C4C 45000008 */  bc1f       .Lrace_800F7C70
/* AE010 800F7C50 00A01021 */   addu      $v0, $a1, $zero
/* AE014 800F7C54 C6000004 */  lwc1       $f0, 0x4($s0)
/* AE018 800F7C58 4600103C */  c.lt.s     $f2, $f0
/* AE01C 800F7C5C 00000000 */  nop
/* AE020 800F7C60 4500000F */  bc1f       .Lrace_800F7CA0
/* AE024 800F7C64 00000000 */   nop
/* AE028 800F7C68 0803DFA0 */  j          .Lrace_800F7E80
/* AE02C 800F7C6C 00000000 */   nop
.Lrace_800F7C70:
/* AE030 800F7C70 01202821 */  addu       $a1, $t1, $zero
/* AE034 800F7C74 02004821 */  addu       $t1, $s0, $zero
/* AE038 800F7C78 0803DF28 */  j          .Lrace_800F7CA0
/* AE03C 800F7C7C 00408021 */   addu      $s0, $v0, $zero
.Lrace_800F7C80:
/* AE040 800F7C80 C6000004 */  lwc1       $f0, 0x4($s0)
/* AE044 800F7C84 4600103C */  c.lt.s     $f2, $f0
/* AE048 800F7C88 00000000 */  nop
/* AE04C 800F7C8C 45000004 */  bc1f       .Lrace_800F7CA0
/* AE050 800F7C90 02001021 */   addu      $v0, $s0, $zero
/* AE054 800F7C94 01208021 */  addu       $s0, $t1, $zero
/* AE058 800F7C98 00A04821 */  addu       $t1, $a1, $zero
/* AE05C 800F7C9C 00402821 */  addu       $a1, $v0, $zero
.Lrace_800F7CA0:
/* AE060 800F7CA0 C4A20004 */  lwc1       $f2, 0x4($a1)
/* AE064 800F7CA4 C6200134 */  lwc1       $f0, 0x134($s1)
/* AE068 800F7CA8 4602003C */  c.lt.s     $f0, $f2
/* AE06C 800F7CAC 00000000 */  nop
/* AE070 800F7CB0 45000069 */  bc1f       .Lrace_800F7E58
/* AE074 800F7CB4 01203021 */   addu      $a2, $t1, $zero
/* AE078 800F7CB8 44800000 */  mtc1       $zero, $f0
/* AE07C 800F7CBC 88AA0014 */  lwl        $t2, 0x14($a1)
/* AE080 800F7CC0 98AA0017 */  lwr        $t2, 0x17($a1)
/* AE084 800F7CC4 ABAA002C */  swl        $t2, 0x2C($sp)
/* AE088 800F7CC8 BBAA002F */  swr        $t2, 0x2F($sp)
/* AE08C 800F7CCC 8BAA002C */  lwl        $t2, 0x2C($sp)
/* AE090 800F7CD0 9BAA002F */  lwr        $t2, 0x2F($sp)
/* AE094 800F7CD4 ABAA0044 */  swl        $t2, 0x44($sp)
/* AE098 800F7CD8 BBAA0047 */  swr        $t2, 0x47($sp)
/* AE09C 800F7CDC E7A00020 */  swc1       $f0, 0x20($sp)
/* AE0A0 800F7CE0 E7A00038 */  swc1       $f0, 0x38($sp)
/* AE0A4 800F7CE4 C6200134 */  lwc1       $f0, 0x134($s1)
/* AE0A8 800F7CE8 E7A0001C */  swc1       $f0, 0x1C($sp)
/* AE0AC 800F7CEC E7A00034 */  swc1       $f0, 0x34($sp)
/* AE0B0 800F7CF0 C6040004 */  lwc1       $f4, 0x4($s0)
/* AE0B4 800F7CF4 C6260134 */  lwc1       $f6, 0x134($s1)
/* AE0B8 800F7CF8 46062181 */  sub.s      $f6, $f4, $f6
/* AE0BC 800F7CFC C4A20004 */  lwc1       $f2, 0x4($a1)
/* AE0C0 800F7D00 C4A00000 */  lwc1       $f0, 0x0($a1)
/* AE0C4 800F7D04 46022101 */  sub.s      $f4, $f4, $f2
/* AE0C8 800F7D08 C6020000 */  lwc1       $f2, 0x0($s0)
/* AE0CC 800F7D0C 46020001 */  sub.s      $f0, $f0, $f2
/* AE0D0 800F7D10 46043183 */  div.s      $f6, $f6, $f4
/* AE0D4 800F7D14 46003002 */  mul.s      $f0, $f6, $f0
/* AE0D8 800F7D18 46001080 */  add.s      $f2, $f2, $f0
/* AE0DC 800F7D1C E7A20018 */  swc1       $f2, 0x18($sp)
/* AE0E0 800F7D20 C4A0000C */  lwc1       $f0, 0xC($a1)
/* AE0E4 800F7D24 C602000C */  lwc1       $f2, 0xC($s0)
/* AE0E8 800F7D28 46020001 */  sub.s      $f0, $f0, $f2
/* AE0EC 800F7D2C 46003002 */  mul.s      $f0, $f6, $f0
/* AE0F0 800F7D30 46001080 */  add.s      $f2, $f2, $f0
/* AE0F4 800F7D34 E7A20024 */  swc1       $f2, 0x24($sp)
/* AE0F8 800F7D38 C4A00010 */  lwc1       $f0, 0x10($a1)
/* AE0FC 800F7D3C C6020010 */  lwc1       $f2, 0x10($s0)
/* AE100 800F7D40 46020001 */  sub.s      $f0, $f0, $f2
/* AE104 800F7D44 46003002 */  mul.s      $f0, $f6, $f0
/* AE108 800F7D48 46001080 */  add.s      $f2, $f2, $f0
/* AE10C 800F7D4C E7A20028 */  swc1       $f2, 0x28($sp)
/* AE110 800F7D50 C5220004 */  lwc1       $f2, 0x4($t1)
/* AE114 800F7D54 C6200134 */  lwc1       $f0, 0x134($s1)
/* AE118 800F7D58 4602003C */  c.lt.s     $f0, $f2
/* AE11C 800F7D5C 00000000 */  nop
/* AE120 800F7D60 45020018 */  bc1fl      .Lrace_800F7DC4
/* AE124 800F7D64 46001181 */   sub.s     $f6, $f2, $f0
/* AE128 800F7D68 C6040004 */  lwc1       $f4, 0x4($s0)
/* AE12C 800F7D6C 46002181 */  sub.s      $f6, $f4, $f0
/* AE130 800F7D70 C5200000 */  lwc1       $f0, 0x0($t1)
/* AE134 800F7D74 46022101 */  sub.s      $f4, $f4, $f2
/* AE138 800F7D78 C6020000 */  lwc1       $f2, 0x0($s0)
/* AE13C 800F7D7C 46020001 */  sub.s      $f0, $f0, $f2
/* AE140 800F7D80 46043183 */  div.s      $f6, $f6, $f4
/* AE144 800F7D84 46003002 */  mul.s      $f0, $f6, $f0
/* AE148 800F7D88 46001080 */  add.s      $f2, $f2, $f0
/* AE14C 800F7D8C E7A20030 */  swc1       $f2, 0x30($sp)
/* AE150 800F7D90 C520000C */  lwc1       $f0, 0xC($t1)
/* AE154 800F7D94 C602000C */  lwc1       $f2, 0xC($s0)
/* AE158 800F7D98 46020001 */  sub.s      $f0, $f0, $f2
/* AE15C 800F7D9C 46003002 */  mul.s      $f0, $f6, $f0
/* AE160 800F7DA0 46001080 */  add.s      $f2, $f2, $f0
/* AE164 800F7DA4 E7A2003C */  swc1       $f2, 0x3C($sp)
/* AE168 800F7DA8 C5200010 */  lwc1       $f0, 0x10($t1)
/* AE16C 800F7DAC C6020010 */  lwc1       $f2, 0x10($s0)
/* AE170 800F7DB0 46020001 */  sub.s      $f0, $f0, $f2
/* AE174 800F7DB4 46003002 */  mul.s      $f0, $f6, $f0
/* AE178 800F7DB8 46001080 */  add.s      $f2, $f2, $f0
/* AE17C 800F7DBC 0803DF92 */  j          .Lrace_800F7E48
/* AE180 800F7DC0 E7A20040 */   swc1      $f2, 0x40($sp)
.Lrace_800F7DC4:
/* AE184 800F7DC4 C4A40004 */  lwc1       $f4, 0x4($a1)
/* AE188 800F7DC8 C4A00000 */  lwc1       $f0, 0x0($a1)
/* AE18C 800F7DCC 46041101 */  sub.s      $f4, $f2, $f4
/* AE190 800F7DD0 C5220000 */  lwc1       $f2, 0x0($t1)
/* AE194 800F7DD4 46020001 */  sub.s      $f0, $f0, $f2
/* AE198 800F7DD8 46043183 */  div.s      $f6, $f6, $f4
/* AE19C 800F7DDC 46003002 */  mul.s      $f0, $f6, $f0
/* AE1A0 800F7DE0 46001080 */  add.s      $f2, $f2, $f0
/* AE1A4 800F7DE4 E7A20030 */  swc1       $f2, 0x30($sp)
/* AE1A8 800F7DE8 C4A0000C */  lwc1       $f0, 0xC($a1)
/* AE1AC 800F7DEC C522000C */  lwc1       $f2, 0xC($t1)
/* AE1B0 800F7DF0 46020001 */  sub.s      $f0, $f0, $f2
/* AE1B4 800F7DF4 46003002 */  mul.s      $f0, $f6, $f0
/* AE1B8 800F7DF8 46001080 */  add.s      $f2, $f2, $f0
/* AE1BC 800F7DFC E7A2003C */  swc1       $f2, 0x3C($sp)
/* AE1C0 800F7E00 C4A00010 */  lwc1       $f0, 0x10($a1)
/* AE1C4 800F7E04 C5220010 */  lwc1       $f2, 0x10($t1)
/* AE1C8 800F7E08 46020001 */  sub.s      $f0, $f0, $f2
/* AE1CC 800F7E0C 46003002 */  mul.s      $f0, $f6, $f0
/* AE1D0 800F7E10 46001080 */  add.s      $f2, $f2, $f0
/* AE1D4 800F7E14 27A60030 */  addiu      $a2, $sp, 0x30
/* AE1D8 800F7E18 E7A20040 */  swc1       $f2, 0x40($sp)
/* AE1DC 800F7E1C 8E280000 */  lw         $t0, 0x0($s1)
/* AE1E0 800F7E20 01203821 */  addu       $a3, $t1, $zero
/* AE1E4 800F7E24 8D03012C */  lw         $v1, 0x12C($t0)
/* AE1E8 800F7E28 8E220118 */  lw         $v0, 0x118($s1)
/* AE1EC 800F7E2C 84640110 */  lh         $a0, 0x110($v1)
/* AE1F0 800F7E30 02002821 */  addu       $a1, $s0, $zero
/* AE1F4 800F7E34 AFA20010 */  sw         $v0, 0x10($sp)
/* AE1F8 800F7E38 AFA00014 */  sw         $zero, 0x14($sp)
/* AE1FC 800F7E3C 8C620114 */  lw         $v0, 0x114($v1)
/* AE200 800F7E40 0040F809 */  jalr       $v0
/* AE204 800F7E44 01042021 */   addu      $a0, $t0, $a0
.Lrace_800F7E48:
/* AE208 800F7E48 27A50018 */  addiu      $a1, $sp, 0x18
/* AE20C 800F7E4C 8E280000 */  lw         $t0, 0x0($s1)
/* AE210 800F7E50 0803DF97 */  j          .Lrace_800F7E5C
/* AE214 800F7E54 27A60030 */   addiu     $a2, $sp, 0x30
.Lrace_800F7E58:
/* AE218 800F7E58 8E280000 */  lw         $t0, 0x0($s1)
.Lrace_800F7E5C:
/* AE21C 800F7E5C 8D03012C */  lw         $v1, 0x12C($t0)
/* AE220 800F7E60 8E220118 */  lw         $v0, 0x118($s1)
/* AE224 800F7E64 84640110 */  lh         $a0, 0x110($v1)
/* AE228 800F7E68 02003821 */  addu       $a3, $s0, $zero
/* AE22C 800F7E6C AFA20010 */  sw         $v0, 0x10($sp)
/* AE230 800F7E70 AFA00014 */  sw         $zero, 0x14($sp)
/* AE234 800F7E74 8C620114 */  lw         $v0, 0x114($v1)
/* AE238 800F7E78 0040F809 */  jalr       $v0
/* AE23C 800F7E7C 01042021 */   addu      $a0, $t0, $a0
.Lrace_800F7E80:
/* AE240 800F7E80 8FBF0050 */  lw         $ra, 0x50($sp)
/* AE244 800F7E84 8FB1004C */  lw         $s1, 0x4C($sp)
/* AE248 800F7E88 8FB00048 */  lw         $s0, 0x48($sp)
/* AE24C 800F7E8C 03E00008 */  jr         $ra
/* AE250 800F7E90 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_800F7E94
/* AE254 800F7E94 00C03821 */  addu       $a3, $a2, $zero
/* AE258 800F7E98 3C029521 */  lui        $v0, (0x95217CB1 >> 16)
/* AE25C 800F7E9C 34427CB1 */  ori        $v0, $v0, (0x95217CB1 & 0xFFFF)
/* AE260 800F7EA0 00E20019 */  multu      $a3, $v0
/* AE264 800F7EA4 00A04821 */  addu       $t1, $a1, $zero
/* AE268 800F7EA8 3C040009 */  lui        $a0, (0x927BF >> 16)
/* AE26C 800F7EAC 348427BF */  ori        $a0, $a0, (0x927BF & 0xFFFF)
/* AE270 800F7EB0 00006010 */  mfhi       $t4
/* AE274 800F7EB4 000C1D42 */  srl        $v1, $t4, 21
/* AE278 800F7EB8 00031140 */  sll        $v0, $v1, 5
/* AE27C 800F7EBC 00431023 */  subu       $v0, $v0, $v1
/* AE280 800F7EC0 00021080 */  sll        $v0, $v0, 2
/* AE284 800F7EC4 00431021 */  addu       $v0, $v0, $v1
/* AE288 800F7EC8 00021900 */  sll        $v1, $v0, 4
/* AE28C 800F7ECC 00621823 */  subu       $v1, $v1, $v0
/* AE290 800F7ED0 00031100 */  sll        $v0, $v1, 4
/* AE294 800F7ED4 00431023 */  subu       $v0, $v0, $v1
/* AE298 800F7ED8 000211C0 */  sll        $v0, $v0, 7
/* AE29C 800F7EDC 00E23823 */  subu       $a3, $a3, $v0
/* AE2A0 800F7EE0 0087202B */  sltu       $a0, $a0, $a3
/* AE2A4 800F7EE4 10800006 */  beqz       $a0, .Lrace_800F7F00
/* AE2A8 800F7EE8 A1200008 */   sb        $zero, 0x8($t1)
/* AE2AC 800F7EEC 240B0007 */  addiu      $t3, $zero, 0x7
/* AE2B0 800F7EF0 2402003A */  addiu      $v0, $zero, 0x3A
/* AE2B4 800F7EF4 A1220005 */  sb         $v0, 0x5($t1)
/* AE2B8 800F7EF8 0803DFC5 */  j          .Lrace_800F7F14
/* AE2BC 800F7EFC A1220002 */   sb        $v0, 0x2($t1)
.Lrace_800F7F00:
/* AE2C0 800F7F00 240B0006 */  addiu      $t3, $zero, 0x6
/* AE2C4 800F7F04 2402003A */  addiu      $v0, $zero, 0x3A
/* AE2C8 800F7F08 A1220004 */  sb         $v0, 0x4($t1)
/* AE2CC 800F7F0C A1220001 */  sb         $v0, 0x1($t1)
/* AE2D0 800F7F10 A1200007 */  sb         $zero, 0x7($t1)
.Lrace_800F7F14:
/* AE2D4 800F7F14 3C0ACCCC */  lui        $t2, (0xCCCCCCCD >> 16)
/* AE2D8 800F7F18 354ACCCD */  ori        $t2, $t2, (0xCCCCCCCD & 0xFFFF)
/* AE2DC 800F7F1C 00EA0019 */  multu      $a3, $t2
/* AE2E0 800F7F20 00006010 */  mfhi       $t4
/* AE2E4 800F7F24 000C38C2 */  srl        $a3, $t4, 3
/* AE2E8 800F7F28 00000000 */  nop
/* AE2EC 800F7F2C 00EA0019 */  multu      $a3, $t2
/* AE2F0 800F7F30 00006010 */  mfhi       $t4
/* AE2F4 800F7F34 000C10C2 */  srl        $v0, $t4, 3
/* AE2F8 800F7F38 00022880 */  sll        $a1, $v0, 2
/* AE2FC 800F7F3C 00A22821 */  addu       $a1, $a1, $v0
/* AE300 800F7F40 00052840 */  sll        $a1, $a1, 1
/* AE304 800F7F44 00E52823 */  subu       $a1, $a3, $a1
/* AE308 800F7F48 00403821 */  addu       $a3, $v0, $zero
/* AE30C 800F7F4C 00EA0019 */  multu      $a3, $t2
/* AE310 800F7F50 00006010 */  mfhi       $t4
/* AE314 800F7F54 000C10C2 */  srl        $v0, $t4, 3
/* AE318 800F7F58 00022080 */  sll        $a0, $v0, 2
/* AE31C 800F7F5C 00822021 */  addu       $a0, $a0, $v0
/* AE320 800F7F60 00042040 */  sll        $a0, $a0, 1
/* AE324 800F7F64 00E42023 */  subu       $a0, $a3, $a0
/* AE328 800F7F68 00403821 */  addu       $a3, $v0, $zero
/* AE32C 800F7F6C 3C028888 */  lui        $v0, (0x88888889 >> 16)
/* AE330 800F7F70 34428889 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* AE334 800F7F74 00E20019 */  multu      $a3, $v0
/* AE338 800F7F78 3C066666 */  lui        $a2, (0x66666667 >> 16)
/* AE33C 800F7F7C 34C66667 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* AE340 800F7F80 012B4821 */  addu       $t1, $t1, $t3
/* AE344 800F7F84 00006010 */  mfhi       $t4
/* AE348 800F7F88 000C4142 */  srl        $t0, $t4, 5
/* AE34C 800F7F8C 01001821 */  addu       $v1, $t0, $zero
/* AE350 800F7F90 00031100 */  sll        $v0, $v1, 4
/* AE354 800F7F94 00431023 */  subu       $v0, $v0, $v1
/* AE358 800F7F98 00021080 */  sll        $v0, $v0, 2
/* AE35C 800F7F9C 00E24023 */  subu       $t0, $a3, $v0
/* AE360 800F7FA0 00603821 */  addu       $a3, $v1, $zero
/* AE364 800F7FA4 00EA0019 */  multu      $a3, $t2
/* AE368 800F7FA8 24A50030 */  addiu      $a1, $a1, 0x30
/* AE36C 800F7FAC A1250000 */  sb         $a1, 0x0($t1)
/* AE370 800F7FB0 24840030 */  addiu      $a0, $a0, 0x30
/* AE374 800F7FB4 A124FFFF */  sb         $a0, -0x1($t1)
/* AE378 800F7FB8 00006010 */  mfhi       $t4
/* AE37C 800F7FBC 000C10C2 */  srl        $v0, $t4, 3
/* AE380 800F7FC0 00021880 */  sll        $v1, $v0, 2
/* AE384 800F7FC4 00621821 */  addu       $v1, $v1, $v0
/* AE388 800F7FC8 00031840 */  sll        $v1, $v1, 1
/* AE38C 800F7FCC 00E31823 */  subu       $v1, $a3, $v1
/* AE390 800F7FD0 01060018 */  mult       $t0, $a2
/* AE394 800F7FD4 00403821 */  addu       $a3, $v0, $zero
/* AE398 800F7FD8 000817C3 */  sra        $v0, $t0, 31
/* AE39C 800F7FDC 24630030 */  addiu      $v1, $v1, 0x30
/* AE3A0 800F7FE0 A123FFFA */  sb         $v1, -0x6($t1)
/* AE3A4 800F7FE4 00006010 */  mfhi       $t4
/* AE3A8 800F7FE8 000C2083 */  sra        $a0, $t4, 2
/* AE3AC 800F7FEC 00822023 */  subu       $a0, $a0, $v0
/* AE3B0 800F7FF0 00041080 */  sll        $v0, $a0, 2
/* AE3B4 800F7FF4 00441021 */  addu       $v0, $v0, $a0
/* AE3B8 800F7FF8 00021040 */  sll        $v0, $v0, 1
/* AE3BC 800F7FFC 00860018 */  mult       $a0, $a2
/* AE3C0 800F8000 01021023 */  subu       $v0, $t0, $v0
/* AE3C4 800F8004 24420030 */  addiu      $v0, $v0, 0x30
/* AE3C8 800F8008 A122FFFD */  sb         $v0, -0x3($t1)
/* AE3CC 800F800C 000417C3 */  sra        $v0, $a0, 31
/* AE3D0 800F8010 00006010 */  mfhi       $t4
/* AE3D4 800F8014 000C1883 */  sra        $v1, $t4, 2
/* AE3D8 800F8018 00621823 */  subu       $v1, $v1, $v0
/* AE3DC 800F801C 00031080 */  sll        $v0, $v1, 2
/* AE3E0 800F8020 00431021 */  addu       $v0, $v0, $v1
/* AE3E4 800F8024 00021040 */  sll        $v0, $v0, 1
/* AE3E8 800F8028 00822023 */  subu       $a0, $a0, $v0
/* AE3EC 800F802C 24840030 */  addiu      $a0, $a0, 0x30
/* AE3F0 800F8030 10E0000A */  beqz       $a3, .Lrace_800F805C
/* AE3F4 800F8034 A124FFFC */   sb        $a0, -0x4($t1)
/* AE3F8 800F8038 00EA0019 */  multu      $a3, $t2
/* AE3FC 800F803C 00006010 */  mfhi       $t4
/* AE400 800F8040 000C18C2 */  srl        $v1, $t4, 3
/* AE404 800F8044 00031080 */  sll        $v0, $v1, 2
/* AE408 800F8048 00431021 */  addu       $v0, $v0, $v1
/* AE40C 800F804C 00021040 */  sll        $v0, $v0, 1
/* AE410 800F8050 00E21023 */  subu       $v0, $a3, $v0
/* AE414 800F8054 24420030 */  addiu      $v0, $v0, 0x30
/* AE418 800F8058 A122FFF9 */  sb         $v0, -0x7($t1)
.Lrace_800F805C:
/* AE41C 800F805C 03E00008 */  jr         $ra
/* AE420 800F8060 00000000 */   nop

glabel func_race_800F8064
/* AE424 800F8064 44873000 */  mtc1       $a3, $f6
/* AE428 800F8068 3C01800D */  lui        $at, %hi(D_race_800CCED4)
/* AE42C 800F806C C430CED4 */  lwc1       $f16, %lo(D_race_800CCED4)($at)
/* AE430 800F8070 27BDFF20 */  addiu      $sp, $sp, -0xE0
/* AE434 800F8074 F7BA00C8 */  sdc1       $f26, 0xC8($sp)
/* AE438 800F8078 46103682 */  mul.s      $f26, $f6, $f16
/* AE43C 800F807C C7A200F0 */  lwc1       $f2, 0xF0($sp)
/* AE440 800F8080 46101402 */  mul.s      $f16, $f2, $f16
/* AE444 800F8084 3C01800D */  lui        $at, %hi(D_race_800CCED8)
/* AE448 800F8088 C424CED8 */  lwc1       $f4, %lo(D_race_800CCED8)($at)
/* AE44C 800F808C 46043382 */  mul.s      $f14, $f6, $f4
/* AE450 800F8090 3C01800D */  lui        $at, %hi(D_race_800CCEDC)
/* AE454 800F8094 C428CEDC */  lwc1       $f8, %lo(D_race_800CCEDC)($at)
/* AE458 800F8098 46081482 */  mul.s      $f18, $f2, $f8
/* AE45C 800F809C 00000000 */  nop
/* AE460 800F80A0 46041102 */  mul.s      $f4, $f2, $f4
/* AE464 800F80A4 00000000 */  nop
/* AE468 800F80A8 46083202 */  mul.s      $f8, $f6, $f8
/* AE46C 800F80AC 3C01800D */  lui        $at, %hi(D_race_800CCEE0)
/* AE470 800F80B0 C42CCEE0 */  lwc1       $f12, %lo(D_race_800CCEE0)($at)
/* AE474 800F80B4 F7B800C0 */  sdc1       $f24, 0xC0($sp)
/* AE478 800F80B8 460C3602 */  mul.s      $f24, $f6, $f12
/* AE47C 800F80BC 00000000 */  nop
/* AE480 800F80C0 460C1302 */  mul.s      $f12, $f2, $f12
/* AE484 800F80C4 3C01800D */  lui        $at, %hi(D_race_800CCEE4)
/* AE488 800F80C8 C420CEE4 */  lwc1       $f0, %lo(D_race_800CCEE4)($at)
/* AE48C 800F80CC 46003282 */  mul.s      $f10, $f6, $f0
/* AE490 800F80D0 00000000 */  nop
/* AE494 800F80D4 46001002 */  mul.s      $f0, $f2, $f0
/* AE498 800F80D8 46021080 */  add.s      $f2, $f2, $f2
/* AE49C 800F80DC AFB100A4 */  sw         $s1, 0xA4($sp)
/* AE4A0 800F80E0 46063180 */  add.s      $f6, $f6, $f6
/* AE4A4 800F80E4 00808821 */  addu       $s1, $a0, $zero
/* AE4A8 800F80E8 F7B400B0 */  sdc1       $f20, 0xB0($sp)
/* AE4AC 800F80EC 46007387 */  neg.s      $f14, $f14
/* AE4B0 800F80F0 46127500 */  add.s      $f20, $f14, $f18
/* AE4B4 800F80F4 00002021 */  addu       $a0, $zero, $zero
/* AE4B8 800F80F8 F7B600B8 */  sdc1       $f22, 0xB8($sp)
/* AE4BC 800F80FC 46002107 */  neg.s      $f4, $f4
/* AE4C0 800F8100 46082581 */  sub.s      $f22, $f4, $f8
/* AE4C4 800F8104 240700FF */  addiu      $a3, $zero, 0xFF
/* AE4C8 800F8108 F7BE00D8 */  sdc1       $f30, 0xD8($sp)
/* AE4CC 800F810C 46127381 */  sub.s      $f14, $f14, $f18
/* AE4D0 800F8110 4485F000 */  mtc1       $a1, $f30
/* AE4D4 800F8114 4680F7A0 */  cvt.s.w    $f30, $f30
/* AE4D8 800F8118 F7BC00D0 */  sdc1       $f28, 0xD0($sp)
/* AE4DC 800F811C 46082100 */  add.s      $f4, $f4, $f8
/* AE4E0 800F8120 4486E000 */  mtc1       $a2, $f28
/* AE4E4 800F8124 4680E720 */  cvt.s.w    $f28, $f28
/* AE4E8 800F8128 27A30010 */  addiu      $v1, $sp, 0x10
/* AE4EC 800F812C 46005287 */  neg.s      $f10, $f10
/* AE4F0 800F8130 46025480 */  add.s      $f18, $f10, $f2
/* AE4F4 800F8134 AFBF00A8 */  sw         $ra, 0xA8($sp)
/* AE4F8 800F8138 AFB000A0 */  sw         $s0, 0xA0($sp)
/* AE4FC 800F813C 46000007 */  neg.s      $f0, $f0
/* AE500 800F8140 46060201 */  sub.s      $f8, $f0, $f6
/* AE504 800F8144 E7BA0010 */  swc1       $f26, 0x10($sp)
/* AE508 800F8148 E7B00014 */  swc1       $f16, 0x14($sp)
/* AE50C 800F814C 46025281 */  sub.s      $f10, $f10, $f2
/* AE510 800F8150 E7B80058 */  swc1       $f24, 0x58($sp)
/* AE514 800F8154 E7AC005C */  swc1       $f12, 0x5C($sp)
/* AE518 800F8158 46060000 */  add.s      $f0, $f0, $f6
/* AE51C 800F815C E7B40028 */  swc1       $f20, 0x28($sp)
/* AE520 800F8160 E7B6002C */  swc1       $f22, 0x2C($sp)
/* AE524 800F8164 E7AE0040 */  swc1       $f14, 0x40($sp)
/* AE528 800F8168 E7A40044 */  swc1       $f4, 0x44($sp)
/* AE52C 800F816C E7B20070 */  swc1       $f18, 0x70($sp)
/* AE530 800F8170 E7A80074 */  swc1       $f8, 0x74($sp)
/* AE534 800F8174 E7AA0088 */  swc1       $f10, 0x88($sp)
/* AE538 800F8178 E7A0008C */  swc1       $f0, 0x8C($sp)
.Lrace_800F817C:
/* AE53C 800F817C A0600014 */  sb         $zero, 0x14($v1)
/* AE540 800F8180 A0600015 */  sb         $zero, 0x15($v1)
/* AE544 800F8184 A0600016 */  sb         $zero, 0x16($v1)
/* AE548 800F8188 A0670017 */  sb         $a3, 0x17($v1)
/* AE54C 800F818C AC600008 */  sw         $zero, 0x8($v1)
/* AE550 800F8190 AC60000C */  sw         $zero, 0xC($v1)
/* AE554 800F8194 AC600010 */  sw         $zero, 0x10($v1)
/* AE558 800F8198 C6200104 */  lwc1       $f0, 0x104($s1)
/* AE55C 800F819C C4620000 */  lwc1       $f2, 0x0($v1)
/* AE560 800F81A0 46020002 */  mul.s      $f0, $f0, $f2
/* AE564 800F81A4 4600F000 */  add.s      $f0, $f30, $f0
/* AE568 800F81A8 E4600000 */  swc1       $f0, 0x0($v1)
/* AE56C 800F81AC C6220114 */  lwc1       $f2, 0x114($s1)
/* AE570 800F81B0 C4600004 */  lwc1       $f0, 0x4($v1)
/* AE574 800F81B4 46001082 */  mul.s      $f2, $f2, $f0
/* AE578 800F81B8 4602E080 */  add.s      $f2, $f28, $f2
/* AE57C 800F81BC 24840001 */  addiu      $a0, $a0, 0x1
/* AE580 800F81C0 28820006 */  slti       $v0, $a0, 0x6
/* AE584 800F81C4 E4620004 */  swc1       $f2, 0x4($v1)
/* AE588 800F81C8 1440FFEC */  bnez       $v0, .Lrace_800F817C
/* AE58C 800F81CC 24630018 */   addiu     $v1, $v1, 0x18
/* AE590 800F81D0 02202021 */  addu       $a0, $s1, $zero
/* AE594 800F81D4 27A50028 */  addiu      $a1, $sp, 0x28
/* AE598 800F81D8 27A60010 */  addiu      $a2, $sp, 0x10
/* AE59C 800F81DC 240200FF */  addiu      $v0, $zero, 0xFF
/* AE5A0 800F81E0 A3A2006D */  sb         $v0, 0x6D($sp)
/* AE5A4 800F81E4 A3A20085 */  sb         $v0, 0x85($sp)
/* AE5A8 800F81E8 A3A2009D */  sb         $v0, 0x9D($sp)
/* AE5AC 800F81EC 8E300118 */  lw         $s0, 0x118($s1)
/* AE5B0 800F81F0 27A70040 */  addiu      $a3, $sp, 0x40
/* AE5B4 800F81F4 0C03DD4B */  jal        func_race_800F752C
/* AE5B8 800F81F8 AE200118 */   sw        $zero, 0x118($s1)
/* AE5BC 800F81FC 02202021 */  addu       $a0, $s1, $zero
/* AE5C0 800F8200 27A50070 */  addiu      $a1, $sp, 0x70
/* AE5C4 800F8204 27A60058 */  addiu      $a2, $sp, 0x58
/* AE5C8 800F8208 0C03DD4B */  jal        func_race_800F752C
/* AE5CC 800F820C 27A70088 */   addiu     $a3, $sp, 0x88
/* AE5D0 800F8210 AE300118 */  sw         $s0, 0x118($s1)
/* AE5D4 800F8214 8FBF00A8 */  lw         $ra, 0xA8($sp)
/* AE5D8 800F8218 8FB100A4 */  lw         $s1, 0xA4($sp)
/* AE5DC 800F821C 8FB000A0 */  lw         $s0, 0xA0($sp)
/* AE5E0 800F8220 D7BE00D8 */  ldc1       $f30, 0xD8($sp)
/* AE5E4 800F8224 D7BC00D0 */  ldc1       $f28, 0xD0($sp)
/* AE5E8 800F8228 D7BA00C8 */  ldc1       $f26, 0xC8($sp)
/* AE5EC 800F822C D7B800C0 */  ldc1       $f24, 0xC0($sp)
/* AE5F0 800F8230 D7B600B8 */  ldc1       $f22, 0xB8($sp)
/* AE5F4 800F8234 D7B400B0 */  ldc1       $f20, 0xB0($sp)
/* AE5F8 800F8238 03E00008 */  jr         $ra
/* AE5FC 800F823C 27BD00E0 */   addiu     $sp, $sp, 0xE0

glabel func_race_800F8240
/* AE600 800F8240 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* AE604 800F8244 AFB200C8 */  sw         $s2, 0xC8($sp)
/* AE608 800F8248 00809021 */  addu       $s2, $a0, $zero
/* AE60C 800F824C AFB100C4 */  sw         $s1, 0xC4($sp)
/* AE610 800F8250 00008821 */  addu       $s1, $zero, $zero
/* AE614 800F8254 240400FF */  addiu      $a0, $zero, 0xFF
/* AE618 800F8258 240500C8 */  addiu      $a1, $zero, 0xC8
/* AE61C 800F825C 27A30018 */  addiu      $v1, $sp, 0x18
/* AE620 800F8260 AFBF00E4 */  sw         $ra, 0xE4($sp)
/* AE624 800F8264 AFBE00E0 */  sw         $fp, 0xE0($sp)
/* AE628 800F8268 AFB700DC */  sw         $s7, 0xDC($sp)
/* AE62C 800F826C AFB600D8 */  sw         $s6, 0xD8($sp)
/* AE630 800F8270 AFB500D4 */  sw         $s5, 0xD4($sp)
/* AE634 800F8274 AFB400D0 */  sw         $s4, 0xD0($sp)
/* AE638 800F8278 AFB300CC */  sw         $s3, 0xCC($sp)
/* AE63C 800F827C AFB000C0 */  sw         $s0, 0xC0($sp)
/* AE640 800F8280 F7BA0100 */  sdc1       $f26, 0x100($sp)
/* AE644 800F8284 F7B800F8 */  sdc1       $f24, 0xF8($sp)
/* AE648 800F8288 F7B600F0 */  sdc1       $f22, 0xF0($sp)
/* AE64C 800F828C F7B400E8 */  sdc1       $f20, 0xE8($sp)
/* AE650 800F8290 C6400098 */  lwc1       $f0, 0x98($s2)
/* AE654 800F8294 46800020 */  cvt.s.w    $f0, $f0
/* AE658 800F8298 C6440104 */  lwc1       $f4, 0x104($s2)
/* AE65C 800F829C 3C01800D */  lui        $at, %hi(D_race_800CCEE8)
/* AE660 800F82A0 C426CEE8 */  lwc1       $f6, %lo(D_race_800CCEE8)($at)
/* AE664 800F82A4 C6420114 */  lwc1       $f2, 0x114($s2)
/* AE668 800F82A8 46062102 */  mul.s      $f4, $f4, $f6
/* AE66C 800F82AC E640012C */  swc1       $f0, 0x12C($s2)
/* AE670 800F82B0 C6400094 */  lwc1       $f0, 0x94($s2)
/* AE674 800F82B4 46800020 */  cvt.s.w    $f0, $f0
/* AE678 800F82B8 E6400130 */  swc1       $f0, 0x130($s2)
/* AE67C 800F82BC C64000A0 */  lwc1       $f0, 0xA0($s2)
/* AE680 800F82C0 46800020 */  cvt.s.w    $f0, $f0
/* AE684 800F82C4 46061082 */  mul.s      $f2, $f2, $f6
/* AE688 800F82C8 E6400134 */  swc1       $f0, 0x134($s2)
/* AE68C 800F82CC C640009C */  lwc1       $f0, 0x9C($s2)
/* AE690 800F82D0 46800020 */  cvt.s.w    $f0, $f0
/* AE694 800F82D4 E6400138 */  swc1       $f0, 0x138($s2)
/* AE698 800F82D8 4600228D */  trunc.w.s  $f10, $f4
/* AE69C 800F82DC 441E5000 */  mfc1       $fp, $f10
/* AE6A0 800F82E0 4600128D */  trunc.w.s  $f10, $f2
/* AE6A4 800F82E4 E7AA00B8 */  swc1       $f10, 0xB8($sp)
.Lrace_800F82E8:
/* AE6A8 800F82E8 A0640014 */  sb         $a0, 0x14($v1)
/* AE6AC 800F82EC A0640015 */  sb         $a0, 0x15($v1)
/* AE6B0 800F82F0 A0640016 */  sb         $a0, 0x16($v1)
/* AE6B4 800F82F4 A0650017 */  sb         $a1, 0x17($v1)
/* AE6B8 800F82F8 AC600008 */  sw         $zero, 0x8($v1)
/* AE6BC 800F82FC AC60000C */  sw         $zero, 0xC($v1)
/* AE6C0 800F8300 AC600010 */  sw         $zero, 0x10($v1)
/* AE6C4 800F8304 26310001 */  addiu      $s1, $s1, 0x1
/* AE6C8 800F8308 2A220004 */  slti       $v0, $s1, 0x4
/* AE6CC 800F830C 1440FFF6 */  bnez       $v0, .Lrace_800F82E8
/* AE6D0 800F8310 24630018 */   addiu     $v1, $v1, 0x18
/* AE6D4 800F8314 3C01800D */  lui        $at, %hi(D_race_800CCEEC)
/* AE6D8 800F8318 C422CEEC */  lwc1       $f2, %lo(D_race_800CCEEC)($at)
/* AE6DC 800F831C C6400100 */  lwc1       $f0, 0x100($s2)
/* AE6E0 800F8320 46800020 */  cvt.s.w    $f0, $f0
/* AE6E4 800F8324 46020102 */  mul.s      $f4, $f0, $f2
/* AE6E8 800F8328 C6400114 */  lwc1       $f0, 0x114($s2)
/* AE6EC 800F832C 46040002 */  mul.s      $f0, $f0, $f4
/* AE6F0 800F8330 C6420104 */  lwc1       $f2, 0x104($s2)
/* AE6F4 800F8334 46041082 */  mul.s      $f2, $f2, $f4
/* AE6F8 800F8338 8E4300A0 */  lw         $v1, 0xA0($s2)
/* AE6FC 800F833C 4600028D */  trunc.w.s  $f10, $f0
/* AE700 800F8340 44025000 */  mfc1       $v0, $f10
/* AE704 800F8344 0062A823 */  subu       $s5, $v1, $v0
/* AE708 800F8348 8E43009C */  lw         $v1, 0x9C($s2)
/* AE70C 800F834C 4600128D */  trunc.w.s  $f10, $f2
/* AE710 800F8350 44025000 */  mfc1       $v0, $f10
/* AE714 800F8354 0062A023 */  subu       $s4, $v1, $v0
/* AE718 800F8358 9242003B */  lbu        $v0, 0x3B($s2)
/* AE71C 800F835C C65A0128 */  lwc1       $f26, 0x128($s2)
/* AE720 800F8360 10400004 */  beqz       $v0, .Lrace_800F8374
/* AE724 800F8364 00000000 */   nop
/* AE728 800F8368 C640011C */  lwc1       $f0, 0x11C($s2)
/* AE72C 800F836C 0803E0DE */  j          .Lrace_800F8378
/* AE730 800F8370 46000607 */   neg.s     $f24, $f0
.Lrace_800F8374:
/* AE734 800F8374 C6580124 */  lwc1       $f24, 0x124($s2)
.Lrace_800F8378:
/* AE738 800F8378 C6420128 */  lwc1       $f2, 0x128($s2)
/* AE73C 800F837C C6400120 */  lwc1       $f0, 0x120($s2)
/* AE740 800F8380 C644011C */  lwc1       $f4, 0x11C($s2)
/* AE744 800F8384 46001181 */  sub.s      $f6, $f2, $f0
/* AE748 800F8388 C6400124 */  lwc1       $f0, 0x124($s2)
/* AE74C 800F838C 46002081 */  sub.s      $f2, $f4, $f0
/* AE750 800F8390 4606103C */  c.lt.s     $f2, $f6
/* AE754 800F8394 00000000 */  nop
/* AE758 800F8398 45000005 */  bc1f       .Lrace_800F83B0
/* AE75C 800F839C 00000000 */   nop
/* AE760 800F83A0 3C01800D */  lui        $at, %hi(D_race_800CCEF0)
/* AE764 800F83A4 C420CEF0 */  lwc1       $f0, %lo(D_race_800CCEF0)($at)
/* AE768 800F83A8 0803E0EF */  j          .Lrace_800F83BC
/* AE76C 800F83AC 46060503 */   div.s     $f20, $f0, $f6
.Lrace_800F83B0:
/* AE770 800F83B0 3C01800D */  lui        $at, %hi(D_race_800CCEF4)
/* AE774 800F83B4 C420CEF4 */  lwc1       $f0, %lo(D_race_800CCEF4)($at)
/* AE778 800F83B8 46020503 */  div.s      $f20, $f0, $f2
.Lrace_800F83BC:
/* AE77C 800F83BC C64000F4 */  lwc1       $f0, 0xF4($s2)
/* AE780 800F83C0 4600A502 */  mul.s      $f20, $f20, $f0
/* AE784 800F83C4 C6400104 */  lwc1       $f0, 0x104($s2)
/* AE788 800F83C8 46140582 */  mul.s      $f22, $f0, $f20
/* AE78C 800F83CC C6400114 */  lwc1       $f0, 0x114($s2)
/* AE790 800F83D0 8E420118 */  lw         $v0, 0x118($s2)
/* AE794 800F83D4 4600A502 */  mul.s      $f20, $f20, $f0
/* AE798 800F83D8 10400039 */  beqz       $v0, .Lrace_800F84C0
/* AE79C 800F83DC 00000000 */   nop
/* AE7A0 800F83E0 9242003B */  lbu        $v0, 0x3B($s2)
/* AE7A4 800F83E4 10400006 */  beqz       $v0, .Lrace_800F8400
/* AE7A8 800F83E8 00000000 */   nop
/* AE7AC 800F83EC 44800000 */  mtc1       $zero, $f0
/* AE7B0 800F83F0 3C01800D */  lui        $at, %hi(D_race_800CCEF8)
/* AE7B4 800F83F4 C422CEF8 */  lwc1       $f2, %lo(D_race_800CCEF8)($at)
/* AE7B8 800F83F8 0803E104 */  j          .Lrace_800F8410
/* AE7BC 800F83FC E7A00040 */   swc1      $f0, 0x40($sp)
.Lrace_800F8400:
/* AE7C0 800F8400 3C01800D */  lui        $at, %hi(D_race_800CCEFC)
/* AE7C4 800F8404 C420CEFC */  lwc1       $f0, %lo(D_race_800CCEFC)($at)
/* AE7C8 800F8408 44801000 */  mtc1       $zero, $f2
/* AE7CC 800F840C E7A00040 */  swc1       $f0, 0x40($sp)
.Lrace_800F8410:
/* AE7D0 800F8410 E7A00028 */  swc1       $f0, 0x28($sp)
/* AE7D4 800F8414 E7A20070 */  swc1       $f2, 0x70($sp)
/* AE7D8 800F8418 E7A20058 */  swc1       $f2, 0x58($sp)
/* AE7DC 800F841C 44942000 */  mtc1       $s4, $f4
/* AE7E0 800F8420 46802120 */  cvt.s.w    $f4, $f4
/* AE7E4 800F8424 44800000 */  mtc1       $zero, $f0
/* AE7E8 800F8428 3C01800D */  lui        $at, %hi(D_race_800CCF00)
/* AE7EC 800F842C C422CF00 */  lwc1       $f2, %lo(D_race_800CCF00)($at)
/* AE7F0 800F8430 44953000 */  mtc1       $s5, $f6
/* AE7F4 800F8434 468031A0 */  cvt.s.w    $f6, $f6
/* AE7F8 800F8438 E7A40048 */  swc1       $f4, 0x48($sp)
/* AE7FC 800F843C E7A40030 */  swc1       $f4, 0x30($sp)
/* AE800 800F8440 E7A60064 */  swc1       $f6, 0x64($sp)
/* AE804 800F8444 E7A6004C */  swc1       $f6, 0x4C($sp)
/* AE808 800F8448 E7A0006C */  swc1       $f0, 0x6C($sp)
/* AE80C 800F844C E7A00024 */  swc1       $f0, 0x24($sp)
/* AE810 800F8450 E7A20054 */  swc1       $f2, 0x54($sp)
/* AE814 800F8454 E7A2003C */  swc1       $f2, 0x3C($sp)
/* AE818 800F8458 C6400120 */  lwc1       $f0, 0x120($s2)
/* AE81C 800F845C C6420128 */  lwc1       $f2, 0x128($s2)
/* AE820 800F8460 46020001 */  sub.s      $f0, $f0, $f2
/* AE824 800F8464 46160002 */  mul.s      $f0, $f0, $f22
/* AE828 800F8468 46002100 */  add.s      $f4, $f4, $f0
/* AE82C 800F846C E7A40060 */  swc1       $f4, 0x60($sp)
/* AE830 800F8470 E7A40018 */  swc1       $f4, 0x18($sp)
/* AE834 800F8474 C6420124 */  lwc1       $f2, 0x124($s2)
/* AE838 800F8478 C640011C */  lwc1       $f0, 0x11C($s2)
/* AE83C 800F847C 46001081 */  sub.s      $f2, $f2, $f0
/* AE840 800F8480 46141082 */  mul.s      $f2, $f2, $f20
/* AE844 800F8484 02402021 */  addu       $a0, $s2, $zero
/* AE848 800F8488 27A50018 */  addiu      $a1, $sp, 0x18
/* AE84C 800F848C 27B10030 */  addiu      $s1, $sp, 0x30
/* AE850 800F8490 02203021 */  addu       $a2, $s1, $zero
/* AE854 800F8494 46023180 */  add.s      $f6, $f6, $f2
/* AE858 800F8498 27B00060 */  addiu      $s0, $sp, 0x60
/* AE85C 800F849C 02003821 */  addu       $a3, $s0, $zero
/* AE860 800F84A0 E7A60034 */  swc1       $f6, 0x34($sp)
/* AE864 800F84A4 0C03DD4B */  jal        func_race_800F752C
/* AE868 800F84A8 E7A6001C */   swc1      $f6, 0x1C($sp)
/* AE86C 800F84AC 02402021 */  addu       $a0, $s2, $zero
/* AE870 800F84B0 02002821 */  addu       $a1, $s0, $zero
/* AE874 800F84B4 02203021 */  addu       $a2, $s1, $zero
/* AE878 800F84B8 0C03DD4B */  jal        func_race_800F752C
/* AE87C 800F84BC 27A70048 */   addiu     $a3, $sp, 0x48
.Lrace_800F84C0:
/* AE880 800F84C0 8E430008 */  lw         $v1, 0x8($s2)
/* AE884 800F84C4 2405000A */  addiu      $a1, $zero, 0xA
/* AE888 800F84C8 8C620008 */  lw         $v0, 0x8($v1)
/* AE88C 800F84CC 24160008 */  addiu      $s6, $zero, 0x8
/* AE890 800F84D0 84440048 */  lh         $a0, 0x48($v0)
/* AE894 800F84D4 8C42004C */  lw         $v0, 0x4C($v0)
/* AE898 800F84D8 0040F809 */  jalr       $v0
/* AE89C 800F84DC 00642021 */   addu      $a0, $v1, $a0
/* AE8A0 800F84E0 0040B821 */  addu       $s7, $v0, $zero
/* AE8A4 800F84E4 001E1043 */  sra        $v0, $fp, 1
/* AE8A8 800F84E8 0282A023 */  subu       $s4, $s4, $v0
/* AE8AC 800F84EC 8FA900B8 */  lw         $t1, 0xB8($sp)
/* AE8B0 800F84F0 8E430028 */  lw         $v1, 0x28($s2)
/* AE8B4 800F84F4 00091043 */  sra        $v0, $t1, 1
/* AE8B8 800F84F8 8C710144 */  lw         $s1, 0x144($v1)
/* AE8BC 800F84FC 02A2A823 */  subu       $s5, $s5, $v0
/* AE8C0 800F8500 001110C0 */  sll        $v0, $s1, 3
/* AE8C4 800F8504 00511023 */  subu       $v0, $v0, $s1
/* AE8C8 800F8508 000210C0 */  sll        $v0, $v0, 3
/* AE8CC 800F850C 00511021 */  addu       $v0, $v0, $s1
/* AE8D0 800F8510 00021080 */  sll        $v0, $v0, 2
/* AE8D4 800F8514 00511023 */  subu       $v0, $v0, $s1
/* AE8D8 800F8518 00021080 */  sll        $v0, $v0, 2
/* AE8DC 800F851C 00511023 */  subu       $v0, $v0, $s1
/* AE8E0 800F8520 00029880 */  sll        $s3, $v0, 2
.Lrace_800F8524:
/* AE8E4 800F8524 1A200044 */  blez       $s1, .Lrace_800F8638
/* AE8E8 800F8528 2673F1D4 */   addiu     $s3, $s3, -0xE2C
/* AE8EC 800F852C 8E420028 */  lw         $v0, 0x28($s2)
/* AE8F0 800F8530 8C420140 */  lw         $v0, 0x140($v0)
/* AE8F4 800F8534 8E43002C */  lw         $v1, 0x2C($s2)
/* AE8F8 800F8538 00538021 */  addu       $s0, $v0, $s3
/* AE8FC 800F853C 1203FFF9 */  beq        $s0, $v1, .Lrace_800F8524
/* AE900 800F8540 2631FFFF */   addiu     $s1, $s1, -0x1
/* AE904 800F8544 8E03005C */  lw         $v1, 0x5C($s0)
/* AE908 800F8548 8C620024 */  lw         $v0, 0x24($v1)
/* AE90C 800F854C 27A50078 */  addiu      $a1, $sp, 0x78
/* AE910 800F8550 84440010 */  lh         $a0, 0x10($v0)
/* AE914 800F8554 8C420014 */  lw         $v0, 0x14($v0)
/* AE918 800F8558 0040F809 */  jalr       $v0
/* AE91C 800F855C 00642021 */   addu      $a0, $v1, $a0
/* AE920 800F8560 C7A0007C */  lwc1       $f0, 0x7C($sp)
/* AE924 800F8564 4600C001 */  sub.s      $f0, $f24, $f0
/* AE928 800F8568 4600A182 */  mul.s      $f6, $f20, $f0
/* AE92C 800F856C C7A00078 */  lwc1       $f0, 0x78($sp)
/* AE930 800F8570 461A0001 */  sub.s      $f0, $f0, $f26
/* AE934 800F8574 4600B202 */  mul.s      $f8, $f22, $f0
/* AE938 800F8578 4600328D */  trunc.w.s  $f10, $f6
/* AE93C 800F857C 44035000 */  mfc1       $v1, $f10
/* AE940 800F8580 02A31821 */  addu       $v1, $s5, $v1
/* AE944 800F8584 AFA3009C */  sw         $v1, 0x9C($sp)
/* AE948 800F8588 4600428D */  trunc.w.s  $f10, $f8
/* AE94C 800F858C 44025000 */  mfc1       $v0, $f10
/* AE950 800F8590 8FA900B8 */  lw         $t1, 0xB8($sp)
/* AE954 800F8594 02821021 */  addu       $v0, $s4, $v0
/* AE958 800F8598 AFA20098 */  sw         $v0, 0x98($sp)
/* AE95C 800F859C 005E1021 */  addu       $v0, $v0, $fp
/* AE960 800F85A0 AFA200A0 */  sw         $v0, 0xA0($sp)
/* AE964 800F85A4 00691821 */  addu       $v1, $v1, $t1
/* AE968 800F85A8 AFA300A4 */  sw         $v1, 0xA4($sp)
/* AE96C 800F85AC 8E020D08 */  lw         $v0, 0xD08($s0)
/* AE970 800F85B0 38420002 */  xori       $v0, $v0, 0x2
/* AE974 800F85B4 54400005 */  bnel       $v0, $zero, .Lrace_800F85CC
/* AE978 800F85B8 AFA00088 */   sw        $zero, 0x88($sp)
/* AE97C 800F85BC 24020001 */  addiu      $v0, $zero, 0x1
/* AE980 800F85C0 56220002 */  bnel       $s1, $v0, .Lrace_800F85CC
/* AE984 800F85C4 AFA00088 */   sw        $zero, 0x88($sp)
/* AE988 800F85C8 AFB60088 */  sw         $s6, 0x88($sp)
.Lrace_800F85CC:
/* AE98C 800F85CC 92420038 */  lbu        $v0, 0x38($s2)
/* AE990 800F85D0 2442FFFE */  addiu      $v0, $v0, -0x2
/* AE994 800F85D4 2C420002 */  sltiu      $v0, $v0, 0x2
/* AE998 800F85D8 50400002 */  beql       $v0, $zero, .Lrace_800F85E4
/* AE99C 800F85DC AFA0008C */   sw        $zero, 0x8C($sp)
/* AE9A0 800F85E0 AFB6008C */  sw         $s6, 0x8C($sp)
.Lrace_800F85E4:
/* AE9A4 800F85E4 02E02821 */  addu       $a1, $s7, $zero
/* AE9A8 800F85E8 8FA2008C */  lw         $v0, 0x8C($sp)
/* AE9AC 800F85EC 8FA30088 */  lw         $v1, 0x88($sp)
/* AE9B0 800F85F0 24420008 */  addiu      $v0, $v0, 0x8
/* AE9B4 800F85F4 24630008 */  addiu      $v1, $v1, 0x8
/* AE9B8 800F85F8 AFA20094 */  sw         $v0, 0x94($sp)
/* AE9BC 800F85FC AFA30090 */  sw         $v1, 0x90($sp)
/* AE9C0 800F8600 8E480000 */  lw         $t0, 0x0($s2)
/* AE9C4 800F8604 00003021 */  addu       $a2, $zero, $zero
/* AE9C8 800F8608 8D03012C */  lw         $v1, 0x12C($t0)
/* AE9CC 800F860C 27A70098 */  addiu      $a3, $sp, 0x98
/* AE9D0 800F8610 846400E8 */  lh         $a0, 0xE8($v1)
/* AE9D4 800F8614 27A20088 */  addiu      $v0, $sp, 0x88
/* AE9D8 800F8618 AFA20010 */  sw         $v0, 0x10($sp)
/* AE9DC 800F861C 26420094 */  addiu      $v0, $s2, 0x94
/* AE9E0 800F8620 AFA20014 */  sw         $v0, 0x14($sp)
/* AE9E4 800F8624 8C6200EC */  lw         $v0, 0xEC($v1)
/* AE9E8 800F8628 0040F809 */  jalr       $v0
/* AE9EC 800F862C 01042021 */   addu      $a0, $t0, $a0
/* AE9F0 800F8630 0803E149 */  j          .Lrace_800F8524
/* AE9F4 800F8634 00000000 */   nop
.Lrace_800F8638:
/* AE9F8 800F8638 8E430030 */  lw         $v1, 0x30($s2)
/* AE9FC 800F863C 10600008 */  beqz       $v1, .Lrace_800F8660
/* AEA00 800F8640 00002021 */   addu      $a0, $zero, $zero
/* AEA04 800F8644 906203B0 */  lbu        $v0, 0x3B0($v1)
/* AEA08 800F8648 30420008 */  andi       $v0, $v0, 0x8
/* AEA0C 800F864C 10400004 */  beqz       $v0, .Lrace_800F8660
/* AEA10 800F8650 00000000 */   nop
/* AEA14 800F8654 8C620008 */  lw         $v0, 0x8($v1)
/* AEA18 800F8658 8C4225BC */  lw         $v0, 0x25BC($v0)
/* AEA1C 800F865C 2C440001 */  sltiu      $a0, $v0, 0x1
.Lrace_800F8660:
/* AEA20 800F8660 10800036 */  beqz       $a0, .Lrace_800F873C
/* AEA24 800F8664 27A50078 */   addiu     $a1, $sp, 0x78
/* AEA28 800F8668 8E420030 */  lw         $v0, 0x30($s2)
/* AEA2C 800F866C 8C43010C */  lw         $v1, 0x10C($v0)
/* AEA30 800F8670 8C620024 */  lw         $v0, 0x24($v1)
/* AEA34 800F8674 84440010 */  lh         $a0, 0x10($v0)
/* AEA38 800F8678 8C420014 */  lw         $v0, 0x14($v0)
/* AEA3C 800F867C 0040F809 */  jalr       $v0
/* AEA40 800F8680 00642021 */   addu      $a0, $v1, $a0
/* AEA44 800F8684 C7A0007C */  lwc1       $f0, 0x7C($sp)
/* AEA48 800F8688 4600C001 */  sub.s      $f0, $f24, $f0
/* AEA4C 800F868C 4600A182 */  mul.s      $f6, $f20, $f0
/* AEA50 800F8690 C7A00078 */  lwc1       $f0, 0x78($sp)
/* AEA54 800F8694 461A0001 */  sub.s      $f0, $f0, $f26
/* AEA58 800F8698 24040008 */  addiu      $a0, $zero, 0x8
/* AEA5C 800F869C 4600B202 */  mul.s      $f8, $f22, $f0
/* AEA60 800F86A0 AFA40088 */  sw         $a0, 0x88($sp)
/* AEA64 800F86A4 4600328D */  trunc.w.s  $f10, $f6
/* AEA68 800F86A8 44035000 */  mfc1       $v1, $f10
/* AEA6C 800F86AC 02A31821 */  addu       $v1, $s5, $v1
/* AEA70 800F86B0 AFA3009C */  sw         $v1, 0x9C($sp)
/* AEA74 800F86B4 4600428D */  trunc.w.s  $f10, $f8
/* AEA78 800F86B8 44025000 */  mfc1       $v0, $f10
/* AEA7C 800F86BC 8FA900B8 */  lw         $t1, 0xB8($sp)
/* AEA80 800F86C0 02821021 */  addu       $v0, $s4, $v0
/* AEA84 800F86C4 AFA20098 */  sw         $v0, 0x98($sp)
/* AEA88 800F86C8 005E1021 */  addu       $v0, $v0, $fp
/* AEA8C 800F86CC AFA200A0 */  sw         $v0, 0xA0($sp)
/* AEA90 800F86D0 00691821 */  addu       $v1, $v1, $t1
/* AEA94 800F86D4 AFA300A4 */  sw         $v1, 0xA4($sp)
/* AEA98 800F86D8 92420038 */  lbu        $v0, 0x38($s2)
/* AEA9C 800F86DC 2442FFFE */  addiu      $v0, $v0, -0x2
/* AEAA0 800F86E0 2C420002 */  sltiu      $v0, $v0, 0x2
/* AEAA4 800F86E4 50400002 */  beql       $v0, $zero, .Lrace_800F86F0
/* AEAA8 800F86E8 AFA0008C */   sw        $zero, 0x8C($sp)
/* AEAAC 800F86EC AFA4008C */  sw         $a0, 0x8C($sp)
.Lrace_800F86F0:
/* AEAB0 800F86F0 02E02821 */  addu       $a1, $s7, $zero
/* AEAB4 800F86F4 8FA2008C */  lw         $v0, 0x8C($sp)
/* AEAB8 800F86F8 8FA30088 */  lw         $v1, 0x88($sp)
/* AEABC 800F86FC 24420008 */  addiu      $v0, $v0, 0x8
/* AEAC0 800F8700 24630008 */  addiu      $v1, $v1, 0x8
/* AEAC4 800F8704 AFA20094 */  sw         $v0, 0x94($sp)
/* AEAC8 800F8708 AFA30090 */  sw         $v1, 0x90($sp)
/* AEACC 800F870C 8E480000 */  lw         $t0, 0x0($s2)
/* AEAD0 800F8710 00003021 */  addu       $a2, $zero, $zero
/* AEAD4 800F8714 8D03012C */  lw         $v1, 0x12C($t0)
/* AEAD8 800F8718 27A70098 */  addiu      $a3, $sp, 0x98
/* AEADC 800F871C 846400E8 */  lh         $a0, 0xE8($v1)
/* AEAE0 800F8720 27A20088 */  addiu      $v0, $sp, 0x88
/* AEAE4 800F8724 AFA20010 */  sw         $v0, 0x10($sp)
/* AEAE8 800F8728 26420094 */  addiu      $v0, $s2, 0x94
/* AEAEC 800F872C AFA20014 */  sw         $v0, 0x14($sp)
/* AEAF0 800F8730 8C6200EC */  lw         $v0, 0xEC($v1)
/* AEAF4 800F8734 0040F809 */  jalr       $v0
/* AEAF8 800F8738 01042021 */   addu      $a0, $t0, $a0
.Lrace_800F873C:
/* AEAFC 800F873C 8E430030 */  lw         $v1, 0x30($s2)
/* AEB00 800F8740 10600008 */  beqz       $v1, .Lrace_800F8764
/* AEB04 800F8744 00002021 */   addu      $a0, $zero, $zero
/* AEB08 800F8748 906203B0 */  lbu        $v0, 0x3B0($v1)
/* AEB0C 800F874C 30420001 */  andi       $v0, $v0, 0x1
/* AEB10 800F8750 10400004 */  beqz       $v0, .Lrace_800F8764
/* AEB14 800F8754 00000000 */   nop
/* AEB18 800F8758 8C62000C */  lw         $v0, 0xC($v1)
/* AEB1C 800F875C 8C4225BC */  lw         $v0, 0x25BC($v0)
/* AEB20 800F8760 2C440001 */  sltiu      $a0, $v0, 0x1
.Lrace_800F8764:
/* AEB24 800F8764 10800033 */  beqz       $a0, .Lrace_800F8834
/* AEB28 800F8768 27A50078 */   addiu     $a1, $sp, 0x78
/* AEB2C 800F876C 8E440030 */  lw         $a0, 0x30($s2)
/* AEB30 800F8770 0C01595B */  jal        func_8005656C
/* AEB34 800F8774 24840018 */   addiu     $a0, $a0, 0x18
/* AEB38 800F8778 C7A0007C */  lwc1       $f0, 0x7C($sp)
/* AEB3C 800F877C 4600C001 */  sub.s      $f0, $f24, $f0
/* AEB40 800F8780 4600A182 */  mul.s      $f6, $f20, $f0
/* AEB44 800F8784 C7A00078 */  lwc1       $f0, 0x78($sp)
/* AEB48 800F8788 461A0001 */  sub.s      $f0, $f0, $f26
/* AEB4C 800F878C 4600B202 */  mul.s      $f8, $f22, $f0
/* AEB50 800F8790 AFA00088 */  sw         $zero, 0x88($sp)
/* AEB54 800F8794 4600328D */  trunc.w.s  $f10, $f6
/* AEB58 800F8798 44035000 */  mfc1       $v1, $f10
/* AEB5C 800F879C 02A31821 */  addu       $v1, $s5, $v1
/* AEB60 800F87A0 AFA3009C */  sw         $v1, 0x9C($sp)
/* AEB64 800F87A4 4600428D */  trunc.w.s  $f10, $f8
/* AEB68 800F87A8 44025000 */  mfc1       $v0, $f10
/* AEB6C 800F87AC 8FA900B8 */  lw         $t1, 0xB8($sp)
/* AEB70 800F87B0 02821021 */  addu       $v0, $s4, $v0
/* AEB74 800F87B4 AFA20098 */  sw         $v0, 0x98($sp)
/* AEB78 800F87B8 005E1021 */  addu       $v0, $v0, $fp
/* AEB7C 800F87BC AFA200A0 */  sw         $v0, 0xA0($sp)
/* AEB80 800F87C0 00691821 */  addu       $v1, $v1, $t1
/* AEB84 800F87C4 AFA300A4 */  sw         $v1, 0xA4($sp)
/* AEB88 800F87C8 92420038 */  lbu        $v0, 0x38($s2)
/* AEB8C 800F87CC 2442FFFE */  addiu      $v0, $v0, -0x2
/* AEB90 800F87D0 2C420002 */  sltiu      $v0, $v0, 0x2
/* AEB94 800F87D4 10400003 */  beqz       $v0, .Lrace_800F87E4
/* AEB98 800F87D8 24020008 */   addiu     $v0, $zero, 0x8
/* AEB9C 800F87DC 0803E1FA */  j          .Lrace_800F87E8
/* AEBA0 800F87E0 AFA2008C */   sw        $v0, 0x8C($sp)
.Lrace_800F87E4:
/* AEBA4 800F87E4 AFA0008C */  sw         $zero, 0x8C($sp)
.Lrace_800F87E8:
/* AEBA8 800F87E8 02E02821 */  addu       $a1, $s7, $zero
/* AEBAC 800F87EC 8FA2008C */  lw         $v0, 0x8C($sp)
/* AEBB0 800F87F0 8FA30088 */  lw         $v1, 0x88($sp)
/* AEBB4 800F87F4 24420008 */  addiu      $v0, $v0, 0x8
/* AEBB8 800F87F8 24630008 */  addiu      $v1, $v1, 0x8
/* AEBBC 800F87FC AFA20094 */  sw         $v0, 0x94($sp)
/* AEBC0 800F8800 AFA30090 */  sw         $v1, 0x90($sp)
/* AEBC4 800F8804 8E480000 */  lw         $t0, 0x0($s2)
/* AEBC8 800F8808 00003021 */  addu       $a2, $zero, $zero
/* AEBCC 800F880C 8D03012C */  lw         $v1, 0x12C($t0)
/* AEBD0 800F8810 27A70098 */  addiu      $a3, $sp, 0x98
/* AEBD4 800F8814 846400E8 */  lh         $a0, 0xE8($v1)
/* AEBD8 800F8818 27A20088 */  addiu      $v0, $sp, 0x88
/* AEBDC 800F881C AFA20010 */  sw         $v0, 0x10($sp)
/* AEBE0 800F8820 26420094 */  addiu      $v0, $s2, 0x94
/* AEBE4 800F8824 AFA20014 */  sw         $v0, 0x14($sp)
/* AEBE8 800F8828 8C6200EC */  lw         $v0, 0xEC($v1)
/* AEBEC 800F882C 0040F809 */  jalr       $v0
/* AEBF0 800F8830 01042021 */   addu      $a0, $t0, $a0
.Lrace_800F8834:
/* AEBF4 800F8834 8E42002C */  lw         $v0, 0x2C($s2)
/* AEBF8 800F8838 8C43005C */  lw         $v1, 0x5C($v0)
/* AEBFC 800F883C 8C620024 */  lw         $v0, 0x24($v1)
/* AEC00 800F8840 27A50078 */  addiu      $a1, $sp, 0x78
/* AEC04 800F8844 84440010 */  lh         $a0, 0x10($v0)
/* AEC08 800F8848 8C420014 */  lw         $v0, 0x14($v0)
/* AEC0C 800F884C 0040F809 */  jalr       $v0
/* AEC10 800F8850 00642021 */   addu      $a0, $v1, $a0
/* AEC14 800F8854 C7A00078 */  lwc1       $f0, 0x78($sp)
/* AEC18 800F8858 461A0001 */  sub.s      $f0, $f0, $f26
/* AEC1C 800F885C 4600B202 */  mul.s      $f8, $f22, $f0
/* AEC20 800F8860 C7A0007C */  lwc1       $f0, 0x7C($sp)
/* AEC24 800F8864 8E42002C */  lw         $v0, 0x2C($s2)
/* AEC28 800F8868 4600C001 */  sub.s      $f0, $f24, $f0
/* AEC2C 800F886C 8C42005C */  lw         $v0, 0x5C($v0)
/* AEC30 800F8870 4600A182 */  mul.s      $f6, $f20, $f0
/* AEC34 800F8874 C4440028 */  lwc1       $f4, 0x28($v0)
/* AEC38 800F8878 E7A400A8 */  swc1       $f4, 0xA8($sp)
/* AEC3C 800F887C C440002C */  lwc1       $f0, 0x2C($v0)
/* AEC40 800F8880 46042102 */  mul.s      $f4, $f4, $f4
/* AEC44 800F8884 E7A000AC */  swc1       $f0, 0xAC($sp)
/* AEC48 800F8888 C4420030 */  lwc1       $f2, 0x30($v0)
/* AEC4C 800F888C 001E1043 */  sra        $v0, $fp, 1
/* AEC50 800F8890 4600428D */  trunc.w.s  $f10, $f8
/* AEC54 800F8894 44035000 */  mfc1       $v1, $f10
/* AEC58 800F8898 00431021 */  addu       $v0, $v0, $v1
/* AEC5C 800F889C 46000002 */  mul.s      $f0, $f0, $f0
/* AEC60 800F88A0 8FA900B8 */  lw         $t1, 0xB8($sp)
/* AEC64 800F88A4 0282A021 */  addu       $s4, $s4, $v0
/* AEC68 800F88A8 00091043 */  sra        $v0, $t1, 1
/* AEC6C 800F88AC E7A200B0 */  swc1       $f2, 0xB0($sp)
/* AEC70 800F88B0 4600328D */  trunc.w.s  $f10, $f6
/* AEC74 800F88B4 44035000 */  mfc1       $v1, $f10
/* AEC78 800F88B8 46002300 */  add.s      $f12, $f4, $f0
/* AEC7C 800F88BC 00431021 */  addu       $v0, $v0, $v1
/* AEC80 800F88C0 46006184 */  sqrt.s     $f6, $f12
/* AEC84 800F88C4 46063032 */  c.eq.s     $f6, $f6
/* AEC88 800F88C8 00000000 */  nop
/* AEC8C 800F88CC 45010004 */  bc1t       .Lrace_800F88E0
/* AEC90 800F88D0 02A2A821 */   addu      $s5, $s5, $v0
/* AEC94 800F88D4 0C006BC8 */  jal        sqrt
/* AEC98 800F88D8 00000000 */   nop
/* AEC9C 800F88DC 46000186 */  mov.s      $f6, $f0
.Lrace_800F88E0:
/* AECA0 800F88E0 3C01800D */  lui        $at, %hi(D_race_800CCF04)
/* AECA4 800F88E4 C420CF04 */  lwc1       $f0, %lo(D_race_800CCF04)($at)
/* AECA8 800F88E8 C7A200A8 */  lwc1       $f2, 0xA8($sp)
/* AECAC 800F88EC 46060103 */  div.s      $f4, $f0, $f6
/* AECB0 800F88F0 46022082 */  mul.s      $f2, $f4, $f2
/* AECB4 800F88F4 C7A000AC */  lwc1       $f0, 0xAC($sp)
/* AECB8 800F88F8 46002002 */  mul.s      $f0, $f4, $f0
/* AECBC 800F88FC 02402021 */  addu       $a0, $s2, $zero
/* AECC0 800F8900 02802821 */  addu       $a1, $s4, $zero
/* AECC4 800F8904 E7A200A8 */  swc1       $f2, 0xA8($sp)
/* AECC8 800F8908 46000007 */  neg.s      $f0, $f0
/* AECCC 800F890C E7A000AC */  swc1       $f0, 0xAC($sp)
/* AECD0 800F8910 E7A00010 */  swc1       $f0, 0x10($sp)
/* AECD4 800F8914 44071000 */  mfc1       $a3, $f2
/* AECD8 800F8918 0C03E019 */  jal        func_race_800F8064
/* AECDC 800F891C 02A03021 */   addu      $a2, $s5, $zero
/* AECE0 800F8920 8FBF00E4 */  lw         $ra, 0xE4($sp)
/* AECE4 800F8924 8FBE00E0 */  lw         $fp, 0xE0($sp)
/* AECE8 800F8928 8FB700DC */  lw         $s7, 0xDC($sp)
/* AECEC 800F892C 8FB600D8 */  lw         $s6, 0xD8($sp)
/* AECF0 800F8930 8FB500D4 */  lw         $s5, 0xD4($sp)
/* AECF4 800F8934 8FB400D0 */  lw         $s4, 0xD0($sp)
/* AECF8 800F8938 8FB300CC */  lw         $s3, 0xCC($sp)
/* AECFC 800F893C 8FB200C8 */  lw         $s2, 0xC8($sp)
/* AED00 800F8940 8FB100C4 */  lw         $s1, 0xC4($sp)
/* AED04 800F8944 8FB000C0 */  lw         $s0, 0xC0($sp)
/* AED08 800F8948 D7BA0100 */  ldc1       $f26, 0x100($sp)
/* AED0C 800F894C D7B800F8 */  ldc1       $f24, 0xF8($sp)
/* AED10 800F8950 D7B600F0 */  ldc1       $f22, 0xF0($sp)
/* AED14 800F8954 D7B400E8 */  ldc1       $f20, 0xE8($sp)
/* AED18 800F8958 03E00008 */  jr         $ra
/* AED1C 800F895C 27BD0108 */   addiu     $sp, $sp, 0x108

glabel func_race_800F8960
/* AED20 800F8960 27BDFE68 */  addiu      $sp, $sp, -0x198
/* AED24 800F8964 AFB50164 */  sw         $s5, 0x164($sp)
/* AED28 800F8968 0080A821 */  addu       $s5, $a0, $zero
/* AED2C 800F896C AFBF0174 */  sw         $ra, 0x174($sp)
/* AED30 800F8970 AFBE0170 */  sw         $fp, 0x170($sp)
/* AED34 800F8974 AFB7016C */  sw         $s7, 0x16C($sp)
/* AED38 800F8978 AFB60168 */  sw         $s6, 0x168($sp)
/* AED3C 800F897C AFB40160 */  sw         $s4, 0x160($sp)
/* AED40 800F8980 AFB3015C */  sw         $s3, 0x15C($sp)
/* AED44 800F8984 AFB20158 */  sw         $s2, 0x158($sp)
/* AED48 800F8988 AFB10154 */  sw         $s1, 0x154($sp)
/* AED4C 800F898C AFB00150 */  sw         $s0, 0x150($sp)
/* AED50 800F8990 F7BA0190 */  sdc1       $f26, 0x190($sp)
/* AED54 800F8994 F7B80188 */  sdc1       $f24, 0x188($sp)
/* AED58 800F8998 F7B60180 */  sdc1       $f22, 0x180($sp)
/* AED5C 800F899C F7B40178 */  sdc1       $f20, 0x178($sp)
/* AED60 800F89A0 C6A20104 */  lwc1       $f2, 0x104($s5)
/* AED64 800F89A4 3C01800D */  lui        $at, %hi(D_race_800CCF08)
/* AED68 800F89A8 C424CF08 */  lwc1       $f4, %lo(D_race_800CCF08)($at)
/* AED6C 800F89AC 46041082 */  mul.s      $f2, $f2, $f4
/* AED70 800F89B0 C6A00114 */  lwc1       $f0, 0x114($s5)
/* AED74 800F89B4 00008021 */  addu       $s0, $zero, $zero
/* AED78 800F89B8 46040002 */  mul.s      $f0, $f0, $f4
/* AED7C 800F89BC 240400FF */  addiu      $a0, $zero, 0xFF
/* AED80 800F89C0 240500C8 */  addiu      $a1, $zero, 0xC8
/* AED84 800F89C4 27A30018 */  addiu      $v1, $sp, 0x18
/* AED88 800F89C8 4600168D */  trunc.w.s  $f26, $f2
/* AED8C 800F89CC 4417D000 */  mfc1       $s7, $f26
/* AED90 800F89D0 4600068D */  trunc.w.s  $f26, $f0
/* AED94 800F89D4 441ED000 */  mfc1       $fp, $f26
.Lrace_800F89D8:
/* AED98 800F89D8 A0640014 */  sb         $a0, 0x14($v1)
/* AED9C 800F89DC A0640015 */  sb         $a0, 0x15($v1)
/* AEDA0 800F89E0 A0640016 */  sb         $a0, 0x16($v1)
/* AEDA4 800F89E4 A0650017 */  sb         $a1, 0x17($v1)
/* AEDA8 800F89E8 AC600008 */  sw         $zero, 0x8($v1)
/* AEDAC 800F89EC AC60000C */  sw         $zero, 0xC($v1)
/* AEDB0 800F89F0 AC600010 */  sw         $zero, 0x10($v1)
/* AEDB4 800F89F4 26100001 */  addiu      $s0, $s0, 0x1
/* AEDB8 800F89F8 2A020008 */  slti       $v0, $s0, 0x8
/* AEDBC 800F89FC 1440FFF6 */  bnez       $v0, .Lrace_800F89D8
/* AEDC0 800F8A00 24630018 */   addiu     $v1, $v1, 0x18
/* AEDC4 800F8A04 3C01800D */  lui        $at, %hi(D_race_800CCF0C)
/* AEDC8 800F8A08 C422CF0C */  lwc1       $f2, %lo(D_race_800CCF0C)($at)
/* AEDCC 800F8A0C C6A00100 */  lwc1       $f0, 0x100($s5)
/* AEDD0 800F8A10 46800020 */  cvt.s.w    $f0, $f0
/* AEDD4 800F8A14 46020202 */  mul.s      $f8, $f0, $f2
/* AEDD8 800F8A18 C6A60114 */  lwc1       $f6, 0x114($s5)
/* AEDDC 800F8A1C 46083002 */  mul.s      $f0, $f6, $f8
/* AEDE0 800F8A20 8EA300A0 */  lw         $v1, 0xA0($s5)
/* AEDE4 800F8A24 C6A400F4 */  lwc1       $f4, 0xF4($s5)
/* AEDE8 800F8A28 4600068D */  trunc.w.s  $f26, $f0
/* AEDEC 800F8A2C 4402D000 */  mfc1       $v0, $f26
/* AEDF0 800F8A30 00621823 */  subu       $v1, $v1, $v0
/* AEDF4 800F8A34 AFA300F4 */  sw         $v1, 0xF4($sp)
/* AEDF8 800F8A38 C6A00104 */  lwc1       $f0, 0x104($s5)
/* AEDFC 800F8A3C 46080002 */  mul.s      $f0, $f0, $f8
/* AEE00 800F8A40 8EA4009C */  lw         $a0, 0x9C($s5)
/* AEE04 800F8A44 4600068D */  trunc.w.s  $f26, $f0
/* AEE08 800F8A48 4402D000 */  mfc1       $v0, $f26
/* AEE0C 800F8A4C 00822023 */  subu       $a0, $a0, $v0
/* AEE10 800F8A50 AFA400F0 */  sw         $a0, 0xF0($sp)
/* AEE14 800F8A54 C6A200F4 */  lwc1       $f2, 0xF4($s5)
/* AEE18 800F8A58 3C01800D */  lui        $at, %hi(D_race_800CCF10)
/* AEE1C 800F8A5C C420CF10 */  lwc1       $f0, %lo(D_race_800CCF10)($at)
/* AEE20 800F8A60 46001202 */  mul.s      $f8, $f2, $f0
/* AEE24 800F8A64 C6A00114 */  lwc1       $f0, 0x114($s5)
/* AEE28 800F8A68 46080002 */  mul.s      $f0, $f0, $f8
/* AEE2C 800F8A6C 4600068D */  trunc.w.s  $f26, $f0
/* AEE30 800F8A70 4402D000 */  mfc1       $v0, $f26
/* AEE34 800F8A74 00621823 */  subu       $v1, $v1, $v0
/* AEE38 800F8A78 AFA300EC */  sw         $v1, 0xEC($sp)
/* AEE3C 800F8A7C C6A00104 */  lwc1       $f0, 0x104($s5)
/* AEE40 800F8A80 46080002 */  mul.s      $f0, $f0, $f8
/* AEE44 800F8A84 2405000A */  addiu      $a1, $zero, 0xA
/* AEE48 800F8A88 4600068D */  trunc.w.s  $f26, $f0
/* AEE4C 800F8A8C 4402D000 */  mfc1       $v0, $f26
/* AEE50 800F8A90 00822023 */  subu       $a0, $a0, $v0
/* AEE54 800F8A94 44830000 */  mtc1       $v1, $f0
/* AEE58 800F8A98 46800020 */  cvt.s.w    $f0, $f0
/* AEE5C 800F8A9C AFA400E8 */  sw         $a0, 0xE8($sp)
/* AEE60 800F8AA0 E6A0012C */  swc1       $f0, 0x12C($s5)
/* AEE64 800F8AA4 C7A000E8 */  lwc1       $f0, 0xE8($sp)
/* AEE68 800F8AA8 46800020 */  cvt.s.w    $f0, $f0
/* AEE6C 800F8AAC E6A00130 */  swc1       $f0, 0x130($s5)
/* AEE70 800F8AB0 C7A000F4 */  lwc1       $f0, 0xF4($sp)
/* AEE74 800F8AB4 46800020 */  cvt.s.w    $f0, $f0
/* AEE78 800F8AB8 E6A00134 */  swc1       $f0, 0x134($s5)
/* AEE7C 800F8ABC C7A000F0 */  lwc1       $f0, 0xF0($sp)
/* AEE80 800F8AC0 46800020 */  cvt.s.w    $f0, $f0
/* AEE84 800F8AC4 E6A00138 */  swc1       $f0, 0x138($s5)
/* AEE88 800F8AC8 8FA200E8 */  lw         $v0, 0xE8($sp)
/* AEE8C 800F8ACC 8FA300F0 */  lw         $v1, 0xF0($sp)
/* AEE90 800F8AD0 8FA600EC */  lw         $a2, 0xEC($sp)
/* AEE94 800F8AD4 3C01800D */  lui        $at, %hi(D_race_800CCF14)
/* AEE98 800F8AD8 C420CF14 */  lwc1       $f0, %lo(D_race_800CCF14)($at)
/* AEE9C 800F8ADC 00431021 */  addu       $v0, $v0, $v1
/* AEEA0 800F8AE0 8FA300F4 */  lw         $v1, 0xF4($sp)
/* AEEA4 800F8AE4 0002A043 */  sra        $s4, $v0, 1
/* AEEA8 800F8AE8 00C33021 */  addu       $a2, $a2, $v1
/* AEEAC 800F8AEC 8EA30008 */  lw         $v1, 0x8($s5)
/* AEEB0 800F8AF0 46002102 */  mul.s      $f4, $f4, $f0
/* AEEB4 800F8AF4 8C620008 */  lw         $v0, 0x8($v1)
/* AEEB8 800F8AF8 00069843 */  sra        $s3, $a2, 1
/* AEEBC 800F8AFC 84440048 */  lh         $a0, 0x48($v0)
/* AEEC0 800F8B00 8C42004C */  lw         $v0, 0x4C($v0)
/* AEEC4 800F8B04 46043502 */  mul.s      $f20, $f6, $f4
/* AEEC8 800F8B08 0040F809 */  jalr       $v0
/* AEECC 800F8B0C 00642021 */   addu      $a0, $v1, $a0
/* AEED0 800F8B10 8EA3002C */  lw         $v1, 0x2C($s5)
/* AEED4 800F8B14 8C63005C */  lw         $v1, 0x5C($v1)
/* AEED8 800F8B18 8C660024 */  lw         $a2, 0x24($v1)
/* AEEDC 800F8B1C 84C40010 */  lh         $a0, 0x10($a2)
/* AEEE0 800F8B20 00642021 */  addu       $a0, $v1, $a0
/* AEEE4 800F8B24 8CC30014 */  lw         $v1, 0x14($a2)
/* AEEE8 800F8B28 27A500D8 */  addiu      $a1, $sp, 0xD8
/* AEEEC 800F8B2C 0060F809 */  jalr       $v1
/* AEEF0 800F8B30 AFA20148 */   sw        $v0, 0x148($sp)
/* AEEF4 800F8B34 8EA2002C */  lw         $v0, 0x2C($s5)
/* AEEF8 800F8B38 8C440DAC */  lw         $a0, 0xDAC($v0)
/* AEEFC 800F8B3C 0C03F2B6 */  jal        func_race_800FCAD8
/* AEF00 800F8B40 27A500F8 */   addiu     $a1, $sp, 0xF8
/* AEF04 800F8B44 C7A200F8 */  lwc1       $f2, 0xF8($sp)
/* AEF08 800F8B48 46021082 */  mul.s      $f2, $f2, $f2
/* AEF0C 800F8B4C C7A000FC */  lwc1       $f0, 0xFC($sp)
/* AEF10 800F8B50 46000002 */  mul.s      $f0, $f0, $f0
/* AEF14 800F8B54 46001300 */  add.s      $f12, $f2, $f0
/* AEF18 800F8B58 46006084 */  sqrt.s     $f2, $f12
/* AEF1C 800F8B5C 46021032 */  c.eq.s     $f2, $f2
/* AEF20 800F8B60 00000000 */  nop
/* AEF24 800F8B64 45010004 */  bc1t       .Lrace_800F8B78
/* AEF28 800F8B68 00000000 */   nop
/* AEF2C 800F8B6C 0C006BC8 */  jal        sqrt
/* AEF30 800F8B70 00000000 */   nop
/* AEF34 800F8B74 46000086 */  mov.s      $f2, $f0
.Lrace_800F8B78:
/* AEF38 800F8B78 C7A000F8 */  lwc1       $f0, 0xF8($sp)
/* AEF3C 800F8B7C 4602A203 */  div.s      $f8, $f20, $f2
/* AEF40 800F8B80 46004002 */  mul.s      $f0, $f8, $f0
/* AEF44 800F8B84 C7A200FC */  lwc1       $f2, 0xFC($sp)
/* AEF48 800F8B88 46024082 */  mul.s      $f2, $f8, $f2
/* AEF4C 800F8B8C E7A000F8 */  swc1       $f0, 0xF8($sp)
/* AEF50 800F8B90 E7A200FC */  swc1       $f2, 0xFC($sp)
/* AEF54 800F8B94 8EA20118 */  lw         $v0, 0x118($s5)
/* AEF58 800F8B98 10400064 */  beqz       $v0, .Lrace_800F8D2C
/* AEF5C 800F8B9C 00171043 */   sra       $v0, $s7, 1
/* AEF60 800F8BA0 92A2003B */  lbu        $v0, 0x3B($s5)
/* AEF64 800F8BA4 10400010 */  beqz       $v0, .Lrace_800F8BE8
/* AEF68 800F8BA8 00000000 */   nop
/* AEF6C 800F8BAC C6A00124 */  lwc1       $f0, 0x124($s5)
/* AEF70 800F8BB0 C7A600DC */  lwc1       $f6, 0xDC($sp)
/* AEF74 800F8BB4 44801000 */  mtc1       $zero, $f2
/* AEF78 800F8BB8 3C01800D */  lui        $at, %hi(D_race_800CCF18)
/* AEF7C 800F8BBC C424CF18 */  lwc1       $f4, %lo(D_race_800CCF18)($at)
/* AEF80 800F8BC0 46000007 */  neg.s      $f0, $f0
/* AEF84 800F8BC4 46060601 */  sub.s      $f24, $f0, $f6
/* AEF88 800F8BC8 C6A0011C */  lwc1       $f0, 0x11C($s5)
/* AEF8C 800F8BCC E7A20040 */  swc1       $f2, 0x40($sp)
/* AEF90 800F8BD0 E7A20028 */  swc1       $f2, 0x28($sp)
/* AEF94 800F8BD4 E7A40070 */  swc1       $f4, 0x70($sp)
/* AEF98 800F8BD8 E7A40058 */  swc1       $f4, 0x58($sp)
/* AEF9C 800F8BDC 46000007 */  neg.s      $f0, $f0
/* AEFA0 800F8BE0 0803E306 */  j          .Lrace_800F8C18
/* AEFA4 800F8BE4 46060581 */   sub.s     $f22, $f0, $f6
.Lrace_800F8BE8:
/* AEFA8 800F8BE8 C6A0011C */  lwc1       $f0, 0x11C($s5)
/* AEFAC 800F8BEC C7A400DC */  lwc1       $f4, 0xDC($sp)
/* AEFB0 800F8BF0 C6A20124 */  lwc1       $f2, 0x124($s5)
/* AEFB4 800F8BF4 46040601 */  sub.s      $f24, $f0, $f4
/* AEFB8 800F8BF8 44803000 */  mtc1       $zero, $f6
/* AEFBC 800F8BFC 3C01800D */  lui        $at, %hi(D_race_800CCF1C)
/* AEFC0 800F8C00 C420CF1C */  lwc1       $f0, %lo(D_race_800CCF1C)($at)
/* AEFC4 800F8C04 46041581 */  sub.s      $f22, $f2, $f4
/* AEFC8 800F8C08 E7A60070 */  swc1       $f6, 0x70($sp)
/* AEFCC 800F8C0C E7A60058 */  swc1       $f6, 0x58($sp)
/* AEFD0 800F8C10 E7A00040 */  swc1       $f0, 0x40($sp)
/* AEFD4 800F8C14 E7A00028 */  swc1       $f0, 0x28($sp)
.Lrace_800F8C18:
/* AEFD8 800F8C18 C7B000FC */  lwc1       $f16, 0xFC($sp)
/* AEFDC 800F8C1C 4610C282 */  mul.s      $f10, $f24, $f16
/* AEFE0 800F8C20 00000000 */  nop
/* AEFE4 800F8C24 4610B482 */  mul.s      $f18, $f22, $f16
/* AEFE8 800F8C28 C6A40120 */  lwc1       $f4, 0x120($s5)
/* AEFEC 800F8C2C C7A000D8 */  lwc1       $f0, 0xD8($sp)
/* AEFF0 800F8C30 46002101 */  sub.s      $f4, $f4, $f0
/* AEFF4 800F8C34 C7AE00F8 */  lwc1       $f14, 0xF8($sp)
/* AEFF8 800F8C38 460E2082 */  mul.s      $f2, $f4, $f14
/* AEFFC 800F8C3C C6AC0128 */  lwc1       $f12, 0x128($s5)
/* AF000 800F8C40 46006301 */  sub.s      $f12, $f12, $f0
/* AF004 800F8C44 460E6202 */  mul.s      $f8, $f12, $f14
/* AF008 800F8C48 44930000 */  mtc1       $s3, $f0
/* AF00C 800F8C4C 46800020 */  cvt.s.w    $f0, $f0
/* AF010 800F8C50 46020081 */  sub.s      $f2, $f0, $f2
/* AF014 800F8C54 46080001 */  sub.s      $f0, $f0, $f8
/* AF018 800F8C58 44803000 */  mtc1       $zero, $f6
/* AF01C 800F8C5C 460A1501 */  sub.s      $f20, $f2, $f10
/* AF020 800F8C60 E7A6006C */  swc1       $f6, 0x6C($sp)
/* AF024 800F8C64 460A0281 */  sub.s      $f10, $f0, $f10
/* AF028 800F8C68 E7A60024 */  swc1       $f6, 0x24($sp)
/* AF02C 800F8C6C 3C01800D */  lui        $at, %hi(D_race_800CCF20)
/* AF030 800F8C70 C428CF20 */  lwc1       $f8, %lo(D_race_800CCF20)($at)
/* AF034 800F8C74 46120001 */  sub.s      $f0, $f0, $f18
/* AF038 800F8C78 E7A80054 */  swc1       $f8, 0x54($sp)
/* AF03C 800F8C7C E7A8003C */  swc1       $f8, 0x3C($sp)
/* AF040 800F8C80 46121081 */  sub.s      $f2, $f2, $f18
/* AF044 800F8C84 E7B4001C */  swc1       $f20, 0x1C($sp)
/* AF048 800F8C88 E7AA0034 */  swc1       $f10, 0x34($sp)
/* AF04C 800F8C8C E7A0004C */  swc1       $f0, 0x4C($sp)
/* AF050 800F8C90 E7A20064 */  swc1       $f2, 0x64($sp)
/* AF054 800F8C94 C6A20108 */  lwc1       $f2, 0x108($s5)
/* AF058 800F8C98 460E1082 */  mul.s      $f2, $f2, $f14
/* AF05C 800F8C9C 00000000 */  nop
/* AF060 800F8CA0 4602C202 */  mul.s      $f8, $f24, $f2
/* AF064 800F8CA4 E7A20108 */  swc1       $f2, 0x108($sp)
/* AF068 800F8CA8 4602B082 */  mul.s      $f2, $f22, $f2
/* AF06C 800F8CAC C6A60108 */  lwc1       $f6, 0x108($s5)
/* AF070 800F8CB0 46103182 */  mul.s      $f6, $f6, $f16
/* AF074 800F8CB4 00000000 */  nop
/* AF078 800F8CB8 46062102 */  mul.s      $f4, $f4, $f6
/* AF07C 800F8CBC 00000000 */  nop
/* AF080 800F8CC0 46066302 */  mul.s      $f12, $f12, $f6
/* AF084 800F8CC4 44940000 */  mtc1       $s4, $f0
/* AF088 800F8CC8 46800020 */  cvt.s.w    $f0, $f0
/* AF08C 800F8CCC 46040100 */  add.s      $f4, $f0, $f4
/* AF090 800F8CD0 460C0000 */  add.s      $f0, $f0, $f12
/* AF094 800F8CD4 02A02021 */  addu       $a0, $s5, $zero
/* AF098 800F8CD8 46082281 */  sub.s      $f10, $f4, $f8
/* AF09C 800F8CDC 27A50018 */  addiu      $a1, $sp, 0x18
/* AF0A0 800F8CE0 27B10030 */  addiu      $s1, $sp, 0x30
/* AF0A4 800F8CE4 46080201 */  sub.s      $f8, $f0, $f8
/* AF0A8 800F8CE8 02203021 */  addu       $a2, $s1, $zero
/* AF0AC 800F8CEC 27B00060 */  addiu      $s0, $sp, 0x60
/* AF0B0 800F8CF0 46020001 */  sub.s      $f0, $f0, $f2
/* AF0B4 800F8CF4 02003821 */  addu       $a3, $s0, $zero
/* AF0B8 800F8CF8 E7A6010C */  swc1       $f6, 0x10C($sp)
/* AF0BC 800F8CFC 46022101 */  sub.s      $f4, $f4, $f2
/* AF0C0 800F8D00 E7AA0018 */  swc1       $f10, 0x18($sp)
/* AF0C4 800F8D04 E7A80030 */  swc1       $f8, 0x30($sp)
/* AF0C8 800F8D08 E7A00048 */  swc1       $f0, 0x48($sp)
/* AF0CC 800F8D0C 0C03DD4B */  jal        func_race_800F752C
/* AF0D0 800F8D10 E7A40060 */   swc1      $f4, 0x60($sp)
/* AF0D4 800F8D14 02A02021 */  addu       $a0, $s5, $zero
/* AF0D8 800F8D18 02002821 */  addu       $a1, $s0, $zero
/* AF0DC 800F8D1C 02203021 */  addu       $a2, $s1, $zero
/* AF0E0 800F8D20 0C03DD4B */  jal        func_race_800F752C
/* AF0E4 800F8D24 27A70048 */   addiu     $a3, $sp, 0x48
/* AF0E8 800F8D28 00171043 */  sra        $v0, $s7, 1
.Lrace_800F8D2C:
/* AF0EC 800F8D2C 0282A023 */  subu       $s4, $s4, $v0
/* AF0F0 800F8D30 001E1043 */  sra        $v0, $fp, 1
/* AF0F4 800F8D34 8EA30028 */  lw         $v1, 0x28($s5)
/* AF0F8 800F8D38 02629823 */  subu       $s3, $s3, $v0
/* AF0FC 800F8D3C 8C700144 */  lw         $s0, 0x144($v1)
/* AF100 800F8D40 24160008 */  addiu      $s6, $zero, 0x8
/* AF104 800F8D44 001010C0 */  sll        $v0, $s0, 3
/* AF108 800F8D48 00501023 */  subu       $v0, $v0, $s0
/* AF10C 800F8D4C 000210C0 */  sll        $v0, $v0, 3
/* AF110 800F8D50 00501021 */  addu       $v0, $v0, $s0
/* AF114 800F8D54 00021080 */  sll        $v0, $v0, 2
/* AF118 800F8D58 00501023 */  subu       $v0, $v0, $s0
/* AF11C 800F8D5C 00021080 */  sll        $v0, $v0, 2
/* AF120 800F8D60 00501023 */  subu       $v0, $v0, $s0
/* AF124 800F8D64 00029080 */  sll        $s2, $v0, 2
.Lrace_800F8D68:
/* AF128 800F8D68 1A000052 */  blez       $s0, .Lrace_800F8EB4
/* AF12C 800F8D6C 2652F1D4 */   addiu     $s2, $s2, -0xE2C
/* AF130 800F8D70 8EA20028 */  lw         $v0, 0x28($s5)
/* AF134 800F8D74 8C420140 */  lw         $v0, 0x140($v0)
/* AF138 800F8D78 8EA3002C */  lw         $v1, 0x2C($s5)
/* AF13C 800F8D7C 00528821 */  addu       $s1, $v0, $s2
/* AF140 800F8D80 1223FFF9 */  beq        $s1, $v1, .Lrace_800F8D68
/* AF144 800F8D84 2610FFFF */   addiu     $s0, $s0, -0x1
/* AF148 800F8D88 8E23005C */  lw         $v1, 0x5C($s1)
/* AF14C 800F8D8C 8C620024 */  lw         $v0, 0x24($v1)
/* AF150 800F8D90 27A50118 */  addiu      $a1, $sp, 0x118
/* AF154 800F8D94 84440010 */  lh         $a0, 0x10($v0)
/* AF158 800F8D98 8C420014 */  lw         $v0, 0x14($v0)
/* AF15C 800F8D9C 0040F809 */  jalr       $v0
/* AF160 800F8DA0 00642021 */   addu      $a0, $v1, $a0
/* AF164 800F8DA4 C7A60118 */  lwc1       $f6, 0x118($sp)
/* AF168 800F8DA8 C7A000D8 */  lwc1       $f0, 0xD8($sp)
/* AF16C 800F8DAC 46003181 */  sub.s      $f6, $f6, $f0
/* AF170 800F8DB0 C7A400FC */  lwc1       $f4, 0xFC($sp)
/* AF174 800F8DB4 46043282 */  mul.s      $f10, $f6, $f4
/* AF178 800F8DB8 C7A2011C */  lwc1       $f2, 0x11C($sp)
/* AF17C 800F8DBC C7A000DC */  lwc1       $f0, 0xDC($sp)
/* AF180 800F8DC0 46001081 */  sub.s      $f2, $f2, $f0
/* AF184 800F8DC4 C7A000F8 */  lwc1       $f0, 0xF8($sp)
/* AF188 800F8DC8 46001202 */  mul.s      $f8, $f2, $f0
/* AF18C 800F8DCC 00000000 */  nop
/* AF190 800F8DD0 46003002 */  mul.s      $f0, $f6, $f0
/* AF194 800F8DD4 00000000 */  nop
/* AF198 800F8DD8 46041102 */  mul.s      $f4, $f2, $f4
/* AF19C 800F8DDC 46000007 */  neg.s      $f0, $f0
/* AF1A0 800F8DE0 46040001 */  sub.s      $f0, $f0, $f4
/* AF1A4 800F8DE4 E7A60118 */  swc1       $f6, 0x118($sp)
/* AF1A8 800F8DE8 E7A2011C */  swc1       $f2, 0x11C($sp)
/* AF1AC 800F8DEC 46085281 */  sub.s      $f10, $f10, $f8
/* AF1B0 800F8DF0 4600068D */  trunc.w.s  $f26, $f0
/* AF1B4 800F8DF4 4402D000 */  mfc1       $v0, $f26
/* AF1B8 800F8DF8 02621021 */  addu       $v0, $s3, $v0
/* AF1BC 800F8DFC AFA2013C */  sw         $v0, 0x13C($sp)
/* AF1C0 800F8E00 C6A00108 */  lwc1       $f0, 0x108($s5)
/* AF1C4 800F8E04 460A0002 */  mul.s      $f0, $f0, $f10
/* AF1C8 800F8E08 005E1021 */  addu       $v0, $v0, $fp
/* AF1CC 800F8E0C AFA20144 */  sw         $v0, 0x144($sp)
/* AF1D0 800F8E10 4600068D */  trunc.w.s  $f26, $f0
/* AF1D4 800F8E14 4402D000 */  mfc1       $v0, $f26
/* AF1D8 800F8E18 02821021 */  addu       $v0, $s4, $v0
/* AF1DC 800F8E1C AFA20138 */  sw         $v0, 0x138($sp)
/* AF1E0 800F8E20 00571021 */  addu       $v0, $v0, $s7
/* AF1E4 800F8E24 AFA20140 */  sw         $v0, 0x140($sp)
/* AF1E8 800F8E28 8E220D08 */  lw         $v0, 0xD08($s1)
/* AF1EC 800F8E2C 38420002 */  xori       $v0, $v0, 0x2
/* AF1F0 800F8E30 54400005 */  bnel       $v0, $zero, .Lrace_800F8E48
/* AF1F4 800F8E34 AFA00128 */   sw        $zero, 0x128($sp)
/* AF1F8 800F8E38 24020001 */  addiu      $v0, $zero, 0x1
/* AF1FC 800F8E3C 56020002 */  bnel       $s0, $v0, .Lrace_800F8E48
/* AF200 800F8E40 AFA00128 */   sw        $zero, 0x128($sp)
/* AF204 800F8E44 AFB60128 */  sw         $s6, 0x128($sp)
.Lrace_800F8E48:
/* AF208 800F8E48 92A20038 */  lbu        $v0, 0x38($s5)
/* AF20C 800F8E4C 2442FFFE */  addiu      $v0, $v0, -0x2
/* AF210 800F8E50 2C420002 */  sltiu      $v0, $v0, 0x2
/* AF214 800F8E54 50400002 */  beql       $v0, $zero, .Lrace_800F8E60
/* AF218 800F8E58 AFA0012C */   sw        $zero, 0x12C($sp)
/* AF21C 800F8E5C AFB6012C */  sw         $s6, 0x12C($sp)
.Lrace_800F8E60:
/* AF220 800F8E60 00003021 */  addu       $a2, $zero, $zero
/* AF224 800F8E64 8FA2012C */  lw         $v0, 0x12C($sp)
/* AF228 800F8E68 8FA30128 */  lw         $v1, 0x128($sp)
/* AF22C 800F8E6C 24420008 */  addiu      $v0, $v0, 0x8
/* AF230 800F8E70 24630008 */  addiu      $v1, $v1, 0x8
/* AF234 800F8E74 AFA20134 */  sw         $v0, 0x134($sp)
/* AF238 800F8E78 AFA30130 */  sw         $v1, 0x130($sp)
/* AF23C 800F8E7C 8EA80000 */  lw         $t0, 0x0($s5)
/* AF240 800F8E80 27A70138 */  addiu      $a3, $sp, 0x138
/* AF244 800F8E84 8D03012C */  lw         $v1, 0x12C($t0)
/* AF248 800F8E88 8FA50148 */  lw         $a1, 0x148($sp)
/* AF24C 800F8E8C 846400E8 */  lh         $a0, 0xE8($v1)
/* AF250 800F8E90 27A20128 */  addiu      $v0, $sp, 0x128
/* AF254 800F8E94 AFA20010 */  sw         $v0, 0x10($sp)
/* AF258 800F8E98 27A200E8 */  addiu      $v0, $sp, 0xE8
/* AF25C 800F8E9C AFA20014 */  sw         $v0, 0x14($sp)
/* AF260 800F8EA0 8C6200EC */  lw         $v0, 0xEC($v1)
/* AF264 800F8EA4 0040F809 */  jalr       $v0
/* AF268 800F8EA8 01042021 */   addu      $a0, $t0, $a0
/* AF26C 800F8EAC 0803E35A */  j          .Lrace_800F8D68
/* AF270 800F8EB0 00000000 */   nop
.Lrace_800F8EB4:
/* AF274 800F8EB4 8EA30030 */  lw         $v1, 0x30($s5)
/* AF278 800F8EB8 10600008 */  beqz       $v1, .Lrace_800F8EDC
/* AF27C 800F8EBC 00002021 */   addu      $a0, $zero, $zero
/* AF280 800F8EC0 906203B0 */  lbu        $v0, 0x3B0($v1)
/* AF284 800F8EC4 30420008 */  andi       $v0, $v0, 0x8
/* AF288 800F8EC8 10400004 */  beqz       $v0, .Lrace_800F8EDC
/* AF28C 800F8ECC 00000000 */   nop
/* AF290 800F8ED0 8C620008 */  lw         $v0, 0x8($v1)
/* AF294 800F8ED4 8C4225BC */  lw         $v0, 0x25BC($v0)
/* AF298 800F8ED8 2C440001 */  sltiu      $a0, $v0, 0x1
.Lrace_800F8EDC:
/* AF29C 800F8EDC 10800044 */  beqz       $a0, .Lrace_800F8FF0
/* AF2A0 800F8EE0 27A50118 */   addiu     $a1, $sp, 0x118
/* AF2A4 800F8EE4 8EA20030 */  lw         $v0, 0x30($s5)
/* AF2A8 800F8EE8 8C43010C */  lw         $v1, 0x10C($v0)
/* AF2AC 800F8EEC 8C620024 */  lw         $v0, 0x24($v1)
/* AF2B0 800F8EF0 84440010 */  lh         $a0, 0x10($v0)
/* AF2B4 800F8EF4 8C420014 */  lw         $v0, 0x14($v0)
/* AF2B8 800F8EF8 0040F809 */  jalr       $v0
/* AF2BC 800F8EFC 00642021 */   addu      $a0, $v1, $a0
/* AF2C0 800F8F00 C7A60118 */  lwc1       $f6, 0x118($sp)
/* AF2C4 800F8F04 C7A000D8 */  lwc1       $f0, 0xD8($sp)
/* AF2C8 800F8F08 46003181 */  sub.s      $f6, $f6, $f0
/* AF2CC 800F8F0C C7A400FC */  lwc1       $f4, 0xFC($sp)
/* AF2D0 800F8F10 46043282 */  mul.s      $f10, $f6, $f4
/* AF2D4 800F8F14 C7A2011C */  lwc1       $f2, 0x11C($sp)
/* AF2D8 800F8F18 C7A000DC */  lwc1       $f0, 0xDC($sp)
/* AF2DC 800F8F1C 46001081 */  sub.s      $f2, $f2, $f0
/* AF2E0 800F8F20 C7A000F8 */  lwc1       $f0, 0xF8($sp)
/* AF2E4 800F8F24 46001202 */  mul.s      $f8, $f2, $f0
/* AF2E8 800F8F28 00000000 */  nop
/* AF2EC 800F8F2C 46003002 */  mul.s      $f0, $f6, $f0
/* AF2F0 800F8F30 00000000 */  nop
/* AF2F4 800F8F34 46041102 */  mul.s      $f4, $f2, $f4
/* AF2F8 800F8F38 46000007 */  neg.s      $f0, $f0
/* AF2FC 800F8F3C 46040001 */  sub.s      $f0, $f0, $f4
/* AF300 800F8F40 E7A60118 */  swc1       $f6, 0x118($sp)
/* AF304 800F8F44 E7A2011C */  swc1       $f2, 0x11C($sp)
/* AF308 800F8F48 46085281 */  sub.s      $f10, $f10, $f8
/* AF30C 800F8F4C 4600068D */  trunc.w.s  $f26, $f0
/* AF310 800F8F50 4402D000 */  mfc1       $v0, $f26
/* AF314 800F8F54 02621021 */  addu       $v0, $s3, $v0
/* AF318 800F8F58 AFA2013C */  sw         $v0, 0x13C($sp)
/* AF31C 800F8F5C C6A00108 */  lwc1       $f0, 0x108($s5)
/* AF320 800F8F60 460A0002 */  mul.s      $f0, $f0, $f10
/* AF324 800F8F64 24030008 */  addiu      $v1, $zero, 0x8
/* AF328 800F8F68 005E1021 */  addu       $v0, $v0, $fp
/* AF32C 800F8F6C AFA20144 */  sw         $v0, 0x144($sp)
/* AF330 800F8F70 AFA30128 */  sw         $v1, 0x128($sp)
/* AF334 800F8F74 4600068D */  trunc.w.s  $f26, $f0
/* AF338 800F8F78 4402D000 */  mfc1       $v0, $f26
/* AF33C 800F8F7C 02821021 */  addu       $v0, $s4, $v0
/* AF340 800F8F80 AFA20138 */  sw         $v0, 0x138($sp)
/* AF344 800F8F84 00571021 */  addu       $v0, $v0, $s7
/* AF348 800F8F88 AFA20140 */  sw         $v0, 0x140($sp)
/* AF34C 800F8F8C 92A20038 */  lbu        $v0, 0x38($s5)
/* AF350 800F8F90 2442FFFE */  addiu      $v0, $v0, -0x2
/* AF354 800F8F94 2C420002 */  sltiu      $v0, $v0, 0x2
/* AF358 800F8F98 50400002 */  beql       $v0, $zero, .Lrace_800F8FA4
/* AF35C 800F8F9C AFA0012C */   sw        $zero, 0x12C($sp)
/* AF360 800F8FA0 AFA3012C */  sw         $v1, 0x12C($sp)
.Lrace_800F8FA4:
/* AF364 800F8FA4 00003021 */  addu       $a2, $zero, $zero
/* AF368 800F8FA8 8FA2012C */  lw         $v0, 0x12C($sp)
/* AF36C 800F8FAC 8FA30128 */  lw         $v1, 0x128($sp)
/* AF370 800F8FB0 24420008 */  addiu      $v0, $v0, 0x8
/* AF374 800F8FB4 24630008 */  addiu      $v1, $v1, 0x8
/* AF378 800F8FB8 AFA20134 */  sw         $v0, 0x134($sp)
/* AF37C 800F8FBC AFA30130 */  sw         $v1, 0x130($sp)
/* AF380 800F8FC0 8EA80000 */  lw         $t0, 0x0($s5)
/* AF384 800F8FC4 27A70138 */  addiu      $a3, $sp, 0x138
/* AF388 800F8FC8 8D03012C */  lw         $v1, 0x12C($t0)
/* AF38C 800F8FCC 8FA50148 */  lw         $a1, 0x148($sp)
/* AF390 800F8FD0 846400E8 */  lh         $a0, 0xE8($v1)
/* AF394 800F8FD4 27A20128 */  addiu      $v0, $sp, 0x128
/* AF398 800F8FD8 AFA20010 */  sw         $v0, 0x10($sp)
/* AF39C 800F8FDC 27A200E8 */  addiu      $v0, $sp, 0xE8
/* AF3A0 800F8FE0 AFA20014 */  sw         $v0, 0x14($sp)
/* AF3A4 800F8FE4 8C6200EC */  lw         $v0, 0xEC($v1)
/* AF3A8 800F8FE8 0040F809 */  jalr       $v0
/* AF3AC 800F8FEC 01042021 */   addu      $a0, $t0, $a0
.Lrace_800F8FF0:
/* AF3B0 800F8FF0 8EA30030 */  lw         $v1, 0x30($s5)
/* AF3B4 800F8FF4 10600008 */  beqz       $v1, .Lrace_800F9018
/* AF3B8 800F8FF8 00002021 */   addu      $a0, $zero, $zero
/* AF3BC 800F8FFC 906203B0 */  lbu        $v0, 0x3B0($v1)
/* AF3C0 800F9000 30420001 */  andi       $v0, $v0, 0x1
/* AF3C4 800F9004 10400004 */  beqz       $v0, .Lrace_800F9018
/* AF3C8 800F9008 00000000 */   nop
/* AF3CC 800F900C 8C62000C */  lw         $v0, 0xC($v1)
/* AF3D0 800F9010 8C4225BC */  lw         $v0, 0x25BC($v0)
/* AF3D4 800F9014 2C440001 */  sltiu      $a0, $v0, 0x1
.Lrace_800F9018:
/* AF3D8 800F9018 10800041 */  beqz       $a0, .Lrace_800F9120
/* AF3DC 800F901C 27A50118 */   addiu     $a1, $sp, 0x118
/* AF3E0 800F9020 8EA40030 */  lw         $a0, 0x30($s5)
/* AF3E4 800F9024 0C01595B */  jal        func_8005656C
/* AF3E8 800F9028 24840018 */   addiu     $a0, $a0, 0x18
/* AF3EC 800F902C C7A60118 */  lwc1       $f6, 0x118($sp)
/* AF3F0 800F9030 C7A000D8 */  lwc1       $f0, 0xD8($sp)
/* AF3F4 800F9034 46003181 */  sub.s      $f6, $f6, $f0
/* AF3F8 800F9038 C7A400FC */  lwc1       $f4, 0xFC($sp)
/* AF3FC 800F903C 46043282 */  mul.s      $f10, $f6, $f4
/* AF400 800F9040 C7A2011C */  lwc1       $f2, 0x11C($sp)
/* AF404 800F9044 C7A000DC */  lwc1       $f0, 0xDC($sp)
/* AF408 800F9048 46001081 */  sub.s      $f2, $f2, $f0
/* AF40C 800F904C C7A000F8 */  lwc1       $f0, 0xF8($sp)
/* AF410 800F9050 46001202 */  mul.s      $f8, $f2, $f0
/* AF414 800F9054 00000000 */  nop
/* AF418 800F9058 46003002 */  mul.s      $f0, $f6, $f0
/* AF41C 800F905C 00000000 */  nop
/* AF420 800F9060 46041102 */  mul.s      $f4, $f2, $f4
/* AF424 800F9064 46000007 */  neg.s      $f0, $f0
/* AF428 800F9068 46040001 */  sub.s      $f0, $f0, $f4
/* AF42C 800F906C E7A60118 */  swc1       $f6, 0x118($sp)
/* AF430 800F9070 E7A2011C */  swc1       $f2, 0x11C($sp)
/* AF434 800F9074 46085281 */  sub.s      $f10, $f10, $f8
/* AF438 800F9078 4600068D */  trunc.w.s  $f26, $f0
/* AF43C 800F907C 4402D000 */  mfc1       $v0, $f26
/* AF440 800F9080 02621021 */  addu       $v0, $s3, $v0
/* AF444 800F9084 AFA2013C */  sw         $v0, 0x13C($sp)
/* AF448 800F9088 C6A00108 */  lwc1       $f0, 0x108($s5)
/* AF44C 800F908C 460A0002 */  mul.s      $f0, $f0, $f10
/* AF450 800F9090 005E1021 */  addu       $v0, $v0, $fp
/* AF454 800F9094 AFA20144 */  sw         $v0, 0x144($sp)
/* AF458 800F9098 AFA00128 */  sw         $zero, 0x128($sp)
/* AF45C 800F909C 4600068D */  trunc.w.s  $f26, $f0
/* AF460 800F90A0 4402D000 */  mfc1       $v0, $f26
/* AF464 800F90A4 02821021 */  addu       $v0, $s4, $v0
/* AF468 800F90A8 AFA20138 */  sw         $v0, 0x138($sp)
/* AF46C 800F90AC 00571021 */  addu       $v0, $v0, $s7
/* AF470 800F90B0 AFA20140 */  sw         $v0, 0x140($sp)
/* AF474 800F90B4 92A20038 */  lbu        $v0, 0x38($s5)
/* AF478 800F90B8 2442FFFE */  addiu      $v0, $v0, -0x2
/* AF47C 800F90BC 2C420002 */  sltiu      $v0, $v0, 0x2
/* AF480 800F90C0 10400003 */  beqz       $v0, .Lrace_800F90D0
/* AF484 800F90C4 24020008 */   addiu     $v0, $zero, 0x8
/* AF488 800F90C8 0803E435 */  j          .Lrace_800F90D4
/* AF48C 800F90CC AFA2012C */   sw        $v0, 0x12C($sp)
.Lrace_800F90D0:
/* AF490 800F90D0 AFA0012C */  sw         $zero, 0x12C($sp)
.Lrace_800F90D4:
/* AF494 800F90D4 00003021 */  addu       $a2, $zero, $zero
/* AF498 800F90D8 8FA2012C */  lw         $v0, 0x12C($sp)
/* AF49C 800F90DC 8FA30128 */  lw         $v1, 0x128($sp)
/* AF4A0 800F90E0 24420008 */  addiu      $v0, $v0, 0x8
/* AF4A4 800F90E4 24630008 */  addiu      $v1, $v1, 0x8
/* AF4A8 800F90E8 AFA20134 */  sw         $v0, 0x134($sp)
/* AF4AC 800F90EC AFA30130 */  sw         $v1, 0x130($sp)
/* AF4B0 800F90F0 8EA80000 */  lw         $t0, 0x0($s5)
/* AF4B4 800F90F4 27A70138 */  addiu      $a3, $sp, 0x138
/* AF4B8 800F90F8 8D03012C */  lw         $v1, 0x12C($t0)
/* AF4BC 800F90FC 8FA50148 */  lw         $a1, 0x148($sp)
/* AF4C0 800F9100 846400E8 */  lh         $a0, 0xE8($v1)
/* AF4C4 800F9104 27A20128 */  addiu      $v0, $sp, 0x128
/* AF4C8 800F9108 AFA20010 */  sw         $v0, 0x10($sp)
/* AF4CC 800F910C 27A200E8 */  addiu      $v0, $sp, 0xE8
/* AF4D0 800F9110 AFA20014 */  sw         $v0, 0x14($sp)
/* AF4D4 800F9114 8C6200EC */  lw         $v0, 0xEC($v1)
/* AF4D8 800F9118 0040F809 */  jalr       $v0
/* AF4DC 800F911C 01042021 */   addu      $a0, $t0, $a0
.Lrace_800F9120:
/* AF4E0 800F9120 02A02021 */  addu       $a0, $s5, $zero
/* AF4E4 800F9124 00172843 */  sra        $a1, $s7, 1
/* AF4E8 800F9128 02852821 */  addu       $a1, $s4, $a1
/* AF4EC 800F912C 001E3043 */  sra        $a2, $fp, 1
/* AF4F0 800F9130 02663021 */  addu       $a2, $s3, $a2
/* AF4F4 800F9134 00003821 */  addu       $a3, $zero, $zero
/* AF4F8 800F9138 3C01800D */  lui        $at, %hi(D_race_800CCF24)
/* AF4FC 800F913C C420CF24 */  lwc1       $f0, %lo(D_race_800CCF24)($at)
/* AF500 800F9140 00008021 */  addu       $s0, $zero, $zero
/* AF504 800F9144 0C03E019 */  jal        func_race_800F8064
/* AF508 800F9148 E7A00010 */   swc1      $f0, 0x10($sp)
/* AF50C 800F914C 240400FF */  addiu      $a0, $zero, 0xFF
/* AF510 800F9150 27A30018 */  addiu      $v1, $sp, 0x18
.Lrace_800F9154:
/* AF514 800F9154 AC60000C */  sw         $zero, 0xC($v1)
/* AF518 800F9158 AC600010 */  sw         $zero, 0x10($v1)
/* AF51C 800F915C A0640017 */  sb         $a0, 0x17($v1)
/* AF520 800F9160 26100001 */  addiu      $s0, $s0, 0x1
/* AF524 800F9164 2A020008 */  slti       $v0, $s0, 0x8
/* AF528 800F9168 1440FFFA */  bnez       $v0, .Lrace_800F9154
/* AF52C 800F916C 24630018 */   addiu     $v1, $v1, 0x18
/* AF530 800F9170 27A50018 */  addiu      $a1, $sp, 0x18
/* AF534 800F9174 C7A800E8 */  lwc1       $f8, 0xE8($sp)
/* AF538 800F9178 46804220 */  cvt.s.w    $f8, $f8
/* AF53C 800F917C C7A400EC */  lwc1       $f4, 0xEC($sp)
/* AF540 800F9180 46802120 */  cvt.s.w    $f4, $f4
/* AF544 800F9184 C7A200F0 */  lwc1       $f2, 0xF0($sp)
/* AF548 800F9188 468010A0 */  cvt.s.w    $f2, $f2
/* AF54C 800F918C C7A000F4 */  lwc1       $f0, 0xF4($sp)
/* AF550 800F9190 46800020 */  cvt.s.w    $f0, $f0
/* AF554 800F9194 3C01800D */  lui        $at, %hi(D_race_800CCF28)
/* AF558 800F9198 C426CF28 */  lwc1       $f6, %lo(D_race_800CCF28)($at)
/* AF55C 800F919C 27B30030 */  addiu      $s3, $sp, 0x30
/* AF560 800F91A0 E7A80018 */  swc1       $f8, 0x18($sp)
/* AF564 800F91A4 E7A4001C */  swc1       $f4, 0x1C($sp)
/* AF568 800F91A8 46064280 */  add.s      $f10, $f8, $f6
/* AF56C 800F91AC E7A20030 */  swc1       $f2, 0x30($sp)
/* AF570 800F91B0 E7A40034 */  swc1       $f4, 0x34($sp)
/* AF574 800F91B4 46062100 */  add.s      $f4, $f4, $f6
/* AF578 800F91B8 E7A20048 */  swc1       $f2, 0x48($sp)
/* AF57C 800F91BC E7A0004C */  swc1       $f0, 0x4C($sp)
/* AF580 800F91C0 46061081 */  sub.s      $f2, $f2, $f6
/* AF584 800F91C4 E7A80060 */  swc1       $f8, 0x60($sp)
/* AF588 800F91C8 E7A00064 */  swc1       $f0, 0x64($sp)
/* AF58C 800F91CC 46060001 */  sub.s      $f0, $f0, $f6
/* AF590 800F91D0 E7AA0078 */  swc1       $f10, 0x78($sp)
/* AF594 800F91D4 E7A4007C */  swc1       $f4, 0x7C($sp)
/* AF598 800F91D8 E7A20090 */  swc1       $f2, 0x90($sp)
/* AF59C 800F91DC E7A40094 */  swc1       $f4, 0x94($sp)
/* AF5A0 800F91E0 E7A200A8 */  swc1       $f2, 0xA8($sp)
/* AF5A4 800F91E4 E7A000AC */  swc1       $f0, 0xAC($sp)
/* AF5A8 800F91E8 E7AA00C0 */  swc1       $f10, 0xC0($sp)
/* AF5AC 800F91EC E7A000C4 */  swc1       $f0, 0xC4($sp)
/* AF5B0 800F91F0 8EA30000 */  lw         $v1, 0x0($s5)
/* AF5B4 800F91F4 02603021 */  addu       $a2, $s3, $zero
/* AF5B8 800F91F8 8C62012C */  lw         $v0, 0x12C($v1)
/* AF5BC 800F91FC 27B10078 */  addiu      $s1, $sp, 0x78
/* AF5C0 800F9200 84440110 */  lh         $a0, 0x110($v0)
/* AF5C4 800F9204 02203821 */  addu       $a3, $s1, $zero
/* AF5C8 800F9208 AFA00010 */  sw         $zero, 0x10($sp)
/* AF5CC 800F920C AFA00014 */  sw         $zero, 0x14($sp)
/* AF5D0 800F9210 8C420114 */  lw         $v0, 0x114($v0)
/* AF5D4 800F9214 0040F809 */  jalr       $v0
/* AF5D8 800F9218 00642021 */   addu      $a0, $v1, $a0
/* AF5DC 800F921C 02202821 */  addu       $a1, $s1, $zero
/* AF5E0 800F9220 8EA30000 */  lw         $v1, 0x0($s5)
/* AF5E4 800F9224 02603021 */  addu       $a2, $s3, $zero
/* AF5E8 800F9228 8C62012C */  lw         $v0, 0x12C($v1)
/* AF5EC 800F922C 27B40090 */  addiu      $s4, $sp, 0x90
/* AF5F0 800F9230 84440110 */  lh         $a0, 0x110($v0)
/* AF5F4 800F9234 02803821 */  addu       $a3, $s4, $zero
/* AF5F8 800F9238 AFA00010 */  sw         $zero, 0x10($sp)
/* AF5FC 800F923C AFA00014 */  sw         $zero, 0x14($sp)
/* AF600 800F9240 8C420114 */  lw         $v0, 0x114($v0)
/* AF604 800F9244 0040F809 */  jalr       $v0
/* AF608 800F9248 00642021 */   addu      $a0, $v1, $a0
/* AF60C 800F924C 27A50018 */  addiu      $a1, $sp, 0x18
/* AF610 800F9250 8EA30000 */  lw         $v1, 0x0($s5)
/* AF614 800F9254 02203021 */  addu       $a2, $s1, $zero
/* AF618 800F9258 8C62012C */  lw         $v0, 0x12C($v1)
/* AF61C 800F925C 27B00060 */  addiu      $s0, $sp, 0x60
/* AF620 800F9260 84440110 */  lh         $a0, 0x110($v0)
/* AF624 800F9264 02003821 */  addu       $a3, $s0, $zero
/* AF628 800F9268 AFA00010 */  sw         $zero, 0x10($sp)
/* AF62C 800F926C AFA00014 */  sw         $zero, 0x14($sp)
/* AF630 800F9270 8C420114 */  lw         $v0, 0x114($v0)
/* AF634 800F9274 0040F809 */  jalr       $v0
/* AF638 800F9278 00642021 */   addu      $a0, $v1, $a0
/* AF63C 800F927C 02002821 */  addu       $a1, $s0, $zero
/* AF640 800F9280 8EA30000 */  lw         $v1, 0x0($s5)
/* AF644 800F9284 02203021 */  addu       $a2, $s1, $zero
/* AF648 800F9288 8C62012C */  lw         $v0, 0x12C($v1)
/* AF64C 800F928C 27B100C0 */  addiu      $s1, $sp, 0xC0
/* AF650 800F9290 84440110 */  lh         $a0, 0x110($v0)
/* AF654 800F9294 02203821 */  addu       $a3, $s1, $zero
/* AF658 800F9298 AFA00010 */  sw         $zero, 0x10($sp)
/* AF65C 800F929C AFA00014 */  sw         $zero, 0x14($sp)
/* AF660 800F92A0 8C420114 */  lw         $v0, 0x114($v0)
/* AF664 800F92A4 0040F809 */  jalr       $v0
/* AF668 800F92A8 00642021 */   addu      $a0, $v1, $a0
/* AF66C 800F92AC 02002821 */  addu       $a1, $s0, $zero
/* AF670 800F92B0 8EA30000 */  lw         $v1, 0x0($s5)
/* AF674 800F92B4 02203021 */  addu       $a2, $s1, $zero
/* AF678 800F92B8 8C62012C */  lw         $v0, 0x12C($v1)
/* AF67C 800F92BC 27B20048 */  addiu      $s2, $sp, 0x48
/* AF680 800F92C0 84440110 */  lh         $a0, 0x110($v0)
/* AF684 800F92C4 02403821 */  addu       $a3, $s2, $zero
/* AF688 800F92C8 AFA00010 */  sw         $zero, 0x10($sp)
/* AF68C 800F92CC AFA00014 */  sw         $zero, 0x14($sp)
/* AF690 800F92D0 8C420114 */  lw         $v0, 0x114($v0)
/* AF694 800F92D4 0040F809 */  jalr       $v0
/* AF698 800F92D8 00642021 */   addu      $a0, $v1, $a0
/* AF69C 800F92DC 02402821 */  addu       $a1, $s2, $zero
/* AF6A0 800F92E0 8EA30000 */  lw         $v1, 0x0($s5)
/* AF6A4 800F92E4 02203021 */  addu       $a2, $s1, $zero
/* AF6A8 800F92E8 8C62012C */  lw         $v0, 0x12C($v1)
/* AF6AC 800F92EC 27B000A8 */  addiu      $s0, $sp, 0xA8
/* AF6B0 800F92F0 84440110 */  lh         $a0, 0x110($v0)
/* AF6B4 800F92F4 02003821 */  addu       $a3, $s0, $zero
/* AF6B8 800F92F8 AFA00010 */  sw         $zero, 0x10($sp)
/* AF6BC 800F92FC AFA00014 */  sw         $zero, 0x14($sp)
/* AF6C0 800F9300 8C420114 */  lw         $v0, 0x114($v0)
/* AF6C4 800F9304 0040F809 */  jalr       $v0
/* AF6C8 800F9308 00642021 */   addu      $a0, $v1, $a0
/* AF6CC 800F930C 8EA30000 */  lw         $v1, 0x0($s5)
/* AF6D0 800F9310 02802821 */  addu       $a1, $s4, $zero
/* AF6D4 800F9314 8C62012C */  lw         $v0, 0x12C($v1)
/* AF6D8 800F9318 02603021 */  addu       $a2, $s3, $zero
/* AF6DC 800F931C 84440110 */  lh         $a0, 0x110($v0)
/* AF6E0 800F9320 02003821 */  addu       $a3, $s0, $zero
/* AF6E4 800F9324 AFA00010 */  sw         $zero, 0x10($sp)
/* AF6E8 800F9328 AFA00014 */  sw         $zero, 0x14($sp)
/* AF6EC 800F932C 8C420114 */  lw         $v0, 0x114($v0)
/* AF6F0 800F9330 0040F809 */  jalr       $v0
/* AF6F4 800F9334 00642021 */   addu      $a0, $v1, $a0
/* AF6F8 800F9338 8EA30000 */  lw         $v1, 0x0($s5)
/* AF6FC 800F933C 02002821 */  addu       $a1, $s0, $zero
/* AF700 800F9340 8C62012C */  lw         $v0, 0x12C($v1)
/* AF704 800F9344 02603021 */  addu       $a2, $s3, $zero
/* AF708 800F9348 84440110 */  lh         $a0, 0x110($v0)
/* AF70C 800F934C 02403821 */  addu       $a3, $s2, $zero
/* AF710 800F9350 AFA00010 */  sw         $zero, 0x10($sp)
/* AF714 800F9354 AFA00014 */  sw         $zero, 0x14($sp)
/* AF718 800F9358 8C420114 */  lw         $v0, 0x114($v0)
/* AF71C 800F935C 0040F809 */  jalr       $v0
/* AF720 800F9360 00642021 */   addu      $a0, $v1, $a0
/* AF724 800F9364 8FBF0174 */  lw         $ra, 0x174($sp)
/* AF728 800F9368 8FBE0170 */  lw         $fp, 0x170($sp)
/* AF72C 800F936C 8FB7016C */  lw         $s7, 0x16C($sp)
/* AF730 800F9370 8FB60168 */  lw         $s6, 0x168($sp)
/* AF734 800F9374 8FB50164 */  lw         $s5, 0x164($sp)
/* AF738 800F9378 8FB40160 */  lw         $s4, 0x160($sp)
/* AF73C 800F937C 8FB3015C */  lw         $s3, 0x15C($sp)
/* AF740 800F9380 8FB20158 */  lw         $s2, 0x158($sp)
/* AF744 800F9384 8FB10154 */  lw         $s1, 0x154($sp)
/* AF748 800F9388 8FB00150 */  lw         $s0, 0x150($sp)
/* AF74C 800F938C D7BA0190 */  ldc1       $f26, 0x190($sp)
/* AF750 800F9390 D7B80188 */  ldc1       $f24, 0x188($sp)
/* AF754 800F9394 D7B60180 */  ldc1       $f22, 0x180($sp)
/* AF758 800F9398 D7B40178 */  ldc1       $f20, 0x178($sp)
/* AF75C 800F939C 03E00008 */  jr         $ra
/* AF760 800F93A0 27BD0198 */   addiu     $sp, $sp, 0x198

glabel func_race_800F93A4
/* AF764 800F93A4 27BDFF38 */  addiu      $sp, $sp, -0xC8
/* AF768 800F93A8 AFB200A0 */  sw         $s2, 0xA0($sp)
/* AF76C 800F93AC 00809021 */  addu       $s2, $a0, $zero
/* AF770 800F93B0 AFBF00A4 */  sw         $ra, 0xA4($sp)
/* AF774 800F93B4 AFB1009C */  sw         $s1, 0x9C($sp)
/* AF778 800F93B8 AFB00098 */  sw         $s0, 0x98($sp)
/* AF77C 800F93BC F7BA00C0 */  sdc1       $f26, 0xC0($sp)
/* AF780 800F93C0 F7B800B8 */  sdc1       $f24, 0xB8($sp)
/* AF784 800F93C4 F7B600B0 */  sdc1       $f22, 0xB0($sp)
/* AF788 800F93C8 F7B400A8 */  sdc1       $f20, 0xA8($sp)
/* AF78C 800F93CC 8E430008 */  lw         $v1, 0x8($s2)
/* AF790 800F93D0 8C620008 */  lw         $v0, 0x8($v1)
/* AF794 800F93D4 00002821 */  addu       $a1, $zero, $zero
/* AF798 800F93D8 84440048 */  lh         $a0, 0x48($v0)
/* AF79C 800F93DC 8C42004C */  lw         $v0, 0x4C($v0)
/* AF7A0 800F93E0 0040F809 */  jalr       $v0
/* AF7A4 800F93E4 00642021 */   addu      $a0, $v1, $a0
/* AF7A8 800F93E8 C4400034 */  lwc1       $f0, 0x34($v0)
/* AF7AC 800F93EC 46800020 */  cvt.s.w    $f0, $f0
/* AF7B0 800F93F0 00402821 */  addu       $a1, $v0, $zero
/* AF7B4 800F93F4 C64400F4 */  lwc1       $f4, 0xF4($s2)
/* AF7B8 800F93F8 C6420114 */  lwc1       $f2, 0x114($s2)
/* AF7BC 800F93FC 46002002 */  mul.s      $f0, $f4, $f0
/* AF7C0 800F9400 4480A000 */  mtc1       $zero, $f20
/* AF7C4 800F9404 8E47009C */  lw         $a3, 0x9C($s2)
/* AF7C8 800F9408 8E420000 */  lw         $v0, 0x0($s2)
/* AF7CC 800F940C 24E7FFFE */  addiu      $a3, $a3, -0x2
/* AF7D0 800F9410 46001082 */  mul.s      $f2, $f2, $f0
/* AF7D4 800F9414 8C43012C */  lw         $v1, 0x12C($v0)
/* AF7D8 800F9418 4406A000 */  mfc1       $a2, $f20
/* AF7DC 800F941C 84640100 */  lh         $a0, 0x100($v1)
/* AF7E0 800F9420 C4A00030 */  lwc1       $f0, 0x30($a1)
/* AF7E4 800F9424 46800020 */  cvt.s.w    $f0, $f0
/* AF7E8 800F9428 46002102 */  mul.s      $f4, $f4, $f0
/* AF7EC 800F942C 00442021 */  addu       $a0, $v0, $a0
/* AF7F0 800F9430 8E4200A0 */  lw         $v0, 0xA0($s2)
/* AF7F4 800F9434 C640010C */  lwc1       $f0, 0x10C($s2)
/* AF7F8 800F9438 2442FFFE */  addiu      $v0, $v0, -0x2
/* AF7FC 800F943C 46040002 */  mul.s      $f0, $f0, $f4
/* AF800 800F9440 4600148D */  trunc.w.s  $f18, $f2
/* AF804 800F9444 44119000 */  mfc1       $s1, $f18
/* AF808 800F9448 00511023 */  subu       $v0, $v0, $s1
/* AF80C 800F944C AFA20010 */  sw         $v0, 0x10($sp)
/* AF810 800F9450 AFB10018 */  sw         $s1, 0x18($sp)
/* AF814 800F9454 4600048D */  trunc.w.s  $f18, $f0
/* AF818 800F9458 44109000 */  mfc1       $s0, $f18
/* AF81C 800F945C AFB00014 */  sw         $s0, 0x14($sp)
/* AF820 800F9460 8C620104 */  lw         $v0, 0x104($v1)
/* AF824 800F9464 0040F809 */  jalr       $v0
/* AF828 800F9468 00F03823 */   subu      $a3, $a3, $s0
/* AF82C 800F946C 00101040 */  sll        $v0, $s0, 1
/* AF830 800F9470 00501021 */  addu       $v0, $v0, $s0
/* AF834 800F9474 00021080 */  sll        $v0, $v0, 2
/* AF838 800F9478 00501021 */  addu       $v0, $v0, $s0
/* AF83C 800F947C 00021080 */  sll        $v0, $v0, 2
/* AF840 800F9480 000211C3 */  sra        $v0, $v0, 7
/* AF844 800F9484 24420002 */  addiu      $v0, $v0, 0x2
/* AF848 800F9488 C6420078 */  lwc1       $f2, 0x78($s2)
/* AF84C 800F948C 8E43009C */  lw         $v1, 0x9C($s2)
/* AF850 800F9490 3C01800D */  lui        $at, %hi(D_race_800CCF2C)
/* AF854 800F9494 C420CF2C */  lwc1       $f0, %lo(D_race_800CCF2C)($at)
/* AF858 800F9498 00621823 */  subu       $v1, $v1, $v0
/* AF85C 800F949C 4483D000 */  mtc1       $v1, $f26
/* AF860 800F94A0 4680D6A0 */  cvt.s.w    $f26, $f26
/* AF864 800F94A4 00111040 */  sll        $v0, $s1, 1
/* AF868 800F94A8 00511021 */  addu       $v0, $v0, $s1
/* AF86C 800F94AC 00021080 */  sll        $v0, $v0, 2
/* AF870 800F94B0 00511021 */  addu       $v0, $v0, $s1
/* AF874 800F94B4 00021080 */  sll        $v0, $v0, 2
/* AF878 800F94B8 000211C3 */  sra        $v0, $v0, 7
/* AF87C 800F94BC 46001582 */  mul.s      $f22, $f2, $f0
/* AF880 800F94C0 8E4300A0 */  lw         $v1, 0xA0($s2)
/* AF884 800F94C4 24420002 */  addiu      $v0, $v0, 0x2
/* AF888 800F94C8 00621823 */  subu       $v1, $v1, $v0
/* AF88C 800F94CC 4483C000 */  mtc1       $v1, $f24
/* AF890 800F94D0 4680C620 */  cvt.s.w    $f24, $f24
/* AF894 800F94D4 4614B03C */  c.lt.s     $f22, $f20
/* AF898 800F94D8 00000000 */  nop
/* AF89C 800F94DC 45000003 */  bc1f       .Lrace_800F94EC
/* AF8A0 800F94E0 00000000 */   nop
/* AF8A4 800F94E4 0803E541 */  j          .Lrace_800F9504
/* AF8A8 800F94E8 4600A586 */   mov.s     $f22, $f20
.Lrace_800F94EC:
/* AF8AC 800F94EC 3C01800D */  lui        $at, %hi(D_race_800CCF30)
/* AF8B0 800F94F0 C420CF30 */  lwc1       $f0, %lo(D_race_800CCF30)($at)
/* AF8B4 800F94F4 4616003C */  c.lt.s     $f0, $f22
/* AF8B8 800F94F8 00000000 */  nop
/* AF8BC 800F94FC 45030001 */  bc1tl      .Lrace_800F9504
/* AF8C0 800F9500 46000586 */   mov.s     $f22, $f0
.Lrace_800F9504:
/* AF8C4 800F9504 00002021 */  addu       $a0, $zero, $zero
/* AF8C8 800F9508 240500FF */  addiu      $a1, $zero, 0xFF
/* AF8CC 800F950C 27A30020 */  addiu      $v1, $sp, 0x20
.Lrace_800F9510:
/* AF8D0 800F9510 AC600008 */  sw         $zero, 0x8($v1)
/* AF8D4 800F9514 AC60000C */  sw         $zero, 0xC($v1)
/* AF8D8 800F9518 AC600010 */  sw         $zero, 0x10($v1)
/* AF8DC 800F951C A0650017 */  sb         $a1, 0x17($v1)
/* AF8E0 800F9520 24840001 */  addiu      $a0, $a0, 0x1
/* AF8E4 800F9524 28820005 */  slti       $v0, $a0, 0x5
/* AF8E8 800F9528 1440FFF9 */  bnez       $v0, .Lrace_800F9510
/* AF8EC 800F952C 24630018 */   addiu     $v1, $v1, 0x18
/* AF8F0 800F9530 3C01800D */  lui        $at, %hi(D_race_800CCF34)
/* AF8F4 800F9534 C420CF34 */  lwc1       $f0, %lo(D_race_800CCF34)($at)
/* AF8F8 800F9538 4600B580 */  add.s      $f22, $f22, $f0
/* AF8FC 800F953C 0C006D60 */  jal        sinf
/* AF900 800F9540 4600B306 */   mov.s     $f12, $f22
/* AF904 800F9544 3C01800D */  lui        $at, %hi(D_race_800CCF38)
/* AF908 800F9548 C434CF38 */  lwc1       $f20, %lo(D_race_800CCF38)($at)
/* AF90C 800F954C 4600B306 */  mov.s      $f12, $f22
/* AF910 800F9550 E7A00024 */  swc1       $f0, 0x24($sp)
/* AF914 800F9554 0C006BCC */  jal        cosf
/* AF918 800F9558 4614B580 */   add.s     $f22, $f22, $f20
/* AF91C 800F955C E7A00020 */  swc1       $f0, 0x20($sp)
/* AF920 800F9560 0C006D60 */  jal        sinf
/* AF924 800F9564 4600B306 */   mov.s     $f12, $f22
/* AF928 800F9568 4600B306 */  mov.s      $f12, $f22
/* AF92C 800F956C 4614B580 */  add.s      $f22, $f22, $f20
/* AF930 800F9570 0C006BCC */  jal        cosf
/* AF934 800F9574 E7A00054 */   swc1      $f0, 0x54($sp)
/* AF938 800F9578 E7A00050 */  swc1       $f0, 0x50($sp)
/* AF93C 800F957C 0C006D60 */  jal        sinf
/* AF940 800F9580 4600B306 */   mov.s     $f12, $f22
/* AF944 800F9584 4600B306 */  mov.s      $f12, $f22
/* AF948 800F9588 0C006BCC */  jal        cosf
/* AF94C 800F958C E7A0003C */   swc1      $f0, 0x3C($sp)
/* AF950 800F9590 C7AE0020 */  lwc1       $f14, 0x20($sp)
/* AF954 800F9594 44806000 */  mtc1       $zero, $f12
/* AF958 800F9598 460C7402 */  mul.s      $f16, $f14, $f12
/* AF95C 800F959C C7AA0024 */  lwc1       $f10, 0x24($sp)
/* AF960 800F95A0 00002021 */  addu       $a0, $zero, $zero
/* AF964 800F95A4 460C5302 */  mul.s      $f12, $f10, $f12
/* AF968 800F95A8 27A30020 */  addiu      $v1, $sp, 0x20
/* AF96C 800F95AC 3C01800D */  lui        $at, %hi(D_race_800CCF3C)
/* AF970 800F95B0 C422CF3C */  lwc1       $f2, %lo(D_race_800CCF3C)($at)
/* AF974 800F95B4 3C01800D */  lui        $at, %hi(D_race_800CCF40)
/* AF978 800F95B8 C428CF40 */  lwc1       $f8, %lo(D_race_800CCF40)($at)
/* AF97C 800F95BC C7A6003C */  lwc1       $f6, 0x3C($sp)
/* AF980 800F95C0 46027382 */  mul.s      $f14, $f14, $f2
/* AF984 800F95C4 C7A40054 */  lwc1       $f4, 0x54($sp)
/* AF988 800F95C8 24020096 */  addiu      $v0, $zero, 0x96
/* AF98C 800F95CC E7A00038 */  swc1       $f0, 0x38($sp)
/* AF990 800F95D0 A3A2004C */  sb         $v0, 0x4C($sp)
/* AF994 800F95D4 46025282 */  mul.s      $f10, $f10, $f2
/* AF998 800F95D8 A3A20034 */  sb         $v0, 0x34($sp)
/* AF99C 800F95DC A3A2004D */  sb         $v0, 0x4D($sp)
/* AF9A0 800F95E0 A3A20035 */  sb         $v0, 0x35($sp)
/* AF9A4 800F95E4 A3A2004E */  sb         $v0, 0x4E($sp)
/* AF9A8 800F95E8 46080002 */  mul.s      $f0, $f0, $f8
/* AF9AC 800F95EC A3A20036 */  sb         $v0, 0x36($sp)
/* AF9B0 800F95F0 240200FF */  addiu      $v0, $zero, 0xFF
/* AF9B4 800F95F4 A3A20094 */  sb         $v0, 0x94($sp)
/* AF9B8 800F95F8 A3A20064 */  sb         $v0, 0x64($sp)
/* AF9BC 800F95FC 46083182 */  mul.s      $f6, $f6, $f8
/* AF9C0 800F9600 A3A20095 */  sb         $v0, 0x95($sp)
/* AF9C4 800F9604 A3A20065 */  sb         $v0, 0x65($sp)
/* AF9C8 800F9608 A3A20096 */  sb         $v0, 0x96($sp)
/* AF9CC 800F960C A3A20066 */  sb         $v0, 0x66($sp)
/* AF9D0 800F9610 46082102 */  mul.s      $f4, $f4, $f8
/* AF9D4 800F9614 C7A20050 */  lwc1       $f2, 0x50($sp)
/* AF9D8 800F9618 240200C8 */  addiu      $v0, $zero, 0xC8
/* AF9DC 800F961C A3A2007C */  sb         $v0, 0x7C($sp)
/* AF9E0 800F9620 A3A2007D */  sb         $v0, 0x7D($sp)
/* AF9E4 800F9624 A3A2007E */  sb         $v0, 0x7E($sp)
/* AF9E8 800F9628 46081082 */  mul.s      $f2, $f2, $f8
/* AF9EC 800F962C E7B00068 */  swc1       $f16, 0x68($sp)
/* AF9F0 800F9630 E7AC006C */  swc1       $f12, 0x6C($sp)
/* AF9F4 800F9634 E7AE0020 */  swc1       $f14, 0x20($sp)
/* AF9F8 800F9638 E7AA0024 */  swc1       $f10, 0x24($sp)
/* AF9FC 800F963C E7A00038 */  swc1       $f0, 0x38($sp)
/* AFA00 800F9640 E7A6003C */  swc1       $f6, 0x3C($sp)
/* AFA04 800F9644 E7A40054 */  swc1       $f4, 0x54($sp)
/* AFA08 800F9648 E7A20050 */  swc1       $f2, 0x50($sp)
.Lrace_800F964C:
/* AFA0C 800F964C C64200F4 */  lwc1       $f2, 0xF4($s2)
/* AFA10 800F9650 C4600000 */  lwc1       $f0, 0x0($v1)
/* AFA14 800F9654 46001082 */  mul.s      $f2, $f2, $f0
/* AFA18 800F9658 C6400104 */  lwc1       $f0, 0x104($s2)
/* AFA1C 800F965C 46020002 */  mul.s      $f0, $f0, $f2
/* AFA20 800F9660 4600D000 */  add.s      $f0, $f26, $f0
/* AFA24 800F9664 E4600000 */  swc1       $f0, 0x0($v1)
/* AFA28 800F9668 C64200F4 */  lwc1       $f2, 0xF4($s2)
/* AFA2C 800F966C C4600004 */  lwc1       $f0, 0x4($v1)
/* AFA30 800F9670 46001082 */  mul.s      $f2, $f2, $f0
/* AFA34 800F9674 C6400114 */  lwc1       $f0, 0x114($s2)
/* AFA38 800F9678 46020002 */  mul.s      $f0, $f0, $f2
/* AFA3C 800F967C 4600C000 */  add.s      $f0, $f24, $f0
/* AFA40 800F9680 24840001 */  addiu      $a0, $a0, 0x1
/* AFA44 800F9684 28820004 */  slti       $v0, $a0, 0x4
/* AFA48 800F9688 E4600004 */  swc1       $f0, 0x4($v1)
/* AFA4C 800F968C 1440FFEF */  bnez       $v0, .Lrace_800F964C
/* AFA50 800F9690 24630018 */   addiu     $v1, $v1, 0x18
/* AFA54 800F9694 C7A00020 */  lwc1       $f0, 0x20($sp)
/* AFA58 800F9698 C7A20024 */  lwc1       $f2, 0x24($sp)
/* AFA5C 800F969C 27A50038 */  addiu      $a1, $sp, 0x38
/* AFA60 800F96A0 E7A00080 */  swc1       $f0, 0x80($sp)
/* AFA64 800F96A4 E7A20084 */  swc1       $f2, 0x84($sp)
/* AFA68 800F96A8 8E430000 */  lw         $v1, 0x0($s2)
/* AFA6C 800F96AC 27A60020 */  addiu      $a2, $sp, 0x20
/* AFA70 800F96B0 8C62012C */  lw         $v0, 0x12C($v1)
/* AFA74 800F96B4 27B00068 */  addiu      $s0, $sp, 0x68
/* AFA78 800F96B8 84440110 */  lh         $a0, 0x110($v0)
/* AFA7C 800F96BC 02003821 */  addu       $a3, $s0, $zero
/* AFA80 800F96C0 AFA00010 */  sw         $zero, 0x10($sp)
/* AFA84 800F96C4 AFA00014 */  sw         $zero, 0x14($sp)
/* AFA88 800F96C8 8C420114 */  lw         $v0, 0x114($v0)
/* AFA8C 800F96CC 0040F809 */  jalr       $v0
/* AFA90 800F96D0 00642021 */   addu      $a0, $v1, $a0
/* AFA94 800F96D4 8E430000 */  lw         $v1, 0x0($s2)
/* AFA98 800F96D8 27A50050 */  addiu      $a1, $sp, 0x50
/* AFA9C 800F96DC 8C62012C */  lw         $v0, 0x12C($v1)
/* AFAA0 800F96E0 02003021 */  addu       $a2, $s0, $zero
/* AFAA4 800F96E4 84440110 */  lh         $a0, 0x110($v0)
/* AFAA8 800F96E8 27A70080 */  addiu      $a3, $sp, 0x80
/* AFAAC 800F96EC AFA00010 */  sw         $zero, 0x10($sp)
/* AFAB0 800F96F0 AFA00014 */  sw         $zero, 0x14($sp)
/* AFAB4 800F96F4 8C420114 */  lw         $v0, 0x114($v0)
/* AFAB8 800F96F8 0040F809 */  jalr       $v0
/* AFABC 800F96FC 00642021 */   addu      $a0, $v1, $a0
/* AFAC0 800F9700 8FBF00A4 */  lw         $ra, 0xA4($sp)
/* AFAC4 800F9704 8FB200A0 */  lw         $s2, 0xA0($sp)
/* AFAC8 800F9708 8FB1009C */  lw         $s1, 0x9C($sp)
/* AFACC 800F970C 8FB00098 */  lw         $s0, 0x98($sp)
/* AFAD0 800F9710 D7BA00C0 */  ldc1       $f26, 0xC0($sp)
/* AFAD4 800F9714 D7B800B8 */  ldc1       $f24, 0xB8($sp)
/* AFAD8 800F9718 D7B600B0 */  ldc1       $f22, 0xB0($sp)
/* AFADC 800F971C D7B400A8 */  ldc1       $f20, 0xA8($sp)
/* AFAE0 800F9720 03E00008 */  jr         $ra
/* AFAE4 800F9724 27BD00C8 */   addiu     $sp, $sp, 0xC8

glabel func_race_800F9728
/* AFAE8 800F9728 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AFAEC 800F972C AFB00028 */  sw         $s0, 0x28($sp)
/* AFAF0 800F9730 00808021 */  addu       $s0, $a0, $zero
/* AFAF4 800F9734 AFB1002C */  sw         $s1, 0x2C($sp)
/* AFAF8 800F9738 00C08821 */  addu       $s1, $a2, $zero
/* AFAFC 800F973C 00A02021 */  addu       $a0, $a1, $zero
/* AFB00 800F9740 AFBF0034 */  sw         $ra, 0x34($sp)
/* AFB04 800F9744 AFB20030 */  sw         $s2, 0x30($sp)
/* AFB08 800F9748 8E050010 */  lw         $a1, 0x10($s0)
/* AFB0C 800F974C 0C03DD2C */  jal        func_race_800F74B0
/* AFB10 800F9750 00E09021 */   addu      $s2, $a3, $zero
/* AFB14 800F9754 8E030010 */  lw         $v1, 0x10($s0)
/* AFB18 800F9758 94620008 */  lhu        $v0, 0x8($v1)
/* AFB1C 800F975C 94630006 */  lhu        $v1, 0x6($v1)
/* AFB20 800F9760 00431023 */  subu       $v0, $v0, $v1
/* AFB24 800F9764 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* AFB28 800F9768 24030007 */  addiu      $v1, $zero, 0x7
/* AFB2C 800F976C 14430005 */  bne        $v0, $v1, .Lrace_800F9784
/* AFB30 800F9770 00000000 */   nop
/* AFB34 800F9774 8E0200E8 */  lw         $v0, 0xE8($s0)
/* AFB38 800F9778 8E0300E4 */  lw         $v1, 0xE4($s0)
/* AFB3C 800F977C 00431023 */  subu       $v0, $v0, $v1
/* AFB40 800F9780 02228821 */  addu       $s1, $s1, $v0
.Lrace_800F9784:
/* AFB44 800F9784 8E040000 */  lw         $a0, 0x0($s0)
/* AFB48 800F9788 8C83012C */  lw         $v1, 0x12C($a0)
/* AFB4C 800F978C 846200D8 */  lh         $v0, 0xD8($v1)
/* AFB50 800F9790 AFB20010 */  sw         $s2, 0x10($sp)
/* AFB54 800F9794 C60000EC */  lwc1       $f0, 0xEC($s0)
/* AFB58 800F9798 C602010C */  lwc1       $f2, 0x10C($s0)
/* AFB5C 800F979C 46020002 */  mul.s      $f0, $f0, $f2
/* AFB60 800F97A0 E7A00014 */  swc1       $f0, 0x14($sp)
/* AFB64 800F97A4 C60200EC */  lwc1       $f2, 0xEC($s0)
/* AFB68 800F97A8 C6000114 */  lwc1       $f0, 0x114($s0)
/* AFB6C 800F97AC 46001082 */  mul.s      $f2, $f2, $f0
/* AFB70 800F97B0 00822021 */  addu       $a0, $a0, $v0
/* AFB74 800F97B4 AFA0001C */  sw         $zero, 0x1C($sp)
/* AFB78 800F97B8 AFA00020 */  sw         $zero, 0x20($sp)
/* AFB7C 800F97BC E7A20018 */  swc1       $f2, 0x18($sp)
/* AFB80 800F97C0 8E050010 */  lw         $a1, 0x10($s0)
/* AFB84 800F97C4 8C6200DC */  lw         $v0, 0xDC($v1)
/* AFB88 800F97C8 8E060020 */  lw         $a2, 0x20($s0)
/* AFB8C 800F97CC 0040F809 */  jalr       $v0
/* AFB90 800F97D0 02203821 */   addu      $a3, $s1, $zero
/* AFB94 800F97D4 02201021 */  addu       $v0, $s1, $zero
/* AFB98 800F97D8 8FBF0034 */  lw         $ra, 0x34($sp)
/* AFB9C 800F97DC 8FB20030 */  lw         $s2, 0x30($sp)
/* AFBA0 800F97E0 8FB1002C */  lw         $s1, 0x2C($sp)
/* AFBA4 800F97E4 8FB00028 */  lw         $s0, 0x28($sp)
/* AFBA8 800F97E8 03E00008 */  jr         $ra
/* AFBAC 800F97EC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800F97F0
/* AFBB0 800F97F0 44800000 */  mtc1       $zero, $f0
/* AFBB4 800F97F4 24020001 */  addiu      $v0, $zero, 0x1
/* AFBB8 800F97F8 AC80002C */  sw         $zero, 0x2C($a0)
/* AFBBC 800F97FC AC82013C */  sw         $v0, 0x13C($a0)
/* AFBC0 800F9800 AC800000 */  sw         $zero, 0x0($a0)
/* AFBC4 800F9804 AC800004 */  sw         $zero, 0x4($a0)
/* AFBC8 800F9808 AC800008 */  sw         $zero, 0x8($a0)
/* AFBCC 800F980C AC800010 */  sw         $zero, 0x10($a0)
/* AFBD0 800F9810 AC800020 */  sw         $zero, 0x20($a0)
/* AFBD4 800F9814 AC800024 */  sw         $zero, 0x24($a0)
/* AFBD8 800F9818 AC800028 */  sw         $zero, 0x28($a0)
/* AFBDC 800F981C AC800034 */  sw         $zero, 0x34($a0)
/* AFBE0 800F9820 A0800038 */  sb         $zero, 0x38($a0)
/* AFBE4 800F9824 A0800039 */  sb         $zero, 0x39($a0)
/* AFBE8 800F9828 A080003A */  sb         $zero, 0x3A($a0)
/* AFBEC 800F982C A080003B */  sb         $zero, 0x3B($a0)
/* AFBF0 800F9830 A080003C */  sb         $zero, 0x3C($a0)
/* AFBF4 800F9834 AC800070 */  sw         $zero, 0x70($a0)
/* AFBF8 800F9838 AC800074 */  sw         $zero, 0x74($a0)
/* AFBFC 800F983C AC80007C */  sw         $zero, 0x7C($a0)
/* AFC00 800F9840 AC800080 */  sw         $zero, 0x80($a0)
/* AFC04 800F9844 AC800084 */  sw         $zero, 0x84($a0)
/* AFC08 800F9848 AC800088 */  sw         $zero, 0x88($a0)
/* AFC0C 800F984C AC80008C */  sw         $zero, 0x8C($a0)
/* AFC10 800F9850 AC800090 */  sw         $zero, 0x90($a0)
/* AFC14 800F9854 AC8000E4 */  sw         $zero, 0xE4($a0)
/* AFC18 800F9858 AC8000E8 */  sw         $zero, 0xE8($a0)
/* AFC1C 800F985C AC8000FC */  sw         $zero, 0xFC($a0)
/* AFC20 800F9860 AC800100 */  sw         $zero, 0x100($a0)
/* AFC24 800F9864 AC800118 */  sw         $zero, 0x118($a0)
/* AFC28 800F9868 E4800078 */  swc1       $f0, 0x78($a0)
/* AFC2C 800F986C E4800104 */  swc1       $f0, 0x104($a0)
/* AFC30 800F9870 E4800128 */  swc1       $f0, 0x128($a0)
/* AFC34 800F9874 E4800124 */  swc1       $f0, 0x124($a0)
/* AFC38 800F9878 E4800120 */  swc1       $f0, 0x120($a0)
/* AFC3C 800F987C E480011C */  swc1       $f0, 0x11C($a0)
/* AFC40 800F9880 E4800138 */  swc1       $f0, 0x138($a0)
/* AFC44 800F9884 E4800134 */  swc1       $f0, 0x134($a0)
/* AFC48 800F9888 E4800130 */  swc1       $f0, 0x130($a0)
/* AFC4C 800F988C 03E00008 */  jr         $ra
/* AFC50 800F9890 E480012C */   swc1      $f0, 0x12C($a0)

glabel func_race_800F9894
/* AFC54 800F9894 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AFC58 800F9898 AFB1001C */  sw         $s1, 0x1C($sp)
/* AFC5C 800F989C 00808821 */  addu       $s1, $a0, $zero
/* AFC60 800F98A0 AFB20020 */  sw         $s2, 0x20($sp)
/* AFC64 800F98A4 00A09021 */  addu       $s2, $a1, $zero
/* AFC68 800F98A8 AFB00018 */  sw         $s0, 0x18($sp)
/* AFC6C 800F98AC 00C08021 */  addu       $s0, $a2, $zero
/* AFC70 800F98B0 AFB30024 */  sw         $s3, 0x24($sp)
/* AFC74 800F98B4 00E09821 */  addu       $s3, $a3, $zero
/* AFC78 800F98B8 27A40010 */  addiu      $a0, $sp, 0x10
/* AFC7C 800F98BC 3C028013 */  lui        $v0, %hi(D_race_801321D0)
/* AFC80 800F98C0 8C4521D0 */  lw         $a1, %lo(D_race_801321D0)($v0)
/* AFC84 800F98C4 AFBF0028 */  sw         $ra, 0x28($sp)
/* AFC88 800F98C8 0C000708 */  jal        func_80001C20
/* AFC8C 800F98CC 24060008 */   addiu     $a2, $zero, 0x8
/* AFC90 800F98D0 8E020000 */  lw         $v0, 0x0($s0)
/* AFC94 800F98D4 14400003 */  bnez       $v0, .Lrace_800F98E4
/* AFC98 800F98D8 27A50010 */   addiu     $a1, $sp, 0x10
/* AFC9C 800F98DC 0803E63C */  j          .Lrace_800F98F0
/* AFCA0 800F98E0 00001821 */   addu      $v1, $zero, $zero
.Lrace_800F98E4:
/* AFCA4 800F98E4 0C016427 */  jal        func_8005909C
/* AFCA8 800F98E8 02002021 */   addu      $a0, $s0, $zero
/* AFCAC 800F98EC 00401821 */  addu       $v1, $v0, $zero
.Lrace_800F98F0:
/* AFCB0 800F98F0 27A40010 */  addiu      $a0, $sp, 0x10
/* AFCB4 800F98F4 3C028013 */  lui        $v0, %hi(D_race_801321D4)
/* AFCB8 800F98F8 8C4521D4 */  lw         $a1, %lo(D_race_801321D4)($v0)
/* AFCBC 800F98FC 24060008 */  addiu      $a2, $zero, 0x8
/* AFCC0 800F9900 0C000708 */  jal        func_80001C20
/* AFCC4 800F9904 AE230020 */   sw        $v1, 0x20($s1)
/* AFCC8 800F9908 8E020000 */  lw         $v0, 0x0($s0)
/* AFCCC 800F990C 14400003 */  bnez       $v0, .Lrace_800F991C
/* AFCD0 800F9910 27A50010 */   addiu     $a1, $sp, 0x10
/* AFCD4 800F9914 0803E649 */  j          .Lrace_800F9924
/* AFCD8 800F9918 00001021 */   addu      $v0, $zero, $zero
.Lrace_800F991C:
/* AFCDC 800F991C 0C016427 */  jal        func_8005909C
/* AFCE0 800F9920 02002021 */   addu      $a0, $s0, $zero
.Lrace_800F9924:
/* AFCE4 800F9924 02202021 */  addu       $a0, $s1, $zero
/* AFCE8 800F9928 2405FFFF */  addiu      $a1, $zero, -0x1
/* AFCEC 800F992C AE220024 */  sw         $v0, 0x24($s1)
/* AFCF0 800F9930 24020001 */  addiu      $v0, $zero, 0x1
/* AFCF4 800F9934 AE20002C */  sw         $zero, 0x2C($s1)
/* AFCF8 800F9938 AE200034 */  sw         $zero, 0x34($s1)
/* AFCFC 800F993C AE200078 */  sw         $zero, 0x78($s1)
/* AFD00 800F9940 A220003A */  sb         $zero, 0x3A($s1)
/* AFD04 800F9944 A222003C */  sb         $v0, 0x3C($s1)
/* AFD08 800F9948 0C03E7DE */  jal        func_race_800F9F78
/* AFD0C 800F994C AE200118 */   sw        $zero, 0x118($s1)
/* AFD10 800F9950 AE320000 */  sw         $s2, 0x0($s1)
/* AFD14 800F9954 8FA20040 */  lw         $v0, 0x40($sp)
/* AFD18 800F9958 AE330010 */  sw         $s3, 0x10($s1)
/* AFD1C 800F995C AE220008 */  sw         $v0, 0x8($s1)
/* AFD20 800F9960 8FA2004C */  lw         $v0, 0x4C($sp)
/* AFD24 800F9964 AE22000C */  sw         $v0, 0xC($s1)
/* AFD28 800F9968 8FA20044 */  lw         $v0, 0x44($sp)
/* AFD2C 800F996C AE220028 */  sw         $v0, 0x28($s1)
/* AFD30 800F9970 8FA20048 */  lw         $v0, 0x48($sp)
/* AFD34 800F9974 AE220030 */  sw         $v0, 0x30($s1)
/* AFD38 800F9978 8FA20050 */  lw         $v0, 0x50($sp)
/* AFD3C 800F997C 02401821 */  addu       $v1, $s2, $zero
/* AFD40 800F9980 AE220004 */  sw         $v0, 0x4($s1)
/* AFD44 800F9984 8C62012C */  lw         $v0, 0x12C($v1)
/* AFD48 800F9988 84440030 */  lh         $a0, 0x30($v0)
/* AFD4C 800F998C 8C420034 */  lw         $v0, 0x34($v0)
/* AFD50 800F9990 0040F809 */  jalr       $v0
/* AFD54 800F9994 00642021 */   addu      $a0, $v1, $a0
/* AFD58 800F9998 8E230000 */  lw         $v1, 0x0($s1)
/* AFD5C 800F999C 8C65012C */  lw         $a1, 0x12C($v1)
/* AFD60 800F99A0 84A40030 */  lh         $a0, 0x30($a1)
/* AFD64 800F99A4 00642021 */  addu       $a0, $v1, $a0
/* AFD68 800F99A8 8CA30034 */  lw         $v1, 0x34($a1)
/* AFD6C 800F99AC 94500026 */  lhu        $s0, 0x26($v0)
/* AFD70 800F99B0 0060F809 */  jalr       $v1
/* AFD74 800F99B4 00000000 */   nop
/* AFD78 800F99B8 02202021 */  addu       $a0, $s1, $zero
/* AFD7C 800F99BC 94460028 */  lhu        $a2, 0x28($v0)
/* AFD80 800F99C0 0C03E7B3 */  jal        func_race_800F9ECC
/* AFD84 800F99C4 02002821 */   addu      $a1, $s0, $zero
/* AFD88 800F99C8 8FA20058 */  lw         $v0, 0x58($sp)
/* AFD8C 800F99CC 92250038 */  lbu        $a1, 0x38($s1)
/* AFD90 800F99D0 A2220039 */  sb         $v0, 0x39($s1)
/* AFD94 800F99D4 8FA20054 */  lw         $v0, 0x54($sp)
/* AFD98 800F99D8 02202021 */  addu       $a0, $s1, $zero
/* AFD9C 800F99DC AE200034 */  sw         $zero, 0x34($s1)
/* AFDA0 800F99E0 0C03E683 */  jal        func_race_800F9A0C
/* AFDA4 800F99E4 A222003A */   sb        $v0, 0x3A($s1)
/* AFDA8 800F99E8 24020001 */  addiu      $v0, $zero, 0x1
/* AFDAC 800F99EC AE22013C */  sw         $v0, 0x13C($s1)
/* AFDB0 800F99F0 8FBF0028 */  lw         $ra, 0x28($sp)
/* AFDB4 800F99F4 8FB30024 */  lw         $s3, 0x24($sp)
/* AFDB8 800F99F8 8FB20020 */  lw         $s2, 0x20($sp)
/* AFDBC 800F99FC 8FB1001C */  lw         $s1, 0x1C($sp)
/* AFDC0 800F9A00 8FB00018 */  lw         $s0, 0x18($sp)
/* AFDC4 800F9A04 03E00008 */  jr         $ra
/* AFDC8 800F9A08 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800F9A0C
/* AFDCC 800F9A0C 3C01800D */  lui        $at, %hi(D_race_800CCF44)
/* AFDD0 800F9A10 C420CF44 */  lwc1       $f0, %lo(D_race_800CCF44)($at)
/* AFDD4 800F9A14 3C01800D */  lui        $at, %hi(D_race_800CCF48)
/* AFDD8 800F9A18 C424CF48 */  lwc1       $f4, %lo(D_race_800CCF48)($at)
/* AFDDC 800F9A1C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AFDE0 800F9A20 AFB40028 */  sw         $s4, 0x28($sp)
/* AFDE4 800F9A24 0080A021 */  addu       $s4, $a0, $zero
/* AFDE8 800F9A28 AFBF002C */  sw         $ra, 0x2C($sp)
/* AFDEC 800F9A2C AFB30024 */  sw         $s3, 0x24($sp)
/* AFDF0 800F9A30 AFB20020 */  sw         $s2, 0x20($sp)
/* AFDF4 800F9A34 AFB1001C */  sw         $s1, 0x1C($sp)
/* AFDF8 800F9A38 AFB00018 */  sw         $s0, 0x18($sp)
/* AFDFC 800F9A3C F7B40030 */  sdc1       $f20, 0x30($sp)
/* AFE00 800F9A40 8E8200FC */  lw         $v0, 0xFC($s4)
/* AFE04 800F9A44 C68200FC */  lwc1       $f2, 0xFC($s4)
/* AFE08 800F9A48 468010A0 */  cvt.s.w    $f2, $f2
/* AFE0C 800F9A4C E68000EC */  swc1       $f0, 0xEC($s4)
/* AFE10 800F9A50 3C01800D */  lui        $at, %hi(D_race_800CCF4C)
/* AFE14 800F9A54 C420CF4C */  lwc1       $f0, %lo(D_race_800CCF4C)($at)
/* AFE18 800F9A58 46041082 */  mul.s      $f2, $f2, $f4
/* AFE1C 800F9A5C A2850038 */  sb         $a1, 0x38($s4)
/* AFE20 800F9A60 E68000F0 */  swc1       $f0, 0xF0($s4)
/* AFE24 800F9A64 E68000F4 */  swc1       $f0, 0xF4($s4)
/* AFE28 800F9A68 E68000F8 */  swc1       $f0, 0xF8($s4)
/* AFE2C 800F9A6C 4600118D */  trunc.w.s  $f6, $f2
/* AFE30 800F9A70 44033000 */  mfc1       $v1, $f6
/* AFE34 800F9A74 00431023 */  subu       $v0, $v0, $v1
/* AFE38 800F9A78 AE830094 */  sw         $v1, 0x94($s4)
/* AFE3C 800F9A7C 30A300FF */  andi       $v1, $a1, 0xFF
/* AFE40 800F9A80 AE82009C */  sw         $v0, 0x9C($s4)
/* AFE44 800F9A84 24020001 */  addiu      $v0, $zero, 0x1
/* AFE48 800F9A88 10620027 */  beq        $v1, $v0, .Lrace_800F9B28
/* AFE4C 800F9A8C 28620002 */   slti      $v0, $v1, 0x2
/* AFE50 800F9A90 10400005 */  beqz       $v0, .Lrace_800F9AA8
/* AFE54 800F9A94 24020002 */   addiu     $v0, $zero, 0x2
/* AFE58 800F9A98 10600103 */  beqz       $v1, .Lrace_800F9EA8
/* AFE5C 800F9A9C 00000000 */   nop
/* AFE60 800F9AA0 0803E6DC */  j          .Lrace_800F9B70
/* AFE64 800F9AA4 02802021 */   addu      $a0, $s4, $zero
.Lrace_800F9AA8:
/* AFE68 800F9AA8 10620005 */  beq        $v1, $v0, .Lrace_800F9AC0
/* AFE6C 800F9AAC 24020003 */   addiu     $v0, $zero, 0x3
/* AFE70 800F9AB0 1062000F */  beq        $v1, $v0, .Lrace_800F9AF0
/* AFE74 800F9AB4 00000000 */   nop
/* AFE78 800F9AB8 0803E6DC */  j          .Lrace_800F9B70
/* AFE7C 800F9ABC 02802021 */   addu      $a0, $s4, $zero
.Lrace_800F9AC0:
/* AFE80 800F9AC0 3C01800D */  lui        $at, %hi(D_race_800CCF50)
/* AFE84 800F9AC4 C422CF50 */  lwc1       $f2, %lo(D_race_800CCF50)($at)
/* AFE88 800F9AC8 C6800100 */  lwc1       $f0, 0x100($s4)
/* AFE8C 800F9ACC 46800020 */  cvt.s.w    $f0, $f0
/* AFE90 800F9AD0 46020002 */  mul.s      $f0, $f0, $f2
/* AFE94 800F9AD4 8E820100 */  lw         $v0, 0x100($s4)
/* AFE98 800F9AD8 00021043 */  sra        $v0, $v0, 1
/* AFE9C 800F9ADC AE8200A0 */  sw         $v0, 0xA0($s4)
/* AFEA0 800F9AE0 4600018D */  trunc.w.s  $f6, $f0
/* AFEA4 800F9AE4 E6860098 */  swc1       $f6, 0x98($s4)
/* AFEA8 800F9AE8 0803E6DC */  j          .Lrace_800F9B70
/* AFEAC 800F9AEC 02802021 */   addu      $a0, $s4, $zero
.Lrace_800F9AF0:
/* AFEB0 800F9AF0 8E830100 */  lw         $v1, 0x100($s4)
/* AFEB4 800F9AF4 3C01800D */  lui        $at, %hi(D_race_800CCF54)
/* AFEB8 800F9AF8 C422CF54 */  lwc1       $f2, %lo(D_race_800CCF54)($at)
/* AFEBC 800F9AFC 44830000 */  mtc1       $v1, $f0
/* AFEC0 800F9B00 46800020 */  cvt.s.w    $f0, $f0
/* AFEC4 800F9B04 46020002 */  mul.s      $f0, $f0, $f2
/* AFEC8 800F9B08 00601021 */  addu       $v0, $v1, $zero
/* AFECC 800F9B0C 00021043 */  sra        $v0, $v0, 1
/* AFED0 800F9B10 AE820098 */  sw         $v0, 0x98($s4)
/* AFED4 800F9B14 4600018D */  trunc.w.s  $f6, $f0
/* AFED8 800F9B18 44023000 */  mfc1       $v0, $f6
/* AFEDC 800F9B1C 00621823 */  subu       $v1, $v1, $v0
/* AFEE0 800F9B20 0803E6DB */  j          .Lrace_800F9B6C
/* AFEE4 800F9B24 AE8300A0 */   sw        $v1, 0xA0($s4)
.Lrace_800F9B28:
/* AFEE8 800F9B28 C6820100 */  lwc1       $f2, 0x100($s4)
/* AFEEC 800F9B2C 468010A0 */  cvt.s.w    $f2, $f2
/* AFEF0 800F9B30 3C01800D */  lui        $at, %hi(D_race_800CCF58)
/* AFEF4 800F9B34 C420CF58 */  lwc1       $f0, %lo(D_race_800CCF58)($at)
/* AFEF8 800F9B38 3C01800D */  lui        $at, %hi(D_race_800CCF5C)
/* AFEFC 800F9B3C C424CF5C */  lwc1       $f4, %lo(D_race_800CCF5C)($at)
/* AFF00 800F9B40 8E820100 */  lw         $v0, 0x100($s4)
/* AFF04 800F9B44 46041082 */  mul.s      $f2, $f2, $f4
/* AFF08 800F9B48 E68000F8 */  swc1       $f0, 0xF8($s4)
/* AFF0C 800F9B4C E68000F4 */  swc1       $f0, 0xF4($s4)
/* AFF10 800F9B50 E68000F0 */  swc1       $f0, 0xF0($s4)
/* AFF14 800F9B54 E68000EC */  swc1       $f0, 0xEC($s4)
/* AFF18 800F9B58 4600118D */  trunc.w.s  $f6, $f2
/* AFF1C 800F9B5C 44033000 */  mfc1       $v1, $f6
/* AFF20 800F9B60 00431023 */  subu       $v0, $v0, $v1
/* AFF24 800F9B64 AE830098 */  sw         $v1, 0x98($s4)
/* AFF28 800F9B68 AE8200A0 */  sw         $v0, 0xA0($s4)
.Lrace_800F9B6C:
/* AFF2C 800F9B6C 02802021 */  addu       $a0, $s4, $zero
.Lrace_800F9B70:
/* AFF30 800F9B70 2690003D */  addiu      $s0, $s4, 0x3D
/* AFF34 800F9B74 02002821 */  addu       $a1, $s0, $zero
/* AFF38 800F9B78 8E91009C */  lw         $s1, 0x9C($s4)
/* AFF3C 800F9B7C 8E820094 */  lw         $v0, 0x94($s4)
/* AFF40 800F9B80 00003021 */  addu       $a2, $zero, $zero
/* AFF44 800F9B84 0C03DFA5 */  jal        func_race_800F7E94
/* AFF48 800F9B88 02228823 */   subu      $s1, $s1, $v0
/* AFF4C 800F9B8C 8E850010 */  lw         $a1, 0x10($s4)
/* AFF50 800F9B90 0C03DD2C */  jal        func_race_800F74B0
/* AFF54 800F9B94 02002021 */   addu      $a0, $s0, $zero
/* AFF58 800F9B98 27B30010 */  addiu      $s3, $sp, 0x10
/* AFF5C 800F9B9C 02603021 */  addu       $a2, $s3, $zero
/* AFF60 800F9BA0 27B20014 */  addiu      $s2, $sp, 0x14
/* AFF64 800F9BA4 8E840020 */  lw         $a0, 0x20($s4)
/* AFF68 800F9BA8 8E850010 */  lw         $a1, 0x10($s4)
/* AFF6C 800F9BAC 0C01376C */  jal        func_8004DDB0
/* AFF70 800F9BB0 02403821 */   addu      $a3, $s2, $zero
/* AFF74 800F9BB4 C68000EC */  lwc1       $f0, 0xEC($s4)
/* AFF78 800F9BB8 C7A20010 */  lwc1       $f2, 0x10($sp)
/* AFF7C 800F9BBC 468010A0 */  cvt.s.w    $f2, $f2
/* AFF80 800F9BC0 46020002 */  mul.s      $f0, $f0, $f2
/* AFF84 800F9BC4 02802021 */  addu       $a0, $s4, $zero
/* AFF88 800F9BC8 C682010C */  lwc1       $f2, 0x10C($s4)
/* AFF8C 800F9BCC 4600018D */  trunc.w.s  $f6, $f0
/* AFF90 800F9BD0 44023000 */  mfc1       $v0, $f6
/* AFF94 800F9BD4 44820000 */  mtc1       $v0, $f0
/* AFF98 800F9BD8 46800020 */  cvt.s.w    $f0, $f0
/* AFF9C 800F9BDC 46001082 */  mul.s      $f2, $f2, $f0
/* AFFA0 800F9BE0 02002821 */  addu       $a1, $s0, $zero
/* AFFA4 800F9BE4 3C060036 */  lui        $a2, (0x36EE08 >> 16)
/* AFFA8 800F9BE8 AFA20010 */  sw         $v0, 0x10($sp)
/* AFFAC 800F9BEC 4600118D */  trunc.w.s  $f6, $f2
/* AFFB0 800F9BF0 E68600E4 */  swc1       $f6, 0xE4($s4)
/* AFFB4 800F9BF4 0C03DFA5 */  jal        func_race_800F7E94
/* AFFB8 800F9BF8 34C6EE08 */   ori       $a2, $a2, (0x36EE08 & 0xFFFF)
/* AFFBC 800F9BFC 8E850010 */  lw         $a1, 0x10($s4)
/* AFFC0 800F9C00 0C03DD2C */  jal        func_race_800F74B0
/* AFFC4 800F9C04 02002021 */   addu      $a0, $s0, $zero
/* AFFC8 800F9C08 02603021 */  addu       $a2, $s3, $zero
/* AFFCC 800F9C0C 8E840020 */  lw         $a0, 0x20($s4)
/* AFFD0 800F9C10 8E850010 */  lw         $a1, 0x10($s4)
/* AFFD4 800F9C14 0C01376C */  jal        func_8004DDB0
/* AFFD8 800F9C18 02403821 */   addu      $a3, $s2, $zero
/* AFFDC 800F9C1C 3C02CCCC */  lui        $v0, (0xCCCCCCCD >> 16)
/* AFFE0 800F9C20 3442CCCD */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
/* AFFE4 800F9C24 02220019 */  multu      $s1, $v0
/* AFFE8 800F9C28 C68200EC */  lwc1       $f2, 0xEC($s4)
/* AFFEC 800F9C2C C7A00010 */  lwc1       $f0, 0x10($sp)
/* AFFF0 800F9C30 46800020 */  cvt.s.w    $f0, $f0
/* AFFF4 800F9C34 46001082 */  mul.s      $f2, $f2, $f0
/* AFFF8 800F9C38 C6840114 */  lwc1       $f4, 0x114($s4)
/* AFFFC 800F9C3C 3C01800D */  lui        $at, %hi(D_race_800CCF60)
/* B0000 800F9C40 C420CF60 */  lwc1       $f0, %lo(D_race_800CCF60)($at)
/* B0004 800F9C44 46002102 */  mul.s      $f4, $f4, $f0
/* B0008 800F9C48 8E820094 */  lw         $v0, 0x94($s4)
/* B000C 800F9C4C 3C01800D */  lui        $at, %hi(D_race_800CCF64)
/* B0010 800F9C50 C434CF64 */  lwc1       $f20, %lo(D_race_800CCF64)($at)
/* B0014 800F9C54 00004810 */  mfhi       $t1
/* B0018 800F9C58 000918C2 */  srl        $v1, $t1, 3
/* B001C 800F9C5C 00431021 */  addu       $v0, $v0, $v1
/* B0020 800F9C60 AE8200A8 */  sw         $v0, 0xA8($s4)
/* B0024 800F9C64 4600118D */  trunc.w.s  $f6, $f2
/* B0028 800F9C68 44043000 */  mfc1       $a0, $f6
/* B002C 800F9C6C AFA40010 */  sw         $a0, 0x10($sp)
/* B0030 800F9C70 4600218D */  trunc.w.s  $f6, $f4
/* B0034 800F9C74 44033000 */  mfc1       $v1, $f6
/* B0038 800F9C78 C68400EC */  lwc1       $f4, 0xEC($s4)
/* B003C 800F9C7C C7A00014 */  lwc1       $f0, 0x14($sp)
/* B0040 800F9C80 46800020 */  cvt.s.w    $f0, $f0
/* B0044 800F9C84 46002102 */  mul.s      $f4, $f4, $f0
/* B0048 800F9C88 8E820098 */  lw         $v0, 0x98($s4)
/* B004C 800F9C8C C682010C */  lwc1       $f2, 0x10C($s4)
/* B0050 800F9C90 00431021 */  addu       $v0, $v0, $v1
/* B0054 800F9C94 44840000 */  mtc1       $a0, $f0
/* B0058 800F9C98 46800020 */  cvt.s.w    $f0, $f0
/* B005C 800F9C9C 46001082 */  mul.s      $f2, $f2, $f0
/* B0060 800F9CA0 AE8200CC */  sw         $v0, 0xCC($s4)
/* B0064 800F9CA4 4600218D */  trunc.w.s  $f6, $f4
/* B0068 800F9CA8 44053000 */  mfc1       $a1, $f6
/* B006C 800F9CAC AFA50014 */  sw         $a1, 0x14($sp)
/* B0070 800F9CB0 AE8200C8 */  sw         $v0, 0xC8($s4)
/* B0074 800F9CB4 4600118D */  trunc.w.s  $f6, $f2
/* B0078 800F9CB8 44023000 */  mfc1       $v0, $f6
/* B007C 800F9CBC 000218C0 */  sll        $v1, $v0, 3
/* B0080 800F9CC0 00621821 */  addu       $v1, $v1, $v0
/* B0084 800F9CC4 000520C0 */  sll        $a0, $a1, 3
/* B0088 800F9CC8 00852023 */  subu       $a0, $a0, $a1
/* B008C 800F9CCC AE8200E8 */  sw         $v0, 0xE8($s4)
/* B0090 800F9CD0 000410C2 */  srl        $v0, $a0, 3
/* B0094 800F9CD4 44820000 */  mtc1       $v0, $f0
/* B0098 800F9CD8 46800020 */  cvt.s.w    $f0, $f0
/* B009C 800F9CDC 000318C3 */  sra        $v1, $v1, 3
/* B00A0 800F9CE0 00042040 */  sll        $a0, $a0, 1
/* B00A4 800F9CE4 C6820114 */  lwc1       $f2, 0x114($s4)
/* B00A8 800F9CE8 000420C2 */  srl        $a0, $a0, 3
/* B00AC 800F9CEC 46001082 */  mul.s      $f2, $f2, $f0
/* B00B0 800F9CF0 8E82009C */  lw         $v0, 0x9C($s4)
/* B00B4 800F9CF4 C6840114 */  lwc1       $f4, 0x114($s4)
/* B00B8 800F9CF8 00431023 */  subu       $v0, $v0, $v1
/* B00BC 800F9CFC 44840000 */  mtc1       $a0, $f0
/* B00C0 800F9D00 46800020 */  cvt.s.w    $f0, $f0
/* B00C4 800F9D04 46002102 */  mul.s      $f4, $f4, $f0
/* B00C8 800F9D08 AE8200AC */  sw         $v0, 0xAC($s4)
/* B00CC 800F9D0C 8E8200CC */  lw         $v0, 0xCC($s4)
/* B00D0 800F9D10 8E8600AC */  lw         $a2, 0xAC($s4)
/* B00D4 800F9D14 8E84009C */  lw         $a0, 0x9C($s4)
/* B00D8 800F9D18 00C03821 */  addu       $a3, $a2, $zero
/* B00DC 800F9D1C 00C04021 */  addu       $t0, $a2, $zero
/* B00E0 800F9D20 AE8600B0 */  sw         $a2, 0xB0($s4)
/* B00E4 800F9D24 AE8700BC */  sw         $a3, 0xBC($s4)
/* B00E8 800F9D28 AE8800B4 */  sw         $t0, 0xB4($s4)
/* B00EC 800F9D2C 4600118D */  trunc.w.s  $f6, $f2
/* B00F0 800F9D30 44033000 */  mfc1       $v1, $f6
/* B00F4 800F9D34 00431021 */  addu       $v0, $v0, $v1
/* B00F8 800F9D38 AE8200D0 */  sw         $v0, 0xD0($s4)
/* B00FC 800F9D3C 00051080 */  sll        $v0, $a1, 2
/* B0100 800F9D40 00451021 */  addu       $v0, $v0, $a1
/* B0104 800F9D44 00021080 */  sll        $v0, $v0, 2
/* B0108 800F9D48 00451021 */  addu       $v0, $v0, $a1
/* B010C 800F9D4C 000210C2 */  srl        $v0, $v0, 3
/* B0110 800F9D50 44820000 */  mtc1       $v0, $f0
/* B0114 800F9D54 46800020 */  cvt.s.w    $f0, $f0
/* B0118 800F9D58 4600218D */  trunc.w.s  $f6, $f4
/* B011C 800F9D5C 44033000 */  mfc1       $v1, $f6
/* B0120 800F9D60 8E8200CC */  lw         $v0, 0xCC($s4)
/* B0124 800F9D64 C6820114 */  lwc1       $f2, 0x114($s4)
/* B0128 800F9D68 00431021 */  addu       $v0, $v0, $v1
/* B012C 800F9D6C 8E830094 */  lw         $v1, 0x94($s4)
/* B0130 800F9D70 46001082 */  mul.s      $f2, $f2, $f0
/* B0134 800F9D74 AE8200DC */  sw         $v0, 0xDC($s4)
/* B0138 800F9D78 8E8200CC */  lw         $v0, 0xCC($s4)
/* B013C 800F9D7C 00641821 */  addu       $v1, $v1, $a0
/* B0140 800F9D80 00031843 */  sra        $v1, $v1, 1
/* B0144 800F9D84 4600118D */  trunc.w.s  $f6, $f2
/* B0148 800F9D88 44053000 */  mfc1       $a1, $f6
/* B014C 800F9D8C 00451021 */  addu       $v0, $v0, $a1
/* B0150 800F9D90 AE8200D4 */  sw         $v0, 0xD4($s4)
/* B0154 800F9D94 AE8300A4 */  sw         $v1, 0xA4($s4)
/* B0158 800F9D98 C6800114 */  lwc1       $f0, 0x114($s4)
/* B015C 800F9D9C 46140002 */  mul.s      $f0, $f0, $f20
/* B0160 800F9DA0 26900014 */  addiu      $s0, $s4, 0x14
/* B0164 800F9DA4 24060024 */  addiu      $a2, $zero, 0x24
/* B0168 800F9DA8 02002821 */  addu       $a1, $s0, $zero
/* B016C 800F9DAC 8E84000C */  lw         $a0, 0xC($s4)
/* B0170 800F9DB0 4600018D */  trunc.w.s  $f6, $f0
/* B0174 800F9DB4 44033000 */  mfc1       $v1, $f6
/* B0178 800F9DB8 00431021 */  addu       $v0, $v0, $v1
/* B017C 800F9DBC 0C003053 */  jal        func_8000C14C
/* B0180 800F9DC0 AE8200C4 */   sw        $v0, 0xC4($s4)
/* B0184 800F9DC4 02002821 */  addu       $a1, $s0, $zero
/* B0188 800F9DC8 02603021 */  addu       $a2, $s3, $zero
/* B018C 800F9DCC 8E840020 */  lw         $a0, 0x20($s4)
/* B0190 800F9DD0 0C01376C */  jal        func_8004DDB0
/* B0194 800F9DD4 02403821 */   addu      $a3, $s2, $zero
/* B0198 800F9DD8 C7A00010 */  lwc1       $f0, 0x10($sp)
/* B019C 800F9DDC 46800020 */  cvt.s.w    $f0, $f0
/* B01A0 800F9DE0 C682010C */  lwc1       $f2, 0x10C($s4)
/* B01A4 800F9DE4 3C026666 */  lui        $v0, (0x66666667 >> 16)
/* B01A8 800F9DE8 46001082 */  mul.s      $f2, $f2, $f0
/* B01AC 800F9DEC 8E8300A0 */  lw         $v1, 0xA0($s4)
/* B01B0 800F9DF0 8E850098 */  lw         $a1, 0x98($s4)
/* B01B4 800F9DF4 34426667 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* B01B8 800F9DF8 00651823 */  subu       $v1, $v1, $a1
/* B01BC 800F9DFC 00620018 */  mult       $v1, $v0
/* B01C0 800F9E00 C6800114 */  lwc1       $f0, 0x114($s4)
/* B01C4 800F9E04 00031FC3 */  sra        $v1, $v1, 31
/* B01C8 800F9E08 46140002 */  mul.s      $f0, $f0, $f20
/* B01CC 800F9E0C 8E8200A4 */  lw         $v0, 0xA4($s4)
/* B01D0 800F9E10 4600118D */  trunc.w.s  $f6, $f2
/* B01D4 800F9E14 44043000 */  mfc1       $a0, $f6
/* B01D8 800F9E18 00042043 */  sra        $a0, $a0, 1
/* B01DC 800F9E1C 00441023 */  subu       $v0, $v0, $a0
/* B01E0 800F9E20 00004810 */  mfhi       $t1
/* B01E4 800F9E24 AE8200B8 */  sw         $v0, 0xB8($s4)
/* B01E8 800F9E28 00091043 */  sra        $v0, $t1, 1
/* B01EC 800F9E2C 00431023 */  subu       $v0, $v0, $v1
/* B01F0 800F9E30 00A22821 */  addu       $a1, $a1, $v0
/* B01F4 800F9E34 8E830008 */  lw         $v1, 0x8($s4)
/* B01F8 800F9E38 4600018D */  trunc.w.s  $f6, $f0
/* B01FC 800F9E3C 44023000 */  mfc1       $v0, $f6
/* B0200 800F9E40 00A22821 */  addu       $a1, $a1, $v0
/* B0204 800F9E44 AE8500D8 */  sw         $a1, 0xD8($s4)
/* B0208 800F9E48 8C620008 */  lw         $v0, 0x8($v1)
/* B020C 800F9E4C 2405000B */  addiu      $a1, $zero, 0xB
/* B0210 800F9E50 84440048 */  lh         $a0, 0x48($v0)
/* B0214 800F9E54 8C42004C */  lw         $v0, 0x4C($v0)
/* B0218 800F9E58 0040F809 */  jalr       $v0
/* B021C 800F9E5C 00642021 */   addu      $a0, $v1, $a0
/* B0220 800F9E60 00118942 */  srl        $s1, $s1, 5
/* B0224 800F9E64 8E830094 */  lw         $v1, 0x94($s4)
/* B0228 800F9E68 C68200F0 */  lwc1       $f2, 0xF0($s4)
/* B022C 800F9E6C 00711821 */  addu       $v1, $v1, $s1
/* B0230 800F9E70 AE8300C0 */  sw         $v1, 0xC0($s4)
/* B0234 800F9E74 C4400034 */  lwc1       $f0, 0x34($v0)
/* B0238 800F9E78 46800020 */  cvt.s.w    $f0, $f0
/* B023C 800F9E7C 46001082 */  mul.s      $f2, $f2, $f0
/* B0240 800F9E80 3C01800D */  lui        $at, %hi(D_race_800CCF68)
/* B0244 800F9E84 C420CF68 */  lwc1       $f0, %lo(D_race_800CCF68)($at)
/* B0248 800F9E88 46001080 */  add.s      $f2, $f2, $f0
/* B024C 800F9E8C C6800114 */  lwc1       $f0, 0x114($s4)
/* B0250 800F9E90 46020002 */  mul.s      $f0, $f0, $f2
/* B0254 800F9E94 8E8200A0 */  lw         $v0, 0xA0($s4)
/* B0258 800F9E98 4600018D */  trunc.w.s  $f6, $f0
/* B025C 800F9E9C 44033000 */  mfc1       $v1, $f6
/* B0260 800F9EA0 00431023 */  subu       $v0, $v0, $v1
/* B0264 800F9EA4 AE8200E0 */  sw         $v0, 0xE0($s4)
.Lrace_800F9EA8:
/* B0268 800F9EA8 8FBF002C */  lw         $ra, 0x2C($sp)
/* B026C 800F9EAC 8FB40028 */  lw         $s4, 0x28($sp)
/* B0270 800F9EB0 8FB30024 */  lw         $s3, 0x24($sp)
/* B0274 800F9EB4 8FB20020 */  lw         $s2, 0x20($sp)
/* B0278 800F9EB8 8FB1001C */  lw         $s1, 0x1C($sp)
/* B027C 800F9EBC 8FB00018 */  lw         $s0, 0x18($sp)
/* B0280 800F9EC0 D7B40030 */  ldc1       $f20, 0x30($sp)
/* B0284 800F9EC4 03E00008 */  jr         $ra
/* B0288 800F9EC8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800F9ECC
/* B028C 800F9ECC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B0290 800F9ED0 00051040 */  sll        $v0, $a1, 1
/* B0294 800F9ED4 00451021 */  addu       $v0, $v0, $a1
/* B0298 800F9ED8 44823000 */  mtc1       $v0, $f6
/* B029C 800F9EDC 468031A0 */  cvt.s.w    $f6, $f6
/* B02A0 800F9EE0 00061080 */  sll        $v0, $a2, 2
/* B02A4 800F9EE4 44820000 */  mtc1       $v0, $f0
/* B02A8 800F9EE8 46800020 */  cvt.s.w    $f0, $f0
/* B02AC 800F9EEC 46003183 */  div.s      $f6, $f6, $f0
/* B02B0 800F9EF0 3C01800D */  lui        $at, %hi(D_race_800CCF6C)
/* B02B4 800F9EF4 C422CF6C */  lwc1       $f2, %lo(D_race_800CCF6C)($at)
/* B02B8 800F9EF8 44860000 */  mtc1       $a2, $f0
/* B02BC 800F9EFC 46800020 */  cvt.s.w    $f0, $f0
/* B02C0 800F9F00 AFBF0010 */  sw         $ra, 0x10($sp)
/* B02C4 800F9F04 E4860110 */  swc1       $f6, 0x110($a0)
/* B02C8 800F9F08 46003106 */  mov.s      $f4, $f6
/* B02CC 800F9F0C 46020003 */  div.s      $f0, $f0, $f2
/* B02D0 800F9F10 46002102 */  mul.s      $f4, $f4, $f0
/* B02D4 800F9F14 AC8500FC */  sw         $a1, 0xFC($a0)
/* B02D8 800F9F18 90850038 */  lbu        $a1, 0x38($a0)
/* B02DC 800F9F1C E4800114 */  swc1       $f0, 0x114($a0)
/* B02E0 800F9F20 46003002 */  mul.s      $f0, $f6, $f0
/* B02E4 800F9F24 AC860100 */  sw         $a2, 0x100($a0)
/* B02E8 800F9F28 E4860108 */  swc1       $f6, 0x108($a0)
/* B02EC 800F9F2C E484010C */  swc1       $f4, 0x10C($a0)
/* B02F0 800F9F30 0C03E683 */  jal        func_race_800F9A0C
/* B02F4 800F9F34 E4800104 */   swc1      $f0, 0x104($a0)
/* B02F8 800F9F38 8FBF0010 */  lw         $ra, 0x10($sp)
/* B02FC 800F9F3C 03E00008 */  jr         $ra
/* B0300 800F9F40 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F9F44
/* B0304 800F9F44 C7A20010 */  lwc1       $f2, 0x10($sp)
/* B0308 800F9F48 C7A00014 */  lwc1       $f0, 0x14($sp)
/* B030C 800F9F4C 8FA20018 */  lw         $v0, 0x18($sp)
/* B0310 800F9F50 AC850118 */  sw         $a1, 0x118($a0)
/* B0314 800F9F54 AC87011C */  sw         $a3, 0x11C($a0)
/* B0318 800F9F58 AC860120 */  sw         $a2, 0x120($a0)
/* B031C 800F9F5C E4800124 */  swc1       $f0, 0x124($a0)
/* B0320 800F9F60 E4820128 */  swc1       $f2, 0x128($a0)
/* B0324 800F9F64 03E00008 */  jr         $ra
/* B0328 800F9F68 A082003B */   sb        $v0, 0x3B($a0)

glabel func_race_800F9F6C
/* B032C 800F9F6C AC85002C */  sw         $a1, 0x2C($a0)
/* B0330 800F9F70 03E00008 */  jr         $ra
/* B0334 800F9F74 ACA40E28 */   sw        $a0, 0xE28($a1)

glabel func_race_800F9F78
/* B0338 800F9F78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B033C 800F9F7C AFB00010 */  sw         $s0, 0x10($sp)
/* B0340 800F9F80 00808021 */  addu       $s0, $a0, $zero
/* B0344 800F9F84 2402FFFF */  addiu      $v0, $zero, -0x1
/* B0348 800F9F88 AFBF0014 */  sw         $ra, 0x14($sp)
/* B034C 800F9F8C AE02007C */  sw         $v0, 0x7C($s0)
/* B0350 800F9F90 AE02008C */  sw         $v0, 0x8C($s0)
/* B0354 800F9F94 24020008 */  addiu      $v0, $zero, 0x8
/* B0358 800F9F98 AE050080 */  sw         $a1, 0x80($s0)
/* B035C 800F9F9C 2605003D */  addiu      $a1, $s0, 0x3D
/* B0360 800F9FA0 00003021 */  addu       $a2, $zero, $zero
/* B0364 800F9FA4 AE020090 */  sw         $v0, 0x90($s0)
/* B0368 800F9FA8 AE000074 */  sw         $zero, 0x74($s0)
/* B036C 800F9FAC AE000070 */  sw         $zero, 0x70($s0)
/* B0370 800F9FB0 AE000088 */  sw         $zero, 0x88($s0)
/* B0374 800F9FB4 0C03DFA5 */  jal        func_race_800F7E94
/* B0378 800F9FB8 A2000061 */   sb        $zero, 0x61($s0)
/* B037C 800F9FBC 8A03003D */  lwl        $v1, 0x3D($s0)
/* B0380 800F9FC0 9A030040 */  lwr        $v1, 0x40($s0)
/* B0384 800F9FC4 8A070041 */  lwl        $a3, 0x41($s0)
/* B0388 800F9FC8 9A070044 */  lwr        $a3, 0x44($s0)
/* B038C 800F9FCC 82080045 */  lb         $t0, 0x45($s0)
/* B0390 800F9FD0 AA030046 */  swl        $v1, 0x46($s0)
/* B0394 800F9FD4 BA030049 */  swr        $v1, 0x49($s0)
/* B0398 800F9FD8 AA07004A */  swl        $a3, 0x4A($s0)
/* B039C 800F9FDC BA07004D */  swr        $a3, 0x4D($s0)
/* B03A0 800F9FE0 A208004E */  sb         $t0, 0x4E($s0)
/* B03A4 800F9FE4 8A03003D */  lwl        $v1, 0x3D($s0)
/* B03A8 800F9FE8 9A030040 */  lwr        $v1, 0x40($s0)
/* B03AC 800F9FEC 8A070041 */  lwl        $a3, 0x41($s0)
/* B03B0 800F9FF0 9A070044 */  lwr        $a3, 0x44($s0)
/* B03B4 800F9FF4 82080045 */  lb         $t0, 0x45($s0)
/* B03B8 800F9FF8 AA03004F */  swl        $v1, 0x4F($s0)
/* B03BC 800F9FFC BA030052 */  swr        $v1, 0x52($s0)
/* B03C0 800FA000 AA070053 */  swl        $a3, 0x53($s0)
/* B03C4 800FA004 BA070056 */  swr        $a3, 0x56($s0)
/* B03C8 800FA008 A2080057 */  sb         $t0, 0x57($s0)
/* B03CC 800FA00C 8A03003D */  lwl        $v1, 0x3D($s0)
/* B03D0 800FA010 9A030040 */  lwr        $v1, 0x40($s0)
/* B03D4 800FA014 8A070041 */  lwl        $a3, 0x41($s0)
/* B03D8 800FA018 9A070044 */  lwr        $a3, 0x44($s0)
/* B03DC 800FA01C 82080045 */  lb         $t0, 0x45($s0)
/* B03E0 800FA020 AA030058 */  swl        $v1, 0x58($s0)
/* B03E4 800FA024 BA03005B */  swr        $v1, 0x5B($s0)
/* B03E8 800FA028 AA07005C */  swl        $a3, 0x5C($s0)
/* B03EC 800FA02C BA07005F */  swr        $a3, 0x5F($s0)
/* B03F0 800FA030 A2080060 */  sb         $t0, 0x60($s0)
/* B03F4 800FA034 8FBF0014 */  lw         $ra, 0x14($sp)
/* B03F8 800FA038 8FB00010 */  lw         $s0, 0x10($sp)
/* B03FC 800FA03C 03E00008 */  jr         $ra
/* B0400 800FA040 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800FA044
/* B0404 800FA044 24020001 */  addiu      $v0, $zero, 0x1
/* B0408 800FA048 03E00008 */  jr         $ra
/* B040C 800FA04C AC820070 */   sw        $v0, 0x70($a0)

glabel func_race_800FA050
/* B0410 800FA050 8C82002C */  lw         $v0, 0x2C($a0)
/* B0414 800FA054 8C420D00 */  lw         $v0, 0xD00($v0)
/* B0418 800FA058 2403FFFF */  addiu      $v1, $zero, -0x1
/* B041C 800FA05C AC830070 */  sw         $v1, 0x70($a0)
/* B0420 800FA060 00431021 */  addu       $v0, $v0, $v1
/* B0424 800FA064 03E00008 */  jr         $ra
/* B0428 800FA068 AC82008C */   sw        $v0, 0x8C($a0)

glabel func_race_800FA06C
/* B042C 800FA06C 8C820034 */  lw         $v0, 0x34($a0)
/* B0430 800FA070 00451021 */  addu       $v0, $v0, $a1
/* B0434 800FA074 03E00008 */  jr         $ra
/* B0438 800FA078 AC820034 */   sw        $v0, 0x34($a0)

glabel func_race_800FA07C
/* B043C 800FA07C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B0440 800FA080 AFB00038 */  sw         $s0, 0x38($sp)
/* B0444 800FA084 00808021 */  addu       $s0, $a0, $zero
/* B0448 800FA088 AFBF0058 */  sw         $ra, 0x58($sp)
/* B044C 800FA08C AFB70054 */  sw         $s7, 0x54($sp)
/* B0450 800FA090 AFB60050 */  sw         $s6, 0x50($sp)
/* B0454 800FA094 AFB5004C */  sw         $s5, 0x4C($sp)
/* B0458 800FA098 AFB40048 */  sw         $s4, 0x48($sp)
/* B045C 800FA09C AFB30044 */  sw         $s3, 0x44($sp)
/* B0460 800FA0A0 AFB20040 */  sw         $s2, 0x40($sp)
/* B0464 800FA0A4 AFB1003C */  sw         $s1, 0x3C($sp)
/* B0468 800FA0A8 F7B40060 */  sdc1       $f20, 0x60($sp)
/* B046C 800FA0AC 8E170034 */  lw         $s7, 0x34($s0)
/* B0470 800FA0B0 8E02002C */  lw         $v0, 0x2C($s0)
/* B0474 800FA0B4 24160001 */  addiu      $s6, $zero, 0x1
/* B0478 800FA0B8 1040045B */  beqz       $v0, .Lrace_800FB228
/* B047C 800FA0BC AE000034 */   sw        $zero, 0x34($s0)
/* B0480 800FA0C0 92020038 */  lbu        $v0, 0x38($s0)
/* B0484 800FA0C4 10400458 */  beqz       $v0, .Lrace_800FB228
/* B0488 800FA0C8 00000000 */   nop
/* B048C 800FA0CC 8E130070 */  lw         $s3, 0x70($s0)
/* B0490 800FA0D0 1A6000C8 */  blez       $s3, .Lrace_800FA3F4
/* B0494 800FA0D4 3C151062 */   lui       $s5, (0x10624DD3 >> 16)
/* B0498 800FA0D8 36B54DD3 */  ori        $s5, $s5, (0x10624DD3 & 0xFFFF)
/* B049C 800FA0DC 02772021 */  addu       $a0, $s3, $s7
/* B04A0 800FA0E0 00950018 */  mult       $a0, $s5
/* B04A4 800FA0E4 000417C3 */  sra        $v0, $a0, 31
/* B04A8 800FA0E8 3C01800D */  lui        $at, %hi(D_race_800CCF7C)
/* B04AC 800FA0EC C424CF7C */  lwc1       $f4, %lo(D_race_800CCF7C)($at)
/* B04B0 800FA0F0 00005810 */  mfhi       $t3
/* B04B4 800FA0F4 000B1983 */  sra        $v1, $t3, 6
/* B04B8 800FA0F8 00628823 */  subu       $s1, $v1, $v0
/* B04BC 800FA0FC 02361821 */  addu       $v1, $s1, $s6
/* B04C0 800FA100 00031140 */  sll        $v0, $v1, 5
/* B04C4 800FA104 00431023 */  subu       $v0, $v0, $v1
/* B04C8 800FA108 00021080 */  sll        $v0, $v0, 2
/* B04CC 800FA10C 00431021 */  addu       $v0, $v0, $v1
/* B04D0 800FA110 000210C0 */  sll        $v0, $v0, 3
/* B04D4 800FA114 00441023 */  subu       $v0, $v0, $a0
/* B04D8 800FA118 44820000 */  mtc1       $v0, $f0
/* B04DC 800FA11C 46800020 */  cvt.s.w    $f0, $f0
/* B04E0 800FA120 46040002 */  mul.s      $f0, $f0, $f4
/* B04E4 800FA124 3C01800D */  lui        $at, %hi(D_race_800CCF80)
/* B04E8 800FA128 C422CF80 */  lwc1       $f2, %lo(D_race_800CCF80)($at)
/* B04EC 800FA12C AE040070 */  sw         $a0, 0x70($s0)
/* B04F0 800FA130 2A220003 */  slti       $v0, $s1, 0x3
/* B04F4 800FA134 10400057 */  beqz       $v0, .Lrace_800FA294
/* B04F8 800FA138 46020503 */   div.s     $f20, $f0, $f2
/* B04FC 800FA13C 3C03800D */  lui        $v1, %hi(D_race_800CCFCC)
/* B0500 800FA140 2463CFCC */  addiu      $v1, $v1, %lo(D_race_800CCFCC)
/* B0504 800FA144 24020002 */  addiu      $v0, $zero, 0x2
/* B0508 800FA148 00511023 */  subu       $v0, $v0, $s1
/* B050C 800FA14C 00021080 */  sll        $v0, $v0, 2
/* B0510 800FA150 00431021 */  addu       $v0, $v0, $v1
/* B0514 800FA154 8C440000 */  lw         $a0, 0x0($v0)
/* B0518 800FA158 8E050010 */  lw         $a1, 0x10($s0)
/* B051C 800FA15C 0C03DD2C */  jal        func_race_800F74B0
/* B0520 800FA160 241200FF */   addiu     $s2, $zero, 0xFF
/* B0524 800FA164 27A60030 */  addiu      $a2, $sp, 0x30
/* B0528 800FA168 8E040024 */  lw         $a0, 0x24($s0)
/* B052C 800FA16C 8E050010 */  lw         $a1, 0x10($s0)
/* B0530 800FA170 0C01376C */  jal        func_8004DDB0
/* B0534 800FA174 27A70034 */   addiu     $a3, $sp, 0x34
/* B0538 800FA178 C60000F8 */  lwc1       $f0, 0xF8($s0)
/* B053C 800FA17C 4600A502 */  mul.s      $f20, $f20, $f0
/* B0540 800FA180 C600010C */  lwc1       $f0, 0x10C($s0)
/* B0544 800FA184 46140182 */  mul.s      $f6, $f0, $f20
/* B0548 800FA188 C6000114 */  lwc1       $f0, 0x114($s0)
/* B054C 800FA18C 46140102 */  mul.s      $f4, $f0, $f20
/* B0550 800FA190 C7A20030 */  lwc1       $f2, 0x30($sp)
/* B0554 800FA194 468010A0 */  cvt.s.w    $f2, $f2
/* B0558 800FA198 A3B20029 */  sb         $s2, 0x29($sp)
/* B055C 800FA19C A3B20028 */  sb         $s2, 0x28($sp)
/* B0560 800FA1A0 46023082 */  mul.s      $f2, $f6, $f2
/* B0564 800FA1A4 A3B2002B */  sb         $s2, 0x2B($sp)
/* B0568 800FA1A8 A3A0002A */  sb         $zero, 0x2A($sp)
/* B056C 800FA1AC 8E020024 */  lw         $v0, 0x24($s0)
/* B0570 800FA1B0 C7A00034 */  lwc1       $f0, 0x34($sp)
/* B0574 800FA1B4 46800020 */  cvt.s.w    $f0, $f0
/* B0578 800FA1B8 46002002 */  mul.s      $f0, $f4, $f0
/* B057C 800FA1BC 8BAC0028 */  lwl        $t4, 0x28($sp)
/* B0580 800FA1C0 9BAC002B */  lwr        $t4, 0x2B($sp)
/* B0584 800FA1C4 A84C0038 */  swl        $t4, 0x38($v0)
/* B0588 800FA1C8 B84C003B */  swr        $t4, 0x3B($v0)
/* B058C 800FA1CC 4600120D */  trunc.w.s  $f8, $f2
/* B0590 800FA1D0 E7A80030 */  swc1       $f8, 0x30($sp)
/* B0594 800FA1D4 8E02013C */  lw         $v0, 0x13C($s0)
/* B0598 800FA1D8 4600020D */  trunc.w.s  $f8, $f0
/* B059C 800FA1DC E7A80034 */  swc1       $f8, 0x34($sp)
/* B05A0 800FA1E0 50400017 */  beql       $v0, $zero, .Lrace_800FA240
/* B05A4 800FA1E4 A3B2002A */   sb        $s2, 0x2A($sp)
/* B05A8 800FA1E8 8FA70030 */  lw         $a3, 0x30($sp)
/* B05AC 800FA1EC 8E0200A4 */  lw         $v0, 0xA4($s0)
/* B05B0 800FA1F0 8FA30034 */  lw         $v1, 0x34($sp)
/* B05B4 800FA1F4 8E040000 */  lw         $a0, 0x0($s0)
/* B05B8 800FA1F8 02C73806 */  srlv       $a3, $a3, $s6
/* B05BC 800FA1FC 00473823 */  subu       $a3, $v0, $a3
/* B05C0 800FA200 00031882 */  srl        $v1, $v1, 2
/* B05C4 800FA204 8C88012C */  lw         $t0, 0x12C($a0)
/* B05C8 800FA208 8E0200C4 */  lw         $v0, 0xC4($s0)
/* B05CC 800FA20C 850900D8 */  lh         $t1, 0xD8($t0)
/* B05D0 800FA210 00431023 */  subu       $v0, $v0, $v1
/* B05D4 800FA214 AFA20010 */  sw         $v0, 0x10($sp)
/* B05D8 800FA218 E7A60014 */  swc1       $f6, 0x14($sp)
/* B05DC 800FA21C E7A40018 */  swc1       $f4, 0x18($sp)
/* B05E0 800FA220 AFA0001C */  sw         $zero, 0x1C($sp)
/* B05E4 800FA224 AFA00020 */  sw         $zero, 0x20($sp)
/* B05E8 800FA228 8E050010 */  lw         $a1, 0x10($s0)
/* B05EC 800FA22C 8E060024 */  lw         $a2, 0x24($s0)
/* B05F0 800FA230 8D0200DC */  lw         $v0, 0xDC($t0)
/* B05F4 800FA234 0040F809 */  jalr       $v0
/* B05F8 800FA238 00892021 */   addu      $a0, $a0, $t1
/* B05FC 800FA23C A3B2002A */  sb         $s2, 0x2A($sp)
.Lrace_800FA240:
/* B0600 800FA240 8E020024 */  lw         $v0, 0x24($s0)
/* B0604 800FA244 8BAC0028 */  lwl        $t4, 0x28($sp)
/* B0608 800FA248 9BAC002B */  lwr        $t4, 0x2B($sp)
/* B060C 800FA24C A84C0038 */  swl        $t4, 0x38($v0)
/* B0610 800FA250 B84C003B */  swr        $t4, 0x3B($v0)
/* B0614 800FA254 02750018 */  mult       $s3, $s5
/* B0618 800FA258 12760007 */  beq        $s3, $s6, .Lrace_800FA278
/* B061C 800FA25C 00000000 */   nop
/* B0620 800FA260 00131FC3 */  sra        $v1, $s3, 31
/* B0624 800FA264 00005810 */  mfhi       $t3
/* B0628 800FA268 000B1183 */  sra        $v0, $t3, 6
/* B062C 800FA26C 00431023 */  subu       $v0, $v0, $v1
/* B0630 800FA270 10510099 */  beq        $v0, $s1, .Lrace_800FA4D8
/* B0634 800FA274 00000000 */   nop
.Lrace_800FA278:
/* B0638 800FA278 8E040004 */  lw         $a0, 0x4($s0)
/* B063C 800FA27C 10800096 */  beqz       $a0, .Lrace_800FA4D8
/* B0640 800FA280 00000000 */   nop
/* B0644 800FA284 0C04651F */  jal        func_race_8011947C
/* B0648 800FA288 00002821 */   addu      $a1, $zero, $zero
/* B064C 800FA28C 0803E936 */  j          .Lrace_800FA4D8
/* B0650 800FA290 00000000 */   nop
.Lrace_800FA294:
/* B0654 800FA294 2A220005 */  slti       $v0, $s1, 0x5
/* B0658 800FA298 10400054 */  beqz       $v0, .Lrace_800FA3EC
/* B065C 800FA29C 2A220004 */   slti      $v0, $s1, 0x4
/* B0660 800FA2A0 54400001 */  bnel       $v0, $zero, .Lrace_800FA2A8
/* B0664 800FA2A4 46002506 */   mov.s     $f20, $f4
.Lrace_800FA2A8:
/* B0668 800FA2A8 26120014 */  addiu      $s2, $s0, 0x14
/* B066C 800FA2AC 02402821 */  addu       $a1, $s2, $zero
/* B0670 800FA2B0 8E04000C */  lw         $a0, 0xC($s0)
/* B0674 800FA2B4 0C003053 */  jal        func_8000C14C
/* B0678 800FA2B8 24060029 */   addiu     $a2, $zero, 0x29
/* B067C 800FA2BC 02402821 */  addu       $a1, $s2, $zero
/* B0680 800FA2C0 27A60030 */  addiu      $a2, $sp, 0x30
/* B0684 800FA2C4 8E040024 */  lw         $a0, 0x24($s0)
/* B0688 800FA2C8 0C01376C */  jal        func_8004DDB0
/* B068C 800FA2CC 27A70034 */   addiu     $a3, $sp, 0x34
/* B0690 800FA2D0 C60000F8 */  lwc1       $f0, 0xF8($s0)
/* B0694 800FA2D4 4600A502 */  mul.s      $f20, $f20, $f0
/* B0698 800FA2D8 C600010C */  lwc1       $f0, 0x10C($s0)
/* B069C 800FA2DC 46140182 */  mul.s      $f6, $f0, $f20
/* B06A0 800FA2E0 C6000114 */  lwc1       $f0, 0x114($s0)
/* B06A4 800FA2E4 46140102 */  mul.s      $f4, $f0, $f20
/* B06A8 800FA2E8 241400FF */  addiu      $s4, $zero, 0xFF
/* B06AC 800FA2EC C7A20030 */  lwc1       $f2, 0x30($sp)
/* B06B0 800FA2F0 468010A0 */  cvt.s.w    $f2, $f2
/* B06B4 800FA2F4 A3B40029 */  sb         $s4, 0x29($sp)
/* B06B8 800FA2F8 A3B40028 */  sb         $s4, 0x28($sp)
/* B06BC 800FA2FC 46023082 */  mul.s      $f2, $f6, $f2
/* B06C0 800FA300 A3B4002B */  sb         $s4, 0x2B($sp)
/* B06C4 800FA304 A3A0002A */  sb         $zero, 0x2A($sp)
/* B06C8 800FA308 8E020024 */  lw         $v0, 0x24($s0)
/* B06CC 800FA30C C7A00034 */  lwc1       $f0, 0x34($sp)
/* B06D0 800FA310 46800020 */  cvt.s.w    $f0, $f0
/* B06D4 800FA314 46002002 */  mul.s      $f0, $f4, $f0
/* B06D8 800FA318 8BAC0028 */  lwl        $t4, 0x28($sp)
/* B06DC 800FA31C 9BAC002B */  lwr        $t4, 0x2B($sp)
/* B06E0 800FA320 A84C0038 */  swl        $t4, 0x38($v0)
/* B06E4 800FA324 B84C003B */  swr        $t4, 0x3B($v0)
/* B06E8 800FA328 4600120D */  trunc.w.s  $f8, $f2
/* B06EC 800FA32C E7A80030 */  swc1       $f8, 0x30($sp)
/* B06F0 800FA330 8E02013C */  lw         $v0, 0x13C($s0)
/* B06F4 800FA334 4600020D */  trunc.w.s  $f8, $f0
/* B06F8 800FA338 E7A80034 */  swc1       $f8, 0x34($sp)
/* B06FC 800FA33C 10400015 */  beqz       $v0, .Lrace_800FA394
/* B0700 800FA340 02402821 */   addu      $a1, $s2, $zero
/* B0704 800FA344 8FA70030 */  lw         $a3, 0x30($sp)
/* B0708 800FA348 8E0200A4 */  lw         $v0, 0xA4($s0)
/* B070C 800FA34C 8FA30034 */  lw         $v1, 0x34($sp)
/* B0710 800FA350 8E040000 */  lw         $a0, 0x0($s0)
/* B0714 800FA354 00073842 */  srl        $a3, $a3, 1
/* B0718 800FA358 00473823 */  subu       $a3, $v0, $a3
/* B071C 800FA35C 00031882 */  srl        $v1, $v1, 2
/* B0720 800FA360 8C88012C */  lw         $t0, 0x12C($a0)
/* B0724 800FA364 8E0200C4 */  lw         $v0, 0xC4($s0)
/* B0728 800FA368 850900D8 */  lh         $t1, 0xD8($t0)
/* B072C 800FA36C 00431023 */  subu       $v0, $v0, $v1
/* B0730 800FA370 AFA20010 */  sw         $v0, 0x10($sp)
/* B0734 800FA374 E7A60014 */  swc1       $f6, 0x14($sp)
/* B0738 800FA378 E7A40018 */  swc1       $f4, 0x18($sp)
/* B073C 800FA37C AFA0001C */  sw         $zero, 0x1C($sp)
/* B0740 800FA380 AFA00020 */  sw         $zero, 0x20($sp)
/* B0744 800FA384 8E060024 */  lw         $a2, 0x24($s0)
/* B0748 800FA388 8D0200DC */  lw         $v0, 0xDC($t0)
/* B074C 800FA38C 0040F809 */  jalr       $v0
/* B0750 800FA390 00892021 */   addu      $a0, $a0, $t1
.Lrace_800FA394:
/* B0754 800FA394 A3B4002A */  sb         $s4, 0x2A($sp)
/* B0758 800FA398 8E020024 */  lw         $v0, 0x24($s0)
/* B075C 800FA39C 8BAC0028 */  lwl        $t4, 0x28($sp)
/* B0760 800FA3A0 9BAC002B */  lwr        $t4, 0x2B($sp)
/* B0764 800FA3A4 A84C0038 */  swl        $t4, 0x38($v0)
/* B0768 800FA3A8 B84C003B */  swr        $t4, 0x3B($v0)
/* B076C 800FA3AC 8E040004 */  lw         $a0, 0x4($s0)
/* B0770 800FA3B0 10800049 */  beqz       $a0, .Lrace_800FA4D8
/* B0774 800FA3B4 24020003 */   addiu     $v0, $zero, 0x3
/* B0778 800FA3B8 02750018 */  mult       $s3, $s5
/* B077C 800FA3BC 16220046 */  bne        $s1, $v0, .Lrace_800FA4D8
/* B0780 800FA3C0 00000000 */   nop
/* B0784 800FA3C4 00131FC3 */  sra        $v1, $s3, 31
/* B0788 800FA3C8 00005810 */  mfhi       $t3
/* B078C 800FA3CC 000B1183 */  sra        $v0, $t3, 6
/* B0790 800FA3D0 00431023 */  subu       $v0, $v0, $v1
/* B0794 800FA3D4 10510040 */  beq        $v0, $s1, .Lrace_800FA4D8
/* B0798 800FA3D8 00000000 */   nop
/* B079C 800FA3DC 0C04651F */  jal        func_race_8011947C
/* B07A0 800FA3E0 2405000F */   addiu     $a1, $zero, 0xF
/* B07A4 800FA3E4 0803E936 */  j          .Lrace_800FA4D8
/* B07A8 800FA3E8 00000000 */   nop
.Lrace_800FA3EC:
/* B07AC 800FA3EC 0803E936 */  j          .Lrace_800FA4D8
/* B07B0 800FA3F0 AE000070 */   sw        $zero, 0x70($s0)
.Lrace_800FA3F4:
/* B07B4 800FA3F4 06610038 */  bgez       $s3, .Lrace_800FA4D8
/* B07B8 800FA3F8 26110014 */   addiu     $s1, $s0, 0x14
/* B07BC 800FA3FC 02202821 */  addu       $a1, $s1, $zero
/* B07C0 800FA400 8E04000C */  lw         $a0, 0xC($s0)
/* B07C4 800FA404 0C003053 */  jal        func_8000C14C
/* B07C8 800FA408 24060028 */   addiu     $a2, $zero, 0x28
/* B07CC 800FA40C 02202821 */  addu       $a1, $s1, $zero
/* B07D0 800FA410 27A60030 */  addiu      $a2, $sp, 0x30
/* B07D4 800FA414 8E040024 */  lw         $a0, 0x24($s0)
/* B07D8 800FA418 0C01376C */  jal        func_8004DDB0
/* B07DC 800FA41C 27A70034 */   addiu     $a3, $sp, 0x34
/* B07E0 800FA420 C600010C */  lwc1       $f0, 0x10C($s0)
/* B07E4 800FA424 C60200F8 */  lwc1       $f2, 0xF8($s0)
/* B07E8 800FA428 46020182 */  mul.s      $f6, $f0, $f2
/* B07EC 800FA42C C6000114 */  lwc1       $f0, 0x114($s0)
/* B07F0 800FA430 46020102 */  mul.s      $f4, $f0, $f2
/* B07F4 800FA434 C7A00030 */  lwc1       $f0, 0x30($sp)
/* B07F8 800FA438 46800020 */  cvt.s.w    $f0, $f0
/* B07FC 800FA43C 46003002 */  mul.s      $f0, $f6, $f0
/* B0800 800FA440 C7A20034 */  lwc1       $f2, 0x34($sp)
/* B0804 800FA444 468010A0 */  cvt.s.w    $f2, $f2
/* B0808 800FA448 46022082 */  mul.s      $f2, $f4, $f2
/* B080C 800FA44C 4600020D */  trunc.w.s  $f8, $f0
/* B0810 800FA450 44074000 */  mfc1       $a3, $f8
/* B0814 800FA454 AFA70030 */  sw         $a3, 0x30($sp)
/* B0818 800FA458 8E02013C */  lw         $v0, 0x13C($s0)
/* B081C 800FA45C 4600120D */  trunc.w.s  $f8, $f2
/* B0820 800FA460 44034000 */  mfc1       $v1, $f8
/* B0824 800FA464 10400014 */  beqz       $v0, .Lrace_800FA4B8
/* B0828 800FA468 AFA30034 */   sw        $v1, 0x34($sp)
/* B082C 800FA46C 02202821 */  addu       $a1, $s1, $zero
/* B0830 800FA470 00073842 */  srl        $a3, $a3, 1
/* B0834 800FA474 00031882 */  srl        $v1, $v1, 2
/* B0838 800FA478 8E0200A4 */  lw         $v0, 0xA4($s0)
/* B083C 800FA47C 8E040000 */  lw         $a0, 0x0($s0)
/* B0840 800FA480 00473823 */  subu       $a3, $v0, $a3
/* B0844 800FA484 8C88012C */  lw         $t0, 0x12C($a0)
/* B0848 800FA488 8E0200C4 */  lw         $v0, 0xC4($s0)
/* B084C 800FA48C 850900D8 */  lh         $t1, 0xD8($t0)
/* B0850 800FA490 00431023 */  subu       $v0, $v0, $v1
/* B0854 800FA494 AFA20010 */  sw         $v0, 0x10($sp)
/* B0858 800FA498 E7A60014 */  swc1       $f6, 0x14($sp)
/* B085C 800FA49C E7A40018 */  swc1       $f4, 0x18($sp)
/* B0860 800FA4A0 AFA0001C */  sw         $zero, 0x1C($sp)
/* B0864 800FA4A4 AFA00020 */  sw         $zero, 0x20($sp)
/* B0868 800FA4A8 8E060024 */  lw         $a2, 0x24($s0)
/* B086C 800FA4AC 8D0200DC */  lw         $v0, 0xDC($t0)
/* B0870 800FA4B0 0040F809 */  jalr       $v0
/* B0874 800FA4B4 00892021 */   addu      $a0, $a0, $t1
.Lrace_800FA4B8:
/* B0878 800FA4B8 3C03FFFF */  lui        $v1, (0xFFFF15A0 >> 16)
/* B087C 800FA4BC 8E020070 */  lw         $v0, 0x70($s0)
/* B0880 800FA4C0 346315A0 */  ori        $v1, $v1, (0xFFFF15A0 & 0xFFFF)
/* B0884 800FA4C4 00571023 */  subu       $v0, $v0, $s7
/* B0888 800FA4C8 AE020070 */  sw         $v0, 0x70($s0)
/* B088C 800FA4CC 0043102A */  slt        $v0, $v0, $v1
/* B0890 800FA4D0 54400001 */  bnel       $v0, $zero, .Lrace_800FA4D8
/* B0894 800FA4D4 AE030070 */   sw        $v1, 0x70($s0)
.Lrace_800FA4D8:
/* B0898 800FA4D8 8E03002C */  lw         $v1, 0x2C($s0)
/* B089C 800FA4DC 8C620D04 */  lw         $v0, 0xD04($v1)
/* B08A0 800FA4E0 30420010 */  andi       $v0, $v0, 0x10
/* B08A4 800FA4E4 14400350 */  bnez       $v0, .Lrace_800FB228
/* B08A8 800FA4E8 00000000 */   nop
/* B08AC 800FA4EC 8E020074 */  lw         $v0, 0x74($s0)
/* B08B0 800FA4F0 1440000F */  bnez       $v0, .Lrace_800FA530
/* B08B4 800FA4F4 00000000 */   nop
/* B08B8 800FA4F8 8E02008C */  lw         $v0, 0x8C($s0)
/* B08BC 800FA4FC 04410003 */  bgez       $v0, .Lrace_800FA50C
/* B08C0 800FA500 0040A021 */   addu      $s4, $v0, $zero
/* B08C4 800FA504 8C620D00 */  lw         $v0, 0xD00($v1)
/* B08C8 800FA508 2454FFFF */  addiu      $s4, $v0, -0x1
.Lrace_800FA50C:
/* B08CC 800FA50C 2A820009 */  slti       $v0, $s4, 0x9
/* B08D0 800FA510 50400001 */  beql       $v0, $zero, .Lrace_800FA518
/* B08D4 800FA514 24140008 */   addiu     $s4, $zero, 0x8
.Lrace_800FA518:
/* B08D8 800FA518 8E020090 */  lw         $v0, 0x90($s0)
/* B08DC 800FA51C 12820005 */  beq        $s4, $v0, .Lrace_800FA534
/* B08E0 800FA520 24020001 */   addiu     $v0, $zero, 0x1
/* B08E4 800FA524 AE140090 */  sw         $s4, 0x90($s0)
/* B08E8 800FA528 0803E94D */  j          .Lrace_800FA534
/* B08EC 800FA52C AE020074 */   sw        $v0, 0x74($s0)
.Lrace_800FA530:
/* B08F0 800FA530 8E140090 */  lw         $s4, 0x90($s0)
.Lrace_800FA534:
/* B08F4 800FA534 8E03002C */  lw         $v1, 0x2C($s0)
/* B08F8 800FA538 8C720CE4 */  lw         $s2, 0xCE4($v1)
/* B08FC 800FA53C 90620CE0 */  lbu        $v0, 0xCE0($v1)
/* B0900 800FA540 0242102A */  slt        $v0, $s2, $v0
/* B0904 800FA544 10400029 */  beqz       $v0, .Lrace_800FA5EC
/* B0908 800FA548 00009821 */   addu      $s3, $zero, $zero
/* B090C 800FA54C 00121080 */  sll        $v0, $s2, 2
/* B0910 800FA550 00621021 */  addu       $v0, $v1, $v0
/* B0914 800FA554 8C430CEC */  lw         $v1, 0xCEC($v0)
/* B0918 800FA558 12400015 */  beqz       $s2, .Lrace_800FA5B0
/* B091C 800FA55C AE030084 */   sw        $v1, 0x84($s0)
/* B0920 800FA560 2C620BB8 */  sltiu      $v0, $v1, 0xBB8
/* B0924 800FA564 10400012 */  beqz       $v0, .Lrace_800FA5B0
/* B0928 800FA568 3C021062 */   lui       $v0, (0x10624DD3 >> 16)
/* B092C 800FA56C 34424DD3 */  ori        $v0, $v0, (0x10624DD3 & 0xFFFF)
/* B0930 800FA570 00620019 */  multu      $v1, $v0
/* B0934 800FA574 00005810 */  mfhi       $t3
/* B0938 800FA578 000B1102 */  srl        $v0, $t3, 4
/* B093C 800FA57C 30420001 */  andi       $v0, $v0, 0x1
/* B0940 800FA580 10400003 */  beqz       $v0, .Lrace_800FA590
/* B0944 800FA584 02002021 */   addu      $a0, $s0, $zero
/* B0948 800FA588 0803E971 */  j          .Lrace_800FA5C4
/* B094C 800FA58C 0260B021 */   addu      $s6, $s3, $zero
.Lrace_800FA590:
/* B0950 800FA590 2642FFFF */  addiu      $v0, $s2, -0x1
/* B0954 800FA594 8E03002C */  lw         $v1, 0x2C($s0)
/* B0958 800FA598 00021080 */  sll        $v0, $v0, 2
/* B095C 800FA59C 00621821 */  addu       $v1, $v1, $v0
/* B0960 800FA5A0 8C660CEC */  lw         $a2, 0xCEC($v1)
/* B0964 800FA5A4 2605003D */  addiu      $a1, $s0, 0x3D
/* B0968 800FA5A8 0803E96F */  j          .Lrace_800FA5BC
/* B096C 800FA5AC AE060084 */   sw        $a2, 0x84($s0)
.Lrace_800FA5B0:
/* B0970 800FA5B0 02002021 */  addu       $a0, $s0, $zero
/* B0974 800FA5B4 8E060084 */  lw         $a2, 0x84($s0)
/* B0978 800FA5B8 2605003D */  addiu      $a1, $s0, 0x3D
.Lrace_800FA5BC:
/* B097C 800FA5BC 0C03DFA5 */  jal        func_race_800F7E94
/* B0980 800FA5C0 00000000 */   nop
.Lrace_800FA5C4:
/* B0984 800FA5C4 00005021 */  addu       $t2, $zero, $zero
.Lrace_800FA5C8:
/* B0988 800FA5C8 024A102A */  slt        $v0, $s2, $t2
/* B098C 800FA5CC 1440002B */  bnez       $v0, .Lrace_800FA67C
/* B0990 800FA5D0 000A1880 */   sll       $v1, $t2, 2
/* B0994 800FA5D4 8E02002C */  lw         $v0, 0x2C($s0)
/* B0998 800FA5D8 00431021 */  addu       $v0, $v0, $v1
/* B099C 800FA5DC 8C420CEC */  lw         $v0, 0xCEC($v0)
/* B09A0 800FA5E0 254A0001 */  addiu      $t2, $t2, 0x1
/* B09A4 800FA5E4 0803E972 */  j          .Lrace_800FA5C8
/* B09A8 800FA5E8 02629821 */   addu      $s3, $s3, $v0
.Lrace_800FA5EC:
/* B09AC 800FA5EC 8E020070 */  lw         $v0, 0x70($s0)
/* B09B0 800FA5F0 00028823 */  negu       $s1, $v0
/* B09B4 800FA5F4 2A220BB8 */  slti       $v0, $s1, 0xBB8
/* B09B8 800FA5F8 1040000C */  beqz       $v0, .Lrace_800FA62C
/* B09BC 800FA5FC 3C021062 */   lui       $v0, (0x10624DD3 >> 16)
/* B09C0 800FA600 34424DD3 */  ori        $v0, $v0, (0x10624DD3 & 0xFFFF)
/* B09C4 800FA604 02220018 */  mult       $s1, $v0
/* B09C8 800FA608 00111FC3 */  sra        $v1, $s1, 31
/* B09CC 800FA60C 00005810 */  mfhi       $t3
/* B09D0 800FA610 000B1103 */  sra        $v0, $t3, 4
/* B09D4 800FA614 00431023 */  subu       $v0, $v0, $v1
/* B09D8 800FA618 30420001 */  andi       $v0, $v0, 0x1
/* B09DC 800FA61C 10400003 */  beqz       $v0, .Lrace_800FA62C
/* B09E0 800FA620 00000000 */   nop
/* B09E4 800FA624 0803E995 */  j          .Lrace_800FA654
/* B09E8 800FA628 0000B021 */   addu      $s6, $zero, $zero
.Lrace_800FA62C:
/* B09EC 800FA62C 8E02002C */  lw         $v0, 0x2C($s0)
/* B09F0 800FA630 90430CE0 */  lbu        $v1, 0xCE0($v0)
/* B09F4 800FA634 02002021 */  addu       $a0, $s0, $zero
/* B09F8 800FA638 2463FFFF */  addiu      $v1, $v1, -0x1
/* B09FC 800FA63C 00031880 */  sll        $v1, $v1, 2
/* B0A00 800FA640 00431021 */  addu       $v0, $v0, $v1
/* B0A04 800FA644 8C460CEC */  lw         $a2, 0xCEC($v0)
/* B0A08 800FA648 2605003D */  addiu      $a1, $s0, 0x3D
/* B0A0C 800FA64C 0C03DFA5 */  jal        func_race_800F7E94
/* B0A10 800FA650 AE060084 */   sw        $a2, 0x84($s0)
.Lrace_800FA654:
/* B0A14 800FA654 00005021 */  addu       $t2, $zero, $zero
.Lrace_800FA658:
/* B0A18 800FA658 0152102A */  slt        $v0, $t2, $s2
/* B0A1C 800FA65C 10400007 */  beqz       $v0, .Lrace_800FA67C
/* B0A20 800FA660 000A1880 */   sll       $v1, $t2, 2
/* B0A24 800FA664 8E02002C */  lw         $v0, 0x2C($s0)
/* B0A28 800FA668 00431021 */  addu       $v0, $v0, $v1
/* B0A2C 800FA66C 8C420CEC */  lw         $v0, 0xCEC($v0)
/* B0A30 800FA670 254A0001 */  addiu      $t2, $t2, 0x1
/* B0A34 800FA674 0803E996 */  j          .Lrace_800FA658
/* B0A38 800FA678 02629821 */   addu      $s3, $s3, $v0
.Lrace_800FA67C:
/* B0A3C 800FA67C 02002021 */  addu       $a0, $s0, $zero
/* B0A40 800FA680 26050058 */  addiu      $a1, $s0, 0x58
/* B0A44 800FA684 0C03DFA5 */  jal        func_race_800F7E94
/* B0A48 800FA688 02603021 */   addu      $a2, $s3, $zero
/* B0A4C 800FA68C 8E03002C */  lw         $v1, 0x2C($s0)
/* B0A50 800FA690 8C620D7C */  lw         $v0, 0xD7C($v1)
/* B0A54 800FA694 10400004 */  beqz       $v0, .Lrace_800FA6A8
/* B0A58 800FA698 02002021 */   addu      $a0, $s0, $zero
/* B0A5C 800FA69C 8C660D80 */  lw         $a2, 0xD80($v1)
/* B0A60 800FA6A0 0C03DFA5 */  jal        func_race_800F7E94
/* B0A64 800FA6A4 2605004F */   addiu     $a1, $s0, 0x4F
.Lrace_800FA6A8:
/* B0A68 800FA6A8 8E03007C */  lw         $v1, 0x7C($s0)
/* B0A6C 800FA6AC 1243002C */  beq        $s2, $v1, .Lrace_800FA760
/* B0A70 800FA6B0 2402FFFF */   addiu     $v0, $zero, -0x1
/* B0A74 800FA6B4 10620012 */  beq        $v1, $v0, .Lrace_800FA700
/* B0A78 800FA6B8 00000000 */   nop
/* B0A7C 800FA6BC 8E04002C */  lw         $a0, 0x2C($s0)
/* B0A80 800FA6C0 90820CE0 */  lbu        $v0, 0xCE0($a0)
/* B0A84 800FA6C4 0062102A */  slt        $v0, $v1, $v0
/* B0A88 800FA6C8 1040000D */  beqz       $v0, .Lrace_800FA700
/* B0A8C 800FA6CC 00031080 */   sll       $v0, $v1, 2
/* B0A90 800FA6D0 00821021 */  addu       $v0, $a0, $v0
/* B0A94 800FA6D4 8C460CEC */  lw         $a2, 0xCEC($v0)
/* B0A98 800FA6D8 8E030088 */  lw         $v1, 0x88($s0)
/* B0A9C 800FA6DC 0066102B */  sltu       $v0, $v1, $a2
/* B0AA0 800FA6E0 50400004 */  beql       $v0, $zero, .Lrace_800FA6F4
/* B0AA4 800FA6E4 AE060088 */   sw        $a2, 0x88($s0)
/* B0AA8 800FA6E8 14600005 */  bnez       $v1, .Lrace_800FA700
/* B0AAC 800FA6EC 00000000 */   nop
/* B0AB0 800FA6F0 AE060088 */  sw         $a2, 0x88($s0)
.Lrace_800FA6F4:
/* B0AB4 800FA6F4 02002021 */  addu       $a0, $s0, $zero
/* B0AB8 800FA6F8 0C03DFA5 */  jal        func_race_800F7E94
/* B0ABC 800FA6FC 26050046 */   addiu     $a1, $s0, 0x46
.Lrace_800FA700:
/* B0AC0 800FA700 8E070080 */  lw         $a3, 0x80($s0)
/* B0AC4 800FA704 AE12007C */  sw         $s2, 0x7C($s0)
/* B0AC8 800FA708 18E0000B */  blez       $a3, .Lrace_800FA738
/* B0ACC 800FA70C 26520001 */   addiu     $s2, $s2, 0x1
/* B0AD0 800FA710 00F2102A */  slt        $v0, $a3, $s2
/* B0AD4 800FA714 54400001 */  bnel       $v0, $zero, .Lrace_800FA71C
/* B0AD8 800FA718 00E09021 */   addu      $s2, $a3, $zero
.Lrace_800FA71C:
/* B0ADC 800FA71C 26040061 */  addiu      $a0, $s0, 0x61
/* B0AE0 800FA720 3C05800D */  lui        $a1, %hi(D_race_800CCF70)
/* B0AE4 800FA724 24A5CF70 */  addiu      $a1, $a1, %lo(D_race_800CCF70)
/* B0AE8 800FA728 0C006E14 */  jal        sprintf
/* B0AEC 800FA72C 02403021 */   addu      $a2, $s2, $zero
/* B0AF0 800FA730 0803E9D8 */  j          .Lrace_800FA760
/* B0AF4 800FA734 00000000 */   nop
.Lrace_800FA738:
/* B0AF8 800FA738 8E02002C */  lw         $v0, 0x2C($s0)
/* B0AFC 800FA73C 90430CE0 */  lbu        $v1, 0xCE0($v0)
/* B0B00 800FA740 0072102A */  slt        $v0, $v1, $s2
/* B0B04 800FA744 54400001 */  bnel       $v0, $zero, .Lrace_800FA74C
/* B0B08 800FA748 00609021 */   addu      $s2, $v1, $zero
.Lrace_800FA74C:
/* B0B0C 800FA74C 26040061 */  addiu      $a0, $s0, 0x61
/* B0B10 800FA750 3C05800D */  lui        $a1, %hi(D_race_800CCF78)
/* B0B14 800FA754 24A5CF78 */  addiu      $a1, $a1, %lo(D_race_800CCF78)
/* B0B18 800FA758 0C006E14 */  jal        sprintf
/* B0B1C 800FA75C 02403021 */   addu      $a2, $s2, $zero
.Lrace_800FA760:
/* B0B20 800FA760 92020039 */  lbu        $v0, 0x39($s0)
/* B0B24 800FA764 144001B6 */  bnez       $v0, .Lrace_800FAE40
/* B0B28 800FA768 00000000 */   nop
/* B0B2C 800FA76C 8E050010 */  lw         $a1, 0x10($s0)
/* B0B30 800FA770 0C03DD2C */  jal        func_race_800F74B0
/* B0B34 800FA774 26040061 */   addiu     $a0, $s0, 0x61
/* B0B38 800FA778 27B30030 */  addiu      $s3, $sp, 0x30
/* B0B3C 800FA77C 02603021 */  addu       $a2, $s3, $zero
/* B0B40 800FA780 27B50034 */  addiu      $s5, $sp, 0x34
/* B0B44 800FA784 8E040020 */  lw         $a0, 0x20($s0)
/* B0B48 800FA788 8E050010 */  lw         $a1, 0x10($s0)
/* B0B4C 800FA78C 0C01376C */  jal        func_8004DDB0
/* B0B50 800FA790 02A03821 */   addu      $a3, $s5, $zero
/* B0B54 800FA794 C60000EC */  lwc1       $f0, 0xEC($s0)
/* B0B58 800FA798 C7A20030 */  lwc1       $f2, 0x30($sp)
/* B0B5C 800FA79C 468010A0 */  cvt.s.w    $f2, $f2
/* B0B60 800FA7A0 46020002 */  mul.s      $f0, $f0, $f2
/* B0B64 800FA7A4 3C01800D */  lui        $at, %hi(D_race_800CCF84)
/* B0B68 800FA7A8 C434CF84 */  lwc1       $f20, %lo(D_race_800CCF84)($at)
/* B0B6C 800FA7AC 4600020D */  trunc.w.s  $f8, $f0
/* B0B70 800FA7B0 44034000 */  mfc1       $v1, $f8
/* B0B74 800FA7B4 AFA30030 */  sw         $v1, 0x30($sp)
/* B0B78 800FA7B8 C60400EC */  lwc1       $f4, 0xEC($s0)
/* B0B7C 800FA7BC 8E040000 */  lw         $a0, 0x0($s0)
/* B0B80 800FA7C0 C606010C */  lwc1       $f6, 0x10C($s0)
/* B0B84 800FA7C4 8E0600AC */  lw         $a2, 0xAC($s0)
/* B0B88 800FA7C8 8C87012C */  lw         $a3, 0x12C($a0)
/* B0B8C 800FA7CC 8E0200CC */  lw         $v0, 0xCC($s0)
/* B0B90 800FA7D0 84E500D8 */  lh         $a1, 0xD8($a3)
/* B0B94 800FA7D4 46142102 */  mul.s      $f4, $f4, $f20
/* B0B98 800FA7D8 AFA20010 */  sw         $v0, 0x10($sp)
/* B0B9C 800FA7DC C60200EC */  lwc1       $f2, 0xEC($s0)
/* B0BA0 800FA7E0 C600010C */  lwc1       $f0, 0x10C($s0)
/* B0BA4 800FA7E4 46001082 */  mul.s      $f2, $f2, $f0
/* B0BA8 800FA7E8 4600220D */  trunc.w.s  $f8, $f4
/* B0BAC 800FA7EC 440A4000 */  mfc1       $t2, $f8
/* B0BB0 800FA7F0 006A1821 */  addu       $v1, $v1, $t2
/* B0BB4 800FA7F4 44830000 */  mtc1       $v1, $f0
/* B0BB8 800FA7F8 46800020 */  cvt.s.w    $f0, $f0
/* B0BBC 800FA7FC 46003182 */  mul.s      $f6, $f6, $f0
/* B0BC0 800FA800 E7A20014 */  swc1       $f2, 0x14($sp)
/* B0BC4 800FA804 C60000EC */  lwc1       $f0, 0xEC($s0)
/* B0BC8 800FA808 C6020114 */  lwc1       $f2, 0x114($s0)
/* B0BCC 800FA80C 00852021 */  addu       $a0, $a0, $a1
/* B0BD0 800FA810 46020002 */  mul.s      $f0, $f0, $f2
/* B0BD4 800FA814 AFA0001C */  sw         $zero, 0x1C($sp)
/* B0BD8 800FA818 AFA00020 */  sw         $zero, 0x20($sp)
/* B0BDC 800FA81C 4600320D */  trunc.w.s  $f8, $f6
/* B0BE0 800FA820 44024000 */  mfc1       $v0, $f8
/* B0BE4 800FA824 00C28823 */  subu       $s1, $a2, $v0
/* B0BE8 800FA828 E7A00018 */  swc1       $f0, 0x18($sp)
/* B0BEC 800FA82C 8E050010 */  lw         $a1, 0x10($s0)
/* B0BF0 800FA830 8E060020 */  lw         $a2, 0x20($s0)
/* B0BF4 800FA834 8CE200DC */  lw         $v0, 0xDC($a3)
/* B0BF8 800FA838 0040F809 */  jalr       $v0
/* B0BFC 800FA83C 02203821 */   addu      $a3, $s1, $zero
/* B0C00 800FA840 26120014 */  addiu      $s2, $s0, 0x14
/* B0C04 800FA844 02402821 */  addu       $a1, $s2, $zero
/* B0C08 800FA848 8E04000C */  lw         $a0, 0xC($s0)
/* B0C0C 800FA84C 0C003053 */  jal        func_8000C14C
/* B0C10 800FA850 24060027 */   addiu     $a2, $zero, 0x27
/* B0C14 800FA854 02402821 */  addu       $a1, $s2, $zero
/* B0C18 800FA858 02603021 */  addu       $a2, $s3, $zero
/* B0C1C 800FA85C 8E040020 */  lw         $a0, 0x20($s0)
/* B0C20 800FA860 0C01376C */  jal        func_8004DDB0
/* B0C24 800FA864 02A03821 */   addu      $a3, $s5, $zero
/* B0C28 800FA868 C7A00030 */  lwc1       $f0, 0x30($sp)
/* B0C2C 800FA86C 46800020 */  cvt.s.w    $f0, $f0
/* B0C30 800FA870 C60200EC */  lwc1       $f2, 0xEC($s0)
/* B0C34 800FA874 8E040000 */  lw         $a0, 0x0($s0)
/* B0C38 800FA878 C60400EC */  lwc1       $f4, 0xEC($s0)
/* B0C3C 800FA87C 46001082 */  mul.s      $f2, $f2, $f0
/* B0C40 800FA880 C606010C */  lwc1       $f6, 0x10C($s0)
/* B0C44 800FA884 8C88012C */  lw         $t0, 0x12C($a0)
/* B0C48 800FA888 8E0200CC */  lw         $v0, 0xCC($s0)
/* B0C4C 800FA88C 850600D8 */  lh         $a2, 0xD8($t0)
/* B0C50 800FA890 4600120D */  trunc.w.s  $f8, $f2
/* B0C54 800FA894 44034000 */  mfc1       $v1, $f8
/* B0C58 800FA898 AFA30030 */  sw         $v1, 0x30($sp)
/* B0C5C 800FA89C AFA20010 */  sw         $v0, 0x10($sp)
/* B0C60 800FA8A0 C60200EC */  lwc1       $f2, 0xEC($s0)
/* B0C64 800FA8A4 C600010C */  lwc1       $f0, 0x10C($s0)
/* B0C68 800FA8A8 46001082 */  mul.s      $f2, $f2, $f0
/* B0C6C 800FA8AC 3C01800D */  lui        $at, %hi(D_race_800CCF88)
/* B0C70 800FA8B0 C420CF88 */  lwc1       $f0, %lo(D_race_800CCF88)($at)
/* B0C74 800FA8B4 46002102 */  mul.s      $f4, $f4, $f0
/* B0C78 800FA8B8 E7A20014 */  swc1       $f2, 0x14($sp)
/* B0C7C 800FA8BC C60200EC */  lwc1       $f2, 0xEC($s0)
/* B0C80 800FA8C0 C6000114 */  lwc1       $f0, 0x114($s0)
/* B0C84 800FA8C4 46001082 */  mul.s      $f2, $f2, $f0
/* B0C88 800FA8C8 4600220D */  trunc.w.s  $f8, $f4
/* B0C8C 800FA8CC 440A4000 */  mfc1       $t2, $f8
/* B0C90 800FA8D0 006A1821 */  addu       $v1, $v1, $t2
/* B0C94 800FA8D4 44830000 */  mtc1       $v1, $f0
/* B0C98 800FA8D8 46800020 */  cvt.s.w    $f0, $f0
/* B0C9C 800FA8DC 46003182 */  mul.s      $f6, $f6, $f0
/* B0CA0 800FA8E0 02402821 */  addu       $a1, $s2, $zero
/* B0CA4 800FA8E4 00862021 */  addu       $a0, $a0, $a2
/* B0CA8 800FA8E8 AFA0001C */  sw         $zero, 0x1C($sp)
/* B0CAC 800FA8EC AFA00020 */  sw         $zero, 0x20($sp)
/* B0CB0 800FA8F0 4600320D */  trunc.w.s  $f8, $f6
/* B0CB4 800FA8F4 44074000 */  mfc1       $a3, $f8
/* B0CB8 800FA8F8 E7A20018 */  swc1       $f2, 0x18($sp)
/* B0CBC 800FA8FC 8E060020 */  lw         $a2, 0x20($s0)
/* B0CC0 800FA900 8D0200DC */  lw         $v0, 0xDC($t0)
/* B0CC4 800FA904 0040F809 */  jalr       $v0
/* B0CC8 800FA908 02273823 */   subu      $a3, $s1, $a3
/* B0CCC 800FA90C 12C00005 */  beqz       $s6, .Lrace_800FA924
/* B0CD0 800FA910 02002021 */   addu      $a0, $s0, $zero
/* B0CD4 800FA914 8E0600AC */  lw         $a2, 0xAC($s0)
/* B0CD8 800FA918 8E0700CC */  lw         $a3, 0xCC($s0)
/* B0CDC 800FA91C 0C03E5CA */  jal        func_race_800F9728
/* B0CE0 800FA920 2605003D */   addiu     $a1, $s0, 0x3D
.Lrace_800FA924:
/* B0CE4 800FA924 8E020088 */  lw         $v0, 0x88($s0)
/* B0CE8 800FA928 10400038 */  beqz       $v0, .Lrace_800FAA0C
/* B0CEC 800FA92C 00000000 */   nop
/* B0CF0 800FA930 02402821 */  addu       $a1, $s2, $zero
/* B0CF4 800FA934 8E04000C */  lw         $a0, 0xC($s0)
/* B0CF8 800FA938 0C003053 */  jal        func_8000C14C
/* B0CFC 800FA93C 24060025 */   addiu     $a2, $zero, 0x25
/* B0D00 800FA940 02402821 */  addu       $a1, $s2, $zero
/* B0D04 800FA944 02603021 */  addu       $a2, $s3, $zero
/* B0D08 800FA948 8E040020 */  lw         $a0, 0x20($s0)
/* B0D0C 800FA94C 0C01376C */  jal        func_8004DDB0
/* B0D10 800FA950 02A03821 */   addu      $a3, $s5, $zero
/* B0D14 800FA954 C7A00030 */  lwc1       $f0, 0x30($sp)
/* B0D18 800FA958 46800020 */  cvt.s.w    $f0, $f0
/* B0D1C 800FA95C C60200EC */  lwc1       $f2, 0xEC($s0)
/* B0D20 800FA960 C60400EC */  lwc1       $f4, 0xEC($s0)
/* B0D24 800FA964 8E040000 */  lw         $a0, 0x0($s0)
/* B0D28 800FA968 C606010C */  lwc1       $f6, 0x10C($s0)
/* B0D2C 800FA96C 46001082 */  mul.s      $f2, $f2, $f0
/* B0D30 800FA970 8E0900B0 */  lw         $t1, 0xB0($s0)
/* B0D34 800FA974 8C88012C */  lw         $t0, 0x12C($a0)
/* B0D38 800FA978 8E0200D0 */  lw         $v0, 0xD0($s0)
/* B0D3C 800FA97C 850600D8 */  lh         $a2, 0xD8($t0)
/* B0D40 800FA980 4600120D */  trunc.w.s  $f8, $f2
/* B0D44 800FA984 44034000 */  mfc1       $v1, $f8
/* B0D48 800FA988 AFA30030 */  sw         $v1, 0x30($sp)
/* B0D4C 800FA98C AFA20010 */  sw         $v0, 0x10($sp)
/* B0D50 800FA990 C60000EC */  lwc1       $f0, 0xEC($s0)
/* B0D54 800FA994 C602010C */  lwc1       $f2, 0x10C($s0)
/* B0D58 800FA998 46020002 */  mul.s      $f0, $f0, $f2
/* B0D5C 800FA99C 00000000 */  nop
/* B0D60 800FA9A0 46142102 */  mul.s      $f4, $f4, $f20
/* B0D64 800FA9A4 E7A00014 */  swc1       $f0, 0x14($sp)
/* B0D68 800FA9A8 C60200EC */  lwc1       $f2, 0xEC($s0)
/* B0D6C 800FA9AC C6000114 */  lwc1       $f0, 0x114($s0)
/* B0D70 800FA9B0 46001082 */  mul.s      $f2, $f2, $f0
/* B0D74 800FA9B4 4600220D */  trunc.w.s  $f8, $f4
/* B0D78 800FA9B8 440A4000 */  mfc1       $t2, $f8
/* B0D7C 800FA9BC 006A1821 */  addu       $v1, $v1, $t2
/* B0D80 800FA9C0 44830000 */  mtc1       $v1, $f0
/* B0D84 800FA9C4 46800020 */  cvt.s.w    $f0, $f0
/* B0D88 800FA9C8 46003182 */  mul.s      $f6, $f6, $f0
/* B0D8C 800FA9CC 02402821 */  addu       $a1, $s2, $zero
/* B0D90 800FA9D0 00862021 */  addu       $a0, $a0, $a2
/* B0D94 800FA9D4 AFA0001C */  sw         $zero, 0x1C($sp)
/* B0D98 800FA9D8 AFA00020 */  sw         $zero, 0x20($sp)
/* B0D9C 800FA9DC 4600320D */  trunc.w.s  $f8, $f6
/* B0DA0 800FA9E0 44074000 */  mfc1       $a3, $f8
/* B0DA4 800FA9E4 E7A20018 */  swc1       $f2, 0x18($sp)
/* B0DA8 800FA9E8 8E060020 */  lw         $a2, 0x20($s0)
/* B0DAC 800FA9EC 8D0200DC */  lw         $v0, 0xDC($t0)
/* B0DB0 800FA9F0 0040F809 */  jalr       $v0
/* B0DB4 800FA9F4 01273823 */   subu      $a3, $t1, $a3
/* B0DB8 800FA9F8 02002021 */  addu       $a0, $s0, $zero
/* B0DBC 800FA9FC 8E0600B0 */  lw         $a2, 0xB0($s0)
/* B0DC0 800FAA00 8E0700D0 */  lw         $a3, 0xD0($s0)
/* B0DC4 800FAA04 0C03E5CA */  jal        func_race_800F9728
/* B0DC8 800FAA08 26050046 */   addiu     $a1, $s0, 0x46
.Lrace_800FAA0C:
/* B0DCC 800FAA0C 9202003A */  lbu        $v0, 0x3A($s0)
/* B0DD0 800FAA10 1040002A */  beqz       $v0, .Lrace_800FAABC
/* B0DD4 800FAA14 02402821 */   addu      $a1, $s2, $zero
/* B0DD8 800FAA18 8E04000C */  lw         $a0, 0xC($s0)
/* B0DDC 800FAA1C 0C003053 */  jal        func_8000C14C
/* B0DE0 800FAA20 24060026 */   addiu     $a2, $zero, 0x26
/* B0DE4 800FAA24 02402821 */  addu       $a1, $s2, $zero
/* B0DE8 800FAA28 02603021 */  addu       $a2, $s3, $zero
/* B0DEC 800FAA2C 8E040020 */  lw         $a0, 0x20($s0)
/* B0DF0 800FAA30 0C01376C */  jal        func_8004DDB0
/* B0DF4 800FAA34 02A03821 */   addu      $a3, $s5, $zero
/* B0DF8 800FAA38 02402821 */  addu       $a1, $s2, $zero
/* B0DFC 800FAA3C 8FA30030 */  lw         $v1, 0x30($sp)
/* B0E00 800FAA40 8E060000 */  lw         $a2, 0x0($s0)
/* B0E04 800FAA44 C604010C */  lwc1       $f4, 0x10C($s0)
/* B0E08 800FAA48 8E0900BC */  lw         $t1, 0xBC($s0)
/* B0E0C 800FAA4C 8CC8012C */  lw         $t0, 0x12C($a2)
/* B0E10 800FAA50 8E0200DC */  lw         $v0, 0xDC($s0)
/* B0E14 800FAA54 850400D8 */  lh         $a0, 0xD8($t0)
/* B0E18 800FAA58 2463000E */  addiu      $v1, $v1, 0xE
/* B0E1C 800FAA5C AFA20010 */  sw         $v0, 0x10($sp)
/* B0E20 800FAA60 C600010C */  lwc1       $f0, 0x10C($s0)
/* B0E24 800FAA64 00C42021 */  addu       $a0, $a2, $a0
/* B0E28 800FAA68 E7A00014 */  swc1       $f0, 0x14($sp)
/* B0E2C 800FAA6C 44830000 */  mtc1       $v1, $f0
/* B0E30 800FAA70 46800020 */  cvt.s.w    $f0, $f0
/* B0E34 800FAA74 C6020114 */  lwc1       $f2, 0x114($s0)
/* B0E38 800FAA78 46002102 */  mul.s      $f4, $f4, $f0
/* B0E3C 800FAA7C AFA0001C */  sw         $zero, 0x1C($sp)
/* B0E40 800FAA80 AFA00020 */  sw         $zero, 0x20($sp)
/* B0E44 800FAA84 E7A20018 */  swc1       $f2, 0x18($sp)
/* B0E48 800FAA88 8E060020 */  lw         $a2, 0x20($s0)
/* B0E4C 800FAA8C 8D0200DC */  lw         $v0, 0xDC($t0)
/* B0E50 800FAA90 4600220D */  trunc.w.s  $f8, $f4
/* B0E54 800FAA94 44074000 */  mfc1       $a3, $f8
/* B0E58 800FAA98 0040F809 */  jalr       $v0
/* B0E5C 800FAA9C 01273823 */   subu      $a3, $t1, $a3
/* B0E60 800FAAA0 02002021 */  addu       $a0, $s0, $zero
/* B0E64 800FAAA4 8E0600BC */  lw         $a2, 0xBC($s0)
/* B0E68 800FAAA8 8E0700DC */  lw         $a3, 0xDC($s0)
/* B0E6C 800FAAAC 0C03E5CA */  jal        func_race_800F9728
/* B0E70 800FAAB0 26050058 */   addiu     $a1, $s0, 0x58
/* B0E74 800FAAB4 0803EB44 */  j          .Lrace_800FAD10
/* B0E78 800FAAB8 00000000 */   nop
.Lrace_800FAABC:
/* B0E7C 800FAABC 24020008 */  addiu      $v0, $zero, 0x8
/* B0E80 800FAAC0 12820092 */  beq        $s4, $v0, .Lrace_800FAD0C
/* B0E84 800FAAC4 3C03800D */   lui       $v1, %hi(D_race_800CCFEC)
/* B0E88 800FAAC8 2463CFEC */  addiu      $v1, $v1, %lo(D_race_800CCFEC)
/* B0E8C 800FAACC 00141040 */  sll        $v0, $s4, 1
/* B0E90 800FAAD0 00431021 */  addu       $v0, $v0, $v1
/* B0E94 800FAAD4 8E04000C */  lw         $a0, 0xC($s0)
/* B0E98 800FAAD8 94460000 */  lhu        $a2, 0x0($v0)
/* B0E9C 800FAADC 0C003053 */  jal        func_8000C14C
/* B0EA0 800FAAE0 02402821 */   addu      $a1, $s2, $zero
/* B0EA4 800FAAE4 C600010C */  lwc1       $f0, 0x10C($s0)
/* B0EA8 800FAAE8 3C01800D */  lui        $at, %hi(D_race_800CCF8C)
/* B0EAC 800FAAEC C422CF8C */  lwc1       $f2, %lo(D_race_800CCF8C)($at)
/* B0EB0 800FAAF0 8E040000 */  lw         $a0, 0x0($s0)
/* B0EB4 800FAAF4 46020002 */  mul.s      $f0, $f0, $f2
/* B0EB8 800FAAF8 8E0800A8 */  lw         $t0, 0xA8($s0)
/* B0EBC 800FAAFC 8C83012C */  lw         $v1, 0x12C($a0)
/* B0EC0 800FAB00 8E0200C8 */  lw         $v0, 0xC8($s0)
/* B0EC4 800FAB04 846600D8 */  lh         $a2, 0xD8($v1)
/* B0EC8 800FAB08 4600020D */  trunc.w.s  $f8, $f0
/* B0ECC 800FAB0C 44074000 */  mfc1       $a3, $f8
/* B0ED0 800FAB10 AFA70030 */  sw         $a3, 0x30($sp)
/* B0ED4 800FAB14 AFA20010 */  sw         $v0, 0x10($sp)
/* B0ED8 800FAB18 C60000EC */  lwc1       $f0, 0xEC($s0)
/* B0EDC 800FAB1C C602010C */  lwc1       $f2, 0x10C($s0)
/* B0EE0 800FAB20 46020002 */  mul.s      $f0, $f0, $f2
/* B0EE4 800FAB24 E7A00014 */  swc1       $f0, 0x14($sp)
/* B0EE8 800FAB28 C60200EC */  lwc1       $f2, 0xEC($s0)
/* B0EEC 800FAB2C C6000114 */  lwc1       $f0, 0x114($s0)
/* B0EF0 800FAB30 46001082 */  mul.s      $f2, $f2, $f0
/* B0EF4 800FAB34 02402821 */  addu       $a1, $s2, $zero
/* B0EF8 800FAB38 00862021 */  addu       $a0, $a0, $a2
/* B0EFC 800FAB3C AFA0001C */  sw         $zero, 0x1C($sp)
/* B0F00 800FAB40 AFA00020 */  sw         $zero, 0x20($sp)
/* B0F04 800FAB44 E7A20018 */  swc1       $f2, 0x18($sp)
/* B0F08 800FAB48 8E060020 */  lw         $a2, 0x20($s0)
/* B0F0C 800FAB4C 8C6200DC */  lw         $v0, 0xDC($v1)
/* B0F10 800FAB50 0040F809 */  jalr       $v0
/* B0F14 800FAB54 01073821 */   addu      $a3, $t0, $a3
/* B0F18 800FAB58 3C03800D */  lui        $v1, %hi(D_race_800CCFCC)
/* B0F1C 800FAB5C 2463CFCC */  addiu      $v1, $v1, %lo(D_race_800CCFCC)
/* B0F20 800FAB60 00141080 */  sll        $v0, $s4, 2
/* B0F24 800FAB64 00431021 */  addu       $v0, $v0, $v1
/* B0F28 800FAB68 8C440000 */  lw         $a0, 0x0($v0)
/* B0F2C 800FAB6C 8E050010 */  lw         $a1, 0x10($s0)
/* B0F30 800FAB70 0C03DD2C */  jal        func_race_800F74B0
/* B0F34 800FAB74 00000000 */   nop
/* B0F38 800FAB78 02603021 */  addu       $a2, $s3, $zero
/* B0F3C 800FAB7C 8E040024 */  lw         $a0, 0x24($s0)
/* B0F40 800FAB80 8E050010 */  lw         $a1, 0x10($s0)
/* B0F44 800FAB84 0C01376C */  jal        func_8004DDB0
/* B0F48 800FAB88 02A03821 */   addu      $a3, $s5, $zero
/* B0F4C 800FAB8C C600010C */  lwc1       $f0, 0x10C($s0)
/* B0F50 800FAB90 C7A20030 */  lwc1       $f2, 0x30($sp)
/* B0F54 800FAB94 468010A0 */  cvt.s.w    $f2, $f2
/* B0F58 800FAB98 46020002 */  mul.s      $f0, $f0, $f2
/* B0F5C 800FAB9C C60200EC */  lwc1       $f2, 0xEC($s0)
/* B0F60 800FABA0 4600020D */  trunc.w.s  $f8, $f0
/* B0F64 800FABA4 44024000 */  mfc1       $v0, $f8
/* B0F68 800FABA8 44820000 */  mtc1       $v0, $f0
/* B0F6C 800FABAC 46800020 */  cvt.s.w    $f0, $f0
/* B0F70 800FABB0 46020002 */  mul.s      $f0, $f0, $f2
/* B0F74 800FABB4 AFA20030 */  sw         $v0, 0x30($sp)
/* B0F78 800FABB8 8E020074 */  lw         $v0, 0x74($s0)
/* B0F7C 800FABBC 4600020D */  trunc.w.s  $f8, $f0
/* B0F80 800FABC0 44054000 */  mfc1       $a1, $f8
/* B0F84 800FABC4 10400039 */  beqz       $v0, .Lrace_800FACAC
/* B0F88 800FABC8 AFA50030 */   sw        $a1, 0x30($sp)
/* B0F8C 800FABCC 00571821 */  addu       $v1, $v0, $s7
/* B0F90 800FABD0 2C62015F */  sltiu      $v0, $v1, 0x15F
/* B0F94 800FABD4 14400008 */  bnez       $v0, .Lrace_800FABF8
/* B0F98 800FABD8 AE030074 */   sw        $v1, 0x74($s0)
/* B0F9C 800FABDC 2C62041B */  sltiu      $v0, $v1, 0x41B
/* B0FA0 800FABE0 50400001 */  beql       $v0, $zero, .Lrace_800FABE8
/* B0FA4 800FABE4 AE000074 */   sw        $zero, 0x74($s0)
.Lrace_800FABE8:
/* B0FA8 800FABE8 3C01800D */  lui        $at, %hi(D_race_800CCF90)
/* B0FAC 800FABEC C434CF90 */  lwc1       $f20, %lo(D_race_800CCF90)($at)
/* B0FB0 800FABF0 0803EB12 */  j          .Lrace_800FAC48
/* B0FB4 800FABF4 00000000 */   nop
.Lrace_800FABF8:
/* B0FB8 800FABF8 2C6200B0 */  sltiu      $v0, $v1, 0xB0
/* B0FBC 800FABFC 1440000A */  bnez       $v0, .Lrace_800FAC28
/* B0FC0 800FAC00 2462FF51 */   addiu     $v0, $v1, -0xAF
/* B0FC4 800FAC04 44820000 */  mtc1       $v0, $f0
/* B0FC8 800FAC08 46800020 */  cvt.s.w    $f0, $f0
/* B0FCC 800FAC0C 3C01800D */  lui        $at, %hi(D_race_800CCF94)
/* B0FD0 800FAC10 C422CF94 */  lwc1       $f2, %lo(D_race_800CCF94)($at)
/* B0FD4 800FAC14 3C01800D */  lui        $at, %hi(D_race_800CCF98)
/* B0FD8 800FAC18 C424CF98 */  lwc1       $f4, %lo(D_race_800CCF98)($at)
/* B0FDC 800FAC1C 46020003 */  div.s      $f0, $f0, $f2
/* B0FE0 800FAC20 0803EB12 */  j          .Lrace_800FAC48
/* B0FE4 800FAC24 46002501 */   sub.s     $f20, $f4, $f0
.Lrace_800FAC28:
/* B0FE8 800FAC28 44830000 */  mtc1       $v1, $f0
/* B0FEC 800FAC2C 46800020 */  cvt.s.w    $f0, $f0
/* B0FF0 800FAC30 3C01800D */  lui        $at, %hi(D_race_800CCF9C)
/* B0FF4 800FAC34 C422CF9C */  lwc1       $f2, %lo(D_race_800CCF9C)($at)
/* B0FF8 800FAC38 3C01800D */  lui        $at, %hi(D_race_800CCFA0)
/* B0FFC 800FAC3C C424CFA0 */  lwc1       $f4, %lo(D_race_800CCFA0)($at)
/* B1000 800FAC40 46020003 */  div.s      $f0, $f0, $f2
/* B1004 800FAC44 46040500 */  add.s      $f20, $f0, $f4
.Lrace_800FAC48:
/* B1008 800FAC48 C60000EC */  lwc1       $f0, 0xEC($s0)
/* B100C 800FAC4C 8E040000 */  lw         $a0, 0x0($s0)
/* B1010 800FAC50 8E0200C8 */  lw         $v0, 0xC8($s0)
/* B1014 800FAC54 8E0300A8 */  lw         $v1, 0xA8($s0)
/* B1018 800FAC58 8FA70030 */  lw         $a3, 0x30($sp)
/* B101C 800FAC5C 8C88012C */  lw         $t0, 0x12C($a0)
/* B1020 800FAC60 4600A502 */  mul.s      $f20, $f20, $f0
/* B1024 800FAC64 850900D8 */  lh         $t1, 0xD8($t0)
/* B1028 800FAC68 AFA20010 */  sw         $v0, 0x10($sp)
/* B102C 800FAC6C C600010C */  lwc1       $f0, 0x10C($s0)
/* B1030 800FAC70 46140002 */  mul.s      $f0, $f0, $f20
/* B1034 800FAC74 E7A00014 */  swc1       $f0, 0x14($sp)
/* B1038 800FAC78 C6000114 */  lwc1       $f0, 0x114($s0)
/* B103C 800FAC7C 46140002 */  mul.s      $f0, $f0, $f20
/* B1040 800FAC80 00673823 */  subu       $a3, $v1, $a3
/* B1044 800FAC84 AFA0001C */  sw         $zero, 0x1C($sp)
/* B1048 800FAC88 AFA00020 */  sw         $zero, 0x20($sp)
/* B104C 800FAC8C E7A00018 */  swc1       $f0, 0x18($sp)
/* B1050 800FAC90 8E050010 */  lw         $a1, 0x10($s0)
/* B1054 800FAC94 8E060024 */  lw         $a2, 0x24($s0)
/* B1058 800FAC98 8D0200DC */  lw         $v0, 0xDC($t0)
/* B105C 800FAC9C 0040F809 */  jalr       $v0
/* B1060 800FACA0 00892021 */   addu      $a0, $a0, $t1
/* B1064 800FACA4 0803EB44 */  j          .Lrace_800FAD10
/* B1068 800FACA8 00000000 */   nop
.Lrace_800FACAC:
/* B106C 800FACAC 8E040000 */  lw         $a0, 0x0($s0)
/* B1070 800FACB0 8E0200C8 */  lw         $v0, 0xC8($s0)
/* B1074 800FACB4 8C83012C */  lw         $v1, 0x12C($a0)
/* B1078 800FACB8 8E0700A8 */  lw         $a3, 0xA8($s0)
/* B107C 800FACBC 846800D8 */  lh         $t0, 0xD8($v1)
/* B1080 800FACC0 AFA20010 */  sw         $v0, 0x10($sp)
/* B1084 800FACC4 C600010C */  lwc1       $f0, 0x10C($s0)
/* B1088 800FACC8 C60200EC */  lwc1       $f2, 0xEC($s0)
/* B108C 800FACCC 46020002 */  mul.s      $f0, $f0, $f2
/* B1090 800FACD0 E7A00014 */  swc1       $f0, 0x14($sp)
/* B1094 800FACD4 C6020114 */  lwc1       $f2, 0x114($s0)
/* B1098 800FACD8 C60000EC */  lwc1       $f0, 0xEC($s0)
/* B109C 800FACDC 46001082 */  mul.s      $f2, $f2, $f0
/* B10A0 800FACE0 00E53823 */  subu       $a3, $a3, $a1
/* B10A4 800FACE4 AFA0001C */  sw         $zero, 0x1C($sp)
/* B10A8 800FACE8 AFA00020 */  sw         $zero, 0x20($sp)
/* B10AC 800FACEC E7A20018 */  swc1       $f2, 0x18($sp)
/* B10B0 800FACF0 8E050010 */  lw         $a1, 0x10($s0)
/* B10B4 800FACF4 8E060024 */  lw         $a2, 0x24($s0)
/* B10B8 800FACF8 8C6200DC */  lw         $v0, 0xDC($v1)
/* B10BC 800FACFC 0040F809 */  jalr       $v0
/* B10C0 800FAD00 00882021 */   addu      $a0, $a0, $t0
/* B10C4 800FAD04 0803EB44 */  j          .Lrace_800FAD10
/* B10C8 800FAD08 00000000 */   nop
.Lrace_800FAD0C:
/* B10CC 800FAD0C AE000074 */  sw         $zero, 0x74($s0)
.Lrace_800FAD10:
/* B10D0 800FAD10 8E02002C */  lw         $v0, 0x2C($s0)
/* B10D4 800FAD14 8C420D7C */  lw         $v0, 0xD7C($v0)
/* B10D8 800FAD18 1040002D */  beqz       $v0, .Lrace_800FADD0
/* B10DC 800FAD1C 00000000 */   nop
/* B10E0 800FAD20 02002021 */  addu       $a0, $s0, $zero
/* B10E4 800FAD24 8E0600B4 */  lw         $a2, 0xB4($s0)
/* B10E8 800FAD28 8E0700D4 */  lw         $a3, 0xD4($s0)
/* B10EC 800FAD2C 0C03E5CA */  jal        func_race_800F9728
/* B10F0 800FAD30 2605004F */   addiu     $a1, $s0, 0x4F
/* B10F4 800FAD34 00408821 */  addu       $s1, $v0, $zero
/* B10F8 800FAD38 26120014 */  addiu      $s2, $s0, 0x14
/* B10FC 800FAD3C 02402821 */  addu       $a1, $s2, $zero
/* B1100 800FAD40 8E04000C */  lw         $a0, 0xC($s0)
/* B1104 800FAD44 0C003053 */  jal        func_8000C14C
/* B1108 800FAD48 24060021 */   addiu     $a2, $zero, 0x21
/* B110C 800FAD4C 02402821 */  addu       $a1, $s2, $zero
/* B1110 800FAD50 27A60030 */  addiu      $a2, $sp, 0x30
/* B1114 800FAD54 8E040020 */  lw         $a0, 0x20($s0)
/* B1118 800FAD58 0C01376C */  jal        func_8004DDB0
/* B111C 800FAD5C 27A70034 */   addiu     $a3, $sp, 0x34
/* B1120 800FAD60 8FA20030 */  lw         $v0, 0x30($sp)
/* B1124 800FAD64 C600010C */  lwc1       $f0, 0x10C($s0)
/* B1128 800FAD68 24420004 */  addiu      $v0, $v0, 0x4
/* B112C 800FAD6C 44821000 */  mtc1       $v0, $f2
/* B1130 800FAD70 468010A0 */  cvt.s.w    $f2, $f2
/* B1134 800FAD74 46020002 */  mul.s      $f0, $f0, $f2
/* B1138 800FAD78 8E03013C */  lw         $v1, 0x13C($s0)
/* B113C 800FAD7C 4600020D */  trunc.w.s  $f8, $f0
/* B1140 800FAD80 44024000 */  mfc1       $v0, $f8
/* B1144 800FAD84 10600012 */  beqz       $v1, .Lrace_800FADD0
/* B1148 800FAD88 02228823 */   subu      $s1, $s1, $v0
/* B114C 800FAD8C 8E040000 */  lw         $a0, 0x0($s0)
/* B1150 800FAD90 8C83012C */  lw         $v1, 0x12C($a0)
/* B1154 800FAD94 8E0200D4 */  lw         $v0, 0xD4($s0)
/* B1158 800FAD98 846800D8 */  lh         $t0, 0xD8($v1)
/* B115C 800FAD9C AFA20010 */  sw         $v0, 0x10($sp)
/* B1160 800FADA0 C600010C */  lwc1       $f0, 0x10C($s0)
/* B1164 800FADA4 02402821 */  addu       $a1, $s2, $zero
/* B1168 800FADA8 E7A00014 */  swc1       $f0, 0x14($sp)
/* B116C 800FADAC C6000114 */  lwc1       $f0, 0x114($s0)
/* B1170 800FADB0 02203821 */  addu       $a3, $s1, $zero
/* B1174 800FADB4 AFA0001C */  sw         $zero, 0x1C($sp)
/* B1178 800FADB8 AFA00020 */  sw         $zero, 0x20($sp)
/* B117C 800FADBC E7A00018 */  swc1       $f0, 0x18($sp)
/* B1180 800FADC0 8E060020 */  lw         $a2, 0x20($s0)
/* B1184 800FADC4 8C6200DC */  lw         $v0, 0xDC($v1)
/* B1188 800FADC8 0040F809 */  jalr       $v0
/* B118C 800FADCC 00882021 */   addu      $a0, $a0, $t0
.Lrace_800FADD0:
/* B1190 800FADD0 8E02002C */  lw         $v0, 0x2C($s0)
/* B1194 800FADD4 8C420D04 */  lw         $v0, 0xD04($v0)
/* B1198 800FADD8 30424000 */  andi       $v0, $v0, 0x4000
/* B119C 800FADDC 10400018 */  beqz       $v0, .Lrace_800FAE40
/* B11A0 800FADE0 26110014 */   addiu     $s1, $s0, 0x14
/* B11A4 800FADE4 02202821 */  addu       $a1, $s1, $zero
/* B11A8 800FADE8 8E04000C */  lw         $a0, 0xC($s0)
/* B11AC 800FADEC 0C003053 */  jal        func_8000C14C
/* B11B0 800FADF0 24060024 */   addiu     $a2, $zero, 0x24
/* B11B4 800FADF4 8E02013C */  lw         $v0, 0x13C($s0)
/* B11B8 800FADF8 10400011 */  beqz       $v0, .Lrace_800FAE40
/* B11BC 800FADFC 02202821 */   addu      $a1, $s1, $zero
/* B11C0 800FAE00 8E040000 */  lw         $a0, 0x0($s0)
/* B11C4 800FAE04 8C83012C */  lw         $v1, 0x12C($a0)
/* B11C8 800FAE08 8E0200D8 */  lw         $v0, 0xD8($s0)
/* B11CC 800FAE0C 846800D8 */  lh         $t0, 0xD8($v1)
/* B11D0 800FAE10 AFA20010 */  sw         $v0, 0x10($sp)
/* B11D4 800FAE14 C600010C */  lwc1       $f0, 0x10C($s0)
/* B11D8 800FAE18 E7A00014 */  swc1       $f0, 0x14($sp)
/* B11DC 800FAE1C C6000114 */  lwc1       $f0, 0x114($s0)
/* B11E0 800FAE20 AFA0001C */  sw         $zero, 0x1C($sp)
/* B11E4 800FAE24 AFA00020 */  sw         $zero, 0x20($sp)
/* B11E8 800FAE28 E7A00018 */  swc1       $f0, 0x18($sp)
/* B11EC 800FAE2C 8E060020 */  lw         $a2, 0x20($s0)
/* B11F0 800FAE30 8E0700B8 */  lw         $a3, 0xB8($s0)
/* B11F4 800FAE34 8C6200DC */  lw         $v0, 0xDC($v1)
/* B11F8 800FAE38 0040F809 */  jalr       $v0
/* B11FC 800FAE3C 00882021 */   addu      $a0, $a0, $t0
.Lrace_800FAE40:
/* B1200 800FAE40 8E02002C */  lw         $v0, 0x2C($s0)
/* B1204 800FAE44 240500FF */  addiu      $a1, $zero, 0xFF
/* B1208 800FAE48 8C430CCC */  lw         $v1, 0xCCC($v0)
/* B120C 800FAE4C 8C540D50 */  lw         $s4, 0xD50($v0)
/* B1210 800FAE50 24020002 */  addiu      $v0, $zero, 0x2
/* B1214 800FAE54 A3A5002B */  sb         $a1, 0x2B($sp)
/* B1218 800FAE58 1062001D */  beq        $v1, $v0, .Lrace_800FAED0
/* B121C 800FAE5C 00602021 */   addu      $a0, $v1, $zero
/* B1220 800FAE60 28620003 */  slti       $v0, $v1, 0x3
/* B1224 800FAE64 10400005 */  beqz       $v0, .Lrace_800FAE7C
/* B1228 800FAE68 24020001 */   addiu     $v0, $zero, 0x1
/* B122C 800FAE6C 1062000A */  beq        $v1, $v0, .Lrace_800FAE98
/* B1230 800FAE70 00008821 */   addu      $s1, $zero, $zero
/* B1234 800FAE74 0803EBC8 */  j          .Lrace_800FAF20
/* B1238 800FAE78 240200FF */   addiu     $v0, $zero, 0xFF
.Lrace_800FAE7C:
/* B123C 800FAE7C 24020003 */  addiu      $v0, $zero, 0x3
/* B1240 800FAE80 1082001B */  beq        $a0, $v0, .Lrace_800FAEF0
/* B1244 800FAE84 24020004 */   addiu     $v0, $zero, 0x4
/* B1248 800FAE88 1082000A */  beq        $a0, $v0, .Lrace_800FAEB4
/* B124C 800FAE8C 00008821 */   addu      $s1, $zero, $zero
/* B1250 800FAE90 0803EBC8 */  j          .Lrace_800FAF20
/* B1254 800FAE94 240200FF */   addiu     $v0, $zero, 0xFF
.Lrace_800FAE98:
/* B1258 800FAE98 A3A50028 */  sb         $a1, 0x28($sp)
/* B125C 800FAE9C A3A00029 */  sb         $zero, 0x29($sp)
/* B1260 800FAEA0 A3A0002A */  sb         $zero, 0x2A($sp)
/* B1264 800FAEA4 8E030008 */  lw         $v1, 0x8($s0)
/* B1268 800FAEA8 8C620008 */  lw         $v0, 0x8($v1)
/* B126C 800FAEAC 0803EBC2 */  j          .Lrace_800FAF08
/* B1270 800FAEB0 26850002 */   addiu     $a1, $s4, 0x2
.Lrace_800FAEB4:
/* B1274 800FAEB4 A3A50028 */  sb         $a1, 0x28($sp)
/* B1278 800FAEB8 A3A50029 */  sb         $a1, 0x29($sp)
/* B127C 800FAEBC A3A0002A */  sb         $zero, 0x2A($sp)
/* B1280 800FAEC0 8E030008 */  lw         $v1, 0x8($s0)
/* B1284 800FAEC4 8C620008 */  lw         $v0, 0x8($v1)
/* B1288 800FAEC8 0803EBC2 */  j          .Lrace_800FAF08
/* B128C 800FAECC 26850006 */   addiu     $a1, $s4, 0x6
.Lrace_800FAED0:
/* B1290 800FAED0 24020050 */  addiu      $v0, $zero, 0x50
/* B1294 800FAED4 A3A20028 */  sb         $v0, 0x28($sp)
/* B1298 800FAED8 A3A20029 */  sb         $v0, 0x29($sp)
/* B129C 800FAEDC A3A5002A */  sb         $a1, 0x2A($sp)
/* B12A0 800FAEE0 8E030008 */  lw         $v1, 0x8($s0)
/* B12A4 800FAEE4 8C620008 */  lw         $v0, 0x8($v1)
/* B12A8 800FAEE8 0803EBC2 */  j          .Lrace_800FAF08
/* B12AC 800FAEEC 26850010 */   addiu     $a1, $s4, 0x10
.Lrace_800FAEF0:
/* B12B0 800FAEF0 A3A00028 */  sb         $zero, 0x28($sp)
/* B12B4 800FAEF4 A3A50029 */  sb         $a1, 0x29($sp)
/* B12B8 800FAEF8 A3A0002A */  sb         $zero, 0x2A($sp)
/* B12BC 800FAEFC 8E030008 */  lw         $v1, 0x8($s0)
/* B12C0 800FAF00 8C620008 */  lw         $v0, 0x8($v1)
/* B12C4 800FAF04 26850014 */  addiu      $a1, $s4, 0x14
.Lrace_800FAF08:
/* B12C8 800FAF08 84440048 */  lh         $a0, 0x48($v0)
/* B12CC 800FAF0C 8C42004C */  lw         $v0, 0x4C($v0)
/* B12D0 800FAF10 0040F809 */  jalr       $v0
/* B12D4 800FAF14 00642021 */   addu      $a0, $v1, $a0
/* B12D8 800FAF18 0803EBCB */  j          .Lrace_800FAF2C
/* B12DC 800FAF1C 00408821 */   addu      $s1, $v0, $zero
.Lrace_800FAF20:
/* B12E0 800FAF20 A3A20028 */  sb         $v0, 0x28($sp)
/* B12E4 800FAF24 A3A20029 */  sb         $v0, 0x29($sp)
/* B12E8 800FAF28 A3A2002A */  sb         $v0, 0x2A($sp)
.Lrace_800FAF2C:
/* B12EC 800FAF2C 16200003 */  bnez       $s1, .Lrace_800FAF3C
/* B12F0 800FAF30 00000000 */   nop
/* B12F4 800FAF34 12800098 */  beqz       $s4, .Lrace_800FB198
/* B12F8 800FAF38 00000000 */   nop
.Lrace_800FAF3C:
/* B12FC 800FAF3C 8E030008 */  lw         $v1, 0x8($s0)
/* B1300 800FAF40 8C620008 */  lw         $v0, 0x8($v1)
/* B1304 800FAF44 2405000B */  addiu      $a1, $zero, 0xB
/* B1308 800FAF48 84440048 */  lh         $a0, 0x48($v0)
/* B130C 800FAF4C 8C42004C */  lw         $v0, 0x4C($v0)
/* B1310 800FAF50 0040F809 */  jalr       $v0
/* B1314 800FAF54 00642021 */   addu      $a0, $v1, $a0
/* B1318 800FAF58 00402821 */  addu       $a1, $v0, $zero
/* B131C 800FAF5C C60200F0 */  lwc1       $f2, 0xF0($s0)
/* B1320 800FAF60 C4A00030 */  lwc1       $f0, 0x30($a1)
/* B1324 800FAF64 46800020 */  cvt.s.w    $f0, $f0
/* B1328 800FAF68 46001002 */  mul.s      $f0, $f2, $f0
/* B132C 800FAF6C C604010C */  lwc1       $f4, 0x10C($s0)
/* B1330 800FAF70 46002102 */  mul.s      $f4, $f4, $f0
/* B1334 800FAF74 4480A000 */  mtc1       $zero, $f20
/* B1338 800FAF78 8E040000 */  lw         $a0, 0x0($s0)
/* B133C 800FAF7C 8E0200E0 */  lw         $v0, 0xE0($s0)
/* B1340 800FAF80 C4A00034 */  lwc1       $f0, 0x34($a1)
/* B1344 800FAF84 46800020 */  cvt.s.w    $f0, $f0
/* B1348 800FAF88 46001082 */  mul.s      $f2, $f2, $f0
/* B134C 800FAF8C 4406A000 */  mfc1       $a2, $f20
/* B1350 800FAF90 8C83012C */  lw         $v1, 0x12C($a0)
/* B1354 800FAF94 C6000114 */  lwc1       $f0, 0x114($s0)
/* B1358 800FAF98 84680100 */  lh         $t0, 0x100($v1)
/* B135C 800FAF9C 46020002 */  mul.s      $f0, $f0, $f2
/* B1360 800FAFA0 AFA20010 */  sw         $v0, 0x10($sp)
/* B1364 800FAFA4 4600220D */  trunc.w.s  $f8, $f4
/* B1368 800FAFA8 44134000 */  mfc1       $s3, $f8
/* B136C 800FAFAC AFB30014 */  sw         $s3, 0x14($sp)
/* B1370 800FAFB0 4600020D */  trunc.w.s  $f8, $f0
/* B1374 800FAFB4 44124000 */  mfc1       $s2, $f8
/* B1378 800FAFB8 AFB20018 */  sw         $s2, 0x18($sp)
/* B137C 800FAFBC 8E0700C0 */  lw         $a3, 0xC0($s0)
/* B1380 800FAFC0 8C620104 */  lw         $v0, 0x104($v1)
/* B1384 800FAFC4 0040F809 */  jalr       $v0
/* B1388 800FAFC8 00882021 */   addu      $a0, $a0, $t0
/* B138C 800FAFCC 8E030008 */  lw         $v1, 0x8($s0)
/* B1390 800FAFD0 8C620008 */  lw         $v0, 0x8($v1)
/* B1394 800FAFD4 2405000C */  addiu      $a1, $zero, 0xC
/* B1398 800FAFD8 84440048 */  lh         $a0, 0x48($v0)
/* B139C 800FAFDC 8C42004C */  lw         $v0, 0x4C($v0)
/* B13A0 800FAFE0 0040F809 */  jalr       $v0
/* B13A4 800FAFE4 00642021 */   addu      $a0, $v1, $a0
/* B13A8 800FAFE8 00402821 */  addu       $a1, $v0, $zero
/* B13AC 800FAFEC 8BAC0028 */  lwl        $t4, 0x28($sp)
/* B13B0 800FAFF0 9BAC002B */  lwr        $t4, 0x2B($sp)
/* B13B4 800FAFF4 A8AC0046 */  swl        $t4, 0x46($a1)
/* B13B8 800FAFF8 B8AC0049 */  swr        $t4, 0x49($a1)
/* B13BC 800FAFFC 8E040000 */  lw         $a0, 0x0($s0)
/* B13C0 800FB000 8E0200E0 */  lw         $v0, 0xE0($s0)
/* B13C4 800FB004 8C83012C */  lw         $v1, 0x12C($a0)
/* B13C8 800FB008 4406A000 */  mfc1       $a2, $f20
/* B13CC 800FB00C 84680100 */  lh         $t0, 0x100($v1)
/* B13D0 800FB010 AFA20010 */  sw         $v0, 0x10($sp)
/* B13D4 800FB014 AFB30014 */  sw         $s3, 0x14($sp)
/* B13D8 800FB018 AFB20018 */  sw         $s2, 0x18($sp)
/* B13DC 800FB01C 8E0700C0 */  lw         $a3, 0xC0($s0)
/* B13E0 800FB020 8C620104 */  lw         $v0, 0x104($v1)
/* B13E4 800FB024 0040F809 */  jalr       $v0
/* B13E8 800FB028 00882021 */   addu      $a0, $a0, $t0
/* B13EC 800FB02C 1220002E */  beqz       $s1, .Lrace_800FB0E8
/* B13F0 800FB030 02202821 */   addu      $a1, $s1, $zero
/* B13F4 800FB034 00131140 */  sll        $v0, $s3, 5
/* B13F8 800FB038 00531023 */  subu       $v0, $v0, $s3
/* B13FC 800FB03C 00021182 */  srl        $v0, $v0, 6
/* B1400 800FB040 C4A00030 */  lwc1       $f0, 0x30($a1)
/* B1404 800FB044 46800020 */  cvt.s.w    $f0, $f0
/* B1408 800FB048 4406A000 */  mfc1       $a2, $f20
/* B140C 800FB04C 8E0300C0 */  lw         $v1, 0xC0($s0)
/* B1410 800FB050 C60600F0 */  lwc1       $f6, 0xF0($s0)
/* B1414 800FB054 C60200F0 */  lwc1       $f2, 0xF0($s0)
/* B1418 800FB058 C6040114 */  lwc1       $f4, 0x114($s0)
/* B141C 800FB05C 8E070000 */  lw         $a3, 0x0($s0)
/* B1420 800FB060 00628821 */  addu       $s1, $v1, $v0
/* B1424 800FB064 46003182 */  mul.s      $f6, $f6, $f0
/* B1428 800FB068 00121080 */  sll        $v0, $s2, 2
/* B142C 800FB06C 00521021 */  addu       $v0, $v0, $s2
/* B1430 800FB070 00021080 */  sll        $v0, $v0, 2
/* B1434 800FB074 C4A00034 */  lwc1       $f0, 0x34($a1)
/* B1438 800FB078 46800020 */  cvt.s.w    $f0, $f0
/* B143C 800FB07C 46001082 */  mul.s      $f2, $f2, $f0
/* B1440 800FB080 00521023 */  subu       $v0, $v0, $s2
/* B1444 800FB084 00021040 */  sll        $v0, $v0, 1
/* B1448 800FB088 00021182 */  srl        $v0, $v0, 6
/* B144C 800FB08C 8E0300E0 */  lw         $v1, 0xE0($s0)
/* B1450 800FB090 46022102 */  mul.s      $f4, $f4, $f2
/* B1454 800FB094 8CE8012C */  lw         $t0, 0x12C($a3)
/* B1458 800FB098 C600010C */  lwc1       $f0, 0x10C($s0)
/* B145C 800FB09C 00625021 */  addu       $t2, $v1, $v0
/* B1460 800FB0A0 85040100 */  lh         $a0, 0x100($t0)
/* B1464 800FB0A4 46060002 */  mul.s      $f0, $f0, $f6
/* B1468 800FB0A8 00E42021 */  addu       $a0, $a3, $a0
/* B146C 800FB0AC 4600220D */  trunc.w.s  $f8, $f4
/* B1470 800FB0B0 44034000 */  mfc1       $v1, $f8
/* B1474 800FB0B4 00031042 */  srl        $v0, $v1, 1
/* B1478 800FB0B8 01425023 */  subu       $t2, $t2, $v0
/* B147C 800FB0BC 4600020D */  trunc.w.s  $f8, $f0
/* B1480 800FB0C0 44074000 */  mfc1       $a3, $f8
/* B1484 800FB0C4 AFA70030 */  sw         $a3, 0x30($sp)
/* B1488 800FB0C8 AFA30034 */  sw         $v1, 0x34($sp)
/* B148C 800FB0CC AFA70014 */  sw         $a3, 0x14($sp)
/* B1490 800FB0D0 00073842 */  srl        $a3, $a3, 1
/* B1494 800FB0D4 AFAA0010 */  sw         $t2, 0x10($sp)
/* B1498 800FB0D8 AFA30018 */  sw         $v1, 0x18($sp)
/* B149C 800FB0DC 8D020104 */  lw         $v0, 0x104($t0)
/* B14A0 800FB0E0 0040F809 */  jalr       $v0
/* B14A4 800FB0E4 02273823 */   subu      $a3, $s1, $a3
.Lrace_800FB0E8:
/* B14A8 800FB0E8 1280002B */  beqz       $s4, .Lrace_800FB198
/* B14AC 800FB0EC 2685000C */   addiu     $a1, $s4, 0xC
/* B14B0 800FB0F0 8E030008 */  lw         $v1, 0x8($s0)
/* B14B4 800FB0F4 8C620008 */  lw         $v0, 0x8($v1)
/* B14B8 800FB0F8 84440048 */  lh         $a0, 0x48($v0)
/* B14BC 800FB0FC 8C42004C */  lw         $v0, 0x4C($v0)
/* B14C0 800FB100 0040F809 */  jalr       $v0
/* B14C4 800FB104 00642021 */   addu      $a0, $v1, $a0
/* B14C8 800FB108 00402821 */  addu       $a1, $v0, $zero
/* B14CC 800FB10C C4A00030 */  lwc1       $f0, 0x30($a1)
/* B14D0 800FB110 46800020 */  cvt.s.w    $f0, $f0
/* B14D4 800FB114 C60200F0 */  lwc1       $f2, 0xF0($s0)
/* B14D8 800FB118 00133840 */  sll        $a3, $s3, 1
/* B14DC 800FB11C 46001082 */  mul.s      $f2, $f2, $f0
/* B14E0 800FB120 00F33821 */  addu       $a3, $a3, $s3
/* B14E4 800FB124 000738C0 */  sll        $a3, $a3, 3
/* B14E8 800FB128 C604010C */  lwc1       $f4, 0x10C($s0)
/* B14EC 800FB12C 00073982 */  srl        $a3, $a3, 6
/* B14F0 800FB130 46022102 */  mul.s      $f4, $f4, $f2
/* B14F4 800FB134 8E0A00E0 */  lw         $t2, 0xE0($s0)
/* B14F8 800FB138 4406A000 */  mfc1       $a2, $f20
/* B14FC 800FB13C C60200F0 */  lwc1       $f2, 0xF0($s0)
/* B1500 800FB140 C4A00034 */  lwc1       $f0, 0x34($a1)
/* B1504 800FB144 46800020 */  cvt.s.w    $f0, $f0
/* B1508 800FB148 46001082 */  mul.s      $f2, $f2, $f0
/* B150C 800FB14C 8E0200C0 */  lw         $v0, 0xC0($s0)
/* B1510 800FB150 8E090000 */  lw         $t1, 0x0($s0)
/* B1514 800FB154 C6000114 */  lwc1       $f0, 0x114($s0)
/* B1518 800FB158 00473821 */  addu       $a3, $v0, $a3
/* B151C 800FB15C 46020002 */  mul.s      $f0, $f0, $f2
/* B1520 800FB160 8D28012C */  lw         $t0, 0x12C($t1)
/* B1524 800FB164 4600220D */  trunc.w.s  $f8, $f4
/* B1528 800FB168 44034000 */  mfc1       $v1, $f8
/* B152C 800FB16C AFA30030 */  sw         $v1, 0x30($sp)
/* B1530 800FB170 85040100 */  lh         $a0, 0x100($t0)
/* B1534 800FB174 4600020D */  trunc.w.s  $f8, $f0
/* B1538 800FB178 44024000 */  mfc1       $v0, $f8
/* B153C 800FB17C AFA20034 */  sw         $v0, 0x34($sp)
/* B1540 800FB180 AFAA0010 */  sw         $t2, 0x10($sp)
/* B1544 800FB184 AFA30014 */  sw         $v1, 0x14($sp)
/* B1548 800FB188 AFA20018 */  sw         $v0, 0x18($sp)
/* B154C 800FB18C 8D020104 */  lw         $v0, 0x104($t0)
/* B1550 800FB190 0040F809 */  jalr       $v0
/* B1554 800FB194 01242021 */   addu      $a0, $t1, $a0
.Lrace_800FB198:
/* B1558 800FB198 8E02002C */  lw         $v0, 0x2C($s0)
/* B155C 800FB19C 3C01800D */  lui        $at, %hi(D_race_800CCFA4)
/* B1560 800FB1A0 C420CFA4 */  lwc1       $f0, %lo(D_race_800CCFA4)($at)
/* B1564 800FB1A4 C4440A18 */  lwc1       $f4, 0xA18($v0)
/* B1568 800FB1A8 46002102 */  mul.s      $f4, $f4, $f0
/* B156C 800FB1AC 3C01800D */  lui        $at, %hi(D_race_800CCFA8)
/* B1570 800FB1B0 C422CFA8 */  lwc1       $f2, %lo(D_race_800CCFA8)($at)
/* B1574 800FB1B4 C6000078 */  lwc1       $f0, 0x78($s0)
/* B1578 800FB1B8 46020002 */  mul.s      $f0, $f0, $f2
/* B157C 800FB1BC 46002100 */  add.s      $f4, $f4, $f0
/* B1580 800FB1C0 9203003C */  lbu        $v1, 0x3C($s0)
/* B1584 800FB1C4 24020002 */  addiu      $v0, $zero, 0x2
/* B1588 800FB1C8 1062000D */  beq        $v1, $v0, .Lrace_800FB200
/* B158C 800FB1CC E6040078 */   swc1      $f4, 0x78($s0)
/* B1590 800FB1D0 28620003 */  slti       $v0, $v1, 0x3
/* B1594 800FB1D4 10400005 */  beqz       $v0, .Lrace_800FB1EC
/* B1598 800FB1D8 24020001 */   addiu     $v0, $zero, 0x1
/* B159C 800FB1DC 10620010 */  beq        $v1, $v0, .Lrace_800FB220
/* B15A0 800FB1E0 00000000 */   nop
/* B15A4 800FB1E4 0803EC8A */  j          .Lrace_800FB228
/* B15A8 800FB1E8 00000000 */   nop
.Lrace_800FB1EC:
/* B15AC 800FB1EC 24020003 */  addiu      $v0, $zero, 0x3
/* B15B0 800FB1F0 10620007 */  beq        $v1, $v0, .Lrace_800FB210
/* B15B4 800FB1F4 00000000 */   nop
/* B15B8 800FB1F8 0803EC8A */  j          .Lrace_800FB228
/* B15BC 800FB1FC 00000000 */   nop
.Lrace_800FB200:
/* B15C0 800FB200 0C03E4E9 */  jal        func_race_800F93A4
/* B15C4 800FB204 02002021 */   addu      $a0, $s0, $zero
/* B15C8 800FB208 0803EC8A */  j          .Lrace_800FB228
/* B15CC 800FB20C 00000000 */   nop
.Lrace_800FB210:
/* B15D0 800FB210 0C03E258 */  jal        func_race_800F8960
/* B15D4 800FB214 02002021 */   addu      $a0, $s0, $zero
/* B15D8 800FB218 0803EC8A */  j          .Lrace_800FB228
/* B15DC 800FB21C 00000000 */   nop
.Lrace_800FB220:
/* B15E0 800FB220 0C03E090 */  jal        func_race_800F8240
/* B15E4 800FB224 02002021 */   addu      $a0, $s0, $zero
.Lrace_800FB228:
/* B15E8 800FB228 8FBF0058 */  lw         $ra, 0x58($sp)
/* B15EC 800FB22C 8FB70054 */  lw         $s7, 0x54($sp)
/* B15F0 800FB230 8FB60050 */  lw         $s6, 0x50($sp)
/* B15F4 800FB234 8FB5004C */  lw         $s5, 0x4C($sp)
/* B15F8 800FB238 8FB40048 */  lw         $s4, 0x48($sp)
/* B15FC 800FB23C 8FB30044 */  lw         $s3, 0x44($sp)
/* B1600 800FB240 8FB20040 */  lw         $s2, 0x40($sp)
/* B1604 800FB244 8FB1003C */  lw         $s1, 0x3C($sp)
/* B1608 800FB248 8FB00038 */  lw         $s0, 0x38($sp)
/* B160C 800FB24C D7B40060 */  ldc1       $f20, 0x60($sp)
/* B1610 800FB250 03E00008 */  jr         $ra
/* B1614 800FB254 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_800FB258
/* B1618 800FB258 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B161C 800FB25C AFB00010 */  sw         $s0, 0x10($sp)
/* B1620 800FB260 00808021 */  addu       $s0, $a0, $zero
/* B1624 800FB264 AFBF0014 */  sw         $ra, 0x14($sp)
/* B1628 800FB268 0C0016DC */  jal        func_80005B70
/* B162C 800FB26C 26040014 */   addiu     $a0, $s0, 0x14
/* B1630 800FB270 0C03E5FC */  jal        func_race_800F97F0
/* B1634 800FB274 02002021 */   addu      $a0, $s0, $zero
/* B1638 800FB278 02001021 */  addu       $v0, $s0, $zero
/* B163C 800FB27C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B1640 800FB280 8FB00010 */  lw         $s0, 0x10($sp)
/* B1644 800FB284 03E00008 */  jr         $ra
/* B1648 800FB288 27BD0018 */   addiu     $sp, $sp, 0x18
