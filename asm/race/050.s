.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800D5890
/* 8BC50 800D5890 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BC54 800D5894 AFB00010 */  sw         $s0, 0x10($sp)
/* 8BC58 800D5898 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8BC5C 800D589C 0C03592C */  jal        func_race_800D64B0
/* 8BC60 800D58A0 00808021 */   addu      $s0, $a0, $zero
/* 8BC64 800D58A4 02002021 */  addu       $a0, $s0, $zero
/* 8BC68 800D58A8 3C02800D */  lui        $v0, %hi(D_race_800CA9F0)
/* 8BC6C 800D58AC 2442A9F0 */  addiu      $v0, $v0, %lo(D_race_800CA9F0)
/* 8BC70 800D58B0 0C035646 */  jal        func_race_800D5918
/* 8BC74 800D58B4 AE02001C */   sw        $v0, 0x1C($s0)
/* 8BC78 800D58B8 02001021 */  addu       $v0, $s0, $zero
/* 8BC7C 800D58BC A0400018 */  sb         $zero, 0x18($v0)
/* 8BC80 800D58C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8BC84 800D58C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BC88 800D58C8 03E00008 */  jr         $ra
/* 8BC8C 800D58CC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D58D0
/* 8BC90 800D58D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8BC94 800D58D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 8BC98 800D58D8 00808021 */  addu       $s0, $a0, $zero
/* 8BC9C 800D58DC AFB10014 */  sw         $s1, 0x14($sp)
/* 8BCA0 800D58E0 00A08821 */  addu       $s1, $a1, $zero
/* 8BCA4 800D58E4 3C02800D */  lui        $v0, %hi(D_race_800CA9F0)
/* 8BCA8 800D58E8 2442A9F0 */  addiu      $v0, $v0, %lo(D_race_800CA9F0)
/* 8BCAC 800D58EC AFBF0018 */  sw         $ra, 0x18($sp)
/* 8BCB0 800D58F0 0C03567D */  jal        func_race_800D59F4
/* 8BCB4 800D58F4 AE02001C */   sw        $v0, 0x1C($s0)
/* 8BCB8 800D58F8 02002021 */  addu       $a0, $s0, $zero
/* 8BCBC 800D58FC 0C03593D */  jal        func_race_800D64F4
/* 8BCC0 800D5900 02202821 */   addu      $a1, $s1, $zero
/* 8BCC4 800D5904 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8BCC8 800D5908 8FB10014 */  lw         $s1, 0x14($sp)
/* 8BCCC 800D590C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BCD0 800D5910 03E00008 */  jr         $ra
/* 8BCD4 800D5914 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D5918
/* 8BCD8 800D5918 AC800020 */  sw         $zero, 0x20($a0)
/* 8BCDC 800D591C A0800024 */  sb         $zero, 0x24($a0)
/* 8BCE0 800D5920 AC80002C */  sw         $zero, 0x2C($a0)
/* 8BCE4 800D5924 03E00008 */  jr         $ra
/* 8BCE8 800D5928 A0800030 */   sb        $zero, 0x30($a0)

glabel func_race_800D592C
/* 8BCEC 800D592C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8BCF0 800D5930 AFB00010 */  sw         $s0, 0x10($sp)
/* 8BCF4 800D5934 00808021 */  addu       $s0, $a0, $zero
/* 8BCF8 800D5938 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8BCFC 800D593C AFB10014 */  sw         $s1, 0x14($sp)
/* 8BD00 800D5940 8E020014 */  lw         $v0, 0x14($s0)
/* 8BD04 800D5944 10400003 */  beqz       $v0, .Lrace_800D5954
/* 8BD08 800D5948 00A08821 */   addu      $s1, $a1, $zero
/* 8BD0C 800D594C 0C03567D */  jal        func_race_800D59F4
/* 8BD10 800D5950 00000000 */   nop
.Lrace_800D5954:
/* 8BD14 800D5954 00002821 */  addu       $a1, $zero, $zero
/* 8BD18 800D5958 02202021 */  addu       $a0, $s1, $zero
/* 8BD1C 800D595C 8E220000 */  lw         $v0, 0x0($s1)
/* 8BD20 800D5960 02001821 */  addu       $v1, $s0, $zero
/* 8BD24 800D5964 AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800D5968:
/* 8BD28 800D5968 8C820004 */  lw         $v0, 0x4($a0)
/* 8BD2C 800D596C 24840004 */  addiu      $a0, $a0, 0x4
/* 8BD30 800D5970 24A50001 */  addiu      $a1, $a1, 0x1
/* 8BD34 800D5974 AC620004 */  sw         $v0, 0x4($v1)
/* 8BD38 800D5978 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 8BD3C 800D597C 1440FFFA */  bnez       $v0, .Lrace_800D5968
/* 8BD40 800D5980 24630004 */   addiu     $v1, $v1, 0x4
/* 8BD44 800D5984 8E220010 */  lw         $v0, 0x10($s1)
/* 8BD48 800D5988 AE020000 */  sw         $v0, 0x0($s0)
/* 8BD4C 800D598C 8E220014 */  lw         $v0, 0x14($s1)
/* 8BD50 800D5990 26040024 */  addiu      $a0, $s0, 0x24
/* 8BD54 800D5994 AE020020 */  sw         $v0, 0x20($s0)
/* 8BD58 800D5998 8E220020 */  lw         $v0, 0x20($s1)
/* 8BD5C 800D599C 26250018 */  addiu      $a1, $s1, 0x18
/* 8BD60 800D59A0 AE02002C */  sw         $v0, 0x2C($s0)
/* 8BD64 800D59A4 92220028 */  lbu        $v0, 0x28($s1)
/* 8BD68 800D59A8 24060008 */  addiu      $a2, $zero, 0x8
/* 8BD6C 800D59AC 0C000708 */  jal        func_80001C20
/* 8BD70 800D59B0 A2020030 */   sb        $v0, 0x30($s0)
/* 8BD74 800D59B4 8E220024 */  lw         $v0, 0x24($s1)
/* 8BD78 800D59B8 10400004 */  beqz       $v0, .Lrace_800D59CC
/* 8BD7C 800D59BC 00000000 */   nop
/* 8BD80 800D59C0 92020018 */  lbu        $v0, 0x18($s0)
/* 8BD84 800D59C4 34420004 */  ori        $v0, $v0, 0x4
/* 8BD88 800D59C8 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800D59CC:
/* 8BD8C 800D59CC 92020018 */  lbu        $v0, 0x18($s0)
/* 8BD90 800D59D0 24030001 */  addiu      $v1, $zero, 0x1
/* 8BD94 800D59D4 AE030014 */  sw         $v1, 0x14($s0)
/* 8BD98 800D59D8 304200DF */  andi       $v0, $v0, 0xDF
/* 8BD9C 800D59DC A2020018 */  sb         $v0, 0x18($s0)
/* 8BDA0 800D59E0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8BDA4 800D59E4 8FB10014 */  lw         $s1, 0x14($sp)
/* 8BDA8 800D59E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BDAC 800D59EC 03E00008 */  jr         $ra
/* 8BDB0 800D59F0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D59F4
/* 8BDB4 800D59F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BDB8 800D59F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 8BDBC 800D59FC 00808021 */  addu       $s0, $a0, $zero
/* 8BDC0 800D5A00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8BDC4 800D5A04 8E02001C */  lw         $v0, 0x1C($s0)
/* 8BDC8 800D5A08 84440010 */  lh         $a0, 0x10($v0)
/* 8BDCC 800D5A0C 8C420014 */  lw         $v0, 0x14($v0)
/* 8BDD0 800D5A10 0040F809 */  jalr       $v0
/* 8BDD4 800D5A14 02042021 */   addu      $a0, $s0, $a0
/* 8BDD8 800D5A18 0C035646 */  jal        func_race_800D5918
/* 8BDDC 800D5A1C 02002021 */   addu      $a0, $s0, $zero
/* 8BDE0 800D5A20 0C035951 */  jal        func_race_800D6544
/* 8BDE4 800D5A24 02002021 */   addu      $a0, $s0, $zero
/* 8BDE8 800D5A28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8BDEC 800D5A2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BDF0 800D5A30 03E00008 */  jr         $ra
/* 8BDF4 800D5A34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D5A38
/* 8BDF8 800D5A38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BDFC 800D5A3C AFB00010 */  sw         $s0, 0x10($sp)
/* 8BE00 800D5A40 00808021 */  addu       $s0, $a0, $zero
/* 8BE04 800D5A44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8BE08 800D5A48 92020024 */  lbu        $v0, 0x24($s0)
/* 8BE0C 800D5A4C 10400005 */  beqz       $v0, .Lrace_800D5A64
/* 8BE10 800D5A50 00000000 */   nop
/* 8BE14 800D5A54 8E040020 */  lw         $a0, 0x20($s0)
/* 8BE18 800D5A58 8E06002C */  lw         $a2, 0x2C($s0)
/* 8BE1C 800D5A5C 0C03C60D */  jal        func_race_800F1834
/* 8BE20 800D5A60 26050024 */   addiu     $a1, $s0, 0x24
.Lrace_800D5A64:
/* 8BE24 800D5A64 92020030 */  lbu        $v0, 0x30($s0)
/* 8BE28 800D5A68 30420001 */  andi       $v0, $v0, 0x1
/* 8BE2C 800D5A6C 10400005 */  beqz       $v0, .Lrace_800D5A84
/* 8BE30 800D5A70 00000000 */   nop
/* 8BE34 800D5A74 8E030020 */  lw         $v1, 0x20($s0)
/* 8BE38 800D5A78 906200C4 */  lbu        $v0, 0xC4($v1)
/* 8BE3C 800D5A7C 304200FE */  andi       $v0, $v0, 0xFE
/* 8BE40 800D5A80 A06200C4 */  sb         $v0, 0xC4($v1)
.Lrace_800D5A84:
/* 8BE44 800D5A84 92020030 */  lbu        $v0, 0x30($s0)
/* 8BE48 800D5A88 30420002 */  andi       $v0, $v0, 0x2
/* 8BE4C 800D5A8C 10400005 */  beqz       $v0, .Lrace_800D5AA4
/* 8BE50 800D5A90 00000000 */   nop
/* 8BE54 800D5A94 8E030020 */  lw         $v1, 0x20($s0)
/* 8BE58 800D5A98 906200C4 */  lbu        $v0, 0xC4($v1)
/* 8BE5C 800D5A9C 34420001 */  ori        $v0, $v0, 0x1
/* 8BE60 800D5AA0 A06200C4 */  sb         $v0, 0xC4($v1)
.Lrace_800D5AA4:
/* 8BE64 800D5AA4 92020030 */  lbu        $v0, 0x30($s0)
/* 8BE68 800D5AA8 30420004 */  andi       $v0, $v0, 0x4
/* 8BE6C 800D5AAC 10400005 */  beqz       $v0, .Lrace_800D5AC4
/* 8BE70 800D5AB0 00000000 */   nop
/* 8BE74 800D5AB4 8E030020 */  lw         $v1, 0x20($s0)
/* 8BE78 800D5AB8 906200C4 */  lbu        $v0, 0xC4($v1)
/* 8BE7C 800D5ABC 304200FD */  andi       $v0, $v0, 0xFD
/* 8BE80 800D5AC0 A06200C4 */  sb         $v0, 0xC4($v1)
.Lrace_800D5AC4:
/* 8BE84 800D5AC4 92020030 */  lbu        $v0, 0x30($s0)
/* 8BE88 800D5AC8 30420008 */  andi       $v0, $v0, 0x8
/* 8BE8C 800D5ACC 10400005 */  beqz       $v0, .Lrace_800D5AE4
/* 8BE90 800D5AD0 02002021 */   addu      $a0, $s0, $zero
/* 8BE94 800D5AD4 8E030020 */  lw         $v1, 0x20($s0)
/* 8BE98 800D5AD8 906200C4 */  lbu        $v0, 0xC4($v1)
/* 8BE9C 800D5ADC 34420002 */  ori        $v0, $v0, 0x2
/* 8BEA0 800D5AE0 A06200C4 */  sb         $v0, 0xC4($v1)
.Lrace_800D5AE4:
/* 8BEA4 800D5AE4 8E050014 */  lw         $a1, 0x14($s0)
/* 8BEA8 800D5AE8 0C03596C */  jal        func_race_800D65B0
/* 8BEAC 800D5AEC 24060001 */   addiu     $a2, $zero, 0x1
/* 8BEB0 800D5AF0 24020005 */  addiu      $v0, $zero, 0x5
/* 8BEB4 800D5AF4 AE020014 */  sw         $v0, 0x14($s0)
/* 8BEB8 800D5AF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8BEBC 800D5AFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BEC0 800D5B00 03E00008 */  jr         $ra
/* 8BEC4 800D5B04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D5B08
/* 8BEC8 800D5B08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BECC 800D5B0C AFB00010 */  sw         $s0, 0x10($sp)
/* 8BED0 800D5B10 00808021 */  addu       $s0, $a0, $zero
/* 8BED4 800D5B14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8BED8 800D5B18 8E050014 */  lw         $a1, 0x14($s0)
/* 8BEDC 800D5B1C 0C03596C */  jal        func_race_800D65B0
/* 8BEE0 800D5B20 24060003 */   addiu     $a2, $zero, 0x3
/* 8BEE4 800D5B24 92020018 */  lbu        $v0, 0x18($s0)
/* 8BEE8 800D5B28 24030001 */  addiu      $v1, $zero, 0x1
/* 8BEEC 800D5B2C AE030014 */  sw         $v1, 0x14($s0)
/* 8BEF0 800D5B30 304200DF */  andi       $v0, $v0, 0xDF
/* 8BEF4 800D5B34 A2020018 */  sb         $v0, 0x18($s0)
/* 8BEF8 800D5B38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8BEFC 800D5B3C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BF00 800D5B40 03E00008 */  jr         $ra
/* 8BF04 800D5B44 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D5B48
/* 8BF08 800D5B48 90820030 */  lbu        $v0, 0x30($a0)
/* 8BF0C 800D5B4C 03E00008 */  jr         $ra
/* 8BF10 800D5B50 00000000 */   nop

glabel func_race_800D5B54
/* 8BF14 800D5B54 8C82002C */  lw         $v0, 0x2C($a0)
/* 8BF18 800D5B58 03E00008 */  jr         $ra
/* 8BF1C 800D5B5C 00000000 */   nop

glabel func_race_800D5B60
/* 8BF20 800D5B60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BF24 800D5B64 24820024 */  addiu      $v0, $a0, 0x24
/* 8BF28 800D5B68 00A02021 */  addu       $a0, $a1, $zero
/* 8BF2C 800D5B6C 00402821 */  addu       $a1, $v0, $zero
/* 8BF30 800D5B70 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8BF34 800D5B74 0C000708 */  jal        func_80001C20
/* 8BF38 800D5B78 24060008 */   addiu     $a2, $zero, 0x8
/* 8BF3C 800D5B7C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8BF40 800D5B80 03E00008 */  jr         $ra
/* 8BF44 800D5B84 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D5B88
/* 8BF48 800D5B88 8C820020 */  lw         $v0, 0x20($a0)
/* 8BF4C 800D5B8C 03E00008 */  jr         $ra
/* 8BF50 800D5B90 00000000 */   nop

glabel func_race_800D5B94
/* 8BF54 800D5B94 03E00008 */  jr         $ra
/* 8BF58 800D5B98 24020005 */   addiu     $v0, $zero, 0x5
