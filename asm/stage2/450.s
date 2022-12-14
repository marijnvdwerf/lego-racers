.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel func_80069290
/* 605C0 80069290 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 605C4 80069294 AFB00010 */  sw         $s0, 0x10($sp)
/* 605C8 80069298 00808021 */  addu       $s0, $a0, $zero
/* 605CC 8006929C AFBF001C */  sw         $ra, 0x1C($sp)
/* 605D0 800692A0 AFB20018 */  sw         $s2, 0x18($sp)
/* 605D4 800692A4 0C011BB8 */  jal        func_80046EE0
/* 605D8 800692A8 AFB10014 */   sw        $s1, 0x14($sp)
/* 605DC 800692AC 261202A8 */  addiu      $s2, $s0, 0x2A8
/* 605E0 800692B0 02402021 */  addu       $a0, $s2, $zero
/* 605E4 800692B4 3C028004 */  lui        $v0, %hi(D_8003E970)
/* 605E8 800692B8 2442E970 */  addiu      $v0, $v0, %lo(D_8003E970)
/* 605EC 800692BC 0C01AD78 */  jal        func_8006B5E0
/* 605F0 800692C0 AE020014 */   sw        $v0, 0x14($s0)
/* 605F4 800692C4 261102E8 */  addiu      $s1, $s0, 0x2E8
/* 605F8 800692C8 0C01C130 */  jal        func_800704C0
/* 605FC 800692CC 02202021 */   addu      $a0, $s1, $zero
/* 60600 800692D0 26040020 */  addiu      $a0, $s0, 0x20
/* 60604 800692D4 00002821 */  addu       $a1, $zero, $zero
/* 60608 800692D8 0C000697 */  jal        memset
/* 6060C 800692DC 24060288 */   addiu     $a2, $zero, 0x288
/* 60610 800692E0 02001021 */  addu       $v0, $s0, $zero
/* 60614 800692E4 34038000 */  ori        $v1, $zero, 0x8000
/* 60618 800692E8 00431821 */  addu       $v1, $v0, $v1
/* 6061C 800692EC AC520010 */  sw         $s2, 0x10($v0)
/* 60620 800692F0 AC51001C */  sw         $s1, 0x1C($v0)
/* 60624 800692F4 AC604938 */  sw         $zero, 0x4938($v1)
/* 60628 800692F8 AC60493C */  sw         $zero, 0x493C($v1)
/* 6062C 800692FC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 60630 80069300 8FB20018 */  lw         $s2, 0x18($sp)
/* 60634 80069304 8FB10014 */  lw         $s1, 0x14($sp)
/* 60638 80069308 8FB00010 */  lw         $s0, 0x10($sp)
/* 6063C 8006930C 03E00008 */  jr         $ra
/* 60640 80069310 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80069314
/* 60644 80069314 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 60648 80069318 AFB00010 */  sw         $s0, 0x10($sp)
/* 6064C 8006931C 00808021 */  addu       $s0, $a0, $zero
/* 60650 80069320 AFB10014 */  sw         $s1, 0x14($sp)
/* 60654 80069324 00A08821 */  addu       $s1, $a1, $zero
/* 60658 80069328 3C028004 */  lui        $v0, %hi(D_8003E970)
/* 6065C 8006932C 2442E970 */  addiu      $v0, $v0, %lo(D_8003E970)
/* 60660 80069330 AFBF0018 */  sw         $ra, 0x18($sp)
/* 60664 80069334 0C011BDC */  jal        func_80046F70
/* 60668 80069338 AE020014 */   sw        $v0, 0x14($s0)
/* 6066C 8006933C 260402E8 */  addiu      $a0, $s0, 0x2E8
/* 60670 80069340 0C01C155 */  jal        func_80070554
/* 60674 80069344 24050002 */   addiu     $a1, $zero, 0x2
/* 60678 80069348 260402A8 */  addiu      $a0, $s0, 0x2A8
/* 6067C 8006934C 0C01AD86 */  jal        func_8006B618
/* 60680 80069350 24050002 */   addiu     $a1, $zero, 0x2
/* 60684 80069354 02002021 */  addu       $a0, $s0, $zero
/* 60688 80069358 0C012FDA */  jal        func_8004BF68
/* 6068C 8006935C 02202821 */   addu      $a1, $s1, $zero
/* 60690 80069360 8FBF0018 */  lw         $ra, 0x18($sp)
/* 60694 80069364 8FB10014 */  lw         $s1, 0x14($sp)
/* 60698 80069368 8FB00010 */  lw         $s0, 0x10($sp)
/* 6069C 8006936C 03E00008 */  jr         $ra
/* 606A0 80069370 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80069374
/* 606A4 80069374 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 606A8 80069378 AFB30024 */  sw         $s3, 0x24($sp)
/* 606AC 8006937C 00809821 */  addu       $s3, $a0, $zero
/* 606B0 80069380 AFBF002C */  sw         $ra, 0x2C($sp)
/* 606B4 80069384 AFB40028 */  sw         $s4, 0x28($sp)
/* 606B8 80069388 AFB20020 */  sw         $s2, 0x20($sp)
/* 606BC 8006938C AFB1001C */  sw         $s1, 0x1C($sp)
/* 606C0 80069390 AFB00018 */  sw         $s0, 0x18($sp)
/* 606C4 80069394 8E64000C */  lw         $a0, 0xC($s3)
/* 606C8 80069398 30820004 */  andi       $v0, $a0, 0x4
/* 606CC 8006939C 0002882B */  sltu       $s1, $zero, $v0
/* 606D0 800693A0 30820008 */  andi       $v0, $a0, 0x8
/* 606D4 800693A4 54400001 */  bnel       $v0, $zero, .L800693AC
/* 606D8 800693A8 36310002 */   ori       $s1, $s1, 0x2
.L800693AC:
/* 606DC 800693AC 8E630008 */  lw         $v1, 0x8($s3)
/* 606E0 800693B0 24020020 */  addiu      $v0, $zero, 0x20
/* 606E4 800693B4 50620001 */  beql       $v1, $v0, .L800693BC
/* 606E8 800693B8 36310004 */   ori       $s1, $s1, 0x4
.L800693BC:
/* 606EC 800693BC 8E620004 */  lw         $v0, 0x4($s3)
/* 606F0 800693C0 2C4200F1 */  sltiu      $v0, $v0, 0xF1
/* 606F4 800693C4 50400001 */  beql       $v0, $zero, .L800693CC
/* 606F8 800693C8 36310008 */   ori       $s1, $s1, 0x8
.L800693CC:
/* 606FC 800693CC 30820010 */  andi       $v0, $a0, 0x10
/* 60700 800693D0 10400003 */  beqz       $v0, .L800693E0
/* 60704 800693D4 3C020010 */   lui       $v0, (0x100000 >> 16)
/* 60708 800693D8 0801A4FB */  j          .L800693EC
/* 6070C 800693DC 36310010 */   ori       $s1, $s1, 0x10
.L800693E0:
/* 60710 800693E0 00821024 */  and        $v0, $a0, $v0
/* 60714 800693E4 54400001 */  bnel       $v0, $zero, .L800693EC
/* 60718 800693E8 36310020 */   ori       $s1, $s1, 0x20
.L800693EC:
/* 6071C 800693EC 3C038004 */  lui        $v1, %hi(D_8003EA80)
/* 60720 800693F0 2463EA80 */  addiu      $v1, $v1, %lo(D_8003EA80)
/* 60724 800693F4 00111080 */  sll        $v0, $s1, 2
/* 60728 800693F8 00431021 */  addu       $v0, $v0, $v1
/* 6072C 800693FC 3C038003 */  lui        $v1, %hi(D_80031160)
/* 60730 80069400 24631160 */  addiu      $v1, $v1, %lo(D_80031160)
/* 60734 80069404 8C470000 */  lw         $a3, 0x0($v0)
/* 60738 80069408 34028000 */  ori        $v0, $zero, 0x8000
/* 6073C 8006940C 0262A021 */  addu       $s4, $s3, $v0
/* 60740 80069410 8E824938 */  lw         $v0, 0x4938($s4)
/* 60744 80069414 00072080 */  sll        $a0, $a3, 2
/* 60748 80069418 00872021 */  addu       $a0, $a0, $a3
/* 6074C 8006941C 00042100 */  sll        $a0, $a0, 4
/* 60750 80069420 1440000B */  bnez       $v0, .L80069450
/* 60754 80069424 00839021 */   addu      $s2, $a0, $v1
/* 60758 80069428 26640020 */  addiu      $a0, $s3, 0x20
/* 6075C 8006942C 24100001 */  addiu      $s0, $zero, 0x1
/* 60760 80069430 3C058008 */  lui        $a1, %hi(D_80085E20)
/* 60764 80069434 24A55E20 */  addiu      $a1, $a1, %lo(D_80085E20)
/* 60768 80069438 24060013 */  addiu      $a2, $zero, 0x13
/* 6076C 8006943C 30E700FF */  andi       $a3, $a3, 0xFF
/* 60770 80069440 0C007998 */  jal        osCreateScheduler
/* 60774 80069444 AFB00010 */   sw        $s0, 0x10($sp)
/* 60778 80069448 0801A516 */  j          .L80069458
/* 6077C 8006944C AE904938 */   sw        $s0, 0x4938($s4)
.L80069450:
/* 60780 80069450 0C0080A0 */  jal        osViSetMode
/* 60784 80069454 02402021 */   addu      $a0, $s2, $zero
.L80069458:
/* 60788 80069458 0C0081E8 */  jal        osViBlack
/* 6078C 8006945C 24040001 */   addiu     $a0, $zero, 0x1
/* 60790 80069460 34028000 */  ori        $v0, $zero, 0x8000
/* 60794 80069464 02621021 */  addu       $v0, $s3, $v0
/* 60798 80069468 24030001 */  addiu      $v1, $zero, 0x1
/* 6079C 8006946C AC43493C */  sw         $v1, 0x493C($v0)
/* 607A0 80069470 32220008 */  andi       $v0, $s1, 0x8
/* 607A4 80069474 10400020 */  beqz       $v0, .L800694F8
/* 607A8 80069478 24020280 */   addiu     $v0, $zero, 0x280
/* 607AC 8006947C 8E630000 */  lw         $v1, 0x0($s3)
/* 607B0 80069480 1062000F */  beq        $v1, $v0, .L800694C0
/* 607B4 80069484 00000000 */   nop
/* 607B8 80069488 AE430008 */  sw         $v1, 0x8($s2)
/* 607BC 8006948C 8E620000 */  lw         $v0, 0x0($s3)
/* 607C0 80069490 3C018004 */  lui        $at, %hi(D_8003E960)
/* 607C4 80069494 C422E960 */  lwc1       $f2, %lo(D_8003E960)($at)
/* 607C8 80069498 00021280 */  sll        $v0, $v0, 10
/* 607CC 8006949C 44820000 */  mtc1       $v0, $f0
/* 607D0 800694A0 46800020 */  cvt.s.w    $f0, $f0
/* 607D4 800694A4 46020003 */  div.s      $f0, $f0, $f2
/* 607D8 800694A8 4600010D */  trunc.w.s  $f4, $f0
/* 607DC 800694AC E6440020 */  swc1       $f4, 0x20($s2)
/* 607E0 800694B0 8E620000 */  lw         $v0, 0x0($s3)
/* 607E4 800694B4 00021040 */  sll        $v0, $v0, 1
/* 607E8 800694B8 AE420028 */  sw         $v0, 0x28($s2)
/* 607EC 800694BC AE42003C */  sw         $v0, 0x3C($s2)
.L800694C0:
/* 607F0 800694C0 8E630004 */  lw         $v1, 0x4($s3)
/* 607F4 800694C4 240201E0 */  addiu      $v0, $zero, 0x1E0
/* 607F8 800694C8 1062001A */  beq        $v1, $v0, .L80069534
/* 607FC 800694CC 00031280 */   sll       $v0, $v1, 10
/* 60800 800694D0 3C018004 */  lui        $at, %hi(D_8003E964)
/* 60804 800694D4 C422E964 */  lwc1       $f2, %lo(D_8003E964)($at)
/* 60808 800694D8 44820000 */  mtc1       $v0, $f0
/* 6080C 800694DC 46800020 */  cvt.s.w    $f0, $f0
/* 60810 800694E0 46020003 */  div.s      $f0, $f0, $f2
/* 60814 800694E4 4600010D */  trunc.w.s  $f4, $f0
/* 60818 800694E8 44022000 */  mfc1       $v0, $f4
/* 6081C 800694EC AE42002C */  sw         $v0, 0x2C($s2)
/* 60820 800694F0 0801A54D */  j          .L80069534
/* 60824 800694F4 AE420040 */   sw        $v0, 0x40($s2)
.L800694F8:
/* 60828 800694F8 8E620000 */  lw         $v0, 0x0($s3)
/* 6082C 800694FC AE420008 */  sw         $v0, 0x8($s2)
/* 60830 80069500 8E620000 */  lw         $v0, 0x0($s3)
/* 60834 80069504 3C018004 */  lui        $at, %hi(D_8003E968)
/* 60838 80069508 C422E968 */  lwc1       $f2, %lo(D_8003E968)($at)
/* 6083C 8006950C 00021280 */  sll        $v0, $v0, 10
/* 60840 80069510 44820000 */  mtc1       $v0, $f0
/* 60844 80069514 46800020 */  cvt.s.w    $f0, $f0
/* 60848 80069518 46020003 */  div.s      $f0, $f0, $f2
/* 6084C 8006951C 4600010D */  trunc.w.s  $f4, $f0
/* 60850 80069520 E6440020 */  swc1       $f4, 0x20($s2)
/* 60854 80069524 8E620000 */  lw         $v0, 0x0($s3)
/* 60858 80069528 00021040 */  sll        $v0, $v0, 1
/* 6085C 8006952C AE420028 */  sw         $v0, 0x28($s2)
/* 60860 80069530 AE42003C */  sw         $v0, 0x3C($s2)
.L80069534:
/* 60864 80069534 0C01A580 */  jal        func_80069600
/* 60868 80069538 02602021 */   addu      $a0, $s3, $zero
/* 6086C 8006953C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 60870 80069540 8FB40028 */  lw         $s4, 0x28($sp)
/* 60874 80069544 8FB30024 */  lw         $s3, 0x24($sp)
/* 60878 80069548 8FB20020 */  lw         $s2, 0x20($sp)
/* 6087C 8006954C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 60880 80069550 8FB00018 */  lw         $s0, 0x18($sp)
/* 60884 80069554 00001021 */  addu       $v0, $zero, $zero
/* 60888 80069558 03E00008 */  jr         $ra
/* 6088C 8006955C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80069560
/* 60890 80069560 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 60894 80069564 00802821 */  addu       $a1, $a0, $zero
/* 60898 80069568 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6089C 8006956C 8CA202E8 */  lw         $v0, 0x2E8($a1)
/* 608A0 80069570 30420001 */  andi       $v0, $v0, 0x1
/* 608A4 80069574 10400005 */  beqz       $v0, .L8006958C
/* 608A8 80069578 24A402E8 */   addiu     $a0, $a1, 0x2E8
/* 608AC 8006957C 0C01CBF8 */  jal        func_80072FE0
/* 608B0 80069580 00000000 */   nop
/* 608B4 80069584 0801A56A */  j          .L800695A8
/* 608B8 80069588 00000000 */   nop
.L8006958C:
/* 608BC 8006958C 24020240 */  addiu      $v0, $zero, 0x240
/* 608C0 80069590 8CA7000C */  lw         $a3, 0xC($a1)
/* 608C4 80069594 24A602A8 */  addiu      $a2, $a1, 0x2A8
/* 608C8 80069598 AFA20010 */  sw         $v0, 0x10($sp)
/* 608CC 8006959C 0C01C598 */  jal        func_80071660
/* 608D0 800695A0 30E71000 */   andi      $a3, $a3, 0x1000
/* 608D4 800695A4 00001021 */  addu       $v0, $zero, $zero
.L800695A8:
/* 608D8 800695A8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 608DC 800695AC 03E00008 */  jr         $ra
/* 608E0 800695B0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800695B4
/* 608E4 800695B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 608E8 800695B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 608EC 800695BC 8C82000C */  lw         $v0, 0xC($a0)
/* 608F0 800695C0 34420080 */  ori        $v0, $v0, 0x80
/* 608F4 800695C4 0C01A580 */  jal        func_80069600
/* 608F8 800695C8 AC82000C */   sw        $v0, 0xC($a0)
/* 608FC 800695CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 60900 800695D0 03E00008 */  jr         $ra
/* 60904 800695D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800695D8
/* 60908 800695D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6090C 800695DC AFBF0010 */  sw         $ra, 0x10($sp)
/* 60910 800695E0 8C82000C */  lw         $v0, 0xC($a0)
/* 60914 800695E4 2403FF7F */  addiu      $v1, $zero, -0x81
/* 60918 800695E8 00431024 */  and        $v0, $v0, $v1
/* 6091C 800695EC 0C01A580 */  jal        func_80069600
/* 60920 800695F0 AC82000C */   sw        $v0, 0xC($a0)
/* 60924 800695F4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 60928 800695F8 03E00008 */  jr         $ra
/* 6092C 800695FC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80069600
/* 60930 80069600 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 60934 80069604 00802821 */  addu       $a1, $a0, $zero
/* 60938 80069608 AFBF0010 */  sw         $ra, 0x10($sp)
/* 6093C 8006960C 8CA3000C */  lw         $v1, 0xC($a1)
/* 60940 80069610 30620060 */  andi       $v0, $v1, 0x60
/* 60944 80069614 10400002 */  beqz       $v0, .L80069620
/* 60948 80069618 24040002 */   addiu     $a0, $zero, 0x2
/* 6094C 8006961C 24040001 */  addiu      $a0, $zero, 0x1
.L80069620:
/* 60950 80069620 30620040 */  andi       $v0, $v1, 0x40
/* 60954 80069624 50400002 */  beql       $v0, $zero, .L80069630
/* 60958 80069628 34840008 */   ori       $a0, $a0, 0x8
/* 6095C 8006962C 34840004 */  ori        $a0, $a0, 0x4
.L80069630:
/* 60960 80069630 8CA2000C */  lw         $v0, 0xC($a1)
/* 60964 80069634 30420080 */  andi       $v0, $v0, 0x80
/* 60968 80069638 50400002 */  beql       $v0, $zero, .L80069644
/* 6096C 8006963C 34840080 */   ori       $a0, $a0, 0x80
/* 60970 80069640 34840040 */  ori        $a0, $a0, 0x40
.L80069644:
/* 60974 80069644 8CA2000C */  lw         $v0, 0xC($a1)
/* 60978 80069648 30420100 */  andi       $v0, $v0, 0x100
/* 6097C 8006964C 50400002 */  beql       $v0, $zero, .L80069658
/* 60980 80069650 34840020 */   ori       $a0, $a0, 0x20
/* 60984 80069654 34840010 */  ori        $a0, $a0, 0x10
.L80069658:
/* 60988 80069658 0C0080B4 */  jal        osViSetSpecialFeatures
/* 6098C 8006965C 00000000 */   nop
/* 60990 80069660 8FBF0010 */  lw         $ra, 0x10($sp)
/* 60994 80069664 03E00008 */  jr         $ra
/* 60998 80069668 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006966C
/* 6099C 8006966C 34028000 */  ori        $v0, $zero, 0x8000
/* 609A0 80069670 00822021 */  addu       $a0, $a0, $v0
/* 609A4 80069674 03E00008 */  jr         $ra
/* 609A8 80069678 AC80493C */   sw        $zero, 0x493C($a0)

glabel func_8006967C
/* 609AC 8006967C 34028000 */  ori        $v0, $zero, 0x8000
/* 609B0 80069680 00822021 */  addu       $a0, $a0, $v0
/* 609B4 80069684 8C82493C */  lw         $v0, 0x493C($a0)
/* 609B8 80069688 03E00008 */  jr         $ra
/* 609BC 8006968C 00000000 */   nop

glabel func_80069690
/* 609C0 80069690 03E00008 */  jr         $ra
/* 609C4 80069694 24820020 */   addiu     $v0, $a0, 0x20

glabel func_80069698
/* 609C8 80069698 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 609CC 8006969C AFBF0010 */  sw         $ra, 0x10($sp)
/* 609D0 800696A0 0C007A24 */  jal        osScGetCmdQ
/* 609D4 800696A4 24840020 */   addiu     $a0, $a0, 0x20
/* 609D8 800696A8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 609DC 800696AC 03E00008 */  jr         $ra
/* 609E0 800696B0 27BD0018 */   addiu     $sp, $sp, 0x18
