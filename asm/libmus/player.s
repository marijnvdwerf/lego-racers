.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000E4D0
/* F0D0 8000E4D0 00001021 */  addu       $v0, $zero, $zero
/* F0D4 8000E4D4 AC800038 */  sw         $zero, 0x38($a0)
/* F0D8 8000E4D8 AC800034 */  sw         $zero, 0x34($a0)
/* F0DC 8000E4DC AC800074 */  sw         $zero, 0x74($a0)
/* F0E0 8000E4E0 AC800078 */  sw         $zero, 0x78($a0)
/* F0E4 8000E4E4 AC800044 */  sw         $zero, 0x44($a0)
/* F0E8 8000E4E8 03E00008 */  jr         $ra
/* F0EC 8000E4EC AC800008 */   sw        $zero, 0x8($a0)

glabel func_8000E4F0
/* F0F0 8000E4F0 90A60000 */  lbu        $a2, 0x0($a1)
/* F0F4 8000E4F4 30C20080 */  andi       $v0, $a2, 0x80
/* F0F8 8000E4F8 10400006 */  beqz       $v0, .L8000E514
/* F0FC 8000E4FC 24A50001 */   addiu     $a1, $a1, 0x1
/* F100 8000E500 90A30000 */  lbu        $v1, 0x0($a1)
/* F104 8000E504 24A50001 */  addiu      $a1, $a1, 0x1
/* F108 8000E508 30C2007F */  andi       $v0, $a2, 0x7F
/* F10C 8000E50C 00021200 */  sll        $v0, $v0, 8
/* F110 8000E510 00623025 */  or         $a2, $v1, $v0
.L8000E514:
/* F114 8000E514 A48600AE */  sh         $a2, 0xAE($a0)
/* F118 8000E518 03E00008 */  jr         $ra
/* F11C 8000E51C 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E520
/* F120 8000E520 90A20000 */  lbu        $v0, 0x0($a1)
/* F124 8000E524 A08200B8 */  sb         $v0, 0xB8($a0)
/* F128 8000E528 304200FF */  andi       $v0, $v0, 0xFF
/* F12C 8000E52C 10400003 */  beqz       $v0, .L8000E53C
/* F130 8000E530 24A50001 */   addiu     $a1, $a1, 0x1
/* F134 8000E534 C480002C */  lwc1       $f0, 0x2C($a0)
/* F138 8000E538 E4800050 */  swc1       $f0, 0x50($a0)
.L8000E53C:
/* F13C 8000E53C 03E00008 */  jr         $ra
/* F140 8000E540 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E544
/* F144 8000E544 A08000B8 */  sb         $zero, 0xB8($a0)
/* F148 8000E548 03E00008 */  jr         $ra
/* F14C 8000E54C 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E550
/* F150 8000E550 90A60000 */  lbu        $a2, 0x0($a1)
/* F154 8000E554 14C00002 */  bnez       $a2, .L8000E560
/* F158 8000E558 24A50001 */   addiu     $a1, $a1, 0x1
/* F15C 8000E55C 24060001 */  addiu      $a2, $zero, 0x1
.L8000E560:
/* F160 8000E560 24020400 */  addiu      $v0, $zero, 0x400
/* F164 8000E564 0046001A */  div        $zero, $v0, $a2
/* F168 8000E568 14C00002 */  bnez       $a2, .L8000E574
/* F16C 8000E56C 00000000 */   nop
/* F170 8000E570 0007000D */  break      7
.L8000E574:
/* F174 8000E574 2401FFFF */  addiu      $at, $zero, -0x1
/* F178 8000E578 14C10004 */  bne        $a2, $at, .L8000E58C
/* F17C 8000E57C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* F180 8000E580 14410002 */  bne        $v0, $at, .L8000E58C
/* F184 8000E584 00000000 */   nop
/* F188 8000E588 0006000D */  break      6
.L8000E58C:
/* F18C 8000E58C 00001012 */  mflo       $v0
/* F190 8000E590 3C018000 */  lui        $at, %hi(D_80000F10)
/* F194 8000E594 D4240F10 */  ldc1       $f4, %lo(D_80000F10)($at)
/* F198 8000E598 A08600BF */  sb         $a2, 0xBF($a0)
/* F19C 8000E59C AC820064 */  sw         $v0, 0x64($a0)
/* F1A0 8000E5A0 90A20000 */  lbu        $v0, 0x0($a1)
/* F1A4 8000E5A4 24A50001 */  addiu      $a1, $a1, 0x1
/* F1A8 8000E5A8 A08200C0 */  sb         $v0, 0xC0($a0)
/* F1AC 8000E5AC 90A60000 */  lbu        $a2, 0x0($a1)
/* F1B0 8000E5B0 908300C0 */  lbu        $v1, 0xC0($a0)
/* F1B4 8000E5B4 24A50001 */  addiu      $a1, $a1, 0x1
/* F1B8 8000E5B8 A08600C6 */  sb         $a2, 0xC6($a0)
/* F1BC 8000E5BC 90A20000 */  lbu        $v0, 0x0($a1)
/* F1C0 8000E5C0 A08200C1 */  sb         $v0, 0xC1($a0)
/* F1C4 8000E5C4 30C200FF */  andi       $v0, $a2, 0xFF
/* F1C8 8000E5C8 44821000 */  mtc1       $v0, $f2
/* F1CC 8000E5CC 468010A0 */  cvt.s.w    $f2, $f2
/* F1D0 8000E5D0 460010A1 */  cvt.d.s    $f2, $f2
/* F1D4 8000E5D4 908200C1 */  lbu        $v0, 0xC1($a0)
/* F1D8 8000E5D8 46222083 */  div.d      $f2, $f4, $f2
/* F1DC 8000E5DC 00431023 */  subu       $v0, $v0, $v1
/* F1E0 8000E5E0 44820000 */  mtc1       $v0, $f0
/* F1E4 8000E5E4 46800020 */  cvt.s.w    $f0, $f0
/* F1E8 8000E5E8 46000021 */  cvt.d.s    $f0, $f0
/* F1EC 8000E5EC 46201082 */  mul.d      $f2, $f2, $f0
/* F1F0 8000E5F0 24A50001 */  addiu      $a1, $a1, 0x1
/* F1F4 8000E5F4 908300C1 */  lbu        $v1, 0xC1($a0)
/* F1F8 8000E5F8 462010A0 */  cvt.s.d    $f2, $f2
/* F1FC 8000E5FC E4820058 */  swc1       $f2, 0x58($a0)
/* F200 8000E600 90A60000 */  lbu        $a2, 0x0($a1)
/* F204 8000E604 24A50001 */  addiu      $a1, $a1, 0x1
/* F208 8000E608 A08600C7 */  sb         $a2, 0xC7($a0)
/* F20C 8000E60C 90A20000 */  lbu        $v0, 0x0($a1)
/* F210 8000E610 A08200C2 */  sb         $v0, 0xC2($a0)
/* F214 8000E614 30C200FF */  andi       $v0, $a2, 0xFF
/* F218 8000E618 44821000 */  mtc1       $v0, $f2
/* F21C 8000E61C 468010A0 */  cvt.s.w    $f2, $f2
/* F220 8000E620 460010A1 */  cvt.d.s    $f2, $f2
/* F224 8000E624 908200C2 */  lbu        $v0, 0xC2($a0)
/* F228 8000E628 46222083 */  div.d      $f2, $f4, $f2
/* F22C 8000E62C 00431023 */  subu       $v0, $v0, $v1
/* F230 8000E630 44820000 */  mtc1       $v0, $f0
/* F234 8000E634 46800020 */  cvt.s.w    $f0, $f0
/* F238 8000E638 46000021 */  cvt.d.s    $f0, $f0
/* F23C 8000E63C 46201082 */  mul.d      $f2, $f2, $f0
/* F240 8000E640 24A50001 */  addiu      $a1, $a1, 0x1
/* F244 8000E644 462010A0 */  cvt.s.d    $f2, $f2
/* F248 8000E648 E482005C */  swc1       $f2, 0x5C($a0)
/* F24C 8000E64C 90A60000 */  lbu        $a2, 0x0($a1)
/* F250 8000E650 30C200FF */  andi       $v0, $a2, 0xFF
/* F254 8000E654 44820000 */  mtc1       $v0, $f0
/* F258 8000E658 46800020 */  cvt.s.w    $f0, $f0
/* F25C 8000E65C 46000021 */  cvt.d.s    $f0, $f0
/* F260 8000E660 46202103 */  div.d      $f4, $f4, $f0
/* F264 8000E664 46202120 */  cvt.s.d    $f4, $f4
/* F268 8000E668 24A20001 */  addiu      $v0, $a1, 0x1
/* F26C 8000E66C A08600C8 */  sb         $a2, 0xC8($a0)
/* F270 8000E670 03E00008 */  jr         $ra
/* F274 8000E674 E4840060 */   swc1      $f4, 0x60($a0)

glabel func_8000E678
/* F278 8000E678 00804821 */  addu       $t1, $a0, $zero
/* F27C 8000E67C 3C048888 */  lui        $a0, (0x88888889 >> 16)
/* F280 8000E680 90A30000 */  lbu        $v1, 0x0($a1)
/* F284 8000E684 34848889 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* F288 8000E688 00031040 */  sll        $v0, $v1, 1
/* F28C 8000E68C 00431021 */  addu       $v0, $v0, $v1
/* F290 8000E690 00021340 */  sll        $v0, $v0, 13
/* F294 8000E694 00440018 */  mult       $v0, $a0
/* F298 8000E698 3C048004 */  lui        $a0, %hi(D_80038E94)
/* F29C 8000E69C 8C848E94 */  lw         $a0, %lo(D_80038E94)($a0)
/* F2A0 8000E6A0 00001810 */  mfhi       $v1
/* F2A4 8000E6A4 00621821 */  addu       $v1, $v1, $v0
/* F2A8 8000E6A8 00031983 */  sra        $v1, $v1, 6
/* F2AC 8000E6AC 000217C3 */  sra        $v0, $v0, 31
/* F2B0 8000E6B0 00621823 */  subu       $v1, $v1, $v0
/* F2B4 8000E6B4 0064001A */  div        $zero, $v1, $a0
/* F2B8 8000E6B8 14800002 */  bnez       $a0, .L8000E6C4
/* F2BC 8000E6BC 00000000 */   nop
/* F2C0 8000E6C0 0007000D */  break      7
.L8000E6C4:
/* F2C4 8000E6C4 2401FFFF */  addiu      $at, $zero, -0x1
/* F2C8 8000E6C8 14810004 */  bne        $a0, $at, .L8000E6DC
/* F2CC 8000E6CC 3C018000 */   lui       $at, (0x80000000 >> 16)
/* F2D0 8000E6D0 14610002 */  bne        $v1, $at, .L8000E6DC
/* F2D4 8000E6D4 00000000 */   nop
/* F2D8 8000E6D8 0006000D */  break      6
.L8000E6DC:
/* F2DC 8000E6DC 00003812 */  mflo       $a3
/* F2E0 8000E6E0 85220098 */  lh         $v0, 0x98($t1)
/* F2E4 8000E6E4 00000000 */  nop
/* F2E8 8000E6E8 00E20018 */  mult       $a3, $v0
/* F2EC 8000E6EC 24A50001 */  addiu      $a1, $a1, 0x1
/* F2F0 8000E6F0 8D220078 */  lw         $v0, 0x78($t1)
/* F2F4 8000E6F4 00001812 */  mflo       $v1
/* F2F8 8000E6F8 10400003 */  beqz       $v0, .L8000E708
/* F2FC 8000E6FC 000351C3 */   sra       $t2, $v1, 7
/* F300 8000E700 080039D3 */  j          .L8000E74C
/* F304 8000E704 A527009C */   sh        $a3, 0x9C($t1)
.L8000E708:
/* F308 8000E708 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* F30C 8000E70C 3C028004 */  lui        $v0, %hi(D_80038E84)
/* F310 8000E710 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* F314 8000E714 8C638E8C */  lw         $v1, %lo(D_80038E8C)($v1)
/* F318 8000E718 1840000C */  blez       $v0, .L8000E74C
/* F31C 8000E71C 00003021 */   addu      $a2, $zero, $zero
/* F320 8000E720 00404021 */  addu       $t0, $v0, $zero
/* F324 8000E724 2464009C */  addiu      $a0, $v1, 0x9C
.L8000E728:
/* F328 8000E728 8C83FFD8 */  lw         $v1, -0x28($a0)
/* F32C 8000E72C 8D220074 */  lw         $v0, 0x74($t1)
/* F330 8000E730 14620003 */  bne        $v1, $v0, .L8000E740
/* F334 8000E734 24C60001 */   addiu     $a2, $a2, 0x1
/* F338 8000E738 A487000C */  sh         $a3, 0xC($a0)
/* F33C 8000E73C A48A0000 */  sh         $t2, 0x0($a0)
.L8000E740:
/* F340 8000E740 00C8102A */  slt        $v0, $a2, $t0
/* F344 8000E744 1440FFF8 */  bnez       $v0, .L8000E728
/* F348 8000E748 2484013C */   addiu     $a0, $a0, 0x13C
.L8000E74C:
/* F34C 8000E74C 03E00008 */  jr         $ra
/* F350 8000E750 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E754
/* F354 8000E754 90A20000 */  lbu        $v0, 0x0($a1)
/* F358 8000E758 A48000B2 */  sh         $zero, 0xB2($a0)
/* F35C 8000E75C A48200B4 */  sh         $v0, 0xB4($a0)
/* F360 8000E760 03E00008 */  jr         $ra
/* F364 8000E764 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8000E768
/* F368 8000E768 90A20000 */  lbu        $v0, 0x0($a1)
/* F36C 8000E76C 24A50001 */  addiu      $a1, $a1, 0x1
/* F370 8000E770 90A30000 */  lbu        $v1, 0x0($a1)
/* F374 8000E774 A48000B4 */  sh         $zero, 0xB4($a0)
/* F378 8000E778 00021200 */  sll        $v0, $v0, 8
/* F37C 8000E77C 00431025 */  or         $v0, $v0, $v1
/* F380 8000E780 A48200B2 */  sh         $v0, 0xB2($a0)
/* F384 8000E784 03E00008 */  jr         $ra
/* F388 8000E788 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8000E78C
/* F38C 8000E78C 90A20000 */  lbu        $v0, 0x0($a1)
/* F390 8000E790 24A50001 */  addiu      $a1, $a1, 0x1
/* F394 8000E794 A08200B6 */  sb         $v0, 0xB6($a0)
/* F398 8000E798 90A20000 */  lbu        $v0, 0x0($a1)
/* F39C 8000E79C 24A50001 */  addiu      $a1, $a1, 0x1
/* F3A0 8000E7A0 A08200D5 */  sb         $v0, 0xD5($a0)
/* F3A4 8000E7A4 90A20000 */  lbu        $v0, 0x0($a1)
/* F3A8 8000E7A8 3C018000 */  lui        $at, %hi(D_80000F18)
/* F3AC 8000E7AC D4220F18 */  ldc1       $f2, %lo(D_80000F18)($at)
/* F3B0 8000E7B0 44820000 */  mtc1       $v0, $f0
/* F3B4 8000E7B4 46800020 */  cvt.s.w    $f0, $f0
/* F3B8 8000E7B8 46000021 */  cvt.d.s    $f0, $f0
/* F3BC 8000E7BC 46220003 */  div.d      $f0, $f0, $f2
/* F3C0 8000E7C0 908200D5 */  lbu        $v0, 0xD5($a0)
/* F3C4 8000E7C4 46200020 */  cvt.s.d    $f0, $f0
/* F3C8 8000E7C8 E4800020 */  swc1       $f0, 0x20($a0)
/* F3CC 8000E7CC 3C018000 */  lui        $at, %hi(D_80000F20)
/* F3D0 8000E7D0 D4200F20 */  ldc1       $f0, %lo(D_80000F20)($at)
/* F3D4 8000E7D4 44821000 */  mtc1       $v0, $f2
/* F3D8 8000E7D8 468010A0 */  cvt.s.w    $f2, $f2
/* F3DC 8000E7DC 460010A1 */  cvt.d.s    $f2, $f2
/* F3E0 8000E7E0 46220003 */  div.d      $f0, $f0, $f2
/* F3E4 8000E7E4 46200020 */  cvt.s.d    $f0, $f0
/* F3E8 8000E7E8 24A20001 */  addiu      $v0, $a1, 0x1
/* F3EC 8000E7EC 03E00008 */  jr         $ra
/* F3F0 8000E7F0 E48000DC */   swc1      $f0, 0xDC($a0)

glabel func_8000E7F4
/* F3F4 8000E7F4 90A20000 */  lbu        $v0, 0x0($a1)
/* F3F8 8000E7F8 24A50001 */  addiu      $a1, $a1, 0x1
/* F3FC 8000E7FC A08200B6 */  sb         $v0, 0xB6($a0)
/* F400 8000E800 90A20000 */  lbu        $v0, 0x0($a1)
/* F404 8000E804 24A50001 */  addiu      $a1, $a1, 0x1
/* F408 8000E808 A08200D5 */  sb         $v0, 0xD5($a0)
/* F40C 8000E80C 90A20000 */  lbu        $v0, 0x0($a1)
/* F410 8000E810 3C018000 */  lui        $at, %hi(D_80000F28)
/* F414 8000E814 D4220F28 */  ldc1       $f2, %lo(D_80000F28)($at)
/* F418 8000E818 44820000 */  mtc1       $v0, $f0
/* F41C 8000E81C 46800020 */  cvt.s.w    $f0, $f0
/* F420 8000E820 46000007 */  neg.s      $f0, $f0
/* F424 8000E824 46000021 */  cvt.d.s    $f0, $f0
/* F428 8000E828 46220003 */  div.d      $f0, $f0, $f2
/* F42C 8000E82C 908200D5 */  lbu        $v0, 0xD5($a0)
/* F430 8000E830 46200020 */  cvt.s.d    $f0, $f0
/* F434 8000E834 E4800020 */  swc1       $f0, 0x20($a0)
/* F438 8000E838 3C018000 */  lui        $at, %hi(D_80000F30)
/* F43C 8000E83C D4200F30 */  ldc1       $f0, %lo(D_80000F30)($at)
/* F440 8000E840 44821000 */  mtc1       $v0, $f2
/* F444 8000E844 468010A0 */  cvt.s.w    $f2, $f2
/* F448 8000E848 460010A1 */  cvt.d.s    $f2, $f2
/* F44C 8000E84C 46220003 */  div.d      $f0, $f0, $f2
/* F450 8000E850 46200020 */  cvt.s.d    $f0, $f0
/* F454 8000E854 24A20001 */  addiu      $v0, $a1, 0x1
/* F458 8000E858 03E00008 */  jr         $ra
/* F45C 8000E85C E48000DC */   swc1      $f0, 0xDC($a0)

glabel func_8000E860
/* F460 8000E860 00A01021 */  addu       $v0, $a1, $zero
/* F464 8000E864 A08000D5 */  sb         $zero, 0xD5($a0)
/* F468 8000E868 03E00008 */  jr         $ra
/* F46C 8000E86C AC800068 */   sw        $zero, 0x68($a0)

glabel func_8000E870
/* F470 8000E870 90A30000 */  lbu        $v1, 0x0($a1)
/* F474 8000E874 28620080 */  slti       $v0, $v1, 0x80
/* F478 8000E878 14400006 */  bnez       $v0, .L8000E894
/* F47C 8000E87C 24A50001 */   addiu     $a1, $a1, 0x1
/* F480 8000E880 3063007F */  andi       $v1, $v1, 0x7F
/* F484 8000E884 00031A00 */  sll        $v1, $v1, 8
/* F488 8000E888 90A20000 */  lbu        $v0, 0x0($a1)
/* F48C 8000E88C 24A50001 */  addiu      $a1, $a1, 0x1
/* F490 8000E890 00621825 */  or         $v1, $v1, $v0
.L8000E894:
/* F494 8000E894 A48300AC */  sh         $v1, 0xAC($a0)
/* F498 8000E898 03E00008 */  jr         $ra
/* F49C 8000E89C 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E8A0
/* F4A0 8000E8A0 24020001 */  addiu      $v0, $zero, 0x1
/* F4A4 8000E8A4 A08200B7 */  sb         $v0, 0xB7($a0)
/* F4A8 8000E8A8 03E00008 */  jr         $ra
/* F4AC 8000E8AC 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E8B0
/* F4B0 8000E8B0 90A20000 */  lbu        $v0, 0x0($a1)
/* F4B4 8000E8B4 A08200B9 */  sb         $v0, 0xB9($a0)
/* F4B8 8000E8B8 03E00008 */  jr         $ra
/* F4BC 8000E8BC 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8000E8C0
/* F4C0 8000E8C0 24020001 */  addiu      $v0, $zero, 0x1
/* F4C4 8000E8C4 A08200BA */  sb         $v0, 0xBA($a0)
/* F4C8 8000E8C8 03E00008 */  jr         $ra
/* F4CC 8000E8CC 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E8D0
/* F4D0 8000E8D0 90A30000 */  lbu        $v1, 0x0($a1)
/* F4D4 8000E8D4 30620080 */  andi       $v0, $v1, 0x80
/* F4D8 8000E8D8 10400003 */  beqz       $v0, .L8000E8E8
/* F4DC 8000E8DC 24A50001 */   addiu     $a1, $a1, 0x1
/* F4E0 8000E8E0 2402FF00 */  addiu      $v0, $zero, -0x100
/* F4E4 8000E8E4 00621825 */  or         $v1, $v1, $v0
.L8000E8E8:
/* F4E8 8000E8E8 44830000 */  mtc1       $v1, $f0
/* F4EC 8000E8EC 46800020 */  cvt.s.w    $f0, $f0
/* F4F0 8000E8F0 46000021 */  cvt.d.s    $f0, $f0
/* F4F4 8000E8F4 C4840030 */  lwc1       $f4, 0x30($a0)
/* F4F8 8000E8F8 C4860090 */  lwc1       $f6, 0x90($a0)
/* F4FC 8000E8FC 3C018000 */  lui        $at, %hi(D_80000F38)
/* F500 8000E900 D4220F38 */  ldc1       $f2, %lo(D_80000F38)($at)
/* F504 8000E904 46062101 */  sub.s      $f4, $f4, $f6
/* F508 8000E908 46220003 */  div.d      $f0, $f0, $f2
/* F50C 8000E90C 46200020 */  cvt.s.d    $f0, $f0
/* F510 8000E910 46002100 */  add.s      $f4, $f4, $f0
/* F514 8000E914 00A01021 */  addu       $v0, $a1, $zero
/* F518 8000E918 E4800090 */  swc1       $f0, 0x90($a0)
/* F51C 8000E91C 03E00008 */  jr         $ra
/* F520 8000E920 E4840030 */   swc1      $f4, 0x30($a0)

glabel func_8000E924
/* F524 8000E924 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F528 8000E928 AFB00010 */  sw         $s0, 0x10($sp)
/* F52C 8000E92C 00A08021 */  addu       $s0, $a1, $zero
/* F530 8000E930 AFBF0014 */  sw         $ra, 0x14($sp)
/* F534 8000E934 92030000 */  lbu        $v1, 0x0($s0)
/* F538 8000E938 30620080 */  andi       $v0, $v1, 0x80
/* F53C 8000E93C 10400006 */  beqz       $v0, .L8000E958
/* F540 8000E940 26100001 */   addiu     $s0, $s0, 0x1
/* F544 8000E944 3063007F */  andi       $v1, $v1, 0x7F
/* F548 8000E948 00031A00 */  sll        $v1, $v1, 8
/* F54C 8000E94C 92020000 */  lbu        $v0, 0x0($s0)
/* F550 8000E950 26100001 */  addiu      $s0, $s0, 0x1
/* F554 8000E954 00621825 */  or         $v1, $v1, $v0
.L8000E958:
/* F558 8000E958 8C820074 */  lw         $v0, 0x74($a0)
/* F55C 8000E95C 000328C0 */  sll        $a1, $v1, 3
/* F560 8000E960 8C420018 */  lw         $v0, 0x18($v0)
/* F564 8000E964 00A32823 */  subu       $a1, $a1, $v1
/* F568 8000E968 0C003954 */  jal        func_8000E550
/* F56C 8000E96C 00452821 */   addu      $a1, $v0, $a1
/* F570 8000E970 02001021 */  addu       $v0, $s0, $zero
/* F574 8000E974 8FBF0014 */  lw         $ra, 0x14($sp)
/* F578 8000E978 8FB00010 */  lw         $s0, 0x10($sp)
/* F57C 8000E97C 03E00008 */  jr         $ra
/* F580 8000E980 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000E984
/* F584 8000E984 24020001 */  addiu      $v0, $zero, 0x1
/* F588 8000E988 A08200D6 */  sb         $v0, 0xD6($a0)
/* F58C 8000E98C 03E00008 */  jr         $ra
/* F590 8000E990 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E994
/* F594 8000E994 A08000D6 */  sb         $zero, 0xD6($a0)
/* F598 8000E998 03E00008 */  jr         $ra
/* F59C 8000E99C 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E9A0
/* F5A0 8000E9A0 24020001 */  addiu      $v0, $zero, 0x1
/* F5A4 8000E9A4 A08200D7 */  sb         $v0, 0xD7($a0)
/* F5A8 8000E9A8 03E00008 */  jr         $ra
/* F5AC 8000E9AC 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E9B0
/* F5B0 8000E9B0 A08000D7 */  sb         $zero, 0xD7($a0)
/* F5B4 8000E9B4 03E00008 */  jr         $ra
/* F5B8 8000E9B8 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000E9BC
/* F5BC 8000E9BC 00A01021 */  addu       $v0, $a1, $zero
/* F5C0 8000E9C0 908600DB */  lbu        $a2, 0xDB($a0)
/* F5C4 8000E9C4 90430000 */  lbu        $v1, 0x0($v0)
/* F5C8 8000E9C8 24420001 */  addiu      $v0, $v0, 0x1
/* F5CC 8000E9CC 00863821 */  addu       $a3, $a0, $a2
/* F5D0 8000E9D0 00062880 */  sll        $a1, $a2, 2
/* F5D4 8000E9D4 00852821 */  addu       $a1, $a0, $a1
/* F5D8 8000E9D8 A0E30120 */  sb         $v1, 0x120($a3)
/* F5DC 8000E9DC ACA200E0 */  sw         $v0, 0xE0($a1)
/* F5E0 8000E9E0 8C830038 */  lw         $v1, 0x38($a0)
/* F5E4 8000E9E4 ACA300F0 */  sw         $v1, 0xF0($a1)
/* F5E8 8000E9E8 8C830034 */  lw         $v1, 0x34($a0)
/* F5EC 8000E9EC ACA30100 */  sw         $v1, 0x100($a1)
/* F5F0 8000E9F0 908300BC */  lbu        $v1, 0xBC($a0)
/* F5F4 8000E9F4 A0E30124 */  sb         $v1, 0x124($a3)
/* F5F8 8000E9F8 C4800070 */  lwc1       $f0, 0x70($a0)
/* F5FC 8000E9FC 00063040 */  sll        $a2, $a2, 1
/* F600 8000EA00 E4A00128 */  swc1       $f0, 0x128($a1)
/* F604 8000EA04 948300A2 */  lhu        $v1, 0xA2($a0)
/* F608 8000EA08 00863021 */  addu       $a2, $a0, $a2
/* F60C 8000EA0C A4C30110 */  sh         $v1, 0x110($a2)
/* F610 8000EA10 948300A4 */  lhu        $v1, 0xA4($a0)
/* F614 8000EA14 A4C30118 */  sh         $v1, 0x118($a2)
/* F618 8000EA18 908300DB */  lbu        $v1, 0xDB($a0)
/* F61C 8000EA1C 24630001 */  addiu      $v1, $v1, 0x1
/* F620 8000EA20 03E00008 */  jr         $ra
/* F624 8000EA24 A08300DB */   sb        $v1, 0xDB($a0)

glabel func_8000EA28
/* F628 8000EA28 908200DB */  lbu        $v0, 0xDB($a0)
/* F62C 8000EA2C 2446FFFF */  addiu      $a2, $v0, -0x1
/* F630 8000EA30 00863821 */  addu       $a3, $a0, $a2
/* F634 8000EA34 90E30120 */  lbu        $v1, 0x120($a3)
/* F638 8000EA38 240200FF */  addiu      $v0, $zero, 0xFF
/* F63C 8000EA3C 10620007 */  beq        $v1, $v0, .L8000EA5C
/* F640 8000EA40 2462FFFF */   addiu     $v0, $v1, -0x1
/* F644 8000EA44 A0E20120 */  sb         $v0, 0x120($a3)
/* F648 8000EA48 304200FF */  andi       $v0, $v0, 0xFF
/* F64C 8000EA4C 14400003 */  bnez       $v0, .L8000EA5C
/* F650 8000EA50 00000000 */   nop
/* F654 8000EA54 A08600DB */  sb         $a2, 0xDB($a0)
/* F658 8000EA58 2406FFFF */  addiu      $a2, $zero, -0x1
.L8000EA5C:
/* F65C 8000EA5C 04C00015 */  bltz       $a2, .L8000EAB4
/* F660 8000EA60 00061880 */   sll       $v1, $a2, 2
/* F664 8000EA64 00831821 */  addu       $v1, $a0, $v1
/* F668 8000EA68 8C6200F0 */  lw         $v0, 0xF0($v1)
/* F66C 8000EA6C 8C6500E0 */  lw         $a1, 0xE0($v1)
/* F670 8000EA70 C482006C */  lwc1       $f2, 0x6C($a0)
/* F674 8000EA74 AC820038 */  sw         $v0, 0x38($a0)
/* F678 8000EA78 8C620100 */  lw         $v0, 0x100($v1)
/* F67C 8000EA7C AC820034 */  sw         $v0, 0x34($a0)
/* F680 8000EA80 00861021 */  addu       $v0, $a0, $a2
/* F684 8000EA84 90420124 */  lbu        $v0, 0x124($v0)
/* F688 8000EA88 A08200BC */  sb         $v0, 0xBC($a0)
/* F68C 8000EA8C 00061040 */  sll        $v0, $a2, 1
/* F690 8000EA90 C4600128 */  lwc1       $f0, 0x128($v1)
/* F694 8000EA94 00821021 */  addu       $v0, $a0, $v0
/* F698 8000EA98 E4800070 */  swc1       $f0, 0x70($a0)
/* F69C 8000EA9C 94430110 */  lhu        $v1, 0x110($v0)
/* F6A0 8000EAA0 46020002 */  mul.s      $f0, $f0, $f2
/* F6A4 8000EAA4 A48300A2 */  sh         $v1, 0xA2($a0)
/* F6A8 8000EAA8 94420118 */  lhu        $v0, 0x118($v0)
/* F6AC 8000EAAC A48200A4 */  sh         $v0, 0xA4($a0)
/* F6B0 8000EAB0 E4800024 */  swc1       $f0, 0x24($a0)
.L8000EAB4:
/* F6B4 8000EAB4 03E00008 */  jr         $ra
/* F6B8 8000EAB8 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000EABC
/* F6BC 8000EABC 90A20000 */  lbu        $v0, 0x0($a1)
/* F6C0 8000EAC0 24A50001 */  addiu      $a1, $a1, 0x1
/* F6C4 8000EAC4 A08200D8 */  sb         $v0, 0xD8($a0)
/* F6C8 8000EAC8 90A20000 */  lbu        $v0, 0x0($a1)
/* F6CC 8000EACC 24A50001 */  addiu      $a1, $a1, 0x1
/* F6D0 8000EAD0 A08200CE */  sb         $v0, 0xCE($a0)
/* F6D4 8000EAD4 90A20000 */  lbu        $v0, 0x0($a1)
/* F6D8 8000EAD8 A08200CF */  sb         $v0, 0xCF($a0)
/* F6DC 8000EADC 03E00008 */  jr         $ra
/* F6E0 8000EAE0 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8000EAE4
/* F6E4 8000EAE4 A08000CE */  sb         $zero, 0xCE($a0)
/* F6E8 8000EAE8 03E00008 */  jr         $ra
/* F6EC 8000EAEC 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000EAF0
/* F6F0 8000EAF0 24020001 */  addiu      $v0, $zero, 0x1
/* F6F4 8000EAF4 A08200D2 */  sb         $v0, 0xD2($a0)
/* F6F8 8000EAF8 03E00008 */  jr         $ra
/* F6FC 8000EAFC 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000EB00
/* F700 8000EB00 A08000D2 */  sb         $zero, 0xD2($a0)
/* F704 8000EB04 03E00008 */  jr         $ra
/* F708 8000EB08 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000EB0C
/* F70C 8000EB0C 90A20000 */  lbu        $v0, 0x0($a1)
/* F710 8000EB10 A08000D2 */  sb         $zero, 0xD2($a0)
/* F714 8000EB14 A08200D3 */  sb         $v0, 0xD3($a0)
/* F718 8000EB18 03E00008 */  jr         $ra
/* F71C 8000EB1C 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8000EB20
/* F720 8000EB20 90A20000 */  lbu        $v0, 0x0($a1)
/* F724 8000EB24 00021042 */  srl        $v0, $v0, 1
/* F728 8000EB28 A08200BD */  sb         $v0, 0xBD($a0)
/* F72C 8000EB2C 03E00008 */  jr         $ra
/* F730 8000EB30 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8000EB34
/* F734 8000EB34 03E00008 */  jr         $ra
/* F738 8000EB38 24A20002 */   addiu     $v0, $a1, 0x2

glabel func_8000EB3C
/* F73C 8000EB3C 90A60000 */  lbu        $a2, 0x0($a1)
/* F740 8000EB40 28C20080 */  slti       $v0, $a2, 0x80
/* F744 8000EB44 14400006 */  bnez       $v0, .L8000EB60
/* F748 8000EB48 24A50001 */   addiu     $a1, $a1, 0x1
/* F74C 8000EB4C 30C6007F */  andi       $a2, $a2, 0x7F
/* F750 8000EB50 00063200 */  sll        $a2, $a2, 8
/* F754 8000EB54 90A20000 */  lbu        $v0, 0x0($a1)
/* F758 8000EB58 24A50001 */  addiu      $a1, $a1, 0x1
/* F75C 8000EB5C 00C23025 */  or         $a2, $a2, $v0
.L8000EB60:
/* F760 8000EB60 00061040 */  sll        $v0, $a2, 1
/* F764 8000EB64 8C830074 */  lw         $v1, 0x74($a0)
/* F768 8000EB68 00461021 */  addu       $v0, $v0, $a2
/* F76C 8000EB6C 8C63001C */  lw         $v1, 0x1C($v1)
/* F770 8000EB70 00021040 */  sll        $v0, $v0, 1
/* F774 8000EB74 00621821 */  addu       $v1, $v1, $v0
/* F778 8000EB78 00A01021 */  addu       $v0, $a1, $zero
/* F77C 8000EB7C 03E00008 */  jr         $ra
/* F780 8000EB80 AC830084 */   sw        $v1, 0x84($a0)

glabel func_8000EB84
/* F784 8000EB84 AC800084 */  sw         $zero, 0x84($a0)
/* F788 8000EB88 03E00008 */  jr         $ra
/* F78C 8000EB8C 00A01021 */   addu      $v0, $a1, $zero

glabel func_8000EB90
/* F790 8000EB90 03E00008 */  jr         $ra
/* F794 8000EB94 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8000EB98
/* F798 8000EB98 90A60000 */  lbu        $a2, 0x0($a1)
/* F79C 8000EB9C 24A50001 */  addiu      $a1, $a1, 0x1
/* F7A0 8000EBA0 90A80000 */  lbu        $t0, 0x0($a1)
/* F7A4 8000EBA4 24A50001 */  addiu      $a1, $a1, 0x1
/* F7A8 8000EBA8 90A20000 */  lbu        $v0, 0x0($a1)
/* F7AC 8000EBAC 24A50001 */  addiu      $a1, $a1, 0x1
/* F7B0 8000EBB0 90A30000 */  lbu        $v1, 0x0($a1)
/* F7B4 8000EBB4 24A50001 */  addiu      $a1, $a1, 0x1
/* F7B8 8000EBB8 24070001 */  addiu      $a3, $zero, 0x1
/* F7BC 8000EBBC A48700A2 */  sh         $a3, 0xA2($a0)
/* F7C0 8000EBC0 00063200 */  sll        $a2, $a2, 8
/* F7C4 8000EBC4 00024A00 */  sll        $t1, $v0, 8
/* F7C8 8000EBC8 8C82008C */  lw         $v0, 0x8C($a0)
/* F7CC 8000EBCC 01234821 */  addu       $t1, $t1, $v1
/* F7D0 8000EBD0 00491021 */  addu       $v0, $v0, $t1
/* F7D4 8000EBD4 AC820038 */  sw         $v0, 0x38($a0)
/* F7D8 8000EBD8 90A20000 */  lbu        $v0, 0x0($a1)
/* F7DC 8000EBDC 90A30001 */  lbu        $v1, 0x1($a1)
/* F7E0 8000EBE0 00C83021 */  addu       $a2, $a2, $t0
/* F7E4 8000EBE4 A48700A4 */  sh         $a3, 0xA4($a0)
/* F7E8 8000EBE8 00024A00 */  sll        $t1, $v0, 8
/* F7EC 8000EBEC 01234821 */  addu       $t1, $t1, $v1
/* F7F0 8000EBF0 8C830088 */  lw         $v1, 0x88($a0)
/* F7F4 8000EBF4 8C820080 */  lw         $v0, 0x80($a0)
/* F7F8 8000EBF8 00691821 */  addu       $v1, $v1, $t1
/* F7FC 8000EBFC 00461021 */  addu       $v0, $v0, $a2
/* F800 8000EC00 03E00008 */  jr         $ra
/* F804 8000EC04 AC830034 */   sw        $v1, 0x34($a0)

glabel func_8000EC08
/* F808 8000EC08 90A20000 */  lbu        $v0, 0x0($a1)
/* F80C 8000EC0C A08200CA */  sb         $v0, 0xCA($a0)
/* F810 8000EC10 03E00008 */  jr         $ra
/* F814 8000EC14 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8000EC18
/* F818 8000EC18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F81C 8000EC1C AFB10014 */  sw         $s1, 0x14($sp)
/* F820 8000EC20 00808821 */  addu       $s1, $a0, $zero
/* F824 8000EC24 AFB00010 */  sw         $s0, 0x10($sp)
/* F828 8000EC28 00A08021 */  addu       $s0, $a1, $zero
/* F82C 8000EC2C AFBF0018 */  sw         $ra, 0x18($sp)
/* F830 8000EC30 92040000 */  lbu        $a0, 0x0($s0)
/* F834 8000EC34 0C00446F */  jal        func_800111BC
/* F838 8000EC38 26100001 */   addiu     $s0, $s0, 0x1
/* F83C 8000EC3C 00401821 */  addu       $v1, $v0, $zero
/* F840 8000EC40 A22300B9 */  sb         $v1, 0xB9($s1)
/* F844 8000EC44 92040000 */  lbu        $a0, 0x0($s0)
/* F848 8000EC48 26020001 */  addiu      $v0, $s0, 0x1
/* F84C 8000EC4C 00641821 */  addu       $v1, $v1, $a0
/* F850 8000EC50 A22300B9 */  sb         $v1, 0xB9($s1)
/* F854 8000EC54 8FBF0018 */  lw         $ra, 0x18($sp)
/* F858 8000EC58 8FB10014 */  lw         $s1, 0x14($sp)
/* F85C 8000EC5C 8FB00010 */  lw         $s0, 0x10($sp)
/* F860 8000EC60 03E00008 */  jr         $ra
/* F864 8000EC64 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000EC68
/* F868 8000EC68 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F86C 8000EC6C AFB10014 */  sw         $s1, 0x14($sp)
/* F870 8000EC70 00808821 */  addu       $s1, $a0, $zero
/* F874 8000EC74 AFB00010 */  sw         $s0, 0x10($sp)
/* F878 8000EC78 00A08021 */  addu       $s0, $a1, $zero
/* F87C 8000EC7C AFBF0018 */  sw         $ra, 0x18($sp)
/* F880 8000EC80 92040000 */  lbu        $a0, 0x0($s0)
/* F884 8000EC84 0C00446F */  jal        func_800111BC
/* F888 8000EC88 26100001 */   addiu     $s0, $s0, 0x1
/* F88C 8000EC8C 00401821 */  addu       $v1, $v0, $zero
/* F890 8000EC90 A22300BC */  sb         $v1, 0xBC($s1)
/* F894 8000EC94 92040000 */  lbu        $a0, 0x0($s0)
/* F898 8000EC98 26020001 */  addiu      $v0, $s0, 0x1
/* F89C 8000EC9C 00641821 */  addu       $v1, $v1, $a0
/* F8A0 8000ECA0 A22300BC */  sb         $v1, 0xBC($s1)
/* F8A4 8000ECA4 8FBF0018 */  lw         $ra, 0x18($sp)
/* F8A8 8000ECA8 8FB10014 */  lw         $s1, 0x14($sp)
/* F8AC 8000ECAC 8FB00010 */  lw         $s0, 0x10($sp)
/* F8B0 8000ECB0 03E00008 */  jr         $ra
/* F8B4 8000ECB4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000ECB8
/* F8B8 8000ECB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F8BC 8000ECBC AFB10014 */  sw         $s1, 0x14($sp)
/* F8C0 8000ECC0 00808821 */  addu       $s1, $a0, $zero
/* F8C4 8000ECC4 AFB00010 */  sw         $s0, 0x10($sp)
/* F8C8 8000ECC8 00A08021 */  addu       $s0, $a1, $zero
/* F8CC 8000ECCC AFBF0018 */  sw         $ra, 0x18($sp)
/* F8D0 8000ECD0 92040000 */  lbu        $a0, 0x0($s0)
/* F8D4 8000ECD4 0C00446F */  jal        func_800111BC
/* F8D8 8000ECD8 26100001 */   addiu     $s0, $s0, 0x1
/* F8DC 8000ECDC 00401821 */  addu       $v1, $v0, $zero
/* F8E0 8000ECE0 A22300BD */  sb         $v1, 0xBD($s1)
/* F8E4 8000ECE4 92040000 */  lbu        $a0, 0x0($s0)
/* F8E8 8000ECE8 26020001 */  addiu      $v0, $s0, 0x1
/* F8EC 8000ECEC 00641821 */  addu       $v1, $v1, $a0
/* F8F0 8000ECF0 A22300BD */  sb         $v1, 0xBD($s1)
/* F8F4 8000ECF4 8FBF0018 */  lw         $ra, 0x18($sp)
/* F8F8 8000ECF8 8FB10014 */  lw         $s1, 0x14($sp)
/* F8FC 8000ECFC 8FB00010 */  lw         $s0, 0x10($sp)
/* F900 8000ED00 03E00008 */  jr         $ra
/* F904 8000ED04 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000ED08
/* F908 8000ED08 90A20000 */  lbu        $v0, 0x0($a1)
/* F90C 8000ED0C A08200BC */  sb         $v0, 0xBC($a0)
/* F910 8000ED10 03E00008 */  jr         $ra
/* F914 8000ED14 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8000ED18
/* F918 8000ED18 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F91C 8000ED1C AFB1001C */  sw         $s1, 0x1C($sp)
/* F920 8000ED20 00808821 */  addu       $s1, $a0, $zero
/* F924 8000ED24 AFB00018 */  sw         $s0, 0x18($sp)
/* F928 8000ED28 00A08021 */  addu       $s0, $a1, $zero
/* F92C 8000ED2C AFBF0020 */  sw         $ra, 0x20($sp)
/* F930 8000ED30 92050000 */  lbu        $a1, 0x0($s0)
/* F934 8000ED34 28A20080 */  slti       $v0, $a1, 0x80
/* F938 8000ED38 14400006 */  bnez       $v0, .L8000ED54
/* F93C 8000ED3C 26100001 */   addiu     $s0, $s0, 0x1
/* F940 8000ED40 92030000 */  lbu        $v1, 0x0($s0)
/* F944 8000ED44 26100001 */  addiu      $s0, $s0, 0x1
/* F948 8000ED48 30A2007F */  andi       $v0, $a1, 0x7F
/* F94C 8000ED4C 00021200 */  sll        $v0, $v0, 8
/* F950 8000ED50 00432821 */  addu       $a1, $v0, $v1
.L8000ED54:
/* F954 8000ED54 8E220048 */  lw         $v0, 0x48($s1)
/* F958 8000ED58 8626009E */  lh         $a2, 0x9E($s1)
/* F95C 8000ED5C 862700B0 */  lh         $a3, 0xB0($s1)
/* F960 8000ED60 24420001 */  addiu      $v0, $v0, 0x1
/* F964 8000ED64 AE220048 */  sw         $v0, 0x48($s1)
/* F968 8000ED68 AFA20010 */  sw         $v0, 0x10($sp)
/* F96C 8000ED6C 8E240078 */  lw         $a0, 0x78($s1)
/* F970 8000ED70 0C004583 */  jal        func_8001160C
/* F974 8000ED74 00000000 */   nop
/* F978 8000ED78 8E230048 */  lw         $v1, 0x48($s1)
/* F97C 8000ED7C 00402821 */  addu       $a1, $v0, $zero
/* F980 8000ED80 2463FFFF */  addiu      $v1, $v1, -0x1
/* F984 8000ED84 10A00013 */  beqz       $a1, .L8000EDD4
/* F988 8000ED88 AE230048 */   sw        $v1, 0x48($s1)
/* F98C 8000ED8C 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* F990 8000ED90 3C028004 */  lui        $v0, %hi(D_80038E84)
/* F994 8000ED94 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* F998 8000ED98 8C638E8C */  lw         $v1, %lo(D_80038E8C)($v1)
/* F99C 8000ED9C 1840000D */  blez       $v0, .L8000EDD4
/* F9A0 8000EDA0 00002021 */   addu      $a0, $zero, $zero
/* F9A4 8000EDA4 00403021 */  addu       $a2, $v0, $zero
/* F9A8 8000EDA8 2463007C */  addiu      $v1, $v1, 0x7C
.L8000EDAC:
/* F9AC 8000EDAC 8C62FFC8 */  lw         $v0, -0x38($v1)
/* F9B0 8000EDB0 14450005 */  bne        $v0, $a1, .L8000EDC8
/* F9B4 8000EDB4 24840001 */   addiu     $a0, $a0, 0x1
/* F9B8 8000EDB8 8E220044 */  lw         $v0, 0x44($s1)
/* F9BC 8000EDBC AC62FFC8 */  sw         $v0, -0x38($v1)
/* F9C0 8000EDC0 8E22007C */  lw         $v0, 0x7C($s1)
/* F9C4 8000EDC4 AC620000 */  sw         $v0, 0x0($v1)
.L8000EDC8:
/* F9C8 8000EDC8 0086102A */  slt        $v0, $a0, $a2
/* F9CC 8000EDCC 1440FFF7 */  bnez       $v0, .L8000EDAC
/* F9D0 8000EDD0 2463013C */   addiu     $v1, $v1, 0x13C
.L8000EDD4:
/* F9D4 8000EDD4 02001021 */  addu       $v0, $s0, $zero
/* F9D8 8000EDD8 8FBF0020 */  lw         $ra, 0x20($sp)
/* F9DC 8000EDDC 8FB1001C */  lw         $s1, 0x1C($sp)
/* F9E0 8000EDE0 8FB00018 */  lw         $s0, 0x18($sp)
/* F9E4 8000EDE4 03E00008 */  jr         $ra
/* F9E8 8000EDE8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000EDEC
/* F9EC 8000EDEC 90A20000 */  lbu        $v0, 0x0($a1)
/* F9F0 8000EDF0 3C018000 */  lui        $at, %hi(D_80000F40)
/* F9F4 8000EDF4 D4220F40 */  ldc1       $f2, %lo(D_80000F40)($at)
/* F9F8 8000EDF8 44820000 */  mtc1       $v0, $f0
/* F9FC 8000EDFC 46800020 */  cvt.s.w    $f0, $f0
/* FA00 8000EE00 46000021 */  cvt.d.s    $f0, $f0
/* FA04 8000EE04 46220002 */  mul.d      $f0, $f0, $f2
/* FA08 8000EE08 C4820070 */  lwc1       $f2, 0x70($a0)
/* FA0C 8000EE0C 46200020 */  cvt.s.d    $f0, $f0
/* FA10 8000EE10 46001082 */  mul.s      $f2, $f2, $f0
/* FA14 8000EE14 24A20001 */  addiu      $v0, $a1, 0x1
/* FA18 8000EE18 E480006C */  swc1       $f0, 0x6C($a0)
/* FA1C 8000EE1C 03E00008 */  jr         $ra
/* FA20 8000EE20 E4820024 */   swc1      $f2, 0x24($a0)

glabel func_8000EE24
/* FA24 8000EE24 90A20000 */  lbu        $v0, 0x0($a1)
/* FA28 8000EE28 A08200D4 */  sb         $v0, 0xD4($a0)
/* FA2C 8000EE2C 03E00008 */  jr         $ra
/* FA30 8000EE30 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8000EE34
/* FA34 8000EE34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FA38 8000EE38 AFB00010 */  sw         $s0, 0x10($sp)
/* FA3C 8000EE3C 00A08021 */  addu       $s0, $a1, $zero
/* FA40 8000EE40 AFBF0014 */  sw         $ra, 0x14($sp)
/* FA44 8000EE44 92040000 */  lbu        $a0, 0x0($s0)
/* FA48 8000EE48 3C028004 */  lui        $v0, %hi(D_80038EB0)
/* FA4C 8000EE4C 8C438EB0 */  lw         $v1, %lo(D_80038EB0)($v0)
/* FA50 8000EE50 24020001 */  addiu      $v0, $zero, 0x1
/* FA54 8000EE54 14620003 */  bne        $v1, $v0, .L8000EE64
/* FA58 8000EE58 26100001 */   addiu     $s0, $s0, 0x1
/* FA5C 8000EE5C 0C004833 */  jal        func_800120CC
/* FA60 8000EE60 00000000 */   nop
.L8000EE64:
/* FA64 8000EE64 02001021 */  addu       $v0, $s0, $zero
/* FA68 8000EE68 8FBF0014 */  lw         $ra, 0x14($sp)
/* FA6C 8000EE6C 8FB00010 */  lw         $s0, 0x10($sp)
/* FA70 8000EE70 03E00008 */  jr         $ra
/* FA74 8000EE74 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000EE78
/* FA78 8000EE78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FA7C 8000EE7C AFB00010 */  sw         $s0, 0x10($sp)
/* FA80 8000EE80 00A08021 */  addu       $s0, $a1, $zero
/* FA84 8000EE84 AFBF0014 */  sw         $ra, 0x14($sp)
/* FA88 8000EE88 92050000 */  lbu        $a1, 0x0($s0)
/* FA8C 8000EE8C 26100001 */  addiu      $s0, $s0, 0x1
/* FA90 8000EE90 92020000 */  lbu        $v0, 0x0($s0)
/* FA94 8000EE94 30420080 */  andi       $v0, $v0, 0x80
/* FA98 8000EE98 10400002 */  beqz       $v0, .L8000EEA4
/* FA9C 8000EE9C 26100001 */   addiu     $s0, $s0, 0x1
/* FAA0 8000EEA0 26100001 */  addiu      $s0, $s0, 0x1
.L8000EEA4:
/* FAA4 8000EEA4 8C820000 */  lw         $v0, 0x0($a0)
/* FAA8 8000EEA8 24030002 */  addiu      $v1, $zero, 0x2
/* FAAC 8000EEAC 30420003 */  andi       $v0, $v0, 0x3
/* FAB0 8000EEB0 14430009 */  bne        $v0, $v1, .L8000EED8
/* FAB4 8000EEB4 02001021 */   addu      $v0, $s0, $zero
/* FAB8 8000EEB8 3C028004 */  lui        $v0, %hi(D_80038EC0)
/* FABC 8000EEBC 8C428EC0 */  lw         $v0, %lo(D_80038EC0)($v0)
/* FAC0 8000EEC0 50400005 */  beql       $v0, $zero, .L8000EED8
/* FAC4 8000EEC4 02001021 */   addu      $v0, $s0, $zero
/* FAC8 8000EEC8 8C840044 */  lw         $a0, 0x44($a0)
/* FACC 8000EECC 0040F809 */  jalr       $v0
/* FAD0 8000EED0 00000000 */   nop
/* FAD4 8000EED4 02001021 */  addu       $v0, $s0, $zero
.L8000EED8:
/* FAD8 8000EED8 8FBF0014 */  lw         $ra, 0x14($sp)
/* FADC 8000EEDC 8FB00010 */  lw         $s0, 0x10($sp)
/* FAE0 8000EEE0 03E00008 */  jr         $ra
/* FAE4 8000EEE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000EEE8
/* FAE8 8000EEE8 A48000AC */  sh         $zero, 0xAC($a0)
/* FAEC 8000EEEC 03E00008 */  jr         $ra
/* FAF0 8000EEF0 00A01021 */   addu      $v0, $a1, $zero

glabel MusInitialize
/* FAF4 8000EEF4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FAF8 8000EEF8 AFB40028 */  sw         $s4, 0x28($sp)
/* FAFC 8000EEFC 0080A021 */  addu       $s4, $a0, $zero
/* FB00 8000EF00 3C028004 */  lui        $v0, %hi(D_80038F4C)
/* FB04 8000EF04 AFBF0034 */  sw         $ra, 0x34($sp)
/* FB08 8000EF08 AFB60030 */  sw         $s6, 0x30($sp)
/* FB0C 8000EF0C AFB5002C */  sw         $s5, 0x2C($sp)
/* FB10 8000EF10 AFB30024 */  sw         $s3, 0x24($sp)
/* FB14 8000EF14 AFB20020 */  sw         $s2, 0x20($sp)
/* FB18 8000EF18 AFB1001C */  sw         $s1, 0x1C($sp)
/* FB1C 8000EF1C AFB00018 */  sw         $s0, 0x18($sp)
/* FB20 8000EF20 8E830040 */  lw         $v1, 0x40($s4)
/* FB24 8000EF24 3C048004 */  lui        $a0, %hi(D_80038E84)
/* FB28 8000EF28 AC438F4C */  sw         $v1, %lo(D_80038F4C)($v0)
/* FB2C 8000EF2C 8E830000 */  lw         $v1, 0x0($s4)
/* FB30 8000EF30 3C028004 */  lui        $v0, %hi(D_80038ED4)
/* FB34 8000EF34 AC438ED4 */  sw         $v1, %lo(D_80038ED4)($v0)
/* FB38 8000EF38 3C038000 */  lui        $v1, %hi(D_80000300)
/* FB3C 8000EF3C 8E820004 */  lw         $v0, 0x4($s4)
/* FB40 8000EF40 8C630300 */  lw         $v1, %lo(D_80000300)($v1)
/* FB44 8000EF44 24420004 */  addiu      $v0, $v0, 0x4
/* FB48 8000EF48 14600004 */  bnez       $v1, .L8000EF5C
/* FB4C 8000EF4C AC828E84 */   sw        $v0, %lo(D_80038E84)($a0)
/* FB50 8000EF50 3C038004 */  lui        $v1, %hi(D_80038E94)
/* FB54 8000EF54 08003BD9 */  j          .L8000EF64
/* FB58 8000EF58 24020032 */   addiu     $v0, $zero, 0x32
.L8000EF5C:
/* FB5C 8000EF5C 3C038004 */  lui        $v1, %hi(D_80038E94)
/* FB60 8000EF60 2402003C */  addiu      $v0, $zero, 0x3C
.L8000EF64:
/* FB64 8000EF64 AC628E94 */  sw         $v0, %lo(D_80038E94)($v1)
/* FB68 8000EF68 3C03000F */  lui        $v1, (0xF4240 >> 16)
/* FB6C 8000EF6C 3C028004 */  lui        $v0, %hi(D_80038E94)
/* FB70 8000EF70 8C428E94 */  lw         $v0, %lo(D_80038E94)($v0)
/* FB74 8000EF74 34634240 */  ori        $v1, $v1, (0xF4240 & 0xFFFF)
/* FB78 8000EF78 0062001A */  div        $zero, $v1, $v0
/* FB7C 8000EF7C 14400002 */  bnez       $v0, .L8000EF88
/* FB80 8000EF80 00000000 */   nop
/* FB84 8000EF84 0007000D */  break      7
.L8000EF88:
/* FB88 8000EF88 2401FFFF */  addiu      $at, $zero, -0x1
/* FB8C 8000EF8C 14410004 */  bne        $v0, $at, .L8000EFA0
/* FB90 8000EF90 3C018000 */   lui       $at, (0x80000000 >> 16)
/* FB94 8000EF94 14610002 */  bne        $v1, $at, .L8000EFA0
/* FB98 8000EF98 00000000 */   nop
/* FB9C 8000EF9C 0006000D */  break      6
.L8000EFA0:
/* FBA0 8000EFA0 00001812 */  mflo       $v1
/* FBA4 8000EFA4 8E840010 */  lw         $a0, 0x10($s4)
/* FBA8 8000EFA8 8E850014 */  lw         $a1, 0x14($s4)
/* FBAC 8000EFAC 3C028004 */  lui        $v0, %hi(D_80038E98)
/* FBB0 8000EFB0 0C004AC4 */  jal        __MusIntMemInit
/* FBB4 8000EFB4 AC438E98 */   sw        $v1, %lo(D_80038E98)($v0)
/* FBB8 8000EFB8 8E840008 */  lw         $a0, 0x8($s4)
/* FBBC 8000EFBC 0C004964 */  jal        MusIntSchedInit
/* FBC0 8000EFC0 3C108004 */   lui       $s0, %hi(D_80038E84)
/* FBC4 8000EFC4 8E028E84 */  lw         $v0, %lo(D_80038E84)($s0)
/* FBC8 8000EFC8 2442FFFC */  addiu      $v0, $v0, -0x4
/* FBCC 8000EFCC 000220C0 */  sll        $a0, $v0, 3
/* FBD0 8000EFD0 00822023 */  subu       $a0, $a0, $v0
/* FBD4 8000EFD4 0C004AD7 */  jal        func_80012B5C
/* FBD8 8000EFD8 00042080 */   sll       $a0, $a0, 2
/* FBDC 8000EFDC 8E058E84 */  lw         $a1, %lo(D_80038E84)($s0)
/* FBE0 8000EFE0 3C038004 */  lui        $v1, %hi(D_80038E88)
/* FBE4 8000EFE4 AC628E88 */  sw         $v0, %lo(D_80038E88)($v1)
/* FBE8 8000EFE8 00052080 */  sll        $a0, $a1, 2
/* FBEC 8000EFEC 00852021 */  addu       $a0, $a0, $a1
/* FBF0 8000EFF0 00042100 */  sll        $a0, $a0, 4
/* FBF4 8000EFF4 00852023 */  subu       $a0, $a0, $a1
/* FBF8 8000EFF8 0C004AD7 */  jal        func_80012B5C
/* FBFC 8000EFFC 00042080 */   sll       $a0, $a0, 2
/* FC00 8000F000 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* FC04 8000F004 AC628E8C */  sw         $v0, %lo(D_80038E8C)($v1)
/* FC08 8000F008 3C038004 */  lui        $v1, %hi(D_80038E90)
/* FC0C 8000F00C 8E840024 */  lw         $a0, 0x24($s4)
/* FC10 8000F010 244204F0 */  addiu      $v0, $v0, 0x4F0
/* FC14 8000F014 0C003F5E */  jal        func_8000FD78
/* FC18 8000F018 AC628E90 */   sw        $v0, %lo(D_80038E90)($v1)
/* FC1C 8000F01C 8E840018 */  lw         $a0, 0x18($s4)
/* FC20 8000F020 3C028004 */  lui        $v0, %hi(D_80038EA8)
/* FC24 8000F024 AC408EA8 */  sw         $zero, %lo(D_80038EA8)($v0)
/* FC28 8000F028 3C028004 */  lui        $v0, %hi(D_80038EAC)
/* FC2C 8000F02C 10800006 */  beqz       $a0, .L8000F048
/* FC30 8000F030 AC408EAC */   sw        $zero, %lo(D_80038EAC)($v0)
/* FC34 8000F034 8E85001C */  lw         $a1, 0x1C($s4)
/* FC38 8000F038 10A00003 */  beqz       $a1, .L8000F048
/* FC3C 8000F03C 00000000 */   nop
/* FC40 8000F040 0C003E8B */  jal        MusPtrBankInitialize
/* FC44 8000F044 00000000 */   nop
.L8000F048:
/* FC48 8000F048 8E840020 */  lw         $a0, 0x20($s4)
/* FC4C 8000F04C 3C028004 */  lui        $v0, %hi(D_80038EBC)
/* FC50 8000F050 AC408EBC */  sw         $zero, %lo(D_80038EBC)($v0)
/* FC54 8000F054 3C028004 */  lui        $v0, %hi(D_80038EB8)
/* FC58 8000F058 10800003 */  beqz       $a0, .L8000F068
/* FC5C 8000F05C AC408EB8 */   sw        $zero, %lo(D_80038EB8)($v0)
/* FC60 8000F060 0C003EF5 */  jal        MusFxBankInitialize
/* FC64 8000F064 00000000 */   nop
.L8000F068:
/* FC68 8000F068 02802021 */  addu       $a0, $s4, $zero
/* FC6C 8000F06C 3C028004 */  lui        $v0, %hi(D_80038E94)
/* FC70 8000F070 8C458E94 */  lw         $a1, %lo(D_80038E94)($v0)
/* FC74 8000F074 3C028004 */  lui        $v0, %hi(D_80038EC0)
/* FC78 8000F078 3C038004 */  lui        $v1, %hi(D_80038EB4)
/* FC7C 8000F07C AC408EC0 */  sw         $zero, %lo(D_80038EC0)($v0)
/* FC80 8000F080 24020002 */  addiu      $v0, $zero, 0x2
/* FC84 8000F084 00403021 */  addu       $a2, $v0, $zero
/* FC88 8000F088 0C0049D4 */  jal        __MusIntAudManInit
/* FC8C 8000F08C AC628EB4 */   sw        $v0, %lo(D_80038EB4)($v1)
/* FC90 8000F090 24040003 */  addiu      $a0, $zero, 0x3
/* FC94 8000F094 0C003C62 */  jal        func_8000F188
/* FC98 8000F098 24057FFF */   addiu     $a1, $zero, 0x7FFF
/* FC9C 8000F09C 3C061234 */  lui        $a2, (0x12345678 >> 16)
/* FCA0 8000F0A0 34C65678 */  ori        $a2, $a2, (0x12345678 & 0xFFFF)
/* FCA4 8000F0A4 3C058004 */  lui        $a1, %hi(D_80038E70)
/* FCA8 8000F0A8 24A48E70 */  addiu      $a0, $a1, %lo(D_80038E70)
/* FCAC 8000F0AC 3C038004 */  lui        $v1, %hi(D_80038EA0)
/* FCB0 8000F0B0 24020001 */  addiu      $v0, $zero, 0x1
/* FCB4 8000F0B4 AC628EA0 */  sw         $v0, %lo(D_80038EA0)($v1)
/* FCB8 8000F0B8 3C028004 */  lui        $v0, %hi(D_80038EA4)
/* FCBC 8000F0BC AC468EA4 */  sw         $a2, %lo(D_80038EA4)($v0)
/* FCC0 8000F0C0 3C028001 */  lui        $v0, %hi(func_8000FF98)
/* FCC4 8000F0C4 2442FF98 */  addiu      $v0, $v0, %lo(func_8000FF98)
/* FCC8 8000F0C8 ACA08E70 */  sw         $zero, %lo(D_80038E70)($a1)
/* FCCC 8000F0CC AC820008 */  sw         $v0, 0x8($a0)
/* FCD0 8000F0D0 0C0053B0 */  jal        n_alSynAddPlayer
/* FCD4 8000F0D4 AC840004 */   sw        $a0, 0x4($a0)
/* FCD8 8000F0D8 3C038004 */  lui        $v1, %hi(D_80038E84)
/* FCDC 8000F0DC 8C628E84 */  lw         $v0, %lo(D_80038E84)($v1)
/* FCE0 8000F0E0 1840001D */  blez       $v0, .L8000F158
/* FCE4 8000F0E4 00008821 */   addu      $s1, $zero, $zero
/* FCE8 8000F0E8 3C138004 */  lui        $s3, %hi(D_80038E8C)
/* FCEC 8000F0EC 3C168004 */  lui        $s6, %hi(D_80038E88)
/* FCF0 8000F0F0 0060A821 */  addu       $s5, $v1, $zero
/* FCF4 8000F0F4 2412FF90 */  addiu      $s2, $zero, -0x70
/* FCF8 8000F0F8 02208021 */  addu       $s0, $s1, $zero
.L8000F0FC:
/* FCFC 8000F0FC 8E628E8C */  lw         $v0, %lo(D_80038E8C)($s3)
/* FD00 8000F100 02021021 */  addu       $v0, $s0, $v0
/* FD04 8000F104 A04000C9 */  sb         $zero, 0xC9($v0)
/* FD08 8000F108 8E648E8C */  lw         $a0, %lo(D_80038E8C)($s3)
/* FD0C 8000F10C 0C00448E */  jal        func_80011238
/* FD10 8000F110 00902021 */   addu      $a0, $a0, $s0
/* FD14 8000F114 A3A00014 */  sb         $zero, 0x14($sp)
/* FD18 8000F118 9682000E */  lhu        $v0, 0xE($s4)
/* FD1C 8000F11C A7A00012 */  sh         $zero, 0x12($sp)
/* FD20 8000F120 A7A20010 */  sh         $v0, 0x10($sp)
/* FD24 8000F124 2A220004 */  slti       $v0, $s1, 0x4
/* FD28 8000F128 54400006 */  bnel       $v0, $zero, .L8000F144
/* FD2C 8000F12C 2652001C */   addiu     $s2, $s2, 0x1C
/* FD30 8000F130 8EC48E88 */  lw         $a0, %lo(D_80038E88)($s6)
/* FD34 8000F134 27A50010 */  addiu      $a1, $sp, 0x10
/* FD38 8000F138 0C0053C4 */  jal        n_alSynAllocVoice
/* FD3C 8000F13C 00922021 */   addu      $a0, $a0, $s2
/* FD40 8000F140 2652001C */  addiu      $s2, $s2, 0x1C
.L8000F144:
/* FD44 8000F144 8EA28E84 */  lw         $v0, %lo(D_80038E84)($s5)
/* FD48 8000F148 26310001 */  addiu      $s1, $s1, 0x1
/* FD4C 8000F14C 0222102A */  slt        $v0, $s1, $v0
/* FD50 8000F150 1440FFEA */  bnez       $v0, .L8000F0FC
/* FD54 8000F154 2610013C */   addiu     $s0, $s0, 0x13C
.L8000F158:
/* FD58 8000F158 0C004AE3 */  jal        func_80012B8C
/* FD5C 8000F15C 00000000 */   nop
/* FD60 8000F160 8FBF0034 */  lw         $ra, 0x34($sp)
/* FD64 8000F164 8FB60030 */  lw         $s6, 0x30($sp)
/* FD68 8000F168 8FB5002C */  lw         $s5, 0x2C($sp)
/* FD6C 8000F16C 8FB40028 */  lw         $s4, 0x28($sp)
/* FD70 8000F170 8FB30024 */  lw         $s3, 0x24($sp)
/* FD74 8000F174 8FB20020 */  lw         $s2, 0x20($sp)
/* FD78 8000F178 8FB1001C */  lw         $s1, 0x1C($sp)
/* FD7C 8000F17C 8FB00018 */  lw         $s0, 0x18($sp)
/* FD80 8000F180 03E00008 */  jr         $ra
/* FD84 8000F184 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8000F188
/* FD88 8000F188 30820001 */  andi       $v0, $a0, 0x1
/* FD8C 8000F18C 10400002 */  beqz       $v0, .L8000F198
/* FD90 8000F190 3C028004 */   lui       $v0, %hi(D_80038E9C)
/* FD94 8000F194 A4458E9C */  sh         $a1, %lo(D_80038E9C)($v0)
.L8000F198:
/* FD98 8000F198 30820002 */  andi       $v0, $a0, 0x2
/* FD9C 8000F19C 10400002 */  beqz       $v0, .L8000F1A8
/* FDA0 8000F1A0 3C028004 */   lui       $v0, %hi(D_80038E9E)
/* FDA4 8000F1A4 A4458E9E */  sh         $a1, %lo(D_80038E9E)($v0)
.L8000F1A8:
/* FDA8 8000F1A8 03E00008 */  jr         $ra
/* FDAC 8000F1AC 00000000 */   nop

glabel MusStartSong
/* FDB0 8000F1B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FDB4 8000F1B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* FDB8 8000F1B8 0C0045B7 */  jal        func_800116DC
/* FDBC 8000F1BC AFB00010 */   sw        $s0, 0x10($sp)
/* FDC0 8000F1C0 00408021 */  addu       $s0, $v0, $zero
/* FDC4 8000F1C4 0C003ECC */  jal        MusHandleUnPause
/* FDC8 8000F1C8 02002021 */   addu      $a0, $s0, $zero
/* FDCC 8000F1CC 02001021 */  addu       $v0, $s0, $zero
/* FDD0 8000F1D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* FDD4 8000F1D4 8FB00010 */  lw         $s0, 0x10($sp)
/* FDD8 8000F1D8 03E00008 */  jr         $ra
/* FDDC 8000F1DC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000F1E0
/* FDE0 8000F1E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FDE4 8000F1E4 AFB50024 */  sw         $s5, 0x24($sp)
/* FDE8 8000F1E8 0080A821 */  addu       $s5, $a0, $zero
/* FDEC 8000F1EC AFB60028 */  sw         $s6, 0x28($sp)
/* FDF0 8000F1F0 00A0B021 */  addu       $s6, $a1, $zero
/* FDF4 8000F1F4 AFBF002C */  sw         $ra, 0x2C($sp)
/* FDF8 8000F1F8 AFB40020 */  sw         $s4, 0x20($sp)
/* FDFC 8000F1FC AFB3001C */  sw         $s3, 0x1C($sp)
/* FE00 8000F200 AFB20018 */  sw         $s2, 0x18($sp)
/* FE04 8000F204 AFB10014 */  sw         $s1, 0x14($sp)
/* FE08 8000F208 0C0045B7 */  jal        func_800116DC
/* FE0C 8000F20C AFB00010 */   sw        $s0, 0x10($sp)
/* FE10 8000F210 00009021 */  addu       $s2, $zero, $zero
/* FE14 8000F214 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* FE18 8000F218 8C718E8C */  lw         $s1, %lo(D_80038E8C)($v1)
/* FE1C 8000F21C 3C038004 */  lui        $v1, %hi(D_80038E84)
/* FE20 8000F220 8C638E84 */  lw         $v1, %lo(D_80038E84)($v1)
/* FE24 8000F224 18600076 */  blez       $v1, .L8000F400
/* FE28 8000F228 00409821 */   addu      $s3, $v0, $zero
/* FE2C 8000F22C 3C028003 */  lui        $v0, %hi(D_800306E0)
/* FE30 8000F230 245406E0 */  addiu      $s4, $v0, %lo(D_800306E0)
/* FE34 8000F234 26300034 */  addiu      $s0, $s1, 0x34
.L8000F238:
/* FE38 8000F238 8E020010 */  lw         $v0, 0x10($s0)
/* FE3C 8000F23C 5453006A */  bnel       $v0, $s3, .L8000F3E8
/* FE40 8000F240 26520001 */   addiu     $s2, $s2, 0x1
/* FE44 8000F244 8E020040 */  lw         $v0, 0x40($s0)
/* FE48 8000F248 54550067 */  bnel       $v0, $s5, .L8000F3E8
/* FE4C 8000F24C 26520001 */   addiu     $s2, $s2, 0x1
/* FE50 8000F250 8E02FFD0 */  lw         $v0, -0x30($s0)
/* FE54 8000F254 50400064 */  beql       $v0, $zero, .L8000F3E8
/* FE58 8000F258 26520001 */   addiu     $s2, $s2, 0x1
.L8000F25C:
/* FE5C 8000F25C 8E05FFD0 */  lw         $a1, -0x30($s0)
/* FE60 8000F260 80A20000 */  lb         $v0, 0x0($a1)
/* FE64 8000F264 90A30000 */  lbu        $v1, 0x0($a1)
/* FE68 8000F268 0441000F */  bgez       $v0, .L8000F2A8
/* FE6C 8000F26C 24A20001 */   addiu     $v0, $a1, 0x1
/* FE70 8000F270 240200AB */  addiu      $v0, $zero, 0xAB
/* FE74 8000F274 14620004 */  bne        $v1, $v0, .L8000F288
/* FE78 8000F278 02202021 */   addu      $a0, $s1, $zero
/* FE7C 8000F27C 90A20001 */  lbu        $v0, 0x1($a1)
/* FE80 8000F280 10560039 */  beq        $v0, $s6, .L8000F368
/* FE84 8000F284 00000000 */   nop
.L8000F288:
/* FE88 8000F288 3062007F */  andi       $v0, $v1, 0x7F
/* FE8C 8000F28C 00021080 */  sll        $v0, $v0, 2
/* FE90 8000F290 00541021 */  addu       $v0, $v0, $s4
/* FE94 8000F294 8C420000 */  lw         $v0, 0x0($v0)
/* FE98 8000F298 0040F809 */  jalr       $v0
/* FE9C 8000F29C 24A50001 */   addiu     $a1, $a1, 0x1
/* FEA0 8000F2A0 08003CD7 */  j          .L8000F35C
/* FEA4 8000F2A4 AE02FFD0 */   sw        $v0, -0x30($s0)
.L8000F2A8:
/* FEA8 8000F2A8 9203009E */  lbu        $v1, 0x9E($s0)
/* FEAC 8000F2AC 1060000D */  beqz       $v1, .L8000F2E4
/* FEB0 8000F2B0 AE02FFD0 */   sw        $v0, -0x30($s0)
/* FEB4 8000F2B4 90A20001 */  lbu        $v0, 0x1($a1)
/* FEB8 8000F2B8 24A30002 */  addiu      $v1, $a1, 0x2
/* FEBC 8000F2BC AE03FFD0 */  sw         $v1, -0x30($s0)
/* FEC0 8000F2C0 A2020087 */  sb         $v0, 0x87($s0)
/* FEC4 8000F2C4 82020087 */  lb         $v0, 0x87($s0)
/* FEC8 8000F2C8 92030087 */  lbu        $v1, 0x87($s0)
/* FECC 8000F2CC 04410007 */  bgez       $v0, .L8000F2EC
/* FED0 8000F2D0 3062007F */   andi      $v0, $v1, 0x7F
/* FED4 8000F2D4 A2020087 */  sb         $v0, 0x87($s0)
/* FED8 8000F2D8 A200009E */  sb         $zero, 0x9E($s0)
/* FEDC 8000F2DC 08003CBB */  j          .L8000F2EC
/* FEE0 8000F2E0 A202009F */   sb        $v0, 0x9F($s0)
.L8000F2E4:
/* FEE4 8000F2E4 9202009F */  lbu        $v0, 0x9F($s0)
/* FEE8 8000F2E8 A2020087 */  sb         $v0, 0x87($s0)
.L8000F2EC:
/* FEEC 8000F2EC 96030078 */  lhu        $v1, 0x78($s0)
/* FEF0 8000F2F0 10600004 */  beqz       $v1, .L8000F304
/* FEF4 8000F2F4 00000000 */   nop
/* FEF8 8000F2F8 92020083 */  lbu        $v0, 0x83($s0)
/* FEFC 8000F2FC 50400012 */  beql       $v0, $zero, .L8000F348
/* FF00 8000F300 A6030066 */   sh        $v1, 0x66($s0)
.L8000F304:
/* FF04 8000F304 8E04FFD0 */  lw         $a0, -0x30($s0)
/* FF08 8000F308 A2000083 */  sb         $zero, 0x83($s0)
/* FF0C 8000F30C 90850000 */  lbu        $a1, 0x0($a0)
/* FF10 8000F310 24840001 */  addiu      $a0, $a0, 0x1
/* FF14 8000F314 00051600 */  sll        $v0, $a1, 24
/* FF18 8000F318 04400004 */  bltz       $v0, .L8000F32C
/* FF1C 8000F31C AE04FFD0 */   sw        $a0, -0x30($s0)
/* FF20 8000F320 30A200FF */  andi       $v0, $a1, 0xFF
/* FF24 8000F324 08003CD2 */  j          .L8000F348
/* FF28 8000F328 A6020066 */   sh        $v0, 0x66($s0)
.L8000F32C:
/* FF2C 8000F32C 90830000 */  lbu        $v1, 0x0($a0)
/* FF30 8000F330 24820001 */  addiu      $v0, $a0, 0x1
/* FF34 8000F334 AE02FFD0 */  sw         $v0, -0x30($s0)
/* FF38 8000F338 30A2007F */  andi       $v0, $a1, 0x7F
/* FF3C 8000F33C 00021200 */  sll        $v0, $v0, 8
/* FF40 8000F340 00621821 */  addu       $v1, $v1, $v0
/* FF44 8000F344 A6030066 */  sh         $v1, 0x66($s0)
.L8000F348:
/* FF48 8000F348 96020066 */  lhu        $v0, 0x66($s0)
/* FF4C 8000F34C 8E03FFD8 */  lw         $v1, -0x28($s0)
/* FF50 8000F350 00021200 */  sll        $v0, $v0, 8
/* FF54 8000F354 00621821 */  addu       $v1, $v1, $v0
/* FF58 8000F358 AE03FFD8 */  sw         $v1, -0x28($s0)
.L8000F35C:
/* FF5C 8000F35C 8E02FFD0 */  lw         $v0, -0x30($s0)
/* FF60 8000F360 1440FFBE */  bnez       $v0, .L8000F25C
/* FF64 8000F364 00000000 */   nop
.L8000F368:
/* FF68 8000F368 8E02FFD8 */  lw         $v0, -0x28($s0)
/* FF6C 8000F36C 8E04FFD0 */  lw         $a0, -0x30($s0)
/* FF70 8000F370 10800011 */  beqz       $a0, .L8000F3B8
/* FF74 8000F374 AE020008 */   sw        $v0, 0x8($s0)
/* FF78 8000F378 90830002 */  lbu        $v1, 0x2($a0)
/* FF7C 8000F37C 28620080 */  slti       $v0, $v1, 0x80
/* FF80 8000F380 14400006 */  bnez       $v0, .L8000F39C
/* FF84 8000F384 24850003 */   addiu     $a1, $a0, 0x3
/* FF88 8000F388 3063007F */  andi       $v1, $v1, 0x7F
/* FF8C 8000F38C 00031A00 */  sll        $v1, $v1, 8
/* FF90 8000F390 90820003 */  lbu        $v0, 0x3($a0)
/* FF94 8000F394 24850004 */  addiu      $a1, $a0, 0x4
/* FF98 8000F398 00621825 */  or         $v1, $v1, $v0
.L8000F39C:
/* FF9C 8000F39C 8E02FFD8 */  lw         $v0, -0x28($s0)
/* FFA0 8000F3A0 A6030066 */  sh         $v1, 0x66($s0)
/* FFA4 8000F3A4 00031A00 */  sll        $v1, $v1, 8
/* FFA8 8000F3A8 A6000076 */  sh         $zero, 0x76($s0)
/* FFAC 8000F3AC AE05FFD0 */  sw         $a1, -0x30($s0)
/* FFB0 8000F3B0 00431023 */  subu       $v0, $v0, $v1
/* FFB4 8000F3B4 AE02FFD8 */  sw         $v0, -0x28($s0)
.L8000F3B8:
/* FFB8 8000F3B8 8E02FFD8 */  lw         $v0, -0x28($s0)
/* FFBC 8000F3BC 8E030004 */  lw         $v1, 0x4($s0)
/* FFC0 8000F3C0 10600003 */  beqz       $v1, .L8000F3D0
/* FFC4 8000F3C4 AE02000C */   sw        $v0, 0xC($s0)
/* FFC8 8000F3C8 0C004334 */  jal        func_80010CD0
/* FFCC 8000F3CC 02202021 */   addu      $a0, $s1, $zero
.L8000F3D0:
/* FFD0 8000F3D0 8E020000 */  lw         $v0, 0x0($s0)
/* FFD4 8000F3D4 50400004 */  beql       $v0, $zero, .L8000F3E8
/* FFD8 8000F3D8 26520001 */   addiu     $s2, $s2, 0x1
/* FFDC 8000F3DC 0C004363 */  jal        func_80010D8C
/* FFE0 8000F3E0 02202021 */   addu      $a0, $s1, $zero
/* FFE4 8000F3E4 26520001 */  addiu      $s2, $s2, 0x1
.L8000F3E8:
/* FFE8 8000F3E8 2610013C */  addiu      $s0, $s0, 0x13C
/* FFEC 8000F3EC 3C028004 */  lui        $v0, %hi(D_80038E84)
/* FFF0 8000F3F0 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* FFF4 8000F3F4 0242102A */  slt        $v0, $s2, $v0
/* FFF8 8000F3F8 1440FF8F */  bnez       $v0, .L8000F238
/* FFFC 8000F3FC 2631013C */   addiu     $s1, $s1, 0x13C
.L8000F400:
/* 10000 8000F400 0C003ECC */  jal        MusHandleUnPause
/* 10004 8000F404 02602021 */   addu      $a0, $s3, $zero
/* 10008 8000F408 02601021 */  addu       $v0, $s3, $zero
/* 1000C 8000F40C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 10010 8000F410 8FB60028 */  lw         $s6, 0x28($sp)
/* 10014 8000F414 8FB50024 */  lw         $s5, 0x24($sp)
/* 10018 8000F418 8FB40020 */  lw         $s4, 0x20($sp)
/* 1001C 8000F41C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10020 8000F420 8FB20018 */  lw         $s2, 0x18($sp)
/* 10024 8000F424 8FB10014 */  lw         $s1, 0x14($sp)
/* 10028 8000F428 8FB00010 */  lw         $s0, 0x10($sp)
/* 1002C 8000F42C 03E00008 */  jr         $ra
/* 10030 8000F430 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000F434
/* 10034 8000F434 00802821 */  addu       $a1, $a0, $zero
/* 10038 8000F438 3C028004 */  lui        $v0, %hi(D_80038EBC)
/* 1003C 8000F43C 8C448EBC */  lw         $a0, %lo(D_80038EBC)($v0)
/* 10040 8000F440 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10044 8000F444 AFBF001C */  sw         $ra, 0x1C($sp)
/* 10048 8000F448 14800009 */  bnez       $a0, .L8000F470
/* 1004C 8000F44C AFB00018 */   sw        $s0, 0x18($sp)
/* 10050 8000F450 3C028004 */  lui        $v0, %hi(D_80038EB8)
/* 10054 8000F454 8C448EB8 */  lw         $a0, %lo(D_80038EB8)($v0)
/* 10058 8000F458 14800007 */  bnez       $a0, .L8000F478
/* 1005C 8000F45C 3C108004 */   lui       $s0, %hi(D_80038EA8)
/* 10060 8000F460 3C028004 */  lui        $v0, %hi(D_80038EA8)
/* 10064 8000F464 AC408EA8 */  sw         $zero, %lo(D_80038EA8)($v0)
/* 10068 8000F468 08003D29 */  j          .L8000F4A4
/* 1006C 8000F46C 00001021 */   addu      $v0, $zero, $zero
.L8000F470:
/* 10070 8000F470 AC408EBC */  sw         $zero, %lo(D_80038EBC)($v0)
/* 10074 8000F474 3C108004 */  lui        $s0, %hi(D_80038EA8)
.L8000F478:
/* 10078 8000F478 8E028EA8 */  lw         $v0, %lo(D_80038EA8)($s0)
/* 1007C 8000F47C 14400004 */  bnez       $v0, .L8000F490
/* 10080 8000F480 2402FFFF */   addiu     $v0, $zero, -0x1
/* 10084 8000F484 8C820010 */  lw         $v0, 0x10($a0)
/* 10088 8000F488 AE028EA8 */  sw         $v0, %lo(D_80038EA8)($s0)
/* 1008C 8000F48C 2402FFFF */  addiu      $v0, $zero, -0x1
.L8000F490:
/* 10090 8000F490 24060080 */  addiu      $a2, $zero, 0x80
/* 10094 8000F494 00C03821 */  addu       $a3, $a2, $zero
/* 10098 8000F498 0C004583 */  jal        func_8001160C
/* 1009C 8000F49C AFA20010 */   sw        $v0, 0x10($sp)
/* 100A0 8000F4A0 AE008EA8 */  sw         $zero, %lo(D_80038EA8)($s0)
.L8000F4A4:
/* 100A4 8000F4A4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 100A8 8000F4A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 100AC 8000F4AC 03E00008 */  jr         $ra
/* 100B0 8000F4B0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel MusStartEffect2
/* 100B4 8000F4B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 100B8 8000F4B8 00805021 */  addu       $t2, $a0, $zero
/* 100BC 8000F4BC 00A06821 */  addu       $t5, $a1, $zero
/* 100C0 8000F4C0 3C028004 */  lui        $v0, %hi(D_80038EBC)
/* 100C4 8000F4C4 8C448EBC */  lw         $a0, %lo(D_80038EBC)($v0)
/* 100C8 8000F4C8 8FA80030 */  lw         $t0, 0x30($sp)
/* 100CC 8000F4CC 00C07021 */  addu       $t6, $a2, $zero
/* 100D0 8000F4D0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 100D4 8000F4D4 14800009 */  bnez       $a0, .L8000F4FC
/* 100D8 8000F4D8 AFB00018 */   sw        $s0, 0x18($sp)
/* 100DC 8000F4DC 3C028004 */  lui        $v0, %hi(D_80038EB8)
/* 100E0 8000F4E0 8C458EB8 */  lw         $a1, %lo(D_80038EB8)($v0)
/* 100E4 8000F4E4 14A00008 */  bnez       $a1, .L8000F508
/* 100E8 8000F4E8 3C098004 */   lui       $t1, %hi(D_80038EA8)
/* 100EC 8000F4EC 3C028004 */  lui        $v0, %hi(D_80038EA8)
/* 100F0 8000F4F0 AC408EA8 */  sw         $zero, %lo(D_80038EA8)($v0)
/* 100F4 8000F4F4 08003D71 */  j          .L8000F5C4
/* 100F8 8000F4F8 00001021 */   addu      $v0, $zero, $zero
.L8000F4FC:
/* 100FC 8000F4FC 00802821 */  addu       $a1, $a0, $zero
/* 10100 8000F500 AC408EBC */  sw         $zero, %lo(D_80038EBC)($v0)
/* 10104 8000F504 3C098004 */  lui        $t1, %hi(D_80038EA8)
.L8000F508:
/* 10108 8000F508 8D228EA8 */  lw         $v0, %lo(D_80038EA8)($t1)
/* 1010C 8000F50C 14400003 */  bnez       $v0, .L8000F51C
/* 10110 8000F510 00000000 */   nop
/* 10114 8000F514 8CA20010 */  lw         $v0, 0x10($a1)
/* 10118 8000F518 AD228EA8 */  sw         $v0, %lo(D_80038EA8)($t1)
.L8000F51C:
/* 1011C 8000F51C 10E00021 */  beqz       $a3, .L8000F5A4
/* 10120 8000F520 24060004 */   addiu     $a2, $zero, 0x4
/* 10124 8000F524 3C038004 */  lui        $v1, %hi(D_80038E90)
/* 10128 8000F528 3C0B8004 */  lui        $t3, %hi(D_80038E84)
/* 1012C 8000F52C 8D628E84 */  lw         $v0, %lo(D_80038E84)($t3)
/* 10130 8000F530 8C648E90 */  lw         $a0, %lo(D_80038E90)($v1)
/* 10134 8000F534 00C2102A */  slt        $v0, $a2, $v0
/* 10138 8000F538 1040001A */  beqz       $v0, .L8000F5A4
/* 1013C 8000F53C 240CFFFF */   addiu     $t4, $zero, -0x1
/* 10140 8000F540 000A10C0 */  sll        $v0, $t2, 3
/* 10144 8000F544 00A23821 */  addu       $a3, $a1, $v0
/* 10148 8000F548 01208021 */  addu       $s0, $t1, $zero
/* 1014C 8000F54C 01604821 */  addu       $t1, $t3, $zero
/* 10150 8000F550 24830078 */  addiu      $v1, $a0, 0x78
.L8000F554:
/* 10154 8000F554 9462002E */  lhu        $v0, 0x2E($v1)
/* 10158 8000F558 144A000D */  bne        $v0, $t2, .L8000F590
/* 1015C 8000F55C 24C60001 */   addiu     $a2, $a2, 0x1
/* 10160 8000F560 8C620000 */  lw         $v0, 0x0($v1)
/* 10164 8000F564 1445000B */  bne        $v0, $a1, .L8000F594
/* 10168 8000F568 2463013C */   addiu     $v1, $v1, 0x13C
/* 1016C 8000F56C 150C0002 */  bne        $t0, $t4, .L8000F578
/* 10170 8000F570 01403021 */   addu      $a2, $t2, $zero
/* 10174 8000F574 8CE8001C */  lw         $t0, 0x1C($a3)
.L8000F578:
/* 10178 8000F578 01A03821 */  addu       $a3, $t5, $zero
/* 1017C 8000F57C AFAE0010 */  sw         $t6, 0x10($sp)
/* 10180 8000F580 0C004558 */  jal        func_80011560
/* 10184 8000F584 AFA80014 */   sw        $t0, 0x14($sp)
/* 10188 8000F588 08003D71 */  j          .L8000F5C4
/* 1018C 8000F58C AE008EA8 */   sw        $zero, %lo(D_80038EA8)($s0)
.L8000F590:
/* 10190 8000F590 2463013C */  addiu      $v1, $v1, 0x13C
.L8000F594:
/* 10194 8000F594 8D228E84 */  lw         $v0, %lo(D_80038E84)($t1)
/* 10198 8000F598 00C2102A */  slt        $v0, $a2, $v0
/* 1019C 8000F59C 1440FFED */  bnez       $v0, .L8000F554
/* 101A0 8000F5A0 2484013C */   addiu     $a0, $a0, 0x13C
.L8000F5A4:
/* 101A4 8000F5A4 00A02021 */  addu       $a0, $a1, $zero
/* 101A8 8000F5A8 01402821 */  addu       $a1, $t2, $zero
/* 101AC 8000F5AC 01A03021 */  addu       $a2, $t5, $zero
/* 101B0 8000F5B0 01C03821 */  addu       $a3, $t6, $zero
/* 101B4 8000F5B4 0C004583 */  jal        func_8001160C
/* 101B8 8000F5B8 AFA80010 */   sw        $t0, 0x10($sp)
/* 101BC 8000F5BC 3C038004 */  lui        $v1, %hi(D_80038EA8)
/* 101C0 8000F5C0 AC608EA8 */  sw         $zero, %lo(D_80038EA8)($v1)
.L8000F5C4:
/* 101C4 8000F5C4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 101C8 8000F5C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 101CC 8000F5CC 03E00008 */  jr         $ra
/* 101D0 8000F5D0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel MusStop
/* 101D4 8000F5D4 14A00002 */  bnez       $a1, .L8000F5E0
/* 101D8 8000F5D8 00A04021 */   addu      $t0, $a1, $zero
/* 101DC 8000F5DC 24080001 */  addiu      $t0, $zero, 0x1
.L8000F5E0:
/* 101E0 8000F5E0 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 101E4 8000F5E4 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 101E8 8000F5E8 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* 101EC 8000F5EC 8C668E8C */  lw         $a2, %lo(D_80038E8C)($v1)
/* 101F0 8000F5F0 18400027 */  blez       $v0, .L8000F690
/* 101F4 8000F5F4 00003821 */   addu      $a3, $zero, $zero
/* 101F8 8000F5F8 308A0001 */  andi       $t2, $a0, 0x1
/* 101FC 8000F5FC 30840002 */  andi       $a0, $a0, 0x2
/* 10200 8000F600 240DFFFF */  addiu      $t5, $zero, -0x1
/* 10204 8000F604 240C0001 */  addiu      $t4, $zero, 0x1
/* 10208 8000F608 240BFFFE */  addiu      $t3, $zero, -0x2
/* 1020C 8000F60C 00404821 */  addu       $t1, $v0, $zero
/* 10210 8000F610 24C30010 */  addiu      $v1, $a2, 0x10
.L8000F614:
/* 10214 8000F614 8C620068 */  lw         $v0, 0x68($v1)
/* 10218 8000F618 10400005 */  beqz       $v0, .L8000F630
/* 1021C 8000F61C 00000000 */   nop
/* 10220 8000F620 15400005 */  bnez       $t2, .L8000F638
/* 10224 8000F624 00000000 */   nop
/* 10228 8000F628 08003DA0 */  j          .L8000F680
/* 1022C 8000F62C 24E70001 */   addiu     $a3, $a3, 0x1
.L8000F630:
/* 10230 8000F630 50800013 */  beql       $a0, $zero, .L8000F680
/* 10234 8000F634 24E70001 */   addiu     $a3, $a3, 0x1
.L8000F638:
/* 10238 8000F638 8C62FFF4 */  lw         $v0, -0xC($v1)
/* 1023C 8000F63C 50400010 */  beql       $v0, $zero, .L8000F680
/* 10240 8000F640 24E70001 */   addiu     $a3, $a3, 0x1
/* 10244 8000F644 8C620000 */  lw         $v0, 0x0($v1)
/* 10248 8000F648 544D000D */  bnel       $v0, $t5, .L8000F680
/* 1024C 8000F64C 24E70001 */   addiu     $a3, $a3, 0x1
/* 10250 8000F650 8CC20000 */  lw         $v0, 0x0($a2)
/* 10254 8000F654 30420001 */  andi       $v0, $v0, 0x1
/* 10258 8000F658 50400007 */  beql       $v0, $zero, .L8000F678
/* 1025C 8000F65C AC68000C */   sw        $t0, 0xC($v1)
/* 10260 8000F660 AC6C000C */  sw         $t4, 0xC($v1)
/* 10264 8000F664 AC600000 */  sw         $zero, 0x0($v1)
/* 10268 8000F668 8CC20000 */  lw         $v0, 0x0($a2)
/* 1026C 8000F66C 004B1024 */  and        $v0, $v0, $t3
/* 10270 8000F670 08003D9F */  j          .L8000F67C
/* 10274 8000F674 ACC20000 */   sw        $v0, 0x0($a2)
.L8000F678:
/* 10278 8000F678 AC650000 */  sw         $a1, 0x0($v1)
.L8000F67C:
/* 1027C 8000F67C 24E70001 */  addiu      $a3, $a3, 0x1
.L8000F680:
/* 10280 8000F680 2463013C */  addiu      $v1, $v1, 0x13C
/* 10284 8000F684 00E9102A */  slt        $v0, $a3, $t1
/* 10288 8000F688 1440FFE2 */  bnez       $v0, .L8000F614
/* 1028C 8000F68C 24C6013C */   addiu     $a2, $a2, 0x13C
.L8000F690:
/* 10290 8000F690 03E00008 */  jr         $ra
/* 10294 8000F694 00000000 */   nop

glabel MusAsk
/* 10298 8000F698 00002821 */  addu       $a1, $zero, $zero
/* 1029C 8000F69C 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 102A0 8000F6A0 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 102A4 8000F6A4 8C478E84 */  lw         $a3, %lo(D_80038E84)($v0)
/* 102A8 8000F6A8 8C628E8C */  lw         $v0, %lo(D_80038E8C)($v1)
/* 102AC 8000F6AC 18E00015 */  blez       $a3, .L8000F704
/* 102B0 8000F6B0 00A03021 */   addu      $a2, $a1, $zero
/* 102B4 8000F6B4 30880001 */  andi       $t0, $a0, 0x1
/* 102B8 8000F6B8 30840002 */  andi       $a0, $a0, 0x2
/* 102BC 8000F6BC 24430078 */  addiu      $v1, $v0, 0x78
.L8000F6C0:
/* 102C0 8000F6C0 8C62FF8C */  lw         $v0, -0x74($v1)
/* 102C4 8000F6C4 5040000C */  beql       $v0, $zero, .L8000F6F8
/* 102C8 8000F6C8 24A50001 */   addiu     $a1, $a1, 0x1
/* 102CC 8000F6CC 8C620000 */  lw         $v0, 0x0($v1)
/* 102D0 8000F6D0 10400005 */  beqz       $v0, .L8000F6E8
/* 102D4 8000F6D4 00000000 */   nop
/* 102D8 8000F6D8 55000006 */  bnel       $t0, $zero, .L8000F6F4
/* 102DC 8000F6DC 24C60001 */   addiu     $a2, $a2, 0x1
/* 102E0 8000F6E0 08003DBE */  j          .L8000F6F8
/* 102E4 8000F6E4 24A50001 */   addiu     $a1, $a1, 0x1
.L8000F6E8:
/* 102E8 8000F6E8 50800003 */  beql       $a0, $zero, .L8000F6F8
/* 102EC 8000F6EC 24A50001 */   addiu     $a1, $a1, 0x1
/* 102F0 8000F6F0 24C60001 */  addiu      $a2, $a2, 0x1
.L8000F6F4:
/* 102F4 8000F6F4 24A50001 */  addiu      $a1, $a1, 0x1
.L8000F6F8:
/* 102F8 8000F6F8 00A7102A */  slt        $v0, $a1, $a3
/* 102FC 8000F6FC 1440FFF0 */  bnez       $v0, .L8000F6C0
/* 10300 8000F700 2463013C */   addiu     $v1, $v1, 0x13C
.L8000F704:
/* 10304 8000F704 03E00008 */  jr         $ra
/* 10308 8000F708 00C01021 */   addu      $v0, $a2, $zero

glabel MusHandleStop
/* 1030C 8000F70C 10800029 */  beqz       $a0, .L8000F7B4
/* 10310 8000F710 00001021 */   addu      $v0, $zero, $zero
/* 10314 8000F714 14A00002 */  bnez       $a1, .L8000F720
/* 10318 8000F718 00A04821 */   addu      $t1, $a1, $zero
/* 1031C 8000F71C 24090001 */  addiu      $t1, $zero, 0x1
.L8000F720:
/* 10320 8000F720 00003821 */  addu       $a3, $zero, $zero
/* 10324 8000F724 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 10328 8000F728 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 1032C 8000F72C 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* 10330 8000F730 8C668E8C */  lw         $a2, %lo(D_80038E8C)($v1)
/* 10334 8000F734 1840001D */  blez       $v0, .L8000F7AC
/* 10338 8000F738 00E04021 */   addu      $t0, $a3, $zero
/* 1033C 8000F73C 240DFFFF */  addiu      $t5, $zero, -0x1
/* 10340 8000F740 240C0001 */  addiu      $t4, $zero, 0x1
/* 10344 8000F744 240BFFFE */  addiu      $t3, $zero, -0x2
/* 10348 8000F748 00405021 */  addu       $t2, $v0, $zero
/* 1034C 8000F74C 24C30010 */  addiu      $v1, $a2, 0x10
.L8000F750:
/* 10350 8000F750 8C620034 */  lw         $v0, 0x34($v1)
/* 10354 8000F754 54440011 */  bnel       $v0, $a0, .L8000F79C
/* 10358 8000F758 24E70001 */   addiu     $a3, $a3, 0x1
/* 1035C 8000F75C 8C620000 */  lw         $v0, 0x0($v1)
/* 10360 8000F760 544D000E */  bnel       $v0, $t5, .L8000F79C
/* 10364 8000F764 24E70001 */   addiu     $a3, $a3, 0x1
/* 10368 8000F768 8CC20000 */  lw         $v0, 0x0($a2)
/* 1036C 8000F76C 30420001 */  andi       $v0, $v0, 0x1
/* 10370 8000F770 50400007 */  beql       $v0, $zero, .L8000F790
/* 10374 8000F774 AC69000C */   sw        $t1, 0xC($v1)
/* 10378 8000F778 AC6C000C */  sw         $t4, 0xC($v1)
/* 1037C 8000F77C AC600000 */  sw         $zero, 0x0($v1)
/* 10380 8000F780 8CC20000 */  lw         $v0, 0x0($a2)
/* 10384 8000F784 004B1024 */  and        $v0, $v0, $t3
/* 10388 8000F788 08003DE5 */  j          .L8000F794
/* 1038C 8000F78C ACC20000 */   sw        $v0, 0x0($a2)
.L8000F790:
/* 10390 8000F790 AC650000 */  sw         $a1, 0x0($v1)
.L8000F794:
/* 10394 8000F794 25080001 */  addiu      $t0, $t0, 0x1
/* 10398 8000F798 24E70001 */  addiu      $a3, $a3, 0x1
.L8000F79C:
/* 1039C 8000F79C 2463013C */  addiu      $v1, $v1, 0x13C
/* 103A0 8000F7A0 00EA102A */  slt        $v0, $a3, $t2
/* 103A4 8000F7A4 1440FFEA */  bnez       $v0, .L8000F750
/* 103A8 8000F7A8 24C6013C */   addiu     $a2, $a2, 0x13C
.L8000F7AC:
/* 103AC 8000F7AC 03E00008 */  jr         $ra
/* 103B0 8000F7B0 01001021 */   addu      $v0, $t0, $zero
.L8000F7B4:
/* 103B4 8000F7B4 03E00008 */  jr         $ra
/* 103B8 8000F7B8 00000000 */   nop

glabel MusHandleAs
/* 103BC 8000F7BC 14800003 */  bnez       $a0, .L8000F7CC
/* 103C0 8000F7C0 00002821 */   addu      $a1, $zero, $zero
/* 103C4 8000F7C4 03E00008 */  jr         $ra
/* 103C8 8000F7C8 00001021 */   addu      $v0, $zero, $zero
.L8000F7CC:
/* 103CC 8000F7CC 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 103D0 8000F7D0 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 103D4 8000F7D4 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* 103D8 8000F7D8 8C638E8C */  lw         $v1, %lo(D_80038E8C)($v1)
/* 103DC 8000F7DC 18400009 */  blez       $v0, .L8000F804
/* 103E0 8000F7E0 00A03021 */   addu      $a2, $a1, $zero
/* 103E4 8000F7E4 00403821 */  addu       $a3, $v0, $zero
.L8000F7E8:
/* 103E8 8000F7E8 8C620044 */  lw         $v0, 0x44($v1)
/* 103EC 8000F7EC 50440001 */  beql       $v0, $a0, .L8000F7F4
/* 103F0 8000F7F0 24C60001 */   addiu     $a2, $a2, 0x1
.L8000F7F4:
/* 103F4 8000F7F4 24A50001 */  addiu      $a1, $a1, 0x1
/* 103F8 8000F7F8 00A7102A */  slt        $v0, $a1, $a3
/* 103FC 8000F7FC 1440FFFA */  bnez       $v0, .L8000F7E8
/* 10400 8000F800 2463013C */   addiu     $v1, $v1, 0x13C
.L8000F804:
/* 10404 8000F804 03E00008 */  jr         $ra
/* 10408 8000F808 00C01021 */   addu      $v0, $a2, $zero

glabel MusHandleSetVolume
/* 1040C 8000F80C 14800003 */  bnez       $a0, .L8000F81C
/* 10410 8000F810 00003021 */   addu      $a2, $zero, $zero
/* 10414 8000F814 03E00008 */  jr         $ra
/* 10418 8000F818 00001021 */   addu      $v0, $zero, $zero
.L8000F81C:
/* 1041C 8000F81C 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 10420 8000F820 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 10424 8000F824 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* 10428 8000F828 8C638E8C */  lw         $v1, %lo(D_80038E8C)($v1)
/* 1042C 8000F82C 1840000B */  blez       $v0, .L8000F85C
/* 10430 8000F830 00C03821 */   addu      $a3, $a2, $zero
/* 10434 8000F834 00404021 */  addu       $t0, $v0, $zero
/* 10438 8000F838 2463009E */  addiu      $v1, $v1, 0x9E
.L8000F83C:
/* 1043C 8000F83C 8C62FFA6 */  lw         $v0, -0x5A($v1)
/* 10440 8000F840 14440003 */  bne        $v0, $a0, .L8000F850
/* 10444 8000F844 24C60001 */   addiu     $a2, $a2, 0x1
/* 10448 8000F848 A4650000 */  sh         $a1, 0x0($v1)
/* 1044C 8000F84C 24E70001 */  addiu      $a3, $a3, 0x1
.L8000F850:
/* 10450 8000F850 00C8102A */  slt        $v0, $a2, $t0
/* 10454 8000F854 1440FFF9 */  bnez       $v0, .L8000F83C
/* 10458 8000F858 2463013C */   addiu     $v1, $v1, 0x13C
.L8000F85C:
/* 1045C 8000F85C 03E00008 */  jr         $ra
/* 10460 8000F860 00E01021 */   addu      $v0, $a3, $zero

glabel MusHandleSetPan
/* 10464 8000F864 14800003 */  bnez       $a0, .L8000F874
/* 10468 8000F868 00003021 */   addu      $a2, $zero, $zero
/* 1046C 8000F86C 03E00008 */  jr         $ra
/* 10470 8000F870 00001021 */   addu      $v0, $zero, $zero
.L8000F874:
/* 10474 8000F874 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 10478 8000F878 3C088004 */  lui        $t0, %hi(D_80038E84)
/* 1047C 8000F87C 8D028E84 */  lw         $v0, %lo(D_80038E84)($t0)
/* 10480 8000F880 8C638E8C */  lw         $v1, %lo(D_80038E8C)($v1)
/* 10484 8000F884 1840000D */  blez       $v0, .L8000F8BC
/* 10488 8000F888 00C03821 */   addu      $a3, $a2, $zero
/* 1048C 8000F88C 240900FF */  addiu      $t1, $zero, 0xFF
/* 10490 8000F890 246300BE */  addiu      $v1, $v1, 0xBE
.L8000F894:
/* 10494 8000F894 8C62FF86 */  lw         $v0, -0x7A($v1)
/* 10498 8000F898 14440004 */  bne        $v0, $a0, .L8000F8AC
/* 1049C 8000F89C 24C60001 */   addiu     $a2, $a2, 0x1
/* 104A0 8000F8A0 24E70001 */  addiu      $a3, $a3, 0x1
/* 104A4 8000F8A4 A465FFF2 */  sh         $a1, -0xE($v1)
/* 104A8 8000F8A8 A0690000 */  sb         $t1, 0x0($v1)
.L8000F8AC:
/* 104AC 8000F8AC 8D028E84 */  lw         $v0, %lo(D_80038E84)($t0)
/* 104B0 8000F8B0 00C2102A */  slt        $v0, $a2, $v0
/* 104B4 8000F8B4 1440FFF7 */  bnez       $v0, .L8000F894
/* 104B8 8000F8B8 2463013C */   addiu     $v1, $v1, 0x13C
.L8000F8BC:
/* 104BC 8000F8BC 03E00008 */  jr         $ra
/* 104C0 8000F8C0 00E01021 */   addu      $v0, $a3, $zero

glabel MusHandleSetFreqOffset
/* 104C4 8000F8C4 44851000 */  mtc1       $a1, $f2
/* 104C8 8000F8C8 14800003 */  bnez       $a0, .L8000F8D8
/* 104CC 8000F8CC 00002821 */   addu      $a1, $zero, $zero
/* 104D0 8000F8D0 03E00008 */  jr         $ra
/* 104D4 8000F8D4 00001021 */   addu      $v0, $zero, $zero
.L8000F8D8:
/* 104D8 8000F8D8 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 104DC 8000F8DC 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 104E0 8000F8E0 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* 104E4 8000F8E4 8C638E8C */  lw         $v1, %lo(D_80038E8C)($v1)
/* 104E8 8000F8E8 1840000D */  blez       $v0, .L8000F920
/* 104EC 8000F8EC 00A03021 */   addu      $a2, $a1, $zero
/* 104F0 8000F8F0 00403821 */  addu       $a3, $v0, $zero
/* 104F4 8000F8F4 24630030 */  addiu      $v1, $v1, 0x30
.L8000F8F8:
/* 104F8 8000F8F8 8C620014 */  lw         $v0, 0x14($v1)
/* 104FC 8000F8FC 14440005 */  bne        $v0, $a0, .L8000F914
/* 10500 8000F900 24A50001 */   addiu     $a1, $a1, 0x1
/* 10504 8000F904 C4600060 */  lwc1       $f0, 0x60($v1)
/* 10508 8000F908 46001000 */  add.s      $f0, $f2, $f0
/* 1050C 8000F90C 24C60001 */  addiu      $a2, $a2, 0x1
/* 10510 8000F910 E4600000 */  swc1       $f0, 0x0($v1)
.L8000F914:
/* 10514 8000F914 00A7102A */  slt        $v0, $a1, $a3
/* 10518 8000F918 1440FFF7 */  bnez       $v0, .L8000F8F8
/* 1051C 8000F91C 2463013C */   addiu     $v1, $v1, 0x13C
.L8000F920:
/* 10520 8000F920 03E00008 */  jr         $ra
/* 10524 8000F924 00C01021 */   addu      $v0, $a2, $zero

glabel func_8000F928
/* 10528 8000F928 1080001F */  beqz       $a0, .L8000F9A8
/* 1052C 8000F92C 00001021 */   addu      $v0, $zero, $zero
/* 10530 8000F930 1CA00003 */  bgtz       $a1, .L8000F940
/* 10534 8000F934 28A20101 */   slti      $v0, $a1, 0x101
/* 10538 8000F938 08003E52 */  j          .L8000F948
/* 1053C 8000F93C 24050001 */   addiu     $a1, $zero, 0x1
.L8000F940:
/* 10540 8000F940 50400001 */  beql       $v0, $zero, .L8000F948
/* 10544 8000F944 24050100 */   addiu     $a1, $zero, 0x100
.L8000F948:
/* 10548 8000F948 00003021 */  addu       $a2, $zero, $zero
/* 1054C 8000F94C 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 10550 8000F950 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 10554 8000F954 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* 10558 8000F958 8C638E8C */  lw         $v1, %lo(D_80038E8C)($v1)
/* 1055C 8000F95C 18400010 */  blez       $v0, .L8000F9A0
/* 10560 8000F960 00C03821 */   addu      $a3, $a2, $zero
/* 10564 8000F964 00404021 */  addu       $t0, $v0, $zero
/* 10568 8000F968 2463009C */  addiu      $v1, $v1, 0x9C
.L8000F96C:
/* 1056C 8000F96C 8C62FFA8 */  lw         $v0, -0x58($v1)
/* 10570 8000F970 14440008 */  bne        $v0, $a0, .L8000F994
/* 10574 8000F974 24C60001 */   addiu     $a2, $a2, 0x1
/* 10578 8000F978 9462000C */  lhu        $v0, 0xC($v1)
/* 1057C 8000F97C 00450018 */  mult       $v0, $a1
/* 10580 8000F980 24E70001 */  addiu      $a3, $a3, 0x1
/* 10584 8000F984 A465FFFC */  sh         $a1, -0x4($v1)
/* 10588 8000F988 00004812 */  mflo       $t1
/* 1058C 8000F98C 000911C3 */  sra        $v0, $t1, 7
/* 10590 8000F990 A4620000 */  sh         $v0, 0x0($v1)
.L8000F994:
/* 10594 8000F994 00C8102A */  slt        $v0, $a2, $t0
/* 10598 8000F998 1440FFF4 */  bnez       $v0, .L8000F96C
/* 1059C 8000F99C 2463013C */   addiu     $v1, $v1, 0x13C
.L8000F9A0:
/* 105A0 8000F9A0 03E00008 */  jr         $ra
/* 105A4 8000F9A4 00E01021 */   addu      $v0, $a3, $zero
.L8000F9A8:
/* 105A8 8000F9A8 03E00008 */  jr         $ra
/* 105AC 8000F9AC 00000000 */   nop

glabel func_8000F9B0
/* 105B0 8000F9B0 1080001C */  beqz       $a0, .L8000FA24
/* 105B4 8000F9B4 00001021 */   addu      $v0, $zero, $zero
/* 105B8 8000F9B8 04A10003 */  bgez       $a1, .L8000F9C8
/* 105BC 8000F9BC 28A20080 */   slti      $v0, $a1, 0x80
/* 105C0 8000F9C0 08003E74 */  j          .L8000F9D0
/* 105C4 8000F9C4 00002821 */   addu      $a1, $zero, $zero
.L8000F9C8:
/* 105C8 8000F9C8 50400001 */  beql       $v0, $zero, .L8000F9D0
/* 105CC 8000F9CC 2405007F */   addiu     $a1, $zero, 0x7F
.L8000F9D0:
/* 105D0 8000F9D0 00003021 */  addu       $a2, $zero, $zero
/* 105D4 8000F9D4 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 105D8 8000F9D8 3C088004 */  lui        $t0, %hi(D_80038E84)
/* 105DC 8000F9DC 8D028E84 */  lw         $v0, %lo(D_80038E84)($t0)
/* 105E0 8000F9E0 8C638E8C */  lw         $v1, %lo(D_80038E8C)($v1)
/* 105E4 8000F9E4 1840000D */  blez       $v0, .L8000FA1C
/* 105E8 8000F9E8 00C03821 */   addu      $a3, $a2, $zero
/* 105EC 8000F9EC 240900FF */  addiu      $t1, $zero, 0xFF
/* 105F0 8000F9F0 246300CC */  addiu      $v1, $v1, 0xCC
.L8000F9F4:
/* 105F4 8000F9F4 8C62FF78 */  lw         $v0, -0x88($v1)
/* 105F8 8000F9F8 14440004 */  bne        $v0, $a0, .L8000FA0C
/* 105FC 8000F9FC 24C60001 */   addiu     $a2, $a2, 0x1
/* 10600 8000FA00 24E70001 */  addiu      $a3, $a3, 0x1
/* 10604 8000FA04 A065FFFF */  sb         $a1, -0x1($v1)
/* 10608 8000FA08 A0690000 */  sb         $t1, 0x0($v1)
.L8000FA0C:
/* 1060C 8000FA0C 8D028E84 */  lw         $v0, %lo(D_80038E84)($t0)
/* 10610 8000FA10 00C2102A */  slt        $v0, $a2, $v0
/* 10614 8000FA14 1440FFF7 */  bnez       $v0, .L8000F9F4
/* 10618 8000FA18 2463013C */   addiu     $v1, $v1, 0x13C
.L8000FA1C:
/* 1061C 8000FA1C 03E00008 */  jr         $ra
/* 10620 8000FA20 00E01021 */   addu      $v0, $a3, $zero
.L8000FA24:
/* 10624 8000FA24 03E00008 */  jr         $ra
/* 10628 8000FA28 00000000 */   nop

glabel MusPtrBankInitialize
/* 1062C 8000FA2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10630 8000FA30 AFB00010 */  sw         $s0, 0x10($sp)
/* 10634 8000FA34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10638 8000FA38 0C00440B */  jal        func_8001102C
/* 1063C 8000FA3C 00808021 */   addu      $s0, $a0, $zero
/* 10640 8000FA40 3C038004 */  lui        $v1, %hi(D_80038EAC)
/* 10644 8000FA44 8C628EAC */  lw         $v0, %lo(D_80038EAC)($v1)
/* 10648 8000FA48 50400001 */  beql       $v0, $zero, .L8000FA50
/* 1064C 8000FA4C AC708EAC */   sw        $s0, %lo(D_80038EAC)($v1)
.L8000FA50:
/* 10650 8000FA50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10654 8000FA54 8FB00010 */  lw         $s0, 0x10($sp)
/* 10658 8000FA58 03E00008 */  jr         $ra
/* 1065C 8000FA5C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel MusPtrBankSetSingle
/* 10660 8000FA60 10800006 */  beqz       $a0, .L8000FA7C
/* 10664 8000FA64 3C028004 */   lui       $v0, %hi(D_80038EA8)
/* 10668 8000FA68 8C820010 */  lw         $v0, 0x10($a0)
/* 1066C 8000FA6C 04410003 */  bgez       $v0, .L8000FA7C
/* 10670 8000FA70 3C028004 */   lui       $v0, %hi(D_80038EA8)
/* 10674 8000FA74 AC448EA8 */  sw         $a0, %lo(D_80038EA8)($v0)
/* 10678 8000FA78 3C028004 */  lui        $v0, %hi(D_80038EA8)
.L8000FA7C:
/* 1067C 8000FA7C 8C428EA8 */  lw         $v0, %lo(D_80038EA8)($v0)
/* 10680 8000FA80 03E00008 */  jr         $ra
/* 10684 8000FA84 00000000 */   nop

glabel func_8000FA88
/* 10688 8000FA88 10800005 */  beqz       $a0, .L8000FAA0
/* 1068C 8000FA8C 00000000 */   nop
/* 10690 8000FA90 8C820010 */  lw         $v0, 0x10($a0)
/* 10694 8000FA94 04410002 */  bgez       $v0, .L8000FAA0
/* 10698 8000FA98 3C028004 */   lui       $v0, %hi(D_80038EAC)
/* 1069C 8000FA9C AC448EAC */  sw         $a0, %lo(D_80038EAC)($v0)
.L8000FAA0:
/* 106A0 8000FAA0 03E00008 */  jr         $ra
/* 106A4 8000FAA4 00000000 */   nop

glabel func_8000FAA8
/* 106A8 8000FAA8 3C028004 */  lui        $v0, %hi(D_80038EAC)
/* 106AC 8000FAAC 8C428EAC */  lw         $v0, %lo(D_80038EAC)($v0)
/* 106B0 8000FAB0 03E00008 */  jr         $ra
/* 106B4 8000FAB4 00000000 */   nop

glabel func_8000FAB8
/* 106B8 8000FAB8 14800006 */  bnez       $a0, .L8000FAD4
/* 106BC 8000FABC 3C038004 */   lui       $v1, %hi(D_80038E8C)
/* 106C0 8000FAC0 03E00008 */  jr         $ra
/* 106C4 8000FAC4 00001021 */   addu      $v0, $zero, $zero
.L8000FAC8:
/* 106C8 8000FAC8 8C62007C */  lw         $v0, %lo(D_8004007C)($v1)
/* 106CC 8000FACC 03E00008 */  jr         $ra
/* 106D0 8000FAD0 00000000 */   nop
.L8000FAD4:
/* 106D4 8000FAD4 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 106D8 8000FAD8 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* 106DC 8000FADC 8C638E8C */  lw         $v1, %lo(D_80038E8C)($v1)
/* 106E0 8000FAE0 18400008 */  blez       $v0, .L8000FB04
/* 106E4 8000FAE4 00002821 */   addu      $a1, $zero, $zero
/* 106E8 8000FAE8 00403021 */  addu       $a2, $v0, $zero
.L8000FAEC:
/* 106EC 8000FAEC 8C620044 */  lw         $v0, 0x44($v1)
/* 106F0 8000FAF0 1044FFF5 */  beq        $v0, $a0, .L8000FAC8
/* 106F4 8000FAF4 24A50001 */   addiu     $a1, $a1, 0x1
/* 106F8 8000FAF8 00A6102A */  slt        $v0, $a1, $a2
/* 106FC 8000FAFC 1440FFFB */  bnez       $v0, .L8000FAEC
/* 10700 8000FB00 2463013C */   addiu     $v1, $v1, 0x13C
.L8000FB04:
/* 10704 8000FB04 03E00008 */  jr         $ra
/* 10708 8000FB08 00001021 */   addu      $v0, $zero, $zero

glabel MusHandlePause
/* 1070C 8000FB0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10710 8000FB10 AFA40014 */  sw         $a0, 0x14($sp)
/* 10714 8000FB14 27A40010 */  addiu      $a0, $sp, 0x10
/* 10718 8000FB18 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1071C 8000FB1C 0C003FBF */  jal        func_8000FEFC
/* 10720 8000FB20 A3A00010 */   sb        $zero, 0x10($sp)
/* 10724 8000FB24 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10728 8000FB28 03E00008 */  jr         $ra
/* 1072C 8000FB2C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel MusHandleUnPause
/* 10730 8000FB30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10734 8000FB34 24020001 */  addiu      $v0, $zero, 0x1
/* 10738 8000FB38 AFA40014 */  sw         $a0, 0x14($sp)
/* 1073C 8000FB3C 27A40010 */  addiu      $a0, $sp, 0x10
/* 10740 8000FB40 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10744 8000FB44 0C003FBF */  jal        func_8000FEFC
/* 10748 8000FB48 A3A20010 */   sb        $v0, 0x10($sp)
/* 1074C 8000FB4C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10750 8000FB50 03E00008 */  jr         $ra
/* 10754 8000FB54 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000FB58
/* 10758 8000FB58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1075C 8000FB5C 24020002 */  addiu      $v0, $zero, 0x2
/* 10760 8000FB60 A3A20010 */  sb         $v0, 0x10($sp)
/* 10764 8000FB64 3C028004 */  lui        $v0, %hi(D_80038EB4)
/* 10768 8000FB68 AFA40014 */  sw         $a0, 0x14($sp)
/* 1076C 8000FB6C AC448EB4 */  sw         $a0, %lo(D_80038EB4)($v0)
/* 10770 8000FB70 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10774 8000FB74 0C003FBF */  jal        func_8000FEFC
/* 10778 8000FB78 27A40010 */   addiu     $a0, $sp, 0x10
/* 1077C 8000FB7C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10780 8000FB80 03E00008 */  jr         $ra
/* 10784 8000FB84 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000FB88
/* 10788 8000FB88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1078C 8000FB8C AFB00010 */  sw         $s0, 0x10($sp)
/* 10790 8000FB90 00808021 */  addu       $s0, $a0, $zero
/* 10794 8000FB94 24030001 */  addiu      $v1, $zero, 0x1
/* 10798 8000FB98 16000006 */  bnez       $s0, .L8000FBB4
/* 1079C 8000FB9C AFBF0014 */   sw        $ra, 0x14($sp)
/* 107A0 8000FBA0 3C028004 */  lui        $v0, %hi(D_80038EB4)
/* 107A4 8000FBA4 8C448EB4 */  lw         $a0, %lo(D_80038EB4)($v0)
/* 107A8 8000FBA8 0C003ED6 */  jal        func_8000FB58
/* 107AC 8000FBAC 00000000 */   nop
/* 107B0 8000FBB0 00401821 */  addu       $v1, $v0, $zero
.L8000FBB4:
/* 107B4 8000FBB4 10600002 */  beqz       $v1, .L8000FBC0
/* 107B8 8000FBB8 3C028004 */   lui       $v0, %hi(D_80038EB0)
/* 107BC 8000FBBC AC508EB0 */  sw         $s0, %lo(D_80038EB0)($v0)
.L8000FBC0:
/* 107C0 8000FBC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 107C4 8000FBC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 107C8 8000FBC8 00601021 */  addu       $v0, $v1, $zero
/* 107CC 8000FBCC 03E00008 */  jr         $ra
/* 107D0 8000FBD0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel MusFxBankInitialize
/* 107D4 8000FBD4 8C82000C */  lw         $v0, 0xC($a0)
/* 107D8 8000FBD8 30420001 */  andi       $v0, $v0, 0x1
/* 107DC 8000FBDC 14400017 */  bnez       $v0, .L8000FC3C
/* 107E0 8000FBE0 00803021 */   addu      $a2, $a0, $zero
/* 107E4 8000FBE4 3C038004 */  lui        $v1, %hi(D_80038EB8)
/* 107E8 8000FBE8 8C628EB8 */  lw         $v0, %lo(D_80038EB8)($v1)
/* 107EC 8000FBEC 50400001 */  beql       $v0, $zero, .L8000FBF4
/* 107F0 8000FBF0 AC648EB8 */   sw        $a0, %lo(D_80038EB8)($v1)
.L8000FBF4:
/* 107F4 8000FBF4 24020001 */  addiu      $v0, $zero, 0x1
/* 107F8 8000FBF8 AC82000C */  sw         $v0, 0xC($a0)
/* 107FC 8000FBFC 8C820014 */  lw         $v0, 0x14($a0)
/* 10800 8000FC00 8C830000 */  lw         $v1, 0x0($a0)
/* 10804 8000FC04 00002821 */  addu       $a1, $zero, $zero
/* 10808 8000FC08 AC800010 */  sw         $zero, 0x10($a0)
/* 1080C 8000FC0C 00821021 */  addu       $v0, $a0, $v0
/* 10810 8000FC10 1860000A */  blez       $v1, .L8000FC3C
/* 10814 8000FC14 AC820014 */   sw        $v0, 0x14($a0)
/* 10818 8000FC18 00801821 */  addu       $v1, $a0, $zero
.L8000FC1C:
/* 1081C 8000FC1C 8C620018 */  lw         $v0, 0x18($v1)
/* 10820 8000FC20 24A50001 */  addiu      $a1, $a1, 0x1
/* 10824 8000FC24 00C21021 */  addu       $v0, $a2, $v0
/* 10828 8000FC28 AC620018 */  sw         $v0, 0x18($v1)
/* 1082C 8000FC2C 8C820000 */  lw         $v0, 0x0($a0)
/* 10830 8000FC30 00A2102A */  slt        $v0, $a1, $v0
/* 10834 8000FC34 1440FFF9 */  bnez       $v0, .L8000FC1C
/* 10838 8000FC38 24630008 */   addiu     $v1, $v1, 0x8
.L8000FC3C:
/* 1083C 8000FC3C 03E00008 */  jr         $ra
/* 10840 8000FC40 00000000 */   nop

glabel MusFxBankNumberOfEffects
/* 10844 8000FC44 8C820004 */  lw         $v0, 0x4($a0)
/* 10848 8000FC48 03E00008 */  jr         $ra
/* 1084C 8000FC4C 00000000 */   nop

glabel func_8000FC50
/* 10850 8000FC50 3C028004 */  lui        $v0, %hi(D_80038EB8)
/* 10854 8000FC54 03E00008 */  jr         $ra
/* 10858 8000FC58 AC448EB8 */   sw        $a0, %lo(D_80038EB8)($v0)

glabel MusFxBankSetSingle
/* 1085C 8000FC5C 3C028004 */  lui        $v0, %hi(D_80038EBC)
/* 10860 8000FC60 03E00008 */  jr         $ra
/* 10864 8000FC64 AC448EBC */   sw        $a0, %lo(D_80038EBC)($v0)

glabel func_8000FC68
/* 10868 8000FC68 3C028004 */  lui        $v0, %hi(D_80038EB8)
/* 1086C 8000FC6C 8C428EB8 */  lw         $v0, %lo(D_80038EB8)($v0)
/* 10870 8000FC70 03E00008 */  jr         $ra
/* 10874 8000FC74 00000000 */   nop

glabel MusFxBankSetPtrBank
/* 10878 8000FC78 03E00008 */  jr         $ra
/* 1087C 8000FC7C AC850010 */   sw        $a1, 0x10($a0)

glabel func_8000FC80
/* 10880 8000FC80 8C820010 */  lw         $v0, 0x10($a0)
/* 10884 8000FC84 03E00008 */  jr         $ra
/* 10888 8000FC88 00000000 */   nop

glabel func_8000FC8C
/* 1088C 8000FC8C 3C028003 */  lui        $v0, %hi(D_800309BC)
/* 10890 8000FC90 03E00008 */  jr         $ra
/* 10894 8000FC94 AC4409BC */   sw        $a0, %lo(D_800309BC)($v0)

glabel func_8000FC98
/* 10898 8000FC98 14800003 */  bnez       $a0, .L8000FCA8
/* 1089C 8000FC9C 3C038004 */   lui       $v1, %hi(D_80038E8C)
/* 108A0 8000FCA0 03E00008 */  jr         $ra
/* 108A4 8000FCA4 00001021 */   addu      $v0, $zero, $zero
.L8000FCA8:
/* 108A8 8000FCA8 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 108AC 8000FCAC 8C468E84 */  lw         $a2, %lo(D_80038E84)($v0)
/* 108B0 8000FCB0 8C628E8C */  lw         $v0, %lo(D_80038E8C)($v1)
/* 108B4 8000FCB4 18C0000F */  blez       $a2, .L8000FCF4
/* 108B8 8000FCB8 00002821 */   addu      $a1, $zero, $zero
/* 108BC 8000FCBC 24430078 */  addiu      $v1, $v0, 0x78
.L8000FCC0:
/* 108C0 8000FCC0 8C62FFCC */  lw         $v0, -0x34($v1)
/* 108C4 8000FCC4 54440008 */  bnel       $v0, $a0, .L8000FCE8
/* 108C8 8000FCC8 24A50001 */   addiu     $a1, $a1, 0x1
/* 108CC 8000FCCC 8C62FFFC */  lw         $v0, -0x4($v1)
/* 108D0 8000FCD0 14400002 */  bnez       $v0, .L8000FCDC
/* 108D4 8000FCD4 00000000 */   nop
/* 108D8 8000FCD8 8C620000 */  lw         $v0, 0x0($v1)
.L8000FCDC:
/* 108DC 8000FCDC 8C420008 */  lw         $v0, 0x8($v0)
/* 108E0 8000FCE0 03E00008 */  jr         $ra
/* 108E4 8000FCE4 00000000 */   nop
.L8000FCE8:
/* 108E8 8000FCE8 00A6102A */  slt        $v0, $a1, $a2
/* 108EC 8000FCEC 1440FFF4 */  bnez       $v0, .L8000FCC0
/* 108F0 8000FCF0 2463013C */   addiu     $v1, $v1, 0x13C
.L8000FCF4:
/* 108F4 8000FCF4 03E00008 */  jr         $ra
/* 108F8 8000FCF8 00001021 */   addu      $v0, $zero, $zero

glabel func_8000FCFC
/* 108FC 8000FCFC 14800006 */  bnez       $a0, .L8000FD18
/* 10900 8000FD00 3C038004 */   lui       $v1, %hi(D_80038E8C)
/* 10904 8000FD04 03E00008 */  jr         $ra
/* 10908 8000FD08 00001021 */   addu      $v0, $zero, $zero
.L8000FD0C:
/* 1090C 8000FD0C 8C420020 */  lw         $v0, 0x20($v0)
/* 10910 8000FD10 03E00008 */  jr         $ra
/* 10914 8000FD14 00000000 */   nop
.L8000FD18:
/* 10918 8000FD18 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 1091C 8000FD1C 8C468E84 */  lw         $a2, %lo(D_80038E84)($v0)
/* 10920 8000FD20 8C628E8C */  lw         $v0, %lo(D_80038E8C)($v1)
/* 10924 8000FD24 18C0000F */  blez       $a2, .L8000FD64
/* 10928 8000FD28 00002821 */   addu      $a1, $zero, $zero
/* 1092C 8000FD2C 24430078 */  addiu      $v1, $v0, 0x78
.L8000FD30:
/* 10930 8000FD30 8C62FFCC */  lw         $v0, -0x34($v1)
/* 10934 8000FD34 54440008 */  bnel       $v0, $a0, .L8000FD58
/* 10938 8000FD38 24A50001 */   addiu     $a1, $a1, 0x1
/* 1093C 8000FD3C 8C62FFFC */  lw         $v0, -0x4($v1)
/* 10940 8000FD40 1440FFF2 */  bnez       $v0, .L8000FD0C
/* 10944 8000FD44 00000000 */   nop
/* 10948 8000FD48 8C620000 */  lw         $v0, 0x0($v1)
/* 1094C 8000FD4C 8C420014 */  lw         $v0, 0x14($v0)
/* 10950 8000FD50 03E00008 */  jr         $ra
/* 10954 8000FD54 00000000 */   nop
.L8000FD58:
/* 10958 8000FD58 00A6102A */  slt        $v0, $a1, $a2
/* 1095C 8000FD5C 1440FFF4 */  bnez       $v0, .L8000FD30
/* 10960 8000FD60 2463013C */   addiu     $v1, $v1, 0x13C
.L8000FD64:
/* 10964 8000FD64 03E00008 */  jr         $ra
/* 10968 8000FD68 00001021 */   addu      $v0, $zero, $zero

glabel func_8000FD6C
/* 1096C 8000FD6C 3C028004 */  lui        $v0, %hi(D_80038EC0)
/* 10970 8000FD70 03E00008 */  jr         $ra
/* 10974 8000FD74 AC448EC0 */   sw        $a0, %lo(D_80038EC0)($v0)

glabel func_8000FD78
/* 10978 8000FD78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1097C 8000FD7C AFB10014 */  sw         $s1, 0x14($sp)
/* 10980 8000FD80 00808821 */  addu       $s1, $a0, $zero
/* 10984 8000FD84 2A220040 */  slti       $v0, $s1, 0x40
/* 10988 8000FD88 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1098C 8000FD8C 10400003 */  beqz       $v0, .L8000FD9C
/* 10990 8000FD90 AFB00010 */   sw        $s0, 0x10($sp)
/* 10994 8000FD94 08003F6A */  j          .L8000FDA8
/* 10998 8000FD98 24110040 */   addiu     $s1, $zero, 0x40
.L8000FD9C:
/* 1099C 8000FD9C 2A220401 */  slti       $v0, $s1, 0x401
/* 109A0 8000FDA0 50400001 */  beql       $v0, $zero, .L8000FDA8
/* 109A4 8000FDA4 24110400 */   addiu     $s1, $zero, 0x400
.L8000FDA8:
/* 109A8 8000FDA8 0C004AD7 */  jal        func_80012B5C
/* 109AC 8000FDAC 001120C0 */   sll       $a0, $s1, 3
/* 109B0 8000FDB0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 109B4 8000FDB4 3C108004 */  lui        $s0, %hi(D_80038ED0)
/* 109B8 8000FDB8 AE028ED0 */  sw         $v0, %lo(D_80038ED0)($s0)
/* 109BC 8000FDBC 3C028004 */  lui        $v0, %hi(D_80038ECC)
/* 109C0 8000FDC0 AC518ECC */  sw         $s1, %lo(D_80038ECC)($v0)
/* 109C4 8000FDC4 8FB10014 */  lw         $s1, 0x14($sp)
/* 109C8 8000FDC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 109CC 8000FDCC 3C028004 */  lui        $v0, %hi(D_80038EC8)
/* 109D0 8000FDD0 AC408EC8 */  sw         $zero, %lo(D_80038EC8)($v0)
/* 109D4 8000FDD4 3C028004 */  lui        $v0, %hi(D_80038EC4)
/* 109D8 8000FDD8 AC408EC4 */  sw         $zero, %lo(D_80038EC4)($v0)
/* 109DC 8000FDDC 03E00008 */  jr         $ra
/* 109E0 8000FDE0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000FDE4
/* 109E4 8000FDE4 3C048004 */  lui        $a0, %hi(D_80038EC4)
/* 109E8 8000FDE8 3C058004 */  lui        $a1, %hi(D_80038EC8)
/* 109EC 8000FDEC 8C838EC4 */  lw         $v1, %lo(D_80038EC4)($a0)
/* 109F0 8000FDF0 8CA28EC8 */  lw         $v0, %lo(D_80038EC8)($a1)
/* 109F4 8000FDF4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 109F8 8000FDF8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 109FC 8000FDFC AFB3001C */  sw         $s3, 0x1C($sp)
/* 10A00 8000FE00 AFB20018 */  sw         $s2, 0x18($sp)
/* 10A04 8000FE04 AFB10014 */  sw         $s1, 0x14($sp)
/* 10A08 8000FE08 10620014 */  beq        $v1, $v0, .L8000FE5C
/* 10A0C 8000FE0C AFB00010 */   sw        $s0, 0x10($sp)
/* 10A10 8000FE10 3C138004 */  lui        $s3, %hi(D_80038ED0)
/* 10A14 8000FE14 00808021 */  addu       $s0, $a0, $zero
/* 10A18 8000FE18 3C128004 */  lui        $s2, %hi(D_80038ECC)
/* 10A1C 8000FE1C 00A08821 */  addu       $s1, $a1, $zero
.L8000FE20:
/* 10A20 8000FE20 8E048EC4 */  lw         $a0, %lo(D_80038EC4)($s0)
/* 10A24 8000FE24 8E628ED0 */  lw         $v0, %lo(D_80038ED0)($s3)
/* 10A28 8000FE28 000420C0 */  sll        $a0, $a0, 3
/* 10A2C 8000FE2C 0C003F9E */  jal        func_8000FE78
/* 10A30 8000FE30 00442021 */   addu      $a0, $v0, $a0
/* 10A34 8000FE34 8E028EC4 */  lw         $v0, %lo(D_80038EC4)($s0)
/* 10A38 8000FE38 8E438ECC */  lw         $v1, %lo(D_80038ECC)($s2)
/* 10A3C 8000FE3C 24420001 */  addiu      $v0, $v0, 0x1
/* 10A40 8000FE40 14430002 */  bne        $v0, $v1, .L8000FE4C
/* 10A44 8000FE44 AE028EC4 */   sw        $v0, %lo(D_80038EC4)($s0)
/* 10A48 8000FE48 AE008EC4 */  sw         $zero, %lo(D_80038EC4)($s0)
.L8000FE4C:
/* 10A4C 8000FE4C 8E038EC4 */  lw         $v1, %lo(D_80038EC4)($s0)
/* 10A50 8000FE50 8E228EC8 */  lw         $v0, %lo(D_80038EC8)($s1)
/* 10A54 8000FE54 1462FFF2 */  bne        $v1, $v0, .L8000FE20
/* 10A58 8000FE58 00000000 */   nop
.L8000FE5C:
/* 10A5C 8000FE5C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10A60 8000FE60 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10A64 8000FE64 8FB20018 */  lw         $s2, 0x18($sp)
/* 10A68 8000FE68 8FB10014 */  lw         $s1, 0x14($sp)
/* 10A6C 8000FE6C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10A70 8000FE70 03E00008 */  jr         $ra
/* 10A74 8000FE74 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000FE78
/* 10A78 8000FE78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10A7C 8000FE7C AFBF0010 */  sw         $ra, 0x10($sp)
/* 10A80 8000FE80 90830000 */  lbu        $v1, 0x0($a0)
/* 10A84 8000FE84 24020001 */  addiu      $v0, $zero, 0x1
/* 10A88 8000FE88 10620010 */  beq        $v1, $v0, .L8000FECC
/* 10A8C 8000FE8C 28620002 */   slti      $v0, $v1, 0x2
/* 10A90 8000FE90 50400005 */  beql       $v0, $zero, .L8000FEA8
/* 10A94 8000FE94 24020002 */   addiu     $v0, $zero, 0x2
/* 10A98 8000FE98 10600007 */  beqz       $v1, .L8000FEB8
/* 10A9C 8000FE9C 2405FFFE */   addiu     $a1, $zero, -0x2
/* 10AA0 8000FEA0 08003FBC */  j          .L8000FEF0
/* 10AA4 8000FEA4 00000000 */   nop
.L8000FEA8:
/* 10AA8 8000FEA8 1062000E */  beq        $v1, $v0, .L8000FEE4
/* 10AAC 8000FEAC 00000000 */   nop
/* 10AB0 8000FEB0 08003FBC */  j          .L8000FEF0
/* 10AB4 8000FEB4 00000000 */   nop
.L8000FEB8:
/* 10AB8 8000FEB8 8C840004 */  lw         $a0, 0x4($a0)
/* 10ABC 8000FEBC 0C004630 */  jal        func_800118C0
/* 10AC0 8000FEC0 24060001 */   addiu     $a2, $zero, 0x1
/* 10AC4 8000FEC4 08003FBC */  j          .L8000FEF0
/* 10AC8 8000FEC8 00000000 */   nop
.L8000FECC:
/* 10ACC 8000FECC 8C840004 */  lw         $a0, 0x4($a0)
/* 10AD0 8000FED0 2405FFFE */  addiu      $a1, $zero, -0x2
/* 10AD4 8000FED4 0C004630 */  jal        func_800118C0
/* 10AD8 8000FED8 00003021 */   addu      $a2, $zero, $zero
/* 10ADC 8000FEDC 08003FBC */  j          .L8000FEF0
/* 10AE0 8000FEE0 00000000 */   nop
.L8000FEE4:
/* 10AE4 8000FEE4 8C840004 */  lw         $a0, 0x4($a0)
/* 10AE8 8000FEE8 0C004833 */  jal        func_800120CC
/* 10AEC 8000FEEC 00000000 */   nop
.L8000FEF0:
/* 10AF0 8000FEF0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10AF4 8000FEF4 03E00008 */  jr         $ra
/* 10AF8 8000FEF8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000FEFC
/* 10AFC 8000FEFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10B00 8000FF00 00802821 */  addu       $a1, $a0, $zero
/* 10B04 8000FF04 AFB10014 */  sw         $s1, 0x14($sp)
/* 10B08 8000FF08 3C118004 */  lui        $s1, %hi(D_80038EC8)
/* 10B0C 8000FF0C 3C028004 */  lui        $v0, %hi(D_80038ECC)
/* 10B10 8000FF10 8E248EC8 */  lw         $a0, %lo(D_80038EC8)($s1)
/* 10B14 8000FF14 8C438ECC */  lw         $v1, %lo(D_80038ECC)($v0)
/* 10B18 8000FF18 AFB00010 */  sw         $s0, 0x10($sp)
/* 10B1C 8000FF1C 24820001 */  addiu      $v0, $a0, 0x1
/* 10B20 8000FF20 0043001A */  div        $zero, $v0, $v1
/* 10B24 8000FF24 14600002 */  bnez       $v1, .L8000FF30
/* 10B28 8000FF28 00000000 */   nop
/* 10B2C 8000FF2C 0007000D */  break      7
.L8000FF30:
/* 10B30 8000FF30 2401FFFF */  addiu      $at, $zero, -0x1
/* 10B34 8000FF34 14610004 */  bne        $v1, $at, .L8000FF48
/* 10B38 8000FF38 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 10B3C 8000FF3C 14410002 */  bne        $v0, $at, .L8000FF48
/* 10B40 8000FF40 00000000 */   nop
/* 10B44 8000FF44 0006000D */  break      6
.L8000FF48:
/* 10B48 8000FF48 00008010 */  mfhi       $s0
/* 10B4C 8000FF4C 3C028004 */  lui        $v0, %hi(D_80038EC4)
/* 10B50 8000FF50 8C428EC4 */  lw         $v0, %lo(D_80038EC4)($v0)
/* 10B54 8000FF54 1202000A */  beq        $s0, $v0, .L8000FF80
/* 10B58 8000FF58 AFBF0018 */   sw        $ra, 0x18($sp)
/* 10B5C 8000FF5C 3C028004 */  lui        $v0, %hi(D_80038ED0)
/* 10B60 8000FF60 000420C0 */  sll        $a0, $a0, 3
/* 10B64 8000FF64 8C428ED0 */  lw         $v0, %lo(D_80038ED0)($v0)
/* 10B68 8000FF68 24060008 */  addiu      $a2, $zero, 0x8
/* 10B6C 8000FF6C 0C004AF5 */  jal        func_80012BD4
/* 10B70 8000FF70 00442021 */   addu      $a0, $v0, $a0
/* 10B74 8000FF74 24020001 */  addiu      $v0, $zero, 0x1
/* 10B78 8000FF78 08003FE1 */  j          .L8000FF84
/* 10B7C 8000FF7C AE308EC8 */   sw        $s0, %lo(D_80038EC8)($s1)
.L8000FF80:
/* 10B80 8000FF80 00001021 */  addu       $v0, $zero, $zero
.L8000FF84:
/* 10B84 8000FF84 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10B88 8000FF88 8FB10014 */  lw         $s1, 0x14($sp)
/* 10B8C 8000FF8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10B90 8000FF90 03E00008 */  jr         $ra
/* 10B94 8000FF94 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000FF98
/* 10B98 8000FF98 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10B9C 8000FF9C AFBF0028 */  sw         $ra, 0x28($sp)
/* 10BA0 8000FFA0 AFB50024 */  sw         $s5, 0x24($sp)
/* 10BA4 8000FFA4 AFB40020 */  sw         $s4, 0x20($sp)
/* 10BA8 8000FFA8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10BAC 8000FFAC AFB20018 */  sw         $s2, 0x18($sp)
/* 10BB0 8000FFB0 AFB10014 */  sw         $s1, 0x14($sp)
/* 10BB4 8000FFB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 10BB8 8000FFB8 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 10BBC 8000FFBC 0C003F79 */  jal        func_8000FDE4
/* 10BC0 8000FFC0 2412FFFC */   addiu     $s2, $zero, -0x4
/* 10BC4 8000FFC4 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 10BC8 8000FFC8 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 10BCC 8000FFCC 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* 10BD0 8000FFD0 8C718E8C */  lw         $s1, %lo(D_80038E8C)($v1)
/* 10BD4 8000FFD4 00521021 */  addu       $v0, $v0, $s2
/* 10BD8 8000FFD8 0242102A */  slt        $v0, $s2, $v0
/* 10BDC 8000FFDC 10400081 */  beqz       $v0, .L800101E4
/* 10BE0 8000FFE0 2414FFFF */   addiu     $s4, $zero, -0x1
/* 10BE4 8000FFE4 3C158004 */  lui        $s5, %hi(D_80038E88)
/* 10BE8 8000FFE8 263000AA */  addiu      $s0, $s1, 0xAA
/* 10BEC 8000FFEC 2413FF90 */  addiu      $s3, $zero, -0x70
.L8000FFF0:
/* 10BF0 8000FFF0 8E02FF5A */  lw         $v0, -0xA6($s0)
/* 10BF4 8000FFF4 50400073 */  beql       $v0, $zero, .L800101C4
/* 10BF8 8000FFF8 2673001C */   addiu     $s3, $s3, 0x1C
/* 10BFC 8000FFFC 8E220000 */  lw         $v0, 0x0($s1)
/* 10C00 80010000 30420001 */  andi       $v0, $v0, 0x1
/* 10C04 80010004 5440006F */  bnel       $v0, $zero, .L800101C4
/* 10C08 80010008 2673001C */   addiu     $s3, $s3, 0x1C
/* 10C0C 8001000C 8E02FF5E */  lw         $v0, -0xA2($s0)
/* 10C10 80010010 10400003 */  beqz       $v0, .L80010020
/* 10C14 80010014 02202021 */   addu      $a0, $s1, $zero
/* 10C18 80010018 0C00418F */  jal        func_8001063C
/* 10C1C 8001001C 02402821 */   addu      $a1, $s2, $zero
.L80010020:
/* 10C20 80010020 9603FFF2 */  lhu        $v1, -0xE($s0)
/* 10C24 80010024 8E02FF62 */  lw         $v0, -0x9E($s0)
/* 10C28 80010028 00432021 */  addu       $a0, $v0, $v1
/* 10C2C 8001002C 9603FFF0 */  lhu        $v1, -0x10($s0)
/* 10C30 80010030 24027FFF */  addiu      $v0, $zero, 0x7FFF
/* 10C34 80010034 10620012 */  beq        $v1, $v0, .L80010080
/* 10C38 80010038 AE04FF62 */   sw        $a0, -0x9E($s0)
/* 10C3C 8001003C 8E02FF92 */  lw         $v0, -0x6E($s0)
/* 10C40 80010040 00441023 */  subu       $v0, $v0, $a0
/* 10C44 80010044 0441000B */  bgez       $v0, .L80010074
/* 10C48 80010048 00000000 */   nop
.L8001004C:
/* 10C4C 8001004C 8E02FF5A */  lw         $v0, -0xA6($s0)
/* 10C50 80010050 1040005B */  beqz       $v0, .L800101C0
/* 10C54 80010054 02202021 */   addu      $a0, $s1, $zero
/* 10C58 80010058 0C004085 */  jal        func_80010214
/* 10C5C 8001005C 02402821 */   addu      $a1, $s2, $zero
/* 10C60 80010060 8E02FF92 */  lw         $v0, -0x6E($s0)
/* 10C64 80010064 8E03FF62 */  lw         $v1, -0x9E($s0)
/* 10C68 80010068 00431023 */  subu       $v0, $v0, $v1
/* 10C6C 8001006C 0440FFF7 */  bltz       $v0, .L8001004C
/* 10C70 80010070 00000000 */   nop
.L80010074:
/* 10C74 80010074 8E02FF5A */  lw         $v0, -0xA6($s0)
/* 10C78 80010078 50400052 */  beql       $v0, $zero, .L800101C4
/* 10C7C 8001007C 2673001C */   addiu     $s3, $s3, 0x1C
.L80010080:
/* 10C80 80010080 8E02FF8E */  lw         $v0, -0x72($s0)
/* 10C84 80010084 10400008 */  beqz       $v0, .L800100A8
/* 10C88 80010088 00000000 */   nop
/* 10C8C 8001008C 8E02FF6A */  lw         $v0, -0x96($s0)
/* 10C90 80010090 8E03FF62 */  lw         $v1, -0x9E($s0)
/* 10C94 80010094 00431023 */  subu       $v0, $v0, $v1
/* 10C98 80010098 04410003 */  bgez       $v0, .L800100A8
/* 10C9C 8001009C 00000000 */   nop
/* 10CA0 800100A0 0C004334 */  jal        func_80010CD0
/* 10CA4 800100A4 02202021 */   addu      $a0, $s1, $zero
.L800100A8:
/* 10CA8 800100A8 8E02FF8A */  lw         $v0, -0x76($s0)
/* 10CAC 800100AC 10400008 */  beqz       $v0, .L800100D0
/* 10CB0 800100B0 00000000 */   nop
/* 10CB4 800100B4 8E02FF6E */  lw         $v0, -0x92($s0)
/* 10CB8 800100B8 8E03FF62 */  lw         $v1, -0x9E($s0)
/* 10CBC 800100BC 00431023 */  subu       $v0, $v0, $v1
/* 10CC0 800100C0 04410003 */  bgez       $v0, .L800100D0
/* 10CC4 800100C4 00000000 */   nop
/* 10CC8 800100C8 0C004363 */  jal        func_80010D8C
/* 10CCC 800100CC 02202021 */   addu      $a0, $s1, $zero
.L800100D0:
/* 10CD0 800100D0 8E02FF66 */  lw         $v0, -0x9A($s0)
/* 10CD4 800100D4 1054000D */  beq        $v0, $s4, .L8001010C
/* 10CD8 800100D8 2442FFFF */   addiu     $v0, $v0, -0x1
/* 10CDC 800100DC 1454000B */  bne        $v0, $s4, .L8001010C
/* 10CE0 800100E0 AE02FF66 */   sw        $v0, -0x9A($s0)
/* 10CE4 800100E4 02202021 */  addu       $a0, $s1, $zero
/* 10CE8 800100E8 0C003934 */  jal        func_8000E4D0
/* 10CEC 800100EC 00002821 */   addu      $a1, $zero, $zero
/* 10CF0 800100F0 9203001F */  lbu        $v1, 0x1F($s0)
/* 10CF4 800100F4 1060002D */  beqz       $v1, .L800101AC
/* 10CF8 800100F8 AE02FF5A */   sw        $v0, -0xA6($s0)
/* 10CFC 800100FC A200001F */  sb         $zero, 0x1F($s0)
/* 10D00 80010100 8EA48E88 */  lw         $a0, %lo(D_80038E88)($s5)
/* 10D04 80010104 0C0054F8 */  jal        func_800153E0
/* 10D08 80010108 00932021 */   addu      $a0, $a0, $s3
.L8001010C:
/* 10D0C 8001010C 9202001F */  lbu        $v0, 0x1F($s0)
/* 10D10 80010110 10400026 */  beqz       $v0, .L800101AC
/* 10D14 80010114 00000000 */   nop
/* 10D18 80010118 92020019 */  lbu        $v0, 0x19($s0)
/* 10D1C 8001011C 10400003 */  beqz       $v0, .L8001012C
/* 10D20 80010120 00000000 */   nop
/* 10D24 80010124 0C00425E */  jal        func_80010978
/* 10D28 80010128 02202021 */   addu      $a0, $s1, $zero
.L8001012C:
/* 10D2C 8001012C 9202002A */  lbu        $v0, 0x2A($s0)
/* 10D30 80010130 10400008 */  beqz       $v0, .L80010154
/* 10D34 80010134 00000000 */   nop
/* 10D38 80010138 8E02FFEA */  lw         $v0, -0x16($s0)
/* 10D3C 8001013C 8E03FF62 */  lw         $v1, -0x9E($s0)
/* 10D40 80010140 00431023 */  subu       $v0, $v0, $v1
/* 10D44 80010144 04410003 */  bgez       $v0, .L80010154
/* 10D48 80010148 00000000 */   nop
/* 10D4C 8001014C 0C0042DC */  jal        func_80010B70
/* 10D50 80010150 02202021 */   addu      $a0, $s1, $zero
.L80010154:
/* 10D54 80010154 9202002B */  lbu        $v0, 0x2B($s0)
/* 10D58 80010158 C614FF86 */  lwc1       $f20, -0x7A($s0)
/* 10D5C 8001015C 10400004 */  beqz       $v0, .L80010170
/* 10D60 80010160 00000000 */   nop
/* 10D64 80010164 0C00431D */  jal        func_80010C74
/* 10D68 80010168 02202021 */   addu      $a0, $s1, $zero
/* 10D6C 8001016C 4600A500 */  add.s      $f20, $f20, $f0
.L80010170:
/* 10D70 80010170 92020024 */  lbu        $v0, 0x24($s0)
/* 10D74 80010174 10400004 */  beqz       $v0, .L80010188
/* 10D78 80010178 00000000 */   nop
/* 10D7C 8001017C 0C004307 */  jal        func_80010C1C
/* 10D80 80010180 02202021 */   addu      $a0, $s1, $zero
/* 10D84 80010184 4600A500 */  add.s      $f20, $f20, $f0
.L80010188:
/* 10D88 80010188 8E02FF5E */  lw         $v0, -0xA2($s0)
/* 10D8C 8001018C 14400007 */  bnez       $v0, .L800101AC
/* 10D90 80010190 02202021 */   addu      $a0, $s1, $zero
/* 10D94 80010194 4406A000 */  mfc1       $a2, $f20
/* 10D98 80010198 0C004201 */  jal        func_80010804
/* 10D9C 8001019C 02402821 */   addu      $a1, $s2, $zero
/* 10DA0 800101A0 02202021 */  addu       $a0, $s1, $zero
/* 10DA4 800101A4 0C0041AE */  jal        func_800106B8
/* 10DA8 800101A8 02402821 */   addu      $a1, $s2, $zero
.L800101AC:
/* 10DAC 800101AC 8E02FF62 */  lw         $v0, -0x9E($s0)
/* 10DB0 800101B0 8E03FF96 */  lw         $v1, -0x6A($s0)
/* 10DB4 800101B4 00431023 */  subu       $v0, $v0, $v1
/* 10DB8 800101B8 00021202 */  srl        $v0, $v0, 8
/* 10DBC 800101BC A6020000 */  sh         $v0, 0x0($s0)
.L800101C0:
/* 10DC0 800101C0 2673001C */  addiu      $s3, $s3, 0x1C
.L800101C4:
/* 10DC4 800101C4 26520001 */  addiu      $s2, $s2, 0x1
/* 10DC8 800101C8 2610013C */  addiu      $s0, $s0, 0x13C
/* 10DCC 800101CC 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 10DD0 800101D0 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* 10DD4 800101D4 2442FFFC */  addiu      $v0, $v0, -0x4
/* 10DD8 800101D8 0242102A */  slt        $v0, $s2, $v0
/* 10DDC 800101DC 1440FF84 */  bnez       $v0, .L8000FFF0
/* 10DE0 800101E0 2631013C */   addiu     $s1, $s1, 0x13C
.L800101E4:
/* 10DE4 800101E4 3C028004 */  lui        $v0, %hi(D_80038E98)
/* 10DE8 800101E8 8C428E98 */  lw         $v0, %lo(D_80038E98)($v0)
/* 10DEC 800101EC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 10DF0 800101F0 8FB50024 */  lw         $s5, 0x24($sp)
/* 10DF4 800101F4 8FB40020 */  lw         $s4, 0x20($sp)
/* 10DF8 800101F8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10DFC 800101FC 8FB20018 */  lw         $s2, 0x18($sp)
/* 10E00 80010200 8FB10014 */  lw         $s1, 0x14($sp)
/* 10E04 80010204 8FB00010 */  lw         $s0, 0x10($sp)
/* 10E08 80010208 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 10E0C 8001020C 03E00008 */  jr         $ra
/* 10E10 80010210 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80010214
/* 10E14 80010214 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10E18 80010218 AFB10014 */  sw         $s1, 0x14($sp)
/* 10E1C 8001021C 00808821 */  addu       $s1, $a0, $zero
/* 10E20 80010220 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10E24 80010224 00A09821 */  addu       $s3, $a1, $zero
/* 10E28 80010228 AFBF0024 */  sw         $ra, 0x24($sp)
/* 10E2C 8001022C AFB40020 */  sw         $s4, 0x20($sp)
/* 10E30 80010230 AFB20018 */  sw         $s2, 0x18($sp)
/* 10E34 80010234 AFB00010 */  sw         $s0, 0x10($sp)
/* 10E38 80010238 8E250004 */  lw         $a1, 0x4($s1)
/* 10E3C 8001023C 10A0000F */  beqz       $a1, .L8001027C
/* 10E40 80010240 3C028003 */   lui       $v0, %hi(D_800306E0)
/* 10E44 80010244 245006E0 */  addiu      $s0, $v0, %lo(D_800306E0)
.L80010248:
/* 10E48 80010248 80A20000 */  lb         $v0, 0x0($a1)
/* 10E4C 8001024C 0441000B */  bgez       $v0, .L8001027C
/* 10E50 80010250 00403021 */   addu      $a2, $v0, $zero
/* 10E54 80010254 02202021 */  addu       $a0, $s1, $zero
/* 10E58 80010258 30C2007F */  andi       $v0, $a2, 0x7F
/* 10E5C 8001025C 00021080 */  sll        $v0, $v0, 2
/* 10E60 80010260 00501021 */  addu       $v0, $v0, $s0
/* 10E64 80010264 8C420000 */  lw         $v0, 0x0($v0)
/* 10E68 80010268 0040F809 */  jalr       $v0
/* 10E6C 8001026C 24A50001 */   addiu     $a1, $a1, 0x1
/* 10E70 80010270 00402821 */  addu       $a1, $v0, $zero
/* 10E74 80010274 14A0FFF4 */  bnez       $a1, .L80010248
/* 10E78 80010278 00000000 */   nop
.L8001027C:
/* 10E7C 8001027C 10A000D7 */  beqz       $a1, .L800105DC
/* 10E80 80010280 AE250004 */   sw        $a1, 0x4($s1)
/* 10E84 80010284 C6200050 */  lwc1       $f0, 0x50($s1)
/* 10E88 80010288 922200D2 */  lbu        $v0, 0xD2($s1)
/* 10E8C 8001028C 00A01821 */  addu       $v1, $a1, $zero
/* 10E90 80010290 E620004C */  swc1       $f0, 0x4C($s1)
/* 10E94 80010294 90720000 */  lbu        $s2, 0x0($v1)
/* 10E98 80010298 24630001 */  addiu      $v1, $v1, 0x1
/* 10E9C 8001029C 1040000D */  beqz       $v0, .L800102D4
/* 10EA0 800102A0 AE230004 */   sw        $v1, 0x4($s1)
/* 10EA4 800102A4 90620000 */  lbu        $v0, 0x0($v1)
/* 10EA8 800102A8 24630001 */  addiu      $v1, $v1, 0x1
/* 10EAC 800102AC AE230004 */  sw         $v1, 0x4($s1)
/* 10EB0 800102B0 A22200BB */  sb         $v0, 0xBB($s1)
/* 10EB4 800102B4 822200BB */  lb         $v0, 0xBB($s1)
/* 10EB8 800102B8 922300BB */  lbu        $v1, 0xBB($s1)
/* 10EBC 800102BC 04410007 */  bgez       $v0, .L800102DC
/* 10EC0 800102C0 3062007F */   andi      $v0, $v1, 0x7F
/* 10EC4 800102C4 A22200BB */  sb         $v0, 0xBB($s1)
/* 10EC8 800102C8 A22000D2 */  sb         $zero, 0xD2($s1)
/* 10ECC 800102CC 080040B7 */  j          .L800102DC
/* 10ED0 800102D0 A22200D3 */   sb        $v0, 0xD3($s1)
.L800102D4:
/* 10ED4 800102D4 922200D3 */  lbu        $v0, 0xD3($s1)
/* 10ED8 800102D8 A22200BB */  sb         $v0, 0xBB($s1)
.L800102DC:
/* 10EDC 800102DC 962300AC */  lhu        $v1, 0xAC($s1)
/* 10EE0 800102E0 1060000D */  beqz       $v1, .L80010318
/* 10EE4 800102E4 00000000 */   nop
/* 10EE8 800102E8 922200B7 */  lbu        $v0, 0xB7($s1)
/* 10EEC 800102EC 5040001A */  beql       $v0, $zero, .L80010358
/* 10EF0 800102F0 A623009A */   sh        $v1, 0x9A($s1)
/* 10EF4 800102F4 8E240004 */  lw         $a0, 0x4($s1)
/* 10EF8 800102F8 A22000B7 */  sb         $zero, 0xB7($s1)
/* 10EFC 800102FC 90860000 */  lbu        $a2, 0x0($a0)
/* 10F00 80010300 24840001 */  addiu      $a0, $a0, 0x1
/* 10F04 80010304 00061600 */  sll        $v0, $a2, 24
/* 10F08 80010308 04410009 */  bgez       $v0, .L80010330
/* 10F0C 8001030C AE240004 */   sw        $a0, 0x4($s1)
/* 10F10 80010310 080040CF */  j          .L8001033C
/* 10F14 80010314 00000000 */   nop
.L80010318:
/* 10F18 80010318 8E240004 */  lw         $a0, 0x4($s1)
/* 10F1C 8001031C 90860000 */  lbu        $a2, 0x0($a0)
/* 10F20 80010320 24840001 */  addiu      $a0, $a0, 0x1
/* 10F24 80010324 00061600 */  sll        $v0, $a2, 24
/* 10F28 80010328 04400004 */  bltz       $v0, .L8001033C
/* 10F2C 8001032C AE240004 */   sw        $a0, 0x4($s1)
.L80010330:
/* 10F30 80010330 30C200FF */  andi       $v0, $a2, 0xFF
/* 10F34 80010334 080040D6 */  j          .L80010358
/* 10F38 80010338 A622009A */   sh        $v0, 0x9A($s1)
.L8001033C:
/* 10F3C 8001033C 90830000 */  lbu        $v1, 0x0($a0)
/* 10F40 80010340 24820001 */  addiu      $v0, $a0, 0x1
/* 10F44 80010344 AE220004 */  sw         $v0, 0x4($s1)
/* 10F48 80010348 30C2007F */  andi       $v0, $a2, 0x7F
/* 10F4C 8001034C 00021200 */  sll        $v0, $v0, 8
/* 10F50 80010350 00621821 */  addu       $v1, $v1, $v0
/* 10F54 80010354 A623009A */  sh         $v1, 0x9A($s1)
.L80010358:
/* 10F58 80010358 8E22003C */  lw         $v0, 0x3C($s1)
/* 10F5C 8001035C 9623009A */  lhu        $v1, 0x9A($s1)
/* 10F60 80010360 922400CF */  lbu        $a0, 0xCF($s1)
/* 10F64 80010364 8E250074 */  lw         $a1, 0x74($s1)
/* 10F68 80010368 A62000AA */  sh         $zero, 0xAA($s1)
/* 10F6C 8001036C A22000D1 */  sb         $zero, 0xD1($s1)
/* 10F70 80010370 00031A00 */  sll        $v1, $v1, 8
/* 10F74 80010374 AE220040 */  sw         $v0, 0x40($s1)
/* 10F78 80010378 00431021 */  addu       $v0, $v0, $v1
/* 10F7C 8001037C AE22003C */  sw         $v0, 0x3C($s1)
/* 10F80 80010380 10A0000C */  beqz       $a1, .L800103B4
/* 10F84 80010384 A22400D0 */   sb        $a0, 0xD0($s1)
/* 10F88 80010388 8E220084 */  lw         $v0, 0x84($s1)
/* 10F8C 8001038C 1440000A */  bnez       $v0, .L800103B8
/* 10F90 80010390 24020060 */   addiu     $v0, $zero, 0x60
/* 10F94 80010394 962200AE */  lhu        $v0, 0xAE($s1)
/* 10F98 80010398 8CA30020 */  lw         $v1, 0x20($a1)
/* 10F9C 8001039C 00021040 */  sll        $v0, $v0, 1
/* 10FA0 800103A0 00431021 */  addu       $v0, $v0, $v1
/* 10FA4 800103A4 94430000 */  lhu        $v1, 0x0($v0)
/* 10FA8 800103A8 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 10FAC 800103AC 50620001 */  beql       $v1, $v0, .L800103B4
/* 10FB0 800103B0 24120060 */   addiu     $s2, $zero, 0x60
.L800103B4:
/* 10FB4 800103B4 24020060 */  addiu      $v0, $zero, 0x60
.L800103B8:
/* 10FB8 800103B8 1242007C */  beq        $s2, $v0, .L800105AC
/* 10FBC 800103BC 00000000 */   nop
/* 10FC0 800103C0 8E220084 */  lw         $v0, 0x84($s1)
/* 10FC4 800103C4 8E34007C */  lw         $s4, 0x7C($s1)
/* 10FC8 800103C8 10400018 */  beqz       $v0, .L8001042C
/* 10FCC 800103CC 00128040 */   sll       $s0, $s2, 1
/* 10FD0 800103D0 02128021 */  addu       $s0, $s0, $s2
/* 10FD4 800103D4 00108040 */  sll        $s0, $s0, 1
/* 10FD8 800103D8 02021021 */  addu       $v0, $s0, $v0
/* 10FDC 800103DC 94430000 */  lhu        $v1, 0x0($v0)
/* 10FE0 800103E0 8E220084 */  lw         $v0, 0x84($s1)
/* 10FE4 800103E4 02202021 */  addu       $a0, $s1, $zero
/* 10FE8 800103E8 02021021 */  addu       $v0, $s0, $v0
/* 10FEC 800103EC A62300AE */  sh         $v1, 0xAE($s1)
/* 10FF0 800103F0 90420004 */  lbu        $v0, 0x4($v0)
/* 10FF4 800103F4 8E230084 */  lw         $v1, 0x84($s1)
/* 10FF8 800103F8 00021042 */  srl        $v0, $v0, 1
/* 10FFC 800103FC 02031821 */  addu       $v1, $s0, $v1
/* 11000 80010400 A22200BD */  sb         $v0, 0xBD($s1)
/* 11004 80010404 94630002 */  lhu        $v1, 0x2($v1)
/* 11008 80010408 8E220074 */  lw         $v0, 0x74($s1)
/* 1100C 8001040C 000328C0 */  sll        $a1, $v1, 3
/* 11010 80010410 8C420018 */  lw         $v0, 0x18($v0)
/* 11014 80010414 00A32823 */  subu       $a1, $a1, $v1
/* 11018 80010418 0C003954 */  jal        func_8000E550
/* 1101C 8001041C 00452821 */   addu      $a1, $v0, $a1
/* 11020 80010420 8E220084 */  lw         $v0, 0x84($s1)
/* 11024 80010424 02028021 */  addu       $s0, $s0, $v0
/* 11028 80010428 92120005 */  lbu        $s2, 0x5($s0)
.L8001042C:
/* 1102C 8001042C 922200D6 */  lbu        $v0, 0xD6($s1)
/* 11030 80010430 14400003 */  bnez       $v0, .L80010440
/* 11034 80010434 00000000 */   nop
/* 11038 80010438 0C004241 */  jal        func_80010904
/* 1103C 8001043C 02202021 */   addu      $a0, $s1, $zero
.L80010440:
/* 11040 80010440 922200D4 */  lbu        $v0, 0xD4($s1)
/* 11044 80010444 10400003 */  beqz       $v0, .L80010454
/* 11048 80010448 00000000 */   nop
/* 1104C 8001044C 0C0042D5 */  jal        func_80010B54
/* 11050 80010450 02202021 */   addu      $a0, $s1, $zero
.L80010454:
/* 11054 80010454 8E220074 */  lw         $v0, 0x74($s1)
/* 11058 80010458 963000AE */  lhu        $s0, 0xAE($s1)
/* 1105C 8001045C 10400004 */  beqz       $v0, .L80010470
/* 11060 80010460 00000000 */   nop
/* 11064 80010464 8C430020 */  lw         $v1, 0x20($v0)
/* 11068 80010468 0800411F */  j          .L8001047C
/* 1106C 8001046C 00101040 */   sll       $v0, $s0, 1
.L80010470:
/* 11070 80010470 8E220078 */  lw         $v0, 0x78($s1)
/* 11074 80010474 8C430014 */  lw         $v1, 0x14($v0)
/* 11078 80010478 00101040 */  sll        $v0, $s0, 1
.L8001047C:
/* 1107C 8001047C 00431021 */  addu       $v0, $v0, $v1
/* 11080 80010480 94500000 */  lhu        $s0, 0x0($v0)
/* 11084 80010484 922200D7 */  lbu        $v0, 0xD7($s1)
/* 11088 80010488 1440001B */  bnez       $v0, .L800104F8
/* 1108C 8001048C 24020001 */   addiu     $v0, $zero, 0x1
/* 11090 80010490 8E83002C */  lw         $v1, 0x2C($s4)
/* 11094 80010494 00101080 */  sll        $v0, $s0, 2
/* 11098 80010498 00431021 */  addu       $v0, $v0, $v1
/* 1109C 8001049C 8C420000 */  lw         $v0, 0x0($v0)
/* 110A0 800104A0 922300C9 */  lbu        $v1, 0xC9($s1)
/* 110A4 800104A4 10600010 */  beqz       $v1, .L800104E8
/* 110A8 800104A8 AE220008 */   sw        $v0, 0x8($s1)
/* 110AC 800104AC 962200A0 */  lhu        $v0, 0xA0($s1)
/* 110B0 800104B0 1040000D */  beqz       $v0, .L800104E8
/* 110B4 800104B4 3C028004 */   lui       $v0, %hi(D_80038E98)
/* 110B8 800104B8 00002821 */  addu       $a1, $zero, $zero
/* 110BC 800104BC 8C468E98 */  lw         $a2, %lo(D_80038E98)($v0)
/* 110C0 800104C0 3C028004 */  lui        $v0, %hi(D_80038E88)
/* 110C4 800104C4 001320C0 */  sll        $a0, $s3, 3
/* 110C8 800104C8 00932023 */  subu       $a0, $a0, $s3
/* 110CC 800104CC 8C428E88 */  lw         $v0, %lo(D_80038E88)($v0)
/* 110D0 800104D0 00042080 */  sll        $a0, $a0, 2
/* 110D4 800104D4 A62000A0 */  sh         $zero, 0xA0($s1)
/* 110D8 800104D8 0C0054A8 */  jal        func_800152A0
/* 110DC 800104DC 00442021 */   addu      $a0, $v0, $a0
/* 110E0 800104E0 0800413E */  j          .L800104F8
/* 110E4 800104E4 24020001 */   addiu     $v0, $zero, 0x1
.L800104E8:
/* 110E8 800104E8 02202021 */  addu       $a0, $s1, $zero
/* 110EC 800104EC 0C00418F */  jal        func_8001063C
/* 110F0 800104F0 02602821 */   addu      $a1, $s3, $zero
/* 110F4 800104F4 24020001 */  addiu      $v0, $zero, 0x1
.L800104F8:
/* 110F8 800104F8 922400BA */  lbu        $a0, 0xBA($s1)
/* 110FC 800104FC 922300B9 */  lbu        $v1, 0xB9($s1)
/* 11100 80010500 00441023 */  subu       $v0, $v0, $a0
/* 11104 80010504 8E840028 */  lw         $a0, 0x28($s4)
/* 11108 80010508 00620018 */  mult       $v1, $v0
/* 1110C 8001050C 00101080 */  sll        $v0, $s0, 2
/* 11110 80010510 00441021 */  addu       $v0, $v0, $a0
/* 11114 80010514 C4420000 */  lwc1       $f2, 0x0($v0)
/* 11118 80010518 44920000 */  mtc1       $s2, $f0
/* 1111C 8001051C 46800020 */  cvt.s.w    $f0, $f0
/* 11120 80010520 46020080 */  add.s      $f2, $f0, $f2
/* 11124 80010524 00001812 */  mflo       $v1
/* 11128 80010528 00603021 */  addu       $a2, $v1, $zero
/* 1112C 8001052C 30630080 */  andi       $v1, $v1, 0x80
/* 11130 80010530 10600004 */  beqz       $v1, .L80010544
/* 11134 80010534 E622002C */   swc1      $f2, 0x2C($s1)
/* 11138 80010538 30C200FF */  andi       $v0, $a2, 0xFF
/* 1113C 8001053C 08004152 */  j          .L80010548
/* 11140 80010540 2442FF00 */   addiu     $v0, $v0, -0x100
.L80010544:
/* 11144 80010544 30C200FF */  andi       $v0, $a2, 0xFF
.L80010548:
/* 11148 80010548 44820000 */  mtc1       $v0, $f0
/* 1114C 8001054C 46800020 */  cvt.s.w    $f0, $f0
/* 11150 80010550 46001000 */  add.s      $f0, $f2, $f0
/* 11154 80010554 E620002C */  swc1       $f0, 0x2C($s1)
/* 11158 80010558 922300CA */  lbu        $v1, 0xCA($s1)
/* 1115C 8001055C 922200CC */  lbu        $v0, 0xCC($s1)
/* 11160 80010560 1062002E */  beq        $v1, $v0, .L8001061C
/* 11164 80010564 24020080 */   addiu     $v0, $zero, 0x80
/* 11168 80010568 3C068004 */  lui        $a2, %hi(D_80038E88)
/* 1116C 8001056C 001320C0 */  sll        $a0, $s3, 3
/* 11170 80010570 922500CB */  lbu        $a1, 0xCB($s1)
/* 11174 80010574 00932023 */  subu       $a0, $a0, $s3
/* 11178 80010578 00451023 */  subu       $v0, $v0, $a1
/* 1117C 8001057C 00430018 */  mult       $v0, $v1
/* 11180 80010580 A22300CC */  sb         $v1, 0xCC($s1)
/* 11184 80010584 8CC28E88 */  lw         $v0, %lo(D_80038E88)($a2)
/* 11188 80010588 00042080 */  sll        $a0, $a0, 2
/* 1118C 8001058C 00442021 */  addu       $a0, $v0, $a0
/* 11190 80010590 00003812 */  mflo       $a3
/* 11194 80010594 000711C3 */  sra        $v0, $a3, 7
/* 11198 80010598 00A22821 */  addu       $a1, $a1, $v0
/* 1119C 8001059C 0C005440 */  jal        func_80015100
/* 111A0 800105A0 30A500FF */   andi      $a1, $a1, 0xFF
/* 111A4 800105A4 08004187 */  j          .L8001061C
/* 111A8 800105A8 00000000 */   nop
.L800105AC:
/* 111AC 800105AC 922200C3 */  lbu        $v0, 0xC3($s1)
/* 111B0 800105B0 2C420004 */  sltiu      $v0, $v0, 0x4
/* 111B4 800105B4 10400019 */  beqz       $v0, .L8001061C
/* 111B8 800105B8 24020004 */   addiu     $v0, $zero, 0x4
/* 111BC 800105BC 8E23000C */  lw         $v1, 0xC($s1)
/* 111C0 800105C0 922400C4 */  lbu        $a0, 0xC4($s1)
/* 111C4 800105C4 A22200C3 */  sb         $v0, 0xC3($s1)
/* 111C8 800105C8 24020001 */  addiu      $v0, $zero, 0x1
/* 111CC 800105CC A22200C5 */  sb         $v0, 0xC5($s1)
/* 111D0 800105D0 AE230054 */  sw         $v1, 0x54($s1)
/* 111D4 800105D4 08004187 */  j          .L8001061C
/* 111D8 800105D8 A22400CD */   sb        $a0, 0xCD($s1)
.L800105DC:
/* 111DC 800105DC 922200C9 */  lbu        $v0, 0xC9($s1)
/* 111E0 800105E0 1040000E */  beqz       $v0, .L8001061C
/* 111E4 800105E4 00002821 */   addu      $a1, $zero, $zero
/* 111E8 800105E8 3C028004 */  lui        $v0, %hi(D_80038E98)
/* 111EC 800105EC A22000C9 */  sb         $zero, 0xC9($s1)
/* 111F0 800105F0 3C118004 */  lui        $s1, %hi(D_80038E88)
/* 111F4 800105F4 001380C0 */  sll        $s0, $s3, 3
/* 111F8 800105F8 02138023 */  subu       $s0, $s0, $s3
/* 111FC 800105FC 00108080 */  sll        $s0, $s0, 2
/* 11200 80010600 8E248E88 */  lw         $a0, %lo(D_80038E88)($s1)
/* 11204 80010604 8C468E98 */  lw         $a2, %lo(D_80038E98)($v0)
/* 11208 80010608 0C0054A8 */  jal        func_800152A0
/* 1120C 8001060C 00902021 */   addu      $a0, $a0, $s0
/* 11210 80010610 8E248E88 */  lw         $a0, %lo(D_80038E88)($s1)
/* 11214 80010614 0C0054F8 */  jal        func_800153E0
/* 11218 80010618 00902021 */   addu      $a0, $a0, $s0
.L8001061C:
/* 1121C 8001061C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11220 80010620 8FB40020 */  lw         $s4, 0x20($sp)
/* 11224 80010624 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11228 80010628 8FB20018 */  lw         $s2, 0x18($sp)
/* 1122C 8001062C 8FB10014 */  lw         $s1, 0x14($sp)
/* 11230 80010630 8FB00010 */  lw         $s0, 0x10($sp)
/* 11234 80010634 03E00008 */  jr         $ra
/* 11238 80010638 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001063C
/* 1123C 8001063C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11240 80010640 AFB10014 */  sw         $s1, 0x14($sp)
/* 11244 80010644 00808821 */  addu       $s1, $a0, $zero
/* 11248 80010648 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1124C 8001064C AFB00010 */  sw         $s0, 0x10($sp)
/* 11250 80010650 922200C9 */  lbu        $v0, 0xC9($s1)
/* 11254 80010654 10400008 */  beqz       $v0, .L80010678
/* 11258 80010658 00A08021 */   addu      $s0, $a1, $zero
/* 1125C 8001065C 3C028004 */  lui        $v0, %hi(D_80038E88)
/* 11260 80010660 001020C0 */  sll        $a0, $s0, 3
/* 11264 80010664 00902023 */  subu       $a0, $a0, $s0
/* 11268 80010668 8C428E88 */  lw         $v0, %lo(D_80038E88)($v0)
/* 1126C 8001066C 00042080 */  sll        $a0, $a0, 2
/* 11270 80010670 0C0054F8 */  jal        func_800153E0
/* 11274 80010674 00442021 */   addu      $a0, $v0, $a0
.L80010678:
/* 11278 80010678 24020001 */  addiu      $v0, $zero, 0x1
/* 1127C 8001067C A22200C9 */  sb         $v0, 0xC9($s1)
/* 11280 80010680 3C028004 */  lui        $v0, %hi(D_80038E88)
/* 11284 80010684 001020C0 */  sll        $a0, $s0, 3
/* 11288 80010688 00902023 */  subu       $a0, $a0, $s0
/* 1128C 8001068C 00042080 */  sll        $a0, $a0, 2
/* 11290 80010690 8C428E88 */  lw         $v0, %lo(D_80038E88)($v0)
/* 11294 80010694 8E250008 */  lw         $a1, 0x8($s1)
/* 11298 80010698 0C0054D4 */  jal        func_80015350
/* 1129C 8001069C 00442021 */   addu      $a0, $v0, $a0
/* 112A0 800106A0 AE200008 */  sw         $zero, 0x8($s1)
/* 112A4 800106A4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 112A8 800106A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 112AC 800106AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 112B0 800106B0 03E00008 */  jr         $ra
/* 112B4 800106B4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800106B8
/* 112B8 800106B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 112BC 800106BC AFB00010 */  sw         $s0, 0x10($sp)
/* 112C0 800106C0 00808021 */  addu       $s0, $a0, $zero
/* 112C4 800106C4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 112C8 800106C8 AFB10014 */  sw         $s1, 0x14($sp)
/* 112CC 800106CC 920300BC */  lbu        $v1, 0xBC($s0)
/* 112D0 800106D0 920200C4 */  lbu        $v0, 0xC4($s0)
/* 112D4 800106D4 00620018 */  mult       $v1, $v0
/* 112D8 800106D8 00003812 */  mflo       $a3
/* 112DC 800106DC 920200BB */  lbu        $v0, 0xBB($s0)
/* 112E0 800106E0 00000000 */  nop
/* 112E4 800106E4 00E20018 */  mult       $a3, $v0
/* 112E8 800106E8 00003812 */  mflo       $a3
/* 112EC 800106EC 8602009E */  lh         $v0, 0x9E($s0)
/* 112F0 800106F0 00000000 */  nop
/* 112F4 800106F4 00E20018 */  mult       $a3, $v0
/* 112F8 800106F8 24027FFF */  addiu      $v0, $zero, 0x7FFF
/* 112FC 800106FC 00003812 */  mflo       $a3
/* 11300 80010700 00072342 */  srl        $a0, $a3, 13
/* 11304 80010704 0044102B */  sltu       $v0, $v0, $a0
/* 11308 80010708 10400002 */  beqz       $v0, .L80010714
/* 1130C 8001070C 00A08821 */   addu      $s1, $a1, $zero
/* 11310 80010710 24047FFF */  addiu      $a0, $zero, 0x7FFF
.L80010714:
/* 11314 80010714 8E020078 */  lw         $v0, 0x78($s0)
/* 11318 80010718 14400006 */  bnez       $v0, .L80010734
/* 1131C 8001071C 3C028004 */   lui       $v0, %hi(D_80038E9C)
/* 11320 80010720 3C028004 */  lui        $v0, %hi(D_80038E9E)
/* 11324 80010724 94428E9E */  lhu        $v0, %lo(D_80038E9E)($v0)
/* 11328 80010728 00820018 */  mult       $a0, $v0
/* 1132C 8001072C 080041CF */  j          .L8001073C
/* 11330 80010730 00000000 */   nop
.L80010734:
/* 11334 80010734 94428E9C */  lhu        $v0, %lo(D_80038E9C)($v0)
/* 11338 80010738 00820018 */  mult       $a0, $v0
.L8001073C:
/* 1133C 8001073C 00002012 */  mflo       $a0
/* 11340 80010740 8E030010 */  lw         $v1, 0x10($s0)
/* 11344 80010744 2402FFFF */  addiu      $v0, $zero, -0x1
/* 11348 80010748 1062000A */  beq        $v1, $v0, .L80010774
/* 1134C 8001074C 000423C2 */   srl       $a0, $a0, 15
/* 11350 80010750 00830018 */  mult       $a0, $v1
/* 11354 80010754 00001812 */  mflo       $v1
/* 11358 80010758 8E02001C */  lw         $v0, 0x1C($s0)
/* 1135C 8001075C 00000000 */  nop
/* 11360 80010760 0062001B */  divu       $zero, $v1, $v0
/* 11364 80010764 14400002 */  bnez       $v0, .L80010770
/* 11368 80010768 00000000 */   nop
/* 1136C 8001076C 0007000D */  break      7
.L80010770:
/* 11370 80010770 00002012 */  mflo       $a0
.L80010774:
/* 11374 80010774 960200A0 */  lhu        $v0, 0xA0($s0)
/* 11378 80010778 1082000C */  beq        $a0, $v0, .L800107AC
/* 1137C 8001077C 00042C00 */   sll       $a1, $a0, 16
/* 11380 80010780 00052C03 */  sra        $a1, $a1, 16
/* 11384 80010784 3C038004 */  lui        $v1, %hi(D_80038E88)
/* 11388 80010788 A60400A0 */  sh         $a0, 0xA0($s0)
/* 1138C 8001078C 001120C0 */  sll        $a0, $s1, 3
/* 11390 80010790 00912023 */  subu       $a0, $a0, $s1
/* 11394 80010794 00042080 */  sll        $a0, $a0, 2
/* 11398 80010798 3C028004 */  lui        $v0, %hi(D_80038E98)
/* 1139C 8001079C 8C638E88 */  lw         $v1, %lo(D_80038E88)($v1)
/* 113A0 800107A0 8C468E98 */  lw         $a2, %lo(D_80038E98)($v0)
/* 113A4 800107A4 0C0054A8 */  jal        func_800152A0
/* 113A8 800107A8 00642021 */   addu      $a0, $v1, $a0
.L800107AC:
/* 113AC 800107AC 920300BD */  lbu        $v1, 0xBD($s0)
/* 113B0 800107B0 860200B0 */  lh         $v0, 0xB0($s0)
/* 113B4 800107B4 00620018 */  mult       $v1, $v0
/* 113B8 800107B8 920300BE */  lbu        $v1, 0xBE($s0)
/* 113BC 800107BC 00003812 */  mflo       $a3
/* 113C0 800107C0 000711C3 */  sra        $v0, $a3, 7
/* 113C4 800107C4 3044007F */  andi       $a0, $v0, 0x7F
/* 113C8 800107C8 10830009 */  beq        $a0, $v1, .L800107F0
/* 113CC 800107CC 00802821 */   addu      $a1, $a0, $zero
/* 113D0 800107D0 3C028004 */  lui        $v0, %hi(D_80038E88)
/* 113D4 800107D4 001120C0 */  sll        $a0, $s1, 3
/* 113D8 800107D8 00912023 */  subu       $a0, $a0, $s1
/* 113DC 800107DC A20500BE */  sb         $a1, 0xBE($s0)
/* 113E0 800107E0 8C428E88 */  lw         $v0, %lo(D_80038E88)($v0)
/* 113E4 800107E4 00042080 */  sll        $a0, $a0, 2
/* 113E8 800107E8 0C005468 */  jal        func_800151A0
/* 113EC 800107EC 00442021 */   addu      $a0, $v0, $a0
.L800107F0:
/* 113F0 800107F0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 113F4 800107F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 113F8 800107F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 113FC 800107FC 03E00008 */  jr         $ra
/* 11400 80010800 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80010804
/* 11404 80010804 44864000 */  mtc1       $a2, $f8
/* 11408 80010808 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1140C 8001080C AFB00010 */  sw         $s0, 0x10($sp)
/* 11410 80010810 00808021 */  addu       $s0, $a0, $zero
/* 11414 80010814 AFB10014 */  sw         $s1, 0x14($sp)
/* 11418 80010818 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1141C 8001081C 920200B8 */  lbu        $v0, 0xB8($s0)
/* 11420 80010820 C606002C */  lwc1       $f6, 0x2C($s0)
/* 11424 80010824 10400011 */  beqz       $v0, .L8001086C
/* 11428 80010828 00A08821 */   addu      $s1, $a1, $zero
/* 1142C 8001082C 960300AA */  lhu        $v1, 0xAA($s0)
/* 11430 80010830 0043102B */  sltu       $v0, $v0, $v1
/* 11434 80010834 5440000D */  bnel       $v0, $zero, .L8001086C
/* 11438 80010838 E6060050 */   swc1      $f6, 0x50($s0)
/* 1143C 8001083C C604004C */  lwc1       $f4, 0x4C($s0)
/* 11440 80010840 920200B8 */  lbu        $v0, 0xB8($s0)
/* 11444 80010844 46043001 */  sub.s      $f0, $f6, $f4
/* 11448 80010848 44821000 */  mtc1       $v0, $f2
/* 1144C 8001084C 468010A0 */  cvt.s.w    $f2, $f2
/* 11450 80010850 00601021 */  addu       $v0, $v1, $zero
/* 11454 80010854 46020003 */  div.s      $f0, $f0, $f2
/* 11458 80010858 44821000 */  mtc1       $v0, $f2
/* 1145C 8001085C 468010A0 */  cvt.s.w    $f2, $f2
/* 11460 80010860 46020002 */  mul.s      $f0, $f0, $f2
/* 11464 80010864 46002180 */  add.s      $f6, $f4, $f0
/* 11468 80010868 E6060050 */  swc1       $f6, 0x50($s0)
.L8001086C:
/* 1146C 8001086C C6000024 */  lwc1       $f0, 0x24($s0)
/* 11470 80010870 46004000 */  add.s      $f0, $f8, $f0
/* 11474 80010874 46003180 */  add.s      $f6, $f6, $f0
/* 11478 80010878 C6000028 */  lwc1       $f0, 0x28($s0)
/* 1147C 8001087C 46003032 */  c.eq.s     $f6, $f0
/* 11480 80010880 00000000 */  nop
/* 11484 80010884 4501001A */  bc1t       .L800108F0
/* 11488 80010888 00000000 */   nop
/* 1148C 8001088C 3C018000 */  lui        $at, %hi(D_80000F48)
/* 11490 80010890 D4200F48 */  ldc1       $f0, %lo(D_80000F48)($at)
/* 11494 80010894 46003321 */  cvt.d.s    $f12, $f6
/* 11498 80010898 46206302 */  mul.d      $f12, $f12, $f0
/* 1149C 8001089C E6060028 */  swc1       $f6, 0x28($s0)
/* 114A0 800108A0 0C0043A4 */  jal        func_80010E90
/* 114A4 800108A4 46206320 */   cvt.s.d   $f12, $f12
/* 114A8 800108A8 46000186 */  mov.s      $f6, $f0
/* 114AC 800108AC 3C018000 */  lui        $at, %hi(D_80000F50)
/* 114B0 800108B0 D4220F50 */  ldc1       $f2, %lo(D_80000F50)($at)
/* 114B4 800108B4 46003021 */  cvt.d.s    $f0, $f6
/* 114B8 800108B8 4620103C */  c.lt.d     $f2, $f0
/* 114BC 800108BC 00000000 */  nop
/* 114C0 800108C0 45000004 */  bc1f       .L800108D4
/* 114C4 800108C4 3C028004 */   lui       $v0, %hi(D_80038E88)
/* 114C8 800108C8 3C018000 */  lui        $at, %hi(D_80000F58)
/* 114CC 800108CC C4260F58 */  lwc1       $f6, %lo(D_80000F58)($at)
/* 114D0 800108D0 A20000BB */  sb         $zero, 0xBB($s0)
.L800108D4:
/* 114D4 800108D4 001120C0 */  sll        $a0, $s1, 3
/* 114D8 800108D8 00912023 */  subu       $a0, $a0, $s1
/* 114DC 800108DC 00042080 */  sll        $a0, $a0, 2
/* 114E0 800108E0 8C428E88 */  lw         $v0, %lo(D_80038E88)($v0)
/* 114E4 800108E4 44053000 */  mfc1       $a1, $f6
/* 114E8 800108E8 0C005488 */  jal        func_80015220
/* 114EC 800108EC 00442021 */   addu      $a0, $v0, $a0
.L800108F0:
/* 114F0 800108F0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 114F4 800108F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 114F8 800108F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 114FC 800108FC 03E00008 */  jr         $ra
/* 11500 80010900 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80010904
/* 11504 80010904 00802821 */  addu       $a1, $a0, $zero
/* 11508 80010908 94A3009A */  lhu        $v1, 0x9A($a1)
/* 1150C 8001090C 24027FFF */  addiu      $v0, $zero, 0x7FFF
/* 11510 80010910 1062000E */  beq        $v1, $v0, .L8001094C
/* 11514 80010914 3C037FFF */   lui       $v1, (0x7FFFFFFF >> 16)
/* 11518 80010918 94A200B2 */  lhu        $v0, 0xB2($a1)
/* 1151C 8001091C 10400005 */  beqz       $v0, .L80010934
/* 11520 80010920 00021200 */   sll       $v0, $v0, 8
/* 11524 80010924 8CA30040 */  lw         $v1, 0x40($a1)
/* 11528 80010928 00621821 */  addu       $v1, $v1, $v0
/* 1152C 8001092C 08004257 */  j          .L8001095C
/* 11530 80010930 ACA30054 */   sw        $v1, 0x54($a1)
.L80010934:
/* 11534 80010934 94A200B4 */  lhu        $v0, 0xB4($a1)
/* 11538 80010938 8CA3003C */  lw         $v1, 0x3C($a1)
/* 1153C 8001093C 00021200 */  sll        $v0, $v0, 8
/* 11540 80010940 00621823 */  subu       $v1, $v1, $v0
/* 11544 80010944 08004257 */  j          .L8001095C
/* 11548 80010948 ACA30054 */   sw        $v1, 0x54($a1)
.L8001094C:
/* 1154C 8001094C 8CA20040 */  lw         $v0, 0x40($a1)
/* 11550 80010950 3463FFFF */  ori        $v1, $v1, (0x7FFFFFFF & 0xFFFF)
/* 11554 80010954 00431021 */  addu       $v0, $v0, $v1
/* 11558 80010958 ACA20054 */  sw         $v0, 0x54($a1)
.L8001095C:
/* 1155C 8001095C 90A200C0 */  lbu        $v0, 0xC0($a1)
/* 11560 80010960 90A400BF */  lbu        $a0, 0xBF($a1)
/* 11564 80010964 24030001 */  addiu      $v1, $zero, 0x1
/* 11568 80010968 A0A300C3 */  sb         $v1, 0xC3($a1)
/* 1156C 8001096C A0A200C4 */  sb         $v0, 0xC4($a1)
/* 11570 80010970 03E00008 */  jr         $ra
/* 11574 80010974 A0A400C5 */   sb        $a0, 0xC5($a1)

glabel func_80010978
/* 11578 80010978 00802821 */  addu       $a1, $a0, $zero
/* 1157C 8001097C 8CA20054 */  lw         $v0, 0x54($a1)
/* 11580 80010980 8CA3000C */  lw         $v1, 0xC($a1)
/* 11584 80010984 00431023 */  subu       $v0, $v0, $v1
/* 11588 80010988 0441000A */  bgez       $v0, .L800109B4
/* 1158C 8001098C 00000000 */   nop
/* 11590 80010990 90A200C3 */  lbu        $v0, 0xC3($a1)
/* 11594 80010994 2C420004 */  sltiu      $v0, $v0, 0x4
/* 11598 80010998 10400006 */  beqz       $v0, .L800109B4
/* 1159C 8001099C 24020004 */   addiu     $v0, $zero, 0x4
/* 115A0 800109A0 90A300C4 */  lbu        $v1, 0xC4($a1)
/* 115A4 800109A4 A0A200C3 */  sb         $v0, 0xC3($a1)
/* 115A8 800109A8 24020001 */  addiu      $v0, $zero, 0x1
/* 115AC 800109AC A0A200C5 */  sb         $v0, 0xC5($a1)
/* 115B0 800109B0 A0A300CD */  sb         $v1, 0xCD($a1)
.L800109B4:
/* 115B4 800109B4 90A200C5 */  lbu        $v0, 0xC5($a1)
/* 115B8 800109B8 2442FFFF */  addiu      $v0, $v0, -0x1
/* 115BC 800109BC A0A200C5 */  sb         $v0, 0xC5($a1)
/* 115C0 800109C0 304200FF */  andi       $v0, $v0, 0xFF
/* 115C4 800109C4 1440000A */  bnez       $v0, .L800109F0
/* 115C8 800109C8 24040002 */   addiu     $a0, $zero, 0x2
/* 115CC 800109CC 90A200BF */  lbu        $v0, 0xBF($a1)
/* 115D0 800109D0 90A300C3 */  lbu        $v1, 0xC3($a1)
/* 115D4 800109D4 10640029 */  beq        $v1, $a0, .L80010A7C
/* 115D8 800109D8 A0A200C5 */   sb        $v0, 0xC5($a1)
/* 115DC 800109DC 28620003 */  slti       $v0, $v1, 0x3
/* 115E0 800109E0 10400005 */  beqz       $v0, .L800109F8
/* 115E4 800109E4 24020001 */   addiu     $v0, $zero, 0x1
/* 115E8 800109E8 1062000A */  beq        $v1, $v0, .L80010A14
/* 115EC 800109EC 00000000 */   nop
.L800109F0:
/* 115F0 800109F0 03E00008 */  jr         $ra
/* 115F4 800109F4 00000000 */   nop
.L800109F8:
/* 115F8 800109F8 24020003 */  addiu      $v0, $zero, 0x3
/* 115FC 800109FC 1062FFFC */  beq        $v1, $v0, .L800109F0
/* 11600 80010A00 24020004 */   addiu     $v0, $zero, 0x4
/* 11604 80010A04 10620036 */  beq        $v1, $v0, .L80010AE0
/* 11608 80010A08 00000000 */   nop
/* 1160C 80010A0C 03E00008 */  jr         $ra
/* 11610 80010A10 00000000 */   nop
.L80010A14:
/* 11614 80010A14 8CA2000C */  lw         $v0, 0xC($a1)
/* 11618 80010A18 8CA30040 */  lw         $v1, 0x40($a1)
/* 1161C 80010A1C 00431023 */  subu       $v0, $v0, $v1
/* 11620 80010A20 8CA30064 */  lw         $v1, 0x64($a1)
/* 11624 80010A24 00021202 */  srl        $v0, $v0, 8
/* 11628 80010A28 00430018 */  mult       $v0, $v1
/* 1162C 80010A2C 90A200C6 */  lbu        $v0, 0xC6($a1)
/* 11630 80010A30 00003012 */  mflo       $a2
/* 11634 80010A34 00061A82 */  srl        $v1, $a2, 10
/* 11638 80010A38 0062102A */  slt        $v0, $v1, $v0
/* 1163C 80010A3C 1040000B */  beqz       $v0, .L80010A6C
/* 11640 80010A40 00000000 */   nop
/* 11644 80010A44 C4A00058 */  lwc1       $f0, 0x58($a1)
/* 11648 80010A48 44831000 */  mtc1       $v1, $f2
/* 1164C 80010A4C 468010A0 */  cvt.s.w    $f2, $f2
/* 11650 80010A50 46020002 */  mul.s      $f0, $f0, $f2
/* 11654 80010A54 90A200C0 */  lbu        $v0, 0xC0($a1)
.L80010A58:
/* 11658 80010A58 4600010D */  trunc.w.s  $f4, $f0
/* 1165C 80010A5C 44032000 */  mfc1       $v1, $f4
/* 11660 80010A60 00431021 */  addu       $v0, $v0, $v1
/* 11664 80010A64 03E00008 */  jr         $ra
/* 11668 80010A68 A0A200C4 */   sb        $v0, 0xC4($a1)
.L80010A6C:
/* 1166C 80010A6C 90A200C1 */  lbu        $v0, 0xC1($a1)
/* 11670 80010A70 A0A400C3 */  sb         $a0, 0xC3($a1)
/* 11674 80010A74 03E00008 */  jr         $ra
/* 11678 80010A78 A0A200C4 */   sb        $v0, 0xC4($a1)
.L80010A7C:
/* 1167C 80010A7C 8CA2000C */  lw         $v0, 0xC($a1)
/* 11680 80010A80 8CA30040 */  lw         $v1, 0x40($a1)
/* 11684 80010A84 8CA40064 */  lw         $a0, 0x64($a1)
/* 11688 80010A88 00431023 */  subu       $v0, $v0, $v1
/* 1168C 80010A8C 90A300C6 */  lbu        $v1, 0xC6($a1)
/* 11690 80010A90 00021202 */  srl        $v0, $v0, 8
/* 11694 80010A94 00431023 */  subu       $v0, $v0, $v1
/* 11698 80010A98 00440018 */  mult       $v0, $a0
/* 1169C 80010A9C 90A200C7 */  lbu        $v0, 0xC7($a1)
/* 116A0 80010AA0 00003012 */  mflo       $a2
/* 116A4 80010AA4 00061A82 */  srl        $v1, $a2, 10
/* 116A8 80010AA8 0062102A */  slt        $v0, $v1, $v0
/* 116AC 80010AAC 10400008 */  beqz       $v0, .L80010AD0
/* 116B0 80010AB0 24020003 */   addiu     $v0, $zero, 0x3
/* 116B4 80010AB4 C4A0005C */  lwc1       $f0, 0x5C($a1)
/* 116B8 80010AB8 44831000 */  mtc1       $v1, $f2
/* 116BC 80010ABC 468010A0 */  cvt.s.w    $f2, $f2
/* 116C0 80010AC0 46020002 */  mul.s      $f0, $f0, $f2
/* 116C4 80010AC4 90A200C1 */  lbu        $v0, 0xC1($a1)
/* 116C8 80010AC8 08004296 */  j          .L80010A58
/* 116CC 80010ACC 00000000 */   nop
.L80010AD0:
/* 116D0 80010AD0 90A300C2 */  lbu        $v1, 0xC2($a1)
/* 116D4 80010AD4 A0A200C3 */  sb         $v0, 0xC3($a1)
/* 116D8 80010AD8 03E00008 */  jr         $ra
/* 116DC 80010ADC A0A300C4 */   sb        $v1, 0xC4($a1)
.L80010AE0:
/* 116E0 80010AE0 8CA2000C */  lw         $v0, 0xC($a1)
/* 116E4 80010AE4 8CA30054 */  lw         $v1, 0x54($a1)
/* 116E8 80010AE8 00431023 */  subu       $v0, $v0, $v1
/* 116EC 80010AEC 8CA30064 */  lw         $v1, 0x64($a1)
/* 116F0 80010AF0 00021202 */  srl        $v0, $v0, 8
/* 116F4 80010AF4 00430018 */  mult       $v0, $v1
/* 116F8 80010AF8 90A200C8 */  lbu        $v0, 0xC8($a1)
/* 116FC 80010AFC 00003012 */  mflo       $a2
/* 11700 80010B00 00061A82 */  srl        $v1, $a2, 10
/* 11704 80010B04 0062102A */  slt        $v0, $v1, $v0
/* 11708 80010B08 1040000E */  beqz       $v0, .L80010B44
/* 1170C 80010B0C 24020005 */   addiu     $v0, $zero, 0x5
/* 11710 80010B10 C4A00060 */  lwc1       $f0, 0x60($a1)
/* 11714 80010B14 44831000 */  mtc1       $v1, $f2
/* 11718 80010B18 468010A0 */  cvt.s.w    $f2, $f2
/* 1171C 80010B1C 46020002 */  mul.s      $f0, $f0, $f2
/* 11720 80010B20 90A200CD */  lbu        $v0, 0xCD($a1)
/* 11724 80010B24 44821000 */  mtc1       $v0, $f2
/* 11728 80010B28 468010A0 */  cvt.s.w    $f2, $f2
/* 1172C 80010B2C 46020002 */  mul.s      $f0, $f0, $f2
/* 11730 80010B30 4600010D */  trunc.w.s  $f4, $f0
/* 11734 80010B34 44032000 */  mfc1       $v1, $f4
/* 11738 80010B38 00431023 */  subu       $v0, $v0, $v1
/* 1173C 80010B3C 03E00008 */  jr         $ra
/* 11740 80010B40 A0A200C4 */   sb        $v0, 0xC4($a1)
.L80010B44:
/* 11744 80010B44 A0A200C3 */  sb         $v0, 0xC3($a1)
/* 11748 80010B48 A0A000C4 */  sb         $zero, 0xC4($a1)
/* 1174C 80010B4C 03E00008 */  jr         $ra
/* 11750 80010B50 00000000 */   nop

glabel func_80010B54
/* 11754 80010B54 8C830040 */  lw         $v1, 0x40($a0)
/* 11758 80010B58 908200BD */  lbu        $v0, 0xBD($a0)
/* 1175C 80010B5C A08000D9 */  sb         $zero, 0xD9($a0)
/* 11760 80010B60 30420040 */  andi       $v0, $v0, 0x40
/* 11764 80010B64 AC830094 */  sw         $v1, 0x94($a0)
/* 11768 80010B68 03E00008 */  jr         $ra
/* 1176C 80010B6C A08200DA */   sb        $v0, 0xDA($a0)

glabel func_80010B70
/* 11770 80010B70 908600D4 */  lbu        $a2, 0xD4($a0)
/* 11774 80010B74 2408007F */  addiu      $t0, $zero, 0x7F
/* 11778 80010B78 24070001 */  addiu      $a3, $zero, 0x1
.L80010B7C:
/* 1177C 80010B7C 908200D9 */  lbu        $v0, 0xD9($a0)
/* 11780 80010B80 8C830094 */  lw         $v1, 0x94($a0)
/* 11784 80010B84 00462821 */  addu       $a1, $v0, $a2
/* 11788 80010B88 24630100 */  addiu      $v1, $v1, 0x100
/* 1178C 80010B8C 2CA20040 */  sltiu      $v0, $a1, 0x40
/* 11790 80010B90 10400003 */  beqz       $v0, .L80010BA0
/* 11794 80010B94 AC830094 */   sw        $v1, 0x94($a0)
/* 11798 80010B98 08004300 */  j          .L80010C00
/* 1179C 80010B9C A08500D9 */   sb        $a1, 0xD9($a0)
.L80010BA0:
/* 117A0 80010BA0 30A2003F */  andi       $v0, $a1, 0x3F
/* 117A4 80010BA4 908300DA */  lbu        $v1, 0xDA($a0)
/* 117A8 80010BA8 00052982 */  srl        $a1, $a1, 6
/* 117AC 80010BAC 1460000A */  bnez       $v1, .L80010BD8
/* 117B0 80010BB0 A08200D9 */   sb        $v0, 0xD9($a0)
/* 117B4 80010BB4 908200BD */  lbu        $v0, 0xBD($a0)
/* 117B8 80010BB8 00451021 */  addu       $v0, $v0, $a1
/* 117BC 80010BBC A08200BD */  sb         $v0, 0xBD($a0)
/* 117C0 80010BC0 00021600 */  sll        $v0, $v0, 24
/* 117C4 80010BC4 0441000E */  bgez       $v0, .L80010C00
/* 117C8 80010BC8 00000000 */   nop
/* 117CC 80010BCC A08800BD */  sb         $t0, 0xBD($a0)
/* 117D0 80010BD0 08004300 */  j          .L80010C00
/* 117D4 80010BD4 A08700DA */   sb        $a3, 0xDA($a0)
.L80010BD8:
/* 117D8 80010BD8 908200BD */  lbu        $v0, 0xBD($a0)
/* 117DC 80010BDC 00451023 */  subu       $v0, $v0, $a1
/* 117E0 80010BE0 A08200BD */  sb         $v0, 0xBD($a0)
/* 117E4 80010BE4 2442FFFF */  addiu      $v0, $v0, -0x1
/* 117E8 80010BE8 304200FF */  andi       $v0, $v0, 0xFF
/* 117EC 80010BEC 2C42007F */  sltiu      $v0, $v0, 0x7F
/* 117F0 80010BF0 14400003 */  bnez       $v0, .L80010C00
/* 117F4 80010BF4 00000000 */   nop
/* 117F8 80010BF8 A08000BD */  sb         $zero, 0xBD($a0)
/* 117FC 80010BFC A08000DA */  sb         $zero, 0xDA($a0)
.L80010C00:
/* 11800 80010C00 8C820094 */  lw         $v0, 0x94($a0)
/* 11804 80010C04 8C83000C */  lw         $v1, 0xC($a0)
/* 11808 80010C08 00431023 */  subu       $v0, $v0, $v1
/* 1180C 80010C0C 0440FFDB */  bltz       $v0, .L80010B7C
/* 11810 80010C10 00000000 */   nop
/* 11814 80010C14 03E00008 */  jr         $ra
/* 11818 80010C18 00000000 */   nop

glabel func_80010C1C
/* 1181C 80010C1C 908200D0 */  lbu        $v0, 0xD0($a0)
/* 11820 80010C20 2442FFFF */  addiu      $v0, $v0, -0x1
/* 11824 80010C24 A08200D0 */  sb         $v0, 0xD0($a0)
/* 11828 80010C28 304200FF */  andi       $v0, $v0, 0xFF
/* 1182C 80010C2C 1440000C */  bnez       $v0, .L80010C60
/* 11830 80010C30 00000000 */   nop
/* 11834 80010C34 808200D1 */  lb         $v0, 0xD1($a0)
/* 11838 80010C38 14400006 */  bnez       $v0, .L80010C54
/* 1183C 80010C3C 00000000 */   nop
/* 11840 80010C40 908200D8 */  lbu        $v0, 0xD8($a0)
/* 11844 80010C44 908300CE */  lbu        $v1, 0xCE($a0)
/* 11848 80010C48 A08200D1 */  sb         $v0, 0xD1($a0)
/* 1184C 80010C4C 08004318 */  j          .L80010C60
/* 11850 80010C50 A08300D0 */   sb        $v1, 0xD0($a0)
.L80010C54:
/* 11854 80010C54 908200CF */  lbu        $v0, 0xCF($a0)
/* 11858 80010C58 A08000D1 */  sb         $zero, 0xD1($a0)
/* 1185C 80010C5C A08200D0 */  sb         $v0, 0xD0($a0)
.L80010C60:
/* 11860 80010C60 808200D1 */  lb         $v0, 0xD1($a0)
/* 11864 80010C64 44820000 */  mtc1       $v0, $f0
/* 11868 80010C68 46800020 */  cvt.s.w    $f0, $f0
/* 1186C 80010C6C 03E00008 */  jr         $ra
/* 11870 80010C70 00000000 */   nop

glabel func_80010C74
/* 11874 80010C74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11878 80010C78 AFB00010 */  sw         $s0, 0x10($sp)
/* 1187C 80010C7C 00808021 */  addu       $s0, $a0, $zero
/* 11880 80010C80 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11884 80010C84 960300AA */  lhu        $v1, 0xAA($s0)
/* 11888 80010C88 920200B6 */  lbu        $v0, 0xB6($s0)
/* 1188C 80010C8C 00621823 */  subu       $v1, $v1, $v0
/* 11890 80010C90 44800000 */  mtc1       $zero, $f0
/* 11894 80010C94 1860000A */  blez       $v1, .L80010CC0
/* 11898 80010C98 00000000 */   nop
/* 1189C 80010C9C C60000DC */  lwc1       $f0, 0xDC($s0)
/* 118A0 80010CA0 44836000 */  mtc1       $v1, $f12
/* 118A4 80010CA4 46806320 */  cvt.s.w    $f12, $f12
/* 118A8 80010CA8 46006302 */  mul.s      $f12, $f12, $f0
/* 118AC 80010CAC 0C006D60 */  jal        sinf
/* 118B0 80010CB0 00000000 */   nop
/* 118B4 80010CB4 C6020020 */  lwc1       $f2, 0x20($s0)
/* 118B8 80010CB8 46020002 */  mul.s      $f0, $f0, $f2
/* 118BC 80010CBC E6000068 */  swc1       $f0, 0x68($s0)
.L80010CC0:
/* 118C0 80010CC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 118C4 80010CC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 118C8 80010CC8 03E00008 */  jr         $ra
/* 118CC 80010CCC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80010CD0
/* 118D0 80010CD0 00802821 */  addu       $a1, $a0, $zero
/* 118D4 80010CD4 24060001 */  addiu      $a2, $zero, 0x1
.L80010CD8:
/* 118D8 80010CD8 8CA20014 */  lw         $v0, 0x14($a1)
/* 118DC 80010CDC 94A300A2 */  lhu        $v1, 0xA2($a1)
/* 118E0 80010CE0 24420100 */  addiu      $v0, $v0, 0x100
/* 118E4 80010CE4 2463FFFF */  addiu      $v1, $v1, -0x1
/* 118E8 80010CE8 A4A300A2 */  sh         $v1, 0xA2($a1)
/* 118EC 80010CEC 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 118F0 80010CF0 1460001F */  bnez       $v1, .L80010D70
/* 118F4 80010CF4 ACA20014 */   sw        $v0, 0x14($a1)
/* 118F8 80010CF8 8CA20038 */  lw         $v0, 0x38($a1)
/* 118FC 80010CFC 90430000 */  lbu        $v1, 0x0($v0)
/* 11900 80010D00 24420001 */  addiu      $v0, $v0, 0x1
/* 11904 80010D04 ACA20038 */  sw         $v0, 0x38($a1)
/* 11908 80010D08 00031600 */  sll        $v0, $v1, 24
/* 1190C 80010D0C 04430017 */  bgezl      $v0, .L80010D6C
/* 11910 80010D10 A0A300BC */   sb        $v1, 0xBC($a1)
/* 11914 80010D14 8CA20038 */  lw         $v0, 0x38($a1)
/* 11918 80010D18 3063007F */  andi       $v1, $v1, 0x7F
/* 1191C 80010D1C A0A300BC */  sb         $v1, 0xBC($a1)
/* 11920 80010D20 90430000 */  lbu        $v1, 0x0($v0)
/* 11924 80010D24 24420001 */  addiu      $v0, $v0, 0x1
/* 11928 80010D28 ACA20038 */  sw         $v0, 0x38($a1)
/* 1192C 80010D2C 00031600 */  sll        $v0, $v1, 24
/* 11930 80010D30 0441000C */  bgez       $v0, .L80010D64
/* 11934 80010D34 24620002 */   addiu     $v0, $v1, 0x2
/* 11938 80010D38 3063007F */  andi       $v1, $v1, 0x7F
/* 1193C 80010D3C 8CA20038 */  lw         $v0, 0x38($a1)
/* 11940 80010D40 00031A00 */  sll        $v1, $v1, 8
/* 11944 80010D44 A4A300A2 */  sh         $v1, 0xA2($a1)
/* 11948 80010D48 24630002 */  addiu      $v1, $v1, 0x2
/* 1194C 80010D4C 90440000 */  lbu        $a0, 0x0($v0)
/* 11950 80010D50 24420001 */  addiu      $v0, $v0, 0x1
/* 11954 80010D54 ACA20038 */  sw         $v0, 0x38($a1)
/* 11958 80010D58 00832021 */  addu       $a0, $a0, $v1
/* 1195C 80010D5C 0800435C */  j          .L80010D70
/* 11960 80010D60 A4A400A2 */   sh        $a0, 0xA2($a1)
.L80010D64:
/* 11964 80010D64 0800435C */  j          .L80010D70
/* 11968 80010D68 A4A200A2 */   sh        $v0, 0xA2($a1)
.L80010D6C:
/* 1196C 80010D6C A4A600A2 */  sh         $a2, 0xA2($a1)
.L80010D70:
/* 11970 80010D70 8CA20014 */  lw         $v0, 0x14($a1)
/* 11974 80010D74 8CA3000C */  lw         $v1, 0xC($a1)
/* 11978 80010D78 00431023 */  subu       $v0, $v0, $v1
/* 1197C 80010D7C 0440FFD6 */  bltz       $v0, .L80010CD8
/* 11980 80010D80 00000000 */   nop
/* 11984 80010D84 03E00008 */  jr         $ra
/* 11988 80010D88 00000000 */   nop

glabel func_80010D8C
/* 1198C 80010D8C 00802821 */  addu       $a1, $a0, $zero
/* 11990 80010D90 3C018000 */  lui        $at, %hi(D_80000F60)
/* 11994 80010D94 D4240F60 */  ldc1       $f4, %lo(D_80000F60)($at)
/* 11998 80010D98 24060001 */  addiu      $a2, $zero, 0x1
.L80010D9C:
/* 1199C 80010D9C 8CA20018 */  lw         $v0, 0x18($a1)
/* 119A0 80010DA0 94A300A4 */  lhu        $v1, 0xA4($a1)
/* 119A4 80010DA4 24420100 */  addiu      $v0, $v0, 0x100
/* 119A8 80010DA8 2463FFFF */  addiu      $v1, $v1, -0x1
/* 119AC 80010DAC A4A300A4 */  sh         $v1, 0xA4($a1)
/* 119B0 80010DB0 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 119B4 80010DB4 1460002F */  bnez       $v1, .L80010E74
/* 119B8 80010DB8 ACA20018 */   sw        $v0, 0x18($a1)
/* 119BC 80010DBC 8CA20034 */  lw         $v0, 0x34($a1)
/* 119C0 80010DC0 90430000 */  lbu        $v1, 0x0($v0)
/* 119C4 80010DC4 24420001 */  addiu      $v0, $v0, 0x1
/* 119C8 80010DC8 ACA20034 */  sw         $v0, 0x34($a1)
/* 119CC 80010DCC 00031600 */  sll        $v0, $v1, 24
/* 119D0 80010DD0 0441001E */  bgez       $v0, .L80010E4C
/* 119D4 80010DD4 3062007F */   andi      $v0, $v1, 0x7F
/* 119D8 80010DD8 44820000 */  mtc1       $v0, $f0
/* 119DC 80010DDC 46800020 */  cvt.s.w    $f0, $f0
/* 119E0 80010DE0 46000021 */  cvt.d.s    $f0, $f0
/* 119E4 80010DE4 46240001 */  sub.d      $f0, $f0, $f4
/* 119E8 80010DE8 C4A2006C */  lwc1       $f2, 0x6C($a1)
/* 119EC 80010DEC 46200020 */  cvt.s.d    $f0, $f0
/* 119F0 80010DF0 46020082 */  mul.s      $f2, $f0, $f2
/* 119F4 80010DF4 8CA20034 */  lw         $v0, 0x34($a1)
/* 119F8 80010DF8 E4A00070 */  swc1       $f0, 0x70($a1)
/* 119FC 80010DFC E4A20024 */  swc1       $f2, 0x24($a1)
/* 11A00 80010E00 90430000 */  lbu        $v1, 0x0($v0)
/* 11A04 80010E04 24420001 */  addiu      $v0, $v0, 0x1
/* 11A08 80010E08 ACA20034 */  sw         $v0, 0x34($a1)
/* 11A0C 80010E0C 00031600 */  sll        $v0, $v1, 24
/* 11A10 80010E10 0441000C */  bgez       $v0, .L80010E44
/* 11A14 80010E14 24620002 */   addiu     $v0, $v1, 0x2
/* 11A18 80010E18 3063007F */  andi       $v1, $v1, 0x7F
/* 11A1C 80010E1C 8CA20034 */  lw         $v0, 0x34($a1)
/* 11A20 80010E20 00031A00 */  sll        $v1, $v1, 8
/* 11A24 80010E24 A4A300A4 */  sh         $v1, 0xA4($a1)
/* 11A28 80010E28 24630002 */  addiu      $v1, $v1, 0x2
/* 11A2C 80010E2C 90440000 */  lbu        $a0, 0x0($v0)
/* 11A30 80010E30 24420001 */  addiu      $v0, $v0, 0x1
/* 11A34 80010E34 ACA20034 */  sw         $v0, 0x34($a1)
/* 11A38 80010E38 00832021 */  addu       $a0, $a0, $v1
/* 11A3C 80010E3C 0800439D */  j          .L80010E74
/* 11A40 80010E40 A4A400A4 */   sh        $a0, 0xA4($a1)
.L80010E44:
/* 11A44 80010E44 0800439D */  j          .L80010E74
/* 11A48 80010E48 A4A200A4 */   sh        $v0, 0xA4($a1)
.L80010E4C:
/* 11A4C 80010E4C 44830000 */  mtc1       $v1, $f0
/* 11A50 80010E50 46800020 */  cvt.s.w    $f0, $f0
/* 11A54 80010E54 46000021 */  cvt.d.s    $f0, $f0
/* 11A58 80010E58 46240001 */  sub.d      $f0, $f0, $f4
/* 11A5C 80010E5C C4A2006C */  lwc1       $f2, 0x6C($a1)
/* 11A60 80010E60 46200020 */  cvt.s.d    $f0, $f0
/* 11A64 80010E64 46020082 */  mul.s      $f2, $f0, $f2
/* 11A68 80010E68 A4A600A4 */  sh         $a2, 0xA4($a1)
/* 11A6C 80010E6C E4A00070 */  swc1       $f0, 0x70($a1)
/* 11A70 80010E70 E4A20024 */  swc1       $f2, 0x24($a1)
.L80010E74:
/* 11A74 80010E74 8CA20018 */  lw         $v0, 0x18($a1)
/* 11A78 80010E78 8CA3000C */  lw         $v1, 0xC($a1)
/* 11A7C 80010E7C 00431023 */  subu       $v0, $v0, $v1
/* 11A80 80010E80 0440FFC6 */  bltz       $v0, .L80010D9C
/* 11A84 80010E84 00000000 */   nop
/* 11A88 80010E88 03E00008 */  jr         $ra
/* 11A8C 80010E8C 00000000 */   nop

glabel func_80010E90
/* 11A90 80010E90 44800000 */  mtc1       $zero, $f0
/* 11A94 80010E94 46006186 */  mov.s      $f6, $f12
/* 11A98 80010E98 46003032 */  c.eq.s     $f6, $f0
/* 11A9C 80010E9C 00000000 */  nop
/* 11AA0 80010EA0 45000005 */  bc1f       .L80010EB8
/* 11AA4 80010EA4 00000000 */   nop
/* 11AA8 80010EA8 3C018000 */  lui        $at, %hi(D_80000F68)
/* 11AAC 80010EAC C4200F68 */  lwc1       $f0, %lo(D_80000F68)($at)
/* 11AB0 80010EB0 03E00008 */  jr         $ra
/* 11AB4 80010EB4 00000000 */   nop
.L80010EB8:
/* 11AB8 80010EB8 4606003C */  c.lt.s     $f0, $f6
/* 11ABC 80010EBC 00000000 */  nop
/* 11AC0 80010EC0 4503002F */  bc1tl      .L80010F80
/* 11AC4 80010EC4 46003021 */   cvt.d.s   $f0, $f6
/* 11AC8 80010EC8 3C018000 */  lui        $at, %hi(D_80000F70)
/* 11ACC 80010ECC D4200F70 */  ldc1       $f0, %lo(D_80000F70)($at)
/* 11AD0 80010ED0 46003187 */  neg.s      $f6, $f6
/* 11AD4 80010ED4 460030A1 */  cvt.d.s    $f2, $f6
/* 11AD8 80010ED8 46201082 */  mul.d      $f2, $f2, $f0
/* 11ADC 80010EDC 00000000 */  nop
/* 11AE0 80010EE0 46063382 */  mul.s      $f14, $f6, $f6
/* 11AE4 80010EE4 3C018000 */  lui        $at, %hi(D_80000F78)
/* 11AE8 80010EE8 D4200F78 */  ldc1       $f0, %lo(D_80000F78)($at)
/* 11AEC 80010EEC 46007321 */  cvt.d.s    $f12, $f14
/* 11AF0 80010EF0 46206302 */  mul.d      $f12, $f12, $f0
/* 11AF4 80010EF4 00000000 */  nop
/* 11AF8 80010EF8 46067202 */  mul.s      $f8, $f14, $f6
/* 11AFC 80010EFC 3C018000 */  lui        $at, %hi(D_80000F80)
/* 11B00 80010F00 D4200F80 */  ldc1       $f0, %lo(D_80000F80)($at)
/* 11B04 80010F04 46004221 */  cvt.d.s    $f8, $f8
/* 11B08 80010F08 46204202 */  mul.d      $f8, $f8, $f0
/* 11B0C 80010F0C 00000000 */  nop
/* 11B10 80010F10 460E7102 */  mul.s      $f4, $f14, $f14
/* 11B14 80010F14 3C018000 */  lui        $at, %hi(D_80000F88)
/* 11B18 80010F18 D4200F88 */  ldc1       $f0, %lo(D_80000F88)($at)
/* 11B1C 80010F1C 460022A1 */  cvt.d.s    $f10, $f4
/* 11B20 80010F20 46205282 */  mul.d      $f10, $f10, $f0
/* 11B24 80010F24 00000000 */  nop
/* 11B28 80010F28 46062182 */  mul.s      $f6, $f4, $f6
/* 11B2C 80010F2C 3C018000 */  lui        $at, %hi(D_80000F90)
/* 11B30 80010F30 D4200F90 */  ldc1       $f0, %lo(D_80000F90)($at)
/* 11B34 80010F34 460031A1 */  cvt.d.s    $f6, $f6
/* 11B38 80010F38 46203182 */  mul.d      $f6, $f6, $f0
/* 11B3C 80010F3C 00000000 */  nop
/* 11B40 80010F40 460E2102 */  mul.s      $f4, $f4, $f14
/* 11B44 80010F44 3C018000 */  lui        $at, %hi(D_80000F98)
/* 11B48 80010F48 D4200F98 */  ldc1       $f0, %lo(D_80000F98)($at)
/* 11B4C 80010F4C 46002121 */  cvt.d.s    $f4, $f4
/* 11B50 80010F50 46202102 */  mul.d      $f4, $f4, $f0
/* 11B54 80010F54 3C018000 */  lui        $at, %hi(D_80000FA0)
/* 11B58 80010F58 D4200FA0 */  ldc1       $f0, %lo(D_80000FA0)($at)
/* 11B5C 80010F5C 46201080 */  add.d      $f2, $f2, $f0
/* 11B60 80010F60 462C1080 */  add.d      $f2, $f2, $f12
/* 11B64 80010F64 46281080 */  add.d      $f2, $f2, $f8
/* 11B68 80010F68 462A1080 */  add.d      $f2, $f2, $f10
/* 11B6C 80010F6C 46261080 */  add.d      $f2, $f2, $f6
/* 11B70 80010F70 46241080 */  add.d      $f2, $f2, $f4
/* 11B74 80010F74 46220003 */  div.d      $f0, $f0, $f2
/* 11B78 80010F78 03E00008 */  jr         $ra
/* 11B7C 80010F7C 46200020 */   cvt.s.d   $f0, $f0
.L80010F80:
/* 11B80 80010F80 3C018000 */  lui        $at, %hi(D_80000FA8)
/* 11B84 80010F84 D4220FA8 */  ldc1       $f2, %lo(D_80000FA8)($at)
/* 11B88 80010F88 46220002 */  mul.d      $f0, $f0, $f2
/* 11B8C 80010F8C 00000000 */  nop
/* 11B90 80010F90 46063382 */  mul.s      $f14, $f6, $f6
/* 11B94 80010F94 3C018000 */  lui        $at, %hi(D_80000FB0)
/* 11B98 80010F98 D4220FB0 */  ldc1       $f2, %lo(D_80000FB0)($at)
/* 11B9C 80010F9C 46007321 */  cvt.d.s    $f12, $f14
/* 11BA0 80010FA0 46226302 */  mul.d      $f12, $f12, $f2
/* 11BA4 80010FA4 00000000 */  nop
/* 11BA8 80010FA8 46067202 */  mul.s      $f8, $f14, $f6
/* 11BAC 80010FAC 3C018000 */  lui        $at, %hi(D_80000FB8)
/* 11BB0 80010FB0 D4220FB8 */  ldc1       $f2, %lo(D_80000FB8)($at)
/* 11BB4 80010FB4 46004221 */  cvt.d.s    $f8, $f8
/* 11BB8 80010FB8 46224202 */  mul.d      $f8, $f8, $f2
/* 11BBC 80010FBC 00000000 */  nop
/* 11BC0 80010FC0 460E7102 */  mul.s      $f4, $f14, $f14
/* 11BC4 80010FC4 3C018000 */  lui        $at, %hi(D_80000FC0)
/* 11BC8 80010FC8 D4220FC0 */  ldc1       $f2, %lo(D_80000FC0)($at)
/* 11BCC 80010FCC 460022A1 */  cvt.d.s    $f10, $f4
/* 11BD0 80010FD0 46225282 */  mul.d      $f10, $f10, $f2
/* 11BD4 80010FD4 00000000 */  nop
/* 11BD8 80010FD8 46062182 */  mul.s      $f6, $f4, $f6
/* 11BDC 80010FDC 3C018000 */  lui        $at, %hi(D_80000FC8)
/* 11BE0 80010FE0 D4220FC8 */  ldc1       $f2, %lo(D_80000FC8)($at)
/* 11BE4 80010FE4 460031A1 */  cvt.d.s    $f6, $f6
/* 11BE8 80010FE8 46223182 */  mul.d      $f6, $f6, $f2
/* 11BEC 80010FEC 00000000 */  nop
/* 11BF0 80010FF0 460E2102 */  mul.s      $f4, $f4, $f14
/* 11BF4 80010FF4 3C018000 */  lui        $at, %hi(D_80000FD0)
/* 11BF8 80010FF8 D4220FD0 */  ldc1       $f2, %lo(D_80000FD0)($at)
/* 11BFC 80010FFC 46002121 */  cvt.d.s    $f4, $f4
/* 11C00 80011000 46222102 */  mul.d      $f4, $f4, $f2
/* 11C04 80011004 3C018000 */  lui        $at, %hi(D_80000FD8)
/* 11C08 80011008 D4220FD8 */  ldc1       $f2, %lo(D_80000FD8)($at)
/* 11C0C 8001100C 46220000 */  add.d      $f0, $f0, $f2
/* 11C10 80011010 462C0000 */  add.d      $f0, $f0, $f12
/* 11C14 80011014 46280000 */  add.d      $f0, $f0, $f8
/* 11C18 80011018 462A0000 */  add.d      $f0, $f0, $f10
/* 11C1C 8001101C 46260000 */  add.d      $f0, $f0, $f6
/* 11C20 80011020 46240000 */  add.d      $f0, $f0, $f4
/* 11C24 80011024 03E00008 */  jr         $ra
/* 11C28 80011028 46200020 */   cvt.s.d   $f0, $f0

glabel func_8001102C
/* 11C2C 8001102C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11C30 80011030 AFB10014 */  sw         $s1, 0x14($sp)
/* 11C34 80011034 00808821 */  addu       $s1, $a0, $zero
/* 11C38 80011038 AFB20018 */  sw         $s2, 0x18($sp)
/* 11C3C 8001103C 00A09021 */  addu       $s2, $a1, $zero
/* 11C40 80011040 AFB00010 */  sw         $s0, 0x10($sp)
/* 11C44 80011044 02208021 */  addu       $s0, $s1, $zero
/* 11C48 80011048 AFBF001C */  sw         $ra, 0x1C($sp)
/* 11C4C 8001104C 8E020010 */  lw         $v0, 0x10($s0)
/* 11C50 80011050 04400054 */  bltz       $v0, .L800111A4
/* 11C54 80011054 3C038000 */   lui       $v1, (0x80000000 >> 16)
/* 11C58 80011058 26040024 */  addiu      $a0, $s0, 0x24
/* 11C5C 8001105C 02002821 */  addu       $a1, $s0, $zero
/* 11C60 80011060 24060003 */  addiu      $a2, $zero, 0x3
/* 11C64 80011064 00431025 */  or         $v0, $v0, $v1
/* 11C68 80011068 0C00454C */  jal        func_80011530
/* 11C6C 8001106C AE020010 */   sw        $v0, 0x10($s0)
/* 11C70 80011070 8E04002C */  lw         $a0, 0x2C($s0)
/* 11C74 80011074 8E060020 */  lw         $a2, 0x20($s0)
/* 11C78 80011078 0C00454C */  jal        func_80011530
/* 11C7C 8001107C 02002821 */   addu      $a1, $s0, $zero
/* 11C80 80011080 8E020020 */  lw         $v0, 0x20($s0)
/* 11C84 80011084 18400045 */  blez       $v0, .L8001119C
/* 11C88 80011088 00003021 */   addu      $a2, $zero, $zero
/* 11C8C 8001108C 3C018000 */  lui        $at, %hi(D_80000FE0)
/* 11C90 80011090 D4240FE0 */  ldc1       $f4, %lo(D_80000FE0)($at)
/* 11C94 80011094 3C07FF00 */  lui        $a3, (0xFF000000 >> 16)
/* 11C98 80011098 24080001 */  addiu      $t0, $zero, 0x1
/* 11C9C 8001109C 00C02821 */  addu       $a1, $a2, $zero
.L800110A0:
/* 11CA0 800110A0 8E020028 */  lw         $v0, 0x28($s0)
/* 11CA4 800110A4 00452021 */  addu       $a0, $v0, $a1
/* 11CA8 800110A8 90830000 */  lbu        $v1, 0x0($a0)
/* 11CAC 800110AC 30620080 */  andi       $v0, $v1, 0x80
/* 11CB0 800110B0 10400002 */  beqz       $v0, .L800110BC
/* 11CB4 800110B4 306200FF */   andi      $v0, $v1, 0xFF
/* 11CB8 800110B8 2442FF00 */  addiu      $v0, $v0, -0x100
.L800110BC:
/* 11CBC 800110BC 44821000 */  mtc1       $v0, $f2
/* 11CC0 800110C0 468010A0 */  cvt.s.w    $f2, $f2
/* 11CC4 800110C4 46001021 */  cvt.d.s    $f0, $f2
/* 11CC8 800110C8 46240003 */  div.d      $f0, $f0, $f4
/* 11CCC 800110CC 46200020 */  cvt.s.d    $f0, $f0
/* 11CD0 800110D0 E4800000 */  swc1       $f0, 0x0($a0)
/* 11CD4 800110D4 8E020024 */  lw         $v0, 0x24($s0)
/* 11CD8 800110D8 00461021 */  addu       $v0, $v0, $a2
/* 11CDC 800110DC 90420000 */  lbu        $v0, 0x0($v0)
/* 11CE0 800110E0 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 11CE4 800110E4 00401821 */  addu       $v1, $v0, $zero
/* 11CE8 800110E8 30420080 */  andi       $v0, $v0, 0x80
/* 11CEC 800110EC 10400002 */  beqz       $v0, .L800110F8
/* 11CF0 800110F0 306200FF */   andi      $v0, $v1, 0xFF
/* 11CF4 800110F4 2442FF00 */  addiu      $v0, $v0, -0x100
.L800110F8:
/* 11CF8 800110F8 44821000 */  mtc1       $v0, $f2
/* 11CFC 800110FC 468010A0 */  cvt.s.w    $f2, $f2
/* 11D00 80011100 C4800000 */  lwc1       $f0, 0x0($a0)
/* 11D04 80011104 46020000 */  add.s      $f0, $f0, $f2
/* 11D08 80011108 E4800000 */  swc1       $f0, 0x0($a0)
/* 11D0C 8001110C 8E02002C */  lw         $v0, 0x2C($s0)
/* 11D10 80011110 00A21021 */  addu       $v0, $a1, $v0
/* 11D14 80011114 8C440000 */  lw         $a0, 0x0($v0)
/* 11D18 80011118 90820009 */  lbu        $v0, 0x9($a0)
/* 11D1C 8001111C 1440001A */  bnez       $v0, .L80011188
/* 11D20 80011120 00000000 */   nop
/* 11D24 80011124 8C830000 */  lw         $v1, 0x0($a0)
/* 11D28 80011128 00671024 */  and        $v0, $v1, $a3
/* 11D2C 8001112C 10470002 */  beq        $v0, $a3, .L80011138
/* 11D30 80011130 00721821 */   addu      $v1, $v1, $s2
/* 11D34 80011134 AC830000 */  sw         $v1, 0x0($a0)
.L80011138:
/* 11D38 80011138 8E02002C */  lw         $v0, 0x2C($s0)
/* 11D3C 8001113C 00A21021 */  addu       $v0, $a1, $v0
/* 11D40 80011140 8C420000 */  lw         $v0, 0x0($v0)
/* 11D44 80011144 A0480009 */  sb         $t0, 0x9($v0)
/* 11D48 80011148 8E02002C */  lw         $v0, 0x2C($s0)
/* 11D4C 8001114C 00A21021 */  addu       $v0, $a1, $v0
/* 11D50 80011150 8C430000 */  lw         $v1, 0x0($v0)
/* 11D54 80011154 8C62000C */  lw         $v0, 0xC($v1)
/* 11D58 80011158 10400002 */  beqz       $v0, .L80011164
/* 11D5C 8001115C 00511021 */   addu      $v0, $v0, $s1
/* 11D60 80011160 AC62000C */  sw         $v0, 0xC($v1)
.L80011164:
/* 11D64 80011164 8E02002C */  lw         $v0, 0x2C($s0)
/* 11D68 80011168 00A21021 */  addu       $v0, $a1, $v0
/* 11D6C 8001116C 8C430000 */  lw         $v1, 0x0($v0)
/* 11D70 80011170 90620008 */  lbu        $v0, 0x8($v1)
/* 11D74 80011174 14400004 */  bnez       $v0, .L80011188
/* 11D78 80011178 00000000 */   nop
/* 11D7C 8001117C 8C620010 */  lw         $v0, 0x10($v1)
/* 11D80 80011180 00511021 */  addu       $v0, $v0, $s1
/* 11D84 80011184 AC620010 */  sw         $v0, 0x10($v1)
.L80011188:
/* 11D88 80011188 8E020020 */  lw         $v0, 0x20($s0)
/* 11D8C 8001118C 24C60001 */  addiu      $a2, $a2, 0x1
/* 11D90 80011190 00C2102A */  slt        $v0, $a2, $v0
/* 11D94 80011194 1440FFC2 */  bnez       $v0, .L800110A0
/* 11D98 80011198 24A50004 */   addiu     $a1, $a1, 0x4
.L8001119C:
/* 11D9C 8001119C 0C006A40 */  jal        osWritebackDCacheAll
/* 11DA0 800111A0 00000000 */   nop
.L800111A4:
/* 11DA4 800111A4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 11DA8 800111A8 8FB20018 */  lw         $s2, 0x18($sp)
/* 11DAC 800111AC 8FB10014 */  lw         $s1, 0x14($sp)
/* 11DB0 800111B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11DB4 800111B4 03E00008 */  jr         $ra
/* 11DB8 800111B8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800111BC
/* 11DBC 800111BC 00002821 */  addu       $a1, $zero, $zero
/* 11DC0 800111C0 3C068004 */  lui        $a2, %hi(D_80038EA4)
/* 11DC4 800111C4 3C074800 */  lui        $a3, (0x48000000 >> 16)
/* 11DC8 800111C8 3C080800 */  lui        $t0, (0x8000000 >> 16)
.L800111CC:
/* 11DCC 800111CC 8CC28EA4 */  lw         $v0, %lo(D_80038EA4)($a2)
/* 11DD0 800111D0 00021840 */  sll        $v1, $v0, 1
/* 11DD4 800111D4 00471024 */  and        $v0, $v0, $a3
/* 11DD8 800111D8 10470003 */  beq        $v0, $a3, .L800111E8
/* 11DDC 800111DC ACC38EA4 */   sw        $v1, %lo(D_80038EA4)($a2)
/* 11DE0 800111E0 54480004 */  bnel       $v0, $t0, .L800111F4
/* 11DE4 800111E4 24A50001 */   addiu     $a1, $a1, 0x1
.L800111E8:
/* 11DE8 800111E8 34620001 */  ori        $v0, $v1, 0x1
/* 11DEC 800111EC ACC28EA4 */  sw         $v0, %lo(D_80038EA4)($a2)
/* 11DF0 800111F0 24A50001 */  addiu      $a1, $a1, 0x1
.L800111F4:
/* 11DF4 800111F4 28A20008 */  slti       $v0, $a1, 0x8
/* 11DF8 800111F8 1440FFF4 */  bnez       $v0, .L800111CC
/* 11DFC 800111FC 3C028004 */   lui       $v0, %hi(D_80038EA4)
/* 11E00 80011200 3C018000 */  lui        $at, %hi(D_80000FE8)
/* 11E04 80011204 C4200FE8 */  lwc1       $f0, %lo(D_80000FE8)($at)
/* 11E08 80011208 C4428EA4 */  lwc1       $f2, %lo(D_80038EA4)($v0)
/* 11E0C 8001120C 468010A0 */  cvt.s.w    $f2, $f2
/* 11E10 80011210 46001082 */  mul.s      $f2, $f2, $f0
/* 11E14 80011214 00000000 */  nop
/* 11E18 80011218 46001082 */  mul.s      $f2, $f2, $f0
/* 11E1C 8001121C 44840000 */  mtc1       $a0, $f0
/* 11E20 80011220 46800020 */  cvt.s.w    $f0, $f0
/* 11E24 80011224 46020002 */  mul.s      $f0, $f0, $f2
/* 11E28 80011228 4600010D */  trunc.w.s  $f4, $f0
/* 11E2C 8001122C 44022000 */  mfc1       $v0, $f4
/* 11E30 80011230 03E00008 */  jr         $ra
/* 11E34 80011234 00000000 */   nop

glabel func_80011238
/* 11E38 80011238 00803821 */  addu       $a3, $a0, $zero
/* 11E3C 8001123C 90E800C9 */  lbu        $t0, 0xC9($a3)
/* 11E40 80011240 00001821 */  addu       $v1, $zero, $zero
/* 11E44 80011244 ACE00004 */  sw         $zero, 0x4($a3)
.L80011248:
/* 11E48 80011248 A0800000 */  sb         $zero, 0x0($a0)
/* 11E4C 8001124C 24630001 */  addiu      $v1, $v1, 0x1
/* 11E50 80011250 2C62013C */  sltiu      $v0, $v1, 0x13C
/* 11E54 80011254 1440FFFC */  bnez       $v0, .L80011248
/* 11E58 80011258 24840001 */   addiu     $a0, $a0, 0x1
/* 11E5C 8001125C 240500FF */  addiu      $a1, $zero, 0xFF
/* 11E60 80011260 3C028004 */  lui        $v0, %hi(D_80038E94)
/* 11E64 80011264 A0E500CC */  sb         $a1, 0xCC($a3)
/* 11E68 80011268 A0E500BE */  sb         $a1, 0xBE($a3)
/* 11E6C 8001126C 8C428E94 */  lw         $v0, %lo(D_80038E94)($v0)
/* 11E70 80011270 24066000 */  addiu      $a2, $zero, 0x6000
/* 11E74 80011274 00C2001A */  div        $zero, $a2, $v0
/* 11E78 80011278 14400002 */  bnez       $v0, .L80011284
/* 11E7C 8001127C 00000000 */   nop
/* 11E80 80011280 0007000D */  break      7
.L80011284:
/* 11E84 80011284 2401FFFF */  addiu      $at, $zero, -0x1
/* 11E88 80011288 14410004 */  bne        $v0, $at, .L8001129C
/* 11E8C 8001128C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 11E90 80011290 14C10002 */  bne        $a2, $at, .L8001129C
/* 11E94 80011294 00000000 */   nop
/* 11E98 80011298 0006000D */  break      6
.L8001129C:
/* 11E9C 8001129C 00003012 */  mflo       $a2
/* 11EA0 800112A0 2403007F */  addiu      $v1, $zero, 0x7F
/* 11EA4 800112A4 3C018000 */  lui        $at, %hi(D_80000FEC)
/* 11EA8 800112A8 C4200FEC */  lwc1       $f0, %lo(D_80000FEC)($at)
/* 11EAC 800112AC 3C018000 */  lui        $at, %hi(D_80000FF0)
/* 11EB0 800112B0 C4220FF0 */  lwc1       $f2, %lo(D_80000FF0)($at)
/* 11EB4 800112B4 3C018000 */  lui        $at, %hi(D_80000FF4)
/* 11EB8 800112B8 C4240FF4 */  lwc1       $f4, %lo(D_80000FF4)($at)
/* 11EBC 800112BC 3C018000 */  lui        $at, %hi(D_80000FF8)
/* 11EC0 800112C0 C4260FF8 */  lwc1       $f6, %lo(D_80000FF8)($at)
/* 11EC4 800112C4 3C018000 */  lui        $at, %hi(D_80000FFC)
/* 11EC8 800112C8 C4280FFC */  lwc1       $f8, %lo(D_80000FFC)($at)
/* 11ECC 800112CC 24040001 */  addiu      $a0, $zero, 0x1
/* 11ED0 800112D0 A0E300D3 */  sb         $v1, 0xD3($a3)
/* 11ED4 800112D4 A0E300BC */  sb         $v1, 0xBC($a3)
/* 11ED8 800112D8 A0E400BF */  sb         $a0, 0xBF($a3)
/* 11EDC 800112DC A0E400C6 */  sb         $a0, 0xC6($a3)
/* 11EE0 800112E0 A0E300C1 */  sb         $v1, 0xC1($a3)
/* 11EE4 800112E4 A0E500C7 */  sb         $a1, 0xC7($a3)
/* 11EE8 800112E8 A0E300C2 */  sb         $v1, 0xC2($a3)
/* 11EEC 800112EC A4E4009A */  sh         $a0, 0x9A($a3)
/* 11EF0 800112F0 A4E400A2 */  sh         $a0, 0xA2($a3)
/* 11EF4 800112F4 A4E400A4 */  sh         $a0, 0xA4($a3)
/* 11EF8 800112F8 24020040 */  addiu      $v0, $zero, 0x40
/* 11EFC 800112FC A0E200BD */  sb         $v0, 0xBD($a3)
/* 11F00 80011300 2402000F */  addiu      $v0, $zero, 0xF
/* 11F04 80011304 A0E200C8 */  sb         $v0, 0xC8($a3)
/* 11F08 80011308 3C028004 */  lui        $v0, %hi(D_80038EA8)
/* 11F0C 8001130C 8C438EA8 */  lw         $v1, %lo(D_80038EA8)($v0)
/* 11F10 80011310 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 11F14 80011314 A4E200A0 */  sh         $v0, 0xA0($a3)
/* 11F18 80011318 2402FFFF */  addiu      $v0, $zero, -0x1
/* 11F1C 8001131C ACE20010 */  sw         $v0, 0x10($a3)
/* 11F20 80011320 24020080 */  addiu      $v0, $zero, 0x80
/* 11F24 80011324 A4E2009E */  sh         $v0, 0x9E($a3)
/* 11F28 80011328 A4E200B0 */  sh         $v0, 0xB0($a3)
/* 11F2C 8001132C A4E20098 */  sh         $v0, 0x98($a3)
/* 11F30 80011330 E4E00028 */  swc1       $f0, 0x28($a3)
/* 11F34 80011334 E4E2006C */  swc1       $f2, 0x6C($a3)
/* 11F38 80011338 E4E40058 */  swc1       $f4, 0x58($a3)
/* 11F3C 8001133C E4E6005C */  swc1       $f6, 0x5C($a3)
/* 11F40 80011340 E4E80060 */  swc1       $f8, 0x60($a3)
/* 11F44 80011344 A4E600A8 */  sh         $a2, 0xA8($a3)
/* 11F48 80011348 14600003 */  bnez       $v1, .L80011358
/* 11F4C 8001134C A4E6009C */   sh        $a2, 0x9C($a3)
/* 11F50 80011350 3C028004 */  lui        $v0, %hi(D_80038EAC)
/* 11F54 80011354 8C438EAC */  lw         $v1, %lo(D_80038EAC)($v0)
.L80011358:
/* 11F58 80011358 ACE3007C */  sw         $v1, 0x7C($a3)
/* 11F5C 8001135C 03E00008 */  jr         $ra
/* 11F60 80011360 A0E800C9 */   sb        $t0, 0xC9($a3)

glabel func_80011364
/* 11F64 80011364 04A1000C */  bgez       $a1, .L80011398
/* 11F68 80011368 24060004 */   addiu     $a2, $zero, 0x4
/* 11F6C 8001136C 00003021 */  addu       $a2, $zero, $zero
/* 11F70 80011370 3C028004 */  lui        $v0, %hi(D_80038E8C)
/* 11F74 80011374 8C438E8C */  lw         $v1, %lo(D_80038E8C)($v0)
.L80011378:
/* 11F78 80011378 8C620004 */  lw         $v0, 0x4($v1)
/* 11F7C 8001137C 10400032 */  beqz       $v0, .L80011448
/* 11F80 80011380 00000000 */   nop
/* 11F84 80011384 24C60001 */  addiu      $a2, $a2, 0x1
/* 11F88 80011388 28C20004 */  slti       $v0, $a2, 0x4
/* 11F8C 8001138C 1440FFFA */  bnez       $v0, .L80011378
/* 11F90 80011390 2463013C */   addiu     $v1, $v1, 0x13C
/* 11F94 80011394 24060004 */  addiu      $a2, $zero, 0x4
.L80011398:
/* 11F98 80011398 3C028004 */  lui        $v0, %hi(D_80038E90)
/* 11F9C 8001139C 3C038004 */  lui        $v1, %hi(D_80038E84)
/* 11FA0 800113A0 8C678E84 */  lw         $a3, %lo(D_80038E84)($v1)
/* 11FA4 800113A4 8C438E90 */  lw         $v1, %lo(D_80038E90)($v0)
/* 11FA8 800113A8 00C7102A */  slt        $v0, $a2, $a3
/* 11FAC 800113AC 50400009 */  beql       $v0, $zero, .L800113D4
/* 11FB0 800113B0 24060004 */   addiu     $a2, $zero, 0x4
.L800113B4:
/* 11FB4 800113B4 8C620004 */  lw         $v0, 0x4($v1)
/* 11FB8 800113B8 10400023 */  beqz       $v0, .L80011448
/* 11FBC 800113BC 00000000 */   nop
/* 11FC0 800113C0 24C60001 */  addiu      $a2, $a2, 0x1
/* 11FC4 800113C4 00C7102A */  slt        $v0, $a2, $a3
/* 11FC8 800113C8 1440FFFA */  bnez       $v0, .L800113B4
/* 11FCC 800113CC 2463013C */   addiu     $v1, $v1, 0x13C
/* 11FD0 800113D0 24060004 */  addiu      $a2, $zero, 0x4
.L800113D4:
/* 11FD4 800113D4 3C087FFF */  lui        $t0, (0x7FFFFFFF >> 16)
/* 11FD8 800113D8 3508FFFF */  ori        $t0, $t0, (0x7FFFFFFF & 0xFFFF)
/* 11FDC 800113DC 3C028004 */  lui        $v0, %hi(D_80038E90)
/* 11FE0 800113E0 3C038004 */  lui        $v1, %hi(D_80038E84)
/* 11FE4 800113E4 8C678E84 */  lw         $a3, %lo(D_80038E84)($v1)
/* 11FE8 800113E8 8C438E90 */  lw         $v1, %lo(D_80038E90)($v0)
/* 11FEC 800113EC 00C7102A */  slt        $v0, $a2, $a3
/* 11FF0 800113F0 10400010 */  beqz       $v0, .L80011434
/* 11FF4 800113F4 24090003 */   addiu     $t1, $zero, 0x3
/* 11FF8 800113F8 00E05021 */  addu       $t2, $a3, $zero
/* 11FFC 800113FC 24670048 */  addiu      $a3, $v1, 0x48
.L80011400:
/* 12000 80011400 8CE20030 */  lw         $v0, 0x30($a3)
/* 12004 80011404 50400008 */  beql       $v0, $zero, .L80011428
/* 12008 80011408 24C60001 */   addiu     $a2, $a2, 0x1
/* 1200C 8001140C 8CE30000 */  lw         $v1, 0x0($a3)
/* 12010 80011410 0103102A */  slt        $v0, $t0, $v1
/* 12014 80011414 54400004 */  bnel       $v0, $zero, .L80011428
/* 12018 80011418 24C60001 */   addiu     $a2, $a2, 0x1
/* 1201C 8001141C 00604021 */  addu       $t0, $v1, $zero
/* 12020 80011420 00C04821 */  addu       $t1, $a2, $zero
/* 12024 80011424 24C60001 */  addiu      $a2, $a2, 0x1
.L80011428:
/* 12028 80011428 00CA102A */  slt        $v0, $a2, $t2
/* 1202C 8001142C 1440FFF4 */  bnez       $v0, .L80011400
/* 12030 80011430 24E7013C */   addiu     $a3, $a3, 0x13C
.L80011434:
/* 12034 80011434 29220004 */  slti       $v0, $t1, 0x4
/* 12038 80011438 14400005 */  bnez       $v0, .L80011450
/* 1203C 8001143C 24060004 */   addiu     $a2, $zero, 0x4
/* 12040 80011440 03E00008 */  jr         $ra
/* 12044 80011444 01201021 */   addu      $v0, $t1, $zero
.L80011448:
/* 12048 80011448 03E00008 */  jr         $ra
/* 1204C 8001144C 00C01021 */   addu      $v0, $a2, $zero
.L80011450:
/* 12050 80011450 3C028004 */  lui        $v0, %hi(D_80038E90)
/* 12054 80011454 3C038004 */  lui        $v1, %hi(D_80038E84)
/* 12058 80011458 8C678E84 */  lw         $a3, %lo(D_80038E84)($v1)
/* 1205C 8001145C 8C438E90 */  lw         $v1, %lo(D_80038E90)($v0)
/* 12060 80011460 00C7102A */  slt        $v0, $a2, $a3
/* 12064 80011464 5040000C */  beql       $v0, $zero, .L80011498
/* 12068 80011468 24060004 */   addiu     $a2, $zero, 0x4
/* 1206C 8001146C 8C680078 */  lw         $t0, 0x78($v1)
.L80011470:
/* 12070 80011470 55000005 */  bnel       $t0, $zero, .L80011488
/* 12074 80011474 24C60001 */   addiu     $a2, $a2, 0x1
/* 12078 80011478 8C620074 */  lw         $v0, 0x74($v1)
/* 1207C 8001147C 1444FFF2 */  bne        $v0, $a0, .L80011448
/* 12080 80011480 00000000 */   nop
/* 12084 80011484 24C60001 */  addiu      $a2, $a2, 0x1
.L80011488:
/* 12088 80011488 00C7102A */  slt        $v0, $a2, $a3
/* 1208C 8001148C 1440FFF8 */  bnez       $v0, .L80011470
/* 12090 80011490 00000000 */   nop
/* 12094 80011494 24060004 */  addiu      $a2, $zero, 0x4
.L80011498:
/* 12098 80011498 3C028004 */  lui        $v0, %hi(D_80038E90)
/* 1209C 8001149C 3C038004 */  lui        $v1, %hi(D_80038E84)
/* 120A0 800114A0 8C678E84 */  lw         $a3, %lo(D_80038E84)($v1)
/* 120A4 800114A4 8C438E90 */  lw         $v1, %lo(D_80038E90)($v0)
/* 120A8 800114A8 00C7102A */  slt        $v0, $a2, $a3
/* 120AC 800114AC 10400010 */  beqz       $v0, .L800114F0
/* 120B0 800114B0 00054880 */   sll       $t1, $a1, 2
/* 120B4 800114B4 00E04021 */  addu       $t0, $a3, $zero
/* 120B8 800114B8 24670080 */  addiu      $a3, $v1, 0x80
.L800114BC:
/* 120BC 800114BC 8CE2FFF4 */  lw         $v0, -0xC($a3)
/* 120C0 800114C0 54440008 */  bnel       $v0, $a0, .L800114E4
/* 120C4 800114C4 24C60001 */   addiu     $a2, $a2, 0x1
/* 120C8 800114C8 8C82000C */  lw         $v0, 0xC($a0)
/* 120CC 800114CC 01221021 */  addu       $v0, $t1, $v0
/* 120D0 800114D0 8C430000 */  lw         $v1, 0x0($v0)
/* 120D4 800114D4 8CE20000 */  lw         $v0, 0x0($a3)
/* 120D8 800114D8 1062FFDB */  beq        $v1, $v0, .L80011448
/* 120DC 800114DC 00000000 */   nop
/* 120E0 800114E0 24C60001 */  addiu      $a2, $a2, 0x1
.L800114E4:
/* 120E4 800114E4 00C8102A */  slt        $v0, $a2, $t0
/* 120E8 800114E8 1440FFF4 */  bnez       $v0, .L800114BC
/* 120EC 800114EC 24E7013C */   addiu     $a3, $a3, 0x13C
.L800114F0:
/* 120F0 800114F0 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 120F4 800114F4 8C438E84 */  lw         $v1, %lo(D_80038E84)($v0)
/* 120F8 800114F8 2463FFFC */  addiu      $v1, $v1, -0x4
/* 120FC 800114FC 00A3001A */  div        $zero, $a1, $v1
/* 12100 80011500 14600002 */  bnez       $v1, .L8001150C
/* 12104 80011504 00000000 */   nop
/* 12108 80011508 0007000D */  break      7
.L8001150C:
/* 1210C 8001150C 2401FFFF */  addiu      $at, $zero, -0x1
/* 12110 80011510 14610004 */  bne        $v1, $at, .L80011524
/* 12114 80011514 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 12118 80011518 14A10002 */  bne        $a1, $at, .L80011524
/* 1211C 8001151C 00000000 */   nop
/* 12120 80011520 0006000D */  break      6
.L80011524:
/* 12124 80011524 00001010 */  mfhi       $v0
/* 12128 80011528 03E00008 */  jr         $ra
/* 1212C 8001152C 24420004 */   addiu     $v0, $v0, 0x4

glabel func_80011530
/* 12130 80011530 18C00009 */  blez       $a2, .L80011558
/* 12134 80011534 00001821 */   addu      $v1, $zero, $zero
.L80011538:
/* 12138 80011538 8C820000 */  lw         $v0, 0x0($a0)
/* 1213C 8001153C 10400003 */  beqz       $v0, .L8001154C
/* 12140 80011540 24630001 */   addiu     $v1, $v1, 0x1
/* 12144 80011544 00451021 */  addu       $v0, $v0, $a1
/* 12148 80011548 AC820000 */  sw         $v0, 0x0($a0)
.L8001154C:
/* 1214C 8001154C 0066102A */  slt        $v0, $v1, $a2
/* 12150 80011550 1440FFF9 */  bnez       $v0, .L80011538
/* 12154 80011554 24840004 */   addiu     $a0, $a0, 0x4
.L80011558:
/* 12158 80011558 03E00008 */  jr         $ra
/* 1215C 8001155C 00000000 */   nop

glabel func_80011560
/* 12160 80011560 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12164 80011564 AFB00010 */  sw         $s0, 0x10($sp)
/* 12168 80011568 8FB00040 */  lw         $s0, 0x40($sp)
/* 1216C 8001156C AFB3001C */  sw         $s3, 0x1C($sp)
/* 12170 80011570 00809821 */  addu       $s3, $a0, $zero
/* 12174 80011574 AFB40020 */  sw         $s4, 0x20($sp)
/* 12178 80011578 00A0A021 */  addu       $s4, $a1, $zero
/* 1217C 8001157C AFB50024 */  sw         $s5, 0x24($sp)
/* 12180 80011580 00C0A821 */  addu       $s5, $a2, $zero
/* 12184 80011584 AFB10014 */  sw         $s1, 0x14($sp)
/* 12188 80011588 AFB20018 */  sw         $s2, 0x18($sp)
/* 1218C 8001158C 8FB20044 */  lw         $s2, 0x44($sp)
/* 12190 80011590 AFBF0028 */  sw         $ra, 0x28($sp)
/* 12194 80011594 0C00448E */  jal        func_80011238
/* 12198 80011598 00E08821 */   addu      $s1, $a3, $zero
/* 1219C 8001159C 3C038004 */  lui        $v1, %hi(D_80038EA0)
/* 121A0 800115A0 8C628EA0 */  lw         $v0, %lo(D_80038EA0)($v1)
/* 121A4 800115A4 A67500A6 */  sh         $s5, 0xA6($s3)
/* 121A8 800115A8 AE740078 */  sw         $s4, 0x78($s3)
/* 121AC 800115AC A671009E */  sh         $s1, 0x9E($s3)
/* 121B0 800115B0 A67000B0 */  sh         $s0, 0xB0($s3)
/* 121B4 800115B4 AE620044 */  sw         $v0, 0x44($s3)
/* 121B8 800115B8 AE720048 */  sw         $s2, 0x48($s3)
/* 121BC 800115BC 8E840010 */  lw         $a0, 0x10($s4)
/* 121C0 800115C0 24420001 */  addiu      $v0, $v0, 0x1
/* 121C4 800115C4 10800002 */  beqz       $a0, .L800115D0
/* 121C8 800115C8 AC628EA0 */   sw        $v0, %lo(D_80038EA0)($v1)
/* 121CC 800115CC AE64007C */  sw         $a0, 0x7C($s3)
.L800115D0:
/* 121D0 800115D0 001510C0 */  sll        $v0, $s5, 3
/* 121D4 800115D4 02821021 */  addu       $v0, $s4, $v0
/* 121D8 800115D8 8C420018 */  lw         $v0, 0x18($v0)
/* 121DC 800115DC AE620080 */  sw         $v0, 0x80($s3)
/* 121E0 800115E0 AE620004 */  sw         $v0, 0x4($s3)
/* 121E4 800115E4 8E620044 */  lw         $v0, 0x44($s3)
/* 121E8 800115E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 121EC 800115EC 8FB50024 */  lw         $s5, 0x24($sp)
/* 121F0 800115F0 8FB40020 */  lw         $s4, 0x20($sp)
/* 121F4 800115F4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 121F8 800115F8 8FB20018 */  lw         $s2, 0x18($sp)
/* 121FC 800115FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 12200 80011600 8FB00010 */  lw         $s0, 0x10($sp)
/* 12204 80011604 03E00008 */  jr         $ra
/* 12208 80011608 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001160C
/* 1220C 8001160C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12210 80011610 00805021 */  addu       $t2, $a0, $zero
/* 12214 80011614 00A05821 */  addu       $t3, $a1, $zero
/* 12218 80011618 00C06821 */  addu       $t5, $a2, $zero
/* 1221C 8001161C 00E07021 */  addu       $t6, $a3, $zero
/* 12220 80011620 8FA80030 */  lw         $t0, 0x30($sp)
/* 12224 80011624 2402FFFF */  addiu      $v0, $zero, -0x1
/* 12228 80011628 15020004 */  bne        $t0, $v0, .L8001163C
/* 1222C 8001162C AFBF0018 */   sw        $ra, 0x18($sp)
/* 12230 80011630 000B10C0 */  sll        $v0, $t3, 3
/* 12234 80011634 01421021 */  addu       $v0, $t2, $v0
/* 12238 80011638 8C48001C */  lw         $t0, 0x1C($v0)
.L8001163C:
/* 1223C 8001163C 24060004 */  addiu      $a2, $zero, 0x4
/* 12240 80011640 3C028004 */  lui        $v0, %hi(D_80038E90)
/* 12244 80011644 3C038004 */  lui        $v1, %hi(D_80038E84)
/* 12248 80011648 8C638E84 */  lw         $v1, %lo(D_80038E84)($v1)
/* 1224C 8001164C 8C448E90 */  lw         $a0, %lo(D_80038E90)($v0)
/* 12250 80011650 00C3102A */  slt        $v0, $a2, $v1
/* 12254 80011654 10400013 */  beqz       $v0, .L800116A4
/* 12258 80011658 25070001 */   addiu     $a3, $t0, 0x1
/* 1225C 8001165C 00604821 */  addu       $t1, $v1, $zero
/* 12260 80011660 00802821 */  addu       $a1, $a0, $zero
.L80011664:
/* 12264 80011664 8CA20004 */  lw         $v0, 0x4($a1)
/* 12268 80011668 50400014 */  beql       $v0, $zero, .L800116BC
/* 1226C 8001166C 01402821 */   addu      $a1, $t2, $zero
/* 12270 80011670 8CA20078 */  lw         $v0, 0x78($a1)
/* 12274 80011674 10400007 */  beqz       $v0, .L80011694
/* 12278 80011678 24C60001 */   addiu     $a2, $a2, 0x1
/* 1227C 8001167C 8CA30048 */  lw         $v1, 0x48($a1)
/* 12280 80011680 0067102A */  slt        $v0, $v1, $a3
/* 12284 80011684 10400003 */  beqz       $v0, .L80011694
/* 12288 80011688 00000000 */   nop
/* 1228C 8001168C 00603821 */  addu       $a3, $v1, $zero
/* 12290 80011690 00A06021 */  addu       $t4, $a1, $zero
.L80011694:
/* 12294 80011694 24A5013C */  addiu      $a1, $a1, 0x13C
/* 12298 80011698 00C9102A */  slt        $v0, $a2, $t1
/* 1229C 8001169C 1440FFF1 */  bnez       $v0, .L80011664
/* 122A0 800116A0 2484013C */   addiu     $a0, $a0, 0x13C
.L800116A4:
/* 122A4 800116A4 00E8102A */  slt        $v0, $a3, $t0
/* 122A8 800116A8 14400003 */  bnez       $v0, .L800116B8
/* 122AC 800116AC 01802021 */   addu      $a0, $t4, $zero
/* 122B0 800116B0 080045B4 */  j          .L800116D0
/* 122B4 800116B4 00001021 */   addu      $v0, $zero, $zero
.L800116B8:
/* 122B8 800116B8 01402821 */  addu       $a1, $t2, $zero
.L800116BC:
/* 122BC 800116BC 01603021 */  addu       $a2, $t3, $zero
/* 122C0 800116C0 01A03821 */  addu       $a3, $t5, $zero
/* 122C4 800116C4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 122C8 800116C8 0C004558 */  jal        func_80011560
/* 122CC 800116CC AFA80014 */   sw        $t0, 0x14($sp)
.L800116D0:
/* 122D0 800116D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 122D4 800116D4 03E00008 */  jr         $ra
/* 122D8 800116D8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800116DC
/* 122DC 800116DC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 122E0 800116E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 122E4 800116E4 00808821 */  addu       $s1, $a0, $zero
/* 122E8 800116E8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 122EC 800116EC AFB7002C */  sw         $s7, 0x2C($sp)
/* 122F0 800116F0 AFB60028 */  sw         $s6, 0x28($sp)
/* 122F4 800116F4 AFB50024 */  sw         $s5, 0x24($sp)
/* 122F8 800116F8 AFB40020 */  sw         $s4, 0x20($sp)
/* 122FC 800116FC AFB3001C */  sw         $s3, 0x1C($sp)
/* 12300 80011700 AFB20018 */  sw         $s2, 0x18($sp)
/* 12304 80011704 AFB00010 */  sw         $s0, 0x10($sp)
/* 12308 80011708 8E220028 */  lw         $v0, 0x28($s1)
/* 1230C 8001170C 8E350004 */  lw         $s5, 0x4($s1)
/* 12310 80011710 54400014 */  bnel       $v0, $zero, .L80011764
/* 12314 80011714 02202021 */   addu      $a0, $s1, $zero
/* 12318 80011718 2624000C */  addiu      $a0, $s1, 0xC
/* 1231C 8001171C 02202821 */  addu       $a1, $s1, $zero
/* 12320 80011720 24060007 */  addiu      $a2, $zero, 0x7
/* 12324 80011724 24020001 */  addiu      $v0, $zero, 0x1
/* 12328 80011728 0C00454C */  jal        func_80011530
/* 1232C 8001172C AE220028 */   sw        $v0, 0x28($s1)
/* 12330 80011730 02202821 */  addu       $a1, $s1, $zero
/* 12334 80011734 8E24000C */  lw         $a0, 0xC($s1)
/* 12338 80011738 0C00454C */  jal        func_80011530
/* 1233C 8001173C 02A03021 */   addu      $a2, $s5, $zero
/* 12340 80011740 02202821 */  addu       $a1, $s1, $zero
/* 12344 80011744 8E240010 */  lw         $a0, 0x10($s1)
/* 12348 80011748 0C00454C */  jal        func_80011530
/* 1234C 8001174C 02A03021 */   addu      $a2, $s5, $zero
/* 12350 80011750 02202821 */  addu       $a1, $s1, $zero
/* 12354 80011754 8E240014 */  lw         $a0, 0x14($s1)
/* 12358 80011758 0C00454C */  jal        func_80011530
/* 1235C 8001175C 02A03021 */   addu      $a2, $s5, $zero
/* 12360 80011760 02202021 */  addu       $a0, $s1, $zero
.L80011764:
/* 12364 80011764 3C038004 */  lui        $v1, %hi(D_80038EA0)
/* 12368 80011768 8C748EA0 */  lw         $s4, %lo(D_80038EA0)($v1)
/* 1236C 8001176C 2405FFFF */  addiu      $a1, $zero, -0x1
/* 12370 80011770 26820001 */  addiu      $v0, $s4, 0x1
/* 12374 80011774 0C0044D9 */  jal        func_80011364
/* 12378 80011778 AC628EA0 */   sw        $v0, %lo(D_80038EA0)($v1)
/* 1237C 8001177C 3C128004 */  lui        $s2, %hi(D_80038E8C)
/* 12380 80011780 00021880 */  sll        $v1, $v0, 2
/* 12384 80011784 00621821 */  addu       $v1, $v1, $v0
/* 12388 80011788 00031900 */  sll        $v1, $v1, 4
/* 1238C 8001178C 00621823 */  subu       $v1, $v1, $v0
/* 12390 80011790 8E428E8C */  lw         $v0, %lo(D_80038E8C)($s2)
/* 12394 80011794 00031880 */  sll        $v1, $v1, 2
/* 12398 80011798 00438021 */  addu       $s0, $v0, $v1
/* 1239C 8001179C 0C00448E */  jal        func_80011238
/* 123A0 800117A0 02002021 */   addu      $a0, $s0, $zero
/* 123A4 800117A4 8E030000 */  lw         $v1, 0x0($s0)
/* 123A8 800117A8 24020001 */  addiu      $v0, $zero, 0x1
/* 123AC 800117AC A20200D2 */  sb         $v0, 0xD2($s0)
/* 123B0 800117B0 AE110074 */  sw         $s1, 0x74($s0)
/* 123B4 800117B4 34630003 */  ori        $v1, $v1, 0x3
/* 123B8 800117B8 AE030000 */  sw         $v1, 0x0($s0)
/* 123BC 800117BC 8E220024 */  lw         $v0, 0x24($s1)
/* 123C0 800117C0 00009821 */  addu       $s3, $zero, $zero
/* 123C4 800117C4 AE140044 */  sw         $s4, 0x44($s0)
/* 123C8 800117C8 AE020080 */  sw         $v0, 0x80($s0)
/* 123CC 800117CC 1AA0002E */  blez       $s5, .L80011888
/* 123D0 800117D0 AE020004 */   sw        $v0, 0x4($s0)
/* 123D4 800117D4 0240B821 */  addu       $s7, $s2, $zero
/* 123D8 800117D8 24160001 */  addiu      $s6, $zero, 0x1
.L800117DC:
/* 123DC 800117DC 8E22000C */  lw         $v0, 0xC($s1)
/* 123E0 800117E0 00139080 */  sll        $s2, $s3, 2
/* 123E4 800117E4 02421021 */  addu       $v0, $s2, $v0
/* 123E8 800117E8 8C420000 */  lw         $v0, 0x0($v0)
/* 123EC 800117EC 50400023 */  beql       $v0, $zero, .L8001187C
/* 123F0 800117F0 26730001 */   addiu     $s3, $s3, 0x1
/* 123F4 800117F4 02202021 */  addu       $a0, $s1, $zero
/* 123F8 800117F8 0C0044D9 */  jal        func_80011364
/* 123FC 800117FC 02602821 */   addu      $a1, $s3, $zero
/* 12400 80011800 00021880 */  sll        $v1, $v0, 2
/* 12404 80011804 00621821 */  addu       $v1, $v1, $v0
/* 12408 80011808 00031900 */  sll        $v1, $v1, 4
/* 1240C 8001180C 00621823 */  subu       $v1, $v1, $v0
/* 12410 80011810 8EE28E8C */  lw         $v0, %lo(D_80038E8C)($s7)
/* 12414 80011814 00031880 */  sll        $v1, $v1, 2
/* 12418 80011818 00438021 */  addu       $s0, $v0, $v1
/* 1241C 8001181C 0C00448E */  jal        func_80011238
/* 12420 80011820 02002021 */   addu      $a0, $s0, $zero
/* 12424 80011824 8E020000 */  lw         $v0, 0x0($s0)
/* 12428 80011828 A21600D2 */  sb         $s6, 0xD2($s0)
/* 1242C 8001182C AE110074 */  sw         $s1, 0x74($s0)
/* 12430 80011830 34420001 */  ori        $v0, $v0, 0x1
/* 12434 80011834 AE020000 */  sw         $v0, 0x0($s0)
/* 12438 80011838 8E220010 */  lw         $v0, 0x10($s1)
/* 1243C 8001183C 02421021 */  addu       $v0, $s2, $v0
/* 12440 80011840 8C420000 */  lw         $v0, 0x0($v0)
/* 12444 80011844 AE02008C */  sw         $v0, 0x8C($s0)
/* 12448 80011848 AE020038 */  sw         $v0, 0x38($s0)
/* 1244C 8001184C 8E220014 */  lw         $v0, 0x14($s1)
/* 12450 80011850 02421021 */  addu       $v0, $s2, $v0
/* 12454 80011854 8C420000 */  lw         $v0, 0x0($v0)
/* 12458 80011858 AE020088 */  sw         $v0, 0x88($s0)
/* 1245C 8001185C AE020034 */  sw         $v0, 0x34($s0)
/* 12460 80011860 8E22000C */  lw         $v0, 0xC($s1)
/* 12464 80011864 02421021 */  addu       $v0, $s2, $v0
/* 12468 80011868 8C420000 */  lw         $v0, 0x0($v0)
/* 1246C 8001186C AE140044 */  sw         $s4, 0x44($s0)
/* 12470 80011870 AE020080 */  sw         $v0, 0x80($s0)
/* 12474 80011874 AE020004 */  sw         $v0, 0x4($s0)
/* 12478 80011878 26730001 */  addiu      $s3, $s3, 0x1
.L8001187C:
/* 1247C 8001187C 0275102A */  slt        $v0, $s3, $s5
/* 12480 80011880 1440FFD6 */  bnez       $v0, .L800117DC
/* 12484 80011884 00000000 */   nop
.L80011888:
/* 12488 80011888 3C028004 */  lui        $v0, %hi(D_80038EA8)
/* 1248C 8001188C AC408EA8 */  sw         $zero, %lo(D_80038EA8)($v0)
/* 12490 80011890 02801021 */  addu       $v0, $s4, $zero
/* 12494 80011894 8FBF0030 */  lw         $ra, 0x30($sp)
/* 12498 80011898 8FB7002C */  lw         $s7, 0x2C($sp)
/* 1249C 8001189C 8FB60028 */  lw         $s6, 0x28($sp)
/* 124A0 800118A0 8FB50024 */  lw         $s5, 0x24($sp)
/* 124A4 800118A4 8FB40020 */  lw         $s4, 0x20($sp)
/* 124A8 800118A8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 124AC 800118AC 8FB20018 */  lw         $s2, 0x18($sp)
/* 124B0 800118B0 8FB10014 */  lw         $s1, 0x14($sp)
/* 124B4 800118B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 124B8 800118B8 03E00008 */  jr         $ra
/* 124BC 800118BC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800118C0
/* 124C0 800118C0 3C038004 */  lui        $v1, %hi(D_80038E8C)
/* 124C4 800118C4 3C028004 */  lui        $v0, %hi(D_80038E84)
/* 124C8 800118C8 8C428E84 */  lw         $v0, %lo(D_80038E84)($v0)
/* 124CC 800118CC 8C638E8C */  lw         $v1, %lo(D_80038E8C)($v1)
/* 124D0 800118D0 1840000C */  blez       $v0, .L80011904
/* 124D4 800118D4 00003821 */   addu      $a3, $zero, $zero
/* 124D8 800118D8 00404021 */  addu       $t0, $v0, $zero
.L800118DC:
/* 124DC 800118DC 8C620044 */  lw         $v0, 0x44($v1)
/* 124E0 800118E0 14440005 */  bne        $v0, $a0, .L800118F8
/* 124E4 800118E4 24E70001 */   addiu     $a3, $a3, 0x1
/* 124E8 800118E8 8C620000 */  lw         $v0, 0x0($v1)
/* 124EC 800118EC 00451024 */  and        $v0, $v0, $a1
/* 124F0 800118F0 00461025 */  or         $v0, $v0, $a2
/* 124F4 800118F4 AC620000 */  sw         $v0, 0x0($v1)
.L800118F8:
/* 124F8 800118F8 00E8102A */  slt        $v0, $a3, $t0
/* 124FC 800118FC 1440FFF7 */  bnez       $v0, .L800118DC
/* 12500 80011900 2463013C */   addiu     $v1, $v1, 0x13C
.L80011904:
/* 12504 80011904 03E00008 */  jr         $ra
/* 12508 80011908 00000000 */   nop
