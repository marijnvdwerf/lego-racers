.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80116B70
/* CCF30 80116B70 00801021 */  addu       $v0, $a0, $zero
/* CCF34 80116B74 AC400000 */  sw         $zero, 0x0($v0)
/* CCF38 80116B78 AC400004 */  sw         $zero, 0x4($v0)
/* CCF3C 80116B7C AC400008 */  sw         $zero, 0x8($v0)
/* CCF40 80116B80 AC40000C */  sw         $zero, 0xC($v0)
/* CCF44 80116B84 AC400010 */  sw         $zero, 0x10($v0)
/* CCF48 80116B88 AC400014 */  sw         $zero, 0x14($v0)
/* CCF4C 80116B8C AC400018 */  sw         $zero, 0x18($v0)
/* CCF50 80116B90 AC40001C */  sw         $zero, 0x1C($v0)
/* CCF54 80116B94 AC400020 */  sw         $zero, 0x20($v0)
/* CCF58 80116B98 AC400024 */  sw         $zero, 0x24($v0)
/* CCF5C 80116B9C 03E00008 */  jr         $ra
/* CCF60 80116BA0 AC400028 */   sw        $zero, 0x28($v0)

glabel func_race_80116BA4
/* CCF64 80116BA4 24020001 */  addiu      $v0, $zero, 0x1
/* CCF68 80116BA8 AC850000 */  sw         $a1, 0x0($a0)
/* CCF6C 80116BAC 8CC30000 */  lw         $v1, 0x0($a2)
/* CCF70 80116BB0 8CC70004 */  lw         $a3, 0x4($a2)
/* CCF74 80116BB4 8CC80008 */  lw         $t0, 0x8($a2)
/* CCF78 80116BB8 8CC9000C */  lw         $t1, 0xC($a2)
/* CCF7C 80116BBC AC830004 */  sw         $v1, 0x4($a0)
/* CCF80 80116BC0 AC870008 */  sw         $a3, 0x8($a0)
/* CCF84 80116BC4 AC88000C */  sw         $t0, 0xC($a0)
/* CCF88 80116BC8 AC890010 */  sw         $t1, 0x10($a0)
/* CCF8C 80116BCC 8CC30010 */  lw         $v1, 0x10($a2)
/* CCF90 80116BD0 8CC70014 */  lw         $a3, 0x14($a2)
/* CCF94 80116BD4 AC830014 */  sw         $v1, 0x14($a0)
/* CCF98 80116BD8 AC870018 */  sw         $a3, 0x18($a0)
/* CCF9C 80116BDC AC80001C */  sw         $zero, 0x1C($a0)
/* CCFA0 80116BE0 AC800020 */  sw         $zero, 0x20($a0)
/* CCFA4 80116BE4 AC800028 */  sw         $zero, 0x28($a0)
/* CCFA8 80116BE8 03E00008 */  jr         $ra
/* CCFAC 80116BEC AC820024 */   sw        $v0, 0x24($a0)

glabel func_race_80116BF0
/* CCFB0 80116BF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CCFB4 80116BF4 AFB00010 */  sw         $s0, 0x10($sp)
/* CCFB8 80116BF8 00808021 */  addu       $s0, $a0, $zero
/* CCFBC 80116BFC AFBF0014 */  sw         $ra, 0x14($sp)
/* CCFC0 80116C00 8E020024 */  lw         $v0, 0x24($s0)
/* CCFC4 80116C04 10400025 */  beqz       $v0, .Lrace_80116C9C
/* CCFC8 80116C08 00C02821 */   addu      $a1, $a2, $zero
/* CCFCC 80116C0C 8E020020 */  lw         $v0, 0x20($s0)
/* CCFD0 80116C10 24420001 */  addiu      $v0, $v0, 0x1
/* CCFD4 80116C14 AE020020 */  sw         $v0, 0x20($s0)
/* CCFD8 80116C18 ACA2000C */  sw         $v0, 0xC($a1)
/* CCFDC 80116C1C 8E020008 */  lw         $v0, 0x8($s0)
/* CCFE0 80116C20 30420002 */  andi       $v0, $v0, 0x2
/* CCFE4 80116C24 10400007 */  beqz       $v0, .Lrace_80116C44
/* CCFE8 80116C28 00000000 */   nop
/* CCFEC 80116C2C 8E020020 */  lw         $v0, 0x20($s0)
/* CCFF0 80116C30 8E030010 */  lw         $v1, 0x10($s0)
/* CCFF4 80116C34 0043102B */  sltu       $v0, $v0, $v1
/* CCFF8 80116C38 14400018 */  bnez       $v0, .Lrace_80116C9C
/* CCFFC 80116C3C 00000000 */   nop
/* CD000 80116C40 AE000020 */  sw         $zero, 0x20($s0)
.Lrace_80116C44:
/* CD004 80116C44 8E02001C */  lw         $v0, 0x1C($s0)
/* CD008 80116C48 24420001 */  addiu      $v0, $v0, 0x1
/* CD00C 80116C4C AE02001C */  sw         $v0, 0x1C($s0)
/* CD010 80116C50 ACA20008 */  sw         $v0, 0x8($a1)
/* CD014 80116C54 8E020008 */  lw         $v0, 0x8($s0)
/* CD018 80116C58 ACA20004 */  sw         $v0, 0x4($a1)
/* CD01C 80116C5C 8E020000 */  lw         $v0, 0x0($s0)
/* CD020 80116C60 8C430000 */  lw         $v1, 0x0($v0)
/* CD024 80116C64 84640008 */  lh         $a0, 0x8($v1)
/* CD028 80116C68 00442021 */  addu       $a0, $v0, $a0
/* CD02C 80116C6C 8C62000C */  lw         $v0, 0xC($v1)
/* CD030 80116C70 0040F809 */  jalr       $v0
/* CD034 80116C74 00000000 */   nop
/* CD038 80116C78 8E020008 */  lw         $v0, 0x8($s0)
/* CD03C 80116C7C 30420001 */  andi       $v0, $v0, 0x1
/* CD040 80116C80 14400006 */  bnez       $v0, .Lrace_80116C9C
/* CD044 80116C84 00000000 */   nop
/* CD048 80116C88 8E02001C */  lw         $v0, 0x1C($s0)
/* CD04C 80116C8C 8E03000C */  lw         $v1, 0xC($s0)
/* CD050 80116C90 0043102B */  sltu       $v0, $v0, $v1
/* CD054 80116C94 50400001 */  beql       $v0, $zero, .Lrace_80116C9C
/* CD058 80116C98 AE000024 */   sw        $zero, 0x24($s0)
.Lrace_80116C9C:
/* CD05C 80116C9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CD060 80116CA0 8FB00010 */  lw         $s0, 0x10($sp)
/* CD064 80116CA4 03E00008 */  jr         $ra
/* CD068 80116CA8 27BD0018 */   addiu     $sp, $sp, 0x18
