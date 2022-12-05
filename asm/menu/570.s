.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_80106980
/* 124A70 80106980 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 124A74 80106984 AFB00010 */  sw         $s0, 0x10($sp)
/* 124A78 80106988 AFBF0014 */  sw         $ra, 0x14($sp)
/* 124A7C 8010698C 0C0401D8 */  jal        func_menu_80100760
/* 124A80 80106990 00808021 */   addu      $s0, $a0, $zero
/* 124A84 80106994 26040368 */  addiu      $a0, $s0, 0x368
/* 124A88 80106998 3C02800D */  lui        $v0, %hi(D_menu_800CE240)
/* 124A8C 8010699C 2442E240 */  addiu      $v0, $v0, %lo(D_menu_800CE240)
/* 124A90 801069A0 0C047BA4 */  jal        func_menu_8011EE90
/* 124A94 801069A4 AE020000 */   sw        $v0, 0x0($s0)
/* 124A98 801069A8 0C047BA4 */  jal        func_menu_8011EE90
/* 124A9C 801069AC 260403C4 */   addiu     $a0, $s0, 0x3C4
/* 124AA0 801069B0 0C047BA4 */  jal        func_menu_8011EE90
/* 124AA4 801069B4 26040420 */   addiu     $a0, $s0, 0x420
/* 124AA8 801069B8 0C047CA8 */  jal        func_menu_8011F2A0
/* 124AAC 801069BC 2604047C */   addiu     $a0, $s0, 0x47C
/* 124AB0 801069C0 0C040F38 */  jal        func_menu_80103CE0
/* 124AB4 801069C4 260404F4 */   addiu     $a0, $s0, 0x4F4
/* 124AB8 801069C8 0C040F38 */  jal        func_menu_80103CE0
/* 124ABC 801069CC 260407E4 */   addiu     $a0, $s0, 0x7E4
/* 124AC0 801069D0 0C040F38 */  jal        func_menu_80103CE0
/* 124AC4 801069D4 26040AD4 */   addiu     $a0, $s0, 0xAD4
/* 124AC8 801069D8 0C040F38 */  jal        func_menu_80103CE0
/* 124ACC 801069DC 26040DC4 */   addiu     $a0, $s0, 0xDC4
/* 124AD0 801069E0 0C040F38 */  jal        func_menu_80103CE0
/* 124AD4 801069E4 260410B4 */   addiu     $a0, $s0, 0x10B4
/* 124AD8 801069E8 0C040F38 */  jal        func_menu_80103CE0
/* 124ADC 801069EC 260413A4 */   addiu     $a0, $s0, 0x13A4
/* 124AE0 801069F0 0C040F38 */  jal        func_menu_80103CE0
/* 124AE4 801069F4 26041694 */   addiu     $a0, $s0, 0x1694
/* 124AE8 801069F8 0C040F38 */  jal        func_menu_80103CE0
/* 124AEC 801069FC 26041984 */   addiu     $a0, $s0, 0x1984
/* 124AF0 80106A00 0C040F38 */  jal        func_menu_80103CE0
/* 124AF4 80106A04 26041C74 */   addiu     $a0, $s0, 0x1C74
/* 124AF8 80106A08 0C040F38 */  jal        func_menu_80103CE0
/* 124AFC 80106A0C 26041F64 */   addiu     $a0, $s0, 0x1F64
/* 124B00 80106A10 0C040F38 */  jal        func_menu_80103CE0
/* 124B04 80106A14 26042254 */   addiu     $a0, $s0, 0x2254
/* 124B08 80106A18 0C047DD8 */  jal        func_menu_8011F760
/* 124B0C 80106A1C 26042544 */   addiu     $a0, $s0, 0x2544
/* 124B10 80106A20 0C040207 */  jal        func_menu_8010081C
/* 124B14 80106A24 02002021 */   addu      $a0, $s0, $zero
/* 124B18 80106A28 02001021 */  addu       $v0, $s0, $zero
/* 124B1C 80106A2C AC4025BC */  sw         $zero, 0x25BC($v0)
/* 124B20 80106A30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 124B24 80106A34 8FB00010 */  lw         $s0, 0x10($sp)
/* 124B28 80106A38 03E00008 */  jr         $ra
/* 124B2C 80106A3C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80106A40
/* 124B30 80106A40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 124B34 80106A44 AFB00010 */  sw         $s0, 0x10($sp)
/* 124B38 80106A48 00808021 */  addu       $s0, $a0, $zero
/* 124B3C 80106A4C AFB10014 */  sw         $s1, 0x14($sp)
/* 124B40 80106A50 00A08821 */  addu       $s1, $a1, $zero
/* 124B44 80106A54 3C02800D */  lui        $v0, %hi(D_menu_800CE240)
/* 124B48 80106A58 2442E240 */  addiu      $v0, $v0, %lo(D_menu_800CE240)
/* 124B4C 80106A5C AFBF0018 */  sw         $ra, 0x18($sp)
/* 124B50 80106A60 0C041B89 */  jal        func_menu_80106E24
/* 124B54 80106A64 AE020000 */   sw        $v0, 0x0($s0)
/* 124B58 80106A68 26042544 */  addiu      $a0, $s0, 0x2544
/* 124B5C 80106A6C 0C047DE7 */  jal        func_menu_8011F79C
/* 124B60 80106A70 24050002 */   addiu     $a1, $zero, 0x2
/* 124B64 80106A74 26042254 */  addiu      $a0, $s0, 0x2254
/* 124B68 80106A78 0C040F4B */  jal        func_menu_80103D2C
/* 124B6C 80106A7C 24050002 */   addiu     $a1, $zero, 0x2
/* 124B70 80106A80 26041F64 */  addiu      $a0, $s0, 0x1F64
/* 124B74 80106A84 0C040F4B */  jal        func_menu_80103D2C
/* 124B78 80106A88 24050002 */   addiu     $a1, $zero, 0x2
/* 124B7C 80106A8C 26041C74 */  addiu      $a0, $s0, 0x1C74
/* 124B80 80106A90 0C040F4B */  jal        func_menu_80103D2C
/* 124B84 80106A94 24050002 */   addiu     $a1, $zero, 0x2
/* 124B88 80106A98 26041984 */  addiu      $a0, $s0, 0x1984
/* 124B8C 80106A9C 0C040F4B */  jal        func_menu_80103D2C
/* 124B90 80106AA0 24050002 */   addiu     $a1, $zero, 0x2
/* 124B94 80106AA4 26041694 */  addiu      $a0, $s0, 0x1694
/* 124B98 80106AA8 0C040F4B */  jal        func_menu_80103D2C
/* 124B9C 80106AAC 24050002 */   addiu     $a1, $zero, 0x2
/* 124BA0 80106AB0 260413A4 */  addiu      $a0, $s0, 0x13A4
/* 124BA4 80106AB4 0C040F4B */  jal        func_menu_80103D2C
/* 124BA8 80106AB8 24050002 */   addiu     $a1, $zero, 0x2
/* 124BAC 80106ABC 260410B4 */  addiu      $a0, $s0, 0x10B4
/* 124BB0 80106AC0 0C040F4B */  jal        func_menu_80103D2C
/* 124BB4 80106AC4 24050002 */   addiu     $a1, $zero, 0x2
/* 124BB8 80106AC8 26040DC4 */  addiu      $a0, $s0, 0xDC4
/* 124BBC 80106ACC 0C040F4B */  jal        func_menu_80103D2C
/* 124BC0 80106AD0 24050002 */   addiu     $a1, $zero, 0x2
/* 124BC4 80106AD4 26040AD4 */  addiu      $a0, $s0, 0xAD4
/* 124BC8 80106AD8 0C040F4B */  jal        func_menu_80103D2C
/* 124BCC 80106ADC 24050002 */   addiu     $a1, $zero, 0x2
/* 124BD0 80106AE0 260407E4 */  addiu      $a0, $s0, 0x7E4
/* 124BD4 80106AE4 0C040F4B */  jal        func_menu_80103D2C
/* 124BD8 80106AE8 24050002 */   addiu     $a1, $zero, 0x2
/* 124BDC 80106AEC 260404F4 */  addiu      $a0, $s0, 0x4F4
/* 124BE0 80106AF0 0C040F4B */  jal        func_menu_80103D2C
/* 124BE4 80106AF4 24050002 */   addiu     $a1, $zero, 0x2
/* 124BE8 80106AF8 2604047C */  addiu      $a0, $s0, 0x47C
/* 124BEC 80106AFC 0C047CB9 */  jal        func_menu_8011F2E4
/* 124BF0 80106B00 24050002 */   addiu     $a1, $zero, 0x2
/* 124BF4 80106B04 26040420 */  addiu      $a0, $s0, 0x420
/* 124BF8 80106B08 0C047BB3 */  jal        func_menu_8011EECC
/* 124BFC 80106B0C 24050002 */   addiu     $a1, $zero, 0x2
/* 124C00 80106B10 260403C4 */  addiu      $a0, $s0, 0x3C4
/* 124C04 80106B14 0C047BB3 */  jal        func_menu_8011EECC
/* 124C08 80106B18 24050002 */   addiu     $a1, $zero, 0x2
/* 124C0C 80106B1C 26040368 */  addiu      $a0, $s0, 0x368
/* 124C10 80106B20 0C047BB3 */  jal        func_menu_8011EECC
/* 124C14 80106B24 24050002 */   addiu     $a1, $zero, 0x2
/* 124C18 80106B28 02002021 */  addu       $a0, $s0, $zero
/* 124C1C 80106B2C 0C0401EF */  jal        func_menu_801007BC
/* 124C20 80106B30 02202821 */   addu      $a1, $s1, $zero
/* 124C24 80106B34 8FBF0018 */  lw         $ra, 0x18($sp)
/* 124C28 80106B38 8FB10014 */  lw         $s1, 0x14($sp)
/* 124C2C 80106B3C 8FB00010 */  lw         $s0, 0x10($sp)
/* 124C30 80106B40 03E00008 */  jr         $ra
/* 124C34 80106B44 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80106B48
/* 124C38 80106B48 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 124C3C 80106B4C AFB00028 */  sw         $s0, 0x28($sp)
/* 124C40 80106B50 00808021 */  addu       $s0, $a0, $zero
/* 124C44 80106B54 26050368 */  addiu      $a1, $s0, 0x368
/* 124C48 80106B58 24060052 */  addiu      $a2, $zero, 0x52
/* 124C4C 80106B5C 00C03821 */  addu       $a3, $a2, $zero
/* 124C50 80106B60 AFBF0030 */  sw         $ra, 0x30($sp)
/* 124C54 80106B64 0C04675B */  jal        func_menu_80119D6C
/* 124C58 80106B68 AFB1002C */   sw        $s1, 0x2C($sp)
/* 124C5C 80106B6C 02002021 */  addu       $a0, $s0, $zero
/* 124C60 80106B70 2611047C */  addiu      $s1, $s0, 0x47C
/* 124C64 80106B74 02202821 */  addu       $a1, $s1, $zero
/* 124C68 80106B78 24060043 */  addiu      $a2, $zero, 0x43
/* 124C6C 80106B7C 00C03821 */  addu       $a3, $a2, $zero
/* 124C70 80106B80 24020008 */  addiu      $v0, $zero, 0x8
/* 124C74 80106B84 0C04679E */  jal        func_menu_80119E78
/* 124C78 80106B88 AFA20010 */   sw        $v0, 0x10($sp)
/* 124C7C 80106B8C 02002021 */  addu       $a0, $s0, $zero
/* 124C80 80106B90 26052544 */  addiu      $a1, $s0, 0x2544
/* 124C84 80106B94 24060150 */  addiu      $a2, $zero, 0x150
/* 124C88 80106B98 24070040 */  addiu      $a3, $zero, 0x40
/* 124C8C 80106B9C 24020037 */  addiu      $v0, $zero, 0x37
/* 124C90 80106BA0 0C04679E */  jal        func_menu_80119E78
/* 124C94 80106BA4 AFA20010 */   sw        $v0, 0x10($sp)
/* 124C98 80106BA8 02002021 */  addu       $a0, $s0, $zero
/* 124C9C 80106BAC 260504F4 */  addiu      $a1, $s0, 0x4F4
/* 124CA0 80106BB0 24060154 */  addiu      $a2, $zero, 0x154
/* 124CA4 80106BB4 2407004B */  addiu      $a3, $zero, 0x4B
/* 124CA8 80106BB8 24020031 */  addiu      $v0, $zero, 0x31
/* 124CAC 80106BBC 0C040297 */  jal        func_menu_80100A5C
/* 124CB0 80106BC0 AFA20010 */   sw        $v0, 0x10($sp)
/* 124CB4 80106BC4 02002021 */  addu       $a0, $s0, $zero
/* 124CB8 80106BC8 260507E4 */  addiu      $a1, $s0, 0x7E4
/* 124CBC 80106BCC 24060155 */  addiu      $a2, $zero, 0x155
/* 124CC0 80106BD0 2407004B */  addiu      $a3, $zero, 0x4B
/* 124CC4 80106BD4 24020032 */  addiu      $v0, $zero, 0x32
/* 124CC8 80106BD8 0C040297 */  jal        func_menu_80100A5C
/* 124CCC 80106BDC AFA20010 */   sw        $v0, 0x10($sp)
/* 124CD0 80106BE0 02002021 */  addu       $a0, $s0, $zero
/* 124CD4 80106BE4 26050AD4 */  addiu      $a1, $s0, 0xAD4
/* 124CD8 80106BE8 24060156 */  addiu      $a2, $zero, 0x156
/* 124CDC 80106BEC 2407004B */  addiu      $a3, $zero, 0x4B
/* 124CE0 80106BF0 24020033 */  addiu      $v0, $zero, 0x33
/* 124CE4 80106BF4 0C040297 */  jal        func_menu_80100A5C
/* 124CE8 80106BF8 AFA20010 */   sw        $v0, 0x10($sp)
/* 124CEC 80106BFC 02002021 */  addu       $a0, $s0, $zero
/* 124CF0 80106C00 26050DC4 */  addiu      $a1, $s0, 0xDC4
/* 124CF4 80106C04 24060157 */  addiu      $a2, $zero, 0x157
/* 124CF8 80106C08 2407004B */  addiu      $a3, $zero, 0x4B
/* 124CFC 80106C0C 24020034 */  addiu      $v0, $zero, 0x34
/* 124D00 80106C10 0C040297 */  jal        func_menu_80100A5C
/* 124D04 80106C14 AFA20010 */   sw        $v0, 0x10($sp)
/* 124D08 80106C18 02002021 */  addu       $a0, $s0, $zero
/* 124D0C 80106C1C 260510B4 */  addiu      $a1, $s0, 0x10B4
/* 124D10 80106C20 240600F7 */  addiu      $a2, $zero, 0xF7
/* 124D14 80106C24 2407004B */  addiu      $a3, $zero, 0x4B
/* 124D18 80106C28 24020030 */  addiu      $v0, $zero, 0x30
/* 124D1C 80106C2C 0C040297 */  jal        func_menu_80100A5C
/* 124D20 80106C30 AFA20010 */   sw        $v0, 0x10($sp)
/* 124D24 80106C34 02202021 */  addu       $a0, $s1, $zero
/* 124D28 80106C38 0C047D63 */  jal        func_menu_8011F58C
/* 124D2C 80106C3C 2405001E */   addiu     $a1, $zero, 0x1E
/* 124D30 80106C40 02002021 */  addu       $a0, $s0, $zero
/* 124D34 80106C44 260513A4 */  addiu      $a1, $s0, 0x13A4
/* 124D38 80106C48 24060048 */  addiu      $a2, $zero, 0x48
/* 124D3C 80106C4C 2407004E */  addiu      $a3, $zero, 0x4E
/* 124D40 80106C50 2402001F */  addiu      $v0, $zero, 0x1F
/* 124D44 80106C54 0C040297 */  jal        func_menu_80100A5C
/* 124D48 80106C58 AFA20010 */   sw        $v0, 0x10($sp)
/* 124D4C 80106C5C 8E0804AC */  lw         $t0, 0x4AC($s0)
/* 124D50 80106C60 8E0904B0 */  lw         $t1, 0x4B0($s0)
/* 124D54 80106C64 8E0A04B4 */  lw         $t2, 0x4B4($s0)
/* 124D58 80106C68 8E0B04B8 */  lw         $t3, 0x4B8($s0)
/* 124D5C 80106C6C AFA80018 */  sw         $t0, 0x18($sp)
/* 124D60 80106C70 AFA9001C */  sw         $t1, 0x1C($sp)
/* 124D64 80106C74 AFAA0020 */  sw         $t2, 0x20($sp)
/* 124D68 80106C78 AFAB0024 */  sw         $t3, 0x24($sp)
/* 124D6C 80106C7C 8FA20020 */  lw         $v0, 0x20($sp)
/* 124D70 80106C80 8FA30018 */  lw         $v1, 0x18($sp)
/* 124D74 80106C84 00431023 */  subu       $v0, $v0, $v1
/* 124D78 80106C88 284201C1 */  slti       $v0, $v0, 0x1C1
/* 124D7C 80106C8C 14400005 */  bnez       $v0, .Lmenu_80106CA4
/* 124D80 80106C90 27A50018 */   addiu     $a1, $sp, 0x18
/* 124D84 80106C94 24020020 */  addiu      $v0, $zero, 0x20
/* 124D88 80106C98 AFA20018 */  sw         $v0, 0x18($sp)
/* 124D8C 80106C9C 0C04936A */  jal        func_menu_80124DA8
/* 124D90 80106CA0 02202021 */   addu      $a0, $s1, $zero
.Lmenu_80106CA4:
/* 124D94 80106CA4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 124D98 80106CA8 8FB1002C */  lw         $s1, 0x2C($sp)
/* 124D9C 80106CAC 8FB00028 */  lw         $s0, 0x28($sp)
/* 124DA0 80106CB0 03E00008 */  jr         $ra
/* 124DA4 80106CB4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_80106CB8
/* 124DA8 80106CB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 124DAC 80106CBC AFB00010 */  sw         $s0, 0x10($sp)
/* 124DB0 80106CC0 00808021 */  addu       $s0, $a0, $zero
/* 124DB4 80106CC4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 124DB8 80106CC8 AFB20018 */  sw         $s2, 0x18($sp)
/* 124DBC 80106CCC AFB10014 */  sw         $s1, 0x14($sp)
/* 124DC0 80106CD0 8E020354 */  lw         $v0, 0x354($s0)
/* 124DC4 80106CD4 00009021 */  addu       $s2, $zero, $zero
/* 124DC8 80106CD8 AE0025BC */  sw         $zero, 0x25BC($s0)
/* 124DCC 80106CDC 24510BF4 */  addiu      $s1, $v0, 0xBF4
/* 124DD0 80106CE0 0C04977A */  jal        func_menu_80125DE8
/* 124DD4 80106CE4 02202021 */   addu      $a0, $s1, $zero
/* 124DD8 80106CE8 02202021 */  addu       $a0, $s1, $zero
/* 124DDC 80106CEC 0C049783 */  jal        func_menu_80125E0C
/* 124DE0 80106CF0 24050003 */   addiu     $a1, $zero, 0x3
/* 124DE4 80106CF4 14400005 */  bnez       $v0, .Lmenu_80106D0C
/* 124DE8 80106CF8 26040DC4 */   addiu     $a0, $s0, 0xDC4
/* 124DEC 80106CFC 0C048D07 */  jal        func_menu_8012341C
/* 124DF0 80106D00 24050005 */   addiu     $a1, $zero, 0x5
/* 124DF4 80106D04 08041B47 */  j          .Lmenu_80106D1C
/* 124DF8 80106D08 02202021 */   addu      $a0, $s1, $zero
.Lmenu_80106D0C:
/* 124DFC 80106D0C 0C048D3F */  jal        func_menu_801234FC
/* 124E00 80106D10 24050005 */   addiu     $a1, $zero, 0x5
/* 124E04 80106D14 24120001 */  addiu      $s2, $zero, 0x1
/* 124E08 80106D18 02202021 */  addu       $a0, $s1, $zero
.Lmenu_80106D1C:
/* 124E0C 80106D1C 0C049783 */  jal        func_menu_80125E0C
/* 124E10 80106D20 24050002 */   addiu     $a1, $zero, 0x2
/* 124E14 80106D24 14400005 */  bnez       $v0, .Lmenu_80106D3C
/* 124E18 80106D28 26040AD4 */   addiu     $a0, $s0, 0xAD4
/* 124E1C 80106D2C 0C048D07 */  jal        func_menu_8012341C
/* 124E20 80106D30 24050005 */   addiu     $a1, $zero, 0x5
/* 124E24 80106D34 08041B53 */  j          .Lmenu_80106D4C
/* 124E28 80106D38 02202021 */   addu      $a0, $s1, $zero
.Lmenu_80106D3C:
/* 124E2C 80106D3C 0C048D3F */  jal        func_menu_801234FC
/* 124E30 80106D40 24050005 */   addiu     $a1, $zero, 0x5
/* 124E34 80106D44 24120001 */  addiu      $s2, $zero, 0x1
/* 124E38 80106D48 02202021 */  addu       $a0, $s1, $zero
.Lmenu_80106D4C:
/* 124E3C 80106D4C 0C049783 */  jal        func_menu_80125E0C
/* 124E40 80106D50 24050001 */   addiu     $a1, $zero, 0x1
/* 124E44 80106D54 14400005 */  bnez       $v0, .Lmenu_80106D6C
/* 124E48 80106D58 260407E4 */   addiu     $a0, $s0, 0x7E4
/* 124E4C 80106D5C 0C048D07 */  jal        func_menu_8012341C
/* 124E50 80106D60 24050005 */   addiu     $a1, $zero, 0x5
/* 124E54 80106D64 08041B5F */  j          .Lmenu_80106D7C
/* 124E58 80106D68 02202021 */   addu      $a0, $s1, $zero
.Lmenu_80106D6C:
/* 124E5C 80106D6C 0C048D3F */  jal        func_menu_801234FC
/* 124E60 80106D70 24050005 */   addiu     $a1, $zero, 0x5
/* 124E64 80106D74 24120001 */  addiu      $s2, $zero, 0x1
/* 124E68 80106D78 02202021 */  addu       $a0, $s1, $zero
.Lmenu_80106D7C:
/* 124E6C 80106D7C 0C049783 */  jal        func_menu_80125E0C
/* 124E70 80106D80 00002821 */   addu      $a1, $zero, $zero
/* 124E74 80106D84 14400005 */  bnez       $v0, .Lmenu_80106D9C
/* 124E78 80106D88 260404F4 */   addiu     $a0, $s0, 0x4F4
/* 124E7C 80106D8C 0C048D07 */  jal        func_menu_8012341C
/* 124E80 80106D90 24050005 */   addiu     $a1, $zero, 0x5
/* 124E84 80106D94 08041B6A */  j          .Lmenu_80106DA8
/* 124E88 80106D98 00000000 */   nop
.Lmenu_80106D9C:
/* 124E8C 80106D9C 0C048D3F */  jal        func_menu_801234FC
/* 124E90 80106DA0 24050005 */   addiu     $a1, $zero, 0x5
/* 124E94 80106DA4 24120001 */  addiu      $s2, $zero, 0x1
.Lmenu_80106DA8:
/* 124E98 80106DA8 16400007 */  bnez       $s2, .Lmenu_80106DC8
/* 124E9C 80106DAC 26042544 */   addiu     $a0, $s0, 0x2544
/* 124EA0 80106DB0 260410B4 */  addiu      $a0, $s0, 0x10B4
/* 124EA4 80106DB4 0C048D3F */  jal        func_menu_801234FC
/* 124EA8 80106DB8 24050005 */   addiu     $a1, $zero, 0x5
/* 124EAC 80106DBC 26042544 */  addiu      $a0, $s0, 0x2544
/* 124EB0 80106DC0 08041B73 */  j          .Lmenu_80106DCC
/* 124EB4 80106DC4 240500CD */   addiu     $a1, $zero, 0xCD
.Lmenu_80106DC8:
/* 124EB8 80106DC8 24050037 */  addiu      $a1, $zero, 0x37
.Lmenu_80106DCC:
/* 124EBC 80106DCC 0C047D09 */  jal        func_menu_8011F424
/* 124EC0 80106DD0 24060001 */   addiu     $a2, $zero, 0x1
/* 124EC4 80106DD4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 124EC8 80106DD8 8FB20018 */  lw         $s2, 0x18($sp)
/* 124ECC 80106DDC 8FB10014 */  lw         $s1, 0x14($sp)
/* 124ED0 80106DE0 8FB00010 */  lw         $s0, 0x10($sp)
/* 124ED4 80106DE4 03E00008 */  jr         $ra
/* 124ED8 80106DE8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80106DEC
/* 124EDC 80106DEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 124EE0 80106DF0 AFB00010 */  sw         $s0, 0x10($sp)
/* 124EE4 80106DF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 124EE8 80106DF8 0C040214 */  jal        func_menu_80100850
/* 124EEC 80106DFC 00808021 */   addu      $s0, $a0, $zero
/* 124EF0 80106E00 10400004 */  beqz       $v0, .Lmenu_80106E14
/* 124EF4 80106E04 00001021 */   addu      $v0, $zero, $zero
/* 124EF8 80106E08 0C041B2E */  jal        func_menu_80106CB8
/* 124EFC 80106E0C 02002021 */   addu      $a0, $s0, $zero
/* 124F00 80106E10 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_80106E14:
/* 124F04 80106E14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 124F08 80106E18 8FB00010 */  lw         $s0, 0x10($sp)
/* 124F0C 80106E1C 03E00008 */  jr         $ra
/* 124F10 80106E20 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80106E24
/* 124F14 80106E24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 124F18 80106E28 AFBF0010 */  sw         $ra, 0x10($sp)
/* 124F1C 80106E2C 8C820004 */  lw         $v0, 0x4($a0)
/* 124F20 80106E30 10400006 */  beqz       $v0, .Lmenu_80106E4C
/* 124F24 80106E34 24020001 */   addiu     $v0, $zero, 0x1
/* 124F28 80106E38 8C8300C4 */  lw         $v1, 0xC4($a0)
/* 124F2C 80106E3C 0C040232 */  jal        func_menu_801008C8
/* 124F30 80106E40 A0620041 */   sb        $v0, 0x41($v1)
/* 124F34 80106E44 08041B94 */  j          .Lmenu_80106E50
/* 124F38 80106E48 00000000 */   nop
.Lmenu_80106E4C:
/* 124F3C 80106E4C 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_80106E50:
/* 124F40 80106E50 8FBF0010 */  lw         $ra, 0x10($sp)
/* 124F44 80106E54 03E00008 */  jr         $ra
/* 124F48 80106E58 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80106E5C
/* 124F4C 80106E5C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 124F50 80106E60 AFB20020 */  sw         $s2, 0x20($sp)
/* 124F54 80106E64 00809021 */  addu       $s2, $a0, $zero
/* 124F58 80106E68 AFB30024 */  sw         $s3, 0x24($sp)
/* 124F5C 80106E6C 00A09821 */  addu       $s3, $a1, $zero
/* 124F60 80106E70 264204F4 */  addiu      $v0, $s2, 0x4F4
/* 124F64 80106E74 AFBF0028 */  sw         $ra, 0x28($sp)
/* 124F68 80106E78 AFB1001C */  sw         $s1, 0x1C($sp)
/* 124F6C 80106E7C 16620005 */  bne        $s3, $v0, .Lmenu_80106E94
/* 124F70 80106E80 AFB00018 */   sw        $s0, 0x18($sp)
/* 124F74 80106E84 8E420354 */  lw         $v0, 0x354($s2)
/* 124F78 80106E88 AC404620 */  sw         $zero, 0x4620($v0)
/* 124F7C 80106E8C 08041BE3 */  j          .Lmenu_80106F8C
/* 124F80 80106E90 2402000F */   addiu     $v0, $zero, 0xF
.Lmenu_80106E94:
/* 124F84 80106E94 264207E4 */  addiu      $v0, $s2, 0x7E4
/* 124F88 80106E98 16620008 */  bne        $s3, $v0, .Lmenu_80106EBC
/* 124F8C 80106E9C 26420AD4 */   addiu     $v0, $s2, 0xAD4
/* 124F90 80106EA0 8E420354 */  lw         $v0, 0x354($s2)
/* 124F94 80106EA4 24030001 */  addiu      $v1, $zero, 0x1
/* 124F98 80106EA8 AC434620 */  sw         $v1, 0x4620($v0)
/* 124F9C 80106EAC 2402000F */  addiu      $v0, $zero, 0xF
/* 124FA0 80106EB0 A6420360 */  sh         $v0, 0x360($s2)
/* 124FA4 80106EB4 08041BEC */  j          .Lmenu_80106FB0
/* 124FA8 80106EB8 AE430364 */   sw        $v1, 0x364($s2)
.Lmenu_80106EBC:
/* 124FAC 80106EBC 56620006 */  bnel       $s3, $v0, .Lmenu_80106ED8
/* 124FB0 80106EC0 26420DC4 */   addiu     $v0, $s2, 0xDC4
/* 124FB4 80106EC4 8E430354 */  lw         $v1, 0x354($s2)
/* 124FB8 80106EC8 24020002 */  addiu      $v0, $zero, 0x2
/* 124FBC 80106ECC AC624620 */  sw         $v0, 0x4620($v1)
/* 124FC0 80106ED0 08041BE3 */  j          .Lmenu_80106F8C
/* 124FC4 80106ED4 2402000F */   addiu     $v0, $zero, 0xF
.Lmenu_80106ED8:
/* 124FC8 80106ED8 56620006 */  bnel       $s3, $v0, .Lmenu_80106EF4
/* 124FCC 80106EDC 264210B4 */   addiu     $v0, $s2, 0x10B4
/* 124FD0 80106EE0 8E430354 */  lw         $v1, 0x354($s2)
/* 124FD4 80106EE4 24020003 */  addiu      $v0, $zero, 0x3
/* 124FD8 80106EE8 AC624620 */  sw         $v0, 0x4620($v1)
/* 124FDC 80106EEC 08041BE3 */  j          .Lmenu_80106F8C
/* 124FE0 80106EF0 2402000F */   addiu     $v0, $zero, 0xF
.Lmenu_80106EF4:
/* 124FE4 80106EF4 56620006 */  bnel       $s3, $v0, .Lmenu_80106F10
/* 124FE8 80106EF8 264213A4 */   addiu     $v0, $s2, 0x13A4
/* 124FEC 80106EFC 8E430354 */  lw         $v1, 0x354($s2)
/* 124FF0 80106F00 24020004 */  addiu      $v0, $zero, 0x4
/* 124FF4 80106F04 AC624620 */  sw         $v0, 0x4620($v1)
/* 124FF8 80106F08 08041BE3 */  j          .Lmenu_80106F8C
/* 124FFC 80106F0C 2402000F */   addiu     $v0, $zero, 0xF
.Lmenu_80106F10:
/* 125000 80106F10 16620018 */  bne        $s3, $v0, .Lmenu_80106F74
/* 125004 80106F14 26421C74 */   addiu     $v0, $s2, 0x1C74
/* 125008 80106F18 02402021 */  addu       $a0, $s2, $zero
/* 12500C 80106F1C 26511C74 */  addiu      $s1, $s2, 0x1C74
/* 125010 80106F20 02202821 */  addu       $a1, $s1, $zero
/* 125014 80106F24 240600A1 */  addiu      $a2, $zero, 0xA1
/* 125018 80106F28 2407004F */  addiu      $a3, $zero, 0x4F
/* 12501C 80106F2C 24020073 */  addiu      $v0, $zero, 0x73
/* 125020 80106F30 0C040297 */  jal        func_menu_80100A5C
/* 125024 80106F34 AFA20010 */   sw        $v0, 0x10($sp)
/* 125028 80106F38 02402021 */  addu       $a0, $s2, $zero
/* 12502C 80106F3C 26501F64 */  addiu      $s0, $s2, 0x1F64
/* 125030 80106F40 02002821 */  addu       $a1, $s0, $zero
/* 125034 80106F44 240600A1 */  addiu      $a2, $zero, 0xA1
/* 125038 80106F48 2407004E */  addiu      $a3, $zero, 0x4E
/* 12503C 80106F4C 24020074 */  addiu      $v0, $zero, 0x74
/* 125040 80106F50 0C040297 */  jal        func_menu_80100A5C
/* 125044 80106F54 AFA20010 */   sw        $v0, 0x10($sp)
/* 125048 80106F58 02402021 */  addu       $a0, $s2, $zero
/* 12504C 80106F5C 02202821 */  addu       $a1, $s1, $zero
/* 125050 80106F60 02003021 */  addu       $a2, $s0, $zero
/* 125054 80106F64 0C046B48 */  jal        func_menu_8011AD20
/* 125058 80106F68 24070077 */   addiu     $a3, $zero, 0x77
/* 12505C 80106F6C 08041BED */  j          .Lmenu_80106FB4
/* 125060 80106F70 AE53035C */   sw        $s3, 0x35C($s2)
.Lmenu_80106F74:
/* 125064 80106F74 16620009 */  bne        $s3, $v0, .Lmenu_80106F9C
/* 125068 80106F78 26421F64 */   addiu     $v0, $s2, 0x1F64
/* 12506C 80106F7C 8E440284 */  lw         $a0, 0x284($s2)
/* 125070 80106F80 0C045449 */  jal        func_menu_80115124
/* 125074 80106F84 00000000 */   nop
/* 125078 80106F88 24020003 */  addiu      $v0, $zero, 0x3
.Lmenu_80106F8C:
/* 12507C 80106F8C A6420360 */  sh         $v0, 0x360($s2)
/* 125080 80106F90 24020001 */  addiu      $v0, $zero, 0x1
/* 125084 80106F94 08041BEC */  j          .Lmenu_80106FB0
/* 125088 80106F98 AE420364 */   sw        $v0, 0x364($s2)
.Lmenu_80106F9C:
/* 12508C 80106F9C 56620005 */  bnel       $s3, $v0, .Lmenu_80106FB4
/* 125090 80106FA0 AE53035C */   sw        $s3, 0x35C($s2)
/* 125094 80106FA4 8E440284 */  lw         $a0, 0x284($s2)
/* 125098 80106FA8 0C045449 */  jal        func_menu_80115124
/* 12509C 80106FAC 00000000 */   nop
.Lmenu_80106FB0:
/* 1250A0 80106FB0 AE53035C */  sw         $s3, 0x35C($s2)
.Lmenu_80106FB4:
/* 1250A4 80106FB4 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1250A8 80106FB8 8FB30024 */  lw         $s3, 0x24($sp)
/* 1250AC 80106FBC 8FB20020 */  lw         $s2, 0x20($sp)
/* 1250B0 80106FC0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1250B4 80106FC4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1250B8 80106FC8 03E00008 */  jr         $ra
/* 1250BC 80106FCC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_80106FD0
/* 1250C0 80106FD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1250C4 80106FD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1250C8 80106FD8 00808021 */  addu       $s0, $a0, $zero
/* 1250CC 80106FDC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1250D0 80106FE0 96030360 */  lhu        $v1, 0x360($s0)
/* 1250D4 80106FE4 24020003 */  addiu      $v0, $zero, 0x3
/* 1250D8 80106FE8 10620005 */  beq        $v1, $v0, .Lmenu_80107000
/* 1250DC 80106FEC 2402000F */   addiu     $v0, $zero, 0xF
/* 1250E0 80106FF0 10620008 */  beq        $v1, $v0, .Lmenu_80107014
/* 1250E4 80106FF4 00000000 */   nop
/* 1250E8 80106FF8 08041C1B */  j          .Lmenu_8010706C
/* 1250EC 80106FFC 00000000 */   nop
.Lmenu_80107000:
/* 1250F0 80107000 8E040354 */  lw         $a0, 0x354($s0)
/* 1250F4 80107004 0C0401B4 */  jal        func_menu_801006D0
/* 1250F8 80107008 24840004 */   addiu     $a0, $a0, 0x4
/* 1250FC 8010700C 08041C1B */  j          .Lmenu_8010706C
/* 125100 80107010 00000000 */   nop
.Lmenu_80107014:
/* 125104 80107014 8E040354 */  lw         $a0, 0x354($s0)
/* 125108 80107018 0C0401B4 */  jal        func_menu_801006D0
/* 12510C 8010701C 24840004 */   addiu     $a0, $a0, 0x4
/* 125110 80107020 8E040354 */  lw         $a0, 0x354($s0)
/* 125114 80107024 8C824614 */  lw         $v0, 0x4614($a0)
/* 125118 80107028 30420008 */  andi       $v0, $v0, 0x8
/* 12511C 8010702C 14400006 */  bnez       $v0, .Lmenu_80107048
/* 125120 80107030 24050098 */   addiu     $a1, $zero, 0x98
/* 125124 80107034 96050360 */  lhu        $a1, 0x360($s0)
/* 125128 80107038 0C0401A6 */  jal        func_menu_80100698
/* 12512C 8010703C 24840004 */   addiu     $a0, $a0, 0x4
/* 125130 80107040 8E040354 */  lw         $a0, 0x354($s0)
/* 125134 80107044 24050098 */  addiu      $a1, $zero, 0x98
.Lmenu_80107048:
/* 125138 80107048 0C0401A6 */  jal        func_menu_80100698
/* 12513C 8010704C 24840004 */   addiu     $a0, $a0, 0x4
/* 125140 80107050 8E040354 */  lw         $a0, 0x354($s0)
/* 125144 80107054 8C824620 */  lw         $v0, 0x4620($a0)
/* 125148 80107058 2C420004 */  sltiu      $v0, $v0, 0x4
/* 12514C 8010705C 10400003 */  beqz       $v0, .Lmenu_8010706C
/* 125150 80107060 24840004 */   addiu     $a0, $a0, 0x4
/* 125154 80107064 0C0401A6 */  jal        func_menu_80100698
/* 125158 80107068 24050030 */   addiu     $a1, $zero, 0x30
.Lmenu_8010706C:
/* 12515C 8010706C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 125160 80107070 8FB00010 */  lw         $s0, 0x10($sp)
/* 125164 80107074 03E00008 */  jr         $ra
/* 125168 80107078 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010707C
/* 12516C 8010707C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 125170 80107080 AFB10014 */  sw         $s1, 0x14($sp)
/* 125174 80107084 00808821 */  addu       $s1, $a0, $zero
/* 125178 80107088 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12517C 8010708C 00A09821 */  addu       $s3, $a1, $zero
/* 125180 80107090 AFBF0020 */  sw         $ra, 0x20($sp)
/* 125184 80107094 AFB20018 */  sw         $s2, 0x18($sp)
/* 125188 80107098 AFB00010 */  sw         $s0, 0x10($sp)
/* 12518C 8010709C 8E2225BC */  lw         $v0, 0x25BC($s1)
/* 125190 801070A0 00531021 */  addu       $v0, $v0, $s3
/* 125194 801070A4 AE2225BC */  sw         $v0, 0x25BC($s1)
/* 125198 801070A8 2C4202EF */  sltiu      $v0, $v0, 0x2EF
/* 12519C 801070AC 14400041 */  bnez       $v0, .Lmenu_801071B4
/* 1251A0 801070B0 00008021 */   addu      $s0, $zero, $zero
/* 1251A4 801070B4 8E220354 */  lw         $v0, 0x354($s1)
/* 1251A8 801070B8 AE2025BC */  sw         $zero, 0x25BC($s1)
/* 1251AC 801070BC 24520BF4 */  addiu      $s2, $v0, 0xBF4
/* 1251B0 801070C0 0C04977A */  jal        func_menu_80125DE8
/* 1251B4 801070C4 02402021 */   addu      $a0, $s2, $zero
/* 1251B8 801070C8 02402021 */  addu       $a0, $s2, $zero
/* 1251BC 801070CC 0C049783 */  jal        func_menu_80125E0C
/* 1251C0 801070D0 02002821 */   addu      $a1, $s0, $zero
/* 1251C4 801070D4 54400006 */  bnel       $v0, $zero, .Lmenu_801070F0
/* 1251C8 801070D8 24100001 */   addiu     $s0, $zero, 0x1
/* 1251CC 801070DC 262404F4 */  addiu      $a0, $s1, 0x4F4
/* 1251D0 801070E0 0C048D07 */  jal        func_menu_8012341C
/* 1251D4 801070E4 24050005 */   addiu     $a1, $zero, 0x5
/* 1251D8 801070E8 08041C40 */  j          .Lmenu_80107100
/* 1251DC 801070EC 02402021 */   addu      $a0, $s2, $zero
.Lmenu_801070F0:
/* 1251E0 801070F0 262404F4 */  addiu      $a0, $s1, 0x4F4
/* 1251E4 801070F4 0C048CEC */  jal        func_menu_801233B0
/* 1251E8 801070F8 24050005 */   addiu     $a1, $zero, 0x5
/* 1251EC 801070FC 02402021 */  addu       $a0, $s2, $zero
.Lmenu_80107100:
/* 1251F0 80107100 0C049783 */  jal        func_menu_80125E0C
/* 1251F4 80107104 24050001 */   addiu     $a1, $zero, 0x1
/* 1251F8 80107108 54400006 */  bnel       $v0, $zero, .Lmenu_80107124
/* 1251FC 8010710C 26100001 */   addiu     $s0, $s0, 0x1
/* 125200 80107110 262407E4 */  addiu      $a0, $s1, 0x7E4
/* 125204 80107114 0C048D07 */  jal        func_menu_8012341C
/* 125208 80107118 24050005 */   addiu     $a1, $zero, 0x5
/* 12520C 8010711C 08041C4D */  j          .Lmenu_80107134
/* 125210 80107120 02402021 */   addu      $a0, $s2, $zero
.Lmenu_80107124:
/* 125214 80107124 262407E4 */  addiu      $a0, $s1, 0x7E4
/* 125218 80107128 0C048CEC */  jal        func_menu_801233B0
/* 12521C 8010712C 24050005 */   addiu     $a1, $zero, 0x5
/* 125220 80107130 02402021 */  addu       $a0, $s2, $zero
.Lmenu_80107134:
/* 125224 80107134 0C049783 */  jal        func_menu_80125E0C
/* 125228 80107138 24050002 */   addiu     $a1, $zero, 0x2
/* 12522C 8010713C 54400006 */  bnel       $v0, $zero, .Lmenu_80107158
/* 125230 80107140 26100001 */   addiu     $s0, $s0, 0x1
/* 125234 80107144 26240AD4 */  addiu      $a0, $s1, 0xAD4
/* 125238 80107148 0C048D07 */  jal        func_menu_8012341C
/* 12523C 8010714C 24050005 */   addiu     $a1, $zero, 0x5
/* 125240 80107150 08041C5A */  j          .Lmenu_80107168
/* 125244 80107154 02402021 */   addu      $a0, $s2, $zero
.Lmenu_80107158:
/* 125248 80107158 26240AD4 */  addiu      $a0, $s1, 0xAD4
/* 12524C 8010715C 0C048CEC */  jal        func_menu_801233B0
/* 125250 80107160 24050005 */   addiu     $a1, $zero, 0x5
/* 125254 80107164 02402021 */  addu       $a0, $s2, $zero
.Lmenu_80107168:
/* 125258 80107168 0C049783 */  jal        func_menu_80125E0C
/* 12525C 8010716C 24050003 */   addiu     $a1, $zero, 0x3
/* 125260 80107170 54400006 */  bnel       $v0, $zero, .Lmenu_8010718C
/* 125264 80107174 26100001 */   addiu     $s0, $s0, 0x1
/* 125268 80107178 26240DC4 */  addiu      $a0, $s1, 0xDC4
/* 12526C 8010717C 0C048D07 */  jal        func_menu_8012341C
/* 125270 80107180 24050005 */   addiu     $a1, $zero, 0x5
/* 125274 80107184 08041C66 */  j          .Lmenu_80107198
/* 125278 80107188 00000000 */   nop
.Lmenu_8010718C:
/* 12527C 8010718C 26240DC4 */  addiu      $a0, $s1, 0xDC4
/* 125280 80107190 0C048CEC */  jal        func_menu_801233B0
/* 125284 80107194 24050005 */   addiu     $a1, $zero, 0x5
.Lmenu_80107198:
/* 125288 80107198 16000003 */  bnez       $s0, .Lmenu_801071A8
/* 12528C 8010719C 26242544 */   addiu     $a0, $s1, 0x2544
/* 125290 801071A0 08041C6B */  j          .Lmenu_801071AC
/* 125294 801071A4 240500CD */   addiu     $a1, $zero, 0xCD
.Lmenu_801071A8:
/* 125298 801071A8 24050037 */  addiu      $a1, $zero, 0x37
.Lmenu_801071AC:
/* 12529C 801071AC 0C047D09 */  jal        func_menu_8011F424
/* 1252A0 801071B0 24060001 */   addiu     $a2, $zero, 0x1
.Lmenu_801071B4:
/* 1252A4 801071B4 02202021 */  addu       $a0, $s1, $zero
/* 1252A8 801071B8 0C04056C */  jal        func_menu_801015B0
/* 1252AC 801071BC 02602821 */   addu      $a1, $s3, $zero
/* 1252B0 801071C0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1252B4 801071C4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1252B8 801071C8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1252BC 801071CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1252C0 801071D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1252C4 801071D4 03E00008 */  jr         $ra
/* 1252C8 801071D8 27BD0028 */   addiu     $sp, $sp, 0x28
