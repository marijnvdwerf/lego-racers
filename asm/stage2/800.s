.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel func_80081FC0
/* 792F0 80081FC0 00801021 */  addu       $v0, $a0, $zero
/* 792F4 80081FC4 3C038004 */  lui        $v1, %hi(D_800409D0)
/* 792F8 80081FC8 246309D0 */  addiu      $v1, $v1, %lo(D_800409D0)
/* 792FC 80081FCC AC430000 */  sw         $v1, 0x0($v0)
/* 79300 80081FD0 24030080 */  addiu      $v1, $zero, 0x80
/* 79304 80081FD4 AC430010 */  sw         $v1, 0x10($v0)
/* 79308 80081FD8 AC430014 */  sw         $v1, 0x14($v0)
/* 7930C 80081FDC 2403FFFF */  addiu      $v1, $zero, -0x1
/* 79310 80081FE0 AC400004 */  sw         $zero, 0x4($v0)
/* 79314 80081FE4 AC400008 */  sw         $zero, 0x8($v0)
/* 79318 80081FE8 AC40000C */  sw         $zero, 0xC($v0)
/* 7931C 80081FEC AC400018 */  sw         $zero, 0x18($v0)
/* 79320 80081FF0 AC43001C */  sw         $v1, 0x1C($v0)
/* 79324 80081FF4 AC400020 */  sw         $zero, 0x20($v0)
/* 79328 80081FF8 03E00008 */  jr         $ra
/* 7932C 80081FFC AC400024 */   sw        $zero, 0x24($v0)

glabel func_80082000
/* 79330 80082000 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 79334 80082004 AFB10014 */  sw         $s1, 0x14($sp)
/* 79338 80082008 00808821 */  addu       $s1, $a0, $zero
/* 7933C 8008200C AFB00010 */  sw         $s0, 0x10($sp)
/* 79340 80082010 00A08021 */  addu       $s0, $a1, $zero
/* 79344 80082014 3C028004 */  lui        $v0, %hi(D_800409D0)
/* 79348 80082018 244209D0 */  addiu      $v0, $v0, %lo(D_800409D0)
/* 7934C 8008201C AFBF0018 */  sw         $ra, 0x18($sp)
/* 79350 80082020 0C02081E */  jal        func_80082078
/* 79354 80082024 AE220000 */   sw        $v0, 0x0($s1)
/* 79358 80082028 32100001 */  andi       $s0, $s0, 0x1
/* 7935C 8008202C 12000003 */  beqz       $s0, .L8008203C
/* 79360 80082030 00000000 */   nop
/* 79364 80082034 0C01FB5C */  jal        func_8007ED70
/* 79368 80082038 02202021 */   addu      $a0, $s1, $zero
.L8008203C:
/* 7936C 8008203C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 79370 80082040 8FB10014 */  lw         $s1, 0x14($sp)
/* 79374 80082044 8FB00010 */  lw         $s0, 0x10($sp)
/* 79378 80082048 03E00008 */  jr         $ra
/* 7937C 8008204C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80082050
/* 79380 80082050 24020001 */  addiu      $v0, $zero, 0x1
/* 79384 80082054 AC82000C */  sw         $v0, 0xC($a0)
/* 79388 80082058 24020080 */  addiu      $v0, $zero, 0x80
/* 7938C 8008205C AC820010 */  sw         $v0, 0x10($a0)
/* 79390 80082060 AC820014 */  sw         $v0, 0x14($a0)
/* 79394 80082064 2402FFFF */  addiu      $v0, $zero, -0x1
/* 79398 80082068 AC850020 */  sw         $a1, 0x20($a0)
/* 7939C 8008206C AC800018 */  sw         $zero, 0x18($a0)
/* 793A0 80082070 03E00008 */  jr         $ra
/* 793A4 80082074 AC82001C */   sw        $v0, 0x1C($a0)

glabel func_80082078
/* 793A8 80082078 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 793AC 8008207C AFB00010 */  sw         $s0, 0x10($sp)
/* 793B0 80082080 00808021 */  addu       $s0, $a0, $zero
/* 793B4 80082084 AFBF0014 */  sw         $ra, 0x14($sp)
/* 793B8 80082088 8E02000C */  lw         $v0, 0xC($s0)
/* 793BC 8008208C 30420001 */  andi       $v0, $v0, 0x1
/* 793C0 80082090 10400007 */  beqz       $v0, .L800820B0
/* 793C4 80082094 00000000 */   nop
/* 793C8 80082098 8E020000 */  lw         $v0, 0x0($s0)
/* 793CC 8008209C 84440010 */  lh         $a0, 0x10($v0)
/* 793D0 800820A0 8C420014 */  lw         $v0, 0x14($v0)
/* 793D4 800820A4 0040F809 */  jalr       $v0
/* 793D8 800820A8 02042021 */   addu      $a0, $s0, $a0
/* 793DC 800820AC AE00000C */  sw         $zero, 0xC($s0)
.L800820B0:
/* 793E0 800820B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 793E4 800820B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 793E8 800820B8 03E00008 */  jr         $ra
/* 793EC 800820BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800820C0
/* 793F0 800820C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 793F4 800820C4 AFB00018 */  sw         $s0, 0x18($sp)
/* 793F8 800820C8 00808021 */  addu       $s0, $a0, $zero
/* 793FC 800820CC AFB1001C */  sw         $s1, 0x1C($sp)
/* 79400 800820D0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 79404 800820D4 8E02000C */  lw         $v0, 0xC($s0)
/* 79408 800820D8 24030002 */  addiu      $v1, $zero, 0x2
/* 7940C 800820DC 3042000A */  andi       $v0, $v0, 0xA
/* 79410 800820E0 1043002F */  beq        $v0, $v1, .L800821A0
/* 79414 800820E4 00A08821 */   addu      $s1, $a1, $zero
/* 79418 800820E8 8E020004 */  lw         $v0, 0x4($s0)
/* 7941C 800820EC 8C441B20 */  lw         $a0, 0x1B20($v0)
/* 79420 800820F0 0C003F17 */  jal        MusFxBankSetSingle
/* 79424 800820F4 00000000 */   nop
/* 79428 800820F8 8E020004 */  lw         $v0, 0x4($s0)
/* 7942C 800820FC 8C441B18 */  lw         $a0, 0x1B18($v0)
/* 79430 80082100 0C003E98 */  jal        MusPtrBankSetSingle
/* 79434 80082104 00000000 */   nop
/* 79438 80082108 8E040020 */  lw         $a0, 0x20($s0)
/* 7943C 8008210C 8E02001C */  lw         $v0, 0x1C($s0)
/* 79440 80082110 AFA20010 */  sw         $v0, 0x10($sp)
/* 79444 80082114 8E050010 */  lw         $a1, 0x10($s0)
/* 79448 80082118 8E060014 */  lw         $a2, 0x14($s0)
/* 7944C 8008211C 0C003D2D */  jal        MusStartEffect2
/* 79450 80082120 00003821 */   addu      $a3, $zero, $zero
/* 79454 80082124 8E050018 */  lw         $a1, 0x18($s0)
/* 79458 80082128 00402021 */  addu       $a0, $v0, $zero
/* 7945C 8008212C 0C003E31 */  jal        MusHandleSetFreqOffset
/* 79460 80082130 AE040024 */   sw        $a0, 0x24($s0)
/* 79464 80082134 8E030004 */  lw         $v1, 0x4($s0)
/* 79468 80082138 8C620000 */  lw         $v0, 0x0($v1)
/* 7946C 8008213C 84440058 */  lh         $a0, 0x58($v0)
/* 79470 80082140 8C42005C */  lw         $v0, 0x5C($v0)
/* 79474 80082144 0040F809 */  jalr       $v0
/* 79478 80082148 00642021 */   addu      $a0, $v1, $a0
/* 7947C 8008214C C442000C */  lwc1       $f2, 0xC($v0)
/* 79480 80082150 C6000010 */  lwc1       $f0, 0x10($s0)
/* 79484 80082154 46800020 */  cvt.s.w    $f0, $f0
/* 79488 80082158 46020002 */  mul.s      $f0, $f0, $f2
/* 7948C 8008215C 8E040024 */  lw         $a0, 0x24($s0)
/* 79490 80082160 4600010D */  trunc.w.s  $f4, $f0
/* 79494 80082164 44052000 */  mfc1       $a1, $f4
/* 79498 80082168 0C003E03 */  jal        MusHandleSetVolume
/* 7949C 8008216C 00000000 */   nop
/* 794A0 80082170 8E040024 */  lw         $a0, 0x24($s0)
/* 794A4 80082174 8E050014 */  lw         $a1, 0x14($s0)
/* 794A8 80082178 0C003E19 */  jal        MusHandleSetPan
/* 794AC 8008217C 00000000 */   nop
/* 794B0 80082180 8E03000C */  lw         $v1, 0xC($s0)
/* 794B4 80082184 2402FFF7 */  addiu      $v0, $zero, -0x9
/* 794B8 80082188 00621824 */  and        $v1, $v1, $v0
/* 794BC 8008218C 34620002 */  ori        $v0, $v1, 0x2
/* 794C0 80082190 12200003 */  beqz       $s1, .L800821A0
/* 794C4 80082194 AE02000C */   sw        $v0, 0xC($s0)
/* 794C8 80082198 34620006 */  ori        $v0, $v1, 0x6
/* 794CC 8008219C AE02000C */  sw         $v0, 0xC($s0)
.L800821A0:
/* 794D0 800821A0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 794D4 800821A4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 794D8 800821A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 794DC 800821AC 03E00008 */  jr         $ra
/* 794E0 800821B0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800821B4
/* 794E4 800821B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 794E8 800821B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 794EC 800821BC 00808021 */  addu       $s0, $a0, $zero
/* 794F0 800821C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 794F4 800821C4 8E02000C */  lw         $v0, 0xC($s0)
/* 794F8 800821C8 30420002 */  andi       $v0, $v0, 0x2
/* 794FC 800821CC 10400008 */  beqz       $v0, .L800821F0
/* 79500 800821D0 00000000 */   nop
/* 79504 800821D4 8E040024 */  lw         $a0, 0x24($s0)
/* 79508 800821D8 0C003DC3 */  jal        MusHandleStop
/* 7950C 800821DC 00002821 */   addu      $a1, $zero, $zero
/* 79510 800821E0 8E02000C */  lw         $v0, 0xC($s0)
/* 79514 800821E4 2403FFF9 */  addiu      $v1, $zero, -0x7
/* 79518 800821E8 00431024 */  and        $v0, $v0, $v1
/* 7951C 800821EC AE02000C */  sw         $v0, 0xC($s0)
.L800821F0:
/* 79520 800821F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 79524 800821F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 79528 800821F8 03E00008 */  jr         $ra
/* 7952C 800821FC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80082200
/* 79530 80082200 8C82000C */  lw         $v0, 0xC($a0)
/* 79534 80082204 03E00008 */  jr         $ra
/* 79538 80082208 30420002 */   andi      $v0, $v0, 0x2

glabel func_8008220C
/* 7953C 8008220C 3C018004 */  lui        $at, %hi(D_800409C0)
/* 79540 80082210 C42009C0 */  lwc1       $f0, %lo(D_800409C0)($at)
/* 79544 80082214 44852000 */  mtc1       $a1, $f4
/* 79548 80082218 46002002 */  mul.s      $f0, $f4, $f0
/* 7954C 8008221C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79550 80082220 AFB00010 */  sw         $s0, 0x10($sp)
/* 79554 80082224 00808021 */  addu       $s0, $a0, $zero
/* 79558 80082228 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7955C 8008222C 4600010D */  trunc.w.s  $f4, $f0
/* 79560 80082230 44022000 */  mfc1       $v0, $f4
/* 79564 80082234 04410002 */  bgez       $v0, .L80082240
/* 79568 80082238 AE020010 */   sw        $v0, 0x10($s0)
/* 7956C 8008223C AE000010 */  sw         $zero, 0x10($s0)
.L80082240:
/* 79570 80082240 8E020010 */  lw         $v0, 0x10($s0)
/* 79574 80082244 28420101 */  slti       $v0, $v0, 0x101
/* 79578 80082248 14400002 */  bnez       $v0, .L80082254
/* 7957C 8008224C 24020100 */   addiu     $v0, $zero, 0x100
/* 79580 80082250 AE020010 */  sw         $v0, 0x10($s0)
.L80082254:
/* 79584 80082254 8E02000C */  lw         $v0, 0xC($s0)
/* 79588 80082258 30420002 */  andi       $v0, $v0, 0x2
/* 7958C 8008225C 10400010 */  beqz       $v0, .L800822A0
/* 79590 80082260 00000000 */   nop
/* 79594 80082264 8E030004 */  lw         $v1, 0x4($s0)
/* 79598 80082268 8C620000 */  lw         $v0, 0x0($v1)
/* 7959C 8008226C 84440058 */  lh         $a0, 0x58($v0)
/* 795A0 80082270 8C42005C */  lw         $v0, 0x5C($v0)
/* 795A4 80082274 0040F809 */  jalr       $v0
/* 795A8 80082278 00642021 */   addu      $a0, $v1, $a0
/* 795AC 8008227C C442000C */  lwc1       $f2, 0xC($v0)
/* 795B0 80082280 C6000010 */  lwc1       $f0, 0x10($s0)
/* 795B4 80082284 46800020 */  cvt.s.w    $f0, $f0
/* 795B8 80082288 46020002 */  mul.s      $f0, $f0, $f2
/* 795BC 8008228C 8E040024 */  lw         $a0, 0x24($s0)
/* 795C0 80082290 4600010D */  trunc.w.s  $f4, $f0
/* 795C4 80082294 44052000 */  mfc1       $a1, $f4
/* 795C8 80082298 0C003E03 */  jal        MusHandleSetVolume
/* 795CC 8008229C 00000000 */   nop
.L800822A0:
/* 795D0 800822A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 795D4 800822A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 795D8 800822A8 03E00008 */  jr         $ra
/* 795DC 800822AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800822B0
/* 795E0 800822B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 795E4 800822B4 00801821 */  addu       $v1, $a0, $zero
/* 795E8 800822B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 795EC 800822BC 8C620004 */  lw         $v0, 0x4($v1)
/* 795F0 800822C0 8C420008 */  lw         $v0, 0x8($v0)
/* 795F4 800822C4 8C420000 */  lw         $v0, 0x0($v0)
/* 795F8 800822C8 44851000 */  mtc1       $a1, $f2
/* 795FC 800822CC 30420004 */  andi       $v0, $v0, 0x4
/* 79600 800822D0 10400002 */  beqz       $v0, .L800822DC
/* 79604 800822D4 00000000 */   nop
/* 79608 800822D8 44801000 */  mtc1       $zero, $f2
.L800822DC:
/* 7960C 800822DC 3C018004 */  lui        $at, %hi(D_800409C4)
/* 79610 800822E0 C42009C4 */  lwc1       $f0, %lo(D_800409C4)($at)
/* 79614 800822E4 46001002 */  mul.s      $f0, $f2, $f0
/* 79618 800822E8 4600010D */  trunc.w.s  $f4, $f0
/* 7961C 800822EC 44022000 */  mfc1       $v0, $f4
/* 79620 800822F0 24420080 */  addiu      $v0, $v0, 0x80
/* 79624 800822F4 04410002 */  bgez       $v0, .L80082300
/* 79628 800822F8 AC620014 */   sw        $v0, 0x14($v1)
/* 7962C 800822FC AC600014 */  sw         $zero, 0x14($v1)
.L80082300:
/* 79630 80082300 8C620014 */  lw         $v0, 0x14($v1)
/* 79634 80082304 28420101 */  slti       $v0, $v0, 0x101
/* 79638 80082308 14400002 */  bnez       $v0, .L80082314
/* 7963C 8008230C 24020100 */   addiu     $v0, $zero, 0x100
/* 79640 80082310 AC620014 */  sw         $v0, 0x14($v1)
.L80082314:
/* 79644 80082314 8C640024 */  lw         $a0, 0x24($v1)
/* 79648 80082318 8C650014 */  lw         $a1, 0x14($v1)
/* 7964C 8008231C 0C003E19 */  jal        MusHandleSetPan
/* 79650 80082320 00000000 */   nop
/* 79654 80082324 8FBF0010 */  lw         $ra, 0x10($sp)
/* 79658 80082328 03E00008 */  jr         $ra
/* 7965C 8008232C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80082330
/* 79660 80082330 3C018004 */  lui        $at, %hi(D_800409C8)
/* 79664 80082334 C42009C8 */  lwc1       $f0, %lo(D_800409C8)($at)
/* 79668 80082338 44851000 */  mtc1       $a1, $f2
/* 7966C 8008233C 46001002 */  mul.s      $f0, $f2, $f0
/* 79670 80082340 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79674 80082344 4600008D */  trunc.w.s  $f2, $f0
/* 79678 80082348 44031000 */  mfc1       $v1, $f2
/* 7967C 8008234C 2C620800 */  sltiu      $v0, $v1, 0x800
/* 79680 80082350 14400002 */  bnez       $v0, .L8008235C
/* 79684 80082354 AFBF0010 */   sw        $ra, 0x10($sp)
/* 79688 80082358 240307FF */  addiu      $v1, $zero, 0x7FF
.L8008235C:
/* 7968C 8008235C 3C028008 */  lui        $v0, %hi(D_80087850)
/* 79690 80082360 24427850 */  addiu      $v0, $v0, %lo(D_80087850)
/* 79694 80082364 00031880 */  sll        $v1, $v1, 2
/* 79698 80082368 00621821 */  addu       $v1, $v1, $v0
/* 7969C 8008236C 8C82000C */  lw         $v0, 0xC($a0)
/* 796A0 80082370 C4600000 */  lwc1       $f0, 0x0($v1)
/* 796A4 80082374 30420002 */  andi       $v0, $v0, 0x2
/* 796A8 80082378 10400005 */  beqz       $v0, .L80082390
/* 796AC 8008237C E4800018 */   swc1      $f0, 0x18($a0)
/* 796B0 80082380 8C840024 */  lw         $a0, 0x24($a0)
/* 796B4 80082384 44050000 */  mfc1       $a1, $f0
/* 796B8 80082388 0C003E31 */  jal        MusHandleSetFreqOffset
/* 796BC 8008238C 00000000 */   nop
.L80082390:
/* 796C0 80082390 8FBF0010 */  lw         $ra, 0x10($sp)
/* 796C4 80082394 03E00008 */  jr         $ra
/* 796C8 80082398 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008239C
/* 796CC 8008239C 03E00008 */  jr         $ra
/* 796D0 800823A0 AC85001C */   sw        $a1, 0x1C($a0)

glabel func_800823A4
/* 796D4 800823A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 796D8 800823A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 796DC 800823AC 00808021 */  addu       $s0, $a0, $zero
/* 796E0 800823B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 796E4 800823B4 8E02000C */  lw         $v0, 0xC($s0)
/* 796E8 800823B8 30420002 */  andi       $v0, $v0, 0x2
/* 796EC 800823BC 1040000D */  beqz       $v0, .L800823F4
/* 796F0 800823C0 00000000 */   nop
/* 796F4 800823C4 8E040024 */  lw         $a0, 0x24($s0)
/* 796F8 800823C8 0C003DEF */  jal        MusHandleAs
/* 796FC 800823CC 00000000 */   nop
/* 79700 800823D0 1C400008 */  bgtz       $v0, .L800823F4
/* 79704 800823D4 00000000 */   nop
/* 79708 800823D8 8E040024 */  lw         $a0, 0x24($s0)
/* 7970C 800823DC 0C003DC3 */  jal        MusHandleStop
/* 79710 800823E0 00002821 */   addu      $a1, $zero, $zero
/* 79714 800823E4 8E02000C */  lw         $v0, 0xC($s0)
/* 79718 800823E8 2403FFF9 */  addiu      $v1, $zero, -0x7
/* 7971C 800823EC 00431024 */  and        $v0, $v0, $v1
/* 79720 800823F0 AE02000C */  sw         $v0, 0xC($s0)
.L800823F4:
/* 79724 800823F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 79728 800823F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 7972C 800823FC 03E00008 */  jr         $ra
/* 79730 80082400 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80082404
/* 79734 80082404 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79738 80082408 AFB00010 */  sw         $s0, 0x10($sp)
/* 7973C 8008240C 00808021 */  addu       $s0, $a0, $zero
/* 79740 80082410 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79744 80082414 8E02000C */  lw         $v0, 0xC($s0)
/* 79748 80082418 30420004 */  andi       $v0, $v0, 0x4
/* 7974C 8008241C 14400008 */  bnez       $v0, .L80082440
/* 79750 80082420 00000000 */   nop
/* 79754 80082424 8E020000 */  lw         $v0, 0x0($s0)
/* 79758 80082428 84440010 */  lh         $a0, 0x10($v0)
/* 7975C 8008242C 8C420014 */  lw         $v0, 0x14($v0)
/* 79760 80082430 0040F809 */  jalr       $v0
/* 79764 80082434 02042021 */   addu      $a0, $s0, $a0
/* 79768 80082438 08020916 */  j          .L80082458
/* 7976C 8008243C 00000000 */   nop
.L80082440:
/* 79770 80082440 8E040024 */  lw         $a0, 0x24($s0)
/* 79774 80082444 0C003DC3 */  jal        MusHandleStop
/* 79778 80082448 00002821 */   addu      $a1, $zero, $zero
/* 7977C 8008244C 8E02000C */  lw         $v0, 0xC($s0)
/* 79780 80082450 34420008 */  ori        $v0, $v0, 0x8
/* 79784 80082454 AE02000C */  sw         $v0, 0xC($s0)
.L80082458:
/* 79788 80082458 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7978C 8008245C 8FB00010 */  lw         $s0, 0x10($sp)
/* 79790 80082460 03E00008 */  jr         $ra
/* 79794 80082464 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80082468
/* 79798 80082468 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7979C 8008246C 00801821 */  addu       $v1, $a0, $zero
/* 797A0 80082470 AFBF0010 */  sw         $ra, 0x10($sp)
/* 797A4 80082474 8C62000C */  lw         $v0, 0xC($v1)
/* 797A8 80082478 30420004 */  andi       $v0, $v0, 0x4
/* 797AC 8008247C 10400006 */  beqz       $v0, .L80082498
/* 797B0 80082480 24050001 */   addiu     $a1, $zero, 0x1
/* 797B4 80082484 8C620000 */  lw         $v0, 0x0($v1)
/* 797B8 80082488 84440008 */  lh         $a0, 0x8($v0)
/* 797BC 8008248C 8C42000C */  lw         $v0, 0xC($v0)
/* 797C0 80082490 0040F809 */  jalr       $v0
/* 797C4 80082494 00642021 */   addu      $a0, $v1, $a0
.L80082498:
/* 797C8 80082498 8FBF0010 */  lw         $ra, 0x10($sp)
/* 797CC 8008249C 03E00008 */  jr         $ra
/* 797D0 800824A0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800824A4
/* 797D4 800824A4 8C820004 */  lw         $v0, 0x4($a0)
/* 797D8 800824A8 03E00008 */  jr         $ra
/* 797DC 800824AC 00000000 */   nop

glabel func_800824B0
/* 797E0 800824B0 8C820004 */  lw         $v0, 0x4($a0)
/* 797E4 800824B4 03E00008 */  jr         $ra
/* 797E8 800824B8 00000000 */   nop

glabel func_800824BC
/* 797EC 800824BC 8C82000C */  lw         $v0, 0xC($a0)
/* 797F0 800824C0 03E00008 */  jr         $ra
/* 797F4 800824C4 30420001 */   andi      $v0, $v0, 0x1

glabel func_800824C8
/* 797F8 800824C8 03E00008 */  jr         $ra
/* 797FC 800824CC AC850004 */   sw        $a1, 0x4($a0)

glabel func_800824D0
/* 79800 800824D0 03E00008 */  jr         $ra
/* 79804 800824D4 AC850008 */   sw        $a1, 0x8($a0)

glabel func_800824D8
/* 79808 800824D8 8C820008 */  lw         $v0, 0x8($a0)
/* 7980C 800824DC 03E00008 */  jr         $ra
/* 79810 800824E0 00000000 */   nop
