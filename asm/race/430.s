.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F0280
/* A6640 800F0280 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6644 800F0284 AFB00010 */  sw         $s0, 0x10($sp)
/* A6648 800F0288 AFBF0014 */  sw         $ra, 0x14($sp)
/* A664C 800F028C 0C03A1A4 */  jal        func_race_800E8690
/* A6650 800F0290 00808021 */   addu      $s0, $a0, $zero
/* A6654 800F0294 3C02800D */  lui        $v0, %hi(D_race_800CC8D8)
/* A6658 800F0298 2442C8D8 */  addiu      $v0, $v0, %lo(D_race_800CC8D8)
/* A665C 800F029C 02002021 */  addu       $a0, $s0, $zero
/* A6660 800F02A0 0C03C0C1 */  jal        func_race_800F0304
/* A6664 800F02A4 AE020000 */   sw        $v0, 0x0($s0)
/* A6668 800F02A8 02001021 */  addu       $v0, $s0, $zero
/* A666C 800F02AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A6670 800F02B0 8FB00010 */  lw         $s0, 0x10($sp)
/* A6674 800F02B4 03E00008 */  jr         $ra
/* A6678 800F02B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F02BC
/* A667C 800F02BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A6680 800F02C0 AFB00010 */  sw         $s0, 0x10($sp)
/* A6684 800F02C4 00808021 */  addu       $s0, $a0, $zero
/* A6688 800F02C8 AFB10014 */  sw         $s1, 0x14($sp)
/* A668C 800F02CC 00A08821 */  addu       $s1, $a1, $zero
/* A6690 800F02D0 3C02800D */  lui        $v0, %hi(D_race_800CC8D8)
/* A6694 800F02D4 2442C8D8 */  addiu      $v0, $v0, %lo(D_race_800CC8D8)
/* A6698 800F02D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* A669C 800F02DC 0C03C0E1 */  jal        func_race_800F0384
/* A66A0 800F02E0 AE020000 */   sw        $v0, 0x0($s0)
/* A66A4 800F02E4 02002021 */  addu       $a0, $s0, $zero
/* A66A8 800F02E8 0C03A1AC */  jal        func_race_800E86B0
/* A66AC 800F02EC 02202821 */   addu      $a1, $s1, $zero
/* A66B0 800F02F0 8FBF0018 */  lw         $ra, 0x18($sp)
/* A66B4 800F02F4 8FB10014 */  lw         $s1, 0x14($sp)
/* A66B8 800F02F8 8FB00010 */  lw         $s0, 0x10($sp)
/* A66BC 800F02FC 03E00008 */  jr         $ra
/* A66C0 800F0300 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F0304
/* A66C4 800F0304 AC800010 */  sw         $zero, 0x10($a0)
/* A66C8 800F0308 AC800014 */  sw         $zero, 0x14($a0)
/* A66CC 800F030C AC800018 */  sw         $zero, 0x18($a0)
/* A66D0 800F0310 03E00008 */  jr         $ra
/* A66D4 800F0314 AC80001C */   sw        $zero, 0x1C($a0)

glabel func_race_800F0318
/* A66D8 800F0318 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A66DC 800F031C AFB00010 */  sw         $s0, 0x10($sp)
/* A66E0 800F0320 00808021 */  addu       $s0, $a0, $zero
/* A66E4 800F0324 AFBF0018 */  sw         $ra, 0x18($sp)
/* A66E8 800F0328 AFB10014 */  sw         $s1, 0x14($sp)
/* A66EC 800F032C 8E02000C */  lw         $v0, 0xC($s0)
/* A66F0 800F0330 10400003 */  beqz       $v0, .Lrace_800F0340
/* A66F4 800F0334 00A08821 */   addu      $s1, $a1, $zero
/* A66F8 800F0338 0C03C0E1 */  jal        func_race_800F0384
/* A66FC 800F033C 00000000 */   nop
.Lrace_800F0340:
/* A6700 800F0340 2402FFFF */  addiu      $v0, $zero, -0x1
/* A6704 800F0344 AE020008 */  sw         $v0, 0x8($s0)
/* A6708 800F0348 8E23001C */  lw         $v1, 0x1C($s1)
/* A670C 800F034C 8E050000 */  lw         $a1, 0x0($s0)
/* A6710 800F0350 24020001 */  addiu      $v0, $zero, 0x1
/* A6714 800F0354 AE02000C */  sw         $v0, 0xC($s0)
/* A6718 800F0358 AE030010 */  sw         $v1, 0x10($s0)
/* A671C 800F035C 84A40010 */  lh         $a0, 0x10($a1)
/* A6720 800F0360 8CA20014 */  lw         $v0, 0x14($a1)
/* A6724 800F0364 00002821 */  addu       $a1, $zero, $zero
/* A6728 800F0368 0040F809 */  jalr       $v0
/* A672C 800F036C 02042021 */   addu      $a0, $s0, $a0
/* A6730 800F0370 8FBF0018 */  lw         $ra, 0x18($sp)
/* A6734 800F0374 8FB10014 */  lw         $s1, 0x14($sp)
/* A6738 800F0378 8FB00010 */  lw         $s0, 0x10($sp)
/* A673C 800F037C 03E00008 */  jr         $ra
/* A6740 800F0380 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F0384
/* A6744 800F0384 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6748 800F0388 AFB00010 */  sw         $s0, 0x10($sp)
/* A674C 800F038C 00808021 */  addu       $s0, $a0, $zero
/* A6750 800F0390 AFBF0014 */  sw         $ra, 0x14($sp)
/* A6754 800F0394 8E020000 */  lw         $v0, 0x0($s0)
/* A6758 800F0398 00002821 */  addu       $a1, $zero, $zero
/* A675C 800F039C 84440018 */  lh         $a0, 0x18($v0)
/* A6760 800F03A0 8C42001C */  lw         $v0, 0x1C($v0)
/* A6764 800F03A4 0040F809 */  jalr       $v0
/* A6768 800F03A8 02042021 */   addu      $a0, $s0, $a0
/* A676C 800F03AC 0C03C0C1 */  jal        func_race_800F0304
/* A6770 800F03B0 02002021 */   addu      $a0, $s0, $zero
/* A6774 800F03B4 0C03A1C0 */  jal        func_race_800E8700
/* A6778 800F03B8 02002021 */   addu      $a0, $s0, $zero
/* A677C 800F03BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A6780 800F03C0 8FB00010 */  lw         $s0, 0x10($sp)
/* A6784 800F03C4 03E00008 */  jr         $ra
/* A6788 800F03C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F03CC
/* A678C 800F03CC 24020001 */  addiu      $v0, $zero, 0x1
/* A6790 800F03D0 AC82001C */  sw         $v0, 0x1C($a0)
/* A6794 800F03D4 24020002 */  addiu      $v0, $zero, 0x2
/* A6798 800F03D8 03E00008 */  jr         $ra
/* A679C 800F03DC AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800F03E0
/* A67A0 800F03E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A67A4 800F03E4 AFB00010 */  sw         $s0, 0x10($sp)
/* A67A8 800F03E8 00808021 */  addu       $s0, $a0, $zero
/* A67AC 800F03EC AFBF0014 */  sw         $ra, 0x14($sp)
/* A67B0 800F03F0 8E050014 */  lw         $a1, 0x14($s0)
/* A67B4 800F03F4 10A00006 */  beqz       $a1, .Lrace_800F0410
/* A67B8 800F03F8 24020001 */   addiu     $v0, $zero, 0x1
/* A67BC 800F03FC 8E040010 */  lw         $a0, 0x10($s0)
/* A67C0 800F0400 0C01088C */  jal        func_80042230
/* A67C4 800F0404 00000000 */   nop
/* A67C8 800F0408 AE000014 */  sw         $zero, 0x14($s0)
/* A67CC 800F040C 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800F0410:
/* A67D0 800F0410 AE02000C */  sw         $v0, 0xC($s0)
/* A67D4 800F0414 8FBF0014 */  lw         $ra, 0x14($sp)
/* A67D8 800F0418 8FB00010 */  lw         $s0, 0x10($sp)
/* A67DC 800F041C 03E00008 */  jr         $ra
/* A67E0 800F0420 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F0424
/* A67E4 800F0424 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A67E8 800F0428 AFB00018 */  sw         $s0, 0x18($sp)
/* A67EC 800F042C 00808021 */  addu       $s0, $a0, $zero
/* A67F0 800F0430 AFB1001C */  sw         $s1, 0x1C($sp)
/* A67F4 800F0434 AFBF0020 */  sw         $ra, 0x20($sp)
/* A67F8 800F0438 8E03000C */  lw         $v1, 0xC($s0)
/* A67FC 800F043C 24020001 */  addiu      $v0, $zero, 0x1
/* A6800 800F0440 1062001F */  beq        $v1, $v0, .Lrace_800F04C0
/* A6804 800F0444 00A08821 */   addu      $s1, $a1, $zero
/* A6808 800F0448 0C03A1C4 */  jal        func_race_800E8710
/* A680C 800F044C 00000000 */   nop
/* A6810 800F0450 8E020018 */  lw         $v0, 0x18($s0)
/* A6814 800F0454 00511021 */  addu       $v0, $v0, $s1
/* A6818 800F0458 AE020018 */  sw         $v0, 0x18($s0)
/* A681C 800F045C 2C4203E9 */  sltiu      $v0, $v0, 0x3E9
/* A6820 800F0460 14400008 */  bnez       $v0, .Lrace_800F0484
/* A6824 800F0464 00000000 */   nop
/* A6828 800F0468 8E050014 */  lw         $a1, 0x14($s0)
/* A682C 800F046C 10A00005 */  beqz       $a1, .Lrace_800F0484
/* A6830 800F0470 00000000 */   nop
/* A6834 800F0474 8E040010 */  lw         $a0, 0x10($s0)
/* A6838 800F0478 0C01088C */  jal        func_80042230
/* A683C 800F047C 00000000 */   nop
/* A6840 800F0480 AE000014 */  sw         $zero, 0x14($s0)
.Lrace_800F0484:
/* A6844 800F0484 8E02001C */  lw         $v0, 0x1C($s0)
/* A6848 800F0488 1040000D */  beqz       $v0, .Lrace_800F04C0
/* A684C 800F048C 00000000 */   nop
/* A6850 800F0490 8E020014 */  lw         $v0, 0x14($s0)
/* A6854 800F0494 1440000A */  bnez       $v0, .Lrace_800F04C0
/* A6858 800F0498 3C05800D */   lui       $a1, %hi(D_race_800CC8C0)
/* A685C 800F049C 24A5C8C0 */  addiu      $a1, $a1, %lo(D_race_800CC8C0)
/* A6860 800F04A0 00003021 */  addu       $a2, $zero, $zero
/* A6864 800F04A4 AFA00010 */  sw         $zero, 0x10($sp)
/* A6868 800F04A8 8E040010 */  lw         $a0, 0x10($s0)
/* A686C 800F04AC 0C0107DD */  jal        func_80041F74
/* A6870 800F04B0 00C03821 */   addu      $a3, $a2, $zero
/* A6874 800F04B4 10400002 */  beqz       $v0, .Lrace_800F04C0
/* A6878 800F04B8 AE020014 */   sw        $v0, 0x14($s0)
/* A687C 800F04BC AE000018 */  sw         $zero, 0x18($s0)
.Lrace_800F04C0:
/* A6880 800F04C0 8FBF0020 */  lw         $ra, 0x20($sp)
/* A6884 800F04C4 8FB1001C */  lw         $s1, 0x1C($sp)
/* A6888 800F04C8 8FB00018 */  lw         $s0, 0x18($sp)
/* A688C 800F04CC 03E00008 */  jr         $ra
/* A6890 800F04D0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800F04D4
/* A6894 800F04D4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A6898 800F04D8 AFB10054 */  sw         $s1, 0x54($sp)
/* A689C 800F04DC 00808821 */  addu       $s1, $a0, $zero
/* A68A0 800F04E0 AFBF005C */  sw         $ra, 0x5C($sp)
/* A68A4 800F04E4 AFB20058 */  sw         $s2, 0x58($sp)
/* A68A8 800F04E8 AFB00050 */  sw         $s0, 0x50($sp)
/* A68AC 800F04EC 8CC203EC */  lw         $v0, 0x3EC($a2)
/* A68B0 800F04F0 10400009 */  beqz       $v0, .Lrace_800F0518
/* A68B4 800F04F4 00A09021 */   addu      $s2, $a1, $zero
/* A68B8 800F04F8 8E250014 */  lw         $a1, 0x14($s1)
/* A68BC 800F04FC 10A00075 */  beqz       $a1, .Lrace_800F06D4
/* A68C0 800F0500 AE20001C */   sw        $zero, 0x1C($s1)
/* A68C4 800F0504 8E240010 */  lw         $a0, 0x10($s1)
/* A68C8 800F0508 0C01088C */  jal        func_80042230
/* A68CC 800F050C 00000000 */   nop
/* A68D0 800F0510 0803C148 */  j          .Lrace_800F0520
/* A68D4 800F0514 AE200014 */   sw        $zero, 0x14($s1)
.Lrace_800F0518:
/* A68D8 800F0518 24020001 */  addiu      $v0, $zero, 0x1
/* A68DC 800F051C AE22001C */  sw         $v0, 0x1C($s1)
.Lrace_800F0520:
/* A68E0 800F0520 8E220014 */  lw         $v0, 0x14($s1)
/* A68E4 800F0524 1040006B */  beqz       $v0, .Lrace_800F06D4
/* A68E8 800F0528 27B00010 */   addiu     $s0, $sp, 0x10
/* A68EC 800F052C 8E430000 */  lw         $v1, 0x0($s2)
/* A68F0 800F0530 02002821 */  addu       $a1, $s0, $zero
/* A68F4 800F0534 8C62000C */  lw         $v0, 0xC($v1)
/* A68F8 800F0538 27A60020 */  addiu      $a2, $sp, 0x20
/* A68FC 800F053C 84440040 */  lh         $a0, 0x40($v0)
/* A6900 800F0540 8C420044 */  lw         $v0, 0x44($v0)
/* A6904 800F0544 0040F809 */  jalr       $v0
/* A6908 800F0548 00642021 */   addu      $a0, $v1, $a0
/* A690C 800F054C 8E430000 */  lw         $v1, 0x0($s2)
/* A6910 800F0550 8C62000C */  lw         $v0, 0xC($v1)
/* A6914 800F0554 27A50040 */  addiu      $a1, $sp, 0x40
/* A6918 800F0558 84440088 */  lh         $a0, 0x88($v0)
/* A691C 800F055C 8C42008C */  lw         $v0, 0x8C($v0)
/* A6920 800F0560 0040F809 */  jalr       $v0
/* A6924 800F0564 00642021 */   addu      $a0, $v1, $a0
/* A6928 800F0568 C7A40010 */  lwc1       $f4, 0x10($sp)
/* A692C 800F056C 3C01800D */  lui        $at, %hi(D_race_800CC8C8)
/* A6930 800F0570 C420C8C8 */  lwc1       $f0, %lo(D_race_800CC8C8)($at)
/* A6934 800F0574 46002102 */  mul.s      $f4, $f4, $f0
/* A6938 800F0578 C7A80014 */  lwc1       $f8, 0x14($sp)
/* A693C 800F057C 46004202 */  mul.s      $f8, $f8, $f0
/* A6940 800F0580 C7AA0018 */  lwc1       $f10, 0x18($sp)
/* A6944 800F0584 46005282 */  mul.s      $f10, $f10, $f0
/* A6948 800F0588 C7A60028 */  lwc1       $f6, 0x28($sp)
/* A694C 800F058C 3C01800D */  lui        $at, %hi(D_race_800CC8CC)
/* A6950 800F0590 C420C8CC */  lwc1       $f0, %lo(D_race_800CC8CC)($at)
/* A6954 800F0594 46003182 */  mul.s      $f6, $f6, $f0
/* A6958 800F0598 C7A20040 */  lwc1       $f2, 0x40($sp)
/* A695C 800F059C 46041080 */  add.s      $f2, $f2, $f4
/* A6960 800F05A0 C7A00048 */  lwc1       $f0, 0x48($sp)
/* A6964 800F05A4 460A0000 */  add.s      $f0, $f0, $f10
/* A6968 800F05A8 C7A40044 */  lwc1       $f4, 0x44($sp)
/* A696C 800F05AC 02002021 */  addu       $a0, $s0, $zero
/* A6970 800F05B0 46082100 */  add.s      $f4, $f4, $f8
/* A6974 800F05B4 02002821 */  addu       $a1, $s0, $zero
/* A6978 800F05B8 AFA00018 */  sw         $zero, 0x18($sp)
/* A697C 800F05BC 46060180 */  add.s      $f6, $f0, $f6
/* A6980 800F05C0 E7A20040 */  swc1       $f2, 0x40($sp)
/* A6984 800F05C4 E7A00048 */  swc1       $f0, 0x48($sp)
/* A6988 800F05C8 E7A40044 */  swc1       $f4, 0x44($sp)
/* A698C 800F05CC 0C000F26 */  jal        func_80003C98
/* A6990 800F05D0 E7A60048 */   swc1      $f6, 0x48($sp)
/* A6994 800F05D4 3C01800D */  lui        $at, %hi(D_race_800CC8D0)
/* A6998 800F05D8 C420C8D0 */  lwc1       $f0, %lo(D_race_800CC8D0)($at)
/* A699C 800F05DC AFA00020 */  sw         $zero, 0x20($sp)
/* A69A0 800F05E0 AFA00024 */  sw         $zero, 0x24($sp)
/* A69A4 800F05E4 E7A00028 */  swc1       $f0, 0x28($sp)
/* A69A8 800F05E8 C6040008 */  lwc1       $f4, 0x8($s0)
/* A69AC 800F05EC C7A00020 */  lwc1       $f0, 0x20($sp)
/* A69B0 800F05F0 46002102 */  mul.s      $f4, $f4, $f0
/* A69B4 800F05F4 C7A80010 */  lwc1       $f8, 0x10($sp)
/* A69B8 800F05F8 46004082 */  mul.s      $f2, $f8, $f0
/* A69BC 800F05FC C6060004 */  lwc1       $f6, 0x4($s0)
/* A69C0 800F0600 3C0451EB */  lui        $a0, (0x51EB851F >> 16)
/* A69C4 800F0604 46003002 */  mul.s      $f0, $f6, $f0
/* A69C8 800F0608 3C068003 */  lui        $a2, %hi(D_8002FAB0)
/* A69CC 800F060C 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* A69D0 800F0610 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* A69D4 800F0614 8CC5FAB0 */  lw         $a1, %lo(D_8002FAB0)($a2)
/* A69D8 800F0618 46043181 */  sub.s      $f6, $f6, $f4
/* A69DC 800F061C 24A50001 */  addiu      $a1, $a1, 0x1
/* A69E0 800F0620 30A503FF */  andi       $a1, $a1, 0x3FF
/* A69E4 800F0624 46082101 */  sub.s      $f4, $f4, $f8
/* A69E8 800F0628 00051040 */  sll        $v0, $a1, 1
/* A69EC 800F062C 00431021 */  addu       $v0, $v0, $v1
/* A69F0 800F0630 46001081 */  sub.s      $f2, $f2, $f0
/* A69F4 800F0634 E7A60030 */  swc1       $f6, 0x30($sp)
/* A69F8 800F0638 E7A40034 */  swc1       $f4, 0x34($sp)
/* A69FC 800F063C E7A20038 */  swc1       $f2, 0x38($sp)
/* A6A00 800F0640 94430000 */  lhu        $v1, 0x0($v0)
/* A6A04 800F0644 3484851F */  ori        $a0, $a0, (0x51EB851F & 0xFFFF)
/* A6A08 800F0648 00640019 */  multu      $v1, $a0
/* A6A0C 800F064C 00003810 */  mfhi       $a3
/* A6A10 800F0650 00072182 */  srl        $a0, $a3, 6
/* A6A14 800F0654 00041040 */  sll        $v0, $a0, 1
/* A6A18 800F0658 00441021 */  addu       $v0, $v0, $a0
/* A6A1C 800F065C 000210C0 */  sll        $v0, $v0, 3
/* A6A20 800F0660 00441021 */  addu       $v0, $v0, $a0
/* A6A24 800F0664 000210C0 */  sll        $v0, $v0, 3
/* A6A28 800F0668 00621823 */  subu       $v1, $v1, $v0
/* A6A2C 800F066C 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* A6A30 800F0670 2463FF9C */  addiu      $v1, $v1, -0x64
/* A6A34 800F0674 44830000 */  mtc1       $v1, $f0
/* A6A38 800F0678 46800020 */  cvt.s.w    $f0, $f0
/* A6A3C 800F067C 46003182 */  mul.s      $f6, $f6, $f0
/* A6A40 800F0680 00000000 */  nop
/* A6A44 800F0684 46002102 */  mul.s      $f4, $f4, $f0
/* A6A48 800F0688 C7A20040 */  lwc1       $f2, 0x40($sp)
/* A6A4C 800F068C 46061080 */  add.s      $f2, $f2, $f6
/* A6A50 800F0690 C7A00044 */  lwc1       $f0, 0x44($sp)
/* A6A54 800F0694 46040000 */  add.s      $f0, $f0, $f4
/* A6A58 800F0698 E7A20040 */  swc1       $f2, 0x40($sp)
/* A6A5C 800F069C E7A00044 */  swc1       $f0, 0x44($sp)
/* A6A60 800F06A0 8E220014 */  lw         $v0, 0x14($s1)
/* A6A64 800F06A4 8C440000 */  lw         $a0, 0x0($v0)
/* A6A68 800F06A8 10800004 */  beqz       $a0, .Lrace_800F06BC
/* A6A6C 800F06AC ACC5FAB0 */   sw        $a1, %lo(D_8002FAB0)($a2)
/* A6A70 800F06B0 02002821 */  addu       $a1, $s0, $zero
/* A6A74 800F06B4 0C010521 */  jal        func_80041484
/* A6A78 800F06B8 27A60020 */   addiu     $a2, $sp, 0x20
.Lrace_800F06BC:
/* A6A7C 800F06BC 8E220014 */  lw         $v0, 0x14($s1)
/* A6A80 800F06C0 8C440000 */  lw         $a0, 0x0($v0)
/* A6A84 800F06C4 10800003 */  beqz       $a0, .Lrace_800F06D4
/* A6A88 800F06C8 00000000 */   nop
/* A6A8C 800F06CC 0C01058D */  jal        func_80041634
/* A6A90 800F06D0 27A50040 */   addiu     $a1, $sp, 0x40
.Lrace_800F06D4:
/* A6A94 800F06D4 8FBF005C */  lw         $ra, 0x5C($sp)
/* A6A98 800F06D8 8FB20058 */  lw         $s2, 0x58($sp)
/* A6A9C 800F06DC 8FB10054 */  lw         $s1, 0x54($sp)
/* A6AA0 800F06E0 8FB00050 */  lw         $s0, 0x50($sp)
/* A6AA4 800F06E4 03E00008 */  jr         $ra
/* A6AA8 800F06E8 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_race_800F06EC
/* A6AAC 800F06EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6AB0 800F06F0 AFB00010 */  sw         $s0, 0x10($sp)
/* A6AB4 800F06F4 00808021 */  addu       $s0, $a0, $zero
/* A6AB8 800F06F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A6ABC 800F06FC 8E050014 */  lw         $a1, 0x14($s0)
/* A6AC0 800F0700 50A00006 */  beql       $a1, $zero, .Lrace_800F071C
/* A6AC4 800F0704 00002821 */   addu      $a1, $zero, $zero
/* A6AC8 800F0708 8E040010 */  lw         $a0, 0x10($s0)
/* A6ACC 800F070C 0C01088C */  jal        func_80042230
/* A6AD0 800F0710 00000000 */   nop
/* A6AD4 800F0714 AE000014 */  sw         $zero, 0x14($s0)
/* A6AD8 800F0718 00002821 */  addu       $a1, $zero, $zero
.Lrace_800F071C:
/* A6ADC 800F071C 8E030000 */  lw         $v1, 0x0($s0)
/* A6AE0 800F0720 24020001 */  addiu      $v0, $zero, 0x1
/* A6AE4 800F0724 AE02000C */  sw         $v0, 0xC($s0)
/* A6AE8 800F0728 84640010 */  lh         $a0, 0x10($v1)
/* A6AEC 800F072C 8C620014 */  lw         $v0, 0x14($v1)
/* A6AF0 800F0730 0040F809 */  jalr       $v0
/* A6AF4 800F0734 02042021 */   addu      $a0, $s0, $a0
/* A6AF8 800F0738 8FBF0014 */  lw         $ra, 0x14($sp)
/* A6AFC 800F073C 8FB00010 */  lw         $s0, 0x10($sp)
/* A6B00 800F0740 03E00008 */  jr         $ra
/* A6B04 800F0744 27BD0018 */   addiu     $sp, $sp, 0x18
