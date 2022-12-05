.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8011E330
/* 13C420 8011E330 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13C424 8011E334 AFB00010 */  sw         $s0, 0x10($sp)
/* 13C428 8011E338 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13C42C 8011E33C 0C0478E7 */  jal        func_menu_8011E39C
/* 13C430 8011E340 00808021 */   addu      $s0, $a0, $zero
/* 13C434 8011E344 02001021 */  addu       $v0, $s0, $zero
/* 13C438 8011E348 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13C43C 8011E34C 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C440 8011E350 03E00008 */  jr         $ra
/* 13C444 8011E354 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011E358
/* 13C448 8011E358 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13C44C 8011E35C AFB10014 */  sw         $s1, 0x14($sp)
/* 13C450 8011E360 00808821 */  addu       $s1, $a0, $zero
/* 13C454 8011E364 AFB00010 */  sw         $s0, 0x10($sp)
/* 13C458 8011E368 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13C45C 8011E36C 0C047901 */  jal        func_menu_8011E404
/* 13C460 8011E370 00A08021 */   addu      $s0, $a1, $zero
/* 13C464 8011E374 32100001 */  andi       $s0, $s0, 0x1
/* 13C468 8011E378 12000003 */  beqz       $s0, .Lmenu_8011E388
/* 13C46C 8011E37C 00000000 */   nop
/* 13C470 8011E380 0C01FB5C */  jal        func_8007ED70
/* 13C474 8011E384 02202021 */   addu      $a0, $s1, $zero
.Lmenu_8011E388:
/* 13C478 8011E388 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13C47C 8011E38C 8FB10014 */  lw         $s1, 0x14($sp)
/* 13C480 8011E390 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C484 8011E394 03E00008 */  jr         $ra
/* 13C488 8011E398 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011E39C
/* 13C48C 8011E39C AC800000 */  sw         $zero, 0x0($a0)
/* 13C490 8011E3A0 AC800004 */  sw         $zero, 0x4($a0)
/* 13C494 8011E3A4 03E00008 */  jr         $ra
/* 13C498 8011E3A8 AC800008 */   sw        $zero, 0x8($a0)

glabel func_menu_8011E3AC
/* 13C49C 8011E3AC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13C4A0 8011E3B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 13C4A4 8011E3B4 00808021 */  addu       $s0, $a0, $zero
/* 13C4A8 8011E3B8 AFB10014 */  sw         $s1, 0x14($sp)
/* 13C4AC 8011E3BC 00A08821 */  addu       $s1, $a1, $zero
/* 13C4B0 8011E3C0 AFB20018 */  sw         $s2, 0x18($sp)
/* 13C4B4 8011E3C4 00C09021 */  addu       $s2, $a2, $zero
/* 13C4B8 8011E3C8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 13C4BC 8011E3CC AFBF0020 */  sw         $ra, 0x20($sp)
/* 13C4C0 8011E3D0 0C047901 */  jal        func_menu_8011E404
/* 13C4C4 8011E3D4 00E09821 */   addu      $s3, $a3, $zero
/* 13C4C8 8011E3D8 AE110000 */  sw         $s1, 0x0($s0)
/* 13C4CC 8011E3DC AE120004 */  sw         $s2, 0x4($s0)
/* 13C4D0 8011E3E0 AE130008 */  sw         $s3, 0x8($s0)
/* 13C4D4 8011E3E4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13C4D8 8011E3E8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13C4DC 8011E3EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 13C4E0 8011E3F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 13C4E4 8011E3F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C4E8 8011E3F8 24020001 */  addiu      $v0, $zero, 0x1
/* 13C4EC 8011E3FC 03E00008 */  jr         $ra
/* 13C4F0 8011E400 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011E404
/* 13C4F4 8011E404 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13C4F8 8011E408 AFB00010 */  sw         $s0, 0x10($sp)
/* 13C4FC 8011E40C 00808021 */  addu       $s0, $a0, $zero
/* 13C500 8011E410 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13C504 8011E414 8E020004 */  lw         $v0, 0x4($s0)
/* 13C508 8011E418 10400004 */  beqz       $v0, .Lmenu_8011E42C
/* 13C50C 8011E41C 00000000 */   nop
/* 13C510 8011E420 0C0478E7 */  jal        func_menu_8011E39C
/* 13C514 8011E424 00000000 */   nop
/* 13C518 8011E428 8E020004 */  lw         $v0, 0x4($s0)
.Lmenu_8011E42C:
/* 13C51C 8011E42C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13C520 8011E430 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C524 8011E434 2C420001 */  sltiu      $v0, $v0, 0x1
/* 13C528 8011E438 03E00008 */  jr         $ra
/* 13C52C 8011E43C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011E440
/* 13C530 8011E440 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13C534 8011E444 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13C538 8011E448 8C830004 */  lw         $v1, 0x4($a0)
/* 13C53C 8011E44C 1060000B */  beqz       $v1, .Lmenu_8011E47C
/* 13C540 8011E450 00A03021 */   addu      $a2, $a1, $zero
/* 13C544 8011E454 10C00009 */  beqz       $a2, .Lmenu_8011E47C
/* 13C548 8011E458 00000000 */   nop
/* 13C54C 8011E45C 8C850008 */  lw         $a1, 0x8($a0)
/* 13C550 8011E460 8C620000 */  lw         $v0, 0x0($v1)
/* 13C554 8011E464 00A62821 */  addu       $a1, $a1, $a2
/* 13C558 8011E468 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 13C55C 8011E46C 84440028 */  lh         $a0, 0x28($v0)
/* 13C560 8011E470 8C42002C */  lw         $v0, 0x2C($v0)
/* 13C564 8011E474 0040F809 */  jalr       $v0
/* 13C568 8011E478 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011E47C:
/* 13C56C 8011E47C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13C570 8011E480 03E00008 */  jr         $ra
/* 13C574 8011E484 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011E488
/* 13C578 8011E488 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13C57C 8011E48C 00804021 */  addu       $t0, $a0, $zero
/* 13C580 8011E490 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13C584 8011E494 8D030004 */  lw         $v1, 0x4($t0)
/* 13C588 8011E498 44871000 */  mtc1       $a3, $f2
/* 13C58C 8011E49C 10600011 */  beqz       $v1, .Lmenu_8011E4E4
/* 13C590 8011E4A0 00A04821 */   addu      $t1, $a1, $zero
/* 13C594 8011E4A4 1120000F */  beqz       $t1, .Lmenu_8011E4E4
/* 13C598 8011E4A8 00000000 */   nop
/* 13C59C 8011E4AC 8C620000 */  lw         $v0, 0x0($v1)
/* 13C5A0 8011E4B0 C7A00038 */  lwc1       $f0, 0x38($sp)
/* 13C5A4 8011E4B4 8D050008 */  lw         $a1, 0x8($t0)
/* 13C5A8 8011E4B8 84440040 */  lh         $a0, 0x40($v0)
/* 13C5AC 8011E4BC E7A00010 */  swc1       $f0, 0x10($sp)
/* 13C5B0 8011E4C0 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* 13C5B4 8011E4C4 00A92821 */  addu       $a1, $a1, $t1
/* 13C5B8 8011E4C8 E7A00014 */  swc1       $f0, 0x14($sp)
/* 13C5BC 8011E4CC C7A00040 */  lwc1       $f0, 0x40($sp)
/* 13C5C0 8011E4D0 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 13C5C4 8011E4D4 E7A00018 */  swc1       $f0, 0x18($sp)
/* 13C5C8 8011E4D8 8C420044 */  lw         $v0, 0x44($v0)
/* 13C5CC 8011E4DC 0040F809 */  jalr       $v0
/* 13C5D0 8011E4E0 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011E4E4:
/* 13C5D4 8011E4E4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13C5D8 8011E4E8 03E00008 */  jr         $ra
/* 13C5DC 8011E4EC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011E4F0
/* 13C5E0 8011E4F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13C5E4 8011E4F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 13C5E8 8011E4F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13C5EC 8011E4FC 0C0490B0 */  jal        func_menu_801242C0
/* 13C5F0 8011E500 00808021 */   addu      $s0, $a0, $zero
/* 13C5F4 8011E504 3C02800D */  lui        $v0, %hi(D_menu_800D0A80)
/* 13C5F8 8011E508 24420A80 */  addiu      $v0, $v0, %lo(D_menu_800D0A80)
/* 13C5FC 8011E50C 02002021 */  addu       $a0, $s0, $zero
/* 13C600 8011E510 0C0490D1 */  jal        func_menu_80124344
/* 13C604 8011E514 AE020054 */   sw        $v0, 0x54($s0)
/* 13C608 8011E518 02001021 */  addu       $v0, $s0, $zero
/* 13C60C 8011E51C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13C610 8011E520 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C614 8011E524 03E00008 */  jr         $ra
/* 13C618 8011E528 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011E52C
/* 13C61C 8011E52C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13C620 8011E530 AFB00010 */  sw         $s0, 0x10($sp)
/* 13C624 8011E534 00808021 */  addu       $s0, $a0, $zero
/* 13C628 8011E538 AFB10014 */  sw         $s1, 0x14($sp)
/* 13C62C 8011E53C 00A08821 */  addu       $s1, $a1, $zero
/* 13C630 8011E540 3C02800D */  lui        $v0, %hi(D_menu_800D0A80)
/* 13C634 8011E544 24420A80 */  addiu      $v0, $v0, %lo(D_menu_800D0A80)
/* 13C638 8011E548 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13C63C 8011E54C 0C049139 */  jal        func_menu_801244E4
/* 13C640 8011E550 AE020054 */   sw        $v0, 0x54($s0)
/* 13C644 8011E554 02002021 */  addu       $a0, $s0, $zero
/* 13C648 8011E558 0C0490BD */  jal        func_menu_801242F4
/* 13C64C 8011E55C 02202821 */   addu      $a1, $s1, $zero
/* 13C650 8011E560 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13C654 8011E564 8FB10014 */  lw         $s1, 0x14($sp)
/* 13C658 8011E568 8FB00010 */  lw         $s0, 0x10($sp)
/* 13C65C 8011E56C 03E00008 */  jr         $ra
/* 13C660 8011E570 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011E574
/* 13C664 8011E574 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13C668 8011E578 AFB00018 */  sw         $s0, 0x18($sp)
/* 13C66C 8011E57C 00808021 */  addu       $s0, $a0, $zero
/* 13C670 8011E580 00A02021 */  addu       $a0, $a1, $zero
/* 13C674 8011E584 00C04021 */  addu       $t0, $a2, $zero
/* 13C678 8011E588 AFBF001C */  sw         $ra, 0x1C($sp)
/* 13C67C 8011E58C 8E020018 */  lw         $v0, 0x18($s0)
/* 13C680 8011E590 00021702 */  srl        $v0, $v0, 28
/* 13C684 8011E594 30420001 */  andi       $v0, $v0, 0x1
/* 13C688 8011E598 1040000E */  beqz       $v0, .Lmenu_8011E5D4
/* 13C68C 8011E59C 00E04821 */   addu      $t1, $a3, $zero
/* 13C690 8011E5A0 8E030024 */  lw         $v1, 0x24($s0)
/* 13C694 8011E5A4 10600009 */  beqz       $v1, .Lmenu_8011E5CC
/* 13C698 8011E5A8 02002821 */   addu      $a1, $s0, $zero
/* 13C69C 8011E5AC 8C620000 */  lw         $v0, 0x0($v1)
/* 13C6A0 8011E5B0 00803021 */  addu       $a2, $a0, $zero
/* 13C6A4 8011E5B4 84440058 */  lh         $a0, 0x58($v0)
/* 13C6A8 8011E5B8 01003821 */  addu       $a3, $t0, $zero
/* 13C6AC 8011E5BC AFA90010 */  sw         $t1, 0x10($sp)
/* 13C6B0 8011E5C0 8C42005C */  lw         $v0, 0x5C($v0)
/* 13C6B4 8011E5C4 0040F809 */  jalr       $v0
/* 13C6B8 8011E5C8 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011E5CC:
/* 13C6BC 8011E5CC 08047981 */  j          .Lmenu_8011E604
/* 13C6C0 8011E5D0 02001021 */   addu      $v0, $s0, $zero
.Lmenu_8011E5D4:
/* 13C6C4 8011E5D4 8E030024 */  lw         $v1, 0x24($s0)
/* 13C6C8 8011E5D8 10600009 */  beqz       $v1, .Lmenu_8011E600
/* 13C6CC 8011E5DC 02002821 */   addu      $a1, $s0, $zero
/* 13C6D0 8011E5E0 8C620000 */  lw         $v0, 0x0($v1)
/* 13C6D4 8011E5E4 00803021 */  addu       $a2, $a0, $zero
/* 13C6D8 8011E5E8 84440030 */  lh         $a0, 0x30($v0)
/* 13C6DC 8011E5EC 01003821 */  addu       $a3, $t0, $zero
/* 13C6E0 8011E5F0 AFA90010 */  sw         $t1, 0x10($sp)
/* 13C6E4 8011E5F4 8C420034 */  lw         $v0, 0x34($v0)
/* 13C6E8 8011E5F8 0040F809 */  jalr       $v0
/* 13C6EC 8011E5FC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011E600:
/* 13C6F0 8011E600 00001021 */  addu       $v0, $zero, $zero
.Lmenu_8011E604:
/* 13C6F4 8011E604 8FBF001C */  lw         $ra, 0x1C($sp)
/* 13C6F8 8011E608 8FB00018 */  lw         $s0, 0x18($sp)
/* 13C6FC 8011E60C 03E00008 */  jr         $ra
/* 13C700 8011E610 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011E614
/* 13C704 8011E614 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13C708 8011E618 AFB00018 */  sw         $s0, 0x18($sp)
/* 13C70C 8011E61C 00808021 */  addu       $s0, $a0, $zero
/* 13C710 8011E620 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13C714 8011E624 00A08821 */  addu       $s1, $a1, $zero
/* 13C718 8011E628 AFB30024 */  sw         $s3, 0x24($sp)
/* 13C71C 8011E62C 00C09821 */  addu       $s3, $a2, $zero
/* 13C720 8011E630 AFB20020 */  sw         $s2, 0x20($sp)
/* 13C724 8011E634 00E09021 */  addu       $s2, $a3, $zero
/* 13C728 8011E638 AFBF0028 */  sw         $ra, 0x28($sp)
/* 13C72C 8011E63C 8E220004 */  lw         $v0, 0x4($s1)
/* 13C730 8011E640 3C03F000 */  lui        $v1, (0xF0000000 >> 16)
/* 13C734 8011E644 00431024 */  and        $v0, $v0, $v1
/* 13C738 8011E648 3C032000 */  lui        $v1, (0x20000000 >> 16)
/* 13C73C 8011E64C 14430006 */  bne        $v0, $v1, .Lmenu_8011E668
/* 13C740 8011E650 00002021 */   addu      $a0, $zero, $zero
/* 13C744 8011E654 02002021 */  addu       $a0, $s0, $zero
/* 13C748 8011E658 02602821 */  addu       $a1, $s3, $zero
/* 13C74C 8011E65C 0C04923A */  jal        func_menu_801248E8
/* 13C750 8011E660 02403021 */   addu      $a2, $s2, $zero
/* 13C754 8011E664 2C440001 */  sltiu      $a0, $v0, 0x1
.Lmenu_8011E668:
/* 13C758 8011E668 14800010 */  bnez       $a0, .Lmenu_8011E6AC
/* 13C75C 8011E66C 00001021 */   addu      $v0, $zero, $zero
/* 13C760 8011E670 8E030024 */  lw         $v1, 0x24($s0)
/* 13C764 8011E674 1060000D */  beqz       $v1, .Lmenu_8011E6AC
/* 13C768 8011E678 02002821 */   addu      $a1, $s0, $zero
/* 13C76C 8011E67C 8C620000 */  lw         $v0, 0x0($v1)
/* 13C770 8011E680 02203021 */  addu       $a2, $s1, $zero
/* 13C774 8011E684 84440038 */  lh         $a0, 0x38($v0)
/* 13C778 8011E688 02603821 */  addu       $a3, $s3, $zero
/* 13C77C 8011E68C AFB20010 */  sw         $s2, 0x10($sp)
/* 13C780 8011E690 8C42003C */  lw         $v0, 0x3C($v0)
/* 13C784 8011E694 0040F809 */  jalr       $v0
/* 13C788 8011E698 00642021 */   addu      $a0, $v1, $a0
/* 13C78C 8011E69C 00401821 */  addu       $v1, $v0, $zero
/* 13C790 8011E6A0 14600002 */  bnez       $v1, .Lmenu_8011E6AC
/* 13C794 8011E6A4 02001021 */   addu      $v0, $s0, $zero
/* 13C798 8011E6A8 00001021 */  addu       $v0, $zero, $zero
.Lmenu_8011E6AC:
/* 13C79C 8011E6AC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 13C7A0 8011E6B0 8FB30024 */  lw         $s3, 0x24($sp)
/* 13C7A4 8011E6B4 8FB20020 */  lw         $s2, 0x20($sp)
/* 13C7A8 8011E6B8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13C7AC 8011E6BC 8FB00018 */  lw         $s0, 0x18($sp)
/* 13C7B0 8011E6C0 03E00008 */  jr         $ra
/* 13C7B4 8011E6C4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011E6C8
/* 13C7B8 8011E6C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13C7BC 8011E6CC AFB00018 */  sw         $s0, 0x18($sp)
/* 13C7C0 8011E6D0 00808021 */  addu       $s0, $a0, $zero
/* 13C7C4 8011E6D4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13C7C8 8011E6D8 00A08821 */  addu       $s1, $a1, $zero
/* 13C7CC 8011E6DC AFB30024 */  sw         $s3, 0x24($sp)
/* 13C7D0 8011E6E0 00C09821 */  addu       $s3, $a2, $zero
/* 13C7D4 8011E6E4 AFB20020 */  sw         $s2, 0x20($sp)
/* 13C7D8 8011E6E8 00E09021 */  addu       $s2, $a3, $zero
/* 13C7DC 8011E6EC AFBF0028 */  sw         $ra, 0x28($sp)
/* 13C7E0 8011E6F0 8E220004 */  lw         $v0, 0x4($s1)
/* 13C7E4 8011E6F4 3C03F000 */  lui        $v1, (0xF0000000 >> 16)
/* 13C7E8 8011E6F8 00431024 */  and        $v0, $v0, $v1
/* 13C7EC 8011E6FC 3C032000 */  lui        $v1, (0x20000000 >> 16)
/* 13C7F0 8011E700 14430006 */  bne        $v0, $v1, .Lmenu_8011E71C
/* 13C7F4 8011E704 00002021 */   addu      $a0, $zero, $zero
/* 13C7F8 8011E708 02002021 */  addu       $a0, $s0, $zero
/* 13C7FC 8011E70C 02602821 */  addu       $a1, $s3, $zero
/* 13C800 8011E710 0C04923A */  jal        func_menu_801248E8
/* 13C804 8011E714 02403021 */   addu      $a2, $s2, $zero
/* 13C808 8011E718 2C440001 */  sltiu      $a0, $v0, 0x1
.Lmenu_8011E71C:
/* 13C80C 8011E71C 14800010 */  bnez       $a0, .Lmenu_8011E760
/* 13C810 8011E720 00001021 */   addu      $v0, $zero, $zero
/* 13C814 8011E724 8E030024 */  lw         $v1, 0x24($s0)
/* 13C818 8011E728 1060000D */  beqz       $v1, .Lmenu_8011E760
/* 13C81C 8011E72C 02002821 */   addu      $a1, $s0, $zero
/* 13C820 8011E730 8C620000 */  lw         $v0, 0x0($v1)
/* 13C824 8011E734 02203021 */  addu       $a2, $s1, $zero
/* 13C828 8011E738 84440040 */  lh         $a0, 0x40($v0)
/* 13C82C 8011E73C 02603821 */  addu       $a3, $s3, $zero
/* 13C830 8011E740 AFB20010 */  sw         $s2, 0x10($sp)
/* 13C834 8011E744 8C420044 */  lw         $v0, 0x44($v0)
/* 13C838 8011E748 0040F809 */  jalr       $v0
/* 13C83C 8011E74C 00642021 */   addu      $a0, $v1, $a0
/* 13C840 8011E750 00401821 */  addu       $v1, $v0, $zero
/* 13C844 8011E754 14600002 */  bnez       $v1, .Lmenu_8011E760
/* 13C848 8011E758 02001021 */   addu      $v0, $s0, $zero
/* 13C84C 8011E75C 00001021 */  addu       $v0, $zero, $zero
.Lmenu_8011E760:
/* 13C850 8011E760 8FBF0028 */  lw         $ra, 0x28($sp)
/* 13C854 8011E764 8FB30024 */  lw         $s3, 0x24($sp)
/* 13C858 8011E768 8FB20020 */  lw         $s2, 0x20($sp)
/* 13C85C 8011E76C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13C860 8011E770 8FB00018 */  lw         $s0, 0x18($sp)
/* 13C864 8011E774 03E00008 */  jr         $ra
/* 13C868 8011E778 27BD0030 */   addiu     $sp, $sp, 0x30
