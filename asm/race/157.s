.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DE6B0
/* 94A70 800DE6B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 94A74 800DE6B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 94A78 800DE6B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 94A7C 800DE6BC 0C03592C */  jal        func_race_800D64B0
/* 94A80 800DE6C0 00808021 */   addu      $s0, $a0, $zero
/* 94A84 800DE6C4 02002021 */  addu       $a0, $s0, $zero
/* 94A88 800DE6C8 3C02800D */  lui        $v0, %hi(D_race_800CB320)
/* 94A8C 800DE6CC 2442B320 */  addiu      $v0, $v0, %lo(D_race_800CB320)
/* 94A90 800DE6D0 0C0379CE */  jal        func_race_800DE738
/* 94A94 800DE6D4 AE02001C */   sw        $v0, 0x1C($s0)
/* 94A98 800DE6D8 02001021 */  addu       $v0, $s0, $zero
/* 94A9C 800DE6DC A0400018 */  sb         $zero, 0x18($v0)
/* 94AA0 800DE6E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 94AA4 800DE6E4 8FB00010 */  lw         $s0, 0x10($sp)
/* 94AA8 800DE6E8 03E00008 */  jr         $ra
/* 94AAC 800DE6EC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DE6F0
/* 94AB0 800DE6F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 94AB4 800DE6F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 94AB8 800DE6F8 00808021 */  addu       $s0, $a0, $zero
/* 94ABC 800DE6FC AFB10014 */  sw         $s1, 0x14($sp)
/* 94AC0 800DE700 00A08821 */  addu       $s1, $a1, $zero
/* 94AC4 800DE704 3C02800D */  lui        $v0, %hi(D_race_800CB320)
/* 94AC8 800DE708 2442B320 */  addiu      $v0, $v0, %lo(D_race_800CB320)
/* 94ACC 800DE70C AFBF0018 */  sw         $ra, 0x18($sp)
/* 94AD0 800DE710 0C0379F1 */  jal        func_race_800DE7C4
/* 94AD4 800DE714 AE02001C */   sw        $v0, 0x1C($s0)
/* 94AD8 800DE718 02002021 */  addu       $a0, $s0, $zero
/* 94ADC 800DE71C 0C03593D */  jal        func_race_800D64F4
/* 94AE0 800DE720 02202821 */   addu      $a1, $s1, $zero
/* 94AE4 800DE724 8FBF0018 */  lw         $ra, 0x18($sp)
/* 94AE8 800DE728 8FB10014 */  lw         $s1, 0x14($sp)
/* 94AEC 800DE72C 8FB00010 */  lw         $s0, 0x10($sp)
/* 94AF0 800DE730 03E00008 */  jr         $ra
/* 94AF4 800DE734 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DE738
/* 94AF8 800DE738 03E00008 */  jr         $ra
/* 94AFC 800DE73C 00000000 */   nop

glabel func_race_800DE740
/* 94B00 800DE740 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 94B04 800DE744 AFB00010 */  sw         $s0, 0x10($sp)
/* 94B08 800DE748 00808021 */  addu       $s0, $a0, $zero
/* 94B0C 800DE74C AFBF0018 */  sw         $ra, 0x18($sp)
/* 94B10 800DE750 AFB10014 */  sw         $s1, 0x14($sp)
/* 94B14 800DE754 8E020014 */  lw         $v0, 0x14($s0)
/* 94B18 800DE758 10400003 */  beqz       $v0, .Lrace_800DE768
/* 94B1C 800DE75C 00A08821 */   addu      $s1, $a1, $zero
/* 94B20 800DE760 0C0379F1 */  jal        func_race_800DE7C4
/* 94B24 800DE764 00000000 */   nop
.Lrace_800DE768:
/* 94B28 800DE768 00002821 */  addu       $a1, $zero, $zero
/* 94B2C 800DE76C 02202021 */  addu       $a0, $s1, $zero
/* 94B30 800DE770 8E220000 */  lw         $v0, 0x0($s1)
/* 94B34 800DE774 02001821 */  addu       $v1, $s0, $zero
/* 94B38 800DE778 AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800DE77C:
/* 94B3C 800DE77C 8C820004 */  lw         $v0, 0x4($a0)
/* 94B40 800DE780 24840004 */  addiu      $a0, $a0, 0x4
/* 94B44 800DE784 24A50001 */  addiu      $a1, $a1, 0x1
/* 94B48 800DE788 AC620004 */  sw         $v0, 0x4($v1)
/* 94B4C 800DE78C 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 94B50 800DE790 1440FFFA */  bnez       $v0, .Lrace_800DE77C
/* 94B54 800DE794 24630004 */   addiu     $v1, $v1, 0x4
/* 94B58 800DE798 8E220010 */  lw         $v0, 0x10($s1)
/* 94B5C 800DE79C AE020000 */  sw         $v0, 0x0($s0)
/* 94B60 800DE7A0 8E230014 */  lw         $v1, 0x14($s1)
/* 94B64 800DE7A4 24020004 */  addiu      $v0, $zero, 0x4
/* 94B68 800DE7A8 AE020014 */  sw         $v0, 0x14($s0)
/* 94B6C 800DE7AC AE030020 */  sw         $v1, 0x20($s0)
/* 94B70 800DE7B0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 94B74 800DE7B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 94B78 800DE7B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 94B7C 800DE7BC 03E00008 */  jr         $ra
/* 94B80 800DE7C0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DE7C4
/* 94B84 800DE7C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 94B88 800DE7C8 AFB00010 */  sw         $s0, 0x10($sp)
/* 94B8C 800DE7CC 00808021 */  addu       $s0, $a0, $zero
/* 94B90 800DE7D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 94B94 800DE7D4 8E02001C */  lw         $v0, 0x1C($s0)
/* 94B98 800DE7D8 00002821 */  addu       $a1, $zero, $zero
/* 94B9C 800DE7DC 84440020 */  lh         $a0, 0x20($v0)
/* 94BA0 800DE7E0 8C420024 */  lw         $v0, 0x24($v0)
/* 94BA4 800DE7E4 0040F809 */  jalr       $v0
/* 94BA8 800DE7E8 02042021 */   addu      $a0, $s0, $a0
/* 94BAC 800DE7EC 0C0379CE */  jal        func_race_800DE738
/* 94BB0 800DE7F0 02002021 */   addu      $a0, $s0, $zero
/* 94BB4 800DE7F4 0C035951 */  jal        func_race_800D6544
/* 94BB8 800DE7F8 02002021 */   addu      $a0, $s0, $zero
/* 94BBC 800DE7FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 94BC0 800DE800 8FB00010 */  lw         $s0, 0x10($sp)
/* 94BC4 800DE804 03E00008 */  jr         $ra
/* 94BC8 800DE808 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DE80C
/* 94BCC 800DE80C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 94BD0 800DE810 AFB00010 */  sw         $s0, 0x10($sp)
/* 94BD4 800DE814 00808021 */  addu       $s0, $a0, $zero
/* 94BD8 800DE818 AFBF0014 */  sw         $ra, 0x14($sp)
/* 94BDC 800DE81C 8E030020 */  lw         $v1, 0x20($s0)
/* 94BE0 800DE820 24020001 */  addiu      $v0, $zero, 0x1
/* 94BE4 800DE824 10620010 */  beq        $v1, $v0, .Lrace_800DE868
/* 94BE8 800DE828 00A02021 */   addu      $a0, $a1, $zero
/* 94BEC 800DE82C 28620002 */  slti       $v0, $v1, 0x2
/* 94BF0 800DE830 10400005 */  beqz       $v0, .Lrace_800DE848
/* 94BF4 800DE834 24020002 */   addiu     $v0, $zero, 0x2
/* 94BF8 800DE838 10600007 */  beqz       $v1, .Lrace_800DE858
/* 94BFC 800DE83C 00000000 */   nop
/* 94C00 800DE840 08037A21 */  j          .Lrace_800DE884
/* 94C04 800DE844 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DE848:
/* 94C08 800DE848 1062000B */  beq        $v1, $v0, .Lrace_800DE878
/* 94C0C 800DE84C 00000000 */   nop
/* 94C10 800DE850 08037A21 */  j          .Lrace_800DE884
/* 94C14 800DE854 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DE858:
/* 94C18 800DE858 0C0436A0 */  jal        func_race_8010DA80
/* 94C1C 800DE85C 00000000 */   nop
/* 94C20 800DE860 08037A21 */  j          .Lrace_800DE884
/* 94C24 800DE864 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DE868:
/* 94C28 800DE868 0C0436AB */  jal        func_race_8010DAAC
/* 94C2C 800DE86C 00000000 */   nop
/* 94C30 800DE870 08037A21 */  j          .Lrace_800DE884
/* 94C34 800DE874 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DE878:
/* 94C38 800DE878 0C0436CF */  jal        func_race_8010DB3C
/* 94C3C 800DE87C 00000000 */   nop
/* 94C40 800DE880 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DE884:
/* 94C44 800DE884 24050001 */  addiu      $a1, $zero, 0x1
/* 94C48 800DE888 0C03596C */  jal        func_race_800D65B0
/* 94C4C 800DE88C 00A03021 */   addu      $a2, $a1, $zero
/* 94C50 800DE890 8FBF0014 */  lw         $ra, 0x14($sp)
/* 94C54 800DE894 8FB00010 */  lw         $s0, 0x10($sp)
/* 94C58 800DE898 03E00008 */  jr         $ra
/* 94C5C 800DE89C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DE8A0
/* 94C60 800DE8A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 94C64 800DE8A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 94C68 800DE8A8 00808021 */  addu       $s0, $a0, $zero
/* 94C6C 800DE8AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 94C70 800DE8B0 8E050014 */  lw         $a1, 0x14($s0)
/* 94C74 800DE8B4 0C03596C */  jal        func_race_800D65B0
/* 94C78 800DE8B8 24060003 */   addiu     $a2, $zero, 0x3
/* 94C7C 800DE8BC 24020004 */  addiu      $v0, $zero, 0x4
/* 94C80 800DE8C0 AE020014 */  sw         $v0, 0x14($s0)
/* 94C84 800DE8C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 94C88 800DE8C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 94C8C 800DE8CC 03E00008 */  jr         $ra
/* 94C90 800DE8D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DE8D4
/* 94C94 800DE8D4 8C820020 */  lw         $v0, 0x20($a0)
/* 94C98 800DE8D8 03E00008 */  jr         $ra
/* 94C9C 800DE8DC 00000000 */   nop

glabel func_race_800DE8E0
/* 94CA0 800DE8E0 03E00008 */  jr         $ra
/* 94CA4 800DE8E4 24020008 */   addiu     $v0, $zero, 0x8
