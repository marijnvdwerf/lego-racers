.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_80125990
/* 143A80 80125990 00801021 */  addu       $v0, $a0, $zero
/* 143A84 80125994 3C03800D */  lui        $v1, %hi(D_menu_800D13C0)
/* 143A88 80125998 246313C0 */  addiu      $v1, $v1, %lo(D_menu_800D13C0)
/* 143A8C 8012599C AC430004 */  sw         $v1, 0x4($v0)
/* 143A90 801259A0 03E00008 */  jr         $ra
/* 143A94 801259A4 AC400000 */   sw        $zero, 0x0($v0)

glabel func_menu_801259A8
/* 143A98 801259A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 143A9C 801259AC 3C02800D */  lui        $v0, %hi(D_menu_800D13C0)
/* 143AA0 801259B0 244213C0 */  addiu      $v0, $v0, %lo(D_menu_800D13C0)
/* 143AA4 801259B4 30A50001 */  andi       $a1, $a1, 0x1
/* 143AA8 801259B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 143AAC 801259BC 10A00003 */  beqz       $a1, .Lmenu_801259CC
/* 143AB0 801259C0 AC820004 */   sw        $v0, 0x4($a0)
/* 143AB4 801259C4 0C01FB5C */  jal        func_8007ED70
/* 143AB8 801259C8 00000000 */   nop
.Lmenu_801259CC:
/* 143ABC 801259CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 143AC0 801259D0 03E00008 */  jr         $ra
/* 143AC4 801259D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_801259D8
/* 143AC8 801259D8 03E00008 */  jr         $ra
/* 143ACC 801259DC 24020006 */   addiu     $v0, $zero, 0x6

glabel func_menu_801259E0
/* 143AD0 801259E0 03E00008 */  jr         $ra
/* 143AD4 801259E4 24020006 */   addiu     $v0, $zero, 0x6

glabel func_menu_801259E8
/* 143AD8 801259E8 03E00008 */  jr         $ra
/* 143ADC 801259EC 24020006 */   addiu     $v0, $zero, 0x6

glabel func_menu_801259F0
/* 143AE0 801259F0 03E00008 */  jr         $ra
/* 143AE4 801259F4 24020006 */   addiu     $v0, $zero, 0x6

glabel func_menu_801259F8
/* 143AE8 801259F8 8C820000 */  lw         $v0, 0x0($a0)
/* 143AEC 801259FC 03E00008 */  jr         $ra
/* 143AF0 80125A00 2C420001 */   sltiu     $v0, $v0, 0x1

glabel func_menu_80125A04
/* 143AF4 80125A04 8C820000 */  lw         $v0, 0x0($a0)
/* 143AF8 80125A08 03E00008 */  jr         $ra
/* 143AFC 80125A0C 00000000 */   nop

glabel func_menu_80125A10
/* 143B00 80125A10 24020001 */  addiu      $v0, $zero, 0x1
/* 143B04 80125A14 03E00008 */  jr         $ra
/* 143B08 80125A18 AC820000 */   sw        $v0, 0x0($a0)

glabel func_menu_80125A1C
/* 143B0C 80125A1C 24020015 */  addiu      $v0, $zero, 0x15
/* 143B10 80125A20 03E00008 */  jr         $ra
/* 143B14 80125A24 AC820000 */   sw        $v0, 0x0($a0)

glabel func_menu_80125A28
/* 143B18 80125A28 24020019 */  addiu      $v0, $zero, 0x19
/* 143B1C 80125A2C 03E00008 */  jr         $ra
/* 143B20 80125A30 AC820000 */   sw        $v0, 0x0($a0)

glabel func_menu_80125A34
/* 143B24 80125A34 24020014 */  addiu      $v0, $zero, 0x14
/* 143B28 80125A38 03E00008 */  jr         $ra
/* 143B2C 80125A3C AC820000 */   sw        $v0, 0x0($a0)

glabel func_menu_80125A40
/* 143B30 80125A40 24020013 */  addiu      $v0, $zero, 0x13
/* 143B34 80125A44 03E00008 */  jr         $ra
/* 143B38 80125A48 AC820000 */   sw        $v0, 0x0($a0)

glabel func_menu_80125A4C
/* 143B3C 80125A4C 24020012 */  addiu      $v0, $zero, 0x12
/* 143B40 80125A50 03E00008 */  jr         $ra
/* 143B44 80125A54 AC820000 */   sw        $v0, 0x0($a0)

glabel func_menu_80125A58
/* 143B48 80125A58 03E00008 */  jr         $ra
/* 143B4C 80125A5C AC800000 */   sw        $zero, 0x0($a0)

glabel func_menu_80125A60
/* 143B50 80125A60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 143B54 80125A64 AFB00010 */  sw         $s0, 0x10($sp)
/* 143B58 80125A68 00808021 */  addu       $s0, $a0, $zero
/* 143B5C 80125A6C AFB10014 */  sw         $s1, 0x14($sp)
/* 143B60 80125A70 00A08821 */  addu       $s1, $a1, $zero
/* 143B64 80125A74 3C02800D */  lui        $v0, %hi(D_menu_800D1420)
/* 143B68 80125A78 AFBF0018 */  sw         $ra, 0x18($sp)
/* 143B6C 80125A7C 8E040020 */  lw         $a0, 0x20($s0)
/* 143B70 80125A80 24421420 */  addiu      $v0, $v0, %lo(D_menu_800D1420)
/* 143B74 80125A84 10800004 */  beqz       $a0, .Lmenu_80125A98
/* 143B78 80125A88 AE020028 */   sw        $v0, 0x28($s0)
/* 143B7C 80125A8C 0C009444 */  jal        func_80025110
/* 143B80 80125A90 00000000 */   nop
/* 143B84 80125A94 AE000020 */  sw         $zero, 0x20($s0)
.Lmenu_80125A98:
/* 143B88 80125A98 0C0496F4 */  jal        func_menu_80125BD0
/* 143B8C 80125A9C 02002021 */   addu      $a0, $s0, $zero
/* 143B90 80125AA0 02002021 */  addu       $a0, $s0, $zero
/* 143B94 80125AA4 0C01F72E */  jal        func_8007DCB8
/* 143B98 80125AA8 02202821 */   addu      $a1, $s1, $zero
/* 143B9C 80125AAC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 143BA0 80125AB0 8FB10014 */  lw         $s1, 0x14($sp)
/* 143BA4 80125AB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 143BA8 80125AB8 03E00008 */  jr         $ra
/* 143BAC 80125ABC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80125AC0
/* 143BB0 80125AC0 03E00008 */  jr         $ra
/* 143BB4 80125AC4 24020008 */   addiu     $v0, $zero, 0x8

glabel func_menu_80125AC8
/* 143BB8 80125AC8 03E00008 */  jr         $ra
/* 143BBC 80125ACC 24020008 */   addiu     $v0, $zero, 0x8

glabel func_menu_80125AD0
/* 143BC0 80125AD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 143BC4 80125AD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 143BC8 80125AD8 00808021 */  addu       $s0, $a0, $zero
/* 143BCC 80125ADC AFBF001C */  sw         $ra, 0x1C($sp)
/* 143BD0 80125AE0 AFB20018 */  sw         $s2, 0x18($sp)
/* 143BD4 80125AE4 AFB10014 */  sw         $s1, 0x14($sp)
/* 143BD8 80125AE8 8E020028 */  lw         $v0, 0x28($s0)
/* 143BDC 80125AEC 00E09021 */  addu       $s2, $a3, $zero
/* 143BE0 80125AF0 AE120000 */  sw         $s2, 0x0($s0)
/* 143BE4 80125AF4 AE000004 */  sw         $zero, 0x4($s0)
/* 143BE8 80125AF8 AE00000C */  sw         $zero, 0xC($s0)
/* 143BEC 80125AFC AE000018 */  sw         $zero, 0x18($s0)
/* 143BF0 80125B00 AE00001C */  sw         $zero, 0x1C($s0)
/* 143BF4 80125B04 AE000008 */  sw         $zero, 0x8($s0)
/* 143BF8 80125B08 8FB10030 */  lw         $s1, 0x30($sp)
/* 143BFC 80125B0C 8FA70034 */  lw         $a3, 0x34($sp)
/* 143C00 80125B10 84440088 */  lh         $a0, 0x88($v0)
/* 143C04 80125B14 8C42008C */  lw         $v0, 0x8C($v0)
/* 143C08 80125B18 0040F809 */  jalr       $v0
/* 143C0C 80125B1C 02042021 */   addu      $a0, $s0, $a0
/* 143C10 80125B20 14400025 */  bnez       $v0, .Lmenu_80125BB8
/* 143C14 80125B24 00000000 */   nop
/* 143C18 80125B28 24020001 */  addiu      $v0, $zero, 0x1
/* 143C1C 80125B2C AE020004 */  sw         $v0, 0x4($s0)
/* 143C20 80125B30 32420020 */  andi       $v0, $s2, 0x20
/* 143C24 80125B34 10400004 */  beqz       $v0, .Lmenu_80125B48
/* 143C28 80125B38 00000000 */   nop
/* 143C2C 80125B3C 8E020020 */  lw         $v0, 0x20($s0)
/* 143C30 80125B40 1440001D */  bnez       $v0, .Lmenu_80125BB8
/* 143C34 80125B44 00001021 */   addu      $v0, $zero, $zero
.Lmenu_80125B48:
/* 143C38 80125B48 8E040020 */  lw         $a0, 0x20($s0)
/* 143C3C 80125B4C 10800004 */  beqz       $a0, .Lmenu_80125B60
/* 143C40 80125B50 00000000 */   nop
/* 143C44 80125B54 0C009444 */  jal        func_80025110
/* 143C48 80125B58 00000000 */   nop
/* 143C4C 80125B5C AE000020 */  sw         $zero, 0x20($s0)
.Lmenu_80125B60:
/* 143C50 80125B60 12200013 */  beqz       $s1, .Lmenu_80125BB0
/* 143C54 80125B64 3C028003 */   lui       $v0, %hi(D_8002FC34)
/* 143C58 80125B68 8C44FC34 */  lw         $a0, %lo(D_8002FC34)($v0)
/* 143C5C 80125B6C 32220001 */  andi       $v0, $s1, 0x1
/* 143C60 80125B70 0C01FB65 */  jal        func_8007ED94
/* 143C64 80125B74 02228821 */   addu      $s1, $s1, $v0
/* 143C68 80125B78 0C00943C */  jal        func_800250F0
/* 143C6C 80125B7C 02202021 */   addu      $a0, $s1, $zero
/* 143C70 80125B80 0C01FB72 */  jal        func_8007EDC8
/* 143C74 80125B84 AE020020 */   sw        $v0, 0x20($s0)
/* 143C78 80125B88 8E020020 */  lw         $v0, 0x20($s0)
/* 143C7C 80125B8C 54400009 */  bnel       $v0, $zero, .Lmenu_80125BB4
/* 143C80 80125B90 AE110014 */   sw        $s1, 0x14($s0)
/* 143C84 80125B94 8E020028 */  lw         $v0, 0x28($s0)
/* 143C88 80125B98 84440048 */  lh         $a0, 0x48($v0)
/* 143C8C 80125B9C 8C42004C */  lw         $v0, 0x4C($v0)
/* 143C90 80125BA0 0040F809 */  jalr       $v0
/* 143C94 80125BA4 02042021 */   addu      $a0, $s0, $a0
/* 143C98 80125BA8 080496EE */  j          .Lmenu_80125BB8
/* 143C9C 80125BAC 24020004 */   addiu     $v0, $zero, 0x4
.Lmenu_80125BB0:
/* 143CA0 80125BB0 AE110014 */  sw         $s1, 0x14($s0)
.Lmenu_80125BB4:
/* 143CA4 80125BB4 00001021 */  addu       $v0, $zero, $zero
.Lmenu_80125BB8:
/* 143CA8 80125BB8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 143CAC 80125BBC 8FB20018 */  lw         $s2, 0x18($sp)
/* 143CB0 80125BC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 143CB4 80125BC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 143CB8 80125BC8 03E00008 */  jr         $ra
/* 143CBC 80125BCC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80125BD0
/* 143CC0 80125BD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 143CC4 80125BD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 143CC8 80125BD8 00808021 */  addu       $s0, $a0, $zero
/* 143CCC 80125BDC AFBF0014 */  sw         $ra, 0x14($sp)
/* 143CD0 80125BE0 8E020000 */  lw         $v0, 0x0($s0)
/* 143CD4 80125BE4 30420020 */  andi       $v0, $v0, 0x20
/* 143CD8 80125BE8 14400007 */  bnez       $v0, .Lmenu_80125C08
/* 143CDC 80125BEC 00000000 */   nop
/* 143CE0 80125BF0 8E040020 */  lw         $a0, 0x20($s0)
/* 143CE4 80125BF4 10800004 */  beqz       $a0, .Lmenu_80125C08
/* 143CE8 80125BF8 00000000 */   nop
/* 143CEC 80125BFC 0C009444 */  jal        func_80025110
/* 143CF0 80125C00 00000000 */   nop
/* 143CF4 80125C04 AE000020 */  sw         $zero, 0x20($s0)
.Lmenu_80125C08:
/* 143CF8 80125C08 8E020028 */  lw         $v0, 0x28($s0)
/* 143CFC 80125C0C 84440010 */  lh         $a0, 0x10($v0)
/* 143D00 80125C10 8C420014 */  lw         $v0, 0x14($v0)
/* 143D04 80125C14 0040F809 */  jalr       $v0
/* 143D08 80125C18 02042021 */   addu      $a0, $s0, $a0
/* 143D0C 80125C1C AE000018 */  sw         $zero, 0x18($s0)
/* 143D10 80125C20 AE00001C */  sw         $zero, 0x1C($s0)
/* 143D14 80125C24 AE000000 */  sw         $zero, 0x0($s0)
/* 143D18 80125C28 AE000004 */  sw         $zero, 0x4($s0)
/* 143D1C 80125C2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 143D20 80125C30 8FB00010 */  lw         $s0, 0x10($sp)
/* 143D24 80125C34 03E00008 */  jr         $ra
/* 143D28 80125C38 27BD0018 */   addiu     $sp, $sp, 0x18
