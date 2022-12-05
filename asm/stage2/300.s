.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005D7C0
/* 54AF0 8005D7C0 03E00008 */  jr         $ra
/* 54AF4 8005D7C4 00000000 */   nop

glabel func_8005D7C8
/* 54AF8 8005D7C8 03E00008 */  jr         $ra
/* 54AFC 8005D7CC 00000000 */   nop

glabel func_8005D7D0
/* 54B00 8005D7D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 54B04 8005D7D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 54B08 8005D7D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 54B0C 8005D7DC 0C014188 */  jal        func_80050620
/* 54B10 8005D7E0 00808021 */   addu      $s0, $a0, $zero
/* 54B14 8005D7E4 02001021 */  addu       $v0, $s0, $zero
/* 54B18 8005D7E8 3C038004 */  lui        $v1, %hi(D_8003DAB8)
/* 54B1C 8005D7EC 2463DAB8 */  addiu      $v1, $v1, %lo(D_8003DAB8)
/* 54B20 8005D7F0 AC4305AC */  sw         $v1, 0x5AC($v0)
/* 54B24 8005D7F4 AC4005D8 */  sw         $zero, 0x5D8($v0)
/* 54B28 8005D7F8 AC4005D4 */  sw         $zero, 0x5D4($v0)
/* 54B2C 8005D7FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 54B30 8005D800 8FB00010 */  lw         $s0, 0x10($sp)
/* 54B34 8005D804 03E00008 */  jr         $ra
/* 54B38 8005D808 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005D80C
/* 54B3C 8005D80C 3C028008 */  lui        $v0, %hi(D_80083DA0)
/* 54B40 8005D810 8C423DA0 */  lw         $v0, %lo(D_80083DA0)($v0)
/* 54B44 8005D814 03E00008 */  jr         $ra
/* 54B48 8005D818 00000000 */   nop

glabel func_8005D81C
/* 54B4C 8005D81C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 54B50 8005D820 AFB40020 */  sw         $s4, 0x20($sp)
/* 54B54 8005D824 0080A021 */  addu       $s4, $a0, $zero
/* 54B58 8005D828 AFB20018 */  sw         $s2, 0x18($sp)
/* 54B5C 8005D82C 00A09021 */  addu       $s2, $a1, $zero
/* 54B60 8005D830 02402021 */  addu       $a0, $s2, $zero
/* 54B64 8005D834 AFBF0024 */  sw         $ra, 0x24($sp)
/* 54B68 8005D838 AFB3001C */  sw         $s3, 0x1C($sp)
/* 54B6C 8005D83C AFB10014 */  sw         $s1, 0x14($sp)
/* 54B70 8005D840 0C006DFE */  jal        strlen
/* 54B74 8005D844 AFB00010 */   sw        $s0, 0x10($sp)
/* 54B78 8005D848 3C138008 */  lui        $s3, %hi(D_80083DA0)
/* 54B7C 8005D84C 8E643DA0 */  lw         $a0, %lo(D_80083DA0)($s3)
/* 54B80 8005D850 0C006DFE */  jal        strlen
/* 54B84 8005D854 00408821 */   addu      $s1, $v0, $zero
/* 54B88 8005D858 00408021 */  addu       $s0, $v0, $zero
/* 54B8C 8005D85C 0211102B */  sltu       $v0, $s0, $s1
/* 54B90 8005D860 10400008 */  beqz       $v0, .L8005D884
/* 54B94 8005D864 02302021 */   addu      $a0, $s1, $s0
/* 54B98 8005D868 02302023 */  subu       $a0, $s1, $s0
/* 54B9C 8005D86C 02442021 */  addu       $a0, $s2, $a0
/* 54BA0 8005D870 8E653DA0 */  lw         $a1, %lo(D_80083DA0)($s3)
/* 54BA4 8005D874 0C000684 */  jal        func_80001A10
/* 54BA8 8005D878 02003021 */   addu      $a2, $s0, $zero
/* 54BAC 8005D87C 1040001B */  beqz       $v0, .L8005D8EC
/* 54BB0 8005D880 02302021 */   addu      $a0, $s1, $s0
.L8005D884:
/* 54BB4 8005D884 0C00943C */  jal        func_800250F0
/* 54BB8 8005D888 24840001 */   addiu     $a0, $a0, 0x1
/* 54BBC 8005D88C 00408021 */  addu       $s0, $v0, $zero
/* 54BC0 8005D890 56000008 */  bnel       $s0, $zero, .L8005D8B4
/* 54BC4 8005D894 02002021 */   addu      $a0, $s0, $zero
/* 54BC8 8005D898 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 54BCC 8005D89C 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 54BD0 8005D8A0 00002821 */  addu       $a1, $zero, $zero
/* 54BD4 8005D8A4 00A03021 */  addu       $a2, $a1, $zero
/* 54BD8 8005D8A8 0C011ACF */  jal        func_80046B3C
/* 54BDC 8005D8AC 00A03821 */   addu      $a3, $a1, $zero
/* 54BE0 8005D8B0 02002021 */  addu       $a0, $s0, $zero
.L8005D8B4:
/* 54BE4 8005D8B4 0C0006FA */  jal        func_80001BE8
/* 54BE8 8005D8B8 02402821 */   addu      $a1, $s2, $zero
/* 54BEC 8005D8BC 8E653DA0 */  lw         $a1, %lo(D_80083DA0)($s3)
/* 54BF0 8005D8C0 0C0006C8 */  jal        func_80001B20
/* 54BF4 8005D8C4 02002021 */   addu      $a0, $s0, $zero
/* 54BF8 8005D8C8 02802021 */  addu       $a0, $s4, $zero
/* 54BFC 8005D8CC 0C0141D1 */  jal        func_80050744
/* 54C00 8005D8D0 02002821 */   addu      $a1, $s0, $zero
/* 54C04 8005D8D4 12000008 */  beqz       $s0, .L8005D8F8
/* 54C08 8005D8D8 00000000 */   nop
/* 54C0C 8005D8DC 0C009444 */  jal        func_80025110
/* 54C10 8005D8E0 02002021 */   addu      $a0, $s0, $zero
/* 54C14 8005D8E4 0801763E */  j          .L8005D8F8
/* 54C18 8005D8E8 00000000 */   nop
.L8005D8EC:
/* 54C1C 8005D8EC 02802021 */  addu       $a0, $s4, $zero
/* 54C20 8005D8F0 0C0141D1 */  jal        func_80050744
/* 54C24 8005D8F4 02402821 */   addu      $a1, $s2, $zero
.L8005D8F8:
/* 54C28 8005D8F8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 54C2C 8005D8FC 8FB40020 */  lw         $s4, 0x20($sp)
/* 54C30 8005D900 8FB3001C */  lw         $s3, 0x1C($sp)
/* 54C34 8005D904 8FB20018 */  lw         $s2, 0x18($sp)
/* 54C38 8005D908 8FB10014 */  lw         $s1, 0x14($sp)
/* 54C3C 8005D90C 8FB00010 */  lw         $s0, 0x10($sp)
/* 54C40 8005D910 03E00008 */  jr         $ra
/* 54C44 8005D914 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8005D918
/* 54C48 8005D918 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 54C4C 8005D91C AFB00038 */  sw         $s0, 0x38($sp)
/* 54C50 8005D920 00808021 */  addu       $s0, $a0, $zero
/* 54C54 8005D924 AFB5004C */  sw         $s5, 0x4C($sp)
/* 54C58 8005D928 27B50030 */  addiu      $s5, $sp, 0x30
/* 54C5C 8005D92C AFB40048 */  sw         $s4, 0x48($sp)
/* 54C60 8005D930 26140010 */  addiu      $s4, $s0, 0x10
/* 54C64 8005D934 02802021 */  addu       $a0, $s4, $zero
/* 54C68 8005D938 00002821 */  addu       $a1, $zero, $zero
/* 54C6C 8005D93C 27A60018 */  addiu      $a2, $sp, 0x18
/* 54C70 8005D940 24070012 */  addiu      $a3, $zero, 0x12
/* 54C74 8005D944 AFBF0050 */  sw         $ra, 0x50($sp)
/* 54C78 8005D948 AFB30044 */  sw         $s3, 0x44($sp)
/* 54C7C 8005D94C AFB20040 */  sw         $s2, 0x40($sp)
/* 54C80 8005D950 AFB1003C */  sw         $s1, 0x3C($sp)
/* 54C84 8005D954 0C001A4A */  jal        func_80006928
/* 54C88 8005D958 AFB50010 */   sw        $s5, 0x10($sp)
/* 54C8C 8005D95C 10400006 */  beqz       $v0, .L8005D978
/* 54C90 8005D960 3C048004 */   lui       $a0, %hi(D_8003DA38)
/* 54C94 8005D964 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 54C98 8005D968 00002821 */  addu       $a1, $zero, $zero
/* 54C9C 8005D96C 00A03021 */  addu       $a2, $a1, $zero
/* 54CA0 8005D970 0C011ACF */  jal        func_80046B3C
/* 54CA4 8005D974 00A03821 */   addu      $a3, $a1, $zero
.L8005D978:
/* 54CA8 8005D978 93A20018 */  lbu        $v0, 0x18($sp)
/* 54CAC 8005D97C 93A30019 */  lbu        $v1, 0x19($sp)
/* 54CB0 8005D980 93A4001A */  lbu        $a0, 0x1A($sp)
/* 54CB4 8005D984 AE0205B0 */  sw         $v0, 0x5B0($s0)
/* 54CB8 8005D988 AE0305B4 */  sw         $v1, 0x5B4($s0)
/* 54CBC 8005D98C AE0405B8 */  sw         $a0, 0x5B8($s0)
/* 54CC0 8005D990 93A2001C */  lbu        $v0, 0x1C($sp)
/* 54CC4 8005D994 93A3001B */  lbu        $v1, 0x1B($sp)
/* 54CC8 8005D998 00021200 */  sll        $v0, $v0, 8
/* 54CCC 8005D99C 00621821 */  addu       $v1, $v1, $v0
/* 54CD0 8005D9A0 AE0305BC */  sw         $v1, 0x5BC($s0)
/* 54CD4 8005D9A4 93A2001F */  lbu        $v0, 0x1F($sp)
/* 54CD8 8005D9A8 93A3001E */  lbu        $v1, 0x1E($sp)
/* 54CDC 8005D9AC AE0205C4 */  sw         $v0, 0x5C4($s0)
/* 54CE0 8005D9B0 93A2001D */  lbu        $v0, 0x1D($sp)
/* 54CE4 8005D9B4 00031A00 */  sll        $v1, $v1, 8
/* 54CE8 8005D9B8 00431021 */  addu       $v0, $v0, $v1
/* 54CEC 8005D9BC AE0205C0 */  sw         $v0, 0x5C0($s0)
/* 54CF0 8005D9C0 93A20021 */  lbu        $v0, 0x21($sp)
/* 54CF4 8005D9C4 93A30020 */  lbu        $v1, 0x20($sp)
/* 54CF8 8005D9C8 00021200 */  sll        $v0, $v0, 8
/* 54CFC 8005D9CC 00621821 */  addu       $v1, $v1, $v0
/* 54D00 8005D9D0 AE0305C8 */  sw         $v1, 0x5C8($s0)
/* 54D04 8005D9D4 93A20023 */  lbu        $v0, 0x23($sp)
/* 54D08 8005D9D8 93A30022 */  lbu        $v1, 0x22($sp)
/* 54D0C 8005D9DC 00021200 */  sll        $v0, $v0, 8
/* 54D10 8005D9E0 00621821 */  addu       $v1, $v1, $v0
/* 54D14 8005D9E4 AE0305CC */  sw         $v1, 0x5CC($s0)
/* 54D18 8005D9E8 93A20025 */  lbu        $v0, 0x25($sp)
/* 54D1C 8005D9EC 93A30024 */  lbu        $v1, 0x24($sp)
/* 54D20 8005D9F0 00021200 */  sll        $v0, $v0, 8
/* 54D24 8005D9F4 00621821 */  addu       $v1, $v1, $v0
/* 54D28 8005D9F8 AE030040 */  sw         $v1, 0x40($s0)
/* 54D2C 8005D9FC 93A20029 */  lbu        $v0, 0x29($sp)
/* 54D30 8005DA00 93A30027 */  lbu        $v1, 0x27($sp)
/* 54D34 8005DA04 8E040040 */  lw         $a0, 0x40($s0)
/* 54D38 8005DA08 AE0205D0 */  sw         $v0, 0x5D0($s0)
/* 54D3C 8005DA0C 93B30028 */  lbu        $s3, 0x28($sp)
/* 54D40 8005DA10 8E0205B0 */  lw         $v0, 0x5B0($s0)
/* 54D44 8005DA14 AE000068 */  sw         $zero, 0x68($s0)
/* 54D48 8005DA18 24420012 */  addiu      $v0, $v0, 0x12
/* 54D4C 8005DA1C 00930018 */  mult       $a0, $s3
/* 54D50 8005DA20 AE0205D4 */  sw         $v0, 0x5D4($s0)
/* 54D54 8005DA24 93A20026 */  lbu        $v0, 0x26($sp)
/* 54D58 8005DA28 00031A00 */  sll        $v1, $v1, 8
/* 54D5C 8005DA2C 00431021 */  addu       $v0, $v0, $v1
/* 54D60 8005DA30 2403FFE0 */  addiu      $v1, $zero, -0x20
/* 54D64 8005DA34 AE020044 */  sw         $v0, 0x44($s0)
/* 54D68 8005DA38 00004012 */  mflo       $t0
/* 54D6C 8005DA3C 2502001F */  addiu      $v0, $t0, 0x1F
/* 54D70 8005DA40 00431024 */  and        $v0, $v0, $v1
/* 54D74 8005DA44 000210C2 */  srl        $v0, $v0, 3
/* 54D78 8005DA48 AE020048 */  sw         $v0, 0x48($s0)
/* 54D7C 8005DA4C 8E030044 */  lw         $v1, 0x44($s0)
/* 54D80 8005DA50 00430018 */  mult       $v0, $v1
/* 54D84 8005DA54 8E0205B4 */  lw         $v0, 0x5B4($s0)
/* 54D88 8005DA58 00004012 */  mflo       $t0
/* 54D8C 8005DA5C 104000A4 */  beqz       $v0, .L8005DCF0
/* 54D90 8005DA60 AE0805D8 */   sw        $t0, 0x5D8($s0)
/* 54D94 8005DA64 2E620009 */  sltiu      $v0, $s3, 0x9
/* 54D98 8005DA68 104000A2 */  beqz       $v0, .L8005DCF4
/* 54D9C 8005DA6C 2663FFFC */   addiu     $v1, $s3, -0x4
/* 54DA0 8005DA70 8E0205C4 */  lw         $v0, 0x5C4($s0)
/* 54DA4 8005DA74 8E0305C0 */  lw         $v1, 0x5C0($s0)
/* 54DA8 8005DA78 24420007 */  addiu      $v0, $v0, 0x7
/* 54DAC 8005DA7C 000210C3 */  sra        $v0, $v0, 3
/* 54DB0 8005DA80 00430018 */  mult       $v0, $v1
/* 54DB4 8005DA84 00009012 */  mflo       $s2
/* 54DB8 8005DA88 0C00943C */  jal        func_800250F0
/* 54DBC 8005DA8C 02402021 */   addu      $a0, $s2, $zero
/* 54DC0 8005DA90 00408821 */  addu       $s1, $v0, $zero
/* 54DC4 8005DA94 16200008 */  bnez       $s1, .L8005DAB8
/* 54DC8 8005DA98 02802021 */   addu      $a0, $s4, $zero
/* 54DCC 8005DA9C 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 54DD0 8005DAA0 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 54DD4 8005DAA4 00002821 */  addu       $a1, $zero, $zero
/* 54DD8 8005DAA8 00A03021 */  addu       $a2, $a1, $zero
/* 54DDC 8005DAAC 0C011ACF */  jal        func_80046B3C
/* 54DE0 8005DAB0 00A03821 */   addu      $a3, $a1, $zero
/* 54DE4 8005DAB4 02802021 */  addu       $a0, $s4, $zero
.L8005DAB8:
/* 54DE8 8005DAB8 02203021 */  addu       $a2, $s1, $zero
/* 54DEC 8005DABC AFB50010 */  sw         $s5, 0x10($sp)
/* 54DF0 8005DAC0 8E0505D4 */  lw         $a1, 0x5D4($s0)
/* 54DF4 8005DAC4 0C001A4A */  jal        func_80006928
/* 54DF8 8005DAC8 02403821 */   addu      $a3, $s2, $zero
/* 54DFC 8005DACC 10400006 */  beqz       $v0, .L8005DAE8
/* 54E00 8005DAD0 3C048004 */   lui       $a0, %hi(D_8003DA38)
/* 54E04 8005DAD4 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 54E08 8005DAD8 00002821 */  addu       $a1, $zero, $zero
/* 54E0C 8005DADC 00A03021 */  addu       $a2, $a1, $zero
/* 54E10 8005DAE0 0C011ACF */  jal        func_80046B3C
/* 54E14 8005DAE4 00A03821 */   addu      $a3, $a1, $zero
.L8005DAE8:
/* 54E18 8005DAE8 8E0205C0 */  lw         $v0, 0x5C0($s0)
/* 54E1C 8005DAEC AE020068 */  sw         $v0, 0x68($s0)
/* 54E20 8005DAF0 2C420101 */  sltiu      $v0, $v0, 0x101
/* 54E24 8005DAF4 14400002 */  bnez       $v0, .L8005DB00
/* 54E28 8005DAF8 24020100 */   addiu     $v0, $zero, 0x100
/* 54E2C 8005DAFC AE020068 */  sw         $v0, 0x68($s0)
.L8005DB00:
/* 54E30 8005DB00 8E0305C4 */  lw         $v1, 0x5C4($s0)
/* 54E34 8005DB04 24020010 */  addiu      $v0, $zero, 0x10
/* 54E38 8005DB08 1062002A */  beq        $v1, $v0, .L8005DBB4
/* 54E3C 8005DB0C 28620011 */   slti      $v0, $v1, 0x11
/* 54E40 8005DB10 10400005 */  beqz       $v0, .L8005DB28
/* 54E44 8005DB14 2402000F */   addiu     $v0, $zero, 0xF
/* 54E48 8005DB18 1062000A */  beq        $v1, $v0, .L8005DB44
/* 54E4C 8005DB1C 02202021 */   addu      $a0, $s1, $zero
/* 54E50 8005DB20 08017735 */  j          .L8005DCD4
/* 54E54 8005DB24 00000000 */   nop
.L8005DB28:
/* 54E58 8005DB28 24020018 */  addiu      $v0, $zero, 0x18
/* 54E5C 8005DB2C 1062003D */  beq        $v1, $v0, .L8005DC24
/* 54E60 8005DB30 24020020 */   addiu     $v0, $zero, 0x20
/* 54E64 8005DB34 10620052 */  beq        $v1, $v0, .L8005DC80
/* 54E68 8005DB38 02202021 */   addu      $a0, $s1, $zero
/* 54E6C 8005DB3C 08017735 */  j          .L8005DCD4
/* 54E70 8005DB40 00000000 */   nop
.L8005DB44:
/* 54E74 8005DB44 8E020068 */  lw         $v0, 0x68($s0)
/* 54E78 8005DB48 10400062 */  beqz       $v0, .L8005DCD4
/* 54E7C 8005DB4C 00002821 */   addu      $a1, $zero, $zero
/* 54E80 8005DB50 240700FF */  addiu      $a3, $zero, 0xFF
/* 54E84 8005DB54 02003021 */  addu       $a2, $s0, $zero
.L8005DB58:
/* 54E88 8005DB58 90820000 */  lbu        $v0, 0x0($a0)
/* 54E8C 8005DB5C 24840001 */  addiu      $a0, $a0, 0x1
/* 54E90 8005DB60 90830000 */  lbu        $v1, 0x0($a0)
/* 54E94 8005DB64 24840001 */  addiu      $a0, $a0, 0x1
/* 54E98 8005DB68 24A50001 */  addiu      $a1, $a1, 0x1
/* 54E9C 8005DB6C A0C700A7 */  sb         $a3, 0xA7($a2)
/* 54EA0 8005DB70 00031A00 */  sll        $v1, $v1, 8
/* 54EA4 8005DB74 00431825 */  or         $v1, $v0, $v1
/* 54EA8 8005DB78 3062001F */  andi       $v0, $v1, 0x1F
/* 54EAC 8005DB7C 000210C0 */  sll        $v0, $v0, 3
/* 54EB0 8005DB80 A0C200A6 */  sb         $v0, 0xA6($a2)
/* 54EB4 8005DB84 306203E0 */  andi       $v0, $v1, 0x3E0
/* 54EB8 8005DB88 00021082 */  srl        $v0, $v0, 2
/* 54EBC 8005DB8C 30637C00 */  andi       $v1, $v1, 0x7C00
/* 54EC0 8005DB90 000319C2 */  srl        $v1, $v1, 7
/* 54EC4 8005DB94 A0C200A5 */  sb         $v0, 0xA5($a2)
/* 54EC8 8005DB98 A0C300A4 */  sb         $v1, 0xA4($a2)
/* 54ECC 8005DB9C 8E020068 */  lw         $v0, 0x68($s0)
/* 54ED0 8005DBA0 00A2102B */  sltu       $v0, $a1, $v0
/* 54ED4 8005DBA4 1440FFEC */  bnez       $v0, .L8005DB58
/* 54ED8 8005DBA8 24C60004 */   addiu     $a2, $a2, 0x4
/* 54EDC 8005DBAC 08017735 */  j          .L8005DCD4
/* 54EE0 8005DBB0 00000000 */   nop
.L8005DBB4:
/* 54EE4 8005DBB4 02202021 */  addu       $a0, $s1, $zero
/* 54EE8 8005DBB8 8E020068 */  lw         $v0, 0x68($s0)
/* 54EEC 8005DBBC 10400045 */  beqz       $v0, .L8005DCD4
/* 54EF0 8005DBC0 00002821 */   addu      $a1, $zero, $zero
/* 54EF4 8005DBC4 02003021 */  addu       $a2, $s0, $zero
.L8005DBC8:
/* 54EF8 8005DBC8 90820000 */  lbu        $v0, 0x0($a0)
/* 54EFC 8005DBCC 24840001 */  addiu      $a0, $a0, 0x1
/* 54F00 8005DBD0 90830000 */  lbu        $v1, 0x0($a0)
/* 54F04 8005DBD4 24840001 */  addiu      $a0, $a0, 0x1
/* 54F08 8005DBD8 24A50001 */  addiu      $a1, $a1, 0x1
/* 54F0C 8005DBDC A0C000A7 */  sb         $zero, 0xA7($a2)
/* 54F10 8005DBE0 00031A00 */  sll        $v1, $v1, 8
/* 54F14 8005DBE4 00431825 */  or         $v1, $v0, $v1
/* 54F18 8005DBE8 3062001F */  andi       $v0, $v1, 0x1F
/* 54F1C 8005DBEC 000210C0 */  sll        $v0, $v0, 3
/* 54F20 8005DBF0 A0C200A6 */  sb         $v0, 0xA6($a2)
/* 54F24 8005DBF4 306203E0 */  andi       $v0, $v1, 0x3E0
/* 54F28 8005DBF8 00021082 */  srl        $v0, $v0, 2
/* 54F2C 8005DBFC 30637C00 */  andi       $v1, $v1, 0x7C00
/* 54F30 8005DC00 000319C2 */  srl        $v1, $v1, 7
/* 54F34 8005DC04 A0C200A5 */  sb         $v0, 0xA5($a2)
/* 54F38 8005DC08 A0C300A4 */  sb         $v1, 0xA4($a2)
/* 54F3C 8005DC0C 8E020068 */  lw         $v0, 0x68($s0)
/* 54F40 8005DC10 00A2102B */  sltu       $v0, $a1, $v0
/* 54F44 8005DC14 1440FFEC */  bnez       $v0, .L8005DBC8
/* 54F48 8005DC18 24C60004 */   addiu     $a2, $a2, 0x4
/* 54F4C 8005DC1C 08017735 */  j          .L8005DCD4
/* 54F50 8005DC20 00000000 */   nop
.L8005DC24:
/* 54F54 8005DC24 02202021 */  addu       $a0, $s1, $zero
/* 54F58 8005DC28 8E020068 */  lw         $v0, 0x68($s0)
/* 54F5C 8005DC2C 10400029 */  beqz       $v0, .L8005DCD4
/* 54F60 8005DC30 00002821 */   addu      $a1, $zero, $zero
/* 54F64 8005DC34 240600FF */  addiu      $a2, $zero, 0xFF
/* 54F68 8005DC38 02001821 */  addu       $v1, $s0, $zero
.L8005DC3C:
/* 54F6C 8005DC3C 90820000 */  lbu        $v0, 0x0($a0)
/* 54F70 8005DC40 24840001 */  addiu      $a0, $a0, 0x1
/* 54F74 8005DC44 24A50001 */  addiu      $a1, $a1, 0x1
/* 54F78 8005DC48 A06200A6 */  sb         $v0, 0xA6($v1)
/* 54F7C 8005DC4C 90820000 */  lbu        $v0, 0x0($a0)
/* 54F80 8005DC50 24840001 */  addiu      $a0, $a0, 0x1
/* 54F84 8005DC54 A06200A5 */  sb         $v0, 0xA5($v1)
/* 54F88 8005DC58 90820000 */  lbu        $v0, 0x0($a0)
/* 54F8C 8005DC5C 24840001 */  addiu      $a0, $a0, 0x1
/* 54F90 8005DC60 A06600A7 */  sb         $a2, 0xA7($v1)
/* 54F94 8005DC64 A06200A4 */  sb         $v0, 0xA4($v1)
/* 54F98 8005DC68 8E020068 */  lw         $v0, 0x68($s0)
/* 54F9C 8005DC6C 00A2102B */  sltu       $v0, $a1, $v0
/* 54FA0 8005DC70 1440FFF2 */  bnez       $v0, .L8005DC3C
/* 54FA4 8005DC74 24630004 */   addiu     $v1, $v1, 0x4
/* 54FA8 8005DC78 08017735 */  j          .L8005DCD4
/* 54FAC 8005DC7C 00000000 */   nop
.L8005DC80:
/* 54FB0 8005DC80 8E020068 */  lw         $v0, 0x68($s0)
/* 54FB4 8005DC84 10400013 */  beqz       $v0, .L8005DCD4
/* 54FB8 8005DC88 00002821 */   addu      $a1, $zero, $zero
/* 54FBC 8005DC8C 02001821 */  addu       $v1, $s0, $zero
.L8005DC90:
/* 54FC0 8005DC90 90820000 */  lbu        $v0, 0x0($a0)
/* 54FC4 8005DC94 24840001 */  addiu      $a0, $a0, 0x1
/* 54FC8 8005DC98 24A50001 */  addiu      $a1, $a1, 0x1
/* 54FCC 8005DC9C A06200A6 */  sb         $v0, 0xA6($v1)
/* 54FD0 8005DCA0 90820000 */  lbu        $v0, 0x0($a0)
/* 54FD4 8005DCA4 24840001 */  addiu      $a0, $a0, 0x1
/* 54FD8 8005DCA8 A06200A5 */  sb         $v0, 0xA5($v1)
/* 54FDC 8005DCAC 90820000 */  lbu        $v0, 0x0($a0)
/* 54FE0 8005DCB0 24840001 */  addiu      $a0, $a0, 0x1
/* 54FE4 8005DCB4 A06200A4 */  sb         $v0, 0xA4($v1)
/* 54FE8 8005DCB8 90820000 */  lbu        $v0, 0x0($a0)
/* 54FEC 8005DCBC 24840001 */  addiu      $a0, $a0, 0x1
/* 54FF0 8005DCC0 A06200A7 */  sb         $v0, 0xA7($v1)
/* 54FF4 8005DCC4 8E020068 */  lw         $v0, 0x68($s0)
/* 54FF8 8005DCC8 00A2102B */  sltu       $v0, $a1, $v0
/* 54FFC 8005DCCC 1440FFF0 */  bnez       $v0, .L8005DC90
/* 55000 8005DCD0 24630004 */   addiu     $v1, $v1, 0x4
.L8005DCD4:
/* 55004 8005DCD4 12200003 */  beqz       $s1, .L8005DCE4
/* 55008 8005DCD8 00000000 */   nop
/* 5500C 8005DCDC 0C009444 */  jal        func_80025110
/* 55010 8005DCE0 02202021 */   addu      $a0, $s1, $zero
.L8005DCE4:
/* 55014 8005DCE4 8E0205D4 */  lw         $v0, 0x5D4($s0)
/* 55018 8005DCE8 00521021 */  addu       $v0, $v0, $s2
/* 5501C 8005DCEC AE0205D4 */  sw         $v0, 0x5D4($s0)
.L8005DCF0:
/* 55020 8005DCF0 2663FFFC */  addiu      $v1, $s3, -0x4
.L8005DCF4:
/* 55024 8005DCF4 2C62001D */  sltiu      $v0, $v1, 0x1D
/* 55028 8005DCF8 10400033 */  beqz       $v0, L8005DDC8
/* 5502C 8005DCFC 3C028004 */   lui       $v0, %hi(jtbl_8003DA40)
/* 55030 8005DD00 2442DA40 */  addiu      $v0, $v0, %lo(jtbl_8003DA40)
/* 55034 8005DD04 00031880 */  sll        $v1, $v1, 2
/* 55038 8005DD08 00621821 */  addu       $v1, $v1, $v0
/* 5503C 8005DD0C 8C620000 */  lw         $v0, 0x0($v1)
/* 55040 8005DD10 00400008 */  jr         $v0
/* 55044 8005DD14 00000000 */   nop
glabel L8005DD18
/* 55048 8005DD18 2602004C */  addiu      $v0, $s0, 0x4C
/* 5504C 8005DD1C 2403000F */  addiu      $v1, $zero, 0xF
/* 55050 8005DD20 A4430014 */  sh         $v1, 0x14($v0)
/* 55054 8005DD24 24030004 */  addiu      $v1, $zero, 0x4
/* 55058 8005DD28 08017778 */  j          .L8005DDE0
/* 5505C 8005DD2C A4430016 */   sh        $v1, 0x16($v0)
glabel L8005DD30
/* 55060 8005DD30 2602004C */  addiu      $v0, $s0, 0x4C
/* 55064 8005DD34 240300FF */  addiu      $v1, $zero, 0xFF
/* 55068 8005DD38 A4430014 */  sh         $v1, 0x14($v0)
/* 5506C 8005DD3C 24030008 */  addiu      $v1, $zero, 0x8
/* 55070 8005DD40 08017778 */  j          .L8005DDE0
/* 55074 8005DD44 A4430016 */   sh        $v1, 0x16($v0)
glabel L8005DD48
/* 55078 8005DD48 24027C00 */  addiu      $v0, $zero, 0x7C00
/* 5507C 8005DD4C 2603004C */  addiu      $v1, $s0, 0x4C
/* 55080 8005DD50 AE02004C */  sw         $v0, 0x4C($s0)
/* 55084 8005DD54 240203E0 */  addiu      $v0, $zero, 0x3E0
/* 55088 8005DD58 AC620004 */  sw         $v0, 0x4($v1)
/* 5508C 8005DD5C 2402001F */  addiu      $v0, $zero, 0x1F
/* 55090 8005DD60 AC620008 */  sw         $v0, 0x8($v1)
/* 55094 8005DD64 24020010 */  addiu      $v0, $zero, 0x10
/* 55098 8005DD68 08017778 */  j          .L8005DDE0
/* 5509C 8005DD6C A4620016 */   sh        $v0, 0x16($v1)
glabel L8005DD70
/* 550A0 8005DD70 3C0200FF */  lui        $v0, (0xFF0000 >> 16)
/* 550A4 8005DD74 2603004C */  addiu      $v1, $s0, 0x4C
/* 550A8 8005DD78 AE02004C */  sw         $v0, 0x4C($s0)
/* 550AC 8005DD7C 3402FF00 */  ori        $v0, $zero, 0xFF00
/* 550B0 8005DD80 AC620004 */  sw         $v0, 0x4($v1)
/* 550B4 8005DD84 240200FF */  addiu      $v0, $zero, 0xFF
/* 550B8 8005DD88 AC620008 */  sw         $v0, 0x8($v1)
/* 550BC 8005DD8C 24020018 */  addiu      $v0, $zero, 0x18
/* 550C0 8005DD90 08017778 */  j          .L8005DDE0
/* 550C4 8005DD94 A4620016 */   sh        $v0, 0x16($v1)
glabel L8005DD98
/* 550C8 8005DD98 3C0200FF */  lui        $v0, (0xFF0000 >> 16)
/* 550CC 8005DD9C 2603004C */  addiu      $v1, $s0, 0x4C
/* 550D0 8005DDA0 AE02004C */  sw         $v0, 0x4C($s0)
/* 550D4 8005DDA4 3402FF00 */  ori        $v0, $zero, 0xFF00
/* 550D8 8005DDA8 AC620004 */  sw         $v0, 0x4($v1)
/* 550DC 8005DDAC 240200FF */  addiu      $v0, $zero, 0xFF
/* 550E0 8005DDB0 AC620008 */  sw         $v0, 0x8($v1)
/* 550E4 8005DDB4 3C02FF00 */  lui        $v0, (0xFF000000 >> 16)
/* 550E8 8005DDB8 AC62000C */  sw         $v0, 0xC($v1)
/* 550EC 8005DDBC 24020020 */  addiu      $v0, $zero, 0x20
/* 550F0 8005DDC0 08017778 */  j          .L8005DDE0
/* 550F4 8005DDC4 A4620016 */   sh        $v0, 0x16($v1)
glabel L8005DDC8
/* 550F8 8005DDC8 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 550FC 8005DDCC 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 55100 8005DDD0 00002821 */  addu       $a1, $zero, $zero
/* 55104 8005DDD4 00A03021 */  addu       $a2, $a1, $zero
/* 55108 8005DDD8 0C011ACF */  jal        func_80046B3C
/* 5510C 8005DDDC 00A03821 */   addu      $a3, $a1, $zero
.L8005DDE0:
/* 55110 8005DDE0 8FBF0050 */  lw         $ra, 0x50($sp)
/* 55114 8005DDE4 8FB5004C */  lw         $s5, 0x4C($sp)
/* 55118 8005DDE8 8FB40048 */  lw         $s4, 0x48($sp)
/* 5511C 8005DDEC 8FB30044 */  lw         $s3, 0x44($sp)
/* 55120 8005DDF0 8FB20040 */  lw         $s2, 0x40($sp)
/* 55124 8005DDF4 8FB1003C */  lw         $s1, 0x3C($sp)
/* 55128 8005DDF8 8FB00038 */  lw         $s0, 0x38($sp)
/* 5512C 8005DDFC 03E00008 */  jr         $ra
/* 55130 8005DE00 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8005DE04
/* 55134 8005DE04 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 55138 8005DE08 AFB20050 */  sw         $s2, 0x50($sp)
/* 5513C 8005DE0C 00809021 */  addu       $s2, $a0, $zero
/* 55140 8005DE10 AFB5005C */  sw         $s5, 0x5C($sp)
/* 55144 8005DE14 00A0A821 */  addu       $s5, $a1, $zero
/* 55148 8005DE18 AFB60060 */  sw         $s6, 0x60($sp)
/* 5514C 8005DE1C 00C0B021 */  addu       $s6, $a2, $zero
/* 55150 8005DE20 AFB1004C */  sw         $s1, 0x4C($sp)
/* 55154 8005DE24 00E08821 */  addu       $s1, $a3, $zero
/* 55158 8005DE28 24080001 */  addiu      $t0, $zero, 0x1
/* 5515C 8005DE2C AFB70064 */  sw         $s7, 0x64($sp)
/* 55160 8005DE30 0100B821 */  addu       $s7, $t0, $zero
/* 55164 8005DE34 27A20018 */  addiu      $v0, $sp, 0x18
/* 55168 8005DE38 AFBF006C */  sw         $ra, 0x6C($sp)
/* 5516C 8005DE3C AFBE0068 */  sw         $fp, 0x68($sp)
/* 55170 8005DE40 AFB40058 */  sw         $s4, 0x58($sp)
/* 55174 8005DE44 AFB30054 */  sw         $s3, 0x54($sp)
/* 55178 8005DE48 AFB00048 */  sw         $s0, 0x48($sp)
/* 5517C 8005DE4C AFA8003C */  sw         $t0, 0x3C($sp)
/* 55180 8005DE50 AFA00018 */  sw         $zero, 0x18($sp)
/* 55184 8005DE54 AC400004 */  sw         $zero, 0x4($v0)
/* 55188 8005DE58 AC400008 */  sw         $zero, 0x8($v0)
/* 5518C 8005DE5C AC40000C */  sw         $zero, 0xC($v0)
/* 55190 8005DE60 AC400010 */  sw         $zero, 0x10($v0)
/* 55194 8005DE64 A4400014 */  sh         $zero, 0x14($v0)
/* 55198 8005DE68 A4400016 */  sh         $zero, 0x16($v0)
/* 5519C 8005DE6C 96A20028 */  lhu        $v0, 0x28($s5)
/* 551A0 8005DE70 8E430044 */  lw         $v1, 0x44($s2)
/* 551A4 8005DE74 0043102B */  sltu       $v0, $v0, $v1
/* 551A8 8005DE78 14400006 */  bnez       $v0, .L8005DE94
/* 551AC 8005DE7C 00002021 */   addu      $a0, $zero, $zero
/* 551B0 8005DE80 96A20026 */  lhu        $v0, 0x26($s5)
/* 551B4 8005DE84 8E430040 */  lw         $v1, 0x40($s2)
/* 551B8 8005DE88 0043102B */  sltu       $v0, $v0, $v1
/* 551BC 8005DE8C 10400002 */  beqz       $v0, .L8005DE98
/* 551C0 8005DE90 00000000 */   nop
.L8005DE94:
/* 551C4 8005DE94 24040001 */  addiu      $a0, $zero, 0x1
.L8005DE98:
/* 551C8 8005DE98 10800006 */  beqz       $a0, .L8005DEB4
/* 551CC 8005DE9C 3C048004 */   lui       $a0, %hi(D_8003DA38)
/* 551D0 8005DEA0 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 551D4 8005DEA4 00002821 */  addu       $a1, $zero, $zero
/* 551D8 8005DEA8 00A03021 */  addu       $a2, $a1, $zero
/* 551DC 8005DEAC 0C011ACF */  jal        func_80046B3C
/* 551E0 8005DEB0 00A03821 */   addu      $a3, $a1, $zero
.L8005DEB4:
/* 551E4 8005DEB4 96A30028 */  lhu        $v1, 0x28($s5)
/* 551E8 8005DEB8 8E420044 */  lw         $v0, 0x44($s2)
/* 551EC 8005DEBC 14430005 */  bne        $v0, $v1, .L8005DED4
/* 551F0 8005DEC0 00002021 */   addu      $a0, $zero, $zero
/* 551F4 8005DEC4 96A30026 */  lhu        $v1, 0x26($s5)
/* 551F8 8005DEC8 8E420040 */  lw         $v0, 0x40($s2)
/* 551FC 8005DECC 10430002 */  beq        $v0, $v1, .L8005DED8
/* 55200 8005DED0 00000000 */   nop
.L8005DED4:
/* 55204 8005DED4 24040001 */  addiu      $a0, $zero, 0x1
.L8005DED8:
/* 55208 8005DED8 10800010 */  beqz       $a0, .L8005DF1C
/* 5520C 8005DEDC 02402021 */   addu      $a0, $s2, $zero
/* 55210 8005DEE0 96A30026 */  lhu        $v1, 0x26($s5)
/* 55214 8005DEE4 8E420040 */  lw         $v0, 0x40($s2)
/* 55218 8005DEE8 0062001B */  divu       $zero, $v1, $v0
/* 5521C 8005DEEC 14400002 */  bnez       $v0, .L8005DEF8
/* 55220 8005DEF0 00000000 */   nop
/* 55224 8005DEF4 0007000D */  break      7
.L8005DEF8:
/* 55228 8005DEF8 00004012 */  mflo       $t0
/* 5522C 8005DEFC AFA8003C */  sw         $t0, 0x3C($sp)
/* 55230 8005DF00 96A30028 */  lhu        $v1, 0x28($s5)
/* 55234 8005DF04 8E420044 */  lw         $v0, 0x44($s2)
/* 55238 8005DF08 0062001B */  divu       $zero, $v1, $v0
/* 5523C 8005DF0C 14400002 */  bnez       $v0, .L8005DF18
/* 55240 8005DF10 00000000 */   nop
/* 55244 8005DF14 0007000D */  break      7
.L8005DF18:
/* 55248 8005DF18 0000B812 */  mflo       $s7
.L8005DF1C:
/* 5524C 8005DF1C 27B00018 */  addiu      $s0, $sp, 0x18
/* 55250 8005DF20 02002821 */  addu       $a1, $s0, $zero
/* 55254 8005DF24 8EA80000 */  lw         $t0, 0x0($s5)
/* 55258 8005DF28 8EA90004 */  lw         $t1, 0x4($s5)
/* 5525C 8005DF2C 8EAA0008 */  lw         $t2, 0x8($s5)
/* 55260 8005DF30 8EAB000C */  lw         $t3, 0xC($s5)
/* 55264 8005DF34 AFA80018 */  sw         $t0, 0x18($sp)
/* 55268 8005DF38 AFA9001C */  sw         $t1, 0x1C($sp)
/* 5526C 8005DF3C AFAA0020 */  sw         $t2, 0x20($sp)
/* 55270 8005DF40 AFAB0024 */  sw         $t3, 0x24($sp)
/* 55274 8005DF44 8EA80010 */  lw         $t0, 0x10($s5)
/* 55278 8005DF48 8EA90014 */  lw         $t1, 0x14($s5)
/* 5527C 8005DF4C AFA80028 */  sw         $t0, 0x28($sp)
/* 55280 8005DF50 AFA9002C */  sw         $t1, 0x2C($sp)
/* 55284 8005DF54 0C01436B */  jal        func_80050DAC
/* 55288 8005DF58 02203021 */   addu      $a2, $s1, $zero
/* 5528C 8005DF5C 96020014 */  lhu        $v0, 0x14($s0)
/* 55290 8005DF60 1040000B */  beqz       $v0, .L8005DF90
/* 55294 8005DF64 27A50030 */   addiu     $a1, $sp, 0x30
/* 55298 8005DF68 8EA2002C */  lw         $v0, 0x2C($s5)
/* 5529C 8005DF6C 84440040 */  lh         $a0, 0x40($v0)
/* 552A0 8005DF70 8C420044 */  lw         $v0, 0x44($v0)
/* 552A4 8005DF74 0040F809 */  jalr       $v0
/* 552A8 8005DF78 02A42021 */   addu      $a0, $s5, $a0
/* 552AC 8005DF7C 02402021 */  addu       $a0, $s2, $zero
/* 552B0 8005DF80 00402821 */  addu       $a1, $v0, $zero
/* 552B4 8005DF84 0C014212 */  jal        func_80050848
/* 552B8 8005DF88 02203021 */   addu      $a2, $s1, $zero
/* 552BC 8005DF8C 27A50030 */  addiu      $a1, $sp, 0x30
.L8005DF90:
/* 552C0 8005DF90 27A60034 */  addiu      $a2, $sp, 0x34
/* 552C4 8005DF94 8EA2002C */  lw         $v0, 0x2C($s5)
/* 552C8 8005DF98 24070003 */  addiu      $a3, $zero, 0x3
/* 552CC 8005DF9C 84440010 */  lh         $a0, 0x10($v0)
/* 552D0 8005DFA0 8C420014 */  lw         $v0, 0x14($v0)
/* 552D4 8005DFA4 0040F809 */  jalr       $v0
/* 552D8 8005DFA8 02A42021 */   addu      $a0, $s5, $a0
/* 552DC 8005DFAC 8FB10034 */  lw         $s1, 0x34($sp)
/* 552E0 8005DFB0 8E440048 */  lw         $a0, 0x48($s2)
/* 552E4 8005DFB4 8E5E05D4 */  lw         $fp, 0x5D4($s2)
/* 552E8 8005DFB8 0C00943C */  jal        func_800250F0
/* 552EC 8005DFBC 24840002 */   addiu     $a0, $a0, 0x2
/* 552F0 8005DFC0 0040A021 */  addu       $s4, $v0, $zero
/* 552F4 8005DFC4 16800006 */  bnez       $s4, .L8005DFE0
/* 552F8 8005DFC8 3C048004 */   lui       $a0, %hi(D_8003DA38)
/* 552FC 8005DFCC 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 55300 8005DFD0 00002821 */  addu       $a1, $zero, $zero
/* 55304 8005DFD4 00A03021 */  addu       $a2, $a1, $zero
/* 55308 8005DFD8 0C011ACF */  jal        func_80046B3C
/* 5530C 8005DFDC 00A03821 */   addu      $a3, $a1, $zero
.L8005DFE0:
/* 55310 8005DFE0 8E4205B8 */  lw         $v0, 0x5B8($s2)
/* 55314 8005DFE4 28420009 */  slti       $v0, $v0, 0x9
/* 55318 8005DFE8 1440000C */  bnez       $v0, .L8005E01C
/* 5531C 8005DFEC 02809821 */   addu      $s3, $s4, $zero
/* 55320 8005DFF0 8E440048 */  lw         $a0, 0x48($s2)
/* 55324 8005DFF4 0C00943C */  jal        func_800250F0
/* 55328 8005DFF8 24840002 */   addiu     $a0, $a0, 0x2
/* 5532C 8005DFFC 00409821 */  addu       $s3, $v0, $zero
/* 55330 8005E000 16600006 */  bnez       $s3, .L8005E01C
/* 55334 8005E004 3C048004 */   lui       $a0, %hi(D_8003DA38)
/* 55338 8005E008 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 5533C 8005E00C 00002821 */  addu       $a1, $zero, $zero
/* 55340 8005E010 00A03021 */  addu       $a2, $a1, $zero
/* 55344 8005E014 0C011ACF */  jal        func_80046B3C
/* 55348 8005E018 00A03821 */   addu      $a3, $a1, $zero
.L8005E01C:
/* 5534C 8005E01C 16C00009 */  bnez       $s6, .L8005E044
/* 55350 8005E020 0000B021 */   addu      $s6, $zero, $zero
/* 55354 8005E024 96A20028 */  lhu        $v0, 0x28($s5)
/* 55358 8005E028 2442FFFF */  addiu      $v0, $v0, -0x1
/* 5535C 8005E02C 00510018 */  mult       $v0, $s1
/* 55360 8005E030 00118823 */  negu       $s1, $s1
/* 55364 8005E034 8FA20030 */  lw         $v0, 0x30($sp)
/* 55368 8005E038 00004012 */  mflo       $t0
/* 5536C 8005E03C 00481021 */  addu       $v0, $v0, $t0
/* 55370 8005E040 AFA20030 */  sw         $v0, 0x30($sp)
.L8005E044:
/* 55374 8005E044 27A90018 */  addiu      $t1, $sp, 0x18
/* 55378 8005E048 AFA90040 */  sw         $t1, 0x40($sp)
.L8005E04C:
/* 5537C 8005E04C 8E420044 */  lw         $v0, 0x44($s2)
/* 55380 8005E050 02C2102B */  sltu       $v0, $s6, $v0
/* 55384 8005E054 10400045 */  beqz       $v0, .L8005E16C
/* 55388 8005E058 26440010 */   addiu     $a0, $s2, 0x10
/* 5538C 8005E05C 03C02821 */  addu       $a1, $fp, $zero
/* 55390 8005E060 27A20038 */  addiu      $v0, $sp, 0x38
/* 55394 8005E064 AFA20010 */  sw         $v0, 0x10($sp)
/* 55398 8005E068 8E470048 */  lw         $a3, 0x48($s2)
/* 5539C 8005E06C 0C001A4A */  jal        func_80006928
/* 553A0 8005E070 02803021 */   addu      $a2, $s4, $zero
/* 553A4 8005E074 1040000C */  beqz       $v0, .L8005E0A8
/* 553A8 8005E078 00000000 */   nop
/* 553AC 8005E07C 8EA2002C */  lw         $v0, 0x2C($s5)
/* 553B0 8005E080 84440018 */  lh         $a0, 0x18($v0)
/* 553B4 8005E084 8C42001C */  lw         $v0, 0x1C($v0)
/* 553B8 8005E088 0040F809 */  jalr       $v0
/* 553BC 8005E08C 02A42021 */   addu      $a0, $s5, $a0
/* 553C0 8005E090 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 553C4 8005E094 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 553C8 8005E098 00002821 */  addu       $a1, $zero, $zero
/* 553CC 8005E09C 00A03021 */  addu       $a2, $a1, $zero
/* 553D0 8005E0A0 0C011ACF */  jal        func_80046B3C
/* 553D4 8005E0A4 00A03821 */   addu      $a3, $a1, $zero
.L8005E0A8:
/* 553D8 8005E0A8 8E4205B8 */  lw         $v0, 0x5B8($s2)
/* 553DC 8005E0AC 28420009 */  slti       $v0, $v0, 0x9
/* 553E0 8005E0B0 14400005 */  bnez       $v0, .L8005E0C8
/* 553E4 8005E0B4 02402021 */   addu      $a0, $s2, $zero
/* 553E8 8005E0B8 02802821 */  addu       $a1, $s4, $zero
/* 553EC 8005E0BC 0C017878 */  jal        func_8005E1E0
/* 553F0 8005E0C0 02603021 */   addu      $a2, $s3, $zero
/* 553F4 8005E0C4 02402021 */  addu       $a0, $s2, $zero
.L8005E0C8:
/* 553F8 8005E0C8 02602821 */  addu       $a1, $s3, $zero
/* 553FC 8005E0CC 8FA60030 */  lw         $a2, 0x30($sp)
/* 55400 8005E0D0 0C01443E */  jal        func_800510F8
/* 55404 8005E0D4 27A70018 */   addiu     $a3, $sp, 0x18
/* 55408 8005E0D8 8FAA003C */  lw         $t2, 0x3C($sp)
/* 5540C 8005E0DC 29420002 */  slti       $v0, $t2, 0x2
/* 55410 8005E0E0 1440000A */  bnez       $v0, .L8005E10C
/* 55414 8005E0E4 2AE20002 */   slti      $v0, $s7, 0x2
/* 55418 8005E0E8 02402021 */  addu       $a0, $s2, $zero
/* 5541C 8005E0EC 8FA50030 */  lw         $a1, 0x30($sp)
/* 55420 8005E0F0 8FAB0040 */  lw         $t3, 0x40($sp)
/* 55424 8005E0F4 96A70026 */  lhu        $a3, 0x26($s5)
/* 55428 8005E0F8 95620016 */  lhu        $v0, 0x16($t3)
/* 5542C 8005E0FC 01403021 */  addu       $a2, $t2, $zero
/* 55430 8005E100 0C014D2B */  jal        func_800534AC
/* 55434 8005E104 AFA20010 */   sw        $v0, 0x10($sp)
/* 55438 8005E108 2AE20002 */  slti       $v0, $s7, 0x2
.L8005E10C:
/* 5543C 8005E10C 54400011 */  bnel       $v0, $zero, .L8005E154
/* 55440 8005E110 26D60001 */   addiu     $s6, $s6, 0x1
/* 55444 8005E114 24100001 */  addiu      $s0, $zero, 0x1
/* 55448 8005E118 0217102A */  slt        $v0, $s0, $s7
/* 5544C 8005E11C 5040000D */  beql       $v0, $zero, .L8005E154
/* 55450 8005E120 26D60001 */   addiu     $s6, $s6, 0x1
.L8005E124:
/* 55454 8005E124 8FA50030 */  lw         $a1, 0x30($sp)
/* 55458 8005E128 8FA60034 */  lw         $a2, 0x34($sp)
/* 5545C 8005E12C 0C006E07 */  jal        strncpy
/* 55460 8005E130 00B12021 */   addu      $a0, $a1, $s1
/* 55464 8005E134 8FA20030 */  lw         $v0, 0x30($sp)
/* 55468 8005E138 26100001 */  addiu      $s0, $s0, 0x1
/* 5546C 8005E13C 00511021 */  addu       $v0, $v0, $s1
/* 55470 8005E140 AFA20030 */  sw         $v0, 0x30($sp)
/* 55474 8005E144 0217102A */  slt        $v0, $s0, $s7
/* 55478 8005E148 1440FFF6 */  bnez       $v0, .L8005E124
/* 5547C 8005E14C 00000000 */   nop
/* 55480 8005E150 26D60001 */  addiu      $s6, $s6, 0x1
.L8005E154:
/* 55484 8005E154 8FA30038 */  lw         $v1, 0x38($sp)
/* 55488 8005E158 8FA20030 */  lw         $v0, 0x30($sp)
/* 5548C 8005E15C 03C3F021 */  addu       $fp, $fp, $v1
/* 55490 8005E160 00511021 */  addu       $v0, $v0, $s1
/* 55494 8005E164 08017813 */  j          .L8005E04C
/* 55498 8005E168 AFA20030 */   sw        $v0, 0x30($sp)
.L8005E16C:
/* 5549C 8005E16C 12800003 */  beqz       $s4, .L8005E17C
/* 554A0 8005E170 00000000 */   nop
/* 554A4 8005E174 0C009444 */  jal        func_80025110
/* 554A8 8005E178 02802021 */   addu      $a0, $s4, $zero
.L8005E17C:
/* 554AC 8005E17C 8E4205B8 */  lw         $v0, 0x5B8($s2)
/* 554B0 8005E180 28420009 */  slti       $v0, $v0, 0x9
/* 554B4 8005E184 14400005 */  bnez       $v0, .L8005E19C
/* 554B8 8005E188 00000000 */   nop
/* 554BC 8005E18C 12600003 */  beqz       $s3, .L8005E19C
/* 554C0 8005E190 00000000 */   nop
/* 554C4 8005E194 0C009444 */  jal        func_80025110
/* 554C8 8005E198 02602021 */   addu      $a0, $s3, $zero
.L8005E19C:
/* 554CC 8005E19C 8EA2002C */  lw         $v0, 0x2C($s5)
/* 554D0 8005E1A0 84440018 */  lh         $a0, 0x18($v0)
/* 554D4 8005E1A4 8C42001C */  lw         $v0, 0x1C($v0)
/* 554D8 8005E1A8 0040F809 */  jalr       $v0
/* 554DC 8005E1AC 02A42021 */   addu      $a0, $s5, $a0
/* 554E0 8005E1B0 8FBF006C */  lw         $ra, 0x6C($sp)
/* 554E4 8005E1B4 8FBE0068 */  lw         $fp, 0x68($sp)
/* 554E8 8005E1B8 8FB70064 */  lw         $s7, 0x64($sp)
/* 554EC 8005E1BC 8FB60060 */  lw         $s6, 0x60($sp)
/* 554F0 8005E1C0 8FB5005C */  lw         $s5, 0x5C($sp)
/* 554F4 8005E1C4 8FB40058 */  lw         $s4, 0x58($sp)
/* 554F8 8005E1C8 8FB30054 */  lw         $s3, 0x54($sp)
/* 554FC 8005E1CC 8FB20050 */  lw         $s2, 0x50($sp)
/* 55500 8005E1D0 8FB1004C */  lw         $s1, 0x4C($sp)
/* 55504 8005E1D4 8FB00048 */  lw         $s0, 0x48($sp)
/* 55508 8005E1D8 03E00008 */  jr         $ra
/* 5550C 8005E1DC 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8005E1E0
/* 55510 8005E1E0 00004821 */  addu       $t1, $zero, $zero
/* 55514 8005E1E4 01205821 */  addu       $t3, $t1, $zero
/* 55518 8005E1E8 94820062 */  lhu        $v0, 0x62($a0)
/* 5551C 8005E1EC 8C830040 */  lw         $v1, 0x40($a0)
/* 55520 8005E1F0 24420007 */  addiu      $v0, $v0, 0x7
/* 55524 8005E1F4 10600040 */  beqz       $v1, .L8005E2F8
/* 55528 8005E1F8 000250C2 */   srl       $t2, $v0, 3
/* 5552C 8005E1FC 240FFF7F */  addiu      $t7, $zero, -0x81
/* 55530 8005E200 240EFFFF */  addiu      $t6, $zero, -0x1
/* 55534 8005E204 00C04021 */  addu       $t0, $a2, $zero
.L8005E208:
/* 55538 8005E208 90A70000 */  lbu        $a3, 0x0($a1)
/* 5553C 8005E20C 30E2007F */  andi       $v0, $a3, 0x7F
/* 55540 8005E210 01621021 */  addu       $v0, $t3, $v0
/* 55544 8005E214 24420001 */  addiu      $v0, $v0, 0x1
/* 55548 8005E218 0062102B */  sltu       $v0, $v1, $v0
/* 5554C 8005E21C 14400036 */  bnez       $v0, .L8005E2F8
/* 55550 8005E220 24A50001 */   addiu     $a1, $a1, 0x1
/* 55554 8005E224 30E20080 */  andi       $v0, $a3, 0x80
/* 55558 8005E228 10400021 */  beqz       $v0, .L8005E2B0
/* 5555C 8005E22C 25620001 */   addiu     $v0, $t3, 0x1
/* 55560 8005E230 00EF3824 */  and        $a3, $a3, $t7
/* 55564 8005E234 00475821 */  addu       $t3, $v0, $a3
/* 55568 8005E238 00001821 */  addu       $v1, $zero, $zero
/* 5556C 8005E23C 11400009 */  beqz       $t2, .L8005E264
/* 55570 8005E240 01206021 */   addu      $t4, $t1, $zero
.L8005E244:
/* 55574 8005E244 90A20000 */  lbu        $v0, 0x0($a1)
/* 55578 8005E248 24A50001 */  addiu      $a1, $a1, 0x1
/* 5557C 8005E24C 25290001 */  addiu      $t1, $t1, 0x1
/* 55580 8005E250 24630001 */  addiu      $v1, $v1, 0x1
/* 55584 8005E254 A1020000 */  sb         $v0, 0x0($t0)
/* 55588 8005E258 006A102B */  sltu       $v0, $v1, $t2
/* 5558C 8005E25C 1440FFF9 */  bnez       $v0, .L8005E244
/* 55590 8005E260 25080001 */   addiu     $t0, $t0, 0x1
.L8005E264:
/* 55594 8005E264 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 55598 8005E268 10EE001F */  beq        $a3, $t6, .L8005E2E8
/* 5559C 8005E26C 240DFFFF */   addiu     $t5, $zero, -0x1
.L8005E270:
/* 555A0 8005E270 1140000A */  beqz       $t2, .L8005E29C
/* 555A4 8005E274 00001821 */   addu      $v1, $zero, $zero
.L8005E278:
/* 555A8 8005E278 25290001 */  addiu      $t1, $t1, 0x1
/* 555AC 8005E27C 01831021 */  addu       $v0, $t4, $v1
/* 555B0 8005E280 00C21021 */  addu       $v0, $a2, $v0
/* 555B4 8005E284 90420000 */  lbu        $v0, 0x0($v0)
/* 555B8 8005E288 24630001 */  addiu      $v1, $v1, 0x1
/* 555BC 8005E28C A1020000 */  sb         $v0, 0x0($t0)
/* 555C0 8005E290 006A102B */  sltu       $v0, $v1, $t2
/* 555C4 8005E294 1440FFF8 */  bnez       $v0, .L8005E278
/* 555C8 8005E298 25080001 */   addiu     $t0, $t0, 0x1
.L8005E29C:
/* 555CC 8005E29C 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 555D0 8005E2A0 14EDFFF3 */  bne        $a3, $t5, .L8005E270
/* 555D4 8005E2A4 00000000 */   nop
/* 555D8 8005E2A8 080178BA */  j          .L8005E2E8
/* 555DC 8005E2AC 00000000 */   nop
.L8005E2B0:
/* 555E0 8005E2B0 00475821 */  addu       $t3, $v0, $a3
.L8005E2B4:
/* 555E4 8005E2B4 11400009 */  beqz       $t2, .L8005E2DC
/* 555E8 8005E2B8 00001821 */   addu      $v1, $zero, $zero
.L8005E2BC:
/* 555EC 8005E2BC 90A20000 */  lbu        $v0, 0x0($a1)
/* 555F0 8005E2C0 24A50001 */  addiu      $a1, $a1, 0x1
/* 555F4 8005E2C4 25290001 */  addiu      $t1, $t1, 0x1
/* 555F8 8005E2C8 24630001 */  addiu      $v1, $v1, 0x1
/* 555FC 8005E2CC A1020000 */  sb         $v0, 0x0($t0)
/* 55600 8005E2D0 006A102B */  sltu       $v0, $v1, $t2
/* 55604 8005E2D4 1440FFF9 */  bnez       $v0, .L8005E2BC
/* 55608 8005E2D8 25080001 */   addiu     $t0, $t0, 0x1
.L8005E2DC:
/* 5560C 8005E2DC 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 55610 8005E2E0 14EEFFF4 */  bne        $a3, $t6, .L8005E2B4
/* 55614 8005E2E4 00000000 */   nop
.L8005E2E8:
/* 55618 8005E2E8 8C830040 */  lw         $v1, 0x40($a0)
/* 5561C 8005E2EC 0163102B */  sltu       $v0, $t3, $v1
/* 55620 8005E2F0 1440FFC5 */  bnez       $v0, .L8005E208
/* 55624 8005E2F4 00000000 */   nop
.L8005E2F8:
/* 55628 8005E2F8 03E00008 */  jr         $ra
/* 5562C 8005E2FC 00000000 */   nop

glabel func_8005E300
/* 55630 8005E300 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 55634 8005E304 AFB7008C */  sw         $s7, 0x8C($sp)
/* 55638 8005E308 0080B821 */  addu       $s7, $a0, $zero
/* 5563C 8005E30C AFB40080 */  sw         $s4, 0x80($sp)
/* 55640 8005E310 00A0A021 */  addu       $s4, $a1, $zero
/* 55644 8005E314 AFB60088 */  sw         $s6, 0x88($sp)
/* 55648 8005E318 00C0B021 */  addu       $s6, $a2, $zero
/* 5564C 8005E31C AFB20078 */  sw         $s2, 0x78($sp)
/* 55650 8005E320 00E09021 */  addu       $s2, $a3, $zero
/* 55654 8005E324 27A20018 */  addiu      $v0, $sp, 0x18
/* 55658 8005E328 AFBF0094 */  sw         $ra, 0x94($sp)
/* 5565C 8005E32C AFBE0090 */  sw         $fp, 0x90($sp)
/* 55660 8005E330 AFB50084 */  sw         $s5, 0x84($sp)
/* 55664 8005E334 AFB3007C */  sw         $s3, 0x7C($sp)
/* 55668 8005E338 AFB10074 */  sw         $s1, 0x74($sp)
/* 5566C 8005E33C AFB00070 */  sw         $s0, 0x70($sp)
/* 55670 8005E340 AFA00018 */  sw         $zero, 0x18($sp)
/* 55674 8005E344 AC400004 */  sw         $zero, 0x4($v0)
/* 55678 8005E348 AC400008 */  sw         $zero, 0x8($v0)
/* 5567C 8005E34C AC40000C */  sw         $zero, 0xC($v0)
/* 55680 8005E350 AC400010 */  sw         $zero, 0x10($v0)
/* 55684 8005E354 A4400014 */  sh         $zero, 0x14($v0)
/* 55688 8005E358 A4400016 */  sh         $zero, 0x16($v0)
/* 5568C 8005E35C 8E830034 */  lw         $v1, 0x34($s4)
/* 55690 8005E360 8EE20044 */  lw         $v0, 0x44($s7)
/* 55694 8005E364 14430005 */  bne        $v0, $v1, .L8005E37C
/* 55698 8005E368 00002021 */   addu      $a0, $zero, $zero
/* 5569C 8005E36C 8E830030 */  lw         $v1, 0x30($s4)
/* 556A0 8005E370 8EE20040 */  lw         $v0, 0x40($s7)
/* 556A4 8005E374 10430002 */  beq        $v0, $v1, .L8005E380
/* 556A8 8005E378 00000000 */   nop
.L8005E37C:
/* 556AC 8005E37C 24040001 */  addiu      $a0, $zero, 0x1
.L8005E380:
/* 556B0 8005E380 10800006 */  beqz       $a0, .L8005E39C
/* 556B4 8005E384 00002821 */   addu      $a1, $zero, $zero
/* 556B8 8005E388 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 556BC 8005E38C 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 556C0 8005E390 00A03021 */  addu       $a2, $a1, $zero
/* 556C4 8005E394 0C011ACF */  jal        func_80046B3C
/* 556C8 8005E398 00A03821 */   addu      $a3, $a1, $zero
.L8005E39C:
/* 556CC 8005E39C 00002821 */  addu       $a1, $zero, $zero
/* 556D0 8005E3A0 8E82004C */  lw         $v0, 0x4C($s4)
/* 556D4 8005E3A4 00A03021 */  addu       $a2, $a1, $zero
/* 556D8 8005E3A8 84440040 */  lh         $a0, 0x40($v0)
/* 556DC 8005E3AC 8C420044 */  lw         $v0, 0x44($v0)
/* 556E0 8005E3B0 0040F809 */  jalr       $v0
/* 556E4 8005E3B4 02842021 */   addu      $a0, $s4, $a0
/* 556E8 8005E3B8 02E02021 */  addu       $a0, $s7, $zero
/* 556EC 8005E3BC 27B00018 */  addiu      $s0, $sp, 0x18
/* 556F0 8005E3C0 02002821 */  addu       $a1, $s0, $zero
/* 556F4 8005E3C4 8C480000 */  lw         $t0, 0x0($v0)
/* 556F8 8005E3C8 8C490004 */  lw         $t1, 0x4($v0)
/* 556FC 8005E3CC 8C4A0008 */  lw         $t2, 0x8($v0)
/* 55700 8005E3D0 8C4B000C */  lw         $t3, 0xC($v0)
/* 55704 8005E3D4 AFA80018 */  sw         $t0, 0x18($sp)
/* 55708 8005E3D8 AFA9001C */  sw         $t1, 0x1C($sp)
/* 5570C 8005E3DC AFAA0020 */  sw         $t2, 0x20($sp)
/* 55710 8005E3E0 AFAB0024 */  sw         $t3, 0x24($sp)
/* 55714 8005E3E4 8C480010 */  lw         $t0, 0x10($v0)
/* 55718 8005E3E8 8C490014 */  lw         $t1, 0x14($v0)
/* 5571C 8005E3EC AFA80028 */  sw         $t0, 0x28($sp)
/* 55720 8005E3F0 AFA9002C */  sw         $t1, 0x2C($sp)
/* 55724 8005E3F4 0C01436B */  jal        func_80050DAC
/* 55728 8005E3F8 02403021 */   addu      $a2, $s2, $zero
/* 5572C 8005E3FC 96020014 */  lhu        $v0, 0x14($s0)
/* 55730 8005E400 10400020 */  beqz       $v0, .L8005E484
/* 55734 8005E404 00000000 */   nop
/* 55738 8005E408 8EE20068 */  lw         $v0, 0x68($s7)
/* 5573C 8005E40C 1040001D */  beqz       $v0, .L8005E484
/* 55740 8005E410 00008821 */   addu      $s1, $zero, $zero
.L8005E414:
/* 55744 8005E414 8E820028 */  lw         $v0, 0x28($s4)
/* 55748 8005E418 0222102B */  sltu       $v0, $s1, $v0
/* 5574C 8005E41C 10400019 */  beqz       $v0, .L8005E484
/* 55750 8005E420 00008021 */   addu      $s0, $zero, $zero
.L8005E424:
/* 55754 8005E424 8E82002C */  lw         $v0, 0x2C($s4)
/* 55758 8005E428 0202102B */  sltu       $v0, $s0, $v0
/* 5575C 8005E42C 10400013 */  beqz       $v0, .L8005E47C
/* 55760 8005E430 02202821 */   addu      $a1, $s1, $zero
/* 55764 8005E434 8E82004C */  lw         $v0, 0x4C($s4)
/* 55768 8005E438 02003021 */  addu       $a2, $s0, $zero
/* 5576C 8005E43C 84440040 */  lh         $a0, 0x40($v0)
/* 55770 8005E440 8C420044 */  lw         $v0, 0x44($v0)
/* 55774 8005E444 0040F809 */  jalr       $v0
/* 55778 8005E448 02842021 */   addu      $a0, $s4, $a0
/* 5577C 8005E44C 8C43002C */  lw         $v1, 0x2C($v0)
/* 55780 8005E450 26100001 */  addiu      $s0, $s0, 0x1
/* 55784 8005E454 84640040 */  lh         $a0, 0x40($v1)
/* 55788 8005E458 8C630044 */  lw         $v1, 0x44($v1)
/* 5578C 8005E45C 0060F809 */  jalr       $v1
/* 55790 8005E460 00442021 */   addu      $a0, $v0, $a0
/* 55794 8005E464 02E02021 */  addu       $a0, $s7, $zero
/* 55798 8005E468 00402821 */  addu       $a1, $v0, $zero
/* 5579C 8005E46C 0C014212 */  jal        func_80050848
/* 557A0 8005E470 02403021 */   addu      $a2, $s2, $zero
/* 557A4 8005E474 08017909 */  j          .L8005E424
/* 557A8 8005E478 00000000 */   nop
.L8005E47C:
/* 557AC 8005E47C 08017905 */  j          .L8005E414
/* 557B0 8005E480 26310001 */   addiu     $s1, $s1, 0x1
.L8005E484:
/* 557B4 8005E484 8E830028 */  lw         $v1, 0x28($s4)
/* 557B8 8005E488 8E82002C */  lw         $v0, 0x2C($s4)
/* 557BC 8005E48C 00620018 */  mult       $v1, $v0
/* 557C0 8005E490 00004012 */  mflo       $t0
/* 557C4 8005E494 0C00943C */  jal        func_800250F0
/* 557C8 8005E498 00082080 */   sll       $a0, $t0, 2
/* 557CC 8005E49C 14400007 */  bnez       $v0, .L8005E4BC
/* 557D0 8005E4A0 AFA20054 */   sw        $v0, 0x54($sp)
/* 557D4 8005E4A4 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 557D8 8005E4A8 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 557DC 8005E4AC 00002821 */  addu       $a1, $zero, $zero
/* 557E0 8005E4B0 00A03021 */  addu       $a2, $a1, $zero
/* 557E4 8005E4B4 0C011ACF */  jal        func_80046B3C
/* 557E8 8005E4B8 00A03821 */   addu      $a3, $a1, $zero
.L8005E4BC:
/* 557EC 8005E4BC 8E830028 */  lw         $v1, 0x28($s4)
/* 557F0 8005E4C0 8E82002C */  lw         $v0, 0x2C($s4)
/* 557F4 8005E4C4 00620018 */  mult       $v1, $v0
/* 557F8 8005E4C8 00004012 */  mflo       $t0
/* 557FC 8005E4CC 0C00943C */  jal        func_800250F0
/* 55800 8005E4D0 00082080 */   sll       $a0, $t0, 2
/* 55804 8005E4D4 14400007 */  bnez       $v0, .L8005E4F4
/* 55808 8005E4D8 AFA20050 */   sw        $v0, 0x50($sp)
/* 5580C 8005E4DC 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 55810 8005E4E0 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 55814 8005E4E4 00002821 */  addu       $a1, $zero, $zero
/* 55818 8005E4E8 00A03021 */  addu       $a2, $a1, $zero
/* 5581C 8005E4EC 0C011ACF */  jal        func_80046B3C
/* 55820 8005E4F0 00A03821 */   addu      $a3, $a1, $zero
.L8005E4F4:
/* 55824 8005E4F4 00008821 */  addu       $s1, $zero, $zero
.L8005E4F8:
/* 55828 8005E4F8 8E820028 */  lw         $v0, 0x28($s4)
/* 5582C 8005E4FC 0222102B */  sltu       $v0, $s1, $v0
/* 55830 8005E500 10400026 */  beqz       $v0, .L8005E59C
/* 55834 8005E504 00008021 */   addu      $s0, $zero, $zero
.L8005E508:
/* 55838 8005E508 8E82002C */  lw         $v0, 0x2C($s4)
/* 5583C 8005E50C 0202102B */  sltu       $v0, $s0, $v0
/* 55840 8005E510 10400020 */  beqz       $v0, .L8005E594
/* 55844 8005E514 02202821 */   addu      $a1, $s1, $zero
/* 55848 8005E518 8E82004C */  lw         $v0, 0x4C($s4)
/* 5584C 8005E51C 02003021 */  addu       $a2, $s0, $zero
/* 55850 8005E520 84440040 */  lh         $a0, 0x40($v0)
/* 55854 8005E524 8C420044 */  lw         $v0, 0x44($v0)
/* 55858 8005E528 0040F809 */  jalr       $v0
/* 5585C 8005E52C 02842021 */   addu      $a0, $s4, $a0
/* 55860 8005E530 8E83002C */  lw         $v1, 0x2C($s4)
/* 55864 8005E534 27A60030 */  addiu      $a2, $sp, 0x30
/* 55868 8005E538 02230018 */  mult       $s1, $v1
/* 5586C 8005E53C 8C43002C */  lw         $v1, 0x2C($v0)
/* 55870 8005E540 24070003 */  addiu      $a3, $zero, 0x3
/* 55874 8005E544 84640010 */  lh         $a0, 0x10($v1)
/* 55878 8005E548 8FA90054 */  lw         $t1, 0x54($sp)
/* 5587C 8005E54C 00442021 */  addu       $a0, $v0, $a0
/* 55880 8005E550 8C620014 */  lw         $v0, 0x14($v1)
/* 55884 8005E554 00004012 */  mflo       $t0
/* 55888 8005E558 01102821 */  addu       $a1, $t0, $s0
/* 5588C 8005E55C 00052880 */  sll        $a1, $a1, 2
/* 55890 8005E560 0040F809 */  jalr       $v0
/* 55894 8005E564 01252821 */   addu      $a1, $t1, $a1
/* 55898 8005E568 8E82002C */  lw         $v0, 0x2C($s4)
/* 5589C 8005E56C 02220018 */  mult       $s1, $v0
/* 558A0 8005E570 8FA30030 */  lw         $v1, 0x30($sp)
/* 558A4 8005E574 8FA90050 */  lw         $t1, 0x50($sp)
/* 558A8 8005E578 00004012 */  mflo       $t0
/* 558AC 8005E57C 01101021 */  addu       $v0, $t0, $s0
/* 558B0 8005E580 26100001 */  addiu      $s0, $s0, 0x1
/* 558B4 8005E584 00021080 */  sll        $v0, $v0, 2
/* 558B8 8005E588 00491021 */  addu       $v0, $v0, $t1
/* 558BC 8005E58C 08017942 */  j          .L8005E508
/* 558C0 8005E590 AC430000 */   sw        $v1, 0x0($v0)
.L8005E594:
/* 558C4 8005E594 0801793E */  j          .L8005E4F8
/* 558C8 8005E598 26310001 */   addiu     $s1, $s1, 0x1
.L8005E59C:
/* 558CC 8005E59C 8EE40048 */  lw         $a0, 0x48($s7)
/* 558D0 8005E5A0 8EEA05D4 */  lw         $t2, 0x5D4($s7)
/* 558D4 8005E5A4 24840002 */  addiu      $a0, $a0, 0x2
/* 558D8 8005E5A8 0C00943C */  jal        func_800250F0
/* 558DC 8005E5AC AFAA004C */   sw        $t2, 0x4C($sp)
/* 558E0 8005E5B0 14400007 */  bnez       $v0, .L8005E5D0
/* 558E4 8005E5B4 AFA20058 */   sw        $v0, 0x58($sp)
/* 558E8 8005E5B8 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 558EC 8005E5BC 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 558F0 8005E5C0 00002821 */  addu       $a1, $zero, $zero
/* 558F4 8005E5C4 00A03021 */  addu       $a2, $a1, $zero
/* 558F8 8005E5C8 0C011ACF */  jal        func_80046B3C
/* 558FC 8005E5CC 00A03821 */   addu      $a3, $a1, $zero
.L8005E5D0:
/* 55900 8005E5D0 8EE40048 */  lw         $a0, 0x48($s7)
/* 55904 8005E5D4 24840002 */  addiu      $a0, $a0, 0x2
/* 55908 8005E5D8 0C00943C */  jal        func_800250F0
/* 5590C 8005E5DC 00042080 */   sll       $a0, $a0, 2
/* 55910 8005E5E0 14400007 */  bnez       $v0, .L8005E600
/* 55914 8005E5E4 AFA2005C */   sw        $v0, 0x5C($sp)
/* 55918 8005E5E8 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 5591C 8005E5EC 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 55920 8005E5F0 00002821 */  addu       $a1, $zero, $zero
/* 55924 8005E5F4 00A03021 */  addu       $a2, $a1, $zero
/* 55928 8005E5F8 0C011ACF */  jal        func_80046B3C
/* 5592C 8005E5FC 00A03821 */   addu      $a3, $a1, $zero
.L8005E600:
/* 55930 8005E600 8EE205B8 */  lw         $v0, 0x5B8($s7)
/* 55934 8005E604 28420009 */  slti       $v0, $v0, 0x9
/* 55938 8005E608 1440000F */  bnez       $v0, .L8005E648
/* 5593C 8005E60C 00009821 */   addu      $s3, $zero, $zero
/* 55940 8005E610 8EE40048 */  lw         $a0, 0x48($s7)
/* 55944 8005E614 0C00943C */  jal        func_800250F0
/* 55948 8005E618 24840002 */   addiu     $a0, $a0, 0x2
/* 5594C 8005E61C 0040F021 */  addu       $fp, $v0, $zero
/* 55950 8005E620 17C0000A */  bnez       $fp, .L8005E64C
/* 55954 8005E624 00009821 */   addu      $s3, $zero, $zero
/* 55958 8005E628 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 5595C 8005E62C 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 55960 8005E630 00002821 */  addu       $a1, $zero, $zero
/* 55964 8005E634 00A03021 */  addu       $a2, $a1, $zero
/* 55968 8005E638 0C011ACF */  jal        func_80046B3C
/* 5596C 8005E63C 00A03821 */   addu      $a3, $a1, $zero
/* 55970 8005E640 08017993 */  j          .L8005E64C
/* 55974 8005E644 00009821 */   addu      $s3, $zero, $zero
.L8005E648:
/* 55978 8005E648 8FBE0058 */  lw         $fp, 0x58($sp)
.L8005E64C:
/* 5597C 8005E64C 0260A821 */  addu       $s5, $s3, $zero
/* 55980 8005E650 97A2002E */  lhu        $v0, 0x2E($sp)
/* 55984 8005E654 240B0001 */  addiu      $t3, $zero, 0x1
/* 55988 8005E658 AFAB0064 */  sw         $t3, 0x64($sp)
/* 5598C 8005E65C 000210C2 */  srl        $v0, $v0, 3
/* 55990 8005E660 16C0001E */  bnez       $s6, .L8005E6DC
/* 55994 8005E664 AFA20060 */   sw        $v0, 0x60($sp)
/* 55998 8005E668 2408FFFF */  addiu      $t0, $zero, -0x1
/* 5599C 8005E66C 02602021 */  addu       $a0, $s3, $zero
/* 559A0 8005E670 02608021 */  addu       $s0, $s3, $zero
/* 559A4 8005E674 27A60034 */  addiu      $a2, $sp, 0x34
/* 559A8 8005E678 AFA80064 */  sw         $t0, 0x64($sp)
/* 559AC 8005E67C 8E82002C */  lw         $v0, 0x2C($s4)
/* 559B0 8005E680 27A50038 */  addiu      $a1, $sp, 0x38
/* 559B4 8005E684 0048A821 */  addu       $s5, $v0, $t0
.L8005E688:
/* 559B8 8005E688 8E82002C */  lw         $v0, 0x2C($s4)
/* 559BC 8005E68C 0202102B */  sltu       $v0, $s0, $v0
/* 559C0 8005E690 1040000D */  beqz       $v0, .L8005E6C8
/* 559C4 8005E694 00000000 */   nop
/* 559C8 8005E698 8E820000 */  lw         $v0, 0x0($s4)
/* 559CC 8005E69C 8C420000 */  lw         $v0, 0x0($v0)
/* 559D0 8005E6A0 ACC20000 */  sw         $v0, 0x0($a2)
/* 559D4 8005E6A4 8E830004 */  lw         $v1, 0x4($s4)
/* 559D8 8005E6A8 00101080 */  sll        $v0, $s0, 2
/* 559DC 8005E6AC 00431021 */  addu       $v0, $v0, $v1
/* 559E0 8005E6B0 8C420000 */  lw         $v0, 0x0($v0)
/* 559E4 8005E6B4 ACA20000 */  sw         $v0, 0x0($a1)
/* 559E8 8005E6B8 8FA20038 */  lw         $v0, 0x38($sp)
/* 559EC 8005E6BC 26100001 */  addiu      $s0, $s0, 0x1
/* 559F0 8005E6C0 080179A2 */  j          .L8005E688
/* 559F4 8005E6C4 00822021 */   addu      $a0, $a0, $v0
.L8005E6C8:
/* 559F8 8005E6C8 8FA20038 */  lw         $v0, 0x38($sp)
/* 559FC 8005E6CC 8E830034 */  lw         $v1, 0x34($s4)
/* 55A00 8005E6D0 00821023 */  subu       $v0, $a0, $v0
/* 55A04 8005E6D4 00621823 */  subu       $v1, $v1, $v0
/* 55A08 8005E6D8 2473FFFF */  addiu      $s3, $v1, -0x1
.L8005E6DC:
/* 55A0C 8005E6DC AFA00048 */  sw         $zero, 0x48($sp)
/* 55A10 8005E6E0 3C097FFF */  lui        $t1, (0x7FFFFFFF >> 16)
/* 55A14 8005E6E4 3529FFFF */  ori        $t1, $t1, (0x7FFFFFFF & 0xFFFF)
/* 55A18 8005E6E8 AFA90068 */  sw         $t1, 0x68($sp)
.L8005E6EC:
/* 55A1C 8005E6EC 8EE20044 */  lw         $v0, 0x44($s7)
/* 55A20 8005E6F0 8FAA0048 */  lw         $t2, 0x48($sp)
/* 55A24 8005E6F4 0142102B */  sltu       $v0, $t2, $v0
/* 55A28 8005E6F8 1040007C */  beqz       $v0, .L8005E8EC
/* 55A2C 8005E6FC 27A2003C */   addiu     $v0, $sp, 0x3C
/* 55A30 8005E700 8FA5004C */  lw         $a1, 0x4C($sp)
/* 55A34 8005E704 AFA20010 */  sw         $v0, 0x10($sp)
/* 55A38 8005E708 8EE70048 */  lw         $a3, 0x48($s7)
/* 55A3C 8005E70C 8FA60058 */  lw         $a2, 0x58($sp)
/* 55A40 8005E710 0C001A4A */  jal        func_80006928
/* 55A44 8005E714 26E40010 */   addiu     $a0, $s7, 0x10
/* 55A48 8005E718 1040001F */  beqz       $v0, .L8005E798
/* 55A4C 8005E71C 00008821 */   addu      $s1, $zero, $zero
.L8005E720:
/* 55A50 8005E720 8E820028 */  lw         $v0, 0x28($s4)
/* 55A54 8005E724 0222102B */  sltu       $v0, $s1, $v0
/* 55A58 8005E728 10400015 */  beqz       $v0, .L8005E780
/* 55A5C 8005E72C 00008021 */   addu      $s0, $zero, $zero
.L8005E730:
/* 55A60 8005E730 8E82002C */  lw         $v0, 0x2C($s4)
/* 55A64 8005E734 0202102B */  sltu       $v0, $s0, $v0
/* 55A68 8005E738 1040000F */  beqz       $v0, .L8005E778
/* 55A6C 8005E73C 02202821 */   addu      $a1, $s1, $zero
/* 55A70 8005E740 8E82004C */  lw         $v0, 0x4C($s4)
/* 55A74 8005E744 02003021 */  addu       $a2, $s0, $zero
/* 55A78 8005E748 84440040 */  lh         $a0, 0x40($v0)
/* 55A7C 8005E74C 8C420044 */  lw         $v0, 0x44($v0)
/* 55A80 8005E750 0040F809 */  jalr       $v0
/* 55A84 8005E754 02842021 */   addu      $a0, $s4, $a0
/* 55A88 8005E758 8C43002C */  lw         $v1, 0x2C($v0)
/* 55A8C 8005E75C 26100001 */  addiu      $s0, $s0, 0x1
/* 55A90 8005E760 84640018 */  lh         $a0, 0x18($v1)
/* 55A94 8005E764 8C63001C */  lw         $v1, 0x1C($v1)
/* 55A98 8005E768 0060F809 */  jalr       $v1
/* 55A9C 8005E76C 00442021 */   addu      $a0, $v0, $a0
/* 55AA0 8005E770 080179CC */  j          .L8005E730
/* 55AA4 8005E774 00000000 */   nop
.L8005E778:
/* 55AA8 8005E778 080179C8 */  j          .L8005E720
/* 55AAC 8005E77C 26310001 */   addiu     $s1, $s1, 0x1
.L8005E780:
/* 55AB0 8005E780 3C048004 */  lui        $a0, %hi(D_8003DA38)
/* 55AB4 8005E784 2484DA38 */  addiu      $a0, $a0, %lo(D_8003DA38)
/* 55AB8 8005E788 00002821 */  addu       $a1, $zero, $zero
/* 55ABC 8005E78C 00A03021 */  addu       $a2, $a1, $zero
/* 55AC0 8005E790 0C011ACF */  jal        func_80046B3C
/* 55AC4 8005E794 00A03821 */   addu      $a3, $a1, $zero
.L8005E798:
/* 55AC8 8005E798 8EE205B8 */  lw         $v0, 0x5B8($s7)
/* 55ACC 8005E79C 28420009 */  slti       $v0, $v0, 0x9
/* 55AD0 8005E7A0 14400005 */  bnez       $v0, .L8005E7B8
/* 55AD4 8005E7A4 02E02021 */   addu      $a0, $s7, $zero
/* 55AD8 8005E7A8 8FA50058 */  lw         $a1, 0x58($sp)
/* 55ADC 8005E7AC 0C017878 */  jal        func_8005E1E0
/* 55AE0 8005E7B0 03C03021 */   addu      $a2, $fp, $zero
/* 55AE4 8005E7B4 02E02021 */  addu       $a0, $s7, $zero
.L8005E7B8:
/* 55AE8 8005E7B8 03C02821 */  addu       $a1, $fp, $zero
/* 55AEC 8005E7BC 8FA6005C */  lw         $a2, 0x5C($sp)
/* 55AF0 8005E7C0 0C01443E */  jal        func_800510F8
/* 55AF4 8005E7C4 27A70018 */   addiu     $a3, $sp, 0x18
/* 55AF8 8005E7C8 00009021 */  addu       $s2, $zero, $zero
/* 55AFC 8005E7CC 02408821 */  addu       $s1, $s2, $zero
/* 55B00 8005E7D0 0015B080 */  sll        $s6, $s5, 2
/* 55B04 8005E7D4 AFA00044 */  sw         $zero, 0x44($sp)
.L8005E7D8:
/* 55B08 8005E7D8 8E820028 */  lw         $v0, 0x28($s4)
/* 55B0C 8005E7DC 0222102B */  sltu       $v0, $s1, $v0
/* 55B10 8005E7E0 1040002D */  beqz       $v0, .L8005E898
/* 55B14 8005E7E4 00111080 */   sll       $v0, $s1, 2
/* 55B18 8005E7E8 8E840000 */  lw         $a0, 0x0($s4)
/* 55B1C 8005E7EC 8E830004 */  lw         $v1, 0x4($s4)
/* 55B20 8005E7F0 8FAB0068 */  lw         $t3, 0x68($sp)
/* 55B24 8005E7F4 00441021 */  addu       $v0, $v0, $a0
/* 55B28 8005E7F8 02C31821 */  addu       $v1, $s6, $v1
/* 55B2C 8005E7FC 8C420000 */  lw         $v0, 0x0($v0)
/* 55B30 8005E800 8C630000 */  lw         $v1, 0x0($v1)
/* 55B34 8005E804 AFA20040 */  sw         $v0, 0x40($sp)
/* 55B38 8005E808 166B0002 */  bne        $s3, $t3, .L8005E814
/* 55B3C 8005E80C AFA30044 */   sw        $v1, 0x44($sp)
/* 55B40 8005E810 2473FFFF */  addiu      $s3, $v1, -0x1
.L8005E814:
/* 55B44 8005E814 8FA80060 */  lw         $t0, 0x60($sp)
/* 55B48 8005E818 00480018 */  mult       $v0, $t0
/* 55B4C 8005E81C 00008012 */  mflo       $s0
/* 55B50 8005E820 8EE20040 */  lw         $v0, 0x40($s7)
/* 55B54 8005E824 00000000 */  nop
/* 55B58 8005E828 00480018 */  mult       $v0, $t0
/* 55B5C 8005E82C 02121021 */  addu       $v0, $s0, $s2
/* 55B60 8005E830 00001812 */  mflo       $v1
/* 55B64 8005E834 0062102B */  sltu       $v0, $v1, $v0
/* 55B68 8005E838 54400001 */  bnel       $v0, $zero, .L8005E840
/* 55B6C 8005E83C 00728023 */   subu      $s0, $v1, $s2
.L8005E840:
/* 55B70 8005E840 8E82002C */  lw         $v0, 0x2C($s4)
/* 55B74 8005E844 02220018 */  mult       $s1, $v0
/* 55B78 8005E848 02003021 */  addu       $a2, $s0, $zero
/* 55B7C 8005E84C 8FA8005C */  lw         $t0, 0x5C($sp)
/* 55B80 8005E850 8FAA0050 */  lw         $t2, 0x50($sp)
/* 55B84 8005E854 01122821 */  addu       $a1, $t0, $s2
/* 55B88 8005E858 00004812 */  mflo       $t1
/* 55B8C 8005E85C 01351821 */  addu       $v1, $t1, $s5
/* 55B90 8005E860 00031880 */  sll        $v1, $v1, 2
/* 55B94 8005E864 006A1021 */  addu       $v0, $v1, $t2
/* 55B98 8005E868 8C420000 */  lw         $v0, 0x0($v0)
/* 55B9C 8005E86C 02469021 */  addu       $s2, $s2, $a2
/* 55BA0 8005E870 00530018 */  mult       $v0, $s3
/* 55BA4 8005E874 8FA80054 */  lw         $t0, 0x54($sp)
/* 55BA8 8005E878 26310001 */  addiu      $s1, $s1, 0x1
/* 55BAC 8005E87C 00681821 */  addu       $v1, $v1, $t0
/* 55BB0 8005E880 8C640000 */  lw         $a0, 0x0($v1)
/* 55BB4 8005E884 00004812 */  mflo       $t1
/* 55BB8 8005E888 0C006E07 */  jal        strncpy
/* 55BBC 8005E88C 00892021 */   addu      $a0, $a0, $t1
/* 55BC0 8005E890 080179F6 */  j          .L8005E7D8
/* 55BC4 8005E894 00000000 */   nop
.L8005E898:
/* 55BC8 8005E898 8FAA0064 */  lw         $t2, 0x64($sp)
/* 55BCC 8005E89C 8FA2003C */  lw         $v0, 0x3C($sp)
/* 55BD0 8005E8A0 8FA30044 */  lw         $v1, 0x44($sp)
/* 55BD4 8005E8A4 8FAB004C */  lw         $t3, 0x4C($sp)
/* 55BD8 8005E8A8 026A9821 */  addu       $s3, $s3, $t2
/* 55BDC 8005E8AC 01625821 */  addu       $t3, $t3, $v0
/* 55BE0 8005E8B0 16630004 */  bne        $s3, $v1, .L8005E8C4
/* 55BE4 8005E8B4 AFAB004C */   sw        $t3, 0x4C($sp)
/* 55BE8 8005E8B8 00009821 */  addu       $s3, $zero, $zero
/* 55BEC 8005E8BC 08017A37 */  j          .L8005E8DC
/* 55BF0 8005E8C0 26B50001 */   addiu     $s5, $s5, 0x1
.L8005E8C4:
/* 55BF4 8005E8C4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 55BF8 8005E8C8 16620004 */  bne        $s3, $v0, .L8005E8DC
/* 55BFC 8005E8CC 00000000 */   nop
/* 55C00 8005E8D0 3C137FFF */  lui        $s3, (0x7FFFFFFF >> 16)
/* 55C04 8005E8D4 3673FFFF */  ori        $s3, $s3, (0x7FFFFFFF & 0xFFFF)
/* 55C08 8005E8D8 02A2A821 */  addu       $s5, $s5, $v0
.L8005E8DC:
/* 55C0C 8005E8DC 8FA80048 */  lw         $t0, 0x48($sp)
/* 55C10 8005E8E0 25080001 */  addiu      $t0, $t0, 0x1
/* 55C14 8005E8E4 080179BB */  j          .L8005E6EC
/* 55C18 8005E8E8 AFA80048 */   sw        $t0, 0x48($sp)
.L8005E8EC:
/* 55C1C 8005E8EC 8FA90058 */  lw         $t1, 0x58($sp)
/* 55C20 8005E8F0 11200003 */  beqz       $t1, .L8005E900
/* 55C24 8005E8F4 00000000 */   nop
/* 55C28 8005E8F8 0C009444 */  jal        func_80025110
/* 55C2C 8005E8FC 01202021 */   addu      $a0, $t1, $zero
.L8005E900:
/* 55C30 8005E900 8FAA005C */  lw         $t2, 0x5C($sp)
/* 55C34 8005E904 11400003 */  beqz       $t2, .L8005E914
/* 55C38 8005E908 00000000 */   nop
/* 55C3C 8005E90C 0C009444 */  jal        func_80025110
/* 55C40 8005E910 01402021 */   addu      $a0, $t2, $zero
.L8005E914:
/* 55C44 8005E914 8FAB0054 */  lw         $t3, 0x54($sp)
/* 55C48 8005E918 11600003 */  beqz       $t3, .L8005E928
/* 55C4C 8005E91C 00000000 */   nop
/* 55C50 8005E920 0C009444 */  jal        func_80025110
/* 55C54 8005E924 01602021 */   addu      $a0, $t3, $zero
.L8005E928:
/* 55C58 8005E928 8FA80050 */  lw         $t0, 0x50($sp)
/* 55C5C 8005E92C 11000003 */  beqz       $t0, .L8005E93C
/* 55C60 8005E930 00000000 */   nop
/* 55C64 8005E934 0C009444 */  jal        func_80025110
/* 55C68 8005E938 01002021 */   addu      $a0, $t0, $zero
.L8005E93C:
/* 55C6C 8005E93C 8EE205B8 */  lw         $v0, 0x5B8($s7)
/* 55C70 8005E940 28420009 */  slti       $v0, $v0, 0x9
/* 55C74 8005E944 14400006 */  bnez       $v0, .L8005E960
/* 55C78 8005E948 00008821 */   addu      $s1, $zero, $zero
/* 55C7C 8005E94C 13C00004 */  beqz       $fp, .L8005E960
/* 55C80 8005E950 00000000 */   nop
/* 55C84 8005E954 0C009444 */  jal        func_80025110
/* 55C88 8005E958 03C02021 */   addu      $a0, $fp, $zero
/* 55C8C 8005E95C 00008821 */  addu       $s1, $zero, $zero
.L8005E960:
/* 55C90 8005E960 8E820028 */  lw         $v0, 0x28($s4)
/* 55C94 8005E964 0222102B */  sltu       $v0, $s1, $v0
/* 55C98 8005E968 10400015 */  beqz       $v0, .L8005E9C0
/* 55C9C 8005E96C 00008021 */   addu      $s0, $zero, $zero
.L8005E970:
/* 55CA0 8005E970 8E82002C */  lw         $v0, 0x2C($s4)
/* 55CA4 8005E974 0202102B */  sltu       $v0, $s0, $v0
/* 55CA8 8005E978 1040000F */  beqz       $v0, .L8005E9B8
/* 55CAC 8005E97C 02202821 */   addu      $a1, $s1, $zero
/* 55CB0 8005E980 8E82004C */  lw         $v0, 0x4C($s4)
/* 55CB4 8005E984 02003021 */  addu       $a2, $s0, $zero
/* 55CB8 8005E988 84440040 */  lh         $a0, 0x40($v0)
/* 55CBC 8005E98C 8C420044 */  lw         $v0, 0x44($v0)
/* 55CC0 8005E990 0040F809 */  jalr       $v0
/* 55CC4 8005E994 02842021 */   addu      $a0, $s4, $a0
/* 55CC8 8005E998 8C43002C */  lw         $v1, 0x2C($v0)
/* 55CCC 8005E99C 26100001 */  addiu      $s0, $s0, 0x1
/* 55CD0 8005E9A0 84640018 */  lh         $a0, 0x18($v1)
/* 55CD4 8005E9A4 8C63001C */  lw         $v1, 0x1C($v1)
/* 55CD8 8005E9A8 0060F809 */  jalr       $v1
/* 55CDC 8005E9AC 00442021 */   addu      $a0, $v0, $a0
/* 55CE0 8005E9B0 08017A5C */  j          .L8005E970
/* 55CE4 8005E9B4 00000000 */   nop
.L8005E9B8:
/* 55CE8 8005E9B8 08017A58 */  j          .L8005E960
/* 55CEC 8005E9BC 26310001 */   addiu     $s1, $s1, 0x1
.L8005E9C0:
/* 55CF0 8005E9C0 8E830038 */  lw         $v1, 0x38($s4)
/* 55CF4 8005E9C4 2402FFF9 */  addiu      $v0, $zero, -0x7
/* 55CF8 8005E9C8 00621824 */  and        $v1, $v1, $v0
/* 55CFC 8005E9CC 34620008 */  ori        $v0, $v1, 0x8
/* 55D00 8005E9D0 AE820038 */  sw         $v0, 0x38($s4)
/* 55D04 8005E9D4 30420030 */  andi       $v0, $v0, 0x30
/* 55D08 8005E9D8 14400002 */  bnez       $v0, .L8005E9E4
/* 55D0C 8005E9DC 34620018 */   ori       $v0, $v1, 0x18
/* 55D10 8005E9E0 AE820038 */  sw         $v0, 0x38($s4)
.L8005E9E4:
/* 55D14 8005E9E4 8FBF0094 */  lw         $ra, 0x94($sp)
/* 55D18 8005E9E8 8FBE0090 */  lw         $fp, 0x90($sp)
/* 55D1C 8005E9EC 8FB7008C */  lw         $s7, 0x8C($sp)
/* 55D20 8005E9F0 8FB60088 */  lw         $s6, 0x88($sp)
/* 55D24 8005E9F4 8FB50084 */  lw         $s5, 0x84($sp)
/* 55D28 8005E9F8 8FB40080 */  lw         $s4, 0x80($sp)
/* 55D2C 8005E9FC 8FB3007C */  lw         $s3, 0x7C($sp)
/* 55D30 8005EA00 8FB20078 */  lw         $s2, 0x78($sp)
/* 55D34 8005EA04 8FB10074 */  lw         $s1, 0x74($sp)
/* 55D38 8005EA08 8FB00070 */  lw         $s0, 0x70($sp)
/* 55D3C 8005EA0C 03E00008 */  jr         $ra
/* 55D40 8005EA10 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_8005EA14
/* 55D44 8005EA14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 55D48 8005EA18 AFBF0010 */  sw         $ra, 0x10($sp)
/* 55D4C 8005EA1C 0C0141BA */  jal        func_800506E8
/* 55D50 8005EA20 00000000 */   nop
/* 55D54 8005EA24 8FBF0010 */  lw         $ra, 0x10($sp)
/* 55D58 8005EA28 03E00008 */  jr         $ra
/* 55D5C 8005EA2C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005EA30
/* 55D60 8005EA30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 55D64 8005EA34 AFB00010 */  sw         $s0, 0x10($sp)
/* 55D68 8005EA38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 55D6C 8005EA3C 0C01637C */  jal        func_80058DF0
/* 55D70 8005EA40 00808021 */   addu      $s0, $a0, $zero
/* 55D74 8005EA44 02001021 */  addu       $v0, $s0, $zero
/* 55D78 8005EA48 3C038004 */  lui        $v1, %hi(D_8003DBF0)
/* 55D7C 8005EA4C 2463DBF0 */  addiu      $v1, $v1, %lo(D_8003DBF0)
/* 55D80 8005EA50 AC430008 */  sw         $v1, 0x8($v0)
/* 55D84 8005EA54 AC40000C */  sw         $zero, 0xC($v0)
/* 55D88 8005EA58 AC400010 */  sw         $zero, 0x10($v0)
/* 55D8C 8005EA5C AC400014 */  sw         $zero, 0x14($v0)
/* 55D90 8005EA60 AC400018 */  sw         $zero, 0x18($v0)
/* 55D94 8005EA64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 55D98 8005EA68 8FB00010 */  lw         $s0, 0x10($sp)
/* 55D9C 8005EA6C 03E00008 */  jr         $ra
/* 55DA0 8005EA70 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005EA74
/* 55DA4 8005EA74 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 55DA8 8005EA78 AFB00010 */  sw         $s0, 0x10($sp)
/* 55DAC 8005EA7C 00808021 */  addu       $s0, $a0, $zero
/* 55DB0 8005EA80 AFB10014 */  sw         $s1, 0x14($sp)
/* 55DB4 8005EA84 00A08821 */  addu       $s1, $a1, $zero
/* 55DB8 8005EA88 3C028004 */  lui        $v0, %hi(D_8003DBF0)
/* 55DBC 8005EA8C 2442DBF0 */  addiu      $v0, $v0, %lo(D_8003DBF0)
/* 55DC0 8005EA90 AFBF0018 */  sw         $ra, 0x18($sp)
/* 55DC4 8005EA94 0C017C90 */  jal        func_8005F240
/* 55DC8 8005EA98 AE020008 */   sw        $v0, 0x8($s0)
/* 55DCC 8005EA9C 02002021 */  addu       $a0, $s0, $zero
/* 55DD0 8005EAA0 0C016383 */  jal        func_80058E0C
/* 55DD4 8005EAA4 02202821 */   addu      $a1, $s1, $zero
/* 55DD8 8005EAA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 55DDC 8005EAAC 8FB10014 */  lw         $s1, 0x14($sp)
/* 55DE0 8005EAB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 55DE4 8005EAB4 03E00008 */  jr         $ra
/* 55DE8 8005EAB8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8005EABC
/* 55DEC 8005EABC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 55DF0 8005EAC0 AFB50034 */  sw         $s5, 0x34($sp)
/* 55DF4 8005EAC4 0080A821 */  addu       $s5, $a0, $zero
/* 55DF8 8005EAC8 AFB00020 */  sw         $s0, 0x20($sp)
/* 55DFC 8005EACC 00A08021 */  addu       $s0, $a1, $zero
/* 55E00 8005EAD0 AFB20028 */  sw         $s2, 0x28($sp)
/* 55E04 8005EAD4 00C09021 */  addu       $s2, $a2, $zero
/* 55E08 8005EAD8 AFBF003C */  sw         $ra, 0x3C($sp)
/* 55E0C 8005EADC AFB60038 */  sw         $s6, 0x38($sp)
/* 55E10 8005EAE0 AFB40030 */  sw         $s4, 0x30($sp)
/* 55E14 8005EAE4 AFB3002C */  sw         $s3, 0x2C($sp)
/* 55E18 8005EAE8 AFB10024 */  sw         $s1, 0x24($sp)
/* 55E1C 8005EAEC 8EA2000C */  lw         $v0, 0xC($s5)
/* 55E20 8005EAF0 10400006 */  beqz       $v0, .L8005EB0C
/* 55E24 8005EAF4 00E08821 */   addu      $s1, $a3, $zero
/* 55E28 8005EAF8 8EA20008 */  lw         $v0, 0x8($s5)
/* 55E2C 8005EAFC 84440018 */  lh         $a0, 0x18($v0)
/* 55E30 8005EB00 8C42001C */  lw         $v0, 0x1C($v0)
/* 55E34 8005EB04 0040F809 */  jalr       $v0
/* 55E38 8005EB08 02A42021 */   addu      $a0, $s5, $a0
.L8005EB0C:
/* 55E3C 8005EB0C 02002021 */  addu       $a0, $s0, $zero
/* 55E40 8005EB10 02A02821 */  addu       $a1, $s5, $zero
/* 55E44 8005EB14 0C016EDE */  jal        func_8005BB78
/* 55E48 8005EB18 AEA4000C */   sw        $a0, 0xC($s5)
/* 55E4C 8005EB1C 12200014 */  beqz       $s1, .L8005EB70
/* 55E50 8005EB20 AEA00014 */   sw        $zero, 0x14($s5)
/* 55E54 8005EB24 0C01FB4C */  jal        func_8007ED30
/* 55E58 8005EB28 24040654 */   addiu     $a0, $zero, 0x654
/* 55E5C 8005EB2C 0C00278C */  jal        func_80009E30
/* 55E60 8005EB30 00402021 */   addu      $a0, $v0, $zero
/* 55E64 8005EB34 00408821 */  addu       $s1, $v0, $zero
/* 55E68 8005EB38 56200008 */  bnel       $s1, $zero, .L8005EB5C
/* 55E6C 8005EB3C 02202021 */   addu      $a0, $s1, $zero
/* 55E70 8005EB40 3C048004 */  lui        $a0, %hi(D_8003DB10)
/* 55E74 8005EB44 2484DB10 */  addiu      $a0, $a0, %lo(D_8003DB10)
/* 55E78 8005EB48 00002821 */  addu       $a1, $zero, $zero
/* 55E7C 8005EB4C 00A03021 */  addu       $a2, $a1, $zero
/* 55E80 8005EB50 0C011ACF */  jal        func_80046B3C
/* 55E84 8005EB54 00A03821 */   addu      $a3, $a1, $zero
/* 55E88 8005EB58 02202021 */  addu       $a0, $s1, $zero
.L8005EB5C:
/* 55E8C 8005EB5C 3C058004 */  lui        $a1, %hi(D_8003DB14)
/* 55E90 8005EB60 0C0025BA */  jal        func_800096E8
/* 55E94 8005EB64 24A5DB14 */   addiu     $a1, $a1, %lo(D_8003DB14)
/* 55E98 8005EB68 08017AEC */  j          .L8005EBB0
/* 55E9C 8005EB6C 00000000 */   nop
.L8005EB70:
/* 55EA0 8005EB70 0C01FB4C */  jal        func_8007ED30
/* 55EA4 8005EB74 24040658 */   addiu     $a0, $zero, 0x658
/* 55EA8 8005EB78 00408021 */  addu       $s0, $v0, $zero
/* 55EAC 8005EB7C 0C002504 */  jal        func_80009410
/* 55EB0 8005EB80 02002021 */   addu      $a0, $s0, $zero
/* 55EB4 8005EB84 3C028004 */  lui        $v0, %hi(D_8003DB40)
/* 55EB8 8005EB88 2442DB40 */  addiu      $v0, $v0, %lo(D_8003DB40)
/* 55EBC 8005EB8C 02008821 */  addu       $s1, $s0, $zero
/* 55EC0 8005EB90 16200007 */  bnez       $s1, .L8005EBB0
/* 55EC4 8005EB94 AE020028 */   sw        $v0, 0x28($s0)
/* 55EC8 8005EB98 3C048004 */  lui        $a0, %hi(D_8003DB10)
/* 55ECC 8005EB9C 2484DB10 */  addiu      $a0, $a0, %lo(D_8003DB10)
/* 55ED0 8005EBA0 00002821 */  addu       $a1, $zero, $zero
/* 55ED4 8005EBA4 00A03021 */  addu       $a2, $a1, $zero
/* 55ED8 8005EBA8 0C011ACF */  jal        func_80046B3C
/* 55EDC 8005EBAC 00A03821 */   addu      $a3, $a1, $zero
.L8005EBB0:
/* 55EE0 8005EBB0 8E220028 */  lw         $v0, 0x28($s1)
/* 55EE4 8005EBB4 02402821 */  addu       $a1, $s2, $zero
/* 55EE8 8005EBB8 84440088 */  lh         $a0, 0x88($v0)
/* 55EEC 8005EBBC 8C42008C */  lw         $v0, 0x8C($v0)
/* 55EF0 8005EBC0 0040F809 */  jalr       $v0
/* 55EF4 8005EBC4 02242021 */   addu      $a0, $s1, $a0
/* 55EF8 8005EBC8 02202021 */  addu       $a0, $s1, $zero
/* 55EFC 8005EBCC 0C0026F4 */  jal        func_80009BD0
/* 55F00 8005EBD0 24050027 */   addiu     $a1, $zero, 0x27
/* 55F04 8005EBD4 0C002723 */  jal        func_80009C8C
/* 55F08 8005EBD8 02202021 */   addu      $a0, $s1, $zero
/* 55F0C 8005EBDC 14400008 */  bnez       $v0, .L8005EC00
/* 55F10 8005EBE0 AEA20018 */   sw        $v0, 0x18($s5)
/* 55F14 8005EBE4 8E220028 */  lw         $v0, 0x28($s1)
/* 55F18 8005EBE8 84440048 */  lh         $a0, 0x48($v0)
/* 55F1C 8005EBEC 8C42004C */  lw         $v0, 0x4C($v0)
/* 55F20 8005EBF0 0040F809 */  jalr       $v0
/* 55F24 8005EBF4 02242021 */   addu      $a0, $s1, $a0
/* 55F28 8005EBF8 08017B88 */  j          .L8005EE20
/* 55F2C 8005EBFC 00000000 */   nop
.L8005EC00:
/* 55F30 8005EC00 02A02021 */  addu       $a0, $s5, $zero
/* 55F34 8005EC04 0C016397 */  jal        func_80058E5C
/* 55F38 8005EC08 00402821 */   addu      $a1, $v0, $zero
/* 55F3C 8005EC0C 8EA20008 */  lw         $v0, 0x8($s5)
/* 55F40 8005EC10 00009821 */  addu       $s3, $zero, $zero
/* 55F44 8005EC14 84440030 */  lh         $a0, 0x30($v0)
/* 55F48 8005EC18 8C420034 */  lw         $v0, 0x34($v0)
/* 55F4C 8005EC1C 0040F809 */  jalr       $v0
/* 55F50 8005EC20 02A42021 */   addu      $a0, $s5, $a0
/* 55F54 8005EC24 3C028004 */  lui        $v0, %hi(jtbl_8003DB20)
/* 55F58 8005EC28 2456DB20 */  addiu      $s6, $v0, %lo(jtbl_8003DB20)
.L8005EC2C:
/* 55F5C 8005EC2C 8EA20018 */  lw         $v0, 0x18($s5)
/* 55F60 8005EC30 0262102B */  sltu       $v0, $s3, $v0
/* 55F64 8005EC34 1040006D */  beqz       $v0, .L8005EDEC
/* 55F68 8005EC38 02202021 */   addu      $a0, $s1, $zero
/* 55F6C 8005EC3C 0C0026F4 */  jal        func_80009BD0
/* 55F70 8005EC40 24050027 */   addiu     $a1, $zero, 0x27
/* 55F74 8005EC44 8EA20008 */  lw         $v0, 0x8($s5)
/* 55F78 8005EC48 02602821 */  addu       $a1, $s3, $zero
/* 55F7C 8005EC4C 84440058 */  lh         $a0, 0x58($v0)
/* 55F80 8005EC50 8C42005C */  lw         $v0, 0x5C($v0)
/* 55F84 8005EC54 0040F809 */  jalr       $v0
/* 55F88 8005EC58 02A42021 */   addu      $a0, $s5, $a0
/* 55F8C 8005EC5C 8E230028 */  lw         $v1, 0x28($s1)
/* 55F90 8005EC60 00409021 */  addu       $s2, $v0, $zero
/* 55F94 8005EC64 846400A0 */  lh         $a0, 0xA0($v1)
/* 55F98 8005EC68 8C6300A4 */  lw         $v1, 0xA4($v1)
/* 55F9C 8005EC6C 0060F809 */  jalr       $v1
/* 55FA0 8005EC70 02242021 */   addu      $a0, $s1, $a0
/* 55FA4 8005EC74 27A40010 */  addiu      $a0, $sp, 0x10
/* 55FA8 8005EC78 26250044 */  addiu      $a1, $s1, 0x44
/* 55FAC 8005EC7C 0C000708 */  jal        func_80001C20
/* 55FB0 8005EC80 24060008 */   addiu     $a2, $zero, 0x8
/* 55FB4 8005EC84 8EA4000C */  lw         $a0, 0xC($s5)
/* 55FB8 8005EC88 0C016EF9 */  jal        func_8005BBE4
/* 55FBC 8005EC8C 27A50010 */   addiu     $a1, $sp, 0x10
/* 55FC0 8005EC90 50400003 */  beql       $v0, $zero, .L8005ECA0
/* 55FC4 8005EC94 02A02021 */   addu      $a0, $s5, $zero
/* 55FC8 8005EC98 08017B2B */  j          .L8005ECAC
/* 55FCC 8005EC9C A3A00010 */   sb        $zero, 0x10($sp)
.L8005ECA0:
/* 55FD0 8005ECA0 27A50010 */  addiu      $a1, $sp, 0x10
/* 55FD4 8005ECA4 0C0163C7 */  jal        func_80058F1C
/* 55FD8 8005ECA8 02403021 */   addu      $a2, $s2, $zero
.L8005ECAC:
/* 55FDC 8005ECAC 02202021 */  addu       $a0, $s1, $zero
/* 55FE0 8005ECB0 0C0026F4 */  jal        func_80009BD0
/* 55FE4 8005ECB4 24050005 */   addiu     $a1, $zero, 0x5
/* 55FE8 8005ECB8 00008021 */  addu       $s0, $zero, $zero
/* 55FEC 8005ECBC 0000A021 */  addu       $s4, $zero, $zero
/* 55FF0 8005ECC0 A3A00018 */  sb         $zero, 0x18($sp)
/* 55FF4 8005ECC4 A3A00019 */  sb         $zero, 0x19($sp)
/* 55FF8 8005ECC8 A3A0001A */  sb         $zero, 0x1A($sp)
.L8005ECCC:
/* 55FFC 8005ECCC 8E220028 */  lw         $v0, 0x28($s1)
/* 56000 8005ECD0 844400A0 */  lh         $a0, 0xA0($v0)
/* 56004 8005ECD4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 56008 8005ECD8 0040F809 */  jalr       $v0
/* 5600C 8005ECDC 02242021 */   addu      $a0, $s1, $a0
/* 56010 8005ECE0 00401821 */  addu       $v1, $v0, $zero
/* 56014 8005ECE4 24020006 */  addiu      $v0, $zero, 0x6
/* 56018 8005ECE8 1062002C */  beq        $v1, $v0, .L8005ED9C
/* 5601C 8005ECEC 2463FFD8 */   addiu     $v1, $v1, -0x28
/* 56020 8005ECF0 2C620007 */  sltiu      $v0, $v1, 0x7
/* 56024 8005ECF4 10400021 */  beqz       $v0, .L8005ED7C
/* 56028 8005ECF8 00031080 */   sll       $v0, $v1, 2
/* 5602C 8005ECFC 00561021 */  addu       $v0, $v0, $s6
/* 56030 8005ED00 8C420000 */  lw         $v0, 0x0($v0)
/* 56034 8005ED04 00400008 */  jr         $v0
/* 56038 8005ED08 00000000 */   nop
glabel L8005ED0C
/* 5603C 8005ED0C 08017B33 */  j          .L8005ECCC
/* 56040 8005ED10 36100004 */   ori       $s0, $s0, 0x4
glabel L8005ED14
/* 56044 8005ED14 0C002680 */  jal        func_80009A00
/* 56048 8005ED18 02202021 */   addu      $a0, $s1, $zero
/* 5604C 8005ED1C 0040A021 */  addu       $s4, $v0, $zero
/* 56050 8005ED20 08017B33 */  j          .L8005ECCC
/* 56054 8005ED24 36100001 */   ori       $s0, $s0, 0x1
glabel L8005ED28
/* 56058 8005ED28 36020008 */  ori        $v0, $s0, 0x8
/* 5605C 8005ED2C 08017B33 */  j          .L8005ECCC
/* 56060 8005ED30 3050FFEF */   andi      $s0, $v0, 0xFFEF
glabel L8005ED34
/* 56064 8005ED34 36020010 */  ori        $v0, $s0, 0x10
/* 56068 8005ED38 08017B33 */  j          .L8005ECCC
/* 5606C 8005ED3C 3050FFF7 */   andi      $s0, $v0, 0xFFF7
glabel L8005ED40
/* 56070 8005ED40 36100020 */  ori        $s0, $s0, 0x20
/* 56074 8005ED44 0C002680 */  jal        func_80009A00
/* 56078 8005ED48 02202021 */   addu      $a0, $s1, $zero
/* 5607C 8005ED4C 02202021 */  addu       $a0, $s1, $zero
/* 56080 8005ED50 0C002680 */  jal        func_80009A00
/* 56084 8005ED54 A3A20018 */   sb        $v0, 0x18($sp)
/* 56088 8005ED58 02202021 */  addu       $a0, $s1, $zero
/* 5608C 8005ED5C 0C002680 */  jal        func_80009A00
/* 56090 8005ED60 A3A20019 */   sb        $v0, 0x19($sp)
/* 56094 8005ED64 08017B33 */  j          .L8005ECCC
/* 56098 8005ED68 A3A2001A */   sb        $v0, 0x1A($sp)
glabel L8005ED6C
/* 5609C 8005ED6C 08017B33 */  j          .L8005ECCC
/* 560A0 8005ED70 36100100 */   ori       $s0, $s0, 0x100
glabel L8005ED74
/* 560A4 8005ED74 08017B33 */  j          .L8005ECCC
/* 560A8 8005ED78 36100200 */   ori       $s0, $s0, 0x200
.L8005ED7C:
/* 560AC 8005ED7C 8E220028 */  lw         $v0, 0x28($s1)
/* 560B0 8005ED80 00002821 */  addu       $a1, $zero, $zero
/* 560B4 8005ED84 84440098 */  lh         $a0, 0x98($v0)
/* 560B8 8005ED88 8C42009C */  lw         $v0, 0x9C($v0)
/* 560BC 8005ED8C 0040F809 */  jalr       $v0
/* 560C0 8005ED90 02242021 */   addu      $a0, $s1, $a0
/* 560C4 8005ED94 08017B33 */  j          .L8005ECCC
/* 560C8 8005ED98 00000000 */   nop
.L8005ED9C:
/* 560CC 8005ED9C 8BA80010 */  lwl        $t0, 0x10($sp)
/* 560D0 8005EDA0 9BA80013 */  lwr        $t0, 0x13($sp)
/* 560D4 8005EDA4 8BA90014 */  lwl        $t1, 0x14($sp)
/* 560D8 8005EDA8 9BA90017 */  lwr        $t1, 0x17($sp)
/* 560DC 8005EDAC AA480038 */  swl        $t0, 0x38($s2)
/* 560E0 8005EDB0 BA48003B */  swr        $t0, 0x3B($s2)
/* 560E4 8005EDB4 AA49003C */  swl        $t1, 0x3C($s2)
/* 560E8 8005EDB8 BA49003F */  swr        $t1, 0x3F($s2)
/* 560EC 8005EDBC A6500036 */  sh         $s0, 0x36($s2)
/* 560F0 8005EDC0 A6540034 */  sh         $s4, 0x34($s2)
/* 560F4 8005EDC4 8BA80018 */  lwl        $t0, 0x18($sp)
/* 560F8 8005EDC8 9BA8001B */  lwr        $t0, 0x1B($sp)
/* 560FC 8005EDCC AA480030 */  swl        $t0, 0x30($s2)
/* 56100 8005EDD0 BA480033 */  swr        $t0, 0x33($s2)
/* 56104 8005EDD4 96420036 */  lhu        $v0, 0x36($s2)
/* 56108 8005EDD8 26730001 */  addiu      $s3, $s3, 0x1
/* 5610C 8005EDDC A2400033 */  sb         $zero, 0x33($s2)
/* 56110 8005EDE0 34420800 */  ori        $v0, $v0, 0x800
/* 56114 8005EDE4 08017B0B */  j          .L8005EC2C
/* 56118 8005EDE8 A6420036 */   sh        $v0, 0x36($s2)
.L8005EDEC:
/* 5611C 8005EDEC 0C0026F4 */  jal        func_80009BD0
/* 56120 8005EDF0 24050006 */   addiu     $a1, $zero, 0x6
/* 56124 8005EDF4 8E220028 */  lw         $v0, 0x28($s1)
/* 56128 8005EDF8 84440048 */  lh         $a0, 0x48($v0)
/* 5612C 8005EDFC 8C42004C */  lw         $v0, 0x4C($v0)
/* 56130 8005EE00 0040F809 */  jalr       $v0
/* 56134 8005EE04 02242021 */   addu      $a0, $s1, $a0
/* 56138 8005EE08 3C028008 */  lui        $v0, %hi(D_80083DB0)
/* 5613C 8005EE0C 8C423DB0 */  lw         $v0, %lo(D_80083DB0)($v0)
/* 56140 8005EE10 10400003 */  beqz       $v0, .L8005EE20
/* 56144 8005EE14 00000000 */   nop
/* 56148 8005EE18 0C017B99 */  jal        func_8005EE64
/* 5614C 8005EE1C 02A02021 */   addu      $a0, $s5, $zero
.L8005EE20:
/* 56150 8005EE20 12200006 */  beqz       $s1, .L8005EE3C
/* 56154 8005EE24 24050003 */   addiu     $a1, $zero, 0x3
/* 56158 8005EE28 8E220028 */  lw         $v0, 0x28($s1)
/* 5615C 8005EE2C 84440038 */  lh         $a0, 0x38($v0)
/* 56160 8005EE30 8C42003C */  lw         $v0, 0x3C($v0)
/* 56164 8005EE34 0040F809 */  jalr       $v0
/* 56168 8005EE38 02242021 */   addu      $a0, $s1, $a0
.L8005EE3C:
/* 5616C 8005EE3C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 56170 8005EE40 8FB60038 */  lw         $s6, 0x38($sp)
/* 56174 8005EE44 8FB50034 */  lw         $s5, 0x34($sp)
/* 56178 8005EE48 8FB40030 */  lw         $s4, 0x30($sp)
/* 5617C 8005EE4C 8FB3002C */  lw         $s3, 0x2C($sp)
/* 56180 8005EE50 8FB20028 */  lw         $s2, 0x28($sp)
/* 56184 8005EE54 8FB10024 */  lw         $s1, 0x24($sp)
/* 56188 8005EE58 8FB00020 */  lw         $s0, 0x20($sp)
/* 5618C 8005EE5C 03E00008 */  jr         $ra
/* 56190 8005EE60 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8005EE64
/* 56194 8005EE64 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 56198 8005EE68 AFB30084 */  sw         $s3, 0x84($sp)
/* 5619C 8005EE6C 00809821 */  addu       $s3, $a0, $zero
/* 561A0 8005EE70 AFBF008C */  sw         $ra, 0x8C($sp)
/* 561A4 8005EE74 AFB40088 */  sw         $s4, 0x88($sp)
/* 561A8 8005EE78 AFB20080 */  sw         $s2, 0x80($sp)
/* 561AC 8005EE7C AFB1007C */  sw         $s1, 0x7C($sp)
/* 561B0 8005EE80 AFB00078 */  sw         $s0, 0x78($sp)
/* 561B4 8005EE84 AFA00038 */  sw         $zero, 0x38($sp)
/* 561B8 8005EE88 AFA0003C */  sw         $zero, 0x3C($sp)
/* 561BC 8005EE8C AFA00040 */  sw         $zero, 0x40($sp)
/* 561C0 8005EE90 AFA00044 */  sw         $zero, 0x44($sp)
/* 561C4 8005EE94 AFA00048 */  sw         $zero, 0x48($sp)
/* 561C8 8005EE98 A7A0004C */  sh         $zero, 0x4C($sp)
/* 561CC 8005EE9C A7A0004E */  sh         $zero, 0x4E($sp)
/* 561D0 8005EEA0 AFA00060 */  sw         $zero, 0x60($sp)
/* 561D4 8005EEA4 AFA00064 */  sw         $zero, 0x64($sp)
/* 561D8 8005EEA8 AFA00068 */  sw         $zero, 0x68($sp)
/* 561DC 8005EEAC AFA0006C */  sw         $zero, 0x6C($sp)
/* 561E0 8005EEB0 AFA00070 */  sw         $zero, 0x70($sp)
/* 561E4 8005EEB4 A7A00074 */  sh         $zero, 0x74($sp)
/* 561E8 8005EEB8 A7A00076 */  sh         $zero, 0x76($sp)
/* 561EC 8005EEBC 8E620014 */  lw         $v0, 0x14($s3)
/* 561F0 8005EEC0 10400052 */  beqz       $v0, .L8005F00C
/* 561F4 8005EEC4 00009021 */   addu      $s2, $zero, $zero
/* 561F8 8005EEC8 27B40060 */  addiu      $s4, $sp, 0x60
.L8005EECC:
/* 561FC 8005EECC 8E620018 */  lw         $v0, 0x18($s3)
/* 56200 8005EED0 0242102B */  sltu       $v0, $s2, $v0
/* 56204 8005EED4 10400087 */  beqz       $v0, .L8005F0F4
/* 56208 8005EED8 02402821 */   addu      $a1, $s2, $zero
/* 5620C 8005EEDC 8E620008 */  lw         $v0, 0x8($s3)
/* 56210 8005EEE0 84440058 */  lh         $a0, 0x58($v0)
/* 56214 8005EEE4 8C42005C */  lw         $v0, 0x5C($v0)
/* 56218 8005EEE8 0040F809 */  jalr       $v0
/* 5621C 8005EEEC 02642021 */   addu      $a0, $s3, $a0
/* 56220 8005EEF0 00408821 */  addu       $s1, $v0, $zero
/* 56224 8005EEF4 96220022 */  lhu        $v0, 0x22($s1)
/* 56228 8005EEF8 30420001 */  andi       $v0, $v0, 0x1
/* 5622C 8005EEFC 5440FFF3 */  bnel       $v0, $zero, .L8005EECC
/* 56230 8005EF00 26520001 */   addiu     $s2, $s2, 0x1
/* 56234 8005EF04 8E630014 */  lw         $v1, 0x14($s3)
/* 56238 8005EF08 02402821 */  addu       $a1, $s2, $zero
/* 5623C 8005EF0C 8C620000 */  lw         $v0, 0x0($v1)
/* 56240 8005EF10 27A60030 */  addiu      $a2, $sp, 0x30
/* 56244 8005EF14 84440008 */  lh         $a0, 0x8($v0)
/* 56248 8005EF18 8C42000C */  lw         $v0, 0xC($v0)
/* 5624C 8005EF1C 0040F809 */  jalr       $v0
/* 56250 8005EF20 00642021 */   addu      $a0, $v1, $a0
/* 56254 8005EF24 8E63000C */  lw         $v1, 0xC($s3)
/* 56258 8005EF28 8C62012C */  lw         $v0, 0x12C($v1)
/* 5625C 8005EF2C 97B00054 */  lhu        $s0, 0x54($sp)
/* 56260 8005EF30 84440220 */  lh         $a0, 0x220($v0)
/* 56264 8005EF34 8C420224 */  lw         $v0, 0x224($v0)
/* 56268 8005EF38 0040F809 */  jalr       $v0
/* 5626C 8005EF3C 00642021 */   addu      $a0, $v1, $a0
/* 56270 8005EF40 54400001 */  bnel       $v0, $zero, .L8005EF48
/* 56274 8005EF44 36100040 */   ori       $s0, $s0, 0x40
.L8005EF48:
/* 56278 8005EF48 32020020 */  andi       $v0, $s0, 0x20
/* 5627C 8005EF4C 50400007 */  beql       $v0, $zero, .L8005EF6C
/* 56280 8005EF50 A6300036 */   sh        $s0, 0x36($s1)
/* 56284 8005EF54 8E62000C */  lw         $v0, 0xC($s3)
/* 56288 8005EF58 8C420000 */  lw         $v0, 0x0($v0)
/* 5628C 8005EF5C 30420200 */  andi       $v0, $v0, 0x200
/* 56290 8005EF60 54400001 */  bnel       $v0, $zero, .L8005EF68
/* 56294 8005EF64 36100080 */   ori       $s0, $s0, 0x80
.L8005EF68:
/* 56298 8005EF68 A6300036 */  sh         $s0, 0x36($s1)
.L8005EF6C:
/* 5629C 8005EF6C 8FA20050 */  lw         $v0, 0x50($sp)
/* 562A0 8005EF70 A6220034 */  sh         $v0, 0x34($s1)
/* 562A4 8005EF74 8BA80056 */  lwl        $t0, 0x56($sp)
/* 562A8 8005EF78 9BA80059 */  lwr        $t0, 0x59($sp)
/* 562AC 8005EF7C AA280030 */  swl        $t0, 0x30($s1)
/* 562B0 8005EF80 BA280033 */  swr        $t0, 0x33($s1)
/* 562B4 8005EF84 96270036 */  lhu        $a3, 0x36($s1)
/* 562B8 8005EF88 27A50038 */  addiu      $a1, $sp, 0x38
/* 562BC 8005EF8C A2200033 */  sb         $zero, 0x33($s1)
/* 562C0 8005EF90 34E70800 */  ori        $a3, $a3, 0x800
/* 562C4 8005EF94 A6270036 */  sh         $a3, 0x36($s1)
/* 562C8 8005EF98 8E63000C */  lw         $v1, 0xC($s3)
/* 562CC 8005EF9C 02803021 */  addu       $a2, $s4, $zero
/* 562D0 8005EFA0 8C62012C */  lw         $v0, 0x12C($v1)
/* 562D4 8005EFA4 30E70020 */  andi       $a3, $a3, 0x20
/* 562D8 8005EFA8 84440020 */  lh         $a0, 0x20($v0)
/* 562DC 8005EFAC 8C420024 */  lw         $v0, 0x24($v0)
/* 562E0 8005EFB0 0040F809 */  jalr       $v0
/* 562E4 8005EFB4 00642021 */   addu      $a0, $v1, $a0
/* 562E8 8005EFB8 02402821 */  addu       $a1, $s2, $zero
/* 562EC 8005EFBC 8E630008 */  lw         $v1, 0x8($s3)
/* 562F0 8005EFC0 8FA20034 */  lw         $v0, 0x34($sp)
/* 562F4 8005EFC4 84640038 */  lh         $a0, 0x38($v1)
/* 562F8 8005EFC8 02803021 */  addu       $a2, $s4, $zero
/* 562FC 8005EFCC AFA20010 */  sw         $v0, 0x10($sp)
/* 56300 8005EFD0 8FA70030 */  lw         $a3, 0x30($sp)
/* 56304 8005EFD4 8C62003C */  lw         $v0, 0x3C($v1)
/* 56308 8005EFD8 0040F809 */  jalr       $v0
/* 5630C 8005EFDC 02642021 */   addu      $a0, $s3, $a0
/* 56310 8005EFE0 02402821 */  addu       $a1, $s2, $zero
/* 56314 8005EFE4 8E630014 */  lw         $v1, 0x14($s3)
/* 56318 8005EFE8 00003021 */  addu       $a2, $zero, $zero
/* 5631C 8005EFEC 8C620000 */  lw         $v0, 0x0($v1)
/* 56320 8005EFF0 02203821 */  addu       $a3, $s1, $zero
/* 56324 8005EFF4 84440010 */  lh         $a0, 0x10($v0)
/* 56328 8005EFF8 8C420014 */  lw         $v0, 0x14($v0)
/* 5632C 8005EFFC 0040F809 */  jalr       $v0
/* 56330 8005F000 00642021 */   addu      $a0, $v1, $a0
/* 56334 8005F004 08017BB3 */  j          .L8005EECC
/* 56338 8005F008 26520001 */   addiu     $s2, $s2, 0x1
.L8005F00C:
/* 5633C 8005F00C 8E620018 */  lw         $v0, 0x18($s3)
/* 56340 8005F010 0242102B */  sltu       $v0, $s2, $v0
/* 56344 8005F014 10400037 */  beqz       $v0, .L8005F0F4
/* 56348 8005F018 02402821 */   addu      $a1, $s2, $zero
/* 5634C 8005F01C 8E620008 */  lw         $v0, 0x8($s3)
/* 56350 8005F020 84440058 */  lh         $a0, 0x58($v0)
/* 56354 8005F024 8C42005C */  lw         $v0, 0x5C($v0)
/* 56358 8005F028 0040F809 */  jalr       $v0
/* 5635C 8005F02C 02642021 */   addu      $a0, $s3, $a0
/* 56360 8005F030 00408821 */  addu       $s1, $v0, $zero
/* 56364 8005F034 96220022 */  lhu        $v0, 0x22($s1)
/* 56368 8005F038 30420001 */  andi       $v0, $v0, 0x1
/* 5636C 8005F03C 5440FFF3 */  bnel       $v0, $zero, .L8005F00C
/* 56370 8005F040 26520001 */   addiu     $s2, $s2, 0x1
/* 56374 8005F044 8A280038 */  lwl        $t0, 0x38($s1)
/* 56378 8005F048 9A28003B */  lwr        $t0, 0x3B($s1)
/* 5637C 8005F04C 8A29003C */  lwl        $t1, 0x3C($s1)
/* 56380 8005F050 9A29003F */  lwr        $t1, 0x3F($s1)
/* 56384 8005F054 ABA80018 */  swl        $t0, 0x18($sp)
/* 56388 8005F058 BBA8001B */  swr        $t0, 0x1B($sp)
/* 5638C 8005F05C ABA9001C */  swl        $t1, 0x1C($sp)
/* 56390 8005F060 BBA9001F */  swr        $t1, 0x1F($sp)
/* 56394 8005F064 93A20018 */  lbu        $v0, 0x18($sp)
/* 56398 8005F068 5040FFE8 */  beql       $v0, $zero, .L8005F00C
/* 5639C 8005F06C 26520001 */   addiu     $s2, $s2, 0x1
/* 563A0 8005F070 8FA80018 */  lw         $t0, 0x18($sp)
/* 563A4 8005F074 8FA9001C */  lw         $t1, 0x1C($sp)
/* 563A8 8005F078 AFA80020 */  sw         $t0, 0x20($sp)
/* 563AC 8005F07C AFA90024 */  sw         $t1, 0x24($sp)
/* 563B0 8005F080 A3A00028 */  sb         $zero, 0x28($sp)
/* 563B4 8005F084 96220036 */  lhu        $v0, 0x36($s1)
/* 563B8 8005F088 30420008 */  andi       $v0, $v0, 0x8
/* 563BC 8005F08C 10400003 */  beqz       $v0, .L8005F09C
/* 563C0 8005F090 3C028008 */   lui       $v0, %hi(D_80082860)
/* 563C4 8005F094 08017C29 */  j          .L8005F0A4
/* 563C8 8005F098 24502860 */   addiu     $s0, $v0, %lo(D_80082860)
.L8005F09C:
/* 563CC 8005F09C 3C028008 */  lui        $v0, %hi(D_80083738)
/* 563D0 8005F0A0 24503738 */  addiu      $s0, $v0, %lo(D_80083738)
.L8005F0A4:
/* 563D4 8005F0A4 8E0205AC */  lw         $v0, 0x5AC($s0)
/* 563D8 8005F0A8 27A50020 */  addiu      $a1, $sp, 0x20
/* 563DC 8005F0AC 84440018 */  lh         $a0, 0x18($v0)
/* 563E0 8005F0B0 8C42001C */  lw         $v0, 0x1C($v0)
/* 563E4 8005F0B4 0040F809 */  jalr       $v0
/* 563E8 8005F0B8 02042021 */   addu      $a0, $s0, $a0
/* 563EC 8005F0BC 02003021 */  addu       $a2, $s0, $zero
/* 563F0 8005F0C0 8E22002C */  lw         $v0, 0x2C($s1)
/* 563F4 8005F0C4 8E65000C */  lw         $a1, 0xC($s3)
/* 563F8 8005F0C8 84440080 */  lh         $a0, 0x80($v0)
/* 563FC 8005F0CC 8C420084 */  lw         $v0, 0x84($v0)
/* 56400 8005F0D0 0040F809 */  jalr       $v0
/* 56404 8005F0D4 02242021 */   addu      $a0, $s1, $a0
/* 56408 8005F0D8 8E0205AC */  lw         $v0, 0x5AC($s0)
/* 5640C 8005F0DC 84440020 */  lh         $a0, 0x20($v0)
/* 56410 8005F0E0 8C420024 */  lw         $v0, 0x24($v0)
/* 56414 8005F0E4 0040F809 */  jalr       $v0
/* 56418 8005F0E8 02042021 */   addu      $a0, $s0, $a0
/* 5641C 8005F0EC 08017C03 */  j          .L8005F00C
/* 56420 8005F0F0 26520001 */   addiu     $s2, $s2, 0x1
.L8005F0F4:
/* 56424 8005F0F4 8FBF008C */  lw         $ra, 0x8C($sp)
/* 56428 8005F0F8 8FB40088 */  lw         $s4, 0x88($sp)
/* 5642C 8005F0FC 8FB30084 */  lw         $s3, 0x84($sp)
/* 56430 8005F100 8FB20080 */  lw         $s2, 0x80($sp)
/* 56434 8005F104 8FB1007C */  lw         $s1, 0x7C($sp)
/* 56438 8005F108 8FB00078 */  lw         $s0, 0x78($sp)
/* 5643C 8005F10C 03E00008 */  jr         $ra
/* 56440 8005F110 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_8005F114
/* 56444 8005F114 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 56448 8005F118 AFB00010 */  sw         $s0, 0x10($sp)
/* 5644C 8005F11C 00808021 */  addu       $s0, $a0, $zero
/* 56450 8005F120 AFB10014 */  sw         $s1, 0x14($sp)
/* 56454 8005F124 00A08821 */  addu       $s1, $a1, $zero
/* 56458 8005F128 AFB20018 */  sw         $s2, 0x18($sp)
/* 5645C 8005F12C 00C09021 */  addu       $s2, $a2, $zero
/* 56460 8005F130 AFBF0020 */  sw         $ra, 0x20($sp)
/* 56464 8005F134 AFB3001C */  sw         $s3, 0x1C($sp)
/* 56468 8005F138 8E02000C */  lw         $v0, 0xC($s0)
/* 5646C 8005F13C 10400006 */  beqz       $v0, .L8005F158
/* 56470 8005F140 00E09821 */   addu      $s3, $a3, $zero
/* 56474 8005F144 8E020008 */  lw         $v0, 0x8($s0)
/* 56478 8005F148 84440018 */  lh         $a0, 0x18($v0)
/* 5647C 8005F14C 8C42001C */  lw         $v0, 0x1C($v0)
/* 56480 8005F150 0040F809 */  jalr       $v0
/* 56484 8005F154 02042021 */   addu      $a0, $s0, $a0
.L8005F158:
/* 56488 8005F158 02202021 */  addu       $a0, $s1, $zero
/* 5648C 8005F15C 02002821 */  addu       $a1, $s0, $zero
/* 56490 8005F160 0C016EDE */  jal        func_8005BB78
/* 56494 8005F164 AE04000C */   sw        $a0, 0xC($s0)
/* 56498 8005F168 8E020008 */  lw         $v0, 0x8($s0)
/* 5649C 8005F16C AE120014 */  sw         $s2, 0x14($s0)
/* 564A0 8005F170 AE130018 */  sw         $s3, 0x18($s0)
/* 564A4 8005F174 84440030 */  lh         $a0, 0x30($v0)
/* 564A8 8005F178 8C420034 */  lw         $v0, 0x34($v0)
/* 564AC 8005F17C 0040F809 */  jalr       $v0
/* 564B0 8005F180 02042021 */   addu      $a0, $s0, $a0
/* 564B4 8005F184 3C028008 */  lui        $v0, %hi(D_80083DB0)
/* 564B8 8005F188 8C423DB0 */  lw         $v0, %lo(D_80083DB0)($v0)
/* 564BC 8005F18C 10400003 */  beqz       $v0, .L8005F19C
/* 564C0 8005F190 00000000 */   nop
/* 564C4 8005F194 0C017B99 */  jal        func_8005EE64
/* 564C8 8005F198 02002021 */   addu      $a0, $s0, $zero
.L8005F19C:
/* 564CC 8005F19C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 564D0 8005F1A0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 564D4 8005F1A4 8FB20018 */  lw         $s2, 0x18($sp)
/* 564D8 8005F1A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 564DC 8005F1AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 564E0 8005F1B0 03E00008 */  jr         $ra
/* 564E4 8005F1B4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8005F1B8
/* 564E8 8005F1B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 564EC 8005F1BC AFB00010 */  sw         $s0, 0x10($sp)
/* 564F0 8005F1C0 00808021 */  addu       $s0, $a0, $zero
/* 564F4 8005F1C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 564F8 8005F1C8 00A08821 */  addu       $s1, $a1, $zero
/* 564FC 8005F1CC AFBF001C */  sw         $ra, 0x1C($sp)
/* 56500 8005F1D0 AFB20018 */  sw         $s2, 0x18($sp)
/* 56504 8005F1D4 8E02000C */  lw         $v0, 0xC($s0)
/* 56508 8005F1D8 10400006 */  beqz       $v0, .L8005F1F4
/* 5650C 8005F1DC 00C09021 */   addu      $s2, $a2, $zero
/* 56510 8005F1E0 8E020008 */  lw         $v0, 0x8($s0)
/* 56514 8005F1E4 84440018 */  lh         $a0, 0x18($v0)
/* 56518 8005F1E8 8C42001C */  lw         $v0, 0x1C($v0)
/* 5651C 8005F1EC 0040F809 */  jalr       $v0
/* 56520 8005F1F0 02042021 */   addu      $a0, $s0, $a0
.L8005F1F4:
/* 56524 8005F1F4 02202021 */  addu       $a0, $s1, $zero
/* 56528 8005F1F8 02002821 */  addu       $a1, $s0, $zero
/* 5652C 8005F1FC 0C016EDE */  jal        func_8005BB78
/* 56530 8005F200 AE04000C */   sw        $a0, 0xC($s0)
/* 56534 8005F204 02002021 */  addu       $a0, $s0, $zero
/* 56538 8005F208 02402821 */  addu       $a1, $s2, $zero
/* 5653C 8005F20C 0C016397 */  jal        func_80058E5C
/* 56540 8005F210 AE050018 */   sw        $a1, 0x18($s0)
/* 56544 8005F214 8E020008 */  lw         $v0, 0x8($s0)
/* 56548 8005F218 84440030 */  lh         $a0, 0x30($v0)
/* 5654C 8005F21C 8C420034 */  lw         $v0, 0x34($v0)
/* 56550 8005F220 0040F809 */  jalr       $v0
/* 56554 8005F224 02042021 */   addu      $a0, $s0, $a0
/* 56558 8005F228 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5655C 8005F22C 8FB20018 */  lw         $s2, 0x18($sp)
/* 56560 8005F230 8FB10014 */  lw         $s1, 0x14($sp)
/* 56564 8005F234 8FB00010 */  lw         $s0, 0x10($sp)
/* 56568 8005F238 03E00008 */  jr         $ra
/* 5656C 8005F23C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8005F240
/* 56570 8005F240 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 56574 8005F244 AFB00010 */  sw         $s0, 0x10($sp)
/* 56578 8005F248 00808021 */  addu       $s0, $a0, $zero
/* 5657C 8005F24C AFBF0014 */  sw         $ra, 0x14($sp)
/* 56580 8005F250 8E04000C */  lw         $a0, 0xC($s0)
/* 56584 8005F254 10800004 */  beqz       $a0, .L8005F268
/* 56588 8005F258 AE000018 */   sw        $zero, 0x18($s0)
/* 5658C 8005F25C 0C016EE2 */  jal        func_8005BB88
/* 56590 8005F260 02002821 */   addu      $a1, $s0, $zero
/* 56594 8005F264 AE00000C */  sw         $zero, 0xC($s0)
.L8005F268:
/* 56598 8005F268 8E020000 */  lw         $v0, 0x0($s0)
/* 5659C 8005F26C 10400003 */  beqz       $v0, .L8005F27C
/* 565A0 8005F270 00000000 */   nop
/* 565A4 8005F274 0C0163B9 */  jal        func_80058EE4
/* 565A8 8005F278 02002021 */   addu      $a0, $s0, $zero
.L8005F27C:
/* 565AC 8005F27C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 565B0 8005F280 8FB00010 */  lw         $s0, 0x10($sp)
/* 565B4 8005F284 03E00008 */  jr         $ra
/* 565B8 8005F288 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005F28C
/* 565BC 8005F28C 03E00008 */  jr         $ra
/* 565C0 8005F290 00000000 */   nop

glabel func_8005F294
/* 565C4 8005F294 03E00008 */  jr         $ra
/* 565C8 8005F298 00000000 */   nop

glabel func_8005F29C
/* 565CC 8005F29C 3C028008 */  lui        $v0, %hi(D_80083DB0)
/* 565D0 8005F2A0 03E00008 */  jr         $ra
/* 565D4 8005F2A4 AC443DB0 */   sw        $a0, %lo(D_80083DB0)($v0)

glabel func_8005F2A8
/* 565D8 8005F2A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 565DC 8005F2AC AFBF0010 */  sw         $ra, 0x10($sp)
/* 565E0 8005F2B0 0C002513 */  jal        func_8000944C
/* 565E4 8005F2B4 00000000 */   nop
/* 565E8 8005F2B8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 565EC 8005F2BC 03E00008 */  jr         $ra
/* 565F0 8005F2C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005F2C4
/* 565F4 8005F2C4 8C82000C */  lw         $v0, 0xC($a0)
/* 565F8 8005F2C8 03E00008 */  jr         $ra
/* 565FC 8005F2CC 0002102B */   sltu      $v0, $zero, $v0

glabel func_8005F2D0
/* 56600 8005F2D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 56604 8005F2D4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 56608 8005F2D8 8C820000 */  lw         $v0, 0x0($a0)
/* 5660C 8005F2DC 10400003 */  beqz       $v0, .L8005F2EC
/* 56610 8005F2E0 00001021 */   addu      $v0, $zero, $zero
/* 56614 8005F2E4 0C016427 */  jal        func_8005909C
/* 56618 8005F2E8 00000000 */   nop
.L8005F2EC:
/* 5661C 8005F2EC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 56620 8005F2F0 03E00008 */  jr         $ra
/* 56624 8005F2F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005F2F8
/* 56628 8005F2F8 8C820018 */  lw         $v0, 0x18($a0)
/* 5662C 8005F2FC 03E00008 */  jr         $ra
/* 56630 8005F300 00000000 */   nop

glabel func_8005F304
/* 56634 8005F304 8C820010 */  lw         $v0, 0x10($a0)
/* 56638 8005F308 03E00008 */  jr         $ra
/* 5663C 8005F30C 00000000 */   nop

glabel func_8005F310
/* 56640 8005F310 03E00008 */  jr         $ra
/* 56644 8005F314 AC850010 */   sw        $a1, 0x10($a0)
