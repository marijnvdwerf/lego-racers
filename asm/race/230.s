.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E3730
/* 99AF0 800E3730 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 99AF4 800E3734 AFB00010 */  sw         $s0, 0x10($sp)
/* 99AF8 800E3738 00808021 */  addu       $s0, $a0, $zero
/* 99AFC 800E373C 3C02800D */  lui        $v0, %hi(D_race_800CB8B0)
/* 99B00 800E3740 2442B8B0 */  addiu      $v0, $v0, %lo(D_race_800CB8B0)
/* 99B04 800E3744 AFBF0014 */  sw         $ra, 0x14($sp)
/* 99B08 800E3748 AE020000 */  sw         $v0, 0x0($s0)
/* 99B0C 800E374C AE000004 */  sw         $zero, 0x4($s0)
/* 99B10 800E3750 AE000008 */  sw         $zero, 0x8($s0)
/* 99B14 800E3754 AE00000C */  sw         $zero, 0xC($s0)
/* 99B18 800E3758 AE000010 */  sw         $zero, 0x10($s0)
/* 99B1C 800E375C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 99B20 800E3760 A60001B8 */  sh         $zero, 0x1B8($s0)
/* 99B24 800E3764 A60201BA */  sh         $v0, 0x1BA($s0)
/* 99B28 800E3768 3C02800E */  lui        $v0, %hi(func_race_800E43A4)
/* 99B2C 800E376C 244243A4 */  addiu      $v0, $v0, %lo(func_race_800E43A4)
/* 99B30 800E3770 26040038 */  addiu      $a0, $s0, 0x38
/* 99B34 800E3774 00002821 */  addu       $a1, $zero, $zero
/* 99B38 800E3778 3C01800D */  lui        $at, %hi(D_race_800CB830)
/* 99B3C 800E377C C420B830 */  lwc1       $f0, %lo(D_race_800CB830)($at)
/* 99B40 800E3780 24060180 */  addiu      $a2, $zero, 0x180
/* 99B44 800E3784 AE0201BC */  sw         $v0, 0x1BC($s0)
/* 99B48 800E3788 AE000014 */  sw         $zero, 0x14($s0)
/* 99B4C 800E378C AE000018 */  sw         $zero, 0x18($s0)
/* 99B50 800E3790 AE00001C */  sw         $zero, 0x1C($s0)
/* 99B54 800E3794 AE000030 */  sw         $zero, 0x30($s0)
/* 99B58 800E3798 AE000034 */  sw         $zero, 0x34($s0)
/* 99B5C 800E379C AE000028 */  sw         $zero, 0x28($s0)
/* 99B60 800E37A0 AE00002C */  sw         $zero, 0x2C($s0)
/* 99B64 800E37A4 E6000020 */  swc1       $f0, 0x20($s0)
/* 99B68 800E37A8 0C000697 */  jal        func_80001A5C
/* 99B6C 800E37AC E6000024 */   swc1      $f0, 0x24($s0)
/* 99B70 800E37B0 02001021 */  addu       $v0, $s0, $zero
/* 99B74 800E37B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 99B78 800E37B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 99B7C 800E37BC 03E00008 */  jr         $ra
/* 99B80 800E37C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E37C4
/* 99B84 800E37C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 99B88 800E37C8 AFB10014 */  sw         $s1, 0x14($sp)
/* 99B8C 800E37CC 00808821 */  addu       $s1, $a0, $zero
/* 99B90 800E37D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 99B94 800E37D4 00A08021 */  addu       $s0, $a1, $zero
/* 99B98 800E37D8 3C02800D */  lui        $v0, %hi(D_race_800CB8B0)
/* 99B9C 800E37DC 2442B8B0 */  addiu      $v0, $v0, %lo(D_race_800CB8B0)
/* 99BA0 800E37E0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 99BA4 800E37E4 0C038E31 */  jal        func_race_800E38C4
/* 99BA8 800E37E8 AE220000 */   sw        $v0, 0x0($s1)
/* 99BAC 800E37EC 32100001 */  andi       $s0, $s0, 0x1
/* 99BB0 800E37F0 12000003 */  beqz       $s0, .Lrace_800E3800
/* 99BB4 800E37F4 00000000 */   nop
/* 99BB8 800E37F8 0C01FB5C */  jal        func_8007ED70
/* 99BBC 800E37FC 02202021 */   addu      $a0, $s1, $zero
.Lrace_800E3800:
/* 99BC0 800E3800 8FBF0018 */  lw         $ra, 0x18($sp)
/* 99BC4 800E3804 8FB10014 */  lw         $s1, 0x14($sp)
/* 99BC8 800E3808 8FB00010 */  lw         $s0, 0x10($sp)
/* 99BCC 800E380C 03E00008 */  jr         $ra
/* 99BD0 800E3810 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E3814
/* 99BD4 800E3814 AC850004 */  sw         $a1, 0x4($a0)
/* 99BD8 800E3818 AC860008 */  sw         $a2, 0x8($a0)
/* 99BDC 800E381C 94C30016 */  lhu        $v1, 0x16($a2)
/* 99BE0 800E3820 24020008 */  addiu      $v0, $zero, 0x8
/* 99BE4 800E3824 10620012 */  beq        $v1, $v0, .Lrace_800E3870
/* 99BE8 800E3828 2402FFFF */   addiu     $v0, $zero, -0x1
/* 99BEC 800E382C 2C620009 */  sltiu      $v0, $v1, 0x9
/* 99BF0 800E3830 10400005 */  beqz       $v0, .Lrace_800E3848
/* 99BF4 800E3834 24020004 */   addiu     $v0, $zero, 0x4
/* 99BF8 800E3838 10620008 */  beq        $v1, $v0, .Lrace_800E385C
/* 99BFC 800E383C 2402FFFF */   addiu     $v0, $zero, -0x1
/* 99C00 800E3840 08038E26 */  j          .Lrace_800E3898
/* 99C04 800E3844 00000000 */   nop
.Lrace_800E3848:
/* 99C08 800E3848 24020010 */  addiu      $v0, $zero, 0x10
/* 99C0C 800E384C 1062000D */  beq        $v1, $v0, .Lrace_800E3884
/* 99C10 800E3850 2402FFFF */   addiu     $v0, $zero, -0x1
/* 99C14 800E3854 08038E26 */  j          .Lrace_800E3898
/* 99C18 800E3858 00000000 */   nop
.Lrace_800E385C:
/* 99C1C 800E385C A48001B8 */  sh         $zero, 0x1B8($a0)
/* 99C20 800E3860 A48201BA */  sh         $v0, 0x1BA($a0)
/* 99C24 800E3864 3C02800E */  lui        $v0, %hi(func_race_800E3E9C)
/* 99C28 800E3868 08038E25 */  j          .Lrace_800E3894
/* 99C2C 800E386C 24423E9C */   addiu     $v0, $v0, %lo(func_race_800E3E9C)
.Lrace_800E3870:
/* 99C30 800E3870 A48001B8 */  sh         $zero, 0x1B8($a0)
/* 99C34 800E3874 A48201BA */  sh         $v0, 0x1BA($a0)
/* 99C38 800E3878 3C02800E */  lui        $v0, %hi(func_race_800E43A4)
/* 99C3C 800E387C 08038E25 */  j          .Lrace_800E3894
/* 99C40 800E3880 244243A4 */   addiu     $v0, $v0, %lo(func_race_800E43A4)
.Lrace_800E3884:
/* 99C44 800E3884 A48001B8 */  sh         $zero, 0x1B8($a0)
/* 99C48 800E3888 A48201BA */  sh         $v0, 0x1BA($a0)
/* 99C4C 800E388C 3C02800E */  lui        $v0, %hi(func_race_800E4880)
/* 99C50 800E3890 24424880 */  addiu      $v0, $v0, %lo(func_race_800E4880)
.Lrace_800E3894:
/* 99C54 800E3894 AC8201BC */  sw         $v0, 0x1BC($a0)
.Lrace_800E3898:
/* 99C58 800E3898 8C820008 */  lw         $v0, 0x8($a0)
/* 99C5C 800E389C 94420026 */  lhu        $v0, 0x26($v0)
/* 99C60 800E38A0 8C830008 */  lw         $v1, 0x8($a0)
/* 99C64 800E38A4 44820000 */  mtc1       $v0, $f0
/* 99C68 800E38A8 46800020 */  cvt.s.w    $f0, $f0
/* 99C6C 800E38AC E4800028 */  swc1       $f0, 0x28($a0)
/* 99C70 800E38B0 94620028 */  lhu        $v0, 0x28($v1)
/* 99C74 800E38B4 44820000 */  mtc1       $v0, $f0
/* 99C78 800E38B8 46800020 */  cvt.s.w    $f0, $f0
/* 99C7C 800E38BC 03E00008 */  jr         $ra
/* 99C80 800E38C0 E480002C */   swc1      $f0, 0x2C($a0)

glabel func_race_800E38C4
/* 99C84 800E38C4 AC800004 */  sw         $zero, 0x4($a0)
/* 99C88 800E38C8 AC800008 */  sw         $zero, 0x8($a0)
/* 99C8C 800E38CC AC80000C */  sw         $zero, 0xC($a0)
/* 99C90 800E38D0 AC800010 */  sw         $zero, 0x10($a0)
/* 99C94 800E38D4 AC800030 */  sw         $zero, 0x30($a0)
/* 99C98 800E38D8 03E00008 */  jr         $ra
/* 99C9C 800E38DC AC800034 */   sw        $zero, 0x34($a0)

glabel func_race_800E38E0
/* 99CA0 800E38E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 99CA4 800E38E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 99CA8 800E38E8 00808021 */  addu       $s0, $a0, $zero
/* 99CAC 800E38EC AFBF0018 */  sw         $ra, 0x18($sp)
/* 99CB0 800E38F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 99CB4 800E38F4 8E040008 */  lw         $a0, 0x8($s0)
/* 99CB8 800E38F8 94820014 */  lhu        $v0, 0x14($a0)
/* 99CBC 800E38FC 10400012 */  beqz       $v0, .Lrace_800E3948
/* 99CC0 800E3900 00A08821 */   addu      $s1, $a1, $zero
/* 99CC4 800E3904 00801821 */  addu       $v1, $a0, $zero
/* 99CC8 800E3908 AE00000C */  sw         $zero, 0xC($s0)
/* 99CCC 800E390C 8C62002C */  lw         $v0, 0x2C($v1)
/* 99CD0 800E3910 84440040 */  lh         $a0, 0x40($v0)
/* 99CD4 800E3914 8C420044 */  lw         $v0, 0x44($v0)
/* 99CD8 800E3918 0040F809 */  jalr       $v0
/* 99CDC 800E391C 00642021 */   addu      $a0, $v1, $a0
/* 99CE0 800E3920 8C430000 */  lw         $v1, 0x0($v0)
/* 99CE4 800E3924 02202821 */  addu       $a1, $s1, $zero
/* 99CE8 800E3928 84640010 */  lh         $a0, 0x10($v1)
/* 99CEC 800E392C 00003021 */  addu       $a2, $zero, $zero
/* 99CF0 800E3930 00442021 */  addu       $a0, $v0, $a0
/* 99CF4 800E3934 8C620014 */  lw         $v0, 0x14($v1)
/* 99CF8 800E3938 0040F809 */  jalr       $v0
/* 99CFC 800E393C 24070001 */   addiu     $a3, $zero, 0x1
/* 99D00 800E3940 08038E55 */  j          .Lrace_800E3954
/* 99D04 800E3944 00000000 */   nop
.Lrace_800E3948:
/* 99D08 800E3948 0C012C78 */  jal        func_8004B1E0
/* 99D0C 800E394C 02202821 */   addu      $a1, $s1, $zero
/* 99D10 800E3950 AE02000C */  sw         $v0, 0xC($s0)
.Lrace_800E3954:
/* 99D14 800E3954 8FBF0018 */  lw         $ra, 0x18($sp)
/* 99D18 800E3958 8FB10014 */  lw         $s1, 0x14($sp)
/* 99D1C 800E395C 8FB00010 */  lw         $s0, 0x10($sp)
/* 99D20 800E3960 03E00008 */  jr         $ra
/* 99D24 800E3964 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E3968
/* 99D28 800E3968 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 99D2C 800E396C AFB00010 */  sw         $s0, 0x10($sp)
/* 99D30 800E3970 00808021 */  addu       $s0, $a0, $zero
/* 99D34 800E3974 AFBF0018 */  sw         $ra, 0x18($sp)
/* 99D38 800E3978 AFB10014 */  sw         $s1, 0x14($sp)
/* 99D3C 800E397C 8E040008 */  lw         $a0, 0x8($s0)
/* 99D40 800E3980 94820014 */  lhu        $v0, 0x14($a0)
/* 99D44 800E3984 10400013 */  beqz       $v0, .Lrace_800E39D4
/* 99D48 800E3988 00A08821 */   addu      $s1, $a1, $zero
/* 99D4C 800E398C 00801821 */  addu       $v1, $a0, $zero
/* 99D50 800E3990 24020001 */  addiu      $v0, $zero, 0x1
/* 99D54 800E3994 AE020010 */  sw         $v0, 0x10($s0)
/* 99D58 800E3998 8C62002C */  lw         $v0, 0x2C($v1)
/* 99D5C 800E399C 84440040 */  lh         $a0, 0x40($v0)
/* 99D60 800E39A0 8C420044 */  lw         $v0, 0x44($v0)
/* 99D64 800E39A4 0040F809 */  jalr       $v0
/* 99D68 800E39A8 00642021 */   addu      $a0, $v1, $a0
/* 99D6C 800E39AC 8C430000 */  lw         $v1, 0x0($v0)
/* 99D70 800E39B0 02202821 */  addu       $a1, $s1, $zero
/* 99D74 800E39B4 84640010 */  lh         $a0, 0x10($v1)
/* 99D78 800E39B8 24060001 */  addiu      $a2, $zero, 0x1
/* 99D7C 800E39BC 00442021 */  addu       $a0, $v0, $a0
/* 99D80 800E39C0 8C620014 */  lw         $v0, 0x14($v1)
/* 99D84 800E39C4 0040F809 */  jalr       $v0
/* 99D88 800E39C8 00C03821 */   addu      $a3, $a2, $zero
/* 99D8C 800E39CC 08038E78 */  j          .Lrace_800E39E0
/* 99D90 800E39D0 00000000 */   nop
.Lrace_800E39D4:
/* 99D94 800E39D4 0C012C78 */  jal        func_8004B1E0
/* 99D98 800E39D8 02202821 */   addu      $a1, $s1, $zero
/* 99D9C 800E39DC AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800E39E0:
/* 99DA0 800E39E0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 99DA4 800E39E4 8FB10014 */  lw         $s1, 0x14($sp)
/* 99DA8 800E39E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 99DAC 800E39EC 03E00008 */  jr         $ra
/* 99DB0 800E39F0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E39F4
/* 99DB4 800E39F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 99DB8 800E39F8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 99DBC 800E39FC AFB10014 */  sw         $s1, 0x14($sp)
/* 99DC0 800E3A00 AFB00010 */  sw         $s0, 0x10($sp)
/* 99DC4 800E3A04 8C830008 */  lw         $v1, 0x8($a0)
/* 99DC8 800E3A08 00A08821 */  addu       $s1, $a1, $zero
/* 99DCC 800E3A0C 94620014 */  lhu        $v0, 0x14($v1)
/* 99DD0 800E3A10 14400006 */  bnez       $v0, .Lrace_800E3A2C
/* 99DD4 800E3A14 00C08021 */   addu      $s0, $a2, $zero
/* 99DD8 800E3A18 00602021 */  addu       $a0, $v1, $zero
/* 99DDC 800E3A1C 0C012C78 */  jal        func_8004B1E0
/* 99DE0 800E3A20 02002821 */   addu      $a1, $s0, $zero
/* 99DE4 800E3A24 08038E99 */  j          .Lrace_800E3A64
/* 99DE8 800E3A28 00000000 */   nop
.Lrace_800E3A2C:
/* 99DEC 800E3A2C 8C62002C */  lw         $v0, 0x2C($v1)
/* 99DF0 800E3A30 84440040 */  lh         $a0, 0x40($v0)
/* 99DF4 800E3A34 8C420044 */  lw         $v0, 0x44($v0)
/* 99DF8 800E3A38 0040F809 */  jalr       $v0
/* 99DFC 800E3A3C 00642021 */   addu      $a0, $v1, $a0
/* 99E00 800E3A40 8C430000 */  lw         $v1, 0x0($v0)
/* 99E04 800E3A44 02002821 */  addu       $a1, $s0, $zero
/* 99E08 800E3A48 84640010 */  lh         $a0, 0x10($v1)
/* 99E0C 800E3A4C 02203021 */  addu       $a2, $s1, $zero
/* 99E10 800E3A50 00442021 */  addu       $a0, $v0, $a0
/* 99E14 800E3A54 8C620014 */  lw         $v0, 0x14($v1)
/* 99E18 800E3A58 0040F809 */  jalr       $v0
/* 99E1C 800E3A5C 24070001 */   addiu     $a3, $zero, 0x1
/* 99E20 800E3A60 02201021 */  addu       $v0, $s1, $zero
.Lrace_800E3A64:
/* 99E24 800E3A64 8FBF0018 */  lw         $ra, 0x18($sp)
/* 99E28 800E3A68 8FB10014 */  lw         $s1, 0x14($sp)
/* 99E2C 800E3A6C 8FB00010 */  lw         $s0, 0x10($sp)
/* 99E30 800E3A70 03E00008 */  jr         $ra
/* 99E34 800E3A74 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E3A78
/* 99E38 800E3A78 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 99E3C 800E3A7C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 99E40 800E3A80 4486A000 */  mtc1       $a2, $f20
/* 99E44 800E3A84 3C028013 */  lui        $v0, %hi(D_race_80132100)
/* 99E48 800E3A88 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 99E4C 800E3A8C 4487B000 */  mtc1       $a3, $f22
/* 99E50 800E3A90 8FA30040 */  lw         $v1, 0x40($sp)
/* 99E54 800E3A94 8C422100 */  lw         $v0, %lo(D_race_80132100)($v0)
/* 99E58 800E3A98 AFB00010 */  sw         $s0, 0x10($sp)
/* 99E5C 800E3A9C 00808021 */  addu       $s0, $a0, $zero
/* 99E60 800E3AA0 AFB10014 */  sw         $s1, 0x14($sp)
/* 99E64 800E3AA4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 99E68 800E3AA8 AE030014 */  sw         $v1, 0x14($s0)
/* 99E6C 800E3AAC 00621824 */  and        $v1, $v1, $v0
/* 99E70 800E3AB0 10600008 */  beqz       $v1, .Lrace_800E3AD4
/* 99E74 800E3AB4 00A08821 */   addu      $s1, $a1, $zero
/* 99E78 800E3AB8 8E030008 */  lw         $v1, 0x8($s0)
/* 99E7C 800E3ABC 8C62002C */  lw         $v0, 0x2C($v1)
/* 99E80 800E3AC0 8E05000C */  lw         $a1, 0xC($s0)
/* 99E84 800E3AC4 84440048 */  lh         $a0, 0x48($v0)
/* 99E88 800E3AC8 8C42004C */  lw         $v0, 0x4C($v0)
/* 99E8C 800E3ACC 0040F809 */  jalr       $v0
/* 99E90 800E3AD0 00642021 */   addu      $a0, $v1, $a0
.Lrace_800E3AD4:
/* 99E94 800E3AD4 8E020008 */  lw         $v0, 0x8($s0)
/* 99E98 800E3AD8 8C43002C */  lw         $v1, 0x2C($v0)
/* 99E9C 800E3ADC 26050030 */  addiu      $a1, $s0, 0x30
/* 99EA0 800E3AE0 84640010 */  lh         $a0, 0x10($v1)
/* 99EA4 800E3AE4 26060034 */  addiu      $a2, $s0, 0x34
/* 99EA8 800E3AE8 00442021 */  addu       $a0, $v0, $a0
/* 99EAC 800E3AEC 8C620014 */  lw         $v0, 0x14($v1)
/* 99EB0 800E3AF0 0040F809 */  jalr       $v0
/* 99EB4 800E3AF4 24070003 */   addiu     $a3, $zero, 0x3
/* 99EB8 800E3AF8 3C01800D */  lui        $at, %hi(D_race_800CB834)
/* 99EBC 800E3AFC C426B834 */  lwc1       $f6, %lo(D_race_800CB834)($at)
/* 99EC0 800E3B00 4606A082 */  mul.s      $f2, $f20, $f6
/* 99EC4 800E3B04 C6200000 */  lwc1       $f0, 0x0($s1)
/* 99EC8 800E3B08 46000007 */  neg.s      $f0, $f0
/* 99ECC 800E3B0C 46020000 */  add.s      $f0, $f0, $f2
/* 99ED0 800E3B10 C6040028 */  lwc1       $f4, 0x28($s0)
/* 99ED4 800E3B14 4606B182 */  mul.s      $f6, $f22, $f6
/* 99ED8 800E3B18 46142103 */  div.s      $f4, $f4, $f20
/* 99EDC 800E3B1C E6000018 */  swc1       $f0, 0x18($s0)
/* 99EE0 800E3B20 C6220004 */  lwc1       $f2, 0x4($s1)
/* 99EE4 800E3B24 C600002C */  lwc1       $f0, 0x2C($s0)
/* 99EE8 800E3B28 46001087 */  neg.s      $f2, $f2
/* 99EEC 800E3B2C 46061081 */  sub.s      $f2, $f2, $f6
/* 99EF0 800E3B30 E6040020 */  swc1       $f4, 0x20($s0)
/* 99EF4 800E3B34 46160003 */  div.s      $f0, $f0, $f22
/* 99EF8 800E3B38 46000007 */  neg.s      $f0, $f0
/* 99EFC 800E3B3C E6000024 */  swc1       $f0, 0x24($s0)
/* 99F00 800E3B40 E602001C */  swc1       $f2, 0x1C($s0)
/* 99F04 800E3B44 8FBF0018 */  lw         $ra, 0x18($sp)
/* 99F08 800E3B48 8FB10014 */  lw         $s1, 0x14($sp)
/* 99F0C 800E3B4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 99F10 800E3B50 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 99F14 800E3B54 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 99F18 800E3B58 03E00008 */  jr         $ra
/* 99F1C 800E3B5C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800E3B60
/* 99F20 800E3B60 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 99F24 800E3B64 AFB1003C */  sw         $s1, 0x3C($sp)
/* 99F28 800E3B68 00808821 */  addu       $s1, $a0, $zero
/* 99F2C 800E3B6C AFB00038 */  sw         $s0, 0x38($sp)
/* 99F30 800E3B70 00A08021 */  addu       $s0, $a1, $zero
/* 99F34 800E3B74 AFB20040 */  sw         $s2, 0x40($sp)
/* 99F38 800E3B78 3C128013 */  lui        $s2, %hi(D_race_80132104)
/* 99F3C 800E3B7C AFBF0048 */  sw         $ra, 0x48($sp)
/* 99F40 800E3B80 AFB30044 */  sw         $s3, 0x44($sp)
/* 99F44 800E3B84 8E220014 */  lw         $v0, 0x14($s1)
/* 99F48 800E3B88 8E432104 */  lw         $v1, %lo(D_race_80132104)($s2)
/* 99F4C 800E3B8C 00431024 */  and        $v0, $v0, $v1
/* 99F50 800E3B90 1040000E */  beqz       $v0, .Lrace_800E3BCC
/* 99F54 800E3B94 00C09821 */   addu      $s3, $a2, $zero
/* 99F58 800E3B98 8E020024 */  lw         $v0, 0x24($s0)
/* 99F5C 800E3B9C 27A50010 */  addiu      $a1, $sp, 0x10
/* 99F60 800E3BA0 84440090 */  lh         $a0, 0x90($v0)
/* 99F64 800E3BA4 8C420094 */  lw         $v0, 0x94($v0)
/* 99F68 800E3BA8 0040F809 */  jalr       $v0
/* 99F6C 800E3BAC 02042021 */   addu      $a0, $s0, $a0
/* 99F70 800E3BB0 3C058013 */  lui        $a1, %hi(D_race_80132108)
/* 99F74 800E3BB4 8E020024 */  lw         $v0, 0x24($s0)
/* 99F78 800E3BB8 24A52108 */  addiu      $a1, $a1, %lo(D_race_80132108)
/* 99F7C 800E3BBC 84440098 */  lh         $a0, 0x98($v0)
/* 99F80 800E3BC0 8C42009C */  lw         $v0, 0x9C($v0)
/* 99F84 800E3BC4 0040F809 */  jalr       $v0
/* 99F88 800E3BC8 02042021 */   addu      $a0, $s0, $a0
.Lrace_800E3BCC:
/* 99F8C 800E3BCC 8E220004 */  lw         $v0, 0x4($s1)
/* 99F90 800E3BD0 8C43012C */  lw         $v1, 0x12C($v0)
/* 99F94 800E3BD4 02002821 */  addu       $a1, $s0, $zero
/* 99F98 800E3BD8 84640138 */  lh         $a0, 0x138($v1)
/* 99F9C 800E3BDC 02203021 */  addu       $a2, $s1, $zero
/* 99FA0 800E3BE0 00442021 */  addu       $a0, $v0, $a0
/* 99FA4 800E3BE4 8C62013C */  lw         $v0, 0x13C($v1)
/* 99FA8 800E3BE8 0040F809 */  jalr       $v0
/* 99FAC 800E3BEC 02603821 */   addu      $a3, $s3, $zero
/* 99FB0 800E3BF0 8E220014 */  lw         $v0, 0x14($s1)
/* 99FB4 800E3BF4 8E432104 */  lw         $v1, %lo(D_race_80132104)($s2)
/* 99FB8 800E3BF8 00431024 */  and        $v0, $v0, $v1
/* 99FBC 800E3BFC 10400006 */  beqz       $v0, .Lrace_800E3C18
/* 99FC0 800E3C00 27A50010 */   addiu     $a1, $sp, 0x10
/* 99FC4 800E3C04 8E020024 */  lw         $v0, 0x24($s0)
/* 99FC8 800E3C08 84440098 */  lh         $a0, 0x98($v0)
/* 99FCC 800E3C0C 8C42009C */  lw         $v0, 0x9C($v0)
/* 99FD0 800E3C10 0040F809 */  jalr       $v0
/* 99FD4 800E3C14 02042021 */   addu      $a0, $s0, $a0
.Lrace_800E3C18:
/* 99FD8 800E3C18 8FBF0048 */  lw         $ra, 0x48($sp)
/* 99FDC 800E3C1C 8FB30044 */  lw         $s3, 0x44($sp)
/* 99FE0 800E3C20 8FB20040 */  lw         $s2, 0x40($sp)
/* 99FE4 800E3C24 8FB1003C */  lw         $s1, 0x3C($sp)
/* 99FE8 800E3C28 8FB00038 */  lw         $s0, 0x38($sp)
/* 99FEC 800E3C2C 03E00008 */  jr         $ra
/* 99FF0 800E3C30 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800E3C34
/* 99FF4 800E3C34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 99FF8 800E3C38 AFB00010 */  sw         $s0, 0x10($sp)
/* 99FFC 800E3C3C 00808021 */  addu       $s0, $a0, $zero
/* 9A000 800E3C40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9A004 800E3C44 8E030008 */  lw         $v1, 0x8($s0)
/* 9A008 800E3C48 8C62002C */  lw         $v0, 0x2C($v1)
/* 9A00C 800E3C4C 84440018 */  lh         $a0, 0x18($v0)
/* 9A010 800E3C50 8C42001C */  lw         $v0, 0x1C($v0)
/* 9A014 800E3C54 0040F809 */  jalr       $v0
/* 9A018 800E3C58 00642021 */   addu      $a0, $v1, $a0
/* 9A01C 800E3C5C AE000030 */  sw         $zero, 0x30($s0)
/* 9A020 800E3C60 AE000034 */  sw         $zero, 0x34($s0)
/* 9A024 800E3C64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9A028 800E3C68 8FB00010 */  lw         $s0, 0x10($sp)
/* 9A02C 800E3C6C 03E00008 */  jr         $ra
/* 9A030 800E3C70 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E3C74
/* 9A034 800E3C74 00803021 */  addu       $a2, $a0, $zero
/* 9A038 800E3C78 8CA30010 */  lw         $v1, 0x10($a1)
/* 9A03C 800E3C7C 8CA4000C */  lw         $a0, 0xC($a1)
/* 9A040 800E3C80 00031140 */  sll        $v0, $v1, 5
/* 9A044 800E3C84 00822021 */  addu       $a0, $a0, $v0
/* 9A048 800E3C88 00031040 */  sll        $v0, $v1, 1
/* 9A04C 800E3C8C 00431021 */  addu       $v0, $v0, $v1
/* 9A050 800E3C90 00021080 */  sll        $v0, $v0, 2
/* 9A054 800E3C94 24420038 */  addiu      $v0, $v0, 0x38
/* 9A058 800E3C98 8CA30018 */  lw         $v1, 0x18($a1)
/* 9A05C 800E3C9C 00C22821 */  addu       $a1, $a2, $v0
/* 9A060 800E3CA0 00031940 */  sll        $v1, $v1, 5
/* 9A064 800E3CA4 00834021 */  addu       $t0, $a0, $v1
/* 9A068 800E3CA8 0088102B */  sltu       $v0, $a0, $t0
/* 9A06C 800E3CAC 10400027 */  beqz       $v0, .Lrace_800E3D4C
/* 9A070 800E3CB0 24070001 */   addiu     $a3, $zero, 0x1
/* 9A074 800E3CB4 44802000 */  mtc1       $zero, $f4
/* 9A078 800E3CB8 24A30008 */  addiu      $v1, $a1, 0x8
.Lrace_800E3CBC:
/* 9A07C 800E3CBC AC600000 */  sw         $zero, 0x0($v1)
/* 9A080 800E3CC0 C4800000 */  lwc1       $f0, 0x0($a0)
/* 9A084 800E3CC4 C4C20018 */  lwc1       $f2, 0x18($a2)
/* 9A088 800E3CC8 46020000 */  add.s      $f0, $f0, $f2
/* 9A08C 800E3CCC C4C20020 */  lwc1       $f2, 0x20($a2)
/* 9A090 800E3CD0 46020082 */  mul.s      $f2, $f0, $f2
/* 9A094 800E3CD4 4604103C */  c.lt.s     $f2, $f4
/* 9A098 800E3CD8 00000000 */  nop
/* 9A09C 800E3CDC 45010006 */  bc1t       .Lrace_800E3CF8
/* 9A0A0 800E3CE0 E4A20000 */   swc1      $f2, 0x0($a1)
/* 9A0A4 800E3CE4 C4C00028 */  lwc1       $f0, 0x28($a2)
/* 9A0A8 800E3CE8 4602003C */  c.lt.s     $f0, $f2
/* 9A0AC 800E3CEC 00000000 */  nop
/* 9A0B0 800E3CF0 45000002 */  bc1f       .Lrace_800E3CFC
/* 9A0B4 800E3CF4 00000000 */   nop
.Lrace_800E3CF8:
/* 9A0B8 800E3CF8 AC670000 */  sw         $a3, 0x0($v1)
.Lrace_800E3CFC:
/* 9A0BC 800E3CFC C4800004 */  lwc1       $f0, 0x4($a0)
/* 9A0C0 800E3D00 C4C2001C */  lwc1       $f2, 0x1C($a2)
/* 9A0C4 800E3D04 46020000 */  add.s      $f0, $f0, $f2
/* 9A0C8 800E3D08 C4C20024 */  lwc1       $f2, 0x24($a2)
/* 9A0CC 800E3D0C 46020082 */  mul.s      $f2, $f0, $f2
/* 9A0D0 800E3D10 4604103C */  c.lt.s     $f2, $f4
/* 9A0D4 800E3D14 00000000 */  nop
/* 9A0D8 800E3D18 45010006 */  bc1t       .Lrace_800E3D34
/* 9A0DC 800E3D1C E462FFFC */   swc1      $f2, -0x4($v1)
/* 9A0E0 800E3D20 C4C0002C */  lwc1       $f0, 0x2C($a2)
/* 9A0E4 800E3D24 4602003C */  c.lt.s     $f0, $f2
/* 9A0E8 800E3D28 00000000 */  nop
/* 9A0EC 800E3D2C 45020003 */  bc1fl      .Lrace_800E3D3C
/* 9A0F0 800E3D30 24840020 */   addiu     $a0, $a0, 0x20
.Lrace_800E3D34:
/* 9A0F4 800E3D34 AC670000 */  sw         $a3, 0x0($v1)
/* 9A0F8 800E3D38 24840020 */  addiu      $a0, $a0, 0x20
.Lrace_800E3D3C:
/* 9A0FC 800E3D3C 2463000C */  addiu      $v1, $v1, 0xC
/* 9A100 800E3D40 0088102B */  sltu       $v0, $a0, $t0
/* 9A104 800E3D44 1440FFDD */  bnez       $v0, .Lrace_800E3CBC
/* 9A108 800E3D48 24A5000C */   addiu     $a1, $a1, 0xC
.Lrace_800E3D4C:
/* 9A10C 800E3D4C 03E00008 */  jr         $ra
/* 9A110 800E3D50 00000000 */   nop

glabel func_race_800E3D54
/* 9A114 800E3D54 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 9A118 800E3D58 AFB10024 */  sw         $s1, 0x24($sp)
/* 9A11C 800E3D5C 00808821 */  addu       $s1, $a0, $zero
/* 9A120 800E3D60 AFBF0038 */  sw         $ra, 0x38($sp)
/* 9A124 800E3D64 AFB50034 */  sw         $s5, 0x34($sp)
/* 9A128 800E3D68 AFB40030 */  sw         $s4, 0x30($sp)
/* 9A12C 800E3D6C AFB3002C */  sw         $s3, 0x2C($sp)
/* 9A130 800E3D70 AFB20028 */  sw         $s2, 0x28($sp)
/* 9A134 800E3D74 AFB00020 */  sw         $s0, 0x20($sp)
/* 9A138 800E3D78 8CA30014 */  lw         $v1, 0x14($a1)
/* 9A13C 800E3D7C 8CA40010 */  lw         $a0, 0x10($a1)
/* 9A140 800E3D80 8CA20018 */  lw         $v0, 0x18($a1)
/* 9A144 800E3D84 00031880 */  sll        $v1, $v1, 2
/* 9A148 800E3D88 00839021 */  addu       $s2, $a0, $v1
/* 9A14C 800E3D8C 00021080 */  sll        $v0, $v0, 2
/* 9A150 800E3D90 02429821 */  addu       $s3, $s2, $v0
/* 9A154 800E3D94 0253102B */  sltu       $v0, $s2, $s3
/* 9A158 800E3D98 10400037 */  beqz       $v0, .Lrace_800E3E78
/* 9A15C 800E3D9C 26500001 */   addiu     $s0, $s2, 0x1
.Lrace_800E3DA0:
/* 9A160 800E3DA0 92020002 */  lbu        $v0, 0x2($s0)
/* 9A164 800E3DA4 00021840 */  sll        $v1, $v0, 1
/* 9A168 800E3DA8 00621821 */  addu       $v1, $v1, $v0
/* 9A16C 800E3DAC 00031880 */  sll        $v1, $v1, 2
/* 9A170 800E3DB0 24630038 */  addiu      $v1, $v1, 0x38
/* 9A174 800E3DB4 02231821 */  addu       $v1, $s1, $v1
/* 9A178 800E3DB8 AFA30010 */  sw         $v1, 0x10($sp)
/* 9A17C 800E3DBC 92020001 */  lbu        $v0, 0x1($s0)
/* 9A180 800E3DC0 26520004 */  addiu      $s2, $s2, 0x4
/* 9A184 800E3DC4 00022040 */  sll        $a0, $v0, 1
/* 9A188 800E3DC8 00822021 */  addu       $a0, $a0, $v0
/* 9A18C 800E3DCC 00042080 */  sll        $a0, $a0, 2
/* 9A190 800E3DD0 24840038 */  addiu      $a0, $a0, 0x38
/* 9A194 800E3DD4 02242021 */  addu       $a0, $s1, $a0
/* 9A198 800E3DD8 AFA40014 */  sw         $a0, 0x14($sp)
/* 9A19C 800E3DDC 92050000 */  lbu        $a1, 0x0($s0)
/* 9A1A0 800E3DE0 00051040 */  sll        $v0, $a1, 1
/* 9A1A4 800E3DE4 00451021 */  addu       $v0, $v0, $a1
/* 9A1A8 800E3DE8 00021080 */  sll        $v0, $v0, 2
/* 9A1AC 800E3DEC 24420038 */  addiu      $v0, $v0, 0x38
/* 9A1B0 800E3DF0 02221021 */  addu       $v0, $s1, $v0
/* 9A1B4 800E3DF4 AFA20018 */  sw         $v0, 0x18($sp)
/* 9A1B8 800E3DF8 8C630008 */  lw         $v1, 0x8($v1)
/* 9A1BC 800E3DFC 8C840008 */  lw         $a0, 0x8($a0)
/* 9A1C0 800E3E00 8C420008 */  lw         $v0, 0x8($v0)
/* 9A1C4 800E3E04 00641825 */  or         $v1, $v1, $a0
/* 9A1C8 800E3E08 00621825 */  or         $v1, $v1, $v0
/* 9A1CC 800E3E0C 14600017 */  bnez       $v1, .Lrace_800E3E6C
/* 9A1D0 800E3E10 26100004 */   addiu     $s0, $s0, 0x4
/* 9A1D4 800E3E14 862401BA */  lh         $a0, 0x1BA($s1)
/* 9A1D8 800E3E18 1880000A */  blez       $a0, .Lrace_800E3E44
/* 9A1DC 800E3E1C 00000000 */   nop
/* 9A1E0 800E3E20 862201BC */  lh         $v0, 0x1BC($s1)
/* 9A1E4 800E3E24 02221021 */  addu       $v0, $s1, $v0
/* 9A1E8 800E3E28 8C430000 */  lw         $v1, 0x0($v0)
/* 9A1EC 800E3E2C 000410C0 */  sll        $v0, $a0, 3
/* 9A1F0 800E3E30 00431021 */  addu       $v0, $v0, $v1
/* 9A1F4 800E3E34 8C54FFF8 */  lw         $s4, -0x8($v0)
/* 9A1F8 800E3E38 8C55FFFC */  lw         $s5, -0x4($v0)
/* 9A1FC 800E3E3C 08038F92 */  j          .Lrace_800E3E48
/* 9A200 800E3E40 02A03021 */   addu      $a2, $s5, $zero
.Lrace_800E3E44:
/* 9A204 800E3E44 8E2601BC */  lw         $a2, 0x1BC($s1)
.Lrace_800E3E48:
/* 9A208 800E3E48 862301B8 */  lh         $v1, 0x1B8($s1)
/* 9A20C 800E3E4C 18800003 */  blez       $a0, .Lrace_800E3E5C
/* 9A210 800E3E50 00141403 */   sra       $v0, $s4, 16
/* 9A214 800E3E54 08038F98 */  j          .Lrace_800E3E60
/* 9A218 800E3E58 00431021 */   addu      $v0, $v0, $v1
.Lrace_800E3E5C:
/* 9A21C 800E3E5C 00601021 */  addu       $v0, $v1, $zero
.Lrace_800E3E60:
/* 9A220 800E3E60 02222021 */  addu       $a0, $s1, $v0
/* 9A224 800E3E64 00C0F809 */  jalr       $a2
/* 9A228 800E3E68 27A50010 */   addiu     $a1, $sp, 0x10
.Lrace_800E3E6C:
/* 9A22C 800E3E6C 0253102B */  sltu       $v0, $s2, $s3
/* 9A230 800E3E70 1440FFCB */  bnez       $v0, .Lrace_800E3DA0
/* 9A234 800E3E74 00000000 */   nop
.Lrace_800E3E78:
/* 9A238 800E3E78 8FBF0038 */  lw         $ra, 0x38($sp)
/* 9A23C 800E3E7C 8FB50034 */  lw         $s5, 0x34($sp)
/* 9A240 800E3E80 8FB40030 */  lw         $s4, 0x30($sp)
/* 9A244 800E3E84 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9A248 800E3E88 8FB20028 */  lw         $s2, 0x28($sp)
/* 9A24C 800E3E8C 8FB10024 */  lw         $s1, 0x24($sp)
/* 9A250 800E3E90 8FB00020 */  lw         $s0, 0x20($sp)
/* 9A254 800E3E94 03E00008 */  jr         $ra
/* 9A258 800E3E98 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800E3E9C
/* 9A25C 800E3E9C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9A260 800E3EA0 AFB70024 */  sw         $s7, 0x24($sp)
/* 9A264 800E3EA4 0080B821 */  addu       $s7, $a0, $zero
/* 9A268 800E3EA8 AFB00008 */  sw         $s0, 0x8($sp)
/* 9A26C 800E3EAC 00A08021 */  addu       $s0, $a1, $zero
/* 9A270 800E3EB0 AFBE0028 */  sw         $fp, 0x28($sp)
/* 9A274 800E3EB4 AFB60020 */  sw         $s6, 0x20($sp)
/* 9A278 800E3EB8 AFB5001C */  sw         $s5, 0x1C($sp)
/* 9A27C 800E3EBC AFB40018 */  sw         $s4, 0x18($sp)
/* 9A280 800E3EC0 AFB30014 */  sw         $s3, 0x14($sp)
/* 9A284 800E3EC4 AFB20010 */  sw         $s2, 0x10($sp)
/* 9A288 800E3EC8 AFB1000C */  sw         $s1, 0xC($sp)
/* 9A28C 800E3ECC 8E020000 */  lw         $v0, 0x0($s0)
/* 9A290 800E3ED0 8E030004 */  lw         $v1, 0x4($s0)
/* 9A294 800E3ED4 C4440004 */  lwc1       $f4, 0x4($v0)
/* 9A298 800E3ED8 C4620004 */  lwc1       $f2, 0x4($v1)
/* 9A29C 800E3EDC 4602203C */  c.lt.s     $f4, $f2
/* 9A2A0 800E3EE0 00000000 */  nop
/* 9A2A4 800E3EE4 45000009 */  bc1f       .Lrace_800E3F0C
/* 9A2A8 800E3EE8 24030002 */   addiu     $v1, $zero, 0x2
/* 9A2AC 800E3EEC 8E020008 */  lw         $v0, 0x8($s0)
/* 9A2B0 800E3EF0 C4400004 */  lwc1       $f0, 0x4($v0)
/* 9A2B4 800E3EF4 4600203C */  c.lt.s     $f4, $f0
/* 9A2B8 800E3EF8 00000000 */  nop
/* 9A2BC 800E3EFC 45030009 */  bc1tl      .Lrace_800E3F24
/* 9A2C0 800E3F00 00001821 */   addu      $v1, $zero, $zero
/* 9A2C4 800E3F04 08038FCA */  j          .Lrace_800E3F28
/* 9A2C8 800E3F08 0000C821 */   addu      $t9, $zero, $zero
.Lrace_800E3F0C:
/* 9A2CC 800E3F0C 8E020008 */  lw         $v0, 0x8($s0)
/* 9A2D0 800E3F10 C4400004 */  lwc1       $f0, 0x4($v0)
/* 9A2D4 800E3F14 4600103C */  c.lt.s     $f2, $f0
/* 9A2D8 800E3F18 00000000 */  nop
/* 9A2DC 800E3F1C 45030001 */  bc1tl      .Lrace_800E3F24
/* 9A2E0 800E3F20 24030001 */   addiu     $v1, $zero, 0x1
.Lrace_800E3F24:
/* 9A2E4 800E3F24 0000C821 */  addu       $t9, $zero, $zero
.Lrace_800E3F28:
/* 9A2E8 800E3F28 00031880 */  sll        $v1, $v1, 2
/* 9A2EC 800E3F2C 3C02800D */  lui        $v0, %hi(D_race_800CB8F4)
/* 9A2F0 800E3F30 2445B8F4 */  addiu      $a1, $v0, %lo(D_race_800CB8F4)
/* 9A2F4 800E3F34 00651021 */  addu       $v0, $v1, $a1
/* 9A2F8 800E3F38 8C4E0000 */  lw         $t6, 0x0($v0)
/* 9A2FC 800E3F3C 00701021 */  addu       $v0, $v1, $s0
/* 9A300 800E3F40 8C440000 */  lw         $a0, 0x0($v0)
/* 9A304 800E3F44 3C01800D */  lui        $at, %hi(D_race_800CB838)
/* 9A308 800E3F48 C42AB838 */  lwc1       $f10, %lo(D_race_800CB838)($at)
/* 9A30C 800E3F4C 3C01800D */  lui        $at, %hi(D_race_800CB83C)
/* 9A310 800E3F50 C426B83C */  lwc1       $f6, %lo(D_race_800CB83C)($at)
/* 9A314 800E3F54 000E3880 */  sll        $a3, $t6, 2
/* 9A318 800E3F58 00F01021 */  addu       $v0, $a3, $s0
/* 9A31C 800E3F5C 8C490000 */  lw         $t1, 0x0($v0)
/* 9A320 800E3F60 3C02800D */  lui        $v0, %hi(D_race_800CB8E8)
/* 9A324 800E3F64 2442B8E8 */  addiu      $v0, $v0, %lo(D_race_800CB8E8)
/* 9A328 800E3F68 C4800004 */  lwc1       $f0, 0x4($a0)
/* 9A32C 800E3F6C C5220004 */  lwc1       $f2, 0x4($t1)
/* 9A330 800E3F70 00621821 */  addu       $v1, $v1, $v0
/* 9A334 800E3F74 46001201 */  sub.s      $f8, $f2, $f0
/* 9A338 800E3F78 C4800000 */  lwc1       $f0, 0x0($a0)
/* 9A33C 800E3F7C 8C6D0000 */  lw         $t5, 0x0($v1)
/* 9A340 800E3F80 460A0002 */  mul.s      $f0, $f0, $f10
/* 9A344 800E3F84 00803021 */  addu       $a2, $a0, $zero
/* 9A348 800E3F88 000D1080 */  sll        $v0, $t5, 2
/* 9A34C 800E3F8C 00501021 */  addu       $v0, $v0, $s0
/* 9A350 800E3F90 8C480000 */  lw         $t0, 0x0($v0)
/* 9A354 800E3F94 4606403C */  c.lt.s     $f8, $f6
/* 9A358 800E3F98 4600040D */  trunc.w.s  $f16, $f0
/* 9A35C 800E3F9C 440A8000 */  mfc1       $t2, $f16
/* 9A360 800E3FA0 4500001C */  bc1f       .Lrace_800E4014
/* 9A364 800E3FA4 01405821 */   addu      $t3, $t2, $zero
/* 9A368 800E3FA8 3C01800D */  lui        $at, %hi(D_race_800CB840)
/* 9A36C 800E3FAC C424B840 */  lwc1       $f4, %lo(D_race_800CB840)($at)
/* 9A370 800E3FB0 4608203C */  c.lt.s     $f4, $f8
/* 9A374 800E3FB4 00000000 */  nop
/* 9A378 800E3FB8 45000016 */  bc1f       .Lrace_800E4014
/* 9A37C 800E3FBC 00E51021 */   addu      $v0, $a3, $a1
/* 9A380 800E3FC0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 9A384 800E3FC4 01202021 */  addu       $a0, $t1, $zero
/* 9A388 800E3FC8 000E1080 */  sll        $v0, $t6, 2
/* 9A38C 800E3FCC 00501021 */  addu       $v0, $v0, $s0
/* 9A390 800E3FD0 8C490000 */  lw         $t1, 0x0($v0)
/* 9A394 800E3FD4 C4800004 */  lwc1       $f0, 0x4($a0)
/* 9A398 800E3FD8 C5220004 */  lwc1       $f2, 0x4($t1)
/* 9A39C 800E3FDC 46001201 */  sub.s      $f8, $f2, $f0
/* 9A3A0 800E3FE0 4606403C */  c.lt.s     $f8, $f6
/* 9A3A4 800E3FE4 00000000 */  nop
/* 9A3A8 800E3FE8 45000005 */  bc1f       .Lrace_800E4000
/* 9A3AC 800E3FEC 00000000 */   nop
/* 9A3B0 800E3FF0 4608203C */  c.lt.s     $f4, $f8
/* 9A3B4 800E3FF4 00000000 */  nop
/* 9A3B8 800E3FF8 450100DF */  bc1t       .Lrace_800E4378
/* 9A3BC 800E3FFC 00000000 */   nop
.Lrace_800E4000:
/* 9A3C0 800E4000 C4800000 */  lwc1       $f0, 0x0($a0)
/* 9A3C4 800E4004 460A0002 */  mul.s      $f0, $f0, $f10
/* 9A3C8 800E4008 24190001 */  addiu      $t9, $zero, 0x1
/* 9A3CC 800E400C 4600040D */  trunc.w.s  $f16, $f0
/* 9A3D0 800E4010 440A8000 */  mfc1       $t2, $f16
.Lrace_800E4014:
/* 9A3D4 800E4014 C4800004 */  lwc1       $f0, 0x4($a0)
/* 9A3D8 800E4018 3C01800D */  lui        $at, %hi(D_race_800CB844)
/* 9A3DC 800E401C C426B844 */  lwc1       $f6, %lo(D_race_800CB844)($at)
/* 9A3E0 800E4020 46060002 */  mul.s      $f0, $f0, $f6
/* 9A3E4 800E4024 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* 9A3E8 800E4028 4600040D */  trunc.w.s  $f16, $f0
/* 9A3EC 800E402C 44028000 */  mfc1       $v0, $f16
/* 9A3F0 800E4030 00431021 */  addu       $v0, $v0, $v1
/* 9A3F4 800E4034 3C03FFFF */  lui        $v1, (0xFFFF0000 >> 16)
/* 9A3F8 800E4038 00436024 */  and        $t4, $v0, $v1
/* 9A3FC 800E403C 8EE30034 */  lw         $v1, 0x34($s7)
/* 9A400 800E4040 000C1403 */  sra        $v0, $t4, 16
/* 9A404 800E4044 00430018 */  mult       $v0, $v1
/* 9A408 800E4048 C4820000 */  lwc1       $f2, 0x0($a0)
/* 9A40C 800E404C C5200000 */  lwc1       $f0, 0x0($t1)
/* 9A410 800E4050 46020001 */  sub.s      $f0, $f0, $f2
/* 9A414 800E4054 46080003 */  div.s      $f0, $f0, $f8
/* 9A418 800E4058 46060102 */  mul.s      $f4, $f0, $f6
/* 9A41C 800E405C C5020004 */  lwc1       $f2, 0x4($t0)
/* 9A420 800E4060 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 9A424 800E4064 46001201 */  sub.s      $f8, $f2, $f0
/* 9A428 800E4068 3C01800D */  lui        $at, %hi(D_race_800CB848)
/* 9A42C 800E406C C42AB848 */  lwc1       $f10, %lo(D_race_800CB848)($at)
/* 9A430 800E4070 8EE20030 */  lw         $v0, 0x30($s7)
/* 9A434 800E4074 460A403C */  c.lt.s     $f8, $f10
/* 9A438 800E4078 4600240D */  trunc.w.s  $f16, $f4
/* 9A43C 800E407C 44118000 */  mfc1       $s1, $f16
/* 9A440 800E4080 0000B012 */  mflo       $s6
/* 9A444 800E4084 4500001F */  bc1f       .Lrace_800E4104
/* 9A448 800E4088 00562821 */   addu      $a1, $v0, $s6
/* 9A44C 800E408C 3C01800D */  lui        $at, %hi(D_race_800CB84C)
/* 9A450 800E4090 C424B84C */  lwc1       $f4, %lo(D_race_800CB84C)($at)
/* 9A454 800E4094 4608203C */  c.lt.s     $f4, $f8
/* 9A458 800E4098 00000000 */  nop
/* 9A45C 800E409C 45000019 */  bc1f       .Lrace_800E4104
/* 9A460 800E40A0 3C03800D */   lui       $v1, %hi(D_race_800CB8E8)
/* 9A464 800E40A4 2463B8E8 */  addiu      $v1, $v1, %lo(D_race_800CB8E8)
/* 9A468 800E40A8 000D1080 */  sll        $v0, $t5, 2
/* 9A46C 800E40AC 00431021 */  addu       $v0, $v0, $v1
/* 9A470 800E40B0 8C4D0000 */  lw         $t5, 0x0($v0)
/* 9A474 800E40B4 01003021 */  addu       $a2, $t0, $zero
/* 9A478 800E40B8 000D1080 */  sll        $v0, $t5, 2
/* 9A47C 800E40BC 00501021 */  addu       $v0, $v0, $s0
/* 9A480 800E40C0 8C480000 */  lw         $t0, 0x0($v0)
/* 9A484 800E40C4 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 9A488 800E40C8 C5020004 */  lwc1       $f2, 0x4($t0)
/* 9A48C 800E40CC 46001201 */  sub.s      $f8, $f2, $f0
/* 9A490 800E40D0 460A403C */  c.lt.s     $f8, $f10
/* 9A494 800E40D4 00000000 */  nop
/* 9A498 800E40D8 45000005 */  bc1f       .Lrace_800E40F0
/* 9A49C 800E40DC 00000000 */   nop
/* 9A4A0 800E40E0 4608203C */  c.lt.s     $f4, $f8
/* 9A4A4 800E40E4 00000000 */  nop
/* 9A4A8 800E40E8 450100A3 */  bc1t       .Lrace_800E4378
/* 9A4AC 800E40EC 00000000 */   nop
.Lrace_800E40F0:
/* 9A4B0 800E40F0 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 9A4B4 800E40F4 46060002 */  mul.s      $f0, $f0, $f6
/* 9A4B8 800E40F8 24190001 */  addiu      $t9, $zero, 0x1
/* 9A4BC 800E40FC 4600040D */  trunc.w.s  $f16, $f0
/* 9A4C0 800E4100 440B8000 */  mfc1       $t3, $f16
.Lrace_800E4104:
/* 9A4C4 800E4104 C5000000 */  lwc1       $f0, 0x0($t0)
/* 9A4C8 800E4108 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9A4CC 800E410C 92E20013 */  lbu        $v0, 0x13($s7)
/* 9A4D0 800E4110 3C01800D */  lui        $at, %hi(D_race_800CB850)
/* 9A4D4 800E4114 C426B850 */  lwc1       $f6, %lo(D_race_800CB850)($at)
/* 9A4D8 800E4118 46020001 */  sub.s      $f0, $f0, $f2
/* 9A4DC 800E411C C5240004 */  lwc1       $f4, 0x4($t1)
/* 9A4E0 800E4120 3042000F */  andi       $v0, $v0, 0xF
/* 9A4E4 800E4124 46080003 */  div.s      $f0, $f0, $f8
/* 9A4E8 800E4128 46060002 */  mul.s      $f0, $f0, $f6
/* 9A4EC 800E412C 00021900 */  sll        $v1, $v0, 4
/* 9A4F0 800E4130 0043A025 */  or         $s4, $v0, $v1
/* 9A4F4 800E4134 C5020004 */  lwc1       $f2, 0x4($t0)
/* 9A4F8 800E4138 4604103C */  c.lt.s     $f2, $f4
/* 9A4FC 800E413C 4600040D */  trunc.w.s  $f16, $f0
/* 9A500 800E4140 44188000 */  mfc1       $t8, $f16
/* 9A504 800E4144 45000004 */  bc1f       .Lrace_800E4158
/* 9A508 800E4148 00409821 */   addu      $s3, $v0, $zero
/* 9A50C 800E414C 46061002 */  mul.s      $f0, $f2, $f6
/* 9A510 800E4150 08039058 */  j          .Lrace_800E4160
/* 9A514 800E4154 24120001 */   addiu     $s2, $zero, 0x1
.Lrace_800E4158:
/* 9A518 800E4158 46062002 */  mul.s      $f0, $f4, $f6
/* 9A51C 800E415C 00009021 */  addu       $s2, $zero, $zero
.Lrace_800E4160:
/* 9A520 800E4160 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 9A524 800E4164 4600040D */  trunc.w.s  $f16, $f0
/* 9A528 800E4168 44038000 */  mfc1       $v1, $f16
/* 9A52C 800E416C 00621021 */  addu       $v0, $v1, $v0
/* 9A530 800E4170 3C03FFFF */  lui        $v1, (0xFFFF0000 >> 16)
/* 9A534 800E4174 00433824 */  and        $a3, $v0, $v1
/* 9A538 800E4178 340FFFFF */  ori        $t7, $zero, 0xFFFF
/* 9A53C 800E417C 3C15FFFF */  lui        $s5, (0xFFFF0000 >> 16)
/* 9A540 800E4180 3C02800D */  lui        $v0, %hi(D_race_800CB8F4)
/* 9A544 800E4184 245EB8F4 */  addiu      $fp, $v0, %lo(D_race_800CB8F4)
/* 9A548 800E4188 3C01800D */  lui        $at, %hi(D_race_800CB854)
/* 9A54C 800E418C C42EB854 */  lwc1       $f14, %lo(D_race_800CB854)($at)
/* 9A550 800E4190 3C01800D */  lui        $at, %hi(D_race_800CB858)
/* 9A554 800E4194 C42CB858 */  lwc1       $f12, %lo(D_race_800CB858)($at)
/* 9A558 800E4198 3C01800D */  lui        $at, %hi(D_race_800CB85C)
/* 9A55C 800E419C C42AB85C */  lwc1       $f10, %lo(D_race_800CB85C)($at)
/* 9A560 800E41A0 0013B100 */  sll        $s6, $s3, 4
/* 9A564 800E41A4 AFB60000 */  sw         $s6, 0x0($sp)
.Lrace_800E41A8:
/* 9A568 800E41A8 0187102A */  slt        $v0, $t4, $a3
/* 9A56C 800E41AC 5440004D */  bnel       $v0, $zero, .Lrace_800E42E4
/* 9A570 800E41B0 014F1021 */   addu      $v0, $t2, $t7
/* 9A574 800E41B4 17200070 */  bnez       $t9, .Lrace_800E4378
/* 9A578 800E41B8 00000000 */   nop
/* 9A57C 800E41BC 12400024 */  beqz       $s2, .Lrace_800E4250
/* 9A580 800E41C0 000D1080 */   sll       $v0, $t5, 2
/* 9A584 800E41C4 3C16800D */  lui        $s6, %hi(D_race_800CB8E8)
/* 9A588 800E41C8 26D6B8E8 */  addiu      $s6, $s6, %lo(D_race_800CB8E8)
/* 9A58C 800E41CC 00561021 */  addu       $v0, $v0, $s6
/* 9A590 800E41D0 8C4D0000 */  lw         $t5, 0x0($v0)
/* 9A594 800E41D4 01003021 */  addu       $a2, $t0, $zero
/* 9A598 800E41D8 000D1080 */  sll        $v0, $t5, 2
/* 9A59C 800E41DC 00501021 */  addu       $v0, $v0, $s0
/* 9A5A0 800E41E0 8C480000 */  lw         $t0, 0x0($v0)
/* 9A5A4 800E41E4 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 9A5A8 800E41E8 C5040004 */  lwc1       $f4, 0x4($t0)
/* 9A5AC 800E41EC 46002201 */  sub.s      $f8, $f4, $f0
/* 9A5B0 800E41F0 460E403C */  c.lt.s     $f8, $f14
/* 9A5B4 800E41F4 00000000 */  nop
/* 9A5B8 800E41F8 45000005 */  bc1f       .Lrace_800E4210
/* 9A5BC 800E41FC 00000000 */   nop
/* 9A5C0 800E4200 4608603C */  c.lt.s     $f12, $f8
/* 9A5C4 800E4204 00000000 */  nop
/* 9A5C8 800E4208 4501005B */  bc1t       .Lrace_800E4378
/* 9A5CC 800E420C 00000000 */   nop
.Lrace_800E4210:
/* 9A5D0 800E4210 460A2102 */  mul.s      $f4, $f4, $f10
/* 9A5D4 800E4214 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9A5D8 800E4218 460A1182 */  mul.s      $f6, $f2, $f10
/* 9A5DC 800E421C C5000000 */  lwc1       $f0, 0x0($t0)
/* 9A5E0 800E4220 46020001 */  sub.s      $f0, $f0, $f2
/* 9A5E4 800E4224 46080003 */  div.s      $f0, $f0, $f8
/* 9A5E8 800E4228 460A0002 */  mul.s      $f0, $f0, $f10
/* 9A5EC 800E422C 4600240D */  trunc.w.s  $f16, $f4
/* 9A5F0 800E4230 44038000 */  mfc1       $v1, $f16
/* 9A5F4 800E4234 006F1021 */  addu       $v0, $v1, $t7
/* 9A5F8 800E4238 4600340D */  trunc.w.s  $f16, $f6
/* 9A5FC 800E423C 440B8000 */  mfc1       $t3, $f16
/* 9A600 800E4240 4600040D */  trunc.w.s  $f16, $f0
/* 9A604 800E4244 44188000 */  mfc1       $t8, $f16
/* 9A608 800E4248 080390B5 */  j          .Lrace_800E42D4
/* 9A60C 800E424C 00553824 */   and       $a3, $v0, $s5
.Lrace_800E4250:
/* 9A610 800E4250 000E1080 */  sll        $v0, $t6, 2
/* 9A614 800E4254 005E1021 */  addu       $v0, $v0, $fp
/* 9A618 800E4258 8C4E0000 */  lw         $t6, 0x0($v0)
/* 9A61C 800E425C 01202021 */  addu       $a0, $t1, $zero
/* 9A620 800E4260 000E1080 */  sll        $v0, $t6, 2
/* 9A624 800E4264 00501021 */  addu       $v0, $v0, $s0
/* 9A628 800E4268 8C490000 */  lw         $t1, 0x0($v0)
/* 9A62C 800E426C C4800004 */  lwc1       $f0, 0x4($a0)
/* 9A630 800E4270 C5240004 */  lwc1       $f4, 0x4($t1)
/* 9A634 800E4274 46002201 */  sub.s      $f8, $f4, $f0
/* 9A638 800E4278 460E403C */  c.lt.s     $f8, $f14
/* 9A63C 800E427C 00000000 */  nop
/* 9A640 800E4280 45000005 */  bc1f       .Lrace_800E4298
/* 9A644 800E4284 00000000 */   nop
/* 9A648 800E4288 4608603C */  c.lt.s     $f12, $f8
/* 9A64C 800E428C 00000000 */  nop
/* 9A650 800E4290 45010039 */  bc1t       .Lrace_800E4378
/* 9A654 800E4294 00000000 */   nop
.Lrace_800E4298:
/* 9A658 800E4298 460A2102 */  mul.s      $f4, $f4, $f10
/* 9A65C 800E429C C4820000 */  lwc1       $f2, 0x0($a0)
/* 9A660 800E42A0 460A1182 */  mul.s      $f6, $f2, $f10
/* 9A664 800E42A4 C5200000 */  lwc1       $f0, 0x0($t1)
/* 9A668 800E42A8 46020001 */  sub.s      $f0, $f0, $f2
/* 9A66C 800E42AC 46080003 */  div.s      $f0, $f0, $f8
/* 9A670 800E42B0 460A0002 */  mul.s      $f0, $f0, $f10
/* 9A674 800E42B4 4600240D */  trunc.w.s  $f16, $f4
/* 9A678 800E42B8 44038000 */  mfc1       $v1, $f16
/* 9A67C 800E42BC 006F1021 */  addu       $v0, $v1, $t7
/* 9A680 800E42C0 00553824 */  and        $a3, $v0, $s5
/* 9A684 800E42C4 4600340D */  trunc.w.s  $f16, $f6
/* 9A688 800E42C8 440A8000 */  mfc1       $t2, $f16
/* 9A68C 800E42CC 4600040D */  trunc.w.s  $f16, $f0
/* 9A690 800E42D0 44118000 */  mfc1       $s1, $f16
.Lrace_800E42D4:
/* 9A694 800E42D4 0187102A */  slt        $v0, $t4, $a3
/* 9A698 800E42D8 10400027 */  beqz       $v0, .Lrace_800E4378
/* 9A69C 800E42DC 24190001 */   addiu     $t9, $zero, 0x1
/* 9A6A0 800E42E0 014F1021 */  addu       $v0, $t2, $t7
.Lrace_800E42E4:
/* 9A6A4 800E42E4 00022403 */  sra        $a0, $v0, 16
/* 9A6A8 800E42E8 016F1821 */  addu       $v1, $t3, $t7
/* 9A6AC 800E42EC 00031C03 */  sra        $v1, $v1, 16
/* 9A6B0 800E42F0 00641823 */  subu       $v1, $v1, $a0
/* 9A6B4 800E42F4 00021443 */  sra        $v0, $v0, 17
/* 9A6B8 800E42F8 30840001 */  andi       $a0, $a0, 0x1
/* 9A6BC 800E42FC 10800006 */  beqz       $a0, .Lrace_800E4318
/* 9A6C0 800E4300 00A23021 */   addu      $a2, $a1, $v0
/* 9A6C4 800E4304 90C20000 */  lbu        $v0, 0x0($a2)
/* 9A6C8 800E4308 2463FFFF */  addiu      $v1, $v1, -0x1
/* 9A6CC 800E430C 00531025 */  or         $v0, $v0, $s3
/* 9A6D0 800E4310 A0C20000 */  sb         $v0, 0x0($a2)
/* 9A6D4 800E4314 24C60001 */  addiu      $a2, $a2, 0x1
.Lrace_800E4318:
/* 9A6D8 800E4318 00031043 */  sra        $v0, $v1, 1
/* 9A6DC 800E431C 00C22021 */  addu       $a0, $a2, $v0
/* 9A6E0 800E4320 00C4102B */  sltu       $v0, $a2, $a0
/* 9A6E4 800E4324 10400007 */  beqz       $v0, .Lrace_800E4344
/* 9A6E8 800E4328 30620001 */   andi      $v0, $v1, 0x1
/* 9A6EC 800E432C A0D40000 */  sb         $s4, 0x0($a2)
.Lrace_800E4330:
/* 9A6F0 800E4330 24C60001 */  addiu      $a2, $a2, 0x1
/* 9A6F4 800E4334 00C4102B */  sltu       $v0, $a2, $a0
/* 9A6F8 800E4338 5440FFFD */  bnel       $v0, $zero, .Lrace_800E4330
/* 9A6FC 800E433C A0D40000 */   sb        $s4, 0x0($a2)
/* 9A700 800E4340 30620001 */  andi       $v0, $v1, 0x1
.Lrace_800E4344:
/* 9A704 800E4344 10400006 */  beqz       $v0, .Lrace_800E4360
/* 9A708 800E4348 3C020001 */   lui       $v0, (0x10000 >> 16)
/* 9A70C 800E434C 90C20000 */  lbu        $v0, 0x0($a2)
/* 9A710 800E4350 8FB60000 */  lw         $s6, 0x0($sp)
/* 9A714 800E4354 00561025 */  or         $v0, $v0, $s6
/* 9A718 800E4358 A0C20000 */  sb         $v0, 0x0($a2)
/* 9A71C 800E435C 3C020001 */  lui        $v0, (0x10000 >> 16)
.Lrace_800E4360:
/* 9A720 800E4360 01826021 */  addu       $t4, $t4, $v0
/* 9A724 800E4364 01515021 */  addu       $t2, $t2, $s1
/* 9A728 800E4368 8EE20034 */  lw         $v0, 0x34($s7)
/* 9A72C 800E436C 01785821 */  addu       $t3, $t3, $t8
/* 9A730 800E4370 0803906A */  j          .Lrace_800E41A8
/* 9A734 800E4374 00A22821 */   addu      $a1, $a1, $v0
.Lrace_800E4378:
/* 9A738 800E4378 8FBE0028 */  lw         $fp, 0x28($sp)
/* 9A73C 800E437C 8FB70024 */  lw         $s7, 0x24($sp)
/* 9A740 800E4380 8FB60020 */  lw         $s6, 0x20($sp)
/* 9A744 800E4384 8FB5001C */  lw         $s5, 0x1C($sp)
/* 9A748 800E4388 8FB40018 */  lw         $s4, 0x18($sp)
/* 9A74C 800E438C 8FB30014 */  lw         $s3, 0x14($sp)
/* 9A750 800E4390 8FB20010 */  lw         $s2, 0x10($sp)
/* 9A754 800E4394 8FB1000C */  lw         $s1, 0xC($sp)
/* 9A758 800E4398 8FB00008 */  lw         $s0, 0x8($sp)
/* 9A75C 800E439C 03E00008 */  jr         $ra
/* 9A760 800E43A0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800E43A4
/* 9A764 800E43A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9A768 800E43A8 AFB40010 */  sw         $s4, 0x10($sp)
/* 9A76C 800E43AC 0080A021 */  addu       $s4, $a0, $zero
/* 9A770 800E43B0 AFB00000 */  sw         $s0, 0x0($sp)
/* 9A774 800E43B4 00A08021 */  addu       $s0, $a1, $zero
/* 9A778 800E43B8 AFB7001C */  sw         $s7, 0x1C($sp)
/* 9A77C 800E43BC AFB60018 */  sw         $s6, 0x18($sp)
/* 9A780 800E43C0 AFB50014 */  sw         $s5, 0x14($sp)
/* 9A784 800E43C4 AFB3000C */  sw         $s3, 0xC($sp)
/* 9A788 800E43C8 AFB20008 */  sw         $s2, 0x8($sp)
/* 9A78C 800E43CC AFB10004 */  sw         $s1, 0x4($sp)
/* 9A790 800E43D0 8E040004 */  lw         $a0, 0x4($s0)
/* 9A794 800E43D4 8E020008 */  lw         $v0, 0x8($s0)
/* 9A798 800E43D8 8E030000 */  lw         $v1, 0x0($s0)
/* 9A79C 800E43DC C4840000 */  lwc1       $f4, 0x0($a0)
/* 9A7A0 800E43E0 C4420000 */  lwc1       $f2, 0x0($v0)
/* 9A7A4 800E43E4 C46A0004 */  lwc1       $f10, 0x4($v1)
/* 9A7A8 800E43E8 46022101 */  sub.s      $f4, $f4, $f2
/* 9A7AC 800E43EC C4480004 */  lwc1       $f8, 0x4($v0)
/* 9A7B0 800E43F0 46085001 */  sub.s      $f0, $f10, $f8
/* 9A7B4 800E43F4 46002102 */  mul.s      $f4, $f4, $f0
/* 9A7B8 800E43F8 C4600000 */  lwc1       $f0, 0x0($v1)
/* 9A7BC 800E43FC 46020001 */  sub.s      $f0, $f0, $f2
/* 9A7C0 800E4400 C4860004 */  lwc1       $f6, 0x4($a0)
/* 9A7C4 800E4404 46083081 */  sub.s      $f2, $f6, $f8
/* 9A7C8 800E4408 46020002 */  mul.s      $f0, $f0, $f2
/* 9A7CC 800E440C 46002101 */  sub.s      $f4, $f4, $f0
/* 9A7D0 800E4410 44800000 */  mtc1       $zero, $f0
/* 9A7D4 800E4414 4604003E */  c.le.s     $f0, $f4
/* 9A7D8 800E4418 00000000 */  nop
/* 9A7DC 800E441C 4501010E */  bc1t       .Lrace_800E4858
/* 9A7E0 800E4420 00000000 */   nop
/* 9A7E4 800E4424 4606503C */  c.lt.s     $f10, $f6
/* 9A7E8 800E4428 00000000 */  nop
/* 9A7EC 800E442C 45000007 */  bc1f       .Lrace_800E444C
/* 9A7F0 800E4430 24030002 */   addiu     $v1, $zero, 0x2
/* 9A7F4 800E4434 4608503C */  c.lt.s     $f10, $f8
/* 9A7F8 800E4438 00000000 */  nop
/* 9A7FC 800E443C 45030007 */  bc1tl      .Lrace_800E445C
/* 9A800 800E4440 00001821 */   addu      $v1, $zero, $zero
/* 9A804 800E4444 08039118 */  j          .Lrace_800E4460
/* 9A808 800E4448 0000C821 */   addu      $t9, $zero, $zero
.Lrace_800E444C:
/* 9A80C 800E444C 4608303C */  c.lt.s     $f6, $f8
/* 9A810 800E4450 00000000 */  nop
/* 9A814 800E4454 45030001 */  bc1tl      .Lrace_800E445C
/* 9A818 800E4458 24030001 */   addiu     $v1, $zero, 0x1
.Lrace_800E445C:
/* 9A81C 800E445C 0000C821 */  addu       $t9, $zero, $zero
.Lrace_800E4460:
/* 9A820 800E4460 00031880 */  sll        $v1, $v1, 2
/* 9A824 800E4464 3C02800D */  lui        $v0, %hi(D_race_800CB8F4)
/* 9A828 800E4468 2445B8F4 */  addiu      $a1, $v0, %lo(D_race_800CB8F4)
/* 9A82C 800E446C 00651021 */  addu       $v0, $v1, $a1
/* 9A830 800E4470 8C4F0000 */  lw         $t7, 0x0($v0)
/* 9A834 800E4474 00701021 */  addu       $v0, $v1, $s0
/* 9A838 800E4478 8C440000 */  lw         $a0, 0x0($v0)
/* 9A83C 800E447C 3C01800D */  lui        $at, %hi(D_race_800CB860)
/* 9A840 800E4480 C42AB860 */  lwc1       $f10, %lo(D_race_800CB860)($at)
/* 9A844 800E4484 3C01800D */  lui        $at, %hi(D_race_800CB864)
/* 9A848 800E4488 C426B864 */  lwc1       $f6, %lo(D_race_800CB864)($at)
/* 9A84C 800E448C 000F5880 */  sll        $t3, $t7, 2
/* 9A850 800E4490 01701021 */  addu       $v0, $t3, $s0
/* 9A854 800E4494 8C480000 */  lw         $t0, 0x0($v0)
/* 9A858 800E4498 3C02800D */  lui        $v0, %hi(D_race_800CB8E8)
/* 9A85C 800E449C 2442B8E8 */  addiu      $v0, $v0, %lo(D_race_800CB8E8)
/* 9A860 800E44A0 C4800004 */  lwc1       $f0, 0x4($a0)
/* 9A864 800E44A4 C5020004 */  lwc1       $f2, 0x4($t0)
/* 9A868 800E44A8 00621821 */  addu       $v1, $v1, $v0
/* 9A86C 800E44AC 46001201 */  sub.s      $f8, $f2, $f0
/* 9A870 800E44B0 C4800000 */  lwc1       $f0, 0x0($a0)
/* 9A874 800E44B4 8C6D0000 */  lw         $t5, 0x0($v1)
/* 9A878 800E44B8 460A0002 */  mul.s      $f0, $f0, $f10
/* 9A87C 800E44BC 00803021 */  addu       $a2, $a0, $zero
/* 9A880 800E44C0 000D1080 */  sll        $v0, $t5, 2
/* 9A884 800E44C4 00501021 */  addu       $v0, $v0, $s0
/* 9A888 800E44C8 8C470000 */  lw         $a3, 0x0($v0)
/* 9A88C 800E44CC 4606403C */  c.lt.s     $f8, $f6
/* 9A890 800E44D0 4600040D */  trunc.w.s  $f16, $f0
/* 9A894 800E44D4 44098000 */  mfc1       $t1, $f16
/* 9A898 800E44D8 4500001C */  bc1f       .Lrace_800E454C
/* 9A89C 800E44DC 01205021 */   addu      $t2, $t1, $zero
/* 9A8A0 800E44E0 3C01800D */  lui        $at, %hi(D_race_800CB868)
/* 9A8A4 800E44E4 C424B868 */  lwc1       $f4, %lo(D_race_800CB868)($at)
/* 9A8A8 800E44E8 4608203C */  c.lt.s     $f4, $f8
/* 9A8AC 800E44EC 00000000 */  nop
/* 9A8B0 800E44F0 45000016 */  bc1f       .Lrace_800E454C
/* 9A8B4 800E44F4 01651021 */   addu      $v0, $t3, $a1
/* 9A8B8 800E44F8 8C4F0000 */  lw         $t7, 0x0($v0)
/* 9A8BC 800E44FC 01002021 */  addu       $a0, $t0, $zero
/* 9A8C0 800E4500 000F1080 */  sll        $v0, $t7, 2
/* 9A8C4 800E4504 00501021 */  addu       $v0, $v0, $s0
/* 9A8C8 800E4508 8C480000 */  lw         $t0, 0x0($v0)
/* 9A8CC 800E450C C4800004 */  lwc1       $f0, 0x4($a0)
/* 9A8D0 800E4510 C5020004 */  lwc1       $f2, 0x4($t0)
/* 9A8D4 800E4514 46001201 */  sub.s      $f8, $f2, $f0
/* 9A8D8 800E4518 4606403C */  c.lt.s     $f8, $f6
/* 9A8DC 800E451C 00000000 */  nop
/* 9A8E0 800E4520 45000005 */  bc1f       .Lrace_800E4538
/* 9A8E4 800E4524 00000000 */   nop
/* 9A8E8 800E4528 4608203C */  c.lt.s     $f4, $f8
/* 9A8EC 800E452C 00000000 */  nop
/* 9A8F0 800E4530 450100C9 */  bc1t       .Lrace_800E4858
/* 9A8F4 800E4534 00000000 */   nop
.Lrace_800E4538:
/* 9A8F8 800E4538 C4800000 */  lwc1       $f0, 0x0($a0)
/* 9A8FC 800E453C 460A0002 */  mul.s      $f0, $f0, $f10
/* 9A900 800E4540 24190001 */  addiu      $t9, $zero, 0x1
/* 9A904 800E4544 4600040D */  trunc.w.s  $f16, $f0
/* 9A908 800E4548 44098000 */  mfc1       $t1, $f16
.Lrace_800E454C:
/* 9A90C 800E454C C4800004 */  lwc1       $f0, 0x4($a0)
/* 9A910 800E4550 3C01800D */  lui        $at, %hi(D_race_800CB86C)
/* 9A914 800E4554 C426B86C */  lwc1       $f6, %lo(D_race_800CB86C)($at)
/* 9A918 800E4558 46060002 */  mul.s      $f0, $f0, $f6
/* 9A91C 800E455C 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* 9A920 800E4560 4600040D */  trunc.w.s  $f16, $f0
/* 9A924 800E4564 44028000 */  mfc1       $v0, $f16
/* 9A928 800E4568 00431021 */  addu       $v0, $v0, $v1
/* 9A92C 800E456C 3C03FFFF */  lui        $v1, (0xFFFF0000 >> 16)
/* 9A930 800E4570 00436024 */  and        $t4, $v0, $v1
/* 9A934 800E4574 8E830034 */  lw         $v1, 0x34($s4)
/* 9A938 800E4578 000C1403 */  sra        $v0, $t4, 16
/* 9A93C 800E457C 00430018 */  mult       $v0, $v1
/* 9A940 800E4580 C4820000 */  lwc1       $f2, 0x0($a0)
/* 9A944 800E4584 C5000000 */  lwc1       $f0, 0x0($t0)
/* 9A948 800E4588 46020001 */  sub.s      $f0, $f0, $f2
/* 9A94C 800E458C 46080003 */  div.s      $f0, $f0, $f8
/* 9A950 800E4590 46060102 */  mul.s      $f4, $f0, $f6
/* 9A954 800E4594 C4E20004 */  lwc1       $f2, 0x4($a3)
/* 9A958 800E4598 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 9A95C 800E459C 46001201 */  sub.s      $f8, $f2, $f0
/* 9A960 800E45A0 3C01800D */  lui        $at, %hi(D_race_800CB870)
/* 9A964 800E45A4 C42AB870 */  lwc1       $f10, %lo(D_race_800CB870)($at)
/* 9A968 800E45A8 8E820030 */  lw         $v0, 0x30($s4)
/* 9A96C 800E45AC 460A403C */  c.lt.s     $f8, $f10
/* 9A970 800E45B0 4600240D */  trunc.w.s  $f16, $f4
/* 9A974 800E45B4 44058000 */  mfc1       $a1, $f16
/* 9A978 800E45B8 0000A812 */  mflo       $s5
/* 9A97C 800E45BC 4500001F */  bc1f       .Lrace_800E463C
/* 9A980 800E45C0 00555821 */   addu      $t3, $v0, $s5
/* 9A984 800E45C4 3C01800D */  lui        $at, %hi(D_race_800CB874)
/* 9A988 800E45C8 C424B874 */  lwc1       $f4, %lo(D_race_800CB874)($at)
/* 9A98C 800E45CC 4608203C */  c.lt.s     $f4, $f8
/* 9A990 800E45D0 00000000 */  nop
/* 9A994 800E45D4 45000019 */  bc1f       .Lrace_800E463C
/* 9A998 800E45D8 3C03800D */   lui       $v1, %hi(D_race_800CB8E8)
/* 9A99C 800E45DC 2463B8E8 */  addiu      $v1, $v1, %lo(D_race_800CB8E8)
/* 9A9A0 800E45E0 000D1080 */  sll        $v0, $t5, 2
/* 9A9A4 800E45E4 00431021 */  addu       $v0, $v0, $v1
/* 9A9A8 800E45E8 8C4D0000 */  lw         $t5, 0x0($v0)
/* 9A9AC 800E45EC 00E03021 */  addu       $a2, $a3, $zero
/* 9A9B0 800E45F0 000D1080 */  sll        $v0, $t5, 2
/* 9A9B4 800E45F4 00501021 */  addu       $v0, $v0, $s0
/* 9A9B8 800E45F8 8C470000 */  lw         $a3, 0x0($v0)
/* 9A9BC 800E45FC C4C00004 */  lwc1       $f0, 0x4($a2)
/* 9A9C0 800E4600 C4E20004 */  lwc1       $f2, 0x4($a3)
/* 9A9C4 800E4604 46001201 */  sub.s      $f8, $f2, $f0
/* 9A9C8 800E4608 460A403C */  c.lt.s     $f8, $f10
/* 9A9CC 800E460C 00000000 */  nop
/* 9A9D0 800E4610 45000005 */  bc1f       .Lrace_800E4628
/* 9A9D4 800E4614 00000000 */   nop
/* 9A9D8 800E4618 4608203C */  c.lt.s     $f4, $f8
/* 9A9DC 800E461C 00000000 */  nop
/* 9A9E0 800E4620 4501008D */  bc1t       .Lrace_800E4858
/* 9A9E4 800E4624 00000000 */   nop
.Lrace_800E4628:
/* 9A9E8 800E4628 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 9A9EC 800E462C 46060002 */  mul.s      $f0, $f0, $f6
/* 9A9F0 800E4630 24190001 */  addiu      $t9, $zero, 0x1
/* 9A9F4 800E4634 4600040D */  trunc.w.s  $f16, $f0
/* 9A9F8 800E4638 440A8000 */  mfc1       $t2, $f16
.Lrace_800E463C:
/* 9A9FC 800E463C C4E00000 */  lwc1       $f0, 0x0($a3)
/* 9AA00 800E4640 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9AA04 800E4644 46020001 */  sub.s      $f0, $f0, $f2
/* 9AA08 800E4648 3C01800D */  lui        $at, %hi(D_race_800CB878)
/* 9AA0C 800E464C C426B878 */  lwc1       $f6, %lo(D_race_800CB878)($at)
/* 9AA10 800E4650 46080003 */  div.s      $f0, $f0, $f8
/* 9AA14 800E4654 46060002 */  mul.s      $f0, $f0, $f6
/* 9AA18 800E4658 C5040004 */  lwc1       $f4, 0x4($t0)
/* 9AA1C 800E465C C4E20004 */  lwc1       $f2, 0x4($a3)
/* 9AA20 800E4660 92920013 */  lbu        $s2, 0x13($s4)
/* 9AA24 800E4664 4604103C */  c.lt.s     $f2, $f4
/* 9AA28 800E4668 4600040D */  trunc.w.s  $f16, $f0
/* 9AA2C 800E466C 44188000 */  mfc1       $t8, $f16
/* 9AA30 800E4670 45000004 */  bc1f       .Lrace_800E4684
/* 9AA34 800E4674 24110001 */   addiu     $s1, $zero, 0x1
/* 9AA38 800E4678 46061002 */  mul.s      $f0, $f2, $f6
/* 9AA3C 800E467C 080391A4 */  j          .Lrace_800E4690
/* 9AA40 800E4680 3402FFFF */   ori       $v0, $zero, 0xFFFF
.Lrace_800E4684:
/* 9AA44 800E4684 46062002 */  mul.s      $f0, $f4, $f6
/* 9AA48 800E4688 00008821 */  addu       $s1, $zero, $zero
/* 9AA4C 800E468C 3402FFFF */  ori        $v0, $zero, 0xFFFF
.Lrace_800E4690:
/* 9AA50 800E4690 4600040D */  trunc.w.s  $f16, $f0
/* 9AA54 800E4694 44038000 */  mfc1       $v1, $f16
/* 9AA58 800E4698 00621021 */  addu       $v0, $v1, $v0
/* 9AA5C 800E469C 3C03FFFF */  lui        $v1, (0xFFFF0000 >> 16)
/* 9AA60 800E46A0 00433024 */  and        $a2, $v0, $v1
/* 9AA64 800E46A4 3C02800D */  lui        $v0, %hi(D_race_800CB8E8)
/* 9AA68 800E46A8 2457B8E8 */  addiu      $s7, $v0, %lo(D_race_800CB8E8)
/* 9AA6C 800E46AC 340EFFFF */  ori        $t6, $zero, 0xFFFF
/* 9AA70 800E46B0 3C13FFFF */  lui        $s3, (0xFFFF0000 >> 16)
/* 9AA74 800E46B4 3C02800D */  lui        $v0, %hi(D_race_800CB8F4)
/* 9AA78 800E46B8 2456B8F4 */  addiu      $s6, $v0, %lo(D_race_800CB8F4)
/* 9AA7C 800E46BC 3C01800D */  lui        $at, %hi(D_race_800CB87C)
/* 9AA80 800E46C0 C42EB87C */  lwc1       $f14, %lo(D_race_800CB87C)($at)
/* 9AA84 800E46C4 3C01800D */  lui        $at, %hi(D_race_800CB880)
/* 9AA88 800E46C8 C42CB880 */  lwc1       $f12, %lo(D_race_800CB880)($at)
/* 9AA8C 800E46CC 3C01800D */  lui        $at, %hi(D_race_800CB884)
/* 9AA90 800E46D0 C42AB884 */  lwc1       $f10, %lo(D_race_800CB884)($at)
.Lrace_800E46D4:
/* 9AA94 800E46D4 0186102A */  slt        $v0, $t4, $a2
/* 9AA98 800E46D8 5440004B */  bnel       $v0, $zero, .Lrace_800E4808
/* 9AA9C 800E46DC 012E1021 */   addu      $v0, $t1, $t6
/* 9AAA0 800E46E0 1720005D */  bnez       $t9, .Lrace_800E4858
/* 9AAA4 800E46E4 00000000 */   nop
/* 9AAA8 800E46E8 12200022 */  beqz       $s1, .Lrace_800E4774
/* 9AAAC 800E46EC 000D1080 */   sll       $v0, $t5, 2
/* 9AAB0 800E46F0 00571021 */  addu       $v0, $v0, $s7
/* 9AAB4 800E46F4 8C4D0000 */  lw         $t5, 0x0($v0)
/* 9AAB8 800E46F8 00E03021 */  addu       $a2, $a3, $zero
/* 9AABC 800E46FC 000D1080 */  sll        $v0, $t5, 2
/* 9AAC0 800E4700 00501021 */  addu       $v0, $v0, $s0
/* 9AAC4 800E4704 8C470000 */  lw         $a3, 0x0($v0)
/* 9AAC8 800E4708 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 9AACC 800E470C C4E40004 */  lwc1       $f4, 0x4($a3)
/* 9AAD0 800E4710 46002201 */  sub.s      $f8, $f4, $f0
/* 9AAD4 800E4714 460E403C */  c.lt.s     $f8, $f14
/* 9AAD8 800E4718 00000000 */  nop
/* 9AADC 800E471C 45000005 */  bc1f       .Lrace_800E4734
/* 9AAE0 800E4720 00000000 */   nop
/* 9AAE4 800E4724 4608603C */  c.lt.s     $f12, $f8
/* 9AAE8 800E4728 00000000 */  nop
/* 9AAEC 800E472C 4501004A */  bc1t       .Lrace_800E4858
/* 9AAF0 800E4730 00000000 */   nop
.Lrace_800E4734:
/* 9AAF4 800E4734 460A2102 */  mul.s      $f4, $f4, $f10
/* 9AAF8 800E4738 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9AAFC 800E473C 460A1182 */  mul.s      $f6, $f2, $f10
/* 9AB00 800E4740 C4E00000 */  lwc1       $f0, 0x0($a3)
/* 9AB04 800E4744 46020001 */  sub.s      $f0, $f0, $f2
/* 9AB08 800E4748 46080003 */  div.s      $f0, $f0, $f8
/* 9AB0C 800E474C 460A0002 */  mul.s      $f0, $f0, $f10
/* 9AB10 800E4750 4600240D */  trunc.w.s  $f16, $f4
/* 9AB14 800E4754 44038000 */  mfc1       $v1, $f16
/* 9AB18 800E4758 006E1021 */  addu       $v0, $v1, $t6
/* 9AB1C 800E475C 4600340D */  trunc.w.s  $f16, $f6
/* 9AB20 800E4760 440A8000 */  mfc1       $t2, $f16
/* 9AB24 800E4764 4600040D */  trunc.w.s  $f16, $f0
/* 9AB28 800E4768 44188000 */  mfc1       $t8, $f16
/* 9AB2C 800E476C 080391FE */  j          .Lrace_800E47F8
/* 9AB30 800E4770 00533024 */   and       $a2, $v0, $s3
.Lrace_800E4774:
/* 9AB34 800E4774 000F1080 */  sll        $v0, $t7, 2
/* 9AB38 800E4778 00561021 */  addu       $v0, $v0, $s6
/* 9AB3C 800E477C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 9AB40 800E4780 01002021 */  addu       $a0, $t0, $zero
/* 9AB44 800E4784 000F1080 */  sll        $v0, $t7, 2
/* 9AB48 800E4788 00501021 */  addu       $v0, $v0, $s0
/* 9AB4C 800E478C 8C480000 */  lw         $t0, 0x0($v0)
/* 9AB50 800E4790 C4800004 */  lwc1       $f0, 0x4($a0)
/* 9AB54 800E4794 C5040004 */  lwc1       $f4, 0x4($t0)
/* 9AB58 800E4798 46002201 */  sub.s      $f8, $f4, $f0
/* 9AB5C 800E479C 460E403C */  c.lt.s     $f8, $f14
/* 9AB60 800E47A0 00000000 */  nop
/* 9AB64 800E47A4 45000005 */  bc1f       .Lrace_800E47BC
/* 9AB68 800E47A8 00000000 */   nop
/* 9AB6C 800E47AC 4608603C */  c.lt.s     $f12, $f8
/* 9AB70 800E47B0 00000000 */  nop
/* 9AB74 800E47B4 45010028 */  bc1t       .Lrace_800E4858
/* 9AB78 800E47B8 00000000 */   nop
.Lrace_800E47BC:
/* 9AB7C 800E47BC 460A2102 */  mul.s      $f4, $f4, $f10
/* 9AB80 800E47C0 C4820000 */  lwc1       $f2, 0x0($a0)
/* 9AB84 800E47C4 460A1182 */  mul.s      $f6, $f2, $f10
/* 9AB88 800E47C8 C5000000 */  lwc1       $f0, 0x0($t0)
/* 9AB8C 800E47CC 46020001 */  sub.s      $f0, $f0, $f2
/* 9AB90 800E47D0 46080003 */  div.s      $f0, $f0, $f8
/* 9AB94 800E47D4 460A0002 */  mul.s      $f0, $f0, $f10
/* 9AB98 800E47D8 4600240D */  trunc.w.s  $f16, $f4
/* 9AB9C 800E47DC 44038000 */  mfc1       $v1, $f16
/* 9ABA0 800E47E0 006E1021 */  addu       $v0, $v1, $t6
/* 9ABA4 800E47E4 00533024 */  and        $a2, $v0, $s3
/* 9ABA8 800E47E8 4600340D */  trunc.w.s  $f16, $f6
/* 9ABAC 800E47EC 44098000 */  mfc1       $t1, $f16
/* 9ABB0 800E47F0 4600040D */  trunc.w.s  $f16, $f0
/* 9ABB4 800E47F4 44058000 */  mfc1       $a1, $f16
.Lrace_800E47F8:
/* 9ABB8 800E47F8 0186102A */  slt        $v0, $t4, $a2
/* 9ABBC 800E47FC 10400016 */  beqz       $v0, .Lrace_800E4858
/* 9ABC0 800E4800 24190001 */   addiu     $t9, $zero, 0x1
/* 9ABC4 800E4804 012E1021 */  addu       $v0, $t1, $t6
.Lrace_800E4808:
/* 9ABC8 800E4808 00021403 */  sra        $v0, $v0, 16
/* 9ABCC 800E480C 01621821 */  addu       $v1, $t3, $v0
/* 9ABD0 800E4810 014E1021 */  addu       $v0, $t2, $t6
/* 9ABD4 800E4814 00021403 */  sra        $v0, $v0, 16
/* 9ABD8 800E4818 01622021 */  addu       $a0, $t3, $v0
/* 9ABDC 800E481C 0064102B */  sltu       $v0, $v1, $a0
/* 9ABE0 800E4820 10400007 */  beqz       $v0, .Lrace_800E4840
/* 9ABE4 800E4824 3C150001 */   lui       $s5, (0x10000 >> 16)
/* 9ABE8 800E4828 A0720000 */  sb         $s2, 0x0($v1)
.Lrace_800E482C:
/* 9ABEC 800E482C 24630001 */  addiu      $v1, $v1, 0x1
/* 9ABF0 800E4830 0064102B */  sltu       $v0, $v1, $a0
/* 9ABF4 800E4834 5440FFFD */  bnel       $v0, $zero, .Lrace_800E482C
/* 9ABF8 800E4838 A0720000 */   sb        $s2, 0x0($v1)
/* 9ABFC 800E483C 3C150001 */  lui        $s5, (0x10000 >> 16)
.Lrace_800E4840:
/* 9AC00 800E4840 01956021 */  addu       $t4, $t4, $s5
/* 9AC04 800E4844 01254821 */  addu       $t1, $t1, $a1
/* 9AC08 800E4848 8E820034 */  lw         $v0, 0x34($s4)
/* 9AC0C 800E484C 01585021 */  addu       $t2, $t2, $t8
/* 9AC10 800E4850 080391B5 */  j          .Lrace_800E46D4
/* 9AC14 800E4854 01625821 */   addu      $t3, $t3, $v0
.Lrace_800E4858:
/* 9AC18 800E4858 8FB7001C */  lw         $s7, 0x1C($sp)
/* 9AC1C 800E485C 8FB60018 */  lw         $s6, 0x18($sp)
/* 9AC20 800E4860 8FB50014 */  lw         $s5, 0x14($sp)
/* 9AC24 800E4864 8FB40010 */  lw         $s4, 0x10($sp)
/* 9AC28 800E4868 8FB3000C */  lw         $s3, 0xC($sp)
/* 9AC2C 800E486C 8FB20008 */  lw         $s2, 0x8($sp)
/* 9AC30 800E4870 8FB10004 */  lw         $s1, 0x4($sp)
/* 9AC34 800E4874 8FB00000 */  lw         $s0, 0x0($sp)
/* 9AC38 800E4878 03E00008 */  jr         $ra
/* 9AC3C 800E487C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E4880
/* 9AC40 800E4880 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9AC44 800E4884 AFB40010 */  sw         $s4, 0x10($sp)
/* 9AC48 800E4888 0080A021 */  addu       $s4, $a0, $zero
/* 9AC4C 800E488C AFB00000 */  sw         $s0, 0x0($sp)
/* 9AC50 800E4890 00A08021 */  addu       $s0, $a1, $zero
/* 9AC54 800E4894 AFB7001C */  sw         $s7, 0x1C($sp)
/* 9AC58 800E4898 AFB60018 */  sw         $s6, 0x18($sp)
/* 9AC5C 800E489C AFB50014 */  sw         $s5, 0x14($sp)
/* 9AC60 800E48A0 AFB3000C */  sw         $s3, 0xC($sp)
/* 9AC64 800E48A4 AFB20008 */  sw         $s2, 0x8($sp)
/* 9AC68 800E48A8 AFB10004 */  sw         $s1, 0x4($sp)
/* 9AC6C 800E48AC 8E040004 */  lw         $a0, 0x4($s0)
/* 9AC70 800E48B0 8E020008 */  lw         $v0, 0x8($s0)
/* 9AC74 800E48B4 8E030000 */  lw         $v1, 0x0($s0)
/* 9AC78 800E48B8 C4840000 */  lwc1       $f4, 0x0($a0)
/* 9AC7C 800E48BC C4420000 */  lwc1       $f2, 0x0($v0)
/* 9AC80 800E48C0 C46A0004 */  lwc1       $f10, 0x4($v1)
/* 9AC84 800E48C4 46022101 */  sub.s      $f4, $f4, $f2
/* 9AC88 800E48C8 C4480004 */  lwc1       $f8, 0x4($v0)
/* 9AC8C 800E48CC 46085001 */  sub.s      $f0, $f10, $f8
/* 9AC90 800E48D0 46002102 */  mul.s      $f4, $f4, $f0
/* 9AC94 800E48D4 C4600000 */  lwc1       $f0, 0x0($v1)
/* 9AC98 800E48D8 46020001 */  sub.s      $f0, $f0, $f2
/* 9AC9C 800E48DC C4860004 */  lwc1       $f6, 0x4($a0)
/* 9ACA0 800E48E0 46083081 */  sub.s      $f2, $f6, $f8
/* 9ACA4 800E48E4 46020002 */  mul.s      $f0, $f0, $f2
/* 9ACA8 800E48E8 46002101 */  sub.s      $f4, $f4, $f0
/* 9ACAC 800E48EC 44800000 */  mtc1       $zero, $f0
/* 9ACB0 800E48F0 4604003E */  c.le.s     $f0, $f4
/* 9ACB4 800E48F4 00000000 */  nop
/* 9ACB8 800E48F8 45010110 */  bc1t       .Lrace_800E4D3C
/* 9ACBC 800E48FC 00000000 */   nop
/* 9ACC0 800E4900 4606503C */  c.lt.s     $f10, $f6
/* 9ACC4 800E4904 00000000 */  nop
/* 9ACC8 800E4908 45000007 */  bc1f       .Lrace_800E4928
/* 9ACCC 800E490C 24030002 */   addiu     $v1, $zero, 0x2
/* 9ACD0 800E4910 4608503C */  c.lt.s     $f10, $f8
/* 9ACD4 800E4914 00000000 */  nop
/* 9ACD8 800E4918 45030007 */  bc1tl      .Lrace_800E4938
/* 9ACDC 800E491C 00001821 */   addu      $v1, $zero, $zero
/* 9ACE0 800E4920 0803924F */  j          .Lrace_800E493C
/* 9ACE4 800E4924 0000C821 */   addu      $t9, $zero, $zero
.Lrace_800E4928:
/* 9ACE8 800E4928 4608303C */  c.lt.s     $f6, $f8
/* 9ACEC 800E492C 00000000 */  nop
/* 9ACF0 800E4930 45030001 */  bc1tl      .Lrace_800E4938
/* 9ACF4 800E4934 24030001 */   addiu     $v1, $zero, 0x1
.Lrace_800E4938:
/* 9ACF8 800E4938 0000C821 */  addu       $t9, $zero, $zero
.Lrace_800E493C:
/* 9ACFC 800E493C 00031880 */  sll        $v1, $v1, 2
/* 9AD00 800E4940 3C02800D */  lui        $v0, %hi(D_race_800CB8F4)
/* 9AD04 800E4944 2445B8F4 */  addiu      $a1, $v0, %lo(D_race_800CB8F4)
/* 9AD08 800E4948 00651021 */  addu       $v0, $v1, $a1
/* 9AD0C 800E494C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 9AD10 800E4950 00701021 */  addu       $v0, $v1, $s0
/* 9AD14 800E4954 8C440000 */  lw         $a0, 0x0($v0)
/* 9AD18 800E4958 3C01800D */  lui        $at, %hi(D_race_800CB888)
/* 9AD1C 800E495C C42AB888 */  lwc1       $f10, %lo(D_race_800CB888)($at)
/* 9AD20 800E4960 3C01800D */  lui        $at, %hi(D_race_800CB88C)
/* 9AD24 800E4964 C426B88C */  lwc1       $f6, %lo(D_race_800CB88C)($at)
/* 9AD28 800E4968 000F5880 */  sll        $t3, $t7, 2
/* 9AD2C 800E496C 01701021 */  addu       $v0, $t3, $s0
/* 9AD30 800E4970 8C480000 */  lw         $t0, 0x0($v0)
/* 9AD34 800E4974 3C02800D */  lui        $v0, %hi(D_race_800CB8E8)
/* 9AD38 800E4978 2442B8E8 */  addiu      $v0, $v0, %lo(D_race_800CB8E8)
/* 9AD3C 800E497C C4800004 */  lwc1       $f0, 0x4($a0)
/* 9AD40 800E4980 C5020004 */  lwc1       $f2, 0x4($t0)
/* 9AD44 800E4984 00621821 */  addu       $v1, $v1, $v0
/* 9AD48 800E4988 46001201 */  sub.s      $f8, $f2, $f0
/* 9AD4C 800E498C C4800000 */  lwc1       $f0, 0x0($a0)
/* 9AD50 800E4990 8C6D0000 */  lw         $t5, 0x0($v1)
/* 9AD54 800E4994 460A0002 */  mul.s      $f0, $f0, $f10
/* 9AD58 800E4998 00803021 */  addu       $a2, $a0, $zero
/* 9AD5C 800E499C 000D1080 */  sll        $v0, $t5, 2
/* 9AD60 800E49A0 00501021 */  addu       $v0, $v0, $s0
/* 9AD64 800E49A4 8C470000 */  lw         $a3, 0x0($v0)
/* 9AD68 800E49A8 4606403C */  c.lt.s     $f8, $f6
/* 9AD6C 800E49AC 4600040D */  trunc.w.s  $f16, $f0
/* 9AD70 800E49B0 44098000 */  mfc1       $t1, $f16
/* 9AD74 800E49B4 4500001C */  bc1f       .Lrace_800E4A28
/* 9AD78 800E49B8 01205021 */   addu      $t2, $t1, $zero
/* 9AD7C 800E49BC 3C01800D */  lui        $at, %hi(D_race_800CB890)
/* 9AD80 800E49C0 C424B890 */  lwc1       $f4, %lo(D_race_800CB890)($at)
/* 9AD84 800E49C4 4608203C */  c.lt.s     $f4, $f8
/* 9AD88 800E49C8 00000000 */  nop
/* 9AD8C 800E49CC 45000016 */  bc1f       .Lrace_800E4A28
/* 9AD90 800E49D0 01651021 */   addu      $v0, $t3, $a1
/* 9AD94 800E49D4 8C4F0000 */  lw         $t7, 0x0($v0)
/* 9AD98 800E49D8 01002021 */  addu       $a0, $t0, $zero
/* 9AD9C 800E49DC 000F1080 */  sll        $v0, $t7, 2
/* 9ADA0 800E49E0 00501021 */  addu       $v0, $v0, $s0
/* 9ADA4 800E49E4 8C480000 */  lw         $t0, 0x0($v0)
/* 9ADA8 800E49E8 C4800004 */  lwc1       $f0, 0x4($a0)
/* 9ADAC 800E49EC C5020004 */  lwc1       $f2, 0x4($t0)
/* 9ADB0 800E49F0 46001201 */  sub.s      $f8, $f2, $f0
/* 9ADB4 800E49F4 4606403C */  c.lt.s     $f8, $f6
/* 9ADB8 800E49F8 00000000 */  nop
/* 9ADBC 800E49FC 45000005 */  bc1f       .Lrace_800E4A14
/* 9ADC0 800E4A00 00000000 */   nop
/* 9ADC4 800E4A04 4608203C */  c.lt.s     $f4, $f8
/* 9ADC8 800E4A08 00000000 */  nop
/* 9ADCC 800E4A0C 450100CB */  bc1t       .Lrace_800E4D3C
/* 9ADD0 800E4A10 00000000 */   nop
.Lrace_800E4A14:
/* 9ADD4 800E4A14 C4800000 */  lwc1       $f0, 0x0($a0)
/* 9ADD8 800E4A18 460A0002 */  mul.s      $f0, $f0, $f10
/* 9ADDC 800E4A1C 24190001 */  addiu      $t9, $zero, 0x1
/* 9ADE0 800E4A20 4600040D */  trunc.w.s  $f16, $f0
/* 9ADE4 800E4A24 44098000 */  mfc1       $t1, $f16
.Lrace_800E4A28:
/* 9ADE8 800E4A28 C4800004 */  lwc1       $f0, 0x4($a0)
/* 9ADEC 800E4A2C 3C01800D */  lui        $at, %hi(D_race_800CB894)
/* 9ADF0 800E4A30 C426B894 */  lwc1       $f6, %lo(D_race_800CB894)($at)
/* 9ADF4 800E4A34 46060002 */  mul.s      $f0, $f0, $f6
/* 9ADF8 800E4A38 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* 9ADFC 800E4A3C 4600040D */  trunc.w.s  $f16, $f0
/* 9AE00 800E4A40 44028000 */  mfc1       $v0, $f16
/* 9AE04 800E4A44 00431021 */  addu       $v0, $v0, $v1
/* 9AE08 800E4A48 3C03FFFF */  lui        $v1, (0xFFFF0000 >> 16)
/* 9AE0C 800E4A4C 00436024 */  and        $t4, $v0, $v1
/* 9AE10 800E4A50 8E830034 */  lw         $v1, 0x34($s4)
/* 9AE14 800E4A54 000C1403 */  sra        $v0, $t4, 16
/* 9AE18 800E4A58 00430018 */  mult       $v0, $v1
/* 9AE1C 800E4A5C C4820000 */  lwc1       $f2, 0x0($a0)
/* 9AE20 800E4A60 C5000000 */  lwc1       $f0, 0x0($t0)
/* 9AE24 800E4A64 46020001 */  sub.s      $f0, $f0, $f2
/* 9AE28 800E4A68 46080003 */  div.s      $f0, $f0, $f8
/* 9AE2C 800E4A6C 46060102 */  mul.s      $f4, $f0, $f6
/* 9AE30 800E4A70 C4E20004 */  lwc1       $f2, 0x4($a3)
/* 9AE34 800E4A74 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 9AE38 800E4A78 46001201 */  sub.s      $f8, $f2, $f0
/* 9AE3C 800E4A7C 3C01800D */  lui        $at, %hi(D_race_800CB898)
/* 9AE40 800E4A80 C42AB898 */  lwc1       $f10, %lo(D_race_800CB898)($at)
/* 9AE44 800E4A84 8E820030 */  lw         $v0, 0x30($s4)
/* 9AE48 800E4A88 460A403C */  c.lt.s     $f8, $f10
/* 9AE4C 800E4A8C 4600240D */  trunc.w.s  $f16, $f4
/* 9AE50 800E4A90 44058000 */  mfc1       $a1, $f16
/* 9AE54 800E4A94 0000B812 */  mflo       $s7
/* 9AE58 800E4A98 4500001F */  bc1f       .Lrace_800E4B18
/* 9AE5C 800E4A9C 00575821 */   addu      $t3, $v0, $s7
/* 9AE60 800E4AA0 3C01800D */  lui        $at, %hi(D_race_800CB89C)
/* 9AE64 800E4AA4 C424B89C */  lwc1       $f4, %lo(D_race_800CB89C)($at)
/* 9AE68 800E4AA8 4608203C */  c.lt.s     $f4, $f8
/* 9AE6C 800E4AAC 00000000 */  nop
/* 9AE70 800E4AB0 45000019 */  bc1f       .Lrace_800E4B18
/* 9AE74 800E4AB4 3C03800D */   lui       $v1, %hi(D_race_800CB8E8)
/* 9AE78 800E4AB8 2463B8E8 */  addiu      $v1, $v1, %lo(D_race_800CB8E8)
/* 9AE7C 800E4ABC 000D1080 */  sll        $v0, $t5, 2
/* 9AE80 800E4AC0 00431021 */  addu       $v0, $v0, $v1
/* 9AE84 800E4AC4 8C4D0000 */  lw         $t5, 0x0($v0)
/* 9AE88 800E4AC8 00E03021 */  addu       $a2, $a3, $zero
/* 9AE8C 800E4ACC 000D1080 */  sll        $v0, $t5, 2
/* 9AE90 800E4AD0 00501021 */  addu       $v0, $v0, $s0
/* 9AE94 800E4AD4 8C470000 */  lw         $a3, 0x0($v0)
/* 9AE98 800E4AD8 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 9AE9C 800E4ADC C4E20004 */  lwc1       $f2, 0x4($a3)
/* 9AEA0 800E4AE0 46001201 */  sub.s      $f8, $f2, $f0
/* 9AEA4 800E4AE4 460A403C */  c.lt.s     $f8, $f10
/* 9AEA8 800E4AE8 00000000 */  nop
/* 9AEAC 800E4AEC 45000005 */  bc1f       .Lrace_800E4B04
/* 9AEB0 800E4AF0 00000000 */   nop
/* 9AEB4 800E4AF4 4608203C */  c.lt.s     $f4, $f8
/* 9AEB8 800E4AF8 00000000 */  nop
/* 9AEBC 800E4AFC 4501008F */  bc1t       .Lrace_800E4D3C
/* 9AEC0 800E4B00 00000000 */   nop
.Lrace_800E4B04:
/* 9AEC4 800E4B04 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 9AEC8 800E4B08 46060002 */  mul.s      $f0, $f0, $f6
/* 9AECC 800E4B0C 24190001 */  addiu      $t9, $zero, 0x1
/* 9AED0 800E4B10 4600040D */  trunc.w.s  $f16, $f0
/* 9AED4 800E4B14 440A8000 */  mfc1       $t2, $f16
.Lrace_800E4B18:
/* 9AED8 800E4B18 C4E00000 */  lwc1       $f0, 0x0($a3)
/* 9AEDC 800E4B1C C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9AEE0 800E4B20 46020001 */  sub.s      $f0, $f0, $f2
/* 9AEE4 800E4B24 3C01800D */  lui        $at, %hi(D_race_800CB8A0)
/* 9AEE8 800E4B28 C426B8A0 */  lwc1       $f6, %lo(D_race_800CB8A0)($at)
/* 9AEEC 800E4B2C 46080003 */  div.s      $f0, $f0, $f8
/* 9AEF0 800E4B30 46060002 */  mul.s      $f0, $f0, $f6
/* 9AEF4 800E4B34 C5040004 */  lwc1       $f4, 0x4($t0)
/* 9AEF8 800E4B38 C4E20004 */  lwc1       $f2, 0x4($a3)
/* 9AEFC 800E4B3C 96920012 */  lhu        $s2, 0x12($s4)
/* 9AF00 800E4B40 4604103C */  c.lt.s     $f2, $f4
/* 9AF04 800E4B44 4600040D */  trunc.w.s  $f16, $f0
/* 9AF08 800E4B48 44188000 */  mfc1       $t8, $f16
/* 9AF0C 800E4B4C 45000004 */  bc1f       .Lrace_800E4B60
/* 9AF10 800E4B50 24110001 */   addiu     $s1, $zero, 0x1
/* 9AF14 800E4B54 46061002 */  mul.s      $f0, $f2, $f6
/* 9AF18 800E4B58 080392DB */  j          .Lrace_800E4B6C
/* 9AF1C 800E4B5C 3402FFFF */   ori       $v0, $zero, 0xFFFF
.Lrace_800E4B60:
/* 9AF20 800E4B60 46062002 */  mul.s      $f0, $f4, $f6
/* 9AF24 800E4B64 00008821 */  addu       $s1, $zero, $zero
/* 9AF28 800E4B68 3402FFFF */  ori        $v0, $zero, 0xFFFF
.Lrace_800E4B6C:
/* 9AF2C 800E4B6C 4600040D */  trunc.w.s  $f16, $f0
/* 9AF30 800E4B70 44038000 */  mfc1       $v1, $f16
/* 9AF34 800E4B74 00621021 */  addu       $v0, $v1, $v0
/* 9AF38 800E4B78 3C03FFFF */  lui        $v1, (0xFFFF0000 >> 16)
/* 9AF3C 800E4B7C 00433024 */  and        $a2, $v0, $v1
/* 9AF40 800E4B80 3C02800D */  lui        $v0, %hi(D_race_800CB8E8)
/* 9AF44 800E4B84 2456B8E8 */  addiu      $s6, $v0, %lo(D_race_800CB8E8)
/* 9AF48 800E4B88 340EFFFF */  ori        $t6, $zero, 0xFFFF
/* 9AF4C 800E4B8C 3C13FFFF */  lui        $s3, (0xFFFF0000 >> 16)
/* 9AF50 800E4B90 3C02800D */  lui        $v0, %hi(D_race_800CB8F4)
/* 9AF54 800E4B94 2455B8F4 */  addiu      $s5, $v0, %lo(D_race_800CB8F4)
/* 9AF58 800E4B98 3C01800D */  lui        $at, %hi(D_race_800CB8A4)
/* 9AF5C 800E4B9C C42EB8A4 */  lwc1       $f14, %lo(D_race_800CB8A4)($at)
/* 9AF60 800E4BA0 3C01800D */  lui        $at, %hi(D_race_800CB8A8)
/* 9AF64 800E4BA4 C42CB8A8 */  lwc1       $f12, %lo(D_race_800CB8A8)($at)
/* 9AF68 800E4BA8 3C01800D */  lui        $at, %hi(D_race_800CB8AC)
/* 9AF6C 800E4BAC C42AB8AC */  lwc1       $f10, %lo(D_race_800CB8AC)($at)
.Lrace_800E4BB0:
/* 9AF70 800E4BB0 0186102A */  slt        $v0, $t4, $a2
/* 9AF74 800E4BB4 5440004B */  bnel       $v0, $zero, .Lrace_800E4CE4
/* 9AF78 800E4BB8 012E1021 */   addu      $v0, $t1, $t6
/* 9AF7C 800E4BBC 1720005F */  bnez       $t9, .Lrace_800E4D3C
/* 9AF80 800E4BC0 00000000 */   nop
/* 9AF84 800E4BC4 12200022 */  beqz       $s1, .Lrace_800E4C50
/* 9AF88 800E4BC8 000D1080 */   sll       $v0, $t5, 2
/* 9AF8C 800E4BCC 00561021 */  addu       $v0, $v0, $s6
/* 9AF90 800E4BD0 8C4D0000 */  lw         $t5, 0x0($v0)
/* 9AF94 800E4BD4 00E03021 */  addu       $a2, $a3, $zero
/* 9AF98 800E4BD8 000D1080 */  sll        $v0, $t5, 2
/* 9AF9C 800E4BDC 00501021 */  addu       $v0, $v0, $s0
/* 9AFA0 800E4BE0 8C470000 */  lw         $a3, 0x0($v0)
/* 9AFA4 800E4BE4 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 9AFA8 800E4BE8 C4E40004 */  lwc1       $f4, 0x4($a3)
/* 9AFAC 800E4BEC 46002201 */  sub.s      $f8, $f4, $f0
/* 9AFB0 800E4BF0 460E403C */  c.lt.s     $f8, $f14
/* 9AFB4 800E4BF4 00000000 */  nop
/* 9AFB8 800E4BF8 45000005 */  bc1f       .Lrace_800E4C10
/* 9AFBC 800E4BFC 00000000 */   nop
/* 9AFC0 800E4C00 4608603C */  c.lt.s     $f12, $f8
/* 9AFC4 800E4C04 00000000 */  nop
/* 9AFC8 800E4C08 4501004C */  bc1t       .Lrace_800E4D3C
/* 9AFCC 800E4C0C 00000000 */   nop
.Lrace_800E4C10:
/* 9AFD0 800E4C10 460A2102 */  mul.s      $f4, $f4, $f10
/* 9AFD4 800E4C14 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9AFD8 800E4C18 460A1182 */  mul.s      $f6, $f2, $f10
/* 9AFDC 800E4C1C C4E00000 */  lwc1       $f0, 0x0($a3)
/* 9AFE0 800E4C20 46020001 */  sub.s      $f0, $f0, $f2
/* 9AFE4 800E4C24 46080003 */  div.s      $f0, $f0, $f8
/* 9AFE8 800E4C28 460A0002 */  mul.s      $f0, $f0, $f10
/* 9AFEC 800E4C2C 4600240D */  trunc.w.s  $f16, $f4
/* 9AFF0 800E4C30 44038000 */  mfc1       $v1, $f16
/* 9AFF4 800E4C34 006E1021 */  addu       $v0, $v1, $t6
/* 9AFF8 800E4C38 4600340D */  trunc.w.s  $f16, $f6
/* 9AFFC 800E4C3C 440A8000 */  mfc1       $t2, $f16
/* 9B000 800E4C40 4600040D */  trunc.w.s  $f16, $f0
/* 9B004 800E4C44 44188000 */  mfc1       $t8, $f16
/* 9B008 800E4C48 08039335 */  j          .Lrace_800E4CD4
/* 9B00C 800E4C4C 00533024 */   and       $a2, $v0, $s3
.Lrace_800E4C50:
/* 9B010 800E4C50 000F1080 */  sll        $v0, $t7, 2
/* 9B014 800E4C54 00551021 */  addu       $v0, $v0, $s5
/* 9B018 800E4C58 8C4F0000 */  lw         $t7, 0x0($v0)
/* 9B01C 800E4C5C 01002021 */  addu       $a0, $t0, $zero
/* 9B020 800E4C60 000F1080 */  sll        $v0, $t7, 2
/* 9B024 800E4C64 00501021 */  addu       $v0, $v0, $s0
/* 9B028 800E4C68 8C480000 */  lw         $t0, 0x0($v0)
/* 9B02C 800E4C6C C4800004 */  lwc1       $f0, 0x4($a0)
/* 9B030 800E4C70 C5040004 */  lwc1       $f4, 0x4($t0)
/* 9B034 800E4C74 46002201 */  sub.s      $f8, $f4, $f0
/* 9B038 800E4C78 460E403C */  c.lt.s     $f8, $f14
/* 9B03C 800E4C7C 00000000 */  nop
/* 9B040 800E4C80 45000005 */  bc1f       .Lrace_800E4C98
/* 9B044 800E4C84 00000000 */   nop
/* 9B048 800E4C88 4608603C */  c.lt.s     $f12, $f8
/* 9B04C 800E4C8C 00000000 */  nop
/* 9B050 800E4C90 4501002A */  bc1t       .Lrace_800E4D3C
/* 9B054 800E4C94 00000000 */   nop
.Lrace_800E4C98:
/* 9B058 800E4C98 460A2102 */  mul.s      $f4, $f4, $f10
/* 9B05C 800E4C9C C4820000 */  lwc1       $f2, 0x0($a0)
/* 9B060 800E4CA0 460A1182 */  mul.s      $f6, $f2, $f10
/* 9B064 800E4CA4 C5000000 */  lwc1       $f0, 0x0($t0)
/* 9B068 800E4CA8 46020001 */  sub.s      $f0, $f0, $f2
/* 9B06C 800E4CAC 46080003 */  div.s      $f0, $f0, $f8
/* 9B070 800E4CB0 460A0002 */  mul.s      $f0, $f0, $f10
/* 9B074 800E4CB4 4600240D */  trunc.w.s  $f16, $f4
/* 9B078 800E4CB8 44038000 */  mfc1       $v1, $f16
/* 9B07C 800E4CBC 006E1021 */  addu       $v0, $v1, $t6
/* 9B080 800E4CC0 00533024 */  and        $a2, $v0, $s3
/* 9B084 800E4CC4 4600340D */  trunc.w.s  $f16, $f6
/* 9B088 800E4CC8 44098000 */  mfc1       $t1, $f16
/* 9B08C 800E4CCC 4600040D */  trunc.w.s  $f16, $f0
/* 9B090 800E4CD0 44058000 */  mfc1       $a1, $f16
.Lrace_800E4CD4:
/* 9B094 800E4CD4 0186102A */  slt        $v0, $t4, $a2
/* 9B098 800E4CD8 10400018 */  beqz       $v0, .Lrace_800E4D3C
/* 9B09C 800E4CDC 24190001 */   addiu     $t9, $zero, 0x1
/* 9B0A0 800E4CE0 012E1021 */  addu       $v0, $t1, $t6
.Lrace_800E4CE4:
/* 9B0A4 800E4CE4 00021403 */  sra        $v0, $v0, 16
/* 9B0A8 800E4CE8 00021040 */  sll        $v0, $v0, 1
/* 9B0AC 800E4CEC 01621821 */  addu       $v1, $t3, $v0
/* 9B0B0 800E4CF0 014E1021 */  addu       $v0, $t2, $t6
/* 9B0B4 800E4CF4 00021403 */  sra        $v0, $v0, 16
/* 9B0B8 800E4CF8 00021040 */  sll        $v0, $v0, 1
/* 9B0BC 800E4CFC 01622021 */  addu       $a0, $t3, $v0
/* 9B0C0 800E4D00 0064102B */  sltu       $v0, $v1, $a0
/* 9B0C4 800E4D04 10400007 */  beqz       $v0, .Lrace_800E4D24
/* 9B0C8 800E4D08 3C020001 */   lui       $v0, (0x10000 >> 16)
/* 9B0CC 800E4D0C A4720000 */  sh         $s2, 0x0($v1)
.Lrace_800E4D10:
/* 9B0D0 800E4D10 24630002 */  addiu      $v1, $v1, 0x2
/* 9B0D4 800E4D14 0064102B */  sltu       $v0, $v1, $a0
/* 9B0D8 800E4D18 5440FFFD */  bnel       $v0, $zero, .Lrace_800E4D10
/* 9B0DC 800E4D1C A4720000 */   sh        $s2, 0x0($v1)
/* 9B0E0 800E4D20 3C020001 */  lui        $v0, (0x10000 >> 16)
.Lrace_800E4D24:
/* 9B0E4 800E4D24 01826021 */  addu       $t4, $t4, $v0
/* 9B0E8 800E4D28 01254821 */  addu       $t1, $t1, $a1
/* 9B0EC 800E4D2C 8E820034 */  lw         $v0, 0x34($s4)
/* 9B0F0 800E4D30 01585021 */  addu       $t2, $t2, $t8
/* 9B0F4 800E4D34 080392EC */  j          .Lrace_800E4BB0
/* 9B0F8 800E4D38 01625821 */   addu      $t3, $t3, $v0
.Lrace_800E4D3C:
/* 9B0FC 800E4D3C 8FB7001C */  lw         $s7, 0x1C($sp)
/* 9B100 800E4D40 8FB60018 */  lw         $s6, 0x18($sp)
/* 9B104 800E4D44 8FB50014 */  lw         $s5, 0x14($sp)
/* 9B108 800E4D48 8FB40010 */  lw         $s4, 0x10($sp)
/* 9B10C 800E4D4C 8FB3000C */  lw         $s3, 0xC($sp)
/* 9B110 800E4D50 8FB20008 */  lw         $s2, 0x8($sp)
/* 9B114 800E4D54 8FB10004 */  lw         $s1, 0x4($sp)
/* 9B118 800E4D58 8FB00000 */  lw         $s0, 0x0($sp)
/* 9B11C 800E4D5C 03E00008 */  jr         $ra
/* 9B120 800E4D60 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E4D64
/* 9B124 800E4D64 8C820008 */  lw         $v0, 0x8($a0)
/* 9B128 800E4D68 03E00008 */  jr         $ra
/* 9B12C 800E4D6C 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800E4D70
/* 9B130 800E4D70 8C820010 */  lw         $v0, 0x10($a0)
/* 9B134 800E4D74 03E00008 */  jr         $ra
/* 9B138 800E4D78 00000000 */   nop

glabel func_race_800E4D7C
/* 9B13C 800E4D7C 8C82000C */  lw         $v0, 0xC($a0)
/* 9B140 800E4D80 03E00008 */  jr         $ra
/* 9B144 800E4D84 00000000 */   nop
