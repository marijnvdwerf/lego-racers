.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007D430
/* 74760 8007D430 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74764 8007D434 AFB00010 */  sw         $s0, 0x10($sp)
/* 74768 8007D438 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7476C 8007D43C 0C002C3C */  jal        func_8000B0F0
/* 74770 8007D440 00808021 */   addu      $s0, $a0, $zero
/* 74774 8007D444 3C028004 */  lui        $v0, %hi(D_80040250)
/* 74778 8007D448 24420250 */  addiu      $v0, $v0, %lo(D_80040250)
/* 7477C 8007D44C 02002021 */  addu       $a0, $s0, $zero
/* 74780 8007D450 0C01F52D */  jal        func_8007D4B4
/* 74784 8007D454 AE020098 */   sw        $v0, 0x98($s0)
/* 74788 8007D458 02001021 */  addu       $v0, $s0, $zero
/* 7478C 8007D45C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74790 8007D460 8FB00010 */  lw         $s0, 0x10($sp)
/* 74794 8007D464 03E00008 */  jr         $ra
/* 74798 8007D468 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007D46C
/* 7479C 8007D46C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 747A0 8007D470 AFB00010 */  sw         $s0, 0x10($sp)
/* 747A4 8007D474 00808021 */  addu       $s0, $a0, $zero
/* 747A8 8007D478 AFB10014 */  sw         $s1, 0x14($sp)
/* 747AC 8007D47C 00A08821 */  addu       $s1, $a1, $zero
/* 747B0 8007D480 3C028004 */  lui        $v0, %hi(D_80040250)
/* 747B4 8007D484 24420250 */  addiu      $v0, $v0, %lo(D_80040250)
/* 747B8 8007D488 AFBF0018 */  sw         $ra, 0x18($sp)
/* 747BC 8007D48C 0C01F573 */  jal        func_8007D5CC
/* 747C0 8007D490 AE020098 */   sw        $v0, 0x98($s0)
/* 747C4 8007D494 02002021 */  addu       $a0, $s0, $zero
/* 747C8 8007D498 0C002C56 */  jal        func_8000B158
/* 747CC 8007D49C 02202821 */   addu      $a1, $s1, $zero
/* 747D0 8007D4A0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 747D4 8007D4A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 747D8 8007D4A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 747DC 8007D4AC 03E00008 */  jr         $ra
/* 747E0 8007D4B0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007D4B4
/* 747E4 8007D4B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 747E8 8007D4B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 747EC 8007D4BC 00808021 */  addu       $s0, $a0, $zero
/* 747F0 8007D4C0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 747F4 8007D4C4 0C002C6A */  jal        func_8000B1A8
/* 747F8 8007D4C8 AFB10014 */   sw        $s1, 0x14($sp)
/* 747FC 8007D4CC 2604009C */  addiu      $a0, $s0, 0x9C
/* 74800 8007D4D0 00002821 */  addu       $a1, $zero, $zero
/* 74804 8007D4D4 24060006 */  addiu      $a2, $zero, 0x6
/* 74808 8007D4D8 0C000697 */  jal        func_80001A5C
/* 7480C 8007D4DC AE0000E4 */   sw        $zero, 0xE4($s0)
/* 74810 8007D4E0 260400A8 */  addiu      $a0, $s0, 0xA8
/* 74814 8007D4E4 00002821 */  addu       $a1, $zero, $zero
/* 74818 8007D4E8 0C000697 */  jal        func_80001A5C
/* 7481C 8007D4EC 24060004 */   addiu     $a2, $zero, 0x4
/* 74820 8007D4F0 260400AC */  addiu      $a0, $s0, 0xAC
/* 74824 8007D4F4 00002821 */  addu       $a1, $zero, $zero
/* 74828 8007D4F8 0C000697 */  jal        func_80001A5C
/* 7482C 8007D4FC 24060008 */   addiu     $a2, $zero, 0x8
/* 74830 8007D500 2405000B */  addiu      $a1, $zero, 0xB
/* 74834 8007D504 2402000E */  addiu      $v0, $zero, 0xE
/* 74838 8007D508 8E030098 */  lw         $v1, 0x98($s0)
/* 7483C 8007D50C 24110002 */  addiu      $s1, $zero, 0x2
/* 74840 8007D510 AE020044 */  sw         $v0, 0x44($s0)
/* 74844 8007D514 24020003 */  addiu      $v0, $zero, 0x3
/* 74848 8007D518 AE110048 */  sw         $s1, 0x48($s0)
/* 7484C 8007D51C AE020034 */  sw         $v0, 0x34($s0)
/* 74850 8007D520 84640058 */  lh         $a0, 0x58($v1)
/* 74854 8007D524 8C62005C */  lw         $v0, 0x5C($v1)
/* 74858 8007D528 0040F809 */  jalr       $v0
/* 7485C 8007D52C 02042021 */   addu      $a0, $s0, $a0
/* 74860 8007D530 260400E8 */  addiu      $a0, $s0, 0xE8
/* 74864 8007D534 00002821 */  addu       $a1, $zero, $zero
/* 74868 8007D538 24060068 */  addiu      $a2, $zero, 0x68
/* 7486C 8007D53C 24020004 */  addiu      $v0, $zero, 0x4
/* 74870 8007D540 AE0000BC */  sw         $zero, 0xBC($s0)
/* 74874 8007D544 AE0000B8 */  sw         $zero, 0xB8($s0)
/* 74878 8007D548 AE020054 */  sw         $v0, 0x54($s0)
/* 7487C 8007D54C 0C000697 */  jal        func_80001A5C
/* 74880 8007D550 AE110050 */   sw        $s1, 0x50($s0)
/* 74884 8007D554 AE0000C0 */  sw         $zero, 0xC0($s0)
/* 74888 8007D558 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7488C 8007D55C 8FB10014 */  lw         $s1, 0x14($sp)
/* 74890 8007D560 8FB00010 */  lw         $s0, 0x10($sp)
/* 74894 8007D564 03E00008 */  jr         $ra
/* 74898 8007D568 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007D56C
/* 7489C 8007D56C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 748A0 8007D570 AFB00010 */  sw         $s0, 0x10($sp)
/* 748A4 8007D574 00808021 */  addu       $s0, $a0, $zero
/* 748A8 8007D578 AFB10014 */  sw         $s1, 0x14($sp)
/* 748AC 8007D57C 00A08821 */  addu       $s1, $a1, $zero
/* 748B0 8007D580 AFBF001C */  sw         $ra, 0x1C($sp)
/* 748B4 8007D584 AFB20018 */  sw         $s2, 0x18($sp)
/* 748B8 8007D588 8E020098 */  lw         $v0, 0x98($s0)
/* 748BC 8007D58C 00C09021 */  addu       $s2, $a2, $zero
/* 748C0 8007D590 84440028 */  lh         $a0, 0x28($v0)
/* 748C4 8007D594 8C42002C */  lw         $v0, 0x2C($v0)
/* 748C8 8007D598 0040F809 */  jalr       $v0
/* 748CC 8007D59C 02042021 */   addu      $a0, $s0, $a0
/* 748D0 8007D5A0 24020001 */  addiu      $v0, $zero, 0x1
/* 748D4 8007D5A4 00401821 */  addu       $v1, $v0, $zero
/* 748D8 8007D5A8 AE1100E4 */  sw         $s1, 0xE4($s0)
/* 748DC 8007D5AC AE120088 */  sw         $s2, 0x88($s0)
/* 748E0 8007D5B0 AE030014 */  sw         $v1, 0x14($s0)
/* 748E4 8007D5B4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 748E8 8007D5B8 8FB20018 */  lw         $s2, 0x18($sp)
/* 748EC 8007D5BC 8FB10014 */  lw         $s1, 0x14($sp)
/* 748F0 8007D5C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 748F4 8007D5C4 03E00008 */  jr         $ra
/* 748F8 8007D5C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007D5CC
/* 748FC 8007D5CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74900 8007D5D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 74904 8007D5D4 8C820014 */  lw         $v0, 0x14($a0)
/* 74908 8007D5D8 10400003 */  beqz       $v0, .L8007D5E8
/* 7490C 8007D5DC 24020001 */   addiu     $v0, $zero, 0x1
/* 74910 8007D5E0 0C002C8D */  jal        func_8000B234
/* 74914 8007D5E4 00000000 */   nop
.L8007D5E8:
/* 74918 8007D5E8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7491C 8007D5EC 03E00008 */  jr         $ra
/* 74920 8007D5F0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007D5F4
/* 74924 8007D5F4 00052E00 */  sll        $a1, $a1, 24
/* 74928 8007D5F8 8C8300B4 */  lw         $v1, 0xB4($a0)
/* 7492C 8007D5FC 00052E03 */  sra        $a1, $a1, 24
/* 74930 8007D600 0065102A */  slt        $v0, $v1, $a1
/* 74934 8007D604 54400006 */  bnel       $v0, $zero, .L8007D620
/* 74938 8007D608 00A32823 */   subu      $a1, $a1, $v1
/* 7493C 8007D60C 00031023 */  negu       $v0, $v1
/* 74940 8007D610 00A2102A */  slt        $v0, $a1, $v0
/* 74944 8007D614 14400002 */  bnez       $v0, .L8007D620
/* 74948 8007D618 00A32821 */   addu      $a1, $a1, $v1
/* 7494C 8007D61C 00002821 */  addu       $a1, $zero, $zero
.L8007D620:
/* 74950 8007D620 3C018004 */  lui        $at, %hi(D_80040240)
/* 74954 8007D624 C4200240 */  lwc1       $f0, %lo(D_80040240)($at)
/* 74958 8007D628 C48200B4 */  lwc1       $f2, 0xB4($a0)
/* 7495C 8007D62C 468010A0 */  cvt.s.w    $f2, $f2
/* 74960 8007D630 46020001 */  sub.s      $f0, $f0, $f2
/* 74964 8007D634 3C018004 */  lui        $at, %hi(D_80040244)
/* 74968 8007D638 C4240244 */  lwc1       $f4, %lo(D_80040244)($at)
/* 7496C 8007D63C 44851000 */  mtc1       $a1, $f2
/* 74970 8007D640 468010A0 */  cvt.s.w    $f2, $f2
/* 74974 8007D644 46001003 */  div.s      $f0, $f2, $f0
/* 74978 8007D648 4600203C */  c.lt.s     $f4, $f0
/* 7497C 8007D64C 00000000 */  nop
/* 74980 8007D650 45000003 */  bc1f       .L8007D660
/* 74984 8007D654 00000000 */   nop
/* 74988 8007D658 03E00008 */  jr         $ra
/* 7498C 8007D65C 46002006 */   mov.s     $f0, $f4
.L8007D660:
/* 74990 8007D660 3C018004 */  lui        $at, %hi(D_80040248)
/* 74994 8007D664 C4220248 */  lwc1       $f2, %lo(D_80040248)($at)
/* 74998 8007D668 4602003C */  c.lt.s     $f0, $f2
/* 7499C 8007D66C 00000000 */  nop
/* 749A0 8007D670 45030001 */  bc1tl      .L8007D678
/* 749A4 8007D674 46001006 */   mov.s     $f0, $f2
.L8007D678:
/* 749A8 8007D678 03E00008 */  jr         $ra
/* 749AC 8007D67C 00000000 */   nop

glabel func_8007D680
/* 749B0 8007D680 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 749B4 8007D684 AFB00010 */  sw         $s0, 0x10($sp)
/* 749B8 8007D688 00808021 */  addu       $s0, $a0, $zero
/* 749BC 8007D68C AFBF0014 */  sw         $ra, 0x14($sp)
/* 749C0 8007D690 8E0200A4 */  lw         $v0, 0xA4($s0)
/* 749C4 8007D694 80450002 */  lb         $a1, 0x2($v0)
/* 749C8 8007D698 0C01F57D */  jal        func_8007D5F4
/* 749CC 8007D69C 00000000 */   nop
/* 749D0 8007D6A0 02002021 */  addu       $a0, $s0, $zero
/* 749D4 8007D6A4 44050000 */  mfc1       $a1, $f0
/* 749D8 8007D6A8 8E0600AC */  lw         $a2, 0xAC($s0)
/* 749DC 8007D6AC 0C002D61 */  jal        func_8000B584
/* 749E0 8007D6B0 3C074000 */   lui       $a3, (0x40000000 >> 16)
/* 749E4 8007D6B4 8E0200A4 */  lw         $v0, 0xA4($s0)
/* 749E8 8007D6B8 80450003 */  lb         $a1, 0x3($v0)
/* 749EC 8007D6BC 0C01F57D */  jal        func_8007D5F4
/* 749F0 8007D6C0 02002021 */   addu      $a0, $s0, $zero
/* 749F4 8007D6C4 02002021 */  addu       $a0, $s0, $zero
/* 749F8 8007D6C8 3C074000 */  lui        $a3, (0x40000002 >> 16)
/* 749FC 8007D6CC 44050000 */  mfc1       $a1, $f0
/* 74A00 8007D6D0 8C8600B0 */  lw         $a2, 0xB0($a0)
/* 74A04 8007D6D4 0C002D61 */  jal        func_8000B584
/* 74A08 8007D6D8 34E70002 */   ori       $a3, $a3, (0x40000002 & 0xFFFF)
/* 74A0C 8007D6DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74A10 8007D6E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 74A14 8007D6E4 03E00008 */  jr         $ra
/* 74A18 8007D6E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007D6EC
/* 74A1C 8007D6EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 74A20 8007D6F0 AFB20018 */  sw         $s2, 0x18($sp)
/* 74A24 8007D6F4 00809021 */  addu       $s2, $a0, $zero
/* 74A28 8007D6F8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 74A2C 8007D6FC AFB3001C */  sw         $s3, 0x1C($sp)
/* 74A30 8007D700 AFB10014 */  sw         $s1, 0x14($sp)
/* 74A34 8007D704 AFB00010 */  sw         $s0, 0x10($sp)
/* 74A38 8007D708 8E42008C */  lw         $v0, 0x8C($s2)
/* 74A3C 8007D70C 1040001F */  beqz       $v0, .L8007D78C
/* 74A40 8007D710 00000000 */   nop
/* 74A44 8007D714 8E4200A4 */  lw         $v0, 0xA4($s2)
/* 74A48 8007D718 94430000 */  lhu        $v1, 0x0($v0)
/* 74A4C 8007D71C 9642009C */  lhu        $v0, 0x9C($s2)
/* 74A50 8007D720 10620015 */  beq        $v1, $v0, .L8007D778
/* 74A54 8007D724 00008821 */   addu      $s1, $zero, $zero
/* 74A58 8007D728 24100001 */  addiu      $s0, $zero, 0x1
/* 74A5C 8007D72C 3C133000 */  lui        $s3, (0x30000000 >> 16)
.L8007D730:
/* 74A60 8007D730 8E4200A4 */  lw         $v0, 0xA4($s2)
/* 74A64 8007D734 94430000 */  lhu        $v1, 0x0($v0)
/* 74A68 8007D738 9642009C */  lhu        $v0, 0x9C($s2)
/* 74A6C 8007D73C 00701824 */  and        $v1, $v1, $s0
/* 74A70 8007D740 00501024 */  and        $v0, $v0, $s0
/* 74A74 8007D744 10620008 */  beq        $v1, $v0, .L8007D768
/* 74A78 8007D748 02332825 */   or        $a1, $s1, $s3
/* 74A7C 8007D74C 0003302B */  sltu       $a2, $zero, $v1
/* 74A80 8007D750 8E420098 */  lw         $v0, 0x98($s2)
/* 74A84 8007D754 24070001 */  addiu      $a3, $zero, 0x1
/* 74A88 8007D758 84440010 */  lh         $a0, 0x10($v0)
/* 74A8C 8007D75C 8C420014 */  lw         $v0, 0x14($v0)
/* 74A90 8007D760 0040F809 */  jalr       $v0
/* 74A94 8007D764 02442021 */   addu      $a0, $s2, $a0
.L8007D768:
/* 74A98 8007D768 26310001 */  addiu      $s1, $s1, 0x1
/* 74A9C 8007D76C 2A220010 */  slti       $v0, $s1, 0x10
/* 74AA0 8007D770 1440FFEF */  bnez       $v0, .L8007D730
/* 74AA4 8007D774 00108040 */   sll       $s0, $s0, 1
.L8007D778:
/* 74AA8 8007D778 8E420020 */  lw         $v0, 0x20($s2)
/* 74AAC 8007D77C 10400003 */  beqz       $v0, .L8007D78C
/* 74AB0 8007D780 00000000 */   nop
/* 74AB4 8007D784 0C01F5A0 */  jal        func_8007D680
/* 74AB8 8007D788 02402021 */   addu      $a0, $s2, $zero
.L8007D78C:
/* 74ABC 8007D78C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 74AC0 8007D790 8FB3001C */  lw         $s3, 0x1C($sp)
/* 74AC4 8007D794 8FB20018 */  lw         $s2, 0x18($sp)
/* 74AC8 8007D798 8FB10014 */  lw         $s1, 0x14($sp)
/* 74ACC 8007D79C 8FB00010 */  lw         $s0, 0x10($sp)
/* 74AD0 8007D7A0 03E00008 */  jr         $ra
/* 74AD4 8007D7A4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007D7A8
/* 74AD8 8007D7A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74ADC 8007D7AC AFB00010 */  sw         $s0, 0x10($sp)
/* 74AE0 8007D7B0 00808021 */  addu       $s0, $a0, $zero
/* 74AE4 8007D7B4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 74AE8 8007D7B8 AFB10014 */  sw         $s1, 0x14($sp)
/* 74AEC 8007D7BC 8E0300A4 */  lw         $v1, 0xA4($s0)
/* 74AF0 8007D7C0 90620004 */  lbu        $v0, 0x4($v1)
/* 74AF4 8007D7C4 1440001B */  bnez       $v0, .L8007D834
/* 74AF8 8007D7C8 00A08821 */   addu      $s1, $a1, $zero
/* 74AFC 8007D7CC 90620003 */  lbu        $v0, 0x3($v1)
/* 74B00 8007D7D0 00021023 */  negu       $v0, $v0
/* 74B04 8007D7D4 0C01F5BB */  jal        func_8007D6EC
/* 74B08 8007D7D8 A0620003 */   sb        $v0, 0x3($v1)
/* 74B0C 8007D7DC 8E0200A4 */  lw         $v0, 0xA4($s0)
/* 74B10 8007D7E0 80450002 */  lb         $a1, 0x2($v0)
/* 74B14 8007D7E4 0C01F57D */  jal        func_8007D5F4
/* 74B18 8007D7E8 02002021 */   addu      $a0, $s0, $zero
/* 74B1C 8007D7EC 8E0200A4 */  lw         $v0, 0xA4($s0)
/* 74B20 8007D7F0 E60000AC */  swc1       $f0, 0xAC($s0)
/* 74B24 8007D7F4 80450003 */  lb         $a1, 0x3($v0)
/* 74B28 8007D7F8 0C01F57D */  jal        func_8007D5F4
/* 74B2C 8007D7FC 02002021 */   addu      $a0, $s0, $zero
/* 74B30 8007D800 02002021 */  addu       $a0, $s0, $zero
/* 74B34 8007D804 8C8200A4 */  lw         $v0, 0xA4($a0)
/* 74B38 8007D808 E48000B0 */  swc1       $f0, 0xB0($a0)
/* 74B3C 8007D80C 88460000 */  lwl        $a2, 0x0($v0)
/* 74B40 8007D810 98460003 */  lwr        $a2, 0x3($v0)
/* 74B44 8007D814 84470004 */  lh         $a3, 0x4($v0)
/* 74B48 8007D818 A886009C */  swl        $a2, 0x9C($a0)
/* 74B4C 8007D81C B886009F */  swr        $a2, 0x9F($a0)
/* 74B50 8007D820 A48700A0 */  sh         $a3, 0xA0($a0)
/* 74B54 8007D824 0C002CDA */  jal        func_8000B368
/* 74B58 8007D828 02202821 */   addu      $a1, $s1, $zero
/* 74B5C 8007D82C 0801F60F */  j          .L8007D83C
/* 74B60 8007D830 00001021 */   addu      $v0, $zero, $zero
.L8007D834:
/* 74B64 8007D834 30420008 */  andi       $v0, $v0, 0x8
/* 74B68 8007D838 0002102B */  sltu       $v0, $zero, $v0
.L8007D83C:
/* 74B6C 8007D83C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 74B70 8007D840 8FB10014 */  lw         $s1, 0x14($sp)
/* 74B74 8007D844 8FB00010 */  lw         $s0, 0x10($sp)
/* 74B78 8007D848 03E00008 */  jr         $ra
/* 74B7C 8007D84C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007D850
/* 74B80 8007D850 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* 74B84 8007D854 00A21824 */  and        $v1, $a1, $v0
/* 74B88 8007D858 3C023000 */  lui        $v0, (0x30000000 >> 16)
/* 74B8C 8007D85C 10620006 */  beq        $v1, $v0, .L8007D878
/* 74B90 8007D860 24020001 */   addiu     $v0, $zero, 0x1
/* 74B94 8007D864 3C024000 */  lui        $v0, (0x40000000 >> 16)
/* 74B98 8007D868 10620007 */  beq        $v1, $v0, .L8007D888
/* 74B9C 8007D86C 00001021 */   addu      $v0, $zero, $zero
/* 74BA0 8007D870 0801F627 */  j          .L8007D89C
/* 74BA4 8007D874 00000000 */   nop
.L8007D878:
/* 74BA8 8007D878 9483009C */  lhu        $v1, 0x9C($a0)
/* 74BAC 8007D87C 00A21004 */  sllv       $v0, $v0, $a1
/* 74BB0 8007D880 03E00008 */  jr         $ra
/* 74BB4 8007D884 00621024 */   and       $v0, $v1, $v0
.L8007D888:
/* 74BB8 8007D888 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* 74BBC 8007D88C 00821021 */  addu       $v0, $a0, $v0
/* 74BC0 8007D890 904200A8 */  lbu        $v0, 0xA8($v0)
/* 74BC4 8007D894 03E00008 */  jr         $ra
/* 74BC8 8007D898 00000000 */   nop
.L8007D89C:
/* 74BCC 8007D89C 03E00008 */  jr         $ra
/* 74BD0 8007D8A0 00000000 */   nop

glabel func_8007D8A4
/* 74BD4 8007D8A4 24060001 */  addiu      $a2, $zero, 0x1
/* 74BD8 8007D8A8 00001821 */  addu       $v1, $zero, $zero
.L8007D8AC:
/* 74BDC 8007D8AC 54A60004 */  bnel       $a1, $a2, .L8007D8C0
/* 74BE0 8007D8B0 24840004 */   addiu     $a0, $a0, 0x4
/* 74BE4 8007D8B4 C48000AC */  lwc1       $f0, 0xAC($a0)
/* 74BE8 8007D8B8 03E00008 */  jr         $ra
/* 74BEC 8007D8BC 00000000 */   nop
.L8007D8C0:
/* 74BF0 8007D8C0 24630001 */  addiu      $v1, $v1, 0x1
/* 74BF4 8007D8C4 28620002 */  slti       $v0, $v1, 0x2
/* 74BF8 8007D8C8 1440FFF8 */  bnez       $v0, .L8007D8AC
/* 74BFC 8007D8CC 00063040 */   sll       $a2, $a2, 1
/* 74C00 8007D8D0 44800000 */  mtc1       $zero, $f0
/* 74C04 8007D8D4 03E00008 */  jr         $ra
/* 74C08 8007D8D8 00000000 */   nop

glabel func_8007D8DC
/* 74C0C 8007D8DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 74C10 8007D8E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 74C14 8007D8E4 00808021 */  addu       $s0, $a0, $zero
/* 74C18 8007D8E8 00C02021 */  addu       $a0, $a2, $zero
/* 74C1C 8007D8EC AFB3001C */  sw         $s3, 0x1C($sp)
/* 74C20 8007D8F0 00E09821 */  addu       $s3, $a3, $zero
/* 74C24 8007D8F4 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* 74C28 8007D8F8 00A23024 */  and        $a2, $a1, $v0
/* 74C2C 8007D8FC AFB20018 */  sw         $s2, 0x18($sp)
/* 74C30 8007D900 00A09021 */  addu       $s2, $a1, $zero
/* 74C34 8007D904 3245FFFF */  andi       $a1, $s2, 0xFFFF
/* 74C38 8007D908 AFB10014 */  sw         $s1, 0x14($sp)
/* 74C3C 8007D90C 00808821 */  addu       $s1, $a0, $zero
/* 74C40 8007D910 24020001 */  addiu      $v0, $zero, 0x1
/* 74C44 8007D914 00A21804 */  sllv       $v1, $v0, $a1
/* 74C48 8007D918 3C023000 */  lui        $v0, (0x30000000 >> 16)
/* 74C4C 8007D91C 10C20006 */  beq        $a2, $v0, .L8007D938
/* 74C50 8007D920 AFBF0020 */   sw        $ra, 0x20($sp)
/* 74C54 8007D924 3C024000 */  lui        $v0, (0x40000000 >> 16)
/* 74C58 8007D928 10C20012 */  beq        $a2, $v0, .L8007D974
/* 74C5C 8007D92C 02051021 */   addu      $v0, $s0, $a1
/* 74C60 8007D930 0801F663 */  j          .L8007D98C
/* 74C64 8007D934 00000000 */   nop
.L8007D938:
/* 74C68 8007D938 00041600 */  sll        $v0, $a0, 24
/* 74C6C 8007D93C 50400004 */  beql       $v0, $zero, .L8007D950
/* 74C70 8007D940 00031827 */   nor       $v1, $zero, $v1
/* 74C74 8007D944 9602009C */  lhu        $v0, 0x9C($s0)
/* 74C78 8007D948 0801F656 */  j          .L8007D958
/* 74C7C 8007D94C 00431025 */   or        $v0, $v0, $v1
.L8007D950:
/* 74C80 8007D950 9602009C */  lhu        $v0, 0x9C($s0)
/* 74C84 8007D954 00431024 */  and        $v0, $v0, $v1
.L8007D958:
/* 74C88 8007D958 A602009C */  sh         $v0, 0x9C($s0)
/* 74C8C 8007D95C 8E020028 */  lw         $v0, 0x28($s0)
/* 74C90 8007D960 00051840 */  sll        $v1, $a1, 1
/* 74C94 8007D964 00621821 */  addu       $v1, $v1, $v0
/* 74C98 8007D968 94620000 */  lhu        $v0, 0x0($v1)
/* 74C9C 8007D96C 0801F663 */  j          .L8007D98C
/* 74CA0 8007D970 00463025 */   or        $a2, $v0, $a2
.L8007D974:
/* 74CA4 8007D974 A04400A8 */  sb         $a0, 0xA8($v0)
/* 74CA8 8007D978 8E03002C */  lw         $v1, 0x2C($s0)
/* 74CAC 8007D97C 00051040 */  sll        $v0, $a1, 1
/* 74CB0 8007D980 00431021 */  addu       $v0, $v0, $v1
/* 74CB4 8007D984 94420000 */  lhu        $v0, 0x0($v0)
/* 74CB8 8007D988 00463025 */  or         $a2, $v0, $a2
.L8007D98C:
/* 74CBC 8007D98C 12600013 */  beqz       $s3, .L8007D9DC
/* 74CC0 8007D990 02002021 */   addu      $a0, $s0, $zero
/* 74CC4 8007D994 8E03008C */  lw         $v1, 0x8C($s0)
/* 74CC8 8007D998 10600010 */  beqz       $v1, .L8007D9DC
/* 74CCC 8007D99C 00111600 */   sll       $v0, $s1, 24
/* 74CD0 8007D9A0 10400007 */  beqz       $v0, .L8007D9C0
/* 74CD4 8007D9A4 02002821 */   addu      $a1, $s0, $zero
/* 74CD8 8007D9A8 8C620000 */  lw         $v0, 0x0($v1)
/* 74CDC 8007D9AC 8E070030 */  lw         $a3, 0x30($s0)
/* 74CE0 8007D9B0 84440008 */  lh         $a0, 0x8($v0)
/* 74CE4 8007D9B4 8C42000C */  lw         $v0, 0xC($v0)
/* 74CE8 8007D9B8 0801F674 */  j          .L8007D9D0
/* 74CEC 8007D9BC 00000000 */   nop
.L8007D9C0:
/* 74CF0 8007D9C0 8C620000 */  lw         $v0, 0x0($v1)
/* 74CF4 8007D9C4 8E070030 */  lw         $a3, 0x30($s0)
/* 74CF8 8007D9C8 84440010 */  lh         $a0, 0x10($v0)
/* 74CFC 8007D9CC 8C420014 */  lw         $v0, 0x14($v0)
.L8007D9D0:
/* 74D00 8007D9D0 0040F809 */  jalr       $v0
/* 74D04 8007D9D4 00642021 */   addu      $a0, $v1, $a0
/* 74D08 8007D9D8 02002021 */  addu       $a0, $s0, $zero
.L8007D9DC:
/* 74D0C 8007D9DC 02402821 */  addu       $a1, $s2, $zero
/* 74D10 8007D9E0 00113600 */  sll        $a2, $s1, 24
/* 74D14 8007D9E4 00063603 */  sra        $a2, $a2, 24
/* 74D18 8007D9E8 0C002E66 */  jal        func_8000B998
/* 74D1C 8007D9EC 02603821 */   addu      $a3, $s3, $zero
/* 74D20 8007D9F0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 74D24 8007D9F4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 74D28 8007D9F8 8FB20018 */  lw         $s2, 0x18($sp)
/* 74D2C 8007D9FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 74D30 8007DA00 8FB00010 */  lw         $s0, 0x10($sp)
/* 74D34 8007DA04 03E00008 */  jr         $ra
/* 74D38 8007DA08 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007DA0C
/* 74D3C 8007DA0C 44860000 */  mtc1       $a2, $f0
/* 74D40 8007DA10 8C820014 */  lw         $v0, 0x14($a0)
/* 74D44 8007DA14 10400009 */  beqz       $v0, .L8007DA3C
/* 74D48 8007DA18 24060001 */   addiu     $a2, $zero, 0x1
/* 74D4C 8007DA1C 00001821 */  addu       $v1, $zero, $zero
.L8007DA20:
/* 74D50 8007DA20 50A60001 */  beql       $a1, $a2, .L8007DA28
/* 74D54 8007DA24 E48000AC */   swc1      $f0, 0xAC($a0)
.L8007DA28:
/* 74D58 8007DA28 24840004 */  addiu      $a0, $a0, 0x4
/* 74D5C 8007DA2C 24630001 */  addiu      $v1, $v1, 0x1
/* 74D60 8007DA30 28620007 */  slti       $v0, $v1, 0x7
/* 74D64 8007DA34 1440FFFA */  bnez       $v0, .L8007DA20
/* 74D68 8007DA38 00063040 */   sll       $a2, $a2, 1
.L8007DA3C:
/* 74D6C 8007DA3C 03E00008 */  jr         $ra
/* 74D70 8007DA40 00000000 */   nop

glabel func_8007DA44
/* 74D74 8007DA44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74D78 8007DA48 AFB00010 */  sw         $s0, 0x10($sp)
/* 74D7C 8007DA4C 00808021 */  addu       $s0, $a0, $zero
/* 74D80 8007DA50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74D84 8007DA54 8E0400E4 */  lw         $a0, 0xE4($s0)
/* 74D88 8007DA58 10800007 */  beqz       $a0, .L8007DA78
/* 74D8C 8007DA5C 24020001 */   addiu     $v0, $zero, 0x1
/* 74D90 8007DA60 8E060088 */  lw         $a2, 0x88($s0)
/* 74D94 8007DA64 0C01F301 */  jal        func_8007CC04
/* 74D98 8007DA68 260500E8 */   addiu     $a1, $s0, 0xE8
/* 74D9C 8007DA6C 02002021 */  addu       $a0, $s0, $zero
/* 74DA0 8007DA70 0C01F6CA */  jal        func_8007DB28
/* 74DA4 8007DA74 00402821 */   addu      $a1, $v0, $zero
.L8007DA78:
/* 74DA8 8007DA78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74DAC 8007DA7C 8FB00010 */  lw         $s0, 0x10($sp)
/* 74DB0 8007DA80 03E00008 */  jr         $ra
/* 74DB4 8007DA84 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007DA88
/* 74DB8 8007DA88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74DBC 8007DA8C AFB00010 */  sw         $s0, 0x10($sp)
/* 74DC0 8007DA90 00808021 */  addu       $s0, $a0, $zero
/* 74DC4 8007DA94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74DC8 8007DA98 8E0200E4 */  lw         $v0, 0xE4($s0)
/* 74DCC 8007DA9C 14400004 */  bnez       $v0, .L8007DAB0
/* 74DD0 8007DAA0 00000000 */   nop
/* 74DD4 8007DAA4 8E0200C0 */  lw         $v0, 0xC0($s0)
/* 74DD8 8007DAA8 14400007 */  bnez       $v0, .L8007DAC8
/* 74DDC 8007DAAC 24020001 */   addiu     $v0, $zero, 0x1
.L8007DAB0:
/* 74DE0 8007DAB0 8E0400E4 */  lw         $a0, 0xE4($s0)
/* 74DE4 8007DAB4 0C01F31A */  jal        func_8007CC68
/* 74DE8 8007DAB8 260500E8 */   addiu     $a1, $s0, 0xE8
/* 74DEC 8007DABC 02002021 */  addu       $a0, $s0, $zero
/* 74DF0 8007DAC0 0C01F6CA */  jal        func_8007DB28
/* 74DF4 8007DAC4 00402821 */   addu      $a1, $v0, $zero
.L8007DAC8:
/* 74DF8 8007DAC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74DFC 8007DACC 8FB00010 */  lw         $s0, 0x10($sp)
/* 74E00 8007DAD0 03E00008 */  jr         $ra
/* 74E04 8007DAD4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007DAD8
/* 74E08 8007DAD8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74E0C 8007DADC AFB00010 */  sw         $s0, 0x10($sp)
/* 74E10 8007DAE0 00808021 */  addu       $s0, $a0, $zero
/* 74E14 8007DAE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74E18 8007DAE8 8E0200E4 */  lw         $v0, 0xE4($s0)
/* 74E1C 8007DAEC 14400004 */  bnez       $v0, .L8007DB00
/* 74E20 8007DAF0 00000000 */   nop
/* 74E24 8007DAF4 8E0200C0 */  lw         $v0, 0xC0($s0)
/* 74E28 8007DAF8 14400007 */  bnez       $v0, .L8007DB18
/* 74E2C 8007DAFC 24020001 */   addiu     $v0, $zero, 0x1
.L8007DB00:
/* 74E30 8007DB00 8E0400E4 */  lw         $a0, 0xE4($s0)
/* 74E34 8007DB04 0C01F332 */  jal        func_8007CCC8
/* 74E38 8007DB08 260500E8 */   addiu     $a1, $s0, 0xE8
/* 74E3C 8007DB0C 02002021 */  addu       $a0, $s0, $zero
/* 74E40 8007DB10 0C01F6CA */  jal        func_8007DB28
/* 74E44 8007DB14 00402821 */   addu      $a1, $v0, $zero
.L8007DB18:
/* 74E48 8007DB18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74E4C 8007DB1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 74E50 8007DB20 03E00008 */  jr         $ra
/* 74E54 8007DB24 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007DB28
/* 74E58 8007DB28 24030001 */  addiu      $v1, $zero, 0x1
/* 74E5C 8007DB2C 10A3000D */  beq        $a1, $v1, .L8007DB64
/* 74E60 8007DB30 28A20002 */   slti      $v0, $a1, 0x2
/* 74E64 8007DB34 10400005 */  beqz       $v0, .L8007DB4C
/* 74E68 8007DB38 24020004 */   addiu     $v0, $zero, 0x4
/* 74E6C 8007DB3C 50A00007 */  beql       $a1, $zero, .L8007DB5C
/* 74E70 8007DB40 AC8300C0 */   sw        $v1, 0xC0($a0)
/* 74E74 8007DB44 0801F6DE */  j          .L8007DB78
/* 74E78 8007DB48 AC8000C0 */   sw        $zero, 0xC0($a0)
.L8007DB4C:
/* 74E7C 8007DB4C 10A20008 */  beq        $a1, $v0, .L8007DB70
/* 74E80 8007DB50 AC8000C0 */   sw        $zero, 0xC0($a0)
/* 74E84 8007DB54 0801F6DE */  j          .L8007DB78
/* 74E88 8007DB58 00000000 */   nop
.L8007DB5C:
/* 74E8C 8007DB5C 03E00008 */  jr         $ra
/* 74E90 8007DB60 00001021 */   addu      $v0, $zero, $zero
.L8007DB64:
/* 74E94 8007DB64 AC8000C0 */  sw         $zero, 0xC0($a0)
/* 74E98 8007DB68 03E00008 */  jr         $ra
/* 74E9C 8007DB6C 24020001 */   addiu     $v0, $zero, 0x1
.L8007DB70:
/* 74EA0 8007DB70 03E00008 */  jr         $ra
/* 74EA4 8007DB74 24020003 */   addiu     $v0, $zero, 0x3
.L8007DB78:
/* 74EA8 8007DB78 03E00008 */  jr         $ra
/* 74EAC 8007DB7C 24020002 */   addiu     $v0, $zero, 0x2

glabel func_8007DB80
/* 74EB0 8007DB80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74EB4 8007DB84 AFB10014 */  sw         $s1, 0x14($sp)
/* 74EB8 8007DB88 00808821 */  addu       $s1, $a0, $zero
/* 74EBC 8007DB8C AFBF0018 */  sw         $ra, 0x18($sp)
/* 74EC0 8007DB90 AFB00010 */  sw         $s0, 0x10($sp)
/* 74EC4 8007DB94 8E2200E4 */  lw         $v0, 0xE4($s1)
/* 74EC8 8007DB98 14400004 */  bnez       $v0, .L8007DBAC
/* 74ECC 8007DB9C 263000E8 */   addiu     $s0, $s1, 0xE8
/* 74ED0 8007DBA0 8E2200C0 */  lw         $v0, 0xC0($s1)
/* 74ED4 8007DBA4 1440000B */  bnez       $v0, .L8007DBD4
/* 74ED8 8007DBA8 24020001 */   addiu     $v0, $zero, 0x1
.L8007DBAC:
/* 74EDC 8007DBAC 8E2400E4 */  lw         $a0, 0xE4($s1)
/* 74EE0 8007DBB0 8E260088 */  lw         $a2, 0x88($s1)
/* 74EE4 8007DBB4 0C01F301 */  jal        func_8007CC04
/* 74EE8 8007DBB8 02002821 */   addu      $a1, $s0, $zero
/* 74EEC 8007DBBC 8E2400E4 */  lw         $a0, 0xE4($s1)
/* 74EF0 8007DBC0 0C01F34A */  jal        func_8007CD28
/* 74EF4 8007DBC4 02002821 */   addu      $a1, $s0, $zero
/* 74EF8 8007DBC8 02202021 */  addu       $a0, $s1, $zero
/* 74EFC 8007DBCC 0C01F6CA */  jal        func_8007DB28
/* 74F00 8007DBD0 00402821 */   addu      $a1, $v0, $zero
.L8007DBD4:
/* 74F04 8007DBD4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 74F08 8007DBD8 8FB10014 */  lw         $s1, 0x14($sp)
/* 74F0C 8007DBDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 74F10 8007DBE0 03E00008 */  jr         $ra
/* 74F14 8007DBE4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007DBE8
/* 74F18 8007DBE8 8C8200C0 */  lw         $v0, 0xC0($a0)
/* 74F1C 8007DBEC 03E00008 */  jr         $ra
/* 74F20 8007DBF0 00000000 */   nop

glabel func_8007DBF4
/* 74F24 8007DBF4 03E00008 */  jr         $ra
/* 74F28 8007DBF8 248200E8 */   addiu     $v0, $a0, 0xE8

glabel func_8007DBFC
/* 74F2C 8007DBFC 03E00008 */  jr         $ra
/* 74F30 8007DC00 AC8500A4 */   sw        $a1, 0xA4($a0)

glabel func_8007DC04
/* 74F34 8007DC04 8C8200BC */  lw         $v0, 0xBC($a0)
/* 74F38 8007DC08 03E00008 */  jr         $ra
/* 74F3C 8007DC0C 00000000 */   nop

glabel func_8007DC10
/* 74F40 8007DC10 8C8200B8 */  lw         $v0, 0xB8($a0)
/* 74F44 8007DC14 03E00008 */  jr         $ra
/* 74F48 8007DC18 00000000 */   nop

glabel func_8007DC1C
/* 74F4C 8007DC1C AC8000BC */  sw         $zero, 0xBC($a0)
/* 74F50 8007DC20 03E00008 */  jr         $ra
/* 74F54 8007DC24 24020001 */   addiu     $v0, $zero, 0x1

glabel func_8007DC28
/* 74F58 8007DC28 24020001 */  addiu      $v0, $zero, 0x1
/* 74F5C 8007DC2C 03E00008 */  jr         $ra
/* 74F60 8007DC30 AC8200BC */   sw        $v0, 0xBC($a0)

glabel func_8007DC34
/* 74F64 8007DC34 AC8000B8 */  sw         $zero, 0xB8($a0)
/* 74F68 8007DC38 03E00008 */  jr         $ra
/* 74F6C 8007DC3C 24020001 */   addiu     $v0, $zero, 0x1

glabel func_8007DC40
/* 74F70 8007DC40 24020001 */  addiu      $v0, $zero, 0x1
/* 74F74 8007DC44 03E00008 */  jr         $ra
/* 74F78 8007DC48 AC8200B8 */   sw        $v0, 0xB8($a0)

glabel func_8007DC4C
/* 74F7C 8007DC4C 00052880 */  sll        $a1, $a1, 2
/* 74F80 8007DC50 00852021 */  addu       $a0, $a0, $a1
/* 74F84 8007DC54 C48000AC */  lwc1       $f0, 0xAC($a0)
/* 74F88 8007DC58 03E00008 */  jr         $ra
/* 74F8C 8007DC5C 00000000 */   nop

glabel func_8007DC60
/* 74F90 8007DC60 03E00008 */  jr         $ra
/* 74F94 8007DC64 AC8500B4 */   sw        $a1, 0xB4($a0)

glabel func_8007DC68
/* 74F98 8007DC68 03E00008 */  jr         $ra
/* 74F9C 8007DC6C 24020002 */   addiu     $v0, $zero, 0x2

glabel func_8007DC70
/* 74FA0 8007DC70 03E00008 */  jr         $ra
/* 74FA4 8007DC74 24020010 */   addiu     $v0, $zero, 0x10
