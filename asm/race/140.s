.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DD280
/* 93640 800DD280 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93644 800DD284 AFB00010 */  sw         $s0, 0x10($sp)
/* 93648 800DD288 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9364C 800DD28C 0C03592C */  jal        func_race_800D64B0
/* 93650 800DD290 00808021 */   addu      $s0, $a0, $zero
/* 93654 800DD294 02002021 */  addu       $a0, $s0, $zero
/* 93658 800DD298 3C02800D */  lui        $v0, %hi(D_race_800CB230)
/* 9365C 800DD29C 2442B230 */  addiu      $v0, $v0, %lo(D_race_800CB230)
/* 93660 800DD2A0 0C0374C2 */  jal        func_race_800DD308
/* 93664 800DD2A4 AE02001C */   sw        $v0, 0x1C($s0)
/* 93668 800DD2A8 02001021 */  addu       $v0, $s0, $zero
/* 9366C 800DD2AC A0400018 */  sb         $zero, 0x18($v0)
/* 93670 800DD2B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 93674 800DD2B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 93678 800DD2B8 03E00008 */  jr         $ra
/* 9367C 800DD2BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DD2C0
/* 93680 800DD2C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 93684 800DD2C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 93688 800DD2C8 00808021 */  addu       $s0, $a0, $zero
/* 9368C 800DD2CC AFB10014 */  sw         $s1, 0x14($sp)
/* 93690 800DD2D0 00A08821 */  addu       $s1, $a1, $zero
/* 93694 800DD2D4 3C02800D */  lui        $v0, %hi(D_race_800CB230)
/* 93698 800DD2D8 2442B230 */  addiu      $v0, $v0, %lo(D_race_800CB230)
/* 9369C 800DD2DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 936A0 800DD2E0 0C0374F1 */  jal        func_race_800DD3C4
/* 936A4 800DD2E4 AE02001C */   sw        $v0, 0x1C($s0)
/* 936A8 800DD2E8 02002021 */  addu       $a0, $s0, $zero
/* 936AC 800DD2EC 0C03593D */  jal        func_race_800D64F4
/* 936B0 800DD2F0 02202821 */   addu      $a1, $s1, $zero
/* 936B4 800DD2F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 936B8 800DD2F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 936BC 800DD2FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 936C0 800DD300 03E00008 */  jr         $ra
/* 936C4 800DD304 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DD308
/* 936C8 800DD308 AC800020 */  sw         $zero, 0x20($a0)
/* 936CC 800DD30C AC800024 */  sw         $zero, 0x24($a0)
/* 936D0 800DD310 03E00008 */  jr         $ra
/* 936D4 800DD314 AC800028 */   sw        $zero, 0x28($a0)

glabel func_race_800DD318
/* 936D8 800DD318 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 936DC 800DD31C AFB00010 */  sw         $s0, 0x10($sp)
/* 936E0 800DD320 00808021 */  addu       $s0, $a0, $zero
/* 936E4 800DD324 AFBF0018 */  sw         $ra, 0x18($sp)
/* 936E8 800DD328 AFB10014 */  sw         $s1, 0x14($sp)
/* 936EC 800DD32C 8E020014 */  lw         $v0, 0x14($s0)
/* 936F0 800DD330 10400003 */  beqz       $v0, .Lrace_800DD340
/* 936F4 800DD334 00A08821 */   addu      $s1, $a1, $zero
/* 936F8 800DD338 0C0374F1 */  jal        func_race_800DD3C4
/* 936FC 800DD33C 00000000 */   nop
.Lrace_800DD340:
/* 93700 800DD340 00002821 */  addu       $a1, $zero, $zero
/* 93704 800DD344 02202021 */  addu       $a0, $s1, $zero
/* 93708 800DD348 8E220000 */  lw         $v0, 0x0($s1)
/* 9370C 800DD34C 02001821 */  addu       $v1, $s0, $zero
/* 93710 800DD350 AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800DD354:
/* 93714 800DD354 8C820004 */  lw         $v0, 0x4($a0)
/* 93718 800DD358 24840004 */  addiu      $a0, $a0, 0x4
/* 9371C 800DD35C 24A50001 */  addiu      $a1, $a1, 0x1
/* 93720 800DD360 AC620004 */  sw         $v0, 0x4($v1)
/* 93724 800DD364 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 93728 800DD368 1440FFFA */  bnez       $v0, .Lrace_800DD354
/* 9372C 800DD36C 24630004 */   addiu     $v1, $v1, 0x4
/* 93730 800DD370 8E220010 */  lw         $v0, 0x10($s1)
/* 93734 800DD374 AE020000 */  sw         $v0, 0x0($s0)
/* 93738 800DD378 8E220014 */  lw         $v0, 0x14($s1)
/* 9373C 800DD37C AE020020 */  sw         $v0, 0x20($s0)
/* 93740 800DD380 8E220018 */  lw         $v0, 0x18($s1)
/* 93744 800DD384 AE020024 */  sw         $v0, 0x24($s0)
/* 93748 800DD388 8E22001C */  lw         $v0, 0x1C($s1)
/* 9374C 800DD38C AE020028 */  sw         $v0, 0x28($s0)
/* 93750 800DD390 8E220020 */  lw         $v0, 0x20($s1)
/* 93754 800DD394 10400005 */  beqz       $v0, .Lrace_800DD3AC
/* 93758 800DD398 24020001 */   addiu     $v0, $zero, 0x1
/* 9375C 800DD39C 92020018 */  lbu        $v0, 0x18($s0)
/* 93760 800DD3A0 34420004 */  ori        $v0, $v0, 0x4
/* 93764 800DD3A4 A2020018 */  sb         $v0, 0x18($s0)
/* 93768 800DD3A8 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800DD3AC:
/* 9376C 800DD3AC AE020014 */  sw         $v0, 0x14($s0)
/* 93770 800DD3B0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 93774 800DD3B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 93778 800DD3B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 9377C 800DD3BC 03E00008 */  jr         $ra
/* 93780 800DD3C0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DD3C4
/* 93784 800DD3C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93788 800DD3C8 AFB00010 */  sw         $s0, 0x10($sp)
/* 9378C 800DD3CC 00808021 */  addu       $s0, $a0, $zero
/* 93790 800DD3D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 93794 800DD3D4 8E02001C */  lw         $v0, 0x1C($s0)
/* 93798 800DD3D8 84440010 */  lh         $a0, 0x10($v0)
/* 9379C 800DD3DC 8C420014 */  lw         $v0, 0x14($v0)
/* 937A0 800DD3E0 0040F809 */  jalr       $v0
/* 937A4 800DD3E4 02042021 */   addu      $a0, $s0, $a0
/* 937A8 800DD3E8 0C0374C2 */  jal        func_race_800DD308
/* 937AC 800DD3EC 02002021 */   addu      $a0, $s0, $zero
/* 937B0 800DD3F0 0C035951 */  jal        func_race_800D6544
/* 937B4 800DD3F4 02002021 */   addu      $a0, $s0, $zero
/* 937B8 800DD3F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 937BC 800DD3FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 937C0 800DD400 03E00008 */  jr         $ra
/* 937C4 800DD404 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DD408
/* 937C8 800DD408 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 937CC 800DD40C AFB00010 */  sw         $s0, 0x10($sp)
/* 937D0 800DD410 00808021 */  addu       $s0, $a0, $zero
/* 937D4 800DD414 24050001 */  addiu      $a1, $zero, 0x1
/* 937D8 800DD418 AFBF0014 */  sw         $ra, 0x14($sp)
/* 937DC 800DD41C 0C03596C */  jal        func_race_800D65B0
/* 937E0 800DD420 00A03021 */   addu      $a2, $a1, $zero
/* 937E4 800DD424 24020003 */  addiu      $v0, $zero, 0x3
/* 937E8 800DD428 AE020014 */  sw         $v0, 0x14($s0)
/* 937EC 800DD42C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 937F0 800DD430 8FB00010 */  lw         $s0, 0x10($sp)
/* 937F4 800DD434 03E00008 */  jr         $ra
/* 937F8 800DD438 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DD43C
/* 937FC 800DD43C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93800 800DD440 AFB00010 */  sw         $s0, 0x10($sp)
/* 93804 800DD444 00808021 */  addu       $s0, $a0, $zero
/* 93808 800DD448 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9380C 800DD44C 8E050014 */  lw         $a1, 0x14($s0)
/* 93810 800DD450 0C03596C */  jal        func_race_800D65B0
/* 93814 800DD454 24060003 */   addiu     $a2, $zero, 0x3
/* 93818 800DD458 24020001 */  addiu      $v0, $zero, 0x1
/* 9381C 800DD45C AE020014 */  sw         $v0, 0x14($s0)
/* 93820 800DD460 8FBF0014 */  lw         $ra, 0x14($sp)
/* 93824 800DD464 8FB00010 */  lw         $s0, 0x10($sp)
/* 93828 800DD468 03E00008 */  jr         $ra
/* 9382C 800DD46C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DD470
/* 93830 800DD470 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 93834 800DD474 AFB40080 */  sw         $s4, 0x80($sp)
/* 93838 800DD478 0080A021 */  addu       $s4, $a0, $zero
/* 9383C 800DD47C AFBF0084 */  sw         $ra, 0x84($sp)
/* 93840 800DD480 AFB3007C */  sw         $s3, 0x7C($sp)
/* 93844 800DD484 AFB20078 */  sw         $s2, 0x78($sp)
/* 93848 800DD488 AFB10074 */  sw         $s1, 0x74($sp)
/* 9384C 800DD48C AFB00070 */  sw         $s0, 0x70($sp)
/* 93850 800DD490 8E830014 */  lw         $v1, 0x14($s4)
/* 93854 800DD494 24020001 */  addiu      $v0, $zero, 0x1
/* 93858 800DD498 10620066 */  beq        $v1, $v0, .Lrace_800DD634
/* 9385C 800DD49C 00000000 */   nop
/* 93860 800DD4A0 0C03595D */  jal        func_race_800D6574
/* 93864 800DD4A4 00000000 */   nop
/* 93868 800DD4A8 8E820020 */  lw         $v0, 0x20($s4)
/* 9386C 800DD4AC 10400061 */  beqz       $v0, .Lrace_800DD634
/* 93870 800DD4B0 00002821 */   addu      $a1, $zero, $zero
/* 93874 800DD4B4 8E830024 */  lw         $v1, 0x24($s4)
/* 93878 800DD4B8 8C620024 */  lw         $v0, 0x24($v1)
/* 9387C 800DD4BC 844400C0 */  lh         $a0, 0xC0($v0)
/* 93880 800DD4C0 8C4200C4 */  lw         $v0, 0xC4($v0)
/* 93884 800DD4C4 0040F809 */  jalr       $v0
/* 93888 800DD4C8 00642021 */   addu      $a0, $v1, $a0
/* 9388C 800DD4CC 8E830024 */  lw         $v1, 0x24($s4)
/* 93890 800DD4D0 8C620024 */  lw         $v0, 0x24($v1)
/* 93894 800DD4D4 00002821 */  addu       $a1, $zero, $zero
/* 93898 800DD4D8 844400B8 */  lh         $a0, 0xB8($v0)
/* 9389C 800DD4DC 8C4200BC */  lw         $v0, 0xBC($v0)
/* 938A0 800DD4E0 0040F809 */  jalr       $v0
/* 938A4 800DD4E4 00642021 */   addu      $a0, $v1, $a0
/* 938A8 800DD4E8 8C430008 */  lw         $v1, 0x8($v0)
/* 938AC 800DD4EC 8E850028 */  lw         $a1, 0x28($s4)
/* 938B0 800DD4F0 84640038 */  lh         $a0, 0x38($v1)
/* 938B4 800DD4F4 8C63003C */  lw         $v1, 0x3C($v1)
/* 938B8 800DD4F8 0060F809 */  jalr       $v1
/* 938BC 800DD4FC 00442021 */   addu      $a0, $v0, $a0
/* 938C0 800DD500 00408021 */  addu       $s0, $v0, $zero
/* 938C4 800DD504 27B10050 */  addiu      $s1, $sp, 0x50
/* 938C8 800DD508 8E02000C */  lw         $v0, 0xC($s0)
/* 938CC 800DD50C 02202821 */  addu       $a1, $s1, $zero
/* 938D0 800DD510 84440088 */  lh         $a0, 0x88($v0)
/* 938D4 800DD514 8C42008C */  lw         $v0, 0x8C($v0)
/* 938D8 800DD518 0040F809 */  jalr       $v0
/* 938DC 800DD51C 02042021 */   addu      $a0, $s0, $a0
/* 938E0 800DD520 8E02000C */  lw         $v0, 0xC($s0)
/* 938E4 800DD524 27A50010 */  addiu      $a1, $sp, 0x10
/* 938E8 800DD528 84440068 */  lh         $a0, 0x68($v0)
/* 938EC 800DD52C 8C42006C */  lw         $v0, 0x6C($v0)
/* 938F0 800DD530 0040F809 */  jalr       $v0
/* 938F4 800DD534 02042021 */   addu      $a0, $s0, $a0
/* 938F8 800DD538 27B30020 */  addiu      $s3, $sp, 0x20
/* 938FC 800DD53C 8E02000C */  lw         $v0, 0xC($s0)
/* 93900 800DD540 02602821 */  addu       $a1, $s3, $zero
/* 93904 800DD544 84440078 */  lh         $a0, 0x78($v0)
/* 93908 800DD548 8C42007C */  lw         $v0, 0x7C($v0)
/* 9390C 800DD54C 0040F809 */  jalr       $v0
/* 93910 800DD550 02042021 */   addu      $a0, $s0, $a0
/* 93914 800DD554 8E830024 */  lw         $v1, 0x24($s4)
/* 93918 800DD558 8C620078 */  lw         $v0, 0x78($v1)
/* 9391C 800DD55C C4600058 */  lwc1       $f0, 0x58($v1)
/* 93920 800DD560 C4420034 */  lwc1       $f2, 0x34($v0)
/* 93924 800DD564 46020002 */  mul.s      $f0, $f0, $f2
/* 93928 800DD568 C7A60050 */  lwc1       $f6, 0x50($sp)
/* 9392C 800DD56C 46003182 */  mul.s      $f6, $f6, $f0
/* 93930 800DD570 C7A40054 */  lwc1       $f4, 0x54($sp)
/* 93934 800DD574 46002102 */  mul.s      $f4, $f4, $f0
/* 93938 800DD578 C7A20058 */  lwc1       $f2, 0x58($sp)
/* 9393C 800DD57C 46001082 */  mul.s      $f2, $f2, $f0
/* 93940 800DD580 02202821 */  addu       $a1, $s1, $zero
/* 93944 800DD584 E7A60050 */  swc1       $f6, 0x50($sp)
/* 93948 800DD588 E7A40054 */  swc1       $f4, 0x54($sp)
/* 9394C 800DD58C E7A20058 */  swc1       $f2, 0x58($sp)
/* 93950 800DD590 8E830024 */  lw         $v1, 0x24($s4)
/* 93954 800DD594 27B20060 */  addiu      $s2, $sp, 0x60
/* 93958 800DD598 8C620024 */  lw         $v0, 0x24($v1)
/* 9395C 800DD59C 02403021 */  addu       $a2, $s2, $zero
/* 93960 800DD5A0 84440060 */  lh         $a0, 0x60($v0)
/* 93964 800DD5A4 8C420064 */  lw         $v0, 0x64($v0)
/* 93968 800DD5A8 0040F809 */  jalr       $v0
/* 9396C 800DD5AC 00642021 */   addu      $a0, $v1, $a0
/* 93970 800DD5B0 27A50010 */  addiu      $a1, $sp, 0x10
/* 93974 800DD5B4 8E830024 */  lw         $v1, 0x24($s4)
/* 93978 800DD5B8 27B10030 */  addiu      $s1, $sp, 0x30
/* 9397C 800DD5BC 8C620024 */  lw         $v0, 0x24($v1)
/* 93980 800DD5C0 02203021 */  addu       $a2, $s1, $zero
/* 93984 800DD5C4 84440070 */  lh         $a0, 0x70($v0)
/* 93988 800DD5C8 8C420074 */  lw         $v0, 0x74($v0)
/* 9398C 800DD5CC 0040F809 */  jalr       $v0
/* 93990 800DD5D0 00642021 */   addu      $a0, $v1, $a0
/* 93994 800DD5D4 02602821 */  addu       $a1, $s3, $zero
/* 93998 800DD5D8 8E830024 */  lw         $v1, 0x24($s4)
/* 9399C 800DD5DC 27B00040 */  addiu      $s0, $sp, 0x40
/* 939A0 800DD5E0 8C620024 */  lw         $v0, 0x24($v1)
/* 939A4 800DD5E4 02003021 */  addu       $a2, $s0, $zero
/* 939A8 800DD5E8 84440070 */  lh         $a0, 0x70($v0)
/* 939AC 800DD5EC 8C420074 */  lw         $v0, 0x74($v0)
/* 939B0 800DD5F0 0040F809 */  jalr       $v0
/* 939B4 800DD5F4 00642021 */   addu      $a0, $v1, $a0
/* 939B8 800DD5F8 8E830020 */  lw         $v1, 0x20($s4)
/* 939BC 800DD5FC 8C620024 */  lw         $v0, 0x24($v1)
/* 939C0 800DD600 02402821 */  addu       $a1, $s2, $zero
/* 939C4 800DD604 84440018 */  lh         $a0, 0x18($v0)
/* 939C8 800DD608 8C42001C */  lw         $v0, 0x1C($v0)
/* 939CC 800DD60C 0040F809 */  jalr       $v0
/* 939D0 800DD610 00642021 */   addu      $a0, $v1, $a0
/* 939D4 800DD614 8E830020 */  lw         $v1, 0x20($s4)
/* 939D8 800DD618 02202821 */  addu       $a1, $s1, $zero
/* 939DC 800DD61C 8C620024 */  lw         $v0, 0x24($v1)
/* 939E0 800DD620 02003021 */  addu       $a2, $s0, $zero
/* 939E4 800DD624 84440080 */  lh         $a0, 0x80($v0)
/* 939E8 800DD628 8C420084 */  lw         $v0, 0x84($v0)
/* 939EC 800DD62C 0040F809 */  jalr       $v0
/* 939F0 800DD630 00642021 */   addu      $a0, $v1, $a0
.Lrace_800DD634:
/* 939F4 800DD634 8FBF0084 */  lw         $ra, 0x84($sp)
/* 939F8 800DD638 8FB40080 */  lw         $s4, 0x80($sp)
/* 939FC 800DD63C 8FB3007C */  lw         $s3, 0x7C($sp)
/* 93A00 800DD640 8FB20078 */  lw         $s2, 0x78($sp)
/* 93A04 800DD644 8FB10074 */  lw         $s1, 0x74($sp)
/* 93A08 800DD648 8FB00070 */  lw         $s0, 0x70($sp)
/* 93A0C 800DD64C 03E00008 */  jr         $ra
/* 93A10 800DD650 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_race_800DD654
/* 93A14 800DD654 8C820028 */  lw         $v0, 0x28($a0)
/* 93A18 800DD658 03E00008 */  jr         $ra
/* 93A1C 800DD65C 00000000 */   nop

glabel func_race_800DD660
/* 93A20 800DD660 8C820024 */  lw         $v0, 0x24($a0)
/* 93A24 800DD664 03E00008 */  jr         $ra
/* 93A28 800DD668 00000000 */   nop

glabel func_race_800DD66C
/* 93A2C 800DD66C 8C820020 */  lw         $v0, 0x20($a0)
/* 93A30 800DD670 03E00008 */  jr         $ra
/* 93A34 800DD674 00000000 */   nop

glabel func_race_800DD678
/* 93A38 800DD678 03E00008 */  jr         $ra
/* 93A3C 800DD67C 24020009 */   addiu     $v0, $zero, 0x9

glabel func_race_800DD680
/* 93A40 800DD680 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93A44 800DD684 AFB00010 */  sw         $s0, 0x10($sp)
/* 93A48 800DD688 AFBF0014 */  sw         $ra, 0x14($sp)
/* 93A4C 800DD68C 0C037CE0 */  jal        func_race_800DF380
/* 93A50 800DD690 00808021 */   addu      $s0, $a0, $zero
/* 93A54 800DD694 02001021 */  addu       $v0, $s0, $zero
/* 93A58 800DD698 3C03800D */  lui        $v1, %hi(D_race_800CB270)
/* 93A5C 800DD69C 2463B270 */  addiu      $v1, $v1, %lo(D_race_800CB270)
/* 93A60 800DD6A0 AC430000 */  sw         $v1, 0x0($v0)
/* 93A64 800DD6A4 AC40003C */  sw         $zero, 0x3C($v0)
/* 93A68 800DD6A8 AC400040 */  sw         $zero, 0x40($v0)
/* 93A6C 800DD6AC AC400044 */  sw         $zero, 0x44($v0)
/* 93A70 800DD6B0 AC400048 */  sw         $zero, 0x48($v0)
/* 93A74 800DD6B4 AC40004C */  sw         $zero, 0x4C($v0)
/* 93A78 800DD6B8 AC400050 */  sw         $zero, 0x50($v0)
/* 93A7C 800DD6BC AC400054 */  sw         $zero, 0x54($v0)
/* 93A80 800DD6C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 93A84 800DD6C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 93A88 800DD6C8 03E00008 */  jr         $ra
/* 93A8C 800DD6CC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DD6D0
/* 93A90 800DD6D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 93A94 800DD6D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 93A98 800DD6D8 00808021 */  addu       $s0, $a0, $zero
/* 93A9C 800DD6DC AFB10014 */  sw         $s1, 0x14($sp)
/* 93AA0 800DD6E0 00A08821 */  addu       $s1, $a1, $zero
/* 93AA4 800DD6E4 3C02800D */  lui        $v0, %hi(D_race_800CB270)
/* 93AA8 800DD6E8 2442B270 */  addiu      $v0, $v0, %lo(D_race_800CB270)
/* 93AAC 800DD6EC AFBF0018 */  sw         $ra, 0x18($sp)
/* 93AB0 800DD6F0 0C0375EE */  jal        func_race_800DD7B8
/* 93AB4 800DD6F4 AE020000 */   sw        $v0, 0x0($s0)
/* 93AB8 800DD6F8 02002021 */  addu       $a0, $s0, $zero
/* 93ABC 800DD6FC 0C037CF2 */  jal        func_race_800DF3C8
/* 93AC0 800DD700 02202821 */   addu      $a1, $s1, $zero
/* 93AC4 800DD704 8FBF0018 */  lw         $ra, 0x18($sp)
/* 93AC8 800DD708 8FB10014 */  lw         $s1, 0x14($sp)
/* 93ACC 800DD70C 8FB00010 */  lw         $s0, 0x10($sp)
/* 93AD0 800DD710 03E00008 */  jr         $ra
/* 93AD4 800DD714 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DD718
/* 93AD8 800DD718 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 93ADC 800DD71C AFB00010 */  sw         $s0, 0x10($sp)
/* 93AE0 800DD720 00808021 */  addu       $s0, $a0, $zero
/* 93AE4 800DD724 AFB10014 */  sw         $s1, 0x14($sp)
/* 93AE8 800DD728 AFBF0018 */  sw         $ra, 0x18($sp)
/* 93AEC 800DD72C 0C037D06 */  jal        func_race_800DF418
/* 93AF0 800DD730 00A08821 */   addu      $s1, $a1, $zero
/* 93AF4 800DD734 8E22001C */  lw         $v0, 0x1C($s1)
/* 93AF8 800DD738 AE020044 */  sw         $v0, 0x44($s0)
/* 93AFC 800DD73C 8E220020 */  lw         $v0, 0x20($s1)
/* 93B00 800DD740 AE020048 */  sw         $v0, 0x48($s0)
/* 93B04 800DD744 8E220024 */  lw         $v0, 0x24($s1)
/* 93B08 800DD748 AE02004C */  sw         $v0, 0x4C($s0)
/* 93B0C 800DD74C 8E220038 */  lw         $v0, 0x38($s1)
/* 93B10 800DD750 AE020050 */  sw         $v0, 0x50($s0)
/* 93B14 800DD754 8E220028 */  lw         $v0, 0x28($s1)
/* 93B18 800DD758 AE020054 */  sw         $v0, 0x54($s0)
/* 93B1C 800DD75C 8E22002C */  lw         $v0, 0x2C($s1)
/* 93B20 800DD760 10400004 */  beqz       $v0, .Lrace_800DD774
/* 93B24 800DD764 00000000 */   nop
/* 93B28 800DD768 8E020038 */  lw         $v0, 0x38($s0)
/* 93B2C 800DD76C 34421000 */  ori        $v0, $v0, 0x1000
/* 93B30 800DD770 AE020038 */  sw         $v0, 0x38($s0)
.Lrace_800DD774:
/* 93B34 800DD774 8E220030 */  lw         $v0, 0x30($s1)
/* 93B38 800DD778 10400004 */  beqz       $v0, .Lrace_800DD78C
/* 93B3C 800DD77C 00000000 */   nop
/* 93B40 800DD780 8E020038 */  lw         $v0, 0x38($s0)
/* 93B44 800DD784 34422000 */  ori        $v0, $v0, 0x2000
/* 93B48 800DD788 AE020038 */  sw         $v0, 0x38($s0)
.Lrace_800DD78C:
/* 93B4C 800DD78C 8E220034 */  lw         $v0, 0x34($s1)
/* 93B50 800DD790 10400004 */  beqz       $v0, .Lrace_800DD7A4
/* 93B54 800DD794 00000000 */   nop
/* 93B58 800DD798 8E020038 */  lw         $v0, 0x38($s0)
/* 93B5C 800DD79C 34424000 */  ori        $v0, $v0, 0x4000
/* 93B60 800DD7A0 AE020038 */  sw         $v0, 0x38($s0)
.Lrace_800DD7A4:
/* 93B64 800DD7A4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 93B68 800DD7A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 93B6C 800DD7AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 93B70 800DD7B0 03E00008 */  jr         $ra
/* 93B74 800DD7B4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DD7B8
/* 93B78 800DD7B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93B7C 800DD7BC AFB00010 */  sw         $s0, 0x10($sp)
/* 93B80 800DD7C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 93B84 800DD7C4 0C037D24 */  jal        func_race_800DF490
/* 93B88 800DD7C8 00808021 */   addu      $s0, $a0, $zero
/* 93B8C 800DD7CC AE00003C */  sw         $zero, 0x3C($s0)
/* 93B90 800DD7D0 AE000040 */  sw         $zero, 0x40($s0)
/* 93B94 800DD7D4 AE000030 */  sw         $zero, 0x30($s0)
/* 93B98 800DD7D8 AE000044 */  sw         $zero, 0x44($s0)
/* 93B9C 800DD7DC AE000048 */  sw         $zero, 0x48($s0)
/* 93BA0 800DD7E0 AE000050 */  sw         $zero, 0x50($s0)
/* 93BA4 800DD7E4 AE000054 */  sw         $zero, 0x54($s0)
/* 93BA8 800DD7E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 93BAC 800DD7EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 93BB0 800DD7F0 03E00008 */  jr         $ra
/* 93BB4 800DD7F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DD7F8
/* 93BB8 800DD7F8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 93BBC 800DD7FC AFB10014 */  sw         $s1, 0x14($sp)
/* 93BC0 800DD800 00808821 */  addu       $s1, $a0, $zero
/* 93BC4 800DD804 AFBF0020 */  sw         $ra, 0x20($sp)
/* 93BC8 800DD808 AFB3001C */  sw         $s3, 0x1C($sp)
/* 93BCC 800DD80C AFB20018 */  sw         $s2, 0x18($sp)
/* 93BD0 800DD810 0C037D2C */  jal        func_race_800DF4B0
/* 93BD4 800DD814 AFB00010 */   sw        $s0, 0x10($sp)
/* 93BD8 800DD818 8E230034 */  lw         $v1, 0x34($s1)
/* 93BDC 800DD81C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 93BE0 800DD820 1062001B */  beq        $v1, $v0, .Lrace_800DD890
/* 93BE4 800DD824 00000000 */   nop
/* 93BE8 800DD828 8E220040 */  lw         $v0, 0x40($s1)
/* 93BEC 800DD82C 10400018 */  beqz       $v0, .Lrace_800DD890
/* 93BF0 800DD830 24100001 */   addiu     $s0, $zero, 0x1
/* 93BF4 800DD834 00009821 */  addu       $s3, $zero, $zero
/* 93BF8 800DD838 02609021 */  addu       $s2, $s3, $zero
.Lrace_800DD83C:
/* 93BFC 800DD83C 2E620006 */  sltiu      $v0, $s3, 0x6
/* 93C00 800DD840 10400013 */  beqz       $v0, .Lrace_800DD890
/* 93C04 800DD844 00000000 */   nop
/* 93C08 800DD848 8E220040 */  lw         $v0, 0x40($s1)
/* 93C0C 800DD84C 00501024 */  and        $v0, $v0, $s0
/* 93C10 800DD850 5040000C */  beql       $v0, $zero, .Lrace_800DD884
/* 93C14 800DD854 00108040 */   sll       $s0, $s0, 1
/* 93C18 800DD858 8E22003C */  lw         $v0, 0x3C($s1)
/* 93C1C 800DD85C 00501024 */  and        $v0, $v0, $s0
/* 93C20 800DD860 54400008 */  bnel       $v0, $zero, .Lrace_800DD884
/* 93C24 800DD864 00108040 */   sll       $s0, $s0, 1
/* 93C28 800DD868 8E220044 */  lw         $v0, 0x44($s1)
/* 93C2C 800DD86C 8E240030 */  lw         $a0, 0x30($s1)
/* 93C30 800DD870 8C460140 */  lw         $a2, 0x140($v0)
/* 93C34 800DD874 8E250034 */  lw         $a1, 0x34($s1)
/* 93C38 800DD878 0C036F43 */  jal        func_race_800DBD0C
/* 93C3C 800DD87C 00D23021 */   addu      $a2, $a2, $s2
/* 93C40 800DD880 00108040 */  sll        $s0, $s0, 1
.Lrace_800DD884:
/* 93C44 800DD884 26520E2C */  addiu      $s2, $s2, 0xE2C
/* 93C48 800DD888 0803760F */  j          .Lrace_800DD83C
/* 93C4C 800DD88C 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_800DD890:
/* 93C50 800DD890 8E22003C */  lw         $v0, 0x3C($s1)
/* 93C54 800DD894 AE20003C */  sw         $zero, 0x3C($s1)
/* 93C58 800DD898 AE220040 */  sw         $v0, 0x40($s1)
/* 93C5C 800DD89C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 93C60 800DD8A0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 93C64 800DD8A4 8FB20018 */  lw         $s2, 0x18($sp)
/* 93C68 800DD8A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 93C6C 800DD8AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 93C70 800DD8B0 03E00008 */  jr         $ra
/* 93C74 800DD8B4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DD8B8
/* 93C78 800DD8B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 93C7C 800DD8BC AFB00010 */  sw         $s0, 0x10($sp)
/* 93C80 800DD8C0 00808021 */  addu       $s0, $a0, $zero
/* 93C84 800DD8C4 AFB20018 */  sw         $s2, 0x18($sp)
/* 93C88 800DD8C8 00A09021 */  addu       $s2, $a1, $zero
/* 93C8C 800DD8CC AFB10014 */  sw         $s1, 0x14($sp)
/* 93C90 800DD8D0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 93C94 800DD8D4 8E430000 */  lw         $v1, 0x0($s2)
/* 93C98 800DD8D8 24020002 */  addiu      $v0, $zero, 0x2
/* 93C9C 800DD8DC 14620009 */  bne        $v1, $v0, .Lrace_800DD904
/* 93CA0 800DD8E0 00008821 */   addu      $s1, $zero, $zero
/* 93CA4 800DD8E4 8E040048 */  lw         $a0, 0x48($s0)
/* 93CA8 800DD8E8 8E450014 */  lw         $a1, 0x14($s2)
/* 93CAC 800DD8EC 0C04B4DD */  jal        func_race_8012D374
/* 93CB0 800DD8F0 00000000 */   nop
/* 93CB4 800DD8F4 10400029 */  beqz       $v0, .Lrace_800DD99C
/* 93CB8 800DD8F8 02002021 */   addu      $a0, $s0, $zero
/* 93CBC 800DD8FC 08037654 */  j          .Lrace_800DD950
/* 93CC0 800DD900 00000000 */   nop
.Lrace_800DD904:
/* 93CC4 800DD904 24020004 */  addiu      $v0, $zero, 0x4
/* 93CC8 800DD908 14620011 */  bne        $v1, $v0, .Lrace_800DD950
/* 93CCC 800DD90C 02002021 */   addu      $a0, $s0, $zero
/* 93CD0 800DD910 8E040038 */  lw         $a0, 0x38($s0)
/* 93CD4 800DD914 8E510014 */  lw         $s1, 0x14($s2)
/* 93CD8 800DD918 30824000 */  andi       $v0, $a0, 0x4000
/* 93CDC 800DD91C 10400005 */  beqz       $v0, .Lrace_800DD934
/* 93CE0 800DD920 30822000 */   andi      $v0, $a0, 0x2000
/* 93CE4 800DD924 8E230CE4 */  lw         $v1, 0xCE4($s1)
/* 93CE8 800DD928 8E020054 */  lw         $v0, 0x54($s0)
/* 93CEC 800DD92C 1462001B */  bne        $v1, $v0, .Lrace_800DD99C
/* 93CF0 800DD930 30822000 */   andi      $v0, $a0, 0x2000
.Lrace_800DD934:
/* 93CF4 800DD934 10400006 */  beqz       $v0, .Lrace_800DD950
/* 93CF8 800DD938 02002021 */   addu      $a0, $s0, $zero
/* 93CFC 800DD93C 8E04004C */  lw         $a0, 0x4C($s0)
/* 93D00 800DD940 8E060050 */  lw         $a2, 0x50($s0)
/* 93D04 800DD944 0C0357A6 */  jal        func_race_800D5E98
/* 93D08 800DD948 02202821 */   addu      $a1, $s1, $zero
/* 93D0C 800DD94C 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DD950:
/* 93D10 800DD950 0C037D49 */  jal        func_race_800DF524
/* 93D14 800DD954 02402821 */   addu      $a1, $s2, $zero
/* 93D18 800DD958 12200010 */  beqz       $s1, .Lrace_800DD99C
/* 93D1C 800DD95C 24040001 */   addiu     $a0, $zero, 0x1
/* 93D20 800DD960 8E220DFC */  lw         $v0, 0xDFC($s1)
/* 93D24 800DD964 8E030040 */  lw         $v1, 0x40($s0)
/* 93D28 800DD968 00442004 */  sllv       $a0, $a0, $v0
/* 93D2C 800DD96C 8E02003C */  lw         $v0, 0x3C($s0)
/* 93D30 800DD970 00641824 */  and        $v1, $v1, $a0
/* 93D34 800DD974 00441025 */  or         $v0, $v0, $a0
/* 93D38 800DD978 14600008 */  bnez       $v1, .Lrace_800DD99C
/* 93D3C 800DD97C AE02003C */   sw        $v0, 0x3C($s0)
/* 93D40 800DD980 8E050034 */  lw         $a1, 0x34($s0)
/* 93D44 800DD984 2402FFFF */  addiu      $v0, $zero, -0x1
/* 93D48 800DD988 10A20004 */  beq        $a1, $v0, .Lrace_800DD99C
/* 93D4C 800DD98C 00000000 */   nop
/* 93D50 800DD990 8E040030 */  lw         $a0, 0x30($s0)
/* 93D54 800DD994 0C036EE4 */  jal        func_race_800DBB90
/* 93D58 800DD998 02203021 */   addu      $a2, $s1, $zero
.Lrace_800DD99C:
/* 93D5C 800DD99C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 93D60 800DD9A0 8FB20018 */  lw         $s2, 0x18($sp)
/* 93D64 800DD9A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 93D68 800DD9A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 93D6C 800DD9AC 03E00008 */  jr         $ra
/* 93D70 800DD9B0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DD9B4
/* 93D74 800DD9B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93D78 800DD9B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 93D7C 800DD9BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 93D80 800DD9C0 0C037D63 */  jal        func_race_800DF58C
/* 93D84 800DD9C4 00808021 */   addu      $s0, $a0, $zero
/* 93D88 800DD9C8 AE00003C */  sw         $zero, 0x3C($s0)
/* 93D8C 800DD9CC AE000040 */  sw         $zero, 0x40($s0)
/* 93D90 800DD9D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 93D94 800DD9D4 8FB00010 */  lw         $s0, 0x10($sp)
/* 93D98 800DD9D8 03E00008 */  jr         $ra
/* 93D9C 800DD9DC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DD9E0
/* 93DA0 800DD9E0 8C820050 */  lw         $v0, 0x50($a0)
/* 93DA4 800DD9E4 03E00008 */  jr         $ra
/* 93DA8 800DD9E8 00000000 */   nop

glabel func_race_800DD9EC
/* 93DAC 800DD9EC 8C820038 */  lw         $v0, 0x38($a0)
/* 93DB0 800DD9F0 03E00008 */  jr         $ra
/* 93DB4 800DD9F4 30422000 */   andi      $v0, $v0, 0x2000

glabel func_race_800DD9F8
/* 93DB8 800DD9F8 8C820038 */  lw         $v0, 0x38($a0)
/* 93DBC 800DD9FC 03E00008 */  jr         $ra
/* 93DC0 800DDA00 30421000 */   andi      $v0, $v0, 0x1000

glabel func_race_800DDA04
/* 93DC4 800DDA04 8C820038 */  lw         $v0, 0x38($a0)
/* 93DC8 800DDA08 03E00008 */  jr         $ra
/* 93DCC 800DDA0C 30424000 */   andi      $v0, $v0, 0x4000

glabel func_race_800DDA10
/* 93DD0 800DDA10 8C820054 */  lw         $v0, 0x54($a0)
/* 93DD4 800DDA14 03E00008 */  jr         $ra
/* 93DD8 800DDA18 00000000 */   nop
