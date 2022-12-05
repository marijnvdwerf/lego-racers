.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osPfsFreeBlocks
/* 22950 80021D50 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 22954 80021D54 AFB20118 */  sw         $s2, 0x118($sp)
/* 22958 80021D58 00809021 */  addu       $s2, $a0, $zero
/* 2295C 80021D5C AFBF0128 */  sw         $ra, 0x128($sp)
/* 22960 80021D60 AFB50124 */  sw         $s5, 0x124($sp)
/* 22964 80021D64 AFB40120 */  sw         $s4, 0x120($sp)
/* 22968 80021D68 AFB3011C */  sw         $s3, 0x11C($sp)
/* 2296C 80021D6C AFB10114 */  sw         $s1, 0x114($sp)
/* 22970 80021D70 AFB00110 */  sw         $s0, 0x110($sp)
/* 22974 80021D74 8E420000 */  lw         $v0, 0x0($s2)
/* 22978 80021D78 00A0A821 */  addu       $s5, $a1, $zero
/* 2297C 80021D7C 30420001 */  andi       $v0, $v0, 0x1
/* 22980 80021D80 14400003 */  bnez       $v0, .L80021D90
/* 22984 80021D84 00009821 */   addu      $s3, $zero, $zero
/* 22988 80021D88 0800878E */  j          .L80021E38
/* 2298C 80021D8C 24020005 */   addiu     $v0, $zero, 0x5
.L80021D90:
/* 22990 80021D90 0C008CF5 */  jal        func_800233D4
/* 22994 80021D94 02402021 */   addu      $a0, $s2, $zero
/* 22998 80021D98 14400027 */  bnez       $v0, .L80021E38
/* 2299C 80021D9C 00000000 */   nop
/* 229A0 80021DA0 92420064 */  lbu        $v0, 0x64($s2)
/* 229A4 80021DA4 0262102B */  sltu       $v0, $s3, $v0
/* 229A8 80021DA8 10400020 */  beqz       $v0, .L80021E2C
/* 229AC 80021DAC 00008821 */   addu      $s1, $zero, $zero
/* 229B0 80021DB0 27B40010 */  addiu      $s4, $sp, 0x10
/* 229B4 80021DB4 02402021 */  addu       $a0, $s2, $zero
.L80021DB8:
/* 229B8 80021DB8 323000FF */  andi       $s0, $s1, 0xFF
/* 229BC 80021DBC 27A50010 */  addiu      $a1, $sp, 0x10
/* 229C0 80021DC0 00003021 */  addu       $a2, $zero, $zero
/* 229C4 80021DC4 0C008D23 */  jal        func_8002348C
/* 229C8 80021DC8 02003821 */   addu      $a3, $s0, $zero
/* 229CC 80021DCC 1440001A */  bnez       $v0, .L80021E38
/* 229D0 80021DD0 00000000 */   nop
/* 229D4 80021DD4 16000002 */  bnez       $s0, .L80021DE0
/* 229D8 80021DD8 24020001 */   addiu     $v0, $zero, 0x1
/* 229DC 80021DDC 8E420060 */  lw         $v0, 0x60($s2)
.L80021DE0:
/* 229E0 80021DE0 00402021 */  addu       $a0, $v0, $zero
/* 229E4 80021DE4 28820080 */  slti       $v0, $a0, 0x80
/* 229E8 80021DE8 1040000A */  beqz       $v0, .L80021E14
/* 229EC 80021DEC 00041040 */   sll       $v0, $a0, 1
/* 229F0 80021DF0 00541821 */  addu       $v1, $v0, $s4
.L80021DF4:
/* 229F4 80021DF4 94620000 */  lhu        $v0, 0x0($v1)
/* 229F8 80021DF8 24840001 */  addiu      $a0, $a0, 0x1
/* 229FC 80021DFC 38420003 */  xori       $v0, $v0, 0x3
/* 22A00 80021E00 2C420001 */  sltiu      $v0, $v0, 0x1
/* 22A04 80021E04 02629821 */  addu       $s3, $s3, $v0
/* 22A08 80021E08 28820080 */  slti       $v0, $a0, 0x80
/* 22A0C 80021E0C 1440FFF9 */  bnez       $v0, .L80021DF4
/* 22A10 80021E10 24630002 */   addiu     $v1, $v1, 0x2
.L80021E14:
/* 22A14 80021E14 92430064 */  lbu        $v1, 0x64($s2)
/* 22A18 80021E18 26310001 */  addiu      $s1, $s1, 0x1
/* 22A1C 80021E1C 322200FF */  andi       $v0, $s1, 0xFF
/* 22A20 80021E20 0043102B */  sltu       $v0, $v0, $v1
/* 22A24 80021E24 5440FFE4 */  bnel       $v0, $zero, .L80021DB8
/* 22A28 80021E28 02402021 */   addu      $a0, $s2, $zero
.L80021E2C:
/* 22A2C 80021E2C 00131200 */  sll        $v0, $s3, 8
/* 22A30 80021E30 AEA20000 */  sw         $v0, 0x0($s5)
/* 22A34 80021E34 00001021 */  addu       $v0, $zero, $zero
.L80021E38:
/* 22A38 80021E38 8FBF0128 */  lw         $ra, 0x128($sp)
/* 22A3C 80021E3C 8FB50124 */  lw         $s5, 0x124($sp)
/* 22A40 80021E40 8FB40120 */  lw         $s4, 0x120($sp)
/* 22A44 80021E44 8FB3011C */  lw         $s3, 0x11C($sp)
/* 22A48 80021E48 8FB20118 */  lw         $s2, 0x118($sp)
/* 22A4C 80021E4C 8FB10114 */  lw         $s1, 0x114($sp)
/* 22A50 80021E50 8FB00110 */  lw         $s0, 0x110($sp)
/* 22A54 80021E54 03E00008 */  jr         $ra
/* 22A58 80021E58 27BD0130 */   addiu     $sp, $sp, 0x130
/* 22A5C 80021E5C 00000000 */  nop
