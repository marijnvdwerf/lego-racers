.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800EEB40
/* A4F00 800EEB40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4F04 800EEB44 AFB00010 */  sw         $s0, 0x10($sp)
/* A4F08 800EEB48 AFBF0014 */  sw         $ra, 0x14($sp)
/* A4F0C 800EEB4C 0C03A1A4 */  jal        func_race_800E8690
/* A4F10 800EEB50 00808021 */   addu      $s0, $a0, $zero
/* A4F14 800EEB54 3C02800D */  lui        $v0, %hi(D_race_800CC690)
/* A4F18 800EEB58 2442C690 */  addiu      $v0, $v0, %lo(D_race_800CC690)
/* A4F1C 800EEB5C 26040010 */  addiu      $a0, $s0, 0x10
/* A4F20 800EEB60 0C0164A4 */  jal        func_80059290
/* A4F24 800EEB64 AE020000 */   sw        $v0, 0x0($s0)
/* A4F28 800EEB68 0C03BAF3 */  jal        func_race_800EEBCC
/* A4F2C 800EEB6C 02002021 */   addu      $a0, $s0, $zero
/* A4F30 800EEB70 02001021 */  addu       $v0, $s0, $zero
/* A4F34 800EEB74 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4F38 800EEB78 8FB00010 */  lw         $s0, 0x10($sp)
/* A4F3C 800EEB7C 03E00008 */  jr         $ra
/* A4F40 800EEB80 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EEB84
/* A4F44 800EEB84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A4F48 800EEB88 AFB00010 */  sw         $s0, 0x10($sp)
/* A4F4C 800EEB8C 00808021 */  addu       $s0, $a0, $zero
/* A4F50 800EEB90 AFB10014 */  sw         $s1, 0x14($sp)
/* A4F54 800EEB94 00A08821 */  addu       $s1, $a1, $zero
/* A4F58 800EEB98 3C02800D */  lui        $v0, %hi(D_race_800CC690)
/* A4F5C 800EEB9C 2442C690 */  addiu      $v0, $v0, %lo(D_race_800CC690)
/* A4F60 800EEBA0 AFBF0018 */  sw         $ra, 0x18($sp)
/* A4F64 800EEBA4 0C03BB30 */  jal        func_race_800EECC0
/* A4F68 800EEBA8 AE020000 */   sw        $v0, 0x0($s0)
/* A4F6C 800EEBAC 02002021 */  addu       $a0, $s0, $zero
/* A4F70 800EEBB0 0C03A1AC */  jal        func_race_800E86B0
/* A4F74 800EEBB4 02202821 */   addu      $a1, $s1, $zero
/* A4F78 800EEBB8 8FBF0018 */  lw         $ra, 0x18($sp)
/* A4F7C 800EEBBC 8FB10014 */  lw         $s1, 0x14($sp)
/* A4F80 800EEBC0 8FB00010 */  lw         $s0, 0x10($sp)
/* A4F84 800EEBC4 03E00008 */  jr         $ra
/* A4F88 800EEBC8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EEBCC
/* A4F8C 800EEBCC AC80003C */  sw         $zero, 0x3C($a0)
/* A4F90 800EEBD0 AC800040 */  sw         $zero, 0x40($a0)
/* A4F94 800EEBD4 AC800044 */  sw         $zero, 0x44($a0)
/* A4F98 800EEBD8 AC800038 */  sw         $zero, 0x38($a0)
/* A4F9C 800EEBDC AC800048 */  sw         $zero, 0x48($a0)
/* A4FA0 800EEBE0 AC80004C */  sw         $zero, 0x4C($a0)
/* A4FA4 800EEBE4 AC800050 */  sw         $zero, 0x50($a0)
/* A4FA8 800EEBE8 AC800054 */  sw         $zero, 0x54($a0)
/* A4FAC 800EEBEC 03E00008 */  jr         $ra
/* A4FB0 800EEBF0 AC800058 */   sw        $zero, 0x58($a0)

glabel func_race_800EEBF4
/* A4FB4 800EEBF4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A4FB8 800EEBF8 AFB00028 */  sw         $s0, 0x28($sp)
/* A4FBC 800EEBFC 00808021 */  addu       $s0, $a0, $zero
/* A4FC0 800EEC00 AFBF0030 */  sw         $ra, 0x30($sp)
/* A4FC4 800EEC04 AFB1002C */  sw         $s1, 0x2C($sp)
/* A4FC8 800EEC08 8E02000C */  lw         $v0, 0xC($s0)
/* A4FCC 800EEC0C 10400003 */  beqz       $v0, .Lrace_800EEC1C
/* A4FD0 800EEC10 00A08821 */   addu      $s1, $a1, $zero
/* A4FD4 800EEC14 0C03BB30 */  jal        func_race_800EECC0
/* A4FD8 800EEC18 00000000 */   nop
.Lrace_800EEC1C:
/* A4FDC 800EEC1C AE000008 */  sw         $zero, 0x8($s0)
/* A4FE0 800EEC20 8E22000C */  lw         $v0, 0xC($s1)
/* A4FE4 800EEC24 AE020004 */  sw         $v0, 0x4($s0)
/* A4FE8 800EEC28 8E220000 */  lw         $v0, 0x0($s1)
/* A4FEC 800EEC2C AE02003C */  sw         $v0, 0x3C($s0)
/* A4FF0 800EEC30 8E22001C */  lw         $v0, 0x1C($s1)
/* A4FF4 800EEC34 AE020044 */  sw         $v0, 0x44($s0)
/* A4FF8 800EEC38 8E220008 */  lw         $v0, 0x8($s1)
/* A4FFC 800EEC3C AE02004C */  sw         $v0, 0x4C($s0)
/* A5000 800EEC40 8E220040 */  lw         $v0, 0x40($s1)
/* A5004 800EEC44 AE020058 */  sw         $v0, 0x58($s0)
/* A5008 800EEC48 3C02800D */  lui        $v0, %hi(D_race_800CC670)
/* A500C 800EEC4C 8E230010 */  lw         $v1, 0x10($s1)
/* A5010 800EEC50 2445C670 */  addiu      $a1, $v0, %lo(D_race_800CC670)
/* A5014 800EEC54 8C6200BC */  lw         $v0, 0xBC($v1)
/* A5018 800EEC58 14400003 */  bnez       $v0, .Lrace_800EEC68
/* A501C 800EEC5C 246400BC */   addiu     $a0, $v1, 0xBC
/* A5020 800EEC60 0803BB1C */  j          .Lrace_800EEC70
/* A5024 800EEC64 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EEC68:
/* A5028 800EEC68 0C016427 */  jal        func_8005909C
/* A502C 800EEC6C 00000000 */   nop
.Lrace_800EEC70:
/* A5030 800EEC70 AE020038 */  sw         $v0, 0x38($s0)
/* A5034 800EEC74 8C420078 */  lw         $v0, 0x78($v0)
/* A5038 800EEC78 8C460024 */  lw         $a2, 0x24($v0)
/* A503C 800EEC7C 8C470028 */  lw         $a3, 0x28($v0)
/* A5040 800EEC80 8C48002C */  lw         $t0, 0x2C($v0)
/* A5044 800EEC84 AFA60010 */  sw         $a2, 0x10($sp)
/* A5048 800EEC88 AFA70014 */  sw         $a3, 0x14($sp)
/* A504C 800EEC8C AFA80018 */  sw         $t0, 0x18($sp)
/* A5050 800EEC90 C4400030 */  lwc1       $f0, 0x30($v0)
/* A5054 800EEC94 44050000 */  mfc1       $a1, $f0
/* A5058 800EEC98 26040010 */  addiu      $a0, $s0, 0x10
/* A505C 800EEC9C 0C0165E8 */  jal        func_800597A0
/* A5060 800EECA0 AFA50020 */   sw        $a1, 0x20($sp)
/* A5064 800EECA4 24020001 */  addiu      $v0, $zero, 0x1
/* A5068 800EECA8 AE02000C */  sw         $v0, 0xC($s0)
/* A506C 800EECAC 8FBF0030 */  lw         $ra, 0x30($sp)
/* A5070 800EECB0 8FB1002C */  lw         $s1, 0x2C($sp)
/* A5074 800EECB4 8FB00028 */  lw         $s0, 0x28($sp)
/* A5078 800EECB8 03E00008 */  jr         $ra
/* A507C 800EECBC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800EECC0
/* A5080 800EECC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5084 800EECC4 AFB00010 */  sw         $s0, 0x10($sp)
/* A5088 800EECC8 00808021 */  addu       $s0, $a0, $zero
/* A508C 800EECCC AFBF0014 */  sw         $ra, 0x14($sp)
/* A5090 800EECD0 8E020000 */  lw         $v0, 0x0($s0)
/* A5094 800EECD4 00002821 */  addu       $a1, $zero, $zero
/* A5098 800EECD8 84440018 */  lh         $a0, 0x18($v0)
/* A509C 800EECDC 8C42001C */  lw         $v0, 0x1C($v0)
/* A50A0 800EECE0 0040F809 */  jalr       $v0
/* A50A4 800EECE4 02042021 */   addu      $a0, $s0, $a0
/* A50A8 800EECE8 0C03BAF3 */  jal        func_race_800EEBCC
/* A50AC 800EECEC 02002021 */   addu      $a0, $s0, $zero
/* A50B0 800EECF0 0C03A1C0 */  jal        func_race_800E8700
/* A50B4 800EECF4 02002021 */   addu      $a0, $s0, $zero
/* A50B8 800EECF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A50BC 800EECFC 8FB00010 */  lw         $s0, 0x10($sp)
/* A50C0 800EED00 03E00008 */  jr         $ra
/* A50C4 800EED04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EED08
/* A50C8 800EED08 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A50CC 800EED0C AFB00028 */  sw         $s0, 0x28($sp)
/* A50D0 800EED10 00808021 */  addu       $s0, $a0, $zero
/* A50D4 800EED14 24020004 */  addiu      $v0, $zero, 0x4
/* A50D8 800EED18 AFBF002C */  sw         $ra, 0x2C($sp)
/* A50DC 800EED1C AE000050 */  sw         $zero, 0x50($s0)
/* A50E0 800EED20 AE000054 */  sw         $zero, 0x54($s0)
/* A50E4 800EED24 AFA20010 */  sw         $v0, 0x10($sp)
/* A50E8 800EED28 24020001 */  addiu      $v0, $zero, 0x1
/* A50EC 800EED2C AFA20014 */  sw         $v0, 0x14($sp)
/* A50F0 800EED30 26020010 */  addiu      $v0, $s0, 0x10
/* A50F4 800EED34 02002821 */  addu       $a1, $s0, $zero
/* A50F8 800EED38 AFA00018 */  sw         $zero, 0x18($sp)
/* A50FC 800EED3C AFA0001C */  sw         $zero, 0x1C($sp)
/* A5100 800EED40 AFA20020 */  sw         $v0, 0x20($sp)
/* A5104 800EED44 8E04003C */  lw         $a0, 0x3C($s0)
/* A5108 800EED48 0C04053E */  jal        func_race_801014F8
/* A510C 800EED4C 27A60010 */   addiu     $a2, $sp, 0x10
/* A5110 800EED50 AE020040 */  sw         $v0, 0x40($s0)
/* A5114 800EED54 24020002 */  addiu      $v0, $zero, 0x2
/* A5118 800EED58 AE02000C */  sw         $v0, 0xC($s0)
/* A511C 800EED5C 8FBF002C */  lw         $ra, 0x2C($sp)
/* A5120 800EED60 8FB00028 */  lw         $s0, 0x28($sp)
/* A5124 800EED64 03E00008 */  jr         $ra
/* A5128 800EED68 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800EED6C
/* A512C 800EED6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5130 800EED70 AFB00010 */  sw         $s0, 0x10($sp)
/* A5134 800EED74 00808021 */  addu       $s0, $a0, $zero
/* A5138 800EED78 AFBF0014 */  sw         $ra, 0x14($sp)
/* A513C 800EED7C 8E020040 */  lw         $v0, 0x40($s0)
/* A5140 800EED80 10400003 */  beqz       $v0, .Lrace_800EED90
/* A5144 800EED84 00000000 */   nop
/* A5148 800EED88 AC400024 */  sw         $zero, 0x24($v0)
/* A514C 800EED8C AE000040 */  sw         $zero, 0x40($s0)
.Lrace_800EED90:
/* A5150 800EED90 8E050048 */  lw         $a1, 0x48($s0)
/* A5154 800EED94 10A00006 */  beqz       $a1, .Lrace_800EEDB0
/* A5158 800EED98 24020001 */   addiu     $v0, $zero, 0x1
/* A515C 800EED9C 8E04004C */  lw         $a0, 0x4C($s0)
/* A5160 800EEDA0 0C046564 */  jal        func_race_80119590
/* A5164 800EEDA4 00000000 */   nop
/* A5168 800EEDA8 AE000048 */  sw         $zero, 0x48($s0)
/* A516C 800EEDAC 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800EEDB0:
/* A5170 800EEDB0 AE02000C */  sw         $v0, 0xC($s0)
/* A5174 800EEDB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5178 800EEDB8 8FB00010 */  lw         $s0, 0x10($sp)
/* A517C 800EEDBC 03E00008 */  jr         $ra
/* A5180 800EEDC0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EEDC4
/* A5184 800EEDC4 27BDFF70 */  addiu      $sp, $sp, -0x90
/* A5188 800EEDC8 AFB20050 */  sw         $s2, 0x50($sp)
/* A518C 800EEDCC 00809021 */  addu       $s2, $a0, $zero
/* A5190 800EEDD0 AFB60060 */  sw         $s6, 0x60($sp)
/* A5194 800EEDD4 AFBF0068 */  sw         $ra, 0x68($sp)
/* A5198 800EEDD8 AFB70064 */  sw         $s7, 0x64($sp)
/* A519C 800EEDDC AFB5005C */  sw         $s5, 0x5C($sp)
/* A51A0 800EEDE0 AFB40058 */  sw         $s4, 0x58($sp)
/* A51A4 800EEDE4 AFB30054 */  sw         $s3, 0x54($sp)
/* A51A8 800EEDE8 AFB1004C */  sw         $s1, 0x4C($sp)
/* A51AC 800EEDEC AFB00048 */  sw         $s0, 0x48($sp)
/* A51B0 800EEDF0 F7BA0088 */  sdc1       $f26, 0x88($sp)
/* A51B4 800EEDF4 F7B80080 */  sdc1       $f24, 0x80($sp)
/* A51B8 800EEDF8 F7B60078 */  sdc1       $f22, 0x78($sp)
/* A51BC 800EEDFC F7B40070 */  sdc1       $f20, 0x70($sp)
/* A51C0 800EEE00 8E43000C */  lw         $v1, 0xC($s2)
/* A51C4 800EEE04 24020001 */  addiu      $v0, $zero, 0x1
/* A51C8 800EEE08 106200DB */  beq        $v1, $v0, .Lrace_800EF178
/* A51CC 800EEE0C 00A0B021 */   addu      $s6, $a1, $zero
/* A51D0 800EEE10 8E430038 */  lw         $v1, 0x38($s2)
/* A51D4 800EEE14 00002821 */  addu       $a1, $zero, $zero
/* A51D8 800EEE18 8C620078 */  lw         $v0, 0x78($v1)
/* A51DC 800EEE1C 8C660024 */  lw         $a2, 0x24($v1)
/* A51E0 800EEE20 C4740058 */  lwc1       $f20, 0x58($v1)
/* A51E4 800EEE24 C47600B4 */  lwc1       $f22, 0xB4($v1)
/* A51E8 800EEE28 C4400034 */  lwc1       $f0, 0x34($v0)
/* A51EC 800EEE2C 84C400B8 */  lh         $a0, 0xB8($a2)
/* A51F0 800EEE30 8CC200BC */  lw         $v0, 0xBC($a2)
/* A51F4 800EEE34 4600A502 */  mul.s      $f20, $f20, $f0
/* A51F8 800EEE38 0040F809 */  jalr       $v0
/* A51FC 800EEE3C 00642021 */   addu      $a0, $v1, $a0
/* A5200 800EEE40 8C430008 */  lw         $v1, 0x8($v0)
/* A5204 800EEE44 00002821 */  addu       $a1, $zero, $zero
/* A5208 800EEE48 84640038 */  lh         $a0, 0x38($v1)
/* A520C 800EEE4C 8C63003C */  lw         $v1, 0x3C($v1)
/* A5210 800EEE50 0060F809 */  jalr       $v1
/* A5214 800EEE54 00442021 */   addu      $a0, $v0, $a0
/* A5218 800EEE58 02402021 */  addu       $a0, $s2, $zero
/* A521C 800EEE5C 02C02821 */  addu       $a1, $s6, $zero
/* A5220 800EEE60 0C03A1C4 */  jal        func_race_800E8710
/* A5224 800EEE64 00408021 */   addu      $s0, $v0, $zero
/* A5228 800EEE68 27B10028 */  addiu      $s1, $sp, 0x28
/* A522C 800EEE6C 8E02000C */  lw         $v0, 0xC($s0)
/* A5230 800EEE70 02202821 */  addu       $a1, $s1, $zero
/* A5234 800EEE74 84440088 */  lh         $a0, 0x88($v0)
/* A5238 800EEE78 8C42008C */  lw         $v0, 0x8C($v0)
/* A523C 800EEE7C 0040F809 */  jalr       $v0
/* A5240 800EEE80 02042021 */   addu      $a0, $s0, $a0
/* A5244 800EEE84 C7A40028 */  lwc1       $f4, 0x28($sp)
/* A5248 800EEE88 46142102 */  mul.s      $f4, $f4, $f20
/* A524C 800EEE8C C7A2002C */  lwc1       $f2, 0x2C($sp)
/* A5250 800EEE90 46141082 */  mul.s      $f2, $f2, $f20
/* A5254 800EEE94 C7A00030 */  lwc1       $f0, 0x30($sp)
/* A5258 800EEE98 46140002 */  mul.s      $f0, $f0, $f20
/* A525C 800EEE9C E7A40028 */  swc1       $f4, 0x28($sp)
/* A5260 800EEEA0 E7A2002C */  swc1       $f2, 0x2C($sp)
/* A5264 800EEEA4 E7A00030 */  swc1       $f0, 0x30($sp)
/* A5268 800EEEA8 8E430038 */  lw         $v1, 0x38($s2)
/* A526C 800EEEAC 02202821 */  addu       $a1, $s1, $zero
/* A5270 800EEEB0 8C620024 */  lw         $v0, 0x24($v1)
/* A5274 800EEEB4 27A60018 */  addiu      $a2, $sp, 0x18
/* A5278 800EEEB8 84440060 */  lh         $a0, 0x60($v0)
/* A527C 800EEEBC 8C420064 */  lw         $v0, 0x64($v0)
/* A5280 800EEEC0 0040F809 */  jalr       $v0
/* A5284 800EEEC4 00642021 */   addu      $a0, $v1, $a0
/* A5288 800EEEC8 26440010 */  addiu      $a0, $s2, 0x10
/* A528C 800EEECC 0C0165D9 */  jal        func_80059764
/* A5290 800EEED0 27A50018 */   addiu     $a1, $sp, 0x18
/* A5294 800EEED4 8E420048 */  lw         $v0, 0x48($s2)
/* A5298 800EEED8 10400007 */  beqz       $v0, .Lrace_800EEEF8
/* A529C 800EEEDC 00000000 */   nop
/* A52A0 800EEEE0 8FA80018 */  lw         $t0, 0x18($sp)
/* A52A4 800EEEE4 8FA9001C */  lw         $t1, 0x1C($sp)
/* A52A8 800EEEE8 8FAA0020 */  lw         $t2, 0x20($sp)
/* A52AC 800EEEEC AC480014 */  sw         $t0, 0x14($v0)
/* A52B0 800EEEF0 AC490018 */  sw         $t1, 0x18($v0)
/* A52B4 800EEEF4 AC4A001C */  sw         $t2, 0x1C($v0)
.Lrace_800EEEF8:
/* A52B8 800EEEF8 8E430050 */  lw         $v1, 0x50($s2)
/* A52BC 800EEEFC 1460002F */  bnez       $v1, .Lrace_800EEFBC
/* A52C0 800EEF00 0076102B */   sltu      $v0, $v1, $s6
/* A52C4 800EEF04 0000A021 */  addu       $s4, $zero, $zero
/* A52C8 800EEF08 27B50038 */  addiu      $s5, $sp, 0x38
/* A52CC 800EEF0C 3C17800D */  lui        $s7, %hi(D_race_800CC678)
/* A52D0 800EEF10 3C028013 */  lui        $v0, %hi(D_race_80132170)
/* A52D4 800EEF14 24532170 */  addiu      $s3, $v0, %lo(D_race_80132170)
/* A52D8 800EEF18 3C02800D */  lui        $v0, %hi(D_race_800CC704)
/* A52DC 800EEF1C 2451C704 */  addiu      $s1, $v0, %lo(D_race_800CC704)
/* A52E0 800EEF20 3C02800D */  lui        $v0, %hi(D_race_800CC6F8)
/* A52E4 800EEF24 2450C6F8 */  addiu      $s0, $v0, %lo(D_race_800CC6F8)
.Lrace_800EEF28:
/* A52E8 800EEF28 C6000000 */  lwc1       $f0, 0x0($s0)
/* A52EC 800EEF2C 4616003C */  c.lt.s     $f0, $f22
/* A52F0 800EEF30 00000000 */  nop
/* A52F4 800EEF34 4502001A */  bc1fl      .Lrace_800EEFA0
/* A52F8 800EEF38 2673000C */   addiu     $s3, $s3, 0xC
/* A52FC 800EEF3C C6200000 */  lwc1       $f0, 0x0($s1)
/* A5300 800EEF40 4600B03C */  c.lt.s     $f22, $f0
/* A5304 800EEF44 00000000 */  nop
/* A5308 800EEF48 45020015 */  bc1fl      .Lrace_800EEFA0
/* A530C 800EEF4C 2673000C */   addiu     $s3, $s3, 0xC
/* A5310 800EEF50 8E680000 */  lw         $t0, 0x0($s3)
/* A5314 800EEF54 8E690004 */  lw         $t1, 0x4($s3)
/* A5318 800EEF58 8E6A0008 */  lw         $t2, 0x8($s3)
/* A531C 800EEF5C AFA80038 */  sw         $t0, 0x38($sp)
/* A5320 800EEF60 AFA9003C */  sw         $t1, 0x3C($sp)
/* A5324 800EEF64 AFAA0040 */  sw         $t2, 0x40($sp)
/* A5328 800EEF68 8E420058 */  lw         $v0, 0x58($s2)
/* A532C 800EEF6C 10400004 */  beqz       $v0, .Lrace_800EEF80
/* A5330 800EEF70 26E5C678 */   addiu     $a1, $s7, %lo(D_race_800CC678)
/* A5334 800EEF74 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* A5338 800EEF78 46000007 */  neg.s      $f0, $f0
/* A533C 800EEF7C E7A0003C */  swc1       $f0, 0x3C($sp)
.Lrace_800EEF80:
/* A5340 800EEF80 02A03021 */  addu       $a2, $s5, $zero
/* A5344 800EEF84 AFA00010 */  sw         $zero, 0x10($sp)
/* A5348 800EEF88 8E440044 */  lw         $a0, 0x44($s2)
/* A534C 800EEF8C 0C0107DD */  jal        func_80041F74
/* A5350 800EEF90 00003821 */   addu      $a3, $zero, $zero
/* A5354 800EEF94 24020320 */  addiu      $v0, $zero, 0x320
/* A5358 800EEF98 AE420050 */  sw         $v0, 0x50($s2)
/* A535C 800EEF9C 2673000C */  addiu      $s3, $s3, 0xC
.Lrace_800EEFA0:
/* A5360 800EEFA0 26310004 */  addiu      $s1, $s1, 0x4
/* A5364 800EEFA4 26940001 */  addiu      $s4, $s4, 0x1
/* A5368 800EEFA8 2E820003 */  sltiu      $v0, $s4, 0x3
/* A536C 800EEFAC 1440FFDE */  bnez       $v0, .Lrace_800EEF28
/* A5370 800EEFB0 26100004 */   addiu     $s0, $s0, 0x4
/* A5374 800EEFB4 0803BBF4 */  j          .Lrace_800EEFD0
/* A5378 800EEFB8 00000000 */   nop
.Lrace_800EEFBC:
/* A537C 800EEFBC 10400003 */  beqz       $v0, .Lrace_800EEFCC
/* A5380 800EEFC0 00761023 */   subu      $v0, $v1, $s6
/* A5384 800EEFC4 0803BBF4 */  j          .Lrace_800EEFD0
/* A5388 800EEFC8 AE400050 */   sw        $zero, 0x50($s2)
.Lrace_800EEFCC:
/* A538C 800EEFCC AE420050 */  sw         $v0, 0x50($s2)
.Lrace_800EEFD0:
/* A5390 800EEFD0 8E420054 */  lw         $v0, 0x54($s2)
/* A5394 800EEFD4 14400061 */  bnez       $v0, .Lrace_800EF15C
/* A5398 800EEFD8 0000A021 */   addu      $s4, $zero, $zero
/* A539C 800EEFDC 27B50038 */  addiu      $s5, $sp, 0x38
/* A53A0 800EEFE0 24160190 */  addiu      $s6, $zero, 0x190
/* A53A4 800EEFE4 3C028013 */  lui        $v0, %hi(D_race_80132170)
/* A53A8 800EEFE8 24502170 */  addiu      $s0, $v0, %lo(D_race_80132170)
/* A53AC 800EEFEC 3C02800D */  lui        $v0, %hi(D_race_800CC704)
/* A53B0 800EEFF0 2453C704 */  addiu      $s3, $v0, %lo(D_race_800CC704)
/* A53B4 800EEFF4 3C02800D */  lui        $v0, %hi(D_race_800CC6F8)
/* A53B8 800EEFF8 2451C6F8 */  addiu      $s1, $v0, %lo(D_race_800CC6F8)
/* A53BC 800EEFFC 3C01800D */  lui        $at, %hi(D_race_800CC680)
/* A53C0 800EF000 C434C680 */  lwc1       $f20, %lo(D_race_800CC680)($at)
/* A53C4 800EF004 3C01800D */  lui        $at, %hi(D_race_800CC684)
/* A53C8 800EF008 C43AC684 */  lwc1       $f26, %lo(D_race_800CC684)($at)
/* A53CC 800EF00C 3C01800D */  lui        $at, %hi(D_race_800CC688)
/* A53D0 800EF010 C438C688 */  lwc1       $f24, %lo(D_race_800CC688)($at)
.Lrace_800EF014:
/* A53D4 800EF014 2E820003 */  sltiu      $v0, $s4, 0x3
/* A53D8 800EF018 10400057 */  beqz       $v0, .Lrace_800EF178
/* A53DC 800EF01C 00000000 */   nop
/* A53E0 800EF020 C6200000 */  lwc1       $f0, 0x0($s1)
/* A53E4 800EF024 4616003C */  c.lt.s     $f0, $f22
/* A53E8 800EF028 00000000 */  nop
/* A53EC 800EF02C 4500001D */  bc1f       .Lrace_800EF0A4
/* A53F0 800EF030 00000000 */   nop
/* A53F4 800EF034 46140000 */  add.s      $f0, $f0, $f20
/* A53F8 800EF038 4600B03C */  c.lt.s     $f22, $f0
/* A53FC 800EF03C 00000000 */  nop
/* A5400 800EF040 45000018 */  bc1f       .Lrace_800EF0A4
/* A5404 800EF044 00000000 */   nop
/* A5408 800EF048 8E080000 */  lw         $t0, 0x0($s0)
/* A540C 800EF04C 8E090004 */  lw         $t1, 0x4($s0)
/* A5410 800EF050 8E0A0008 */  lw         $t2, 0x8($s0)
/* A5414 800EF054 AFA80038 */  sw         $t0, 0x38($sp)
/* A5418 800EF058 AFA9003C */  sw         $t1, 0x3C($sp)
/* A541C 800EF05C AFAA0040 */  sw         $t2, 0x40($sp)
/* A5420 800EF060 8E420058 */  lw         $v0, 0x58($s2)
/* A5424 800EF064 10400004 */  beqz       $v0, .Lrace_800EF078
/* A5428 800EF068 2405002B */   addiu     $a1, $zero, 0x2B
/* A542C 800EF06C C7A0003C */  lwc1       $f0, 0x3C($sp)
/* A5430 800EF070 46000007 */  neg.s      $f0, $f0
/* A5434 800EF074 E7A0003C */  swc1       $f0, 0x3C($sp)
.Lrace_800EF078:
/* A5438 800EF078 00A03021 */  addu       $a2, $a1, $zero
/* A543C 800EF07C 8E440004 */  lw         $a0, 0x4($s2)
/* A5440 800EF080 0C036D74 */  jal        func_race_800DB5D0
/* A5444 800EF084 02A03821 */   addu      $a3, $s5, $zero
/* A5448 800EF088 8E450048 */  lw         $a1, 0x48($s2)
/* A544C 800EF08C 10A00005 */  beqz       $a1, .Lrace_800EF0A4
/* A5450 800EF090 AE560054 */   sw        $s6, 0x54($s2)
/* A5454 800EF094 8E44004C */  lw         $a0, 0x4C($s2)
/* A5458 800EF098 0C046564 */  jal        func_race_80119590
/* A545C 800EF09C 00000000 */   nop
/* A5460 800EF0A0 AE400048 */  sw         $zero, 0x48($s2)
.Lrace_800EF0A4:
/* A5464 800EF0A4 C6600000 */  lwc1       $f0, 0x0($s3)
/* A5468 800EF0A8 4616003C */  c.lt.s     $f0, $f22
/* A546C 800EF0AC 00000000 */  nop
/* A5470 800EF0B0 45020026 */  bc1fl      .Lrace_800EF14C
/* A5474 800EF0B4 2610000C */   addiu     $s0, $s0, 0xC
/* A5478 800EF0B8 46140000 */  add.s      $f0, $f0, $f20
/* A547C 800EF0BC 4600B03C */  c.lt.s     $f22, $f0
/* A5480 800EF0C0 00000000 */  nop
/* A5484 800EF0C4 45020021 */  bc1fl      .Lrace_800EF14C
/* A5488 800EF0C8 2610000C */   addiu     $s0, $s0, 0xC
/* A548C 800EF0CC 8E080000 */  lw         $t0, 0x0($s0)
/* A5490 800EF0D0 8E090004 */  lw         $t1, 0x4($s0)
/* A5494 800EF0D4 8E0A0008 */  lw         $t2, 0x8($s0)
/* A5498 800EF0D8 AFA80038 */  sw         $t0, 0x38($sp)
/* A549C 800EF0DC AFA9003C */  sw         $t1, 0x3C($sp)
/* A54A0 800EF0E0 AFAA0040 */  sw         $t2, 0x40($sp)
/* A54A4 800EF0E4 8E420058 */  lw         $v0, 0x58($s2)
/* A54A8 800EF0E8 10400004 */  beqz       $v0, .Lrace_800EF0FC
/* A54AC 800EF0EC 2405002B */   addiu     $a1, $zero, 0x2B
/* A54B0 800EF0F0 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* A54B4 800EF0F4 46000007 */  neg.s      $f0, $f0
/* A54B8 800EF0F8 E7A0003C */  swc1       $f0, 0x3C($sp)
.Lrace_800EF0FC:
/* A54BC 800EF0FC 00A03021 */  addu       $a2, $a1, $zero
/* A54C0 800EF100 8E440004 */  lw         $a0, 0x4($s2)
/* A54C4 800EF104 0C036D74 */  jal        func_race_800DB5D0
/* A54C8 800EF108 02A03821 */   addu      $a3, $s5, $zero
/* A54CC 800EF10C 8E44004C */  lw         $a0, 0x4C($s2)
/* A54D0 800EF110 24050BBA */  addiu      $a1, $zero, 0xBBA
/* A54D4 800EF114 0C04654F */  jal        func_race_8011953C
/* A54D8 800EF118 AE560054 */   sw        $s6, 0x54($s2)
/* A54DC 800EF11C 1040000A */  beqz       $v0, .Lrace_800EF148
/* A54E0 800EF120 AE420048 */   sw        $v0, 0x48($s2)
/* A54E4 800EF124 E45A002C */  swc1       $f26, 0x2C($v0)
/* A54E8 800EF128 E4580030 */  swc1       $f24, 0x30($v0)
/* A54EC 800EF12C 8E430048 */  lw         $v1, 0x48($s2)
/* A54F0 800EF130 8C620034 */  lw         $v0, 0x34($v1)
/* A54F4 800EF134 24050001 */  addiu      $a1, $zero, 0x1
/* A54F8 800EF138 84440010 */  lh         $a0, 0x10($v0)
/* A54FC 800EF13C 8C420014 */  lw         $v0, 0x14($v0)
/* A5500 800EF140 0040F809 */  jalr       $v0
/* A5504 800EF144 00642021 */   addu      $a0, $v1, $a0
.Lrace_800EF148:
/* A5508 800EF148 2610000C */  addiu      $s0, $s0, 0xC
.Lrace_800EF14C:
/* A550C 800EF14C 26730004 */  addiu      $s3, $s3, 0x4
/* A5510 800EF150 26310004 */  addiu      $s1, $s1, 0x4
/* A5514 800EF154 0803BC05 */  j          .Lrace_800EF014
/* A5518 800EF158 26940001 */   addiu     $s4, $s4, 0x1
.Lrace_800EF15C:
/* A551C 800EF15C 8E430054 */  lw         $v1, 0x54($s2)
/* A5520 800EF160 0076102B */  sltu       $v0, $v1, $s6
/* A5524 800EF164 10400003 */  beqz       $v0, .Lrace_800EF174
/* A5528 800EF168 00761023 */   subu      $v0, $v1, $s6
/* A552C 800EF16C 0803BC5E */  j          .Lrace_800EF178
/* A5530 800EF170 AE400054 */   sw        $zero, 0x54($s2)
.Lrace_800EF174:
/* A5534 800EF174 AE420054 */  sw         $v0, 0x54($s2)
.Lrace_800EF178:
/* A5538 800EF178 8FBF0068 */  lw         $ra, 0x68($sp)
/* A553C 800EF17C 8FB70064 */  lw         $s7, 0x64($sp)
/* A5540 800EF180 8FB60060 */  lw         $s6, 0x60($sp)
/* A5544 800EF184 8FB5005C */  lw         $s5, 0x5C($sp)
/* A5548 800EF188 8FB40058 */  lw         $s4, 0x58($sp)
/* A554C 800EF18C 8FB30054 */  lw         $s3, 0x54($sp)
/* A5550 800EF190 8FB20050 */  lw         $s2, 0x50($sp)
/* A5554 800EF194 8FB1004C */  lw         $s1, 0x4C($sp)
/* A5558 800EF198 8FB00048 */  lw         $s0, 0x48($sp)
/* A555C 800EF19C D7BA0088 */  ldc1       $f26, 0x88($sp)
/* A5560 800EF1A0 D7B80080 */  ldc1       $f24, 0x80($sp)
/* A5564 800EF1A4 D7B60078 */  ldc1       $f22, 0x78($sp)
/* A5568 800EF1A8 D7B40070 */  ldc1       $f20, 0x70($sp)
/* A556C 800EF1AC 03E00008 */  jr         $ra
/* A5570 800EF1B0 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_race_800EF1B4
/* A5574 800EF1B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A5578 800EF1B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A557C 800EF1BC AFB00010 */  sw         $s0, 0x10($sp)
/* A5580 800EF1C0 8CB00014 */  lw         $s0, 0x14($a1)
/* A5584 800EF1C4 260303FC */  addiu      $v1, $s0, 0x3FC
/* A5588 800EF1C8 8C6206AC */  lw         $v0, 0x6AC($v1)
/* A558C 800EF1CC 30420002 */  andi       $v0, $v0, 0x2
/* A5590 800EF1D0 14400007 */  bnez       $v0, .Lrace_800EF1F0
/* A5594 800EF1D4 00002021 */   addu      $a0, $zero, $zero
/* A5598 800EF1D8 C462061C */  lwc1       $f2, 0x61C($v1)
/* A559C 800EF1DC 44800000 */  mtc1       $zero, $f0
/* A55A0 800EF1E0 46001032 */  c.eq.s     $f2, $f0
/* A55A4 800EF1E4 00000000 */  nop
/* A55A8 800EF1E8 45020001 */  bc1fl      .Lrace_800EF1F0
/* A55AC 800EF1EC 24040001 */   addiu     $a0, $zero, 0x1
.Lrace_800EF1F0:
/* A55B0 800EF1F0 1080000C */  beqz       $a0, .Lrace_800EF224
/* A55B4 800EF1F4 00003821 */   addu      $a3, $zero, $zero
/* A55B8 800EF1F8 8C6200CC */  lw         $v0, 0xCC($v1)
/* A55BC 800EF1FC 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* A55C0 800EF200 3C063C23 */  lui        $a2, (0x3C23D70A >> 16)
/* A55C4 800EF204 34C6D70A */  ori        $a2, $a2, (0x3C23D70A & 0xFFFF)
/* A55C8 800EF208 84440050 */  lh         $a0, 0x50($v0)
/* A55CC 800EF20C 8C420054 */  lw         $v0, 0x54($v0)
/* A55D0 800EF210 0040F809 */  jalr       $v0
/* A55D4 800EF214 00642021 */   addu      $a0, $v1, $a0
/* A55D8 800EF218 02002021 */  addu       $a0, $s0, $zero
/* A55DC 800EF21C 0C04339E */  jal        func_race_8010CE78
/* A55E0 800EF220 00002821 */   addu      $a1, $zero, $zero
.Lrace_800EF224:
/* A55E4 800EF224 8FBF0014 */  lw         $ra, 0x14($sp)
/* A55E8 800EF228 8FB00010 */  lw         $s0, 0x10($sp)
/* A55EC 800EF22C 03E00008 */  jr         $ra
/* A55F0 800EF230 27BD0018 */   addiu     $sp, $sp, 0x18
