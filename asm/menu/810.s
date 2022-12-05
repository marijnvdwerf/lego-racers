.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_80118A80
/* 136B70 80118A80 3C028012 */  lui        $v0, %hi(D_menu_80127170)
/* 136B74 80118A84 03E00008 */  jr         $ra
/* 136B78 80118A88 AC447170 */   sw        $a0, %lo(D_menu_80127170)($v0)

glabel func_menu_80118A8C
/* 136B7C 80118A8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 136B80 80118A90 AFB00010 */  sw         $s0, 0x10($sp)
/* 136B84 80118A94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 136B88 80118A98 0C01637C */  jal        func_80058DF0
/* 136B8C 80118A9C 00808021 */   addu      $s0, $a0, $zero
/* 136B90 80118AA0 3C02800D */  lui        $v0, %hi(D_menu_800D0140)
/* 136B94 80118AA4 24420140 */  addiu      $v0, $v0, %lo(D_menu_800D0140)
/* 136B98 80118AA8 02002021 */  addu       $a0, $s0, $zero
/* 136B9C 80118AAC 0C0462C4 */  jal        func_menu_80118B10
/* 136BA0 80118AB0 AE020008 */   sw        $v0, 0x8($s0)
/* 136BA4 80118AB4 02001021 */  addu       $v0, $s0, $zero
/* 136BA8 80118AB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 136BAC 80118ABC 8FB00010 */  lw         $s0, 0x10($sp)
/* 136BB0 80118AC0 03E00008 */  jr         $ra
/* 136BB4 80118AC4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80118AC8
/* 136BB8 80118AC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 136BBC 80118ACC AFB00010 */  sw         $s0, 0x10($sp)
/* 136BC0 80118AD0 00808021 */  addu       $s0, $a0, $zero
/* 136BC4 80118AD4 AFB10014 */  sw         $s1, 0x14($sp)
/* 136BC8 80118AD8 00A08821 */  addu       $s1, $a1, $zero
/* 136BCC 80118ADC 3C02800D */  lui        $v0, %hi(D_menu_800D0140)
/* 136BD0 80118AE0 24420140 */  addiu      $v0, $v0, %lo(D_menu_800D0140)
/* 136BD4 80118AE4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 136BD8 80118AE8 0C0462CE */  jal        func_menu_80118B38
/* 136BDC 80118AEC AE020008 */   sw        $v0, 0x8($s0)
/* 136BE0 80118AF0 02002021 */  addu       $a0, $s0, $zero
/* 136BE4 80118AF4 0C016383 */  jal        func_80058E0C
/* 136BE8 80118AF8 02202821 */   addu      $a1, $s1, $zero
/* 136BEC 80118AFC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 136BF0 80118B00 8FB10014 */  lw         $s1, 0x14($sp)
/* 136BF4 80118B04 8FB00010 */  lw         $s0, 0x10($sp)
/* 136BF8 80118B08 03E00008 */  jr         $ra
/* 136BFC 80118B0C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80118B10
/* 136C00 80118B10 AC800010 */  sw         $zero, 0x10($a0)
/* 136C04 80118B14 AC800014 */  sw         $zero, 0x14($a0)
/* 136C08 80118B18 AC80001C */  sw         $zero, 0x1C($a0)
/* 136C0C 80118B1C AC800018 */  sw         $zero, 0x18($a0)
/* 136C10 80118B20 03E00008 */  jr         $ra
/* 136C14 80118B24 A080000C */   sb        $zero, 0xC($a0)

glabel func_menu_80118B28
/* 136C18 80118B28 24020001 */  addiu      $v0, $zero, 0x1
/* 136C1C 80118B2C A082000C */  sb         $v0, 0xC($a0)
/* 136C20 80118B30 03E00008 */  jr         $ra
/* 136C24 80118B34 24020001 */   addiu     $v0, $zero, 0x1

glabel func_menu_80118B38
/* 136C28 80118B38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 136C2C 80118B3C AFB00010 */  sw         $s0, 0x10($sp)
/* 136C30 80118B40 00808021 */  addu       $s0, $a0, $zero
/* 136C34 80118B44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 136C38 80118B48 8E020000 */  lw         $v0, 0x0($s0)
/* 136C3C 80118B4C 10400008 */  beqz       $v0, .Lmenu_80118B70
/* 136C40 80118B50 00000000 */   nop
/* 136C44 80118B54 0C0163B9 */  jal        func_80058EE4
/* 136C48 80118B58 00000000 */   nop
/* 136C4C 80118B5C 8E020008 */  lw         $v0, 0x8($s0)
/* 136C50 80118B60 84440020 */  lh         $a0, 0x20($v0)
/* 136C54 80118B64 8C420024 */  lw         $v0, 0x24($v0)
/* 136C58 80118B68 0040F809 */  jalr       $v0
/* 136C5C 80118B6C 02042021 */   addu      $a0, $s0, $a0
.Lmenu_80118B70:
/* 136C60 80118B70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 136C64 80118B74 8FB00010 */  lw         $s0, 0x10($sp)
/* 136C68 80118B78 03E00008 */  jr         $ra
/* 136C6C 80118B7C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80118B80
/* 136C70 80118B80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 136C74 80118B84 AFB00010 */  sw         $s0, 0x10($sp)
/* 136C78 80118B88 00808021 */  addu       $s0, $a0, $zero
/* 136C7C 80118B8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 136C80 80118B90 8E030010 */  lw         $v1, 0x10($s0)
/* 136C84 80118B94 8C620028 */  lw         $v0, 0x28($v1)
/* 136C88 80118B98 844400A0 */  lh         $a0, 0xA0($v0)
/* 136C8C 80118B9C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 136C90 80118BA0 0040F809 */  jalr       $v0
/* 136C94 80118BA4 00642021 */   addu      $a0, $v1, $a0
/* 136C98 80118BA8 24030027 */  addiu      $v1, $zero, 0x27
/* 136C9C 80118BAC 10430007 */  beq        $v0, $v1, .Lmenu_80118BCC
/* 136CA0 80118BB0 24050013 */   addiu     $a1, $zero, 0x13
/* 136CA4 80118BB4 8E030010 */  lw         $v1, 0x10($s0)
/* 136CA8 80118BB8 8C620028 */  lw         $v0, 0x28($v1)
/* 136CAC 80118BBC 84440098 */  lh         $a0, 0x98($v0)
/* 136CB0 80118BC0 8C42009C */  lw         $v0, 0x9C($v0)
/* 136CB4 80118BC4 0040F809 */  jalr       $v0
/* 136CB8 80118BC8 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80118BCC:
/* 136CBC 80118BCC 8E040010 */  lw         $a0, 0x10($s0)
/* 136CC0 80118BD0 0C002680 */  jal        func_80009A00
/* 136CC4 80118BD4 00000000 */   nop
/* 136CC8 80118BD8 02002021 */  addu       $a0, $s0, $zero
/* 136CCC 80118BDC 00402821 */  addu       $a1, $v0, $zero
/* 136CD0 80118BE0 0C016397 */  jal        func_80058E5C
/* 136CD4 80118BE4 AE05001C */   sw        $a1, 0x1C($s0)
/* 136CD8 80118BE8 8E02001C */  lw         $v0, 0x1C($s0)
/* 136CDC 80118BEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 136CE0 80118BF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 136CE4 80118BF4 03E00008 */  jr         $ra
/* 136CE8 80118BF8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80118BFC
/* 136CEC 80118BFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 136CF0 80118C00 AFB00010 */  sw         $s0, 0x10($sp)
/* 136CF4 80118C04 00808021 */  addu       $s0, $a0, $zero
/* 136CF8 80118C08 AFBF0018 */  sw         $ra, 0x18($sp)
/* 136CFC 80118C0C AFB10014 */  sw         $s1, 0x14($sp)
/* 136D00 80118C10 8E030010 */  lw         $v1, 0x10($s0)
/* 136D04 80118C14 8C620028 */  lw         $v0, 0x28($v1)
/* 136D08 80118C18 844400A0 */  lh         $a0, 0xA0($v0)
/* 136D0C 80118C1C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 136D10 80118C20 0040F809 */  jalr       $v0
/* 136D14 80118C24 00642021 */   addu      $a0, $v1, $a0
/* 136D18 80118C28 24030007 */  addiu      $v1, $zero, 0x7
/* 136D1C 80118C2C 10430007 */  beq        $v0, $v1, .Lmenu_80118C4C
/* 136D20 80118C30 24050007 */   addiu     $a1, $zero, 0x7
/* 136D24 80118C34 8E030010 */  lw         $v1, 0x10($s0)
/* 136D28 80118C38 8C620028 */  lw         $v0, 0x28($v1)
/* 136D2C 80118C3C 84440098 */  lh         $a0, 0x98($v0)
/* 136D30 80118C40 8C42009C */  lw         $v0, 0x9C($v0)
/* 136D34 80118C44 0040F809 */  jalr       $v0
/* 136D38 80118C48 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80118C4C:
/* 136D3C 80118C4C 8E040010 */  lw         $a0, 0x10($s0)
/* 136D40 80118C50 0C002680 */  jal        func_80009A00
/* 136D44 80118C54 00000000 */   nop
/* 136D48 80118C58 00408821 */  addu       $s1, $v0, $zero
/* 136D4C 80118C5C 8E020018 */  lw         $v0, 0x18($s0)
/* 136D50 80118C60 8E030010 */  lw         $v1, 0x10($s0)
/* 136D54 80118C64 00511021 */  addu       $v0, $v0, $s1
/* 136D58 80118C68 AE020018 */  sw         $v0, 0x18($s0)
/* 136D5C 80118C6C 8C620028 */  lw         $v0, 0x28($v1)
/* 136D60 80118C70 844400A0 */  lh         $a0, 0xA0($v0)
/* 136D64 80118C74 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 136D68 80118C78 0040F809 */  jalr       $v0
/* 136D6C 80118C7C 00642021 */   addu      $a0, $v1, $a0
/* 136D70 80118C80 24030008 */  addiu      $v1, $zero, 0x8
/* 136D74 80118C84 10430007 */  beq        $v0, $v1, .Lmenu_80118CA4
/* 136D78 80118C88 24050008 */   addiu     $a1, $zero, 0x8
/* 136D7C 80118C8C 8E030010 */  lw         $v1, 0x10($s0)
/* 136D80 80118C90 8C620028 */  lw         $v0, 0x28($v1)
/* 136D84 80118C94 84440098 */  lh         $a0, 0x98($v0)
/* 136D88 80118C98 8C42009C */  lw         $v0, 0x9C($v0)
/* 136D8C 80118C9C 0040F809 */  jalr       $v0
/* 136D90 80118CA0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80118CA4:
/* 136D94 80118CA4 8E030010 */  lw         $v1, 0x10($s0)
/* 136D98 80118CA8 8C620028 */  lw         $v0, 0x28($v1)
/* 136D9C 80118CAC 844400A0 */  lh         $a0, 0xA0($v0)
/* 136DA0 80118CB0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 136DA4 80118CB4 0040F809 */  jalr       $v0
/* 136DA8 80118CB8 00642021 */   addu      $a0, $v1, $a0
/* 136DAC 80118CBC 24030005 */  addiu      $v1, $zero, 0x5
/* 136DB0 80118CC0 10430007 */  beq        $v0, $v1, .Lmenu_80118CE0
/* 136DB4 80118CC4 24050005 */   addiu     $a1, $zero, 0x5
/* 136DB8 80118CC8 8E030010 */  lw         $v1, 0x10($s0)
/* 136DBC 80118CCC 8C620028 */  lw         $v0, 0x28($v1)
/* 136DC0 80118CD0 84440098 */  lh         $a0, 0x98($v0)
/* 136DC4 80118CD4 8C42009C */  lw         $v0, 0x9C($v0)
/* 136DC8 80118CD8 0040F809 */  jalr       $v0
/* 136DCC 80118CDC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_80118CE0:
/* 136DD0 80118CE0 02201021 */  addu       $v0, $s1, $zero
/* 136DD4 80118CE4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 136DD8 80118CE8 8FB10014 */  lw         $s1, 0x14($sp)
/* 136DDC 80118CEC 8FB00010 */  lw         $s0, 0x10($sp)
/* 136DE0 80118CF0 03E00008 */  jr         $ra
/* 136DE4 80118CF4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80118CF8
/* 136DE8 80118CF8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 136DEC 80118CFC AFB00010 */  sw         $s0, 0x10($sp)
/* 136DF0 80118D00 00808021 */  addu       $s0, $a0, $zero
/* 136DF4 80118D04 AFBF0018 */  sw         $ra, 0x18($sp)
/* 136DF8 80118D08 AFB10014 */  sw         $s1, 0x14($sp)
/* 136DFC 80118D0C 8E040010 */  lw         $a0, 0x10($s0)
/* 136E00 80118D10 0C002680 */  jal        func_80009A00
/* 136E04 80118D14 00A08821 */   addu      $s1, $a1, $zero
/* 136E08 80118D18 AE220000 */  sw         $v0, 0x0($s1)
/* 136E0C 80118D1C 8E040010 */  lw         $a0, 0x10($s0)
/* 136E10 80118D20 0C002680 */  jal        func_80009A00
/* 136E14 80118D24 00000000 */   nop
/* 136E18 80118D28 AE220004 */  sw         $v0, 0x4($s1)
/* 136E1C 80118D2C 8E040010 */  lw         $a0, 0x10($s0)
/* 136E20 80118D30 0C002680 */  jal        func_80009A00
/* 136E24 80118D34 00000000 */   nop
/* 136E28 80118D38 AE220008 */  sw         $v0, 0x8($s1)
/* 136E2C 80118D3C 8E040010 */  lw         $a0, 0x10($s0)
/* 136E30 80118D40 0C002680 */  jal        func_80009A00
/* 136E34 80118D44 00000000 */   nop
/* 136E38 80118D48 AE22000C */  sw         $v0, 0xC($s1)
/* 136E3C 80118D4C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 136E40 80118D50 8FB10014 */  lw         $s1, 0x14($sp)
/* 136E44 80118D54 8FB00010 */  lw         $s0, 0x10($sp)
/* 136E48 80118D58 03E00008 */  jr         $ra
/* 136E4C 80118D5C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80118D60
/* 136E50 80118D60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 136E54 80118D64 AFB00010 */  sw         $s0, 0x10($sp)
/* 136E58 80118D68 00808021 */  addu       $s0, $a0, $zero
/* 136E5C 80118D6C AFBF0018 */  sw         $ra, 0x18($sp)
/* 136E60 80118D70 AFB10014 */  sw         $s1, 0x14($sp)
/* 136E64 80118D74 8E040010 */  lw         $a0, 0x10($s0)
/* 136E68 80118D78 0C002680 */  jal        func_80009A00
/* 136E6C 80118D7C 00A08821 */   addu      $s1, $a1, $zero
/* 136E70 80118D80 A2220003 */  sb         $v0, 0x3($s1)
/* 136E74 80118D84 8E040010 */  lw         $a0, 0x10($s0)
/* 136E78 80118D88 0C002680 */  jal        func_80009A00
/* 136E7C 80118D8C 00000000 */   nop
/* 136E80 80118D90 A2220000 */  sb         $v0, 0x0($s1)
/* 136E84 80118D94 8E040010 */  lw         $a0, 0x10($s0)
/* 136E88 80118D98 0C002680 */  jal        func_80009A00
/* 136E8C 80118D9C 00000000 */   nop
/* 136E90 80118DA0 A2220001 */  sb         $v0, 0x1($s1)
/* 136E94 80118DA4 8E040010 */  lw         $a0, 0x10($s0)
/* 136E98 80118DA8 0C002680 */  jal        func_80009A00
/* 136E9C 80118DAC 00000000 */   nop
/* 136EA0 80118DB0 A2220002 */  sb         $v0, 0x2($s1)
/* 136EA4 80118DB4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 136EA8 80118DB8 8FB10014 */  lw         $s1, 0x14($sp)
/* 136EAC 80118DBC 8FB00010 */  lw         $s0, 0x10($sp)
/* 136EB0 80118DC0 03E00008 */  jr         $ra
/* 136EB4 80118DC4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80118DC8
/* 136EB8 80118DC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 136EBC 80118DCC AFB00010 */  sw         $s0, 0x10($sp)
/* 136EC0 80118DD0 00808021 */  addu       $s0, $a0, $zero
/* 136EC4 80118DD4 AFB10014 */  sw         $s1, 0x14($sp)
/* 136EC8 80118DD8 24110006 */  addiu      $s1, $zero, 0x6
/* 136ECC 80118DDC AFBF0018 */  sw         $ra, 0x18($sp)
.Lmenu_80118DE0:
/* 136ED0 80118DE0 8E030010 */  lw         $v1, 0x10($s0)
/* 136ED4 80118DE4 8C620028 */  lw         $v0, 0x28($v1)
/* 136ED8 80118DE8 844400A0 */  lh         $a0, 0xA0($v0)
/* 136EDC 80118DEC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 136EE0 80118DF0 0040F809 */  jalr       $v0
/* 136EE4 80118DF4 00642021 */   addu      $a0, $v1, $a0
/* 136EE8 80118DF8 00402821 */  addu       $a1, $v0, $zero
/* 136EEC 80118DFC 10A00016 */  beqz       $a1, .Lmenu_80118E58
/* 136EF0 80118E00 00000000 */   nop
/* 136EF4 80118E04 8E020008 */  lw         $v0, 0x8($s0)
/* 136EF8 80118E08 84440030 */  lh         $a0, 0x30($v0)
/* 136EFC 80118E0C 8C420034 */  lw         $v0, 0x34($v0)
/* 136F00 80118E10 0040F809 */  jalr       $v0
/* 136F04 80118E14 02042021 */   addu      $a0, $s0, $a0
/* 136F08 80118E18 8E030010 */  lw         $v1, 0x10($s0)
/* 136F0C 80118E1C 8C620028 */  lw         $v0, 0x28($v1)
/* 136F10 80118E20 844400A0 */  lh         $a0, 0xA0($v0)
/* 136F14 80118E24 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 136F18 80118E28 0040F809 */  jalr       $v0
/* 136F1C 80118E2C 00642021 */   addu      $a0, $v1, $a0
/* 136F20 80118E30 1051FFEB */  beq        $v0, $s1, .Lmenu_80118DE0
/* 136F24 80118E34 24050006 */   addiu     $a1, $zero, 0x6
/* 136F28 80118E38 8E030010 */  lw         $v1, 0x10($s0)
/* 136F2C 80118E3C 8C620028 */  lw         $v0, 0x28($v1)
/* 136F30 80118E40 84440098 */  lh         $a0, 0x98($v0)
/* 136F34 80118E44 8C42009C */  lw         $v0, 0x9C($v0)
/* 136F38 80118E48 0040F809 */  jalr       $v0
/* 136F3C 80118E4C 00642021 */   addu      $a0, $v1, $a0
/* 136F40 80118E50 08046378 */  j          .Lmenu_80118DE0
/* 136F44 80118E54 00000000 */   nop
.Lmenu_80118E58:
/* 136F48 80118E58 8FBF0018 */  lw         $ra, 0x18($sp)
/* 136F4C 80118E5C 8FB10014 */  lw         $s1, 0x14($sp)
/* 136F50 80118E60 8FB00010 */  lw         $s0, 0x10($sp)
/* 136F54 80118E64 03E00008 */  jr         $ra
/* 136F58 80118E68 27BD0020 */   addiu     $sp, $sp, 0x20
