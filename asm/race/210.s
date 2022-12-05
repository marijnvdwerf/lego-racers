.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E02A0
/* 96660 800E02A0 00801021 */  addu       $v0, $a0, $zero
/* 96664 800E02A4 3C03800D */  lui        $v1, %hi(D_race_800CB730)
/* 96668 800E02A8 2463B730 */  addiu      $v1, $v1, %lo(D_race_800CB730)
/* 9666C 800E02AC AC430028 */  sw         $v1, 0x28($v0)
/* 96670 800E02B0 AC400000 */  sw         $zero, 0x0($v0)
/* 96674 800E02B4 AC400004 */  sw         $zero, 0x4($v0)
/* 96678 800E02B8 AC400008 */  sw         $zero, 0x8($v0)
/* 9667C 800E02BC AC40000C */  sw         $zero, 0xC($v0)
/* 96680 800E02C0 AC400010 */  sw         $zero, 0x10($v0)
/* 96684 800E02C4 AC400014 */  sw         $zero, 0x14($v0)
/* 96688 800E02C8 AC400018 */  sw         $zero, 0x18($v0)
/* 9668C 800E02CC AC40001C */  sw         $zero, 0x1C($v0)
/* 96690 800E02D0 AC400020 */  sw         $zero, 0x20($v0)
/* 96694 800E02D4 03E00008 */  jr         $ra
/* 96698 800E02D8 AC400024 */   sw        $zero, 0x24($v0)

glabel func_race_800E02DC
/* 9669C 800E02DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 966A0 800E02E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 966A4 800E02E4 00808821 */  addu       $s1, $a0, $zero
/* 966A8 800E02E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 966AC 800E02EC 00A08021 */  addu       $s0, $a1, $zero
/* 966B0 800E02F0 3C02800D */  lui        $v0, %hi(D_race_800CB730)
/* 966B4 800E02F4 2442B730 */  addiu      $v0, $v0, %lo(D_race_800CB730)
/* 966B8 800E02F8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 966BC 800E02FC 0C038252 */  jal        func_race_800E0948
/* 966C0 800E0300 AE220028 */   sw        $v0, 0x28($s1)
/* 966C4 800E0304 32100001 */  andi       $s0, $s0, 0x1
/* 966C8 800E0308 12000003 */  beqz       $s0, .Lrace_800E0318
/* 966CC 800E030C 00000000 */   nop
/* 966D0 800E0310 0C01FB5C */  jal        func_8007ED70
/* 966D4 800E0314 02202021 */   addu      $a0, $s1, $zero
.Lrace_800E0318:
/* 966D8 800E0318 8FBF0018 */  lw         $ra, 0x18($sp)
/* 966DC 800E031C 8FB10014 */  lw         $s1, 0x14($sp)
/* 966E0 800E0320 8FB00010 */  lw         $s0, 0x10($sp)
/* 966E4 800E0324 03E00008 */  jr         $ra
/* 966E8 800E0328 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E032C
/* 966EC 800E032C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 966F0 800E0330 AFB10014 */  sw         $s1, 0x14($sp)
/* 966F4 800E0334 00808821 */  addu       $s1, $a0, $zero
/* 966F8 800E0338 AFB20018 */  sw         $s2, 0x18($sp)
/* 966FC 800E033C 00A09021 */  addu       $s2, $a1, $zero
/* 96700 800E0340 AFBF0024 */  sw         $ra, 0x24($sp)
/* 96704 800E0344 AFB40020 */  sw         $s4, 0x20($sp)
/* 96708 800E0348 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9670C 800E034C AFB00010 */  sw         $s0, 0x10($sp)
/* 96710 800E0350 8E220004 */  lw         $v0, 0x4($s1)
/* 96714 800E0354 10400006 */  beqz       $v0, .Lrace_800E0370
/* 96718 800E0358 00C08021 */   addu      $s0, $a2, $zero
/* 9671C 800E035C 8E220028 */  lw         $v0, 0x28($s1)
/* 96720 800E0360 84440018 */  lh         $a0, 0x18($v0)
/* 96724 800E0364 8C42001C */  lw         $v0, 0x1C($v0)
/* 96728 800E0368 0040F809 */  jalr       $v0
/* 9672C 800E036C 02242021 */   addu      $a0, $s1, $a0
.Lrace_800E0370:
/* 96730 800E0370 12000014 */  beqz       $s0, .Lrace_800E03C4
/* 96734 800E0374 00000000 */   nop
/* 96738 800E0378 0C01FB4C */  jal        func_8007ED30
/* 9673C 800E037C 24040654 */   addiu     $a0, $zero, 0x654
/* 96740 800E0380 0C00278C */  jal        func_80009E30
/* 96744 800E0384 00402021 */   addu      $a0, $v0, $zero
/* 96748 800E0388 00408021 */  addu       $s0, $v0, $zero
/* 9674C 800E038C 56000008 */  bnel       $s0, $zero, .Lrace_800E03B0
/* 96750 800E0390 02002021 */   addu      $a0, $s0, $zero
/* 96754 800E0394 3C04800D */  lui        $a0, %hi(D_race_800CB670)
/* 96758 800E0398 2484B670 */  addiu      $a0, $a0, %lo(D_race_800CB670)
/* 9675C 800E039C 00002821 */  addu       $a1, $zero, $zero
/* 96760 800E03A0 00A03021 */  addu       $a2, $a1, $zero
/* 96764 800E03A4 0C011ACF */  jal        func_80046B3C
/* 96768 800E03A8 00A03821 */   addu      $a3, $a1, $zero
/* 9676C 800E03AC 02002021 */  addu       $a0, $s0, $zero
.Lrace_800E03B0:
/* 96770 800E03B0 3C05800D */  lui        $a1, %hi(D_race_800CB674)
/* 96774 800E03B4 0C0025BA */  jal        func_800096E8
/* 96778 800E03B8 24A5B674 */   addiu     $a1, $a1, %lo(D_race_800CB674)
/* 9677C 800E03BC 08038101 */  j          .Lrace_800E0404
/* 96780 800E03C0 02402821 */   addu      $a1, $s2, $zero
.Lrace_800E03C4:
/* 96784 800E03C4 0C01FB4C */  jal        func_8007ED30
/* 96788 800E03C8 24040658 */   addiu     $a0, $zero, 0x658
/* 9678C 800E03CC 00408021 */  addu       $s0, $v0, $zero
/* 96790 800E03D0 0C002504 */  jal        func_80009410
/* 96794 800E03D4 02002021 */   addu      $a0, $s0, $zero
/* 96798 800E03D8 3C02800D */  lui        $v0, %hi(D_race_800CB680)
/* 9679C 800E03DC 2442B680 */  addiu      $v0, $v0, %lo(D_race_800CB680)
/* 967A0 800E03E0 16000007 */  bnez       $s0, .Lrace_800E0400
/* 967A4 800E03E4 AE020028 */   sw        $v0, 0x28($s0)
/* 967A8 800E03E8 3C04800D */  lui        $a0, %hi(D_race_800CB670)
/* 967AC 800E03EC 2484B670 */  addiu      $a0, $a0, %lo(D_race_800CB670)
/* 967B0 800E03F0 00002821 */  addu       $a1, $zero, $zero
/* 967B4 800E03F4 00A03021 */  addu       $a2, $a1, $zero
/* 967B8 800E03F8 0C011ACF */  jal        func_80046B3C
/* 967BC 800E03FC 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E0400:
/* 967C0 800E0400 02402821 */  addu       $a1, $s2, $zero
.Lrace_800E0404:
/* 967C4 800E0404 2414002A */  addiu      $s4, $zero, 0x2A
/* 967C8 800E0408 24130027 */  addiu      $s3, $zero, 0x27
/* 967CC 800E040C 8E020028 */  lw         $v0, 0x28($s0)
/* 967D0 800E0410 2412002B */  addiu      $s2, $zero, 0x2B
/* 967D4 800E0414 84440088 */  lh         $a0, 0x88($v0)
/* 967D8 800E0418 8C42008C */  lw         $v0, 0x8C($v0)
.Lrace_800E041C:
/* 967DC 800E041C 0040F809 */  jalr       $v0
/* 967E0 800E0420 02042021 */   addu      $a0, $s0, $a0
.Lrace_800E0424:
/* 967E4 800E0424 8E020028 */  lw         $v0, 0x28($s0)
/* 967E8 800E0428 844400A0 */  lh         $a0, 0xA0($v0)
/* 967EC 800E042C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 967F0 800E0430 0040F809 */  jalr       $v0
/* 967F4 800E0434 02042021 */   addu      $a0, $s0, $a0
/* 967F8 800E0438 00401821 */  addu       $v1, $v0, $zero
/* 967FC 800E043C 1060001F */  beqz       $v1, .Lrace_800E04BC
/* 96800 800E0440 00000000 */   nop
/* 96804 800E0444 1074000F */  beq        $v1, $s4, .Lrace_800E0484
/* 96808 800E0448 2C62002B */   sltiu     $v0, $v1, 0x2B
/* 9680C 800E044C 10400005 */  beqz       $v0, .Lrace_800E0464
/* 96810 800E0450 00000000 */   nop
/* 96814 800E0454 50730007 */  beql       $v1, $s3, .Lrace_800E0474
/* 96818 800E0458 02202021 */   addu      $a0, $s1, $zero
/* 9681C 800E045C 0803812A */  j          .Lrace_800E04A8
/* 96820 800E0460 00000000 */   nop
.Lrace_800E0464:
/* 96824 800E0464 5072000C */  beql       $v1, $s2, .Lrace_800E0498
/* 96828 800E0468 02202021 */   addu      $a0, $s1, $zero
/* 9682C 800E046C 0803812A */  j          .Lrace_800E04A8
/* 96830 800E0470 00000000 */   nop
.Lrace_800E0474:
/* 96834 800E0474 0C038143 */  jal        func_race_800E050C
/* 96838 800E0478 02002821 */   addu      $a1, $s0, $zero
/* 9683C 800E047C 08038109 */  j          .Lrace_800E0424
/* 96840 800E0480 00000000 */   nop
.Lrace_800E0484:
/* 96844 800E0484 02202021 */  addu       $a0, $s1, $zero
/* 96848 800E0488 0C0381D3 */  jal        func_race_800E074C
/* 9684C 800E048C 02002821 */   addu      $a1, $s0, $zero
/* 96850 800E0490 08038109 */  j          .Lrace_800E0424
/* 96854 800E0494 00000000 */   nop
.Lrace_800E0498:
/* 96858 800E0498 0C038221 */  jal        func_race_800E0884
/* 9685C 800E049C 02002821 */   addu      $a1, $s0, $zero
/* 96860 800E04A0 08038109 */  j          .Lrace_800E0424
/* 96864 800E04A4 00000000 */   nop
.Lrace_800E04A8:
/* 96868 800E04A8 8E020028 */  lw         $v0, 0x28($s0)
/* 9686C 800E04AC 84440098 */  lh         $a0, 0x98($v0)
/* 96870 800E04B0 8C42009C */  lw         $v0, 0x9C($v0)
/* 96874 800E04B4 08038107 */  j          .Lrace_800E041C
/* 96878 800E04B8 00002821 */   addu      $a1, $zero, $zero
.Lrace_800E04BC:
/* 9687C 800E04BC 8E020028 */  lw         $v0, 0x28($s0)
/* 96880 800E04C0 84440048 */  lh         $a0, 0x48($v0)
/* 96884 800E04C4 8C42004C */  lw         $v0, 0x4C($v0)
/* 96888 800E04C8 0040F809 */  jalr       $v0
/* 9688C 800E04CC 02042021 */   addu      $a0, $s0, $a0
/* 96890 800E04D0 12000006 */  beqz       $s0, .Lrace_800E04EC
/* 96894 800E04D4 24050003 */   addiu     $a1, $zero, 0x3
/* 96898 800E04D8 8E020028 */  lw         $v0, 0x28($s0)
/* 9689C 800E04DC 84440038 */  lh         $a0, 0x38($v0)
/* 968A0 800E04E0 8C42003C */  lw         $v0, 0x3C($v0)
/* 968A4 800E04E4 0040F809 */  jalr       $v0
/* 968A8 800E04E8 02042021 */   addu      $a0, $s0, $a0
.Lrace_800E04EC:
/* 968AC 800E04EC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 968B0 800E04F0 8FB40020 */  lw         $s4, 0x20($sp)
/* 968B4 800E04F4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 968B8 800E04F8 8FB20018 */  lw         $s2, 0x18($sp)
/* 968BC 800E04FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 968C0 800E0500 8FB00010 */  lw         $s0, 0x10($sp)
/* 968C4 800E0504 03E00008 */  jr         $ra
/* 968C8 800E0508 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E050C
/* 968CC 800E050C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 968D0 800E0510 AFB3001C */  sw         $s3, 0x1C($sp)
/* 968D4 800E0514 00809821 */  addu       $s3, $a0, $zero
/* 968D8 800E0518 AFB10014 */  sw         $s1, 0x14($sp)
/* 968DC 800E051C 00A08821 */  addu       $s1, $a1, $zero
/* 968E0 800E0520 02202021 */  addu       $a0, $s1, $zero
/* 968E4 800E0524 AFBF0024 */  sw         $ra, 0x24($sp)
/* 968E8 800E0528 AFB40020 */  sw         $s4, 0x20($sp)
/* 968EC 800E052C AFB20018 */  sw         $s2, 0x18($sp)
/* 968F0 800E0530 0C002723 */  jal        func_80009C8C
/* 968F4 800E0534 AFB00010 */   sw        $s0, 0x10($sp)
/* 968F8 800E0538 3C038013 */  lui        $v1, %hi(D_race_801320C0)
/* 968FC 800E053C 8C6420C0 */  lw         $a0, %lo(D_race_801320C0)($v1)
/* 96900 800E0540 0C01FB65 */  jal        func_8007ED94
/* 96904 800E0544 AE620000 */   sw        $v0, 0x0($s3)
/* 96908 800E0548 8E640000 */  lw         $a0, 0x0($s3)
/* 9690C 800E054C 0C00943C */  jal        func_800250F0
/* 96910 800E0550 00042140 */   sll       $a0, $a0, 5
/* 96914 800E0554 AE620004 */  sw         $v0, 0x4($s3)
/* 96918 800E0558 0C01FB72 */  jal        func_8007EDC8
/* 9691C 800E055C AE620008 */   sw        $v0, 0x8($s3)
/* 96920 800E0560 8E620004 */  lw         $v0, 0x4($s3)
/* 96924 800E0564 14400008 */  bnez       $v0, .Lrace_800E0588
/* 96928 800E0568 00009021 */   addu      $s2, $zero, $zero
/* 9692C 800E056C 3C04800D */  lui        $a0, %hi(D_race_800CB670)
/* 96930 800E0570 2484B670 */  addiu      $a0, $a0, %lo(D_race_800CB670)
/* 96934 800E0574 00002821 */  addu       $a1, $zero, $zero
/* 96938 800E0578 00A03021 */  addu       $a2, $a1, $zero
/* 9693C 800E057C 0C011ACF */  jal        func_80046B3C
/* 96940 800E0580 00A03821 */   addu      $a3, $a1, $zero
/* 96944 800E0584 00009021 */  addu       $s2, $zero, $zero
.Lrace_800E0588:
/* 96948 800E0588 3414FFFF */  ori        $s4, $zero, 0xFFFF
.Lrace_800E058C:
/* 9694C 800E058C 8E620000 */  lw         $v0, 0x0($s3)
/* 96950 800E0590 0242102B */  sltu       $v0, $s2, $v0
/* 96954 800E0594 50400063 */  beql       $v0, $zero, .Lrace_800E0724
/* 96958 800E0598 02202021 */   addu      $a0, $s1, $zero
/* 9695C 800E059C 8E220028 */  lw         $v0, 0x28($s1)
/* 96960 800E05A0 844400A0 */  lh         $a0, 0xA0($v0)
/* 96964 800E05A4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 96968 800E05A8 0040F809 */  jalr       $v0
/* 9696C 800E05AC 02242021 */   addu      $a0, $s1, $a0
/* 96970 800E05B0 00402021 */  addu       $a0, $v0, $zero
/* 96974 800E05B4 8E630004 */  lw         $v1, 0x4($s3)
/* 96978 800E05B8 00121140 */  sll        $v0, $s2, 5
/* 9697C 800E05BC 00628021 */  addu       $s0, $v1, $v0
/* 96980 800E05C0 24020028 */  addiu      $v0, $zero, 0x28
/* 96984 800E05C4 14820033 */  bne        $a0, $v0, .Lrace_800E0694
/* 96988 800E05C8 24020029 */   addiu     $v0, $zero, 0x29
/* 9698C 800E05CC 02202021 */  addu       $a0, $s1, $zero
/* 96990 800E05D0 A6000000 */  sh         $zero, 0x0($s0)
/* 96994 800E05D4 AE000014 */  sw         $zero, 0x14($s0)
/* 96998 800E05D8 0C002680 */  jal        func_80009A00
/* 9699C 800E05DC AE000018 */   sw        $zero, 0x18($s0)
/* 969A0 800E05E0 04410004 */  bgez       $v0, .Lrace_800E05F4
/* 969A4 800E05E4 00000000 */   nop
/* 969A8 800E05E8 A6140002 */  sh         $s4, 0x2($s0)
/* 969AC 800E05EC 0803817F */  j          .Lrace_800E05FC
/* 969B0 800E05F0 AE700008 */   sw        $s0, 0x8($s3)
.Lrace_800E05F4:
/* 969B4 800E05F4 8E220038 */  lw         $v0, 0x38($s1)
/* 969B8 800E05F8 A6020002 */  sh         $v0, 0x2($s0)
.Lrace_800E05FC:
/* 969BC 800E05FC 0C002680 */  jal        func_80009A00
/* 969C0 800E0600 02202021 */   addu      $a0, $s1, $zero
/* 969C4 800E0604 04410003 */  bgez       $v0, .Lrace_800E0614
/* 969C8 800E0608 00000000 */   nop
/* 969CC 800E060C 08038187 */  j          .Lrace_800E061C
/* 969D0 800E0610 A614001C */   sh        $s4, 0x1C($s0)
.Lrace_800E0614:
/* 969D4 800E0614 8E220038 */  lw         $v0, 0x38($s1)
/* 969D8 800E0618 A602001C */  sh         $v0, 0x1C($s0)
.Lrace_800E061C:
/* 969DC 800E061C 0C002680 */  jal        func_80009A00
/* 969E0 800E0620 02202021 */   addu      $a0, $s1, $zero
/* 969E4 800E0624 0441000C */  bgez       $v0, .Lrace_800E0658
/* 969E8 800E0628 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 969EC 800E062C 9603001C */  lhu        $v1, 0x1C($s0)
/* 969F0 800E0630 1462000B */  bne        $v1, $v0, .Lrace_800E0660
/* 969F4 800E0634 A614001E */   sh        $s4, 0x1E($s0)
/* 969F8 800E0638 8E220028 */  lw         $v0, 0x28($s1)
/* 969FC 800E063C 24050011 */  addiu      $a1, $zero, 0x11
/* 96A00 800E0640 84440098 */  lh         $a0, 0x98($v0)
/* 96A04 800E0644 8C42009C */  lw         $v0, 0x9C($v0)
/* 96A08 800E0648 0040F809 */  jalr       $v0
/* 96A0C 800E064C 02242021 */   addu      $a0, $s1, $a0
/* 96A10 800E0650 08038198 */  j          .Lrace_800E0660
/* 96A14 800E0654 00000000 */   nop
.Lrace_800E0658:
/* 96A18 800E0658 8E220038 */  lw         $v0, 0x38($s1)
/* 96A1C 800E065C A602001E */  sh         $v0, 0x1E($s0)
.Lrace_800E0660:
/* 96A20 800E0660 0C0025F8 */  jal        func_800097E0
/* 96A24 800E0664 02202021 */   addu      $a0, $s1, $zero
/* 96A28 800E0668 02202021 */  addu       $a0, $s1, $zero
/* 96A2C 800E066C 0C0025F8 */  jal        func_800097E0
/* 96A30 800E0670 E6000004 */   swc1      $f0, 0x4($s0)
/* 96A34 800E0674 02202021 */  addu       $a0, $s1, $zero
/* 96A38 800E0678 0C0025F8 */  jal        func_800097E0
/* 96A3C 800E067C E6000008 */   swc1      $f0, 0x8($s0)
/* 96A40 800E0680 02202021 */  addu       $a0, $s1, $zero
/* 96A44 800E0684 0C0025F8 */  jal        func_800097E0
/* 96A48 800E0688 E600000C */   swc1      $f0, 0xC($s0)
/* 96A4C 800E068C 080381C7 */  j          .Lrace_800E071C
/* 96A50 800E0690 E6000010 */   swc1      $f0, 0x10($s0)
.Lrace_800E0694:
/* 96A54 800E0694 1482001C */  bne        $a0, $v0, .Lrace_800E0708
/* 96A58 800E0698 00002821 */   addu      $a1, $zero, $zero
/* 96A5C 800E069C 24020001 */  addiu      $v0, $zero, 0x1
/* 96A60 800E06A0 A6020000 */  sh         $v0, 0x0($s0)
/* 96A64 800E06A4 0C002680 */  jal        func_80009A00
/* 96A68 800E06A8 02202021 */   addu      $a0, $s1, $zero
/* 96A6C 800E06AC 04410004 */  bgez       $v0, .Lrace_800E06C0
/* 96A70 800E06B0 00000000 */   nop
/* 96A74 800E06B4 A6140002 */  sh         $s4, 0x2($s0)
/* 96A78 800E06B8 080381B2 */  j          .Lrace_800E06C8
/* 96A7C 800E06BC AE700008 */   sw        $s0, 0x8($s3)
.Lrace_800E06C0:
/* 96A80 800E06C0 8E220038 */  lw         $v0, 0x38($s1)
/* 96A84 800E06C4 A6020002 */  sh         $v0, 0x2($s0)
.Lrace_800E06C8:
/* 96A88 800E06C8 0C002680 */  jal        func_80009A00
/* 96A8C 800E06CC 02202021 */   addu      $a0, $s1, $zero
/* 96A90 800E06D0 02202021 */  addu       $a0, $s1, $zero
/* 96A94 800E06D4 0C002680 */  jal        func_80009A00
/* 96A98 800E06D8 AE020004 */   sw        $v0, 0x4($s0)
/* 96A9C 800E06DC 02202021 */  addu       $a0, $s1, $zero
/* 96AA0 800E06E0 0C002680 */  jal        func_80009A00
/* 96AA4 800E06E4 AE020008 */   sw        $v0, 0x8($s0)
/* 96AA8 800E06E8 02202021 */  addu       $a0, $s1, $zero
/* 96AAC 800E06EC 0C002680 */  jal        func_80009A00
/* 96AB0 800E06F0 A602001C */   sh        $v0, 0x1C($s0)
/* 96AB4 800E06F4 02202021 */  addu       $a0, $s1, $zero
/* 96AB8 800E06F8 0C002680 */  jal        func_80009A00
/* 96ABC 800E06FC A6020018 */   sh        $v0, 0x18($s0)
/* 96AC0 800E0700 080381C7 */  j          .Lrace_800E071C
/* 96AC4 800E0704 A602001A */   sh        $v0, 0x1A($s0)
.Lrace_800E0708:
/* 96AC8 800E0708 8E220028 */  lw         $v0, 0x28($s1)
/* 96ACC 800E070C 84440098 */  lh         $a0, 0x98($v0)
/* 96AD0 800E0710 8C42009C */  lw         $v0, 0x9C($v0)
/* 96AD4 800E0714 0040F809 */  jalr       $v0
/* 96AD8 800E0718 02242021 */   addu      $a0, $s1, $a0
.Lrace_800E071C:
/* 96ADC 800E071C 08038163 */  j          .Lrace_800E058C
/* 96AE0 800E0720 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800E0724:
/* 96AE4 800E0724 0C0026F4 */  jal        func_80009BD0
/* 96AE8 800E0728 24050006 */   addiu     $a1, $zero, 0x6
/* 96AEC 800E072C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 96AF0 800E0730 8FB40020 */  lw         $s4, 0x20($sp)
/* 96AF4 800E0734 8FB3001C */  lw         $s3, 0x1C($sp)
/* 96AF8 800E0738 8FB20018 */  lw         $s2, 0x18($sp)
/* 96AFC 800E073C 8FB10014 */  lw         $s1, 0x14($sp)
/* 96B00 800E0740 8FB00010 */  lw         $s0, 0x10($sp)
/* 96B04 800E0744 03E00008 */  jr         $ra
/* 96B08 800E0748 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E074C
/* 96B0C 800E074C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 96B10 800E0750 AFB10014 */  sw         $s1, 0x14($sp)
/* 96B14 800E0754 00808821 */  addu       $s1, $a0, $zero
/* 96B18 800E0758 AFB3001C */  sw         $s3, 0x1C($sp)
/* 96B1C 800E075C 00A09821 */  addu       $s3, $a1, $zero
/* 96B20 800E0760 02602021 */  addu       $a0, $s3, $zero
/* 96B24 800E0764 AFBF0020 */  sw         $ra, 0x20($sp)
/* 96B28 800E0768 AFB20018 */  sw         $s2, 0x18($sp)
/* 96B2C 800E076C 0C002723 */  jal        func_80009C8C
/* 96B30 800E0770 AFB00010 */   sw        $s0, 0x10($sp)
/* 96B34 800E0774 3C038013 */  lui        $v1, %hi(D_race_801320C0)
/* 96B38 800E0778 8C6420C0 */  lw         $a0, %lo(D_race_801320C0)($v1)
/* 96B3C 800E077C 0C01FB65 */  jal        func_8007ED94
/* 96B40 800E0780 AE220010 */   sw        $v0, 0x10($s1)
/* 96B44 800E0784 8E220010 */  lw         $v0, 0x10($s1)
/* 96B48 800E0788 00022040 */  sll        $a0, $v0, 1
/* 96B4C 800E078C 00822021 */  addu       $a0, $a0, $v0
/* 96B50 800E0790 0C00943C */  jal        func_800250F0
/* 96B54 800E0794 000420C0 */   sll       $a0, $a0, 3
/* 96B58 800E0798 0C01FB72 */  jal        func_8007EDC8
/* 96B5C 800E079C AE220014 */   sw        $v0, 0x14($s1)
/* 96B60 800E07A0 8E220014 */  lw         $v0, 0x14($s1)
/* 96B64 800E07A4 14400006 */  bnez       $v0, .Lrace_800E07C0
/* 96B68 800E07A8 3C04800D */   lui       $a0, %hi(D_race_800CB670)
/* 96B6C 800E07AC 2484B670 */  addiu      $a0, $a0, %lo(D_race_800CB670)
/* 96B70 800E07B0 00002821 */  addu       $a1, $zero, $zero
/* 96B74 800E07B4 00A03021 */  addu       $a2, $a1, $zero
/* 96B78 800E07B8 0C011ACF */  jal        func_80046B3C
/* 96B7C 800E07BC 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E07C0:
/* 96B80 800E07C0 8E220010 */  lw         $v0, 0x10($s1)
/* 96B84 800E07C4 18400025 */  blez       $v0, .Lrace_800E085C
/* 96B88 800E07C8 00009021 */   addu      $s2, $zero, $zero
/* 96B8C 800E07CC 02408021 */  addu       $s0, $s2, $zero
.Lrace_800E07D0:
/* 96B90 800E07D0 0C0025F8 */  jal        func_800097E0
/* 96B94 800E07D4 02602021 */   addu      $a0, $s3, $zero
/* 96B98 800E07D8 8E220014 */  lw         $v0, 0x14($s1)
/* 96B9C 800E07DC 02602021 */  addu       $a0, $s3, $zero
/* 96BA0 800E07E0 02021021 */  addu       $v0, $s0, $v0
/* 96BA4 800E07E4 0C0025F8 */  jal        func_800097E0
/* 96BA8 800E07E8 E4400000 */   swc1      $f0, 0x0($v0)
/* 96BAC 800E07EC 8E220014 */  lw         $v0, 0x14($s1)
/* 96BB0 800E07F0 02602021 */  addu       $a0, $s3, $zero
/* 96BB4 800E07F4 02021021 */  addu       $v0, $s0, $v0
/* 96BB8 800E07F8 0C0025F8 */  jal        func_800097E0
/* 96BBC 800E07FC E4400004 */   swc1      $f0, 0x4($v0)
/* 96BC0 800E0800 8E220014 */  lw         $v0, 0x14($s1)
/* 96BC4 800E0804 02602021 */  addu       $a0, $s3, $zero
/* 96BC8 800E0808 02021021 */  addu       $v0, $s0, $v0
/* 96BCC 800E080C 0C0025F8 */  jal        func_800097E0
/* 96BD0 800E0810 E4400008 */   swc1      $f0, 0x8($v0)
/* 96BD4 800E0814 8E220014 */  lw         $v0, 0x14($s1)
/* 96BD8 800E0818 02602021 */  addu       $a0, $s3, $zero
/* 96BDC 800E081C 02021021 */  addu       $v0, $s0, $v0
/* 96BE0 800E0820 0C0025F8 */  jal        func_800097E0
/* 96BE4 800E0824 E440000C */   swc1      $f0, 0xC($v0)
/* 96BE8 800E0828 8E220014 */  lw         $v0, 0x14($s1)
/* 96BEC 800E082C 02602021 */  addu       $a0, $s3, $zero
/* 96BF0 800E0830 02021021 */  addu       $v0, $s0, $v0
/* 96BF4 800E0834 0C0025F8 */  jal        func_800097E0
/* 96BF8 800E0838 E4400010 */   swc1      $f0, 0x10($v0)
/* 96BFC 800E083C 8E220014 */  lw         $v0, 0x14($s1)
/* 96C00 800E0840 26520001 */  addiu      $s2, $s2, 0x1
/* 96C04 800E0844 02021021 */  addu       $v0, $s0, $v0
/* 96C08 800E0848 E4400014 */  swc1       $f0, 0x14($v0)
/* 96C0C 800E084C 8E220010 */  lw         $v0, 0x10($s1)
/* 96C10 800E0850 0242102A */  slt        $v0, $s2, $v0
/* 96C14 800E0854 1440FFDE */  bnez       $v0, .Lrace_800E07D0
/* 96C18 800E0858 26100018 */   addiu     $s0, $s0, 0x18
.Lrace_800E085C:
/* 96C1C 800E085C 02602021 */  addu       $a0, $s3, $zero
/* 96C20 800E0860 0C0026F4 */  jal        func_80009BD0
/* 96C24 800E0864 24050006 */   addiu     $a1, $zero, 0x6
/* 96C28 800E0868 8FBF0020 */  lw         $ra, 0x20($sp)
/* 96C2C 800E086C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 96C30 800E0870 8FB20018 */  lw         $s2, 0x18($sp)
/* 96C34 800E0874 8FB10014 */  lw         $s1, 0x14($sp)
/* 96C38 800E0878 8FB00010 */  lw         $s0, 0x10($sp)
/* 96C3C 800E087C 03E00008 */  jr         $ra
/* 96C40 800E0880 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E0884
/* 96C44 800E0884 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 96C48 800E0888 AFB10014 */  sw         $s1, 0x14($sp)
/* 96C4C 800E088C 00808821 */  addu       $s1, $a0, $zero
/* 96C50 800E0890 AFB20018 */  sw         $s2, 0x18($sp)
/* 96C54 800E0894 00A09021 */  addu       $s2, $a1, $zero
/* 96C58 800E0898 02402021 */  addu       $a0, $s2, $zero
/* 96C5C 800E089C AFBF001C */  sw         $ra, 0x1C($sp)
/* 96C60 800E08A0 0C002723 */  jal        func_80009C8C
/* 96C64 800E08A4 AFB00010 */   sw        $s0, 0x10($sp)
/* 96C68 800E08A8 3C038013 */  lui        $v1, %hi(D_race_801320C0)
/* 96C6C 800E08AC 8C6420C0 */  lw         $a0, %lo(D_race_801320C0)($v1)
/* 96C70 800E08B0 0C01FB65 */  jal        func_8007ED94
/* 96C74 800E08B4 AE220018 */   sw        $v0, 0x18($s1)
/* 96C78 800E08B8 8E240018 */  lw         $a0, 0x18($s1)
/* 96C7C 800E08BC 0C00943C */  jal        func_800250F0
/* 96C80 800E08C0 00042040 */   sll       $a0, $a0, 1
/* 96C84 800E08C4 0C01FB72 */  jal        func_8007EDC8
/* 96C88 800E08C8 AE22001C */   sw        $v0, 0x1C($s1)
/* 96C8C 800E08CC 8E22001C */  lw         $v0, 0x1C($s1)
/* 96C90 800E08D0 14400006 */  bnez       $v0, .Lrace_800E08EC
/* 96C94 800E08D4 3C04800D */   lui       $a0, %hi(D_race_800CB670)
/* 96C98 800E08D8 2484B670 */  addiu      $a0, $a0, %lo(D_race_800CB670)
/* 96C9C 800E08DC 00002821 */  addu       $a1, $zero, $zero
/* 96CA0 800E08E0 00A03021 */  addu       $a2, $a1, $zero
/* 96CA4 800E08E4 0C011ACF */  jal        func_80046B3C
/* 96CA8 800E08E8 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E08EC:
/* 96CAC 800E08EC 8E220018 */  lw         $v0, 0x18($s1)
/* 96CB0 800E08F0 1840000C */  blez       $v0, .Lrace_800E0924
/* 96CB4 800E08F4 00008021 */   addu      $s0, $zero, $zero
.Lrace_800E08F8:
/* 96CB8 800E08F8 0C002680 */  jal        func_80009A00
/* 96CBC 800E08FC 02402021 */   addu      $a0, $s2, $zero
/* 96CC0 800E0900 8E23001C */  lw         $v1, 0x1C($s1)
/* 96CC4 800E0904 00102040 */  sll        $a0, $s0, 1
/* 96CC8 800E0908 00832021 */  addu       $a0, $a0, $v1
/* 96CCC 800E090C A4820000 */  sh         $v0, 0x0($a0)
/* 96CD0 800E0910 8E220018 */  lw         $v0, 0x18($s1)
/* 96CD4 800E0914 26100001 */  addiu      $s0, $s0, 0x1
/* 96CD8 800E0918 0202102A */  slt        $v0, $s0, $v0
/* 96CDC 800E091C 1440FFF6 */  bnez       $v0, .Lrace_800E08F8
/* 96CE0 800E0920 00000000 */   nop
.Lrace_800E0924:
/* 96CE4 800E0924 02402021 */  addu       $a0, $s2, $zero
/* 96CE8 800E0928 0C0026F4 */  jal        func_80009BD0
/* 96CEC 800E092C 24050006 */   addiu     $a1, $zero, 0x6
/* 96CF0 800E0930 8FBF001C */  lw         $ra, 0x1C($sp)
/* 96CF4 800E0934 8FB20018 */  lw         $s2, 0x18($sp)
/* 96CF8 800E0938 8FB10014 */  lw         $s1, 0x14($sp)
/* 96CFC 800E093C 8FB00010 */  lw         $s0, 0x10($sp)
/* 96D00 800E0940 03E00008 */  jr         $ra
/* 96D04 800E0944 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E0948
/* 96D08 800E0948 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 96D0C 800E094C AFB00010 */  sw         $s0, 0x10($sp)
/* 96D10 800E0950 00808021 */  addu       $s0, $a0, $zero
/* 96D14 800E0954 AFBF0014 */  sw         $ra, 0x14($sp)
/* 96D18 800E0958 8E040004 */  lw         $a0, 0x4($s0)
/* 96D1C 800E095C AE000000 */  sw         $zero, 0x0($s0)
/* 96D20 800E0960 10800004 */  beqz       $a0, .Lrace_800E0974
/* 96D24 800E0964 AE00000C */   sw        $zero, 0xC($s0)
/* 96D28 800E0968 0C009444 */  jal        func_80025110
/* 96D2C 800E096C 00000000 */   nop
/* 96D30 800E0970 AE000004 */  sw         $zero, 0x4($s0)
.Lrace_800E0974:
/* 96D34 800E0974 8E040014 */  lw         $a0, 0x14($s0)
/* 96D38 800E0978 10800004 */  beqz       $a0, .Lrace_800E098C
/* 96D3C 800E097C AE000010 */   sw        $zero, 0x10($s0)
/* 96D40 800E0980 0C009444 */  jal        func_80025110
/* 96D44 800E0984 00000000 */   nop
/* 96D48 800E0988 AE000014 */  sw         $zero, 0x14($s0)
.Lrace_800E098C:
/* 96D4C 800E098C 8E04001C */  lw         $a0, 0x1C($s0)
/* 96D50 800E0990 10800004 */  beqz       $a0, .Lrace_800E09A4
/* 96D54 800E0994 AE000018 */   sw        $zero, 0x18($s0)
/* 96D58 800E0998 0C009444 */  jal        func_80025110
/* 96D5C 800E099C 00000000 */   nop
/* 96D60 800E09A0 AE00001C */  sw         $zero, 0x1C($s0)
.Lrace_800E09A4:
/* 96D64 800E09A4 AE000020 */  sw         $zero, 0x20($s0)
/* 96D68 800E09A8 AE000024 */  sw         $zero, 0x24($s0)
/* 96D6C 800E09AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 96D70 800E09B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 96D74 800E09B4 03E00008 */  jr         $ra
/* 96D78 800E09B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E09BC
/* 96D7C 800E09BC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 96D80 800E09C0 AFB30034 */  sw         $s3, 0x34($sp)
/* 96D84 800E09C4 00809821 */  addu       $s3, $a0, $zero
/* 96D88 800E09C8 00A04021 */  addu       $t0, $a1, $zero
/* 96D8C 800E09CC AFB20030 */  sw         $s2, 0x30($sp)
/* 96D90 800E09D0 01009021 */  addu       $s2, $t0, $zero
/* 96D94 800E09D4 3404FFFF */  ori        $a0, $zero, 0xFFFF
/* 96D98 800E09D8 AFBF004C */  sw         $ra, 0x4C($sp)
/* 96D9C 800E09DC AFBE0048 */  sw         $fp, 0x48($sp)
/* 96DA0 800E09E0 AFB70044 */  sw         $s7, 0x44($sp)
/* 96DA4 800E09E4 AFB60040 */  sw         $s6, 0x40($sp)
/* 96DA8 800E09E8 AFB5003C */  sw         $s5, 0x3C($sp)
/* 96DAC 800E09EC AFB40038 */  sw         $s4, 0x38($sp)
/* 96DB0 800E09F0 AFB1002C */  sw         $s1, 0x2C($sp)
/* 96DB4 800E09F4 AFB00028 */  sw         $s0, 0x28($sp)
/* 96DB8 800E09F8 AFA60058 */  sw         $a2, 0x58($sp)
/* 96DBC 800E09FC AFA7005C */  sw         $a3, 0x5C($sp)
/* 96DC0 800E0A00 8E700008 */  lw         $s0, 0x8($s3)
/* 96DC4 800E0A04 8E62000C */  lw         $v0, 0xC($s3)
/* 96DC8 800E0A08 44804000 */  mtc1       $zero, $f8
/* 96DCC 800E0A0C 24420001 */  addiu      $v0, $v0, 0x1
/* 96DD0 800E0A10 AE62000C */  sw         $v0, 0xC($s3)
.Lrace_800E0A14:
/* 96DD4 800E0A14 96020000 */  lhu        $v0, 0x0($s0)
/* 96DD8 800E0A18 14400029 */  bnez       $v0, .Lrace_800E0AC0
/* 96DDC 800E0A1C 26020004 */   addiu     $v0, $s0, 0x4
/* 96DE0 800E0A20 C6040004 */  lwc1       $f4, 0x4($s0)
/* 96DE4 800E0A24 C6400000 */  lwc1       $f0, 0x0($s2)
/* 96DE8 800E0A28 46002102 */  mul.s      $f4, $f4, $f0
/* 96DEC 800E0A2C C4460004 */  lwc1       $f6, 0x4($v0)
/* 96DF0 800E0A30 C6400004 */  lwc1       $f0, 0x4($s2)
/* 96DF4 800E0A34 46003182 */  mul.s      $f6, $f6, $f0
/* 96DF8 800E0A38 C4420008 */  lwc1       $f2, 0x8($v0)
/* 96DFC 800E0A3C C6400008 */  lwc1       $f0, 0x8($s2)
/* 96E00 800E0A40 46001082 */  mul.s      $f2, $f2, $f0
/* 96E04 800E0A44 46062100 */  add.s      $f4, $f4, $f6
/* 96E08 800E0A48 46022100 */  add.s      $f4, $f4, $f2
/* 96E0C 800E0A4C C6000010 */  lwc1       $f0, 0x10($s0)
/* 96E10 800E0A50 46002100 */  add.s      $f4, $f4, $f0
/* 96E14 800E0A54 4608203C */  c.lt.s     $f4, $f8
/* 96E18 800E0A58 00000000 */  nop
/* 96E1C 800E0A5C 45000009 */  bc1f       .Lrace_800E0A84
/* 96E20 800E0A60 00000000 */   nop
/* 96E24 800E0A64 9602001E */  lhu        $v0, 0x1E($s0)
/* 96E28 800E0A68 10440006 */  beq        $v0, $a0, .Lrace_800E0A84
/* 96E2C 800E0A6C 00000000 */   nop
/* 96E30 800E0A70 8E62000C */  lw         $v0, 0xC($s3)
/* 96E34 800E0A74 AE020018 */  sw         $v0, 0x18($s0)
/* 96E38 800E0A78 9602001E */  lhu        $v0, 0x1E($s0)
/* 96E3C 800E0A7C 080382AC */  j          .Lrace_800E0AB0
/* 96E40 800E0A80 00000000 */   nop
.Lrace_800E0A84:
/* 96E44 800E0A84 9602001C */  lhu        $v0, 0x1C($s0)
/* 96E48 800E0A88 14440006 */  bne        $v0, $a0, .Lrace_800E0AA4
/* 96E4C 800E0A8C 00000000 */   nop
/* 96E50 800E0A90 8E62000C */  lw         $v0, 0xC($s3)
/* 96E54 800E0A94 AE020018 */  sw         $v0, 0x18($s0)
/* 96E58 800E0A98 9602001E */  lhu        $v0, 0x1E($s0)
/* 96E5C 800E0A9C 080382AC */  j          .Lrace_800E0AB0
/* 96E60 800E0AA0 00000000 */   nop
.Lrace_800E0AA4:
/* 96E64 800E0AA4 8E62000C */  lw         $v0, 0xC($s3)
/* 96E68 800E0AA8 AE020014 */  sw         $v0, 0x14($s0)
/* 96E6C 800E0AAC 9602001C */  lhu        $v0, 0x1C($s0)
.Lrace_800E0AB0:
/* 96E70 800E0AB0 8E630004 */  lw         $v1, 0x4($s3)
/* 96E74 800E0AB4 00021140 */  sll        $v0, $v0, 5
/* 96E78 800E0AB8 08038285 */  j          .Lrace_800E0A14
/* 96E7C 800E0ABC 00628021 */   addu      $s0, $v1, $v0
.Lrace_800E0AC0:
/* 96E80 800E0AC0 96030002 */  lhu        $v1, 0x2($s0)
/* 96E84 800E0AC4 24020001 */  addiu      $v0, $zero, 0x1
/* 96E88 800E0AC8 A602001E */  sh         $v0, 0x1E($s0)
/* 96E8C 800E0ACC 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 96E90 800E0AD0 AE000014 */  sw         $zero, 0x14($s0)
/* 96E94 800E0AD4 14620009 */  bne        $v1, $v0, .Lrace_800E0AFC
/* 96E98 800E0AD8 AE000010 */   sw        $zero, 0x10($s0)
/* 96E9C 800E0ADC 26020004 */  addiu      $v0, $s0, 0x4
/* 96EA0 800E0AE0 AE620024 */  sw         $v0, 0x24($s3)
/* 96EA4 800E0AE4 AE620020 */  sw         $v0, 0x20($s3)
/* 96EA8 800E0AE8 8FA9005C */  lw         $t1, 0x5C($sp)
/* 96EAC 800E0AEC AD220000 */  sw         $v0, 0x0($t1)
/* 96EB0 800E0AF0 8FA90058 */  lw         $t1, 0x58($sp)
/* 96EB4 800E0AF4 080383A7 */  j          .Lrace_800E0E9C
/* 96EB8 800E0AF8 AD220000 */   sw        $v0, 0x0($t1)
.Lrace_800E0AFC:
/* 96EBC 800E0AFC 8E62001C */  lw         $v0, 0x1C($s3)
/* 96EC0 800E0B00 1040000E */  beqz       $v0, .Lrace_800E0B3C
/* 96EC4 800E0B04 02602021 */   addu      $a0, $s3, $zero
/* 96EC8 800E0B08 01002821 */  addu       $a1, $t0, $zero
/* 96ECC 800E0B0C 8FA9005C */  lw         $t1, 0x5C($sp)
/* 96ED0 800E0B10 8FA70058 */  lw         $a3, 0x58($sp)
/* 96ED4 800E0B14 02003021 */  addu       $a2, $s0, $zero
/* 96ED8 800E0B18 0C0383B3 */  jal        func_race_800E0ECC
/* 96EDC 800E0B1C AFA90010 */   sw        $t1, 0x10($sp)
/* 96EE0 800E0B20 8FA90058 */  lw         $t1, 0x58($sp)
/* 96EE4 800E0B24 8D220000 */  lw         $v0, 0x0($t1)
/* 96EE8 800E0B28 AE620020 */  sw         $v0, 0x20($s3)
/* 96EEC 800E0B2C 8FA9005C */  lw         $t1, 0x5C($sp)
/* 96EF0 800E0B30 8D220000 */  lw         $v0, 0x0($t1)
/* 96EF4 800E0B34 080383A7 */  j          .Lrace_800E0E9C
/* 96EF8 800E0B38 AE620024 */   sw        $v0, 0x24($s3)
.Lrace_800E0B3C:
/* 96EFC 800E0B3C 0200A021 */  addu       $s4, $s0, $zero
/* 96F00 800E0B40 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* 96F04 800E0B44 265E000C */  addiu      $fp, $s2, 0xC
/* 96F08 800E0B48 26570030 */  addiu      $s7, $s2, 0x30
/* 96F0C 800E0B4C 26560018 */  addiu      $s6, $s2, 0x18
/* 96F10 800E0B50 26550024 */  addiu      $s5, $s2, 0x24
/* 96F14 800E0B54 AFB40018 */  sw         $s4, 0x18($sp)
.Lrace_800E0B58:
/* 96F18 800E0B58 96820002 */  lhu        $v0, 0x2($s4)
.Lrace_800E0B5C:
/* 96F1C 800E0B5C 8E630004 */  lw         $v1, 0x4($s3)
/* 96F20 800E0B60 00021140 */  sll        $v0, $v0, 5
/* 96F24 800E0B64 00628021 */  addu       $s0, $v1, $v0
.Lrace_800E0B68:
/* 96F28 800E0B68 8E030014 */  lw         $v1, 0x14($s0)
/* 96F2C 800E0B6C 8E64000C */  lw         $a0, 0xC($s3)
/* 96F30 800E0B70 1064005B */  beq        $v1, $a0, .Lrace_800E0CE0
/* 96F34 800E0B74 00000000 */   nop
/* 96F38 800E0B78 8E030018 */  lw         $v1, 0x18($s0)
/* 96F3C 800E0B7C 1064001C */  beq        $v1, $a0, .Lrace_800E0BF0
/* 96F40 800E0B80 26020004 */   addiu     $v0, $s0, 0x4
/* 96F44 800E0B84 C6060004 */  lwc1       $f6, 0x4($s0)
/* 96F48 800E0B88 C6400000 */  lwc1       $f0, 0x0($s2)
/* 96F4C 800E0B8C 46003182 */  mul.s      $f6, $f6, $f0
/* 96F50 800E0B90 C4440004 */  lwc1       $f4, 0x4($v0)
/* 96F54 800E0B94 C6400004 */  lwc1       $f0, 0x4($s2)
/* 96F58 800E0B98 46002102 */  mul.s      $f4, $f4, $f0
/* 96F5C 800E0B9C C4420008 */  lwc1       $f2, 0x8($v0)
/* 96F60 800E0BA0 C6400008 */  lwc1       $f0, 0x8($s2)
/* 96F64 800E0BA4 46001082 */  mul.s      $f2, $f2, $f0
/* 96F68 800E0BA8 46043180 */  add.s      $f6, $f6, $f4
/* 96F6C 800E0BAC 46023100 */  add.s      $f4, $f6, $f2
/* 96F70 800E0BB0 C6000010 */  lwc1       $f0, 0x10($s0)
/* 96F74 800E0BB4 46000007 */  neg.s      $f0, $f0
/* 96F78 800E0BB8 4600203C */  c.lt.s     $f4, $f0
/* 96F7C 800E0BBC 00000000 */  nop
/* 96F80 800E0BC0 45000006 */  bc1f       .Lrace_800E0BDC
/* 96F84 800E0BC4 00000000 */   nop
/* 96F88 800E0BC8 9602001E */  lhu        $v0, 0x1E($s0)
/* 96F8C 800E0BCC 1046FFE6 */  beq        $v0, $a2, .Lrace_800E0B68
/* 96F90 800E0BD0 AE040018 */   sw        $a0, 0x18($s0)
/* 96F94 800E0BD4 08038375 */  j          .Lrace_800E0DD4
/* 96F98 800E0BD8 00000000 */   nop
.Lrace_800E0BDC:
/* 96F9C 800E0BDC 9602001C */  lhu        $v0, 0x1C($s0)
/* 96FA0 800E0BE0 1046FFE1 */  beq        $v0, $a2, .Lrace_800E0B68
/* 96FA4 800E0BE4 AE040014 */   sw        $a0, 0x14($s0)
/* 96FA8 800E0BE8 08038375 */  j          .Lrace_800E0DD4
/* 96FAC 800E0BEC 00000000 */   nop
.Lrace_800E0BF0:
/* 96FB0 800E0BF0 9602001C */  lhu        $v0, 0x1C($s0)
/* 96FB4 800E0BF4 1046FFDC */  beq        $v0, $a2, .Lrace_800E0B68
/* 96FB8 800E0BF8 AE030014 */   sw        $v1, 0x14($s0)
/* 96FBC 800E0BFC C60C0004 */  lwc1       $f12, 0x4($s0)
/* 96FC0 800E0C00 C644000C */  lwc1       $f4, 0xC($s2)
/* 96FC4 800E0C04 46046102 */  mul.s      $f4, $f12, $f4
/* 96FC8 800E0C08 26020004 */  addiu      $v0, $s0, 0x4
/* 96FCC 800E0C0C C44A0004 */  lwc1       $f10, 0x4($v0)
/* 96FD0 800E0C10 C7C20004 */  lwc1       $f2, 0x4($fp)
/* 96FD4 800E0C14 46025082 */  mul.s      $f2, $f10, $f2
/* 96FD8 800E0C18 C4480008 */  lwc1       $f8, 0x8($v0)
/* 96FDC 800E0C1C C7C00008 */  lwc1       $f0, 0x8($fp)
/* 96FE0 800E0C20 46004002 */  mul.s      $f0, $f8, $f0
/* 96FE4 800E0C24 46022100 */  add.s      $f4, $f4, $f2
/* 96FE8 800E0C28 46002100 */  add.s      $f4, $f4, $f0
/* 96FEC 800E0C2C C6000010 */  lwc1       $f0, 0x10($s0)
/* 96FF0 800E0C30 46000187 */  neg.s      $f6, $f0
/* 96FF4 800E0C34 4606203C */  c.lt.s     $f4, $f6
/* 96FF8 800E0C38 00000000 */  nop
/* 96FFC 800E0C3C 45000025 */  bc1f       .Lrace_800E0CD4
/* 97000 800E0C40 00000000 */   nop
/* 97004 800E0C44 C6440030 */  lwc1       $f4, 0x30($s2)
/* 97008 800E0C48 46046102 */  mul.s      $f4, $f12, $f4
/* 9700C 800E0C4C C6E20004 */  lwc1       $f2, 0x4($s7)
/* 97010 800E0C50 46025082 */  mul.s      $f2, $f10, $f2
/* 97014 800E0C54 C6E00008 */  lwc1       $f0, 0x8($s7)
/* 97018 800E0C58 46004002 */  mul.s      $f0, $f8, $f0
/* 9701C 800E0C5C 46022100 */  add.s      $f4, $f4, $f2
/* 97020 800E0C60 46002100 */  add.s      $f4, $f4, $f0
/* 97024 800E0C64 4606203C */  c.lt.s     $f4, $f6
/* 97028 800E0C68 00000000 */  nop
/* 9702C 800E0C6C 45000019 */  bc1f       .Lrace_800E0CD4
/* 97030 800E0C70 00000000 */   nop
/* 97034 800E0C74 C6440018 */  lwc1       $f4, 0x18($s2)
/* 97038 800E0C78 46046102 */  mul.s      $f4, $f12, $f4
/* 9703C 800E0C7C C6C20004 */  lwc1       $f2, 0x4($s6)
/* 97040 800E0C80 46025082 */  mul.s      $f2, $f10, $f2
/* 97044 800E0C84 C6C00008 */  lwc1       $f0, 0x8($s6)
/* 97048 800E0C88 46004002 */  mul.s      $f0, $f8, $f0
/* 9704C 800E0C8C 46022100 */  add.s      $f4, $f4, $f2
/* 97050 800E0C90 46002100 */  add.s      $f4, $f4, $f0
/* 97054 800E0C94 4606203C */  c.lt.s     $f4, $f6
/* 97058 800E0C98 00000000 */  nop
/* 9705C 800E0C9C 4500000D */  bc1f       .Lrace_800E0CD4
/* 97060 800E0CA0 00000000 */   nop
/* 97064 800E0CA4 C6440024 */  lwc1       $f4, 0x24($s2)
/* 97068 800E0CA8 46046102 */  mul.s      $f4, $f12, $f4
/* 9706C 800E0CAC C6A20004 */  lwc1       $f2, 0x4($s5)
/* 97070 800E0CB0 46025082 */  mul.s      $f2, $f10, $f2
/* 97074 800E0CB4 C6A00008 */  lwc1       $f0, 0x8($s5)
/* 97078 800E0CB8 46004002 */  mul.s      $f0, $f8, $f0
/* 9707C 800E0CBC 46022100 */  add.s      $f4, $f4, $f2
/* 97080 800E0CC0 46002100 */  add.s      $f4, $f4, $f0
/* 97084 800E0CC4 4606203C */  c.lt.s     $f4, $f6
/* 97088 800E0CC8 00000000 */  nop
/* 9708C 800E0CCC 4501FFA6 */  bc1t       .Lrace_800E0B68
/* 97090 800E0CD0 00000000 */   nop
.Lrace_800E0CD4:
/* 97094 800E0CD4 9602001C */  lhu        $v0, 0x1C($s0)
/* 97098 800E0CD8 08038375 */  j          .Lrace_800E0DD4
/* 9709C 800E0CDC 00000000 */   nop
.Lrace_800E0CE0:
/* 970A0 800E0CE0 8E020018 */  lw         $v0, 0x18($s0)
/* 970A4 800E0CE4 1043003F */  beq        $v0, $v1, .Lrace_800E0DE4
/* 970A8 800E0CE8 00000000 */   nop
/* 970AC 800E0CEC 9602001E */  lhu        $v0, 0x1E($s0)
/* 970B0 800E0CF0 1046FF9D */  beq        $v0, $a2, .Lrace_800E0B68
/* 970B4 800E0CF4 AE030018 */   sw        $v1, 0x18($s0)
/* 970B8 800E0CF8 C60C0004 */  lwc1       $f12, 0x4($s0)
/* 970BC 800E0CFC C644000C */  lwc1       $f4, 0xC($s2)
/* 970C0 800E0D00 46046102 */  mul.s      $f4, $f12, $f4
/* 970C4 800E0D04 26020004 */  addiu      $v0, $s0, 0x4
/* 970C8 800E0D08 C44A0004 */  lwc1       $f10, 0x4($v0)
/* 970CC 800E0D0C C7C20004 */  lwc1       $f2, 0x4($fp)
/* 970D0 800E0D10 46025082 */  mul.s      $f2, $f10, $f2
/* 970D4 800E0D14 C4480008 */  lwc1       $f8, 0x8($v0)
/* 970D8 800E0D18 C7C00008 */  lwc1       $f0, 0x8($fp)
/* 970DC 800E0D1C 46004002 */  mul.s      $f0, $f8, $f0
/* 970E0 800E0D20 46022100 */  add.s      $f4, $f4, $f2
/* 970E4 800E0D24 46002100 */  add.s      $f4, $f4, $f0
/* 970E8 800E0D28 C6000010 */  lwc1       $f0, 0x10($s0)
/* 970EC 800E0D2C 46000187 */  neg.s      $f6, $f0
/* 970F0 800E0D30 4604303C */  c.lt.s     $f6, $f4
/* 970F4 800E0D34 00000000 */  nop
/* 970F8 800E0D38 45000025 */  bc1f       .Lrace_800E0DD0
/* 970FC 800E0D3C 00000000 */   nop
/* 97100 800E0D40 C6440030 */  lwc1       $f4, 0x30($s2)
/* 97104 800E0D44 46046102 */  mul.s      $f4, $f12, $f4
/* 97108 800E0D48 C6E20004 */  lwc1       $f2, 0x4($s7)
/* 9710C 800E0D4C 46025082 */  mul.s      $f2, $f10, $f2
/* 97110 800E0D50 C6E00008 */  lwc1       $f0, 0x8($s7)
/* 97114 800E0D54 46004002 */  mul.s      $f0, $f8, $f0
/* 97118 800E0D58 46022100 */  add.s      $f4, $f4, $f2
/* 9711C 800E0D5C 46002100 */  add.s      $f4, $f4, $f0
/* 97120 800E0D60 4604303C */  c.lt.s     $f6, $f4
/* 97124 800E0D64 00000000 */  nop
/* 97128 800E0D68 45000019 */  bc1f       .Lrace_800E0DD0
/* 9712C 800E0D6C 00000000 */   nop
/* 97130 800E0D70 C6440018 */  lwc1       $f4, 0x18($s2)
/* 97134 800E0D74 46046102 */  mul.s      $f4, $f12, $f4
/* 97138 800E0D78 C6C20004 */  lwc1       $f2, 0x4($s6)
/* 9713C 800E0D7C 46025082 */  mul.s      $f2, $f10, $f2
/* 97140 800E0D80 C6C00008 */  lwc1       $f0, 0x8($s6)
/* 97144 800E0D84 46004002 */  mul.s      $f0, $f8, $f0
/* 97148 800E0D88 46022100 */  add.s      $f4, $f4, $f2
/* 9714C 800E0D8C 46002100 */  add.s      $f4, $f4, $f0
/* 97150 800E0D90 4604303C */  c.lt.s     $f6, $f4
/* 97154 800E0D94 00000000 */  nop
/* 97158 800E0D98 4500000D */  bc1f       .Lrace_800E0DD0
/* 9715C 800E0D9C 00000000 */   nop
/* 97160 800E0DA0 C6440024 */  lwc1       $f4, 0x24($s2)
/* 97164 800E0DA4 46046102 */  mul.s      $f4, $f12, $f4
/* 97168 800E0DA8 C6A20004 */  lwc1       $f2, 0x4($s5)
/* 9716C 800E0DAC 46025082 */  mul.s      $f2, $f10, $f2
/* 97170 800E0DB0 C6A00008 */  lwc1       $f0, 0x8($s5)
/* 97174 800E0DB4 46004002 */  mul.s      $f0, $f8, $f0
/* 97178 800E0DB8 46022100 */  add.s      $f4, $f4, $f2
/* 9717C 800E0DBC 46002100 */  add.s      $f4, $f4, $f0
/* 97180 800E0DC0 4604303C */  c.lt.s     $f6, $f4
/* 97184 800E0DC4 00000000 */  nop
/* 97188 800E0DC8 4501FF67 */  bc1t       .Lrace_800E0B68
/* 9718C 800E0DCC 00000000 */   nop
.Lrace_800E0DD0:
/* 97190 800E0DD0 9602001E */  lhu        $v0, 0x1E($s0)
.Lrace_800E0DD4:
/* 97194 800E0DD4 8E630004 */  lw         $v1, 0x4($s3)
/* 97198 800E0DD8 00021140 */  sll        $v0, $v0, 5
/* 9719C 800E0DDC 0803837E */  j          .Lrace_800E0DF8
/* 971A0 800E0DE0 00628021 */   addu      $s0, $v1, $v0
.Lrace_800E0DE4:
/* 971A4 800E0DE4 96020002 */  lhu        $v0, 0x2($s0)
/* 971A8 800E0DE8 10460023 */  beq        $v0, $a2, .Lrace_800E0E78
/* 971AC 800E0DEC 00000000 */   nop
/* 971B0 800E0DF0 080382D7 */  j          .Lrace_800E0B5C
/* 971B4 800E0DF4 00000000 */   nop
.Lrace_800E0DF8:
/* 971B8 800E0DF8 96020000 */  lhu        $v0, 0x0($s0)
/* 971BC 800E0DFC 1040FF5A */  beqz       $v0, .Lrace_800E0B68
/* 971C0 800E0E00 26110004 */   addiu     $s1, $s0, 0x4
/* 971C4 800E0E04 86230018 */  lh         $v1, 0x18($s1)
/* 971C8 800E0E08 24020001 */  addiu      $v0, $zero, 0x1
/* 971CC 800E0E0C 04600014 */  bltz       $v1, .Lrace_800E0E60
/* 971D0 800E0E10 A622001A */   sh        $v0, 0x1A($s1)
/* 971D4 800E0E14 01002021 */  addu       $a0, $t0, $zero
/* 971D8 800E0E18 00032840 */  sll        $a1, $v1, 1
/* 971DC 800E0E1C 00A32821 */  addu       $a1, $a1, $v1
/* 971E0 800E0E20 8E620014 */  lw         $v0, 0x14($s3)
/* 971E4 800E0E24 000528C0 */  sll        $a1, $a1, 3
/* 971E8 800E0E28 AFA60020 */  sw         $a2, 0x20($sp)
/* 971EC 800E0E2C AFA80024 */  sw         $t0, 0x24($sp)
/* 971F0 800E0E30 0C017FA8 */  jal        func_8005FEA0
/* 971F4 800E0E34 00452821 */   addu      $a1, $v0, $a1
/* 971F8 800E0E38 00401821 */  addu       $v1, $v0, $zero
/* 971FC 800E0E3C 8FA60020 */  lw         $a2, 0x20($sp)
/* 97200 800E0E40 8FA80024 */  lw         $t0, 0x24($sp)
/* 97204 800E0E44 14600004 */  bnez       $v1, .Lrace_800E0E58
/* 97208 800E0E48 24020002 */   addiu     $v0, $zero, 0x2
/* 9720C 800E0E4C 96020002 */  lhu        $v0, 0x2($s0)
/* 97210 800E0E50 080382D7 */  j          .Lrace_800E0B5C
/* 97214 800E0E54 00000000 */   nop
.Lrace_800E0E58:
/* 97218 800E0E58 50620001 */  beql       $v1, $v0, .Lrace_800E0E60
/* 9721C 800E0E5C A620001A */   sh        $zero, 0x1A($s1)
.Lrace_800E0E60:
/* 97220 800E0E60 26820004 */  addiu      $v0, $s4, 0x4
/* 97224 800E0E64 AE910010 */  sw         $s1, 0x10($s4)
/* 97228 800E0E68 0200A021 */  addu       $s4, $s0, $zero
/* 9722C 800E0E6C AE220010 */  sw         $v0, 0x10($s1)
/* 97230 800E0E70 080382D6 */  j          .Lrace_800E0B58
/* 97234 800E0E74 AE20000C */   sw        $zero, 0xC($s1)
.Lrace_800E0E78:
/* 97238 800E0E78 8FA90018 */  lw         $t1, 0x18($sp)
/* 9723C 800E0E7C 25220004 */  addiu      $v0, $t1, 0x4
/* 97240 800E0E80 AE620020 */  sw         $v0, 0x20($s3)
/* 97244 800E0E84 8FA90058 */  lw         $t1, 0x58($sp)
/* 97248 800E0E88 AD220000 */  sw         $v0, 0x0($t1)
/* 9724C 800E0E8C 26820004 */  addiu      $v0, $s4, 0x4
/* 97250 800E0E90 AE620024 */  sw         $v0, 0x24($s3)
/* 97254 800E0E94 8FA9005C */  lw         $t1, 0x5C($sp)
/* 97258 800E0E98 AD220000 */  sw         $v0, 0x0($t1)
.Lrace_800E0E9C:
/* 9725C 800E0E9C 8FBF004C */  lw         $ra, 0x4C($sp)
/* 97260 800E0EA0 8FBE0048 */  lw         $fp, 0x48($sp)
/* 97264 800E0EA4 8FB70044 */  lw         $s7, 0x44($sp)
/* 97268 800E0EA8 8FB60040 */  lw         $s6, 0x40($sp)
/* 9726C 800E0EAC 8FB5003C */  lw         $s5, 0x3C($sp)
/* 97270 800E0EB0 8FB40038 */  lw         $s4, 0x38($sp)
/* 97274 800E0EB4 8FB30034 */  lw         $s3, 0x34($sp)
/* 97278 800E0EB8 8FB20030 */  lw         $s2, 0x30($sp)
/* 9727C 800E0EBC 8FB1002C */  lw         $s1, 0x2C($sp)
/* 97280 800E0EC0 8FB00028 */  lw         $s0, 0x28($sp)
/* 97284 800E0EC4 03E00008 */  jr         $ra
/* 97288 800E0EC8 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800E0ECC
/* 9728C 800E0ECC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 97290 800E0ED0 AFB40020 */  sw         $s4, 0x20($sp)
/* 97294 800E0ED4 24D40004 */  addiu      $s4, $a2, 0x4
/* 97298 800E0ED8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 9729C 800E0EDC AFBE0030 */  sw         $fp, 0x30($sp)
/* 972A0 800E0EE0 AFB7002C */  sw         $s7, 0x2C($sp)
/* 972A4 800E0EE4 AFB60028 */  sw         $s6, 0x28($sp)
/* 972A8 800E0EE8 AFB50024 */  sw         $s5, 0x24($sp)
/* 972AC 800E0EEC AFB3001C */  sw         $s3, 0x1C($sp)
/* 972B0 800E0EF0 AFB20018 */  sw         $s2, 0x18($sp)
/* 972B4 800E0EF4 AFB10014 */  sw         $s1, 0x14($sp)
/* 972B8 800E0EF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 972BC 800E0EFC AFA5003C */  sw         $a1, 0x3C($sp)
/* 972C0 800E0F00 AFA70044 */  sw         $a3, 0x44($sp)
/* 972C4 800E0F04 86820014 */  lh         $v0, 0x14($s4)
/* 972C8 800E0F08 0080B021 */  addu       $s6, $a0, $zero
/* 972CC 800E0F0C AE80000C */  sw         $zero, 0xC($s4)
/* 972D0 800E0F10 04400004 */  bltz       $v0, .Lrace_800E0F24
/* 972D4 800E0F14 AE800010 */   sw        $zero, 0x10($s4)
/* 972D8 800E0F18 86840016 */  lh         $a0, 0x16($s4)
/* 972DC 800E0F1C 14800006 */  bnez       $a0, .Lrace_800E0F38
/* 972E0 800E0F20 00C09821 */   addu      $s3, $a2, $zero
.Lrace_800E0F24:
/* 972E4 800E0F24 8FA80048 */  lw         $t0, 0x48($sp)
/* 972E8 800E0F28 AD140000 */  sw         $s4, 0x0($t0)
/* 972EC 800E0F2C 8FA80044 */  lw         $t0, 0x44($sp)
/* 972F0 800E0F30 080383F8 */  j          .Lrace_800E0FE0
/* 972F4 800E0F34 AD140000 */   sw        $s4, 0x0($t0)
.Lrace_800E0F38:
/* 972F8 800E0F38 00008821 */  addu       $s1, $zero, $zero
/* 972FC 800E0F3C 8EC3001C */  lw         $v1, 0x1C($s6)
/* 97300 800E0F40 00021040 */  sll        $v0, $v0, 1
/* 97304 800E0F44 18800021 */  blez       $a0, .Lrace_800E0FCC
/* 97308 800E0F48 00621821 */   addu      $v1, $v1, $v0
/* 9730C 800E0F4C 241E0001 */  addiu      $fp, $zero, 0x1
/* 97310 800E0F50 24170002 */  addiu      $s7, $zero, 0x2
/* 97314 800E0F54 0060A821 */  addu       $s5, $v1, $zero
.Lrace_800E0F58:
/* 97318 800E0F58 96A20000 */  lhu        $v0, 0x0($s5)
/* 9731C 800E0F5C 8EC30004 */  lw         $v1, 0x4($s6)
/* 97320 800E0F60 00021140 */  sll        $v0, $v0, 5
/* 97324 800E0F64 00629021 */  addu       $s2, $v1, $v0
/* 97328 800E0F68 26500004 */  addiu      $s0, $s2, 0x4
/* 9732C 800E0F6C 86020018 */  lh         $v0, 0x18($s0)
/* 97330 800E0F70 0440000C */  bltz       $v0, .Lrace_800E0FA4
/* 97334 800E0F74 A61E001A */   sh        $fp, 0x1A($s0)
/* 97338 800E0F78 00022840 */  sll        $a1, $v0, 1
/* 9733C 800E0F7C 00A22821 */  addu       $a1, $a1, $v0
/* 97340 800E0F80 000528C0 */  sll        $a1, $a1, 3
/* 97344 800E0F84 8EC20014 */  lw         $v0, 0x14($s6)
/* 97348 800E0F88 8FA4003C */  lw         $a0, 0x3C($sp)
/* 9734C 800E0F8C 0C017FA8 */  jal        func_8005FEA0
/* 97350 800E0F90 00452821 */   addu      $a1, $v0, $a1
/* 97354 800E0F94 10400008 */  beqz       $v0, .Lrace_800E0FB8
/* 97358 800E0F98 00000000 */   nop
/* 9735C 800E0F9C 50570001 */  beql       $v0, $s7, .Lrace_800E0FA4
/* 97360 800E0FA0 A600001A */   sh        $zero, 0x1A($s0)
.Lrace_800E0FA4:
/* 97364 800E0FA4 26620004 */  addiu      $v0, $s3, 0x4
/* 97368 800E0FA8 AE700010 */  sw         $s0, 0x10($s3)
/* 9736C 800E0FAC 02409821 */  addu       $s3, $s2, $zero
/* 97370 800E0FB0 AE020010 */  sw         $v0, 0x10($s0)
/* 97374 800E0FB4 AE00000C */  sw         $zero, 0xC($s0)
.Lrace_800E0FB8:
/* 97378 800E0FB8 86820016 */  lh         $v0, 0x16($s4)
/* 9737C 800E0FBC 26310001 */  addiu      $s1, $s1, 0x1
/* 97380 800E0FC0 0222102A */  slt        $v0, $s1, $v0
/* 97384 800E0FC4 1440FFE4 */  bnez       $v0, .Lrace_800E0F58
/* 97388 800E0FC8 26B50002 */   addiu     $s5, $s5, 0x2
.Lrace_800E0FCC:
/* 9738C 800E0FCC 8FA80044 */  lw         $t0, 0x44($sp)
/* 97390 800E0FD0 AD140000 */  sw         $s4, 0x0($t0)
/* 97394 800E0FD4 8FA80048 */  lw         $t0, 0x48($sp)
/* 97398 800E0FD8 26620004 */  addiu      $v0, $s3, 0x4
/* 9739C 800E0FDC AD020000 */  sw         $v0, 0x0($t0)
.Lrace_800E0FE0:
/* 973A0 800E0FE0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 973A4 800E0FE4 8FBE0030 */  lw         $fp, 0x30($sp)
/* 973A8 800E0FE8 8FB7002C */  lw         $s7, 0x2C($sp)
/* 973AC 800E0FEC 8FB60028 */  lw         $s6, 0x28($sp)
/* 973B0 800E0FF0 8FB50024 */  lw         $s5, 0x24($sp)
/* 973B4 800E0FF4 8FB40020 */  lw         $s4, 0x20($sp)
/* 973B8 800E0FF8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 973BC 800E0FFC 8FB20018 */  lw         $s2, 0x18($sp)
/* 973C0 800E1000 8FB10014 */  lw         $s1, 0x14($sp)
/* 973C4 800E1004 8FB00010 */  lw         $s0, 0x10($sp)
/* 973C8 800E1008 03E00008 */  jr         $ra
/* 973CC 800E100C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800E1010
/* 973D0 800E1010 3409FFFF */  ori        $t1, $zero, 0xFFFF
/* 973D4 800E1014 8FAD0010 */  lw         $t5, 0x10($sp)
/* 973D8 800E1018 8C880008 */  lw         $t0, 0x8($a0)
/* 973DC 800E101C 8C82000C */  lw         $v0, 0xC($a0)
/* 973E0 800E1020 44804000 */  mtc1       $zero, $f8
/* 973E4 800E1024 24420001 */  addiu      $v0, $v0, 0x1
/* 973E8 800E1028 AC82000C */  sw         $v0, 0xC($a0)
.Lrace_800E102C:
/* 973EC 800E102C 95020000 */  lhu        $v0, 0x0($t0)
/* 973F0 800E1030 14400029 */  bnez       $v0, .Lrace_800E10D8
/* 973F4 800E1034 25020004 */   addiu     $v0, $t0, 0x4
/* 973F8 800E1038 C5040004 */  lwc1       $f4, 0x4($t0)
/* 973FC 800E103C C4A00000 */  lwc1       $f0, 0x0($a1)
/* 97400 800E1040 46002102 */  mul.s      $f4, $f4, $f0
/* 97404 800E1044 C4460004 */  lwc1       $f6, 0x4($v0)
/* 97408 800E1048 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 9740C 800E104C 46003182 */  mul.s      $f6, $f6, $f0
/* 97410 800E1050 C4420008 */  lwc1       $f2, 0x8($v0)
/* 97414 800E1054 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 97418 800E1058 46001082 */  mul.s      $f2, $f2, $f0
/* 9741C 800E105C 46062100 */  add.s      $f4, $f4, $f6
/* 97420 800E1060 46022100 */  add.s      $f4, $f4, $f2
/* 97424 800E1064 C5000010 */  lwc1       $f0, 0x10($t0)
/* 97428 800E1068 46002100 */  add.s      $f4, $f4, $f0
/* 9742C 800E106C 4608203C */  c.lt.s     $f4, $f8
/* 97430 800E1070 00000000 */  nop
/* 97434 800E1074 45000009 */  bc1f       .Lrace_800E109C
/* 97438 800E1078 00000000 */   nop
/* 9743C 800E107C 9502001E */  lhu        $v0, 0x1E($t0)
/* 97440 800E1080 10490006 */  beq        $v0, $t1, .Lrace_800E109C
/* 97444 800E1084 00000000 */   nop
/* 97448 800E1088 8C82000C */  lw         $v0, 0xC($a0)
/* 9744C 800E108C AD020018 */  sw         $v0, 0x18($t0)
/* 97450 800E1090 9502001E */  lhu        $v0, 0x1E($t0)
/* 97454 800E1094 08038432 */  j          .Lrace_800E10C8
/* 97458 800E1098 00000000 */   nop
.Lrace_800E109C:
/* 9745C 800E109C 9502001C */  lhu        $v0, 0x1C($t0)
/* 97460 800E10A0 14490006 */  bne        $v0, $t1, .Lrace_800E10BC
/* 97464 800E10A4 00000000 */   nop
/* 97468 800E10A8 8C82000C */  lw         $v0, 0xC($a0)
/* 9746C 800E10AC AD020018 */  sw         $v0, 0x18($t0)
/* 97470 800E10B0 9502001E */  lhu        $v0, 0x1E($t0)
/* 97474 800E10B4 08038432 */  j          .Lrace_800E10C8
/* 97478 800E10B8 00000000 */   nop
.Lrace_800E10BC:
/* 9747C 800E10BC 8C82000C */  lw         $v0, 0xC($a0)
/* 97480 800E10C0 AD020014 */  sw         $v0, 0x14($t0)
/* 97484 800E10C4 9502001C */  lhu        $v0, 0x1C($t0)
.Lrace_800E10C8:
/* 97488 800E10C8 8C830004 */  lw         $v1, 0x4($a0)
/* 9748C 800E10CC 00021140 */  sll        $v0, $v0, 5
/* 97490 800E10D0 0803840B */  j          .Lrace_800E102C
/* 97494 800E10D4 00624021 */   addu      $t0, $v1, $v0
.Lrace_800E10D8:
/* 97498 800E10D8 95030002 */  lhu        $v1, 0x2($t0)
/* 9749C 800E10DC 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 974A0 800E10E0 AD000014 */  sw         $zero, 0x14($t0)
/* 974A4 800E10E4 14620005 */  bne        $v1, $v0, .Lrace_800E10FC
/* 974A8 800E10E8 AD000010 */   sw        $zero, 0x10($t0)
/* 974AC 800E10EC 25020004 */  addiu      $v0, $t0, 0x4
/* 974B0 800E10F0 ADA20000 */  sw         $v0, 0x0($t5)
/* 974B4 800E10F4 03E00008 */  jr         $ra
/* 974B8 800E10F8 ACE20000 */   sw        $v0, 0x0($a3)
.Lrace_800E10FC:
/* 974BC 800E10FC 01005021 */  addu       $t2, $t0, $zero
/* 974C0 800E1100 01406021 */  addu       $t4, $t2, $zero
/* 974C4 800E1104 340BFFFF */  ori        $t3, $zero, 0xFFFF
.Lrace_800E1108:
/* 974C8 800E1108 95420002 */  lhu        $v0, 0x2($t2)
.Lrace_800E110C:
/* 974CC 800E110C 8C830004 */  lw         $v1, 0x4($a0)
/* 974D0 800E1110 00021140 */  sll        $v0, $v0, 5
/* 974D4 800E1114 00624021 */  addu       $t0, $v1, $v0
.Lrace_800E1118:
/* 974D8 800E1118 8D030014 */  lw         $v1, 0x14($t0)
/* 974DC 800E111C 8C89000C */  lw         $t1, 0xC($a0)
/* 974E0 800E1120 10690037 */  beq        $v1, $t1, .Lrace_800E1200
/* 974E4 800E1124 00000000 */   nop
/* 974E8 800E1128 8D030018 */  lw         $v1, 0x18($t0)
/* 974EC 800E112C 1069001C */  beq        $v1, $t1, .Lrace_800E11A0
/* 974F0 800E1130 25020004 */   addiu     $v0, $t0, 0x4
/* 974F4 800E1134 C5060004 */  lwc1       $f6, 0x4($t0)
/* 974F8 800E1138 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 974FC 800E113C 46003182 */  mul.s      $f6, $f6, $f0
/* 97500 800E1140 C4440004 */  lwc1       $f4, 0x4($v0)
/* 97504 800E1144 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 97508 800E1148 46002102 */  mul.s      $f4, $f4, $f0
/* 9750C 800E114C C4420008 */  lwc1       $f2, 0x8($v0)
/* 97510 800E1150 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 97514 800E1154 46001082 */  mul.s      $f2, $f2, $f0
/* 97518 800E1158 46043180 */  add.s      $f6, $f6, $f4
/* 9751C 800E115C 46023100 */  add.s      $f4, $f6, $f2
/* 97520 800E1160 C5000010 */  lwc1       $f0, 0x10($t0)
/* 97524 800E1164 46000007 */  neg.s      $f0, $f0
/* 97528 800E1168 4600203C */  c.lt.s     $f4, $f0
/* 9752C 800E116C 00000000 */  nop
/* 97530 800E1170 45000006 */  bc1f       .Lrace_800E118C
/* 97534 800E1174 00000000 */   nop
/* 97538 800E1178 9502001E */  lhu        $v0, 0x1E($t0)
/* 9753C 800E117C 104BFFE6 */  beq        $v0, $t3, .Lrace_800E1118
/* 97540 800E1180 AD090018 */   sw        $t1, 0x18($t0)
/* 97544 800E1184 0803849E */  j          .Lrace_800E1278
/* 97548 800E1188 00000000 */   nop
.Lrace_800E118C:
/* 9754C 800E118C 9502001C */  lhu        $v0, 0x1C($t0)
/* 97550 800E1190 104BFFE1 */  beq        $v0, $t3, .Lrace_800E1118
/* 97554 800E1194 AD090014 */   sw        $t1, 0x14($t0)
/* 97558 800E1198 0803849E */  j          .Lrace_800E1278
/* 9755C 800E119C 00000000 */   nop
.Lrace_800E11A0:
/* 97560 800E11A0 9502001C */  lhu        $v0, 0x1C($t0)
/* 97564 800E11A4 104BFFDC */  beq        $v0, $t3, .Lrace_800E1118
/* 97568 800E11A8 AD030014 */   sw        $v1, 0x14($t0)
/* 9756C 800E11AC C5060004 */  lwc1       $f6, 0x4($t0)
/* 97570 800E11B0 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 97574 800E11B4 46003182 */  mul.s      $f6, $f6, $f0
/* 97578 800E11B8 25020004 */  addiu      $v0, $t0, 0x4
/* 9757C 800E11BC C4440004 */  lwc1       $f4, 0x4($v0)
/* 97580 800E11C0 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 97584 800E11C4 46002102 */  mul.s      $f4, $f4, $f0
/* 97588 800E11C8 C4420008 */  lwc1       $f2, 0x8($v0)
/* 9758C 800E11CC C4C00008 */  lwc1       $f0, 0x8($a2)
/* 97590 800E11D0 46001082 */  mul.s      $f2, $f2, $f0
/* 97594 800E11D4 46043180 */  add.s      $f6, $f6, $f4
/* 97598 800E11D8 46023100 */  add.s      $f4, $f6, $f2
/* 9759C 800E11DC C5000010 */  lwc1       $f0, 0x10($t0)
/* 975A0 800E11E0 46000007 */  neg.s      $f0, $f0
/* 975A4 800E11E4 4600203C */  c.lt.s     $f4, $f0
/* 975A8 800E11E8 00000000 */  nop
/* 975AC 800E11EC 4501FFCA */  bc1t       .Lrace_800E1118
/* 975B0 800E11F0 00000000 */   nop
/* 975B4 800E11F4 9502001C */  lhu        $v0, 0x1C($t0)
/* 975B8 800E11F8 0803849E */  j          .Lrace_800E1278
/* 975BC 800E11FC 00000000 */   nop
.Lrace_800E1200:
/* 975C0 800E1200 8D020018 */  lw         $v0, 0x18($t0)
/* 975C4 800E1204 14430006 */  bne        $v0, $v1, .Lrace_800E1220
/* 975C8 800E1208 00000000 */   nop
/* 975CC 800E120C 95020002 */  lhu        $v0, 0x2($t0)
/* 975D0 800E1210 504B0025 */  beql       $v0, $t3, .Lrace_800E12A8
/* 975D4 800E1214 25820004 */   addiu     $v0, $t4, 0x4
/* 975D8 800E1218 08038443 */  j          .Lrace_800E110C
/* 975DC 800E121C 00000000 */   nop
.Lrace_800E1220:
/* 975E0 800E1220 9502001E */  lhu        $v0, 0x1E($t0)
/* 975E4 800E1224 104BFFBC */  beq        $v0, $t3, .Lrace_800E1118
/* 975E8 800E1228 AD030018 */   sw        $v1, 0x18($t0)
/* 975EC 800E122C C5060004 */  lwc1       $f6, 0x4($t0)
/* 975F0 800E1230 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 975F4 800E1234 46003182 */  mul.s      $f6, $f6, $f0
/* 975F8 800E1238 25020004 */  addiu      $v0, $t0, 0x4
/* 975FC 800E123C C4440004 */  lwc1       $f4, 0x4($v0)
/* 97600 800E1240 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 97604 800E1244 46002102 */  mul.s      $f4, $f4, $f0
/* 97608 800E1248 C4420008 */  lwc1       $f2, 0x8($v0)
/* 9760C 800E124C C4C00008 */  lwc1       $f0, 0x8($a2)
/* 97610 800E1250 46001082 */  mul.s      $f2, $f2, $f0
/* 97614 800E1254 46043180 */  add.s      $f6, $f6, $f4
/* 97618 800E1258 46023100 */  add.s      $f4, $f6, $f2
/* 9761C 800E125C C5000010 */  lwc1       $f0, 0x10($t0)
/* 97620 800E1260 46000007 */  neg.s      $f0, $f0
/* 97624 800E1264 4604003C */  c.lt.s     $f0, $f4
/* 97628 800E1268 00000000 */  nop
/* 9762C 800E126C 4501FFAA */  bc1t       .Lrace_800E1118
/* 97630 800E1270 00000000 */   nop
/* 97634 800E1274 9502001E */  lhu        $v0, 0x1E($t0)
.Lrace_800E1278:
/* 97638 800E1278 8C830004 */  lw         $v1, 0x4($a0)
/* 9763C 800E127C 00021140 */  sll        $v0, $v0, 5
/* 97640 800E1280 00624021 */  addu       $t0, $v1, $v0
/* 97644 800E1284 95020000 */  lhu        $v0, 0x0($t0)
/* 97648 800E1288 1040FFA3 */  beqz       $v0, .Lrace_800E1118
/* 9764C 800E128C 25020004 */   addiu     $v0, $t0, 0x4
/* 97650 800E1290 AD420010 */  sw         $v0, 0x10($t2)
/* 97654 800E1294 25420004 */  addiu      $v0, $t2, 0x4
/* 97658 800E1298 01005021 */  addu       $t2, $t0, $zero
/* 9765C 800E129C AD420014 */  sw         $v0, 0x14($t2)
/* 97660 800E12A0 08038442 */  j          .Lrace_800E1108
/* 97664 800E12A4 AD400010 */   sw        $zero, 0x10($t2)
.Lrace_800E12A8:
/* 97668 800E12A8 ACE20000 */  sw         $v0, 0x0($a3)
/* 9766C 800E12AC 25420004 */  addiu      $v0, $t2, 0x4
/* 97670 800E12B0 03E00008 */  jr         $ra
/* 97674 800E12B4 ADA20000 */   sw        $v0, 0x0($t5)

glabel func_race_800E12B8
/* 97678 800E12B8 3408FFFF */  ori        $t0, $zero, 0xFFFF
/* 9767C 800E12BC 44864000 */  mtc1       $a2, $f8
/* 97680 800E12C0 8FAC0010 */  lw         $t4, 0x10($sp)
/* 97684 800E12C4 8C860008 */  lw         $a2, 0x8($a0)
/* 97688 800E12C8 8C82000C */  lw         $v0, 0xC($a0)
/* 9768C 800E12CC 44805000 */  mtc1       $zero, $f10
/* 97690 800E12D0 24420001 */  addiu      $v0, $v0, 0x1
/* 97694 800E12D4 AC82000C */  sw         $v0, 0xC($a0)
.Lrace_800E12D8:
/* 97698 800E12D8 94C20000 */  lhu        $v0, 0x0($a2)
/* 9769C 800E12DC 14400036 */  bnez       $v0, .Lrace_800E13B8
/* 976A0 800E12E0 24C20004 */   addiu     $v0, $a2, 0x4
/* 976A4 800E12E4 C4C40004 */  lwc1       $f4, 0x4($a2)
/* 976A8 800E12E8 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 976AC 800E12EC 46002102 */  mul.s      $f4, $f4, $f0
/* 976B0 800E12F0 C4460004 */  lwc1       $f6, 0x4($v0)
/* 976B4 800E12F4 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 976B8 800E12F8 46003182 */  mul.s      $f6, $f6, $f0
/* 976BC 800E12FC C4420008 */  lwc1       $f2, 0x8($v0)
/* 976C0 800E1300 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 976C4 800E1304 46001082 */  mul.s      $f2, $f2, $f0
/* 976C8 800E1308 46062100 */  add.s      $f4, $f4, $f6
/* 976CC 800E130C 46022100 */  add.s      $f4, $f4, $f2
/* 976D0 800E1310 C4C00010 */  lwc1       $f0, 0x10($a2)
/* 976D4 800E1314 46002100 */  add.s      $f4, $f4, $f0
/* 976D8 800E1318 460A203C */  c.lt.s     $f4, $f10
/* 976DC 800E131C 00000000 */  nop
/* 976E0 800E1320 45000010 */  bc1f       .Lrace_800E1364
/* 976E4 800E1324 00000000 */   nop
/* 976E8 800E1328 94C2001E */  lhu        $v0, 0x1E($a2)
/* 976EC 800E132C 1048000D */  beq        $v0, $t0, .Lrace_800E1364
/* 976F0 800E1330 00000000 */   nop
/* 976F4 800E1334 46004007 */  neg.s      $f0, $f8
/* 976F8 800E1338 4600203E */  c.le.s     $f4, $f0
/* 976FC 800E133C 00000000 */  nop
/* 97700 800E1340 45000003 */  bc1f       .Lrace_800E1350
/* 97704 800E1344 00000000 */   nop
/* 97708 800E1348 8C82000C */  lw         $v0, 0xC($a0)
/* 9770C 800E134C ACC20014 */  sw         $v0, 0x14($a2)
.Lrace_800E1350:
/* 97710 800E1350 8C82000C */  lw         $v0, 0xC($a0)
/* 97714 800E1354 ACC20018 */  sw         $v0, 0x18($a2)
/* 97718 800E1358 94C2001E */  lhu        $v0, 0x1E($a2)
/* 9771C 800E135C 080384EA */  j          .Lrace_800E13A8
/* 97720 800E1360 00000000 */   nop
.Lrace_800E1364:
/* 97724 800E1364 94C2001C */  lhu        $v0, 0x1C($a2)
/* 97728 800E1368 14480006 */  bne        $v0, $t0, .Lrace_800E1384
/* 9772C 800E136C 00000000 */   nop
/* 97730 800E1370 8C82000C */  lw         $v0, 0xC($a0)
/* 97734 800E1374 ACC20018 */  sw         $v0, 0x18($a2)
/* 97738 800E1378 94C2001E */  lhu        $v0, 0x1E($a2)
/* 9773C 800E137C 080384EA */  j          .Lrace_800E13A8
/* 97740 800E1380 00000000 */   nop
.Lrace_800E1384:
/* 97744 800E1384 4604403E */  c.le.s     $f8, $f4
/* 97748 800E1388 00000000 */  nop
/* 9774C 800E138C 45000003 */  bc1f       .Lrace_800E139C
/* 97750 800E1390 00000000 */   nop
/* 97754 800E1394 8C82000C */  lw         $v0, 0xC($a0)
/* 97758 800E1398 ACC20018 */  sw         $v0, 0x18($a2)
.Lrace_800E139C:
/* 9775C 800E139C 8C82000C */  lw         $v0, 0xC($a0)
/* 97760 800E13A0 ACC20014 */  sw         $v0, 0x14($a2)
/* 97764 800E13A4 94C2001C */  lhu        $v0, 0x1C($a2)
.Lrace_800E13A8:
/* 97768 800E13A8 8C830004 */  lw         $v1, 0x4($a0)
/* 9776C 800E13AC 00021140 */  sll        $v0, $v0, 5
/* 97770 800E13B0 080384B6 */  j          .Lrace_800E12D8
/* 97774 800E13B4 00623021 */   addu      $a2, $v1, $v0
.Lrace_800E13B8:
/* 97778 800E13B8 94C30002 */  lhu        $v1, 0x2($a2)
/* 9777C 800E13BC 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 97780 800E13C0 ACC00014 */  sw         $zero, 0x14($a2)
/* 97784 800E13C4 14620007 */  bne        $v1, $v0, .Lrace_800E13E4
/* 97788 800E13C8 ACC00010 */   sw        $zero, 0x10($a2)
/* 9778C 800E13CC 24C20004 */  addiu      $v0, $a2, 0x4
/* 97790 800E13D0 AC820024 */  sw         $v0, 0x24($a0)
/* 97794 800E13D4 AC820020 */  sw         $v0, 0x20($a0)
/* 97798 800E13D8 AD820000 */  sw         $v0, 0x0($t4)
/* 9779C 800E13DC 03E00008 */  jr         $ra
/* 977A0 800E13E0 ACE20000 */   sw        $v0, 0x0($a3)
.Lrace_800E13E4:
/* 977A4 800E13E4 00C04821 */  addu       $t1, $a2, $zero
/* 977A8 800E13E8 01205821 */  addu       $t3, $t1, $zero
/* 977AC 800E13EC 340AFFFF */  ori        $t2, $zero, 0xFFFF
/* 977B0 800E13F0 44805000 */  mtc1       $zero, $f10
.Lrace_800E13F4:
/* 977B4 800E13F4 95220002 */  lhu        $v0, 0x2($t1)
.Lrace_800E13F8:
/* 977B8 800E13F8 8C830004 */  lw         $v1, 0x4($a0)
/* 977BC 800E13FC 00021140 */  sll        $v0, $v0, 5
/* 977C0 800E1400 00623021 */  addu       $a2, $v1, $v0
.Lrace_800E1404:
/* 977C4 800E1404 8CC30014 */  lw         $v1, 0x14($a2)
/* 977C8 800E1408 8C88000C */  lw         $t0, 0xC($a0)
/* 977CC 800E140C 10680035 */  beq        $v1, $t0, .Lrace_800E14E4
/* 977D0 800E1410 00000000 */   nop
/* 977D4 800E1414 8CC30018 */  lw         $v1, 0x18($a2)
/* 977D8 800E1418 1068002F */  beq        $v1, $t0, .Lrace_800E14D8
/* 977DC 800E141C 24C20004 */   addiu     $v0, $a2, 0x4
/* 977E0 800E1420 C4C40004 */  lwc1       $f4, 0x4($a2)
/* 977E4 800E1424 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 977E8 800E1428 46002102 */  mul.s      $f4, $f4, $f0
/* 977EC 800E142C C4460004 */  lwc1       $f6, 0x4($v0)
/* 977F0 800E1430 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 977F4 800E1434 46003182 */  mul.s      $f6, $f6, $f0
/* 977F8 800E1438 C4420008 */  lwc1       $f2, 0x8($v0)
/* 977FC 800E143C C4A00008 */  lwc1       $f0, 0x8($a1)
/* 97800 800E1440 46001082 */  mul.s      $f2, $f2, $f0
/* 97804 800E1444 46062100 */  add.s      $f4, $f4, $f6
/* 97808 800E1448 46022100 */  add.s      $f4, $f4, $f2
/* 9780C 800E144C C4C00010 */  lwc1       $f0, 0x10($a2)
/* 97810 800E1450 46002100 */  add.s      $f4, $f4, $f0
/* 97814 800E1454 46004007 */  neg.s      $f0, $f8
/* 97818 800E1458 4600203E */  c.le.s     $f4, $f0
/* 9781C 800E145C 00000000 */  nop
/* 97820 800E1460 45000008 */  bc1f       .Lrace_800E1484
/* 97824 800E1464 00000000 */   nop
/* 97828 800E1468 ACC80014 */  sw         $t0, 0x14($a2)
/* 9782C 800E146C 8C82000C */  lw         $v0, 0xC($a0)
/* 97830 800E1470 94C3001E */  lhu        $v1, 0x1E($a2)
/* 97834 800E1474 106AFFE3 */  beq        $v1, $t2, .Lrace_800E1404
/* 97838 800E1478 ACC20018 */   sw        $v0, 0x18($a2)
/* 9783C 800E147C 08038545 */  j          .Lrace_800E1514
/* 97840 800E1480 00601021 */   addu      $v0, $v1, $zero
.Lrace_800E1484:
/* 97844 800E1484 4604403E */  c.le.s     $f8, $f4
/* 97848 800E1488 00000000 */  nop
/* 9784C 800E148C 45000008 */  bc1f       .Lrace_800E14B0
/* 97850 800E1490 00000000 */   nop
/* 97854 800E1494 ACC80014 */  sw         $t0, 0x14($a2)
/* 97858 800E1498 8C82000C */  lw         $v0, 0xC($a0)
/* 9785C 800E149C 94C3001C */  lhu        $v1, 0x1C($a2)
/* 97860 800E14A0 106AFFD8 */  beq        $v1, $t2, .Lrace_800E1404
/* 97864 800E14A4 ACC20018 */   sw        $v0, 0x18($a2)
/* 97868 800E14A8 08038545 */  j          .Lrace_800E1514
/* 9786C 800E14AC 00601021 */   addu      $v0, $v1, $zero
.Lrace_800E14B0:
/* 97870 800E14B0 460A203C */  c.lt.s     $f4, $f10
/* 97874 800E14B4 00000000 */  nop
/* 97878 800E14B8 45000004 */  bc1f       .Lrace_800E14CC
/* 9787C 800E14BC 00000000 */   nop
/* 97880 800E14C0 94C2001E */  lhu        $v0, 0x1E($a2)
/* 97884 800E14C4 08038543 */  j          .Lrace_800E150C
/* 97888 800E14C8 ACC80018 */   sw        $t0, 0x18($a2)
.Lrace_800E14CC:
/* 9788C 800E14CC 94C2001C */  lhu        $v0, 0x1C($a2)
/* 97890 800E14D0 08038543 */  j          .Lrace_800E150C
/* 97894 800E14D4 ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800E14D8:
/* 97898 800E14D8 94C2001C */  lhu        $v0, 0x1C($a2)
/* 9789C 800E14DC 08038543 */  j          .Lrace_800E150C
/* 978A0 800E14E0 ACC30014 */   sw        $v1, 0x14($a2)
.Lrace_800E14E4:
/* 978A4 800E14E4 8CC20018 */  lw         $v0, 0x18($a2)
/* 978A8 800E14E8 14430006 */  bne        $v0, $v1, .Lrace_800E1504
/* 978AC 800E14EC 00000000 */   nop
/* 978B0 800E14F0 94C20002 */  lhu        $v0, 0x2($a2)
/* 978B4 800E14F4 504A0013 */  beql       $v0, $t2, .Lrace_800E1544
/* 978B8 800E14F8 25620004 */   addiu     $v0, $t3, 0x4
/* 978BC 800E14FC 080384FE */  j          .Lrace_800E13F8
/* 978C0 800E1500 00000000 */   nop
.Lrace_800E1504:
/* 978C4 800E1504 94C2001E */  lhu        $v0, 0x1E($a2)
/* 978C8 800E1508 ACC30018 */  sw         $v1, 0x18($a2)
.Lrace_800E150C:
/* 978CC 800E150C 104AFFBD */  beq        $v0, $t2, .Lrace_800E1404
/* 978D0 800E1510 00000000 */   nop
.Lrace_800E1514:
/* 978D4 800E1514 8C830004 */  lw         $v1, 0x4($a0)
/* 978D8 800E1518 00021140 */  sll        $v0, $v0, 5
/* 978DC 800E151C 00623021 */  addu       $a2, $v1, $v0
/* 978E0 800E1520 94C20000 */  lhu        $v0, 0x0($a2)
/* 978E4 800E1524 1040FFB7 */  beqz       $v0, .Lrace_800E1404
/* 978E8 800E1528 24C20004 */   addiu     $v0, $a2, 0x4
/* 978EC 800E152C AD220010 */  sw         $v0, 0x10($t1)
/* 978F0 800E1530 25220004 */  addiu      $v0, $t1, 0x4
/* 978F4 800E1534 00C04821 */  addu       $t1, $a2, $zero
/* 978F8 800E1538 AD220014 */  sw         $v0, 0x14($t1)
/* 978FC 800E153C 080384FD */  j          .Lrace_800E13F4
/* 97900 800E1540 AD200010 */   sw        $zero, 0x10($t1)
.Lrace_800E1544:
/* 97904 800E1544 AC820020 */  sw         $v0, 0x20($a0)
/* 97908 800E1548 ACE20000 */  sw         $v0, 0x0($a3)
/* 9790C 800E154C 25220004 */  addiu      $v0, $t1, 0x4
/* 97910 800E1550 AC820024 */  sw         $v0, 0x24($a0)
/* 97914 800E1554 03E00008 */  jr         $ra
/* 97918 800E1558 AD820000 */   sw        $v0, 0x0($t4)

glabel func_race_800E155C
/* 9791C 800E155C 3408FFFF */  ori        $t0, $zero, 0xFFFF
/* 97920 800E1560 8C870008 */  lw         $a3, 0x8($a0)
/* 97924 800E1564 8C82000C */  lw         $v0, 0xC($a0)
/* 97928 800E1568 44804000 */  mtc1       $zero, $f8
/* 9792C 800E156C 24420001 */  addiu      $v0, $v0, 0x1
/* 97930 800E1570 AC82000C */  sw         $v0, 0xC($a0)
.Lrace_800E1574:
/* 97934 800E1574 94E20000 */  lhu        $v0, 0x0($a3)
/* 97938 800E1578 14400029 */  bnez       $v0, .Lrace_800E1620
/* 9793C 800E157C 24E20004 */   addiu     $v0, $a3, 0x4
/* 97940 800E1580 C4E40004 */  lwc1       $f4, 0x4($a3)
/* 97944 800E1584 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 97948 800E1588 46002102 */  mul.s      $f4, $f4, $f0
/* 9794C 800E158C C4460004 */  lwc1       $f6, 0x4($v0)
/* 97950 800E1590 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 97954 800E1594 46003182 */  mul.s      $f6, $f6, $f0
/* 97958 800E1598 C4420008 */  lwc1       $f2, 0x8($v0)
/* 9795C 800E159C C4A00008 */  lwc1       $f0, 0x8($a1)
/* 97960 800E15A0 46001082 */  mul.s      $f2, $f2, $f0
/* 97964 800E15A4 46062100 */  add.s      $f4, $f4, $f6
/* 97968 800E15A8 46022100 */  add.s      $f4, $f4, $f2
/* 9796C 800E15AC C4E00010 */  lwc1       $f0, 0x10($a3)
/* 97970 800E15B0 46002100 */  add.s      $f4, $f4, $f0
/* 97974 800E15B4 4608203C */  c.lt.s     $f4, $f8
/* 97978 800E15B8 00000000 */  nop
/* 9797C 800E15BC 45000009 */  bc1f       .Lrace_800E15E4
/* 97980 800E15C0 00000000 */   nop
/* 97984 800E15C4 94E2001E */  lhu        $v0, 0x1E($a3)
/* 97988 800E15C8 10480006 */  beq        $v0, $t0, .Lrace_800E15E4
/* 9798C 800E15CC 00000000 */   nop
/* 97990 800E15D0 8C82000C */  lw         $v0, 0xC($a0)
/* 97994 800E15D4 ACE20018 */  sw         $v0, 0x18($a3)
/* 97998 800E15D8 94E2001E */  lhu        $v0, 0x1E($a3)
/* 9799C 800E15DC 08038584 */  j          .Lrace_800E1610
/* 979A0 800E15E0 00000000 */   nop
.Lrace_800E15E4:
/* 979A4 800E15E4 94E2001C */  lhu        $v0, 0x1C($a3)
/* 979A8 800E15E8 14480006 */  bne        $v0, $t0, .Lrace_800E1604
/* 979AC 800E15EC 00000000 */   nop
/* 979B0 800E15F0 8C82000C */  lw         $v0, 0xC($a0)
/* 979B4 800E15F4 ACE20018 */  sw         $v0, 0x18($a3)
/* 979B8 800E15F8 94E2001E */  lhu        $v0, 0x1E($a3)
/* 979BC 800E15FC 08038584 */  j          .Lrace_800E1610
/* 979C0 800E1600 00000000 */   nop
.Lrace_800E1604:
/* 979C4 800E1604 8C82000C */  lw         $v0, 0xC($a0)
/* 979C8 800E1608 ACE20014 */  sw         $v0, 0x14($a3)
/* 979CC 800E160C 94E2001C */  lhu        $v0, 0x1C($a3)
.Lrace_800E1610:
/* 979D0 800E1610 8C830004 */  lw         $v1, 0x4($a0)
/* 979D4 800E1614 00021140 */  sll        $v0, $v0, 5
/* 979D8 800E1618 0803855D */  j          .Lrace_800E1574
/* 979DC 800E161C 00623821 */   addu      $a3, $v1, $v0
.Lrace_800E1620:
/* 979E0 800E1620 94E30002 */  lhu        $v1, 0x2($a3)
/* 979E4 800E1624 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 979E8 800E1628 ACE00014 */  sw         $zero, 0x14($a3)
/* 979EC 800E162C 14620005 */  bne        $v1, $v0, .Lrace_800E1644
/* 979F0 800E1630 ACE00010 */   sw        $zero, 0x10($a3)
/* 979F4 800E1634 24E20004 */  addiu      $v0, $a3, 0x4
/* 979F8 800E1638 AC820024 */  sw         $v0, 0x24($a0)
/* 979FC 800E163C 03E00008 */  jr         $ra
/* 97A00 800E1640 AC820020 */   sw        $v0, 0x20($a0)
.Lrace_800E1644:
/* 97A04 800E1644 00E05021 */  addu       $t2, $a3, $zero
/* 97A08 800E1648 01406021 */  addu       $t4, $t2, $zero
/* 97A0C 800E164C 340BFFFF */  ori        $t3, $zero, 0xFFFF
.Lrace_800E1650:
/* 97A10 800E1650 95420002 */  lhu        $v0, 0x2($t2)
.Lrace_800E1654:
/* 97A14 800E1654 8C830004 */  lw         $v1, 0x4($a0)
/* 97A18 800E1658 00021140 */  sll        $v0, $v0, 5
/* 97A1C 800E165C 00623821 */  addu       $a3, $v1, $v0
.Lrace_800E1660:
/* 97A20 800E1660 8CE30014 */  lw         $v1, 0x14($a3)
/* 97A24 800E1664 8C88000C */  lw         $t0, 0xC($a0)
/* 97A28 800E1668 10680040 */  beq        $v1, $t0, .Lrace_800E176C
/* 97A2C 800E166C 00000000 */   nop
/* 97A30 800E1670 8CE30018 */  lw         $v1, 0x18($a3)
/* 97A34 800E1674 1068001C */  beq        $v1, $t0, .Lrace_800E16E8
/* 97A38 800E1678 24E20004 */   addiu     $v0, $a3, 0x4
/* 97A3C 800E167C C4E60004 */  lwc1       $f6, 0x4($a3)
/* 97A40 800E1680 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 97A44 800E1684 46003182 */  mul.s      $f6, $f6, $f0
/* 97A48 800E1688 C4440004 */  lwc1       $f4, 0x4($v0)
/* 97A4C 800E168C C4A00004 */  lwc1       $f0, 0x4($a1)
/* 97A50 800E1690 46002102 */  mul.s      $f4, $f4, $f0
/* 97A54 800E1694 C4420008 */  lwc1       $f2, 0x8($v0)
/* 97A58 800E1698 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 97A5C 800E169C 46001082 */  mul.s      $f2, $f2, $f0
/* 97A60 800E16A0 46043180 */  add.s      $f6, $f6, $f4
/* 97A64 800E16A4 46023100 */  add.s      $f4, $f6, $f2
/* 97A68 800E16A8 C4E00010 */  lwc1       $f0, 0x10($a3)
/* 97A6C 800E16AC 46000007 */  neg.s      $f0, $f0
/* 97A70 800E16B0 4600203C */  c.lt.s     $f4, $f0
/* 97A74 800E16B4 00000000 */  nop
/* 97A78 800E16B8 45000006 */  bc1f       .Lrace_800E16D4
/* 97A7C 800E16BC 00000000 */   nop
/* 97A80 800E16C0 94E2001E */  lhu        $v0, 0x1E($a3)
/* 97A84 800E16C4 104BFFE6 */  beq        $v0, $t3, .Lrace_800E1660
/* 97A88 800E16C8 ACE80018 */   sw        $t0, 0x18($a3)
/* 97A8C 800E16CC 080385FD */  j          .Lrace_800E17F4
/* 97A90 800E16D0 00000000 */   nop
.Lrace_800E16D4:
/* 97A94 800E16D4 94E2001C */  lhu        $v0, 0x1C($a3)
/* 97A98 800E16D8 104BFFE1 */  beq        $v0, $t3, .Lrace_800E1660
/* 97A9C 800E16DC ACE80014 */   sw        $t0, 0x14($a3)
/* 97AA0 800E16E0 080385FD */  j          .Lrace_800E17F4
/* 97AA4 800E16E4 00000000 */   nop
.Lrace_800E16E8:
/* 97AA8 800E16E8 94E2001C */  lhu        $v0, 0x1C($a3)
/* 97AAC 800E16EC 104BFFDC */  beq        $v0, $t3, .Lrace_800E1660
/* 97AB0 800E16F0 ACE30014 */   sw        $v1, 0x14($a3)
/* 97AB4 800E16F4 24080001 */  addiu      $t0, $zero, 0x1
/* 97AB8 800E16F8 24E90004 */  addiu      $t1, $a3, 0x4
/* 97ABC 800E16FC 24A3000C */  addiu      $v1, $a1, 0xC
.Lrace_800E1700:
/* 97AC0 800E1700 0106102B */  sltu       $v0, $t0, $a2
/* 97AC4 800E1704 1040FFD6 */  beqz       $v0, .Lrace_800E1660
/* 97AC8 800E1708 00000000 */   nop
/* 97ACC 800E170C C4E40004 */  lwc1       $f4, 0x4($a3)
/* 97AD0 800E1710 C4600000 */  lwc1       $f0, 0x0($v1)
/* 97AD4 800E1714 46002102 */  mul.s      $f4, $f4, $f0
/* 97AD8 800E1718 C5260004 */  lwc1       $f6, 0x4($t1)
/* 97ADC 800E171C C4600004 */  lwc1       $f0, 0x4($v1)
/* 97AE0 800E1720 46003182 */  mul.s      $f6, $f6, $f0
/* 97AE4 800E1724 C5220008 */  lwc1       $f2, 0x8($t1)
/* 97AE8 800E1728 C4600008 */  lwc1       $f0, 0x8($v1)
/* 97AEC 800E172C 46001082 */  mul.s      $f2, $f2, $f0
/* 97AF0 800E1730 46062100 */  add.s      $f4, $f4, $f6
/* 97AF4 800E1734 46022100 */  add.s      $f4, $f4, $f2
/* 97AF8 800E1738 C4E00010 */  lwc1       $f0, 0x10($a3)
/* 97AFC 800E173C 46000007 */  neg.s      $f0, $f0
/* 97B00 800E1740 4604003C */  c.lt.s     $f0, $f4
/* 97B04 800E1744 00000000 */  nop
/* 97B08 800E1748 45010003 */  bc1t       .Lrace_800E1758
/* 97B0C 800E174C 2463000C */   addiu     $v1, $v1, 0xC
/* 97B10 800E1750 080385C0 */  j          .Lrace_800E1700
/* 97B14 800E1754 25080001 */   addiu     $t0, $t0, 0x1
.Lrace_800E1758:
/* 97B18 800E1758 1040FFC1 */  beqz       $v0, .Lrace_800E1660
/* 97B1C 800E175C 00000000 */   nop
/* 97B20 800E1760 94E2001C */  lhu        $v0, 0x1C($a3)
/* 97B24 800E1764 080385FD */  j          .Lrace_800E17F4
/* 97B28 800E1768 00000000 */   nop
.Lrace_800E176C:
/* 97B2C 800E176C 8CE20018 */  lw         $v0, 0x18($a3)
/* 97B30 800E1770 10430024 */  beq        $v0, $v1, .Lrace_800E1804
/* 97B34 800E1774 00000000 */   nop
/* 97B38 800E1778 94E2001E */  lhu        $v0, 0x1E($a3)
/* 97B3C 800E177C 104BFFB8 */  beq        $v0, $t3, .Lrace_800E1660
/* 97B40 800E1780 ACE30018 */   sw        $v1, 0x18($a3)
/* 97B44 800E1784 24080001 */  addiu      $t0, $zero, 0x1
/* 97B48 800E1788 24E90004 */  addiu      $t1, $a3, 0x4
/* 97B4C 800E178C 24A3000C */  addiu      $v1, $a1, 0xC
.Lrace_800E1790:
/* 97B50 800E1790 0106102B */  sltu       $v0, $t0, $a2
/* 97B54 800E1794 1040FFB2 */  beqz       $v0, .Lrace_800E1660
/* 97B58 800E1798 00000000 */   nop
/* 97B5C 800E179C C4E40004 */  lwc1       $f4, 0x4($a3)
/* 97B60 800E17A0 C4600000 */  lwc1       $f0, 0x0($v1)
/* 97B64 800E17A4 46002102 */  mul.s      $f4, $f4, $f0
/* 97B68 800E17A8 C5260004 */  lwc1       $f6, 0x4($t1)
/* 97B6C 800E17AC C4600004 */  lwc1       $f0, 0x4($v1)
/* 97B70 800E17B0 46003182 */  mul.s      $f6, $f6, $f0
/* 97B74 800E17B4 C5220008 */  lwc1       $f2, 0x8($t1)
/* 97B78 800E17B8 C4600008 */  lwc1       $f0, 0x8($v1)
/* 97B7C 800E17BC 46001082 */  mul.s      $f2, $f2, $f0
/* 97B80 800E17C0 46062100 */  add.s      $f4, $f4, $f6
/* 97B84 800E17C4 46022100 */  add.s      $f4, $f4, $f2
/* 97B88 800E17C8 C4E00010 */  lwc1       $f0, 0x10($a3)
/* 97B8C 800E17CC 46000007 */  neg.s      $f0, $f0
/* 97B90 800E17D0 4600203C */  c.lt.s     $f4, $f0
/* 97B94 800E17D4 00000000 */  nop
/* 97B98 800E17D8 45010003 */  bc1t       .Lrace_800E17E8
/* 97B9C 800E17DC 2463000C */   addiu     $v1, $v1, 0xC
/* 97BA0 800E17E0 080385E4 */  j          .Lrace_800E1790
/* 97BA4 800E17E4 25080001 */   addiu     $t0, $t0, 0x1
.Lrace_800E17E8:
/* 97BA8 800E17E8 1040FF9D */  beqz       $v0, .Lrace_800E1660
/* 97BAC 800E17EC 00000000 */   nop
/* 97BB0 800E17F0 94E2001E */  lhu        $v0, 0x1E($a3)
.Lrace_800E17F4:
/* 97BB4 800E17F4 8C830004 */  lw         $v1, 0x4($a0)
/* 97BB8 800E17F8 00021140 */  sll        $v0, $v0, 5
/* 97BBC 800E17FC 08038606 */  j          .Lrace_800E1818
/* 97BC0 800E1800 00623821 */   addu      $a3, $v1, $v0
.Lrace_800E1804:
/* 97BC4 800E1804 94E20002 */  lhu        $v0, 0x2($a3)
/* 97BC8 800E1808 504B000C */  beql       $v0, $t3, .Lrace_800E183C
/* 97BCC 800E180C 25820004 */   addiu     $v0, $t4, 0x4
/* 97BD0 800E1810 08038595 */  j          .Lrace_800E1654
/* 97BD4 800E1814 00000000 */   nop
.Lrace_800E1818:
/* 97BD8 800E1818 94E20000 */  lhu        $v0, 0x0($a3)
/* 97BDC 800E181C 1040FF90 */  beqz       $v0, .Lrace_800E1660
/* 97BE0 800E1820 24E20004 */   addiu     $v0, $a3, 0x4
/* 97BE4 800E1824 AD420010 */  sw         $v0, 0x10($t2)
/* 97BE8 800E1828 25420004 */  addiu      $v0, $t2, 0x4
/* 97BEC 800E182C 00E05021 */  addu       $t2, $a3, $zero
/* 97BF0 800E1830 AD420014 */  sw         $v0, 0x14($t2)
/* 97BF4 800E1834 08038594 */  j          .Lrace_800E1650
/* 97BF8 800E1838 AD400010 */   sw        $zero, 0x10($t2)
.Lrace_800E183C:
/* 97BFC 800E183C AC820020 */  sw         $v0, 0x20($a0)
/* 97C00 800E1840 25420004 */  addiu      $v0, $t2, 0x4
/* 97C04 800E1844 03E00008 */  jr         $ra
/* 97C08 800E1848 AC820024 */   sw        $v0, 0x24($a0)

glabel func_race_800E184C
/* 97C0C 800E184C 3409FFFF */  ori        $t1, $zero, 0xFFFF
/* 97C10 800E1850 8FAE0010 */  lw         $t6, 0x10($sp)
/* 97C14 800E1854 8C880008 */  lw         $t0, 0x8($a0)
/* 97C18 800E1858 8C82000C */  lw         $v0, 0xC($a0)
/* 97C1C 800E185C 44804000 */  mtc1       $zero, $f8
/* 97C20 800E1860 24420001 */  addiu      $v0, $v0, 0x1
/* 97C24 800E1864 AC82000C */  sw         $v0, 0xC($a0)
.Lrace_800E1868:
/* 97C28 800E1868 95020000 */  lhu        $v0, 0x0($t0)
/* 97C2C 800E186C 14400029 */  bnez       $v0, .Lrace_800E1914
/* 97C30 800E1870 25020004 */   addiu     $v0, $t0, 0x4
/* 97C34 800E1874 C5040004 */  lwc1       $f4, 0x4($t0)
/* 97C38 800E1878 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 97C3C 800E187C 46002102 */  mul.s      $f4, $f4, $f0
/* 97C40 800E1880 C4460004 */  lwc1       $f6, 0x4($v0)
/* 97C44 800E1884 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 97C48 800E1888 46003182 */  mul.s      $f6, $f6, $f0
/* 97C4C 800E188C C4420008 */  lwc1       $f2, 0x8($v0)
/* 97C50 800E1890 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 97C54 800E1894 46001082 */  mul.s      $f2, $f2, $f0
/* 97C58 800E1898 46062100 */  add.s      $f4, $f4, $f6
/* 97C5C 800E189C 46022100 */  add.s      $f4, $f4, $f2
/* 97C60 800E18A0 C5000010 */  lwc1       $f0, 0x10($t0)
/* 97C64 800E18A4 46002100 */  add.s      $f4, $f4, $f0
/* 97C68 800E18A8 4608203C */  c.lt.s     $f4, $f8
/* 97C6C 800E18AC 00000000 */  nop
/* 97C70 800E18B0 45000009 */  bc1f       .Lrace_800E18D8
/* 97C74 800E18B4 00000000 */   nop
/* 97C78 800E18B8 9502001E */  lhu        $v0, 0x1E($t0)
/* 97C7C 800E18BC 10490006 */  beq        $v0, $t1, .Lrace_800E18D8
/* 97C80 800E18C0 00000000 */   nop
/* 97C84 800E18C4 8C82000C */  lw         $v0, 0xC($a0)
/* 97C88 800E18C8 AD020018 */  sw         $v0, 0x18($t0)
/* 97C8C 800E18CC 9502001E */  lhu        $v0, 0x1E($t0)
/* 97C90 800E18D0 08038641 */  j          .Lrace_800E1904
/* 97C94 800E18D4 00000000 */   nop
.Lrace_800E18D8:
/* 97C98 800E18D8 9502001C */  lhu        $v0, 0x1C($t0)
/* 97C9C 800E18DC 14490006 */  bne        $v0, $t1, .Lrace_800E18F8
/* 97CA0 800E18E0 00000000 */   nop
/* 97CA4 800E18E4 8C82000C */  lw         $v0, 0xC($a0)
/* 97CA8 800E18E8 AD020018 */  sw         $v0, 0x18($t0)
/* 97CAC 800E18EC 9502001E */  lhu        $v0, 0x1E($t0)
/* 97CB0 800E18F0 08038641 */  j          .Lrace_800E1904
/* 97CB4 800E18F4 00000000 */   nop
.Lrace_800E18F8:
/* 97CB8 800E18F8 8C82000C */  lw         $v0, 0xC($a0)
/* 97CBC 800E18FC AD020014 */  sw         $v0, 0x14($t0)
/* 97CC0 800E1900 9502001C */  lhu        $v0, 0x1C($t0)
.Lrace_800E1904:
/* 97CC4 800E1904 8C830004 */  lw         $v1, 0x4($a0)
/* 97CC8 800E1908 00021140 */  sll        $v0, $v0, 5
/* 97CCC 800E190C 0803861A */  j          .Lrace_800E1868
/* 97CD0 800E1910 00624021 */   addu      $t0, $v1, $v0
.Lrace_800E1914:
/* 97CD4 800E1914 95030002 */  lhu        $v1, 0x2($t0)
/* 97CD8 800E1918 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 97CDC 800E191C AD000014 */  sw         $zero, 0x14($t0)
/* 97CE0 800E1920 14620005 */  bne        $v1, $v0, .Lrace_800E1938
/* 97CE4 800E1924 AD000010 */   sw        $zero, 0x10($t0)
/* 97CE8 800E1928 25020004 */  addiu      $v0, $t0, 0x4
/* 97CEC 800E192C ADC20000 */  sw         $v0, 0x0($t6)
/* 97CF0 800E1930 03E00008 */  jr         $ra
/* 97CF4 800E1934 ACE20000 */   sw        $v0, 0x0($a3)
.Lrace_800E1938:
/* 97CF8 800E1938 01005821 */  addu       $t3, $t0, $zero
/* 97CFC 800E193C 01606821 */  addu       $t5, $t3, $zero
/* 97D00 800E1940 340CFFFF */  ori        $t4, $zero, 0xFFFF
.Lrace_800E1944:
/* 97D04 800E1944 95620002 */  lhu        $v0, 0x2($t3)
.Lrace_800E1948:
/* 97D08 800E1948 8C830004 */  lw         $v1, 0x4($a0)
/* 97D0C 800E194C 00021140 */  sll        $v0, $v0, 5
/* 97D10 800E1950 00624021 */  addu       $t0, $v1, $v0
.Lrace_800E1954:
/* 97D14 800E1954 8D030014 */  lw         $v1, 0x14($t0)
/* 97D18 800E1958 8C89000C */  lw         $t1, 0xC($a0)
/* 97D1C 800E195C 10690040 */  beq        $v1, $t1, .Lrace_800E1A60
/* 97D20 800E1960 00000000 */   nop
/* 97D24 800E1964 8D030018 */  lw         $v1, 0x18($t0)
/* 97D28 800E1968 1069001C */  beq        $v1, $t1, .Lrace_800E19DC
/* 97D2C 800E196C 25020004 */   addiu     $v0, $t0, 0x4
/* 97D30 800E1970 C5060004 */  lwc1       $f6, 0x4($t0)
/* 97D34 800E1974 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 97D38 800E1978 46003182 */  mul.s      $f6, $f6, $f0
/* 97D3C 800E197C C4440004 */  lwc1       $f4, 0x4($v0)
/* 97D40 800E1980 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 97D44 800E1984 46002102 */  mul.s      $f4, $f4, $f0
/* 97D48 800E1988 C4420008 */  lwc1       $f2, 0x8($v0)
/* 97D4C 800E198C C4A00008 */  lwc1       $f0, 0x8($a1)
/* 97D50 800E1990 46001082 */  mul.s      $f2, $f2, $f0
/* 97D54 800E1994 46043180 */  add.s      $f6, $f6, $f4
/* 97D58 800E1998 46023100 */  add.s      $f4, $f6, $f2
/* 97D5C 800E199C C5000010 */  lwc1       $f0, 0x10($t0)
/* 97D60 800E19A0 46000007 */  neg.s      $f0, $f0
/* 97D64 800E19A4 4600203C */  c.lt.s     $f4, $f0
/* 97D68 800E19A8 00000000 */  nop
/* 97D6C 800E19AC 45000006 */  bc1f       .Lrace_800E19C8
/* 97D70 800E19B0 00000000 */   nop
/* 97D74 800E19B4 9502001E */  lhu        $v0, 0x1E($t0)
/* 97D78 800E19B8 104CFFE6 */  beq        $v0, $t4, .Lrace_800E1954
/* 97D7C 800E19BC AD090018 */   sw        $t1, 0x18($t0)
/* 97D80 800E19C0 080386BA */  j          .Lrace_800E1AE8
/* 97D84 800E19C4 00000000 */   nop
.Lrace_800E19C8:
/* 97D88 800E19C8 9502001C */  lhu        $v0, 0x1C($t0)
/* 97D8C 800E19CC 104CFFE1 */  beq        $v0, $t4, .Lrace_800E1954
/* 97D90 800E19D0 AD090014 */   sw        $t1, 0x14($t0)
/* 97D94 800E19D4 080386BA */  j          .Lrace_800E1AE8
/* 97D98 800E19D8 00000000 */   nop
.Lrace_800E19DC:
/* 97D9C 800E19DC 9502001C */  lhu        $v0, 0x1C($t0)
/* 97DA0 800E19E0 104CFFDC */  beq        $v0, $t4, .Lrace_800E1954
/* 97DA4 800E19E4 AD030014 */   sw        $v1, 0x14($t0)
/* 97DA8 800E19E8 24090001 */  addiu      $t1, $zero, 0x1
/* 97DAC 800E19EC 250A0004 */  addiu      $t2, $t0, 0x4
/* 97DB0 800E19F0 24A3000C */  addiu      $v1, $a1, 0xC
.Lrace_800E19F4:
/* 97DB4 800E19F4 0126102B */  sltu       $v0, $t1, $a2
/* 97DB8 800E19F8 1040FFD6 */  beqz       $v0, .Lrace_800E1954
/* 97DBC 800E19FC 00000000 */   nop
/* 97DC0 800E1A00 C5040004 */  lwc1       $f4, 0x4($t0)
/* 97DC4 800E1A04 C4600000 */  lwc1       $f0, 0x0($v1)
/* 97DC8 800E1A08 46002102 */  mul.s      $f4, $f4, $f0
/* 97DCC 800E1A0C C5460004 */  lwc1       $f6, 0x4($t2)
/* 97DD0 800E1A10 C4600004 */  lwc1       $f0, 0x4($v1)
/* 97DD4 800E1A14 46003182 */  mul.s      $f6, $f6, $f0
/* 97DD8 800E1A18 C5420008 */  lwc1       $f2, 0x8($t2)
/* 97DDC 800E1A1C C4600008 */  lwc1       $f0, 0x8($v1)
/* 97DE0 800E1A20 46001082 */  mul.s      $f2, $f2, $f0
/* 97DE4 800E1A24 46062100 */  add.s      $f4, $f4, $f6
/* 97DE8 800E1A28 46022100 */  add.s      $f4, $f4, $f2
/* 97DEC 800E1A2C C5000010 */  lwc1       $f0, 0x10($t0)
/* 97DF0 800E1A30 46000007 */  neg.s      $f0, $f0
/* 97DF4 800E1A34 4604003C */  c.lt.s     $f0, $f4
/* 97DF8 800E1A38 00000000 */  nop
/* 97DFC 800E1A3C 45010003 */  bc1t       .Lrace_800E1A4C
/* 97E00 800E1A40 2463000C */   addiu     $v1, $v1, 0xC
/* 97E04 800E1A44 0803867D */  j          .Lrace_800E19F4
/* 97E08 800E1A48 25290001 */   addiu     $t1, $t1, 0x1
.Lrace_800E1A4C:
/* 97E0C 800E1A4C 1040FFC1 */  beqz       $v0, .Lrace_800E1954
/* 97E10 800E1A50 00000000 */   nop
/* 97E14 800E1A54 9502001C */  lhu        $v0, 0x1C($t0)
/* 97E18 800E1A58 080386BA */  j          .Lrace_800E1AE8
/* 97E1C 800E1A5C 00000000 */   nop
.Lrace_800E1A60:
/* 97E20 800E1A60 8D020018 */  lw         $v0, 0x18($t0)
/* 97E24 800E1A64 10430024 */  beq        $v0, $v1, .Lrace_800E1AF8
/* 97E28 800E1A68 00000000 */   nop
/* 97E2C 800E1A6C 9502001E */  lhu        $v0, 0x1E($t0)
/* 97E30 800E1A70 104CFFB8 */  beq        $v0, $t4, .Lrace_800E1954
/* 97E34 800E1A74 AD030018 */   sw        $v1, 0x18($t0)
/* 97E38 800E1A78 24090001 */  addiu      $t1, $zero, 0x1
/* 97E3C 800E1A7C 250A0004 */  addiu      $t2, $t0, 0x4
/* 97E40 800E1A80 24A3000C */  addiu      $v1, $a1, 0xC
.Lrace_800E1A84:
/* 97E44 800E1A84 0126102B */  sltu       $v0, $t1, $a2
/* 97E48 800E1A88 1040FFB2 */  beqz       $v0, .Lrace_800E1954
/* 97E4C 800E1A8C 00000000 */   nop
/* 97E50 800E1A90 C5040004 */  lwc1       $f4, 0x4($t0)
/* 97E54 800E1A94 C4600000 */  lwc1       $f0, 0x0($v1)
/* 97E58 800E1A98 46002102 */  mul.s      $f4, $f4, $f0
/* 97E5C 800E1A9C C5460004 */  lwc1       $f6, 0x4($t2)
/* 97E60 800E1AA0 C4600004 */  lwc1       $f0, 0x4($v1)
/* 97E64 800E1AA4 46003182 */  mul.s      $f6, $f6, $f0
/* 97E68 800E1AA8 C5420008 */  lwc1       $f2, 0x8($t2)
/* 97E6C 800E1AAC C4600008 */  lwc1       $f0, 0x8($v1)
/* 97E70 800E1AB0 46001082 */  mul.s      $f2, $f2, $f0
/* 97E74 800E1AB4 46062100 */  add.s      $f4, $f4, $f6
/* 97E78 800E1AB8 46022100 */  add.s      $f4, $f4, $f2
/* 97E7C 800E1ABC C5000010 */  lwc1       $f0, 0x10($t0)
/* 97E80 800E1AC0 46000007 */  neg.s      $f0, $f0
/* 97E84 800E1AC4 4600203C */  c.lt.s     $f4, $f0
/* 97E88 800E1AC8 00000000 */  nop
/* 97E8C 800E1ACC 45010003 */  bc1t       .Lrace_800E1ADC
/* 97E90 800E1AD0 2463000C */   addiu     $v1, $v1, 0xC
/* 97E94 800E1AD4 080386A1 */  j          .Lrace_800E1A84
/* 97E98 800E1AD8 25290001 */   addiu     $t1, $t1, 0x1
.Lrace_800E1ADC:
/* 97E9C 800E1ADC 1040FF9D */  beqz       $v0, .Lrace_800E1954
/* 97EA0 800E1AE0 00000000 */   nop
/* 97EA4 800E1AE4 9502001E */  lhu        $v0, 0x1E($t0)
.Lrace_800E1AE8:
/* 97EA8 800E1AE8 8C830004 */  lw         $v1, 0x4($a0)
/* 97EAC 800E1AEC 00021140 */  sll        $v0, $v0, 5
/* 97EB0 800E1AF0 080386C3 */  j          .Lrace_800E1B0C
/* 97EB4 800E1AF4 00624021 */   addu      $t0, $v1, $v0
.Lrace_800E1AF8:
/* 97EB8 800E1AF8 95020002 */  lhu        $v0, 0x2($t0)
/* 97EBC 800E1AFC 504C000C */  beql       $v0, $t4, .Lrace_800E1B30
/* 97EC0 800E1B00 25A20004 */   addiu     $v0, $t5, 0x4
/* 97EC4 800E1B04 08038652 */  j          .Lrace_800E1948
/* 97EC8 800E1B08 00000000 */   nop
.Lrace_800E1B0C:
/* 97ECC 800E1B0C 95020000 */  lhu        $v0, 0x0($t0)
/* 97ED0 800E1B10 1040FF90 */  beqz       $v0, .Lrace_800E1954
/* 97ED4 800E1B14 25020004 */   addiu     $v0, $t0, 0x4
/* 97ED8 800E1B18 AD620010 */  sw         $v0, 0x10($t3)
/* 97EDC 800E1B1C 25620004 */  addiu      $v0, $t3, 0x4
/* 97EE0 800E1B20 01005821 */  addu       $t3, $t0, $zero
/* 97EE4 800E1B24 AD620014 */  sw         $v0, 0x14($t3)
/* 97EE8 800E1B28 08038651 */  j          .Lrace_800E1944
/* 97EEC 800E1B2C AD600010 */   sw        $zero, 0x10($t3)
.Lrace_800E1B30:
/* 97EF0 800E1B30 ACE20000 */  sw         $v0, 0x0($a3)
/* 97EF4 800E1B34 25620004 */  addiu      $v0, $t3, 0x4
/* 97EF8 800E1B38 03E00008 */  jr         $ra
/* 97EFC 800E1B3C ADC20000 */   sw        $v0, 0x0($t6)

glabel func_race_800E1B40
/* 97F00 800E1B40 8C820000 */  lw         $v0, 0x0($a0)
/* 97F04 800E1B44 1040000F */  beqz       $v0, .Lrace_800E1B84
/* 97F08 800E1B48 00002821 */   addu      $a1, $zero, $zero
.Lrace_800E1B4C:
/* 97F0C 800E1B4C 8C820004 */  lw         $v0, 0x4($a0)
/* 97F10 800E1B50 00051940 */  sll        $v1, $a1, 5
/* 97F14 800E1B54 00621821 */  addu       $v1, $v1, $v0
/* 97F18 800E1B58 94620000 */  lhu        $v0, 0x0($v1)
/* 97F1C 800E1B5C 14400004 */  bnez       $v0, .Lrace_800E1B70
/* 97F20 800E1B60 00000000 */   nop
/* 97F24 800E1B64 C4600008 */  lwc1       $f0, 0x8($v1)
/* 97F28 800E1B68 46000007 */  neg.s      $f0, $f0
/* 97F2C 800E1B6C E4600008 */  swc1       $f0, 0x8($v1)
.Lrace_800E1B70:
/* 97F30 800E1B70 8C820000 */  lw         $v0, 0x0($a0)
/* 97F34 800E1B74 24A50001 */  addiu      $a1, $a1, 0x1
/* 97F38 800E1B78 00A2102B */  sltu       $v0, $a1, $v0
/* 97F3C 800E1B7C 1440FFF3 */  bnez       $v0, .Lrace_800E1B4C
/* 97F40 800E1B80 00000000 */   nop
.Lrace_800E1B84:
/* 97F44 800E1B84 8C820010 */  lw         $v0, 0x10($a0)
/* 97F48 800E1B88 18400011 */  blez       $v0, .Lrace_800E1BD0
/* 97F4C 800E1B8C 00002821 */   addu      $a1, $zero, $zero
/* 97F50 800E1B90 00A01821 */  addu       $v1, $a1, $zero
.Lrace_800E1B94:
/* 97F54 800E1B94 8C820014 */  lw         $v0, 0x14($a0)
/* 97F58 800E1B98 00621021 */  addu       $v0, $v1, $v0
/* 97F5C 800E1B9C C4400004 */  lwc1       $f0, 0x4($v0)
/* 97F60 800E1BA0 46000007 */  neg.s      $f0, $f0
/* 97F64 800E1BA4 E4400004 */  swc1       $f0, 0x4($v0)
/* 97F68 800E1BA8 8C820014 */  lw         $v0, 0x14($a0)
/* 97F6C 800E1BAC 00621021 */  addu       $v0, $v1, $v0
/* 97F70 800E1BB0 C4400010 */  lwc1       $f0, 0x10($v0)
/* 97F74 800E1BB4 24A50001 */  addiu      $a1, $a1, 0x1
/* 97F78 800E1BB8 46000007 */  neg.s      $f0, $f0
/* 97F7C 800E1BBC E4400010 */  swc1       $f0, 0x10($v0)
/* 97F80 800E1BC0 8C820010 */  lw         $v0, 0x10($a0)
/* 97F84 800E1BC4 00A2102A */  slt        $v0, $a1, $v0
/* 97F88 800E1BC8 1440FFF2 */  bnez       $v0, .Lrace_800E1B94
/* 97F8C 800E1BCC 24630018 */   addiu     $v1, $v1, 0x18
.Lrace_800E1BD0:
/* 97F90 800E1BD0 03E00008 */  jr         $ra
/* 97F94 800E1BD4 00000000 */   nop

glabel func_race_800E1BD8
/* 97F98 800E1BD8 3C028013 */  lui        $v0, %hi(D_race_801320C0)
/* 97F9C 800E1BDC 03E00008 */  jr         $ra
/* 97FA0 800E1BE0 AC4420C0 */   sw        $a0, %lo(D_race_801320C0)($v0)

glabel func_race_800E1BE4
/* 97FA4 800E1BE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 97FA8 800E1BE8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 97FAC 800E1BEC 0C002513 */  jal        func_8000944C
/* 97FB0 800E1BF0 00000000 */   nop
/* 97FB4 800E1BF4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 97FB8 800E1BF8 03E00008 */  jr         $ra
/* 97FBC 800E1BFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E1C00
/* 97FC0 800E1C00 8C820024 */  lw         $v0, 0x24($a0)
/* 97FC4 800E1C04 03E00008 */  jr         $ra
/* 97FC8 800E1C08 00000000 */   nop

glabel func_race_800E1C0C
/* 97FCC 800E1C0C 8C820020 */  lw         $v0, 0x20($a0)
/* 97FD0 800E1C10 03E00008 */  jr         $ra
/* 97FD4 800E1C14 00000000 */   nop

glabel func_race_800E1C18
/* 97FD8 800E1C18 8C820004 */  lw         $v0, 0x4($a0)
/* 97FDC 800E1C1C 00052940 */  sll        $a1, $a1, 5
/* 97FE0 800E1C20 03E00008 */  jr         $ra
/* 97FE4 800E1C24 00451021 */   addu      $v0, $v0, $a1

glabel func_race_800E1C28
/* 97FE8 800E1C28 8C820000 */  lw         $v0, 0x0($a0)
/* 97FEC 800E1C2C 03E00008 */  jr         $ra
/* 97FF0 800E1C30 00000000 */   nop

glabel func_race_800E1C34
/* 97FF4 800E1C34 8C820004 */  lw         $v0, 0x4($a0)
/* 97FF8 800E1C38 03E00008 */  jr         $ra
/* 97FFC 800E1C3C 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800E1C40
/* 98000 800E1C40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 98004 800E1C44 AFB00010 */  sw         $s0, 0x10($sp)
/* 98008 800E1C48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9800C 800E1C4C 0C015708 */  jal        func_80055C20
/* 98010 800E1C50 00808021 */   addu      $s0, $a0, $zero
/* 98014 800E1C54 02001021 */  addu       $v0, $s0, $zero
/* 98018 800E1C58 3C038004 */  lui        $v1, %hi(D_8003D158)
/* 9801C 800E1C5C 2463D158 */  addiu      $v1, $v1, %lo(D_8003D158)
/* 98020 800E1C60 AC430024 */  sw         $v1, 0x24($v0)
/* 98024 800E1C64 AC400058 */  sw         $zero, 0x58($v0)
/* 98028 800E1C68 AC400060 */  sw         $zero, 0x60($v0)
/* 9802C 800E1C6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 98030 800E1C70 8FB00010 */  lw         $s0, 0x10($sp)
/* 98034 800E1C74 03E00008 */  jr         $ra
/* 98038 800E1C78 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E1C7C
/* 9803C 800E1C7C 03E00008 */  jr         $ra
/* 98040 800E1C80 AC850058 */   sw        $a1, 0x58($a0)

glabel func_race_800E1C84
/* 98044 800E1C84 AC800058 */  sw         $zero, 0x58($a0)
/* 98048 800E1C88 03E00008 */  jr         $ra
/* 9804C 800E1C8C AC800060 */   sw        $zero, 0x60($a0)

glabel func_race_800E1C90
/* 98050 800E1C90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 98054 800E1C94 AFB00010 */  sw         $s0, 0x10($sp)
/* 98058 800E1C98 00808021 */  addu       $s0, $a0, $zero
/* 9805C 800E1C9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 98060 800E1CA0 8E040058 */  lw         $a0, 0x58($s0)
/* 98064 800E1CA4 0C038C19 */  jal        func_race_800E3064
/* 98068 800E1CA8 00000000 */   nop
/* 9806C 800E1CAC 0C015A16 */  jal        func_80056858
/* 98070 800E1CB0 02002021 */   addu      $a0, $s0, $zero
/* 98074 800E1CB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 98078 800E1CB8 8FB00010 */  lw         $s0, 0x10($sp)
/* 9807C 800E1CBC 03E00008 */  jr         $ra
/* 98080 800E1CC0 27BD0018 */   addiu     $sp, $sp, 0x18
