.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800D71D0
/* F52C0 800D71D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F52C4 800D71D4 AFB00010 */  sw         $s0, 0x10($sp)
/* F52C8 800D71D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* F52CC 800D71DC 0C035C8F */  jal        func_menu_800D723C
/* F52D0 800D71E0 00808021 */   addu      $s0, $a0, $zero
/* F52D4 800D71E4 02001021 */  addu       $v0, $s0, $zero
/* F52D8 800D71E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* F52DC 800D71EC 8FB00010 */  lw         $s0, 0x10($sp)
/* F52E0 800D71F0 03E00008 */  jr         $ra
/* F52E4 800D71F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D71F8
/* F52E8 800D71F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F52EC 800D71FC AFB10014 */  sw         $s1, 0x14($sp)
/* F52F0 800D7200 00808821 */  addu       $s1, $a0, $zero
/* F52F4 800D7204 AFB00010 */  sw         $s0, 0x10($sp)
/* F52F8 800D7208 AFBF0018 */  sw         $ra, 0x18($sp)
/* F52FC 800D720C 0C035CCC */  jal        func_menu_800D7330
/* F5300 800D7210 00A08021 */   addu      $s0, $a1, $zero
/* F5304 800D7214 32100001 */  andi       $s0, $s0, 0x1
/* F5308 800D7218 12000003 */  beqz       $s0, .Lmenu_800D7228
/* F530C 800D721C 00000000 */   nop
/* F5310 800D7220 0C01FB5C */  jal        func_8007ED70
/* F5314 800D7224 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800D7228:
/* F5318 800D7228 8FBF0018 */  lw         $ra, 0x18($sp)
/* F531C 800D722C 8FB10014 */  lw         $s1, 0x14($sp)
/* F5320 800D7230 8FB00010 */  lw         $s0, 0x10($sp)
/* F5324 800D7234 03E00008 */  jr         $ra
/* F5328 800D7238 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D723C
/* F532C 800D723C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F5330 800D7240 AFB00010 */  sw         $s0, 0x10($sp)
/* F5334 800D7244 00808021 */  addu       $s0, $a0, $zero
/* F5338 800D7248 26040030 */  addiu      $a0, $s0, 0x30
/* F533C 800D724C 00002821 */  addu       $a1, $zero, $zero
/* F5340 800D7250 2406001C */  addiu      $a2, $zero, 0x1C
/* F5344 800D7254 AFBF0014 */  sw         $ra, 0x14($sp)
/* F5348 800D7258 AE00000C */  sw         $zero, 0xC($s0)
/* F534C 800D725C AE000004 */  sw         $zero, 0x4($s0)
/* F5350 800D7260 AE000010 */  sw         $zero, 0x10($s0)
/* F5354 800D7264 AE000008 */  sw         $zero, 0x8($s0)
/* F5358 800D7268 AE000000 */  sw         $zero, 0x0($s0)
/* F535C 800D726C 0C000697 */  jal        func_80001A5C
/* F5360 800D7270 AE00004C */   sw        $zero, 0x4C($s0)
/* F5364 800D7274 26040014 */  addiu      $a0, $s0, 0x14
/* F5368 800D7278 00002821 */  addu       $a1, $zero, $zero
/* F536C 800D727C 0C000697 */  jal        func_80001A5C
/* F5370 800D7280 2406001C */   addiu     $a2, $zero, 0x1C
/* F5374 800D7284 8FBF0014 */  lw         $ra, 0x14($sp)
/* F5378 800D7288 8FB00010 */  lw         $s0, 0x10($sp)
/* F537C 800D728C 03E00008 */  jr         $ra
/* F5380 800D7290 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800D7294
/* F5384 800D7294 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F5388 800D7298 AFB00010 */  sw         $s0, 0x10($sp)
/* F538C 800D729C 00808021 */  addu       $s0, $a0, $zero
/* F5390 800D72A0 AFB10014 */  sw         $s1, 0x14($sp)
/* F5394 800D72A4 00A08821 */  addu       $s1, $a1, $zero
/* F5398 800D72A8 AFB20018 */  sw         $s2, 0x18($sp)
/* F539C 800D72AC AFBF001C */  sw         $ra, 0x1C($sp)
/* F53A0 800D72B0 0C035CCC */  jal        func_menu_800D7330
/* F53A4 800D72B4 00C09021 */   addu      $s2, $a2, $zero
/* F53A8 800D72B8 8E220004 */  lw         $v0, 0x4($s1)
/* F53AC 800D72BC AE02000C */  sw         $v0, 0xC($s0)
/* F53B0 800D72C0 8E220008 */  lw         $v0, 0x8($s1)
/* F53B4 800D72C4 AE020004 */  sw         $v0, 0x4($s0)
/* F53B8 800D72C8 8E22000C */  lw         $v0, 0xC($s1)
/* F53BC 800D72CC AE12004C */  sw         $s2, 0x4C($s0)
/* F53C0 800D72D0 AE020008 */  sw         $v0, 0x8($s0)
/* F53C4 800D72D4 8E220000 */  lw         $v0, 0x0($s1)
/* F53C8 800D72D8 AE020000 */  sw         $v0, 0x0($s0)
/* F53CC 800D72DC 8E250010 */  lw         $a1, 0x10($s1)
/* F53D0 800D72E0 0C035CF5 */  jal        func_menu_800D73D4
/* F53D4 800D72E4 02002021 */   addu      $a0, $s0, $zero
/* F53D8 800D72E8 0C035D37 */  jal        func_menu_800D74DC
/* F53DC 800D72EC 02002021 */   addu      $a0, $s0, $zero
/* F53E0 800D72F0 02002021 */  addu       $a0, $s0, $zero
/* F53E4 800D72F4 0C035D7E */  jal        func_menu_800D75F8
/* F53E8 800D72F8 00002821 */   addu      $a1, $zero, $zero
/* F53EC 800D72FC 00402821 */  addu       $a1, $v0, $zero
/* F53F0 800D7300 24020001 */  addiu      $v0, $zero, 0x1
/* F53F4 800D7304 8CA40020 */  lw         $a0, 0x20($a1)
/* F53F8 800D7308 3C036000 */  lui        $v1, (0x60000000 >> 16)
/* F53FC 800D730C AC830000 */  sw         $v1, 0x0($a0)
/* F5400 800D7310 00401821 */  addu       $v1, $v0, $zero
/* F5404 800D7314 ACA30038 */  sw         $v1, 0x38($a1)
/* F5408 800D7318 8FBF001C */  lw         $ra, 0x1C($sp)
/* F540C 800D731C 8FB20018 */  lw         $s2, 0x18($sp)
/* F5410 800D7320 8FB10014 */  lw         $s1, 0x14($sp)
/* F5414 800D7324 8FB00010 */  lw         $s0, 0x10($sp)
/* F5418 800D7328 03E00008 */  jr         $ra
/* F541C 800D732C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D7330
/* F5420 800D7330 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F5424 800D7334 AFB20018 */  sw         $s2, 0x18($sp)
/* F5428 800D7338 00809021 */  addu       $s2, $a0, $zero
/* F542C 800D733C AFBF001C */  sw         $ra, 0x1C($sp)
/* F5430 800D7340 AFB10014 */  sw         $s1, 0x14($sp)
/* F5434 800D7344 AFB00010 */  sw         $s0, 0x10($sp)
/* F5438 800D7348 8E450010 */  lw         $a1, 0x10($s2)
/* F543C 800D734C 14A00003 */  bnez       $a1, .Lmenu_800D735C
/* F5440 800D7350 00008821 */   addu      $s1, $zero, $zero
/* F5444 800D7354 08035CEF */  j          .Lmenu_800D73BC
/* F5448 800D7358 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800D735C:
/* F544C 800D735C 8E43000C */  lw         $v1, 0xC($s2)
/* F5450 800D7360 8C620000 */  lw         $v0, 0x0($v1)
/* F5454 800D7364 84440080 */  lh         $a0, 0x80($v0)
/* F5458 800D7368 8C420084 */  lw         $v0, 0x84($v0)
/* F545C 800D736C 0040F809 */  jalr       $v0
/* F5460 800D7370 00642021 */   addu      $a0, $v1, $a0
/* F5464 800D7374 02408021 */  addu       $s0, $s2, $zero
.Lmenu_800D7378:
/* F5468 800D7378 8E050014 */  lw         $a1, 0x14($s0)
/* F546C 800D737C 50A00008 */  beql       $a1, $zero, .Lmenu_800D73A0
/* F5470 800D7380 26310001 */   addiu     $s1, $s1, 0x1
/* F5474 800D7384 8E43000C */  lw         $v1, 0xC($s2)
/* F5478 800D7388 8C620000 */  lw         $v0, 0x0($v1)
/* F547C 800D738C 84440098 */  lh         $a0, 0x98($v0)
/* F5480 800D7390 8C42009C */  lw         $v0, 0x9C($v0)
/* F5484 800D7394 0040F809 */  jalr       $v0
/* F5488 800D7398 00642021 */   addu      $a0, $v1, $a0
/* F548C 800D739C 26310001 */  addiu      $s1, $s1, 0x1
.Lmenu_800D73A0:
/* F5490 800D73A0 2A220007 */  slti       $v0, $s1, 0x7
/* F5494 800D73A4 1440FFF4 */  bnez       $v0, .Lmenu_800D7378
/* F5498 800D73A8 26100004 */   addiu     $s0, $s0, 0x4
/* F549C 800D73AC 0C035C8F */  jal        func_menu_800D723C
/* F54A0 800D73B0 02402021 */   addu      $a0, $s2, $zero
/* F54A4 800D73B4 8E420010 */  lw         $v0, 0x10($s2)
/* F54A8 800D73B8 2C420001 */  sltiu      $v0, $v0, 0x1
.Lmenu_800D73BC:
/* F54AC 800D73BC 8FBF001C */  lw         $ra, 0x1C($sp)
/* F54B0 800D73C0 8FB20018 */  lw         $s2, 0x18($sp)
/* F54B4 800D73C4 8FB10014 */  lw         $s1, 0x14($sp)
/* F54B8 800D73C8 8FB00010 */  lw         $s0, 0x10($sp)
/* F54BC 800D73CC 03E00008 */  jr         $ra
/* F54C0 800D73D0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800D73D4
/* F54C4 800D73D4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F54C8 800D73D8 AFB1001C */  sw         $s1, 0x1C($sp)
/* F54CC 800D73DC 00808821 */  addu       $s1, $a0, $zero
/* F54D0 800D73E0 AFBF0028 */  sw         $ra, 0x28($sp)
/* F54D4 800D73E4 AFB30024 */  sw         $s3, 0x24($sp)
/* F54D8 800D73E8 AFB20020 */  sw         $s2, 0x20($sp)
/* F54DC 800D73EC AFB00018 */  sw         $s0, 0x18($sp)
/* F54E0 800D73F0 8E220008 */  lw         $v0, 0x8($s1)
/* F54E4 800D73F4 00A09821 */  addu       $s3, $a1, $zero
/* F54E8 800D73F8 24450701 */  addiu      $a1, $v0, 0x701
/* F54EC 800D73FC 10A00008 */  beqz       $a1, .Lmenu_800D7420
/* F54F0 800D7400 245206DA */   addiu     $s2, $v0, 0x6DA
/* F54F4 800D7404 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* F54F8 800D7408 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* F54FC 800D740C 02002021 */  addu       $a0, $s0, $zero
/* F5500 800D7410 0C000708 */  jal        func_80001C20
/* F5504 800D7414 24060100 */   addiu     $a2, $zero, 0x100
/* F5508 800D7418 08035D0A */  j          .Lmenu_800D7428
/* F550C 800D741C A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800D7420:
/* F5510 800D7420 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* F5514 800D7424 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800D7428:
/* F5518 800D7428 8E23000C */  lw         $v1, 0xC($s1)
/* F551C 800D742C 8C620000 */  lw         $v0, 0x0($v1)
/* F5520 800D7430 84440018 */  lh         $a0, 0x18($v0)
/* F5524 800D7434 8C42001C */  lw         $v0, 0x1C($v0)
/* F5528 800D7438 0040F809 */  jalr       $v0
/* F552C 800D743C 00642021 */   addu      $a0, $v1, $a0
/* F5530 800D7440 14400007 */  bnez       $v0, .Lmenu_800D7460
/* F5534 800D7444 AE220010 */   sw        $v0, 0x10($s1)
/* F5538 800D7448 3C04800D */  lui        $a0, %hi(D_menu_800CAA00)
/* F553C 800D744C 2484AA00 */  addiu      $a0, $a0, %lo(D_menu_800CAA00)
/* F5540 800D7450 00002821 */  addu       $a1, $zero, $zero
/* F5544 800D7454 00A03021 */  addu       $a2, $a1, $zero
/* F5548 800D7458 0C011ACF */  jal        func_80046B3C
/* F554C 800D745C 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800D7460:
/* F5550 800D7460 8E240010 */  lw         $a0, 0x10($s1)
/* F5554 800D7464 02403021 */  addu       $a2, $s2, $zero
/* F5558 800D7468 8C8200EC */  lw         $v0, 0xEC($a0)
/* F555C 800D746C 3C01800D */  lui        $at, %hi(D_menu_800CAA10)
/* F5560 800D7470 C420AA10 */  lwc1       $f0, %lo(D_menu_800CAA10)($at)
/* F5564 800D7474 84430030 */  lh         $v1, 0x30($v0)
/* F5568 800D7478 02603821 */  addu       $a3, $s3, $zero
/* F556C 800D747C E7A00010 */  swc1       $f0, 0x10($sp)
/* F5570 800D7480 8E250004 */  lw         $a1, 0x4($s1)
/* F5574 800D7484 8C420034 */  lw         $v0, 0x34($v0)
/* F5578 800D7488 0040F809 */  jalr       $v0
/* F557C 800D748C 00832021 */   addu      $a0, $a0, $v1
/* F5580 800D7490 3C02800D */  lui        $v0, %hi(D_menu_800CAA04)
/* F5584 800D7494 2445AA04 */  addiu      $a1, $v0, %lo(D_menu_800CAA04)
/* F5588 800D7498 10A00007 */  beqz       $a1, .Lmenu_800D74B8
/* F558C 800D749C 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* F5590 800D74A0 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* F5594 800D74A4 02002021 */  addu       $a0, $s0, $zero
/* F5598 800D74A8 0C000708 */  jal        func_80001C20
/* F559C 800D74AC 24060100 */   addiu     $a2, $zero, 0x100
/* F55A0 800D74B0 08035D30 */  j          .Lmenu_800D74C0
/* F55A4 800D74B4 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800D74B8:
/* F55A8 800D74B8 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* F55AC 800D74BC A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800D74C0:
/* F55B0 800D74C0 8FBF0028 */  lw         $ra, 0x28($sp)
/* F55B4 800D74C4 8FB30024 */  lw         $s3, 0x24($sp)
/* F55B8 800D74C8 8FB20020 */  lw         $s2, 0x20($sp)
/* F55BC 800D74CC 8FB1001C */  lw         $s1, 0x1C($sp)
/* F55C0 800D74D0 8FB00018 */  lw         $s0, 0x18($sp)
/* F55C4 800D74D4 03E00008 */  jr         $ra
/* F55C8 800D74D8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800D74DC
/* F55CC 800D74DC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* F55D0 800D74E0 AFB20028 */  sw         $s2, 0x28($sp)
/* F55D4 800D74E4 00809021 */  addu       $s2, $a0, $zero
/* F55D8 800D74E8 AFB10024 */  sw         $s1, 0x24($sp)
/* F55DC 800D74EC 00008821 */  addu       $s1, $zero, $zero
/* F55E0 800D74F0 AFB60038 */  sw         $s6, 0x38($sp)
/* F55E4 800D74F4 3C16800D */  lui        $s6, %hi(D_menu_800CAA00)
/* F55E8 800D74F8 AFB50034 */  sw         $s5, 0x34($sp)
/* F55EC 800D74FC 2415012C */  addiu      $s5, $zero, 0x12C
/* F55F0 800D7500 AFB40030 */  sw         $s4, 0x30($sp)
/* F55F4 800D7504 24140064 */  addiu      $s4, $zero, 0x64
/* F55F8 800D7508 AFB3002C */  sw         $s3, 0x2C($sp)
/* F55FC 800D750C 24130003 */  addiu      $s3, $zero, 0x3
/* F5600 800D7510 AFB00020 */  sw         $s0, 0x20($sp)
/* F5604 800D7514 02408021 */  addu       $s0, $s2, $zero
/* F5608 800D7518 AFBF003C */  sw         $ra, 0x3C($sp)
.Lmenu_800D751C:
/* F560C 800D751C 8E43000C */  lw         $v1, 0xC($s2)
/* F5610 800D7520 8C620000 */  lw         $v0, 0x0($v1)
/* F5614 800D7524 84440030 */  lh         $a0, 0x30($v0)
/* F5618 800D7528 8C420034 */  lw         $v0, 0x34($v0)
/* F561C 800D752C 0040F809 */  jalr       $v0
/* F5620 800D7530 00642021 */   addu      $a0, $v1, $a0
/* F5624 800D7534 14400006 */  bnez       $v0, .Lmenu_800D7550
/* F5628 800D7538 AE020014 */   sw        $v0, 0x14($s0)
/* F562C 800D753C 26C4AA00 */  addiu      $a0, $s6, %lo(D_menu_800CAA00)
/* F5630 800D7540 00002821 */  addu       $a1, $zero, $zero
/* F5634 800D7544 00A03021 */  addu       $a2, $a1, $zero
/* F5638 800D7548 0C011ACF */  jal        func_80046B3C
/* F563C 800D754C 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800D7550:
/* F5640 800D7550 24060002 */  addiu      $a2, $zero, 0x2
/* F5644 800D7554 8E030014 */  lw         $v1, 0x14($s0)
/* F5648 800D7558 24070258 */  addiu      $a3, $zero, 0x258
/* F564C 800D755C 8C62003C */  lw         $v0, 0x3C($v1)
/* F5650 800D7560 26100004 */  addiu      $s0, $s0, 0x4
/* F5654 800D7564 84440048 */  lh         $a0, 0x48($v0)
/* F5658 800D7568 26310001 */  addiu      $s1, $s1, 0x1
/* F565C 800D756C AFB50010 */  sw         $s5, 0x10($sp)
/* F5660 800D7570 AFB40014 */  sw         $s4, 0x14($sp)
/* F5664 800D7574 AFB30018 */  sw         $s3, 0x18($sp)
/* F5668 800D7578 8E450004 */  lw         $a1, 0x4($s2)
/* F566C 800D757C 8C42004C */  lw         $v0, 0x4C($v0)
/* F5670 800D7580 0040F809 */  jalr       $v0
/* F5674 800D7584 00642021 */   addu      $a0, $v1, $a0
/* F5678 800D7588 2A220007 */  slti       $v0, $s1, 0x7
/* F567C 800D758C 1440FFE3 */  bnez       $v0, .Lmenu_800D751C
/* F5680 800D7590 00002821 */   addu      $a1, $zero, $zero
/* F5684 800D7594 26440030 */  addiu      $a0, $s2, 0x30
/* F5688 800D7598 0C000697 */  jal        func_80001A5C
/* F568C 800D759C 2406001C */   addiu     $a2, $zero, 0x1C
/* F5690 800D75A0 8FBF003C */  lw         $ra, 0x3C($sp)
/* F5694 800D75A4 8FB60038 */  lw         $s6, 0x38($sp)
/* F5698 800D75A8 8FB50034 */  lw         $s5, 0x34($sp)
/* F569C 800D75AC 8FB40030 */  lw         $s4, 0x30($sp)
/* F56A0 800D75B0 8FB3002C */  lw         $s3, 0x2C($sp)
/* F56A4 800D75B4 8FB20028 */  lw         $s2, 0x28($sp)
/* F56A8 800D75B8 8FB10024 */  lw         $s1, 0x24($sp)
/* F56AC 800D75BC 8FB00020 */  lw         $s0, 0x20($sp)
/* F56B0 800D75C0 03E00008 */  jr         $ra
/* F56B4 800D75C4 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800D75C8
/* F56B8 800D75C8 00001821 */  addu       $v1, $zero, $zero
/* F56BC 800D75CC 24060001 */  addiu      $a2, $zero, 0x1
.Lmenu_800D75D0:
/* F56C0 800D75D0 8C820014 */  lw         $v0, 0x14($a0)
/* F56C4 800D75D4 14450003 */  bne        $v0, $a1, .Lmenu_800D75E4
/* F56C8 800D75D8 24630001 */   addiu     $v1, $v1, 0x1
/* F56CC 800D75DC 03E00008 */  jr         $ra
/* F56D0 800D75E0 AC860030 */   sw        $a2, 0x30($a0)
.Lmenu_800D75E4:
/* F56D4 800D75E4 28620007 */  slti       $v0, $v1, 0x7
/* F56D8 800D75E8 1440FFF9 */  bnez       $v0, .Lmenu_800D75D0
/* F56DC 800D75EC 24840004 */   addiu     $a0, $a0, 0x4
/* F56E0 800D75F0 03E00008 */  jr         $ra
/* F56E4 800D75F4 00000000 */   nop

glabel func_menu_800D75F8
/* F56E8 800D75F8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F56EC 800D75FC AFB1001C */  sw         $s1, 0x1C($sp)
/* F56F0 800D7600 00808821 */  addu       $s1, $a0, $zero
/* F56F4 800D7604 27A60010 */  addiu      $a2, $sp, 0x10
/* F56F8 800D7608 AFBF0024 */  sw         $ra, 0x24($sp)
/* F56FC 800D760C AFB20020 */  sw         $s2, 0x20($sp)
/* F5700 800D7610 AFB00018 */  sw         $s0, 0x18($sp)
/* F5704 800D7614 8E240008 */  lw         $a0, 0x8($s1)
/* F5708 800D7618 0C035BD0 */  jal        func_menu_800D6F40
/* F570C 800D761C 24120001 */   addiu     $s2, $zero, 0x1
/* F5710 800D7620 00001821 */  addu       $v1, $zero, $zero
/* F5714 800D7624 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800D7628:
/* F5718 800D7628 8E020030 */  lw         $v0, 0x30($s0)
/* F571C 800D762C 14400009 */  bnez       $v0, .Lmenu_800D7654
/* F5720 800D7630 24630001 */   addiu     $v1, $v1, 0x1
/* F5724 800D7634 8E240000 */  lw         $a0, 0x0($s1)
/* F5728 800D7638 8E250004 */  lw         $a1, 0x4($s1)
/* F572C 800D763C 8E060014 */  lw         $a2, 0x14($s0)
/* F5730 800D7640 0C03AEAC */  jal        func_menu_800EBAB0
/* F5734 800D7644 27A70010 */   addiu     $a3, $sp, 0x10
/* F5738 800D7648 8E020014 */  lw         $v0, 0x14($s0)
/* F573C 800D764C 08035D99 */  j          .Lmenu_800D7664
/* F5740 800D7650 AE120030 */   sw        $s2, 0x30($s0)
.Lmenu_800D7654:
/* F5744 800D7654 28620007 */  slti       $v0, $v1, 0x7
/* F5748 800D7658 1440FFF3 */  bnez       $v0, .Lmenu_800D7628
/* F574C 800D765C 26100004 */   addiu     $s0, $s0, 0x4
/* F5750 800D7660 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800D7664:
/* F5754 800D7664 8FBF0024 */  lw         $ra, 0x24($sp)
/* F5758 800D7668 8FB20020 */  lw         $s2, 0x20($sp)
/* F575C 800D766C 8FB1001C */  lw         $s1, 0x1C($sp)
/* F5760 800D7670 8FB00018 */  lw         $s0, 0x18($sp)
/* F5764 800D7674 03E00008 */  jr         $ra
/* F5768 800D7678 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D767C
/* F576C 800D767C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F5770 800D7680 AFB00020 */  sw         $s0, 0x20($sp)
/* F5774 800D7684 00808021 */  addu       $s0, $a0, $zero
/* F5778 800D7688 27A60010 */  addiu      $a2, $sp, 0x10
/* F577C 800D768C AFBF0024 */  sw         $ra, 0x24($sp)
/* F5780 800D7690 8E040008 */  lw         $a0, 0x8($s0)
/* F5784 800D7694 0C035BDB */  jal        func_menu_800D6F6C
/* F5788 800D7698 27A70018 */   addiu     $a3, $sp, 0x18
/* F578C 800D769C 8E020010 */  lw         $v0, 0x10($s0)
/* F5790 800D76A0 27A50010 */  addiu      $a1, $sp, 0x10
/* F5794 800D76A4 8C4300B0 */  lw         $v1, 0xB0($v0)
/* F5798 800D76A8 14600003 */  bnez       $v1, .Lmenu_800D76B8
/* F579C 800D76AC 244400B0 */   addiu     $a0, $v0, 0xB0
/* F57A0 800D76B0 08035DB0 */  j          .Lmenu_800D76C0
/* F57A4 800D76B4 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800D76B8:
/* F57A8 800D76B8 0C016427 */  jal        func_8005909C
/* F57AC 800D76BC 00000000 */   nop
.Lmenu_800D76C0:
/* F57B0 800D76C0 8C420078 */  lw         $v0, 0x78($v0)
/* F57B4 800D76C4 8FBF0024 */  lw         $ra, 0x24($sp)
/* F57B8 800D76C8 8FB00020 */  lw         $s0, 0x20($sp)
/* F57BC 800D76CC 03E00008 */  jr         $ra
/* F57C0 800D76D0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D76D4
/* F57C4 800D76D4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F57C8 800D76D8 AFB00020 */  sw         $s0, 0x20($sp)
/* F57CC 800D76DC 00808021 */  addu       $s0, $a0, $zero
/* F57D0 800D76E0 27A60010 */  addiu      $a2, $sp, 0x10
/* F57D4 800D76E4 AFBF0024 */  sw         $ra, 0x24($sp)
/* F57D8 800D76E8 8E040008 */  lw         $a0, 0x8($s0)
/* F57DC 800D76EC 0C035BF6 */  jal        func_menu_800D6FD8
/* F57E0 800D76F0 27A70018 */   addiu     $a3, $sp, 0x18
/* F57E4 800D76F4 8E020010 */  lw         $v0, 0x10($s0)
/* F57E8 800D76F8 27A50010 */  addiu      $a1, $sp, 0x10
/* F57EC 800D76FC 8C4300B0 */  lw         $v1, 0xB0($v0)
/* F57F0 800D7700 14600003 */  bnez       $v1, .Lmenu_800D7710
/* F57F4 800D7704 244400B0 */   addiu     $a0, $v0, 0xB0
/* F57F8 800D7708 08035DC6 */  j          .Lmenu_800D7718
/* F57FC 800D770C 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800D7710:
/* F5800 800D7710 0C016427 */  jal        func_8005909C
/* F5804 800D7714 00000000 */   nop
.Lmenu_800D7718:
/* F5808 800D7718 8C420078 */  lw         $v0, 0x78($v0)
/* F580C 800D771C 8FBF0024 */  lw         $ra, 0x24($sp)
/* F5810 800D7720 8FB00020 */  lw         $s0, 0x20($sp)
/* F5814 800D7724 03E00008 */  jr         $ra
/* F5818 800D7728 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D772C
/* F581C 800D772C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F5820 800D7730 AFB00020 */  sw         $s0, 0x20($sp)
/* F5824 800D7734 00808021 */  addu       $s0, $a0, $zero
/* F5828 800D7738 27A60010 */  addiu      $a2, $sp, 0x10
/* F582C 800D773C AFBF0024 */  sw         $ra, 0x24($sp)
/* F5830 800D7740 8E040008 */  lw         $a0, 0x8($s0)
/* F5834 800D7744 0C035C13 */  jal        func_menu_800D704C
/* F5838 800D7748 27A70018 */   addiu     $a3, $sp, 0x18
/* F583C 800D774C 8E020010 */  lw         $v0, 0x10($s0)
/* F5840 800D7750 27A50010 */  addiu      $a1, $sp, 0x10
/* F5844 800D7754 8C4300B0 */  lw         $v1, 0xB0($v0)
/* F5848 800D7758 14600003 */  bnez       $v1, .Lmenu_800D7768
/* F584C 800D775C 244400B0 */   addiu     $a0, $v0, 0xB0
/* F5850 800D7760 08035DDC */  j          .Lmenu_800D7770
/* F5854 800D7764 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800D7768:
/* F5858 800D7768 0C016427 */  jal        func_8005909C
/* F585C 800D776C 00000000 */   nop
.Lmenu_800D7770:
/* F5860 800D7770 8C420078 */  lw         $v0, 0x78($v0)
/* F5864 800D7774 8FBF0024 */  lw         $ra, 0x24($sp)
/* F5868 800D7778 8FB00020 */  lw         $s0, 0x20($sp)
/* F586C 800D777C 03E00008 */  jr         $ra
/* F5870 800D7780 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800D7784
/* F5874 800D7784 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F5878 800D7788 AFB10024 */  sw         $s1, 0x24($sp)
/* F587C 800D778C 00808821 */  addu       $s1, $a0, $zero
/* F5880 800D7790 AFB00020 */  sw         $s0, 0x20($sp)
/* F5884 800D7794 27B00018 */  addiu      $s0, $sp, 0x18
/* F5888 800D7798 27A60010 */  addiu      $a2, $sp, 0x10
/* F588C 800D779C AFBF0028 */  sw         $ra, 0x28($sp)
/* F5890 800D77A0 8E240008 */  lw         $a0, 0x8($s1)
/* F5894 800D77A4 0C035BDB */  jal        func_menu_800D6F6C
/* F5898 800D77A8 02003821 */   addu      $a3, $s0, $zero
/* F589C 800D77AC 8E240004 */  lw         $a0, 0x4($s1)
/* F58A0 800D77B0 0C016F2D */  jal        func_8005BCB4
/* F58A4 800D77B4 02002821 */   addu      $a1, $s0, $zero
/* F58A8 800D77B8 8FBF0028 */  lw         $ra, 0x28($sp)
/* F58AC 800D77BC 8FB10024 */  lw         $s1, 0x24($sp)
/* F58B0 800D77C0 8FB00020 */  lw         $s0, 0x20($sp)
/* F58B4 800D77C4 03E00008 */  jr         $ra
/* F58B8 800D77C8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800D77CC
/* F58BC 800D77CC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F58C0 800D77D0 AFB10024 */  sw         $s1, 0x24($sp)
/* F58C4 800D77D4 00808821 */  addu       $s1, $a0, $zero
/* F58C8 800D77D8 AFB00020 */  sw         $s0, 0x20($sp)
/* F58CC 800D77DC 27B00018 */  addiu      $s0, $sp, 0x18
/* F58D0 800D77E0 27A60010 */  addiu      $a2, $sp, 0x10
/* F58D4 800D77E4 AFBF0028 */  sw         $ra, 0x28($sp)
/* F58D8 800D77E8 8E240008 */  lw         $a0, 0x8($s1)
/* F58DC 800D77EC 0C035BF6 */  jal        func_menu_800D6FD8
/* F58E0 800D77F0 02003821 */   addu      $a3, $s0, $zero
/* F58E4 800D77F4 8E240004 */  lw         $a0, 0x4($s1)
/* F58E8 800D77F8 0C016F2D */  jal        func_8005BCB4
/* F58EC 800D77FC 02002821 */   addu      $a1, $s0, $zero
/* F58F0 800D7800 8FBF0028 */  lw         $ra, 0x28($sp)
/* F58F4 800D7804 8FB10024 */  lw         $s1, 0x24($sp)
/* F58F8 800D7808 8FB00020 */  lw         $s0, 0x20($sp)
/* F58FC 800D780C 03E00008 */  jr         $ra
/* F5900 800D7810 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800D7814
/* F5904 800D7814 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F5908 800D7818 AFB10024 */  sw         $s1, 0x24($sp)
/* F590C 800D781C 00808821 */  addu       $s1, $a0, $zero
/* F5910 800D7820 AFB00020 */  sw         $s0, 0x20($sp)
/* F5914 800D7824 27B00018 */  addiu      $s0, $sp, 0x18
/* F5918 800D7828 27A60010 */  addiu      $a2, $sp, 0x10
/* F591C 800D782C AFBF0028 */  sw         $ra, 0x28($sp)
/* F5920 800D7830 8E240008 */  lw         $a0, 0x8($s1)
/* F5924 800D7834 0C035C13 */  jal        func_menu_800D704C
/* F5928 800D7838 02003821 */   addu      $a3, $s0, $zero
/* F592C 800D783C 8E240004 */  lw         $a0, 0x4($s1)
/* F5930 800D7840 0C016F2D */  jal        func_8005BCB4
/* F5934 800D7844 02002821 */   addu      $a1, $s0, $zero
/* F5938 800D7848 8FBF0028 */  lw         $ra, 0x28($sp)
/* F593C 800D784C 8FB10024 */  lw         $s1, 0x24($sp)
/* F5940 800D7850 8FB00020 */  lw         $s0, 0x20($sp)
/* F5944 800D7854 03E00008 */  jr         $ra
/* F5948 800D7858 27BD0030 */   addiu     $sp, $sp, 0x30
