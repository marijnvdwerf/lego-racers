.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DF380
/* 95740 800DF380 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 95744 800DF384 AFB00010 */  sw         $s0, 0x10($sp)
/* 95748 800DF388 00808021 */  addu       $s0, $a0, $zero
/* 9574C 800DF38C 3C02800D */  lui        $v0, %hi(D_race_800CB440)
/* 95750 800DF390 2442B440 */  addiu      $v0, $v0, %lo(D_race_800CB440)
/* 95754 800DF394 26040004 */  addiu      $a0, $s0, 0x4
/* 95758 800DF398 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9575C 800DF39C 0C0164A4 */  jal        func_80059290
/* 95760 800DF3A0 AE020000 */   sw        $v0, 0x0($s0)
/* 95764 800DF3A4 02001021 */  addu       $v0, $s0, $zero
/* 95768 800DF3A8 AC400030 */  sw         $zero, 0x30($v0)
/* 9576C 800DF3AC AC40002C */  sw         $zero, 0x2C($v0)
/* 95770 800DF3B0 AC400034 */  sw         $zero, 0x34($v0)
/* 95774 800DF3B4 AC400038 */  sw         $zero, 0x38($v0)
/* 95778 800DF3B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9577C 800DF3BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 95780 800DF3C0 03E00008 */  jr         $ra
/* 95784 800DF3C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DF3C8
/* 95788 800DF3C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9578C 800DF3CC AFB10014 */  sw         $s1, 0x14($sp)
/* 95790 800DF3D0 00808821 */  addu       $s1, $a0, $zero
/* 95794 800DF3D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 95798 800DF3D8 00A08021 */  addu       $s0, $a1, $zero
/* 9579C 800DF3DC 3C02800D */  lui        $v0, %hi(D_race_800CB440)
/* 957A0 800DF3E0 2442B440 */  addiu      $v0, $v0, %lo(D_race_800CB440)
/* 957A4 800DF3E4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 957A8 800DF3E8 0C037D24 */  jal        func_race_800DF490
/* 957AC 800DF3EC AE220000 */   sw        $v0, 0x0($s1)
/* 957B0 800DF3F0 32100001 */  andi       $s0, $s0, 0x1
/* 957B4 800DF3F4 12000003 */  beqz       $s0, .Lrace_800DF404
/* 957B8 800DF3F8 00000000 */   nop
/* 957BC 800DF3FC 0C01FB5C */  jal        func_8007ED70
/* 957C0 800DF400 02202021 */   addu      $a0, $s1, $zero
.Lrace_800DF404:
/* 957C4 800DF404 8FBF0018 */  lw         $ra, 0x18($sp)
/* 957C8 800DF408 8FB10014 */  lw         $s1, 0x14($sp)
/* 957CC 800DF40C 8FB00010 */  lw         $s0, 0x10($sp)
/* 957D0 800DF410 03E00008 */  jr         $ra
/* 957D4 800DF414 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DF418
/* 957D8 800DF418 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 957DC 800DF41C AFB20018 */  sw         $s2, 0x18($sp)
/* 957E0 800DF420 00809021 */  addu       $s2, $a0, $zero
/* 957E4 800DF424 AFB00010 */  sw         $s0, 0x10($sp)
/* 957E8 800DF428 00A08021 */  addu       $s0, $a1, $zero
/* 957EC 800DF42C AFB10014 */  sw         $s1, 0x14($sp)
/* 957F0 800DF430 26510004 */  addiu      $s1, $s2, 0x4
/* 957F4 800DF434 02202021 */  addu       $a0, $s1, $zero
/* 957F8 800DF438 AFBF001C */  sw         $ra, 0x1C($sp)
/* 957FC 800DF43C 8E020000 */  lw         $v0, 0x0($s0)
/* 95800 800DF440 26050008 */  addiu      $a1, $s0, 0x8
/* 95804 800DF444 0C0165D9 */  jal        func_80059764
/* 95808 800DF448 AE420030 */   sw        $v0, 0x30($s2)
/* 9580C 800DF44C 8E050014 */  lw         $a1, 0x14($s0)
/* 95810 800DF450 0C0165E8 */  jal        func_800597A0
/* 95814 800DF454 02202021 */   addu      $a0, $s1, $zero
/* 95818 800DF458 8E020004 */  lw         $v0, 0x4($s0)
/* 9581C 800DF45C AE420034 */  sw         $v0, 0x34($s2)
/* 95820 800DF460 8E020018 */  lw         $v0, 0x18($s0)
/* 95824 800DF464 10400004 */  beqz       $v0, .Lrace_800DF478
/* 95828 800DF468 00000000 */   nop
/* 9582C 800DF46C 8E420038 */  lw         $v0, 0x38($s2)
/* 95830 800DF470 34420004 */  ori        $v0, $v0, 0x4
/* 95834 800DF474 AE420038 */  sw         $v0, 0x38($s2)
.Lrace_800DF478:
/* 95838 800DF478 8FBF001C */  lw         $ra, 0x1C($sp)
/* 9583C 800DF47C 8FB20018 */  lw         $s2, 0x18($sp)
/* 95840 800DF480 8FB10014 */  lw         $s1, 0x14($sp)
/* 95844 800DF484 8FB00010 */  lw         $s0, 0x10($sp)
/* 95848 800DF488 03E00008 */  jr         $ra
/* 9584C 800DF48C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DF490
/* 95850 800DF490 8C82002C */  lw         $v0, 0x2C($a0)
/* 95854 800DF494 10400003 */  beqz       $v0, .Lrace_800DF4A4
/* 95858 800DF498 AC800030 */   sw        $zero, 0x30($a0)
/* 9585C 800DF49C AC400024 */  sw         $zero, 0x24($v0)
/* 95860 800DF4A0 AC80002C */  sw         $zero, 0x2C($a0)
.Lrace_800DF4A4:
/* 95864 800DF4A4 AC800034 */  sw         $zero, 0x34($a0)
/* 95868 800DF4A8 03E00008 */  jr         $ra
/* 9586C 800DF4AC AC800038 */   sw        $zero, 0x38($a0)

glabel func_race_800DF4B0
/* 95870 800DF4B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 95874 800DF4B4 AFB00020 */  sw         $s0, 0x20($sp)
/* 95878 800DF4B8 00808021 */  addu       $s0, $a0, $zero
/* 9587C 800DF4BC AFBF0024 */  sw         $ra, 0x24($sp)
/* 95880 800DF4C0 8E060038 */  lw         $a2, 0x38($s0)
/* 95884 800DF4C4 24020002 */  addiu      $v0, $zero, 0x2
/* 95888 800DF4C8 30C30003 */  andi       $v1, $a2, 0x3
/* 9588C 800DF4CC 1462000D */  bne        $v1, $v0, .Lrace_800DF504
/* 95890 800DF4D0 26040004 */   addiu     $a0, $s0, 0x4
/* 95894 800DF4D4 27A50010 */  addiu      $a1, $sp, 0x10
/* 95898 800DF4D8 2402FFFD */  addiu      $v0, $zero, -0x3
/* 9589C 800DF4DC 00C21024 */  and        $v0, $a2, $v0
/* 958A0 800DF4E0 0C016596 */  jal        func_80059658
/* 958A4 800DF4E4 AE020038 */   sw        $v0, 0x38($s0)
/* 958A8 800DF4E8 8E050034 */  lw         $a1, 0x34($s0)
/* 958AC 800DF4EC 2402FFFF */  addiu      $v0, $zero, -0x1
/* 958B0 800DF4F0 10A20004 */  beq        $a1, $v0, .Lrace_800DF504
/* 958B4 800DF4F4 00000000 */   nop
/* 958B8 800DF4F8 8E040030 */  lw         $a0, 0x30($s0)
/* 958BC 800DF4FC 0C036BE1 */  jal        func_race_800DAF84
/* 958C0 800DF500 27A60010 */   addiu     $a2, $sp, 0x10
.Lrace_800DF504:
/* 958C4 800DF504 8E020038 */  lw         $v0, 0x38($s0)
/* 958C8 800DF508 2403FFFE */  addiu      $v1, $zero, -0x2
/* 958CC 800DF50C 00431024 */  and        $v0, $v0, $v1
/* 958D0 800DF510 AE020038 */  sw         $v0, 0x38($s0)
/* 958D4 800DF514 8FBF0024 */  lw         $ra, 0x24($sp)
/* 958D8 800DF518 8FB00020 */  lw         $s0, 0x20($sp)
/* 958DC 800DF51C 03E00008 */  jr         $ra
/* 958E0 800DF520 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DF524
/* 958E4 800DF524 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 958E8 800DF528 AFB00020 */  sw         $s0, 0x20($sp)
/* 958EC 800DF52C 00808021 */  addu       $s0, $a0, $zero
/* 958F0 800DF530 AFBF0024 */  sw         $ra, 0x24($sp)
/* 958F4 800DF534 8E030038 */  lw         $v1, 0x38($s0)
/* 958F8 800DF538 30620002 */  andi       $v0, $v1, 0x2
/* 958FC 800DF53C 1440000C */  bnez       $v0, .Lrace_800DF570
/* 95900 800DF540 26040004 */   addiu     $a0, $s0, 0x4
/* 95904 800DF544 27A50010 */  addiu      $a1, $sp, 0x10
/* 95908 800DF548 34620002 */  ori        $v0, $v1, 0x2
/* 9590C 800DF54C 0C016596 */  jal        func_80059658
/* 95910 800DF550 AE020038 */   sw        $v0, 0x38($s0)
/* 95914 800DF554 8E050034 */  lw         $a1, 0x34($s0)
/* 95918 800DF558 2402FFFF */  addiu      $v0, $zero, -0x1
/* 9591C 800DF55C 10A20004 */  beq        $a1, $v0, .Lrace_800DF570
/* 95920 800DF560 00000000 */   nop
/* 95924 800DF564 8E040030 */  lw         $a0, 0x30($s0)
/* 95928 800DF568 0C036B0B */  jal        func_race_800DAC2C
/* 9592C 800DF56C 27A60010 */   addiu     $a2, $sp, 0x10
.Lrace_800DF570:
/* 95930 800DF570 8E020038 */  lw         $v0, 0x38($s0)
/* 95934 800DF574 34420001 */  ori        $v0, $v0, 0x1
/* 95938 800DF578 AE020038 */  sw         $v0, 0x38($s0)
/* 9593C 800DF57C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 95940 800DF580 8FB00020 */  lw         $s0, 0x20($sp)
/* 95944 800DF584 03E00008 */  jr         $ra
/* 95948 800DF588 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DF58C
/* 9594C 800DF58C 8C820038 */  lw         $v0, 0x38($a0)
/* 95950 800DF590 2403FFFC */  addiu      $v1, $zero, -0x4
/* 95954 800DF594 00431024 */  and        $v0, $v0, $v1
/* 95958 800DF598 03E00008 */  jr         $ra
/* 9595C 800DF59C AC820038 */   sw        $v0, 0x38($a0)

glabel func_race_800DF5A0
/* 95960 800DF5A0 8C820038 */  lw         $v0, 0x38($a0)
/* 95964 800DF5A4 03E00008 */  jr         $ra
/* 95968 800DF5A8 30420004 */   andi      $v0, $v0, 0x4

glabel func_race_800DF5AC
/* 9596C 800DF5AC 8C820030 */  lw         $v0, 0x30($a0)
/* 95970 800DF5B0 03E00008 */  jr         $ra
/* 95974 800DF5B4 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800DF5B8
/* 95978 800DF5B8 8C820034 */  lw         $v0, 0x34($a0)
/* 9597C 800DF5BC 03E00008 */  jr         $ra
/* 95980 800DF5C0 00000000 */   nop

glabel func_race_800DF5C4
/* 95984 800DF5C4 03E00008 */  jr         $ra
/* 95988 800DF5C8 24820004 */   addiu     $v0, $a0, 0x4

glabel func_race_800DF5CC
/* 9598C 800DF5CC 8C82002C */  lw         $v0, 0x2C($a0)
/* 95990 800DF5D0 03E00008 */  jr         $ra
/* 95994 800DF5D4 00000000 */   nop

glabel func_race_800DF5D8
/* 95998 800DF5D8 03E00008 */  jr         $ra
/* 9599C 800DF5DC AC85002C */   sw        $a1, 0x2C($a0)

glabel func_race_800DF5E0
/* 959A0 800DF5E0 00801021 */  addu       $v0, $a0, $zero
/* 959A4 800DF5E4 3C03800D */  lui        $v1, %hi(D_race_800CB530)
/* 959A8 800DF5E8 2463B530 */  addiu      $v1, $v1, %lo(D_race_800CB530)
/* 959AC 800DF5EC AC430010 */  sw         $v1, 0x10($v0)
/* 959B0 800DF5F0 AC40000C */  sw         $zero, 0xC($v0)
/* 959B4 800DF5F4 AC400000 */  sw         $zero, 0x0($v0)
/* 959B8 800DF5F8 AC400004 */  sw         $zero, 0x4($v0)
/* 959BC 800DF5FC 03E00008 */  jr         $ra
/* 959C0 800DF600 AC400008 */   sw        $zero, 0x8($v0)

glabel func_race_800DF604
/* 959C4 800DF604 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 959C8 800DF608 AFB10014 */  sw         $s1, 0x14($sp)
/* 959CC 800DF60C 00808821 */  addu       $s1, $a0, $zero
/* 959D0 800DF610 AFB00010 */  sw         $s0, 0x10($sp)
/* 959D4 800DF614 00A08021 */  addu       $s0, $a1, $zero
/* 959D8 800DF618 3C02800D */  lui        $v0, %hi(D_race_800CB530)
/* 959DC 800DF61C 2442B530 */  addiu      $v0, $v0, %lo(D_race_800CB530)
/* 959E0 800DF620 AFBF0018 */  sw         $ra, 0x18($sp)
/* 959E4 800DF624 0C037E10 */  jal        func_race_800DF840
/* 959E8 800DF628 AE220010 */   sw        $v0, 0x10($s1)
/* 959EC 800DF62C 32100001 */  andi       $s0, $s0, 0x1
/* 959F0 800DF630 12000003 */  beqz       $s0, .Lrace_800DF640
/* 959F4 800DF634 00000000 */   nop
/* 959F8 800DF638 0C01FB5C */  jal        func_8007ED70
/* 959FC 800DF63C 02202021 */   addu      $a0, $s1, $zero
.Lrace_800DF640:
/* 95A00 800DF640 8FBF0018 */  lw         $ra, 0x18($sp)
/* 95A04 800DF644 8FB10014 */  lw         $s1, 0x14($sp)
/* 95A08 800DF648 8FB00010 */  lw         $s0, 0x10($sp)
/* 95A0C 800DF64C 03E00008 */  jr         $ra
/* 95A10 800DF650 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DF654
/* 95A14 800DF654 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 95A18 800DF658 AFB50044 */  sw         $s5, 0x44($sp)
/* 95A1C 800DF65C 0080A821 */  addu       $s5, $a0, $zero
/* 95A20 800DF660 AFB10034 */  sw         $s1, 0x34($sp)
/* 95A24 800DF664 00A08821 */  addu       $s1, $a1, $zero
/* 95A28 800DF668 AFB20038 */  sw         $s2, 0x38($sp)
/* 95A2C 800DF66C 00C09021 */  addu       $s2, $a2, $zero
/* 95A30 800DF670 AFB00030 */  sw         $s0, 0x30($sp)
/* 95A34 800DF674 AFBF004C */  sw         $ra, 0x4C($sp)
/* 95A38 800DF678 AFB60048 */  sw         $s6, 0x48($sp)
/* 95A3C 800DF67C AFB40040 */  sw         $s4, 0x40($sp)
/* 95A40 800DF680 AFB3003C */  sw         $s3, 0x3C($sp)
/* 95A44 800DF684 8EA20000 */  lw         $v0, 0x0($s5)
/* 95A48 800DF688 8FB60064 */  lw         $s6, 0x64($sp)
/* 95A4C 800DF68C 10400006 */  beqz       $v0, .Lrace_800DF6A8
/* 95A50 800DF690 00E08021 */   addu      $s0, $a3, $zero
/* 95A54 800DF694 8EA20010 */  lw         $v0, 0x10($s5)
/* 95A58 800DF698 84440010 */  lh         $a0, 0x10($v0)
/* 95A5C 800DF69C 8C420014 */  lw         $v0, 0x14($v0)
/* 95A60 800DF6A0 0040F809 */  jalr       $v0
/* 95A64 800DF6A4 02A42021 */   addu      $a0, $s5, $a0
.Lrace_800DF6A8:
/* 95A68 800DF6A8 02A02021 */  addu       $a0, $s5, $zero
/* 95A6C 800DF6AC 8FA60060 */  lw         $a2, 0x60($sp)
/* 95A70 800DF6B0 02002821 */  addu       $a1, $s0, $zero
/* 95A74 800DF6B4 AEB10000 */  sw         $s1, 0x0($s5)
/* 95A78 800DF6B8 0C037E34 */  jal        func_race_800DF8D0
/* 95A7C 800DF6BC AEB20004 */   sw        $s2, 0x4($s5)
/* 95A80 800DF6C0 00409821 */  addu       $s3, $v0, $zero
/* 95A84 800DF6C4 12600054 */  beqz       $s3, .Lrace_800DF818
/* 95A88 800DF6C8 3C028013 */   lui       $v0, %hi(D_race_801320B0)
/* 95A8C 800DF6CC 8C4420B0 */  lw         $a0, %lo(D_race_801320B0)($v0)
/* 95A90 800DF6D0 0C01FB65 */  jal        func_8007ED94
/* 95A94 800DF6D4 00000000 */   nop
/* 95A98 800DF6D8 8EB00008 */  lw         $s0, 0x8($s5)
/* 95A9C 800DF6DC 00102100 */  sll        $a0, $s0, 4
/* 95AA0 800DF6E0 00902023 */  subu       $a0, $a0, $s0
/* 95AA4 800DF6E4 00042080 */  sll        $a0, $a0, 2
/* 95AA8 800DF6E8 0C00943C */  jal        func_800250F0
/* 95AAC 800DF6EC 24840008 */   addiu     $a0, $a0, 0x8
/* 95AB0 800DF6F0 24420008 */  addiu      $v0, $v0, 0x8
/* 95AB4 800DF6F4 0040A021 */  addu       $s4, $v0, $zero
/* 95AB8 800DF6F8 02809021 */  addu       $s2, $s4, $zero
/* 95ABC 800DF6FC 2611FFFF */  addiu      $s1, $s0, -0x1
/* 95AC0 800DF700 06200007 */  bltz       $s1, .Lrace_800DF720
/* 95AC4 800DF704 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 95AC8 800DF708 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800DF70C:
/* 95ACC 800DF70C 0C037CE0 */  jal        func_race_800DF380
/* 95AD0 800DF710 02402021 */   addu      $a0, $s2, $zero
/* 95AD4 800DF714 2631FFFF */  addiu      $s1, $s1, -0x1
/* 95AD8 800DF718 1630FFFC */  bne        $s1, $s0, .Lrace_800DF70C
/* 95ADC 800DF71C 2652003C */   addiu     $s2, $s2, 0x3C
.Lrace_800DF720:
/* 95AE0 800DF720 0C01FB72 */  jal        func_8007EDC8
/* 95AE4 800DF724 AEB4000C */   sw        $s4, 0xC($s5)
/* 95AE8 800DF728 8EA2000C */  lw         $v0, 0xC($s5)
/* 95AEC 800DF72C 14400008 */  bnez       $v0, .Lrace_800DF750
/* 95AF0 800DF730 00008821 */   addu      $s1, $zero, $zero
/* 95AF4 800DF734 3C04800D */  lui        $a0, %hi(D_race_800CB470)
/* 95AF8 800DF738 2484B470 */  addiu      $a0, $a0, %lo(D_race_800CB470)
/* 95AFC 800DF73C 00002821 */  addu       $a1, $zero, $zero
/* 95B00 800DF740 00A03021 */  addu       $a2, $a1, $zero
/* 95B04 800DF744 0C011ACF */  jal        func_80046B3C
/* 95B08 800DF748 00A03821 */   addu      $a3, $a1, $zero
/* 95B0C 800DF74C 00008821 */  addu       $s1, $zero, $zero
.Lrace_800DF750:
/* 95B10 800DF750 24120006 */  addiu      $s2, $zero, 0x6
/* 95B14 800DF754 02208021 */  addu       $s0, $s1, $zero
.Lrace_800DF758:
/* 95B18 800DF758 8EA20008 */  lw         $v0, 0x8($s5)
/* 95B1C 800DF75C 0222102B */  sltu       $v0, $s1, $v0
/* 95B20 800DF760 1040002A */  beqz       $v0, .Lrace_800DF80C
/* 95B24 800DF764 02602021 */   addu      $a0, $s3, $zero
/* 95B28 800DF768 0C0026F4 */  jal        func_80009BD0
/* 95B2C 800DF76C 24050027 */   addiu     $a1, $zero, 0x27
/* 95B30 800DF770 02602021 */  addu       $a0, $s3, $zero
/* 95B34 800DF774 0C0026F4 */  jal        func_80009BD0
/* 95B38 800DF778 24050005 */   addiu     $a1, $zero, 0x5
/* 95B3C 800DF77C 8EA20004 */  lw         $v0, 0x4($s5)
/* 95B40 800DF780 AFA00018 */  sw         $zero, 0x18($sp)
/* 95B44 800DF784 AFA0001C */  sw         $zero, 0x1C($sp)
/* 95B48 800DF788 AFA00020 */  sw         $zero, 0x20($sp)
/* 95B4C 800DF78C AFA00024 */  sw         $zero, 0x24($sp)
/* 95B50 800DF790 AFA00014 */  sw         $zero, 0x14($sp)
/* 95B54 800DF794 AFA00028 */  sw         $zero, 0x28($sp)
/* 95B58 800DF798 AFA20010 */  sw         $v0, 0x10($sp)
.Lrace_800DF79C:
/* 95B5C 800DF79C 8E620028 */  lw         $v0, 0x28($s3)
/* 95B60 800DF7A0 844400A0 */  lh         $a0, 0xA0($v0)
/* 95B64 800DF7A4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 95B68 800DF7A8 0040F809 */  jalr       $v0
/* 95B6C 800DF7AC 02642021 */   addu      $a0, $s3, $a0
/* 95B70 800DF7B0 10520006 */  beq        $v0, $s2, .Lrace_800DF7CC
/* 95B74 800DF7B4 02A02021 */   addu      $a0, $s5, $zero
/* 95B78 800DF7B8 02602821 */  addu       $a1, $s3, $zero
/* 95B7C 800DF7BC 0C037E94 */  jal        func_race_800DFA50
/* 95B80 800DF7C0 27A60010 */   addiu     $a2, $sp, 0x10
/* 95B84 800DF7C4 08037DE7 */  j          .Lrace_800DF79C
/* 95B88 800DF7C8 00000000 */   nop
.Lrace_800DF7CC:
/* 95B8C 800DF7CC 12C00004 */  beqz       $s6, .Lrace_800DF7E0
/* 95B90 800DF7D0 27A50010 */   addiu     $a1, $sp, 0x10
/* 95B94 800DF7D4 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* 95B98 800DF7D8 46000007 */  neg.s      $f0, $f0
/* 95B9C 800DF7DC E7A0001C */  swc1       $f0, 0x1C($sp)
.Lrace_800DF7E0:
/* 95BA0 800DF7E0 8EA4000C */  lw         $a0, 0xC($s5)
/* 95BA4 800DF7E4 26310001 */  addiu      $s1, $s1, 0x1
/* 95BA8 800DF7E8 0C037D06 */  jal        func_race_800DF418
/* 95BAC 800DF7EC 00902021 */   addu      $a0, $a0, $s0
/* 95BB0 800DF7F0 02A02021 */  addu       $a0, $s5, $zero
/* 95BB4 800DF7F4 8EA5000C */  lw         $a1, 0xC($s5)
/* 95BB8 800DF7F8 00003021 */  addu       $a2, $zero, $zero
/* 95BBC 800DF7FC 0C037ECB */  jal        func_race_800DFB2C
/* 95BC0 800DF800 00B02821 */   addu      $a1, $a1, $s0
/* 95BC4 800DF804 08037DD6 */  j          .Lrace_800DF758
/* 95BC8 800DF808 2610003C */   addiu     $s0, $s0, 0x3C
.Lrace_800DF80C:
/* 95BCC 800DF80C 02A02021 */  addu       $a0, $s5, $zero
/* 95BD0 800DF810 0C037E80 */  jal        func_race_800DFA00
/* 95BD4 800DF814 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DF818:
/* 95BD8 800DF818 8FBF004C */  lw         $ra, 0x4C($sp)
/* 95BDC 800DF81C 8FB60048 */  lw         $s6, 0x48($sp)
/* 95BE0 800DF820 8FB50044 */  lw         $s5, 0x44($sp)
/* 95BE4 800DF824 8FB40040 */  lw         $s4, 0x40($sp)
/* 95BE8 800DF828 8FB3003C */  lw         $s3, 0x3C($sp)
/* 95BEC 800DF82C 8FB20038 */  lw         $s2, 0x38($sp)
/* 95BF0 800DF830 8FB10034 */  lw         $s1, 0x34($sp)
/* 95BF4 800DF834 8FB00030 */  lw         $s0, 0x30($sp)
/* 95BF8 800DF838 03E00008 */  jr         $ra
/* 95BFC 800DF83C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800DF840
/* 95C00 800DF840 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95C04 800DF844 AFB10014 */  sw         $s1, 0x14($sp)
/* 95C08 800DF848 00808821 */  addu       $s1, $a0, $zero
/* 95C0C 800DF84C AFBF0018 */  sw         $ra, 0x18($sp)
/* 95C10 800DF850 AFB00010 */  sw         $s0, 0x10($sp)
/* 95C14 800DF854 8E24000C */  lw         $a0, 0xC($s1)
/* 95C18 800DF858 50800016 */  beql       $a0, $zero, .Lrace_800DF8B4
/* 95C1C 800DF85C AE200000 */   sw        $zero, 0x0($s1)
/* 95C20 800DF860 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 95C24 800DF864 00031100 */  sll        $v0, $v1, 4
/* 95C28 800DF868 00431023 */  subu       $v0, $v0, $v1
/* 95C2C 800DF86C 00021080 */  sll        $v0, $v0, 2
/* 95C30 800DF870 00828021 */  addu       $s0, $a0, $v0
/* 95C34 800DF874 1090000B */  beq        $a0, $s0, .Lrace_800DF8A4
/* 95C38 800DF878 2610FFC4 */   addiu     $s0, $s0, -0x3C
.Lrace_800DF87C:
/* 95C3C 800DF87C 8E020000 */  lw         $v0, 0x0($s0)
/* 95C40 800DF880 24050002 */  addiu      $a1, $zero, 0x2
/* 95C44 800DF884 84440010 */  lh         $a0, 0x10($v0)
/* 95C48 800DF888 8C420014 */  lw         $v0, 0x14($v0)
/* 95C4C 800DF88C 0040F809 */  jalr       $v0
/* 95C50 800DF890 02042021 */   addu      $a0, $s0, $a0
/* 95C54 800DF894 8E22000C */  lw         $v0, 0xC($s1)
/* 95C58 800DF898 1450FFF8 */  bne        $v0, $s0, .Lrace_800DF87C
/* 95C5C 800DF89C 2610FFC4 */   addiu     $s0, $s0, -0x3C
/* 95C60 800DF8A0 8E24000C */  lw         $a0, 0xC($s1)
.Lrace_800DF8A4:
/* 95C64 800DF8A4 0C009444 */  jal        func_80025110
/* 95C68 800DF8A8 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 95C6C 800DF8AC AE20000C */  sw         $zero, 0xC($s1)
/* 95C70 800DF8B0 AE200000 */  sw         $zero, 0x0($s1)
.Lrace_800DF8B4:
/* 95C74 800DF8B4 AE200004 */  sw         $zero, 0x4($s1)
/* 95C78 800DF8B8 AE200008 */  sw         $zero, 0x8($s1)
/* 95C7C 800DF8BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 95C80 800DF8C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 95C84 800DF8C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 95C88 800DF8C8 03E00008 */  jr         $ra
/* 95C8C 800DF8CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DF8D0
/* 95C90 800DF8D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95C94 800DF8D4 AFB20018 */  sw         $s2, 0x18($sp)
/* 95C98 800DF8D8 00809021 */  addu       $s2, $a0, $zero
/* 95C9C 800DF8DC AFB10014 */  sw         $s1, 0x14($sp)
/* 95CA0 800DF8E0 00A08821 */  addu       $s1, $a1, $zero
/* 95CA4 800DF8E4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 95CA8 800DF8E8 10C00014 */  beqz       $a2, .Lrace_800DF93C
/* 95CAC 800DF8EC AFB00010 */   sw        $s0, 0x10($sp)
/* 95CB0 800DF8F0 0C01FB4C */  jal        func_8007ED30
/* 95CB4 800DF8F4 24040654 */   addiu     $a0, $zero, 0x654
/* 95CB8 800DF8F8 0C00278C */  jal        func_80009E30
/* 95CBC 800DF8FC 00402021 */   addu      $a0, $v0, $zero
/* 95CC0 800DF900 00408021 */  addu       $s0, $v0, $zero
/* 95CC4 800DF904 56000008 */  bnel       $s0, $zero, .Lrace_800DF928
/* 95CC8 800DF908 02002021 */   addu      $a0, $s0, $zero
/* 95CCC 800DF90C 3C04800D */  lui        $a0, %hi(D_race_800CB470)
/* 95CD0 800DF910 2484B470 */  addiu      $a0, $a0, %lo(D_race_800CB470)
/* 95CD4 800DF914 00002821 */  addu       $a1, $zero, $zero
/* 95CD8 800DF918 00A03021 */  addu       $a2, $a1, $zero
/* 95CDC 800DF91C 0C011ACF */  jal        func_80046B3C
/* 95CE0 800DF920 00A03821 */   addu      $a3, $a1, $zero
/* 95CE4 800DF924 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DF928:
/* 95CE8 800DF928 3C05800D */  lui        $a1, %hi(D_race_800CB474)
/* 95CEC 800DF92C 0C0025BA */  jal        func_800096E8
/* 95CF0 800DF930 24A5B474 */   addiu     $a1, $a1, %lo(D_race_800CB474)
/* 95CF4 800DF934 08037E5E */  j          .Lrace_800DF978
/* 95CF8 800DF938 00000000 */   nop
.Lrace_800DF93C:
/* 95CFC 800DF93C 0C01FB4C */  jal        func_8007ED30
/* 95D00 800DF940 24040658 */   addiu     $a0, $zero, 0x658
/* 95D04 800DF944 00408021 */  addu       $s0, $v0, $zero
/* 95D08 800DF948 0C002504 */  jal        func_80009410
/* 95D0C 800DF94C 02002021 */   addu      $a0, $s0, $zero
/* 95D10 800DF950 3C02800D */  lui        $v0, %hi(D_race_800CB480)
/* 95D14 800DF954 2442B480 */  addiu      $v0, $v0, %lo(D_race_800CB480)
/* 95D18 800DF958 16000007 */  bnez       $s0, .Lrace_800DF978
/* 95D1C 800DF95C AE020028 */   sw        $v0, 0x28($s0)
/* 95D20 800DF960 3C04800D */  lui        $a0, %hi(D_race_800CB470)
/* 95D24 800DF964 2484B470 */  addiu      $a0, $a0, %lo(D_race_800CB470)
/* 95D28 800DF968 00002821 */  addu       $a1, $zero, $zero
/* 95D2C 800DF96C 00A03021 */  addu       $a2, $a1, $zero
/* 95D30 800DF970 0C011ACF */  jal        func_80046B3C
/* 95D34 800DF974 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800DF978:
/* 95D38 800DF978 8E020028 */  lw         $v0, 0x28($s0)
/* 95D3C 800DF97C 02202821 */  addu       $a1, $s1, $zero
/* 95D40 800DF980 84440088 */  lh         $a0, 0x88($v0)
/* 95D44 800DF984 8C42008C */  lw         $v0, 0x8C($v0)
/* 95D48 800DF988 0040F809 */  jalr       $v0
/* 95D4C 800DF98C 02042021 */   addu      $a0, $s0, $a0
/* 95D50 800DF990 02002021 */  addu       $a0, $s0, $zero
/* 95D54 800DF994 0C0026F4 */  jal        func_80009BD0
/* 95D58 800DF998 24050027 */   addiu     $a1, $zero, 0x27
/* 95D5C 800DF99C 0C002723 */  jal        func_80009C8C
/* 95D60 800DF9A0 02002021 */   addu      $a0, $s0, $zero
/* 95D64 800DF9A4 1440000F */  bnez       $v0, .Lrace_800DF9E4
/* 95D68 800DF9A8 AE420008 */   sw        $v0, 0x8($s2)
/* 95D6C 800DF9AC 8E020028 */  lw         $v0, 0x28($s0)
/* 95D70 800DF9B0 84440048 */  lh         $a0, 0x48($v0)
/* 95D74 800DF9B4 8C42004C */  lw         $v0, 0x4C($v0)
/* 95D78 800DF9B8 0040F809 */  jalr       $v0
/* 95D7C 800DF9BC 02042021 */   addu      $a0, $s0, $a0
/* 95D80 800DF9C0 12000006 */  beqz       $s0, .Lrace_800DF9DC
/* 95D84 800DF9C4 24050003 */   addiu     $a1, $zero, 0x3
/* 95D88 800DF9C8 8E020028 */  lw         $v0, 0x28($s0)
/* 95D8C 800DF9CC 84440038 */  lh         $a0, 0x38($v0)
/* 95D90 800DF9D0 8C42003C */  lw         $v0, 0x3C($v0)
/* 95D94 800DF9D4 0040F809 */  jalr       $v0
/* 95D98 800DF9D8 02042021 */   addu      $a0, $s0, $a0
.Lrace_800DF9DC:
/* 95D9C 800DF9DC 08037E7A */  j          .Lrace_800DF9E8
/* 95DA0 800DF9E0 00001021 */   addu      $v0, $zero, $zero
.Lrace_800DF9E4:
/* 95DA4 800DF9E4 02001021 */  addu       $v0, $s0, $zero
.Lrace_800DF9E8:
/* 95DA8 800DF9E8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 95DAC 800DF9EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 95DB0 800DF9F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 95DB4 800DF9F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 95DB8 800DF9F8 03E00008 */  jr         $ra
/* 95DBC 800DF9FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DFA00
/* 95DC0 800DFA00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 95DC4 800DFA04 AFB00010 */  sw         $s0, 0x10($sp)
/* 95DC8 800DFA08 00A08021 */  addu       $s0, $a1, $zero
/* 95DCC 800DFA0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 95DD0 800DFA10 8E020028 */  lw         $v0, 0x28($s0)
/* 95DD4 800DFA14 84440048 */  lh         $a0, 0x48($v0)
/* 95DD8 800DFA18 8C42004C */  lw         $v0, 0x4C($v0)
/* 95DDC 800DFA1C 0040F809 */  jalr       $v0
/* 95DE0 800DFA20 02042021 */   addu      $a0, $s0, $a0
/* 95DE4 800DFA24 12000006 */  beqz       $s0, .Lrace_800DFA40
/* 95DE8 800DFA28 24050003 */   addiu     $a1, $zero, 0x3
/* 95DEC 800DFA2C 8E020028 */  lw         $v0, 0x28($s0)
/* 95DF0 800DFA30 84440038 */  lh         $a0, 0x38($v0)
/* 95DF4 800DFA34 8C42003C */  lw         $v0, 0x3C($v0)
/* 95DF8 800DFA38 0040F809 */  jalr       $v0
/* 95DFC 800DFA3C 02042021 */   addu      $a0, $s0, $a0
.Lrace_800DFA40:
/* 95E00 800DFA40 8FBF0014 */  lw         $ra, 0x14($sp)
/* 95E04 800DFA44 8FB00010 */  lw         $s0, 0x10($sp)
/* 95E08 800DFA48 03E00008 */  jr         $ra
/* 95E0C 800DFA4C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DFA50
/* 95E10 800DFA50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95E14 800DFA54 AFB00010 */  sw         $s0, 0x10($sp)
/* 95E18 800DFA58 00A08021 */  addu       $s0, $a1, $zero
/* 95E1C 800DFA5C AFB10014 */  sw         $s1, 0x14($sp)
/* 95E20 800DFA60 00C08821 */  addu       $s1, $a2, $zero
/* 95E24 800DFA64 AFBF0018 */  sw         $ra, 0x18($sp)
/* 95E28 800DFA68 8E030034 */  lw         $v1, 0x34($s0)
/* 95E2C 800DFA6C 2402002A */  addiu      $v0, $zero, 0x2A
/* 95E30 800DFA70 10620019 */  beq        $v1, $v0, .Lrace_800DFAD8
/* 95E34 800DFA74 00602021 */   addu      $a0, $v1, $zero
/* 95E38 800DFA78 2C62002B */  sltiu      $v0, $v1, 0x2B
/* 95E3C 800DFA7C 10400005 */  beqz       $v0, .Lrace_800DFA94
/* 95E40 800DFA80 24020029 */   addiu     $v0, $zero, 0x29
/* 95E44 800DFA84 1062000A */  beq        $v1, $v0, .Lrace_800DFAB0
/* 95E48 800DFA88 00000000 */   nop
/* 95E4C 800DFA8C 08037EC0 */  j          .Lrace_800DFB00
/* 95E50 800DFA90 00000000 */   nop
.Lrace_800DFA94:
/* 95E54 800DFA94 2402002B */  addiu      $v0, $zero, 0x2B
/* 95E58 800DFA98 10820013 */  beq        $a0, $v0, .Lrace_800DFAE8
/* 95E5C 800DFA9C 2402002F */   addiu     $v0, $zero, 0x2F
/* 95E60 800DFAA0 10820015 */  beq        $a0, $v0, .Lrace_800DFAF8
/* 95E64 800DFAA4 24020001 */   addiu     $v0, $zero, 0x1
/* 95E68 800DFAA8 08037EC0 */  j          .Lrace_800DFB00
/* 95E6C 800DFAAC 00000000 */   nop
.Lrace_800DFAB0:
/* 95E70 800DFAB0 0C0025F8 */  jal        func_800097E0
/* 95E74 800DFAB4 02002021 */   addu      $a0, $s0, $zero
/* 95E78 800DFAB8 02002021 */  addu       $a0, $s0, $zero
/* 95E7C 800DFABC 0C0025F8 */  jal        func_800097E0
/* 95E80 800DFAC0 E6200008 */   swc1      $f0, 0x8($s1)
/* 95E84 800DFAC4 02002021 */  addu       $a0, $s0, $zero
/* 95E88 800DFAC8 0C0025F8 */  jal        func_800097E0
/* 95E8C 800DFACC E620000C */   swc1      $f0, 0xC($s1)
/* 95E90 800DFAD0 08037EC6 */  j          .Lrace_800DFB18
/* 95E94 800DFAD4 E6200010 */   swc1      $f0, 0x10($s1)
.Lrace_800DFAD8:
/* 95E98 800DFAD8 0C0025F8 */  jal        func_800097E0
/* 95E9C 800DFADC 02002021 */   addu      $a0, $s0, $zero
/* 95EA0 800DFAE0 08037EC6 */  j          .Lrace_800DFB18
/* 95EA4 800DFAE4 E6200014 */   swc1      $f0, 0x14($s1)
.Lrace_800DFAE8:
/* 95EA8 800DFAE8 0C002680 */  jal        func_80009A00
/* 95EAC 800DFAEC 02002021 */   addu      $a0, $s0, $zero
/* 95EB0 800DFAF0 08037EC6 */  j          .Lrace_800DFB18
/* 95EB4 800DFAF4 AE220004 */   sw        $v0, 0x4($s1)
.Lrace_800DFAF8:
/* 95EB8 800DFAF8 08037EC6 */  j          .Lrace_800DFB18
/* 95EBC 800DFAFC AE220018 */   sw        $v0, 0x18($s1)
.Lrace_800DFB00:
/* 95EC0 800DFB00 8E020028 */  lw         $v0, 0x28($s0)
/* 95EC4 800DFB04 00002821 */  addu       $a1, $zero, $zero
/* 95EC8 800DFB08 84440098 */  lh         $a0, 0x98($v0)
/* 95ECC 800DFB0C 8C42009C */  lw         $v0, 0x9C($v0)
/* 95ED0 800DFB10 0040F809 */  jalr       $v0
/* 95ED4 800DFB14 02042021 */   addu      $a0, $s0, $a0
.Lrace_800DFB18:
/* 95ED8 800DFB18 8FBF0018 */  lw         $ra, 0x18($sp)
/* 95EDC 800DFB1C 8FB10014 */  lw         $s1, 0x14($sp)
/* 95EE0 800DFB20 8FB00010 */  lw         $s0, 0x10($sp)
/* 95EE4 800DFB24 03E00008 */  jr         $ra
/* 95EE8 800DFB28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DFB2C
/* 95EEC 800DFB2C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 95EF0 800DFB30 AFB00028 */  sw         $s0, 0x28($sp)
/* 95EF4 800DFB34 00A08021 */  addu       $s0, $a1, $zero
/* 95EF8 800DFB38 24020001 */  addiu      $v0, $zero, 0x1
/* 95EFC 800DFB3C AFBF002C */  sw         $ra, 0x2C($sp)
/* 95F00 800DFB40 AFA20014 */  sw         $v0, 0x14($sp)
/* 95F04 800DFB44 8E020038 */  lw         $v0, 0x38($s0)
/* 95F08 800DFB48 30420004 */  andi       $v0, $v0, 0x4
/* 95F0C 800DFB4C 10400002 */  beqz       $v0, .Lrace_800DFB58
/* 95F10 800DFB50 24020009 */   addiu     $v0, $zero, 0x9
/* 95F14 800DFB54 AFA20014 */  sw         $v0, 0x14($sp)
.Lrace_800DFB58:
/* 95F18 800DFB58 AFA00018 */  sw         $zero, 0x18($sp)
/* 95F1C 800DFB5C 10C00003 */  beqz       $a2, .Lrace_800DFB6C
/* 95F20 800DFB60 AFA0001C */   sw        $zero, 0x1C($sp)
/* 95F24 800DFB64 08037EDC */  j          .Lrace_800DFB70
/* 95F28 800DFB68 24020002 */   addiu     $v0, $zero, 0x2
.Lrace_800DFB6C:
/* 95F2C 800DFB6C 24020004 */  addiu      $v0, $zero, 0x4
.Lrace_800DFB70:
/* 95F30 800DFB70 AFA20010 */  sw         $v0, 0x10($sp)
/* 95F34 800DFB74 26020004 */  addiu      $v0, $s0, 0x4
/* 95F38 800DFB78 02002821 */  addu       $a1, $s0, $zero
/* 95F3C 800DFB7C AFA20020 */  sw         $v0, 0x20($sp)
/* 95F40 800DFB80 8C840000 */  lw         $a0, 0x0($a0)
/* 95F44 800DFB84 0C04053E */  jal        func_race_801014F8
/* 95F48 800DFB88 27A60010 */   addiu     $a2, $sp, 0x10
/* 95F4C 800DFB8C AE02002C */  sw         $v0, 0x2C($s0)
/* 95F50 800DFB90 8FBF002C */  lw         $ra, 0x2C($sp)
/* 95F54 800DFB94 8FB00028 */  lw         $s0, 0x28($sp)
/* 95F58 800DFB98 03E00008 */  jr         $ra
/* 95F5C 800DFB9C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800DFBA0
/* 95F60 800DFBA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 95F64 800DFBA4 AFB20018 */  sw         $s2, 0x18($sp)
/* 95F68 800DFBA8 00809021 */  addu       $s2, $a0, $zero
/* 95F6C 800DFBAC AFB3001C */  sw         $s3, 0x1C($sp)
/* 95F70 800DFBB0 00A09821 */  addu       $s3, $a1, $zero
/* 95F74 800DFBB4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 95F78 800DFBB8 AFB10014 */  sw         $s1, 0x14($sp)
/* 95F7C 800DFBBC AFB00010 */  sw         $s0, 0x10($sp)
/* 95F80 800DFBC0 8E420008 */  lw         $v0, 0x8($s2)
/* 95F84 800DFBC4 1040000F */  beqz       $v0, .Lrace_800DFC04
/* 95F88 800DFBC8 00008021 */   addu      $s0, $zero, $zero
/* 95F8C 800DFBCC 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DFBD0:
/* 95F90 800DFBD0 8E44000C */  lw         $a0, 0xC($s2)
/* 95F94 800DFBD4 02242021 */  addu       $a0, $s1, $a0
/* 95F98 800DFBD8 8C830000 */  lw         $v1, 0x0($a0)
/* 95F9C 800DFBDC 84620020 */  lh         $v0, 0x20($v1)
/* 95FA0 800DFBE0 26100001 */  addiu      $s0, $s0, 0x1
/* 95FA4 800DFBE4 00822021 */  addu       $a0, $a0, $v0
/* 95FA8 800DFBE8 8C620024 */  lw         $v0, 0x24($v1)
/* 95FAC 800DFBEC 0040F809 */  jalr       $v0
/* 95FB0 800DFBF0 02602821 */   addu      $a1, $s3, $zero
/* 95FB4 800DFBF4 8E420008 */  lw         $v0, 0x8($s2)
/* 95FB8 800DFBF8 0202102B */  sltu       $v0, $s0, $v0
/* 95FBC 800DFBFC 1440FFF4 */  bnez       $v0, .Lrace_800DFBD0
/* 95FC0 800DFC00 2631003C */   addiu     $s1, $s1, 0x3C
.Lrace_800DFC04:
/* 95FC4 800DFC04 8FBF0020 */  lw         $ra, 0x20($sp)
/* 95FC8 800DFC08 8FB3001C */  lw         $s3, 0x1C($sp)
/* 95FCC 800DFC0C 8FB20018 */  lw         $s2, 0x18($sp)
/* 95FD0 800DFC10 8FB10014 */  lw         $s1, 0x14($sp)
/* 95FD4 800DFC14 8FB00010 */  lw         $s0, 0x10($sp)
/* 95FD8 800DFC18 03E00008 */  jr         $ra
/* 95FDC 800DFC1C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DFC20
/* 95FE0 800DFC20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95FE4 800DFC24 AFB20018 */  sw         $s2, 0x18($sp)
/* 95FE8 800DFC28 00809021 */  addu       $s2, $a0, $zero
/* 95FEC 800DFC2C AFBF001C */  sw         $ra, 0x1C($sp)
/* 95FF0 800DFC30 AFB10014 */  sw         $s1, 0x14($sp)
/* 95FF4 800DFC34 AFB00010 */  sw         $s0, 0x10($sp)
/* 95FF8 800DFC38 8E420008 */  lw         $v0, 0x8($s2)
/* 95FFC 800DFC3C 1040000E */  beqz       $v0, .Lrace_800DFC78
/* 96000 800DFC40 00008021 */   addu      $s0, $zero, $zero
/* 96004 800DFC44 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DFC48:
/* 96008 800DFC48 8E44000C */  lw         $a0, 0xC($s2)
/* 9600C 800DFC4C 02242021 */  addu       $a0, $s1, $a0
/* 96010 800DFC50 8C820000 */  lw         $v0, 0x0($a0)
/* 96014 800DFC54 26100001 */  addiu      $s0, $s0, 0x1
/* 96018 800DFC58 84430028 */  lh         $v1, 0x28($v0)
/* 9601C 800DFC5C 8C42002C */  lw         $v0, 0x2C($v0)
/* 96020 800DFC60 0040F809 */  jalr       $v0
/* 96024 800DFC64 00832021 */   addu      $a0, $a0, $v1
/* 96028 800DFC68 8E420008 */  lw         $v0, 0x8($s2)
/* 9602C 800DFC6C 0202102B */  sltu       $v0, $s0, $v0
/* 96030 800DFC70 1440FFF5 */  bnez       $v0, .Lrace_800DFC48
/* 96034 800DFC74 2631003C */   addiu     $s1, $s1, 0x3C
.Lrace_800DFC78:
/* 96038 800DFC78 8FBF001C */  lw         $ra, 0x1C($sp)
/* 9603C 800DFC7C 8FB20018 */  lw         $s2, 0x18($sp)
/* 96040 800DFC80 8FB10014 */  lw         $s1, 0x14($sp)
/* 96044 800DFC84 8FB00010 */  lw         $s0, 0x10($sp)
/* 96048 800DFC88 03E00008 */  jr         $ra
/* 9604C 800DFC8C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DFC90
/* 96050 800DFC90 3C028013 */  lui        $v0, %hi(D_race_801320B0)
/* 96054 800DFC94 03E00008 */  jr         $ra
/* 96058 800DFC98 AC4420B0 */   sw        $a0, %lo(D_race_801320B0)($v0)

glabel func_race_800DFC9C
/* 9605C 800DFC9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 96060 800DFCA0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 96064 800DFCA4 0C002513 */  jal        func_8000944C
/* 96068 800DFCA8 00000000 */   nop
/* 9606C 800DFCAC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 96070 800DFCB0 03E00008 */  jr         $ra
/* 96074 800DFCB4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DFCB8
/* 96078 800DFCB8 8C820000 */  lw         $v0, 0x0($a0)
/* 9607C 800DFCBC 03E00008 */  jr         $ra
/* 96080 800DFCC0 00000000 */   nop

glabel func_race_800DFCC4
/* 96084 800DFCC4 00051900 */  sll        $v1, $a1, 4
/* 96088 800DFCC8 00651823 */  subu       $v1, $v1, $a1
/* 9608C 800DFCCC 8C82000C */  lw         $v0, 0xC($a0)
/* 96090 800DFCD0 00031880 */  sll        $v1, $v1, 2
/* 96094 800DFCD4 03E00008 */  jr         $ra
/* 96098 800DFCD8 00431021 */   addu      $v0, $v0, $v1

glabel func_race_800DFCDC
/* 9609C 800DFCDC 8C820008 */  lw         $v0, 0x8($a0)
/* 960A0 800DFCE0 03E00008 */  jr         $ra
/* 960A4 800DFCE4 00000000 */   nop

glabel func_race_800DFCE8
/* 960A8 800DFCE8 8C820000 */  lw         $v0, 0x0($a0)
/* 960AC 800DFCEC 03E00008 */  jr         $ra
/* 960B0 800DFCF0 0002102B */   sltu      $v0, $zero, $v0
