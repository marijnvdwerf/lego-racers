.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800F95E0
/* 1176D0 800F95E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1176D4 800F95E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1176D8 800F95E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1176DC 800F95EC 0C0401D8 */  jal        func_menu_80100760
/* 1176E0 800F95F0 00808021 */   addu      $s0, $a0, $zero
/* 1176E4 800F95F4 26040368 */  addiu      $a0, $s0, 0x368
/* 1176E8 800F95F8 3C02800D */  lui        $v0, %hi(D_menu_800CC7A0)
/* 1176EC 800F95FC 2442C7A0 */  addiu      $v0, $v0, %lo(D_menu_800CC7A0)
/* 1176F0 800F9600 0C044924 */  jal        func_menu_80112490
/* 1176F4 800F9604 AE020000 */   sw        $v0, 0x0($s0)
/* 1176F8 800F9608 0C002F50 */  jal        func_8000BD40
/* 1176FC 800F960C 26040638 */   addiu     $a0, $s0, 0x638
/* 117700 800F9610 02001021 */  addu       $v0, $s0, $zero
/* 117704 800F9614 AC40064C */  sw         $zero, 0x64C($v0)
/* 117708 800F9618 AC400650 */  sw         $zero, 0x650($v0)
/* 11770C 800F961C AC400654 */  sw         $zero, 0x654($v0)
/* 117710 800F9620 8FBF0014 */  lw         $ra, 0x14($sp)
/* 117714 800F9624 8FB00010 */  lw         $s0, 0x10($sp)
/* 117718 800F9628 03E00008 */  jr         $ra
/* 11771C 800F962C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F9630
/* 117720 800F9630 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 117724 800F9634 AFB00010 */  sw         $s0, 0x10($sp)
/* 117728 800F9638 00808021 */  addu       $s0, $a0, $zero
/* 11772C 800F963C AFB10014 */  sw         $s1, 0x14($sp)
/* 117730 800F9640 00A08821 */  addu       $s1, $a1, $zero
/* 117734 800F9644 3C02800D */  lui        $v0, %hi(D_menu_800CC7A0)
/* 117738 800F9648 2442C7A0 */  addiu      $v0, $v0, %lo(D_menu_800CC7A0)
/* 11773C 800F964C AFBF0018 */  sw         $ra, 0x18($sp)
/* 117740 800F9650 0C03E65F */  jal        func_menu_800F997C
/* 117744 800F9654 AE020000 */   sw        $v0, 0x0($s0)
/* 117748 800F9658 26040638 */  addiu      $a0, $s0, 0x638
/* 11774C 800F965C 0C002F59 */  jal        func_8000BD64
/* 117750 800F9660 24050002 */   addiu     $a1, $zero, 0x2
/* 117754 800F9664 26040368 */  addiu      $a0, $s0, 0x368
/* 117758 800F9668 0C044937 */  jal        func_menu_801124DC
/* 11775C 800F966C 24050002 */   addiu     $a1, $zero, 0x2
/* 117760 800F9670 02002021 */  addu       $a0, $s0, $zero
/* 117764 800F9674 0C0401EF */  jal        func_menu_801007BC
/* 117768 800F9678 02202821 */   addu      $a1, $s1, $zero
/* 11776C 800F967C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 117770 800F9680 8FB10014 */  lw         $s1, 0x14($sp)
/* 117774 800F9684 8FB00010 */  lw         $s0, 0x10($sp)
/* 117778 800F9688 03E00008 */  jr         $ra
/* 11777C 800F968C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F9690
/* 117780 800F9690 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 117784 800F9694 AFB10034 */  sw         $s1, 0x34($sp)
/* 117788 800F9698 00808821 */  addu       $s1, $a0, $zero
/* 11778C 800F969C AFB3003C */  sw         $s3, 0x3C($sp)
/* 117790 800F96A0 00A09821 */  addu       $s3, $a1, $zero
/* 117794 800F96A4 AFBF0040 */  sw         $ra, 0x40($sp)
/* 117798 800F96A8 AFB20038 */  sw         $s2, 0x38($sp)
/* 11779C 800F96AC AFB00030 */  sw         $s0, 0x30($sp)
/* 1177A0 800F96B0 8E220004 */  lw         $v0, 0x4($s1)
/* 1177A4 800F96B4 10400006 */  beqz       $v0, .Lmenu_800F96D0
/* 1177A8 800F96B8 00C08021 */   addu      $s0, $a2, $zero
/* 1177AC 800F96BC 8E220000 */  lw         $v0, 0x0($s1)
/* 1177B0 800F96C0 844400F0 */  lh         $a0, 0xF0($v0)
/* 1177B4 800F96C4 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 1177B8 800F96C8 0040F809 */  jalr       $v0
/* 1177BC 800F96CC 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800F96D0:
/* 1177C0 800F96D0 8E020004 */  lw         $v0, 0x4($s0)
/* 1177C4 800F96D4 AE22064C */  sw         $v0, 0x64C($s1)
/* 1177C8 800F96D8 8C420008 */  lw         $v0, 0x8($v0)
/* 1177CC 800F96DC AE220650 */  sw         $v0, 0x650($s1)
/* 1177D0 800F96E0 8E620000 */  lw         $v0, 0x0($s3)
/* 1177D4 800F96E4 8C440004 */  lw         $a0, 0x4($v0)
/* 1177D8 800F96E8 0C01F039 */  jal        func_8007C0E4
/* 1177DC 800F96EC 00000000 */   nop
/* 1177E0 800F96F0 02202021 */  addu       $a0, $s1, $zero
/* 1177E4 800F96F4 02602821 */  addu       $a1, $s3, $zero
/* 1177E8 800F96F8 0C040214 */  jal        func_menu_80100850
/* 1177EC 800F96FC 02003021 */   addu      $a2, $s0, $zero
/* 1177F0 800F9700 14400003 */  bnez       $v0, .Lmenu_800F9710
/* 1177F4 800F9704 27B00020 */   addiu     $s0, $sp, 0x20
/* 1177F8 800F9708 0803E658 */  j          .Lmenu_800F9960
/* 1177FC 800F970C 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F9710:
/* 117800 800F9710 02002021 */  addu       $a0, $s0, $zero
/* 117804 800F9714 3C05800D */  lui        $a1, %hi(D_menu_800CC710)
/* 117808 800F9718 24A5C710 */  addiu      $a1, $a1, %lo(D_menu_800CC710)
/* 11780C 800F971C 0C000708 */  jal        func_80001C20
/* 117810 800F9720 24060008 */   addiu     $a2, $zero, 0x8
/* 117814 800F9724 8E24064C */  lw         $a0, 0x64C($s1)
/* 117818 800F9728 0C016E91 */  jal        func_8005BA44
/* 11781C 800F972C 02002821 */   addu      $a1, $s0, $zero
/* 117820 800F9730 00401821 */  addu       $v1, $v0, $zero
/* 117824 800F9734 10600009 */  beqz       $v1, .Lmenu_800F975C
/* 117828 800F9738 240200FF */   addiu     $v0, $zero, 0xFF
/* 11782C 800F973C A3A20028 */  sb         $v0, 0x28($sp)
/* 117830 800F9740 A3A20029 */  sb         $v0, 0x29($sp)
/* 117834 800F9744 A3A2002A */  sb         $v0, 0x2A($sp)
/* 117838 800F9748 A3A2002B */  sb         $v0, 0x2B($sp)
/* 11783C 800F974C 8BA70028 */  lwl        $a3, 0x28($sp)
/* 117840 800F9750 9BA7002B */  lwr        $a3, 0x2B($sp)
/* 117844 800F9754 A8670038 */  swl        $a3, 0x38($v1)
/* 117848 800F9758 B867003B */  swr        $a3, 0x3B($v1)
.Lmenu_800F975C:
/* 11784C 800F975C 263203EC */  addiu      $s2, $s1, 0x3EC
/* 117850 800F9760 8E420118 */  lw         $v0, 0x118($s2)
/* 117854 800F9764 1040006E */  beqz       $v0, .Lmenu_800F9920
/* 117858 800F9768 3C02800D */   lui       $v0, %hi(D_menu_800CC76C)
/* 11785C 800F976C 8E620000 */  lw         $v0, 0x0($s3)
/* 117860 800F9770 8C42002C */  lw         $v0, 0x2C($v0)
/* 117864 800F9774 1040006A */  beqz       $v0, .Lmenu_800F9920
/* 117868 800F9778 3C02800D */   lui       $v0, %hi(D_menu_800CC76C)
/* 11786C 800F977C A3A00010 */  sb         $zero, 0x10($sp)
/* 117870 800F9780 8E620000 */  lw         $v0, 0x0($s3)
/* 117874 800F9784 8C42002C */  lw         $v0, 0x2C($v0)
/* 117878 800F9788 2443FFFF */  addiu      $v1, $v0, -0x1
/* 11787C 800F978C 2C620009 */  sltiu      $v0, $v1, 0x9
/* 117880 800F9790 10400053 */  beqz       $v0, .Lmenu_800F98E0
/* 117884 800F9794 3C02800D */   lui       $v0, %hi(jtbl_menu_800CC778)
/* 117888 800F9798 2442C778 */  addiu      $v0, $v0, %lo(jtbl_menu_800CC778)
/* 11788C 800F979C 00031880 */  sll        $v1, $v1, 2
/* 117890 800F97A0 00621821 */  addu       $v1, $v1, $v0
/* 117894 800F97A4 8C620000 */  lw         $v0, 0x0($v1)
/* 117898 800F97A8 00400008 */  jr         $v0
/* 11789C 800F97AC 00000000 */   nop
glabel Lmenu_800F97B0
/* 1178A0 800F97B0 3C02800D */  lui        $v0, %hi(D_menu_800CC71C)
/* 1178A4 800F97B4 244AC71C */  addiu      $t2, $v0, %lo(D_menu_800CC71C)
/* 1178A8 800F97B8 8D470000 */  lw         $a3, 0x0($t2)
/* 1178AC 800F97BC 8D480004 */  lw         $t0, 0x4($t2)
/* 1178B0 800F97C0 AFA70010 */  sw         $a3, 0x10($sp)
/* 1178B4 800F97C4 AFA80014 */  sw         $t0, 0x14($sp)
/* 1178B8 800F97C8 0803E639 */  j          .Lmenu_800F98E4
/* 1178BC 800F97CC 27A40010 */   addiu     $a0, $sp, 0x10
glabel Lmenu_800F97D0
/* 1178C0 800F97D0 3C02800D */  lui        $v0, %hi(D_menu_800CC724)
/* 1178C4 800F97D4 244AC724 */  addiu      $t2, $v0, %lo(D_menu_800CC724)
/* 1178C8 800F97D8 8D470000 */  lw         $a3, 0x0($t2)
/* 1178CC 800F97DC 85480004 */  lh         $t0, 0x4($t2)
/* 1178D0 800F97E0 81490006 */  lb         $t1, 0x6($t2)
/* 1178D4 800F97E4 AFA70010 */  sw         $a3, 0x10($sp)
/* 1178D8 800F97E8 A7A80014 */  sh         $t0, 0x14($sp)
/* 1178DC 800F97EC A3A90016 */  sb         $t1, 0x16($sp)
/* 1178E0 800F97F0 0803E639 */  j          .Lmenu_800F98E4
/* 1178E4 800F97F4 27A40010 */   addiu     $a0, $sp, 0x10
glabel Lmenu_800F97F8
/* 1178E8 800F97F8 3C02800D */  lui        $v0, %hi(D_menu_800CC72C)
/* 1178EC 800F97FC 244AC72C */  addiu      $t2, $v0, %lo(D_menu_800CC72C)
/* 1178F0 800F9800 8D470000 */  lw         $a3, 0x0($t2)
/* 1178F4 800F9804 85480004 */  lh         $t0, 0x4($t2)
/* 1178F8 800F9808 81490006 */  lb         $t1, 0x6($t2)
/* 1178FC 800F980C AFA70010 */  sw         $a3, 0x10($sp)
/* 117900 800F9810 A7A80014 */  sh         $t0, 0x14($sp)
/* 117904 800F9814 A3A90016 */  sb         $t1, 0x16($sp)
/* 117908 800F9818 0803E639 */  j          .Lmenu_800F98E4
/* 11790C 800F981C 27A40010 */   addiu     $a0, $sp, 0x10
glabel Lmenu_800F9820
/* 117910 800F9820 3C02800D */  lui        $v0, %hi(D_menu_800CC734)
/* 117914 800F9824 244AC734 */  addiu      $t2, $v0, %lo(D_menu_800CC734)
/* 117918 800F9828 8D470000 */  lw         $a3, 0x0($t2)
/* 11791C 800F982C 8D480004 */  lw         $t0, 0x4($t2)
/* 117920 800F9830 AFA70010 */  sw         $a3, 0x10($sp)
/* 117924 800F9834 AFA80014 */  sw         $t0, 0x14($sp)
/* 117928 800F9838 0803E639 */  j          .Lmenu_800F98E4
/* 11792C 800F983C 27A40010 */   addiu     $a0, $sp, 0x10
glabel Lmenu_800F9840
/* 117930 800F9840 3C02800D */  lui        $v0, %hi(D_menu_800CC73C)
/* 117934 800F9844 244AC73C */  addiu      $t2, $v0, %lo(D_menu_800CC73C)
/* 117938 800F9848 8D470000 */  lw         $a3, 0x0($t2)
/* 11793C 800F984C 85480004 */  lh         $t0, 0x4($t2)
/* 117940 800F9850 81490006 */  lb         $t1, 0x6($t2)
/* 117944 800F9854 AFA70010 */  sw         $a3, 0x10($sp)
/* 117948 800F9858 A7A80014 */  sh         $t0, 0x14($sp)
/* 11794C 800F985C A3A90016 */  sb         $t1, 0x16($sp)
/* 117950 800F9860 0803E639 */  j          .Lmenu_800F98E4
/* 117954 800F9864 27A40010 */   addiu     $a0, $sp, 0x10
glabel Lmenu_800F9868
/* 117958 800F9868 3C02800D */  lui        $v0, %hi(D_menu_800CC744)
/* 11795C 800F986C 244AC744 */  addiu      $t2, $v0, %lo(D_menu_800CC744)
/* 117960 800F9870 8D470000 */  lw         $a3, 0x0($t2)
/* 117964 800F9874 8D480004 */  lw         $t0, 0x4($t2)
/* 117968 800F9878 AFA70010 */  sw         $a3, 0x10($sp)
/* 11796C 800F987C AFA80014 */  sw         $t0, 0x14($sp)
/* 117970 800F9880 0803E639 */  j          .Lmenu_800F98E4
/* 117974 800F9884 27A40010 */   addiu     $a0, $sp, 0x10
glabel Lmenu_800F9888
/* 117978 800F9888 3C02800D */  lui        $v0, %hi(D_menu_800CC74C)
/* 11797C 800F988C 244AC74C */  addiu      $t2, $v0, %lo(D_menu_800CC74C)
/* 117980 800F9890 8D470000 */  lw         $a3, 0x0($t2)
/* 117984 800F9894 8D480004 */  lw         $t0, 0x4($t2)
/* 117988 800F9898 AFA70010 */  sw         $a3, 0x10($sp)
/* 11798C 800F989C AFA80014 */  sw         $t0, 0x14($sp)
/* 117990 800F98A0 0803E639 */  j          .Lmenu_800F98E4
/* 117994 800F98A4 27A40010 */   addiu     $a0, $sp, 0x10
glabel Lmenu_800F98A8
/* 117998 800F98A8 3C02800D */  lui        $v0, %hi(D_menu_800CC754)
/* 11799C 800F98AC 244AC754 */  addiu      $t2, $v0, %lo(D_menu_800CC754)
/* 1179A0 800F98B0 8D470000 */  lw         $a3, 0x0($t2)
/* 1179A4 800F98B4 85480004 */  lh         $t0, 0x4($t2)
/* 1179A8 800F98B8 AFA70010 */  sw         $a3, 0x10($sp)
/* 1179AC 800F98BC A7A80014 */  sh         $t0, 0x14($sp)
/* 1179B0 800F98C0 0803E639 */  j          .Lmenu_800F98E4
/* 1179B4 800F98C4 27A40010 */   addiu     $a0, $sp, 0x10
glabel Lmenu_800F98C8
/* 1179B8 800F98C8 3C02800D */  lui        $v0, %hi(D_menu_800CC75C)
/* 1179BC 800F98CC 244AC75C */  addiu      $t2, $v0, %lo(D_menu_800CC75C)
/* 1179C0 800F98D0 8D470000 */  lw         $a3, 0x0($t2)
/* 1179C4 800F98D4 8D480004 */  lw         $t0, 0x4($t2)
/* 1179C8 800F98D8 AFA70010 */  sw         $a3, 0x10($sp)
/* 1179CC 800F98DC AFA80014 */  sw         $t0, 0x14($sp)
.Lmenu_800F98E0:
/* 1179D0 800F98E0 27A40010 */  addiu      $a0, $sp, 0x10
.Lmenu_800F98E4:
/* 1179D4 800F98E4 3C05800D */  lui        $a1, %hi(D_menu_800CC764)
/* 1179D8 800F98E8 0C0006C8 */  jal        func_80001B20
/* 1179DC 800F98EC 24A5C764 */   addiu     $a1, $a1, %lo(D_menu_800CC764)
/* 1179E0 800F98F0 26300638 */  addiu      $s0, $s1, 0x638
/* 1179E4 800F98F4 0C002F70 */  jal        func_8000BDC0
/* 1179E8 800F98F8 02002021 */   addu      $a0, $s0, $zero
/* 1179EC 800F98FC 02002021 */  addu       $a0, $s0, $zero
/* 1179F0 800F9900 0C002FA1 */  jal        func_8000BE84
/* 1179F4 800F9904 27A50010 */   addiu     $a1, $sp, 0x10
/* 1179F8 800F9908 10400005 */  beqz       $v0, .Lmenu_800F9920
/* 1179FC 800F990C 3C02800D */   lui       $v0, %hi(D_menu_800CC76C)
/* 117A00 800F9910 AE500224 */  sw         $s0, 0x224($s2)
/* 117A04 800F9914 0C038F78 */  jal        func_menu_800E3DE0
/* 117A08 800F9918 02402021 */   addu      $a0, $s2, $zero
/* 117A0C 800F991C 3C02800D */  lui        $v0, %hi(D_menu_800CC76C)
.Lmenu_800F9920:
/* 117A10 800F9920 2445C76C */  addiu      $a1, $v0, %lo(D_menu_800CC76C)
/* 117A14 800F9924 10A00007 */  beqz       $a1, .Lmenu_800F9944
/* 117A18 800F9928 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 117A1C 800F992C 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 117A20 800F9930 02002021 */  addu       $a0, $s0, $zero
/* 117A24 800F9934 0C000708 */  jal        func_80001C20
/* 117A28 800F9938 24060100 */   addiu     $a2, $zero, 0x100
/* 117A2C 800F993C 0803E653 */  j          .Lmenu_800F994C
/* 117A30 800F9940 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F9944:
/* 117A34 800F9944 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 117A38 800F9948 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F994C:
/* 117A3C 800F994C 8E2300C4 */  lw         $v1, 0xC4($s1)
/* 117A40 800F9950 24020001 */  addiu      $v0, $zero, 0x1
/* 117A44 800F9954 A0600041 */  sb         $zero, 0x41($v1)
/* 117A48 800F9958 00401821 */  addu       $v1, $v0, $zero
/* 117A4C 800F995C AE230654 */  sw         $v1, 0x654($s1)
.Lmenu_800F9960:
/* 117A50 800F9960 8FBF0040 */  lw         $ra, 0x40($sp)
/* 117A54 800F9964 8FB3003C */  lw         $s3, 0x3C($sp)
/* 117A58 800F9968 8FB20038 */  lw         $s2, 0x38($sp)
/* 117A5C 800F996C 8FB10034 */  lw         $s1, 0x34($sp)
/* 117A60 800F9970 8FB00030 */  lw         $s0, 0x30($sp)
/* 117A64 800F9974 03E00008 */  jr         $ra
/* 117A68 800F9978 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800F997C
/* 117A6C 800F997C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117A70 800F9980 AFB00010 */  sw         $s0, 0x10($sp)
/* 117A74 800F9984 00808021 */  addu       $s0, $a0, $zero
/* 117A78 800F9988 AFBF0014 */  sw         $ra, 0x14($sp)
/* 117A7C 800F998C 8E020354 */  lw         $v0, 0x354($s0)
/* 117A80 800F9990 10400005 */  beqz       $v0, .Lmenu_800F99A8
/* 117A84 800F9994 00000000 */   nop
/* 117A88 800F9998 8C420000 */  lw         $v0, 0x0($v0)
/* 117A8C 800F999C 8C440004 */  lw         $a0, 0x4($v0)
/* 117A90 800F99A0 0C01F039 */  jal        func_8007C0E4
/* 117A94 800F99A4 00000000 */   nop
.Lmenu_800F99A8:
/* 117A98 800F99A8 0C002F89 */  jal        func_8000BE24
/* 117A9C 800F99AC 26040638 */   addiu     $a0, $s0, 0x638
/* 117AA0 800F99B0 0C044A1D */  jal        func_menu_80112874
/* 117AA4 800F99B4 26040368 */   addiu     $a0, $s0, 0x368
/* 117AA8 800F99B8 8E03064C */  lw         $v1, 0x64C($s0)
/* 117AAC 800F99BC 5060000A */  beql       $v1, $zero, .Lmenu_800F99E8
/* 117AB0 800F99C0 02002021 */   addu      $a0, $s0, $zero
/* 117AB4 800F99C4 8E050650 */  lw         $a1, 0x650($s0)
/* 117AB8 800F99C8 50A00007 */  beql       $a1, $zero, .Lmenu_800F99E8
/* 117ABC 800F99CC 02002021 */   addu      $a0, $s0, $zero
/* 117AC0 800F99D0 8C62012C */  lw         $v0, 0x12C($v1)
/* 117AC4 800F99D4 84440048 */  lh         $a0, 0x48($v0)
/* 117AC8 800F99D8 8C42004C */  lw         $v0, 0x4C($v0)
/* 117ACC 800F99DC 0040F809 */  jalr       $v0
/* 117AD0 800F99E0 00642021 */   addu      $a0, $v1, $a0
/* 117AD4 800F99E4 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800F99E8:
/* 117AD8 800F99E8 AC80064C */  sw         $zero, 0x64C($a0)
/* 117ADC 800F99EC 0C040232 */  jal        func_menu_801008C8
/* 117AE0 800F99F0 AC800650 */   sw        $zero, 0x650($a0)
/* 117AE4 800F99F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 117AE8 800F99F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 117AEC 800F99FC 03E00008 */  jr         $ra
/* 117AF0 800F9A00 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F9A04
/* 117AF4 800F9A04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117AF8 800F9A08 AFBF0010 */  sw         $ra, 0x10($sp)
/* 117AFC 800F9A0C 8C820654 */  lw         $v0, 0x654($a0)
/* 117B00 800F9A10 10400003 */  beqz       $v0, .Lmenu_800F9A20
/* 117B04 800F9A14 00000000 */   nop
/* 117B08 800F9A18 24050011 */  addiu      $a1, $zero, 0x11
/* 117B0C 800F9A1C AC800654 */  sw         $zero, 0x654($a0)
.Lmenu_800F9A20:
/* 117B10 800F9A20 8C820630 */  lw         $v0, 0x630($a0)
/* 117B14 800F9A24 10400002 */  beqz       $v0, .Lmenu_800F9A30
/* 117B18 800F9A28 24020001 */   addiu     $v0, $zero, 0x1
/* 117B1C 800F9A2C AC820364 */  sw         $v0, 0x364($a0)
.Lmenu_800F9A30:
/* 117B20 800F9A30 0C04056C */  jal        func_menu_801015B0
/* 117B24 800F9A34 00000000 */   nop
/* 117B28 800F9A38 8FBF0010 */  lw         $ra, 0x10($sp)
/* 117B2C 800F9A3C 03E00008 */  jr         $ra
/* 117B30 800F9A40 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F9A44
/* 117B34 800F9A44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117B38 800F9A48 AFB00010 */  sw         $s0, 0x10($sp)
/* 117B3C 800F9A4C 00808021 */  addu       $s0, $a0, $zero
/* 117B40 800F9A50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 117B44 800F9A54 8E0300C4 */  lw         $v1, 0xC4($s0)
/* 117B48 800F9A58 24020001 */  addiu      $v0, $zero, 0x1
/* 117B4C 800F9A5C A0620041 */  sb         $v0, 0x41($v1)
/* 117B50 800F9A60 8E040354 */  lw         $a0, 0x354($s0)
/* 117B54 800F9A64 0C0401B4 */  jal        func_menu_801006D0
/* 117B58 800F9A68 24840004 */   addiu     $a0, $a0, 0x4
/* 117B5C 800F9A6C 8E040354 */  lw         $a0, 0x354($s0)
/* 117B60 800F9A70 24050002 */  addiu      $a1, $zero, 0x2
/* 117B64 800F9A74 0C0401A6 */  jal        func_menu_80100698
/* 117B68 800F9A78 24840004 */   addiu     $a0, $a0, 0x4
/* 117B6C 800F9A7C 8E03064C */  lw         $v1, 0x64C($s0)
/* 117B70 800F9A80 10600006 */  beqz       $v1, .Lmenu_800F9A9C
/* 117B74 800F9A84 00000000 */   nop
/* 117B78 800F9A88 8C62012C */  lw         $v0, 0x12C($v1)
/* 117B7C 800F9A8C 844401E8 */  lh         $a0, 0x1E8($v0)
/* 117B80 800F9A90 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 117B84 800F9A94 0040F809 */  jalr       $v0
/* 117B88 800F9A98 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800F9A9C:
/* 117B8C 800F9A9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 117B90 800F9AA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 117B94 800F9AA4 03E00008 */  jr         $ra
/* 117B98 800F9AA8 27BD0018 */   addiu     $sp, $sp, 0x18
