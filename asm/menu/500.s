.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_80101C20
/* 11FD10 80101C20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11FD14 80101C24 AFB00010 */  sw         $s0, 0x10($sp)
/* 11FD18 80101C28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11FD1C 80101C2C 0C03E578 */  jal        func_menu_800F95E0
/* 11FD20 80101C30 00808021 */   addu      $s0, $a0, $zero
/* 11FD24 80101C34 3C02800D */  lui        $v0, %hi(D_menu_800CD7B8)
/* 11FD28 80101C38 2442D7B8 */  addiu      $v0, $v0, %lo(D_menu_800CD7B8)
/* 11FD2C 80101C3C AE020000 */  sw         $v0, 0x0($s0)
/* 11FD30 80101C40 02001021 */  addu       $v0, $s0, $zero
/* 11FD34 80101C44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11FD38 80101C48 8FB00010 */  lw         $s0, 0x10($sp)
/* 11FD3C 80101C4C 03E00008 */  jr         $ra
/* 11FD40 80101C50 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80101C54
/* 11FD44 80101C54 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11FD48 80101C58 AFB00010 */  sw         $s0, 0x10($sp)
/* 11FD4C 80101C5C 00808021 */  addu       $s0, $a0, $zero
/* 11FD50 80101C60 AFB10014 */  sw         $s1, 0x14($sp)
/* 11FD54 80101C64 00A08821 */  addu       $s1, $a1, $zero
/* 11FD58 80101C68 3C02800D */  lui        $v0, %hi(D_menu_800CD7B8)
/* 11FD5C 80101C6C 2442D7B8 */  addiu      $v0, $v0, %lo(D_menu_800CD7B8)
/* 11FD60 80101C70 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11FD64 80101C74 0C040764 */  jal        func_menu_80101D90
/* 11FD68 80101C78 AE020000 */   sw        $v0, 0x0($s0)
/* 11FD6C 80101C7C 02002021 */  addu       $a0, $s0, $zero
/* 11FD70 80101C80 0C03E58C */  jal        func_menu_800F9630
/* 11FD74 80101C84 02202821 */   addu      $a1, $s1, $zero
/* 11FD78 80101C88 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11FD7C 80101C8C 8FB10014 */  lw         $s1, 0x14($sp)
/* 11FD80 80101C90 8FB00010 */  lw         $s0, 0x10($sp)
/* 11FD84 80101C94 03E00008 */  jr         $ra
/* 11FD88 80101C98 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80101C9C
/* 11FD8C 80101C9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11FD90 80101CA0 AFB10014 */  sw         $s1, 0x14($sp)
/* 11FD94 80101CA4 00808821 */  addu       $s1, $a0, $zero
/* 11FD98 80101CA8 AFB00010 */  sw         $s0, 0x10($sp)
/* 11FD9C 80101CAC 00A08021 */  addu       $s0, $a1, $zero
/* 11FDA0 80101CB0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 11FDA4 80101CB4 AFB20018 */  sw         $s2, 0x18($sp)
/* 11FDA8 80101CB8 8E220004 */  lw         $v0, 0x4($s1)
/* 11FDAC 80101CBC 10400006 */  beqz       $v0, .Lmenu_80101CD8
/* 11FDB0 80101CC0 00C09021 */   addu      $s2, $a2, $zero
/* 11FDB4 80101CC4 8E220000 */  lw         $v0, 0x0($s1)
/* 11FDB8 80101CC8 844400F0 */  lh         $a0, 0xF0($v0)
/* 11FDBC 80101CCC 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 11FDC0 80101CD0 0040F809 */  jalr       $v0
/* 11FDC4 80101CD4 02242021 */   addu      $a0, $s1, $a0
.Lmenu_80101CD8:
/* 11FDC8 80101CD8 02202021 */  addu       $a0, $s1, $zero
/* 11FDCC 80101CDC 02002821 */  addu       $a1, $s0, $zero
/* 11FDD0 80101CE0 0C03E5A4 */  jal        func_menu_800F9690
/* 11FDD4 80101CE4 02403021 */   addu      $a2, $s2, $zero
/* 11FDD8 80101CE8 10400023 */  beqz       $v0, .Lmenu_80101D78
/* 11FDDC 80101CEC 00001021 */   addu      $v0, $zero, $zero
/* 11FDE0 80101CF0 8E05461C */  lw         $a1, 0x461C($s0)
/* 11FDE4 80101CF4 10A00008 */  beqz       $a1, .Lmenu_80101D18
/* 11FDE8 80101CF8 00000000 */   nop
/* 11FDEC 80101CFC 8E034618 */  lw         $v1, 0x4618($s0)
/* 11FDF0 80101D00 8C620004 */  lw         $v0, 0x4($v1)
/* 11FDF4 80101D04 84440030 */  lh         $a0, 0x30($v0)
/* 11FDF8 80101D08 8C420034 */  lw         $v0, 0x34($v0)
/* 11FDFC 80101D0C 0040F809 */  jalr       $v0
/* 11FE00 80101D10 00642021 */   addu      $a0, $v1, $a0
/* 11FE04 80101D14 AE00461C */  sw         $zero, 0x461C($s0)
.Lmenu_80101D18:
/* 11FE08 80101D18 8E034618 */  lw         $v1, 0x4618($s0)
/* 11FE0C 80101D1C 8C620004 */  lw         $v0, 0x4($v1)
/* 11FE10 80101D20 24050013 */  addiu      $a1, $zero, 0x13
/* 11FE14 80101D24 84440028 */  lh         $a0, 0x28($v0)
/* 11FE18 80101D28 8C42002C */  lw         $v0, 0x2C($v0)
/* 11FE1C 80101D2C 0040F809 */  jalr       $v0
/* 11FE20 80101D30 00642021 */   addu      $a0, $v1, $a0
/* 11FE24 80101D34 14400007 */  bnez       $v0, .Lmenu_80101D54
/* 11FE28 80101D38 AE02461C */   sw        $v0, 0x461C($s0)
/* 11FE2C 80101D3C 3C04800D */  lui        $a0, %hi(D_menu_800CD790)
/* 11FE30 80101D40 2484D790 */  addiu      $a0, $a0, %lo(D_menu_800CD790)
/* 11FE34 80101D44 00002821 */  addu       $a1, $zero, $zero
/* 11FE38 80101D48 00A03021 */  addu       $a2, $a1, $zero
/* 11FE3C 80101D4C 0C011ACF */  jal        func_80046B3C
/* 11FE40 80101D50 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_80101D54:
/* 11FE44 80101D54 8E03461C */  lw         $v1, 0x461C($s0)
/* 11FE48 80101D58 8C620000 */  lw         $v0, 0x0($v1)
/* 11FE4C 80101D5C 24050001 */  addiu      $a1, $zero, 0x1
/* 11FE50 80101D60 84440010 */  lh         $a0, 0x10($v0)
/* 11FE54 80101D64 8C420014 */  lw         $v0, 0x14($v0)
/* 11FE58 80101D68 0040F809 */  jalr       $v0
/* 11FE5C 80101D6C 00642021 */   addu      $a0, $v1, $a0
/* 11FE60 80101D70 24020001 */  addiu      $v0, $zero, 0x1
/* 11FE64 80101D74 AE200634 */  sw         $zero, 0x634($s1)
.Lmenu_80101D78:
/* 11FE68 80101D78 8FBF001C */  lw         $ra, 0x1C($sp)
/* 11FE6C 80101D7C 8FB20018 */  lw         $s2, 0x18($sp)
/* 11FE70 80101D80 8FB10014 */  lw         $s1, 0x14($sp)
/* 11FE74 80101D84 8FB00010 */  lw         $s0, 0x10($sp)
/* 11FE78 80101D88 03E00008 */  jr         $ra
/* 11FE7C 80101D8C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80101D90
/* 11FE80 80101D90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11FE84 80101D94 AFB00010 */  sw         $s0, 0x10($sp)
/* 11FE88 80101D98 00808021 */  addu       $s0, $a0, $zero
/* 11FE8C 80101D9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11FE90 80101DA0 8E040354 */  lw         $a0, 0x354($s0)
/* 11FE94 80101DA4 10800016 */  beqz       $a0, .Lmenu_80101E00
/* 11FE98 80101DA8 00000000 */   nop
/* 11FE9C 80101DAC 8C824618 */  lw         $v0, 0x4618($a0)
/* 11FEA0 80101DB0 10400013 */  beqz       $v0, .Lmenu_80101E00
/* 11FEA4 80101DB4 00000000 */   nop
/* 11FEA8 80101DB8 8C83461C */  lw         $v1, 0x461C($a0)
/* 11FEAC 80101DBC 10600010 */  beqz       $v1, .Lmenu_80101E00
/* 11FEB0 80101DC0 00000000 */   nop
/* 11FEB4 80101DC4 8C620000 */  lw         $v0, 0x0($v1)
/* 11FEB8 80101DC8 84440018 */  lh         $a0, 0x18($v0)
/* 11FEBC 80101DCC 8C42001C */  lw         $v0, 0x1C($v0)
/* 11FEC0 80101DD0 0040F809 */  jalr       $v0
/* 11FEC4 80101DD4 00642021 */   addu      $a0, $v1, $a0
/* 11FEC8 80101DD8 8E030354 */  lw         $v1, 0x354($s0)
/* 11FECC 80101DDC 8C664618 */  lw         $a2, 0x4618($v1)
/* 11FED0 80101DE0 8CC20004 */  lw         $v0, 0x4($a2)
/* 11FED4 80101DE4 8C65461C */  lw         $a1, 0x461C($v1)
/* 11FED8 80101DE8 84440030 */  lh         $a0, 0x30($v0)
/* 11FEDC 80101DEC 8C420034 */  lw         $v0, 0x34($v0)
/* 11FEE0 80101DF0 0040F809 */  jalr       $v0
/* 11FEE4 80101DF4 00C42021 */   addu      $a0, $a2, $a0
/* 11FEE8 80101DF8 8E020354 */  lw         $v0, 0x354($s0)
/* 11FEEC 80101DFC AC40461C */  sw         $zero, 0x461C($v0)
.Lmenu_80101E00:
/* 11FEF0 80101E00 0C03E65F */  jal        func_menu_800F997C
/* 11FEF4 80101E04 02002021 */   addu      $a0, $s0, $zero
/* 11FEF8 80101E08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11FEFC 80101E0C 8FB00010 */  lw         $s0, 0x10($sp)
/* 11FF00 80101E10 03E00008 */  jr         $ra
/* 11FF04 80101E14 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80101E18
/* 11FF08 80101E18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11FF0C 80101E1C AFB10014 */  sw         $s1, 0x14($sp)
/* 11FF10 80101E20 00808821 */  addu       $s1, $a0, $zero
/* 11FF14 80101E24 3C02800D */  lui        $v0, %hi(D_menu_800CD794)
/* 11FF18 80101E28 2445D794 */  addiu      $a1, $v0, %lo(D_menu_800CD794)
/* 11FF1C 80101E2C AFBF0018 */  sw         $ra, 0x18($sp)
/* 11FF20 80101E30 10A00008 */  beqz       $a1, .Lmenu_80101E54
/* 11FF24 80101E34 AFB00010 */   sw        $s0, 0x10($sp)
/* 11FF28 80101E38 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 11FF2C 80101E3C 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 11FF30 80101E40 02002021 */  addu       $a0, $s0, $zero
/* 11FF34 80101E44 0C000708 */  jal        func_80001C20
/* 11FF38 80101E48 24060100 */   addiu     $a2, $zero, 0x100
/* 11FF3C 80101E4C 08040797 */  j          .Lmenu_80101E5C
/* 11FF40 80101E50 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_80101E54:
/* 11FF44 80101E54 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 11FF48 80101E58 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_80101E5C:
/* 11FF4C 80101E5C 02202021 */  addu       $a0, $s1, $zero
/* 11FF50 80101E60 9486028C */  lhu        $a2, 0x28C($a0)
/* 11FF54 80101E64 0C046ADA */  jal        func_menu_8011AB68
/* 11FF58 80101E68 24850368 */   addiu     $a1, $a0, 0x368
/* 11FF5C 80101E6C 3C02800D */  lui        $v0, %hi(D_menu_800CD7A8)
/* 11FF60 80101E70 2445D7A8 */  addiu      $a1, $v0, %lo(D_menu_800CD7A8)
/* 11FF64 80101E74 10A00007 */  beqz       $a1, .Lmenu_80101E94
/* 11FF68 80101E78 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 11FF6C 80101E7C 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 11FF70 80101E80 02002021 */  addu       $a0, $s0, $zero
/* 11FF74 80101E84 0C000708 */  jal        func_80001C20
/* 11FF78 80101E88 24060100 */   addiu     $a2, $zero, 0x100
/* 11FF7C 80101E8C 080407A7 */  j          .Lmenu_80101E9C
/* 11FF80 80101E90 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_80101E94:
/* 11FF84 80101E94 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 11FF88 80101E98 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_80101E9C:
/* 11FF8C 80101E9C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11FF90 80101EA0 8FB10014 */  lw         $s1, 0x14($sp)
/* 11FF94 80101EA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 11FF98 80101EA8 03E00008 */  jr         $ra
/* 11FF9C 80101EAC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80101EB0
/* 11FFA0 80101EB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11FFA4 80101EB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 11FFA8 80101EB8 00808021 */  addu       $s0, $a0, $zero
/* 11FFAC 80101EBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 11FFB0 80101EC0 8E040354 */  lw         $a0, 0x354($s0)
/* 11FFB4 80101EC4 0C0401B4 */  jal        func_menu_801006D0
/* 11FFB8 80101EC8 24840004 */   addiu     $a0, $a0, 0x4
/* 11FFBC 80101ECC 8E040354 */  lw         $a0, 0x354($s0)
/* 11FFC0 80101ED0 24050028 */  addiu      $a1, $zero, 0x28
/* 11FFC4 80101ED4 0C0401A6 */  jal        func_menu_80100698
/* 11FFC8 80101ED8 24840004 */   addiu     $a0, $a0, 0x4
/* 11FFCC 80101EDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11FFD0 80101EE0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11FFD4 80101EE4 03E00008 */  jr         $ra
/* 11FFD8 80101EE8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80101EEC
/* 11FFDC 80101EEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11FFE0 80101EF0 24020001 */  addiu      $v0, $zero, 0x1
/* 11FFE4 80101EF4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 11FFE8 80101EF8 0C03E681 */  jal        func_menu_800F9A04
/* 11FFEC 80101EFC AC820634 */   sw        $v0, 0x634($a0)
/* 11FFF0 80101F00 8FBF0010 */  lw         $ra, 0x10($sp)
/* 11FFF4 80101F04 03E00008 */  jr         $ra
/* 11FFF8 80101F08 27BD0018 */   addiu     $sp, $sp, 0x18
