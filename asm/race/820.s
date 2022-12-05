.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80123360
/* D9720 80123360 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D9724 80123364 AFB00010 */  sw         $s0, 0x10($sp)
/* D9728 80123368 00808021 */  addu       $s0, $a0, $zero
/* D972C 8012336C AFBF0018 */  sw         $ra, 0x18($sp)
/* D9730 80123370 0C04B5C4 */  jal        func_race_8012D710
/* D9734 80123374 AFB10014 */   sw        $s1, 0x14($sp)
/* D9738 80123378 26110030 */  addiu      $s1, $s0, 0x30
/* D973C 8012337C 02202021 */  addu       $a0, $s1, $zero
/* D9740 80123380 3C02800D */  lui        $v0, %hi(D_race_800CE860)
/* D9744 80123384 2442E860 */  addiu      $v0, $v0, %lo(D_race_800CE860)
/* D9748 80123388 0C0465D0 */  jal        func_race_80119740
/* D974C 8012338C AE020000 */   sw        $v0, 0x0($s0)
/* D9750 80123390 0C019FC8 */  jal        func_80067F20
/* D9754 80123394 2604027C */   addiu     $a0, $s0, 0x27C
/* D9758 80123398 02001021 */  addu       $v0, $s0, $zero
/* D975C 8012339C AC510018 */  sw         $s1, 0x18($v0)
/* D9760 801233A0 AC400270 */  sw         $zero, 0x270($v0)
/* D9764 801233A4 AC400274 */  sw         $zero, 0x274($v0)
/* D9768 801233A8 AC400278 */  sw         $zero, 0x278($v0)
/* D976C 801233AC AC400294 */  sw         $zero, 0x294($v0)
/* D9770 801233B0 8FBF0018 */  lw         $ra, 0x18($sp)
/* D9774 801233B4 8FB10014 */  lw         $s1, 0x14($sp)
/* D9778 801233B8 8FB00010 */  lw         $s0, 0x10($sp)
/* D977C 801233BC 03E00008 */  jr         $ra
/* D9780 801233C0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801233C4
/* D9784 801233C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D9788 801233C8 AFB00010 */  sw         $s0, 0x10($sp)
/* D978C 801233CC 00808021 */  addu       $s0, $a0, $zero
/* D9790 801233D0 AFB10014 */  sw         $s1, 0x14($sp)
/* D9794 801233D4 00A08821 */  addu       $s1, $a1, $zero
/* D9798 801233D8 3C02800D */  lui        $v0, %hi(D_race_800CE860)
/* D979C 801233DC 2442E860 */  addiu      $v0, $v0, %lo(D_race_800CE860)
/* D97A0 801233E0 AFBF0018 */  sw         $ra, 0x18($sp)
/* D97A4 801233E4 0C048D50 */  jal        func_race_80123540
/* D97A8 801233E8 AE020000 */   sw        $v0, 0x0($s0)
/* D97AC 801233EC 26040030 */  addiu      $a0, $s0, 0x30
/* D97B0 801233F0 0C0465E4 */  jal        func_race_80119790
/* D97B4 801233F4 24050002 */   addiu     $a1, $zero, 0x2
/* D97B8 801233F8 02002021 */  addu       $a0, $s0, $zero
/* D97BC 801233FC 0C047E8A */  jal        func_race_8011FA28
/* D97C0 80123400 02202821 */   addu      $a1, $s1, $zero
/* D97C4 80123404 8FBF0018 */  lw         $ra, 0x18($sp)
/* D97C8 80123408 8FB10014 */  lw         $s1, 0x14($sp)
/* D97CC 8012340C 8FB00010 */  lw         $s0, 0x10($sp)
/* D97D0 80123410 03E00008 */  jr         $ra
/* D97D4 80123414 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80123418
/* D97D8 80123418 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D97DC 8012341C AFB00030 */  sw         $s0, 0x30($sp)
/* D97E0 80123420 00808021 */  addu       $s0, $a0, $zero
/* D97E4 80123424 AFB10034 */  sw         $s1, 0x34($sp)
/* D97E8 80123428 00A08821 */  addu       $s1, $a1, $zero
/* D97EC 8012342C AFB20038 */  sw         $s2, 0x38($sp)
/* D97F0 80123430 00C09021 */  addu       $s2, $a2, $zero
/* D97F4 80123434 AFBF0040 */  sw         $ra, 0x40($sp)
/* D97F8 80123438 AFB3003C */  sw         $s3, 0x3C($sp)
/* D97FC 8012343C 8E020004 */  lw         $v0, 0x4($s0)
/* D9800 80123440 10400003 */  beqz       $v0, .Lrace_80123450
/* D9804 80123444 00E09821 */   addu      $s3, $a3, $zero
/* D9808 80123448 0C048D50 */  jal        func_race_80123540
/* D980C 8012344C 00000000 */   nop
.Lrace_80123450:
/* D9810 80123450 AE11001C */  sw         $s1, 0x1C($s0)
/* D9814 80123454 02201021 */  addu       $v0, $s1, $zero
/* D9818 80123458 AE120020 */  sw         $s2, 0x20($s0)
/* D981C 8012345C AE000270 */  sw         $zero, 0x270($s0)
/* D9820 80123460 AE000274 */  sw         $zero, 0x274($s0)
/* D9824 80123464 AE130294 */  sw         $s3, 0x294($s0)
/* D9828 80123468 8C420000 */  lw         $v0, 0x0($v0)
/* D982C 8012346C 3C01800D */  lui        $at, %hi(D_race_800CE7F8)
/* D9830 80123470 C424E7F8 */  lwc1       $f4, %lo(D_race_800CE7F8)($at)
/* D9834 80123474 3C01800D */  lui        $at, %hi(D_race_800CE7FC)
/* D9838 80123478 C420E7FC */  lwc1       $f0, %lo(D_race_800CE7FC)($at)
/* D983C 8012347C 3C01800D */  lui        $at, %hi(D_race_800CE800)
/* D9840 80123480 C422E800 */  lwc1       $f2, %lo(D_race_800CE800)($at)
/* D9844 80123484 AFA20010 */  sw         $v0, 0x10($sp)
/* D9848 80123488 3C028013 */  lui        $v0, %hi(D_race_80132490)
/* D984C 8012348C E7A40014 */  swc1       $f4, 0x14($sp)
/* D9850 80123490 E7A00018 */  swc1       $f0, 0x18($sp)
/* D9854 80123494 E7A2001C */  swc1       $f2, 0x1C($sp)
/* D9858 80123498 244B2490 */  addiu      $t3, $v0, %lo(D_race_80132490)
/* D985C 8012349C 89680000 */  lwl        $t0, 0x0($t3)
/* D9860 801234A0 99680003 */  lwr        $t0, 0x3($t3)
/* D9864 801234A4 ABA80020 */  swl        $t0, 0x20($sp)
/* D9868 801234A8 BBA80023 */  swr        $t0, 0x23($sp)
/* D986C 801234AC 3C028013 */  lui        $v0, %hi(D_race_80132494)
/* D9870 801234B0 244B2494 */  addiu      $t3, $v0, %lo(D_race_80132494)
/* D9874 801234B4 89680000 */  lwl        $t0, 0x0($t3)
/* D9878 801234B8 99680003 */  lwr        $t0, 0x3($t3)
/* D987C 801234BC ABA80024 */  swl        $t0, 0x24($sp)
/* D9880 801234C0 BBA80027 */  swr        $t0, 0x27($sp)
/* D9884 801234C4 3C028013 */  lui        $v0, %hi(D_race_80132498)
/* D9888 801234C8 244B2498 */  addiu      $t3, $v0, %lo(D_race_80132498)
/* D988C 801234CC 89680000 */  lwl        $t0, 0x0($t3)
/* D9890 801234D0 99680003 */  lwr        $t0, 0x3($t3)
/* D9894 801234D4 ABA80028 */  swl        $t0, 0x28($sp)
/* D9898 801234D8 BBA8002B */  swr        $t0, 0x2B($sp)
/* D989C 801234DC 8E02001C */  lw         $v0, 0x1C($s0)
/* D98A0 801234E0 3C05800D */  lui        $a1, %hi(D_race_800CE7F0)
/* D98A4 801234E4 8C440004 */  lw         $a0, 0x4($v0)
/* D98A8 801234E8 0C016F2D */  jal        func_8005BCB4
/* D98AC 801234EC 24A5E7F0 */   addiu     $a1, $a1, %lo(D_race_800CE7F0)
/* D98B0 801234F0 26040030 */  addiu      $a0, $s0, 0x30
/* D98B4 801234F4 27A50010 */  addiu      $a1, $sp, 0x10
/* D98B8 801234F8 0C0465F9 */  jal        func_race_801197E4
/* D98BC 801234FC AFA2002C */   sw        $v0, 0x2C($sp)
/* D98C0 80123500 24020001 */  addiu      $v0, $zero, 0x1
/* D98C4 80123504 AE020004 */  sw         $v0, 0x4($s0)
/* D98C8 80123508 8FA30010 */  lw         $v1, 0x10($sp)
/* D98CC 8012350C 8C620000 */  lw         $v0, 0x0($v1)
/* D98D0 80123510 84440068 */  lh         $a0, 0x68($v0)
/* D98D4 80123514 8C42006C */  lw         $v0, 0x6C($v0)
/* D98D8 80123518 0040F809 */  jalr       $v0
/* D98DC 8012351C 00642021 */   addu      $a0, $v1, $a0
/* D98E0 80123520 AE020278 */  sw         $v0, 0x278($s0)
/* D98E4 80123524 8FBF0040 */  lw         $ra, 0x40($sp)
/* D98E8 80123528 8FB3003C */  lw         $s3, 0x3C($sp)
/* D98EC 8012352C 8FB20038 */  lw         $s2, 0x38($sp)
/* D98F0 80123530 8FB10034 */  lw         $s1, 0x34($sp)
/* D98F4 80123534 8FB00030 */  lw         $s0, 0x30($sp)
/* D98F8 80123538 03E00008 */  jr         $ra
/* D98FC 8012353C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_80123540
/* D9900 80123540 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D9904 80123544 AFB00010 */  sw         $s0, 0x10($sp)
/* D9908 80123548 00808021 */  addu       $s0, $a0, $zero
/* D990C 8012354C AFBF0014 */  sw         $ra, 0x14($sp)
/* D9910 80123550 8E020000 */  lw         $v0, 0x0($s0)
/* D9914 80123554 84440040 */  lh         $a0, 0x40($v0)
/* D9918 80123558 8C420044 */  lw         $v0, 0x44($v0)
/* D991C 8012355C 0040F809 */  jalr       $v0
/* D9920 80123560 02042021 */   addu      $a0, $s0, $a0
/* D9924 80123564 8E02001C */  lw         $v0, 0x1C($s0)
/* D9928 80123568 1040000D */  beqz       $v0, .Lrace_801235A0
/* D992C 8012356C 00000000 */   nop
/* D9930 80123570 8E050278 */  lw         $a1, 0x278($s0)
/* D9934 80123574 10A0000A */  beqz       $a1, .Lrace_801235A0
/* D9938 80123578 00000000 */   nop
/* D993C 8012357C 8C420000 */  lw         $v0, 0x0($v0)
/* D9940 80123580 8C430000 */  lw         $v1, 0x0($v0)
/* D9944 80123584 846400D0 */  lh         $a0, 0xD0($v1)
/* D9948 80123588 00442021 */  addu       $a0, $v0, $a0
/* D994C 8012358C 8C6200D4 */  lw         $v0, 0xD4($v1)
/* D9950 80123590 0040F809 */  jalr       $v0
/* D9954 80123594 00000000 */   nop
/* D9958 80123598 AE000278 */  sw         $zero, 0x278($s0)
/* D995C 8012359C AE00001C */  sw         $zero, 0x1C($s0)
.Lrace_801235A0:
/* D9960 801235A0 0C046649 */  jal        func_race_80119924
/* D9964 801235A4 26040030 */   addiu     $a0, $s0, 0x30
/* D9968 801235A8 AE000004 */  sw         $zero, 0x4($s0)
/* D996C 801235AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D9970 801235B0 8FB00010 */  lw         $s0, 0x10($sp)
/* D9974 801235B4 03E00008 */  jr         $ra
/* D9978 801235B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801235BC
/* D997C 801235BC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D9980 801235C0 AFB00018 */  sw         $s0, 0x18($sp)
/* D9984 801235C4 00808021 */  addu       $s0, $a0, $zero
/* D9988 801235C8 AFB1001C */  sw         $s1, 0x1C($sp)
/* D998C 801235CC 2611027C */  addiu      $s1, $s0, 0x27C
/* D9990 801235D0 02202021 */  addu       $a0, $s1, $zero
/* D9994 801235D4 AFBF0020 */  sw         $ra, 0x20($sp)
/* D9998 801235D8 AE050270 */  sw         $a1, 0x270($s0)
/* D999C 801235DC 8FA5003C */  lw         $a1, 0x3C($sp)
/* D99A0 801235E0 8FA30038 */  lw         $v1, 0x38($sp)
/* D99A4 801235E4 8FA80040 */  lw         $t0, 0x40($sp)
/* D99A8 801235E8 24020002 */  addiu      $v0, $zero, 0x2
/* D99AC 801235EC AE020004 */  sw         $v0, 0x4($s0)
/* D99B0 801235F0 AE060024 */  sw         $a2, 0x24($s0)
/* D99B4 801235F4 AE070028 */  sw         $a3, 0x28($s0)
/* D99B8 801235F8 AE03002C */  sw         $v1, 0x2C($s0)
/* D99BC 801235FC 0C019FF4 */  jal        func_80067FD0
/* D99C0 80123600 AE080008 */   sw        $t0, 0x8($s0)
/* D99C4 80123604 0C01A026 */  jal        func_80068098
/* D99C8 80123608 02202021 */   addu      $a0, $s1, $zero
/* D99CC 8012360C 0C01A02B */  jal        func_800680AC
/* D99D0 80123610 02202021 */   addu      $a0, $s1, $zero
/* D99D4 80123614 02202021 */  addu       $a0, $s1, $zero
/* D99D8 80123618 00003821 */  addu       $a3, $zero, $zero
/* D99DC 8012361C 8E05001C */  lw         $a1, 0x1C($s0)
/* D99E0 80123620 8E060294 */  lw         $a2, 0x294($s0)
/* D99E4 80123624 0C01A018 */  jal        func_80068060
/* D99E8 80123628 24A50008 */   addiu     $a1, $a1, 0x8
/* D99EC 8012362C 8E02001C */  lw         $v0, 0x1C($s0)
/* D99F0 80123630 02202021 */  addu       $a0, $s1, $zero
/* D99F4 80123634 8C460014 */  lw         $a2, 0x14($v0)
/* D99F8 80123638 8C470018 */  lw         $a3, 0x18($v0)
/* D99FC 8012363C 0C01A036 */  jal        func_800680D8
/* D9A00 80123640 00002821 */   addu      $a1, $zero, $zero
/* D9A04 80123644 3C01800D */  lui        $at, %hi(D_race_800CE804)
/* D9A08 80123648 C422E804 */  lwc1       $f2, %lo(D_race_800CE804)($at)
/* D9A0C 8012364C 8E05001C */  lw         $a1, 0x1C($s0)
/* D9A10 80123650 3C01800D */  lui        $at, %hi(D_race_800CE808)
/* D9A14 80123654 C420E808 */  lwc1       $f0, %lo(D_race_800CE808)($at)
/* D9A18 80123658 E7A20010 */  swc1       $f2, 0x10($sp)
/* D9A1C 8012365C E7A00014 */  swc1       $f0, 0x14($sp)
/* D9A20 80123660 8E040278 */  lw         $a0, 0x278($s0)
/* D9A24 80123664 8E060294 */  lw         $a2, 0x294($s0)
/* D9A28 80123668 44071000 */  mfc1       $a3, $f2
/* D9A2C 8012366C 0C01A378 */  jal        func_80068DE0
/* D9A30 80123670 24A50008 */   addiu     $a1, $a1, 0x8
/* D9A34 80123674 8FBF0020 */  lw         $ra, 0x20($sp)
/* D9A38 80123678 8FB1001C */  lw         $s1, 0x1C($sp)
/* D9A3C 8012367C 8FB00018 */  lw         $s0, 0x18($sp)
/* D9A40 80123680 03E00008 */  jr         $ra
/* D9A44 80123684 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80123688
/* D9A48 80123688 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D9A4C 8012368C AFB00010 */  sw         $s0, 0x10($sp)
/* D9A50 80123690 00808021 */  addu       $s0, $a0, $zero
/* D9A54 80123694 AFBF0014 */  sw         $ra, 0x14($sp)
/* D9A58 80123698 8E0300D4 */  lw         $v1, 0xD4($s0)
/* D9A5C 8012369C 10600010 */  beqz       $v1, .Lrace_801236E0
/* D9A60 801236A0 00000000 */   nop
/* D9A64 801236A4 8E020024 */  lw         $v0, 0x24($s0)
/* D9A68 801236A8 1040000D */  beqz       $v0, .Lrace_801236E0
/* D9A6C 801236AC 246303FC */   addiu     $v1, $v1, 0x3FC
/* D9A70 801236B0 8C6200CC */  lw         $v0, 0xCC($v1)
/* D9A74 801236B4 84440090 */  lh         $a0, 0x90($v0)
/* D9A78 801236B8 8C420094 */  lw         $v0, 0x94($v0)
/* D9A7C 801236BC 0040F809 */  jalr       $v0
/* D9A80 801236C0 00642021 */   addu      $a0, $v1, $a0
/* D9A84 801236C4 8E040024 */  lw         $a0, 0x24($s0)
/* D9A88 801236C8 248403FC */  addiu      $a0, $a0, 0x3FC
/* D9A8C 801236CC 8C8200CC */  lw         $v0, 0xCC($a0)
/* D9A90 801236D0 844300A0 */  lh         $v1, 0xA0($v0)
/* D9A94 801236D4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* D9A98 801236D8 0040F809 */  jalr       $v0
/* D9A9C 801236DC 00832021 */   addu      $a0, $a0, $v1
.Lrace_801236E0:
/* D9AA0 801236E0 0C040E4A */  jal        func_race_80103928
/* D9AA4 801236E4 26040030 */   addiu     $a0, $s0, 0x30
/* D9AA8 801236E8 8E050274 */  lw         $a1, 0x274($s0)
/* D9AAC 801236EC 10A00006 */  beqz       $a1, .Lrace_80123708
/* D9AB0 801236F0 00000000 */   nop
/* D9AB4 801236F4 8E02001C */  lw         $v0, 0x1C($s0)
/* D9AB8 801236F8 8C440040 */  lw         $a0, 0x40($v0)
/* D9ABC 801236FC 0C01087B */  jal        func_800421EC
/* D9AC0 80123700 00000000 */   nop
/* D9AC4 80123704 AE000274 */  sw         $zero, 0x274($s0)
.Lrace_80123708:
/* D9AC8 80123708 0C01A00F */  jal        func_8006803C
/* D9ACC 8012370C 2604027C */   addiu     $a0, $s0, 0x27C
/* D9AD0 80123710 8E030278 */  lw         $v1, 0x278($s0)
/* D9AD4 80123714 10600007 */  beqz       $v1, .Lrace_80123734
/* D9AD8 80123718 24020001 */   addiu     $v0, $zero, 0x1
/* D9ADC 8012371C 8C620024 */  lw         $v0, 0x24($v1)
/* D9AE0 80123720 844400A8 */  lh         $a0, 0xA8($v0)
/* D9AE4 80123724 8C4200AC */  lw         $v0, 0xAC($v0)
/* D9AE8 80123728 0040F809 */  jalr       $v0
/* D9AEC 8012372C 00642021 */   addu      $a0, $v1, $a0
/* D9AF0 80123730 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_80123734:
/* D9AF4 80123734 AE000024 */  sw         $zero, 0x24($s0)
/* D9AF8 80123738 AE000028 */  sw         $zero, 0x28($s0)
/* D9AFC 8012373C AE00002C */  sw         $zero, 0x2C($s0)
/* D9B00 80123740 AE020004 */  sw         $v0, 0x4($s0)
/* D9B04 80123744 8FBF0014 */  lw         $ra, 0x14($sp)
/* D9B08 80123748 8FB00010 */  lw         $s0, 0x10($sp)
/* D9B0C 8012374C 03E00008 */  jr         $ra
/* D9B10 80123750 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80123754
/* D9B14 80123754 27BDFF68 */  addiu      $sp, $sp, -0x98
/* D9B18 80123758 AFB10084 */  sw         $s1, 0x84($sp)
/* D9B1C 8012375C 00808821 */  addu       $s1, $a0, $zero
/* D9B20 80123760 AFB00080 */  sw         $s0, 0x80($sp)
/* D9B24 80123764 00A08021 */  addu       $s0, $a1, $zero
/* D9B28 80123768 AFB3008C */  sw         $s3, 0x8C($sp)
/* D9B2C 8012376C AFBF0094 */  sw         $ra, 0x94($sp)
/* D9B30 80123770 AFB40090 */  sw         $s4, 0x90($sp)
/* D9B34 80123774 AFB20088 */  sw         $s2, 0x88($sp)
/* D9B38 80123778 8E230004 */  lw         $v1, 0x4($s1)
/* D9B3C 8012377C 24020006 */  addiu      $v0, $zero, 0x6
/* D9B40 80123780 10620128 */  beq        $v1, $v0, .Lrace_80123C24
/* D9B44 80123784 00009821 */   addu      $s3, $zero, $zero
/* D9B48 80123788 8E230008 */  lw         $v1, 0x8($s1)
/* D9B4C 8012378C 0203102B */  sltu       $v0, $s0, $v1
/* D9B50 80123790 1440000A */  bnez       $v0, .Lrace_801237BC
/* D9B54 80123794 00701023 */   subu      $v0, $v1, $s0
/* D9B58 80123798 8E220000 */  lw         $v0, 0x0($s1)
/* D9B5C 8012379C 02038023 */  subu       $s0, $s0, $v1
/* D9B60 801237A0 AE200008 */  sw         $zero, 0x8($s1)
/* D9B64 801237A4 84440030 */  lh         $a0, 0x30($v0)
/* D9B68 801237A8 8C420034 */  lw         $v0, 0x34($v0)
/* D9B6C 801237AC 0040F809 */  jalr       $v0
/* D9B70 801237B0 02242021 */   addu      $a0, $s1, $a0
/* D9B74 801237B4 08048DF0 */  j          .Lrace_801237C0
/* D9B78 801237B8 00000000 */   nop
.Lrace_801237BC:
/* D9B7C 801237BC AE220008 */  sw         $v0, 0x8($s1)
.Lrace_801237C0:
/* D9B80 801237C0 8E220004 */  lw         $v0, 0x4($s1)
/* D9B84 801237C4 24140002 */  addiu      $s4, $zero, 0x2
/* D9B88 801237C8 10540010 */  beq        $v0, $s4, .Lrace_8012380C
/* D9B8C 801237CC 26320030 */   addiu     $s2, $s1, 0x30
/* D9B90 801237D0 02402021 */  addu       $a0, $s2, $zero
/* D9B94 801237D4 0C046654 */  jal        func_race_80119950
/* D9B98 801237D8 02002821 */   addu      $a1, $s0, $zero
/* D9B9C 801237DC 00409821 */  addu       $s3, $v0, $zero
/* D9BA0 801237E0 24020001 */  addiu      $v0, $zero, 0x1
/* D9BA4 801237E4 12620009 */  beq        $s3, $v0, .Lrace_8012380C
/* D9BA8 801237E8 00000000 */   nop
/* D9BAC 801237EC 16740007 */  bne        $s3, $s4, .Lrace_8012380C
/* D9BB0 801237F0 00000000 */   nop
/* D9BB4 801237F4 8E220000 */  lw         $v0, 0x0($s1)
/* D9BB8 801237F8 8E4500A4 */  lw         $a1, 0xA4($s2)
/* D9BBC 801237FC 84440048 */  lh         $a0, 0x48($v0)
/* D9BC0 80123800 8C42004C */  lw         $v0, 0x4C($v0)
/* D9BC4 80123804 0040F809 */  jalr       $v0
/* D9BC8 80123808 02242021 */   addu      $a0, $s1, $a0
.Lrace_8012380C:
/* D9BCC 8012380C 8E230004 */  lw         $v1, 0x4($s1)
/* D9BD0 80123810 24120004 */  addiu      $s2, $zero, 0x4
/* D9BD4 80123814 10720036 */  beq        $v1, $s2, .Lrace_801238F0
/* D9BD8 80123818 28620005 */   slti      $v0, $v1, 0x5
/* D9BDC 8012381C 10400005 */  beqz       $v0, .Lrace_80123834
/* D9BE0 80123820 24020003 */   addiu     $v0, $zero, 0x3
/* D9BE4 80123824 10620008 */  beq        $v1, $v0, .Lrace_80123848
/* D9BE8 80123828 00000000 */   nop
/* D9BEC 8012382C 08048ECB */  j          .Lrace_80123B2C
/* D9BF0 80123830 00000000 */   nop
.Lrace_80123834:
/* D9BF4 80123834 24020005 */  addiu      $v0, $zero, 0x5
/* D9BF8 80123838 106200A8 */  beq        $v1, $v0, .Lrace_80123ADC
/* D9BFC 8012383C 2624027C */   addiu     $a0, $s1, 0x27C
/* D9C00 80123840 08048ECB */  j          .Lrace_80123B2C
/* D9C04 80123844 00000000 */   nop
.Lrace_80123848:
/* D9C08 80123848 1263002C */  beq        $s3, $v1, .Lrace_801238FC
/* D9C0C 8012384C 27A50050 */   addiu     $a1, $sp, 0x50
/* D9C10 80123850 8E220024 */  lw         $v0, 0x24($s1)
/* D9C14 80123854 8C430538 */  lw         $v1, 0x538($v0)
/* D9C18 80123858 8C620024 */  lw         $v0, 0x24($v1)
/* D9C1C 8012385C 84440010 */  lh         $a0, 0x10($v0)
/* D9C20 80123860 8C420014 */  lw         $v0, 0x14($v0)
/* D9C24 80123864 0040F809 */  jalr       $v0
/* D9C28 80123868 00642021 */   addu      $a0, $v1, $a0
/* D9C2C 8012386C 8E28004C */  lw         $t0, 0x4C($s1)
/* D9C30 80123870 8E290050 */  lw         $t1, 0x50($s1)
/* D9C34 80123874 8E2A0054 */  lw         $t2, 0x54($s1)
/* D9C38 80123878 AFA80060 */  sw         $t0, 0x60($sp)
/* D9C3C 8012387C AFA90064 */  sw         $t1, 0x64($sp)
/* D9C40 80123880 AFAA0068 */  sw         $t2, 0x68($sp)
/* D9C44 80123884 C7A60060 */  lwc1       $f6, 0x60($sp)
/* D9C48 80123888 C7A00050 */  lwc1       $f0, 0x50($sp)
/* D9C4C 8012388C C7A20064 */  lwc1       $f2, 0x64($sp)
/* D9C50 80123890 C7A80054 */  lwc1       $f8, 0x54($sp)
/* D9C54 80123894 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* D9C58 80123898 3C01800D */  lui        $at, %hi(D_race_800CE80C)
/* D9C5C 8012389C C424E80C */  lwc1       $f4, %lo(D_race_800CE80C)($at)
/* D9C60 801238A0 46003181 */  sub.s      $f6, $f6, $f0
/* D9C64 801238A4 AFA00020 */  sw         $zero, 0x20($sp)
/* D9C68 801238A8 C7A00068 */  lwc1       $f0, 0x68($sp)
/* D9C6C 801238AC 46081081 */  sub.s      $f2, $f2, $f8
/* D9C70 801238B0 AFA00024 */  sw         $zero, 0x24($sp)
/* D9C74 801238B4 E7A40028 */  swc1       $f4, 0x28($sp)
/* D9C78 801238B8 460A0001 */  sub.s      $f0, $f0, $f10
/* D9C7C 801238BC E7A60010 */  swc1       $f6, 0x10($sp)
/* D9C80 801238C0 E7A20014 */  swc1       $f2, 0x14($sp)
/* D9C84 801238C4 E7A00018 */  swc1       $f0, 0x18($sp)
/* D9C88 801238C8 8E230270 */  lw         $v1, 0x270($s1)
/* D9C8C 801238CC 27A50010 */  addiu      $a1, $sp, 0x10
/* D9C90 801238D0 8C620024 */  lw         $v0, 0x24($v1)
/* D9C94 801238D4 27A60020 */  addiu      $a2, $sp, 0x20
/* D9C98 801238D8 84440080 */  lh         $a0, 0x80($v0)
/* D9C9C 801238DC 8C420084 */  lw         $v0, 0x84($v0)
/* D9CA0 801238E0 0040F809 */  jalr       $v0
/* D9CA4 801238E4 00642021 */   addu      $a0, $v1, $a0
/* D9CA8 801238E8 08048ECB */  j          .Lrace_80123B2C
/* D9CAC 801238EC 00000000 */   nop
.Lrace_801238F0:
/* D9CB0 801238F0 24020003 */  addiu      $v0, $zero, 0x3
/* D9CB4 801238F4 1662000C */  bne        $s3, $v0, .Lrace_80123928
/* D9CB8 801238F8 27A50050 */   addiu     $a1, $sp, 0x50
.Lrace_801238FC:
/* D9CBC 801238FC 8E280058 */  lw         $t0, 0x58($s1)
/* D9CC0 80123900 8E29005C */  lw         $t1, 0x5C($s1)
/* D9CC4 80123904 8E2A0060 */  lw         $t2, 0x60($s1)
/* D9CC8 80123908 AFA80070 */  sw         $t0, 0x70($sp)
/* D9CCC 8012390C AFA90074 */  sw         $t1, 0x74($sp)
/* D9CD0 80123910 AFAA0078 */  sw         $t2, 0x78($sp)
/* D9CD4 80123914 02202021 */  addu       $a0, $s1, $zero
/* D9CD8 80123918 0C04904D */  jal        func_race_80124134
/* D9CDC 8012391C 27A50070 */   addiu     $a1, $sp, 0x70
/* D9CE0 80123920 08048ECB */  j          .Lrace_80123B2C
/* D9CE4 80123924 00000000 */   nop
.Lrace_80123928:
/* D9CE8 80123928 8E220024 */  lw         $v0, 0x24($s1)
/* D9CEC 8012392C 8C43005C */  lw         $v1, 0x5C($v0)
/* D9CF0 80123930 8C620024 */  lw         $v0, 0x24($v1)
/* D9CF4 80123934 84440010 */  lh         $a0, 0x10($v0)
/* D9CF8 80123938 8C420014 */  lw         $v0, 0x14($v0)
/* D9CFC 8012393C 0040F809 */  jalr       $v0
/* D9D00 80123940 00642021 */   addu      $a0, $v1, $a0
/* D9D04 80123944 8E3200D4 */  lw         $s2, 0xD4($s1)
/* D9D08 80123948 8E43005C */  lw         $v1, 0x5C($s2)
/* D9D0C 8012394C 8C620024 */  lw         $v0, 0x24($v1)
/* D9D10 80123950 27A50060 */  addiu      $a1, $sp, 0x60
/* D9D14 80123954 84440010 */  lh         $a0, 0x10($v0)
/* D9D18 80123958 8C420014 */  lw         $v0, 0x14($v0)
/* D9D1C 8012395C 0040F809 */  jalr       $v0
/* D9D20 80123960 00642021 */   addu      $a0, $v1, $a0
/* D9D24 80123964 8E420D04 */  lw         $v0, 0xD04($s2)
/* D9D28 80123968 30420001 */  andi       $v0, $v0, 0x1
/* D9D2C 8012396C 10400005 */  beqz       $v0, .Lrace_80123984
/* D9D30 80123970 02202021 */   addu      $a0, $s1, $zero
/* D9D34 80123974 0C04904D */  jal        func_race_80124134
/* D9D38 80123978 27A50060 */   addiu     $a1, $sp, 0x60
/* D9D3C 8012397C 08048F09 */  j          .Lrace_80123C24
/* D9D40 80123980 00000000 */   nop
.Lrace_80123984:
/* D9D44 80123984 C7A20060 */  lwc1       $f2, 0x60($sp)
/* D9D48 80123988 C7A00050 */  lwc1       $f0, 0x50($sp)
/* D9D4C 8012398C 46001301 */  sub.s      $f12, $f2, $f0
/* D9D50 80123990 460C6102 */  mul.s      $f4, $f12, $f12
/* D9D54 80123994 C7A20064 */  lwc1       $f2, 0x64($sp)
/* D9D58 80123998 C7A00054 */  lwc1       $f0, 0x54($sp)
/* D9D5C 8012399C 46001201 */  sub.s      $f8, $f2, $f0
/* D9D60 801239A0 46084182 */  mul.s      $f6, $f8, $f8
/* D9D64 801239A4 C7A20068 */  lwc1       $f2, 0x68($sp)
/* D9D68 801239A8 C7A00058 */  lwc1       $f0, 0x58($sp)
/* D9D6C 801239AC 46001281 */  sub.s      $f10, $f2, $f0
/* D9D70 801239B0 460A5002 */  mul.s      $f0, $f10, $f10
/* D9D74 801239B4 3C01800D */  lui        $at, %hi(D_race_800CE810)
/* D9D78 801239B8 C422E810 */  lwc1       $f2, %lo(D_race_800CE810)($at)
/* D9D7C 801239BC 46062100 */  add.s      $f4, $f4, $f6
/* D9D80 801239C0 E7AC0040 */  swc1       $f12, 0x40($sp)
/* D9D84 801239C4 46002100 */  add.s      $f4, $f4, $f0
/* D9D88 801239C8 E7A80044 */  swc1       $f8, 0x44($sp)
/* D9D8C 801239CC 4602203C */  c.lt.s     $f4, $f2
/* D9D90 801239D0 00000000 */  nop
/* D9D94 801239D4 45010013 */  bc1t       .Lrace_80123A24
/* D9D98 801239D8 E7AA0048 */   swc1      $f10, 0x48($sp)
/* D9D9C 801239DC 8E220024 */  lw         $v0, 0x24($s1)
/* D9DA0 801239E0 8C42005C */  lw         $v0, 0x5C($v0)
/* D9DA4 801239E4 C4400028 */  lwc1       $f0, 0x28($v0)
/* D9DA8 801239E8 46006082 */  mul.s      $f2, $f12, $f0
/* D9DAC 801239EC E7A00010 */  swc1       $f0, 0x10($sp)
/* D9DB0 801239F0 C440002C */  lwc1       $f0, 0x2C($v0)
/* D9DB4 801239F4 46004102 */  mul.s      $f4, $f8, $f0
/* D9DB8 801239F8 27A30010 */  addiu      $v1, $sp, 0x10
/* D9DBC 801239FC E4600004 */  swc1       $f0, 0x4($v1)
/* D9DC0 80123A00 C4460030 */  lwc1       $f6, 0x30($v0)
/* D9DC4 80123A04 46065002 */  mul.s      $f0, $f10, $f6
/* D9DC8 80123A08 46041080 */  add.s      $f2, $f2, $f4
/* D9DCC 80123A0C 44802000 */  mtc1       $zero, $f4
/* D9DD0 80123A10 46001080 */  add.s      $f2, $f2, $f0
/* D9DD4 80123A14 4604103C */  c.lt.s     $f2, $f4
/* D9DD8 80123A18 00000000 */  nop
/* D9DDC 80123A1C 45000006 */  bc1f       .Lrace_80123A38
/* D9DE0 80123A20 E4660008 */   swc1      $f6, 0x8($v1)
.Lrace_80123A24:
/* D9DE4 80123A24 02202021 */  addu       $a0, $s1, $zero
/* D9DE8 80123A28 0C04904D */  jal        func_race_80124134
/* D9DEC 80123A2C 27A50060 */   addiu     $a1, $sp, 0x60
/* D9DF0 80123A30 08048ECB */  j          .Lrace_80123B2C
/* D9DF4 80123A34 00000000 */   nop
.Lrace_80123A38:
/* D9DF8 80123A38 27B00040 */  addiu      $s0, $sp, 0x40
/* D9DFC 80123A3C 02002021 */  addu       $a0, $s0, $zero
/* D9E00 80123A40 0C000F26 */  jal        func_80003C98
/* D9E04 80123A44 02002821 */   addu      $a1, $s0, $zero
/* D9E08 80123A48 3C01800D */  lui        $at, %hi(D_race_800CE814)
/* D9E0C 80123A4C C424E814 */  lwc1       $f4, %lo(D_race_800CE814)($at)
/* D9E10 80123A50 C7A60040 */  lwc1       $f6, 0x40($sp)
/* D9E14 80123A54 46043182 */  mul.s      $f6, $f6, $f4
/* D9E18 80123A58 C7A20044 */  lwc1       $f2, 0x44($sp)
/* D9E1C 80123A5C 46041082 */  mul.s      $f2, $f2, $f4
/* D9E20 80123A60 C7A00048 */  lwc1       $f0, 0x48($sp)
/* D9E24 80123A64 46040002 */  mul.s      $f0, $f0, $f4
/* D9E28 80123A68 E7A60040 */  swc1       $f6, 0x40($sp)
/* D9E2C 80123A6C E7A20044 */  swc1       $f2, 0x44($sp)
/* D9E30 80123A70 E7A00048 */  swc1       $f0, 0x48($sp)
/* D9E34 80123A74 8E240024 */  lw         $a0, 0x24($s1)
/* D9E38 80123A78 248403FC */  addiu      $a0, $a0, 0x3FC
/* D9E3C 80123A7C 8C8200CC */  lw         $v0, 0xCC($a0)
/* D9E40 80123A80 02002821 */  addu       $a1, $s0, $zero
/* D9E44 80123A84 84430098 */  lh         $v1, 0x98($v0)
/* D9E48 80123A88 8C42009C */  lw         $v0, 0x9C($v0)
/* D9E4C 80123A8C 0040F809 */  jalr       $v0
/* D9E50 80123A90 00832021 */   addu      $a0, $a0, $v1
/* D9E54 80123A94 264303FC */  addiu      $v1, $s2, 0x3FC
/* D9E58 80123A98 C7A00040 */  lwc1       $f0, 0x40($sp)
/* D9E5C 80123A9C C7A20048 */  lwc1       $f2, 0x48($sp)
/* D9E60 80123AA0 46000007 */  neg.s      $f0, $f0
/* D9E64 80123AA4 E7A00040 */  swc1       $f0, 0x40($sp)
/* D9E68 80123AA8 C7A00044 */  lwc1       $f0, 0x44($sp)
/* D9E6C 80123AAC 46001087 */  neg.s      $f2, $f2
/* D9E70 80123AB0 E7A20048 */  swc1       $f2, 0x48($sp)
/* D9E74 80123AB4 46000007 */  neg.s      $f0, $f0
/* D9E78 80123AB8 E7A00044 */  swc1       $f0, 0x44($sp)
/* D9E7C 80123ABC 8C6200CC */  lw         $v0, 0xCC($v1)
/* D9E80 80123AC0 02002821 */  addu       $a1, $s0, $zero
/* D9E84 80123AC4 84440088 */  lh         $a0, 0x88($v0)
/* D9E88 80123AC8 8C42008C */  lw         $v0, 0x8C($v0)
/* D9E8C 80123ACC 0040F809 */  jalr       $v0
/* D9E90 80123AD0 00642021 */   addu      $a0, $v1, $a0
/* D9E94 80123AD4 08048ECB */  j          .Lrace_80123B2C
/* D9E98 80123AD8 00000000 */   nop
.Lrace_80123ADC:
/* D9E9C 80123ADC 8C820014 */  lw         $v0, 0x14($a0)
/* D9EA0 80123AE0 30420002 */  andi       $v0, $v0, 0x2
/* D9EA4 80123AE4 1040000D */  beqz       $v0, .Lrace_80123B1C
/* D9EA8 80123AE8 00000000 */   nop
/* D9EAC 80123AEC 8E22001C */  lw         $v0, 0x1C($s1)
/* D9EB0 80123AF0 8C460014 */  lw         $a2, 0x14($v0)
/* D9EB4 80123AF4 8C470018 */  lw         $a3, 0x18($v0)
/* D9EB8 80123AF8 0C01A036 */  jal        func_800680D8
/* D9EBC 80123AFC 02002821 */   addu      $a1, $s0, $zero
/* D9EC0 80123B00 8E230278 */  lw         $v1, 0x278($s1)
/* D9EC4 80123B04 8C620024 */  lw         $v0, 0x24($v1)
/* D9EC8 80123B08 02002821 */  addu       $a1, $s0, $zero
/* D9ECC 80123B0C 84440020 */  lh         $a0, 0x20($v0)
/* D9ED0 80123B10 8C420024 */  lw         $v0, 0x24($v0)
/* D9ED4 80123B14 0040F809 */  jalr       $v0
/* D9ED8 80123B18 00642021 */   addu      $a0, $v1, $a0
.Lrace_80123B1C:
/* D9EDC 80123B1C 16720003 */  bne        $s3, $s2, .Lrace_80123B2C
/* D9EE0 80123B20 24020006 */   addiu     $v0, $zero, 0x6
/* D9EE4 80123B24 AE220004 */  sw         $v0, 0x4($s1)
/* D9EE8 80123B28 AE200008 */  sw         $zero, 0x8($s1)
.Lrace_80123B2C:
/* D9EEC 80123B2C 8E220274 */  lw         $v0, 0x274($s1)
/* D9EF0 80123B30 1040003C */  beqz       $v0, .Lrace_80123C24
/* D9EF4 80123B34 00000000 */   nop
/* D9EF8 80123B38 8C420000 */  lw         $v0, 0x0($v0)
/* D9EFC 80123B3C 50400004 */  beql       $v0, $zero, .Lrace_80123B50
/* D9F00 80123B40 2402FFFF */   addiu     $v0, $zero, -0x1
/* D9F04 80123B44 8C4200F0 */  lw         $v0, 0xF0($v0)
/* D9F08 80123B48 08048ED5 */  j          .Lrace_80123B54
/* D9F0C 80123B4C 2C420003 */   sltiu     $v0, $v0, 0x3
.Lrace_80123B50:
/* D9F10 80123B50 2C420003 */  sltiu      $v0, $v0, 0x3
.Lrace_80123B54:
/* D9F14 80123B54 14400008 */  bnez       $v0, .Lrace_80123B78
/* D9F18 80123B58 27B00050 */   addiu     $s0, $sp, 0x50
/* D9F1C 80123B5C 8E22001C */  lw         $v0, 0x1C($s1)
/* D9F20 80123B60 8E250274 */  lw         $a1, 0x274($s1)
/* D9F24 80123B64 8C440040 */  lw         $a0, 0x40($v0)
/* D9F28 80123B68 0C01088C */  jal        func_80042230
/* D9F2C 80123B6C 00000000 */   nop
/* D9F30 80123B70 08048F09 */  j          .Lrace_80123C24
/* D9F34 80123B74 AE200274 */   sw        $zero, 0x274($s1)
.Lrace_80123B78:
/* D9F38 80123B78 8E220024 */  lw         $v0, 0x24($s1)
/* D9F3C 80123B7C 8C430538 */  lw         $v1, 0x538($v0)
/* D9F40 80123B80 8C620024 */  lw         $v0, 0x24($v1)
/* D9F44 80123B84 02002821 */  addu       $a1, $s0, $zero
/* D9F48 80123B88 84440010 */  lh         $a0, 0x10($v0)
/* D9F4C 80123B8C 8C420014 */  lw         $v0, 0x14($v0)
/* D9F50 80123B90 0040F809 */  jalr       $v0
/* D9F54 80123B94 00642021 */   addu      $a0, $v1, $a0
/* D9F58 80123B98 8E220024 */  lw         $v0, 0x24($s1)
/* D9F5C 80123B9C 3C01800D */  lui        $at, %hi(D_race_800CE818)
/* D9F60 80123BA0 C422E818 */  lwc1       $f2, %lo(D_race_800CE818)($at)
/* D9F64 80123BA4 8C480400 */  lw         $t0, 0x400($v0)
/* D9F68 80123BA8 8C490404 */  lw         $t1, 0x404($v0)
/* D9F6C 80123BAC 8C4A0408 */  lw         $t2, 0x408($v0)
/* D9F70 80123BB0 AFA80030 */  sw         $t0, 0x30($sp)
/* D9F74 80123BB4 AFA90034 */  sw         $t1, 0x34($sp)
/* D9F78 80123BB8 AFAA0038 */  sw         $t2, 0x38($sp)
/* D9F7C 80123BBC C7A00058 */  lwc1       $f0, 0x58($sp)
/* D9F80 80123BC0 46020000 */  add.s      $f0, $f0, $f2
/* D9F84 80123BC4 E7A00058 */  swc1       $f0, 0x58($sp)
/* D9F88 80123BC8 8E220274 */  lw         $v0, 0x274($s1)
/* D9F8C 80123BCC 8E230024 */  lw         $v1, 0x24($s1)
/* D9F90 80123BD0 8C450000 */  lw         $a1, 0x0($v0)
/* D9F94 80123BD4 8C630538 */  lw         $v1, 0x538($v1)
/* D9F98 80123BD8 10A00007 */  beqz       $a1, .Lrace_80123BF8
/* D9F9C 80123BDC 24A50168 */   addiu     $a1, $a1, 0x168
/* D9FA0 80123BE0 8C620024 */  lw         $v0, 0x24($v1)
/* D9FA4 80123BE4 84440090 */  lh         $a0, 0x90($v0)
/* D9FA8 80123BE8 8C420094 */  lw         $v0, 0x94($v0)
/* D9FAC 80123BEC 0040F809 */  jalr       $v0
/* D9FB0 80123BF0 00642021 */   addu      $a0, $v1, $a0
/* D9FB4 80123BF4 8E220274 */  lw         $v0, 0x274($s1)
.Lrace_80123BF8:
/* D9FB8 80123BF8 8C440000 */  lw         $a0, 0x0($v0)
/* D9FBC 80123BFC 10800005 */  beqz       $a0, .Lrace_80123C14
/* D9FC0 80123C00 00000000 */   nop
/* D9FC4 80123C04 0C01058D */  jal        func_80041634
/* D9FC8 80123C08 02002821 */   addu      $a1, $s0, $zero
/* D9FCC 80123C0C 8E220274 */  lw         $v0, 0x274($s1)
/* D9FD0 80123C10 8C440000 */  lw         $a0, 0x0($v0)
.Lrace_80123C14:
/* D9FD4 80123C14 10800003 */  beqz       $a0, .Lrace_80123C24
/* D9FD8 80123C18 00000000 */   nop
/* D9FDC 80123C1C 0C01059B */  jal        func_8004166C
/* D9FE0 80123C20 27A50030 */   addiu     $a1, $sp, 0x30
.Lrace_80123C24:
/* D9FE4 80123C24 8FBF0094 */  lw         $ra, 0x94($sp)
/* D9FE8 80123C28 8FB40090 */  lw         $s4, 0x90($sp)
/* D9FEC 80123C2C 8FB3008C */  lw         $s3, 0x8C($sp)
/* D9FF0 80123C30 8FB20088 */  lw         $s2, 0x88($sp)
/* D9FF4 80123C34 8FB10084 */  lw         $s1, 0x84($sp)
/* D9FF8 80123C38 8FB00080 */  lw         $s0, 0x80($sp)
/* D9FFC 80123C3C 03E00008 */  jr         $ra
/* DA000 80123C40 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_race_80123C44
/* DA004 80123C44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DA008 80123C48 AFB00010 */  sw         $s0, 0x10($sp)
/* DA00C 80123C4C 00808021 */  addu       $s0, $a0, $zero
/* DA010 80123C50 AFB10014 */  sw         $s1, 0x14($sp)
/* DA014 80123C54 AFBF0018 */  sw         $ra, 0x18($sp)
/* DA018 80123C58 8E030004 */  lw         $v1, 0x4($s0)
/* DA01C 80123C5C 24020004 */  addiu      $v0, $zero, 0x4
/* DA020 80123C60 1062000D */  beq        $v1, $v0, .Lrace_80123C98
/* DA024 80123C64 00A08821 */   addu      $s1, $a1, $zero
/* DA028 80123C68 28620005 */  slti       $v0, $v1, 0x5
/* DA02C 80123C6C 10400005 */  beqz       $v0, .Lrace_80123C84
/* DA030 80123C70 24020003 */   addiu     $v0, $zero, 0x3
/* DA034 80123C74 10620008 */  beq        $v1, $v0, .Lrace_80123C98
/* DA038 80123C78 00000000 */   nop
/* DA03C 80123C7C 08048F3D */  j          .Lrace_80123CF4
/* DA040 80123C80 00000000 */   nop
.Lrace_80123C84:
/* DA044 80123C84 24020005 */  addiu      $v0, $zero, 0x5
/* DA048 80123C88 1062000E */  beq        $v1, $v0, .Lrace_80123CC4
/* DA04C 80123C8C 26040030 */   addiu     $a0, $s0, 0x30
/* DA050 80123C90 08048F3D */  j          .Lrace_80123CF4
/* DA054 80123C94 00000000 */   nop
.Lrace_80123C98:
/* DA058 80123C98 8E22012C */  lw         $v0, 0x12C($s1)
/* DA05C 80123C9C 8E050270 */  lw         $a1, 0x270($s0)
/* DA060 80123CA0 84440118 */  lh         $a0, 0x118($v0)
/* DA064 80123CA4 8C42011C */  lw         $v0, 0x11C($v0)
/* DA068 80123CA8 0040F809 */  jalr       $v0
/* DA06C 80123CAC 02242021 */   addu      $a0, $s1, $a0
/* DA070 80123CB0 26040030 */  addiu      $a0, $s0, 0x30
/* DA074 80123CB4 0C0466F3 */  jal        func_race_80119BCC
/* DA078 80123CB8 02202821 */   addu      $a1, $s1, $zero
/* DA07C 80123CBC 08048F3D */  j          .Lrace_80123CF4
/* DA080 80123CC0 00000000 */   nop
.Lrace_80123CC4:
/* DA084 80123CC4 0C0466F3 */  jal        func_race_80119BCC
/* DA088 80123CC8 02202821 */   addu      $a1, $s1, $zero
/* DA08C 80123CCC 8E020290 */  lw         $v0, 0x290($s0)
/* DA090 80123CD0 30420002 */  andi       $v0, $v0, 0x2
/* DA094 80123CD4 10400007 */  beqz       $v0, .Lrace_80123CF4
/* DA098 80123CD8 00000000 */   nop
/* DA09C 80123CDC 8E22012C */  lw         $v0, 0x12C($s1)
/* DA0A0 80123CE0 8E050278 */  lw         $a1, 0x278($s0)
/* DA0A4 80123CE4 84440168 */  lh         $a0, 0x168($v0)
/* DA0A8 80123CE8 8C42016C */  lw         $v0, 0x16C($v0)
/* DA0AC 80123CEC 0040F809 */  jalr       $v0
/* DA0B0 80123CF0 02242021 */   addu      $a0, $s1, $a0
.Lrace_80123CF4:
/* DA0B4 80123CF4 8FBF0018 */  lw         $ra, 0x18($sp)
/* DA0B8 80123CF8 8FB10014 */  lw         $s1, 0x14($sp)
/* DA0BC 80123CFC 8FB00010 */  lw         $s0, 0x10($sp)
/* DA0C0 80123D00 03E00008 */  jr         $ra
/* DA0C4 80123D04 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80123D08
/* DA0C8 80123D08 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* DA0CC 80123D0C AFB1009C */  sw         $s1, 0x9C($sp)
/* DA0D0 80123D10 00808821 */  addu       $s1, $a0, $zero
/* DA0D4 80123D14 AFBF00A0 */  sw         $ra, 0xA0($sp)
/* DA0D8 80123D18 AFB00098 */  sw         $s0, 0x98($sp)
/* DA0DC 80123D1C 8E230004 */  lw         $v1, 0x4($s1)
/* DA0E0 80123D20 24020002 */  addiu      $v0, $zero, 0x2
/* DA0E4 80123D24 10620008 */  beq        $v1, $v0, .Lrace_80123D48
/* DA0E8 80123D28 0062102A */   slt       $v0, $v1, $v0
/* DA0EC 80123D2C 144000B6 */  bnez       $v0, .Lrace_80124008
/* DA0F0 80123D30 24020006 */   addiu     $v0, $zero, 0x6
/* DA0F4 80123D34 28620005 */  slti       $v0, $v1, 0x5
/* DA0F8 80123D38 104000B2 */  beqz       $v0, .Lrace_80124004
/* DA0FC 80123D3C 27A50020 */   addiu     $a1, $sp, 0x20
/* DA100 80123D40 08048FF6 */  j          .Lrace_80123FD8
/* DA104 80123D44 00000000 */   nop
.Lrace_80123D48:
/* DA108 80123D48 24020003 */  addiu      $v0, $zero, 0x3
/* DA10C 80123D4C AE220004 */  sw         $v0, 0x4($s1)
/* DA110 80123D50 8E220024 */  lw         $v0, 0x24($s1)
/* DA114 80123D54 24100BB8 */  addiu      $s0, $zero, 0xBB8
/* DA118 80123D58 AE300008 */  sw         $s0, 0x8($s1)
/* DA11C 80123D5C 8C43005C */  lw         $v1, 0x5C($v0)
/* DA120 80123D60 8C620024 */  lw         $v0, 0x24($v1)
/* DA124 80123D64 27A50030 */  addiu      $a1, $sp, 0x30
/* DA128 80123D68 84440010 */  lh         $a0, 0x10($v0)
/* DA12C 80123D6C 8C420014 */  lw         $v0, 0x14($v0)
/* DA130 80123D70 0040F809 */  jalr       $v0
/* DA134 80123D74 00642021 */   addu      $a0, $v1, $a0
/* DA138 80123D78 8E220024 */  lw         $v0, 0x24($s1)
/* DA13C 80123D7C 3C01800D */  lui        $at, %hi(D_race_800CE824)
/* DA140 80123D80 C420E824 */  lwc1       $f0, %lo(D_race_800CE824)($at)
/* DA144 80123D84 8C42005C */  lw         $v0, 0x5C($v0)
/* DA148 80123D88 3C01800D */  lui        $at, %hi(D_race_800CE828)
/* DA14C 80123D8C C42AE828 */  lwc1       $f10, %lo(D_race_800CE828)($at)
/* DA150 80123D90 C4460028 */  lwc1       $f6, 0x28($v0)
/* DA154 80123D94 E7A60040 */  swc1       $f6, 0x40($sp)
/* DA158 80123D98 C448002C */  lwc1       $f8, 0x2C($v0)
/* DA15C 80123D9C E7A80044 */  swc1       $f8, 0x44($sp)
/* DA160 80123DA0 C4420030 */  lwc1       $f2, 0x30($v0)
/* DA164 80123DA4 E7A20048 */  swc1       $f2, 0x48($sp)
/* DA168 80123DA8 8E220270 */  lw         $v0, 0x270($s1)
/* DA16C 80123DAC AFA20060 */  sw         $v0, 0x60($sp)
/* DA170 80123DB0 8E220020 */  lw         $v0, 0x20($s1)
/* DA174 80123DB4 E7A00068 */  swc1       $f0, 0x68($sp)
/* DA178 80123DB8 AFA20064 */  sw         $v0, 0x64($sp)
/* DA17C 80123DBC 8E22001C */  lw         $v0, 0x1C($s1)
/* DA180 80123DC0 3C01800D */  lui        $at, %hi(D_race_800CE82C)
/* DA184 80123DC4 C420E82C */  lwc1       $f0, %lo(D_race_800CE82C)($at)
/* DA188 80123DC8 8C420074 */  lw         $v0, 0x74($v0)
/* DA18C 80123DCC AFA00070 */  sw         $zero, 0x70($sp)
/* DA190 80123DD0 AFA00074 */  sw         $zero, 0x74($sp)
/* DA194 80123DD4 AFA00078 */  sw         $zero, 0x78($sp)
/* DA198 80123DD8 E7A0007C */  swc1       $f0, 0x7C($sp)
/* DA19C 80123DDC AFB00080 */  sw         $s0, 0x80($sp)
/* DA1A0 80123DE0 E7AA0084 */  swc1       $f10, 0x84($sp)
/* DA1A4 80123DE4 244200F0 */  addiu      $v0, $v0, 0xF0
/* DA1A8 80123DE8 AFA2006C */  sw         $v0, 0x6C($sp)
/* DA1AC 80123DEC 8E270028 */  lw         $a3, 0x28($s1)
/* DA1B0 80123DF0 14E00031 */  bnez       $a3, .Lrace_80123EB8
/* DA1B4 80123DF4 26300030 */   addiu     $s0, $s1, 0x30
/* DA1B8 80123DF8 8E22002C */  lw         $v0, 0x2C($s1)
/* DA1BC 80123DFC 50400009 */  beql       $v0, $zero, .Lrace_80123E24
/* DA1C0 80123E00 27A20020 */   addiu     $v0, $sp, 0x20
/* DA1C4 80123E04 8C480000 */  lw         $t0, 0x0($v0)
/* DA1C8 80123E08 8C490004 */  lw         $t1, 0x4($v0)
/* DA1CC 80123E0C 8C4A0008 */  lw         $t2, 0x8($v0)
/* DA1D0 80123E10 AFA80020 */  sw         $t0, 0x20($sp)
/* DA1D4 80123E14 AFA90024 */  sw         $t1, 0x24($sp)
/* DA1D8 80123E18 AFAA0028 */  sw         $t2, 0x28($sp)
/* DA1DC 80123E1C 08048FA1 */  j          .Lrace_80123E84
/* DA1E0 80123E20 02002021 */   addu      $a0, $s0, $zero
.Lrace_80123E24:
/* DA1E4 80123E24 3C01800D */  lui        $at, %hi(D_race_800CE830)
/* DA1E8 80123E28 C424E830 */  lwc1       $f4, %lo(D_race_800CE830)($at)
/* DA1EC 80123E2C 46043182 */  mul.s      $f6, $f6, $f4
/* DA1F0 80123E30 00000000 */  nop
/* DA1F4 80123E34 46044202 */  mul.s      $f8, $f8, $f4
/* DA1F8 80123E38 00000000 */  nop
/* DA1FC 80123E3C 46041102 */  mul.s      $f4, $f2, $f4
/* DA200 80123E40 C7A00030 */  lwc1       $f0, 0x30($sp)
/* DA204 80123E44 C7A20034 */  lwc1       $f2, 0x34($sp)
/* DA208 80123E48 46060000 */  add.s      $f0, $f0, $f6
/* DA20C 80123E4C E7A60088 */  swc1       $f6, 0x88($sp)
/* DA210 80123E50 E7A8008C */  swc1       $f8, 0x8C($sp)
/* DA214 80123E54 46081080 */  add.s      $f2, $f2, $f8
/* DA218 80123E58 E7A40090 */  swc1       $f4, 0x90($sp)
/* DA21C 80123E5C E7A00020 */  swc1       $f0, 0x20($sp)
/* DA220 80123E60 E4420004 */  swc1       $f2, 0x4($v0)
/* DA224 80123E64 C7A00038 */  lwc1       $f0, 0x38($sp)
/* DA228 80123E68 46040000 */  add.s      $f0, $f0, $f4
/* DA22C 80123E6C E4400008 */  swc1       $f0, 0x8($v0)
/* DA230 80123E70 C7A00028 */  lwc1       $f0, 0x28($sp)
/* DA234 80123E74 460A0000 */  add.s      $f0, $f0, $f10
/* DA238 80123E78 E7A00028 */  swc1       $f0, 0x28($sp)
/* DA23C 80123E7C 26300030 */  addiu      $s0, $s1, 0x30
/* DA240 80123E80 02002021 */  addu       $a0, $s0, $zero
.Lrace_80123E84:
/* DA244 80123E84 27A50060 */  addiu      $a1, $sp, 0x60
/* DA248 80123E88 27A70020 */  addiu      $a3, $sp, 0x20
/* DA24C 80123E8C AFA00050 */  sw         $zero, 0x50($sp)
/* DA250 80123E90 AFA00054 */  sw         $zero, 0x54($sp)
/* DA254 80123E94 AFA00058 */  sw         $zero, 0x58($sp)
/* DA258 80123E98 8E260024 */  lw         $a2, 0x24($s1)
/* DA25C 80123E9C 27A20050 */  addiu      $v0, $sp, 0x50
/* DA260 80123EA0 AFA20010 */  sw         $v0, 0x10($sp)
/* DA264 80123EA4 24020001 */  addiu      $v0, $zero, 0x1
/* DA268 80123EA8 0C040C6A */  jal        func_race_801031A8
/* DA26C 80123EAC AFA20014 */   sw        $v0, 0x14($sp)
/* DA270 80123EB0 08048FB6 */  j          .Lrace_80123ED8
/* DA274 80123EB4 AE00022C */   sw        $zero, 0x22C($s0)
.Lrace_80123EB8:
/* DA278 80123EB8 02002021 */  addu       $a0, $s0, $zero
/* DA27C 80123EBC 27A50060 */  addiu      $a1, $sp, 0x60
/* DA280 80123EC0 8E260024 */  lw         $a2, 0x24($s1)
/* DA284 80123EC4 24020001 */  addiu      $v0, $zero, 0x1
/* DA288 80123EC8 AFA20010 */  sw         $v0, 0x10($sp)
/* DA28C 80123ECC 0C040B68 */  jal        func_race_80102DA0
/* DA290 80123ED0 AFA00014 */   sw        $zero, 0x14($sp)
/* DA294 80123ED4 AE00022C */  sw         $zero, 0x22C($s0)
.Lrace_80123ED8:
/* DA298 80123ED8 AE00023C */  sw         $zero, 0x23C($s0)
/* DA29C 80123EDC 3C05800D */  lui        $a1, %hi(D_race_800CE81C)
/* DA2A0 80123EE0 24A5E81C */  addiu      $a1, $a1, %lo(D_race_800CE81C)
/* DA2A4 80123EE4 8E22001C */  lw         $v0, 0x1C($s1)
/* DA2A8 80123EE8 00003021 */  addu       $a2, $zero, $zero
/* DA2AC 80123EEC 8C440040 */  lw         $a0, 0x40($v0)
/* DA2B0 80123EF0 00C03821 */  addu       $a3, $a2, $zero
/* DA2B4 80123EF4 0C0107DD */  jal        func_80041F74
/* DA2B8 80123EF8 AFA00010 */   sw        $zero, 0x10($sp)
/* DA2BC 80123EFC 10400020 */  beqz       $v0, .Lrace_80123F80
/* DA2C0 80123F00 AE220274 */   sw        $v0, 0x274($s1)
/* DA2C4 80123F04 8E220024 */  lw         $v0, 0x24($s1)
/* DA2C8 80123F08 8C430538 */  lw         $v1, 0x538($v0)
/* DA2CC 80123F0C 27B00030 */  addiu      $s0, $sp, 0x30
/* DA2D0 80123F10 8C620024 */  lw         $v0, 0x24($v1)
/* DA2D4 80123F14 02002821 */  addu       $a1, $s0, $zero
/* DA2D8 80123F18 84440010 */  lh         $a0, 0x10($v0)
/* DA2DC 80123F1C 8C420014 */  lw         $v0, 0x14($v0)
/* DA2E0 80123F20 0040F809 */  jalr       $v0
/* DA2E4 80123F24 00642021 */   addu      $a0, $v1, $a0
/* DA2E8 80123F28 C7A00038 */  lwc1       $f0, 0x38($sp)
/* DA2EC 80123F2C 3C01800D */  lui        $at, %hi(D_race_800CE834)
/* DA2F0 80123F30 C422E834 */  lwc1       $f2, %lo(D_race_800CE834)($at)
/* DA2F4 80123F34 46020000 */  add.s      $f0, $f0, $f2
/* DA2F8 80123F38 E7A00038 */  swc1       $f0, 0x38($sp)
/* DA2FC 80123F3C 8E220274 */  lw         $v0, 0x274($s1)
/* DA300 80123F40 8E230024 */  lw         $v1, 0x24($s1)
/* DA304 80123F44 8C450000 */  lw         $a1, 0x0($v0)
/* DA308 80123F48 8C630538 */  lw         $v1, 0x538($v1)
/* DA30C 80123F4C 10A00007 */  beqz       $a1, .Lrace_80123F6C
/* DA310 80123F50 24A50168 */   addiu     $a1, $a1, 0x168
/* DA314 80123F54 8C620024 */  lw         $v0, 0x24($v1)
/* DA318 80123F58 84440090 */  lh         $a0, 0x90($v0)
/* DA31C 80123F5C 8C420094 */  lw         $v0, 0x94($v0)
/* DA320 80123F60 0040F809 */  jalr       $v0
/* DA324 80123F64 00642021 */   addu      $a0, $v1, $a0
/* DA328 80123F68 8E220274 */  lw         $v0, 0x274($s1)
.Lrace_80123F6C:
/* DA32C 80123F6C 8C440000 */  lw         $a0, 0x0($v0)
/* DA330 80123F70 10800003 */  beqz       $a0, .Lrace_80123F80
/* DA334 80123F74 00000000 */   nop
/* DA338 80123F78 0C01058D */  jal        func_80041634
/* DA33C 80123F7C 02002821 */   addu      $a1, $s0, $zero
.Lrace_80123F80:
/* DA340 80123F80 8E220024 */  lw         $v0, 0x24($s1)
/* DA344 80123F84 8C43005C */  lw         $v1, 0x5C($v0)
/* DA348 80123F88 8C620024 */  lw         $v0, 0x24($v1)
/* DA34C 80123F8C 27A50030 */  addiu      $a1, $sp, 0x30
/* DA350 80123F90 84440010 */  lh         $a0, 0x10($v0)
/* DA354 80123F94 8C420014 */  lw         $v0, 0x14($v0)
/* DA358 80123F98 0040F809 */  jalr       $v0
/* DA35C 80123F9C 00642021 */   addu      $a0, $v1, $a0
/* DA360 80123FA0 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DA364 80123FA4 3C01800D */  lui        $at, %hi(D_race_800CE838)
/* DA368 80123FA8 C422E838 */  lwc1       $f2, %lo(D_race_800CE838)($at)
/* DA36C 80123FAC 3C01800D */  lui        $at, %hi(D_race_800CE83C)
/* DA370 80123FB0 C420E83C */  lwc1       $f0, %lo(D_race_800CE83C)($at)
/* DA374 80123FB4 24050015 */  addiu      $a1, $zero, 0x15
/* DA378 80123FB8 E7A20010 */  swc1       $f2, 0x10($sp)
/* DA37C 80123FBC E7A00014 */  swc1       $f0, 0x14($sp)
/* DA380 80123FC0 E7A00018 */  swc1       $f0, 0x18($sp)
/* DA384 80123FC4 8E240010 */  lw         $a0, 0x10($s1)
/* DA388 80123FC8 0C046530 */  jal        func_race_801194C0
/* DA38C 80123FCC 27A60030 */   addiu     $a2, $sp, 0x30
/* DA390 80123FD0 08049004 */  j          .Lrace_80124010
/* DA394 80123FD4 00000000 */   nop
.Lrace_80123FD8:
/* DA398 80123FD8 8E230270 */  lw         $v1, 0x270($s1)
/* DA39C 80123FDC 8C620024 */  lw         $v0, 0x24($v1)
/* DA3A0 80123FE0 84440010 */  lh         $a0, 0x10($v0)
/* DA3A4 80123FE4 8C420014 */  lw         $v0, 0x14($v0)
/* DA3A8 80123FE8 0040F809 */  jalr       $v0
/* DA3AC 80123FEC 00642021 */   addu      $a0, $v1, $a0
/* DA3B0 80123FF0 02202021 */  addu       $a0, $s1, $zero
/* DA3B4 80123FF4 0C04904D */  jal        func_race_80124134
/* DA3B8 80123FF8 27A50020 */   addiu     $a1, $sp, 0x20
/* DA3BC 80123FFC 08049004 */  j          .Lrace_80124010
/* DA3C0 80124000 00000000 */   nop
.Lrace_80124004:
/* DA3C4 80124004 24020006 */  addiu      $v0, $zero, 0x6
.Lrace_80124008:
/* DA3C8 80124008 AE220004 */  sw         $v0, 0x4($s1)
/* DA3CC 8012400C AE200008 */  sw         $zero, 0x8($s1)
.Lrace_80124010:
/* DA3D0 80124010 8FBF00A0 */  lw         $ra, 0xA0($sp)
/* DA3D4 80124014 8FB1009C */  lw         $s1, 0x9C($sp)
/* DA3D8 80124018 8FB00098 */  lw         $s0, 0x98($sp)
/* DA3DC 8012401C 03E00008 */  jr         $ra
/* DA3E0 80124020 27BD00A8 */   addiu     $sp, $sp, 0xA8

glabel func_race_80124024
/* DA3E4 80124024 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* DA3E8 80124028 AFB10034 */  sw         $s1, 0x34($sp)
/* DA3EC 8012402C 00808821 */  addu       $s1, $a0, $zero
/* DA3F0 80124030 AFB00030 */  sw         $s0, 0x30($sp)
/* DA3F4 80124034 AFBF0038 */  sw         $ra, 0x38($sp)
/* DA3F8 80124038 8E230004 */  lw         $v1, 0x4($s1)
/* DA3FC 8012403C 24020003 */  addiu      $v0, $zero, 0x3
/* DA400 80124040 14620037 */  bne        $v1, $v0, .Lrace_80124120
/* DA404 80124044 00A08021 */   addu      $s0, $a1, $zero
/* DA408 80124048 8E020D04 */  lw         $v0, 0xD04($s0)
/* DA40C 8012404C 30420001 */  andi       $v0, $v0, 0x1
/* DA410 80124050 10400011 */  beqz       $v0, .Lrace_80124098
/* DA414 80124054 02002021 */   addu      $a0, $s0, $zero
/* DA418 80124058 0C04339E */  jal        func_race_8010CE78
/* DA41C 8012405C 24050001 */   addiu     $a1, $zero, 0x1
/* DA420 80124060 0C0438E0 */  jal        func_race_8010E380
/* DA424 80124064 02002021 */   addu      $a0, $s0, $zero
/* DA428 80124068 8E230270 */  lw         $v1, 0x270($s1)
/* DA42C 8012406C 8C620024 */  lw         $v0, 0x24($v1)
/* DA430 80124070 27A50020 */  addiu      $a1, $sp, 0x20
/* DA434 80124074 84440010 */  lh         $a0, 0x10($v0)
/* DA438 80124078 8C420014 */  lw         $v0, 0x14($v0)
/* DA43C 8012407C 0040F809 */  jalr       $v0
/* DA440 80124080 00642021 */   addu      $a0, $v1, $a0
/* DA444 80124084 02202021 */  addu       $a0, $s1, $zero
/* DA448 80124088 0C04904D */  jal        func_race_80124134
/* DA44C 8012408C 27A50020 */   addiu     $a1, $sp, 0x20
/* DA450 80124090 08049048 */  j          .Lrace_80124120
/* DA454 80124094 00000000 */   nop
.Lrace_80124098:
/* DA458 80124098 8E240024 */  lw         $a0, 0x24($s1)
/* DA45C 8012409C 50800004 */  beql       $a0, $zero, .Lrace_801240B0
/* DA460 801240A0 02002021 */   addu      $a0, $s0, $zero
/* DA464 801240A4 0C04339E */  jal        func_race_8010CE78
/* DA468 801240A8 24050001 */   addiu     $a1, $zero, 0x1
/* DA46C 801240AC 02002021 */  addu       $a0, $s0, $zero
.Lrace_801240B0:
/* DA470 801240B0 0C04339E */  jal        func_race_8010CE78
/* DA474 801240B4 00002821 */   addu      $a1, $zero, $zero
/* DA478 801240B8 0C04345D */  jal        func_race_8010D174
/* DA47C 801240BC 02002021 */   addu      $a0, $s0, $zero
/* DA480 801240C0 8E03005C */  lw         $v1, 0x5C($s0)
/* DA484 801240C4 27B00020 */  addiu      $s0, $sp, 0x20
/* DA488 801240C8 8C620024 */  lw         $v0, 0x24($v1)
/* DA48C 801240CC 02002821 */  addu       $a1, $s0, $zero
/* DA490 801240D0 84440010 */  lh         $a0, 0x10($v0)
/* DA494 801240D4 8C420014 */  lw         $v0, 0x14($v0)
/* DA498 801240D8 0040F809 */  jalr       $v0
/* DA49C 801240DC 00642021 */   addu      $a0, $v1, $a0
/* DA4A0 801240E0 3C01800D */  lui        $at, %hi(D_race_800CE840)
/* DA4A4 801240E4 C422E840 */  lwc1       $f2, %lo(D_race_800CE840)($at)
/* DA4A8 801240E8 3C01800D */  lui        $at, %hi(D_race_800CE844)
/* DA4AC 801240EC C420E844 */  lwc1       $f0, %lo(D_race_800CE844)($at)
/* DA4B0 801240F0 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DA4B4 801240F4 24050012 */  addiu      $a1, $zero, 0x12
/* DA4B8 801240F8 E7A20010 */  swc1       $f2, 0x10($sp)
/* DA4BC 801240FC E7A00014 */  swc1       $f0, 0x14($sp)
/* DA4C0 80124100 E7A00018 */  swc1       $f0, 0x18($sp)
/* DA4C4 80124104 8E240010 */  lw         $a0, 0x10($s1)
/* DA4C8 80124108 0C046530 */  jal        func_race_801194C0
/* DA4CC 8012410C 02003021 */   addu      $a2, $s0, $zero
/* DA4D0 80124110 24020004 */  addiu      $v0, $zero, 0x4
/* DA4D4 80124114 AE220004 */  sw         $v0, 0x4($s1)
/* DA4D8 80124118 24020FA0 */  addiu      $v0, $zero, 0xFA0
/* DA4DC 8012411C AE220008 */  sw         $v0, 0x8($s1)
.Lrace_80124120:
/* DA4E0 80124120 8FBF0038 */  lw         $ra, 0x38($sp)
/* DA4E4 80124124 8FB10034 */  lw         $s1, 0x34($sp)
/* DA4E8 80124128 8FB00030 */  lw         $s0, 0x30($sp)
/* DA4EC 8012412C 03E00008 */  jr         $ra
/* DA4F0 80124130 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_80124134
/* DA4F4 80124134 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* DA4F8 80124138 AFB10024 */  sw         $s1, 0x24($sp)
/* DA4FC 8012413C 00808821 */  addu       $s1, $a0, $zero
/* DA500 80124140 AFBF002C */  sw         $ra, 0x2C($sp)
/* DA504 80124144 AFB20028 */  sw         $s2, 0x28($sp)
/* DA508 80124148 AFB00020 */  sw         $s0, 0x20($sp)
/* DA50C 8012414C F7B80040 */  sdc1       $f24, 0x40($sp)
/* DA510 80124150 F7B60038 */  sdc1       $f22, 0x38($sp)
/* DA514 80124154 F7B40030 */  sdc1       $f20, 0x30($sp)
/* DA518 80124158 8E2300D4 */  lw         $v1, 0xD4($s1)
/* DA51C 8012415C 10600019 */  beqz       $v1, .Lrace_801241C4
/* DA520 80124160 00A09021 */   addu      $s2, $a1, $zero
/* DA524 80124164 246303FC */  addiu      $v1, $v1, 0x3FC
/* DA528 80124168 8C6200CC */  lw         $v0, 0xCC($v1)
/* DA52C 8012416C 84440090 */  lh         $a0, 0x90($v0)
/* DA530 80124170 8C420094 */  lw         $v0, 0x94($v0)
/* DA534 80124174 0040F809 */  jalr       $v0
/* DA538 80124178 00642021 */   addu      $a0, $v1, $a0
/* DA53C 8012417C 8E240024 */  lw         $a0, 0x24($s1)
/* DA540 80124180 248403FC */  addiu      $a0, $a0, 0x3FC
/* DA544 80124184 8C8200CC */  lw         $v0, 0xCC($a0)
/* DA548 80124188 844300A0 */  lh         $v1, 0xA0($v0)
/* DA54C 8012418C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DA550 80124190 0040F809 */  jalr       $v0
/* DA554 80124194 00832021 */   addu      $a0, $a0, $v1
/* DA558 80124198 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DA55C 8012419C 3C01800D */  lui        $at, %hi(D_race_800CE848)
/* DA560 801241A0 C422E848 */  lwc1       $f2, %lo(D_race_800CE848)($at)
/* DA564 801241A4 3C01800D */  lui        $at, %hi(D_race_800CE84C)
/* DA568 801241A8 C420E84C */  lwc1       $f0, %lo(D_race_800CE84C)($at)
/* DA56C 801241AC E7A20010 */  swc1       $f2, 0x10($sp)
/* DA570 801241B0 E7A00014 */  swc1       $f0, 0x14($sp)
/* DA574 801241B4 E7A00018 */  swc1       $f0, 0x18($sp)
/* DA578 801241B8 8E240010 */  lw         $a0, 0x10($s1)
/* DA57C 801241BC 08049085 */  j          .Lrace_80124214
/* DA580 801241C0 24050014 */   addiu     $a1, $zero, 0x14
.Lrace_801241C4:
/* DA584 801241C4 3C01800D */  lui        $at, %hi(D_race_800CE850)
/* DA588 801241C8 C434E850 */  lwc1       $f20, %lo(D_race_800CE850)($at)
/* DA58C 801241CC 3C01800D */  lui        $at, %hi(D_race_800CE854)
/* DA590 801241D0 C436E854 */  lwc1       $f22, %lo(D_race_800CE854)($at)
/* DA594 801241D4 3C01800D */  lui        $at, %hi(D_race_800CE858)
/* DA598 801241D8 C438E858 */  lwc1       $f24, %lo(D_race_800CE858)($at)
/* DA59C 801241DC 24050016 */  addiu      $a1, $zero, 0x16
/* DA5A0 801241E0 E7B40010 */  swc1       $f20, 0x10($sp)
/* DA5A4 801241E4 E7B60014 */  swc1       $f22, 0x14($sp)
/* DA5A8 801241E8 E7B60018 */  swc1       $f22, 0x18($sp)
/* DA5AC 801241EC 8E240010 */  lw         $a0, 0x10($s1)
/* DA5B0 801241F0 4407C000 */  mfc1       $a3, $f24
/* DA5B4 801241F4 0C046530 */  jal        func_race_801194C0
/* DA5B8 801241F8 02403021 */   addu      $a2, $s2, $zero
/* DA5BC 801241FC 24050049 */  addiu      $a1, $zero, 0x49
/* DA5C0 80124200 E7B40010 */  swc1       $f20, 0x10($sp)
/* DA5C4 80124204 E7B60014 */  swc1       $f22, 0x14($sp)
/* DA5C8 80124208 E7B60018 */  swc1       $f22, 0x18($sp)
/* DA5CC 8012420C 8E240010 */  lw         $a0, 0x10($s1)
/* DA5D0 80124210 4407C000 */  mfc1       $a3, $f24
.Lrace_80124214:
/* DA5D4 80124214 0C046530 */  jal        func_race_801194C0
/* DA5D8 80124218 02403021 */   addu      $a2, $s2, $zero
/* DA5DC 8012421C 2630027C */  addiu      $s0, $s1, 0x27C
/* DA5E0 80124220 02002021 */  addu       $a0, $s0, $zero
/* DA5E4 80124224 24020005 */  addiu      $v0, $zero, 0x5
/* DA5E8 80124228 AE220004 */  sw         $v0, 0x4($s1)
/* DA5EC 8012422C 240201F4 */  addiu      $v0, $zero, 0x1F4
/* DA5F0 80124230 0C01A026 */  jal        func_80068098
/* DA5F4 80124234 AE220008 */   sw        $v0, 0x8($s1)
/* DA5F8 80124238 0C01A02B */  jal        func_800680AC
/* DA5FC 8012423C 02002021 */   addu      $a0, $s0, $zero
/* DA600 80124240 02002021 */  addu       $a0, $s0, $zero
/* DA604 80124244 00003821 */  addu       $a3, $zero, $zero
/* DA608 80124248 8E25001C */  lw         $a1, 0x1C($s1)
/* DA60C 8012424C 8E260294 */  lw         $a2, 0x294($s1)
/* DA610 80124250 0C01A018 */  jal        func_80068060
/* DA614 80124254 24A50008 */   addiu     $a1, $a1, 0x8
/* DA618 80124258 8E22001C */  lw         $v0, 0x1C($s1)
/* DA61C 8012425C 02002021 */  addu       $a0, $s0, $zero
/* DA620 80124260 8C460014 */  lw         $a2, 0x14($v0)
/* DA624 80124264 8C470018 */  lw         $a3, 0x18($v0)
/* DA628 80124268 0C01A036 */  jal        func_800680D8
/* DA62C 8012426C 00002821 */   addu      $a1, $zero, $zero
/* DA630 80124270 8E230278 */  lw         $v1, 0x278($s1)
/* DA634 80124274 8C620024 */  lw         $v0, 0x24($v1)
/* DA638 80124278 02402821 */  addu       $a1, $s2, $zero
/* DA63C 8012427C 84440018 */  lh         $a0, 0x18($v0)
/* DA640 80124280 8C42001C */  lw         $v0, 0x1C($v0)
/* DA644 80124284 0040F809 */  jalr       $v0
/* DA648 80124288 00642021 */   addu      $a0, $v1, $a0
/* DA64C 8012428C 26300030 */  addiu      $s0, $s1, 0x30
/* DA650 80124290 02002021 */  addu       $a0, $s0, $zero
/* DA654 80124294 0C046835 */  jal        func_race_8011A0D4
/* DA658 80124298 02402821 */   addu      $a1, $s2, $zero
/* DA65C 8012429C 0C040EE7 */  jal        func_race_80103B9C
/* DA660 801242A0 02002021 */   addu      $a0, $s0, $zero
/* DA664 801242A4 8FBF002C */  lw         $ra, 0x2C($sp)
/* DA668 801242A8 8FB20028 */  lw         $s2, 0x28($sp)
/* DA66C 801242AC 8FB10024 */  lw         $s1, 0x24($sp)
/* DA670 801242B0 8FB00020 */  lw         $s0, 0x20($sp)
/* DA674 801242B4 D7B80040 */  ldc1       $f24, 0x40($sp)
/* DA678 801242B8 D7B60038 */  ldc1       $f22, 0x38($sp)
/* DA67C 801242BC D7B40030 */  ldc1       $f20, 0x30($sp)
/* DA680 801242C0 03E00008 */  jr         $ra
/* DA684 801242C4 27BD0048 */   addiu     $sp, $sp, 0x48
