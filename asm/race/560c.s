.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80101330
/* B76F0 80101330 00801021 */  addu       $v0, $a0, $zero
/* B76F4 80101334 3C03800D */  lui        $v1, %hi(D_race_800CD518)
/* B76F8 80101338 2463D518 */  addiu      $v1, $v1, %lo(D_race_800CD518)
/* B76FC 8010133C AC430024 */  sw         $v1, 0x24($v0)
/* B7700 80101340 AC400000 */  sw         $zero, 0x0($v0)
/* B7704 80101344 03E00008 */  jr         $ra
/* B7708 80101348 AC400008 */   sw        $zero, 0x8($v0)

glabel func_race_8010134C
/* B770C 8010134C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B7710 80101350 AFB10014 */  sw         $s1, 0x14($sp)
/* B7714 80101354 00808821 */  addu       $s1, $a0, $zero
/* B7718 80101358 AFB00010 */  sw         $s0, 0x10($sp)
/* B771C 8010135C 00A08021 */  addu       $s0, $a1, $zero
/* B7720 80101360 3C02800D */  lui        $v0, %hi(D_race_800CD518)
/* B7724 80101364 2442D518 */  addiu      $v0, $v0, %lo(D_race_800CD518)
/* B7728 80101368 AFBF0018 */  sw         $ra, 0x18($sp)
/* B772C 8010136C 0C04052E */  jal        func_race_801014B8
/* B7730 80101370 AE220024 */   sw        $v0, 0x24($s1)
/* B7734 80101374 32100001 */  andi       $s0, $s0, 0x1
/* B7738 80101378 12000003 */  beqz       $s0, .Lrace_80101388
/* B773C 8010137C 00000000 */   nop
/* B7740 80101380 0C01FB5C */  jal        func_8007ED70
/* B7744 80101384 02202021 */   addu      $a0, $s1, $zero
.Lrace_80101388:
/* B7748 80101388 8FBF0018 */  lw         $ra, 0x18($sp)
/* B774C 8010138C 8FB10014 */  lw         $s1, 0x14($sp)
/* B7750 80101390 8FB00010 */  lw         $s0, 0x10($sp)
/* B7754 80101394 03E00008 */  jr         $ra
/* B7758 80101398 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010139C
/* B775C 8010139C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B7760 801013A0 AFB40020 */  sw         $s4, 0x20($sp)
/* B7764 801013A4 0080A021 */  addu       $s4, $a0, $zero
/* B7768 801013A8 3C028013 */  lui        $v0, %hi(D_race_801321F0)
/* B776C 801013AC 8C4421F0 */  lw         $a0, %lo(D_race_801321F0)($v0)
/* B7770 801013B0 AFB20018 */  sw         $s2, 0x18($sp)
/* B7774 801013B4 00A09021 */  addu       $s2, $a1, $zero
/* B7778 801013B8 AFBF0028 */  sw         $ra, 0x28($sp)
/* B777C 801013BC AFB50024 */  sw         $s5, 0x24($sp)
/* B7780 801013C0 AFB3001C */  sw         $s3, 0x1C($sp)
/* B7784 801013C4 AFB10014 */  sw         $s1, 0x14($sp)
/* B7788 801013C8 0C01FB65 */  jal        func_8007ED94
/* B778C 801013CC AFB00010 */   sw        $s0, 0x10($sp)
/* B7790 801013D0 00122040 */  sll        $a0, $s2, 1
/* B7794 801013D4 00922021 */  addu       $a0, $a0, $s2
/* B7798 801013D8 00042080 */  sll        $a0, $a0, 2
/* B779C 801013DC 00922023 */  subu       $a0, $a0, $s2
/* B77A0 801013E0 0C00943C */  jal        func_800250F0
/* B77A4 801013E4 00042080 */   sll       $a0, $a0, 2
/* B77A8 801013E8 00409821 */  addu       $s3, $v0, $zero
/* B77AC 801013EC 2650FFFF */  addiu      $s0, $s2, -0x1
/* B77B0 801013F0 06000007 */  bltz       $s0, .Lrace_80101410
/* B77B4 801013F4 02608821 */   addu      $s1, $s3, $zero
/* B77B8 801013F8 2415FFFF */  addiu      $s5, $zero, -0x1
.Lrace_801013FC:
/* B77BC 801013FC 0C045ADC */  jal        func_race_80116B70
/* B77C0 80101400 02202021 */   addu      $a0, $s1, $zero
/* B77C4 80101404 2610FFFF */  addiu      $s0, $s0, -0x1
/* B77C8 80101408 1615FFFC */  bne        $s0, $s5, .Lrace_801013FC
/* B77CC 8010140C 2631002C */   addiu     $s1, $s1, 0x2C
.Lrace_80101410:
/* B77D0 80101410 0C01FB72 */  jal        func_8007EDC8
/* B77D4 80101414 AE930000 */   sw        $s3, 0x0($s4)
/* B77D8 80101418 8E820000 */  lw         $v0, 0x0($s4)
/* B77DC 8010141C 14400007 */  bnez       $v0, .Lrace_8010143C
/* B77E0 80101420 00002821 */   addu      $a1, $zero, $zero
/* B77E4 80101424 3C04800D */  lui        $a0, %hi(D_race_800CD510)
/* B77E8 80101428 2484D510 */  addiu      $a0, $a0, %lo(D_race_800CD510)
/* B77EC 8010142C 00A03021 */  addu       $a2, $a1, $zero
/* B77F0 80101430 0C011ACF */  jal        func_80046B3C
/* B77F4 80101434 00A03821 */   addu      $a3, $a1, $zero
/* B77F8 80101438 00002821 */  addu       $a1, $zero, $zero
.Lrace_8010143C:
/* B77FC 8010143C 2646FFFF */  addiu      $a2, $s2, -0x1
/* B7800 80101440 8E820000 */  lw         $v0, 0x0($s4)
/* B7804 80101444 00A02021 */  addu       $a0, $a1, $zero
/* B7808 80101448 AE820004 */  sw         $v0, 0x4($s4)
.Lrace_8010144C:
/* B780C 8010144C 00A6102B */  sltu       $v0, $a1, $a2
/* B7810 80101450 10400007 */  beqz       $v0, .Lrace_80101470
/* B7814 80101454 24A50001 */   addiu     $a1, $a1, 0x1
/* B7818 80101458 8E830000 */  lw         $v1, 0x0($s4)
/* B781C 8010145C 00831821 */  addu       $v1, $a0, $v1
/* B7820 80101460 2484002C */  addiu      $a0, $a0, 0x2C
/* B7824 80101464 2462002C */  addiu      $v0, $v1, 0x2C
/* B7828 80101468 08040513 */  j          .Lrace_8010144C
/* B782C 8010146C AC620028 */   sw        $v0, 0x28($v1)
.Lrace_80101470:
/* B7830 80101470 00121040 */  sll        $v0, $s2, 1
/* B7834 80101474 00521021 */  addu       $v0, $v0, $s2
/* B7838 80101478 00021080 */  sll        $v0, $v0, 2
/* B783C 8010147C 00521023 */  subu       $v0, $v0, $s2
/* B7840 80101480 8E830000 */  lw         $v1, 0x0($s4)
/* B7844 80101484 00021080 */  sll        $v0, $v0, 2
/* B7848 80101488 00431021 */  addu       $v0, $v0, $v1
/* B784C 8010148C AC40FFFC */  sw         $zero, -0x4($v0)
/* B7850 80101490 AE800008 */  sw         $zero, 0x8($s4)
/* B7854 80101494 8FBF0028 */  lw         $ra, 0x28($sp)
/* B7858 80101498 8FB50024 */  lw         $s5, 0x24($sp)
/* B785C 8010149C 8FB40020 */  lw         $s4, 0x20($sp)
/* B7860 801014A0 8FB3001C */  lw         $s3, 0x1C($sp)
/* B7864 801014A4 8FB20018 */  lw         $s2, 0x18($sp)
/* B7868 801014A8 8FB10014 */  lw         $s1, 0x14($sp)
/* B786C 801014AC 8FB00010 */  lw         $s0, 0x10($sp)
/* B7870 801014B0 03E00008 */  jr         $ra
/* B7874 801014B4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_801014B8
/* B7878 801014B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B787C 801014BC AFB00010 */  sw         $s0, 0x10($sp)
/* B7880 801014C0 00808021 */  addu       $s0, $a0, $zero
/* B7884 801014C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7888 801014C8 8E040000 */  lw         $a0, 0x0($s0)
/* B788C 801014CC 50800005 */  beql       $a0, $zero, .Lrace_801014E4
/* B7890 801014D0 AE000004 */   sw        $zero, 0x4($s0)
/* B7894 801014D4 0C009444 */  jal        func_80025110
/* B7898 801014D8 00000000 */   nop
/* B789C 801014DC AE000000 */  sw         $zero, 0x0($s0)
/* B78A0 801014E0 AE000004 */  sw         $zero, 0x4($s0)
.Lrace_801014E4:
/* B78A4 801014E4 AE000008 */  sw         $zero, 0x8($s0)
/* B78A8 801014E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B78AC 801014EC 8FB00010 */  lw         $s0, 0x10($sp)
/* B78B0 801014F0 03E00008 */  jr         $ra
/* B78B4 801014F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801014F8
/* B78B8 801014F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B78BC 801014FC AFB10014 */  sw         $s1, 0x14($sp)
/* B78C0 80101500 00808821 */  addu       $s1, $a0, $zero
/* B78C4 80101504 AFBF0018 */  sw         $ra, 0x18($sp)
/* B78C8 80101508 AFB00010 */  sw         $s0, 0x10($sp)
/* B78CC 8010150C 8E300004 */  lw         $s0, 0x4($s1)
/* B78D0 80101510 1200000C */  beqz       $s0, .Lrace_80101544
/* B78D4 80101514 02002021 */   addu      $a0, $s0, $zero
/* B78D8 80101518 8E020028 */  lw         $v0, 0x28($s0)
/* B78DC 8010151C 0C045AE9 */  jal        func_race_80116BA4
/* B78E0 80101520 AE220004 */   sw        $v0, 0x4($s1)
/* B78E4 80101524 8E220024 */  lw         $v0, 0x24($s1)
/* B78E8 80101528 02002821 */  addu       $a1, $s0, $zero
/* B78EC 8010152C 84440008 */  lh         $a0, 0x8($v0)
/* B78F0 80101530 8C42000C */  lw         $v0, 0xC($v0)
/* B78F4 80101534 0040F809 */  jalr       $v0
/* B78F8 80101538 02242021 */   addu      $a0, $s1, $a0
/* B78FC 8010153C 08040552 */  j          .Lrace_80101548
/* B7900 80101540 02001021 */   addu      $v0, $s0, $zero
.Lrace_80101544:
/* B7904 80101544 00001021 */  addu       $v0, $zero, $zero
.Lrace_80101548:
/* B7908 80101548 8FBF0018 */  lw         $ra, 0x18($sp)
/* B790C 8010154C 8FB10014 */  lw         $s1, 0x14($sp)
/* B7910 80101550 8FB00010 */  lw         $s0, 0x10($sp)
/* B7914 80101554 03E00008 */  jr         $ra
/* B7918 80101558 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010155C
/* B791C 8010155C 8CA30004 */  lw         $v1, 0x4($a1)
/* B7920 80101560 24020001 */  addiu      $v0, $zero, 0x1
/* B7924 80101564 10620003 */  beq        $v1, $v0, .Lrace_80101574
/* B7928 80101568 00000000 */   nop
/* B792C 8010156C 03E00008 */  jr         $ra
/* B7930 80101570 00001021 */   addu      $v0, $zero, $zero
.Lrace_80101574:
/* B7934 80101574 8C830008 */  lw         $v1, 0x8($a0)
/* B7938 80101578 ACA30028 */  sw         $v1, 0x28($a1)
/* B793C 8010157C AC850008 */  sw         $a1, 0x8($a0)
/* B7940 80101580 03E00008 */  jr         $ra
/* B7944 80101584 ACA00018 */   sw        $zero, 0x18($a1)

glabel func_race_80101588
/* B7948 80101588 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B794C 8010158C AFB10014 */  sw         $s1, 0x14($sp)
/* B7950 80101590 00808821 */  addu       $s1, $a0, $zero
/* B7954 80101594 AFB20018 */  sw         $s2, 0x18($sp)
/* B7958 80101598 00009021 */  addu       $s2, $zero, $zero
/* B795C 8010159C AFBF001C */  sw         $ra, 0x1C($sp)
/* B7960 801015A0 AFB00010 */  sw         $s0, 0x10($sp)
/* B7964 801015A4 8E250008 */  lw         $a1, 0x8($s1)
.Lrace_801015A8:
/* B7968 801015A8 10A0000F */  beqz       $a1, .Lrace_801015E8
/* B796C 801015AC 00000000 */   nop
/* B7970 801015B0 8CA20024 */  lw         $v0, 0x24($a1)
/* B7974 801015B4 8CB00028 */  lw         $s0, 0x28($a1)
/* B7978 801015B8 54400009 */  bnel       $v0, $zero, .Lrace_801015E0
/* B797C 801015BC 00A09021 */   addu      $s2, $a1, $zero
/* B7980 801015C0 8E220008 */  lw         $v0, 0x8($s1)
/* B7984 801015C4 54450002 */  bnel       $v0, $a1, .Lrace_801015D0
/* B7988 801015C8 AE500028 */   sw        $s0, 0x28($s2)
/* B798C 801015CC AE300008 */  sw         $s0, 0x8($s1)
.Lrace_801015D0:
/* B7990 801015D0 0C0405A4 */  jal        func_race_80101690
/* B7994 801015D4 02202021 */   addu      $a0, $s1, $zero
/* B7998 801015D8 0804056A */  j          .Lrace_801015A8
/* B799C 801015DC 02002821 */   addu      $a1, $s0, $zero
.Lrace_801015E0:
/* B79A0 801015E0 0804056A */  j          .Lrace_801015A8
/* B79A4 801015E4 02002821 */   addu      $a1, $s0, $zero
.Lrace_801015E8:
/* B79A8 801015E8 8FBF001C */  lw         $ra, 0x1C($sp)
/* B79AC 801015EC 8FB20018 */  lw         $s2, 0x18($sp)
/* B79B0 801015F0 8FB10014 */  lw         $s1, 0x14($sp)
/* B79B4 801015F4 8FB00010 */  lw         $s0, 0x10($sp)
/* B79B8 801015F8 03E00008 */  jr         $ra
/* B79BC 801015FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80101600
/* B79C0 80101600 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B79C4 80101604 AFB10014 */  sw         $s1, 0x14($sp)
/* B79C8 80101608 00808821 */  addu       $s1, $a0, $zero
/* B79CC 8010160C AFB20018 */  sw         $s2, 0x18($sp)
/* B79D0 80101610 00A09021 */  addu       $s2, $a1, $zero
/* B79D4 80101614 AFBF001C */  sw         $ra, 0x1C($sp)
/* B79D8 80101618 AFB00010 */  sw         $s0, 0x10($sp)
/* B79DC 8010161C 8E300008 */  lw         $s0, 0x8($s1)
/* B79E0 80101620 24020001 */  addiu      $v0, $zero, 0x1
/* B79E4 80101624 AE22000C */  sw         $v0, 0xC($s1)
.Lrace_80101628:
/* B79E8 80101628 12000011 */  beqz       $s0, .Lrace_80101670
/* B79EC 8010162C 00000000 */   nop
/* B79F0 80101630 8E020018 */  lw         $v0, 0x18($s0)
/* B79F4 80101634 8E050014 */  lw         $a1, 0x14($s0)
/* B79F8 80101638 00521821 */  addu       $v1, $v0, $s2
/* B79FC 8010163C 0065102B */  sltu       $v0, $v1, $a1
/* B7A00 80101640 14400008 */  bnez       $v0, .Lrace_80101664
/* B7A04 80101644 AE030018 */   sw        $v1, 0x18($s0)
/* B7A08 80101648 02002021 */  addu       $a0, $s0, $zero
/* B7A0C 8010164C AE25001C */  sw         $a1, 0x1C($s1)
/* B7A10 80101650 02202821 */  addu       $a1, $s1, $zero
/* B7A14 80101654 2626000C */  addiu      $a2, $s1, 0xC
/* B7A18 80101658 0C045AFC */  jal        func_race_80116BF0
/* B7A1C 8010165C AE230020 */   sw        $v1, 0x20($s1)
/* B7A20 80101660 AE000018 */  sw         $zero, 0x18($s0)
.Lrace_80101664:
/* B7A24 80101664 8E100028 */  lw         $s0, 0x28($s0)
/* B7A28 80101668 0804058A */  j          .Lrace_80101628
/* B7A2C 8010166C 00000000 */   nop
.Lrace_80101670:
/* B7A30 80101670 0C040562 */  jal        func_race_80101588
/* B7A34 80101674 02202021 */   addu      $a0, $s1, $zero
/* B7A38 80101678 8FBF001C */  lw         $ra, 0x1C($sp)
/* B7A3C 8010167C 8FB20018 */  lw         $s2, 0x18($sp)
/* B7A40 80101680 8FB10014 */  lw         $s1, 0x14($sp)
/* B7A44 80101684 8FB00010 */  lw         $s0, 0x10($sp)
/* B7A48 80101688 03E00008 */  jr         $ra
/* B7A4C 8010168C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80101690
/* B7A50 80101690 8C820004 */  lw         $v0, 0x4($a0)
/* B7A54 80101694 ACA20028 */  sw         $v0, 0x28($a1)
/* B7A58 80101698 03E00008 */  jr         $ra
/* B7A5C 8010169C AC850004 */   sw        $a1, 0x4($a0)

glabel func_race_801016A0
/* B7A60 801016A0 3C028013 */  lui        $v0, %hi(D_race_801321F0)
/* B7A64 801016A4 03E00008 */  jr         $ra
/* B7A68 801016A8 AC4421F0 */   sw        $a0, %lo(D_race_801321F0)($v0)
