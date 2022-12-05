.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004B470
/* 427A0 8004B470 00801021 */  addu       $v0, $a0, $zero
/* 427A4 8004B474 3C038004 */  lui        $v1, %hi(D_8003C748)
/* 427A8 8004B478 2463C748 */  addiu      $v1, $v1, %lo(D_8003C748)
/* 427AC 8004B47C AC43002C */  sw         $v1, 0x2C($v0)
/* 427B0 8004B480 AC400000 */  sw         $zero, 0x0($v0)
/* 427B4 8004B484 AC400004 */  sw         $zero, 0x4($v0)
/* 427B8 8004B488 AC400008 */  sw         $zero, 0x8($v0)
/* 427BC 8004B48C AC40000C */  sw         $zero, 0xC($v0)
/* 427C0 8004B490 AC400010 */  sw         $zero, 0x10($v0)
/* 427C4 8004B494 A4400014 */  sh         $zero, 0x14($v0)
/* 427C8 8004B498 A4400016 */  sh         $zero, 0x16($v0)
/* 427CC 8004B49C AC400018 */  sw         $zero, 0x18($v0)
/* 427D0 8004B4A0 AC40001C */  sw         $zero, 0x1C($v0)
/* 427D4 8004B4A4 A4400020 */  sh         $zero, 0x20($v0)
/* 427D8 8004B4A8 A4400022 */  sh         $zero, 0x22($v0)
/* 427DC 8004B4AC A4400024 */  sh         $zero, 0x24($v0)
/* 427E0 8004B4B0 A4400026 */  sh         $zero, 0x26($v0)
/* 427E4 8004B4B4 03E00008 */  jr         $ra
/* 427E8 8004B4B8 A4400028 */   sh        $zero, 0x28($v0)

glabel func_8004B4BC
/* 427EC 8004B4BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 427F0 8004B4C0 3C028004 */  lui        $v0, %hi(D_8003C748)
/* 427F4 8004B4C4 2442C748 */  addiu      $v0, $v0, %lo(D_8003C748)
/* 427F8 8004B4C8 30A50001 */  andi       $a1, $a1, 0x1
/* 427FC 8004B4CC AFBF0010 */  sw         $ra, 0x10($sp)
/* 42800 8004B4D0 10A00003 */  beqz       $a1, .L8004B4E0
/* 42804 8004B4D4 AC82002C */   sw        $v0, 0x2C($a0)
/* 42808 8004B4D8 0C01FB5C */  jal        func_8007ED70
/* 4280C 8004B4DC 00000000 */   nop
.L8004B4E0:
/* 42810 8004B4E0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 42814 8004B4E4 03E00008 */  jr         $ra
/* 42818 8004B4E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004B4EC
/* 4281C 8004B4EC 94820020 */  lhu        $v0, 0x20($a0)
/* 42820 8004B4F0 ACC20000 */  sw         $v0, 0x0($a2)
/* 42824 8004B4F4 8C820018 */  lw         $v0, 0x18($a0)
/* 42828 8004B4F8 ACA20000 */  sw         $v0, 0x0($a1)
/* 4282C 8004B4FC 94830022 */  lhu        $v1, 0x22($a0)
/* 42830 8004B500 34620002 */  ori        $v0, $v1, 0x2
/* 42834 8004B504 A4820022 */  sh         $v0, 0x22($a0)
/* 42838 8004B508 30E20001 */  andi       $v0, $a3, 0x1
/* 4283C 8004B50C 10400002 */  beqz       $v0, .L8004B518
/* 42840 8004B510 3462000A */   ori       $v0, $v1, 0xA
/* 42844 8004B514 A4820022 */  sh         $v0, 0x22($a0)
.L8004B518:
/* 42848 8004B518 30E20002 */  andi       $v0, $a3, 0x2
/* 4284C 8004B51C 10400004 */  beqz       $v0, .L8004B530
/* 42850 8004B520 00000000 */   nop
/* 42854 8004B524 94820022 */  lhu        $v0, 0x22($a0)
/* 42858 8004B528 34420010 */  ori        $v0, $v0, 0x10
/* 4285C 8004B52C A4820022 */  sh         $v0, 0x22($a0)
.L8004B530:
/* 42860 8004B530 03E00008 */  jr         $ra
/* 42864 8004B534 00000000 */   nop

glabel func_8004B538
/* 42868 8004B538 94830022 */  lhu        $v1, 0x22($a0)
/* 4286C 8004B53C 30620002 */  andi       $v0, $v1, 0x2
/* 42870 8004B540 10400002 */  beqz       $v0, .L8004B54C
/* 42874 8004B544 3062FFE5 */   andi      $v0, $v1, 0xFFE5
/* 42878 8004B548 A4820022 */  sh         $v0, 0x22($a0)
.L8004B54C:
/* 4287C 8004B54C 03E00008 */  jr         $ra
/* 42880 8004B550 00000000 */   nop

glabel func_8004B554
/* 42884 8004B554 94820020 */  lhu        $v0, 0x20($a0)
/* 42888 8004B558 ACC20000 */  sw         $v0, 0x0($a2)
/* 4288C 8004B55C 8C82001C */  lw         $v0, 0x1C($a0)
/* 42890 8004B560 ACA20000 */  sw         $v0, 0x0($a1)
/* 42894 8004B564 94830024 */  lhu        $v1, 0x24($a0)
/* 42898 8004B568 34620002 */  ori        $v0, $v1, 0x2
/* 4289C 8004B56C A4820024 */  sh         $v0, 0x24($a0)
/* 428A0 8004B570 30E20001 */  andi       $v0, $a3, 0x1
/* 428A4 8004B574 10400002 */  beqz       $v0, .L8004B580
/* 428A8 8004B578 3462000A */   ori       $v0, $v1, 0xA
/* 428AC 8004B57C A4820024 */  sh         $v0, 0x24($a0)
.L8004B580:
/* 428B0 8004B580 30E20002 */  andi       $v0, $a3, 0x2
/* 428B4 8004B584 10400004 */  beqz       $v0, .L8004B598
/* 428B8 8004B588 00000000 */   nop
/* 428BC 8004B58C 94820024 */  lhu        $v0, 0x24($a0)
/* 428C0 8004B590 34420010 */  ori        $v0, $v0, 0x10
/* 428C4 8004B594 A4820024 */  sh         $v0, 0x24($a0)
.L8004B598:
/* 428C8 8004B598 03E00008 */  jr         $ra
/* 428CC 8004B59C 00000000 */   nop

glabel func_8004B5A0
/* 428D0 8004B5A0 94830024 */  lhu        $v1, 0x24($a0)
/* 428D4 8004B5A4 30620002 */  andi       $v0, $v1, 0x2
/* 428D8 8004B5A8 10400002 */  beqz       $v0, .L8004B5B4
/* 428DC 8004B5AC 3062FFE5 */   andi      $v0, $v1, 0xFFE5
/* 428E0 8004B5B0 A4820024 */  sh         $v0, 0x24($a0)
.L8004B5B4:
/* 428E4 8004B5B4 03E00008 */  jr         $ra
/* 428E8 8004B5B8 00000000 */   nop

glabel func_8004B5BC
/* 428EC 8004B5BC 03E00008 */  jr         $ra
/* 428F0 8004B5C0 00000000 */   nop

glabel func_8004B5C4
/* 428F4 8004B5C4 03E00008 */  jr         $ra
/* 428F8 8004B5C8 00000000 */   nop

glabel func_8004B5CC
/* 428FC 8004B5CC 03E00008 */  jr         $ra
/* 42900 8004B5D0 00001021 */   addu      $v0, $zero, $zero

glabel func_8004B5D4
/* 42904 8004B5D4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 42908 8004B5D8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 4290C 8004B5DC 00808821 */  addu       $s1, $a0, $zero
/* 42910 8004B5E0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 42914 8004B5E4 AFB00018 */  sw         $s0, 0x18($sp)
/* 42918 8004B5E8 96220022 */  lhu        $v0, 0x22($s1)
/* 4291C 8004B5EC 30420002 */  andi       $v0, $v0, 0x2
/* 42920 8004B5F0 10400007 */  beqz       $v0, .L8004B610
/* 42924 8004B5F4 00A08021 */   addu      $s0, $a1, $zero
/* 42928 8004B5F8 8E220018 */  lw         $v0, 0x18($s1)
/* 4292C 8004B5FC 96230020 */  lhu        $v1, 0x20($s1)
/* 42930 8004B600 00005821 */  addu       $t3, $zero, $zero
/* 42934 8004B604 AFA20010 */  sw         $v0, 0x10($sp)
/* 42938 8004B608 08012D8D */  j          .L8004B634
/* 4293C 8004B60C AFA30014 */   sw        $v1, 0x14($sp)
.L8004B610:
/* 42940 8004B610 27A50010 */  addiu      $a1, $sp, 0x10
/* 42944 8004B614 27A60014 */  addiu      $a2, $sp, 0x14
/* 42948 8004B618 8E22002C */  lw         $v0, 0x2C($s1)
/* 4294C 8004B61C 24070002 */  addiu      $a3, $zero, 0x2
/* 42950 8004B620 84440010 */  lh         $a0, 0x10($v0)
/* 42954 8004B624 8C420014 */  lw         $v0, 0x14($v0)
/* 42958 8004B628 0040F809 */  jalr       $v0
/* 4295C 8004B62C 02242021 */   addu      $a0, $s1, $a0
/* 42960 8004B630 240B0001 */  addiu      $t3, $zero, 0x1
.L8004B634:
/* 42964 8004B634 96220016 */  lhu        $v0, 0x16($s1)
/* 42968 8004B638 96270026 */  lhu        $a3, 0x26($s1)
/* 4296C 8004B63C 96280028 */  lhu        $t0, 0x28($s1)
/* 42970 8004B640 2443FFFC */  addiu      $v1, $v0, -0x4
/* 42974 8004B644 2C62001D */  sltiu      $v0, $v1, 0x1D
/* 42978 8004B648 1040006F */  beqz       $v0, L8004B808
/* 4297C 8004B64C 3C028004 */   lui       $v0, %hi(jtbl_8003C6D0)
/* 42980 8004B650 2442C6D0 */  addiu      $v0, $v0, %lo(jtbl_8003C6D0)
/* 42984 8004B654 00031880 */  sll        $v1, $v1, 2
/* 42988 8004B658 00621821 */  addu       $v1, $v1, $v0
/* 4298C 8004B65C 8C620000 */  lw         $v0, 0x0($v1)
/* 42990 8004B660 00400008 */  jr         $v0
/* 42994 8004B664 00000000 */   nop
glabel L8004B668
/* 42998 8004B668 3210000F */  andi       $s0, $s0, 0xF
/* 4299C 8004B66C 96230026 */  lhu        $v1, 0x26($s1)
/* 429A0 8004B670 00101100 */  sll        $v0, $s0, 4
/* 429A4 8004B674 02028025 */  or         $s0, $s0, $v0
/* 429A8 8004B678 00033842 */  srl        $a3, $v1, 1
glabel L8004B67C
/* 429AC 8004B67C 00002021 */  addu       $a0, $zero, $zero
/* 429B0 8004B680 11000061 */  beqz       $t0, L8004B808
/* 429B4 8004B684 02002821 */   addu      $a1, $s0, $zero
.L8004B688:
/* 429B8 8004B688 8FA30010 */  lw         $v1, 0x10($sp)
/* 429BC 8004B68C 00673021 */  addu       $a2, $v1, $a3
/* 429C0 8004B690 0066102B */  sltu       $v0, $v1, $a2
/* 429C4 8004B694 10400006 */  beqz       $v0, .L8004B6B0
/* 429C8 8004B698 00000000 */   nop
/* 429CC 8004B69C A0650000 */  sb         $a1, 0x0($v1)
.L8004B6A0:
/* 429D0 8004B6A0 24630001 */  addiu      $v1, $v1, 0x1
/* 429D4 8004B6A4 0066102B */  sltu       $v0, $v1, $a2
/* 429D8 8004B6A8 5440FFFD */  bnel       $v0, $zero, .L8004B6A0
/* 429DC 8004B6AC A0650000 */   sb        $a1, 0x0($v1)
.L8004B6B0:
/* 429E0 8004B6B0 8FA20010 */  lw         $v0, 0x10($sp)
/* 429E4 8004B6B4 8FA30014 */  lw         $v1, 0x14($sp)
/* 429E8 8004B6B8 24840001 */  addiu      $a0, $a0, 0x1
/* 429EC 8004B6BC 00431021 */  addu       $v0, $v0, $v1
/* 429F0 8004B6C0 AFA20010 */  sw         $v0, 0x10($sp)
/* 429F4 8004B6C4 0088102B */  sltu       $v0, $a0, $t0
/* 429F8 8004B6C8 1040004F */  beqz       $v0, L8004B808
/* 429FC 8004B6CC 00000000 */   nop
/* 42A00 8004B6D0 08012DA2 */  j          .L8004B688
/* 42A04 8004B6D4 00000000 */   nop
glabel L8004B6D8
/* 42A08 8004B6D8 00002021 */  addu       $a0, $zero, $zero
/* 42A0C 8004B6DC 1100004A */  beqz       $t0, L8004B808
/* 42A10 8004B6E0 02002821 */   addu      $a1, $s0, $zero
/* 42A14 8004B6E4 00073840 */  sll        $a3, $a3, 1
.L8004B6E8:
/* 42A18 8004B6E8 8FA30010 */  lw         $v1, 0x10($sp)
/* 42A1C 8004B6EC 00673021 */  addu       $a2, $v1, $a3
/* 42A20 8004B6F0 0066102B */  sltu       $v0, $v1, $a2
/* 42A24 8004B6F4 10400006 */  beqz       $v0, .L8004B710
/* 42A28 8004B6F8 00000000 */   nop
/* 42A2C 8004B6FC A4650000 */  sh         $a1, 0x0($v1)
.L8004B700:
/* 42A30 8004B700 24630002 */  addiu      $v1, $v1, 0x2
/* 42A34 8004B704 0066102B */  sltu       $v0, $v1, $a2
/* 42A38 8004B708 5440FFFD */  bnel       $v0, $zero, .L8004B700
/* 42A3C 8004B70C A4650000 */   sh        $a1, 0x0($v1)
.L8004B710:
/* 42A40 8004B710 8FA20010 */  lw         $v0, 0x10($sp)
/* 42A44 8004B714 8FA30014 */  lw         $v1, 0x14($sp)
/* 42A48 8004B718 24840001 */  addiu      $a0, $a0, 0x1
/* 42A4C 8004B71C 00431021 */  addu       $v0, $v0, $v1
/* 42A50 8004B720 AFA20010 */  sw         $v0, 0x10($sp)
/* 42A54 8004B724 0088102B */  sltu       $v0, $a0, $t0
/* 42A58 8004B728 10400037 */  beqz       $v0, L8004B808
/* 42A5C 8004B72C 00000000 */   nop
/* 42A60 8004B730 08012DBA */  j          .L8004B6E8
/* 42A64 8004B734 00000000 */   nop
glabel L8004B738
/* 42A68 8004B738 00105202 */  srl        $t2, $s0, 8
/* 42A6C 8004B73C 00104C02 */  srl        $t1, $s0, 16
/* 42A70 8004B740 00002021 */  addu       $a0, $zero, $zero
/* 42A74 8004B744 11000030 */  beqz       $t0, L8004B808
/* 42A78 8004B748 02002821 */   addu      $a1, $s0, $zero
/* 42A7C 8004B74C 00071040 */  sll        $v0, $a3, 1
/* 42A80 8004B750 00473821 */  addu       $a3, $v0, $a3
.L8004B754:
/* 42A84 8004B754 8FA30010 */  lw         $v1, 0x10($sp)
/* 42A88 8004B758 00673021 */  addu       $a2, $v1, $a3
/* 42A8C 8004B75C 0066102B */  sltu       $v0, $v1, $a2
/* 42A90 8004B760 1040000A */  beqz       $v0, .L8004B78C
/* 42A94 8004B764 00000000 */   nop
/* 42A98 8004B768 A0690000 */  sb         $t1, 0x0($v1)
.L8004B76C:
/* 42A9C 8004B76C 24630001 */  addiu      $v1, $v1, 0x1
/* 42AA0 8004B770 A06A0000 */  sb         $t2, 0x0($v1)
/* 42AA4 8004B774 24630001 */  addiu      $v1, $v1, 0x1
/* 42AA8 8004B778 A0650000 */  sb         $a1, 0x0($v1)
/* 42AAC 8004B77C 24630001 */  addiu      $v1, $v1, 0x1
/* 42AB0 8004B780 0066102B */  sltu       $v0, $v1, $a2
/* 42AB4 8004B784 5440FFF9 */  bnel       $v0, $zero, .L8004B76C
/* 42AB8 8004B788 A0690000 */   sb        $t1, 0x0($v1)
.L8004B78C:
/* 42ABC 8004B78C 8FA20010 */  lw         $v0, 0x10($sp)
/* 42AC0 8004B790 8FA30014 */  lw         $v1, 0x14($sp)
/* 42AC4 8004B794 24840001 */  addiu      $a0, $a0, 0x1
/* 42AC8 8004B798 00431021 */  addu       $v0, $v0, $v1
/* 42ACC 8004B79C AFA20010 */  sw         $v0, 0x10($sp)
/* 42AD0 8004B7A0 0088102B */  sltu       $v0, $a0, $t0
/* 42AD4 8004B7A4 10400018 */  beqz       $v0, L8004B808
/* 42AD8 8004B7A8 00000000 */   nop
/* 42ADC 8004B7AC 08012DD5 */  j          .L8004B754
/* 42AE0 8004B7B0 00000000 */   nop
glabel L8004B7B4
/* 42AE4 8004B7B4 11000014 */  beqz       $t0, L8004B808
/* 42AE8 8004B7B8 00002021 */   addu      $a0, $zero, $zero
/* 42AEC 8004B7BC 00073080 */  sll        $a2, $a3, 2
.L8004B7C0:
/* 42AF0 8004B7C0 8FA30010 */  lw         $v1, 0x10($sp)
/* 42AF4 8004B7C4 00662821 */  addu       $a1, $v1, $a2
/* 42AF8 8004B7C8 0065102B */  sltu       $v0, $v1, $a1
/* 42AFC 8004B7CC 10400006 */  beqz       $v0, .L8004B7E8
/* 42B00 8004B7D0 00000000 */   nop
/* 42B04 8004B7D4 AC700000 */  sw         $s0, 0x0($v1)
.L8004B7D8:
/* 42B08 8004B7D8 24630004 */  addiu      $v1, $v1, 0x4
/* 42B0C 8004B7DC 0065102B */  sltu       $v0, $v1, $a1
/* 42B10 8004B7E0 5440FFFD */  bnel       $v0, $zero, .L8004B7D8
/* 42B14 8004B7E4 AC700000 */   sw        $s0, 0x0($v1)
.L8004B7E8:
/* 42B18 8004B7E8 8FA20010 */  lw         $v0, 0x10($sp)
/* 42B1C 8004B7EC 8FA30014 */  lw         $v1, 0x14($sp)
/* 42B20 8004B7F0 24840001 */  addiu      $a0, $a0, 0x1
/* 42B24 8004B7F4 00431021 */  addu       $v0, $v0, $v1
/* 42B28 8004B7F8 AFA20010 */  sw         $v0, 0x10($sp)
/* 42B2C 8004B7FC 0088102B */  sltu       $v0, $a0, $t0
/* 42B30 8004B800 1440FFEF */  bnez       $v0, .L8004B7C0
/* 42B34 8004B804 00000000 */   nop
glabel L8004B808
/* 42B38 8004B808 11600006 */  beqz       $t3, .L8004B824
/* 42B3C 8004B80C 00000000 */   nop
/* 42B40 8004B810 8E22002C */  lw         $v0, 0x2C($s1)
/* 42B44 8004B814 84440018 */  lh         $a0, 0x18($v0)
/* 42B48 8004B818 8C42001C */  lw         $v0, 0x1C($v0)
/* 42B4C 8004B81C 0040F809 */  jalr       $v0
/* 42B50 8004B820 02242021 */   addu      $a0, $s1, $a0
.L8004B824:
/* 42B54 8004B824 8FBF0020 */  lw         $ra, 0x20($sp)
/* 42B58 8004B828 8FB1001C */  lw         $s1, 0x1C($sp)
/* 42B5C 8004B82C 8FB00018 */  lw         $s0, 0x18($sp)
/* 42B60 8004B830 03E00008 */  jr         $ra
/* 42B64 8004B834 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004B838
/* 42B68 8004B838 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 42B6C 8004B83C AFB30024 */  sw         $s3, 0x24($sp)
/* 42B70 8004B840 8FB30054 */  lw         $s3, 0x54($sp)
/* 42B74 8004B844 AFB5002C */  sw         $s5, 0x2C($sp)
/* 42B78 8004B848 0080A821 */  addu       $s5, $a0, $zero
/* 42B7C 8004B84C AFB40028 */  sw         $s4, 0x28($sp)
/* 42B80 8004B850 00A0A021 */  addu       $s4, $a1, $zero
/* 42B84 8004B854 AFB60030 */  sw         $s6, 0x30($sp)
/* 42B88 8004B858 00C0B021 */  addu       $s6, $a2, $zero
/* 42B8C 8004B85C AFB00018 */  sw         $s0, 0x18($sp)
/* 42B90 8004B860 AFBF0038 */  sw         $ra, 0x38($sp)
/* 42B94 8004B864 AFB70034 */  sw         $s7, 0x34($sp)
/* 42B98 8004B868 AFB20020 */  sw         $s2, 0x20($sp)
/* 42B9C 8004B86C AFB1001C */  sw         $s1, 0x1C($sp)
/* 42BA0 8004B870 8E660000 */  lw         $a2, 0x0($s3)
/* 42BA4 8004B874 8E630008 */  lw         $v1, 0x8($s3)
/* 42BA8 8004B878 8FB70050 */  lw         $s7, 0x50($sp)
/* 42BAC 8004B87C 00C3102A */  slt        $v0, $a2, $v1
/* 42BB0 8004B880 104000A2 */  beqz       $v0, .L8004BB0C
/* 42BB4 8004B884 00E08021 */   addu      $s0, $a3, $zero
/* 42BB8 8004B888 8E650004 */  lw         $a1, 0x4($s3)
/* 42BBC 8004B88C 8E64000C */  lw         $a0, 0xC($s3)
/* 42BC0 8004B890 00A4102A */  slt        $v0, $a1, $a0
/* 42BC4 8004B894 1040009D */  beqz       $v0, .L8004BB0C
/* 42BC8 8004B898 00668823 */   subu      $s1, $v1, $a2
/* 42BCC 8004B89C 96A30026 */  lhu        $v1, 0x26($s5)
/* 42BD0 8004B8A0 0283102B */  sltu       $v0, $s4, $v1
/* 42BD4 8004B8A4 10400099 */  beqz       $v0, .L8004BB0C
/* 42BD8 8004B8A8 00859023 */   subu      $s2, $a0, $a1
/* 42BDC 8004B8AC 96A40028 */  lhu        $a0, 0x28($s5)
/* 42BE0 8004B8B0 02C4102B */  sltu       $v0, $s6, $a0
/* 42BE4 8004B8B4 10400095 */  beqz       $v0, .L8004BB0C
/* 42BE8 8004B8B8 02911021 */   addu      $v0, $s4, $s1
/* 42BEC 8004B8BC 0062102B */  sltu       $v0, $v1, $v0
/* 42BF0 8004B8C0 54400001 */  bnel       $v0, $zero, .L8004B8C8
/* 42BF4 8004B8C4 00748823 */   subu      $s1, $v1, $s4
.L8004B8C8:
/* 42BF8 8004B8C8 02D21021 */  addu       $v0, $s6, $s2
/* 42BFC 8004B8CC 0082102B */  sltu       $v0, $a0, $v0
/* 42C00 8004B8D0 54400001 */  bnel       $v0, $zero, .L8004B8D8
/* 42C04 8004B8D4 00969023 */   subu      $s2, $a0, $s6
.L8004B8D8:
/* 42C08 8004B8D8 96A20022 */  lhu        $v0, 0x22($s5)
/* 42C0C 8004B8DC 30420002 */  andi       $v0, $v0, 0x2
/* 42C10 8004B8E0 10400006 */  beqz       $v0, .L8004B8FC
/* 42C14 8004B8E4 0000C021 */   addu      $t8, $zero, $zero
/* 42C18 8004B8E8 8EA20018 */  lw         $v0, 0x18($s5)
/* 42C1C 8004B8EC 96A30020 */  lhu        $v1, 0x20($s5)
/* 42C20 8004B8F0 AFA20010 */  sw         $v0, 0x10($sp)
/* 42C24 8004B8F4 08012E48 */  j          .L8004B920
/* 42C28 8004B8F8 AFA30014 */   sw        $v1, 0x14($sp)
.L8004B8FC:
/* 42C2C 8004B8FC 27A50010 */  addiu      $a1, $sp, 0x10
/* 42C30 8004B900 27A60014 */  addiu      $a2, $sp, 0x14
/* 42C34 8004B904 8EA2002C */  lw         $v0, 0x2C($s5)
/* 42C38 8004B908 24070002 */  addiu      $a3, $zero, 0x2
/* 42C3C 8004B90C 84440010 */  lh         $a0, 0x10($v0)
/* 42C40 8004B910 8C420014 */  lw         $v0, 0x14($v0)
/* 42C44 8004B914 0040F809 */  jalr       $v0
/* 42C48 8004B918 02A42021 */   addu      $a0, $s5, $a0
/* 42C4C 8004B91C 24180001 */  addiu      $t8, $zero, 0x1
.L8004B920:
/* 42C50 8004B920 96A40016 */  lhu        $a0, 0x16($s5)
/* 42C54 8004B924 24020004 */  addiu      $v0, $zero, 0x4
/* 42C58 8004B928 54820044 */  bnel       $a0, $v0, .L8004BA3C
/* 42C5C 8004B92C 000420C2 */   srl       $a0, $a0, 3
/* 42C60 8004B930 8E620004 */  lw         $v0, 0x4($s3)
/* 42C64 8004B934 02E20018 */  mult       $s7, $v0
/* 42C68 8004B938 00001812 */  mflo       $v1
/* 42C6C 8004B93C 8FA20014 */  lw         $v0, 0x14($sp)
/* 42C70 8004B940 00000000 */  nop
/* 42C74 8004B944 00560018 */  mult       $v0, $s6
/* 42C78 8004B948 8FA20010 */  lw         $v0, 0x10($sp)
/* 42C7C 8004B94C 00004012 */  mflo       $t0
/* 42C80 8004B950 00481021 */  addu       $v0, $v0, $t0
/* 42C84 8004B954 AFA20010 */  sw         $v0, 0x10($sp)
/* 42C88 8004B958 32820001 */  andi       $v0, $s4, 0x1
/* 42C8C 8004B95C 10400004 */  beqz       $v0, .L8004B970
/* 42C90 8004B960 02038021 */   addu      $s0, $s0, $v1
/* 42C94 8004B964 240F00F0 */  addiu      $t7, $zero, 0xF0
/* 42C98 8004B968 08012E5E */  j          .L8004B978
/* 42C9C 8004B96C 00007021 */   addu      $t6, $zero, $zero
.L8004B970:
/* 42CA0 8004B970 240F000F */  addiu      $t7, $zero, 0xF
/* 42CA4 8004B974 240E0004 */  addiu      $t6, $zero, 0x4
.L8004B978:
/* 42CA8 8004B978 8E620000 */  lw         $v0, 0x0($s3)
/* 42CAC 8004B97C 30420001 */  andi       $v0, $v0, 0x1
/* 42CB0 8004B980 10400003 */  beqz       $v0, .L8004B990
/* 42CB4 8004B984 240D000F */   addiu     $t5, $zero, 0xF
/* 42CB8 8004B988 08012E66 */  j          .L8004B998
/* 42CBC 8004B98C 00006021 */   addu      $t4, $zero, $zero
.L8004B990:
/* 42CC0 8004B990 240D00F0 */  addiu      $t5, $zero, 0xF0
/* 42CC4 8004B994 240C0004 */  addiu      $t4, $zero, 0x4
.L8004B998:
/* 42CC8 8004B998 12400055 */  beqz       $s2, .L8004BAF0
/* 42CCC 8004B99C 00005821 */   addu      $t3, $zero, $zero
.L8004B9A0:
/* 42CD0 8004B9A0 01E05021 */  addu       $t2, $t7, $zero
/* 42CD4 8004B9A4 01C04821 */  addu       $t1, $t6, $zero
/* 42CD8 8004B9A8 01A04021 */  addu       $t0, $t5, $zero
/* 42CDC 8004B9AC 01803821 */  addu       $a3, $t4, $zero
/* 42CE0 8004B9B0 12200018 */  beqz       $s1, .L8004BA14
/* 42CE4 8004B9B4 00003021 */   addu      $a2, $zero, $zero
.L8004B9B8:
/* 42CE8 8004B9B8 02861821 */  addu       $v1, $s4, $a2
/* 42CEC 8004B9BC 00031842 */  srl        $v1, $v1, 1
/* 42CF0 8004B9C0 8FA40010 */  lw         $a0, 0x10($sp)
/* 42CF4 8004B9C4 8E620000 */  lw         $v0, 0x0($s3)
/* 42CF8 8004B9C8 00832021 */  addu       $a0, $a0, $v1
/* 42CFC 8004B9CC 00461021 */  addu       $v0, $v0, $a2
/* 42D00 8004B9D0 00021042 */  srl        $v0, $v0, 1
/* 42D04 8004B9D4 02022821 */  addu       $a1, $s0, $v0
/* 42D08 8004B9D8 24C60001 */  addiu      $a2, $a2, 0x1
/* 42D0C 8004B9DC 90830000 */  lbu        $v1, 0x0($a0)
/* 42D10 8004B9E0 90A20000 */  lbu        $v0, 0x0($a1)
/* 42D14 8004B9E4 006A1824 */  and        $v1, $v1, $t2
/* 42D18 8004B9E8 000A5027 */  nor        $t2, $zero, $t2
/* 42D1C 8004B9EC 00481024 */  and        $v0, $v0, $t0
/* 42D20 8004B9F0 00084027 */  nor        $t0, $zero, $t0
/* 42D24 8004B9F4 00E21006 */  srlv       $v0, $v0, $a3
/* 42D28 8004B9F8 01221004 */  sllv       $v0, $v0, $t1
/* 42D2C 8004B9FC 39290004 */  xori       $t1, $t1, 0x4
/* 42D30 8004BA00 38E70004 */  xori       $a3, $a3, 0x4
/* 42D34 8004BA04 00621825 */  or         $v1, $v1, $v0
/* 42D38 8004BA08 00D1102B */  sltu       $v0, $a2, $s1
/* 42D3C 8004BA0C 1440FFEA */  bnez       $v0, .L8004B9B8
/* 42D40 8004BA10 A0830000 */   sb        $v1, 0x0($a0)
.L8004BA14:
/* 42D44 8004BA14 8FA20010 */  lw         $v0, 0x10($sp)
/* 42D48 8004BA18 8FA30014 */  lw         $v1, 0x14($sp)
/* 42D4C 8004BA1C 256B0001 */  addiu      $t3, $t3, 0x1
/* 42D50 8004BA20 00431021 */  addu       $v0, $v0, $v1
/* 42D54 8004BA24 AFA20010 */  sw         $v0, 0x10($sp)
/* 42D58 8004BA28 0172102B */  sltu       $v0, $t3, $s2
/* 42D5C 8004BA2C 1440FFDC */  bnez       $v0, .L8004B9A0
/* 42D60 8004BA30 02178021 */   addu      $s0, $s0, $s7
/* 42D64 8004BA34 08012EBC */  j          .L8004BAF0
/* 42D68 8004BA38 00000000 */   nop
.L8004BA3C:
/* 42D6C 8004BA3C 8E620000 */  lw         $v0, 0x0($s3)
/* 42D70 8004BA40 00820018 */  mult       $a0, $v0
/* 42D74 8004BA44 00003812 */  mflo       $a3
/* 42D78 8004BA48 8E620004 */  lw         $v0, 0x4($s3)
/* 42D7C 8004BA4C 00000000 */  nop
/* 42D80 8004BA50 02E20018 */  mult       $s7, $v0
/* 42D84 8004BA54 00003012 */  mflo       $a2
/* 42D88 8004BA58 00000000 */  nop
/* 42D8C 8004BA5C 00000000 */  nop
/* 42D90 8004BA60 00940018 */  mult       $a0, $s4
/* 42D94 8004BA64 00002812 */  mflo       $a1
/* 42D98 8004BA68 8FA30014 */  lw         $v1, 0x14($sp)
/* 42D9C 8004BA6C 00000000 */  nop
/* 42DA0 8004BA70 00760018 */  mult       $v1, $s6
/* 42DA4 8004BA74 00005821 */  addu       $t3, $zero, $zero
/* 42DA8 8004BA78 02078021 */  addu       $s0, $s0, $a3
/* 42DAC 8004BA7C 00001812 */  mflo       $v1
/* 42DB0 8004BA80 8FA20010 */  lw         $v0, 0x10($sp)
/* 42DB4 8004BA84 02068021 */  addu       $s0, $s0, $a2
/* 42DB8 8004BA88 02240018 */  mult       $s1, $a0
/* 42DBC 8004BA8C 00451021 */  addu       $v0, $v0, $a1
/* 42DC0 8004BA90 AFA20010 */  sw         $v0, 0x10($sp)
/* 42DC4 8004BA94 00431021 */  addu       $v0, $v0, $v1
/* 42DC8 8004BA98 00003012 */  mflo       $a2
/* 42DCC 8004BA9C 12400014 */  beqz       $s2, .L8004BAF0
/* 42DD0 8004BAA0 AFA20010 */   sw        $v0, 0x10($sp)
.L8004BAA4:
/* 42DD4 8004BAA4 8FA40010 */  lw         $a0, 0x10($sp)
/* 42DD8 8004BAA8 00861821 */  addu       $v1, $a0, $a2
/* 42DDC 8004BAAC 0083102B */  sltu       $v0, $a0, $v1
/* 42DE0 8004BAB0 10400007 */  beqz       $v0, .L8004BAD0
/* 42DE4 8004BAB4 02002821 */   addu      $a1, $s0, $zero
.L8004BAB8:
/* 42DE8 8004BAB8 90A20000 */  lbu        $v0, 0x0($a1)
/* 42DEC 8004BABC A0820000 */  sb         $v0, 0x0($a0)
/* 42DF0 8004BAC0 24840001 */  addiu      $a0, $a0, 0x1
/* 42DF4 8004BAC4 0083102B */  sltu       $v0, $a0, $v1
/* 42DF8 8004BAC8 1440FFFB */  bnez       $v0, .L8004BAB8
/* 42DFC 8004BACC 24A50001 */   addiu     $a1, $a1, 0x1
.L8004BAD0:
/* 42E00 8004BAD0 8FA20010 */  lw         $v0, 0x10($sp)
/* 42E04 8004BAD4 8FA30014 */  lw         $v1, 0x14($sp)
/* 42E08 8004BAD8 256B0001 */  addiu      $t3, $t3, 0x1
/* 42E0C 8004BADC 00431021 */  addu       $v0, $v0, $v1
/* 42E10 8004BAE0 AFA20010 */  sw         $v0, 0x10($sp)
/* 42E14 8004BAE4 0172102B */  sltu       $v0, $t3, $s2
/* 42E18 8004BAE8 1440FFEE */  bnez       $v0, .L8004BAA4
/* 42E1C 8004BAEC 02178021 */   addu      $s0, $s0, $s7
.L8004BAF0:
/* 42E20 8004BAF0 13000006 */  beqz       $t8, .L8004BB0C
/* 42E24 8004BAF4 00000000 */   nop
/* 42E28 8004BAF8 8EA2002C */  lw         $v0, 0x2C($s5)
/* 42E2C 8004BAFC 84440018 */  lh         $a0, 0x18($v0)
/* 42E30 8004BB00 8C42001C */  lw         $v0, 0x1C($v0)
/* 42E34 8004BB04 0040F809 */  jalr       $v0
/* 42E38 8004BB08 02A42021 */   addu      $a0, $s5, $a0
.L8004BB0C:
/* 42E3C 8004BB0C 8FBF0038 */  lw         $ra, 0x38($sp)
/* 42E40 8004BB10 8FB70034 */  lw         $s7, 0x34($sp)
/* 42E44 8004BB14 8FB60030 */  lw         $s6, 0x30($sp)
/* 42E48 8004BB18 8FB5002C */  lw         $s5, 0x2C($sp)
/* 42E4C 8004BB1C 8FB40028 */  lw         $s4, 0x28($sp)
/* 42E50 8004BB20 8FB30024 */  lw         $s3, 0x24($sp)
/* 42E54 8004BB24 8FB20020 */  lw         $s2, 0x20($sp)
/* 42E58 8004BB28 8FB1001C */  lw         $s1, 0x1C($sp)
/* 42E5C 8004BB2C 8FB00018 */  lw         $s0, 0x18($sp)
/* 42E60 8004BB30 03E00008 */  jr         $ra
/* 42E64 8004BB34 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004BB38
/* 42E68 8004BB38 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 42E6C 8004BB3C AFB3002C */  sw         $s3, 0x2C($sp)
/* 42E70 8004BB40 00809821 */  addu       $s3, $a0, $zero
/* 42E74 8004BB44 AFB50034 */  sw         $s5, 0x34($sp)
/* 42E78 8004BB48 00A0A821 */  addu       $s5, $a1, $zero
/* 42E7C 8004BB4C AFB60038 */  sw         $s6, 0x38($sp)
/* 42E80 8004BB50 AFB20028 */  sw         $s2, 0x28($sp)
/* 42E84 8004BB54 00E09021 */  addu       $s2, $a3, $zero
/* 42E88 8004BB58 AFBF003C */  sw         $ra, 0x3C($sp)
/* 42E8C 8004BB5C AFB40030 */  sw         $s4, 0x30($sp)
/* 42E90 8004BB60 AFB10024 */  sw         $s1, 0x24($sp)
/* 42E94 8004BB64 AFB00020 */  sw         $s0, 0x20($sp)
/* 42E98 8004BB68 96630016 */  lhu        $v1, 0x16($s3)
/* 42E9C 8004BB6C 96420016 */  lhu        $v0, 0x16($s2)
/* 42EA0 8004BB70 8FB40050 */  lw         $s4, 0x50($sp)
/* 42EA4 8004BB74 14620045 */  bne        $v1, $v0, .L8004BC8C
/* 42EA8 8004BB78 00C0B021 */   addu      $s6, $a2, $zero
/* 42EAC 8004BB7C 96430026 */  lhu        $v1, 0x26($s2)
/* 42EB0 8004BB80 8E820008 */  lw         $v0, 0x8($s4)
/* 42EB4 8004BB84 0062102A */  slt        $v0, $v1, $v0
/* 42EB8 8004BB88 54400001 */  bnel       $v0, $zero, .L8004BB90
/* 42EBC 8004BB8C AE830008 */   sw        $v1, 0x8($s4)
.L8004BB90:
/* 42EC0 8004BB90 96430028 */  lhu        $v1, 0x28($s2)
/* 42EC4 8004BB94 8E82000C */  lw         $v0, 0xC($s4)
/* 42EC8 8004BB98 0062102A */  slt        $v0, $v1, $v0
/* 42ECC 8004BB9C 54400001 */  bnel       $v0, $zero, .L8004BBA4
/* 42ED0 8004BBA0 AE83000C */   sw        $v1, 0xC($s4)
.L8004BBA4:
/* 42ED4 8004BBA4 96620014 */  lhu        $v0, 0x14($s3)
/* 42ED8 8004BBA8 10400014 */  beqz       $v0, .L8004BBFC
/* 42EDC 8004BBAC 00000000 */   nop
/* 42EE0 8004BBB0 8E62002C */  lw         $v0, 0x2C($s3)
/* 42EE4 8004BBB4 84440040 */  lh         $a0, 0x40($v0)
/* 42EE8 8004BBB8 8C420044 */  lw         $v0, 0x44($v0)
/* 42EEC 8004BBBC 0040F809 */  jalr       $v0
/* 42EF0 8004BBC0 02642021 */   addu      $a0, $s3, $a0
/* 42EF4 8004BBC4 00408021 */  addu       $s0, $v0, $zero
/* 42EF8 8004BBC8 8E020000 */  lw         $v0, 0x0($s0)
/* 42EFC 8004BBCC 8E45002C */  lw         $a1, 0x2C($s2)
/* 42F00 8004BBD0 24510020 */  addiu      $s1, $v0, 0x20
/* 42F04 8004BBD4 84A40040 */  lh         $a0, 0x40($a1)
/* 42F08 8004BBD8 84430020 */  lh         $v1, 0x20($v0)
/* 42F0C 8004BBDC 8CA20044 */  lw         $v0, 0x44($a1)
/* 42F10 8004BBE0 02442021 */  addu       $a0, $s2, $a0
/* 42F14 8004BBE4 0040F809 */  jalr       $v0
/* 42F18 8004BBE8 02038021 */   addu      $s0, $s0, $v1
/* 42F1C 8004BBEC 02002021 */  addu       $a0, $s0, $zero
/* 42F20 8004BBF0 8E230004 */  lw         $v1, 0x4($s1)
/* 42F24 8004BBF4 0060F809 */  jalr       $v1
/* 42F28 8004BBF8 00402821 */   addu      $a1, $v0, $zero
.L8004BBFC:
/* 42F2C 8004BBFC 96420022 */  lhu        $v0, 0x22($s2)
/* 42F30 8004BC00 30420002 */  andi       $v0, $v0, 0x2
/* 42F34 8004BC04 10400006 */  beqz       $v0, .L8004BC20
/* 42F38 8004BC08 00008021 */   addu      $s0, $zero, $zero
/* 42F3C 8004BC0C 8E420018 */  lw         $v0, 0x18($s2)
/* 42F40 8004BC10 96430020 */  lhu        $v1, 0x20($s2)
/* 42F44 8004BC14 AFA20018 */  sw         $v0, 0x18($sp)
/* 42F48 8004BC18 08012F11 */  j          .L8004BC44
/* 42F4C 8004BC1C AFA3001C */   sw        $v1, 0x1C($sp)
.L8004BC20:
/* 42F50 8004BC20 27A50018 */  addiu      $a1, $sp, 0x18
/* 42F54 8004BC24 27A6001C */  addiu      $a2, $sp, 0x1C
/* 42F58 8004BC28 24070001 */  addiu      $a3, $zero, 0x1
/* 42F5C 8004BC2C 8E42002C */  lw         $v0, 0x2C($s2)
/* 42F60 8004BC30 00E08021 */  addu       $s0, $a3, $zero
/* 42F64 8004BC34 84440010 */  lh         $a0, 0x10($v0)
/* 42F68 8004BC38 8C420014 */  lw         $v0, 0x14($v0)
/* 42F6C 8004BC3C 0040F809 */  jalr       $v0
/* 42F70 8004BC40 02442021 */   addu      $a0, $s2, $a0
.L8004BC44:
/* 42F74 8004BC44 02A02821 */  addu       $a1, $s5, $zero
/* 42F78 8004BC48 8E63002C */  lw         $v1, 0x2C($s3)
/* 42F7C 8004BC4C 8FA70018 */  lw         $a3, 0x18($sp)
/* 42F80 8004BC50 8FA2001C */  lw         $v0, 0x1C($sp)
/* 42F84 8004BC54 84640058 */  lh         $a0, 0x58($v1)
/* 42F88 8004BC58 02C03021 */  addu       $a2, $s6, $zero
/* 42F8C 8004BC5C AFA20010 */  sw         $v0, 0x10($sp)
/* 42F90 8004BC60 AFB40014 */  sw         $s4, 0x14($sp)
/* 42F94 8004BC64 8C62005C */  lw         $v0, 0x5C($v1)
/* 42F98 8004BC68 0040F809 */  jalr       $v0
/* 42F9C 8004BC6C 02642021 */   addu      $a0, $s3, $a0
/* 42FA0 8004BC70 12000006 */  beqz       $s0, .L8004BC8C
/* 42FA4 8004BC74 00000000 */   nop
/* 42FA8 8004BC78 8E42002C */  lw         $v0, 0x2C($s2)
/* 42FAC 8004BC7C 84440018 */  lh         $a0, 0x18($v0)
/* 42FB0 8004BC80 8C42001C */  lw         $v0, 0x1C($v0)
/* 42FB4 8004BC84 0040F809 */  jalr       $v0
/* 42FB8 8004BC88 02442021 */   addu      $a0, $s2, $a0
.L8004BC8C:
/* 42FBC 8004BC8C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 42FC0 8004BC90 8FB60038 */  lw         $s6, 0x38($sp)
/* 42FC4 8004BC94 8FB50034 */  lw         $s5, 0x34($sp)
/* 42FC8 8004BC98 8FB40030 */  lw         $s4, 0x30($sp)
/* 42FCC 8004BC9C 8FB3002C */  lw         $s3, 0x2C($sp)
/* 42FD0 8004BCA0 8FB20028 */  lw         $s2, 0x28($sp)
/* 42FD4 8004BCA4 8FB10024 */  lw         $s1, 0x24($sp)
/* 42FD8 8004BCA8 8FB00020 */  lw         $s0, 0x20($sp)
/* 42FDC 8004BCAC 03E00008 */  jr         $ra
/* 42FE0 8004BCB0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004BCB4
/* 42FE4 8004BCB4 03E00008 */  jr         $ra
/* 42FE8 8004BCB8 00000000 */   nop

glabel func_8004BCBC
/* 42FEC 8004BCBC 03E00008 */  jr         $ra
/* 42FF0 8004BCC0 00000000 */   nop

glabel func_8004BCC4
/* 42FF4 8004BCC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 42FF8 8004BCC8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 42FFC 8004BCCC 0C012C78 */  jal        func_8004B1E0
/* 43000 8004BCD0 00000000 */   nop
/* 43004 8004BCD4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 43008 8004BCD8 03E00008 */  jr         $ra
/* 4300C 8004BCDC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BCE0
/* 43010 8004BCE0 94820014 */  lhu        $v0, 0x14($a0)
/* 43014 8004BCE4 03E00008 */  jr         $ra
/* 43018 8004BCE8 00000000 */   nop

glabel func_8004BCEC
/* 4301C 8004BCEC 8C820010 */  lw         $v0, 0x10($a0)
/* 43020 8004BCF0 03E00008 */  jr         $ra
/* 43024 8004BCF4 00000000 */   nop

glabel func_8004BCF8
/* 43028 8004BCF8 8C82000C */  lw         $v0, 0xC($a0)
/* 4302C 8004BCFC 03E00008 */  jr         $ra
/* 43030 8004BD00 00000000 */   nop

glabel func_8004BD04
/* 43034 8004BD04 8C820008 */  lw         $v0, 0x8($a0)
/* 43038 8004BD08 03E00008 */  jr         $ra
/* 4303C 8004BD0C 00000000 */   nop

glabel func_8004BD10
/* 43040 8004BD10 8C820004 */  lw         $v0, 0x4($a0)
/* 43044 8004BD14 03E00008 */  jr         $ra
/* 43048 8004BD18 00000000 */   nop

glabel func_8004BD1C
/* 4304C 8004BD1C 8C820000 */  lw         $v0, 0x0($a0)
/* 43050 8004BD20 03E00008 */  jr         $ra
/* 43054 8004BD24 00000000 */   nop

glabel func_8004BD28
/* 43058 8004BD28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4305C 8004BD2C AFBF0010 */  sw         $ra, 0x10($sp)
/* 43060 8004BD30 0C012C69 */  jal        func_8004B1A4
/* 43064 8004BD34 00000000 */   nop
/* 43068 8004BD38 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4306C 8004BD3C 03E00008 */  jr         $ra
/* 43070 8004BD40 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BD44
/* 43074 8004BD44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43078 8004BD48 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4307C 8004BD4C 0C012C5B */  jal        func_8004B16C
/* 43080 8004BD50 00000000 */   nop
/* 43084 8004BD54 8FBF0010 */  lw         $ra, 0x10($sp)
/* 43088 8004BD58 03E00008 */  jr         $ra
/* 4308C 8004BD5C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BD60
/* 43090 8004BD60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43094 8004BD64 AFBF0010 */  sw         $ra, 0x10($sp)
/* 43098 8004BD68 0C012C4D */  jal        func_8004B134
/* 4309C 8004BD6C 00000000 */   nop
/* 430A0 8004BD70 8FBF0010 */  lw         $ra, 0x10($sp)
/* 430A4 8004BD74 03E00008 */  jr         $ra
/* 430A8 8004BD78 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BD7C
/* 430AC 8004BD7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 430B0 8004BD80 AFBF0010 */  sw         $ra, 0x10($sp)
/* 430B4 8004BD84 0C012C3F */  jal        func_8004B0FC
/* 430B8 8004BD88 00000000 */   nop
/* 430BC 8004BD8C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 430C0 8004BD90 03E00008 */  jr         $ra
/* 430C4 8004BD94 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BD98
/* 430C8 8004BD98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 430CC 8004BD9C AFBF0010 */  sw         $ra, 0x10($sp)
/* 430D0 8004BDA0 0C012C31 */  jal        func_8004B0C4
/* 430D4 8004BDA4 00000000 */   nop
/* 430D8 8004BDA8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 430DC 8004BDAC 03E00008 */  jr         $ra
/* 430E0 8004BDB0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BDB4
/* 430E4 8004BDB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 430E8 8004BDB8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 430EC 8004BDBC 0C012C23 */  jal        func_8004B08C
/* 430F0 8004BDC0 00000000 */   nop
/* 430F4 8004BDC4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 430F8 8004BDC8 03E00008 */  jr         $ra
/* 430FC 8004BDCC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BDD0
/* 43100 8004BDD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43104 8004BDD4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 43108 8004BDD8 0C012C0D */  jal        func_8004B034
/* 4310C 8004BDDC 00000000 */   nop
/* 43110 8004BDE0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 43114 8004BDE4 03E00008 */  jr         $ra
/* 43118 8004BDE8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BDEC
/* 4311C 8004BDEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43120 8004BDF0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 43124 8004BDF4 0C012BF8 */  jal        func_8004AFE0
/* 43128 8004BDF8 00000000 */   nop
/* 4312C 8004BDFC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 43130 8004BE00 03E00008 */  jr         $ra
/* 43134 8004BE04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BE08
/* 43138 8004BE08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4313C 8004BE0C AFBF0010 */  sw         $ra, 0x10($sp)
/* 43140 8004BE10 0C012BE3 */  jal        func_8004AF8C
/* 43144 8004BE14 00000000 */   nop
/* 43148 8004BE18 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4314C 8004BE1C 03E00008 */  jr         $ra
/* 43150 8004BE20 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BE24
/* 43154 8004BE24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43158 8004BE28 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4315C 8004BE2C 0C012BCE */  jal        func_8004AF38
/* 43160 8004BE30 00000000 */   nop
/* 43164 8004BE34 8FBF0010 */  lw         $ra, 0x10($sp)
/* 43168 8004BE38 03E00008 */  jr         $ra
/* 4316C 8004BE3C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BE40
/* 43170 8004BE40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43174 8004BE44 AFBF0010 */  sw         $ra, 0x10($sp)
/* 43178 8004BE48 0C012BB9 */  jal        func_8004AEE4
/* 4317C 8004BE4C 00000000 */   nop
/* 43180 8004BE50 8FBF0010 */  lw         $ra, 0x10($sp)
/* 43184 8004BE54 03E00008 */  jr         $ra
/* 43188 8004BE58 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BE5C
/* 4318C 8004BE5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43190 8004BE60 AFBF0010 */  sw         $ra, 0x10($sp)
/* 43194 8004BE64 0C012BA4 */  jal        func_8004AE90
/* 43198 8004BE68 00000000 */   nop
/* 4319C 8004BE6C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 431A0 8004BE70 03E00008 */  jr         $ra
/* 431A4 8004BE74 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BE78
/* 431A8 8004BE78 8C820010 */  lw         $v0, 0x10($a0)
/* 431AC 8004BE7C 03E00008 */  jr         $ra
/* 431B0 8004BE80 0002102B */   sltu      $v0, $zero, $v0

glabel func_8004BE84
/* 431B4 8004BE84 8C82000C */  lw         $v0, 0xC($a0)
/* 431B8 8004BE88 03E00008 */  jr         $ra
/* 431BC 8004BE8C 0002102B */   sltu      $v0, $zero, $v0

glabel func_8004BE90
/* 431C0 8004BE90 94820014 */  lhu        $v0, 0x14($a0)
/* 431C4 8004BE94 03E00008 */  jr         $ra
/* 431C8 8004BE98 0002102B */   sltu      $v0, $zero, $v0

glabel func_8004BE9C
/* 431CC 8004BE9C 94820022 */  lhu        $v0, 0x22($a0)
/* 431D0 8004BEA0 03E00008 */  jr         $ra
/* 431D4 8004BEA4 30420004 */   andi      $v0, $v0, 0x4

glabel func_8004BEA8
/* 431D8 8004BEA8 94820024 */  lhu        $v0, 0x24($a0)
/* 431DC 8004BEAC 03E00008 */  jr         $ra
/* 431E0 8004BEB0 30420002 */   andi      $v0, $v0, 0x2

glabel func_8004BEB4
/* 431E4 8004BEB4 94820022 */  lhu        $v0, 0x22($a0)
/* 431E8 8004BEB8 03E00008 */  jr         $ra
/* 431EC 8004BEBC 30420002 */   andi      $v0, $v0, 0x2

glabel func_8004BEC0
/* 431F0 8004BEC0 94820022 */  lhu        $v0, 0x22($a0)
/* 431F4 8004BEC4 03E00008 */  jr         $ra
/* 431F8 8004BEC8 30420001 */   andi      $v0, $v0, 0x1

glabel func_8004BECC
/* 431FC 8004BECC 8C820000 */  lw         $v0, 0x0($a0)
/* 43200 8004BED0 8C830004 */  lw         $v1, 0x4($a0)
/* 43204 8004BED4 8C860008 */  lw         $a2, 0x8($a0)
/* 43208 8004BED8 8C87000C */  lw         $a3, 0xC($a0)
/* 4320C 8004BEDC ACA20000 */  sw         $v0, 0x0($a1)
/* 43210 8004BEE0 ACA30004 */  sw         $v1, 0x4($a1)
/* 43214 8004BEE4 ACA60008 */  sw         $a2, 0x8($a1)
/* 43218 8004BEE8 ACA7000C */  sw         $a3, 0xC($a1)
/* 4321C 8004BEEC 8C820010 */  lw         $v0, 0x10($a0)
/* 43220 8004BEF0 8C830014 */  lw         $v1, 0x14($a0)
/* 43224 8004BEF4 ACA20010 */  sw         $v0, 0x10($a1)
/* 43228 8004BEF8 03E00008 */  jr         $ra
/* 4322C 8004BEFC ACA30014 */   sw        $v1, 0x14($a1)

glabel func_8004BF00
/* 43230 8004BF00 94820016 */  lhu        $v0, 0x16($a0)
/* 43234 8004BF04 03E00008 */  jr         $ra
/* 43238 8004BF08 00000000 */   nop

glabel func_8004BF0C
/* 4323C 8004BF0C 94820028 */  lhu        $v0, 0x28($a0)
/* 43240 8004BF10 03E00008 */  jr         $ra
/* 43244 8004BF14 00000000 */   nop

glabel func_8004BF18
/* 43248 8004BF18 94820028 */  lhu        $v0, 0x28($a0)
/* 4324C 8004BF1C 03E00008 */  jr         $ra
/* 43250 8004BF20 00000000 */   nop

glabel func_8004BF24
/* 43254 8004BF24 94820026 */  lhu        $v0, 0x26($a0)
/* 43258 8004BF28 03E00008 */  jr         $ra
/* 4325C 8004BF2C 00000000 */   nop

glabel func_8004BF30
/* 43260 8004BF30 94820026 */  lhu        $v0, 0x26($a0)
/* 43264 8004BF34 03E00008 */  jr         $ra
/* 43268 8004BF38 00000000 */   nop
