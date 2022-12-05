.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007B7F0
/* 72B20 8007B7F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72B24 8007B7F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 72B28 8007B7F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 72B2C 8007B7FC 0C01EFAC */  jal        func_8007BEB0
/* 72B30 8007B800 00808021 */   addu      $s0, $a0, $zero
/* 72B34 8007B804 260400A8 */  addiu      $a0, $s0, 0xA8
/* 72B38 8007B808 3C028004 */  lui        $v0, %hi(D_8003FEA8)
/* 72B3C 8007B80C 2442FEA8 */  addiu      $v0, $v0, %lo(D_8003FEA8)
/* 72B40 8007B810 AE02009C */  sw         $v0, 0x9C($s0)
/* 72B44 8007B814 3C028004 */  lui        $v0, %hi(D_8003F618)
/* 72B48 8007B818 2442F618 */  addiu      $v0, $v0, %lo(D_8003F618)
/* 72B4C 8007B81C 0C01A4A4 */  jal        func_80069290
/* 72B50 8007B820 AE0200A0 */   sw        $v0, 0xA0($s0)
/* 72B54 8007B824 3404C9E8 */  ori        $a0, $zero, 0xC9E8
/* 72B58 8007B828 0C01F0B7 */  jal        func_8007C2DC
/* 72B5C 8007B82C 02042021 */   addu      $a0, $s0, $a0
/* 72B60 8007B830 3C040001 */  lui        $a0, (0x11198 >> 16)
/* 72B64 8007B834 34841198 */  ori        $a0, $a0, (0x11198 & 0xFFFF)
/* 72B68 8007B838 0C01F964 */  jal        func_8007E590
/* 72B6C 8007B83C 02042021 */   addu      $a0, $s0, $a0
/* 72B70 8007B840 02001021 */  addu       $v0, $s0, $zero
/* 72B74 8007B844 3C030001 */  lui        $v1, (0x113A8 >> 16)
/* 72B78 8007B848 00431821 */  addu       $v1, $v0, $v1
/* 72B7C 8007B84C AC6013A8 */  sw         $zero, (0x113A8 & 0xFFFF)($v1)
/* 72B80 8007B850 8FBF0014 */  lw         $ra, 0x14($sp)
/* 72B84 8007B854 8FB00010 */  lw         $s0, 0x10($sp)
/* 72B88 8007B858 03E00008 */  jr         $ra
/* 72B8C 8007B85C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007B860
/* 72B90 8007B860 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 72B94 8007B864 AFB00010 */  sw         $s0, 0x10($sp)
/* 72B98 8007B868 00808021 */  addu       $s0, $a0, $zero
/* 72B9C 8007B86C AFB10014 */  sw         $s1, 0x14($sp)
/* 72BA0 8007B870 00A08821 */  addu       $s1, $a1, $zero
/* 72BA4 8007B874 3C028004 */  lui        $v0, %hi(D_8003FEA8)
/* 72BA8 8007B878 2442FEA8 */  addiu      $v0, $v0, %lo(D_8003FEA8)
/* 72BAC 8007B87C AFBF0018 */  sw         $ra, 0x18($sp)
/* 72BB0 8007B880 0C01EE76 */  jal        func_8007B9D8
/* 72BB4 8007B884 AE02009C */   sw        $v0, 0x9C($s0)
/* 72BB8 8007B888 3404C9E8 */  ori        $a0, $zero, 0xC9E8
/* 72BBC 8007B88C 02042021 */  addu       $a0, $s0, $a0
/* 72BC0 8007B890 0C01F0D4 */  jal        func_8007C350
/* 72BC4 8007B894 24050002 */   addiu     $a1, $zero, 0x2
/* 72BC8 8007B898 260400A8 */  addiu      $a0, $s0, 0xA8
/* 72BCC 8007B89C 0C01A4C5 */  jal        func_80069314
/* 72BD0 8007B8A0 24050002 */   addiu     $a1, $zero, 0x2
/* 72BD4 8007B8A4 02002021 */  addu       $a0, $s0, $zero
/* 72BD8 8007B8A8 02202821 */  addu       $a1, $s1, $zero
/* 72BDC 8007B8AC 3C028004 */  lui        $v0, %hi(D_8003FF28)
/* 72BE0 8007B8B0 2442FF28 */  addiu      $v0, $v0, %lo(D_8003FF28)
/* 72BE4 8007B8B4 0C01EFD5 */  jal        func_8007BF54
/* 72BE8 8007B8B8 AC8200A0 */   sw        $v0, 0xA0($a0)
/* 72BEC 8007B8BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 72BF0 8007B8C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 72BF4 8007B8C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 72BF8 8007B8C8 03E00008 */  jr         $ra
/* 72BFC 8007B8CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007B8D0
/* 72C00 8007B8D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 72C04 8007B8D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 72C08 8007B8D8 00808021 */  addu       $s0, $a0, $zero
/* 72C0C 8007B8DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 72C10 8007B8E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 72C14 8007B8E4 8E020000 */  lw         $v0, 0x0($s0)
/* 72C18 8007B8E8 30420001 */  andi       $v0, $v0, 0x1
/* 72C1C 8007B8EC 10400006 */  beqz       $v0, .L8007B908
/* 72C20 8007B8F0 00C08821 */   addu      $s1, $a2, $zero
/* 72C24 8007B8F4 8E02009C */  lw         $v0, 0x9C($s0)
/* 72C28 8007B8F8 84440020 */  lh         $a0, 0x20($v0)
/* 72C2C 8007B8FC 8C420024 */  lw         $v0, 0x24($v0)
/* 72C30 8007B900 0040F809 */  jalr       $v0
/* 72C34 8007B904 02042021 */   addu      $a0, $s0, $a0
.L8007B908:
/* 72C38 8007B908 12200003 */  beqz       $s1, .L8007B918
/* 72C3C 8007B90C 00000000 */   nop
/* 72C40 8007B910 0C01EEA6 */  jal        func_8007BA98
/* 72C44 8007B914 02002021 */   addu      $a0, $s0, $zero
.L8007B918:
/* 72C48 8007B918 8E02009C */  lw         $v0, 0x9C($s0)
/* 72C4C 8007B91C 84440028 */  lh         $a0, 0x28($v0)
/* 72C50 8007B920 8C42002C */  lw         $v0, 0x2C($v0)
/* 72C54 8007B924 0040F809 */  jalr       $v0
/* 72C58 8007B928 02042021 */   addu      $a0, $s0, $a0
/* 72C5C 8007B92C 8E020000 */  lw         $v0, 0x0($s0)
/* 72C60 8007B930 34420001 */  ori        $v0, $v0, 0x1
/* 72C64 8007B934 0C007DF8 */  jal        osGetTime
/* 72C68 8007B938 AE020000 */   sw        $v0, 0x0($s0)
/* 72C6C 8007B93C 3C04431B */  lui        $a0, (0x431BDE83 >> 16)
/* 72C70 8007B940 3484DE83 */  ori        $a0, $a0, (0x431BDE83 & 0xFFFF)
/* 72C74 8007B944 00640019 */  multu      $v1, $a0
/* 72C78 8007B948 3C040001 */  lui        $a0, (0x113A8 >> 16)
/* 72C7C 8007B94C 02042021 */  addu       $a0, $s0, $a0
/* 72C80 8007B950 AC8313A8 */  sw         $v1, (0x113A8 & 0xFFFF)($a0)
/* 72C84 8007B954 00002810 */  mfhi       $a1
/* 72C88 8007B958 00051482 */  srl        $v0, $a1, 18
/* 72C8C 8007B95C AE02008C */  sw         $v0, 0x8C($s0)
/* 72C90 8007B960 8FBF0018 */  lw         $ra, 0x18($sp)
/* 72C94 8007B964 8FB10014 */  lw         $s1, 0x14($sp)
/* 72C98 8007B968 8FB00010 */  lw         $s0, 0x10($sp)
/* 72C9C 8007B96C 03E00008 */  jr         $ra
/* 72CA0 8007B970 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007B974
/* 72CA4 8007B974 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72CA8 8007B978 AFB00010 */  sw         $s0, 0x10($sp)
/* 72CAC 8007B97C 00808021 */  addu       $s0, $a0, $zero
/* 72CB0 8007B980 AFBF0014 */  sw         $ra, 0x14($sp)
/* 72CB4 8007B984 8E030070 */  lw         $v1, 0x70($s0)
/* 72CB8 8007B988 AE000074 */  sw         $zero, 0x74($s0)
/* 72CBC 8007B98C 1060000A */  beqz       $v1, .L8007B9B8
/* 72CC0 8007B990 AE000078 */   sw        $zero, 0x78($s0)
/* 72CC4 8007B994 8C62000C */  lw         $v0, 0xC($v1)
/* 72CC8 8007B998 30420001 */  andi       $v0, $v0, 0x1
/* 72CCC 8007B99C 10400006 */  beqz       $v0, .L8007B9B8
/* 72CD0 8007B9A0 00000000 */   nop
/* 72CD4 8007B9A4 8C620014 */  lw         $v0, 0x14($v1)
/* 72CD8 8007B9A8 84440030 */  lh         $a0, 0x30($v0)
/* 72CDC 8007B9AC 8C420034 */  lw         $v0, 0x34($v0)
/* 72CE0 8007B9B0 0040F809 */  jalr       $v0
/* 72CE4 8007B9B4 00642021 */   addu      $a0, $v1, $a0
.L8007B9B8:
/* 72CE8 8007B9B8 8E020000 */  lw         $v0, 0x0($s0)
/* 72CEC 8007B9BC 2403FFFD */  addiu      $v1, $zero, -0x3
/* 72CF0 8007B9C0 00431024 */  and        $v0, $v0, $v1
/* 72CF4 8007B9C4 AE020000 */  sw         $v0, 0x0($s0)
/* 72CF8 8007B9C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 72CFC 8007B9CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 72D00 8007B9D0 03E00008 */  jr         $ra
/* 72D04 8007B9D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007B9D8
/* 72D08 8007B9D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72D0C 8007B9DC AFB00010 */  sw         $s0, 0x10($sp)
/* 72D10 8007B9E0 00808021 */  addu       $s0, $a0, $zero
/* 72D14 8007B9E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 72D18 8007B9E8 8E02009C */  lw         $v0, 0x9C($s0)
/* 72D1C 8007B9EC 84440058 */  lh         $a0, 0x58($v0)
/* 72D20 8007B9F0 8C42005C */  lw         $v0, 0x5C($v0)
/* 72D24 8007B9F4 0040F809 */  jalr       $v0
/* 72D28 8007B9F8 02042021 */   addu      $a0, $s0, $a0
/* 72D2C 8007B9FC AE000000 */  sw         $zero, 0x0($s0)
/* 72D30 8007BA00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 72D34 8007BA04 8FB00010 */  lw         $s0, 0x10($sp)
/* 72D38 8007BA08 03E00008 */  jr         $ra
/* 72D3C 8007BA0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007BA10
/* 72D40 8007BA10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72D44 8007BA14 3403C9E8 */  ori        $v1, $zero, 0xC9E8
/* 72D48 8007BA18 AFBF0010 */  sw         $ra, 0x10($sp)
/* 72D4C 8007BA1C 8C820070 */  lw         $v0, 0x70($a0)
/* 72D50 8007BA20 00832021 */  addu       $a0, $a0, $v1
/* 72D54 8007BA24 24420020 */  addiu      $v0, $v0, 0x20
/* 72D58 8007BA28 0C01F13B */  jal        func_8007C4EC
/* 72D5C 8007BA2C AC8247AC */   sw        $v0, 0x47AC($a0)
/* 72D60 8007BA30 8FBF0010 */  lw         $ra, 0x10($sp)
/* 72D64 8007BA34 03E00008 */  jr         $ra
/* 72D68 8007BA38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007BA3C
/* 72D6C 8007BA3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72D70 8007BA40 3402C9E8 */  ori        $v0, $zero, 0xC9E8
/* 72D74 8007BA44 AFBF0010 */  sw         $ra, 0x10($sp)
/* 72D78 8007BA48 0C01F1A5 */  jal        func_8007C694
/* 72D7C 8007BA4C 00822021 */   addu      $a0, $a0, $v0
/* 72D80 8007BA50 8FBF0010 */  lw         $ra, 0x10($sp)
/* 72D84 8007BA54 03E00008 */  jr         $ra
/* 72D88 8007BA58 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007BA5C
/* 72D8C 8007BA5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72D90 8007BA60 AFB00010 */  sw         $s0, 0x10($sp)
/* 72D94 8007BA64 00808021 */  addu       $s0, $a0, $zero
/* 72D98 8007BA68 260400A0 */  addiu      $a0, $s0, 0xA0
/* 72D9C 8007BA6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 72DA0 8007BA70 0C01E078 */  jal        func_800781E0
/* 72DA4 8007BA74 AE04006C */   sw        $a0, 0x6C($s0)
/* 72DA8 8007BA78 AE020070 */  sw         $v0, 0x70($s0)
/* 72DAC 8007BA7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 72DB0 8007BA80 8FB00010 */  lw         $s0, 0x10($sp)
/* 72DB4 8007BA84 03E00008 */  jr         $ra
/* 72DB8 8007BA88 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007BA8C
/* 72DBC 8007BA8C AC80006C */  sw         $zero, 0x6C($a0)
/* 72DC0 8007BA90 03E00008 */  jr         $ra
/* 72DC4 8007BA94 AC800070 */   sw        $zero, 0x70($a0)

glabel func_8007BA98
/* 72DC8 8007BA98 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 72DCC 8007BA9C AFB20020 */  sw         $s2, 0x20($sp)
/* 72DD0 8007BAA0 00809021 */  addu       $s2, $a0, $zero
/* 72DD4 8007BAA4 34028000 */  ori        $v0, $zero, 0x8000
/* 72DD8 8007BAA8 AFB00018 */  sw         $s0, 0x18($sp)
/* 72DDC 8007BAAC 26500004 */  addiu      $s0, $s2, 0x4
/* 72DE0 8007BAB0 02002021 */  addu       $a0, $s0, $zero
/* 72DE4 8007BAB4 3C05B014 */  lui        $a1, %hi(D_B0145280)
/* 72DE8 8007BAB8 24A55280 */  addiu      $a1, $a1, %lo(D_B0145280)
/* 72DEC 8007BABC 3C06B100 */  lui        $a2, %hi(D_B0FFE620)
/* 72DF0 8007BAC0 24C6E620 */  addiu      $a2, $a2, %lo(D_B0FFE620)
/* 72DF4 8007BAC4 00C53023 */  subu       $a2, $a2, $a1
/* 72DF8 8007BAC8 24070082 */  addiu      $a3, $zero, 0x82
/* 72DFC 8007BACC AFBF0024 */  sw         $ra, 0x24($sp)
/* 72E00 8007BAD0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 72E04 8007BAD4 0C01F7E5 */  jal        func_8007DF94
/* 72E08 8007BAD8 AFA20010 */   sw        $v0, 0x10($sp)
/* 72E0C 8007BADC 10400006 */  beqz       $v0, .L8007BAF8
/* 72E10 8007BAE0 3C048004 */   lui       $a0, %hi(D_8003FEA0)
/* 72E14 8007BAE4 2484FEA0 */  addiu      $a0, $a0, %lo(D_8003FEA0)
/* 72E18 8007BAE8 00002821 */  addu       $a1, $zero, $zero
/* 72E1C 8007BAEC 00A03021 */  addu       $a2, $a1, $zero
/* 72E20 8007BAF0 0C011ACF */  jal        func_80046B3C
/* 72E24 8007BAF4 00A03821 */   addu      $a3, $a1, $zero
.L8007BAF8:
/* 72E28 8007BAF8 26510034 */  addiu      $s1, $s2, 0x34
/* 72E2C 8007BAFC 02202021 */  addu       $a0, $s1, $zero
/* 72E30 8007BB00 02002821 */  addu       $a1, $s0, $zero
/* 72E34 8007BB04 24100001 */  addiu      $s0, $zero, 0x1
/* 72E38 8007BB08 0C0021F9 */  jal        func_800087E4
/* 72E3C 8007BB0C AE500068 */   sw        $s0, 0x68($s2)
/* 72E40 8007BB10 8FBF0024 */  lw         $ra, 0x24($sp)
/* 72E44 8007BB14 8FB20020 */  lw         $s2, 0x20($sp)
/* 72E48 8007BB18 3C028003 */  lui        $v0, %hi(D_8002FB28)
/* 72E4C 8007BB1C AC51FB28 */  sw         $s1, %lo(D_8002FB28)($v0)
/* 72E50 8007BB20 8FB1001C */  lw         $s1, 0x1C($sp)
/* 72E54 8007BB24 3C028003 */  lui        $v0, %hi(D_8002FB2C)
/* 72E58 8007BB28 AC50FB2C */  sw         $s0, %lo(D_8002FB2C)($v0)
/* 72E5C 8007BB2C 8FB00018 */  lw         $s0, 0x18($sp)
/* 72E60 8007BB30 03E00008 */  jr         $ra
/* 72E64 8007BB34 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007BB38
/* 72E68 8007BB38 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 72E6C 8007BB3C AFB1001C */  sw         $s1, 0x1C($sp)
/* 72E70 8007BB40 00808821 */  addu       $s1, $a0, $zero
/* 72E74 8007BB44 AFB00018 */  sw         $s0, 0x18($sp)
/* 72E78 8007BB48 00A08021 */  addu       $s0, $a1, $zero
/* 72E7C 8007BB4C AFB20020 */  sw         $s2, 0x20($sp)
/* 72E80 8007BB50 00C09021 */  addu       $s2, $a2, $zero
/* 72E84 8007BB54 AFBF0028 */  sw         $ra, 0x28($sp)
/* 72E88 8007BB58 AFB30024 */  sw         $s3, 0x24($sp)
/* 72E8C 8007BB5C 8E220000 */  lw         $v0, 0x0($s1)
/* 72E90 8007BB60 30420002 */  andi       $v0, $v0, 0x2
/* 72E94 8007BB64 1040000B */  beqz       $v0, .L8007BB94
/* 72E98 8007BB68 00E09821 */   addu      $s3, $a3, $zero
/* 72E9C 8007BB6C 8E22009C */  lw         $v0, 0x9C($s1)
/* 72EA0 8007BB70 84440040 */  lh         $a0, 0x40($v0)
/* 72EA4 8007BB74 8C420044 */  lw         $v0, 0x44($v0)
/* 72EA8 8007BB78 0040F809 */  jalr       $v0
/* 72EAC 8007BB7C 02242021 */   addu      $a0, $s1, $a0
/* 72EB0 8007BB80 8E22009C */  lw         $v0, 0x9C($s1)
/* 72EB4 8007BB84 84440058 */  lh         $a0, 0x58($v0)
/* 72EB8 8007BB88 8C42005C */  lw         $v0, 0x5C($v0)
/* 72EBC 8007BB8C 0040F809 */  jalr       $v0
/* 72EC0 8007BB90 02242021 */   addu      $a0, $s1, $a0
.L8007BB94:
/* 72EC4 8007BB94 8E250000 */  lw         $a1, 0x0($s1)
/* 72EC8 8007BB98 2402FF85 */  addiu      $v0, $zero, -0x7B
/* 72ECC 8007BB9C AE30007C */  sw         $s0, 0x7C($s1)
/* 72ED0 8007BBA0 AE320080 */  sw         $s2, 0x80($s1)
/* 72ED4 8007BBA4 AE330084 */  sw         $s3, 0x84($s1)
/* 72ED8 8007BBA8 00A22824 */  and        $a1, $a1, $v0
/* 72EDC 8007BBAC 8FA20040 */  lw         $v0, 0x40($sp)
/* 72EE0 8007BBB0 30420078 */  andi       $v0, $v0, 0x78
/* 72EE4 8007BBB4 00A22825 */  or         $a1, $a1, $v0
/* 72EE8 8007BBB8 8E22009C */  lw         $v0, 0x9C($s1)
/* 72EEC 8007BBBC AE250000 */  sw         $a1, 0x0($s1)
/* 72EF0 8007BBC0 84440078 */  lh         $a0, 0x78($v0)
/* 72EF4 8007BBC4 8C42007C */  lw         $v0, 0x7C($v0)
/* 72EF8 8007BBC8 0040F809 */  jalr       $v0
/* 72EFC 8007BBCC 02242021 */   addu      $a0, $s1, $a0
/* 72F00 8007BBD0 8E230070 */  lw         $v1, 0x70($s1)
/* 72F04 8007BBD4 8C670014 */  lw         $a3, 0x14($v1)
/* 72F08 8007BBD8 02002821 */  addu       $a1, $s0, $zero
/* 72F0C 8007BBDC 84E40028 */  lh         $a0, 0x28($a3)
/* 72F10 8007BBE0 02403021 */  addu       $a2, $s2, $zero
/* 72F14 8007BBE4 AFA20010 */  sw         $v0, 0x10($sp)
/* 72F18 8007BBE8 8CE2002C */  lw         $v0, 0x2C($a3)
/* 72F1C 8007BBEC 02603821 */  addu       $a3, $s3, $zero
/* 72F20 8007BBF0 0040F809 */  jalr       $v0
/* 72F24 8007BBF4 00642021 */   addu      $a0, $v1, $a0
/* 72F28 8007BBF8 8E230070 */  lw         $v1, 0x70($s1)
/* 72F2C 8007BBFC 8C64001C */  lw         $a0, 0x1C($v1)
/* 72F30 8007BC00 AE240078 */  sw         $a0, 0x78($s1)
/* 72F34 8007BC04 8C85012C */  lw         $a1, 0x12C($a0)
/* 72F38 8007BC08 84A30030 */  lh         $v1, 0x30($a1)
/* 72F3C 8007BC0C 00832021 */  addu       $a0, $a0, $v1
/* 72F40 8007BC10 8CA30034 */  lw         $v1, 0x34($a1)
/* 72F44 8007BC14 0060F809 */  jalr       $v1
/* 72F48 8007BC18 00408021 */   addu      $s0, $v0, $zero
/* 72F4C 8007BC1C AE220074 */  sw         $v0, 0x74($s1)
/* 72F50 8007BC20 8E220000 */  lw         $v0, 0x0($s1)
/* 72F54 8007BC24 8E23009C */  lw         $v1, 0x9C($s1)
/* 72F58 8007BC28 34420002 */  ori        $v0, $v0, 0x2
/* 72F5C 8007BC2C AE220000 */  sw         $v0, 0x0($s1)
/* 72F60 8007BC30 84640038 */  lh         $a0, 0x38($v1)
/* 72F64 8007BC34 8C62003C */  lw         $v0, 0x3C($v1)
/* 72F68 8007BC38 0040F809 */  jalr       $v0
/* 72F6C 8007BC3C 02242021 */   addu      $a0, $s1, $a0
/* 72F70 8007BC40 02001021 */  addu       $v0, $s0, $zero
/* 72F74 8007BC44 8FBF0028 */  lw         $ra, 0x28($sp)
/* 72F78 8007BC48 8FB30024 */  lw         $s3, 0x24($sp)
/* 72F7C 8007BC4C 8FB20020 */  lw         $s2, 0x20($sp)
/* 72F80 8007BC50 8FB1001C */  lw         $s1, 0x1C($sp)
/* 72F84 8007BC54 8FB00018 */  lw         $s0, 0x18($sp)
/* 72F88 8007BC58 03E00008 */  jr         $ra
/* 72F8C 8007BC5C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007BC60
/* 72F90 8007BC60 03E00008 */  jr         $ra
/* 72F94 8007BC64 00000000 */   nop

glabel func_8007BC68
/* 72F98 8007BC68 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 72F9C 8007BC6C AFB00010 */  sw         $s0, 0x10($sp)
/* 72FA0 8007BC70 00808021 */  addu       $s0, $a0, $zero
/* 72FA4 8007BC74 AFBF0024 */  sw         $ra, 0x24($sp)
/* 72FA8 8007BC78 AFB40020 */  sw         $s4, 0x20($sp)
/* 72FAC 8007BC7C AFB3001C */  sw         $s3, 0x1C($sp)
/* 72FB0 8007BC80 AFB20018 */  sw         $s2, 0x18($sp)
/* 72FB4 8007BC84 0C007DF8 */  jal        osGetTime
/* 72FB8 8007BC88 AFB10014 */   sw        $s1, 0x14($sp)
/* 72FBC 8007BC8C 00409021 */  addu       $s2, $v0, $zero
/* 72FC0 8007BC90 00609821 */  addu       $s3, $v1, $zero
/* 72FC4 8007BC94 3C020001 */  lui        $v0, (0x113A8 >> 16)
/* 72FC8 8007BC98 0202A021 */  addu       $s4, $s0, $v0
/* 72FCC 8007BC9C 02608821 */  addu       $s1, $s3, $zero
/* 72FD0 8007BCA0 8E8213A8 */  lw         $v0, (0x113A8 & 0xFFFF)($s4)
/* 72FD4 8007BCA4 24060000 */  addiu      $a2, $zero, 0x0
/* 72FD8 8007BCA8 3407B71B */  ori        $a3, $zero, 0xB71B
/* 72FDC 8007BCAC 02221023 */  subu       $v0, $s1, $v0
/* 72FE0 8007BCB0 00402821 */  addu       $a1, $v0, $zero
/* 72FE4 8007BCB4 0C009198 */  jal        func_80024660
/* 72FE8 8007BCB8 00002021 */   addu      $a0, $zero, $zero
/* 72FEC 8007BCBC 8E040094 */  lw         $a0, 0x94($s0)
/* 72FF0 8007BCC0 0083102B */  sltu       $v0, $a0, $v1
/* 72FF4 8007BCC4 10400002 */  beqz       $v0, .L8007BCD0
/* 72FF8 8007BCC8 AE030090 */   sw        $v1, 0x90($s0)
/* 72FFC 8007BCCC AE040090 */  sw         $a0, 0x90($s0)
.L8007BCD0:
/* 73000 8007BCD0 3C02431B */  lui        $v0, (0x431BDE83 >> 16)
/* 73004 8007BCD4 3442DE83 */  ori        $v0, $v0, (0x431BDE83 & 0xFFFF)
/* 73008 8007BCD8 02220019 */  multu      $s1, $v0
/* 7300C 8007BCDC 3404C9E8 */  ori        $a0, $zero, 0xC9E8
/* 73010 8007BCE0 02042021 */  addu       $a0, $s0, $a0
/* 73014 8007BCE4 AE9313A8 */  sw         $s3, (0x113A8 & 0xFFFF)($s4)
/* 73018 8007BCE8 8E050090 */  lw         $a1, 0x90($s0)
/* 7301C 8007BCEC 00004010 */  mfhi       $t0
/* 73020 8007BCF0 00081482 */  srl        $v0, $t0, 18
/* 73024 8007BCF4 0C01F1CA */  jal        func_8007C728
/* 73028 8007BCF8 AE02008C */   sw        $v0, 0x8C($s0)
/* 7302C 8007BCFC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 73030 8007BD00 8FB40020 */  lw         $s4, 0x20($sp)
/* 73034 8007BD04 8FB3001C */  lw         $s3, 0x1C($sp)
/* 73038 8007BD08 8FB20018 */  lw         $s2, 0x18($sp)
/* 7303C 8007BD0C 8FB10014 */  lw         $s1, 0x14($sp)
/* 73040 8007BD10 8FB00010 */  lw         $s0, 0x10($sp)
/* 73044 8007BD14 24020001 */  addiu      $v0, $zero, 0x1
/* 73048 8007BD18 03E00008 */  jr         $ra
/* 7304C 8007BD1C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007BD20
/* 73050 8007BD20 3402C9E8 */  ori        $v0, $zero, 0xC9E8
/* 73054 8007BD24 03E00008 */  jr         $ra
/* 73058 8007BD28 00821021 */   addu      $v0, $a0, $v0

glabel func_8007BD2C
/* 7305C 8007BD2C 30A20010 */  andi       $v0, $a1, 0x10
/* 73060 8007BD30 10400002 */  beqz       $v0, .L8007BD3C
/* 73064 8007BD34 24030080 */   addiu     $v1, $zero, 0x80
/* 73068 8007BD38 24031080 */  addiu      $v1, $zero, 0x1080
.L8007BD3C:
/* 7306C 8007BD3C 30A20040 */  andi       $v0, $a1, 0x40
/* 73070 8007BD40 54400001 */  bnel       $v0, $zero, .L8007BD48
/* 73074 8007BD44 34630008 */   ori       $v1, $v1, 0x8
.L8007BD48:
/* 73078 8007BD48 3C028000 */  lui        $v0, %hi(D_80000300)
/* 7307C 8007BD4C 8C440300 */  lw         $a0, %lo(D_80000300)($v0)
/* 73080 8007BD50 14800003 */  bnez       $a0, .L8007BD60
/* 73084 8007BD54 24020002 */   addiu     $v0, $zero, 0x2
/* 73088 8007BD58 0801EF5B */  j          .L8007BD6C
/* 7308C 8007BD5C 34630010 */   ori       $v1, $v1, 0x10
.L8007BD60:
/* 73090 8007BD60 14820002 */  bne        $a0, $v0, .L8007BD6C
/* 73094 8007BD64 3C020010 */   lui       $v0, (0x100000 >> 16)
/* 73098 8007BD68 00621825 */  or         $v1, $v1, $v0
.L8007BD6C:
/* 7309C 8007BD6C 03E00008 */  jr         $ra
/* 730A0 8007BD70 00601021 */   addu      $v0, $v1, $zero

glabel func_8007BD74
/* 730A4 8007BD74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 730A8 8007BD78 AFB00010 */  sw         $s0, 0x10($sp)
/* 730AC 8007BD7C 3C10800C */  lui        $s0, %hi(D_800BD760)
/* 730B0 8007BD80 2604D760 */  addiu      $a0, $s0, %lo(D_800BD760)
/* 730B4 8007BD84 24840008 */  addiu      $a0, $a0, 0x8
/* 730B8 8007BD88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 730BC 8007BD8C 0C01A4C5 */  jal        func_80069314
/* 730C0 8007BD90 24050002 */   addiu     $a1, $zero, 0x2
/* 730C4 8007BD94 3C028004 */  lui        $v0, %hi(D_8003FF28)
/* 730C8 8007BD98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 730CC 8007BD9C 2442FF28 */  addiu      $v0, $v0, %lo(D_8003FF28)
/* 730D0 8007BDA0 AE02D760 */  sw         $v0, %lo(D_800BD760)($s0)
/* 730D4 8007BDA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 730D8 8007BDA8 03E00008 */  jr         $ra
/* 730DC 8007BDAC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007BDB0
/* 730E0 8007BDB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 730E4 8007BDB4 3C04800C */  lui        $a0, %hi(D_800BD760)
/* 730E8 8007BDB8 3C028004 */  lui        $v0, %hi(D_8003F618)
/* 730EC 8007BDBC 2442F618 */  addiu      $v0, $v0, %lo(D_8003F618)
/* 730F0 8007BDC0 AC82D760 */  sw         $v0, %lo(D_800BD760)($a0)
/* 730F4 8007BDC4 2484D760 */  addiu      $a0, $a0, %lo(D_800BD760)
/* 730F8 8007BDC8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 730FC 8007BDCC 0C01A4A4 */  jal        func_80069290
/* 73100 8007BDD0 24840008 */   addiu     $a0, $a0, 0x8
/* 73104 8007BDD4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 73108 8007BDD8 03E00008 */  jr         $ra
/* 7310C 8007BDDC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007BDE0
/* 73110 8007BDE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73114 8007BDE4 3C028004 */  lui        $v0, %hi(D_8003FF28)
/* 73118 8007BDE8 2442FF28 */  addiu      $v0, $v0, %lo(D_8003FF28)
/* 7311C 8007BDEC 30A50001 */  andi       $a1, $a1, 0x1
/* 73120 8007BDF0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 73124 8007BDF4 10A00003 */  beqz       $a1, .L8007BE04
/* 73128 8007BDF8 AC820000 */   sw        $v0, 0x0($a0)
/* 7312C 8007BDFC 0C01FB5C */  jal        func_8007ED70
/* 73130 8007BE00 00000000 */   nop
.L8007BE04:
/* 73134 8007BE04 8FBF0010 */  lw         $ra, 0x10($sp)
/* 73138 8007BE08 03E00008 */  jr         $ra
/* 7313C 8007BE0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007BE10
/* 73140 8007BE10 03E00008 */  jr         $ra
/* 73144 8007BE14 00000000 */   nop

glabel func_8007BE18
/* 73148 8007BE18 03E00008 */  jr         $ra
/* 7314C 8007BE1C 00000000 */   nop

glabel func_8007BE20
/* 73150 8007BE20 03E00008 */  jr         $ra
/* 73154 8007BE24 00000000 */   nop

glabel func_8007BE28
/* 73158 8007BE28 03E00008 */  jr         $ra
/* 7315C 8007BE2C 00000000 */   nop

glabel func_8007BE30
/* 73160 8007BE30 03E00008 */  jr         $ra
/* 73164 8007BE34 00000000 */   nop

glabel func_8007BE38
/* 73168 8007BE38 03E00008 */  jr         $ra
/* 7316C 8007BE3C 00000000 */   nop

glabel func_8007BE40
/* 73170 8007BE40 03E00008 */  jr         $ra
/* 73174 8007BE44 00000000 */   nop

glabel func_8007BE48
/* 73178 8007BE48 03E00008 */  jr         $ra
/* 7317C 8007BE4C 00000000 */   nop

glabel func_8007BE50
/* 73180 8007BE50 03E00008 */  jr         $ra
/* 73184 8007BE54 00000000 */   nop

glabel func_8007BE58
/* 73188 8007BE58 03E00008 */  jr         $ra
/* 7318C 8007BE5C 00000000 */   nop

glabel func_8007BE60
/* 73190 8007BE60 03E00008 */  jr         $ra
/* 73194 8007BE64 00000000 */   nop

glabel func_8007BE68
/* 73198 8007BE68 03E00008 */  jr         $ra
/* 7319C 8007BE6C 00000000 */   nop

glabel func_8007BE70
/* 731A0 8007BE70 24020064 */  addiu      $v0, $zero, 0x64
/* 731A4 8007BE74 AC80006C */  sw         $zero, 0x6C($a0)
/* 731A8 8007BE78 AC800070 */  sw         $zero, 0x70($a0)
/* 731AC 8007BE7C AC800074 */  sw         $zero, 0x74($a0)
/* 731B0 8007BE80 AC800078 */  sw         $zero, 0x78($a0)
/* 731B4 8007BE84 AC800000 */  sw         $zero, 0x0($a0)
/* 731B8 8007BE88 AC80007C */  sw         $zero, 0x7C($a0)
/* 731BC 8007BE8C AC800080 */  sw         $zero, 0x80($a0)
/* 731C0 8007BE90 AC800084 */  sw         $zero, 0x84($a0)
/* 731C4 8007BE94 AC80008C */  sw         $zero, 0x8C($a0)
/* 731C8 8007BE98 AC800090 */  sw         $zero, 0x90($a0)
/* 731CC 8007BE9C AC820094 */  sw         $v0, 0x94($a0)
/* 731D0 8007BEA0 AC800068 */  sw         $zero, 0x68($a0)
/* 731D4 8007BEA4 AC800098 */  sw         $zero, 0x98($a0)
/* 731D8 8007BEA8 03E00008 */  jr         $ra
/* 731DC 8007BEAC AC800088 */   sw        $zero, 0x88($a0)

glabel func_8007BEB0
/* 731E0 8007BEB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 731E4 8007BEB4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 731E8 8007BEB8 00809821 */  addu       $s3, $a0, $zero
/* 731EC 8007BEBC 3C028004 */  lui        $v0, %hi(D_80040080)
/* 731F0 8007BEC0 24420080 */  addiu      $v0, $v0, %lo(D_80040080)
/* 731F4 8007BEC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 731F8 8007BEC8 26700004 */  addiu      $s0, $s3, 0x4
/* 731FC 8007BECC AFB10014 */  sw         $s1, 0x14($sp)
/* 73200 8007BED0 00008821 */  addu       $s1, $zero, $zero
/* 73204 8007BED4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 73208 8007BED8 AFB40020 */  sw         $s4, 0x20($sp)
/* 7320C 8007BEDC AFB20018 */  sw         $s2, 0x18($sp)
/* 73210 8007BEE0 AE62009C */  sw         $v0, 0x9C($s3)
/* 73214 8007BEE4 3C028004 */  lui        $v0, %hi(D_80040100)
/* 73218 8007BEE8 24540100 */  addiu      $s4, $v0, %lo(D_80040100)
/* 7321C 8007BEEC 2412FFFF */  addiu      $s2, $zero, -0x1
.L8007BEF0:
/* 73220 8007BEF0 0C01F720 */  jal        func_8007DC80
/* 73224 8007BEF4 02002021 */   addu      $a0, $s0, $zero
/* 73228 8007BEF8 AE140028 */  sw         $s4, 0x28($s0)
/* 7322C 8007BEFC 2631FFFF */  addiu      $s1, $s1, -0x1
/* 73230 8007BF00 1632FFFB */  bne        $s1, $s2, .L8007BEF0
/* 73234 8007BF04 26100030 */   addiu     $s0, $s0, 0x30
/* 73238 8007BF08 26710034 */  addiu      $s1, $s3, 0x34
/* 7323C 8007BF0C 00008021 */  addu       $s0, $zero, $zero
/* 73240 8007BF10 2412FFFF */  addiu      $s2, $zero, -0x1
.L8007BF14:
/* 73244 8007BF14 0C0021D4 */  jal        func_80008750
/* 73248 8007BF18 02202021 */   addu      $a0, $s1, $zero
/* 7324C 8007BF1C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 73250 8007BF20 1612FFFC */  bne        $s0, $s2, .L8007BF14
/* 73254 8007BF24 26310034 */   addiu     $s1, $s1, 0x34
/* 73258 8007BF28 0C01EF9C */  jal        func_8007BE70
/* 7325C 8007BF2C 02602021 */   addu      $a0, $s3, $zero
/* 73260 8007BF30 02601021 */  addu       $v0, $s3, $zero
/* 73264 8007BF34 8FBF0024 */  lw         $ra, 0x24($sp)
/* 73268 8007BF38 8FB40020 */  lw         $s4, 0x20($sp)
/* 7326C 8007BF3C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 73270 8007BF40 8FB20018 */  lw         $s2, 0x18($sp)
/* 73274 8007BF44 8FB10014 */  lw         $s1, 0x14($sp)
/* 73278 8007BF48 8FB00010 */  lw         $s0, 0x10($sp)
/* 7327C 8007BF4C 03E00008 */  jr         $ra
/* 73280 8007BF50 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007BF54
/* 73284 8007BF54 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 73288 8007BF58 AFB10014 */  sw         $s1, 0x14($sp)
/* 7328C 8007BF5C 00808821 */  addu       $s1, $a0, $zero
/* 73290 8007BF60 AFB3001C */  sw         $s3, 0x1C($sp)
/* 73294 8007BF64 00A09821 */  addu       $s3, $a1, $zero
/* 73298 8007BF68 3C028004 */  lui        $v0, %hi(D_80040080)
/* 7329C 8007BF6C 24420080 */  addiu      $v0, $v0, %lo(D_80040080)
/* 732A0 8007BF70 AFBF0020 */  sw         $ra, 0x20($sp)
/* 732A4 8007BF74 AFB20018 */  sw         $s2, 0x18($sp)
/* 732A8 8007BF78 AFB00010 */  sw         $s0, 0x10($sp)
/* 732AC 8007BF7C 0C01EF9C */  jal        func_8007BE70
/* 732B0 8007BF80 AE22009C */   sw        $v0, 0x9C($s1)
/* 732B4 8007BF84 26220034 */  addiu      $v0, $s1, 0x34
/* 732B8 8007BF88 5040000F */  beql       $v0, $zero, .L8007BFC8
/* 732BC 8007BF8C 26220004 */   addiu     $v0, $s1, 0x4
/* 732C0 8007BF90 26300068 */  addiu      $s0, $s1, 0x68
/* 732C4 8007BF94 5050000C */  beql       $v0, $s0, .L8007BFC8
/* 732C8 8007BF98 26220004 */   addiu     $v0, $s1, 0x4
/* 732CC 8007BF9C 00409021 */  addu       $s2, $v0, $zero
/* 732D0 8007BFA0 2610FFCC */  addiu      $s0, $s0, -0x34
.L8007BFA4:
/* 732D4 8007BFA4 8E020030 */  lw         $v0, 0x30($s0)
/* 732D8 8007BFA8 24050002 */  addiu      $a1, $zero, 0x2
/* 732DC 8007BFAC 84440028 */  lh         $a0, 0x28($v0)
/* 732E0 8007BFB0 8C42002C */  lw         $v0, 0x2C($v0)
/* 732E4 8007BFB4 0040F809 */  jalr       $v0
/* 732E8 8007BFB8 02042021 */   addu      $a0, $s0, $a0
/* 732EC 8007BFBC 5650FFF9 */  bnel       $s2, $s0, .L8007BFA4
/* 732F0 8007BFC0 2610FFCC */   addiu     $s0, $s0, -0x34
/* 732F4 8007BFC4 26220004 */  addiu      $v0, $s1, 0x4
.L8007BFC8:
/* 732F8 8007BFC8 1040000C */  beqz       $v0, .L8007BFFC
/* 732FC 8007BFCC 26300034 */   addiu     $s0, $s1, 0x34
/* 73300 8007BFD0 1050000A */  beq        $v0, $s0, .L8007BFFC
/* 73304 8007BFD4 00409021 */   addu      $s2, $v0, $zero
/* 73308 8007BFD8 2610FFD0 */  addiu      $s0, $s0, -0x30
.L8007BFDC:
/* 7330C 8007BFDC 8E020028 */  lw         $v0, 0x28($s0)
/* 73310 8007BFE0 24050002 */  addiu      $a1, $zero, 0x2
/* 73314 8007BFE4 84440038 */  lh         $a0, 0x38($v0)
/* 73318 8007BFE8 8C42003C */  lw         $v0, 0x3C($v0)
/* 7331C 8007BFEC 0040F809 */  jalr       $v0
/* 73320 8007BFF0 02042021 */   addu      $a0, $s0, $a0
/* 73324 8007BFF4 1650FFF9 */  bne        $s2, $s0, .L8007BFDC
/* 73328 8007BFF8 2610FFD0 */   addiu     $s0, $s0, -0x30
.L8007BFFC:
/* 7332C 8007BFFC 32620001 */  andi       $v0, $s3, 0x1
/* 73330 8007C000 10400003 */  beqz       $v0, .L8007C010
/* 73334 8007C004 00000000 */   nop
/* 73338 8007C008 0C01FB5C */  jal        func_8007ED70
/* 7333C 8007C00C 02202021 */   addu      $a0, $s1, $zero
.L8007C010:
/* 73340 8007C010 8FBF0020 */  lw         $ra, 0x20($sp)
/* 73344 8007C014 8FB3001C */  lw         $s3, 0x1C($sp)
/* 73348 8007C018 8FB20018 */  lw         $s2, 0x18($sp)
/* 7334C 8007C01C 8FB10014 */  lw         $s1, 0x14($sp)
/* 73350 8007C020 8FB00010 */  lw         $s0, 0x10($sp)
/* 73354 8007C024 03E00008 */  jr         $ra
/* 73358 8007C028 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007C02C
/* 7335C 8007C02C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73360 8007C030 AFBF0010 */  sw         $ra, 0x10($sp)
/* 73364 8007C034 8C82009C */  lw         $v0, 0x9C($a0)
/* 73368 8007C038 84430058 */  lh         $v1, 0x58($v0)
/* 7336C 8007C03C 8C42005C */  lw         $v0, 0x5C($v0)
/* 73370 8007C040 0040F809 */  jalr       $v0
/* 73374 8007C044 00832021 */   addu      $a0, $a0, $v1
/* 73378 8007C048 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7337C 8007C04C 03E00008 */  jr         $ra
/* 73380 8007C050 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007C054
/* 73384 8007C054 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73388 8007C058 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7338C 8007C05C 8C830070 */  lw         $v1, 0x70($a0)
/* 73390 8007C060 8C620014 */  lw         $v0, 0x14($v1)
/* 73394 8007C064 84440038 */  lh         $a0, 0x38($v0)
/* 73398 8007C068 8C42003C */  lw         $v0, 0x3C($v0)
/* 7339C 8007C06C 0040F809 */  jalr       $v0
/* 733A0 8007C070 00642021 */   addu      $a0, $v1, $a0
/* 733A4 8007C074 8FBF0010 */  lw         $ra, 0x10($sp)
/* 733A8 8007C078 03E00008 */  jr         $ra
/* 733AC 8007C07C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007C080
/* 733B0 8007C080 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 733B4 8007C084 AFBF0010 */  sw         $ra, 0x10($sp)
/* 733B8 8007C088 8C830088 */  lw         $v1, 0x88($a0)
/* 733BC 8007C08C 10600006 */  beqz       $v1, .L8007C0A8
/* 733C0 8007C090 00000000 */   nop
/* 733C4 8007C094 8C620000 */  lw         $v0, 0x0($v1)
/* 733C8 8007C098 84440008 */  lh         $a0, 0x8($v0)
/* 733CC 8007C09C 8C42000C */  lw         $v0, 0xC($v0)
/* 733D0 8007C0A0 0040F809 */  jalr       $v0
/* 733D4 8007C0A4 00642021 */   addu      $a0, $v1, $a0
.L8007C0A8:
/* 733D8 8007C0A8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 733DC 8007C0AC 03E00008 */  jr         $ra
/* 733E0 8007C0B0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007C0B4
/* 733E4 8007C0B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 733E8 8007C0B8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 733EC 8007C0BC 8C88009C */  lw         $t0, 0x9C($a0)
/* 733F0 8007C0C0 8FA20030 */  lw         $v0, 0x30($sp)
/* 733F4 8007C0C4 85030050 */  lh         $v1, 0x50($t0)
/* 733F8 8007C0C8 AFA20010 */  sw         $v0, 0x10($sp)
/* 733FC 8007C0CC 8D020054 */  lw         $v0, 0x54($t0)
/* 73400 8007C0D0 0040F809 */  jalr       $v0
/* 73404 8007C0D4 00832021 */   addu      $a0, $a0, $v1
/* 73408 8007C0D8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7340C 8007C0DC 03E00008 */  jr         $ra
/* 73410 8007C0E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007C0E4
/* 73414 8007C0E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 73418 8007C0E8 AFB20018 */  sw         $s2, 0x18($sp)
/* 7341C 8007C0EC 00809021 */  addu       $s2, $a0, $zero
/* 73420 8007C0F0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 73424 8007C0F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 73428 8007C0F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 7342C 8007C0FC 8E420068 */  lw         $v0, 0x68($s2)
/* 73430 8007C100 10400009 */  beqz       $v0, .L8007C128
/* 73434 8007C104 00008021 */   addu      $s0, $zero, $zero
/* 73438 8007C108 24110034 */  addiu      $s1, $zero, 0x34
.L8007C10C:
/* 7343C 8007C10C 0C00234B */  jal        func_80008D2C
/* 73440 8007C110 02512021 */   addu      $a0, $s2, $s1
/* 73444 8007C114 8E420068 */  lw         $v0, 0x68($s2)
/* 73448 8007C118 26100001 */  addiu      $s0, $s0, 0x1
/* 7344C 8007C11C 0202102B */  sltu       $v0, $s0, $v0
/* 73450 8007C120 1440FFFA */  bnez       $v0, .L8007C10C
/* 73454 8007C124 26310034 */   addiu     $s1, $s1, 0x34
.L8007C128:
/* 73458 8007C128 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7345C 8007C12C 8FB20018 */  lw         $s2, 0x18($sp)
/* 73460 8007C130 8FB10014 */  lw         $s1, 0x14($sp)
/* 73464 8007C134 8FB00010 */  lw         $s0, 0x10($sp)
/* 73468 8007C138 03E00008 */  jr         $ra
/* 7346C 8007C13C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007C140
/* 73470 8007C140 8C820000 */  lw         $v0, 0x0($a0)
/* 73474 8007C144 03E00008 */  jr         $ra
/* 73478 8007C148 00000000 */   nop

glabel func_8007C14C
/* 7347C 8007C14C 00051040 */  sll        $v0, $a1, 1
/* 73480 8007C150 00451021 */  addu       $v0, $v0, $a1
/* 73484 8007C154 00021080 */  sll        $v0, $v0, 2
/* 73488 8007C158 00451021 */  addu       $v0, $v0, $a1
/* 7348C 8007C15C 00021080 */  sll        $v0, $v0, 2
/* 73490 8007C160 24420034 */  addiu      $v0, $v0, 0x34
/* 73494 8007C164 03E00008 */  jr         $ra
/* 73498 8007C168 00821021 */   addu      $v0, $a0, $v0

glabel func_8007C16C
/* 7349C 8007C16C 8C820000 */  lw         $v0, 0x0($a0)
/* 734A0 8007C170 2403BFFF */  addiu      $v1, $zero, -0x4001
/* 734A4 8007C174 00431024 */  and        $v0, $v0, $v1
/* 734A8 8007C178 03E00008 */  jr         $ra
/* 734AC 8007C17C AC820000 */   sw        $v0, 0x0($a0)

glabel func_8007C180
/* 734B0 8007C180 8C820000 */  lw         $v0, 0x0($a0)
/* 734B4 8007C184 34424000 */  ori        $v0, $v0, 0x4000
/* 734B8 8007C188 03E00008 */  jr         $ra
/* 734BC 8007C18C AC820000 */   sw        $v0, 0x0($a0)

glabel func_8007C190
/* 734C0 8007C190 8C820000 */  lw         $v0, 0x0($a0)
/* 734C4 8007C194 03E00008 */  jr         $ra
/* 734C8 8007C198 30424000 */   andi      $v0, $v0, 0x4000

glabel func_8007C19C
/* 734CC 8007C19C 8C820068 */  lw         $v0, 0x68($a0)
/* 734D0 8007C1A0 03E00008 */  jr         $ra
/* 734D4 8007C1A4 00000000 */   nop

glabel func_8007C1A8
/* 734D8 8007C1A8 8C820098 */  lw         $v0, 0x98($a0)
/* 734DC 8007C1AC 03E00008 */  jr         $ra
/* 734E0 8007C1B0 00000000 */   nop

glabel func_8007C1B4
/* 734E4 8007C1B4 8C820000 */  lw         $v0, 0x0($a0)
/* 734E8 8007C1B8 03E00008 */  jr         $ra
/* 734EC 8007C1BC 30420010 */   andi      $v0, $v0, 0x10

glabel func_8007C1C0
/* 734F0 8007C1C0 8C820000 */  lw         $v0, 0x0($a0)
/* 734F4 8007C1C4 03E00008 */  jr         $ra
/* 734F8 8007C1C8 30420100 */   andi      $v0, $v0, 0x100

glabel func_8007C1CC
/* 734FC 8007C1CC 03E00008 */  jr         $ra
/* 73500 8007C1D0 AC850094 */   sw        $a1, 0x94($a0)

glabel func_8007C1D4
/* 73504 8007C1D4 8C820094 */  lw         $v0, 0x94($a0)
/* 73508 8007C1D8 03E00008 */  jr         $ra
/* 7350C 8007C1DC 00000000 */   nop

glabel func_8007C1E0
/* 73510 8007C1E0 8C820090 */  lw         $v0, 0x90($a0)
/* 73514 8007C1E4 03E00008 */  jr         $ra
/* 73518 8007C1E8 00000000 */   nop

glabel func_8007C1EC
/* 7351C 8007C1EC 8C82008C */  lw         $v0, 0x8C($a0)
/* 73520 8007C1F0 03E00008 */  jr         $ra
/* 73524 8007C1F4 00000000 */   nop

glabel func_8007C1F8
/* 73528 8007C1F8 8C820078 */  lw         $v0, 0x78($a0)
/* 7352C 8007C1FC 03E00008 */  jr         $ra
/* 73530 8007C200 00000000 */   nop

glabel func_8007C204
/* 73534 8007C204 8C820074 */  lw         $v0, 0x74($a0)
/* 73538 8007C208 03E00008 */  jr         $ra
/* 7353C 8007C20C 00000000 */   nop

glabel func_8007C210
/* 73540 8007C210 8C820070 */  lw         $v0, 0x70($a0)
/* 73544 8007C214 03E00008 */  jr         $ra
/* 73548 8007C218 00000000 */   nop

glabel func_8007C21C
/* 7354C 8007C21C 8C82006C */  lw         $v0, 0x6C($a0)
/* 73550 8007C220 03E00008 */  jr         $ra
/* 73554 8007C224 00000000 */   nop

glabel func_8007C228
/* 73558 8007C228 8C820070 */  lw         $v0, 0x70($a0)
/* 7355C 8007C22C 8C42000C */  lw         $v0, 0xC($v0)
/* 73560 8007C230 03E00008 */  jr         $ra
/* 73564 8007C234 30422000 */   andi      $v0, $v0, 0x2000

glabel func_8007C238
/* 73568 8007C238 8C820000 */  lw         $v0, 0x0($a0)
/* 7356C 8007C23C 03E00008 */  jr         $ra
/* 73570 8007C240 30420008 */   andi      $v0, $v0, 0x8

glabel func_8007C244
/* 73574 8007C244 8C820000 */  lw         $v0, 0x0($a0)
/* 73578 8007C248 03E00008 */  jr         $ra
/* 7357C 8007C24C 30420002 */   andi      $v0, $v0, 0x2

glabel func_8007C250
/* 73580 8007C250 8C820000 */  lw         $v0, 0x0($a0)
/* 73584 8007C254 03E00008 */  jr         $ra
/* 73588 8007C258 30420001 */   andi      $v0, $v0, 0x1

glabel func_8007C25C
/* 7358C 8007C25C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73590 8007C260 AFBF0010 */  sw         $ra, 0x10($sp)
/* 73594 8007C264 0C01F72E */  jal        func_8007DCB8
/* 73598 8007C268 00000000 */   nop
/* 7359C 8007C26C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 735A0 8007C270 03E00008 */  jr         $ra
/* 735A4 8007C274 27BD0018 */   addiu     $sp, $sp, 0x18
