.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E0090
/* 96450 800E0090 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 96454 800E0094 AFB00010 */  sw         $s0, 0x10($sp)
/* 96458 800E0098 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9645C 800E009C 0C016038 */  jal        func_800580E0
/* 96460 800E00A0 00808021 */   addu      $s0, $a0, $zero
/* 96464 800E00A4 3C02800D */  lui        $v0, %hi(D_race_800CB5A0)
/* 96468 800E00A8 2442B5A0 */  addiu      $v0, $v0, %lo(D_race_800CB5A0)
/* 9646C 800E00AC 00002021 */  addu       $a0, $zero, $zero
/* 96470 800E00B0 02001821 */  addu       $v1, $s0, $zero
/* 96474 800E00B4 AE020024 */  sw         $v0, 0x24($s0)
.Lrace_800E00B8:
/* 96478 800E00B8 AC600090 */  sw         $zero, 0x90($v1)
/* 9647C 800E00BC 24840001 */  addiu      $a0, $a0, 0x1
/* 96480 800E00C0 2C820003 */  sltiu      $v0, $a0, 0x3
/* 96484 800E00C4 1440FFFC */  bnez       $v0, .Lrace_800E00B8
/* 96488 800E00C8 24630004 */   addiu     $v1, $v1, 0x4
/* 9648C 800E00CC 02001021 */  addu       $v0, $s0, $zero
/* 96490 800E00D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 96494 800E00D4 8FB00010 */  lw         $s0, 0x10($sp)
/* 96498 800E00D8 03E00008 */  jr         $ra
/* 9649C 800E00DC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E00E0
/* 964A0 800E00E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 964A4 800E00E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 964A8 800E00E8 00808021 */  addu       $s0, $a0, $zero
/* 964AC 800E00EC AFB10014 */  sw         $s1, 0x14($sp)
/* 964B0 800E00F0 00C08821 */  addu       $s1, $a2, $zero
/* 964B4 800E00F4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 964B8 800E00F8 0C016059 */  jal        func_80058164
/* 964BC 800E00FC 00E03021 */   addu      $a2, $a3, $zero
/* 964C0 800E0100 AE110090 */  sw         $s1, 0x90($s0)
/* 964C4 800E0104 8FBF0018 */  lw         $ra, 0x18($sp)
/* 964C8 800E0108 8FB10014 */  lw         $s1, 0x14($sp)
/* 964CC 800E010C 8FB00010 */  lw         $s0, 0x10($sp)
/* 964D0 800E0110 03E00008 */  jr         $ra
/* 964D4 800E0114 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E0118
/* 964D8 800E0118 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 964DC 800E011C AFBF0010 */  sw         $ra, 0x10($sp)
/* 964E0 800E0120 00002821 */  addu       $a1, $zero, $zero
/* 964E4 800E0124 00801821 */  addu       $v1, $a0, $zero
.Lrace_800E0128:
/* 964E8 800E0128 AC600090 */  sw         $zero, 0x90($v1)
/* 964EC 800E012C 24A50001 */  addiu      $a1, $a1, 0x1
/* 964F0 800E0130 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 964F4 800E0134 1440FFFC */  bnez       $v0, .Lrace_800E0128
/* 964F8 800E0138 24630004 */   addiu     $v1, $v1, 0x4
/* 964FC 800E013C 0C01607E */  jal        func_800581F8
/* 96500 800E0140 00000000 */   nop
/* 96504 800E0144 8FBF0010 */  lw         $ra, 0x10($sp)
/* 96508 800E0148 03E00008 */  jr         $ra
/* 9650C 800E014C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E0150
/* 96510 800E0150 00804021 */  addu       $t0, $a0, $zero
/* 96514 800E0154 00A04821 */  addu       $t1, $a1, $zero
/* 96518 800E0158 44871000 */  mtc1       $a3, $f2
/* 9651C 800E015C 00003821 */  addu       $a3, $zero, $zero
/* 96520 800E0160 01001821 */  addu       $v1, $t0, $zero
.Lrace_800E0164:
/* 96524 800E0164 8C620078 */  lw         $v0, 0x78($v1)
/* 96528 800E0168 1040001D */  beqz       $v0, .Lrace_800E01E0
/* 9652C 800E016C 00071080 */   sll       $v0, $a3, 2
/* 96530 800E0170 C4600084 */  lwc1       $f0, 0x84($v1)
/* 96534 800E0174 4600103C */  c.lt.s     $f2, $f0
/* 96538 800E0178 00000000 */  nop
/* 9653C 800E017C 45000013 */  bc1f       .Lrace_800E01CC
/* 96540 800E0180 24050002 */   addiu     $a1, $zero, 0x2
/* 96544 800E0184 00E5102B */  sltu       $v0, $a3, $a1
/* 96548 800E0188 10400015 */  beqz       $v0, .Lrace_800E01E0
/* 9654C 800E018C 00071080 */   sll       $v0, $a3, 2
.Lrace_800E0190:
/* 96550 800E0190 00052080 */  sll        $a0, $a1, 2
/* 96554 800E0194 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 96558 800E0198 00051880 */  sll        $v1, $a1, 2
/* 9655C 800E019C 01031821 */  addu       $v1, $t0, $v1
/* 96560 800E01A0 8C620078 */  lw         $v0, 0x78($v1)
/* 96564 800E01A4 01042021 */  addu       $a0, $t0, $a0
/* 96568 800E01A8 AC820078 */  sw         $v0, 0x78($a0)
/* 9656C 800E01AC 8C620090 */  lw         $v0, 0x90($v1)
/* 96570 800E01B0 AC820090 */  sw         $v0, 0x90($a0)
/* 96574 800E01B4 C4600084 */  lwc1       $f0, 0x84($v1)
/* 96578 800E01B8 00E5102B */  sltu       $v0, $a3, $a1
/* 9657C 800E01BC 1440FFF4 */  bnez       $v0, .Lrace_800E0190
/* 96580 800E01C0 E4800084 */   swc1      $f0, 0x84($a0)
/* 96584 800E01C4 08038078 */  j          .Lrace_800E01E0
/* 96588 800E01C8 00071080 */   sll       $v0, $a3, 2
.Lrace_800E01CC:
/* 9658C 800E01CC 24E70001 */  addiu      $a3, $a3, 0x1
/* 96590 800E01D0 2CE20002 */  sltiu      $v0, $a3, 0x2
/* 96594 800E01D4 1440FFE3 */  bnez       $v0, .Lrace_800E0164
/* 96598 800E01D8 24630004 */   addiu     $v1, $v1, 0x4
/* 9659C 800E01DC 00071080 */  sll        $v0, $a3, 2
.Lrace_800E01E0:
/* 965A0 800E01E0 01021021 */  addu       $v0, $t0, $v0
/* 965A4 800E01E4 AC490078 */  sw         $t1, 0x78($v0)
/* 965A8 800E01E8 AC460090 */  sw         $a2, 0x90($v0)
/* 965AC 800E01EC 03E00008 */  jr         $ra
/* 965B0 800E01F0 E4420084 */   swc1      $f2, 0x84($v0)

glabel func_race_800E01F4
/* 965B4 800E01F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 965B8 800E01F8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 965BC 800E01FC 8CA2012C */  lw         $v0, 0x12C($a1)
/* 965C0 800E0200 00801821 */  addu       $v1, $a0, $zero
/* 965C4 800E0204 84440120 */  lh         $a0, 0x120($v0)
/* 965C8 800E0208 8C420124 */  lw         $v0, 0x124($v0)
/* 965CC 800E020C 00A42021 */  addu       $a0, $a1, $a0
/* 965D0 800E0210 0040F809 */  jalr       $v0
/* 965D4 800E0214 00602821 */   addu      $a1, $v1, $zero
/* 965D8 800E0218 8FBF0010 */  lw         $ra, 0x10($sp)
/* 965DC 800E021C 03E00008 */  jr         $ra
/* 965E0 800E0220 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E0224
/* 965E4 800E0224 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 965E8 800E0228 AFB20018 */  sw         $s2, 0x18($sp)
/* 965EC 800E022C 00809021 */  addu       $s2, $a0, $zero
/* 965F0 800E0230 AFB10014 */  sw         $s1, 0x14($sp)
/* 965F4 800E0234 00008821 */  addu       $s1, $zero, $zero
/* 965F8 800E0238 AFB00010 */  sw         $s0, 0x10($sp)
/* 965FC 800E023C 02408021 */  addu       $s0, $s2, $zero
/* 96600 800E0240 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_800E0244:
/* 96604 800E0244 8E040090 */  lw         $a0, 0x90($s0)
/* 96608 800E0248 10800003 */  beqz       $a0, .Lrace_800E0258
/* 9660C 800E024C 26310001 */   addiu     $s1, $s1, 0x1
/* 96610 800E0250 0C0386D0 */  jal        func_race_800E1B40
/* 96614 800E0254 00000000 */   nop
.Lrace_800E0258:
/* 96618 800E0258 2E220003 */  sltiu      $v0, $s1, 0x3
/* 9661C 800E025C 1440FFF9 */  bnez       $v0, .Lrace_800E0244
/* 96620 800E0260 26100004 */   addiu     $s0, $s0, 0x4
/* 96624 800E0264 0C015A16 */  jal        func_80056858
/* 96628 800E0268 02402021 */   addu      $a0, $s2, $zero
/* 9662C 800E026C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 96630 800E0270 8FB20018 */  lw         $s2, 0x18($sp)
/* 96634 800E0274 8FB10014 */  lw         $s1, 0x14($sp)
/* 96638 800E0278 8FB00010 */  lw         $s0, 0x10($sp)
/* 9663C 800E027C 03E00008 */  jr         $ra
/* 96640 800E0280 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E0284
/* 96644 800E0284 00052880 */  sll        $a1, $a1, 2
/* 96648 800E0288 00852021 */  addu       $a0, $a0, $a1
/* 9664C 800E028C 8C820090 */  lw         $v0, 0x90($a0)
/* 96650 800E0290 03E00008 */  jr         $ra
/* 96654 800E0294 00000000 */   nop
