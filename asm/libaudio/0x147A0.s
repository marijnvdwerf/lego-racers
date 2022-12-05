.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel n_alAdpcmPull
/* 147A0 80013BA0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 147A4 80013BA4 AFB60040 */  sw         $s6, 0x40($sp)
/* 147A8 80013BA8 00A0B021 */  addu       $s6, $a1, $zero
/* 147AC 80013BAC AFB40038 */  sw         $s4, 0x38($sp)
/* 147B0 80013BB0 00C0A021 */  addu       $s4, $a2, $zero
/* 147B4 80013BB4 00E04021 */  addu       $t0, $a3, $zero
/* 147B8 80013BB8 AFBE0048 */  sw         $fp, 0x48($sp)
/* 147BC 80013BBC 0000F021 */  addu       $fp, $zero, $zero
/* 147C0 80013BC0 01003021 */  addu       $a2, $t0, $zero
/* 147C4 80013BC4 AFB00028 */  sw         $s0, 0x28($sp)
/* 147C8 80013BC8 00808021 */  addu       $s0, $a0, $zero
/* 147CC 80013BCC AFBF004C */  sw         $ra, 0x4C($sp)
/* 147D0 80013BD0 AFB70044 */  sw         $s7, 0x44($sp)
/* 147D4 80013BD4 AFB5003C */  sw         $s5, 0x3C($sp)
/* 147D8 80013BD8 AFB30034 */  sw         $s3, 0x34($sp)
/* 147DC 80013BDC AFB20030 */  sw         $s2, 0x30($sp)
/* 147E0 80013BE0 128000F3 */  beqz       $s4, .L80013FB0
/* 147E4 80013BE4 AFB1002C */   sw        $s1, 0x2C($sp)
/* 147E8 80013BE8 25080008 */  addiu      $t0, $t0, 0x8
/* 147EC 80013BEC 3C0300FF */  lui        $v1, (0xFFFFFF >> 16)
/* 147F0 80013BF0 3463FFFF */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 147F4 80013BF4 3C041FFF */  lui        $a0, (0x1FFFFFFF >> 16)
/* 147F8 80013BF8 8E020024 */  lw         $v0, 0x24($s0)
/* 147FC 80013BFC 3484FFFF */  ori        $a0, $a0, (0x1FFFFFFF & 0xFFFF)
/* 14800 80013C00 00431024 */  and        $v0, $v0, $v1
/* 14804 80013C04 3C030B00 */  lui        $v1, (0xB000000 >> 16)
/* 14808 80013C08 00431025 */  or         $v0, $v0, $v1
/* 1480C 80013C0C ACC20000 */  sw         $v0, 0x0($a2)
/* 14810 80013C10 8E020020 */  lw         $v0, 0x20($s0)
/* 14814 80013C14 00002821 */  addu       $a1, $zero, $zero
/* 14818 80013C18 8C420010 */  lw         $v0, 0x10($v0)
/* 1481C 80013C1C 24420008 */  addiu      $v0, $v0, 0x8
/* 14820 80013C20 00441024 */  and        $v0, $v0, $a0
/* 14824 80013C24 ACC20004 */  sw         $v0, 0x4($a2)
/* 14828 80013C28 8E040030 */  lw         $a0, 0x30($s0)
/* 1482C 80013C2C 8E030018 */  lw         $v1, 0x18($s0)
/* 14830 80013C30 02841021 */  addu       $v0, $s4, $a0
/* 14834 80013C34 0062102B */  sltu       $v0, $v1, $v0
/* 14838 80013C38 10400003 */  beqz       $v0, .L80013C48
/* 1483C 80013C3C 00A0B821 */   addu      $s7, $a1, $zero
/* 14840 80013C40 8E02001C */  lw         $v0, 0x1C($s0)
/* 14844 80013C44 00A2282B */  sltu       $a1, $a1, $v0
.L80013C48:
/* 14848 80013C48 10A00002 */  beqz       $a1, .L80013C54
/* 1484C 80013C4C 02808821 */   addu      $s1, $s4, $zero
/* 14850 80013C50 00648823 */  subu       $s1, $v1, $a0
.L80013C54:
/* 14854 80013C54 8E030034 */  lw         $v1, 0x34($s0)
/* 14858 80013C58 10600003 */  beqz       $v1, .L80013C68
/* 1485C 80013C5C 24020010 */   addiu     $v0, $zero, 0x10
/* 14860 80013C60 08004F1B */  j          .L80013C6C
/* 14864 80013C64 0043A823 */   subu      $s5, $v0, $v1
.L80013C68:
/* 14868 80013C68 0000A821 */  addu       $s5, $zero, $zero
.L80013C6C:
/* 1486C 80013C6C 02353023 */  subu       $a2, $s1, $s5
/* 14870 80013C70 04C20001 */  bltzl      $a2, .L80013C78
/* 14874 80013C74 00003021 */   addu      $a2, $zero, $zero
.L80013C78:
/* 14878 80013C78 24C2000F */  addiu      $v0, $a2, 0xF
/* 1487C 80013C7C 00029103 */  sra        $s2, $v0, 4
/* 14880 80013C80 001248C0 */  sll        $t1, $s2, 3
/* 14884 80013C84 10A00072 */  beqz       $a1, .L80013E50
/* 14888 80013C88 01323821 */   addu      $a3, $t1, $s2
/* 1488C 80013C8C 86C20000 */  lh         $v0, 0x0($s6)
/* 14890 80013C90 01002021 */  addu       $a0, $t0, $zero
/* 14894 80013C94 AFA00014 */  sw         $zero, 0x14($sp)
/* 14898 80013C98 AFA20010 */  sw         $v0, 0x10($sp)
/* 1489C 80013C9C 8E020038 */  lw         $v0, 0x38($s0)
/* 148A0 80013CA0 02002821 */  addu       $a1, $s0, $zero
/* 148A4 80013CA4 0C005058 */  jal        func_80014160
/* 148A8 80013CA8 AFA20018 */   sw        $v0, 0x18($sp)
/* 148AC 80013CAC 8E030034 */  lw         $v1, 0x34($s0)
/* 148B0 80013CB0 10600007 */  beqz       $v1, .L80013CD0
/* 148B4 80013CB4 00404021 */   addu      $t0, $v0, $zero
/* 148B8 80013CB8 96020036 */  lhu        $v0, 0x36($s0)
/* 148BC 80013CBC 96C30000 */  lhu        $v1, 0x0($s6)
/* 148C0 80013CC0 00021040 */  sll        $v0, $v0, 1
/* 148C4 80013CC4 00621821 */  addu       $v1, $v1, $v0
/* 148C8 80013CC8 08004F37 */  j          .L80013CDC
/* 148CC 80013CCC A6C30000 */   sh        $v1, 0x0($s6)
.L80013CD0:
/* 148D0 80013CD0 96C20000 */  lhu        $v0, 0x0($s6)
/* 148D4 80013CD4 24420020 */  addiu      $v0, $v0, 0x20
/* 148D8 80013CD8 A6C20000 */  sh         $v0, 0x0($s6)
.L80013CDC:
/* 148DC 80013CDC 8E020014 */  lw         $v0, 0x14($s0)
/* 148E0 80013CE0 8E050014 */  lw         $a1, 0x14($s0)
/* 148E4 80013CE4 3042000F */  andi       $v0, $v0, 0xF
/* 148E8 80013CE8 00A01821 */  addu       $v1, $a1, $zero
/* 148EC 80013CEC 00031902 */  srl        $v1, $v1, 4
/* 148F0 80013CF0 AE020034 */  sw         $v0, 0x34($s0)
/* 148F4 80013CF4 8E020020 */  lw         $v0, 0x20($s0)
/* 148F8 80013CF8 24630001 */  addiu      $v1, $v1, 0x1
/* 148FC 80013CFC 8C440000 */  lw         $a0, 0x0($v0)
/* 14900 80013D00 000310C0 */  sll        $v0, $v1, 3
/* 14904 80013D04 00431021 */  addu       $v0, $v0, $v1
/* 14908 80013D08 AE050030 */  sw         $a1, 0x30($s0)
/* 1490C 80013D0C 00822021 */  addu       $a0, $a0, $v0
/* 14910 80013D10 0234102A */  slt        $v0, $s1, $s4
/* 14914 80013D14 AE04003C */  sw         $a0, 0x3C($s0)
/* 14918 80013D18 86D30000 */  lh         $s3, 0x0($s6)
/* 1491C 80013D1C 1040003E */  beqz       $v0, .L80013E18
/* 14920 80013D20 00171400 */   sll       $v0, $s7, 16
/* 14924 80013D24 0002B403 */  sra        $s6, $v0, 16
.L80013D28:
/* 14928 80013D28 26420001 */  addiu      $v0, $s2, 0x1
/* 1492C 80013D2C 00021140 */  sll        $v0, $v0, 5
/* 14930 80013D30 02621021 */  addu       $v0, $s3, $v0
/* 14934 80013D34 00111840 */  sll        $v1, $s1, 1
/* 14938 80013D38 02639821 */  addu       $s3, $s3, $v1
/* 1493C 80013D3C 24420010 */  addiu      $v0, $v0, 0x10
/* 14940 80013D40 2403FFE0 */  addiu      $v1, $zero, -0x20
/* 14944 80013D44 0043A824 */  and        $s5, $v0, $v1
/* 14948 80013D48 8E03001C */  lw         $v1, 0x1C($s0)
/* 1494C 80013D4C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 14950 80013D50 10620004 */  beq        $v1, $v0, .L80013D64
/* 14954 80013D54 0291A023 */   subu      $s4, $s4, $s1
/* 14958 80013D58 10600002 */  beqz       $v1, .L80013D64
/* 1495C 80013D5C 00621021 */   addu      $v0, $v1, $v0
/* 14960 80013D60 AE02001C */  sw         $v0, 0x1C($s0)
.L80013D64:
/* 14964 80013D64 8E030018 */  lw         $v1, 0x18($s0)
/* 14968 80013D68 8E020014 */  lw         $v0, 0x14($s0)
/* 1496C 80013D6C 00621823 */  subu       $v1, $v1, $v0
/* 14970 80013D70 0283102B */  sltu       $v0, $s4, $v1
/* 14974 80013D74 14400002 */  bnez       $v0, .L80013D80
/* 14978 80013D78 02808821 */   addu      $s1, $s4, $zero
/* 1497C 80013D7C 00608821 */  addu       $s1, $v1, $zero
.L80013D80:
/* 14980 80013D80 8E020034 */  lw         $v0, 0x34($s0)
/* 14984 80013D84 2442FFF0 */  addiu      $v0, $v0, -0x10
/* 14988 80013D88 02223021 */  addu       $a2, $s1, $v0
/* 1498C 80013D8C 04C20001 */  bltzl      $a2, .L80013D94
/* 14990 80013D90 00003021 */   addu      $a2, $zero, $zero
.L80013D94:
/* 14994 80013D94 24C2000F */  addiu      $v0, $a2, 0xF
/* 14998 80013D98 00029103 */  sra        $s2, $v0, 4
/* 1499C 80013D9C 01002021 */  addu       $a0, $t0, $zero
/* 149A0 80013DA0 02002821 */  addu       $a1, $s0, $zero
/* 149A4 80013DA4 00151400 */  sll        $v0, $s5, 16
/* 149A8 80013DA8 00021403 */  sra        $v0, $v0, 16
/* 149AC 80013DAC 001238C0 */  sll        $a3, $s2, 3
/* 149B0 80013DB0 AFA20010 */  sw         $v0, 0x10($sp)
/* 149B4 80013DB4 AFB60014 */  sw         $s6, 0x14($sp)
/* 149B8 80013DB8 8E020038 */  lw         $v0, 0x38($s0)
/* 149BC 80013DBC 00F23821 */  addu       $a3, $a3, $s2
/* 149C0 80013DC0 34420002 */  ori        $v0, $v0, 0x2
/* 149C4 80013DC4 0C005058 */  jal        func_80014160
/* 149C8 80013DC8 AFA20018 */   sw        $v0, 0x18($sp)
/* 149CC 80013DCC 00404021 */  addu       $t0, $v0, $zero
/* 149D0 80013DD0 01002821 */  addu       $a1, $t0, $zero
/* 149D4 80013DD4 3C0600FF */  lui        $a2, (0xFFFFFF >> 16)
/* 149D8 80013DD8 34C6FFFF */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
/* 149DC 80013DDC 00132400 */  sll        $a0, $s3, 16
/* 149E0 80013DE0 00111840 */  sll        $v1, $s1, 1
/* 149E4 80013DE4 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 149E8 80013DE8 00832025 */  or         $a0, $a0, $v1
/* 149EC 80013DEC 8E020034 */  lw         $v0, 0x34($s0)
/* 149F0 80013DF0 3C030A00 */  lui        $v1, (0xA000000 >> 16)
/* 149F4 80013DF4 ACA40004 */  sw         $a0, 0x4($a1)
/* 149F8 80013DF8 00021040 */  sll        $v0, $v0, 1
/* 149FC 80013DFC 02A21021 */  addu       $v0, $s5, $v0
/* 14A00 80013E00 00461024 */  and        $v0, $v0, $a2
/* 14A04 80013E04 00431025 */  or         $v0, $v0, $v1
/* 14A08 80013E08 ACA20000 */  sw         $v0, 0x0($a1)
/* 14A0C 80013E0C 0234102A */  slt        $v0, $s1, $s4
/* 14A10 80013E10 1440FFC5 */  bnez       $v0, .L80013D28
/* 14A14 80013E14 25080008 */   addiu     $t0, $t0, 0x8
.L80013E18:
/* 14A18 80013E18 01001021 */  addu       $v0, $t0, $zero
/* 14A1C 80013E1C 8E030034 */  lw         $v1, 0x34($s0)
/* 14A20 80013E20 8E040030 */  lw         $a0, 0x30($s0)
/* 14A24 80013E24 02831821 */  addu       $v1, $s4, $v1
/* 14A28 80013E28 3063000F */  andi       $v1, $v1, 0xF
/* 14A2C 80013E2C 00942021 */  addu       $a0, $a0, $s4
/* 14A30 80013E30 AE030034 */  sw         $v1, 0x34($s0)
/* 14A34 80013E34 001218C0 */  sll        $v1, $s2, 3
/* 14A38 80013E38 AE040030 */  sw         $a0, 0x30($s0)
/* 14A3C 80013E3C 8E04003C */  lw         $a0, 0x3C($s0)
/* 14A40 80013E40 00721821 */  addu       $v1, $v1, $s2
/* 14A44 80013E44 00832021 */  addu       $a0, $a0, $v1
/* 14A48 80013E48 08004FED */  j          .L80013FB4
/* 14A4C 80013E4C AE04003C */   sw        $a0, 0x3C($s0)
.L80013E50:
/* 14A50 80013E50 8E040020 */  lw         $a0, 0x20($s0)
/* 14A54 80013E54 8E03003C */  lw         $v1, 0x3C($s0)
/* 14A58 80013E58 8C820000 */  lw         $v0, 0x0($a0)
/* 14A5C 80013E5C 8C840004 */  lw         $a0, 0x4($a0)
/* 14A60 80013E60 00671821 */  addu       $v1, $v1, $a3
/* 14A64 80013E64 00441021 */  addu       $v0, $v0, $a0
/* 14A68 80013E68 00622023 */  subu       $a0, $v1, $v0
/* 14A6C 80013E6C 04810002 */  bgez       $a0, .L80013E78
/* 14A70 80013E70 00128900 */   sll       $s1, $s2, 4
/* 14A74 80013E74 00002021 */  addu       $a0, $zero, $zero
.L80013E78:
/* 14A78 80013E78 3C0238E3 */  lui        $v0, (0x38E38E39 >> 16)
/* 14A7C 80013E7C 34428E39 */  ori        $v0, $v0, (0x38E38E39 & 0xFFFF)
/* 14A80 80013E80 00820018 */  mult       $a0, $v0
/* 14A84 80013E84 00041FC3 */  sra        $v1, $a0, 31
/* 14A88 80013E88 00005010 */  mfhi       $t2
/* 14A8C 80013E8C 000A1043 */  sra        $v0, $t2, 1
/* 14A90 80013E90 00431023 */  subu       $v0, $v0, $v1
/* 14A94 80013E94 00029900 */  sll        $s3, $v0, 4
/* 14A98 80013E98 02351821 */  addu       $v1, $s1, $s5
/* 14A9C 80013E9C 0073102A */  slt        $v0, $v1, $s3
/* 14AA0 80013EA0 54400001 */  bnel       $v0, $zero, .L80013EA8
/* 14AA4 80013EA4 00609821 */   addu      $s3, $v1, $zero
.L80013EA8:
/* 14AA8 80013EA8 3262000F */  andi       $v0, $s3, 0xF
/* 14AAC 80013EAC 02621023 */  subu       $v0, $s3, $v0
/* 14AB0 80013EB0 0054102A */  slt        $v0, $v0, $s4
/* 14AB4 80013EB4 10400024 */  beqz       $v0, .L80013F48
/* 14AB8 80013EB8 00E43823 */   subu      $a3, $a3, $a0
/* 14ABC 80013EBC 241E0001 */  addiu      $fp, $zero, 0x1
/* 14AC0 80013EC0 01002021 */  addu       $a0, $t0, $zero
/* 14AC4 80013EC4 86C20000 */  lh         $v0, 0x0($s6)
/* 14AC8 80013EC8 02002821 */  addu       $a1, $s0, $zero
/* 14ACC 80013ECC AFA00014 */  sw         $zero, 0x14($sp)
/* 14AD0 80013ED0 AFA20010 */  sw         $v0, 0x10($sp)
/* 14AD4 80013ED4 8E020038 */  lw         $v0, 0x38($s0)
/* 14AD8 80013ED8 02333023 */  subu       $a2, $s1, $s3
/* 14ADC 80013EDC 0C005058 */  jal        func_80014160
/* 14AE0 80013EE0 AFA20018 */   sw        $v0, 0x18($sp)
/* 14AE4 80013EE4 8E030034 */  lw         $v1, 0x34($s0)
/* 14AE8 80013EE8 10600007 */  beqz       $v1, .L80013F08
/* 14AEC 80013EEC 00404021 */   addu      $t0, $v0, $zero
/* 14AF0 80013EF0 96020036 */  lhu        $v0, 0x36($s0)
/* 14AF4 80013EF4 96C30000 */  lhu        $v1, 0x0($s6)
/* 14AF8 80013EF8 03C21004 */  sllv       $v0, $v0, $fp
/* 14AFC 80013EFC 00621821 */  addu       $v1, $v1, $v0
/* 14B00 80013F00 08004FC5 */  j          .L80013F14
/* 14B04 80013F04 A6C30000 */   sh        $v1, 0x0($s6)
.L80013F08:
/* 14B08 80013F08 96C20000 */  lhu        $v0, 0x0($s6)
/* 14B0C 80013F0C 24420020 */  addiu      $v0, $v0, 0x20
/* 14B10 80013F10 A6C20000 */  sh         $v0, 0x0($s6)
.L80013F14:
/* 14B14 80013F14 8E020034 */  lw         $v0, 0x34($s0)
/* 14B18 80013F18 8E030030 */  lw         $v1, 0x30($s0)
/* 14B1C 80013F1C 02821021 */  addu       $v0, $s4, $v0
/* 14B20 80013F20 3042000F */  andi       $v0, $v0, 0xF
/* 14B24 80013F24 00741821 */  addu       $v1, $v1, $s4
/* 14B28 80013F28 AE020034 */  sw         $v0, 0x34($s0)
/* 14B2C 80013F2C 001210C0 */  sll        $v0, $s2, 3
/* 14B30 80013F30 AE030030 */  sw         $v1, 0x30($s0)
/* 14B34 80013F34 8E03003C */  lw         $v1, 0x3C($s0)
/* 14B38 80013F38 00521021 */  addu       $v0, $v0, $s2
/* 14B3C 80013F3C 00621821 */  addu       $v1, $v1, $v0
/* 14B40 80013F40 08004FD7 */  j          .L80013F5C
/* 14B44 80013F44 AE03003C */   sw        $v1, 0x3C($s0)
.L80013F48:
/* 14B48 80013F48 8E02003C */  lw         $v0, 0x3C($s0)
/* 14B4C 80013F4C 01321821 */  addu       $v1, $t1, $s2
/* 14B50 80013F50 AE000034 */  sw         $zero, 0x34($s0)
/* 14B54 80013F54 00431021 */  addu       $v0, $v0, $v1
/* 14B58 80013F58 AE02003C */  sw         $v0, 0x3C($s0)
.L80013F5C:
/* 14B5C 80013F5C 12600015 */  beqz       $s3, .L80013FB4
/* 14B60 80013F60 01001021 */   addu      $v0, $t0, $zero
/* 14B64 80013F64 13C00005 */  beqz       $fp, .L80013F7C
/* 14B68 80013F68 AE000034 */   sw        $zero, 0x34($s0)
/* 14B6C 80013F6C 02B11021 */  addu       $v0, $s5, $s1
/* 14B70 80013F70 00531023 */  subu       $v0, $v0, $s3
/* 14B74 80013F74 08004FE0 */  j          .L80013F80
/* 14B78 80013F78 00023040 */   sll       $a2, $v0, 1
.L80013F7C:
/* 14B7C 80013F7C 00003021 */  addu       $a2, $zero, $zero
.L80013F80:
/* 14B80 80013F80 01002821 */  addu       $a1, $t0, $zero
/* 14B84 80013F84 25080008 */  addiu      $t0, $t0, 0x8
/* 14B88 80013F88 3C0400FF */  lui        $a0, (0xFFFFFF >> 16)
/* 14B8C 80013F8C 3484FFFF */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
/* 14B90 80013F90 86C20000 */  lh         $v0, 0x0($s6)
/* 14B94 80013F94 00131840 */  sll        $v1, $s3, 1
/* 14B98 80013F98 ACA30004 */  sw         $v1, 0x4($a1)
/* 14B9C 80013F9C 3C030200 */  lui        $v1, (0x2000000 >> 16)
/* 14BA0 80013FA0 00C21021 */  addu       $v0, $a2, $v0
/* 14BA4 80013FA4 00441024 */  and        $v0, $v0, $a0
/* 14BA8 80013FA8 00431025 */  or         $v0, $v0, $v1
/* 14BAC 80013FAC ACA20000 */  sw         $v0, 0x0($a1)
.L80013FB0:
/* 14BB0 80013FB0 01001021 */  addu       $v0, $t0, $zero
.L80013FB4:
/* 14BB4 80013FB4 8FBF004C */  lw         $ra, 0x4C($sp)
/* 14BB8 80013FB8 8FBE0048 */  lw         $fp, 0x48($sp)
/* 14BBC 80013FBC 8FB70044 */  lw         $s7, 0x44($sp)
/* 14BC0 80013FC0 8FB60040 */  lw         $s6, 0x40($sp)
/* 14BC4 80013FC4 8FB5003C */  lw         $s5, 0x3C($sp)
/* 14BC8 80013FC8 8FB40038 */  lw         $s4, 0x38($sp)
/* 14BCC 80013FCC 8FB30034 */  lw         $s3, 0x34($sp)
/* 14BD0 80013FD0 8FB20030 */  lw         $s2, 0x30($sp)
/* 14BD4 80013FD4 8FB1002C */  lw         $s1, 0x2C($sp)
/* 14BD8 80013FD8 8FB00028 */  lw         $s0, 0x28($sp)
/* 14BDC 80013FDC 03E00008 */  jr         $ra
/* 14BE0 80013FE0 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80013FE4
/* 14BE4 80013FE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14BE8 80013FE8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 14BEC 80013FEC 24020004 */  addiu      $v0, $zero, 0x4
/* 14BF0 80013FF0 10A20045 */  beq        $a1, $v0, .L80014108
/* 14BF4 80013FF4 00803821 */   addu      $a3, $a0, $zero
/* 14BF8 80013FF8 24020005 */  addiu      $v0, $zero, 0x5
/* 14BFC 80013FFC 14A20055 */  bne        $a1, $v0, .L80014154
/* 14C00 80014000 00C02021 */   addu      $a0, $a2, $zero
/* 14C04 80014004 ACE60020 */  sw         $a2, 0x20($a3)
/* 14C08 80014008 8CC20000 */  lw         $v0, 0x0($a2)
/* 14C0C 8001400C ACE00030 */  sw         $zero, 0x30($a3)
/* 14C10 80014010 ACE2003C */  sw         $v0, 0x3C($a3)
/* 14C14 80014014 90830008 */  lbu        $v1, 0x8($a0)
/* 14C18 80014018 10600005 */  beqz       $v1, .L80014030
/* 14C1C 8001401C 24020001 */   addiu     $v0, $zero, 0x1
/* 14C20 80014020 10620029 */  beq        $v1, $v0, .L800140C8
/* 14C24 80014024 00000000 */   nop
/* 14C28 80014028 08005055 */  j          .L80014154
/* 14C2C 8001402C 00000000 */   nop
.L80014030:
/* 14C30 80014030 3C0338E3 */  lui        $v1, (0x38E38E39 >> 16)
/* 14C34 80014034 8C820004 */  lw         $v0, 0x4($a0)
/* 14C38 80014038 34638E39 */  ori        $v1, $v1, (0x38E38E39 & 0xFFFF)
/* 14C3C 8001403C 00430018 */  mult       $v0, $v1
/* 14C40 80014040 000217C3 */  sra        $v0, $v0, 31
/* 14C44 80014044 00001810 */  mfhi       $v1
/* 14C48 80014048 00031843 */  sra        $v1, $v1, 1
/* 14C4C 8001404C 00621823 */  subu       $v1, $v1, $v0
/* 14C50 80014050 000310C0 */  sll        $v0, $v1, 3
/* 14C54 80014054 00431021 */  addu       $v0, $v0, $v1
/* 14C58 80014058 AC820004 */  sw         $v0, 0x4($a0)
/* 14C5C 8001405C 8CE20020 */  lw         $v0, 0x20($a3)
/* 14C60 80014060 8C430010 */  lw         $v1, 0x10($v0)
/* 14C64 80014064 8C620004 */  lw         $v0, 0x4($v1)
/* 14C68 80014068 8C630000 */  lw         $v1, 0x0($v1)
/* 14C6C 8001406C 00021040 */  sll        $v0, $v0, 1
/* 14C70 80014070 00620018 */  mult       $v1, $v0
/* 14C74 80014074 8CE30020 */  lw         $v1, 0x20($a3)
/* 14C78 80014078 00001012 */  mflo       $v0
/* 14C7C 8001407C 000210C0 */  sll        $v0, $v0, 3
/* 14C80 80014080 ACE20024 */  sw         $v0, 0x24($a3)
/* 14C84 80014084 8C62000C */  lw         $v0, 0xC($v1)
/* 14C88 80014088 1040001B */  beqz       $v0, .L800140F8
/* 14C8C 8001408C 24060020 */   addiu     $a2, $zero, 0x20
/* 14C90 80014090 8C420000 */  lw         $v0, 0x0($v0)
/* 14C94 80014094 ACE20014 */  sw         $v0, 0x14($a3)
/* 14C98 80014098 8C62000C */  lw         $v0, 0xC($v1)
/* 14C9C 8001409C 8C420004 */  lw         $v0, 0x4($v0)
/* 14CA0 800140A0 ACE20018 */  sw         $v0, 0x18($a3)
/* 14CA4 800140A4 8C62000C */  lw         $v0, 0xC($v1)
/* 14CA8 800140A8 8C420008 */  lw         $v0, 0x8($v0)
/* 14CAC 800140AC ACE2001C */  sw         $v0, 0x1C($a3)
/* 14CB0 800140B0 8C64000C */  lw         $a0, 0xC($v1)
/* 14CB4 800140B4 8CE50010 */  lw         $a1, 0x10($a3)
/* 14CB8 800140B8 0C006808 */  jal        bcopy
/* 14CBC 800140BC 2484000C */   addiu     $a0, $a0, 0xC
/* 14CC0 800140C0 08005055 */  j          .L80014154
/* 14CC4 800140C4 00000000 */   nop
.L800140C8:
/* 14CC8 800140C8 8C82000C */  lw         $v0, 0xC($a0)
/* 14CCC 800140CC 5040000B */  beql       $v0, $zero, .L800140FC
/* 14CD0 800140D0 ACE0001C */   sw        $zero, 0x1C($a3)
/* 14CD4 800140D4 8C420000 */  lw         $v0, 0x0($v0)
/* 14CD8 800140D8 8CE30020 */  lw         $v1, 0x20($a3)
/* 14CDC 800140DC ACE20014 */  sw         $v0, 0x14($a3)
/* 14CE0 800140E0 8C62000C */  lw         $v0, 0xC($v1)
/* 14CE4 800140E4 8C420004 */  lw         $v0, 0x4($v0)
/* 14CE8 800140E8 ACE20018 */  sw         $v0, 0x18($a3)
/* 14CEC 800140EC 8C62000C */  lw         $v0, 0xC($v1)
/* 14CF0 800140F0 08005053 */  j          .L8001414C
/* 14CF4 800140F4 00000000 */   nop
.L800140F8:
/* 14CF8 800140F8 ACE0001C */  sw         $zero, 0x1C($a3)
.L800140FC:
/* 14CFC 800140FC ACE00018 */  sw         $zero, 0x18($a3)
/* 14D00 80014100 08005055 */  j          .L80014154
/* 14D04 80014104 ACE00014 */   sw        $zero, 0x14($a3)
.L80014108:
/* 14D08 80014108 8CE20020 */  lw         $v0, 0x20($a3)
/* 14D0C 8001410C 24040001 */  addiu      $a0, $zero, 0x1
/* 14D10 80014110 ACE00034 */  sw         $zero, 0x34($a3)
/* 14D14 80014114 ACE40038 */  sw         $a0, 0x38($a3)
/* 14D18 80014118 1040000E */  beqz       $v0, .L80014154
/* 14D1C 8001411C ACE00030 */   sw        $zero, 0x30($a3)
/* 14D20 80014120 8C420000 */  lw         $v0, 0x0($v0)
/* 14D24 80014124 8CE30020 */  lw         $v1, 0x20($a3)
/* 14D28 80014128 ACE2003C */  sw         $v0, 0x3C($a3)
/* 14D2C 8001412C 90620008 */  lbu        $v0, 0x8($v1)
/* 14D30 80014130 10400003 */  beqz       $v0, .L80014140
/* 14D34 80014134 00000000 */   nop
/* 14D38 80014138 14440006 */  bne        $v0, $a0, .L80014154
/* 14D3C 8001413C 00000000 */   nop
.L80014140:
/* 14D40 80014140 8C62000C */  lw         $v0, 0xC($v1)
/* 14D44 80014144 10400003 */  beqz       $v0, .L80014154
/* 14D48 80014148 00000000 */   nop
.L8001414C:
/* 14D4C 8001414C 8C420008 */  lw         $v0, 0x8($v0)
/* 14D50 80014150 ACE2001C */  sw         $v0, 0x1C($a3)
.L80014154:
/* 14D54 80014154 8FBF0010 */  lw         $ra, 0x10($sp)
/* 14D58 80014158 03E00008 */  jr         $ra
/* 14D5C 8001415C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80014160
/* 14D60 80014160 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 14D64 80014164 AFB3001C */  sw         $s3, 0x1C($sp)
/* 14D68 80014168 8FB30044 */  lw         $s3, 0x44($sp)
/* 14D6C 8001416C AFB50024 */  sw         $s5, 0x24($sp)
/* 14D70 80014170 8FB50048 */  lw         $s5, 0x48($sp)
/* 14D74 80014174 AFB40020 */  sw         $s4, 0x20($sp)
/* 14D78 80014178 97B40042 */  lhu        $s4, 0x42($sp)
/* 14D7C 8001417C AFB10014 */  sw         $s1, 0x14($sp)
/* 14D80 80014180 00808821 */  addu       $s1, $a0, $zero
/* 14D84 80014184 AFB20018 */  sw         $s2, 0x18($sp)
/* 14D88 80014188 00A09021 */  addu       $s2, $a1, $zero
/* 14D8C 8001418C AFB60028 */  sw         $s6, 0x28($sp)
/* 14D90 80014190 00C0B021 */  addu       $s6, $a2, $zero
/* 14D94 80014194 AFB00010 */  sw         $s0, 0x10($sp)
/* 14D98 80014198 00E08021 */  addu       $s0, $a3, $zero
/* 14D9C 8001419C 1A000017 */  blez       $s0, .L800141FC
/* 14DA0 800141A0 AFBF002C */   sw        $ra, 0x2C($sp)
/* 14DA4 800141A4 8E420028 */  lw         $v0, 0x28($s2)
/* 14DA8 800141A8 8E44003C */  lw         $a0, 0x3C($s2)
/* 14DAC 800141AC 8E46002C */  lw         $a2, 0x2C($s2)
/* 14DB0 800141B0 0040F809 */  jalr       $v0
/* 14DB4 800141B4 02002821 */   addu      $a1, $s0, $zero
/* 14DB8 800141B8 30480007 */  andi       $t0, $v0, 0x7
/* 14DBC 800141BC 02088021 */  addu       $s0, $s0, $t0
/* 14DC0 800141C0 02203021 */  addu       $a2, $s1, $zero
/* 14DC4 800141C4 26310008 */  addiu      $s1, $s1, 0x8
/* 14DC8 800141C8 32030007 */  andi       $v1, $s0, 0x7
/* 14DCC 800141CC 2463FFF8 */  addiu      $v1, $v1, -0x8
/* 14DD0 800141D0 02031823 */  subu       $v1, $s0, $v1
/* 14DD4 800141D4 30630FFF */  andi       $v1, $v1, 0xFFF
/* 14DD8 800141D8 00031B00 */  sll        $v1, $v1, 12
/* 14DDC 800141DC 32640FFF */  andi       $a0, $s3, 0xFFF
/* 14DE0 800141E0 3C050400 */  lui        $a1, (0x4000000 >> 16)
/* 14DE4 800141E4 00852025 */  or         $a0, $a0, $a1
/* 14DE8 800141E8 00641825 */  or         $v1, $v1, $a0
/* 14DEC 800141EC 00481023 */  subu       $v0, $v0, $t0
/* 14DF0 800141F0 ACC30000 */  sw         $v1, 0x0($a2)
/* 14DF4 800141F4 08005080 */  j          .L80014200
/* 14DF8 800141F8 ACC20004 */   sw        $v0, 0x4($a2)
.L800141FC:
/* 14DFC 800141FC 00004021 */  addu       $t0, $zero, $zero
.L80014200:
/* 14E00 80014200 32A20002 */  andi       $v0, $s5, 0x2
/* 14E04 80014204 10400009 */  beqz       $v0, .L8001422C
/* 14E08 80014208 02202021 */   addu      $a0, $s1, $zero
/* 14E0C 8001420C 26310008 */  addiu      $s1, $s1, 0x8
/* 14E10 80014210 3C031FFF */  lui        $v1, (0x1FFFFFFF >> 16)
/* 14E14 80014214 3C020F00 */  lui        $v0, (0xF000000 >> 16)
/* 14E18 80014218 AC820000 */  sw         $v0, 0x0($a0)
/* 14E1C 8001421C 8E420010 */  lw         $v0, 0x10($s2)
/* 14E20 80014220 3463FFFF */  ori        $v1, $v1, (0x1FFFFFFF & 0xFFFF)
/* 14E24 80014224 00431024 */  and        $v0, $v0, $v1
/* 14E28 80014228 AC820004 */  sw         $v0, 0x4($a0)
.L8001422C:
/* 14E2C 8001422C 3C0700FF */  lui        $a3, (0xFFFFFF >> 16)
/* 14E30 80014230 34E7FFFF */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
/* 14E34 80014234 26220008 */  addiu      $v0, $s1, 0x8
/* 14E38 80014238 02203021 */  addu       $a2, $s1, $zero
/* 14E3C 8001423C 00152700 */  sll        $a0, $s5, 28
/* 14E40 80014240 00161840 */  sll        $v1, $s6, 1
/* 14E44 80014244 30630FFF */  andi       $v1, $v1, 0xFFF
/* 14E48 80014248 00031C00 */  sll        $v1, $v1, 16
/* 14E4C 8001424C 00832025 */  or         $a0, $a0, $v1
/* 14E50 80014250 00081B00 */  sll        $v1, $t0, 12
/* 14E54 80014254 00832025 */  or         $a0, $a0, $v1
/* 14E58 80014258 32850FFF */  andi       $a1, $s4, 0xFFF
/* 14E5C 8001425C 8E43000C */  lw         $v1, 0xC($s2)
/* 14E60 80014260 00852025 */  or         $a0, $a0, $a1
/* 14E64 80014264 ACC40004 */  sw         $a0, 0x4($a2)
/* 14E68 80014268 3C040100 */  lui        $a0, (0x1000000 >> 16)
/* 14E6C 8001426C 00671824 */  and        $v1, $v1, $a3
/* 14E70 80014270 00641825 */  or         $v1, $v1, $a0
/* 14E74 80014274 ACC30000 */  sw         $v1, 0x0($a2)
/* 14E78 80014278 AE400038 */  sw         $zero, 0x38($s2)
/* 14E7C 8001427C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 14E80 80014280 8FB60028 */  lw         $s6, 0x28($sp)
/* 14E84 80014284 8FB50024 */  lw         $s5, 0x24($sp)
/* 14E88 80014288 8FB40020 */  lw         $s4, 0x20($sp)
/* 14E8C 8001428C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 14E90 80014290 8FB20018 */  lw         $s2, 0x18($sp)
/* 14E94 80014294 8FB10014 */  lw         $s1, 0x14($sp)
/* 14E98 80014298 8FB00010 */  lw         $s0, 0x10($sp)
/* 14E9C 8001429C 03E00008 */  jr         $ra
/* 14EA0 800142A0 27BD0030 */   addiu     $sp, $sp, 0x30
