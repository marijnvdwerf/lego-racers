.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80100D40
/* B7100 80100D40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7104 80100D44 AFB00010 */  sw         $s0, 0x10($sp)
/* B7108 80100D48 00808021 */  addu       $s0, $a0, $zero
/* B710C 80100D4C AFBF0014 */  sw         $ra, 0x14($sp)
/* B7110 80100D50 0C0016DC */  jal        func_80005B70
/* B7114 80100D54 2604001C */   addiu     $a0, $s0, 0x1C
/* B7118 80100D58 02001021 */  addu       $v0, $s0, $zero
/* B711C 80100D5C AC400000 */  sw         $zero, 0x0($v0)
/* B7120 80100D60 AC400004 */  sw         $zero, 0x4($v0)
/* B7124 80100D64 AC400008 */  sw         $zero, 0x8($v0)
/* B7128 80100D68 AC40000C */  sw         $zero, 0xC($v0)
/* B712C 80100D6C AC400010 */  sw         $zero, 0x10($v0)
/* B7130 80100D70 AC400014 */  sw         $zero, 0x14($v0)
/* B7134 80100D74 AC400018 */  sw         $zero, 0x18($v0)
/* B7138 80100D78 AC400028 */  sw         $zero, 0x28($v0)
/* B713C 80100D7C AC40002C */  sw         $zero, 0x2C($v0)
/* B7140 80100D80 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7144 80100D84 8FB00010 */  lw         $s0, 0x10($sp)
/* B7148 80100D88 03E00008 */  jr         $ra
/* B714C 80100D8C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80100D90
/* B7150 80100D90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B7154 80100D94 AFB10014 */  sw         $s1, 0x14($sp)
/* B7158 80100D98 00808821 */  addu       $s1, $a0, $zero
/* B715C 80100D9C AFB00010 */  sw         $s0, 0x10($sp)
/* B7160 80100DA0 AFBF0018 */  sw         $ra, 0x18($sp)
/* B7164 80100DA4 0C040378 */  jal        func_race_80100DE0
/* B7168 80100DA8 00A08021 */   addu      $s0, $a1, $zero
/* B716C 80100DAC 2624001C */  addiu      $a0, $s1, 0x1C
/* B7170 80100DB0 0C0016E2 */  jal        func_80005B88
/* B7174 80100DB4 24050002 */   addiu     $a1, $zero, 0x2
/* B7178 80100DB8 32100001 */  andi       $s0, $s0, 0x1
/* B717C 80100DBC 12000003 */  beqz       $s0, .Lrace_80100DCC
/* B7180 80100DC0 00000000 */   nop
/* B7184 80100DC4 0C01FB5C */  jal        func_8007ED70
/* B7188 80100DC8 02202021 */   addu      $a0, $s1, $zero
.Lrace_80100DCC:
/* B718C 80100DCC 8FBF0018 */  lw         $ra, 0x18($sp)
/* B7190 80100DD0 8FB10014 */  lw         $s1, 0x14($sp)
/* B7194 80100DD4 8FB00010 */  lw         $s0, 0x10($sp)
/* B7198 80100DD8 03E00008 */  jr         $ra
/* B719C 80100DDC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80100DE0
/* B71A0 80100DE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B71A4 80100DE4 AFB00010 */  sw         $s0, 0x10($sp)
/* B71A8 80100DE8 00808021 */  addu       $s0, $a0, $zero
/* B71AC 80100DEC 2602001C */  addiu      $v0, $s0, 0x1C
/* B71B0 80100DF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B71B4 80100DF4 AE00001C */  sw         $zero, 0x1C($s0)
/* B71B8 80100DF8 A4400008 */  sh         $zero, 0x8($v0)
/* B71BC 80100DFC A4400006 */  sh         $zero, 0x6($v0)
/* B71C0 80100E00 A4400004 */  sh         $zero, 0x4($v0)
/* B71C4 80100E04 8E050008 */  lw         $a1, 0x8($s0)
/* B71C8 80100E08 AE000000 */  sw         $zero, 0x0($s0)
/* B71CC 80100E0C 10A00009 */  beqz       $a1, .Lrace_80100E34
/* B71D0 80100E10 AE000028 */   sw        $zero, 0x28($s0)
/* B71D4 80100E14 8E020004 */  lw         $v0, 0x4($s0)
/* B71D8 80100E18 8C430000 */  lw         $v1, 0x0($v0)
/* B71DC 80100E1C 846400D8 */  lh         $a0, 0xD8($v1)
/* B71E0 80100E20 00442021 */  addu       $a0, $v0, $a0
/* B71E4 80100E24 8C6200DC */  lw         $v0, 0xDC($v1)
/* B71E8 80100E28 0040F809 */  jalr       $v0
/* B71EC 80100E2C 00000000 */   nop
/* B71F0 80100E30 AE000008 */  sw         $zero, 0x8($s0)
.Lrace_80100E34:
/* B71F4 80100E34 8E040018 */  lw         $a0, 0x18($s0)
/* B71F8 80100E38 AE000004 */  sw         $zero, 0x4($s0)
/* B71FC 80100E3C AE00000C */  sw         $zero, 0xC($s0)
/* B7200 80100E40 AE000010 */  sw         $zero, 0x10($s0)
/* B7204 80100E44 10800004 */  beqz       $a0, .Lrace_80100E58
/* B7208 80100E48 AE000014 */   sw        $zero, 0x14($s0)
/* B720C 80100E4C 0C009444 */  jal        func_80025110
/* B7210 80100E50 00000000 */   nop
/* B7214 80100E54 AE000018 */  sw         $zero, 0x18($s0)
.Lrace_80100E58:
/* B7218 80100E58 8FBF0014 */  lw         $ra, 0x14($sp)
/* B721C 80100E5C 8FB00010 */  lw         $s0, 0x10($sp)
/* B7220 80100E60 03E00008 */  jr         $ra
/* B7224 80100E64 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80100E68
/* B7228 80100E68 27BDF0C8 */  addiu      $sp, $sp, -0xF38
/* B722C 80100E6C AFBE0F20 */  sw         $fp, 0xF20($sp)
/* B7230 80100E70 8FBE0F48 */  lw         $fp, 0xF48($sp)
/* B7234 80100E74 AFB30F0C */  sw         $s3, 0xF0C($sp)
/* B7238 80100E78 00809821 */  addu       $s3, $a0, $zero
/* B723C 80100E7C AFB10F04 */  sw         $s1, 0xF04($sp)
/* B7240 80100E80 00A08821 */  addu       $s1, $a1, $zero
/* B7244 80100E84 AFB00F00 */  sw         $s0, 0xF00($sp)
/* B7248 80100E88 00C08021 */  addu       $s0, $a2, $zero
/* B724C 80100E8C AFB70F1C */  sw         $s7, 0xF1C($sp)
/* B7250 80100E90 00E0B821 */  addu       $s7, $a3, $zero
/* B7254 80100E94 AFB60F18 */  sw         $s6, 0xF18($sp)
/* B7258 80100E98 8FB60F4C */  lw         $s6, 0xF4C($sp)
/* B725C 80100E9C AFBF0F24 */  sw         $ra, 0xF24($sp)
/* B7260 80100EA0 AFB50F14 */  sw         $s5, 0xF14($sp)
/* B7264 80100EA4 AFB40F10 */  sw         $s4, 0xF10($sp)
/* B7268 80100EA8 AFB20F08 */  sw         $s2, 0xF08($sp)
/* B726C 80100EAC F7B60F30 */  sdc1       $f22, 0xF30($sp)
/* B7270 80100EB0 F7B40F28 */  sdc1       $f20, 0xF28($sp)
/* B7274 80100EB4 0C011C80 */  jal        func_80047200
/* B7278 80100EB8 27A40020 */   addiu     $a0, $sp, 0x20
/* B727C 80100EBC A3A00010 */  sb         $zero, 0x10($sp)
/* B7280 80100EC0 A3A00018 */  sb         $zero, 0x18($sp)
/* B7284 80100EC4 AE700000 */  sw         $s0, 0x0($s3)
/* B7288 80100EC8 02001821 */  addu       $v1, $s0, $zero
/* B728C 80100ECC AE710004 */  sw         $s1, 0x4($s3)
/* B7290 80100ED0 AE600010 */  sw         $zero, 0x10($s3)
/* B7294 80100ED4 8C62012C */  lw         $v0, 0x12C($v1)
/* B7298 80100ED8 0000A821 */  addu       $s5, $zero, $zero
/* B729C 80100EDC 84440030 */  lh         $a0, 0x30($v0)
/* B72A0 80100EE0 8C420034 */  lw         $v0, 0x34($v0)
/* B72A4 80100EE4 0040F809 */  jalr       $v0
/* B72A8 80100EE8 00642021 */   addu      $a0, $v1, $a0
/* B72AC 80100EEC 0040A021 */  addu       $s4, $v0, $zero
/* B72B0 80100EF0 96820026 */  lhu        $v0, 0x26($s4)
/* B72B4 80100EF4 96830028 */  lhu        $v1, 0x28($s4)
/* B72B8 80100EF8 4482B000 */  mtc1       $v0, $f22
/* B72BC 80100EFC 4680B5A0 */  cvt.s.w    $f22, $f22
/* B72C0 80100F00 4483A000 */  mtc1       $v1, $f20
/* B72C4 80100F04 4680A520 */  cvt.s.w    $f20, $f20
/* B72C8 80100F08 12C00014 */  beqz       $s6, .Lrace_80100F5C
/* B72CC 80100F0C 00000000 */   nop
/* B72D0 80100F10 0C01FB4C */  jal        func_8007ED30
/* B72D4 80100F14 24040654 */   addiu     $a0, $zero, 0x654
/* B72D8 80100F18 0C00278C */  jal        func_80009E30
/* B72DC 80100F1C 00402021 */   addu      $a0, $v0, $zero
/* B72E0 80100F20 00409021 */  addu       $s2, $v0, $zero
/* B72E4 80100F24 56400008 */  bnel       $s2, $zero, .Lrace_80100F48
/* B72E8 80100F28 02402021 */   addu      $a0, $s2, $zero
/* B72EC 80100F2C 3C04800D */  lui        $a0, %hi(D_race_800CD43C)
/* B72F0 80100F30 2484D43C */  addiu      $a0, $a0, %lo(D_race_800CD43C)
/* B72F4 80100F34 00002821 */  addu       $a1, $zero, $zero
/* B72F8 80100F38 00A03021 */  addu       $a2, $a1, $zero
/* B72FC 80100F3C 0C011ACF */  jal        func_80046B3C
/* B7300 80100F40 00A03821 */   addu      $a3, $a1, $zero
/* B7304 80100F44 02402021 */  addu       $a0, $s2, $zero
.Lrace_80100F48:
/* B7308 80100F48 3C05800D */  lui        $a1, %hi(D_race_800CD440)
/* B730C 80100F4C 0C0025BA */  jal        func_800096E8
/* B7310 80100F50 24A5D440 */   addiu     $a1, $a1, %lo(D_race_800CD440)
/* B7314 80100F54 080403E8 */  j          .Lrace_80100FA0
/* B7318 80100F58 3C028013 */   lui       $v0, %hi(D_race_801321E4)
.Lrace_80100F5C:
/* B731C 80100F5C 0C01FB4C */  jal        func_8007ED30
/* B7320 80100F60 24040658 */   addiu     $a0, $zero, 0x658
/* B7324 80100F64 00408021 */  addu       $s0, $v0, $zero
/* B7328 80100F68 0C002504 */  jal        func_80009410
/* B732C 80100F6C 02002021 */   addu      $a0, $s0, $zero
/* B7330 80100F70 3C02800D */  lui        $v0, %hi(D_race_800CD458)
/* B7334 80100F74 2442D458 */  addiu      $v0, $v0, %lo(D_race_800CD458)
/* B7338 80100F78 02009021 */  addu       $s2, $s0, $zero
/* B733C 80100F7C 16400007 */  bnez       $s2, .Lrace_80100F9C
/* B7340 80100F80 AE020028 */   sw        $v0, 0x28($s0)
/* B7344 80100F84 3C04800D */  lui        $a0, %hi(D_race_800CD43C)
/* B7348 80100F88 2484D43C */  addiu      $a0, $a0, %lo(D_race_800CD43C)
/* B734C 80100F8C 00002821 */  addu       $a1, $zero, $zero
/* B7350 80100F90 00A03021 */  addu       $a2, $a1, $zero
/* B7354 80100F94 0C011ACF */  jal        func_80046B3C
/* B7358 80100F98 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80100F9C:
/* B735C 80100F9C 3C028013 */  lui        $v0, %hi(D_race_801321E4)
.Lrace_80100FA0:
/* B7360 80100FA0 8E430028 */  lw         $v1, 0x28($s2)
/* B7364 80100FA4 8C4521E4 */  lw         $a1, %lo(D_race_801321E4)($v0)
/* B7368 80100FA8 84640088 */  lh         $a0, 0x88($v1)
/* B736C 80100FAC 8C62008C */  lw         $v0, 0x8C($v1)
/* B7370 80100FB0 0040F809 */  jalr       $v0
/* B7374 80100FB4 02442021 */   addu      $a0, $s2, $a0
/* B7378 80100FB8 02402021 */  addu       $a0, $s2, $zero
/* B737C 80100FBC 0C0026F4 */  jal        func_80009BD0
/* B7380 80100FC0 24050027 */   addiu     $a1, $zero, 0x27
/* B7384 80100FC4 02402021 */  addu       $a0, $s2, $zero
/* B7388 80100FC8 24050005 */  addiu      $a1, $zero, 0x5
.Lrace_80100FCC:
/* B738C 80100FCC 0C0026F4 */  jal        func_80009BD0
/* B7390 80100FD0 00000000 */   nop
.Lrace_80100FD4:
/* B7394 80100FD4 8E420028 */  lw         $v0, 0x28($s2)
/* B7398 80100FD8 844400A0 */  lh         $a0, 0xA0($v0)
/* B739C 80100FDC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* B73A0 80100FE0 0040F809 */  jalr       $v0
/* B73A4 80100FE4 02442021 */   addu      $a0, $s2, $a0
/* B73A8 80100FE8 00401821 */  addu       $v1, $v0, $zero
/* B73AC 80100FEC 24020006 */  addiu      $v0, $zero, 0x6
/* B73B0 80100FF0 1062004C */  beq        $v1, $v0, .Lrace_80101124
/* B73B4 80100FF4 24020029 */   addiu     $v0, $zero, 0x29
/* B73B8 80100FF8 1062001B */  beq        $v1, $v0, .Lrace_80101068
/* B73BC 80100FFC 2C62002A */   sltiu     $v0, $v1, 0x2A
/* B73C0 80101000 10400005 */  beqz       $v0, .Lrace_80101018
/* B73C4 80101004 24020028 */   addiu     $v0, $zero, 0x28
/* B73C8 80101008 10620008 */  beq        $v1, $v0, .Lrace_8010102C
/* B73CC 8010100C 00000000 */   nop
/* B73D0 80101010 080403F5 */  j          .Lrace_80100FD4
/* B73D4 80101014 00000000 */   nop
.Lrace_80101018:
/* B73D8 80101018 2402002A */  addiu      $v0, $zero, 0x2A
/* B73DC 8010101C 1062000E */  beq        $v1, $v0, .Lrace_80101058
/* B73E0 80101020 00000000 */   nop
/* B73E4 80101024 080403F5 */  j          .Lrace_80100FD4
/* B73E8 80101028 00000000 */   nop
.Lrace_8010102C:
/* B73EC 8010102C 8E420028 */  lw         $v0, 0x28($s2)
/* B73F0 80101030 844400A0 */  lh         $a0, 0xA0($v0)
/* B73F4 80101034 8C4200A4 */  lw         $v0, 0xA4($v0)
/* B73F8 80101038 0040F809 */  jalr       $v0
/* B73FC 8010103C 02442021 */   addu      $a0, $s2, $a0
/* B7400 80101040 27A40010 */  addiu      $a0, $sp, 0x10
/* B7404 80101044 26450044 */  addiu      $a1, $s2, 0x44
/* B7408 80101048 0C000708 */  jal        func_80001C20
/* B740C 8010104C 24060009 */   addiu     $a2, $zero, 0x9
/* B7410 80101050 080403F5 */  j          .Lrace_80100FD4
/* B7414 80101054 00000000 */   nop
.Lrace_80101058:
/* B7418 80101058 0C002680 */  jal        func_80009A00
/* B741C 8010105C 02402021 */   addu      $a0, $s2, $zero
/* B7420 80101060 080403F5 */  j          .Lrace_80100FD4
/* B7424 80101064 0040A821 */   addu      $s5, $v0, $zero
.Lrace_80101068:
/* B7428 80101068 0C002723 */  jal        func_80009C8C
/* B742C 8010106C 02402021 */   addu      $a0, $s2, $zero
/* B7430 80101070 10400012 */  beqz       $v0, .Lrace_801010BC
/* B7434 80101074 AE620014 */   sw        $v0, 0x14($s3)
/* B7438 80101078 3C028013 */  lui        $v0, %hi(D_race_801321E0)
/* B743C 8010107C 8C4421E0 */  lw         $a0, %lo(D_race_801321E0)($v0)
/* B7440 80101080 0C01FB65 */  jal        func_8007ED94
/* B7444 80101084 00000000 */   nop
/* B7448 80101088 8E640014 */  lw         $a0, 0x14($s3)
/* B744C 8010108C 0C00943C */  jal        func_800250F0
/* B7450 80101090 000420C0 */   sll       $a0, $a0, 3
/* B7454 80101094 0C01FB72 */  jal        func_8007EDC8
/* B7458 80101098 AE620018 */   sw        $v0, 0x18($s3)
/* B745C 8010109C 8E620018 */  lw         $v0, 0x18($s3)
/* B7460 801010A0 14400006 */  bnez       $v0, .Lrace_801010BC
/* B7464 801010A4 3C04800D */   lui       $a0, %hi(D_race_800CD43C)
/* B7468 801010A8 2484D43C */  addiu      $a0, $a0, %lo(D_race_800CD43C)
/* B746C 801010AC 00002821 */  addu       $a1, $zero, $zero
/* B7470 801010B0 00A03021 */  addu       $a2, $a1, $zero
/* B7474 801010B4 0C011ACF */  jal        func_80046B3C
/* B7478 801010B8 00A03821 */   addu      $a3, $a1, $zero
.Lrace_801010BC:
/* B747C 801010BC 8E620014 */  lw         $v0, 0x14($s3)
/* B7480 801010C0 10400015 */  beqz       $v0, .Lrace_80101118
/* B7484 801010C4 00008821 */   addu      $s1, $zero, $zero
.Lrace_801010C8:
/* B7488 801010C8 0C0025F8 */  jal        func_800097E0
/* B748C 801010CC 02402021 */   addu      $a0, $s2, $zero
/* B7490 801010D0 46160002 */  mul.s      $f0, $f0, $f22
/* B7494 801010D4 8E620018 */  lw         $v0, 0x18($s3)
/* B7498 801010D8 001180C0 */  sll        $s0, $s1, 3
/* B749C 801010DC 02021021 */  addu       $v0, $s0, $v0
/* B74A0 801010E0 4600008D */  trunc.w.s  $f2, $f0
/* B74A4 801010E4 E4420000 */  swc1       $f2, 0x0($v0)
/* B74A8 801010E8 0C0025F8 */  jal        func_800097E0
/* B74AC 801010EC 02402021 */   addu      $a0, $s2, $zero
/* B74B0 801010F0 46140002 */  mul.s      $f0, $f0, $f20
/* B74B4 801010F4 8E620018 */  lw         $v0, 0x18($s3)
/* B74B8 801010F8 02028021 */  addu       $s0, $s0, $v0
/* B74BC 801010FC 4600008D */  trunc.w.s  $f2, $f0
/* B74C0 80101100 E6020004 */  swc1       $f2, 0x4($s0)
/* B74C4 80101104 8E620014 */  lw         $v0, 0x14($s3)
/* B74C8 80101108 26310001 */  addiu      $s1, $s1, 0x1
/* B74CC 8010110C 0222102B */  sltu       $v0, $s1, $v0
/* B74D0 80101110 1440FFED */  bnez       $v0, .Lrace_801010C8
/* B74D4 80101114 00000000 */   nop
.Lrace_80101118:
/* B74D8 80101118 02402021 */  addu       $a0, $s2, $zero
/* B74DC 8010111C 080403F3 */  j          .Lrace_80100FCC
/* B74E0 80101120 24050006 */   addiu     $a1, $zero, 0x6
.Lrace_80101124:
/* B74E4 80101124 8E420028 */  lw         $v0, 0x28($s2)
/* B74E8 80101128 84440048 */  lh         $a0, 0x48($v0)
/* B74EC 8010112C 8C42004C */  lw         $v0, 0x4C($v0)
/* B74F0 80101130 0040F809 */  jalr       $v0
/* B74F4 80101134 02442021 */   addu      $a0, $s2, $a0
/* B74F8 80101138 12400008 */  beqz       $s2, .Lrace_8010115C
/* B74FC 8010113C 27B00020 */   addiu     $s0, $sp, 0x20
/* B7500 80101140 8E420028 */  lw         $v0, 0x28($s2)
/* B7504 80101144 24050003 */  addiu      $a1, $zero, 0x3
/* B7508 80101148 84440038 */  lh         $a0, 0x38($v0)
/* B750C 8010114C 8C42003C */  lw         $v0, 0x3C($v0)
/* B7510 80101150 0040F809 */  jalr       $v0
/* B7514 80101154 02442021 */   addu      $a0, $s2, $a0
/* B7518 80101158 27B00020 */  addiu      $s0, $sp, 0x20
.Lrace_8010115C:
/* B751C 8010115C 02002021 */  addu       $a0, $s0, $zero
/* B7520 80101160 0C011C94 */  jal        func_80047250
/* B7524 80101164 27A50010 */   addiu     $a1, $sp, 0x10
/* B7528 80101168 02002021 */  addu       $a0, $s0, $zero
/* B752C 8010116C 02802821 */  addu       $a1, $s4, $zero
/* B7530 80101170 00003021 */  addu       $a2, $zero, $zero
/* B7534 80101174 0C011F9E */  jal        func_80047E78
/* B7538 80101178 00C03821 */   addu      $a3, $a2, $zero
/* B753C 8010117C 8E82002C */  lw         $v0, 0x2C($s4)
/* B7540 80101180 24050001 */  addiu      $a1, $zero, 0x1
/* B7544 80101184 84440030 */  lh         $a0, 0x30($v0)
/* B7548 80101188 8C420034 */  lw         $v0, 0x34($v0)
/* B754C 8010118C 0040F809 */  jalr       $v0
/* B7550 80101190 02842021 */   addu      $a0, $s4, $a0
/* B7554 80101194 8E82002C */  lw         $v0, 0x2C($s4)
/* B7558 80101198 84440068 */  lh         $a0, 0x68($v0)
/* B755C 8010119C 8C42006C */  lw         $v0, 0x6C($v0)
/* B7560 801011A0 0040F809 */  jalr       $v0
/* B7564 801011A4 02842021 */   addu      $a0, $s4, $a0
/* B7568 801011A8 02E02021 */  addu       $a0, $s7, $zero
/* B756C 801011AC 0C00306A */  jal        func_8000C1A8
/* B7570 801011B0 32A5FFFF */   andi      $a1, $s5, 0xFFFF
/* B7574 801011B4 2670001C */  addiu      $s0, $s3, 0x1C
/* B7578 801011B8 02002021 */  addu       $a0, $s0, $zero
/* B757C 801011BC 00402821 */  addu       $a1, $v0, $zero
/* B7580 801011C0 0C0016F6 */  jal        func_80005BD8
/* B7584 801011C4 00003021 */   addu      $a2, $zero, $zero
/* B7588 801011C8 03C02021 */  addu       $a0, $fp, $zero
/* B758C 801011CC 02002821 */  addu       $a1, $s0, $zero
/* B7590 801011D0 27A60EF8 */  addiu      $a2, $sp, 0xEF8
/* B7594 801011D4 27A70EFC */  addiu      $a3, $sp, 0xEFC
/* B7598 801011D8 0C01376C */  jal        func_8004DDB0
/* B759C 801011DC AE640028 */   sw        $a0, 0x28($s3)
/* B75A0 801011E0 8FA30EF8 */  lw         $v1, 0xEF8($sp)
/* B75A4 801011E4 4600B08D */  trunc.w.s  $f2, $f22
/* B75A8 801011E8 44021000 */  mfc1       $v0, $f2
/* B75AC 801011EC 00431023 */  subu       $v0, $v0, $v1
/* B75B0 801011F0 8E630004 */  lw         $v1, 0x4($s3)
/* B75B4 801011F4 00021042 */  srl        $v0, $v0, 1
/* B75B8 801011F8 AE62002C */  sw         $v0, 0x2C($s3)
/* B75BC 801011FC 8C620000 */  lw         $v0, 0x0($v1)
/* B75C0 80101200 84440070 */  lh         $a0, 0x70($v0)
/* B75C4 80101204 8C420074 */  lw         $v0, 0x74($v0)
/* B75C8 80101208 0040F809 */  jalr       $v0
/* B75CC 8010120C 00642021 */   addu      $a0, $v1, $a0
/* B75D0 80101210 02C03821 */  addu       $a3, $s6, $zero
/* B75D4 80101214 8E650000 */  lw         $a1, 0x0($s3)
/* B75D8 80101218 3C038013 */  lui        $v1, %hi(D_race_801321E4)
/* B75DC 8010121C AE620008 */  sw         $v0, 0x8($s3)
/* B75E0 80101220 8C480008 */  lw         $t0, 0x8($v0)
/* B75E4 80101224 8C6621E4 */  lw         $a2, %lo(D_race_801321E4)($v1)
/* B75E8 80101228 85040040 */  lh         $a0, 0x40($t0)
/* B75EC 8010122C 8D030044 */  lw         $v1, 0x44($t0)
/* B75F0 80101230 0060F809 */  jalr       $v1
/* B75F4 80101234 00442021 */   addu      $a0, $v0, $a0
/* B75F8 80101238 8E640008 */  lw         $a0, 0x8($s3)
/* B75FC 8010123C 3C02800D */  lui        $v0, %hi(D_race_800CD448)
/* B7600 80101240 8C830000 */  lw         $v1, 0x0($a0)
/* B7604 80101244 14600003 */  bnez       $v1, .Lrace_80101254
/* B7608 80101248 2445D448 */   addiu     $a1, $v0, %lo(D_race_800CD448)
/* B760C 8010124C 08040497 */  j          .Lrace_8010125C
/* B7610 80101250 00001021 */   addu      $v0, $zero, $zero
.Lrace_80101254:
/* B7614 80101254 0C016427 */  jal        func_8005909C
/* B7618 80101258 00000000 */   nop
.Lrace_8010125C:
/* B761C 8010125C 27A40020 */  addiu      $a0, $sp, 0x20
/* B7620 80101260 24050002 */  addiu      $a1, $zero, 0x2
/* B7624 80101264 0C0141BA */  jal        func_800506E8
/* B7628 80101268 AE62000C */   sw        $v0, 0xC($s3)
/* B762C 8010126C 8FBF0F24 */  lw         $ra, 0xF24($sp)
/* B7630 80101270 8FBE0F20 */  lw         $fp, 0xF20($sp)
/* B7634 80101274 8FB70F1C */  lw         $s7, 0xF1C($sp)
/* B7638 80101278 8FB60F18 */  lw         $s6, 0xF18($sp)
/* B763C 8010127C 8FB50F14 */  lw         $s5, 0xF14($sp)
/* B7640 80101280 8FB40F10 */  lw         $s4, 0xF10($sp)
/* B7644 80101284 8FB30F0C */  lw         $s3, 0xF0C($sp)
/* B7648 80101288 8FB20F08 */  lw         $s2, 0xF08($sp)
/* B764C 8010128C 8FB10F04 */  lw         $s1, 0xF04($sp)
/* B7650 80101290 8FB00F00 */  lw         $s0, 0xF00($sp)
/* B7654 80101294 D7B60F30 */  ldc1       $f22, 0xF30($sp)
/* B7658 80101298 D7B40F28 */  ldc1       $f20, 0xF28($sp)
/* B765C 8010129C 03E00008 */  jr         $ra
/* B7660 801012A0 27BD0F38 */   addiu     $sp, $sp, 0xF38

glabel func_race_801012A4
/* B7664 801012A4 03E00008 */  jr         $ra
/* B7668 801012A8 AC850010 */   sw        $a1, 0x10($a0)

glabel func_race_801012AC
/* B766C 801012AC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B7670 801012B0 00802821 */  addu       $a1, $a0, $zero
/* B7674 801012B4 AFBF0038 */  sw         $ra, 0x38($sp)
/* B7678 801012B8 8CA40000 */  lw         $a0, 0x0($a1)
/* B767C 801012BC 8C83012C */  lw         $v1, 0x12C($a0)
/* B7680 801012C0 3C01800D */  lui        $at, %hi(D_race_800CD450)
/* B7684 801012C4 C420D450 */  lwc1       $f0, %lo(D_race_800CD450)($at)
/* B7688 801012C8 846600D8 */  lh         $a2, 0xD8($v1)
/* B768C 801012CC 24020014 */  addiu      $v0, $zero, 0x14
/* B7690 801012D0 AFA20010 */  sw         $v0, 0x10($sp)
/* B7694 801012D4 E7A00014 */  swc1       $f0, 0x14($sp)
/* B7698 801012D8 E7A00018 */  swc1       $f0, 0x18($sp)
/* B769C 801012DC AFA0001C */  sw         $zero, 0x1C($sp)
/* B76A0 801012E0 AFA00020 */  sw         $zero, 0x20($sp)
/* B76A4 801012E4 8C6200DC */  lw         $v0, 0xDC($v1)
/* B76A8 801012E8 8CA7002C */  lw         $a3, 0x2C($a1)
/* B76AC 801012EC 00862021 */  addu       $a0, $a0, $a2
/* B76B0 801012F0 8CA60028 */  lw         $a2, 0x28($a1)
/* B76B4 801012F4 0040F809 */  jalr       $v0
/* B76B8 801012F8 24A5001C */   addiu     $a1, $a1, 0x1C
/* B76BC 801012FC 8FBF0038 */  lw         $ra, 0x38($sp)
/* B76C0 80101300 03E00008 */  jr         $ra
/* B76C4 80101304 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_80101308
/* B76C8 80101308 3C028013 */  lui        $v0, %hi(D_race_801321E0)
/* B76CC 8010130C 03E00008 */  jr         $ra
/* B76D0 80101310 AC4421E0 */   sw        $a0, %lo(D_race_801321E0)($v0)

glabel func_race_80101314
/* B76D4 80101314 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B76D8 80101318 AFBF0010 */  sw         $ra, 0x10($sp)
/* B76DC 8010131C 0C002513 */  jal        func_8000944C
/* B76E0 80101320 00000000 */   nop
/* B76E4 80101324 8FBF0010 */  lw         $ra, 0x10($sp)
/* B76E8 80101328 03E00008 */  jr         $ra
/* B76EC 8010132C 27BD0018 */   addiu     $sp, $sp, 0x18
