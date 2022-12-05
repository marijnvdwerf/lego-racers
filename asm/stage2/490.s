.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8006B990
/* 62CC0 8006B990 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62CC4 8006B994 AFB00010 */  sw         $s0, 0x10($sp)
/* 62CC8 8006B998 AFBF0014 */  sw         $ra, 0x14($sp)
/* 62CCC 8006B99C 0C013104 */  jal        func_8004C410
/* 62CD0 8006B9A0 00808021 */   addu      $s0, $a0, $zero
/* 62CD4 8006B9A4 02001021 */  addu       $v0, $s0, $zero
/* 62CD8 8006B9A8 3C038004 */  lui        $v1, %hi(D_8003ED48)
/* 62CDC 8006B9AC 2463ED48 */  addiu      $v1, $v1, %lo(D_8003ED48)
/* 62CE0 8006B9B0 AC430008 */  sw         $v1, 0x8($v0)
/* 62CE4 8006B9B4 AC400024 */  sw         $zero, 0x24($v0)
/* 62CE8 8006B9B8 AC400018 */  sw         $zero, 0x18($v0)
/* 62CEC 8006B9BC AC40001C */  sw         $zero, 0x1C($v0)
/* 62CF0 8006B9C0 AC400020 */  sw         $zero, 0x20($v0)
/* 62CF4 8006B9C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 62CF8 8006B9C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 62CFC 8006B9CC 03E00008 */  jr         $ra
/* 62D00 8006B9D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006B9D4
/* 62D04 8006B9D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 62D08 8006B9D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 62D0C 8006B9DC 00808021 */  addu       $s0, $a0, $zero
/* 62D10 8006B9E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 62D14 8006B9E4 00A08821 */  addu       $s1, $a1, $zero
/* 62D18 8006B9E8 3C028004 */  lui        $v0, %hi(D_8003ED48)
/* 62D1C 8006B9EC 2442ED48 */  addiu      $v0, $v0, %lo(D_8003ED48)
/* 62D20 8006B9F0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 62D24 8006B9F4 0C01AF0A */  jal        func_8006BC28
/* 62D28 8006B9F8 AE020008 */   sw        $v0, 0x8($s0)
/* 62D2C 8006B9FC 02002021 */  addu       $a0, $s0, $zero
/* 62D30 8006BA00 0C013113 */  jal        func_8004C44C
/* 62D34 8006BA04 02202821 */   addu      $a1, $s1, $zero
/* 62D38 8006BA08 8FBF0018 */  lw         $ra, 0x18($sp)
/* 62D3C 8006BA0C 8FB10014 */  lw         $s1, 0x14($sp)
/* 62D40 8006BA10 8FB00010 */  lw         $s0, 0x10($sp)
/* 62D44 8006BA14 03E00008 */  jr         $ra
/* 62D48 8006BA18 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006BA1C
/* 62D4C 8006BA1C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 62D50 8006BA20 AFB40020 */  sw         $s4, 0x20($sp)
/* 62D54 8006BA24 0080A021 */  addu       $s4, $a0, $zero
/* 62D58 8006BA28 3C028008 */  lui        $v0, %hi(D_80085E50)
/* 62D5C 8006BA2C 8C445E50 */  lw         $a0, %lo(D_80085E50)($v0)
/* 62D60 8006BA30 AFBF0024 */  sw         $ra, 0x24($sp)
/* 62D64 8006BA34 AFB3001C */  sw         $s3, 0x1C($sp)
/* 62D68 8006BA38 AFB20018 */  sw         $s2, 0x18($sp)
/* 62D6C 8006BA3C AFB10014 */  sw         $s1, 0x14($sp)
/* 62D70 8006BA40 0C01FB65 */  jal        func_8007ED94
/* 62D74 8006BA44 AFB00010 */   sw        $s0, 0x10($sp)
/* 62D78 8006BA48 8E900014 */  lw         $s0, 0x14($s4)
/* 62D7C 8006BA4C 00102080 */  sll        $a0, $s0, 2
/* 62D80 8006BA50 00902021 */  addu       $a0, $a0, $s0
/* 62D84 8006BA54 00042100 */  sll        $a0, $a0, 4
/* 62D88 8006BA58 0C00943C */  jal        func_800250F0
/* 62D8C 8006BA5C 34840008 */   ori       $a0, $a0, 0x8
/* 62D90 8006BA60 24420008 */  addiu      $v0, $v0, 0x8
/* 62D94 8006BA64 00409821 */  addu       $s3, $v0, $zero
/* 62D98 8006BA68 02609021 */  addu       $s2, $s3, $zero
/* 62D9C 8006BA6C 2611FFFF */  addiu      $s1, $s0, -0x1
/* 62DA0 8006BA70 06200007 */  bltz       $s1, .L8006BA90
/* 62DA4 8006BA74 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 62DA8 8006BA78 2410FFFF */  addiu      $s0, $zero, -0x1
.L8006BA7C:
/* 62DAC 8006BA7C 0C01AF80 */  jal        func_8006BE00
/* 62DB0 8006BA80 02402021 */   addu      $a0, $s2, $zero
/* 62DB4 8006BA84 2631FFFF */  addiu      $s1, $s1, -0x1
/* 62DB8 8006BA88 1630FFFC */  bne        $s1, $s0, .L8006BA7C
/* 62DBC 8006BA8C 26520050 */   addiu     $s2, $s2, 0x50
.L8006BA90:
/* 62DC0 8006BA90 16600007 */  bnez       $s3, .L8006BAB0
/* 62DC4 8006BA94 AE930024 */   sw        $s3, 0x24($s4)
/* 62DC8 8006BA98 3C048004 */  lui        $a0, %hi(D_8003ED40)
/* 62DCC 8006BA9C 2484ED40 */  addiu      $a0, $a0, %lo(D_8003ED40)
/* 62DD0 8006BAA0 00002821 */  addu       $a1, $zero, $zero
/* 62DD4 8006BAA4 00A03021 */  addu       $a2, $a1, $zero
/* 62DD8 8006BAA8 0C011ACF */  jal        func_80046B3C
/* 62DDC 8006BAAC 00A03821 */   addu      $a3, $a1, $zero
.L8006BAB0:
/* 62DE0 8006BAB0 8E900014 */  lw         $s0, 0x14($s4)
/* 62DE4 8006BAB4 00102040 */  sll        $a0, $s0, 1
/* 62DE8 8006BAB8 00902021 */  addu       $a0, $a0, $s0
/* 62DEC 8006BABC 00042080 */  sll        $a0, $a0, 2
/* 62DF0 8006BAC0 0C00943C */  jal        func_800250F0
/* 62DF4 8006BAC4 24840008 */   addiu     $a0, $a0, 0x8
/* 62DF8 8006BAC8 24420008 */  addiu      $v0, $v0, 0x8
/* 62DFC 8006BACC 00409821 */  addu       $s3, $v0, $zero
/* 62E00 8006BAD0 02609021 */  addu       $s2, $s3, $zero
/* 62E04 8006BAD4 2611FFFF */  addiu      $s1, $s0, -0x1
/* 62E08 8006BAD8 06200007 */  bltz       $s1, .L8006BAF8
/* 62E0C 8006BADC AE70FFF8 */   sw        $s0, -0x8($s3)
/* 62E10 8006BAE0 2410FFFF */  addiu      $s0, $zero, -0x1
.L8006BAE4:
/* 62E14 8006BAE4 0C0016DC */  jal        func_80005B70
/* 62E18 8006BAE8 02402021 */   addu      $a0, $s2, $zero
/* 62E1C 8006BAEC 2631FFFF */  addiu      $s1, $s1, -0x1
/* 62E20 8006BAF0 1630FFFC */  bne        $s1, $s0, .L8006BAE4
/* 62E24 8006BAF4 2652000C */   addiu     $s2, $s2, 0xC
.L8006BAF8:
/* 62E28 8006BAF8 16600007 */  bnez       $s3, .L8006BB18
/* 62E2C 8006BAFC AE930018 */   sw        $s3, 0x18($s4)
/* 62E30 8006BB00 3C048004 */  lui        $a0, %hi(D_8003ED40)
/* 62E34 8006BB04 2484ED40 */  addiu      $a0, $a0, %lo(D_8003ED40)
/* 62E38 8006BB08 00002821 */  addu       $a1, $zero, $zero
/* 62E3C 8006BB0C 00A03021 */  addu       $a2, $a1, $zero
/* 62E40 8006BB10 0C011ACF */  jal        func_80046B3C
/* 62E44 8006BB14 00A03821 */   addu      $a3, $a1, $zero
.L8006BB18:
/* 62E48 8006BB18 8E840014 */  lw         $a0, 0x14($s4)
/* 62E4C 8006BB1C 0C00943C */  jal        func_800250F0
/* 62E50 8006BB20 00042080 */   sll       $a0, $a0, 2
/* 62E54 8006BB24 14400007 */  bnez       $v0, .L8006BB44
/* 62E58 8006BB28 AE82001C */   sw        $v0, 0x1C($s4)
/* 62E5C 8006BB2C 3C048004 */  lui        $a0, %hi(D_8003ED40)
/* 62E60 8006BB30 2484ED40 */  addiu      $a0, $a0, %lo(D_8003ED40)
/* 62E64 8006BB34 00002821 */  addu       $a1, $zero, $zero
/* 62E68 8006BB38 00A03021 */  addu       $a2, $a1, $zero
/* 62E6C 8006BB3C 0C011ACF */  jal        func_80046B3C
/* 62E70 8006BB40 00A03821 */   addu      $a3, $a1, $zero
.L8006BB44:
/* 62E74 8006BB44 8E840014 */  lw         $a0, 0x14($s4)
/* 62E78 8006BB48 0C00943C */  jal        func_800250F0
/* 62E7C 8006BB4C 00042040 */   sll       $a0, $a0, 1
/* 62E80 8006BB50 14400007 */  bnez       $v0, .L8006BB70
/* 62E84 8006BB54 AE820020 */   sw        $v0, 0x20($s4)
/* 62E88 8006BB58 3C048004 */  lui        $a0, %hi(D_8003ED40)
/* 62E8C 8006BB5C 2484ED40 */  addiu      $a0, $a0, %lo(D_8003ED40)
/* 62E90 8006BB60 00002821 */  addu       $a1, $zero, $zero
/* 62E94 8006BB64 00A03021 */  addu       $a2, $a1, $zero
/* 62E98 8006BB68 0C011ACF */  jal        func_80046B3C
/* 62E9C 8006BB6C 00A03821 */   addu      $a3, $a1, $zero
.L8006BB70:
/* 62EA0 8006BB70 0C01FB72 */  jal        func_8007EDC8
/* 62EA4 8006BB74 00000000 */   nop
/* 62EA8 8006BB78 8FBF0024 */  lw         $ra, 0x24($sp)
/* 62EAC 8006BB7C 8FB40020 */  lw         $s4, 0x20($sp)
/* 62EB0 8006BB80 8FB3001C */  lw         $s3, 0x1C($sp)
/* 62EB4 8006BB84 8FB20018 */  lw         $s2, 0x18($sp)
/* 62EB8 8006BB88 8FB10014 */  lw         $s1, 0x14($sp)
/* 62EBC 8006BB8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 62EC0 8006BB90 03E00008 */  jr         $ra
/* 62EC4 8006BB94 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006BB98
/* 62EC8 8006BB98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 62ECC 8006BB9C AFB10014 */  sw         $s1, 0x14($sp)
/* 62ED0 8006BBA0 00808821 */  addu       $s1, $a0, $zero
/* 62ED4 8006BBA4 3C028008 */  lui        $v0, %hi(D_80085E50)
/* 62ED8 8006BBA8 8C445E50 */  lw         $a0, %lo(D_80085E50)($v0)
/* 62EDC 8006BBAC AFB00010 */  sw         $s0, 0x10($sp)
/* 62EE0 8006BBB0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 62EE4 8006BBB4 0C01FB65 */  jal        func_8007ED94
/* 62EE8 8006BBB8 00A08021 */   addu      $s0, $a1, $zero
/* 62EEC 8006BBBC 8E230020 */  lw         $v1, 0x20($s1)
/* 62EF0 8006BBC0 00101040 */  sll        $v0, $s0, 1
/* 62EF4 8006BBC4 00431021 */  addu       $v0, $v0, $v1
/* 62EF8 8006BBC8 94440000 */  lhu        $a0, 0x0($v0)
/* 62EFC 8006BBCC 24840001 */  addiu      $a0, $a0, 0x1
/* 62F00 8006BBD0 0C00943C */  jal        func_800250F0
/* 62F04 8006BBD4 00042040 */   sll       $a0, $a0, 1
/* 62F08 8006BBD8 8E23001C */  lw         $v1, 0x1C($s1)
/* 62F0C 8006BBDC 00108080 */  sll        $s0, $s0, 2
/* 62F10 8006BBE0 02031821 */  addu       $v1, $s0, $v1
/* 62F14 8006BBE4 0C01FB72 */  jal        func_8007EDC8
/* 62F18 8006BBE8 AC620000 */   sw        $v0, 0x0($v1)
/* 62F1C 8006BBEC 8E22001C */  lw         $v0, 0x1C($s1)
/* 62F20 8006BBF0 02028021 */  addu       $s0, $s0, $v0
/* 62F24 8006BBF4 8E020000 */  lw         $v0, 0x0($s0)
/* 62F28 8006BBF8 14400006 */  bnez       $v0, .L8006BC14
/* 62F2C 8006BBFC 3C048004 */   lui       $a0, %hi(D_8003ED40)
/* 62F30 8006BC00 2484ED40 */  addiu      $a0, $a0, %lo(D_8003ED40)
/* 62F34 8006BC04 00002821 */  addu       $a1, $zero, $zero
/* 62F38 8006BC08 00A03021 */  addu       $a2, $a1, $zero
/* 62F3C 8006BC0C 0C011ACF */  jal        func_80046B3C
/* 62F40 8006BC10 00A03821 */   addu      $a3, $a1, $zero
.L8006BC14:
/* 62F44 8006BC14 8FBF0018 */  lw         $ra, 0x18($sp)
/* 62F48 8006BC18 8FB10014 */  lw         $s1, 0x14($sp)
/* 62F4C 8006BC1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 62F50 8006BC20 03E00008 */  jr         $ra
/* 62F54 8006BC24 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006BC28
/* 62F58 8006BC28 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 62F5C 8006BC2C AFB10014 */  sw         $s1, 0x14($sp)
/* 62F60 8006BC30 00808821 */  addu       $s1, $a0, $zero
/* 62F64 8006BC34 AFBF0018 */  sw         $ra, 0x18($sp)
/* 62F68 8006BC38 AFB00010 */  sw         $s0, 0x10($sp)
/* 62F6C 8006BC3C 8E240024 */  lw         $a0, 0x24($s1)
/* 62F70 8006BC40 10800015 */  beqz       $a0, .L8006BC98
/* 62F74 8006BC44 00000000 */   nop
/* 62F78 8006BC48 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 62F7C 8006BC4C 00031080 */  sll        $v0, $v1, 2
/* 62F80 8006BC50 00431021 */  addu       $v0, $v0, $v1
/* 62F84 8006BC54 00021100 */  sll        $v0, $v0, 4
/* 62F88 8006BC58 00828021 */  addu       $s0, $a0, $v0
/* 62F8C 8006BC5C 1090000B */  beq        $a0, $s0, .L8006BC8C
/* 62F90 8006BC60 2610FFB0 */   addiu     $s0, $s0, -0x50
.L8006BC64:
/* 62F94 8006BC64 8E02003C */  lw         $v0, 0x3C($s0)
/* 62F98 8006BC68 24050002 */  addiu      $a1, $zero, 0x2
/* 62F9C 8006BC6C 84440040 */  lh         $a0, 0x40($v0)
/* 62FA0 8006BC70 8C420044 */  lw         $v0, 0x44($v0)
/* 62FA4 8006BC74 0040F809 */  jalr       $v0
/* 62FA8 8006BC78 02042021 */   addu      $a0, $s0, $a0
/* 62FAC 8006BC7C 8E220024 */  lw         $v0, 0x24($s1)
/* 62FB0 8006BC80 1450FFF8 */  bne        $v0, $s0, .L8006BC64
/* 62FB4 8006BC84 2610FFB0 */   addiu     $s0, $s0, -0x50
/* 62FB8 8006BC88 8E240024 */  lw         $a0, 0x24($s1)
.L8006BC8C:
/* 62FBC 8006BC8C 0C009444 */  jal        func_80025110
/* 62FC0 8006BC90 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 62FC4 8006BC94 AE200024 */  sw         $zero, 0x24($s1)
.L8006BC98:
/* 62FC8 8006BC98 8E220008 */  lw         $v0, 0x8($s1)
/* 62FCC 8006BC9C 84440030 */  lh         $a0, 0x30($v0)
/* 62FD0 8006BCA0 8C420034 */  lw         $v0, 0x34($v0)
/* 62FD4 8006BCA4 0040F809 */  jalr       $v0
/* 62FD8 8006BCA8 02242021 */   addu      $a0, $s1, $a0
/* 62FDC 8006BCAC 0C0132D4 */  jal        func_8004CB50
/* 62FE0 8006BCB0 02202021 */   addu      $a0, $s1, $zero
/* 62FE4 8006BCB4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 62FE8 8006BCB8 8FB10014 */  lw         $s1, 0x14($sp)
/* 62FEC 8006BCBC 8FB00010 */  lw         $s0, 0x10($sp)
/* 62FF0 8006BCC0 03E00008 */  jr         $ra
/* 62FF4 8006BCC4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006BCC8
/* 62FF8 8006BCC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 62FFC 8006BCCC AFB20018 */  sw         $s2, 0x18($sp)
/* 63000 8006BCD0 00809021 */  addu       $s2, $a0, $zero
/* 63004 8006BCD4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 63008 8006BCD8 AFB10014 */  sw         $s1, 0x14($sp)
/* 6300C 8006BCDC AFB00010 */  sw         $s0, 0x10($sp)
/* 63010 8006BCE0 8E440018 */  lw         $a0, 0x18($s2)
/* 63014 8006BCE4 10800013 */  beqz       $a0, .L8006BD34
/* 63018 8006BCE8 00000000 */   nop
/* 6301C 8006BCEC 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 63020 8006BCF0 00031040 */  sll        $v0, $v1, 1
/* 63024 8006BCF4 00431021 */  addu       $v0, $v0, $v1
/* 63028 8006BCF8 00021080 */  sll        $v0, $v0, 2
/* 6302C 8006BCFC 00828021 */  addu       $s0, $a0, $v0
/* 63030 8006BD00 10900009 */  beq        $a0, $s0, .L8006BD28
/* 63034 8006BD04 00000000 */   nop
/* 63038 8006BD08 2610FFF4 */  addiu      $s0, $s0, -0xC
.L8006BD0C:
/* 6303C 8006BD0C 02002021 */  addu       $a0, $s0, $zero
/* 63040 8006BD10 0C0016E2 */  jal        func_80005B88
/* 63044 8006BD14 24050002 */   addiu     $a1, $zero, 0x2
/* 63048 8006BD18 8E420018 */  lw         $v0, 0x18($s2)
/* 6304C 8006BD1C 5450FFFB */  bnel       $v0, $s0, .L8006BD0C
/* 63050 8006BD20 2610FFF4 */   addiu     $s0, $s0, -0xC
/* 63054 8006BD24 8E440018 */  lw         $a0, 0x18($s2)
.L8006BD28:
/* 63058 8006BD28 0C009444 */  jal        func_80025110
/* 6305C 8006BD2C 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 63060 8006BD30 AE400018 */  sw         $zero, 0x18($s2)
.L8006BD34:
/* 63064 8006BD34 8E42001C */  lw         $v0, 0x1C($s2)
/* 63068 8006BD38 1040001A */  beqz       $v0, .L8006BDA4
/* 6306C 8006BD3C 00000000 */   nop
/* 63070 8006BD40 8E420014 */  lw         $v0, 0x14($s2)
/* 63074 8006BD44 10400011 */  beqz       $v0, .L8006BD8C
/* 63078 8006BD48 00008021 */   addu      $s0, $zero, $zero
.L8006BD4C:
/* 6307C 8006BD4C 8E42001C */  lw         $v0, 0x1C($s2)
/* 63080 8006BD50 00108880 */  sll        $s1, $s0, 2
/* 63084 8006BD54 02221021 */  addu       $v0, $s1, $v0
/* 63088 8006BD58 8C440000 */  lw         $a0, 0x0($v0)
/* 6308C 8006BD5C 10800003 */  beqz       $a0, .L8006BD6C
/* 63090 8006BD60 00000000 */   nop
/* 63094 8006BD64 0C009444 */  jal        func_80025110
/* 63098 8006BD68 00000000 */   nop
.L8006BD6C:
/* 6309C 8006BD6C 8E42001C */  lw         $v0, 0x1C($s2)
/* 630A0 8006BD70 02221021 */  addu       $v0, $s1, $v0
/* 630A4 8006BD74 AC400000 */  sw         $zero, 0x0($v0)
/* 630A8 8006BD78 8E420014 */  lw         $v0, 0x14($s2)
/* 630AC 8006BD7C 26100001 */  addiu      $s0, $s0, 0x1
/* 630B0 8006BD80 0202102B */  sltu       $v0, $s0, $v0
/* 630B4 8006BD84 1440FFF1 */  bnez       $v0, .L8006BD4C
/* 630B8 8006BD88 00000000 */   nop
.L8006BD8C:
/* 630BC 8006BD8C 8E44001C */  lw         $a0, 0x1C($s2)
/* 630C0 8006BD90 50800004 */  beql       $a0, $zero, .L8006BDA4
/* 630C4 8006BD94 AE40001C */   sw        $zero, 0x1C($s2)
/* 630C8 8006BD98 0C009444 */  jal        func_80025110
/* 630CC 8006BD9C 00000000 */   nop
/* 630D0 8006BDA0 AE40001C */  sw         $zero, 0x1C($s2)
.L8006BDA4:
/* 630D4 8006BDA4 8E440020 */  lw         $a0, 0x20($s2)
/* 630D8 8006BDA8 10800004 */  beqz       $a0, .L8006BDBC
/* 630DC 8006BDAC 00000000 */   nop
/* 630E0 8006BDB0 0C009444 */  jal        func_80025110
/* 630E4 8006BDB4 00000000 */   nop
/* 630E8 8006BDB8 AE400020 */  sw         $zero, 0x20($s2)
.L8006BDBC:
/* 630EC 8006BDBC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 630F0 8006BDC0 8FB20018 */  lw         $s2, 0x18($sp)
/* 630F4 8006BDC4 8FB10014 */  lw         $s1, 0x14($sp)
/* 630F8 8006BDC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 630FC 8006BDCC 03E00008 */  jr         $ra
/* 63100 8006BDD0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006BDD4
/* 63104 8006BDD4 00051880 */  sll        $v1, $a1, 2
/* 63108 8006BDD8 00651821 */  addu       $v1, $v1, $a1
/* 6310C 8006BDDC 8C820024 */  lw         $v0, 0x24($a0)
/* 63110 8006BDE0 00031900 */  sll        $v1, $v1, 4
/* 63114 8006BDE4 03E00008 */  jr         $ra
/* 63118 8006BDE8 00431021 */   addu      $v0, $v0, $v1

glabel func_8006BDEC
/* 6311C 8006BDEC 3C028008 */  lui        $v0, %hi(D_80085E50)
/* 63120 8006BDF0 03E00008 */  jr         $ra
/* 63124 8006BDF4 AC445E50 */   sw        $a0, %lo(D_80085E50)($v0)
