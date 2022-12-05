.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8012D890
/* E3C50 8012D890 00801021 */  addu       $v0, $a0, $zero
/* E3C54 8012D894 AC400000 */  sw         $zero, 0x0($v0)
/* E3C58 8012D898 03E00008 */  jr         $ra
/* E3C5C 8012D89C AC400004 */   sw        $zero, 0x4($v0)

glabel func_race_8012D8A0
/* E3C60 8012D8A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E3C64 8012D8A4 AFB10014 */  sw         $s1, 0x14($sp)
/* E3C68 8012D8A8 00808821 */  addu       $s1, $a0, $zero
/* E3C6C 8012D8AC AFB00010 */  sw         $s0, 0x10($sp)
/* E3C70 8012D8B0 AFBF0018 */  sw         $ra, 0x18($sp)
/* E3C74 8012D8B4 0C04B6F2 */  jal        func_race_8012DBC8
/* E3C78 8012D8B8 00A08021 */   addu      $s0, $a1, $zero
/* E3C7C 8012D8BC 32100001 */  andi       $s0, $s0, 0x1
/* E3C80 8012D8C0 12000003 */  beqz       $s0, .Lrace_8012D8D0
/* E3C84 8012D8C4 00000000 */   nop
/* E3C88 8012D8C8 0C01FB5C */  jal        func_8007ED70
/* E3C8C 8012D8CC 02202021 */   addu      $a0, $s1, $zero
.Lrace_8012D8D0:
/* E3C90 8012D8D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* E3C94 8012D8D4 8FB10014 */  lw         $s1, 0x14($sp)
/* E3C98 8012D8D8 8FB00010 */  lw         $s0, 0x10($sp)
/* E3C9C 8012D8DC 03E00008 */  jr         $ra
/* E3CA0 8012D8E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012D8E4
/* E3CA4 8012D8E4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* E3CA8 8012D8E8 AFB50034 */  sw         $s5, 0x34($sp)
/* E3CAC 8012D8EC 0080A821 */  addu       $s5, $a0, $zero
/* E3CB0 8012D8F0 AFB10024 */  sw         $s1, 0x24($sp)
/* E3CB4 8012D8F4 00A08821 */  addu       $s1, $a1, $zero
/* E3CB8 8012D8F8 AFBE0040 */  sw         $fp, 0x40($sp)
/* E3CBC 8012D8FC 00E0F021 */  addu       $fp, $a3, $zero
/* E3CC0 8012D900 AFBF0044 */  sw         $ra, 0x44($sp)
/* E3CC4 8012D904 AFB7003C */  sw         $s7, 0x3C($sp)
/* E3CC8 8012D908 AFB60038 */  sw         $s6, 0x38($sp)
/* E3CCC 8012D90C AFB40030 */  sw         $s4, 0x30($sp)
/* E3CD0 8012D910 AFB3002C */  sw         $s3, 0x2C($sp)
/* E3CD4 8012D914 AFB20028 */  sw         $s2, 0x28($sp)
/* E3CD8 8012D918 10C00014 */  beqz       $a2, .Lrace_8012D96C
/* E3CDC 8012D91C AFB00020 */   sw        $s0, 0x20($sp)
/* E3CE0 8012D920 0C01FB4C */  jal        func_8007ED30
/* E3CE4 8012D924 24040654 */   addiu     $a0, $zero, 0x654
/* E3CE8 8012D928 0C00278C */  jal        func_80009E30
/* E3CEC 8012D92C 00402021 */   addu      $a0, $v0, $zero
/* E3CF0 8012D930 00409021 */  addu       $s2, $v0, $zero
/* E3CF4 8012D934 56400008 */  bnel       $s2, $zero, .Lrace_8012D958
/* E3CF8 8012D938 02402021 */   addu      $a0, $s2, $zero
/* E3CFC 8012D93C 3C04800D */  lui        $a0, %hi(D_race_800CEFA0)
/* E3D00 8012D940 2484EFA0 */  addiu      $a0, $a0, %lo(D_race_800CEFA0)
/* E3D04 8012D944 00002821 */  addu       $a1, $zero, $zero
/* E3D08 8012D948 00A03021 */  addu       $a2, $a1, $zero
/* E3D0C 8012D94C 0C011ACF */  jal        func_80046B3C
/* E3D10 8012D950 00A03821 */   addu      $a3, $a1, $zero
/* E3D14 8012D954 02402021 */  addu       $a0, $s2, $zero
.Lrace_8012D958:
/* E3D18 8012D958 3C05800D */  lui        $a1, %hi(D_race_800CEFA4)
/* E3D1C 8012D95C 0C0025BA */  jal        func_800096E8
/* E3D20 8012D960 24A5EFA4 */   addiu     $a1, $a1, %lo(D_race_800CEFA4)
/* E3D24 8012D964 0804B66B */  j          .Lrace_8012D9AC
/* E3D28 8012D968 00000000 */   nop
.Lrace_8012D96C:
/* E3D2C 8012D96C 0C01FB4C */  jal        func_8007ED30
/* E3D30 8012D970 24040658 */   addiu     $a0, $zero, 0x658
/* E3D34 8012D974 00408021 */  addu       $s0, $v0, $zero
/* E3D38 8012D978 0C002504 */  jal        func_80009410
/* E3D3C 8012D97C 02002021 */   addu      $a0, $s0, $zero
/* E3D40 8012D980 3C02800D */  lui        $v0, %hi(D_race_800CEFB0)
/* E3D44 8012D984 2442EFB0 */  addiu      $v0, $v0, %lo(D_race_800CEFB0)
/* E3D48 8012D988 02009021 */  addu       $s2, $s0, $zero
/* E3D4C 8012D98C 16400007 */  bnez       $s2, .Lrace_8012D9AC
/* E3D50 8012D990 AE020028 */   sw        $v0, 0x28($s0)
/* E3D54 8012D994 3C04800D */  lui        $a0, %hi(D_race_800CEFA0)
/* E3D58 8012D998 2484EFA0 */  addiu      $a0, $a0, %lo(D_race_800CEFA0)
/* E3D5C 8012D99C 00002821 */  addu       $a1, $zero, $zero
/* E3D60 8012D9A0 00A03021 */  addu       $a2, $a1, $zero
/* E3D64 8012D9A4 0C011ACF */  jal        func_80046B3C
/* E3D68 8012D9A8 00A03821 */   addu      $a3, $a1, $zero
.Lrace_8012D9AC:
/* E3D6C 8012D9AC 8E420028 */  lw         $v0, 0x28($s2)
/* E3D70 8012D9B0 02202821 */  addu       $a1, $s1, $zero
/* E3D74 8012D9B4 84440088 */  lh         $a0, 0x88($v0)
/* E3D78 8012D9B8 8C42008C */  lw         $v0, 0x8C($v0)
/* E3D7C 8012D9BC 0040F809 */  jalr       $v0
/* E3D80 8012D9C0 02442021 */   addu      $a0, $s2, $a0
/* E3D84 8012D9C4 02402021 */  addu       $a0, $s2, $zero
/* E3D88 8012D9C8 0C0026F4 */  jal        func_80009BD0
/* E3D8C 8012D9CC 24050027 */   addiu     $a1, $zero, 0x27
/* E3D90 8012D9D0 0C002723 */  jal        func_80009C8C
/* E3D94 8012D9D4 02402021 */   addu      $a0, $s2, $zero
/* E3D98 8012D9D8 10400063 */  beqz       $v0, .Lrace_8012DB68
/* E3D9C 8012D9DC AEA20004 */   sw        $v0, 0x4($s5)
/* E3DA0 8012D9E0 3C028013 */  lui        $v0, %hi(D_race_801324C0)
/* E3DA4 8012D9E4 8C4424C0 */  lw         $a0, %lo(D_race_801324C0)($v0)
/* E3DA8 8012D9E8 0C01FB65 */  jal        func_8007ED94
/* E3DAC 8012D9EC 00000000 */   nop
/* E3DB0 8012D9F0 8EB00004 */  lw         $s0, 0x4($s5)
/* E3DB4 8012D9F4 00102080 */  sll        $a0, $s0, 2
/* E3DB8 8012D9F8 00902021 */  addu       $a0, $a0, $s0
/* E3DBC 8012D9FC 00042080 */  sll        $a0, $a0, 2
/* E3DC0 8012DA00 0C00943C */  jal        func_800250F0
/* E3DC4 8012DA04 24840008 */   addiu     $a0, $a0, 0x8
/* E3DC8 8012DA08 24420008 */  addiu      $v0, $v0, 0x8
/* E3DCC 8012DA0C 0040A021 */  addu       $s4, $v0, $zero
/* E3DD0 8012DA10 02809821 */  addu       $s3, $s4, $zero
/* E3DD4 8012DA14 2611FFFF */  addiu      $s1, $s0, -0x1
/* E3DD8 8012DA18 06200007 */  bltz       $s1, .Lrace_8012DA38
/* E3DDC 8012DA1C AE90FFF8 */   sw        $s0, -0x8($s4)
/* E3DE0 8012DA20 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_8012DA24:
/* E3DE4 8012DA24 0C04B600 */  jal        func_race_8012D800
/* E3DE8 8012DA28 02602021 */   addu      $a0, $s3, $zero
/* E3DEC 8012DA2C 2631FFFF */  addiu      $s1, $s1, -0x1
/* E3DF0 8012DA30 1630FFFC */  bne        $s1, $s0, .Lrace_8012DA24
/* E3DF4 8012DA34 26730014 */   addiu     $s3, $s3, 0x14
.Lrace_8012DA38:
/* E3DF8 8012DA38 0C01FB72 */  jal        func_8007EDC8
/* E3DFC 8012DA3C AEB40000 */   sw        $s4, 0x0($s5)
/* E3E00 8012DA40 8EA20000 */  lw         $v0, 0x0($s5)
/* E3E04 8012DA44 14400008 */  bnez       $v0, .Lrace_8012DA68
/* E3E08 8012DA48 00009821 */   addu      $s3, $zero, $zero
/* E3E0C 8012DA4C 3C04800D */  lui        $a0, %hi(D_race_800CEFA0)
/* E3E10 8012DA50 2484EFA0 */  addiu      $a0, $a0, %lo(D_race_800CEFA0)
/* E3E14 8012DA54 00002821 */  addu       $a1, $zero, $zero
/* E3E18 8012DA58 00A03021 */  addu       $a2, $a1, $zero
/* E3E1C 8012DA5C 0C011ACF */  jal        func_80046B3C
/* E3E20 8012DA60 00A03821 */   addu      $a3, $a1, $zero
/* E3E24 8012DA64 00009821 */  addu       $s3, $zero, $zero
.Lrace_8012DA68:
/* E3E28 8012DA68 24170006 */  addiu      $s7, $zero, 0x6
/* E3E2C 8012DA6C 24160028 */  addiu      $s6, $zero, 0x28
/* E3E30 8012DA70 24140029 */  addiu      $s4, $zero, 0x29
/* E3E34 8012DA74 02608821 */  addu       $s1, $s3, $zero
.Lrace_8012DA78:
/* E3E38 8012DA78 8EA20004 */  lw         $v0, 0x4($s5)
/* E3E3C 8012DA7C 0262102B */  sltu       $v0, $s3, $v0
/* E3E40 8012DA80 10400037 */  beqz       $v0, .Lrace_8012DB60
/* E3E44 8012DA84 02402021 */   addu      $a0, $s2, $zero
/* E3E48 8012DA88 0C0026F4 */  jal        func_80009BD0
/* E3E4C 8012DA8C 24050027 */   addiu     $a1, $zero, 0x27
/* E3E50 8012DA90 02402021 */  addu       $a0, $s2, $zero
/* E3E54 8012DA94 0C0026F4 */  jal        func_80009BD0
/* E3E58 8012DA98 24050005 */   addiu     $a1, $zero, 0x5
/* E3E5C 8012DA9C 2410FFFF */  addiu      $s0, $zero, -0x1
/* E3E60 8012DAA0 AFA00010 */  sw         $zero, 0x10($sp)
/* E3E64 8012DAA4 AFA00014 */  sw         $zero, 0x14($sp)
/* E3E68 8012DAA8 AFA00018 */  sw         $zero, 0x18($sp)
.Lrace_8012DAAC:
/* E3E6C 8012DAAC 8E420028 */  lw         $v0, 0x28($s2)
/* E3E70 8012DAB0 844400A0 */  lh         $a0, 0xA0($v0)
/* E3E74 8012DAB4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* E3E78 8012DAB8 0040F809 */  jalr       $v0
/* E3E7C 8012DABC 02442021 */   addu      $a0, $s2, $a0
/* E3E80 8012DAC0 10570020 */  beq        $v0, $s7, .Lrace_8012DB44
/* E3E84 8012DAC4 27A50010 */   addiu     $a1, $sp, 0x10
/* E3E88 8012DAC8 10560005 */  beq        $v0, $s6, .Lrace_8012DAE0
/* E3E8C 8012DACC 00000000 */   nop
/* E3E90 8012DAD0 10540011 */  beq        $v0, $s4, .Lrace_8012DB18
/* E3E94 8012DAD4 00002821 */   addu      $a1, $zero, $zero
/* E3E98 8012DAD8 0804B6CA */  j          .Lrace_8012DB28
/* E3E9C 8012DADC 00000000 */   nop
.Lrace_8012DAE0:
/* E3EA0 8012DAE0 0C0025F8 */  jal        func_800097E0
/* E3EA4 8012DAE4 02402021 */   addu      $a0, $s2, $zero
/* E3EA8 8012DAE8 02402021 */  addu       $a0, $s2, $zero
/* E3EAC 8012DAEC 0C0025F8 */  jal        func_800097E0
/* E3EB0 8012DAF0 E7A00010 */   swc1      $f0, 0x10($sp)
/* E3EB4 8012DAF4 02402021 */  addu       $a0, $s2, $zero
/* E3EB8 8012DAF8 0C0025F8 */  jal        func_800097E0
/* E3EBC 8012DAFC E7A00014 */   swc1      $f0, 0x14($sp)
/* E3EC0 8012DB00 13C0FFEA */  beqz       $fp, .Lrace_8012DAAC
/* E3EC4 8012DB04 E7A00018 */   swc1      $f0, 0x18($sp)
/* E3EC8 8012DB08 C7A00014 */  lwc1       $f0, 0x14($sp)
/* E3ECC 8012DB0C 46000007 */  neg.s      $f0, $f0
/* E3ED0 8012DB10 0804B6AB */  j          .Lrace_8012DAAC
/* E3ED4 8012DB14 E7A00014 */   swc1      $f0, 0x14($sp)
.Lrace_8012DB18:
/* E3ED8 8012DB18 0C002680 */  jal        func_80009A00
/* E3EDC 8012DB1C 02402021 */   addu      $a0, $s2, $zero
/* E3EE0 8012DB20 0804B6AB */  j          .Lrace_8012DAAC
/* E3EE4 8012DB24 00408021 */   addu      $s0, $v0, $zero
.Lrace_8012DB28:
/* E3EE8 8012DB28 8E420028 */  lw         $v0, 0x28($s2)
/* E3EEC 8012DB2C 84440098 */  lh         $a0, 0x98($v0)
/* E3EF0 8012DB30 8C42009C */  lw         $v0, 0x9C($v0)
/* E3EF4 8012DB34 0040F809 */  jalr       $v0
/* E3EF8 8012DB38 02442021 */   addu      $a0, $s2, $a0
/* E3EFC 8012DB3C 0804B6AB */  j          .Lrace_8012DAAC
/* E3F00 8012DB40 00000000 */   nop
.Lrace_8012DB44:
/* E3F04 8012DB44 02003021 */  addu       $a2, $s0, $zero
/* E3F08 8012DB48 8EA40000 */  lw         $a0, 0x0($s5)
/* E3F0C 8012DB4C 26730001 */  addiu      $s3, $s3, 0x1
/* E3F10 8012DB50 0C04B617 */  jal        func_race_8012D85C
/* E3F14 8012DB54 00912021 */   addu      $a0, $a0, $s1
/* E3F18 8012DB58 0804B69E */  j          .Lrace_8012DA78
/* E3F1C 8012DB5C 26310014 */   addiu     $s1, $s1, 0x14
.Lrace_8012DB60:
/* E3F20 8012DB60 0C0026F4 */  jal        func_80009BD0
/* E3F24 8012DB64 24050006 */   addiu     $a1, $zero, 0x6
.Lrace_8012DB68:
/* E3F28 8012DB68 8E420028 */  lw         $v0, 0x28($s2)
/* E3F2C 8012DB6C 84440048 */  lh         $a0, 0x48($v0)
/* E3F30 8012DB70 8C42004C */  lw         $v0, 0x4C($v0)
/* E3F34 8012DB74 0040F809 */  jalr       $v0
/* E3F38 8012DB78 02442021 */   addu      $a0, $s2, $a0
/* E3F3C 8012DB7C 12400006 */  beqz       $s2, .Lrace_8012DB98
/* E3F40 8012DB80 24050003 */   addiu     $a1, $zero, 0x3
/* E3F44 8012DB84 8E420028 */  lw         $v0, 0x28($s2)
/* E3F48 8012DB88 84440038 */  lh         $a0, 0x38($v0)
/* E3F4C 8012DB8C 8C42003C */  lw         $v0, 0x3C($v0)
/* E3F50 8012DB90 0040F809 */  jalr       $v0
/* E3F54 8012DB94 02442021 */   addu      $a0, $s2, $a0
.Lrace_8012DB98:
/* E3F58 8012DB98 8FBF0044 */  lw         $ra, 0x44($sp)
/* E3F5C 8012DB9C 8FBE0040 */  lw         $fp, 0x40($sp)
/* E3F60 8012DBA0 8FB7003C */  lw         $s7, 0x3C($sp)
/* E3F64 8012DBA4 8FB60038 */  lw         $s6, 0x38($sp)
/* E3F68 8012DBA8 8FB50034 */  lw         $s5, 0x34($sp)
/* E3F6C 8012DBAC 8FB40030 */  lw         $s4, 0x30($sp)
/* E3F70 8012DBB0 8FB3002C */  lw         $s3, 0x2C($sp)
/* E3F74 8012DBB4 8FB20028 */  lw         $s2, 0x28($sp)
/* E3F78 8012DBB8 8FB10024 */  lw         $s1, 0x24($sp)
/* E3F7C 8012DBBC 8FB00020 */  lw         $s0, 0x20($sp)
/* E3F80 8012DBC0 03E00008 */  jr         $ra
/* E3F84 8012DBC4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_8012DBC8
/* E3F88 8012DBC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E3F8C 8012DBCC AFB10014 */  sw         $s1, 0x14($sp)
/* E3F90 8012DBD0 00808821 */  addu       $s1, $a0, $zero
/* E3F94 8012DBD4 AFBF0018 */  sw         $ra, 0x18($sp)
/* E3F98 8012DBD8 AFB00010 */  sw         $s0, 0x10($sp)
/* E3F9C 8012DBDC 8E240000 */  lw         $a0, 0x0($s1)
/* E3FA0 8012DBE0 50800013 */  beql       $a0, $zero, .Lrace_8012DC30
/* E3FA4 8012DBE4 AE200004 */   sw        $zero, 0x4($s1)
/* E3FA8 8012DBE8 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E3FAC 8012DBEC 00031080 */  sll        $v0, $v1, 2
/* E3FB0 8012DBF0 00431021 */  addu       $v0, $v0, $v1
/* E3FB4 8012DBF4 00021080 */  sll        $v0, $v0, 2
/* E3FB8 8012DBF8 00828021 */  addu       $s0, $a0, $v0
/* E3FBC 8012DBFC 10900008 */  beq        $a0, $s0, .Lrace_8012DC20
/* E3FC0 8012DC00 2610FFEC */   addiu     $s0, $s0, -0x14
.Lrace_8012DC04:
/* E3FC4 8012DC04 02002021 */  addu       $a0, $s0, $zero
/* E3FC8 8012DC08 0C04B608 */  jal        func_race_8012D820
/* E3FCC 8012DC0C 24050002 */   addiu     $a1, $zero, 0x2
/* E3FD0 8012DC10 8E220000 */  lw         $v0, 0x0($s1)
/* E3FD4 8012DC14 1450FFFB */  bne        $v0, $s0, .Lrace_8012DC04
/* E3FD8 8012DC18 2610FFEC */   addiu     $s0, $s0, -0x14
/* E3FDC 8012DC1C 8E240000 */  lw         $a0, 0x0($s1)
.Lrace_8012DC20:
/* E3FE0 8012DC20 0C009444 */  jal        func_80025110
/* E3FE4 8012DC24 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E3FE8 8012DC28 AE200000 */  sw         $zero, 0x0($s1)
/* E3FEC 8012DC2C AE200004 */  sw         $zero, 0x4($s1)
.Lrace_8012DC30:
/* E3FF0 8012DC30 8FBF0018 */  lw         $ra, 0x18($sp)
/* E3FF4 8012DC34 8FB10014 */  lw         $s1, 0x14($sp)
/* E3FF8 8012DC38 8FB00010 */  lw         $s0, 0x10($sp)
/* E3FFC 8012DC3C 03E00008 */  jr         $ra
/* E4000 8012DC40 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012DC44
/* E4004 8012DC44 00004021 */  addu       $t0, $zero, $zero
/* E4008 8012DC48 01003821 */  addu       $a3, $t0, $zero
.Lrace_8012DC4C:
/* E400C 8012DC4C 8C820004 */  lw         $v0, 0x4($a0)
/* E4010 8012DC50 0102102B */  sltu       $v0, $t0, $v0
/* E4014 8012DC54 10400010 */  beqz       $v0, .Lrace_8012DC98
/* E4018 8012DC58 00000000 */   nop
/* E401C 8012DC5C 8C820000 */  lw         $v0, 0x0($a0)
/* E4020 8012DC60 00E23021 */  addu       $a2, $a3, $v0
/* E4024 8012DC64 8CC2000C */  lw         $v0, 0xC($a2)
/* E4028 8012DC68 14450004 */  bne        $v0, $a1, .Lrace_8012DC7C
/* E402C 8012DC6C 00001821 */   addu      $v1, $zero, $zero
/* E4030 8012DC70 90C20010 */  lbu        $v0, 0x10($a2)
/* E4034 8012DC74 30420002 */  andi       $v0, $v0, 0x2
/* E4038 8012DC78 0062182B */  sltu       $v1, $v1, $v0
.Lrace_8012DC7C:
/* E403C 8012DC7C 10600004 */  beqz       $v1, .Lrace_8012DC90
/* E4040 8012DC80 24E70014 */   addiu     $a3, $a3, 0x14
/* E4044 8012DC84 90C20010 */  lbu        $v0, 0x10($a2)
/* E4048 8012DC88 304200FD */  andi       $v0, $v0, 0xFD
/* E404C 8012DC8C A0C20010 */  sb         $v0, 0x10($a2)
.Lrace_8012DC90:
/* E4050 8012DC90 0804B713 */  j          .Lrace_8012DC4C
/* E4054 8012DC94 25080001 */   addiu     $t0, $t0, 0x1
.Lrace_8012DC98:
/* E4058 8012DC98 03E00008 */  jr         $ra
/* E405C 8012DC9C 00000000 */   nop

glabel func_race_8012DCA0
/* E4060 8012DCA0 27BDFF80 */  addiu      $sp, $sp, -0x80
/* E4064 8012DCA4 F7BC0078 */  sdc1       $f28, 0x78($sp)
/* E4068 8012DCA8 4487E000 */  mtc1       $a3, $f28
/* E406C 8012DCAC F7BA0070 */  sdc1       $f26, 0x70($sp)
/* E4070 8012DCB0 C7BA0090 */  lwc1       $f26, 0x90($sp)
/* E4074 8012DCB4 F7B80068 */  sdc1       $f24, 0x68($sp)
/* E4078 8012DCB8 C7B80094 */  lwc1       $f24, 0x94($sp)
/* E407C 8012DCBC F7B60060 */  sdc1       $f22, 0x60($sp)
/* E4080 8012DCC0 3C01800D */  lui        $at, %hi(D_race_800CEFAC)
/* E4084 8012DCC4 C436EFAC */  lwc1       $f22, %lo(D_race_800CEFAC)($at)
/* E4088 8012DCC8 AFB7004C */  sw         $s7, 0x4C($sp)
/* E408C 8012DCCC 0080B821 */  addu       $s7, $a0, $zero
/* E4090 8012DCD0 AFB10034 */  sw         $s1, 0x34($sp)
/* E4094 8012DCD4 00A08821 */  addu       $s1, $a1, $zero
/* E4098 8012DCD8 AFB60048 */  sw         $s6, 0x48($sp)
/* E409C 8012DCDC 00C0B021 */  addu       $s6, $a2, $zero
/* E40A0 8012DCE0 AFB3003C */  sw         $s3, 0x3C($sp)
/* E40A4 8012DCE4 2413FFFF */  addiu      $s3, $zero, -0x1
/* E40A8 8012DCE8 AFB00030 */  sw         $s0, 0x30($sp)
/* E40AC 8012DCEC 00008021 */  addu       $s0, $zero, $zero
/* E40B0 8012DCF0 AFB50044 */  sw         $s5, 0x44($sp)
/* E40B4 8012DCF4 27B50010 */  addiu      $s5, $sp, 0x10
/* E40B8 8012DCF8 AFB40040 */  sw         $s4, 0x40($sp)
/* E40BC 8012DCFC 27B40020 */  addiu      $s4, $sp, 0x20
/* E40C0 8012DD00 AFB20038 */  sw         $s2, 0x38($sp)
/* E40C4 8012DD04 02009021 */  addu       $s2, $s0, $zero
/* E40C8 8012DD08 AFBF0050 */  sw         $ra, 0x50($sp)
/* E40CC 8012DD0C F7B40058 */  sdc1       $f20, 0x58($sp)
.Lrace_8012DD10:
/* E40D0 8012DD10 8EE20004 */  lw         $v0, 0x4($s7)
/* E40D4 8012DD14 0202102A */  slt        $v0, $s0, $v0
/* E40D8 8012DD18 10400046 */  beqz       $v0, .Lrace_8012DE34
/* E40DC 8012DD1C 00000000 */   nop
/* E40E0 8012DD20 8EE20000 */  lw         $v0, 0x0($s7)
/* E40E4 8012DD24 02421821 */  addu       $v1, $s2, $v0
/* E40E8 8012DD28 90620010 */  lbu        $v0, 0x10($v1)
/* E40EC 8012DD2C 30420002 */  andi       $v0, $v0, 0x2
/* E40F0 8012DD30 5040003E */  beql       $v0, $zero, .Lrace_8012DE2C
/* E40F4 8012DD34 26520014 */   addiu     $s2, $s2, 0x14
/* E40F8 8012DD38 8C680000 */  lw         $t0, 0x0($v1)
/* E40FC 8012DD3C 8C690004 */  lw         $t1, 0x4($v1)
/* E4100 8012DD40 8C6A0008 */  lw         $t2, 0x8($v1)
/* E4104 8012DD44 AFA80010 */  sw         $t0, 0x10($sp)
/* E4108 8012DD48 AFA90014 */  sw         $t1, 0x14($sp)
/* E410C 8012DD4C AFAA0018 */  sw         $t2, 0x18($sp)
/* E4110 8012DD50 C7A20010 */  lwc1       $f2, 0x10($sp)
/* E4114 8012DD54 C6200000 */  lwc1       $f0, 0x0($s1)
/* E4118 8012DD58 46001201 */  sub.s      $f8, $f2, $f0
/* E411C 8012DD5C 46084182 */  mul.s      $f6, $f8, $f8
/* E4120 8012DD60 C6A40004 */  lwc1       $f4, 0x4($s5)
/* E4124 8012DD64 C6200004 */  lwc1       $f0, 0x4($s1)
/* E4128 8012DD68 46002101 */  sub.s      $f4, $f4, $f0
/* E412C 8012DD6C 46042102 */  mul.s      $f4, $f4, $f4
/* E4130 8012DD70 C6220008 */  lwc1       $f2, 0x8($s1)
/* E4134 8012DD74 C6A00008 */  lwc1       $f0, 0x8($s5)
/* E4138 8012DD78 46020001 */  sub.s      $f0, $f0, $f2
/* E413C 8012DD7C 46000002 */  mul.s      $f0, $f0, $f0
/* E4140 8012DD80 46043180 */  add.s      $f6, $f6, $f4
/* E4144 8012DD84 46003500 */  add.s      $f20, $f6, $f0
/* E4148 8012DD88 461CA03C */  c.lt.s     $f20, $f28
/* E414C 8012DD8C 00000000 */  nop
/* E4150 8012DD90 45030026 */  bc1tl      .Lrace_8012DE2C
/* E4154 8012DD94 26520014 */   addiu     $s2, $s2, 0x14
/* E4158 8012DD98 4614D03C */  c.lt.s     $f26, $f20
/* E415C 8012DD9C 00000000 */  nop
/* E4160 8012DDA0 45030022 */  bc1tl      .Lrace_8012DE2C
/* E4164 8012DDA4 26520014 */   addiu     $s2, $s2, 0x14
/* E4168 8012DDA8 C7A00014 */  lwc1       $f0, 0x14($sp)
/* E416C 8012DDAC E7A80020 */  swc1       $f8, 0x20($sp)
/* E4170 8012DDB0 C6220004 */  lwc1       $f2, 0x4($s1)
/* E4174 8012DDB4 46020001 */  sub.s      $f0, $f0, $f2
/* E4178 8012DDB8 E7A00024 */  swc1       $f0, 0x24($sp)
/* E417C 8012DDBC C7A00018 */  lwc1       $f0, 0x18($sp)
/* E4180 8012DDC0 C6220008 */  lwc1       $f2, 0x8($s1)
/* E4184 8012DDC4 46020001 */  sub.s      $f0, $f0, $f2
/* E4188 8012DDC8 02802021 */  addu       $a0, $s4, $zero
/* E418C 8012DDCC 02802821 */  addu       $a1, $s4, $zero
/* E4190 8012DDD0 0C000F26 */  jal        func_80003C98
/* E4194 8012DDD4 E7A00028 */   swc1      $f0, 0x28($sp)
/* E4198 8012DDD8 C7A40020 */  lwc1       $f4, 0x20($sp)
/* E419C 8012DDDC C6C00000 */  lwc1       $f0, 0x0($s6)
/* E41A0 8012DDE0 46002102 */  mul.s      $f4, $f4, $f0
/* E41A4 8012DDE4 C7A60024 */  lwc1       $f6, 0x24($sp)
/* E41A8 8012DDE8 C6C00004 */  lwc1       $f0, 0x4($s6)
/* E41AC 8012DDEC 46003182 */  mul.s      $f6, $f6, $f0
/* E41B0 8012DDF0 C7A20028 */  lwc1       $f2, 0x28($sp)
/* E41B4 8012DDF4 C6C00008 */  lwc1       $f0, 0x8($s6)
/* E41B8 8012DDF8 46001082 */  mul.s      $f2, $f2, $f0
/* E41BC 8012DDFC 46062100 */  add.s      $f4, $f4, $f6
/* E41C0 8012DE00 46022100 */  add.s      $f4, $f4, $f2
/* E41C4 8012DE04 4618203C */  c.lt.s     $f4, $f24
/* E41C8 8012DE08 00000000 */  nop
/* E41CC 8012DE0C 45010007 */  bc1t       .Lrace_8012DE2C
/* E41D0 8012DE10 26520014 */   addiu     $s2, $s2, 0x14
/* E41D4 8012DE14 4616A03C */  c.lt.s     $f20, $f22
/* E41D8 8012DE18 00000000 */  nop
/* E41DC 8012DE1C 45000003 */  bc1f       .Lrace_8012DE2C
/* E41E0 8012DE20 00000000 */   nop
/* E41E4 8012DE24 4600A586 */  mov.s      $f22, $f20
/* E41E8 8012DE28 02009821 */  addu       $s3, $s0, $zero
.Lrace_8012DE2C:
/* E41EC 8012DE2C 0804B744 */  j          .Lrace_8012DD10
/* E41F0 8012DE30 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_8012DE34:
/* E41F4 8012DE34 06600006 */  bltz       $s3, .Lrace_8012DE50
/* E41F8 8012DE38 00131080 */   sll       $v0, $s3, 2
/* E41FC 8012DE3C 00531021 */  addu       $v0, $v0, $s3
/* E4200 8012DE40 8EE30000 */  lw         $v1, 0x0($s7)
/* E4204 8012DE44 00021080 */  sll        $v0, $v0, 2
/* E4208 8012DE48 0804B795 */  j          .Lrace_8012DE54
/* E420C 8012DE4C 00621021 */   addu      $v0, $v1, $v0
.Lrace_8012DE50:
/* E4210 8012DE50 00001021 */  addu       $v0, $zero, $zero
.Lrace_8012DE54:
/* E4214 8012DE54 8FBF0050 */  lw         $ra, 0x50($sp)
/* E4218 8012DE58 8FB7004C */  lw         $s7, 0x4C($sp)
/* E421C 8012DE5C 8FB60048 */  lw         $s6, 0x48($sp)
/* E4220 8012DE60 8FB50044 */  lw         $s5, 0x44($sp)
/* E4224 8012DE64 8FB40040 */  lw         $s4, 0x40($sp)
/* E4228 8012DE68 8FB3003C */  lw         $s3, 0x3C($sp)
/* E422C 8012DE6C 8FB20038 */  lw         $s2, 0x38($sp)
/* E4230 8012DE70 8FB10034 */  lw         $s1, 0x34($sp)
/* E4234 8012DE74 8FB00030 */  lw         $s0, 0x30($sp)
/* E4238 8012DE78 D7BC0078 */  ldc1       $f28, 0x78($sp)
/* E423C 8012DE7C D7BA0070 */  ldc1       $f26, 0x70($sp)
/* E4240 8012DE80 D7B80068 */  ldc1       $f24, 0x68($sp)
/* E4244 8012DE84 D7B60060 */  ldc1       $f22, 0x60($sp)
/* E4248 8012DE88 D7B40058 */  ldc1       $f20, 0x58($sp)
/* E424C 8012DE8C 03E00008 */  jr         $ra
/* E4250 8012DE90 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_8012DE94
/* E4254 8012DE94 3C028013 */  lui        $v0, %hi(D_race_801324C0)
/* E4258 8012DE98 03E00008 */  jr         $ra
/* E425C 8012DE9C AC4424C0 */   sw        $a0, %lo(D_race_801324C0)($v0)

glabel func_race_8012DEA0
/* E4260 8012DEA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E4264 8012DEA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* E4268 8012DEA8 0C002513 */  jal        func_8000944C
/* E426C 8012DEAC 00000000 */   nop
/* E4270 8012DEB0 8FBF0010 */  lw         $ra, 0x10($sp)
/* E4274 8012DEB4 03E00008 */  jr         $ra
/* E4278 8012DEB8 27BD0018 */   addiu     $sp, $sp, 0x18
