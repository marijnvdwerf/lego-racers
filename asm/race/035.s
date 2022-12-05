.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800D26D0
/* 88A90 800D26D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 88A94 800D26D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 88A98 800D26D8 00808021 */  addu       $s0, $a0, $zero
/* 88A9C 800D26DC 3C02800D */  lui        $v0, %hi(D_race_800CA8A0)
/* 88AA0 800D26E0 2442A8A0 */  addiu      $v0, $v0, %lo(D_race_800CA8A0)
/* 88AA4 800D26E4 26040008 */  addiu      $a0, $s0, 0x8
/* 88AA8 800D26E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 88AAC 800D26EC 0C016038 */  jal        func_800580E0
/* 88AB0 800D26F0 AE0202A0 */   sw        $v0, 0x2A0($s0)
/* 88AB4 800D26F4 0C0349EF */  jal        func_race_800D27BC
/* 88AB8 800D26F8 02002021 */   addu      $a0, $s0, $zero
/* 88ABC 800D26FC 02001021 */  addu       $v0, $s0, $zero
/* 88AC0 800D2700 8FBF0014 */  lw         $ra, 0x14($sp)
/* 88AC4 800D2704 8FB00010 */  lw         $s0, 0x10($sp)
/* 88AC8 800D2708 03E00008 */  jr         $ra
/* 88ACC 800D270C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D2710
/* 88AD0 800D2710 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 88AD4 800D2714 AFB10014 */  sw         $s1, 0x14($sp)
/* 88AD8 800D2718 00808821 */  addu       $s1, $a0, $zero
/* 88ADC 800D271C AFB00010 */  sw         $s0, 0x10($sp)
/* 88AE0 800D2720 00A08021 */  addu       $s0, $a1, $zero
/* 88AE4 800D2724 3C02800D */  lui        $v0, %hi(D_race_800CA8A0)
/* 88AE8 800D2728 2442A8A0 */  addiu      $v0, $v0, %lo(D_race_800CA8A0)
/* 88AEC 800D272C AFBF0018 */  sw         $ra, 0x18($sp)
/* 88AF0 800D2730 0C0349D8 */  jal        func_race_800D2760
/* 88AF4 800D2734 AE2202A0 */   sw        $v0, 0x2A0($s1)
/* 88AF8 800D2738 32100001 */  andi       $s0, $s0, 0x1
/* 88AFC 800D273C 12000003 */  beqz       $s0, .Lrace_800D274C
/* 88B00 800D2740 00000000 */   nop
/* 88B04 800D2744 0C01FB5C */  jal        func_8007ED70
/* 88B08 800D2748 02202021 */   addu      $a0, $s1, $zero
.Lrace_800D274C:
/* 88B0C 800D274C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 88B10 800D2750 8FB10014 */  lw         $s1, 0x14($sp)
/* 88B14 800D2754 8FB00010 */  lw         $s0, 0x10($sp)
/* 88B18 800D2758 03E00008 */  jr         $ra
/* 88B1C 800D275C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D2760
/* 88B20 800D2760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 88B24 800D2764 AFB00010 */  sw         $s0, 0x10($sp)
/* 88B28 800D2768 00808021 */  addu       $s0, $a0, $zero
/* 88B2C 800D276C AFBF0014 */  sw         $ra, 0x14($sp)
/* 88B30 800D2770 8E050004 */  lw         $a1, 0x4($s0)
/* 88B34 800D2774 10A00009 */  beqz       $a1, .Lrace_800D279C
/* 88B38 800D2778 00000000 */   nop
/* 88B3C 800D277C 8E020000 */  lw         $v0, 0x0($s0)
/* 88B40 800D2780 8C430000 */  lw         $v1, 0x0($v0)
/* 88B44 800D2784 84640098 */  lh         $a0, 0x98($v1)
/* 88B48 800D2788 00442021 */  addu       $a0, $v0, $a0
/* 88B4C 800D278C 8C62009C */  lw         $v0, 0x9C($v1)
/* 88B50 800D2790 0040F809 */  jalr       $v0
/* 88B54 800D2794 00000000 */   nop
/* 88B58 800D2798 AE000004 */  sw         $zero, 0x4($s0)
.Lrace_800D279C:
/* 88B5C 800D279C 0C01607E */  jal        func_800581F8
/* 88B60 800D27A0 26040008 */   addiu     $a0, $s0, 0x8
/* 88B64 800D27A4 0C0349EF */  jal        func_race_800D27BC
/* 88B68 800D27A8 02002021 */   addu      $a0, $s0, $zero
/* 88B6C 800D27AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 88B70 800D27B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 88B74 800D27B4 03E00008 */  jr         $ra
/* 88B78 800D27B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D27BC
/* 88B7C 800D27BC 00003821 */  addu       $a3, $zero, $zero
/* 88B80 800D27C0 00803021 */  addu       $a2, $a0, $zero
/* 88B84 800D27C4 24C801C8 */  addiu      $t0, $a2, 0x1C8
/* 88B88 800D27C8 240200FF */  addiu      $v0, $zero, 0xFF
/* 88B8C 800D27CC AC800000 */  sw         $zero, 0x0($a0)
/* 88B90 800D27D0 AC800004 */  sw         $zero, 0x4($a0)
/* 88B94 800D27D4 A0800098 */  sb         $zero, 0x98($a0)
/* 88B98 800D27D8 AC80009C */  sw         $zero, 0x9C($a0)
/* 88B9C 800D27DC AC8000A0 */  sw         $zero, 0xA0($a0)
/* 88BA0 800D27E0 AC8000A4 */  sw         $zero, 0xA4($a0)
/* 88BA4 800D27E4 AC8000A8 */  sw         $zero, 0xA8($a0)
/* 88BA8 800D27E8 AC8000AC */  sw         $zero, 0xAC($a0)
/* 88BAC 800D27EC AC8000B0 */  sw         $zero, 0xB0($a0)
/* 88BB0 800D27F0 AC8000B4 */  sw         $zero, 0xB4($a0)
/* 88BB4 800D27F4 AC8000B8 */  sw         $zero, 0xB8($a0)
/* 88BB8 800D27F8 AC8000BC */  sw         $zero, 0xBC($a0)
/* 88BBC 800D27FC AC8000C0 */  sw         $zero, 0xC0($a0)
/* 88BC0 800D2800 AC8000C4 */  sw         $zero, 0xC4($a0)
/* 88BC4 800D2804 AC8000C8 */  sw         $zero, 0xC8($a0)
/* 88BC8 800D2808 AC8000CC */  sw         $zero, 0xCC($a0)
/* 88BCC 800D280C AC8000D0 */  sw         $zero, 0xD0($a0)
/* 88BD0 800D2810 A08200D4 */  sb         $v0, 0xD4($a0)
/* 88BD4 800D2814 A08200D5 */  sb         $v0, 0xD5($a0)
/* 88BD8 800D2818 A08200D6 */  sb         $v0, 0xD6($a0)
/* 88BDC 800D281C A08200D7 */  sb         $v0, 0xD7($a0)
.Lrace_800D2820:
/* 88BE0 800D2820 00002821 */  addu       $a1, $zero, $zero
/* 88BE4 800D2824 00E01821 */  addu       $v1, $a3, $zero
/* 88BE8 800D2828 ACC000D8 */  sw         $zero, 0xD8($a2)
/* 88BEC 800D282C ACC00118 */  sw         $zero, 0x118($a2)
/* 88BF0 800D2830 ACC0011C */  sw         $zero, 0x11C($a2)
/* 88BF4 800D2834 ACC00120 */  sw         $zero, 0x120($a2)
.Lrace_800D2838:
/* 88BF8 800D2838 00831021 */  addu       $v0, $a0, $v1
/* 88BFC 800D283C 24A50001 */  addiu      $a1, $a1, 0x1
/* 88C00 800D2840 AC4000DC */  sw         $zero, 0xDC($v0)
/* 88C04 800D2844 AC4000E0 */  sw         $zero, 0xE0($v0)
/* 88C08 800D2848 AC4000E4 */  sw         $zero, 0xE4($v0)
/* 88C0C 800D284C 2CA20005 */  sltiu      $v0, $a1, 0x5
/* 88C10 800D2850 1440FFF9 */  bnez       $v0, .Lrace_800D2838
/* 88C14 800D2854 2463000C */   addiu     $v1, $v1, 0xC
/* 88C18 800D2858 24C6004C */  addiu      $a2, $a2, 0x4C
/* 88C1C 800D285C 00C8102B */  sltu       $v0, $a2, $t0
/* 88C20 800D2860 1440FFEF */  bnez       $v0, .Lrace_800D2820
/* 88C24 800D2864 24E7004C */   addiu     $a3, $a3, 0x4C
/* 88C28 800D2868 03E00008 */  jr         $ra
/* 88C2C 800D286C 00000000 */   nop

glabel func_race_800D2870
/* 88C30 800D2870 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 88C34 800D2874 AFB00020 */  sw         $s0, 0x20($sp)
/* 88C38 800D2878 00808021 */  addu       $s0, $a0, $zero
/* 88C3C 800D287C AFBF0028 */  sw         $ra, 0x28($sp)
/* 88C40 800D2880 AFB10024 */  sw         $s1, 0x24($sp)
/* 88C44 800D2884 AE060000 */  sw         $a2, 0x0($s0)
/* 88C48 800D2888 8CC20000 */  lw         $v0, 0x0($a2)
/* 88C4C 800D288C 00A08821 */  addu       $s1, $a1, $zero
/* 88C50 800D2890 84440030 */  lh         $a0, 0x30($v0)
/* 88C54 800D2894 8C420034 */  lw         $v0, 0x34($v0)
/* 88C58 800D2898 0040F809 */  jalr       $v0
/* 88C5C 800D289C 00C42021 */   addu      $a0, $a2, $a0
/* 88C60 800D28A0 02202821 */  addu       $a1, $s1, $zero
/* 88C64 800D28A4 AE020004 */  sw         $v0, 0x4($s0)
/* 88C68 800D28A8 8C47003C */  lw         $a3, 0x3C($v0)
/* 88C6C 800D28AC 24060001 */  addiu      $a2, $zero, 0x1
/* 88C70 800D28B0 84E40048 */  lh         $a0, 0x48($a3)
/* 88C74 800D28B4 24030035 */  addiu      $v1, $zero, 0x35
/* 88C78 800D28B8 AFA30010 */  sw         $v1, 0x10($sp)
/* 88C7C 800D28BC 24030006 */  addiu      $v1, $zero, 0x6
/* 88C80 800D28C0 AFA30014 */  sw         $v1, 0x14($sp)
/* 88C84 800D28C4 00C01821 */  addu       $v1, $a2, $zero
/* 88C88 800D28C8 AFA30018 */  sw         $v1, 0x18($sp)
/* 88C8C 800D28CC 00442021 */  addu       $a0, $v0, $a0
/* 88C90 800D28D0 8CE2004C */  lw         $v0, 0x4C($a3)
/* 88C94 800D28D4 0040F809 */  jalr       $v0
/* 88C98 800D28D8 2407006A */   addiu     $a3, $zero, 0x6A
/* 88C9C 800D28DC 8E020004 */  lw         $v0, 0x4($s0)
/* 88CA0 800D28E0 3C01800D */  lui        $at, %hi(D_race_800CA890)
/* 88CA4 800D28E4 C420A890 */  lwc1       $f0, %lo(D_race_800CA890)($at)
/* 88CA8 800D28E8 3C067CF0 */  lui        $a2, (0x7CF0BDC2 >> 16)
/* 88CAC 800D28EC 34C6BDC2 */  ori        $a2, $a2, (0x7CF0BDC2 & 0xFFFF)
/* 88CB0 800D28F0 E4400034 */  swc1       $f0, 0x34($v0)
/* 88CB4 800D28F4 8E050004 */  lw         $a1, 0x4($s0)
/* 88CB8 800D28F8 0C016059 */  jal        func_80058164
/* 88CBC 800D28FC 26040008 */   addiu     $a0, $s0, 0x8
/* 88CC0 800D2900 8FBF0028 */  lw         $ra, 0x28($sp)
/* 88CC4 800D2904 8FB10024 */  lw         $s1, 0x24($sp)
/* 88CC8 800D2908 8FB00020 */  lw         $s0, 0x20($sp)
/* 88CCC 800D290C 03E00008 */  jr         $ra
/* 88CD0 800D2910 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800D2914
/* 88CD4 800D2914 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 88CD8 800D2918 AFBF0010 */  sw         $ra, 0x10($sp)
/* 88CDC 800D291C 8C840004 */  lw         $a0, 0x4($a0)
/* 88CE0 800D2920 0C01543D */  jal        func_800550F4
/* 88CE4 800D2924 00002821 */   addu      $a1, $zero, $zero
/* 88CE8 800D2928 8FBF0010 */  lw         $ra, 0x10($sp)
/* 88CEC 800D292C 03E00008 */  jr         $ra
/* 88CF0 800D2930 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D2934
/* 88CF4 800D2934 90A20000 */  lbu        $v0, 0x0($a1)
/* 88CF8 800D2938 A08200D4 */  sb         $v0, 0xD4($a0)
/* 88CFC 800D293C 90A20001 */  lbu        $v0, 0x1($a1)
/* 88D00 800D2940 A08200D5 */  sb         $v0, 0xD5($a0)
/* 88D04 800D2944 90A20002 */  lbu        $v0, 0x2($a1)
/* 88D08 800D2948 A08200D6 */  sb         $v0, 0xD6($a0)
/* 88D0C 800D294C 90A20003 */  lbu        $v0, 0x3($a1)
/* 88D10 800D2950 03E00008 */  jr         $ra
/* 88D14 800D2954 A08200D7 */   sb        $v0, 0xD7($a0)

glabel func_race_800D2958
/* 88D18 800D2958 24020009 */  addiu      $v0, $zero, 0x9
/* 88D1C 800D295C A0820098 */  sb         $v0, 0x98($a0)
/* 88D20 800D2960 8CA20000 */  lw         $v0, 0x0($a1)
/* 88D24 800D2964 AC82009C */  sw         $v0, 0x9C($a0)
/* 88D28 800D2968 8CA20004 */  lw         $v0, 0x4($a1)
/* 88D2C 800D296C AC8200B0 */  sw         $v0, 0xB0($a0)
/* 88D30 800D2970 24420002 */  addiu      $v0, $v0, 0x2
/* 88D34 800D2974 AC8200B4 */  sw         $v0, 0xB4($a0)
/* 88D38 800D2978 8CA20008 */  lw         $v0, 0x8($a1)
/* 88D3C 800D297C AC8200B8 */  sw         $v0, 0xB8($a0)
/* 88D40 800D2980 8CA20010 */  lw         $v0, 0x10($a1)
/* 88D44 800D2984 AC8200BC */  sw         $v0, 0xBC($a0)
/* 88D48 800D2988 C4A00014 */  lwc1       $f0, 0x14($a1)
/* 88D4C 800D298C E48000CC */  swc1       $f0, 0xCC($a0)
/* 88D50 800D2990 C4A00018 */  lwc1       $f0, 0x18($a1)
/* 88D54 800D2994 E48000D0 */  swc1       $f0, 0xD0($a0)
/* 88D58 800D2998 8CA2000C */  lw         $v0, 0xC($a1)
/* 88D5C 800D299C 10400004 */  beqz       $v0, .Lrace_800D29B0
/* 88D60 800D29A0 00000000 */   nop
/* 88D64 800D29A4 90820098 */  lbu        $v0, 0x98($a0)
/* 88D68 800D29A8 34420004 */  ori        $v0, $v0, 0x4
/* 88D6C 800D29AC A0820098 */  sb         $v0, 0x98($a0)
.Lrace_800D29B0:
/* 88D70 800D29B0 8C83009C */  lw         $v1, 0x9C($a0)
/* 88D74 800D29B4 8C8200B0 */  lw         $v0, 0xB0($a0)
/* 88D78 800D29B8 0062001B */  divu       $zero, $v1, $v0
/* 88D7C 800D29BC 14400002 */  bnez       $v0, .Lrace_800D29C8
/* 88D80 800D29C0 00000000 */   nop
/* 88D84 800D29C4 0007000D */  break      7
.Lrace_800D29C8:
/* 88D88 800D29C8 00001812 */  mflo       $v1
/* 88D8C 800D29CC 8C8200B0 */  lw         $v0, 0xB0($a0)
/* 88D90 800D29D0 00000000 */  nop
/* 88D94 800D29D4 00620018 */  mult       $v1, $v0
/* 88D98 800D29D8 8C82009C */  lw         $v0, 0x9C($a0)
/* 88D9C 800D29DC 00002812 */  mflo       $a1
/* 88DA0 800D29E0 10A20002 */  beq        $a1, $v0, .Lrace_800D29EC
/* 88DA4 800D29E4 AC8300A0 */   sw        $v1, 0xA0($a0)
/* 88DA8 800D29E8 AC85009C */  sw         $a1, 0x9C($a0)
.Lrace_800D29EC:
/* 88DAC 800D29EC 8C8200B4 */  lw         $v0, 0xB4($a0)
/* 88DB0 800D29F0 00003821 */  addu       $a3, $zero, $zero
/* 88DB4 800D29F4 AC8000A4 */  sw         $zero, 0xA4($a0)
/* 88DB8 800D29F8 AC8000A8 */  sw         $zero, 0xA8($a0)
/* 88DBC 800D29FC 1040001A */  beqz       $v0, .Lrace_800D2A68
/* 88DC0 800D2A00 AC8000AC */   sw        $zero, 0xAC($a0)
/* 88DC4 800D2A04 00E04021 */  addu       $t0, $a3, $zero
/* 88DC8 800D2A08 00803021 */  addu       $a2, $a0, $zero
.Lrace_800D2A0C:
/* 88DCC 800D2A0C ACC000D8 */  sw         $zero, 0xD8($a2)
/* 88DD0 800D2A10 ACC00118 */  sw         $zero, 0x118($a2)
/* 88DD4 800D2A14 ACC0011C */  sw         $zero, 0x11C($a2)
/* 88DD8 800D2A18 ACC00120 */  sw         $zero, 0x120($a2)
/* 88DDC 800D2A1C 8C8200B8 */  lw         $v0, 0xB8($a0)
/* 88DE0 800D2A20 1040000B */  beqz       $v0, .Lrace_800D2A50
/* 88DE4 800D2A24 00002821 */   addu      $a1, $zero, $zero
/* 88DE8 800D2A28 01001821 */  addu       $v1, $t0, $zero
.Lrace_800D2A2C:
/* 88DEC 800D2A2C 00831021 */  addu       $v0, $a0, $v1
/* 88DF0 800D2A30 AC4000DC */  sw         $zero, 0xDC($v0)
/* 88DF4 800D2A34 AC4000E0 */  sw         $zero, 0xE0($v0)
/* 88DF8 800D2A38 AC4000E4 */  sw         $zero, 0xE4($v0)
/* 88DFC 800D2A3C 8C8200B8 */  lw         $v0, 0xB8($a0)
/* 88E00 800D2A40 24A50001 */  addiu      $a1, $a1, 0x1
/* 88E04 800D2A44 00A2102B */  sltu       $v0, $a1, $v0
/* 88E08 800D2A48 1440FFF8 */  bnez       $v0, .Lrace_800D2A2C
/* 88E0C 800D2A4C 2463000C */   addiu     $v1, $v1, 0xC
.Lrace_800D2A50:
/* 88E10 800D2A50 2508004C */  addiu      $t0, $t0, 0x4C
/* 88E14 800D2A54 8C8200B4 */  lw         $v0, 0xB4($a0)
/* 88E18 800D2A58 24E70001 */  addiu      $a3, $a3, 0x1
/* 88E1C 800D2A5C 00E2102B */  sltu       $v0, $a3, $v0
/* 88E20 800D2A60 1440FFEA */  bnez       $v0, .Lrace_800D2A0C
/* 88E24 800D2A64 24C6004C */   addiu     $a2, $a2, 0x4C
.Lrace_800D2A68:
/* 88E28 800D2A68 03E00008 */  jr         $ra
/* 88E2C 800D2A6C 00000000 */   nop

glabel func_race_800D2A70
/* 88E30 800D2A70 90820098 */  lbu        $v0, 0x98($a0)
/* 88E34 800D2A74 34420002 */  ori        $v0, $v0, 0x2
/* 88E38 800D2A78 03E00008 */  jr         $ra
/* 88E3C 800D2A7C A0820098 */   sb        $v0, 0x98($a0)

glabel func_race_800D2A80
/* 88E40 800D2A80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 88E44 800D2A84 AFB00010 */  sw         $s0, 0x10($sp)
/* 88E48 800D2A88 00808021 */  addu       $s0, $a0, $zero
/* 88E4C 800D2A8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 88E50 800D2A90 92040098 */  lbu        $a0, 0x98($s0)
/* 88E54 800D2A94 30820001 */  andi       $v0, $a0, 0x1
/* 88E58 800D2A98 10400015 */  beqz       $v0, .Lrace_800D2AF0
/* 88E5C 800D2A9C 30820008 */   andi      $v0, $a0, 0x8
/* 88E60 800D2AA0 14400013 */  bnez       $v0, .Lrace_800D2AF0
/* 88E64 800D2AA4 3C031200 */   lui       $v1, (0x12000000 >> 16)
/* 88E68 800D2AA8 8E020098 */  lw         $v0, 0x98($s0)
/* 88E6C 800D2AAC 00431024 */  and        $v0, $v0, $v1
/* 88E70 800D2AB0 3C030200 */  lui        $v1, (0x2000000 >> 16)
/* 88E74 800D2AB4 14430002 */  bne        $v0, $v1, .Lrace_800D2AC0
/* 88E78 800D2AB8 34820010 */   ori       $v0, $a0, 0x10
/* 88E7C 800D2ABC A2020098 */  sb         $v0, 0x98($s0)
.Lrace_800D2AC0:
/* 88E80 800D2AC0 92020098 */  lbu        $v0, 0x98($s0)
/* 88E84 800D2AC4 30420002 */  andi       $v0, $v0, 0x2
/* 88E88 800D2AC8 10400009 */  beqz       $v0, .Lrace_800D2AF0
/* 88E8C 800D2ACC 00000000 */   nop
/* 88E90 800D2AD0 0C034AC0 */  jal        func_race_800D2B00
/* 88E94 800D2AD4 02002021 */   addu      $a0, $s0, $zero
/* 88E98 800D2AD8 92020098 */  lbu        $v0, 0x98($s0)
/* 88E9C 800D2ADC 30420001 */  andi       $v0, $v0, 0x1
/* 88EA0 800D2AE0 10400003 */  beqz       $v0, .Lrace_800D2AF0
/* 88EA4 800D2AE4 00000000 */   nop
/* 88EA8 800D2AE8 0C034C96 */  jal        func_race_800D3258
/* 88EAC 800D2AEC 02002021 */   addu      $a0, $s0, $zero
.Lrace_800D2AF0:
/* 88EB0 800D2AF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 88EB4 800D2AF4 8FB00010 */  lw         $s0, 0x10($sp)
/* 88EB8 800D2AF8 03E00008 */  jr         $ra
/* 88EBC 800D2AFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D2B00
/* 88EC0 800D2B00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 88EC4 800D2B04 00804021 */  addu       $t0, $a0, $zero
/* 88EC8 800D2B08 00005821 */  addu       $t3, $zero, $zero
/* 88ECC 800D2B0C 8D0600A8 */  lw         $a2, 0xA8($t0)
/* 88ED0 800D2B10 8D0700B4 */  lw         $a3, 0xB4($t0)
/* 88ED4 800D2B14 00061080 */  sll        $v0, $a2, 2
/* 88ED8 800D2B18 00461021 */  addu       $v0, $v0, $a2
/* 88EDC 800D2B1C 00021080 */  sll        $v0, $v0, 2
/* 88EE0 800D2B20 00461023 */  subu       $v0, $v0, $a2
/* 88EE4 800D2B24 00021080 */  sll        $v0, $v0, 2
/* 88EE8 800D2B28 00482021 */  addu       $a0, $v0, $t0
.Lrace_800D2B2C:
/* 88EEC 800D2B2C 24C60001 */  addiu      $a2, $a2, 0x1
/* 88EF0 800D2B30 14C70003 */  bne        $a2, $a3, .Lrace_800D2B40
/* 88EF4 800D2B34 2484004C */   addiu     $a0, $a0, 0x4C
/* 88EF8 800D2B38 01002021 */  addu       $a0, $t0, $zero
/* 88EFC 800D2B3C 00003021 */  addu       $a2, $zero, $zero
.Lrace_800D2B40:
/* 88F00 800D2B40 8C8200D8 */  lw         $v0, 0xD8($a0)
/* 88F04 800D2B44 8D0300A4 */  lw         $v1, 0xA4($t0)
/* 88F08 800D2B48 14C3FFF8 */  bne        $a2, $v1, .Lrace_800D2B2C
/* 88F0C 800D2B4C 01625821 */   addu      $t3, $t3, $v0
/* 88F10 800D2B50 91030098 */  lbu        $v1, 0x98($t0)
/* 88F14 800D2B54 30620010 */  andi       $v0, $v1, 0x10
/* 88F18 800D2B58 1440000A */  bnez       $v0, .Lrace_800D2B84
/* 88F1C 800D2B5C 00000000 */   nop
/* 88F20 800D2B60 8D02009C */  lw         $v0, 0x9C($t0)
/* 88F24 800D2B64 004B102B */  sltu       $v0, $v0, $t3
/* 88F28 800D2B68 10400002 */  beqz       $v0, .Lrace_800D2B74
/* 88F2C 800D2B6C 34620010 */   ori       $v0, $v1, 0x10
/* 88F30 800D2B70 A1020098 */  sb         $v0, 0x98($t0)
.Lrace_800D2B74:
/* 88F34 800D2B74 91020098 */  lbu        $v0, 0x98($t0)
/* 88F38 800D2B78 30420010 */  andi       $v0, $v0, 0x10
/* 88F3C 800D2B7C 104000CD */  beqz       $v0, .Lrace_800D2EB4
/* 88F40 800D2B80 00000000 */   nop
.Lrace_800D2B84:
/* 88F44 800D2B84 10A000CB */  beqz       $a1, .Lrace_800D2EB4
/* 88F48 800D2B88 00000000 */   nop
/* 88F4C 800D2B8C 8D0300A0 */  lw         $v1, 0xA0($t0)
/* 88F50 800D2B90 0065102B */  sltu       $v0, $v1, $a1
/* 88F54 800D2B94 10400003 */  beqz       $v0, .Lrace_800D2BA4
/* 88F58 800D2B98 00603821 */   addu      $a3, $v1, $zero
/* 88F5C 800D2B9C 08034AEB */  j          .Lrace_800D2BAC
/* 88F60 800D2BA0 00A72823 */   subu      $a1, $a1, $a3
.Lrace_800D2BA4:
/* 88F64 800D2BA4 00A03821 */  addu       $a3, $a1, $zero
/* 88F68 800D2BA8 00002821 */  addu       $a1, $zero, $zero
.Lrace_800D2BAC:
/* 88F6C 800D2BAC 8D0200A8 */  lw         $v0, 0xA8($t0)
/* 88F70 800D2BB0 8D0300B4 */  lw         $v1, 0xB4($t0)
/* 88F74 800D2BB4 24420001 */  addiu      $v0, $v0, 0x1
/* 88F78 800D2BB8 0043001B */  divu       $zero, $v0, $v1
/* 88F7C 800D2BBC 14600002 */  bnez       $v1, .Lrace_800D2BC8
/* 88F80 800D2BC0 00000000 */   nop
/* 88F84 800D2BC4 0007000D */  break      7
.Lrace_800D2BC8:
/* 88F88 800D2BC8 00004810 */  mfhi       $t1
/* 88F8C 800D2BCC 10E000AE */  beqz       $a3, .Lrace_800D2E88
/* 88F90 800D2BD0 00091080 */   sll       $v0, $t1, 2
/* 88F94 800D2BD4 00491021 */  addu       $v0, $v0, $t1
/* 88F98 800D2BD8 00021080 */  sll        $v0, $v0, 2
/* 88F9C 800D2BDC 00491023 */  subu       $v0, $v0, $t1
/* 88FA0 800D2BE0 00021080 */  sll        $v0, $v0, 2
/* 88FA4 800D2BE4 01022021 */  addu       $a0, $t0, $v0
/* 88FA8 800D2BE8 8C8300D8 */  lw         $v1, 0xD8($a0)
/* 88FAC 800D2BEC 00E3102B */  sltu       $v0, $a3, $v1
/* 88FB0 800D2BF0 14400012 */  bnez       $v0, .Lrace_800D2C3C
/* 88FB4 800D2BF4 00005821 */   addu      $t3, $zero, $zero
/* 88FB8 800D2BF8 00E33823 */  subu       $a3, $a3, $v1
/* 88FBC 800D2BFC AC8000D8 */  sw         $zero, 0xD8($a0)
/* 88FC0 800D2C00 8D0200A8 */  lw         $v0, 0xA8($t0)
/* 88FC4 800D2C04 8D0300B4 */  lw         $v1, 0xB4($t0)
/* 88FC8 800D2C08 24420001 */  addiu      $v0, $v0, 0x1
/* 88FCC 800D2C0C 14430002 */  bne        $v0, $v1, .Lrace_800D2C18
/* 88FD0 800D2C10 AD0200A8 */   sw        $v0, 0xA8($t0)
/* 88FD4 800D2C14 AD0000A8 */  sw         $zero, 0xA8($t0)
.Lrace_800D2C18:
/* 88FD8 800D2C18 8D0200A8 */  lw         $v0, 0xA8($t0)
/* 88FDC 800D2C1C 8D0300B4 */  lw         $v1, 0xB4($t0)
/* 88FE0 800D2C20 24420001 */  addiu      $v0, $v0, 0x1
/* 88FE4 800D2C24 0043001B */  divu       $zero, $v0, $v1
/* 88FE8 800D2C28 14600002 */  bnez       $v1, .Lrace_800D2C34
/* 88FEC 800D2C2C 00000000 */   nop
/* 88FF0 800D2C30 0007000D */  break      7
.Lrace_800D2C34:
/* 88FF4 800D2C34 00004810 */  mfhi       $t1
/* 88FF8 800D2C38 00005821 */  addu       $t3, $zero, $zero
.Lrace_800D2C3C:
/* 88FFC 800D2C3C 8D0600A8 */  lw         $a2, 0xA8($t0)
/* 89000 800D2C40 8D0A00B4 */  lw         $t2, 0xB4($t0)
/* 89004 800D2C44 00061080 */  sll        $v0, $a2, 2
/* 89008 800D2C48 00461021 */  addu       $v0, $v0, $a2
/* 8900C 800D2C4C 00021080 */  sll        $v0, $v0, 2
/* 89010 800D2C50 00461023 */  subu       $v0, $v0, $a2
/* 89014 800D2C54 00021080 */  sll        $v0, $v0, 2
/* 89018 800D2C58 00482021 */  addu       $a0, $v0, $t0
.Lrace_800D2C5C:
/* 8901C 800D2C5C 24C60001 */  addiu      $a2, $a2, 0x1
/* 89020 800D2C60 14CA0003 */  bne        $a2, $t2, .Lrace_800D2C70
/* 89024 800D2C64 2484004C */   addiu     $a0, $a0, 0x4C
/* 89028 800D2C68 01002021 */  addu       $a0, $t0, $zero
/* 8902C 800D2C6C 00003021 */  addu       $a2, $zero, $zero
.Lrace_800D2C70:
/* 89030 800D2C70 8C8200D8 */  lw         $v0, 0xD8($a0)
/* 89034 800D2C74 8D0300A4 */  lw         $v1, 0xA4($t0)
/* 89038 800D2C78 14C3FFF8 */  bne        $a2, $v1, .Lrace_800D2C5C
/* 8903C 800D2C7C 01625821 */   addu      $t3, $t3, $v0
/* 89040 800D2C80 10E00081 */  beqz       $a3, .Lrace_800D2E88
/* 89044 800D2C84 00000000 */   nop
/* 89048 800D2C88 1160007F */  beqz       $t3, .Lrace_800D2E88
/* 8904C 800D2C8C 00091080 */   sll       $v0, $t1, 2
/* 89050 800D2C90 00491021 */  addu       $v0, $v0, $t1
/* 89054 800D2C94 00021080 */  sll        $v0, $v0, 2
/* 89058 800D2C98 00491023 */  subu       $v0, $v0, $t1
/* 8905C 800D2C9C 00021080 */  sll        $v0, $v0, 2
/* 89060 800D2CA0 01022021 */  addu       $a0, $t0, $v0
/* 89064 800D2CA4 8C8300D8 */  lw         $v1, 0xD8($a0)
/* 89068 800D2CA8 0067102B */  sltu       $v0, $v1, $a3
/* 8906C 800D2CAC 54400001 */  bnel       $v0, $zero, .Lrace_800D2CB4
/* 89070 800D2CB0 2467FFFF */   addiu     $a3, $v1, -0x1
.Lrace_800D2CB4:
/* 89074 800D2CB4 44870000 */  mtc1       $a3, $f0
/* 89078 800D2CB8 46800020 */  cvt.s.w    $f0, $f0
/* 8907C 800D2CBC 44831000 */  mtc1       $v1, $f2
/* 89080 800D2CC0 468010A0 */  cvt.s.w    $f2, $f2
/* 89084 800D2CC4 46020203 */  div.s      $f8, $f0, $f2
/* 89088 800D2CC8 00671023 */  subu       $v0, $v1, $a3
/* 8908C 800D2CCC AC8200D8 */  sw         $v0, 0xD8($a0)
/* 89090 800D2CD0 00003021 */  addu       $a2, $zero, $zero
/* 89094 800D2CD4 00805021 */  addu       $t2, $a0, $zero
/* 89098 800D2CD8 00C03821 */  addu       $a3, $a2, $zero
.Lrace_800D2CDC:
/* 8909C 800D2CDC 8D0200B8 */  lw         $v0, 0xB8($t0)
/* 890A0 800D2CE0 00C2102B */  sltu       $v0, $a2, $v0
/* 890A4 800D2CE4 10400034 */  beqz       $v0, .Lrace_800D2DB8
/* 890A8 800D2CE8 01472021 */   addu      $a0, $t2, $a3
/* 890AC 800D2CEC 248400DC */  addiu      $a0, $a0, 0xDC
/* 890B0 800D2CF0 8D0300A8 */  lw         $v1, 0xA8($t0)
/* 890B4 800D2CF4 C4860000 */  lwc1       $f6, 0x0($a0)
/* 890B8 800D2CF8 00031080 */  sll        $v0, $v1, 2
/* 890BC 800D2CFC 00431021 */  addu       $v0, $v0, $v1
/* 890C0 800D2D00 00021080 */  sll        $v0, $v0, 2
/* 890C4 800D2D04 00431023 */  subu       $v0, $v0, $v1
/* 890C8 800D2D08 00021080 */  sll        $v0, $v0, 2
/* 890CC 800D2D0C 00481021 */  addu       $v0, $v0, $t0
/* 890D0 800D2D10 00471021 */  addu       $v0, $v0, $a3
/* 890D4 800D2D14 244200DC */  addiu      $v0, $v0, 0xDC
/* 890D8 800D2D18 C4400000 */  lwc1       $f0, 0x0($v0)
/* 890DC 800D2D1C 46003181 */  sub.s      $f6, $f6, $f0
/* 890E0 800D2D20 E7A60000 */  swc1       $f6, 0x0($sp)
/* 890E4 800D2D24 46083182 */  mul.s      $f6, $f6, $f8
/* 890E8 800D2D28 C4840004 */  lwc1       $f4, 0x4($a0)
/* 890EC 800D2D2C C4400004 */  lwc1       $f0, 0x4($v0)
/* 890F0 800D2D30 46002101 */  sub.s      $f4, $f4, $f0
/* 890F4 800D2D34 E7A40004 */  swc1       $f4, 0x4($sp)
/* 890F8 800D2D38 46082102 */  mul.s      $f4, $f4, $f8
/* 890FC 800D2D3C C4820008 */  lwc1       $f2, 0x8($a0)
/* 89100 800D2D40 C4400008 */  lwc1       $f0, 0x8($v0)
/* 89104 800D2D44 46001081 */  sub.s      $f2, $f2, $f0
/* 89108 800D2D48 E7A20008 */  swc1       $f2, 0x8($sp)
/* 8910C 800D2D4C 8D0300A8 */  lw         $v1, 0xA8($t0)
/* 89110 800D2D50 46081082 */  mul.s      $f2, $f2, $f8
/* 89114 800D2D54 E7A60010 */  swc1       $f6, 0x10($sp)
/* 89118 800D2D58 00031080 */  sll        $v0, $v1, 2
/* 8911C 800D2D5C 00431021 */  addu       $v0, $v0, $v1
/* 89120 800D2D60 00021080 */  sll        $v0, $v0, 2
/* 89124 800D2D64 00431023 */  subu       $v0, $v0, $v1
/* 89128 800D2D68 00021080 */  sll        $v0, $v0, 2
/* 8912C 800D2D6C 00481021 */  addu       $v0, $v0, $t0
/* 89130 800D2D70 00471021 */  addu       $v0, $v0, $a3
/* 89134 800D2D74 244200DC */  addiu      $v0, $v0, 0xDC
/* 89138 800D2D78 E7A40014 */  swc1       $f4, 0x14($sp)
/* 8913C 800D2D7C E7A20018 */  swc1       $f2, 0x18($sp)
/* 89140 800D2D80 C4400000 */  lwc1       $f0, 0x0($v0)
/* 89144 800D2D84 46060000 */  add.s      $f0, $f0, $f6
/* 89148 800D2D88 E4400000 */  swc1       $f0, 0x0($v0)
/* 8914C 800D2D8C C4400004 */  lwc1       $f0, 0x4($v0)
/* 89150 800D2D90 C7A20014 */  lwc1       $f2, 0x14($sp)
/* 89154 800D2D94 46020000 */  add.s      $f0, $f0, $f2
/* 89158 800D2D98 C4420008 */  lwc1       $f2, 0x8($v0)
/* 8915C 800D2D9C E4400004 */  swc1       $f0, 0x4($v0)
/* 89160 800D2DA0 C7A00018 */  lwc1       $f0, 0x18($sp)
/* 89164 800D2DA4 46001080 */  add.s      $f2, $f2, $f0
/* 89168 800D2DA8 24C60001 */  addiu      $a2, $a2, 0x1
/* 8916C 800D2DAC 24E7000C */  addiu      $a3, $a3, 0xC
/* 89170 800D2DB0 08034B37 */  j          .Lrace_800D2CDC
/* 89174 800D2DB4 E4420008 */   swc1      $f2, 0x8($v0)
.Lrace_800D2DB8:
/* 89178 800D2DB8 00091880 */  sll        $v1, $t1, 2
/* 8917C 800D2DBC 00691821 */  addu       $v1, $v1, $t1
/* 89180 800D2DC0 00031880 */  sll        $v1, $v1, 2
/* 89184 800D2DC4 00691823 */  subu       $v1, $v1, $t1
/* 89188 800D2DC8 00031880 */  sll        $v1, $v1, 2
/* 8918C 800D2DCC 00681821 */  addu       $v1, $v1, $t0
/* 89190 800D2DD0 24630118 */  addiu      $v1, $v1, 0x118
/* 89194 800D2DD4 8D0400A8 */  lw         $a0, 0xA8($t0)
/* 89198 800D2DD8 C4640000 */  lwc1       $f4, 0x0($v1)
/* 8919C 800D2DDC 00041080 */  sll        $v0, $a0, 2
/* 891A0 800D2DE0 00441021 */  addu       $v0, $v0, $a0
/* 891A4 800D2DE4 00021080 */  sll        $v0, $v0, 2
/* 891A8 800D2DE8 00441023 */  subu       $v0, $v0, $a0
/* 891AC 800D2DEC 00021080 */  sll        $v0, $v0, 2
/* 891B0 800D2DF0 00481021 */  addu       $v0, $v0, $t0
/* 891B4 800D2DF4 24420118 */  addiu      $v0, $v0, 0x118
/* 891B8 800D2DF8 C4400000 */  lwc1       $f0, 0x0($v0)
/* 891BC 800D2DFC 46002101 */  sub.s      $f4, $f4, $f0
/* 891C0 800D2E00 E7A40000 */  swc1       $f4, 0x0($sp)
/* 891C4 800D2E04 46082102 */  mul.s      $f4, $f4, $f8
/* 891C8 800D2E08 C4660004 */  lwc1       $f6, 0x4($v1)
/* 891CC 800D2E0C C4400004 */  lwc1       $f0, 0x4($v0)
/* 891D0 800D2E10 46003181 */  sub.s      $f6, $f6, $f0
/* 891D4 800D2E14 E7A60004 */  swc1       $f6, 0x4($sp)
/* 891D8 800D2E18 46083182 */  mul.s      $f6, $f6, $f8
/* 891DC 800D2E1C C4620008 */  lwc1       $f2, 0x8($v1)
/* 891E0 800D2E20 C4400008 */  lwc1       $f0, 0x8($v0)
/* 891E4 800D2E24 46001081 */  sub.s      $f2, $f2, $f0
/* 891E8 800D2E28 E7A20008 */  swc1       $f2, 0x8($sp)
/* 891EC 800D2E2C 8D0300A8 */  lw         $v1, 0xA8($t0)
/* 891F0 800D2E30 46081082 */  mul.s      $f2, $f2, $f8
/* 891F4 800D2E34 E7A40010 */  swc1       $f4, 0x10($sp)
/* 891F8 800D2E38 00031080 */  sll        $v0, $v1, 2
/* 891FC 800D2E3C 00431021 */  addu       $v0, $v0, $v1
/* 89200 800D2E40 00021080 */  sll        $v0, $v0, 2
/* 89204 800D2E44 00431023 */  subu       $v0, $v0, $v1
/* 89208 800D2E48 00021080 */  sll        $v0, $v0, 2
/* 8920C 800D2E4C 00481021 */  addu       $v0, $v0, $t0
/* 89210 800D2E50 24420118 */  addiu      $v0, $v0, 0x118
/* 89214 800D2E54 E7A60014 */  swc1       $f6, 0x14($sp)
/* 89218 800D2E58 E7A20018 */  swc1       $f2, 0x18($sp)
/* 8921C 800D2E5C C4400000 */  lwc1       $f0, 0x0($v0)
/* 89220 800D2E60 46040000 */  add.s      $f0, $f0, $f4
/* 89224 800D2E64 E4400000 */  swc1       $f0, 0x0($v0)
/* 89228 800D2E68 C4400004 */  lwc1       $f0, 0x4($v0)
/* 8922C 800D2E6C C7A20014 */  lwc1       $f2, 0x14($sp)
/* 89230 800D2E70 46020000 */  add.s      $f0, $f0, $f2
/* 89234 800D2E74 E4400004 */  swc1       $f0, 0x4($v0)
/* 89238 800D2E78 C4400008 */  lwc1       $f0, 0x8($v0)
/* 8923C 800D2E7C C7A20018 */  lwc1       $f2, 0x18($sp)
/* 89240 800D2E80 46020000 */  add.s      $f0, $f0, $f2
/* 89244 800D2E84 E4400008 */  swc1       $f0, 0x8($v0)
.Lrace_800D2E88:
/* 89248 800D2E88 91020098 */  lbu        $v0, 0x98($t0)
/* 8924C 800D2E8C 30420002 */  andi       $v0, $v0, 0x2
/* 89250 800D2E90 1040FF3C */  beqz       $v0, .Lrace_800D2B84
/* 89254 800D2E94 00000000 */   nop
/* 89258 800D2E98 8D0300A8 */  lw         $v1, 0xA8($t0)
/* 8925C 800D2E9C 8D0200A4 */  lw         $v0, 0xA4($t0)
/* 89260 800D2EA0 50620004 */  beql       $v1, $v0, .Lrace_800D2EB4
/* 89264 800D2EA4 A1000098 */   sb        $zero, 0x98($t0)
/* 89268 800D2EA8 1560FF36 */  bnez       $t3, .Lrace_800D2B84
/* 8926C 800D2EAC 00000000 */   nop
/* 89270 800D2EB0 A1000098 */  sb         $zero, 0x98($t0)
.Lrace_800D2EB4:
/* 89274 800D2EB4 03E00008 */  jr         $ra
/* 89278 800D2EB8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D2EBC
/* 8927C 800D2EBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 89280 800D2EC0 AFA70024 */  sw         $a3, 0x24($sp)
/* 89284 800D2EC4 C7A00024 */  lwc1       $f0, 0x24($sp)
/* 89288 800D2EC8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8928C 800D2ECC E48000C0 */  swc1       $f0, 0xC0($a0)
/* 89290 800D2ED0 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 89294 800D2ED4 E48000C4 */  swc1       $f0, 0xC4($a0)
/* 89298 800D2ED8 C7A0002C */  lwc1       $f0, 0x2C($sp)
/* 8929C 800D2EDC 0C034BBC */  jal        func_race_800D2EF0
/* 892A0 800D2EE0 E48000C8 */   swc1      $f0, 0xC8($a0)
/* 892A4 800D2EE4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 892A8 800D2EE8 03E00008 */  jr         $ra
/* 892AC 800D2EEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D2EF0
/* 892B0 800D2EF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 892B4 800D2EF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 892B8 800D2EF8 00808021 */  addu       $s0, $a0, $zero
/* 892BC 800D2EFC AFB10014 */  sw         $s1, 0x14($sp)
/* 892C0 800D2F00 00A08821 */  addu       $s1, $a1, $zero
/* 892C4 800D2F04 AFBF001C */  sw         $ra, 0x1C($sp)
/* 892C8 800D2F08 AFB20018 */  sw         $s2, 0x18($sp)
/* 892CC 800D2F0C 92020098 */  lbu        $v0, 0x98($s0)
/* 892D0 800D2F10 30420008 */  andi       $v0, $v0, 0x8
/* 892D4 800D2F14 1040004B */  beqz       $v0, .Lrace_800D3044
/* 892D8 800D2F18 00C09021 */   addu      $s2, $a2, $zero
/* 892DC 800D2F1C 8E0200B8 */  lw         $v0, 0xB8($s0)
/* 892E0 800D2F20 10400026 */  beqz       $v0, .Lrace_800D2FBC
/* 892E4 800D2F24 00003821 */   addu      $a3, $zero, $zero
/* 892E8 800D2F28 00E02021 */  addu       $a0, $a3, $zero
.Lrace_800D2F2C:
/* 892EC 800D2F2C 24E70001 */  addiu      $a3, $a3, 0x1
/* 892F0 800D2F30 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 892F4 800D2F34 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 892F8 800D2F38 00031080 */  sll        $v0, $v1, 2
/* 892FC 800D2F3C 00431021 */  addu       $v0, $v0, $v1
/* 89300 800D2F40 00021080 */  sll        $v0, $v0, 2
/* 89304 800D2F44 00431023 */  subu       $v0, $v0, $v1
/* 89308 800D2F48 00021080 */  sll        $v0, $v0, 2
/* 8930C 800D2F4C 00821021 */  addu       $v0, $a0, $v0
/* 89310 800D2F50 02021021 */  addu       $v0, $s0, $v0
/* 89314 800D2F54 E44000DC */  swc1       $f0, 0xDC($v0)
/* 89318 800D2F58 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 8931C 800D2F5C C4C00004 */  lwc1       $f0, 0x4($a2)
/* 89320 800D2F60 00031080 */  sll        $v0, $v1, 2
/* 89324 800D2F64 00431021 */  addu       $v0, $v0, $v1
/* 89328 800D2F68 00021080 */  sll        $v0, $v0, 2
/* 8932C 800D2F6C 00431023 */  subu       $v0, $v0, $v1
/* 89330 800D2F70 00021080 */  sll        $v0, $v0, 2
/* 89334 800D2F74 00821021 */  addu       $v0, $a0, $v0
/* 89338 800D2F78 02021021 */  addu       $v0, $s0, $v0
/* 8933C 800D2F7C E44000E0 */  swc1       $f0, 0xE0($v0)
/* 89340 800D2F80 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 89344 800D2F84 C4C00008 */  lwc1       $f0, 0x8($a2)
/* 89348 800D2F88 24C6000C */  addiu      $a2, $a2, 0xC
/* 8934C 800D2F8C 00031080 */  sll        $v0, $v1, 2
/* 89350 800D2F90 00431021 */  addu       $v0, $v0, $v1
/* 89354 800D2F94 00021080 */  sll        $v0, $v0, 2
/* 89358 800D2F98 00431023 */  subu       $v0, $v0, $v1
/* 8935C 800D2F9C 00021080 */  sll        $v0, $v0, 2
/* 89360 800D2FA0 00821021 */  addu       $v0, $a0, $v0
/* 89364 800D2FA4 02021021 */  addu       $v0, $s0, $v0
/* 89368 800D2FA8 E44000E4 */  swc1       $f0, 0xE4($v0)
/* 8936C 800D2FAC 8E0200B8 */  lw         $v0, 0xB8($s0)
/* 89370 800D2FB0 00E2102B */  sltu       $v0, $a3, $v0
/* 89374 800D2FB4 1440FFDD */  bnez       $v0, .Lrace_800D2F2C
/* 89378 800D2FB8 2484000C */   addiu     $a0, $a0, 0xC
.Lrace_800D2FBC:
/* 8937C 800D2FBC 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 89380 800D2FC0 C60000C0 */  lwc1       $f0, 0xC0($s0)
/* 89384 800D2FC4 00031080 */  sll        $v0, $v1, 2
/* 89388 800D2FC8 00431021 */  addu       $v0, $v0, $v1
/* 8938C 800D2FCC 00021080 */  sll        $v0, $v0, 2
/* 89390 800D2FD0 00431023 */  subu       $v0, $v0, $v1
/* 89394 800D2FD4 00021080 */  sll        $v0, $v0, 2
/* 89398 800D2FD8 02021021 */  addu       $v0, $s0, $v0
/* 8939C 800D2FDC E4400118 */  swc1       $f0, 0x118($v0)
/* 893A0 800D2FE0 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 893A4 800D2FE4 C60000C4 */  lwc1       $f0, 0xC4($s0)
/* 893A8 800D2FE8 00031080 */  sll        $v0, $v1, 2
/* 893AC 800D2FEC 00431021 */  addu       $v0, $v0, $v1
/* 893B0 800D2FF0 00021080 */  sll        $v0, $v0, 2
/* 893B4 800D2FF4 00431023 */  subu       $v0, $v0, $v1
/* 893B8 800D2FF8 00021080 */  sll        $v0, $v0, 2
/* 893BC 800D2FFC 02021021 */  addu       $v0, $s0, $v0
/* 893C0 800D3000 E440011C */  swc1       $f0, 0x11C($v0)
/* 893C4 800D3004 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 893C8 800D3008 C60000C8 */  lwc1       $f0, 0xC8($s0)
/* 893CC 800D300C 00031080 */  sll        $v0, $v1, 2
/* 893D0 800D3010 00431021 */  addu       $v0, $v0, $v1
/* 893D4 800D3014 00021080 */  sll        $v0, $v0, 2
/* 893D8 800D3018 00431023 */  subu       $v0, $v0, $v1
/* 893DC 800D301C 00021080 */  sll        $v0, $v0, 2
/* 893E0 800D3020 02021021 */  addu       $v0, $s0, $v0
/* 893E4 800D3024 E4400120 */  swc1       $f0, 0x120($v0)
/* 893E8 800D3028 8E0200A4 */  lw         $v0, 0xA4($s0)
/* 893EC 800D302C 92030098 */  lbu        $v1, 0x98($s0)
/* 893F0 800D3030 24420001 */  addiu      $v0, $v0, 0x1
/* 893F4 800D3034 306300F7 */  andi       $v1, $v1, 0xF7
/* 893F8 800D3038 AE0200A4 */  sw         $v0, 0xA4($s0)
/* 893FC 800D303C 08034C90 */  j          .Lrace_800D3240
/* 89400 800D3040 A2030098 */   sb        $v1, 0x98($s0)
.Lrace_800D3044:
/* 89404 800D3044 12200079 */  beqz       $s1, .Lrace_800D322C
/* 89408 800D3048 00000000 */   nop
.Lrace_800D304C:
/* 8940C 800D304C 8E0300A0 */  lw         $v1, 0xA0($s0)
/* 89410 800D3050 2465FFFF */  addiu      $a1, $v1, -0x1
/* 89414 800D3054 00B1102B */  sltu       $v0, $a1, $s1
/* 89418 800D3058 50400003 */  beql       $v0, $zero, .Lrace_800D3068
/* 8941C 800D305C 02202821 */   addu      $a1, $s1, $zero
/* 89420 800D3060 08034C1B */  j          .Lrace_800D306C
/* 89424 800D3064 02238823 */   subu      $s1, $s1, $v1
.Lrace_800D3068:
/* 89428 800D3068 00008821 */  addu       $s1, $zero, $zero
.Lrace_800D306C:
/* 8942C 800D306C 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 89430 800D3070 00031080 */  sll        $v0, $v1, 2
/* 89434 800D3074 00431021 */  addu       $v0, $v0, $v1
/* 89438 800D3078 00021080 */  sll        $v0, $v0, 2
/* 8943C 800D307C 00431023 */  subu       $v0, $v0, $v1
/* 89440 800D3080 00021080 */  sll        $v0, $v0, 2
/* 89444 800D3084 02021021 */  addu       $v0, $s0, $v0
/* 89448 800D3088 8C4300D8 */  lw         $v1, 0xD8($v0)
/* 8944C 800D308C 02002021 */  addu       $a0, $s0, $zero
/* 89450 800D3090 00651821 */  addu       $v1, $v1, $a1
/* 89454 800D3094 0C034AC0 */  jal        func_race_800D2B00
/* 89458 800D3098 AC4300D8 */   sw        $v1, 0xD8($v0)
/* 8945C 800D309C 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 89460 800D30A0 00031080 */  sll        $v0, $v1, 2
/* 89464 800D30A4 00431021 */  addu       $v0, $v0, $v1
/* 89468 800D30A8 00021080 */  sll        $v0, $v0, 2
/* 8946C 800D30AC 00431023 */  subu       $v0, $v0, $v1
/* 89470 800D30B0 00021080 */  sll        $v0, $v0, 2
/* 89474 800D30B4 02022821 */  addu       $a1, $s0, $v0
/* 89478 800D30B8 8CA400D8 */  lw         $a0, 0xD8($a1)
/* 8947C 800D30BC 8E0300A0 */  lw         $v1, 0xA0($s0)
/* 89480 800D30C0 0083102B */  sltu       $v0, $a0, $v1
/* 89484 800D30C4 14400014 */  bnez       $v0, .Lrace_800D3118
/* 89488 800D30C8 00832023 */   subu      $a0, $a0, $v1
/* 8948C 800D30CC ACA300D8 */  sw         $v1, 0xD8($a1)
/* 89490 800D30D0 8E0200A4 */  lw         $v0, 0xA4($s0)
/* 89494 800D30D4 8E0300B4 */  lw         $v1, 0xB4($s0)
/* 89498 800D30D8 24420001 */  addiu      $v0, $v0, 0x1
/* 8949C 800D30DC 14430002 */  bne        $v0, $v1, .Lrace_800D30E8
/* 894A0 800D30E0 AE0200A4 */   sw        $v0, 0xA4($s0)
/* 894A4 800D30E4 AE0000A4 */  sw         $zero, 0xA4($s0)
.Lrace_800D30E8:
/* 894A8 800D30E8 8E0300A0 */  lw         $v1, 0xA0($s0)
/* 894AC 800D30EC 0064102B */  sltu       $v0, $v1, $a0
/* 894B0 800D30F0 54400001 */  bnel       $v0, $zero, .Lrace_800D30F8
/* 894B4 800D30F4 00602021 */   addu      $a0, $v1, $zero
.Lrace_800D30F8:
/* 894B8 800D30F8 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 894BC 800D30FC 00031080 */  sll        $v0, $v1, 2
/* 894C0 800D3100 00431021 */  addu       $v0, $v0, $v1
/* 894C4 800D3104 00021080 */  sll        $v0, $v0, 2
/* 894C8 800D3108 00431023 */  subu       $v0, $v0, $v1
/* 894CC 800D310C 00021080 */  sll        $v0, $v0, 2
/* 894D0 800D3110 02021021 */  addu       $v0, $s0, $v0
/* 894D4 800D3114 AC4400D8 */  sw         $a0, 0xD8($v0)
.Lrace_800D3118:
/* 894D8 800D3118 8E0200B8 */  lw         $v0, 0xB8($s0)
/* 894DC 800D311C 10400027 */  beqz       $v0, .Lrace_800D31BC
/* 894E0 800D3120 00003821 */   addu      $a3, $zero, $zero
/* 894E4 800D3124 02402821 */  addu       $a1, $s2, $zero
/* 894E8 800D3128 00E02021 */  addu       $a0, $a3, $zero
.Lrace_800D312C:
/* 894EC 800D312C 24E70001 */  addiu      $a3, $a3, 0x1
/* 894F0 800D3130 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 894F4 800D3134 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 894F8 800D3138 00031080 */  sll        $v0, $v1, 2
/* 894FC 800D313C 00431021 */  addu       $v0, $v0, $v1
/* 89500 800D3140 00021080 */  sll        $v0, $v0, 2
/* 89504 800D3144 00431023 */  subu       $v0, $v0, $v1
/* 89508 800D3148 00021080 */  sll        $v0, $v0, 2
/* 8950C 800D314C 00821021 */  addu       $v0, $a0, $v0
/* 89510 800D3150 02021021 */  addu       $v0, $s0, $v0
/* 89514 800D3154 E44000DC */  swc1       $f0, 0xDC($v0)
/* 89518 800D3158 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 8951C 800D315C C4A00004 */  lwc1       $f0, 0x4($a1)
/* 89520 800D3160 00031080 */  sll        $v0, $v1, 2
/* 89524 800D3164 00431021 */  addu       $v0, $v0, $v1
/* 89528 800D3168 00021080 */  sll        $v0, $v0, 2
/* 8952C 800D316C 00431023 */  subu       $v0, $v0, $v1
/* 89530 800D3170 00021080 */  sll        $v0, $v0, 2
/* 89534 800D3174 00821021 */  addu       $v0, $a0, $v0
/* 89538 800D3178 02021021 */  addu       $v0, $s0, $v0
/* 8953C 800D317C E44000E0 */  swc1       $f0, 0xE0($v0)
/* 89540 800D3180 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 89544 800D3184 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 89548 800D3188 24A5000C */  addiu      $a1, $a1, 0xC
/* 8954C 800D318C 00031080 */  sll        $v0, $v1, 2
/* 89550 800D3190 00431021 */  addu       $v0, $v0, $v1
/* 89554 800D3194 00021080 */  sll        $v0, $v0, 2
/* 89558 800D3198 00431023 */  subu       $v0, $v0, $v1
/* 8955C 800D319C 00021080 */  sll        $v0, $v0, 2
/* 89560 800D31A0 00821021 */  addu       $v0, $a0, $v0
/* 89564 800D31A4 02021021 */  addu       $v0, $s0, $v0
/* 89568 800D31A8 E44000E4 */  swc1       $f0, 0xE4($v0)
/* 8956C 800D31AC 8E0200B8 */  lw         $v0, 0xB8($s0)
/* 89570 800D31B0 00E2102B */  sltu       $v0, $a3, $v0
/* 89574 800D31B4 1440FFDD */  bnez       $v0, .Lrace_800D312C
/* 89578 800D31B8 2484000C */   addiu     $a0, $a0, 0xC
.Lrace_800D31BC:
/* 8957C 800D31BC 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 89580 800D31C0 C60000C0 */  lwc1       $f0, 0xC0($s0)
/* 89584 800D31C4 00031080 */  sll        $v0, $v1, 2
/* 89588 800D31C8 00431021 */  addu       $v0, $v0, $v1
/* 8958C 800D31CC 00021080 */  sll        $v0, $v0, 2
/* 89590 800D31D0 00431023 */  subu       $v0, $v0, $v1
/* 89594 800D31D4 00021080 */  sll        $v0, $v0, 2
/* 89598 800D31D8 02021021 */  addu       $v0, $s0, $v0
/* 8959C 800D31DC E4400118 */  swc1       $f0, 0x118($v0)
/* 895A0 800D31E0 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 895A4 800D31E4 C60000C4 */  lwc1       $f0, 0xC4($s0)
/* 895A8 800D31E8 00031080 */  sll        $v0, $v1, 2
/* 895AC 800D31EC 00431021 */  addu       $v0, $v0, $v1
/* 895B0 800D31F0 00021080 */  sll        $v0, $v0, 2
/* 895B4 800D31F4 00431023 */  subu       $v0, $v0, $v1
/* 895B8 800D31F8 00021080 */  sll        $v0, $v0, 2
/* 895BC 800D31FC 02021021 */  addu       $v0, $s0, $v0
/* 895C0 800D3200 E440011C */  swc1       $f0, 0x11C($v0)
/* 895C4 800D3204 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 895C8 800D3208 C60000C8 */  lwc1       $f0, 0xC8($s0)
/* 895CC 800D320C 00031080 */  sll        $v0, $v1, 2
/* 895D0 800D3210 00431021 */  addu       $v0, $v0, $v1
/* 895D4 800D3214 00021080 */  sll        $v0, $v0, 2
/* 895D8 800D3218 00431023 */  subu       $v0, $v0, $v1
/* 895DC 800D321C 00021080 */  sll        $v0, $v0, 2
/* 895E0 800D3220 02021021 */  addu       $v0, $s0, $v0
/* 895E4 800D3224 1620FF89 */  bnez       $s1, .Lrace_800D304C
/* 895E8 800D3228 E4400120 */   swc1      $f0, 0x120($v0)
.Lrace_800D322C:
/* 895EC 800D322C 0C034C96 */  jal        func_race_800D3258
/* 895F0 800D3230 02002021 */   addu      $a0, $s0, $zero
/* 895F4 800D3234 92020098 */  lbu        $v0, 0x98($s0)
/* 895F8 800D3238 34420020 */  ori        $v0, $v0, 0x20
/* 895FC 800D323C A2020098 */  sb         $v0, 0x98($s0)
.Lrace_800D3240:
/* 89600 800D3240 8FBF001C */  lw         $ra, 0x1C($sp)
/* 89604 800D3244 8FB20018 */  lw         $s2, 0x18($sp)
/* 89608 800D3248 8FB10014 */  lw         $s1, 0x14($sp)
/* 8960C 800D324C 8FB00010 */  lw         $s0, 0x10($sp)
/* 89610 800D3250 03E00008 */  jr         $ra
/* 89614 800D3254 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D3258
/* 89618 800D3258 27BDFF30 */  addiu      $sp, $sp, -0xD0
/* 8961C 800D325C AFB10084 */  sw         $s1, 0x84($sp)
/* 89620 800D3260 00808821 */  addu       $s1, $a0, $zero
/* 89624 800D3264 AFB40090 */  sw         $s4, 0x90($sp)
/* 89628 800D3268 0000A021 */  addu       $s4, $zero, $zero
/* 8962C 800D326C AFB7009C */  sw         $s7, 0x9C($sp)
/* 89630 800D3270 0280B821 */  addu       $s7, $s4, $zero
/* 89634 800D3274 AFBF00A4 */  sw         $ra, 0xA4($sp)
/* 89638 800D3278 AFBE00A0 */  sw         $fp, 0xA0($sp)
/* 8963C 800D327C AFB60098 */  sw         $s6, 0x98($sp)
/* 89640 800D3280 AFB50094 */  sw         $s5, 0x94($sp)
/* 89644 800D3284 AFB3008C */  sw         $s3, 0x8C($sp)
/* 89648 800D3288 AFB20088 */  sw         $s2, 0x88($sp)
/* 8964C 800D328C AFB00080 */  sw         $s0, 0x80($sp)
/* 89650 800D3290 F7BC00C8 */  sdc1       $f28, 0xC8($sp)
/* 89654 800D3294 F7BA00C0 */  sdc1       $f26, 0xC0($sp)
/* 89658 800D3298 F7B800B8 */  sdc1       $f24, 0xB8($sp)
/* 8965C 800D329C F7B600B0 */  sdc1       $f22, 0xB0($sp)
/* 89660 800D32A0 F7B400A8 */  sdc1       $f20, 0xA8($sp)
/* 89664 800D32A4 922400D7 */  lbu        $a0, 0xD7($s1)
/* 89668 800D32A8 C62200D0 */  lwc1       $f2, 0xD0($s1)
/* 8966C 800D32AC 8E2300B0 */  lw         $v1, 0xB0($s1)
/* 89670 800D32B0 922200D4 */  lbu        $v0, 0xD4($s1)
/* 89674 800D32B4 3C01800D */  lui        $at, %hi(D_race_800CA894)
/* 89678 800D32B8 C424A894 */  lwc1       $f4, %lo(D_race_800CA894)($at)
/* 8967C 800D32BC 44840000 */  mtc1       $a0, $f0
/* 89680 800D32C0 46800020 */  cvt.s.w    $f0, $f0
/* 89684 800D32C4 46040003 */  div.s      $f0, $f0, $f4
/* 89688 800D32C8 24630001 */  addiu      $v1, $v1, 0x1
/* 8968C 800D32CC 46020001 */  sub.s      $f0, $f0, $f2
/* 89690 800D32D0 A3A20010 */  sb         $v0, 0x10($sp)
/* 89694 800D32D4 922200D5 */  lbu        $v0, 0xD5($s1)
/* 89698 800D32D8 44831000 */  mtc1       $v1, $f2
/* 8969C 800D32DC 468010A0 */  cvt.s.w    $f2, $f2
/* 896A0 800D32E0 A3A20011 */  sb         $v0, 0x11($sp)
/* 896A4 800D32E4 922200D6 */  lbu        $v0, 0xD6($s1)
/* 896A8 800D32E8 46020003 */  div.s      $f0, $f0, $f2
/* 896AC 800D32EC A3A20012 */  sb         $v0, 0x12($sp)
/* 896B0 800D32F0 922200D7 */  lbu        $v0, 0xD7($s1)
/* 896B4 800D32F4 46040002 */  mul.s      $f0, $f0, $f4
/* 896B8 800D32F8 AFA00078 */  sw         $zero, 0x78($sp)
/* 896BC 800D32FC A3A20013 */  sb         $v0, 0x13($sp)
/* 896C0 800D3300 8E2300A4 */  lw         $v1, 0xA4($s1)
/* 896C4 800D3304 8E2400A8 */  lw         $a0, 0xA8($s1)
/* 896C8 800D3308 0280F021 */  addu       $fp, $s4, $zero
/* 896CC 800D330C 0083102B */  sltu       $v0, $a0, $v1
/* 896D0 800D3310 4600038D */  trunc.w.s  $f14, $f0
/* 896D4 800D3314 440A7000 */  mfc1       $t2, $f14
/* 896D8 800D3318 10400003 */  beqz       $v0, .Lrace_800D3328
/* 896DC 800D331C A3AA0077 */   sb        $t2, 0x77($sp)
/* 896E0 800D3320 08034CCD */  j          .Lrace_800D3334
/* 896E4 800D3324 00641023 */   subu      $v0, $v1, $a0
.Lrace_800D3328:
/* 896E8 800D3328 8E2200B4 */  lw         $v0, 0xB4($s1)
/* 896EC 800D332C 00431021 */  addu       $v0, $v0, $v1
/* 896F0 800D3330 00441023 */  subu       $v0, $v0, $a0
.Lrace_800D3334:
/* 896F4 800D3334 24420001 */  addiu      $v0, $v0, 0x1
/* 896F8 800D3338 AFA2007C */  sw         $v0, 0x7C($sp)
/* 896FC 800D333C 8E2300A4 */  lw         $v1, 0xA4($s1)
/* 89700 800D3340 00031080 */  sll        $v0, $v1, 2
/* 89704 800D3344 00431021 */  addu       $v0, $v0, $v1
/* 89708 800D3348 00021080 */  sll        $v0, $v0, 2
/* 8970C 800D334C 00431023 */  subu       $v0, $v0, $v1
/* 89710 800D3350 00021080 */  sll        $v0, $v0, 2
/* 89714 800D3354 02221021 */  addu       $v0, $s1, $v0
/* 89718 800D3358 C44000DC */  lwc1       $f0, 0xDC($v0)
/* 8971C 800D335C E7A00040 */  swc1       $f0, 0x40($sp)
/* 89720 800D3360 8E2300A4 */  lw         $v1, 0xA4($s1)
/* 89724 800D3364 00031080 */  sll        $v0, $v1, 2
/* 89728 800D3368 00431021 */  addu       $v0, $v0, $v1
/* 8972C 800D336C 00021080 */  sll        $v0, $v0, 2
/* 89730 800D3370 00431023 */  subu       $v0, $v0, $v1
/* 89734 800D3374 00021080 */  sll        $v0, $v0, 2
/* 89738 800D3378 02221021 */  addu       $v0, $s1, $v0
/* 8973C 800D337C C44000EC */  lwc1       $f0, 0xEC($v0)
/* 89740 800D3380 26240008 */  addiu      $a0, $s1, 0x8
/* 89744 800D3384 E7A00044 */  swc1       $f0, 0x44($sp)
/* 89748 800D3388 8E2300A4 */  lw         $v1, 0xA4($s1)
/* 8974C 800D338C 27A50040 */  addiu      $a1, $sp, 0x40
/* 89750 800D3390 00031080 */  sll        $v0, $v1, 2
/* 89754 800D3394 00431021 */  addu       $v0, $v0, $v1
/* 89758 800D3398 00021080 */  sll        $v0, $v0, 2
/* 8975C 800D339C 00431023 */  subu       $v0, $v0, $v1
/* 89760 800D33A0 00021080 */  sll        $v0, $v0, 2
/* 89764 800D33A4 02221021 */  addu       $v0, $s1, $v0
/* 89768 800D33A8 C44000FC */  lwc1       $f0, 0xFC($v0)
/* 8976C 800D33AC 00009821 */  addu       $s3, $zero, $zero
/* 89770 800D33B0 0C015962 */  jal        func_80056588
/* 89774 800D33B4 E7A00048 */   swc1      $f0, 0x48($sp)
/* 89778 800D33B8 3C01800D */  lui        $at, %hi(D_race_800CA898)
/* 8977C 800D33BC C420A898 */  lwc1       $f0, %lo(D_race_800CA898)($at)
/* 89780 800D33C0 27A50068 */  addiu      $a1, $sp, 0x68
/* 89784 800D33C4 AFA00054 */  sw         $zero, 0x54($sp)
/* 89788 800D33C8 8E230004 */  lw         $v1, 0x4($s1)
/* 8978C 800D33CC 8E2200B8 */  lw         $v0, 0xB8($s1)
/* 89790 800D33D0 46000606 */  mov.s      $f24, $f0
/* 89794 800D33D4 24420001 */  addiu      $v0, $v0, 0x1
/* 89798 800D33D8 44820000 */  mtc1       $v0, $f0
/* 8979C 800D33DC 46800020 */  cvt.s.w    $f0, $f0
/* 897A0 800D33E0 4600C683 */  div.s      $f26, $f24, $f0
/* 897A4 800D33E4 8E2200B0 */  lw         $v0, 0xB0($s1)
/* 897A8 800D33E8 8C66003C */  lw         $a2, 0x3C($v1)
/* 897AC 800D33EC 24420001 */  addiu      $v0, $v0, 0x1
/* 897B0 800D33F0 44820000 */  mtc1       $v0, $f0
/* 897B4 800D33F4 46800020 */  cvt.s.w    $f0, $f0
/* 897B8 800D33F8 4600C703 */  div.s      $f28, $f24, $f0
/* 897BC 800D33FC 84C40058 */  lh         $a0, 0x58($a2)
/* 897C0 800D3400 8CC2005C */  lw         $v0, 0x5C($a2)
/* 897C4 800D3404 0040F809 */  jalr       $v0
/* 897C8 800D3408 00642021 */   addu      $a0, $v1, $a0
.Lrace_800D340C:
/* 897CC 800D340C 8FAC007C */  lw         $t4, 0x7C($sp)
/* 897D0 800D3410 026C102B */  sltu       $v0, $s3, $t4
/* 897D4 800D3414 10400094 */  beqz       $v0, .Lrace_800D3668
/* 897D8 800D3418 24050001 */   addiu     $a1, $zero, 0x1
/* 897DC 800D341C 8E2200A4 */  lw         $v0, 0xA4($s1)
/* 897E0 800D3420 8E2300B4 */  lw         $v1, 0xB4($s1)
/* 897E4 800D3424 00531023 */  subu       $v0, $v0, $s3
/* 897E8 800D3428 00431021 */  addu       $v0, $v0, $v1
/* 897EC 800D342C 0043001B */  divu       $zero, $v0, $v1
/* 897F0 800D3430 14600002 */  bnez       $v1, .Lrace_800D343C
/* 897F4 800D3434 00000000 */   nop
/* 897F8 800D3438 0007000D */  break      7
.Lrace_800D343C:
/* 897FC 800D343C 0000B010 */  mfhi       $s6
/* 89800 800D3440 1260000F */  beqz       $s3, .Lrace_800D3480
/* 89804 800D3444 00008021 */   addu      $s0, $zero, $zero
/* 89808 800D3448 93A20013 */  lbu        $v0, 0x13($sp)
/* 8980C 800D344C 93AA0077 */  lbu        $t2, 0x77($sp)
/* 89810 800D3450 004A1023 */  subu       $v0, $v0, $t2
/* 89814 800D3454 A3A20013 */  sb         $v0, 0x13($sp)
/* 89818 800D3458 C62400CC */  lwc1       $f4, 0xCC($s1)
/* 8981C 800D345C C7A20078 */  lwc1       $f2, 0x78($sp)
/* 89820 800D3460 468010A0 */  cvt.s.w    $f2, $f2
/* 89824 800D3464 4604C101 */  sub.s      $f4, $f24, $f4
/* 89828 800D3468 C620009C */  lwc1       $f0, 0x9C($s1)
/* 8982C 800D346C 46800020 */  cvt.s.w    $f0, $f0
/* 89830 800D3470 46001083 */  div.s      $f2, $f2, $f0
/* 89834 800D3474 46041502 */  mul.s      $f20, $f2, $f4
/* 89838 800D3478 08034D22 */  j          .Lrace_800D3488
/* 8983C 800D347C 00161080 */   sll       $v0, $s6, 2
.Lrace_800D3480:
/* 89840 800D3480 4480A000 */  mtc1       $zero, $f20
/* 89844 800D3484 00161080 */  sll        $v0, $s6, 2
.Lrace_800D3488:
/* 89848 800D3488 00561021 */  addu       $v0, $v0, $s6
/* 8984C 800D348C 00021080 */  sll        $v0, $v0, 2
/* 89850 800D3490 00561023 */  subu       $v0, $v0, $s6
/* 89854 800D3494 00021080 */  sll        $v0, $v0, 2
/* 89858 800D3498 00519021 */  addu       $s2, $v0, $s1
/* 8985C 800D349C 26520118 */  addiu      $s2, $s2, 0x118
/* 89860 800D34A0 3C01800D */  lui        $at, %hi(D_race_800CA89C)
/* 89864 800D34A4 C436A89C */  lwc1       $f22, %lo(D_race_800CA89C)($at)
/* 89868 800D34A8 0040A821 */  addu       $s5, $v0, $zero
/* 8986C 800D34AC AFA00050 */  sw         $zero, 0x50($sp)
.Lrace_800D34B0:
/* 89870 800D34B0 8E2200B8 */  lw         $v0, 0xB8($s1)
/* 89874 800D34B4 0202102B */  sltu       $v0, $s0, $v0
/* 89878 800D34B8 1040005C */  beqz       $v0, .Lrace_800D362C
/* 8987C 800D34BC 2E82006A */   sltiu     $v0, $s4, 0x6A
/* 89880 800D34C0 10400054 */  beqz       $v0, .Lrace_800D3614
/* 89884 800D34C4 02351021 */   addu      $v0, $s1, $s5
/* 89888 800D34C8 8C4B00DC */  lw         $t3, 0xDC($v0)
/* 8988C 800D34CC 8C4C00E0 */  lw         $t4, 0xE0($v0)
/* 89890 800D34D0 8C4D00E4 */  lw         $t5, 0xE4($v0)
/* 89894 800D34D4 AFAB0030 */  sw         $t3, 0x30($sp)
/* 89898 800D34D8 AFAC0034 */  sw         $t4, 0x34($sp)
/* 8989C 800D34DC AFAD0038 */  sw         $t5, 0x38($sp)
/* 898A0 800D34E0 C62000CC */  lwc1       $f0, 0xCC($s1)
/* 898A4 800D34E4 46180032 */  c.eq.s     $f0, $f24
/* 898A8 800D34E8 00000000 */  nop
/* 898AC 800D34EC 4501001E */  bc1t       .Lrace_800D3568
/* 898B0 800D34F0 00000000 */   nop
/* 898B4 800D34F4 44800000 */  mtc1       $zero, $f0
/* 898B8 800D34F8 4600A032 */  c.eq.s     $f20, $f0
/* 898BC 800D34FC 00000000 */  nop
/* 898C0 800D3500 45010019 */  bc1t       .Lrace_800D3568
/* 898C4 800D3504 00000000 */   nop
/* 898C8 800D3508 C6400000 */  lwc1       $f0, 0x0($s2)
/* 898CC 800D350C C7A80030 */  lwc1       $f8, 0x30($sp)
/* 898D0 800D3510 46080001 */  sub.s      $f0, $f0, $f8
/* 898D4 800D3514 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 898D8 800D3518 46140302 */  mul.s      $f12, $f0, $f20
/* 898DC 800D351C E7A00020 */  swc1       $f0, 0x20($sp)
/* 898E0 800D3520 C6400004 */  lwc1       $f0, 0x4($s2)
/* 898E4 800D3524 46040001 */  sub.s      $f0, $f0, $f4
/* 898E8 800D3528 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 898EC 800D352C 46140282 */  mul.s      $f10, $f0, $f20
/* 898F0 800D3530 E7A00024 */  swc1       $f0, 0x24($sp)
/* 898F4 800D3534 C6400008 */  lwc1       $f0, 0x8($s2)
/* 898F8 800D3538 46020001 */  sub.s      $f0, $f0, $f2
/* 898FC 800D353C 46140182 */  mul.s      $f6, $f0, $f20
/* 89900 800D3540 460C4200 */  add.s      $f8, $f8, $f12
/* 89904 800D3544 E7AC0058 */  swc1       $f12, 0x58($sp)
/* 89908 800D3548 E7A00028 */  swc1       $f0, 0x28($sp)
/* 8990C 800D354C 460A2100 */  add.s      $f4, $f4, $f10
/* 89910 800D3550 E7A80030 */  swc1       $f8, 0x30($sp)
/* 89914 800D3554 E7AA005C */  swc1       $f10, 0x5C($sp)
/* 89918 800D3558 46061080 */  add.s      $f2, $f2, $f6
/* 8991C 800D355C E7A40034 */  swc1       $f4, 0x34($sp)
/* 89920 800D3560 E7A60060 */  swc1       $f6, 0x60($sp)
/* 89924 800D3564 E7A20038 */  swc1       $f2, 0x38($sp)
.Lrace_800D3568:
/* 89928 800D3568 C7A60030 */  lwc1       $f6, 0x30($sp)
/* 8992C 800D356C C7A00040 */  lwc1       $f0, 0x40($sp)
/* 89930 800D3570 46003181 */  sub.s      $f6, $f6, $f0
/* 89934 800D3574 46163282 */  mul.s      $f10, $f6, $f22
/* 89938 800D3578 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 8993C 800D357C C7A00044 */  lwc1       $f0, 0x44($sp)
/* 89940 800D3580 46002101 */  sub.s      $f4, $f4, $f0
/* 89944 800D3584 46162202 */  mul.s      $f8, $f4, $f22
/* 89948 800D3588 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 8994C 800D358C C7A00048 */  lwc1       $f0, 0x48($sp)
/* 89950 800D3590 8FA30068 */  lw         $v1, 0x68($sp)
/* 89954 800D3594 46001081 */  sub.s      $f2, $f2, $f0
/* 89958 800D3598 02802821 */  addu       $a1, $s4, $zero
/* 8995C 800D359C E7A60030 */  swc1       $f6, 0x30($sp)
/* 89960 800D35A0 46161002 */  mul.s      $f0, $f2, $f22
/* 89964 800D35A4 E7A40034 */  swc1       $f4, 0x34($sp)
/* 89968 800D35A8 E7A20038 */  swc1       $f2, 0x38($sp)
/* 8996C 800D35AC E7AA0030 */  swc1       $f10, 0x30($sp)
/* 89970 800D35B0 E7A80034 */  swc1       $f8, 0x34($sp)
/* 89974 800D35B4 E7A00038 */  swc1       $f0, 0x38($sp)
/* 89978 800D35B8 8C620008 */  lw         $v0, 0x8($v1)
/* 8997C 800D35BC 27A60030 */  addiu      $a2, $sp, 0x30
/* 89980 800D35C0 84440050 */  lh         $a0, 0x50($v0)
/* 89984 800D35C4 8C420054 */  lw         $v0, 0x54($v0)
/* 89988 800D35C8 0040F809 */  jalr       $v0
/* 8998C 800D35CC 00642021 */   addu      $a0, $v1, $a0
/* 89990 800D35D0 8FA30068 */  lw         $v1, 0x68($sp)
/* 89994 800D35D4 02802821 */  addu       $a1, $s4, $zero
/* 89998 800D35D8 8C620008 */  lw         $v0, 0x8($v1)
/* 8999C 800D35DC 27A60010 */  addiu      $a2, $sp, 0x10
/* 899A0 800D35E0 84440068 */  lh         $a0, 0x68($v0)
/* 899A4 800D35E4 8C42006C */  lw         $v0, 0x6C($v0)
/* 899A8 800D35E8 0040F809 */  jalr       $v0
/* 899AC 800D35EC 00642021 */   addu      $a0, $v1, $a0
/* 899B0 800D35F0 02802821 */  addu       $a1, $s4, $zero
/* 899B4 800D35F4 8FA30068 */  lw         $v1, 0x68($sp)
/* 899B8 800D35F8 27A60050 */  addiu      $a2, $sp, 0x50
/* 899BC 800D35FC 8C620008 */  lw         $v0, 0x8($v1)
/* 899C0 800D3600 26940001 */  addiu      $s4, $s4, 0x1
/* 899C4 800D3604 84440058 */  lh         $a0, 0x58($v0)
/* 899C8 800D3608 8C42005C */  lw         $v0, 0x5C($v0)
/* 899CC 800D360C 0040F809 */  jalr       $v0
/* 899D0 800D3610 00642021 */   addu      $a0, $v1, $a0
.Lrace_800D3614:
/* 899D4 800D3614 C7A00050 */  lwc1       $f0, 0x50($sp)
/* 899D8 800D3618 461A0000 */  add.s      $f0, $f0, $f26
/* 899DC 800D361C 26B5000C */  addiu      $s5, $s5, 0xC
/* 899E0 800D3620 26100001 */  addiu      $s0, $s0, 0x1
/* 899E4 800D3624 08034D2C */  j          .Lrace_800D34B0
/* 899E8 800D3628 E7A00050 */   swc1      $f0, 0x50($sp)
.Lrace_800D362C:
/* 899EC 800D362C 00161080 */  sll        $v0, $s6, 2
/* 899F0 800D3630 00561021 */  addu       $v0, $v0, $s6
/* 899F4 800D3634 00021080 */  sll        $v0, $v0, 2
/* 899F8 800D3638 00561023 */  subu       $v0, $v0, $s6
/* 899FC 800D363C 00021080 */  sll        $v0, $v0, 2
/* 89A00 800D3640 02221021 */  addu       $v0, $s1, $v0
/* 89A04 800D3644 26730001 */  addiu      $s3, $s3, 0x1
/* 89A08 800D3648 C7A00054 */  lwc1       $f0, 0x54($sp)
/* 89A0C 800D364C 8C4200D8 */  lw         $v0, 0xD8($v0)
/* 89A10 800D3650 8FAB0078 */  lw         $t3, 0x78($sp)
/* 89A14 800D3654 461C0000 */  add.s      $f0, $f0, $f28
/* 89A18 800D3658 01625821 */  addu       $t3, $t3, $v0
/* 89A1C 800D365C AFAB0078 */  sw         $t3, 0x78($sp)
/* 89A20 800D3660 08034D03 */  j          .Lrace_800D340C
/* 89A24 800D3664 E7A00054 */   swc1      $f0, 0x54($sp)
.Lrace_800D3668:
/* 89A28 800D3668 8E230004 */  lw         $v1, 0x4($s1)
/* 89A2C 800D366C 8C62003C */  lw         $v0, 0x3C($v1)
/* 89A30 800D3670 00003021 */  addu       $a2, $zero, $zero
/* 89A34 800D3674 84440060 */  lh         $a0, 0x60($v0)
/* 89A38 800D3678 8C420064 */  lw         $v0, 0x64($v0)
/* 89A3C 800D367C 0040F809 */  jalr       $v0
/* 89A40 800D3680 00642021 */   addu      $a0, $v1, $a0
/* 89A44 800D3684 8E2300B8 */  lw         $v1, 0xB8($s1)
/* 89A48 800D3688 24020020 */  addiu      $v0, $zero, 0x20
/* 89A4C 800D368C 0043001B */  divu       $zero, $v0, $v1
/* 89A50 800D3690 14600002 */  bnez       $v1, .Lrace_800D369C
/* 89A54 800D3694 00000000 */   nop
/* 89A58 800D3698 0007000D */  break      7
.Lrace_800D369C:
/* 89A5C 800D369C 00009012 */  mflo       $s2
/* 89A60 800D36A0 8FAA007C */  lw         $t2, 0x7C($sp)
/* 89A64 800D36A4 0152102B */  sltu       $v0, $t2, $s2
/* 89A68 800D36A8 10400003 */  beqz       $v0, .Lrace_800D36B8
/* 89A6C 800D36AC 24150001 */   addiu     $s5, $zero, 0x1
/* 89A70 800D36B0 08034DB5 */  j          .Lrace_800D36D4
/* 89A74 800D36B4 01409021 */   addu      $s2, $t2, $zero
.Lrace_800D36B8:
/* 89A78 800D36B8 2642FFFF */  addiu      $v0, $s2, -0x1
/* 89A7C 800D36BC 0142001B */  divu       $zero, $t2, $v0
/* 89A80 800D36C0 14400002 */  bnez       $v0, .Lrace_800D36CC
/* 89A84 800D36C4 00000000 */   nop
/* 89A88 800D36C8 0007000D */  break      7
.Lrace_800D36CC:
/* 89A8C 800D36CC 00001012 */  mflo       $v0
/* 89A90 800D36D0 24550001 */  addiu      $s5, $v0, 0x1
.Lrace_800D36D4:
/* 89A94 800D36D4 8E230004 */  lw         $v1, 0x4($s1)
/* 89A98 800D36D8 27A5006C */  addiu      $a1, $sp, 0x6C
/* 89A9C 800D36DC 8C62003C */  lw         $v0, 0x3C($v1)
/* 89AA0 800D36E0 00009821 */  addu       $s3, $zero, $zero
/* 89AA4 800D36E4 84440068 */  lh         $a0, 0x68($v0)
/* 89AA8 800D36E8 8C42006C */  lw         $v0, 0x6C($v0)
/* 89AAC 800D36EC 0040F809 */  jalr       $v0
/* 89AB0 800D36F0 00642021 */   addu      $a0, $v1, $a0
/* 89AB4 800D36F4 2649FFFF */  addiu      $t1, $s2, -0x1
.Lrace_800D36F8:
/* 89AB8 800D36F8 0269102B */  sltu       $v0, $s3, $t1
/* 89ABC 800D36FC 10400048 */  beqz       $v0, .Lrace_800D3820
/* 89AC0 800D3700 00008021 */   addu      $s0, $zero, $zero
/* 89AC4 800D3704 8E2300B8 */  lw         $v1, 0xB8($s1)
/* 89AC8 800D3708 00171080 */  sll        $v0, $s7, 2
/* 89ACC 800D370C 2445FFFC */  addiu      $a1, $v0, -0x4
/* 89AD0 800D3710 02630018 */  mult       $s3, $v1
/* 89AD4 800D3714 00004012 */  mflo       $t0
.Lrace_800D3718:
/* 89AD8 800D3718 8E2200B8 */  lw         $v0, 0xB8($s1)
/* 89ADC 800D371C 0202102B */  sltu       $v0, $s0, $v0
/* 89AE0 800D3720 1040003D */  beqz       $v0, .Lrace_800D3818
/* 89AE4 800D3724 01101021 */   addu      $v0, $t0, $s0
/* 89AE8 800D3728 922300BB */  lbu        $v1, 0xBB($s1)
/* 89AEC 800D372C A3A2001A */  sb         $v0, 0x1A($sp)
/* 89AF0 800D3730 00623021 */  addu       $a2, $v1, $v0
/* 89AF4 800D3734 A3A60019 */  sb         $a2, 0x19($sp)
/* 89AF8 800D3738 8E2200B8 */  lw         $v0, 0xB8($s1)
/* 89AFC 800D373C 26070001 */  addiu      $a3, $s0, 0x1
/* 89B00 800D3740 00E2001B */  divu       $zero, $a3, $v0
/* 89B04 800D3744 14400002 */  bnez       $v0, .Lrace_800D3750
/* 89B08 800D3748 00000000 */   nop
/* 89B0C 800D374C 0007000D */  break      7
.Lrace_800D3750:
/* 89B10 800D3750 00001810 */  mfhi       $v1
/* 89B14 800D3754 922200BB */  lbu        $v0, 0xBB($s1)
/* 89B18 800D3758 01031821 */  addu       $v1, $t0, $v1
/* 89B1C 800D375C 00431021 */  addu       $v0, $v0, $v1
/* 89B20 800D3760 A3A2001B */  sb         $v0, 0x1B($sp)
/* 89B24 800D3764 2EE20035 */  sltiu      $v0, $s7, 0x35
/* 89B28 800D3768 1040000F */  beqz       $v0, .Lrace_800D37A8
/* 89B2C 800D376C 00000000 */   nop
/* 89B30 800D3770 8FA4006C */  lw         $a0, 0x6C($sp)
/* 89B34 800D3774 24A50004 */  addiu      $a1, $a1, 0x4
/* 89B38 800D3778 8C820008 */  lw         $v0, 0x8($a0)
/* 89B3C 800D377C 26F70001 */  addiu      $s7, $s7, 0x1
/* 89B40 800D3780 00A21021 */  addu       $v0, $a1, $v0
/* 89B44 800D3784 A0460001 */  sb         $a2, 0x1($v0)
/* 89B48 800D3788 8C820008 */  lw         $v0, 0x8($a0)
/* 89B4C 800D378C 93A3001A */  lbu        $v1, 0x1A($sp)
/* 89B50 800D3790 00A21021 */  addu       $v0, $a1, $v0
/* 89B54 800D3794 A0430002 */  sb         $v1, 0x2($v0)
/* 89B58 800D3798 8C820008 */  lw         $v0, 0x8($a0)
/* 89B5C 800D379C 93A3001B */  lbu        $v1, 0x1B($sp)
/* 89B60 800D37A0 00A21021 */  addu       $v0, $a1, $v0
/* 89B64 800D37A4 A0430003 */  sb         $v1, 0x3($v0)
.Lrace_800D37A8:
/* 89B68 800D37A8 93A6001B */  lbu        $a2, 0x1B($sp)
/* 89B6C 800D37AC A3A60019 */  sb         $a2, 0x19($sp)
/* 89B70 800D37B0 8E2200B8 */  lw         $v0, 0xB8($s1)
/* 89B74 800D37B4 00E2001B */  divu       $zero, $a3, $v0
/* 89B78 800D37B8 14400002 */  bnez       $v0, .Lrace_800D37C4
/* 89B7C 800D37BC 00000000 */   nop
/* 89B80 800D37C0 0007000D */  break      7
.Lrace_800D37C4:
/* 89B84 800D37C4 00001810 */  mfhi       $v1
/* 89B88 800D37C8 2EE20035 */  sltiu      $v0, $s7, 0x35
/* 89B8C 800D37CC 01031821 */  addu       $v1, $t0, $v1
/* 89B90 800D37D0 1040000F */  beqz       $v0, .Lrace_800D3810
/* 89B94 800D37D4 A3A3001B */   sb        $v1, 0x1B($sp)
/* 89B98 800D37D8 8FA4006C */  lw         $a0, 0x6C($sp)
/* 89B9C 800D37DC 24A50004 */  addiu      $a1, $a1, 0x4
/* 89BA0 800D37E0 8C820008 */  lw         $v0, 0x8($a0)
/* 89BA4 800D37E4 26F70001 */  addiu      $s7, $s7, 0x1
/* 89BA8 800D37E8 00A21021 */  addu       $v0, $a1, $v0
/* 89BAC 800D37EC A0460001 */  sb         $a2, 0x1($v0)
/* 89BB0 800D37F0 8C820008 */  lw         $v0, 0x8($a0)
/* 89BB4 800D37F4 93A3001A */  lbu        $v1, 0x1A($sp)
/* 89BB8 800D37F8 00A21021 */  addu       $v0, $a1, $v0
/* 89BBC 800D37FC A0430002 */  sb         $v1, 0x2($v0)
/* 89BC0 800D3800 8C820008 */  lw         $v0, 0x8($a0)
/* 89BC4 800D3804 93A3001B */  lbu        $v1, 0x1B($sp)
/* 89BC8 800D3808 00A21021 */  addu       $v0, $a1, $v0
/* 89BCC 800D380C A0430003 */  sb         $v1, 0x3($v0)
.Lrace_800D3810:
/* 89BD0 800D3810 08034DC6 */  j          .Lrace_800D3718
/* 89BD4 800D3814 00E08021 */   addu      $s0, $a3, $zero
.Lrace_800D3818:
/* 89BD8 800D3818 08034DBE */  j          .Lrace_800D36F8
/* 89BDC 800D381C 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_800D3820:
/* 89BE0 800D3820 8E2300B8 */  lw         $v1, 0xB8($s1)
/* 89BE4 800D3824 2C620003 */  sltiu      $v0, $v1, 0x3
/* 89BE8 800D3828 14400022 */  bnez       $v0, .Lrace_800D38B4
/* 89BEC 800D382C 02E0B021 */   addu      $s6, $s7, $zero
/* 89BF0 800D3830 02630018 */  mult       $s3, $v1
/* 89BF4 800D3834 24100001 */  addiu      $s0, $zero, 0x1
/* 89BF8 800D3838 00171080 */  sll        $v0, $s7, 2
/* 89BFC 800D383C 2445FFFC */  addiu      $a1, $v0, -0x4
/* 89C00 800D3840 00004012 */  mflo       $t0
/* 89C04 800D3844 A3A80019 */  sb         $t0, 0x19($sp)
.Lrace_800D3848:
/* 89C08 800D3848 8E2200B8 */  lw         $v0, 0xB8($s1)
/* 89C0C 800D384C 2442FFFF */  addiu      $v0, $v0, -0x1
/* 89C10 800D3850 0202102B */  sltu       $v0, $s0, $v0
/* 89C14 800D3854 10400017 */  beqz       $v0, .Lrace_800D38B4
/* 89C18 800D3858 01101021 */   addu      $v0, $t0, $s0
/* 89C1C 800D385C A3A2001A */  sb         $v0, 0x1A($sp)
/* 89C20 800D3860 24420001 */  addiu      $v0, $v0, 0x1
/* 89C24 800D3864 A3A2001B */  sb         $v0, 0x1B($sp)
/* 89C28 800D3868 2EE20035 */  sltiu      $v0, $s7, 0x35
/* 89C2C 800D386C 1040FFF6 */  beqz       $v0, .Lrace_800D3848
/* 89C30 800D3870 26100001 */   addiu     $s0, $s0, 0x1
/* 89C34 800D3874 24A50004 */  addiu      $a1, $a1, 0x4
/* 89C38 800D3878 8FA4006C */  lw         $a0, 0x6C($sp)
/* 89C3C 800D387C 26F70001 */  addiu      $s7, $s7, 0x1
/* 89C40 800D3880 8C820008 */  lw         $v0, 0x8($a0)
/* 89C44 800D3884 93A30019 */  lbu        $v1, 0x19($sp)
/* 89C48 800D3888 00A21021 */  addu       $v0, $a1, $v0
/* 89C4C 800D388C A0430001 */  sb         $v1, 0x1($v0)
/* 89C50 800D3890 8C820008 */  lw         $v0, 0x8($a0)
/* 89C54 800D3894 93A3001A */  lbu        $v1, 0x1A($sp)
/* 89C58 800D3898 00A21021 */  addu       $v0, $a1, $v0
/* 89C5C 800D389C A0430002 */  sb         $v1, 0x2($v0)
/* 89C60 800D38A0 8C820008 */  lw         $v0, 0x8($a0)
/* 89C64 800D38A4 93A3001B */  lbu        $v1, 0x1B($sp)
/* 89C68 800D38A8 00A21021 */  addu       $v0, $a1, $v0
/* 89C6C 800D38AC 08034E12 */  j          .Lrace_800D3848
/* 89C70 800D38B0 A0430003 */   sb        $v1, 0x3($v0)
.Lrace_800D38B4:
/* 89C74 800D38B4 24050001 */  addiu      $a1, $zero, 0x1
/* 89C78 800D38B8 8E230004 */  lw         $v1, 0x4($s1)
/* 89C7C 800D38BC 0000A021 */  addu       $s4, $zero, $zero
/* 89C80 800D38C0 8C62003C */  lw         $v0, 0x3C($v1)
/* 89C84 800D38C4 02809821 */  addu       $s3, $s4, $zero
/* 89C88 800D38C8 84440070 */  lh         $a0, 0x70($v0)
/* 89C8C 800D38CC 8C420074 */  lw         $v0, 0x74($v0)
/* 89C90 800D38D0 0040F809 */  jalr       $v0
/* 89C94 800D38D4 00642021 */   addu      $a0, $v1, $a0
/* 89C98 800D38D8 3C054000 */  lui        $a1, (0x40000000 >> 16)
/* 89C9C 800D38DC 03C02021 */  addu       $a0, $fp, $zero
/* 89CA0 800D38E0 27DE0001 */  addiu      $fp, $fp, 0x1
/* 89CA4 800D38E4 26A9FFFF */  addiu      $t1, $s5, -0x1
/* 89CA8 800D38E8 32C20FFF */  andi       $v0, $s6, 0xFFF
/* 89CAC 800D38EC 00024400 */  sll        $t0, $v0, 16
/* 89CB0 800D38F0 32E20FFF */  andi       $v0, $s7, 0xFFF
/* 89CB4 800D38F4 00023C00 */  sll        $a3, $v0, 16
/* 89CB8 800D38F8 001E1080 */  sll        $v0, $fp, 2
/* 89CBC 800D38FC 8E230004 */  lw         $v1, 0x4($s1)
/* 89CC0 800D3900 2446FFFC */  addiu      $a2, $v0, -0x4
/* 89CC4 800D3904 8C620020 */  lw         $v0, 0x20($v1)
/* 89CC8 800D3908 00042080 */  sll        $a0, $a0, 2
/* 89CCC 800D390C 00822021 */  addu       $a0, $a0, $v0
/* 89CD0 800D3910 AC850000 */  sw         $a1, 0x0($a0)
.Lrace_800D3914:
/* 89CD4 800D3914 0275102B */  sltu       $v0, $s3, $s5
/* 89CD8 800D3918 10400027 */  beqz       $v0, .Lrace_800D39B8
/* 89CDC 800D391C 2FC20006 */   sltiu     $v0, $fp, 0x6
/* 89CE0 800D3920 8E2200B8 */  lw         $v0, 0xB8($s1)
/* 89CE4 800D3924 02420018 */  mult       $s2, $v0
/* 89CE8 800D3928 00005012 */  mflo       $t2
/* 89CEC 800D392C 2542FFFF */  addiu      $v0, $t2, -0x1
/* 89CF0 800D3930 3042003F */  andi       $v0, $v0, 0x3F
/* 89CF4 800D3934 00022C00 */  sll        $a1, $v0, 16
/* 89CF8 800D3938 3282FFFF */  andi       $v0, $s4, 0xFFFF
/* 89CFC 800D393C 00A22825 */  or         $a1, $a1, $v0
/* 89D00 800D3940 2FC20006 */  sltiu      $v0, $fp, 0x6
/* 89D04 800D3944 10400008 */  beqz       $v0, .Lrace_800D3968
/* 89D08 800D3948 0269102B */   sltu      $v0, $s3, $t1
/* 89D0C 800D394C 8E220004 */  lw         $v0, 0x4($s1)
/* 89D10 800D3950 24C60004 */  addiu      $a2, $a2, 0x4
/* 89D14 800D3954 8C420020 */  lw         $v0, 0x20($v0)
/* 89D18 800D3958 27DE0001 */  addiu      $fp, $fp, 0x1
/* 89D1C 800D395C 00C21021 */  addu       $v0, $a2, $v0
/* 89D20 800D3960 AC450000 */  sw         $a1, 0x0($v0)
/* 89D24 800D3964 0269102B */  sltu       $v0, $s3, $t1
.Lrace_800D3968:
/* 89D28 800D3968 10400003 */  beqz       $v0, .Lrace_800D3978
/* 89D2C 800D396C 3C051000 */   lui       $a1, (0x10000000 >> 16)
/* 89D30 800D3970 08034E5F */  j          .Lrace_800D397C
/* 89D34 800D3974 01052825 */   or        $a1, $t0, $a1
.Lrace_800D3978:
/* 89D38 800D3978 00E52825 */  or         $a1, $a3, $a1
.Lrace_800D397C:
/* 89D3C 800D397C 2FC20006 */  sltiu      $v0, $fp, 0x6
/* 89D40 800D3980 10400007 */  beqz       $v0, .Lrace_800D39A0
/* 89D44 800D3984 00000000 */   nop
/* 89D48 800D3988 8E220004 */  lw         $v0, 0x4($s1)
/* 89D4C 800D398C 24C60004 */  addiu      $a2, $a2, 0x4
/* 89D50 800D3990 8C420020 */  lw         $v0, 0x20($v0)
/* 89D54 800D3994 27DE0001 */  addiu      $fp, $fp, 0x1
/* 89D58 800D3998 00C21021 */  addu       $v0, $a2, $v0
/* 89D5C 800D399C AC450000 */  sw         $a1, 0x0($v0)
.Lrace_800D39A0:
/* 89D60 800D39A0 8E2200B8 */  lw         $v0, 0xB8($s1)
/* 89D64 800D39A4 02420018 */  mult       $s2, $v0
/* 89D68 800D39A8 26730001 */  addiu      $s3, $s3, 0x1
/* 89D6C 800D39AC 00005012 */  mflo       $t2
/* 89D70 800D39B0 08034E45 */  j          .Lrace_800D3914
/* 89D74 800D39B4 028AA021 */   addu      $s4, $s4, $t2
.Lrace_800D39B8:
/* 89D78 800D39B8 10400008 */  beqz       $v0, .Lrace_800D39DC
/* 89D7C 800D39BC 3C056000 */   lui       $a1, (0x60000000 >> 16)
/* 89D80 800D39C0 03C01021 */  addu       $v0, $fp, $zero
/* 89D84 800D39C4 8E230004 */  lw         $v1, 0x4($s1)
/* 89D88 800D39C8 27DE0001 */  addiu      $fp, $fp, 0x1
/* 89D8C 800D39CC 8C630020 */  lw         $v1, 0x20($v1)
/* 89D90 800D39D0 00021080 */  sll        $v0, $v0, 2
/* 89D94 800D39D4 00431021 */  addu       $v0, $v0, $v1
/* 89D98 800D39D8 AC450000 */  sw         $a1, 0x0($v0)
.Lrace_800D39DC:
/* 89D9C 800D39DC 24020006 */  addiu      $v0, $zero, 0x6
/* 89DA0 800D39E0 17C20006 */  bne        $fp, $v0, .Lrace_800D39FC
/* 89DA4 800D39E4 00000000 */   nop
/* 89DA8 800D39E8 8E220004 */  lw         $v0, 0x4($s1)
/* 89DAC 800D39EC 8C430020 */  lw         $v1, 0x20($v0)
/* 89DB0 800D39F0 8C620014 */  lw         $v0, 0x14($v1)
/* 89DB4 800D39F4 54450001 */  bnel       $v0, $a1, .Lrace_800D39FC
/* 89DB8 800D39F8 AC650014 */   sw        $a1, 0x14($v1)
.Lrace_800D39FC:
/* 89DBC 800D39FC 8FBF00A4 */  lw         $ra, 0xA4($sp)
/* 89DC0 800D3A00 8FBE00A0 */  lw         $fp, 0xA0($sp)
/* 89DC4 800D3A04 8FB7009C */  lw         $s7, 0x9C($sp)
/* 89DC8 800D3A08 8FB60098 */  lw         $s6, 0x98($sp)
/* 89DCC 800D3A0C 8FB50094 */  lw         $s5, 0x94($sp)
/* 89DD0 800D3A10 8FB40090 */  lw         $s4, 0x90($sp)
/* 89DD4 800D3A14 8FB3008C */  lw         $s3, 0x8C($sp)
/* 89DD8 800D3A18 8FB20088 */  lw         $s2, 0x88($sp)
/* 89DDC 800D3A1C 8FB10084 */  lw         $s1, 0x84($sp)
/* 89DE0 800D3A20 8FB00080 */  lw         $s0, 0x80($sp)
/* 89DE4 800D3A24 D7BC00C8 */  ldc1       $f28, 0xC8($sp)
/* 89DE8 800D3A28 D7BA00C0 */  ldc1       $f26, 0xC0($sp)
/* 89DEC 800D3A2C D7B800B8 */  ldc1       $f24, 0xB8($sp)
/* 89DF0 800D3A30 D7B600B0 */  ldc1       $f22, 0xB0($sp)
/* 89DF4 800D3A34 D7B400A8 */  ldc1       $f20, 0xA8($sp)
/* 89DF8 800D3A38 03E00008 */  jr         $ra
/* 89DFC 800D3A3C 27BD00D0 */   addiu     $sp, $sp, 0xD0

glabel func_race_800D3A40
/* 89E00 800D3A40 03E00008 */  jr         $ra
/* 89E04 800D3A44 00000000 */   nop

glabel func_race_800D3A48
/* 89E08 800D3A48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 89E0C 800D3A4C 00801821 */  addu       $v1, $a0, $zero
/* 89E10 800D3A50 AFBF0010 */  sw         $ra, 0x10($sp)
/* 89E14 800D3A54 90620098 */  lbu        $v0, 0x98($v1)
/* 89E18 800D3A58 30420020 */  andi       $v0, $v0, 0x20
/* 89E1C 800D3A5C 10400007 */  beqz       $v0, .Lrace_800D3A7C
/* 89E20 800D3A60 00000000 */   nop
/* 89E24 800D3A64 8CA2012C */  lw         $v0, 0x12C($a1)
/* 89E28 800D3A68 84440118 */  lh         $a0, 0x118($v0)
/* 89E2C 800D3A6C 8C42011C */  lw         $v0, 0x11C($v0)
/* 89E30 800D3A70 00A42021 */  addu       $a0, $a1, $a0
/* 89E34 800D3A74 0040F809 */  jalr       $v0
/* 89E38 800D3A78 24650008 */   addiu     $a1, $v1, 0x8
.Lrace_800D3A7C:
/* 89E3C 800D3A7C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 89E40 800D3A80 03E00008 */  jr         $ra
/* 89E44 800D3A84 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D3A88
/* 89E48 800D3A88 8C820004 */  lw         $v0, 0x4($a0)
/* 89E4C 800D3A8C 03E00008 */  jr         $ra
/* 89E50 800D3A90 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800D3A94
/* 89E54 800D3A94 90820098 */  lbu        $v0, 0x98($a0)
/* 89E58 800D3A98 03E00008 */  jr         $ra
/* 89E5C 800D3A9C 30420001 */   andi      $v0, $v0, 0x1

glabel func_race_800D3AA0
/* 89E60 800D3AA0 00801021 */  addu       $v0, $a0, $zero
/* 89E64 800D3AA4 3C03800D */  lui        $v1, %hi(D_race_800CA8C0)
/* 89E68 800D3AA8 2463A8C0 */  addiu      $v1, $v1, %lo(D_race_800CA8C0)
/* 89E6C 800D3AAC AC430008 */  sw         $v1, 0x8($v0)
/* 89E70 800D3AB0 AC400000 */  sw         $zero, 0x0($v0)
/* 89E74 800D3AB4 03E00008 */  jr         $ra
/* 89E78 800D3AB8 AC400004 */   sw        $zero, 0x4($v0)

glabel func_race_800D3ABC
/* 89E7C 800D3ABC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 89E80 800D3AC0 AFB10014 */  sw         $s1, 0x14($sp)
/* 89E84 800D3AC4 00808821 */  addu       $s1, $a0, $zero
/* 89E88 800D3AC8 AFB00010 */  sw         $s0, 0x10($sp)
/* 89E8C 800D3ACC 00A08021 */  addu       $s0, $a1, $zero
/* 89E90 800D3AD0 3C02800D */  lui        $v0, %hi(D_race_800CA8C0)
/* 89E94 800D3AD4 2442A8C0 */  addiu      $v0, $v0, %lo(D_race_800CA8C0)
/* 89E98 800D3AD8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 89E9C 800D3ADC 0C034EC3 */  jal        func_race_800D3B0C
/* 89EA0 800D3AE0 AE220008 */   sw        $v0, 0x8($s1)
/* 89EA4 800D3AE4 32100001 */  andi       $s0, $s0, 0x1
/* 89EA8 800D3AE8 12000003 */  beqz       $s0, .Lrace_800D3AF8
/* 89EAC 800D3AEC 00000000 */   nop
/* 89EB0 800D3AF0 0C01FB5C */  jal        func_8007ED70
/* 89EB4 800D3AF4 02202021 */   addu      $a0, $s1, $zero
.Lrace_800D3AF8:
/* 89EB8 800D3AF8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 89EBC 800D3AFC 8FB10014 */  lw         $s1, 0x14($sp)
/* 89EC0 800D3B00 8FB00010 */  lw         $s0, 0x10($sp)
/* 89EC4 800D3B04 03E00008 */  jr         $ra
/* 89EC8 800D3B08 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D3B0C
/* 89ECC 800D3B0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 89ED0 800D3B10 AFB20018 */  sw         $s2, 0x18($sp)
/* 89ED4 800D3B14 00809021 */  addu       $s2, $a0, $zero
/* 89ED8 800D3B18 AFBF001C */  sw         $ra, 0x1C($sp)
/* 89EDC 800D3B1C AFB10014 */  sw         $s1, 0x14($sp)
/* 89EE0 800D3B20 AFB00010 */  sw         $s0, 0x10($sp)
/* 89EE4 800D3B24 8E420000 */  lw         $v0, 0x0($s2)
/* 89EE8 800D3B28 50400029 */  beql       $v0, $zero, .Lrace_800D3BD0
/* 89EEC 800D3B2C AE400004 */   sw        $zero, 0x4($s2)
/* 89EF0 800D3B30 8E420004 */  lw         $v0, 0x4($s2)
/* 89EF4 800D3B34 1040000A */  beqz       $v0, .Lrace_800D3B60
/* 89EF8 800D3B38 00008021 */   addu      $s0, $zero, $zero
/* 89EFC 800D3B3C 02008821 */  addu       $s1, $s0, $zero
.Lrace_800D3B40:
/* 89F00 800D3B40 8E440000 */  lw         $a0, 0x0($s2)
/* 89F04 800D3B44 26100001 */  addiu      $s0, $s0, 0x1
/* 89F08 800D3B48 0C0349D8 */  jal        func_race_800D2760
/* 89F0C 800D3B4C 00912021 */   addu      $a0, $a0, $s1
/* 89F10 800D3B50 8E420004 */  lw         $v0, 0x4($s2)
/* 89F14 800D3B54 0202102B */  sltu       $v0, $s0, $v0
/* 89F18 800D3B58 1440FFF9 */  bnez       $v0, .Lrace_800D3B40
/* 89F1C 800D3B5C 263102A4 */   addiu     $s1, $s1, 0x2A4
.Lrace_800D3B60:
/* 89F20 800D3B60 8E440000 */  lw         $a0, 0x0($s2)
/* 89F24 800D3B64 50800019 */  beql       $a0, $zero, .Lrace_800D3BCC
/* 89F28 800D3B68 AE400000 */   sw        $zero, 0x0($s2)
/* 89F2C 800D3B6C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 89F30 800D3B70 00031080 */  sll        $v0, $v1, 2
/* 89F34 800D3B74 00431021 */  addu       $v0, $v0, $v1
/* 89F38 800D3B78 00021080 */  sll        $v0, $v0, 2
/* 89F3C 800D3B7C 00431021 */  addu       $v0, $v0, $v1
/* 89F40 800D3B80 000210C0 */  sll        $v0, $v0, 3
/* 89F44 800D3B84 00431021 */  addu       $v0, $v0, $v1
/* 89F48 800D3B88 00021080 */  sll        $v0, $v0, 2
/* 89F4C 800D3B8C 00828021 */  addu       $s0, $a0, $v0
/* 89F50 800D3B90 1090000B */  beq        $a0, $s0, .Lrace_800D3BC0
/* 89F54 800D3B94 2610FD5C */   addiu     $s0, $s0, -0x2A4
.Lrace_800D3B98:
/* 89F58 800D3B98 8E0202A0 */  lw         $v0, 0x2A0($s0)
/* 89F5C 800D3B9C 24050002 */  addiu      $a1, $zero, 0x2
/* 89F60 800D3BA0 84440008 */  lh         $a0, 0x8($v0)
/* 89F64 800D3BA4 8C42000C */  lw         $v0, 0xC($v0)
/* 89F68 800D3BA8 0040F809 */  jalr       $v0
/* 89F6C 800D3BAC 02042021 */   addu      $a0, $s0, $a0
/* 89F70 800D3BB0 8E420000 */  lw         $v0, 0x0($s2)
/* 89F74 800D3BB4 1450FFF8 */  bne        $v0, $s0, .Lrace_800D3B98
/* 89F78 800D3BB8 2610FD5C */   addiu     $s0, $s0, -0x2A4
/* 89F7C 800D3BBC 8E440000 */  lw         $a0, 0x0($s2)
.Lrace_800D3BC0:
/* 89F80 800D3BC0 0C009444 */  jal        func_80025110
/* 89F84 800D3BC4 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 89F88 800D3BC8 AE400000 */  sw         $zero, 0x0($s2)
.Lrace_800D3BCC:
/* 89F8C 800D3BCC AE400004 */  sw         $zero, 0x4($s2)
.Lrace_800D3BD0:
/* 89F90 800D3BD0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 89F94 800D3BD4 8FB20018 */  lw         $s2, 0x18($sp)
/* 89F98 800D3BD8 8FB10014 */  lw         $s1, 0x14($sp)
/* 89F9C 800D3BDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 89FA0 800D3BE0 03E00008 */  jr         $ra
/* 89FA4 800D3BE4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D3BE8
/* 89FA8 800D3BE8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 89FAC 800D3BEC AFB3001C */  sw         $s3, 0x1C($sp)
/* 89FB0 800D3BF0 00809821 */  addu       $s3, $a0, $zero
/* 89FB4 800D3BF4 AFB60028 */  sw         $s6, 0x28($sp)
/* 89FB8 800D3BF8 00A0B021 */  addu       $s6, $a1, $zero
/* 89FBC 800D3BFC AFB7002C */  sw         $s7, 0x2C($sp)
/* 89FC0 800D3C00 00C0B821 */  addu       $s7, $a2, $zero
/* 89FC4 800D3C04 AFBF0030 */  sw         $ra, 0x30($sp)
/* 89FC8 800D3C08 AFB50024 */  sw         $s5, 0x24($sp)
/* 89FCC 800D3C0C AFB40020 */  sw         $s4, 0x20($sp)
/* 89FD0 800D3C10 AFB20018 */  sw         $s2, 0x18($sp)
/* 89FD4 800D3C14 AFB10014 */  sw         $s1, 0x14($sp)
/* 89FD8 800D3C18 AFB00010 */  sw         $s0, 0x10($sp)
/* 89FDC 800D3C1C 8E620000 */  lw         $v0, 0x0($s3)
/* 89FE0 800D3C20 10400003 */  beqz       $v0, .Lrace_800D3C30
/* 89FE4 800D3C24 00E0A021 */   addu      $s4, $a3, $zero
/* 89FE8 800D3C28 0C034EC3 */  jal        func_race_800D3B0C
/* 89FEC 800D3C2C 00000000 */   nop
.Lrace_800D3C30:
/* 89FF0 800D3C30 3C028013 */  lui        $v0, %hi(D_race_80132080)
/* 89FF4 800D3C34 8C442080 */  lw         $a0, %lo(D_race_80132080)($v0)
/* 89FF8 800D3C38 0C01FB65 */  jal        func_8007ED94
/* 89FFC 800D3C3C 2690FFFF */   addiu     $s0, $s4, -0x1
/* 8A000 800D3C40 00142080 */  sll        $a0, $s4, 2
/* 8A004 800D3C44 00942021 */  addu       $a0, $a0, $s4
/* 8A008 800D3C48 00042080 */  sll        $a0, $a0, 2
/* 8A00C 800D3C4C 00942021 */  addu       $a0, $a0, $s4
/* 8A010 800D3C50 000420C0 */  sll        $a0, $a0, 3
/* 8A014 800D3C54 00942021 */  addu       $a0, $a0, $s4
/* 8A018 800D3C58 00042080 */  sll        $a0, $a0, 2
/* 8A01C 800D3C5C 0C00943C */  jal        func_800250F0
/* 8A020 800D3C60 24840008 */   addiu     $a0, $a0, 0x8
/* 8A024 800D3C64 24420008 */  addiu      $v0, $v0, 0x8
/* 8A028 800D3C68 00409021 */  addu       $s2, $v0, $zero
/* 8A02C 800D3C6C 02408821 */  addu       $s1, $s2, $zero
/* 8A030 800D3C70 06000007 */  bltz       $s0, .Lrace_800D3C90
/* 8A034 800D3C74 AE54FFF8 */   sw        $s4, -0x8($s2)
/* 8A038 800D3C78 2415FFFF */  addiu      $s5, $zero, -0x1
.Lrace_800D3C7C:
/* 8A03C 800D3C7C 0C0349B4 */  jal        func_race_800D26D0
/* 8A040 800D3C80 02202021 */   addu      $a0, $s1, $zero
/* 8A044 800D3C84 2610FFFF */  addiu      $s0, $s0, -0x1
/* 8A048 800D3C88 1615FFFC */  bne        $s0, $s5, .Lrace_800D3C7C
/* 8A04C 800D3C8C 263102A4 */   addiu     $s1, $s1, 0x2A4
.Lrace_800D3C90:
/* 8A050 800D3C90 0C01FB72 */  jal        func_8007EDC8
/* 8A054 800D3C94 AE720000 */   sw        $s2, 0x0($s3)
/* 8A058 800D3C98 8E620000 */  lw         $v0, 0x0($s3)
/* 8A05C 800D3C9C 14400008 */  bnez       $v0, .Lrace_800D3CC0
/* 8A060 800D3CA0 02C02021 */   addu      $a0, $s6, $zero
/* 8A064 800D3CA4 3C04800D */  lui        $a0, %hi(D_race_800CA8B0)
/* 8A068 800D3CA8 2484A8B0 */  addiu      $a0, $a0, %lo(D_race_800CA8B0)
/* 8A06C 800D3CAC 00002821 */  addu       $a1, $zero, $zero
/* 8A070 800D3CB0 00A03021 */  addu       $a2, $a1, $zero
/* 8A074 800D3CB4 0C011ACF */  jal        func_80046B3C
/* 8A078 800D3CB8 00A03821 */   addu      $a3, $a1, $zero
/* 8A07C 800D3CBC 02C02021 */  addu       $a0, $s6, $zero
.Lrace_800D3CC0:
/* 8A080 800D3CC0 3C05800D */  lui        $a1, %hi(D_race_800CA8B4)
/* 8A084 800D3CC4 24A5A8B4 */  addiu      $a1, $a1, %lo(D_race_800CA8B4)
/* 8A088 800D3CC8 0C016F2D */  jal        func_8005BCB4
/* 8A08C 800D3CCC AE740004 */   sw        $s4, 0x4($s3)
/* 8A090 800D3CD0 00008821 */  addu       $s1, $zero, $zero
/* 8A094 800D3CD4 8E630004 */  lw         $v1, 0x4($s3)
/* 8A098 800D3CD8 10600011 */  beqz       $v1, .Lrace_800D3D20
/* 8A09C 800D3CDC 00409021 */   addu      $s2, $v0, $zero
/* 8A0A0 800D3CE0 02208021 */  addu       $s0, $s1, $zero
.Lrace_800D3CE4:
/* 8A0A4 800D3CE4 02C02821 */  addu       $a1, $s6, $zero
/* 8A0A8 800D3CE8 02E03021 */  addu       $a2, $s7, $zero
/* 8A0AC 800D3CEC 8E640000 */  lw         $a0, 0x0($s3)
/* 8A0B0 800D3CF0 26310001 */  addiu      $s1, $s1, 0x1
/* 8A0B4 800D3CF4 0C034A1C */  jal        func_race_800D2870
/* 8A0B8 800D3CF8 00902021 */   addu      $a0, $a0, $s0
/* 8A0BC 800D3CFC 02C02821 */  addu       $a1, $s6, $zero
/* 8A0C0 800D3D00 8E640000 */  lw         $a0, 0x0($s3)
/* 8A0C4 800D3D04 02403021 */  addu       $a2, $s2, $zero
/* 8A0C8 800D3D08 0C034A45 */  jal        func_race_800D2914
/* 8A0CC 800D3D0C 00902021 */   addu      $a0, $a0, $s0
/* 8A0D0 800D3D10 8E620004 */  lw         $v0, 0x4($s3)
/* 8A0D4 800D3D14 0222102B */  sltu       $v0, $s1, $v0
/* 8A0D8 800D3D18 1440FFF2 */  bnez       $v0, .Lrace_800D3CE4
/* 8A0DC 800D3D1C 261002A4 */   addiu     $s0, $s0, 0x2A4
.Lrace_800D3D20:
/* 8A0E0 800D3D20 8FBF0030 */  lw         $ra, 0x30($sp)
/* 8A0E4 800D3D24 8FB7002C */  lw         $s7, 0x2C($sp)
/* 8A0E8 800D3D28 8FB60028 */  lw         $s6, 0x28($sp)
/* 8A0EC 800D3D2C 8FB50024 */  lw         $s5, 0x24($sp)
/* 8A0F0 800D3D30 8FB40020 */  lw         $s4, 0x20($sp)
/* 8A0F4 800D3D34 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8A0F8 800D3D38 8FB20018 */  lw         $s2, 0x18($sp)
/* 8A0FC 800D3D3C 8FB10014 */  lw         $s1, 0x14($sp)
/* 8A100 800D3D40 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A104 800D3D44 03E00008 */  jr         $ra
/* 8A108 800D3D48 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800D3D4C
/* 8A10C 800D3D4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8A110 800D3D50 AFB10014 */  sw         $s1, 0x14($sp)
/* 8A114 800D3D54 00808821 */  addu       $s1, $a0, $zero
/* 8A118 800D3D58 00001821 */  addu       $v1, $zero, $zero
/* 8A11C 800D3D5C 00602021 */  addu       $a0, $v1, $zero
/* 8A120 800D3D60 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8A124 800D3D64 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A128 800D3D68 8E260004 */  lw         $a2, 0x4($s1)
.Lrace_800D3D6C:
/* 8A12C 800D3D6C 0066102B */  sltu       $v0, $v1, $a2
/* 8A130 800D3D70 10400009 */  beqz       $v0, .Lrace_800D3D98
/* 8A134 800D3D74 00000000 */   nop
/* 8A138 800D3D78 8E220000 */  lw         $v0, 0x0($s1)
/* 8A13C 800D3D7C 00821021 */  addu       $v0, $a0, $v0
/* 8A140 800D3D80 90420098 */  lbu        $v0, 0x98($v0)
/* 8A144 800D3D84 30420001 */  andi       $v0, $v0, 0x1
/* 8A148 800D3D88 10400003 */  beqz       $v0, .Lrace_800D3D98
/* 8A14C 800D3D8C 248402A4 */   addiu     $a0, $a0, 0x2A4
/* 8A150 800D3D90 08034F5B */  j          .Lrace_800D3D6C
/* 8A154 800D3D94 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800D3D98:
/* 8A158 800D3D98 8E220004 */  lw         $v0, 0x4($s1)
/* 8A15C 800D3D9C 1062000D */  beq        $v1, $v0, .Lrace_800D3DD4
/* 8A160 800D3DA0 00038080 */   sll       $s0, $v1, 2
/* 8A164 800D3DA4 02038021 */  addu       $s0, $s0, $v1
/* 8A168 800D3DA8 00108080 */  sll        $s0, $s0, 2
/* 8A16C 800D3DAC 02038021 */  addu       $s0, $s0, $v1
/* 8A170 800D3DB0 001080C0 */  sll        $s0, $s0, 3
/* 8A174 800D3DB4 02038021 */  addu       $s0, $s0, $v1
/* 8A178 800D3DB8 8E240000 */  lw         $a0, 0x0($s1)
/* 8A17C 800D3DBC 00108080 */  sll        $s0, $s0, 2
/* 8A180 800D3DC0 0C034A56 */  jal        func_race_800D2958
/* 8A184 800D3DC4 00902021 */   addu      $a0, $a0, $s0
/* 8A188 800D3DC8 8E220000 */  lw         $v0, 0x0($s1)
/* 8A18C 800D3DCC 08034F76 */  j          .Lrace_800D3DD8
/* 8A190 800D3DD0 00501021 */   addu      $v0, $v0, $s0
.Lrace_800D3DD4:
/* 8A194 800D3DD4 00001021 */  addu       $v0, $zero, $zero
.Lrace_800D3DD8:
/* 8A198 800D3DD8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8A19C 800D3DDC 8FB10014 */  lw         $s1, 0x14($sp)
/* 8A1A0 800D3DE0 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A1A4 800D3DE4 03E00008 */  jr         $ra
/* 8A1A8 800D3DE8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D3DEC
/* 8A1AC 800D3DEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8A1B0 800D3DF0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8A1B4 800D3DF4 0C034A9C */  jal        func_race_800D2A70
/* 8A1B8 800D3DF8 00A02021 */   addu      $a0, $a1, $zero
/* 8A1BC 800D3DFC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8A1C0 800D3E00 03E00008 */  jr         $ra
/* 8A1C4 800D3E04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D3E08
/* 8A1C8 800D3E08 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8A1CC 800D3E0C AFB20018 */  sw         $s2, 0x18($sp)
/* 8A1D0 800D3E10 00809021 */  addu       $s2, $a0, $zero
/* 8A1D4 800D3E14 AFB3001C */  sw         $s3, 0x1C($sp)
/* 8A1D8 800D3E18 00A09821 */  addu       $s3, $a1, $zero
/* 8A1DC 800D3E1C AFB10014 */  sw         $s1, 0x14($sp)
/* 8A1E0 800D3E20 00008821 */  addu       $s1, $zero, $zero
/* 8A1E4 800D3E24 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A1E8 800D3E28 02208021 */  addu       $s0, $s1, $zero
/* 8A1EC 800D3E2C AFBF0020 */  sw         $ra, 0x20($sp)
.Lrace_800D3E30:
/* 8A1F0 800D3E30 8E420004 */  lw         $v0, 0x4($s2)
/* 8A1F4 800D3E34 0222102B */  sltu       $v0, $s1, $v0
/* 8A1F8 800D3E38 1040000C */  beqz       $v0, .Lrace_800D3E6C
/* 8A1FC 800D3E3C 00000000 */   nop
/* 8A200 800D3E40 8E420000 */  lw         $v0, 0x0($s2)
/* 8A204 800D3E44 02022021 */  addu       $a0, $s0, $v0
/* 8A208 800D3E48 90820098 */  lbu        $v0, 0x98($a0)
/* 8A20C 800D3E4C 30420001 */  andi       $v0, $v0, 0x1
/* 8A210 800D3E50 50400004 */  beql       $v0, $zero, .Lrace_800D3E64
/* 8A214 800D3E54 261002A4 */   addiu     $s0, $s0, 0x2A4
/* 8A218 800D3E58 0C034AA0 */  jal        func_race_800D2A80
/* 8A21C 800D3E5C 02602821 */   addu      $a1, $s3, $zero
/* 8A220 800D3E60 261002A4 */  addiu      $s0, $s0, 0x2A4
.Lrace_800D3E64:
/* 8A224 800D3E64 08034F8C */  j          .Lrace_800D3E30
/* 8A228 800D3E68 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800D3E6C:
/* 8A22C 800D3E6C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 8A230 800D3E70 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8A234 800D3E74 8FB20018 */  lw         $s2, 0x18($sp)
/* 8A238 800D3E78 8FB10014 */  lw         $s1, 0x14($sp)
/* 8A23C 800D3E7C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A240 800D3E80 03E00008 */  jr         $ra
/* 8A244 800D3E84 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800D3E88
/* 8A248 800D3E88 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8A24C 800D3E8C AFB20018 */  sw         $s2, 0x18($sp)
/* 8A250 800D3E90 00809021 */  addu       $s2, $a0, $zero
/* 8A254 800D3E94 AFB3001C */  sw         $s3, 0x1C($sp)
/* 8A258 800D3E98 00A09821 */  addu       $s3, $a1, $zero
/* 8A25C 800D3E9C AFB10014 */  sw         $s1, 0x14($sp)
/* 8A260 800D3EA0 00008821 */  addu       $s1, $zero, $zero
/* 8A264 800D3EA4 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A268 800D3EA8 02208021 */  addu       $s0, $s1, $zero
/* 8A26C 800D3EAC AFBF0020 */  sw         $ra, 0x20($sp)
.Lrace_800D3EB0:
/* 8A270 800D3EB0 8E420004 */  lw         $v0, 0x4($s2)
/* 8A274 800D3EB4 0222102B */  sltu       $v0, $s1, $v0
/* 8A278 800D3EB8 1040000C */  beqz       $v0, .Lrace_800D3EEC
/* 8A27C 800D3EBC 00000000 */   nop
/* 8A280 800D3EC0 8E420000 */  lw         $v0, 0x0($s2)
/* 8A284 800D3EC4 02022021 */  addu       $a0, $s0, $v0
/* 8A288 800D3EC8 90820098 */  lbu        $v0, 0x98($a0)
/* 8A28C 800D3ECC 30420001 */  andi       $v0, $v0, 0x1
/* 8A290 800D3ED0 50400004 */  beql       $v0, $zero, .Lrace_800D3EE4
/* 8A294 800D3ED4 261002A4 */   addiu     $s0, $s0, 0x2A4
/* 8A298 800D3ED8 0C034E90 */  jal        func_race_800D3A40
/* 8A29C 800D3EDC 02602821 */   addu      $a1, $s3, $zero
/* 8A2A0 800D3EE0 261002A4 */  addiu      $s0, $s0, 0x2A4
.Lrace_800D3EE4:
/* 8A2A4 800D3EE4 08034FAC */  j          .Lrace_800D3EB0
/* 8A2A8 800D3EE8 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800D3EEC:
/* 8A2AC 800D3EEC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 8A2B0 800D3EF0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8A2B4 800D3EF4 8FB20018 */  lw         $s2, 0x18($sp)
/* 8A2B8 800D3EF8 8FB10014 */  lw         $s1, 0x14($sp)
/* 8A2BC 800D3EFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A2C0 800D3F00 03E00008 */  jr         $ra
/* 8A2C4 800D3F04 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800D3F08
/* 8A2C8 800D3F08 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8A2CC 800D3F0C AFB20018 */  sw         $s2, 0x18($sp)
/* 8A2D0 800D3F10 00809021 */  addu       $s2, $a0, $zero
/* 8A2D4 800D3F14 AFB3001C */  sw         $s3, 0x1C($sp)
/* 8A2D8 800D3F18 00A09821 */  addu       $s3, $a1, $zero
/* 8A2DC 800D3F1C AFB10014 */  sw         $s1, 0x14($sp)
/* 8A2E0 800D3F20 00008821 */  addu       $s1, $zero, $zero
/* 8A2E4 800D3F24 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A2E8 800D3F28 02208021 */  addu       $s0, $s1, $zero
/* 8A2EC 800D3F2C AFBF0020 */  sw         $ra, 0x20($sp)
.Lrace_800D3F30:
/* 8A2F0 800D3F30 8E420004 */  lw         $v0, 0x4($s2)
/* 8A2F4 800D3F34 0222102B */  sltu       $v0, $s1, $v0
/* 8A2F8 800D3F38 1040000C */  beqz       $v0, .Lrace_800D3F6C
/* 8A2FC 800D3F3C 00000000 */   nop
/* 8A300 800D3F40 8E420000 */  lw         $v0, 0x0($s2)
/* 8A304 800D3F44 02022021 */  addu       $a0, $s0, $v0
/* 8A308 800D3F48 90820098 */  lbu        $v0, 0x98($a0)
/* 8A30C 800D3F4C 30420001 */  andi       $v0, $v0, 0x1
/* 8A310 800D3F50 50400004 */  beql       $v0, $zero, .Lrace_800D3F64
/* 8A314 800D3F54 261002A4 */   addiu     $s0, $s0, 0x2A4
/* 8A318 800D3F58 0C034E92 */  jal        func_race_800D3A48
/* 8A31C 800D3F5C 02602821 */   addu      $a1, $s3, $zero
/* 8A320 800D3F60 261002A4 */  addiu      $s0, $s0, 0x2A4
.Lrace_800D3F64:
/* 8A324 800D3F64 08034FCC */  j          .Lrace_800D3F30
/* 8A328 800D3F68 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800D3F6C:
/* 8A32C 800D3F6C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 8A330 800D3F70 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8A334 800D3F74 8FB20018 */  lw         $s2, 0x18($sp)
/* 8A338 800D3F78 8FB10014 */  lw         $s1, 0x14($sp)
/* 8A33C 800D3F7C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A340 800D3F80 03E00008 */  jr         $ra
/* 8A344 800D3F84 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800D3F88
/* 8A348 800D3F88 3C028013 */  lui        $v0, %hi(D_race_80132080)
/* 8A34C 800D3F8C 03E00008 */  jr         $ra
/* 8A350 800D3F90 AC442080 */   sw        $a0, %lo(D_race_80132080)($v0)

glabel func_race_800D3F94
/* 8A354 800D3F94 8C820000 */  lw         $v0, 0x0($a0)
/* 8A358 800D3F98 03E00008 */  jr         $ra
/* 8A35C 800D3F9C 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800D3FA0
/* 8A360 800D3FA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8A364 800D3FA4 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A368 800D3FA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8A36C 800D3FAC 0C016038 */  jal        func_800580E0
/* 8A370 800D3FB0 00808021 */   addu      $s0, $a0, $zero
/* 8A374 800D3FB4 02001021 */  addu       $v0, $s0, $zero
/* 8A378 800D3FB8 3C03800D */  lui        $v1, %hi(D_race_800CA8D8)
/* 8A37C 800D3FBC 2463A8D8 */  addiu      $v1, $v1, %lo(D_race_800CA8D8)
/* 8A380 800D3FC0 AC430024 */  sw         $v1, 0x24($v0)
/* 8A384 800D3FC4 AC400090 */  sw         $zero, 0x90($v0)
/* 8A388 800D3FC8 AC400094 */  sw         $zero, 0x94($v0)
/* 8A38C 800D3FCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8A390 800D3FD0 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A394 800D3FD4 03E00008 */  jr         $ra
/* 8A398 800D3FD8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D3FDC
/* 8A39C 800D3FDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8A3A0 800D3FE0 AFB10014 */  sw         $s1, 0x14($sp)
/* 8A3A4 800D3FE4 00808821 */  addu       $s1, $a0, $zero
/* 8A3A8 800D3FE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A3AC 800D3FEC 00A08021 */  addu       $s0, $a1, $zero
/* 8A3B0 800D3FF0 3C02800D */  lui        $v0, %hi(D_race_800CA8D8)
/* 8A3B4 800D3FF4 2442A8D8 */  addiu      $v0, $v0, %lo(D_race_800CA8D8)
/* 8A3B8 800D3FF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8A3BC 800D3FFC 0C03501D */  jal        func_race_800D4074
/* 8A3C0 800D4000 AE220024 */   sw        $v0, 0x24($s1)
/* 8A3C4 800D4004 32100001 */  andi       $s0, $s0, 0x1
/* 8A3C8 800D4008 12000003 */  beqz       $s0, .Lrace_800D4018
/* 8A3CC 800D400C 00000000 */   nop
/* 8A3D0 800D4010 0C01FB5C */  jal        func_8007ED70
/* 8A3D4 800D4014 02202021 */   addu      $a0, $s1, $zero
.Lrace_800D4018:
/* 8A3D8 800D4018 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8A3DC 800D401C 8FB10014 */  lw         $s1, 0x14($sp)
/* 8A3E0 800D4020 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A3E4 800D4024 03E00008 */  jr         $ra
/* 8A3E8 800D4028 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D402C
/* 8A3EC 800D402C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8A3F0 800D4030 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A3F4 800D4034 00808021 */  addu       $s0, $a0, $zero
/* 8A3F8 800D4038 AFB10014 */  sw         $s1, 0x14($sp)
/* 8A3FC 800D403C 00C08821 */  addu       $s1, $a2, $zero
/* 8A400 800D4040 AFB20018 */  sw         $s2, 0x18($sp)
/* 8A404 800D4044 8FA60030 */  lw         $a2, 0x30($sp)
/* 8A408 800D4048 AFBF001C */  sw         $ra, 0x1C($sp)
/* 8A40C 800D404C 0C016059 */  jal        func_80058164
/* 8A410 800D4050 00E09021 */   addu      $s2, $a3, $zero
/* 8A414 800D4054 AE110090 */  sw         $s1, 0x90($s0)
/* 8A418 800D4058 AE120094 */  sw         $s2, 0x94($s0)
/* 8A41C 800D405C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 8A420 800D4060 8FB20018 */  lw         $s2, 0x18($sp)
/* 8A424 800D4064 8FB10014 */  lw         $s1, 0x14($sp)
/* 8A428 800D4068 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A42C 800D406C 03E00008 */  jr         $ra
/* 8A430 800D4070 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D4074
/* 8A434 800D4074 03E00008 */  jr         $ra
/* 8A438 800D4078 AC800090 */   sw        $zero, 0x90($a0)

glabel func_race_800D407C
/* 8A43C 800D407C 8C820090 */  lw         $v0, 0x90($a0)
/* 8A440 800D4080 03E00008 */  jr         $ra
/* 8A444 800D4084 00000000 */   nop

glabel func_race_800D4088
/* 8A448 800D4088 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 8A44C 800D408C AFB20048 */  sw         $s2, 0x48($sp)
/* 8A450 800D4090 00809021 */  addu       $s2, $a0, $zero
/* 8A454 800D4094 AFBF0050 */  sw         $ra, 0x50($sp)
/* 8A458 800D4098 AFB3004C */  sw         $s3, 0x4C($sp)
/* 8A45C 800D409C AFB10044 */  sw         $s1, 0x44($sp)
/* 8A460 800D40A0 AFB00040 */  sw         $s0, 0x40($sp)
/* 8A464 800D40A4 F7B40058 */  sdc1       $f20, 0x58($sp)
/* 8A468 800D40A8 8E420094 */  lw         $v0, 0x94($s2)
/* 8A46C 800D40AC 1040004C */  beqz       $v0, .Lrace_800D41E0
/* 8A470 800D40B0 00A09821 */   addu      $s3, $a1, $zero
/* 8A474 800D40B4 27B00010 */  addiu      $s0, $sp, 0x10
/* 8A478 800D40B8 8E620008 */  lw         $v0, 0x8($s3)
/* 8A47C 800D40BC 02002821 */  addu       $a1, $s0, $zero
/* 8A480 800D40C0 8C430000 */  lw         $v1, 0x0($v0)
/* 8A484 800D40C4 00008821 */  addu       $s1, $zero, $zero
/* 8A488 800D40C8 8C62000C */  lw         $v0, 0xC($v1)
/* 8A48C 800D40CC 3C01800D */  lui        $at, %hi(D_race_800CA8D0)
/* 8A490 800D40D0 C434A8D0 */  lwc1       $f20, %lo(D_race_800CA8D0)($at)
/* 8A494 800D40D4 84440078 */  lh         $a0, 0x78($v0)
/* 8A498 800D40D8 8C42007C */  lw         $v0, 0x7C($v0)
/* 8A49C 800D40DC 0040F809 */  jalr       $v0
/* 8A4A0 800D40E0 00642021 */   addu      $a0, $v1, $a0
/* 8A4A4 800D40E4 02002821 */  addu       $a1, $s0, $zero
/* 8A4A8 800D40E8 C7A00010 */  lwc1       $f0, 0x10($sp)
/* 8A4AC 800D40EC C7A20018 */  lwc1       $f2, 0x18($sp)
/* 8A4B0 800D40F0 46000007 */  neg.s      $f0, $f0
/* 8A4B4 800D40F4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 8A4B8 800D40F8 C7A00014 */  lwc1       $f0, 0x14($sp)
/* 8A4BC 800D40FC 46001087 */  neg.s      $f2, $f2
/* 8A4C0 800D4100 E7A20018 */  swc1       $f2, 0x18($sp)
/* 8A4C4 800D4104 46000007 */  neg.s      $f0, $f0
/* 8A4C8 800D4108 E7A00014 */  swc1       $f0, 0x14($sp)
/* 8A4CC 800D410C 8E420024 */  lw         $v0, 0x24($s2)
/* 8A4D0 800D4110 27A60030 */  addiu      $a2, $sp, 0x30
/* 8A4D4 800D4114 84440078 */  lh         $a0, 0x78($v0)
/* 8A4D8 800D4118 8C42007C */  lw         $v0, 0x7C($v0)
/* 8A4DC 800D411C 0040F809 */  jalr       $v0
/* 8A4E0 800D4120 02442021 */   addu      $a0, $s2, $a0
.Lrace_800D4124:
/* 8A4E4 800D4124 8E430090 */  lw         $v1, 0x90($s2)
/* 8A4E8 800D4128 8C620010 */  lw         $v0, 0x10($v1)
/* 8A4EC 800D412C 0222102B */  sltu       $v0, $s1, $v0
/* 8A4F0 800D4130 1040002B */  beqz       $v0, .Lrace_800D41E0
/* 8A4F4 800D4134 02202821 */   addu      $a1, $s1, $zero
/* 8A4F8 800D4138 8C620008 */  lw         $v0, 0x8($v1)
/* 8A4FC 800D413C 84440038 */  lh         $a0, 0x38($v0)
/* 8A500 800D4140 8C42003C */  lw         $v0, 0x3C($v0)
/* 8A504 800D4144 0040F809 */  jalr       $v0
/* 8A508 800D4148 00642021 */   addu      $a0, $v1, $a0
/* 8A50C 800D414C 27A50010 */  addiu      $a1, $sp, 0x10
/* 8A510 800D4150 00408021 */  addu       $s0, $v0, $zero
/* 8A514 800D4154 8E02000C */  lw         $v0, 0xC($s0)
/* 8A518 800D4158 27A60020 */  addiu      $a2, $sp, 0x20
/* 8A51C 800D415C 84440048 */  lh         $a0, 0x48($v0)
/* 8A520 800D4160 8C42004C */  lw         $v0, 0x4C($v0)
/* 8A524 800D4164 0040F809 */  jalr       $v0
/* 8A528 800D4168 02042021 */   addu      $a0, $s0, $a0
/* 8A52C 800D416C C7A60010 */  lwc1       $f6, 0x10($sp)
/* 8A530 800D4170 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 8A534 800D4174 46003182 */  mul.s      $f6, $f6, $f0
/* 8A538 800D4178 27A50010 */  addiu      $a1, $sp, 0x10
/* 8A53C 800D417C C4A40004 */  lwc1       $f4, 0x4($a1)
/* 8A540 800D4180 C7A00034 */  lwc1       $f0, 0x34($sp)
/* 8A544 800D4184 46002102 */  mul.s      $f4, $f4, $f0
/* 8A548 800D4188 C4A20008 */  lwc1       $f2, 0x8($a1)
/* 8A54C 800D418C C7A00038 */  lwc1       $f0, 0x38($sp)
/* 8A550 800D4190 46001082 */  mul.s      $f2, $f2, $f0
/* 8A554 800D4194 46043180 */  add.s      $f6, $f6, $f4
/* 8A558 800D4198 46023180 */  add.s      $f6, $f6, $f2
/* 8A55C 800D419C 4614303C */  c.lt.s     $f6, $f20
/* 8A560 800D41A0 00000000 */  nop
/* 8A564 800D41A4 4502FFDF */  bc1fl      .Lrace_800D4124
/* 8A568 800D41A8 26310001 */   addiu     $s1, $s1, 0x1
/* 8A56C 800D41AC 3C01800D */  lui        $at, %hi(D_race_800CA8D4)
/* 8A570 800D41B0 C420A8D4 */  lwc1       $f0, %lo(D_race_800CA8D4)($at)
/* 8A574 800D41B4 4606003C */  c.lt.s     $f0, $f6
/* 8A578 800D41B8 00000000 */  nop
/* 8A57C 800D41BC 45000006 */  bc1f       .Lrace_800D41D8
/* 8A580 800D41C0 27A60030 */   addiu     $a2, $sp, 0x30
/* 8A584 800D41C4 8E02000C */  lw         $v0, 0xC($s0)
/* 8A588 800D41C8 84440058 */  lh         $a0, 0x58($v0)
/* 8A58C 800D41CC 8C42005C */  lw         $v0, 0x5C($v0)
/* 8A590 800D41D0 0040F809 */  jalr       $v0
/* 8A594 800D41D4 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D41D8:
/* 8A598 800D41D8 08035049 */  j          .Lrace_800D4124
/* 8A59C 800D41DC 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800D41E0:
/* 8A5A0 800D41E0 8E62012C */  lw         $v0, 0x12C($s3)
/* 8A5A4 800D41E4 02402821 */  addu       $a1, $s2, $zero
/* 8A5A8 800D41E8 84440118 */  lh         $a0, 0x118($v0)
/* 8A5AC 800D41EC 8C42011C */  lw         $v0, 0x11C($v0)
/* 8A5B0 800D41F0 0040F809 */  jalr       $v0
/* 8A5B4 800D41F4 02642021 */   addu      $a0, $s3, $a0
/* 8A5B8 800D41F8 8FBF0050 */  lw         $ra, 0x50($sp)
/* 8A5BC 800D41FC 8FB3004C */  lw         $s3, 0x4C($sp)
/* 8A5C0 800D4200 8FB20048 */  lw         $s2, 0x48($sp)
/* 8A5C4 800D4204 8FB10044 */  lw         $s1, 0x44($sp)
/* 8A5C8 800D4208 8FB00040 */  lw         $s0, 0x40($sp)
/* 8A5CC 800D420C D7B40058 */  ldc1       $f20, 0x58($sp)
/* 8A5D0 800D4210 03E00008 */  jr         $ra
/* 8A5D4 800D4214 27BD0060 */   addiu     $sp, $sp, 0x60
