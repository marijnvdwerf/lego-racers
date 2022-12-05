.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8006B5E0
/* 62910 8006B5E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62914 8006B5E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 62918 8006B5E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6291C 8006B5EC 0C0130AC */  jal        func_8004C2B0
/* 62920 8006B5F0 00808021 */   addu      $s0, $a0, $zero
/* 62924 8006B5F4 02001021 */  addu       $v0, $s0, $zero
/* 62928 8006B5F8 3C038004 */  lui        $v1, %hi(D_8003ECB8)
/* 6292C 8006B5FC 2463ECB8 */  addiu      $v1, $v1, %lo(D_8003ECB8)
/* 62930 8006B600 AC43002C */  sw         $v1, 0x2C($v0)
/* 62934 8006B604 AC400038 */  sw         $zero, 0x38($v0)
/* 62938 8006B608 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6293C 8006B60C 8FB00010 */  lw         $s0, 0x10($sp)
/* 62940 8006B610 03E00008 */  jr         $ra
/* 62944 8006B614 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006B618
/* 62948 8006B618 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6294C 8006B61C AFB00010 */  sw         $s0, 0x10($sp)
/* 62950 8006B620 00808021 */  addu       $s0, $a0, $zero
/* 62954 8006B624 AFB10014 */  sw         $s1, 0x14($sp)
/* 62958 8006B628 00A08821 */  addu       $s1, $a1, $zero
/* 6295C 8006B62C 3C028004 */  lui        $v0, %hi(D_8003ECB8)
/* 62960 8006B630 2442ECB8 */  addiu      $v0, $v0, %lo(D_8003ECB8)
/* 62964 8006B634 AFBF0018 */  sw         $ra, 0x18($sp)
/* 62968 8006B638 0C01ADFA */  jal        func_8006B7E8
/* 6296C 8006B63C AE02002C */   sw        $v0, 0x2C($s0)
/* 62970 8006B640 02002021 */  addu       $a0, $s0, $zero
/* 62974 8006B644 0C0130BB */  jal        func_8004C2EC
/* 62978 8006B648 02202821 */   addu      $a1, $s1, $zero
/* 6297C 8006B64C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 62980 8006B650 8FB10014 */  lw         $s1, 0x14($sp)
/* 62984 8006B654 8FB00010 */  lw         $s0, 0x10($sp)
/* 62988 8006B658 03E00008 */  jr         $ra
/* 6298C 8006B65C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006B660
/* 62990 8006B660 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 62994 8006B664 AFB00010 */  sw         $s0, 0x10($sp)
/* 62998 8006B668 00808021 */  addu       $s0, $a0, $zero
/* 6299C 8006B66C AFB40020 */  sw         $s4, 0x20($sp)
/* 629A0 8006B670 00A0A021 */  addu       $s4, $a1, $zero
/* 629A4 8006B674 AFB10014 */  sw         $s1, 0x14($sp)
/* 629A8 8006B678 00C08821 */  addu       $s1, $a2, $zero
/* 629AC 8006B67C AFBF0024 */  sw         $ra, 0x24($sp)
/* 629B0 8006B680 AFB3001C */  sw         $s3, 0x1C($sp)
/* 629B4 8006B684 AFB20018 */  sw         $s2, 0x18($sp)
/* 629B8 8006B688 96020022 */  lhu        $v0, 0x22($s0)
/* 629BC 8006B68C 30420001 */  andi       $v0, $v0, 0x1
/* 629C0 8006B690 10400006 */  beqz       $v0, .L8006B6AC
/* 629C4 8006B694 00E09021 */   addu      $s2, $a3, $zero
/* 629C8 8006B698 8E02002C */  lw         $v0, 0x2C($s0)
/* 629CC 8006B69C 84440078 */  lh         $a0, 0x78($v0)
/* 629D0 8006B6A0 8C42007C */  lw         $v0, 0x7C($v0)
/* 629D4 8006B6A4 0040F809 */  jalr       $v0
/* 629D8 8006B6A8 02042021 */   addu      $a0, $s0, $a0
.L8006B6AC:
/* 629DC 8006B6AC 3C138008 */  lui        $s3, %hi(D_80085E40)
/* 629E0 8006B6B0 24020001 */  addiu      $v0, $zero, 0x1
/* 629E4 8006B6B4 A6110026 */  sh         $s1, 0x26($s0)
/* 629E8 8006B6B8 3223FFFF */  andi       $v1, $s1, 0xFFFF
/* 629EC 8006B6BC A6020022 */  sh         $v0, 0x22($s0)
/* 629F0 8006B6C0 3402F800 */  ori        $v0, $zero, 0xF800
/* 629F4 8006B6C4 AE140030 */  sw         $s4, 0x30($s0)
/* 629F8 8006B6C8 A6120028 */  sh         $s2, 0x28($s0)
/* 629FC 8006B6CC AE000038 */  sw         $zero, 0x38($s0)
/* 62A00 8006B6D0 AE020000 */  sw         $v0, 0x0($s0)
/* 62A04 8006B6D4 8FA20038 */  lw         $v0, 0x38($sp)
/* 62A08 8006B6D8 8E645E40 */  lw         $a0, %lo(D_80085E40)($s3)
/* 62A0C 8006B6DC 00620018 */  mult       $v1, $v0
/* 62A10 8006B6E0 240207C0 */  addiu      $v0, $zero, 0x7C0
/* 62A14 8006B6E4 AE020004 */  sw         $v0, 0x4($s0)
/* 62A18 8006B6E8 2402003E */  addiu      $v0, $zero, 0x3E
/* 62A1C 8006B6EC AE020008 */  sw         $v0, 0x8($s0)
/* 62A20 8006B6F0 00001812 */  mflo       $v1
/* 62A24 8006B6F4 000310C2 */  srl        $v0, $v1, 3
/* 62A28 8006B6F8 A6020020 */  sh         $v0, 0x20($s0)
/* 62A2C 8006B6FC 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* 62A30 8006B700 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* 62A34 8006B704 00A20018 */  mult       $a1, $v0
/* 62A38 8006B708 24030001 */  addiu      $v1, $zero, 0x1
/* 62A3C 8006B70C 24020010 */  addiu      $v0, $zero, 0x10
/* 62A40 8006B710 AE03000C */  sw         $v1, 0xC($s0)
/* 62A44 8006B714 00009012 */  mflo       $s2
/* 62A48 8006B718 0C01FB65 */  jal        func_8007ED94
/* 62A4C 8006B71C A6020016 */   sh        $v0, 0x16($s0)
/* 62A50 8006B720 0C00943C */  jal        func_800250F0
/* 62A54 8006B724 02402021 */   addu      $a0, $s2, $zero
/* 62A58 8006B728 0C01FB72 */  jal        func_8007EDC8
/* 62A5C 8006B72C AE020018 */   sw        $v0, 0x18($s0)
/* 62A60 8006B730 8E020018 */  lw         $v0, 0x18($s0)
/* 62A64 8006B734 14400007 */  bnez       $v0, .L8006B754
/* 62A68 8006B738 00002821 */   addu      $a1, $zero, $zero
/* 62A6C 8006B73C 3C048004 */  lui        $a0, %hi(D_8003ECB0)
/* 62A70 8006B740 2484ECB0 */  addiu      $a0, $a0, %lo(D_8003ECB0)
/* 62A74 8006B744 00A03021 */  addu       $a2, $a1, $zero
/* 62A78 8006B748 0C011ACF */  jal        func_80046B3C
/* 62A7C 8006B74C 00A03821 */   addu      $a3, $a1, $zero
/* 62A80 8006B750 00002821 */  addu       $a1, $zero, $zero
.L8006B754:
/* 62A84 8006B754 8E040018 */  lw         $a0, 0x18($s0)
/* 62A88 8006B758 0C000697 */  jal        func_80001A5C
/* 62A8C 8006B75C 02403021 */   addu      $a2, $s2, $zero
/* 62A90 8006B760 34028000 */  ori        $v0, $zero, 0x8000
/* 62A94 8006B764 02828821 */  addu       $s1, $s4, $v0
/* 62A98 8006B768 8E22493C */  lw         $v0, 0x493C($s1)
/* 62A9C 8006B76C 10400004 */  beqz       $v0, .L8006B780
/* 62AA0 8006B770 00000000 */   nop
/* 62AA4 8006B774 0C0081E8 */  jal        osViBlack
/* 62AA8 8006B778 00002021 */   addu      $a0, $zero, $zero
/* 62AAC 8006B77C AE20493C */  sw         $zero, 0x493C($s1)
.L8006B780:
/* 62AB0 8006B780 8E040018 */  lw         $a0, 0x18($s0)
/* 62AB4 8006B784 0C008110 */  jal        osViSwapBuffer
/* 62AB8 8006B788 00000000 */   nop
/* 62ABC 8006B78C 8E645E40 */  lw         $a0, %lo(D_80085E40)($s3)
/* 62AC0 8006B790 0C01FB65 */  jal        func_8007ED94
/* 62AC4 8006B794 00000000 */   nop
/* 62AC8 8006B798 0C00943C */  jal        func_800250F0
/* 62ACC 8006B79C 02402021 */   addu      $a0, $s2, $zero
/* 62AD0 8006B7A0 0C01FB72 */  jal        func_8007EDC8
/* 62AD4 8006B7A4 AE020038 */   sw        $v0, 0x38($s0)
/* 62AD8 8006B7A8 8E020038 */  lw         $v0, 0x38($s0)
/* 62ADC 8006B7AC 14400006 */  bnez       $v0, .L8006B7C8
/* 62AE0 8006B7B0 3C048004 */   lui       $a0, %hi(D_8003ECB0)
/* 62AE4 8006B7B4 2484ECB0 */  addiu      $a0, $a0, %lo(D_8003ECB0)
/* 62AE8 8006B7B8 00002821 */  addu       $a1, $zero, $zero
/* 62AEC 8006B7BC 00A03021 */  addu       $a2, $a1, $zero
/* 62AF0 8006B7C0 0C011ACF */  jal        func_80046B3C
/* 62AF4 8006B7C4 00A03821 */   addu      $a3, $a1, $zero
.L8006B7C8:
/* 62AF8 8006B7C8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 62AFC 8006B7CC 8FB40020 */  lw         $s4, 0x20($sp)
/* 62B00 8006B7D0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 62B04 8006B7D4 8FB20018 */  lw         $s2, 0x18($sp)
/* 62B08 8006B7D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 62B0C 8006B7DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 62B10 8006B7E0 03E00008 */  jr         $ra
/* 62B14 8006B7E4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006B7E8
/* 62B18 8006B7E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62B1C 8006B7EC AFB00010 */  sw         $s0, 0x10($sp)
/* 62B20 8006B7F0 00808021 */  addu       $s0, $a0, $zero
/* 62B24 8006B7F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 62B28 8006B7F8 8E040038 */  lw         $a0, 0x38($s0)
/* 62B2C 8006B7FC 10800004 */  beqz       $a0, .L8006B810
/* 62B30 8006B800 00000000 */   nop
/* 62B34 8006B804 0C009444 */  jal        func_80025110
/* 62B38 8006B808 00000000 */   nop
/* 62B3C 8006B80C AE000038 */  sw         $zero, 0x38($s0)
.L8006B810:
/* 62B40 8006B810 8E040018 */  lw         $a0, 0x18($s0)
/* 62B44 8006B814 50800005 */  beql       $a0, $zero, .L8006B82C
/* 62B48 8006B818 02002021 */   addu      $a0, $s0, $zero
/* 62B4C 8006B81C 0C009444 */  jal        func_80025110
/* 62B50 8006B820 00000000 */   nop
/* 62B54 8006B824 AE000018 */  sw         $zero, 0x18($s0)
/* 62B58 8006B828 02002021 */  addu       $a0, $s0, $zero
.L8006B82C:
/* 62B5C 8006B82C A4800026 */  sh         $zero, 0x26($a0)
/* 62B60 8006B830 A4800028 */  sh         $zero, 0x28($a0)
/* 62B64 8006B834 0C0130D3 */  jal        func_8004C34C
/* 62B68 8006B838 A4800020 */   sh        $zero, 0x20($a0)
/* 62B6C 8006B83C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 62B70 8006B840 8FB00010 */  lw         $s0, 0x10($sp)
/* 62B74 8006B844 03E00008 */  jr         $ra
/* 62B78 8006B848 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006B84C
/* 62B7C 8006B84C 3C028008 */  lui        $v0, %hi(D_80085E40)
/* 62B80 8006B850 03E00008 */  jr         $ra
/* 62B84 8006B854 AC445E40 */   sw        $a0, %lo(D_80085E40)($v0)

glabel func_8006B858
/* 62B88 8006B858 8C820038 */  lw         $v0, 0x38($a0)
/* 62B8C 8006B85C 8C830018 */  lw         $v1, 0x18($a0)
/* 62B90 8006B860 AC820018 */  sw         $v0, 0x18($a0)
/* 62B94 8006B864 03E00008 */  jr         $ra
/* 62B98 8006B868 AC830038 */   sw        $v1, 0x38($a0)

glabel func_8006B86C
/* 62B9C 8006B86C 94820020 */  lhu        $v0, 0x20($a0)
/* 62BA0 8006B870 ACC20000 */  sw         $v0, 0x0($a2)
/* 62BA4 8006B874 8C820038 */  lw         $v0, 0x38($a0)
/* 62BA8 8006B878 ACA20000 */  sw         $v0, 0x0($a1)
/* 62BAC 8006B87C 94830022 */  lhu        $v1, 0x22($a0)
/* 62BB0 8006B880 34620002 */  ori        $v0, $v1, 0x2
/* 62BB4 8006B884 A4820022 */  sh         $v0, 0x22($a0)
/* 62BB8 8006B888 30E20001 */  andi       $v0, $a3, 0x1
/* 62BBC 8006B88C 10400002 */  beqz       $v0, .L8006B898
/* 62BC0 8006B890 3462000A */   ori       $v0, $v1, 0xA
/* 62BC4 8006B894 A4820022 */  sh         $v0, 0x22($a0)
.L8006B898:
/* 62BC8 8006B898 30E20002 */  andi       $v0, $a3, 0x2
/* 62BCC 8006B89C 10400004 */  beqz       $v0, .L8006B8B0
/* 62BD0 8006B8A0 00000000 */   nop
/* 62BD4 8006B8A4 94820022 */  lhu        $v0, 0x22($a0)
/* 62BD8 8006B8A8 34420010 */  ori        $v0, $v0, 0x10
/* 62BDC 8006B8AC A4820022 */  sh         $v0, 0x22($a0)
.L8006B8B0:
/* 62BE0 8006B8B0 03E00008 */  jr         $ra
/* 62BE4 8006B8B4 00000000 */   nop

glabel func_8006B8B8
/* 62BE8 8006B8B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62BEC 8006B8BC 00801021 */  addu       $v0, $a0, $zero
/* 62BF0 8006B8C0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 62BF4 8006B8C4 94430020 */  lhu        $v1, 0x20($v0)
/* 62BF8 8006B8C8 94460028 */  lhu        $a2, 0x28($v0)
/* 62BFC 8006B8CC 00660018 */  mult       $v1, $a2
/* 62C00 8006B8D0 8C440038 */  lw         $a0, 0x38($v0)
/* 62C04 8006B8D4 8C450018 */  lw         $a1, 0x18($v0)
/* 62C08 8006B8D8 00003012 */  mflo       $a2
/* 62C0C 8006B8DC 0C006E07 */  jal        strncpy
/* 62C10 8006B8E0 00000000 */   nop
/* 62C14 8006B8E4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 62C18 8006B8E8 03E00008 */  jr         $ra
/* 62C1C 8006B8EC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006B8F0
/* 62C20 8006B8F0 94830026 */  lhu        $v1, 0x26($a0)
/* 62C24 8006B8F4 94820028 */  lhu        $v0, 0x28($a0)
/* 62C28 8006B8F8 00620018 */  mult       $v1, $v0
/* 62C2C 8006B8FC 8C830018 */  lw         $v1, 0x18($a0)
/* 62C30 8006B900 00003812 */  mflo       $a3
/* 62C34 8006B904 00071043 */  sra        $v0, $a3, 1
/* 62C38 8006B908 00021080 */  sll        $v0, $v0, 2
/* 62C3C 8006B90C 00623021 */  addu       $a2, $v1, $v0
/* 62C40 8006B910 00051400 */  sll        $v0, $a1, 16
/* 62C44 8006B914 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 62C48 8006B918 00452825 */  or         $a1, $v0, $a1
/* 62C4C 8006B91C 0066102B */  sltu       $v0, $v1, $a2
/* 62C50 8006B920 10400006 */  beqz       $v0, .L8006B93C
/* 62C54 8006B924 00000000 */   nop
/* 62C58 8006B928 AC650000 */  sw         $a1, 0x0($v1)
.L8006B92C:
/* 62C5C 8006B92C 24630004 */  addiu      $v1, $v1, 0x4
/* 62C60 8006B930 0066102B */  sltu       $v0, $v1, $a2
/* 62C64 8006B934 5440FFFD */  bnel       $v0, $zero, .L8006B92C
/* 62C68 8006B938 AC650000 */   sw        $a1, 0x0($v1)
.L8006B93C:
/* 62C6C 8006B93C 94830026 */  lhu        $v1, 0x26($a0)
/* 62C70 8006B940 94820028 */  lhu        $v0, 0x28($a0)
/* 62C74 8006B944 00620018 */  mult       $v1, $v0
/* 62C78 8006B948 8C830038 */  lw         $v1, 0x38($a0)
/* 62C7C 8006B94C 00003812 */  mflo       $a3
/* 62C80 8006B950 00071043 */  sra        $v0, $a3, 1
/* 62C84 8006B954 00021080 */  sll        $v0, $v0, 2
/* 62C88 8006B958 00623021 */  addu       $a2, $v1, $v0
/* 62C8C 8006B95C 0066102B */  sltu       $v0, $v1, $a2
/* 62C90 8006B960 10400006 */  beqz       $v0, .L8006B97C
/* 62C94 8006B964 00000000 */   nop
/* 62C98 8006B968 AC650000 */  sw         $a1, 0x0($v1)
.L8006B96C:
/* 62C9C 8006B96C 24630004 */  addiu      $v1, $v1, 0x4
/* 62CA0 8006B970 0066102B */  sltu       $v0, $v1, $a2
/* 62CA4 8006B974 5440FFFD */  bnel       $v0, $zero, .L8006B96C
/* 62CA8 8006B978 AC650000 */   sw        $a1, 0x0($v1)
.L8006B97C:
/* 62CAC 8006B97C 03E00008 */  jr         $ra
/* 62CB0 8006B980 00000000 */   nop
