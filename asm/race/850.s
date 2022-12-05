.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801269F0
/* DCDB0 801269F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DCDB4 801269F4 AFB00010 */  sw         $s0, 0x10($sp)
/* DCDB8 801269F8 00808021 */  addu       $s0, $a0, $zero
/* DCDBC 801269FC AFBF0018 */  sw         $ra, 0x18($sp)
/* DCDC0 80126A00 0C04B5C4 */  jal        func_race_8012D710
/* DCDC4 80126A04 AFB10014 */   sw        $s1, 0x14($sp)
/* DCDC8 80126A08 26110030 */  addiu      $s1, $s0, 0x30
/* DCDCC 80126A0C 02202021 */  addu       $a0, $s1, $zero
/* DCDD0 80126A10 3C02800D */  lui        $v0, %hi(D_race_800CEB88)
/* DCDD4 80126A14 2442EB88 */  addiu      $v0, $v0, %lo(D_race_800CEB88)
/* DCDD8 80126A18 0C03D9F4 */  jal        func_race_800F67D0
/* DCDDC 80126A1C AE020000 */   sw        $v0, 0x0($s0)
/* DCDE0 80126A20 0C01955C */  jal        func_80065570
/* DCDE4 80126A24 26040128 */   addiu     $a0, $s0, 0x128
/* DCDE8 80126A28 02001021 */  addu       $v0, $s0, $zero
/* DCDEC 80126A2C AC510018 */  sw         $s1, 0x18($v0)
/* DCDF0 80126A30 AC40021C */  sw         $zero, 0x21C($v0)
/* DCDF4 80126A34 AC400124 */  sw         $zero, 0x124($v0)
/* DCDF8 80126A38 8FBF0018 */  lw         $ra, 0x18($sp)
/* DCDFC 80126A3C 8FB10014 */  lw         $s1, 0x14($sp)
/* DCE00 80126A40 8FB00010 */  lw         $s0, 0x10($sp)
/* DCE04 80126A44 03E00008 */  jr         $ra
/* DCE08 80126A48 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80126A4C
/* DCE0C 80126A4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DCE10 80126A50 AFB00010 */  sw         $s0, 0x10($sp)
/* DCE14 80126A54 00808021 */  addu       $s0, $a0, $zero
/* DCE18 80126A58 AFB10014 */  sw         $s1, 0x14($sp)
/* DCE1C 80126A5C 00A08821 */  addu       $s1, $a1, $zero
/* DCE20 80126A60 3C02800D */  lui        $v0, %hi(D_race_800CEB88)
/* DCE24 80126A64 2442EB88 */  addiu      $v0, $v0, %lo(D_race_800CEB88)
/* DCE28 80126A68 AFBF0018 */  sw         $ra, 0x18($sp)
/* DCE2C 80126A6C 0C049ABE */  jal        func_race_80126AF8
/* DCE30 80126A70 AE020000 */   sw        $v0, 0x0($s0)
/* DCE34 80126A74 26040030 */  addiu      $a0, $s0, 0x30
/* DCE38 80126A78 0C040B2D */  jal        func_race_80102CB4
/* DCE3C 80126A7C 24050002 */   addiu     $a1, $zero, 0x2
/* DCE40 80126A80 02002021 */  addu       $a0, $s0, $zero
/* DCE44 80126A84 0C047E8A */  jal        func_race_8011FA28
/* DCE48 80126A88 02202821 */   addu      $a1, $s1, $zero
/* DCE4C 80126A8C 8FBF0018 */  lw         $ra, 0x18($sp)
/* DCE50 80126A90 8FB10014 */  lw         $s1, 0x14($sp)
/* DCE54 80126A94 8FB00010 */  lw         $s0, 0x10($sp)
/* DCE58 80126A98 03E00008 */  jr         $ra
/* DCE5C 80126A9C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80126AA0
/* DCE60 80126AA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DCE64 80126AA4 AFB00010 */  sw         $s0, 0x10($sp)
/* DCE68 80126AA8 00808021 */  addu       $s0, $a0, $zero
/* DCE6C 80126AAC AFB10014 */  sw         $s1, 0x14($sp)
/* DCE70 80126AB0 00A08821 */  addu       $s1, $a1, $zero
/* DCE74 80126AB4 AFBF001C */  sw         $ra, 0x1C($sp)
/* DCE78 80126AB8 AFB20018 */  sw         $s2, 0x18($sp)
/* DCE7C 80126ABC 8E020004 */  lw         $v0, 0x4($s0)
/* DCE80 80126AC0 10400003 */  beqz       $v0, .Lrace_80126AD0
/* DCE84 80126AC4 00C09021 */   addu      $s2, $a2, $zero
/* DCE88 80126AC8 0C049ABE */  jal        func_race_80126AF8
/* DCE8C 80126ACC 00000000 */   nop
.Lrace_80126AD0:
/* DCE90 80126AD0 24020001 */  addiu      $v0, $zero, 0x1
/* DCE94 80126AD4 AE11001C */  sw         $s1, 0x1C($s0)
/* DCE98 80126AD8 AE120020 */  sw         $s2, 0x20($s0)
/* DCE9C 80126ADC AE020004 */  sw         $v0, 0x4($s0)
/* DCEA0 80126AE0 8FBF001C */  lw         $ra, 0x1C($sp)
/* DCEA4 80126AE4 8FB20018 */  lw         $s2, 0x18($sp)
/* DCEA8 80126AE8 8FB10014 */  lw         $s1, 0x14($sp)
/* DCEAC 80126AEC 8FB00010 */  lw         $s0, 0x10($sp)
/* DCEB0 80126AF0 03E00008 */  jr         $ra
/* DCEB4 80126AF4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80126AF8
/* DCEB8 80126AF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DCEBC 80126AFC AFB00010 */  sw         $s0, 0x10($sp)
/* DCEC0 80126B00 00808021 */  addu       $s0, $a0, $zero
/* DCEC4 80126B04 AFBF0014 */  sw         $ra, 0x14($sp)
/* DCEC8 80126B08 8E020000 */  lw         $v0, 0x0($s0)
/* DCECC 80126B0C 84440040 */  lh         $a0, 0x40($v0)
/* DCED0 80126B10 8C420044 */  lw         $v0, 0x44($v0)
/* DCED4 80126B14 0040F809 */  jalr       $v0
/* DCED8 80126B18 02042021 */   addu      $a0, $s0, $a0
/* DCEDC 80126B1C AE000004 */  sw         $zero, 0x4($s0)
/* DCEE0 80126B20 AE00021C */  sw         $zero, 0x21C($s0)
/* DCEE4 80126B24 8FBF0014 */  lw         $ra, 0x14($sp)
/* DCEE8 80126B28 8FB00010 */  lw         $s0, 0x10($sp)
/* DCEEC 80126B2C 03E00008 */  jr         $ra
/* DCEF0 80126B30 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80126B34
/* DCEF4 80126B34 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* DCEF8 80126B38 AFB3003C */  sw         $s3, 0x3C($sp)
/* DCEFC 80126B3C 00809821 */  addu       $s3, $a0, $zero
/* DCF00 80126B40 AFB10034 */  sw         $s1, 0x34($sp)
/* DCF04 80126B44 00A08821 */  addu       $s1, $a1, $zero
/* DCF08 80126B48 24020002 */  addiu      $v0, $zero, 0x2
/* DCF0C 80126B4C AFBF0044 */  sw         $ra, 0x44($sp)
/* DCF10 80126B50 AFB40040 */  sw         $s4, 0x40($sp)
/* DCF14 80126B54 AFB20038 */  sw         $s2, 0x38($sp)
/* DCF18 80126B58 AFB00030 */  sw         $s0, 0x30($sp)
/* DCF1C 80126B5C AE620004 */  sw         $v0, 0x4($s3)
/* DCF20 80126B60 24020BB8 */  addiu      $v0, $zero, 0xBB8
/* DCF24 80126B64 8FB40058 */  lw         $s4, 0x58($sp)
/* DCF28 80126B68 00002821 */  addu       $a1, $zero, $zero
/* DCF2C 80126B6C AE620008 */  sw         $v0, 0x8($s3)
/* DCF30 80126B70 AE670024 */  sw         $a3, 0x24($s3)
/* DCF34 80126B74 AE600028 */  sw         $zero, 0x28($s3)
/* DCF38 80126B78 AE660124 */  sw         $a2, 0x124($s3)
/* DCF3C 80126B7C AE740220 */  sw         $s4, 0x220($s3)
/* DCF40 80126B80 8E220024 */  lw         $v0, 0x24($s1)
/* DCF44 80126B84 8E320078 */  lw         $s2, 0x78($s1)
/* DCF48 80126B88 844400B8 */  lh         $a0, 0xB8($v0)
/* DCF4C 80126B8C 8C4200BC */  lw         $v0, 0xBC($v0)
/* DCF50 80126B90 0040F809 */  jalr       $v0
/* DCF54 80126B94 02242021 */   addu      $a0, $s1, $a0
/* DCF58 80126B98 26700128 */  addiu      $s0, $s3, 0x128
/* DCF5C 80126B9C 02002021 */  addu       $a0, $s0, $zero
/* DCF60 80126BA0 02402821 */  addu       $a1, $s2, $zero
/* DCF64 80126BA4 8E2700A8 */  lw         $a3, 0xA8($s1)
/* DCF68 80126BA8 C6200084 */  lwc1       $f0, 0x84($s1)
/* DCF6C 80126BAC 00403021 */  addu       $a2, $v0, $zero
/* DCF70 80126BB0 0C01956B */  jal        func_800655AC
/* DCF74 80126BB4 E7A00010 */   swc1      $f0, 0x10($sp)
/* DCF78 80126BB8 8E620024 */  lw         $v0, 0x24($s3)
/* DCF7C 80126BBC 8C43005C */  lw         $v1, 0x5C($v0)
/* DCF80 80126BC0 27B10020 */  addiu      $s1, $sp, 0x20
/* DCF84 80126BC4 8C620024 */  lw         $v0, 0x24($v1)
/* DCF88 80126BC8 02202821 */  addu       $a1, $s1, $zero
/* DCF8C 80126BCC 84440010 */  lh         $a0, 0x10($v0)
/* DCF90 80126BD0 8C420014 */  lw         $v0, 0x14($v0)
/* DCF94 80126BD4 0040F809 */  jalr       $v0
/* DCF98 80126BD8 00642021 */   addu      $a0, $v1, $a0
/* DCF9C 80126BDC 02002021 */  addu       $a0, $s0, $zero
/* DCFA0 80126BE0 0C015962 */  jal        func_80056588
/* DCFA4 80126BE4 02202821 */   addu      $a1, $s1, $zero
/* DCFA8 80126BE8 8E620024 */  lw         $v0, 0x24($s3)
/* DCFAC 80126BEC 8C430538 */  lw         $v1, 0x538($v0)
/* DCFB0 80126BF0 8E02005C */  lw         $v0, 0x5C($s0)
/* DCFB4 80126BF4 C4600028 */  lwc1       $f0, 0x28($v1)
/* DCFB8 80126BF8 E6000028 */  swc1       $f0, 0x28($s0)
/* DCFBC 80126BFC C460002C */  lwc1       $f0, 0x2C($v1)
/* DCFC0 80126C00 E600002C */  swc1       $f0, 0x2C($s0)
/* DCFC4 80126C04 C4600030 */  lwc1       $f0, 0x30($v1)
/* DCFC8 80126C08 E6000030 */  swc1       $f0, 0x30($s0)
/* DCFCC 80126C0C C4600034 */  lwc1       $f0, 0x34($v1)
/* DCFD0 80126C10 E6000034 */  swc1       $f0, 0x34($s0)
/* DCFD4 80126C14 C4600038 */  lwc1       $f0, 0x38($v1)
/* DCFD8 80126C18 E6000038 */  swc1       $f0, 0x38($s0)
/* DCFDC 80126C1C C460003C */  lwc1       $f0, 0x3C($v1)
/* DCFE0 80126C20 02002021 */  addu       $a0, $s0, $zero
/* DCFE4 80126C24 E600003C */  swc1       $f0, 0x3C($s0)
/* DCFE8 80126C28 C4600040 */  lwc1       $f0, 0x40($v1)
/* DCFEC 80126C2C 02802821 */  addu       $a1, $s4, $zero
/* DCFF0 80126C30 E6000040 */  swc1       $f0, 0x40($s0)
/* DCFF4 80126C34 C4600044 */  lwc1       $f0, 0x44($v1)
/* DCFF8 80126C38 3C060001 */  lui        $a2, (0x10000 >> 16)
/* DCFFC 80126C3C E6000044 */  swc1       $f0, 0x44($s0)
/* DD000 80126C40 C4600048 */  lwc1       $f0, 0x48($v1)
/* DD004 80126C44 00461025 */  or         $v0, $v0, $a2
/* DD008 80126C48 AE02005C */  sw         $v0, 0x5C($s0)
/* DD00C 80126C4C 0C01971D */  jal        func_80065C74
/* DD010 80126C50 E6000048 */   swc1      $f0, 0x48($s0)
/* DD014 80126C54 3C03FFFB */  lui        $v1, (0xFFFBFFFF >> 16)
/* DD018 80126C58 3463FFFF */  ori        $v1, $v1, (0xFFFBFFFF & 0xFFFF)
/* DD01C 80126C5C 24050033 */  addiu      $a1, $zero, 0x33
/* DD020 80126C60 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DD024 80126C64 8E02005C */  lw         $v0, 0x5C($s0)
/* DD028 80126C68 3C01800D */  lui        $at, %hi(D_race_800CEB20)
/* DD02C 80126C6C C422EB20 */  lwc1       $f2, %lo(D_race_800CEB20)($at)
/* DD030 80126C70 3C01800D */  lui        $at, %hi(D_race_800CEB24)
/* DD034 80126C74 C420EB24 */  lwc1       $f0, %lo(D_race_800CEB24)($at)
/* DD038 80126C78 00431024 */  and        $v0, $v0, $v1
/* DD03C 80126C7C AE02005C */  sw         $v0, 0x5C($s0)
/* DD040 80126C80 E7A20010 */  swc1       $f2, 0x10($sp)
/* DD044 80126C84 E7A00014 */  swc1       $f0, 0x14($sp)
/* DD048 80126C88 E7A00018 */  swc1       $f0, 0x18($sp)
/* DD04C 80126C8C 8E640010 */  lw         $a0, 0x10($s3)
/* DD050 80126C90 0C046530 */  jal        func_race_801194C0
/* DD054 80126C94 02203021 */   addu      $a2, $s1, $zero
/* DD058 80126C98 8FBF0044 */  lw         $ra, 0x44($sp)
/* DD05C 80126C9C 8FB40040 */  lw         $s4, 0x40($sp)
/* DD060 80126CA0 8FB3003C */  lw         $s3, 0x3C($sp)
/* DD064 80126CA4 8FB20038 */  lw         $s2, 0x38($sp)
/* DD068 80126CA8 8FB10034 */  lw         $s1, 0x34($sp)
/* DD06C 80126CAC 8FB00030 */  lw         $s0, 0x30($sp)
/* DD070 80126CB0 03E00008 */  jr         $ra
/* DD074 80126CB4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_80126CB8
/* DD078 80126CB8 27BDFF38 */  addiu      $sp, $sp, -0xC8
/* DD07C 80126CBC AFB1009C */  sw         $s1, 0x9C($sp)
/* DD080 80126CC0 00808821 */  addu       $s1, $a0, $zero
/* DD084 80126CC4 AFBF00A4 */  sw         $ra, 0xA4($sp)
/* DD088 80126CC8 AFB200A0 */  sw         $s2, 0xA0($sp)
/* DD08C 80126CCC AFB00098 */  sw         $s0, 0x98($sp)
/* DD090 80126CD0 F7BA00C0 */  sdc1       $f26, 0xC0($sp)
/* DD094 80126CD4 F7B800B8 */  sdc1       $f24, 0xB8($sp)
/* DD098 80126CD8 F7B600B0 */  sdc1       $f22, 0xB0($sp)
/* DD09C 80126CDC F7B400A8 */  sdc1       $f20, 0xA8($sp)
/* DD0A0 80126CE0 8E220024 */  lw         $v0, 0x24($s1)
/* DD0A4 80126CE4 8C43005C */  lw         $v1, 0x5C($v0)
/* DD0A8 80126CE8 8C620024 */  lw         $v0, 0x24($v1)
/* DD0AC 80126CEC 27A50030 */  addiu      $a1, $sp, 0x30
/* DD0B0 80126CF0 84440010 */  lh         $a0, 0x10($v0)
/* DD0B4 80126CF4 8C420014 */  lw         $v0, 0x14($v0)
/* DD0B8 80126CF8 0040F809 */  jalr       $v0
/* DD0BC 80126CFC 00642021 */   addu      $a0, $v1, $a0
/* DD0C0 80126D00 8E220024 */  lw         $v0, 0x24($s1)
/* DD0C4 80126D04 3C01800D */  lui        $at, %hi(D_race_800CEB28)
/* DD0C8 80126D08 C438EB28 */  lwc1       $f24, %lo(D_race_800CEB28)($at)
/* DD0CC 80126D0C 3C01800D */  lui        $at, %hi(D_race_800CEB2C)
/* DD0D0 80126D10 C434EB2C */  lwc1       $f20, %lo(D_race_800CEB2C)($at)
/* DD0D4 80126D14 8C42005C */  lw         $v0, 0x5C($v0)
/* DD0D8 80126D18 3C01800D */  lui        $at, %hi(D_race_800CEB30)
/* DD0DC 80126D1C C436EB30 */  lwc1       $f22, %lo(D_race_800CEB30)($at)
/* DD0E0 80126D20 C4400028 */  lwc1       $f0, 0x28($v0)
/* DD0E4 80126D24 E7A00040 */  swc1       $f0, 0x40($sp)
/* DD0E8 80126D28 C440002C */  lwc1       $f0, 0x2C($v0)
/* DD0EC 80126D2C E7A00044 */  swc1       $f0, 0x44($sp)
/* DD0F0 80126D30 C4400030 */  lwc1       $f0, 0x30($v0)
/* DD0F4 80126D34 27A50030 */  addiu      $a1, $sp, 0x30
/* DD0F8 80126D38 E7A00048 */  swc1       $f0, 0x48($sp)
/* DD0FC 80126D3C 8E22001C */  lw         $v0, 0x1C($s1)
/* DD100 80126D40 4407C000 */  mfc1       $a3, $f24
/* DD104 80126D44 8C520074 */  lw         $s2, 0x74($v0)
/* DD108 80126D48 27A60040 */  addiu      $a2, $sp, 0x40
/* DD10C 80126D4C E7B40010 */  swc1       $f20, 0x10($sp)
/* DD110 80126D50 E7B60014 */  swc1       $f22, 0x14($sp)
/* DD114 80126D54 0C044421 */  jal        func_race_80111084
/* DD118 80126D58 02402021 */   addu      $a0, $s2, $zero
/* DD11C 80126D5C 8E230220 */  lw         $v1, 0x220($s1)
/* DD120 80126D60 00008021 */  addu       $s0, $zero, $zero
/* DD124 80126D64 10600013 */  beqz       $v1, .Lrace_80126DB4
/* DD128 80126D68 AE220028 */   sw        $v0, 0x28($s1)
/* DD12C 80126D6C 4600C686 */  mov.s      $f26, $f24
/* DD130 80126D70 4600A606 */  mov.s      $f24, $f20
/* DD134 80126D74 4600B506 */  mov.s      $f20, $f22
.Lrace_80126D78:
/* DD138 80126D78 8E220028 */  lw         $v0, 0x28($s1)
/* DD13C 80126D7C 1040000D */  beqz       $v0, .Lrace_80126DB4
/* DD140 80126D80 02402021 */   addu      $a0, $s2, $zero
/* DD144 80126D84 27A60030 */  addiu      $a2, $sp, 0x30
/* DD148 80126D88 E7BA0010 */  swc1       $f26, 0x10($sp)
/* DD14C 80126D8C E7B80014 */  swc1       $f24, 0x14($sp)
/* DD150 80126D90 E7B40018 */  swc1       $f20, 0x18($sp)
/* DD154 80126D94 8E250028 */  lw         $a1, 0x28($s1)
/* DD158 80126D98 0C044487 */  jal        func_race_8011121C
/* DD15C 80126D9C 27A70040 */   addiu     $a3, $sp, 0x40
/* DD160 80126DA0 8E230220 */  lw         $v1, 0x220($s1)
/* DD164 80126DA4 26100001 */  addiu      $s0, $s0, 0x1
/* DD168 80126DA8 0203182B */  sltu       $v1, $s0, $v1
/* DD16C 80126DAC 1460FFF2 */  bnez       $v1, .Lrace_80126D78
/* DD170 80126DB0 AE220028 */   sw        $v0, 0x28($s1)
.Lrace_80126DB4:
/* DD174 80126DB4 26220128 */  addiu      $v0, $s1, 0x128
/* DD178 80126DB8 AFA20060 */  sw         $v0, 0x60($sp)
/* DD17C 80126DBC 8E220020 */  lw         $v0, 0x20($s1)
/* DD180 80126DC0 3C01800D */  lui        $at, %hi(D_race_800CEB34)
/* DD184 80126DC4 C420EB34 */  lwc1       $f0, %lo(D_race_800CEB34)($at)
/* DD188 80126DC8 AFA20064 */  sw         $v0, 0x64($sp)
/* DD18C 80126DCC E7A00068 */  swc1       $f0, 0x68($sp)
/* DD190 80126DD0 8E22001C */  lw         $v0, 0x1C($s1)
/* DD194 80126DD4 3C01800D */  lui        $at, %hi(D_race_800CEB38)
/* DD198 80126DD8 C420EB38 */  lwc1       $f0, %lo(D_race_800CEB38)($at)
/* DD19C 80126DDC 8C430074 */  lw         $v1, 0x74($v0)
/* DD1A0 80126DE0 E7A0007C */  swc1       $f0, 0x7C($sp)
/* DD1A4 80126DE4 3C01800D */  lui        $at, %hi(D_race_800CEB3C)
/* DD1A8 80126DE8 C420EB3C */  lwc1       $f0, %lo(D_race_800CEB3C)($at)
/* DD1AC 80126DEC 2402157C */  addiu      $v0, $zero, 0x157C
/* DD1B0 80126DF0 AFA00070 */  sw         $zero, 0x70($sp)
/* DD1B4 80126DF4 AFA00074 */  sw         $zero, 0x74($sp)
/* DD1B8 80126DF8 AFA00078 */  sw         $zero, 0x78($sp)
/* DD1BC 80126DFC AFA20080 */  sw         $v0, 0x80($sp)
/* DD1C0 80126E00 246300F0 */  addiu      $v1, $v1, 0xF0
/* DD1C4 80126E04 E7A00084 */  swc1       $f0, 0x84($sp)
/* DD1C8 80126E08 AFA3006C */  sw         $v1, 0x6C($sp)
/* DD1CC 80126E0C 8E220028 */  lw         $v0, 0x28($s1)
/* DD1D0 80126E10 14400042 */  bnez       $v0, .Lrace_80126F1C
/* DD1D4 80126E14 26240030 */   addiu     $a0, $s1, 0x30
/* DD1D8 80126E18 3C01800D */  lui        $at, %hi(D_race_800CEB40)
/* DD1DC 80126E1C C420EB40 */  lwc1       $f0, %lo(D_race_800CEB40)($at)
/* DD1E0 80126E20 C7AC0040 */  lwc1       $f12, 0x40($sp)
/* DD1E4 80126E24 46006182 */  mul.s      $f6, $f12, $f0
/* DD1E8 80126E28 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* DD1EC 80126E2C 46005202 */  mul.s      $f8, $f10, $f0
/* DD1F0 80126E30 C7A40048 */  lwc1       $f4, 0x48($sp)
/* DD1F4 80126E34 46002102 */  mul.s      $f4, $f4, $f0
/* DD1F8 80126E38 C7A20030 */  lwc1       $f2, 0x30($sp)
/* DD1FC 80126E3C E7A60088 */  swc1       $f6, 0x88($sp)
/* DD200 80126E40 46061180 */  add.s      $f6, $f2, $f6
/* DD204 80126E44 C7A00034 */  lwc1       $f0, 0x34($sp)
/* DD208 80126E48 27A20020 */  addiu      $v0, $sp, 0x20
/* DD20C 80126E4C 46080000 */  add.s      $f0, $f0, $f8
/* DD210 80126E50 E7A8008C */  swc1       $f8, 0x8C($sp)
/* DD214 80126E54 E7A40090 */  swc1       $f4, 0x90($sp)
/* DD218 80126E58 E7A60020 */  swc1       $f6, 0x20($sp)
/* DD21C 80126E5C E4400004 */  swc1       $f0, 0x4($v0)
/* DD220 80126E60 C7A00038 */  lwc1       $f0, 0x38($sp)
/* DD224 80126E64 46040000 */  add.s      $f0, $f0, $f4
/* DD228 80126E68 3C01800D */  lui        $at, %hi(D_race_800CEB44)
/* DD22C 80126E6C C422EB44 */  lwc1       $f2, %lo(D_race_800CEB44)($at)
/* DD230 80126E70 E4400008 */  swc1       $f0, 0x8($v0)
/* DD234 80126E74 C7A00028 */  lwc1       $f0, 0x28($sp)
/* DD238 80126E78 AFA00050 */  sw         $zero, 0x50($sp)
/* DD23C 80126E7C 46020000 */  add.s      $f0, $f0, $f2
/* DD240 80126E80 AFA00054 */  sw         $zero, 0x54($sp)
/* DD244 80126E84 AFA00058 */  sw         $zero, 0x58($sp)
/* DD248 80126E88 E7A00028 */  swc1       $f0, 0x28($sp)
/* DD24C 80126E8C 8E230220 */  lw         $v1, 0x220($s1)
/* DD250 80126E90 1460000B */  bnez       $v1, .Lrace_80126EC0
/* DD254 80126E94 24020002 */   addiu     $v0, $zero, 0x2
/* DD258 80126E98 3C01800D */  lui        $at, %hi(D_race_800CEB48)
/* DD25C 80126E9C C420EB48 */  lwc1       $f0, %lo(D_race_800CEB48)($at)
/* DD260 80126EA0 46005102 */  mul.s      $f4, $f10, $f0
/* DD264 80126EA4 46006087 */  neg.s      $f2, $f12
/* DD268 80126EA8 46001082 */  mul.s      $f2, $f2, $f0
/* DD26C 80126EAC 46043100 */  add.s      $f4, $f6, $f4
/* DD270 80126EB0 C7A00024 */  lwc1       $f0, 0x24($sp)
/* DD274 80126EB4 46020000 */  add.s      $f0, $f0, $f2
/* DD278 80126EB8 08049BBC */  j          .Lrace_80126EF0
/* DD27C 80126EBC E7A40020 */   swc1      $f4, 0x20($sp)
.Lrace_80126EC0:
/* DD280 80126EC0 1462000D */  bne        $v1, $v0, .Lrace_80126EF8
/* DD284 80126EC4 26240030 */   addiu     $a0, $s1, 0x30
/* DD288 80126EC8 3C01800D */  lui        $at, %hi(D_race_800CEB4C)
/* DD28C 80126ECC C424EB4C */  lwc1       $f4, %lo(D_race_800CEB4C)($at)
/* DD290 80126ED0 46005087 */  neg.s      $f2, $f10
/* DD294 80126ED4 46041082 */  mul.s      $f2, $f2, $f4
/* DD298 80126ED8 00000000 */  nop
/* DD29C 80126EDC 46046102 */  mul.s      $f4, $f12, $f4
/* DD2A0 80126EE0 46023080 */  add.s      $f2, $f6, $f2
/* DD2A4 80126EE4 C7A00024 */  lwc1       $f0, 0x24($sp)
/* DD2A8 80126EE8 46040000 */  add.s      $f0, $f0, $f4
/* DD2AC 80126EEC E7A20020 */  swc1       $f2, 0x20($sp)
.Lrace_80126EF0:
/* DD2B0 80126EF0 E7A00024 */  swc1       $f0, 0x24($sp)
/* DD2B4 80126EF4 26240030 */  addiu      $a0, $s1, 0x30
.Lrace_80126EF8:
/* DD2B8 80126EF8 27A50060 */  addiu      $a1, $sp, 0x60
/* DD2BC 80126EFC 27A20050 */  addiu      $v0, $sp, 0x50
/* DD2C0 80126F00 AFA20010 */  sw         $v0, 0x10($sp)
/* DD2C4 80126F04 AFA00014 */  sw         $zero, 0x14($sp)
/* DD2C8 80126F08 8E260024 */  lw         $a2, 0x24($s1)
/* DD2CC 80126F0C 0C040C6A */  jal        func_race_801031A8
/* DD2D0 80126F10 27A70020 */   addiu     $a3, $sp, 0x20
/* DD2D4 80126F14 08049BCD */  j          .Lrace_80126F34
/* DD2D8 80126F18 00000000 */   nop
.Lrace_80126F1C:
/* DD2DC 80126F1C AFA00010 */  sw         $zero, 0x10($sp)
/* DD2E0 80126F20 AFA00014 */  sw         $zero, 0x14($sp)
/* DD2E4 80126F24 8E260024 */  lw         $a2, 0x24($s1)
/* DD2E8 80126F28 8E270028 */  lw         $a3, 0x28($s1)
/* DD2EC 80126F2C 0C040B68 */  jal        func_race_80102DA0
/* DD2F0 80126F30 27A50060 */   addiu     $a1, $sp, 0x60
.Lrace_80126F34:
/* DD2F4 80126F34 3C01800D */  lui        $at, %hi(D_race_800CEB50)
/* DD2F8 80126F38 C420EB50 */  lwc1       $f0, %lo(D_race_800CEB50)($at)
/* DD2FC 80126F3C 3C01800D */  lui        $at, %hi(D_race_800CEB54)
/* DD300 80126F40 C422EB54 */  lwc1       $f2, %lo(D_race_800CEB54)($at)
/* DD304 80126F44 26240030 */  addiu      $a0, $s1, 0x30
/* DD308 80126F48 E48000B8 */  swc1       $f0, 0xB8($a0)
/* DD30C 80126F4C 0C03DB15 */  jal        func_race_800F6C54
/* DD310 80126F50 E48200C0 */   swc1      $f2, 0xC0($a0)
/* DD314 80126F54 8FBF00A4 */  lw         $ra, 0xA4($sp)
/* DD318 80126F58 8FB200A0 */  lw         $s2, 0xA0($sp)
/* DD31C 80126F5C 8FB1009C */  lw         $s1, 0x9C($sp)
/* DD320 80126F60 8FB00098 */  lw         $s0, 0x98($sp)
/* DD324 80126F64 D7BA00C0 */  ldc1       $f26, 0xC0($sp)
/* DD328 80126F68 D7B800B8 */  ldc1       $f24, 0xB8($sp)
/* DD32C 80126F6C D7B600B0 */  ldc1       $f22, 0xB0($sp)
/* DD330 80126F70 D7B400A8 */  ldc1       $f20, 0xA8($sp)
/* DD334 80126F74 03E00008 */  jr         $ra
/* DD338 80126F78 27BD00C8 */   addiu     $sp, $sp, 0xC8

glabel func_race_80126F7C
/* DD33C 80126F7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DD340 80126F80 AFB00010 */  sw         $s0, 0x10($sp)
/* DD344 80126F84 00808021 */  addu       $s0, $a0, $zero
/* DD348 80126F88 AFBF0014 */  sw         $ra, 0x14($sp)
/* DD34C 80126F8C 0C040E4A */  jal        func_race_80103928
/* DD350 80126F90 26040030 */   addiu     $a0, $s0, 0x30
/* DD354 80126F94 0C01958C */  jal        func_80065630
/* DD358 80126F98 26040128 */   addiu     $a0, $s0, 0x128
/* DD35C 80126F9C 8E03001C */  lw         $v1, 0x1C($s0)
/* DD360 80126FA0 24020001 */  addiu      $v0, $zero, 0x1
/* DD364 80126FA4 AE020004 */  sw         $v0, 0x4($s0)
/* DD368 80126FA8 10600008 */  beqz       $v1, .Lrace_80126FCC
/* DD36C 80126FAC AE000008 */   sw        $zero, 0x8($s0)
/* DD370 80126FB0 8E05021C */  lw         $a1, 0x21C($s0)
/* DD374 80126FB4 10A00005 */  beqz       $a1, .Lrace_80126FCC
/* DD378 80126FB8 00000000 */   nop
/* DD37C 80126FBC 8C640044 */  lw         $a0, 0x44($v1)
/* DD380 80126FC0 0C034F7B */  jal        func_race_800D3DEC
/* DD384 80126FC4 00000000 */   nop
/* DD388 80126FC8 AE00021C */  sw         $zero, 0x21C($s0)
.Lrace_80126FCC:
/* DD38C 80126FCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* DD390 80126FD0 8FB00010 */  lw         $s0, 0x10($sp)
/* DD394 80126FD4 03E00008 */  jr         $ra
/* DD398 80126FD8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80126FDC
/* DD39C 80126FDC 27BDFF20 */  addiu      $sp, $sp, -0xE0
/* DD3A0 80126FE0 AFB200D0 */  sw         $s2, 0xD0($sp)
/* DD3A4 80126FE4 00809021 */  addu       $s2, $a0, $zero
/* DD3A8 80126FE8 AFB400D8 */  sw         $s4, 0xD8($sp)
/* DD3AC 80126FEC AFBF00DC */  sw         $ra, 0xDC($sp)
/* DD3B0 80126FF0 AFB300D4 */  sw         $s3, 0xD4($sp)
/* DD3B4 80126FF4 AFB100CC */  sw         $s1, 0xCC($sp)
/* DD3B8 80126FF8 AFB000C8 */  sw         $s0, 0xC8($sp)
/* DD3BC 80126FFC 8E430004 */  lw         $v1, 0x4($s2)
/* DD3C0 80127000 24020002 */  addiu      $v0, $zero, 0x2
/* DD3C4 80127004 1462002D */  bne        $v1, $v0, .Lrace_801270BC
/* DD3C8 80127008 00A0A021 */   addu      $s4, $a1, $zero
/* DD3CC 8012700C 26500128 */  addiu      $s0, $s2, 0x128
/* DD3D0 80127010 0C0197F5 */  jal        func_80065FD4
/* DD3D4 80127014 02002021 */   addu      $a0, $s0, $zero
/* DD3D8 80127018 0C0199BD */  jal        func_800666F4
/* DD3DC 8012701C 02002021 */   addu      $a0, $s0, $zero
/* DD3E0 80127020 14400020 */  bnez       $v0, .Lrace_801270A4
/* DD3E4 80127024 27A50030 */   addiu     $a1, $sp, 0x30
/* DD3E8 80127028 8E420024 */  lw         $v0, 0x24($s2)
/* DD3EC 8012702C 8C43005C */  lw         $v1, 0x5C($v0)
/* DD3F0 80127030 8C620024 */  lw         $v0, 0x24($v1)
/* DD3F4 80127034 84440010 */  lh         $a0, 0x10($v0)
/* DD3F8 80127038 8C420014 */  lw         $v0, 0x14($v0)
/* DD3FC 8012703C 0040F809 */  jalr       $v0
/* DD400 80127040 00642021 */   addu      $a0, $v1, $a0
/* DD404 80127044 02002021 */  addu       $a0, $s0, $zero
/* DD408 80127048 0C015962 */  jal        func_80056588
/* DD40C 8012704C 27A50030 */   addiu     $a1, $sp, 0x30
/* DD410 80127050 8E420024 */  lw         $v0, 0x24($s2)
/* DD414 80127054 8C420538 */  lw         $v0, 0x538($v0)
/* DD418 80127058 C4400028 */  lwc1       $f0, 0x28($v0)
/* DD41C 8012705C E6000028 */  swc1       $f0, 0x28($s0)
/* DD420 80127060 C440002C */  lwc1       $f0, 0x2C($v0)
/* DD424 80127064 E600002C */  swc1       $f0, 0x2C($s0)
/* DD428 80127068 C4400030 */  lwc1       $f0, 0x30($v0)
/* DD42C 8012706C E6000030 */  swc1       $f0, 0x30($s0)
/* DD430 80127070 C4400034 */  lwc1       $f0, 0x34($v0)
/* DD434 80127074 E6000034 */  swc1       $f0, 0x34($s0)
/* DD438 80127078 C4400038 */  lwc1       $f0, 0x38($v0)
/* DD43C 8012707C E6000038 */  swc1       $f0, 0x38($s0)
/* DD440 80127080 C440003C */  lwc1       $f0, 0x3C($v0)
/* DD444 80127084 E600003C */  swc1       $f0, 0x3C($s0)
/* DD448 80127088 C4400040 */  lwc1       $f0, 0x40($v0)
/* DD44C 8012708C E6000040 */  swc1       $f0, 0x40($s0)
/* DD450 80127090 C4400044 */  lwc1       $f0, 0x44($v0)
/* DD454 80127094 E6000044 */  swc1       $f0, 0x44($s0)
/* DD458 80127098 C4400048 */  lwc1       $f0, 0x48($v0)
/* DD45C 8012709C 08049CFF */  j          .Lrace_801273FC
/* DD460 801270A0 E6000048 */   swc1      $f0, 0x48($s0)
.Lrace_801270A4:
/* DD464 801270A4 8E420000 */  lw         $v0, 0x0($s2)
/* DD468 801270A8 84440030 */  lh         $a0, 0x30($v0)
/* DD46C 801270AC 8C420034 */  lw         $v0, 0x34($v0)
/* DD470 801270B0 0040F809 */  jalr       $v0
/* DD474 801270B4 02442021 */   addu      $a0, $s2, $a0
/* DD478 801270B8 8E430004 */  lw         $v1, 0x4($s2)
.Lrace_801270BC:
/* DD47C 801270BC 24020003 */  addiu      $v0, $zero, 0x3
/* DD480 801270C0 146200CE */  bne        $v1, $v0, .Lrace_801273FC
/* DD484 801270C4 26500128 */   addiu     $s0, $s2, 0x128
/* DD488 801270C8 02002021 */  addu       $a0, $s0, $zero
/* DD48C 801270CC 0C0197F5 */  jal        func_80065FD4
/* DD490 801270D0 02802821 */   addu      $a1, $s4, $zero
/* DD494 801270D4 26510030 */  addiu      $s1, $s2, 0x30
/* DD498 801270D8 02202021 */  addu       $a0, $s1, $zero
/* DD49C 801270DC 8E42001C */  lw         $v0, 0x1C($s2)
/* DD4A0 801270E0 3C0742C8 */  lui        $a3, (0x42C80000 >> 16)
/* DD4A4 801270E4 3C01800D */  lui        $at, %hi(D_race_800CEB58)
/* DD4A8 801270E8 C420EB58 */  lwc1       $f0, %lo(D_race_800CEB58)($at)
/* DD4AC 801270EC 3C01800D */  lui        $at, %hi(D_race_800CEB5C)
/* DD4B0 801270F0 C422EB5C */  lwc1       $f2, %lo(D_race_800CEB5C)($at)
/* DD4B4 801270F4 8C460074 */  lw         $a2, 0x74($v0)
/* DD4B8 801270F8 02802821 */  addu       $a1, $s4, $zero
/* DD4BC 801270FC E7A00010 */  swc1       $f0, 0x10($sp)
/* DD4C0 80127100 0C03DA13 */  jal        func_race_800F684C
/* DD4C4 80127104 E7A20014 */   swc1      $f2, 0x14($sp)
/* DD4C8 80127108 02202021 */  addu       $a0, $s1, $zero
/* DD4CC 8012710C 0C03DB4D */  jal        func_race_800F6D34
/* DD4D0 80127110 02802821 */   addu      $a1, $s4, $zero
/* DD4D4 80127114 00409821 */  addu       $s3, $v0, $zero
/* DD4D8 80127118 24020001 */  addiu      $v0, $zero, 0x1
/* DD4DC 8012711C 1262005D */  beq        $s3, $v0, .Lrace_80127294
/* DD4E0 80127120 24020002 */   addiu     $v0, $zero, 0x2
/* DD4E4 80127124 8E480058 */  lw         $t0, 0x58($s2)
/* DD4E8 80127128 8E49005C */  lw         $t1, 0x5C($s2)
/* DD4EC 8012712C 8E4A0060 */  lw         $t2, 0x60($s2)
/* DD4F0 80127130 AFA80040 */  sw         $t0, 0x40($sp)
/* DD4F4 80127134 AFA90044 */  sw         $t1, 0x44($sp)
/* DD4F8 80127138 AFAA0048 */  sw         $t2, 0x48($sp)
/* DD4FC 8012713C 16620012 */  bne        $s3, $v0, .Lrace_80127188
/* DD500 80127140 00008021 */   addu      $s0, $zero, $zero
/* DD504 80127144 8E2500A4 */  lw         $a1, 0xA4($s1)
/* DD508 80127148 8CA20D04 */  lw         $v0, 0xD04($a1)
/* DD50C 8012714C 30420001 */  andi       $v0, $v0, 0x1
/* DD510 80127150 10400004 */  beqz       $v0, .Lrace_80127164
/* DD514 80127154 02001821 */   addu      $v1, $s0, $zero
/* DD518 80127158 8CA20D64 */  lw         $v0, 0xD64($a1)
/* DD51C 8012715C 2C420002 */  sltiu      $v0, $v0, 0x2
/* DD520 80127160 38430001 */  xori       $v1, $v0, 0x1
.Lrace_80127164:
/* DD524 80127164 54600001 */  bnel       $v1, $zero, .Lrace_8012716C
/* DD528 80127168 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_8012716C:
/* DD52C 8012716C 8E420000 */  lw         $v0, 0x0($s2)
/* DD530 80127170 84440048 */  lh         $a0, 0x48($v0)
/* DD534 80127174 8C42004C */  lw         $v0, 0x4C($v0)
/* DD538 80127178 0040F809 */  jalr       $v0
/* DD53C 8012717C 02442021 */   addu      $a0, $s2, $a0
/* DD540 80127180 08049C6E */  j          .Lrace_801271B8
/* DD544 80127184 00000000 */   nop
.Lrace_80127188:
/* DD548 80127188 3C074348 */  lui        $a3, (0x43480000 >> 16)
/* DD54C 8012718C 3C01800D */  lui        $at, %hi(D_race_800CEB60)
/* DD550 80127190 C422EB60 */  lwc1       $f2, %lo(D_race_800CEB60)($at)
/* DD554 80127194 3C01800D */  lui        $at, %hi(D_race_800CEB64)
/* DD558 80127198 C420EB64 */  lwc1       $f0, %lo(D_race_800CEB64)($at)
/* DD55C 8012719C 24050032 */  addiu      $a1, $zero, 0x32
/* DD560 801271A0 E7A20010 */  swc1       $f2, 0x10($sp)
/* DD564 801271A4 E7A00014 */  swc1       $f0, 0x14($sp)
/* DD568 801271A8 E7A00018 */  swc1       $f0, 0x18($sp)
/* DD56C 801271AC 8E440010 */  lw         $a0, 0x10($s2)
/* DD570 801271B0 0C046530 */  jal        func_race_801194C0
/* DD574 801271B4 27A60040 */   addiu     $a2, $sp, 0x40
.Lrace_801271B8:
/* DD578 801271B8 16000090 */  bnez       $s0, .Lrace_801273FC
/* DD57C 801271BC 24020003 */   addiu     $v0, $zero, 0x3
/* DD580 801271C0 8E48008C */  lw         $t0, 0x8C($s2)
/* DD584 801271C4 8E490090 */  lw         $t1, 0x90($s2)
/* DD588 801271C8 8E4A0094 */  lw         $t2, 0x94($s2)
/* DD58C 801271CC AFA800A0 */  sw         $t0, 0xA0($sp)
/* DD590 801271D0 AFA900A4 */  sw         $t1, 0xA4($sp)
/* DD594 801271D4 AFAA00A8 */  sw         $t2, 0xA8($sp)
/* DD598 801271D8 16620008 */  bne        $s3, $v0, .Lrace_801271FC
/* DD59C 801271DC 00003021 */   addu      $a2, $zero, $zero
/* DD5A0 801271E0 C7A200A8 */  lwc1       $f2, 0xA8($sp)
/* DD5A4 801271E4 3C01800D */  lui        $at, %hi(D_race_800CEB68)
/* DD5A8 801271E8 C420EB68 */  lwc1       $f0, %lo(D_race_800CEB68)($at)
/* DD5AC 801271EC 4602003C */  c.lt.s     $f0, $f2
/* DD5B0 801271F0 00000000 */  nop
/* DD5B4 801271F4 45030001 */  bc1tl      .Lrace_801271FC
/* DD5B8 801271F8 24060001 */   addiu     $a2, $zero, 0x1
.Lrace_801271FC:
/* DD5BC 801271FC 27B40040 */  addiu      $s4, $sp, 0x40
/* DD5C0 80127200 8E44001C */  lw         $a0, 0x1C($s2)
/* DD5C4 80127204 8E470024 */  lw         $a3, 0x24($s2)
/* DD5C8 80127208 0C04B312 */  jal        func_race_8012CC48
/* DD5CC 8012720C 02802821 */   addu      $a1, $s4, $zero
/* DD5D0 80127210 24020002 */  addiu      $v0, $zero, 0x2
/* DD5D4 80127214 16620018 */  bne        $s3, $v0, .Lrace_80127278
/* DD5D8 80127218 26510030 */   addiu     $s1, $s2, 0x30
/* DD5DC 8012721C 8E2200A4 */  lw         $v0, 0xA4($s1)
/* DD5E0 80127220 8C420D04 */  lw         $v0, 0xD04($v0)
/* DD5E4 80127224 30420001 */  andi       $v0, $v0, 0x1
/* DD5E8 80127228 14400013 */  bnez       $v0, .Lrace_80127278
/* DD5EC 8012722C 02202021 */   addu      $a0, $s1, $zero
/* DD5F0 80127230 27B00090 */  addiu      $s0, $sp, 0x90
/* DD5F4 80127234 0C03DCB7 */  jal        func_race_800F72DC
/* DD5F8 80127238 02002821 */   addu      $a1, $s0, $zero
/* DD5FC 8012723C 02002021 */  addu       $a0, $s0, $zero
/* DD600 80127240 C7A00090 */  lwc1       $f0, 0x90($sp)
/* DD604 80127244 C7A20094 */  lwc1       $f2, 0x94($sp)
/* DD608 80127248 02002821 */  addu       $a1, $s0, $zero
/* DD60C 8012724C AFA00098 */  sw         $zero, 0x98($sp)
/* DD610 80127250 46000007 */  neg.s      $f0, $f0
/* DD614 80127254 46001087 */  neg.s      $f2, $f2
/* DD618 80127258 E7A00090 */  swc1       $f0, 0x90($sp)
/* DD61C 8012725C 0C000F26 */  jal        func_80003C98
/* DD620 80127260 E7A20094 */   swc1      $f2, 0x94($sp)
/* DD624 80127264 02802821 */  addu       $a1, $s4, $zero
/* DD628 80127268 8E44001C */  lw         $a0, 0x1C($s2)
/* DD62C 8012726C 8E2700A4 */  lw         $a3, 0xA4($s1)
/* DD630 80127270 0C04B33A */  jal        func_race_8012CCE8
/* DD634 80127274 02003021 */   addu      $a2, $s0, $zero
.Lrace_80127278:
/* DD638 80127278 8E420000 */  lw         $v0, 0x0($s2)
/* DD63C 8012727C 84440030 */  lh         $a0, 0x30($v0)
/* DD640 80127280 8C420034 */  lw         $v0, 0x34($v0)
/* DD644 80127284 0040F809 */  jalr       $v0
/* DD648 80127288 02442021 */   addu      $a0, $s2, $a0
/* DD64C 8012728C 08049CFF */  j          .Lrace_801273FC
/* DD650 80127290 00000000 */   nop
.Lrace_80127294:
/* DD654 80127294 C6000028 */  lwc1       $f0, 0x28($s0)
/* DD658 80127298 E7A00090 */  swc1       $f0, 0x90($sp)
/* DD65C 8012729C C600002C */  lwc1       $f0, 0x2C($s0)
/* DD660 801272A0 E7A00094 */  swc1       $f0, 0x94($sp)
/* DD664 801272A4 C6000030 */  lwc1       $f0, 0x30($s0)
/* DD668 801272A8 E7A00098 */  swc1       $f0, 0x98($sp)
/* DD66C 801272AC C6000040 */  lwc1       $f0, 0x40($s0)
/* DD670 801272B0 E7A000A0 */  swc1       $f0, 0xA0($sp)
/* DD674 801272B4 C6000044 */  lwc1       $f0, 0x44($s0)
/* DD678 801272B8 E7A000A4 */  swc1       $f0, 0xA4($sp)
/* DD67C 801272BC C6000048 */  lwc1       $f0, 0x48($s0)
/* DD680 801272C0 E7A000A8 */  swc1       $f0, 0xA8($sp)
/* DD684 801272C4 C62000D0 */  lwc1       $f0, 0xD0($s1)
/* DD688 801272C8 02002021 */  addu       $a0, $s0, $zero
/* DD68C 801272CC E7A00090 */  swc1       $f0, 0x90($sp)
/* DD690 801272D0 C62000D4 */  lwc1       $f0, 0xD4($s1)
/* DD694 801272D4 27A50090 */  addiu      $a1, $sp, 0x90
/* DD698 801272D8 E7A00094 */  swc1       $f0, 0x94($sp)
/* DD69C 801272DC C62000D8 */  lwc1       $f0, 0xD8($s1)
/* DD6A0 801272E0 27A600A0 */  addiu      $a2, $sp, 0xA0
/* DD6A4 801272E4 0C015729 */  jal        func_80055CA4
/* DD6A8 801272E8 E7A00098 */   swc1      $f0, 0x98($sp)
/* DD6AC 801272EC 02002021 */  addu       $a0, $s0, $zero
/* DD6B0 801272F0 0C01595B */  jal        func_8005656C
/* DD6B4 801272F4 27A50020 */   addiu     $a1, $sp, 0x20
/* DD6B8 801272F8 8E42021C */  lw         $v0, 0x21C($s2)
/* DD6BC 801272FC 1040003F */  beqz       $v0, .Lrace_801273FC
/* DD6C0 80127300 02202021 */   addu      $a0, $s1, $zero
/* DD6C4 80127304 0C03DCB7 */  jal        func_race_800F72DC
/* DD6C8 80127308 27A50080 */   addiu     $a1, $sp, 0x80
/* DD6CC 8012730C C7A00084 */  lwc1       $f0, 0x84($sp)
/* DD6D0 80127310 44802000 */  mtc1       $zero, $f4
/* DD6D4 80127314 C7A20080 */  lwc1       $f2, 0x80($sp)
/* DD6D8 80127318 46040032 */  c.eq.s     $f0, $f4
/* DD6DC 8012731C 46001087 */  neg.s      $f2, $f2
/* DD6E0 80127320 E7A000B0 */  swc1       $f0, 0xB0($sp)
/* DD6E4 80127324 45000005 */  bc1f       .Lrace_8012733C
/* DD6E8 80127328 E7A200B4 */   swc1      $f2, 0xB4($sp)
/* DD6EC 8012732C 46041032 */  c.eq.s     $f2, $f4
/* DD6F0 80127330 00000000 */  nop
/* DD6F4 80127334 45010031 */  bc1t       .Lrace_801273FC
/* DD6F8 80127338 00000000 */   nop
.Lrace_8012733C:
/* DD6FC 8012733C 27A400B0 */  addiu      $a0, $sp, 0xB0
/* DD700 80127340 0C000EFC */  jal        func_80003BF0
/* DD704 80127344 00802821 */   addu      $a1, $a0, $zero
/* DD708 80127348 C7A800B0 */  lwc1       $f8, 0xB0($sp)
/* DD70C 8012734C 3C01800D */  lui        $at, %hi(D_race_800CEB6C)
/* DD710 80127350 C420EB6C */  lwc1       $f0, %lo(D_race_800CEB6C)($at)
/* DD714 80127354 46004082 */  mul.s      $f2, $f8, $f0
/* DD718 80127358 C7AA00B4 */  lwc1       $f10, 0xB4($sp)
/* DD71C 8012735C 46005382 */  mul.s      $f14, $f10, $f0
/* DD720 80127360 C7A60020 */  lwc1       $f6, 0x20($sp)
/* DD724 80127364 46023181 */  sub.s      $f6, $f6, $f2
/* DD728 80127368 C7A20028 */  lwc1       $f2, 0x28($sp)
/* DD72C 8012736C 46001080 */  add.s      $f2, $f2, $f0
/* DD730 80127370 C7A00024 */  lwc1       $f0, 0x24($sp)
/* DD734 80127374 460E0001 */  sub.s      $f0, $f0, $f14
/* DD738 80127378 02802821 */  addu       $a1, $s4, $zero
/* DD73C 8012737C 3C01800D */  lui        $at, %hi(D_race_800CEB70)
/* DD740 80127380 C42CEB70 */  lwc1       $f12, %lo(D_race_800CEB70)($at)
/* DD744 80127384 46083200 */  add.s      $f8, $f6, $f8
/* DD748 80127388 E7A60050 */  swc1       $f6, 0x50($sp)
/* DD74C 8012738C E7A6005C */  swc1       $f6, 0x5C($sp)
/* DD750 80127390 460C1101 */  sub.s      $f4, $f2, $f12
/* DD754 80127394 E7A20058 */  swc1       $f2, 0x58($sp)
/* DD758 80127398 E7A00054 */  swc1       $f0, 0x54($sp)
/* DD75C 8012739C E7A00060 */  swc1       $f0, 0x60($sp)
/* DD760 801273A0 460A0000 */  add.s      $f0, $f0, $f10
/* DD764 801273A4 E7A80068 */  swc1       $f8, 0x68($sp)
/* DD768 801273A8 E7A80074 */  swc1       $f8, 0x74($sp)
/* DD76C 801273AC E7A40064 */  swc1       $f4, 0x64($sp)
/* DD770 801273B0 E7A40070 */  swc1       $f4, 0x70($sp)
/* DD774 801273B4 460C2100 */  add.s      $f4, $f4, $f12
/* DD778 801273B8 E7A0006C */  swc1       $f0, 0x6C($sp)
/* DD77C 801273BC E7A00078 */  swc1       $f0, 0x78($sp)
/* DD780 801273C0 E7A4007C */  swc1       $f4, 0x7C($sp)
/* DD784 801273C4 8FA80020 */  lw         $t0, 0x20($sp)
/* DD788 801273C8 8FA90024 */  lw         $t1, 0x24($sp)
/* DD78C 801273CC 8FAA0028 */  lw         $t2, 0x28($sp)
/* DD790 801273D0 AFA800B8 */  sw         $t0, 0xB8($sp)
/* DD794 801273D4 AFA900BC */  sw         $t1, 0xBC($sp)
/* DD798 801273D8 AFAA00C0 */  sw         $t2, 0xC0($sp)
/* DD79C 801273DC 8FA800BC */  lw         $t0, 0xBC($sp)
/* DD7A0 801273E0 8FA900C0 */  lw         $t1, 0xC0($sp)
/* DD7A4 801273E4 AFA80010 */  sw         $t0, 0x10($sp)
/* DD7A8 801273E8 AFA90014 */  sw         $t1, 0x14($sp)
/* DD7AC 801273EC 8FA700B8 */  lw         $a3, 0xB8($sp)
/* DD7B0 801273F0 8E44021C */  lw         $a0, 0x21C($s2)
/* DD7B4 801273F4 0C034BAF */  jal        func_race_800D2EBC
/* DD7B8 801273F8 27A60050 */   addiu     $a2, $sp, 0x50
.Lrace_801273FC:
/* DD7BC 801273FC 8FBF00DC */  lw         $ra, 0xDC($sp)
/* DD7C0 80127400 8FB400D8 */  lw         $s4, 0xD8($sp)
/* DD7C4 80127404 8FB300D4 */  lw         $s3, 0xD4($sp)
/* DD7C8 80127408 8FB200D0 */  lw         $s2, 0xD0($sp)
/* DD7CC 8012740C 8FB100CC */  lw         $s1, 0xCC($sp)
/* DD7D0 80127410 8FB000C8 */  lw         $s0, 0xC8($sp)
/* DD7D4 80127414 03E00008 */  jr         $ra
/* DD7D8 80127418 27BD00E0 */   addiu     $sp, $sp, 0xE0

glabel func_race_8012741C
/* DD7DC 8012741C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* DD7E0 80127420 AFB20048 */  sw         $s2, 0x48($sp)
/* DD7E4 80127424 AFBF004C */  sw         $ra, 0x4C($sp)
/* DD7E8 80127428 AFB10044 */  sw         $s1, 0x44($sp)
/* DD7EC 8012742C AFB00040 */  sw         $s0, 0x40($sp)
/* DD7F0 80127430 8C830004 */  lw         $v1, 0x4($a0)
/* DD7F4 80127434 24020002 */  addiu      $v0, $zero, 0x2
/* DD7F8 80127438 14620004 */  bne        $v1, $v0, .Lrace_8012744C
/* DD7FC 8012743C 00A09021 */   addu      $s2, $a1, $zero
/* DD800 80127440 8E42012C */  lw         $v0, 0x12C($s2)
/* DD804 80127444 08049D38 */  j          .Lrace_801274E0
/* DD808 80127448 24850128 */   addiu     $a1, $a0, 0x128
.Lrace_8012744C:
/* DD80C 8012744C 24020003 */  addiu      $v0, $zero, 0x3
/* DD810 80127450 14620027 */  bne        $v1, $v0, .Lrace_801274F0
/* DD814 80127454 24910128 */   addiu     $s1, $a0, 0x128
/* DD818 80127458 8E230090 */  lw         $v1, 0x90($s1)
/* DD81C 8012745C 8C620008 */  lw         $v0, 0x8($v1)
/* DD820 80127460 24050001 */  addiu      $a1, $zero, 0x1
/* DD824 80127464 84440038 */  lh         $a0, 0x38($v0)
/* DD828 80127468 8C42003C */  lw         $v0, 0x3C($v0)
/* DD82C 8012746C 0040F809 */  jalr       $v0
/* DD830 80127470 00642021 */   addu      $a0, $v1, $a0
/* DD834 80127474 00408021 */  addu       $s0, $v0, $zero
/* DD838 80127478 AFA00010 */  sw         $zero, 0x10($sp)
/* DD83C 8012747C AFA00014 */  sw         $zero, 0x14($sp)
/* DD840 80127480 AFA00018 */  sw         $zero, 0x18($sp)
/* DD844 80127484 8E02000C */  lw         $v0, 0xC($s0)
/* DD848 80127488 27A50010 */  addiu      $a1, $sp, 0x10
/* DD84C 8012748C 84440090 */  lh         $a0, 0x90($v0)
/* DD850 80127490 8C420094 */  lw         $v0, 0x94($v0)
/* DD854 80127494 0040F809 */  jalr       $v0
/* DD858 80127498 02042021 */   addu      $a0, $s0, $a0
/* DD85C 8012749C 3C01800D */  lui        $at, %hi(D_race_800CEB74)
/* DD860 801274A0 C420EB74 */  lwc1       $f0, %lo(D_race_800CEB74)($at)
/* DD864 801274A4 27A50020 */  addiu      $a1, $sp, 0x20
/* DD868 801274A8 AFA00024 */  sw         $zero, 0x24($sp)
/* DD86C 801274AC AFA00028 */  sw         $zero, 0x28($sp)
/* DD870 801274B0 AFA00030 */  sw         $zero, 0x30($sp)
/* DD874 801274B4 AFA00034 */  sw         $zero, 0x34($sp)
/* DD878 801274B8 E7A00020 */  swc1       $f0, 0x20($sp)
/* DD87C 801274BC E7A00038 */  swc1       $f0, 0x38($sp)
/* DD880 801274C0 8E02000C */  lw         $v0, 0xC($s0)
/* DD884 801274C4 27A60030 */  addiu      $a2, $sp, 0x30
/* DD888 801274C8 84440058 */  lh         $a0, 0x58($v0)
/* DD88C 801274CC 8C42005C */  lw         $v0, 0x5C($v0)
/* DD890 801274D0 0040F809 */  jalr       $v0
/* DD894 801274D4 02042021 */   addu      $a0, $s0, $a0
/* DD898 801274D8 8E42012C */  lw         $v0, 0x12C($s2)
/* DD89C 801274DC 02202821 */  addu       $a1, $s1, $zero
.Lrace_801274E0:
/* DD8A0 801274E0 84440118 */  lh         $a0, 0x118($v0)
/* DD8A4 801274E4 8C42011C */  lw         $v0, 0x11C($v0)
/* DD8A8 801274E8 0040F809 */  jalr       $v0
/* DD8AC 801274EC 02442021 */   addu      $a0, $s2, $a0
.Lrace_801274F0:
/* DD8B0 801274F0 8FBF004C */  lw         $ra, 0x4C($sp)
/* DD8B4 801274F4 8FB20048 */  lw         $s2, 0x48($sp)
/* DD8B8 801274F8 8FB10044 */  lw         $s1, 0x44($sp)
/* DD8BC 801274FC 8FB00040 */  lw         $s0, 0x40($sp)
/* DD8C0 80127500 03E00008 */  jr         $ra
/* DD8C4 80127504 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_80127508
/* DD8C8 80127508 03E00008 */  jr         $ra
/* DD8CC 8012750C 00000000 */   nop

glabel func_race_80127510
/* DD8D0 80127510 27BDFF50 */  addiu      $sp, $sp, -0xB0
/* DD8D4 80127514 AFB500A4 */  sw         $s5, 0xA4($sp)
/* DD8D8 80127518 0080A821 */  addu       $s5, $a0, $zero
/* DD8DC 8012751C AFBF00A8 */  sw         $ra, 0xA8($sp)
/* DD8E0 80127520 AFB400A0 */  sw         $s4, 0xA0($sp)
/* DD8E4 80127524 AFB3009C */  sw         $s3, 0x9C($sp)
/* DD8E8 80127528 AFB20098 */  sw         $s2, 0x98($sp)
/* DD8EC 8012752C AFB10094 */  sw         $s1, 0x94($sp)
/* DD8F0 80127530 AFB00090 */  sw         $s0, 0x90($sp)
/* DD8F4 80127534 8EA30004 */  lw         $v1, 0x4($s5)
/* DD8F8 80127538 24060003 */  addiu      $a2, $zero, 0x3
/* DD8FC 8012753C 10660080 */  beq        $v1, $a2, .Lrace_80127740
/* DD900 80127540 28620004 */   slti      $v0, $v1, 0x4
/* DD904 80127544 10400005 */  beqz       $v0, .Lrace_8012755C
/* DD908 80127548 24020002 */   addiu     $v0, $zero, 0x2
/* DD90C 8012754C 10620008 */  beq        $v1, $v0, .Lrace_80127570
/* DD910 80127550 26B10128 */   addiu     $s1, $s5, 0x128
/* DD914 80127554 08049DE0 */  j          .Lrace_80127780
/* DD918 80127558 00000000 */   nop
.Lrace_8012755C:
/* DD91C 8012755C 24020004 */  addiu      $v0, $zero, 0x4
/* DD920 80127560 10620085 */  beq        $v1, $v0, .Lrace_80127778
/* DD924 80127564 24020006 */   addiu     $v0, $zero, 0x6
/* DD928 80127568 08049DE0 */  j          .Lrace_80127780
/* DD92C 8012756C 00000000 */   nop
.Lrace_80127570:
/* DD930 80127570 02202021 */  addu       $a0, $s1, $zero
/* DD934 80127574 00002821 */  addu       $a1, $zero, $zero
/* DD938 80127578 2402157C */  addiu      $v0, $zero, 0x157C
/* DD93C 8012757C AEA60004 */  sw         $a2, 0x4($s5)
/* DD940 80127580 0C0195B6 */  jal        func_800656D8
/* DD944 80127584 AEA20008 */   sw        $v0, 0x8($s5)
/* DD948 80127588 8E230090 */  lw         $v1, 0x90($s1)
/* DD94C 8012758C 8C620008 */  lw         $v0, 0x8($v1)
/* DD950 80127590 24050001 */  addiu      $a1, $zero, 0x1
/* DD954 80127594 84440038 */  lh         $a0, 0x38($v0)
/* DD958 80127598 8C42003C */  lw         $v0, 0x3C($v0)
/* DD95C 8012759C 0040F809 */  jalr       $v0
/* DD960 801275A0 00642021 */   addu      $a0, $v1, $a0
/* DD964 801275A4 00408021 */  addu       $s0, $v0, $zero
/* DD968 801275A8 8E02000C */  lw         $v0, 0xC($s0)
/* DD96C 801275AC 27A50010 */  addiu      $a1, $sp, 0x10
/* DD970 801275B0 84440088 */  lh         $a0, 0x88($v0)
/* DD974 801275B4 8C42008C */  lw         $v0, 0x8C($v0)
/* DD978 801275B8 0040F809 */  jalr       $v0
/* DD97C 801275BC 02042021 */   addu      $a0, $s0, $a0
/* DD980 801275C0 27B20030 */  addiu      $s2, $sp, 0x30
/* DD984 801275C4 8E02000C */  lw         $v0, 0xC($s0)
/* DD988 801275C8 02402821 */  addu       $a1, $s2, $zero
/* DD98C 801275CC 84440068 */  lh         $a0, 0x68($v0)
/* DD990 801275D0 8C42006C */  lw         $v0, 0x6C($v0)
/* DD994 801275D4 0040F809 */  jalr       $v0
/* DD998 801275D8 02042021 */   addu      $a0, $s0, $a0
/* DD99C 801275DC 27B40040 */  addiu      $s4, $sp, 0x40
/* DD9A0 801275E0 8E02000C */  lw         $v0, 0xC($s0)
/* DD9A4 801275E4 02802821 */  addu       $a1, $s4, $zero
/* DD9A8 801275E8 84440078 */  lh         $a0, 0x78($v0)
/* DD9AC 801275EC 8C42007C */  lw         $v0, 0x7C($v0)
/* DD9B0 801275F0 0040F809 */  jalr       $v0
/* DD9B4 801275F4 02042021 */   addu      $a0, $s0, $a0
/* DD9B8 801275F8 8E220078 */  lw         $v0, 0x78($s1)
/* DD9BC 801275FC C6200058 */  lwc1       $f0, 0x58($s1)
/* DD9C0 80127600 C4420034 */  lwc1       $f2, 0x34($v0)
/* DD9C4 80127604 46020002 */  mul.s      $f0, $f0, $f2
/* DD9C8 80127608 C7A60010 */  lwc1       $f6, 0x10($sp)
/* DD9CC 8012760C 46003182 */  mul.s      $f6, $f6, $f0
/* DD9D0 80127610 27A50010 */  addiu      $a1, $sp, 0x10
/* DD9D4 80127614 C4A40004 */  lwc1       $f4, 0x4($a1)
/* DD9D8 80127618 46002102 */  mul.s      $f4, $f4, $f0
/* DD9DC 8012761C C4A20008 */  lwc1       $f2, 0x8($a1)
/* DD9E0 80127620 02202021 */  addu       $a0, $s1, $zero
/* DD9E4 80127624 46001082 */  mul.s      $f2, $f2, $f0
/* DD9E8 80127628 27B30020 */  addiu      $s3, $sp, 0x20
/* DD9EC 8012762C 02603021 */  addu       $a2, $s3, $zero
/* DD9F0 80127630 E7A60010 */  swc1       $f6, 0x10($sp)
/* DD9F4 80127634 E4A40004 */  swc1       $f4, 0x4($a1)
/* DD9F8 80127638 0C0158C3 */  jal        func_8005630C
/* DD9FC 8012763C E4A20008 */   swc1      $f2, 0x8($a1)
/* DDA00 80127640 02202021 */  addu       $a0, $s1, $zero
/* DDA04 80127644 02402821 */  addu       $a1, $s2, $zero
/* DDA08 80127648 27B20050 */  addiu      $s2, $sp, 0x50
/* DDA0C 8012764C 0C015861 */  jal        func_80056184
/* DDA10 80127650 02403021 */   addu      $a2, $s2, $zero
/* DDA14 80127654 02202021 */  addu       $a0, $s1, $zero
/* DDA18 80127658 02802821 */  addu       $a1, $s4, $zero
/* DDA1C 8012765C 27B00060 */  addiu      $s0, $sp, 0x60
/* DDA20 80127660 0C015861 */  jal        func_80056184
/* DDA24 80127664 02003021 */   addu      $a2, $s0, $zero
/* DDA28 80127668 02202021 */  addu       $a0, $s1, $zero
/* DDA2C 8012766C 0C015962 */  jal        func_80056588
/* DDA30 80127670 02602821 */   addu      $a1, $s3, $zero
/* DDA34 80127674 02202021 */  addu       $a0, $s1, $zero
/* DDA38 80127678 02402821 */  addu       $a1, $s2, $zero
/* DDA3C 8012767C 0C015729 */  jal        func_80055CA4
/* DDA40 80127680 02003021 */   addu      $a2, $s0, $zero
/* DDA44 80127684 02202021 */  addu       $a0, $s1, $zero
/* DDA48 80127688 0C0198E1 */  jal        func_80066384
/* DDA4C 8012768C 00002821 */   addu      $a1, $zero, $zero
/* DDA50 80127690 3C03FFFE */  lui        $v1, (0xFFFEFFFF >> 16)
/* DDA54 80127694 3463FFFF */  ori        $v1, $v1, (0xFFFEFFFF & 0xFFFF)
/* DDA58 80127698 8E22005C */  lw         $v0, 0x5C($s1)
/* DDA5C 8012769C 02A02021 */  addu       $a0, $s5, $zero
/* DDA60 801276A0 00431024 */  and        $v0, $v0, $v1
/* DDA64 801276A4 0C049B2E */  jal        func_race_80126CB8
/* DDA68 801276A8 AE22005C */   sw        $v0, 0x5C($s1)
/* DDA6C 801276AC 24020190 */  addiu      $v0, $zero, 0x190
/* DDA70 801276B0 3C01800D */  lui        $at, %hi(D_race_800CEB78)
/* DDA74 801276B4 C420EB78 */  lwc1       $f0, %lo(D_race_800CEB78)($at)
/* DDA78 801276B8 24030004 */  addiu      $v1, $zero, 0x4
/* DDA7C 801276BC AFA20070 */  sw         $v0, 0x70($sp)
/* DDA80 801276C0 24020001 */  addiu      $v0, $zero, 0x1
/* DDA84 801276C4 AFA30074 */  sw         $v1, 0x74($sp)
/* DDA88 801276C8 AFA2007C */  sw         $v0, 0x7C($sp)
/* DDA8C 801276CC AFA00080 */  sw         $zero, 0x80($sp)
/* DDA90 801276D0 AFA00088 */  sw         $zero, 0x88($sp)
/* DDA94 801276D4 AFA30078 */  sw         $v1, 0x78($sp)
/* DDA98 801276D8 E7A00084 */  swc1       $f0, 0x84($sp)
/* DDA9C 801276DC 8EA2001C */  lw         $v0, 0x1C($s5)
/* DDAA0 801276E0 8C440044 */  lw         $a0, 0x44($v0)
/* DDAA4 801276E4 0C034F53 */  jal        func_race_800D3D4C
/* DDAA8 801276E8 27A50070 */   addiu     $a1, $sp, 0x70
/* DDAAC 801276EC 10400024 */  beqz       $v0, .Lrace_80127780
/* DDAB0 801276F0 AEA2021C */   sw        $v0, 0x21C($s5)
/* DDAB4 801276F4 00402021 */  addu       $a0, $v0, $zero
/* DDAB8 801276F8 3C058013 */  lui        $a1, %hi(D_race_801324A8)
/* DDABC 801276FC 0C034A4D */  jal        func_race_800D2934
/* DDAC0 80127700 24A524A8 */   addiu     $a1, $a1, %lo(D_race_801324A8)
/* DDAC4 80127704 8EA2001C */  lw         $v0, 0x1C($s5)
/* DDAC8 80127708 3C058013 */  lui        $a1, %hi(D_race_801324A0)
/* DDACC 8012770C 8C440004 */  lw         $a0, 0x4($v0)
/* DDAD0 80127710 0C016F2D */  jal        func_8005BCB4
/* DDAD4 80127714 24A524A0 */   addiu     $a1, $a1, %lo(D_race_801324A0)
/* DDAD8 80127718 00403021 */  addu       $a2, $v0, $zero
/* DDADC 8012771C 10C00018 */  beqz       $a2, .Lrace_80127780
/* DDAE0 80127720 00000000 */   nop
/* DDAE4 80127724 8EA2001C */  lw         $v0, 0x1C($s5)
/* DDAE8 80127728 8EA4021C */  lw         $a0, 0x21C($s5)
/* DDAEC 8012772C 8C450004 */  lw         $a1, 0x4($v0)
/* DDAF0 80127730 0C034A45 */  jal        func_race_800D2914
/* DDAF4 80127734 00000000 */   nop
/* DDAF8 80127738 08049DE0 */  j          .Lrace_80127780
/* DDAFC 8012773C 00000000 */   nop
.Lrace_80127740:
/* DDB00 80127740 26A40030 */  addiu      $a0, $s5, 0x30
/* DDB04 80127744 24020006 */  addiu      $v0, $zero, 0x6
/* DDB08 80127748 AEA20004 */  sw         $v0, 0x4($s5)
/* DDB0C 8012774C 0C040EE7 */  jal        func_race_80103B9C
/* DDB10 80127750 AEA00008 */   sw        $zero, 0x8($s5)
/* DDB14 80127754 8EA5021C */  lw         $a1, 0x21C($s5)
/* DDB18 80127758 10A00009 */  beqz       $a1, .Lrace_80127780
/* DDB1C 8012775C 00000000 */   nop
/* DDB20 80127760 8EA2001C */  lw         $v0, 0x1C($s5)
/* DDB24 80127764 8C440044 */  lw         $a0, 0x44($v0)
/* DDB28 80127768 0C034F7B */  jal        func_race_800D3DEC
/* DDB2C 8012776C 00000000 */   nop
/* DDB30 80127770 08049DE0 */  j          .Lrace_80127780
/* DDB34 80127774 AEA0021C */   sw        $zero, 0x21C($s5)
.Lrace_80127778:
/* DDB38 80127778 AEA20004 */  sw         $v0, 0x4($s5)
/* DDB3C 8012777C AEA00008 */  sw         $zero, 0x8($s5)
.Lrace_80127780:
/* DDB40 80127780 8FBF00A8 */  lw         $ra, 0xA8($sp)
/* DDB44 80127784 8FB500A4 */  lw         $s5, 0xA4($sp)
/* DDB48 80127788 8FB400A0 */  lw         $s4, 0xA0($sp)
/* DDB4C 8012778C 8FB3009C */  lw         $s3, 0x9C($sp)
/* DDB50 80127790 8FB20098 */  lw         $s2, 0x98($sp)
/* DDB54 80127794 8FB10094 */  lw         $s1, 0x94($sp)
/* DDB58 80127798 8FB00090 */  lw         $s0, 0x90($sp)
/* DDB5C 8012779C 03E00008 */  jr         $ra
/* DDB60 801277A0 27BD00B0 */   addiu     $sp, $sp, 0xB0

glabel func_race_801277A4
/* DDB64 801277A4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* DDB68 801277A8 AFB10034 */  sw         $s1, 0x34($sp)
/* DDB6C 801277AC 00808821 */  addu       $s1, $a0, $zero
/* DDB70 801277B0 AFB00030 */  sw         $s0, 0x30($sp)
/* DDB74 801277B4 AFBF0038 */  sw         $ra, 0x38($sp)
/* DDB78 801277B8 8E230004 */  lw         $v1, 0x4($s1)
/* DDB7C 801277BC 24020003 */  addiu      $v0, $zero, 0x3
/* DDB80 801277C0 1462003D */  bne        $v1, $v0, .Lrace_801278B8
/* DDB84 801277C4 00A08021 */   addu      $s0, $a1, $zero
/* DDB88 801277C8 8E020D04 */  lw         $v0, 0xD04($s0)
/* DDB8C 801277CC 30420001 */  andi       $v0, $v0, 0x1
/* DDB90 801277D0 1040000E */  beqz       $v0, .Lrace_8012780C
/* DDB94 801277D4 00003821 */   addu      $a3, $zero, $zero
/* DDB98 801277D8 02002021 */  addu       $a0, $s0, $zero
/* DDB9C 801277DC 0C04339E */  jal        func_race_8010CE78
/* DDBA0 801277E0 24050001 */   addiu     $a1, $zero, 0x1
/* DDBA4 801277E4 0C0438E0 */  jal        func_race_8010E380
/* DDBA8 801277E8 02002021 */   addu      $a0, $s0, $zero
/* DDBAC 801277EC 8E020D64 */  lw         $v0, 0xD64($s0)
/* DDBB0 801277F0 2C420002 */  sltiu      $v0, $v0, 0x2
/* DDBB4 801277F4 14400030 */  bnez       $v0, .Lrace_801278B8
/* DDBB8 801277F8 26240030 */   addiu     $a0, $s1, 0x30
/* DDBBC 801277FC 0C040D77 */  jal        func_race_801035DC
/* DDBC0 80127800 02002821 */   addu      $a1, $s0, $zero
/* DDBC4 80127804 08049E2E */  j          .Lrace_801278B8
/* DDBC8 80127808 AE300024 */   sw        $s0, 0x24($s1)
.Lrace_8012780C:
/* DDBCC 8012780C 260303FC */  addiu      $v1, $s0, 0x3FC
/* DDBD0 80127810 3C054000 */  lui        $a1, (0x40000000 >> 16)
/* DDBD4 80127814 8C6200CC */  lw         $v0, 0xCC($v1)
/* DDBD8 80127818 3C063BE5 */  lui        $a2, (0x3BE56042 >> 16)
/* DDBDC 8012781C 34C66042 */  ori        $a2, $a2, (0x3BE56042 & 0xFFFF)
/* DDBE0 80127820 84440050 */  lh         $a0, 0x50($v0)
/* DDBE4 80127824 8C420054 */  lw         $v0, 0x54($v0)
/* DDBE8 80127828 0040F809 */  jalr       $v0
/* DDBEC 8012782C 00642021 */   addu      $a0, $v1, $a0
/* DDBF0 80127830 8E240024 */  lw         $a0, 0x24($s1)
/* DDBF4 80127834 50800004 */  beql       $a0, $zero, .Lrace_80127848
/* DDBF8 80127838 02002021 */   addu      $a0, $s0, $zero
/* DDBFC 8012783C 0C04339E */  jal        func_race_8010CE78
/* DDC00 80127840 24050001 */   addiu     $a1, $zero, 0x1
/* DDC04 80127844 02002021 */  addu       $a0, $s0, $zero
.Lrace_80127848:
/* DDC08 80127848 0C04339E */  jal        func_race_8010CE78
/* DDC0C 8012784C 00002821 */   addu      $a1, $zero, $zero
/* DDC10 80127850 0C04345D */  jal        func_race_8010D174
/* DDC14 80127854 02002021 */   addu      $a0, $s0, $zero
/* DDC18 80127858 26030018 */  addiu      $v1, $s0, 0x18
/* DDC1C 8012785C 8C62039C */  lw         $v0, 0x39C($v1)
/* DDC20 80127860 34420002 */  ori        $v0, $v0, 0x2
/* DDC24 80127864 AC62039C */  sw         $v0, 0x39C($v1)
/* DDC28 80127868 8C630044 */  lw         $v1, 0x44($v1)
/* DDC2C 8012786C 27B00020 */  addiu      $s0, $sp, 0x20
/* DDC30 80127870 8C620024 */  lw         $v0, 0x24($v1)
/* DDC34 80127874 02002821 */  addu       $a1, $s0, $zero
/* DDC38 80127878 84440010 */  lh         $a0, 0x10($v0)
/* DDC3C 8012787C 8C420014 */  lw         $v0, 0x14($v0)
/* DDC40 80127880 0040F809 */  jalr       $v0
/* DDC44 80127884 00642021 */   addu      $a0, $v1, $a0
/* DDC48 80127888 3C074348 */  lui        $a3, (0x43480000 >> 16)
/* DDC4C 8012788C 3C01800D */  lui        $at, %hi(D_race_800CEB7C)
/* DDC50 80127890 C422EB7C */  lwc1       $f2, %lo(D_race_800CEB7C)($at)
/* DDC54 80127894 3C01800D */  lui        $at, %hi(D_race_800CEB80)
/* DDC58 80127898 C420EB80 */  lwc1       $f0, %lo(D_race_800CEB80)($at)
/* DDC5C 8012789C 24050032 */  addiu      $a1, $zero, 0x32
/* DDC60 801278A0 E7A20010 */  swc1       $f2, 0x10($sp)
/* DDC64 801278A4 E7A00014 */  swc1       $f0, 0x14($sp)
/* DDC68 801278A8 E7A00018 */  swc1       $f0, 0x18($sp)
/* DDC6C 801278AC 8E240010 */  lw         $a0, 0x10($s1)
/* DDC70 801278B0 0C046530 */  jal        func_race_801194C0
/* DDC74 801278B4 02003021 */   addu      $a2, $s0, $zero
.Lrace_801278B8:
/* DDC78 801278B8 8FBF0038 */  lw         $ra, 0x38($sp)
/* DDC7C 801278BC 8FB10034 */  lw         $s1, 0x34($sp)
/* DDC80 801278C0 8FB00030 */  lw         $s0, 0x30($sp)
/* DDC84 801278C4 03E00008 */  jr         $ra
/* DDC88 801278C8 27BD0040 */   addiu     $sp, $sp, 0x40
