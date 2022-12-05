.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80130970
/* E6D30 80130970 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E6D34 80130974 AFB00010 */  sw         $s0, 0x10($sp)
/* E6D38 80130978 AFBF0014 */  sw         $ra, 0x14($sp)
/* E6D3C 8013097C 0C04C33D */  jal        func_race_80130CF4
/* E6D40 80130980 00808021 */   addu      $s0, $a0, $zero
/* E6D44 80130984 02001021 */  addu       $v0, $s0, $zero
/* E6D48 80130988 8FBF0014 */  lw         $ra, 0x14($sp)
/* E6D4C 8013098C 8FB00010 */  lw         $s0, 0x10($sp)
/* E6D50 80130990 03E00008 */  jr         $ra
/* E6D54 80130994 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80130998
/* E6D58 80130998 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E6D5C 8013099C AFB10014 */  sw         $s1, 0x14($sp)
/* E6D60 801309A0 00808821 */  addu       $s1, $a0, $zero
/* E6D64 801309A4 AFB00010 */  sw         $s0, 0x10($sp)
/* E6D68 801309A8 AFBF0018 */  sw         $ra, 0x18($sp)
/* E6D6C 801309AC 0C04C32E */  jal        func_race_80130CB8
/* E6D70 801309B0 00A08021 */   addu      $s0, $a1, $zero
/* E6D74 801309B4 32100001 */  andi       $s0, $s0, 0x1
/* E6D78 801309B8 12000003 */  beqz       $s0, .Lrace_801309C8
/* E6D7C 801309BC 00000000 */   nop
/* E6D80 801309C0 0C01FB5C */  jal        func_8007ED70
/* E6D84 801309C4 02202021 */   addu      $a0, $s1, $zero
.Lrace_801309C8:
/* E6D88 801309C8 8FBF0018 */  lw         $ra, 0x18($sp)
/* E6D8C 801309CC 8FB10014 */  lw         $s1, 0x14($sp)
/* E6D90 801309D0 8FB00010 */  lw         $s0, 0x10($sp)
/* E6D94 801309D4 03E00008 */  jr         $ra
/* E6D98 801309D8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801309DC
/* E6D9C 801309DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E6DA0 801309E0 AFB10014 */  sw         $s1, 0x14($sp)
/* E6DA4 801309E4 00808821 */  addu       $s1, $a0, $zero
/* E6DA8 801309E8 AFB3001C */  sw         $s3, 0x1C($sp)
/* E6DAC 801309EC 00A09821 */  addu       $s3, $a1, $zero
/* E6DB0 801309F0 AFB00010 */  sw         $s0, 0x10($sp)
/* E6DB4 801309F4 00C08021 */  addu       $s0, $a2, $zero
/* E6DB8 801309F8 AFBF0020 */  sw         $ra, 0x20($sp)
/* E6DBC 801309FC AFB20018 */  sw         $s2, 0x18($sp)
/* E6DC0 80130A00 8E220004 */  lw         $v0, 0x4($s1)
/* E6DC4 80130A04 10400003 */  beqz       $v0, .Lrace_80130A14
/* E6DC8 80130A08 00E09021 */   addu      $s2, $a3, $zero
/* E6DCC 80130A0C 0C04C32E */  jal        func_race_80130CB8
/* E6DD0 80130A10 00000000 */   nop
.Lrace_80130A14:
/* E6DD4 80130A14 12000014 */  beqz       $s0, .Lrace_80130A68
/* E6DD8 80130A18 00000000 */   nop
/* E6DDC 80130A1C 0C01FB4C */  jal        func_8007ED30
/* E6DE0 80130A20 24040654 */   addiu     $a0, $zero, 0x654
/* E6DE4 80130A24 0C00278C */  jal        func_80009E30
/* E6DE8 80130A28 00402021 */   addu      $a0, $v0, $zero
/* E6DEC 80130A2C 00408021 */  addu       $s0, $v0, $zero
/* E6DF0 80130A30 56000008 */  bnel       $s0, $zero, .Lrace_80130A54
/* E6DF4 80130A34 02002021 */   addu      $a0, $s0, $zero
/* E6DF8 80130A38 3C04800D */  lui        $a0, %hi(D_race_800CF280)
/* E6DFC 80130A3C 2484F280 */  addiu      $a0, $a0, %lo(D_race_800CF280)
/* E6E00 80130A40 00002821 */  addu       $a1, $zero, $zero
/* E6E04 80130A44 00A03021 */  addu       $a2, $a1, $zero
/* E6E08 80130A48 0C011ACF */  jal        func_80046B3C
/* E6E0C 80130A4C 00A03821 */   addu      $a3, $a1, $zero
/* E6E10 80130A50 02002021 */  addu       $a0, $s0, $zero
.Lrace_80130A54:
/* E6E14 80130A54 3C05800D */  lui        $a1, %hi(D_race_800CF284)
/* E6E18 80130A58 0C0025BA */  jal        func_800096E8
/* E6E1C 80130A5C 24A5F284 */   addiu     $a1, $a1, %lo(D_race_800CF284)
/* E6E20 80130A60 0804C2A9 */  j          .Lrace_80130AA4
/* E6E24 80130A64 00000000 */   nop
.Lrace_80130A68:
/* E6E28 80130A68 0C01FB4C */  jal        func_8007ED30
/* E6E2C 80130A6C 24040658 */   addiu     $a0, $zero, 0x658
/* E6E30 80130A70 00408021 */  addu       $s0, $v0, $zero
/* E6E34 80130A74 0C002504 */  jal        func_80009410
/* E6E38 80130A78 02002021 */   addu      $a0, $s0, $zero
/* E6E3C 80130A7C 3C02800D */  lui        $v0, %hi(D_race_800CF2B0)
/* E6E40 80130A80 2442F2B0 */  addiu      $v0, $v0, %lo(D_race_800CF2B0)
/* E6E44 80130A84 16000007 */  bnez       $s0, .Lrace_80130AA4
/* E6E48 80130A88 AE020028 */   sw        $v0, 0x28($s0)
/* E6E4C 80130A8C 3C04800D */  lui        $a0, %hi(D_race_800CF280)
/* E6E50 80130A90 2484F280 */  addiu      $a0, $a0, %lo(D_race_800CF280)
/* E6E54 80130A94 00002821 */  addu       $a1, $zero, $zero
/* E6E58 80130A98 00A03021 */  addu       $a2, $a1, $zero
/* E6E5C 80130A9C 0C011ACF */  jal        func_80046B3C
/* E6E60 80130AA0 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80130AA4:
/* E6E64 80130AA4 8E020028 */  lw         $v0, 0x28($s0)
/* E6E68 80130AA8 02602821 */  addu       $a1, $s3, $zero
/* E6E6C 80130AAC 84440088 */  lh         $a0, 0x88($v0)
/* E6E70 80130AB0 8C42008C */  lw         $v0, 0x8C($v0)
/* E6E74 80130AB4 0040F809 */  jalr       $v0
/* E6E78 80130AB8 02042021 */   addu      $a0, $s0, $a0
/* E6E7C 80130ABC 3C02800D */  lui        $v0, %hi(jtbl_race_800CF290)
/* E6E80 80130AC0 2453F290 */  addiu      $s3, $v0, %lo(jtbl_race_800CF290)
.Lrace_80130AC4:
/* E6E84 80130AC4 8E020028 */  lw         $v0, 0x28($s0)
/* E6E88 80130AC8 844400A0 */  lh         $a0, 0xA0($v0)
/* E6E8C 80130ACC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* E6E90 80130AD0 0040F809 */  jalr       $v0
/* E6E94 80130AD4 02042021 */   addu      $a0, $s0, $a0
/* E6E98 80130AD8 1040005A */  beqz       $v0, .Lrace_80130C44
/* E6E9C 80130ADC 2443FFD9 */   addiu     $v1, $v0, -0x27
/* E6EA0 80130AE0 2C620007 */  sltiu      $v0, $v1, 0x7
/* E6EA4 80130AE4 1040FFF7 */  beqz       $v0, .Lrace_80130AC4
/* E6EA8 80130AE8 00031080 */   sll       $v0, $v1, 2
/* E6EAC 80130AEC 00531021 */  addu       $v0, $v0, $s3
/* E6EB0 80130AF0 8C420000 */  lw         $v0, 0x0($v0)
/* E6EB4 80130AF4 00400008 */  jr         $v0
/* E6EB8 80130AF8 00000000 */   nop
glabel Lrace_80130AFC
/* E6EBC 80130AFC 02202021 */  addu       $a0, $s1, $zero
/* E6EC0 80130B00 02002821 */  addu       $a1, $s0, $zero
/* E6EC4 80130B04 0C04C352 */  jal        func_race_80130D48
/* E6EC8 80130B08 02403021 */   addu      $a2, $s2, $zero
/* E6ECC 80130B0C 0804C2B1 */  j          .Lrace_80130AC4
/* E6ED0 80130B10 00000000 */   nop
glabel Lrace_80130B14
/* E6ED4 80130B14 0C0025F8 */  jal        func_800097E0
/* E6ED8 80130B18 02002021 */   addu      $a0, $s0, $zero
/* E6EDC 80130B1C 02002021 */  addu       $a0, $s0, $zero
/* E6EE0 80130B20 0C0025F8 */  jal        func_800097E0
/* E6EE4 80130B24 E6200014 */   swc1      $f0, 0x14($s1)
/* E6EE8 80130B28 02002021 */  addu       $a0, $s0, $zero
/* E6EEC 80130B2C 0C0025F8 */  jal        func_800097E0
/* E6EF0 80130B30 E6200018 */   swc1      $f0, 0x18($s1)
/* E6EF4 80130B34 02002021 */  addu       $a0, $s0, $zero
/* E6EF8 80130B38 0C0025F8 */  jal        func_800097E0
/* E6EFC 80130B3C E620001C */   swc1      $f0, 0x1C($s1)
/* E6F00 80130B40 1240FFE0 */  beqz       $s2, .Lrace_80130AC4
/* E6F04 80130B44 E6200020 */   swc1      $f0, 0x20($s1)
/* E6F08 80130B48 C6200018 */  lwc1       $f0, 0x18($s1)
/* E6F0C 80130B4C C6220020 */  lwc1       $f2, 0x20($s1)
/* E6F10 80130B50 46000007 */  neg.s      $f0, $f0
/* E6F14 80130B54 46001087 */  neg.s      $f2, $f2
/* E6F18 80130B58 E6200018 */  swc1       $f0, 0x18($s1)
/* E6F1C 80130B5C 0804C2B1 */  j          .Lrace_80130AC4
/* E6F20 80130B60 E6220020 */   swc1      $f2, 0x20($s1)
glabel Lrace_80130B64
/* E6F24 80130B64 0C0025F8 */  jal        func_800097E0
/* E6F28 80130B68 02002021 */   addu      $a0, $s0, $zero
/* E6F2C 80130B6C 02002021 */  addu       $a0, $s0, $zero
/* E6F30 80130B70 0C0025F8 */  jal        func_800097E0
/* E6F34 80130B74 E6200008 */   swc1      $f0, 0x8($s1)
/* E6F38 80130B78 02002021 */  addu       $a0, $s0, $zero
/* E6F3C 80130B7C 0C0025F8 */  jal        func_800097E0
/* E6F40 80130B80 E620000C */   swc1      $f0, 0xC($s1)
/* E6F44 80130B84 1240FFCF */  beqz       $s2, .Lrace_80130AC4
/* E6F48 80130B88 E6200010 */   swc1      $f0, 0x10($s1)
/* E6F4C 80130B8C C620000C */  lwc1       $f0, 0xC($s1)
/* E6F50 80130B90 46000007 */  neg.s      $f0, $f0
/* E6F54 80130B94 0804C2B1 */  j          .Lrace_80130AC4
/* E6F58 80130B98 E620000C */   swc1      $f0, 0xC($s1)
glabel Lrace_80130B9C
/* E6F5C 80130B9C 0C0025F8 */  jal        func_800097E0
/* E6F60 80130BA0 02002021 */   addu      $a0, $s0, $zero
/* E6F64 80130BA4 02002021 */  addu       $a0, $s0, $zero
/* E6F68 80130BA8 0C0025F8 */  jal        func_800097E0
/* E6F6C 80130BAC E6200024 */   swc1      $f0, 0x24($s1)
/* E6F70 80130BB0 02002021 */  addu       $a0, $s0, $zero
/* E6F74 80130BB4 0C0025F8 */  jal        func_800097E0
/* E6F78 80130BB8 E6200028 */   swc1      $f0, 0x28($s1)
/* E6F7C 80130BBC 1240FFC1 */  beqz       $s2, .Lrace_80130AC4
/* E6F80 80130BC0 E620002C */   swc1      $f0, 0x2C($s1)
/* E6F84 80130BC4 C6200028 */  lwc1       $f0, 0x28($s1)
/* E6F88 80130BC8 46000007 */  neg.s      $f0, $f0
/* E6F8C 80130BCC 0804C2B1 */  j          .Lrace_80130AC4
/* E6F90 80130BD0 E6200028 */   swc1      $f0, 0x28($s1)
glabel Lrace_80130BD4
/* E6F94 80130BD4 0C0025F8 */  jal        func_800097E0
/* E6F98 80130BD8 02002021 */   addu      $a0, $s0, $zero
/* E6F9C 80130BDC 02002021 */  addu       $a0, $s0, $zero
/* E6FA0 80130BE0 0C0025F8 */  jal        func_800097E0
/* E6FA4 80130BE4 E6200030 */   swc1      $f0, 0x30($s1)
/* E6FA8 80130BE8 02002021 */  addu       $a0, $s0, $zero
/* E6FAC 80130BEC 0C0025F8 */  jal        func_800097E0
/* E6FB0 80130BF0 E6200034 */   swc1      $f0, 0x34($s1)
/* E6FB4 80130BF4 02002021 */  addu       $a0, $s0, $zero
/* E6FB8 80130BF8 0C0025F8 */  jal        func_800097E0
/* E6FBC 80130BFC E6200038 */   swc1      $f0, 0x38($s1)
/* E6FC0 80130C00 1240FFB0 */  beqz       $s2, .Lrace_80130AC4
/* E6FC4 80130C04 E620003C */   swc1      $f0, 0x3C($s1)
/* E6FC8 80130C08 C6200034 */  lwc1       $f0, 0x34($s1)
/* E6FCC 80130C0C C622003C */  lwc1       $f2, 0x3C($s1)
/* E6FD0 80130C10 46000007 */  neg.s      $f0, $f0
/* E6FD4 80130C14 46001087 */  neg.s      $f2, $f2
/* E6FD8 80130C18 E6200034 */  swc1       $f0, 0x34($s1)
/* E6FDC 80130C1C 0804C2B1 */  j          .Lrace_80130AC4
/* E6FE0 80130C20 E622003C */   swc1      $f2, 0x3C($s1)
glabel Lrace_80130C24
/* E6FE4 80130C24 0C002680 */  jal        func_80009A00
/* E6FE8 80130C28 02002021 */   addu      $a0, $s0, $zero
/* E6FEC 80130C2C 0804C2B1 */  j          .Lrace_80130AC4
/* E6FF0 80130C30 AE220040 */   sw        $v0, 0x40($s1)
glabel Lrace_80130C34
/* E6FF4 80130C34 0C002680 */  jal        func_80009A00
/* E6FF8 80130C38 02002021 */   addu      $a0, $s0, $zero
/* E6FFC 80130C3C 0804C2B1 */  j          .Lrace_80130AC4
/* E7000 80130C40 AE220044 */   sw        $v0, 0x44($s1)
.Lrace_80130C44:
/* E7004 80130C44 8E220044 */  lw         $v0, 0x44($s1)
/* E7008 80130C48 8E230000 */  lw         $v1, 0x0($s1)
/* E700C 80130C4C 0043102B */  sltu       $v0, $v0, $v1
/* E7010 80130C50 14400006 */  bnez       $v0, .Lrace_80130C6C
/* E7014 80130C54 2405000F */   addiu     $a1, $zero, 0xF
/* E7018 80130C58 8E020028 */  lw         $v0, 0x28($s0)
/* E701C 80130C5C 84440098 */  lh         $a0, 0x98($v0)
/* E7020 80130C60 8C42009C */  lw         $v0, 0x9C($v0)
/* E7024 80130C64 0040F809 */  jalr       $v0
/* E7028 80130C68 02042021 */   addu      $a0, $s0, $a0
.Lrace_80130C6C:
/* E702C 80130C6C 8E020028 */  lw         $v0, 0x28($s0)
/* E7030 80130C70 84440048 */  lh         $a0, 0x48($v0)
/* E7034 80130C74 8C42004C */  lw         $v0, 0x4C($v0)
/* E7038 80130C78 0040F809 */  jalr       $v0
/* E703C 80130C7C 02042021 */   addu      $a0, $s0, $a0
/* E7040 80130C80 12000006 */  beqz       $s0, .Lrace_80130C9C
/* E7044 80130C84 24050003 */   addiu     $a1, $zero, 0x3
/* E7048 80130C88 8E020028 */  lw         $v0, 0x28($s0)
/* E704C 80130C8C 84440038 */  lh         $a0, 0x38($v0)
/* E7050 80130C90 8C42003C */  lw         $v0, 0x3C($v0)
/* E7054 80130C94 0040F809 */  jalr       $v0
/* E7058 80130C98 02042021 */   addu      $a0, $s0, $a0
.Lrace_80130C9C:
/* E705C 80130C9C 8FBF0020 */  lw         $ra, 0x20($sp)
/* E7060 80130CA0 8FB3001C */  lw         $s3, 0x1C($sp)
/* E7064 80130CA4 8FB20018 */  lw         $s2, 0x18($sp)
/* E7068 80130CA8 8FB10014 */  lw         $s1, 0x14($sp)
/* E706C 80130CAC 8FB00010 */  lw         $s0, 0x10($sp)
/* E7070 80130CB0 03E00008 */  jr         $ra
/* E7074 80130CB4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80130CB8
/* E7078 80130CB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E707C 80130CBC AFB00010 */  sw         $s0, 0x10($sp)
/* E7080 80130CC0 00808021 */  addu       $s0, $a0, $zero
/* E7084 80130CC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* E7088 80130CC8 8E040004 */  lw         $a0, 0x4($s0)
/* E708C 80130CCC 10800003 */  beqz       $a0, .Lrace_80130CDC
/* E7090 80130CD0 00000000 */   nop
/* E7094 80130CD4 0C009444 */  jal        func_80025110
/* E7098 80130CD8 00000000 */   nop
.Lrace_80130CDC:
/* E709C 80130CDC 0C04C33D */  jal        func_race_80130CF4
/* E70A0 80130CE0 02002021 */   addu      $a0, $s0, $zero
/* E70A4 80130CE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* E70A8 80130CE8 8FB00010 */  lw         $s0, 0x10($sp)
/* E70AC 80130CEC 03E00008 */  jr         $ra
/* E70B0 80130CF0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80130CF4
/* E70B4 80130CF4 3C01800D */  lui        $at, %hi(D_race_800CF2AC)
/* E70B8 80130CF8 C420F2AC */  lwc1       $f0, %lo(D_race_800CF2AC)($at)
/* E70BC 80130CFC AC800000 */  sw         $zero, 0x0($a0)
/* E70C0 80130D00 AC800004 */  sw         $zero, 0x4($a0)
/* E70C4 80130D04 AC800008 */  sw         $zero, 0x8($a0)
/* E70C8 80130D08 AC80000C */  sw         $zero, 0xC($a0)
/* E70CC 80130D0C AC800010 */  sw         $zero, 0x10($a0)
/* E70D0 80130D10 AC800014 */  sw         $zero, 0x14($a0)
/* E70D4 80130D14 AC800018 */  sw         $zero, 0x18($a0)
/* E70D8 80130D18 AC80001C */  sw         $zero, 0x1C($a0)
/* E70DC 80130D1C AC800024 */  sw         $zero, 0x24($a0)
/* E70E0 80130D20 AC800028 */  sw         $zero, 0x28($a0)
/* E70E4 80130D24 AC80002C */  sw         $zero, 0x2C($a0)
/* E70E8 80130D28 AC800030 */  sw         $zero, 0x30($a0)
/* E70EC 80130D2C AC800034 */  sw         $zero, 0x34($a0)
/* E70F0 80130D30 AC800038 */  sw         $zero, 0x38($a0)
/* E70F4 80130D34 AC800040 */  sw         $zero, 0x40($a0)
/* E70F8 80130D38 AC800044 */  sw         $zero, 0x44($a0)
/* E70FC 80130D3C E4800020 */  swc1       $f0, 0x20($a0)
/* E7100 80130D40 03E00008 */  jr         $ra
/* E7104 80130D44 E480003C */   swc1      $f0, 0x3C($a0)

glabel func_race_80130D48
/* E7108 80130D48 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E710C 80130D4C AFB20018 */  sw         $s2, 0x18($sp)
/* E7110 80130D50 00809021 */  addu       $s2, $a0, $zero
/* E7114 80130D54 AFB3001C */  sw         $s3, 0x1C($sp)
/* E7118 80130D58 00A09821 */  addu       $s3, $a1, $zero
/* E711C 80130D5C AFB40020 */  sw         $s4, 0x20($sp)
/* E7120 80130D60 00C0A021 */  addu       $s4, $a2, $zero
/* E7124 80130D64 02602021 */  addu       $a0, $s3, $zero
/* E7128 80130D68 AFBF0024 */  sw         $ra, 0x24($sp)
/* E712C 80130D6C AFB10014 */  sw         $s1, 0x14($sp)
/* E7130 80130D70 0C002723 */  jal        func_80009C8C
/* E7134 80130D74 AFB00010 */   sw        $s0, 0x10($sp)
/* E7138 80130D78 3C038013 */  lui        $v1, %hi(D_race_801324D0)
/* E713C 80130D7C 8C6424D0 */  lw         $a0, %lo(D_race_801324D0)($v1)
/* E7140 80130D80 0C01FB65 */  jal        func_8007ED94
/* E7144 80130D84 AE420000 */   sw        $v0, 0x0($s2)
/* E7148 80130D88 8E420000 */  lw         $v0, 0x0($s2)
/* E714C 80130D8C 00022040 */  sll        $a0, $v0, 1
/* E7150 80130D90 00822021 */  addu       $a0, $a0, $v0
/* E7154 80130D94 0C00943C */  jal        func_800250F0
/* E7158 80130D98 00042080 */   sll       $a0, $a0, 2
/* E715C 80130D9C 0C01FB72 */  jal        func_8007EDC8
/* E7160 80130DA0 AE420004 */   sw        $v0, 0x4($s2)
/* E7164 80130DA4 8E420004 */  lw         $v0, 0x4($s2)
/* E7168 80130DA8 14400006 */  bnez       $v0, .Lrace_80130DC4
/* E716C 80130DAC 3C04800D */   lui       $a0, %hi(D_race_800CF280)
/* E7170 80130DB0 2484F280 */  addiu      $a0, $a0, %lo(D_race_800CF280)
/* E7174 80130DB4 00002821 */  addu       $a1, $zero, $zero
/* E7178 80130DB8 00A03021 */  addu       $a2, $a1, $zero
/* E717C 80130DBC 0C011ACF */  jal        func_80046B3C
/* E7180 80130DC0 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80130DC4:
/* E7184 80130DC4 8E420000 */  lw         $v0, 0x0($s2)
/* E7188 80130DC8 1040000C */  beqz       $v0, .Lrace_80130DFC
/* E718C 80130DCC 00008021 */   addu      $s0, $zero, $zero
/* E7190 80130DD0 02008821 */  addu       $s1, $s0, $zero
.Lrace_80130DD4:
/* E7194 80130DD4 02602821 */  addu       $a1, $s3, $zero
/* E7198 80130DD8 02803021 */  addu       $a2, $s4, $zero
/* E719C 80130DDC 8E440004 */  lw         $a0, 0x4($s2)
/* E71A0 80130DE0 26100001 */  addiu      $s0, $s0, 0x1
/* E71A4 80130DE4 0C04C79C */  jal        func_race_80131E70
/* E71A8 80130DE8 00912021 */   addu      $a0, $a0, $s1
/* E71AC 80130DEC 8E420000 */  lw         $v0, 0x0($s2)
/* E71B0 80130DF0 0202102B */  sltu       $v0, $s0, $v0
/* E71B4 80130DF4 1440FFF7 */  bnez       $v0, .Lrace_80130DD4
/* E71B8 80130DF8 2631000C */   addiu     $s1, $s1, 0xC
.Lrace_80130DFC:
/* E71BC 80130DFC 02602021 */  addu       $a0, $s3, $zero
/* E71C0 80130E00 0C0026F4 */  jal        func_80009BD0
/* E71C4 80130E04 24050006 */   addiu     $a1, $zero, 0x6
/* E71C8 80130E08 8FBF0024 */  lw         $ra, 0x24($sp)
/* E71CC 80130E0C 8FB40020 */  lw         $s4, 0x20($sp)
/* E71D0 80130E10 8FB3001C */  lw         $s3, 0x1C($sp)
/* E71D4 80130E14 8FB20018 */  lw         $s2, 0x18($sp)
/* E71D8 80130E18 8FB10014 */  lw         $s1, 0x14($sp)
/* E71DC 80130E1C 8FB00010 */  lw         $s0, 0x10($sp)
/* E71E0 80130E20 03E00008 */  jr         $ra
/* E71E4 80130E24 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80130E28
/* E71E8 80130E28 3C028013 */  lui        $v0, %hi(D_race_801324D0)
/* E71EC 80130E2C 03E00008 */  jr         $ra
/* E71F0 80130E30 AC4424D0 */   sw        $a0, %lo(D_race_801324D0)($v0)

glabel func_race_80130E34
/* E71F4 80130E34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E71F8 80130E38 AFBF0010 */  sw         $ra, 0x10($sp)
/* E71FC 80130E3C 0C002513 */  jal        func_8000944C
/* E7200 80130E40 00000000 */   nop
/* E7204 80130E44 8FBF0010 */  lw         $ra, 0x10($sp)
/* E7208 80130E48 03E00008 */  jr         $ra
/* E720C 80130E4C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80130E50
/* E7210 80130E50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E7214 80130E54 AFB00010 */  sw         $s0, 0x10($sp)
/* E7218 80130E58 AFBF0014 */  sw         $ra, 0x14($sp)
/* E721C 80130E5C 0C04C3AF */  jal        func_race_80130EBC
/* E7220 80130E60 00808021 */   addu      $s0, $a0, $zero
/* E7224 80130E64 02001021 */  addu       $v0, $s0, $zero
/* E7228 80130E68 8FBF0014 */  lw         $ra, 0x14($sp)
/* E722C 80130E6C 8FB00010 */  lw         $s0, 0x10($sp)
/* E7230 80130E70 03E00008 */  jr         $ra
/* E7234 80130E74 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80130E78
/* E7238 80130E78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E723C 80130E7C AFB10014 */  sw         $s1, 0x14($sp)
/* E7240 80130E80 00808821 */  addu       $s1, $a0, $zero
/* E7244 80130E84 AFB00010 */  sw         $s0, 0x10($sp)
/* E7248 80130E88 AFBF0018 */  sw         $ra, 0x18($sp)
/* E724C 80130E8C 0C04C3CF */  jal        func_race_80130F3C
/* E7250 80130E90 00A08021 */   addu      $s0, $a1, $zero
/* E7254 80130E94 32100001 */  andi       $s0, $s0, 0x1
/* E7258 80130E98 12000003 */  beqz       $s0, .Lrace_80130EA8
/* E725C 80130E9C 00000000 */   nop
/* E7260 80130EA0 0C01FB5C */  jal        func_8007ED70
/* E7264 80130EA4 02202021 */   addu      $a0, $s1, $zero
.Lrace_80130EA8:
/* E7268 80130EA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* E726C 80130EAC 8FB10014 */  lw         $s1, 0x14($sp)
/* E7270 80130EB0 8FB00010 */  lw         $s0, 0x10($sp)
/* E7274 80130EB4 03E00008 */  jr         $ra
/* E7278 80130EB8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80130EBC
/* E727C 80130EBC 3C01800D */  lui        $at, %hi(D_race_800CF360)
/* E7280 80130EC0 C420F360 */  lwc1       $f0, %lo(D_race_800CF360)($at)
/* E7284 80130EC4 2402FFFF */  addiu      $v0, $zero, -0x1
/* E7288 80130EC8 AC800000 */  sw         $zero, 0x0($a0)
/* E728C 80130ECC AC800004 */  sw         $zero, 0x4($a0)
/* E7290 80130ED0 AC800008 */  sw         $zero, 0x8($a0)
/* E7294 80130ED4 AC80000C */  sw         $zero, 0xC($a0)
/* E7298 80130ED8 AC800010 */  sw         $zero, 0x10($a0)
/* E729C 80130EDC AC800014 */  sw         $zero, 0x14($a0)
/* E72A0 80130EE0 AC80001C */  sw         $zero, 0x1C($a0)
/* E72A4 80130EE4 AC800028 */  sw         $zero, 0x28($a0)
/* E72A8 80130EE8 AC800030 */  sw         $zero, 0x30($a0)
/* E72AC 80130EEC AC820034 */  sw         $v0, 0x34($a0)
/* E72B0 80130EF0 AC800038 */  sw         $zero, 0x38($a0)
/* E72B4 80130EF4 AC80003C */  sw         $zero, 0x3C($a0)
/* E72B8 80130EF8 AC800040 */  sw         $zero, 0x40($a0)
/* E72BC 80130EFC AC800044 */  sw         $zero, 0x44($a0)
/* E72C0 80130F00 AC800048 */  sw         $zero, 0x48($a0)
/* E72C4 80130F04 AC80004C */  sw         $zero, 0x4C($a0)
/* E72C8 80130F08 AC800050 */  sw         $zero, 0x50($a0)
/* E72CC 80130F0C AC800054 */  sw         $zero, 0x54($a0)
/* E72D0 80130F10 AC800058 */  sw         $zero, 0x58($a0)
/* E72D4 80130F14 AC80005C */  sw         $zero, 0x5C($a0)
/* E72D8 80130F18 AC800064 */  sw         $zero, 0x64($a0)
/* E72DC 80130F1C AC800068 */  sw         $zero, 0x68($a0)
/* E72E0 80130F20 AC80006C */  sw         $zero, 0x6C($a0)
/* E72E4 80130F24 AC800074 */  sw         $zero, 0x74($a0)
/* E72E8 80130F28 E4800018 */  swc1       $f0, 0x18($a0)
/* E72EC 80130F2C E480002C */  swc1       $f0, 0x2C($a0)
/* E72F0 80130F30 E4800060 */  swc1       $f0, 0x60($a0)
/* E72F4 80130F34 03E00008 */  jr         $ra
/* E72F8 80130F38 E4800070 */   swc1      $f0, 0x70($a0)

glabel func_race_80130F3C
/* E72FC 80130F3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E7300 80130F40 AFBF0010 */  sw         $ra, 0x10($sp)
/* E7304 80130F44 0C04C3AF */  jal        func_race_80130EBC
/* E7308 80130F48 00000000 */   nop
/* E730C 80130F4C 8FBF0010 */  lw         $ra, 0x10($sp)
/* E7310 80130F50 03E00008 */  jr         $ra
/* E7314 80130F54 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80130F58
/* E7318 80130F58 2402FFFF */  addiu      $v0, $zero, -0x1
/* E731C 80130F5C AC850028 */  sw         $a1, 0x28($a0)
/* E7320 80130F60 AC800030 */  sw         $zero, 0x30($a0)
/* E7324 80130F64 AC820034 */  sw         $v0, 0x34($a0)
/* E7328 80130F68 AC800038 */  sw         $zero, 0x38($a0)
/* E732C 80130F6C 03E00008 */  jr         $ra
/* E7330 80130F70 AC800074 */   sw        $zero, 0x74($a0)

glabel func_race_80130F74
/* E7334 80130F74 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E7338 80130F78 AFB00020 */  sw         $s0, 0x20($sp)
/* E733C 80130F7C 00808021 */  addu       $s0, $a0, $zero
/* E7340 80130F80 AFBF002C */  sw         $ra, 0x2C($sp)
/* E7344 80130F84 AFB20028 */  sw         $s2, 0x28($sp)
/* E7348 80130F88 AFB10024 */  sw         $s1, 0x24($sp)
/* E734C 80130F8C AE050028 */  sw         $a1, 0x28($s0)
/* E7350 80130F90 8CA60024 */  lw         $a2, 0x24($a1)
/* E7354 80130F94 8CA70028 */  lw         $a3, 0x28($a1)
/* E7358 80130F98 8CA8002C */  lw         $t0, 0x2C($a1)
/* E735C 80130F9C AE06003C */  sw         $a2, 0x3C($s0)
/* E7360 80130FA0 AE070040 */  sw         $a3, 0x40($s0)
/* E7364 80130FA4 AE080044 */  sw         $t0, 0x44($s0)
/* E7368 80130FA8 8E06003C */  lw         $a2, 0x3C($s0)
/* E736C 80130FAC 8E070040 */  lw         $a3, 0x40($s0)
/* E7370 80130FB0 8E080044 */  lw         $t0, 0x44($s0)
/* E7374 80130FB4 AE060000 */  sw         $a2, 0x0($s0)
/* E7378 80130FB8 AE070004 */  sw         $a3, 0x4($s0)
/* E737C 80130FBC AE080008 */  sw         $t0, 0x8($s0)
/* E7380 80130FC0 8E020028 */  lw         $v0, 0x28($s0)
/* E7384 80130FC4 8C460030 */  lw         $a2, 0x30($v0)
/* E7388 80130FC8 8C470034 */  lw         $a3, 0x34($v0)
/* E738C 80130FCC 8C480038 */  lw         $t0, 0x38($v0)
/* E7390 80130FD0 8C49003C */  lw         $t1, 0x3C($v0)
/* E7394 80130FD4 AE060054 */  sw         $a2, 0x54($s0)
/* E7398 80130FD8 AE070058 */  sw         $a3, 0x58($s0)
/* E739C 80130FDC AE08005C */  sw         $t0, 0x5C($s0)
/* E73A0 80130FE0 AE090060 */  sw         $t1, 0x60($s0)
/* E73A4 80130FE4 8E060054 */  lw         $a2, 0x54($s0)
/* E73A8 80130FE8 8E070058 */  lw         $a3, 0x58($s0)
/* E73AC 80130FEC 8E08005C */  lw         $t0, 0x5C($s0)
/* E73B0 80130FF0 8E090060 */  lw         $t1, 0x60($s0)
/* E73B4 80130FF4 AE06000C */  sw         $a2, 0xC($s0)
/* E73B8 80130FF8 AE070010 */  sw         $a3, 0x10($s0)
/* E73BC 80130FFC AE080014 */  sw         $t0, 0x14($s0)
/* E73C0 80131000 AE090018 */  sw         $t1, 0x18($s0)
/* E73C4 80131004 8E020028 */  lw         $v0, 0x28($s0)
/* E73C8 80131008 8C420040 */  lw         $v0, 0x40($v0)
/* E73CC 8013100C 8E030028 */  lw         $v1, 0x28($s0)
/* E73D0 80131010 44820000 */  mtc1       $v0, $f0
/* E73D4 80131014 46800020 */  cvt.s.w    $f0, $f0
/* E73D8 80131018 AE020074 */  sw         $v0, 0x74($s0)
/* E73DC 8013101C E6000030 */  swc1       $f0, 0x30($s0)
/* E73E0 80131020 8C620044 */  lw         $v0, 0x44($v1)
/* E73E4 80131024 2612003C */  addiu      $s2, $s0, 0x3C
/* E73E8 80131028 AE020034 */  sw         $v0, 0x34($s0)
/* E73EC 8013102C 00402021 */  addu       $a0, $v0, $zero
/* E73F0 80131030 24420001 */  addiu      $v0, $v0, 0x1
/* E73F4 80131034 AE020038 */  sw         $v0, 0x38($s0)
/* E73F8 80131038 00041040 */  sll        $v0, $a0, 1
/* E73FC 8013103C 00441021 */  addu       $v0, $v0, $a0
/* E7400 80131040 8C710004 */  lw         $s1, 0x4($v1)
/* E7404 80131044 00021080 */  sll        $v0, $v0, 2
/* E7408 80131048 02228821 */  addu       $s1, $s1, $v0
/* E740C 8013104C 0C04C7D6 */  jal        func_race_80131F58
/* E7410 80131050 02202021 */   addu      $a0, $s1, $zero
/* E7414 80131054 02202021 */  addu       $a0, $s1, $zero
/* E7418 80131058 0C04C80C */  jal        func_race_80132030
/* E741C 8013105C AE02001C */   sw        $v0, 0x1C($s0)
/* E7420 80131060 02202021 */  addu       $a0, $s1, $zero
/* E7424 80131064 0C04C814 */  jal        func_race_80132050
/* E7428 80131068 E6000020 */   swc1      $f0, 0x20($s0)
/* E742C 8013106C 8E030038 */  lw         $v1, 0x38($s0)
/* E7430 80131070 8E020028 */  lw         $v0, 0x28($s0)
/* E7434 80131074 27A50010 */  addiu      $a1, $sp, 0x10
/* E7438 80131078 E6000024 */  swc1       $f0, 0x24($s0)
/* E743C 8013107C 00032040 */  sll        $a0, $v1, 1
/* E7440 80131080 00832021 */  addu       $a0, $a0, $v1
/* E7444 80131084 8C420004 */  lw         $v0, 0x4($v0)
/* E7448 80131088 00042080 */  sll        $a0, $a0, 2
/* E744C 8013108C 0C04C7E1 */  jal        func_race_80131F84
/* E7450 80131090 00442021 */   addu      $a0, $v0, $a0
/* E7454 80131094 C600003C */  lwc1       $f0, 0x3C($s0)
/* E7458 80131098 C7A20010 */  lwc1       $f2, 0x10($sp)
/* E745C 8013109C 46020000 */  add.s      $f0, $f0, $f2
/* E7460 801310A0 27A20010 */  addiu      $v0, $sp, 0x10
/* E7464 801310A4 E6000048 */  swc1       $f0, 0x48($s0)
/* E7468 801310A8 C6400004 */  lwc1       $f0, 0x4($s2)
/* E746C 801310AC C4420004 */  lwc1       $f2, 0x4($v0)
/* E7470 801310B0 46020000 */  add.s      $f0, $f0, $f2
/* E7474 801310B4 26100048 */  addiu      $s0, $s0, 0x48
/* E7478 801310B8 E6000004 */  swc1       $f0, 0x4($s0)
/* E747C 801310BC C6400008 */  lwc1       $f0, 0x8($s2)
/* E7480 801310C0 C4420008 */  lwc1       $f2, 0x8($v0)
/* E7484 801310C4 46020000 */  add.s      $f0, $f0, $f2
/* E7488 801310C8 E6000008 */  swc1       $f0, 0x8($s0)
/* E748C 801310CC 8FBF002C */  lw         $ra, 0x2C($sp)
/* E7490 801310D0 8FB20028 */  lw         $s2, 0x28($sp)
/* E7494 801310D4 8FB10024 */  lw         $s1, 0x24($sp)
/* E7498 801310D8 8FB00020 */  lw         $s0, 0x20($sp)
/* E749C 801310DC 03E00008 */  jr         $ra
/* E74A0 801310E0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_801310E4
/* E74A4 801310E4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* E74A8 801310E8 AFB20038 */  sw         $s2, 0x38($sp)
/* E74AC 801310EC 00809021 */  addu       $s2, $a0, $zero
/* E74B0 801310F0 AFBF004C */  sw         $ra, 0x4C($sp)
/* E74B4 801310F4 AFB60048 */  sw         $s6, 0x48($sp)
/* E74B8 801310F8 AFB50044 */  sw         $s5, 0x44($sp)
/* E74BC 801310FC AFB40040 */  sw         $s4, 0x40($sp)
/* E74C0 80131100 AFB3003C */  sw         $s3, 0x3C($sp)
/* E74C4 80131104 AFB10034 */  sw         $s1, 0x34($sp)
/* E74C8 80131108 AFB00030 */  sw         $s0, 0x30($sp)
/* E74CC 8013110C F7BA0068 */  sdc1       $f26, 0x68($sp)
/* E74D0 80131110 F7B80060 */  sdc1       $f24, 0x60($sp)
/* E74D4 80131114 F7B60058 */  sdc1       $f22, 0x58($sp)
/* E74D8 80131118 F7B40050 */  sdc1       $f20, 0x50($sp)
/* E74DC 8013111C 8E420028 */  lw         $v0, 0x28($s2)
/* E74E0 80131120 44851000 */  mtc1       $a1, $f2
/* E74E4 80131124 10400149 */  beqz       $v0, .Lrace_8013164C
/* E74E8 80131128 00000000 */   nop
/* E74EC 8013112C C640002C */  lwc1       $f0, 0x2C($s2)
/* E74F0 80131130 46001002 */  mul.s      $f0, $f2, $f0
/* E74F4 80131134 C6420030 */  lwc1       $f2, 0x30($s2)
/* E74F8 80131138 46001080 */  add.s      $f2, $f2, $f0
/* E74FC 8013113C 8E440034 */  lw         $a0, 0x34($s2)
/* E7500 80131140 4600128D */  trunc.w.s  $f10, $f2
/* E7504 80131144 44145000 */  mfc1       $s4, $f10
/* E7508 80131148 04810032 */  bgez       $a0, .Lrace_80131214
/* E750C 8013114C E6420030 */   swc1      $f2, 0x30($s2)
/* E7510 80131150 8C490008 */  lw         $t1, 0x8($v0)
/* E7514 80131154 8C4A000C */  lw         $t2, 0xC($v0)
/* E7518 80131158 8C4B0010 */  lw         $t3, 0x10($v0)
/* E751C 8013115C AE49003C */  sw         $t1, 0x3C($s2)
/* E7520 80131160 AE4A0040 */  sw         $t2, 0x40($s2)
/* E7524 80131164 AE4B0044 */  sw         $t3, 0x44($s2)
/* E7528 80131168 8E420028 */  lw         $v0, 0x28($s2)
/* E752C 8013116C 27A50010 */  addiu      $a1, $sp, 0x10
/* E7530 80131170 8C490014 */  lw         $t1, 0x14($v0)
/* E7534 80131174 8C4A0018 */  lw         $t2, 0x18($v0)
/* E7538 80131178 8C4B001C */  lw         $t3, 0x1C($v0)
/* E753C 8013117C 8C480020 */  lw         $t0, 0x20($v0)
/* E7540 80131180 AE490054 */  sw         $t1, 0x54($s2)
/* E7544 80131184 AE4A0058 */  sw         $t2, 0x58($s2)
/* E7548 80131188 AE4B005C */  sw         $t3, 0x5C($s2)
/* E754C 8013118C AE480060 */  sw         $t0, 0x60($s2)
/* E7550 80131190 8E440038 */  lw         $a0, 0x38($s2)
/* E7554 80131194 8E430028 */  lw         $v1, 0x28($s2)
/* E7558 80131198 2650003C */  addiu      $s0, $s2, 0x3C
/* E755C 8013119C AE400074 */  sw         $zero, 0x74($s2)
/* E7560 801311A0 00041040 */  sll        $v0, $a0, 1
/* E7564 801311A4 00441021 */  addu       $v0, $v0, $a0
/* E7568 801311A8 8C630004 */  lw         $v1, 0x4($v1)
/* E756C 801311AC 00021080 */  sll        $v0, $v0, 2
/* E7570 801311B0 00628821 */  addu       $s1, $v1, $v0
/* E7574 801311B4 0C04C7E1 */  jal        func_race_80131F84
/* E7578 801311B8 02202021 */   addu      $a0, $s1, $zero
/* E757C 801311BC C640003C */  lwc1       $f0, 0x3C($s2)
/* E7580 801311C0 C7A20010 */  lwc1       $f2, 0x10($sp)
/* E7584 801311C4 46020000 */  add.s      $f0, $f0, $f2
/* E7588 801311C8 27A20010 */  addiu      $v0, $sp, 0x10
/* E758C 801311CC E6400048 */  swc1       $f0, 0x48($s2)
/* E7590 801311D0 C6020004 */  lwc1       $f2, 0x4($s0)
/* E7594 801311D4 C4400004 */  lwc1       $f0, 0x4($v0)
/* E7598 801311D8 46001080 */  add.s      $f2, $f2, $f0
/* E759C 801311DC 26430048 */  addiu      $v1, $s2, 0x48
/* E75A0 801311E0 02202021 */  addu       $a0, $s1, $zero
/* E75A4 801311E4 E4620004 */  swc1       $f2, 0x4($v1)
/* E75A8 801311E8 C6000008 */  lwc1       $f0, 0x8($s0)
/* E75AC 801311EC C4420008 */  lwc1       $f2, 0x8($v0)
/* E75B0 801311F0 4480C000 */  mtc1       $zero, $f24
/* E75B4 801311F4 46020000 */  add.s      $f0, $f0, $f2
/* E75B8 801311F8 26450064 */  addiu      $a1, $s2, 0x64
/* E75BC 801311FC 4600C686 */  mov.s      $f26, $f24
/* E75C0 80131200 0C04C7F5 */  jal        func_race_80131FD4
/* E75C4 80131204 E4600008 */   swc1      $f0, 0x8($v1)
/* E75C8 80131208 24020004 */  addiu      $v0, $zero, 0x4
/* E75CC 8013120C 0804C498 */  j          .Lrace_80131260
/* E75D0 80131210 AE42001C */   sw        $v0, 0x1C($s2)
.Lrace_80131214:
/* E75D4 80131214 00041040 */  sll        $v0, $a0, 1
/* E75D8 80131218 8E430028 */  lw         $v1, 0x28($s2)
/* E75DC 8013121C 00441021 */  addu       $v0, $v0, $a0
/* E75E0 80131220 8C630004 */  lw         $v1, 0x4($v1)
/* E75E4 80131224 00021080 */  sll        $v0, $v0, 2
/* E75E8 80131228 00628821 */  addu       $s1, $v1, $v0
/* E75EC 8013122C 0C04C814 */  jal        func_race_80132050
/* E75F0 80131230 02202021 */   addu      $a0, $s1, $zero
/* E75F4 80131234 46000606 */  mov.s      $f24, $f0
/* E75F8 80131238 0C04C80C */  jal        func_race_80132030
/* E75FC 8013123C 02202021 */   addu      $a0, $s1, $zero
/* E7600 80131240 46000686 */  mov.s      $f26, $f0
/* E7604 80131244 8E440038 */  lw         $a0, 0x38($s2)
/* E7608 80131248 8E430028 */  lw         $v1, 0x28($s2)
/* E760C 8013124C 00041040 */  sll        $v0, $a0, 1
/* E7610 80131250 00441021 */  addu       $v0, $v0, $a0
/* E7614 80131254 8C630004 */  lw         $v1, 0x4($v1)
/* E7618 80131258 00021080 */  sll        $v0, $v0, 2
/* E761C 8013125C 00628821 */  addu       $s1, $v1, $v0
.Lrace_80131260:
/* E7620 80131260 0C04C814 */  jal        func_race_80132050
/* E7624 80131264 02202021 */   addu      $a0, $s1, $zero
/* E7628 80131268 46000586 */  mov.s      $f22, $f0
/* E762C 8013126C 0C04C80C */  jal        func_race_80132030
/* E7630 80131270 02202021 */   addu      $a0, $s1, $zero
/* E7634 80131274 46000506 */  mov.s      $f20, $f0
/* E7638 80131278 0C04C7DD */  jal        func_race_80131F74
/* E763C 8013127C 02202021 */   addu      $a0, $s1, $zero
/* E7640 80131280 8E430074 */  lw         $v1, 0x74($s2)
/* E7644 80131284 00629821 */  addu       $s3, $v1, $v0
/* E7648 80131288 0283182A */  slt        $v1, $s4, $v1
/* E764C 8013128C 1060004F */  beqz       $v1, .Lrace_801313CC
/* E7650 80131290 2650003C */   addiu     $s0, $s2, 0x3C
/* E7654 80131294 27B50010 */  addiu      $s5, $sp, 0x10
.Lrace_80131298:
/* E7658 80131298 8E420034 */  lw         $v0, 0x34($s2)
/* E765C 8013129C 10400048 */  beqz       $v0, .Lrace_801313C0
/* E7660 801312A0 27A50010 */   addiu     $a1, $sp, 0x10
/* E7664 801312A4 8E530074 */  lw         $s3, 0x74($s2)
/* E7668 801312A8 AE420038 */  sw         $v0, 0x38($s2)
/* E766C 801312AC 8E49003C */  lw         $t1, 0x3C($s2)
/* E7670 801312B0 8E4A0040 */  lw         $t2, 0x40($s2)
/* E7674 801312B4 8E4B0044 */  lw         $t3, 0x44($s2)
/* E7678 801312B8 AE490048 */  sw         $t1, 0x48($s2)
/* E767C 801312BC AE4A004C */  sw         $t2, 0x4C($s2)
/* E7680 801312C0 AE4B0050 */  sw         $t3, 0x50($s2)
/* E7684 801312C4 8E490054 */  lw         $t1, 0x54($s2)
/* E7688 801312C8 8E4A0058 */  lw         $t2, 0x58($s2)
/* E768C 801312CC 8E4B005C */  lw         $t3, 0x5C($s2)
/* E7690 801312D0 8E480060 */  lw         $t0, 0x60($s2)
/* E7694 801312D4 AE490064 */  sw         $t1, 0x64($s2)
/* E7698 801312D8 AE4A0068 */  sw         $t2, 0x68($s2)
/* E769C 801312DC AE4B006C */  sw         $t3, 0x6C($s2)
/* E76A0 801312E0 AE480070 */  sw         $t0, 0x70($s2)
/* E76A4 801312E4 8E440034 */  lw         $a0, 0x34($s2)
/* E76A8 801312E8 8E430028 */  lw         $v1, 0x28($s2)
/* E76AC 801312EC 00041040 */  sll        $v0, $a0, 1
/* E76B0 801312F0 00441021 */  addu       $v0, $v0, $a0
/* E76B4 801312F4 8C630004 */  lw         $v1, 0x4($v1)
/* E76B8 801312F8 00021080 */  sll        $v0, $v0, 2
/* E76BC 801312FC 00628821 */  addu       $s1, $v1, $v0
/* E76C0 80131300 0C04C7E1 */  jal        func_race_80131F84
/* E76C4 80131304 02202021 */   addu      $a0, $s1, $zero
/* E76C8 80131308 C640003C */  lwc1       $f0, 0x3C($s2)
/* E76CC 8013130C C7A20010 */  lwc1       $f2, 0x10($sp)
/* E76D0 80131310 46020001 */  sub.s      $f0, $f0, $f2
/* E76D4 80131314 E640003C */  swc1       $f0, 0x3C($s2)
/* E76D8 80131318 C6000004 */  lwc1       $f0, 0x4($s0)
/* E76DC 8013131C C6A20004 */  lwc1       $f2, 0x4($s5)
/* E76E0 80131320 46020001 */  sub.s      $f0, $f0, $f2
/* E76E4 80131324 E6000004 */  swc1       $f0, 0x4($s0)
/* E76E8 80131328 C6000008 */  lwc1       $f0, 0x8($s0)
/* E76EC 8013132C C6A20008 */  lwc1       $f2, 0x8($s5)
/* E76F0 80131330 4600C586 */  mov.s      $f22, $f24
/* E76F4 80131334 46020001 */  sub.s      $f0, $f0, $f2
/* E76F8 80131338 4600D506 */  mov.s      $f20, $f26
/* E76FC 8013133C 02202021 */  addu       $a0, $s1, $zero
/* E7700 80131340 0C04C7DD */  jal        func_race_80131F74
/* E7704 80131344 E6000008 */   swc1      $f0, 0x8($s0)
/* E7708 80131348 8E430074 */  lw         $v1, 0x74($s2)
/* E770C 8013134C 8E440034 */  lw         $a0, 0x34($s2)
/* E7710 80131350 00621823 */  subu       $v1, $v1, $v0
/* E7714 80131354 2484FFFF */  addiu      $a0, $a0, -0x1
/* E7718 80131358 00041040 */  sll        $v0, $a0, 1
/* E771C 8013135C AE430074 */  sw         $v1, 0x74($s2)
/* E7720 80131360 8E430028 */  lw         $v1, 0x28($s2)
/* E7724 80131364 00441021 */  addu       $v0, $v0, $a0
/* E7728 80131368 AE440034 */  sw         $a0, 0x34($s2)
/* E772C 8013136C 8C630004 */  lw         $v1, 0x4($v1)
/* E7730 80131370 00021080 */  sll        $v0, $v0, 2
/* E7734 80131374 00628821 */  addu       $s1, $v1, $v0
/* E7738 80131378 0C04C7D6 */  jal        func_race_80131F58
/* E773C 8013137C 02202021 */   addu      $a0, $s1, $zero
/* E7740 80131380 02202021 */  addu       $a0, $s1, $zero
/* E7744 80131384 0C04C814 */  jal        func_race_80132050
/* E7748 80131388 AE42001C */   sw        $v0, 0x1C($s2)
/* E774C 8013138C 46000606 */  mov.s      $f24, $f0
/* E7750 80131390 0C04C80C */  jal        func_race_80132030
/* E7754 80131394 02202021 */   addu      $a0, $s1, $zero
/* E7758 80131398 46000686 */  mov.s      $f26, $f0
/* E775C 8013139C 02202021 */  addu       $a0, $s1, $zero
/* E7760 801313A0 0C04C7F5 */  jal        func_race_80131FD4
/* E7764 801313A4 26450054 */   addiu     $a1, $s2, 0x54
/* E7768 801313A8 8E420074 */  lw         $v0, 0x74($s2)
/* E776C 801313AC 0282102A */  slt        $v0, $s4, $v0
/* E7770 801313B0 10400071 */  beqz       $v0, .Lrace_80131578
/* E7774 801313B4 00000000 */   nop
/* E7778 801313B8 0804C4A6 */  j          .Lrace_80131298
/* E777C 801313BC 00000000 */   nop
.Lrace_801313C0:
/* E7780 801313C0 0000A021 */  addu       $s4, $zero, $zero
/* E7784 801313C4 0804C55E */  j          .Lrace_80131578
/* E7788 801313C8 AE400030 */   sw        $zero, 0x30($s2)
.Lrace_801313CC:
/* E778C 801313CC 26500048 */  addiu      $s0, $s2, 0x48
/* E7790 801313D0 26560064 */  addiu      $s6, $s2, 0x64
/* E7794 801313D4 27B50010 */  addiu      $s5, $sp, 0x10
.Lrace_801313D8:
/* E7798 801313D8 0293102A */  slt        $v0, $s4, $s3
/* E779C 801313DC 14400066 */  bnez       $v0, .Lrace_80131578
/* E77A0 801313E0 00000000 */   nop
/* E77A4 801313E4 4600B606 */  mov.s      $f24, $f22
/* E77A8 801313E8 8E420038 */  lw         $v0, 0x38($s2)
/* E77AC 801313EC AE530074 */  sw         $s3, 0x74($s2)
/* E77B0 801313F0 AE420034 */  sw         $v0, 0x34($s2)
/* E77B4 801313F4 8E490048 */  lw         $t1, 0x48($s2)
/* E77B8 801313F8 8E4A004C */  lw         $t2, 0x4C($s2)
/* E77BC 801313FC 8E4B0050 */  lw         $t3, 0x50($s2)
/* E77C0 80131400 AE49003C */  sw         $t1, 0x3C($s2)
/* E77C4 80131404 AE4A0040 */  sw         $t2, 0x40($s2)
/* E77C8 80131408 AE4B0044 */  sw         $t3, 0x44($s2)
/* E77CC 8013140C 8E490064 */  lw         $t1, 0x64($s2)
/* E77D0 80131410 8E4A0068 */  lw         $t2, 0x68($s2)
/* E77D4 80131414 8E4B006C */  lw         $t3, 0x6C($s2)
/* E77D8 80131418 8E480070 */  lw         $t0, 0x70($s2)
/* E77DC 8013141C AE490054 */  sw         $t1, 0x54($s2)
/* E77E0 80131420 AE4A0058 */  sw         $t2, 0x58($s2)
/* E77E4 80131424 AE4B005C */  sw         $t3, 0x5C($s2)
/* E77E8 80131428 AE480060 */  sw         $t0, 0x60($s2)
/* E77EC 8013142C 8E430028 */  lw         $v1, 0x28($s2)
/* E77F0 80131430 8E420038 */  lw         $v0, 0x38($s2)
/* E77F4 80131434 8C630000 */  lw         $v1, 0x0($v1)
/* E77F8 80131438 24420001 */  addiu      $v0, $v0, 0x1
/* E77FC 8013143C AE420038 */  sw         $v0, 0x38($s2)
/* E7800 80131440 0043102A */  slt        $v0, $v0, $v1
/* E7804 80131444 38420001 */  xori       $v0, $v0, 0x1
/* E7808 80131448 10400025 */  beqz       $v0, .Lrace_801314E0
/* E780C 8013144C 4600A686 */   mov.s     $f26, $f20
/* E7810 80131450 8E420028 */  lw         $v0, 0x28($s2)
/* E7814 80131454 8C490024 */  lw         $t1, 0x24($v0)
/* E7818 80131458 8C4A0028 */  lw         $t2, 0x28($v0)
/* E781C 8013145C 8C4B002C */  lw         $t3, 0x2C($v0)
/* E7820 80131460 AE49003C */  sw         $t1, 0x3C($s2)
/* E7824 80131464 AE4A0040 */  sw         $t2, 0x40($s2)
/* E7828 80131468 AE4B0044 */  sw         $t3, 0x44($s2)
/* E782C 8013146C 8E49003C */  lw         $t1, 0x3C($s2)
/* E7830 80131470 8E4A0040 */  lw         $t2, 0x40($s2)
/* E7834 80131474 8E4B0044 */  lw         $t3, 0x44($s2)
/* E7838 80131478 AE490048 */  sw         $t1, 0x48($s2)
/* E783C 8013147C AE4A004C */  sw         $t2, 0x4C($s2)
/* E7840 80131480 AE4B0050 */  sw         $t3, 0x50($s2)
/* E7844 80131484 8E420028 */  lw         $v0, 0x28($s2)
/* E7848 80131488 8C490030 */  lw         $t1, 0x30($v0)
/* E784C 8013148C 8C4A0034 */  lw         $t2, 0x34($v0)
/* E7850 80131490 8C4B0038 */  lw         $t3, 0x38($v0)
/* E7854 80131494 8C48003C */  lw         $t0, 0x3C($v0)
/* E7858 80131498 AE490054 */  sw         $t1, 0x54($s2)
/* E785C 8013149C AE4A0058 */  sw         $t2, 0x58($s2)
/* E7860 801314A0 AE4B005C */  sw         $t3, 0x5C($s2)
/* E7864 801314A4 AE480060 */  sw         $t0, 0x60($s2)
/* E7868 801314A8 8E420028 */  lw         $v0, 0x28($s2)
/* E786C 801314AC 8E430028 */  lw         $v1, 0x28($s2)
/* E7870 801314B0 8C420040 */  lw         $v0, 0x40($v0)
/* E7874 801314B4 AE420074 */  sw         $v0, 0x74($s2)
/* E7878 801314B8 00541021 */  addu       $v0, $v0, $s4
/* E787C 801314BC 0053A023 */  subu       $s4, $v0, $s3
/* E7880 801314C0 8C630044 */  lw         $v1, 0x44($v1)
/* E7884 801314C4 44940000 */  mtc1       $s4, $f0
/* E7888 801314C8 46800020 */  cvt.s.w    $f0, $f0
/* E788C 801314CC E6400030 */  swc1       $f0, 0x30($s2)
/* E7890 801314D0 AE430034 */  sw         $v1, 0x34($s2)
/* E7894 801314D4 00601021 */  addu       $v0, $v1, $zero
/* E7898 801314D8 24420001 */  addiu      $v0, $v0, 0x1
/* E789C 801314DC AE420038 */  sw         $v0, 0x38($s2)
.Lrace_801314E0:
/* E78A0 801314E0 8E430038 */  lw         $v1, 0x38($s2)
/* E78A4 801314E4 8E440028 */  lw         $a0, 0x28($s2)
/* E78A8 801314E8 00031040 */  sll        $v0, $v1, 1
/* E78AC 801314EC 00431021 */  addu       $v0, $v0, $v1
/* E78B0 801314F0 8C830004 */  lw         $v1, 0x4($a0)
/* E78B4 801314F4 00021080 */  sll        $v0, $v0, 2
/* E78B8 801314F8 00628821 */  addu       $s1, $v1, $v0
/* E78BC 801314FC 0C04C7D6 */  jal        func_race_80131F58
/* E78C0 80131500 02202021 */   addu      $a0, $s1, $zero
/* E78C4 80131504 02202021 */  addu       $a0, $s1, $zero
/* E78C8 80131508 0C04C814 */  jal        func_race_80132050
/* E78CC 8013150C AE42001C */   sw        $v0, 0x1C($s2)
/* E78D0 80131510 46000586 */  mov.s      $f22, $f0
/* E78D4 80131514 0C04C80C */  jal        func_race_80132030
/* E78D8 80131518 02202021 */   addu      $a0, $s1, $zero
/* E78DC 8013151C 46000506 */  mov.s      $f20, $f0
/* E78E0 80131520 02202021 */  addu       $a0, $s1, $zero
/* E78E4 80131524 0C04C7E1 */  jal        func_race_80131F84
/* E78E8 80131528 27A50010 */   addiu     $a1, $sp, 0x10
/* E78EC 8013152C 02202021 */  addu       $a0, $s1, $zero
/* E78F0 80131530 0C04C7F5 */  jal        func_race_80131FD4
/* E78F4 80131534 02C02821 */   addu      $a1, $s6, $zero
/* E78F8 80131538 C6400048 */  lwc1       $f0, 0x48($s2)
/* E78FC 8013153C C7A20010 */  lwc1       $f2, 0x10($sp)
/* E7900 80131540 46020000 */  add.s      $f0, $f0, $f2
/* E7904 80131544 E6400048 */  swc1       $f0, 0x48($s2)
/* E7908 80131548 C6000004 */  lwc1       $f0, 0x4($s0)
/* E790C 8013154C C6A20004 */  lwc1       $f2, 0x4($s5)
/* E7910 80131550 46020000 */  add.s      $f0, $f0, $f2
/* E7914 80131554 C6020008 */  lwc1       $f2, 0x8($s0)
/* E7918 80131558 E6000004 */  swc1       $f0, 0x4($s0)
/* E791C 8013155C C6A00008 */  lwc1       $f0, 0x8($s5)
/* E7920 80131560 46001080 */  add.s      $f2, $f2, $f0
/* E7924 80131564 02202021 */  addu       $a0, $s1, $zero
/* E7928 80131568 0C04C7DD */  jal        func_race_80131F74
/* E792C 8013156C E6020008 */   swc1      $f2, 0x8($s0)
/* E7930 80131570 0804C4F6 */  j          .Lrace_801313D8
/* E7934 80131574 02629821 */   addu      $s3, $s3, $v0
.Lrace_80131578:
/* E7938 80131578 8E420074 */  lw         $v0, 0x74($s2)
/* E793C 8013157C 461AA101 */  sub.s      $f4, $f20, $f26
/* E7940 80131580 02621823 */  subu       $v1, $s3, $v0
/* E7944 80131584 02821023 */  subu       $v0, $s4, $v0
/* E7948 80131588 44824000 */  mtc1       $v0, $f8
/* E794C 8013158C 46804220 */  cvt.s.w    $f8, $f8
/* E7950 80131590 44830000 */  mtc1       $v1, $f0
/* E7954 80131594 46800020 */  cvt.s.w    $f0, $f0
/* E7958 80131598 46004203 */  div.s      $f8, $f8, $f0
/* E795C 8013159C 46082102 */  mul.s      $f4, $f4, $f8
/* E7960 801315A0 4618B081 */  sub.s      $f2, $f22, $f24
/* E7964 801315A4 46081082 */  mul.s      $f2, $f2, $f8
/* E7968 801315A8 461A2100 */  add.s      $f4, $f4, $f26
/* E796C 801315AC C6460048 */  lwc1       $f6, 0x48($s2)
/* E7970 801315B0 46181080 */  add.s      $f2, $f2, $f24
/* E7974 801315B4 C640003C */  lwc1       $f0, 0x3C($s2)
/* E7978 801315B8 26440048 */  addiu      $a0, $s2, 0x48
/* E797C 801315BC 46003181 */  sub.s      $f6, $f6, $f0
/* E7980 801315C0 E6440020 */  swc1       $f4, 0x20($s2)
/* E7984 801315C4 E6420024 */  swc1       $f2, 0x24($s2)
/* E7988 801315C8 E7A60010 */  swc1       $f6, 0x10($sp)
/* E798C 801315CC 46083182 */  mul.s      $f6, $f6, $f8
/* E7990 801315D0 2642003C */  addiu      $v0, $s2, 0x3C
/* E7994 801315D4 C4800004 */  lwc1       $f0, 0x4($a0)
/* E7998 801315D8 C4420004 */  lwc1       $f2, 0x4($v0)
/* E799C 801315DC 46020001 */  sub.s      $f0, $f0, $f2
/* E79A0 801315E0 27A30010 */  addiu      $v1, $sp, 0x10
/* E79A4 801315E4 46080102 */  mul.s      $f4, $f0, $f8
/* E79A8 801315E8 E4600004 */  swc1       $f0, 0x4($v1)
/* E79AC 801315EC C4800008 */  lwc1       $f0, 0x8($a0)
/* E79B0 801315F0 C4420008 */  lwc1       $f2, 0x8($v0)
/* E79B4 801315F4 46020001 */  sub.s      $f0, $f0, $f2
/* E79B8 801315F8 46080082 */  mul.s      $f2, $f0, $f8
/* E79BC 801315FC E4600008 */  swc1       $f0, 0x8($v1)
/* E79C0 80131600 E7A60020 */  swc1       $f6, 0x20($sp)
/* E79C4 80131604 E7A40024 */  swc1       $f4, 0x24($sp)
/* E79C8 80131608 E7A20028 */  swc1       $f2, 0x28($sp)
/* E79CC 8013160C C640003C */  lwc1       $f0, 0x3C($s2)
/* E79D0 80131610 46060000 */  add.s      $f0, $f0, $f6
/* E79D4 80131614 E6400000 */  swc1       $f0, 0x0($s2)
/* E79D8 80131618 C4400004 */  lwc1       $f0, 0x4($v0)
/* E79DC 8013161C C7A20024 */  lwc1       $f2, 0x24($sp)
/* E79E0 80131620 46020000 */  add.s      $f0, $f0, $f2
/* E79E4 80131624 26450064 */  addiu      $a1, $s2, 0x64
/* E79E8 80131628 E6400004 */  swc1       $f0, 0x4($s2)
/* E79EC 8013162C C4420008 */  lwc1       $f2, 0x8($v0)
/* E79F0 80131630 C7A00028 */  lwc1       $f0, 0x28($sp)
/* E79F4 80131634 2647000C */  addiu      $a3, $s2, 0xC
/* E79F8 80131638 46001080 */  add.s      $f2, $f2, $f0
/* E79FC 8013163C 44064000 */  mfc1       $a2, $f8
/* E7A00 80131640 26440054 */  addiu      $a0, $s2, 0x54
/* E7A04 80131644 0C0012B8 */  jal        func_80004AE0
/* E7A08 80131648 E6420008 */   swc1      $f2, 0x8($s2)
.Lrace_8013164C:
/* E7A0C 8013164C 8FBF004C */  lw         $ra, 0x4C($sp)
/* E7A10 80131650 8FB60048 */  lw         $s6, 0x48($sp)
/* E7A14 80131654 8FB50044 */  lw         $s5, 0x44($sp)
/* E7A18 80131658 8FB40040 */  lw         $s4, 0x40($sp)
/* E7A1C 8013165C 8FB3003C */  lw         $s3, 0x3C($sp)
/* E7A20 80131660 8FB20038 */  lw         $s2, 0x38($sp)
/* E7A24 80131664 8FB10034 */  lw         $s1, 0x34($sp)
/* E7A28 80131668 8FB00030 */  lw         $s0, 0x30($sp)
/* E7A2C 8013166C D7BA0068 */  ldc1       $f26, 0x68($sp)
/* E7A30 80131670 D7B80060 */  ldc1       $f24, 0x60($sp)
/* E7A34 80131674 D7B60058 */  ldc1       $f22, 0x58($sp)
/* E7A38 80131678 D7B40050 */  ldc1       $f20, 0x50($sp)
/* E7A3C 8013167C 03E00008 */  jr         $ra
/* E7A40 80131680 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_80131684
/* E7A44 80131684 27BDFF50 */  addiu      $sp, $sp, -0xB0
/* E7A48 80131688 AFB70084 */  sw         $s7, 0x84($sp)
/* E7A4C 8013168C 0080B821 */  addu       $s7, $a0, $zero
/* E7A50 80131690 AFB40078 */  sw         $s4, 0x78($sp)
/* E7A54 80131694 00A0A021 */  addu       $s4, $a1, $zero
/* E7A58 80131698 AFB30074 */  sw         $s3, 0x74($sp)
/* E7A5C 8013169C 27B30010 */  addiu      $s3, $sp, 0x10
/* E7A60 801316A0 AFBF008C */  sw         $ra, 0x8C($sp)
/* E7A64 801316A4 AFBE0088 */  sw         $fp, 0x88($sp)
/* E7A68 801316A8 AFB60080 */  sw         $s6, 0x80($sp)
/* E7A6C 801316AC AFB5007C */  sw         $s5, 0x7C($sp)
/* E7A70 801316B0 AFB20070 */  sw         $s2, 0x70($sp)
/* E7A74 801316B4 AFB1006C */  sw         $s1, 0x6C($sp)
/* E7A78 801316B8 AFB00068 */  sw         $s0, 0x68($sp)
/* E7A7C 801316BC F7BA00A8 */  sdc1       $f26, 0xA8($sp)
/* E7A80 801316C0 F7B800A0 */  sdc1       $f24, 0xA0($sp)
/* E7A84 801316C4 F7B60098 */  sdc1       $f22, 0x98($sp)
/* E7A88 801316C8 F7B40090 */  sdc1       $f20, 0x90($sp)
/* E7A8C 801316CC 8EF60034 */  lw         $s6, 0x34($s7)
/* E7A90 801316D0 8EF10038 */  lw         $s1, 0x38($s7)
/* E7A94 801316D4 8EF50074 */  lw         $s5, 0x74($s7)
/* E7A98 801316D8 3C01800D */  lui        $at, %hi(D_race_800CF364)
/* E7A9C 801316DC C434F364 */  lwc1       $f20, %lo(D_race_800CF364)($at)
/* E7AA0 801316E0 8EE30028 */  lw         $v1, 0x28($s7)
/* E7AA4 801316E4 00111040 */  sll        $v0, $s1, 1
/* E7AA8 801316E8 00511021 */  addu       $v0, $v0, $s1
/* E7AAC 801316EC 00021080 */  sll        $v0, $v0, 2
/* E7AB0 801316F0 8C630004 */  lw         $v1, 0x4($v1)
/* E7AB4 801316F4 00408021 */  addu       $s0, $v0, $zero
/* E7AB8 801316F8 00709021 */  addu       $s2, $v1, $s0
/* E7ABC 801316FC 0C04C7DD */  jal        func_race_80131F74
/* E7AC0 80131700 02402021 */   addu      $a0, $s2, $zero
/* E7AC4 80131704 02A2F021 */  addu       $fp, $s5, $v0
/* E7AC8 80131708 8EE6003C */  lw         $a2, 0x3C($s7)
/* E7ACC 8013170C 8EE70040 */  lw         $a3, 0x40($s7)
/* E7AD0 80131710 8EE80044 */  lw         $t0, 0x44($s7)
/* E7AD4 80131714 AFA60010 */  sw         $a2, 0x10($sp)
/* E7AD8 80131718 AFA70014 */  sw         $a3, 0x14($sp)
/* E7ADC 8013171C AFA80018 */  sw         $t0, 0x18($sp)
/* E7AE0 80131720 8EE60048 */  lw         $a2, 0x48($s7)
/* E7AE4 80131724 8EE7004C */  lw         $a3, 0x4C($s7)
/* E7AE8 80131728 8EE80050 */  lw         $t0, 0x50($s7)
/* E7AEC 8013172C AFA60020 */  sw         $a2, 0x20($sp)
/* E7AF0 80131730 AFA70024 */  sw         $a3, 0x24($sp)
/* E7AF4 80131734 AFA80028 */  sw         $t0, 0x28($sp)
.Lrace_80131738:
/* E7AF8 80131738 C7A40010 */  lwc1       $f4, 0x10($sp)
/* E7AFC 8013173C C7A00020 */  lwc1       $f0, 0x20($sp)
/* E7B00 80131740 46002101 */  sub.s      $f4, $f4, $f0
/* E7B04 80131744 46042102 */  mul.s      $f4, $f4, $f4
/* E7B08 80131748 C6660004 */  lwc1       $f6, 0x4($s3)
/* E7B0C 8013174C C7A00024 */  lwc1       $f0, 0x24($sp)
/* E7B10 80131750 46003181 */  sub.s      $f6, $f6, $f0
/* E7B14 80131754 46063182 */  mul.s      $f6, $f6, $f6
/* E7B18 80131758 C7A20028 */  lwc1       $f2, 0x28($sp)
/* E7B1C 8013175C C6600008 */  lwc1       $f0, 0x8($s3)
/* E7B20 80131760 46020001 */  sub.s      $f0, $f0, $f2
/* E7B24 80131764 46000002 */  mul.s      $f0, $f0, $f0
/* E7B28 80131768 46062100 */  add.s      $f4, $f4, $f6
/* E7B2C 8013176C 46002100 */  add.s      $f4, $f4, $f0
/* E7B30 80131770 4614203C */  c.lt.s     $f4, $f20
/* E7B34 80131774 00000000 */  nop
/* E7B38 80131778 45000025 */  bc1f       .Lrace_80131810
/* E7B3C 8013177C 00000000 */   nop
/* E7B40 80131780 0220B021 */  addu       $s6, $s1, $zero
/* E7B44 80131784 03C0A821 */  addu       $s5, $fp, $zero
/* E7B48 80131788 8FA60020 */  lw         $a2, 0x20($sp)
/* E7B4C 8013178C 8FA70024 */  lw         $a3, 0x24($sp)
/* E7B50 80131790 8FA80028 */  lw         $t0, 0x28($sp)
/* E7B54 80131794 AFA60010 */  sw         $a2, 0x10($sp)
/* E7B58 80131798 AFA70014 */  sw         $a3, 0x14($sp)
/* E7B5C 8013179C AFA80018 */  sw         $t0, 0x18($sp)
/* E7B60 801317A0 8EE30028 */  lw         $v1, 0x28($s7)
/* E7B64 801317A4 8C620000 */  lw         $v0, 0x0($v1)
/* E7B68 801317A8 26310001 */  addiu      $s1, $s1, 0x1
/* E7B6C 801317AC 0222102A */  slt        $v0, $s1, $v0
/* E7B70 801317B0 38420001 */  xori       $v0, $v0, 0x1
/* E7B74 801317B4 1440019D */  bnez       $v0, .Lrace_80131E2C
/* E7B78 801317B8 2610000C */   addiu     $s0, $s0, 0xC
/* E7B7C 801317BC 8C620004 */  lw         $v0, 0x4($v1)
/* E7B80 801317C0 27A50030 */  addiu      $a1, $sp, 0x30
/* E7B84 801317C4 00509021 */  addu       $s2, $v0, $s0
/* E7B88 801317C8 0C04C7E1 */  jal        func_race_80131F84
/* E7B8C 801317CC 02402021 */   addu      $a0, $s2, $zero
/* E7B90 801317D0 0C04C7DD */  jal        func_race_80131F74
/* E7B94 801317D4 02402021 */   addu      $a0, $s2, $zero
/* E7B98 801317D8 C7A60020 */  lwc1       $f6, 0x20($sp)
/* E7B9C 801317DC C7A00030 */  lwc1       $f0, 0x30($sp)
/* E7BA0 801317E0 C7A40024 */  lwc1       $f4, 0x24($sp)
/* E7BA4 801317E4 46003180 */  add.s      $f6, $f6, $f0
/* E7BA8 801317E8 C7A00034 */  lwc1       $f0, 0x34($sp)
/* E7BAC 801317EC C7A20038 */  lwc1       $f2, 0x38($sp)
/* E7BB0 801317F0 46002100 */  add.s      $f4, $f4, $f0
/* E7BB4 801317F4 C7A00028 */  lwc1       $f0, 0x28($sp)
/* E7BB8 801317F8 02A2F021 */  addu       $fp, $s5, $v0
/* E7BBC 801317FC 46020000 */  add.s      $f0, $f0, $f2
/* E7BC0 80131800 E7A60020 */  swc1       $f6, 0x20($sp)
/* E7BC4 80131804 E7A40024 */  swc1       $f4, 0x24($sp)
/* E7BC8 80131808 0804C5CE */  j          .Lrace_80131738
/* E7BCC 8013180C E7A00028 */   swc1      $f0, 0x28($sp)
.Lrace_80131810:
/* E7BD0 80131810 C7A00020 */  lwc1       $f0, 0x20($sp)
/* E7BD4 80131814 C7A20010 */  lwc1       $f2, 0x10($sp)
/* E7BD8 80131818 8EE20028 */  lw         $v0, 0x28($s7)
/* E7BDC 8013181C 46020001 */  sub.s      $f0, $f0, $f2
/* E7BE0 80131820 8C430004 */  lw         $v1, 0x4($v0)
/* E7BE4 80131824 46000102 */  mul.s      $f4, $f0, $f0
/* E7BE8 80131828 E7A00040 */  swc1       $f0, 0x40($sp)
/* E7BEC 8013182C C7A00024 */  lwc1       $f0, 0x24($sp)
/* E7BF0 80131830 C6620004 */  lwc1       $f2, 0x4($s3)
/* E7BF4 80131834 46020001 */  sub.s      $f0, $f0, $f2
/* E7BF8 80131838 C7A20028 */  lwc1       $f2, 0x28($sp)
/* E7BFC 8013183C 46000182 */  mul.s      $f6, $f0, $f0
/* E7C00 80131840 E7A00044 */  swc1       $f0, 0x44($sp)
/* E7C04 80131844 C6600008 */  lwc1       $f0, 0x8($s3)
/* E7C08 80131848 46001081 */  sub.s      $f2, $f2, $f0
/* E7C0C 8013184C 46021002 */  mul.s      $f0, $f2, $f2
/* E7C10 80131850 00161040 */  sll        $v0, $s6, 1
/* E7C14 80131854 00561021 */  addu       $v0, $v0, $s6
/* E7C18 80131858 46062100 */  add.s      $f4, $f4, $f6
/* E7C1C 8013185C 00021080 */  sll        $v0, $v0, 2
/* E7C20 80131860 00621821 */  addu       $v1, $v1, $v0
/* E7C24 80131864 46002300 */  add.s      $f12, $f4, $f0
/* E7C28 80131868 AFA30060 */  sw         $v1, 0x60($sp)
/* E7C2C 8013186C 46006004 */  sqrt.s     $f0, $f12
/* E7C30 80131870 46000032 */  c.eq.s     $f0, $f0
/* E7C34 80131874 00000000 */  nop
/* E7C38 80131878 45010003 */  bc1t       .Lrace_80131888
/* E7C3C 8013187C E7A20048 */   swc1      $f2, 0x48($sp)
/* E7C40 80131880 0C006BC8 */  jal        sqrt
/* E7C44 80131884 00000000 */   nop
.Lrace_80131888:
/* E7C48 80131888 46000606 */  mov.s      $f24, $f0
/* E7C4C 8013188C 3C01800D */  lui        $at, %hi(D_race_800CF368)
/* E7C50 80131890 C420F368 */  lwc1       $f0, %lo(D_race_800CF368)($at)
/* E7C54 80131894 C7A20040 */  lwc1       $f2, 0x40($sp)
/* E7C58 80131898 46180583 */  div.s      $f22, $f0, $f24
/* E7C5C 8013189C 46161082 */  mul.s      $f2, $f2, $f22
/* E7C60 801318A0 C7A60048 */  lwc1       $f6, 0x48($sp)
/* E7C64 801318A4 46163182 */  mul.s      $f6, $f6, $f22
/* E7C68 801318A8 C7A00044 */  lwc1       $f0, 0x44($sp)
/* E7C6C 801318AC 46160002 */  mul.s      $f0, $f0, $f22
/* E7C70 801318B0 E7A20040 */  swc1       $f2, 0x40($sp)
/* E7C74 801318B4 E7A60048 */  swc1       $f6, 0x48($sp)
/* E7C78 801318B8 E7A00044 */  swc1       $f0, 0x44($sp)
/* E7C7C 801318BC C6840000 */  lwc1       $f4, 0x0($s4)
/* E7C80 801318C0 46022102 */  mul.s      $f4, $f4, $f2
/* E7C84 801318C4 C6820004 */  lwc1       $f2, 0x4($s4)
/* E7C88 801318C8 46001082 */  mul.s      $f2, $f2, $f0
/* E7C8C 801318CC C6800008 */  lwc1       $f0, 0x8($s4)
/* E7C90 801318D0 46060002 */  mul.s      $f0, $f0, $f6
/* E7C94 801318D4 46022100 */  add.s      $f4, $f4, $f2
/* E7C98 801318D8 46002500 */  add.s      $f20, $f4, $f0
/* E7C9C 801318DC 44800000 */  mtc1       $zero, $f0
/* E7CA0 801318E0 4600A03C */  c.lt.s     $f20, $f0
/* E7CA4 801318E4 00000000 */  nop
/* E7CA8 801318E8 45000098 */  bc1f       .Lrace_80131B4C
/* E7CAC 801318EC 00000000 */   nop
/* E7CB0 801318F0 C6E20000 */  lwc1       $f2, 0x0($s7)
/* E7CB4 801318F4 C7A00010 */  lwc1       $f0, 0x10($sp)
/* E7CB8 801318F8 46001081 */  sub.s      $f2, $f2, $f0
/* E7CBC 801318FC 46021082 */  mul.s      $f2, $f2, $f2
/* E7CC0 80131900 C6E60004 */  lwc1       $f6, 0x4($s7)
/* E7CC4 80131904 C6600004 */  lwc1       $f0, 0x4($s3)
/* E7CC8 80131908 46003181 */  sub.s      $f6, $f6, $f0
/* E7CCC 8013190C 46063182 */  mul.s      $f6, $f6, $f6
/* E7CD0 80131910 C6640008 */  lwc1       $f4, 0x8($s3)
/* E7CD4 80131914 C6E00008 */  lwc1       $f0, 0x8($s7)
/* E7CD8 80131918 46040001 */  sub.s      $f0, $f0, $f4
/* E7CDC 8013191C 46000002 */  mul.s      $f0, $f0, $f0
/* E7CE0 80131920 46061080 */  add.s      $f2, $f2, $f6
/* E7CE4 80131924 46001300 */  add.s      $f12, $f2, $f0
/* E7CE8 80131928 46006004 */  sqrt.s     $f0, $f12
/* E7CEC 8013192C 46000032 */  c.eq.s     $f0, $f0
/* E7CF0 80131930 00000000 */  nop
/* E7CF4 80131934 45010003 */  bc1t       .Lrace_80131944
/* E7CF8 80131938 4600A507 */   neg.s     $f20, $f20
/* E7CFC 8013193C 0C006BC8 */  jal        sqrt
/* E7D00 80131940 00000000 */   nop
.Lrace_80131944:
/* E7D04 80131944 46000206 */  mov.s      $f8, $f0
/* E7D08 80131948 27B00010 */  addiu      $s0, $sp, 0x10
/* E7D0C 8013194C 3C01800D */  lui        $at, %hi(D_race_800CF36C)
/* E7D10 80131950 C438F36C */  lwc1       $f24, %lo(D_race_800CF36C)($at)
.Lrace_80131954:
/* E7D14 80131954 4614403C */  c.lt.s     $f8, $f20
/* E7D18 80131958 00000000 */  nop
/* E7D1C 8013195C 45020112 */  bc1fl      .Lrace_80131DA8
/* E7D20 80131960 46144501 */   sub.s     $f20, $f8, $f20
/* E7D24 80131964 C7A60040 */  lwc1       $f6, 0x40($sp)
/* E7D28 80131968 46004087 */  neg.s      $f2, $f8
/* E7D2C 8013196C 46023182 */  mul.s      $f6, $f6, $f2
/* E7D30 80131970 C7A40044 */  lwc1       $f4, 0x44($sp)
/* E7D34 80131974 46022102 */  mul.s      $f4, $f4, $f2
/* E7D38 80131978 C7A00048 */  lwc1       $f0, 0x48($sp)
/* E7D3C 8013197C 46020002 */  mul.s      $f0, $f0, $f2
/* E7D40 80131980 E7A60050 */  swc1       $f6, 0x50($sp)
/* E7D44 80131984 E7A40054 */  swc1       $f4, 0x54($sp)
/* E7D48 80131988 E7A00058 */  swc1       $f0, 0x58($sp)
/* E7D4C 8013198C C6800000 */  lwc1       $f0, 0x0($s4)
/* E7D50 80131990 46060001 */  sub.s      $f0, $f0, $f6
/* E7D54 80131994 E6800000 */  swc1       $f0, 0x0($s4)
/* E7D58 80131998 C6800004 */  lwc1       $f0, 0x4($s4)
/* E7D5C 8013199C C7A20054 */  lwc1       $f2, 0x54($sp)
/* E7D60 801319A0 46020001 */  sub.s      $f0, $f0, $f2
/* E7D64 801319A4 E6800004 */  swc1       $f0, 0x4($s4)
/* E7D68 801319A8 C6800008 */  lwc1       $f0, 0x8($s4)
/* E7D6C 801319AC C7A20058 */  lwc1       $f2, 0x58($sp)
/* E7D70 801319B0 46020001 */  sub.s      $f0, $f0, $f2
/* E7D74 801319B4 E6800008 */  swc1       $f0, 0x8($s4)
.Lrace_801319B8:
/* E7D78 801319B8 02C08821 */  addu       $s1, $s6, $zero
/* E7D7C 801319BC 2636FFFF */  addiu      $s6, $s1, -0x1
/* E7D80 801319C0 8FA60010 */  lw         $a2, 0x10($sp)
/* E7D84 801319C4 8FA70014 */  lw         $a3, 0x14($sp)
/* E7D88 801319C8 8FA80018 */  lw         $t0, 0x18($sp)
/* E7D8C 801319CC AFA60020 */  sw         $a2, 0x20($sp)
/* E7D90 801319D0 AFA70024 */  sw         $a3, 0x24($sp)
/* E7D94 801319D4 AFA80028 */  sw         $t0, 0x28($sp)
/* E7D98 801319D8 8FB20060 */  lw         $s2, 0x60($sp)
/* E7D9C 801319DC 06C00113 */  bltz       $s6, .Lrace_80131E2C
/* E7DA0 801319E0 02A0F021 */   addu      $fp, $s5, $zero
/* E7DA4 801319E4 0C04C7DD */  jal        func_race_80131F74
/* E7DA8 801319E8 02402021 */   addu      $a0, $s2, $zero
/* E7DAC 801319EC 02A2A823 */  subu       $s5, $s5, $v0
/* E7DB0 801319F0 02402021 */  addu       $a0, $s2, $zero
/* E7DB4 801319F4 0C04C7E1 */  jal        func_race_80131F84
/* E7DB8 801319F8 27A50030 */   addiu     $a1, $sp, 0x30
/* E7DBC 801319FC C7A40010 */  lwc1       $f4, 0x10($sp)
/* E7DC0 80131A00 8EE20028 */  lw         $v0, 0x28($s7)
/* E7DC4 80131A04 C7A00030 */  lwc1       $f0, 0x30($sp)
/* E7DC8 80131A08 8C430004 */  lw         $v1, 0x4($v0)
/* E7DCC 80131A0C 46002101 */  sub.s      $f4, $f4, $f0
/* E7DD0 80131A10 C7A00034 */  lwc1       $f0, 0x34($sp)
/* E7DD4 80131A14 E7A40010 */  swc1       $f4, 0x10($sp)
/* E7DD8 80131A18 C6060004 */  lwc1       $f6, 0x4($s0)
/* E7DDC 80131A1C 46003181 */  sub.s      $f6, $f6, $f0
/* E7DE0 80131A20 C6020008 */  lwc1       $f2, 0x8($s0)
/* E7DE4 80131A24 E6060004 */  swc1       $f6, 0x4($s0)
/* E7DE8 80131A28 C7A00038 */  lwc1       $f0, 0x38($sp)
/* E7DEC 80131A2C 46001081 */  sub.s      $f2, $f2, $f0
/* E7DF0 80131A30 E6020008 */  swc1       $f2, 0x8($s0)
/* E7DF4 80131A34 C7A80020 */  lwc1       $f8, 0x20($sp)
/* E7DF8 80131A38 46082101 */  sub.s      $f4, $f4, $f8
/* E7DFC 80131A3C 46042102 */  mul.s      $f4, $f4, $f4
/* E7E00 80131A40 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* E7E04 80131A44 460A3181 */  sub.s      $f6, $f6, $f10
/* E7E08 80131A48 46063182 */  mul.s      $f6, $f6, $f6
/* E7E0C 80131A4C C7AC0028 */  lwc1       $f12, 0x28($sp)
/* E7E10 80131A50 460C1081 */  sub.s      $f2, $f2, $f12
/* E7E14 80131A54 46021082 */  mul.s      $f2, $f2, $f2
/* E7E18 80131A58 00161040 */  sll        $v0, $s6, 1
/* E7E1C 80131A5C 46062100 */  add.s      $f4, $f4, $f6
/* E7E20 80131A60 00561021 */  addu       $v0, $v0, $s6
/* E7E24 80131A64 00021080 */  sll        $v0, $v0, 2
/* E7E28 80131A68 46022100 */  add.s      $f4, $f4, $f2
/* E7E2C 80131A6C 00621821 */  addu       $v1, $v1, $v0
/* E7E30 80131A70 4618203C */  c.lt.s     $f4, $f24
/* E7E34 80131A74 00000000 */  nop
/* E7E38 80131A78 4501FFCF */  bc1t       .Lrace_801319B8
/* E7E3C 80131A7C AFA30060 */   sw        $v1, 0x60($sp)
/* E7E40 80131A80 C7A00010 */  lwc1       $f0, 0x10($sp)
/* E7E44 80131A84 46004001 */  sub.s      $f0, $f8, $f0
/* E7E48 80131A88 46000102 */  mul.s      $f4, $f0, $f0
/* E7E4C 80131A8C E7A00040 */  swc1       $f0, 0x40($sp)
/* E7E50 80131A90 C6000004 */  lwc1       $f0, 0x4($s0)
/* E7E54 80131A94 46005001 */  sub.s      $f0, $f10, $f0
/* E7E58 80131A98 46000182 */  mul.s      $f6, $f0, $f0
/* E7E5C 80131A9C E7A00044 */  swc1       $f0, 0x44($sp)
/* E7E60 80131AA0 C6000008 */  lwc1       $f0, 0x8($s0)
/* E7E64 80131AA4 46006001 */  sub.s      $f0, $f12, $f0
/* E7E68 80131AA8 46000082 */  mul.s      $f2, $f0, $f0
/* E7E6C 80131AAC 46062100 */  add.s      $f4, $f4, $f6
/* E7E70 80131AB0 46022300 */  add.s      $f12, $f4, $f2
/* E7E74 80131AB4 E7A00048 */  swc1       $f0, 0x48($sp)
/* E7E78 80131AB8 46006004 */  sqrt.s     $f0, $f12
/* E7E7C 80131ABC 46000032 */  c.eq.s     $f0, $f0
/* E7E80 80131AC0 00000000 */  nop
/* E7E84 80131AC4 45010004 */  bc1t       .Lrace_80131AD8
/* E7E88 80131AC8 46000206 */   mov.s     $f8, $f0
/* E7E8C 80131ACC 0C006BC8 */  jal        sqrt
/* E7E90 80131AD0 00000000 */   nop
/* E7E94 80131AD4 46000206 */  mov.s      $f8, $f0
.Lrace_80131AD8:
/* E7E98 80131AD8 3C01800D */  lui        $at, %hi(D_race_800CF370)
/* E7E9C 80131ADC C420F370 */  lwc1       $f0, %lo(D_race_800CF370)($at)
/* E7EA0 80131AE0 C7A20040 */  lwc1       $f2, 0x40($sp)
/* E7EA4 80131AE4 46080583 */  div.s      $f22, $f0, $f8
/* E7EA8 80131AE8 46161082 */  mul.s      $f2, $f2, $f22
/* E7EAC 80131AEC C7A60048 */  lwc1       $f6, 0x48($sp)
/* E7EB0 80131AF0 46163182 */  mul.s      $f6, $f6, $f22
/* E7EB4 80131AF4 C7A00044 */  lwc1       $f0, 0x44($sp)
/* E7EB8 80131AF8 46160002 */  mul.s      $f0, $f0, $f22
/* E7EBC 80131AFC E7A20040 */  swc1       $f2, 0x40($sp)
/* E7EC0 80131B00 E7A60048 */  swc1       $f6, 0x48($sp)
/* E7EC4 80131B04 E7A00044 */  swc1       $f0, 0x44($sp)
/* E7EC8 80131B08 C6840000 */  lwc1       $f4, 0x0($s4)
/* E7ECC 80131B0C 46022102 */  mul.s      $f4, $f4, $f2
/* E7ED0 80131B10 C6820004 */  lwc1       $f2, 0x4($s4)
/* E7ED4 80131B14 46001082 */  mul.s      $f2, $f2, $f0
/* E7ED8 80131B18 C6800008 */  lwc1       $f0, 0x8($s4)
/* E7EDC 80131B1C 46060002 */  mul.s      $f0, $f0, $f6
/* E7EE0 80131B20 46022100 */  add.s      $f4, $f4, $f2
/* E7EE4 80131B24 46002500 */  add.s      $f20, $f4, $f0
/* E7EE8 80131B28 44800000 */  mtc1       $zero, $f0
/* E7EEC 80131B2C 4614003C */  c.lt.s     $f0, $f20
/* E7EF0 80131B30 00000000 */  nop
/* E7EF4 80131B34 45030003 */  bc1tl      .Lrace_80131B44
/* E7EF8 80131B38 46000506 */   mov.s     $f20, $f0
/* E7EFC 80131B3C 0804C655 */  j          .Lrace_80131954
/* E7F00 80131B40 4600A507 */   neg.s     $f20, $f20
.Lrace_80131B44:
/* E7F04 80131B44 0804C76A */  j          .Lrace_80131DA8
/* E7F08 80131B48 46144501 */   sub.s     $f20, $f8, $f20
.Lrace_80131B4C:
/* E7F0C 80131B4C C6E20000 */  lwc1       $f2, 0x0($s7)
/* E7F10 80131B50 C7A00020 */  lwc1       $f0, 0x20($sp)
/* E7F14 80131B54 46001081 */  sub.s      $f2, $f2, $f0
/* E7F18 80131B58 46021082 */  mul.s      $f2, $f2, $f2
/* E7F1C 80131B5C C6E60004 */  lwc1       $f6, 0x4($s7)
/* E7F20 80131B60 C7A00024 */  lwc1       $f0, 0x24($sp)
/* E7F24 80131B64 46003181 */  sub.s      $f6, $f6, $f0
/* E7F28 80131B68 46063182 */  mul.s      $f6, $f6, $f6
/* E7F2C 80131B6C C7A40028 */  lwc1       $f4, 0x28($sp)
/* E7F30 80131B70 C6E00008 */  lwc1       $f0, 0x8($s7)
/* E7F34 80131B74 46040001 */  sub.s      $f0, $f0, $f4
/* E7F38 80131B78 46000002 */  mul.s      $f0, $f0, $f0
/* E7F3C 80131B7C 46061080 */  add.s      $f2, $f2, $f6
/* E7F40 80131B80 46001300 */  add.s      $f12, $f2, $f0
/* E7F44 80131B84 46006004 */  sqrt.s     $f0, $f12
/* E7F48 80131B88 46000032 */  c.eq.s     $f0, $f0
/* E7F4C 80131B8C 00000000 */  nop
/* E7F50 80131B90 45010004 */  bc1t       .Lrace_80131BA4
/* E7F54 80131B94 46000206 */   mov.s     $f8, $f0
/* E7F58 80131B98 0C006BC8 */  jal        sqrt
/* E7F5C 80131B9C 00000000 */   nop
/* E7F60 80131BA0 46000206 */  mov.s      $f8, $f0
.Lrace_80131BA4:
/* E7F64 80131BA4 27B30010 */  addiu      $s3, $sp, 0x10
/* E7F68 80131BA8 3C01800D */  lui        $at, %hi(D_race_800CF374)
/* E7F6C 80131BAC C43AF374 */  lwc1       $f26, %lo(D_race_800CF374)($at)
.Lrace_80131BB0:
/* E7F70 80131BB0 4614403C */  c.lt.s     $f8, $f20
/* E7F74 80131BB4 00000000 */  nop
/* E7F78 80131BB8 45000079 */  bc1f       .Lrace_80131DA0
/* E7F7C 80131BBC 00111040 */   sll       $v0, $s1, 1
/* E7F80 80131BC0 C7A40040 */  lwc1       $f4, 0x40($sp)
/* E7F84 80131BC4 46082102 */  mul.s      $f4, $f4, $f8
/* E7F88 80131BC8 C7A20044 */  lwc1       $f2, 0x44($sp)
/* E7F8C 80131BCC 46081082 */  mul.s      $f2, $f2, $f8
/* E7F90 80131BD0 C7A00048 */  lwc1       $f0, 0x48($sp)
/* E7F94 80131BD4 46080002 */  mul.s      $f0, $f0, $f8
/* E7F98 80131BD8 E7A40050 */  swc1       $f4, 0x50($sp)
/* E7F9C 80131BDC E7A20054 */  swc1       $f2, 0x54($sp)
/* E7FA0 80131BE0 E7A00058 */  swc1       $f0, 0x58($sp)
/* E7FA4 80131BE4 C6800000 */  lwc1       $f0, 0x0($s4)
/* E7FA8 80131BE8 46040001 */  sub.s      $f0, $f0, $f4
/* E7FAC 80131BEC E6800000 */  swc1       $f0, 0x0($s4)
/* E7FB0 80131BF0 C6800004 */  lwc1       $f0, 0x4($s4)
/* E7FB4 80131BF4 C7A20054 */  lwc1       $f2, 0x54($sp)
/* E7FB8 80131BF8 46020001 */  sub.s      $f0, $f0, $f2
/* E7FBC 80131BFC E6800004 */  swc1       $f0, 0x4($s4)
/* E7FC0 80131C00 C6800008 */  lwc1       $f0, 0x8($s4)
/* E7FC4 80131C04 C7A20058 */  lwc1       $f2, 0x58($sp)
/* E7FC8 80131C08 46020001 */  sub.s      $f0, $f0, $f2
/* E7FCC 80131C0C 00511021 */  addu       $v0, $v0, $s1
/* E7FD0 80131C10 00028080 */  sll        $s0, $v0, 2
/* E7FD4 80131C14 E6800008 */  swc1       $f0, 0x8($s4)
/* E7FD8 80131C18 0220B021 */  addu       $s6, $s1, $zero
.Lrace_80131C1C:
/* E7FDC 80131C1C 03C0A821 */  addu       $s5, $fp, $zero
/* E7FE0 80131C20 AFB20060 */  sw         $s2, 0x60($sp)
/* E7FE4 80131C24 8FA60020 */  lw         $a2, 0x20($sp)
/* E7FE8 80131C28 8FA70024 */  lw         $a3, 0x24($sp)
/* E7FEC 80131C2C 8FA80028 */  lw         $t0, 0x28($sp)
/* E7FF0 80131C30 AFA60010 */  sw         $a2, 0x10($sp)
/* E7FF4 80131C34 AFA70014 */  sw         $a3, 0x14($sp)
/* E7FF8 80131C38 AFA80018 */  sw         $t0, 0x18($sp)
/* E7FFC 80131C3C 8EE30028 */  lw         $v1, 0x28($s7)
/* E8000 80131C40 8C620000 */  lw         $v0, 0x0($v1)
/* E8004 80131C44 26310001 */  addiu      $s1, $s1, 0x1
/* E8008 80131C48 0222102A */  slt        $v0, $s1, $v0
/* E800C 80131C4C 38420001 */  xori       $v0, $v0, 0x1
/* E8010 80131C50 14400076 */  bnez       $v0, .Lrace_80131E2C
/* E8014 80131C54 2610000C */   addiu     $s0, $s0, 0xC
/* E8018 80131C58 8C620004 */  lw         $v0, 0x4($v1)
/* E801C 80131C5C 00509021 */  addu       $s2, $v0, $s0
/* E8020 80131C60 0C04C7DD */  jal        func_race_80131F74
/* E8024 80131C64 02402021 */   addu      $a0, $s2, $zero
/* E8028 80131C68 02A2F021 */  addu       $fp, $s5, $v0
/* E802C 80131C6C 02402021 */  addu       $a0, $s2, $zero
/* E8030 80131C70 0C04C7E1 */  jal        func_race_80131F84
/* E8034 80131C74 27A50030 */   addiu     $a1, $sp, 0x30
/* E8038 80131C78 C7A20020 */  lwc1       $f2, 0x20($sp)
/* E803C 80131C7C C7A00030 */  lwc1       $f0, 0x30($sp)
/* E8040 80131C80 C7A40024 */  lwc1       $f4, 0x24($sp)
/* E8044 80131C84 46001180 */  add.s      $f6, $f2, $f0
/* E8048 80131C88 C7A00034 */  lwc1       $f0, 0x34($sp)
/* E804C 80131C8C C7A20028 */  lwc1       $f2, 0x28($sp)
/* E8050 80131C90 46002280 */  add.s      $f10, $f4, $f0
/* E8054 80131C94 C7A00038 */  lwc1       $f0, 0x38($sp)
/* E8058 80131C98 46001300 */  add.s      $f12, $f2, $f0
/* E805C 80131C9C C7A80010 */  lwc1       $f8, 0x10($sp)
/* E8060 80131CA0 46064101 */  sub.s      $f4, $f8, $f6
/* E8064 80131CA4 E7A60020 */  swc1       $f6, 0x20($sp)
/* E8068 80131CA8 46042102 */  mul.s      $f4, $f4, $f4
/* E806C 80131CAC E7AA0024 */  swc1       $f10, 0x24($sp)
/* E8070 80131CB0 E7AC0028 */  swc1       $f12, 0x28($sp)
/* E8074 80131CB4 C6620004 */  lwc1       $f2, 0x4($s3)
/* E8078 80131CB8 460A1081 */  sub.s      $f2, $f2, $f10
/* E807C 80131CBC 46021082 */  mul.s      $f2, $f2, $f2
/* E8080 80131CC0 C6600008 */  lwc1       $f0, 0x8($s3)
/* E8084 80131CC4 460C0001 */  sub.s      $f0, $f0, $f12
/* E8088 80131CC8 46000002 */  mul.s      $f0, $f0, $f0
/* E808C 80131CCC 46022100 */  add.s      $f4, $f4, $f2
/* E8090 80131CD0 46002100 */  add.s      $f4, $f4, $f0
/* E8094 80131CD4 461A203C */  c.lt.s     $f4, $f26
/* E8098 80131CD8 00000000 */  nop
/* E809C 80131CDC 4503FFCF */  bc1tl      .Lrace_80131C1C
/* E80A0 80131CE0 0220B021 */   addu      $s6, $s1, $zero
/* E80A4 80131CE4 46083001 */  sub.s      $f0, $f6, $f8
/* E80A8 80131CE8 46000102 */  mul.s      $f4, $f0, $f0
/* E80AC 80131CEC E7A00040 */  swc1       $f0, 0x40($sp)
/* E80B0 80131CF0 C6600004 */  lwc1       $f0, 0x4($s3)
/* E80B4 80131CF4 46005001 */  sub.s      $f0, $f10, $f0
/* E80B8 80131CF8 46000182 */  mul.s      $f6, $f0, $f0
/* E80BC 80131CFC E7A00044 */  swc1       $f0, 0x44($sp)
/* E80C0 80131D00 C6600008 */  lwc1       $f0, 0x8($s3)
/* E80C4 80131D04 46006001 */  sub.s      $f0, $f12, $f0
/* E80C8 80131D08 46000082 */  mul.s      $f2, $f0, $f0
/* E80CC 80131D0C 46062100 */  add.s      $f4, $f4, $f6
/* E80D0 80131D10 46022300 */  add.s      $f12, $f4, $f2
/* E80D4 80131D14 E7A00048 */  swc1       $f0, 0x48($sp)
/* E80D8 80131D18 46006004 */  sqrt.s     $f0, $f12
/* E80DC 80131D1C 46000032 */  c.eq.s     $f0, $f0
/* E80E0 80131D20 00000000 */  nop
/* E80E4 80131D24 45010004 */  bc1t       .Lrace_80131D38
/* E80E8 80131D28 46000206 */   mov.s     $f8, $f0
/* E80EC 80131D2C 0C006BC8 */  jal        sqrt
/* E80F0 80131D30 00000000 */   nop
/* E80F4 80131D34 46000206 */  mov.s      $f8, $f0
.Lrace_80131D38:
/* E80F8 80131D38 3C01800D */  lui        $at, %hi(D_race_800CF378)
/* E80FC 80131D3C C420F378 */  lwc1       $f0, %lo(D_race_800CF378)($at)
/* E8100 80131D40 C7A20040 */  lwc1       $f2, 0x40($sp)
/* E8104 80131D44 46080583 */  div.s      $f22, $f0, $f8
/* E8108 80131D48 46161082 */  mul.s      $f2, $f2, $f22
/* E810C 80131D4C C7A60048 */  lwc1       $f6, 0x48($sp)
/* E8110 80131D50 46163182 */  mul.s      $f6, $f6, $f22
/* E8114 80131D54 C7A00044 */  lwc1       $f0, 0x44($sp)
/* E8118 80131D58 46160002 */  mul.s      $f0, $f0, $f22
/* E811C 80131D5C E7A20040 */  swc1       $f2, 0x40($sp)
/* E8120 80131D60 E7A60048 */  swc1       $f6, 0x48($sp)
/* E8124 80131D64 E7A00044 */  swc1       $f0, 0x44($sp)
/* E8128 80131D68 C6840000 */  lwc1       $f4, 0x0($s4)
/* E812C 80131D6C 46022102 */  mul.s      $f4, $f4, $f2
/* E8130 80131D70 C6820004 */  lwc1       $f2, 0x4($s4)
/* E8134 80131D74 46001082 */  mul.s      $f2, $f2, $f0
/* E8138 80131D78 C6800008 */  lwc1       $f0, 0x8($s4)
/* E813C 80131D7C 46060002 */  mul.s      $f0, $f0, $f6
/* E8140 80131D80 46022100 */  add.s      $f4, $f4, $f2
/* E8144 80131D84 46002500 */  add.s      $f20, $f4, $f0
/* E8148 80131D88 44800000 */  mtc1       $zero, $f0
/* E814C 80131D8C 4600A03C */  c.lt.s     $f20, $f0
/* E8150 80131D90 00000000 */  nop
/* E8154 80131D94 4500FF86 */  bc1f       .Lrace_80131BB0
/* E8158 80131D98 46004606 */   mov.s     $f24, $f8
/* E815C 80131D9C 46000506 */  mov.s      $f20, $f0
.Lrace_80131DA0:
/* E8160 80131DA0 4618A000 */  add.s      $f0, $f20, $f24
/* E8164 80131DA4 46080501 */  sub.s      $f20, $f0, $f8
.Lrace_80131DA8:
/* E8168 80131DA8 4616A002 */  mul.s      $f0, $f20, $f22
/* E816C 80131DAC 03D51023 */  subu       $v0, $fp, $s5
/* E8170 80131DB0 44821000 */  mtc1       $v0, $f2
/* E8174 80131DB4 468010A0 */  cvt.s.w    $f2, $f2
/* E8178 80131DB8 46001082 */  mul.s      $f2, $f2, $f0
/* E817C 80131DBC 8FA40060 */  lw         $a0, 0x60($sp)
/* E8180 80131DC0 AEF50074 */  sw         $s5, 0x74($s7)
/* E8184 80131DC4 44950000 */  mtc1       $s5, $f0
/* E8188 80131DC8 46800020 */  cvt.s.w    $f0, $f0
/* E818C 80131DCC 46020000 */  add.s      $f0, $f0, $f2
/* E8190 80131DD0 AEF60034 */  sw         $s6, 0x34($s7)
/* E8194 80131DD4 AEF10038 */  sw         $s1, 0x38($s7)
/* E8198 80131DD8 E6E00030 */  swc1       $f0, 0x30($s7)
/* E819C 80131DDC 8FA60010 */  lw         $a2, 0x10($sp)
/* E81A0 80131DE0 8FA70014 */  lw         $a3, 0x14($sp)
/* E81A4 80131DE4 8FA80018 */  lw         $t0, 0x18($sp)
/* E81A8 80131DE8 AEE6003C */  sw         $a2, 0x3C($s7)
/* E81AC 80131DEC AEE70040 */  sw         $a3, 0x40($s7)
/* E81B0 80131DF0 AEE80044 */  sw         $t0, 0x44($s7)
/* E81B4 80131DF4 8FA60020 */  lw         $a2, 0x20($sp)
/* E81B8 80131DF8 8FA70024 */  lw         $a3, 0x24($sp)
/* E81BC 80131DFC 8FA80028 */  lw         $t0, 0x28($sp)
/* E81C0 80131E00 AEE60048 */  sw         $a2, 0x48($s7)
/* E81C4 80131E04 AEE7004C */  sw         $a3, 0x4C($s7)
/* E81C8 80131E08 AEE80050 */  sw         $t0, 0x50($s7)
/* E81CC 80131E0C 0C04C7F5 */  jal        func_race_80131FD4
/* E81D0 80131E10 26E50054 */   addiu     $a1, $s7, 0x54
/* E81D4 80131E14 02402021 */  addu       $a0, $s2, $zero
/* E81D8 80131E18 0C04C7F5 */  jal        func_race_80131FD4
/* E81DC 80131E1C 26E50064 */   addiu     $a1, $s7, 0x64
/* E81E0 80131E20 02E02021 */  addu       $a0, $s7, $zero
/* E81E4 80131E24 0C04C439 */  jal        func_race_801310E4
/* E81E8 80131E28 00002821 */   addu      $a1, $zero, $zero
.Lrace_80131E2C:
/* E81EC 80131E2C 8FBF008C */  lw         $ra, 0x8C($sp)
/* E81F0 80131E30 8FBE0088 */  lw         $fp, 0x88($sp)
/* E81F4 80131E34 8FB70084 */  lw         $s7, 0x84($sp)
/* E81F8 80131E38 8FB60080 */  lw         $s6, 0x80($sp)
/* E81FC 80131E3C 8FB5007C */  lw         $s5, 0x7C($sp)
/* E8200 80131E40 8FB40078 */  lw         $s4, 0x78($sp)
/* E8204 80131E44 8FB30074 */  lw         $s3, 0x74($sp)
/* E8208 80131E48 8FB20070 */  lw         $s2, 0x70($sp)
/* E820C 80131E4C 8FB1006C */  lw         $s1, 0x6C($sp)
/* E8210 80131E50 8FB00068 */  lw         $s0, 0x68($sp)
/* E8214 80131E54 D7BA00A8 */  ldc1       $f26, 0xA8($sp)
/* E8218 80131E58 D7B800A0 */  ldc1       $f24, 0xA0($sp)
/* E821C 80131E5C D7B60098 */  ldc1       $f22, 0x98($sp)
/* E8220 80131E60 D7B40090 */  ldc1       $f20, 0x90($sp)
/* E8224 80131E64 03E00008 */  jr         $ra
/* E8228 80131E68 27BD00B0 */   addiu     $sp, $sp, 0xB0
