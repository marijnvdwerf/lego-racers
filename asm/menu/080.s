.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800DF2E0
/* FD3D0 800DF2E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FD3D4 800DF2E4 AFB00010 */  sw         $s0, 0x10($sp)
/* FD3D8 800DF2E8 00808021 */  addu       $s0, $a0, $zero
/* FD3DC 800DF2EC 24050007 */  addiu      $a1, $zero, 0x7
/* FD3E0 800DF2F0 AFBF0018 */  sw         $ra, 0x18($sp)
/* FD3E4 800DF2F4 0C0026F4 */  jal        func_80009BD0
/* FD3E8 800DF2F8 AFB10014 */   sw        $s1, 0x14($sp)
/* FD3EC 800DF2FC 0C002680 */  jal        func_80009A00
/* FD3F0 800DF300 02002021 */   addu      $a0, $s0, $zero
/* FD3F4 800DF304 02002021 */  addu       $a0, $s0, $zero
/* FD3F8 800DF308 24050008 */  addiu      $a1, $zero, 0x8
/* FD3FC 800DF30C 0C0026F4 */  jal        func_80009BD0
/* FD400 800DF310 00408821 */   addu      $s1, $v0, $zero
/* FD404 800DF314 02002021 */  addu       $a0, $s0, $zero
/* FD408 800DF318 0C0026F4 */  jal        func_80009BD0
/* FD40C 800DF31C 24050005 */   addiu     $a1, $zero, 0x5
/* FD410 800DF320 02201021 */  addu       $v0, $s1, $zero
/* FD414 800DF324 8FBF0018 */  lw         $ra, 0x18($sp)
/* FD418 800DF328 8FB10014 */  lw         $s1, 0x14($sp)
/* FD41C 800DF32C 8FB00010 */  lw         $s0, 0x10($sp)
/* FD420 800DF330 03E00008 */  jr         $ra
/* FD424 800DF334 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DF338
/* FD428 800DF338 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FD42C 800DF33C AFB00010 */  sw         $s0, 0x10($sp)
/* FD430 800DF340 00808021 */  addu       $s0, $a0, $zero
/* FD434 800DF344 AFB10014 */  sw         $s1, 0x14($sp)
/* FD438 800DF348 24110006 */  addiu      $s1, $zero, 0x6
/* FD43C 800DF34C AFBF0018 */  sw         $ra, 0x18($sp)
.Lmenu_800DF350:
/* FD440 800DF350 8E020028 */  lw         $v0, 0x28($s0)
/* FD444 800DF354 844400A0 */  lh         $a0, 0xA0($v0)
/* FD448 800DF358 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FD44C 800DF35C 0040F809 */  jalr       $v0
/* FD450 800DF360 02042021 */   addu      $a0, $s0, $a0
/* FD454 800DF364 10510003 */  beq        $v0, $s1, .Lmenu_800DF374
/* FD458 800DF368 00000000 */   nop
/* FD45C 800DF36C 1440FFF8 */  bnez       $v0, .Lmenu_800DF350
/* FD460 800DF370 00000000 */   nop
.Lmenu_800DF374:
/* FD464 800DF374 8FBF0018 */  lw         $ra, 0x18($sp)
/* FD468 800DF378 8FB10014 */  lw         $s1, 0x14($sp)
/* FD46C 800DF37C 8FB00010 */  lw         $s0, 0x10($sp)
/* FD470 800DF380 03E00008 */  jr         $ra
/* FD474 800DF384 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DF388
/* FD478 800DF388 90830001 */  lbu        $v1, 0x1($a0)
/* FD47C 800DF38C 90820000 */  lbu        $v0, 0x0($a0)
/* FD480 800DF390 3063003F */  andi       $v1, $v1, 0x3F
/* FD484 800DF394 3042003F */  andi       $v0, $v0, 0x3F
/* FD488 800DF398 00621823 */  subu       $v1, $v1, $v0
/* FD48C 800DF39C 04620001 */  bltzl      $v1, .Lmenu_800DF3A4
/* FD490 800DF3A0 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800DF3A4:
/* FD494 800DF3A4 03E00008 */  jr         $ra
/* FD498 800DF3A8 00601021 */   addu      $v0, $v1, $zero

glabel func_menu_800DF3AC
/* FD49C 800DF3AC 00A05021 */  addu       $t2, $a1, $zero
/* FD4A0 800DF3B0 30E20001 */  andi       $v0, $a3, 0x1
/* FD4A4 800DF3B4 90880000 */  lbu        $t0, 0x0($a0)
/* FD4A8 800DF3B8 90830001 */  lbu        $v1, 0x1($a0)
/* FD4AC 800DF3BC 01004821 */  addu       $t1, $t0, $zero
/* FD4B0 800DF3C0 1040000F */  beqz       $v0, .Lmenu_800DF400
/* FD4B4 800DF3C4 00602821 */   addu      $a1, $v1, $zero
/* FD4B8 800DF3C8 30E20002 */  andi       $v0, $a3, 0x2
/* FD4BC 800DF3CC 50400007 */  beql       $v0, $zero, .Lmenu_800DF3EC
/* FD4C0 800DF3D0 01061023 */   subu      $v0, $t0, $a2
/* FD4C4 800DF3D4 24C20001 */  addiu      $v0, $a2, 0x1
/* FD4C8 800DF3D8 00430018 */  mult       $v0, $v1
/* FD4CC 800DF3DC 00005812 */  mflo       $t3
/* FD4D0 800DF3E0 2562FFFF */  addiu      $v0, $t3, -0x1
/* FD4D4 800DF3E4 08037D0C */  j          .Lmenu_800DF430
/* FD4D8 800DF3E8 004A1023 */   subu      $v0, $v0, $t2
.Lmenu_800DF3EC:
/* FD4DC 800DF3EC 2442FFFF */  addiu      $v0, $v0, -0x1
/* FD4E0 800DF3F0 00430018 */  mult       $v0, $v1
/* FD4E4 800DF3F4 00005812 */  mflo       $t3
/* FD4E8 800DF3F8 08037D0C */  j          .Lmenu_800DF430
/* FD4EC 800DF3FC 016A1021 */   addu      $v0, $t3, $t2
.Lmenu_800DF400:
/* FD4F0 800DF400 30E20002 */  andi       $v0, $a3, 0x2
/* FD4F4 800DF404 01450018 */  mult       $t2, $a1
/* FD4F8 800DF408 10400007 */  beqz       $v0, .Lmenu_800DF428
/* FD4FC 800DF40C 00000000 */   nop
/* FD500 800DF410 012A1023 */  subu       $v0, $t1, $t2
/* FD504 800DF414 00430018 */  mult       $v0, $v1
/* FD508 800DF418 00005812 */  mflo       $t3
/* FD50C 800DF41C 2562FFFF */  addiu      $v0, $t3, -0x1
/* FD510 800DF420 08037D0C */  j          .Lmenu_800DF430
/* FD514 800DF424 00461023 */   subu      $v0, $v0, $a2
.Lmenu_800DF428:
/* FD518 800DF428 00005812 */  mflo       $t3
/* FD51C 800DF42C 01661021 */  addu       $v0, $t3, $a2
.Lmenu_800DF430:
/* FD520 800DF430 00021040 */  sll        $v0, $v0, 1
/* FD524 800DF434 24420002 */  addiu      $v0, $v0, 0x2
/* FD528 800DF438 03E00008 */  jr         $ra
/* FD52C 800DF43C 00821021 */   addu      $v0, $a0, $v0

glabel func_menu_800DF440
/* FD530 800DF440 90830000 */  lbu        $v1, 0x0($a0)
/* FD534 800DF444 90820001 */  lbu        $v0, 0x1($a0)
/* FD538 800DF448 00620018 */  mult       $v1, $v0
/* FD53C 800DF44C 00002812 */  mflo       $a1
/* FD540 800DF450 24A30001 */  addiu      $v1, $a1, 0x1
/* FD544 800DF454 00031840 */  sll        $v1, $v1, 1
/* FD548 800DF458 00641821 */  addu       $v1, $v1, $a0
/* FD54C 800DF45C 90620001 */  lbu        $v0, 0x1($v1)
/* FD550 800DF460 90630000 */  lbu        $v1, 0x0($v1)
/* FD554 800DF464 00021200 */  sll        $v0, $v0, 8
/* FD558 800DF468 03E00008 */  jr         $ra
/* FD55C 800DF46C 00621025 */   or        $v0, $v1, $v0

glabel func_menu_800DF470
/* FD560 800DF470 03E00008 */  jr         $ra
/* FD564 800DF474 00801021 */   addu      $v0, $a0, $zero

glabel func_menu_800DF478
/* FD568 800DF478 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FD56C 800DF47C 30A50001 */  andi       $a1, $a1, 0x1
/* FD570 800DF480 10A00003 */  beqz       $a1, .Lmenu_800DF490
/* FD574 800DF484 AFBF0010 */   sw        $ra, 0x10($sp)
/* FD578 800DF488 0C01FB5C */  jal        func_8007ED70
/* FD57C 800DF48C 00000000 */   nop
.Lmenu_800DF490:
/* FD580 800DF490 8FBF0010 */  lw         $ra, 0x10($sp)
/* FD584 800DF494 03E00008 */  jr         $ra
/* FD588 800DF498 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DF49C
/* FD58C 800DF49C 8C82000C */  lw         $v0, 0xC($a0)
/* FD590 800DF4A0 90420000 */  lbu        $v0, 0x0($v0)
/* FD594 800DF4A4 03E00008 */  jr         $ra
/* FD598 800DF4A8 00000000 */   nop

glabel func_menu_800DF4AC
/* FD59C 800DF4AC 8C82000C */  lw         $v0, 0xC($a0)
/* FD5A0 800DF4B0 90420001 */  lbu        $v0, 0x1($v0)
/* FD5A4 800DF4B4 03E00008 */  jr         $ra
/* FD5A8 800DF4B8 00000000 */   nop

glabel func_menu_800DF4BC
/* FD5AC 800DF4BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FD5B0 800DF4C0 AFB10014 */  sw         $s1, 0x14($sp)
/* FD5B4 800DF4C4 00808821 */  addu       $s1, $a0, $zero
/* FD5B8 800DF4C8 AFBF0018 */  sw         $ra, 0x18($sp)
/* FD5BC 800DF4CC 0C037D27 */  jal        func_menu_800DF49C
/* FD5C0 800DF4D0 AFB00010 */   sw        $s0, 0x10($sp)
/* FD5C4 800DF4D4 02202021 */  addu       $a0, $s1, $zero
/* FD5C8 800DF4D8 0C037D2B */  jal        func_menu_800DF4AC
/* FD5CC 800DF4DC 00408021 */   addu      $s0, $v0, $zero
/* FD5D0 800DF4E0 02020018 */  mult       $s0, $v0
/* FD5D4 800DF4E4 00008012 */  mflo       $s0
/* FD5D8 800DF4E8 12000014 */  beqz       $s0, .Lmenu_800DF53C
/* FD5DC 800DF4EC 00002821 */   addu      $a1, $zero, $zero
/* FD5E0 800DF4F0 00A03021 */  addu       $a2, $a1, $zero
/* FD5E4 800DF4F4 8E24000C */  lw         $a0, 0xC($s1)
/* FD5E8 800DF4F8 0C037CEB */  jal        func_menu_800DF3AC
/* FD5EC 800DF4FC 00A03821 */   addu      $a3, $a1, $zero
/* FD5F0 800DF500 24060001 */  addiu      $a2, $zero, 0x1
/* FD5F4 800DF504 90430000 */  lbu        $v1, 0x0($v0)
/* FD5F8 800DF508 24450002 */  addiu      $a1, $v0, 0x2
/* FD5FC 800DF50C 3063003F */  andi       $v1, $v1, 0x3F
.Lmenu_800DF510:
/* FD600 800DF510 00D0102A */  slt        $v0, $a2, $s0
/* FD604 800DF514 1040000A */  beqz       $v0, .Lmenu_800DF540
/* FD608 800DF518 00601021 */   addu      $v0, $v1, $zero
/* FD60C 800DF51C 90A20000 */  lbu        $v0, 0x0($a1)
/* FD610 800DF520 3044003F */  andi       $a0, $v0, 0x3F
/* FD614 800DF524 0064102A */  slt        $v0, $v1, $a0
/* FD618 800DF528 54400001 */  bnel       $v0, $zero, .Lmenu_800DF530
/* FD61C 800DF52C 00801821 */   addu      $v1, $a0, $zero
.Lmenu_800DF530:
/* FD620 800DF530 24A50002 */  addiu      $a1, $a1, 0x2
/* FD624 800DF534 08037D44 */  j          .Lmenu_800DF510
/* FD628 800DF538 24C60001 */   addiu     $a2, $a2, 0x1
.Lmenu_800DF53C:
/* FD62C 800DF53C 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800DF540:
/* FD630 800DF540 8FBF0018 */  lw         $ra, 0x18($sp)
/* FD634 800DF544 8FB10014 */  lw         $s1, 0x14($sp)
/* FD638 800DF548 8FB00010 */  lw         $s0, 0x10($sp)
/* FD63C 800DF54C 03E00008 */  jr         $ra
/* FD640 800DF550 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DF554
/* FD644 800DF554 90A60000 */  lbu        $a2, 0x0($a1)
/* FD648 800DF558 10C0000D */  beqz       $a2, .Lmenu_800DF590
/* FD64C 800DF55C 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800DF560:
/* FD650 800DF560 28620008 */  slti       $v0, $v1, 0x8
/* FD654 800DF564 1040000D */  beqz       $v0, .Lmenu_800DF59C
/* FD658 800DF568 24A50001 */   addiu     $a1, $a1, 0x1
/* FD65C 800DF56C 00831021 */  addu       $v0, $a0, $v1
/* FD660 800DF570 A0460000 */  sb         $a2, 0x0($v0)
/* FD664 800DF574 90A60000 */  lbu        $a2, 0x0($a1)
/* FD668 800DF578 14C0FFF9 */  bnez       $a2, .Lmenu_800DF560
/* FD66C 800DF57C 24630001 */   addiu     $v1, $v1, 0x1
/* FD670 800DF580 08037D65 */  j          .Lmenu_800DF594
/* FD674 800DF584 28620008 */   slti      $v0, $v1, 0x8
.Lmenu_800DF588:
/* FD678 800DF588 A0400000 */  sb         $zero, 0x0($v0)
/* FD67C 800DF58C 24630001 */  addiu      $v1, $v1, 0x1
.Lmenu_800DF590:
/* FD680 800DF590 28620008 */  slti       $v0, $v1, 0x8
.Lmenu_800DF594:
/* FD684 800DF594 1440FFFC */  bnez       $v0, .Lmenu_800DF588
/* FD688 800DF598 00831021 */   addu      $v0, $a0, $v1
.Lmenu_800DF59C:
/* FD68C 800DF59C 03E00008 */  jr         $ra
/* FD690 800DF5A0 A0800008 */   sb        $zero, 0x8($a0)

glabel func_menu_800DF5A4
/* FD694 800DF5A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FD698 800DF5A8 AFB20018 */  sw         $s2, 0x18($sp)
/* FD69C 800DF5AC 00A09021 */  addu       $s2, $a1, $zero
/* FD6A0 800DF5B0 AFB10014 */  sw         $s1, 0x14($sp)
/* FD6A4 800DF5B4 00808821 */  addu       $s1, $a0, $zero
/* FD6A8 800DF5B8 AFBF001C */  sw         $ra, 0x1C($sp)
/* FD6AC 800DF5BC AFB00010 */  sw         $s0, 0x10($sp)
.Lmenu_800DF5C0:
/* FD6B0 800DF5C0 92220000 */  lbu        $v0, 0x0($s1)
/* FD6B4 800DF5C4 1040000C */  beqz       $v0, .Lmenu_800DF5F8
/* FD6B8 800DF5C8 00000000 */   nop
/* FD6BC 800DF5CC 92440000 */  lbu        $a0, 0x0($s2)
/* FD6C0 800DF5D0 0C0007A7 */  jal        func_80001E9C
/* FD6C4 800DF5D4 00000000 */   nop
/* FD6C8 800DF5D8 92240000 */  lbu        $a0, 0x0($s1)
/* FD6CC 800DF5DC 0C0007A7 */  jal        func_80001E9C
/* FD6D0 800DF5E0 00408021 */   addu      $s0, $v0, $zero
/* FD6D4 800DF5E4 02021023 */  subu       $v0, $s0, $v0
/* FD6D8 800DF5E8 14400006 */  bnez       $v0, .Lmenu_800DF604
/* FD6DC 800DF5EC 26520001 */   addiu     $s2, $s2, 0x1
/* FD6E0 800DF5F0 08037D70 */  j          .Lmenu_800DF5C0
/* FD6E4 800DF5F4 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800DF5F8:
/* FD6E8 800DF5F8 92440000 */  lbu        $a0, 0x0($s2)
/* FD6EC 800DF5FC 0C0007A7 */  jal        func_80001E9C
/* FD6F0 800DF600 00000000 */   nop
.Lmenu_800DF604:
/* FD6F4 800DF604 8FBF001C */  lw         $ra, 0x1C($sp)
/* FD6F8 800DF608 8FB20018 */  lw         $s2, 0x18($sp)
/* FD6FC 800DF60C 8FB10014 */  lw         $s1, 0x14($sp)
/* FD700 800DF610 8FB00010 */  lw         $s0, 0x10($sp)
/* FD704 800DF614 03E00008 */  jr         $ra
/* FD708 800DF618 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DF61C
/* FD70C 800DF61C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FD710 800DF620 AFB00010 */  sw         $s0, 0x10($sp)
/* FD714 800DF624 AFBF0014 */  sw         $ra, 0x14($sp)
/* FD718 800DF628 0C037DE2 */  jal        func_menu_800DF788
/* FD71C 800DF62C 00808021 */   addu      $s0, $a0, $zero
/* FD720 800DF630 02001021 */  addu       $v0, $s0, $zero
/* FD724 800DF634 8FBF0014 */  lw         $ra, 0x14($sp)
/* FD728 800DF638 8FB00010 */  lw         $s0, 0x10($sp)
/* FD72C 800DF63C 03E00008 */  jr         $ra
/* FD730 800DF640 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DF644
/* FD734 800DF644 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FD738 800DF648 AFB10014 */  sw         $s1, 0x14($sp)
/* FD73C 800DF64C 00808821 */  addu       $s1, $a0, $zero
/* FD740 800DF650 AFB00010 */  sw         $s0, 0x10($sp)
/* FD744 800DF654 AFBF0018 */  sw         $ra, 0x18($sp)
/* FD748 800DF658 0C037DA2 */  jal        func_menu_800DF688
/* FD74C 800DF65C 00A08021 */   addu      $s0, $a1, $zero
/* FD750 800DF660 32100001 */  andi       $s0, $s0, 0x1
/* FD754 800DF664 12000003 */  beqz       $s0, .Lmenu_800DF674
/* FD758 800DF668 00000000 */   nop
/* FD75C 800DF66C 0C01FB5C */  jal        func_8007ED70
/* FD760 800DF670 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800DF674:
/* FD764 800DF674 8FBF0018 */  lw         $ra, 0x18($sp)
/* FD768 800DF678 8FB10014 */  lw         $s1, 0x14($sp)
/* FD76C 800DF67C 8FB00010 */  lw         $s0, 0x10($sp)
/* FD770 800DF680 03E00008 */  jr         $ra
/* FD774 800DF684 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DF688
/* FD778 800DF688 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FD77C 800DF68C AFBF0010 */  sw         $ra, 0x10($sp)
/* FD780 800DF690 0C037DA9 */  jal        func_menu_800DF6A4
/* FD784 800DF694 00000000 */   nop
/* FD788 800DF698 8FBF0010 */  lw         $ra, 0x10($sp)
/* FD78C 800DF69C 03E00008 */  jr         $ra
/* FD790 800DF6A0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DF6A4
/* FD794 800DF6A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FD798 800DF6A8 AFB10014 */  sw         $s1, 0x14($sp)
/* FD79C 800DF6AC 00808821 */  addu       $s1, $a0, $zero
/* FD7A0 800DF6B0 AFBF0018 */  sw         $ra, 0x18($sp)
/* FD7A4 800DF6B4 AFB00010 */  sw         $s0, 0x10($sp)
/* FD7A8 800DF6B8 8E240004 */  lw         $a0, 0x4($s1)
/* FD7AC 800DF6BC 10800012 */  beqz       $a0, .Lmenu_800DF708
/* FD7B0 800DF6C0 00000000 */   nop
/* FD7B4 800DF6C4 8C83FFF8 */  lw         $v1, -0x8($a0)
/* FD7B8 800DF6C8 00031040 */  sll        $v0, $v1, 1
/* FD7BC 800DF6CC 00431021 */  addu       $v0, $v0, $v1
/* FD7C0 800DF6D0 000210C0 */  sll        $v0, $v0, 3
/* FD7C4 800DF6D4 00828021 */  addu       $s0, $a0, $v0
/* FD7C8 800DF6D8 10900009 */  beq        $a0, $s0, .Lmenu_800DF700
/* FD7CC 800DF6DC 00000000 */   nop
/* FD7D0 800DF6E0 2610FFE8 */  addiu      $s0, $s0, -0x18
.Lmenu_800DF6E4:
/* FD7D4 800DF6E4 02002021 */  addu       $a0, $s0, $zero
/* FD7D8 800DF6E8 0C037D1E */  jal        func_menu_800DF478
/* FD7DC 800DF6EC 24050002 */   addiu     $a1, $zero, 0x2
/* FD7E0 800DF6F0 8E220004 */  lw         $v0, 0x4($s1)
/* FD7E4 800DF6F4 5450FFFB */  bnel       $v0, $s0, .Lmenu_800DF6E4
/* FD7E8 800DF6F8 2610FFE8 */   addiu     $s0, $s0, -0x18
/* FD7EC 800DF6FC 8E240004 */  lw         $a0, 0x4($s1)
.Lmenu_800DF700:
/* FD7F0 800DF700 0C009444 */  jal        func_80025110
/* FD7F4 800DF704 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800DF708:
/* FD7F8 800DF708 8E24000C */  lw         $a0, 0xC($s1)
/* FD7FC 800DF70C 10800003 */  beqz       $a0, .Lmenu_800DF71C
/* FD800 800DF710 00000000 */   nop
/* FD804 800DF714 0C009444 */  jal        func_80025110
/* FD808 800DF718 00000000 */   nop
.Lmenu_800DF71C:
/* FD80C 800DF71C 8E240014 */  lw         $a0, 0x14($s1)
/* FD810 800DF720 10800003 */  beqz       $a0, .Lmenu_800DF730
/* FD814 800DF724 00000000 */   nop
/* FD818 800DF728 0C009444 */  jal        func_80025110
/* FD81C 800DF72C 00000000 */   nop
.Lmenu_800DF730:
/* FD820 800DF730 8E24001C */  lw         $a0, 0x1C($s1)
/* FD824 800DF734 10800003 */  beqz       $a0, .Lmenu_800DF744
/* FD828 800DF738 00000000 */   nop
/* FD82C 800DF73C 0C009444 */  jal        func_80025110
/* FD830 800DF740 00000000 */   nop
.Lmenu_800DF744:
/* FD834 800DF744 8E240024 */  lw         $a0, 0x24($s1)
/* FD838 800DF748 10800003 */  beqz       $a0, .Lmenu_800DF758
/* FD83C 800DF74C 00000000 */   nop
/* FD840 800DF750 0C009444 */  jal        func_80025110
/* FD844 800DF754 00000000 */   nop
.Lmenu_800DF758:
/* FD848 800DF758 8E24002C */  lw         $a0, 0x2C($s1)
/* FD84C 800DF75C 10800003 */  beqz       $a0, .Lmenu_800DF76C
/* FD850 800DF760 00000000 */   nop
/* FD854 800DF764 0C009444 */  jal        func_80025110
/* FD858 800DF768 00000000 */   nop
.Lmenu_800DF76C:
/* FD85C 800DF76C 0C037DE2 */  jal        func_menu_800DF788
/* FD860 800DF770 02202021 */   addu      $a0, $s1, $zero
/* FD864 800DF774 8FBF0018 */  lw         $ra, 0x18($sp)
/* FD868 800DF778 8FB10014 */  lw         $s1, 0x14($sp)
/* FD86C 800DF77C 8FB00010 */  lw         $s0, 0x10($sp)
/* FD870 800DF780 03E00008 */  jr         $ra
/* FD874 800DF784 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DF788
/* FD878 800DF788 AC800000 */  sw         $zero, 0x0($a0)
/* FD87C 800DF78C AC800004 */  sw         $zero, 0x4($a0)
/* FD880 800DF790 AC800008 */  sw         $zero, 0x8($a0)
/* FD884 800DF794 AC80000C */  sw         $zero, 0xC($a0)
/* FD888 800DF798 AC800010 */  sw         $zero, 0x10($a0)
/* FD88C 800DF79C AC800014 */  sw         $zero, 0x14($a0)
/* FD890 800DF7A0 AC800018 */  sw         $zero, 0x18($a0)
/* FD894 800DF7A4 AC80001C */  sw         $zero, 0x1C($a0)
/* FD898 800DF7A8 AC800020 */  sw         $zero, 0x20($a0)
/* FD89C 800DF7AC AC800024 */  sw         $zero, 0x24($a0)
/* FD8A0 800DF7B0 AC800028 */  sw         $zero, 0x28($a0)
/* FD8A4 800DF7B4 AC80002C */  sw         $zero, 0x2C($a0)
/* FD8A8 800DF7B8 AC800030 */  sw         $zero, 0x30($a0)
/* FD8AC 800DF7BC 03E00008 */  jr         $ra
/* FD8B0 800DF7C0 AC800034 */   sw        $zero, 0x34($a0)

glabel func_menu_800DF7C4
/* FD8B4 800DF7C4 00051040 */  sll        $v0, $a1, 1
/* FD8B8 800DF7C8 00451021 */  addu       $v0, $v0, $a1
/* FD8BC 800DF7CC 8C83001C */  lw         $v1, 0x1C($a0)
/* FD8C0 800DF7D0 00021040 */  sll        $v0, $v0, 1
/* FD8C4 800DF7D4 00621821 */  addu       $v1, $v1, $v0
/* FD8C8 800DF7D8 90620001 */  lbu        $v0, 0x1($v1)
/* FD8CC 800DF7DC 14400007 */  bnez       $v0, .Lmenu_800DF7FC
/* FD8D0 800DF7E0 00000000 */   nop
/* FD8D4 800DF7E4 90620003 */  lbu        $v0, 0x3($v1)
/* FD8D8 800DF7E8 14400004 */  bnez       $v0, .Lmenu_800DF7FC
/* FD8DC 800DF7EC 00000000 */   nop
/* FD8E0 800DF7F0 90620005 */  lbu        $v0, 0x5($v1)
/* FD8E4 800DF7F4 10400003 */  beqz       $v0, .Lmenu_800DF804
/* FD8E8 800DF7F8 00000000 */   nop
.Lmenu_800DF7FC:
/* FD8EC 800DF7FC 03E00008 */  jr         $ra
/* FD8F0 800DF800 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800DF804:
/* FD8F4 800DF804 03E00008 */  jr         $ra
/* FD8F8 800DF808 24020001 */   addiu     $v0, $zero, 0x1

glabel func_menu_800DF80C
/* FD8FC 800DF80C 00051040 */  sll        $v0, $a1, 1
/* FD900 800DF810 00451021 */  addu       $v0, $v0, $a1
/* FD904 800DF814 8C83001C */  lw         $v1, 0x1C($a0)
/* FD908 800DF818 00021040 */  sll        $v0, $v0, 1
/* FD90C 800DF81C 00621821 */  addu       $v1, $v1, $v0
/* FD910 800DF820 84620000 */  lh         $v0, 0x0($v1)
/* FD914 800DF824 3C01800D */  lui        $at, %hi(D_menu_800CAB90)
/* FD918 800DF828 C422AB90 */  lwc1       $f2, %lo(D_menu_800CAB90)($at)
/* FD91C 800DF82C 44820000 */  mtc1       $v0, $f0
/* FD920 800DF830 46800020 */  cvt.s.w    $f0, $f0
/* FD924 800DF834 46020002 */  mul.s      $f0, $f0, $f2
/* FD928 800DF838 8FA40010 */  lw         $a0, 0x10($sp)
/* FD92C 800DF83C E4C00000 */  swc1       $f0, 0x0($a2)
/* FD930 800DF840 84620002 */  lh         $v0, 0x2($v1)
/* FD934 800DF844 44820000 */  mtc1       $v0, $f0
/* FD938 800DF848 46800020 */  cvt.s.w    $f0, $f0
/* FD93C 800DF84C 46020002 */  mul.s      $f0, $f0, $f2
/* FD940 800DF850 E4E00000 */  swc1       $f0, 0x0($a3)
/* FD944 800DF854 84620004 */  lh         $v0, 0x4($v1)
/* FD948 800DF858 44820000 */  mtc1       $v0, $f0
/* FD94C 800DF85C 46800020 */  cvt.s.w    $f0, $f0
/* FD950 800DF860 46020002 */  mul.s      $f0, $f0, $f2
/* FD954 800DF864 03E00008 */  jr         $ra
/* FD958 800DF868 E4800000 */   swc1      $f0, 0x0($a0)

glabel func_menu_800DF86C
/* FD95C 800DF86C 8C82002C */  lw         $v0, 0x2C($a0)
/* FD960 800DF870 00052880 */  sll        $a1, $a1, 2
/* FD964 800DF874 00451021 */  addu       $v0, $v0, $a1
/* FD968 800DF878 84430000 */  lh         $v1, 0x0($v0)
/* FD96C 800DF87C 3C01800D */  lui        $at, %hi(D_menu_800CAB94)
/* FD970 800DF880 C422AB94 */  lwc1       $f2, %lo(D_menu_800CAB94)($at)
/* FD974 800DF884 44830000 */  mtc1       $v1, $f0
/* FD978 800DF888 46800020 */  cvt.s.w    $f0, $f0
/* FD97C 800DF88C 46020002 */  mul.s      $f0, $f0, $f2
/* FD980 800DF890 E4C00000 */  swc1       $f0, 0x0($a2)
/* FD984 800DF894 84420002 */  lh         $v0, 0x2($v0)
/* FD988 800DF898 44820000 */  mtc1       $v0, $f0
/* FD98C 800DF89C 46800020 */  cvt.s.w    $f0, $f0
/* FD990 800DF8A0 46020002 */  mul.s      $f0, $f0, $f2
/* FD994 800DF8A4 03E00008 */  jr         $ra
/* FD998 800DF8A8 E4E00000 */   swc1      $f0, 0x0($a3)

glabel func_menu_800DF8AC
/* FD99C 800DF8AC 94830010 */  lhu        $v1, 0x10($a0)
/* FD9A0 800DF8B0 94A20010 */  lhu        $v0, 0x10($a1)
/* FD9A4 800DF8B4 00621023 */  subu       $v0, $v1, $v0
/* FD9A8 800DF8B8 14400004 */  bnez       $v0, .Lmenu_800DF8CC
/* FD9AC 800DF8BC 00000000 */   nop
/* FD9B0 800DF8C0 94830012 */  lhu        $v1, 0x12($a0)
/* FD9B4 800DF8C4 94A20012 */  lhu        $v0, 0x12($a1)
/* FD9B8 800DF8C8 00621023 */  subu       $v0, $v1, $v0
.Lmenu_800DF8CC:
/* FD9BC 800DF8CC 03E00008 */  jr         $ra
/* FD9C0 800DF8D0 00000000 */   nop

glabel func_menu_800DF8D4
/* FD9C4 800DF8D4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* FD9C8 800DF8D8 AFB50034 */  sw         $s5, 0x34($sp)
/* FD9CC 800DF8DC 0080A821 */  addu       $s5, $a0, $zero
/* FD9D0 800DF8E0 AFB10024 */  sw         $s1, 0x24($sp)
/* FD9D4 800DF8E4 00A08821 */  addu       $s1, $a1, $zero
/* FD9D8 800DF8E8 AFBF0044 */  sw         $ra, 0x44($sp)
/* FD9DC 800DF8EC AFBE0040 */  sw         $fp, 0x40($sp)
/* FD9E0 800DF8F0 AFB7003C */  sw         $s7, 0x3C($sp)
/* FD9E4 800DF8F4 AFB60038 */  sw         $s6, 0x38($sp)
/* FD9E8 800DF8F8 AFB40030 */  sw         $s4, 0x30($sp)
/* FD9EC 800DF8FC AFB3002C */  sw         $s3, 0x2C($sp)
/* FD9F0 800DF900 AFB20028 */  sw         $s2, 0x28($sp)
/* FD9F4 800DF904 10C00014 */  beqz       $a2, .Lmenu_800DF958
/* FD9F8 800DF908 AFB00020 */   sw        $s0, 0x20($sp)
/* FD9FC 800DF90C 0C01FB4C */  jal        func_8007ED30
/* FDA00 800DF910 24040654 */   addiu     $a0, $zero, 0x654
/* FDA04 800DF914 0C00278C */  jal        func_80009E30
/* FDA08 800DF918 00402021 */   addu      $a0, $v0, $zero
/* FDA0C 800DF91C 00409821 */  addu       $s3, $v0, $zero
/* FDA10 800DF920 56600008 */  bnel       $s3, $zero, .Lmenu_800DF944
/* FDA14 800DF924 02602021 */   addu      $a0, $s3, $zero
/* FDA18 800DF928 3C04800D */  lui        $a0, %hi(D_menu_800CAB98)
/* FDA1C 800DF92C 2484AB98 */  addiu      $a0, $a0, %lo(D_menu_800CAB98)
/* FDA20 800DF930 00002821 */  addu       $a1, $zero, $zero
/* FDA24 800DF934 00A03021 */  addu       $a2, $a1, $zero
/* FDA28 800DF938 0C011ACF */  jal        func_80046B3C
/* FDA2C 800DF93C 00A03821 */   addu      $a3, $a1, $zero
/* FDA30 800DF940 02602021 */  addu       $a0, $s3, $zero
.Lmenu_800DF944:
/* FDA34 800DF944 3C05800D */  lui        $a1, %hi(D_menu_800CAB9C)
/* FDA38 800DF948 0C0025BA */  jal        func_800096E8
/* FDA3C 800DF94C 24A5AB9C */   addiu     $a1, $a1, %lo(D_menu_800CAB9C)
/* FDA40 800DF950 08037E66 */  j          .Lmenu_800DF998
/* FDA44 800DF954 00000000 */   nop
.Lmenu_800DF958:
/* FDA48 800DF958 0C01FB4C */  jal        func_8007ED30
/* FDA4C 800DF95C 24040658 */   addiu     $a0, $zero, 0x658
/* FDA50 800DF960 00408021 */  addu       $s0, $v0, $zero
/* FDA54 800DF964 0C002504 */  jal        func_80009410
/* FDA58 800DF968 02002021 */   addu      $a0, $s0, $zero
/* FDA5C 800DF96C 3C02800D */  lui        $v0, %hi(D_menu_800CABC0)
/* FDA60 800DF970 2442ABC0 */  addiu      $v0, $v0, %lo(D_menu_800CABC0)
/* FDA64 800DF974 02009821 */  addu       $s3, $s0, $zero
/* FDA68 800DF978 16600007 */  bnez       $s3, .Lmenu_800DF998
/* FDA6C 800DF97C AE020028 */   sw        $v0, 0x28($s0)
/* FDA70 800DF980 3C04800D */  lui        $a0, %hi(D_menu_800CAB98)
/* FDA74 800DF984 2484AB98 */  addiu      $a0, $a0, %lo(D_menu_800CAB98)
/* FDA78 800DF988 00002821 */  addu       $a1, $zero, $zero
/* FDA7C 800DF98C 00A03021 */  addu       $a2, $a1, $zero
/* FDA80 800DF990 0C011ACF */  jal        func_80046B3C
/* FDA84 800DF994 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DF998:
/* FDA88 800DF998 8E620028 */  lw         $v0, 0x28($s3)
/* FDA8C 800DF99C 02202821 */  addu       $a1, $s1, $zero
/* FDA90 800DF9A0 84440088 */  lh         $a0, 0x88($v0)
/* FDA94 800DF9A4 8C42008C */  lw         $v0, 0x8C($v0)
/* FDA98 800DF9A8 0040F809 */  jalr       $v0
/* FDA9C 800DF9AC 02642021 */   addu      $a0, $s3, $a0
/* FDAA0 800DF9B0 8E620004 */  lw         $v0, 0x4($s3)
/* FDAA4 800DF9B4 30420001 */  andi       $v0, $v0, 0x1
/* FDAA8 800DF9B8 14400008 */  bnez       $v0, .Lmenu_800DF9DC
/* FDAAC 800DF9BC 3C028012 */   lui       $v0, %hi(D_menu_801269D0)
/* FDAB0 800DF9C0 3C04800D */  lui        $a0, %hi(D_menu_800CAB98)
/* FDAB4 800DF9C4 2484AB98 */  addiu      $a0, $a0, %lo(D_menu_800CAB98)
/* FDAB8 800DF9C8 00002821 */  addu       $a1, $zero, $zero
/* FDABC 800DF9CC 00A03021 */  addu       $a2, $a1, $zero
/* FDAC0 800DF9D0 0C011ACF */  jal        func_80046B3C
/* FDAC4 800DF9D4 00A03821 */   addu      $a3, $a1, $zero
/* FDAC8 800DF9D8 3C028012 */  lui        $v0, %hi(D_menu_801269D0)
.Lmenu_800DF9DC:
/* FDACC 800DF9DC 8C4469D0 */  lw         $a0, %lo(D_menu_801269D0)($v0)
/* FDAD0 800DF9E0 0C01FB65 */  jal        func_8007ED94
/* FDAD4 800DF9E4 3C16800D */   lui       $s6, %hi(D_menu_800CAB98)
/* FDAD8 800DF9E8 3C02800D */  lui        $v0, %hi(jtbl_menu_800CABA8)
/* FDADC 800DF9EC 2457ABA8 */  addiu      $s7, $v0, %lo(jtbl_menu_800CABA8)
.Lmenu_800DF9F0:
/* FDAE0 800DF9F0 8E620028 */  lw         $v0, 0x28($s3)
/* FDAE4 800DF9F4 844400A0 */  lh         $a0, 0xA0($v0)
/* FDAE8 800DF9F8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FDAEC 800DF9FC 0040F809 */  jalr       $v0
/* FDAF0 800DFA00 02642021 */   addu      $a0, $s3, $a0
/* FDAF4 800DFA04 104000EB */  beqz       $v0, .Lmenu_800DFDB4
/* FDAF8 800DFA08 2443FFD9 */   addiu     $v1, $v0, -0x27
/* FDAFC 800DFA0C 2C620006 */  sltiu      $v0, $v1, 0x6
/* FDB00 800DFA10 1040FFF7 */  beqz       $v0, .Lmenu_800DF9F0
/* FDB04 800DFA14 00031080 */   sll       $v0, $v1, 2
/* FDB08 800DFA18 00571021 */  addu       $v0, $v0, $s7
/* FDB0C 800DFA1C 8C420000 */  lw         $v0, 0x0($v0)
/* FDB10 800DFA20 00400008 */  jr         $v0
/* FDB14 800DFA24 00000000 */   nop
glabel Lmenu_800DFA28
/* FDB18 800DFA28 0C037CB8 */  jal        func_menu_800DF2E0
/* FDB1C 800DFA2C 02602021 */   addu      $a0, $s3, $zero
/* FDB20 800DFA30 00408021 */  addu       $s0, $v0, $zero
/* FDB24 800DFA34 00102040 */  sll        $a0, $s0, 1
/* FDB28 800DFA38 00902021 */  addu       $a0, $a0, $s0
/* FDB2C 800DFA3C 000420C0 */  sll        $a0, $a0, 3
/* FDB30 800DFA40 24840008 */  addiu      $a0, $a0, 0x8
/* FDB34 800DFA44 0C00943C */  jal        func_800250F0
/* FDB38 800DFA48 AEB00000 */   sw        $s0, 0x0($s5)
/* FDB3C 800DFA4C 24420008 */  addiu      $v0, $v0, 0x8
/* FDB40 800DFA50 0040A021 */  addu       $s4, $v0, $zero
/* FDB44 800DFA54 02809021 */  addu       $s2, $s4, $zero
/* FDB48 800DFA58 2611FFFF */  addiu      $s1, $s0, -0x1
/* FDB4C 800DFA5C 06200007 */  bltz       $s1, .Lmenu_800DFA7C
/* FDB50 800DFA60 AE90FFF8 */   sw        $s0, -0x8($s4)
/* FDB54 800DFA64 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800DFA68:
/* FDB58 800DFA68 0C037D1C */  jal        func_menu_800DF470
/* FDB5C 800DFA6C 02402021 */   addu      $a0, $s2, $zero
/* FDB60 800DFA70 2631FFFF */  addiu      $s1, $s1, -0x1
/* FDB64 800DFA74 1630FFFC */  bne        $s1, $s0, .Lmenu_800DFA68
/* FDB68 800DFA78 26520018 */   addiu     $s2, $s2, 0x18
.Lmenu_800DFA7C:
/* FDB6C 800DFA7C 00009021 */  addu       $s2, $zero, $zero
/* FDB70 800DFA80 02408021 */  addu       $s0, $s2, $zero
/* FDB74 800DFA84 3C028012 */  lui        $v0, %hi(D_menu_801269D4)
/* FDB78 800DFA88 AEB40004 */  sw         $s4, 0x4($s5)
/* FDB7C 800DFA8C AC5569D4 */  sw         $s5, %lo(D_menu_801269D4)($v0)
.Lmenu_800DFA90:
/* FDB80 800DFA90 8EA20000 */  lw         $v0, 0x0($s5)
/* FDB84 800DFA94 0242102A */  slt        $v0, $s2, $v0
/* FDB88 800DFA98 104000C2 */  beqz       $v0, .Lmenu_800DFDA4
/* FDB8C 800DFA9C 00000000 */   nop
/* FDB90 800DFAA0 8E620028 */  lw         $v0, 0x28($s3)
/* FDB94 800DFAA4 844400A0 */  lh         $a0, 0xA0($v0)
/* FDB98 800DFAA8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* FDB9C 800DFAAC 0040F809 */  jalr       $v0
/* FDBA0 800DFAB0 02642021 */   addu      $a0, $s3, $a0
/* FDBA4 800DFAB4 8EA40004 */  lw         $a0, 0x4($s5)
/* FDBA8 800DFAB8 26650044 */  addiu      $a1, $s3, 0x44
/* FDBAC 800DFABC 0C037D55 */  jal        func_menu_800DF554
/* FDBB0 800DFAC0 00902021 */   addu      $a0, $a0, $s0
/* FDBB4 800DFAC4 0C002680 */  jal        func_80009A00
/* FDBB8 800DFAC8 02602021 */   addu      $a0, $s3, $zero
/* FDBBC 800DFACC 8EA30004 */  lw         $v1, 0x4($s5)
/* FDBC0 800DFAD0 02602021 */  addu       $a0, $s3, $zero
/* FDBC4 800DFAD4 02031821 */  addu       $v1, $s0, $v1
/* FDBC8 800DFAD8 0C002680 */  jal        func_80009A00
/* FDBCC 800DFADC A4620010 */   sh        $v0, 0x10($v1)
/* FDBD0 800DFAE0 02602021 */  addu       $a0, $s3, $zero
/* FDBD4 800DFAE4 00021040 */  sll        $v0, $v0, 1
/* FDBD8 800DFAE8 8EA30004 */  lw         $v1, 0x4($s5)
/* FDBDC 800DFAEC 8EA5000C */  lw         $a1, 0xC($s5)
/* FDBE0 800DFAF0 02031821 */  addu       $v1, $s0, $v1
/* FDBE4 800DFAF4 00451021 */  addu       $v0, $v0, $a1
/* FDBE8 800DFAF8 0C002680 */  jal        func_80009A00
/* FDBEC 800DFAFC AC62000C */   sw        $v0, 0xC($v1)
/* FDBF0 800DFB00 8EA30004 */  lw         $v1, 0x4($s5)
/* FDBF4 800DFB04 02602021 */  addu       $a0, $s3, $zero
/* FDBF8 800DFB08 02031821 */  addu       $v1, $s0, $v1
/* FDBFC 800DFB0C 0C002680 */  jal        func_80009A00
/* FDC00 800DFB10 A4620012 */   sh        $v0, 0x12($v1)
/* FDC04 800DFB14 8EA30004 */  lw         $v1, 0x4($s5)
/* FDC08 800DFB18 26520001 */  addiu      $s2, $s2, 0x1
/* FDC0C 800DFB1C 02031821 */  addu       $v1, $s0, $v1
/* FDC10 800DFB20 26100018 */  addiu      $s0, $s0, 0x18
/* FDC14 800DFB24 08037EA4 */  j          .Lmenu_800DFA90
/* FDC18 800DFB28 AC620014 */   sw        $v0, 0x14($v1)
glabel Lmenu_800DFB2C
/* FDC1C 800DFB2C 0C037CB8 */  jal        func_menu_800DF2E0
/* FDC20 800DFB30 02602021 */   addu      $a0, $s3, $zero
/* FDC24 800DFB34 00022040 */  sll        $a0, $v0, 1
/* FDC28 800DFB38 0C00943C */  jal        func_800250F0
/* FDC2C 800DFB3C AEA20010 */   sw        $v0, 0x10($s5)
/* FDC30 800DFB40 14400006 */  bnez       $v0, .Lmenu_800DFB5C
/* FDC34 800DFB44 AEA20014 */   sw        $v0, 0x14($s5)
/* FDC38 800DFB48 26C4AB98 */  addiu      $a0, $s6, %lo(D_menu_800CAB98)
/* FDC3C 800DFB4C 00002821 */  addu       $a1, $zero, $zero
/* FDC40 800DFB50 00A03021 */  addu       $a2, $a1, $zero
/* FDC44 800DFB54 0C011ACF */  jal        func_80046B3C
/* FDC48 800DFB58 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DFB5C:
/* FDC4C 800DFB5C 8EA20010 */  lw         $v0, 0x10($s5)
/* FDC50 800DFB60 18400090 */  blez       $v0, .Lmenu_800DFDA4
/* FDC54 800DFB64 00009021 */   addu      $s2, $zero, $zero
.Lmenu_800DFB68:
/* FDC58 800DFB68 0C002680 */  jal        func_80009A00
/* FDC5C 800DFB6C 02602021 */   addu      $a0, $s3, $zero
/* FDC60 800DFB70 8EA30014 */  lw         $v1, 0x14($s5)
/* FDC64 800DFB74 00122040 */  sll        $a0, $s2, 1
/* FDC68 800DFB78 00832021 */  addu       $a0, $a0, $v1
/* FDC6C 800DFB7C A4820000 */  sh         $v0, 0x0($a0)
/* FDC70 800DFB80 8EA20010 */  lw         $v0, 0x10($s5)
/* FDC74 800DFB84 26520001 */  addiu      $s2, $s2, 0x1
/* FDC78 800DFB88 0242102A */  slt        $v0, $s2, $v0
/* FDC7C 800DFB8C 10400085 */  beqz       $v0, .Lmenu_800DFDA4
/* FDC80 800DFB90 00000000 */   nop
/* FDC84 800DFB94 08037EDA */  j          .Lmenu_800DFB68
/* FDC88 800DFB98 00000000 */   nop
glabel Lmenu_800DFB9C
/* FDC8C 800DFB9C 0C037CB8 */  jal        func_menu_800DF2E0
/* FDC90 800DFBA0 02602021 */   addu      $a0, $s3, $zero
/* FDC94 800DFBA4 00022040 */  sll        $a0, $v0, 1
/* FDC98 800DFBA8 00822021 */  addu       $a0, $a0, $v0
/* FDC9C 800DFBAC 00042040 */  sll        $a0, $a0, 1
/* FDCA0 800DFBB0 0C00943C */  jal        func_800250F0
/* FDCA4 800DFBB4 AEA20018 */   sw        $v0, 0x18($s5)
/* FDCA8 800DFBB8 14400006 */  bnez       $v0, .Lmenu_800DFBD4
/* FDCAC 800DFBBC AEA2001C */   sw        $v0, 0x1C($s5)
/* FDCB0 800DFBC0 26C4AB98 */  addiu      $a0, $s6, %lo(D_menu_800CAB98)
/* FDCB4 800DFBC4 00002821 */  addu       $a1, $zero, $zero
/* FDCB8 800DFBC8 00A03021 */  addu       $a2, $a1, $zero
/* FDCBC 800DFBCC 0C011ACF */  jal        func_80046B3C
/* FDCC0 800DFBD0 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DFBD4:
/* FDCC4 800DFBD4 00009021 */  addu       $s2, $zero, $zero
/* FDCC8 800DFBD8 0240A021 */  addu       $s4, $s2, $zero
.Lmenu_800DFBDC:
/* FDCCC 800DFBDC 8EA20018 */  lw         $v0, 0x18($s5)
/* FDCD0 800DFBE0 0242102A */  slt        $v0, $s2, $v0
/* FDCD4 800DFBE4 1040006F */  beqz       $v0, .Lmenu_800DFDA4
/* FDCD8 800DFBE8 00000000 */   nop
/* FDCDC 800DFBEC 0C002680 */  jal        func_80009A00
/* FDCE0 800DFBF0 02602021 */   addu      $a0, $s3, $zero
/* FDCE4 800DFBF4 00408821 */  addu       $s1, $v0, $zero
/* FDCE8 800DFBF8 0C002680 */  jal        func_80009A00
/* FDCEC 800DFBFC 02602021 */   addu      $a0, $s3, $zero
/* FDCF0 800DFC00 00408021 */  addu       $s0, $v0, $zero
/* FDCF4 800DFC04 0C002680 */  jal        func_80009A00
/* FDCF8 800DFC08 02602021 */   addu      $a0, $s3, $zero
/* FDCFC 800DFC0C 8EA3001C */  lw         $v1, 0x1C($s5)
/* FDD00 800DFC10 26520001 */  addiu      $s2, $s2, 0x1
/* FDD04 800DFC14 00741821 */  addu       $v1, $v1, $s4
/* FDD08 800DFC18 26940006 */  addiu      $s4, $s4, 0x6
/* FDD0C 800DFC1C A4710000 */  sh         $s1, 0x0($v1)
/* FDD10 800DFC20 A4700002 */  sh         $s0, 0x2($v1)
/* FDD14 800DFC24 08037EF7 */  j          .Lmenu_800DFBDC
/* FDD18 800DFC28 A4620004 */   sh        $v0, 0x4($v1)
glabel Lmenu_800DFC2C
/* FDD1C 800DFC2C 0C037CB8 */  jal        func_menu_800DF2E0
/* FDD20 800DFC30 02602021 */   addu      $a0, $s3, $zero
/* FDD24 800DFC34 00022040 */  sll        $a0, $v0, 1
/* FDD28 800DFC38 00822021 */  addu       $a0, $a0, $v0
/* FDD2C 800DFC3C 0C00943C */  jal        func_800250F0
/* FDD30 800DFC40 AEA20020 */   sw        $v0, 0x20($s5)
/* FDD34 800DFC44 8EA3001C */  lw         $v1, 0x1C($s5)
/* FDD38 800DFC48 14600006 */  bnez       $v1, .Lmenu_800DFC64
/* FDD3C 800DFC4C AEA20024 */   sw        $v0, 0x24($s5)
/* FDD40 800DFC50 26C4AB98 */  addiu      $a0, $s6, %lo(D_menu_800CAB98)
/* FDD44 800DFC54 00002821 */  addu       $a1, $zero, $zero
/* FDD48 800DFC58 00A03021 */  addu       $a2, $a1, $zero
/* FDD4C 800DFC5C 0C011ACF */  jal        func_80046B3C
/* FDD50 800DFC60 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DFC64:
/* FDD54 800DFC64 00009021 */  addu       $s2, $zero, $zero
/* FDD58 800DFC68 0240A021 */  addu       $s4, $s2, $zero
.Lmenu_800DFC6C:
/* FDD5C 800DFC6C 8EA20020 */  lw         $v0, 0x20($s5)
/* FDD60 800DFC70 0242102A */  slt        $v0, $s2, $v0
/* FDD64 800DFC74 1040004B */  beqz       $v0, .Lmenu_800DFDA4
/* FDD68 800DFC78 00000000 */   nop
/* FDD6C 800DFC7C 0C002680 */  jal        func_80009A00
/* FDD70 800DFC80 02602021 */   addu      $a0, $s3, $zero
/* FDD74 800DFC84 00408821 */  addu       $s1, $v0, $zero
/* FDD78 800DFC88 0C002680 */  jal        func_80009A00
/* FDD7C 800DFC8C 02602021 */   addu      $a0, $s3, $zero
/* FDD80 800DFC90 00408021 */  addu       $s0, $v0, $zero
/* FDD84 800DFC94 0C002680 */  jal        func_80009A00
/* FDD88 800DFC98 02602021 */   addu      $a0, $s3, $zero
/* FDD8C 800DFC9C 8EA30024 */  lw         $v1, 0x24($s5)
/* FDD90 800DFCA0 26520001 */  addiu      $s2, $s2, 0x1
/* FDD94 800DFCA4 00741821 */  addu       $v1, $v1, $s4
/* FDD98 800DFCA8 26940003 */  addiu      $s4, $s4, 0x3
/* FDD9C 800DFCAC A0710000 */  sb         $s1, 0x0($v1)
/* FDDA0 800DFCB0 A0700001 */  sb         $s0, 0x1($v1)
/* FDDA4 800DFCB4 08037F1B */  j          .Lmenu_800DFC6C
/* FDDA8 800DFCB8 A0620002 */   sb        $v0, 0x2($v1)
glabel Lmenu_800DFCBC
/* FDDAC 800DFCBC 0C037CB8 */  jal        func_menu_800DF2E0
/* FDDB0 800DFCC0 02602021 */   addu      $a0, $s3, $zero
/* FDDB4 800DFCC4 00022080 */  sll        $a0, $v0, 2
/* FDDB8 800DFCC8 0C00943C */  jal        func_800250F0
/* FDDBC 800DFCCC AEA20028 */   sw        $v0, 0x28($s5)
/* FDDC0 800DFCD0 14400006 */  bnez       $v0, .Lmenu_800DFCEC
/* FDDC4 800DFCD4 AEA2002C */   sw        $v0, 0x2C($s5)
/* FDDC8 800DFCD8 26C4AB98 */  addiu      $a0, $s6, %lo(D_menu_800CAB98)
/* FDDCC 800DFCDC 00002821 */  addu       $a1, $zero, $zero
/* FDDD0 800DFCE0 00A03021 */  addu       $a2, $a1, $zero
/* FDDD4 800DFCE4 0C011ACF */  jal        func_80046B3C
/* FDDD8 800DFCE8 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DFCEC:
/* FDDDC 800DFCEC 00009021 */  addu       $s2, $zero, $zero
.Lmenu_800DFCF0:
/* FDDE0 800DFCF0 8EA20028 */  lw         $v0, 0x28($s5)
/* FDDE4 800DFCF4 0242102A */  slt        $v0, $s2, $v0
/* FDDE8 800DFCF8 1040002A */  beqz       $v0, .Lmenu_800DFDA4
/* FDDEC 800DFCFC 00000000 */   nop
/* FDDF0 800DFD00 0C002680 */  jal        func_80009A00
/* FDDF4 800DFD04 02602021 */   addu      $a0, $s3, $zero
/* FDDF8 800DFD08 00408821 */  addu       $s1, $v0, $zero
/* FDDFC 800DFD0C 0C002680 */  jal        func_80009A00
/* FDE00 800DFD10 02602021 */   addu      $a0, $s3, $zero
/* FDE04 800DFD14 00122080 */  sll        $a0, $s2, 2
/* FDE08 800DFD18 8EA3002C */  lw         $v1, 0x2C($s5)
/* FDE0C 800DFD1C 26520001 */  addiu      $s2, $s2, 0x1
/* FDE10 800DFD20 00641821 */  addu       $v1, $v1, $a0
/* FDE14 800DFD24 A4710000 */  sh         $s1, 0x0($v1)
/* FDE18 800DFD28 08037F3C */  j          .Lmenu_800DFCF0
/* FDE1C 800DFD2C A4620002 */   sh        $v0, 0x2($v1)
glabel Lmenu_800DFD30
/* FDE20 800DFD30 0C037CB8 */  jal        func_menu_800DF2E0
/* FDE24 800DFD34 02602021 */   addu      $a0, $s3, $zero
/* FDE28 800DFD38 00022040 */  sll        $a0, $v0, 1
/* FDE2C 800DFD3C 0C00943C */  jal        func_800250F0
/* FDE30 800DFD40 AEA20008 */   sw        $v0, 0x8($s5)
/* FDE34 800DFD44 14400006 */  bnez       $v0, .Lmenu_800DFD60
/* FDE38 800DFD48 AEA2000C */   sw        $v0, 0xC($s5)
/* FDE3C 800DFD4C 26C4AB98 */  addiu      $a0, $s6, %lo(D_menu_800CAB98)
/* FDE40 800DFD50 00002821 */  addu       $a1, $zero, $zero
/* FDE44 800DFD54 00A03021 */  addu       $a2, $a1, $zero
/* FDE48 800DFD58 0C011ACF */  jal        func_80046B3C
/* FDE4C 800DFD5C 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DFD60:
/* FDE50 800DFD60 00009021 */  addu       $s2, $zero, $zero
.Lmenu_800DFD64:
/* FDE54 800DFD64 8EA20008 */  lw         $v0, 0x8($s5)
/* FDE58 800DFD68 0242102A */  slt        $v0, $s2, $v0
/* FDE5C 800DFD6C 1040000D */  beqz       $v0, .Lmenu_800DFDA4
/* FDE60 800DFD70 00000000 */   nop
/* FDE64 800DFD74 0C002680 */  jal        func_80009A00
/* FDE68 800DFD78 02602021 */   addu      $a0, $s3, $zero
/* FDE6C 800DFD7C 00408821 */  addu       $s1, $v0, $zero
/* FDE70 800DFD80 0C002680 */  jal        func_80009A00
/* FDE74 800DFD84 02602021 */   addu      $a0, $s3, $zero
/* FDE78 800DFD88 00121840 */  sll        $v1, $s2, 1
/* FDE7C 800DFD8C 8EA4000C */  lw         $a0, 0xC($s5)
/* FDE80 800DFD90 26520001 */  addiu      $s2, $s2, 0x1
/* FDE84 800DFD94 00641821 */  addu       $v1, $v1, $a0
/* FDE88 800DFD98 A0710000 */  sb         $s1, 0x0($v1)
/* FDE8C 800DFD9C 08037F59 */  j          .Lmenu_800DFD64
/* FDE90 800DFDA0 A0620001 */   sb        $v0, 0x1($v1)
.Lmenu_800DFDA4:
/* FDE94 800DFDA4 0C037CCE */  jal        func_menu_800DF338
/* FDE98 800DFDA8 02602021 */   addu      $a0, $s3, $zero
/* FDE9C 800DFDAC 08037E7C */  j          .Lmenu_800DF9F0
/* FDEA0 800DFDB0 00000000 */   nop
.Lmenu_800DFDB4:
/* FDEA4 800DFDB4 0C01FB72 */  jal        func_8007EDC8
/* FDEA8 800DFDB8 00000000 */   nop
/* FDEAC 800DFDBC 8E620028 */  lw         $v0, 0x28($s3)
/* FDEB0 800DFDC0 84440048 */  lh         $a0, 0x48($v0)
/* FDEB4 800DFDC4 8C42004C */  lw         $v0, 0x4C($v0)
/* FDEB8 800DFDC8 0040F809 */  jalr       $v0
/* FDEBC 800DFDCC 02642021 */   addu      $a0, $s3, $a0
/* FDEC0 800DFDD0 12600006 */  beqz       $s3, .Lmenu_800DFDEC
/* FDEC4 800DFDD4 24050003 */   addiu     $a1, $zero, 0x3
/* FDEC8 800DFDD8 8E620028 */  lw         $v0, 0x28($s3)
/* FDECC 800DFDDC 84440038 */  lh         $a0, 0x38($v0)
/* FDED0 800DFDE0 8C42003C */  lw         $v0, 0x3C($v0)
/* FDED4 800DFDE4 0040F809 */  jalr       $v0
/* FDED8 800DFDE8 02642021 */   addu      $a0, $s3, $a0
.Lmenu_800DFDEC:
/* FDEDC 800DFDEC 8EA40004 */  lw         $a0, 0x4($s5)
/* FDEE0 800DFDF0 50800036 */  beql       $a0, $zero, .Lmenu_800DFECC
/* FDEE4 800DFDF4 02A02021 */   addu      $a0, $s5, $zero
/* FDEE8 800DFDF8 8EA50000 */  lw         $a1, 0x0($s5)
/* FDEEC 800DFDFC 10A00032 */  beqz       $a1, .Lmenu_800DFEC8
/* FDEF0 800DFE00 24060018 */   addiu     $a2, $zero, 0x18
/* FDEF4 800DFE04 3C07800E */  lui        $a3, %hi(func_menu_800DF8AC)
/* FDEF8 800DFE08 0C0007B1 */  jal        func_80001EC4
/* FDEFC 800DFE0C 24E7F8AC */   addiu     $a3, $a3, %lo(func_menu_800DF8AC)
/* FDF00 800DFE10 2411FFFF */  addiu      $s1, $zero, -0x1
/* FDF04 800DFE14 00008021 */  addu       $s0, $zero, $zero
/* FDF08 800DFE18 02009021 */  addu       $s2, $s0, $zero
/* FDF0C 800DFE1C 02003021 */  addu       $a2, $s0, $zero
.Lmenu_800DFE20:
/* FDF10 800DFE20 8EA20000 */  lw         $v0, 0x0($s5)
/* FDF14 800DFE24 0242102A */  slt        $v0, $s2, $v0
/* FDF18 800DFE28 1040001B */  beqz       $v0, .Lmenu_800DFE98
/* FDF1C 800DFE2C 00002821 */   addu      $a1, $zero, $zero
/* FDF20 800DFE30 8EA20004 */  lw         $v0, 0x4($s5)
/* FDF24 800DFE34 00C21021 */  addu       $v0, $a2, $v0
/* FDF28 800DFE38 94450010 */  lhu        $a1, 0x10($v0)
/* FDF2C 800DFE3C 56250004 */  bnel       $s1, $a1, .Lmenu_800DFE50
/* FDF30 800DFE40 A0400009 */   sb        $zero, 0x9($v0)
/* FDF34 800DFE44 A0500009 */  sb         $s0, 0x9($v0)
/* FDF38 800DFE48 08037FA3 */  j          .Lmenu_800DFE8C
/* FDF3C 800DFE4C 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DFE50:
/* FDF40 800DFE50 00A08821 */  addu       $s1, $a1, $zero
/* FDF44 800DFE54 00002821 */  addu       $a1, $zero, $zero
/* FDF48 800DFE58 2644FFFF */  addiu      $a0, $s2, -0x1
.Lmenu_800DFE5C:
/* FDF4C 800DFE5C 00B0102A */  slt        $v0, $a1, $s0
/* FDF50 800DFE60 10400009 */  beqz       $v0, .Lmenu_800DFE88
/* FDF54 800DFE64 00851023 */   subu      $v0, $a0, $a1
/* FDF58 800DFE68 24A50001 */  addiu      $a1, $a1, 0x1
/* FDF5C 800DFE6C 00021840 */  sll        $v1, $v0, 1
/* FDF60 800DFE70 00621821 */  addu       $v1, $v1, $v0
/* FDF64 800DFE74 8EA20004 */  lw         $v0, 0x4($s5)
/* FDF68 800DFE78 000318C0 */  sll        $v1, $v1, 3
/* FDF6C 800DFE7C 00621821 */  addu       $v1, $v1, $v0
/* FDF70 800DFE80 08037F97 */  j          .Lmenu_800DFE5C
/* FDF74 800DFE84 A070000A */   sb        $s0, 0xA($v1)
.Lmenu_800DFE88:
/* FDF78 800DFE88 24100001 */  addiu      $s0, $zero, 0x1
.Lmenu_800DFE8C:
/* FDF7C 800DFE8C 24C60018 */  addiu      $a2, $a2, 0x18
/* FDF80 800DFE90 08037F88 */  j          .Lmenu_800DFE20
/* FDF84 800DFE94 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_800DFE98:
/* FDF88 800DFE98 2644FFFF */  addiu      $a0, $s2, -0x1
.Lmenu_800DFE9C:
/* FDF8C 800DFE9C 00B0102A */  slt        $v0, $a1, $s0
/* FDF90 800DFEA0 10400009 */  beqz       $v0, .Lmenu_800DFEC8
/* FDF94 800DFEA4 00851023 */   subu      $v0, $a0, $a1
/* FDF98 800DFEA8 24A50001 */  addiu      $a1, $a1, 0x1
/* FDF9C 800DFEAC 00021840 */  sll        $v1, $v0, 1
/* FDFA0 800DFEB0 00621821 */  addu       $v1, $v1, $v0
/* FDFA4 800DFEB4 8EA20004 */  lw         $v0, 0x4($s5)
/* FDFA8 800DFEB8 000318C0 */  sll        $v1, $v1, 3
/* FDFAC 800DFEBC 00621821 */  addu       $v1, $v1, $v0
/* FDFB0 800DFEC0 08037FA7 */  j          .Lmenu_800DFE9C
/* FDFB4 800DFEC4 A070000A */   sb        $s0, 0xA($v1)
.Lmenu_800DFEC8:
/* FDFB8 800DFEC8 02A02021 */  addu       $a0, $s5, $zero
.Lmenu_800DFECC:
/* FDFBC 800DFECC 24050800 */  addiu      $a1, $zero, 0x800
/* FDFC0 800DFED0 24060001 */  addiu      $a2, $zero, 0x1
/* FDFC4 800DFED4 AFA00010 */  sw         $zero, 0x10($sp)
/* FDFC8 800DFED8 AFA00014 */  sw         $zero, 0x14($sp)
/* FDFCC 800DFEDC 0C038006 */  jal        func_menu_800E0018
/* FDFD0 800DFEE0 AFA00018 */   sw        $zero, 0x18($sp)
/* FDFD4 800DFEE4 00409821 */  addu       $s3, $v0, $zero
/* FDFD8 800DFEE8 12600003 */  beqz       $s3, .Lmenu_800DFEF8
/* FDFDC 800DFEEC 00009021 */   addu      $s2, $zero, $zero
/* FDFE0 800DFEF0 96730012 */  lhu        $s3, 0x12($s3)
/* FDFE4 800DFEF4 AFB30018 */  sw         $s3, 0x18($sp)
.Lmenu_800DFEF8:
/* FDFE8 800DFEF8 0240F021 */  addu       $fp, $s2, $zero
.Lmenu_800DFEFC:
/* FDFEC 800DFEFC 8EA20000 */  lw         $v0, 0x0($s5)
/* FDFF0 800DFF00 0242102A */  slt        $v0, $s2, $v0
/* FDFF4 800DFF04 1040002E */  beqz       $v0, .Lmenu_800DFFC0
/* FDFF8 800DFF08 00008021 */   addu      $s0, $zero, $zero
/* FDFFC 800DFF0C 8EA20004 */  lw         $v0, 0x4($s5)
/* FE000 800DFF10 005E9821 */  addu       $s3, $v0, $fp
/* FE004 800DFF14 96740012 */  lhu        $s4, 0x12($s3)
/* FE008 800DFF18 0C037D27 */  jal        func_menu_800DF49C
/* FE00C 800DFF1C 02602021 */   addu      $a0, $s3, $zero
/* FE010 800DFF20 02602021 */  addu       $a0, $s3, $zero
/* FE014 800DFF24 0C037D2B */  jal        func_menu_800DF4AC
/* FE018 800DFF28 0040B021 */   addu      $s6, $v0, $zero
/* FE01C 800DFF2C 0040B821 */  addu       $s7, $v0, $zero
.Lmenu_800DFF30:
/* FE020 800DFF30 0217102A */  slt        $v0, $s0, $s7
/* FE024 800DFF34 10400011 */  beqz       $v0, .Lmenu_800DFF7C
/* FE028 800DFF38 00008821 */   addu      $s1, $zero, $zero
.Lmenu_800DFF3C:
/* FE02C 800DFF3C 0236102A */  slt        $v0, $s1, $s6
/* FE030 800DFF40 1040000C */  beqz       $v0, .Lmenu_800DFF74
/* FE034 800DFF44 02202821 */   addu      $a1, $s1, $zero
/* FE038 800DFF48 02003021 */  addu       $a2, $s0, $zero
/* FE03C 800DFF4C 8E64000C */  lw         $a0, 0xC($s3)
/* FE040 800DFF50 0C037CEB */  jal        func_menu_800DF3AC
/* FE044 800DFF54 00003821 */   addu      $a3, $zero, $zero
/* FE048 800DFF58 90420000 */  lbu        $v0, 0x0($v0)
/* FE04C 800DFF5C 30420080 */  andi       $v0, $v0, 0x80
/* FE050 800DFF60 1040FFF6 */  beqz       $v0, .Lmenu_800DFF3C
/* FE054 800DFF64 26310001 */   addiu     $s1, $s1, 0x1
/* FE058 800DFF68 8FA80018 */  lw         $t0, 0x18($sp)
/* FE05C 800DFF6C 08037FCF */  j          .Lmenu_800DFF3C
/* FE060 800DFF70 0288A021 */   addu      $s4, $s4, $t0
.Lmenu_800DFF74:
/* FE064 800DFF74 08037FCC */  j          .Lmenu_800DFF30
/* FE068 800DFF78 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DFF7C:
/* FE06C 800DFF7C 96620010 */  lhu        $v0, 0x10($s3)
/* FE070 800DFF80 28420800 */  slti       $v0, $v0, 0x800
/* FE074 800DFF84 10400007 */  beqz       $v0, .Lmenu_800DFFA4
/* FE078 800DFF88 00000000 */   nop
/* FE07C 800DFF8C 8FA80014 */  lw         $t0, 0x14($sp)
/* FE080 800DFF90 0114102A */  slt        $v0, $t0, $s4
/* FE084 800DFF94 54400007 */  bnel       $v0, $zero, .Lmenu_800DFFB4
/* FE088 800DFF98 AFB40014 */   sw        $s4, 0x14($sp)
/* FE08C 800DFF9C 08037FEE */  j          .Lmenu_800DFFB8
/* FE090 800DFFA0 27DE0018 */   addiu     $fp, $fp, 0x18
.Lmenu_800DFFA4:
/* FE094 800DFFA4 8FA80010 */  lw         $t0, 0x10($sp)
/* FE098 800DFFA8 0114102A */  slt        $v0, $t0, $s4
/* FE09C 800DFFAC 54400001 */  bnel       $v0, $zero, .Lmenu_800DFFB4
/* FE0A0 800DFFB0 AFB40010 */   sw        $s4, 0x10($sp)
.Lmenu_800DFFB4:
/* FE0A4 800DFFB4 27DE0018 */  addiu      $fp, $fp, 0x18
.Lmenu_800DFFB8:
/* FE0A8 800DFFB8 08037FBF */  j          .Lmenu_800DFEFC
/* FE0AC 800DFFBC 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_800DFFC0:
/* FE0B0 800DFFC0 8EA20030 */  lw         $v0, 0x30($s5)
/* FE0B4 800DFFC4 8FA80010 */  lw         $t0, 0x10($sp)
/* FE0B8 800DFFC8 0048102A */  slt        $v0, $v0, $t0
/* FE0BC 800DFFCC 54400001 */  bnel       $v0, $zero, .Lmenu_800DFFD4
/* FE0C0 800DFFD0 AEA80030 */   sw        $t0, 0x30($s5)
.Lmenu_800DFFD4:
/* FE0C4 800DFFD4 8EA20034 */  lw         $v0, 0x34($s5)
/* FE0C8 800DFFD8 8FA80014 */  lw         $t0, 0x14($sp)
/* FE0CC 800DFFDC 0048102A */  slt        $v0, $v0, $t0
/* FE0D0 800DFFE0 54400001 */  bnel       $v0, $zero, .Lmenu_800DFFE8
/* FE0D4 800DFFE4 AEA80034 */   sw        $t0, 0x34($s5)
.Lmenu_800DFFE8:
/* FE0D8 800DFFE8 8FBF0044 */  lw         $ra, 0x44($sp)
/* FE0DC 800DFFEC 8FBE0040 */  lw         $fp, 0x40($sp)
/* FE0E0 800DFFF0 8FB7003C */  lw         $s7, 0x3C($sp)
/* FE0E4 800DFFF4 8FB60038 */  lw         $s6, 0x38($sp)
/* FE0E8 800DFFF8 8FB50034 */  lw         $s5, 0x34($sp)
/* FE0EC 800DFFFC 8FB40030 */  lw         $s4, 0x30($sp)
/* FE0F0 800E0000 8FB3002C */  lw         $s3, 0x2C($sp)
/* FE0F4 800E0004 8FB20028 */  lw         $s2, 0x28($sp)
/* FE0F8 800E0008 8FB10024 */  lw         $s1, 0x24($sp)
/* FE0FC 800E000C 8FB00020 */  lw         $s0, 0x20($sp)
/* FE100 800E0010 03E00008 */  jr         $ra
/* FE104 800E0014 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800E0018
/* FE108 800E0018 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FE10C 800E001C 00804821 */  addu       $t1, $a0, $zero
/* FE110 800E0020 AFBF0010 */  sw         $ra, 0x10($sp)
/* FE114 800E0024 8D280004 */  lw         $t0, 0x4($t1)
/* FE118 800E0028 1100001D */  beqz       $t0, .Lmenu_800E00A0
/* FE11C 800E002C 00001021 */   addu      $v0, $zero, $zero
/* FE120 800E0030 8D220000 */  lw         $v0, 0x0($t1)
/* FE124 800E0034 14400003 */  bnez       $v0, .Lmenu_800E0044
/* FE128 800E0038 00002021 */   addu      $a0, $zero, $zero
.Lmenu_800E003C:
/* FE12C 800E003C 08038028 */  j          .Lmenu_800E00A0
/* FE130 800E0040 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800E0044:
/* FE134 800E0044 00403821 */  addu       $a3, $v0, $zero
/* FE138 800E0048 00071843 */  sra        $v1, $a3, 1
.Lmenu_800E004C:
/* FE13C 800E004C 00031040 */  sll        $v0, $v1, 1
/* FE140 800E0050 00431021 */  addu       $v0, $v0, $v1
/* FE144 800E0054 000210C0 */  sll        $v0, $v0, 3
/* FE148 800E0058 00481021 */  addu       $v0, $v0, $t0
/* FE14C 800E005C 94420010 */  lhu        $v0, 0x10($v0)
/* FE150 800E0060 50A20009 */  beql       $a1, $v0, .Lmenu_800E0088
/* FE154 800E0064 00032040 */   sll       $a0, $v1, 1
/* FE158 800E0068 1064FFF4 */  beq        $v1, $a0, .Lmenu_800E003C
/* FE15C 800E006C 00A2102A */   slt       $v0, $a1, $v0
/* FE160 800E0070 50400002 */  beql       $v0, $zero, .Lmenu_800E007C
/* FE164 800E0074 00602021 */   addu      $a0, $v1, $zero
/* FE168 800E0078 00603821 */  addu       $a3, $v1, $zero
.Lmenu_800E007C:
/* FE16C 800E007C 00E41021 */  addu       $v0, $a3, $a0
/* FE170 800E0080 08038013 */  j          .Lmenu_800E004C
/* FE174 800E0084 00021843 */   sra       $v1, $v0, 1
.Lmenu_800E0088:
/* FE178 800E0088 00832021 */  addu       $a0, $a0, $v1
/* FE17C 800E008C 8D220004 */  lw         $v0, 0x4($t1)
/* FE180 800E0090 000420C0 */  sll        $a0, $a0, 3
/* FE184 800E0094 00C02821 */  addu       $a1, $a2, $zero
/* FE188 800E0098 0C03805C */  jal        func_menu_800E0170
/* FE18C 800E009C 00442021 */   addu      $a0, $v0, $a0
.Lmenu_800E00A0:
/* FE190 800E00A0 8FBF0010 */  lw         $ra, 0x10($sp)
/* FE194 800E00A4 03E00008 */  jr         $ra
/* FE198 800E00A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E00AC
/* FE19C 800E00AC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FE1A0 800E00B0 AFB20018 */  sw         $s2, 0x18($sp)
/* FE1A4 800E00B4 00809021 */  addu       $s2, $a0, $zero
/* FE1A8 800E00B8 AFB3001C */  sw         $s3, 0x1C($sp)
/* FE1AC 800E00BC 00A09821 */  addu       $s3, $a1, $zero
/* FE1B0 800E00C0 AFBF0020 */  sw         $ra, 0x20($sp)
/* FE1B4 800E00C4 AFB10014 */  sw         $s1, 0x14($sp)
/* FE1B8 800E00C8 AFB00010 */  sw         $s0, 0x10($sp)
/* FE1BC 800E00CC 8E420000 */  lw         $v0, 0x0($s2)
/* FE1C0 800E00D0 1840000F */  blez       $v0, .Lmenu_800E0110
/* FE1C4 800E00D4 00008821 */   addu      $s1, $zero, $zero
/* FE1C8 800E00D8 02208021 */  addu       $s0, $s1, $zero
.Lmenu_800E00DC:
/* FE1CC 800E00DC 8E440004 */  lw         $a0, 0x4($s2)
/* FE1D0 800E00E0 02602821 */  addu       $a1, $s3, $zero
/* FE1D4 800E00E4 0C037D69 */  jal        func_menu_800DF5A4
/* FE1D8 800E00E8 00902021 */   addu      $a0, $a0, $s0
/* FE1DC 800E00EC 14400004 */  bnez       $v0, .Lmenu_800E0100
/* FE1E0 800E00F0 26310001 */   addiu     $s1, $s1, 0x1
/* FE1E4 800E00F4 8E420004 */  lw         $v0, 0x4($s2)
/* FE1E8 800E00F8 08038045 */  j          .Lmenu_800E0114
/* FE1EC 800E00FC 00501021 */   addu      $v0, $v0, $s0
.Lmenu_800E0100:
/* FE1F0 800E0100 8E420000 */  lw         $v0, 0x0($s2)
/* FE1F4 800E0104 0222102A */  slt        $v0, $s1, $v0
/* FE1F8 800E0108 1440FFF4 */  bnez       $v0, .Lmenu_800E00DC
/* FE1FC 800E010C 26100018 */   addiu     $s0, $s0, 0x18
.Lmenu_800E0110:
/* FE200 800E0110 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800E0114:
/* FE204 800E0114 8FBF0020 */  lw         $ra, 0x20($sp)
/* FE208 800E0118 8FB3001C */  lw         $s3, 0x1C($sp)
/* FE20C 800E011C 8FB20018 */  lw         $s2, 0x18($sp)
/* FE210 800E0120 8FB10014 */  lw         $s1, 0x14($sp)
/* FE214 800E0124 8FB00010 */  lw         $s0, 0x10($sp)
/* FE218 800E0128 03E00008 */  jr         $ra
/* FE21C 800E012C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E0130
/* FE220 800E0130 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FE224 800E0134 AFBF0010 */  sw         $ra, 0x10($sp)
/* FE228 800E0138 90850009 */  lbu        $a1, 0x9($a0)
/* FE22C 800E013C 0C03805C */  jal        func_menu_800E0170
/* FE230 800E0140 24A5FFFF */   addiu     $a1, $a1, -0x1
/* FE234 800E0144 8FBF0010 */  lw         $ra, 0x10($sp)
/* FE238 800E0148 03E00008 */  jr         $ra
/* FE23C 800E014C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0150
/* FE240 800E0150 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FE244 800E0154 AFBF0010 */  sw         $ra, 0x10($sp)
/* FE248 800E0158 90850009 */  lbu        $a1, 0x9($a0)
/* FE24C 800E015C 0C03805C */  jal        func_menu_800E0170
/* FE250 800E0160 24A50001 */   addiu     $a1, $a1, 0x1
/* FE254 800E0164 8FBF0010 */  lw         $ra, 0x10($sp)
/* FE258 800E0168 03E00008 */  jr         $ra
/* FE25C 800E016C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0170
/* FE260 800E0170 9083000A */  lbu        $v1, 0xA($a0)
/* FE264 800E0174 00A3102A */  slt        $v0, $a1, $v1
/* FE268 800E0178 50400001 */  beql       $v0, $zero, .Lmenu_800E0180
/* FE26C 800E017C 2465FFFF */   addiu     $a1, $v1, -0x1
.Lmenu_800E0180:
/* FE270 800E0180 04A20001 */  bltzl      $a1, .Lmenu_800E0188
/* FE274 800E0184 00002821 */   addu      $a1, $zero, $zero
.Lmenu_800E0188:
/* FE278 800E0188 90820009 */  lbu        $v0, 0x9($a0)
/* FE27C 800E018C 00A22823 */  subu       $a1, $a1, $v0
/* FE280 800E0190 00051040 */  sll        $v0, $a1, 1
/* FE284 800E0194 00451021 */  addu       $v0, $v0, $a1
/* FE288 800E0198 000210C0 */  sll        $v0, $v0, 3
/* FE28C 800E019C 03E00008 */  jr         $ra
/* FE290 800E01A0 00821021 */   addu      $v0, $a0, $v0

glabel func_menu_800E01A4
/* FE294 800E01A4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FE298 800E01A8 AFB40020 */  sw         $s4, 0x20($sp)
/* FE29C 800E01AC 0080A021 */  addu       $s4, $a0, $zero
/* FE2A0 800E01B0 AFB3001C */  sw         $s3, 0x1C($sp)
/* FE2A4 800E01B4 00009821 */  addu       $s3, $zero, $zero
/* FE2A8 800E01B8 AFBF002C */  sw         $ra, 0x2C($sp)
/* FE2AC 800E01BC AFB60028 */  sw         $s6, 0x28($sp)
/* FE2B0 800E01C0 AFB50024 */  sw         $s5, 0x24($sp)
/* FE2B4 800E01C4 AFB20018 */  sw         $s2, 0x18($sp)
/* FE2B8 800E01C8 AFB10014 */  sw         $s1, 0x14($sp)
/* FE2BC 800E01CC 0C037D2B */  jal        func_menu_800DF4AC
/* FE2C0 800E01D0 AFB00010 */   sw        $s0, 0x10($sp)
/* FE2C4 800E01D4 02802021 */  addu       $a0, $s4, $zero
/* FE2C8 800E01D8 0C037D27 */  jal        func_menu_800DF49C
/* FE2CC 800E01DC 0040B021 */   addu      $s6, $v0, $zero
/* FE2D0 800E01E0 0040A821 */  addu       $s5, $v0, $zero
/* FE2D4 800E01E4 02608821 */  addu       $s1, $s3, $zero
.Lmenu_800E01E8:
/* FE2D8 800E01E8 0236102A */  slt        $v0, $s1, $s6
/* FE2DC 800E01EC 1040001C */  beqz       $v0, .Lmenu_800E0260
/* FE2E0 800E01F0 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800E01F4:
/* FE2E4 800E01F4 0215102A */  slt        $v0, $s0, $s5
/* FE2E8 800E01F8 10400017 */  beqz       $v0, .Lmenu_800E0258
/* FE2EC 800E01FC 02002821 */   addu      $a1, $s0, $zero
/* FE2F0 800E0200 02203021 */  addu       $a2, $s1, $zero
/* FE2F4 800E0204 8E84000C */  lw         $a0, 0xC($s4)
/* FE2F8 800E0208 0C037CEB */  jal        func_menu_800DF3AC
/* FE2FC 800E020C 00003821 */   addu      $a3, $zero, $zero
/* FE300 800E0210 02002821 */  addu       $a1, $s0, $zero
/* FE304 800E0214 02203021 */  addu       $a2, $s1, $zero
/* FE308 800E0218 00003821 */  addu       $a3, $zero, $zero
/* FE30C 800E021C 90420000 */  lbu        $v0, 0x0($v0)
/* FE310 800E0220 8E84000C */  lw         $a0, 0xC($s4)
/* FE314 800E0224 0C037CEB */  jal        func_menu_800DF3AC
/* FE318 800E0228 3052003F */   andi      $s2, $v0, 0x3F
/* FE31C 800E022C 90430001 */  lbu        $v1, 0x1($v0)
/* FE320 800E0230 90420000 */  lbu        $v0, 0x0($v0)
/* FE324 800E0234 3063003F */  andi       $v1, $v1, 0x3F
/* FE328 800E0238 3042003F */  andi       $v0, $v0, 0x3F
/* FE32C 800E023C 0043102A */  slt        $v0, $v0, $v1
/* FE330 800E0240 54400001 */  bnel       $v0, $zero, .Lmenu_800E0248
/* FE334 800E0244 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800E0248:
/* FE338 800E0248 02431023 */  subu       $v0, $s2, $v1
/* FE33C 800E024C 02629821 */  addu       $s3, $s3, $v0
/* FE340 800E0250 0803807D */  j          .Lmenu_800E01F4
/* FE344 800E0254 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800E0258:
/* FE348 800E0258 0803807A */  j          .Lmenu_800E01E8
/* FE34C 800E025C 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800E0260:
/* FE350 800E0260 02601021 */  addu       $v0, $s3, $zero
/* FE354 800E0264 8FBF002C */  lw         $ra, 0x2C($sp)
/* FE358 800E0268 8FB60028 */  lw         $s6, 0x28($sp)
/* FE35C 800E026C 8FB50024 */  lw         $s5, 0x24($sp)
/* FE360 800E0270 8FB40020 */  lw         $s4, 0x20($sp)
/* FE364 800E0274 8FB3001C */  lw         $s3, 0x1C($sp)
/* FE368 800E0278 8FB20018 */  lw         $s2, 0x18($sp)
/* FE36C 800E027C 8FB10014 */  lw         $s1, 0x14($sp)
/* FE370 800E0280 8FB00010 */  lw         $s0, 0x10($sp)
/* FE374 800E0284 03E00008 */  jr         $ra
/* FE378 800E0288 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E028C
/* FE37C 800E028C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* FE380 800E0290 AFB5002C */  sw         $s5, 0x2C($sp)
/* FE384 800E0294 8FB50050 */  lw         $s5, 0x50($sp)
/* FE388 800E0298 AFB70034 */  sw         $s7, 0x34($sp)
/* FE38C 800E029C 8FB70054 */  lw         $s7, 0x54($sp)
/* FE390 800E02A0 AFB60030 */  sw         $s6, 0x30($sp)
/* FE394 800E02A4 8FB60058 */  lw         $s6, 0x58($sp)
/* FE398 800E02A8 AFB40028 */  sw         $s4, 0x28($sp)
/* FE39C 800E02AC 8FB4005C */  lw         $s4, 0x5C($sp)
/* FE3A0 800E02B0 AFBE0038 */  sw         $fp, 0x38($sp)
/* FE3A4 800E02B4 0080F021 */  addu       $fp, $a0, $zero
/* FE3A8 800E02B8 AFB20020 */  sw         $s2, 0x20($sp)
/* FE3AC 800E02BC 00009021 */  addu       $s2, $zero, $zero
/* FE3B0 800E02C0 AFBF003C */  sw         $ra, 0x3C($sp)
/* FE3B4 800E02C4 AFB30024 */  sw         $s3, 0x24($sp)
/* FE3B8 800E02C8 AFB1001C */  sw         $s1, 0x1C($sp)
/* FE3BC 800E02CC AFB00018 */  sw         $s0, 0x18($sp)
/* FE3C0 800E02D0 AFA50044 */  sw         $a1, 0x44($sp)
/* FE3C4 800E02D4 AFA60048 */  sw         $a2, 0x48($sp)
/* FE3C8 800E02D8 AFA7004C */  sw         $a3, 0x4C($sp)
/* FE3CC 800E02DC 32B50003 */  andi       $s5, $s5, 0x3
/* FE3D0 800E02E0 32A20001 */  andi       $v0, $s5, 0x1
/* FE3D4 800E02E4 AE800000 */  sw         $zero, 0x0($s4)
/* FE3D8 800E02E8 AEC00000 */  sw         $zero, 0x0($s6)
/* FE3DC 800E02EC 10400008 */  beqz       $v0, .Lmenu_800E0310
/* FE3E0 800E02F0 AEE00000 */   sw        $zero, 0x0($s7)
/* FE3E4 800E02F4 0C037D2B */  jal        func_menu_800DF4AC
/* FE3E8 800E02F8 00000000 */   nop
/* FE3EC 800E02FC 03C02021 */  addu       $a0, $fp, $zero
/* FE3F0 800E0300 0C037D27 */  jal        func_menu_800DF49C
/* FE3F4 800E0304 AFA20010 */   sw        $v0, 0x10($sp)
/* FE3F8 800E0308 080380CA */  j          .Lmenu_800E0328
/* FE3FC 800E030C AFA20014 */   sw        $v0, 0x14($sp)
.Lmenu_800E0310:
/* FE400 800E0310 0C037D27 */  jal        func_menu_800DF49C
/* FE404 800E0314 03C02021 */   addu      $a0, $fp, $zero
/* FE408 800E0318 03C02021 */  addu       $a0, $fp, $zero
/* FE40C 800E031C 0C037D2B */  jal        func_menu_800DF4AC
/* FE410 800E0320 AFA20010 */   sw        $v0, 0x10($sp)
/* FE414 800E0324 AFA20014 */  sw         $v0, 0x14($sp)
.Lmenu_800E0328:
/* FE418 800E0328 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800E032C:
/* FE41C 800E032C 8FA20014 */  lw         $v0, 0x14($sp)
/* FE420 800E0330 0222102A */  slt        $v0, $s1, $v0
/* FE424 800E0334 10400031 */  beqz       $v0, .Lmenu_800E03FC
/* FE428 800E0338 00008021 */   addu      $s0, $zero, $zero
/* FE42C 800E033C 8FA80048 */  lw         $t0, 0x48($sp)
/* FE430 800E0340 02289821 */  addu       $s3, $s1, $t0
.Lmenu_800E0344:
/* FE434 800E0344 8FA20010 */  lw         $v0, 0x10($sp)
/* FE438 800E0348 0202102A */  slt        $v0, $s0, $v0
/* FE43C 800E034C 10400029 */  beqz       $v0, .Lmenu_800E03F4
/* FE440 800E0350 02002821 */   addu      $a1, $s0, $zero
/* FE444 800E0354 02203021 */  addu       $a2, $s1, $zero
/* FE448 800E0358 8FC4000C */  lw         $a0, 0xC($fp)
/* FE44C 800E035C 0C037CEB */  jal        func_menu_800DF3AC
/* FE450 800E0360 02A03821 */   addu      $a3, $s5, $zero
/* FE454 800E0364 90430001 */  lbu        $v1, 0x1($v0)
/* FE458 800E0368 90420000 */  lbu        $v0, 0x0($v0)
/* FE45C 800E036C 3063003F */  andi       $v1, $v1, 0x3F
/* FE460 800E0370 3045003F */  andi       $a1, $v0, 0x3F
/* FE464 800E0374 00A3102A */  slt        $v0, $a1, $v1
/* FE468 800E0378 54400001 */  bnel       $v0, $zero, .Lmenu_800E0380
/* FE46C 800E037C 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800E0380:
/* FE470 800E0380 8FA80044 */  lw         $t0, 0x44($sp)
/* FE474 800E0384 00A32023 */  subu       $a0, $a1, $v1
/* FE478 800E0388 02081021 */  addu       $v0, $s0, $t0
/* FE47C 800E038C 00820018 */  mult       $a0, $v0
/* FE480 800E0390 00004812 */  mflo       $t1
/* FE484 800E0394 02449021 */  addu       $s2, $s2, $a0
/* FE488 800E0398 8EE20000 */  lw         $v0, 0x0($s7)
/* FE48C 800E039C 00930018 */  mult       $a0, $s3
/* FE490 800E03A0 00491021 */  addu       $v0, $v0, $t1
/* FE494 800E03A4 00602021 */  addu       $a0, $v1, $zero
/* FE498 800E03A8 AEE20000 */  sw         $v0, 0x0($s7)
/* FE49C 800E03AC 8EC20000 */  lw         $v0, 0x0($s6)
/* FE4A0 800E03B0 00003012 */  mflo       $a2
/* FE4A4 800E03B4 00461021 */  addu       $v0, $v0, $a2
/* FE4A8 800E03B8 AEC20000 */  sw         $v0, 0x0($s6)
/* FE4AC 800E03BC 0085102A */  slt        $v0, $a0, $a1
/* FE4B0 800E03C0 5040FFE0 */  beql       $v0, $zero, .Lmenu_800E0344
/* FE4B4 800E03C4 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800E03C8:
/* FE4B8 800E03C8 8FA8004C */  lw         $t0, 0x4C($sp)
/* FE4BC 800E03CC 8E820000 */  lw         $v0, 0x0($s4)
/* FE4C0 800E03D0 00881821 */  addu       $v1, $a0, $t0
/* FE4C4 800E03D4 24840001 */  addiu      $a0, $a0, 0x1
/* FE4C8 800E03D8 00431021 */  addu       $v0, $v0, $v1
/* FE4CC 800E03DC AE820000 */  sw         $v0, 0x0($s4)
/* FE4D0 800E03E0 0085102A */  slt        $v0, $a0, $a1
/* FE4D4 800E03E4 1440FFF8 */  bnez       $v0, .Lmenu_800E03C8
/* FE4D8 800E03E8 00000000 */   nop
/* FE4DC 800E03EC 080380D1 */  j          .Lmenu_800E0344
/* FE4E0 800E03F0 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800E03F4:
/* FE4E4 800E03F4 080380CB */  j          .Lmenu_800E032C
/* FE4E8 800E03F8 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800E03FC:
/* FE4EC 800E03FC 02401021 */  addu       $v0, $s2, $zero
/* FE4F0 800E0400 8FBF003C */  lw         $ra, 0x3C($sp)
/* FE4F4 800E0404 8FBE0038 */  lw         $fp, 0x38($sp)
/* FE4F8 800E0408 8FB70034 */  lw         $s7, 0x34($sp)
/* FE4FC 800E040C 8FB60030 */  lw         $s6, 0x30($sp)
/* FE500 800E0410 8FB5002C */  lw         $s5, 0x2C($sp)
/* FE504 800E0414 8FB40028 */  lw         $s4, 0x28($sp)
/* FE508 800E0418 8FB30024 */  lw         $s3, 0x24($sp)
/* FE50C 800E041C 8FB20020 */  lw         $s2, 0x20($sp)
/* FE510 800E0420 8FB1001C */  lw         $s1, 0x1C($sp)
/* FE514 800E0424 8FB00018 */  lw         $s0, 0x18($sp)
/* FE518 800E0428 03E00008 */  jr         $ra
/* FE51C 800E042C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800E0430
/* FE520 800E0430 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FE524 800E0434 AFBF0010 */  sw         $ra, 0x10($sp)
/* FE528 800E0438 94820010 */  lhu        $v0, 0x10($a0)
/* FE52C 800E043C 28420800 */  slti       $v0, $v0, 0x800
/* FE530 800E0440 10400004 */  beqz       $v0, .Lmenu_800E0454
/* FE534 800E0444 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* FE538 800E0448 8C84000C */  lw         $a0, 0xC($a0)
/* FE53C 800E044C 0C037D10 */  jal        func_menu_800DF440
/* FE540 800E0450 00000000 */   nop
.Lmenu_800E0454:
/* FE544 800E0454 8FBF0010 */  lw         $ra, 0x10($sp)
/* FE548 800E0458 03E00008 */  jr         $ra
/* FE54C 800E045C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E0460
/* FE550 800E0460 3C028012 */  lui        $v0, %hi(D_menu_801269D0)
/* FE554 800E0464 03E00008 */  jr         $ra
/* FE558 800E0468 AC4469D0 */   sw        $a0, %lo(D_menu_801269D0)($v0)

glabel func_menu_800E046C
/* FE55C 800E046C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FE560 800E0470 AFBF0010 */  sw         $ra, 0x10($sp)
/* FE564 800E0474 0C002513 */  jal        func_8000944C
/* FE568 800E0478 00000000 */   nop
/* FE56C 800E047C 8FBF0010 */  lw         $ra, 0x10($sp)
/* FE570 800E0480 03E00008 */  jr         $ra
/* FE574 800E0484 27BD0018 */   addiu     $sp, $sp, 0x18
