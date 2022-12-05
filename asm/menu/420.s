.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800F9AB0
/* 117BA0 800F9AB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117BA4 800F9AB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 117BA8 800F9AB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 117BAC 800F9ABC 0C03E578 */  jal        func_menu_800F95E0
/* 117BB0 800F9AC0 00808021 */   addu      $s0, $a0, $zero
/* 117BB4 800F9AC4 3C02800D */  lui        $v0, %hi(D_menu_800CC918)
/* 117BB8 800F9AC8 2442C918 */  addiu      $v0, $v0, %lo(D_menu_800CC918)
/* 117BBC 800F9ACC AE020000 */  sw         $v0, 0x0($s0)
/* 117BC0 800F9AD0 02001021 */  addu       $v0, $s0, $zero
/* 117BC4 800F9AD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 117BC8 800F9AD8 8FB00010 */  lw         $s0, 0x10($sp)
/* 117BCC 800F9ADC 03E00008 */  jr         $ra
/* 117BD0 800F9AE0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F9AE4
/* 117BD4 800F9AE4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 117BD8 800F9AE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 117BDC 800F9AEC 00808021 */  addu       $s0, $a0, $zero
/* 117BE0 800F9AF0 AFB10014 */  sw         $s1, 0x14($sp)
/* 117BE4 800F9AF4 00A08821 */  addu       $s1, $a1, $zero
/* 117BE8 800F9AF8 3C02800D */  lui        $v0, %hi(D_menu_800CC918)
/* 117BEC 800F9AFC 2442C918 */  addiu      $v0, $v0, %lo(D_menu_800CC918)
/* 117BF0 800F9B00 AFBF0018 */  sw         $ra, 0x18($sp)
/* 117BF4 800F9B04 0C03E70E */  jal        func_menu_800F9C38
/* 117BF8 800F9B08 AE020000 */   sw        $v0, 0x0($s0)
/* 117BFC 800F9B0C 02002021 */  addu       $a0, $s0, $zero
/* 117C00 800F9B10 0C03E58C */  jal        func_menu_800F9630
/* 117C04 800F9B14 02202821 */   addu      $a1, $s1, $zero
/* 117C08 800F9B18 8FBF0018 */  lw         $ra, 0x18($sp)
/* 117C0C 800F9B1C 8FB10014 */  lw         $s1, 0x14($sp)
/* 117C10 800F9B20 8FB00010 */  lw         $s0, 0x10($sp)
/* 117C14 800F9B24 03E00008 */  jr         $ra
/* 117C18 800F9B28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F9B2C
/* 117C1C 800F9B2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 117C20 800F9B30 AFB00010 */  sw         $s0, 0x10($sp)
/* 117C24 800F9B34 00808021 */  addu       $s0, $a0, $zero
/* 117C28 800F9B38 AFB20018 */  sw         $s2, 0x18($sp)
/* 117C2C 800F9B3C 00A09021 */  addu       $s2, $a1, $zero
/* 117C30 800F9B40 AFBF001C */  sw         $ra, 0x1C($sp)
/* 117C34 800F9B44 AFB10014 */  sw         $s1, 0x14($sp)
/* 117C38 800F9B48 8E020004 */  lw         $v0, 0x4($s0)
/* 117C3C 800F9B4C 10400006 */  beqz       $v0, .Lmenu_800F9B68
/* 117C40 800F9B50 00C08821 */   addu      $s1, $a2, $zero
/* 117C44 800F9B54 8E020000 */  lw         $v0, 0x0($s0)
/* 117C48 800F9B58 844400F0 */  lh         $a0, 0xF0($v0)
/* 117C4C 800F9B5C 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 117C50 800F9B60 0040F809 */  jalr       $v0
/* 117C54 800F9B64 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800F9B68:
/* 117C58 800F9B68 02002021 */  addu       $a0, $s0, $zero
/* 117C5C 800F9B6C 02402821 */  addu       $a1, $s2, $zero
/* 117C60 800F9B70 0C03E5A4 */  jal        func_menu_800F9690
/* 117C64 800F9B74 02203021 */   addu      $a2, $s1, $zero
/* 117C68 800F9B78 10400029 */  beqz       $v0, .Lmenu_800F9C20
/* 117C6C 800F9B7C 00001021 */   addu      $v0, $zero, $zero
/* 117C70 800F9B80 9602028C */  lhu        $v0, 0x28C($s0)
/* 117C74 800F9B84 2443FFE1 */  addiu      $v1, $v0, -0x1F
/* 117C78 800F9B88 2C620006 */  sltiu      $v0, $v1, 0x6
/* 117C7C 800F9B8C 10400013 */  beqz       $v0, .Lmenu_800F9BDC
/* 117C80 800F9B90 24060001 */   addiu     $a2, $zero, 0x1
/* 117C84 800F9B94 3C02800D */  lui        $v0, %hi(jtbl_menu_800CC8F0)
/* 117C88 800F9B98 2442C8F0 */  addiu      $v0, $v0, %lo(jtbl_menu_800CC8F0)
/* 117C8C 800F9B9C 00031880 */  sll        $v1, $v1, 2
/* 117C90 800F9BA0 00621821 */  addu       $v1, $v1, $v0
/* 117C94 800F9BA4 8C620000 */  lw         $v0, 0x0($v1)
/* 117C98 800F9BA8 00400008 */  jr         $v0
/* 117C9C 800F9BAC 00000000 */   nop
glabel Lmenu_800F9BB0
/* 117CA0 800F9BB0 0803E6F7 */  j          .Lmenu_800F9BDC
/* 117CA4 800F9BB4 24060005 */   addiu     $a2, $zero, 0x5
glabel Lmenu_800F9BB8
/* 117CA8 800F9BB8 0803E6F7 */  j          .Lmenu_800F9BDC
/* 117CAC 800F9BBC 24060006 */   addiu     $a2, $zero, 0x6
glabel Lmenu_800F9BC0
/* 117CB0 800F9BC0 0803E6F7 */  j          .Lmenu_800F9BDC
/* 117CB4 800F9BC4 24060007 */   addiu     $a2, $zero, 0x7
glabel Lmenu_800F9BC8
/* 117CB8 800F9BC8 0803E6F7 */  j          .Lmenu_800F9BDC
/* 117CBC 800F9BCC 24060008 */   addiu     $a2, $zero, 0x8
glabel Lmenu_800F9BD0
/* 117CC0 800F9BD0 0803E6F7 */  j          .Lmenu_800F9BDC
/* 117CC4 800F9BD4 24060009 */   addiu     $a2, $zero, 0x9
glabel Lmenu_800F9BD8
/* 117CC8 800F9BD8 2406000A */  addiu      $a2, $zero, 0xA
.Lmenu_800F9BDC:
/* 117CCC 800F9BDC 02002021 */  addu       $a0, $s0, $zero
/* 117CD0 800F9BE0 02402821 */  addu       $a1, $s2, $zero
/* 117CD4 800F9BE4 0C04051A */  jal        func_menu_80101468
/* 117CD8 800F9BE8 00003821 */   addu      $a3, $zero, $zero
/* 117CDC 800F9BEC 3C02800D */  lui        $v0, %hi(D_menu_800CC8E0)
/* 117CE0 800F9BF0 2445C8E0 */  addiu      $a1, $v0, %lo(D_menu_800CC8E0)
/* 117CE4 800F9BF4 10A00007 */  beqz       $a1, .Lmenu_800F9C14
/* 117CE8 800F9BF8 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 117CEC 800F9BFC 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 117CF0 800F9C00 02002021 */  addu       $a0, $s0, $zero
/* 117CF4 800F9C04 0C000708 */  jal        func_80001C20
/* 117CF8 800F9C08 24060100 */   addiu     $a2, $zero, 0x100
/* 117CFC 800F9C0C 0803E707 */  j          .Lmenu_800F9C1C
/* 117D00 800F9C10 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F9C14:
/* 117D04 800F9C14 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 117D08 800F9C18 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F9C1C:
/* 117D0C 800F9C1C 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F9C20:
/* 117D10 800F9C20 8FBF001C */  lw         $ra, 0x1C($sp)
/* 117D14 800F9C24 8FB20018 */  lw         $s2, 0x18($sp)
/* 117D18 800F9C28 8FB10014 */  lw         $s1, 0x14($sp)
/* 117D1C 800F9C2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 117D20 800F9C30 03E00008 */  jr         $ra
/* 117D24 800F9C34 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F9C38
/* 117D28 800F9C38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117D2C 800F9C3C AFB00010 */  sw         $s0, 0x10($sp)
/* 117D30 800F9C40 00808021 */  addu       $s0, $a0, $zero
/* 117D34 800F9C44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 117D38 800F9C48 8E020004 */  lw         $v0, 0x4($s0)
/* 117D3C 800F9C4C 10400006 */  beqz       $v0, .Lmenu_800F9C68
/* 117D40 800F9C50 24020001 */   addiu     $v0, $zero, 0x1
/* 117D44 800F9C54 8E050354 */  lw         $a1, 0x354($s0)
/* 117D48 800F9C58 0C040547 */  jal        func_menu_8010151C
/* 117D4C 800F9C5C 00000000 */   nop
/* 117D50 800F9C60 0C03E65F */  jal        func_menu_800F997C
/* 117D54 800F9C64 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800F9C68:
/* 117D58 800F9C68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 117D5C 800F9C6C 8FB00010 */  lw         $s0, 0x10($sp)
/* 117D60 800F9C70 03E00008 */  jr         $ra
/* 117D64 800F9C74 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F9C78
/* 117D68 800F9C78 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 117D6C 800F9C7C AFB20050 */  sw         $s2, 0x50($sp)
/* 117D70 800F9C80 00809021 */  addu       $s2, $a0, $zero
/* 117D74 800F9C84 AFB1004C */  sw         $s1, 0x4C($sp)
/* 117D78 800F9C88 27B10038 */  addiu      $s1, $sp, 0x38
/* 117D7C 800F9C8C 02202021 */  addu       $a0, $s1, $zero
/* 117D80 800F9C90 AFBF0054 */  sw         $ra, 0x54($sp)
/* 117D84 800F9C94 0C0016DC */  jal        func_80005B70
/* 117D88 800F9C98 AFB00048 */   sw        $s0, 0x48($sp)
/* 117D8C 800F9C9C 8E4400D0 */  lw         $a0, 0xD0($s2)
/* 117D90 800F9CA0 9646028C */  lhu        $a2, 0x28C($s2)
/* 117D94 800F9CA4 0C003053 */  jal        func_8000C14C
/* 117D98 800F9CA8 02202821 */   addu      $a1, $s1, $zero
/* 117D9C 800F9CAC 02202021 */  addu       $a0, $s1, $zero
/* 117DA0 800F9CB0 27B00028 */  addiu      $s0, $sp, 0x28
/* 117DA4 800F9CB4 0C001854 */  jal        func_80006150
/* 117DA8 800F9CB8 02002821 */   addu      $a1, $s0, $zero
/* 117DAC 800F9CBC 27A40010 */  addiu      $a0, $sp, 0x10
/* 117DB0 800F9CC0 3C05800D */  lui        $a1, %hi(D_menu_800CC908)
/* 117DB4 800F9CC4 24A5C908 */  addiu      $a1, $a1, %lo(D_menu_800CC908)
/* 117DB8 800F9CC8 0C006E14 */  jal        sprintf
/* 117DBC 800F9CCC 02003021 */   addu      $a2, $s0, $zero
/* 117DC0 800F9CD0 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 117DC4 800F9CD4 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 117DC8 800F9CD8 02002021 */  addu       $a0, $s0, $zero
/* 117DCC 800F9CDC 27A50010 */  addiu      $a1, $sp, 0x10
/* 117DD0 800F9CE0 0C000708 */  jal        func_80001C20
/* 117DD4 800F9CE4 24060100 */   addiu     $a2, $zero, 0x100
/* 117DD8 800F9CE8 02402021 */  addu       $a0, $s2, $zero
/* 117DDC 800F9CEC A20000FF */  sb         $zero, 0xFF($s0)
/* 117DE0 800F9CF0 24900368 */  addiu      $s0, $a0, 0x368
/* 117DE4 800F9CF4 9486028C */  lhu        $a2, 0x28C($a0)
/* 117DE8 800F9CF8 0C046ADA */  jal        func_menu_8011AB68
/* 117DEC 800F9CFC 02002821 */   addu      $a1, $s0, $zero
/* 117DF0 800F9D00 02202021 */  addu       $a0, $s1, $zero
/* 117DF4 800F9D04 24050002 */  addiu      $a1, $zero, 0x2
/* 117DF8 800F9D08 0C0016E2 */  jal        func_80005B88
/* 117DFC 800F9D0C AE0002CC */   sw        $zero, 0x2CC($s0)
/* 117E00 800F9D10 8FBF0054 */  lw         $ra, 0x54($sp)
/* 117E04 800F9D14 8FB20050 */  lw         $s2, 0x50($sp)
/* 117E08 800F9D18 8FB1004C */  lw         $s1, 0x4C($sp)
/* 117E0C 800F9D1C 8FB00048 */  lw         $s0, 0x48($sp)
/* 117E10 800F9D20 03E00008 */  jr         $ra
/* 117E14 800F9D24 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_menu_800F9D28
/* 117E18 800F9D28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117E1C 800F9D2C AFB00010 */  sw         $s0, 0x10($sp)
/* 117E20 800F9D30 00808021 */  addu       $s0, $a0, $zero
/* 117E24 800F9D34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 117E28 800F9D38 8E040354 */  lw         $a0, 0x354($s0)
/* 117E2C 800F9D3C 0C0401B4 */  jal        func_menu_801006D0
/* 117E30 800F9D40 24840004 */   addiu     $a0, $a0, 0x4
/* 117E34 800F9D44 8E040354 */  lw         $a0, 0x354($s0)
/* 117E38 800F9D48 0C0401BF */  jal        func_menu_801006FC
/* 117E3C 800F9D4C 24840004 */   addiu     $a0, $a0, 0x4
/* 117E40 800F9D50 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 117E44 800F9D54 24030002 */  addiu      $v1, $zero, 0x2
/* 117E48 800F9D58 14430008 */  bne        $v0, $v1, .Lmenu_800F9D7C
/* 117E4C 800F9D5C 00602821 */   addu      $a1, $v1, $zero
/* 117E50 800F9D60 8E020354 */  lw         $v0, 0x354($s0)
/* 117E54 800F9D64 AC40000C */  sw         $zero, 0xC($v0)
/* 117E58 800F9D68 8E040354 */  lw         $a0, 0x354($s0)
/* 117E5C 800F9D6C 0C0401A6 */  jal        func_menu_80100698
/* 117E60 800F9D70 24840004 */   addiu     $a0, $a0, 0x4
/* 117E64 800F9D74 0803E761 */  j          .Lmenu_800F9D84
/* 117E68 800F9D78 00000000 */   nop
.Lmenu_800F9D7C:
/* 117E6C 800F9D7C 8E020354 */  lw         $v0, 0x354($s0)
/* 117E70 800F9D80 AC40000C */  sw         $zero, 0xC($v0)
.Lmenu_800F9D84:
/* 117E74 800F9D84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 117E78 800F9D88 8FB00010 */  lw         $s0, 0x10($sp)
/* 117E7C 800F9D8C 03E00008 */  jr         $ra
/* 117E80 800F9D90 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F9D94
/* 117E84 800F9D94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117E88 800F9D98 24020001 */  addiu      $v0, $zero, 0x1
/* 117E8C 800F9D9C AFBF0010 */  sw         $ra, 0x10($sp)
/* 117E90 800F9DA0 0C03E681 */  jal        func_menu_800F9A04
/* 117E94 800F9DA4 AC820634 */   sw        $v0, 0x634($a0)
/* 117E98 800F9DA8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 117E9C 800F9DAC 03E00008 */  jr         $ra
/* 117EA0 800F9DB0 27BD0018 */   addiu     $sp, $sp, 0x18
