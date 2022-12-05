.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_80125C40
/* 143D30 80125C40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 143D34 80125C44 AFB20018 */  sw         $s2, 0x18($sp)
/* 143D38 80125C48 00809021 */  addu       $s2, $a0, $zero
/* 143D3C 80125C4C 3C02800D */  lui        $v0, %hi(D_menu_800D14C0)
/* 143D40 80125C50 244214C0 */  addiu      $v0, $v0, %lo(D_menu_800D14C0)
/* 143D44 80125C54 AFB00010 */  sw         $s0, 0x10($sp)
/* 143D48 80125C58 26500010 */  addiu      $s0, $s2, 0x10
/* 143D4C 80125C5C AFB10014 */  sw         $s1, 0x14($sp)
/* 143D50 80125C60 24110003 */  addiu      $s1, $zero, 0x3
/* 143D54 80125C64 AFBF0024 */  sw         $ra, 0x24($sp)
/* 143D58 80125C68 AFB40020 */  sw         $s4, 0x20($sp)
/* 143D5C 80125C6C AFB3001C */  sw         $s3, 0x1C($sp)
/* 143D60 80125C70 AE420000 */  sw         $v0, 0x0($s2)
/* 143D64 80125C74 3C02800D */  lui        $v0, %hi(D_menu_800D14E8)
/* 143D68 80125C78 245414E8 */  addiu      $s4, $v0, %lo(D_menu_800D14E8)
/* 143D6C 80125C7C 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_80125C80:
/* 143D70 80125C80 0C0497BC */  jal        func_menu_80125EF0
/* 143D74 80125C84 02002021 */   addu      $a0, $s0, $zero
/* 143D78 80125C88 AE140004 */  sw         $s4, 0x4($s0)
/* 143D7C 80125C8C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 143D80 80125C90 1633FFFB */  bne        $s1, $s3, .Lmenu_80125C80
/* 143D84 80125C94 26100078 */   addiu     $s0, $s0, 0x78
/* 143D88 80125C98 02401021 */  addu       $v0, $s2, $zero
/* 143D8C 80125C9C AC400004 */  sw         $zero, 0x4($v0)
/* 143D90 80125CA0 A04001F0 */  sb         $zero, 0x1F0($v0)
/* 143D94 80125CA4 AC400008 */  sw         $zero, 0x8($v0)
/* 143D98 80125CA8 AC40000C */  sw         $zero, 0xC($v0)
/* 143D9C 80125CAC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 143DA0 80125CB0 8FB40020 */  lw         $s4, 0x20($sp)
/* 143DA4 80125CB4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 143DA8 80125CB8 8FB20018 */  lw         $s2, 0x18($sp)
/* 143DAC 80125CBC 8FB10014 */  lw         $s1, 0x14($sp)
/* 143DB0 80125CC0 8FB00010 */  lw         $s0, 0x10($sp)
/* 143DB4 80125CC4 03E00008 */  jr         $ra
/* 143DB8 80125CC8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_80125CCC
/* 143DBC 80125CCC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 143DC0 80125CD0 AFB20018 */  sw         $s2, 0x18($sp)
/* 143DC4 80125CD4 00809021 */  addu       $s2, $a0, $zero
/* 143DC8 80125CD8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 143DCC 80125CDC 00A09821 */  addu       $s3, $a1, $zero
/* 143DD0 80125CE0 3C02800D */  lui        $v0, %hi(D_menu_800D14C0)
/* 143DD4 80125CE4 244214C0 */  addiu      $v0, $v0, %lo(D_menu_800D14C0)
/* 143DD8 80125CE8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 143DDC 80125CEC AFB10014 */  sw         $s1, 0x14($sp)
/* 143DE0 80125CF0 AFB00010 */  sw         $s0, 0x10($sp)
/* 143DE4 80125CF4 0C049788 */  jal        func_menu_80125E20
/* 143DE8 80125CF8 AE420000 */   sw        $v0, 0x0($s2)
/* 143DEC 80125CFC 26420010 */  addiu      $v0, $s2, 0x10
/* 143DF0 80125D00 1040000C */  beqz       $v0, .Lmenu_80125D34
/* 143DF4 80125D04 265001F0 */   addiu     $s0, $s2, 0x1F0
/* 143DF8 80125D08 1050000A */  beq        $v0, $s0, .Lmenu_80125D34
/* 143DFC 80125D0C 00408821 */   addu      $s1, $v0, $zero
/* 143E00 80125D10 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_80125D14:
/* 143E04 80125D14 8E020004 */  lw         $v0, 0x4($s0)
/* 143E08 80125D18 24050002 */  addiu      $a1, $zero, 0x2
/* 143E0C 80125D1C 84440008 */  lh         $a0, 0x8($v0)
/* 143E10 80125D20 8C42000C */  lw         $v0, 0xC($v0)
/* 143E14 80125D24 0040F809 */  jalr       $v0
/* 143E18 80125D28 02042021 */   addu      $a0, $s0, $a0
/* 143E1C 80125D2C 1630FFF9 */  bne        $s1, $s0, .Lmenu_80125D14
/* 143E20 80125D30 2610FF88 */   addiu     $s0, $s0, -0x78
.Lmenu_80125D34:
/* 143E24 80125D34 32620001 */  andi       $v0, $s3, 0x1
/* 143E28 80125D38 10400003 */  beqz       $v0, .Lmenu_80125D48
/* 143E2C 80125D3C 00000000 */   nop
/* 143E30 80125D40 0C01FB5C */  jal        func_8007ED70
/* 143E34 80125D44 02402021 */   addu      $a0, $s2, $zero
.Lmenu_80125D48:
/* 143E38 80125D48 8FBF0020 */  lw         $ra, 0x20($sp)
/* 143E3C 80125D4C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 143E40 80125D50 8FB20018 */  lw         $s2, 0x18($sp)
/* 143E44 80125D54 8FB10014 */  lw         $s1, 0x14($sp)
/* 143E48 80125D58 8FB00010 */  lw         $s0, 0x10($sp)
/* 143E4C 80125D5C 03E00008 */  jr         $ra
/* 143E50 80125D60 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_80125D64
/* 143E54 80125D64 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 143E58 80125D68 AFB20018 */  sw         $s2, 0x18($sp)
/* 143E5C 80125D6C 00809021 */  addu       $s2, $a0, $zero
/* 143E60 80125D70 AFBF0020 */  sw         $ra, 0x20($sp)
/* 143E64 80125D74 AFB3001C */  sw         $s3, 0x1C($sp)
/* 143E68 80125D78 AFB10014 */  sw         $s1, 0x14($sp)
/* 143E6C 80125D7C AFB00010 */  sw         $s0, 0x10($sp)
/* 143E70 80125D80 AE450004 */  sw         $a1, 0x4($s2)
/* 143E74 80125D84 AE460008 */  sw         $a2, 0x8($s2)
/* 143E78 80125D88 0C04977A */  jal        func_menu_80125DE8
/* 143E7C 80125D8C AE47000C */   sw        $a3, 0xC($s2)
/* 143E80 80125D90 00008021 */  addu       $s0, $zero, $zero
/* 143E84 80125D94 24130001 */  addiu      $s3, $zero, 0x1
/* 143E88 80125D98 24110010 */  addiu      $s1, $zero, 0x10
/* 143E8C 80125D9C 02512021 */  addu       $a0, $s2, $s1
.Lmenu_80125DA0:
/* 143E90 80125DA0 26310078 */  addiu      $s1, $s1, 0x78
/* 143E94 80125DA4 02131004 */  sllv       $v0, $s3, $s0
/* 143E98 80125DA8 02003021 */  addu       $a2, $s0, $zero
/* 143E9C 80125DAC 26100001 */  addiu      $s0, $s0, 0x1
/* 143EA0 80125DB0 924701F0 */  lbu        $a3, 0x1F0($s2)
/* 143EA4 80125DB4 02402821 */  addu       $a1, $s2, $zero
/* 143EA8 80125DB8 0C0497E1 */  jal        func_menu_80125F84
/* 143EAC 80125DBC 00E23824 */   and       $a3, $a3, $v0
/* 143EB0 80125DC0 2E020004 */  sltiu      $v0, $s0, 0x4
/* 143EB4 80125DC4 1440FFF6 */  bnez       $v0, .Lmenu_80125DA0
/* 143EB8 80125DC8 02512021 */   addu      $a0, $s2, $s1
/* 143EBC 80125DCC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 143EC0 80125DD0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 143EC4 80125DD4 8FB20018 */  lw         $s2, 0x18($sp)
/* 143EC8 80125DD8 8FB10014 */  lw         $s1, 0x14($sp)
/* 143ECC 80125DDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 143ED0 80125DE0 03E00008 */  jr         $ra
/* 143ED4 80125DE4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_80125DE8
/* 143ED8 80125DE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 143EDC 80125DEC 00802821 */  addu       $a1, $a0, $zero
/* 143EE0 80125DF0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 143EE4 80125DF4 8CA40004 */  lw         $a0, 0x4($a1)
/* 143EE8 80125DF8 0C01F21B */  jal        func_8007C86C
/* 143EEC 80125DFC 24A501F0 */   addiu     $a1, $a1, 0x1F0
/* 143EF0 80125E00 8FBF0010 */  lw         $ra, 0x10($sp)
/* 143EF4 80125E04 03E00008 */  jr         $ra
/* 143EF8 80125E08 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_80125E0C
/* 143EFC 80125E0C 908301F0 */  lbu        $v1, 0x1F0($a0)
/* 143F00 80125E10 24020001 */  addiu      $v0, $zero, 0x1
/* 143F04 80125E14 00A21004 */  sllv       $v0, $v0, $a1
/* 143F08 80125E18 03E00008 */  jr         $ra
/* 143F0C 80125E1C 00621024 */   and       $v0, $v1, $v0

glabel func_menu_80125E20
/* 143F10 80125E20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 143F14 80125E24 AFB20018 */  sw         $s2, 0x18($sp)
/* 143F18 80125E28 00809021 */  addu       $s2, $a0, $zero
/* 143F1C 80125E2C AFB10014 */  sw         $s1, 0x14($sp)
/* 143F20 80125E30 00008821 */  addu       $s1, $zero, $zero
/* 143F24 80125E34 AFB00010 */  sw         $s0, 0x10($sp)
/* 143F28 80125E38 24100010 */  addiu      $s0, $zero, 0x10
/* 143F2C 80125E3C AFBF001C */  sw         $ra, 0x1C($sp)
.Lmenu_80125E40:
/* 143F30 80125E40 0C04984C */  jal        func_menu_80126130
/* 143F34 80125E44 02502021 */   addu      $a0, $s2, $s0
/* 143F38 80125E48 26310001 */  addiu      $s1, $s1, 0x1
/* 143F3C 80125E4C 2E220004 */  sltiu      $v0, $s1, 0x4
/* 143F40 80125E50 1440FFFB */  bnez       $v0, .Lmenu_80125E40
/* 143F44 80125E54 26100078 */   addiu     $s0, $s0, 0x78
/* 143F48 80125E58 AE400004 */  sw         $zero, 0x4($s2)
/* 143F4C 80125E5C A24001F0 */  sb         $zero, 0x1F0($s2)
/* 143F50 80125E60 AE400008 */  sw         $zero, 0x8($s2)
/* 143F54 80125E64 AE40000C */  sw         $zero, 0xC($s2)
/* 143F58 80125E68 8FBF001C */  lw         $ra, 0x1C($sp)
/* 143F5C 80125E6C 8FB20018 */  lw         $s2, 0x18($sp)
/* 143F60 80125E70 8FB10014 */  lw         $s1, 0x14($sp)
/* 143F64 80125E74 8FB00010 */  lw         $s0, 0x10($sp)
/* 143F68 80125E78 03E00008 */  jr         $ra
/* 143F6C 80125E7C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80125E80
/* 143F70 80125E80 03E00008 */  jr         $ra
/* 143F74 80125E84 24020004 */   addiu     $v0, $zero, 0x4

glabel func_menu_80125E88
/* 143F78 80125E88 00051100 */  sll        $v0, $a1, 4
/* 143F7C 80125E8C 00451023 */  subu       $v0, $v0, $a1
/* 143F80 80125E90 000210C0 */  sll        $v0, $v0, 3
/* 143F84 80125E94 24420010 */  addiu      $v0, $v0, 0x10
/* 143F88 80125E98 03E00008 */  jr         $ra
/* 143F8C 80125E9C 00821021 */   addu      $v0, $a0, $v0

glabel func_menu_80125EA0
/* 143F90 80125EA0 8C82000C */  lw         $v0, 0xC($a0)
/* 143F94 80125EA4 03E00008 */  jr         $ra
/* 143F98 80125EA8 00000000 */   nop

glabel func_menu_80125EAC
/* 143F9C 80125EAC 8C820008 */  lw         $v0, 0x8($a0)
/* 143FA0 80125EB0 03E00008 */  jr         $ra
/* 143FA4 80125EB4 00000000 */   nop

glabel func_menu_80125EB8
/* 143FA8 80125EB8 8C820004 */  lw         $v0, 0x4($a0)
/* 143FAC 80125EBC 03E00008 */  jr         $ra
/* 143FB0 80125EC0 00000000 */   nop

glabel func_menu_80125EC4
/* 143FB4 80125EC4 8C820004 */  lw         $v0, 0x4($a0)
/* 143FB8 80125EC8 03E00008 */  jr         $ra
/* 143FBC 80125ECC 0002102B */   sltu      $v0, $zero, $v0

glabel func_menu_80125ED0
/* 143FC0 80125ED0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 143FC4 80125ED4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 143FC8 80125ED8 0C0497CF */  jal        func_menu_80125F3C
/* 143FCC 80125EDC 00000000 */   nop
/* 143FD0 80125EE0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 143FD4 80125EE4 03E00008 */  jr         $ra
/* 143FD8 80125EE8 27BD0018 */   addiu     $sp, $sp, 0x18
