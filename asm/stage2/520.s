.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8006D830
/* 64B60 8006D830 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 64B64 8006D834 AFB00010 */  sw         $s0, 0x10($sp)
/* 64B68 8006D838 AFBF0014 */  sw         $ra, 0x14($sp)
/* 64B6C 8006D83C 0C014FF8 */  jal        func_80053FE0
/* 64B70 8006D840 00808021 */   addu      $s0, $a0, $zero
/* 64B74 8006D844 02001021 */  addu       $v0, $s0, $zero
/* 64B78 8006D848 3C038004 */  lui        $v1, %hi(D_8003EE68)
/* 64B7C 8006D84C 2463EE68 */  addiu      $v1, $v1, %lo(D_8003EE68)
/* 64B80 8006D850 AC430008 */  sw         $v1, 0x8($v0)
/* 64B84 8006D854 AC400018 */  sw         $zero, 0x18($v0)
/* 64B88 8006D858 8FBF0014 */  lw         $ra, 0x14($sp)
/* 64B8C 8006D85C 8FB00010 */  lw         $s0, 0x10($sp)
/* 64B90 8006D860 03E00008 */  jr         $ra
/* 64B94 8006D864 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006D868
/* 64B98 8006D868 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 64B9C 8006D86C AFB00010 */  sw         $s0, 0x10($sp)
/* 64BA0 8006D870 00808021 */  addu       $s0, $a0, $zero
/* 64BA4 8006D874 AFB10014 */  sw         $s1, 0x14($sp)
/* 64BA8 8006D878 00A08821 */  addu       $s1, $a1, $zero
/* 64BAC 8006D87C 3C028004 */  lui        $v0, %hi(D_8003EE68)
/* 64BB0 8006D880 2442EE68 */  addiu      $v0, $v0, %lo(D_8003EE68)
/* 64BB4 8006D884 AFBF0018 */  sw         $ra, 0x18($sp)
/* 64BB8 8006D888 0C01B65D */  jal        func_8006D974
/* 64BBC 8006D88C AE020008 */   sw        $v0, 0x8($s0)
/* 64BC0 8006D890 02002021 */  addu       $a0, $s0, $zero
/* 64BC4 8006D894 0C015008 */  jal        func_80054020
/* 64BC8 8006D898 02202821 */   addu      $a1, $s1, $zero
/* 64BCC 8006D89C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 64BD0 8006D8A0 8FB10014 */  lw         $s1, 0x14($sp)
/* 64BD4 8006D8A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 64BD8 8006D8A8 03E00008 */  jr         $ra
/* 64BDC 8006D8AC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006D8B0
/* 64BE0 8006D8B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 64BE4 8006D8B4 AFB40020 */  sw         $s4, 0x20($sp)
/* 64BE8 8006D8B8 0080A021 */  addu       $s4, $a0, $zero
/* 64BEC 8006D8BC 3C028008 */  lui        $v0, %hi(D_80085E70)
/* 64BF0 8006D8C0 8C445E70 */  lw         $a0, %lo(D_80085E70)($v0)
/* 64BF4 8006D8C4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 64BF8 8006D8C8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 64BFC 8006D8CC AFB20018 */  sw         $s2, 0x18($sp)
/* 64C00 8006D8D0 AFB10014 */  sw         $s1, 0x14($sp)
/* 64C04 8006D8D4 0C01FB65 */  jal        func_8007ED94
/* 64C08 8006D8D8 AFB00010 */   sw        $s0, 0x10($sp)
/* 64C0C 8006D8DC 8E900014 */  lw         $s0, 0x14($s4)
/* 64C10 8006D8E0 00102080 */  sll        $a0, $s0, 2
/* 64C14 8006D8E4 00902021 */  addu       $a0, $a0, $s0
/* 64C18 8006D8E8 00042080 */  sll        $a0, $a0, 2
/* 64C1C 8006D8EC 00902021 */  addu       $a0, $a0, $s0
/* 64C20 8006D8F0 00042080 */  sll        $a0, $a0, 2
/* 64C24 8006D8F4 0C00943C */  jal        func_800250F0
/* 64C28 8006D8F8 24840008 */   addiu     $a0, $a0, 0x8
/* 64C2C 8006D8FC 24420008 */  addiu      $v0, $v0, 0x8
/* 64C30 8006D900 00409821 */  addu       $s3, $v0, $zero
/* 64C34 8006D904 02609021 */  addu       $s2, $s3, $zero
/* 64C38 8006D908 2611FFFF */  addiu      $s1, $s0, -0x1
/* 64C3C 8006D90C 06200007 */  bltz       $s1, .L8006D92C
/* 64C40 8006D910 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 64C44 8006D914 2410FFFF */  addiu      $s0, $zero, -0x1
.L8006D918:
/* 64C48 8006D918 0C01B214 */  jal        func_8006C850
/* 64C4C 8006D91C 02402021 */   addu      $a0, $s2, $zero
/* 64C50 8006D920 2631FFFF */  addiu      $s1, $s1, -0x1
/* 64C54 8006D924 1630FFFC */  bne        $s1, $s0, .L8006D918
/* 64C58 8006D928 26520054 */   addiu     $s2, $s2, 0x54
.L8006D92C:
/* 64C5C 8006D92C 0C01FB72 */  jal        func_8007EDC8
/* 64C60 8006D930 AE930018 */   sw        $s3, 0x18($s4)
/* 64C64 8006D934 8E820018 */  lw         $v0, 0x18($s4)
/* 64C68 8006D938 14400006 */  bnez       $v0, .L8006D954
/* 64C6C 8006D93C 3C048004 */   lui       $a0, %hi(D_8003EE60)
/* 64C70 8006D940 2484EE60 */  addiu      $a0, $a0, %lo(D_8003EE60)
/* 64C74 8006D944 00002821 */  addu       $a1, $zero, $zero
/* 64C78 8006D948 00A03021 */  addu       $a2, $a1, $zero
/* 64C7C 8006D94C 0C011ACF */  jal        func_80046B3C
/* 64C80 8006D950 00A03821 */   addu      $a3, $a1, $zero
.L8006D954:
/* 64C84 8006D954 8FBF0024 */  lw         $ra, 0x24($sp)
/* 64C88 8006D958 8FB40020 */  lw         $s4, 0x20($sp)
/* 64C8C 8006D95C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 64C90 8006D960 8FB20018 */  lw         $s2, 0x18($sp)
/* 64C94 8006D964 8FB10014 */  lw         $s1, 0x14($sp)
/* 64C98 8006D968 8FB00010 */  lw         $s0, 0x10($sp)
/* 64C9C 8006D96C 03E00008 */  jr         $ra
/* 64CA0 8006D970 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006D974
/* 64CA4 8006D974 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 64CA8 8006D978 AFB10014 */  sw         $s1, 0x14($sp)
/* 64CAC 8006D97C 00808821 */  addu       $s1, $a0, $zero
/* 64CB0 8006D980 AFBF0018 */  sw         $ra, 0x18($sp)
/* 64CB4 8006D984 AFB00010 */  sw         $s0, 0x10($sp)
/* 64CB8 8006D988 8E240018 */  lw         $a0, 0x18($s1)
/* 64CBC 8006D98C 10800017 */  beqz       $a0, .L8006D9EC
/* 64CC0 8006D990 00000000 */   nop
/* 64CC4 8006D994 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 64CC8 8006D998 00031080 */  sll        $v0, $v1, 2
/* 64CCC 8006D99C 00431021 */  addu       $v0, $v0, $v1
/* 64CD0 8006D9A0 00021080 */  sll        $v0, $v0, 2
/* 64CD4 8006D9A4 00431021 */  addu       $v0, $v0, $v1
/* 64CD8 8006D9A8 00021080 */  sll        $v0, $v0, 2
/* 64CDC 8006D9AC 00828021 */  addu       $s0, $a0, $v0
/* 64CE0 8006D9B0 1090000B */  beq        $a0, $s0, .L8006D9E0
/* 64CE4 8006D9B4 2610FFAC */   addiu     $s0, $s0, -0x54
.L8006D9B8:
/* 64CE8 8006D9B8 8E02004C */  lw         $v0, 0x4C($s0)
/* 64CEC 8006D9BC 24050002 */  addiu      $a1, $zero, 0x2
/* 64CF0 8006D9C0 84440030 */  lh         $a0, 0x30($v0)
/* 64CF4 8006D9C4 8C420034 */  lw         $v0, 0x34($v0)
/* 64CF8 8006D9C8 0040F809 */  jalr       $v0
/* 64CFC 8006D9CC 02042021 */   addu      $a0, $s0, $a0
/* 64D00 8006D9D0 8E220018 */  lw         $v0, 0x18($s1)
/* 64D04 8006D9D4 1450FFF8 */  bne        $v0, $s0, .L8006D9B8
/* 64D08 8006D9D8 2610FFAC */   addiu     $s0, $s0, -0x54
/* 64D0C 8006D9DC 8E240018 */  lw         $a0, 0x18($s1)
.L8006D9E0:
/* 64D10 8006D9E0 0C009444 */  jal        func_80025110
/* 64D14 8006D9E4 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 64D18 8006D9E8 AE200018 */  sw         $zero, 0x18($s1)
.L8006D9EC:
/* 64D1C 8006D9EC 0C01516A */  jal        func_800545A8
/* 64D20 8006D9F0 02202021 */   addu      $a0, $s1, $zero
/* 64D24 8006D9F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 64D28 8006D9F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 64D2C 8006D9FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 64D30 8006DA00 03E00008 */  jr         $ra
/* 64D34 8006DA04 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006DA08
/* 64D38 8006DA08 00051080 */  sll        $v0, $a1, 2
/* 64D3C 8006DA0C 00451021 */  addu       $v0, $v0, $a1
/* 64D40 8006DA10 00021080 */  sll        $v0, $v0, 2
/* 64D44 8006DA14 00451021 */  addu       $v0, $v0, $a1
/* 64D48 8006DA18 8C830018 */  lw         $v1, 0x18($a0)
/* 64D4C 8006DA1C 00021080 */  sll        $v0, $v0, 2
/* 64D50 8006DA20 03E00008 */  jr         $ra
/* 64D54 8006DA24 00621021 */   addu      $v0, $v1, $v0

glabel func_8006DA28
/* 64D58 8006DA28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 64D5C 8006DA2C AFB20018 */  sw         $s2, 0x18($sp)
/* 64D60 8006DA30 00809021 */  addu       $s2, $a0, $zero
/* 64D64 8006DA34 AFBF001C */  sw         $ra, 0x1C($sp)
/* 64D68 8006DA38 AFB10014 */  sw         $s1, 0x14($sp)
/* 64D6C 8006DA3C AFB00010 */  sw         $s0, 0x10($sp)
/* 64D70 8006DA40 8E420014 */  lw         $v0, 0x14($s2)
/* 64D74 8006DA44 10400014 */  beqz       $v0, .L8006DA98
/* 64D78 8006DA48 00008821 */   addu      $s1, $zero, $zero
/* 64D7C 8006DA4C 02208021 */  addu       $s0, $s1, $zero
.L8006DA50:
/* 64D80 8006DA50 8E420014 */  lw         $v0, 0x14($s2)
/* 64D84 8006DA54 0222102B */  sltu       $v0, $s1, $v0
/* 64D88 8006DA58 1040000F */  beqz       $v0, .L8006DA98
/* 64D8C 8006DA5C 00000000 */   nop
/* 64D90 8006DA60 8E420018 */  lw         $v0, 0x18($s2)
/* 64D94 8006DA64 02021821 */  addu       $v1, $s0, $v0
/* 64D98 8006DA68 8C620038 */  lw         $v0, 0x38($v1)
/* 64D9C 8006DA6C 30420001 */  andi       $v0, $v0, 0x1
/* 64DA0 8006DA70 50400007 */  beql       $v0, $zero, .L8006DA90
/* 64DA4 8006DA74 26100054 */   addiu     $s0, $s0, 0x54
/* 64DA8 8006DA78 8C62004C */  lw         $v0, 0x4C($v1)
/* 64DAC 8006DA7C 84440038 */  lh         $a0, 0x38($v0)
/* 64DB0 8006DA80 8C42003C */  lw         $v0, 0x3C($v0)
/* 64DB4 8006DA84 0040F809 */  jalr       $v0
/* 64DB8 8006DA88 00642021 */   addu      $a0, $v1, $a0
/* 64DBC 8006DA8C 26100054 */  addiu      $s0, $s0, 0x54
.L8006DA90:
/* 64DC0 8006DA90 0801B694 */  j          .L8006DA50
/* 64DC4 8006DA94 26310001 */   addiu     $s1, $s1, 0x1
.L8006DA98:
/* 64DC8 8006DA98 8FBF001C */  lw         $ra, 0x1C($sp)
/* 64DCC 8006DA9C 8FB20018 */  lw         $s2, 0x18($sp)
/* 64DD0 8006DAA0 8FB10014 */  lw         $s1, 0x14($sp)
/* 64DD4 8006DAA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 64DD8 8006DAA8 03E00008 */  jr         $ra
/* 64DDC 8006DAAC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006DAB0
/* 64DE0 8006DAB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 64DE4 8006DAB4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 64DE8 8006DAB8 0C01511D */  jal        func_80054474
/* 64DEC 8006DABC 00000000 */   nop
/* 64DF0 8006DAC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 64DF4 8006DAC4 03E00008 */  jr         $ra
/* 64DF8 8006DAC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006DACC
/* 64DFC 8006DACC 3C028008 */  lui        $v0, %hi(D_80085E70)
/* 64E00 8006DAD0 03E00008 */  jr         $ra
/* 64E04 8006DAD4 AC445E70 */   sw        $a0, %lo(D_80085E70)($v0)
