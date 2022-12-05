.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80018070
/* 18C70 80018070 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 18C74 80018074 AFB40030 */  sw         $s4, 0x30($sp)
/* 18C78 80018078 00A0A021 */  addu       $s4, $a1, $zero
/* 18C7C 8001807C AFB3002C */  sw         $s3, 0x2C($sp)
/* 18C80 80018080 00C09821 */  addu       $s3, $a2, $zero
/* 18C84 80018084 AFB50034 */  sw         $s5, 0x34($sp)
/* 18C88 80018088 00E0A821 */  addu       $s5, $a3, $zero
/* 18C8C 8001808C 8FA60050 */  lw         $a2, 0x50($sp)
/* 18C90 80018090 3C030200 */  lui        $v1, (0x20006C0 >> 16)
/* 18C94 80018094 346306C0 */  ori        $v1, $v1, (0x20006C0 & 0xFFFF)
/* 18C98 80018098 3C050200 */  lui        $a1, (0x2000800 >> 16)
/* 18C9C 8001809C 34A50800 */  ori        $a1, $a1, (0x2000800 & 0xFFFF)
/* 18CA0 800180A0 AFB20028 */  sw         $s2, 0x28($sp)
/* 18CA4 800180A4 00809021 */  addu       $s2, $a0, $zero
/* 18CA8 800180A8 AFBF0038 */  sw         $ra, 0x38($sp)
/* 18CAC 800180AC AFB10024 */  sw         $s1, 0x24($sp)
/* 18CB0 800180B0 AFB00020 */  sw         $s0, 0x20($sp)
/* 18CB4 800180B4 8E44001C */  lw         $a0, 0x1C($s2)
/* 18CB8 800180B8 00C01021 */  addu       $v0, $a2, $zero
/* 18CBC 800180BC 24C60008 */  addiu      $a2, $a2, 0x8
/* 18CC0 800180C0 AC430000 */  sw         $v1, 0x0($v0)
/* 18CC4 800180C4 00131840 */  sll        $v1, $s3, 1
/* 18CC8 800180C8 AC430004 */  sw         $v1, 0x4($v0)
/* 18CCC 800180CC 00C01021 */  addu       $v0, $a2, $zero
/* 18CD0 800180D0 AC450000 */  sw         $a1, 0x0($v0)
/* 18CD4 800180D4 AC430004 */  sw         $v1, 0x4($v0)
/* 18CD8 800180D8 8E420014 */  lw         $v0, 0x14($s2)
/* 18CDC 800180DC 00008821 */  addu       $s1, $zero, $zero
/* 18CE0 800180E0 18400010 */  blez       $v0, .L80018124
/* 18CE4 800180E4 24C60008 */   addiu     $a2, $a2, 0x8
/* 18CE8 800180E8 00808021 */  addu       $s0, $a0, $zero
.L800180EC:
/* 18CEC 800180EC 8E020000 */  lw         $v0, 0x0($s0)
/* 18CF0 800180F0 AFA60010 */  sw         $a2, 0x10($sp)
/* 18CF4 800180F4 8E040000 */  lw         $a0, 0x0($s0)
/* 18CF8 800180F8 26100004 */  addiu      $s0, $s0, 0x4
/* 18CFC 800180FC 02802821 */  addu       $a1, $s4, $zero
/* 18D00 80018100 8C420004 */  lw         $v0, 0x4($v0)
/* 18D04 80018104 02603021 */  addu       $a2, $s3, $zero
/* 18D08 80018108 0040F809 */  jalr       $v0
/* 18D0C 8001810C 02A03821 */   addu      $a3, $s5, $zero
/* 18D10 80018110 8E430014 */  lw         $v1, 0x14($s2)
/* 18D14 80018114 26310001 */  addiu      $s1, $s1, 0x1
/* 18D18 80018118 0223182A */  slt        $v1, $s1, $v1
/* 18D1C 8001811C 1460FFF3 */  bnez       $v1, .L800180EC
/* 18D20 80018120 00403021 */   addu      $a2, $v0, $zero
.L80018124:
/* 18D24 80018124 00C01021 */  addu       $v0, $a2, $zero
/* 18D28 80018128 8FBF0038 */  lw         $ra, 0x38($sp)
/* 18D2C 8001812C 8FB50034 */  lw         $s5, 0x34($sp)
/* 18D30 80018130 8FB40030 */  lw         $s4, 0x30($sp)
/* 18D34 80018134 8FB3002C */  lw         $s3, 0x2C($sp)
/* 18D38 80018138 8FB20028 */  lw         $s2, 0x28($sp)
/* 18D3C 8001813C 8FB10024 */  lw         $s1, 0x24($sp)
/* 18D40 80018140 8FB00020 */  lw         $s0, 0x20($sp)
/* 18D44 80018144 03E00008 */  jr         $ra
/* 18D48 80018148 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8001814C
/* 18D4C 8001814C 8C87001C */  lw         $a3, 0x1C($a0)
/* 18D50 80018150 24020002 */  addiu      $v0, $zero, 0x2
/* 18D54 80018154 14A20007 */  bne        $a1, $v0, .L80018174
/* 18D58 80018158 00000000 */   nop
/* 18D5C 8001815C 8C820014 */  lw         $v0, 0x14($a0)
/* 18D60 80018160 24430001 */  addiu      $v1, $v0, 0x1
/* 18D64 80018164 00021080 */  sll        $v0, $v0, 2
/* 18D68 80018168 00471021 */  addu       $v0, $v0, $a3
/* 18D6C 8001816C AC830014 */  sw         $v1, 0x14($a0)
/* 18D70 80018170 AC460000 */  sw         $a2, 0x0($v0)
.L80018174:
/* 18D74 80018174 03E00008 */  jr         $ra
/* 18D78 80018178 00001021 */   addu      $v0, $zero, $zero
/* 18D7C 8001817C 00000000 */  nop
