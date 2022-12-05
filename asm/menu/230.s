.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EC250
/* 10A340 800EC250 00801021 */  addu       $v0, $a0, $zero
/* 10A344 800EC254 AC400000 */  sw         $zero, 0x0($v0)
/* 10A348 800EC258 A0400008 */  sb         $zero, 0x8($v0)
/* 10A34C 800EC25C 03E00008 */  jr         $ra
/* 10A350 800EC260 AC400004 */   sw        $zero, 0x4($v0)

glabel func_menu_800EC264
/* 10A354 800EC264 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10A358 800EC268 AFB10014 */  sw         $s1, 0x14($sp)
/* 10A35C 800EC26C 00808821 */  addu       $s1, $a0, $zero
/* 10A360 800EC270 AFB00010 */  sw         $s0, 0x10($sp)
/* 10A364 800EC274 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10A368 800EC278 0C03B105 */  jal        func_menu_800EC414
/* 10A36C 800EC27C 00A08021 */   addu      $s0, $a1, $zero
/* 10A370 800EC280 32100001 */  andi       $s0, $s0, 0x1
/* 10A374 800EC284 12000003 */  beqz       $s0, .Lmenu_800EC294
/* 10A378 800EC288 00000000 */   nop
/* 10A37C 800EC28C 0C01FB5C */  jal        func_8007ED70
/* 10A380 800EC290 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800EC294:
/* 10A384 800EC294 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10A388 800EC298 8FB10014 */  lw         $s1, 0x14($sp)
/* 10A38C 800EC29C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10A390 800EC2A0 03E00008 */  jr         $ra
/* 10A394 800EC2A4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EC2A8
/* 10A398 800EC2A8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10A39C 800EC2AC AFB3001C */  sw         $s3, 0x1C($sp)
/* 10A3A0 800EC2B0 00809821 */  addu       $s3, $a0, $zero
/* 10A3A4 800EC2B4 AFB20018 */  sw         $s2, 0x18($sp)
/* 10A3A8 800EC2B8 00A09021 */  addu       $s2, $a1, $zero
/* 10A3AC 800EC2BC 02402021 */  addu       $a0, $s2, $zero
/* 10A3B0 800EC2C0 2405002B */  addiu      $a1, $zero, 0x2B
/* 10A3B4 800EC2C4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10A3B8 800EC2C8 AFB10014 */  sw         $s1, 0x14($sp)
/* 10A3BC 800EC2CC 0C0026F4 */  jal        func_80009BD0
/* 10A3C0 800EC2D0 AFB00010 */   sw        $s0, 0x10($sp)
/* 10A3C4 800EC2D4 02402021 */  addu       $a0, $s2, $zero
/* 10A3C8 800EC2D8 24050005 */  addiu      $a1, $zero, 0x5
.Lmenu_800EC2DC:
/* 10A3CC 800EC2DC 0C0026F4 */  jal        func_80009BD0
/* 10A3D0 800EC2E0 00000000 */   nop
.Lmenu_800EC2E4:
/* 10A3D4 800EC2E4 8E420028 */  lw         $v0, 0x28($s2)
/* 10A3D8 800EC2E8 844400A0 */  lh         $a0, 0xA0($v0)
/* 10A3DC 800EC2EC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10A3E0 800EC2F0 0040F809 */  jalr       $v0
/* 10A3E4 800EC2F4 02442021 */   addu      $a0, $s2, $a0
/* 10A3E8 800EC2F8 00401821 */  addu       $v1, $v0, $zero
/* 10A3EC 800EC2FC 24020006 */  addiu      $v0, $zero, 0x6
/* 10A3F0 800EC300 1062003D */  beq        $v1, $v0, .Lmenu_800EC3F8
/* 10A3F4 800EC304 24020027 */   addiu     $v0, $zero, 0x27
/* 10A3F8 800EC308 10620005 */  beq        $v1, $v0, .Lmenu_800EC320
/* 10A3FC 800EC30C 2402002A */   addiu     $v0, $zero, 0x2A
/* 10A400 800EC310 1062000E */  beq        $v1, $v0, .Lmenu_800EC34C
/* 10A404 800EC314 00002821 */   addu      $a1, $zero, $zero
/* 10A408 800EC318 0803B0F7 */  j          .Lmenu_800EC3DC
/* 10A40C 800EC31C 00000000 */   nop
.Lmenu_800EC320:
/* 10A410 800EC320 8E420028 */  lw         $v0, 0x28($s2)
/* 10A414 800EC324 844400A0 */  lh         $a0, 0xA0($v0)
/* 10A418 800EC328 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10A41C 800EC32C 0040F809 */  jalr       $v0
/* 10A420 800EC330 02442021 */   addu      $a0, $s2, $a0
/* 10A424 800EC334 26640008 */  addiu      $a0, $s3, 0x8
/* 10A428 800EC338 26450044 */  addiu      $a1, $s2, 0x44
/* 10A42C 800EC33C 0C000708 */  jal        func_80001C20
/* 10A430 800EC340 24060008 */   addiu     $a2, $zero, 0x8
/* 10A434 800EC344 0803B0B9 */  j          .Lmenu_800EC2E4
/* 10A438 800EC348 00000000 */   nop
.Lmenu_800EC34C:
/* 10A43C 800EC34C 0C002723 */  jal        func_80009C8C
/* 10A440 800EC350 02402021 */   addu      $a0, $s2, $zero
/* 10A444 800EC354 3C038012 */  lui        $v1, %hi(D_menu_80126B80)
/* 10A448 800EC358 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 10A44C 800EC35C 8C646B80 */  lw         $a0, %lo(D_menu_80126B80)($v1)
/* 10A450 800EC360 00021840 */  sll        $v1, $v0, 1
/* 10A454 800EC364 00628821 */  addu       $s1, $v1, $v0
/* 10A458 800EC368 0C01FB65 */  jal        func_8007ED94
/* 10A45C 800EC36C AE620004 */   sw        $v0, 0x4($s3)
/* 10A460 800EC370 0C00943C */  jal        func_800250F0
/* 10A464 800EC374 00112040 */   sll       $a0, $s1, 1
/* 10A468 800EC378 0C01FB72 */  jal        func_8007EDC8
/* 10A46C 800EC37C AE620000 */   sw        $v0, 0x0($s3)
/* 10A470 800EC380 8E620000 */  lw         $v0, 0x0($s3)
/* 10A474 800EC384 14400006 */  bnez       $v0, .Lmenu_800EC3A0
/* 10A478 800EC388 3C04800D */   lui       $a0, %hi(D_menu_800CB870)
/* 10A47C 800EC38C 2484B870 */  addiu      $a0, $a0, %lo(D_menu_800CB870)
/* 10A480 800EC390 00002821 */  addu       $a1, $zero, $zero
/* 10A484 800EC394 00A03021 */  addu       $a2, $a1, $zero
/* 10A488 800EC398 0C011ACF */  jal        func_80046B3C
/* 10A48C 800EC39C 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800EC3A0:
/* 10A490 800EC3A0 1220000B */  beqz       $s1, .Lmenu_800EC3D0
/* 10A494 800EC3A4 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800EC3A8:
/* 10A498 800EC3A8 0C002680 */  jal        func_80009A00
/* 10A49C 800EC3AC 02402021 */   addu      $a0, $s2, $zero
/* 10A4A0 800EC3B0 00101840 */  sll        $v1, $s0, 1
/* 10A4A4 800EC3B4 8E640000 */  lw         $a0, 0x0($s3)
/* 10A4A8 800EC3B8 26100001 */  addiu      $s0, $s0, 0x1
/* 10A4AC 800EC3BC 00641821 */  addu       $v1, $v1, $a0
/* 10A4B0 800EC3C0 A4620000 */  sh         $v0, 0x0($v1)
/* 10A4B4 800EC3C4 0211102B */  sltu       $v0, $s0, $s1
/* 10A4B8 800EC3C8 1440FFF7 */  bnez       $v0, .Lmenu_800EC3A8
/* 10A4BC 800EC3CC 00000000 */   nop
.Lmenu_800EC3D0:
/* 10A4C0 800EC3D0 02402021 */  addu       $a0, $s2, $zero
/* 10A4C4 800EC3D4 0803B0B7 */  j          .Lmenu_800EC2DC
/* 10A4C8 800EC3D8 24050006 */   addiu     $a1, $zero, 0x6
.Lmenu_800EC3DC:
/* 10A4CC 800EC3DC 8E420028 */  lw         $v0, 0x28($s2)
/* 10A4D0 800EC3E0 84440098 */  lh         $a0, 0x98($v0)
/* 10A4D4 800EC3E4 8C42009C */  lw         $v0, 0x9C($v0)
/* 10A4D8 800EC3E8 0040F809 */  jalr       $v0
/* 10A4DC 800EC3EC 02442021 */   addu      $a0, $s2, $a0
/* 10A4E0 800EC3F0 0803B0B9 */  j          .Lmenu_800EC2E4
/* 10A4E4 800EC3F4 00000000 */   nop
.Lmenu_800EC3F8:
/* 10A4E8 800EC3F8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10A4EC 800EC3FC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10A4F0 800EC400 8FB20018 */  lw         $s2, 0x18($sp)
/* 10A4F4 800EC404 8FB10014 */  lw         $s1, 0x14($sp)
/* 10A4F8 800EC408 8FB00010 */  lw         $s0, 0x10($sp)
/* 10A4FC 800EC40C 03E00008 */  jr         $ra
/* 10A500 800EC410 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EC414
/* 10A504 800EC414 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10A508 800EC418 AFB00010 */  sw         $s0, 0x10($sp)
/* 10A50C 800EC41C 00808021 */  addu       $s0, $a0, $zero
/* 10A510 800EC420 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10A514 800EC424 8E040000 */  lw         $a0, 0x0($s0)
/* 10A518 800EC428 50800005 */  beql       $a0, $zero, .Lmenu_800EC440
/* 10A51C 800EC42C AE000004 */   sw        $zero, 0x4($s0)
/* 10A520 800EC430 0C009444 */  jal        func_80025110
/* 10A524 800EC434 00000000 */   nop
/* 10A528 800EC438 AE000000 */  sw         $zero, 0x0($s0)
/* 10A52C 800EC43C AE000004 */  sw         $zero, 0x4($s0)
.Lmenu_800EC440:
/* 10A530 800EC440 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10A534 800EC444 8FB00010 */  lw         $s0, 0x10($sp)
/* 10A538 800EC448 03E00008 */  jr         $ra
/* 10A53C 800EC44C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EC450
/* 10A540 800EC450 3C028012 */  lui        $v0, %hi(D_menu_80126B80)
/* 10A544 800EC454 03E00008 */  jr         $ra
/* 10A548 800EC458 AC446B80 */   sw        $a0, %lo(D_menu_80126B80)($v0)
