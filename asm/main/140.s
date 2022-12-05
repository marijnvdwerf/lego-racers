.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000C330
/* CF30 8000C330 24070001 */  addiu      $a3, $zero, 0x1
/* CF34 8000C334 90820000 */  lbu        $v0, 0x0($a0)
/* CF38 8000C338 00872021 */  addu       $a0, $a0, $a3
/* CF3C 8000C33C 240B0012 */  addiu      $t3, $zero, 0x12
/* CF40 8000C340 240A0008 */  addiu      $t2, $zero, 0x8
/* CF44 8000C344 A0A20000 */  sb         $v0, 0x0($a1)
/* CF48 8000C348 00A72821 */  addu       $a1, $a1, $a3
.L8000C34C:
/* CF4C 8000C34C 90890000 */  lbu        $t1, 0x0($a0)
/* CF50 8000C350 24840001 */  addiu      $a0, $a0, 0x1
/* CF54 8000C354 00004021 */  addu       $t0, $zero, $zero
/* CF58 8000C358 31220080 */  andi       $v0, $t1, 0x80
.L8000C35C:
/* CF5C 8000C35C 5040001F */  beql       $v0, $zero, .L8000C3DC
/* CF60 8000C360 24E70001 */   addiu     $a3, $a3, 0x1
/* CF64 8000C364 90860000 */  lbu        $a2, 0x0($a0)
/* CF68 8000C368 14C00004 */  bnez       $a2, .L8000C37C
/* CF6C 8000C36C 24840001 */   addiu     $a0, $a0, 0x1
/* CF70 8000C370 90820000 */  lbu        $v0, 0x0($a0)
/* CF74 8000C374 10400023 */  beqz       $v0, .L8000C404
/* CF78 8000C378 00000000 */   nop
.L8000C37C:
/* CF7C 8000C37C 90830000 */  lbu        $v1, 0x0($a0)
/* CF80 8000C380 24840001 */  addiu      $a0, $a0, 0x1
/* CF84 8000C384 30C200F0 */  andi       $v0, $a2, 0xF0
/* CF88 8000C388 30C6000F */  andi       $a2, $a2, 0xF
/* CF8C 8000C38C 00021100 */  sll        $v0, $v0, 4
/* CF90 8000C390 00431021 */  addu       $v0, $v0, $v1
/* CF94 8000C394 10C00003 */  beqz       $a2, .L8000C3A4
/* CF98 8000C398 00021823 */   negu      $v1, $v0
/* CF9C 8000C39C 080030EC */  j          .L8000C3B0
/* CFA0 8000C3A0 01663023 */   subu      $a2, $t3, $a2
.L8000C3A4:
/* CFA4 8000C3A4 90820000 */  lbu        $v0, 0x0($a0)
/* CFA8 8000C3A8 24840001 */  addiu      $a0, $a0, 0x1
/* CFAC 8000C3AC 24460012 */  addiu      $a2, $v0, 0x12
.L8000C3B0:
/* CFB0 8000C3B0 50C0000F */  beql       $a2, $zero, .L8000C3F0
/* CFB4 8000C3B4 00094840 */   sll       $t1, $t1, 1
.L8000C3B8:
/* CFB8 8000C3B8 24E70001 */  addiu      $a3, $a3, 0x1
/* CFBC 8000C3BC 00A31021 */  addu       $v0, $a1, $v1
/* CFC0 8000C3C0 90420000 */  lbu        $v0, 0x0($v0)
/* CFC4 8000C3C4 24C6FFFF */  addiu      $a2, $a2, -0x1
/* CFC8 8000C3C8 A0A20000 */  sb         $v0, 0x0($a1)
/* CFCC 8000C3CC 14C0FFFA */  bnez       $a2, .L8000C3B8
/* CFD0 8000C3D0 24A50001 */   addiu     $a1, $a1, 0x1
/* CFD4 8000C3D4 080030FC */  j          .L8000C3F0
/* CFD8 8000C3D8 00094840 */   sll       $t1, $t1, 1
.L8000C3DC:
/* CFDC 8000C3DC 90820000 */  lbu        $v0, 0x0($a0)
/* CFE0 8000C3E0 24840001 */  addiu      $a0, $a0, 0x1
/* CFE4 8000C3E4 A0A20000 */  sb         $v0, 0x0($a1)
/* CFE8 8000C3E8 24A50001 */  addiu      $a1, $a1, 0x1
/* CFEC 8000C3EC 00094840 */  sll        $t1, $t1, 1
.L8000C3F0:
/* CFF0 8000C3F0 25080001 */  addiu      $t0, $t0, 0x1
/* CFF4 8000C3F4 150AFFD9 */  bne        $t0, $t2, .L8000C35C
/* CFF8 8000C3F8 31220080 */   andi      $v0, $t1, 0x80
/* CFFC 8000C3FC 080030D3 */  j          .L8000C34C
/* D000 8000C400 00000000 */   nop
.L8000C404:
/* D004 8000C404 03E00008 */  jr         $ra
/* D008 8000C408 00E01021 */   addu      $v0, $a3, $zero
