.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel func_80024660
/* 25260 80024660 00E04821 */  addu       $t1, $a3, $zero
/* 25264 80024664 00C04021 */  addu       $t0, $a2, $zero
/* 25268 80024668 150000E8 */  bnez       $t0, .L80024A0C
/* 2526C 8002466C 00A05821 */   addu      $t3, $a1, $zero
/* 25270 80024670 0089102B */  sltu       $v0, $a0, $t1
/* 25274 80024674 10400051 */  beqz       $v0, .L800247BC
/* 25278 80024678 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 2527C 8002467C 0049102B */  sltu       $v0, $v0, $t1
/* 25280 80024680 14400005 */  bnez       $v0, .L80024698
/* 25284 80024684 00E01821 */   addu      $v1, $a3, $zero
/* 25288 80024688 2D220100 */  sltiu      $v0, $t1, 0x100
/* 2528C 8002468C 38420001 */  xori       $v0, $v0, 0x1
/* 25290 80024690 080091AC */  j          .L800246B0
/* 25294 80024694 000240C0 */   sll       $t0, $v0, 3
.L80024698:
/* 25298 80024698 3C0200FF */  lui        $v0, (0xFFFFFF >> 16)
/* 2529C 8002469C 3442FFFF */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 252A0 800246A0 0049102B */  sltu       $v0, $v0, $t1
/* 252A4 800246A4 14400002 */  bnez       $v0, .L800246B0
/* 252A8 800246A8 24080018 */   addiu     $t0, $zero, 0x18
/* 252AC 800246AC 24080010 */  addiu      $t0, $zero, 0x10
.L800246B0:
/* 252B0 800246B0 3C028000 */  lui        $v0, %hi(__clz_tab_1)
/* 252B4 800246B4 24421250 */  addiu      $v0, $v0, %lo(__clz_tab_1)
/* 252B8 800246B8 01031806 */  srlv       $v1, $v1, $t0
/* 252BC 800246BC 00621821 */  addu       $v1, $v1, $v0
/* 252C0 800246C0 90620000 */  lbu        $v0, 0x0($v1)
/* 252C4 800246C4 24050020 */  addiu      $a1, $zero, 0x20
/* 252C8 800246C8 00481021 */  addu       $v0, $v0, $t0
/* 252CC 800246CC 00A23023 */  subu       $a2, $a1, $v0
/* 252D0 800246D0 10C00006 */  beqz       $a2, .L800246EC
/* 252D4 800246D4 00C41804 */   sllv      $v1, $a0, $a2
/* 252D8 800246D8 00C94804 */  sllv       $t1, $t1, $a2
/* 252DC 800246DC 00A61023 */  subu       $v0, $a1, $a2
/* 252E0 800246E0 004B1006 */  srlv       $v0, $t3, $v0
/* 252E4 800246E4 00622025 */  or         $a0, $v1, $v0
/* 252E8 800246E8 00CB5804 */  sllv       $t3, $t3, $a2
.L800246EC:
/* 252EC 800246EC 00093402 */  srl        $a2, $t1, 16
/* 252F0 800246F0 0086001B */  divu       $zero, $a0, $a2
/* 252F4 800246F4 14C00002 */  bnez       $a2, .L80024700
/* 252F8 800246F8 00000000 */   nop
/* 252FC 800246FC 0007000D */  break      7
.L80024700:
/* 25300 80024700 00003812 */  mflo       $a3
/* 25304 80024704 00001810 */  mfhi       $v1
/* 25308 80024708 3128FFFF */  andi       $t0, $t1, 0xFFFF
/* 2530C 8002470C 00000000 */  nop
/* 25310 80024710 00E80018 */  mult       $a3, $t0
/* 25314 80024714 000B1402 */  srl        $v0, $t3, 16
/* 25318 80024718 00031C00 */  sll        $v1, $v1, 16
/* 2531C 8002471C 00621825 */  or         $v1, $v1, $v0
/* 25320 80024720 00002812 */  mflo       $a1
/* 25324 80024724 0065102B */  sltu       $v0, $v1, $a1
/* 25328 80024728 5040000B */  beql       $v0, $zero, .L80024758
/* 2532C 8002472C 00651823 */   subu      $v1, $v1, $a1
/* 25330 80024730 00691821 */  addu       $v1, $v1, $t1
/* 25334 80024734 0069102B */  sltu       $v0, $v1, $t1
/* 25338 80024738 14400006 */  bnez       $v0, .L80024754
/* 2533C 8002473C 24E7FFFF */   addiu     $a3, $a3, -0x1
/* 25340 80024740 0065102B */  sltu       $v0, $v1, $a1
/* 25344 80024744 50400004 */  beql       $v0, $zero, .L80024758
/* 25348 80024748 00651823 */   subu      $v1, $v1, $a1
/* 2534C 8002474C 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 25350 80024750 00691821 */  addu       $v1, $v1, $t1
.L80024754:
/* 25354 80024754 00651823 */  subu       $v1, $v1, $a1
.L80024758:
/* 25358 80024758 0066001B */  divu       $zero, $v1, $a2
/* 2535C 8002475C 14C00002 */  bnez       $a2, .L80024768
/* 25360 80024760 00000000 */   nop
/* 25364 80024764 0007000D */  break      7
.L80024768:
/* 25368 80024768 00002012 */  mflo       $a0
/* 2536C 8002476C 00001810 */  mfhi       $v1
/* 25370 80024770 00000000 */  nop
/* 25374 80024774 00000000 */  nop
/* 25378 80024778 00880018 */  mult       $a0, $t0
/* 2537C 8002477C 3162FFFF */  andi       $v0, $t3, 0xFFFF
/* 25380 80024780 00031C00 */  sll        $v1, $v1, 16
/* 25384 80024784 00621825 */  or         $v1, $v1, $v0
/* 25388 80024788 00002812 */  mflo       $a1
/* 2538C 8002478C 0065102B */  sltu       $v0, $v1, $a1
/* 25390 80024790 10400007 */  beqz       $v0, .L800247B0
/* 25394 80024794 00691821 */   addu      $v1, $v1, $t1
/* 25398 80024798 0069102B */  sltu       $v0, $v1, $t1
/* 2539C 8002479C 14400004 */  bnez       $v0, .L800247B0
/* 253A0 800247A0 2484FFFF */   addiu     $a0, $a0, -0x1
/* 253A4 800247A4 0065102B */  sltu       $v0, $v1, $a1
/* 253A8 800247A8 54400001 */  bnel       $v0, $zero, .L800247B0
/* 253AC 800247AC 2484FFFF */   addiu     $a0, $a0, -0x1
.L800247B0:
/* 253B0 800247B0 00071400 */  sll        $v0, $a3, 16
/* 253B4 800247B4 080092F3 */  j          .L80024BCC
/* 253B8 800247B8 00443025 */   or        $a2, $v0, $a0
.L800247BC:
/* 253BC 800247BC 15200009 */  bnez       $t1, .L800247E4
/* 253C0 800247C0 0049102B */   sltu      $v0, $v0, $t1
/* 253C4 800247C4 24020001 */  addiu      $v0, $zero, 0x1
/* 253C8 800247C8 0048001B */  divu       $zero, $v0, $t0
/* 253CC 800247CC 15000002 */  bnez       $t0, .L800247D8
/* 253D0 800247D0 00000000 */   nop
/* 253D4 800247D4 0007000D */  break      7
.L800247D8:
/* 253D8 800247D8 00004812 */  mflo       $t1
/* 253DC 800247DC 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 253E0 800247E0 0049102B */  sltu       $v0, $v0, $t1
.L800247E4:
/* 253E4 800247E4 14400005 */  bnez       $v0, .L800247FC
/* 253E8 800247E8 01201821 */   addu      $v1, $t1, $zero
/* 253EC 800247EC 2D220100 */  sltiu      $v0, $t1, 0x100
/* 253F0 800247F0 38420001 */  xori       $v0, $v0, 0x1
/* 253F4 800247F4 08009205 */  j          .L80024814
/* 253F8 800247F8 000230C0 */   sll       $a2, $v0, 3
.L800247FC:
/* 253FC 800247FC 3C0200FF */  lui        $v0, (0xFFFFFF >> 16)
/* 25400 80024800 3442FFFF */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 25404 80024804 0049102B */  sltu       $v0, $v0, $t1
/* 25408 80024808 14400002 */  bnez       $v0, .L80024814
/* 2540C 8002480C 24060018 */   addiu     $a2, $zero, 0x18
/* 25410 80024810 24060010 */  addiu      $a2, $zero, 0x10
.L80024814:
/* 25414 80024814 3C028000 */  lui        $v0, %hi(__clz_tab_1)
/* 25418 80024818 24421250 */  addiu      $v0, $v0, %lo(__clz_tab_1)
/* 2541C 8002481C 00C31806 */  srlv       $v1, $v1, $a2
/* 25420 80024820 00621821 */  addu       $v1, $v1, $v0
/* 25424 80024824 90620000 */  lbu        $v0, 0x0($v1)
/* 25428 80024828 24030020 */  addiu      $v1, $zero, 0x20
/* 2542C 8002482C 00461021 */  addu       $v0, $v0, $a2
/* 25430 80024830 00623023 */  subu       $a2, $v1, $v0
/* 25434 80024834 14C00004 */  bnez       $a2, .L80024848
/* 25438 80024838 00662823 */   subu      $a1, $v1, $a2
/* 2543C 8002483C 00892023 */  subu       $a0, $a0, $t1
/* 25440 80024840 0800924F */  j          .L8002493C
/* 25444 80024844 240A0001 */   addiu     $t2, $zero, 0x1
.L80024848:
/* 25448 80024848 00C94804 */  sllv       $t1, $t1, $a2
/* 2544C 8002484C 00A43806 */  srlv       $a3, $a0, $a1
/* 25450 80024850 00C41804 */  sllv       $v1, $a0, $a2
/* 25454 80024854 00AB1006 */  srlv       $v0, $t3, $a1
/* 25458 80024858 00622025 */  or         $a0, $v1, $v0
/* 2545C 8002485C 00CB5804 */  sllv       $t3, $t3, $a2
/* 25460 80024860 00093402 */  srl        $a2, $t1, 16
/* 25464 80024864 00E6001B */  divu       $zero, $a3, $a2
/* 25468 80024868 14C00002 */  bnez       $a2, .L80024874
/* 2546C 8002486C 00000000 */   nop
/* 25470 80024870 0007000D */  break      7
.L80024874:
/* 25474 80024874 00004012 */  mflo       $t0
/* 25478 80024878 00001810 */  mfhi       $v1
/* 2547C 8002487C 3125FFFF */  andi       $a1, $t1, 0xFFFF
/* 25480 80024880 00000000 */  nop
/* 25484 80024884 01050018 */  mult       $t0, $a1
/* 25488 80024888 00041402 */  srl        $v0, $a0, 16
/* 2548C 8002488C 00031C00 */  sll        $v1, $v1, 16
/* 25490 80024890 00621825 */  or         $v1, $v1, $v0
/* 25494 80024894 00003812 */  mflo       $a3
/* 25498 80024898 0067102B */  sltu       $v0, $v1, $a3
/* 2549C 8002489C 5040000B */  beql       $v0, $zero, .L800248CC
/* 254A0 800248A0 00671823 */   subu      $v1, $v1, $a3
/* 254A4 800248A4 00691821 */  addu       $v1, $v1, $t1
/* 254A8 800248A8 0069102B */  sltu       $v0, $v1, $t1
/* 254AC 800248AC 14400006 */  bnez       $v0, .L800248C8
/* 254B0 800248B0 2508FFFF */   addiu     $t0, $t0, -0x1
/* 254B4 800248B4 0067102B */  sltu       $v0, $v1, $a3
/* 254B8 800248B8 50400004 */  beql       $v0, $zero, .L800248CC
/* 254BC 800248BC 00671823 */   subu      $v1, $v1, $a3
/* 254C0 800248C0 2508FFFF */  addiu      $t0, $t0, -0x1
/* 254C4 800248C4 00691821 */  addu       $v1, $v1, $t1
.L800248C8:
/* 254C8 800248C8 00671823 */  subu       $v1, $v1, $a3
.L800248CC:
/* 254CC 800248CC 0066001B */  divu       $zero, $v1, $a2
/* 254D0 800248D0 14C00002 */  bnez       $a2, .L800248DC
/* 254D4 800248D4 00000000 */   nop
/* 254D8 800248D8 0007000D */  break      7
.L800248DC:
/* 254DC 800248DC 00003012 */  mflo       $a2
/* 254E0 800248E0 00001810 */  mfhi       $v1
/* 254E4 800248E4 00000000 */  nop
/* 254E8 800248E8 00000000 */  nop
/* 254EC 800248EC 00C50018 */  mult       $a2, $a1
/* 254F0 800248F0 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 254F4 800248F4 00031C00 */  sll        $v1, $v1, 16
/* 254F8 800248F8 00621825 */  or         $v1, $v1, $v0
/* 254FC 800248FC 00003812 */  mflo       $a3
/* 25500 80024900 0067102B */  sltu       $v0, $v1, $a3
/* 25504 80024904 1040000B */  beqz       $v0, .L80024934
/* 25508 80024908 00081400 */   sll       $v0, $t0, 16
/* 2550C 8002490C 00691821 */  addu       $v1, $v1, $t1
/* 25510 80024910 0069102B */  sltu       $v0, $v1, $t1
/* 25514 80024914 14400006 */  bnez       $v0, .L80024930
/* 25518 80024918 24C6FFFF */   addiu     $a2, $a2, -0x1
/* 2551C 8002491C 0067102B */  sltu       $v0, $v1, $a3
/* 25520 80024920 10400004 */  beqz       $v0, .L80024934
/* 25524 80024924 00081400 */   sll       $v0, $t0, 16
/* 25528 80024928 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 2552C 8002492C 00691821 */  addu       $v1, $v1, $t1
.L80024930:
/* 25530 80024930 00081400 */  sll        $v0, $t0, 16
.L80024934:
/* 25534 80024934 00465025 */  or         $t2, $v0, $a2
/* 25538 80024938 00672023 */  subu       $a0, $v1, $a3
.L8002493C:
/* 2553C 8002493C 00093402 */  srl        $a2, $t1, 16
/* 25540 80024940 0086001B */  divu       $zero, $a0, $a2
/* 25544 80024944 14C00002 */  bnez       $a2, .L80024950
/* 25548 80024948 00000000 */   nop
/* 2554C 8002494C 0007000D */  break      7
.L80024950:
/* 25550 80024950 00003812 */  mflo       $a3
/* 25554 80024954 00001810 */  mfhi       $v1
/* 25558 80024958 3128FFFF */  andi       $t0, $t1, 0xFFFF
/* 2555C 8002495C 00000000 */  nop
/* 25560 80024960 00E80018 */  mult       $a3, $t0
/* 25564 80024964 000B1402 */  srl        $v0, $t3, 16
/* 25568 80024968 00031C00 */  sll        $v1, $v1, 16
/* 2556C 8002496C 00621825 */  or         $v1, $v1, $v0
/* 25570 80024970 00002812 */  mflo       $a1
/* 25574 80024974 0065102B */  sltu       $v0, $v1, $a1
/* 25578 80024978 5040000B */  beql       $v0, $zero, .L800249A8
/* 2557C 8002497C 00651823 */   subu      $v1, $v1, $a1
/* 25580 80024980 00691821 */  addu       $v1, $v1, $t1
/* 25584 80024984 0069102B */  sltu       $v0, $v1, $t1
/* 25588 80024988 14400006 */  bnez       $v0, .L800249A4
/* 2558C 8002498C 24E7FFFF */   addiu     $a3, $a3, -0x1
/* 25590 80024990 0065102B */  sltu       $v0, $v1, $a1
/* 25594 80024994 50400004 */  beql       $v0, $zero, .L800249A8
/* 25598 80024998 00651823 */   subu      $v1, $v1, $a1
/* 2559C 8002499C 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 255A0 800249A0 00691821 */  addu       $v1, $v1, $t1
.L800249A4:
/* 255A4 800249A4 00651823 */  subu       $v1, $v1, $a1
.L800249A8:
/* 255A8 800249A8 0066001B */  divu       $zero, $v1, $a2
/* 255AC 800249AC 14C00002 */  bnez       $a2, .L800249B8
/* 255B0 800249B0 00000000 */   nop
/* 255B4 800249B4 0007000D */  break      7
.L800249B8:
/* 255B8 800249B8 00002012 */  mflo       $a0
/* 255BC 800249BC 00001810 */  mfhi       $v1
/* 255C0 800249C0 00000000 */  nop
/* 255C4 800249C4 00000000 */  nop
/* 255C8 800249C8 00880018 */  mult       $a0, $t0
/* 255CC 800249CC 3162FFFF */  andi       $v0, $t3, 0xFFFF
/* 255D0 800249D0 00031C00 */  sll        $v1, $v1, 16
/* 255D4 800249D4 00621825 */  or         $v1, $v1, $v0
/* 255D8 800249D8 00002812 */  mflo       $a1
/* 255DC 800249DC 0065102B */  sltu       $v0, $v1, $a1
/* 255E0 800249E0 10400007 */  beqz       $v0, .L80024A00
/* 255E4 800249E4 00691821 */   addu      $v1, $v1, $t1
/* 255E8 800249E8 0069102B */  sltu       $v0, $v1, $t1
/* 255EC 800249EC 14400004 */  bnez       $v0, .L80024A00
/* 255F0 800249F0 2484FFFF */   addiu     $a0, $a0, -0x1
/* 255F4 800249F4 0065102B */  sltu       $v0, $v1, $a1
/* 255F8 800249F8 54400001 */  bnel       $v0, $zero, .L80024A00
/* 255FC 800249FC 2484FFFF */   addiu     $a0, $a0, -0x1
.L80024A00:
/* 25600 80024A00 00071400 */  sll        $v0, $a3, 16
/* 25604 80024A04 080092F4 */  j          .L80024BD0
/* 25608 80024A08 00443025 */   or        $a2, $v0, $a0
.L80024A0C:
/* 2560C 80024A0C 0088102B */  sltu       $v0, $a0, $t0
/* 25610 80024A10 10400003 */  beqz       $v0, .L80024A20
/* 25614 80024A14 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 25618 80024A18 080092F3 */  j          .L80024BCC
/* 2561C 80024A1C 00003021 */   addu      $a2, $zero, $zero
.L80024A20:
/* 25620 80024A20 0048102B */  sltu       $v0, $v0, $t0
/* 25624 80024A24 14400005 */  bnez       $v0, .L80024A3C
/* 25628 80024A28 01001821 */   addu      $v1, $t0, $zero
/* 2562C 80024A2C 2D020100 */  sltiu      $v0, $t0, 0x100
/* 25630 80024A30 38420001 */  xori       $v0, $v0, 0x1
/* 25634 80024A34 08009295 */  j          .L80024A54
/* 25638 80024A38 000230C0 */   sll       $a2, $v0, 3
.L80024A3C:
/* 2563C 80024A3C 3C0200FF */  lui        $v0, (0xFFFFFF >> 16)
/* 25640 80024A40 3442FFFF */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 25644 80024A44 0048102B */  sltu       $v0, $v0, $t0
/* 25648 80024A48 14400002 */  bnez       $v0, .L80024A54
/* 2564C 80024A4C 24060018 */   addiu     $a2, $zero, 0x18
/* 25650 80024A50 24060010 */  addiu      $a2, $zero, 0x10
.L80024A54:
/* 25654 80024A54 3C028000 */  lui        $v0, %hi(__clz_tab_1)
/* 25658 80024A58 24421250 */  addiu      $v0, $v0, %lo(__clz_tab_1)
/* 2565C 80024A5C 00C31806 */  srlv       $v1, $v1, $a2
/* 25660 80024A60 00621821 */  addu       $v1, $v1, $v0
/* 25664 80024A64 90620000 */  lbu        $v0, 0x0($v1)
/* 25668 80024A68 24030020 */  addiu      $v1, $zero, 0x20
/* 2566C 80024A6C 00461021 */  addu       $v0, $v0, $a2
/* 25670 80024A70 00623023 */  subu       $a2, $v1, $v0
/* 25674 80024A74 14C00009 */  bnez       $a2, .L80024A9C
/* 25678 80024A78 00662823 */   subu      $a1, $v1, $a2
/* 2567C 80024A7C 0104102B */  sltu       $v0, $t0, $a0
/* 25680 80024A80 14400052 */  bnez       $v0, .L80024BCC
/* 25684 80024A84 24060001 */   addiu     $a2, $zero, 0x1
/* 25688 80024A88 0169102B */  sltu       $v0, $t3, $t1
/* 2568C 80024A8C 1440004F */  bnez       $v0, .L80024BCC
/* 25690 80024A90 00003021 */   addu      $a2, $zero, $zero
/* 25694 80024A94 080092F3 */  j          .L80024BCC
/* 25698 80024A98 24060001 */   addiu     $a2, $zero, 0x1
.L80024A9C:
/* 2569C 80024A9C 00C81804 */  sllv       $v1, $t0, $a2
/* 256A0 80024AA0 00A91006 */  srlv       $v0, $t1, $a1
/* 256A4 80024AA4 00624025 */  or         $t0, $v1, $v0
/* 256A8 80024AA8 00C94804 */  sllv       $t1, $t1, $a2
/* 256AC 80024AAC 00A43806 */  srlv       $a3, $a0, $a1
/* 256B0 80024AB0 00C41804 */  sllv       $v1, $a0, $a2
/* 256B4 80024AB4 00AB1006 */  srlv       $v0, $t3, $a1
/* 256B8 80024AB8 00622025 */  or         $a0, $v1, $v0
/* 256BC 80024ABC 00CB5804 */  sllv       $t3, $t3, $a2
/* 256C0 80024AC0 00083402 */  srl        $a2, $t0, 16
/* 256C4 80024AC4 00E6001B */  divu       $zero, $a3, $a2
/* 256C8 80024AC8 14C00002 */  bnez       $a2, .L80024AD4
/* 256CC 80024ACC 00000000 */   nop
/* 256D0 80024AD0 0007000D */  break      7
.L80024AD4:
/* 256D4 80024AD4 00005012 */  mflo       $t2
/* 256D8 80024AD8 00001810 */  mfhi       $v1
/* 256DC 80024ADC 3105FFFF */  andi       $a1, $t0, 0xFFFF
/* 256E0 80024AE0 00000000 */  nop
/* 256E4 80024AE4 01450018 */  mult       $t2, $a1
/* 256E8 80024AE8 00041402 */  srl        $v0, $a0, 16
/* 256EC 80024AEC 00031C00 */  sll        $v1, $v1, 16
/* 256F0 80024AF0 00621825 */  or         $v1, $v1, $v0
/* 256F4 80024AF4 00003812 */  mflo       $a3
/* 256F8 80024AF8 0067102B */  sltu       $v0, $v1, $a3
/* 256FC 80024AFC 5040000B */  beql       $v0, $zero, .L80024B2C
/* 25700 80024B00 00671823 */   subu      $v1, $v1, $a3
/* 25704 80024B04 00681821 */  addu       $v1, $v1, $t0
/* 25708 80024B08 0068102B */  sltu       $v0, $v1, $t0
/* 2570C 80024B0C 14400006 */  bnez       $v0, .L80024B28
/* 25710 80024B10 254AFFFF */   addiu     $t2, $t2, -0x1
/* 25714 80024B14 0067102B */  sltu       $v0, $v1, $a3
/* 25718 80024B18 50400004 */  beql       $v0, $zero, .L80024B2C
/* 2571C 80024B1C 00671823 */   subu      $v1, $v1, $a3
/* 25720 80024B20 254AFFFF */  addiu      $t2, $t2, -0x1
/* 25724 80024B24 00681821 */  addu       $v1, $v1, $t0
.L80024B28:
/* 25728 80024B28 00671823 */  subu       $v1, $v1, $a3
.L80024B2C:
/* 2572C 80024B2C 0066001B */  divu       $zero, $v1, $a2
/* 25730 80024B30 14C00002 */  bnez       $a2, .L80024B3C
/* 25734 80024B34 00000000 */   nop
/* 25738 80024B38 0007000D */  break      7
.L80024B3C:
/* 2573C 80024B3C 00003012 */  mflo       $a2
/* 25740 80024B40 00001810 */  mfhi       $v1
/* 25744 80024B44 00000000 */  nop
/* 25748 80024B48 00000000 */  nop
/* 2574C 80024B4C 00C50018 */  mult       $a2, $a1
/* 25750 80024B50 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 25754 80024B54 00031C00 */  sll        $v1, $v1, 16
/* 25758 80024B58 00621825 */  or         $v1, $v1, $v0
/* 2575C 80024B5C 00003812 */  mflo       $a3
/* 25760 80024B60 0067102B */  sltu       $v0, $v1, $a3
/* 25764 80024B64 1040000B */  beqz       $v0, .L80024B94
/* 25768 80024B68 000A1400 */   sll       $v0, $t2, 16
/* 2576C 80024B6C 00681821 */  addu       $v1, $v1, $t0
/* 25770 80024B70 0068102B */  sltu       $v0, $v1, $t0
/* 25774 80024B74 14400006 */  bnez       $v0, .L80024B90
/* 25778 80024B78 24C6FFFF */   addiu     $a2, $a2, -0x1
/* 2577C 80024B7C 0067102B */  sltu       $v0, $v1, $a3
/* 25780 80024B80 10400004 */  beqz       $v0, .L80024B94
/* 25784 80024B84 000A1400 */   sll       $v0, $t2, 16
/* 25788 80024B88 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 2578C 80024B8C 00681821 */  addu       $v1, $v1, $t0
.L80024B90:
/* 25790 80024B90 000A1400 */  sll        $v0, $t2, 16
.L80024B94:
/* 25794 80024B94 00463025 */  or         $a2, $v0, $a2
/* 25798 80024B98 00672023 */  subu       $a0, $v1, $a3
/* 2579C 80024B9C 00C90019 */  multu      $a2, $t1
/* 257A0 80024BA0 00001810 */  mfhi       $v1
/* 257A4 80024BA4 0083102B */  sltu       $v0, $a0, $v1
/* 257A8 80024BA8 00004012 */  mflo       $t0
/* 257AC 80024BAC 54400007 */  bnel       $v0, $zero, .L80024BCC
/* 257B0 80024BB0 24C6FFFF */   addiu     $a2, $a2, -0x1
/* 257B4 80024BB4 14640006 */  bne        $v1, $a0, .L80024BD0
/* 257B8 80024BB8 00005021 */   addu      $t2, $zero, $zero
/* 257BC 80024BBC 0168102B */  sltu       $v0, $t3, $t0
/* 257C0 80024BC0 10400004 */  beqz       $v0, .L80024BD4
/* 257C4 80024BC4 00C06821 */   addu      $t5, $a2, $zero
/* 257C8 80024BC8 24C6FFFF */  addiu      $a2, $a2, -0x1
.L80024BCC:
/* 257CC 80024BCC 00005021 */  addu       $t2, $zero, $zero
.L80024BD0:
/* 257D0 80024BD0 00C06821 */  addu       $t5, $a2, $zero
.L80024BD4:
/* 257D4 80024BD4 01406021 */  addu       $t4, $t2, $zero
/* 257D8 80024BD8 01801021 */  addu       $v0, $t4, $zero
/* 257DC 80024BDC 03E00008 */  jr         $ra
/* 257E0 80024BE0 01A01821 */   addu      $v1, $t5, $zero
