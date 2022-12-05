.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8010A000
/* C03C0 8010A000 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C03C4 8010A004 AFB00010 */  sw         $s0, 0x10($sp)
/* C03C8 8010A008 00808021 */  addu       $s0, $a0, $zero
/* C03CC 8010A00C 3C02800D */  lui        $v0, %hi(D_race_800CDC78)
/* C03D0 8010A010 2442DC78 */  addiu      $v0, $v0, %lo(D_race_800CDC78)
/* C03D4 8010A014 26040018 */  addiu      $a0, $s0, 0x18
/* C03D8 8010A018 AFBF0014 */  sw         $ra, 0x14($sp)
/* C03DC 8010A01C 0C044968 */  jal        func_race_801125A0
/* C03E0 8010A020 AE020000 */   sw        $v0, 0x0($s0)
/* C03E4 8010A024 0C03F600 */  jal        func_race_800FD800
/* C03E8 8010A028 260403FC */   addiu     $a0, $s0, 0x3FC
/* C03EC 8010A02C 0C03CB30 */  jal        func_race_800F2CC0
/* C03F0 8010A030 26040C70 */   addiu     $a0, $s0, 0xC70
/* C03F4 8010A034 0C0016DC */  jal        func_80005B70
/* C03F8 8010A038 26040DE4 */   addiu     $a0, $s0, 0xDE4
/* C03FC 8010A03C 0C04288A */  jal        func_race_8010A228
/* C0400 8010A040 02002021 */   addu      $a0, $s0, $zero
/* C0404 8010A044 02001021 */  addu       $v0, $s0, $zero
/* C0408 8010A048 8FBF0014 */  lw         $ra, 0x14($sp)
/* C040C 8010A04C 8FB00010 */  lw         $s0, 0x10($sp)
/* C0410 8010A050 03E00008 */  jr         $ra
/* C0414 8010A054 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010A058
/* C0418 8010A058 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C041C 8010A05C AFB10014 */  sw         $s1, 0x14($sp)
/* C0420 8010A060 00808821 */  addu       $s1, $a0, $zero
/* C0424 8010A064 AFB00010 */  sw         $s0, 0x10($sp)
/* C0428 8010A068 00A08021 */  addu       $s0, $a1, $zero
/* C042C 8010A06C 3C02800D */  lui        $v0, %hi(D_race_800CDC78)
/* C0430 8010A070 2442DC78 */  addiu      $v0, $v0, %lo(D_race_800CDC78)
/* C0434 8010A074 AFBF0018 */  sw         $ra, 0x18($sp)
/* C0438 8010A078 0C042836 */  jal        func_race_8010A0D8
/* C043C 8010A07C AE220000 */   sw        $v0, 0x0($s1)
/* C0440 8010A080 26240DE4 */  addiu      $a0, $s1, 0xDE4
/* C0444 8010A084 0C0016E2 */  jal        func_80005B88
/* C0448 8010A088 24050002 */   addiu     $a1, $zero, 0x2
/* C044C 8010A08C 26240C70 */  addiu      $a0, $s1, 0xC70
/* C0450 8010A090 0C03CB3A */  jal        func_race_800F2CE8
/* C0454 8010A094 24050002 */   addiu     $a1, $zero, 0x2
/* C0458 8010A098 262403FC */  addiu      $a0, $s1, 0x3FC
/* C045C 8010A09C 0C03F613 */  jal        func_race_800FD84C
/* C0460 8010A0A0 24050002 */   addiu     $a1, $zero, 0x2
/* C0464 8010A0A4 26240018 */  addiu      $a0, $s1, 0x18
/* C0468 8010A0A8 0C04497D */  jal        func_race_801125F4
/* C046C 8010A0AC 24050002 */   addiu     $a1, $zero, 0x2
/* C0470 8010A0B0 32100001 */  andi       $s0, $s0, 0x1
/* C0474 8010A0B4 12000003 */  beqz       $s0, .Lrace_8010A0C4
/* C0478 8010A0B8 00000000 */   nop
/* C047C 8010A0BC 0C01FB5C */  jal        func_8007ED70
/* C0480 8010A0C0 02202021 */   addu      $a0, $s1, $zero
.Lrace_8010A0C4:
/* C0484 8010A0C4 8FBF0018 */  lw         $ra, 0x18($sp)
/* C0488 8010A0C8 8FB10014 */  lw         $s1, 0x14($sp)
/* C048C 8010A0CC 8FB00010 */  lw         $s0, 0x10($sp)
/* C0490 8010A0D0 03E00008 */  jr         $ra
/* C0494 8010A0D4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010A0D8
/* C0498 8010A0D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C049C 8010A0DC AFB00010 */  sw         $s0, 0x10($sp)
/* C04A0 8010A0E0 00808021 */  addu       $s0, $a0, $zero
/* C04A4 8010A0E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C04A8 8010A0E8 8E050D90 */  lw         $a1, 0xD90($s0)
/* C04AC 8010A0EC 10A00005 */  beqz       $a1, .Lrace_8010A104
/* C04B0 8010A0F0 00000000 */   nop
/* C04B4 8010A0F4 8E040004 */  lw         $a0, 0x4($s0)
/* C04B8 8010A0F8 0C046564 */  jal        func_race_80119590
/* C04BC 8010A0FC 00000000 */   nop
/* C04C0 8010A100 AE000D90 */  sw         $zero, 0xD90($s0)
.Lrace_8010A104:
/* C04C4 8010A104 8E050D8C */  lw         $a1, 0xD8C($s0)
/* C04C8 8010A108 10A00005 */  beqz       $a1, .Lrace_8010A120
/* C04CC 8010A10C 00000000 */   nop
/* C04D0 8010A110 8E040004 */  lw         $a0, 0x4($s0)
/* C04D4 8010A114 0C046564 */  jal        func_race_80119590
/* C04D8 8010A118 00000000 */   nop
/* C04DC 8010A11C AE000D8C */  sw         $zero, 0xD8C($s0)
.Lrace_8010A120:
/* C04E0 8010A120 8E050D88 */  lw         $a1, 0xD88($s0)
/* C04E4 8010A124 10A00005 */  beqz       $a1, .Lrace_8010A13C
/* C04E8 8010A128 00000000 */   nop
/* C04EC 8010A12C 8E040004 */  lw         $a0, 0x4($s0)
/* C04F0 8010A130 0C046564 */  jal        func_race_80119590
/* C04F4 8010A134 00000000 */   nop
/* C04F8 8010A138 AE000D88 */  sw         $zero, 0xD88($s0)
.Lrace_8010A13C:
/* C04FC 8010A13C 8E050D84 */  lw         $a1, 0xD84($s0)
/* C0500 8010A140 10A00005 */  beqz       $a1, .Lrace_8010A158
/* C0504 8010A144 00000000 */   nop
/* C0508 8010A148 8E040004 */  lw         $a0, 0x4($s0)
/* C050C 8010A14C 0C046564 */  jal        func_race_80119590
/* C0510 8010A150 00000000 */   nop
/* C0514 8010A154 AE000D84 */  sw         $zero, 0xD84($s0)
.Lrace_8010A158:
/* C0518 8010A158 8E050D94 */  lw         $a1, 0xD94($s0)
/* C051C 8010A15C 10A00005 */  beqz       $a1, .Lrace_8010A174
/* C0520 8010A160 00000000 */   nop
/* C0524 8010A164 8E040004 */  lw         $a0, 0x4($s0)
/* C0528 8010A168 0C046564 */  jal        func_race_80119590
/* C052C 8010A16C 00000000 */   nop
/* C0530 8010A170 AE000D94 */  sw         $zero, 0xD94($s0)
.Lrace_8010A174:
/* C0534 8010A174 8E050D98 */  lw         $a1, 0xD98($s0)
/* C0538 8010A178 10A00005 */  beqz       $a1, .Lrace_8010A190
/* C053C 8010A17C 00000000 */   nop
/* C0540 8010A180 8E040004 */  lw         $a0, 0x4($s0)
/* C0544 8010A184 0C046564 */  jal        func_race_80119590
/* C0548 8010A188 00000000 */   nop
/* C054C 8010A18C AE000D98 */  sw         $zero, 0xD98($s0)
.Lrace_8010A190:
/* C0550 8010A190 8E050D9C */  lw         $a1, 0xD9C($s0)
/* C0554 8010A194 10A00005 */  beqz       $a1, .Lrace_8010A1AC
/* C0558 8010A198 00000000 */   nop
/* C055C 8010A19C 8E040004 */  lw         $a0, 0x4($s0)
/* C0560 8010A1A0 0C046564 */  jal        func_race_80119590
/* C0564 8010A1A4 00000000 */   nop
/* C0568 8010A1A8 AE000D9C */  sw         $zero, 0xD9C($s0)
.Lrace_8010A1AC:
/* C056C 8010A1AC 8E050DA0 */  lw         $a1, 0xDA0($s0)
/* C0570 8010A1B0 10A00005 */  beqz       $a1, .Lrace_8010A1C8
/* C0574 8010A1B4 00000000 */   nop
/* C0578 8010A1B8 8E040004 */  lw         $a0, 0x4($s0)
/* C057C 8010A1BC 0C046564 */  jal        func_race_80119590
/* C0580 8010A1C0 00000000 */   nop
/* C0584 8010A1C4 AE000DA0 */  sw         $zero, 0xDA0($s0)
.Lrace_8010A1C8:
/* C0588 8010A1C8 8E050DA4 */  lw         $a1, 0xDA4($s0)
/* C058C 8010A1CC 50A00006 */  beql       $a1, $zero, .Lrace_8010A1E8
/* C0590 8010A1D0 26040018 */   addiu     $a0, $s0, 0x18
/* C0594 8010A1D4 8E040004 */  lw         $a0, 0x4($s0)
/* C0598 8010A1D8 0C046564 */  jal        func_race_80119590
/* C059C 8010A1DC 00000000 */   nop
/* C05A0 8010A1E0 AE000DA4 */  sw         $zero, 0xDA4($s0)
/* C05A4 8010A1E4 26040018 */  addiu      $a0, $s0, 0x18
.Lrace_8010A1E8:
/* C05A8 8010A1E8 26020DE4 */  addiu      $v0, $s0, 0xDE4
/* C05AC 8010A1EC AE000DE4 */  sw         $zero, 0xDE4($s0)
/* C05B0 8010A1F0 A4400008 */  sh         $zero, 0x8($v0)
/* C05B4 8010A1F4 A4400006 */  sh         $zero, 0x6($v0)
/* C05B8 8010A1F8 0C044ACE */  jal        func_race_80112B38
/* C05BC 8010A1FC A4400004 */   sh        $zero, 0x4($v0)
/* C05C0 8010A200 0C03F699 */  jal        func_race_800FDA64
/* C05C4 8010A204 260403FC */   addiu     $a0, $s0, 0x3FC
/* C05C8 8010A208 0C03CB4B */  jal        func_race_800F2D2C
/* C05CC 8010A20C 26040C70 */   addiu     $a0, $s0, 0xC70
/* C05D0 8010A210 0C04288A */  jal        func_race_8010A228
/* C05D4 8010A214 02002021 */   addu      $a0, $s0, $zero
/* C05D8 8010A218 8FBF0014 */  lw         $ra, 0x14($sp)
/* C05DC 8010A21C 8FB00010 */  lw         $s0, 0x10($sp)
/* C05E0 8010A220 03E00008 */  jr         $ra
/* C05E4 8010A224 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010A228
/* C05E8 8010A228 00002821 */  addu       $a1, $zero, $zero
/* C05EC 8010A22C 00801821 */  addu       $v1, $a0, $zero
/* C05F0 8010A230 2402FFFF */  addiu      $v0, $zero, -0x1
/* C05F4 8010A234 AC800004 */  sw         $zero, 0x4($a0)
/* C05F8 8010A238 AC800D0C */  sw         $zero, 0xD0C($a0)
/* C05FC 8010A23C AC800CD8 */  sw         $zero, 0xCD8($a0)
/* C0600 8010A240 AC80000C */  sw         $zero, 0xC($a0)
/* C0604 8010A244 AC800CE4 */  sw         $zero, 0xCE4($a0)
/* C0608 8010A248 AC820CE8 */  sw         $v0, 0xCE8($a0)
.Lrace_8010A24C:
/* C060C 8010A24C AC600CEC */  sw         $zero, 0xCEC($v1)
/* C0610 8010A250 24A50001 */  addiu      $a1, $a1, 0x1
/* C0614 8010A254 2CA20005 */  sltiu      $v0, $a1, 0x5
/* C0618 8010A258 1440FFFC */  bnez       $v0, .Lrace_8010A24C
/* C061C 8010A25C 24630004 */   addiu     $v1, $v1, 0x4
/* C0620 8010A260 00002821 */  addu       $a1, $zero, $zero
/* C0624 8010A264 00801821 */  addu       $v1, $a0, $zero
/* C0628 8010A268 3C01800D */  lui        $at, %hi(D_race_800CDAC0)
/* C062C 8010A26C C420DAC0 */  lwc1       $f0, %lo(D_race_800CDAC0)($at)
/* C0630 8010A270 24020002 */  addiu      $v0, $zero, 0x2
/* C0634 8010A274 AC820D08 */  sw         $v0, 0xD08($a0)
/* C0638 8010A278 24020096 */  addiu      $v0, $zero, 0x96
/* C063C 8010A27C AC820CDC */  sw         $v0, 0xCDC($a0)
/* C0640 8010A280 240203E8 */  addiu      $v0, $zero, 0x3E8
/* C0644 8010A284 AC820D38 */  sw         $v0, 0xD38($a0)
/* C0648 8010A288 240200FF */  addiu      $v0, $zero, 0xFF
/* C064C 8010A28C AC800CCC */  sw         $zero, 0xCCC($a0)
/* C0650 8010A290 AC800D04 */  sw         $zero, 0xD04($a0)
/* C0654 8010A294 AC800D30 */  sw         $zero, 0xD30($a0)
/* C0658 8010A298 A0800D1A */  sb         $zero, 0xD1A($a0)
/* C065C 8010A29C AC800D2C */  sw         $zero, 0xD2C($a0)
/* C0660 8010A2A0 AC800D3C */  sw         $zero, 0xD3C($a0)
/* C0664 8010A2A4 AC800D44 */  sw         $zero, 0xD44($a0)
/* C0668 8010A2A8 AC800D48 */  sw         $zero, 0xD48($a0)
/* C066C 8010A2AC AC800D34 */  sw         $zero, 0xD34($a0)
/* C0670 8010A2B0 AC800D60 */  sw         $zero, 0xD60($a0)
/* C0674 8010A2B4 AC800D64 */  sw         $zero, 0xD64($a0)
/* C0678 8010A2B8 AC800D68 */  sw         $zero, 0xD68($a0)
/* C067C 8010A2BC AC800D84 */  sw         $zero, 0xD84($a0)
/* C0680 8010A2C0 AC800D88 */  sw         $zero, 0xD88($a0)
/* C0684 8010A2C4 AC800D8C */  sw         $zero, 0xD8C($a0)
/* C0688 8010A2C8 AC800D90 */  sw         $zero, 0xD90($a0)
/* C068C 8010A2CC AC800D94 */  sw         $zero, 0xD94($a0)
/* C0690 8010A2D0 AC800D98 */  sw         $zero, 0xD98($a0)
/* C0694 8010A2D4 AC800D9C */  sw         $zero, 0xD9C($a0)
/* C0698 8010A2D8 AC800DA0 */  sw         $zero, 0xDA0($a0)
/* C069C 8010A2DC AC800DA4 */  sw         $zero, 0xDA4($a0)
/* C06A0 8010A2E0 AC800D1C */  sw         $zero, 0xD1C($a0)
/* C06A4 8010A2E4 AC800D20 */  sw         $zero, 0xD20($a0)
/* C06A8 8010A2E8 AC800D24 */  sw         $zero, 0xD24($a0)
/* C06AC 8010A2EC AC800D28 */  sw         $zero, 0xD28($a0)
/* C06B0 8010A2F0 AC800D6C */  sw         $zero, 0xD6C($a0)
/* C06B4 8010A2F4 AC800D74 */  sw         $zero, 0xD74($a0)
/* C06B8 8010A2F8 AC800D7C */  sw         $zero, 0xD7C($a0)
/* C06BC 8010A2FC AC800D80 */  sw         $zero, 0xD80($a0)
/* C06C0 8010A300 E4800D4C */  swc1       $f0, 0xD4C($a0)
/* C06C4 8010A304 AC800D70 */  sw         $zero, 0xD70($a0)
/* C06C8 8010A308 A0820D14 */  sb         $v0, 0xD14($a0)
/* C06CC 8010A30C A0820D15 */  sb         $v0, 0xD15($a0)
/* C06D0 8010A310 A0820D16 */  sb         $v0, 0xD16($a0)
/* C06D4 8010A314 A0820D17 */  sb         $v0, 0xD17($a0)
/* C06D8 8010A318 A0820D18 */  sb         $v0, 0xD18($a0)
/* C06DC 8010A31C A0820D19 */  sb         $v0, 0xD19($a0)
/* C06E0 8010A320 24020001 */  addiu      $v0, $zero, 0x1
/* C06E4 8010A324 AC820CC8 */  sw         $v0, 0xCC8($a0)
/* C06E8 8010A328 2402FFFF */  addiu      $v0, $zero, -0x1
/* C06EC 8010A32C AC800DF0 */  sw         $zero, 0xDF0($a0)
/* C06F0 8010A330 AC800DF4 */  sw         $zero, 0xDF4($a0)
/* C06F4 8010A334 AC800DF8 */  sw         $zero, 0xDF8($a0)
/* C06F8 8010A338 A0800D1A */  sb         $zero, 0xD1A($a0)
/* C06FC 8010A33C AC800E00 */  sw         $zero, 0xE00($a0)
/* C0700 8010A340 AC800E04 */  sw         $zero, 0xE04($a0)
/* C0704 8010A344 AC800E08 */  sw         $zero, 0xE08($a0)
/* C0708 8010A348 AC800E0C */  sw         $zero, 0xE0C($a0)
/* C070C 8010A34C AC800E10 */  sw         $zero, 0xE10($a0)
/* C0710 8010A350 AC800E14 */  sw         $zero, 0xE14($a0)
/* C0714 8010A354 AC800E18 */  sw         $zero, 0xE18($a0)
/* C0718 8010A358 AC800E1C */  sw         $zero, 0xE1C($a0)
/* C071C 8010A35C AC800E20 */  sw         $zero, 0xE20($a0)
/* C0720 8010A360 AC800CC4 */  sw         $zero, 0xCC4($a0)
/* C0724 8010A364 AC800010 */  sw         $zero, 0x10($a0)
/* C0728 8010A368 AC800E28 */  sw         $zero, 0xE28($a0)
/* C072C 8010A36C AC820D10 */  sw         $v0, 0xD10($a0)
/* C0730 8010A370 AC800DA8 */  sw         $zero, 0xDA8($a0)
/* C0734 8010A374 AC800D50 */  sw         $zero, 0xD50($a0)
.Lrace_8010A378:
/* C0738 8010A378 AC600D54 */  sw         $zero, 0xD54($v1)
/* C073C 8010A37C 24A50001 */  addiu      $a1, $a1, 0x1
/* C0740 8010A380 2CA20003 */  sltiu      $v0, $a1, 0x3
/* C0744 8010A384 1440FFFC */  bnez       $v0, .Lrace_8010A378
/* C0748 8010A388 24630004 */   addiu     $v1, $v1, 0x4
/* C074C 8010A38C AC800DAC */  sw         $zero, 0xDAC($a0)
/* C0750 8010A390 AC800DB0 */  sw         $zero, 0xDB0($a0)
/* C0754 8010A394 AC800014 */  sw         $zero, 0x14($a0)
/* C0758 8010A398 A4800DB4 */  sh         $zero, 0xDB4($a0)
/* C075C 8010A39C AC800CD0 */  sw         $zero, 0xCD0($a0)
/* C0760 8010A3A0 AC800CD4 */  sw         $zero, 0xCD4($a0)
/* C0764 8010A3A4 A0800CE0 */  sb         $zero, 0xCE0($a0)
/* C0768 8010A3A8 03E00008 */  jr         $ra
/* C076C 8010A3AC AC800D40 */   sw        $zero, 0xD40($a0)

glabel func_race_8010A3B0
/* C0770 8010A3B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C0774 8010A3B4 AFB10014 */  sw         $s1, 0x14($sp)
/* C0778 8010A3B8 00808821 */  addu       $s1, $a0, $zero
/* C077C 8010A3BC AFB3001C */  sw         $s3, 0x1C($sp)
/* C0780 8010A3C0 00A09821 */  addu       $s3, $a1, $zero
/* C0784 8010A3C4 AFB40020 */  sw         $s4, 0x20($sp)
/* C0788 8010A3C8 00C0A021 */  addu       $s4, $a2, $zero
/* C078C 8010A3CC AFB20018 */  sw         $s2, 0x18($sp)
/* C0790 8010A3D0 AFBF0024 */  sw         $ra, 0x24($sp)
/* C0794 8010A3D4 AFB00010 */  sw         $s0, 0x10($sp)
/* C0798 8010A3D8 8E22000C */  lw         $v0, 0xC($s1)
/* C079C 8010A3DC 8FB0003C */  lw         $s0, 0x3C($sp)
/* C07A0 8010A3E0 10400003 */  beqz       $v0, .Lrace_8010A3F0
/* C07A4 8010A3E4 00E09021 */   addu      $s2, $a3, $zero
/* C07A8 8010A3E8 0C042836 */  jal        func_race_8010A0D8
/* C07AC 8010A3EC 00000000 */   nop
.Lrace_8010A3F0:
/* C07B0 8010A3F0 AE300DFC */  sw         $s0, 0xDFC($s1)
/* C07B4 8010A3F4 8E620034 */  lw         $v0, 0x34($s3)
/* C07B8 8010A3F8 AE220E24 */  sw         $v0, 0xE24($s1)
/* C07BC 8010A3FC 8E620014 */  lw         $v0, 0x14($s3)
/* C07C0 8010A400 AE220004 */  sw         $v0, 0x4($s1)
/* C07C4 8010A404 8E620018 */  lw         $v0, 0x18($s3)
/* C07C8 8010A408 AE220008 */  sw         $v0, 0x8($s1)
/* C07CC 8010A40C 8FA20038 */  lw         $v0, 0x38($sp)
/* C07D0 8010A410 8E630038 */  lw         $v1, 0x38($s3)
/* C07D4 8010A414 AE22000C */  sw         $v0, 0xC($s1)
/* C07D8 8010A418 26020001 */  addiu      $v0, $s0, 0x1
/* C07DC 8010A41C AE220D00 */  sw         $v0, 0xD00($s1)
/* C07E0 8010A420 AE230010 */  sw         $v1, 0x10($s1)
/* C07E4 8010A424 C6400078 */  lwc1       $f0, 0x78($s2)
/* C07E8 8010A428 E6200D4C */  swc1       $f0, 0xD4C($s1)
/* C07EC 8010A42C 8E42007C */  lw         $v0, 0x7C($s2)
/* C07F0 8010A430 AE220CD0 */  sw         $v0, 0xCD0($s1)
/* C07F4 8010A434 8E420080 */  lw         $v0, 0x80($s2)
/* C07F8 8010A438 AE220CD4 */  sw         $v0, 0xCD4($s1)
/* C07FC 8010A43C 92420072 */  lbu        $v0, 0x72($s2)
/* C0800 8010A440 A2220CE0 */  sb         $v0, 0xCE0($s1)
/* C0804 8010A444 8E450018 */  lw         $a1, 0x18($s2)
/* C0808 8010A448 14A00007 */  bnez       $a1, .Lrace_8010A468
/* C080C 8010A44C 26240DE4 */   addiu     $a0, $s1, 0xDE4
/* C0810 8010A450 02402021 */  addu       $a0, $s2, $zero
/* C0814 8010A454 26300DB4 */  addiu      $s0, $s1, 0xDB4
/* C0818 8010A458 0C0016C8 */  jal        func_80005B20
/* C081C 8010A45C 02002821 */   addu      $a1, $s0, $zero
/* C0820 8010A460 26240DE4 */  addiu      $a0, $s1, 0xDE4
/* C0824 8010A464 02002821 */  addu       $a1, $s0, $zero
.Lrace_8010A468:
/* C0828 8010A468 0C0016F6 */  jal        func_80005BD8
/* C082C 8010A46C 00003021 */   addu      $a2, $zero, $zero
/* C0830 8010A470 8E430074 */  lw         $v1, 0x74($s2)
/* C0834 8010A474 240203E8 */  addiu      $v0, $zero, 0x3E8
/* C0838 8010A478 14620003 */  bne        $v1, $v0, .Lrace_8010A488
/* C083C 8010A47C AE230D38 */   sw        $v1, 0xD38($s1)
/* C0840 8010A480 08042938 */  j          .Lrace_8010A4E0
/* C0844 8010A484 2402001A */   addiu     $v0, $zero, 0x1A
.Lrace_8010A488:
/* C0848 8010A488 2402044C */  addiu      $v0, $zero, 0x44C
/* C084C 8010A48C 14620003 */  bne        $v1, $v0, .Lrace_8010A49C
/* C0850 8010A490 24020450 */   addiu     $v0, $zero, 0x450
/* C0854 8010A494 08042938 */  j          .Lrace_8010A4E0
/* C0858 8010A498 2402001C */   addiu     $v0, $zero, 0x1C
.Lrace_8010A49C:
/* C085C 8010A49C 14620003 */  bne        $v1, $v0, .Lrace_8010A4AC
/* C0860 8010A4A0 24020454 */   addiu     $v0, $zero, 0x454
/* C0864 8010A4A4 08042938 */  j          .Lrace_8010A4E0
/* C0868 8010A4A8 2402001B */   addiu     $v0, $zero, 0x1B
.Lrace_8010A4AC:
/* C086C 8010A4AC 14620003 */  bne        $v1, $v0, .Lrace_8010A4BC
/* C0870 8010A4B0 24020458 */   addiu     $v0, $zero, 0x458
/* C0874 8010A4B4 08042938 */  j          .Lrace_8010A4E0
/* C0878 8010A4B8 2402001D */   addiu     $v0, $zero, 0x1D
.Lrace_8010A4BC:
/* C087C 8010A4BC 14620003 */  bne        $v1, $v0, .Lrace_8010A4CC
/* C0880 8010A4C0 2402045C */   addiu     $v0, $zero, 0x45C
/* C0884 8010A4C4 08042938 */  j          .Lrace_8010A4E0
/* C0888 8010A4C8 2402001E */   addiu     $v0, $zero, 0x1E
.Lrace_8010A4CC:
/* C088C 8010A4CC 10620003 */  beq        $v1, $v0, .Lrace_8010A4DC
/* C0890 8010A4D0 24020460 */   addiu     $v0, $zero, 0x460
/* C0894 8010A4D4 14620003 */  bne        $v1, $v0, .Lrace_8010A4E4
/* C0898 8010A4D8 00000000 */   nop
.Lrace_8010A4DC:
/* C089C 8010A4DC 2402001F */  addiu      $v0, $zero, 0x1F
.Lrace_8010A4E0:
/* C08A0 8010A4E0 A2220D1B */  sb         $v0, 0xD1B($s1)
.Lrace_8010A4E4:
/* C08A4 8010A4E4 9242006C */  lbu        $v0, 0x6C($s2)
/* C08A8 8010A4E8 3C01800D */  lui        $at, %hi(D_race_800CDAC4)
/* C08AC 8010A4EC C42ADAC4 */  lwc1       $f10, %lo(D_race_800CDAC4)($at)
/* C08B0 8010A4F0 44820000 */  mtc1       $v0, $f0
/* C08B4 8010A4F4 46800020 */  cvt.s.w    $f0, $f0
/* C08B8 8010A4F8 460A0002 */  mul.s      $f0, $f0, $f10
/* C08BC 8010A4FC 3C01800D */  lui        $at, %hi(D_race_800CDAC8)
/* C08C0 8010A500 C428DAC8 */  lwc1       $f8, %lo(D_race_800CDAC8)($at)
/* C08C4 8010A504 46080002 */  mul.s      $f0, $f0, $f8
/* C08C8 8010A508 3C01800D */  lui        $at, %hi(D_race_800CDACC)
/* C08CC 8010A50C C426DACC */  lwc1       $f6, %lo(D_race_800CDACC)($at)
/* C08D0 8010A510 46060000 */  add.s      $f0, $f0, $f6
/* C08D4 8010A514 3C01800D */  lui        $at, %hi(D_race_800CDAD0)
/* C08D8 8010A518 C422DAD0 */  lwc1       $f2, %lo(D_race_800CDAD0)($at)
/* C08DC 8010A51C 4600103C */  c.lt.s     $f2, $f0
/* C08E0 8010A520 00000000 */  nop
/* C08E4 8010A524 45030001 */  bc1tl      .Lrace_8010A52C
/* C08E8 8010A528 46001006 */   mov.s     $f0, $f2
.Lrace_8010A52C:
/* C08EC 8010A52C 3C01800D */  lui        $at, %hi(D_race_800CDAD4)
/* C08F0 8010A530 C424DAD4 */  lwc1       $f4, %lo(D_race_800CDAD4)($at)
/* C08F4 8010A534 46040002 */  mul.s      $f0, $f0, $f4
/* C08F8 8010A538 4600030D */  trunc.w.s  $f12, $f0
/* C08FC 8010A53C 44026000 */  mfc1       $v0, $f12
/* C0900 8010A540 A2220D14 */  sb         $v0, 0xD14($s1)
/* C0904 8010A544 9242006D */  lbu        $v0, 0x6D($s2)
/* C0908 8010A548 44820000 */  mtc1       $v0, $f0
/* C090C 8010A54C 46800020 */  cvt.s.w    $f0, $f0
/* C0910 8010A550 460A0002 */  mul.s      $f0, $f0, $f10
/* C0914 8010A554 00000000 */  nop
/* C0918 8010A558 46080002 */  mul.s      $f0, $f0, $f8
/* C091C 8010A55C 46060000 */  add.s      $f0, $f0, $f6
/* C0920 8010A560 4600103C */  c.lt.s     $f2, $f0
/* C0924 8010A564 00000000 */  nop
/* C0928 8010A568 45030001 */  bc1tl      .Lrace_8010A570
/* C092C 8010A56C 46001006 */   mov.s     $f0, $f2
.Lrace_8010A570:
/* C0930 8010A570 46040002 */  mul.s      $f0, $f0, $f4
/* C0934 8010A574 4600030D */  trunc.w.s  $f12, $f0
/* C0938 8010A578 44026000 */  mfc1       $v0, $f12
/* C093C 8010A57C A2220D15 */  sb         $v0, 0xD15($s1)
/* C0940 8010A580 9242006E */  lbu        $v0, 0x6E($s2)
/* C0944 8010A584 44820000 */  mtc1       $v0, $f0
/* C0948 8010A588 46800020 */  cvt.s.w    $f0, $f0
/* C094C 8010A58C 460A0002 */  mul.s      $f0, $f0, $f10
/* C0950 8010A590 00000000 */  nop
/* C0954 8010A594 46080002 */  mul.s      $f0, $f0, $f8
/* C0958 8010A598 46060000 */  add.s      $f0, $f0, $f6
/* C095C 8010A59C 4600103C */  c.lt.s     $f2, $f0
/* C0960 8010A5A0 00000000 */  nop
/* C0964 8010A5A4 45030001 */  bc1tl      .Lrace_8010A5AC
/* C0968 8010A5A8 46001006 */   mov.s     $f0, $f2
.Lrace_8010A5AC:
/* C096C 8010A5AC 46040002 */  mul.s      $f0, $f0, $f4
/* C0970 8010A5B0 4600030D */  trunc.w.s  $f12, $f0
/* C0974 8010A5B4 44026000 */  mfc1       $v0, $f12
/* C0978 8010A5B8 A2220D16 */  sb         $v0, 0xD16($s1)
/* C097C 8010A5BC 9242006F */  lbu        $v0, 0x6F($s2)
/* C0980 8010A5C0 44820000 */  mtc1       $v0, $f0
/* C0984 8010A5C4 46800020 */  cvt.s.w    $f0, $f0
/* C0988 8010A5C8 460A0002 */  mul.s      $f0, $f0, $f10
/* C098C 8010A5CC 00000000 */  nop
/* C0990 8010A5D0 46080002 */  mul.s      $f0, $f0, $f8
/* C0994 8010A5D4 46060000 */  add.s      $f0, $f0, $f6
/* C0998 8010A5D8 4600103C */  c.lt.s     $f2, $f0
/* C099C 8010A5DC 00000000 */  nop
/* C09A0 8010A5E0 45030001 */  bc1tl      .Lrace_8010A5E8
/* C09A4 8010A5E4 46001006 */   mov.s     $f0, $f2
.Lrace_8010A5E8:
/* C09A8 8010A5E8 46040002 */  mul.s      $f0, $f0, $f4
/* C09AC 8010A5EC 4600030D */  trunc.w.s  $f12, $f0
/* C09B0 8010A5F0 44026000 */  mfc1       $v0, $f12
/* C09B4 8010A5F4 A2220D17 */  sb         $v0, 0xD17($s1)
/* C09B8 8010A5F8 92420070 */  lbu        $v0, 0x70($s2)
/* C09BC 8010A5FC 44820000 */  mtc1       $v0, $f0
/* C09C0 8010A600 46800020 */  cvt.s.w    $f0, $f0
/* C09C4 8010A604 460A0002 */  mul.s      $f0, $f0, $f10
/* C09C8 8010A608 00000000 */  nop
/* C09CC 8010A60C 46080002 */  mul.s      $f0, $f0, $f8
/* C09D0 8010A610 46060000 */  add.s      $f0, $f0, $f6
/* C09D4 8010A614 4600103C */  c.lt.s     $f2, $f0
/* C09D8 8010A618 00000000 */  nop
/* C09DC 8010A61C 45030001 */  bc1tl      .Lrace_8010A624
/* C09E0 8010A620 46001006 */   mov.s     $f0, $f2
.Lrace_8010A624:
/* C09E4 8010A624 46040002 */  mul.s      $f0, $f0, $f4
/* C09E8 8010A628 4600030D */  trunc.w.s  $f12, $f0
/* C09EC 8010A62C 44026000 */  mfc1       $v0, $f12
/* C09F0 8010A630 A2220D18 */  sb         $v0, 0xD18($s1)
/* C09F4 8010A634 92420071 */  lbu        $v0, 0x71($s2)
/* C09F8 8010A638 44820000 */  mtc1       $v0, $f0
/* C09FC 8010A63C 46800020 */  cvt.s.w    $f0, $f0
/* C0A00 8010A640 460A0002 */  mul.s      $f0, $f0, $f10
/* C0A04 8010A644 00000000 */  nop
/* C0A08 8010A648 46080002 */  mul.s      $f0, $f0, $f8
/* C0A0C 8010A64C 46060000 */  add.s      $f0, $f0, $f6
/* C0A10 8010A650 4600103C */  c.lt.s     $f2, $f0
/* C0A14 8010A654 00000000 */  nop
/* C0A18 8010A658 45030001 */  bc1tl      .Lrace_8010A660
/* C0A1C 8010A65C 46001006 */   mov.s     $f0, $f2
.Lrace_8010A660:
/* C0A20 8010A660 46040002 */  mul.s      $f0, $f0, $f4
/* C0A24 8010A664 92230D14 */  lbu        $v1, 0xD14($s1)
/* C0A28 8010A668 92240D15 */  lbu        $a0, 0xD15($s1)
/* C0A2C 8010A66C 00641821 */  addu       $v1, $v1, $a0
/* C0A30 8010A670 4600030D */  trunc.w.s  $f12, $f0
/* C0A34 8010A674 44026000 */  mfc1       $v0, $f12
/* C0A38 8010A678 A2220D19 */  sb         $v0, 0xD19($s1)
/* C0A3C 8010A67C 92220D16 */  lbu        $v0, 0xD16($s1)
/* C0A40 8010A680 92240D17 */  lbu        $a0, 0xD17($s1)
/* C0A44 8010A684 00621823 */  subu       $v1, $v1, $v0
/* C0A48 8010A688 00641823 */  subu       $v1, $v1, $a0
/* C0A4C 8010A68C 04610003 */  bgez       $v1, .Lrace_8010A69C
/* C0A50 8010A690 00000000 */   nop
/* C0A54 8010A694 080429B2 */  j          .Lrace_8010A6C8
/* C0A58 8010A698 A2200D1A */   sb        $zero, 0xD1A($s1)
.Lrace_8010A69C:
/* C0A5C 8010A69C 3C01800D */  lui        $at, %hi(D_race_800CDAD8)
/* C0A60 8010A6A0 C422DAD8 */  lwc1       $f2, %lo(D_race_800CDAD8)($at)
/* C0A64 8010A6A4 44830000 */  mtc1       $v1, $f0
/* C0A68 8010A6A8 46800020 */  cvt.s.w    $f0, $f0
/* C0A6C 8010A6AC 46020002 */  mul.s      $f0, $f0, $f2
/* C0A70 8010A6B0 3C01800D */  lui        $at, %hi(D_race_800CDADC)
/* C0A74 8010A6B4 C422DADC */  lwc1       $f2, %lo(D_race_800CDADC)($at)
/* C0A78 8010A6B8 46020002 */  mul.s      $f0, $f0, $f2
/* C0A7C 8010A6BC 4600030D */  trunc.w.s  $f12, $f0
/* C0A80 8010A6C0 44026000 */  mfc1       $v0, $f12
/* C0A84 8010A6C4 A2220D1A */  sb         $v0, 0xD1A($s1)
.Lrace_8010A6C8:
/* C0A88 8010A6C8 3C068003 */  lui        $a2, %hi(D_8002FAB0)
/* C0A8C 8010A6CC 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C0A90 8010A6D0 8CC4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a2)
/* C0A94 8010A6D4 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C0A98 8010A6D8 24840001 */  addiu      $a0, $a0, 0x1
/* C0A9C 8010A6DC 308403FF */  andi       $a0, $a0, 0x3FF
/* C0AA0 8010A6E0 00041040 */  sll        $v0, $a0, 1
/* C0AA4 8010A6E4 00431021 */  addu       $v0, $v0, $v1
/* C0AA8 8010A6E8 24850001 */  addiu      $a1, $a0, 0x1
/* C0AAC 8010A6EC 94420000 */  lhu        $v0, 0x0($v0)
/* C0AB0 8010A6F0 30A503FF */  andi       $a1, $a1, 0x3FF
/* C0AB4 8010A6F4 000210C0 */  sll        $v0, $v0, 3
/* C0AB8 8010A6F8 244207D0 */  addiu      $v0, $v0, 0x7D0
/* C0ABC 8010A6FC AE220D2C */  sw         $v0, 0xD2C($s1)
/* C0AC0 8010A700 00051040 */  sll        $v0, $a1, 1
/* C0AC4 8010A704 00431021 */  addu       $v0, $v0, $v1
/* C0AC8 8010A708 94420000 */  lhu        $v0, 0x0($v0)
/* C0ACC 8010A70C 24030002 */  addiu      $v1, $zero, 0x2
/* C0AD0 8010A710 AE230D08 */  sw         $v1, 0xD08($s1)
/* C0AD4 8010A714 00621004 */  sllv       $v0, $v0, $v1
/* C0AD8 8010A718 24421388 */  addiu      $v0, $v0, 0x1388
/* C0ADC 8010A71C AE220D3C */  sw         $v0, 0xD3C($s1)
/* C0AE0 8010A720 8E62003C */  lw         $v0, 0x3C($s3)
/* C0AE4 8010A724 ACC4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a2)
/* C0AE8 8010A728 30420001 */  andi       $v0, $v0, 0x1
/* C0AEC 8010A72C 10400005 */  beqz       $v0, .Lrace_8010A744
/* C0AF0 8010A730 ACC5FAB0 */   sw        $a1, %lo(D_8002FAB0)($a2)
/* C0AF4 8010A734 8E220D04 */  lw         $v0, 0xD04($s1)
/* C0AF8 8010A738 3C030400 */  lui        $v1, (0x4000000 >> 16)
/* C0AFC 8010A73C 00431025 */  or         $v0, $v0, $v1
/* C0B00 8010A740 AE220D04 */  sw         $v0, 0xD04($s1)
.Lrace_8010A744:
/* C0B04 8010A744 8E62003C */  lw         $v0, 0x3C($s3)
/* C0B08 8010A748 30420040 */  andi       $v0, $v0, 0x40
/* C0B0C 8010A74C 10400004 */  beqz       $v0, .Lrace_8010A760
/* C0B10 8010A750 3C030100 */   lui       $v1, (0x1000000 >> 16)
/* C0B14 8010A754 8E220D04 */  lw         $v0, 0xD04($s1)
/* C0B18 8010A758 00431025 */  or         $v0, $v0, $v1
/* C0B1C 8010A75C AE220D04 */  sw         $v0, 0xD04($s1)
.Lrace_8010A760:
/* C0B20 8010A760 8E62003C */  lw         $v0, 0x3C($s3)
/* C0B24 8010A764 30420080 */  andi       $v0, $v0, 0x80
/* C0B28 8010A768 10400004 */  beqz       $v0, .Lrace_8010A77C
/* C0B2C 8010A76C 3C030200 */   lui       $v1, (0x2000000 >> 16)
/* C0B30 8010A770 8E220D04 */  lw         $v0, 0xD04($s1)
/* C0B34 8010A774 00431025 */  or         $v0, $v0, $v1
/* C0B38 8010A778 AE220D04 */  sw         $v0, 0xD04($s1)
.Lrace_8010A77C:
/* C0B3C 8010A77C 8E62003C */  lw         $v0, 0x3C($s3)
/* C0B40 8010A780 30420002 */  andi       $v0, $v0, 0x2
/* C0B44 8010A784 10400004 */  beqz       $v0, .Lrace_8010A798
/* C0B48 8010A788 3C030800 */   lui       $v1, (0x8000000 >> 16)
/* C0B4C 8010A78C 8E220D04 */  lw         $v0, 0xD04($s1)
/* C0B50 8010A790 00431025 */  or         $v0, $v0, $v1
/* C0B54 8010A794 AE220D04 */  sw         $v0, 0xD04($s1)
.Lrace_8010A798:
/* C0B58 8010A798 26240018 */  addiu      $a0, $s1, 0x18
/* C0B5C 8010A79C 02802821 */  addu       $a1, $s4, $zero
/* C0B60 8010A7A0 0C0449D4 */  jal        func_race_80112750
/* C0B64 8010A7A4 02603021 */   addu      $a2, $s3, $zero
/* C0B68 8010A7A8 02202021 */  addu       $a0, $s1, $zero
/* C0B6C 8010A7AC 02602821 */  addu       $a1, $s3, $zero
/* C0B70 8010A7B0 0C0429F8 */  jal        func_race_8010A7E0
/* C0B74 8010A7B4 02403021 */   addu      $a2, $s2, $zero
/* C0B78 8010A7B8 0C042AB9 */  jal        func_race_8010AAE4
/* C0B7C 8010A7BC 02202021 */   addu      $a0, $s1, $zero
/* C0B80 8010A7C0 8FBF0024 */  lw         $ra, 0x24($sp)
/* C0B84 8010A7C4 8FB40020 */  lw         $s4, 0x20($sp)
/* C0B88 8010A7C8 8FB3001C */  lw         $s3, 0x1C($sp)
/* C0B8C 8010A7CC 8FB20018 */  lw         $s2, 0x18($sp)
/* C0B90 8010A7D0 8FB10014 */  lw         $s1, 0x14($sp)
/* C0B94 8010A7D4 8FB00010 */  lw         $s0, 0x10($sp)
/* C0B98 8010A7D8 03E00008 */  jr         $ra
/* C0B9C 8010A7DC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8010A7E0
/* C0BA0 8010A7E0 27BDFF60 */  addiu      $sp, $sp, -0xA0
/* C0BA4 8010A7E4 AFB50074 */  sw         $s5, 0x74($sp)
/* C0BA8 8010A7E8 AFBF0078 */  sw         $ra, 0x78($sp)
/* C0BAC 8010A7EC AFB40070 */  sw         $s4, 0x70($sp)
/* C0BB0 8010A7F0 AFB3006C */  sw         $s3, 0x6C($sp)
/* C0BB4 8010A7F4 AFB20068 */  sw         $s2, 0x68($sp)
/* C0BB8 8010A7F8 AFB10064 */  sw         $s1, 0x64($sp)
/* C0BBC 8010A7FC AFB00060 */  sw         $s0, 0x60($sp)
/* C0BC0 8010A800 F7BA0098 */  sdc1       $f26, 0x98($sp)
/* C0BC4 8010A804 F7B80090 */  sdc1       $f24, 0x90($sp)
/* C0BC8 8010A808 F7B60088 */  sdc1       $f22, 0x88($sp)
/* C0BCC 8010A80C F7B40080 */  sdc1       $f20, 0x80($sp)
/* C0BD0 8010A810 10A00007 */  beqz       $a1, .Lrace_8010A830
/* C0BD4 8010A814 0080A821 */   addu      $s5, $a0, $zero
/* C0BD8 8010A818 8CAA0028 */  lw         $t2, 0x28($a1)
/* C0BDC 8010A81C 8CA7002C */  lw         $a3, 0x2C($a1)
/* C0BE0 8010A820 8CA9000C */  lw         $t1, 0xC($a1)
/* C0BE4 8010A824 8CA80010 */  lw         $t0, 0x10($a1)
/* C0BE8 8010A828 08042A11 */  j          .Lrace_8010A844
/* C0BEC 8010A82C 00000000 */   nop
.Lrace_8010A830:
/* C0BF0 8010A830 26A203FC */  addiu      $v0, $s5, 0x3FC
/* C0BF4 8010A834 8C4A06E0 */  lw         $t2, 0x6E0($v0)
/* C0BF8 8010A838 8C4706E4 */  lw         $a3, 0x6E4($v0)
/* C0BFC 8010A83C 8C490140 */  lw         $t1, 0x140($v0)
/* C0C00 8010A840 8C4806E8 */  lw         $t0, 0x6E8($v0)
.Lrace_8010A844:
/* C0C04 8010A844 10C00024 */  beqz       $a2, .Lrace_8010A8D8
/* C0C08 8010A848 26A203FC */   addiu     $v0, $s5, 0x3FC
/* C0C0C 8010A84C C4C60058 */  lwc1       $f6, 0x58($a2)
/* C0C10 8010A850 8CCB004C */  lw         $t3, 0x4C($a2)
/* C0C14 8010A854 8CCC0050 */  lw         $t4, 0x50($a2)
/* C0C18 8010A858 8CCD0054 */  lw         $t5, 0x54($a2)
/* C0C1C 8010A85C AFAB0050 */  sw         $t3, 0x50($sp)
/* C0C20 8010A860 AFAC0054 */  sw         $t4, 0x54($sp)
/* C0C24 8010A864 AFAD0058 */  sw         $t5, 0x58($sp)
/* C0C28 8010A868 8CCB0028 */  lw         $t3, 0x28($a2)
/* C0C2C 8010A86C 8CCC002C */  lw         $t4, 0x2C($a2)
/* C0C30 8010A870 8CCD0030 */  lw         $t5, 0x30($a2)
/* C0C34 8010A874 AFAB0030 */  sw         $t3, 0x30($sp)
/* C0C38 8010A878 AFAC0034 */  sw         $t4, 0x34($sp)
/* C0C3C 8010A87C AFAD0038 */  sw         $t5, 0x38($sp)
/* C0C40 8010A880 C4C2005C */  lwc1       $f2, 0x5C($a2)
/* C0C44 8010A884 3C01800D */  lui        $at, %hi(D_race_800CDAE0)
/* C0C48 8010A888 C420DAE0 */  lwc1       $f0, %lo(D_race_800CDAE0)($at)
/* C0C4C 8010A88C 46001082 */  mul.s      $f2, $f2, $f0
/* C0C50 8010A890 90D00084 */  lbu        $s0, 0x84($a2)
/* C0C54 8010A894 90D20085 */  lbu        $s2, 0x85($a2)
/* C0C58 8010A898 90D30086 */  lbu        $s3, 0x86($a2)
/* C0C5C 8010A89C 4600120D */  trunc.w.s  $f8, $f2
/* C0C60 8010A8A0 44034000 */  mfc1       $v1, $f8
/* C0C64 8010A8A4 02038021 */  addu       $s0, $s0, $v1
/* C0C68 8010A8A8 2E020065 */  sltiu      $v0, $s0, 0x65
/* C0C6C 8010A8AC 50400001 */  beql       $v0, $zero, .Lrace_8010A8B4
/* C0C70 8010A8B0 24100064 */   addiu     $s0, $zero, 0x64
.Lrace_8010A8B4:
/* C0C74 8010A8B4 02639821 */  addu       $s3, $s3, $v1
/* C0C78 8010A8B8 2E620065 */  sltiu      $v0, $s3, 0x65
/* C0C7C 8010A8BC 50400001 */  beql       $v0, $zero, .Lrace_8010A8C4
/* C0C80 8010A8C0 24130064 */   addiu     $s3, $zero, 0x64
.Lrace_8010A8C4:
/* C0C84 8010A8C4 0243102B */  sltu       $v0, $s2, $v1
/* C0C88 8010A8C8 10400013 */  beqz       $v0, .Lrace_8010A918
/* C0C8C 8010A8CC 02439023 */   subu      $s2, $s2, $v1
/* C0C90 8010A8D0 08042A46 */  j          .Lrace_8010A918
/* C0C94 8010A8D4 00009021 */   addu      $s2, $zero, $zero
.Lrace_8010A8D8:
/* C0C98 8010A8D8 C44600C4 */  lwc1       $f6, 0xC4($v0)
/* C0C9C 8010A8DC 8EAC040C */  lw         $t4, 0x40C($s5)
/* C0CA0 8010A8E0 8EAD0410 */  lw         $t5, 0x410($s5)
/* C0CA4 8010A8E4 8EAE0414 */  lw         $t6, 0x414($s5)
/* C0CA8 8010A8E8 AFAC0050 */  sw         $t4, 0x50($sp)
/* C0CAC 8010A8EC AFAD0054 */  sw         $t5, 0x54($sp)
/* C0CB0 8010A8F0 AFAE0058 */  sw         $t6, 0x58($sp)
/* C0CB4 8010A8F4 8EAC0758 */  lw         $t4, 0x758($s5)
/* C0CB8 8010A8F8 8EAD075C */  lw         $t5, 0x75C($s5)
/* C0CBC 8010A8FC 8EAE0760 */  lw         $t6, 0x760($s5)
/* C0CC0 8010A900 AFAC0030 */  sw         $t4, 0x30($sp)
/* C0CC4 8010A904 AFAD0034 */  sw         $t5, 0x34($sp)
/* C0CC8 8010A908 AFAE0038 */  sw         $t6, 0x38($sp)
/* C0CCC 8010A90C 8C500708 */  lw         $s0, 0x708($v0)
/* C0CD0 8010A910 8C52070C */  lw         $s2, 0x70C($v0)
/* C0CD4 8010A914 8C530710 */  lw         $s3, 0x710($v0)
.Lrace_8010A918:
/* C0CD8 8010A918 26B103FC */  addiu      $s1, $s5, 0x3FC
/* C0CDC 8010A91C 02202021 */  addu       $a0, $s1, $zero
/* C0CE0 8010A920 26B40018 */  addiu      $s4, $s5, 0x18
/* C0CE4 8010A924 8E820044 */  lw         $v0, 0x44($s4)
/* C0CE8 8010A928 3C01800D */  lui        $at, %hi(D_race_800CDAE4)
/* C0CEC 8010A92C C420DAE4 */  lwc1       $f0, %lo(D_race_800CDAE4)($at)
/* C0CF0 8010A930 3C01800D */  lui        $at, %hi(D_race_800CDAE8)
/* C0CF4 8010A934 C422DAE8 */  lwc1       $f2, %lo(D_race_800CDAE8)($at)
/* C0CF8 8010A938 3C01800D */  lui        $at, %hi(D_race_800CDAEC)
/* C0CFC 8010A93C C424DAEC */  lwc1       $f4, %lo(D_race_800CDAEC)($at)
/* C0D00 8010A940 02A02821 */  addu       $a1, $s5, $zero
/* C0D04 8010A944 AFA90014 */  sw         $t1, 0x14($sp)
/* C0D08 8010A948 AFA80018 */  sw         $t0, 0x18($sp)
/* C0D0C 8010A94C AFA20010 */  sw         $v0, 0x10($sp)
/* C0D10 8010A950 8EA20004 */  lw         $v0, 0x4($s5)
/* C0D14 8010A954 01403021 */  addu       $a2, $t2, $zero
/* C0D18 8010A958 E7A60020 */  swc1       $f6, 0x20($sp)
/* C0D1C 8010A95C E7A00024 */  swc1       $f0, 0x24($sp)
/* C0D20 8010A960 E7A20028 */  swc1       $f2, 0x28($sp)
/* C0D24 8010A964 E7A4002C */  swc1       $f4, 0x2C($sp)
/* C0D28 8010A968 0C03F661 */  jal        func_race_800FD984
/* C0D2C 8010A96C AFA2001C */   sw        $v0, 0x1C($sp)
/* C0D30 8010A970 AE2006D8 */  sw         $zero, 0x6D8($s1)
/* C0D34 8010A974 AE3500E0 */  sw         $s5, 0xE0($s1)
/* C0D38 8010A978 8EA20D04 */  lw         $v0, 0xD04($s5)
/* C0D3C 8010A97C 3C030400 */  lui        $v1, (0x4000000 >> 16)
/* C0D40 8010A980 00431024 */  and        $v0, $v0, $v1
/* C0D44 8010A984 10400004 */  beqz       $v0, .Lrace_8010A998
/* C0D48 8010A988 3C030010 */   lui       $v1, (0x100000 >> 16)
/* C0D4C 8010A98C 8E2206AC */  lw         $v0, 0x6AC($s1)
/* C0D50 8010A990 00431025 */  or         $v0, $v0, $v1
/* C0D54 8010A994 AE2206AC */  sw         $v0, 0x6AC($s1)
.Lrace_8010A998:
/* C0D58 8010A998 02202021 */  addu       $a0, $s1, $zero
/* C0D5C 8010A99C 0C0400D4 */  jal        func_race_80100350
/* C0D60 8010A9A0 02002821 */   addu      $a1, $s0, $zero
/* C0D64 8010A9A4 02202021 */  addu       $a0, $s1, $zero
/* C0D68 8010A9A8 0C0400DF */  jal        func_race_8010037C
/* C0D6C 8010A9AC 02402821 */   addu      $a1, $s2, $zero
/* C0D70 8010A9B0 02202021 */  addu       $a0, $s1, $zero
/* C0D74 8010A9B4 0C0400EC */  jal        func_race_801003B0
/* C0D78 8010A9B8 02602821 */   addu      $a1, $s3, $zero
/* C0D7C 8010A9BC C69A01B0 */  lwc1       $f26, 0x1B0($s4)
/* C0D80 8010A9C0 3C01800D */  lui        $at, %hi(D_race_800CDAF0)
/* C0D84 8010A9C4 C438DAF0 */  lwc1       $f24, %lo(D_race_800CDAF0)($at)
/* C0D88 8010A9C8 4618D601 */  sub.s      $f24, $f26, $f24
/* C0D8C 8010A9CC 3C01800D */  lui        $at, %hi(D_race_800CDAF4)
/* C0D90 8010A9D0 C420DAF4 */  lwc1       $f0, %lo(D_race_800CDAF4)($at)
/* C0D94 8010A9D4 4600D682 */  mul.s      $f26, $f26, $f0
/* C0D98 8010A9D8 00000000 */  nop
/* C0D9C 8010A9DC 4600C102 */  mul.s      $f4, $f24, $f0
/* C0DA0 8010A9E0 C69601B4 */  lwc1       $f22, 0x1B4($s4)
/* C0DA4 8010A9E4 3C01800D */  lui        $at, %hi(D_race_800CDAF8)
/* C0DA8 8010A9E8 C434DAF8 */  lwc1       $f20, %lo(D_race_800CDAF8)($at)
/* C0DAC 8010A9EC 4614B501 */  sub.s      $f20, $f22, $f20
/* C0DB0 8010A9F0 4600A082 */  mul.s      $f2, $f20, $f0
/* C0DB4 8010A9F4 02202021 */  addu       $a0, $s1, $zero
/* C0DB8 8010A9F8 27A50050 */  addiu      $a1, $sp, 0x50
/* C0DBC 8010A9FC 4600B582 */  mul.s      $f22, $f22, $f0
/* C0DC0 8010AA00 E7A40030 */  swc1       $f4, 0x30($sp)
/* C0DC4 8010AA04 0C045DCC */  jal        func_race_80117730
/* C0DC8 8010AA08 E7A20034 */   swc1      $f2, 0x34($sp)
/* C0DCC 8010AA0C 02202021 */  addu       $a0, $s1, $zero
/* C0DD0 8010AA10 4406C000 */  mfc1       $a2, $f24
/* C0DD4 8010AA14 4407A000 */  mfc1       $a3, $f20
/* C0DD8 8010AA18 0C0472FE */  jal        func_race_8011CBF8
/* C0DDC 8010AA1C 27A50030 */   addiu     $a1, $sp, 0x30
/* C0DE0 8010AA20 02202021 */  addu       $a0, $s1, $zero
/* C0DE4 8010AA24 00002821 */  addu       $a1, $zero, $zero
/* C0DE8 8010AA28 27B00040 */  addiu      $s0, $sp, 0x40
/* C0DEC 8010AA2C 02003021 */  addu       $a2, $s0, $zero
/* C0DF0 8010AA30 3C01800D */  lui        $at, %hi(D_race_800CDAFC)
/* C0DF4 8010AA34 C434DAFC */  lwc1       $f20, %lo(D_race_800CDAFC)($at)
/* C0DF8 8010AA38 4600D607 */  neg.s      $f24, $f26
/* C0DFC 8010AA3C E7B60040 */  swc1       $f22, 0x40($sp)
/* C0E00 8010AA40 E7B80044 */  swc1       $f24, 0x44($sp)
/* C0E04 8010AA44 0C04730C */  jal        func_race_8011CC30
/* C0E08 8010AA48 E7B40048 */   swc1      $f20, 0x48($sp)
/* C0E0C 8010AA4C 02202021 */  addu       $a0, $s1, $zero
/* C0E10 8010AA50 24050001 */  addiu      $a1, $zero, 0x1
/* C0E14 8010AA54 02003021 */  addu       $a2, $s0, $zero
/* C0E18 8010AA58 E7B60040 */  swc1       $f22, 0x40($sp)
/* C0E1C 8010AA5C E7BA0044 */  swc1       $f26, 0x44($sp)
/* C0E20 8010AA60 0C04730C */  jal        func_race_8011CC30
/* C0E24 8010AA64 E7B40048 */   swc1      $f20, 0x48($sp)
/* C0E28 8010AA68 02202021 */  addu       $a0, $s1, $zero
/* C0E2C 8010AA6C 24050002 */  addiu      $a1, $zero, 0x2
/* C0E30 8010AA70 02003021 */  addu       $a2, $s0, $zero
/* C0E34 8010AA74 4600B587 */  neg.s      $f22, $f22
/* C0E38 8010AA78 E7B60040 */  swc1       $f22, 0x40($sp)
/* C0E3C 8010AA7C E7B80044 */  swc1       $f24, 0x44($sp)
/* C0E40 8010AA80 0C04730C */  jal        func_race_8011CC30
/* C0E44 8010AA84 E7B40048 */   swc1      $f20, 0x48($sp)
/* C0E48 8010AA88 02202021 */  addu       $a0, $s1, $zero
/* C0E4C 8010AA8C 24050003 */  addiu      $a1, $zero, 0x3
/* C0E50 8010AA90 02003021 */  addu       $a2, $s0, $zero
/* C0E54 8010AA94 E7B60040 */  swc1       $f22, 0x40($sp)
/* C0E58 8010AA98 E7BA0044 */  swc1       $f26, 0x44($sp)
/* C0E5C 8010AA9C 0C04730C */  jal        func_race_8011CC30
/* C0E60 8010AAA0 E7B40048 */   swc1      $f20, 0x48($sp)
/* C0E64 8010AAA4 26A40C70 */  addiu      $a0, $s5, 0xC70
/* C0E68 8010AAA8 0C03CB68 */  jal        func_race_800F2DA0
/* C0E6C 8010AAAC 02202821 */   addu      $a1, $s1, $zero
/* C0E70 8010AAB0 8FBF0078 */  lw         $ra, 0x78($sp)
/* C0E74 8010AAB4 8FB50074 */  lw         $s5, 0x74($sp)
/* C0E78 8010AAB8 8FB40070 */  lw         $s4, 0x70($sp)
/* C0E7C 8010AABC 8FB3006C */  lw         $s3, 0x6C($sp)
/* C0E80 8010AAC0 8FB20068 */  lw         $s2, 0x68($sp)
/* C0E84 8010AAC4 8FB10064 */  lw         $s1, 0x64($sp)
/* C0E88 8010AAC8 8FB00060 */  lw         $s0, 0x60($sp)
/* C0E8C 8010AACC D7BA0098 */  ldc1       $f26, 0x98($sp)
/* C0E90 8010AAD0 D7B80090 */  ldc1       $f24, 0x90($sp)
/* C0E94 8010AAD4 D7B60088 */  ldc1       $f22, 0x88($sp)
/* C0E98 8010AAD8 D7B40080 */  ldc1       $f20, 0x80($sp)
/* C0E9C 8010AADC 03E00008 */  jr         $ra
/* C0EA0 8010AAE0 27BD00A0 */   addiu     $sp, $sp, 0xA0

glabel func_race_8010AAE4
/* C0EA4 8010AAE4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C0EA8 8010AAE8 AFB10014 */  sw         $s1, 0x14($sp)
/* C0EAC 8010AAEC 00808821 */  addu       $s1, $a0, $zero
/* C0EB0 8010AAF0 24038FFF */  addiu      $v1, $zero, -0x7001
/* C0EB4 8010AAF4 AFBF0018 */  sw         $ra, 0x18($sp)
/* C0EB8 8010AAF8 AFB00010 */  sw         $s0, 0x10($sp)
/* C0EBC 8010AAFC 8E220D04 */  lw         $v0, 0xD04($s1)
/* C0EC0 8010AB00 8E250E24 */  lw         $a1, 0xE24($s1)
/* C0EC4 8010AB04 00431024 */  and        $v0, $v0, $v1
/* C0EC8 8010AB08 34420002 */  ori        $v0, $v0, 0x2
/* C0ECC 8010AB0C 10A00006 */  beqz       $a1, .Lrace_8010AB28
/* C0ED0 8010AB10 AE220D04 */   sw        $v0, 0xD04($s1)
/* C0ED4 8010AB14 263003FC */  addiu      $s0, $s1, 0x3FC
/* C0ED8 8010AB18 0C03FE44 */  jal        func_race_800FF910
/* C0EDC 8010AB1C 02002021 */   addu      $a0, $s0, $zero
/* C0EE0 8010AB20 24020001 */  addiu      $v0, $zero, 0x1
/* C0EE4 8010AB24 AE020734 */  sw         $v0, 0x734($s0)
.Lrace_8010AB28:
/* C0EE8 8010AB28 24020001 */  addiu      $v0, $zero, 0x1
/* C0EEC 8010AB2C AE220CC8 */  sw         $v0, 0xCC8($s1)
/* C0EF0 8010AB30 2402FFFF */  addiu      $v0, $zero, -0x1
/* C0EF4 8010AB34 AE200CC4 */  sw         $zero, 0xCC4($s1)
/* C0EF8 8010AB38 AE200D0C */  sw         $zero, 0xD0C($s1)
/* C0EFC 8010AB3C AE200CE4 */  sw         $zero, 0xCE4($s1)
/* C0F00 8010AB40 AE220CE8 */  sw         $v0, 0xCE8($s1)
/* C0F04 8010AB44 AE220D10 */  sw         $v0, 0xD10($s1)
/* C0F08 8010AB48 AE200D70 */  sw         $zero, 0xD70($s1)
/* C0F0C 8010AB4C 8FBF0018 */  lw         $ra, 0x18($sp)
/* C0F10 8010AB50 8FB10014 */  lw         $s1, 0x14($sp)
/* C0F14 8010AB54 8FB00010 */  lw         $s0, 0x10($sp)
/* C0F18 8010AB58 03E00008 */  jr         $ra
/* C0F1C 8010AB5C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010AB60
/* C0F20 8010AB60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C0F24 8010AB64 AFB00010 */  sw         $s0, 0x10($sp)
/* C0F28 8010AB68 00808021 */  addu       $s0, $a0, $zero
/* C0F2C 8010AB6C AFBF0014 */  sw         $ra, 0x14($sp)
/* C0F30 8010AB70 F7B60020 */  sdc1       $f22, 0x20($sp)
/* C0F34 8010AB74 F7B40018 */  sdc1       $f20, 0x18($sp)
/* C0F38 8010AB78 8E040004 */  lw         $a0, 0x4($s0)
/* C0F3C 8010AB7C AE050DAC */  sw         $a1, 0xDAC($s0)
/* C0F40 8010AB80 2405002A */  addiu      $a1, $zero, 0x2A
/* C0F44 8010AB84 0C04654F */  jal        func_race_8011953C
/* C0F48 8010AB88 AE060D08 */   sw        $a2, 0xD08($s0)
/* C0F4C 8010AB8C 10400007 */  beqz       $v0, .Lrace_8010ABAC
/* C0F50 8010AB90 AE020D84 */   sw        $v0, 0xD84($s0)
/* C0F54 8010AB94 3C01800D */  lui        $at, %hi(D_race_800CDB00)
/* C0F58 8010AB98 C420DB00 */  lwc1       $f0, %lo(D_race_800CDB00)($at)
/* C0F5C 8010AB9C 3C01800D */  lui        $at, %hi(D_race_800CDB04)
/* C0F60 8010ABA0 C422DB04 */  lwc1       $f2, %lo(D_race_800CDB04)($at)
/* C0F64 8010ABA4 E440002C */  swc1       $f0, 0x2C($v0)
/* C0F68 8010ABA8 E4420030 */  swc1       $f2, 0x30($v0)
.Lrace_8010ABAC:
/* C0F6C 8010ABAC 8E040004 */  lw         $a0, 0x4($s0)
/* C0F70 8010ABB0 0C04654F */  jal        func_race_8011953C
/* C0F74 8010ABB4 2405002B */   addiu     $a1, $zero, 0x2B
/* C0F78 8010ABB8 10400007 */  beqz       $v0, .Lrace_8010ABD8
/* C0F7C 8010ABBC AE020D88 */   sw        $v0, 0xD88($s0)
/* C0F80 8010ABC0 3C01800D */  lui        $at, %hi(D_race_800CDB08)
/* C0F84 8010ABC4 C420DB08 */  lwc1       $f0, %lo(D_race_800CDB08)($at)
/* C0F88 8010ABC8 3C01800D */  lui        $at, %hi(D_race_800CDB0C)
/* C0F8C 8010ABCC C422DB0C */  lwc1       $f2, %lo(D_race_800CDB0C)($at)
/* C0F90 8010ABD0 E440002C */  swc1       $f0, 0x2C($v0)
/* C0F94 8010ABD4 E4420030 */  swc1       $f2, 0x30($v0)
.Lrace_8010ABD8:
/* C0F98 8010ABD8 8E040004 */  lw         $a0, 0x4($s0)
/* C0F9C 8010ABDC 0C04654F */  jal        func_race_8011953C
/* C0FA0 8010ABE0 2405002C */   addiu     $a1, $zero, 0x2C
/* C0FA4 8010ABE4 10400007 */  beqz       $v0, .Lrace_8010AC04
/* C0FA8 8010ABE8 AE020D8C */   sw        $v0, 0xD8C($s0)
/* C0FAC 8010ABEC 3C01800D */  lui        $at, %hi(D_race_800CDB10)
/* C0FB0 8010ABF0 C420DB10 */  lwc1       $f0, %lo(D_race_800CDB10)($at)
/* C0FB4 8010ABF4 3C01800D */  lui        $at, %hi(D_race_800CDB14)
/* C0FB8 8010ABF8 C422DB14 */  lwc1       $f2, %lo(D_race_800CDB14)($at)
/* C0FBC 8010ABFC E440002C */  swc1       $f0, 0x2C($v0)
/* C0FC0 8010AC00 E4420030 */  swc1       $f2, 0x30($v0)
.Lrace_8010AC04:
/* C0FC4 8010AC04 8E040004 */  lw         $a0, 0x4($s0)
/* C0FC8 8010AC08 0C04654F */  jal        func_race_8011953C
/* C0FCC 8010AC0C 2405002D */   addiu     $a1, $zero, 0x2D
/* C0FD0 8010AC10 10400007 */  beqz       $v0, .Lrace_8010AC30
/* C0FD4 8010AC14 AE020D90 */   sw        $v0, 0xD90($s0)
/* C0FD8 8010AC18 3C01800D */  lui        $at, %hi(D_race_800CDB18)
/* C0FDC 8010AC1C C420DB18 */  lwc1       $f0, %lo(D_race_800CDB18)($at)
/* C0FE0 8010AC20 3C01800D */  lui        $at, %hi(D_race_800CDB1C)
/* C0FE4 8010AC24 C422DB1C */  lwc1       $f2, %lo(D_race_800CDB1C)($at)
/* C0FE8 8010AC28 E440002C */  swc1       $f0, 0x2C($v0)
/* C0FEC 8010AC2C E4420030 */  swc1       $f2, 0x30($v0)
.Lrace_8010AC30:
/* C0FF0 8010AC30 8E040004 */  lw         $a0, 0x4($s0)
/* C0FF4 8010AC34 24050020 */  addiu      $a1, $zero, 0x20
/* C0FF8 8010AC38 AE000D20 */  sw         $zero, 0xD20($s0)
/* C0FFC 8010AC3C AE000D24 */  sw         $zero, 0xD24($s0)
/* C1000 8010AC40 0C04654F */  jal        func_race_8011953C
/* C1004 8010AC44 AE000D28 */   sw        $zero, 0xD28($s0)
/* C1008 8010AC48 AE020D94 */  sw         $v0, 0xD94($s0)
/* C100C 8010AC4C 8C430034 */  lw         $v1, 0x34($v0)
/* C1010 8010AC50 240500FF */  addiu      $a1, $zero, 0xFF
/* C1014 8010AC54 84640030 */  lh         $a0, 0x30($v1)
/* C1018 8010AC58 8C630034 */  lw         $v1, 0x34($v1)
/* C101C 8010AC5C 0060F809 */  jalr       $v1
/* C1020 8010AC60 00442021 */   addu      $a0, $v0, $a0
/* C1024 8010AC64 8E020D94 */  lw         $v0, 0xD94($s0)
/* C1028 8010AC68 3C01800D */  lui        $at, %hi(D_race_800CDB20)
/* C102C 8010AC6C C434DB20 */  lwc1       $f20, %lo(D_race_800CDB20)($at)
/* C1030 8010AC70 3C01800D */  lui        $at, %hi(D_race_800CDB24)
/* C1034 8010AC74 C436DB24 */  lwc1       $f22, %lo(D_race_800CDB24)($at)
/* C1038 8010AC78 E454002C */  swc1       $f20, 0x2C($v0)
/* C103C 8010AC7C E4560030 */  swc1       $f22, 0x30($v0)
/* C1040 8010AC80 8E040D94 */  lw         $a0, 0xD94($s0)
/* C1044 8010AC84 8E050D20 */  lw         $a1, 0xD20($s0)
/* C1048 8010AC88 0C01FDE4 */  jal        func_8007F790
/* C104C 8010AC8C 00000000 */   nop
/* C1050 8010AC90 8E040004 */  lw         $a0, 0x4($s0)
/* C1054 8010AC94 2405000A */  addiu      $a1, $zero, 0xA
/* C1058 8010AC98 0C04654F */  jal        func_race_8011953C
/* C105C 8010AC9C AE000D1C */   sw        $zero, 0xD1C($s0)
/* C1060 8010ACA0 AE020D98 */  sw         $v0, 0xD98($s0)
/* C1064 8010ACA4 E454002C */  swc1       $f20, 0x2C($v0)
/* C1068 8010ACA8 E4560030 */  swc1       $f22, 0x30($v0)
/* C106C 8010ACAC 8E030D98 */  lw         $v1, 0xD98($s0)
/* C1070 8010ACB0 8C620034 */  lw         $v0, 0x34($v1)
/* C1074 8010ACB4 240500FF */  addiu      $a1, $zero, 0xFF
/* C1078 8010ACB8 84440030 */  lh         $a0, 0x30($v0)
/* C107C 8010ACBC 8C420034 */  lw         $v0, 0x34($v0)
/* C1080 8010ACC0 0040F809 */  jalr       $v0
/* C1084 8010ACC4 00642021 */   addu      $a0, $v1, $a0
/* C1088 8010ACC8 8E040D98 */  lw         $a0, 0xD98($s0)
/* C108C 8010ACCC 8E050D24 */  lw         $a1, 0xD24($s0)
/* C1090 8010ACD0 0C01FDE4 */  jal        func_8007F790
/* C1094 8010ACD4 00000000 */   nop
/* C1098 8010ACD8 8E040004 */  lw         $a0, 0x4($s0)
/* C109C 8010ACDC 0C04654F */  jal        func_race_8011953C
/* C10A0 8010ACE0 2405003D */   addiu     $a1, $zero, 0x3D
/* C10A4 8010ACE4 AE020D9C */  sw         $v0, 0xD9C($s0)
/* C10A8 8010ACE8 E454002C */  swc1       $f20, 0x2C($v0)
/* C10AC 8010ACEC E4560030 */  swc1       $f22, 0x30($v0)
/* C10B0 8010ACF0 8E030D9C */  lw         $v1, 0xD9C($s0)
/* C10B4 8010ACF4 8C620034 */  lw         $v0, 0x34($v1)
/* C10B8 8010ACF8 240500FF */  addiu      $a1, $zero, 0xFF
/* C10BC 8010ACFC 84440030 */  lh         $a0, 0x30($v0)
/* C10C0 8010AD00 8C420034 */  lw         $v0, 0x34($v0)
/* C10C4 8010AD04 0040F809 */  jalr       $v0
/* C10C8 8010AD08 00642021 */   addu      $a0, $v1, $a0
/* C10CC 8010AD0C 8E040D9C */  lw         $a0, 0xD9C($s0)
/* C10D0 8010AD10 8E050D28 */  lw         $a1, 0xD28($s0)
/* C10D4 8010AD14 0C01FDE4 */  jal        func_8007F790
/* C10D8 8010AD18 00000000 */   nop
/* C10DC 8010AD1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C10E0 8010AD20 8FB00010 */  lw         $s0, 0x10($sp)
/* C10E4 8010AD24 D7B60020 */  ldc1       $f22, 0x20($sp)
/* C10E8 8010AD28 D7B40018 */  ldc1       $f20, 0x18($sp)
/* C10EC 8010AD2C 03E00008 */  jr         $ra
/* C10F0 8010AD30 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8010AD34
/* C10F4 8010AD34 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C10F8 8010AD38 AFB00010 */  sw         $s0, 0x10($sp)
/* C10FC 8010AD3C 00808021 */  addu       $s0, $a0, $zero
/* C1100 8010AD40 AFBF0018 */  sw         $ra, 0x18($sp)
/* C1104 8010AD44 AFB10014 */  sw         $s1, 0x14($sp)
/* C1108 8010AD48 F7B40020 */  sdc1       $f20, 0x20($sp)
/* C110C 8010AD4C C6140A18 */  lwc1       $f20, 0xA18($s0)
/* C1110 8010AD50 3C01800D */  lui        $at, %hi(D_race_800CDB28)
/* C1114 8010AD54 C420DB28 */  lwc1       $f0, %lo(D_race_800CDB28)($at)
/* C1118 8010AD58 4614003C */  c.lt.s     $f0, $f20
/* C111C 8010AD5C 00000000 */  nop
/* C1120 8010AD60 45000008 */  bc1f       .Lrace_8010AD84
/* C1124 8010AD64 00A08821 */   addu      $s1, $a1, $zero
/* C1128 8010AD68 3C01800D */  lui        $at, %hi(D_race_800CDB2C)
/* C112C 8010AD6C C420DB2C */  lwc1       $f0, %lo(D_race_800CDB2C)($at)
/* C1130 8010AD70 4600A03C */  c.lt.s     $f20, $f0
/* C1134 8010AD74 00000000 */  nop
/* C1138 8010AD78 45000002 */  bc1f       .Lrace_8010AD84
/* C113C 8010AD7C 00000000 */   nop
/* C1140 8010AD80 4480A000 */  mtc1       $zero, $f20
.Lrace_8010AD84:
/* C1144 8010AD84 44800000 */  mtc1       $zero, $f0
/* C1148 8010AD88 4600A03C */  c.lt.s     $f20, $f0
/* C114C 8010AD8C 00000000 */  nop
/* C1150 8010AD90 45000005 */  bc1f       .Lrace_8010ADA8
/* C1154 8010AD94 00000000 */   nop
/* C1158 8010AD98 0C045728 */  jal        func_race_80115CA0
/* C115C 8010AD9C 26040018 */   addiu     $a0, $s0, 0x18
/* C1160 8010ADA0 08042B6C */  j          .Lrace_8010ADB0
/* C1164 8010ADA4 4600A507 */   neg.s     $f20, $f20
.Lrace_8010ADA8:
/* C1168 8010ADA8 0C045714 */  jal        func_race_80115C50
/* C116C 8010ADAC 26040018 */   addiu     $a0, $s0, 0x18
.Lrace_8010ADB0:
/* C1170 8010ADB0 3C01800D */  lui        $at, %hi(D_race_800CDB30)
/* C1174 8010ADB4 C420DB30 */  lwc1       $f0, %lo(D_race_800CDB30)($at)
/* C1178 8010ADB8 4600A002 */  mul.s      $f0, $f20, $f0
/* C117C 8010ADBC 26040018 */  addiu      $a0, $s0, 0x18
/* C1180 8010ADC0 8C820044 */  lw         $v0, 0x44($a0)
/* C1184 8010ADC4 E44000B8 */  swc1       $f0, 0xB8($v0)
/* C1188 8010ADC8 8C820040 */  lw         $v0, 0x40($a0)
/* C118C 8010ADCC 54400001 */  bnel       $v0, $zero, .Lrace_8010ADD4
/* C1190 8010ADD0 E44000B8 */   swc1      $f0, 0xB8($v0)
.Lrace_8010ADD4:
/* C1194 8010ADD4 0C044CC6 */  jal        func_race_80113318
/* C1198 8010ADD8 02202821 */   addu      $a1, $s1, $zero
/* C119C 8010ADDC 8FBF0018 */  lw         $ra, 0x18($sp)
/* C11A0 8010ADE0 8FB10014 */  lw         $s1, 0x14($sp)
/* C11A4 8010ADE4 8FB00010 */  lw         $s0, 0x10($sp)
/* C11A8 8010ADE8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* C11AC 8010ADEC 03E00008 */  jr         $ra
/* C11B0 8010ADF0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8010ADF4
/* C11B4 8010ADF4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C11B8 8010ADF8 AFB10034 */  sw         $s1, 0x34($sp)
/* C11BC 8010ADFC 00808821 */  addu       $s1, $a0, $zero
/* C11C0 8010AE00 AFBF0040 */  sw         $ra, 0x40($sp)
/* C11C4 8010AE04 AFB3003C */  sw         $s3, 0x3C($sp)
/* C11C8 8010AE08 AFB20038 */  sw         $s2, 0x38($sp)
/* C11CC 8010AE0C AFB00030 */  sw         $s0, 0x30($sp)
/* C11D0 8010AE10 8E220D04 */  lw         $v0, 0xD04($s1)
/* C11D4 8010AE14 30420002 */  andi       $v0, $v0, 0x2
/* C11D8 8010AE18 144000FE */  bnez       $v0, .Lrace_8010B214
/* C11DC 8010AE1C 00A09021 */   addu      $s2, $a1, $zero
/* C11E0 8010AE20 92220CE0 */  lbu        $v0, 0xCE0($s1)
/* C11E4 8010AE24 8E230CE4 */  lw         $v1, 0xCE4($s1)
/* C11E8 8010AE28 0062102B */  sltu       $v0, $v1, $v0
/* C11EC 8010AE2C 10400005 */  beqz       $v0, .Lrace_8010AE44
/* C11F0 8010AE30 00031880 */   sll       $v1, $v1, 2
/* C11F4 8010AE34 02231821 */  addu       $v1, $s1, $v1
/* C11F8 8010AE38 8C620CEC */  lw         $v0, 0xCEC($v1)
/* C11FC 8010AE3C 00521021 */  addu       $v0, $v0, $s2
/* C1200 8010AE40 AC620CEC */  sw         $v0, 0xCEC($v1)
.Lrace_8010AE44:
/* C1204 8010AE44 8E220CD8 */  lw         $v0, 0xCD8($s1)
/* C1208 8010AE48 8E230CDC */  lw         $v1, 0xCDC($s1)
/* C120C 8010AE4C 00521021 */  addu       $v0, $v0, $s2
/* C1210 8010AE50 0062182B */  sltu       $v1, $v1, $v0
/* C1214 8010AE54 1060000C */  beqz       $v1, .Lrace_8010AE88
/* C1218 8010AE58 AE220CD8 */   sw        $v0, 0xCD8($s1)
/* C121C 8010AE5C 8E230D08 */  lw         $v1, 0xD08($s1)
/* C1220 8010AE60 24020096 */  addiu      $v0, $zero, 0x96
/* C1224 8010AE64 AE220CDC */  sw         $v0, 0xCDC($s1)
/* C1228 8010AE68 24020002 */  addiu      $v0, $zero, 0x2
/* C122C 8010AE6C 14620006 */  bne        $v1, $v0, .Lrace_8010AE88
/* C1230 8010AE70 AE200CD8 */   sw        $zero, 0xCD8($s1)
/* C1234 8010AE74 8E220CCC */  lw         $v0, 0xCCC($s1)
/* C1238 8010AE78 10400004 */  beqz       $v0, .Lrace_8010AE8C
/* C123C 8010AE7C 262403FC */   addiu     $a0, $s1, 0x3FC
/* C1240 8010AE80 0C0432B3 */  jal        func_race_8010CACC
/* C1244 8010AE84 02202021 */   addu      $a0, $s1, $zero
.Lrace_8010AE88:
/* C1248 8010AE88 262403FC */  addiu      $a0, $s1, 0x3FC
.Lrace_8010AE8C:
/* C124C 8010AE8C 8C8206AC */  lw         $v0, 0x6AC($a0)
/* C1250 8010AE90 30420080 */  andi       $v0, $v0, 0x80
/* C1254 8010AE94 10400003 */  beqz       $v0, .Lrace_8010AEA4
/* C1258 8010AE98 00001821 */   addu      $v1, $zero, $zero
/* C125C 8010AE9C 8C820730 */  lw         $v0, 0x730($a0)
/* C1260 8010AEA0 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_8010AEA4:
/* C1264 8010AEA4 10600003 */  beqz       $v1, .Lrace_8010AEB4
/* C1268 8010AEA8 00000000 */   nop
/* C126C 8010AEAC 0C043564 */  jal        func_race_8010D590
/* C1270 8010AEB0 02202021 */   addu      $a0, $s1, $zero
.Lrace_8010AEB4:
/* C1274 8010AEB4 8E230D2C */  lw         $v1, 0xD2C($s1)
/* C1278 8010AEB8 0072102B */  sltu       $v0, $v1, $s2
/* C127C 8010AEBC 10400003 */  beqz       $v0, .Lrace_8010AECC
/* C1280 8010AEC0 00721023 */   subu      $v0, $v1, $s2
/* C1284 8010AEC4 08042BB4 */  j          .Lrace_8010AED0
/* C1288 8010AEC8 AE200D2C */   sw        $zero, 0xD2C($s1)
.Lrace_8010AECC:
/* C128C 8010AECC AE220D2C */  sw         $v0, 0xD2C($s1)
.Lrace_8010AED0:
/* C1290 8010AED0 8E230D3C */  lw         $v1, 0xD3C($s1)
/* C1294 8010AED4 0072102B */  sltu       $v0, $v1, $s2
/* C1298 8010AED8 10400003 */  beqz       $v0, .Lrace_8010AEE8
/* C129C 8010AEDC 00721023 */   subu      $v0, $v1, $s2
/* C12A0 8010AEE0 08042BBB */  j          .Lrace_8010AEEC
/* C12A4 8010AEE4 AE200D3C */   sw        $zero, 0xD3C($s1)
.Lrace_8010AEE8:
/* C12A8 8010AEE8 AE220D3C */  sw         $v0, 0xD3C($s1)
.Lrace_8010AEEC:
/* C12AC 8010AEEC 8E230D44 */  lw         $v1, 0xD44($s1)
/* C12B0 8010AEF0 0072102B */  sltu       $v0, $v1, $s2
/* C12B4 8010AEF4 10400003 */  beqz       $v0, .Lrace_8010AF04
/* C12B8 8010AEF8 00721023 */   subu      $v0, $v1, $s2
/* C12BC 8010AEFC 08042BC2 */  j          .Lrace_8010AF08
/* C12C0 8010AF00 AE200D44 */   sw        $zero, 0xD44($s1)
.Lrace_8010AF04:
/* C12C4 8010AF04 AE220D44 */  sw         $v0, 0xD44($s1)
.Lrace_8010AF08:
/* C12C8 8010AF08 8E22076C */  lw         $v0, 0x76C($s1)
/* C12CC 8010AF0C 54400004 */  bnel       $v0, $zero, .Lrace_8010AF20
/* C12D0 8010AF10 AE200D48 */   sw        $zero, 0xD48($s1)
/* C12D4 8010AF14 8E220D48 */  lw         $v0, 0xD48($s1)
/* C12D8 8010AF18 00521021 */  addu       $v0, $v0, $s2
/* C12DC 8010AF1C AE220D48 */  sw         $v0, 0xD48($s1)
.Lrace_8010AF20:
/* C12E0 8010AF20 8E230D6C */  lw         $v1, 0xD6C($s1)
/* C12E4 8010AF24 0072102B */  sltu       $v0, $v1, $s2
/* C12E8 8010AF28 10400003 */  beqz       $v0, .Lrace_8010AF38
/* C12EC 8010AF2C 00721023 */   subu      $v0, $v1, $s2
/* C12F0 8010AF30 08042BCF */  j          .Lrace_8010AF3C
/* C12F4 8010AF34 AE200D6C */   sw        $zero, 0xD6C($s1)
.Lrace_8010AF38:
/* C12F8 8010AF38 AE220D6C */  sw         $v0, 0xD6C($s1)
.Lrace_8010AF3C:
/* C12FC 8010AF3C 8E230D74 */  lw         $v1, 0xD74($s1)
/* C1300 8010AF40 0072102B */  sltu       $v0, $v1, $s2
/* C1304 8010AF44 10400009 */  beqz       $v0, .Lrace_8010AF6C
/* C1308 8010AF48 00721023 */   subu      $v0, $v1, $s2
/* C130C 8010AF4C 8E220D04 */  lw         $v0, 0xD04($s1)
/* C1310 8010AF50 30420800 */  andi       $v0, $v0, 0x800
/* C1314 8010AF54 10400006 */  beqz       $v0, .Lrace_8010AF70
/* C1318 8010AF58 00000000 */   nop
/* C131C 8010AF5C 0C04367A */  jal        func_race_8010D9E8
/* C1320 8010AF60 02202021 */   addu      $a0, $s1, $zero
/* C1324 8010AF64 08042BDC */  j          .Lrace_8010AF70
/* C1328 8010AF68 00000000 */   nop
.Lrace_8010AF6C:
/* C132C 8010AF6C AE220D74 */  sw         $v0, 0xD74($s1)
.Lrace_8010AF70:
/* C1330 8010AF70 8E230D7C */  lw         $v1, 0xD7C($s1)
/* C1334 8010AF74 0072102B */  sltu       $v0, $v1, $s2
/* C1338 8010AF78 10400003 */  beqz       $v0, .Lrace_8010AF88
/* C133C 8010AF7C 00721023 */   subu      $v0, $v1, $s2
/* C1340 8010AF80 08042BE3 */  j          .Lrace_8010AF8C
/* C1344 8010AF84 AE200D7C */   sw        $zero, 0xD7C($s1)
.Lrace_8010AF88:
/* C1348 8010AF88 AE220D7C */  sw         $v0, 0xD7C($s1)
.Lrace_8010AF8C:
/* C134C 8010AF8C 8E240D40 */  lw         $a0, 0xD40($s1)
/* C1350 8010AF90 0244102B */  sltu       $v0, $s2, $a0
/* C1354 8010AF94 10400005 */  beqz       $v0, .Lrace_8010AFAC
/* C1358 8010AF98 3C031000 */   lui       $v1, (0x10000000 >> 16)
/* C135C 8010AF9C 8E220D04 */  lw         $v0, 0xD04($s1)
/* C1360 8010AFA0 00431024 */  and        $v0, $v0, $v1
/* C1364 8010AFA4 14400005 */  bnez       $v0, .Lrace_8010AFBC
/* C1368 8010AFA8 00921823 */   subu      $v1, $a0, $s2
.Lrace_8010AFAC:
/* C136C 8010AFAC 3C01800D */  lui        $at, %hi(D_race_800CDB34)
/* C1370 8010AFB0 C420DB34 */  lwc1       $f0, %lo(D_race_800CDB34)($at)
/* C1374 8010AFB4 08042BFA */  j          .Lrace_8010AFE8
/* C1378 8010AFB8 AE200D40 */   sw        $zero, 0xD40($s1)
.Lrace_8010AFBC:
/* C137C 8010AFBC 2C6201F5 */  sltiu      $v0, $v1, 0x1F5
/* C1380 8010AFC0 14400008 */  bnez       $v0, .Lrace_8010AFE4
/* C1384 8010AFC4 AE230D40 */   sw        $v1, 0xD40($s1)
/* C1388 8010AFC8 2462FE0C */  addiu      $v0, $v1, -0x1F4
/* C138C 8010AFCC 3C01800D */  lui        $at, %hi(D_race_800CDB38)
/* C1390 8010AFD0 C422DB38 */  lwc1       $f2, %lo(D_race_800CDB38)($at)
/* C1394 8010AFD4 44820000 */  mtc1       $v0, $f0
/* C1398 8010AFD8 46800020 */  cvt.s.w    $f0, $f0
/* C139C 8010AFDC 08042BFA */  j          .Lrace_8010AFE8
/* C13A0 8010AFE0 46020003 */   div.s     $f0, $f0, $f2
.Lrace_8010AFE4:
/* C13A4 8010AFE4 44800000 */  mtc1       $zero, $f0
.Lrace_8010AFE8:
/* C13A8 8010AFE8 E62004D8 */  swc1       $f0, 0x4D8($s1)
/* C13AC 8010AFEC 3C03EFFF */  lui        $v1, (0xEFFFFFFF >> 16)
/* C13B0 8010AFF0 3463FFFF */  ori        $v1, $v1, (0xEFFFFFFF & 0xFFFF)
/* C13B4 8010AFF4 8E220D04 */  lw         $v0, 0xD04($s1)
/* C13B8 8010AFF8 26300018 */  addiu      $s0, $s1, 0x18
/* C13BC 8010AFFC 00431024 */  and        $v0, $v0, $v1
/* C13C0 8010B000 AE220D04 */  sw         $v0, 0xD04($s1)
/* C13C4 8010B004 8E030044 */  lw         $v1, 0x44($s0)
/* C13C8 8010B008 26330E00 */  addiu      $s3, $s1, 0xE00
/* C13CC 8010B00C 8C620024 */  lw         $v0, 0x24($v1)
/* C13D0 8010B010 02602821 */  addu       $a1, $s3, $zero
/* C13D4 8010B014 84440010 */  lh         $a0, 0x10($v0)
/* C13D8 8010B018 8C420014 */  lw         $v0, 0x14($v0)
/* C13DC 8010B01C 0040F809 */  jalr       $v0
/* C13E0 8010B020 00642021 */   addu      $a0, $v1, $a0
/* C13E4 8010B024 8E020044 */  lw         $v0, 0x44($s0)
/* C13E8 8010B028 C4400028 */  lwc1       $f0, 0x28($v0)
/* C13EC 8010B02C E6200E18 */  swc1       $f0, 0xE18($s1)
/* C13F0 8010B030 C440002C */  lwc1       $f0, 0x2C($v0)
/* C13F4 8010B034 26260E18 */  addiu      $a2, $s1, 0xE18
/* C13F8 8010B038 E4C00004 */  swc1       $f0, 0x4($a2)
/* C13FC 8010B03C C4400030 */  lwc1       $f0, 0x30($v0)
/* C1400 8010B040 E4C00008 */  swc1       $f0, 0x8($a2)
/* C1404 8010B044 8E280400 */  lw         $t0, 0x400($s1)
/* C1408 8010B048 8E290404 */  lw         $t1, 0x404($s1)
/* C140C 8010B04C 8E2A0408 */  lw         $t2, 0x408($s1)
/* C1410 8010B050 AE280E0C */  sw         $t0, 0xE0C($s1)
/* C1414 8010B054 AE290E10 */  sw         $t1, 0xE10($s1)
/* C1418 8010B058 AE2A0E14 */  sw         $t2, 0xE14($s1)
/* C141C 8010B05C 8E220D2C */  lw         $v0, 0xD2C($s1)
/* C1420 8010B060 1440001F */  bnez       $v0, .Lrace_8010B0E0
/* C1424 8010B064 00000000 */   nop
/* C1428 8010B068 8E220D08 */  lw         $v0, 0xD08($s1)
/* C142C 8010B06C 38420002 */  xori       $v0, $v0, 0x2
/* C1430 8010B070 1440001B */  bnez       $v0, .Lrace_8010B0E0
/* C1434 8010B074 02602821 */   addu      $a1, $s3, $zero
/* C1438 8010B078 3C01800D */  lui        $at, %hi(D_race_800CDB3C)
/* C143C 8010B07C C420DB3C */  lwc1       $f0, %lo(D_race_800CDB3C)($at)
/* C1440 8010B080 3C01800D */  lui        $at, %hi(D_race_800CDB40)
/* C1444 8010B084 C422DB40 */  lwc1       $f2, %lo(D_race_800CDB40)($at)
/* C1448 8010B088 E7A00010 */  swc1       $f0, 0x10($sp)
/* C144C 8010B08C E7A20014 */  swc1       $f2, 0x14($sp)
/* C1450 8010B090 8E24000C */  lw         $a0, 0xC($s1)
/* C1454 8010B094 0C044571 */  jal        func_race_801115C4
/* C1458 8010B098 00003821 */   addu      $a3, $zero, $zero
/* C145C 8010B09C 5040000F */  beql       $v0, $zero, .Lrace_8010B0DC
/* C1460 8010B0A0 240207D0 */   addiu     $v0, $zero, 0x7D0
/* C1464 8010B0A4 0C0436E0 */  jal        func_race_8010DB80
/* C1468 8010B0A8 02202021 */   addu      $a0, $s1, $zero
/* C146C 8010B0AC 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* C1470 8010B0B0 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C1474 8010B0B4 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* C1478 8010B0B8 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C147C 8010B0BC 24840001 */  addiu      $a0, $a0, 0x1
/* C1480 8010B0C0 308403FF */  andi       $a0, $a0, 0x3FF
/* C1484 8010B0C4 00041040 */  sll        $v0, $a0, 1
/* C1488 8010B0C8 00431021 */  addu       $v0, $v0, $v1
/* C148C 8010B0CC 94420000 */  lhu        $v0, 0x0($v0)
/* C1490 8010B0D0 ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* C1494 8010B0D4 000210C0 */  sll        $v0, $v0, 3
/* C1498 8010B0D8 244207D0 */  addiu      $v0, $v0, 0x7D0
.Lrace_8010B0DC:
/* C149C 8010B0DC AE220D2C */  sw         $v0, 0xD2C($s1)
.Lrace_8010B0E0:
/* C14A0 8010B0E0 8E220D08 */  lw         $v0, 0xD08($s1)
/* C14A4 8010B0E4 14400009 */  bnez       $v0, .Lrace_8010B10C
/* C14A8 8010B0E8 24039FFF */   addiu     $v1, $zero, -0x6001
/* C14AC 8010B0EC 02202021 */  addu       $a0, $s1, $zero
/* C14B0 8010B0F0 0C043703 */  jal        func_race_8010DC0C
/* C14B4 8010B0F4 02402821 */   addu      $a1, $s2, $zero
/* C14B8 8010B0F8 02202021 */  addu       $a0, $s1, $zero
/* C14BC 8010B0FC 0C04378C */  jal        func_race_8010DE30
/* C14C0 8010B100 02402821 */   addu      $a1, $s2, $zero
/* C14C4 8010B104 08042C47 */  j          .Lrace_8010B11C
/* C14C8 8010B108 00000000 */   nop
.Lrace_8010B10C:
/* C14CC 8010B10C 8E220D04 */  lw         $v0, 0xD04($s1)
/* C14D0 8010B110 AE200D70 */  sw         $zero, 0xD70($s1)
/* C14D4 8010B114 00431024 */  and        $v0, $v0, $v1
/* C14D8 8010B118 AE220D04 */  sw         $v0, 0xD04($s1)
.Lrace_8010B11C:
/* C14DC 8010B11C 8E2207EC */  lw         $v0, 0x7EC($s1)
/* C14E0 8010B120 10400032 */  beqz       $v0, .Lrace_8010B1EC
/* C14E4 8010B124 00000000 */   nop
/* C14E8 8010B128 8E240014 */  lw         $a0, 0x14($s1)
/* C14EC 8010B12C 10800003 */  beqz       $a0, .Lrace_8010B13C
/* C14F0 8010B130 00000000 */   nop
/* C14F4 8010B134 0C03D3F1 */  jal        func_race_800F4FC4
/* C14F8 8010B138 00000000 */   nop
.Lrace_8010B13C:
/* C14FC 8010B13C 8E220D44 */  lw         $v0, 0xD44($s1)
/* C1500 8010B140 1440002A */  bnez       $v0, .Lrace_8010B1EC
/* C1504 8010B144 00000000 */   nop
/* C1508 8010B148 8E23005C */  lw         $v1, 0x5C($s1)
/* C150C 8010B14C 27B00020 */  addiu      $s0, $sp, 0x20
/* C1510 8010B150 8C620024 */  lw         $v0, 0x24($v1)
/* C1514 8010B154 02002821 */  addu       $a1, $s0, $zero
/* C1518 8010B158 84440010 */  lh         $a0, 0x10($v0)
/* C151C 8010B15C 8C420014 */  lw         $v0, 0x14($v0)
/* C1520 8010B160 0040F809 */  jalr       $v0
/* C1524 8010B164 00642021 */   addu      $a0, $v1, $a0
/* C1528 8010B168 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* C152C 8010B16C 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C1530 8010B170 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* C1534 8010B174 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C1538 8010B178 24840001 */  addiu      $a0, $a0, 0x1
/* C153C 8010B17C 308403FF */  andi       $a0, $a0, 0x3FF
/* C1540 8010B180 00041040 */  sll        $v0, $a0, 1
/* C1544 8010B184 00431021 */  addu       $v0, $v0, $v1
/* C1548 8010B188 94420000 */  lhu        $v0, 0x0($v0)
/* C154C 8010B18C 30420001 */  andi       $v0, $v0, 0x1
/* C1550 8010B190 10400008 */  beqz       $v0, .Lrace_8010B1B4
/* C1554 8010B194 ACA4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a1)
/* C1558 8010B198 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* C155C 8010B19C 3C01800D */  lui        $at, %hi(D_race_800CDB44)
/* C1560 8010B1A0 C422DB44 */  lwc1       $f2, %lo(D_race_800CDB44)($at)
/* C1564 8010B1A4 3C01800D */  lui        $at, %hi(D_race_800CDB48)
/* C1568 8010B1A8 C420DB48 */  lwc1       $f0, %lo(D_race_800CDB48)($at)
/* C156C 8010B1AC 08042C73 */  j          .Lrace_8010B1CC
/* C1570 8010B1B0 24050019 */   addiu     $a1, $zero, 0x19
.Lrace_8010B1B4:
/* C1574 8010B1B4 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* C1578 8010B1B8 3C01800D */  lui        $at, %hi(D_race_800CDB4C)
/* C157C 8010B1BC C422DB4C */  lwc1       $f2, %lo(D_race_800CDB4C)($at)
/* C1580 8010B1C0 3C01800D */  lui        $at, %hi(D_race_800CDB50)
/* C1584 8010B1C4 C420DB50 */  lwc1       $f0, %lo(D_race_800CDB50)($at)
/* C1588 8010B1C8 24050038 */  addiu      $a1, $zero, 0x38
.Lrace_8010B1CC:
/* C158C 8010B1CC E7A20010 */  swc1       $f2, 0x10($sp)
/* C1590 8010B1D0 E7A00014 */  swc1       $f0, 0x14($sp)
/* C1594 8010B1D4 E7A00018 */  swc1       $f0, 0x18($sp)
/* C1598 8010B1D8 8E240004 */  lw         $a0, 0x4($s1)
/* C159C 8010B1DC 0C046530 */  jal        func_race_801194C0
/* C15A0 8010B1E0 02003021 */   addu      $a2, $s0, $zero
/* C15A4 8010B1E4 240200FA */  addiu      $v0, $zero, 0xFA
/* C15A8 8010B1E8 AE220D44 */  sw         $v0, 0xD44($s1)
.Lrace_8010B1EC:
/* C15AC 8010B1EC 8E230D04 */  lw         $v1, 0xD04($s1)
/* C15B0 8010B1F0 3C020800 */  lui        $v0, (0x8000000 >> 16)
/* C15B4 8010B1F4 00621024 */  and        $v0, $v1, $v0
/* C15B8 8010B1F8 10400006 */  beqz       $v0, .Lrace_8010B214
/* C15BC 8010B1FC 30620008 */   andi      $v0, $v1, 0x8
/* C15C0 8010B200 14400004 */  bnez       $v0, .Lrace_8010B214
/* C15C4 8010B204 02202821 */   addu      $a1, $s1, $zero
/* C15C8 8010B208 8E240008 */  lw         $a0, 0x8($s1)
/* C15CC 8010B20C 0C04B209 */  jal        func_race_8012C824
/* C15D0 8010B210 24060002 */   addiu     $a2, $zero, 0x2
.Lrace_8010B214:
/* C15D4 8010B214 8FBF0040 */  lw         $ra, 0x40($sp)
/* C15D8 8010B218 8FB3003C */  lw         $s3, 0x3C($sp)
/* C15DC 8010B21C 8FB20038 */  lw         $s2, 0x38($sp)
/* C15E0 8010B220 8FB10034 */  lw         $s1, 0x34($sp)
/* C15E4 8010B224 8FB00030 */  lw         $s0, 0x30($sp)
/* C15E8 8010B228 03E00008 */  jr         $ra
/* C15EC 8010B22C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_8010B230
/* C15F0 8010B230 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C15F4 8010B234 AFBF0010 */  sw         $ra, 0x10($sp)
/* C15F8 8010B238 8C820C84 */  lw         $v0, 0xC84($a0)
/* C15FC 8010B23C 30420004 */  andi       $v0, $v0, 0x4
/* C1600 8010B240 14400003 */  bnez       $v0, .Lrace_8010B250
/* C1604 8010B244 00000000 */   nop
/* C1608 8010B248 0C0435A8 */  jal        func_race_8010D6A0
/* C160C 8010B24C 00000000 */   nop
.Lrace_8010B250:
/* C1610 8010B250 8FBF0010 */  lw         $ra, 0x10($sp)
/* C1614 8010B254 03E00008 */  jr         $ra
/* C1618 8010B258 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010B25C
/* C161C 8010B25C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C1620 8010B260 AFB20038 */  sw         $s2, 0x38($sp)
/* C1624 8010B264 00809021 */  addu       $s2, $a0, $zero
/* C1628 8010B268 AFB10034 */  sw         $s1, 0x34($sp)
/* C162C 8010B26C 00008821 */  addu       $s1, $zero, $zero
/* C1630 8010B270 AFB3003C */  sw         $s3, 0x3C($sp)
/* C1634 8010B274 24130003 */  addiu      $s3, $zero, 0x3
/* C1638 8010B278 AFB40040 */  sw         $s4, 0x40($sp)
/* C163C 8010B27C 26540018 */  addiu      $s4, $s2, 0x18
/* C1640 8010B280 AFBF0044 */  sw         $ra, 0x44($sp)
/* C1644 8010B284 AFB00030 */  sw         $s0, 0x30($sp)
.Lrace_8010B288:
/* C1648 8010B288 2E220004 */  sltiu      $v0, $s1, 0x4
/* C164C 8010B28C 1040005D */  beqz       $v0, .Lrace_8010B404
/* C1650 8010B290 24020001 */   addiu     $v0, $zero, 0x1
/* C1654 8010B294 1222000C */  beq        $s1, $v0, .Lrace_8010B2C8
/* C1658 8010B298 00008021 */   addu      $s0, $zero, $zero
/* C165C 8010B29C 12200007 */  beqz       $s1, .Lrace_8010B2BC
/* C1660 8010B2A0 24020002 */   addiu     $v0, $zero, 0x2
/* C1664 8010B2A4 1222000B */  beq        $s1, $v0, .Lrace_8010B2D4
/* C1668 8010B2A8 00000000 */   nop
/* C166C 8010B2AC 1233000C */  beq        $s1, $s3, .Lrace_8010B2E0
/* C1670 8010B2B0 00000000 */   nop
/* C1674 8010B2B4 08042CB9 */  j          .Lrace_8010B2E4
/* C1678 8010B2B8 00000000 */   nop
.Lrace_8010B2BC:
/* C167C 8010B2BC 8E500D84 */  lw         $s0, 0xD84($s2)
/* C1680 8010B2C0 08042CB9 */  j          .Lrace_8010B2E4
/* C1684 8010B2C4 00000000 */   nop
.Lrace_8010B2C8:
/* C1688 8010B2C8 8E500D88 */  lw         $s0, 0xD88($s2)
/* C168C 8010B2CC 08042CB9 */  j          .Lrace_8010B2E4
/* C1690 8010B2D0 00000000 */   nop
.Lrace_8010B2D4:
/* C1694 8010B2D4 8E500D8C */  lw         $s0, 0xD8C($s2)
/* C1698 8010B2D8 08042CB9 */  j          .Lrace_8010B2E4
/* C169C 8010B2DC 00000000 */   nop
.Lrace_8010B2E0:
/* C16A0 8010B2E0 8E500D90 */  lw         $s0, 0xD90($s2)
.Lrace_8010B2E4:
/* C16A4 8010B2E4 5200FFE8 */  beql       $s0, $zero, .Lrace_8010B288
/* C16A8 8010B2E8 26310001 */   addiu     $s1, $s1, 0x1
/* C16AC 8010B2EC 8E420D04 */  lw         $v0, 0xD04($s2)
/* C16B0 8010B2F0 30420040 */  andi       $v0, $v0, 0x40
/* C16B4 8010B2F4 10400020 */  beqz       $v0, .Lrace_8010B378
/* C16B8 8010B2F8 00000000 */   nop
/* C16BC 8010B2FC 8E420D60 */  lw         $v0, 0xD60($s2)
/* C16C0 8010B300 1622001D */  bne        $s1, $v0, .Lrace_8010B378
/* C16C4 8010B304 2E220003 */   sltiu     $v0, $s1, 0x3
/* C16C8 8010B308 1040001B */  beqz       $v0, .Lrace_8010B378
/* C16CC 8010B30C 27A50010 */   addiu     $a1, $sp, 0x10
/* C16D0 8010B310 8E830044 */  lw         $v1, 0x44($s4)
/* C16D4 8010B314 8C620024 */  lw         $v0, 0x24($v1)
/* C16D8 8010B318 84440010 */  lh         $a0, 0x10($v0)
/* C16DC 8010B31C 8C420014 */  lw         $v0, 0x14($v0)
/* C16E0 8010B320 0040F809 */  jalr       $v0
/* C16E4 8010B324 00642021 */   addu      $a0, $v1, $a0
/* C16E8 8010B328 8E460400 */  lw         $a2, 0x400($s2)
/* C16EC 8010B32C 8E470404 */  lw         $a3, 0x404($s2)
/* C16F0 8010B330 8E480408 */  lw         $t0, 0x408($s2)
/* C16F4 8010B334 AFA60020 */  sw         $a2, 0x20($sp)
/* C16F8 8010B338 AFA70024 */  sw         $a3, 0x24($sp)
/* C16FC 8010B33C AFA80028 */  sw         $t0, 0x28($sp)
/* C1700 8010B340 8FA60010 */  lw         $a2, 0x10($sp)
/* C1704 8010B344 8FA70014 */  lw         $a3, 0x14($sp)
/* C1708 8010B348 8FA80018 */  lw         $t0, 0x18($sp)
/* C170C 8010B34C AE060014 */  sw         $a2, 0x14($s0)
/* C1710 8010B350 AE070018 */  sw         $a3, 0x18($s0)
/* C1714 8010B354 AE08001C */  sw         $t0, 0x1C($s0)
/* C1718 8010B358 C7A00020 */  lwc1       $f0, 0x20($sp)
/* C171C 8010B35C 8E020034 */  lw         $v0, 0x34($s0)
/* C1720 8010B360 E6000020 */  swc1       $f0, 0x20($s0)
/* C1724 8010B364 C7A00024 */  lwc1       $f0, 0x24($sp)
/* C1728 8010B368 E6000024 */  swc1       $f0, 0x24($s0)
/* C172C 8010B36C C7A00028 */  lwc1       $f0, 0x28($sp)
/* C1730 8010B370 08042CE5 */  j          .Lrace_8010B394
/* C1734 8010B374 E6000028 */   swc1      $f0, 0x28($s0)
.Lrace_8010B378:
/* C1738 8010B378 8E420D04 */  lw         $v0, 0xD04($s2)
/* C173C 8010B37C 30420010 */  andi       $v0, $v0, 0x10
/* C1740 8010B380 10400012 */  beqz       $v0, .Lrace_8010B3CC
/* C1744 8010B384 00000000 */   nop
/* C1748 8010B388 16330010 */  bne        $s1, $s3, .Lrace_8010B3CC
/* C174C 8010B38C 00000000 */   nop
/* C1750 8010B390 8E020034 */  lw         $v0, 0x34($s0)
.Lrace_8010B394:
/* C1754 8010B394 84440020 */  lh         $a0, 0x20($v0)
/* C1758 8010B398 8C420024 */  lw         $v0, 0x24($v0)
/* C175C 8010B39C 0040F809 */  jalr       $v0
/* C1760 8010B3A0 02042021 */   addu      $a0, $s0, $a0
/* C1764 8010B3A4 5440FFB8 */  bnel       $v0, $zero, .Lrace_8010B288
/* C1768 8010B3A8 26310001 */   addiu     $s1, $s1, 0x1
/* C176C 8010B3AC 8E020034 */  lw         $v0, 0x34($s0)
/* C1770 8010B3B0 24050001 */  addiu      $a1, $zero, 0x1
/* C1774 8010B3B4 84440010 */  lh         $a0, 0x10($v0)
/* C1778 8010B3B8 8C420014 */  lw         $v0, 0x14($v0)
/* C177C 8010B3BC 0040F809 */  jalr       $v0
/* C1780 8010B3C0 02042021 */   addu      $a0, $s0, $a0
/* C1784 8010B3C4 08042CA2 */  j          .Lrace_8010B288
/* C1788 8010B3C8 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_8010B3CC:
/* C178C 8010B3CC 8E020034 */  lw         $v0, 0x34($s0)
/* C1790 8010B3D0 84440020 */  lh         $a0, 0x20($v0)
/* C1794 8010B3D4 8C420024 */  lw         $v0, 0x24($v0)
/* C1798 8010B3D8 0040F809 */  jalr       $v0
/* C179C 8010B3DC 02042021 */   addu      $a0, $s0, $a0
/* C17A0 8010B3E0 5040FFA9 */  beql       $v0, $zero, .Lrace_8010B288
/* C17A4 8010B3E4 26310001 */   addiu     $s1, $s1, 0x1
/* C17A8 8010B3E8 8E020034 */  lw         $v0, 0x34($s0)
/* C17AC 8010B3EC 84440018 */  lh         $a0, 0x18($v0)
/* C17B0 8010B3F0 8C42001C */  lw         $v0, 0x1C($v0)
/* C17B4 8010B3F4 0040F809 */  jalr       $v0
/* C17B8 8010B3F8 02042021 */   addu      $a0, $s0, $a0
/* C17BC 8010B3FC 08042CA2 */  j          .Lrace_8010B288
/* C17C0 8010B400 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_8010B404:
/* C17C4 8010B404 8E420DA4 */  lw         $v0, 0xDA4($s2)
/* C17C8 8010B408 1040000E */  beqz       $v0, .Lrace_8010B444
/* C17CC 8010B40C 264302B4 */   addiu     $v1, $s2, 0x2B4
/* C17D0 8010B410 8C620024 */  lw         $v0, 0x24($v1)
/* C17D4 8010B414 27A50010 */  addiu      $a1, $sp, 0x10
/* C17D8 8010B418 84440010 */  lh         $a0, 0x10($v0)
/* C17DC 8010B41C 8C420014 */  lw         $v0, 0x14($v0)
/* C17E0 8010B420 0040F809 */  jalr       $v0
/* C17E4 8010B424 00642021 */   addu      $a0, $v1, $a0
/* C17E8 8010B428 8E420DA4 */  lw         $v0, 0xDA4($s2)
/* C17EC 8010B42C 8FA60010 */  lw         $a2, 0x10($sp)
/* C17F0 8010B430 8FA70014 */  lw         $a3, 0x14($sp)
/* C17F4 8010B434 8FA80018 */  lw         $t0, 0x18($sp)
/* C17F8 8010B438 AC460014 */  sw         $a2, 0x14($v0)
/* C17FC 8010B43C AC470018 */  sw         $a3, 0x18($v0)
/* C1800 8010B440 AC48001C */  sw         $t0, 0x1C($v0)
.Lrace_8010B444:
/* C1804 8010B444 8FBF0044 */  lw         $ra, 0x44($sp)
/* C1808 8010B448 8FB40040 */  lw         $s4, 0x40($sp)
/* C180C 8010B44C 8FB3003C */  lw         $s3, 0x3C($sp)
/* C1810 8010B450 8FB20038 */  lw         $s2, 0x38($sp)
/* C1814 8010B454 8FB10034 */  lw         $s1, 0x34($sp)
/* C1818 8010B458 8FB00030 */  lw         $s0, 0x30($sp)
/* C181C 8010B45C 03E00008 */  jr         $ra
/* C1820 8010B460 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_8010B464
/* C1824 8010B464 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* C1828 8010B468 AFB00040 */  sw         $s0, 0x40($sp)
/* C182C 8010B46C 00808021 */  addu       $s0, $a0, $zero
/* C1830 8010B470 AFBF0048 */  sw         $ra, 0x48($sp)
/* C1834 8010B474 AFB10044 */  sw         $s1, 0x44($sp)
/* C1838 8010B478 F7B40050 */  sdc1       $f20, 0x50($sp)
/* C183C 8010B47C 8E020D04 */  lw         $v0, 0xD04($s0)
/* C1840 8010B480 30420400 */  andi       $v0, $v0, 0x400
/* C1844 8010B484 10400236 */  beqz       $v0, .Lrace_8010BD60
/* C1848 8010B488 00A08821 */   addu      $s1, $a1, $zero
/* C184C 8010B48C 8E020D94 */  lw         $v0, 0xD94($s0)
/* C1850 8010B490 10400233 */  beqz       $v0, .Lrace_8010BD60
/* C1854 8010B494 27A50020 */   addiu     $a1, $sp, 0x20
/* C1858 8010B498 8E03005C */  lw         $v1, 0x5C($s0)
/* C185C 8010B49C 8C620024 */  lw         $v0, 0x24($v1)
/* C1860 8010B4A0 84440010 */  lh         $a0, 0x10($v0)
/* C1864 8010B4A4 8C420014 */  lw         $v0, 0x14($v0)
/* C1868 8010B4A8 0040F809 */  jalr       $v0
/* C186C 8010B4AC 00642021 */   addu      $a0, $v1, $a0
/* C1870 8010B4B0 8E080400 */  lw         $t0, 0x400($s0)
/* C1874 8010B4B4 8E090404 */  lw         $t1, 0x404($s0)
/* C1878 8010B4B8 8E0A0408 */  lw         $t2, 0x408($s0)
/* C187C 8010B4BC AFA80030 */  sw         $t0, 0x30($sp)
/* C1880 8010B4C0 AFA90034 */  sw         $t1, 0x34($sp)
/* C1884 8010B4C4 AFAA0038 */  sw         $t2, 0x38($sp)
/* C1888 8010B4C8 8E020D94 */  lw         $v0, 0xD94($s0)
/* C188C 8010B4CC 104001B2 */  beqz       $v0, .Lrace_8010BB98
/* C1890 8010B4D0 260303FC */   addiu     $v1, $s0, 0x3FC
/* C1894 8010B4D4 8E020D98 */  lw         $v0, 0xD98($s0)
/* C1898 8010B4D8 104001AF */  beqz       $v0, .Lrace_8010BB98
/* C189C 8010B4DC 00000000 */   nop
/* C18A0 8010B4E0 8E020D9C */  lw         $v0, 0xD9C($s0)
/* C18A4 8010B4E4 104001AC */  beqz       $v0, .Lrace_8010BB98
/* C18A8 8010B4E8 00000000 */   nop
/* C18AC 8010B4EC C462062C */  lwc1       $f2, 0x62C($v1)
/* C18B0 8010B4F0 44800000 */  mtc1       $zero, $f0
/* C18B4 8010B4F4 46001032 */  c.eq.s     $f2, $f0
/* C18B8 8010B4F8 00000000 */  nop
/* C18BC 8010B4FC 45000005 */  bc1f       .Lrace_8010B514
/* C18C0 8010B500 00001821 */   addu      $v1, $zero, $zero
/* C18C4 8010B504 8E020C84 */  lw         $v0, 0xC84($s0)
/* C18C8 8010B508 30420001 */  andi       $v0, $v0, 0x1
/* C18CC 8010B50C 10400002 */  beqz       $v0, .Lrace_8010B518
/* C18D0 8010B510 00000000 */   nop
.Lrace_8010B514:
/* C18D4 8010B514 24030001 */  addiu      $v1, $zero, 0x1
.Lrace_8010B518:
/* C18D8 8010B518 10600012 */  beqz       $v1, .Lrace_8010B564
/* C18DC 8010B51C 00000000 */   nop
/* C18E0 8010B520 8E030D98 */  lw         $v1, 0xD98($s0)
/* C18E4 8010B524 8C620034 */  lw         $v0, 0x34($v1)
/* C18E8 8010B528 84440020 */  lh         $a0, 0x20($v0)
/* C18EC 8010B52C 8C420024 */  lw         $v0, 0x24($v0)
/* C18F0 8010B530 0040F809 */  jalr       $v0
/* C18F4 8010B534 00642021 */   addu      $a0, $v1, $a0
/* C18F8 8010B538 14400031 */  bnez       $v0, .Lrace_8010B600
/* C18FC 8010B53C 24050001 */   addiu     $a1, $zero, 0x1
/* C1900 8010B540 8E030D98 */  lw         $v1, 0xD98($s0)
/* C1904 8010B544 8C620034 */  lw         $v0, 0x34($v1)
/* C1908 8010B548 84440010 */  lh         $a0, 0x10($v0)
/* C190C 8010B54C 8C420014 */  lw         $v0, 0x14($v0)
/* C1910 8010B550 0040F809 */  jalr       $v0
/* C1914 8010B554 00642021 */   addu      $a0, $v1, $a0
/* C1918 8010B558 24020001 */  addiu      $v0, $zero, 0x1
/* C191C 8010B55C 08042D80 */  j          .Lrace_8010B600
/* C1920 8010B560 AE020D1C */   sw        $v0, 0xD1C($s0)
.Lrace_8010B564:
/* C1924 8010B564 C6020A04 */  lwc1       $f2, 0xA04($s0)
/* C1928 8010B568 3C01800D */  lui        $at, %hi(D_race_800CDB54)
/* C192C 8010B56C C420DB54 */  lwc1       $f0, %lo(D_race_800CDB54)($at)
/* C1930 8010B570 4602003C */  c.lt.s     $f0, $f2
/* C1934 8010B574 00000000 */  nop
/* C1938 8010B578 45000012 */  bc1f       .Lrace_8010B5C4
/* C193C 8010B57C 00000000 */   nop
/* C1940 8010B580 8E030D9C */  lw         $v1, 0xD9C($s0)
/* C1944 8010B584 8C620034 */  lw         $v0, 0x34($v1)
/* C1948 8010B588 84440020 */  lh         $a0, 0x20($v0)
/* C194C 8010B58C 8C420024 */  lw         $v0, 0x24($v0)
/* C1950 8010B590 0040F809 */  jalr       $v0
/* C1954 8010B594 00642021 */   addu      $a0, $v1, $a0
/* C1958 8010B598 14400019 */  bnez       $v0, .Lrace_8010B600
/* C195C 8010B59C 24050001 */   addiu     $a1, $zero, 0x1
/* C1960 8010B5A0 8E030D9C */  lw         $v1, 0xD9C($s0)
/* C1964 8010B5A4 8C620034 */  lw         $v0, 0x34($v1)
/* C1968 8010B5A8 84440010 */  lh         $a0, 0x10($v0)
/* C196C 8010B5AC 8C420014 */  lw         $v0, 0x14($v0)
/* C1970 8010B5B0 0040F809 */  jalr       $v0
/* C1974 8010B5B4 00642021 */   addu      $a0, $v1, $a0
/* C1978 8010B5B8 24020002 */  addiu      $v0, $zero, 0x2
/* C197C 8010B5BC 08042D80 */  j          .Lrace_8010B600
/* C1980 8010B5C0 AE020D1C */   sw        $v0, 0xD1C($s0)
.Lrace_8010B5C4:
/* C1984 8010B5C4 8E030D94 */  lw         $v1, 0xD94($s0)
/* C1988 8010B5C8 8C620034 */  lw         $v0, 0x34($v1)
/* C198C 8010B5CC 84440020 */  lh         $a0, 0x20($v0)
/* C1990 8010B5D0 8C420024 */  lw         $v0, 0x24($v0)
/* C1994 8010B5D4 0040F809 */  jalr       $v0
/* C1998 8010B5D8 00642021 */   addu      $a0, $v1, $a0
/* C199C 8010B5DC 14400008 */  bnez       $v0, .Lrace_8010B600
/* C19A0 8010B5E0 24050001 */   addiu     $a1, $zero, 0x1
/* C19A4 8010B5E4 8E030D94 */  lw         $v1, 0xD94($s0)
/* C19A8 8010B5E8 8C620034 */  lw         $v0, 0x34($v1)
/* C19AC 8010B5EC 84440010 */  lh         $a0, 0x10($v0)
/* C19B0 8010B5F0 8C420014 */  lw         $v0, 0x14($v0)
/* C19B4 8010B5F4 0040F809 */  jalr       $v0
/* C19B8 8010B5F8 00642021 */   addu      $a0, $v1, $a0
/* C19BC 8010B5FC AE000D1C */  sw         $zero, 0xD1C($s0)
.Lrace_8010B600:
/* C19C0 8010B600 44912000 */  mtc1       $s1, $f4
/* C19C4 8010B604 46802121 */  cvt.d.w    $f4, $f4
/* C19C8 8010B608 06210004 */  bgez       $s1, .Lrace_8010B61C
/* C19CC 8010B60C 00000000 */   nop
/* C19D0 8010B610 3C01800D */  lui        $at, %hi(D_race_800CDB58)
/* C19D4 8010B614 D420DB58 */  ldc1       $f0, %lo(D_race_800CDB58)($at)
/* C19D8 8010B618 46202100 */  add.d      $f4, $f4, $f0
.Lrace_8010B61C:
/* C19DC 8010B61C 3C01800D */  lui        $at, %hi(D_race_800CDB60)
/* C19E0 8010B620 C422DB60 */  lwc1       $f2, %lo(D_race_800CDB60)($at)
/* C19E4 8010B624 46202020 */  cvt.s.d    $f0, $f4
/* C19E8 8010B628 46020002 */  mul.s      $f0, $f0, $f2
/* C19EC 8010B62C 3C01800D */  lui        $at, %hi(D_race_800CDB64)
/* C19F0 8010B630 C434DB64 */  lwc1       $f20, %lo(D_race_800CDB64)($at)
/* C19F4 8010B634 8E020D04 */  lw         $v0, 0xD04($s0)
/* C19F8 8010B638 3C01800D */  lui        $at, %hi(D_race_800CDB68)
/* C19FC 8010B63C C422DB68 */  lwc1       $f2, %lo(D_race_800CDB68)($at)
/* C1A00 8010B640 30421000 */  andi       $v0, $v0, 0x1000
/* C1A04 8010B644 46020082 */  mul.s      $f2, $f0, $f2
/* C1A08 8010B648 10400003 */  beqz       $v0, .Lrace_8010B658
/* C1A0C 8010B64C 00000000 */   nop
/* C1A10 8010B650 3C01800D */  lui        $at, %hi(D_race_800CDB6C)
/* C1A14 8010B654 C434DB6C */  lwc1       $f20, %lo(D_race_800CDB6C)($at)
.Lrace_8010B658:
/* C1A18 8010B658 8E030D1C */  lw         $v1, 0xD1C($s0)
/* C1A1C 8010B65C 24020001 */  addiu      $v0, $zero, 0x1
/* C1A20 8010B660 10620029 */  beq        $v1, $v0, .Lrace_8010B708
/* C1A24 8010B664 28620002 */   slti      $v0, $v1, 0x2
/* C1A28 8010B668 50400005 */  beql       $v0, $zero, .Lrace_8010B680
/* C1A2C 8010B66C 24020002 */   addiu     $v0, $zero, 0x2
/* C1A30 8010B670 10600007 */  beqz       $v1, .Lrace_8010B690
/* C1A34 8010B674 00000000 */   nop
/* C1A38 8010B678 08042DFB */  j          .Lrace_8010B7EC
/* C1A3C 8010B67C 00000000 */   nop
.Lrace_8010B680:
/* C1A40 8010B680 1062003E */  beq        $v1, $v0, .Lrace_8010B77C
/* C1A44 8010B684 00000000 */   nop
/* C1A48 8010B688 08042DFB */  j          .Lrace_8010B7EC
/* C1A4C 8010B68C 00000000 */   nop
.Lrace_8010B690:
/* C1A50 8010B690 C6040D20 */  lwc1       $f4, 0xD20($s0)
/* C1A54 8010B694 4614203C */  c.lt.s     $f4, $f20
/* C1A58 8010B698 00000000 */  nop
/* C1A5C 8010B69C 45000006 */  bc1f       .Lrace_8010B6B8
/* C1A60 8010B6A0 00000000 */   nop
/* C1A64 8010B6A4 3C01800D */  lui        $at, %hi(D_race_800CDB70)
/* C1A68 8010B6A8 C420DB70 */  lwc1       $f0, %lo(D_race_800CDB70)($at)
/* C1A6C 8010B6AC 46001002 */  mul.s      $f0, $f2, $f0
/* C1A70 8010B6B0 46002000 */  add.s      $f0, $f4, $f0
/* C1A74 8010B6B4 E6000D20 */  swc1       $f0, 0xD20($s0)
.Lrace_8010B6B8:
/* C1A78 8010B6B8 C6000D20 */  lwc1       $f0, 0xD20($s0)
/* C1A7C 8010B6BC 4600A03C */  c.lt.s     $f20, $f0
/* C1A80 8010B6C0 00000000 */  nop
/* C1A84 8010B6C4 45030001 */  bc1tl      .Lrace_8010B6CC
/* C1A88 8010B6C8 E6140D20 */   swc1      $f20, 0xD20($s0)
.Lrace_8010B6CC:
/* C1A8C 8010B6CC C6000D24 */  lwc1       $f0, 0xD24($s0)
/* C1A90 8010B6D0 4602003C */  c.lt.s     $f0, $f2
/* C1A94 8010B6D4 00000000 */  nop
/* C1A98 8010B6D8 45020003 */  bc1fl      .Lrace_8010B6E8
/* C1A9C 8010B6DC 46020001 */   sub.s     $f0, $f0, $f2
/* C1AA0 8010B6E0 08042DBB */  j          .Lrace_8010B6EC
/* C1AA4 8010B6E4 AE000D24 */   sw        $zero, 0xD24($s0)
.Lrace_8010B6E8:
/* C1AA8 8010B6E8 E6000D24 */  swc1       $f0, 0xD24($s0)
.Lrace_8010B6EC:
/* C1AAC 8010B6EC C6000D28 */  lwc1       $f0, 0xD28($s0)
/* C1AB0 8010B6F0 4602003C */  c.lt.s     $f0, $f2
/* C1AB4 8010B6F4 00000000 */  nop
/* C1AB8 8010B6F8 4503003C */  bc1tl      .Lrace_8010B7EC
/* C1ABC 8010B6FC AE000D28 */   sw        $zero, 0xD28($s0)
/* C1AC0 8010B700 08042DDD */  j          .Lrace_8010B774
/* C1AC4 8010B704 46020001 */   sub.s     $f0, $f0, $f2
.Lrace_8010B708:
/* C1AC8 8010B708 C6000D24 */  lwc1       $f0, 0xD24($s0)
/* C1ACC 8010B70C 4614003C */  c.lt.s     $f0, $f20
/* C1AD0 8010B710 00000000 */  nop
/* C1AD4 8010B714 45000004 */  bc1f       .Lrace_8010B728
/* C1AD8 8010B718 00000000 */   nop
/* C1ADC 8010B71C 46020000 */  add.s      $f0, $f0, $f2
/* C1AE0 8010B720 E6000D24 */  swc1       $f0, 0xD24($s0)
/* C1AE4 8010B724 C6000D24 */  lwc1       $f0, 0xD24($s0)
.Lrace_8010B728:
/* C1AE8 8010B728 4600A03C */  c.lt.s     $f20, $f0
/* C1AEC 8010B72C 00000000 */  nop
/* C1AF0 8010B730 45030001 */  bc1tl      .Lrace_8010B738
/* C1AF4 8010B734 E6140D24 */   swc1      $f20, 0xD24($s0)
.Lrace_8010B738:
/* C1AF8 8010B738 C6000D20 */  lwc1       $f0, 0xD20($s0)
/* C1AFC 8010B73C 4602003C */  c.lt.s     $f0, $f2
/* C1B00 8010B740 00000000 */  nop
/* C1B04 8010B744 45020003 */  bc1fl      .Lrace_8010B754
/* C1B08 8010B748 46020001 */   sub.s     $f0, $f0, $f2
/* C1B0C 8010B74C 08042DD6 */  j          .Lrace_8010B758
/* C1B10 8010B750 AE000D20 */   sw        $zero, 0xD20($s0)
.Lrace_8010B754:
/* C1B14 8010B754 E6000D20 */  swc1       $f0, 0xD20($s0)
.Lrace_8010B758:
/* C1B18 8010B758 C6000D28 */  lwc1       $f0, 0xD28($s0)
/* C1B1C 8010B75C 4602003C */  c.lt.s     $f0, $f2
/* C1B20 8010B760 00000000 */  nop
/* C1B24 8010B764 45020003 */  bc1fl      .Lrace_8010B774
/* C1B28 8010B768 46020001 */   sub.s     $f0, $f0, $f2
/* C1B2C 8010B76C 08042DFB */  j          .Lrace_8010B7EC
/* C1B30 8010B770 AE000D28 */   sw        $zero, 0xD28($s0)
.Lrace_8010B774:
/* C1B34 8010B774 08042DFB */  j          .Lrace_8010B7EC
/* C1B38 8010B778 E6000D28 */   swc1      $f0, 0xD28($s0)
.Lrace_8010B77C:
/* C1B3C 8010B77C C6000D28 */  lwc1       $f0, 0xD28($s0)
/* C1B40 8010B780 4614003C */  c.lt.s     $f0, $f20
/* C1B44 8010B784 00000000 */  nop
/* C1B48 8010B788 45000004 */  bc1f       .Lrace_8010B79C
/* C1B4C 8010B78C 00000000 */   nop
/* C1B50 8010B790 46020000 */  add.s      $f0, $f0, $f2
/* C1B54 8010B794 E6000D28 */  swc1       $f0, 0xD28($s0)
/* C1B58 8010B798 C6000D28 */  lwc1       $f0, 0xD28($s0)
.Lrace_8010B79C:
/* C1B5C 8010B79C 4600A03C */  c.lt.s     $f20, $f0
/* C1B60 8010B7A0 00000000 */  nop
/* C1B64 8010B7A4 45030001 */  bc1tl      .Lrace_8010B7AC
/* C1B68 8010B7A8 E6140D28 */   swc1      $f20, 0xD28($s0)
.Lrace_8010B7AC:
/* C1B6C 8010B7AC C6000D20 */  lwc1       $f0, 0xD20($s0)
/* C1B70 8010B7B0 4602003C */  c.lt.s     $f0, $f2
/* C1B74 8010B7B4 00000000 */  nop
/* C1B78 8010B7B8 45020003 */  bc1fl      .Lrace_8010B7C8
/* C1B7C 8010B7BC 46020001 */   sub.s     $f0, $f0, $f2
/* C1B80 8010B7C0 08042DF3 */  j          .Lrace_8010B7CC
/* C1B84 8010B7C4 AE000D20 */   sw        $zero, 0xD20($s0)
.Lrace_8010B7C8:
/* C1B88 8010B7C8 E6000D20 */  swc1       $f0, 0xD20($s0)
.Lrace_8010B7CC:
/* C1B8C 8010B7CC C6000D24 */  lwc1       $f0, 0xD24($s0)
/* C1B90 8010B7D0 4602003C */  c.lt.s     $f0, $f2
/* C1B94 8010B7D4 00000000 */  nop
/* C1B98 8010B7D8 45020003 */  bc1fl      .Lrace_8010B7E8
/* C1B9C 8010B7DC 46020001 */   sub.s     $f0, $f0, $f2
/* C1BA0 8010B7E0 08042DFB */  j          .Lrace_8010B7EC
/* C1BA4 8010B7E4 AE000D24 */   sw        $zero, 0xD24($s0)
.Lrace_8010B7E8:
/* C1BA8 8010B7E8 E6000D24 */  swc1       $f0, 0xD24($s0)
.Lrace_8010B7EC:
/* C1BAC 8010B7EC C6020D20 */  lwc1       $f2, 0xD20($s0)
/* C1BB0 8010B7F0 46141032 */  c.eq.s     $f2, $f20
/* C1BB4 8010B7F4 00000000 */  nop
/* C1BB8 8010B7F8 45000005 */  bc1f       .Lrace_8010B810
/* C1BBC 8010B7FC 00000000 */   nop
/* C1BC0 8010B800 8E040D94 */  lw         $a0, 0xD94($s0)
/* C1BC4 8010B804 4405A000 */  mfc1       $a1, $f20
/* C1BC8 8010B808 08042E22 */  j          .Lrace_8010B888
/* C1BCC 8010B80C 00000000 */   nop
.Lrace_8010B810:
/* C1BD0 8010B810 44800000 */  mtc1       $zero, $f0
/* C1BD4 8010B814 46001032 */  c.eq.s     $f2, $f0
/* C1BD8 8010B818 00000000 */  nop
/* C1BDC 8010B81C 45000009 */  bc1f       .Lrace_8010B844
/* C1BE0 8010B820 3C038003 */   lui       $v1, %hi(D_8002D2B0)
/* C1BE4 8010B824 8E030D94 */  lw         $v1, 0xD94($s0)
/* C1BE8 8010B828 8C620034 */  lw         $v0, 0x34($v1)
/* C1BEC 8010B82C 84440018 */  lh         $a0, 0x18($v0)
/* C1BF0 8010B830 8C42001C */  lw         $v0, 0x1C($v0)
/* C1BF4 8010B834 0040F809 */  jalr       $v0
/* C1BF8 8010B838 00642021 */   addu      $a0, $v1, $a0
/* C1BFC 8010B83C 08042E24 */  j          .Lrace_8010B890
/* C1C00 8010B840 00000000 */   nop
.Lrace_8010B844:
/* C1C04 8010B844 3C01800D */  lui        $at, %hi(D_race_800CDB74)
/* C1C08 8010B848 C420DB74 */  lwc1       $f0, %lo(D_race_800CDB74)($at)
/* C1C0C 8010B84C 46001002 */  mul.s      $f0, $f2, $f0
/* C1C10 8010B850 3C01800D */  lui        $at, %hi(D_race_800CDB78)
/* C1C14 8010B854 C422DB78 */  lwc1       $f2, %lo(D_race_800CDB78)($at)
/* C1C18 8010B858 46020002 */  mul.s      $f0, $f0, $f2
/* C1C1C 8010B85C 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* C1C20 8010B860 4600018D */  trunc.w.s  $f6, $f0
/* C1C24 8010B864 44023000 */  mfc1       $v0, $f6
/* C1C28 8010B868 2442FF00 */  addiu      $v0, $v0, -0x100
/* C1C2C 8010B86C 304203FF */  andi       $v0, $v0, 0x3FF
/* C1C30 8010B870 00021080 */  sll        $v0, $v0, 2
/* C1C34 8010B874 00431021 */  addu       $v0, $v0, $v1
/* C1C38 8010B878 C4400000 */  lwc1       $f0, 0x0($v0)
/* C1C3C 8010B87C 46140002 */  mul.s      $f0, $f0, $f20
/* C1C40 8010B880 8E040D94 */  lw         $a0, 0xD94($s0)
/* C1C44 8010B884 44050000 */  mfc1       $a1, $f0
.Lrace_8010B888:
/* C1C48 8010B888 0C01FDE4 */  jal        func_8007F790
/* C1C4C 8010B88C 00000000 */   nop
.Lrace_8010B890:
/* C1C50 8010B890 C6020D24 */  lwc1       $f2, 0xD24($s0)
/* C1C54 8010B894 46141032 */  c.eq.s     $f2, $f20
/* C1C58 8010B898 00000000 */  nop
/* C1C5C 8010B89C 45000005 */  bc1f       .Lrace_8010B8B4
/* C1C60 8010B8A0 00000000 */   nop
/* C1C64 8010B8A4 8E040D98 */  lw         $a0, 0xD98($s0)
/* C1C68 8010B8A8 4405A000 */  mfc1       $a1, $f20
/* C1C6C 8010B8AC 08042E4B */  j          .Lrace_8010B92C
/* C1C70 8010B8B0 00000000 */   nop
.Lrace_8010B8B4:
/* C1C74 8010B8B4 44800000 */  mtc1       $zero, $f0
/* C1C78 8010B8B8 46001032 */  c.eq.s     $f2, $f0
/* C1C7C 8010B8BC 00000000 */  nop
/* C1C80 8010B8C0 45000009 */  bc1f       .Lrace_8010B8E8
/* C1C84 8010B8C4 3C038003 */   lui       $v1, %hi(D_8002D2B0)
/* C1C88 8010B8C8 8E030D98 */  lw         $v1, 0xD98($s0)
/* C1C8C 8010B8CC 8C620034 */  lw         $v0, 0x34($v1)
/* C1C90 8010B8D0 84440018 */  lh         $a0, 0x18($v0)
/* C1C94 8010B8D4 8C42001C */  lw         $v0, 0x1C($v0)
/* C1C98 8010B8D8 0040F809 */  jalr       $v0
/* C1C9C 8010B8DC 00642021 */   addu      $a0, $v1, $a0
/* C1CA0 8010B8E0 08042E4D */  j          .Lrace_8010B934
/* C1CA4 8010B8E4 00000000 */   nop
.Lrace_8010B8E8:
/* C1CA8 8010B8E8 3C01800D */  lui        $at, %hi(D_race_800CDB7C)
/* C1CAC 8010B8EC C420DB7C */  lwc1       $f0, %lo(D_race_800CDB7C)($at)
/* C1CB0 8010B8F0 46001002 */  mul.s      $f0, $f2, $f0
/* C1CB4 8010B8F4 3C01800D */  lui        $at, %hi(D_race_800CDB80)
/* C1CB8 8010B8F8 C422DB80 */  lwc1       $f2, %lo(D_race_800CDB80)($at)
/* C1CBC 8010B8FC 46020002 */  mul.s      $f0, $f0, $f2
/* C1CC0 8010B900 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* C1CC4 8010B904 4600018D */  trunc.w.s  $f6, $f0
/* C1CC8 8010B908 44023000 */  mfc1       $v0, $f6
/* C1CCC 8010B90C 2442FF00 */  addiu      $v0, $v0, -0x100
/* C1CD0 8010B910 304203FF */  andi       $v0, $v0, 0x3FF
/* C1CD4 8010B914 00021080 */  sll        $v0, $v0, 2
/* C1CD8 8010B918 00431021 */  addu       $v0, $v0, $v1
/* C1CDC 8010B91C C4400000 */  lwc1       $f0, 0x0($v0)
/* C1CE0 8010B920 46140002 */  mul.s      $f0, $f0, $f20
/* C1CE4 8010B924 8E040D98 */  lw         $a0, 0xD98($s0)
/* C1CE8 8010B928 44050000 */  mfc1       $a1, $f0
.Lrace_8010B92C:
/* C1CEC 8010B92C 0C01FDE4 */  jal        func_8007F790
/* C1CF0 8010B930 00000000 */   nop
.Lrace_8010B934:
/* C1CF4 8010B934 C6020D28 */  lwc1       $f2, 0xD28($s0)
/* C1CF8 8010B938 46141032 */  c.eq.s     $f2, $f20
/* C1CFC 8010B93C 00000000 */  nop
/* C1D00 8010B940 45000005 */  bc1f       .Lrace_8010B958
/* C1D04 8010B944 00000000 */   nop
/* C1D08 8010B948 8E040D9C */  lw         $a0, 0xD9C($s0)
/* C1D0C 8010B94C 4405A000 */  mfc1       $a1, $f20
/* C1D10 8010B950 08042E74 */  j          .Lrace_8010B9D0
/* C1D14 8010B954 00000000 */   nop
.Lrace_8010B958:
/* C1D18 8010B958 44800000 */  mtc1       $zero, $f0
/* C1D1C 8010B95C 46001032 */  c.eq.s     $f2, $f0
/* C1D20 8010B960 00000000 */  nop
/* C1D24 8010B964 45000009 */  bc1f       .Lrace_8010B98C
/* C1D28 8010B968 3C038003 */   lui       $v1, %hi(D_8002D2B0)
/* C1D2C 8010B96C 8E030D9C */  lw         $v1, 0xD9C($s0)
/* C1D30 8010B970 8C620034 */  lw         $v0, 0x34($v1)
/* C1D34 8010B974 84440018 */  lh         $a0, 0x18($v0)
/* C1D38 8010B978 8C42001C */  lw         $v0, 0x1C($v0)
/* C1D3C 8010B97C 0040F809 */  jalr       $v0
/* C1D40 8010B980 00642021 */   addu      $a0, $v1, $a0
/* C1D44 8010B984 08042E76 */  j          .Lrace_8010B9D8
/* C1D48 8010B988 00000000 */   nop
.Lrace_8010B98C:
/* C1D4C 8010B98C 3C01800D */  lui        $at, %hi(D_race_800CDB84)
/* C1D50 8010B990 C420DB84 */  lwc1       $f0, %lo(D_race_800CDB84)($at)
/* C1D54 8010B994 46001002 */  mul.s      $f0, $f2, $f0
/* C1D58 8010B998 3C01800D */  lui        $at, %hi(D_race_800CDB88)
/* C1D5C 8010B99C C422DB88 */  lwc1       $f2, %lo(D_race_800CDB88)($at)
/* C1D60 8010B9A0 46020002 */  mul.s      $f0, $f0, $f2
/* C1D64 8010B9A4 2463D2B0 */  addiu      $v1, $v1, %lo(D_8002D2B0)
/* C1D68 8010B9A8 4600018D */  trunc.w.s  $f6, $f0
/* C1D6C 8010B9AC 44023000 */  mfc1       $v0, $f6
/* C1D70 8010B9B0 2442FF00 */  addiu      $v0, $v0, -0x100
/* C1D74 8010B9B4 304203FF */  andi       $v0, $v0, 0x3FF
/* C1D78 8010B9B8 00021080 */  sll        $v0, $v0, 2
/* C1D7C 8010B9BC 00431021 */  addu       $v0, $v0, $v1
/* C1D80 8010B9C0 C4400000 */  lwc1       $f0, 0x0($v0)
/* C1D84 8010B9C4 46140002 */  mul.s      $f0, $f0, $f20
/* C1D88 8010B9C8 8E040D9C */  lw         $a0, 0xD9C($s0)
/* C1D8C 8010B9CC 44050000 */  mfc1       $a1, $f0
.Lrace_8010B9D0:
/* C1D90 8010B9D0 0C01FDE4 */  jal        func_8007F790
/* C1D94 8010B9D4 00000000 */   nop
.Lrace_8010B9D8:
/* C1D98 8010B9D8 C6020D4C */  lwc1       $f2, 0xD4C($s0)
/* C1D9C 8010B9DC 44800000 */  mtc1       $zero, $f0
/* C1DA0 8010B9E0 4600103C */  c.lt.s     $f2, $f0
/* C1DA4 8010B9E4 00000000 */  nop
/* C1DA8 8010B9E8 45030007 */  bc1tl      .Lrace_8010BA08
/* C1DAC 8010B9EC 46000086 */   mov.s     $f2, $f0
/* C1DB0 8010B9F0 3C01800D */  lui        $at, %hi(D_race_800CDB8C)
/* C1DB4 8010B9F4 C420DB8C */  lwc1       $f0, %lo(D_race_800CDB8C)($at)
/* C1DB8 8010B9F8 4602003C */  c.lt.s     $f0, $f2
/* C1DBC 8010B9FC 00000000 */  nop
/* C1DC0 8010BA00 45030001 */  bc1tl      .Lrace_8010BA08
/* C1DC4 8010BA04 46000086 */   mov.s     $f2, $f0
.Lrace_8010BA08:
/* C1DC8 8010BA08 8E020D94 */  lw         $v0, 0xD94($s0)
/* C1DCC 8010BA0C 8FA90020 */  lw         $t1, 0x20($sp)
/* C1DD0 8010BA10 8FAA0024 */  lw         $t2, 0x24($sp)
/* C1DD4 8010BA14 8FAB0028 */  lw         $t3, 0x28($sp)
/* C1DD8 8010BA18 AC490014 */  sw         $t1, 0x14($v0)
/* C1DDC 8010BA1C AC4A0018 */  sw         $t2, 0x18($v0)
/* C1DE0 8010BA20 AC4B001C */  sw         $t3, 0x1C($v0)
/* C1DE4 8010BA24 8E020D94 */  lw         $v0, 0xD94($s0)
/* C1DE8 8010BA28 C7A00030 */  lwc1       $f0, 0x30($sp)
/* C1DEC 8010BA2C E4400020 */  swc1       $f0, 0x20($v0)
/* C1DF0 8010BA30 C7A00034 */  lwc1       $f0, 0x34($sp)
/* C1DF4 8010BA34 E4400024 */  swc1       $f0, 0x24($v0)
/* C1DF8 8010BA38 C7A00038 */  lwc1       $f0, 0x38($sp)
/* C1DFC 8010BA3C E4400028 */  swc1       $f0, 0x28($v0)
/* C1E00 8010BA40 8E020D94 */  lw         $v0, 0xD94($s0)
/* C1E04 8010BA44 E4420004 */  swc1       $f2, 0x4($v0)
/* C1E08 8010BA48 C6000A04 */  lwc1       $f0, 0xA04($s0)
/* C1E0C 8010BA4C 3C01800D */  lui        $at, %hi(D_race_800CDB90)
/* C1E10 8010BA50 C422DB90 */  lwc1       $f2, %lo(D_race_800CDB90)($at)
/* C1E14 8010BA54 3C01800D */  lui        $at, %hi(D_race_800CDB94)
/* C1E18 8010BA58 C424DB94 */  lwc1       $f4, %lo(D_race_800CDB94)($at)
/* C1E1C 8010BA5C 46020003 */  div.s      $f0, $f0, $f2
/* C1E20 8010BA60 46040082 */  mul.s      $f2, $f0, $f4
/* C1E24 8010BA64 C6000D4C */  lwc1       $f0, 0xD4C($s0)
/* C1E28 8010BA68 46020002 */  mul.s      $f0, $f0, $f2
/* C1E2C 8010BA6C 8E020D48 */  lw         $v0, 0xD48($s0)
/* C1E30 8010BA70 3C01800D */  lui        $at, %hi(D_race_800CDB98)
/* C1E34 8010BA74 C422DB98 */  lwc1       $f2, %lo(D_race_800CDB98)($at)
/* C1E38 8010BA78 2C420033 */  sltiu      $v0, $v0, 0x33
/* C1E3C 8010BA7C 14400004 */  bnez       $v0, .Lrace_8010BA90
/* C1E40 8010BA80 46020080 */   add.s     $f2, $f0, $f2
/* C1E44 8010BA84 3C01800D */  lui        $at, %hi(D_race_800CDB9C)
/* C1E48 8010BA88 C420DB9C */  lwc1       $f0, %lo(D_race_800CDB9C)($at)
/* C1E4C 8010BA8C 46001080 */  add.s      $f2, $f2, $f0
.Lrace_8010BA90:
/* C1E50 8010BA90 44800000 */  mtc1       $zero, $f0
/* C1E54 8010BA94 4600103C */  c.lt.s     $f2, $f0
/* C1E58 8010BA98 00000000 */  nop
/* C1E5C 8010BA9C 45030007 */  bc1tl      .Lrace_8010BABC
/* C1E60 8010BAA0 46000086 */   mov.s     $f2, $f0
/* C1E64 8010BAA4 3C01800D */  lui        $at, %hi(D_race_800CDBA0)
/* C1E68 8010BAA8 C420DBA0 */  lwc1       $f0, %lo(D_race_800CDBA0)($at)
/* C1E6C 8010BAAC 4602003C */  c.lt.s     $f0, $f2
/* C1E70 8010BAB0 00000000 */  nop
/* C1E74 8010BAB4 45030001 */  bc1tl      .Lrace_8010BABC
/* C1E78 8010BAB8 46000086 */   mov.s     $f2, $f0
.Lrace_8010BABC:
/* C1E7C 8010BABC 8E020D98 */  lw         $v0, 0xD98($s0)
/* C1E80 8010BAC0 8FA90020 */  lw         $t1, 0x20($sp)
/* C1E84 8010BAC4 8FAA0024 */  lw         $t2, 0x24($sp)
/* C1E88 8010BAC8 8FAB0028 */  lw         $t3, 0x28($sp)
/* C1E8C 8010BACC AC490014 */  sw         $t1, 0x14($v0)
/* C1E90 8010BAD0 AC4A0018 */  sw         $t2, 0x18($v0)
/* C1E94 8010BAD4 AC4B001C */  sw         $t3, 0x1C($v0)
/* C1E98 8010BAD8 8E020D98 */  lw         $v0, 0xD98($s0)
/* C1E9C 8010BADC C7A00030 */  lwc1       $f0, 0x30($sp)
/* C1EA0 8010BAE0 E4400020 */  swc1       $f0, 0x20($v0)
/* C1EA4 8010BAE4 C7A00034 */  lwc1       $f0, 0x34($sp)
/* C1EA8 8010BAE8 E4400024 */  swc1       $f0, 0x24($v0)
/* C1EAC 8010BAEC C7A00038 */  lwc1       $f0, 0x38($sp)
/* C1EB0 8010BAF0 E4400028 */  swc1       $f0, 0x28($v0)
/* C1EB4 8010BAF4 8E020D98 */  lw         $v0, 0xD98($s0)
/* C1EB8 8010BAF8 E4420004 */  swc1       $f2, 0x4($v0)
/* C1EBC 8010BAFC C6000A04 */  lwc1       $f0, 0xA04($s0)
/* C1EC0 8010BB00 3C01800D */  lui        $at, %hi(D_race_800CDBA4)
/* C1EC4 8010BB04 C422DBA4 */  lwc1       $f2, %lo(D_race_800CDBA4)($at)
/* C1EC8 8010BB08 3C01800D */  lui        $at, %hi(D_race_800CDBA8)
/* C1ECC 8010BB0C C424DBA8 */  lwc1       $f4, %lo(D_race_800CDBA8)($at)
/* C1ED0 8010BB10 46020003 */  div.s      $f0, $f0, $f2
/* C1ED4 8010BB14 46040082 */  mul.s      $f2, $f0, $f4
/* C1ED8 8010BB18 C6000D4C */  lwc1       $f0, 0xD4C($s0)
/* C1EDC 8010BB1C 46020002 */  mul.s      $f0, $f0, $f2
/* C1EE0 8010BB20 3C01800D */  lui        $at, %hi(D_race_800CDBAC)
/* C1EE4 8010BB24 C422DBAC */  lwc1       $f2, %lo(D_race_800CDBAC)($at)
/* C1EE8 8010BB28 46020080 */  add.s      $f2, $f0, $f2
/* C1EEC 8010BB2C 44800000 */  mtc1       $zero, $f0
/* C1EF0 8010BB30 4600103C */  c.lt.s     $f2, $f0
/* C1EF4 8010BB34 00000000 */  nop
/* C1EF8 8010BB38 45030007 */  bc1tl      .Lrace_8010BB58
/* C1EFC 8010BB3C 46000086 */   mov.s     $f2, $f0
/* C1F00 8010BB40 3C01800D */  lui        $at, %hi(D_race_800CDBB0)
/* C1F04 8010BB44 C420DBB0 */  lwc1       $f0, %lo(D_race_800CDBB0)($at)
/* C1F08 8010BB48 4602003C */  c.lt.s     $f0, $f2
/* C1F0C 8010BB4C 00000000 */  nop
/* C1F10 8010BB50 45030001 */  bc1tl      .Lrace_8010BB58
/* C1F14 8010BB54 46000086 */   mov.s     $f2, $f0
.Lrace_8010BB58:
/* C1F18 8010BB58 8E020D9C */  lw         $v0, 0xD9C($s0)
/* C1F1C 8010BB5C 8FA90020 */  lw         $t1, 0x20($sp)
/* C1F20 8010BB60 8FAA0024 */  lw         $t2, 0x24($sp)
/* C1F24 8010BB64 8FAB0028 */  lw         $t3, 0x28($sp)
/* C1F28 8010BB68 AC490014 */  sw         $t1, 0x14($v0)
/* C1F2C 8010BB6C AC4A0018 */  sw         $t2, 0x18($v0)
/* C1F30 8010BB70 AC4B001C */  sw         $t3, 0x1C($v0)
/* C1F34 8010BB74 8E020D9C */  lw         $v0, 0xD9C($s0)
/* C1F38 8010BB78 C7A00030 */  lwc1       $f0, 0x30($sp)
/* C1F3C 8010BB7C E4400020 */  swc1       $f0, 0x20($v0)
/* C1F40 8010BB80 C7A00034 */  lwc1       $f0, 0x34($sp)
/* C1F44 8010BB84 E4400024 */  swc1       $f0, 0x24($v0)
/* C1F48 8010BB88 C7A00038 */  lwc1       $f0, 0x38($sp)
/* C1F4C 8010BB8C E4400028 */  swc1       $f0, 0x28($v0)
/* C1F50 8010BB90 8E020D9C */  lw         $v0, 0xD9C($s0)
/* C1F54 8010BB94 E4420004 */  swc1       $f2, 0x4($v0)
.Lrace_8010BB98:
/* C1F58 8010BB98 8E020DA0 */  lw         $v0, 0xDA0($s0)
/* C1F5C 8010BB9C 1040002F */  beqz       $v0, .Lrace_8010BC5C
/* C1F60 8010BBA0 260203FC */   addiu     $v0, $s0, 0x3FC
/* C1F64 8010BBA4 C442061C */  lwc1       $f2, 0x61C($v0)
/* C1F68 8010BBA8 3C01800D */  lui        $at, %hi(D_race_800CDBB4)
/* C1F6C 8010BBAC C420DBB4 */  lwc1       $f0, %lo(D_race_800CDBB4)($at)
/* C1F70 8010BBB0 4600103C */  c.lt.s     $f2, $f0
/* C1F74 8010BBB4 00000000 */  nop
/* C1F78 8010BBB8 45010007 */  bc1t       .Lrace_8010BBD8
/* C1F7C 8010BBBC 00001821 */   addu      $v1, $zero, $zero
/* C1F80 8010BBC0 C442062C */  lwc1       $f2, 0x62C($v0)
/* C1F84 8010BBC4 44800000 */  mtc1       $zero, $f0
/* C1F88 8010BBC8 4602003E */  c.le.s     $f0, $f2
/* C1F8C 8010BBCC 00000000 */  nop
/* C1F90 8010BBD0 45000002 */  bc1f       .Lrace_8010BBDC
/* C1F94 8010BBD4 00000000 */   nop
.Lrace_8010BBD8:
/* C1F98 8010BBD8 24030001 */  addiu      $v1, $zero, 0x1
.Lrace_8010BBDC:
/* C1F9C 8010BBDC 10600007 */  beqz       $v1, .Lrace_8010BBFC
/* C1FA0 8010BBE0 00000000 */   nop
/* C1FA4 8010BBE4 8E040004 */  lw         $a0, 0x4($s0)
/* C1FA8 8010BBE8 8E050DA0 */  lw         $a1, 0xDA0($s0)
/* C1FAC 8010BBEC 0C046564 */  jal        func_race_80119590
/* C1FB0 8010BBF0 00000000 */   nop
/* C1FB4 8010BBF4 08042F58 */  j          .Lrace_8010BD60
/* C1FB8 8010BBF8 AE000DA0 */   sw        $zero, 0xDA0($s0)
.Lrace_8010BBFC:
/* C1FBC 8010BBFC 8E020DA0 */  lw         $v0, 0xDA0($s0)
/* C1FC0 8010BC00 8FA90020 */  lw         $t1, 0x20($sp)
/* C1FC4 8010BC04 8FAA0024 */  lw         $t2, 0x24($sp)
/* C1FC8 8010BC08 8FAB0028 */  lw         $t3, 0x28($sp)
/* C1FCC 8010BC0C AC490014 */  sw         $t1, 0x14($v0)
/* C1FD0 8010BC10 AC4A0018 */  sw         $t2, 0x18($v0)
/* C1FD4 8010BC14 AC4B001C */  sw         $t3, 0x1C($v0)
/* C1FD8 8010BC18 8E020DA0 */  lw         $v0, 0xDA0($s0)
/* C1FDC 8010BC1C C7A00030 */  lwc1       $f0, 0x30($sp)
/* C1FE0 8010BC20 E4400020 */  swc1       $f0, 0x20($v0)
/* C1FE4 8010BC24 C7A00034 */  lwc1       $f0, 0x34($sp)
/* C1FE8 8010BC28 E4400024 */  swc1       $f0, 0x24($v0)
/* C1FEC 8010BC2C C7A00038 */  lwc1       $f0, 0x38($sp)
/* C1FF0 8010BC30 E4400028 */  swc1       $f0, 0x28($v0)
/* C1FF4 8010BC34 C6020A04 */  lwc1       $f2, 0xA04($s0)
/* C1FF8 8010BC38 3C01800D */  lui        $at, %hi(D_race_800CDBB8)
/* C1FFC 8010BC3C C420DBB8 */  lwc1       $f0, %lo(D_race_800CDBB8)($at)
/* C2000 8010BC40 46020001 */  sub.s      $f0, $f0, $f2
/* C2004 8010BC44 3C01800D */  lui        $at, %hi(D_race_800CDBBC)
/* C2008 8010BC48 C422DBBC */  lwc1       $f2, %lo(D_race_800CDBBC)($at)
/* C200C 8010BC4C 46001081 */  sub.s      $f2, $f2, $f0
/* C2010 8010BC50 8E020DA0 */  lw         $v0, 0xDA0($s0)
/* C2014 8010BC54 08042F58 */  j          .Lrace_8010BD60
/* C2018 8010BC58 E4420004 */   swc1      $f2, 0x4($v0)
.Lrace_8010BC5C:
/* C201C 8010BC5C C442061C */  lwc1       $f2, 0x61C($v0)
/* C2020 8010BC60 3C01800D */  lui        $at, %hi(D_race_800CDBC0)
/* C2024 8010BC64 C420DBC0 */  lwc1       $f0, %lo(D_race_800CDBC0)($at)
/* C2028 8010BC68 4602003C */  c.lt.s     $f0, $f2
/* C202C 8010BC6C 00000000 */  nop
/* C2030 8010BC70 45000007 */  bc1f       .Lrace_8010BC90
/* C2034 8010BC74 00001821 */   addu      $v1, $zero, $zero
/* C2038 8010BC78 C442062C */  lwc1       $f2, 0x62C($v0)
/* C203C 8010BC7C 44800000 */  mtc1       $zero, $f0
/* C2040 8010BC80 4600103C */  c.lt.s     $f2, $f0
/* C2044 8010BC84 00000000 */  nop
/* C2048 8010BC88 45030001 */  bc1tl      .Lrace_8010BC90
/* C204C 8010BC8C 24030001 */   addiu     $v1, $zero, 0x1
.Lrace_8010BC90:
/* C2050 8010BC90 10600033 */  beqz       $v1, .Lrace_8010BD60
/* C2054 8010BC94 24050002 */   addiu     $a1, $zero, 0x2
/* C2058 8010BC98 3C01800D */  lui        $at, %hi(D_race_800CDBC4)
/* C205C 8010BC9C C420DBC4 */  lwc1       $f0, %lo(D_race_800CDBC4)($at)
/* C2060 8010BCA0 3C01800D */  lui        $at, %hi(D_race_800CDBC8)
/* C2064 8010BCA4 C434DBC8 */  lwc1       $f20, %lo(D_race_800CDBC8)($at)
/* C2068 8010BCA8 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* C206C 8010BCAC E7A00010 */  swc1       $f0, 0x10($sp)
/* C2070 8010BCB0 E7B40014 */  swc1       $f20, 0x14($sp)
/* C2074 8010BCB4 E7B40018 */  swc1       $f20, 0x18($sp)
/* C2078 8010BCB8 8E040004 */  lw         $a0, 0x4($s0)
/* C207C 8010BCBC 0C046530 */  jal        func_race_801194C0
/* C2080 8010BCC0 27A60020 */   addiu     $a2, $sp, 0x20
/* C2084 8010BCC4 8E040004 */  lw         $a0, 0x4($s0)
/* C2088 8010BCC8 0C04654F */  jal        func_race_8011953C
/* C208C 8010BCCC 24050003 */   addiu     $a1, $zero, 0x3
/* C2090 8010BCD0 10400023 */  beqz       $v0, .Lrace_8010BD60
/* C2094 8010BCD4 AE020DA0 */   sw        $v0, 0xDA0($s0)
/* C2098 8010BCD8 3C01800D */  lui        $at, %hi(D_race_800CDBCC)
/* C209C 8010BCDC C420DBCC */  lwc1       $f0, %lo(D_race_800CDBCC)($at)
/* C20A0 8010BCE0 3C01800D */  lui        $at, %hi(D_race_800CDBD0)
/* C20A4 8010BCE4 C422DBD0 */  lwc1       $f2, %lo(D_race_800CDBD0)($at)
/* C20A8 8010BCE8 E440002C */  swc1       $f0, 0x2C($v0)
/* C20AC 8010BCEC E4420030 */  swc1       $f2, 0x30($v0)
/* C20B0 8010BCF0 8E020DA0 */  lw         $v0, 0xDA0($s0)
/* C20B4 8010BCF4 8FA90020 */  lw         $t1, 0x20($sp)
/* C20B8 8010BCF8 8FAA0024 */  lw         $t2, 0x24($sp)
/* C20BC 8010BCFC 8FAB0028 */  lw         $t3, 0x28($sp)
/* C20C0 8010BD00 AC490014 */  sw         $t1, 0x14($v0)
/* C20C4 8010BD04 AC4A0018 */  sw         $t2, 0x18($v0)
/* C20C8 8010BD08 AC4B001C */  sw         $t3, 0x1C($v0)
/* C20CC 8010BD0C 8E020DA0 */  lw         $v0, 0xDA0($s0)
/* C20D0 8010BD10 C7A00030 */  lwc1       $f0, 0x30($sp)
/* C20D4 8010BD14 E4400020 */  swc1       $f0, 0x20($v0)
/* C20D8 8010BD18 C7A00034 */  lwc1       $f0, 0x34($sp)
/* C20DC 8010BD1C E4400024 */  swc1       $f0, 0x24($v0)
/* C20E0 8010BD20 C7A00038 */  lwc1       $f0, 0x38($sp)
/* C20E4 8010BD24 E4400028 */  swc1       $f0, 0x28($v0)
/* C20E8 8010BD28 C6020A04 */  lwc1       $f2, 0xA04($s0)
/* C20EC 8010BD2C 3C01800D */  lui        $at, %hi(D_race_800CDBD4)
/* C20F0 8010BD30 C420DBD4 */  lwc1       $f0, %lo(D_race_800CDBD4)($at)
/* C20F4 8010BD34 46020001 */  sub.s      $f0, $f0, $f2
/* C20F8 8010BD38 4600A001 */  sub.s      $f0, $f20, $f0
/* C20FC 8010BD3C 8E020DA0 */  lw         $v0, 0xDA0($s0)
/* C2100 8010BD40 E4400004 */  swc1       $f0, 0x4($v0)
/* C2104 8010BD44 8E030DA0 */  lw         $v1, 0xDA0($s0)
/* C2108 8010BD48 8C620034 */  lw         $v0, 0x34($v1)
/* C210C 8010BD4C 24050001 */  addiu      $a1, $zero, 0x1
/* C2110 8010BD50 84440010 */  lh         $a0, 0x10($v0)
/* C2114 8010BD54 8C420014 */  lw         $v0, 0x14($v0)
/* C2118 8010BD58 0040F809 */  jalr       $v0
/* C211C 8010BD5C 00642021 */   addu      $a0, $v1, $a0
.Lrace_8010BD60:
/* C2120 8010BD60 8FBF0048 */  lw         $ra, 0x48($sp)
/* C2124 8010BD64 8FB10044 */  lw         $s1, 0x44($sp)
/* C2128 8010BD68 8FB00040 */  lw         $s0, 0x40($sp)
/* C212C 8010BD6C D7B40050 */  ldc1       $f20, 0x50($sp)
/* C2130 8010BD70 03E00008 */  jr         $ra
/* C2134 8010BD74 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_8010BD78
/* C2138 8010BD78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C213C 8010BD7C AFB00010 */  sw         $s0, 0x10($sp)
/* C2140 8010BD80 00808021 */  addu       $s0, $a0, $zero
/* C2144 8010BD84 AFBF0014 */  sw         $ra, 0x14($sp)
/* C2148 8010BD88 8E020D08 */  lw         $v0, 0xD08($s0)
/* C214C 8010BD8C 38420002 */  xori       $v0, $v0, 0x2
/* C2150 8010BD90 1040001D */  beqz       $v0, .Lrace_8010BE08
/* C2154 8010BD94 2403FBFF */   addiu     $v1, $zero, -0x401
/* C2158 8010BD98 8E020D04 */  lw         $v0, 0xD04($s0)
/* C215C 8010BD9C 8E050D94 */  lw         $a1, 0xD94($s0)
/* C2160 8010BDA0 00431024 */  and        $v0, $v0, $v1
/* C2164 8010BDA4 10A00018 */  beqz       $a1, .Lrace_8010BE08
/* C2168 8010BDA8 AE020D04 */   sw        $v0, 0xD04($s0)
/* C216C 8010BDAC 8CA20034 */  lw         $v0, 0x34($a1)
/* C2170 8010BDB0 84440018 */  lh         $a0, 0x18($v0)
/* C2174 8010BDB4 8C42001C */  lw         $v0, 0x1C($v0)
/* C2178 8010BDB8 0040F809 */  jalr       $v0
/* C217C 8010BDBC 00A42021 */   addu      $a0, $a1, $a0
/* C2180 8010BDC0 8E020D94 */  lw         $v0, 0xD94($s0)
/* C2184 8010BDC4 10400010 */  beqz       $v0, .Lrace_8010BE08
/* C2188 8010BDC8 00000000 */   nop
/* C218C 8010BDCC 8E030D98 */  lw         $v1, 0xD98($s0)
/* C2190 8010BDD0 8C620034 */  lw         $v0, 0x34($v1)
/* C2194 8010BDD4 84440018 */  lh         $a0, 0x18($v0)
/* C2198 8010BDD8 8C42001C */  lw         $v0, 0x1C($v0)
/* C219C 8010BDDC 0040F809 */  jalr       $v0
/* C21A0 8010BDE0 00642021 */   addu      $a0, $v1, $a0
/* C21A4 8010BDE4 8E020D94 */  lw         $v0, 0xD94($s0)
/* C21A8 8010BDE8 10400007 */  beqz       $v0, .Lrace_8010BE08
/* C21AC 8010BDEC 00000000 */   nop
/* C21B0 8010BDF0 8E030D9C */  lw         $v1, 0xD9C($s0)
/* C21B4 8010BDF4 8C620034 */  lw         $v0, 0x34($v1)
/* C21B8 8010BDF8 84440018 */  lh         $a0, 0x18($v0)
/* C21BC 8010BDFC 8C42001C */  lw         $v0, 0x1C($v0)
/* C21C0 8010BE00 0040F809 */  jalr       $v0
/* C21C4 8010BE04 00642021 */   addu      $a0, $v1, $a0
.Lrace_8010BE08:
/* C21C8 8010BE08 8FBF0014 */  lw         $ra, 0x14($sp)
/* C21CC 8010BE0C 8FB00010 */  lw         $s0, 0x10($sp)
/* C21D0 8010BE10 03E00008 */  jr         $ra
/* C21D4 8010BE14 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010BE18
/* C21D8 8010BE18 27BDFE00 */  addiu      $sp, $sp, -0x200
/* C21DC 8010BE1C AFB701C4 */  sw         $s7, 0x1C4($sp)
/* C21E0 8010BE20 AFBF01C8 */  sw         $ra, 0x1C8($sp)
/* C21E4 8010BE24 AFB601C0 */  sw         $s6, 0x1C0($sp)
/* C21E8 8010BE28 AFB501BC */  sw         $s5, 0x1BC($sp)
/* C21EC 8010BE2C AFB401B8 */  sw         $s4, 0x1B8($sp)
/* C21F0 8010BE30 AFB301B4 */  sw         $s3, 0x1B4($sp)
/* C21F4 8010BE34 AFB201B0 */  sw         $s2, 0x1B0($sp)
/* C21F8 8010BE38 AFB101AC */  sw         $s1, 0x1AC($sp)
/* C21FC 8010BE3C AFB001A8 */  sw         $s0, 0x1A8($sp)
/* C2200 8010BE40 F7BE01F8 */  sdc1       $f30, 0x1F8($sp)
/* C2204 8010BE44 F7BC01F0 */  sdc1       $f28, 0x1F0($sp)
/* C2208 8010BE48 F7BA01E8 */  sdc1       $f26, 0x1E8($sp)
/* C220C 8010BE4C F7B801E0 */  sdc1       $f24, 0x1E0($sp)
/* C2210 8010BE50 F7B601D8 */  sdc1       $f22, 0x1D8($sp)
/* C2214 8010BE54 F7B401D0 */  sdc1       $f20, 0x1D0($sp)
/* C2218 8010BE58 8CB10000 */  lw         $s1, 0x0($a1)
/* C221C 8010BE5C 24020001 */  addiu      $v0, $zero, 0x1
/* C2220 8010BE60 16220016 */  bne        $s1, $v0, .Lrace_8010BEBC
/* C2224 8010BE64 0080B821 */   addu      $s7, $a0, $zero
/* C2228 8010BE68 8EE30D04 */  lw         $v1, 0xD04($s7)
/* C222C 8010BE6C 2402FEFF */  addiu      $v0, $zero, -0x101
/* C2230 8010BE70 00621024 */  and        $v0, $v1, $v0
/* C2234 8010BE74 30630080 */  andi       $v1, $v1, 0x80
/* C2238 8010BE78 14600003 */  bnez       $v1, .Lrace_8010BE88
/* C223C 8010BE7C AEE20D04 */   sw        $v0, 0xD04($s7)
/* C2240 8010BE80 0C0435A8 */  jal        func_race_8010D6A0
/* C2244 8010BE84 00000000 */   nop
.Lrace_8010BE88:
/* C2248 8010BE88 8EE30D68 */  lw         $v1, 0xD68($s7)
/* C224C 8010BE8C 14710005 */  bne        $v1, $s1, .Lrace_8010BEA4
/* C2250 8010BE90 24020002 */   addiu     $v0, $zero, 0x2
/* C2254 8010BE94 0C03F8AA */  jal        func_race_800FE2A8
/* C2258 8010BE98 26E403FC */   addiu     $a0, $s7, 0x3FC
/* C225C 8010BE9C 08043269 */  j          .Lrace_8010C9A4
/* C2260 8010BEA0 AEE00D68 */   sw        $zero, 0xD68($s7)
.Lrace_8010BEA4:
/* C2264 8010BEA4 546202BF */  bnel       $v1, $v0, .Lrace_8010C9A4
/* C2268 8010BEA8 AEE00D68 */   sw        $zero, 0xD68($s7)
/* C226C 8010BEAC 0C03F8C6 */  jal        func_race_800FE318
/* C2270 8010BEB0 26E403FC */   addiu     $a0, $s7, 0x3FC
/* C2274 8010BEB4 08043269 */  j          .Lrace_8010C9A4
/* C2278 8010BEB8 AEE00D68 */   sw        $zero, 0xD68($s7)
.Lrace_8010BEBC:
/* C227C 8010BEBC 24020003 */  addiu      $v0, $zero, 0x3
/* C2280 8010BEC0 162202B8 */  bne        $s1, $v0, .Lrace_8010C9A4
/* C2284 8010BEC4 00000000 */   nop
/* C2288 8010BEC8 8CB20010 */  lw         $s2, 0x10($a1)
/* C228C 8010BECC 8CB40014 */  lw         $s4, 0x14($a1)
/* C2290 8010BED0 8E5600E0 */  lw         $s6, 0xE0($s2)
/* C2294 8010BED4 8E930020 */  lw         $s3, 0x20($s4)
/* C2298 8010BED8 8EC20D04 */  lw         $v0, 0xD04($s6)
/* C229C 8010BEDC 8E7500E0 */  lw         $s5, 0xE0($s3)
/* C22A0 8010BEE0 30420010 */  andi       $v0, $v0, 0x10
/* C22A4 8010BEE4 14400007 */  bnez       $v0, .Lrace_8010BF04
/* C22A8 8010BEE8 00001821 */   addu      $v1, $zero, $zero
/* C22AC 8010BEEC 12A00006 */  beqz       $s5, .Lrace_8010BF08
/* C22B0 8010BEF0 00000000 */   nop
/* C22B4 8010BEF4 8EA20D04 */  lw         $v0, 0xD04($s5)
/* C22B8 8010BEF8 30420010 */  andi       $v0, $v0, 0x10
/* C22BC 8010BEFC 10400002 */  beqz       $v0, .Lrace_8010BF08
/* C22C0 8010BF00 00000000 */   nop
.Lrace_8010BF04:
/* C22C4 8010BF04 24030001 */  addiu      $v1, $zero, 0x1
.Lrace_8010BF08:
/* C22C8 8010BF08 146002A6 */  bnez       $v1, .Lrace_8010C9A4
/* C22CC 8010BF0C 00000000 */   nop
/* C22D0 8010BF10 8EC20AA8 */  lw         $v0, 0xAA8($s6)
/* C22D4 8010BF14 30420080 */  andi       $v0, $v0, 0x80
/* C22D8 8010BF18 14400007 */  bnez       $v0, .Lrace_8010BF38
/* C22DC 8010BF1C 00001821 */   addu      $v1, $zero, $zero
/* C22E0 8010BF20 12A00006 */  beqz       $s5, .Lrace_8010BF3C
/* C22E4 8010BF24 00000000 */   nop
/* C22E8 8010BF28 8EA20AA8 */  lw         $v0, 0xAA8($s5)
/* C22EC 8010BF2C 30420080 */  andi       $v0, $v0, 0x80
/* C22F0 8010BF30 10400002 */  beqz       $v0, .Lrace_8010BF3C
/* C22F4 8010BF34 00000000 */   nop
.Lrace_8010BF38:
/* C22F8 8010BF38 24030001 */  addiu      $v1, $zero, 0x1
.Lrace_8010BF3C:
/* C22FC 8010BF3C 14600299 */  bnez       $v1, .Lrace_8010C9A4
/* C2300 8010BF40 26900010 */   addiu     $s0, $s4, 0x10
/* C2304 8010BF44 C682001C */  lwc1       $f2, 0x1C($s4)
/* C2308 8010BF48 C6800010 */  lwc1       $f0, 0x10($s4)
/* C230C 8010BF4C 46020002 */  mul.s      $f0, $f0, $f2
/* C2310 8010BF50 E7A00020 */  swc1       $f0, 0x20($sp)
/* C2314 8010BF54 C6000004 */  lwc1       $f0, 0x4($s0)
/* C2318 8010BF58 46020002 */  mul.s      $f0, $f0, $f2
/* C231C 8010BF5C 27A50020 */  addiu      $a1, $sp, 0x20
/* C2320 8010BF60 E4A00004 */  swc1       $f0, 0x4($a1)
/* C2324 8010BF64 C6000008 */  lwc1       $f0, 0x8($s0)
/* C2328 8010BF68 46020002 */  mul.s      $f0, $f0, $f2
/* C232C 8010BF6C 26D103FC */  addiu      $s1, $s6, 0x3FC
/* C2330 8010BF70 02202021 */  addu       $a0, $s1, $zero
/* C2334 8010BF74 0C03F7FF */  jal        func_race_800FDFFC
/* C2338 8010BF78 E4A00008 */   swc1      $f0, 0x8($a1)
/* C233C 8010BF7C C6480004 */  lwc1       $f8, 0x4($s2)
/* C2340 8010BF80 E7A80030 */  swc1       $f8, 0x30($sp)
/* C2344 8010BF84 C6460008 */  lwc1       $f6, 0x8($s2)
/* C2348 8010BF88 E7A60034 */  swc1       $f6, 0x34($sp)
/* C234C 8010BF8C C642000C */  lwc1       $f2, 0xC($s2)
/* C2350 8010BF90 E7A20038 */  swc1       $f2, 0x38($sp)
/* C2354 8010BF94 C6600004 */  lwc1       $f0, 0x4($s3)
/* C2358 8010BF98 46004201 */  sub.s      $f8, $f8, $f0
/* C235C 8010BF9C E7A00040 */  swc1       $f0, 0x40($sp)
/* C2360 8010BFA0 C6640008 */  lwc1       $f4, 0x8($s3)
/* C2364 8010BFA4 46043181 */  sub.s      $f6, $f6, $f4
/* C2368 8010BFA8 E7A40044 */  swc1       $f4, 0x44($sp)
/* C236C 8010BFAC C660000C */  lwc1       $f0, 0xC($s3)
/* C2370 8010BFB0 46001081 */  sub.s      $f2, $f2, $f0
/* C2374 8010BFB4 E7A00048 */  swc1       $f0, 0x48($sp)
/* C2378 8010BFB8 E7A80030 */  swc1       $f8, 0x30($sp)
/* C237C 8010BFBC E7A60034 */  swc1       $f6, 0x34($sp)
/* C2380 8010BFC0 E7A20038 */  swc1       $f2, 0x38($sp)
/* C2384 8010BFC4 8E880010 */  lw         $t0, 0x10($s4)
/* C2388 8010BFC8 8E890014 */  lw         $t1, 0x14($s4)
/* C238C 8010BFCC 8E8A0018 */  lw         $t2, 0x18($s4)
/* C2390 8010BFD0 AFA80050 */  sw         $t0, 0x50($sp)
/* C2394 8010BFD4 AFA90054 */  sw         $t1, 0x54($sp)
/* C2398 8010BFD8 AFAA0058 */  sw         $t2, 0x58($sp)
/* C239C 8010BFDC 8E48001C */  lw         $t0, 0x1C($s2)
/* C23A0 8010BFE0 8E490020 */  lw         $t1, 0x20($s2)
/* C23A4 8010BFE4 8E4A0024 */  lw         $t2, 0x24($s2)
/* C23A8 8010BFE8 AFA80060 */  sw         $t0, 0x60($sp)
/* C23AC 8010BFEC AFA90064 */  sw         $t1, 0x64($sp)
/* C23B0 8010BFF0 AFAA0068 */  sw         $t2, 0x68($sp)
/* C23B4 8010BFF4 8E68001C */  lw         $t0, 0x1C($s3)
/* C23B8 8010BFF8 8E690020 */  lw         $t1, 0x20($s3)
/* C23BC 8010BFFC 8E6A0024 */  lw         $t2, 0x24($s3)
/* C23C0 8010C000 AFA80070 */  sw         $t0, 0x70($sp)
/* C23C4 8010C004 AFA90074 */  sw         $t1, 0x74($sp)
/* C23C8 8010C008 AFAA0078 */  sw         $t2, 0x78($sp)
/* C23CC 8010C00C C7A00030 */  lwc1       $f0, 0x30($sp)
/* C23D0 8010C010 C7AA0050 */  lwc1       $f10, 0x50($sp)
/* C23D4 8010C014 460A0002 */  mul.s      $f0, $f0, $f10
/* C23D8 8010C018 C7A40034 */  lwc1       $f4, 0x34($sp)
/* C23DC 8010C01C C7A60054 */  lwc1       $f6, 0x54($sp)
/* C23E0 8010C020 46062102 */  mul.s      $f4, $f4, $f6
/* C23E4 8010C024 C7A20038 */  lwc1       $f2, 0x38($sp)
/* C23E8 8010C028 C7A80058 */  lwc1       $f8, 0x58($sp)
/* C23EC 8010C02C 46081082 */  mul.s      $f2, $f2, $f8
/* C23F0 8010C030 00000000 */  nop
/* C23F4 8010C034 460A5302 */  mul.s      $f12, $f10, $f10
/* C23F8 8010C038 00000000 */  nop
/* C23FC 8010C03C 46063182 */  mul.s      $f6, $f6, $f6
/* C2400 8010C040 00000000 */  nop
/* C2404 8010C044 46084202 */  mul.s      $f8, $f8, $f8
/* C2408 8010C048 46040000 */  add.s      $f0, $f0, $f4
/* C240C 8010C04C 46020000 */  add.s      $f0, $f0, $f2
/* C2410 8010C050 3C01800D */  lui        $at, %hi(D_race_800CDBE0)
/* C2414 8010C054 C422DBE0 */  lwc1       $f2, %lo(D_race_800CDBE0)($at)
/* C2418 8010C058 46000007 */  neg.s      $f0, $f0
/* C241C 8010C05C 46020002 */  mul.s      $f0, $f0, $f2
/* C2420 8010C060 46066180 */  add.s      $f6, $f12, $f6
/* C2424 8010C064 C7A20060 */  lwc1       $f2, 0x60($sp)
/* C2428 8010C068 46083180 */  add.s      $f6, $f6, $f8
/* C242C 8010C06C E7A00130 */  swc1       $f0, 0x130($sp)
/* C2430 8010C070 C6800004 */  lwc1       $f0, 0x4($s4)
/* C2434 8010C074 C64400C8 */  lwc1       $f4, 0xC8($s2)
/* C2438 8010C078 46001081 */  sub.s      $f2, $f2, $f0
/* C243C 8010C07C C66A00C8 */  lwc1       $f10, 0xC8($s3)
/* C2440 8010C080 C7A00064 */  lwc1       $f0, 0x64($sp)
/* C2444 8010C084 460A2100 */  add.s      $f4, $f4, $f10
/* C2448 8010C088 E7A20080 */  swc1       $f2, 0x80($sp)
/* C244C 8010C08C C6820008 */  lwc1       $f2, 0x8($s4)
/* C2450 8010C090 46020001 */  sub.s      $f0, $f0, $f2
/* C2454 8010C094 46043182 */  mul.s      $f6, $f6, $f4
/* C2458 8010C098 E7A00084 */  swc1       $f0, 0x84($sp)
/* C245C 8010C09C C7A20068 */  lwc1       $f2, 0x68($sp)
/* C2460 8010C0A0 C680000C */  lwc1       $f0, 0xC($s4)
/* C2464 8010C0A4 27A40080 */  addiu      $a0, $sp, 0x80
/* C2468 8010C0A8 46001081 */  sub.s      $f2, $f2, $f0
/* C246C 8010C0AC 00802821 */  addu       $a1, $a0, $zero
/* C2470 8010C0B0 E7A60134 */  swc1       $f6, 0x134($sp)
/* C2474 8010C0B4 0C000F26 */  jal        func_80003C98
/* C2478 8010C0B8 E7A20088 */   swc1      $f2, 0x88($sp)
/* C247C 8010C0BC C7A00070 */  lwc1       $f0, 0x70($sp)
/* C2480 8010C0C0 C6820004 */  lwc1       $f2, 0x4($s4)
/* C2484 8010C0C4 46020001 */  sub.s      $f0, $f0, $f2
/* C2488 8010C0C8 E7A00090 */  swc1       $f0, 0x90($sp)
/* C248C 8010C0CC C7A00074 */  lwc1       $f0, 0x74($sp)
/* C2490 8010C0D0 C6820008 */  lwc1       $f2, 0x8($s4)
/* C2494 8010C0D4 46020001 */  sub.s      $f0, $f0, $f2
/* C2498 8010C0D8 E7A00094 */  swc1       $f0, 0x94($sp)
/* C249C 8010C0DC C7A00078 */  lwc1       $f0, 0x78($sp)
/* C24A0 8010C0E0 C682000C */  lwc1       $f2, 0xC($s4)
/* C24A4 8010C0E4 46020001 */  sub.s      $f0, $f0, $f2
/* C24A8 8010C0E8 27A40090 */  addiu      $a0, $sp, 0x90
/* C24AC 8010C0EC 00802821 */  addu       $a1, $a0, $zero
/* C24B0 8010C0F0 0C000F26 */  jal        func_80003C98
/* C24B4 8010C0F4 E7A00098 */   swc1      $f0, 0x98($sp)
/* C24B8 8010C0F8 C6520070 */  lwc1       $f18, 0x70($s2)
/* C24BC 8010C0FC E7B20138 */  swc1       $f18, 0x138($sp)
/* C24C0 8010C100 E7B200A0 */  swc1       $f18, 0xA0($sp)
/* C24C4 8010C104 C65C0074 */  lwc1       $f28, 0x74($s2)
/* C24C8 8010C108 E7BC013C */  swc1       $f28, 0x13C($sp)
/* C24CC 8010C10C E7BC00A4 */  swc1       $f28, 0xA4($sp)
/* C24D0 8010C110 C6520078 */  lwc1       $f18, 0x78($s2)
/* C24D4 8010C114 E7B20140 */  swc1       $f18, 0x140($sp)
/* C24D8 8010C118 E7B200A8 */  swc1       $f18, 0xA8($sp)
/* C24DC 8010C11C C65C007C */  lwc1       $f28, 0x7C($s2)
/* C24E0 8010C120 E7BC0144 */  swc1       $f28, 0x144($sp)
/* C24E4 8010C124 E7BC00AC */  swc1       $f28, 0xAC($sp)
/* C24E8 8010C128 C6520080 */  lwc1       $f18, 0x80($s2)
/* C24EC 8010C12C E7B20148 */  swc1       $f18, 0x148($sp)
/* C24F0 8010C130 E7B200B0 */  swc1       $f18, 0xB0($sp)
/* C24F4 8010C134 C65C0084 */  lwc1       $f28, 0x84($s2)
/* C24F8 8010C138 E7BC014C */  swc1       $f28, 0x14C($sp)
/* C24FC 8010C13C E7BC00B4 */  swc1       $f28, 0xB4($sp)
/* C2500 8010C140 C6520088 */  lwc1       $f18, 0x88($s2)
/* C2504 8010C144 E7B20150 */  swc1       $f18, 0x150($sp)
/* C2508 8010C148 E7B200B8 */  swc1       $f18, 0xB8($sp)
/* C250C 8010C14C C65C008C */  lwc1       $f28, 0x8C($s2)
/* C2510 8010C150 E7BC0154 */  swc1       $f28, 0x154($sp)
/* C2514 8010C154 E7BC00BC */  swc1       $f28, 0xBC($sp)
/* C2518 8010C158 C6520090 */  lwc1       $f18, 0x90($s2)
/* C251C 8010C15C E7B20158 */  swc1       $f18, 0x158($sp)
/* C2520 8010C160 E7B200C0 */  swc1       $f18, 0xC0($sp)
/* C2524 8010C164 C6600070 */  lwc1       $f0, 0x70($s3)
/* C2528 8010C168 E7A000C8 */  swc1       $f0, 0xC8($sp)
/* C252C 8010C16C C6600074 */  lwc1       $f0, 0x74($s3)
/* C2530 8010C170 E7A000CC */  swc1       $f0, 0xCC($sp)
/* C2534 8010C174 C6600078 */  lwc1       $f0, 0x78($s3)
/* C2538 8010C178 E7A000D0 */  swc1       $f0, 0xD0($sp)
/* C253C 8010C17C C660007C */  lwc1       $f0, 0x7C($s3)
/* C2540 8010C180 E7A000D4 */  swc1       $f0, 0xD4($sp)
/* C2544 8010C184 C6600080 */  lwc1       $f0, 0x80($s3)
/* C2548 8010C188 C7BC0084 */  lwc1       $f28, 0x84($sp)
/* C254C 8010C18C E7A000D8 */  swc1       $f0, 0xD8($sp)
/* C2550 8010C190 C6600084 */  lwc1       $f0, 0x84($s3)
/* C2554 8010C194 E7A000DC */  swc1       $f0, 0xDC($sp)
/* C2558 8010C198 C6600088 */  lwc1       $f0, 0x88($s3)
/* C255C 8010C19C E7A000E0 */  swc1       $f0, 0xE0($sp)
/* C2560 8010C1A0 C660008C */  lwc1       $f0, 0x8C($s3)
/* C2564 8010C1A4 E7A000E4 */  swc1       $f0, 0xE4($sp)
/* C2568 8010C1A8 C6600090 */  lwc1       $f0, 0x90($s3)
/* C256C 8010C1AC E7A000E8 */  swc1       $f0, 0xE8($sp)
/* C2570 8010C1B0 C6040008 */  lwc1       $f4, 0x8($s0)
/* C2574 8010C1B4 4604E102 */  mul.s      $f4, $f28, $f4
/* C2578 8010C1B8 C7B80088 */  lwc1       $f24, 0x88($sp)
/* C257C 8010C1BC C6000004 */  lwc1       $f0, 0x4($s0)
/* C2580 8010C1C0 4600C002 */  mul.s      $f0, $f24, $f0
/* C2584 8010C1C4 46002101 */  sub.s      $f4, $f4, $f0
/* C2588 8010C1C8 E7A400F0 */  swc1       $f4, 0xF0($sp)
/* C258C 8010C1CC C6820010 */  lwc1       $f2, 0x10($s4)
/* C2590 8010C1D0 4602C082 */  mul.s      $f2, $f24, $f2
/* C2594 8010C1D4 C7B20080 */  lwc1       $f18, 0x80($sp)
/* C2598 8010C1D8 C6000008 */  lwc1       $f0, 0x8($s0)
/* C259C 8010C1DC 46009002 */  mul.s      $f0, $f18, $f0
/* C25A0 8010C1E0 46001081 */  sub.s      $f2, $f2, $f0
/* C25A4 8010C1E4 E7A200F4 */  swc1       $f2, 0xF4($sp)
/* C25A8 8010C1E8 C6060004 */  lwc1       $f6, 0x4($s0)
/* C25AC 8010C1EC 46069182 */  mul.s      $f6, $f18, $f6
/* C25B0 8010C1F0 C6800010 */  lwc1       $f0, 0x10($s4)
/* C25B4 8010C1F4 4600E002 */  mul.s      $f0, $f28, $f0
/* C25B8 8010C1F8 C7BC0138 */  lwc1       $f28, 0x138($sp)
/* C25BC 8010C1FC 461C2682 */  mul.s      $f26, $f4, $f28
/* C25C0 8010C200 C7B2013C */  lwc1       $f18, 0x13C($sp)
/* C25C4 8010C204 46122582 */  mul.s      $f22, $f4, $f18
/* C25C8 8010C208 C7BC0140 */  lwc1       $f28, 0x140($sp)
/* C25CC 8010C20C 461C2102 */  mul.s      $f4, $f4, $f28
/* C25D0 8010C210 C7B20144 */  lwc1       $f18, 0x144($sp)
/* C25D4 8010C214 46121302 */  mul.s      $f12, $f2, $f18
/* C25D8 8010C218 C7BC0148 */  lwc1       $f28, 0x148($sp)
/* C25DC 8010C21C 461C1382 */  mul.s      $f14, $f2, $f28
/* C25E0 8010C220 C7B2014C */  lwc1       $f18, 0x14C($sp)
/* C25E4 8010C224 46121082 */  mul.s      $f2, $f2, $f18
/* C25E8 8010C228 46003181 */  sub.s      $f6, $f6, $f0
/* C25EC 8010C22C C7BC0150 */  lwc1       $f28, 0x150($sp)
/* C25F0 8010C230 461C3002 */  mul.s      $f0, $f6, $f28
/* C25F4 8010C234 C7B20154 */  lwc1       $f18, 0x154($sp)
/* C25F8 8010C238 46123202 */  mul.s      $f8, $f6, $f18
/* C25FC 8010C23C C7BC0158 */  lwc1       $f28, 0x158($sp)
/* C2600 8010C240 461C3282 */  mul.s      $f10, $f6, $f28
/* C2604 8010C244 460EB380 */  add.s      $f14, $f22, $f14
/* C2608 8010C248 46087200 */  add.s      $f8, $f14, $f8
/* C260C 8010C24C 46184402 */  mul.s      $f16, $f8, $f24
/* C2610 8010C250 46022080 */  add.s      $f2, $f4, $f2
/* C2614 8010C254 460A1280 */  add.s      $f10, $f2, $f10
/* C2618 8010C258 C7B20084 */  lwc1       $f18, 0x84($sp)
/* C261C 8010C25C 46125482 */  mul.s      $f18, $f10, $f18
/* C2620 8010C260 C7BC0080 */  lwc1       $f28, 0x80($sp)
/* C2624 8010C264 461C5702 */  mul.s      $f28, $f10, $f28
/* C2628 8010C268 460CD300 */  add.s      $f12, $f26, $f12
/* C262C 8010C26C 46006000 */  add.s      $f0, $f12, $f0
/* C2630 8010C270 46180602 */  mul.s      $f24, $f0, $f24
/* C2634 8010C274 E7B201A0 */  swc1       $f18, 0x1A0($sp)
/* C2638 8010C278 E7BC015C */  swc1       $f28, 0x15C($sp)
/* C263C 8010C27C C7B20084 */  lwc1       $f18, 0x84($sp)
/* C2640 8010C280 C7BC0080 */  lwc1       $f28, 0x80($sp)
/* C2644 8010C284 46120482 */  mul.s      $f18, $f0, $f18
/* C2648 8010C288 E7BA0110 */  swc1       $f26, 0x110($sp)
/* C264C 8010C28C E7B60114 */  swc1       $f22, 0x114($sp)
/* C2650 8010C290 E7A40118 */  swc1       $f4, 0x118($sp)
/* C2654 8010C294 E7AC0110 */  swc1       $f12, 0x110($sp)
/* C2658 8010C298 E7B20164 */  swc1       $f18, 0x164($sp)
/* C265C 8010C29C C7B201A0 */  lwc1       $f18, 0x1A0($sp)
/* C2660 8010C2A0 461C4702 */  mul.s      $f28, $f8, $f28
/* C2664 8010C2A4 E7AE0114 */  swc1       $f14, 0x114($sp)
/* C2668 8010C2A8 E7A20118 */  swc1       $f2, 0x118($sp)
/* C266C 8010C2AC E7A600F8 */  swc1       $f6, 0xF8($sp)
/* C2670 8010C2B0 E7A00110 */  swc1       $f0, 0x110($sp)
/* C2674 8010C2B4 E7BC0168 */  swc1       $f28, 0x168($sp)
/* C2678 8010C2B8 C7BC015C */  lwc1       $f28, 0x15C($sp)
/* C267C 8010C2BC 46128401 */  sub.s      $f16, $f16, $f18
/* C2680 8010C2C0 E7A80114 */  swc1       $f8, 0x114($sp)
/* C2684 8010C2C4 E7AA0118 */  swc1       $f10, 0x118($sp)
/* C2688 8010C2C8 4618E601 */  sub.s      $f24, $f28, $f24
/* C268C 8010C2CC C7B20164 */  lwc1       $f18, 0x164($sp)
/* C2690 8010C2D0 C7BC0168 */  lwc1       $f28, 0x168($sp)
/* C2694 8010C2D4 C7A80094 */  lwc1       $f8, 0x94($sp)
/* C2698 8010C2D8 461C9481 */  sub.s      $f18, $f18, $f28
/* C269C 8010C2DC E7B80160 */  swc1       $f24, 0x160($sp)
/* C26A0 8010C2E0 E7B000F0 */  swc1       $f16, 0xF0($sp)
/* C26A4 8010C2E4 E7B2016C */  swc1       $f18, 0x16C($sp)
/* C26A8 8010C2E8 C7BC016C */  lwc1       $f28, 0x16C($sp)
/* C26AC 8010C2EC 4600C486 */  mov.s      $f18, $f24
/* C26B0 8010C2F0 E7B200F4 */  swc1       $f18, 0xF4($sp)
/* C26B4 8010C2F4 E7BC00F8 */  swc1       $f28, 0xF8($sp)
/* C26B8 8010C2F8 C6040008 */  lwc1       $f4, 0x8($s0)
/* C26BC 8010C2FC 46044102 */  mul.s      $f4, $f8, $f4
/* C26C0 8010C300 C7AE0098 */  lwc1       $f14, 0x98($sp)
/* C26C4 8010C304 C6000004 */  lwc1       $f0, 0x4($s0)
/* C26C8 8010C308 46007002 */  mul.s      $f0, $f14, $f0
/* C26CC 8010C30C 46002101 */  sub.s      $f4, $f4, $f0
/* C26D0 8010C310 E7A40100 */  swc1       $f4, 0x100($sp)
/* C26D4 8010C314 C6820010 */  lwc1       $f2, 0x10($s4)
/* C26D8 8010C318 46027082 */  mul.s      $f2, $f14, $f2
/* C26DC 8010C31C C7AC0090 */  lwc1       $f12, 0x90($sp)
/* C26E0 8010C320 C6000008 */  lwc1       $f0, 0x8($s0)
/* C26E4 8010C324 46006002 */  mul.s      $f0, $f12, $f0
/* C26E8 8010C328 C7B20138 */  lwc1       $f18, 0x138($sp)
/* C26EC 8010C32C 46122502 */  mul.s      $f20, $f4, $f18
/* C26F0 8010C330 C7BC013C */  lwc1       $f28, 0x13C($sp)
/* C26F4 8010C334 461C2702 */  mul.s      $f28, $f4, $f28
/* C26F8 8010C338 C7B20140 */  lwc1       $f18, 0x140($sp)
/* C26FC 8010C33C 46122102 */  mul.s      $f4, $f4, $f18
/* C2700 8010C340 46001081 */  sub.s      $f2, $f2, $f0
/* C2704 8010C344 C7B20148 */  lwc1       $f18, 0x148($sp)
/* C2708 8010C348 46121282 */  mul.s      $f10, $f2, $f18
/* C270C 8010C34C E7A20104 */  swc1       $f2, 0x104($sp)
/* C2710 8010C350 C6060004 */  lwc1       $f6, 0x4($s0)
/* C2714 8010C354 46066182 */  mul.s      $f6, $f12, $f6
/* C2718 8010C358 C6800010 */  lwc1       $f0, 0x10($s4)
/* C271C 8010C35C 46004002 */  mul.s      $f0, $f8, $f0
/* C2720 8010C360 E7BC0114 */  swc1       $f28, 0x114($sp)
/* C2724 8010C364 C7BC0144 */  lwc1       $f28, 0x144($sp)
/* C2728 8010C368 461C1602 */  mul.s      $f24, $f2, $f28
/* C272C 8010C36C C7BC014C */  lwc1       $f28, 0x14C($sp)
/* C2730 8010C370 461C1082 */  mul.s      $f2, $f2, $f28
/* C2734 8010C374 46003181 */  sub.s      $f6, $f6, $f0
/* C2738 8010C378 C7B20150 */  lwc1       $f18, 0x150($sp)
/* C273C 8010C37C 46123482 */  mul.s      $f18, $f6, $f18
/* C2740 8010C380 C7BC0154 */  lwc1       $f28, 0x154($sp)
/* C2744 8010C384 461C3702 */  mul.s      $f28, $f6, $f28
/* C2748 8010C388 E7B20170 */  swc1       $f18, 0x170($sp)
/* C274C 8010C38C C7B20158 */  lwc1       $f18, 0x158($sp)
/* C2750 8010C390 46123482 */  mul.s      $f18, $f6, $f18
/* C2754 8010C394 E7BC0178 */  swc1       $f28, 0x178($sp)
/* C2758 8010C398 C7BC0114 */  lwc1       $f28, 0x114($sp)
/* C275C 8010C39C 460AE780 */  add.s      $f30, $f28, $f10
/* C2760 8010C3A0 E7B20180 */  swc1       $f18, 0x180($sp)
/* C2764 8010C3A4 C7B20178 */  lwc1       $f18, 0x178($sp)
/* C2768 8010C3A8 4612F480 */  add.s      $f18, $f30, $f18
/* C276C 8010C3AC 460E9282 */  mul.s      $f10, $f18, $f14
/* C2770 8010C3B0 46022080 */  add.s      $f2, $f4, $f2
/* C2774 8010C3B4 C7BC0180 */  lwc1       $f28, 0x180($sp)
/* C2778 8010C3B8 461C1700 */  add.s      $f28, $f2, $f28
/* C277C 8010C3BC E7B2017C */  swc1       $f18, 0x17C($sp)
/* C2780 8010C3C0 4608E482 */  mul.s      $f18, $f28, $f8
/* C2784 8010C3C4 00000000 */  nop
/* C2788 8010C3C8 460CE002 */  mul.s      $f0, $f28, $f12
/* C278C 8010C3CC 4618A600 */  add.s      $f24, $f20, $f24
/* C2790 8010C3D0 E7BC0184 */  swc1       $f28, 0x184($sp)
/* C2794 8010C3D4 C7BC0170 */  lwc1       $f28, 0x170($sp)
/* C2798 8010C3D8 461CC700 */  add.s      $f28, $f24, $f28
/* C279C 8010C3DC 460EE382 */  mul.s      $f14, $f28, $f14
/* C27A0 8010C3E0 00000000 */  nop
/* C27A4 8010C3E4 4608E202 */  mul.s      $f8, $f28, $f8
/* C27A8 8010C3E8 E7B20188 */  swc1       $f18, 0x188($sp)
/* C27AC 8010C3EC C7B2017C */  lwc1       $f18, 0x17C($sp)
/* C27B0 8010C3F0 460C9302 */  mul.s      $f12, $f18, $f12
/* C27B4 8010C3F4 E7BC0174 */  swc1       $f28, 0x174($sp)
/* C27B8 8010C3F8 C7BC0188 */  lwc1       $f28, 0x188($sp)
/* C27BC 8010C3FC 461C5281 */  sub.s      $f10, $f10, $f28
/* C27C0 8010C400 C7B20174 */  lwc1       $f18, 0x174($sp)
/* C27C4 8010C404 C7BC017C */  lwc1       $f28, 0x17C($sp)
/* C27C8 8010C408 E7B40110 */  swc1       $f20, 0x110($sp)
/* C27CC 8010C40C E7A40118 */  swc1       $f4, 0x118($sp)
/* C27D0 8010C410 E7B80110 */  swc1       $f24, 0x110($sp)
/* C27D4 8010C414 E7BE0114 */  swc1       $f30, 0x114($sp)
/* C27D8 8010C418 E7A20118 */  swc1       $f2, 0x118($sp)
/* C27DC 8010C41C E7B20110 */  swc1       $f18, 0x110($sp)
/* C27E0 8010C420 C7B20184 */  lwc1       $f18, 0x184($sp)
/* C27E4 8010C424 460E0001 */  sub.s      $f0, $f0, $f14
/* C27E8 8010C428 E7BC0114 */  swc1       $f28, 0x114($sp)
/* C27EC 8010C42C C7BC0160 */  lwc1       $f28, 0x160($sp)
/* C27F0 8010C430 460A8400 */  add.s      $f16, $f16, $f10
/* C27F4 8010C434 E7B20118 */  swc1       $f18, 0x118($sp)
/* C27F8 8010C438 C7B2016C */  lwc1       $f18, 0x16C($sp)
/* C27FC 8010C43C 460C4201 */  sub.s      $f8, $f8, $f12
/* C2800 8010C440 E7A60108 */  swc1       $f6, 0x108($sp)
/* C2804 8010C444 E7AA0100 */  swc1       $f10, 0x100($sp)
/* C2808 8010C448 4600E700 */  add.s      $f28, $f28, $f0
/* C280C 8010C44C E7A00104 */  swc1       $f0, 0x104($sp)
/* C2810 8010C450 E7B000F0 */  swc1       $f16, 0xF0($sp)
/* C2814 8010C454 E7A80108 */  swc1       $f8, 0x108($sp)
/* C2818 8010C458 46089200 */  add.s      $f8, $f18, $f8
/* C281C 8010C45C E7BC018C */  swc1       $f28, 0x18C($sp)
/* C2820 8010C460 E7BC00F4 */  swc1       $f28, 0xF4($sp)
/* C2824 8010C464 46004706 */  mov.s      $f28, $f8
/* C2828 8010C468 E7A80190 */  swc1       $f8, 0x190($sp)
/* C282C 8010C46C E7BC00F8 */  swc1       $f28, 0xF8($sp)
/* C2830 8010C470 C6800010 */  lwc1       $f0, 0x10($s4)
/* C2834 8010C474 46008402 */  mul.s      $f16, $f16, $f0
/* C2838 8010C478 C7B2018C */  lwc1       $f18, 0x18C($sp)
/* C283C 8010C47C C6000004 */  lwc1       $f0, 0x4($s0)
/* C2840 8010C480 46009002 */  mul.s      $f0, $f18, $f0
/* C2844 8010C484 E7A00194 */  swc1       $f0, 0x194($sp)
/* C2848 8010C488 C6000008 */  lwc1       $f0, 0x8($s0)
/* C284C 8010C48C 4600E002 */  mul.s      $f0, $f28, $f0
/* C2850 8010C490 C7BC0194 */  lwc1       $f28, 0x194($sp)
/* C2854 8010C494 461C8400 */  add.s      $f16, $f16, $f28
/* C2858 8010C498 E7A00198 */  swc1       $f0, 0x198($sp)
/* C285C 8010C49C 46008400 */  add.s      $f16, $f16, $f0
/* C2860 8010C4A0 C7B20134 */  lwc1       $f18, 0x134($sp)
/* C2864 8010C4A4 46109480 */  add.s      $f18, $f18, $f16
/* C2868 8010C4A8 27B00050 */  addiu      $s0, $sp, 0x50
/* C286C 8010C4AC E7B20134 */  swc1       $f18, 0x134($sp)
/* C2870 8010C4B0 8EC809F8 */  lw         $t0, 0x9F8($s6)
/* C2874 8010C4B4 8EC909FC */  lw         $t1, 0x9FC($s6)
/* C2878 8010C4B8 8ECA0A00 */  lw         $t2, 0xA00($s6)
/* C287C 8010C4BC AFA80030 */  sw         $t0, 0x30($sp)
/* C2880 8010C4C0 AFA90034 */  sw         $t1, 0x34($sp)
/* C2884 8010C4C4 AFAA0038 */  sw         $t2, 0x38($sp)
/* C2888 8010C4C8 C7BC0130 */  lwc1       $f28, 0x130($sp)
/* C288C 8010C4CC 02002821 */  addu       $a1, $s0, $zero
/* C2890 8010C4D0 4612E703 */  div.s      $f28, $f28, $f18
/* C2894 8010C4D4 E7BC0130 */  swc1       $f28, 0x130($sp)
/* C2898 8010C4D8 8E2200CC */  lw         $v0, 0xCC($s1)
/* C289C 8010C4DC 4406E000 */  mfc1       $a2, $f28
/* C28A0 8010C4E0 84440040 */  lh         $a0, 0x40($v0)
/* C28A4 8010C4E4 8C420044 */  lw         $v0, 0x44($v0)
/* C28A8 8010C4E8 0040F809 */  jalr       $v0
/* C28AC 8010C4EC 02242021 */   addu      $a0, $s1, $a0
/* C28B0 8010C4F0 8EC40014 */  lw         $a0, 0x14($s6)
/* C28B4 8010C4F4 10800003 */  beqz       $a0, .Lrace_8010C504
/* C28B8 8010C4F8 00000000 */   nop
/* C28BC 8010C4FC 0C03D3D9 */  jal        func_race_800F4F64
/* C28C0 8010C500 00000000 */   nop
.Lrace_8010C504:
/* C28C4 8010C504 12A00127 */  beqz       $s5, .Lrace_8010C9A4
/* C28C8 8010C508 02002821 */   addu      $a1, $s0, $zero
/* C28CC 8010C50C 26B003FC */  addiu      $s0, $s5, 0x3FC
/* C28D0 8010C510 C7B20130 */  lwc1       $f18, 0x130($sp)
/* C28D4 8010C514 8E0200CC */  lw         $v0, 0xCC($s0)
/* C28D8 8010C518 46009487 */  neg.s      $f18, $f18
/* C28DC 8010C51C 44069000 */  mfc1       $a2, $f18
/* C28E0 8010C520 84440040 */  lh         $a0, 0x40($v0)
/* C28E4 8010C524 8C420044 */  lw         $v0, 0x44($v0)
/* C28E8 8010C528 0040F809 */  jalr       $v0
/* C28EC 8010C52C 02042021 */   addu      $a0, $s0, $a0
/* C28F0 8010C530 8EA40014 */  lw         $a0, 0x14($s5)
/* C28F4 8010C534 10800003 */  beqz       $a0, .Lrace_8010C544
/* C28F8 8010C538 00000000 */   nop
/* C28FC 8010C53C 0C03D3D9 */  jal        func_race_800F4F64
/* C2900 8010C540 00000000 */   nop
.Lrace_8010C544:
/* C2904 8010C544 8EC20D08 */  lw         $v0, 0xD08($s6)
/* C2908 8010C548 38420002 */  xori       $v0, $v0, 0x2
/* C290C 8010C54C 14400005 */  bnez       $v0, .Lrace_8010C564
/* C2910 8010C550 00001821 */   addu      $v1, $zero, $zero
/* C2914 8010C554 8EA20D08 */  lw         $v0, 0xD08($s5)
/* C2918 8010C558 38420002 */  xori       $v0, $v0, 0x2
/* C291C 8010C55C 10400002 */  beqz       $v0, .Lrace_8010C568
/* C2920 8010C560 00000000 */   nop
.Lrace_8010C564:
/* C2924 8010C564 24030001 */  addiu      $v1, $zero, 0x1
.Lrace_8010C568:
/* C2928 8010C568 10600048 */  beqz       $v1, .Lrace_8010C68C
/* C292C 8010C56C 00000000 */   nop
/* C2930 8010C570 C6220608 */  lwc1       $f2, 0x608($s1)
/* C2934 8010C574 C6000608 */  lwc1       $f0, 0x608($s0)
/* C2938 8010C578 4602003C */  c.lt.s     $f0, $f2
/* C293C 8010C57C 00000000 */  nop
/* C2940 8010C580 45010002 */  bc1t       .Lrace_8010C58C
/* C2944 8010C584 24020001 */   addiu     $v0, $zero, 0x1
/* C2948 8010C588 00001021 */  addu       $v0, $zero, $zero
.Lrace_8010C58C:
/* C294C 8010C58C 1040003B */  beqz       $v0, .Lrace_8010C67C
/* C2950 8010C590 02C02021 */   addu      $a0, $s6, $zero
/* C2954 8010C594 8EC20D44 */  lw         $v0, 0xD44($s6)
/* C2958 8010C598 14400003 */  bnez       $v0, .Lrace_8010C5A8
/* C295C 8010C59C 00001821 */   addu      $v1, $zero, $zero
/* C2960 8010C5A0 8EA20D44 */  lw         $v0, 0xD44($s5)
/* C2964 8010C5A4 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_8010C5A8:
/* C2968 8010C5A8 1060002D */  beqz       $v1, .Lrace_8010C660
/* C296C 8010C5AC 3C05800D */   lui       $a1, %hi(D_race_800CDBD8)
/* C2970 8010C5B0 27A40040 */  addiu      $a0, $sp, 0x40
/* C2974 8010C5B4 8E280004 */  lw         $t0, 0x4($s1)
/* C2978 8010C5B8 8E290008 */  lw         $t1, 0x8($s1)
/* C297C 8010C5BC 8E2A000C */  lw         $t2, 0xC($s1)
/* C2980 8010C5C0 AFA80040 */  sw         $t0, 0x40($sp)
/* C2984 8010C5C4 AFA90044 */  sw         $t1, 0x44($sp)
/* C2988 8010C5C8 AFAA0048 */  sw         $t2, 0x48($sp)
/* C298C 8010C5CC 0C000F26 */  jal        func_80003C98
/* C2990 8010C5D0 00802821 */   addu      $a1, $a0, $zero
/* C2994 8010C5D4 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* C2998 8010C5D8 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C299C 8010C5DC 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* C29A0 8010C5E0 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C29A4 8010C5E4 24840001 */  addiu      $a0, $a0, 0x1
/* C29A8 8010C5E8 308403FF */  andi       $a0, $a0, 0x3FF
/* C29AC 8010C5EC 00041040 */  sll        $v0, $a0, 1
/* C29B0 8010C5F0 00431021 */  addu       $v0, $v0, $v1
/* C29B4 8010C5F4 94420000 */  lhu        $v0, 0x0($v0)
/* C29B8 8010C5F8 30420001 */  andi       $v0, $v0, 0x1
/* C29BC 8010C5FC 10400008 */  beqz       $v0, .Lrace_8010C620
/* C29C0 8010C600 ACA4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a1)
/* C29C4 8010C604 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* C29C8 8010C608 3C01800D */  lui        $at, %hi(D_race_800CDBE4)
/* C29CC 8010C60C C422DBE4 */  lwc1       $f2, %lo(D_race_800CDBE4)($at)
/* C29D0 8010C610 3C01800D */  lui        $at, %hi(D_race_800CDBE8)
/* C29D4 8010C614 C420DBE8 */  lwc1       $f0, %lo(D_race_800CDBE8)($at)
/* C29D8 8010C618 0804318E */  j          .Lrace_8010C638
/* C29DC 8010C61C 24050037 */   addiu     $a1, $zero, 0x37
.Lrace_8010C620:
/* C29E0 8010C620 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* C29E4 8010C624 3C01800D */  lui        $at, %hi(D_race_800CDBEC)
/* C29E8 8010C628 C422DBEC */  lwc1       $f2, %lo(D_race_800CDBEC)($at)
/* C29EC 8010C62C 3C01800D */  lui        $at, %hi(D_race_800CDBF0)
/* C29F0 8010C630 C420DBF0 */  lwc1       $f0, %lo(D_race_800CDBF0)($at)
/* C29F4 8010C634 24050018 */  addiu      $a1, $zero, 0x18
.Lrace_8010C638:
/* C29F8 8010C638 E7A20010 */  swc1       $f2, 0x10($sp)
/* C29FC 8010C63C E7A00014 */  swc1       $f0, 0x14($sp)
/* C2A00 8010C640 E7A00018 */  swc1       $f0, 0x18($sp)
/* C2A04 8010C644 8EE40004 */  lw         $a0, 0x4($s7)
/* C2A08 8010C648 0C046530 */  jal        func_race_801194C0
/* C2A0C 8010C64C 26860004 */   addiu     $a2, $s4, 0x4
/* C2A10 8010C650 240200FA */  addiu      $v0, $zero, 0xFA
/* C2A14 8010C654 AEC20D44 */  sw         $v0, 0xD44($s6)
/* C2A18 8010C658 AEA20D44 */  sw         $v0, 0xD44($s5)
/* C2A1C 8010C65C 3C05800D */  lui        $a1, %hi(D_race_800CDBD8)
.Lrace_8010C660:
/* C2A20 8010C660 24A5DBD8 */  addiu      $a1, $a1, %lo(D_race_800CDBD8)
/* C2A24 8010C664 26860004 */  addiu      $a2, $s4, 0x4
/* C2A28 8010C668 8EE402AC */  lw         $a0, 0x2AC($s7)
/* C2A2C 8010C66C 00003821 */  addu       $a3, $zero, $zero
/* C2A30 8010C670 0C0107DD */  jal        func_80041F74
/* C2A34 8010C674 AFA00010 */   sw        $zero, 0x10($sp)
/* C2A38 8010C678 02A02021 */  addu       $a0, $s5, $zero
.Lrace_8010C67C:
/* C2A3C 8010C67C 0C04339E */  jal        func_race_8010CE78
/* C2A40 8010C680 00002821 */   addu      $a1, $zero, $zero
/* C2A44 8010C684 080431B1 */  j          .Lrace_8010C6C4
/* C2A48 8010C688 00000000 */   nop
.Lrace_8010C68C:
/* C2A4C 8010C68C C6C004D8 */  lwc1       $f0, 0x4D8($s6)
/* C2A50 8010C690 3C01800D */  lui        $at, %hi(D_race_800CDBF4)
/* C2A54 8010C694 C422DBF4 */  lwc1       $f2, %lo(D_race_800CDBF4)($at)
/* C2A58 8010C698 46020032 */  c.eq.s     $f0, $f2
/* C2A5C 8010C69C 00000000 */  nop
/* C2A60 8010C6A0 45000002 */  bc1f       .Lrace_8010C6AC
/* C2A64 8010C6A4 240202EE */   addiu     $v0, $zero, 0x2EE
/* C2A68 8010C6A8 AEC20D40 */  sw         $v0, 0xD40($s6)
.Lrace_8010C6AC:
/* C2A6C 8010C6AC C6A004D8 */  lwc1       $f0, 0x4D8($s5)
/* C2A70 8010C6B0 46020032 */  c.eq.s     $f0, $f2
/* C2A74 8010C6B4 00000000 */  nop
/* C2A78 8010C6B8 45000002 */  bc1f       .Lrace_8010C6C4
/* C2A7C 8010C6BC 240202EE */   addiu     $v0, $zero, 0x2EE
/* C2A80 8010C6C0 AEA20D40 */  sw         $v0, 0xD40($s5)
.Lrace_8010C6C4:
/* C2A84 8010C6C4 8EC20D04 */  lw         $v0, 0xD04($s6)
/* C2A88 8010C6C8 30420001 */  andi       $v0, $v0, 0x1
/* C2A8C 8010C6CC 10400004 */  beqz       $v0, .Lrace_8010C6E0
/* C2A90 8010C6D0 00001821 */   addu      $v1, $zero, $zero
/* C2A94 8010C6D4 8EA20D04 */  lw         $v0, 0xD04($s5)
/* C2A98 8010C6D8 30420001 */  andi       $v0, $v0, 0x1
/* C2A9C 8010C6DC 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_8010C6E0:
/* C2AA0 8010C6E0 1060003D */  beqz       $v1, .Lrace_8010C7D8
/* C2AA4 8010C6E4 24020001 */   addiu     $v0, $zero, 0x1
/* C2AA8 8010C6E8 8EC30D64 */  lw         $v1, 0xD64($s6)
/* C2AAC 8010C6EC 14620029 */  bne        $v1, $v0, .Lrace_8010C794
/* C2AB0 8010C6F0 24020002 */   addiu     $v0, $zero, 0x2
/* C2AB4 8010C6F4 8EA2005C */  lw         $v0, 0x5C($s5)
/* C2AB8 8010C6F8 C7AC0090 */  lwc1       $f12, 0x90($sp)
/* C2ABC 8010C6FC C4400028 */  lwc1       $f0, 0x28($v0)
/* C2AC0 8010C700 C7AA0094 */  lwc1       $f10, 0x94($sp)
/* C2AC4 8010C704 460C0082 */  mul.s      $f2, $f0, $f12
/* C2AC8 8010C708 E7A00120 */  swc1       $f0, 0x120($sp)
/* C2ACC 8010C70C C440002C */  lwc1       $f0, 0x2C($v0)
/* C2AD0 8010C710 C7A80098 */  lwc1       $f8, 0x98($sp)
/* C2AD4 8010C714 460A0102 */  mul.s      $f4, $f0, $f10
/* C2AD8 8010C718 E7A00124 */  swc1       $f0, 0x124($sp)
/* C2ADC 8010C71C C4460030 */  lwc1       $f6, 0x30($v0)
/* C2AE0 8010C720 46083002 */  mul.s      $f0, $f6, $f8
/* C2AE4 8010C724 46041080 */  add.s      $f2, $f2, $f4
/* C2AE8 8010C728 3C01800D */  lui        $at, %hi(D_race_800CDBF8)
/* C2AEC 8010C72C C424DBF8 */  lwc1       $f4, %lo(D_race_800CDBF8)($at)
/* C2AF0 8010C730 46001080 */  add.s      $f2, $f2, $f0
/* C2AF4 8010C734 4604103C */  c.lt.s     $f2, $f4
/* C2AF8 8010C738 00000000 */  nop
/* C2AFC 8010C73C 45000026 */  bc1f       .Lrace_8010C7D8
/* C2B00 8010C740 E7A60128 */   swc1      $f6, 0x128($sp)
/* C2B04 8010C744 3C01800D */  lui        $at, %hi(D_race_800CDBFC)
/* C2B08 8010C748 C420DBFC */  lwc1       $f0, %lo(D_race_800CDBFC)($at)
/* C2B0C 8010C74C 4602003C */  c.lt.s     $f0, $f2
/* C2B10 8010C750 00000000 */  nop
/* C2B14 8010C754 45000020 */  bc1f       .Lrace_8010C7D8
/* C2B18 8010C758 27A50090 */   addiu     $a1, $sp, 0x90
/* C2B1C 8010C75C 3C01800D */  lui        $at, %hi(D_race_800CDC00)
/* C2B20 8010C760 C420DC00 */  lwc1       $f0, %lo(D_race_800CDC00)($at)
/* C2B24 8010C764 46006082 */  mul.s      $f2, $f12, $f0
/* C2B28 8010C768 00000000 */  nop
/* C2B2C 8010C76C 46005102 */  mul.s      $f4, $f10, $f0
/* C2B30 8010C770 00000000 */  nop
/* C2B34 8010C774 46004002 */  mul.s      $f0, $f8, $f0
/* C2B38 8010C778 02A02021 */  addu       $a0, $s5, $zero
/* C2B3C 8010C77C E7A20090 */  swc1       $f2, 0x90($sp)
/* C2B40 8010C780 E7A40094 */  swc1       $f4, 0x94($sp)
/* C2B44 8010C784 0C04327A */  jal        func_race_8010C9E8
/* C2B48 8010C788 E7A00098 */   swc1      $f0, 0x98($sp)
/* C2B4C 8010C78C 080431F6 */  j          .Lrace_8010C7D8
/* C2B50 8010C790 00000000 */   nop
.Lrace_8010C794:
/* C2B54 8010C794 14620005 */  bne        $v1, $v0, .Lrace_8010C7AC
/* C2B58 8010C798 24020003 */   addiu     $v0, $zero, 0x3
/* C2B5C 8010C79C 00003821 */  addu       $a3, $zero, $zero
/* C2B60 8010C7A0 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* C2B64 8010C7A4 080431EF */  j          .Lrace_8010C7BC
/* C2B68 8010C7A8 26A303FC */   addiu     $v1, $s5, 0x3FC
.Lrace_8010C7AC:
/* C2B6C 8010C7AC 1462000A */  bne        $v1, $v0, .Lrace_8010C7D8
/* C2B70 8010C7B0 00003821 */   addu      $a3, $zero, $zero
/* C2B74 8010C7B4 26A303FC */  addiu      $v1, $s5, 0x3FC
/* C2B78 8010C7B8 3C054000 */  lui        $a1, (0x40000000 >> 16)
.Lrace_8010C7BC:
/* C2B7C 8010C7BC 8C6200CC */  lw         $v0, 0xCC($v1)
/* C2B80 8010C7C0 3C063C13 */  lui        $a2, (0x3C1374BC >> 16)
/* C2B84 8010C7C4 34C674BC */  ori        $a2, $a2, (0x3C1374BC & 0xFFFF)
/* C2B88 8010C7C8 84440050 */  lh         $a0, 0x50($v0)
/* C2B8C 8010C7CC 8C420054 */  lw         $v0, 0x54($v0)
/* C2B90 8010C7D0 0040F809 */  jalr       $v0
/* C2B94 8010C7D4 00642021 */   addu      $a0, $v1, $a0
.Lrace_8010C7D8:
/* C2B98 8010C7D8 8EA20D04 */  lw         $v0, 0xD04($s5)
/* C2B9C 8010C7DC 30420001 */  andi       $v0, $v0, 0x1
/* C2BA0 8010C7E0 10400004 */  beqz       $v0, .Lrace_8010C7F4
/* C2BA4 8010C7E4 00001821 */   addu      $v1, $zero, $zero
/* C2BA8 8010C7E8 8EC20D04 */  lw         $v0, 0xD04($s6)
/* C2BAC 8010C7EC 30420001 */  andi       $v0, $v0, 0x1
/* C2BB0 8010C7F0 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_8010C7F4:
/* C2BB4 8010C7F4 1060003D */  beqz       $v1, .Lrace_8010C8EC
/* C2BB8 8010C7F8 24020001 */   addiu     $v0, $zero, 0x1
/* C2BBC 8010C7FC 8EA30D64 */  lw         $v1, 0xD64($s5)
/* C2BC0 8010C800 14620029 */  bne        $v1, $v0, .Lrace_8010C8A8
/* C2BC4 8010C804 24020002 */   addiu     $v0, $zero, 0x2
/* C2BC8 8010C808 8EC2005C */  lw         $v0, 0x5C($s6)
/* C2BCC 8010C80C C7AC0080 */  lwc1       $f12, 0x80($sp)
/* C2BD0 8010C810 C4400028 */  lwc1       $f0, 0x28($v0)
/* C2BD4 8010C814 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* C2BD8 8010C818 460C0082 */  mul.s      $f2, $f0, $f12
/* C2BDC 8010C81C E7A00120 */  swc1       $f0, 0x120($sp)
/* C2BE0 8010C820 C440002C */  lwc1       $f0, 0x2C($v0)
/* C2BE4 8010C824 C7A80088 */  lwc1       $f8, 0x88($sp)
/* C2BE8 8010C828 460A0102 */  mul.s      $f4, $f0, $f10
/* C2BEC 8010C82C E7A00124 */  swc1       $f0, 0x124($sp)
/* C2BF0 8010C830 C4460030 */  lwc1       $f6, 0x30($v0)
/* C2BF4 8010C834 46083002 */  mul.s      $f0, $f6, $f8
/* C2BF8 8010C838 46041080 */  add.s      $f2, $f2, $f4
/* C2BFC 8010C83C 3C01800D */  lui        $at, %hi(D_race_800CDC04)
/* C2C00 8010C840 C424DC04 */  lwc1       $f4, %lo(D_race_800CDC04)($at)
/* C2C04 8010C844 46001080 */  add.s      $f2, $f2, $f0
/* C2C08 8010C848 4604103C */  c.lt.s     $f2, $f4
/* C2C0C 8010C84C 00000000 */  nop
/* C2C10 8010C850 45000026 */  bc1f       .Lrace_8010C8EC
/* C2C14 8010C854 E7A60128 */   swc1      $f6, 0x128($sp)
/* C2C18 8010C858 3C01800D */  lui        $at, %hi(D_race_800CDC08)
/* C2C1C 8010C85C C420DC08 */  lwc1       $f0, %lo(D_race_800CDC08)($at)
/* C2C20 8010C860 4602003C */  c.lt.s     $f0, $f2
/* C2C24 8010C864 00000000 */  nop
/* C2C28 8010C868 45000020 */  bc1f       .Lrace_8010C8EC
/* C2C2C 8010C86C 02C02021 */   addu      $a0, $s6, $zero
/* C2C30 8010C870 3C01800D */  lui        $at, %hi(D_race_800CDC0C)
/* C2C34 8010C874 C420DC0C */  lwc1       $f0, %lo(D_race_800CDC0C)($at)
/* C2C38 8010C878 46006082 */  mul.s      $f2, $f12, $f0
/* C2C3C 8010C87C 00000000 */  nop
/* C2C40 8010C880 46005102 */  mul.s      $f4, $f10, $f0
/* C2C44 8010C884 00000000 */  nop
/* C2C48 8010C888 46004002 */  mul.s      $f0, $f8, $f0
/* C2C4C 8010C88C 27A50080 */  addiu      $a1, $sp, 0x80
/* C2C50 8010C890 E7A20080 */  swc1       $f2, 0x80($sp)
/* C2C54 8010C894 E7A40084 */  swc1       $f4, 0x84($sp)
/* C2C58 8010C898 0C04327A */  jal        func_race_8010C9E8
/* C2C5C 8010C89C E7A00088 */   swc1      $f0, 0x88($sp)
/* C2C60 8010C8A0 0804323B */  j          .Lrace_8010C8EC
/* C2C64 8010C8A4 00000000 */   nop
.Lrace_8010C8A8:
/* C2C68 8010C8A8 14620005 */  bne        $v1, $v0, .Lrace_8010C8C0
/* C2C6C 8010C8AC 24020003 */   addiu     $v0, $zero, 0x3
/* C2C70 8010C8B0 00003821 */  addu       $a3, $zero, $zero
/* C2C74 8010C8B4 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* C2C78 8010C8B8 08043234 */  j          .Lrace_8010C8D0
/* C2C7C 8010C8BC 26C303FC */   addiu     $v1, $s6, 0x3FC
.Lrace_8010C8C0:
/* C2C80 8010C8C0 1462000A */  bne        $v1, $v0, .Lrace_8010C8EC
/* C2C84 8010C8C4 00003821 */   addu      $a3, $zero, $zero
/* C2C88 8010C8C8 26C303FC */  addiu      $v1, $s6, 0x3FC
/* C2C8C 8010C8CC 3C054000 */  lui        $a1, (0x40000000 >> 16)
.Lrace_8010C8D0:
/* C2C90 8010C8D0 8C6200CC */  lw         $v0, 0xCC($v1)
/* C2C94 8010C8D4 3C063C13 */  lui        $a2, (0x3C1374BC >> 16)
/* C2C98 8010C8D8 34C674BC */  ori        $a2, $a2, (0x3C1374BC & 0xFFFF)
/* C2C9C 8010C8DC 84440050 */  lh         $a0, 0x50($v0)
/* C2CA0 8010C8E0 8C420054 */  lw         $v0, 0x54($v0)
/* C2CA4 8010C8E4 0040F809 */  jalr       $v0
/* C2CA8 8010C8E8 00642021 */   addu      $a0, $v1, $a0
.Lrace_8010C8EC:
/* C2CAC 8010C8EC 8EC20D04 */  lw         $v0, 0xD04($s6)
/* C2CB0 8010C8F0 30420800 */  andi       $v0, $v0, 0x800
/* C2CB4 8010C8F4 10400009 */  beqz       $v0, .Lrace_8010C91C
/* C2CB8 8010C8F8 00002021 */   addu      $a0, $zero, $zero
/* C2CBC 8010C8FC 8EA30D04 */  lw         $v1, 0xD04($s5)
/* C2CC0 8010C900 30620800 */  andi       $v0, $v1, 0x800
/* C2CC4 8010C904 14400005 */  bnez       $v0, .Lrace_8010C91C
/* C2CC8 8010C908 00000000 */   nop
/* C2CCC 8010C90C 8EC20D78 */  lw         $v0, 0xD78($s6)
/* C2CD0 8010C910 10400002 */  beqz       $v0, .Lrace_8010C91C
/* C2CD4 8010C914 30620001 */   andi      $v0, $v1, 0x1
/* C2CD8 8010C918 2C440001 */  sltiu      $a0, $v0, 0x1
.Lrace_8010C91C:
/* C2CDC 8010C91C 10800006 */  beqz       $a0, .Lrace_8010C938
/* C2CE0 8010C920 02A02021 */   addu      $a0, $s5, $zero
/* C2CE4 8010C924 8EC60D74 */  lw         $a2, 0xD74($s6)
/* C2CE8 8010C928 0C0435E0 */  jal        func_race_8010D780
/* C2CEC 8010C92C 26C502B4 */   addiu     $a1, $s6, 0x2B4
/* C2CF0 8010C930 08043260 */  j          .Lrace_8010C980
/* C2CF4 8010C934 02C02021 */   addu      $a0, $s6, $zero
.Lrace_8010C938:
/* C2CF8 8010C938 8EA20D04 */  lw         $v0, 0xD04($s5)
/* C2CFC 8010C93C 30420800 */  andi       $v0, $v0, 0x800
/* C2D00 8010C940 10400009 */  beqz       $v0, .Lrace_8010C968
/* C2D04 8010C944 00002021 */   addu      $a0, $zero, $zero
/* C2D08 8010C948 8EC30D04 */  lw         $v1, 0xD04($s6)
/* C2D0C 8010C94C 30620800 */  andi       $v0, $v1, 0x800
/* C2D10 8010C950 14400005 */  bnez       $v0, .Lrace_8010C968
/* C2D14 8010C954 00000000 */   nop
/* C2D18 8010C958 8EA20D78 */  lw         $v0, 0xD78($s5)
/* C2D1C 8010C95C 10400002 */  beqz       $v0, .Lrace_8010C968
/* C2D20 8010C960 30620001 */   andi      $v0, $v1, 0x1
/* C2D24 8010C964 2C440001 */  sltiu      $a0, $v0, 0x1
.Lrace_8010C968:
/* C2D28 8010C968 10800007 */  beqz       $a0, .Lrace_8010C988
/* C2D2C 8010C96C 02C02021 */   addu      $a0, $s6, $zero
/* C2D30 8010C970 8EA60D74 */  lw         $a2, 0xD74($s5)
/* C2D34 8010C974 0C0435E0 */  jal        func_race_8010D780
/* C2D38 8010C978 26A502B4 */   addiu     $a1, $s5, 0x2B4
/* C2D3C 8010C97C 02A02021 */  addu       $a0, $s5, $zero
.Lrace_8010C980:
/* C2D40 8010C980 0C04367A */  jal        func_race_8010D9E8
/* C2D44 8010C984 00000000 */   nop
.Lrace_8010C988:
/* C2D48 8010C988 8EC20D04 */  lw         $v0, 0xD04($s6)
/* C2D4C 8010C98C 3C031000 */  lui        $v1, (0x10000000 >> 16)
/* C2D50 8010C990 00431025 */  or         $v0, $v0, $v1
/* C2D54 8010C994 AEC20D04 */  sw         $v0, 0xD04($s6)
/* C2D58 8010C998 8EA20D04 */  lw         $v0, 0xD04($s5)
/* C2D5C 8010C99C 00431025 */  or         $v0, $v0, $v1
/* C2D60 8010C9A0 AEA20D04 */  sw         $v0, 0xD04($s5)
.Lrace_8010C9A4:
/* C2D64 8010C9A4 8FBF01C8 */  lw         $ra, 0x1C8($sp)
/* C2D68 8010C9A8 8FB701C4 */  lw         $s7, 0x1C4($sp)
/* C2D6C 8010C9AC 8FB601C0 */  lw         $s6, 0x1C0($sp)
/* C2D70 8010C9B0 8FB501BC */  lw         $s5, 0x1BC($sp)
/* C2D74 8010C9B4 8FB401B8 */  lw         $s4, 0x1B8($sp)
/* C2D78 8010C9B8 8FB301B4 */  lw         $s3, 0x1B4($sp)
/* C2D7C 8010C9BC 8FB201B0 */  lw         $s2, 0x1B0($sp)
/* C2D80 8010C9C0 8FB101AC */  lw         $s1, 0x1AC($sp)
/* C2D84 8010C9C4 8FB001A8 */  lw         $s0, 0x1A8($sp)
/* C2D88 8010C9C8 D7BE01F8 */  ldc1       $f30, 0x1F8($sp)
/* C2D8C 8010C9CC D7BC01F0 */  ldc1       $f28, 0x1F0($sp)
/* C2D90 8010C9D0 D7BA01E8 */  ldc1       $f26, 0x1E8($sp)
/* C2D94 8010C9D4 D7B801E0 */  ldc1       $f24, 0x1E0($sp)
/* C2D98 8010C9D8 D7B601D8 */  ldc1       $f22, 0x1D8($sp)
/* C2D9C 8010C9DC D7B401D0 */  ldc1       $f20, 0x1D0($sp)
/* C2DA0 8010C9E0 03E00008 */  jr         $ra
/* C2DA4 8010C9E4 27BD0200 */   addiu     $sp, $sp, 0x200

glabel func_race_8010C9E8
/* C2DA8 8010C9E8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C2DAC 8010C9EC AFB1002C */  sw         $s1, 0x2C($sp)
/* C2DB0 8010C9F0 00808821 */  addu       $s1, $a0, $zero
/* C2DB4 8010C9F4 AFBF0038 */  sw         $ra, 0x38($sp)
/* C2DB8 8010C9F8 AFB30034 */  sw         $s3, 0x34($sp)
/* C2DBC 8010C9FC AFB20030 */  sw         $s2, 0x30($sp)
/* C2DC0 8010CA00 AFB00028 */  sw         $s0, 0x28($sp)
/* C2DC4 8010CA04 8E220D04 */  lw         $v0, 0xD04($s1)
/* C2DC8 8010CA08 30420100 */  andi       $v0, $v0, 0x100
/* C2DCC 8010CA0C 14400028 */  bnez       $v0, .Lrace_8010CAB0
/* C2DD0 8010CA10 00A09821 */   addu      $s3, $a1, $zero
/* C2DD4 8010CA14 02202821 */  addu       $a1, $s1, $zero
/* C2DD8 8010CA18 24120001 */  addiu      $s2, $zero, 0x1
/* C2DDC 8010CA1C 240202EE */  addiu      $v0, $zero, 0x2EE
/* C2DE0 8010CA20 AFB20010 */  sw         $s2, 0x10($sp)
/* C2DE4 8010CA24 AFA00014 */  sw         $zero, 0x14($sp)
/* C2DE8 8010CA28 AFB20018 */  sw         $s2, 0x18($sp)
/* C2DEC 8010CA2C AFA0001C */  sw         $zero, 0x1C($sp)
/* C2DF0 8010CA30 AFA20020 */  sw         $v0, 0x20($sp)
/* C2DF4 8010CA34 8E24000C */  lw         $a0, 0xC($s1)
/* C2DF8 8010CA38 27A60010 */  addiu      $a2, $sp, 0x10
/* C2DFC 8010CA3C 0C04053E */  jal        func_race_801014F8
/* C2E00 8010CA40 248400F0 */   addiu     $a0, $a0, 0xF0
/* C2E04 8010CA44 1040001A */  beqz       $v0, .Lrace_8010CAB0
/* C2E08 8010CA48 263003FC */   addiu     $s0, $s1, 0x3FC
/* C2E0C 8010CA4C 3C054020 */  lui        $a1, (0x40200000 >> 16)
/* C2E10 8010CA50 3C063F66 */  lui        $a2, (0x3F666666 >> 16)
/* C2E14 8010CA54 34C66666 */  ori        $a2, $a2, (0x3F666666 & 0xFFFF)
/* C2E18 8010CA58 3C074049 */  lui        $a3, (0x40490FDB >> 16)
/* C2E1C 8010CA5C 34E70FDB */  ori        $a3, $a3, (0x40490FDB & 0xFFFF)
/* C2E20 8010CA60 0C0477F6 */  jal        func_race_8011DFD8
/* C2E24 8010CA64 02002021 */   addu      $a0, $s0, $zero
/* C2E28 8010CA68 8E0306AC */  lw         $v1, 0x6AC($s0)
/* C2E2C 8010CA6C 30620020 */  andi       $v0, $v1, 0x20
/* C2E30 8010CA70 14400006 */  bnez       $v0, .Lrace_8010CA8C
/* C2E34 8010CA74 30620040 */   andi      $v0, $v1, 0x40
/* C2E38 8010CA78 02002021 */  addu       $a0, $s0, $zero
/* C2E3C 8010CA7C 0C03F89C */  jal        func_race_800FE270
/* C2E40 8010CA80 02602821 */   addu      $a1, $s3, $zero
/* C2E44 8010CA84 080432A9 */  j          .Lrace_8010CAA4
/* C2E48 8010CA88 AE320D68 */   sw        $s2, 0xD68($s1)
.Lrace_8010CA8C:
/* C2E4C 8010CA8C 14400005 */  bnez       $v0, .Lrace_8010CAA4
/* C2E50 8010CA90 02002021 */   addu      $a0, $s0, $zero
/* C2E54 8010CA94 0C03F8B8 */  jal        func_race_800FE2E0
/* C2E58 8010CA98 02602821 */   addu      $a1, $s3, $zero
/* C2E5C 8010CA9C 24020002 */  addiu      $v0, $zero, 0x2
/* C2E60 8010CAA0 AE220D68 */  sw         $v0, 0xD68($s1)
.Lrace_8010CAA4:
/* C2E64 8010CAA4 8E220D04 */  lw         $v0, 0xD04($s1)
/* C2E68 8010CAA8 34420100 */  ori        $v0, $v0, 0x100
/* C2E6C 8010CAAC AE220D04 */  sw         $v0, 0xD04($s1)
.Lrace_8010CAB0:
/* C2E70 8010CAB0 8FBF0038 */  lw         $ra, 0x38($sp)
/* C2E74 8010CAB4 8FB30034 */  lw         $s3, 0x34($sp)
/* C2E78 8010CAB8 8FB20030 */  lw         $s2, 0x30($sp)
/* C2E7C 8010CABC 8FB1002C */  lw         $s1, 0x2C($sp)
/* C2E80 8010CAC0 8FB00028 */  lw         $s0, 0x28($sp)
/* C2E84 8010CAC4 03E00008 */  jr         $ra
/* C2E88 8010CAC8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8010CACC
/* C2E8C 8010CACC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C2E90 8010CAD0 AFB20040 */  sw         $s2, 0x40($sp)
/* C2E94 8010CAD4 00809021 */  addu       $s2, $a0, $zero
/* C2E98 8010CAD8 AFBF0044 */  sw         $ra, 0x44($sp)
/* C2E9C 8010CADC AFB1003C */  sw         $s1, 0x3C($sp)
/* C2EA0 8010CAE0 AFB00038 */  sw         $s0, 0x38($sp)
/* C2EA4 8010CAE4 8E420008 */  lw         $v0, 0x8($s2)
/* C2EA8 8010CAE8 8C42187C */  lw         $v0, 0x187C($v0)
/* C2EAC 8010CAEC 2C420014 */  sltiu      $v0, $v0, 0x14
/* C2EB0 8010CAF0 38420001 */  xori       $v0, $v0, 0x1
/* C2EB4 8010CAF4 1440007F */  bnez       $v0, .Lrace_8010CCF4
/* C2EB8 8010CAF8 240203E8 */   addiu     $v0, $zero, 0x3E8
/* C2EBC 8010CAFC 8E430CD0 */  lw         $v1, 0xCD0($s2)
/* C2EC0 8010CB00 10600009 */  beqz       $v1, .Lrace_8010CB28
/* C2EC4 8010CB04 00000000 */   nop
/* C2EC8 8010CB08 8E420CCC */  lw         $v0, 0xCCC($s2)
/* C2ECC 8010CB0C 14620006 */  bne        $v1, $v0, .Lrace_8010CB28
/* C2ED0 8010CB10 00000000 */   nop
/* C2ED4 8010CB14 8E420D50 */  lw         $v0, 0xD50($s2)
/* C2ED8 8010CB18 8E430CD4 */  lw         $v1, 0xCD4($s2)
/* C2EDC 8010CB1C 0043102B */  sltu       $v0, $v0, $v1
/* C2EE0 8010CB20 14400074 */  bnez       $v0, .Lrace_8010CCF4
/* C2EE4 8010CB24 240203E8 */   addiu     $v0, $zero, 0x3E8
.Lrace_8010CB28:
/* C2EE8 8010CB28 8E440CCC */  lw         $a0, 0xCCC($s2)
/* C2EEC 8010CB2C 24020002 */  addiu      $v0, $zero, 0x2
/* C2EF0 8010CB30 10820062 */  beq        $a0, $v0, .Lrace_8010CCBC
/* C2EF4 8010CB34 28820003 */   slti      $v0, $a0, 0x3
/* C2EF8 8010CB38 10400005 */  beqz       $v0, .Lrace_8010CB50
/* C2EFC 8010CB3C 24020001 */   addiu     $v0, $zero, 0x1
/* C2F00 8010CB40 10820027 */  beq        $a0, $v0, .Lrace_8010CBE0
/* C2F04 8010CB44 26500018 */   addiu     $s0, $s2, 0x18
/* C2F08 8010CB48 08043341 */  j          .Lrace_8010CD04
/* C2F0C 8010CB4C 00000000 */   nop
.Lrace_8010CB50:
/* C2F10 8010CB50 24020003 */  addiu      $v0, $zero, 0x3
/* C2F14 8010CB54 10820005 */  beq        $a0, $v0, .Lrace_8010CB6C
/* C2F18 8010CB58 24020004 */   addiu     $v0, $zero, 0x4
/* C2F1C 8010CB5C 1082004B */  beq        $a0, $v0, .Lrace_8010CC8C
/* C2F20 8010CB60 3C038003 */   lui       $v1, %hi(D_8002FAB0)
/* C2F24 8010CB64 08043341 */  j          .Lrace_8010CD04
/* C2F28 8010CB68 00000000 */   nop
.Lrace_8010CB6C:
/* C2F2C 8010CB6C 3C038003 */  lui        $v1, %hi(D_8002FAB0)
/* C2F30 8010CB70 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C2F34 8010CB74 24420001 */  addiu      $v0, $v0, 0x1
/* C2F38 8010CB78 304203FF */  andi       $v0, $v0, 0x3FF
/* C2F3C 8010CB7C AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C2F40 8010CB80 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C2F44 8010CB84 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C2F48 8010CB88 00021040 */  sll        $v0, $v0, 1
/* C2F4C 8010CB8C 00431021 */  addu       $v0, $v0, $v1
/* C2F50 8010CB90 90420001 */  lbu        $v0, 0x1($v0)
/* C2F54 8010CB94 92430D16 */  lbu        $v1, 0xD16($s2)
/* C2F58 8010CB98 0043102B */  sltu       $v0, $v0, $v1
/* C2F5C 8010CB9C 10400055 */  beqz       $v0, .Lrace_8010CCF4
/* C2F60 8010CBA0 240203E8 */   addiu     $v0, $zero, 0x3E8
/* C2F64 8010CBA4 8E420D04 */  lw         $v0, 0xD04($s2)
/* C2F68 8010CBA8 30421000 */  andi       $v0, $v0, 0x1000
/* C2F6C 8010CBAC 10400004 */  beqz       $v0, .Lrace_8010CBC0
/* C2F70 8010CBB0 00001821 */   addu      $v1, $zero, $zero
/* C2F74 8010CBB4 8E420D50 */  lw         $v0, 0xD50($s2)
/* C2F78 8010CBB8 10440005 */  beq        $v0, $a0, .Lrace_8010CBD0
/* C2F7C 8010CBBC 00000000 */   nop
.Lrace_8010CBC0:
/* C2F80 8010CBC0 8E420AA8 */  lw         $v0, 0xAA8($s2)
/* C2F84 8010CBC4 30420002 */  andi       $v0, $v0, 0x2
/* C2F88 8010CBC8 50400001 */  beql       $v0, $zero, .Lrace_8010CBD0
/* C2F8C 8010CBCC 24030001 */   addiu     $v1, $zero, 0x1
.Lrace_8010CBD0:
/* C2F90 8010CBD0 1060004C */  beqz       $v1, .Lrace_8010CD04
/* C2F94 8010CBD4 00000000 */   nop
/* C2F98 8010CBD8 0804333F */  j          .Lrace_8010CCFC
/* C2F9C 8010CBDC 00000000 */   nop
.Lrace_8010CBE0:
/* C2FA0 8010CBE0 8E030044 */  lw         $v1, 0x44($s0)
/* C2FA4 8010CBE4 27B10018 */  addiu      $s1, $sp, 0x18
/* C2FA8 8010CBE8 8C620024 */  lw         $v0, 0x24($v1)
/* C2FAC 8010CBEC 02202821 */  addu       $a1, $s1, $zero
/* C2FB0 8010CBF0 84440010 */  lh         $a0, 0x10($v0)
/* C2FB4 8010CBF4 8C420014 */  lw         $v0, 0x14($v0)
/* C2FB8 8010CBF8 0040F809 */  jalr       $v0
/* C2FBC 8010CBFC 00642021 */   addu      $a0, $v1, $a0
/* C2FC0 8010CC00 8E020044 */  lw         $v0, 0x44($s0)
/* C2FC4 8010CC04 3C01800D */  lui        $at, %hi(D_race_800CDC10)
/* C2FC8 8010CC08 C422DC10 */  lwc1       $f2, %lo(D_race_800CDC10)($at)
/* C2FCC 8010CC0C 3C01800D */  lui        $at, %hi(D_race_800CDC14)
/* C2FD0 8010CC10 C424DC14 */  lwc1       $f4, %lo(D_race_800CDC14)($at)
/* C2FD4 8010CC14 3C0742C8 */  lui        $a3, (0x42C80000 >> 16)
/* C2FD8 8010CC18 C4400028 */  lwc1       $f0, 0x28($v0)
/* C2FDC 8010CC1C E7A00028 */  swc1       $f0, 0x28($sp)
/* C2FE0 8010CC20 C440002C */  lwc1       $f0, 0x2C($v0)
/* C2FE4 8010CC24 E7A0002C */  swc1       $f0, 0x2C($sp)
/* C2FE8 8010CC28 C4400030 */  lwc1       $f0, 0x30($v0)
/* C2FEC 8010CC2C 02202821 */  addu       $a1, $s1, $zero
/* C2FF0 8010CC30 E7A00030 */  swc1       $f0, 0x30($sp)
/* C2FF4 8010CC34 E7A20010 */  swc1       $f2, 0x10($sp)
/* C2FF8 8010CC38 E7A40014 */  swc1       $f4, 0x14($sp)
/* C2FFC 8010CC3C 8E44000C */  lw         $a0, 0xC($s2)
/* C3000 8010CC40 0C044571 */  jal        func_race_801115C4
/* C3004 8010CC44 27A60028 */   addiu     $a2, $sp, 0x28
/* C3008 8010CC48 1040002E */  beqz       $v0, .Lrace_8010CD04
/* C300C 8010CC4C 3C038003 */   lui       $v1, %hi(D_8002FAB0)
/* C3010 8010CC50 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C3014 8010CC54 24420001 */  addiu      $v0, $v0, 0x1
/* C3018 8010CC58 304203FF */  andi       $v0, $v0, 0x3FF
/* C301C 8010CC5C AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C3020 8010CC60 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C3024 8010CC64 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C3028 8010CC68 00021040 */  sll        $v0, $v0, 1
/* C302C 8010CC6C 00431021 */  addu       $v0, $v0, $v1
/* C3030 8010CC70 90420001 */  lbu        $v0, 0x1($v0)
/* C3034 8010CC74 92430D14 */  lbu        $v1, 0xD14($s2)
/* C3038 8010CC78 0043102B */  sltu       $v0, $v0, $v1
.Lrace_8010CC7C:
/* C303C 8010CC7C 1040001D */  beqz       $v0, .Lrace_8010CCF4
/* C3040 8010CC80 240203E8 */   addiu     $v0, $zero, 0x3E8
/* C3044 8010CC84 0804333F */  j          .Lrace_8010CCFC
/* C3048 8010CC88 00000000 */   nop
.Lrace_8010CC8C:
/* C304C 8010CC8C 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C3050 8010CC90 24420001 */  addiu      $v0, $v0, 0x1
/* C3054 8010CC94 304203FF */  andi       $v0, $v0, 0x3FF
/* C3058 8010CC98 AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C305C 8010CC9C 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C3060 8010CCA0 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C3064 8010CCA4 00021040 */  sll        $v0, $v0, 1
/* C3068 8010CCA8 00431021 */  addu       $v0, $v0, $v1
/* C306C 8010CCAC 90420001 */  lbu        $v0, 0x1($v0)
/* C3070 8010CCB0 92430D15 */  lbu        $v1, 0xD15($s2)
/* C3074 8010CCB4 0804331F */  j          .Lrace_8010CC7C
/* C3078 8010CCB8 0043102B */   sltu      $v0, $v0, $v1
.Lrace_8010CCBC:
/* C307C 8010CCBC 3C038003 */  lui        $v1, %hi(D_8002FAB0)
/* C3080 8010CCC0 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C3084 8010CCC4 24420001 */  addiu      $v0, $v0, 0x1
/* C3088 8010CCC8 304203FF */  andi       $v0, $v0, 0x3FF
/* C308C 8010CCCC AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C3090 8010CCD0 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C3094 8010CCD4 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C3098 8010CCD8 00021040 */  sll        $v0, $v0, 1
/* C309C 8010CCDC 00431021 */  addu       $v0, $v0, $v1
/* C30A0 8010CCE0 90420001 */  lbu        $v0, 0x1($v0)
/* C30A4 8010CCE4 92430D17 */  lbu        $v1, 0xD17($s2)
/* C30A8 8010CCE8 0043102B */  sltu       $v0, $v0, $v1
/* C30AC 8010CCEC 14400003 */  bnez       $v0, .Lrace_8010CCFC
/* C30B0 8010CCF0 240203E8 */   addiu     $v0, $zero, 0x3E8
.Lrace_8010CCF4:
/* C30B4 8010CCF4 08043341 */  j          .Lrace_8010CD04
/* C30B8 8010CCF8 AE420CDC */   sw        $v0, 0xCDC($s2)
.Lrace_8010CCFC:
/* C30BC 8010CCFC 0C043347 */  jal        func_race_8010CD1C
/* C30C0 8010CD00 02402021 */   addu      $a0, $s2, $zero
.Lrace_8010CD04:
/* C30C4 8010CD04 8FBF0044 */  lw         $ra, 0x44($sp)
/* C30C8 8010CD08 8FB20040 */  lw         $s2, 0x40($sp)
/* C30CC 8010CD0C 8FB1003C */  lw         $s1, 0x3C($sp)
/* C30D0 8010CD10 8FB00038 */  lw         $s0, 0x38($sp)
/* C30D4 8010CD14 03E00008 */  jr         $ra
/* C30D8 8010CD18 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_8010CD1C
/* C30DC 8010CD1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C30E0 8010CD20 AFB00010 */  sw         $s0, 0x10($sp)
/* C30E4 8010CD24 00808021 */  addu       $s0, $a0, $zero
/* C30E8 8010CD28 AFBF0018 */  sw         $ra, 0x18($sp)
/* C30EC 8010CD2C AFB10014 */  sw         $s1, 0x14($sp)
/* C30F0 8010CD30 8E030CCC */  lw         $v1, 0xCCC($s0)
/* C30F4 8010CD34 14600005 */  bnez       $v1, .Lrace_8010CD4C
/* C30F8 8010CD38 3C020100 */   lui       $v0, (0x1000000 >> 16)
/* C30FC 8010CD3C 0C0436E0 */  jal        func_race_8010DB80
/* C3100 8010CD40 00000000 */   nop
/* C3104 8010CD44 08043394 */  j          .Lrace_8010CE50
/* C3108 8010CD48 00000000 */   nop
.Lrace_8010CD4C:
/* C310C 8010CD4C 8E040D04 */  lw         $a0, 0xD04($s0)
/* C3110 8010CD50 8E110D50 */  lw         $s1, 0xD50($s0)
/* C3114 8010CD54 00821024 */  and        $v0, $a0, $v0
/* C3118 8010CD58 10400006 */  beqz       $v0, .Lrace_8010CD74
/* C311C 8010CD5C 02002821 */   addu      $a1, $s0, $zero
/* C3120 8010CD60 8E040008 */  lw         $a0, 0x8($s0)
/* C3124 8010CD64 0C04AF09 */  jal        func_race_8012BC24
/* C3128 8010CD68 24060001 */   addiu     $a2, $zero, 0x1
/* C312C 8010CD6C 08043392 */  j          .Lrace_8010CE48
/* C3130 8010CD70 AE000CCC */   sw        $zero, 0xCCC($s0)
.Lrace_8010CD74:
/* C3134 8010CD74 3C020200 */  lui        $v0, (0x2000000 >> 16)
/* C3138 8010CD78 00821024 */  and        $v0, $a0, $v0
/* C313C 8010CD7C 54400001 */  bnel       $v0, $zero, .Lrace_8010CD84
/* C3140 8010CD80 24110003 */   addiu     $s1, $zero, 0x3
.Lrace_8010CD84:
/* C3144 8010CD84 24020002 */  addiu      $v0, $zero, 0x2
/* C3148 8010CD88 10620027 */  beq        $v1, $v0, .Lrace_8010CE28
/* C314C 8010CD8C 28620003 */   slti      $v0, $v1, 0x3
/* C3150 8010CD90 10400005 */  beqz       $v0, .Lrace_8010CDA8
/* C3154 8010CD94 24020001 */   addiu     $v0, $zero, 0x1
/* C3158 8010CD98 10620016 */  beq        $v1, $v0, .Lrace_8010CDF4
/* C315C 8010CD9C 02002821 */   addu      $a1, $s0, $zero
/* C3160 8010CDA0 08043394 */  j          .Lrace_8010CE50
/* C3164 8010CDA4 00000000 */   nop
.Lrace_8010CDA8:
/* C3168 8010CDA8 24020003 */  addiu      $v0, $zero, 0x3
/* C316C 8010CDAC 10620005 */  beq        $v1, $v0, .Lrace_8010CDC4
/* C3170 8010CDB0 24020004 */   addiu     $v0, $zero, 0x4
/* C3174 8010CDB4 50620014 */  beql       $v1, $v0, .Lrace_8010CE08
/* C3178 8010CDB8 02002021 */   addu      $a0, $s0, $zero
/* C317C 8010CDBC 08043394 */  j          .Lrace_8010CE50
/* C3180 8010CDC0 00000000 */   nop
.Lrace_8010CDC4:
/* C3184 8010CDC4 3C020800 */  lui        $v0, (0x8000000 >> 16)
/* C3188 8010CDC8 00821024 */  and        $v0, $a0, $v0
/* C318C 8010CDCC 10400003 */  beqz       $v0, .Lrace_8010CDDC
/* C3190 8010CDD0 00000000 */   nop
/* C3194 8010CDD4 5623001C */  bnel       $s1, $v1, .Lrace_8010CE48
/* C3198 8010CDD8 AE000CCC */   sw        $zero, 0xCCC($s0)
.Lrace_8010CDDC:
/* C319C 8010CDDC 8E040008 */  lw         $a0, 0x8($s0)
/* C31A0 8010CDE0 02002821 */  addu       $a1, $s0, $zero
/* C31A4 8010CDE4 0C04B209 */  jal        func_race_8012C824
/* C31A8 8010CDE8 02203021 */   addu      $a2, $s1, $zero
/* C31AC 8010CDEC 08043392 */  j          .Lrace_8010CE48
/* C31B0 8010CDF0 AE000CCC */   sw        $zero, 0xCCC($s0)
.Lrace_8010CDF4:
/* C31B4 8010CDF4 8E040008 */  lw         $a0, 0x8($s0)
/* C31B8 8010CDF8 0C04AF09 */  jal        func_race_8012BC24
/* C31BC 8010CDFC 02203021 */   addu      $a2, $s1, $zero
/* C31C0 8010CE00 08043392 */  j          .Lrace_8010CE48
/* C31C4 8010CE04 AE000CCC */   sw        $zero, 0xCCC($s0)
.Lrace_8010CE08:
/* C31C8 8010CE08 0C04339E */  jal        func_race_8010CE78
/* C31CC 8010CE0C 24050001 */   addiu     $a1, $zero, 0x1
/* C31D0 8010CE10 8E040008 */  lw         $a0, 0x8($s0)
/* C31D4 8010CE14 02002821 */  addu       $a1, $s0, $zero
/* C31D8 8010CE18 0C04AF26 */  jal        func_race_8012BC98
/* C31DC 8010CE1C 02203021 */   addu      $a2, $s1, $zero
/* C31E0 8010CE20 08043392 */  j          .Lrace_8010CE48
/* C31E4 8010CE24 AE000CCC */   sw        $zero, 0xCCC($s0)
.Lrace_8010CE28:
/* C31E8 8010CE28 02002021 */  addu       $a0, $s0, $zero
/* C31EC 8010CE2C 0C04339E */  jal        func_race_8010CE78
/* C31F0 8010CE30 24050001 */   addiu     $a1, $zero, 0x1
/* C31F4 8010CE34 8E040008 */  lw         $a0, 0x8($s0)
/* C31F8 8010CE38 02002821 */  addu       $a1, $s0, $zero
/* C31FC 8010CE3C 0C04B18D */  jal        func_race_8012C634
/* C3200 8010CE40 02203021 */   addu      $a2, $s1, $zero
/* C3204 8010CE44 AE000CCC */  sw         $zero, 0xCCC($s0)
.Lrace_8010CE48:
/* C3208 8010CE48 0C04348D */  jal        func_race_8010D234
/* C320C 8010CE4C 02002021 */   addu      $a0, $s0, $zero
.Lrace_8010CE50:
/* C3210 8010CE50 8FBF0018 */  lw         $ra, 0x18($sp)
/* C3214 8010CE54 8FB10014 */  lw         $s1, 0x14($sp)
/* C3218 8010CE58 8FB00010 */  lw         $s0, 0x10($sp)
/* C321C 8010CE5C 03E00008 */  jr         $ra
/* C3220 8010CE60 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010CE64
/* C3224 8010CE64 2402012C */  addiu      $v0, $zero, 0x12C
/* C3228 8010CE68 AC850CCC */  sw         $a1, 0xCCC($a0)
/* C322C 8010CE6C AC800CD8 */  sw         $zero, 0xCD8($a0)
/* C3230 8010CE70 03E00008 */  jr         $ra
/* C3234 8010CE74 AC820CDC */   sw        $v0, 0xCDC($a0)

glabel func_race_8010CE78
/* C3238 8010CE78 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C323C 8010CE7C AFB10034 */  sw         $s1, 0x34($sp)
/* C3240 8010CE80 00808821 */  addu       $s1, $a0, $zero
/* C3244 8010CE84 AFBF003C */  sw         $ra, 0x3C($sp)
/* C3248 8010CE88 AFB20038 */  sw         $s2, 0x38($sp)
/* C324C 8010CE8C AFB00030 */  sw         $s0, 0x30($sp)
/* C3250 8010CE90 8E220D3C */  lw         $v0, 0xD3C($s1)
/* C3254 8010CE94 14400046 */  bnez       $v0, .Lrace_8010CFB0
/* C3258 8010CE98 00A09021 */   addu      $s2, $a1, $zero
/* C325C 8010CE9C 8E23005C */  lw         $v1, 0x5C($s1)
/* C3260 8010CEA0 27B00020 */  addiu      $s0, $sp, 0x20
/* C3264 8010CEA4 8C620024 */  lw         $v0, 0x24($v1)
/* C3268 8010CEA8 02002821 */  addu       $a1, $s0, $zero
/* C326C 8010CEAC 84440010 */  lh         $a0, 0x10($v0)
/* C3270 8010CEB0 8C420014 */  lw         $v0, 0x14($v0)
/* C3274 8010CEB4 0040F809 */  jalr       $v0
/* C3278 8010CEB8 00642021 */   addu      $a0, $v1, $a0
/* C327C 8010CEBC 12400018 */  beqz       $s2, .Lrace_8010CF20
/* C3280 8010CEC0 3C098003 */   lui       $t1, %hi(D_8002FAB0)
/* C3284 8010CEC4 3C028003 */  lui        $v0, %hi(D_8002F2B0)
/* C3288 8010CEC8 2442F2B0 */  addiu      $v0, $v0, %lo(D_8002F2B0)
/* C328C 8010CECC 8D28FAB0 */  lw         $t0, %lo(D_8002FAB0)($t1)
/* C3290 8010CED0 3C0742C8 */  lui        $a3, (0x42C80000 >> 16)
/* C3294 8010CED4 3C01800D */  lui        $at, %hi(D_race_800CDC18)
/* C3298 8010CED8 C422DC18 */  lwc1       $f2, %lo(D_race_800CDC18)($at)
/* C329C 8010CEDC 3C01800D */  lui        $at, %hi(D_race_800CDC1C)
/* C32A0 8010CEE0 C420DC1C */  lwc1       $f0, %lo(D_race_800CDC1C)($at)
/* C32A4 8010CEE4 25080001 */  addiu      $t0, $t0, 0x1
/* C32A8 8010CEE8 310803FF */  andi       $t0, $t0, 0x3FF
/* C32AC 8010CEEC 00081840 */  sll        $v1, $t0, 1
/* C32B0 8010CEF0 00621821 */  addu       $v1, $v1, $v0
/* C32B4 8010CEF4 94650000 */  lhu        $a1, 0x0($v1)
/* C32B8 8010CEF8 8E220D38 */  lw         $v0, 0xD38($s1)
/* C32BC 8010CEFC E7A20010 */  swc1       $f2, 0x10($sp)
/* C32C0 8010CF00 E7A00014 */  swc1       $f0, 0x14($sp)
/* C32C4 8010CF04 E7A00018 */  swc1       $f0, 0x18($sp)
/* C32C8 8010CF08 8E240004 */  lw         $a0, 0x4($s1)
/* C32CC 8010CF0C 02003021 */  addu       $a2, $s0, $zero
/* C32D0 8010CF10 AD28FAB0 */  sw         $t0, %lo(D_8002FAB0)($t1)
/* C32D4 8010CF14 30A50001 */  andi       $a1, $a1, 0x1
/* C32D8 8010CF18 080433DD */  j          .Lrace_8010CF74
/* C32DC 8010CF1C 24A50002 */   addiu     $a1, $a1, 0x2
.Lrace_8010CF20:
/* C32E0 8010CF20 3C028003 */  lui        $v0, %hi(D_8002F2B0)
/* C32E4 8010CF24 2442F2B0 */  addiu      $v0, $v0, %lo(D_8002F2B0)
/* C32E8 8010CF28 8D28FAB0 */  lw         $t0, %lo(D_8002FAB0)($t1)
/* C32EC 8010CF2C 3C0742C8 */  lui        $a3, (0x42C80000 >> 16)
/* C32F0 8010CF30 3C01800D */  lui        $at, %hi(D_race_800CDC20)
/* C32F4 8010CF34 C422DC20 */  lwc1       $f2, %lo(D_race_800CDC20)($at)
/* C32F8 8010CF38 3C01800D */  lui        $at, %hi(D_race_800CDC24)
/* C32FC 8010CF3C C420DC24 */  lwc1       $f0, %lo(D_race_800CDC24)($at)
/* C3300 8010CF40 25080001 */  addiu      $t0, $t0, 0x1
/* C3304 8010CF44 310803FF */  andi       $t0, $t0, 0x3FF
/* C3308 8010CF48 00081840 */  sll        $v1, $t0, 1
/* C330C 8010CF4C 00621821 */  addu       $v1, $v1, $v0
/* C3310 8010CF50 94650000 */  lhu        $a1, 0x0($v1)
/* C3314 8010CF54 8E220D38 */  lw         $v0, 0xD38($s1)
/* C3318 8010CF58 E7A20010 */  swc1       $f2, 0x10($sp)
/* C331C 8010CF5C E7A00014 */  swc1       $f0, 0x14($sp)
/* C3320 8010CF60 E7A00018 */  swc1       $f0, 0x18($sp)
/* C3324 8010CF64 8E240004 */  lw         $a0, 0x4($s1)
/* C3328 8010CF68 02003021 */  addu       $a2, $s0, $zero
/* C332C 8010CF6C AD28FAB0 */  sw         $t0, %lo(D_8002FAB0)($t1)
/* C3330 8010CF70 30A50001 */  andi       $a1, $a1, 0x1
.Lrace_8010CF74:
/* C3334 8010CF74 0C046530 */  jal        func_race_801194C0
/* C3338 8010CF78 00452821 */   addu      $a1, $v0, $a1
/* C333C 8010CF7C 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* C3340 8010CF80 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C3344 8010CF84 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* C3348 8010CF88 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C334C 8010CF8C 24840001 */  addiu      $a0, $a0, 0x1
/* C3350 8010CF90 308403FF */  andi       $a0, $a0, 0x3FF
/* C3354 8010CF94 00041040 */  sll        $v0, $a0, 1
/* C3358 8010CF98 00431021 */  addu       $v0, $v0, $v1
/* C335C 8010CF9C 94420000 */  lhu        $v0, 0x0($v0)
/* C3360 8010CFA0 ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* C3364 8010CFA4 00021080 */  sll        $v0, $v0, 2
/* C3368 8010CFA8 24421388 */  addiu      $v0, $v0, 0x1388
/* C336C 8010CFAC AE220D3C */  sw         $v0, 0xD3C($s1)
.Lrace_8010CFB0:
/* C3370 8010CFB0 8FBF003C */  lw         $ra, 0x3C($sp)
/* C3374 8010CFB4 8FB20038 */  lw         $s2, 0x38($sp)
/* C3378 8010CFB8 8FB10034 */  lw         $s1, 0x34($sp)
/* C337C 8010CFBC 8FB00030 */  lw         $s0, 0x30($sp)
/* C3380 8010CFC0 03E00008 */  jr         $ra
/* C3384 8010CFC4 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8010CFC8
/* C3388 8010CFC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C338C 8010CFCC 00802821 */  addu       $a1, $a0, $zero
/* C3390 8010CFD0 AFBF0010 */  sw         $ra, 0x10($sp)
/* C3394 8010CFD4 8CA20D04 */  lw         $v0, 0xD04($a1)
/* C3398 8010CFD8 2403FFFD */  addiu      $v1, $zero, -0x3
/* C339C 8010CFDC 00431024 */  and        $v0, $v0, $v1
/* C33A0 8010CFE0 24A303FC */  addiu      $v1, $a1, 0x3FC
/* C33A4 8010CFE4 ACA20D04 */  sw         $v0, 0xD04($a1)
/* C33A8 8010CFE8 24020001 */  addiu      $v0, $zero, 0x1
/* C33AC 8010CFEC AC6206D8 */  sw         $v0, 0x6D8($v1)
/* C33B0 8010CFF0 8CA20E24 */  lw         $v0, 0xE24($a1)
/* C33B4 8010CFF4 54400001 */  bnel       $v0, $zero, .Lrace_8010CFFC
/* C33B8 8010CFF8 AC600734 */   sw        $zero, 0x734($v1)
.Lrace_8010CFFC:
/* C33BC 8010CFFC 8CA30D08 */  lw         $v1, 0xD08($a1)
/* C33C0 8010D000 24020002 */  addiu      $v0, $zero, 0x2
/* C33C4 8010D004 14620012 */  bne        $v1, $v0, .Lrace_8010D050
/* C33C8 8010D008 ACA00D0C */   sw        $zero, 0xD0C($a1)
/* C33CC 8010D00C 3C038003 */  lui        $v1, %hi(D_8002FAB0)
/* C33D0 8010D010 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C33D4 8010D014 24420001 */  addiu      $v0, $v0, 0x1
/* C33D8 8010D018 304203FF */  andi       $v0, $v0, 0x3FF
/* C33DC 8010D01C AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C33E0 8010D020 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C33E4 8010D024 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C33E8 8010D028 00021040 */  sll        $v0, $v0, 1
/* C33EC 8010D02C 00431021 */  addu       $v0, $v0, $v1
/* C33F0 8010D030 90420001 */  lbu        $v0, 0x1($v0)
/* C33F4 8010D034 90A30D16 */  lbu        $v1, 0xD16($a1)
/* C33F8 8010D038 0043102B */  sltu       $v0, $v0, $v1
/* C33FC 8010D03C 10400004 */  beqz       $v0, .Lrace_8010D050
/* C3400 8010D040 00000000 */   nop
/* C3404 8010D044 8CA40008 */  lw         $a0, 0x8($a1)
/* C3408 8010D048 0C04B209 */  jal        func_race_8012C824
/* C340C 8010D04C 00003021 */   addu      $a2, $zero, $zero
.Lrace_8010D050:
/* C3410 8010D050 8FBF0010 */  lw         $ra, 0x10($sp)
/* C3414 8010D054 03E00008 */  jr         $ra
/* C3418 8010D058 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010D05C
/* C341C 8010D05C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C3420 8010D060 AFB00030 */  sw         $s0, 0x30($sp)
/* C3424 8010D064 00808021 */  addu       $s0, $a0, $zero
/* C3428 8010D068 AFBF0038 */  sw         $ra, 0x38($sp)
/* C342C 8010D06C AFB10034 */  sw         $s1, 0x34($sp)
/* C3430 8010D070 8E03005C */  lw         $v1, 0x5C($s0)
/* C3434 8010D074 27B10020 */  addiu      $s1, $sp, 0x20
/* C3438 8010D078 8C620024 */  lw         $v0, 0x24($v1)
/* C343C 8010D07C 02202821 */  addu       $a1, $s1, $zero
/* C3440 8010D080 84440010 */  lh         $a0, 0x10($v0)
/* C3444 8010D084 8C420014 */  lw         $v0, 0x14($v0)
/* C3448 8010D088 0040F809 */  jalr       $v0
/* C344C 8010D08C 00642021 */   addu      $a0, $v1, $a0
/* C3450 8010D090 3C01800D */  lui        $at, %hi(D_race_800CDC28)
/* C3454 8010D094 C422DC28 */  lwc1       $f2, %lo(D_race_800CDC28)($at)
/* C3458 8010D098 3C01800D */  lui        $at, %hi(D_race_800CDC2C)
/* C345C 8010D09C C420DC2C */  lwc1       $f0, %lo(D_race_800CDC2C)($at)
/* C3460 8010D0A0 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* C3464 8010D0A4 2405003E */  addiu      $a1, $zero, 0x3E
/* C3468 8010D0A8 E7A20010 */  swc1       $f2, 0x10($sp)
/* C346C 8010D0AC E7A00014 */  swc1       $f0, 0x14($sp)
/* C3470 8010D0B0 E7A00018 */  swc1       $f0, 0x18($sp)
/* C3474 8010D0B4 8E040004 */  lw         $a0, 0x4($s0)
/* C3478 8010D0B8 0C046530 */  jal        func_race_801194C0
/* C347C 8010D0BC 02203021 */   addu      $a2, $s1, $zero
/* C3480 8010D0C0 8E020D04 */  lw         $v0, 0xD04($s0)
/* C3484 8010D0C4 34420400 */  ori        $v0, $v0, 0x400
/* C3488 8010D0C8 AE020D04 */  sw         $v0, 0xD04($s0)
/* C348C 8010D0CC 8FBF0038 */  lw         $ra, 0x38($sp)
/* C3490 8010D0D0 8FB10034 */  lw         $s1, 0x34($sp)
/* C3494 8010D0D4 8FB00030 */  lw         $s0, 0x30($sp)
/* C3498 8010D0D8 03E00008 */  jr         $ra
/* C349C 8010D0DC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8010D0E0
/* C34A0 8010D0E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C34A4 8010D0E4 AFB00010 */  sw         $s0, 0x10($sp)
/* C34A8 8010D0E8 00808021 */  addu       $s0, $a0, $zero
/* C34AC 8010D0EC AFBF0018 */  sw         $ra, 0x18($sp)
/* C34B0 8010D0F0 AFB10014 */  sw         $s1, 0x14($sp)
/* C34B4 8010D0F4 8E030D50 */  lw         $v1, 0xD50($s0)
/* C34B8 8010D0F8 24020003 */  addiu      $v0, $zero, 0x3
/* C34BC 8010D0FC 10620017 */  beq        $v1, $v0, .Lrace_8010D15C
/* C34C0 8010D100 24110003 */   addiu     $s1, $zero, 0x3
/* C34C4 8010D104 00002021 */  addu       $a0, $zero, $zero
/* C34C8 8010D108 02001821 */  addu       $v1, $s0, $zero
.Lrace_8010D10C:
/* C34CC 8010D10C 8C620D54 */  lw         $v0, 0xD54($v1)
/* C34D0 8010D110 1440000F */  bnez       $v0, .Lrace_8010D150
/* C34D4 8010D114 24840001 */   addiu     $a0, $a0, 0x1
/* C34D8 8010D118 AC650D54 */  sw         $a1, 0xD54($v1)
/* C34DC 8010D11C 8E050D50 */  lw         $a1, 0xD50($s0)
/* C34E0 8010D120 8E040004 */  lw         $a0, 0x4($s0)
/* C34E4 8010D124 0C04651F */  jal        func_race_8011947C
/* C34E8 8010D128 24A5000B */   addiu     $a1, $a1, 0xB
/* C34EC 8010D12C 8E020D50 */  lw         $v0, 0xD50($s0)
/* C34F0 8010D130 24420001 */  addiu      $v0, $v0, 0x1
/* C34F4 8010D134 14510004 */  bne        $v0, $s1, .Lrace_8010D148
/* C34F8 8010D138 AE020D50 */   sw        $v0, 0xD50($s0)
/* C34FC 8010D13C 02002021 */  addu       $a0, $s0, $zero
/* C3500 8010D140 0C04339E */  jal        func_race_8010CE78
/* C3504 8010D144 24050001 */   addiu     $a1, $zero, 0x1
.Lrace_8010D148:
/* C3508 8010D148 08043458 */  j          .Lrace_8010D160
/* C350C 8010D14C 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_8010D150:
/* C3510 8010D150 2C820003 */  sltiu      $v0, $a0, 0x3
/* C3514 8010D154 1440FFED */  bnez       $v0, .Lrace_8010D10C
/* C3518 8010D158 24630004 */   addiu     $v1, $v1, 0x4
.Lrace_8010D15C:
/* C351C 8010D15C 00001021 */  addu       $v0, $zero, $zero
.Lrace_8010D160:
/* C3520 8010D160 8FBF0018 */  lw         $ra, 0x18($sp)
/* C3524 8010D164 8FB10014 */  lw         $s1, 0x14($sp)
/* C3528 8010D168 8FB00010 */  lw         $s0, 0x10($sp)
/* C352C 8010D16C 03E00008 */  jr         $ra
/* C3530 8010D170 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010D174
/* C3534 8010D174 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C3538 8010D178 AFB10034 */  sw         $s1, 0x34($sp)
/* C353C 8010D17C 00808821 */  addu       $s1, $a0, $zero
/* C3540 8010D180 AFBF0038 */  sw         $ra, 0x38($sp)
/* C3544 8010D184 AFB00030 */  sw         $s0, 0x30($sp)
/* C3548 8010D188 8E220D50 */  lw         $v0, 0xD50($s1)
/* C354C 8010D18C 1440001B */  bnez       $v0, .Lrace_8010D1FC
/* C3550 8010D190 00002021 */   addu      $a0, $zero, $zero
/* C3554 8010D194 08043488 */  j          .Lrace_8010D220
/* C3558 8010D198 00001021 */   addu      $v0, $zero, $zero
.Lrace_8010D19C:
/* C355C 8010D19C AC600D54 */  sw         $zero, 0xD54($v1)
/* C3560 8010D1A0 8E23005C */  lw         $v1, 0x5C($s1)
/* C3564 8010D1A4 8C620024 */  lw         $v0, 0x24($v1)
/* C3568 8010D1A8 27A50010 */  addiu      $a1, $sp, 0x10
/* C356C 8010D1AC 84440010 */  lh         $a0, 0x10($v0)
/* C3570 8010D1B0 8C420014 */  lw         $v0, 0x14($v0)
/* C3574 8010D1B4 0040F809 */  jalr       $v0
/* C3578 8010D1B8 00642021 */   addu      $a0, $v1, $a0
/* C357C 8010D1BC 8E220D50 */  lw         $v0, 0xD50($s1)
/* C3580 8010D1C0 2442FFFF */  addiu      $v0, $v0, -0x1
/* C3584 8010D1C4 AE220D50 */  sw         $v0, 0xD50($s1)
/* C3588 8010D1C8 8FA80010 */  lw         $t0, 0x10($sp)
/* C358C 8010D1CC 8FA90014 */  lw         $t1, 0x14($sp)
/* C3590 8010D1D0 8FAA0018 */  lw         $t2, 0x18($sp)
/* C3594 8010D1D4 AFA80020 */  sw         $t0, 0x20($sp)
/* C3598 8010D1D8 AFA90024 */  sw         $t1, 0x24($sp)
/* C359C 8010D1DC AFAA0028 */  sw         $t2, 0x28($sp)
/* C35A0 8010D1E0 8FA50020 */  lw         $a1, 0x20($sp)
/* C35A4 8010D1E4 8FA60024 */  lw         $a2, 0x24($sp)
/* C35A8 8010D1E8 8FA70028 */  lw         $a3, 0x28($sp)
/* C35AC 8010D1EC 0C048A96 */  jal        func_race_80122A58
/* C35B0 8010D1F0 02002021 */   addu      $a0, $s0, $zero
/* C35B4 8010D1F4 08043488 */  j          .Lrace_8010D220
/* C35B8 8010D1F8 02001021 */   addu      $v0, $s0, $zero
.Lrace_8010D1FC:
/* C35BC 8010D1FC 02201821 */  addu       $v1, $s1, $zero
.Lrace_8010D200:
/* C35C0 8010D200 2C820003 */  sltiu      $v0, $a0, 0x3
/* C35C4 8010D204 50400006 */  beql       $v0, $zero, .Lrace_8010D220
/* C35C8 8010D208 00001021 */   addu      $v0, $zero, $zero
/* C35CC 8010D20C 8C700D54 */  lw         $s0, 0xD54($v1)
/* C35D0 8010D210 1600FFE2 */  bnez       $s0, .Lrace_8010D19C
/* C35D4 8010D214 24840001 */   addiu     $a0, $a0, 0x1
/* C35D8 8010D218 08043480 */  j          .Lrace_8010D200
/* C35DC 8010D21C 24630004 */   addiu     $v1, $v1, 0x4
.Lrace_8010D220:
/* C35E0 8010D220 8FBF0038 */  lw         $ra, 0x38($sp)
/* C35E4 8010D224 8FB10034 */  lw         $s1, 0x34($sp)
/* C35E8 8010D228 8FB00030 */  lw         $s0, 0x30($sp)
/* C35EC 8010D22C 03E00008 */  jr         $ra
/* C35F0 8010D230 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8010D234
/* C35F4 8010D234 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C35F8 8010D238 AFB20018 */  sw         $s2, 0x18($sp)
/* C35FC 8010D23C 00809021 */  addu       $s2, $a0, $zero
/* C3600 8010D240 AFBF001C */  sw         $ra, 0x1C($sp)
/* C3604 8010D244 AFB10014 */  sw         $s1, 0x14($sp)
/* C3608 8010D248 AFB00010 */  sw         $s0, 0x10($sp)
/* C360C 8010D24C 8E420D50 */  lw         $v0, 0xD50($s2)
/* C3610 8010D250 1040000E */  beqz       $v0, .Lrace_8010D28C
/* C3614 8010D254 00008821 */   addu      $s1, $zero, $zero
/* C3618 8010D258 02408021 */  addu       $s0, $s2, $zero
.Lrace_8010D25C:
/* C361C 8010D25C 8E040D54 */  lw         $a0, 0xD54($s0)
/* C3620 8010D260 10800007 */  beqz       $a0, .Lrace_8010D280
/* C3624 8010D264 26310001 */   addiu     $s1, $s1, 0x1
/* C3628 8010D268 0C048AB2 */  jal        func_race_80122AC8
/* C362C 8010D26C 00000000 */   nop
/* C3630 8010D270 8E420D50 */  lw         $v0, 0xD50($s2)
/* C3634 8010D274 2442FFFF */  addiu      $v0, $v0, -0x1
/* C3638 8010D278 AE420D50 */  sw         $v0, 0xD50($s2)
/* C363C 8010D27C AE000D54 */  sw         $zero, 0xD54($s0)
.Lrace_8010D280:
/* C3640 8010D280 2E220003 */  sltiu      $v0, $s1, 0x3
/* C3644 8010D284 1440FFF5 */  bnez       $v0, .Lrace_8010D25C
/* C3648 8010D288 26100004 */   addiu     $s0, $s0, 0x4
.Lrace_8010D28C:
/* C364C 8010D28C 8FBF001C */  lw         $ra, 0x1C($sp)
/* C3650 8010D290 8FB20018 */  lw         $s2, 0x18($sp)
/* C3654 8010D294 8FB10014 */  lw         $s1, 0x14($sp)
/* C3658 8010D298 8FB00010 */  lw         $s0, 0x10($sp)
/* C365C 8010D29C 03E00008 */  jr         $ra
/* C3660 8010D2A0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010D2A4
/* C3664 8010D2A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3668 8010D2A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* C366C 8010D2AC AFB00010 */  sw         $s0, 0x10($sp)
/* C3670 8010D2B0 8C830D04 */  lw         $v1, 0xD04($a0)
/* C3674 8010D2B4 30620008 */  andi       $v0, $v1, 0x8
/* C3678 8010D2B8 14400007 */  bnez       $v0, .Lrace_8010D2D8
/* C367C 8010D2BC 34620008 */   ori       $v0, $v1, 0x8
/* C3680 8010D2C0 AC820D04 */  sw         $v0, 0xD04($a0)
/* C3684 8010D2C4 249003FC */  addiu      $s0, $a0, 0x3FC
/* C3688 8010D2C8 0C03F9E2 */  jal        func_race_800FE788
/* C368C 8010D2CC 02002021 */   addu      $a0, $s0, $zero
/* C3690 8010D2D0 0C03F95A */  jal        func_race_800FE568
/* C3694 8010D2D4 02002021 */   addu      $a0, $s0, $zero
.Lrace_8010D2D8:
/* C3698 8010D2D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* C369C 8010D2DC 8FB00010 */  lw         $s0, 0x10($sp)
/* C36A0 8010D2E0 03E00008 */  jr         $ra
/* C36A4 8010D2E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010D2E8
/* C36A8 8010D2E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C36AC 8010D2EC AFBF0010 */  sw         $ra, 0x10($sp)
/* C36B0 8010D2F0 8C830D04 */  lw         $v1, 0xD04($a0)
/* C36B4 8010D2F4 30620008 */  andi       $v0, $v1, 0x8
/* C36B8 8010D2F8 10400005 */  beqz       $v0, .Lrace_8010D310
/* C36BC 8010D2FC 2402FFF7 */   addiu     $v0, $zero, -0x9
/* C36C0 8010D300 00621024 */  and        $v0, $v1, $v0
/* C36C4 8010D304 AC820D04 */  sw         $v0, 0xD04($a0)
/* C36C8 8010D308 0C03F97D */  jal        func_race_800FE5F4
/* C36CC 8010D30C 248403FC */   addiu     $a0, $a0, 0x3FC
.Lrace_8010D310:
/* C36D0 8010D310 8FBF0010 */  lw         $ra, 0x10($sp)
/* C36D4 8010D314 03E00008 */  jr         $ra
/* C36D8 8010D318 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010D31C
/* C36DC 8010D31C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C36E0 8010D320 AFB10014 */  sw         $s1, 0x14($sp)
/* C36E4 8010D324 00808821 */  addu       $s1, $a0, $zero
/* C36E8 8010D328 AFBF0018 */  sw         $ra, 0x18($sp)
/* C36EC 8010D32C AFB00010 */  sw         $s0, 0x10($sp)
/* C36F0 8010D330 8E220D04 */  lw         $v0, 0xD04($s1)
/* C36F4 8010D334 34420010 */  ori        $v0, $v0, 0x10
/* C36F8 8010D338 0C04367A */  jal        func_race_8010D9E8
/* C36FC 8010D33C AE220D04 */   sw        $v0, 0xD04($s1)
/* C3700 8010D340 26300018 */  addiu      $s0, $s1, 0x18
/* C3704 8010D344 0C044B9A */  jal        func_race_80112E68
/* C3708 8010D348 02002021 */   addu      $a0, $s0, $zero
/* C370C 8010D34C 0C044B35 */  jal        func_race_80112CD4
/* C3710 8010D350 02002021 */   addu      $a0, $s0, $zero
/* C3714 8010D354 02002021 */  addu       $a0, $s0, $zero
/* C3718 8010D358 8E220018 */  lw         $v0, 0x18($s1)
/* C371C 8010D35C 2403FFEB */  addiu      $v1, $zero, -0x15
/* C3720 8010D360 00431024 */  and        $v0, $v0, $v1
/* C3724 8010D364 0C045593 */  jal        func_race_8011564C
/* C3728 8010D368 AE220018 */   sw        $v0, 0x18($s1)
/* C372C 8010D36C 0C0455AD */  jal        func_race_801156B4
/* C3730 8010D370 02002021 */   addu      $a0, $s0, $zero
/* C3734 8010D374 263003FC */  addiu      $s0, $s1, 0x3FC
/* C3738 8010D378 0C03F9E2 */  jal        func_race_800FE788
/* C373C 8010D37C 02002021 */   addu      $a0, $s0, $zero
/* C3740 8010D380 8E230D08 */  lw         $v1, 0xD08($s1)
/* C3744 8010D384 24020002 */  addiu      $v0, $zero, 0x2
/* C3748 8010D388 14620008 */  bne        $v1, $v0, .Lrace_8010D3AC
/* C374C 8010D38C 262303FC */   addiu     $v1, $s1, 0x3FC
/* C3750 8010D390 8E020730 */  lw         $v0, 0x730($s0)
/* C3754 8010D394 10400005 */  beqz       $v0, .Lrace_8010D3AC
/* C3758 8010D398 00000000 */   nop
/* C375C 8010D39C 0C03F933 */  jal        func_race_800FE4CC
/* C3760 8010D3A0 02002021 */   addu      $a0, $s0, $zero
/* C3764 8010D3A4 080434EE */  j          .Lrace_8010D3B8
/* C3768 8010D3A8 00000000 */   nop
.Lrace_8010D3AC:
/* C376C 8010D3AC 8C6206AC */  lw         $v0, 0x6AC($v1)
/* C3770 8010D3B0 34421000 */  ori        $v0, $v0, 0x1000
/* C3774 8010D3B4 AC6206AC */  sw         $v0, 0x6AC($v1)
.Lrace_8010D3B8:
/* C3778 8010D3B8 8E240014 */  lw         $a0, 0x14($s1)
/* C377C 8010D3BC 10800003 */  beqz       $a0, .Lrace_8010D3CC
/* C3780 8010D3C0 00000000 */   nop
/* C3784 8010D3C4 0C03D3A8 */  jal        func_race_800F4EA0
/* C3788 8010D3C8 24050003 */   addiu     $a1, $zero, 0x3
.Lrace_8010D3CC:
/* C378C 8010D3CC 8FBF0018 */  lw         $ra, 0x18($sp)
/* C3790 8010D3D0 8FB10014 */  lw         $s1, 0x14($sp)
/* C3794 8010D3D4 8FB00010 */  lw         $s0, 0x10($sp)
/* C3798 8010D3D8 03E00008 */  jr         $ra
/* C379C 8010D3DC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010D3E0
/* C37A0 8010D3E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C37A4 8010D3E4 AFB00010 */  sw         $s0, 0x10($sp)
/* C37A8 8010D3E8 00808021 */  addu       $s0, $a0, $zero
/* C37AC 8010D3EC 26040018 */  addiu      $a0, $s0, 0x18
/* C37B0 8010D3F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* C37B4 8010D3F4 8E020D04 */  lw         $v0, 0xD04($s0)
/* C37B8 8010D3F8 2403FFEF */  addiu      $v1, $zero, -0x11
/* C37BC 8010D3FC 00431024 */  and        $v0, $v0, $v1
/* C37C0 8010D400 0C044B17 */  jal        func_race_80112C5C
/* C37C4 8010D404 AE020D04 */   sw        $v0, 0xD04($s0)
/* C37C8 8010D408 8E030D08 */  lw         $v1, 0xD08($s0)
/* C37CC 8010D40C 24020002 */  addiu      $v0, $zero, 0x2
/* C37D0 8010D410 14620009 */  bne        $v1, $v0, .Lrace_8010D438
/* C37D4 8010D414 260203FC */   addiu     $v0, $s0, 0x3FC
/* C37D8 8010D418 260403FC */  addiu      $a0, $s0, 0x3FC
/* C37DC 8010D41C 8C820730 */  lw         $v0, 0x730($a0)
/* C37E0 8010D420 10400005 */  beqz       $v0, .Lrace_8010D438
/* C37E4 8010D424 260203FC */   addiu     $v0, $s0, 0x3FC
/* C37E8 8010D428 0C03F94A */  jal        func_race_800FE528
/* C37EC 8010D42C 00000000 */   nop
/* C37F0 8010D430 08043512 */  j          .Lrace_8010D448
/* C37F4 8010D434 00000000 */   nop
.Lrace_8010D438:
/* C37F8 8010D438 8C4306AC */  lw         $v1, 0x6AC($v0)
/* C37FC 8010D43C 2404EFFF */  addiu      $a0, $zero, -0x1001
/* C3800 8010D440 00641824 */  and        $v1, $v1, $a0
/* C3804 8010D444 AC4306AC */  sw         $v1, 0x6AC($v0)
.Lrace_8010D448:
/* C3808 8010D448 8E020018 */  lw         $v0, 0x18($s0)
/* C380C 8010D44C 34420004 */  ori        $v0, $v0, 0x4
/* C3810 8010D450 AE020018 */  sw         $v0, 0x18($s0)
/* C3814 8010D454 8FBF0014 */  lw         $ra, 0x14($sp)
/* C3818 8010D458 8FB00010 */  lw         $s0, 0x10($sp)
/* C381C 8010D45C 03E00008 */  jr         $ra
/* C3820 8010D460 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010D464
/* C3824 8010D464 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C3828 8010D468 AFB10014 */  sw         $s1, 0x14($sp)
/* C382C 8010D46C 00808821 */  addu       $s1, $a0, $zero
/* C3830 8010D470 AFB20018 */  sw         $s2, 0x18($sp)
/* C3834 8010D474 00A09021 */  addu       $s2, $a1, $zero
/* C3838 8010D478 AFBF001C */  sw         $ra, 0x1C($sp)
/* C383C 8010D47C AFB00010 */  sw         $s0, 0x10($sp)
/* C3840 8010D480 8E220D04 */  lw         $v0, 0xD04($s1)
/* C3844 8010D484 8E230D08 */  lw         $v1, 0xD08($s1)
/* C3848 8010D488 34420040 */  ori        $v0, $v0, 0x40
/* C384C 8010D48C 38630002 */  xori       $v1, $v1, 0x2
/* C3850 8010D490 10600003 */  beqz       $v1, .Lrace_8010D4A0
/* C3854 8010D494 AE220D04 */   sw        $v0, 0xD04($s1)
/* C3858 8010D498 0C04557A */  jal        func_race_801155E8
/* C385C 8010D49C 26240018 */   addiu     $a0, $s1, 0x18
.Lrace_8010D4A0:
/* C3860 8010D4A0 26250C70 */  addiu      $a1, $s1, 0xC70
/* C3864 8010D4A4 263003FC */  addiu      $s0, $s1, 0x3FC
/* C3868 8010D4A8 02002021 */  addu       $a0, $s0, $zero
/* C386C 8010D4AC 8CA20014 */  lw         $v0, 0x14($a1)
/* C3870 8010D4B0 2403FEFF */  addiu      $v1, $zero, -0x101
/* C3874 8010D4B4 34420001 */  ori        $v0, $v0, 0x1
/* C3878 8010D4B8 00431024 */  and        $v0, $v0, $v1
/* C387C 8010D4BC 0C04734C */  jal        func_race_8011CD30
/* C3880 8010D4C0 ACA20014 */   sw        $v0, 0x14($a1)
/* C3884 8010D4C4 0C03F6A8 */  jal        func_race_800FDAA0
/* C3888 8010D4C8 02002021 */   addu      $a0, $s0, $zero
/* C388C 8010D4CC 8E240014 */  lw         $a0, 0x14($s1)
/* C3890 8010D4D0 10800003 */  beqz       $a0, .Lrace_8010D4E0
/* C3894 8010D4D4 AE320D60 */   sw        $s2, 0xD60($s1)
/* C3898 8010D4D8 0C03D3A8 */  jal        func_race_800F4EA0
/* C389C 8010D4DC 02402821 */   addu      $a1, $s2, $zero
.Lrace_8010D4E0:
/* C38A0 8010D4E0 8FBF001C */  lw         $ra, 0x1C($sp)
/* C38A4 8010D4E4 8FB20018 */  lw         $s2, 0x18($sp)
/* C38A8 8010D4E8 8FB10014 */  lw         $s1, 0x14($sp)
/* C38AC 8010D4EC 8FB00010 */  lw         $s0, 0x10($sp)
/* C38B0 8010D4F0 03E00008 */  jr         $ra
/* C38B4 8010D4F4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010D4F8
/* C38B8 8010D4F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C38BC 8010D4FC AFB00010 */  sw         $s0, 0x10($sp)
/* C38C0 8010D500 00808021 */  addu       $s0, $a0, $zero
/* C38C4 8010D504 26040018 */  addiu      $a0, $s0, 0x18
/* C38C8 8010D508 AFBF0014 */  sw         $ra, 0x14($sp)
/* C38CC 8010D50C 8E020D04 */  lw         $v0, 0xD04($s0)
/* C38D0 8010D510 2403FFBF */  addiu      $v1, $zero, -0x41
/* C38D4 8010D514 00431024 */  and        $v0, $v0, $v1
/* C38D8 8010D518 0C045593 */  jal        func_race_8011564C
/* C38DC 8010D51C AE020D04 */   sw        $v0, 0xD04($s0)
/* C38E0 8010D520 260403FC */  addiu      $a0, $s0, 0x3FC
/* C38E4 8010D524 26100C70 */  addiu      $s0, $s0, 0xC70
/* C38E8 8010D528 8E020014 */  lw         $v0, 0x14($s0)
/* C38EC 8010D52C 2403FEFE */  addiu      $v1, $zero, -0x102
/* C38F0 8010D530 00431024 */  and        $v0, $v0, $v1
/* C38F4 8010D534 0C03F6C7 */  jal        func_race_800FDB1C
/* C38F8 8010D538 AE020014 */   sw        $v0, 0x14($s0)
/* C38FC 8010D53C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C3900 8010D540 8FB00010 */  lw         $s0, 0x10($sp)
/* C3904 8010D544 03E00008 */  jr         $ra
/* C3908 8010D548 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010D54C
/* C390C 8010D54C 8C820D04 */  lw         $v0, 0xD04($a0)
/* C3910 8010D550 AC850D64 */  sw         $a1, 0xD64($a0)
/* C3914 8010D554 34420001 */  ori        $v0, $v0, 0x1
/* C3918 8010D558 03E00008 */  jr         $ra
/* C391C 8010D55C AC820D04 */   sw        $v0, 0xD04($a0)

glabel func_race_8010D560
/* C3920 8010D560 8C820D04 */  lw         $v0, 0xD04($a0)
/* C3924 8010D564 2403FFFE */  addiu      $v1, $zero, -0x2
/* C3928 8010D568 00431024 */  and        $v0, $v0, $v1
/* C392C 8010D56C 03E00008 */  jr         $ra
/* C3930 8010D570 AC820D04 */   sw        $v0, 0xD04($a0)

glabel func_race_8010D574
/* C3934 8010D574 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3938 8010D578 AFBF0010 */  sw         $ra, 0x10($sp)
/* C393C 8010D57C 0C03F991 */  jal        func_race_800FE644
/* C3940 8010D580 248403FC */   addiu     $a0, $a0, 0x3FC
/* C3944 8010D584 8FBF0010 */  lw         $ra, 0x10($sp)
/* C3948 8010D588 03E00008 */  jr         $ra
/* C394C 8010D58C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010D590
/* C3950 8010D590 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3954 8010D594 AFBF0010 */  sw         $ra, 0x10($sp)
/* C3958 8010D598 0C03F9A0 */  jal        func_race_800FE680
/* C395C 8010D59C 248403FC */   addiu     $a0, $a0, 0x3FC
/* C3960 8010D5A0 8FBF0010 */  lw         $ra, 0x10($sp)
/* C3964 8010D5A4 03E00008 */  jr         $ra
/* C3968 8010D5A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010D5AC
/* C396C 8010D5AC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C3970 8010D5B0 AFB10034 */  sw         $s1, 0x34($sp)
/* C3974 8010D5B4 00808821 */  addu       $s1, $a0, $zero
/* C3978 8010D5B8 AFBF0038 */  sw         $ra, 0x38($sp)
/* C397C 8010D5BC AFB00030 */  sw         $s0, 0x30($sp)
/* C3980 8010D5C0 8E220D04 */  lw         $v0, 0xD04($s1)
/* C3984 8010D5C4 30420080 */  andi       $v0, $v0, 0x80
/* C3988 8010D5C8 10400004 */  beqz       $v0, .Lrace_8010D5DC
/* C398C 8010D5CC 00001821 */   addu      $v1, $zero, $zero
/* C3990 8010D5D0 8E220CA0 */  lw         $v0, 0xCA0($s1)
/* C3994 8010D5D4 00A21026 */  xor        $v0, $a1, $v0
/* C3998 8010D5D8 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_8010D5DC:
/* C399C 8010D5DC 1460002B */  bnez       $v1, .Lrace_8010D68C
/* C39A0 8010D5E0 26300C70 */   addiu     $s0, $s1, 0xC70
/* C39A4 8010D5E4 0C03CD85 */  jal        func_race_800F3614
/* C39A8 8010D5E8 02002021 */   addu      $a0, $s0, $zero
/* C39AC 8010D5EC 8E020014 */  lw         $v0, 0x14($s0)
/* C39B0 8010D5F0 30420004 */  andi       $v0, $v0, 0x4
/* C39B4 8010D5F4 10400025 */  beqz       $v0, .Lrace_8010D68C
/* C39B8 8010D5F8 00000000 */   nop
/* C39BC 8010D5FC 8E220D04 */  lw         $v0, 0xD04($s1)
/* C39C0 8010D600 8E230D08 */  lw         $v1, 0xD08($s1)
/* C39C4 8010D604 34420080 */  ori        $v0, $v0, 0x80
/* C39C8 8010D608 14600020 */  bnez       $v1, .Lrace_8010D68C
/* C39CC 8010D60C AE220D04 */   sw        $v0, 0xD04($s1)
/* C39D0 8010D610 8E220AA8 */  lw         $v0, 0xAA8($s1)
/* C39D4 8010D614 30420008 */  andi       $v0, $v0, 0x8
/* C39D8 8010D618 1440001C */  bnez       $v0, .Lrace_8010D68C
/* C39DC 8010D61C 26300018 */   addiu     $s0, $s1, 0x18
/* C39E0 8010D620 0C044C4B */  jal        func_race_8011312C
/* C39E4 8010D624 02002021 */   addu      $a0, $s0, $zero
/* C39E8 8010D628 8E220018 */  lw         $v0, 0x18($s1)
/* C39EC 8010D62C 30420008 */  andi       $v0, $v0, 0x8
/* C39F0 8010D630 14400003 */  bnez       $v0, .Lrace_8010D640
/* C39F4 8010D634 00000000 */   nop
/* C39F8 8010D638 0C044B50 */  jal        func_race_80112D40
/* C39FC 8010D63C 02002021 */   addu      $a0, $s0, $zero
.Lrace_8010D640:
/* C3A00 8010D640 8E030044 */  lw         $v1, 0x44($s0)
/* C3A04 8010D644 8C620024 */  lw         $v0, 0x24($v1)
/* C3A08 8010D648 27A50020 */  addiu      $a1, $sp, 0x20
/* C3A0C 8010D64C 84440010 */  lh         $a0, 0x10($v0)
/* C3A10 8010D650 8C420014 */  lw         $v0, 0x14($v0)
/* C3A14 8010D654 0040F809 */  jalr       $v0
/* C3A18 8010D658 00642021 */   addu      $a0, $v1, $a0
/* C3A1C 8010D65C 3C01800D */  lui        $at, %hi(D_race_800CDC30)
/* C3A20 8010D660 C422DC30 */  lwc1       $f2, %lo(D_race_800CDC30)($at)
/* C3A24 8010D664 3C01800D */  lui        $at, %hi(D_race_800CDC34)
/* C3A28 8010D668 C420DC34 */  lwc1       $f0, %lo(D_race_800CDC34)($at)
/* C3A2C 8010D66C 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* C3A30 8010D670 24050039 */  addiu      $a1, $zero, 0x39
/* C3A34 8010D674 E7A20010 */  swc1       $f2, 0x10($sp)
/* C3A38 8010D678 E7A00014 */  swc1       $f0, 0x14($sp)
/* C3A3C 8010D67C E7A00018 */  swc1       $f0, 0x18($sp)
/* C3A40 8010D680 8E240004 */  lw         $a0, 0x4($s1)
/* C3A44 8010D684 0C046530 */  jal        func_race_801194C0
/* C3A48 8010D688 27A60020 */   addiu     $a2, $sp, 0x20
.Lrace_8010D68C:
/* C3A4C 8010D68C 8FBF0038 */  lw         $ra, 0x38($sp)
/* C3A50 8010D690 8FB10034 */  lw         $s1, 0x34($sp)
/* C3A54 8010D694 8FB00030 */  lw         $s0, 0x30($sp)
/* C3A58 8010D698 03E00008 */  jr         $ra
/* C3A5C 8010D69C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8010D6A0
/* C3A60 8010D6A0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C3A64 8010D6A4 AFB10034 */  sw         $s1, 0x34($sp)
/* C3A68 8010D6A8 00808821 */  addu       $s1, $a0, $zero
/* C3A6C 8010D6AC AFBF0038 */  sw         $ra, 0x38($sp)
/* C3A70 8010D6B0 AFB00030 */  sw         $s0, 0x30($sp)
/* C3A74 8010D6B4 8E220D04 */  lw         $v0, 0xD04($s1)
/* C3A78 8010D6B8 30420080 */  andi       $v0, $v0, 0x80
/* C3A7C 8010D6BC 1040002B */  beqz       $v0, .Lrace_8010D76C
/* C3A80 8010D6C0 26300C70 */   addiu     $s0, $s1, 0xC70
/* C3A84 8010D6C4 8E020014 */  lw         $v0, 0x14($s0)
/* C3A88 8010D6C8 30420004 */  andi       $v0, $v0, 0x4
/* C3A8C 8010D6CC 10400003 */  beqz       $v0, .Lrace_8010D6DC
/* C3A90 8010D6D0 00000000 */   nop
/* C3A94 8010D6D4 0C03CDA8 */  jal        func_race_800F36A0
/* C3A98 8010D6D8 02002021 */   addu      $a0, $s0, $zero
.Lrace_8010D6DC:
/* C3A9C 8010D6DC 8E220AA8 */  lw         $v0, 0xAA8($s1)
/* C3AA0 8010D6E0 30420008 */  andi       $v0, $v0, 0x8
/* C3AA4 8010D6E4 1440001D */  bnez       $v0, .Lrace_8010D75C
/* C3AA8 8010D6E8 00000000 */   nop
/* C3AAC 8010D6EC 8E020014 */  lw         $v0, 0x14($s0)
/* C3AB0 8010D6F0 30420008 */  andi       $v0, $v0, 0x8
/* C3AB4 8010D6F4 10400013 */  beqz       $v0, .Lrace_8010D744
/* C3AB8 8010D6F8 27A50020 */   addiu     $a1, $sp, 0x20
/* C3ABC 8010D6FC 8E23005C */  lw         $v1, 0x5C($s1)
/* C3AC0 8010D700 8C620024 */  lw         $v0, 0x24($v1)
/* C3AC4 8010D704 84440010 */  lh         $a0, 0x10($v0)
/* C3AC8 8010D708 8C420014 */  lw         $v0, 0x14($v0)
/* C3ACC 8010D70C 0040F809 */  jalr       $v0
/* C3AD0 8010D710 00642021 */   addu      $a0, $v1, $a0
/* C3AD4 8010D714 3C01800D */  lui        $at, %hi(D_race_800CDC38)
/* C3AD8 8010D718 C422DC38 */  lwc1       $f2, %lo(D_race_800CDC38)($at)
/* C3ADC 8010D71C 3C01800D */  lui        $at, %hi(D_race_800CDC3C)
/* C3AE0 8010D720 C420DC3C */  lwc1       $f0, %lo(D_race_800CDC3C)($at)
/* C3AE4 8010D724 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* C3AE8 8010D728 24050041 */  addiu      $a1, $zero, 0x41
/* C3AEC 8010D72C E7A20010 */  swc1       $f2, 0x10($sp)
/* C3AF0 8010D730 E7A00014 */  swc1       $f0, 0x14($sp)
/* C3AF4 8010D734 E7A00018 */  swc1       $f0, 0x18($sp)
/* C3AF8 8010D738 8E240004 */  lw         $a0, 0x4($s1)
/* C3AFC 8010D73C 0C046530 */  jal        func_race_801194C0
/* C3B00 8010D740 27A60020 */   addiu     $a2, $sp, 0x20
.Lrace_8010D744:
/* C3B04 8010D744 8E020014 */  lw         $v0, 0x14($s0)
/* C3B08 8010D748 30420001 */  andi       $v0, $v0, 0x1
/* C3B0C 8010D74C 14400003 */  bnez       $v0, .Lrace_8010D75C
/* C3B10 8010D750 00000000 */   nop
/* C3B14 8010D754 0C044B9A */  jal        func_race_80112E68
/* C3B18 8010D758 26240018 */   addiu     $a0, $s1, 0x18
.Lrace_8010D75C:
/* C3B1C 8010D75C 8E220D04 */  lw         $v0, 0xD04($s1)
/* C3B20 8010D760 2403FF7F */  addiu      $v1, $zero, -0x81
/* C3B24 8010D764 00431024 */  and        $v0, $v0, $v1
/* C3B28 8010D768 AE220D04 */  sw         $v0, 0xD04($s1)
.Lrace_8010D76C:
/* C3B2C 8010D76C 8FBF0038 */  lw         $ra, 0x38($sp)
/* C3B30 8010D770 8FB10034 */  lw         $s1, 0x34($sp)
/* C3B34 8010D774 8FB00030 */  lw         $s0, 0x30($sp)
/* C3B38 8010D778 03E00008 */  jr         $ra
/* C3B3C 8010D77C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8010D780
/* C3B40 8010D780 27BDFF98 */  addiu      $sp, $sp, -0x68
/* C3B44 8010D784 AFB5005C */  sw         $s5, 0x5C($sp)
/* C3B48 8010D788 0080A821 */  addu       $s5, $a0, $zero
/* C3B4C 8010D78C AFB40058 */  sw         $s4, 0x58($sp)
/* C3B50 8010D790 00A0A021 */  addu       $s4, $a1, $zero
/* C3B54 8010D794 AFB60060 */  sw         $s6, 0x60($sp)
/* C3B58 8010D798 00C0B021 */  addu       $s6, $a2, $zero
/* C3B5C 8010D79C 240303E8 */  addiu      $v1, $zero, 0x3E8
/* C3B60 8010D7A0 AFBF0064 */  sw         $ra, 0x64($sp)
/* C3B64 8010D7A4 AFB30054 */  sw         $s3, 0x54($sp)
/* C3B68 8010D7A8 AFB20050 */  sw         $s2, 0x50($sp)
/* C3B6C 8010D7AC AFB1004C */  sw         $s1, 0x4C($sp)
/* C3B70 8010D7B0 AFB00048 */  sw         $s0, 0x48($sp)
/* C3B74 8010D7B4 AEA30D78 */  sw         $v1, 0xD78($s5)
/* C3B78 8010D7B8 26A30C70 */  addiu      $v1, $s5, 0xC70
/* C3B7C 8010D7BC 8EA20D04 */  lw         $v0, 0xD04($s5)
/* C3B80 8010D7C0 00002821 */  addu       $a1, $zero, $zero
/* C3B84 8010D7C4 AEB60D74 */  sw         $s6, 0xD74($s5)
/* C3B88 8010D7C8 34420800 */  ori        $v0, $v0, 0x800
/* C3B8C 8010D7CC AEA20D04 */  sw         $v0, 0xD04($s5)
/* C3B90 8010D7D0 8C620014 */  lw         $v0, 0x14($v1)
/* C3B94 8010D7D4 24130001 */  addiu      $s3, $zero, 0x1
/* C3B98 8010D7D8 34420010 */  ori        $v0, $v0, 0x10
/* C3B9C 8010D7DC AC620014 */  sw         $v0, 0x14($v1)
/* C3BA0 8010D7E0 26A30018 */  addiu      $v1, $s5, 0x18
/* C3BA4 8010D7E4 8C62039C */  lw         $v0, 0x39C($v1)
/* C3BA8 8010D7E8 26B202B4 */  addiu      $s2, $s5, 0x2B4
/* C3BAC 8010D7EC 34420002 */  ori        $v0, $v0, 0x2
/* C3BB0 8010D7F0 AC62039C */  sw         $v0, 0x39C($v1)
/* C3BB4 8010D7F4 8E820024 */  lw         $v0, 0x24($s4)
/* C3BB8 8010D7F8 8E900078 */  lw         $s0, 0x78($s4)
/* C3BBC 8010D7FC 844400B8 */  lh         $a0, 0xB8($v0)
/* C3BC0 8010D800 8C4200BC */  lw         $v0, 0xBC($v0)
/* C3BC4 8010D804 0040F809 */  jalr       $v0
/* C3BC8 8010D808 02842021 */   addu      $a0, $s4, $a0
/* C3BCC 8010D80C 02402021 */  addu       $a0, $s2, $zero
/* C3BD0 8010D810 02002821 */  addu       $a1, $s0, $zero
/* C3BD4 8010D814 8E8700A8 */  lw         $a3, 0xA8($s4)
/* C3BD8 8010D818 C6800084 */  lwc1       $f0, 0x84($s4)
/* C3BDC 8010D81C 00403021 */  addu       $a2, $v0, $zero
/* C3BE0 8010D820 0C01956B */  jal        func_800655AC
/* C3BE4 8010D824 E7A00010 */   swc1      $f0, 0x10($sp)
/* C3BE8 8010D828 26900004 */  addiu      $s0, $s4, 0x4
.Lrace_8010D82C:
/* C3BEC 8010D82C 2E620003 */  sltiu      $v0, $s3, 0x3
/* C3BF0 8010D830 10400013 */  beqz       $v0, .Lrace_8010D880
/* C3BF4 8010D834 02402021 */   addu      $a0, $s2, $zero
/* C3BF8 8010D838 8E110078 */  lw         $s1, 0x78($s0)
/* C3BFC 8010D83C 1220000D */  beqz       $s1, .Lrace_8010D874
/* C3C00 8010D840 02602821 */   addu      $a1, $s3, $zero
/* C3C04 8010D844 8E820024 */  lw         $v0, 0x24($s4)
/* C3C08 8010D848 844400B8 */  lh         $a0, 0xB8($v0)
/* C3C0C 8010D84C 8C4200BC */  lw         $v0, 0xBC($v0)
/* C3C10 8010D850 0040F809 */  jalr       $v0
/* C3C14 8010D854 02842021 */   addu      $a0, $s4, $a0
/* C3C18 8010D858 02402021 */  addu       $a0, $s2, $zero
/* C3C1C 8010D85C 02202821 */  addu       $a1, $s1, $zero
/* C3C20 8010D860 8E0700A8 */  lw         $a3, 0xA8($s0)
/* C3C24 8010D864 C6000084 */  lwc1       $f0, 0x84($s0)
/* C3C28 8010D868 00403021 */  addu       $a2, $v0, $zero
/* C3C2C 8010D86C 0C0196C4 */  jal        func_80065B10
/* C3C30 8010D870 E7A00010 */   swc1      $f0, 0x10($sp)
.Lrace_8010D874:
/* C3C34 8010D874 26100004 */  addiu      $s0, $s0, 0x4
/* C3C38 8010D878 0804360B */  j          .Lrace_8010D82C
/* C3C3C 8010D87C 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_8010D880:
/* C3C40 8010D880 0C01971D */  jal        func_80065C74
/* C3C44 8010D884 00002821 */   addu      $a1, $zero, $zero
/* C3C48 8010D888 3C030001 */  lui        $v1, (0x10000 >> 16)
/* C3C4C 8010D88C 8E42005C */  lw         $v0, 0x5C($s2)
/* C3C50 8010D890 3C01800D */  lui        $at, %hi(D_race_800CDC40)
/* C3C54 8010D894 C422DC40 */  lwc1       $f2, %lo(D_race_800CDC40)($at)
/* C3C58 8010D898 00431025 */  or         $v0, $v0, $v1
/* C3C5C 8010D89C AE42005C */  sw         $v0, 0x5C($s2)
/* C3C60 8010D8A0 C6800028 */  lwc1       $f0, 0x28($s4)
/* C3C64 8010D8A4 E6400028 */  swc1       $f0, 0x28($s2)
/* C3C68 8010D8A8 C680002C */  lwc1       $f0, 0x2C($s4)
/* C3C6C 8010D8AC E640002C */  swc1       $f0, 0x2C($s2)
/* C3C70 8010D8B0 C6800030 */  lwc1       $f0, 0x30($s4)
/* C3C74 8010D8B4 E6400030 */  swc1       $f0, 0x30($s2)
/* C3C78 8010D8B8 C6800034 */  lwc1       $f0, 0x34($s4)
/* C3C7C 8010D8BC E6400034 */  swc1       $f0, 0x34($s2)
/* C3C80 8010D8C0 C6800038 */  lwc1       $f0, 0x38($s4)
/* C3C84 8010D8C4 E6400038 */  swc1       $f0, 0x38($s2)
/* C3C88 8010D8C8 C680003C */  lwc1       $f0, 0x3C($s4)
/* C3C8C 8010D8CC E640003C */  swc1       $f0, 0x3C($s2)
/* C3C90 8010D8D0 C6800040 */  lwc1       $f0, 0x40($s4)
/* C3C94 8010D8D4 E6400040 */  swc1       $f0, 0x40($s2)
/* C3C98 8010D8D8 C6800044 */  lwc1       $f0, 0x44($s4)
/* C3C9C 8010D8DC E6400044 */  swc1       $f0, 0x44($s2)
/* C3CA0 8010D8E0 C6800048 */  lwc1       $f0, 0x48($s4)
/* C3CA4 8010D8E4 E6400048 */  swc1       $f0, 0x48($s2)
/* C3CA8 8010D8E8 8E88004C */  lw         $t0, 0x4C($s4)
/* C3CAC 8010D8EC 8E890050 */  lw         $t1, 0x50($s4)
/* C3CB0 8010D8F0 8E8A0054 */  lw         $t2, 0x54($s4)
/* C3CB4 8010D8F4 AE48004C */  sw         $t0, 0x4C($s2)
/* C3CB8 8010D8F8 AE490050 */  sw         $t1, 0x50($s2)
/* C3CBC 8010D8FC AE4A0054 */  sw         $t2, 0x54($s2)
/* C3CC0 8010D900 E642000C */  swc1       $f2, 0xC($s2)
/* C3CC4 8010D904 8EA40004 */  lw         $a0, 0x4($s5)
/* C3CC8 8010D908 0C04654F */  jal        func_race_8011953C
/* C3CCC 8010D90C 24050008 */   addiu     $a1, $zero, 0x8
/* C3CD0 8010D910 1040001B */  beqz       $v0, .Lrace_8010D980
/* C3CD4 8010D914 AEA20DA4 */   sw        $v0, 0xDA4($s5)
/* C3CD8 8010D918 3C01800D */  lui        $at, %hi(D_race_800CDC44)
/* C3CDC 8010D91C C420DC44 */  lwc1       $f0, %lo(D_race_800CDC44)($at)
/* C3CE0 8010D920 3C01800D */  lui        $at, %hi(D_race_800CDC48)
/* C3CE4 8010D924 C422DC48 */  lwc1       $f2, %lo(D_race_800CDC48)($at)
/* C3CE8 8010D928 E440002C */  swc1       $f0, 0x2C($v0)
/* C3CEC 8010D92C E4420030 */  swc1       $f2, 0x30($v0)
/* C3CF0 8010D930 8E820024 */  lw         $v0, 0x24($s4)
/* C3CF4 8010D934 27A50038 */  addiu      $a1, $sp, 0x38
/* C3CF8 8010D938 84440010 */  lh         $a0, 0x10($v0)
/* C3CFC 8010D93C 8C420014 */  lw         $v0, 0x14($v0)
/* C3D00 8010D940 0040F809 */  jalr       $v0
/* C3D04 8010D944 02842021 */   addu      $a0, $s4, $a0
/* C3D08 8010D948 8EA20DA4 */  lw         $v0, 0xDA4($s5)
/* C3D0C 8010D94C 8FA80038 */  lw         $t0, 0x38($sp)
/* C3D10 8010D950 8FA9003C */  lw         $t1, 0x3C($sp)
/* C3D14 8010D954 8FAA0040 */  lw         $t2, 0x40($sp)
/* C3D18 8010D958 AC480014 */  sw         $t0, 0x14($v0)
/* C3D1C 8010D95C AC490018 */  sw         $t1, 0x18($v0)
/* C3D20 8010D960 AC4A001C */  sw         $t2, 0x1C($v0)
/* C3D24 8010D964 8EA30DA4 */  lw         $v1, 0xDA4($s5)
/* C3D28 8010D968 8C620034 */  lw         $v0, 0x34($v1)
/* C3D2C 8010D96C 24050001 */  addiu      $a1, $zero, 0x1
/* C3D30 8010D970 84440010 */  lh         $a0, 0x10($v0)
/* C3D34 8010D974 8C420014 */  lw         $v0, 0x14($v0)
/* C3D38 8010D978 0040F809 */  jalr       $v0
/* C3D3C 8010D97C 00642021 */   addu      $a0, $v1, $a0
.Lrace_8010D980:
/* C3D40 8010D980 26A40018 */  addiu      $a0, $s5, 0x18
/* C3D44 8010D984 27A50018 */  addiu      $a1, $sp, 0x18
/* C3D48 8010D988 02C03021 */  addu       $a2, $s6, $zero
/* C3D4C 8010D98C 24030001 */  addiu      $v1, $zero, 0x1
/* C3D50 8010D990 24020040 */  addiu      $v0, $zero, 0x40
/* C3D54 8010D994 AFA00028 */  sw         $zero, 0x28($sp)
/* C3D58 8010D998 AFA30018 */  sw         $v1, 0x18($sp)
/* C3D5C 8010D99C AFA2002C */  sw         $v0, 0x2C($sp)
/* C3D60 8010D9A0 AFA0001C */  sw         $zero, 0x1C($sp)
/* C3D64 8010D9A4 AFA00030 */  sw         $zero, 0x30($sp)
/* C3D68 8010D9A8 AFA30020 */  sw         $v1, 0x20($sp)
/* C3D6C 8010D9AC AFA00034 */  sw         $zero, 0x34($sp)
/* C3D70 8010D9B0 0C0456DF */  jal        func_race_80115B7C
/* C3D74 8010D9B4 AFA00024 */   sw        $zero, 0x24($sp)
/* C3D78 8010D9B8 0C03F6E8 */  jal        func_race_800FDBA0
/* C3D7C 8010D9BC 26A403FC */   addiu     $a0, $s5, 0x3FC
/* C3D80 8010D9C0 8FBF0064 */  lw         $ra, 0x64($sp)
/* C3D84 8010D9C4 8FB60060 */  lw         $s6, 0x60($sp)
/* C3D88 8010D9C8 8FB5005C */  lw         $s5, 0x5C($sp)
/* C3D8C 8010D9CC 8FB40058 */  lw         $s4, 0x58($sp)
/* C3D90 8010D9D0 8FB30054 */  lw         $s3, 0x54($sp)
/* C3D94 8010D9D4 8FB20050 */  lw         $s2, 0x50($sp)
/* C3D98 8010D9D8 8FB1004C */  lw         $s1, 0x4C($sp)
/* C3D9C 8010D9DC 8FB00048 */  lw         $s0, 0x48($sp)
/* C3DA0 8010D9E0 03E00008 */  jr         $ra
/* C3DA4 8010D9E4 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_8010D9E8
/* C3DA8 8010D9E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C3DAC 8010D9EC AFB10014 */  sw         $s1, 0x14($sp)
/* C3DB0 8010D9F0 00808821 */  addu       $s1, $a0, $zero
/* C3DB4 8010D9F4 AFBF0018 */  sw         $ra, 0x18($sp)
/* C3DB8 8010D9F8 AFB00010 */  sw         $s0, 0x10($sp)
/* C3DBC 8010D9FC 8E250DA4 */  lw         $a1, 0xDA4($s1)
/* C3DC0 8010DA00 10A00006 */  beqz       $a1, .Lrace_8010DA1C
/* C3DC4 8010DA04 2403F7FF */   addiu     $v1, $zero, -0x801
/* C3DC8 8010DA08 8E240004 */  lw         $a0, 0x4($s1)
/* C3DCC 8010DA0C 0C046564 */  jal        func_race_80119590
/* C3DD0 8010DA10 00000000 */   nop
/* C3DD4 8010DA14 AE200DA4 */  sw         $zero, 0xDA4($s1)
/* C3DD8 8010DA18 2403F7FF */  addiu      $v1, $zero, -0x801
.Lrace_8010DA1C:
/* C3DDC 8010DA1C 8E220D04 */  lw         $v0, 0xD04($s1)
/* C3DE0 8010DA20 26240C70 */  addiu      $a0, $s1, 0xC70
/* C3DE4 8010DA24 AE200D74 */  sw         $zero, 0xD74($s1)
/* C3DE8 8010DA28 00431024 */  and        $v0, $v0, $v1
/* C3DEC 8010DA2C AE220D04 */  sw         $v0, 0xD04($s1)
/* C3DF0 8010DA30 8C820014 */  lw         $v0, 0x14($a0)
/* C3DF4 8010DA34 2403FFEF */  addiu      $v1, $zero, -0x11
/* C3DF8 8010DA38 00431024 */  and        $v0, $v0, $v1
/* C3DFC 8010DA3C AC820014 */  sw         $v0, 0x14($a0)
/* C3E00 8010DA40 262202B4 */  addiu      $v0, $s1, 0x2B4
/* C3E04 8010DA44 8C430024 */  lw         $v1, 0x24($v0)
/* C3E08 8010DA48 846400B0 */  lh         $a0, 0xB0($v1)
/* C3E0C 8010DA4C 00442021 */  addu       $a0, $v0, $a0
/* C3E10 8010DA50 8C6200B4 */  lw         $v0, 0xB4($v1)
/* C3E14 8010DA54 0040F809 */  jalr       $v0
/* C3E18 8010DA58 26300018 */   addiu     $s0, $s1, 0x18
/* C3E1C 8010DA5C 0C0456E9 */  jal        func_race_80115BA4
/* C3E20 8010DA60 02002021 */   addu      $a0, $s0, $zero
/* C3E24 8010DA64 0C03F700 */  jal        func_race_800FDC00
/* C3E28 8010DA68 262403FC */   addiu     $a0, $s1, 0x3FC
/* C3E2C 8010DA6C 8FBF0018 */  lw         $ra, 0x18($sp)
/* C3E30 8010DA70 8FB10014 */  lw         $s1, 0x14($sp)
/* C3E34 8010DA74 8FB00010 */  lw         $s0, 0x10($sp)
/* C3E38 8010DA78 03E00008 */  jr         $ra
/* C3E3C 8010DA7C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010DA80
/* C3E40 8010DA80 8C830D0C */  lw         $v1, 0xD0C($a0)
/* C3E44 8010DA84 24020002 */  addiu      $v0, $zero, 0x2
/* C3E48 8010DA88 14620003 */  bne        $v1, $v0, .Lrace_8010DA98
/* C3E4C 8010DA8C 24020001 */   addiu     $v0, $zero, 0x1
/* C3E50 8010DA90 03E00008 */  jr         $ra
/* C3E54 8010DA94 AC800D0C */   sw        $zero, 0xD0C($a0)
.Lrace_8010DA98:
/* C3E58 8010DA98 14620002 */  bne        $v1, $v0, .Lrace_8010DAA4
/* C3E5C 8010DA9C 24020003 */   addiu     $v0, $zero, 0x3
/* C3E60 8010DAA0 AC820D0C */  sw         $v0, 0xD0C($a0)
.Lrace_8010DAA4:
/* C3E64 8010DAA4 03E00008 */  jr         $ra
/* C3E68 8010DAA8 00000000 */   nop

glabel func_race_8010DAAC
/* C3E6C 8010DAAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3E70 8010DAB0 AFB00010 */  sw         $s0, 0x10($sp)
/* C3E74 8010DAB4 00808021 */  addu       $s0, $a0, $zero
/* C3E78 8010DAB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3E7C 8010DABC 8E030D0C */  lw         $v1, 0xD0C($s0)
/* C3E80 8010DAC0 24020001 */  addiu      $v0, $zero, 0x1
/* C3E84 8010DAC4 10620019 */  beq        $v1, $v0, .Lrace_8010DB2C
/* C3E88 8010DAC8 00000000 */   nop
/* C3E8C 8010DACC 54600017 */  bnel       $v1, $zero, .Lrace_8010DB2C
/* C3E90 8010DAD0 AE020D0C */   sw        $v0, 0xD0C($s0)
/* C3E94 8010DAD4 8E020CE8 */  lw         $v0, 0xCE8($s0)
/* C3E98 8010DAD8 24420001 */  addiu      $v0, $v0, 0x1
/* C3E9C 8010DADC 18400011 */  blez       $v0, .Lrace_8010DB24
/* C3EA0 8010DAE0 AE020CE8 */   sw        $v0, 0xCE8($s0)
/* C3EA4 8010DAE4 8E030CE4 */  lw         $v1, 0xCE4($s0)
/* C3EA8 8010DAE8 0062102B */  sltu       $v0, $v1, $v0
/* C3EAC 8010DAEC 1040000D */  beqz       $v0, .Lrace_8010DB24
/* C3EB0 8010DAF0 24620001 */   addiu     $v0, $v1, 0x1
/* C3EB4 8010DAF4 8E04000C */  lw         $a0, 0xC($s0)
/* C3EB8 8010DAF8 02002821 */  addu       $a1, $s0, $zero
/* C3EBC 8010DAFC 0C0446A7 */  jal        func_race_80111A9C
/* C3EC0 8010DB00 AE020CE4 */   sw        $v0, 0xCE4($s0)
/* C3EC4 8010DB04 10400007 */  beqz       $v0, .Lrace_8010DB24
/* C3EC8 8010DB08 AE020D80 */   sw        $v0, 0xD80($s0)
/* C3ECC 8010DB0C 92030CE0 */  lbu        $v1, 0xCE0($s0)
/* C3ED0 8010DB10 8E020CE4 */  lw         $v0, 0xCE4($s0)
/* C3ED4 8010DB14 0043102B */  sltu       $v0, $v0, $v1
/* C3ED8 8010DB18 10400002 */  beqz       $v0, .Lrace_8010DB24
/* C3EDC 8010DB1C 240207D0 */   addiu     $v0, $zero, 0x7D0
/* C3EE0 8010DB20 AE020D7C */  sw         $v0, 0xD7C($s0)
.Lrace_8010DB24:
/* C3EE4 8010DB24 24020001 */  addiu      $v0, $zero, 0x1
/* C3EE8 8010DB28 AE020D0C */  sw         $v0, 0xD0C($s0)
.Lrace_8010DB2C:
/* C3EEC 8010DB2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C3EF0 8010DB30 8FB00010 */  lw         $s0, 0x10($sp)
/* C3EF4 8010DB34 03E00008 */  jr         $ra
/* C3EF8 8010DB38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010DB3C
/* C3EFC 8010DB3C 8C830D0C */  lw         $v1, 0xD0C($a0)
/* C3F00 8010DB40 24020001 */  addiu      $v0, $zero, 0x1
/* C3F04 8010DB44 14620002 */  bne        $v1, $v0, .Lrace_8010DB50
/* C3F08 8010DB48 24020002 */   addiu     $v0, $zero, 0x2
/* C3F0C 8010DB4C AC820D0C */  sw         $v0, 0xD0C($a0)
.Lrace_8010DB50:
/* C3F10 8010DB50 03E00008 */  jr         $ra
/* C3F14 8010DB54 00000000 */   nop

glabel func_race_8010DB58
/* C3F18 8010DB58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3F1C 8010DB5C 00801021 */  addu       $v0, $a0, $zero
/* C3F20 8010DB60 00A03021 */  addu       $a2, $a1, $zero
/* C3F24 8010DB64 AFBF0010 */  sw         $ra, 0x10($sp)
/* C3F28 8010DB68 8C44000C */  lw         $a0, 0xC($v0)
/* C3F2C 8010DB6C 0C044725 */  jal        func_race_80111C94
/* C3F30 8010DB70 00402821 */   addu      $a1, $v0, $zero
/* C3F34 8010DB74 8FBF0010 */  lw         $ra, 0x10($sp)
/* C3F38 8010DB78 03E00008 */  jr         $ra
/* C3F3C 8010DB7C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010DB80
/* C3F40 8010DB80 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C3F44 8010DB84 AFB00030 */  sw         $s0, 0x30($sp)
/* C3F48 8010DB88 00808021 */  addu       $s0, $a0, $zero
/* C3F4C 8010DB8C AFBF0038 */  sw         $ra, 0x38($sp)
/* C3F50 8010DB90 AFB10034 */  sw         $s1, 0x34($sp)
/* C3F54 8010DB94 8E03005C */  lw         $v1, 0x5C($s0)
/* C3F58 8010DB98 27B10020 */  addiu      $s1, $sp, 0x20
/* C3F5C 8010DB9C 8C620024 */  lw         $v0, 0x24($v1)
/* C3F60 8010DBA0 02202821 */  addu       $a1, $s1, $zero
/* C3F64 8010DBA4 84440010 */  lh         $a0, 0x10($v0)
/* C3F68 8010DBA8 8C420014 */  lw         $v0, 0x14($v0)
/* C3F6C 8010DBAC 0040F809 */  jalr       $v0
/* C3F70 8010DBB0 00642021 */   addu      $a0, $v1, $a0
/* C3F74 8010DBB4 3C01800D */  lui        $at, %hi(D_race_800CDC4C)
/* C3F78 8010DBB8 C422DC4C */  lwc1       $f2, %lo(D_race_800CDC4C)($at)
/* C3F7C 8010DBBC 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* C3F80 8010DBC0 92050D1B */  lbu        $a1, 0xD1B($s0)
/* C3F84 8010DBC4 3C01800D */  lui        $at, %hi(D_race_800CDC50)
/* C3F88 8010DBC8 C420DC50 */  lwc1       $f0, %lo(D_race_800CDC50)($at)
/* C3F8C 8010DBCC E7A20010 */  swc1       $f2, 0x10($sp)
/* C3F90 8010DBD0 E7A00014 */  swc1       $f0, 0x14($sp)
/* C3F94 8010DBD4 E7A00018 */  swc1       $f0, 0x18($sp)
/* C3F98 8010DBD8 8E040004 */  lw         $a0, 0x4($s0)
/* C3F9C 8010DBDC 0C046530 */  jal        func_race_801194C0
/* C3FA0 8010DBE0 02203021 */   addu      $a2, $s1, $zero
/* C3FA4 8010DBE4 240503E7 */  addiu      $a1, $zero, 0x3E7
/* C3FA8 8010DBE8 00A03021 */  addu       $a2, $a1, $zero
/* C3FAC 8010DBEC 8E040ADC */  lw         $a0, 0xADC($s0)
/* C3FB0 8010DBF0 0C036D74 */  jal        func_race_800DB5D0
/* C3FB4 8010DBF4 02203821 */   addu      $a3, $s1, $zero
/* C3FB8 8010DBF8 8FBF0038 */  lw         $ra, 0x38($sp)
/* C3FBC 8010DBFC 8FB10034 */  lw         $s1, 0x34($sp)
/* C3FC0 8010DC00 8FB00030 */  lw         $s0, 0x30($sp)
/* C3FC4 8010DC04 03E00008 */  jr         $ra
/* C3FC8 8010DC08 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8010DC0C
/* C3FCC 8010DC0C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* C3FD0 8010DC10 AFB10034 */  sw         $s1, 0x34($sp)
/* C3FD4 8010DC14 00808821 */  addu       $s1, $a0, $zero
/* C3FD8 8010DC18 AFBF0044 */  sw         $ra, 0x44($sp)
/* C3FDC 8010DC1C AFB40040 */  sw         $s4, 0x40($sp)
/* C3FE0 8010DC20 AFB3003C */  sw         $s3, 0x3C($sp)
/* C3FE4 8010DC24 AFB20038 */  sw         $s2, 0x38($sp)
/* C3FE8 8010DC28 AFB00030 */  sw         $s0, 0x30($sp)
/* C3FEC 8010DC2C F7B40048 */  sdc1       $f20, 0x48($sp)
/* C3FF0 8010DC30 8E220CC4 */  lw         $v0, 0xCC4($s1)
/* C3FF4 8010DC34 10400065 */  beqz       $v0, .Lrace_8010DDCC
/* C3FF8 8010DC38 00000000 */   nop
/* C3FFC 8010DC3C 8E220D04 */  lw         $v0, 0xD04($s1)
/* C4000 8010DC40 30420010 */  andi       $v0, $v0, 0x10
/* C4004 8010DC44 10400005 */  beqz       $v0, .Lrace_8010DC5C
/* C4008 8010DC48 00009021 */   addu      $s2, $zero, $zero
/* C400C 8010DC4C 8E220D04 */  lw         $v0, 0xD04($s1)
/* C4010 8010DC50 24039FFF */  addiu      $v1, $zero, -0x6001
/* C4014 8010DC54 08043771 */  j          .Lrace_8010DDC4
/* C4018 8010DC58 AE200D70 */   sw        $zero, 0xD70($s1)
.Lrace_8010DC5C:
/* C401C 8010DC5C 8E230D70 */  lw         $v1, 0xD70($s1)
/* C4020 8010DC60 1060000A */  beqz       $v1, .Lrace_8010DC8C
/* C4024 8010DC64 00A3102B */   sltu      $v0, $a1, $v1
/* C4028 8010DC68 14400007 */  bnez       $v0, .Lrace_8010DC88
/* C402C 8010DC6C 00651023 */   subu      $v0, $v1, $a1
/* C4030 8010DC70 8E220D04 */  lw         $v0, 0xD04($s1)
/* C4034 8010DC74 2403BFFF */  addiu      $v1, $zero, -0x4001
/* C4038 8010DC78 AE200D70 */  sw         $zero, 0xD70($s1)
/* C403C 8010DC7C 00431024 */  and        $v0, $v0, $v1
/* C4040 8010DC80 08043723 */  j          .Lrace_8010DC8C
/* C4044 8010DC84 AE220D04 */   sw        $v0, 0xD04($s1)
.Lrace_8010DC88:
/* C4048 8010DC88 AE220D70 */  sw         $v0, 0xD70($s1)
.Lrace_8010DC8C:
/* C404C 8010DC8C 00008021 */  addu       $s0, $zero, $zero
/* C4050 8010DC90 241400FF */  addiu      $s4, $zero, 0xFF
/* C4054 8010DC94 3C01800D */  lui        $at, %hi(D_race_800CDC54)
/* C4058 8010DC98 C434DC54 */  lwc1       $f20, %lo(D_race_800CDC54)($at)
/* C405C 8010DC9C 27B30010 */  addiu      $s3, $sp, 0x10
/* C4060 8010DCA0 8E260568 */  lw         $a2, 0x568($s1)
/* C4064 8010DCA4 8E27056C */  lw         $a3, 0x56C($s1)
/* C4068 8010DCA8 8E280570 */  lw         $t0, 0x570($s1)
/* C406C 8010DCAC AFA60010 */  sw         $a2, 0x10($sp)
/* C4070 8010DCB0 AFA70014 */  sw         $a3, 0x14($sp)
/* C4074 8010DCB4 AFA80018 */  sw         $t0, 0x18($sp)
.Lrace_8010DCB8:
/* C4078 8010DCB8 2E020004 */  sltiu      $v0, $s0, 0x4
/* C407C 8010DCBC 10400022 */  beqz       $v0, .Lrace_8010DD48
/* C4080 8010DCC0 00000000 */   nop
/* C4084 8010DCC4 16400020 */  bnez       $s2, .Lrace_8010DD48
/* C4088 8010DCC8 00000000 */   nop
/* C408C 8010DCCC 8E220CC4 */  lw         $v0, 0xCC4($s1)
/* C4090 8010DCD0 00501021 */  addu       $v0, $v0, $s0
/* C4094 8010DCD4 90450020 */  lbu        $a1, 0x20($v0)
/* C4098 8010DCD8 14B40003 */  bne        $a1, $s4, .Lrace_8010DCE8
/* C409C 8010DCDC 00000000 */   nop
.Lrace_8010DCE0:
/* C40A0 8010DCE0 0804372E */  j          .Lrace_8010DCB8
/* C40A4 8010DCE4 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_8010DCE8:
/* C40A8 8010DCE8 8E240010 */  lw         $a0, 0x10($s1)
/* C40AC 8010DCEC 0C03C8CA */  jal        func_race_800F2328
/* C40B0 8010DCF0 00000000 */   nop
/* C40B4 8010DCF4 8E220CC4 */  lw         $v0, 0xCC4($s1)
/* C40B8 8010DCF8 C7A20010 */  lwc1       $f2, 0x10($sp)
/* C40BC 8010DCFC C4400000 */  lwc1       $f0, 0x0($v0)
/* C40C0 8010DD00 E7A00020 */  swc1       $f0, 0x20($sp)
/* C40C4 8010DD04 C4480004 */  lwc1       $f8, 0x4($v0)
/* C40C8 8010DD08 46001082 */  mul.s      $f2, $f2, $f0
/* C40CC 8010DD0C E7A80024 */  swc1       $f8, 0x24($sp)
/* C40D0 8010DD10 C4460008 */  lwc1       $f6, 0x8($v0)
/* C40D4 8010DD14 E7A60028 */  swc1       $f6, 0x28($sp)
/* C40D8 8010DD18 C6640004 */  lwc1       $f4, 0x4($s3)
/* C40DC 8010DD1C 46082102 */  mul.s      $f4, $f4, $f8
/* C40E0 8010DD20 C6600008 */  lwc1       $f0, 0x8($s3)
/* C40E4 8010DD24 46060002 */  mul.s      $f0, $f0, $f6
/* C40E8 8010DD28 46041080 */  add.s      $f2, $f2, $f4
/* C40EC 8010DD2C 46001080 */  add.s      $f2, $f2, $f0
/* C40F0 8010DD30 4614103E */  c.le.s     $f2, $f20
/* C40F4 8010DD34 00000000 */  nop
/* C40F8 8010DD38 4503FFE9 */  bc1tl      .Lrace_8010DCE0
/* C40FC 8010DD3C 24120001 */   addiu     $s2, $zero, 0x1
/* C4100 8010DD40 0804372E */  j          .Lrace_8010DCB8
/* C4104 8010DD44 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_8010DD48:
/* C4108 8010DD48 8E230D04 */  lw         $v1, 0xD04($s1)
/* C410C 8010DD4C 30622000 */  andi       $v0, $v1, 0x2000
/* C4110 8010DD50 1040000D */  beqz       $v0, .Lrace_8010DD88
/* C4114 8010DD54 30624000 */   andi      $v0, $v1, 0x4000
/* C4118 8010DD58 12400005 */  beqz       $s2, .Lrace_8010DD70
/* C411C 8010DD5C 00601021 */   addu      $v0, $v1, $zero
/* C4120 8010DD60 2403DFFF */  addiu      $v1, $zero, -0x2001
/* C4124 8010DD64 00431024 */  and        $v0, $v0, $v1
/* C4128 8010DD68 08043772 */  j          .Lrace_8010DDC8
/* C412C 8010DD6C AE200D70 */   sw        $zero, 0xD70($s1)
.Lrace_8010DD70:
/* C4130 8010DD70 8E220D70 */  lw         $v0, 0xD70($s1)
/* C4134 8010DD74 14400015 */  bnez       $v0, .Lrace_8010DDCC
/* C4138 8010DD78 2402DFFF */   addiu     $v0, $zero, -0x2001
/* C413C 8010DD7C 00621024 */  and        $v0, $v1, $v0
/* C4140 8010DD80 08043772 */  j          .Lrace_8010DDC8
/* C4144 8010DD84 34424000 */   ori       $v0, $v0, 0x4000
.Lrace_8010DD88:
/* C4148 8010DD88 14400007 */  bnez       $v0, .Lrace_8010DDA8
/* C414C 8010DD8C 00000000 */   nop
/* C4150 8010DD90 1640000E */  bnez       $s2, .Lrace_8010DDCC
/* C4154 8010DD94 240301F4 */   addiu     $v1, $zero, 0x1F4
/* C4158 8010DD98 8E220D04 */  lw         $v0, 0xD04($s1)
/* C415C 8010DD9C AE230D70 */  sw         $v1, 0xD70($s1)
/* C4160 8010DDA0 08043772 */  j          .Lrace_8010DDC8
/* C4164 8010DDA4 34422000 */   ori       $v0, $v0, 0x2000
.Lrace_8010DDA8:
/* C4168 8010DDA8 16400003 */  bnez       $s2, .Lrace_8010DDB8
/* C416C 8010DDAC 240201F4 */   addiu     $v0, $zero, 0x1F4
/* C4170 8010DDB0 08043773 */  j          .Lrace_8010DDCC
/* C4174 8010DDB4 AE220D70 */   sw        $v0, 0xD70($s1)
.Lrace_8010DDB8:
/* C4178 8010DDB8 8E220D70 */  lw         $v0, 0xD70($s1)
/* C417C 8010DDBC 14400003 */  bnez       $v0, .Lrace_8010DDCC
/* C4180 8010DDC0 24029FFF */   addiu     $v0, $zero, -0x6001
.Lrace_8010DDC4:
/* C4184 8010DDC4 00621024 */  and        $v0, $v1, $v0
.Lrace_8010DDC8:
/* C4188 8010DDC8 AE220D04 */  sw         $v0, 0xD04($s1)
.Lrace_8010DDCC:
/* C418C 8010DDCC 8FBF0044 */  lw         $ra, 0x44($sp)
/* C4190 8010DDD0 8FB40040 */  lw         $s4, 0x40($sp)
/* C4194 8010DDD4 8FB3003C */  lw         $s3, 0x3C($sp)
/* C4198 8010DDD8 8FB20038 */  lw         $s2, 0x38($sp)
/* C419C 8010DDDC 8FB10034 */  lw         $s1, 0x34($sp)
/* C41A0 8010DDE0 8FB00030 */  lw         $s0, 0x30($sp)
/* C41A4 8010DDE4 D7B40048 */  ldc1       $f20, 0x48($sp)
/* C41A8 8010DDE8 03E00008 */  jr         $ra
/* C41AC 8010DDEC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_8010DDF0
/* C41B0 8010DDF0 8C820D04 */  lw         $v0, 0xD04($a0)
/* C41B4 8010DDF4 34428000 */  ori        $v0, $v0, 0x8000
/* C41B8 8010DDF8 AC820D04 */  sw         $v0, 0xD04($a0)
/* C41BC 8010DDFC C4A00000 */  lwc1       $f0, 0x0($a1)
/* C41C0 8010DE00 E4800DF0 */  swc1       $f0, 0xDF0($a0)
/* C41C4 8010DE04 C4A00004 */  lwc1       $f0, 0x4($a1)
/* C41C8 8010DE08 E4800DF4 */  swc1       $f0, 0xDF4($a0)
/* C41CC 8010DE0C C4A00008 */  lwc1       $f0, 0x8($a1)
/* C41D0 8010DE10 03E00008 */  jr         $ra
/* C41D4 8010DE14 E4800DF8 */   swc1      $f0, 0xDF8($a0)

glabel func_race_8010DE18
/* C41D8 8010DE18 3C03FFFF */  lui        $v1, (0xFFFF7FFF >> 16)
/* C41DC 8010DE1C 8C820D04 */  lw         $v0, 0xD04($a0)
/* C41E0 8010DE20 34637FFF */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
/* C41E4 8010DE24 00431024 */  and        $v0, $v0, $v1
/* C41E8 8010DE28 03E00008 */  jr         $ra
/* C41EC 8010DE2C AC820D04 */   sw        $v0, 0xD04($a0)

glabel func_race_8010DE30
/* C41F0 8010DE30 27BDFF90 */  addiu      $sp, $sp, -0x70
/* C41F4 8010DE34 AFB00060 */  sw         $s0, 0x60($sp)
/* C41F8 8010DE38 00808021 */  addu       $s0, $a0, $zero
/* C41FC 8010DE3C 3C02FFFC */  lui        $v0, (0xFFFCFFFF >> 16)
/* C4200 8010DE40 AFBF0064 */  sw         $ra, 0x64($sp)
/* C4204 8010DE44 F7B40068 */  sdc1       $f20, 0x68($sp)
/* C4208 8010DE48 8E030D04 */  lw         $v1, 0xD04($s0)
/* C420C 8010DE4C 3442FFFF */  ori        $v0, $v0, (0xFFFCFFFF & 0xFFFF)
/* C4210 8010DE50 00621024 */  and        $v0, $v1, $v0
/* C4214 8010DE54 30638000 */  andi       $v1, $v1, 0x8000
/* C4218 8010DE58 10600053 */  beqz       $v1, .Lrace_8010DFA8
/* C421C 8010DE5C AE020D04 */   sw        $v0, 0xD04($s0)
/* C4220 8010DE60 8E060568 */  lw         $a2, 0x568($s0)
/* C4224 8010DE64 8E07056C */  lw         $a3, 0x56C($s0)
/* C4228 8010DE68 8E080570 */  lw         $t0, 0x570($s0)
/* C422C 8010DE6C AFA60010 */  sw         $a2, 0x10($sp)
/* C4230 8010DE70 AFA70014 */  sw         $a3, 0x14($sp)
/* C4234 8010DE74 AFA80018 */  sw         $t0, 0x18($sp)
/* C4238 8010DE78 8E03005C */  lw         $v1, 0x5C($s0)
/* C423C 8010DE7C 8C620024 */  lw         $v0, 0x24($v1)
/* C4240 8010DE80 27A50030 */  addiu      $a1, $sp, 0x30
/* C4244 8010DE84 84440010 */  lh         $a0, 0x10($v0)
/* C4248 8010DE88 8C420014 */  lw         $v0, 0x14($v0)
/* C424C 8010DE8C 0040F809 */  jalr       $v0
/* C4250 8010DE90 00642021 */   addu      $a0, $v1, $a0
/* C4254 8010DE94 C6000DF0 */  lwc1       $f0, 0xDF0($s0)
/* C4258 8010DE98 C7A20030 */  lwc1       $f2, 0x30($sp)
/* C425C 8010DE9C 46020001 */  sub.s      $f0, $f0, $f2
/* C4260 8010DEA0 C7A20034 */  lwc1       $f2, 0x34($sp)
/* C4264 8010DEA4 E7A00020 */  swc1       $f0, 0x20($sp)
/* C4268 8010DEA8 C6000DF4 */  lwc1       $f0, 0xDF4($s0)
/* C426C 8010DEAC 46020001 */  sub.s      $f0, $f0, $f2
/* C4270 8010DEB0 C7A20038 */  lwc1       $f2, 0x38($sp)
/* C4274 8010DEB4 E7A00024 */  swc1       $f0, 0x24($sp)
/* C4278 8010DEB8 C6000DF8 */  lwc1       $f0, 0xDF8($s0)
/* C427C 8010DEBC 46020001 */  sub.s      $f0, $f0, $f2
/* C4280 8010DEC0 27A40020 */  addiu      $a0, $sp, 0x20
/* C4284 8010DEC4 00802821 */  addu       $a1, $a0, $zero
/* C4288 8010DEC8 0C000F26 */  jal        func_80003C98
/* C428C 8010DECC E7A00028 */   swc1      $f0, 0x28($sp)
/* C4290 8010DED0 C7AE0010 */  lwc1       $f14, 0x10($sp)
/* C4294 8010DED4 C7B40020 */  lwc1       $f20, 0x20($sp)
/* C4298 8010DED8 46147082 */  mul.s      $f2, $f14, $f20
/* C429C 8010DEDC 27A20010 */  addiu      $v0, $sp, 0x10
/* C42A0 8010DEE0 C44C0004 */  lwc1       $f12, 0x4($v0)
/* C42A4 8010DEE4 C7B20024 */  lwc1       $f18, 0x24($sp)
/* C42A8 8010DEE8 46126102 */  mul.s      $f4, $f12, $f18
/* C42AC 8010DEEC C4460008 */  lwc1       $f6, 0x8($v0)
/* C42B0 8010DEF0 C7B00028 */  lwc1       $f16, 0x28($sp)
/* C42B4 8010DEF4 46103002 */  mul.s      $f0, $f6, $f16
/* C42B8 8010DEF8 46041080 */  add.s      $f2, $f2, $f4
/* C42BC 8010DEFC 46001080 */  add.s      $f2, $f2, $f0
/* C42C0 8010DF00 3C01800D */  lui        $at, %hi(D_race_800CDC58)
/* C42C4 8010DF04 C420DC58 */  lwc1       $f0, %lo(D_race_800CDC58)($at)
/* C42C8 8010DF08 4602003E */  c.le.s     $f0, $f2
/* C42CC 8010DF0C 00000000 */  nop
/* C42D0 8010DF10 45010025 */  bc1t       .Lrace_8010DFA8
/* C42D4 8010DF14 00000000 */   nop
/* C42D8 8010DF18 3C01800D */  lui        $at, %hi(D_race_800CDC5C)
/* C42DC 8010DF1C C420DC5C */  lwc1       $f0, %lo(D_race_800CDC5C)($at)
/* C42E0 8010DF20 E7A00048 */  swc1       $f0, 0x48($sp)
/* C42E4 8010DF24 46000086 */  mov.s      $f2, $f0
/* C42E8 8010DF28 46006202 */  mul.s      $f8, $f12, $f0
/* C42EC 8010DF2C AFA00040 */  sw         $zero, 0x40($sp)
/* C42F0 8010DF30 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* C42F4 8010DF34 460A3182 */  mul.s      $f6, $f6, $f10
/* C42F8 8010DF38 00000000 */  nop
/* C42FC 8010DF3C 46027082 */  mul.s      $f2, $f14, $f2
/* C4300 8010DF40 00000000 */  nop
/* C4304 8010DF44 460A7102 */  mul.s      $f4, $f14, $f10
/* C4308 8010DF48 00000000 */  nop
/* C430C 8010DF4C 460A6302 */  mul.s      $f12, $f12, $f10
/* C4310 8010DF50 46064201 */  sub.s      $f8, $f8, $f6
/* C4314 8010DF54 46144002 */  mul.s      $f0, $f8, $f20
/* C4318 8010DF58 46023181 */  sub.s      $f6, $f6, $f2
/* C431C 8010DF5C 46123082 */  mul.s      $f2, $f6, $f18
/* C4320 8010DF60 460C2101 */  sub.s      $f4, $f4, $f12
/* C4324 8010DF64 46102302 */  mul.s      $f12, $f4, $f16
/* C4328 8010DF68 46020000 */  add.s      $f0, $f0, $f2
/* C432C 8010DF6C AFA00044 */  sw         $zero, 0x44($sp)
/* C4330 8010DF70 E7A40058 */  swc1       $f4, 0x58($sp)
/* C4334 8010DF74 460C0000 */  add.s      $f0, $f0, $f12
/* C4338 8010DF78 E7A80050 */  swc1       $f8, 0x50($sp)
/* C433C 8010DF7C 4600503C */  c.lt.s     $f10, $f0
/* C4340 8010DF80 00000000 */  nop
/* C4344 8010DF84 45000004 */  bc1f       .Lrace_8010DF98
/* C4348 8010DF88 E7A60054 */   swc1      $f6, 0x54($sp)
/* C434C 8010DF8C 8E020D04 */  lw         $v0, 0xD04($s0)
/* C4350 8010DF90 080437E8 */  j          .Lrace_8010DFA0
/* C4354 8010DF94 3C030001 */   lui       $v1, (0x10000 >> 16)
.Lrace_8010DF98:
/* C4358 8010DF98 8E020D04 */  lw         $v0, 0xD04($s0)
/* C435C 8010DF9C 3C030002 */  lui        $v1, (0x20000 >> 16)
.Lrace_8010DFA0:
/* C4360 8010DFA0 00431025 */  or         $v0, $v0, $v1
/* C4364 8010DFA4 AE020D04 */  sw         $v0, 0xD04($s0)
.Lrace_8010DFA8:
/* C4368 8010DFA8 8FBF0064 */  lw         $ra, 0x64($sp)
/* C436C 8010DFAC 8FB00060 */  lw         $s0, 0x60($sp)
/* C4370 8010DFB0 D7B40068 */  ldc1       $f20, 0x68($sp)
/* C4374 8010DFB4 03E00008 */  jr         $ra
/* C4378 8010DFB8 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_8010DFBC
/* C437C 8010DFBC C4A40000 */  lwc1       $f4, 0x0($a1)
/* C4380 8010DFC0 C4C00024 */  lwc1       $f0, 0x24($a2)
/* C4384 8010DFC4 46002102 */  mul.s      $f4, $f4, $f0
/* C4388 8010DFC8 24C60024 */  addiu      $a2, $a2, 0x24
/* C438C 8010DFCC C4A60004 */  lwc1       $f6, 0x4($a1)
/* C4390 8010DFD0 C4C00004 */  lwc1       $f0, 0x4($a2)
/* C4394 8010DFD4 46003182 */  mul.s      $f6, $f6, $f0
/* C4398 8010DFD8 C4C20008 */  lwc1       $f2, 0x8($a2)
/* C439C 8010DFDC C4A00008 */  lwc1       $f0, 0x8($a1)
/* C43A0 8010DFE0 46020002 */  mul.s      $f0, $f0, $f2
/* C43A4 8010DFE4 46062100 */  add.s      $f4, $f4, $f6
/* C43A8 8010DFE8 00803821 */  addu       $a3, $a0, $zero
/* C43AC 8010DFEC 46002100 */  add.s      $f4, $f4, $f0
/* C43B0 8010DFF0 44801000 */  mtc1       $zero, $f2
/* C43B4 8010DFF4 4602203C */  c.lt.s     $f4, $f2
/* C43B8 8010DFF8 00000000 */  nop
/* C43BC 8010DFFC 45000002 */  bc1f       .Lrace_8010E008
/* C43C0 8010E000 24060001 */   addiu     $a2, $zero, 0x1
/* C43C4 8010E004 00003021 */  addu       $a2, $zero, $zero
.Lrace_8010E008:
/* C43C8 8010E008 8CE20CC4 */  lw         $v0, 0xCC4($a3)
/* C43CC 8010E00C 14A20004 */  bne        $a1, $v0, .Lrace_8010E020
/* C43D0 8010E010 00000000 */   nop
/* C43D4 8010E014 8CE20CC8 */  lw         $v0, 0xCC8($a3)
/* C43D8 8010E018 10C20025 */  beq        $a2, $v0, .Lrace_8010E0B0
/* C43DC 8010E01C 00000000 */   nop
.Lrace_8010E020:
/* C43E0 8010E020 C4A0001C */  lwc1       $f0, 0x1C($a1)
/* C43E4 8010E024 46020032 */  c.eq.s     $f0, $f2
/* C43E8 8010E028 00000000 */  nop
/* C43EC 8010E02C 45000013 */  bc1f       .Lrace_8010E07C
/* C43F0 8010E030 3C030008 */   lui       $v1, (0x80000 >> 16)
/* C43F4 8010E034 10C0000D */  beqz       $a2, .Lrace_8010E06C
/* C43F8 8010E038 00000000 */   nop
/* C43FC 8010E03C 8CE20D04 */  lw         $v0, 0xD04($a3)
/* C4400 8010E040 00431024 */  and        $v0, $v0, $v1
/* C4404 8010E044 14400004 */  bnez       $v0, .Lrace_8010E058
/* C4408 8010E048 3C03FFF7 */   lui       $v1, (0xFFF7FFFF >> 16)
/* C440C 8010E04C 8CE20D10 */  lw         $v0, 0xD10($a3)
/* C4410 8010E050 24420001 */  addiu      $v0, $v0, 0x1
/* C4414 8010E054 ACE20D10 */  sw         $v0, 0xD10($a3)
.Lrace_8010E058:
/* C4418 8010E058 8CE20D04 */  lw         $v0, 0xD04($a3)
/* C441C 8010E05C 3463FFFF */  ori        $v1, $v1, (0xFFF7FFFF & 0xFFFF)
/* C4420 8010E060 00431024 */  and        $v0, $v0, $v1
/* C4424 8010E064 0804382A */  j          .Lrace_8010E0A8
/* C4428 8010E068 ACE20D04 */   sw        $v0, 0xD04($a3)
.Lrace_8010E06C:
/* C442C 8010E06C 8CE20D04 */  lw         $v0, 0xD04($a3)
/* C4430 8010E070 00431025 */  or         $v0, $v0, $v1
/* C4434 8010E074 0804382A */  j          .Lrace_8010E0A8
/* C4438 8010E078 ACE20D04 */   sw        $v0, 0xD04($a3)
.Lrace_8010E07C:
/* C443C 8010E07C 8CE20D04 */  lw         $v0, 0xD04($a3)
/* C4440 8010E080 00431024 */  and        $v0, $v0, $v1
/* C4444 8010E084 10400008 */  beqz       $v0, .Lrace_8010E0A8
/* C4448 8010E088 3C02FFF7 */   lui       $v0, (0xFFF7FFFF >> 16)
/* C444C 8010E08C 3442FFFF */  ori        $v0, $v0, (0xFFF7FFFF & 0xFFFF)
/* C4450 8010E090 8CE30D10 */  lw         $v1, 0xD10($a3)
/* C4454 8010E094 8CE40D04 */  lw         $a0, 0xD04($a3)
/* C4458 8010E098 2463FFFF */  addiu      $v1, $v1, -0x1
/* C445C 8010E09C 00822024 */  and        $a0, $a0, $v0
/* C4460 8010E0A0 ACE30D10 */  sw         $v1, 0xD10($a3)
/* C4464 8010E0A4 ACE40D04 */  sw         $a0, 0xD04($a3)
.Lrace_8010E0A8:
/* C4468 8010E0A8 ACE50CC4 */  sw         $a1, 0xCC4($a3)
/* C446C 8010E0AC ACE60CC8 */  sw         $a2, 0xCC8($a3)
.Lrace_8010E0B0:
/* C4470 8010E0B0 03E00008 */  jr         $ra
/* C4474 8010E0B4 00000000 */   nop

glabel func_race_8010E0B8
/* C4478 8010E0B8 8C820CC4 */  lw         $v0, 0xCC4($a0)
/* C447C 8010E0BC 14400004 */  bnez       $v0, .Lrace_8010E0D0
/* C4480 8010E0C0 00000000 */   nop
/* C4484 8010E0C4 44800000 */  mtc1       $zero, $f0
/* C4488 8010E0C8 03E00008 */  jr         $ra
/* C448C 8010E0CC 00000000 */   nop
.Lrace_8010E0D0:
/* C4490 8010E0D0 C442001C */  lwc1       $f2, 0x1C($v0)
/* C4494 8010E0D4 C4800D10 */  lwc1       $f0, 0xD10($a0)
/* C4498 8010E0D8 46800020 */  cvt.s.w    $f0, $f0
/* C449C 8010E0DC 03E00008 */  jr         $ra
/* C44A0 8010E0E0 46001000 */   add.s     $f0, $f2, $f0

glabel func_race_8010E0E4
/* C44A4 8010E0E4 8C830E28 */  lw         $v1, 0xE28($a0)
/* C44A8 8010E0E8 9062003C */  lbu        $v0, 0x3C($v1)
/* C44AC 8010E0EC 24420001 */  addiu      $v0, $v0, 0x1
/* C44B0 8010E0F0 30420003 */  andi       $v0, $v0, 0x3
/* C44B4 8010E0F4 03E00008 */  jr         $ra
/* C44B8 8010E0F8 A062003C */   sb        $v0, 0x3C($v1)

glabel func_race_8010E0FC
/* C44BC 8010E0FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C44C0 8010E100 AFB00010 */  sw         $s0, 0x10($sp)
/* C44C4 8010E104 00808021 */  addu       $s0, $a0, $zero
/* C44C8 8010E108 AFBF0014 */  sw         $ra, 0x14($sp)
/* C44CC 8010E10C 8E030E24 */  lw         $v1, 0xE24($s0)
/* C44D0 8010E110 24020002 */  addiu      $v0, $zero, 0x2
/* C44D4 8010E114 1460000F */  bnez       $v1, .Lrace_8010E154
/* C44D8 8010E118 AE020D08 */   sw        $v0, 0xD08($s0)
/* C44DC 8010E11C 8E04000C */  lw         $a0, 0xC($s0)
/* C44E0 8010E120 0C04477E */  jal        func_race_80111DF8
/* C44E4 8010E124 02002821 */   addu      $a1, $s0, $zero
/* C44E8 8010E128 10400006 */  beqz       $v0, .Lrace_8010E144
/* C44EC 8010E12C AE020E24 */   sw        $v0, 0xE24($s0)
/* C44F0 8010E130 26040C70 */  addiu      $a0, $s0, 0xC70
/* C44F4 8010E134 0C03CDBD */  jal        func_race_800F36F4
/* C44F8 8010E138 00402821 */   addu      $a1, $v0, $zero
/* C44FC 8010E13C 08043855 */  j          .Lrace_8010E154
/* C4500 8010E140 00000000 */   nop
.Lrace_8010E144:
/* C4504 8010E144 26030C70 */  addiu      $v1, $s0, 0xC70
/* C4508 8010E148 8C620014 */  lw         $v0, 0x14($v1)
/* C450C 8010E14C 34420080 */  ori        $v0, $v0, 0x80
/* C4510 8010E150 AC620014 */  sw         $v0, 0x14($v1)
.Lrace_8010E154:
/* C4514 8010E154 8FBF0014 */  lw         $ra, 0x14($sp)
/* C4518 8010E158 8FB00010 */  lw         $s0, 0x10($sp)
/* C451C 8010E15C 03E00008 */  jr         $ra
/* C4520 8010E160 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010E164
/* C4524 8010E164 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4528 8010E168 AFB00010 */  sw         $s0, 0x10($sp)
/* C452C 8010E16C 00808021 */  addu       $s0, $a0, $zero
/* C4530 8010E170 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4534 8010E174 8E020D04 */  lw         $v0, 0xD04($s0)
/* C4538 8010E178 3C030010 */  lui        $v1, (0x100000 >> 16)
/* C453C 8010E17C 00431025 */  or         $v0, $v0, $v1
/* C4540 8010E180 8E030D08 */  lw         $v1, 0xD08($s0)
/* C4544 8010E184 AE020D04 */  sw         $v0, 0xD04($s0)
/* C4548 8010E188 24020002 */  addiu      $v0, $zero, 0x2
/* C454C 8010E18C 10620006 */  beq        $v1, $v0, .Lrace_8010E1A8
/* C4550 8010E190 26030C70 */   addiu     $v1, $s0, 0xC70
/* C4554 8010E194 8C620014 */  lw         $v0, 0x14($v1)
/* C4558 8010E198 26040018 */  addiu      $a0, $s0, 0x18
/* C455C 8010E19C 34420080 */  ori        $v0, $v0, 0x80
/* C4560 8010E1A0 0C044B50 */  jal        func_race_80112D40
/* C4564 8010E1A4 AC620014 */   sw        $v0, 0x14($v1)
.Lrace_8010E1A8:
/* C4568 8010E1A8 260403FC */  addiu      $a0, $s0, 0x3FC
/* C456C 8010E1AC 8C820730 */  lw         $v0, 0x730($a0)
/* C4570 8010E1B0 10400006 */  beqz       $v0, .Lrace_8010E1CC
/* C4574 8010E1B4 3C030004 */   lui       $v1, (0x40000 >> 16)
/* C4578 8010E1B8 8C8206AC */  lw         $v0, 0x6AC($a0)
/* C457C 8010E1BC 00431024 */  and        $v0, $v0, $v1
/* C4580 8010E1C0 14400002 */  bnez       $v0, .Lrace_8010E1CC
/* C4584 8010E1C4 AC8007D4 */   sw        $zero, 0x7D4($a0)
/* C4588 8010E1C8 AC8007D8 */  sw         $zero, 0x7D8($a0)
.Lrace_8010E1CC:
/* C458C 8010E1CC 0C0434BA */  jal        func_race_8010D2E8
/* C4590 8010E1D0 02002021 */   addu      $a0, $s0, $zero
/* C4594 8010E1D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* C4598 8010E1D8 8FB00010 */  lw         $s0, 0x10($sp)
/* C459C 8010E1DC 03E00008 */  jr         $ra
/* C45A0 8010E1E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010E1E4
/* C45A4 8010E1E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C45A8 8010E1E8 AFB00010 */  sw         $s0, 0x10($sp)
/* C45AC 8010E1EC 00808021 */  addu       $s0, $a0, $zero
/* C45B0 8010E1F0 3C03FFEF */  lui        $v1, (0xFFEFFFFF >> 16)
/* C45B4 8010E1F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C45B8 8010E1F8 8E020D04 */  lw         $v0, 0xD04($s0)
/* C45BC 8010E1FC 3463FFFF */  ori        $v1, $v1, (0xFFEFFFFF & 0xFFFF)
/* C45C0 8010E200 00431024 */  and        $v0, $v0, $v1
/* C45C4 8010E204 8E030D08 */  lw         $v1, 0xD08($s0)
/* C45C8 8010E208 AE020D04 */  sw         $v0, 0xD04($s0)
/* C45CC 8010E20C 24020002 */  addiu      $v0, $zero, 0x2
/* C45D0 8010E210 10620007 */  beq        $v1, $v0, .Lrace_8010E230
/* C45D4 8010E214 26040018 */   addiu     $a0, $s0, 0x18
/* C45D8 8010E218 26020C70 */  addiu      $v0, $s0, 0xC70
/* C45DC 8010E21C 8C430014 */  lw         $v1, 0x14($v0)
/* C45E0 8010E220 2405FF7F */  addiu      $a1, $zero, -0x81
/* C45E4 8010E224 00651824 */  and        $v1, $v1, $a1
/* C45E8 8010E228 0C044B9A */  jal        func_race_80112E68
/* C45EC 8010E22C AC430014 */   sw        $v1, 0x14($v0)
.Lrace_8010E230:
/* C45F0 8010E230 260403FC */  addiu      $a0, $s0, 0x3FC
/* C45F4 8010E234 8C820730 */  lw         $v0, 0x730($a0)
/* C45F8 8010E238 10400008 */  beqz       $v0, .Lrace_8010E25C
/* C45FC 8010E23C 3C030004 */   lui       $v1, (0x40000 >> 16)
/* C4600 8010E240 8C8206AC */  lw         $v0, 0x6AC($a0)
/* C4604 8010E244 3C01800D */  lui        $at, %hi(D_race_800CDC60)
/* C4608 8010E248 C420DC60 */  lwc1       $f0, %lo(D_race_800CDC60)($at)
/* C460C 8010E24C 00431024 */  and        $v0, $v0, $v1
/* C4610 8010E250 14400002 */  bnez       $v0, .Lrace_8010E25C
/* C4614 8010E254 E48007D4 */   swc1      $f0, 0x7D4($a0)
/* C4618 8010E258 E48007D8 */  swc1       $f0, 0x7D8($a0)
.Lrace_8010E25C:
/* C461C 8010E25C 0C0434BA */  jal        func_race_8010D2E8
/* C4620 8010E260 02002021 */   addu      $a0, $s0, $zero
/* C4624 8010E264 8FBF0014 */  lw         $ra, 0x14($sp)
/* C4628 8010E268 8FB00010 */  lw         $s0, 0x10($sp)
/* C462C 8010E26C 03E00008 */  jr         $ra
/* C4630 8010E270 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010E274
/* C4634 8010E274 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C4638 8010E278 AFB00010 */  sw         $s0, 0x10($sp)
/* C463C 8010E27C 00808021 */  addu       $s0, $a0, $zero
/* C4640 8010E280 AFBF0018 */  sw         $ra, 0x18($sp)
/* C4644 8010E284 AFB10014 */  sw         $s1, 0x14($sp)
/* C4648 8010E288 8E020D04 */  lw         $v0, 0xD04($s0)
/* C464C 8010E28C 30420002 */  andi       $v0, $v0, 0x2
/* C4650 8010E290 1440000B */  bnez       $v0, .Lrace_8010E2C0
/* C4654 8010E294 00A08821 */   addu      $s1, $a1, $zero
/* C4658 8010E298 8E030D00 */  lw         $v1, 0xD00($s0)
/* C465C 8010E29C 0223102B */  sltu       $v0, $s1, $v1
/* C4660 8010E2A0 14400005 */  bnez       $v0, .Lrace_8010E2B8
/* C4664 8010E2A4 24050001 */   addiu     $a1, $zero, 0x1
/* C4668 8010E2A8 0071102B */  sltu       $v0, $v1, $s1
/* C466C 8010E2AC 10400004 */  beqz       $v0, .Lrace_8010E2C0
/* C4670 8010E2B0 02002021 */   addu      $a0, $s0, $zero
/* C4674 8010E2B4 00002821 */  addu       $a1, $zero, $zero
.Lrace_8010E2B8:
/* C4678 8010E2B8 0C04339E */  jal        func_race_8010CE78
/* C467C 8010E2BC 00000000 */   nop
.Lrace_8010E2C0:
/* C4680 8010E2C0 AE110D00 */  sw         $s1, 0xD00($s0)
/* C4684 8010E2C4 8FBF0018 */  lw         $ra, 0x18($sp)
/* C4688 8010E2C8 8FB10014 */  lw         $s1, 0x14($sp)
/* C468C 8010E2CC 8FB00010 */  lw         $s0, 0x10($sp)
/* C4690 8010E2D0 03E00008 */  jr         $ra
/* C4694 8010E2D4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010E2D8
/* C4698 8010E2D8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C469C 8010E2DC AFB00030 */  sw         $s0, 0x30($sp)
/* C46A0 8010E2E0 00808021 */  addu       $s0, $a0, $zero
/* C46A4 8010E2E4 AFBF0038 */  sw         $ra, 0x38($sp)
/* C46A8 8010E2E8 AFB10034 */  sw         $s1, 0x34($sp)
/* C46AC 8010E2EC 8E03005C */  lw         $v1, 0x5C($s0)
/* C46B0 8010E2F0 27B10020 */  addiu      $s1, $sp, 0x20
/* C46B4 8010E2F4 8C620024 */  lw         $v0, 0x24($v1)
/* C46B8 8010E2F8 02202821 */  addu       $a1, $s1, $zero
/* C46BC 8010E2FC 84440010 */  lh         $a0, 0x10($v0)
/* C46C0 8010E300 8C420014 */  lw         $v0, 0x14($v0)
/* C46C4 8010E304 0040F809 */  jalr       $v0
/* C46C8 8010E308 00642021 */   addu      $a0, $v1, $a0
/* C46CC 8010E30C 8E020D38 */  lw         $v0, 0xD38($s0)
/* C46D0 8010E310 8E050DA8 */  lw         $a1, 0xDA8($s0)
/* C46D4 8010E314 3C01800D */  lui        $at, %hi(D_race_800CDC64)
/* C46D8 8010E318 C422DC64 */  lwc1       $f2, %lo(D_race_800CDC64)($at)
/* C46DC 8010E31C 3C01800D */  lui        $at, %hi(D_race_800CDC68)
/* C46E0 8010E320 C420DC68 */  lwc1       $f0, %lo(D_race_800CDC68)($at)
/* C46E4 8010E324 3C0742C8 */  lui        $a3, (0x42C80000 >> 16)
/* C46E8 8010E328 02203021 */  addu       $a2, $s1, $zero
/* C46EC 8010E32C E7A20010 */  swc1       $f2, 0x10($sp)
/* C46F0 8010E330 E7A00014 */  swc1       $f0, 0x14($sp)
/* C46F4 8010E334 E7A00018 */  swc1       $f0, 0x18($sp)
/* C46F8 8010E338 8E040004 */  lw         $a0, 0x4($s0)
/* C46FC 8010E33C 0C046530 */  jal        func_race_801194C0
/* C4700 8010E340 00452821 */   addu      $a1, $v0, $a1
/* C4704 8010E344 8FBF0038 */  lw         $ra, 0x38($sp)
/* C4708 8010E348 8FB10034 */  lw         $s1, 0x34($sp)
/* C470C 8010E34C 8FB00030 */  lw         $s0, 0x30($sp)
/* C4710 8010E350 03E00008 */  jr         $ra
/* C4714 8010E354 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8010E358
/* C4718 8010E358 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C471C 8010E35C AFBF0010 */  sw         $ra, 0x10($sp)
/* C4720 8010E360 8C820DA8 */  lw         $v0, 0xDA8($a0)
/* C4724 8010E364 24420001 */  addiu      $v0, $v0, 0x1
/* C4728 8010E368 30420003 */  andi       $v0, $v0, 0x3
/* C472C 8010E36C 0C0438B6 */  jal        func_race_8010E2D8
/* C4730 8010E370 AC820DA8 */   sw        $v0, 0xDA8($a0)
/* C4734 8010E374 8FBF0010 */  lw         $ra, 0x10($sp)
/* C4738 8010E378 03E00008 */  jr         $ra
/* C473C 8010E37C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010E380
/* C4740 8010E380 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C4744 8010E384 AFB10034 */  sw         $s1, 0x34($sp)
/* C4748 8010E388 00808821 */  addu       $s1, $a0, $zero
/* C474C 8010E38C AFBF0038 */  sw         $ra, 0x38($sp)
/* C4750 8010E390 AFB00030 */  sw         $s0, 0x30($sp)
/* C4754 8010E394 8E23005C */  lw         $v1, 0x5C($s1)
/* C4758 8010E398 8C620024 */  lw         $v0, 0x24($v1)
/* C475C 8010E39C 27A50020 */  addiu      $a1, $sp, 0x20
/* C4760 8010E3A0 84440010 */  lh         $a0, 0x10($v0)
/* C4764 8010E3A4 8C420014 */  lw         $v0, 0x14($v0)
/* C4768 8010E3A8 0040F809 */  jalr       $v0
/* C476C 8010E3AC 00642021 */   addu      $a0, $v1, $a0
/* C4770 8010E3B0 3C068003 */  lui        $a2, %hi(D_8002FAB0)
/* C4774 8010E3B4 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C4778 8010E3B8 8CC4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a2)
/* C477C 8010E3BC 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C4780 8010E3C0 24840001 */  addiu      $a0, $a0, 0x1
/* C4784 8010E3C4 308403FF */  andi       $a0, $a0, 0x3FF
/* C4788 8010E3C8 00041040 */  sll        $v0, $a0, 1
/* C478C 8010E3CC 00431021 */  addu       $v0, $v0, $v1
/* C4790 8010E3D0 94450000 */  lhu        $a1, 0x0($v0)
/* C4794 8010E3D4 3C02AAAA */  lui        $v0, (0xAAAAAAAB >> 16)
/* C4798 8010E3D8 3442AAAB */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
/* C479C 8010E3DC 00A20019 */  multu      $a1, $v0
/* C47A0 8010E3E0 24100001 */  addiu      $s0, $zero, 0x1
/* C47A4 8010E3E4 00004010 */  mfhi       $t0
/* C47A8 8010E3E8 02081806 */  srlv       $v1, $t0, $s0
/* C47AC 8010E3EC 02031004 */  sllv       $v0, $v1, $s0
/* C47B0 8010E3F0 00431021 */  addu       $v0, $v0, $v1
/* C47B4 8010E3F4 00A22823 */  subu       $a1, $a1, $v0
/* C47B8 8010E3F8 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* C47BC 8010E3FC 10B00006 */  beq        $a1, $s0, .Lrace_8010E418
/* C47C0 8010E400 ACC4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a2)
/* C47C4 8010E404 24020002 */  addiu      $v0, $zero, 0x2
/* C47C8 8010E408 50A20004 */  beql       $a1, $v0, .Lrace_8010E41C
/* C47CC 8010E40C 24100047 */   addiu     $s0, $zero, 0x47
/* C47D0 8010E410 08043907 */  j          .Lrace_8010E41C
/* C47D4 8010E414 00000000 */   nop
.Lrace_8010E418:
/* C47D8 8010E418 24100046 */  addiu      $s0, $zero, 0x46
.Lrace_8010E41C:
/* C47DC 8010E41C 3C01800D */  lui        $at, %hi(D_race_800CDC6C)
/* C47E0 8010E420 C422DC6C */  lwc1       $f2, %lo(D_race_800CDC6C)($at)
/* C47E4 8010E424 3C01800D */  lui        $at, %hi(D_race_800CDC70)
/* C47E8 8010E428 C420DC70 */  lwc1       $f0, %lo(D_race_800CDC70)($at)
/* C47EC 8010E42C 3C074348 */  lui        $a3, (0x43480000 >> 16)
/* C47F0 8010E430 02002821 */  addu       $a1, $s0, $zero
/* C47F4 8010E434 E7A20010 */  swc1       $f2, 0x10($sp)
/* C47F8 8010E438 E7A00014 */  swc1       $f0, 0x14($sp)
/* C47FC 8010E43C E7A00018 */  swc1       $f0, 0x18($sp)
/* C4800 8010E440 8E240004 */  lw         $a0, 0x4($s1)
/* C4804 8010E444 0C046530 */  jal        func_race_801194C0
/* C4808 8010E448 27A60020 */   addiu     $a2, $sp, 0x20
/* C480C 8010E44C 240201F4 */  addiu      $v0, $zero, 0x1F4
/* C4810 8010E450 AE220D6C */  sw         $v0, 0xD6C($s1)
/* C4814 8010E454 8FBF0038 */  lw         $ra, 0x38($sp)
/* C4818 8010E458 8FB10034 */  lw         $s1, 0x34($sp)
/* C481C 8010E45C 8FB00030 */  lw         $s0, 0x30($sp)
/* C4820 8010E460 03E00008 */  jr         $ra
/* C4824 8010E464 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8010E468
/* C4828 8010E468 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C482C 8010E46C AFB00010 */  sw         $s0, 0x10($sp)
/* C4830 8010E470 00808021 */  addu       $s0, $a0, $zero
/* C4834 8010E474 AFB10014 */  sw         $s1, 0x14($sp)
/* C4838 8010E478 00A08821 */  addu       $s1, $a1, $zero
/* C483C 8010E47C AFBF001C */  sw         $ra, 0x1C($sp)
/* C4840 8010E480 AFB20018 */  sw         $s2, 0x18($sp)
/* C4844 8010E484 8E040DAC */  lw         $a0, 0xDAC($s0)
/* C4848 8010E488 10800011 */  beqz       $a0, .Lrace_8010E4D0
/* C484C 8010E48C 00C09021 */   addu      $s2, $a2, $zero
/* C4850 8010E490 0C03F26E */  jal        func_race_800FC9B8
/* C4854 8010E494 00000000 */   nop
/* C4858 8010E498 8E030DAC */  lw         $v1, 0xDAC($s0)
/* C485C 8010E49C 24020001 */  addiu      $v0, $zero, 0x1
/* C4860 8010E4A0 A0620000 */  sb         $v0, 0x0($v1)
/* C4864 8010E4A4 12400005 */  beqz       $s2, .Lrace_8010E4BC
/* C4868 8010E4A8 AE110DB0 */   sw        $s1, 0xDB0($s0)
/* C486C 8010E4AC 8E020D04 */  lw         $v0, 0xD04($s0)
/* C4870 8010E4B0 3C030040 */  lui        $v1, (0x400000 >> 16)
/* C4874 8010E4B4 08043933 */  j          .Lrace_8010E4CC
/* C4878 8010E4B8 00431025 */   or        $v0, $v0, $v1
.Lrace_8010E4BC:
/* C487C 8010E4BC 3C03FFBF */  lui        $v1, (0xFFBFFFFF >> 16)
/* C4880 8010E4C0 8E020D04 */  lw         $v0, 0xD04($s0)
/* C4884 8010E4C4 3463FFFF */  ori        $v1, $v1, (0xFFBFFFFF & 0xFFFF)
/* C4888 8010E4C8 00431024 */  and        $v0, $v0, $v1
.Lrace_8010E4CC:
/* C488C 8010E4CC AE020D04 */  sw         $v0, 0xD04($s0)
.Lrace_8010E4D0:
/* C4890 8010E4D0 8FBF001C */  lw         $ra, 0x1C($sp)
/* C4894 8010E4D4 8FB20018 */  lw         $s2, 0x18($sp)
/* C4898 8010E4D8 8FB10014 */  lw         $s1, 0x14($sp)
/* C489C 8010E4DC 8FB00010 */  lw         $s0, 0x10($sp)
/* C48A0 8010E4E0 03E00008 */  jr         $ra
/* C48A4 8010E4E4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010E4E8
/* C48A8 8010E4E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C48AC 8010E4EC AFB00010 */  sw         $s0, 0x10($sp)
/* C48B0 8010E4F0 00808021 */  addu       $s0, $a0, $zero
/* C48B4 8010E4F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C48B8 8010E4F8 8E040DAC */  lw         $a0, 0xDAC($s0)
/* C48BC 8010E4FC 10800008 */  beqz       $a0, .Lrace_8010E520
/* C48C0 8010E500 3C020040 */   lui       $v0, (0x400000 >> 16)
/* C48C4 8010E504 8E060D04 */  lw         $a2, 0xD04($s0)
/* C48C8 8010E508 8E050DB0 */  lw         $a1, 0xDB0($s0)
/* C48CC 8010E50C 0C03F26E */  jal        func_race_800FC9B8
/* C48D0 8010E510 00C23024 */   and       $a2, $a2, $v0
/* C48D4 8010E514 8E030DAC */  lw         $v1, 0xDAC($s0)
/* C48D8 8010E518 24020001 */  addiu      $v0, $zero, 0x1
/* C48DC 8010E51C A0620000 */  sb         $v0, 0x0($v1)
.Lrace_8010E520:
/* C48E0 8010E520 8FBF0014 */  lw         $ra, 0x14($sp)
/* C48E4 8010E524 8FB00010 */  lw         $s0, 0x10($sp)
/* C48E8 8010E528 03E00008 */  jr         $ra
/* C48EC 8010E52C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010E530
/* C48F0 8010E530 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C48F4 8010E534 AFB00010 */  sw         $s0, 0x10($sp)
/* C48F8 8010E538 00808021 */  addu       $s0, $a0, $zero
/* C48FC 8010E53C AFBF0014 */  sw         $ra, 0x14($sp)
/* C4900 8010E540 8E020D04 */  lw         $v0, 0xD04($s0)
/* C4904 8010E544 24030400 */  addiu      $v1, $zero, 0x400
/* C4908 8010E548 30421400 */  andi       $v0, $v0, 0x1400
/* C490C 8010E54C 1443000F */  bne        $v0, $v1, .Lrace_8010E58C
/* C4910 8010E550 00000000 */   nop
/* C4914 8010E554 8E020DAC */  lw         $v0, 0xDAC($s0)
/* C4918 8010E558 1040000C */  beqz       $v0, .Lrace_8010E58C
/* C491C 8010E55C 3C020040 */   lui       $v0, (0x400000 >> 16)
/* C4920 8010E560 8E050DB0 */  lw         $a1, 0xDB0($s0)
/* C4924 8010E564 8E060D04 */  lw         $a2, 0xD04($s0)
/* C4928 8010E568 8E040DAC */  lw         $a0, 0xDAC($s0)
/* C492C 8010E56C 24A50001 */  addiu      $a1, $a1, 0x1
/* C4930 8010E570 30A50003 */  andi       $a1, $a1, 0x3
/* C4934 8010E574 00C23024 */  and        $a2, $a2, $v0
/* C4938 8010E578 0C03F26E */  jal        func_race_800FC9B8
/* C493C 8010E57C AE050DB0 */   sw        $a1, 0xDB0($s0)
/* C4940 8010E580 8E030DAC */  lw         $v1, 0xDAC($s0)
/* C4944 8010E584 24020001 */  addiu      $v0, $zero, 0x1
/* C4948 8010E588 A0620000 */  sb         $v0, 0x0($v1)
.Lrace_8010E58C:
/* C494C 8010E58C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C4950 8010E590 8FB00010 */  lw         $s0, 0x10($sp)
/* C4954 8010E594 03E00008 */  jr         $ra
/* C4958 8010E598 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010E59C
/* C495C 8010E59C 8C830DAC */  lw         $v1, 0xDAC($a0)
/* C4960 8010E5A0 10600002 */  beqz       $v1, .Lrace_8010E5AC
/* C4964 8010E5A4 24020001 */   addiu     $v0, $zero, 0x1
/* C4968 8010E5A8 A0620000 */  sb         $v0, 0x0($v1)
.Lrace_8010E5AC:
/* C496C 8010E5AC 03E00008 */  jr         $ra
/* C4970 8010E5B0 00000000 */   nop

glabel func_race_8010E5B4
/* C4974 8010E5B4 8C830DAC */  lw         $v1, 0xDAC($a0)
/* C4978 8010E5B8 24020001 */  addiu      $v0, $zero, 0x1
/* C497C 8010E5BC 03E00008 */  jr         $ra
/* C4980 8010E5C0 A0620004 */   sb        $v0, 0x4($v1)

glabel func_race_8010E5C4
/* C4984 8010E5C4 8C820DAC */  lw         $v0, 0xDAC($a0)
/* C4988 8010E5C8 03E00008 */  jr         $ra
/* C498C 8010E5CC A0400004 */   sb        $zero, 0x4($v0)

glabel func_race_8010E5D0
/* C4990 8010E5D0 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4994 8010E5D4 03E00008 */  jr         $ra
/* C4998 8010E5D8 30420002 */   andi      $v0, $v0, 0x2

glabel func_race_8010E5DC
/* C499C 8010E5DC 8C820D04 */  lw         $v0, 0xD04($a0)
/* C49A0 8010E5E0 03E00008 */  jr         $ra
/* C49A4 8010E5E4 30420400 */   andi      $v0, $v0, 0x400

glabel func_race_8010E5E8
/* C49A8 8010E5E8 90820CE0 */  lbu        $v0, 0xCE0($a0)
/* C49AC 8010E5EC 03E00008 */  jr         $ra
/* C49B0 8010E5F0 00000000 */   nop

glabel func_race_8010E5F4
/* C49B4 8010E5F4 03E00008 */  jr         $ra
/* C49B8 8010E5F8 AC850D44 */   sw        $a1, 0xD44($a0)

glabel func_race_8010E5FC
/* C49BC 8010E5FC 8C820D44 */  lw         $v0, 0xD44($a0)
/* C49C0 8010E600 03E00008 */  jr         $ra
/* C49C4 8010E604 00000000 */   nop

glabel func_race_8010E608
/* C49C8 8010E608 8C830D04 */  lw         $v1, 0xD04($a0)
/* C49CC 8010E60C 3C020080 */  lui        $v0, (0x800000 >> 16)
/* C49D0 8010E610 03E00008 */  jr         $ra
/* C49D4 8010E614 00621024 */   and       $v0, $v1, $v0

glabel func_race_8010E618
/* C49D8 8010E618 8C820D04 */  lw         $v0, 0xD04($a0)
/* C49DC 8010E61C 3C030080 */  lui        $v1, (0x800000 >> 16)
/* C49E0 8010E620 00431025 */  or         $v0, $v0, $v1
/* C49E4 8010E624 03E00008 */  jr         $ra
/* C49E8 8010E628 AC820D04 */   sw        $v0, 0xD04($a0)

glabel func_race_8010E62C
/* C49EC 8010E62C 8C820014 */  lw         $v0, 0x14($a0)
/* C49F0 8010E630 03E00008 */  jr         $ra
/* C49F4 8010E634 00000000 */   nop

glabel func_race_8010E638
/* C49F8 8010E638 03E00008 */  jr         $ra
/* C49FC 8010E63C AC850014 */   sw        $a1, 0x14($a0)

glabel func_race_8010E640
/* C4A00 8010E640 8C820004 */  lw         $v0, 0x4($a0)
/* C4A04 8010E644 03E00008 */  jr         $ra
/* C4A08 8010E648 00000000 */   nop

glabel func_race_8010E64C
/* C4A0C 8010E64C 3C03DFFF */  lui        $v1, (0xDFFFFFFF >> 16)
/* C4A10 8010E650 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4A14 8010E654 3463FFFF */  ori        $v1, $v1, (0xDFFFFFFF & 0xFFFF)
/* C4A18 8010E658 00431024 */  and        $v0, $v0, $v1
/* C4A1C 8010E65C 03E00008 */  jr         $ra
/* C4A20 8010E660 AC820D04 */   sw        $v0, 0xD04($a0)

glabel func_race_8010E664
/* C4A24 8010E664 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4A28 8010E668 3C032000 */  lui        $v1, (0x20000000 >> 16)
/* C4A2C 8010E66C 00431025 */  or         $v0, $v0, $v1
/* C4A30 8010E670 03E00008 */  jr         $ra
/* C4A34 8010E674 AC820D04 */   sw        $v0, 0xD04($a0)

glabel func_race_8010E678
/* C4A38 8010E678 8C830D04 */  lw         $v1, 0xD04($a0)
/* C4A3C 8010E67C 3C022010 */  lui        $v0, (0x20100000 >> 16)
/* C4A40 8010E680 03E00008 */  jr         $ra
/* C4A44 8010E684 00621024 */   and       $v0, $v1, $v0

glabel func_race_8010E688
/* C4A48 8010E688 8C820E24 */  lw         $v0, 0xE24($a0)
/* C4A4C 8010E68C 03E00008 */  jr         $ra
/* C4A50 8010E690 00000000 */   nop

glabel func_race_8010E694
/* C4A54 8010E694 03E00008 */  jr         $ra
/* C4A58 8010E698 24820E00 */   addiu     $v0, $a0, 0xE00

glabel func_race_8010E69C
/* C4A5C 8010E69C 8C830D04 */  lw         $v1, 0xD04($a0)
/* C4A60 8010E6A0 3C020001 */  lui        $v0, (0x10000 >> 16)
/* C4A64 8010E6A4 03E00008 */  jr         $ra
/* C4A68 8010E6A8 00621024 */   and       $v0, $v1, $v0

glabel func_race_8010E6AC
/* C4A6C 8010E6AC 8C830D04 */  lw         $v1, 0xD04($a0)
/* C4A70 8010E6B0 3C020002 */  lui        $v0, (0x20000 >> 16)
/* C4A74 8010E6B4 03E00008 */  jr         $ra
/* C4A78 8010E6B8 00621024 */   and       $v0, $v1, $v0

glabel func_race_8010E6BC
/* C4A7C 8010E6BC 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4A80 8010E6C0 03E00008 */  jr         $ra
/* C4A84 8010E6C4 30424000 */   andi      $v0, $v0, 0x4000

glabel func_race_8010E6C8
/* C4A88 8010E6C8 03E00008 */  jr         $ra
/* C4A8C 8010E6CC 24820DE4 */   addiu     $v0, $a0, 0xDE4

glabel func_race_8010E6D0
/* C4A90 8010E6D0 8C820D80 */  lw         $v0, 0xD80($a0)
/* C4A94 8010E6D4 03E00008 */  jr         $ra
/* C4A98 8010E6D8 00000000 */   nop

glabel func_race_8010E6DC
/* C4A9C 8010E6DC 8C820D7C */  lw         $v0, 0xD7C($a0)
/* C4AA0 8010E6E0 03E00008 */  jr         $ra
/* C4AA4 8010E6E4 00000000 */   nop

glabel func_race_8010E6E8
/* C4AA8 8010E6E8 03E00008 */  jr         $ra
/* C4AAC 8010E6EC AC850CE4 */   sw        $a1, 0xCE4($a0)

glabel func_race_8010E6F0
/* C4AB0 8010E6F0 8C820DFC */  lw         $v0, 0xDFC($a0)
/* C4AB4 8010E6F4 03E00008 */  jr         $ra
/* C4AB8 8010E6F8 00000000 */   nop

glabel func_race_8010E6FC
/* C4ABC 8010E6FC 8C820DB0 */  lw         $v0, 0xDB0($a0)
/* C4AC0 8010E700 03E00008 */  jr         $ra
/* C4AC4 8010E704 00000000 */   nop

glabel func_race_8010E708
/* C4AC8 8010E708 8C820DAC */  lw         $v0, 0xDAC($a0)
/* C4ACC 8010E70C 03E00008 */  jr         $ra
/* C4AD0 8010E710 00000000 */   nop

glabel func_race_8010E714
/* C4AD4 8010E714 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4AD8 8010E718 03E00008 */  jr         $ra
/* C4ADC 8010E71C 30421000 */   andi      $v0, $v0, 0x1000

glabel func_race_8010E720
/* C4AE0 8010E720 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4AE4 8010E724 2403EFFF */  addiu      $v1, $zero, -0x1001
/* C4AE8 8010E728 00431024 */  and        $v0, $v0, $v1
/* C4AEC 8010E72C 03E00008 */  jr         $ra
/* C4AF0 8010E730 AC820D04 */   sw        $v0, 0xD04($a0)

glabel func_race_8010E734
/* C4AF4 8010E734 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4AF8 8010E738 34421000 */  ori        $v0, $v0, 0x1000
/* C4AFC 8010E73C 03E00008 */  jr         $ra
/* C4B00 8010E740 AC820D04 */   sw        $v0, 0xD04($a0)

glabel func_race_8010E744
/* C4B04 8010E744 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4B08 8010E748 03E00008 */  jr         $ra
/* C4B0C 8010E74C 30420080 */   andi      $v0, $v0, 0x80

glabel func_race_8010E750
/* C4B10 8010E750 8C820D6C */  lw         $v0, 0xD6C($a0)
/* C4B14 8010E754 03E00008 */  jr         $ra
/* C4B18 8010E758 00000000 */   nop

glabel func_race_8010E75C
/* C4B1C 8010E75C 8C820D64 */  lw         $v0, 0xD64($a0)
/* C4B20 8010E760 03E00008 */  jr         $ra
/* C4B24 8010E764 00000000 */   nop

glabel func_race_8010E768
/* C4B28 8010E768 8C820D60 */  lw         $v0, 0xD60($a0)
/* C4B2C 8010E76C 03E00008 */  jr         $ra
/* C4B30 8010E770 00000000 */   nop

glabel func_race_8010E774
/* C4B34 8010E774 03E00008 */  jr         $ra
/* C4B38 8010E778 248202B4 */   addiu     $v0, $a0, 0x2B4

glabel func_race_8010E77C
/* C4B3C 8010E77C 8C820D74 */  lw         $v0, 0xD74($a0)
/* C4B40 8010E780 03E00008 */  jr         $ra
/* C4B44 8010E784 00000000 */   nop

glabel func_race_8010E788
/* C4B48 8010E788 8C820D78 */  lw         $v0, 0xD78($a0)
/* C4B4C 8010E78C 03E00008 */  jr         $ra
/* C4B50 8010E790 00000000 */   nop

glabel func_race_8010E794
/* C4B54 8010E794 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4B58 8010E798 03E00008 */  jr         $ra
/* C4B5C 8010E79C 30420800 */   andi      $v0, $v0, 0x800

glabel func_race_8010E7A0
/* C4B60 8010E7A0 8C820AA8 */  lw         $v0, 0xAA8($a0)
/* C4B64 8010E7A4 03E00008 */  jr         $ra
/* C4B68 8010E7A8 30420080 */   andi      $v0, $v0, 0x80

glabel func_race_8010E7AC
/* C4B6C 8010E7AC 8C830D04 */  lw         $v1, 0xD04($a0)
/* C4B70 8010E7B0 3C020020 */  lui        $v0, (0x200000 >> 16)
/* C4B74 8010E7B4 03E00008 */  jr         $ra
/* C4B78 8010E7B8 00621024 */   and       $v0, $v1, $v0

glabel func_race_8010E7BC
/* C4B7C 8010E7BC 3C03FFDF */  lui        $v1, (0xFFDFFFFF >> 16)
/* C4B80 8010E7C0 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4B84 8010E7C4 3463FFFF */  ori        $v1, $v1, (0xFFDFFFFF & 0xFFFF)
/* C4B88 8010E7C8 00431024 */  and        $v0, $v0, $v1
/* C4B8C 8010E7CC 03E00008 */  jr         $ra
/* C4B90 8010E7D0 AC820D04 */   sw        $v0, 0xD04($a0)

glabel func_race_8010E7D4
/* C4B94 8010E7D4 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4B98 8010E7D8 3C030020 */  lui        $v1, (0x200000 >> 16)
/* C4B9C 8010E7DC 00431025 */  or         $v0, $v0, $v1
/* C4BA0 8010E7E0 03E00008 */  jr         $ra
/* C4BA4 8010E7E4 AC820D04 */   sw        $v0, 0xD04($a0)

glabel func_race_8010E7E8
/* C4BA8 8010E7E8 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4BAC 8010E7EC 03E00008 */  jr         $ra
/* C4BB0 8010E7F0 30420010 */   andi      $v0, $v0, 0x10

glabel func_race_8010E7F4
/* C4BB4 8010E7F4 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4BB8 8010E7F8 03E00008 */  jr         $ra
/* C4BBC 8010E7FC 30420040 */   andi      $v0, $v0, 0x40

glabel func_race_8010E800
/* C4BC0 8010E800 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4BC4 8010E804 03E00008 */  jr         $ra
/* C4BC8 8010E808 30420010 */   andi      $v0, $v0, 0x10

glabel func_race_8010E80C
/* C4BCC 8010E80C 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4BD0 8010E810 03E00008 */  jr         $ra
/* C4BD4 8010E814 30420008 */   andi      $v0, $v0, 0x8

glabel func_race_8010E818
/* C4BD8 8010E818 03E00008 */  jr         $ra
/* C4BDC 8010E81C AC850D4C */   sw        $a1, 0xD4C($a0)

glabel func_race_8010E820
/* C4BE0 8010E820 C4800D4C */  lwc1       $f0, 0xD4C($a0)
/* C4BE4 8010E824 03E00008 */  jr         $ra
/* C4BE8 8010E828 00000000 */   nop

glabel func_race_8010E82C
/* C4BEC 8010E82C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4BF0 8010E830 AFBF0010 */  sw         $ra, 0x10($sp)
/* C4BF4 8010E834 0C04551D */  jal        func_race_80115474
/* C4BF8 8010E838 24840018 */   addiu     $a0, $a0, 0x18
/* C4BFC 8010E83C 8FBF0010 */  lw         $ra, 0x10($sp)
/* C4C00 8010E840 03E00008 */  jr         $ra
/* C4C04 8010E844 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010E848
/* C4C08 8010E848 8C820008 */  lw         $v0, 0x8($a0)
/* C4C0C 8010E84C 03E00008 */  jr         $ra
/* C4C10 8010E850 00000000 */   nop

glabel func_race_8010E854
/* C4C14 8010E854 8C820D48 */  lw         $v0, 0xD48($a0)
/* C4C18 8010E858 03E00008 */  jr         $ra
/* C4C1C 8010E85C 00000000 */   nop

glabel func_race_8010E860
/* C4C20 8010E860 8C82005C */  lw         $v0, 0x5C($a0)
/* C4C24 8010E864 C4400028 */  lwc1       $f0, 0x28($v0)
/* C4C28 8010E868 E4A00000 */  swc1       $f0, 0x0($a1)
/* C4C2C 8010E86C C440002C */  lwc1       $f0, 0x2C($v0)
/* C4C30 8010E870 E4A00004 */  swc1       $f0, 0x4($a1)
/* C4C34 8010E874 C4400030 */  lwc1       $f0, 0x30($v0)
/* C4C38 8010E878 03E00008 */  jr         $ra
/* C4C3C 8010E87C E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_8010E880
/* C4C40 8010E880 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4C44 8010E884 AFBF0010 */  sw         $ra, 0x10($sp)
/* C4C48 8010E888 8C82005C */  lw         $v0, 0x5C($a0)
/* C4C4C 8010E88C 8C430024 */  lw         $v1, 0x24($v0)
/* C4C50 8010E890 84640010 */  lh         $a0, 0x10($v1)
/* C4C54 8010E894 00442021 */  addu       $a0, $v0, $a0
/* C4C58 8010E898 8C620014 */  lw         $v0, 0x14($v1)
/* C4C5C 8010E89C 0040F809 */  jalr       $v0
/* C4C60 8010E8A0 00000000 */   nop
/* C4C64 8010E8A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* C4C68 8010E8A8 03E00008 */  jr         $ra
/* C4C6C 8010E8AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010E8B0
/* C4C70 8010E8B0 8C820D08 */  lw         $v0, 0xD08($a0)
/* C4C74 8010E8B4 38420003 */  xori       $v0, $v0, 0x3
/* C4C78 8010E8B8 03E00008 */  jr         $ra
/* C4C7C 8010E8BC 2C420001 */   sltiu     $v0, $v0, 0x1

glabel func_race_8010E8C0
/* C4C80 8010E8C0 8C820D08 */  lw         $v0, 0xD08($a0)
/* C4C84 8010E8C4 38420001 */  xori       $v0, $v0, 0x1
/* C4C88 8010E8C8 03E00008 */  jr         $ra
/* C4C8C 8010E8CC 2C420001 */   sltiu     $v0, $v0, 0x1

glabel func_race_8010E8D0
/* C4C90 8010E8D0 8C820D08 */  lw         $v0, 0xD08($a0)
/* C4C94 8010E8D4 03E00008 */  jr         $ra
/* C4C98 8010E8D8 2C420001 */   sltiu     $v0, $v0, 0x1

glabel func_race_8010E8DC
/* C4C9C 8010E8DC 8C820D08 */  lw         $v0, 0xD08($a0)
/* C4CA0 8010E8E0 38420002 */  xori       $v0, $v0, 0x2
/* C4CA4 8010E8E4 03E00008 */  jr         $ra
/* C4CA8 8010E8E8 2C420001 */   sltiu     $v0, $v0, 0x1

glabel func_race_8010E8EC
/* C4CAC 8010E8EC 8C82000C */  lw         $v0, 0xC($a0)
/* C4CB0 8010E8F0 03E00008 */  jr         $ra
/* C4CB4 8010E8F4 00000000 */   nop

glabel func_race_8010E8F8
/* C4CB8 8010E8F8 8C82000C */  lw         $v0, 0xC($a0)
/* C4CBC 8010E8FC 03E00008 */  jr         $ra
/* C4CC0 8010E900 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_8010E904
/* C4CC4 8010E904 8C820D04 */  lw         $v0, 0xD04($a0)
/* C4CC8 8010E908 03E00008 */  jr         $ra
/* C4CCC 8010E90C 30420001 */   andi      $v0, $v0, 0x1

glabel func_race_8010E910
/* C4CD0 8010E910 03E00008 */  jr         $ra
/* C4CD4 8010E914 2482001C */   addiu     $v0, $a0, 0x1C

glabel func_race_8010E918
/* C4CD8 8010E918 03E00008 */  jr         $ra
/* C4CDC 8010E91C 24820018 */   addiu     $v0, $a0, 0x18

glabel func_race_8010E920
/* C4CE0 8010E920 8C82005C */  lw         $v0, 0x5C($a0)
/* C4CE4 8010E924 03E00008 */  jr         $ra
/* C4CE8 8010E928 00000000 */   nop

glabel func_race_8010E92C
/* C4CEC 8010E92C 03E00008 */  jr         $ra
/* C4CF0 8010E930 248203FC */   addiu     $v0, $a0, 0x3FC

glabel func_race_8010E934
/* C4CF4 8010E934 03E00008 */  jr         $ra
/* C4CF8 8010E938 24820C70 */   addiu     $v0, $a0, 0xC70

glabel func_race_8010E93C
/* C4CFC 8010E93C 03E00008 */  jr         $ra
/* C4D00 8010E940 AC850D08 */   sw        $a1, 0xD08($a0)

glabel func_race_8010E944
/* C4D04 8010E944 AC800D08 */  sw         $zero, 0xD08($a0)
/* C4D08 8010E948 03E00008 */  jr         $ra
/* C4D0C 8010E94C AC800E24 */   sw        $zero, 0xE24($a0)

glabel func_race_8010E950
/* C4D10 8010E950 8C820CCC */  lw         $v0, 0xCCC($a0)
/* C4D14 8010E954 03E00008 */  jr         $ra
/* C4D18 8010E958 00000000 */   nop

glabel func_race_8010E95C
/* C4D1C 8010E95C 8C820D00 */  lw         $v0, 0xD00($a0)
/* C4D20 8010E960 03E00008 */  jr         $ra
/* C4D24 8010E964 00000000 */   nop

glabel func_race_8010E968
/* C4D28 8010E968 00052880 */  sll        $a1, $a1, 2
/* C4D2C 8010E96C 00852021 */  addu       $a0, $a0, $a1
/* C4D30 8010E970 03E00008 */  jr         $ra
/* C4D34 8010E974 AC800CEC */   sw        $zero, 0xCEC($a0)

glabel func_race_8010E978
/* C4D38 8010E978 00052880 */  sll        $a1, $a1, 2
/* C4D3C 8010E97C 00852021 */  addu       $a0, $a0, $a1
/* C4D40 8010E980 8C820CEC */  lw         $v0, 0xCEC($a0)
/* C4D44 8010E984 03E00008 */  jr         $ra
/* C4D48 8010E988 00000000 */   nop

glabel func_race_8010E98C
/* C4D4C 8010E98C C4800A18 */  lwc1       $f0, 0xA18($a0)
/* C4D50 8010E990 03E00008 */  jr         $ra
/* C4D54 8010E994 00000000 */   nop

glabel func_race_8010E998
/* C4D58 8010E998 8C820CE4 */  lw         $v0, 0xCE4($a0)
/* C4D5C 8010E99C 03E00008 */  jr         $ra
/* C4D60 8010E9A0 00000000 */   nop

glabel func_race_8010E9A4
/* C4D64 8010E9A4 8C820D50 */  lw         $v0, 0xD50($a0)
/* C4D68 8010E9A8 03E00008 */  jr         $ra
/* C4D6C 8010E9AC 00000000 */   nop

glabel func_race_8010E9B0
/* C4D70 8010E9B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4D74 8010E9B4 AFBF0010 */  sw         $ra, 0x10($sp)
/* C4D78 8010E9B8 0C0455B7 */  jal        func_race_801156DC
/* C4D7C 8010E9BC 24840018 */   addiu     $a0, $a0, 0x18
/* C4D80 8010E9C0 8FBF0010 */  lw         $ra, 0x10($sp)
/* C4D84 8010E9C4 03E00008 */  jr         $ra
/* C4D88 8010E9C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010E9CC
/* C4D8C 8010E9CC 8C820010 */  lw         $v0, 0x10($a0)
/* C4D90 8010E9D0 03E00008 */  jr         $ra
/* C4D94 8010E9D4 00000000 */   nop

glabel func_race_8010E9D8
/* C4D98 8010E9D8 8C820CC4 */  lw         $v0, 0xCC4($a0)
/* C4D9C 8010E9DC 03E00008 */  jr         $ra
/* C4DA0 8010E9E0 00000000 */   nop

glabel func_race_8010E9E4
/* C4DA4 8010E9E4 03E00008 */  jr         $ra
/* C4DA8 8010E9E8 AC850E28 */   sw        $a1, 0xE28($a0)

glabel func_race_8010E9EC
/* C4DAC 8010E9EC 3C038003 */  lui        $v1, %hi(D_8002FAB0)
/* C4DB0 8010E9F0 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C4DB4 8010E9F4 24420001 */  addiu      $v0, $v0, 0x1
/* C4DB8 8010E9F8 304203FF */  andi       $v0, $v0, 0x3FF
/* C4DBC 8010E9FC AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C4DC0 8010EA00 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C4DC4 8010EA04 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C4DC8 8010EA08 00021040 */  sll        $v0, $v0, 1
/* C4DCC 8010EA0C 00431021 */  addu       $v0, $v0, $v1
/* C4DD0 8010EA10 90430001 */  lbu        $v1, 0x1($v0)
/* C4DD4 8010EA14 90820D19 */  lbu        $v0, 0xD19($a0)
/* C4DD8 8010EA18 03E00008 */  jr         $ra
/* C4DDC 8010EA1C 0062102B */   sltu      $v0, $v1, $v0

glabel func_race_8010EA20
/* C4DE0 8010EA20 3C038003 */  lui        $v1, %hi(D_8002FAB0)
/* C4DE4 8010EA24 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C4DE8 8010EA28 24420001 */  addiu      $v0, $v0, 0x1
/* C4DEC 8010EA2C 304203FF */  andi       $v0, $v0, 0x3FF
/* C4DF0 8010EA30 AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C4DF4 8010EA34 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C4DF8 8010EA38 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C4DFC 8010EA3C 00021040 */  sll        $v0, $v0, 1
/* C4E00 8010EA40 00431021 */  addu       $v0, $v0, $v1
/* C4E04 8010EA44 90430001 */  lbu        $v1, 0x1($v0)
/* C4E08 8010EA48 90820D18 */  lbu        $v0, 0xD18($a0)
/* C4E0C 8010EA4C 03E00008 */  jr         $ra
/* C4E10 8010EA50 0062102B */   sltu      $v0, $v1, $v0

glabel func_race_8010EA54
/* C4E14 8010EA54 3C038003 */  lui        $v1, %hi(D_8002FAB0)
/* C4E18 8010EA58 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C4E1C 8010EA5C 24420001 */  addiu      $v0, $v0, 0x1
/* C4E20 8010EA60 304203FF */  andi       $v0, $v0, 0x3FF
/* C4E24 8010EA64 AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C4E28 8010EA68 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C4E2C 8010EA6C 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C4E30 8010EA70 00021040 */  sll        $v0, $v0, 1
/* C4E34 8010EA74 00431021 */  addu       $v0, $v0, $v1
/* C4E38 8010EA78 90430001 */  lbu        $v1, 0x1($v0)
/* C4E3C 8010EA7C 90820D17 */  lbu        $v0, 0xD17($a0)
/* C4E40 8010EA80 03E00008 */  jr         $ra
/* C4E44 8010EA84 0062102B */   sltu      $v0, $v1, $v0

glabel func_race_8010EA88
/* C4E48 8010EA88 3C038003 */  lui        $v1, %hi(D_8002FAB0)
/* C4E4C 8010EA8C 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C4E50 8010EA90 24420001 */  addiu      $v0, $v0, 0x1
/* C4E54 8010EA94 304203FF */  andi       $v0, $v0, 0x3FF
/* C4E58 8010EA98 AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C4E5C 8010EA9C 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C4E60 8010EAA0 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C4E64 8010EAA4 00021040 */  sll        $v0, $v0, 1
/* C4E68 8010EAA8 00431021 */  addu       $v0, $v0, $v1
/* C4E6C 8010EAAC 90430001 */  lbu        $v1, 0x1($v0)
/* C4E70 8010EAB0 90820D16 */  lbu        $v0, 0xD16($a0)
/* C4E74 8010EAB4 03E00008 */  jr         $ra
/* C4E78 8010EAB8 0062102B */   sltu      $v0, $v1, $v0

glabel func_race_8010EABC
/* C4E7C 8010EABC 3C038003 */  lui        $v1, %hi(D_8002FAB0)
/* C4E80 8010EAC0 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C4E84 8010EAC4 24420001 */  addiu      $v0, $v0, 0x1
/* C4E88 8010EAC8 304203FF */  andi       $v0, $v0, 0x3FF
/* C4E8C 8010EACC AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C4E90 8010EAD0 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C4E94 8010EAD4 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C4E98 8010EAD8 00021040 */  sll        $v0, $v0, 1
/* C4E9C 8010EADC 00431021 */  addu       $v0, $v0, $v1
/* C4EA0 8010EAE0 90430001 */  lbu        $v1, 0x1($v0)
/* C4EA4 8010EAE4 90820D15 */  lbu        $v0, 0xD15($a0)
/* C4EA8 8010EAE8 03E00008 */  jr         $ra
/* C4EAC 8010EAEC 0062102B */   sltu      $v0, $v1, $v0

glabel func_race_8010EAF0
/* C4EB0 8010EAF0 3C038003 */  lui        $v1, %hi(D_8002FAB0)
/* C4EB4 8010EAF4 8C62FAB0 */  lw         $v0, %lo(D_8002FAB0)($v1)
/* C4EB8 8010EAF8 24420001 */  addiu      $v0, $v0, 0x1
/* C4EBC 8010EAFC 304203FF */  andi       $v0, $v0, 0x3FF
/* C4EC0 8010EB00 AC62FAB0 */  sw         $v0, %lo(D_8002FAB0)($v1)
/* C4EC4 8010EB04 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C4EC8 8010EB08 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C4ECC 8010EB0C 00021040 */  sll        $v0, $v0, 1
/* C4ED0 8010EB10 00431021 */  addu       $v0, $v0, $v1
/* C4ED4 8010EB14 90430001 */  lbu        $v1, 0x1($v0)
/* C4ED8 8010EB18 90820D14 */  lbu        $v0, 0xD14($a0)
/* C4EDC 8010EB1C 03E00008 */  jr         $ra
/* C4EE0 8010EB20 0062102B */   sltu      $v0, $v1, $v0
