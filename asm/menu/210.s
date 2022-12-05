.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EB3C0
/* 1094B0 800EB3C0 3C01800D */  lui        $at, %hi(D_menu_800CB760)
/* 1094B4 800EB3C4 C420B760 */  lwc1       $f0, %lo(D_menu_800CB760)($at)
/* 1094B8 800EB3C8 00801021 */  addu       $v0, $a0, $zero
/* 1094BC 800EB3CC AC400000 */  sw         $zero, 0x0($v0)
/* 1094C0 800EB3D0 AC400004 */  sw         $zero, 0x4($v0)
/* 1094C4 800EB3D4 03E00008 */  jr         $ra
/* 1094C8 800EB3D8 E4400008 */   swc1      $f0, 0x8($v0)

glabel func_menu_800EB3DC
/* 1094CC 800EB3DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1094D0 800EB3E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1094D4 800EB3E4 00808821 */  addu       $s1, $a0, $zero
/* 1094D8 800EB3E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1094DC 800EB3EC AFBF0018 */  sw         $ra, 0x18($sp)
/* 1094E0 800EB3F0 0C03AD66 */  jal        func_menu_800EB598
/* 1094E4 800EB3F4 00A08021 */   addu      $s0, $a1, $zero
/* 1094E8 800EB3F8 32100001 */  andi       $s0, $s0, 0x1
/* 1094EC 800EB3FC 12000003 */  beqz       $s0, .Lmenu_800EB40C
/* 1094F0 800EB400 00000000 */   nop
/* 1094F4 800EB404 0C01FB5C */  jal        func_8007ED70
/* 1094F8 800EB408 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800EB40C:
/* 1094FC 800EB40C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 109500 800EB410 8FB10014 */  lw         $s1, 0x14($sp)
/* 109504 800EB414 8FB00010 */  lw         $s0, 0x10($sp)
/* 109508 800EB418 03E00008 */  jr         $ra
/* 10950C 800EB41C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EB420
/* 109510 800EB420 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 109514 800EB424 AFB40020 */  sw         $s4, 0x20($sp)
/* 109518 800EB428 0080A021 */  addu       $s4, $a0, $zero
/* 10951C 800EB42C AFBF002C */  sw         $ra, 0x2C($sp)
/* 109520 800EB430 AFB60028 */  sw         $s6, 0x28($sp)
/* 109524 800EB434 AFB50024 */  sw         $s5, 0x24($sp)
/* 109528 800EB438 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10952C 800EB43C AFB20018 */  sw         $s2, 0x18($sp)
/* 109530 800EB440 AFB10014 */  sw         $s1, 0x14($sp)
/* 109534 800EB444 AFB00010 */  sw         $s0, 0x10($sp)
/* 109538 800EB448 8E820004 */  lw         $v0, 0x4($s4)
/* 10953C 800EB44C 10400003 */  beqz       $v0, .Lmenu_800EB45C
/* 109540 800EB450 00A0A821 */   addu      $s5, $a1, $zero
/* 109544 800EB454 0C03AD66 */  jal        func_menu_800EB598
/* 109548 800EB458 00000000 */   nop
.Lmenu_800EB45C:
/* 10954C 800EB45C 02A02021 */  addu       $a0, $s5, $zero
/* 109550 800EB460 0C0026F4 */  jal        func_80009BD0
/* 109554 800EB464 24050005 */   addiu     $a1, $zero, 0x5
/* 109558 800EB468 2416FFFF */  addiu      $s6, $zero, -0x1
.Lmenu_800EB46C:
/* 10955C 800EB46C 8EA20028 */  lw         $v0, 0x28($s5)
/* 109560 800EB470 844400A0 */  lh         $a0, 0xA0($v0)
/* 109564 800EB474 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 109568 800EB478 0040F809 */  jalr       $v0
/* 10956C 800EB47C 02A42021 */   addu      $a0, $s5, $a0
/* 109570 800EB480 00401821 */  addu       $v1, $v0, $zero
/* 109574 800EB484 24020006 */  addiu      $v0, $zero, 0x6
/* 109578 800EB488 10620039 */  beq        $v1, $v0, .Lmenu_800EB570
/* 10957C 800EB48C 2402002B */   addiu     $v0, $zero, 0x2B
/* 109580 800EB490 10620007 */  beq        $v1, $v0, .Lmenu_800EB4B0
/* 109584 800EB494 2402002D */   addiu     $v0, $zero, 0x2D
/* 109588 800EB498 1462002E */  bne        $v1, $v0, .Lmenu_800EB554
/* 10958C 800EB49C 00002821 */   addu      $a1, $zero, $zero
/* 109590 800EB4A0 0C0025F8 */  jal        func_800097E0
/* 109594 800EB4A4 02A02021 */   addu      $a0, $s5, $zero
/* 109598 800EB4A8 0803AD1B */  j          .Lmenu_800EB46C
/* 10959C 800EB4AC E6800008 */   swc1      $f0, 0x8($s4)
.Lmenu_800EB4B0:
/* 1095A0 800EB4B0 0C002723 */  jal        func_80009C8C
/* 1095A4 800EB4B4 02A02021 */   addu      $a0, $s5, $zero
/* 1095A8 800EB4B8 3C038012 */  lui        $v1, %hi(D_menu_80126A40)
/* 1095AC 800EB4BC 8C646A40 */  lw         $a0, %lo(D_menu_80126A40)($v1)
/* 1095B0 800EB4C0 0C01FB65 */  jal        func_8007ED94
/* 1095B4 800EB4C4 AE820000 */   sw        $v0, 0x0($s4)
/* 1095B8 800EB4C8 8E900000 */  lw         $s0, 0x0($s4)
/* 1095BC 800EB4CC 00102100 */  sll        $a0, $s0, 4
/* 1095C0 800EB4D0 0C00943C */  jal        func_800250F0
/* 1095C4 800EB4D4 34840008 */   ori       $a0, $a0, 0x8
/* 1095C8 800EB4D8 24420008 */  addiu      $v0, $v0, 0x8
/* 1095CC 800EB4DC 00409821 */  addu       $s3, $v0, $zero
/* 1095D0 800EB4E0 02609021 */  addu       $s2, $s3, $zero
/* 1095D4 800EB4E4 2611FFFF */  addiu      $s1, $s0, -0x1
/* 1095D8 800EB4E8 06200006 */  bltz       $s1, .Lmenu_800EB504
/* 1095DC 800EB4EC AE70FFF8 */   sw        $s0, -0x8($s3)
.Lmenu_800EB4F0:
/* 1095E0 800EB4F0 0C03B094 */  jal        func_menu_800EC250
/* 1095E4 800EB4F4 02402021 */   addu      $a0, $s2, $zero
/* 1095E8 800EB4F8 2631FFFF */  addiu      $s1, $s1, -0x1
/* 1095EC 800EB4FC 1636FFFC */  bne        $s1, $s6, .Lmenu_800EB4F0
/* 1095F0 800EB500 26520010 */   addiu     $s2, $s2, 0x10
.Lmenu_800EB504:
/* 1095F4 800EB504 0C01FB72 */  jal        func_8007EDC8
/* 1095F8 800EB508 AE930004 */   sw        $s3, 0x4($s4)
/* 1095FC 800EB50C 8E820000 */  lw         $v0, 0x0($s4)
/* 109600 800EB510 1040000B */  beqz       $v0, .Lmenu_800EB540
/* 109604 800EB514 00008021 */   addu      $s0, $zero, $zero
/* 109608 800EB518 02A02821 */  addu       $a1, $s5, $zero
.Lmenu_800EB51C:
/* 10960C 800EB51C 8E820004 */  lw         $v0, 0x4($s4)
/* 109610 800EB520 00102100 */  sll        $a0, $s0, 4
/* 109614 800EB524 0C03B0AA */  jal        func_menu_800EC2A8
/* 109618 800EB528 00442021 */   addu      $a0, $v0, $a0
/* 10961C 800EB52C 8E820000 */  lw         $v0, 0x0($s4)
/* 109620 800EB530 26100001 */  addiu      $s0, $s0, 0x1
/* 109624 800EB534 0202102B */  sltu       $v0, $s0, $v0
/* 109628 800EB538 1440FFF8 */  bnez       $v0, .Lmenu_800EB51C
/* 10962C 800EB53C 02A02821 */   addu      $a1, $s5, $zero
.Lmenu_800EB540:
/* 109630 800EB540 02A02021 */  addu       $a0, $s5, $zero
/* 109634 800EB544 0C0026F4 */  jal        func_80009BD0
/* 109638 800EB548 24050006 */   addiu     $a1, $zero, 0x6
/* 10963C 800EB54C 0803AD1B */  j          .Lmenu_800EB46C
/* 109640 800EB550 00000000 */   nop
.Lmenu_800EB554:
/* 109644 800EB554 8EA20028 */  lw         $v0, 0x28($s5)
/* 109648 800EB558 84440098 */  lh         $a0, 0x98($v0)
/* 10964C 800EB55C 8C42009C */  lw         $v0, 0x9C($v0)
/* 109650 800EB560 0040F809 */  jalr       $v0
/* 109654 800EB564 02A42021 */   addu      $a0, $s5, $a0
/* 109658 800EB568 0803AD1B */  j          .Lmenu_800EB46C
/* 10965C 800EB56C 00000000 */   nop
.Lmenu_800EB570:
/* 109660 800EB570 8FBF002C */  lw         $ra, 0x2C($sp)
/* 109664 800EB574 8FB60028 */  lw         $s6, 0x28($sp)
/* 109668 800EB578 8FB50024 */  lw         $s5, 0x24($sp)
/* 10966C 800EB57C 8FB40020 */  lw         $s4, 0x20($sp)
/* 109670 800EB580 8FB3001C */  lw         $s3, 0x1C($sp)
/* 109674 800EB584 8FB20018 */  lw         $s2, 0x18($sp)
/* 109678 800EB588 8FB10014 */  lw         $s1, 0x14($sp)
/* 10967C 800EB58C 8FB00010 */  lw         $s0, 0x10($sp)
/* 109680 800EB590 03E00008 */  jr         $ra
/* 109684 800EB594 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800EB598
/* 109688 800EB598 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10968C 800EB59C AFB10014 */  sw         $s1, 0x14($sp)
/* 109690 800EB5A0 00808821 */  addu       $s1, $a0, $zero
/* 109694 800EB5A4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 109698 800EB5A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 10969C 800EB5AC 8E230004 */  lw         $v1, 0x4($s1)
/* 1096A0 800EB5B0 50600011 */  beql       $v1, $zero, .Lmenu_800EB5F8
/* 1096A4 800EB5B4 AE200000 */   sw        $zero, 0x0($s1)
/* 1096A8 800EB5B8 8C62FFF8 */  lw         $v0, -0x8($v1)
/* 1096AC 800EB5BC 00021100 */  sll        $v0, $v0, 4
/* 1096B0 800EB5C0 00628021 */  addu       $s0, $v1, $v0
/* 1096B4 800EB5C4 10700007 */  beq        $v1, $s0, .Lmenu_800EB5E4
/* 1096B8 800EB5C8 2610FFF0 */   addiu     $s0, $s0, -0x10
.Lmenu_800EB5CC:
/* 1096BC 800EB5CC 02002021 */  addu       $a0, $s0, $zero
/* 1096C0 800EB5D0 0C03B099 */  jal        func_menu_800EC264
/* 1096C4 800EB5D4 24050002 */   addiu     $a1, $zero, 0x2
/* 1096C8 800EB5D8 8E220004 */  lw         $v0, 0x4($s1)
/* 1096CC 800EB5DC 1450FFFB */  bne        $v0, $s0, .Lmenu_800EB5CC
/* 1096D0 800EB5E0 2610FFF0 */   addiu     $s0, $s0, -0x10
.Lmenu_800EB5E4:
/* 1096D4 800EB5E4 8E240004 */  lw         $a0, 0x4($s1)
/* 1096D8 800EB5E8 0C009444 */  jal        func_80025110
/* 1096DC 800EB5EC 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 1096E0 800EB5F0 AE200004 */  sw         $zero, 0x4($s1)
/* 1096E4 800EB5F4 AE200000 */  sw         $zero, 0x0($s1)
.Lmenu_800EB5F8:
/* 1096E8 800EB5F8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1096EC 800EB5FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1096F0 800EB600 8FB00010 */  lw         $s0, 0x10($sp)
/* 1096F4 800EB604 03E00008 */  jr         $ra
/* 1096F8 800EB608 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EB60C
/* 1096FC 800EB60C 3C028012 */  lui        $v0, %hi(D_menu_80126A40)
/* 109700 800EB610 03E00008 */  jr         $ra
/* 109704 800EB614 AC446A40 */   sw        $a0, %lo(D_menu_80126A40)($v0)
