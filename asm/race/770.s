.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801203F0
/* D67B0 801203F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D67B4 801203F4 AFB00010 */  sw         $s0, 0x10($sp)
/* D67B8 801203F8 00808021 */  addu       $s0, $a0, $zero
/* D67BC 801203FC AFBF0018 */  sw         $ra, 0x18($sp)
/* D67C0 80120400 0C04B5C4 */  jal        func_race_8012D710
/* D67C4 80120404 AFB10014 */   sw        $s1, 0x14($sp)
/* D67C8 80120408 26110030 */  addiu      $s1, $s0, 0x30
/* D67CC 8012040C 02202021 */  addu       $a0, $s1, $zero
/* D67D0 80120410 3C02800D */  lui        $v0, %hi(D_race_800CE5B8)
/* D67D4 80120414 2442E5B8 */  addiu      $v0, $v0, %lo(D_race_800CE5B8)
/* D67D8 80120418 0C040B20 */  jal        func_race_80102C80
/* D67DC 8012041C AE020000 */   sw        $v0, 0x0($s0)
/* D67E0 80120420 02001021 */  addu       $v0, $s0, $zero
/* D67E4 80120424 AC510018 */  sw         $s1, 0x18($v0)
/* D67E8 80120428 AC4000D8 */  sw         $zero, 0xD8($v0)
/* D67EC 8012042C AC4000DC */  sw         $zero, 0xDC($v0)
/* D67F0 80120430 AC4000E0 */  sw         $zero, 0xE0($v0)
/* D67F4 80120434 AC4000E4 */  sw         $zero, 0xE4($v0)
/* D67F8 80120438 8FBF0018 */  lw         $ra, 0x18($sp)
/* D67FC 8012043C 8FB10014 */  lw         $s1, 0x14($sp)
/* D6800 80120440 8FB00010 */  lw         $s0, 0x10($sp)
/* D6804 80120444 03E00008 */  jr         $ra
/* D6808 80120448 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012044C
/* D680C 8012044C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D6810 80120450 AFB00010 */  sw         $s0, 0x10($sp)
/* D6814 80120454 00808021 */  addu       $s0, $a0, $zero
/* D6818 80120458 AFB10014 */  sw         $s1, 0x14($sp)
/* D681C 8012045C 00A08821 */  addu       $s1, $a1, $zero
/* D6820 80120460 3C02800D */  lui        $v0, %hi(D_race_800CE5B8)
/* D6824 80120464 2442E5B8 */  addiu      $v0, $v0, %lo(D_race_800CE5B8)
/* D6828 80120468 AFBF0018 */  sw         $ra, 0x18($sp)
/* D682C 8012046C 0C048146 */  jal        func_race_80120518
/* D6830 80120470 AE020000 */   sw        $v0, 0x0($s0)
/* D6834 80120474 26040030 */  addiu      $a0, $s0, 0x30
/* D6838 80120478 0C040B2D */  jal        func_race_80102CB4
/* D683C 8012047C 24050002 */   addiu     $a1, $zero, 0x2
/* D6840 80120480 02002021 */  addu       $a0, $s0, $zero
/* D6844 80120484 0C047E8A */  jal        func_race_8011FA28
/* D6848 80120488 02202821 */   addu      $a1, $s1, $zero
/* D684C 8012048C 8FBF0018 */  lw         $ra, 0x18($sp)
/* D6850 80120490 8FB10014 */  lw         $s1, 0x14($sp)
/* D6854 80120494 8FB00010 */  lw         $s0, 0x10($sp)
/* D6858 80120498 03E00008 */  jr         $ra
/* D685C 8012049C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801204A0
/* D6860 801204A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D6864 801204A4 AFB00010 */  sw         $s0, 0x10($sp)
/* D6868 801204A8 00808021 */  addu       $s0, $a0, $zero
/* D686C 801204AC AFB10014 */  sw         $s1, 0x14($sp)
/* D6870 801204B0 00A08821 */  addu       $s1, $a1, $zero
/* D6874 801204B4 AFBF001C */  sw         $ra, 0x1C($sp)
/* D6878 801204B8 AFB20018 */  sw         $s2, 0x18($sp)
/* D687C 801204BC 8E020004 */  lw         $v0, 0x4($s0)
/* D6880 801204C0 10400003 */  beqz       $v0, .Lrace_801204D0
/* D6884 801204C4 00C09021 */   addu      $s2, $a2, $zero
/* D6888 801204C8 0C048146 */  jal        func_race_80120518
/* D688C 801204CC 00000000 */   nop
.Lrace_801204D0:
/* D6890 801204D0 AE11001C */  sw         $s1, 0x1C($s0)
/* D6894 801204D4 02201021 */  addu       $v0, $s1, $zero
/* D6898 801204D8 AE120020 */  sw         $s2, 0x20($s0)
/* D689C 801204DC 8C430000 */  lw         $v1, 0x0($v0)
/* D68A0 801204E0 8C620000 */  lw         $v0, 0x0($v1)
/* D68A4 801204E4 84440068 */  lh         $a0, 0x68($v0)
/* D68A8 801204E8 8C42006C */  lw         $v0, 0x6C($v0)
/* D68AC 801204EC 0040F809 */  jalr       $v0
/* D68B0 801204F0 00642021 */   addu      $a0, $v1, $a0
/* D68B4 801204F4 AE0200D8 */  sw         $v0, 0xD8($s0)
/* D68B8 801204F8 24020001 */  addiu      $v0, $zero, 0x1
/* D68BC 801204FC AE020004 */  sw         $v0, 0x4($s0)
/* D68C0 80120500 8FBF001C */  lw         $ra, 0x1C($sp)
/* D68C4 80120504 8FB20018 */  lw         $s2, 0x18($sp)
/* D68C8 80120508 8FB10014 */  lw         $s1, 0x14($sp)
/* D68CC 8012050C 8FB00010 */  lw         $s0, 0x10($sp)
/* D68D0 80120510 03E00008 */  jr         $ra
/* D68D4 80120514 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80120518
/* D68D8 80120518 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D68DC 8012051C AFB00010 */  sw         $s0, 0x10($sp)
/* D68E0 80120520 00808021 */  addu       $s0, $a0, $zero
/* D68E4 80120524 AFBF0014 */  sw         $ra, 0x14($sp)
/* D68E8 80120528 8E020000 */  lw         $v0, 0x0($s0)
/* D68EC 8012052C 84440040 */  lh         $a0, 0x40($v0)
/* D68F0 80120530 8C420044 */  lw         $v0, 0x44($v0)
/* D68F4 80120534 0040F809 */  jalr       $v0
/* D68F8 80120538 02042021 */   addu      $a0, $s0, $a0
/* D68FC 8012053C 8E02001C */  lw         $v0, 0x1C($s0)
/* D6900 80120540 5040000E */  beql       $v0, $zero, .Lrace_8012057C
/* D6904 80120544 AE000004 */   sw        $zero, 0x4($s0)
/* D6908 80120548 8E0500D8 */  lw         $a1, 0xD8($s0)
/* D690C 8012054C 50A0000B */  beql       $a1, $zero, .Lrace_8012057C
/* D6910 80120550 AE000004 */   sw        $zero, 0x4($s0)
/* D6914 80120554 8C420000 */  lw         $v0, 0x0($v0)
/* D6918 80120558 8C430000 */  lw         $v1, 0x0($v0)
/* D691C 8012055C 846400D0 */  lh         $a0, 0xD0($v1)
/* D6920 80120560 00442021 */  addu       $a0, $v0, $a0
/* D6924 80120564 8C6200D4 */  lw         $v0, 0xD4($v1)
/* D6928 80120568 0040F809 */  jalr       $v0
/* D692C 8012056C 00000000 */   nop
/* D6930 80120570 AE0000D8 */  sw         $zero, 0xD8($s0)
/* D6934 80120574 AE00001C */  sw         $zero, 0x1C($s0)
/* D6938 80120578 AE000004 */  sw         $zero, 0x4($s0)
.Lrace_8012057C:
/* D693C 8012057C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D6940 80120580 8FB00010 */  lw         $s0, 0x10($sp)
/* D6944 80120584 03E00008 */  jr         $ra
/* D6948 80120588 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012058C
/* D694C 8012058C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D6950 80120590 AFB00018 */  sw         $s0, 0x18($sp)
/* D6954 80120594 00808021 */  addu       $s0, $a0, $zero
/* D6958 80120598 24020002 */  addiu      $v0, $zero, 0x2
/* D695C 8012059C AFBF001C */  sw         $ra, 0x1C($sp)
/* D6960 801205A0 AE020004 */  sw         $v0, 0x4($s0)
/* D6964 801205A4 8CA20000 */  lw         $v0, 0x0($a1)
/* D6968 801205A8 AE020024 */  sw         $v0, 0x24($s0)
/* D696C 801205AC 8CA20004 */  lw         $v0, 0x4($a1)
/* D6970 801205B0 AE020028 */  sw         $v0, 0x28($s0)
/* D6974 801205B4 8CA20008 */  lw         $v0, 0x8($a1)
/* D6978 801205B8 AE02002C */  sw         $v0, 0x2C($s0)
/* D697C 801205BC 8CA20010 */  lw         $v0, 0x10($a1)
/* D6980 801205C0 AE020008 */  sw         $v0, 0x8($s0)
/* D6984 801205C4 8CA2000C */  lw         $v0, 0xC($a1)
/* D6988 801205C8 10400003 */  beqz       $v0, .Lrace_801205D8
/* D698C 801205CC 00000000 */   nop
/* D6990 801205D0 8C420018 */  lw         $v0, 0x18($v0)
/* D6994 801205D4 AE0200E0 */  sw         $v0, 0xE0($s0)
.Lrace_801205D8:
/* D6998 801205D8 8E02001C */  lw         $v0, 0x1C($s0)
/* D699C 801205DC 8E0500E0 */  lw         $a1, 0xE0($s0)
/* D69A0 801205E0 8C440004 */  lw         $a0, 0x4($v0)
/* D69A4 801205E4 50A00005 */  beql       $a1, $zero, .Lrace_801205FC
/* D69A8 801205E8 3C05800D */   lui       $a1, %hi(D_race_800CE550)
/* D69AC 801205EC 90A20000 */  lbu        $v0, 0x0($a1)
/* D69B0 801205F0 14400003 */  bnez       $v0, .Lrace_80120600
/* D69B4 801205F4 00000000 */   nop
/* D69B8 801205F8 3C05800D */  lui        $a1, %hi(D_race_800CE550)
.Lrace_801205FC:
/* D69BC 801205FC 24A5E550 */  addiu      $a1, $a1, %lo(D_race_800CE550)
.Lrace_80120600:
/* D69C0 80120600 0C016F2D */  jal        func_8005BCB4
/* D69C4 80120604 00000000 */   nop
/* D69C8 80120608 00402821 */  addu       $a1, $v0, $zero
/* D69CC 8012060C 8E0400D8 */  lw         $a0, 0xD8($s0)
/* D69D0 80120610 8C820024 */  lw         $v0, 0x24($a0)
/* D69D4 80120614 3C01800D */  lui        $at, %hi(D_race_800CE558)
/* D69D8 80120618 C420E558 */  lwc1       $f0, %lo(D_race_800CE558)($at)
/* D69DC 8012061C 844300A0 */  lh         $v1, 0xA0($v0)
/* D69E0 80120620 E7A00010 */  swc1       $f0, 0x10($sp)
/* D69E4 80120624 3C01800D */  lui        $at, %hi(D_race_800CE55C)
/* D69E8 80120628 C420E55C */  lwc1       $f0, %lo(D_race_800CE55C)($at)
/* D69EC 8012062C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* D69F0 80120630 44060000 */  mfc1       $a2, $f0
/* D69F4 80120634 00832021 */  addu       $a0, $a0, $v1
/* D69F8 80120638 0040F809 */  jalr       $v0
/* D69FC 8012063C 00C03821 */   addu      $a3, $a2, $zero
/* D6A00 80120640 8FBF001C */  lw         $ra, 0x1C($sp)
/* D6A04 80120644 8FB00018 */  lw         $s0, 0x18($sp)
/* D6A08 80120648 03E00008 */  jr         $ra
/* D6A0C 8012064C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80120650
/* D6A10 80120650 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D6A14 80120654 AFB00010 */  sw         $s0, 0x10($sp)
/* D6A18 80120658 00808021 */  addu       $s0, $a0, $zero
/* D6A1C 8012065C AFBF0014 */  sw         $ra, 0x14($sp)
/* D6A20 80120660 0C040E4A */  jal        func_race_80103928
/* D6A24 80120664 26040030 */   addiu     $a0, $s0, 0x30
/* D6A28 80120668 8E0500DC */  lw         $a1, 0xDC($s0)
/* D6A2C 8012066C 10A00006 */  beqz       $a1, .Lrace_80120688
/* D6A30 80120670 00000000 */   nop
/* D6A34 80120674 8E02001C */  lw         $v0, 0x1C($s0)
/* D6A38 80120678 8C440040 */  lw         $a0, 0x40($v0)
/* D6A3C 8012067C 0C01087B */  jal        func_800421EC
/* D6A40 80120680 00000000 */   nop
/* D6A44 80120684 AE0000DC */  sw         $zero, 0xDC($s0)
.Lrace_80120688:
/* D6A48 80120688 8E0300D8 */  lw         $v1, 0xD8($s0)
/* D6A4C 8012068C 10600006 */  beqz       $v1, .Lrace_801206A8
/* D6A50 80120690 00000000 */   nop
/* D6A54 80120694 8C620024 */  lw         $v0, 0x24($v1)
/* D6A58 80120698 844400A8 */  lh         $a0, 0xA8($v0)
/* D6A5C 8012069C 8C4200AC */  lw         $v0, 0xAC($v0)
/* D6A60 801206A0 0040F809 */  jalr       $v0
/* D6A64 801206A4 00642021 */   addu      $a0, $v1, $a0
.Lrace_801206A8:
/* D6A68 801206A8 8E04001C */  lw         $a0, 0x1C($s0)
/* D6A6C 801206AC 24020001 */  addiu      $v0, $zero, 0x1
/* D6A70 801206B0 AE000024 */  sw         $zero, 0x24($s0)
/* D6A74 801206B4 AE000028 */  sw         $zero, 0x28($s0)
/* D6A78 801206B8 AE00002C */  sw         $zero, 0x2C($s0)
/* D6A7C 801206BC AE0000E0 */  sw         $zero, 0xE0($s0)
/* D6A80 801206C0 10800008 */  beqz       $a0, .Lrace_801206E4
/* D6A84 801206C4 AE020004 */   sw        $v0, 0x4($s0)
/* D6A88 801206C8 8E0500E4 */  lw         $a1, 0xE4($s0)
/* D6A8C 801206CC 8C840044 */  lw         $a0, 0x44($a0)
/* D6A90 801206D0 10A00004 */  beqz       $a1, .Lrace_801206E4
/* D6A94 801206D4 00000000 */   nop
/* D6A98 801206D8 0C034F7B */  jal        func_race_800D3DEC
/* D6A9C 801206DC 00000000 */   nop
/* D6AA0 801206E0 AE0000E4 */  sw         $zero, 0xE4($s0)
.Lrace_801206E4:
/* D6AA4 801206E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* D6AA8 801206E8 8FB00010 */  lw         $s0, 0x10($sp)
/* D6AAC 801206EC 03E00008 */  jr         $ra
/* D6AB0 801206F0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801206F4
/* D6AB4 801206F4 27BDFF10 */  addiu      $sp, $sp, -0xF0
/* D6AB8 801206F8 AFB100DC */  sw         $s1, 0xDC($sp)
/* D6ABC 801206FC 00808821 */  addu       $s1, $a0, $zero
/* D6AC0 80120700 AFBF00EC */  sw         $ra, 0xEC($sp)
/* D6AC4 80120704 AFB400E8 */  sw         $s4, 0xE8($sp)
/* D6AC8 80120708 AFB300E4 */  sw         $s3, 0xE4($sp)
/* D6ACC 8012070C AFB200E0 */  sw         $s2, 0xE0($sp)
/* D6AD0 80120710 AFB000D8 */  sw         $s0, 0xD8($sp)
/* D6AD4 80120714 8E230008 */  lw         $v1, 0x8($s1)
/* D6AD8 80120718 00A0A021 */  addu       $s4, $a1, $zero
/* D6ADC 8012071C 0283102B */  sltu       $v0, $s4, $v1
/* D6AE0 80120720 1440000A */  bnez       $v0, .Lrace_8012074C
/* D6AE4 80120724 00741023 */   subu      $v0, $v1, $s4
/* D6AE8 80120728 8E220000 */  lw         $v0, 0x0($s1)
/* D6AEC 8012072C 0283A023 */  subu       $s4, $s4, $v1
/* D6AF0 80120730 AE200008 */  sw         $zero, 0x8($s1)
/* D6AF4 80120734 84440030 */  lh         $a0, 0x30($v0)
/* D6AF8 80120738 8C420034 */  lw         $v0, 0x34($v0)
/* D6AFC 8012073C 0040F809 */  jalr       $v0
/* D6B00 80120740 02242021 */   addu      $a0, $s1, $a0
/* D6B04 80120744 080481D4 */  j          .Lrace_80120750
/* D6B08 80120748 00000000 */   nop
.Lrace_8012074C:
/* D6B0C 8012074C AE220008 */  sw         $v0, 0x8($s1)
.Lrace_80120750:
/* D6B10 80120750 8E230004 */  lw         $v1, 0x4($s1)
/* D6B14 80120754 24020003 */  addiu      $v0, $zero, 0x3
/* D6B18 80120758 14620063 */  bne        $v1, $v0, .Lrace_801208E8
/* D6B1C 8012075C 26300030 */   addiu     $s0, $s1, 0x30
/* D6B20 80120760 02002021 */  addu       $a0, $s0, $zero
/* D6B24 80120764 0C040E56 */  jal        func_race_80103958
/* D6B28 80120768 02802821 */   addu      $a1, $s4, $zero
/* D6B2C 8012076C 00409021 */  addu       $s2, $v0, $zero
/* D6B30 80120770 24020001 */  addiu      $v0, $zero, 0x1
/* D6B34 80120774 1242005C */  beq        $s2, $v0, .Lrace_801208E8
/* D6B38 80120778 24020002 */   addiu     $v0, $zero, 0x2
/* D6B3C 8012077C 8E280058 */  lw         $t0, 0x58($s1)
/* D6B40 80120780 8E29005C */  lw         $t1, 0x5C($s1)
/* D6B44 80120784 8E2A0060 */  lw         $t2, 0x60($s1)
/* D6B48 80120788 AFA80060 */  sw         $t0, 0x60($sp)
/* D6B4C 8012078C AFA90064 */  sw         $t1, 0x64($sp)
/* D6B50 80120790 AFAA0068 */  sw         $t2, 0x68($sp)
/* D6B54 80120794 16420013 */  bne        $s2, $v0, .Lrace_801207E4
/* D6B58 80120798 00009821 */   addu      $s3, $zero, $zero
/* D6B5C 8012079C 8E0500A4 */  lw         $a1, 0xA4($s0)
/* D6B60 801207A0 8CA20D04 */  lw         $v0, 0xD04($a1)
/* D6B64 801207A4 30420001 */  andi       $v0, $v0, 0x1
/* D6B68 801207A8 10400004 */  beqz       $v0, .Lrace_801207BC
/* D6B6C 801207AC 02601821 */   addu      $v1, $s3, $zero
/* D6B70 801207B0 8CA20D64 */  lw         $v0, 0xD64($a1)
/* D6B74 801207B4 2C420002 */  sltiu      $v0, $v0, 0x2
/* D6B78 801207B8 38430001 */  xori       $v1, $v0, 0x1
.Lrace_801207BC:
/* D6B7C 801207BC 54600001 */  bnel       $v1, $zero, .Lrace_801207C4
/* D6B80 801207C0 24130001 */   addiu     $s3, $zero, 0x1
.Lrace_801207C4:
/* D6B84 801207C4 8E220000 */  lw         $v0, 0x0($s1)
/* D6B88 801207C8 84440048 */  lh         $a0, 0x48($v0)
/* D6B8C 801207CC 8C42004C */  lw         $v0, 0x4C($v0)
/* D6B90 801207D0 0040F809 */  jalr       $v0
/* D6B94 801207D4 02242021 */   addu      $a0, $s1, $a0
/* D6B98 801207D8 24020BB8 */  addiu      $v0, $zero, 0xBB8
/* D6B9C 801207DC 08048205 */  j          .Lrace_80120814
/* D6BA0 801207E0 AE220008 */   sw        $v0, 0x8($s1)
.Lrace_801207E4:
/* D6BA4 801207E4 3C074348 */  lui        $a3, (0x43480000 >> 16)
/* D6BA8 801207E8 3C01800D */  lui        $at, %hi(D_race_800CE560)
/* D6BAC 801207EC C422E560 */  lwc1       $f2, %lo(D_race_800CE560)($at)
/* D6BB0 801207F0 3C01800D */  lui        $at, %hi(D_race_800CE564)
/* D6BB4 801207F4 C420E564 */  lwc1       $f0, %lo(D_race_800CE564)($at)
/* D6BB8 801207F8 24050005 */  addiu      $a1, $zero, 0x5
/* D6BBC 801207FC E7A20010 */  swc1       $f2, 0x10($sp)
/* D6BC0 80120800 E7A00014 */  swc1       $f0, 0x14($sp)
/* D6BC4 80120804 E7A00018 */  swc1       $f0, 0x18($sp)
/* D6BC8 80120808 8E240010 */  lw         $a0, 0x10($s1)
/* D6BCC 8012080C 0C046530 */  jal        func_race_801194C0
/* D6BD0 80120810 27A60060 */   addiu     $a2, $sp, 0x60
.Lrace_80120814:
/* D6BD4 80120814 16600034 */  bnez       $s3, .Lrace_801208E8
/* D6BD8 80120818 24020003 */   addiu     $v0, $zero, 0x3
/* D6BDC 8012081C 8E28008C */  lw         $t0, 0x8C($s1)
/* D6BE0 80120820 8E290090 */  lw         $t1, 0x90($s1)
/* D6BE4 80120824 8E2A0094 */  lw         $t2, 0x94($s1)
/* D6BE8 80120828 AFA80030 */  sw         $t0, 0x30($sp)
/* D6BEC 8012082C AFA90034 */  sw         $t1, 0x34($sp)
/* D6BF0 80120830 AFAA0038 */  sw         $t2, 0x38($sp)
/* D6BF4 80120834 16420008 */  bne        $s2, $v0, .Lrace_80120858
/* D6BF8 80120838 00003021 */   addu      $a2, $zero, $zero
/* D6BFC 8012083C C7A20038 */  lwc1       $f2, 0x38($sp)
/* D6C00 80120840 3C01800D */  lui        $at, %hi(D_race_800CE568)
/* D6C04 80120844 C420E568 */  lwc1       $f0, %lo(D_race_800CE568)($at)
/* D6C08 80120848 4602003C */  c.lt.s     $f0, $f2
/* D6C0C 8012084C 00000000 */  nop
/* D6C10 80120850 45030001 */  bc1tl      .Lrace_80120858
/* D6C14 80120854 24060001 */   addiu     $a2, $zero, 0x1
.Lrace_80120858:
/* D6C18 80120858 27B30060 */  addiu      $s3, $sp, 0x60
/* D6C1C 8012085C 8E24001C */  lw         $a0, 0x1C($s1)
/* D6C20 80120860 8E270024 */  lw         $a3, 0x24($s1)
/* D6C24 80120864 0C04B2F1 */  jal        func_race_8012CBC4
/* D6C28 80120868 02602821 */   addu      $a1, $s3, $zero
/* D6C2C 8012086C 24020002 */  addiu      $v0, $zero, 0x2
/* D6C30 80120870 16420018 */  bne        $s2, $v0, .Lrace_801208D4
/* D6C34 80120874 26300030 */   addiu     $s0, $s1, 0x30
/* D6C38 80120878 8E0200A4 */  lw         $v0, 0xA4($s0)
/* D6C3C 8012087C 8C420D04 */  lw         $v0, 0xD04($v0)
/* D6C40 80120880 30420001 */  andi       $v0, $v0, 0x1
/* D6C44 80120884 14400013 */  bnez       $v0, .Lrace_801208D4
/* D6C48 80120888 00000000 */   nop
/* D6C4C 8012088C 02002021 */  addu       $a0, $s0, $zero
/* D6C50 80120890 0C040ED8 */  jal        func_race_80103B60
/* D6C54 80120894 27A50020 */   addiu     $a1, $sp, 0x20
/* D6C58 80120898 27A40020 */  addiu      $a0, $sp, 0x20
/* D6C5C 8012089C C7A00020 */  lwc1       $f0, 0x20($sp)
/* D6C60 801208A0 C7A20024 */  lwc1       $f2, 0x24($sp)
/* D6C64 801208A4 00802821 */  addu       $a1, $a0, $zero
/* D6C68 801208A8 AFA00028 */  sw         $zero, 0x28($sp)
/* D6C6C 801208AC 46000007 */  neg.s      $f0, $f0
/* D6C70 801208B0 46001087 */  neg.s      $f2, $f2
/* D6C74 801208B4 E7A00020 */  swc1       $f0, 0x20($sp)
/* D6C78 801208B8 0C000F26 */  jal        func_80003C98
/* D6C7C 801208BC E7A20024 */   swc1      $f2, 0x24($sp)
/* D6C80 801208C0 02602821 */  addu       $a1, $s3, $zero
/* D6C84 801208C4 8E24001C */  lw         $a0, 0x1C($s1)
/* D6C88 801208C8 8E0700A4 */  lw         $a3, 0xA4($s0)
/* D6C8C 801208CC 0C04B33A */  jal        func_race_8012CCE8
/* D6C90 801208D0 27A60020 */   addiu     $a2, $sp, 0x20
.Lrace_801208D4:
/* D6C94 801208D4 8E220000 */  lw         $v0, 0x0($s1)
/* D6C98 801208D8 84440030 */  lh         $a0, 0x30($v0)
/* D6C9C 801208DC 8C420034 */  lw         $v0, 0x34($v0)
/* D6CA0 801208E0 0040F809 */  jalr       $v0
/* D6CA4 801208E4 02242021 */   addu      $a0, $s1, $a0
.Lrace_801208E8:
/* D6CA8 801208E8 8E2200DC */  lw         $v0, 0xDC($s1)
/* D6CAC 801208EC 1040003E */  beqz       $v0, .Lrace_801209E8
/* D6CB0 801208F0 00000000 */   nop
/* D6CB4 801208F4 8C420000 */  lw         $v0, 0x0($v0)
/* D6CB8 801208F8 50400004 */  beql       $v0, $zero, .Lrace_8012090C
/* D6CBC 801208FC 2402FFFF */   addiu     $v0, $zero, -0x1
/* D6CC0 80120900 8C4200F0 */  lw         $v0, 0xF0($v0)
/* D6CC4 80120904 08048244 */  j          .Lrace_80120910
/* D6CC8 80120908 2C420003 */   sltiu     $v0, $v0, 0x3
.Lrace_8012090C:
/* D6CCC 8012090C 2C420003 */  sltiu      $v0, $v0, 0x3
.Lrace_80120910:
/* D6CD0 80120910 14400008 */  bnez       $v0, .Lrace_80120934
/* D6CD4 80120914 00000000 */   nop
/* D6CD8 80120918 8E22001C */  lw         $v0, 0x1C($s1)
/* D6CDC 8012091C 8E2500DC */  lw         $a1, 0xDC($s1)
/* D6CE0 80120920 8C440040 */  lw         $a0, 0x40($v0)
/* D6CE4 80120924 0C01088C */  jal        func_80042230
/* D6CE8 80120928 00000000 */   nop
/* D6CEC 8012092C 0804827A */  j          .Lrace_801209E8
/* D6CF0 80120930 AE2000DC */   sw        $zero, 0xDC($s1)
.Lrace_80120934:
/* D6CF4 80120934 8E220024 */  lw         $v0, 0x24($s1)
/* D6CF8 80120938 1040002B */  beqz       $v0, .Lrace_801209E8
/* D6CFC 8012093C 27B00050 */   addiu     $s0, $sp, 0x50
/* D6D00 80120940 8C430538 */  lw         $v1, 0x538($v0)
/* D6D04 80120944 8C620024 */  lw         $v0, 0x24($v1)
/* D6D08 80120948 02002821 */  addu       $a1, $s0, $zero
/* D6D0C 8012094C 84440010 */  lh         $a0, 0x10($v0)
/* D6D10 80120950 8C420014 */  lw         $v0, 0x14($v0)
/* D6D14 80120954 0040F809 */  jalr       $v0
/* D6D18 80120958 00642021 */   addu      $a0, $v1, $a0
/* D6D1C 8012095C 8E220024 */  lw         $v0, 0x24($s1)
/* D6D20 80120960 3C01800D */  lui        $at, %hi(D_race_800CE56C)
/* D6D24 80120964 C422E56C */  lwc1       $f2, %lo(D_race_800CE56C)($at)
/* D6D28 80120968 8C480400 */  lw         $t0, 0x400($v0)
/* D6D2C 8012096C 8C490404 */  lw         $t1, 0x404($v0)
/* D6D30 80120970 8C4A0408 */  lw         $t2, 0x408($v0)
/* D6D34 80120974 AFA80040 */  sw         $t0, 0x40($sp)
/* D6D38 80120978 AFA90044 */  sw         $t1, 0x44($sp)
/* D6D3C 8012097C AFAA0048 */  sw         $t2, 0x48($sp)
/* D6D40 80120980 C7A00058 */  lwc1       $f0, 0x58($sp)
/* D6D44 80120984 46020000 */  add.s      $f0, $f0, $f2
/* D6D48 80120988 E7A00058 */  swc1       $f0, 0x58($sp)
/* D6D4C 8012098C 8E2200DC */  lw         $v0, 0xDC($s1)
/* D6D50 80120990 8E230024 */  lw         $v1, 0x24($s1)
/* D6D54 80120994 8C450000 */  lw         $a1, 0x0($v0)
/* D6D58 80120998 8C630538 */  lw         $v1, 0x538($v1)
/* D6D5C 8012099C 10A00007 */  beqz       $a1, .Lrace_801209BC
/* D6D60 801209A0 24A50168 */   addiu     $a1, $a1, 0x168
/* D6D64 801209A4 8C620024 */  lw         $v0, 0x24($v1)
/* D6D68 801209A8 84440090 */  lh         $a0, 0x90($v0)
/* D6D6C 801209AC 8C420094 */  lw         $v0, 0x94($v0)
/* D6D70 801209B0 0040F809 */  jalr       $v0
/* D6D74 801209B4 00642021 */   addu      $a0, $v1, $a0
/* D6D78 801209B8 8E2200DC */  lw         $v0, 0xDC($s1)
.Lrace_801209BC:
/* D6D7C 801209BC 8C440000 */  lw         $a0, 0x0($v0)
/* D6D80 801209C0 10800005 */  beqz       $a0, .Lrace_801209D8
/* D6D84 801209C4 00000000 */   nop
/* D6D88 801209C8 0C01058D */  jal        func_80041634
/* D6D8C 801209CC 02002821 */   addu      $a1, $s0, $zero
/* D6D90 801209D0 8E2200DC */  lw         $v0, 0xDC($s1)
/* D6D94 801209D4 8C440000 */  lw         $a0, 0x0($v0)
.Lrace_801209D8:
/* D6D98 801209D8 10800003 */  beqz       $a0, .Lrace_801209E8
/* D6D9C 801209DC 00000000 */   nop
/* D6DA0 801209E0 0C01059B */  jal        func_8004166C
/* D6DA4 801209E4 27A50040 */   addiu     $a1, $sp, 0x40
.Lrace_801209E8:
/* D6DA8 801209E8 8E230004 */  lw         $v1, 0x4($s1)
/* D6DAC 801209EC 24020003 */  addiu      $v0, $zero, 0x3
/* D6DB0 801209F0 1462004C */  bne        $v1, $v0, .Lrace_80120B24
/* D6DB4 801209F4 26300030 */   addiu     $s0, $s1, 0x30
/* D6DB8 801209F8 8E040008 */  lw         $a0, 0x8($s0)
/* D6DBC 801209FC 0C0165A4 */  jal        func_80059690
/* D6DC0 80120A00 27A50070 */   addiu     $a1, $sp, 0x70
/* D6DC4 80120A04 8E2200E4 */  lw         $v0, 0xE4($s1)
/* D6DC8 80120A08 10400046 */  beqz       $v0, .Lrace_80120B24
/* D6DCC 80120A0C 02002021 */   addu      $a0, $s0, $zero
/* D6DD0 80120A10 0C040ED8 */  jal        func_race_80103B60
/* D6DD4 80120A14 27A500B0 */   addiu     $a1, $sp, 0xB0
/* D6DD8 80120A18 C7A000B4 */  lwc1       $f0, 0xB4($sp)
/* D6DDC 80120A1C 44802000 */  mtc1       $zero, $f4
/* D6DE0 80120A20 C7A200B0 */  lwc1       $f2, 0xB0($sp)
/* D6DE4 80120A24 46040032 */  c.eq.s     $f0, $f4
/* D6DE8 80120A28 46001087 */  neg.s      $f2, $f2
/* D6DEC 80120A2C E7A000C0 */  swc1       $f0, 0xC0($sp)
/* D6DF0 80120A30 45000005 */  bc1f       .Lrace_80120A48
/* D6DF4 80120A34 E7A200C4 */   swc1      $f2, 0xC4($sp)
/* D6DF8 80120A38 46041032 */  c.eq.s     $f2, $f4
/* D6DFC 80120A3C 00000000 */  nop
/* D6E00 80120A40 45010038 */  bc1t       .Lrace_80120B24
/* D6E04 80120A44 00000000 */   nop
.Lrace_80120A48:
/* D6E08 80120A48 27A400C0 */  addiu      $a0, $sp, 0xC0
/* D6E0C 80120A4C 0C000EFC */  jal        func_80003BF0
/* D6E10 80120A50 00802821 */   addu      $a1, $a0, $zero
/* D6E14 80120A54 3C01800D */  lui        $at, %hi(D_race_800CE570)
/* D6E18 80120A58 C42AE570 */  lwc1       $f10, %lo(D_race_800CE570)($at)
/* D6E1C 80120A5C C7A600C0 */  lwc1       $f6, 0xC0($sp)
/* D6E20 80120A60 460A3182 */  mul.s      $f6, $f6, $f10
/* D6E24 80120A64 C7A400C4 */  lwc1       $f4, 0xC4($sp)
/* D6E28 80120A68 460A2102 */  mul.s      $f4, $f4, $f10
/* D6E2C 80120A6C 3C01800D */  lui        $at, %hi(D_race_800CE574)
/* D6E30 80120A70 C42CE574 */  lwc1       $f12, %lo(D_race_800CE574)($at)
/* D6E34 80120A74 460C3382 */  mul.s      $f14, $f6, $f12
/* D6E38 80120A78 00000000 */  nop
/* D6E3C 80120A7C 460C2302 */  mul.s      $f12, $f4, $f12
/* D6E40 80120A80 C7A00078 */  lwc1       $f0, 0x78($sp)
/* D6E44 80120A84 3C01800D */  lui        $at, %hi(D_race_800CE578)
/* D6E48 80120A88 C422E578 */  lwc1       $f2, %lo(D_race_800CE578)($at)
/* D6E4C 80120A8C 46020000 */  add.s      $f0, $f0, $f2
/* D6E50 80120A90 E7A00088 */  swc1       $f0, 0x88($sp)
/* D6E54 80120A94 460A0001 */  sub.s      $f0, $f0, $f10
/* D6E58 80120A98 460A0280 */  add.s      $f10, $f0, $f10
/* D6E5C 80120A9C C7A80070 */  lwc1       $f8, 0x70($sp)
/* D6E60 80120AA0 C7A20074 */  lwc1       $f2, 0x74($sp)
/* D6E64 80120AA4 460E4201 */  sub.s      $f8, $f8, $f14
/* D6E68 80120AA8 02802821 */  addu       $a1, $s4, $zero
/* D6E6C 80120AAC E7A600C0 */  swc1       $f6, 0xC0($sp)
/* D6E70 80120AB0 460C1081 */  sub.s      $f2, $f2, $f12
/* D6E74 80120AB4 E7A400C4 */  swc1       $f4, 0xC4($sp)
/* D6E78 80120AB8 E7A00094 */  swc1       $f0, 0x94($sp)
/* D6E7C 80120ABC 46064180 */  add.s      $f6, $f8, $f6
/* D6E80 80120AC0 E7A000A0 */  swc1       $f0, 0xA0($sp)
/* D6E84 80120AC4 E7AA00AC */  swc1       $f10, 0xAC($sp)
/* D6E88 80120AC8 46041100 */  add.s      $f4, $f2, $f4
/* D6E8C 80120ACC E7A80080 */  swc1       $f8, 0x80($sp)
/* D6E90 80120AD0 E7A20084 */  swc1       $f2, 0x84($sp)
/* D6E94 80120AD4 E7A8008C */  swc1       $f8, 0x8C($sp)
/* D6E98 80120AD8 E7A20090 */  swc1       $f2, 0x90($sp)
/* D6E9C 80120ADC E7A60098 */  swc1       $f6, 0x98($sp)
/* D6EA0 80120AE0 E7A4009C */  swc1       $f4, 0x9C($sp)
/* D6EA4 80120AE4 E7A600A4 */  swc1       $f6, 0xA4($sp)
/* D6EA8 80120AE8 E7A400A8 */  swc1       $f4, 0xA8($sp)
/* D6EAC 80120AEC 8FA80070 */  lw         $t0, 0x70($sp)
/* D6EB0 80120AF0 8FA90074 */  lw         $t1, 0x74($sp)
/* D6EB4 80120AF4 8FAA0078 */  lw         $t2, 0x78($sp)
/* D6EB8 80120AF8 AFA800C8 */  sw         $t0, 0xC8($sp)
/* D6EBC 80120AFC AFA900CC */  sw         $t1, 0xCC($sp)
/* D6EC0 80120B00 AFAA00D0 */  sw         $t2, 0xD0($sp)
/* D6EC4 80120B04 8FA800CC */  lw         $t0, 0xCC($sp)
/* D6EC8 80120B08 8FA900D0 */  lw         $t1, 0xD0($sp)
/* D6ECC 80120B0C AFA80010 */  sw         $t0, 0x10($sp)
/* D6ED0 80120B10 AFA90014 */  sw         $t1, 0x14($sp)
/* D6ED4 80120B14 8FA700C8 */  lw         $a3, 0xC8($sp)
/* D6ED8 80120B18 8E2400E4 */  lw         $a0, 0xE4($s1)
/* D6EDC 80120B1C 0C034BAF */  jal        func_race_800D2EBC
/* D6EE0 80120B20 27A60080 */   addiu     $a2, $sp, 0x80
.Lrace_80120B24:
/* D6EE4 80120B24 8FBF00EC */  lw         $ra, 0xEC($sp)
/* D6EE8 80120B28 8FB400E8 */  lw         $s4, 0xE8($sp)
/* D6EEC 80120B2C 8FB300E4 */  lw         $s3, 0xE4($sp)
/* D6EF0 80120B30 8FB200E0 */  lw         $s2, 0xE0($sp)
/* D6EF4 80120B34 8FB100DC */  lw         $s1, 0xDC($sp)
/* D6EF8 80120B38 8FB000D8 */  lw         $s0, 0xD8($sp)
/* D6EFC 80120B3C 03E00008 */  jr         $ra
/* D6F00 80120B40 27BD00F0 */   addiu     $sp, $sp, 0xF0

glabel func_race_80120B44
/* D6F04 80120B44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D6F08 80120B48 00803021 */  addu       $a2, $a0, $zero
/* D6F0C 80120B4C AFBF0010 */  sw         $ra, 0x10($sp)
/* D6F10 80120B50 8CC30004 */  lw         $v1, 0x4($a2)
/* D6F14 80120B54 24020003 */  addiu      $v0, $zero, 0x3
/* D6F18 80120B58 14620007 */  bne        $v1, $v0, .Lrace_80120B78
/* D6F1C 80120B5C 00A03821 */   addu      $a3, $a1, $zero
/* D6F20 80120B60 8CE2012C */  lw         $v0, 0x12C($a3)
/* D6F24 80120B64 8CC500D8 */  lw         $a1, 0xD8($a2)
/* D6F28 80120B68 84440168 */  lh         $a0, 0x168($v0)
/* D6F2C 80120B6C 8C42016C */  lw         $v0, 0x16C($v0)
/* D6F30 80120B70 0040F809 */  jalr       $v0
/* D6F34 80120B74 00E42021 */   addu      $a0, $a3, $a0
.Lrace_80120B78:
/* D6F38 80120B78 8FBF0010 */  lw         $ra, 0x10($sp)
/* D6F3C 80120B7C 03E00008 */  jr         $ra
/* D6F40 80120B80 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80120B84
/* D6F44 80120B84 27BDFF30 */  addiu      $sp, $sp, -0xD0
/* D6F48 80120B88 AFB000C8 */  sw         $s0, 0xC8($sp)
/* D6F4C 80120B8C 00808021 */  addu       $s0, $a0, $zero
/* D6F50 80120B90 AFBF00CC */  sw         $ra, 0xCC($sp)
/* D6F54 80120B94 8E030004 */  lw         $v1, 0x4($s0)
/* D6F58 80120B98 24020002 */  addiu      $v0, $zero, 0x2
/* D6F5C 80120B9C 10620005 */  beq        $v1, $v0, .Lrace_80120BB4
/* D6F60 80120BA0 24020003 */   addiu     $v0, $zero, 0x3
/* D6F64 80120BA4 10620111 */  beq        $v1, $v0, .Lrace_80120FEC
/* D6F68 80120BA8 24020006 */   addiu     $v0, $zero, 0x6
/* D6F6C 80120BAC 08048408 */  j          .Lrace_80121020
/* D6F70 80120BB0 AE020004 */   sw        $v0, 0x4($s0)
.Lrace_80120BB4:
/* D6F74 80120BB4 8E0300E0 */  lw         $v1, 0xE0($s0)
/* D6F78 80120BB8 AE020004 */  sw         $v0, 0x4($s0)
/* D6F7C 80120BBC 24020BB8 */  addiu      $v0, $zero, 0xBB8
/* D6F80 80120BC0 14600012 */  bnez       $v1, .Lrace_80120C0C
/* D6F84 80120BC4 AE020008 */   sw        $v0, 0x8($s0)
/* D6F88 80120BC8 8E020024 */  lw         $v0, 0x24($s0)
/* D6F8C 80120BCC 8C43005C */  lw         $v1, 0x5C($v0)
/* D6F90 80120BD0 8C620024 */  lw         $v0, 0x24($v1)
/* D6F94 80120BD4 27A50030 */  addiu      $a1, $sp, 0x30
/* D6F98 80120BD8 84440010 */  lh         $a0, 0x10($v0)
/* D6F9C 80120BDC 8C420014 */  lw         $v0, 0x14($v0)
/* D6FA0 80120BE0 0040F809 */  jalr       $v0
/* D6FA4 80120BE4 00642021 */   addu      $a0, $v1, $a0
/* D6FA8 80120BE8 8E020024 */  lw         $v0, 0x24($s0)
/* D6FAC 80120BEC 8C42005C */  lw         $v0, 0x5C($v0)
/* D6FB0 80120BF0 C4400028 */  lwc1       $f0, 0x28($v0)
/* D6FB4 80120BF4 E7A00040 */  swc1       $f0, 0x40($sp)
/* D6FB8 80120BF8 C440002C */  lwc1       $f0, 0x2C($v0)
/* D6FBC 80120BFC E7A00044 */  swc1       $f0, 0x44($sp)
/* D6FC0 80120C00 C4400030 */  lwc1       $f0, 0x30($v0)
/* D6FC4 80120C04 0804830C */  j          .Lrace_80120C30
/* D6FC8 80120C08 E7A00048 */   swc1      $f0, 0x48($sp)
.Lrace_80120C0C:
/* D6FCC 80120C0C 8C680014 */  lw         $t0, 0x14($v1)
/* D6FD0 80120C10 8C690018 */  lw         $t1, 0x18($v1)
/* D6FD4 80120C14 8C6A001C */  lw         $t2, 0x1C($v1)
/* D6FD8 80120C18 AFA80030 */  sw         $t0, 0x30($sp)
/* D6FDC 80120C1C AFA90034 */  sw         $t1, 0x34($sp)
/* D6FE0 80120C20 AFAA0038 */  sw         $t2, 0x38($sp)
/* D6FE4 80120C24 AFA00040 */  sw         $zero, 0x40($sp)
/* D6FE8 80120C28 AFA00044 */  sw         $zero, 0x44($sp)
/* D6FEC 80120C2C AFA00048 */  sw         $zero, 0x48($sp)
.Lrace_80120C30:
/* D6FF0 80120C30 8E0200D8 */  lw         $v0, 0xD8($s0)
/* D6FF4 80120C34 3C01800D */  lui        $at, %hi(D_race_800CE584)
/* D6FF8 80120C38 C420E584 */  lwc1       $f0, %lo(D_race_800CE584)($at)
/* D6FFC 80120C3C 3C01800D */  lui        $at, %hi(D_race_800CE588)
/* D7000 80120C40 C42AE588 */  lwc1       $f10, %lo(D_race_800CE588)($at)
/* D7004 80120C44 AFA20080 */  sw         $v0, 0x80($sp)
/* D7008 80120C48 8E020020 */  lw         $v0, 0x20($s0)
/* D700C 80120C4C E7A00088 */  swc1       $f0, 0x88($sp)
/* D7010 80120C50 AFA20084 */  sw         $v0, 0x84($sp)
/* D7014 80120C54 8E02001C */  lw         $v0, 0x1C($s0)
/* D7018 80120C58 3C01800D */  lui        $at, %hi(D_race_800CE58C)
/* D701C 80120C5C C420E58C */  lwc1       $f0, %lo(D_race_800CE58C)($at)
/* D7020 80120C60 8C430074 */  lw         $v1, 0x74($v0)
/* D7024 80120C64 24020BB8 */  addiu      $v0, $zero, 0xBB8
/* D7028 80120C68 AFA00090 */  sw         $zero, 0x90($sp)
/* D702C 80120C6C AFA00094 */  sw         $zero, 0x94($sp)
/* D7030 80120C70 AFA00098 */  sw         $zero, 0x98($sp)
/* D7034 80120C74 E7A0009C */  swc1       $f0, 0x9C($sp)
/* D7038 80120C78 AFA200A0 */  sw         $v0, 0xA0($sp)
/* D703C 80120C7C E7AA00A4 */  swc1       $f10, 0xA4($sp)
/* D7040 80120C80 246300F0 */  addiu      $v1, $v1, 0xF0
/* D7044 80120C84 AFA3008C */  sw         $v1, 0x8C($sp)
/* D7048 80120C88 8E020028 */  lw         $v0, 0x28($s0)
/* D704C 80120C8C 1440004F */  bnez       $v0, .Lrace_80120DCC
/* D7050 80120C90 26040030 */   addiu     $a0, $s0, 0x30
/* D7054 80120C94 8E0200E0 */  lw         $v0, 0xE0($s0)
/* D7058 80120C98 1040001E */  beqz       $v0, .Lrace_80120D14
/* D705C 80120C9C 00000000 */   nop
/* D7060 80120CA0 8C480008 */  lw         $t0, 0x8($v0)
/* D7064 80120CA4 8C49000C */  lw         $t1, 0xC($v0)
/* D7068 80120CA8 8C4A0010 */  lw         $t2, 0x10($v0)
/* D706C 80120CAC AFA80020 */  sw         $t0, 0x20($sp)
/* D7070 80120CB0 AFA90024 */  sw         $t1, 0x24($sp)
/* D7074 80120CB4 AFAA0028 */  sw         $t2, 0x28($sp)
/* D7078 80120CB8 8E0200E0 */  lw         $v0, 0xE0($s0)
/* D707C 80120CBC C4400020 */  lwc1       $f0, 0x20($v0)
/* D7080 80120CC0 E7A0009C */  swc1       $f0, 0x9C($sp)
/* D7084 80120CC4 8E0300D8 */  lw         $v1, 0xD8($s0)
/* D7088 80120CC8 8E0500E0 */  lw         $a1, 0xE0($s0)
/* D708C 80120CCC 8C620024 */  lw         $v0, 0x24($v1)
/* D7090 80120CD0 24A50014 */  addiu      $a1, $a1, 0x14
/* D7094 80120CD4 84440018 */  lh         $a0, 0x18($v0)
/* D7098 80120CD8 8C42001C */  lw         $v0, 0x1C($v0)
/* D709C 80120CDC 0040F809 */  jalr       $v0
/* D70A0 80120CE0 00642021 */   addu      $a0, $v1, $a0
/* D70A4 80120CE4 26040030 */  addiu      $a0, $s0, 0x30
/* D70A8 80120CE8 27A50080 */  addiu      $a1, $sp, 0x80
/* D70AC 80120CEC 27A60020 */  addiu      $a2, $sp, 0x20
/* D70B0 80120CF0 3C01800D */  lui        $at, %hi(D_race_800CE590)
/* D70B4 80120CF4 C420E590 */  lwc1       $f0, %lo(D_race_800CE590)($at)
/* D70B8 80120CF8 24021388 */  addiu      $v0, $zero, 0x1388
/* D70BC 80120CFC AFA000A4 */  sw         $zero, 0xA4($sp)
/* D70C0 80120D00 AFA200A0 */  sw         $v0, 0xA0($sp)
/* D70C4 80120D04 0C040D1A */  jal        func_race_80103468
/* D70C8 80120D08 E7A00088 */   swc1      $f0, 0x88($sp)
/* D70CC 80120D0C 0804837B */  j          .Lrace_80120DEC
/* D70D0 80120D10 3C05800D */   lui       $a1, %hi(D_race_800CE57C)
.Lrace_80120D14:
/* D70D4 80120D14 8E02002C */  lw         $v0, 0x2C($s0)
/* D70D8 80120D18 1040000D */  beqz       $v0, .Lrace_80120D50
/* D70DC 80120D1C 26040030 */   addiu     $a0, $s0, 0x30
/* D70E0 80120D20 27A50080 */  addiu      $a1, $sp, 0x80
/* D70E4 80120D24 8C480000 */  lw         $t0, 0x0($v0)
/* D70E8 80120D28 8C490004 */  lw         $t1, 0x4($v0)
/* D70EC 80120D2C 8C4A0008 */  lw         $t2, 0x8($v0)
/* D70F0 80120D30 AFA80020 */  sw         $t0, 0x20($sp)
/* D70F4 80120D34 AFA90024 */  sw         $t1, 0x24($sp)
/* D70F8 80120D38 AFAA0028 */  sw         $t2, 0x28($sp)
/* D70FC 80120D3C 27A20050 */  addiu      $v0, $sp, 0x50
/* D7100 80120D40 AFA00050 */  sw         $zero, 0x50($sp)
/* D7104 80120D44 AFA00054 */  sw         $zero, 0x54($sp)
/* D7108 80120D48 0804836B */  j          .Lrace_80120DAC
/* D710C 80120D4C AFA00058 */   sw        $zero, 0x58($sp)
.Lrace_80120D50:
/* D7110 80120D50 C7A20040 */  lwc1       $f2, 0x40($sp)
/* D7114 80120D54 3C01800D */  lui        $at, %hi(D_race_800CE594)
/* D7118 80120D58 C420E594 */  lwc1       $f0, %lo(D_race_800CE594)($at)
/* D711C 80120D5C 46001082 */  mul.s      $f2, $f2, $f0
/* D7120 80120D60 C7A40044 */  lwc1       $f4, 0x44($sp)
/* D7124 80120D64 46002102 */  mul.s      $f4, $f4, $f0
/* D7128 80120D68 C7A60048 */  lwc1       $f6, 0x48($sp)
/* D712C 80120D6C 46003182 */  mul.s      $f6, $f6, $f0
/* D7130 80120D70 C7A80030 */  lwc1       $f8, 0x30($sp)
/* D7134 80120D74 46024200 */  add.s      $f8, $f8, $f2
/* D7138 80120D78 C7A00038 */  lwc1       $f0, 0x38($sp)
/* D713C 80120D7C 27A50080 */  addiu      $a1, $sp, 0x80
/* D7140 80120D80 46060000 */  add.s      $f0, $f0, $f6
/* D7144 80120D84 C7A20034 */  lwc1       $f2, 0x34($sp)
/* D7148 80120D88 27A20050 */  addiu      $v0, $sp, 0x50
/* D714C 80120D8C AFA00050 */  sw         $zero, 0x50($sp)
/* D7150 80120D90 46041080 */  add.s      $f2, $f2, $f4
/* D7154 80120D94 AFA00054 */  sw         $zero, 0x54($sp)
/* D7158 80120D98 AFA00058 */  sw         $zero, 0x58($sp)
/* D715C 80120D9C 460A0000 */  add.s      $f0, $f0, $f10
/* D7160 80120DA0 E7A80020 */  swc1       $f8, 0x20($sp)
/* D7164 80120DA4 E7A20024 */  swc1       $f2, 0x24($sp)
/* D7168 80120DA8 E7A00028 */  swc1       $f0, 0x28($sp)
.Lrace_80120DAC:
/* D716C 80120DAC AFA20010 */  sw         $v0, 0x10($sp)
/* D7170 80120DB0 24020001 */  addiu      $v0, $zero, 0x1
/* D7174 80120DB4 AFA20014 */  sw         $v0, 0x14($sp)
/* D7178 80120DB8 8E060024 */  lw         $a2, 0x24($s0)
/* D717C 80120DBC 0C040C6A */  jal        func_race_801031A8
/* D7180 80120DC0 27A70020 */   addiu     $a3, $sp, 0x20
/* D7184 80120DC4 0804837B */  j          .Lrace_80120DEC
/* D7188 80120DC8 3C05800D */   lui       $a1, %hi(D_race_800CE57C)
.Lrace_80120DCC:
/* D718C 80120DCC 24020001 */  addiu      $v0, $zero, 0x1
/* D7190 80120DD0 AFA20010 */  sw         $v0, 0x10($sp)
/* D7194 80120DD4 AFA00014 */  sw         $zero, 0x14($sp)
/* D7198 80120DD8 8E060024 */  lw         $a2, 0x24($s0)
/* D719C 80120DDC 8E070028 */  lw         $a3, 0x28($s0)
/* D71A0 80120DE0 0C040B68 */  jal        func_race_80102DA0
/* D71A4 80120DE4 27A50080 */   addiu     $a1, $sp, 0x80
/* D71A8 80120DE8 3C05800D */  lui        $a1, %hi(D_race_800CE57C)
.Lrace_80120DEC:
/* D71AC 80120DEC 24A5E57C */  addiu      $a1, $a1, %lo(D_race_800CE57C)
/* D71B0 80120DF0 8E02001C */  lw         $v0, 0x1C($s0)
/* D71B4 80120DF4 00003021 */  addu       $a2, $zero, $zero
/* D71B8 80120DF8 8C440040 */  lw         $a0, 0x40($v0)
/* D71BC 80120DFC 00C03821 */  addu       $a3, $a2, $zero
/* D71C0 80120E00 0C0107DD */  jal        func_80041F74
/* D71C4 80120E04 AFA00010 */   sw        $zero, 0x10($sp)
/* D71C8 80120E08 10400035 */  beqz       $v0, .Lrace_80120EE0
/* D71CC 80120E0C AE0200DC */   sw        $v0, 0xDC($s0)
/* D71D0 80120E10 8E0200E0 */  lw         $v0, 0xE0($s0)
/* D71D4 80120E14 14400013 */  bnez       $v0, .Lrace_80120E64
/* D71D8 80120E18 27A50060 */   addiu     $a1, $sp, 0x60
/* D71DC 80120E1C 8E020024 */  lw         $v0, 0x24($s0)
/* D71E0 80120E20 8C430538 */  lw         $v1, 0x538($v0)
/* D71E4 80120E24 8C620024 */  lw         $v0, 0x24($v1)
/* D71E8 80120E28 27A60070 */  addiu      $a2, $sp, 0x70
/* D71EC 80120E2C 84440088 */  lh         $a0, 0x88($v0)
/* D71F0 80120E30 8C42008C */  lw         $v0, 0x8C($v0)
/* D71F4 80120E34 0040F809 */  jalr       $v0
/* D71F8 80120E38 00642021 */   addu      $a0, $v1, $a0
/* D71FC 80120E3C 8E020024 */  lw         $v0, 0x24($s0)
/* D7200 80120E40 8C430538 */  lw         $v1, 0x538($v0)
/* D7204 80120E44 8C620024 */  lw         $v0, 0x24($v1)
/* D7208 80120E48 27A50030 */  addiu      $a1, $sp, 0x30
/* D720C 80120E4C 84440010 */  lh         $a0, 0x10($v0)
/* D7210 80120E50 8C420014 */  lw         $v0, 0x14($v0)
/* D7214 80120E54 0040F809 */  jalr       $v0
/* D7218 80120E58 00642021 */   addu      $a0, $v1, $a0
/* D721C 80120E5C 080483A7 */  j          .Lrace_80120E9C
/* D7220 80120E60 00000000 */   nop
.Lrace_80120E64:
/* D7224 80120E64 3C01800D */  lui        $at, %hi(D_race_800CE598)
/* D7228 80120E68 C420E598 */  lwc1       $f0, %lo(D_race_800CE598)($at)
/* D722C 80120E6C 8C480014 */  lw         $t0, 0x14($v0)
/* D7230 80120E70 8C490018 */  lw         $t1, 0x18($v0)
/* D7234 80120E74 8C4A001C */  lw         $t2, 0x1C($v0)
/* D7238 80120E78 AFA80030 */  sw         $t0, 0x30($sp)
/* D723C 80120E7C AFA90034 */  sw         $t1, 0x34($sp)
/* D7240 80120E80 AFAA0038 */  sw         $t2, 0x38($sp)
/* D7244 80120E84 AFA00064 */  sw         $zero, 0x64($sp)
/* D7248 80120E88 AFA00068 */  sw         $zero, 0x68($sp)
/* D724C 80120E8C AFA00070 */  sw         $zero, 0x70($sp)
/* D7250 80120E90 AFA00074 */  sw         $zero, 0x74($sp)
/* D7254 80120E94 E7A00060 */  swc1       $f0, 0x60($sp)
/* D7258 80120E98 E7A00078 */  swc1       $f0, 0x78($sp)
.Lrace_80120E9C:
/* D725C 80120E9C C7A00038 */  lwc1       $f0, 0x38($sp)
/* D7260 80120EA0 3C01800D */  lui        $at, %hi(D_race_800CE59C)
/* D7264 80120EA4 C422E59C */  lwc1       $f2, %lo(D_race_800CE59C)($at)
/* D7268 80120EA8 46020000 */  add.s      $f0, $f0, $f2
/* D726C 80120EAC E7A00038 */  swc1       $f0, 0x38($sp)
/* D7270 80120EB0 8E0200DC */  lw         $v0, 0xDC($s0)
/* D7274 80120EB4 8C440000 */  lw         $a0, 0x0($v0)
/* D7278 80120EB8 10800005 */  beqz       $a0, .Lrace_80120ED0
/* D727C 80120EBC 27A50060 */   addiu     $a1, $sp, 0x60
/* D7280 80120EC0 0C010521 */  jal        func_80041484
/* D7284 80120EC4 27A60070 */   addiu     $a2, $sp, 0x70
/* D7288 80120EC8 8E0200DC */  lw         $v0, 0xDC($s0)
/* D728C 80120ECC 8C440000 */  lw         $a0, 0x0($v0)
.Lrace_80120ED0:
/* D7290 80120ED0 10800004 */  beqz       $a0, .Lrace_80120EE4
/* D7294 80120ED4 2402012C */   addiu     $v0, $zero, 0x12C
/* D7298 80120ED8 0C01058D */  jal        func_80041634
/* D729C 80120EDC 27A50030 */   addiu     $a1, $sp, 0x30
.Lrace_80120EE0:
/* D72A0 80120EE0 2402012C */  addiu      $v0, $zero, 0x12C
.Lrace_80120EE4:
/* D72A4 80120EE4 3C01800D */  lui        $at, %hi(D_race_800CE5A0)
/* D72A8 80120EE8 C420E5A0 */  lwc1       $f0, %lo(D_race_800CE5A0)($at)
/* D72AC 80120EEC 24030004 */  addiu      $v1, $zero, 0x4
/* D72B0 80120EF0 AFA200A8 */  sw         $v0, 0xA8($sp)
/* D72B4 80120EF4 24020001 */  addiu      $v0, $zero, 0x1
/* D72B8 80120EF8 AFA300AC */  sw         $v1, 0xAC($sp)
/* D72BC 80120EFC AFA200B4 */  sw         $v0, 0xB4($sp)
/* D72C0 80120F00 AFA000B8 */  sw         $zero, 0xB8($sp)
/* D72C4 80120F04 AFA000C0 */  sw         $zero, 0xC0($sp)
/* D72C8 80120F08 AFA300B0 */  sw         $v1, 0xB0($sp)
/* D72CC 80120F0C E7A000BC */  swc1       $f0, 0xBC($sp)
/* D72D0 80120F10 8E02001C */  lw         $v0, 0x1C($s0)
/* D72D4 80120F14 8C440044 */  lw         $a0, 0x44($v0)
/* D72D8 80120F18 0C034F53 */  jal        func_race_800D3D4C
/* D72DC 80120F1C 27A500A8 */   addiu     $a1, $sp, 0xA8
/* D72E0 80120F20 10400012 */  beqz       $v0, .Lrace_80120F6C
/* D72E4 80120F24 AE0200E4 */   sw        $v0, 0xE4($s0)
/* D72E8 80120F28 00402021 */  addu       $a0, $v0, $zero
/* D72EC 80120F2C 3C058013 */  lui        $a1, %hi(D_race_80132478)
/* D72F0 80120F30 0C034A4D */  jal        func_race_800D2934
/* D72F4 80120F34 24A52478 */   addiu     $a1, $a1, %lo(D_race_80132478)
/* D72F8 80120F38 8E02001C */  lw         $v0, 0x1C($s0)
/* D72FC 80120F3C 3C058013 */  lui        $a1, %hi(D_race_80132470)
/* D7300 80120F40 8C440004 */  lw         $a0, 0x4($v0)
/* D7304 80120F44 0C016F2D */  jal        func_8005BCB4
/* D7308 80120F48 24A52470 */   addiu     $a1, $a1, %lo(D_race_80132470)
/* D730C 80120F4C 00403021 */  addu       $a2, $v0, $zero
/* D7310 80120F50 10C00006 */  beqz       $a2, .Lrace_80120F6C
/* D7314 80120F54 00000000 */   nop
/* D7318 80120F58 8E02001C */  lw         $v0, 0x1C($s0)
/* D731C 80120F5C 8E0400E4 */  lw         $a0, 0xE4($s0)
/* D7320 80120F60 8C450004 */  lw         $a1, 0x4($v0)
/* D7324 80120F64 0C034A45 */  jal        func_race_800D2914
/* D7328 80120F68 00000000 */   nop
.Lrace_80120F6C:
/* D732C 80120F6C 8E0200E0 */  lw         $v0, 0xE0($s0)
/* D7330 80120F70 10400009 */  beqz       $v0, .Lrace_80120F98
/* D7334 80120F74 27A50030 */   addiu     $a1, $sp, 0x30
/* D7338 80120F78 8C480014 */  lw         $t0, 0x14($v0)
/* D733C 80120F7C 8C490018 */  lw         $t1, 0x18($v0)
/* D7340 80120F80 8C4A001C */  lw         $t2, 0x1C($v0)
/* D7344 80120F84 AFA80030 */  sw         $t0, 0x30($sp)
/* D7348 80120F88 AFA90034 */  sw         $t1, 0x34($sp)
/* D734C 80120F8C AFAA0038 */  sw         $t2, 0x38($sp)
/* D7350 80120F90 080483ED */  j          .Lrace_80120FB4
/* D7354 80120F94 00000000 */   nop
.Lrace_80120F98:
/* D7358 80120F98 8E020024 */  lw         $v0, 0x24($s0)
/* D735C 80120F9C 8C43005C */  lw         $v1, 0x5C($v0)
/* D7360 80120FA0 8C620024 */  lw         $v0, 0x24($v1)
/* D7364 80120FA4 84440010 */  lh         $a0, 0x10($v0)
/* D7368 80120FA8 8C420014 */  lw         $v0, 0x14($v0)
/* D736C 80120FAC 0040F809 */  jalr       $v0
/* D7370 80120FB0 00642021 */   addu      $a0, $v1, $a0
.Lrace_80120FB4:
/* D7374 80120FB4 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* D7378 80120FB8 3C01800D */  lui        $at, %hi(D_race_800CE5A4)
/* D737C 80120FBC C422E5A4 */  lwc1       $f2, %lo(D_race_800CE5A4)($at)
/* D7380 80120FC0 3C01800D */  lui        $at, %hi(D_race_800CE5A8)
/* D7384 80120FC4 C420E5A8 */  lwc1       $f0, %lo(D_race_800CE5A8)($at)
/* D7388 80120FC8 24050006 */  addiu      $a1, $zero, 0x6
/* D738C 80120FCC E7A20010 */  swc1       $f2, 0x10($sp)
/* D7390 80120FD0 E7A00014 */  swc1       $f0, 0x14($sp)
/* D7394 80120FD4 E7A00018 */  swc1       $f0, 0x18($sp)
/* D7398 80120FD8 8E040010 */  lw         $a0, 0x10($s0)
/* D739C 80120FDC 0C046530 */  jal        func_race_801194C0
/* D73A0 80120FE0 27A60030 */   addiu     $a2, $sp, 0x30
/* D73A4 80120FE4 08048409 */  j          .Lrace_80121024
/* D73A8 80120FE8 00000000 */   nop
.Lrace_80120FEC:
/* D73AC 80120FEC 26040030 */  addiu      $a0, $s0, 0x30
/* D73B0 80120FF0 AE020004 */  sw         $v0, 0x4($s0)
/* D73B4 80120FF4 0C040EE7 */  jal        func_race_80103B9C
/* D73B8 80120FF8 AE000008 */   sw        $zero, 0x8($s0)
/* D73BC 80120FFC 8E02001C */  lw         $v0, 0x1C($s0)
/* D73C0 80121000 8E0500E4 */  lw         $a1, 0xE4($s0)
/* D73C4 80121004 8C440044 */  lw         $a0, 0x44($v0)
/* D73C8 80121008 10A00006 */  beqz       $a1, .Lrace_80121024
/* D73CC 8012100C 00000000 */   nop
/* D73D0 80121010 0C034F7B */  jal        func_race_800D3DEC
/* D73D4 80121014 00000000 */   nop
/* D73D8 80121018 08048409 */  j          .Lrace_80121024
/* D73DC 8012101C AE0000E4 */   sw        $zero, 0xE4($s0)
.Lrace_80121020:
/* D73E0 80121020 AE000008 */  sw         $zero, 0x8($s0)
.Lrace_80121024:
/* D73E4 80121024 8FBF00CC */  lw         $ra, 0xCC($sp)
/* D73E8 80121028 8FB000C8 */  lw         $s0, 0xC8($sp)
/* D73EC 8012102C 03E00008 */  jr         $ra
/* D73F0 80121030 27BD00D0 */   addiu     $sp, $sp, 0xD0

glabel func_race_80121034
/* D73F4 80121034 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* D73F8 80121038 AFB10034 */  sw         $s1, 0x34($sp)
/* D73FC 8012103C 00808821 */  addu       $s1, $a0, $zero
/* D7400 80121040 AFB00030 */  sw         $s0, 0x30($sp)
/* D7404 80121044 AFBF0038 */  sw         $ra, 0x38($sp)
/* D7408 80121048 8E230004 */  lw         $v1, 0x4($s1)
/* D740C 8012104C 24020003 */  addiu      $v0, $zero, 0x3
/* D7410 80121050 14620033 */  bne        $v1, $v0, .Lrace_80121120
/* D7414 80121054 00A08021 */   addu      $s0, $a1, $zero
/* D7418 80121058 8E020D04 */  lw         $v0, 0xD04($s0)
/* D741C 8012105C 30420001 */  andi       $v0, $v0, 0x1
/* D7420 80121060 1040000D */  beqz       $v0, .Lrace_80121098
/* D7424 80121064 02002021 */   addu      $a0, $s0, $zero
/* D7428 80121068 0C04339E */  jal        func_race_8010CE78
/* D742C 8012106C 24050001 */   addiu     $a1, $zero, 0x1
/* D7430 80121070 0C0438E0 */  jal        func_race_8010E380
/* D7434 80121074 02002021 */   addu      $a0, $s0, $zero
/* D7438 80121078 8E020D64 */  lw         $v0, 0xD64($s0)
/* D743C 8012107C 2C420002 */  sltiu      $v0, $v0, 0x2
/* D7440 80121080 14400027 */  bnez       $v0, .Lrace_80121120
/* D7444 80121084 26240030 */   addiu     $a0, $s1, 0x30
/* D7448 80121088 0C040D77 */  jal        func_race_801035DC
/* D744C 8012108C 02002821 */   addu      $a1, $s0, $zero
/* D7450 80121090 08048448 */  j          .Lrace_80121120
/* D7454 80121094 AE300024 */   sw        $s0, 0x24($s1)
.Lrace_80121098:
/* D7458 80121098 8E240024 */  lw         $a0, 0x24($s1)
/* D745C 8012109C 50800004 */  beql       $a0, $zero, .Lrace_801210B0
/* D7460 801210A0 02002021 */   addu      $a0, $s0, $zero
/* D7464 801210A4 0C04339E */  jal        func_race_8010CE78
/* D7468 801210A8 24050001 */   addiu     $a1, $zero, 0x1
/* D746C 801210AC 02002021 */  addu       $a0, $s0, $zero
.Lrace_801210B0:
/* D7470 801210B0 0C04339E */  jal        func_race_8010CE78
/* D7474 801210B4 00002821 */   addu      $a1, $zero, $zero
/* D7478 801210B8 0C04345D */  jal        func_race_8010D174
/* D747C 801210BC 02002021 */   addu      $a0, $s0, $zero
/* D7480 801210C0 26030018 */  addiu      $v1, $s0, 0x18
/* D7484 801210C4 8C62039C */  lw         $v0, 0x39C($v1)
/* D7488 801210C8 34420002 */  ori        $v0, $v0, 0x2
/* D748C 801210CC AC62039C */  sw         $v0, 0x39C($v1)
/* D7490 801210D0 8C630044 */  lw         $v1, 0x44($v1)
/* D7494 801210D4 27B00020 */  addiu      $s0, $sp, 0x20
/* D7498 801210D8 8C620024 */  lw         $v0, 0x24($v1)
/* D749C 801210DC 02002821 */  addu       $a1, $s0, $zero
/* D74A0 801210E0 84440010 */  lh         $a0, 0x10($v0)
/* D74A4 801210E4 8C420014 */  lw         $v0, 0x14($v0)
/* D74A8 801210E8 0040F809 */  jalr       $v0
/* D74AC 801210EC 00642021 */   addu      $a0, $v1, $a0
/* D74B0 801210F0 3C01800D */  lui        $at, %hi(D_race_800CE5AC)
/* D74B4 801210F4 C422E5AC */  lwc1       $f2, %lo(D_race_800CE5AC)($at)
/* D74B8 801210F8 3C01800D */  lui        $at, %hi(D_race_800CE5B0)
/* D74BC 801210FC C420E5B0 */  lwc1       $f0, %lo(D_race_800CE5B0)($at)
/* D74C0 80121100 3C074348 */  lui        $a3, (0x43480000 >> 16)
/* D74C4 80121104 24050005 */  addiu      $a1, $zero, 0x5
/* D74C8 80121108 E7A20010 */  swc1       $f2, 0x10($sp)
/* D74CC 8012110C E7A00014 */  swc1       $f0, 0x14($sp)
/* D74D0 80121110 E7A00018 */  swc1       $f0, 0x18($sp)
/* D74D4 80121114 8E240010 */  lw         $a0, 0x10($s1)
/* D74D8 80121118 0C046530 */  jal        func_race_801194C0
/* D74DC 8012111C 02003021 */   addu      $a2, $s0, $zero
.Lrace_80121120:
/* D74E0 80121120 8FBF0038 */  lw         $ra, 0x38($sp)
/* D74E4 80121124 8FB10034 */  lw         $s1, 0x34($sp)
/* D74E8 80121128 8FB00030 */  lw         $s0, 0x30($sp)
/* D74EC 8012112C 03E00008 */  jr         $ra
/* D74F0 80121130 27BD0040 */   addiu     $sp, $sp, 0x40
