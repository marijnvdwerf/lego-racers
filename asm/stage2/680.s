.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007C280
/* 735B0 8007C280 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 735B4 8007C284 AFB00010 */  sw         $s0, 0x10($sp)
/* 735B8 8007C288 00808021 */  addu       $s0, $a0, $zero
/* 735BC 8007C28C 2604005C */  addiu      $a0, $s0, 0x5C
/* 735C0 8007C290 00002821 */  addu       $a1, $zero, $zero
/* 735C4 8007C294 AFBF0014 */  sw         $ra, 0x14($sp)
/* 735C8 8007C298 0C000697 */  jal        func_80001A5C
/* 735CC 8007C29C 24060010 */   addiu     $a2, $zero, 0x10
/* 735D0 8007C2A0 26044238 */  addiu      $a0, $s0, 0x4238
/* 735D4 8007C2A4 00002821 */  addu       $a1, $zero, $zero
/* 735D8 8007C2A8 0C000697 */  jal        func_80001A5C
/* 735DC 8007C2AC 24060030 */   addiu     $a2, $zero, 0x30
/* 735E0 8007C2B0 02002021 */  addu       $a0, $s0, $zero
/* 735E4 8007C2B4 24020001 */  addiu      $v0, $zero, 0x1
/* 735E8 8007C2B8 AC800080 */  sw         $zero, 0x80($a0)
/* 735EC 8007C2BC AC800054 */  sw         $zero, 0x54($a0)
/* 735F0 8007C2C0 AC820058 */  sw         $v0, 0x58($a0)
/* 735F4 8007C2C4 0C002B41 */  jal        func_8000AD04
/* 735F8 8007C2C8 AC80007C */   sw        $zero, 0x7C($a0)
/* 735FC 8007C2CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 73600 8007C2D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 73604 8007C2D4 03E00008 */  jr         $ra
/* 73608 8007C2D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007C2DC
/* 7360C 8007C2DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 73610 8007C2E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 73614 8007C2E4 00809021 */  addu       $s2, $a0, $zero
/* 73618 8007C2E8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 7361C 8007C2EC AFB3001C */  sw         $s3, 0x1C($sp)
/* 73620 8007C2F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 73624 8007C2F4 0C002B28 */  jal        func_8000ACA0
/* 73628 8007C2F8 AFB00010 */   sw        $s0, 0x10($sp)
/* 7362C 8007C2FC 3C028004 */  lui        $v0, %hi(D_800401F0)
/* 73630 8007C300 244201F0 */  addiu      $v0, $v0, %lo(D_800401F0)
/* 73634 8007C304 26514268 */  addiu      $s1, $s2, 0x4268
/* 73638 8007C308 24100003 */  addiu      $s0, $zero, 0x3
/* 7363C 8007C30C 2413FFFF */  addiu      $s3, $zero, -0x1
/* 73640 8007C310 AE420050 */  sw         $v0, 0x50($s2)
.L8007C314:
/* 73644 8007C314 0C01F50C */  jal        func_8007D430
/* 73648 8007C318 02202021 */   addu      $a0, $s1, $zero
/* 7364C 8007C31C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 73650 8007C320 1613FFFC */  bne        $s0, $s3, .L8007C314
/* 73654 8007C324 26310150 */   addiu     $s1, $s1, 0x150
/* 73658 8007C328 0C01F0A0 */  jal        func_8007C280
/* 7365C 8007C32C 02402021 */   addu      $a0, $s2, $zero
/* 73660 8007C330 02401021 */  addu       $v0, $s2, $zero
/* 73664 8007C334 8FBF0020 */  lw         $ra, 0x20($sp)
/* 73668 8007C338 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7366C 8007C33C 8FB20018 */  lw         $s2, 0x18($sp)
/* 73670 8007C340 8FB10014 */  lw         $s1, 0x14($sp)
/* 73674 8007C344 8FB00010 */  lw         $s0, 0x10($sp)
/* 73678 8007C348 03E00008 */  jr         $ra
/* 7367C 8007C34C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007C350
/* 73680 8007C350 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 73684 8007C354 AFB20018 */  sw         $s2, 0x18($sp)
/* 73688 8007C358 00809021 */  addu       $s2, $a0, $zero
/* 7368C 8007C35C AFB3001C */  sw         $s3, 0x1C($sp)
/* 73690 8007C360 00A09821 */  addu       $s3, $a1, $zero
/* 73694 8007C364 3C028004 */  lui        $v0, %hi(D_800401F0)
/* 73698 8007C368 244201F0 */  addiu      $v0, $v0, %lo(D_800401F0)
/* 7369C 8007C36C AFBF0020 */  sw         $ra, 0x20($sp)
/* 736A0 8007C370 AFB10014 */  sw         $s1, 0x14($sp)
/* 736A4 8007C374 AFB00010 */  sw         $s0, 0x10($sp)
/* 736A8 8007C378 0C01F1A5 */  jal        func_8007C694
/* 736AC 8007C37C AE420050 */   sw        $v0, 0x50($s2)
/* 736B0 8007C380 26424268 */  addiu      $v0, $s2, 0x4268
/* 736B4 8007C384 1040000C */  beqz       $v0, .L8007C3B8
/* 736B8 8007C388 265047A8 */   addiu     $s0, $s2, 0x47A8
/* 736BC 8007C38C 1050000A */  beq        $v0, $s0, .L8007C3B8
/* 736C0 8007C390 00408821 */   addu      $s1, $v0, $zero
/* 736C4 8007C394 2610FEB0 */  addiu      $s0, $s0, -0x150
.L8007C398:
/* 736C8 8007C398 8E020098 */  lw         $v0, 0x98($s0)
/* 736CC 8007C39C 24050002 */  addiu      $a1, $zero, 0x2
/* 736D0 8007C3A0 84440020 */  lh         $a0, 0x20($v0)
/* 736D4 8007C3A4 8C420024 */  lw         $v0, 0x24($v0)
/* 736D8 8007C3A8 0040F809 */  jalr       $v0
/* 736DC 8007C3AC 02042021 */   addu      $a0, $s0, $a0
/* 736E0 8007C3B0 1630FFF9 */  bne        $s1, $s0, .L8007C398
/* 736E4 8007C3B4 2610FEB0 */   addiu     $s0, $s0, -0x150
.L8007C3B8:
/* 736E8 8007C3B8 02402021 */  addu       $a0, $s2, $zero
/* 736EC 8007C3BC 0C002B35 */  jal        func_8000ACD4
/* 736F0 8007C3C0 02602821 */   addu      $a1, $s3, $zero
/* 736F4 8007C3C4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 736F8 8007C3C8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 736FC 8007C3CC 8FB20018 */  lw         $s2, 0x18($sp)
/* 73700 8007C3D0 8FB10014 */  lw         $s1, 0x14($sp)
/* 73704 8007C3D4 8FB00010 */  lw         $s0, 0x10($sp)
/* 73708 8007C3D8 03E00008 */  jr         $ra
/* 7370C 8007C3DC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007C3E0
/* 73710 8007C3E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73714 8007C3E4 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 73718 8007C3E8 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 7371C 8007C3EC 3C058008 */  lui        $a1, %hi(D_80087350)
/* 73720 8007C3F0 24A57350 */  addiu      $a1, $a1, %lo(D_80087350)
/* 73724 8007C3F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 73728 8007C3F8 0C00776C */  jal        osSendMesg
/* 7372C 8007C3FC 24060001 */   addiu     $a2, $zero, 0x1
/* 73730 8007C400 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 73734 8007C404 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 73738 8007C408 00002821 */  addu       $a1, $zero, $zero
/* 7373C 8007C40C 0C007720 */  jal        osRecvMesg
/* 73740 8007C410 24060001 */   addiu     $a2, $zero, 0x1
/* 73744 8007C414 8FBF0010 */  lw         $ra, 0x10($sp)
/* 73748 8007C418 03E00008 */  jr         $ra
/* 7374C 8007C41C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007C420
/* 73750 8007C420 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 73754 8007C424 AFB20020 */  sw         $s2, 0x20($sp)
/* 73758 8007C428 00809021 */  addu       $s2, $a0, $zero
/* 7375C 8007C42C AFB1001C */  sw         $s1, 0x1C($sp)
/* 73760 8007C430 3C11800D */  lui        $s1, %hi(D_800CA170)
/* 73764 8007C434 2631A170 */  addiu      $s1, $s1, %lo(D_800CA170)
/* 73768 8007C438 02202021 */  addu       $a0, $s1, $zero
/* 7376C 8007C43C 00002821 */  addu       $a1, $zero, $zero
/* 73770 8007C440 24060008 */  addiu      $a2, $zero, 0x8
/* 73774 8007C444 AFBF0024 */  sw         $ra, 0x24($sp)
/* 73778 8007C448 0C000697 */  jal        func_80001A5C
/* 7377C 8007C44C AFB00018 */   sw        $s0, 0x18($sp)
/* 73780 8007C450 3C10800D */  lui        $s0, %hi(D_800CA0B0)
/* 73784 8007C454 2610A0B0 */  addiu      $s0, $s0, %lo(D_800CA0B0)
/* 73788 8007C458 02002021 */  addu       $a0, $s0, $zero
/* 7378C 8007C45C 3C05800D */  lui        $a1, %hi(D_800CA0D0)
/* 73790 8007C460 24A5A0D0 */  addiu      $a1, $a1, %lo(D_800CA0D0)
/* 73794 8007C464 0C007468 */  jal        osCreateMesgQueue
/* 73798 8007C468 24060010 */   addiu     $a2, $zero, 0x10
/* 7379C 8007C46C 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 737A0 8007C470 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 737A4 8007C474 3C05800D */  lui        $a1, %hi(D_800CA128)
/* 737A8 8007C478 24A5A128 */  addiu      $a1, $a1, %lo(D_800CA128)
/* 737AC 8007C47C 0C007468 */  jal        osCreateMesgQueue
/* 737B0 8007C480 24060001 */   addiu     $a2, $zero, 0x1
/* 737B4 8007C484 02202821 */  addu       $a1, $s1, $zero
/* 737B8 8007C488 8E4447AC */  lw         $a0, 0x47AC($s2)
/* 737BC 8007C48C 0C0079EA */  jal        osScAddClient
/* 737C0 8007C490 02003021 */   addu      $a2, $s0, $zero
/* 737C4 8007C494 26500088 */  addiu      $s0, $s2, 0x88
/* 737C8 8007C498 02002021 */  addu       $a0, $s0, $zero
/* 737CC 8007C49C 24050002 */  addiu      $a1, $zero, 0x2
/* 737D0 8007C4A0 3C068008 */  lui        $a2, %hi(func_8007CEBC)
/* 737D4 8007C4A4 24C6CEBC */  addiu      $a2, $a2, %lo(func_8007CEBC)
/* 737D8 8007C4A8 26424238 */  addiu      $v0, $s2, 0x4238
/* 737DC 8007C4AC AFA20010 */  sw         $v0, 0x10($sp)
/* 737E0 8007C4B0 24020033 */  addiu      $v0, $zero, 0x33
/* 737E4 8007C4B4 02403821 */  addu       $a3, $s2, $zero
/* 737E8 8007C4B8 0C007CB4 */  jal        osCreateThread
/* 737EC 8007C4BC AFA20014 */   sw        $v0, 0x14($sp)
/* 737F0 8007C4C0 0C007D5C */  jal        osStartThread
/* 737F4 8007C4C4 02002021 */   addu      $a0, $s0, $zero
/* 737F8 8007C4C8 3C038008 */  lui        $v1, %hi(D_80087550)
/* 737FC 8007C4CC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 73800 8007C4D0 8FB20020 */  lw         $s2, 0x20($sp)
/* 73804 8007C4D4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 73808 8007C4D8 8FB00018 */  lw         $s0, 0x18($sp)
/* 7380C 8007C4DC 24020001 */  addiu      $v0, $zero, 0x1
/* 73810 8007C4E0 AC627550 */  sw         $v0, %lo(D_80087550)($v1)
/* 73814 8007C4E4 03E00008 */  jr         $ra
/* 73818 8007C4E8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007C4EC
/* 7381C 8007C4EC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 73820 8007C4F0 AFB40020 */  sw         $s4, 0x20($sp)
/* 73824 8007C4F4 0080A021 */  addu       $s4, $a0, $zero
/* 73828 8007C4F8 AFB10014 */  sw         $s1, 0x14($sp)
/* 7382C 8007C4FC 00008821 */  addu       $s1, $zero, $zero
/* 73830 8007C500 AFBF0028 */  sw         $ra, 0x28($sp)
/* 73834 8007C504 AFB50024 */  sw         $s5, 0x24($sp)
/* 73838 8007C508 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7383C 8007C50C AFB20018 */  sw         $s2, 0x18($sp)
/* 73840 8007C510 AFB00010 */  sw         $s0, 0x10($sp)
/* 73844 8007C514 8E820050 */  lw         $v0, 0x50($s4)
/* 73848 8007C518 24154268 */  addiu      $s5, $zero, 0x4268
/* 7384C 8007C51C 84440028 */  lh         $a0, 0x28($v0)
/* 73850 8007C520 8C42002C */  lw         $v0, 0x2C($v0)
/* 73854 8007C524 0040F809 */  jalr       $v0
/* 73858 8007C528 02842021 */   addu      $a0, $s4, $a0
/* 7385C 8007C52C 0C01F108 */  jal        func_8007C420
/* 73860 8007C530 02802021 */   addu      $a0, $s4, $zero
/* 73864 8007C534 0C01F0F8 */  jal        func_8007C3E0
/* 73868 8007C538 02802021 */   addu      $a0, $s4, $zero
/* 7386C 8007C53C 02809821 */  addu       $s3, $s4, $zero
/* 73870 8007C540 02809021 */  addu       $s2, $s4, $zero
.L8007C544:
/* 73874 8007C544 8E62005C */  lw         $v0, 0x5C($s3)
/* 73878 8007C548 10400007 */  beqz       $v0, .L8007C568
/* 7387C 8007C54C 02958021 */   addu      $s0, $s4, $s5
/* 73880 8007C550 02002021 */  addu       $a0, $s0, $zero
/* 73884 8007C554 02802821 */  addu       $a1, $s4, $zero
/* 73888 8007C558 0C01F55B */  jal        func_8007D56C
/* 7388C 8007C55C 02203021 */   addu      $a2, $s1, $zero
/* 73890 8007C560 AE500040 */  sw         $s0, 0x40($s2)
/* 73894 8007C564 26520004 */  addiu      $s2, $s2, 0x4
.L8007C568:
/* 73898 8007C568 26B50150 */  addiu      $s5, $s5, 0x150
/* 7389C 8007C56C 26310001 */  addiu      $s1, $s1, 0x1
/* 738A0 8007C570 2A220004 */  slti       $v0, $s1, 0x4
/* 738A4 8007C574 1440FFF3 */  bnez       $v0, .L8007C544
/* 738A8 8007C578 26730004 */   addiu     $s3, $s3, 0x4
/* 738AC 8007C57C 24020001 */  addiu      $v0, $zero, 0x1
/* 738B0 8007C580 AE820028 */  sw         $v0, 0x28($s4)
/* 738B4 8007C584 8FBF0028 */  lw         $ra, 0x28($sp)
/* 738B8 8007C588 8FB50024 */  lw         $s5, 0x24($sp)
/* 738BC 8007C58C 8FB40020 */  lw         $s4, 0x20($sp)
/* 738C0 8007C590 8FB3001C */  lw         $s3, 0x1C($sp)
/* 738C4 8007C594 8FB20018 */  lw         $s2, 0x18($sp)
/* 738C8 8007C598 8FB10014 */  lw         $s1, 0x14($sp)
/* 738CC 8007C59C 8FB00010 */  lw         $s0, 0x10($sp)
/* 738D0 8007C5A0 03E00008 */  jr         $ra
/* 738D4 8007C5A4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007C5A8
/* 738D8 8007C5A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 738DC 8007C5AC AFB50024 */  sw         $s5, 0x24($sp)
/* 738E0 8007C5B0 0080A821 */  addu       $s5, $a0, $zero
/* 738E4 8007C5B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 738E8 8007C5B8 00008821 */  addu       $s1, $zero, $zero
/* 738EC 8007C5BC AFB00010 */  sw         $s0, 0x10($sp)
/* 738F0 8007C5C0 02A08021 */  addu       $s0, $s5, $zero
/* 738F4 8007C5C4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 738F8 8007C5C8 AFB40020 */  sw         $s4, 0x20($sp)
/* 738FC 8007C5CC AFB3001C */  sw         $s3, 0x1C($sp)
/* 73900 8007C5D0 AFB20018 */  sw         $s2, 0x18($sp)
.L8007C5D4:
/* 73904 8007C5D4 8E030040 */  lw         $v1, 0x40($s0)
/* 73908 8007C5D8 50600008 */  beql       $v1, $zero, .L8007C5FC
/* 7390C 8007C5DC 26310001 */   addiu     $s1, $s1, 0x1
/* 73910 8007C5E0 8C620098 */  lw         $v0, 0x98($v1)
/* 73914 8007C5E4 84440028 */  lh         $a0, 0x28($v0)
/* 73918 8007C5E8 8C42002C */  lw         $v0, 0x2C($v0)
/* 7391C 8007C5EC 0040F809 */  jalr       $v0
/* 73920 8007C5F0 00642021 */   addu      $a0, $v1, $a0
/* 73924 8007C5F4 AE000040 */  sw         $zero, 0x40($s0)
/* 73928 8007C5F8 26310001 */  addiu      $s1, $s1, 0x1
.L8007C5FC:
/* 7392C 8007C5FC 2A220004 */  slti       $v0, $s1, 0x4
/* 73930 8007C600 1440FFF4 */  bnez       $v0, .L8007C5D4
/* 73934 8007C604 26100004 */   addiu     $s0, $s0, 0x4
/* 73938 8007C608 26A4005C */  addiu      $a0, $s5, 0x5C
/* 7393C 8007C60C 00002821 */  addu       $a1, $zero, $zero
/* 73940 8007C610 0C000697 */  jal        func_80001A5C
/* 73944 8007C614 24060010 */   addiu     $a2, $zero, 0x10
/* 73948 8007C618 AEA0007C */  sw         $zero, 0x7C($s5)
/* 7394C 8007C61C 0C01F0F8 */  jal        func_8007C3E0
/* 73950 8007C620 02A02021 */   addu      $a0, $s5, $zero
/* 73954 8007C624 00008821 */  addu       $s1, $zero, $zero
/* 73958 8007C628 24144268 */  addiu      $s4, $zero, 0x4268
/* 7395C 8007C62C 02A09021 */  addu       $s2, $s5, $zero
/* 73960 8007C630 02409821 */  addu       $s3, $s2, $zero
.L8007C634:
/* 73964 8007C634 8E42005C */  lw         $v0, 0x5C($s2)
/* 73968 8007C638 10400007 */  beqz       $v0, .L8007C658
/* 7396C 8007C63C 02B48021 */   addu      $s0, $s5, $s4
/* 73970 8007C640 02002021 */  addu       $a0, $s0, $zero
/* 73974 8007C644 02A02821 */  addu       $a1, $s5, $zero
/* 73978 8007C648 0C01F55B */  jal        func_8007D56C
/* 7397C 8007C64C 02203021 */   addu      $a2, $s1, $zero
/* 73980 8007C650 AE700040 */  sw         $s0, 0x40($s3)
/* 73984 8007C654 26730004 */  addiu      $s3, $s3, 0x4
.L8007C658:
/* 73988 8007C658 26940150 */  addiu      $s4, $s4, 0x150
/* 7398C 8007C65C 26310001 */  addiu      $s1, $s1, 0x1
/* 73990 8007C660 2A220004 */  slti       $v0, $s1, 0x4
/* 73994 8007C664 1440FFF3 */  bnez       $v0, .L8007C634
/* 73998 8007C668 26520004 */   addiu     $s2, $s2, 0x4
/* 7399C 8007C66C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 739A0 8007C670 8FB50024 */  lw         $s5, 0x24($sp)
/* 739A4 8007C674 8FB40020 */  lw         $s4, 0x20($sp)
/* 739A8 8007C678 8FB3001C */  lw         $s3, 0x1C($sp)
/* 739AC 8007C67C 8FB20018 */  lw         $s2, 0x18($sp)
/* 739B0 8007C680 8FB10014 */  lw         $s1, 0x14($sp)
/* 739B4 8007C684 8FB00010 */  lw         $s0, 0x10($sp)
/* 739B8 8007C688 24020001 */  addiu      $v0, $zero, 0x1
/* 739BC 8007C68C 03E00008 */  jr         $ra
/* 739C0 8007C690 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007C694
/* 739C4 8007C694 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 739C8 8007C698 AFB20018 */  sw         $s2, 0x18($sp)
/* 739CC 8007C69C 00809021 */  addu       $s2, $a0, $zero
/* 739D0 8007C6A0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 739D4 8007C6A4 AFB10014 */  sw         $s1, 0x14($sp)
/* 739D8 8007C6A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 739DC 8007C6AC 8E420028 */  lw         $v0, 0x28($s2)
/* 739E0 8007C6B0 10400016 */  beqz       $v0, .L8007C70C
/* 739E4 8007C6B4 00008821 */   addu      $s1, $zero, $zero
/* 739E8 8007C6B8 02408021 */  addu       $s0, $s2, $zero
.L8007C6BC:
/* 739EC 8007C6BC 8E030040 */  lw         $v1, 0x40($s0)
/* 739F0 8007C6C0 50600008 */  beql       $v1, $zero, .L8007C6E4
/* 739F4 8007C6C4 26310001 */   addiu     $s1, $s1, 0x1
/* 739F8 8007C6C8 8C620098 */  lw         $v0, 0x98($v1)
/* 739FC 8007C6CC 84440028 */  lh         $a0, 0x28($v0)
/* 73A00 8007C6D0 8C42002C */  lw         $v0, 0x2C($v0)
/* 73A04 8007C6D4 0040F809 */  jalr       $v0
/* 73A08 8007C6D8 00642021 */   addu      $a0, $v1, $a0
/* 73A0C 8007C6DC AE000040 */  sw         $zero, 0x40($s0)
/* 73A10 8007C6E0 26310001 */  addiu      $s1, $s1, 0x1
.L8007C6E4:
/* 73A14 8007C6E4 2A220004 */  slti       $v0, $s1, 0x4
/* 73A18 8007C6E8 1440FFF4 */  bnez       $v0, .L8007C6BC
/* 73A1C 8007C6EC 26100004 */   addiu     $s0, $s0, 0x4
/* 73A20 8007C6F0 0C007DA4 */  jal        osStopThread
/* 73A24 8007C6F4 26440088 */   addiu     $a0, $s2, 0x88
/* 73A28 8007C6F8 8E420050 */  lw         $v0, 0x50($s2)
/* 73A2C 8007C6FC 84440008 */  lh         $a0, 0x8($v0)
/* 73A30 8007C700 8C42000C */  lw         $v0, 0xC($v0)
/* 73A34 8007C704 0040F809 */  jalr       $v0
/* 73A38 8007C708 02442021 */   addu      $a0, $s2, $a0
.L8007C70C:
/* 73A3C 8007C70C 24020001 */  addiu      $v0, $zero, 0x1
/* 73A40 8007C710 8FBF001C */  lw         $ra, 0x1C($sp)
/* 73A44 8007C714 8FB20018 */  lw         $s2, 0x18($sp)
/* 73A48 8007C718 8FB10014 */  lw         $s1, 0x14($sp)
/* 73A4C 8007C71C 8FB00010 */  lw         $s0, 0x10($sp)
/* 73A50 8007C720 03E00008 */  jr         $ra
/* 73A54 8007C724 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007C728
/* 73A58 8007C728 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 73A5C 8007C72C AFB00010 */  sw         $s0, 0x10($sp)
/* 73A60 8007C730 00808021 */  addu       $s0, $a0, $zero
/* 73A64 8007C734 AFB60028 */  sw         $s6, 0x28($sp)
/* 73A68 8007C738 00A0B021 */  addu       $s6, $a1, $zero
/* 73A6C 8007C73C AFBF002C */  sw         $ra, 0x2C($sp)
/* 73A70 8007C740 AFB50024 */  sw         $s5, 0x24($sp)
/* 73A74 8007C744 AFB40020 */  sw         $s4, 0x20($sp)
/* 73A78 8007C748 AFB3001C */  sw         $s3, 0x1C($sp)
/* 73A7C 8007C74C AFB20018 */  sw         $s2, 0x18($sp)
/* 73A80 8007C750 AFB10014 */  sw         $s1, 0x14($sp)
/* 73A84 8007C754 8E020080 */  lw         $v0, 0x80($s0)
/* 73A88 8007C758 14400003 */  bnez       $v0, .L8007C768
/* 73A8C 8007C75C 0000A821 */   addu      $s5, $zero, $zero
/* 73A90 8007C760 0801F204 */  j          .L8007C810
/* 73A94 8007C764 02A01021 */   addu      $v0, $s5, $zero
.L8007C768:
/* 73A98 8007C768 0000A021 */  addu       $s4, $zero, $zero
/* 73A9C 8007C76C 02809821 */  addu       $s3, $s4, $zero
/* 73AA0 8007C770 24124268 */  addiu      $s2, $zero, 0x4268
/* 73AA4 8007C774 02808821 */  addu       $s1, $s4, $zero
.L8007C778:
/* 73AA8 8007C778 2A820004 */  slti       $v0, $s4, 0x4
/* 73AAC 8007C77C 10400019 */  beqz       $v0, .L8007C7E4
/* 73AB0 8007C780 02301021 */   addu      $v0, $s1, $s0
/* 73AB4 8007C784 8C42427C */  lw         $v0, 0x427C($v0)
/* 73AB8 8007C788 10400011 */  beqz       $v0, .L8007C7D0
/* 73ABC 8007C78C 02122821 */   addu      $a1, $s0, $s2
/* 73AC0 8007C790 8E030054 */  lw         $v1, 0x54($s0)
/* 73AC4 8007C794 00031040 */  sll        $v0, $v1, 1
/* 73AC8 8007C798 00431021 */  addu       $v0, $v0, $v1
/* 73ACC 8007C79C 000210C0 */  sll        $v0, $v0, 3
/* 73AD0 8007C7A0 24424238 */  addiu      $v0, $v0, 0x4238
/* 73AD4 8007C7A4 02021021 */  addu       $v0, $s0, $v0
/* 73AD8 8007C7A8 8CA30098 */  lw         $v1, 0x98($a1)
/* 73ADC 8007C7AC 00531021 */  addu       $v0, $v0, $s3
/* 73AE0 8007C7B0 ACA200A4 */  sw         $v0, 0xA4($a1)
/* 73AE4 8007C7B4 84640030 */  lh         $a0, 0x30($v1)
/* 73AE8 8007C7B8 8C620034 */  lw         $v0, 0x34($v1)
/* 73AEC 8007C7BC 00A42021 */  addu       $a0, $a1, $a0
/* 73AF0 8007C7C0 0040F809 */  jalr       $v0
/* 73AF4 8007C7C4 02C02821 */   addu      $a1, $s6, $zero
/* 73AF8 8007C7C8 54400001 */  bnel       $v0, $zero, .L8007C7D0
/* 73AFC 8007C7CC 0040A821 */   addu      $s5, $v0, $zero
.L8007C7D0:
/* 73B00 8007C7D0 26730006 */  addiu      $s3, $s3, 0x6
/* 73B04 8007C7D4 26520150 */  addiu      $s2, $s2, 0x150
/* 73B08 8007C7D8 26310150 */  addiu      $s1, $s1, 0x150
/* 73B0C 8007C7DC 0801F1DE */  j          .L8007C778
/* 73B10 8007C7E0 26940001 */   addiu     $s4, $s4, 0x1
.L8007C7E4:
/* 73B14 8007C7E4 16A00004 */  bnez       $s5, .L8007C7F8
/* 73B18 8007C7E8 00000000 */   nop
/* 73B1C 8007C7EC 8E02007C */  lw         $v0, 0x7C($s0)
/* 73B20 8007C7F0 54400001 */  bnel       $v0, $zero, .L8007C7F8
/* 73B24 8007C7F4 24150001 */   addiu     $s5, $zero, 0x1
.L8007C7F8:
/* 73B28 8007C7F8 8E030058 */  lw         $v1, 0x58($s0)
/* 73B2C 8007C7FC 02A01021 */  addu       $v0, $s5, $zero
/* 73B30 8007C800 AE000080 */  sw         $zero, 0x80($s0)
/* 73B34 8007C804 AE030054 */  sw         $v1, 0x54($s0)
/* 73B38 8007C808 2C630001 */  sltiu      $v1, $v1, 0x1
/* 73B3C 8007C80C AE030058 */  sw         $v1, 0x58($s0)
.L8007C810:
/* 73B40 8007C810 8FBF002C */  lw         $ra, 0x2C($sp)
/* 73B44 8007C814 8FB60028 */  lw         $s6, 0x28($sp)
/* 73B48 8007C818 8FB50024 */  lw         $s5, 0x24($sp)
/* 73B4C 8007C81C 8FB40020 */  lw         $s4, 0x20($sp)
/* 73B50 8007C820 8FB3001C */  lw         $s3, 0x1C($sp)
/* 73B54 8007C824 8FB20018 */  lw         $s2, 0x18($sp)
/* 73B58 8007C828 8FB10014 */  lw         $s1, 0x14($sp)
/* 73B5C 8007C82C 8FB00010 */  lw         $s0, 0x10($sp)
/* 73B60 8007C830 03E00008 */  jr         $ra
/* 73B64 8007C834 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007C838
/* 73B68 8007C838 8C82007C */  lw         $v0, 0x7C($a0)
/* 73B6C 8007C83C 03E00008 */  jr         $ra
/* 73B70 8007C840 00000000 */   nop

glabel func_8007C844
/* 73B74 8007C844 00052880 */  sll        $a1, $a1, 2
/* 73B78 8007C848 00852021 */  addu       $a0, $a0, $a1
/* 73B7C 8007C84C 9482006C */  lhu        $v0, 0x6C($a0)
/* 73B80 8007C850 03E00008 */  jr         $ra
/* 73B84 8007C854 30420001 */   andi      $v0, $v0, 0x1

glabel func_8007C858
/* 73B88 8007C858 00052880 */  sll        $a1, $a1, 2
/* 73B8C 8007C85C 00852021 */  addu       $a0, $a0, $a1
/* 73B90 8007C860 9482006C */  lhu        $v0, 0x6C($a0)
/* 73B94 8007C864 03E00008 */  jr         $ra
/* 73B98 8007C868 30420004 */   andi      $v0, $v0, 0x4

glabel func_8007C86C
/* 73B9C 8007C86C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 73BA0 8007C870 AFB00018 */  sw         $s0, 0x18($sp)
/* 73BA4 8007C874 00808021 */  addu       $s0, $a0, $zero
/* 73BA8 8007C878 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 73BAC 8007C87C 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 73BB0 8007C880 AFA50010 */  sw         $a1, 0x10($sp)
/* 73BB4 8007C884 3C058008 */  lui        $a1, %hi(D_80087390)
/* 73BB8 8007C888 24A57390 */  addiu      $a1, $a1, %lo(D_80087390)
/* 73BBC 8007C88C 24060001 */  addiu      $a2, $zero, 0x1
/* 73BC0 8007C890 27A20010 */  addiu      $v0, $sp, 0x10
/* 73BC4 8007C894 AFBF001C */  sw         $ra, 0x1C($sp)
/* 73BC8 8007C898 0C00776C */  jal        osSendMesg
/* 73BCC 8007C89C AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 73BD0 8007C8A0 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 73BD4 8007C8A4 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 73BD8 8007C8A8 00002821 */  addu       $a1, $zero, $zero
/* 73BDC 8007C8AC 0C007720 */  jal        osRecvMesg
/* 73BE0 8007C8B0 24060001 */   addiu     $a2, $zero, 0x1
/* 73BE4 8007C8B4 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 73BE8 8007C8B8 8FA20014 */  lw         $v0, 0x14($sp)
/* 73BEC 8007C8BC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 73BF0 8007C8C0 8FB00018 */  lw         $s0, 0x18($sp)
/* 73BF4 8007C8C4 03E00008 */  jr         $ra
/* 73BF8 8007C8C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007C8CC
/* 73BFC 8007C8CC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 73C00 8007C8D0 AFB00020 */  sw         $s0, 0x20($sp)
/* 73C04 8007C8D4 00808021 */  addu       $s0, $a0, $zero
/* 73C08 8007C8D8 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 73C0C 8007C8DC 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 73C10 8007C8E0 AFA50010 */  sw         $a1, 0x10($sp)
/* 73C14 8007C8E4 3C058008 */  lui        $a1, %hi(D_800873B0)
/* 73C18 8007C8E8 24A573B0 */  addiu      $a1, $a1, %lo(D_800873B0)
/* 73C1C 8007C8EC AFA60014 */  sw         $a2, 0x14($sp)
/* 73C20 8007C8F0 24060001 */  addiu      $a2, $zero, 0x1
/* 73C24 8007C8F4 27A20010 */  addiu      $v0, $sp, 0x10
/* 73C28 8007C8F8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 73C2C 8007C8FC 0C00776C */  jal        osSendMesg
/* 73C30 8007C900 AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 73C34 8007C904 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 73C38 8007C908 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 73C3C 8007C90C 00002821 */  addu       $a1, $zero, $zero
/* 73C40 8007C910 0C007720 */  jal        osRecvMesg
/* 73C44 8007C914 24060001 */   addiu     $a2, $zero, 0x1
/* 73C48 8007C918 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 73C4C 8007C91C 8FA20018 */  lw         $v0, 0x18($sp)
/* 73C50 8007C920 8FBF0024 */  lw         $ra, 0x24($sp)
/* 73C54 8007C924 8FB00020 */  lw         $s0, 0x20($sp)
/* 73C58 8007C928 03E00008 */  jr         $ra
/* 73C5C 8007C92C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007C930
/* 73C60 8007C930 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 73C64 8007C934 AFB00010 */  sw         $s0, 0x10($sp)
/* 73C68 8007C938 00808021 */  addu       $s0, $a0, $zero
/* 73C6C 8007C93C AFB10014 */  sw         $s1, 0x14($sp)
/* 73C70 8007C940 00A08821 */  addu       $s1, $a1, $zero
/* 73C74 8007C944 AFB3001C */  sw         $s3, 0x1C($sp)
/* 73C78 8007C948 00C09821 */  addu       $s3, $a2, $zero
/* 73C7C 8007C94C AFBF0020 */  sw         $ra, 0x20($sp)
/* 73C80 8007C950 0C01F233 */  jal        func_8007C8CC
/* 73C84 8007C954 AFB20018 */   sw        $s2, 0x18($sp)
/* 73C88 8007C958 00401821 */  addu       $v1, $v0, $zero
/* 73C8C 8007C95C 2412000B */  addiu      $s2, $zero, 0xB
/* 73C90 8007C960 54720009 */  bnel       $v1, $s2, .L8007C988
/* 73C94 8007C964 00601021 */   addu      $v0, $v1, $zero
/* 73C98 8007C968 02002021 */  addu       $a0, $s0, $zero
/* 73C9C 8007C96C 02202821 */  addu       $a1, $s1, $zero
/* 73CA0 8007C970 0C01F301 */  jal        func_8007CC04
/* 73CA4 8007C974 02603021 */   addu      $a2, $s3, $zero
/* 73CA8 8007C978 00401821 */  addu       $v1, $v0, $zero
/* 73CAC 8007C97C 10720002 */  beq        $v1, $s2, .L8007C988
/* 73CB0 8007C980 2402000A */   addiu     $v0, $zero, 0xA
/* 73CB4 8007C984 00601021 */  addu       $v0, $v1, $zero
.L8007C988:
/* 73CB8 8007C988 8FBF0020 */  lw         $ra, 0x20($sp)
/* 73CBC 8007C98C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 73CC0 8007C990 8FB20018 */  lw         $s2, 0x18($sp)
/* 73CC4 8007C994 8FB10014 */  lw         $s1, 0x14($sp)
/* 73CC8 8007C998 8FB00010 */  lw         $s0, 0x10($sp)
/* 73CCC 8007C99C 03E00008 */  jr         $ra
/* 73CD0 8007C9A0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007C9A4
/* 73CD4 8007C9A4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 73CD8 8007C9A8 AFB00030 */  sw         $s0, 0x30($sp)
/* 73CDC 8007C9AC 00808021 */  addu       $s0, $a0, $zero
/* 73CE0 8007C9B0 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 73CE4 8007C9B4 8FA20048 */  lw         $v0, 0x48($sp)
/* 73CE8 8007C9B8 8FA3004C */  lw         $v1, 0x4C($sp)
/* 73CEC 8007C9BC 8FA80050 */  lw         $t0, 0x50($sp)
/* 73CF0 8007C9C0 8FA90054 */  lw         $t1, 0x54($sp)
/* 73CF4 8007C9C4 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 73CF8 8007C9C8 AFA50010 */  sw         $a1, 0x10($sp)
/* 73CFC 8007C9CC 3C058008 */  lui        $a1, %hi(D_800873D0)
/* 73D00 8007C9D0 24A573D0 */  addiu      $a1, $a1, %lo(D_800873D0)
/* 73D04 8007C9D4 A7A60014 */  sh         $a2, 0x14($sp)
/* 73D08 8007C9D8 24060001 */  addiu      $a2, $zero, 0x1
/* 73D0C 8007C9DC AFBF0034 */  sw         $ra, 0x34($sp)
/* 73D10 8007C9E0 AFA70018 */  sw         $a3, 0x18($sp)
/* 73D14 8007C9E4 AFA2001C */  sw         $v0, 0x1C($sp)
/* 73D18 8007C9E8 27A20010 */  addiu      $v0, $sp, 0x10
/* 73D1C 8007C9EC AFA30020 */  sw         $v1, 0x20($sp)
/* 73D20 8007C9F0 AFA80024 */  sw         $t0, 0x24($sp)
/* 73D24 8007C9F4 AFA90028 */  sw         $t1, 0x28($sp)
/* 73D28 8007C9F8 0C00776C */  jal        osSendMesg
/* 73D2C 8007C9FC AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 73D30 8007CA00 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 73D34 8007CA04 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 73D38 8007CA08 00002821 */  addu       $a1, $zero, $zero
/* 73D3C 8007CA0C 0C007720 */  jal        osRecvMesg
/* 73D40 8007CA10 24060001 */   addiu     $a2, $zero, 0x1
/* 73D44 8007CA14 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 73D48 8007CA18 8FA2002C */  lw         $v0, 0x2C($sp)
/* 73D4C 8007CA1C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 73D50 8007CA20 8FB00030 */  lw         $s0, 0x30($sp)
/* 73D54 8007CA24 03E00008 */  jr         $ra
/* 73D58 8007CA28 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8007CA2C
/* 73D5C 8007CA2C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 73D60 8007CA30 AFB00030 */  sw         $s0, 0x30($sp)
/* 73D64 8007CA34 00808021 */  addu       $s0, $a0, $zero
/* 73D68 8007CA38 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 73D6C 8007CA3C 8FA20048 */  lw         $v0, 0x48($sp)
/* 73D70 8007CA40 8FA3004C */  lw         $v1, 0x4C($sp)
/* 73D74 8007CA44 8FA80050 */  lw         $t0, 0x50($sp)
/* 73D78 8007CA48 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 73D7C 8007CA4C AFA50010 */  sw         $a1, 0x10($sp)
/* 73D80 8007CA50 3C058008 */  lui        $a1, %hi(D_800873F0)
/* 73D84 8007CA54 24A573F0 */  addiu      $a1, $a1, %lo(D_800873F0)
/* 73D88 8007CA58 A7A60014 */  sh         $a2, 0x14($sp)
/* 73D8C 8007CA5C 24060001 */  addiu      $a2, $zero, 0x1
/* 73D90 8007CA60 AFBF0034 */  sw         $ra, 0x34($sp)
/* 73D94 8007CA64 AFA70018 */  sw         $a3, 0x18($sp)
/* 73D98 8007CA68 AFA2001C */  sw         $v0, 0x1C($sp)
/* 73D9C 8007CA6C 27A20010 */  addiu      $v0, $sp, 0x10
/* 73DA0 8007CA70 AFA30020 */  sw         $v1, 0x20($sp)
/* 73DA4 8007CA74 AFA80024 */  sw         $t0, 0x24($sp)
/* 73DA8 8007CA78 0C00776C */  jal        osSendMesg
/* 73DAC 8007CA7C AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 73DB0 8007CA80 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 73DB4 8007CA84 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 73DB8 8007CA88 00002821 */  addu       $a1, $zero, $zero
/* 73DBC 8007CA8C 0C007720 */  jal        osRecvMesg
/* 73DC0 8007CA90 24060001 */   addiu     $a2, $zero, 0x1
/* 73DC4 8007CA94 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 73DC8 8007CA98 8FA20028 */  lw         $v0, 0x28($sp)
/* 73DCC 8007CA9C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 73DD0 8007CAA0 8FB00030 */  lw         $s0, 0x30($sp)
/* 73DD4 8007CAA4 03E00008 */  jr         $ra
/* 73DD8 8007CAA8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8007CAAC
/* 73DDC 8007CAAC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 73DE0 8007CAB0 AFB00028 */  sw         $s0, 0x28($sp)
/* 73DE4 8007CAB4 00808021 */  addu       $s0, $a0, $zero
/* 73DE8 8007CAB8 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 73DEC 8007CABC 8FA20040 */  lw         $v0, 0x40($sp)
/* 73DF0 8007CAC0 8FA30044 */  lw         $v1, 0x44($sp)
/* 73DF4 8007CAC4 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 73DF8 8007CAC8 AFA50010 */  sw         $a1, 0x10($sp)
/* 73DFC 8007CACC 3C058008 */  lui        $a1, %hi(D_80087410)
/* 73E00 8007CAD0 24A57410 */  addiu      $a1, $a1, %lo(D_80087410)
/* 73E04 8007CAD4 A7A60014 */  sh         $a2, 0x14($sp)
/* 73E08 8007CAD8 24060001 */  addiu      $a2, $zero, 0x1
/* 73E0C 8007CADC AFBF002C */  sw         $ra, 0x2C($sp)
/* 73E10 8007CAE0 AFA70018 */  sw         $a3, 0x18($sp)
/* 73E14 8007CAE4 AFA2001C */  sw         $v0, 0x1C($sp)
/* 73E18 8007CAE8 27A20010 */  addiu      $v0, $sp, 0x10
/* 73E1C 8007CAEC AFA30020 */  sw         $v1, 0x20($sp)
/* 73E20 8007CAF0 0C00776C */  jal        osSendMesg
/* 73E24 8007CAF4 AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 73E28 8007CAF8 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 73E2C 8007CAFC 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 73E30 8007CB00 00002821 */  addu       $a1, $zero, $zero
/* 73E34 8007CB04 0C007720 */  jal        osRecvMesg
/* 73E38 8007CB08 24060001 */   addiu     $a2, $zero, 0x1
/* 73E3C 8007CB0C AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 73E40 8007CB10 8FA20024 */  lw         $v0, 0x24($sp)
/* 73E44 8007CB14 8FBF002C */  lw         $ra, 0x2C($sp)
/* 73E48 8007CB18 8FB00028 */  lw         $s0, 0x28($sp)
/* 73E4C 8007CB1C 03E00008 */  jr         $ra
/* 73E50 8007CB20 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007CB24
/* 73E54 8007CB24 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 73E58 8007CB28 AFB00030 */  sw         $s0, 0x30($sp)
/* 73E5C 8007CB2C 00808021 */  addu       $s0, $a0, $zero
/* 73E60 8007CB30 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 73E64 8007CB34 8FA20048 */  lw         $v0, 0x48($sp)
/* 73E68 8007CB38 8FA3004C */  lw         $v1, 0x4C($sp)
/* 73E6C 8007CB3C 8FA80050 */  lw         $t0, 0x50($sp)
/* 73E70 8007CB40 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 73E74 8007CB44 AFA50010 */  sw         $a1, 0x10($sp)
/* 73E78 8007CB48 3C058008 */  lui        $a1, %hi(D_80087430)
/* 73E7C 8007CB4C 24A57430 */  addiu      $a1, $a1, %lo(D_80087430)
/* 73E80 8007CB50 AFA60014 */  sw         $a2, 0x14($sp)
/* 73E84 8007CB54 24060001 */  addiu      $a2, $zero, 0x1
/* 73E88 8007CB58 AFBF0034 */  sw         $ra, 0x34($sp)
/* 73E8C 8007CB5C A3A70018 */  sb         $a3, 0x18($sp)
/* 73E90 8007CB60 AFA2001C */  sw         $v0, 0x1C($sp)
/* 73E94 8007CB64 27A20010 */  addiu      $v0, $sp, 0x10
/* 73E98 8007CB68 AFA30020 */  sw         $v1, 0x20($sp)
/* 73E9C 8007CB6C AFA80024 */  sw         $t0, 0x24($sp)
/* 73EA0 8007CB70 0C00776C */  jal        osSendMesg
/* 73EA4 8007CB74 AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 73EA8 8007CB78 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 73EAC 8007CB7C 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 73EB0 8007CB80 00002821 */  addu       $a1, $zero, $zero
/* 73EB4 8007CB84 0C007720 */  jal        osRecvMesg
/* 73EB8 8007CB88 24060001 */   addiu     $a2, $zero, 0x1
/* 73EBC 8007CB8C AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 73EC0 8007CB90 8FA20028 */  lw         $v0, 0x28($sp)
/* 73EC4 8007CB94 8FBF0034 */  lw         $ra, 0x34($sp)
/* 73EC8 8007CB98 8FB00030 */  lw         $s0, 0x30($sp)
/* 73ECC 8007CB9C 03E00008 */  jr         $ra
/* 73ED0 8007CBA0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8007CBA4
/* 73ED4 8007CBA4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 73ED8 8007CBA8 AFB00018 */  sw         $s0, 0x18($sp)
/* 73EDC 8007CBAC 00808021 */  addu       $s0, $a0, $zero
/* 73EE0 8007CBB0 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 73EE4 8007CBB4 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 73EE8 8007CBB8 AFA50010 */  sw         $a1, 0x10($sp)
/* 73EEC 8007CBBC 3C058008 */  lui        $a1, %hi(D_80087450)
/* 73EF0 8007CBC0 24A57450 */  addiu      $a1, $a1, %lo(D_80087450)
/* 73EF4 8007CBC4 24060001 */  addiu      $a2, $zero, 0x1
/* 73EF8 8007CBC8 27A20010 */  addiu      $v0, $sp, 0x10
/* 73EFC 8007CBCC AFBF001C */  sw         $ra, 0x1C($sp)
/* 73F00 8007CBD0 0C00776C */  jal        osSendMesg
/* 73F04 8007CBD4 AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 73F08 8007CBD8 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 73F0C 8007CBDC 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 73F10 8007CBE0 00002821 */  addu       $a1, $zero, $zero
/* 73F14 8007CBE4 0C007720 */  jal        osRecvMesg
/* 73F18 8007CBE8 24060001 */   addiu     $a2, $zero, 0x1
/* 73F1C 8007CBEC AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 73F20 8007CBF0 8FA20014 */  lw         $v0, 0x14($sp)
/* 73F24 8007CBF4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 73F28 8007CBF8 8FB00018 */  lw         $s0, 0x18($sp)
/* 73F2C 8007CBFC 03E00008 */  jr         $ra
/* 73F30 8007CC00 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007CC04
/* 73F34 8007CC04 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 73F38 8007CC08 AFB00020 */  sw         $s0, 0x20($sp)
/* 73F3C 8007CC0C 00808021 */  addu       $s0, $a0, $zero
/* 73F40 8007CC10 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 73F44 8007CC14 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 73F48 8007CC18 AFA50010 */  sw         $a1, 0x10($sp)
/* 73F4C 8007CC1C 3C058008 */  lui        $a1, %hi(D_80087470)
/* 73F50 8007CC20 24A57470 */  addiu      $a1, $a1, %lo(D_80087470)
/* 73F54 8007CC24 AFA60014 */  sw         $a2, 0x14($sp)
/* 73F58 8007CC28 24060001 */  addiu      $a2, $zero, 0x1
/* 73F5C 8007CC2C 27A20010 */  addiu      $v0, $sp, 0x10
/* 73F60 8007CC30 AFBF0024 */  sw         $ra, 0x24($sp)
/* 73F64 8007CC34 0C00776C */  jal        osSendMesg
/* 73F68 8007CC38 AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 73F6C 8007CC3C 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 73F70 8007CC40 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 73F74 8007CC44 00002821 */  addu       $a1, $zero, $zero
/* 73F78 8007CC48 0C007720 */  jal        osRecvMesg
/* 73F7C 8007CC4C 24060001 */   addiu     $a2, $zero, 0x1
/* 73F80 8007CC50 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 73F84 8007CC54 8FA20018 */  lw         $v0, 0x18($sp)
/* 73F88 8007CC58 8FBF0024 */  lw         $ra, 0x24($sp)
/* 73F8C 8007CC5C 8FB00020 */  lw         $s0, 0x20($sp)
/* 73F90 8007CC60 03E00008 */  jr         $ra
/* 73F94 8007CC64 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007CC68
/* 73F98 8007CC68 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 73F9C 8007CC6C AFB00020 */  sw         $s0, 0x20($sp)
/* 73FA0 8007CC70 00808021 */  addu       $s0, $a0, $zero
/* 73FA4 8007CC74 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 73FA8 8007CC78 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 73FAC 8007CC7C AFA50010 */  sw         $a1, 0x10($sp)
/* 73FB0 8007CC80 3C058008 */  lui        $a1, %hi(D_80087490)
/* 73FB4 8007CC84 24A57490 */  addiu      $a1, $a1, %lo(D_80087490)
/* 73FB8 8007CC88 24060001 */  addiu      $a2, $zero, 0x1
/* 73FBC 8007CC8C 27A20010 */  addiu      $v0, $sp, 0x10
/* 73FC0 8007CC90 AFBF0024 */  sw         $ra, 0x24($sp)
/* 73FC4 8007CC94 0C00776C */  jal        osSendMesg
/* 73FC8 8007CC98 AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 73FCC 8007CC9C 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 73FD0 8007CCA0 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 73FD4 8007CCA4 00002821 */  addu       $a1, $zero, $zero
/* 73FD8 8007CCA8 0C007720 */  jal        osRecvMesg
/* 73FDC 8007CCAC 24060001 */   addiu     $a2, $zero, 0x1
/* 73FE0 8007CCB0 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 73FE4 8007CCB4 8FA20018 */  lw         $v0, 0x18($sp)
/* 73FE8 8007CCB8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 73FEC 8007CCBC 8FB00020 */  lw         $s0, 0x20($sp)
/* 73FF0 8007CCC0 03E00008 */  jr         $ra
/* 73FF4 8007CCC4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007CCC8
/* 73FF8 8007CCC8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 73FFC 8007CCCC AFB00020 */  sw         $s0, 0x20($sp)
/* 74000 8007CCD0 00808021 */  addu       $s0, $a0, $zero
/* 74004 8007CCD4 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 74008 8007CCD8 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 7400C 8007CCDC AFA50010 */  sw         $a1, 0x10($sp)
/* 74010 8007CCE0 3C058008 */  lui        $a1, %hi(D_800874B0)
/* 74014 8007CCE4 24A574B0 */  addiu      $a1, $a1, %lo(D_800874B0)
/* 74018 8007CCE8 24060001 */  addiu      $a2, $zero, 0x1
/* 7401C 8007CCEC 27A20010 */  addiu      $v0, $sp, 0x10
/* 74020 8007CCF0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 74024 8007CCF4 0C00776C */  jal        osSendMesg
/* 74028 8007CCF8 AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 7402C 8007CCFC 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 74030 8007CD00 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 74034 8007CD04 00002821 */  addu       $a1, $zero, $zero
/* 74038 8007CD08 0C007720 */  jal        osRecvMesg
/* 7403C 8007CD0C 24060001 */   addiu     $a2, $zero, 0x1
/* 74040 8007CD10 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 74044 8007CD14 8FA20018 */  lw         $v0, 0x18($sp)
/* 74048 8007CD18 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7404C 8007CD1C 8FB00020 */  lw         $s0, 0x20($sp)
/* 74050 8007CD20 03E00008 */  jr         $ra
/* 74054 8007CD24 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007CD28
/* 74058 8007CD28 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7405C 8007CD2C AFB00020 */  sw         $s0, 0x20($sp)
/* 74060 8007CD30 00808021 */  addu       $s0, $a0, $zero
/* 74064 8007CD34 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 74068 8007CD38 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 7406C 8007CD3C AFA50010 */  sw         $a1, 0x10($sp)
/* 74070 8007CD40 3C058008 */  lui        $a1, %hi(D_800874D0)
/* 74074 8007CD44 24A574D0 */  addiu      $a1, $a1, %lo(D_800874D0)
/* 74078 8007CD48 24060001 */  addiu      $a2, $zero, 0x1
/* 7407C 8007CD4C 27A20010 */  addiu      $v0, $sp, 0x10
/* 74080 8007CD50 AFBF0024 */  sw         $ra, 0x24($sp)
/* 74084 8007CD54 0C00776C */  jal        osSendMesg
/* 74088 8007CD58 AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 7408C 8007CD5C 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 74090 8007CD60 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 74094 8007CD64 00002821 */  addu       $a1, $zero, $zero
/* 74098 8007CD68 0C007720 */  jal        osRecvMesg
/* 7409C 8007CD6C 24060001 */   addiu     $a2, $zero, 0x1
/* 740A0 8007CD70 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 740A4 8007CD74 8FA20018 */  lw         $v0, 0x18($sp)
/* 740A8 8007CD78 8FBF0024 */  lw         $ra, 0x24($sp)
/* 740AC 8007CD7C 8FB00020 */  lw         $s0, 0x20($sp)
/* 740B0 8007CD80 03E00008 */  jr         $ra
/* 740B4 8007CD84 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007CD88
/* 740B8 8007CD88 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 740BC 8007CD8C AFB00020 */  sw         $s0, 0x20($sp)
/* 740C0 8007CD90 00808021 */  addu       $s0, $a0, $zero
/* 740C4 8007CD94 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 740C8 8007CD98 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 740CC 8007CD9C AFA50010 */  sw         $a1, 0x10($sp)
/* 740D0 8007CDA0 3C058008 */  lui        $a1, %hi(D_800874F0)
/* 740D4 8007CDA4 24A574F0 */  addiu      $a1, $a1, %lo(D_800874F0)
/* 740D8 8007CDA8 AFA60014 */  sw         $a2, 0x14($sp)
/* 740DC 8007CDAC 24060001 */  addiu      $a2, $zero, 0x1
/* 740E0 8007CDB0 27A20010 */  addiu      $v0, $sp, 0x10
/* 740E4 8007CDB4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 740E8 8007CDB8 AFA70018 */  sw         $a3, 0x18($sp)
/* 740EC 8007CDBC 0C00776C */  jal        osSendMesg
/* 740F0 8007CDC0 AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 740F4 8007CDC4 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 740F8 8007CDC8 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 740FC 8007CDCC 00002821 */  addu       $a1, $zero, $zero
/* 74100 8007CDD0 0C007720 */  jal        osRecvMesg
/* 74104 8007CDD4 24060001 */   addiu     $a2, $zero, 0x1
/* 74108 8007CDD8 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 7410C 8007CDDC 8FA2001C */  lw         $v0, 0x1C($sp)
/* 74110 8007CDE0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 74114 8007CDE4 8FB00020 */  lw         $s0, 0x20($sp)
/* 74118 8007CDE8 03E00008 */  jr         $ra
/* 7411C 8007CDEC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007CDF0
/* 74120 8007CDF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 74124 8007CDF4 AFB00020 */  sw         $s0, 0x20($sp)
/* 74128 8007CDF8 00808021 */  addu       $s0, $a0, $zero
/* 7412C 8007CDFC 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 74130 8007CE00 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 74134 8007CE04 AFA50010 */  sw         $a1, 0x10($sp)
/* 74138 8007CE08 3C058008 */  lui        $a1, %hi(D_80087510)
/* 7413C 8007CE0C 24A57510 */  addiu      $a1, $a1, %lo(D_80087510)
/* 74140 8007CE10 AFA60014 */  sw         $a2, 0x14($sp)
/* 74144 8007CE14 24060001 */  addiu      $a2, $zero, 0x1
/* 74148 8007CE18 27A20010 */  addiu      $v0, $sp, 0x10
/* 7414C 8007CE1C AFBF0024 */  sw         $ra, 0x24($sp)
/* 74150 8007CE20 AFA70018 */  sw         $a3, 0x18($sp)
/* 74154 8007CE24 0C00776C */  jal        osSendMesg
/* 74158 8007CE28 AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 7415C 8007CE2C 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 74160 8007CE30 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 74164 8007CE34 00002821 */  addu       $a1, $zero, $zero
/* 74168 8007CE38 0C007720 */  jal        osRecvMesg
/* 7416C 8007CE3C 24060001 */   addiu     $a2, $zero, 0x1
/* 74170 8007CE40 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 74174 8007CE44 8FA2001C */  lw         $v0, 0x1C($sp)
/* 74178 8007CE48 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7417C 8007CE4C 8FB00020 */  lw         $s0, 0x20($sp)
/* 74180 8007CE50 03E00008 */  jr         $ra
/* 74184 8007CE54 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007CE58
/* 74188 8007CE58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7418C 8007CE5C AFB00020 */  sw         $s0, 0x20($sp)
/* 74190 8007CE60 00808021 */  addu       $s0, $a0, $zero
/* 74194 8007CE64 3C04800D */  lui        $a0, %hi(D_800CA0B0)
/* 74198 8007CE68 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 7419C 8007CE6C AFA50010 */  sw         $a1, 0x10($sp)
/* 741A0 8007CE70 3C058008 */  lui        $a1, %hi(D_80087530)
/* 741A4 8007CE74 24A57530 */  addiu      $a1, $a1, %lo(D_80087530)
/* 741A8 8007CE78 AFA60014 */  sw         $a2, 0x14($sp)
/* 741AC 8007CE7C 24060001 */  addiu      $a2, $zero, 0x1
/* 741B0 8007CE80 27A20010 */  addiu      $v0, $sp, 0x10
/* 741B4 8007CE84 AFBF0024 */  sw         $ra, 0x24($sp)
/* 741B8 8007CE88 0C00776C */  jal        osSendMesg
/* 741BC 8007CE8C AE0247A8 */   sw        $v0, 0x47A8($s0)
/* 741C0 8007CE90 3C04800D */  lui        $a0, %hi(D_800CA110)
/* 741C4 8007CE94 2484A110 */  addiu      $a0, $a0, %lo(D_800CA110)
/* 741C8 8007CE98 00002821 */  addu       $a1, $zero, $zero
/* 741CC 8007CE9C 0C007720 */  jal        osRecvMesg
/* 741D0 8007CEA0 24060001 */   addiu     $a2, $zero, 0x1
/* 741D4 8007CEA4 AE0047A8 */  sw         $zero, 0x47A8($s0)
/* 741D8 8007CEA8 8FA20018 */  lw         $v0, 0x18($sp)
/* 741DC 8007CEAC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 741E0 8007CEB0 8FB00020 */  lw         $s0, 0x20($sp)
/* 741E4 8007CEB4 03E00008 */  jr         $ra
/* 741E8 8007CEB8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007CEBC
/* 741EC 8007CEBC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 741F0 8007CEC0 AFB30034 */  sw         $s3, 0x34($sp)
/* 741F4 8007CEC4 00809821 */  addu       $s3, $a0, $zero
/* 741F8 8007CEC8 3C04800D */  lui        $a0, %hi(D_800CA150)
/* 741FC 8007CECC 2484A150 */  addiu      $a0, $a0, %lo(D_800CA150)
/* 74200 8007CED0 3C05800D */  lui        $a1, %hi(D_800CA168)
/* 74204 8007CED4 24A5A168 */  addiu      $a1, $a1, %lo(D_800CA168)
/* 74208 8007CED8 24060001 */  addiu      $a2, $zero, 0x1
/* 7420C 8007CEDC AFBF004C */  sw         $ra, 0x4C($sp)
/* 74210 8007CEE0 AFBE0048 */  sw         $fp, 0x48($sp)
/* 74214 8007CEE4 AFB70044 */  sw         $s7, 0x44($sp)
/* 74218 8007CEE8 AFB60040 */  sw         $s6, 0x40($sp)
/* 7421C 8007CEEC AFB5003C */  sw         $s5, 0x3C($sp)
/* 74220 8007CEF0 AFB40038 */  sw         $s4, 0x38($sp)
/* 74224 8007CEF4 AFB20030 */  sw         $s2, 0x30($sp)
/* 74228 8007CEF8 AFB1002C */  sw         $s1, 0x2C($sp)
/* 7422C 8007CEFC 0C007468 */  jal        osCreateMesgQueue
/* 74230 8007CF00 AFB00028 */   sw        $s0, 0x28($sp)
/* 74234 8007CF04 3C12800D */  lui        $s2, %hi(D_800CA130)
/* 74238 8007CF08 2650A130 */  addiu      $s0, $s2, %lo(D_800CA130)
/* 7423C 8007CF0C 02002021 */  addu       $a0, $s0, $zero
/* 74240 8007CF10 3C05800D */  lui        $a1, %hi(D_800CA148)
/* 74244 8007CF14 24A5A148 */  addiu      $a1, $a1, %lo(D_800CA148)
/* 74248 8007CF18 0C007468 */  jal        osCreateMesgQueue
/* 7424C 8007CF1C 24060001 */   addiu     $a2, $zero, 0x1
/* 74250 8007CF20 24040005 */  addiu      $a0, $zero, 0x5
/* 74254 8007CF24 02002821 */  addu       $a1, $s0, $zero
/* 74258 8007CF28 0C0077B8 */  jal        osSetEventMesg
/* 7425C 8007CF2C 24060001 */   addiu     $a2, $zero, 0x1
/* 74260 8007CF30 02002021 */  addu       $a0, $s0, $zero
/* 74264 8007CF34 27A50020 */  addiu      $a1, $sp, 0x20
/* 74268 8007CF38 2671006C */  addiu      $s1, $s3, 0x6C
/* 7426C 8007CF3C 0C006AEC */  jal        osContInit
/* 74270 8007CF40 02203021 */   addu      $a2, $s1, $zero
/* 74274 8007CF44 0240B821 */  addu       $s7, $s2, $zero
/* 74278 8007CF48 0200B021 */  addu       $s6, $s0, $zero
/* 7427C 8007CF4C 0220F021 */  addu       $fp, $s1, $zero
/* 74280 8007CF50 3C15800D */  lui        $s5, (0x800D0000 >> 16)
/* 74284 8007CF54 3C148008 */  lui        $s4, (0x80080000 >> 16)
glabel L8007CF58
/* 74288 8007CF58 3C04800D */  lui        $a0, %hi(D_800CA0B0)
.L8007CF5C:
/* 7428C 8007CF5C 2484A0B0 */  addiu      $a0, $a0, %lo(D_800CA0B0)
/* 74290 8007CF60 27A50024 */  addiu      $a1, $sp, 0x24
/* 74294 8007CF64 0C007720 */  jal        osRecvMesg
/* 74298 8007CF68 24060001 */   addiu     $a2, $zero, 0x1
/* 7429C 8007CF6C 8FA20024 */  lw         $v0, 0x24($sp)
/* 742A0 8007CF70 94420000 */  lhu        $v0, 0x0($v0)
/* 742A4 8007CF74 2442FFFF */  addiu      $v0, $v0, -0x1
/* 742A8 8007CF78 00021400 */  sll        $v0, $v0, 16
/* 742AC 8007CF7C 00021C03 */  sra        $v1, $v0, 16
/* 742B0 8007CF80 2C620017 */  sltiu      $v0, $v1, 0x17
/* 742B4 8007CF84 1040FFF5 */  beqz       $v0, .L8007CF5C
/* 742B8 8007CF88 3C04800D */   lui       $a0, %hi(D_800CA0B0)
/* 742BC 8007CF8C 3C028004 */  lui        $v0, %hi(jtbl_80040190)
/* 742C0 8007CF90 24420190 */  addiu      $v0, $v0, %lo(jtbl_80040190)
/* 742C4 8007CF94 00031880 */  sll        $v1, $v1, 2
/* 742C8 8007CF98 00621821 */  addu       $v1, $v1, $v0
/* 742CC 8007CF9C 8C620000 */  lw         $v0, 0x0($v1)
/* 742D0 8007CFA0 00400008 */  jr         $v0
/* 742D4 8007CFA4 00000000 */   nop
glabel L8007CFA8
/* 742D8 8007CFA8 8E620028 */  lw         $v0, 0x28($s3)
/* 742DC 8007CFAC 5040FFEB */  beql       $v0, $zero, .L8007CF5C
/* 742E0 8007CFB0 3C04800D */   lui       $a0, %hi(D_800CA0B0)
/* 742E4 8007CFB4 0C006A4C */  jal        osContStartQuery
/* 742E8 8007CFB8 02C02021 */   addu      $a0, $s6, $zero
/* 742EC 8007CFBC 02C02021 */  addu       $a0, $s6, $zero
/* 742F0 8007CFC0 00002821 */  addu       $a1, $zero, $zero
/* 742F4 8007CFC4 0C007720 */  jal        osRecvMesg
/* 742F8 8007CFC8 24060001 */   addiu     $a2, $zero, 0x1
/* 742FC 8007CFCC 0C006A6C */  jal        osContGetQuery
/* 74300 8007CFD0 2664006C */   addiu     $a0, $s3, 0x6C
/* 74304 8007CFD4 AE60007C */  sw         $zero, 0x7C($s3)
/* 74308 8007CFD8 00008821 */  addu       $s1, $zero, $zero
/* 7430C 8007CFDC 02602021 */  addu       $a0, $s3, $zero
.L8007CFE0:
/* 74310 8007CFE0 9482006C */  lhu        $v0, 0x6C($a0)
/* 74314 8007CFE4 30420005 */  andi       $v0, $v0, 0x5
/* 74318 8007CFE8 1040000A */  beqz       $v0, .L8007D014
/* 7431C 8007CFEC 26310001 */   addiu     $s1, $s1, 0x1
/* 74320 8007CFF0 9082006F */  lbu        $v0, 0x6F($a0)
/* 74324 8007CFF4 8C83005C */  lw         $v1, 0x5C($a0)
/* 74328 8007CFF8 3042000C */  andi       $v0, $v0, 0xC
/* 7432C 8007CFFC 2C420001 */  sltiu      $v0, $v0, 0x1
/* 74330 8007D000 10620004 */  beq        $v1, $v0, .L8007D014
/* 74334 8007D004 00000000 */   nop
/* 74338 8007D008 8E62007C */  lw         $v0, 0x7C($s3)
/* 7433C 8007D00C 24420001 */  addiu      $v0, $v0, 0x1
/* 74340 8007D010 AE62007C */  sw         $v0, 0x7C($s3)
.L8007D014:
/* 74344 8007D014 2A220004 */  slti       $v0, $s1, 0x4
/* 74348 8007D018 1440FFF1 */  bnez       $v0, .L8007CFE0
/* 7434C 8007D01C 24840004 */   addiu     $a0, $a0, 0x4
/* 74350 8007D020 0C006A74 */  jal        osContStartReadData
/* 74354 8007D024 02C02021 */   addu      $a0, $s6, $zero
/* 74358 8007D028 02C02021 */  addu       $a0, $s6, $zero
/* 7435C 8007D02C 00002821 */  addu       $a1, $zero, $zero
/* 74360 8007D030 0C007720 */  jal        osRecvMesg
/* 74364 8007D034 24060001 */   addiu     $a2, $zero, 0x1
/* 74368 8007D038 8E620058 */  lw         $v0, 0x58($s3)
/* 7436C 8007D03C 00022040 */  sll        $a0, $v0, 1
/* 74370 8007D040 00822021 */  addu       $a0, $a0, $v0
/* 74374 8007D044 000420C0 */  sll        $a0, $a0, 3
/* 74378 8007D048 24844238 */  addiu      $a0, $a0, 0x4238
/* 7437C 8007D04C 0C006A96 */  jal        osContGetReadData
/* 74380 8007D050 02642021 */   addu      $a0, $s3, $a0
/* 74384 8007D054 24020001 */  addiu      $v0, $zero, 0x1
/* 74388 8007D058 0801F3D6 */  j          L8007CF58
/* 7438C 8007D05C AE620080 */   sw        $v0, 0x80($s3)

glabel L8007D060
/* 74390 8007D060 00008821 */  addu       $s1, $zero, $zero
/* 74394 8007D064 02609021 */  addu       $s2, $s3, $zero
.L8007D068:
/* 74398 8007D068 2A220004 */  slti       $v0, $s1, 0x4
/* 7439C 8007D06C 1040FFBB */  beqz       $v0, .L8007CF5C
/* 743A0 8007D070 3C04800D */   lui       $a0, (0x800D0000 >> 16)
/* 743A4 8007D074 8E500040 */  lw         $s0, 0x40($s2)
/* 743A8 8007D078 52000012 */  beql       $s0, $zero, .L8007D0C4
/* 743AC 8007D07C 26520004 */   addiu     $s2, $s2, 0x4
/* 743B0 8007D080 8E0200C0 */  lw         $v0, 0xC0($s0)
/* 743B4 8007D084 1040000E */  beqz       $v0, .L8007D0C0
/* 743B8 8007D088 26E4A130 */   addiu     $a0, $s7, -0x5ED0
/* 743BC 8007D08C 8E060088 */  lw         $a2, 0x88($s0)
/* 743C0 8007D090 261000E8 */  addiu      $s0, $s0, 0xE8
/* 743C4 8007D094 0C008251 */  jal        osMotorInit
/* 743C8 8007D098 02002821 */   addu      $a1, $s0, $zero
/* 743CC 8007D09C 02002021 */  addu       $a0, $s0, $zero
/* 743D0 8007D0A0 0C008200 */  jal        __osMotorAccess
/* 743D4 8007D0A4 00002821 */   addu      $a1, $zero, $zero
/* 743D8 8007D0A8 02002021 */  addu       $a0, $s0, $zero
/* 743DC 8007D0AC 0C008200 */  jal        __osMotorAccess
/* 743E0 8007D0B0 00002821 */   addu      $a1, $zero, $zero
/* 743E4 8007D0B4 02002021 */  addu       $a0, $s0, $zero
/* 743E8 8007D0B8 0C008200 */  jal        __osMotorAccess
/* 743EC 8007D0BC 00002821 */   addu      $a1, $zero, $zero
.L8007D0C0:
/* 743F0 8007D0C0 26520004 */  addiu      $s2, $s2, 0x4
.L8007D0C4:
/* 743F4 8007D0C4 0801F41A */  j          .L8007D068
/* 743F8 8007D0C8 26310001 */   addiu     $s1, $s1, 0x1

glabel func_8007D0CC
/* 743FC 8007D0CC 03C02021 */  addu       $a0, $fp, $zero
/* 74400 8007D0D0 00002821 */  addu       $a1, $zero, $zero
/* 74404 8007D0D4 0C000697 */  jal        func_80001A5C
/* 74408 8007D0D8 24060010 */   addiu     $a2, $zero, 0x10
/* 7440C 8007D0DC 0C006A4C */  jal        osContStartQuery
/* 74410 8007D0E0 02C02021 */   addu      $a0, $s6, $zero
/* 74414 8007D0E4 02C02021 */  addu       $a0, $s6, $zero
/* 74418 8007D0E8 00002821 */  addu       $a1, $zero, $zero
/* 7441C 8007D0EC 0C007720 */  jal        osRecvMesg
/* 74420 8007D0F0 24060001 */   addiu     $a2, $zero, 0x1
/* 74424 8007D0F4 0C006A6C */  jal        osContGetQuery
/* 74428 8007D0F8 03C02021 */   addu      $a0, $fp, $zero
/* 7442C 8007D0FC AE600034 */  sw         $zero, 0x34($s3)
/* 74430 8007D100 00008821 */  addu       $s1, $zero, $zero
/* 74434 8007D104 02601821 */  addu       $v1, $s3, $zero
.L8007D108:
/* 74438 8007D108 9462006C */  lhu        $v0, 0x6C($v1)
/* 7443C 8007D10C 30420005 */  andi       $v0, $v0, 0x5
/* 74440 8007D110 14400003 */  bnez       $v0, .L8007D120
/* 74444 8007D114 00000000 */   nop
/* 74448 8007D118 0801F450 */  j          .L8007D140
/* 7444C 8007D11C AC60005C */   sw        $zero, 0x5C($v1)
.L8007D120:
/* 74450 8007D120 9062006F */  lbu        $v0, 0x6F($v1)
/* 74454 8007D124 3042000C */  andi       $v0, $v0, 0xC
/* 74458 8007D128 2C420001 */  sltiu      $v0, $v0, 0x1
/* 7445C 8007D12C 10400004 */  beqz       $v0, .L8007D140
/* 74460 8007D130 AC62005C */   sw        $v0, 0x5C($v1)
/* 74464 8007D134 8E620034 */  lw         $v0, 0x34($s3)
/* 74468 8007D138 24420001 */  addiu      $v0, $v0, 0x1
/* 7446C 8007D13C AE620034 */  sw         $v0, 0x34($s3)
.L8007D140:
/* 74470 8007D140 26310001 */  addiu      $s1, $s1, 0x1
/* 74474 8007D144 2A220004 */  slti       $v0, $s1, 0x4
/* 74478 8007D148 1440FFEF */  bnez       $v0, .L8007D108
/* 7447C 8007D14C 24630004 */   addiu     $v1, $v1, 0x4
/* 74480 8007D150 26A4A110 */  addiu      $a0, $s5, -0x5EF0
/* 74484 8007D154 26857370 */  addiu      $a1, $s4, 0x7370
/* 74488 8007D158 0C00776C */  jal        osSendMesg
/* 7448C 8007D15C 24060001 */   addiu     $a2, $zero, 0x1
/* 74490 8007D160 0801F3D7 */  j          .L8007CF5C
/* 74494 8007D164 3C04800D */   lui       $a0, (0x800D0000 >> 16)

glabel func_8007D168
/* 74498 8007D168 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 7449C 8007D16C 8E050000 */  lw         $a1, 0x0($s0)
/* 744A0 8007D170 0C00869C */  jal        osPfsIsPlug
/* 744A4 8007D174 26E4A130 */   addiu     $a0, $s7, -0x5ED0
/* 744A8 8007D178 0801F4AF */  j          .L8007D2BC
/* 744AC 8007D17C 26A4A110 */   addiu     $a0, $s5, -0x5EF0
/* 744B0 8007D180 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 744B4 8007D184 8E050000 */  lw         $a1, 0x0($s0)
/* 744B8 8007D188 8E060004 */  lw         $a2, 0x4($s0)
/* 744BC 8007D18C 0C0087D8 */  jal        osPfsInitPak
/* 744C0 8007D190 26E4A130 */   addiu     $a0, $s7, -0x5ED0
/* 744C4 8007D194 0801F4F1 */  j          .L8007D3C4
/* 744C8 8007D198 26A4A110 */   addiu     $a0, $s5, -0x5EF0
/* 744CC 8007D19C 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 744D0 8007D1A0 8E020010 */  lw         $v0, 0x10($s0)
/* 744D4 8007D1A4 96050004 */  lhu        $a1, 0x4($s0)
/* 744D8 8007D1A8 AFA20010 */  sw         $v0, 0x10($sp)
/* 744DC 8007D1AC 8E020014 */  lw         $v0, 0x14($s0)
/* 744E0 8007D1B0 AFA20014 */  sw         $v0, 0x14($sp)
/* 744E4 8007D1B4 8E020018 */  lw         $v0, 0x18($s0)
/* 744E8 8007D1B8 AFA20018 */  sw         $v0, 0x18($sp)
/* 744EC 8007D1BC 8E040000 */  lw         $a0, 0x0($s0)
/* 744F0 8007D1C0 8E060008 */  lw         $a2, 0x8($s0)
/* 744F4 8007D1C4 8E07000C */  lw         $a3, 0xC($s0)
/* 744F8 8007D1C8 0C008320 */  jal        osPfsAllocateFile
/* 744FC 8007D1CC 00000000 */   nop
/* 74500 8007D1D0 26A4A110 */  addiu      $a0, $s5, -0x5EF0
/* 74504 8007D1D4 26857370 */  addiu      $a1, $s4, 0x7370
/* 74508 8007D1D8 24060001 */  addiu      $a2, $zero, 0x1
/* 7450C 8007D1DC 0C00776C */  jal        osSendMesg
/* 74510 8007D1E0 AE02001C */   sw        $v0, 0x1C($s0)
/* 74514 8007D1E4 0801F3D7 */  j          .L8007CF5C
/* 74518 8007D1E8 3C04800D */   lui       $a0, (0x800D0000 >> 16)
/* 7451C 8007D1EC 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 74520 8007D1F0 8E020010 */  lw         $v0, 0x10($s0)
/* 74524 8007D1F4 96050004 */  lhu        $a1, 0x4($s0)
/* 74528 8007D1F8 AFA20010 */  sw         $v0, 0x10($sp)
/* 7452C 8007D1FC 8E020014 */  lw         $v0, 0x14($s0)
/* 74530 8007D200 AFA20014 */  sw         $v0, 0x14($sp)
/* 74534 8007D204 8E040000 */  lw         $a0, 0x0($s0)
/* 74538 8007D208 8E060008 */  lw         $a2, 0x8($s0)
/* 7453C 8007D20C 8E07000C */  lw         $a3, 0xC($s0)
/* 74540 8007D210 0C00862C */  jal        osPfsFindFile
/* 74544 8007D214 00000000 */   nop
/* 74548 8007D218 0801F4A4 */  j          .L8007D290
/* 7454C 8007D21C 26A4A110 */   addiu     $a0, $s5, -0x5EF0
/* 74550 8007D220 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 74554 8007D224 8E020010 */  lw         $v0, 0x10($s0)
/* 74558 8007D228 96050004 */  lhu        $a1, 0x4($s0)
/* 7455C 8007D22C AFA20010 */  sw         $v0, 0x10($sp)
/* 74560 8007D230 8E040000 */  lw         $a0, 0x0($s0)
/* 74564 8007D234 8E060008 */  lw         $a2, 0x8($s0)
/* 74568 8007D238 8E07000C */  lw         $a3, 0xC($s0)
/* 7456C 8007D23C 0C00842C */  jal        osPfsDeleteFile
/* 74570 8007D240 00000000 */   nop
/* 74574 8007D244 26A4A110 */  addiu      $a0, $s5, -0x5EF0
/* 74578 8007D248 26857370 */  addiu      $a1, $s4, 0x7370
/* 7457C 8007D24C 24060001 */  addiu      $a2, $zero, 0x1
/* 74580 8007D250 0C00776C */  jal        osSendMesg
/* 74584 8007D254 AE020014 */   sw        $v0, 0x14($s0)
/* 74588 8007D258 0801F3D7 */  j          .L8007CF5C
/* 7458C 8007D25C 3C04800D */   lui       $a0, (0x800D0000 >> 16)
/* 74590 8007D260 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 74594 8007D264 8E020010 */  lw         $v0, 0x10($s0)
/* 74598 8007D268 92060008 */  lbu        $a2, 0x8($s0)
/* 7459C 8007D26C AFA20010 */  sw         $v0, 0x10($sp)
/* 745A0 8007D270 8E020014 */  lw         $v0, 0x14($s0)
/* 745A4 8007D274 AFA20014 */  sw         $v0, 0x14($sp)
/* 745A8 8007D278 8E040000 */  lw         $a0, 0x0($s0)
/* 745AC 8007D27C 8E050004 */  lw         $a1, 0x4($s0)
/* 745B0 8007D280 8E07000C */  lw         $a3, 0xC($s0)
/* 745B4 8007D284 0C0084B4 */  jal        osPfsReadWriteFile
/* 745B8 8007D288 00000000 */   nop
/* 745BC 8007D28C 26A4A110 */  addiu      $a0, $s5, -0x5EF0
.L8007D290:
/* 745C0 8007D290 26857370 */  addiu      $a1, $s4, 0x7370
/* 745C4 8007D294 24060001 */  addiu      $a2, $zero, 0x1
/* 745C8 8007D298 0C00776C */  jal        osSendMesg
/* 745CC 8007D29C AE020018 */   sw        $v0, 0x18($s0)
/* 745D0 8007D2A0 0801F3D7 */  j          .L8007CF5C
/* 745D4 8007D2A4 3C04800D */   lui       $a0, (0x800D0000 >> 16)
/* 745D8 8007D2A8 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 745DC 8007D2AC 8E040000 */  lw         $a0, 0x0($s0)
/* 745E0 8007D2B0 0C008A98 */  jal        osPfsRepairId
/* 745E4 8007D2B4 00000000 */   nop
/* 745E8 8007D2B8 26A4A110 */  addiu      $a0, $s5, -0x5EF0
.L8007D2BC:
/* 745EC 8007D2BC 26857370 */  addiu      $a1, $s4, 0x7370
/* 745F0 8007D2C0 24060001 */  addiu      $a2, $zero, 0x1
/* 745F4 8007D2C4 0C00776C */  jal        osSendMesg
/* 745F8 8007D2C8 AE020004 */   sw        $v0, 0x4($s0)
/* 745FC 8007D2CC 0801F3D7 */  j          .L8007CF5C
/* 74600 8007D2D0 3C04800D */   lui       $a0, (0x800D0000 >> 16)
/* 74604 8007D2D4 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 74608 8007D2D8 8E050000 */  lw         $a1, 0x0($s0)
/* 7460C 8007D2DC 8E060004 */  lw         $a2, 0x4($s0)
/* 74610 8007D2E0 0C008251 */  jal        osMotorInit
/* 74614 8007D2E4 26E4A130 */   addiu     $a0, $s7, -0x5ED0
/* 74618 8007D2E8 0801F4F1 */  j          .L8007D3C4
/* 7461C 8007D2EC 26A4A110 */   addiu     $a0, $s5, -0x5EF0
/* 74620 8007D2F0 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 74624 8007D2F4 8E040000 */  lw         $a0, 0x0($s0)
/* 74628 8007D2F8 0C008200 */  jal        __osMotorAccess
/* 7462C 8007D2FC 24050001 */   addiu     $a1, $zero, 0x1
/* 74630 8007D300 0801F4F1 */  j          .L8007D3C4
/* 74634 8007D304 26A4A110 */   addiu     $a0, $s5, -0x5EF0
/* 74638 8007D308 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 7463C 8007D30C 8E040000 */  lw         $a0, 0x0($s0)
/* 74640 8007D310 0C008200 */  jal        __osMotorAccess
/* 74644 8007D314 00002821 */   addu      $a1, $zero, $zero
/* 74648 8007D318 0801F4F1 */  j          .L8007D3C4
/* 7464C 8007D31C 26A4A110 */   addiu     $a0, $s5, -0x5EF0
/* 74650 8007D320 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 74654 8007D324 8E040000 */  lw         $a0, 0x0($s0)
/* 74658 8007D328 0C008200 */  jal        __osMotorAccess
/* 7465C 8007D32C 00002821 */   addu      $a1, $zero, $zero
/* 74660 8007D330 8E040000 */  lw         $a0, 0x0($s0)
/* 74664 8007D334 00002821 */  addu       $a1, $zero, $zero
/* 74668 8007D338 0C008200 */  jal        __osMotorAccess
/* 7466C 8007D33C AE020008 */   sw        $v0, 0x8($s0)
/* 74670 8007D340 8E040000 */  lw         $a0, 0x0($s0)
/* 74674 8007D344 00002821 */  addu       $a1, $zero, $zero
/* 74678 8007D348 0C008200 */  jal        __osMotorAccess
/* 7467C 8007D34C AE020008 */   sw        $v0, 0x8($s0)
/* 74680 8007D350 0801F4F1 */  j          .L8007D3C4
/* 74684 8007D354 26A4A110 */   addiu     $a0, $s5, -0x5EF0
/* 74688 8007D358 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 7468C 8007D35C 8E040000 */  lw         $a0, 0x0($s0)
/* 74690 8007D360 8E050004 */  lw         $a1, 0x4($s0)
/* 74694 8007D364 8E060008 */  lw         $a2, 0x8($s0)
/* 74698 8007D368 0C008798 */  jal        osPfsNumFiles
/* 7469C 8007D36C 00000000 */   nop
/* 746A0 8007D370 0801F4E5 */  j          .L8007D394
/* 746A4 8007D374 26A4A110 */   addiu     $a0, $s5, -0x5EF0
/* 746A8 8007D378 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 746AC 8007D37C 8E040000 */  lw         $a0, 0x0($s0)
/* 746B0 8007D380 8E050004 */  lw         $a1, 0x4($s0)
/* 746B4 8007D384 8E060008 */  lw         $a2, 0x8($s0)
/* 746B8 8007D388 0C0085C4 */  jal        osPfsFileState
/* 746BC 8007D38C 00000000 */   nop
/* 746C0 8007D390 26A4A110 */  addiu      $a0, $s5, -0x5EF0
.L8007D394:
/* 746C4 8007D394 26857370 */  addiu      $a1, $s4, 0x7370
/* 746C8 8007D398 24060001 */  addiu      $a2, $zero, 0x1
/* 746CC 8007D39C 0C00776C */  jal        osSendMesg
/* 746D0 8007D3A0 AE02000C */   sw        $v0, 0xC($s0)
/* 746D4 8007D3A4 0801F3D7 */  j          .L8007CF5C
/* 746D8 8007D3A8 3C04800D */   lui       $a0, (0x800D0000 >> 16)
/* 746DC 8007D3AC 8E7047A8 */  lw         $s0, 0x47A8($s3)
/* 746E0 8007D3B0 8E040000 */  lw         $a0, 0x0($s0)
/* 746E4 8007D3B4 8E050004 */  lw         $a1, 0x4($s0)
/* 746E8 8007D3B8 0C008754 */  jal        osPfsFreeBlocks
/* 746EC 8007D3BC 00000000 */   nop
/* 746F0 8007D3C0 26A4A110 */  addiu      $a0, $s5, -0x5EF0
.L8007D3C4:
/* 746F4 8007D3C4 26857370 */  addiu      $a1, $s4, 0x7370
/* 746F8 8007D3C8 24060001 */  addiu      $a2, $zero, 0x1
/* 746FC 8007D3CC 0C00776C */  jal        osSendMesg
/* 74700 8007D3D0 AE020008 */   sw        $v0, 0x8($s0)
/* 74704 8007D3D4 0801F3D7 */  j          .L8007CF5C
/* 74708 8007D3D8 3C04800D */   lui       $a0, (0x800D0000 >> 16)

glabel func_8007D3DC
/* 7470C 8007D3DC 00051080 */  sll        $v0, $a1, 2
/* 74710 8007D3E0 00451021 */  addu       $v0, $v0, $a1
/* 74714 8007D3E4 00021080 */  sll        $v0, $v0, 2
/* 74718 8007D3E8 00451021 */  addu       $v0, $v0, $a1
/* 7471C 8007D3EC 00021100 */  sll        $v0, $v0, 4
/* 74720 8007D3F0 24424268 */  addiu      $v0, $v0, 0x4268
/* 74724 8007D3F4 03E00008 */  jr         $ra
/* 74728 8007D3F8 00821021 */   addu      $v0, $a0, $v0

glabel func_8007D3FC
/* 7472C 8007D3FC 00051080 */  sll        $v0, $a1, 2
/* 74730 8007D400 00451021 */  addu       $v0, $v0, $a1
/* 74734 8007D404 00021080 */  sll        $v0, $v0, 2
/* 74738 8007D408 00451021 */  addu       $v0, $v0, $a1
/* 7473C 8007D40C 00021100 */  sll        $v0, $v0, 4
/* 74740 8007D410 24424268 */  addiu      $v0, $v0, 0x4268
/* 74744 8007D414 03E00008 */  jr         $ra
/* 74748 8007D418 00821021 */   addu      $v0, $a0, $v0

glabel func_8007D41C
/* 7474C 8007D41C 03E00008 */  jr         $ra
/* 74750 8007D420 AC8547AC */   sw        $a1, 0x47AC($a0)
