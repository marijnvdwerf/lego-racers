.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800682A0
/* 5F5D0 800682A0 00801021 */  addu       $v0, $a0, $zero
/* 5F5D4 800682A4 AC400000 */  sw         $zero, 0x0($v0)
/* 5F5D8 800682A8 03E00008 */  jr         $ra
/* 5F5DC 800682AC AC400004 */   sw        $zero, 0x4($v0)

glabel func_800682B0
/* 5F5E0 800682B0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 5F5E4 800682B4 AFB30044 */  sw         $s3, 0x44($sp)
/* 5F5E8 800682B8 00809821 */  addu       $s3, $a0, $zero
/* 5F5EC 800682BC 00A02021 */  addu       $a0, $a1, $zero
/* 5F5F0 800682C0 AFB20040 */  sw         $s2, 0x40($sp)
/* 5F5F4 800682C4 00C09021 */  addu       $s2, $a2, $zero
/* 5F5F8 800682C8 02402821 */  addu       $a1, $s2, $zero
/* 5F5FC 800682CC AFB40048 */  sw         $s4, 0x48($sp)
/* 5F600 800682D0 00E0A021 */  addu       $s4, $a3, $zero
/* 5F604 800682D4 AFBF004C */  sw         $ra, 0x4C($sp)
/* 5F608 800682D8 AFB1003C */  sw         $s1, 0x3C($sp)
/* 5F60C 800682DC 0C016F2D */  jal        func_8005BCB4
/* 5F610 800682E0 AFB00038 */   sw        $s0, 0x38($sp)
/* 5F614 800682E4 14400023 */  bnez       $v0, .L80068374
/* 5F618 800682E8 AE620000 */   sw        $v0, 0x0($s3)
/* 5F61C 800682EC 27B10010 */  addiu      $s1, $sp, 0x10
/* 5F620 800682F0 3C028004 */  lui        $v0, %hi(D_8003E730)
/* 5F624 800682F4 244AE730 */  addiu      $t2, $v0, %lo(D_8003E730)
/* 5F628 800682F8 8D430000 */  lw         $v1, 0x0($t2)
/* 5F62C 800682FC 8D480004 */  lw         $t0, 0x4($t2)
/* 5F630 80068300 8D490008 */  lw         $t1, 0x8($t2)
/* 5F634 80068304 AFA30010 */  sw         $v1, 0x10($sp)
/* 5F638 80068308 AFA80014 */  sw         $t0, 0x14($sp)
/* 5F63C 8006830C AFA90018 */  sw         $t1, 0x18($sp)
/* 5F640 80068310 8D43000C */  lw         $v1, 0xC($t2)
/* 5F644 80068314 8D480010 */  lw         $t0, 0x10($t2)
/* 5F648 80068318 8D490014 */  lw         $t1, 0x14($t2)
/* 5F64C 8006831C AFA3001C */  sw         $v1, 0x1C($sp)
/* 5F650 80068320 AFA80020 */  sw         $t0, 0x20($sp)
/* 5F654 80068324 AFA90024 */  sw         $t1, 0x24($sp)
/* 5F658 80068328 8D430018 */  lw         $v1, 0x18($t2)
/* 5F65C 8006832C 8D48001C */  lw         $t0, 0x1C($t2)
/* 5F660 80068330 AFA30028 */  sw         $v1, 0x28($sp)
/* 5F664 80068334 AFA8002C */  sw         $t0, 0x2C($sp)
/* 5F668 80068338 0C006DFE */  jal        strlen
/* 5F66C 8006833C 02202021 */   addu      $a0, $s1, $zero
/* 5F670 80068340 00408021 */  addu       $s0, $v0, $zero
/* 5F674 80068344 02302021 */  addu       $a0, $s1, $s0
/* 5F678 80068348 02402821 */  addu       $a1, $s2, $zero
/* 5F67C 8006834C 0C000708 */  jal        func_80001C20
/* 5F680 80068350 24060008 */   addiu     $a2, $zero, 0x8
/* 5F684 80068354 3C048004 */  lui        $a0, %hi(D_8003E750)
/* 5F688 80068358 2484E750 */  addiu      $a0, $a0, %lo(D_8003E750)
/* 5F68C 8006835C 00002821 */  addu       $a1, $zero, $zero
/* 5F690 80068360 00A03021 */  addu       $a2, $a1, $zero
/* 5F694 80068364 02118021 */  addu       $s0, $s0, $s1
/* 5F698 80068368 00A03821 */  addu       $a3, $a1, $zero
/* 5F69C 8006836C 0C011ACF */  jal        func_80046B3C
/* 5F6A0 80068370 A2000008 */   sb        $zero, 0x8($s0)
.L80068374:
/* 5F6A4 80068374 AE740004 */  sw         $s4, 0x4($s3)
/* 5F6A8 80068378 8FBF004C */  lw         $ra, 0x4C($sp)
/* 5F6AC 8006837C 8FB40048 */  lw         $s4, 0x48($sp)
/* 5F6B0 80068380 8FB30044 */  lw         $s3, 0x44($sp)
/* 5F6B4 80068384 8FB20040 */  lw         $s2, 0x40($sp)
/* 5F6B8 80068388 8FB1003C */  lw         $s1, 0x3C($sp)
/* 5F6BC 8006838C 8FB00038 */  lw         $s0, 0x38($sp)
/* 5F6C0 80068390 03E00008 */  jr         $ra
/* 5F6C4 80068394 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80068398
/* 5F6C8 80068398 AC800000 */  sw         $zero, 0x0($a0)
/* 5F6CC 8006839C 03E00008 */  jr         $ra
/* 5F6D0 800683A0 AC800004 */   sw        $zero, 0x4($a0)
