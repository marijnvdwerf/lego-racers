.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80020B90
/* 21790 80020B90 00001821 */  addu       $v1, $zero, $zero
/* 21794 80020B94 24050400 */  addiu      $a1, $zero, 0x400
/* 21798 80020B98 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* 2179C 80020B9C 00851024 */  and        $v0, $a0, $a1
.L80020BA0:
/* 217A0 80020BA0 10400006 */  beqz       $v0, .L80020BBC
/* 217A4 80020BA4 00031840 */   sll       $v1, $v1, 1
/* 217A8 80020BA8 30620020 */  andi       $v0, $v1, 0x20
/* 217AC 80020BAC 50400006 */  beql       $v0, $zero, .L80020BC8
/* 217B0 80020BB0 24630001 */   addiu     $v1, $v1, 0x1
/* 217B4 80020BB4 080082F2 */  j          .L80020BC8
/* 217B8 80020BB8 38630014 */   xori      $v1, $v1, 0x14
.L80020BBC:
/* 217BC 80020BBC 30620020 */  andi       $v0, $v1, 0x20
/* 217C0 80020BC0 54400001 */  bnel       $v0, $zero, .L80020BC8
/* 217C4 80020BC4 38630015 */   xori      $v1, $v1, 0x15
.L80020BC8:
/* 217C8 80020BC8 00052842 */  srl        $a1, $a1, 1
/* 217CC 80020BCC 14A0FFF4 */  bnez       $a1, .L80020BA0
/* 217D0 80020BD0 00851024 */   and       $v0, $a0, $a1
/* 217D4 80020BD4 24050005 */  addiu      $a1, $zero, 0x5
/* 217D8 80020BD8 00031840 */  sll        $v1, $v1, 1
.L80020BDC:
/* 217DC 80020BDC 30620020 */  andi       $v0, $v1, 0x20
/* 217E0 80020BE0 54400001 */  bnel       $v0, $zero, .L80020BE8
/* 217E4 80020BE4 38630015 */   xori      $v1, $v1, 0x15
.L80020BE8:
/* 217E8 80020BE8 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 217EC 80020BEC 54A0FFFB */  bnel       $a1, $zero, .L80020BDC
/* 217F0 80020BF0 00031840 */   sll       $v1, $v1, 1
/* 217F4 80020BF4 03E00008 */  jr         $ra
/* 217F8 80020BF8 3062001F */   andi      $v0, $v1, 0x1F

glabel func_80020BFC
/* 217FC 80020BFC 00001821 */  addu       $v1, $zero, $zero
/* 21800 80020C00 24060020 */  addiu      $a2, $zero, 0x20
.L80020C04:
/* 21804 80020C04 24050080 */  addiu      $a1, $zero, 0x80
/* 21808 80020C08 90870000 */  lbu        $a3, 0x0($a0)
/* 2180C 80020C0C 00E51024 */  and        $v0, $a3, $a1
.L80020C10:
/* 21810 80020C10 10400006 */  beqz       $v0, .L80020C2C
/* 21814 80020C14 00031840 */   sll       $v1, $v1, 1
/* 21818 80020C18 30620100 */  andi       $v0, $v1, 0x100
/* 2181C 80020C1C 50400006 */  beql       $v0, $zero, .L80020C38
/* 21820 80020C20 24630001 */   addiu     $v1, $v1, 0x1
/* 21824 80020C24 0800830E */  j          .L80020C38
/* 21828 80020C28 38630084 */   xori      $v1, $v1, 0x84
.L80020C2C:
/* 2182C 80020C2C 30620100 */  andi       $v0, $v1, 0x100
/* 21830 80020C30 54400001 */  bnel       $v0, $zero, .L80020C38
/* 21834 80020C34 38630085 */   xori      $v1, $v1, 0x85
.L80020C38:
/* 21838 80020C38 00052842 */  srl        $a1, $a1, 1
/* 2183C 80020C3C 14A0FFF4 */  bnez       $a1, .L80020C10
/* 21840 80020C40 00E51024 */   and       $v0, $a3, $a1
/* 21844 80020C44 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 21848 80020C48 14C0FFEE */  bnez       $a2, .L80020C04
/* 2184C 80020C4C 24840001 */   addiu     $a0, $a0, 0x1
/* 21850 80020C50 00031840 */  sll        $v1, $v1, 1
.L80020C54:
/* 21854 80020C54 30620100 */  andi       $v0, $v1, 0x100
/* 21858 80020C58 54400001 */  bnel       $v0, $zero, .L80020C60
/* 2185C 80020C5C 38630085 */   xori      $v1, $v1, 0x85
.L80020C60:
/* 21860 80020C60 24C60001 */  addiu      $a2, $a2, 0x1
/* 21864 80020C64 2CC20008 */  sltiu      $v0, $a2, 0x8
/* 21868 80020C68 5440FFFA */  bnel       $v0, $zero, .L80020C54
/* 2186C 80020C6C 00031840 */   sll       $v1, $v1, 1
/* 21870 80020C70 03E00008 */  jr         $ra
/* 21874 80020C74 306200FF */   andi      $v0, $v1, 0xFF
/* 21878 80020C78 00000000 */  nop
/* 2187C 80020C7C 00000000 */  nop
