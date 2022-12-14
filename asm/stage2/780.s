.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel func_80080950
/* 77C80 80080950 00801021 */  addu       $v0, $a0, $zero
/* 77C84 80080954 3C038004 */  lui        $v1, %hi(D_80040860)
/* 77C88 80080958 24630860 */  addiu      $v1, $v1, %lo(D_80040860)
/* 77C8C 8008095C AC430000 */  sw         $v1, 0x0($v0)
/* 77C90 80080960 24030080 */  addiu      $v1, $zero, 0x80
/* 77C94 80080964 AC400004 */  sw         $zero, 0x4($v0)
/* 77C98 80080968 AC400008 */  sw         $zero, 0x8($v0)
/* 77C9C 8008096C AC400010 */  sw         $zero, 0x10($v0)
/* 77CA0 80080970 AC40000C */  sw         $zero, 0xC($v0)
/* 77CA4 80080974 AC400018 */  sw         $zero, 0x18($v0)
/* 77CA8 80080978 AC43001C */  sw         $v1, 0x1C($v0)
/* 77CAC 8008097C AC430020 */  sw         $v1, 0x20($v0)
/* 77CB0 80080980 03E00008 */  jr         $ra
/* 77CB4 80080984 AC400014 */   sw        $zero, 0x14($v0)

glabel func_80080988
/* 77CB8 80080988 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 77CBC 8008098C AFB00010 */  sw         $s0, 0x10($sp)
/* 77CC0 80080990 00808021 */  addu       $s0, $a0, $zero
/* 77CC4 80080994 AFB10014 */  sw         $s1, 0x14($sp)
/* 77CC8 80080998 00A08821 */  addu       $s1, $a1, $zero
/* 77CCC 8008099C 3C028004 */  lui        $v0, %hi(D_80040860)
/* 77CD0 800809A0 24420860 */  addiu      $v0, $v0, %lo(D_80040860)
/* 77CD4 800809A4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 77CD8 800809A8 0C0202E3 */  jal        func_80080B8C
/* 77CDC 800809AC AE020000 */   sw        $v0, 0x0($s0)
/* 77CE0 800809B0 02002021 */  addu       $a0, $s0, $zero
/* 77CE4 800809B4 0C01FB88 */  jal        func_8007EE20
/* 77CE8 800809B8 02202821 */   addu      $a1, $s1, $zero
/* 77CEC 800809BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 77CF0 800809C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 77CF4 800809C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 77CF8 800809C8 03E00008 */  jr         $ra
/* 77CFC 800809CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800809D0
/* 77D00 800809D0 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 77D04 800809D4 AFB20068 */  sw         $s2, 0x68($sp)
/* 77D08 800809D8 00809021 */  addu       $s2, $a0, $zero
/* 77D0C 800809DC AFB00060 */  sw         $s0, 0x60($sp)
/* 77D10 800809E0 00A08021 */  addu       $s0, $a1, $zero
/* 77D14 800809E4 27A40028 */  addiu      $a0, $sp, 0x28
/* 77D18 800809E8 AFBF0074 */  sw         $ra, 0x74($sp)
/* 77D1C 800809EC AFB40070 */  sw         $s4, 0x70($sp)
/* 77D20 800809F0 AFB3006C */  sw         $s3, 0x6C($sp)
/* 77D24 800809F4 0C01F720 */  jal        func_8007DC80
/* 77D28 800809F8 AFB10064 */   sw        $s1, 0x64($sp)
/* 77D2C 800809FC 27A40018 */  addiu      $a0, $sp, 0x18
/* 77D30 80080A00 02002821 */  addu       $a1, $s0, $zero
/* 77D34 80080A04 24060008 */  addiu      $a2, $zero, 0x8
/* 77D38 80080A08 3C028004 */  lui        $v0, %hi(D_800407D8)
/* 77D3C 80080A0C 244207D8 */  addiu      $v0, $v0, %lo(D_800407D8)
/* 77D40 80080A10 0C000708 */  jal        strncpy
/* 77D44 80080A14 AFA20050 */   sw        $v0, 0x50($sp)
/* 77D48 80080A18 27A40018 */  addiu      $a0, $sp, 0x18
/* 77D4C 80080A1C 3C058004 */  lui        $a1, %hi(D_800407C0)
/* 77D50 80080A20 24A507C0 */  addiu      $a1, $a1, %lo(D_800407C0)
/* 77D54 80080A24 0C0006C8 */  jal        strcat
/* 77D58 80080A28 A3A00020 */   sb        $zero, 0x20($sp)
/* 77D5C 80080A2C 27A40028 */  addiu      $a0, $sp, 0x28
/* 77D60 80080A30 27A50018 */  addiu      $a1, $sp, 0x18
/* 77D64 80080A34 24060002 */  addiu      $a2, $zero, 0x2
/* 77D68 80080A38 0C001989 */  jal        func_80006624
/* 77D6C 80080A3C 24071000 */   addiu     $a3, $zero, 0x1000
/* 77D70 80080A40 10400006 */  beqz       $v0, .L80080A5C
/* 77D74 80080A44 00002821 */   addu      $a1, $zero, $zero
/* 77D78 80080A48 3C048004 */  lui        $a0, %hi(D_800407C8)
/* 77D7C 80080A4C 248407C8 */  addiu      $a0, $a0, %lo(D_800407C8)
/* 77D80 80080A50 00A03021 */  addu       $a2, $a1, $zero
/* 77D84 80080A54 0C011ACF */  jal        func_80046B3C
/* 77D88 80080A58 00A03821 */   addu      $a3, $a1, $zero
.L80080A5C:
/* 77D8C 80080A5C 3C028008 */  lui        $v0, %hi(D_80087830)
/* 77D90 80080A60 8FB00038 */  lw         $s0, 0x38($sp)
/* 77D94 80080A64 8C447830 */  lw         $a0, %lo(D_80087830)($v0)
/* 77D98 80080A68 32020001 */  andi       $v0, $s0, 0x1
/* 77D9C 80080A6C AE500010 */  sw         $s0, 0x10($s2)
/* 77DA0 80080A70 0C01FB65 */  jal        func_8007ED94
/* 77DA4 80080A74 02028021 */   addu      $s0, $s0, $v0
/* 77DA8 80080A78 0C00943C */  jal        func_800250F0
/* 77DAC 80080A7C 02002021 */   addu      $a0, $s0, $zero
/* 77DB0 80080A80 0C01FB72 */  jal        func_8007EDC8
/* 77DB4 80080A84 AE42000C */   sw        $v0, 0xC($s2)
/* 77DB8 80080A88 8E42000C */  lw         $v0, 0xC($s2)
/* 77DBC 80080A8C 14400006 */  bnez       $v0, .L80080AA8
/* 77DC0 80080A90 3C048004 */   lui       $a0, %hi(D_800407C8)
/* 77DC4 80080A94 248407C8 */  addiu      $a0, $a0, %lo(D_800407C8)
/* 77DC8 80080A98 00002821 */  addu       $a1, $zero, $zero
/* 77DCC 80080A9C 00A03021 */  addu       $a2, $a1, $zero
/* 77DD0 80080AA0 0C011ACF */  jal        func_80046B3C
/* 77DD4 80080AA4 00A03821 */   addu      $a3, $a1, $zero
.L80080AA8:
/* 77DD8 80080AA8 8E430010 */  lw         $v1, 0x10($s2)
/* 77DDC 80080AAC 1060001F */  beqz       $v1, .L80080B2C
/* 77DE0 80080AB0 00008021 */   addu      $s0, $zero, $zero
/* 77DE4 80080AB4 27B30058 */  addiu      $s3, $sp, 0x58
/* 77DE8 80080AB8 3C148004 */  lui        $s4, %hi(D_800407C8)
/* 77DEC 80080ABC 24111000 */  addiu      $s1, $zero, 0x1000
.L80080AC0:
/* 77DF0 80080AC0 02111021 */  addu       $v0, $s0, $s1
/* 77DF4 80080AC4 0062102B */  sltu       $v0, $v1, $v0
/* 77DF8 80080AC8 54400001 */  bnel       $v0, $zero, .L80080AD0
/* 77DFC 80080ACC 00708823 */   subu      $s1, $v1, $s0
.L80080AD0:
/* 77E00 80080AD0 27A40028 */  addiu      $a0, $sp, 0x28
/* 77E04 80080AD4 02002821 */  addu       $a1, $s0, $zero
/* 77E08 80080AD8 8E46000C */  lw         $a2, 0xC($s2)
/* 77E0C 80080ADC 02203821 */  addu       $a3, $s1, $zero
/* 77E10 80080AE0 AFB30010 */  sw         $s3, 0x10($sp)
/* 77E14 80080AE4 0C001A4A */  jal        func_80006928
/* 77E18 80080AE8 00D03021 */   addu      $a2, $a2, $s0
/* 77E1C 80080AEC 14400005 */  bnez       $v0, .L80080B04
/* 77E20 80080AF0 268407C8 */   addiu     $a0, $s4, %lo(D_800407C8)
/* 77E24 80080AF4 8FA20058 */  lw         $v0, 0x58($sp)
/* 77E28 80080AF8 0051102B */  sltu       $v0, $v0, $s1
/* 77E2C 80080AFC 10400005 */  beqz       $v0, .L80080B14
/* 77E30 80080B00 00000000 */   nop
.L80080B04:
/* 77E34 80080B04 00002821 */  addu       $a1, $zero, $zero
/* 77E38 80080B08 00A03021 */  addu       $a2, $a1, $zero
/* 77E3C 80080B0C 0C011ACF */  jal        func_80046B3C
/* 77E40 80080B10 00A03821 */   addu      $a3, $a1, $zero
.L80080B14:
/* 77E44 80080B14 8FA20058 */  lw         $v0, 0x58($sp)
/* 77E48 80080B18 8E430010 */  lw         $v1, 0x10($s2)
/* 77E4C 80080B1C 02028021 */  addu       $s0, $s0, $v0
/* 77E50 80080B20 0203102B */  sltu       $v0, $s0, $v1
/* 77E54 80080B24 1440FFE6 */  bnez       $v0, .L80080AC0
/* 77E58 80080B28 24111000 */   addiu     $s1, $zero, 0x1000
.L80080B2C:
/* 77E5C 80080B2C 27B00028 */  addiu      $s0, $sp, 0x28
/* 77E60 80080B30 0C001A16 */  jal        func_80006858
/* 77E64 80080B34 02002021 */   addu      $a0, $s0, $zero
/* 77E68 80080B38 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* 77E6C 80080B3C 8E430000 */  lw         $v1, 0x0($s2)
/* 77E70 80080B40 24020001 */  addiu      $v0, $zero, 0x1
/* 77E74 80080B44 AE420018 */  sw         $v0, 0x18($s2)
/* 77E78 80080B48 84640038 */  lh         $a0, 0x38($v1)
/* 77E7C 80080B4C 8C62003C */  lw         $v0, 0x3C($v1)
/* 77E80 80080B50 0040F809 */  jalr       $v0
/* 77E84 80080B54 02442021 */   addu      $a0, $s2, $a0
/* 77E88 80080B58 02002021 */  addu       $a0, $s0, $zero
/* 77E8C 80080B5C 24050002 */  addiu      $a1, $zero, 0x2
/* 77E90 80080B60 24020080 */  addiu      $v0, $zero, 0x80
/* 77E94 80080B64 0C01F72E */  jal        func_8007DCB8
/* 77E98 80080B68 AE420020 */   sw        $v0, 0x20($s2)
/* 77E9C 80080B6C 8FBF0074 */  lw         $ra, 0x74($sp)
/* 77EA0 80080B70 8FB40070 */  lw         $s4, 0x70($sp)
/* 77EA4 80080B74 8FB3006C */  lw         $s3, 0x6C($sp)
/* 77EA8 80080B78 8FB20068 */  lw         $s2, 0x68($sp)
/* 77EAC 80080B7C 8FB10064 */  lw         $s1, 0x64($sp)
/* 77EB0 80080B80 8FB00060 */  lw         $s0, 0x60($sp)
/* 77EB4 80080B84 03E00008 */  jr         $ra
/* 77EB8 80080B88 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_80080B8C
/* 77EBC 80080B8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 77EC0 80080B90 AFB00010 */  sw         $s0, 0x10($sp)
/* 77EC4 80080B94 00808021 */  addu       $s0, $a0, $zero
/* 77EC8 80080B98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 77ECC 80080B9C 8E020014 */  lw         $v0, 0x14($s0)
/* 77ED0 80080BA0 1040000B */  beqz       $v0, .L80080BD0
/* 77ED4 80080BA4 00000000 */   nop
.L80080BA8:
/* 77ED8 80080BA8 8E040014 */  lw         $a0, 0x14($s0)
/* 77EDC 80080BAC 0C003DEF */  jal        MusHandleAs
/* 77EE0 80080BB0 00000000 */   nop
/* 77EE4 80080BB4 10400006 */  beqz       $v0, .L80080BD0
/* 77EE8 80080BB8 00000000 */   nop
/* 77EEC 80080BBC 8E040014 */  lw         $a0, 0x14($s0)
/* 77EF0 80080BC0 0C003DC3 */  jal        MusHandleStop
/* 77EF4 80080BC4 00002821 */   addu      $a1, $zero, $zero
/* 77EF8 80080BC8 080202EA */  j          .L80080BA8
/* 77EFC 80080BCC 00000000 */   nop
.L80080BD0:
/* 77F00 80080BD0 8E04000C */  lw         $a0, 0xC($s0)
/* 77F04 80080BD4 10800004 */  beqz       $a0, .L80080BE8
/* 77F08 80080BD8 AE000014 */   sw        $zero, 0x14($s0)
/* 77F0C 80080BDC 0C009444 */  jal        func_80025110
/* 77F10 80080BE0 00000000 */   nop
/* 77F14 80080BE4 AE00000C */  sw         $zero, 0xC($s0)
.L80080BE8:
/* 77F18 80080BE8 AE000010 */  sw         $zero, 0x10($s0)
/* 77F1C 80080BEC AE000018 */  sw         $zero, 0x18($s0)
/* 77F20 80080BF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77F24 80080BF4 8FB00010 */  lw         $s0, 0x10($sp)
/* 77F28 80080BF8 03E00008 */  jr         $ra
/* 77F2C 80080BFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80080C00
/* 77F30 80080C00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 77F34 80080C04 AFB00010 */  sw         $s0, 0x10($sp)
/* 77F38 80080C08 00808021 */  addu       $s0, $a0, $zero
/* 77F3C 80080C0C AFBF0018 */  sw         $ra, 0x18($sp)
/* 77F40 80080C10 AFB10014 */  sw         $s1, 0x14($sp)
/* 77F44 80080C14 8E020018 */  lw         $v0, 0x18($s0)
/* 77F48 80080C18 30420002 */  andi       $v0, $v0, 0x2
/* 77F4C 80080C1C 10400003 */  beqz       $v0, .L80080C2C
/* 77F50 80080C20 00A08821 */   addu      $s1, $a1, $zero
/* 77F54 80080C24 08020325 */  j          .L80080C94
/* 77F58 80080C28 00001021 */   addu      $v0, $zero, $zero
.L80080C2C:
/* 77F5C 80080C2C 8E04000C */  lw         $a0, 0xC($s0)
/* 77F60 80080C30 0C003C6C */  jal        MusStartSong
/* 77F64 80080C34 00000000 */   nop
/* 77F68 80080C38 8E030004 */  lw         $v1, 0x4($s0)
/* 77F6C 80080C3C AE020014 */  sw         $v0, 0x14($s0)
/* 77F70 80080C40 8C620004 */  lw         $v0, 0x4($v1)
/* 77F74 80080C44 84440038 */  lh         $a0, 0x38($v0)
/* 77F78 80080C48 8C42003C */  lw         $v0, 0x3C($v0)
/* 77F7C 80080C4C 0040F809 */  jalr       $v0
/* 77F80 80080C50 00642021 */   addu      $a0, $v1, $a0
/* 77F84 80080C54 C4420010 */  lwc1       $f2, 0x10($v0)
/* 77F88 80080C58 C600001C */  lwc1       $f0, 0x1C($s0)
/* 77F8C 80080C5C 46800020 */  cvt.s.w    $f0, $f0
/* 77F90 80080C60 46020002 */  mul.s      $f0, $f0, $f2
/* 77F94 80080C64 8E040014 */  lw         $a0, 0x14($s0)
/* 77F98 80080C68 4600010D */  trunc.w.s  $f4, $f0
/* 77F9C 80080C6C 44052000 */  mfc1       $a1, $f4
/* 77FA0 80080C70 0C003E03 */  jal        MusHandleSetVolume
/* 77FA4 80080C74 00000000 */   nop
/* 77FA8 80080C78 8E030018 */  lw         $v1, 0x18($s0)
/* 77FAC 80080C7C 34620002 */  ori        $v0, $v1, 0x2
/* 77FB0 80080C80 12200003 */  beqz       $s1, .L80080C90
/* 77FB4 80080C84 AE020018 */   sw        $v0, 0x18($s0)
/* 77FB8 80080C88 34620006 */  ori        $v0, $v1, 0x6
/* 77FBC 80080C8C AE020018 */  sw         $v0, 0x18($s0)
.L80080C90:
/* 77FC0 80080C90 24020001 */  addiu      $v0, $zero, 0x1
.L80080C94:
/* 77FC4 80080C94 8FBF0018 */  lw         $ra, 0x18($sp)
/* 77FC8 80080C98 8FB10014 */  lw         $s1, 0x14($sp)
/* 77FCC 80080C9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 77FD0 80080CA0 03E00008 */  jr         $ra
/* 77FD4 80080CA4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80080CA8
/* 77FD8 80080CA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 77FDC 80080CAC AFB00010 */  sw         $s0, 0x10($sp)
/* 77FE0 80080CB0 00808021 */  addu       $s0, $a0, $zero
/* 77FE4 80080CB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 77FE8 80080CB8 8E020018 */  lw         $v0, 0x18($s0)
/* 77FEC 80080CBC 30420002 */  andi       $v0, $v0, 0x2
/* 77FF0 80080CC0 10400008 */  beqz       $v0, .L80080CE4
/* 77FF4 80080CC4 00000000 */   nop
/* 77FF8 80080CC8 8E040014 */  lw         $a0, 0x14($s0)
/* 77FFC 80080CCC 0C003DC3 */  jal        MusHandleStop
/* 78000 80080CD0 00002821 */   addu      $a1, $zero, $zero
/* 78004 80080CD4 8E020018 */  lw         $v0, 0x18($s0)
/* 78008 80080CD8 2403FFF1 */  addiu      $v1, $zero, -0xF
/* 7800C 80080CDC 00431024 */  and        $v0, $v0, $v1
/* 78010 80080CE0 AE020018 */  sw         $v0, 0x18($s0)
.L80080CE4:
/* 78014 80080CE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 78018 80080CE8 8FB00010 */  lw         $s0, 0x10($sp)
/* 7801C 80080CEC 03E00008 */  jr         $ra
/* 78020 80080CF0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80080CF4
/* 78024 80080CF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 78028 80080CF8 AFB20018 */  sw         $s2, 0x18($sp)
/* 7802C 80080CFC 00809021 */  addu       $s2, $a0, $zero
/* 78030 80080D00 AFBF001C */  sw         $ra, 0x1C($sp)
/* 78034 80080D04 AFB10014 */  sw         $s1, 0x14($sp)
/* 78038 80080D08 AFB00010 */  sw         $s0, 0x10($sp)
/* 7803C 80080D0C 8E440018 */  lw         $a0, 0x18($s2)
/* 78040 80080D10 24020002 */  addiu      $v0, $zero, 0x2
/* 78044 80080D14 3083000A */  andi       $v1, $a0, 0xA
/* 78048 80080D18 1462002C */  bne        $v1, $v0, .L80080DCC
/* 7804C 80080D1C 34820008 */   ori       $v0, $a0, 0x8
/* 78050 80080D20 8E430004 */  lw         $v1, 0x4($s2)
/* 78054 80080D24 AE420018 */  sw         $v0, 0x18($s2)
/* 78058 80080D28 8C620004 */  lw         $v0, 0x4($v1)
/* 7805C 80080D2C 84440038 */  lh         $a0, 0x38($v0)
/* 78060 80080D30 8C42003C */  lw         $v0, 0x3C($v0)
/* 78064 80080D34 0040F809 */  jalr       $v0
/* 78068 80080D38 00642021 */   addu      $a0, $v1, $a0
/* 7806C 80080D3C 8E430004 */  lw         $v1, 0x4($s2)
/* 78070 80080D40 8C650004 */  lw         $a1, 0x4($v1)
/* 78074 80080D44 84A40038 */  lh         $a0, 0x38($a1)
/* 78078 80080D48 00642021 */  addu       $a0, $v1, $a0
/* 7807C 80080D4C 8CA3003C */  lw         $v1, 0x3C($a1)
/* 78080 80080D50 0060F809 */  jalr       $v1
/* 78084 80080D54 00408821 */   addu      $s1, $v0, $zero
/* 78088 80080D58 C4420010 */  lwc1       $f2, 0x10($v0)
/* 7808C 80080D5C C640001C */  lwc1       $f0, 0x1C($s2)
/* 78090 80080D60 46800020 */  cvt.s.w    $f0, $f0
/* 78094 80080D64 46020002 */  mul.s      $f0, $f0, $f2
/* 78098 80080D68 4600010D */  trunc.w.s  $f4, $f0
/* 7809C 80080D6C 44022000 */  mfc1       $v0, $f4
/* 780A0 80080D70 2450FFE0 */  addiu      $s0, $v0, -0x20
/* 780A4 80080D74 1A000009 */  blez       $s0, .L80080D9C
/* 780A8 80080D78 00000000 */   nop
.L80080D7C:
/* 780AC 80080D7C 0C0200A5 */  jal        func_80080294
/* 780B0 80080D80 02202021 */   addu      $a0, $s1, $zero
/* 780B4 80080D84 8E440014 */  lw         $a0, 0x14($s2)
/* 780B8 80080D88 02002821 */  addu       $a1, $s0, $zero
/* 780BC 80080D8C 0C003E03 */  jal        MusHandleSetVolume
/* 780C0 80080D90 2610FFE0 */   addiu     $s0, $s0, -0x20
/* 780C4 80080D94 1E00FFF9 */  bgtz       $s0, .L80080D7C
/* 780C8 80080D98 00000000 */   nop
.L80080D9C:
/* 780CC 80080D9C 0C0200A5 */  jal        func_80080294
/* 780D0 80080DA0 02202021 */   addu      $a0, $s1, $zero
/* 780D4 80080DA4 8E440014 */  lw         $a0, 0x14($s2)
/* 780D8 80080DA8 0C003E03 */  jal        MusHandleSetVolume
/* 780DC 80080DAC 00002821 */   addu      $a1, $zero, $zero
.L80080DB0:
/* 780E0 80080DB0 0C0200A5 */  jal        func_80080294
/* 780E4 80080DB4 02202021 */   addu      $a0, $s1, $zero
/* 780E8 80080DB8 8E440014 */  lw         $a0, 0x14($s2)
/* 780EC 80080DBC 0C003EC3 */  jal        MusHandlePause
/* 780F0 80080DC0 00000000 */   nop
/* 780F4 80080DC4 1040FFFA */  beqz       $v0, .L80080DB0
/* 780F8 80080DC8 00000000 */   nop
.L80080DCC:
/* 780FC 80080DCC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 78100 80080DD0 8FB20018 */  lw         $s2, 0x18($sp)
/* 78104 80080DD4 8FB10014 */  lw         $s1, 0x14($sp)
/* 78108 80080DD8 8FB00010 */  lw         $s0, 0x10($sp)
/* 7810C 80080DDC 03E00008 */  jr         $ra
/* 78110 80080DE0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80080DE4
/* 78114 80080DE4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 78118 80080DE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 7811C 80080DEC 00808021 */  addu       $s0, $a0, $zero
/* 78120 80080DF0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 78124 80080DF4 AFB10014 */  sw         $s1, 0x14($sp)
/* 78128 80080DF8 8E020018 */  lw         $v0, 0x18($s0)
/* 7812C 80080DFC 2403000A */  addiu      $v1, $zero, 0xA
/* 78130 80080E00 3042000A */  andi       $v0, $v0, 0xA
/* 78134 80080E04 14430024 */  bne        $v0, $v1, .L80080E98
/* 78138 80080E08 00000000 */   nop
/* 7813C 80080E0C 8E030004 */  lw         $v1, 0x4($s0)
/* 78140 80080E10 8C620004 */  lw         $v0, 0x4($v1)
/* 78144 80080E14 84440038 */  lh         $a0, 0x38($v0)
/* 78148 80080E18 8C42003C */  lw         $v0, 0x3C($v0)
/* 7814C 80080E1C 0040F809 */  jalr       $v0
/* 78150 80080E20 00642021 */   addu      $a0, $v1, $a0
/* 78154 80080E24 00408821 */  addu       $s1, $v0, $zero
/* 78158 80080E28 8E020018 */  lw         $v0, 0x18($s0)
/* 7815C 80080E2C 2403FFF7 */  addiu      $v1, $zero, -0x9
/* 78160 80080E30 00431024 */  and        $v0, $v0, $v1
/* 78164 80080E34 AE020018 */  sw         $v0, 0x18($s0)
.L80080E38:
/* 78168 80080E38 8E040014 */  lw         $a0, 0x14($s0)
/* 7816C 80080E3C 0C003ECC */  jal        MusHandleUnPause
/* 78170 80080E40 00000000 */   nop
/* 78174 80080E44 14400005 */  bnez       $v0, .L80080E5C
/* 78178 80080E48 00000000 */   nop
/* 7817C 80080E4C 0C0200A5 */  jal        func_80080294
/* 78180 80080E50 02202021 */   addu      $a0, $s1, $zero
/* 78184 80080E54 0802038E */  j          .L80080E38
/* 78188 80080E58 00000000 */   nop
.L80080E5C:
/* 7818C 80080E5C 8E030004 */  lw         $v1, 0x4($s0)
/* 78190 80080E60 8C620004 */  lw         $v0, 0x4($v1)
/* 78194 80080E64 84440038 */  lh         $a0, 0x38($v0)
/* 78198 80080E68 8C42003C */  lw         $v0, 0x3C($v0)
/* 7819C 80080E6C 0040F809 */  jalr       $v0
/* 781A0 80080E70 00642021 */   addu      $a0, $v1, $a0
/* 781A4 80080E74 C4420010 */  lwc1       $f2, 0x10($v0)
/* 781A8 80080E78 C600001C */  lwc1       $f0, 0x1C($s0)
/* 781AC 80080E7C 46800020 */  cvt.s.w    $f0, $f0
/* 781B0 80080E80 46020002 */  mul.s      $f0, $f0, $f2
/* 781B4 80080E84 8E040014 */  lw         $a0, 0x14($s0)
/* 781B8 80080E88 4600010D */  trunc.w.s  $f4, $f0
/* 781BC 80080E8C 44052000 */  mfc1       $a1, $f4
/* 781C0 80080E90 0C003E03 */  jal        MusHandleSetVolume
/* 781C4 80080E94 00000000 */   nop
.L80080E98:
/* 781C8 80080E98 8FBF0018 */  lw         $ra, 0x18($sp)
/* 781CC 80080E9C 8FB10014 */  lw         $s1, 0x14($sp)
/* 781D0 80080EA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 781D4 80080EA4 03E00008 */  jr         $ra
/* 781D8 80080EA8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80080EAC
/* 781DC 80080EAC 8C820018 */  lw         $v0, 0x18($a0)
/* 781E0 80080EB0 03E00008 */  jr         $ra
/* 781E4 80080EB4 30420002 */   andi      $v0, $v0, 0x2

glabel func_80080EB8
/* 781E8 80080EB8 3C018004 */  lui        $at, %hi(D_800407CC)
/* 781EC 80080EBC C42007CC */  lwc1       $f0, %lo(D_800407CC)($at)
/* 781F0 80080EC0 44852000 */  mtc1       $a1, $f4
/* 781F4 80080EC4 46002002 */  mul.s      $f0, $f4, $f0
/* 781F8 80080EC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 781FC 80080ECC AFB00010 */  sw         $s0, 0x10($sp)
/* 78200 80080ED0 00808021 */  addu       $s0, $a0, $zero
/* 78204 80080ED4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 78208 80080ED8 4600010D */  trunc.w.s  $f4, $f0
/* 7820C 80080EDC 44022000 */  mfc1       $v0, $f4
/* 78210 80080EE0 04410002 */  bgez       $v0, .L80080EEC
/* 78214 80080EE4 AE02001C */   sw        $v0, 0x1C($s0)
/* 78218 80080EE8 AE00001C */  sw         $zero, 0x1C($s0)
.L80080EEC:
/* 7821C 80080EEC 8E02001C */  lw         $v0, 0x1C($s0)
/* 78220 80080EF0 28420101 */  slti       $v0, $v0, 0x101
/* 78224 80080EF4 14400002 */  bnez       $v0, .L80080F00
/* 78228 80080EF8 24020100 */   addiu     $v0, $zero, 0x100
/* 7822C 80080EFC AE02001C */  sw         $v0, 0x1C($s0)
.L80080F00:
/* 78230 80080F00 8E020000 */  lw         $v0, 0x0($s0)
/* 78234 80080F04 84440030 */  lh         $a0, 0x30($v0)
/* 78238 80080F08 8C420034 */  lw         $v0, 0x34($v0)
/* 7823C 80080F0C 0040F809 */  jalr       $v0
/* 78240 80080F10 02042021 */   addu      $a0, $s0, $a0
/* 78244 80080F14 10400010 */  beqz       $v0, .L80080F58
/* 78248 80080F18 00000000 */   nop
/* 7824C 80080F1C 8E030004 */  lw         $v1, 0x4($s0)
/* 78250 80080F20 8C620004 */  lw         $v0, 0x4($v1)
/* 78254 80080F24 84440038 */  lh         $a0, 0x38($v0)
/* 78258 80080F28 8C42003C */  lw         $v0, 0x3C($v0)
/* 7825C 80080F2C 0040F809 */  jalr       $v0
/* 78260 80080F30 00642021 */   addu      $a0, $v1, $a0
/* 78264 80080F34 C4420010 */  lwc1       $f2, 0x10($v0)
/* 78268 80080F38 C600001C */  lwc1       $f0, 0x1C($s0)
/* 7826C 80080F3C 46800020 */  cvt.s.w    $f0, $f0
/* 78270 80080F40 46020002 */  mul.s      $f0, $f0, $f2
/* 78274 80080F44 8E040014 */  lw         $a0, 0x14($s0)
/* 78278 80080F48 4600010D */  trunc.w.s  $f4, $f0
/* 7827C 80080F4C 44052000 */  mfc1       $a1, $f4
/* 78280 80080F50 0C003E03 */  jal        MusHandleSetVolume
/* 78284 80080F54 00000000 */   nop
.L80080F58:
/* 78288 80080F58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7828C 80080F5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 78290 80080F60 03E00008 */  jr         $ra
/* 78294 80080F64 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80080F68
/* 78298 80080F68 3C018004 */  lui        $at, %hi(D_800407D0)
/* 7829C 80080F6C C42007D0 */  lwc1       $f0, %lo(D_800407D0)($at)
/* 782A0 80080F70 44851000 */  mtc1       $a1, $f2
/* 782A4 80080F74 46001002 */  mul.s      $f0, $f2, $f0
/* 782A8 80080F78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 782AC 80080F7C AFB00010 */  sw         $s0, 0x10($sp)
/* 782B0 80080F80 00808021 */  addu       $s0, $a0, $zero
/* 782B4 80080F84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 782B8 80080F88 4600008D */  trunc.w.s  $f2, $f0
/* 782BC 80080F8C 44021000 */  mfc1       $v0, $f2
/* 782C0 80080F90 24420080 */  addiu      $v0, $v0, 0x80
/* 782C4 80080F94 04410002 */  bgez       $v0, .L80080FA0
/* 782C8 80080F98 AE020020 */   sw        $v0, 0x20($s0)
/* 782CC 80080F9C AE000020 */  sw         $zero, 0x20($s0)
.L80080FA0:
/* 782D0 80080FA0 8E020020 */  lw         $v0, 0x20($s0)
/* 782D4 80080FA4 28420101 */  slti       $v0, $v0, 0x101
/* 782D8 80080FA8 14400002 */  bnez       $v0, .L80080FB4
/* 782DC 80080FAC 24020100 */   addiu     $v0, $zero, 0x100
/* 782E0 80080FB0 AE020020 */  sw         $v0, 0x20($s0)
.L80080FB4:
/* 782E4 80080FB4 8E020000 */  lw         $v0, 0x0($s0)
/* 782E8 80080FB8 84440030 */  lh         $a0, 0x30($v0)
/* 782EC 80080FBC 8C420034 */  lw         $v0, 0x34($v0)
/* 782F0 80080FC0 0040F809 */  jalr       $v0
/* 782F4 80080FC4 02042021 */   addu      $a0, $s0, $a0
/* 782F8 80080FC8 10400005 */  beqz       $v0, .L80080FE0
/* 782FC 80080FCC 00000000 */   nop
/* 78300 80080FD0 8E040014 */  lw         $a0, 0x14($s0)
/* 78304 80080FD4 8E050020 */  lw         $a1, 0x20($s0)
/* 78308 80080FD8 0C003E19 */  jal        MusHandleSetPan
/* 7830C 80080FDC 00000000 */   nop
.L80080FE0:
/* 78310 80080FE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 78314 80080FE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 78318 80080FE8 03E00008 */  jr         $ra
/* 7831C 80080FEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80080FF0
/* 78320 80080FF0 03E00008 */  jr         $ra
/* 78324 80080FF4 00000000 */   nop

glabel func_80080FF8
/* 78328 80080FF8 3C028008 */  lui        $v0, %hi(D_80087830)
/* 7832C 80080FFC 03E00008 */  jr         $ra
/* 78330 80081000 AC447830 */   sw        $a0, %lo(D_80087830)($v0)

glabel func_80081004
/* 78334 80081004 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 78338 80081008 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7833C 8008100C 0C01F72E */  jal        func_8007DCB8
/* 78340 80081010 00000000 */   nop
/* 78344 80081014 8FBF0010 */  lw         $ra, 0x10($sp)
/* 78348 80081018 03E00008 */  jr         $ra
/* 7834C 8008101C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80081020
/* 78350 80081020 8C820004 */  lw         $v0, 0x4($a0)
/* 78354 80081024 03E00008 */  jr         $ra
/* 78358 80081028 00000000 */   nop

glabel func_8008102C
/* 7835C 8008102C 8C820018 */  lw         $v0, 0x18($a0)
/* 78360 80081030 03E00008 */  jr         $ra
/* 78364 80081034 30420001 */   andi      $v0, $v0, 0x1

glabel func_80081038
/* 78368 80081038 03E00008 */  jr         $ra
/* 7836C 8008103C AC850004 */   sw        $a1, 0x4($a0)

glabel func_80081040
/* 78370 80081040 03E00008 */  jr         $ra
/* 78374 80081044 AC850008 */   sw        $a1, 0x8($a0)

glabel func_80081048
/* 78378 80081048 8C820008 */  lw         $v0, 0x8($a0)
/* 7837C 8008104C 03E00008 */  jr         $ra
/* 78380 80081050 00000000 */   nop
