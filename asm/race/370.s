.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800ED420
/* A37E0 800ED420 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A37E4 800ED424 AFB00010 */  sw         $s0, 0x10($sp)
/* A37E8 800ED428 AFBF0014 */  sw         $ra, 0x14($sp)
/* A37EC 800ED42C 0C03A1A4 */  jal        func_race_800E8690
/* A37F0 800ED430 00808021 */   addu      $s0, $a0, $zero
/* A37F4 800ED434 3C02800D */  lui        $v0, %hi(D_race_800CC490)
/* A37F8 800ED438 2442C490 */  addiu      $v0, $v0, %lo(D_race_800CC490)
/* A37FC 800ED43C 26040010 */  addiu      $a0, $s0, 0x10
/* A3800 800ED440 0C0164A4 */  jal        func_80059290
/* A3804 800ED444 AE020000 */   sw        $v0, 0x0($s0)
/* A3808 800ED448 0C040B20 */  jal        func_race_80102C80
/* A380C 800ED44C 26040038 */   addiu     $a0, $s0, 0x38
/* A3810 800ED450 0C03B530 */  jal        func_race_800ED4C0
/* A3814 800ED454 02002021 */   addu      $a0, $s0, $zero
/* A3818 800ED458 02001021 */  addu       $v0, $s0, $zero
/* A381C 800ED45C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3820 800ED460 8FB00010 */  lw         $s0, 0x10($sp)
/* A3824 800ED464 03E00008 */  jr         $ra
/* A3828 800ED468 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800ED46C
/* A382C 800ED46C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A3830 800ED470 AFB00010 */  sw         $s0, 0x10($sp)
/* A3834 800ED474 00808021 */  addu       $s0, $a0, $zero
/* A3838 800ED478 AFB10014 */  sw         $s1, 0x14($sp)
/* A383C 800ED47C 00A08821 */  addu       $s1, $a1, $zero
/* A3840 800ED480 3C02800D */  lui        $v0, %hi(D_race_800CC490)
/* A3844 800ED484 2442C490 */  addiu      $v0, $v0, %lo(D_race_800CC490)
/* A3848 800ED488 AFBF0018 */  sw         $ra, 0x18($sp)
/* A384C 800ED48C 0C03B5CD */  jal        func_race_800ED734
/* A3850 800ED490 AE020000 */   sw        $v0, 0x0($s0)
/* A3854 800ED494 26040038 */  addiu      $a0, $s0, 0x38
/* A3858 800ED498 0C040B2D */  jal        func_race_80102CB4
/* A385C 800ED49C 24050002 */   addiu     $a1, $zero, 0x2
/* A3860 800ED4A0 02002021 */  addu       $a0, $s0, $zero
/* A3864 800ED4A4 0C03A1AC */  jal        func_race_800E86B0
/* A3868 800ED4A8 02202821 */   addu      $a1, $s1, $zero
/* A386C 800ED4AC 8FBF0018 */  lw         $ra, 0x18($sp)
/* A3870 800ED4B0 8FB10014 */  lw         $s1, 0x14($sp)
/* A3874 800ED4B4 8FB00010 */  lw         $s0, 0x10($sp)
/* A3878 800ED4B8 03E00008 */  jr         $ra
/* A387C 800ED4BC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800ED4C0
/* A3880 800ED4C0 2402FFFF */  addiu      $v0, $zero, -0x1
/* A3884 800ED4C4 AC80010C */  sw         $zero, 0x10C($a0)
/* A3888 800ED4C8 AC800118 */  sw         $zero, 0x118($a0)
/* A388C 800ED4CC AC800114 */  sw         $zero, 0x114($a0)
/* A3890 800ED4D0 AC800110 */  sw         $zero, 0x110($a0)
/* A3894 800ED4D4 AC80011C */  sw         $zero, 0x11C($a0)
/* A3898 800ED4D8 AC800120 */  sw         $zero, 0x120($a0)
/* A389C 800ED4DC AC8000E0 */  sw         $zero, 0xE0($a0)
/* A38A0 800ED4E0 AC8000E4 */  sw         $zero, 0xE4($a0)
/* A38A4 800ED4E4 AC8000E8 */  sw         $zero, 0xE8($a0)
/* A38A8 800ED4E8 AC8000EC */  sw         $zero, 0xEC($a0)
/* A38AC 800ED4EC AC8000F0 */  sw         $zero, 0xF0($a0)
/* A38B0 800ED4F0 AC8000F4 */  sw         $zero, 0xF4($a0)
/* A38B4 800ED4F4 AC8000F8 */  sw         $zero, 0xF8($a0)
/* A38B8 800ED4F8 AC8000FC */  sw         $zero, 0xFC($a0)
/* A38BC 800ED4FC AC800100 */  sw         $zero, 0x100($a0)
/* A38C0 800ED500 AC800104 */  sw         $zero, 0x104($a0)
/* A38C4 800ED504 03E00008 */  jr         $ra
/* A38C8 800ED508 AC820108 */   sw        $v0, 0x108($a0)

glabel func_race_800ED50C
/* A38CC 800ED50C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A38D0 800ED510 AFB00018 */  sw         $s0, 0x18($sp)
/* A38D4 800ED514 00808021 */  addu       $s0, $a0, $zero
/* A38D8 800ED518 AFB20020 */  sw         $s2, 0x20($sp)
/* A38DC 800ED51C 00A09021 */  addu       $s2, $a1, $zero
/* A38E0 800ED520 AFBF0028 */  sw         $ra, 0x28($sp)
/* A38E4 800ED524 AFB30024 */  sw         $s3, 0x24($sp)
/* A38E8 800ED528 AFB1001C */  sw         $s1, 0x1C($sp)
/* A38EC 800ED52C 8E02000C */  lw         $v0, 0xC($s0)
/* A38F0 800ED530 10400003 */  beqz       $v0, .Lrace_800ED540
/* A38F4 800ED534 00C08821 */   addu      $s1, $a2, $zero
/* A38F8 800ED538 0C03B5CD */  jal        func_race_800ED734
/* A38FC 800ED53C 00000000 */   nop
.Lrace_800ED540:
/* A3900 800ED540 2402FFFF */  addiu      $v0, $zero, -0x1
/* A3904 800ED544 AE020008 */  sw         $v0, 0x8($s0)
/* A3908 800ED548 8E42000C */  lw         $v0, 0xC($s2)
/* A390C 800ED54C AE020004 */  sw         $v0, 0x4($s0)
/* A3910 800ED550 8E420034 */  lw         $v0, 0x34($s2)
/* A3914 800ED554 AE02010C */  sw         $v0, 0x10C($s0)
/* A3918 800ED558 8E420024 */  lw         $v0, 0x24($s2)
/* A391C 800ED55C AE020118 */  sw         $v0, 0x118($s0)
/* A3920 800ED560 8E420038 */  lw         $v0, 0x38($s2)
/* A3924 800ED564 8E030118 */  lw         $v1, 0x118($s0)
/* A3928 800ED568 AE020110 */  sw         $v0, 0x110($s0)
/* A392C 800ED56C 8E42003C */  lw         $v0, 0x3C($s2)
/* A3930 800ED570 AE02011C */  sw         $v0, 0x11C($s0)
/* A3934 800ED574 8C620000 */  lw         $v0, 0x0($v1)
/* A3938 800ED578 84440068 */  lh         $a0, 0x68($v0)
/* A393C 800ED57C 8C42006C */  lw         $v0, 0x6C($v0)
/* A3940 800ED580 0040F809 */  jalr       $v0
/* A3944 800ED584 00642021 */   addu      $a0, $v1, $a0
/* A3948 800ED588 3C05800D */  lui        $a1, %hi(D_race_800CC450)
/* A394C 800ED58C AE020114 */  sw         $v0, 0x114($s0)
/* A3950 800ED590 8E440028 */  lw         $a0, 0x28($s2)
/* A3954 800ED594 0C016F2D */  jal        func_8005BCB4
/* A3958 800ED598 24A5C450 */   addiu     $a1, $a1, %lo(D_race_800CC450)
/* A395C 800ED59C 8E040114 */  lw         $a0, 0x114($s0)
/* A3960 800ED5A0 8C830024 */  lw         $v1, 0x24($a0)
/* A3964 800ED5A4 3C01800D */  lui        $at, %hi(D_race_800CC458)
/* A3968 800ED5A8 C420C458 */  lwc1       $f0, %lo(D_race_800CC458)($at)
/* A396C 800ED5AC 846800A0 */  lh         $t0, 0xA0($v1)
/* A3970 800ED5B0 00402821 */  addu       $a1, $v0, $zero
/* A3974 800ED5B4 E7A00010 */  swc1       $f0, 0x10($sp)
/* A3978 800ED5B8 3C01800D */  lui        $at, %hi(D_race_800CC45C)
/* A397C 800ED5BC C420C45C */  lwc1       $f0, %lo(D_race_800CC45C)($at)
/* A3980 800ED5C0 8C6200A4 */  lw         $v0, 0xA4($v1)
/* A3984 800ED5C4 44060000 */  mfc1       $a2, $f0
/* A3988 800ED5C8 00882021 */  addu       $a0, $a0, $t0
/* A398C 800ED5CC 0040F809 */  jalr       $v0
/* A3990 800ED5D0 00C03821 */   addu      $a3, $a2, $zero
/* A3994 800ED5D4 02202021 */  addu       $a0, $s1, $zero
/* A3998 800ED5D8 0C0026F4 */  jal        func_80009BD0
/* A399C 800ED5DC 24050005 */   addiu     $a1, $zero, 0x5
/* A39A0 800ED5E0 3C02800D */  lui        $v0, %hi(jtbl_race_800CC460)
/* A39A4 800ED5E4 2453C460 */  addiu      $s3, $v0, %lo(jtbl_race_800CC460)
.Lrace_800ED5E8:
/* A39A8 800ED5E8 8E220028 */  lw         $v0, 0x28($s1)
/* A39AC 800ED5EC 844400A0 */  lh         $a0, 0xA0($v0)
/* A39B0 800ED5F0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A39B4 800ED5F4 0040F809 */  jalr       $v0
/* A39B8 800ED5F8 02242021 */   addu      $a0, $s1, $a0
/* A39BC 800ED5FC 00401821 */  addu       $v1, $v0, $zero
/* A39C0 800ED600 24020006 */  addiu      $v0, $zero, 0x6
/* A39C4 800ED604 10620037 */  beq        $v1, $v0, .Lrace_800ED6E4
/* A39C8 800ED608 2463FFC9 */   addiu     $v1, $v1, -0x37
/* A39CC 800ED60C 2C620005 */  sltiu      $v0, $v1, 0x5
/* A39D0 800ED610 1040002C */  beqz       $v0, .Lrace_800ED6C4
/* A39D4 800ED614 00031080 */   sll       $v0, $v1, 2
/* A39D8 800ED618 00531021 */  addu       $v0, $v0, $s3
/* A39DC 800ED61C 8C420000 */  lw         $v0, 0x0($v0)
/* A39E0 800ED620 00400008 */  jr         $v0
/* A39E4 800ED624 00000000 */   nop
glabel Lrace_800ED628
/* A39E8 800ED628 0C0025F8 */  jal        func_800097E0
/* A39EC 800ED62C 02202021 */   addu      $a0, $s1, $zero
/* A39F0 800ED630 02202021 */  addu       $a0, $s1, $zero
/* A39F4 800ED634 0C0025F8 */  jal        func_800097E0
/* A39F8 800ED638 E60000E0 */   swc1      $f0, 0xE0($s0)
/* A39FC 800ED63C 02202021 */  addu       $a0, $s1, $zero
/* A3A00 800ED640 0C0025F8 */  jal        func_800097E0
/* A3A04 800ED644 E60000E4 */   swc1      $f0, 0xE4($s0)
/* A3A08 800ED648 0803B57A */  j          .Lrace_800ED5E8
/* A3A0C 800ED64C E60000E8 */   swc1      $f0, 0xE8($s0)
glabel Lrace_800ED650
/* A3A10 800ED650 0C0025F8 */  jal        func_800097E0
/* A3A14 800ED654 02202021 */   addu      $a0, $s1, $zero
/* A3A18 800ED658 02202021 */  addu       $a0, $s1, $zero
/* A3A1C 800ED65C 0C0025F8 */  jal        func_800097E0
/* A3A20 800ED660 E60000EC */   swc1      $f0, 0xEC($s0)
/* A3A24 800ED664 02202021 */  addu       $a0, $s1, $zero
/* A3A28 800ED668 0C0025F8 */  jal        func_800097E0
/* A3A2C 800ED66C E60000F0 */   swc1      $f0, 0xF0($s0)
/* A3A30 800ED670 0803B57A */  j          .Lrace_800ED5E8
/* A3A34 800ED674 E60000F4 */   swc1      $f0, 0xF4($s0)
glabel Lrace_800ED678
/* A3A38 800ED678 0C0025F8 */  jal        func_800097E0
/* A3A3C 800ED67C 02202021 */   addu      $a0, $s1, $zero
/* A3A40 800ED680 02202021 */  addu       $a0, $s1, $zero
/* A3A44 800ED684 0C0025F8 */  jal        func_800097E0
/* A3A48 800ED688 E60000F8 */   swc1      $f0, 0xF8($s0)
/* A3A4C 800ED68C 02202021 */  addu       $a0, $s1, $zero
/* A3A50 800ED690 0C0025F8 */  jal        func_800097E0
/* A3A54 800ED694 E60000FC */   swc1      $f0, 0xFC($s0)
/* A3A58 800ED698 0803B57A */  j          .Lrace_800ED5E8
/* A3A5C 800ED69C E6000100 */   swc1      $f0, 0x100($s0)
glabel Lrace_800ED6A0
/* A3A60 800ED6A0 0C0025F8 */  jal        func_800097E0
/* A3A64 800ED6A4 02202021 */   addu      $a0, $s1, $zero
/* A3A68 800ED6A8 46000002 */  mul.s      $f0, $f0, $f0
/* A3A6C 800ED6AC 0803B57A */  j          .Lrace_800ED5E8
/* A3A70 800ED6B0 E6000104 */   swc1      $f0, 0x104($s0)
glabel Lrace_800ED6B4
/* A3A74 800ED6B4 0C002680 */  jal        func_80009A00
/* A3A78 800ED6B8 02202021 */   addu      $a0, $s1, $zero
/* A3A7C 800ED6BC 0803B57A */  j          .Lrace_800ED5E8
/* A3A80 800ED6C0 AE020108 */   sw        $v0, 0x108($s0)
.Lrace_800ED6C4:
/* A3A84 800ED6C4 8E220028 */  lw         $v0, 0x28($s1)
/* A3A88 800ED6C8 00002821 */  addu       $a1, $zero, $zero
/* A3A8C 800ED6CC 84440098 */  lh         $a0, 0x98($v0)
/* A3A90 800ED6D0 8C42009C */  lw         $v0, 0x9C($v0)
/* A3A94 800ED6D4 0040F809 */  jalr       $v0
/* A3A98 800ED6D8 02242021 */   addu      $a0, $s1, $a0
/* A3A9C 800ED6DC 0803B57A */  j          .Lrace_800ED5E8
/* A3AA0 800ED6E0 00000000 */   nop
.Lrace_800ED6E4:
/* A3AA4 800ED6E4 8E420040 */  lw         $v0, 0x40($s2)
/* A3AA8 800ED6E8 1040000A */  beqz       $v0, .Lrace_800ED714
/* A3AAC 800ED6EC 24020001 */   addiu     $v0, $zero, 0x1
/* A3AB0 800ED6F0 C60000E4 */  lwc1       $f0, 0xE4($s0)
/* A3AB4 800ED6F4 C60200FC */  lwc1       $f2, 0xFC($s0)
/* A3AB8 800ED6F8 46000007 */  neg.s      $f0, $f0
/* A3ABC 800ED6FC E60000E4 */  swc1       $f0, 0xE4($s0)
/* A3AC0 800ED700 C60000F0 */  lwc1       $f0, 0xF0($s0)
/* A3AC4 800ED704 46001087 */  neg.s      $f2, $f2
/* A3AC8 800ED708 E60200FC */  swc1       $f2, 0xFC($s0)
/* A3ACC 800ED70C 46000007 */  neg.s      $f0, $f0
/* A3AD0 800ED710 E60000F0 */  swc1       $f0, 0xF0($s0)
.Lrace_800ED714:
/* A3AD4 800ED714 AE02000C */  sw         $v0, 0xC($s0)
/* A3AD8 800ED718 8FBF0028 */  lw         $ra, 0x28($sp)
/* A3ADC 800ED71C 8FB30024 */  lw         $s3, 0x24($sp)
/* A3AE0 800ED720 8FB20020 */  lw         $s2, 0x20($sp)
/* A3AE4 800ED724 8FB1001C */  lw         $s1, 0x1C($sp)
/* A3AE8 800ED728 8FB00018 */  lw         $s0, 0x18($sp)
/* A3AEC 800ED72C 03E00008 */  jr         $ra
/* A3AF0 800ED730 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800ED734
/* A3AF4 800ED734 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3AF8 800ED738 AFB00010 */  sw         $s0, 0x10($sp)
/* A3AFC 800ED73C 00808021 */  addu       $s0, $a0, $zero
/* A3B00 800ED740 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3B04 800ED744 8E020000 */  lw         $v0, 0x0($s0)
/* A3B08 800ED748 00002821 */  addu       $a1, $zero, $zero
/* A3B0C 800ED74C 84440018 */  lh         $a0, 0x18($v0)
/* A3B10 800ED750 8C42001C */  lw         $v0, 0x1C($v0)
/* A3B14 800ED754 0040F809 */  jalr       $v0
/* A3B18 800ED758 02042021 */   addu      $a0, $s0, $a0
/* A3B1C 800ED75C 8E050114 */  lw         $a1, 0x114($s0)
/* A3B20 800ED760 10A00008 */  beqz       $a1, .Lrace_800ED784
/* A3B24 800ED764 00000000 */   nop
/* A3B28 800ED768 8E030118 */  lw         $v1, 0x118($s0)
/* A3B2C 800ED76C 8C620000 */  lw         $v0, 0x0($v1)
/* A3B30 800ED770 844400D0 */  lh         $a0, 0xD0($v0)
/* A3B34 800ED774 8C4200D4 */  lw         $v0, 0xD4($v0)
/* A3B38 800ED778 0040F809 */  jalr       $v0
/* A3B3C 800ED77C 00642021 */   addu      $a0, $v1, $a0
/* A3B40 800ED780 AE000114 */  sw         $zero, 0x114($s0)
.Lrace_800ED784:
/* A3B44 800ED784 0C03B530 */  jal        func_race_800ED4C0
/* A3B48 800ED788 02002021 */   addu      $a0, $s0, $zero
/* A3B4C 800ED78C 0C03A1C0 */  jal        func_race_800E8700
/* A3B50 800ED790 02002021 */   addu      $a0, $s0, $zero
/* A3B54 800ED794 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3B58 800ED798 8FB00010 */  lw         $s0, 0x10($sp)
/* A3B5C 800ED79C 03E00008 */  jr         $ra
/* A3B60 800ED7A0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800ED7A4
/* A3B64 800ED7A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3B68 800ED7A8 00803821 */  addu       $a3, $a0, $zero
/* A3B6C 800ED7AC AFBF0010 */  sw         $ra, 0x10($sp)
/* A3B70 800ED7B0 8CE30108 */  lw         $v1, 0x108($a3)
/* A3B74 800ED7B4 2402FFFF */  addiu      $v0, $zero, -0x1
/* A3B78 800ED7B8 10620021 */  beq        $v1, $v0, .Lrace_800ED840
/* A3B7C 800ED7BC 00000000 */   nop
/* A3B80 800ED7C0 14A3001F */  bne        $a1, $v1, .Lrace_800ED840
/* A3B84 800ED7C4 24020001 */   addiu     $v0, $zero, 0x1
/* A3B88 800ED7C8 8CE3000C */  lw         $v1, 0xC($a3)
/* A3B8C 800ED7CC 1462001C */  bne        $v1, $v0, .Lrace_800ED840
/* A3B90 800ED7D0 00000000 */   nop
/* A3B94 800ED7D4 10C00014 */  beqz       $a2, .Lrace_800ED828
/* A3B98 800ED7D8 24E200F8 */   addiu     $v0, $a3, 0xF8
/* A3B9C 800ED7DC C4E200F8 */  lwc1       $f2, 0xF8($a3)
/* A3BA0 800ED7E0 C4C00000 */  lwc1       $f0, 0x0($a2)
/* A3BA4 800ED7E4 46001081 */  sub.s      $f2, $f2, $f0
/* A3BA8 800ED7E8 46021082 */  mul.s      $f2, $f2, $f2
/* A3BAC 800ED7EC C4460004 */  lwc1       $f6, 0x4($v0)
/* A3BB0 800ED7F0 C4C00004 */  lwc1       $f0, 0x4($a2)
/* A3BB4 800ED7F4 46003181 */  sub.s      $f6, $f6, $f0
/* A3BB8 800ED7F8 46063182 */  mul.s      $f6, $f6, $f6
/* A3BBC 800ED7FC C4C40008 */  lwc1       $f4, 0x8($a2)
/* A3BC0 800ED800 C4400008 */  lwc1       $f0, 0x8($v0)
/* A3BC4 800ED804 46040001 */  sub.s      $f0, $f0, $f4
/* A3BC8 800ED808 46000002 */  mul.s      $f0, $f0, $f0
/* A3BCC 800ED80C 46061080 */  add.s      $f2, $f2, $f6
/* A3BD0 800ED810 46001080 */  add.s      $f2, $f2, $f0
/* A3BD4 800ED814 C4E00104 */  lwc1       $f0, 0x104($a3)
/* A3BD8 800ED818 4600103C */  c.lt.s     $f2, $f0
/* A3BDC 800ED81C 00000000 */  nop
/* A3BE0 800ED820 45000007 */  bc1f       .Lrace_800ED840
/* A3BE4 800ED824 00000000 */   nop
.Lrace_800ED828:
/* A3BE8 800ED828 8CE20000 */  lw         $v0, 0x0($a3)
/* A3BEC 800ED82C 00002821 */  addu       $a1, $zero, $zero
/* A3BF0 800ED830 84440010 */  lh         $a0, 0x10($v0)
/* A3BF4 800ED834 8C420014 */  lw         $v0, 0x14($v0)
/* A3BF8 800ED838 0040F809 */  jalr       $v0
/* A3BFC 800ED83C 00E42021 */   addu      $a0, $a3, $a0
.Lrace_800ED840:
/* A3C00 800ED840 8FBF0010 */  lw         $ra, 0x10($sp)
/* A3C04 800ED844 03E00008 */  jr         $ra
/* A3C08 800ED848 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800ED84C
/* A3C0C 800ED84C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A3C10 800ED850 AFB1005C */  sw         $s1, 0x5C($sp)
/* A3C14 800ED854 00808821 */  addu       $s1, $a0, $zero
/* A3C18 800ED858 AFB00058 */  sw         $s0, 0x58($sp)
/* A3C1C 800ED85C 26300010 */  addiu      $s0, $s1, 0x10
/* A3C20 800ED860 02002021 */  addu       $a0, $s0, $zero
/* A3C24 800ED864 AFB20060 */  sw         $s2, 0x60($sp)
/* A3C28 800ED868 263200E0 */  addiu      $s2, $s1, 0xE0
/* A3C2C 800ED86C 02402821 */  addu       $a1, $s2, $zero
/* A3C30 800ED870 24020002 */  addiu      $v0, $zero, 0x2
/* A3C34 800ED874 AFBF0064 */  sw         $ra, 0x64($sp)
/* A3C38 800ED878 0C0165D9 */  jal        func_80059764
/* A3C3C 800ED87C AE22000C */   sw        $v0, 0xC($s1)
/* A3C40 800ED880 26240038 */  addiu      $a0, $s1, 0x38
/* A3C44 800ED884 27A50010 */  addiu      $a1, $sp, 0x10
/* A3C48 800ED888 262600EC */  addiu      $a2, $s1, 0xEC
/* A3C4C 800ED88C 8E23010C */  lw         $v1, 0x10C($s1)
/* A3C50 800ED890 3C01800D */  lui        $at, %hi(D_race_800CC474)
/* A3C54 800ED894 C420C474 */  lwc1       $f0, %lo(D_race_800CC474)($at)
/* A3C58 800ED898 3C01800D */  lui        $at, %hi(D_race_800CC478)
/* A3C5C 800ED89C C422C478 */  lwc1       $f2, %lo(D_race_800CC478)($at)
/* A3C60 800ED8A0 24020BB8 */  addiu      $v0, $zero, 0xBB8
/* A3C64 800ED8A4 AFA0001C */  sw         $zero, 0x1C($sp)
/* A3C68 800ED8A8 AFA00020 */  sw         $zero, 0x20($sp)
/* A3C6C 800ED8AC AFA00024 */  sw         $zero, 0x24($sp)
/* A3C70 800ED8B0 AFA00028 */  sw         $zero, 0x28($sp)
/* A3C74 800ED8B4 AFA20030 */  sw         $v0, 0x30($sp)
/* A3C78 800ED8B8 AFA00034 */  sw         $zero, 0x34($sp)
/* A3C7C 800ED8BC AFB00010 */  sw         $s0, 0x10($sp)
/* A3C80 800ED8C0 AFA30014 */  sw         $v1, 0x14($sp)
/* A3C84 800ED8C4 E7A00018 */  swc1       $f0, 0x18($sp)
/* A3C88 800ED8C8 0C040D1A */  jal        func_race_80103468
/* A3C8C 800ED8CC E7A2002C */   swc1      $f2, 0x2C($sp)
/* A3C90 800ED8D0 2402012C */  addiu      $v0, $zero, 0x12C
/* A3C94 800ED8D4 3C01800D */  lui        $at, %hi(D_race_800CC47C)
/* A3C98 800ED8D8 C420C47C */  lwc1       $f0, %lo(D_race_800CC47C)($at)
/* A3C9C 800ED8DC 24030004 */  addiu      $v1, $zero, 0x4
/* A3CA0 800ED8E0 AFA20038 */  sw         $v0, 0x38($sp)
/* A3CA4 800ED8E4 24020001 */  addiu      $v0, $zero, 0x1
/* A3CA8 800ED8E8 AFA3003C */  sw         $v1, 0x3C($sp)
/* A3CAC 800ED8EC AFA20044 */  sw         $v0, 0x44($sp)
/* A3CB0 800ED8F0 AFA00048 */  sw         $zero, 0x48($sp)
/* A3CB4 800ED8F4 AFA00050 */  sw         $zero, 0x50($sp)
/* A3CB8 800ED8F8 AFA30040 */  sw         $v1, 0x40($sp)
/* A3CBC 800ED8FC E7A0004C */  swc1       $f0, 0x4C($sp)
/* A3CC0 800ED900 8E24011C */  lw         $a0, 0x11C($s1)
/* A3CC4 800ED904 0C034F53 */  jal        func_race_800D3D4C
/* A3CC8 800ED908 27A50038 */   addiu     $a1, $sp, 0x38
/* A3CCC 800ED90C 10400005 */  beqz       $v0, .Lrace_800ED924
/* A3CD0 800ED910 AE220120 */   sw        $v0, 0x120($s1)
/* A3CD4 800ED914 00402021 */  addu       $a0, $v0, $zero
/* A3CD8 800ED918 3C058013 */  lui        $a1, %hi(D_race_80132160)
/* A3CDC 800ED91C 0C034A4D */  jal        func_race_800D2934
/* A3CE0 800ED920 24A52160 */   addiu     $a1, $a1, %lo(D_race_80132160)
.Lrace_800ED924:
/* A3CE4 800ED924 24050006 */  addiu      $a1, $zero, 0x6
/* A3CE8 800ED928 00A03021 */  addu       $a2, $a1, $zero
/* A3CEC 800ED92C 8E240004 */  lw         $a0, 0x4($s1)
/* A3CF0 800ED930 0C036D74 */  jal        func_race_800DB5D0
/* A3CF4 800ED934 02403821 */   addu      $a3, $s2, $zero
/* A3CF8 800ED938 8FBF0064 */  lw         $ra, 0x64($sp)
/* A3CFC 800ED93C 8FB20060 */  lw         $s2, 0x60($sp)
/* A3D00 800ED940 8FB1005C */  lw         $s1, 0x5C($sp)
/* A3D04 800ED944 8FB00058 */  lw         $s0, 0x58($sp)
/* A3D08 800ED948 03E00008 */  jr         $ra
/* A3D0C 800ED94C 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_800ED950
/* A3D10 800ED950 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3D14 800ED954 AFB00010 */  sw         $s0, 0x10($sp)
/* A3D18 800ED958 00808021 */  addu       $s0, $a0, $zero
/* A3D1C 800ED95C AFBF0014 */  sw         $ra, 0x14($sp)
/* A3D20 800ED960 0C040E4A */  jal        func_race_80103928
/* A3D24 800ED964 26040038 */   addiu     $a0, $s0, 0x38
/* A3D28 800ED968 8E050120 */  lw         $a1, 0x120($s0)
/* A3D2C 800ED96C 10A00006 */  beqz       $a1, .Lrace_800ED988
/* A3D30 800ED970 24020001 */   addiu     $v0, $zero, 0x1
/* A3D34 800ED974 8E04011C */  lw         $a0, 0x11C($s0)
/* A3D38 800ED978 0C034F7B */  jal        func_race_800D3DEC
/* A3D3C 800ED97C 00000000 */   nop
/* A3D40 800ED980 AE000120 */  sw         $zero, 0x120($s0)
/* A3D44 800ED984 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800ED988:
/* A3D48 800ED988 AE02000C */  sw         $v0, 0xC($s0)
/* A3D4C 800ED98C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3D50 800ED990 8FB00010 */  lw         $s0, 0x10($sp)
/* A3D54 800ED994 03E00008 */  jr         $ra
/* A3D58 800ED998 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800ED99C
/* A3D5C 800ED99C 27BDFF68 */  addiu      $sp, $sp, -0x98
/* A3D60 800ED9A0 AFB20088 */  sw         $s2, 0x88($sp)
/* A3D64 800ED9A4 00809021 */  addu       $s2, $a0, $zero
/* A3D68 800ED9A8 AFB3008C */  sw         $s3, 0x8C($sp)
/* A3D6C 800ED9AC AFBF0090 */  sw         $ra, 0x90($sp)
/* A3D70 800ED9B0 AFB10084 */  sw         $s1, 0x84($sp)
/* A3D74 800ED9B4 AFB00080 */  sw         $s0, 0x80($sp)
/* A3D78 800ED9B8 8E43000C */  lw         $v1, 0xC($s2)
/* A3D7C 800ED9BC 24020001 */  addiu      $v0, $zero, 0x1
/* A3D80 800ED9C0 1062007A */  beq        $v1, $v0, .Lrace_800EDBAC
/* A3D84 800ED9C4 00A09821 */   addu      $s3, $a1, $zero
/* A3D88 800ED9C8 0C03A1C4 */  jal        func_race_800E8710
/* A3D8C 800ED9CC 26510038 */   addiu     $s1, $s2, 0x38
/* A3D90 800ED9D0 8E220004 */  lw         $v0, 0x4($s1)
/* A3D94 800ED9D4 10400020 */  beqz       $v0, .Lrace_800EDA58
/* A3D98 800ED9D8 02202021 */   addu      $a0, $s1, $zero
/* A3D9C 800ED9DC 0C040E56 */  jal        func_race_80103958
/* A3DA0 800ED9E0 02602821 */   addu      $a1, $s3, $zero
/* A3DA4 800ED9E4 24030003 */  addiu      $v1, $zero, 0x3
/* A3DA8 800ED9E8 1443001C */  bne        $v0, $v1, .Lrace_800EDA5C
/* A3DAC 800ED9EC 26500038 */   addiu     $s0, $s2, 0x38
/* A3DB0 800ED9F0 27B00018 */  addiu      $s0, $sp, 0x18
/* A3DB4 800ED9F4 02002821 */  addu       $a1, $s0, $zero
/* A3DB8 800ED9F8 00003021 */  addu       $a2, $zero, $zero
/* A3DBC 800ED9FC 8E480060 */  lw         $t0, 0x60($s2)
/* A3DC0 800EDA00 8E490064 */  lw         $t1, 0x64($s2)
/* A3DC4 800EDA04 8E4A0068 */  lw         $t2, 0x68($s2)
/* A3DC8 800EDA08 AFA80018 */  sw         $t0, 0x18($sp)
/* A3DCC 800EDA0C AFA9001C */  sw         $t1, 0x1C($sp)
/* A3DD0 800EDA10 AFAA0020 */  sw         $t2, 0x20($sp)
/* A3DD4 800EDA14 8E440110 */  lw         $a0, 0x110($s2)
/* A3DD8 800EDA18 0C04B2F1 */  jal        func_race_8012CBC4
/* A3DDC 800EDA1C 00C03821 */   addu      $a3, $a2, $zero
/* A3DE0 800EDA20 0C040E4A */  jal        func_race_80103928
/* A3DE4 800EDA24 02202021 */   addu      $a0, $s1, $zero
/* A3DE8 800EDA28 24050007 */  addiu      $a1, $zero, 0x7
/* A3DEC 800EDA2C 00A03021 */  addu       $a2, $a1, $zero
/* A3DF0 800EDA30 8E440004 */  lw         $a0, 0x4($s2)
/* A3DF4 800EDA34 0C036D74 */  jal        func_race_800DB5D0
/* A3DF8 800EDA38 02003821 */   addu      $a3, $s0, $zero
/* A3DFC 800EDA3C 8E450120 */  lw         $a1, 0x120($s2)
/* A3E00 800EDA40 10A00006 */  beqz       $a1, .Lrace_800EDA5C
/* A3E04 800EDA44 26500038 */   addiu     $s0, $s2, 0x38
/* A3E08 800EDA48 8E44011C */  lw         $a0, 0x11C($s2)
/* A3E0C 800EDA4C 0C034F7B */  jal        func_race_800D3DEC
/* A3E10 800EDA50 00000000 */   nop
/* A3E14 800EDA54 AE400120 */  sw         $zero, 0x120($s2)
.Lrace_800EDA58:
/* A3E18 800EDA58 26500038 */  addiu      $s0, $s2, 0x38
.Lrace_800EDA5C:
/* A3E1C 800EDA5C 8E020004 */  lw         $v0, 0x4($s0)
/* A3E20 800EDA60 14400006 */  bnez       $v0, .Lrace_800EDA7C
/* A3E24 800EDA64 00002821 */   addu      $a1, $zero, $zero
/* A3E28 800EDA68 8E420000 */  lw         $v0, 0x0($s2)
/* A3E2C 800EDA6C 84440018 */  lh         $a0, 0x18($v0)
/* A3E30 800EDA70 8C42001C */  lw         $v0, 0x1C($v0)
/* A3E34 800EDA74 0040F809 */  jalr       $v0
/* A3E38 800EDA78 02442021 */   addu      $a0, $s2, $a0
.Lrace_800EDA7C:
/* A3E3C 800EDA7C 8E420120 */  lw         $v0, 0x120($s2)
/* A3E40 800EDA80 1040004A */  beqz       $v0, .Lrace_800EDBAC
/* A3E44 800EDA84 00000000 */   nop
/* A3E48 800EDA88 8E040008 */  lw         $a0, 0x8($s0)
/* A3E4C 800EDA8C 0C0165A4 */  jal        func_80059690
/* A3E50 800EDA90 27A50018 */   addiu     $a1, $sp, 0x18
/* A3E54 800EDA94 02002021 */  addu       $a0, $s0, $zero
/* A3E58 800EDA98 0C040ED8 */  jal        func_race_80103B60
/* A3E5C 800EDA9C 27A50058 */   addiu     $a1, $sp, 0x58
/* A3E60 800EDAA0 C7A0005C */  lwc1       $f0, 0x5C($sp)
/* A3E64 800EDAA4 44802000 */  mtc1       $zero, $f4
/* A3E68 800EDAA8 C7A20058 */  lwc1       $f2, 0x58($sp)
/* A3E6C 800EDAAC 46040032 */  c.eq.s     $f0, $f4
/* A3E70 800EDAB0 46001087 */  neg.s      $f2, $f2
/* A3E74 800EDAB4 E7A00068 */  swc1       $f0, 0x68($sp)
/* A3E78 800EDAB8 45000005 */  bc1f       .Lrace_800EDAD0
/* A3E7C 800EDABC E7A2006C */   swc1      $f2, 0x6C($sp)
/* A3E80 800EDAC0 46041032 */  c.eq.s     $f2, $f4
/* A3E84 800EDAC4 00000000 */  nop
/* A3E88 800EDAC8 45010038 */  bc1t       .Lrace_800EDBAC
/* A3E8C 800EDACC 00000000 */   nop
.Lrace_800EDAD0:
/* A3E90 800EDAD0 27A40068 */  addiu      $a0, $sp, 0x68
/* A3E94 800EDAD4 0C000EFC */  jal        func_80003BF0
/* A3E98 800EDAD8 00802821 */   addu      $a1, $a0, $zero
/* A3E9C 800EDADC 3C01800D */  lui        $at, %hi(D_race_800CC480)
/* A3EA0 800EDAE0 C42AC480 */  lwc1       $f10, %lo(D_race_800CC480)($at)
/* A3EA4 800EDAE4 C7A60068 */  lwc1       $f6, 0x68($sp)
/* A3EA8 800EDAE8 460A3182 */  mul.s      $f6, $f6, $f10
/* A3EAC 800EDAEC C7A4006C */  lwc1       $f4, 0x6C($sp)
/* A3EB0 800EDAF0 460A2102 */  mul.s      $f4, $f4, $f10
/* A3EB4 800EDAF4 3C01800D */  lui        $at, %hi(D_race_800CC484)
/* A3EB8 800EDAF8 C42CC484 */  lwc1       $f12, %lo(D_race_800CC484)($at)
/* A3EBC 800EDAFC 460C3382 */  mul.s      $f14, $f6, $f12
/* A3EC0 800EDB00 00000000 */  nop
/* A3EC4 800EDB04 460C2302 */  mul.s      $f12, $f4, $f12
/* A3EC8 800EDB08 C7A00020 */  lwc1       $f0, 0x20($sp)
/* A3ECC 800EDB0C 3C01800D */  lui        $at, %hi(D_race_800CC488)
/* A3ED0 800EDB10 C422C488 */  lwc1       $f2, %lo(D_race_800CC488)($at)
/* A3ED4 800EDB14 46020000 */  add.s      $f0, $f0, $f2
/* A3ED8 800EDB18 E7A00030 */  swc1       $f0, 0x30($sp)
/* A3EDC 800EDB1C 460A0001 */  sub.s      $f0, $f0, $f10
/* A3EE0 800EDB20 460A0280 */  add.s      $f10, $f0, $f10
/* A3EE4 800EDB24 C7A80018 */  lwc1       $f8, 0x18($sp)
/* A3EE8 800EDB28 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* A3EEC 800EDB2C 460E4201 */  sub.s      $f8, $f8, $f14
/* A3EF0 800EDB30 02602821 */  addu       $a1, $s3, $zero
/* A3EF4 800EDB34 E7A60068 */  swc1       $f6, 0x68($sp)
/* A3EF8 800EDB38 460C1081 */  sub.s      $f2, $f2, $f12
/* A3EFC 800EDB3C E7A4006C */  swc1       $f4, 0x6C($sp)
/* A3F00 800EDB40 E7A0003C */  swc1       $f0, 0x3C($sp)
/* A3F04 800EDB44 46064180 */  add.s      $f6, $f8, $f6
/* A3F08 800EDB48 E7A00048 */  swc1       $f0, 0x48($sp)
/* A3F0C 800EDB4C E7AA0054 */  swc1       $f10, 0x54($sp)
/* A3F10 800EDB50 46041100 */  add.s      $f4, $f2, $f4
/* A3F14 800EDB54 E7A80028 */  swc1       $f8, 0x28($sp)
/* A3F18 800EDB58 E7A2002C */  swc1       $f2, 0x2C($sp)
/* A3F1C 800EDB5C E7A80034 */  swc1       $f8, 0x34($sp)
/* A3F20 800EDB60 E7A20038 */  swc1       $f2, 0x38($sp)
/* A3F24 800EDB64 E7A60040 */  swc1       $f6, 0x40($sp)
/* A3F28 800EDB68 E7A40044 */  swc1       $f4, 0x44($sp)
/* A3F2C 800EDB6C E7A6004C */  swc1       $f6, 0x4C($sp)
/* A3F30 800EDB70 E7A40050 */  swc1       $f4, 0x50($sp)
/* A3F34 800EDB74 8FA80018 */  lw         $t0, 0x18($sp)
/* A3F38 800EDB78 8FA9001C */  lw         $t1, 0x1C($sp)
/* A3F3C 800EDB7C 8FAA0020 */  lw         $t2, 0x20($sp)
/* A3F40 800EDB80 AFA80070 */  sw         $t0, 0x70($sp)
/* A3F44 800EDB84 AFA90074 */  sw         $t1, 0x74($sp)
/* A3F48 800EDB88 AFAA0078 */  sw         $t2, 0x78($sp)
/* A3F4C 800EDB8C 8FA80074 */  lw         $t0, 0x74($sp)
/* A3F50 800EDB90 8FA90078 */  lw         $t1, 0x78($sp)
/* A3F54 800EDB94 AFA80010 */  sw         $t0, 0x10($sp)
/* A3F58 800EDB98 AFA90014 */  sw         $t1, 0x14($sp)
/* A3F5C 800EDB9C 8FA70070 */  lw         $a3, 0x70($sp)
/* A3F60 800EDBA0 8E440120 */  lw         $a0, 0x120($s2)
/* A3F64 800EDBA4 0C034BAF */  jal        func_race_800D2EBC
/* A3F68 800EDBA8 27A60028 */   addiu     $a2, $sp, 0x28
.Lrace_800EDBAC:
/* A3F6C 800EDBAC 8FBF0090 */  lw         $ra, 0x90($sp)
/* A3F70 800EDBB0 8FB3008C */  lw         $s3, 0x8C($sp)
/* A3F74 800EDBB4 8FB20088 */  lw         $s2, 0x88($sp)
/* A3F78 800EDBB8 8FB10084 */  lw         $s1, 0x84($sp)
/* A3F7C 800EDBBC 8FB00080 */  lw         $s0, 0x80($sp)
/* A3F80 800EDBC0 03E00008 */  jr         $ra
/* A3F84 800EDBC4 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_race_800EDBC8
/* A3F88 800EDBC8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A3F8C 800EDBCC AFB00020 */  sw         $s0, 0x20($sp)
/* A3F90 800EDBD0 00808021 */  addu       $s0, $a0, $zero
/* A3F94 800EDBD4 AFB10024 */  sw         $s1, 0x24($sp)
/* A3F98 800EDBD8 AFBF0028 */  sw         $ra, 0x28($sp)
/* A3F9C 800EDBDC 8E02000C */  lw         $v0, 0xC($s0)
/* A3FA0 800EDBE0 24030001 */  addiu      $v1, $zero, 0x1
/* A3FA4 800EDBE4 10430014 */  beq        $v0, $v1, .Lrace_800EDC38
/* A3FA8 800EDBE8 00A08821 */   addu      $s1, $a1, $zero
/* A3FAC 800EDBEC 8E02003C */  lw         $v0, 0x3C($s0)
/* A3FB0 800EDBF0 14430011 */  bne        $v0, $v1, .Lrace_800EDC38
/* A3FB4 800EDBF4 00000000 */   nop
/* A3FB8 800EDBF8 26040010 */  addiu      $a0, $s0, 0x10
/* A3FBC 800EDBFC 0C0165A4 */  jal        func_80059690
/* A3FC0 800EDC00 27A50010 */   addiu     $a1, $sp, 0x10
/* A3FC4 800EDC04 8E030114 */  lw         $v1, 0x114($s0)
/* A3FC8 800EDC08 8C620024 */  lw         $v0, 0x24($v1)
/* A3FCC 800EDC0C 27A50010 */  addiu      $a1, $sp, 0x10
/* A3FD0 800EDC10 84440018 */  lh         $a0, 0x18($v0)
/* A3FD4 800EDC14 8C42001C */  lw         $v0, 0x1C($v0)
/* A3FD8 800EDC18 0040F809 */  jalr       $v0
/* A3FDC 800EDC1C 00642021 */   addu      $a0, $v1, $a0
/* A3FE0 800EDC20 8E22012C */  lw         $v0, 0x12C($s1)
/* A3FE4 800EDC24 8E050114 */  lw         $a1, 0x114($s0)
/* A3FE8 800EDC28 84440168 */  lh         $a0, 0x168($v0)
/* A3FEC 800EDC2C 8C42016C */  lw         $v0, 0x16C($v0)
/* A3FF0 800EDC30 0040F809 */  jalr       $v0
/* A3FF4 800EDC34 02242021 */   addu      $a0, $s1, $a0
.Lrace_800EDC38:
/* A3FF8 800EDC38 8FBF0028 */  lw         $ra, 0x28($sp)
/* A3FFC 800EDC3C 8FB10024 */  lw         $s1, 0x24($sp)
/* A4000 800EDC40 8FB00020 */  lw         $s0, 0x20($sp)
/* A4004 800EDC44 03E00008 */  jr         $ra
/* A4008 800EDC48 27BD0030 */   addiu     $sp, $sp, 0x30
