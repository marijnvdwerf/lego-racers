.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80019E10
/* 1AA10 80019E10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1AA14 80019E14 8FA20038 */  lw         $v0, 0x38($sp)
/* 1AA18 80019E18 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1AA1C 80019E1C 00808821 */  addu       $s1, $a0, $zero
/* 1AA20 80019E20 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1AA24 80019E24 AFB00018 */  sw         $s0, 0x18($sp)
/* 1AA28 80019E28 8E240000 */  lw         $a0, 0x0($s1)
/* 1AA2C 80019E2C AFA20010 */  sw         $v0, 0x10($sp)
/* 1AA30 80019E30 8C820004 */  lw         $v0, 0x4($a0)
/* 1AA34 80019E34 0040F809 */  jalr       $v0
/* 1AA38 80019E38 00C08021 */   addu      $s0, $a2, $zero
/* 1AA3C 80019E3C 00401821 */  addu       $v1, $v0, $zero
/* 1AA40 80019E40 00602821 */  addu       $a1, $v1, $zero
/* 1AA44 80019E44 24630008 */  addiu      $v1, $v1, 0x8
/* 1AA48 80019E48 00603021 */  addu       $a2, $v1, $zero
/* 1AA4C 80019E4C 24630008 */  addiu      $v1, $v1, 0x8
/* 1AA50 80019E50 3C080440 */  lui        $t0, (0x4400580 >> 16)
/* 1AA54 80019E54 35080580 */  ori        $t0, $t0, (0x4400580 & 0xFFFF)
/* 1AA58 80019E58 00603821 */  addu       $a3, $v1, $zero
/* 1AA5C 80019E5C 24630008 */  addiu      $v1, $v1, 0x8
/* 1AA60 80019E60 3C040800 */  lui        $a0, (0x8000000 >> 16)
/* 1AA64 80019E64 00101040 */  sll        $v0, $s0, 1
/* 1AA68 80019E68 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 1AA6C 80019E6C ACA20004 */  sw         $v0, 0x4($a1)
/* 1AA70 80019E70 3C020D00 */  lui        $v0, (0xD000000 >> 16)
/* 1AA74 80019E74 00108080 */  sll        $s0, $s0, 2
/* 1AA78 80019E78 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* 1AA7C 80019E7C ACA40000 */  sw         $a0, 0x0($a1)
/* 1AA80 80019E80 ACC20000 */  sw         $v0, 0x0($a2)
/* 1AA84 80019E84 3C020600 */  lui        $v0, (0x6000000 >> 16)
/* 1AA88 80019E88 ACC80004 */  sw         $t0, 0x4($a2)
/* 1AA8C 80019E8C ACE40000 */  sw         $a0, 0x0($a3)
/* 1AA90 80019E90 ACF00004 */  sw         $s0, 0x4($a3)
/* 1AA94 80019E94 AC620000 */  sw         $v0, 0x0($v1)
/* 1AA98 80019E98 8E240014 */  lw         $a0, 0x14($s1)
/* 1AA9C 80019E9C 24620008 */  addiu      $v0, $v1, 0x8
/* 1AAA0 80019EA0 AC640004 */  sw         $a0, 0x4($v1)
/* 1AAA4 80019EA4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1AAA8 80019EA8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1AAAC 80019EAC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1AAB0 80019EB0 03E00008 */  jr         $ra
/* 1AAB4 80019EB4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80019EB8
/* 1AAB8 80019EB8 24020001 */  addiu      $v0, $zero, 0x1
/* 1AABC 80019EBC 10A20005 */  beq        $a1, $v0, .L80019ED4
/* 1AAC0 80019EC0 24020006 */   addiu     $v0, $zero, 0x6
/* 1AAC4 80019EC4 50A20004 */  beql       $a1, $v0, .L80019ED8
/* 1AAC8 80019EC8 AC860014 */   sw        $a2, 0x14($a0)
/* 1AACC 80019ECC 080067B6 */  j          .L80019ED8
/* 1AAD0 80019ED0 00000000 */   nop
.L80019ED4:
/* 1AAD4 80019ED4 AC860000 */  sw         $a2, 0x0($a0)
.L80019ED8:
/* 1AAD8 80019ED8 03E00008 */  jr         $ra
/* 1AADC 80019EDC 00001021 */   addu      $v0, $zero, $zero

glabel func_80019EE0
/* 1AAE0 80019EE0 3C028003 */  lui        $v0, %hi(D_80030FA0)
/* 1AAE4 80019EE4 8C420FA0 */  lw         $v0, %lo(D_80030FA0)($v0)
/* 1AAE8 80019EE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AAEC 80019EEC 14400004 */  bnez       $v0, .L80019F00
/* 1AAF0 80019EF0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 1AAF4 80019EF4 3C018003 */  lui        $at, %hi(D_80030FA0)
/* 1AAF8 80019EF8 0C006818 */  jal        func_8001A060
/* 1AAFC 80019EFC AC240FA0 */   sw        $a0, %lo(D_80030FA0)($at)
.L80019F00:
/* 1AB00 80019F00 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1AB04 80019F04 03E00008 */  jr         $ra
/* 1AB08 80019F08 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80019F0C
/* 1AB0C 80019F0C 3C028003 */  lui        $v0, %hi(D_80030FA0)
/* 1AB10 80019F10 8C420FA0 */  lw         $v0, %lo(D_80030FA0)($v0)
/* 1AB14 80019F14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1AB18 80019F18 10400005 */  beqz       $v0, .L80019F30
/* 1AB1C 80019F1C AFBF0010 */   sw        $ra, 0x10($sp)
/* 1AB20 80019F20 0C0069A8 */  jal        func_8001A6A0
/* 1AB24 80019F24 00000000 */   nop
/* 1AB28 80019F28 3C018003 */  lui        $at, %hi(D_80030FA0)
/* 1AB2C 80019F2C AC200FA0 */  sw         $zero, %lo(D_80030FA0)($at)
.L80019F30:
/* 1AB30 80019F30 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1AB34 80019F34 03E00008 */  jr         $ra
/* 1AB38 80019F38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel alLink
/* 1AB3C 80019F3C 8CA20000 */  lw         $v0, 0x0($a1)
/* 1AB40 80019F40 AC850004 */  sw         $a1, 0x4($a0)
/* 1AB44 80019F44 AC820000 */  sw         $v0, 0x0($a0)
/* 1AB48 80019F48 8CA20000 */  lw         $v0, 0x0($a1)
/* 1AB4C 80019F4C 54400001 */  bnel       $v0, $zero, .L80019F54
/* 1AB50 80019F50 AC440004 */   sw        $a0, 0x4($v0)
.L80019F54:
/* 1AB54 80019F54 03E00008 */  jr         $ra
/* 1AB58 80019F58 ACA40000 */   sw        $a0, 0x0($a1)

glabel alUnlink
/* 1AB5C 80019F5C 8C830000 */  lw         $v1, 0x0($a0)
/* 1AB60 80019F60 10600003 */  beqz       $v1, .L80019F70
/* 1AB64 80019F64 00000000 */   nop
/* 1AB68 80019F68 8C820004 */  lw         $v0, 0x4($a0)
/* 1AB6C 80019F6C AC620004 */  sw         $v0, 0x4($v1)
.L80019F70:
/* 1AB70 80019F70 8C830004 */  lw         $v1, 0x4($a0)
/* 1AB74 80019F74 10600003 */  beqz       $v1, .L80019F84
/* 1AB78 80019F78 00000000 */   nop
/* 1AB7C 80019F7C 8C820000 */  lw         $v0, 0x0($a0)
/* 1AB80 80019F80 AC620000 */  sw         $v0, 0x0($v1)
.L80019F84:
/* 1AB84 80019F84 03E00008 */  jr         $ra
/* 1AB88 80019F88 00000000 */   nop
/* 1AB8C 80019F8C 00000000 */  nop
