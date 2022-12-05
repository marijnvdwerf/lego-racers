.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001E650
/* 1F250 8001E650 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 1F254 8001E654 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 1F258 8001E658 03E00008 */  jr         $ra
/* 1F25C 8001E65C 8C420000 */   lw        $v0, 0x0($v0)

glabel osCreateScheduler
/* 1F260 8001E660 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1F264 8001E664 AFB00018 */  sw         $s0, 0x18($sp)
/* 1F268 8001E668 00808021 */  addu       $s0, $a0, $zero
/* 1F26C 8001E66C AFB40028 */  sw         $s4, 0x28($sp)
/* 1F270 8001E670 00A0A021 */  addu       $s4, $a1, $zero
/* 1F274 8001E674 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1F278 8001E678 00C0A821 */  addu       $s5, $a2, $zero
/* 1F27C 8001E67C AFB20020 */  sw         $s2, 0x20($sp)
/* 1F280 8001E680 26120040 */  addiu      $s2, $s0, 0x40
/* 1F284 8001E684 02402021 */  addu       $a0, $s2, $zero
/* 1F288 8001E688 26050058 */  addiu      $a1, $s0, 0x58
/* 1F28C 8001E68C 24060008 */  addiu      $a2, $zero, 0x8
/* 1F290 8001E690 24020001 */  addiu      $v0, $zero, 0x1
/* 1F294 8001E694 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1F298 8001E698 AFB30024 */  sw         $s3, 0x24($sp)
/* 1F29C 8001E69C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1F2A0 8001E6A0 A6020000 */  sh         $v0, 0x0($s0)
/* 1F2A4 8001E6A4 24020004 */  addiu      $v0, $zero, 0x4
/* 1F2A8 8001E6A8 AE000274 */  sw         $zero, 0x274($s0)
/* 1F2AC 8001E6AC AE000278 */  sw         $zero, 0x278($s0)
/* 1F2B0 8001E6B0 AE000260 */  sw         $zero, 0x260($s0)
/* 1F2B4 8001E6B4 AE00027C */  sw         $zero, 0x27C($s0)
/* 1F2B8 8001E6B8 AE000264 */  sw         $zero, 0x264($s0)
/* 1F2BC 8001E6BC AE000268 */  sw         $zero, 0x268($s0)
/* 1F2C0 8001E6C0 AE00026C */  sw         $zero, 0x26C($s0)
/* 1F2C4 8001E6C4 AE000270 */  sw         $zero, 0x270($s0)
/* 1F2C8 8001E6C8 A6020020 */  sh         $v0, 0x20($s0)
/* 1F2CC 8001E6CC 93B3004B */  lbu        $s3, 0x4B($sp)
/* 1F2D0 8001E6D0 0C007468 */  jal        osCreateMesgQueue
/* 1F2D4 8001E6D4 00E08821 */   addu      $s1, $a3, $zero
/* 1F2D8 8001E6D8 26040078 */  addiu      $a0, $s0, 0x78
/* 1F2DC 8001E6DC 26050090 */  addiu      $a1, $s0, 0x90
/* 1F2E0 8001E6E0 0C007468 */  jal        osCreateMesgQueue
/* 1F2E4 8001E6E4 24060008 */   addiu     $a2, $zero, 0x8
/* 1F2E8 8001E6E8 0C007FB4 */  jal        osCreateViManager
/* 1F2EC 8001E6EC 240400FE */   addiu     $a0, $zero, 0xFE
/* 1F2F0 8001E6F0 323100FF */  andi       $s1, $s1, 0xFF
/* 1F2F4 8001E6F4 00112080 */  sll        $a0, $s1, 2
/* 1F2F8 8001E6F8 00912021 */  addu       $a0, $a0, $s1
/* 1F2FC 8001E6FC 00042100 */  sll        $a0, $a0, 4
/* 1F300 8001E700 3C028003 */  lui        $v0, %hi(D_80031160)
/* 1F304 8001E704 24421160 */  addiu      $v0, $v0, %lo(D_80031160)
/* 1F308 8001E708 0C0080A0 */  jal        osViSetMode
/* 1F30C 8001E70C 00822021 */   addu      $a0, $a0, $v0
/* 1F310 8001E710 0C0081E8 */  jal        osViBlack
/* 1F314 8001E714 24040001 */   addiu     $a0, $zero, 0x1
/* 1F318 8001E718 24040004 */  addiu      $a0, $zero, 0x4
/* 1F31C 8001E71C 02402821 */  addu       $a1, $s2, $zero
/* 1F320 8001E720 0C0077B8 */  jal        osSetEventMesg
/* 1F324 8001E724 2406029B */   addiu     $a2, $zero, 0x29B
/* 1F328 8001E728 24040009 */  addiu      $a0, $zero, 0x9
/* 1F32C 8001E72C 02402821 */  addu       $a1, $s2, $zero
/* 1F330 8001E730 0C0077B8 */  jal        osSetEventMesg
/* 1F334 8001E734 2406029C */   addiu     $a2, $zero, 0x29C
/* 1F338 8001E738 2404000E */  addiu      $a0, $zero, 0xE
/* 1F33C 8001E73C 02402821 */  addu       $a1, $s2, $zero
/* 1F340 8001E740 0C0077B8 */  jal        osSetEventMesg
/* 1F344 8001E744 2406029D */   addiu     $a2, $zero, 0x29D
/* 1F348 8001E748 02402021 */  addu       $a0, $s2, $zero
/* 1F34C 8001E74C 2405029A */  addiu      $a1, $zero, 0x29A
/* 1F350 8001E750 0C008088 */  jal        osViSetEvent
/* 1F354 8001E754 02603021 */   addu      $a2, $s3, $zero
/* 1F358 8001E758 261100B0 */  addiu      $s1, $s0, 0xB0
/* 1F35C 8001E75C 02202021 */  addu       $a0, $s1, $zero
/* 1F360 8001E760 24050004 */  addiu      $a1, $zero, 0x4
/* 1F364 8001E764 3C068002 */  lui        $a2, %hi(func_8001E898)
/* 1F368 8001E768 24C6E898 */  addiu      $a2, $a2, %lo(func_8001E898)
/* 1F36C 8001E76C 02003821 */  addu       $a3, $s0, $zero
/* 1F370 8001E770 AFB40010 */  sw         $s4, 0x10($sp)
/* 1F374 8001E774 0C007CB4 */  jal        osCreateThread
/* 1F378 8001E778 AFB50014 */   sw        $s5, 0x14($sp)
/* 1F37C 8001E77C 0C007D5C */  jal        osStartThread
/* 1F380 8001E780 02202021 */   addu      $a0, $s1, $zero
/* 1F384 8001E784 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1F388 8001E788 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1F38C 8001E78C 8FB40028 */  lw         $s4, 0x28($sp)
/* 1F390 8001E790 8FB30024 */  lw         $s3, 0x24($sp)
/* 1F394 8001E794 8FB20020 */  lw         $s2, 0x20($sp)
/* 1F398 8001E798 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1F39C 8001E79C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1F3A0 8001E7A0 03E00008 */  jr         $ra
/* 1F3A4 8001E7A4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel osScAddClient
/* 1F3A8 8001E7A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F3AC 8001E7AC AFB20018 */  sw         $s2, 0x18($sp)
/* 1F3B0 8001E7B0 00809021 */  addu       $s2, $a0, $zero
/* 1F3B4 8001E7B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1F3B8 8001E7B8 00A08021 */  addu       $s0, $a1, $zero
/* 1F3BC 8001E7BC AFB10014 */  sw         $s1, 0x14($sp)
/* 1F3C0 8001E7C0 00C08821 */  addu       $s1, $a2, $zero
/* 1F3C4 8001E7C4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1F3C8 8001E7C8 0C0056A8 */  jal        osSetIntMask
/* 1F3CC 8001E7CC 24040001 */   addiu     $a0, $zero, 0x1
/* 1F3D0 8001E7D0 AE110004 */  sw         $s1, 0x4($s0)
/* 1F3D4 8001E7D4 8E430260 */  lw         $v1, 0x260($s2)
/* 1F3D8 8001E7D8 00402021 */  addu       $a0, $v0, $zero
/* 1F3DC 8001E7DC AE030000 */  sw         $v1, 0x0($s0)
/* 1F3E0 8001E7E0 0C0056A8 */  jal        osSetIntMask
/* 1F3E4 8001E7E4 AE500260 */   sw        $s0, 0x260($s2)
/* 1F3E8 8001E7E8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1F3EC 8001E7EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F3F0 8001E7F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F3F4 8001E7F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F3F8 8001E7F8 03E00008 */  jr         $ra
/* 1F3FC 8001E7FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001E800
/* 1F400 8001E800 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F404 8001E804 AFB20018 */  sw         $s2, 0x18($sp)
/* 1F408 8001E808 00809021 */  addu       $s2, $a0, $zero
/* 1F40C 8001E80C AFB3001C */  sw         $s3, 0x1C($sp)
/* 1F410 8001E810 00A09821 */  addu       $s3, $a1, $zero
/* 1F414 8001E814 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1F418 8001E818 AFB10014 */  sw         $s1, 0x14($sp)
/* 1F41C 8001E81C AFB00010 */  sw         $s0, 0x10($sp)
/* 1F420 8001E820 8E500260 */  lw         $s0, 0x260($s2)
/* 1F424 8001E824 00008821 */  addu       $s1, $zero, $zero
/* 1F428 8001E828 0C0056A8 */  jal        osSetIntMask
/* 1F42C 8001E82C 24040001 */   addiu     $a0, $zero, 0x1
/* 1F430 8001E830 1200000E */  beqz       $s0, .L8001E86C
/* 1F434 8001E834 00402021 */   addu      $a0, $v0, $zero
.L8001E838:
/* 1F438 8001E838 56130009 */  bnel       $s0, $s3, .L8001E860
/* 1F43C 8001E83C 02008821 */   addu      $s1, $s0, $zero
/* 1F440 8001E840 12200004 */  beqz       $s1, .L8001E854
/* 1F444 8001E844 00000000 */   nop
/* 1F448 8001E848 8E020000 */  lw         $v0, 0x0($s0)
/* 1F44C 8001E84C 08007A1B */  j          .L8001E86C
/* 1F450 8001E850 AE220000 */   sw        $v0, 0x0($s1)
.L8001E854:
/* 1F454 8001E854 8E020000 */  lw         $v0, 0x0($s0)
/* 1F458 8001E858 08007A1B */  j          .L8001E86C
/* 1F45C 8001E85C AE420260 */   sw        $v0, 0x260($s2)
.L8001E860:
/* 1F460 8001E860 8E100000 */  lw         $s0, 0x0($s0)
/* 1F464 8001E864 1600FFF4 */  bnez       $s0, .L8001E838
/* 1F468 8001E868 00000000 */   nop
.L8001E86C:
/* 1F46C 8001E86C 0C0056A8 */  jal        osSetIntMask
/* 1F470 8001E870 00000000 */   nop
/* 1F474 8001E874 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1F478 8001E878 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1F47C 8001E87C 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F480 8001E880 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F484 8001E884 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F488 8001E888 03E00008 */  jr         $ra
/* 1F48C 8001E88C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel osScGetCmdQ
/* 1F490 8001E890 03E00008 */  jr         $ra
/* 1F494 8001E894 24820078 */   addiu     $v0, $a0, 0x78

glabel func_8001E898
/* 1F498 8001E898 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1F49C 8001E89C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1F4A0 8001E8A0 00808821 */  addu       $s1, $a0, $zero
/* 1F4A4 8001E8A4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1F4A8 8001E8A8 2415029B */  addiu      $s5, $zero, 0x29B
/* 1F4AC 8001E8AC AFB40028 */  sw         $s4, 0x28($sp)
/* 1F4B0 8001E8B0 2414029A */  addiu      $s4, $zero, 0x29A
/* 1F4B4 8001E8B4 AFB30024 */  sw         $s3, 0x24($sp)
/* 1F4B8 8001E8B8 2413029C */  addiu      $s3, $zero, 0x29C
/* 1F4BC 8001E8BC AFB20020 */  sw         $s2, 0x20($sp)
/* 1F4C0 8001E8C0 2412029D */  addiu      $s2, $zero, 0x29D
/* 1F4C4 8001E8C4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1F4C8 8001E8C8 AFB00018 */  sw         $s0, 0x18($sp)
/* 1F4CC 8001E8CC 26240040 */  addiu      $a0, $s1, 0x40
.L8001E8D0:
/* 1F4D0 8001E8D0 27A50010 */  addiu      $a1, $sp, 0x10
/* 1F4D4 8001E8D4 0C007720 */  jal        osRecvMesg
/* 1F4D8 8001E8D8 24060001 */   addiu     $a2, $zero, 0x1
/* 1F4DC 8001E8DC 8FA30010 */  lw         $v1, 0x10($sp)
/* 1F4E0 8001E8E0 10750011 */  beq        $v1, $s5, .L8001E928
/* 1F4E4 8001E8E4 2862029C */   slti      $v0, $v1, 0x29C
/* 1F4E8 8001E8E8 10400005 */  beqz       $v0, .L8001E900
/* 1F4EC 8001E8EC 00000000 */   nop
/* 1F4F0 8001E8F0 10740009 */  beq        $v1, $s4, .L8001E918
/* 1F4F4 8001E8F4 26240040 */   addiu     $a0, $s1, 0x40
/* 1F4F8 8001E8F8 08007A34 */  j          .L8001E8D0
/* 1F4FC 8001E8FC 00000000 */   nop
.L8001E900:
/* 1F500 8001E900 1073000D */  beq        $v1, $s3, .L8001E938
/* 1F504 8001E904 00000000 */   nop
/* 1F508 8001E908 1072000F */  beq        $v1, $s2, .L8001E948
/* 1F50C 8001E90C 26240040 */   addiu     $a0, $s1, 0x40
/* 1F510 8001E910 08007A34 */  j          .L8001E8D0
/* 1F514 8001E914 00000000 */   nop
.L8001E918:
/* 1F518 8001E918 0C007A67 */  jal        func_8001E99C
/* 1F51C 8001E91C 02202021 */   addu      $a0, $s1, $zero
/* 1F520 8001E920 08007A34 */  j          .L8001E8D0
/* 1F524 8001E924 26240040 */   addiu     $a0, $s1, 0x40
.L8001E928:
/* 1F528 8001E928 0C007AA7 */  jal        func_8001EA9C
/* 1F52C 8001E92C 02202021 */   addu      $a0, $s1, $zero
/* 1F530 8001E930 08007A34 */  j          .L8001E8D0
/* 1F534 8001E934 26240040 */   addiu     $a0, $s1, 0x40
.L8001E938:
/* 1F538 8001E938 0C007AE3 */  jal        func_8001EB8C
/* 1F53C 8001E93C 02202021 */   addu      $a0, $s1, $zero
/* 1F540 8001E940 08007A34 */  j          .L8001E8D0
/* 1F544 8001E944 26240040 */   addiu     $a0, $s1, 0x40
.L8001E948:
/* 1F548 8001E948 8E300260 */  lw         $s0, 0x260($s1)
/* 1F54C 8001E94C 1200FFE0 */  beqz       $s0, .L8001E8D0
/* 1F550 8001E950 00000000 */   nop
.L8001E954:
/* 1F554 8001E954 8E040004 */  lw         $a0, 0x4($s0)
/* 1F558 8001E958 26250020 */  addiu      $a1, $s1, 0x20
/* 1F55C 8001E95C 0C00776C */  jal        osSendMesg
/* 1F560 8001E960 00003021 */   addu      $a2, $zero, $zero
/* 1F564 8001E964 8E100000 */  lw         $s0, 0x0($s0)
/* 1F568 8001E968 1600FFFA */  bnez       $s0, .L8001E954
/* 1F56C 8001E96C 26240040 */   addiu     $a0, $s1, 0x40
/* 1F570 8001E970 08007A34 */  j          .L8001E8D0
/* 1F574 8001E974 00000000 */   nop

glabel func_8001E978
/* 1F578 8001E978 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1F57C 8001E97C 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1F580 8001E980 8FB40028 */  lw         $s4, 0x28($sp)
/* 1F584 8001E984 8FB30024 */  lw         $s3, 0x24($sp)
/* 1F588 8001E988 8FB20020 */  lw         $s2, 0x20($sp)
/* 1F58C 8001E98C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1F590 8001E990 8FB00018 */  lw         $s0, 0x18($sp)
/* 1F594 8001E994 03E00008 */  jr         $ra
/* 1F598 8001E998 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8001E99C
/* 1F59C 8001E99C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1F5A0 8001E9A0 AFB10024 */  sw         $s1, 0x24($sp)
/* 1F5A4 8001E9A4 00808821 */  addu       $s1, $a0, $zero
/* 1F5A8 8001E9A8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1F5AC 8001E9AC AFB00020 */  sw         $s0, 0x20($sp)
/* 1F5B0 8001E9B0 8E22027C */  lw         $v0, 0x27C($s1)
/* 1F5B4 8001E9B4 2410FFFF */  addiu      $s0, $zero, -0x1
/* 1F5B8 8001E9B8 AFA00014 */  sw         $zero, 0x14($sp)
/* 1F5BC 8001E9BC AFA00018 */  sw         $zero, 0x18($sp)
/* 1F5C0 8001E9C0 24420001 */  addiu      $v0, $v0, 0x1
/* 1F5C4 8001E9C4 AE22027C */  sw         $v0, 0x27C($s1)
/* 1F5C8 8001E9C8 26240078 */  addiu      $a0, $s1, 0x78
.L8001E9CC:
/* 1F5CC 8001E9CC 27A50010 */  addiu      $a1, $sp, 0x10
/* 1F5D0 8001E9D0 0C007720 */  jal        osRecvMesg
/* 1F5D4 8001E9D4 00003021 */   addu      $a2, $zero, $zero
/* 1F5D8 8001E9D8 10500006 */  beq        $v0, $s0, .L8001E9F4
/* 1F5DC 8001E9DC 00000000 */   nop
/* 1F5E0 8001E9E0 8FA50010 */  lw         $a1, 0x10($sp)
/* 1F5E4 8001E9E4 0C007B3F */  jal        func_8001ECFC
/* 1F5E8 8001E9E8 02202021 */   addu      $a0, $s1, $zero
/* 1F5EC 8001E9EC 08007A73 */  j          .L8001E9CC
/* 1F5F0 8001E9F0 26240078 */   addiu     $a0, $s1, 0x78
.L8001E9F4:
/* 1F5F4 8001E9F4 8E220280 */  lw         $v0, 0x280($s1)
/* 1F5F8 8001E9F8 10400008 */  beqz       $v0, .L8001EA1C
/* 1F5FC 8001E9FC 00000000 */   nop
/* 1F600 8001EA00 8E220274 */  lw         $v0, 0x274($s1)
/* 1F604 8001EA04 10400006 */  beqz       $v0, .L8001EA20
/* 1F608 8001EA08 00000000 */   nop
/* 1F60C 8001EA0C 0C007B89 */  jal        func_8001EE24
/* 1F610 8001EA10 02202021 */   addu      $a0, $s1, $zero
/* 1F614 8001EA14 08007A98 */  j          .L8001EA60
/* 1F618 8001EA18 00000000 */   nop
.L8001EA1C:
/* 1F61C 8001EA1C 8E220274 */  lw         $v0, 0x274($s1)
.L8001EA20:
/* 1F620 8001EA20 8E230278 */  lw         $v1, 0x278($s1)
/* 1F624 8001EA24 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1F628 8001EA28 14600002 */  bnez       $v1, .L8001EA34
/* 1F62C 8001EA2C 00028040 */   sll       $s0, $v0, 1
/* 1F630 8001EA30 36100001 */  ori        $s0, $s0, 0x1
.L8001EA34:
/* 1F634 8001EA34 02202021 */  addu       $a0, $s1, $zero
/* 1F638 8001EA38 27A50014 */  addiu      $a1, $sp, 0x14
/* 1F63C 8001EA3C 27A60018 */  addiu      $a2, $sp, 0x18
/* 1F640 8001EA40 0C007B97 */  jal        func_8001EE5C
/* 1F644 8001EA44 02003821 */   addu      $a3, $s0, $zero
/* 1F648 8001EA48 10500005 */  beq        $v0, $s0, .L8001EA60
/* 1F64C 8001EA4C 00000000 */   nop
/* 1F650 8001EA50 8FA50014 */  lw         $a1, 0x14($sp)
/* 1F654 8001EA54 8FA60018 */  lw         $a2, 0x18($sp)
/* 1F658 8001EA58 0C007B55 */  jal        func_8001ED54
/* 1F65C 8001EA5C 02202021 */   addu      $a0, $s1, $zero
.L8001EA60:
/* 1F660 8001EA60 8E300260 */  lw         $s0, 0x260($s1)
/* 1F664 8001EA64 12000008 */  beqz       $s0, .L8001EA88
/* 1F668 8001EA68 00000000 */   nop
.L8001EA6C:
/* 1F66C 8001EA6C 8E040004 */  lw         $a0, 0x4($s0)
/* 1F670 8001EA70 02202821 */  addu       $a1, $s1, $zero
/* 1F674 8001EA74 0C00776C */  jal        osSendMesg
/* 1F678 8001EA78 00003021 */   addu      $a2, $zero, $zero
/* 1F67C 8001EA7C 8E100000 */  lw         $s0, 0x0($s0)
/* 1F680 8001EA80 1600FFFA */  bnez       $s0, .L8001EA6C
/* 1F684 8001EA84 00000000 */   nop
.L8001EA88:
/* 1F688 8001EA88 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1F68C 8001EA8C 8FB10024 */  lw         $s1, 0x24($sp)
/* 1F690 8001EA90 8FB00020 */  lw         $s0, 0x20($sp)
/* 1F694 8001EA94 03E00008 */  jr         $ra
/* 1F698 8001EA98 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001EA9C
/* 1F69C 8001EA9C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F6A0 8001EAA0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1F6A4 8001EAA4 00808821 */  addu       $s1, $a0, $zero
/* 1F6A8 8001EAA8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1F6AC 8001EAAC AFB00018 */  sw         $s0, 0x18($sp)
/* 1F6B0 8001EAB0 8E300274 */  lw         $s0, 0x274($s1)
/* 1F6B4 8001EAB4 AE200274 */  sw         $zero, 0x274($s1)
/* 1F6B8 8001EAB8 8E020004 */  lw         $v0, 0x4($s0)
/* 1F6BC 8001EABC AFA00010 */  sw         $zero, 0x10($sp)
/* 1F6C0 8001EAC0 30420010 */  andi       $v0, $v0, 0x10
/* 1F6C4 8001EAC4 10400014 */  beqz       $v0, .L8001EB18
/* 1F6C8 8001EAC8 AFA00014 */   sw        $zero, 0x14($sp)
/* 1F6CC 8001EACC 0C007980 */  jal        osSpTaskYielded
/* 1F6D0 8001EAD0 26040010 */   addiu     $a0, $s0, 0x10
/* 1F6D4 8001EAD4 50400011 */  beql       $v0, $zero, .L8001EB1C
/* 1F6D8 8001EAD8 02202021 */   addu      $a0, $s1, $zero
/* 1F6DC 8001EADC 8E020004 */  lw         $v0, 0x4($s0)
/* 1F6E0 8001EAE0 8E030008 */  lw         $v1, 0x8($s0)
/* 1F6E4 8001EAE4 34420020 */  ori        $v0, $v0, 0x20
/* 1F6E8 8001EAE8 30630007 */  andi       $v1, $v1, 0x7
/* 1F6EC 8001EAEC AE020004 */  sw         $v0, 0x4($s0)
/* 1F6F0 8001EAF0 24020003 */  addiu      $v0, $zero, 0x3
/* 1F6F4 8001EAF4 1462000F */  bne        $v1, $v0, .L8001EB34
/* 1F6F8 8001EAF8 00000000 */   nop
/* 1F6FC 8001EAFC 8E220268 */  lw         $v0, 0x268($s1)
/* 1F700 8001EB00 AE020000 */  sw         $v0, 0x0($s0)
/* 1F704 8001EB04 8E220270 */  lw         $v0, 0x270($s1)
/* 1F708 8001EB08 1440000A */  bnez       $v0, .L8001EB34
/* 1F70C 8001EB0C AE300268 */   sw        $s0, 0x268($s1)
/* 1F710 8001EB10 08007ACD */  j          .L8001EB34
/* 1F714 8001EB14 AE300270 */   sw        $s0, 0x270($s1)
.L8001EB18:
/* 1F718 8001EB18 02202021 */  addu       $a0, $s1, $zero
.L8001EB1C:
/* 1F71C 8001EB1C 8E020004 */  lw         $v0, 0x4($s0)
/* 1F720 8001EB20 02002821 */  addu       $a1, $s0, $zero
/* 1F724 8001EB24 2403FFFD */  addiu      $v1, $zero, -0x3
/* 1F728 8001EB28 00431024 */  and        $v0, $v0, $v1
/* 1F72C 8001EB2C 0C007B1C */  jal        func_8001EC70
/* 1F730 8001EB30 ACA20004 */   sw        $v0, 0x4($a1)
.L8001EB34:
/* 1F734 8001EB34 8E220274 */  lw         $v0, 0x274($s1)
/* 1F738 8001EB38 8E230278 */  lw         $v1, 0x278($s1)
/* 1F73C 8001EB3C 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1F740 8001EB40 14600002 */  bnez       $v1, .L8001EB4C
/* 1F744 8001EB44 00028040 */   sll       $s0, $v0, 1
/* 1F748 8001EB48 36100001 */  ori        $s0, $s0, 0x1
.L8001EB4C:
/* 1F74C 8001EB4C 02202021 */  addu       $a0, $s1, $zero
/* 1F750 8001EB50 27A50010 */  addiu      $a1, $sp, 0x10
/* 1F754 8001EB54 27A60014 */  addiu      $a2, $sp, 0x14
/* 1F758 8001EB58 0C007B97 */  jal        func_8001EE5C
/* 1F75C 8001EB5C 02003821 */   addu      $a3, $s0, $zero
/* 1F760 8001EB60 10500005 */  beq        $v0, $s0, .L8001EB78
/* 1F764 8001EB64 00000000 */   nop
/* 1F768 8001EB68 8FA50010 */  lw         $a1, 0x10($sp)
/* 1F76C 8001EB6C 8FA60014 */  lw         $a2, 0x14($sp)
/* 1F770 8001EB70 0C007B55 */  jal        func_8001ED54
/* 1F774 8001EB74 02202021 */   addu      $a0, $s1, $zero
.L8001EB78:
/* 1F778 8001EB78 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1F77C 8001EB7C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1F780 8001EB80 8FB00018 */  lw         $s0, 0x18($sp)
/* 1F784 8001EB84 03E00008 */  jr         $ra
/* 1F788 8001EB88 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001EB8C
/* 1F78C 8001EB8C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F790 8001EB90 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1F794 8001EB94 00808821 */  addu       $s1, $a0, $zero
/* 1F798 8001EB98 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1F79C 8001EB9C AFB00018 */  sw         $s0, 0x18($sp)
/* 1F7A0 8001EBA0 8E250278 */  lw         $a1, 0x278($s1)
/* 1F7A4 8001EBA4 AFA00010 */  sw         $zero, 0x10($sp)
/* 1F7A8 8001EBA8 AFA00014 */  sw         $zero, 0x14($sp)
/* 1F7AC 8001EBAC AE200278 */  sw         $zero, 0x278($s1)
/* 1F7B0 8001EBB0 8CA20004 */  lw         $v0, 0x4($a1)
/* 1F7B4 8001EBB4 2403FFFE */  addiu      $v1, $zero, -0x2
/* 1F7B8 8001EBB8 00431024 */  and        $v0, $v0, $v1
/* 1F7BC 8001EBBC 0C007B1C */  jal        func_8001EC70
/* 1F7C0 8001EBC0 ACA20004 */   sw        $v0, 0x4($a1)
/* 1F7C4 8001EBC4 8E220274 */  lw         $v0, 0x274($s1)
/* 1F7C8 8001EBC8 8E230278 */  lw         $v1, 0x278($s1)
/* 1F7CC 8001EBCC 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1F7D0 8001EBD0 14600002 */  bnez       $v1, .L8001EBDC
/* 1F7D4 8001EBD4 00028040 */   sll       $s0, $v0, 1
/* 1F7D8 8001EBD8 36100001 */  ori        $s0, $s0, 0x1
.L8001EBDC:
/* 1F7DC 8001EBDC 02202021 */  addu       $a0, $s1, $zero
/* 1F7E0 8001EBE0 27A50010 */  addiu      $a1, $sp, 0x10
/* 1F7E4 8001EBE4 27A60014 */  addiu      $a2, $sp, 0x14
/* 1F7E8 8001EBE8 0C007B97 */  jal        func_8001EE5C
/* 1F7EC 8001EBEC 02003821 */   addu      $a3, $s0, $zero
/* 1F7F0 8001EBF0 10500005 */  beq        $v0, $s0, .L8001EC08
/* 1F7F4 8001EBF4 00000000 */   nop
/* 1F7F8 8001EBF8 8FA50010 */  lw         $a1, 0x10($sp)
/* 1F7FC 8001EBFC 8FA60014 */  lw         $a2, 0x14($sp)
/* 1F800 8001EC00 0C007B55 */  jal        func_8001ED54
/* 1F804 8001EC04 02202021 */   addu      $a0, $s1, $zero
.L8001EC08:
/* 1F808 8001EC08 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1F80C 8001EC0C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1F810 8001EC10 8FB00018 */  lw         $s0, 0x18($sp)
/* 1F814 8001EC14 03E00008 */  jr         $ra
/* 1F818 8001EC18 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001EC1C
/* 1F81C 8001EC1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F820 8001EC20 AFB10014 */  sw         $s1, 0x14($sp)
/* 1F824 8001EC24 00808821 */  addu       $s1, $a0, $zero
/* 1F828 8001EC28 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1F82C 8001EC2C 1220000A */  beqz       $s1, .L8001EC58
/* 1F830 8001EC30 AFB00010 */   sw        $s0, 0x10($sp)
/* 1F834 8001EC34 0C007F50 */  jal        osViGetCurrentFramebuffer
/* 1F838 8001EC38 00000000 */   nop
/* 1F83C 8001EC3C 0C007FA4 */  jal        osViGetNextFramebuffer
/* 1F840 8001EC40 00408021 */   addu      $s0, $v0, $zero
/* 1F844 8001EC44 02028026 */  xor        $s0, $s0, $v0
/* 1F848 8001EC48 2E100001 */  sltiu      $s0, $s0, 0x1
/* 1F84C 8001EC4C 00108023 */  negu       $s0, $s0
/* 1F850 8001EC50 08007B17 */  j          .L8001EC5C
/* 1F854 8001EC54 02301024 */   and       $v0, $s1, $s0
.L8001EC58:
/* 1F858 8001EC58 00001021 */  addu       $v0, $zero, $zero
.L8001EC5C:
/* 1F85C 8001EC5C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1F860 8001EC60 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F864 8001EC64 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F868 8001EC68 03E00008 */  jr         $ra
/* 1F86C 8001EC6C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001EC70
/* 1F870 8001EC70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F874 8001EC74 AFB00010 */  sw         $s0, 0x10($sp)
/* 1F878 8001EC78 00A08021 */  addu       $s0, $a1, $zero
/* 1F87C 8001EC7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F880 8001EC80 8E020004 */  lw         $v0, 0x4($s0)
/* 1F884 8001EC84 30420003 */  andi       $v0, $v0, 0x3
/* 1F888 8001EC88 14400018 */  bnez       $v0, .L8001ECEC
/* 1F88C 8001EC8C 00001021 */   addu      $v0, $zero, $zero
/* 1F890 8001EC90 8E040050 */  lw         $a0, 0x50($s0)
/* 1F894 8001EC94 8E050054 */  lw         $a1, 0x54($s0)
/* 1F898 8001EC98 0C00776C */  jal        osSendMesg
/* 1F89C 8001EC9C 24060001 */   addiu     $a2, $zero, 0x1
/* 1F8A0 8001ECA0 8E030010 */  lw         $v1, 0x10($s0)
/* 1F8A4 8001ECA4 24020001 */  addiu      $v0, $zero, 0x1
/* 1F8A8 8001ECA8 14620010 */  bne        $v1, $v0, .L8001ECEC
/* 1F8AC 8001ECAC 24030060 */   addiu     $v1, $zero, 0x60
/* 1F8B0 8001ECB0 8E020008 */  lw         $v0, 0x8($s0)
/* 1F8B4 8001ECB4 30420060 */  andi       $v0, $v0, 0x60
/* 1F8B8 8001ECB8 1443000C */  bne        $v0, $v1, .L8001ECEC
/* 1F8BC 8001ECBC 24020001 */   addiu     $v0, $zero, 0x1
/* 1F8C0 8001ECC0 3C028003 */  lui        $v0, %hi(D_8003108C)
/* 1F8C4 8001ECC4 8C42108C */  lw         $v0, %lo(D_8003108C)($v0)
/* 1F8C8 8001ECC8 10400005 */  beqz       $v0, .L8001ECE0
/* 1F8CC 8001ECCC 00000000 */   nop
/* 1F8D0 8001ECD0 0C0081E8 */  jal        osViBlack
/* 1F8D4 8001ECD4 00002021 */   addu      $a0, $zero, $zero
/* 1F8D8 8001ECD8 3C018003 */  lui        $at, %hi(D_8003108C)
/* 1F8DC 8001ECDC AC20108C */  sw         $zero, %lo(D_8003108C)($at)
.L8001ECE0:
/* 1F8E0 8001ECE0 0C008110 */  jal        osViSwapBuffer
/* 1F8E4 8001ECE4 8E04000C */   lw        $a0, 0xC($s0)
/* 1F8E8 8001ECE8 24020001 */  addiu      $v0, $zero, 0x1
.L8001ECEC:
/* 1F8EC 8001ECEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F8F0 8001ECF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F8F4 8001ECF4 03E00008 */  jr         $ra
/* 1F8F8 8001ECF8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001ECFC
/* 1F8FC 8001ECFC 8CA30010 */  lw         $v1, 0x10($a1)
/* 1F900 8001ED00 24020002 */  addiu      $v0, $zero, 0x2
/* 1F904 8001ED04 14620009 */  bne        $v1, $v0, .L8001ED2C
/* 1F908 8001ED08 00000000 */   nop
/* 1F90C 8001ED0C 8C82026C */  lw         $v0, 0x26C($a0)
/* 1F910 8001ED10 50400002 */  beql       $v0, $zero, .L8001ED1C
/* 1F914 8001ED14 AC850264 */   sw        $a1, 0x264($a0)
/* 1F918 8001ED18 AC450000 */  sw         $a1, 0x0($v0)
.L8001ED1C:
/* 1F91C 8001ED1C 24020001 */  addiu      $v0, $zero, 0x1
/* 1F920 8001ED20 AC85026C */  sw         $a1, 0x26C($a0)
/* 1F924 8001ED24 08007B50 */  j          .L8001ED40
/* 1F928 8001ED28 AC820280 */   sw        $v0, 0x280($a0)
.L8001ED2C:
/* 1F92C 8001ED2C 8C820270 */  lw         $v0, 0x270($a0)
/* 1F930 8001ED30 50400002 */  beql       $v0, $zero, .L8001ED3C
/* 1F934 8001ED34 AC850268 */   sw        $a1, 0x268($a0)
/* 1F938 8001ED38 AC450000 */  sw         $a1, 0x0($v0)
.L8001ED3C:
/* 1F93C 8001ED3C AC850270 */  sw         $a1, 0x270($a0)
.L8001ED40:
/* 1F940 8001ED40 8CA20008 */  lw         $v0, 0x8($a1)
/* 1F944 8001ED44 ACA00000 */  sw         $zero, 0x0($a1)
/* 1F948 8001ED48 30420003 */  andi       $v0, $v0, 0x3
/* 1F94C 8001ED4C 03E00008 */  jr         $ra
/* 1F950 8001ED50 ACA20004 */   sw        $v0, 0x4($a1)

glabel func_8001ED54
/* 1F954 8001ED54 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F958 8001ED58 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1F95C 8001ED5C 00809821 */  addu       $s3, $a0, $zero
/* 1F960 8001ED60 AFB10014 */  sw         $s1, 0x14($sp)
/* 1F964 8001ED64 00A08821 */  addu       $s1, $a1, $zero
/* 1F968 8001ED68 AFB20018 */  sw         $s2, 0x18($sp)
/* 1F96C 8001ED6C 00C09021 */  addu       $s2, $a2, $zero
/* 1F970 8001ED70 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1F974 8001ED74 12200013 */  beqz       $s1, .L8001EDC4
/* 1F978 8001ED78 AFB00010 */   sw        $s0, 0x10($sp)
/* 1F97C 8001ED7C 8E230010 */  lw         $v1, 0x10($s1)
/* 1F980 8001ED80 24020002 */  addiu      $v0, $zero, 0x2
/* 1F984 8001ED84 14620003 */  bne        $v1, $v0, .L8001ED94
/* 1F988 8001ED88 00000000 */   nop
/* 1F98C 8001ED8C 0C006A40 */  jal        osWritebackDCacheAll
/* 1F990 8001ED90 00000000 */   nop
.L8001ED94:
/* 1F994 8001ED94 8E220004 */  lw         $v0, 0x4($s1)
/* 1F998 8001ED98 26300010 */  addiu      $s0, $s1, 0x10
/* 1F99C 8001ED9C 02002021 */  addu       $a0, $s0, $zero
/* 1F9A0 8001EDA0 2403FFCF */  addiu      $v1, $zero, -0x31
/* 1F9A4 8001EDA4 00431024 */  and        $v0, $v0, $v1
/* 1F9A8 8001EDA8 0C0077E4 */  jal        osSpTaskLoad
/* 1F9AC 8001EDAC AE220004 */   sw        $v0, 0x4($s1)
/* 1F9B0 8001EDB0 0C007867 */  jal        osSpTaskStartGo
/* 1F9B4 8001EDB4 02002021 */   addu      $a0, $s0, $zero
/* 1F9B8 8001EDB8 16320002 */  bne        $s1, $s2, .L8001EDC4
/* 1F9BC 8001EDBC AE710274 */   sw        $s1, 0x274($s3)
/* 1F9C0 8001EDC0 AE720278 */  sw         $s2, 0x278($s3)
.L8001EDC4:
/* 1F9C4 8001EDC4 0012182B */  sltu       $v1, $zero, $s2
/* 1F9C8 8001EDC8 02511026 */  xor        $v0, $s2, $s1
/* 1F9CC 8001EDCC 0002102B */  sltu       $v0, $zero, $v0
/* 1F9D0 8001EDD0 00621824 */  and        $v1, $v1, $v0
/* 1F9D4 8001EDD4 1060000C */  beqz       $v1, .L8001EE08
/* 1F9D8 8001EDD8 00000000 */   nop
/* 1F9DC 8001EDDC 8E42003C */  lw         $v0, 0x3C($s2)
/* 1F9E0 8001EDE0 8E440038 */  lw         $a0, 0x38($s2)
/* 1F9E4 8001EDE4 8C460000 */  lw         $a2, 0x0($v0)
/* 1F9E8 8001EDE8 0C007C1C */  jal        func_8001F070
/* 1F9EC 8001EDEC 8C470004 */   lw        $a3, 0x4($v0)
/* 1F9F0 8001EDF0 24020001 */  addiu      $v0, $zero, 0x1
/* 1F9F4 8001EDF4 3C018003 */  lui        $at, %hi(D_80031084)
/* 1F9F8 8001EDF8 AC221084 */  sw         $v0, %lo(D_80031084)($at)
/* 1F9FC 8001EDFC 3C018003 */  lui        $at, %hi(D_80031088)
/* 1FA00 8001EE00 AC201088 */  sw         $zero, %lo(D_80031088)($at)
/* 1FA04 8001EE04 AE720278 */  sw         $s2, 0x278($s3)
.L8001EE08:
/* 1FA08 8001EE08 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1FA0C 8001EE0C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1FA10 8001EE10 8FB20018 */  lw         $s2, 0x18($sp)
/* 1FA14 8001EE14 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FA18 8001EE18 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FA1C 8001EE1C 03E00008 */  jr         $ra
/* 1FA20 8001EE20 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001EE24
/* 1FA24 8001EE24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FA28 8001EE28 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1FA2C 8001EE2C 8C840274 */  lw         $a0, 0x274($a0)
/* 1FA30 8001EE30 8C830010 */  lw         $v1, 0x10($a0)
/* 1FA34 8001EE34 24020001 */  addiu      $v0, $zero, 0x1
/* 1FA38 8001EE38 14620005 */  bne        $v1, $v0, .L8001EE50
/* 1FA3C 8001EE3C 00000000 */   nop
/* 1FA40 8001EE40 8C820004 */  lw         $v0, 0x4($a0)
/* 1FA44 8001EE44 34420010 */  ori        $v0, $v0, 0x10
/* 1FA48 8001EE48 0C007978 */  jal        osSpTaskYield
/* 1FA4C 8001EE4C AC820004 */   sw        $v0, 0x4($a0)
.L8001EE50:
/* 1FA50 8001EE50 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1FA54 8001EE54 03E00008 */  jr         $ra
/* 1FA58 8001EE58 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001EE5C
/* 1FA5C 8001EE5C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1FA60 8001EE60 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1FA64 8001EE64 00809821 */  addu       $s3, $a0, $zero
/* 1FA68 8001EE68 AFB40020 */  sw         $s4, 0x20($sp)
/* 1FA6C 8001EE6C 00A0A021 */  addu       $s4, $a1, $zero
/* 1FA70 8001EE70 AFB50024 */  sw         $s5, 0x24($sp)
/* 1FA74 8001EE74 00C0A821 */  addu       $s5, $a2, $zero
/* 1FA78 8001EE78 AFB20018 */  sw         $s2, 0x18($sp)
/* 1FA7C 8001EE7C 00E09021 */  addu       $s2, $a3, $zero
/* 1FA80 8001EE80 AFB60028 */  sw         $s6, 0x28($sp)
/* 1FA84 8001EE84 AFBF002C */  sw         $ra, 0x2C($sp)
/* 1FA88 8001EE88 AFB10014 */  sw         $s1, 0x14($sp)
/* 1FA8C 8001EE8C AFB00010 */  sw         $s0, 0x10($sp)
/* 1FA90 8001EE90 8E620280 */  lw         $v0, 0x280($s3)
/* 1FA94 8001EE94 8E710268 */  lw         $s1, 0x268($s3)
/* 1FA98 8001EE98 8E630264 */  lw         $v1, 0x264($s3)
/* 1FA9C 8001EE9C 10400014 */  beqz       $v0, .L8001EEF0
/* 1FAA0 8001EEA0 0240B021 */   addu      $s6, $s2, $zero
/* 1FAA4 8001EEA4 32420002 */  andi       $v0, $s2, 0x2
/* 1FAA8 8001EEA8 10400011 */  beqz       $v0, .L8001EEF0
/* 1FAAC 8001EEAC 00000000 */   nop
/* 1FAB0 8001EEB0 52200006 */  beql       $s1, $zero, .L8001EECC
/* 1FAB4 8001EEB4 AE830000 */   sw        $v1, 0x0($s4)
/* 1FAB8 8001EEB8 8E220008 */  lw         $v0, 0x8($s1)
/* 1FABC 8001EEBC 30420010 */  andi       $v0, $v0, 0x10
/* 1FAC0 8001EEC0 54400049 */  bnel       $v0, $zero, .L8001EFE8
/* 1FAC4 8001EEC4 AE910000 */   sw        $s1, 0x0($s4)
/* 1FAC8 8001EEC8 AE830000 */  sw         $v1, 0x0($s4)
.L8001EECC:
/* 1FACC 8001EECC 8E620264 */  lw         $v0, 0x264($s3)
/* 1FAD0 8001EED0 AE600280 */  sw         $zero, 0x280($s3)
/* 1FAD4 8001EED4 8C430000 */  lw         $v1, 0x0($v0)
/* 1FAD8 8001EED8 2402FFFD */  addiu      $v0, $zero, -0x3
/* 1FADC 8001EEDC 02429024 */  and        $s2, $s2, $v0
/* 1FAE0 8001EEE0 14600051 */  bnez       $v1, L8001F028
/* 1FAE4 8001EEE4 AE630264 */   sw        $v1, 0x264($s3)
/* 1FAE8 8001EEE8 08007C0A */  j          L8001F028
/* 1FAEC 8001EEEC AE60026C */   sw        $zero, 0x26C($s3)
.L8001EEF0:
/* 1FAF0 8001EEF0 52200009 */  beql       $s1, $zero, .L8001EF18
/* 1FAF4 8001EEF4 00001021 */   addu      $v0, $zero, $zero
/* 1FAF8 8001EEF8 0C007F50 */  jal        osViGetCurrentFramebuffer
/* 1FAFC 8001EEFC 00000000 */   nop
/* 1FB00 8001EF00 0C007FA4 */  jal        osViGetNextFramebuffer
/* 1FB04 8001EF04 00408021 */   addu      $s0, $v0, $zero
/* 1FB08 8001EF08 02028026 */  xor        $s0, $s0, $v0
/* 1FB0C 8001EF0C 2E100001 */  sltiu      $s0, $s0, 0x1
/* 1FB10 8001EF10 00108023 */  negu       $s0, $s0
/* 1FB14 8001EF14 02301024 */  and        $v0, $s1, $s0
.L8001EF18:
/* 1FB18 8001EF18 10400043 */  beqz       $v0, L8001F028
/* 1FB1C 8001EF1C 00000000 */   nop
/* 1FB20 8001EF20 8E220008 */  lw         $v0, 0x8($s1)
/* 1FB24 8001EF24 30420007 */  andi       $v0, $v0, 0x7
/* 1FB28 8001EF28 2443FFFF */  addiu      $v1, $v0, -0x1
/* 1FB2C 8001EF2C 2C620007 */  sltiu      $v0, $v1, 0x7
/* 1FB30 8001EF30 1040003D */  beqz       $v0, L8001F028
/* 1FB34 8001EF34 00031080 */   sll       $v0, $v1, 2
/* 1FB38 8001EF38 3C018000 */  lui        $at, %hi(jtbl_800019E0)
/* 1FB3C 8001EF3C 00220821 */  addu       $at, $at, $v0
/* 1FB40 8001EF40 8C2219E0 */  lw         $v0, %lo(jtbl_800019E0)($at)
/* 1FB44 8001EF44 00400008 */  jr         $v0
/* 1FB48 8001EF48 00000000 */   nop
glabel L8001EF4C
/* 1FB4C 8001EF4C 8E220004 */  lw         $v0, 0x4($s1)
/* 1FB50 8001EF50 30420020 */  andi       $v0, $v0, 0x20
/* 1FB54 8001EF54 10400011 */  beqz       $v0, .L8001EF9C
/* 1FB58 8001EF58 32420002 */   andi      $v0, $s2, 0x2
/* 1FB5C 8001EF5C 10400032 */  beqz       $v0, L8001F028
/* 1FB60 8001EF60 2403FFFD */   addiu     $v1, $zero, -0x3
/* 1FB64 8001EF64 AE910000 */  sw         $s1, 0x0($s4)
/* 1FB68 8001EF68 8E220004 */  lw         $v0, 0x4($s1)
/* 1FB6C 8001EF6C 30420001 */  andi       $v0, $v0, 0x1
/* 1FB70 8001EF70 10400004 */  beqz       $v0, .L8001EF84
/* 1FB74 8001EF74 02439024 */   and       $s2, $s2, $v1
/* 1FB78 8001EF78 AEB10000 */  sw         $s1, 0x0($s5)
/* 1FB7C 8001EF7C 2402FFFE */  addiu      $v0, $zero, -0x2
/* 1FB80 8001EF80 02429024 */  and        $s2, $s2, $v0
.L8001EF84:
/* 1FB84 8001EF84 8E620268 */  lw         $v0, 0x268($s3)
/* 1FB88 8001EF88 8C420000 */  lw         $v0, 0x0($v0)
/* 1FB8C 8001EF8C 14400026 */  bnez       $v0, L8001F028
/* 1FB90 8001EF90 AE620268 */   sw        $v0, 0x268($s3)
/* 1FB94 8001EF94 08007C0A */  j          L8001F028
/* 1FB98 8001EF98 AE600270 */   sw        $zero, 0x270($s3)
.L8001EF9C:
/* 1FB9C 8001EF9C 24020003 */  addiu      $v0, $zero, 0x3
/* 1FBA0 8001EFA0 16420021 */  bne        $s2, $v0, L8001F028
/* 1FBA4 8001EFA4 00000000 */   nop
/* 1FBA8 8001EFA8 AEB10000 */  sw         $s1, 0x0($s5)
/* 1FBAC 8001EFAC AE910000 */  sw         $s1, 0x0($s4)
/* 1FBB0 8001EFB0 8E620268 */  lw         $v0, 0x268($s3)
/* 1FBB4 8001EFB4 8C420000 */  lw         $v0, 0x0($v0)
/* 1FBB8 8001EFB8 00009021 */  addu       $s2, $zero, $zero
/* 1FBBC 8001EFBC 1440001A */  bnez       $v0, L8001F028
/* 1FBC0 8001EFC0 AE620268 */   sw        $v0, 0x268($s3)
/* 1FBC4 8001EFC4 08007C0A */  j          L8001F028
/* 1FBC8 8001EFC8 AE600270 */   sw        $zero, 0x270($s3)
glabel L8001EFCC
/* 1FBCC 8001EFCC 8E230004 */  lw         $v1, 0x4($s1)
/* 1FBD0 8001EFD0 30620002 */  andi       $v0, $v1, 0x2
/* 1FBD4 8001EFD4 10400007 */  beqz       $v0, .L8001EFF4
/* 1FBD8 8001EFD8 32420002 */   andi      $v0, $s2, 0x2
/* 1FBDC 8001EFDC 10400012 */  beqz       $v0, L8001F028
/* 1FBE0 8001EFE0 00000000 */   nop
/* 1FBE4 8001EFE4 AE910000 */  sw         $s1, 0x0($s4)
.L8001EFE8:
/* 1FBE8 8001EFE8 2402FFFD */  addiu      $v0, $zero, -0x3
/* 1FBEC 8001EFEC 08007C0A */  j          L8001F028
/* 1FBF0 8001EFF0 02429024 */   and       $s2, $s2, $v0
.L8001EFF4:
/* 1FBF4 8001EFF4 30620001 */  andi       $v0, $v1, 0x1
/* 1FBF8 8001EFF8 1040000B */  beqz       $v0, L8001F028
/* 1FBFC 8001EFFC 32420001 */   andi      $v0, $s2, 0x1
/* 1FC00 8001F000 10400009 */  beqz       $v0, L8001F028
/* 1FC04 8001F004 00000000 */   nop
/* 1FC08 8001F008 AEB10000 */  sw         $s1, 0x0($s5)
/* 1FC0C 8001F00C 8E620268 */  lw         $v0, 0x268($s3)
/* 1FC10 8001F010 8C430000 */  lw         $v1, 0x0($v0)
/* 1FC14 8001F014 2402FFFE */  addiu      $v0, $zero, -0x2
/* 1FC18 8001F018 02429024 */  and        $s2, $s2, $v0
/* 1FC1C 8001F01C 14600002 */  bnez       $v1, L8001F028
/* 1FC20 8001F020 AE630268 */   sw        $v1, 0x268($s3)
/* 1FC24 8001F024 AE600270 */  sw         $zero, 0x270($s3)
glabel L8001F028
/* 1FC28 8001F028 12560006 */  beq        $s2, $s6, .L8001F044
/* 1FC2C 8001F02C 02602021 */   addu      $a0, $s3, $zero
/* 1FC30 8001F030 02802821 */  addu       $a1, $s4, $zero
/* 1FC34 8001F034 02A03021 */  addu       $a2, $s5, $zero
/* 1FC38 8001F038 0C007B97 */  jal        func_8001EE5C
/* 1FC3C 8001F03C 02403821 */   addu      $a3, $s2, $zero
/* 1FC40 8001F040 00409021 */  addu       $s2, $v0, $zero
.L8001F044:
/* 1FC44 8001F044 02401021 */  addu       $v0, $s2, $zero
/* 1FC48 8001F048 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1FC4C 8001F04C 8FB60028 */  lw         $s6, 0x28($sp)
/* 1FC50 8001F050 8FB50024 */  lw         $s5, 0x24($sp)
/* 1FC54 8001F054 8FB40020 */  lw         $s4, 0x20($sp)
/* 1FC58 8001F058 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1FC5C 8001F05C 8FB20018 */  lw         $s2, 0x18($sp)
/* 1FC60 8001F060 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FC64 8001F064 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FC68 8001F068 03E00008 */  jr         $ra
/* 1FC6C 8001F06C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001F070
/* 1FC70 8001F070 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FC74 8001F074 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FC78 8001F078 00808021 */  addu       $s0, $a0, $zero
/* 1FC7C 8001F07C AFB30018 */  sw         $s3, 0x18($sp)
/* 1FC80 8001F080 AFB20014 */  sw         $s2, 0x14($sp)
/* 1FC84 8001F084 00C09021 */  addu       $s2, $a2, $zero
/* 1FC88 8001F088 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1FC8C 8001F08C 0C007C44 */  jal        func_8001F110
/* 1FC90 8001F090 00E09821 */   addu      $s3, $a3, $zero
/* 1FC94 8001F094 14400016 */  bnez       $v0, .L8001F0F0
/* 1FC98 8001F098 2402FFFF */   addiu     $v0, $zero, -0x1
/* 1FC9C 8001F09C 3C03A410 */  lui        $v1, (0xA410000C >> 16)
/* 1FCA0 8001F0A0 3463000C */  ori        $v1, $v1, (0xA410000C & 0xFFFF)
/* 1FCA4 8001F0A4 24020001 */  addiu      $v0, $zero, 0x1
/* 1FCA8 8001F0A8 AC620000 */  sw         $v0, 0x0($v1)
/* 1FCAC 8001F0AC 3C03A410 */  lui        $v1, (0xA410000C >> 16)
/* 1FCB0 8001F0B0 3463000C */  ori        $v1, $v1, (0xA410000C & 0xFFFF)
.L8001F0B4:
/* 1FCB4 8001F0B4 8C620000 */  lw         $v0, 0x0($v1)
/* 1FCB8 8001F0B8 30420001 */  andi       $v0, $v0, 0x1
/* 1FCBC 8001F0BC 1440FFFD */  bnez       $v0, .L8001F0B4
/* 1FCC0 8001F0C0 00000000 */   nop
/* 1FCC4 8001F0C4 0C006BB0 */  jal        osVirtualToPhysical
/* 1FCC8 8001F0C8 02002021 */   addu      $a0, $s0, $zero
/* 1FCCC 8001F0CC 02002021 */  addu       $a0, $s0, $zero
/* 1FCD0 8001F0D0 3C03A410 */  lui        $v1, %hi(D_A4100000)
/* 1FCD4 8001F0D4 0C006BB0 */  jal        osVirtualToPhysical
/* 1FCD8 8001F0D8 AC620000 */   sw        $v0, %lo(D_A4100000)($v1)
/* 1FCDC 8001F0DC 3C04A410 */  lui        $a0, (0xA4100004 >> 16)
/* 1FCE0 8001F0E0 34840004 */  ori        $a0, $a0, (0xA4100004 & 0xFFFF)
/* 1FCE4 8001F0E4 02621821 */  addu       $v1, $s3, $v0
/* 1FCE8 8001F0E8 00001021 */  addu       $v0, $zero, $zero
/* 1FCEC 8001F0EC AC830000 */  sw         $v1, 0x0($a0)
.L8001F0F0:
/* 1FCF0 8001F0F0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1FCF4 8001F0F4 8FB30018 */  lw         $s3, 0x18($sp)
/* 1FCF8 8001F0F8 8FB20014 */  lw         $s2, 0x14($sp)
/* 1FCFC 8001F0FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FD00 8001F100 03E00008 */  jr         $ra
/* 1FD04 8001F104 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1FD08 8001F108 00000000 */  nop
/* 1FD0C 8001F10C 00000000 */  nop
