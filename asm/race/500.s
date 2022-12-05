.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F4AE0
/* AAEA0 800F4AE0 00801021 */  addu       $v0, $a0, $zero
/* AAEA4 800F4AE4 AC400000 */  sw         $zero, 0x0($v0)
/* AAEA8 800F4AE8 AC400004 */  sw         $zero, 0x4($v0)
/* AAEAC 800F4AEC AC400008 */  sw         $zero, 0x8($v0)
/* AAEB0 800F4AF0 AC40000C */  sw         $zero, 0xC($v0)
/* AAEB4 800F4AF4 AC400010 */  sw         $zero, 0x10($v0)
/* AAEB8 800F4AF8 AC400014 */  sw         $zero, 0x14($v0)
/* AAEBC 800F4AFC AC400018 */  sw         $zero, 0x18($v0)
/* AAEC0 800F4B00 AC40001C */  sw         $zero, 0x1C($v0)
/* AAEC4 800F4B04 03E00008 */  jr         $ra
/* AAEC8 800F4B08 AC400020 */   sw        $zero, 0x20($v0)

glabel func_race_800F4B0C
/* AAECC 800F4B0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AAED0 800F4B10 AFB10014 */  sw         $s1, 0x14($sp)
/* AAED4 800F4B14 00808821 */  addu       $s1, $a0, $zero
/* AAED8 800F4B18 AFB00010 */  sw         $s0, 0x10($sp)
/* AAEDC 800F4B1C AFBF0018 */  sw         $ra, 0x18($sp)
/* AAEE0 800F4B20 0C03D2D4 */  jal        func_race_800F4B50
/* AAEE4 800F4B24 00A08021 */   addu      $s0, $a1, $zero
/* AAEE8 800F4B28 32100001 */  andi       $s0, $s0, 0x1
/* AAEEC 800F4B2C 12000003 */  beqz       $s0, .Lrace_800F4B3C
/* AAEF0 800F4B30 00000000 */   nop
/* AAEF4 800F4B34 0C01FB5C */  jal        func_8007ED70
/* AAEF8 800F4B38 02202021 */   addu      $a0, $s1, $zero
.Lrace_800F4B3C:
/* AAEFC 800F4B3C 8FBF0018 */  lw         $ra, 0x18($sp)
/* AAF00 800F4B40 8FB10014 */  lw         $s1, 0x14($sp)
/* AAF04 800F4B44 8FB00010 */  lw         $s0, 0x10($sp)
/* AAF08 800F4B48 03E00008 */  jr         $ra
/* AAF0C 800F4B4C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F4B50
/* AAF10 800F4B50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AAF14 800F4B54 AFB00010 */  sw         $s0, 0x10($sp)
/* AAF18 800F4B58 00808021 */  addu       $s0, $a0, $zero
/* AAF1C 800F4B5C AFBF0014 */  sw         $ra, 0x14($sp)
/* AAF20 800F4B60 8E030000 */  lw         $v1, 0x0($s0)
/* AAF24 800F4B64 50600007 */  beql       $v1, $zero, .Lrace_800F4B84
/* AAF28 800F4B68 AE000000 */   sw        $zero, 0x0($s0)
/* AAF2C 800F4B6C 8C620098 */  lw         $v0, 0x98($v1)
/* AAF30 800F4B70 844400D0 */  lh         $a0, 0xD0($v0)
/* AAF34 800F4B74 8C4200D4 */  lw         $v0, 0xD4($v0)
/* AAF38 800F4B78 0040F809 */  jalr       $v0
/* AAF3C 800F4B7C 00642021 */   addu      $a0, $v1, $a0
/* AAF40 800F4B80 AE000000 */  sw         $zero, 0x0($s0)
.Lrace_800F4B84:
/* AAF44 800F4B84 8FBF0014 */  lw         $ra, 0x14($sp)
/* AAF48 800F4B88 8FB00010 */  lw         $s0, 0x10($sp)
/* AAF4C 800F4B8C 03E00008 */  jr         $ra
/* AAF50 800F4B90 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F4B94
/* AAF54 800F4B94 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AAF58 800F4B98 AFB10014 */  sw         $s1, 0x14($sp)
/* AAF5C 800F4B9C 00808821 */  addu       $s1, $a0, $zero
/* AAF60 800F4BA0 AFBF0018 */  sw         $ra, 0x18($sp)
/* AAF64 800F4BA4 AFB00010 */  sw         $s0, 0x10($sp)
/* AAF68 800F4BA8 8E220000 */  lw         $v0, 0x0($s1)
/* AAF6C 800F4BAC 10400003 */  beqz       $v0, .Lrace_800F4BBC
/* AAF70 800F4BB0 00A08021 */   addu      $s0, $a1, $zero
/* AAF74 800F4BB4 0C03D2D4 */  jal        func_race_800F4B50
/* AAF78 800F4BB8 00000000 */   nop
.Lrace_800F4BBC:
/* AAF7C 800F4BBC AE300000 */  sw         $s0, 0x0($s1)
/* AAF80 800F4BC0 8E020098 */  lw         $v0, 0x98($s0)
/* AAF84 800F4BC4 844400B8 */  lh         $a0, 0xB8($v0)
/* AAF88 800F4BC8 8C4200BC */  lw         $v0, 0xBC($v0)
/* AAF8C 800F4BCC 0040F809 */  jalr       $v0
/* AAF90 800F4BD0 02042021 */   addu      $a0, $s0, $a0
/* AAF94 800F4BD4 54400001 */  bnel       $v0, $zero, .Lrace_800F4BDC
/* AAF98 800F4BD8 AE200000 */   sw        $zero, 0x0($s1)
.Lrace_800F4BDC:
/* AAF9C 800F4BDC 8FBF0018 */  lw         $ra, 0x18($sp)
/* AAFA0 800F4BE0 8FB10014 */  lw         $s1, 0x14($sp)
/* AAFA4 800F4BE4 8FB00010 */  lw         $s0, 0x10($sp)
/* AAFA8 800F4BE8 03E00008 */  jr         $ra
/* AAFAC 800F4BEC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F4BF0
/* AAFB0 800F4BF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AAFB4 800F4BF4 AFB00010 */  sw         $s0, 0x10($sp)
/* AAFB8 800F4BF8 00808021 */  addu       $s0, $a0, $zero
/* AAFBC 800F4BFC AFB10014 */  sw         $s1, 0x14($sp)
/* AAFC0 800F4C00 AFBF0018 */  sw         $ra, 0x18($sp)
/* AAFC4 800F4C04 8E020000 */  lw         $v0, 0x0($s0)
/* AAFC8 800F4C08 44860000 */  mtc1       $a2, $f0
/* AAFCC 800F4C0C 10400037 */  beqz       $v0, .Lrace_800F4CEC
/* AAFD0 800F4C10 00A08821 */   addu      $s1, $a1, $zero
/* AAFD4 800F4C14 8E020018 */  lw         $v0, 0x18($s0)
/* AAFD8 800F4C18 10400034 */  beqz       $v0, .Lrace_800F4CEC
/* AAFDC 800F4C1C 00000000 */   nop
/* AAFE0 800F4C20 8E02001C */  lw         $v0, 0x1C($s0)
/* AAFE4 800F4C24 10400004 */  beqz       $v0, .Lrace_800F4C38
/* AAFE8 800F4C28 00000000 */   nop
/* AAFEC 800F4C2C 44050000 */  mfc1       $a1, $f0
/* AAFF0 800F4C30 0C03D374 */  jal        func_race_800F4DD0
/* AAFF4 800F4C34 00000000 */   nop
.Lrace_800F4C38:
/* AAFF8 800F4C38 8E030004 */  lw         $v1, 0x4($s0)
/* AAFFC 800F4C3C 0223102B */  sltu       $v0, $s1, $v1
/* AB000 800F4C40 14400006 */  bnez       $v0, .Lrace_800F4C5C
/* AB004 800F4C44 00711023 */   subu      $v0, $v1, $s1
/* AB008 800F4C48 AE000004 */  sw         $zero, 0x4($s0)
/* AB00C 800F4C4C 0C03D340 */  jal        func_race_800F4D00
/* AB010 800F4C50 02002021 */   addu      $a0, $s0, $zero
/* AB014 800F4C54 0803D33B */  j          .Lrace_800F4CEC
/* AB018 800F4C58 00000000 */   nop
.Lrace_800F4C5C:
/* AB01C 800F4C5C 8E040008 */  lw         $a0, 0x8($s0)
/* AB020 800F4C60 AE020004 */  sw         $v0, 0x4($s0)
/* AB024 800F4C64 0091102B */  sltu       $v0, $a0, $s1
/* AB028 800F4C68 10400003 */  beqz       $v0, .Lrace_800F4C78
/* AB02C 800F4C6C 00911023 */   subu      $v0, $a0, $s1
/* AB030 800F4C70 0803D31F */  j          .Lrace_800F4C7C
/* AB034 800F4C74 AE000008 */   sw        $zero, 0x8($s0)
.Lrace_800F4C78:
/* AB038 800F4C78 AE020008 */  sw         $v0, 0x8($s0)
.Lrace_800F4C7C:
/* AB03C 800F4C7C 8E020008 */  lw         $v0, 0x8($s0)
/* AB040 800F4C80 1440001A */  bnez       $v0, .Lrace_800F4CEC
/* AB044 800F4C84 24020002 */   addiu     $v0, $zero, 0x2
/* AB048 800F4C88 8E030018 */  lw         $v1, 0x18($s0)
/* AB04C 800F4C8C 1462000D */  bne        $v1, $v0, .Lrace_800F4CC4
/* AB050 800F4C90 00000000 */   nop
/* AB054 800F4C94 8E02000C */  lw         $v0, 0xC($s0)
/* AB058 800F4C98 1040000A */  beqz       $v0, .Lrace_800F4CC4
/* AB05C 800F4C9C 00000000 */   nop
/* AB060 800F4CA0 8E030000 */  lw         $v1, 0x0($s0)
/* AB064 800F4CA4 8C620098 */  lw         $v0, 0x98($v1)
/* AB068 800F4CA8 844400C0 */  lh         $a0, 0xC0($v0)
/* AB06C 800F4CAC 8C4200C4 */  lw         $v0, 0xC4($v0)
/* AB070 800F4CB0 0040F809 */  jalr       $v0
/* AB074 800F4CB4 00642021 */   addu      $a0, $v1, $a0
/* AB078 800F4CB8 8E03000C */  lw         $v1, 0xC($s0)
/* AB07C 800F4CBC 0803D339 */  j          .Lrace_800F4CE4
/* AB080 800F4CC0 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_800F4CC4:
/* AB084 800F4CC4 8E030000 */  lw         $v1, 0x0($s0)
/* AB088 800F4CC8 8C620098 */  lw         $v0, 0x98($v1)
/* AB08C 800F4CCC 844400C8 */  lh         $a0, 0xC8($v0)
/* AB090 800F4CD0 8C4200CC */  lw         $v0, 0xCC($v0)
/* AB094 800F4CD4 0040F809 */  jalr       $v0
/* AB098 800F4CD8 00642021 */   addu      $a0, $v1, $a0
/* AB09C 800F4CDC 8E030010 */  lw         $v1, 0x10($s0)
/* AB0A0 800F4CE0 24020002 */  addiu      $v0, $zero, 0x2
.Lrace_800F4CE4:
/* AB0A4 800F4CE4 AE020018 */  sw         $v0, 0x18($s0)
/* AB0A8 800F4CE8 AE030008 */  sw         $v1, 0x8($s0)
.Lrace_800F4CEC:
/* AB0AC 800F4CEC 8FBF0018 */  lw         $ra, 0x18($sp)
/* AB0B0 800F4CF0 8FB10014 */  lw         $s1, 0x14($sp)
/* AB0B4 800F4CF4 8FB00010 */  lw         $s0, 0x10($sp)
/* AB0B8 800F4CF8 03E00008 */  jr         $ra
/* AB0BC 800F4CFC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F4D00
/* AB0C0 800F4D00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB0C4 800F4D04 AFB00010 */  sw         $s0, 0x10($sp)
/* AB0C8 800F4D08 00808021 */  addu       $s0, $a0, $zero
/* AB0CC 800F4D0C AFBF0014 */  sw         $ra, 0x14($sp)
/* AB0D0 800F4D10 8E030000 */  lw         $v1, 0x0($s0)
/* AB0D4 800F4D14 10600015 */  beqz       $v1, .Lrace_800F4D6C
/* AB0D8 800F4D18 00000000 */   nop
/* AB0DC 800F4D1C 8E020018 */  lw         $v0, 0x18($s0)
/* AB0E0 800F4D20 10400012 */  beqz       $v0, .Lrace_800F4D6C
/* AB0E4 800F4D24 00000000 */   nop
/* AB0E8 800F4D28 8C620098 */  lw         $v0, 0x98($v1)
/* AB0EC 800F4D2C 844400C8 */  lh         $a0, 0xC8($v0)
/* AB0F0 800F4D30 8C4200CC */  lw         $v0, 0xCC($v0)
/* AB0F4 800F4D34 0040F809 */  jalr       $v0
/* AB0F8 800F4D38 00642021 */   addu      $a0, $v1, $a0
/* AB0FC 800F4D3C C6020014 */  lwc1       $f2, 0x14($s0)
/* AB100 800F4D40 44800000 */  mtc1       $zero, $f0
/* AB104 800F4D44 AE000004 */  sw         $zero, 0x4($s0)
/* AB108 800F4D48 AE000008 */  sw         $zero, 0x8($s0)
/* AB10C 800F4D4C AE00000C */  sw         $zero, 0xC($s0)
/* AB110 800F4D50 AE000010 */  sw         $zero, 0x10($s0)
/* AB114 800F4D54 46001032 */  c.eq.s     $f2, $f0
/* AB118 800F4D58 00000000 */  nop
/* AB11C 800F4D5C 45010003 */  bc1t       .Lrace_800F4D6C
/* AB120 800F4D60 AE000018 */   sw        $zero, 0x18($s0)
/* AB124 800F4D64 0C03D363 */  jal        func_race_800F4D8C
/* AB128 800F4D68 02002021 */   addu      $a0, $s0, $zero
.Lrace_800F4D6C:
/* AB12C 800F4D6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB130 800F4D70 8FB00010 */  lw         $s0, 0x10($sp)
/* AB134 800F4D74 03E00008 */  jr         $ra
/* AB138 800F4D78 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F4D7C
/* AB13C 800F4D7C 24020002 */  addiu      $v0, $zero, 0x2
/* AB140 800F4D80 AC820018 */  sw         $v0, 0x18($a0)
/* AB144 800F4D84 03E00008 */  jr         $ra
/* AB148 800F4D88 AC80001C */   sw        $zero, 0x1C($a0)

glabel func_race_800F4D8C
/* AB14C 800F4D8C C4800014 */  lwc1       $f0, 0x14($a0)
/* AB150 800F4D90 3C01800D */  lui        $at, %hi(D_race_800CCD00)
/* AB154 800F4D94 C422CD00 */  lwc1       $f2, %lo(D_race_800CCD00)($at)
/* AB158 800F4D98 24020001 */  addiu      $v0, $zero, 0x1
/* AB15C 800F4D9C AC82001C */  sw         $v0, 0x1C($a0)
/* AB160 800F4DA0 2402FFFF */  addiu      $v0, $zero, -0x1
/* AB164 800F4DA4 AC820004 */  sw         $v0, 0x4($a0)
/* AB168 800F4DA8 24020032 */  addiu      $v0, $zero, 0x32
/* AB16C 800F4DAC 46020002 */  mul.s      $f0, $f0, $f2
/* AB170 800F4DB0 AC820010 */  sw         $v0, 0x10($a0)
/* AB174 800F4DB4 24020002 */  addiu      $v0, $zero, 0x2
/* AB178 800F4DB8 AC800008 */  sw         $zero, 0x8($a0)
/* AB17C 800F4DBC AC820018 */  sw         $v0, 0x18($a0)
/* AB180 800F4DC0 4600010D */  trunc.w.s  $f4, $f0
/* AB184 800F4DC4 E484000C */  swc1       $f4, 0xC($a0)
/* AB188 800F4DC8 03E00008 */  jr         $ra
/* AB18C 800F4DCC 00000000 */   nop

glabel func_race_800F4DD0
/* AB190 800F4DD0 44851000 */  mtc1       $a1, $f2
/* AB194 800F4DD4 44803000 */  mtc1       $zero, $f6
/* AB198 800F4DD8 4606103C */  c.lt.s     $f2, $f6
/* AB19C 800F4DDC 00000000 */  nop
/* AB1A0 800F4DE0 45030001 */  bc1tl      .Lrace_800F4DE8
/* AB1A4 800F4DE4 46001087 */   neg.s     $f2, $f2
.Lrace_800F4DE8:
/* AB1A8 800F4DE8 3C01800D */  lui        $at, %hi(D_race_800CCD04)
/* AB1AC 800F4DEC C420CD04 */  lwc1       $f0, %lo(D_race_800CCD04)($at)
/* AB1B0 800F4DF0 4602003C */  c.lt.s     $f0, $f2
/* AB1B4 800F4DF4 00000000 */  nop
/* AB1B8 800F4DF8 45030001 */  bc1tl      .Lrace_800F4E00
/* AB1BC 800F4DFC 46000086 */   mov.s     $f2, $f0
.Lrace_800F4E00:
/* AB1C0 800F4E00 46001103 */  div.s      $f4, $f2, $f0
/* AB1C4 800F4E04 46042102 */  mul.s      $f4, $f4, $f4
/* AB1C8 800F4E08 3C01800D */  lui        $at, %hi(D_race_800CCD08)
/* AB1CC 800F4E0C C420CD08 */  lwc1       $f0, %lo(D_race_800CCD08)($at)
/* AB1D0 800F4E10 4600203C */  c.lt.s     $f4, $f0
/* AB1D4 800F4E14 00000000 */  nop
/* AB1D8 800F4E18 45030001 */  bc1tl      .Lrace_800F4E20
/* AB1DC 800F4E1C 46003106 */   mov.s     $f4, $f6
.Lrace_800F4E20:
/* AB1E0 800F4E20 3C01800D */  lui        $at, %hi(D_race_800CCD0C)
/* AB1E4 800F4E24 C422CD0C */  lwc1       $f2, %lo(D_race_800CCD0C)($at)
/* AB1E8 800F4E28 46022082 */  mul.s      $f2, $f4, $f2
/* AB1EC 800F4E2C C4800014 */  lwc1       $f0, 0x14($a0)
/* AB1F0 800F4E30 46020002 */  mul.s      $f0, $f0, $f2
/* AB1F4 800F4E34 4600020D */  trunc.w.s  $f8, $f0
/* AB1F8 800F4E38 E488000C */  swc1       $f8, 0xC($a0)
/* AB1FC 800F4E3C 03E00008 */  jr         $ra
/* AB200 800F4E40 00000000 */   nop

glabel func_race_800F4E44
/* AB204 800F4E44 44850000 */  mtc1       $a1, $f0
/* AB208 800F4E48 44801000 */  mtc1       $zero, $f2
/* AB20C 800F4E4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB210 800F4E50 AFBF0010 */  sw         $ra, 0x10($sp)
/* AB214 800F4E54 46020032 */  c.eq.s     $f0, $f2
/* AB218 800F4E58 00000000 */  nop
/* AB21C 800F4E5C 45000008 */  bc1f       .Lrace_800F4E80
/* AB220 800F4E60 E4800014 */   swc1      $f0, 0x14($a0)
/* AB224 800F4E64 8C82001C */  lw         $v0, 0x1C($a0)
/* AB228 800F4E68 10400005 */  beqz       $v0, .Lrace_800F4E80
/* AB22C 800F4E6C 00000000 */   nop
/* AB230 800F4E70 0C03D340 */  jal        func_race_800F4D00
/* AB234 800F4E74 AC80001C */   sw        $zero, 0x1C($a0)
/* AB238 800F4E78 0803D3A5 */  j          .Lrace_800F4E94
/* AB23C 800F4E7C 00000000 */   nop
.Lrace_800F4E80:
/* AB240 800F4E80 8C820018 */  lw         $v0, 0x18($a0)
/* AB244 800F4E84 14400003 */  bnez       $v0, .Lrace_800F4E94
/* AB248 800F4E88 24020001 */   addiu     $v0, $zero, 0x1
/* AB24C 800F4E8C 0C03D363 */  jal        func_race_800F4D8C
/* AB250 800F4E90 AC82001C */   sw        $v0, 0x1C($a0)
.Lrace_800F4E94:
/* AB254 800F4E94 8FBF0010 */  lw         $ra, 0x10($sp)
/* AB258 800F4E98 03E00008 */  jr         $ra
/* AB25C 800F4E9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F4EA0
/* AB260 800F4EA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB264 800F4EA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* AB268 800F4EA8 8C820000 */  lw         $v0, 0x0($a0)
/* AB26C 800F4EAC 1040001E */  beqz       $v0, .Lrace_800F4F28
/* AB270 800F4EB0 24020001 */   addiu     $v0, $zero, 0x1
/* AB274 800F4EB4 50A2000D */  beql       $a1, $v0, .Lrace_800F4EEC
/* AB278 800F4EB8 240205DC */   addiu     $v0, $zero, 0x5DC
/* AB27C 800F4EBC 10A00008 */  beqz       $a1, .Lrace_800F4EE0
/* AB280 800F4EC0 240203E8 */   addiu     $v0, $zero, 0x3E8
/* AB284 800F4EC4 24020002 */  addiu      $v0, $zero, 0x2
/* AB288 800F4EC8 10A2000B */  beq        $a1, $v0, .Lrace_800F4EF8
/* AB28C 800F4ECC 24020003 */   addiu     $v0, $zero, 0x3
/* AB290 800F4ED0 10A20010 */  beq        $a1, $v0, .Lrace_800F4F14
/* AB294 800F4ED4 240203E8 */   addiu     $v0, $zero, 0x3E8
/* AB298 800F4ED8 0803D3C8 */  j          .Lrace_800F4F20
/* AB29C 800F4EDC 00000000 */   nop
.Lrace_800F4EE0:
/* AB2A0 800F4EE0 AC820004 */  sw         $v0, 0x4($a0)
/* AB2A4 800F4EE4 0803D3C6 */  j          .Lrace_800F4F18
/* AB2A8 800F4EE8 240201F4 */   addiu     $v0, $zero, 0x1F4
.Lrace_800F4EEC:
/* AB2AC 800F4EEC AC820004 */  sw         $v0, 0x4($a0)
/* AB2B0 800F4EF0 0803D3C6 */  j          .Lrace_800F4F18
/* AB2B4 800F4EF4 240202EE */   addiu     $v0, $zero, 0x2EE
.Lrace_800F4EF8:
/* AB2B8 800F4EF8 24021388 */  addiu      $v0, $zero, 0x1388
/* AB2BC 800F4EFC AC820004 */  sw         $v0, 0x4($a0)
/* AB2C0 800F4F00 240201F4 */  addiu      $v0, $zero, 0x1F4
/* AB2C4 800F4F04 AC82000C */  sw         $v0, 0xC($a0)
/* AB2C8 800F4F08 24020064 */  addiu      $v0, $zero, 0x64
/* AB2CC 800F4F0C 0803D3C8 */  j          .Lrace_800F4F20
/* AB2D0 800F4F10 AC820010 */   sw        $v0, 0x10($a0)
.Lrace_800F4F14:
/* AB2D4 800F4F14 AC820004 */  sw         $v0, 0x4($a0)
.Lrace_800F4F18:
/* AB2D8 800F4F18 AC82000C */  sw         $v0, 0xC($a0)
/* AB2DC 800F4F1C AC800010 */  sw         $zero, 0x10($a0)
.Lrace_800F4F20:
/* AB2E0 800F4F20 0C03D35F */  jal        func_race_800F4D7C
/* AB2E4 800F4F24 00000000 */   nop
.Lrace_800F4F28:
/* AB2E8 800F4F28 8FBF0010 */  lw         $ra, 0x10($sp)
/* AB2EC 800F4F2C 03E00008 */  jr         $ra
/* AB2F0 800F4F30 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F4F34
/* AB2F4 800F4F34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB2F8 800F4F38 AFBF0010 */  sw         $ra, 0x10($sp)
/* AB2FC 800F4F3C 8C820000 */  lw         $v0, 0x0($a0)
/* AB300 800F4F40 10400005 */  beqz       $v0, .Lrace_800F4F58
/* AB304 800F4F44 240201F4 */   addiu     $v0, $zero, 0x1F4
/* AB308 800F4F48 AC820004 */  sw         $v0, 0x4($a0)
/* AB30C 800F4F4C AC82000C */  sw         $v0, 0xC($a0)
/* AB310 800F4F50 0C03D35F */  jal        func_race_800F4D7C
/* AB314 800F4F54 AC800010 */   sw        $zero, 0x10($a0)
.Lrace_800F4F58:
/* AB318 800F4F58 8FBF0010 */  lw         $ra, 0x10($sp)
/* AB31C 800F4F5C 03E00008 */  jr         $ra
/* AB320 800F4F60 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F4F64
/* AB324 800F4F64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB328 800F4F68 AFBF0010 */  sw         $ra, 0x10($sp)
/* AB32C 800F4F6C 8C820000 */  lw         $v0, 0x0($a0)
/* AB330 800F4F70 10400005 */  beqz       $v0, .Lrace_800F4F88
/* AB334 800F4F74 24020096 */   addiu     $v0, $zero, 0x96
/* AB338 800F4F78 AC820004 */  sw         $v0, 0x4($a0)
/* AB33C 800F4F7C AC82000C */  sw         $v0, 0xC($a0)
/* AB340 800F4F80 0C03D35F */  jal        func_race_800F4D7C
/* AB344 800F4F84 AC800010 */   sw        $zero, 0x10($a0)
.Lrace_800F4F88:
/* AB348 800F4F88 8FBF0010 */  lw         $ra, 0x10($sp)
/* AB34C 800F4F8C 03E00008 */  jr         $ra
/* AB350 800F4F90 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F4F94
/* AB354 800F4F94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB358 800F4F98 AFBF0010 */  sw         $ra, 0x10($sp)
/* AB35C 800F4F9C 8C820000 */  lw         $v0, 0x0($a0)
/* AB360 800F4FA0 10400005 */  beqz       $v0, .Lrace_800F4FB8
/* AB364 800F4FA4 240201F4 */   addiu     $v0, $zero, 0x1F4
/* AB368 800F4FA8 AC820004 */  sw         $v0, 0x4($a0)
/* AB36C 800F4FAC AC82000C */  sw         $v0, 0xC($a0)
/* AB370 800F4FB0 0C03D35F */  jal        func_race_800F4D7C
/* AB374 800F4FB4 AC800010 */   sw        $zero, 0x10($a0)
.Lrace_800F4FB8:
/* AB378 800F4FB8 8FBF0010 */  lw         $ra, 0x10($sp)
/* AB37C 800F4FBC 03E00008 */  jr         $ra
/* AB380 800F4FC0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F4FC4
/* AB384 800F4FC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB388 800F4FC8 AFBF0010 */  sw         $ra, 0x10($sp)
/* AB38C 800F4FCC 8C820000 */  lw         $v0, 0x0($a0)
/* AB390 800F4FD0 10400008 */  beqz       $v0, .Lrace_800F4FF4
/* AB394 800F4FD4 00000000 */   nop
/* AB398 800F4FD8 8C820018 */  lw         $v0, 0x18($a0)
/* AB39C 800F4FDC 14400005 */  bnez       $v0, .Lrace_800F4FF4
/* AB3A0 800F4FE0 24020064 */   addiu     $v0, $zero, 0x64
/* AB3A4 800F4FE4 AC820004 */  sw         $v0, 0x4($a0)
/* AB3A8 800F4FE8 AC82000C */  sw         $v0, 0xC($a0)
/* AB3AC 800F4FEC 0C03D35F */  jal        func_race_800F4D7C
/* AB3B0 800F4FF0 AC800010 */   sw        $zero, 0x10($a0)
.Lrace_800F4FF4:
/* AB3B4 800F4FF4 8FBF0010 */  lw         $ra, 0x10($sp)
/* AB3B8 800F4FF8 03E00008 */  jr         $ra
/* AB3BC 800F4FFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F5000
/* AB3C0 800F5000 24020001 */  addiu      $v0, $zero, 0x1
/* AB3C4 800F5004 03E00008 */  jr         $ra
/* AB3C8 800F5008 AC820020 */   sw        $v0, 0x20($a0)

glabel func_race_800F500C
/* AB3CC 800F500C 03E00008 */  jr         $ra
/* AB3D0 800F5010 AC800020 */   sw        $zero, 0x20($a0)

glabel func_race_800F5014
/* AB3D4 800F5014 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB3D8 800F5018 AFBF0010 */  sw         $ra, 0x10($sp)
/* AB3DC 800F501C 8C830000 */  lw         $v1, 0x0($a0)
/* AB3E0 800F5020 10600006 */  beqz       $v1, .Lrace_800F503C
/* AB3E4 800F5024 00000000 */   nop
/* AB3E8 800F5028 8C620098 */  lw         $v0, 0x98($v1)
/* AB3EC 800F502C 844400D0 */  lh         $a0, 0xD0($v0)
/* AB3F0 800F5030 8C4200D4 */  lw         $v0, 0xD4($v0)
/* AB3F4 800F5034 0040F809 */  jalr       $v0
/* AB3F8 800F5038 00642021 */   addu      $a0, $v1, $a0
.Lrace_800F503C:
/* AB3FC 800F503C 8FBF0010 */  lw         $ra, 0x10($sp)
/* AB400 800F5040 03E00008 */  jr         $ra
/* AB404 800F5044 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F5048
/* AB408 800F5048 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB40C 800F504C AFBF0010 */  sw         $ra, 0x10($sp)
/* AB410 800F5050 8C850000 */  lw         $a1, 0x0($a0)
/* AB414 800F5054 10A00009 */  beqz       $a1, .Lrace_800F507C
/* AB418 800F5058 24020001 */   addiu     $v0, $zero, 0x1
/* AB41C 800F505C 8C830018 */  lw         $v1, 0x18($a0)
/* AB420 800F5060 14620006 */  bne        $v1, $v0, .Lrace_800F507C
/* AB424 800F5064 00000000 */   nop
/* AB428 800F5068 8CA20098 */  lw         $v0, 0x98($a1)
/* AB42C 800F506C 844400C0 */  lh         $a0, 0xC0($v0)
/* AB430 800F5070 8C4200C4 */  lw         $v0, 0xC4($v0)
/* AB434 800F5074 0040F809 */  jalr       $v0
/* AB438 800F5078 00A42021 */   addu      $a0, $a1, $a0
.Lrace_800F507C:
/* AB43C 800F507C 8FBF0010 */  lw         $ra, 0x10($sp)
/* AB440 800F5080 03E00008 */  jr         $ra
/* AB444 800F5084 27BD0018 */   addiu     $sp, $sp, 0x18
