.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800D5BA0
/* 8BF60 800D5BA0 3C02800D */  lui        $v0, %hi(D_race_800CAA38)
/* 8BF64 800D5BA4 2442AA38 */  addiu      $v0, $v0, %lo(D_race_800CAA38)
/* 8BF68 800D5BA8 AC820038 */  sw         $v0, 0x38($a0)
/* 8BF6C 800D5BAC 00002821 */  addu       $a1, $zero, $zero
/* 8BF70 800D5BB0 00801821 */  addu       $v1, $a0, $zero
.Lrace_800D5BB4:
/* 8BF74 800D5BB4 AC600000 */  sw         $zero, 0x0($v1)
/* 8BF78 800D5BB8 AC60001C */  sw         $zero, 0x1C($v1)
/* 8BF7C 800D5BBC 24A50001 */  addiu      $a1, $a1, 0x1
/* 8BF80 800D5BC0 2CA20006 */  sltiu      $v0, $a1, 0x6
/* 8BF84 800D5BC4 1440FFFB */  bnez       $v0, .Lrace_800D5BB4
/* 8BF88 800D5BC8 24630004 */   addiu     $v1, $v1, 0x4
/* 8BF8C 800D5BCC 00801021 */  addu       $v0, $a0, $zero
/* 8BF90 800D5BD0 AC800034 */  sw         $zero, 0x34($a0)
/* 8BF94 800D5BD4 03E00008 */  jr         $ra
/* 8BF98 800D5BD8 AC800018 */   sw        $zero, 0x18($a0)

glabel func_race_800D5BDC
/* 8BF9C 800D5BDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8BFA0 800D5BE0 AFB10014 */  sw         $s1, 0x14($sp)
/* 8BFA4 800D5BE4 00808821 */  addu       $s1, $a0, $zero
/* 8BFA8 800D5BE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 8BFAC 800D5BEC 00A08021 */  addu       $s0, $a1, $zero
/* 8BFB0 800D5BF0 3C02800D */  lui        $v0, %hi(D_race_800CAA38)
/* 8BFB4 800D5BF4 2442AA38 */  addiu      $v0, $v0, %lo(D_race_800CAA38)
/* 8BFB8 800D5BF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8BFBC 800D5BFC 0C03570B */  jal        func_race_800D5C2C
/* 8BFC0 800D5C00 AE220038 */   sw        $v0, 0x38($s1)
/* 8BFC4 800D5C04 32100001 */  andi       $s0, $s0, 0x1
/* 8BFC8 800D5C08 12000003 */  beqz       $s0, .Lrace_800D5C18
/* 8BFCC 800D5C0C 00000000 */   nop
/* 8BFD0 800D5C10 0C01FB5C */  jal        func_8007ED70
/* 8BFD4 800D5C14 02202021 */   addu      $a0, $s1, $zero
.Lrace_800D5C18:
/* 8BFD8 800D5C18 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8BFDC 800D5C1C 8FB10014 */  lw         $s1, 0x14($sp)
/* 8BFE0 800D5C20 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BFE4 800D5C24 03E00008 */  jr         $ra
/* 8BFE8 800D5C28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D5C2C
/* 8BFEC 800D5C2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8BFF0 800D5C30 AFB20018 */  sw         $s2, 0x18($sp)
/* 8BFF4 800D5C34 00809021 */  addu       $s2, $a0, $zero
/* 8BFF8 800D5C38 AFB10014 */  sw         $s1, 0x14($sp)
/* 8BFFC 800D5C3C 00008821 */  addu       $s1, $zero, $zero
/* 8C000 800D5C40 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C004 800D5C44 02408021 */  addu       $s0, $s2, $zero
/* 8C008 800D5C48 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_800D5C4C:
/* 8C00C 800D5C4C 8E04001C */  lw         $a0, 0x1C($s0)
/* 8C010 800D5C50 10800004 */  beqz       $a0, .Lrace_800D5C64
/* 8C014 800D5C54 AE000000 */   sw        $zero, 0x0($s0)
/* 8C018 800D5C58 0C009444 */  jal        func_80025110
/* 8C01C 800D5C5C 00000000 */   nop
/* 8C020 800D5C60 AE00001C */  sw         $zero, 0x1C($s0)
.Lrace_800D5C64:
/* 8C024 800D5C64 26310001 */  addiu      $s1, $s1, 0x1
/* 8C028 800D5C68 2E220006 */  sltiu      $v0, $s1, 0x6
/* 8C02C 800D5C6C 1440FFF7 */  bnez       $v0, .Lrace_800D5C4C
/* 8C030 800D5C70 26100004 */   addiu     $s0, $s0, 0x4
/* 8C034 800D5C74 AE400034 */  sw         $zero, 0x34($s2)
/* 8C038 800D5C78 AE400018 */  sw         $zero, 0x18($s2)
/* 8C03C 800D5C7C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 8C040 800D5C80 8FB20018 */  lw         $s2, 0x18($sp)
/* 8C044 800D5C84 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C048 800D5C88 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C04C 800D5C8C 03E00008 */  jr         $ra
/* 8C050 800D5C90 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D5C94
/* 8C054 800D5C94 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8C058 800D5C98 AFB20018 */  sw         $s2, 0x18($sp)
/* 8C05C 800D5C9C 00809021 */  addu       $s2, $a0, $zero
/* 8C060 800D5CA0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 8C064 800D5CA4 AFB50024 */  sw         $s5, 0x24($sp)
/* 8C068 800D5CA8 AFB40020 */  sw         $s4, 0x20($sp)
/* 8C06C 800D5CAC AFB3001C */  sw         $s3, 0x1C($sp)
/* 8C070 800D5CB0 AFB10014 */  sw         $s1, 0x14($sp)
/* 8C074 800D5CB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C078 800D5CB8 8CA20060 */  lw         $v0, 0x60($a1)
/* 8C07C 800D5CBC 00C0A821 */  addu       $s5, $a2, $zero
/* 8C080 800D5CC0 10400026 */  beqz       $v0, .Lrace_800D5D5C
/* 8C084 800D5CC4 AE420034 */   sw        $v0, 0x34($s2)
/* 8C088 800D5CC8 AE450018 */  sw         $a1, 0x18($s2)
/* 8C08C 800D5CCC 00009821 */  addu       $s3, $zero, $zero
/* 8C090 800D5CD0 3C14800D */  lui        $s4, %hi(D_race_800CAA30)
/* 8C094 800D5CD4 02408021 */  addu       $s0, $s2, $zero
/* 8C098 800D5CD8 02608821 */  addu       $s1, $s3, $zero
.Lrace_800D5CDC:
/* 8C09C 800D5CDC 2E620006 */  sltiu      $v0, $s3, 0x6
/* 8C0A0 800D5CE0 1040001E */  beqz       $v0, .Lrace_800D5D5C
/* 8C0A4 800D5CE4 00000000 */   nop
/* 8C0A8 800D5CE8 8EA20140 */  lw         $v0, 0x140($s5)
/* 8C0AC 800D5CEC 00511021 */  addu       $v0, $v0, $s1
/* 8C0B0 800D5CF0 AE020000 */  sw         $v0, 0x0($s0)
/* 8C0B4 800D5CF4 8E440034 */  lw         $a0, 0x34($s2)
/* 8C0B8 800D5CF8 0C00943C */  jal        func_800250F0
/* 8C0BC 800D5CFC 00000000 */   nop
/* 8C0C0 800D5D00 14400006 */  bnez       $v0, .Lrace_800D5D1C
/* 8C0C4 800D5D04 AE02001C */   sw        $v0, 0x1C($s0)
/* 8C0C8 800D5D08 2684AA30 */  addiu      $a0, $s4, %lo(D_race_800CAA30)
/* 8C0CC 800D5D0C 00002821 */  addu       $a1, $zero, $zero
/* 8C0D0 800D5D10 00A03021 */  addu       $a2, $a1, $zero
/* 8C0D4 800D5D14 0C011ACF */  jal        func_80046B3C
/* 8C0D8 800D5D18 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800D5D1C:
/* 8C0DC 800D5D1C 8E420034 */  lw         $v0, 0x34($s2)
/* 8C0E0 800D5D20 1040000A */  beqz       $v0, .Lrace_800D5D4C
/* 8C0E4 800D5D24 00001821 */   addu      $v1, $zero, $zero
/* 8C0E8 800D5D28 02002021 */  addu       $a0, $s0, $zero
.Lrace_800D5D2C:
/* 8C0EC 800D5D2C 8C82001C */  lw         $v0, 0x1C($a0)
/* 8C0F0 800D5D30 00431021 */  addu       $v0, $v0, $v1
/* 8C0F4 800D5D34 A0400000 */  sb         $zero, 0x0($v0)
/* 8C0F8 800D5D38 8E420034 */  lw         $v0, 0x34($s2)
/* 8C0FC 800D5D3C 24630001 */  addiu      $v1, $v1, 0x1
/* 8C100 800D5D40 0062102B */  sltu       $v0, $v1, $v0
/* 8C104 800D5D44 1440FFF9 */  bnez       $v0, .Lrace_800D5D2C
/* 8C108 800D5D48 00000000 */   nop
.Lrace_800D5D4C:
/* 8C10C 800D5D4C 26100004 */  addiu      $s0, $s0, 0x4
/* 8C110 800D5D50 26310E2C */  addiu      $s1, $s1, 0xE2C
/* 8C114 800D5D54 08035737 */  j          .Lrace_800D5CDC
/* 8C118 800D5D58 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_800D5D5C:
/* 8C11C 800D5D5C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 8C120 800D5D60 8FB50024 */  lw         $s5, 0x24($sp)
/* 8C124 800D5D64 8FB40020 */  lw         $s4, 0x20($sp)
/* 8C128 800D5D68 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8C12C 800D5D6C 8FB20018 */  lw         $s2, 0x18($sp)
/* 8C130 800D5D70 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C134 800D5D74 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C138 800D5D78 03E00008 */  jr         $ra
/* 8C13C 800D5D7C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800D5D80
/* 8C140 800D5D80 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8C144 800D5D84 AFB7002C */  sw         $s7, 0x2C($sp)
/* 8C148 800D5D88 0080B821 */  addu       $s7, $a0, $zero
/* 8C14C 800D5D8C AFBF0034 */  sw         $ra, 0x34($sp)
/* 8C150 800D5D90 AFBE0030 */  sw         $fp, 0x30($sp)
/* 8C154 800D5D94 AFB60028 */  sw         $s6, 0x28($sp)
/* 8C158 800D5D98 AFB50024 */  sw         $s5, 0x24($sp)
/* 8C15C 800D5D9C AFB40020 */  sw         $s4, 0x20($sp)
/* 8C160 800D5DA0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 8C164 800D5DA4 AFB20018 */  sw         $s2, 0x18($sp)
/* 8C168 800D5DA8 AFB10014 */  sw         $s1, 0x14($sp)
/* 8C16C 800D5DAC AFB00010 */  sw         $s0, 0x10($sp)
/* 8C170 800D5DB0 8EE20034 */  lw         $v0, 0x34($s7)
/* 8C174 800D5DB4 1040002C */  beqz       $v0, .Lrace_800D5E68
/* 8C178 800D5DB8 00A0A821 */   addu      $s5, $a1, $zero
.Lrace_800D5DBC:
/* 8C17C 800D5DBC 12A0002A */  beqz       $s5, .Lrace_800D5E68
/* 8C180 800D5DC0 2EA20100 */   sltiu     $v0, $s5, 0x100
/* 8C184 800D5DC4 14400002 */  bnez       $v0, .Lrace_800D5DD0
/* 8C188 800D5DC8 02A0A021 */   addu      $s4, $s5, $zero
/* 8C18C 800D5DCC 241400FF */  addiu      $s4, $zero, 0xFF
.Lrace_800D5DD0:
/* 8C190 800D5DD0 00009821 */  addu       $s3, $zero, $zero
/* 8C194 800D5DD4 329E00FF */  andi       $fp, $s4, 0xFF
/* 8C198 800D5DD8 02E09021 */  addu       $s2, $s7, $zero
.Lrace_800D5DDC:
/* 8C19C 800D5DDC 2E620006 */  sltiu      $v0, $s3, 0x6
/* 8C1A0 800D5DE0 1040001E */  beqz       $v0, .Lrace_800D5E5C
/* 8C1A4 800D5DE4 00008021 */   addu      $s0, $zero, $zero
/* 8C1A8 800D5DE8 0240B021 */  addu       $s6, $s2, $zero
/* 8C1AC 800D5DEC 02008821 */  addu       $s1, $s0, $zero
.Lrace_800D5DF0:
/* 8C1B0 800D5DF0 8EE20034 */  lw         $v0, 0x34($s7)
/* 8C1B4 800D5DF4 0202102B */  sltu       $v0, $s0, $v0
/* 8C1B8 800D5DF8 50400016 */  beql       $v0, $zero, .Lrace_800D5E54
/* 8C1BC 800D5DFC 26520004 */   addiu     $s2, $s2, 0x4
/* 8C1C0 800D5E00 8EC2001C */  lw         $v0, 0x1C($s6)
/* 8C1C4 800D5E04 00501821 */  addu       $v1, $v0, $s0
/* 8C1C8 800D5E08 90640000 */  lbu        $a0, 0x0($v1)
/* 8C1CC 800D5E0C 308200FF */  andi       $v0, $a0, 0xFF
/* 8C1D0 800D5E10 1040000D */  beqz       $v0, .Lrace_800D5E48
/* 8C1D4 800D5E14 03C2102B */   sltu      $v0, $fp, $v0
/* 8C1D8 800D5E18 1440000A */  bnez       $v0, .Lrace_800D5E44
/* 8C1DC 800D5E1C 00941023 */   subu      $v0, $a0, $s4
/* 8C1E0 800D5E20 A0600000 */  sb         $zero, 0x0($v1)
/* 8C1E4 800D5E24 8EE20018 */  lw         $v0, 0x18($s7)
/* 8C1E8 800D5E28 8E440000 */  lw         $a0, 0x0($s2)
/* 8C1EC 800D5E2C 8C4500A4 */  lw         $a1, 0xA4($v0)
/* 8C1F0 800D5E30 248403FC */  addiu      $a0, $a0, 0x3FC
/* 8C1F4 800D5E34 0C047A95 */  jal        func_race_8011EA54
/* 8C1F8 800D5E38 00B12821 */   addu      $a1, $a1, $s1
/* 8C1FC 800D5E3C 08035793 */  j          .Lrace_800D5E4C
/* 8C200 800D5E40 26310064 */   addiu     $s1, $s1, 0x64
.Lrace_800D5E44:
/* 8C204 800D5E44 A0620000 */  sb         $v0, 0x0($v1)
.Lrace_800D5E48:
/* 8C208 800D5E48 26310064 */  addiu      $s1, $s1, 0x64
.Lrace_800D5E4C:
/* 8C20C 800D5E4C 0803577C */  j          .Lrace_800D5DF0
/* 8C210 800D5E50 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800D5E54:
/* 8C214 800D5E54 08035777 */  j          .Lrace_800D5DDC
/* 8C218 800D5E58 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_800D5E5C:
/* 8C21C 800D5E5C 328200FF */  andi       $v0, $s4, 0xFF
/* 8C220 800D5E60 0803576F */  j          .Lrace_800D5DBC
/* 8C224 800D5E64 02A2A823 */   subu      $s5, $s5, $v0
.Lrace_800D5E68:
/* 8C228 800D5E68 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8C22C 800D5E6C 8FBE0030 */  lw         $fp, 0x30($sp)
/* 8C230 800D5E70 8FB7002C */  lw         $s7, 0x2C($sp)
/* 8C234 800D5E74 8FB60028 */  lw         $s6, 0x28($sp)
/* 8C238 800D5E78 8FB50024 */  lw         $s5, 0x24($sp)
/* 8C23C 800D5E7C 8FB40020 */  lw         $s4, 0x20($sp)
/* 8C240 800D5E80 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8C244 800D5E84 8FB20018 */  lw         $s2, 0x18($sp)
/* 8C248 800D5E88 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C24C 800D5E8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C250 800D5E90 03E00008 */  jr         $ra
/* 8C254 800D5E94 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800D5E98
/* 8C258 800D5E98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C25C 800D5E9C AFB10014 */  sw         $s1, 0x14($sp)
/* 8C260 800D5EA0 00808821 */  addu       $s1, $a0, $zero
/* 8C264 800D5EA4 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C268 800D5EA8 00A08021 */  addu       $s0, $a1, $zero
/* 8C26C 800D5EAC AFB20018 */  sw         $s2, 0x18($sp)
/* 8C270 800D5EB0 00C09021 */  addu       $s2, $a2, $zero
/* 8C274 800D5EB4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 8C278 800D5EB8 8E220000 */  lw         $v0, 0x0($s1)
/* 8C27C 800D5EBC 10500007 */  beq        $v0, $s0, .Lrace_800D5EDC
/* 8C280 800D5EC0 00001821 */   addu      $v1, $zero, $zero
.Lrace_800D5EC4:
/* 8C284 800D5EC4 2C620006 */  sltiu      $v0, $v1, 0x6
/* 8C288 800D5EC8 10400004 */  beqz       $v0, .Lrace_800D5EDC
/* 8C28C 800D5ECC 24840004 */   addiu     $a0, $a0, 0x4
/* 8C290 800D5ED0 8C820000 */  lw         $v0, 0x0($a0)
/* 8C294 800D5ED4 1450FFFB */  bne        $v0, $s0, .Lrace_800D5EC4
/* 8C298 800D5ED8 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800D5EDC:
/* 8C29C 800D5EDC 00031080 */  sll        $v0, $v1, 2
/* 8C2A0 800D5EE0 02221021 */  addu       $v0, $s1, $v0
/* 8C2A4 800D5EE4 8C42001C */  lw         $v0, 0x1C($v0)
/* 8C2A8 800D5EE8 00521021 */  addu       $v0, $v0, $s2
/* 8C2AC 800D5EEC 90420000 */  lbu        $v0, 0x0($v0)
/* 8C2B0 800D5EF0 1440000A */  bnez       $v0, .Lrace_800D5F1C
/* 8C2B4 800D5EF4 260403FC */   addiu     $a0, $s0, 0x3FC
/* 8C2B8 800D5EF8 00122840 */  sll        $a1, $s2, 1
/* 8C2BC 800D5EFC 00B22821 */  addu       $a1, $a1, $s2
/* 8C2C0 800D5F00 000528C0 */  sll        $a1, $a1, 3
/* 8C2C4 800D5F04 8E220018 */  lw         $v0, 0x18($s1)
/* 8C2C8 800D5F08 00B22821 */  addu       $a1, $a1, $s2
/* 8C2CC 800D5F0C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8C2D0 800D5F10 00052880 */  sll        $a1, $a1, 2
/* 8C2D4 800D5F14 0C047A81 */  jal        func_race_8011EA04
/* 8C2D8 800D5F18 00452821 */   addu      $a1, $v0, $a1
.Lrace_800D5F1C:
/* 8C2DC 800D5F1C 00001821 */  addu       $v1, $zero, $zero
/* 8C2E0 800D5F20 02202021 */  addu       $a0, $s1, $zero
.Lrace_800D5F24:
/* 8C2E4 800D5F24 8C820000 */  lw         $v0, 0x0($a0)
/* 8C2E8 800D5F28 10500006 */  beq        $v0, $s0, .Lrace_800D5F44
/* 8C2EC 800D5F2C 00031080 */   sll       $v0, $v1, 2
/* 8C2F0 800D5F30 24630001 */  addiu      $v1, $v1, 0x1
/* 8C2F4 800D5F34 2C620006 */  sltiu      $v0, $v1, 0x6
/* 8C2F8 800D5F38 1440FFFA */  bnez       $v0, .Lrace_800D5F24
/* 8C2FC 800D5F3C 24840004 */   addiu     $a0, $a0, 0x4
/* 8C300 800D5F40 00031080 */  sll        $v0, $v1, 2
.Lrace_800D5F44:
/* 8C304 800D5F44 02221021 */  addu       $v0, $s1, $v0
/* 8C308 800D5F48 8C42001C */  lw         $v0, 0x1C($v0)
/* 8C30C 800D5F4C 24030096 */  addiu      $v1, $zero, 0x96
/* 8C310 800D5F50 00521021 */  addu       $v0, $v0, $s2
/* 8C314 800D5F54 A0430000 */  sb         $v1, 0x0($v0)
/* 8C318 800D5F58 8FBF001C */  lw         $ra, 0x1C($sp)
/* 8C31C 800D5F5C 8FB20018 */  lw         $s2, 0x18($sp)
/* 8C320 800D5F60 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C324 800D5F64 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C328 800D5F68 03E00008 */  jr         $ra
/* 8C32C 800D5F6C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D5F70
/* 8C330 800D5F70 00003821 */  addu       $a3, $zero, $zero
/* 8C334 800D5F74 00803021 */  addu       $a2, $a0, $zero
.Lrace_800D5F78:
/* 8C338 800D5F78 8C820034 */  lw         $v0, 0x34($a0)
/* 8C33C 800D5F7C 1040000A */  beqz       $v0, .Lrace_800D5FA8
/* 8C340 800D5F80 00001821 */   addu      $v1, $zero, $zero
/* 8C344 800D5F84 00C02821 */  addu       $a1, $a2, $zero
.Lrace_800D5F88:
/* 8C348 800D5F88 8CA2001C */  lw         $v0, 0x1C($a1)
/* 8C34C 800D5F8C 00431021 */  addu       $v0, $v0, $v1
/* 8C350 800D5F90 A0400000 */  sb         $zero, 0x0($v0)
/* 8C354 800D5F94 8C820034 */  lw         $v0, 0x34($a0)
/* 8C358 800D5F98 24630001 */  addiu      $v1, $v1, 0x1
/* 8C35C 800D5F9C 0062102B */  sltu       $v0, $v1, $v0
/* 8C360 800D5FA0 1440FFF9 */  bnez       $v0, .Lrace_800D5F88
/* 8C364 800D5FA4 00000000 */   nop
.Lrace_800D5FA8:
/* 8C368 800D5FA8 24E70001 */  addiu      $a3, $a3, 0x1
/* 8C36C 800D5FAC 2CE20006 */  sltiu      $v0, $a3, 0x6
/* 8C370 800D5FB0 1440FFF1 */  bnez       $v0, .Lrace_800D5F78
/* 8C374 800D5FB4 24C60004 */   addiu     $a2, $a2, 0x4
/* 8C378 800D5FB8 03E00008 */  jr         $ra
/* 8C37C 800D5FBC 00000000 */   nop

glabel func_race_800D5FC0
/* 8C380 800D5FC0 8C820034 */  lw         $v0, 0x34($a0)
/* 8C384 800D5FC4 03E00008 */  jr         $ra
/* 8C388 800D5FC8 0002102B */   sltu      $v0, $zero, $v0
