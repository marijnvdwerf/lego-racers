.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80100890
/* B6C50 80100890 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B6C54 80100894 AFB00010 */  sw         $s0, 0x10($sp)
/* B6C58 80100898 00808021 */  addu       $s0, $a0, $zero
/* B6C5C 8010089C AFBF0014 */  sw         $ra, 0x14($sp)
/* B6C60 801008A0 0C03C64C */  jal        func_race_800F1930
/* B6C64 801008A4 26040004 */   addiu     $a0, $s0, 0x4
/* B6C68 801008A8 0C040F24 */  jal        func_race_80103C90
/* B6C6C 801008AC 26040098 */   addiu     $a0, $s0, 0x98
/* B6C70 801008B0 0C03D424 */  jal        func_race_800F5090
/* B6C74 801008B4 260434C8 */   addiu     $a0, $s0, 0x34C8
/* B6C78 801008B8 02001021 */  addu       $v0, $s0, $zero
/* B6C7C 801008BC AE000000 */  sw         $zero, 0x0($s0)
/* B6C80 801008C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6C84 801008C4 8FB00010 */  lw         $s0, 0x10($sp)
/* B6C88 801008C8 03E00008 */  jr         $ra
/* B6C8C 801008CC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801008D0
/* B6C90 801008D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6C94 801008D4 AFB10014 */  sw         $s1, 0x14($sp)
/* B6C98 801008D8 00808821 */  addu       $s1, $a0, $zero
/* B6C9C 801008DC AFB00010 */  sw         $s0, 0x10($sp)
/* B6CA0 801008E0 AFBF0018 */  sw         $ra, 0x18($sp)
/* B6CA4 801008E4 0C0402A1 */  jal        func_race_80100A84
/* B6CA8 801008E8 00A08021 */   addu      $s0, $a1, $zero
/* B6CAC 801008EC 262434C8 */  addiu      $a0, $s1, 0x34C8
/* B6CB0 801008F0 0C03D43A */  jal        func_race_800F50E8
/* B6CB4 801008F4 24050002 */   addiu     $a1, $zero, 0x2
/* B6CB8 801008F8 26240098 */  addiu      $a0, $s1, 0x98
/* B6CBC 801008FC 0C040F94 */  jal        func_race_80103E50
/* B6CC0 80100900 24050002 */   addiu     $a1, $zero, 0x2
/* B6CC4 80100904 26240004 */  addiu      $a0, $s1, 0x4
/* B6CC8 80100908 0C03C65C */  jal        func_race_800F1970
/* B6CCC 8010090C 24050002 */   addiu     $a1, $zero, 0x2
/* B6CD0 80100910 32100001 */  andi       $s0, $s0, 0x1
/* B6CD4 80100914 12000003 */  beqz       $s0, .Lrace_80100924
/* B6CD8 80100918 00000000 */   nop
/* B6CDC 8010091C 0C01FB5C */  jal        func_8007ED70
/* B6CE0 80100920 02202021 */   addu      $a0, $s1, $zero
.Lrace_80100924:
/* B6CE4 80100924 8FBF0018 */  lw         $ra, 0x18($sp)
/* B6CE8 80100928 8FB10014 */  lw         $s1, 0x14($sp)
/* B6CEC 8010092C 8FB00010 */  lw         $s0, 0x10($sp)
/* B6CF0 80100930 03E00008 */  jr         $ra
/* B6CF4 80100934 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80100938
/* B6CF8 80100938 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B6CFC 8010093C AFB20020 */  sw         $s2, 0x20($sp)
/* B6D00 80100940 00809021 */  addu       $s2, $a0, $zero
/* B6D04 80100944 AFB1001C */  sw         $s1, 0x1C($sp)
/* B6D08 80100948 00A08821 */  addu       $s1, $a1, $zero
/* B6D0C 8010094C AFBF0024 */  sw         $ra, 0x24($sp)
/* B6D10 80100950 AFB00018 */  sw         $s0, 0x18($sp)
/* B6D14 80100954 AE510000 */  sw         $s1, 0x0($s2)
/* B6D18 80100958 96220022 */  lhu        $v0, 0x22($s1)
/* B6D1C 8010095C 8E230028 */  lw         $v1, 0x28($s1)
/* B6D20 80100960 3042FFF7 */  andi       $v0, $v0, 0xFFF7
/* B6D24 80100964 A6220022 */  sh         $v0, 0x22($s1)
/* B6D28 80100968 24020002 */  addiu      $v0, $zero, 0x2
/* B6D2C 8010096C 14620014 */  bne        $v1, $v0, .Lrace_801009C0
/* B6D30 80100970 3C02800D */   lui       $v0, %hi(D_race_800CD410)
/* B6D34 80100974 2445D410 */  addiu      $a1, $v0, %lo(D_race_800CD410)
/* B6D38 80100978 10A00007 */  beqz       $a1, .Lrace_80100998
/* B6D3C 8010097C 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* B6D40 80100980 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* B6D44 80100984 02002021 */  addu       $a0, $s0, $zero
/* B6D48 80100988 0C000708 */  jal        func_80001C20
/* B6D4C 8010098C 24060100 */   addiu     $a2, $zero, 0x100
/* B6D50 80100990 08040268 */  j          .Lrace_801009A0
/* B6D54 80100994 A20000FF */   sb        $zero, 0xFF($s0)
.Lrace_80100998:
/* B6D58 80100998 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* B6D5C 8010099C A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lrace_801009A0:
/* B6D60 801009A0 8E220004 */  lw         $v0, 0x4($s1)
/* B6D64 801009A4 8C450078 */  lw         $a1, 0x78($v0)
/* B6D68 801009A8 8C46006C */  lw         $a2, 0x6C($v0)
/* B6D6C 801009AC 8E220040 */  lw         $v0, 0x40($s1)
/* B6D70 801009B0 AFA20010 */  sw         $v0, 0x10($sp)
/* B6D74 801009B4 8E27001C */  lw         $a3, 0x1C($s1)
/* B6D78 801009B8 0C03D460 */  jal        func_race_800F5180
/* B6D7C 801009BC 264434C8 */   addiu     $a0, $s2, 0x34C8
.Lrace_801009C0:
/* B6D80 801009C0 96220022 */  lhu        $v0, 0x22($s1)
/* B6D84 801009C4 30420002 */  andi       $v0, $v0, 0x2
/* B6D88 801009C8 14400002 */  bnez       $v0, .Lrace_801009D4
/* B6D8C 801009CC 24020003 */   addiu     $v0, $zero, 0x3
/* B6D90 801009D0 24020002 */  addiu      $v0, $zero, 0x2
.Lrace_801009D4:
/* B6D94 801009D4 A6220020 */  sh         $v0, 0x20($s1)
/* B6D98 801009D8 8E240004 */  lw         $a0, 0x4($s1)
/* B6D9C 801009DC 0C01F039 */  jal        func_8007C0E4
/* B6DA0 801009E0 AE2000DC */   sw        $zero, 0xDC($s1)
/* B6DA4 801009E4 8E220028 */  lw         $v0, 0x28($s1)
/* B6DA8 801009E8 14400006 */  bnez       $v0, .Lrace_80100A04
/* B6DAC 801009EC 26440004 */   addiu     $a0, $s2, 0x4
/* B6DB0 801009F0 8E450000 */  lw         $a1, 0x0($s2)
/* B6DB4 801009F4 0C03C685 */  jal        func_race_800F1A14
/* B6DB8 801009F8 26460098 */   addiu     $a2, $s2, 0x98
/* B6DBC 801009FC 08040283 */  j          .Lrace_80100A0C
/* B6DC0 80100A00 00000000 */   nop
.Lrace_80100A04:
/* B6DC4 80100A04 0C04030D */  jal        func_race_80100C34
/* B6DC8 80100A08 02402021 */   addu      $a0, $s2, $zero
.Lrace_80100A0C:
/* B6DCC 80100A0C 8FBF0024 */  lw         $ra, 0x24($sp)
/* B6DD0 80100A10 8FB20020 */  lw         $s2, 0x20($sp)
/* B6DD4 80100A14 8FB1001C */  lw         $s1, 0x1C($sp)
/* B6DD8 80100A18 8FB00018 */  lw         $s0, 0x18($sp)
/* B6DDC 80100A1C 03E00008 */  jr         $ra
/* B6DE0 80100A20 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80100A24
/* B6DE4 80100A24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B6DE8 80100A28 AFB00010 */  sw         $s0, 0x10($sp)
/* B6DEC 80100A2C 00808021 */  addu       $s0, $a0, $zero
/* B6DF0 80100A30 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6DF4 80100A34 8E020000 */  lw         $v0, 0x0($s0)
/* B6DF8 80100A38 8C420028 */  lw         $v0, 0x28($v0)
/* B6DFC 80100A3C 14400005 */  bnez       $v0, .Lrace_80100A54
/* B6E00 80100A40 00000000 */   nop
/* B6E04 80100A44 0C03C6AD */  jal        func_race_800F1AB4
/* B6E08 80100A48 26040004 */   addiu     $a0, $s0, 0x4
/* B6E0C 80100A4C 08040299 */  j          .Lrace_80100A64
/* B6E10 80100A50 00000000 */   nop
.Lrace_80100A54:
/* B6E14 80100A54 0C041296 */  jal        func_race_80104A58
/* B6E18 80100A58 26040098 */   addiu     $a0, $s0, 0x98
/* B6E1C 80100A5C 0C03D51A */  jal        func_race_800F5468
/* B6E20 80100A60 260434C8 */   addiu     $a0, $s0, 0x34C8
.Lrace_80100A64:
/* B6E24 80100A64 8E030000 */  lw         $v1, 0x0($s0)
/* B6E28 80100A68 94620022 */  lhu        $v0, 0x22($v1)
/* B6E2C 80100A6C 3042FF7F */  andi       $v0, $v0, 0xFF7F
/* B6E30 80100A70 A4620022 */  sh         $v0, 0x22($v1)
/* B6E34 80100A74 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6E38 80100A78 8FB00010 */  lw         $s0, 0x10($sp)
/* B6E3C 80100A7C 03E00008 */  jr         $ra
/* B6E40 80100A80 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80100A84
/* B6E44 80100A84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B6E48 80100A88 AFB00010 */  sw         $s0, 0x10($sp)
/* B6E4C 80100A8C 00808021 */  addu       $s0, $a0, $zero
/* B6E50 80100A90 260434C8 */  addiu      $a0, $s0, 0x34C8
/* B6E54 80100A94 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* B6E58 80100A98 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6E5C 80100A9C 0C03D51A */  jal        func_race_800F5468
/* B6E60 80100AA0 A040FB34 */   sb        $zero, %lo(D_8002FB34)($v0)
/* B6E64 80100AA4 0C03C6A1 */  jal        func_race_800F1A84
/* B6E68 80100AA8 26040004 */   addiu     $a0, $s0, 0x4
/* B6E6C 80100AAC 0C041376 */  jal        func_race_80104DD8
/* B6E70 80100AB0 26040098 */   addiu     $a0, $s0, 0x98
/* B6E74 80100AB4 0C0402B4 */  jal        func_race_80100AD0
/* B6E78 80100AB8 02002021 */   addu      $a0, $s0, $zero
/* B6E7C 80100ABC AE000000 */  sw         $zero, 0x0($s0)
/* B6E80 80100AC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6E84 80100AC4 8FB00010 */  lw         $s0, 0x10($sp)
/* B6E88 80100AC8 03E00008 */  jr         $ra
/* B6E8C 80100ACC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80100AD0
/* B6E90 80100AD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B6E94 80100AD4 AFB40020 */  sw         $s4, 0x20($sp)
/* B6E98 80100AD8 0080A021 */  addu       $s4, $a0, $zero
/* B6E9C 80100ADC AFBF0024 */  sw         $ra, 0x24($sp)
/* B6EA0 80100AE0 AFB3001C */  sw         $s3, 0x1C($sp)
/* B6EA4 80100AE4 AFB20018 */  sw         $s2, 0x18($sp)
/* B6EA8 80100AE8 AFB10014 */  sw         $s1, 0x14($sp)
/* B6EAC 80100AEC AFB00010 */  sw         $s0, 0x10($sp)
/* B6EB0 80100AF0 8E840000 */  lw         $a0, 0x0($s4)
/* B6EB4 80100AF4 10800047 */  beqz       $a0, .Lrace_80100C14
/* B6EB8 80100AF8 00000000 */   nop
/* B6EBC 80100AFC 8C820004 */  lw         $v0, 0x4($a0)
/* B6EC0 80100B00 8C830330 */  lw         $v1, 0x330($a0)
/* B6EC4 80100B04 8C51006C */  lw         $s1, 0x6C($v0)
/* B6EC8 80100B08 10600042 */  beqz       $v1, .Lrace_80100C14
/* B6ECC 80100B0C 00009021 */   addu      $s2, $zero, $zero
/* B6ED0 80100B10 24130108 */  addiu      $s3, $zero, 0x108
.Lrace_80100B14:
/* B6ED4 80100B14 00938021 */  addu       $s0, $a0, $s3
/* B6ED8 80100B18 92020008 */  lbu        $v0, 0x8($s0)
/* B6EDC 80100B1C 10400037 */  beqz       $v0, .Lrace_80100BFC
/* B6EE0 80100B20 00000000 */   nop
/* B6EE4 80100B24 8E050024 */  lw         $a1, 0x24($s0)
/* B6EE8 80100B28 10A00007 */  beqz       $a1, .Lrace_80100B48
/* B6EEC 80100B2C 00000000 */   nop
/* B6EF0 80100B30 8E220000 */  lw         $v0, 0x0($s1)
/* B6EF4 80100B34 84440098 */  lh         $a0, 0x98($v0)
/* B6EF8 80100B38 8C42009C */  lw         $v0, 0x9C($v0)
/* B6EFC 80100B3C 0040F809 */  jalr       $v0
/* B6F00 80100B40 02242021 */   addu      $a0, $s1, $a0
/* B6F04 80100B44 AE000024 */  sw         $zero, 0x24($s0)
.Lrace_80100B48:
/* B6F08 80100B48 8E050028 */  lw         $a1, 0x28($s0)
/* B6F0C 80100B4C 10A00007 */  beqz       $a1, .Lrace_80100B6C
/* B6F10 80100B50 00000000 */   nop
/* B6F14 80100B54 8E220000 */  lw         $v0, 0x0($s1)
/* B6F18 80100B58 84440090 */  lh         $a0, 0x90($v0)
/* B6F1C 80100B5C 8C420094 */  lw         $v0, 0x94($v0)
/* B6F20 80100B60 0040F809 */  jalr       $v0
/* B6F24 80100B64 02242021 */   addu      $a0, $s1, $a0
/* B6F28 80100B68 AE000028 */  sw         $zero, 0x28($s0)
.Lrace_80100B6C:
/* B6F2C 80100B6C 8E05002C */  lw         $a1, 0x2C($s0)
/* B6F30 80100B70 10A00007 */  beqz       $a1, .Lrace_80100B90
/* B6F34 80100B74 00000000 */   nop
/* B6F38 80100B78 8E220000 */  lw         $v0, 0x0($s1)
/* B6F3C 80100B7C 84440088 */  lh         $a0, 0x88($v0)
/* B6F40 80100B80 8C42008C */  lw         $v0, 0x8C($v0)
/* B6F44 80100B84 0040F809 */  jalr       $v0
/* B6F48 80100B88 02242021 */   addu      $a0, $s1, $a0
/* B6F4C 80100B8C AE00002C */  sw         $zero, 0x2C($s0)
.Lrace_80100B90:
/* B6F50 80100B90 8E050048 */  lw         $a1, 0x48($s0)
/* B6F54 80100B94 10A00007 */  beqz       $a1, .Lrace_80100BB4
/* B6F58 80100B98 00000000 */   nop
/* B6F5C 80100B9C 8E220000 */  lw         $v0, 0x0($s1)
/* B6F60 80100BA0 84440098 */  lh         $a0, 0x98($v0)
/* B6F64 80100BA4 8C42009C */  lw         $v0, 0x9C($v0)
/* B6F68 80100BA8 0040F809 */  jalr       $v0
/* B6F6C 80100BAC 02242021 */   addu      $a0, $s1, $a0
/* B6F70 80100BB0 AE000048 */  sw         $zero, 0x48($s0)
.Lrace_80100BB4:
/* B6F74 80100BB4 8E05004C */  lw         $a1, 0x4C($s0)
/* B6F78 80100BB8 10A00007 */  beqz       $a1, .Lrace_80100BD8
/* B6F7C 80100BBC 00000000 */   nop
/* B6F80 80100BC0 8E220000 */  lw         $v0, 0x0($s1)
/* B6F84 80100BC4 84440090 */  lh         $a0, 0x90($v0)
/* B6F88 80100BC8 8C420094 */  lw         $v0, 0x94($v0)
/* B6F8C 80100BCC 0040F809 */  jalr       $v0
/* B6F90 80100BD0 02242021 */   addu      $a0, $s1, $a0
/* B6F94 80100BD4 AE00004C */  sw         $zero, 0x4C($s0)
.Lrace_80100BD8:
/* B6F98 80100BD8 8E050050 */  lw         $a1, 0x50($s0)
/* B6F9C 80100BDC 10A00007 */  beqz       $a1, .Lrace_80100BFC
/* B6FA0 80100BE0 00000000 */   nop
/* B6FA4 80100BE4 8E220000 */  lw         $v0, 0x0($s1)
/* B6FA8 80100BE8 84440088 */  lh         $a0, 0x88($v0)
/* B6FAC 80100BEC 8C42008C */  lw         $v0, 0x8C($v0)
/* B6FB0 80100BF0 0040F809 */  jalr       $v0
/* B6FB4 80100BF4 02242021 */   addu      $a0, $s1, $a0
/* B6FB8 80100BF8 AE000050 */  sw         $zero, 0x50($s0)
.Lrace_80100BFC:
/* B6FBC 80100BFC 8E840000 */  lw         $a0, 0x0($s4)
/* B6FC0 80100C00 8C820330 */  lw         $v0, 0x330($a0)
/* B6FC4 80100C04 26520001 */  addiu      $s2, $s2, 0x1
/* B6FC8 80100C08 0242102B */  sltu       $v0, $s2, $v0
/* B6FCC 80100C0C 1440FFC1 */  bnez       $v0, .Lrace_80100B14
/* B6FD0 80100C10 2673005C */   addiu     $s3, $s3, 0x5C
.Lrace_80100C14:
/* B6FD4 80100C14 8FBF0024 */  lw         $ra, 0x24($sp)
/* B6FD8 80100C18 8FB40020 */  lw         $s4, 0x20($sp)
/* B6FDC 80100C1C 8FB3001C */  lw         $s3, 0x1C($sp)
/* B6FE0 80100C20 8FB20018 */  lw         $s2, 0x18($sp)
/* B6FE4 80100C24 8FB10014 */  lw         $s1, 0x14($sp)
/* B6FE8 80100C28 8FB00010 */  lw         $s0, 0x10($sp)
/* B6FEC 80100C2C 03E00008 */  jr         $ra
/* B6FF0 80100C30 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80100C34
/* B6FF4 80100C34 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B6FF8 80100C38 AFB1001C */  sw         $s1, 0x1C($sp)
/* B6FFC 80100C3C 00808821 */  addu       $s1, $a0, $zero
/* B7000 80100C40 3C05800D */  lui        $a1, %hi(D_race_800CD410)
/* B7004 80100C44 AFBF0020 */  sw         $ra, 0x20($sp)
/* B7008 80100C48 AFB00018 */  sw         $s0, 0x18($sp)
/* B700C 80100C4C 8E240000 */  lw         $a0, 0x0($s1)
/* B7010 80100C50 24A5D410 */  addiu      $a1, $a1, %lo(D_race_800CD410)
/* B7014 80100C54 0C006E14 */  jal        sprintf
/* B7018 80100C58 248400F2 */   addiu     $a0, $a0, 0xF2
/* B701C 80100C5C 8E230000 */  lw         $v1, 0x0($s1)
/* B7020 80100C60 3C02800D */  lui        $v0, %hi(D_race_800CD420)
/* B7024 80100C64 244BD420 */  addiu      $t3, $v0, %lo(D_race_800CD420)
/* B7028 80100C68 8D680000 */  lw         $t0, 0x0($t3)
/* B702C 80100C6C 8D690004 */  lw         $t1, 0x4($t3)
/* B7030 80100C70 856A0008 */  lh         $t2, 0x8($t3)
/* B7034 80100C74 AC6800E0 */  sw         $t0, 0xE0($v1)
/* B7038 80100C78 AC6900E4 */  sw         $t1, 0xE4($v1)
/* B703C 80100C7C A46A00E8 */  sh         $t2, 0xE8($v1)
/* B7040 80100C80 8E220000 */  lw         $v0, 0x0($s1)
/* B7044 80100C84 3C058013 */  lui        $a1, %hi(D_race_80132C00)
/* B7048 80100C88 24AB2C00 */  addiu      $t3, $a1, %lo(D_race_80132C00)
/* B704C 80100C8C 8848004C */  lwl        $t0, 0x4C($v0)
/* B7050 80100C90 9848004F */  lwr        $t0, 0x4F($v0)
/* B7054 80100C94 88490050 */  lwl        $t1, 0x50($v0)
/* B7058 80100C98 98490053 */  lwr        $t1, 0x53($v0)
/* B705C 80100C9C A9680000 */  swl        $t0, 0x0($t3)
/* B7060 80100CA0 B9680003 */  swr        $t0, 0x3($t3)
/* B7064 80100CA4 A9690004 */  swl        $t1, 0x4($t3)
/* B7068 80100CA8 B9690007 */  swr        $t1, 0x7($t3)
/* B706C 80100CAC 24A52C00 */  addiu      $a1, $a1, %lo(D_race_80132C00)
/* B7070 80100CB0 A0A00008 */  sb         $zero, 0x8($a1)
/* B7074 80100CB4 8E240000 */  lw         $a0, 0x0($s1)
/* B7078 80100CB8 0C0006C8 */  jal        func_80001B20
/* B707C 80100CBC 248400E0 */   addiu     $a0, $a0, 0xE0
/* B7080 80100CC0 8E220000 */  lw         $v0, 0x0($s1)
/* B7084 80100CC4 244500E0 */  addiu      $a1, $v0, 0xE0
/* B7088 80100CC8 10A00007 */  beqz       $a1, .Lrace_80100CE8
/* B708C 80100CCC 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* B7090 80100CD0 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* B7094 80100CD4 02002021 */  addu       $a0, $s0, $zero
/* B7098 80100CD8 0C000708 */  jal        func_80001C20
/* B709C 80100CDC 24060100 */   addiu     $a2, $zero, 0x100
/* B70A0 80100CE0 0804033C */  j          .Lrace_80100CF0
/* B70A4 80100CE4 A20000FF */   sb        $zero, 0xFF($s0)
.Lrace_80100CE8:
/* B70A8 80100CE8 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* B70AC 80100CEC A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lrace_80100CF0:
/* B70B0 80100CF0 262334C8 */  addiu      $v1, $s1, 0x34C8
/* B70B4 80100CF4 8C620010 */  lw         $v0, 0x10($v1)
/* B70B8 80100CF8 10400005 */  beqz       $v0, .Lrace_80100D10
/* B70BC 80100CFC 26240098 */   addiu     $a0, $s1, 0x98
/* B70C0 80100D00 8E220000 */  lw         $v0, 0x0($s1)
/* B70C4 80100D04 3C068013 */  lui        $a2, %hi(D_race_80132C00)
/* B70C8 80100D08 08040347 */  j          .Lrace_80100D1C
/* B70CC 80100D0C AFA30010 */   sw        $v1, 0x10($sp)
.Lrace_80100D10:
/* B70D0 80100D10 8E220000 */  lw         $v0, 0x0($s1)
/* B70D4 80100D14 3C068013 */  lui        $a2, %hi(D_race_80132C00)
/* B70D8 80100D18 AFA00010 */  sw         $zero, 0x10($sp)
.Lrace_80100D1C:
/* B70DC 80100D1C 8E250000 */  lw         $a1, 0x0($s1)
/* B70E0 80100D20 8C470040 */  lw         $a3, 0x40($v0)
/* B70E4 80100D24 0C04109C */  jal        func_race_80104270
/* B70E8 80100D28 24C62C00 */   addiu     $a2, $a2, %lo(D_race_80132C00)
/* B70EC 80100D2C 8FBF0020 */  lw         $ra, 0x20($sp)
/* B70F0 80100D30 8FB1001C */  lw         $s1, 0x1C($sp)
/* B70F4 80100D34 8FB00018 */  lw         $s0, 0x18($sp)
/* B70F8 80100D38 03E00008 */  jr         $ra
/* B70FC 80100D3C 27BD0028 */   addiu     $sp, $sp, 0x28
