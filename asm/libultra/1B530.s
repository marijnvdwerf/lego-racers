.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osContStartQuery
/* 1B530 8001A930 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B534 8001A934 AFB00010 */  sw         $s0, 0x10($sp)
/* 1B538 8001A938 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B53C 8001A93C 0C007C8D */  jal        func_8001F234
/* 1B540 8001A940 00808021 */   addu      $s0, $a0, $zero
/* 1B544 8001A944 3C028004 */  lui        $v0, %hi(D_8003A580)
/* 1B548 8001A948 9042A580 */  lbu        $v0, %lo(D_8003A580)($v0)
/* 1B54C 8001A94C 1040000B */  beqz       $v0, .L8001A97C
/* 1B550 8001A950 00000000 */   nop
/* 1B554 8001A954 0C006B80 */  jal        func_8001AE00
/* 1B558 8001A958 00002021 */   addu      $a0, $zero, $zero
/* 1B55C 8001A95C 3C058004 */  lui        $a1, %hi(D_8003A540)
/* 1B560 8001A960 24A5A540 */  addiu      $a1, $a1, %lo(D_8003A540)
/* 1B564 8001A964 0C007C4C */  jal        func_8001F130
/* 1B568 8001A968 24040001 */   addiu     $a0, $zero, 0x1
/* 1B56C 8001A96C 02002021 */  addu       $a0, $s0, $zero
/* 1B570 8001A970 00002821 */  addu       $a1, $zero, $zero
/* 1B574 8001A974 0C007720 */  jal        osRecvMesg
/* 1B578 8001A978 24060001 */   addiu     $a2, $zero, 0x1
.L8001A97C:
/* 1B57C 8001A97C 3C058004 */  lui        $a1, %hi(D_8003A540)
/* 1B580 8001A980 24A5A540 */  addiu      $a1, $a1, %lo(D_8003A540)
/* 1B584 8001A984 0C007C4C */  jal        func_8001F130
/* 1B588 8001A988 00002021 */   addu      $a0, $zero, $zero
/* 1B58C 8001A98C 3C018004 */  lui        $at, %hi(D_8003A580)
/* 1B590 8001A990 A020A580 */  sb         $zero, %lo(D_8003A580)($at)
/* 1B594 8001A994 0C007CA8 */  jal        func_8001F2A0
/* 1B598 8001A998 00408021 */   addu      $s0, $v0, $zero
/* 1B59C 8001A99C 02001021 */  addu       $v0, $s0, $zero
/* 1B5A0 8001A9A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B5A4 8001A9A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1B5A8 8001A9A8 03E00008 */  jr         $ra
/* 1B5AC 8001A9AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel osContGetQuery
/* 1B5B0 8001A9B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1B5B4 8001A9B4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1B5B8 8001A9B8 00802821 */  addu       $a1, $a0, $zero
/* 1B5BC 8001A9BC 0C006B53 */  jal        func_8001AD4C
/* 1B5C0 8001A9C0 27A40010 */   addiu     $a0, $sp, 0x10
/* 1B5C4 8001A9C4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1B5C8 8001A9C8 03E00008 */  jr         $ra
/* 1B5CC 8001A9CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel osContStartReadData
/* 1B5D0 8001A9D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B5D4 8001A9D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1B5D8 8001A9D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B5DC 8001A9DC 0C007C8D */  jal        func_8001F234
/* 1B5E0 8001A9E0 00808021 */   addu      $s0, $a0, $zero
/* 1B5E4 8001A9E4 3C038004 */  lui        $v1, %hi(D_8003A580)
/* 1B5E8 8001A9E8 9063A580 */  lbu        $v1, %lo(D_8003A580)($v1)
/* 1B5EC 8001A9EC 24020001 */  addiu      $v0, $zero, 0x1
/* 1B5F0 8001A9F0 1062000B */  beq        $v1, $v0, .L8001AA20
/* 1B5F4 8001A9F4 00000000 */   nop
/* 1B5F8 8001A9F8 0C006ABD */  jal        func_8001AAF4
/* 1B5FC 8001A9FC 00000000 */   nop
/* 1B600 8001AA00 3C058004 */  lui        $a1, %hi(D_8003A540)
/* 1B604 8001AA04 24A5A540 */  addiu      $a1, $a1, %lo(D_8003A540)
/* 1B608 8001AA08 0C007C4C */  jal        func_8001F130
/* 1B60C 8001AA0C 24040001 */   addiu     $a0, $zero, 0x1
/* 1B610 8001AA10 02002021 */  addu       $a0, $s0, $zero
/* 1B614 8001AA14 00002821 */  addu       $a1, $zero, $zero
/* 1B618 8001AA18 0C007720 */  jal        osRecvMesg
/* 1B61C 8001AA1C 24060001 */   addiu     $a2, $zero, 0x1
.L8001AA20:
/* 1B620 8001AA20 3C058004 */  lui        $a1, %hi(D_8003A540)
/* 1B624 8001AA24 24A5A540 */  addiu      $a1, $a1, %lo(D_8003A540)
/* 1B628 8001AA28 0C007C4C */  jal        func_8001F130
/* 1B62C 8001AA2C 00002021 */   addu      $a0, $zero, $zero
/* 1B630 8001AA30 24030001 */  addiu      $v1, $zero, 0x1
/* 1B634 8001AA34 3C018004 */  lui        $at, %hi(D_8003A580)
/* 1B638 8001AA38 A023A580 */  sb         $v1, %lo(D_8003A580)($at)
/* 1B63C 8001AA3C 0C007CA8 */  jal        func_8001F2A0
/* 1B640 8001AA40 00408021 */   addu      $s0, $v0, $zero
/* 1B644 8001AA44 02001021 */  addu       $v0, $s0, $zero
/* 1B648 8001AA48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B64C 8001AA4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1B650 8001AA50 03E00008 */  jr         $ra
/* 1B654 8001AA54 27BD0018 */   addiu     $sp, $sp, 0x18

glabel osContGetReadData
/* 1B658 8001AA58 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 1B65C 8001AA5C 00804821 */  addu       $t1, $a0, $zero
/* 1B660 8001AA60 3C028004 */  lui        $v0, %hi(D_8003A53C)
/* 1B664 8001AA64 9042A53C */  lbu        $v0, %lo(D_8003A53C)($v0)
/* 1B668 8001AA68 3C088004 */  lui        $t0, %hi(D_8003A540)
/* 1B66C 8001AA6C 2508A540 */  addiu      $t0, $t0, %lo(D_8003A540)
/* 1B670 8001AA70 1840001D */  blez       $v0, .L8001AAE8
/* 1B674 8001AA74 00003821 */   addu      $a3, $zero, $zero
/* 1B678 8001AA78 24860003 */  addiu      $a2, $a0, 0x3
.L8001AA7C:
/* 1B67C 8001AA7C 89020000 */  lwl        $v0, 0x0($t0)
/* 1B680 8001AA80 99020003 */  lwr        $v0, 0x3($t0)
/* 1B684 8001AA84 89030004 */  lwl        $v1, 0x4($t0)
/* 1B688 8001AA88 99030007 */  lwr        $v1, 0x7($t0)
/* 1B68C 8001AA8C ABA20000 */  swl        $v0, 0x0($sp)
/* 1B690 8001AA90 BBA20003 */  swr        $v0, 0x3($sp)
/* 1B694 8001AA94 ABA30004 */  swl        $v1, 0x4($sp)
/* 1B698 8001AA98 BBA30007 */  swr        $v1, 0x7($sp)
/* 1B69C 8001AA9C 93A20002 */  lbu        $v0, 0x2($sp)
/* 1B6A0 8001AAA0 304200C0 */  andi       $v0, $v0, 0xC0
/* 1B6A4 8001AAA4 00021102 */  srl        $v0, $v0, 4
/* 1B6A8 8001AAA8 14400007 */  bnez       $v0, .L8001AAC8
/* 1B6AC 8001AAAC A0C20001 */   sb        $v0, 0x1($a2)
/* 1B6B0 8001AAB0 97A20004 */  lhu        $v0, 0x4($sp)
/* 1B6B4 8001AAB4 A5220000 */  sh         $v0, 0x0($t1)
/* 1B6B8 8001AAB8 93A20006 */  lbu        $v0, 0x6($sp)
/* 1B6BC 8001AABC A0C2FFFF */  sb         $v0, -0x1($a2)
/* 1B6C0 8001AAC0 93A20007 */  lbu        $v0, 0x7($sp)
/* 1B6C4 8001AAC4 A0C20000 */  sb         $v0, 0x0($a2)
.L8001AAC8:
/* 1B6C8 8001AAC8 24E70001 */  addiu      $a3, $a3, 0x1
/* 1B6CC 8001AACC 25080008 */  addiu      $t0, $t0, 0x8
/* 1B6D0 8001AAD0 3C028004 */  lui        $v0, %hi(D_8003A53C)
/* 1B6D4 8001AAD4 9042A53C */  lbu        $v0, %lo(D_8003A53C)($v0)
/* 1B6D8 8001AAD8 24C60006 */  addiu      $a2, $a2, 0x6
/* 1B6DC 8001AADC 00E2102A */  slt        $v0, $a3, $v0
/* 1B6E0 8001AAE0 1440FFE6 */  bnez       $v0, .L8001AA7C
/* 1B6E4 8001AAE4 25290006 */   addiu     $t1, $t1, 0x6
.L8001AAE8:
/* 1B6E8 8001AAE8 27BD0010 */  addiu      $sp, $sp, 0x10
/* 1B6EC 8001AAEC 03E00008 */  jr         $ra
/* 1B6F0 8001AAF0 00000000 */   nop

glabel func_8001AAF4
/* 1B6F4 8001AAF4 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 1B6F8 8001AAF8 3C078004 */  lui        $a3, %hi(D_8003A540)
/* 1B6FC 8001AAFC 24E7A540 */  addiu      $a3, $a3, %lo(D_8003A540)
/* 1B700 8001AB00 2406000E */  addiu      $a2, $zero, 0xE
/* 1B704 8001AB04 24E20038 */  addiu      $v0, $a3, 0x38
.L8001AB08:
/* 1B708 8001AB08 AC400000 */  sw         $zero, 0x0($v0)
/* 1B70C 8001AB0C 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1B710 8001AB10 04C1FFFD */  bgez       $a2, .L8001AB08
/* 1B714 8001AB14 2442FFFC */   addiu     $v0, $v0, -0x4
/* 1B718 8001AB18 24020001 */  addiu      $v0, $zero, 0x1
/* 1B71C 8001AB1C 3C048004 */  lui        $a0, %hi(D_8003A53C)
/* 1B720 8001AB20 9084A53C */  lbu        $a0, %lo(D_8003A53C)($a0)
/* 1B724 8001AB24 00003021 */  addu       $a2, $zero, $zero
/* 1B728 8001AB28 3C018004 */  lui        $at, %hi(D_8003A57C)
/* 1B72C 8001AB2C AC22A57C */  sw         $v0, %lo(D_8003A57C)($at)
/* 1B730 8001AB30 240200FF */  addiu      $v0, $zero, 0xFF
/* 1B734 8001AB34 24030001 */  addiu      $v1, $zero, 0x1
/* 1B738 8001AB38 A3A20000 */  sb         $v0, 0x0($sp)
/* 1B73C 8001AB3C 24020004 */  addiu      $v0, $zero, 0x4
/* 1B740 8001AB40 A3A20002 */  sb         $v0, 0x2($sp)
/* 1B744 8001AB44 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 1B748 8001AB48 A7A20004 */  sh         $v0, 0x4($sp)
/* 1B74C 8001AB4C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1B750 8001AB50 A3A30001 */  sb         $v1, 0x1($sp)
/* 1B754 8001AB54 A3A30003 */  sb         $v1, 0x3($sp)
/* 1B758 8001AB58 A3A20006 */  sb         $v0, 0x6($sp)
/* 1B75C 8001AB5C 1880000F */  blez       $a0, .L8001AB9C
/* 1B760 8001AB60 A3A20007 */   sb        $v0, 0x7($sp)
.L8001AB64:
/* 1B764 8001AB64 8BA20000 */  lwl        $v0, 0x0($sp)
/* 1B768 8001AB68 9BA20003 */  lwr        $v0, 0x3($sp)
/* 1B76C 8001AB6C 8BA30004 */  lwl        $v1, 0x4($sp)
/* 1B770 8001AB70 9BA30007 */  lwr        $v1, 0x7($sp)
/* 1B774 8001AB74 A8E20000 */  swl        $v0, 0x0($a3)
/* 1B778 8001AB78 B8E20003 */  swr        $v0, 0x3($a3)
/* 1B77C 8001AB7C A8E30004 */  swl        $v1, 0x4($a3)
/* 1B780 8001AB80 B8E30007 */  swr        $v1, 0x7($a3)
/* 1B784 8001AB84 3C028004 */  lui        $v0, %hi(D_8003A53C)
/* 1B788 8001AB88 9042A53C */  lbu        $v0, %lo(D_8003A53C)($v0)
/* 1B78C 8001AB8C 24C60001 */  addiu      $a2, $a2, 0x1
/* 1B790 8001AB90 00C2102A */  slt        $v0, $a2, $v0
/* 1B794 8001AB94 1440FFF3 */  bnez       $v0, .L8001AB64
/* 1B798 8001AB98 24E70008 */   addiu     $a3, $a3, 0x8
.L8001AB9C:
/* 1B79C 8001AB9C 240200FE */  addiu      $v0, $zero, 0xFE
/* 1B7A0 8001ABA0 A0E20000 */  sb         $v0, 0x0($a3)
/* 1B7A4 8001ABA4 03E00008 */  jr         $ra
/* 1B7A8 8001ABA8 27BD0010 */   addiu     $sp, $sp, 0x10
/* 1B7AC 8001ABAC 00000000 */  nop
