.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E9720
/* 9FAE0 800E9720 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9FAE4 800E9724 AFB00010 */  sw         $s0, 0x10($sp)
/* 9FAE8 800E9728 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9FAEC 800E972C 0C03A1A4 */  jal        func_race_800E8690
/* 9FAF0 800E9730 00808021 */   addu      $s0, $a0, $zero
/* 9FAF4 800E9734 02001021 */  addu       $v0, $s0, $zero
/* 9FAF8 800E9738 3C03800D */  lui        $v1, %hi(D_race_800CBDC0)
/* 9FAFC 800E973C 2463BDC0 */  addiu      $v1, $v1, %lo(D_race_800CBDC0)
/* 9FB00 800E9740 AC430000 */  sw         $v1, 0x0($v0)
/* 9FB04 800E9744 AC400010 */  sw         $zero, 0x10($v0)
/* 9FB08 800E9748 AC400014 */  sw         $zero, 0x14($v0)
/* 9FB0C 800E974C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9FB10 800E9750 8FB00010 */  lw         $s0, 0x10($sp)
/* 9FB14 800E9754 03E00008 */  jr         $ra
/* 9FB18 800E9758 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E975C
/* 9FB1C 800E975C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9FB20 800E9760 AFB00010 */  sw         $s0, 0x10($sp)
/* 9FB24 800E9764 00808021 */  addu       $s0, $a0, $zero
/* 9FB28 800E9768 AFB10014 */  sw         $s1, 0x14($sp)
/* 9FB2C 800E976C 00A08821 */  addu       $s1, $a1, $zero
/* 9FB30 800E9770 3C02800D */  lui        $v0, %hi(D_race_800CBDC0)
/* 9FB34 800E9774 2442BDC0 */  addiu      $v0, $v0, %lo(D_race_800CBDC0)
/* 9FB38 800E9778 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9FB3C 800E977C 0C03A5FF */  jal        func_race_800E97FC
/* 9FB40 800E9780 AE020000 */   sw        $v0, 0x0($s0)
/* 9FB44 800E9784 02002021 */  addu       $a0, $s0, $zero
/* 9FB48 800E9788 0C03A1AC */  jal        func_race_800E86B0
/* 9FB4C 800E978C 02202821 */   addu      $a1, $s1, $zero
/* 9FB50 800E9790 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9FB54 800E9794 8FB10014 */  lw         $s1, 0x14($sp)
/* 9FB58 800E9798 8FB00010 */  lw         $s0, 0x10($sp)
/* 9FB5C 800E979C 03E00008 */  jr         $ra
/* 9FB60 800E97A0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E97A4
/* 9FB64 800E97A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9FB68 800E97A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 9FB6C 800E97AC 00808021 */  addu       $s0, $a0, $zero
/* 9FB70 800E97B0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9FB74 800E97B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 9FB78 800E97B8 8E02000C */  lw         $v0, 0xC($s0)
/* 9FB7C 800E97BC 10400003 */  beqz       $v0, .Lrace_800E97CC
/* 9FB80 800E97C0 00A08821 */   addu      $s1, $a1, $zero
/* 9FB84 800E97C4 0C03A5FF */  jal        func_race_800E97FC
/* 9FB88 800E97C8 00000000 */   nop
.Lrace_800E97CC:
/* 9FB8C 800E97CC 8E220038 */  lw         $v0, 0x38($s1)
/* 9FB90 800E97D0 AE000008 */  sw         $zero, 0x8($s0)
/* 9FB94 800E97D4 AE020010 */  sw         $v0, 0x10($s0)
/* 9FB98 800E97D8 8E230040 */  lw         $v1, 0x40($s1)
/* 9FB9C 800E97DC 24020001 */  addiu      $v0, $zero, 0x1
/* 9FBA0 800E97E0 AE02000C */  sw         $v0, 0xC($s0)
/* 9FBA4 800E97E4 AE030014 */  sw         $v1, 0x14($s0)
/* 9FBA8 800E97E8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9FBAC 800E97EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 9FBB0 800E97F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 9FBB4 800E97F4 03E00008 */  jr         $ra
/* 9FBB8 800E97F8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E97FC
/* 9FBBC 800E97FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9FBC0 800E9800 AFB00010 */  sw         $s0, 0x10($sp)
/* 9FBC4 800E9804 00808021 */  addu       $s0, $a0, $zero
/* 9FBC8 800E9808 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9FBCC 800E980C 8E020000 */  lw         $v0, 0x0($s0)
/* 9FBD0 800E9810 00002821 */  addu       $a1, $zero, $zero
/* 9FBD4 800E9814 84440018 */  lh         $a0, 0x18($v0)
/* 9FBD8 800E9818 8C42001C */  lw         $v0, 0x1C($v0)
/* 9FBDC 800E981C 0040F809 */  jalr       $v0
/* 9FBE0 800E9820 02042021 */   addu      $a0, $s0, $a0
/* 9FBE4 800E9824 02002021 */  addu       $a0, $s0, $zero
/* 9FBE8 800E9828 AC800010 */  sw         $zero, 0x10($a0)
/* 9FBEC 800E982C 0C03A1C0 */  jal        func_race_800E8700
/* 9FBF0 800E9830 AC800014 */   sw        $zero, 0x14($a0)
/* 9FBF4 800E9834 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9FBF8 800E9838 8FB00010 */  lw         $s0, 0x10($sp)
/* 9FBFC 800E983C 03E00008 */  jr         $ra
/* 9FC00 800E9840 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E9844
/* 9FC04 800E9844 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 9FC08 800E9848 AFB00030 */  sw         $s0, 0x30($sp)
/* 9FC0C 800E984C 00808021 */  addu       $s0, $a0, $zero
/* 9FC10 800E9850 AFBF0038 */  sw         $ra, 0x38($sp)
/* 9FC14 800E9854 10A0002A */  beqz       $a1, .Lrace_800E9900
/* 9FC18 800E9858 AFB10034 */   sw        $s1, 0x34($sp)
/* 9FC1C 800E985C 8E02000C */  lw         $v0, 0xC($s0)
/* 9FC20 800E9860 24110002 */  addiu      $s1, $zero, 0x2
/* 9FC24 800E9864 10510026 */  beq        $v0, $s1, .Lrace_800E9900
/* 9FC28 800E9868 00000000 */   nop
/* 9FC2C 800E986C 8CA20D04 */  lw         $v0, 0xD04($a1)
/* 9FC30 800E9870 30420010 */  andi       $v0, $v0, 0x10
/* 9FC34 800E9874 14400022 */  bnez       $v0, .Lrace_800E9900
/* 9FC38 800E9878 3C02800D */   lui       $v0, %hi(D_race_800CBE34)
/* 9FC3C 800E987C 244ABE34 */  addiu      $t2, $v0, %lo(D_race_800CBE34)
/* 9FC40 800E9880 8D470000 */  lw         $a3, 0x0($t2)
/* 9FC44 800E9884 8D480004 */  lw         $t0, 0x4($t2)
/* 9FC48 800E9888 8D490008 */  lw         $t1, 0x8($t2)
/* 9FC4C 800E988C AFA7001C */  sw         $a3, 0x1C($sp)
/* 9FC50 800E9890 AFA80020 */  sw         $t0, 0x20($sp)
/* 9FC54 800E9894 AFA90024 */  sw         $t1, 0x24($sp)
/* 9FC58 800E9898 3C02800D */  lui        $v0, %hi(D_race_800CBE28)
/* 9FC5C 800E989C 244ABE28 */  addiu      $t2, $v0, %lo(D_race_800CBE28)
/* 9FC60 800E98A0 8D470000 */  lw         $a3, 0x0($t2)
/* 9FC64 800E98A4 8D480004 */  lw         $t0, 0x4($t2)
/* 9FC68 800E98A8 8D490008 */  lw         $t1, 0x8($t2)
/* 9FC6C 800E98AC AFA70010 */  sw         $a3, 0x10($sp)
/* 9FC70 800E98B0 AFA80014 */  sw         $t0, 0x14($sp)
/* 9FC74 800E98B4 AFA90018 */  sw         $t1, 0x18($sp)
/* 9FC78 800E98B8 8E020014 */  lw         $v0, 0x14($s0)
/* 9FC7C 800E98BC 10400007 */  beqz       $v0, .Lrace_800E98DC
/* 9FC80 800E98C0 27A30010 */   addiu     $v1, $sp, 0x10
/* 9FC84 800E98C4 C7A00020 */  lwc1       $f0, 0x20($sp)
/* 9FC88 800E98C8 C7A20014 */  lwc1       $f2, 0x14($sp)
/* 9FC8C 800E98CC 46000007 */  neg.s      $f0, $f0
/* 9FC90 800E98D0 46001087 */  neg.s      $f2, $f2
/* 9FC94 800E98D4 E7A00020 */  swc1       $f0, 0x20($sp)
/* 9FC98 800E98D8 E7A20014 */  swc1       $f2, 0x14($sp)
.Lrace_800E98DC:
/* 9FC9C 800E98DC AFA00028 */  sw         $zero, 0x28($sp)
/* 9FCA0 800E98E0 8E020010 */  lw         $v0, 0x10($s0)
/* 9FCA4 800E98E4 AC431998 */  sw         $v1, 0x1998($v0)
/* 9FCA8 800E98E8 8E040010 */  lw         $a0, 0x10($s0)
/* 9FCAC 800E98EC 0C04B23C */  jal        func_race_8012C8F0
/* 9FCB0 800E98F0 24060003 */   addiu     $a2, $zero, 0x3
/* 9FCB4 800E98F4 8E020010 */  lw         $v0, 0x10($s0)
/* 9FCB8 800E98F8 AC401998 */  sw         $zero, 0x1998($v0)
/* 9FCBC 800E98FC AE11000C */  sw         $s1, 0xC($s0)
.Lrace_800E9900:
/* 9FCC0 800E9900 8FBF0038 */  lw         $ra, 0x38($sp)
/* 9FCC4 800E9904 8FB10034 */  lw         $s1, 0x34($sp)
/* 9FCC8 800E9908 8FB00030 */  lw         $s0, 0x30($sp)
/* 9FCCC 800E990C 03E00008 */  jr         $ra
/* 9FCD0 800E9910 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800E9914
/* 9FCD4 800E9914 10A00002 */  beqz       $a1, .Lrace_800E9920
/* 9FCD8 800E9918 24020001 */   addiu     $v0, $zero, 0x1
/* 9FCDC 800E991C AC82000C */  sw         $v0, 0xC($a0)
.Lrace_800E9920:
/* 9FCE0 800E9920 03E00008 */  jr         $ra
/* 9FCE4 800E9924 00000000 */   nop

glabel func_race_800E9928
/* 9FCE8 800E9928 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9FCEC 800E992C AFBF0010 */  sw         $ra, 0x10($sp)
/* 9FCF0 800E9930 8C83000C */  lw         $v1, 0xC($a0)
/* 9FCF4 800E9934 24020001 */  addiu      $v0, $zero, 0x1
/* 9FCF8 800E9938 10620003 */  beq        $v1, $v0, .Lrace_800E9948
/* 9FCFC 800E993C 00000000 */   nop
/* 9FD00 800E9940 0C03A1C4 */  jal        func_race_800E8710
/* 9FD04 800E9944 00000000 */   nop
.Lrace_800E9948:
/* 9FD08 800E9948 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9FD0C 800E994C 03E00008 */  jr         $ra
/* 9FD10 800E9950 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E9954
/* 9FD14 800E9954 03E00008 */  jr         $ra
/* 9FD18 800E9958 24020001 */   addiu     $v0, $zero, 0x1
