.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8011F2A0
/* 13D390 8011F2A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13D394 8011F2A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 13D398 8011F2A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13D39C 8011F2AC 0C04793C */  jal        func_menu_8011E4F0
/* 13D3A0 8011F2B0 00808021 */   addu      $s0, $a0, $zero
/* 13D3A4 8011F2B4 3C02800D */  lui        $v0, %hi(D_menu_800D0CC0)
/* 13D3A8 8011F2B8 24420CC0 */  addiu      $v0, $v0, %lo(D_menu_800D0CC0)
/* 13D3AC 8011F2BC 26040064 */  addiu      $a0, $s0, 0x64
/* 13D3B0 8011F2C0 0C0016DC */  jal        func_80005B70
/* 13D3B4 8011F2C4 AE020054 */   sw        $v0, 0x54($s0)
/* 13D3B8 8011F2C8 0C047CCE */  jal        func_menu_8011F338
/* 13D3BC 8011F2CC 02002021 */   addu      $a0, $s0, $zero
/* 13D3C0 8011F2D0 02001021 */  addu       $v0, $s0, $zero
/* 13D3C4 8011F2D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13D3C8 8011F2D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 13D3CC 8011F2DC 03E00008 */  jr         $ra
/* 13D3D0 8011F2E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011F2E4
/* 13D3D4 8011F2E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13D3D8 8011F2E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 13D3DC 8011F2EC 00808021 */  addu       $s0, $a0, $zero
/* 13D3E0 8011F2F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 13D3E4 8011F2F4 00A08821 */  addu       $s1, $a1, $zero
/* 13D3E8 8011F2F8 3C02800D */  lui        $v0, %hi(D_menu_800D0CC0)
/* 13D3EC 8011F2FC 24420CC0 */  addiu      $v0, $v0, %lo(D_menu_800D0CC0)
/* 13D3F0 8011F300 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13D3F4 8011F304 0C049139 */  jal        func_menu_801244E4
/* 13D3F8 8011F308 AE020054 */   sw        $v0, 0x54($s0)
/* 13D3FC 8011F30C 26040064 */  addiu      $a0, $s0, 0x64
/* 13D400 8011F310 0C0016E2 */  jal        func_80005B88
/* 13D404 8011F314 24050002 */   addiu     $a1, $zero, 0x2
/* 13D408 8011F318 02002021 */  addu       $a0, $s0, $zero
/* 13D40C 8011F31C 0C04794B */  jal        func_menu_8011E52C
/* 13D410 8011F320 02202821 */   addu      $a1, $s1, $zero
/* 13D414 8011F324 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13D418 8011F328 8FB10014 */  lw         $s1, 0x14($sp)
/* 13D41C 8011F32C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13D420 8011F330 03E00008 */  jr         $ra
/* 13D424 8011F334 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011F338
/* 13D428 8011F338 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13D42C 8011F33C 24820064 */  addiu      $v0, $a0, 0x64
/* 13D430 8011F340 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13D434 8011F344 AC800064 */  sw         $zero, 0x64($a0)
/* 13D438 8011F348 A4400008 */  sh         $zero, 0x8($v0)
/* 13D43C 8011F34C A4400006 */  sh         $zero, 0x6($v0)
/* 13D440 8011F350 A4400004 */  sh         $zero, 0x4($v0)
/* 13D444 8011F354 AC80005C */  sw         $zero, 0x5C($a0)
/* 13D448 8011F358 AC800060 */  sw         $zero, 0x60($a0)
/* 13D44C 8011F35C AC800058 */  sw         $zero, 0x58($a0)
/* 13D450 8011F360 AC800070 */  sw         $zero, 0x70($a0)
/* 13D454 8011F364 0C0490D1 */  jal        func_menu_80124344
/* 13D458 8011F368 AC800074 */   sw        $zero, 0x74($a0)
/* 13D45C 8011F36C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13D460 8011F370 03E00008 */  jr         $ra
/* 13D464 8011F374 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011F378
/* 13D468 8011F378 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13D46C 8011F37C AFB10014 */  sw         $s1, 0x14($sp)
/* 13D470 8011F380 00808821 */  addu       $s1, $a0, $zero
/* 13D474 8011F384 AFB20018 */  sw         $s2, 0x18($sp)
/* 13D478 8011F388 00A09021 */  addu       $s2, $a1, $zero
/* 13D47C 8011F38C AFBF001C */  sw         $ra, 0x1C($sp)
/* 13D480 8011F390 AFB00010 */  sw         $s0, 0x10($sp)
/* 13D484 8011F394 8E220054 */  lw         $v0, 0x54($s1)
/* 13D488 8011F398 00C08021 */  addu       $s0, $a2, $zero
/* 13D48C 8011F39C 84440018 */  lh         $a0, 0x18($v0)
/* 13D490 8011F3A0 8C42001C */  lw         $v0, 0x1C($v0)
/* 13D494 8011F3A4 0040F809 */  jalr       $v0
/* 13D498 8011F3A8 02242021 */   addu      $a0, $s1, $a0
/* 13D49C 8011F3AC 8E42003C */  lw         $v0, 0x3C($s2)
/* 13D4A0 8011F3B0 AE220060 */  sw         $v0, 0x60($s1)
/* 13D4A4 8011F3B4 8E420038 */  lw         $v0, 0x38($s2)
/* 13D4A8 8011F3B8 AE300058 */  sw         $s0, 0x58($s1)
/* 13D4AC 8011F3BC AE22005C */  sw         $v0, 0x5C($s1)
/* 13D4B0 8011F3C0 8E420044 */  lw         $v0, 0x44($s2)
/* 13D4B4 8011F3C4 10400003 */  beqz       $v0, .Lmenu_8011F3D4
/* 13D4B8 8011F3C8 AE220070 */   sw        $v0, 0x70($s1)
/* 13D4BC 8011F3CC 24020001 */  addiu      $v0, $zero, 0x1
/* 13D4C0 8011F3D0 AE220074 */  sw         $v0, 0x74($s1)
.Lmenu_8011F3D4:
/* 13D4C4 8011F3D4 02202021 */  addu       $a0, $s1, $zero
/* 13D4C8 8011F3D8 0C0490FB */  jal        func_menu_801243EC
/* 13D4CC 8011F3DC 02402821 */   addu      $a1, $s2, $zero
/* 13D4D0 8011F3E0 14400003 */  bnez       $v0, .Lmenu_8011F3F0
/* 13D4D4 8011F3E4 00003021 */   addu      $a2, $zero, $zero
/* 13D4D8 8011F3E8 08047D03 */  j          .Lmenu_8011F40C
/* 13D4DC 8011F3EC 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8011F3F0:
/* 13D4E0 8011F3F0 8E220054 */  lw         $v0, 0x54($s1)
/* 13D4E4 8011F3F4 96450040 */  lhu        $a1, 0x40($s2)
/* 13D4E8 8011F3F8 84440088 */  lh         $a0, 0x88($v0)
/* 13D4EC 8011F3FC 8C42008C */  lw         $v0, 0x8C($v0)
/* 13D4F0 8011F400 0040F809 */  jalr       $v0
/* 13D4F4 8011F404 02242021 */   addu      $a0, $s1, $a0
/* 13D4F8 8011F408 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_8011F40C:
/* 13D4FC 8011F40C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 13D500 8011F410 8FB20018 */  lw         $s2, 0x18($sp)
/* 13D504 8011F414 8FB10014 */  lw         $s1, 0x14($sp)
/* 13D508 8011F418 8FB00010 */  lw         $s0, 0x10($sp)
/* 13D50C 8011F41C 03E00008 */  jr         $ra
/* 13D510 8011F420 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011F424
/* 13D514 8011F424 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13D518 8011F428 AFB00020 */  sw         $s0, 0x20($sp)
/* 13D51C 8011F42C 00808021 */  addu       $s0, $a0, $zero
/* 13D520 8011F430 27A40010 */  addiu      $a0, $sp, 0x10
/* 13D524 8011F434 AFB20028 */  sw         $s2, 0x28($sp)
/* 13D528 8011F438 00C09021 */  addu       $s2, $a2, $zero
/* 13D52C 8011F43C AFB10024 */  sw         $s1, 0x24($sp)
/* 13D530 8011F440 AFBF002C */  sw         $ra, 0x2C($sp)
/* 13D534 8011F444 0C0016DC */  jal        func_80005B70
/* 13D538 8011F448 00A08821 */   addu      $s1, $a1, $zero
/* 13D53C 8011F44C 27A50010 */  addiu      $a1, $sp, 0x10
/* 13D540 8011F450 8E04005C */  lw         $a0, 0x5C($s0)
/* 13D544 8011F454 0C003053 */  jal        func_8000C14C
/* 13D548 8011F458 3226FFFF */   andi      $a2, $s1, 0xFFFF
/* 13D54C 8011F45C 27A50010 */  addiu      $a1, $sp, 0x10
/* 13D550 8011F460 8E020054 */  lw         $v0, 0x54($s0)
/* 13D554 8011F464 02403021 */  addu       $a2, $s2, $zero
/* 13D558 8011F468 84440090 */  lh         $a0, 0x90($v0)
/* 13D55C 8011F46C 8C420094 */  lw         $v0, 0x94($v0)
/* 13D560 8011F470 0040F809 */  jalr       $v0
/* 13D564 8011F474 02042021 */   addu      $a0, $s0, $a0
/* 13D568 8011F478 27A40010 */  addiu      $a0, $sp, 0x10
/* 13D56C 8011F47C 0C0016E2 */  jal        func_80005B88
/* 13D570 8011F480 24050002 */   addiu     $a1, $zero, 0x2
/* 13D574 8011F484 8FBF002C */  lw         $ra, 0x2C($sp)
/* 13D578 8011F488 8FB20028 */  lw         $s2, 0x28($sp)
/* 13D57C 8011F48C 8FB10024 */  lw         $s1, 0x24($sp)
/* 13D580 8011F490 8FB00020 */  lw         $s0, 0x20($sp)
/* 13D584 8011F494 03E00008 */  jr         $ra
/* 13D588 8011F498 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011F49C
/* 13D58C 8011F49C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13D590 8011F4A0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13D594 8011F4A4 00808821 */  addu       $s1, $a0, $zero
/* 13D598 8011F4A8 AFB00018 */  sw         $s0, 0x18($sp)
/* 13D59C 8011F4AC 26300064 */  addiu      $s0, $s1, 0x64
/* 13D5A0 8011F4B0 02002021 */  addu       $a0, $s0, $zero
/* 13D5A4 8011F4B4 AFB20020 */  sw         $s2, 0x20($sp)
/* 13D5A8 8011F4B8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 13D5AC 8011F4BC 0C00171E */  jal        func_80005C78
/* 13D5B0 8011F4C0 00C09021 */   addu      $s2, $a2, $zero
/* 13D5B4 8011F4C4 0C001852 */  jal        func_80006148
/* 13D5B8 8011F4C8 02002021 */   addu      $a0, $s0, $zero
/* 13D5BC 8011F4CC 8E220038 */  lw         $v0, 0x38($s1)
/* 13D5C0 8011F4D0 10400006 */  beqz       $v0, .Lmenu_8011F4EC
/* 13D5C4 8011F4D4 26300064 */   addiu     $s0, $s1, 0x64
/* 13D5C8 8011F4D8 8E22003C */  lw         $v0, 0x3C($s1)
/* 13D5CC 8011F4DC 10400003 */  beqz       $v0, .Lmenu_8011F4EC
/* 13D5D0 8011F4E0 00000000 */   nop
/* 13D5D4 8011F4E4 12400023 */  beqz       $s2, .Lmenu_8011F574
/* 13D5D8 8011F4E8 00000000 */   nop
.Lmenu_8011F4EC:
/* 13D5DC 8011F4EC 0C00173D */  jal        func_80005CF4
/* 13D5E0 8011F4F0 02002021 */   addu      $a0, $s0, $zero
/* 13D5E4 8011F4F4 8E220034 */  lw         $v0, 0x34($s1)
/* 13D5E8 8011F4F8 8E230030 */  lw         $v1, 0x30($s1)
/* 13D5EC 8011F4FC 00009021 */  addu       $s2, $zero, $zero
/* 13D5F0 8011F500 AE22003C */  sw         $v0, 0x3C($s1)
/* 13D5F4 8011F504 AE230038 */  sw         $v1, 0x38($s1)
.Lmenu_8011F508:
/* 13D5F8 8011F508 0C00188A */  jal        func_80006228
/* 13D5FC 8011F50C 02002021 */   addu      $a0, $s0, $zero
/* 13D600 8011F510 0242102A */  slt        $v0, $s2, $v0
/* 13D604 8011F514 10400015 */  beqz       $v0, .Lmenu_8011F56C
/* 13D608 8011F518 02002821 */   addu      $a1, $s0, $zero
/* 13D60C 8011F51C 27A60010 */  addiu      $a2, $sp, 0x10
/* 13D610 8011F520 8E240060 */  lw         $a0, 0x60($s1)
/* 13D614 8011F524 0C01376C */  jal        func_8004DDB0
/* 13D618 8011F528 27A70014 */   addiu     $a3, $sp, 0x14
/* 13D61C 8011F52C 8E240030 */  lw         $a0, 0x30($s1)
/* 13D620 8011F530 8FA30010 */  lw         $v1, 0x10($sp)
/* 13D624 8011F534 8E220038 */  lw         $v0, 0x38($s1)
/* 13D628 8011F538 00832021 */  addu       $a0, $a0, $v1
/* 13D62C 8011F53C 0044102B */  sltu       $v0, $v0, $a0
/* 13D630 8011F540 54400001 */  bnel       $v0, $zero, .Lmenu_8011F548
/* 13D634 8011F544 AE240038 */   sw        $a0, 0x38($s1)
.Lmenu_8011F548:
/* 13D638 8011F548 02002021 */  addu       $a0, $s0, $zero
/* 13D63C 8011F54C 8E22003C */  lw         $v0, 0x3C($s1)
/* 13D640 8011F550 8FA30014 */  lw         $v1, 0x14($sp)
/* 13D644 8011F554 26520001 */  addiu      $s2, $s2, 0x1
/* 13D648 8011F558 00431021 */  addu       $v0, $v0, $v1
/* 13D64C 8011F55C 0C001755 */  jal        func_80005D54
/* 13D650 8011F560 AE22003C */   sw        $v0, 0x3C($s1)
/* 13D654 8011F564 08047D42 */  j          .Lmenu_8011F508
/* 13D658 8011F568 00000000 */   nop
.Lmenu_8011F56C:
/* 13D65C 8011F56C 0C00173D */  jal        func_80005CF4
/* 13D660 8011F570 26240064 */   addiu     $a0, $s1, 0x64
.Lmenu_8011F574:
/* 13D664 8011F574 8FBF0024 */  lw         $ra, 0x24($sp)
/* 13D668 8011F578 8FB20020 */  lw         $s2, 0x20($sp)
/* 13D66C 8011F57C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13D670 8011F580 8FB00018 */  lw         $s0, 0x18($sp)
/* 13D674 8011F584 03E00008 */  jr         $ra
/* 13D678 8011F588 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011F58C
/* 13D67C 8011F58C 8C830000 */  lw         $v1, 0x0($a0)
/* 13D680 8011F590 10600006 */  beqz       $v1, .Lmenu_8011F5AC
/* 13D684 8011F594 00000000 */   nop
/* 13D688 8011F598 8C620038 */  lw         $v0, 0x38($v1)
/* 13D68C 8011F59C 8C630030 */  lw         $v1, 0x30($v1)
/* 13D690 8011F5A0 00431023 */  subu       $v0, $v0, $v1
/* 13D694 8011F5A4 08047D6C */  j          .Lmenu_8011F5B0
/* 13D698 8011F5A8 00452823 */   subu      $a1, $v0, $a1
.Lmenu_8011F5AC:
/* 13D69C 8011F5AC 8C850038 */  lw         $a1, 0x38($a0)
.Lmenu_8011F5B0:
/* 13D6A0 8011F5B0 8C820038 */  lw         $v0, 0x38($a0)
/* 13D6A4 8011F5B4 8C830030 */  lw         $v1, 0x30($a0)
/* 13D6A8 8011F5B8 AC850038 */  sw         $a1, 0x38($a0)
/* 13D6AC 8011F5BC 00431023 */  subu       $v0, $v0, $v1
/* 13D6B0 8011F5C0 00A21023 */  subu       $v0, $a1, $v0
/* 13D6B4 8011F5C4 03E00008 */  jr         $ra
/* 13D6B8 8011F5C8 AC820030 */   sw        $v0, 0x30($a0)

glabel func_menu_8011F5CC
/* 13D6BC 8011F5CC 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 13D6C0 8011F5D0 AFB10044 */  sw         $s1, 0x44($sp)
/* 13D6C4 8011F5D4 00808821 */  addu       $s1, $a0, $zero
/* 13D6C8 8011F5D8 AFB00040 */  sw         $s0, 0x40($sp)
/* 13D6CC 8011F5DC 00A08021 */  addu       $s0, $a1, $zero
/* 13D6D0 8011F5E0 AFB7005C */  sw         $s7, 0x5C($sp)
/* 13D6D4 8011F5E4 00C0B821 */  addu       $s7, $a2, $zero
/* 13D6D8 8011F5E8 AFB3004C */  sw         $s3, 0x4C($sp)
/* 13D6DC 8011F5EC 26330064 */  addiu      $s3, $s1, 0x64
/* 13D6E0 8011F5F0 AFBF0060 */  sw         $ra, 0x60($sp)
/* 13D6E4 8011F5F4 AFB60058 */  sw         $s6, 0x58($sp)
/* 13D6E8 8011F5F8 AFB50054 */  sw         $s5, 0x54($sp)
/* 13D6EC 8011F5FC AFB40050 */  sw         $s4, 0x50($sp)
/* 13D6F0 8011F600 AFB20048 */  sw         $s2, 0x48($sp)
/* 13D6F4 8011F604 F7B60070 */  sdc1       $f22, 0x70($sp)
/* 13D6F8 8011F608 F7B40068 */  sdc1       $f20, 0x68($sp)
/* 13D6FC 8011F60C 0C00188A */  jal        func_80006228
/* 13D700 8011F610 02602021 */   addu      $a0, $s3, $zero
/* 13D704 8011F614 02602021 */  addu       $a0, $s3, $zero
/* 13D708 8011F618 00009021 */  addu       $s2, $zero, $zero
/* 13D70C 8011F61C 0040B021 */  addu       $s6, $v0, $zero
/* 13D710 8011F620 44960000 */  mtc1       $s6, $f0
/* 13D714 8011F624 46800020 */  cvt.s.w    $f0, $f0
/* 13D718 8011F628 4480A000 */  mtc1       $zero, $f20
/* 13D71C 8011F62C 8E23003C */  lw         $v1, 0x3C($s1)
/* 13D720 8011F630 8E250034 */  lw         $a1, 0x34($s1)
/* 13D724 8011F634 8EE60000 */  lw         $a2, 0x0($s7)
/* 13D728 8011F638 8E020004 */  lw         $v0, 0x4($s0)
/* 13D72C 8011F63C 00651823 */  subu       $v1, $v1, $a1
/* 13D730 8011F640 44831000 */  mtc1       $v1, $f2
/* 13D734 8011F644 468010A0 */  cvt.s.w    $f2, $f2
/* 13D738 8011F648 46001583 */  div.s      $f22, $f2, $f0
/* 13D73C 8011F64C 8E030000 */  lw         $v1, 0x0($s0)
/* 13D740 8011F650 8EE50004 */  lw         $a1, 0x4($s7)
/* 13D744 8011F654 00C3A823 */  subu       $s5, $a2, $v1
/* 13D748 8011F658 0C00173D */  jal        func_80005CF4
/* 13D74C 8011F65C 00A2A023 */   subu      $s4, $a1, $v0
/* 13D750 8011F660 1AC0002E */  blez       $s6, .Lmenu_8011F71C
/* 13D754 8011F664 02608021 */   addu      $s0, $s3, $zero
/* 13D758 8011F668 27B30030 */  addiu      $s3, $sp, 0x30
.Lmenu_8011F66C:
/* 13D75C 8011F66C 4600A10D */  trunc.w.s  $f4, $f20
/* 13D760 8011F670 E7A40024 */  swc1       $f4, 0x24($sp)
/* 13D764 8011F674 02202021 */  addu       $a0, $s1, $zero
/* 13D768 8011F678 02003021 */  addu       $a2, $s0, $zero
/* 13D76C 8011F67C 4616A000 */  add.s      $f0, $f20, $f22
/* 13D770 8011F680 27A70020 */  addiu      $a3, $sp, 0x20
/* 13D774 8011F684 AFA00020 */  sw         $zero, 0x20($sp)
/* 13D778 8011F688 4600010D */  trunc.w.s  $f4, $f0
/* 13D77C 8011F68C E7A4002C */  swc1       $f4, 0x2C($sp)
/* 13D780 8011F690 8E220038 */  lw         $v0, 0x38($s1)
/* 13D784 8011F694 8E230030 */  lw         $v1, 0x30($s1)
/* 13D788 8011F698 26520001 */  addiu      $s2, $s2, 0x1
/* 13D78C 8011F69C 00431023 */  subu       $v0, $v0, $v1
/* 13D790 8011F6A0 AFA20028 */  sw         $v0, 0x28($sp)
/* 13D794 8011F6A4 AFB30010 */  sw         $s3, 0x10($sp)
/* 13D798 8011F6A8 AFA00014 */  sw         $zero, 0x14($sp)
/* 13D79C 8011F6AC 8E250060 */  lw         $a1, 0x60($s1)
/* 13D7A0 8011F6B0 0C04928A */  jal        func_menu_80124A28
/* 13D7A4 8011F6B4 46000506 */   mov.s     $f20, $f0
/* 13D7A8 8011F6B8 02202021 */  addu       $a0, $s1, $zero
/* 13D7AC 8011F6BC 02602821 */  addu       $a1, $s3, $zero
/* 13D7B0 8011F6C0 8FA20034 */  lw         $v0, 0x34($sp)
/* 13D7B4 8011F6C4 8FA3003C */  lw         $v1, 0x3C($sp)
/* 13D7B8 8011F6C8 00541021 */  addu       $v0, $v0, $s4
/* 13D7BC 8011F6CC AFA20034 */  sw         $v0, 0x34($sp)
/* 13D7C0 8011F6D0 8FA20030 */  lw         $v0, 0x30($sp)
/* 13D7C4 8011F6D4 00741821 */  addu       $v1, $v1, $s4
/* 13D7C8 8011F6D8 AFA3003C */  sw         $v1, 0x3C($sp)
/* 13D7CC 8011F6DC 8FA30038 */  lw         $v1, 0x38($sp)
/* 13D7D0 8011F6E0 00551021 */  addu       $v0, $v0, $s5
/* 13D7D4 8011F6E4 00751821 */  addu       $v1, $v1, $s5
/* 13D7D8 8011F6E8 AFA20030 */  sw         $v0, 0x30($sp)
/* 13D7DC 8011F6EC AFA30038 */  sw         $v1, 0x38($sp)
/* 13D7E0 8011F6F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 13D7E4 8011F6F4 AFA00014 */  sw         $zero, 0x14($sp)
/* 13D7E8 8011F6F8 AFA00018 */  sw         $zero, 0x18($sp)
/* 13D7EC 8011F6FC 8E270060 */  lw         $a3, 0x60($s1)
/* 13D7F0 8011F700 0C0492CA */  jal        func_menu_80124B28
/* 13D7F4 8011F704 02E03021 */   addu      $a2, $s7, $zero
/* 13D7F8 8011F708 0C001755 */  jal        func_80005D54
/* 13D7FC 8011F70C 02002021 */   addu      $a0, $s0, $zero
/* 13D800 8011F710 0256102A */  slt        $v0, $s2, $s6
/* 13D804 8011F714 1440FFD5 */  bnez       $v0, .Lmenu_8011F66C
/* 13D808 8011F718 00000000 */   nop
.Lmenu_8011F71C:
/* 13D80C 8011F71C 8FBF0060 */  lw         $ra, 0x60($sp)
/* 13D810 8011F720 8FB7005C */  lw         $s7, 0x5C($sp)
/* 13D814 8011F724 8FB60058 */  lw         $s6, 0x58($sp)
/* 13D818 8011F728 8FB50054 */  lw         $s5, 0x54($sp)
/* 13D81C 8011F72C 8FB40050 */  lw         $s4, 0x50($sp)
/* 13D820 8011F730 8FB3004C */  lw         $s3, 0x4C($sp)
/* 13D824 8011F734 8FB20048 */  lw         $s2, 0x48($sp)
/* 13D828 8011F738 8FB10044 */  lw         $s1, 0x44($sp)
/* 13D82C 8011F73C 8FB00040 */  lw         $s0, 0x40($sp)
/* 13D830 8011F740 D7B60070 */  ldc1       $f22, 0x70($sp)
/* 13D834 8011F744 D7B40068 */  ldc1       $f20, 0x68($sp)
/* 13D838 8011F748 00001021 */  addu       $v0, $zero, $zero
/* 13D83C 8011F74C 03E00008 */  jr         $ra
/* 13D840 8011F750 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_menu_8011F754
/* 13D844 8011F754 03E00008 */  jr         $ra
/* 13D848 8011F758 AC850060 */   sw        $a1, 0x60($a0)
