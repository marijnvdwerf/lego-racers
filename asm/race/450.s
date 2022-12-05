.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F1930
/* A7CF0 800F1930 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A7CF4 800F1934 AFB00010 */  sw         $s0, 0x10($sp)
/* A7CF8 800F1938 00808021 */  addu       $s0, $a0, $zero
/* A7CFC 800F193C 3C02800D */  lui        $v0, %hi(D_race_800CCA60)
/* A7D00 800F1940 2442CA60 */  addiu      $v0, $v0, %lo(D_race_800CCA60)
/* A7D04 800F1944 26040004 */  addiu      $a0, $s0, 0x4
/* A7D08 800F1948 AFBF0014 */  sw         $ra, 0x14($sp)
/* A7D0C 800F194C 0C045754 */  jal        func_race_80115D50
/* A7D10 800F1950 AE020000 */   sw        $v0, 0x0($s0)
/* A7D14 800F1954 0C03C673 */  jal        func_race_800F19CC
/* A7D18 800F1958 02002021 */   addu      $a0, $s0, $zero
/* A7D1C 800F195C 02001021 */  addu       $v0, $s0, $zero
/* A7D20 800F1960 8FBF0014 */  lw         $ra, 0x14($sp)
/* A7D24 800F1964 8FB00010 */  lw         $s0, 0x10($sp)
/* A7D28 800F1968 03E00008 */  jr         $ra
/* A7D2C 800F196C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F1970
/* A7D30 800F1970 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A7D34 800F1974 AFB10014 */  sw         $s1, 0x14($sp)
/* A7D38 800F1978 00808821 */  addu       $s1, $a0, $zero
/* A7D3C 800F197C AFB00010 */  sw         $s0, 0x10($sp)
/* A7D40 800F1980 00A08021 */  addu       $s0, $a1, $zero
/* A7D44 800F1984 3C02800D */  lui        $v0, %hi(D_race_800CCA60)
/* A7D48 800F1988 2442CA60 */  addiu      $v0, $v0, %lo(D_race_800CCA60)
/* A7D4C 800F198C AFBF0018 */  sw         $ra, 0x18($sp)
/* A7D50 800F1990 0C03C6A1 */  jal        func_race_800F1A84
/* A7D54 800F1994 AE220000 */   sw        $v0, 0x0($s1)
/* A7D58 800F1998 26240004 */  addiu      $a0, $s1, 0x4
/* A7D5C 800F199C 0C04575E */  jal        func_race_80115D78
/* A7D60 800F19A0 24050002 */   addiu     $a1, $zero, 0x2
/* A7D64 800F19A4 32100001 */  andi       $s0, $s0, 0x1
/* A7D68 800F19A8 12000003 */  beqz       $s0, .Lrace_800F19B8
/* A7D6C 800F19AC 00000000 */   nop
/* A7D70 800F19B0 0C01FB5C */  jal        func_8007ED70
/* A7D74 800F19B4 02202021 */   addu      $a0, $s1, $zero
.Lrace_800F19B8:
/* A7D78 800F19B8 8FBF0018 */  lw         $ra, 0x18($sp)
/* A7D7C 800F19BC 8FB10014 */  lw         $s1, 0x14($sp)
/* A7D80 800F19C0 8FB00010 */  lw         $s0, 0x10($sp)
/* A7D84 800F19C4 03E00008 */  jr         $ra
/* A7D88 800F19C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F19CC
/* A7D8C 800F19CC 00003021 */  addu       $a2, $zero, $zero
/* A7D90 800F19D0 AC80004C */  sw         $zero, 0x4C($a0)
/* A7D94 800F19D4 AC800050 */  sw         $zero, 0x50($a0)
/* A7D98 800F19D8 00002821 */  addu       $a1, $zero, $zero
.Lrace_800F19DC:
/* A7D9C 800F19DC 00061940 */  sll        $v1, $a2, 5
.Lrace_800F19E0:
/* A7DA0 800F19E0 00831021 */  addu       $v0, $a0, $v1
/* A7DA4 800F19E4 24A50001 */  addiu      $a1, $a1, 0x1
/* A7DA8 800F19E8 AC400054 */  sw         $zero, 0x54($v0)
/* A7DAC 800F19EC AC400058 */  sw         $zero, 0x58($v0)
/* A7DB0 800F19F0 2CA20004 */  sltiu      $v0, $a1, 0x4
/* A7DB4 800F19F4 1440FFFA */  bnez       $v0, .Lrace_800F19E0
/* A7DB8 800F19F8 24630008 */   addiu     $v1, $v1, 0x8
/* A7DBC 800F19FC 24C60001 */  addiu      $a2, $a2, 0x1
/* A7DC0 800F1A00 2CC20002 */  sltiu      $v0, $a2, 0x2
/* A7DC4 800F1A04 1440FFF5 */  bnez       $v0, .Lrace_800F19DC
/* A7DC8 800F1A08 00002821 */   addu      $a1, $zero, $zero
/* A7DCC 800F1A0C 03E00008 */  jr         $ra
/* A7DD0 800F1A10 00000000 */   nop

glabel func_race_800F1A14
/* A7DD4 800F1A14 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A7DD8 800F1A18 AFB00010 */  sw         $s0, 0x10($sp)
/* A7DDC 800F1A1C 00808021 */  addu       $s0, $a0, $zero
/* A7DE0 800F1A20 AFB10014 */  sw         $s1, 0x14($sp)
/* A7DE4 800F1A24 00A08821 */  addu       $s1, $a1, $zero
/* A7DE8 800F1A28 AFBF001C */  sw         $ra, 0x1C($sp)
/* A7DEC 800F1A2C AFB20018 */  sw         $s2, 0x18($sp)
/* A7DF0 800F1A30 8E02004C */  lw         $v0, 0x4C($s0)
/* A7DF4 800F1A34 10400003 */  beqz       $v0, .Lrace_800F1A44
/* A7DF8 800F1A38 00C09021 */   addu      $s2, $a2, $zero
/* A7DFC 800F1A3C 0C03C6A1 */  jal        func_race_800F1A84
/* A7E00 800F1A40 00000000 */   nop
.Lrace_800F1A44:
/* A7E04 800F1A44 3C05800D */  lui        $a1, %hi(D_race_800CCA40)
/* A7E08 800F1A48 AE11004C */  sw         $s1, 0x4C($s0)
/* A7E0C 800F1A4C 02202021 */  addu       $a0, $s1, $zero
/* A7E10 800F1A50 24A5CA40 */  addiu      $a1, $a1, %lo(D_race_800CCA40)
/* A7E14 800F1A54 248400F2 */  addiu      $a0, $a0, 0xF2
/* A7E18 800F1A58 0C006E14 */  jal        sprintf
/* A7E1C 800F1A5C AE120050 */   sw        $s2, 0x50($s0)
/* A7E20 800F1A60 8E05004C */  lw         $a1, 0x4C($s0)
/* A7E24 800F1A64 0C04577F */  jal        func_race_80115DFC
/* A7E28 800F1A68 26040004 */   addiu     $a0, $s0, 0x4
/* A7E2C 800F1A6C 8FBF001C */  lw         $ra, 0x1C($sp)
/* A7E30 800F1A70 8FB20018 */  lw         $s2, 0x18($sp)
/* A7E34 800F1A74 8FB10014 */  lw         $s1, 0x14($sp)
/* A7E38 800F1A78 8FB00010 */  lw         $s0, 0x10($sp)
/* A7E3C 800F1A7C 03E00008 */  jr         $ra
/* A7E40 800F1A80 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F1A84
/* A7E44 800F1A84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A7E48 800F1A88 AFB00010 */  sw         $s0, 0x10($sp)
/* A7E4C 800F1A8C 00808021 */  addu       $s0, $a0, $zero
/* A7E50 800F1A90 AFBF0014 */  sw         $ra, 0x14($sp)
/* A7E54 800F1A94 0C04578F */  jal        func_race_80115E3C
/* A7E58 800F1A98 26040004 */   addiu     $a0, $s0, 0x4
/* A7E5C 800F1A9C 0C03C673 */  jal        func_race_800F19CC
/* A7E60 800F1AA0 02002021 */   addu      $a0, $s0, $zero
/* A7E64 800F1AA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A7E68 800F1AA8 8FB00010 */  lw         $s0, 0x10($sp)
/* A7E6C 800F1AAC 03E00008 */  jr         $ra
/* A7E70 800F1AB0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F1AB4
/* A7E74 800F1AB4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A7E78 800F1AB8 AFB00018 */  sw         $s0, 0x18($sp)
/* A7E7C 800F1ABC 00808021 */  addu       $s0, $a0, $zero
/* A7E80 800F1AC0 AFB20020 */  sw         $s2, 0x20($sp)
/* A7E84 800F1AC4 00009021 */  addu       $s2, $zero, $zero
/* A7E88 800F1AC8 AFB40028 */  sw         $s4, 0x28($sp)
/* A7E8C 800F1ACC 3C148013 */  lui        $s4, %hi(D_race_80132B30)
/* A7E90 800F1AD0 AFB60030 */  sw         $s6, 0x30($sp)
/* A7E94 800F1AD4 26962B30 */  addiu      $s6, $s4, %lo(D_race_80132B30)
/* A7E98 800F1AD8 AFB70034 */  sw         $s7, 0x34($sp)
/* A7E9C 800F1ADC 3C178003 */  lui        $s7, %hi(D_8002FB34)
/* A7EA0 800F1AE0 AFB5002C */  sw         $s5, 0x2C($sp)
/* A7EA4 800F1AE4 26F5FB34 */  addiu      $s5, $s7, %lo(D_8002FB34)
/* A7EA8 800F1AE8 AFBE0038 */  sw         $fp, 0x38($sp)
/* A7EAC 800F1AEC 261E0004 */  addiu      $fp, $s0, 0x4
/* A7EB0 800F1AF0 AFB1001C */  sw         $s1, 0x1C($sp)
/* A7EB4 800F1AF4 02408821 */  addu       $s1, $s2, $zero
/* A7EB8 800F1AF8 AFB30024 */  sw         $s3, 0x24($sp)
/* A7EBC 800F1AFC 02409821 */  addu       $s3, $s2, $zero
/* A7EC0 800F1B00 AFBF003C */  sw         $ra, 0x3C($sp)
.Lrace_800F1B04:
/* A7EC4 800F1B04 2E420004 */  sltiu      $v0, $s2, 0x4
/* A7EC8 800F1B08 14400006 */  bnez       $v0, .Lrace_800F1B24
/* A7ECC 800F1B0C 00000000 */   nop
/* A7ED0 800F1B10 8E02004C */  lw         $v0, 0x4C($s0)
/* A7ED4 800F1B14 94420022 */  lhu        $v0, 0x22($v0)
/* A7ED8 800F1B18 30420020 */  andi       $v0, $v0, 0x20
/* A7EDC 800F1B1C 1040006A */  beqz       $v0, .Lrace_800F1CC8
/* A7EE0 800F1B20 00000000 */   nop
.Lrace_800F1B24:
/* A7EE4 800F1B24 8E04004C */  lw         $a0, 0x4C($s0)
/* A7EE8 800F1B28 94830022 */  lhu        $v1, 0x22($a0)
/* A7EEC 800F1B2C 30620020 */  andi       $v0, $v1, 0x20
/* A7EF0 800F1B30 10400009 */  beqz       $v0, .Lrace_800F1B58
/* A7EF4 800F1B34 3062FFDF */   andi      $v0, $v1, 0xFFDF
/* A7EF8 800F1B38 00008821 */  addu       $s1, $zero, $zero
/* A7EFC 800F1B3C 02209821 */  addu       $s3, $s1, $zero
/* A7F00 800F1B40 02209021 */  addu       $s2, $s1, $zero
/* A7F04 800F1B44 A4820022 */  sh         $v0, 0x22($a0)
/* A7F08 800F1B48 8E02004C */  lw         $v0, 0x4C($s0)
/* A7F0C 800F1B4C 26040004 */  addiu      $a0, $s0, 0x4
/* A7F10 800F1B50 0C04599E */  jal        func_race_80116678
/* A7F14 800F1B54 AC4000DC */   sw        $zero, 0xDC($v0)
.Lrace_800F1B58:
/* A7F18 800F1B58 16400005 */  bnez       $s2, .Lrace_800F1B70
/* A7F1C 800F1B5C 00000000 */   nop
/* A7F20 800F1B60 8E03004C */  lw         $v1, 0x4C($s0)
/* A7F24 800F1B64 94620022 */  lhu        $v0, 0x22($v1)
/* A7F28 800F1B68 0803C6DF */  j          .Lrace_800F1B7C
/* A7F2C 800F1B6C 34420040 */   ori       $v0, $v0, 0x40
.Lrace_800F1B70:
/* A7F30 800F1B70 8E03004C */  lw         $v1, 0x4C($s0)
/* A7F34 800F1B74 94620022 */  lhu        $v0, 0x22($v1)
/* A7F38 800F1B78 3042FFBF */  andi       $v0, $v0, 0xFFBF
.Lrace_800F1B7C:
/* A7F3C 800F1B7C A4620022 */  sh         $v0, 0x22($v1)
/* A7F40 800F1B80 8E03004C */  lw         $v1, 0x4C($s0)
/* A7F44 800F1B84 00711021 */  addu       $v0, $v1, $s1
/* A7F48 800F1B88 8C42003C */  lw         $v0, 0x3C($v0)
/* A7F4C 800F1B8C 50400048 */  beql       $v0, $zero, .Lrace_800F1CB0
/* A7F50 800F1B90 26310018 */   addiu     $s1, $s1, 0x18
/* A7F54 800F1B94 8C620000 */  lw         $v0, 0x0($v1)
/* A7F58 800F1B98 50400045 */  beql       $v0, $zero, .Lrace_800F1CB0
/* A7F5C 800F1B9C 26310018 */   addiu     $s1, $s1, 0x18
/* A7F60 800F1BA0 94620022 */  lhu        $v0, 0x22($v1)
/* A7F64 800F1BA4 30420008 */  andi       $v0, $v0, 0x8
/* A7F68 800F1BA8 14400074 */  bnez       $v0, .Lrace_800F1D7C
/* A7F6C 800F1BAC 24020001 */   addiu     $v0, $zero, 0x1
/* A7F70 800F1BB0 8C630330 */  lw         $v1, 0x330($v1)
/* A7F74 800F1BB4 14620007 */  bne        $v1, $v0, .Lrace_800F1BD4
/* A7F78 800F1BB8 00000000 */   nop
/* A7F7C 800F1BBC 26040004 */  addiu      $a0, $s0, 0x4
/* A7F80 800F1BC0 0C0457AA */  jal        func_race_80115EA8
/* A7F84 800F1BC4 00002821 */   addu      $a1, $zero, $zero
/* A7F88 800F1BC8 0053102B */  sltu       $v0, $v0, $s3
/* A7F8C 800F1BCC 14400068 */  bnez       $v0, .Lrace_800F1D70
/* A7F90 800F1BD0 00000000 */   nop
.Lrace_800F1BD4:
/* A7F94 800F1BD4 8E03004C */  lw         $v1, 0x4C($s0)
/* A7F98 800F1BD8 3C02800D */  lui        $v0, %hi(D_race_800CCA50)
/* A7F9C 800F1BDC 244BCA50 */  addiu      $t3, $v0, %lo(D_race_800CCA50)
/* A7FA0 800F1BE0 8D680000 */  lw         $t0, 0x0($t3)
/* A7FA4 800F1BE4 8D690004 */  lw         $t1, 0x4($t3)
/* A7FA8 800F1BE8 856A0008 */  lh         $t2, 0x8($t3)
/* A7FAC 800F1BEC AC6800E0 */  sw         $t0, 0xE0($v1)
/* A7FB0 800F1BF0 AC6900E4 */  sw         $t1, 0xE4($v1)
/* A7FB4 800F1BF4 A46A00E8 */  sh         $t2, 0xE8($v1)
/* A7FB8 800F1BF8 8E02004C */  lw         $v0, 0x4C($s0)
/* A7FBC 800F1BFC 02221021 */  addu       $v0, $s1, $v0
/* A7FC0 800F1C00 268B2B30 */  addiu      $t3, $s4, %lo(D_race_80132B30)
/* A7FC4 800F1C04 8848004C */  lwl        $t0, 0x4C($v0)
/* A7FC8 800F1C08 9848004F */  lwr        $t0, 0x4F($v0)
/* A7FCC 800F1C0C 88490050 */  lwl        $t1, 0x50($v0)
/* A7FD0 800F1C10 98490053 */  lwr        $t1, 0x53($v0)
/* A7FD4 800F1C14 A9680000 */  swl        $t0, 0x0($t3)
/* A7FD8 800F1C18 B9680003 */  swr        $t0, 0x3($t3)
/* A7FDC 800F1C1C A9690004 */  swl        $t1, 0x4($t3)
/* A7FE0 800F1C20 B9690007 */  swr        $t1, 0x7($t3)
/* A7FE4 800F1C24 A2C00008 */  sb         $zero, 0x8($s6)
/* A7FE8 800F1C28 8E04004C */  lw         $a0, 0x4C($s0)
/* A7FEC 800F1C2C 02C02821 */  addu       $a1, $s6, $zero
/* A7FF0 800F1C30 0C0006C8 */  jal        func_80001B20
/* A7FF4 800F1C34 248400E0 */   addiu     $a0, $a0, 0xE0
/* A7FF8 800F1C38 8E02004C */  lw         $v0, 0x4C($s0)
/* A7FFC 800F1C3C 244500E0 */  addiu      $a1, $v0, 0xE0
/* A8000 800F1C40 10A00005 */  beqz       $a1, .Lrace_800F1C58
/* A8004 800F1C44 02A02021 */   addu      $a0, $s5, $zero
/* A8008 800F1C48 0C000708 */  jal        func_80001C20
/* A800C 800F1C4C 24060100 */   addiu     $a2, $zero, 0x100
/* A8010 800F1C50 0803C717 */  j          .Lrace_800F1C5C
/* A8014 800F1C54 A2A000FF */   sb        $zero, 0xFF($s5)
.Lrace_800F1C58:
/* A8018 800F1C58 A2E0FB34 */  sb         $zero, %lo(D_8002FB34)($s7)
.Lrace_800F1C5C:
/* A801C 800F1C5C 8E02004C */  lw         $v0, 0x4C($s0)
/* A8020 800F1C60 AFA00010 */  sw         $zero, 0x10($sp)
/* A8024 800F1C64 8E040050 */  lw         $a0, 0x50($s0)
/* A8028 800F1C68 8E05004C */  lw         $a1, 0x4C($s0)
/* A802C 800F1C6C 00511021 */  addu       $v0, $v0, $s1
/* A8030 800F1C70 8C470040 */  lw         $a3, 0x40($v0)
/* A8034 800F1C74 0C04109C */  jal        func_race_80104270
/* A8038 800F1C78 26862B30 */   addiu     $a2, $s4, %lo(D_race_80132B30)
/* A803C 800F1C7C 8E020050 */  lw         $v0, 0x50($s0)
/* A8040 800F1C80 AC5E0018 */  sw         $fp, 0x18($v0)
/* A8044 800F1C84 8E040050 */  lw         $a0, 0x50($s0)
/* A8048 800F1C88 0C041296 */  jal        func_race_80104A58
/* A804C 800F1C8C 26310018 */   addiu     $s1, $s1, 0x18
/* A8050 800F1C90 8E040050 */  lw         $a0, 0x50($s0)
/* A8054 800F1C94 0C041376 */  jal        func_race_80104DD8
/* A8058 800F1C98 00000000 */   nop
/* A805C 800F1C9C 8E02004C */  lw         $v0, 0x4C($s0)
/* A8060 800F1CA0 8C440004 */  lw         $a0, 0x4($v0)
/* A8064 800F1CA4 0C01F039 */  jal        func_8007C0E4
/* A8068 800F1CA8 00000000 */   nop
/* A806C 800F1CAC 8E03004C */  lw         $v1, 0x4C($s0)
.Lrace_800F1CB0:
/* A8070 800F1CB0 2673000A */  addiu      $s3, $s3, 0xA
/* A8074 800F1CB4 8C6200DC */  lw         $v0, 0xDC($v1)
/* A8078 800F1CB8 26520001 */  addiu      $s2, $s2, 0x1
/* A807C 800F1CBC 24420001 */  addiu      $v0, $v0, 0x1
/* A8080 800F1CC0 0803C6C1 */  j          .Lrace_800F1B04
/* A8084 800F1CC4 AC6200DC */   sw        $v0, 0xDC($v1)
.Lrace_800F1CC8:
/* A8088 800F1CC8 8E06004C */  lw         $a2, 0x4C($s0)
/* A808C 800F1CCC 94C20022 */  lhu        $v0, 0x22($a2)
/* A8090 800F1CD0 30420008 */  andi       $v0, $v0, 0x8
/* A8094 800F1CD4 14400029 */  bnez       $v0, .Lrace_800F1D7C
/* A8098 800F1CD8 00000000 */   nop
/* A809C 800F1CDC 8CC20000 */  lw         $v0, 0x0($a2)
/* A80A0 800F1CE0 10400026 */  beqz       $v0, .Lrace_800F1D7C
/* A80A4 800F1CE4 00000000 */   nop
/* A80A8 800F1CE8 8CC20118 */  lw         $v0, 0x118($a2)
/* A80AC 800F1CEC 1040000B */  beqz       $v0, .Lrace_800F1D1C
/* A80B0 800F1CF0 00002821 */   addu      $a1, $zero, $zero
/* A80B4 800F1CF4 00A02021 */  addu       $a0, $a1, $zero
.Lrace_800F1CF8:
/* A80B8 800F1CF8 8CC20104 */  lw         $v0, 0x104($a2)
/* A80BC 800F1CFC 00A2102B */  sltu       $v0, $a1, $v0
/* A80C0 800F1D00 10400006 */  beqz       $v0, .Lrace_800F1D1C
/* A80C4 800F1D04 00C01821 */   addu      $v1, $a2, $zero
/* A80C8 800F1D08 2484005C */  addiu      $a0, $a0, 0x5C
/* A80CC 800F1D0C 00641021 */  addu       $v0, $v1, $a0
/* A80D0 800F1D10 8C420118 */  lw         $v0, 0x118($v0)
/* A80D4 800F1D14 1440FFF8 */  bnez       $v0, .Lrace_800F1CF8
/* A80D8 800F1D18 24A50001 */   addiu     $a1, $a1, 0x1
.Lrace_800F1D1C:
/* A80DC 800F1D1C 0C0457AF */  jal        func_race_80115EBC
/* A80E0 800F1D20 26040004 */   addiu     $a0, $s0, 0x4
/* A80E4 800F1D24 00401821 */  addu       $v1, $v0, $zero
/* A80E8 800F1D28 24020001 */  addiu      $v0, $zero, 0x1
/* A80EC 800F1D2C 1062000A */  beq        $v1, $v0, .Lrace_800F1D58
/* A80F0 800F1D30 00000000 */   nop
/* A80F4 800F1D34 10600005 */  beqz       $v1, .Lrace_800F1D4C
/* A80F8 800F1D38 24020002 */   addiu     $v0, $zero, 0x2
/* A80FC 800F1D3C 10620009 */  beq        $v1, $v0, .Lrace_800F1D64
/* A8100 800F1D40 00000000 */   nop
/* A8104 800F1D44 0803C75C */  j          .Lrace_800F1D70
/* A8108 800F1D48 00000000 */   nop
.Lrace_800F1D4C:
/* A810C 800F1D4C 8E03004C */  lw         $v1, 0x4C($s0)
/* A8110 800F1D50 0803C75E */  j          .Lrace_800F1D78
/* A8114 800F1D54 24020016 */   addiu     $v0, $zero, 0x16
.Lrace_800F1D58:
/* A8118 800F1D58 8E03004C */  lw         $v1, 0x4C($s0)
/* A811C 800F1D5C 0803C75E */  j          .Lrace_800F1D78
/* A8120 800F1D60 24020017 */   addiu     $v0, $zero, 0x17
.Lrace_800F1D64:
/* A8124 800F1D64 8E03004C */  lw         $v1, 0x4C($s0)
/* A8128 800F1D68 0803C75E */  j          .Lrace_800F1D78
/* A812C 800F1D6C 24020018 */   addiu     $v0, $zero, 0x18
.Lrace_800F1D70:
/* A8130 800F1D70 8E03004C */  lw         $v1, 0x4C($s0)
/* A8134 800F1D74 24020019 */  addiu      $v0, $zero, 0x19
.Lrace_800F1D78:
/* A8138 800F1D78 A4620020 */  sh         $v0, 0x20($v1)
.Lrace_800F1D7C:
/* A813C 800F1D7C 8FBF003C */  lw         $ra, 0x3C($sp)
/* A8140 800F1D80 8FBE0038 */  lw         $fp, 0x38($sp)
/* A8144 800F1D84 8FB70034 */  lw         $s7, 0x34($sp)
/* A8148 800F1D88 8FB60030 */  lw         $s6, 0x30($sp)
/* A814C 800F1D8C 8FB5002C */  lw         $s5, 0x2C($sp)
/* A8150 800F1D90 8FB40028 */  lw         $s4, 0x28($sp)
/* A8154 800F1D94 8FB30024 */  lw         $s3, 0x24($sp)
/* A8158 800F1D98 8FB20020 */  lw         $s2, 0x20($sp)
/* A815C 800F1D9C 8FB1001C */  lw         $s1, 0x1C($sp)
/* A8160 800F1DA0 8FB00018 */  lw         $s0, 0x18($sp)
/* A8164 800F1DA4 03E00008 */  jr         $ra
/* A8168 800F1DA8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800F1DAC
/* A816C 800F1DAC 8C82004C */  lw         $v0, 0x4C($a0)
/* A8170 800F1DB0 03E00008 */  jr         $ra
/* A8174 800F1DB4 0002102B */   sltu      $v0, $zero, $v0
