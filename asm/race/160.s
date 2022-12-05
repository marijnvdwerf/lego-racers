.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DE8F0
/* 94CB0 800DE8F0 00801021 */  addu       $v0, $a0, $zero
/* 94CB4 800DE8F4 3C03800D */  lui        $v1, %hi(D_race_800CB360)
/* 94CB8 800DE8F8 2463B360 */  addiu      $v1, $v1, %lo(D_race_800CB360)
/* 94CBC 800DE8FC AC430000 */  sw         $v1, 0x0($v0)
/* 94CC0 800DE900 AC400008 */  sw         $zero, 0x8($v0)
/* 94CC4 800DE904 AC400004 */  sw         $zero, 0x4($v0)
/* 94CC8 800DE908 AC40000C */  sw         $zero, 0xC($v0)
/* 94CCC 800DE90C AC400020 */  sw         $zero, 0x20($v0)
/* 94CD0 800DE910 AC400010 */  sw         $zero, 0x10($v0)
/* 94CD4 800DE914 AC400014 */  sw         $zero, 0x14($v0)
/* 94CD8 800DE918 AC400018 */  sw         $zero, 0x18($v0)
/* 94CDC 800DE91C 03E00008 */  jr         $ra
/* 94CE0 800DE920 AC40001C */   sw        $zero, 0x1C($v0)

glabel func_race_800DE924
/* 94CE4 800DE924 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 94CE8 800DE928 AFB10014 */  sw         $s1, 0x14($sp)
/* 94CEC 800DE92C 00808821 */  addu       $s1, $a0, $zero
/* 94CF0 800DE930 AFB00010 */  sw         $s0, 0x10($sp)
/* 94CF4 800DE934 00A08021 */  addu       $s0, $a1, $zero
/* 94CF8 800DE938 3C02800D */  lui        $v0, %hi(D_race_800CB360)
/* 94CFC 800DE93C 2442B360 */  addiu      $v0, $v0, %lo(D_race_800CB360)
/* 94D00 800DE940 AFBF0018 */  sw         $ra, 0x18($sp)
/* 94D04 800DE944 0C037A9F */  jal        func_race_800DEA7C
/* 94D08 800DE948 AE220000 */   sw        $v0, 0x0($s1)
/* 94D0C 800DE94C 32100001 */  andi       $s0, $s0, 0x1
/* 94D10 800DE950 12000003 */  beqz       $s0, .Lrace_800DE960
/* 94D14 800DE954 00000000 */   nop
/* 94D18 800DE958 0C01FB5C */  jal        func_8007ED70
/* 94D1C 800DE95C 02202021 */   addu      $a0, $s1, $zero
.Lrace_800DE960:
/* 94D20 800DE960 8FBF0018 */  lw         $ra, 0x18($sp)
/* 94D24 800DE964 8FB10014 */  lw         $s1, 0x14($sp)
/* 94D28 800DE968 8FB00010 */  lw         $s0, 0x10($sp)
/* 94D2C 800DE96C 03E00008 */  jr         $ra
/* 94D30 800DE970 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DE974
/* 94D34 800DE974 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 94D38 800DE978 8FA20028 */  lw         $v0, 0x28($sp)
/* 94D3C 800DE97C 00804821 */  addu       $t1, $a0, $zero
/* 94D40 800DE980 AFBF0010 */  sw         $ra, 0x10($sp)
/* 94D44 800DE984 AD220014 */  sw         $v0, 0x14($t1)
/* 94D48 800DE988 00404021 */  addu       $t0, $v0, $zero
/* 94D4C 800DE98C 8FA2002C */  lw         $v0, 0x2C($sp)
/* 94D50 800DE990 8FA30030 */  lw         $v1, 0x30($sp)
/* 94D54 800DE994 AD260008 */  sw         $a2, 0x8($t1)
/* 94D58 800DE998 AD25000C */  sw         $a1, 0xC($t1)
/* 94D5C 800DE99C AD270010 */  sw         $a3, 0x10($t1)
/* 94D60 800DE9A0 AD220018 */  sw         $v0, 0x18($t1)
/* 94D64 800DE9A4 AD230020 */  sw         $v1, 0x20($t1)
/* 94D68 800DE9A8 8FA30034 */  lw         $v1, 0x34($sp)
/* 94D6C 800DE9AC 2402FFFE */  addiu      $v0, $zero, -0x2
/* 94D70 800DE9B0 00621024 */  and        $v0, $v1, $v0
/* 94D74 800DE9B4 30630004 */  andi       $v1, $v1, 0x4
/* 94D78 800DE9B8 10600028 */  beqz       $v1, .Lrace_800DEA5C
/* 94D7C 800DE9BC AD22001C */   sw        $v0, 0x1C($t1)
/* 94D80 800DE9C0 2D020400 */  sltiu      $v0, $t0, 0x400
/* 94D84 800DE9C4 14400017 */  bnez       $v0, .Lrace_800DEA24
/* 94D88 800DE9C8 3C058003 */   lui       $a1, %hi(D_8002FAB0)
/* 94D8C 800DE9CC 3C040040 */  lui        $a0, (0x401005 >> 16)
/* 94D90 800DE9D0 3C028003 */  lui        $v0, %hi(D_8002FAB0)
/* 94D94 800DE9D4 34841005 */  ori        $a0, $a0, (0x401005 & 0xFFFF)
/* 94D98 800DE9D8 8C43FAB0 */  lw         $v1, %lo(D_8002FAB0)($v0)
/* 94D9C 800DE9DC 01040019 */  multu      $t0, $a0
/* 94DA0 800DE9E0 24630001 */  addiu      $v1, $v1, 0x1
/* 94DA4 800DE9E4 306303FF */  andi       $v1, $v1, 0x3FF
/* 94DA8 800DE9E8 AC43FAB0 */  sw         $v1, %lo(D_8002FAB0)($v0)
/* 94DAC 800DE9EC 3C028003 */  lui        $v0, %hi(D_8002F2B0)
/* 94DB0 800DE9F0 2442F2B0 */  addiu      $v0, $v0, %lo(D_8002F2B0)
/* 94DB4 800DE9F4 00031840 */  sll        $v1, $v1, 1
/* 94DB8 800DE9F8 00621821 */  addu       $v1, $v1, $v0
/* 94DBC 800DE9FC 00002010 */  mfhi       $a0
/* 94DC0 800DEA00 01041023 */  subu       $v0, $t0, $a0
/* 94DC4 800DEA04 00021042 */  srl        $v0, $v0, 1
/* 94DC8 800DEA08 00822021 */  addu       $a0, $a0, $v0
/* 94DCC 800DEA0C 94620000 */  lhu        $v0, 0x0($v1)
/* 94DD0 800DEA10 00042242 */  srl        $a0, $a0, 9
/* 94DD4 800DEA14 00440018 */  mult       $v0, $a0
/* 94DD8 800DEA18 00004012 */  mflo       $t0
/* 94DDC 800DEA1C 08037A97 */  j          .Lrace_800DEA5C
/* 94DE0 800DEA20 00000000 */   nop
.Lrace_800DEA24:
/* 94DE4 800DEA24 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* 94DE8 800DEA28 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* 94DEC 800DEA2C 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* 94DF0 800DEA30 24840001 */  addiu      $a0, $a0, 0x1
/* 94DF4 800DEA34 308403FF */  andi       $a0, $a0, 0x3FF
/* 94DF8 800DEA38 00041040 */  sll        $v0, $a0, 1
/* 94DFC 800DEA3C 00431021 */  addu       $v0, $v0, $v1
/* 94E00 800DEA40 94420000 */  lhu        $v0, 0x0($v0)
/* 94E04 800DEA44 ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* 94E08 800DEA48 0048001B */  divu       $zero, $v0, $t0
/* 94E0C 800DEA4C 15000002 */  bnez       $t0, .Lrace_800DEA58
/* 94E10 800DEA50 00000000 */   nop
/* 94E14 800DEA54 0007000D */  break      7
.Lrace_800DEA58:
/* 94E18 800DEA58 00004010 */  mfhi       $t0
.Lrace_800DEA5C:
/* 94E1C 800DEA5C 8D220018 */  lw         $v0, 0x18($t1)
/* 94E20 800DEA60 14400003 */  bnez       $v0, .Lrace_800DEA70
/* 94E24 800DEA64 01202021 */   addu      $a0, $t1, $zero
/* 94E28 800DEA68 0C037B76 */  jal        func_race_800DEDD8
/* 94E2C 800DEA6C 01002821 */   addu      $a1, $t0, $zero
.Lrace_800DEA70:
/* 94E30 800DEA70 8FBF0010 */  lw         $ra, 0x10($sp)
/* 94E34 800DEA74 03E00008 */  jr         $ra
/* 94E38 800DEA78 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DEA7C
/* 94E3C 800DEA7C 8C820004 */  lw         $v0, 0x4($a0)
/* 94E40 800DEA80 50400004 */  beql       $v0, $zero, .Lrace_800DEA94
/* 94E44 800DEA84 AC800008 */   sw        $zero, 0x8($a0)
/* 94E48 800DEA88 AC400024 */  sw         $zero, 0x24($v0)
/* 94E4C 800DEA8C AC800004 */  sw         $zero, 0x4($a0)
/* 94E50 800DEA90 AC800008 */  sw         $zero, 0x8($a0)
.Lrace_800DEA94:
/* 94E54 800DEA94 AC80000C */  sw         $zero, 0xC($a0)
/* 94E58 800DEA98 AC800020 */  sw         $zero, 0x20($a0)
/* 94E5C 800DEA9C AC800010 */  sw         $zero, 0x10($a0)
/* 94E60 800DEAA0 AC800014 */  sw         $zero, 0x14($a0)
/* 94E64 800DEAA4 AC800018 */  sw         $zero, 0x18($a0)
/* 94E68 800DEAA8 03E00008 */  jr         $ra
/* 94E6C 800DEAAC AC80001C */   sw        $zero, 0x1C($a0)

glabel func_race_800DEAB0
/* 94E70 800DEAB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 94E74 800DEAB4 00803821 */  addu       $a3, $a0, $zero
/* 94E78 800DEAB8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 94E7C 800DEABC 8CE30018 */  lw         $v1, 0x18($a3)
/* 94E80 800DEAC0 10600035 */  beqz       $v1, .Lrace_800DEB98
/* 94E84 800DEAC4 00A3102B */   sltu      $v0, $a1, $v1
/* 94E88 800DEAC8 14400032 */  bnez       $v0, .Lrace_800DEB94
/* 94E8C 800DEACC 00651023 */   subu      $v0, $v1, $a1
/* 94E90 800DEAD0 8CE60010 */  lw         $a2, 0x10($a3)
/* 94E94 800DEAD4 8CE2001C */  lw         $v0, 0x1C($a3)
/* 94E98 800DEAD8 30420002 */  andi       $v0, $v0, 0x2
/* 94E9C 800DEADC 10400028 */  beqz       $v0, .Lrace_800DEB80
/* 94EA0 800DEAE0 ACE00018 */   sw        $zero, 0x18($a3)
/* 94EA4 800DEAE4 2CC20400 */  sltiu      $v0, $a2, 0x400
/* 94EA8 800DEAE8 14400017 */  bnez       $v0, .Lrace_800DEB48
/* 94EAC 800DEAEC 3C058003 */   lui       $a1, %hi(D_8002FAB0)
/* 94EB0 800DEAF0 3C040040 */  lui        $a0, (0x401005 >> 16)
/* 94EB4 800DEAF4 3C028003 */  lui        $v0, %hi(D_8002FAB0)
/* 94EB8 800DEAF8 34841005 */  ori        $a0, $a0, (0x401005 & 0xFFFF)
/* 94EBC 800DEAFC 8C43FAB0 */  lw         $v1, %lo(D_8002FAB0)($v0)
/* 94EC0 800DEB00 00C40019 */  multu      $a2, $a0
/* 94EC4 800DEB04 24630001 */  addiu      $v1, $v1, 0x1
/* 94EC8 800DEB08 306303FF */  andi       $v1, $v1, 0x3FF
/* 94ECC 800DEB0C AC43FAB0 */  sw         $v1, %lo(D_8002FAB0)($v0)
/* 94ED0 800DEB10 3C028003 */  lui        $v0, %hi(D_8002F2B0)
/* 94ED4 800DEB14 2442F2B0 */  addiu      $v0, $v0, %lo(D_8002F2B0)
/* 94ED8 800DEB18 00031840 */  sll        $v1, $v1, 1
/* 94EDC 800DEB1C 00621821 */  addu       $v1, $v1, $v0
/* 94EE0 800DEB20 00002010 */  mfhi       $a0
/* 94EE4 800DEB24 00C41023 */  subu       $v0, $a2, $a0
/* 94EE8 800DEB28 00021042 */  srl        $v0, $v0, 1
/* 94EEC 800DEB2C 00822021 */  addu       $a0, $a0, $v0
/* 94EF0 800DEB30 94620000 */  lhu        $v0, 0x0($v1)
/* 94EF4 800DEB34 00042242 */  srl        $a0, $a0, 9
/* 94EF8 800DEB38 00440018 */  mult       $v0, $a0
/* 94EFC 800DEB3C 00003012 */  mflo       $a2
/* 94F00 800DEB40 08037AE1 */  j          .Lrace_800DEB84
/* 94F04 800DEB44 00E02021 */   addu      $a0, $a3, $zero
.Lrace_800DEB48:
/* 94F08 800DEB48 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* 94F0C 800DEB4C 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* 94F10 800DEB50 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* 94F14 800DEB54 24840001 */  addiu      $a0, $a0, 0x1
/* 94F18 800DEB58 308403FF */  andi       $a0, $a0, 0x3FF
/* 94F1C 800DEB5C 00041040 */  sll        $v0, $a0, 1
/* 94F20 800DEB60 00431021 */  addu       $v0, $v0, $v1
/* 94F24 800DEB64 94420000 */  lhu        $v0, 0x0($v0)
/* 94F28 800DEB68 ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* 94F2C 800DEB6C 0046001B */  divu       $zero, $v0, $a2
/* 94F30 800DEB70 14C00002 */  bnez       $a2, .Lrace_800DEB7C
/* 94F34 800DEB74 00000000 */   nop
/* 94F38 800DEB78 0007000D */  break      7
.Lrace_800DEB7C:
/* 94F3C 800DEB7C 00003010 */  mfhi       $a2
.Lrace_800DEB80:
/* 94F40 800DEB80 00E02021 */  addu       $a0, $a3, $zero
.Lrace_800DEB84:
/* 94F44 800DEB84 0C037B76 */  jal        func_race_800DEDD8
/* 94F48 800DEB88 00C02821 */   addu      $a1, $a2, $zero
/* 94F4C 800DEB8C 08037AE6 */  j          .Lrace_800DEB98
/* 94F50 800DEB90 00000000 */   nop
.Lrace_800DEB94:
/* 94F54 800DEB94 ACE20018 */  sw         $v0, 0x18($a3)
.Lrace_800DEB98:
/* 94F58 800DEB98 8FBF0010 */  lw         $ra, 0x10($sp)
/* 94F5C 800DEB9C 03E00008 */  jr         $ra
/* 94F60 800DEBA0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DEBA4
/* 94F64 800DEBA4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 94F68 800DEBA8 AFB00010 */  sw         $s0, 0x10($sp)
/* 94F6C 800DEBAC 00808021 */  addu       $s0, $a0, $zero
/* 94F70 800DEBB0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 94F74 800DEBB4 AFB10014 */  sw         $s1, 0x14($sp)
/* 94F78 800DEBB8 8E02001C */  lw         $v0, 0x1C($s0)
/* 94F7C 800DEBBC 00A08821 */  addu       $s1, $a1, $zero
/* 94F80 800DEBC0 30420001 */  andi       $v0, $v0, 0x1
/* 94F84 800DEBC4 10400041 */  beqz       $v0, .Lrace_800DECCC
/* 94F88 800DEBC8 AE000004 */   sw        $zero, 0x4($s0)
/* 94F8C 800DEBCC 8E050020 */  lw         $a1, 0x20($s0)
/* 94F90 800DEBD0 2402FFFF */  addiu      $v0, $zero, -0x1
/* 94F94 800DEBD4 10A20004 */  beq        $a1, $v0, .Lrace_800DEBE8
/* 94F98 800DEBD8 00000000 */   nop
/* 94F9C 800DEBDC 8E040008 */  lw         $a0, 0x8($s0)
/* 94FA0 800DEBE0 0C036BE1 */  jal        func_race_800DAF84
/* 94FA4 800DEBE4 00003021 */   addu      $a2, $zero, $zero
.Lrace_800DEBE8:
/* 94FA8 800DEBE8 8E230014 */  lw         $v1, 0x14($s1)
/* 94FAC 800DEBEC 8E020010 */  lw         $v0, 0x10($s0)
/* 94FB0 800DEBF0 8E060014 */  lw         $a2, 0x14($s0)
/* 94FB4 800DEBF4 00621823 */  subu       $v1, $v1, $v0
/* 94FB8 800DEBF8 0066102B */  sltu       $v0, $v1, $a2
/* 94FBC 800DEBFC 54400001 */  bnel       $v0, $zero, .Lrace_800DEC04
/* 94FC0 800DEC00 00C33023 */   subu      $a2, $a2, $v1
.Lrace_800DEC04:
/* 94FC4 800DEC04 8E02001C */  lw         $v0, 0x1C($s0)
/* 94FC8 800DEC08 30420004 */  andi       $v0, $v0, 0x4
/* 94FCC 800DEC0C 10400029 */  beqz       $v0, .Lrace_800DECB4
/* 94FD0 800DEC10 02002021 */   addu      $a0, $s0, $zero
/* 94FD4 800DEC14 2CC20400 */  sltiu      $v0, $a2, 0x400
/* 94FD8 800DEC18 14400017 */  bnez       $v0, .Lrace_800DEC78
/* 94FDC 800DEC1C 3C058003 */   lui       $a1, %hi(D_8002FAB0)
/* 94FE0 800DEC20 3C040040 */  lui        $a0, (0x401005 >> 16)
/* 94FE4 800DEC24 3C028003 */  lui        $v0, %hi(D_8002FAB0)
/* 94FE8 800DEC28 34841005 */  ori        $a0, $a0, (0x401005 & 0xFFFF)
/* 94FEC 800DEC2C 8C43FAB0 */  lw         $v1, %lo(D_8002FAB0)($v0)
/* 94FF0 800DEC30 00C40019 */  multu      $a2, $a0
/* 94FF4 800DEC34 24630001 */  addiu      $v1, $v1, 0x1
/* 94FF8 800DEC38 306303FF */  andi       $v1, $v1, 0x3FF
/* 94FFC 800DEC3C AC43FAB0 */  sw         $v1, %lo(D_8002FAB0)($v0)
/* 95000 800DEC40 3C028003 */  lui        $v0, %hi(D_8002F2B0)
/* 95004 800DEC44 2442F2B0 */  addiu      $v0, $v0, %lo(D_8002F2B0)
/* 95008 800DEC48 00031840 */  sll        $v1, $v1, 1
/* 9500C 800DEC4C 00621821 */  addu       $v1, $v1, $v0
/* 95010 800DEC50 00002010 */  mfhi       $a0
/* 95014 800DEC54 00C41023 */  subu       $v0, $a2, $a0
/* 95018 800DEC58 00021042 */  srl        $v0, $v0, 1
/* 9501C 800DEC5C 00822021 */  addu       $a0, $a0, $v0
/* 95020 800DEC60 94620000 */  lhu        $v0, 0x0($v1)
/* 95024 800DEC64 00042242 */  srl        $a0, $a0, 9
/* 95028 800DEC68 00440018 */  mult       $v0, $a0
/* 9502C 800DEC6C 00003012 */  mflo       $a2
/* 95030 800DEC70 08037B2D */  j          .Lrace_800DECB4
/* 95034 800DEC74 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DEC78:
/* 95038 800DEC78 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* 9503C 800DEC7C 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* 95040 800DEC80 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* 95044 800DEC84 24840001 */  addiu      $a0, $a0, 0x1
/* 95048 800DEC88 308403FF */  andi       $a0, $a0, 0x3FF
/* 9504C 800DEC8C 00041040 */  sll        $v0, $a0, 1
/* 95050 800DEC90 00431021 */  addu       $v0, $v0, $v1
/* 95054 800DEC94 94420000 */  lhu        $v0, 0x0($v0)
/* 95058 800DEC98 ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* 9505C 800DEC9C 0046001B */  divu       $zero, $v0, $a2
/* 95060 800DECA0 14C00002 */  bnez       $a2, .Lrace_800DECAC
/* 95064 800DECA4 00000000 */   nop
/* 95068 800DECA8 0007000D */  break      7
.Lrace_800DECAC:
/* 9506C 800DECAC 00003010 */  mfhi       $a2
/* 95070 800DECB0 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DECB4:
/* 95074 800DECB4 0C037B76 */  jal        func_race_800DEDD8
/* 95078 800DECB8 00C02821 */   addu      $a1, $a2, $zero
/* 9507C 800DECBC 8E02001C */  lw         $v0, 0x1C($s0)
/* 95080 800DECC0 2403FFFE */  addiu      $v1, $zero, -0x2
/* 95084 800DECC4 08037B70 */  j          .Lrace_800DEDC0
/* 95088 800DECC8 00431024 */   and       $v0, $v0, $v1
.Lrace_800DECCC:
/* 9508C 800DECCC 8E050020 */  lw         $a1, 0x20($s0)
/* 95090 800DECD0 2402FFFF */  addiu      $v0, $zero, -0x1
/* 95094 800DECD4 10A20004 */  beq        $a1, $v0, .Lrace_800DECE8
/* 95098 800DECD8 00000000 */   nop
/* 9509C 800DECDC 8E040008 */  lw         $a0, 0x8($s0)
/* 950A0 800DECE0 0C036B0B */  jal        func_race_800DAC2C
/* 950A4 800DECE4 00003021 */   addu      $a2, $zero, $zero
.Lrace_800DECE8:
/* 950A8 800DECE8 8E230014 */  lw         $v1, 0x14($s1)
/* 950AC 800DECEC 8E020014 */  lw         $v0, 0x14($s0)
/* 950B0 800DECF0 8E060010 */  lw         $a2, 0x10($s0)
/* 950B4 800DECF4 00621823 */  subu       $v1, $v1, $v0
/* 950B8 800DECF8 0066102B */  sltu       $v0, $v1, $a2
/* 950BC 800DECFC 54400001 */  bnel       $v0, $zero, .Lrace_800DED04
/* 950C0 800DED00 00C33023 */   subu      $a2, $a2, $v1
.Lrace_800DED04:
/* 950C4 800DED04 8E02001C */  lw         $v0, 0x1C($s0)
/* 950C8 800DED08 30420002 */  andi       $v0, $v0, 0x2
/* 950CC 800DED0C 10400027 */  beqz       $v0, .Lrace_800DEDAC
/* 950D0 800DED10 2CC20400 */   sltiu     $v0, $a2, 0x400
/* 950D4 800DED14 14400017 */  bnez       $v0, .Lrace_800DED74
/* 950D8 800DED18 3C058003 */   lui       $a1, %hi(D_8002FAB0)
/* 950DC 800DED1C 3C040040 */  lui        $a0, (0x401005 >> 16)
/* 950E0 800DED20 3C028003 */  lui        $v0, %hi(D_8002FAB0)
/* 950E4 800DED24 34841005 */  ori        $a0, $a0, (0x401005 & 0xFFFF)
/* 950E8 800DED28 8C43FAB0 */  lw         $v1, %lo(D_8002FAB0)($v0)
/* 950EC 800DED2C 00C40019 */  multu      $a2, $a0
/* 950F0 800DED30 24630001 */  addiu      $v1, $v1, 0x1
/* 950F4 800DED34 306303FF */  andi       $v1, $v1, 0x3FF
/* 950F8 800DED38 AC43FAB0 */  sw         $v1, %lo(D_8002FAB0)($v0)
/* 950FC 800DED3C 3C028003 */  lui        $v0, %hi(D_8002F2B0)
/* 95100 800DED40 2442F2B0 */  addiu      $v0, $v0, %lo(D_8002F2B0)
/* 95104 800DED44 00031840 */  sll        $v1, $v1, 1
/* 95108 800DED48 00621821 */  addu       $v1, $v1, $v0
/* 9510C 800DED4C 00002010 */  mfhi       $a0
/* 95110 800DED50 00C41023 */  subu       $v0, $a2, $a0
/* 95114 800DED54 00021042 */  srl        $v0, $v0, 1
/* 95118 800DED58 00822021 */  addu       $a0, $a0, $v0
/* 9511C 800DED5C 94620000 */  lhu        $v0, 0x0($v1)
/* 95120 800DED60 00042242 */  srl        $a0, $a0, 9
/* 95124 800DED64 00440018 */  mult       $v0, $a0
/* 95128 800DED68 00003012 */  mflo       $a2
/* 9512C 800DED6C 08037B6C */  j          .Lrace_800DEDB0
/* 95130 800DED70 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DED74:
/* 95134 800DED74 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* 95138 800DED78 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* 9513C 800DED7C 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* 95140 800DED80 24840001 */  addiu      $a0, $a0, 0x1
/* 95144 800DED84 308403FF */  andi       $a0, $a0, 0x3FF
/* 95148 800DED88 00041040 */  sll        $v0, $a0, 1
/* 9514C 800DED8C 00431021 */  addu       $v0, $v0, $v1
/* 95150 800DED90 94420000 */  lhu        $v0, 0x0($v0)
/* 95154 800DED94 ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* 95158 800DED98 0046001B */  divu       $zero, $v0, $a2
/* 9515C 800DED9C 14C00002 */  bnez       $a2, .Lrace_800DEDA8
/* 95160 800DEDA0 00000000 */   nop
/* 95164 800DEDA4 0007000D */  break      7
.Lrace_800DEDA8:
/* 95168 800DEDA8 00003010 */  mfhi       $a2
.Lrace_800DEDAC:
/* 9516C 800DEDAC 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DEDB0:
/* 95170 800DEDB0 0C037B76 */  jal        func_race_800DEDD8
/* 95174 800DEDB4 00C02821 */   addu      $a1, $a2, $zero
/* 95178 800DEDB8 8E02001C */  lw         $v0, 0x1C($s0)
/* 9517C 800DEDBC 34420001 */  ori        $v0, $v0, 0x1
.Lrace_800DEDC0:
/* 95180 800DEDC0 AE02001C */  sw         $v0, 0x1C($s0)
/* 95184 800DEDC4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 95188 800DEDC8 8FB10014 */  lw         $s1, 0x14($sp)
/* 9518C 800DEDCC 8FB00010 */  lw         $s0, 0x10($sp)
/* 95190 800DEDD0 03E00008 */  jr         $ra
/* 95194 800DEDD4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DEDD8
/* 95198 800DEDD8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9519C 800DEDDC AFB00028 */  sw         $s0, 0x28($sp)
/* 951A0 800DEDE0 00808021 */  addu       $s0, $a0, $zero
/* 951A4 800DEDE4 24020001 */  addiu      $v0, $zero, 0x1
/* 951A8 800DEDE8 AFA50020 */  sw         $a1, 0x20($sp)
/* 951AC 800DEDEC 02002821 */  addu       $a1, $s0, $zero
/* 951B0 800DEDF0 AFBF002C */  sw         $ra, 0x2C($sp)
/* 951B4 800DEDF4 AFA20010 */  sw         $v0, 0x10($sp)
/* 951B8 800DEDF8 AFA00014 */  sw         $zero, 0x14($sp)
/* 951BC 800DEDFC AFA20018 */  sw         $v0, 0x18($sp)
/* 951C0 800DEE00 AFA0001C */  sw         $zero, 0x1C($sp)
/* 951C4 800DEE04 8E04000C */  lw         $a0, 0xC($s0)
/* 951C8 800DEE08 0C04053E */  jal        func_race_801014F8
/* 951CC 800DEE0C 27A60010 */   addiu     $a2, $sp, 0x10
/* 951D0 800DEE10 AE020004 */  sw         $v0, 0x4($s0)
/* 951D4 800DEE14 8FBF002C */  lw         $ra, 0x2C($sp)
/* 951D8 800DEE18 8FB00028 */  lw         $s0, 0x28($sp)
/* 951DC 800DEE1C 03E00008 */  jr         $ra
/* 951E0 800DEE20 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800DEE24
/* 951E4 800DEE24 8C820008 */  lw         $v0, 0x8($a0)
/* 951E8 800DEE28 03E00008 */  jr         $ra
/* 951EC 800DEE2C 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800DEE30
/* 951F0 800DEE30 8C820020 */  lw         $v0, 0x20($a0)
/* 951F4 800DEE34 03E00008 */  jr         $ra
/* 951F8 800DEE38 00000000 */   nop
