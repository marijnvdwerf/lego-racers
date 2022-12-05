.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80002880
/* 3480 80002880 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3484 80002884 AFB00018 */  sw         $s0, 0x18($sp)
/* 3488 80002888 00808021 */  addu       $s0, $a0, $zero
/* 348C 8000288C AFB1001C */  sw         $s1, 0x1C($sp)
/* 3490 80002890 26110078 */  addiu      $s1, $s0, 0x78
/* 3494 80002894 02202021 */  addu       $a0, $s1, $zero
/* 3498 80002898 26050090 */  addiu      $a1, $s0, 0x90
/* 349C 8000289C 24060008 */  addiu      $a2, $zero, 0x8
/* 34A0 800028A0 24020001 */  addiu      $v0, $zero, 0x1
/* 34A4 800028A4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 34A8 800028A8 AFB30024 */  sw         $s3, 0x24($sp)
/* 34AC 800028AC AFB20020 */  sw         $s2, 0x20($sp)
/* 34B0 800028B0 AE020678 */  sw         $v0, 0x678($s0)
/* 34B4 800028B4 AE020000 */  sw         $v0, 0x0($s0)
/* 34B8 800028B8 24020003 */  addiu      $v0, $zero, 0x3
/* 34BC 800028BC AE00066C */  sw         $zero, 0x66C($s0)
/* 34C0 800028C0 AE000670 */  sw         $zero, 0x670($s0)
/* 34C4 800028C4 AE000674 */  sw         $zero, 0x674($s0)
/* 34C8 800028C8 AE000668 */  sw         $zero, 0x668($s0)
/* 34CC 800028CC 0C007468 */  jal        osCreateMesgQueue
/* 34D0 800028D0 AE020004 */   sw        $v0, 0x4($s0)
/* 34D4 800028D4 261300B0 */  addiu      $s3, $s0, 0xB0
/* 34D8 800028D8 02602021 */  addu       $a0, $s3, $zero
/* 34DC 800028DC 260500C8 */  addiu      $a1, $s0, 0xC8
/* 34E0 800028E0 0C007468 */  jal        osCreateMesgQueue
/* 34E4 800028E4 24060008 */   addiu     $a2, $zero, 0x8
/* 34E8 800028E8 261200E8 */  addiu      $s2, $s0, 0xE8
/* 34EC 800028EC 02402021 */  addu       $a0, $s2, $zero
/* 34F0 800028F0 26050100 */  addiu      $a1, $s0, 0x100
/* 34F4 800028F4 0C007468 */  jal        osCreateMesgQueue
/* 34F8 800028F8 24060008 */   addiu     $a2, $zero, 0x8
/* 34FC 800028FC 26040040 */  addiu      $a0, $s0, 0x40
/* 3500 80002900 26050058 */  addiu      $a1, $s0, 0x58
/* 3504 80002904 0C007468 */  jal        osCreateMesgQueue
/* 3508 80002908 24060008 */   addiu     $a2, $zero, 0x8
/* 350C 8000290C 26040008 */  addiu      $a0, $s0, 0x8
/* 3510 80002910 26050020 */  addiu      $a1, $s0, 0x20
/* 3514 80002914 0C007468 */  jal        osCreateMesgQueue
/* 3518 80002918 24060008 */   addiu     $a2, $zero, 0x8
/* 351C 8000291C 26040120 */  addiu      $a0, $s0, 0x120
/* 3520 80002920 26050138 */  addiu      $a1, $s0, 0x138
/* 3524 80002924 0C007468 */  jal        osCreateMesgQueue
/* 3528 80002928 24060008 */   addiu     $a2, $zero, 0x8
/* 352C 8000292C 02202021 */  addu       $a0, $s1, $zero
/* 3530 80002930 2405029A */  addiu      $a1, $zero, 0x29A
/* 3534 80002934 0C008088 */  jal        osViSetEvent
/* 3538 80002938 24060001 */   addiu     $a2, $zero, 0x1
/* 353C 8000293C 24040004 */  addiu      $a0, $zero, 0x4
/* 3540 80002940 02602821 */  addu       $a1, $s3, $zero
/* 3544 80002944 0C0077B8 */  jal        osSetEventMesg
/* 3548 80002948 2406029B */   addiu     $a2, $zero, 0x29B
/* 354C 8000294C 24040009 */  addiu      $a0, $zero, 0x9
/* 3550 80002950 02402821 */  addu       $a1, $s2, $zero
/* 3554 80002954 0C0077B8 */  jal        osSetEventMesg
/* 3558 80002958 2406029C */   addiu     $a2, $zero, 0x29C
/* 355C 8000295C 2404000E */  addiu      $a0, $zero, 0xE
/* 3560 80002960 02202821 */  addu       $a1, $s1, $zero
/* 3564 80002964 0C0077B8 */  jal        osSetEventMesg
/* 3568 80002968 2406029D */   addiu     $a2, $zero, 0x29D
/* 356C 8000296C 26110158 */  addiu      $s1, $s0, 0x158
/* 3570 80002970 02202021 */  addu       $a0, $s1, $zero
/* 3574 80002974 24050013 */  addiu      $a1, $zero, 0x13
/* 3578 80002978 3C068000 */  lui        $a2, %hi(func_80002A40)
/* 357C 8000297C 24C62A40 */  addiu      $a2, $a2, %lo(func_80002A40)
/* 3580 80002980 02003821 */  addu       $a3, $s0, $zero
/* 3584 80002984 3C028003 */  lui        $v0, %hi(D_800292B0)
/* 3588 80002988 244292B0 */  addiu      $v0, $v0, %lo(D_800292B0)
/* 358C 8000298C AFA20010 */  sw         $v0, 0x10($sp)
/* 3590 80002990 24020078 */  addiu      $v0, $zero, 0x78
/* 3594 80002994 0C007CB4 */  jal        osCreateThread
/* 3598 80002998 AFA20014 */   sw        $v0, 0x14($sp)
/* 359C 8000299C 0C007D5C */  jal        osStartThread
/* 35A0 800029A0 02202021 */   addu      $a0, $s1, $zero
/* 35A4 800029A4 26110308 */  addiu      $s1, $s0, 0x308
/* 35A8 800029A8 02202021 */  addu       $a0, $s1, $zero
/* 35AC 800029AC 24050012 */  addiu      $a1, $zero, 0x12
/* 35B0 800029B0 3C068000 */  lui        $a2, %hi(func_80002CB4)
/* 35B4 800029B4 24C62CB4 */  addiu      $a2, $a2, %lo(func_80002CB4)
/* 35B8 800029B8 02003821 */  addu       $a3, $s0, $zero
/* 35BC 800029BC 3C028003 */  lui        $v0, %hi(D_8002B2B0)
/* 35C0 800029C0 2442B2B0 */  addiu      $v0, $v0, %lo(D_8002B2B0)
/* 35C4 800029C4 AFA20010 */  sw         $v0, 0x10($sp)
/* 35C8 800029C8 2402006E */  addiu      $v0, $zero, 0x6E
/* 35CC 800029CC 0C007CB4 */  jal        osCreateThread
/* 35D0 800029D0 AFA20014 */   sw        $v0, 0x14($sp)
/* 35D4 800029D4 0C007D5C */  jal        osStartThread
/* 35D8 800029D8 02202021 */   addu      $a0, $s1, $zero
/* 35DC 800029DC 261104B8 */  addiu      $s1, $s0, 0x4B8
/* 35E0 800029E0 02202021 */  addu       $a0, $s1, $zero
/* 35E4 800029E4 24050011 */  addiu      $a1, $zero, 0x11
/* 35E8 800029E8 3C068000 */  lui        $a2, %hi(func_80002EB4)
/* 35EC 800029EC 24C62EB4 */  addiu      $a2, $a2, %lo(func_80002EB4)
/* 35F0 800029F0 02003821 */  addu       $a3, $s0, $zero
/* 35F4 800029F4 3C028003 */  lui        $v0, %hi(D_8002D2B0)
/* 35F8 800029F8 2442D2B0 */  addiu      $v0, $v0, %lo(D_8002D2B0)
/* 35FC 800029FC AFA20010 */  sw         $v0, 0x10($sp)
/* 3600 80002A00 24020064 */  addiu      $v0, $zero, 0x64
/* 3604 80002A04 0C007CB4 */  jal        osCreateThread
/* 3608 80002A08 AFA20014 */   sw        $v0, 0x14($sp)
/* 360C 80002A0C 0C007D5C */  jal        osStartThread
/* 3610 80002A10 02202021 */   addu      $a0, $s1, $zero
/* 3614 80002A14 8FBF0028 */  lw         $ra, 0x28($sp)
/* 3618 80002A18 8FB30024 */  lw         $s3, 0x24($sp)
/* 361C 80002A1C 8FB20020 */  lw         $s2, 0x20($sp)
/* 3620 80002A20 8FB1001C */  lw         $s1, 0x1C($sp)
/* 3624 80002A24 8FB00018 */  lw         $s0, 0x18($sp)
/* 3628 80002A28 03E00008 */  jr         $ra
/* 362C 80002A2C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80002A30
/* 3630 80002A30 03E00008 */  jr         $ra
/* 3634 80002A34 24820008 */   addiu     $v0, $a0, 0x8

glabel func_80002A38
/* 3638 80002A38 03E00008 */  jr         $ra
/* 363C 80002A3C 24820040 */   addiu     $v0, $a0, 0x40

glabel func_80002A40
/* 3640 80002A40 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3644 80002A44 AFB00018 */  sw         $s0, 0x18($sp)
/* 3648 80002A48 00808021 */  addu       $s0, $a0, $zero
/* 364C 80002A4C AFB5002C */  sw         $s5, 0x2C($sp)
/* 3650 80002A50 3C158002 */  lui        $s5, %hi(D_800272A0)
/* 3654 80002A54 AFB40028 */  sw         $s4, 0x28($sp)
/* 3658 80002A58 3C148002 */  lui        $s4, %hi(D_800272A8)
/* 365C 80002A5C AFB60030 */  sw         $s6, 0x30($sp)
/* 3660 80002A60 3C168002 */  lui        $s6, %hi(D_800272AC)
/* 3664 80002A64 AFB30024 */  sw         $s3, 0x24($sp)
/* 3668 80002A68 3C138002 */  lui        $s3, %hi(D_800272A4)
/* 366C 80002A6C 3C028004 */  lui        $v0, %hi(D_800389B0)
/* 3670 80002A70 AFB20020 */  sw         $s2, 0x20($sp)
/* 3674 80002A74 245289B0 */  addiu      $s2, $v0, %lo(D_800389B0)
/* 3678 80002A78 AFB1001C */  sw         $s1, 0x1C($sp)
/* 367C 80002A7C 3C118004 */  lui        $s1, %hi(D_80038E10)
/* 3680 80002A80 AFBF0034 */  sw         $ra, 0x34($sp)
/* 3684 80002A84 AFA00010 */  sw         $zero, 0x10($sp)
/* 3688 80002A88 26040078 */  addiu      $a0, $s0, 0x78
.L80002A8C:
/* 368C 80002A8C 27A50010 */  addiu      $a1, $sp, 0x10
.L80002A90:
/* 3690 80002A90 0C007720 */  jal        osRecvMesg
/* 3694 80002A94 24060001 */   addiu     $a2, $zero, 0x1
/* 3698 80002A98 8EA272A0 */  lw         $v0, %lo(D_800272A0)($s5)
/* 369C 80002A9C 8FA30010 */  lw         $v1, 0x10($sp)
/* 36A0 80002AA0 24420001 */  addiu      $v0, $v0, 0x1
/* 36A4 80002AA4 AEA272A0 */  sw         $v0, %lo(D_800272A0)($s5)
/* 36A8 80002AA8 2402029A */  addiu      $v0, $zero, 0x29A
/* 36AC 80002AAC 10620005 */  beq        $v1, $v0, .L80002AC4
/* 36B0 80002AB0 2402029D */   addiu     $v0, $zero, 0x29D
/* 36B4 80002AB4 1062002D */  beq        $v1, $v0, .L80002B6C
/* 36B8 80002AB8 26040078 */   addiu     $a0, $s0, 0x78
/* 36BC 80002ABC 08000AA4 */  j          .L80002A90
/* 36C0 80002AC0 27A50010 */   addiu     $a1, $sp, 0x10
.L80002AC4:
/* 36C4 80002AC4 02002021 */  addu       $a0, $s0, $zero
/* 36C8 80002AC8 0C000B1A */  jal        func_80002C68
/* 36CC 80002ACC 02002821 */   addu      $a1, $s0, $zero
/* 36D0 80002AD0 8E8272A8 */  lw         $v0, %lo(D_800272A8)($s4)
/* 36D4 80002AD4 1440FFED */  bnez       $v0, .L80002A8C
/* 36D8 80002AD8 26040078 */   addiu     $a0, $s0, 0x78
/* 36DC 80002ADC 8E6372A4 */  lw         $v1, %lo(D_800272A4)($s3)
/* 36E0 80002AE0 24020001 */  addiu      $v0, $zero, 0x1
/* 36E4 80002AE4 AE8272A8 */  sw         $v0, %lo(D_800272A8)($s4)
/* 36E8 80002AE8 000310C0 */  sll        $v0, $v1, 3
/* 36EC 80002AEC 00431021 */  addu       $v0, $v0, $v1
/* 36F0 80002AF0 00021080 */  sll        $v0, $v0, 2
/* 36F4 80002AF4 00431023 */  subu       $v0, $v0, $v1
/* 36F8 80002AF8 000210C0 */  sll        $v0, $v0, 3
/* 36FC 80002AFC 00521021 */  addu       $v0, $v0, $s2
/* 3700 80002B00 24630001 */  addiu      $v1, $v1, 0x1
/* 3704 80002B04 30630003 */  andi       $v1, $v1, 0x3
/* 3708 80002B08 AEC272AC */  sw         $v0, %lo(D_800272AC)($s6)
/* 370C 80002B0C 000310C0 */  sll        $v0, $v1, 3
/* 3710 80002B10 00431021 */  addu       $v0, $v0, $v1
/* 3714 80002B14 00021080 */  sll        $v0, $v0, 2
/* 3718 80002B18 00431023 */  subu       $v0, $v0, $v1
/* 371C 80002B1C 000210C0 */  sll        $v0, $v0, 3
/* 3720 80002B20 00521021 */  addu       $v0, $v0, $s2
/* 3724 80002B24 AE6372A4 */  sw         $v1, %lo(D_800272A4)($s3)
/* 3728 80002B28 AE228E10 */  sw         $v0, %lo(D_80038E10)($s1)
/* 372C 80002B2C AC400004 */  sw         $zero, 0x4($v0)
/* 3730 80002B30 0C007DF8 */  jal        osGetTime
/* 3734 80002B34 AC400000 */   sw        $zero, 0x0($v0)
/* 3738 80002B38 00022180 */  sll        $a0, $v0, 6
/* 373C 80002B3C 00033682 */  srl        $a2, $v1, 26
/* 3740 80002B40 00862025 */  or         $a0, $a0, $a2
/* 3744 80002B44 00032980 */  sll        $a1, $v1, 6
/* 3748 80002B48 24060000 */  addiu      $a2, $zero, 0x0
/* 374C 80002B4C 24070BB8 */  addiu      $a3, $zero, 0xBB8
/* 3750 80002B50 0C009198 */  jal        func_80024660
/* 3754 80002B54 00000000 */   nop
/* 3758 80002B58 8E248E10 */  lw         $a0, %lo(D_80038E10)($s1)
/* 375C 80002B5C AC820008 */  sw         $v0, 0x8($a0)
/* 3760 80002B60 AC83000C */  sw         $v1, 0xC($a0)
/* 3764 80002B64 08000AA3 */  j          .L80002A8C
/* 3768 80002B68 26040078 */   addiu     $a0, $s0, 0x78
.L80002B6C:
/* 376C 80002B6C 02002021 */  addu       $a0, $s0, $zero
/* 3770 80002B70 0C000B1A */  jal        func_80002C68
/* 3774 80002B74 26050004 */   addiu     $a1, $s0, 0x4
/* 3778 80002B78 08000AA3 */  j          .L80002A8C
/* 377C 80002B7C 26040078 */   addiu     $a0, $s0, 0x78

glabel func_80002B80
/* 3780 80002B80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3784 80002B84 AFB20018 */  sw         $s2, 0x18($sp)
/* 3788 80002B88 00809021 */  addu       $s2, $a0, $zero
/* 378C 80002B8C AFB00010 */  sw         $s0, 0x10($sp)
/* 3790 80002B90 00A08021 */  addu       $s0, $a1, $zero
/* 3794 80002B94 AFB10014 */  sw         $s1, 0x14($sp)
/* 3798 80002B98 00C08821 */  addu       $s1, $a2, $zero
/* 379C 80002B9C AFBF001C */  sw         $ra, 0x1C($sp)
/* 37A0 80002BA0 0C0056A8 */  jal        osSetIntMask
/* 37A4 80002BA4 24040001 */   addiu     $a0, $zero, 0x1
/* 37A8 80002BA8 AE110004 */  sw         $s1, 0x4($s0)
/* 37AC 80002BAC 8E430668 */  lw         $v1, 0x668($s2)
/* 37B0 80002BB0 00402021 */  addu       $a0, $v0, $zero
/* 37B4 80002BB4 AE030000 */  sw         $v1, 0x0($s0)
/* 37B8 80002BB8 0C0056A8 */  jal        osSetIntMask
/* 37BC 80002BBC AE500668 */   sw        $s0, 0x668($s2)
/* 37C0 80002BC0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 37C4 80002BC4 8FB20018 */  lw         $s2, 0x18($sp)
/* 37C8 80002BC8 8FB10014 */  lw         $s1, 0x14($sp)
/* 37CC 80002BCC 8FB00010 */  lw         $s0, 0x10($sp)
/* 37D0 80002BD0 03E00008 */  jr         $ra
/* 37D4 80002BD4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80002BD8
/* 37D8 80002BD8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 37DC 80002BDC AFB20018 */  sw         $s2, 0x18($sp)
/* 37E0 80002BE0 00809021 */  addu       $s2, $a0, $zero
/* 37E4 80002BE4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 37E8 80002BE8 00A09821 */  addu       $s3, $a1, $zero
/* 37EC 80002BEC AFB10014 */  sw         $s1, 0x14($sp)
/* 37F0 80002BF0 00008821 */  addu       $s1, $zero, $zero
/* 37F4 80002BF4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 37F8 80002BF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 37FC 80002BFC 8E500668 */  lw         $s0, 0x668($s2)
/* 3800 80002C00 0C0056A8 */  jal        osSetIntMask
/* 3804 80002C04 24040001 */   addiu     $a0, $zero, 0x1
/* 3808 80002C08 1200000E */  beqz       $s0, .L80002C44
/* 380C 80002C0C 00402021 */   addu      $a0, $v0, $zero
.L80002C10:
/* 3810 80002C10 56130009 */  bnel       $s0, $s3, .L80002C38
/* 3814 80002C14 02008821 */   addu      $s1, $s0, $zero
/* 3818 80002C18 12200004 */  beqz       $s1, .L80002C2C
/* 381C 80002C1C 00000000 */   nop
/* 3820 80002C20 8E020000 */  lw         $v0, 0x0($s0)
/* 3824 80002C24 08000B11 */  j          .L80002C44
/* 3828 80002C28 AE220000 */   sw        $v0, 0x0($s1)
.L80002C2C:
/* 382C 80002C2C 8E020000 */  lw         $v0, 0x0($s0)
/* 3830 80002C30 08000B11 */  j          .L80002C44
/* 3834 80002C34 AE420668 */   sw        $v0, 0x668($s2)
.L80002C38:
/* 3838 80002C38 8E100000 */  lw         $s0, 0x0($s0)
/* 383C 80002C3C 1600FFF4 */  bnez       $s0, .L80002C10
/* 3840 80002C40 00000000 */   nop
.L80002C44:
/* 3844 80002C44 0C0056A8 */  jal        osSetIntMask
/* 3848 80002C48 00000000 */   nop
/* 384C 80002C4C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 3850 80002C50 8FB3001C */  lw         $s3, 0x1C($sp)
/* 3854 80002C54 8FB20018 */  lw         $s2, 0x18($sp)
/* 3858 80002C58 8FB10014 */  lw         $s1, 0x14($sp)
/* 385C 80002C5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3860 80002C60 03E00008 */  jr         $ra
/* 3864 80002C64 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80002C68
/* 3868 80002C68 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 386C 80002C6C AFBF0018 */  sw         $ra, 0x18($sp)
/* 3870 80002C70 AFB10014 */  sw         $s1, 0x14($sp)
/* 3874 80002C74 AFB00010 */  sw         $s0, 0x10($sp)
/* 3878 80002C78 8C900668 */  lw         $s0, 0x668($a0)
/* 387C 80002C7C 12000008 */  beqz       $s0, .L80002CA0
/* 3880 80002C80 00A08821 */   addu      $s1, $a1, $zero
/* 3884 80002C84 02202821 */  addu       $a1, $s1, $zero
.L80002C88:
/* 3888 80002C88 8E040004 */  lw         $a0, 0x4($s0)
/* 388C 80002C8C 0C00776C */  jal        osSendMesg
/* 3890 80002C90 00003021 */   addu      $a2, $zero, $zero
/* 3894 80002C94 8E100000 */  lw         $s0, 0x0($s0)
/* 3898 80002C98 1600FFFB */  bnez       $s0, .L80002C88
/* 389C 80002C9C 02202821 */   addu      $a1, $s1, $zero
.L80002CA0:
/* 38A0 80002CA0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 38A4 80002CA4 8FB10014 */  lw         $s1, 0x14($sp)
/* 38A8 80002CA8 8FB00010 */  lw         $s0, 0x10($sp)
/* 38AC 80002CAC 03E00008 */  jr         $ra
/* 38B0 80002CB0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80002CB4
/* 38B4 80002CB4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 38B8 80002CB8 AFB40028 */  sw         $s4, 0x28($sp)
/* 38BC 80002CBC 0080A021 */  addu       $s4, $a0, $zero
/* 38C0 80002CC0 AFB60030 */  sw         $s6, 0x30($sp)
/* 38C4 80002CC4 3C168004 */  lui        $s6, %hi(D_80038E10)
/* 38C8 80002CC8 AFBE0038 */  sw         $fp, 0x38($sp)
/* 38CC 80002CCC 269E00B0 */  addiu      $fp, $s4, 0xB0
/* 38D0 80002CD0 AFB5002C */  sw         $s5, 0x2C($sp)
/* 38D4 80002CD4 27B50014 */  addiu      $s5, $sp, 0x14
/* 38D8 80002CD8 AFBF003C */  sw         $ra, 0x3C($sp)
/* 38DC 80002CDC AFB70034 */  sw         $s7, 0x34($sp)
/* 38E0 80002CE0 AFB30024 */  sw         $s3, 0x24($sp)
/* 38E4 80002CE4 AFB20020 */  sw         $s2, 0x20($sp)
/* 38E8 80002CE8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 38EC 80002CEC AFB00018 */  sw         $s0, 0x18($sp)
/* 38F0 80002CF0 AFA00014 */  sw         $zero, 0x14($sp)
/* 38F4 80002CF4 AFA00010 */  sw         $zero, 0x10($sp)
/* 38F8 80002CF8 26840008 */  addiu      $a0, $s4, 0x8
.L80002CFC:
/* 38FC 80002CFC 27A50010 */  addiu      $a1, $sp, 0x10
/* 3900 80002D00 0C007720 */  jal        osRecvMesg
/* 3904 80002D04 24060001 */   addiu     $a2, $zero, 0x1
/* 3908 80002D08 0C006A40 */  jal        osWritebackDCacheAll
/* 390C 80002D0C 00009021 */   addu      $s2, $zero, $zero
/* 3910 80002D10 8E93066C */  lw         $s3, 0x66C($s4)
/* 3914 80002D14 1260000B */  beqz       $s3, .L80002D44
/* 3918 80002D18 00000000 */   nop
/* 391C 80002D1C 0C007978 */  jal        osSpTaskYield
/* 3920 80002D20 24120002 */   addiu     $s2, $zero, 0x2
/* 3924 80002D24 268400B0 */  addiu      $a0, $s4, 0xB0
/* 3928 80002D28 27A50014 */  addiu      $a1, $sp, 0x14
/* 392C 80002D2C 0C007720 */  jal        osRecvMesg
/* 3930 80002D30 24060001 */   addiu     $a2, $zero, 0x1
/* 3934 80002D34 0C007980 */  jal        osSpTaskYielded
/* 3938 80002D38 26640010 */   addiu     $a0, $s3, 0x10
/* 393C 80002D3C 54400001 */  bnel       $v0, $zero, .L80002D44
/* 3940 80002D40 24120001 */   addiu     $s2, $zero, 0x1
.L80002D44:
/* 3944 80002D44 8EC28E10 */  lw         $v0, %lo(D_80038E10)($s6)
/* 3948 80002D48 8C430004 */  lw         $v1, 0x4($v0)
/* 394C 80002D4C 2C620004 */  sltiu      $v0, $v1, 0x4
/* 3950 80002D50 10400015 */  beqz       $v0, .L80002DA8
/* 3954 80002D54 00000000 */   nop
/* 3958 80002D58 0C007DF8 */  jal        osGetTime
/* 395C 80002D5C 0060B821 */   addu      $s7, $v1, $zero
/* 3960 80002D60 00022180 */  sll        $a0, $v0, 6
/* 3964 80002D64 00033682 */  srl        $a2, $v1, 26
/* 3968 80002D68 00862025 */  or         $a0, $a0, $a2
/* 396C 80002D6C 00032980 */  sll        $a1, $v1, 6
/* 3970 80002D70 24060000 */  addiu      $a2, $zero, 0x0
/* 3974 80002D74 24070BB8 */  addiu      $a3, $zero, 0xBB8
/* 3978 80002D78 8ED18E10 */  lw         $s1, %lo(D_80038E10)($s6)
/* 397C 80002D7C 001780C0 */  sll        $s0, $s7, 3
/* 3980 80002D80 0C009198 */  jal        func_80024660
/* 3984 80002D84 02308021 */   addu      $s0, $s1, $s0
/* 3988 80002D88 8E240008 */  lw         $a0, 0x8($s1)
/* 398C 80002D8C 8E25000C */  lw         $a1, 0xC($s1)
/* 3990 80002D90 0065302B */  sltu       $a2, $v1, $a1
/* 3994 80002D94 00651823 */  subu       $v1, $v1, $a1
/* 3998 80002D98 00441023 */  subu       $v0, $v0, $a0
/* 399C 80002D9C 00461023 */  subu       $v0, $v0, $a2
/* 39A0 80002DA0 AE0200D0 */  sw         $v0, 0xD0($s0)
/* 39A4 80002DA4 AE0300D4 */  sw         $v1, 0xD4($s0)
.L80002DA8:
/* 39A8 80002DA8 8FA20010 */  lw         $v0, 0x10($sp)
/* 39AC 80002DAC 24440010 */  addiu      $a0, $v0, 0x10
/* 39B0 80002DB0 0C0077E4 */  jal        osSpTaskLoad
/* 39B4 80002DB4 AE820670 */   sw        $v0, 0x670($s4)
/* 39B8 80002DB8 8FA40010 */  lw         $a0, 0x10($sp)
/* 39BC 80002DBC 0C007867 */  jal        osSpTaskStartGo
/* 39C0 80002DC0 24840010 */   addiu     $a0, $a0, 0x10
/* 39C4 80002DC4 03C02021 */  addu       $a0, $fp, $zero
/* 39C8 80002DC8 02A02821 */  addu       $a1, $s5, $zero
/* 39CC 80002DCC 0C007720 */  jal        osRecvMesg
/* 39D0 80002DD0 24060001 */   addiu     $a2, $zero, 0x1
/* 39D4 80002DD4 8EC28E10 */  lw         $v0, %lo(D_80038E10)($s6)
/* 39D8 80002DD8 AE800670 */  sw         $zero, 0x670($s4)
/* 39DC 80002DDC 8C420004 */  lw         $v0, 0x4($v0)
/* 39E0 80002DE0 2C420004 */  sltiu      $v0, $v0, 0x4
/* 39E4 80002DE4 10400017 */  beqz       $v0, .L80002E44
/* 39E8 80002DE8 00000000 */   nop
/* 39EC 80002DEC 0C007DF8 */  jal        osGetTime
/* 39F0 80002DF0 001780C0 */   sll       $s0, $s7, 3
/* 39F4 80002DF4 00022180 */  sll        $a0, $v0, 6
/* 39F8 80002DF8 00033682 */  srl        $a2, $v1, 26
/* 39FC 80002DFC 00862025 */  or         $a0, $a0, $a2
/* 3A00 80002E00 00032980 */  sll        $a1, $v1, 6
/* 3A04 80002E04 24060000 */  addiu      $a2, $zero, 0x0
/* 3A08 80002E08 24070BB8 */  addiu      $a3, $zero, 0xBB8
/* 3A0C 80002E0C 8ED18E10 */  lw         $s1, %lo(D_80038E10)($s6)
/* 3A10 80002E10 0C009198 */  jal        func_80024660
/* 3A14 80002E14 02308021 */   addu      $s0, $s1, $s0
/* 3A18 80002E18 8E240008 */  lw         $a0, 0x8($s1)
/* 3A1C 80002E1C 8E25000C */  lw         $a1, 0xC($s1)
/* 3A20 80002E20 0065302B */  sltu       $a2, $v1, $a1
/* 3A24 80002E24 00651823 */  subu       $v1, $v1, $a1
/* 3A28 80002E28 00441023 */  subu       $v0, $v0, $a0
/* 3A2C 80002E2C 00461023 */  subu       $v0, $v0, $a2
/* 3A30 80002E30 AE0200F0 */  sw         $v0, 0xF0($s0)
/* 3A34 80002E34 AE0300F4 */  sw         $v1, 0xF4($s0)
/* 3A38 80002E38 8E220004 */  lw         $v0, 0x4($s1)
/* 3A3C 80002E3C 24420001 */  addiu      $v0, $v0, 0x1
/* 3A40 80002E40 AE220004 */  sw         $v0, 0x4($s1)
.L80002E44:
/* 3A44 80002E44 8E820674 */  lw         $v0, 0x674($s4)
/* 3A48 80002E48 10400004 */  beqz       $v0, .L80002E5C
/* 3A4C 80002E4C 26840120 */   addiu     $a0, $s4, 0x120
/* 3A50 80002E50 02A02821 */  addu       $a1, $s5, $zero
/* 3A54 80002E54 0C00776C */  jal        osSendMesg
/* 3A58 80002E58 24060001 */   addiu     $a2, $zero, 0x1
.L80002E5C:
/* 3A5C 80002E5C 24020001 */  addiu      $v0, $zero, 0x1
/* 3A60 80002E60 16420008 */  bne        $s2, $v0, .L80002E84
/* 3A64 80002E64 24020002 */   addiu     $v0, $zero, 0x2
/* 3A68 80002E68 26700010 */  addiu      $s0, $s3, 0x10
/* 3A6C 80002E6C 0C0077E4 */  jal        osSpTaskLoad
/* 3A70 80002E70 02002021 */   addu      $a0, $s0, $zero
/* 3A74 80002E74 0C007867 */  jal        osSpTaskStartGo
/* 3A78 80002E78 02002021 */   addu      $a0, $s0, $zero
/* 3A7C 80002E7C 08000BA6 */  j          .L80002E98
/* 3A80 80002E80 00000000 */   nop
.L80002E84:
/* 3A84 80002E84 16420004 */  bne        $s2, $v0, .L80002E98
/* 3A88 80002E88 03C02021 */   addu      $a0, $fp, $zero
/* 3A8C 80002E8C 02A02821 */  addu       $a1, $s5, $zero
/* 3A90 80002E90 0C00776C */  jal        osSendMesg
/* 3A94 80002E94 24060001 */   addiu     $a2, $zero, 0x1
.L80002E98:
/* 3A98 80002E98 8FA20010 */  lw         $v0, 0x10($sp)
/* 3A9C 80002E9C 8C440050 */  lw         $a0, 0x50($v0)
/* 3AA0 80002EA0 8C450054 */  lw         $a1, 0x54($v0)
/* 3AA4 80002EA4 0C00776C */  jal        osSendMesg
/* 3AA8 80002EA8 24060001 */   addiu     $a2, $zero, 0x1
/* 3AAC 80002EAC 08000B3F */  j          .L80002CFC
/* 3AB0 80002EB0 26840008 */   addiu     $a0, $s4, 0x8

glabel func_80002EB4
/* 3AB4 80002EB4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3AB8 80002EB8 AFB20020 */  sw         $s2, 0x20($sp)
/* 3ABC 80002EBC 00809021 */  addu       $s2, $a0, $zero
/* 3AC0 80002EC0 AFB40028 */  sw         $s4, 0x28($sp)
/* 3AC4 80002EC4 3C148004 */  lui        $s4, %hi(D_80038E10)
/* 3AC8 80002EC8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 3ACC 80002ECC 27B50014 */  addiu      $s5, $sp, 0x14
/* 3AD0 80002ED0 AFBF0030 */  sw         $ra, 0x30($sp)
/* 3AD4 80002ED4 AFB30024 */  sw         $s3, 0x24($sp)
/* 3AD8 80002ED8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 3ADC 80002EDC AFB00018 */  sw         $s0, 0x18($sp)
/* 3AE0 80002EE0 AFA00014 */  sw         $zero, 0x14($sp)
/* 3AE4 80002EE4 26440040 */  addiu      $a0, $s2, 0x40
.L80002EE8:
/* 3AE8 80002EE8 27A50010 */  addiu      $a1, $sp, 0x10
/* 3AEC 80002EEC 0C007720 */  jal        osRecvMesg
/* 3AF0 80002EF0 24060001 */   addiu     $a2, $zero, 0x1
/* 3AF4 80002EF4 0C006A40 */  jal        osWritebackDCacheAll
/* 3AF8 80002EF8 00000000 */   nop
/* 3AFC 80002EFC 8FA50010 */  lw         $a1, 0x10($sp)
/* 3B00 80002F00 0C000C38 */  jal        func_800030E0
/* 3B04 80002F04 02402021 */   addu      $a0, $s2, $zero
/* 3B08 80002F08 8E420670 */  lw         $v0, 0x670($s2)
/* 3B0C 80002F0C 10400007 */  beqz       $v0, .L80002F2C
/* 3B10 80002F10 26440120 */   addiu     $a0, $s2, 0x120
/* 3B14 80002F14 27A50014 */  addiu      $a1, $sp, 0x14
/* 3B18 80002F18 8FA20010 */  lw         $v0, 0x10($sp)
/* 3B1C 80002F1C 24060001 */  addiu      $a2, $zero, 0x1
/* 3B20 80002F20 0C007720 */  jal        osRecvMesg
/* 3B24 80002F24 AE420674 */   sw        $v0, 0x674($s2)
/* 3B28 80002F28 AE400674 */  sw         $zero, 0x674($s2)
.L80002F2C:
/* 3B2C 80002F2C 8E828E10 */  lw         $v0, %lo(D_80038E10)($s4)
/* 3B30 80002F30 8C430000 */  lw         $v1, 0x0($v0)
/* 3B34 80002F34 2C620008 */  sltiu      $v0, $v1, 0x8
/* 3B38 80002F38 10400015 */  beqz       $v0, .L80002F90
/* 3B3C 80002F3C 00000000 */   nop
/* 3B40 80002F40 0C007DF8 */  jal        osGetTime
/* 3B44 80002F44 00609821 */   addu      $s3, $v1, $zero
/* 3B48 80002F48 00022180 */  sll        $a0, $v0, 6
/* 3B4C 80002F4C 00033682 */  srl        $a2, $v1, 26
/* 3B50 80002F50 00862025 */  or         $a0, $a0, $a2
/* 3B54 80002F54 00032980 */  sll        $a1, $v1, 6
/* 3B58 80002F58 24060000 */  addiu      $a2, $zero, 0x0
/* 3B5C 80002F5C 24070BB8 */  addiu      $a3, $zero, 0xBB8
/* 3B60 80002F60 8E918E10 */  lw         $s1, %lo(D_80038E10)($s4)
/* 3B64 80002F64 001380C0 */  sll        $s0, $s3, 3
/* 3B68 80002F68 0C009198 */  jal        func_80024660
/* 3B6C 80002F6C 02308021 */   addu      $s0, $s1, $s0
/* 3B70 80002F70 8E240008 */  lw         $a0, 0x8($s1)
/* 3B74 80002F74 8E25000C */  lw         $a1, 0xC($s1)
/* 3B78 80002F78 0065302B */  sltu       $a2, $v1, $a1
/* 3B7C 80002F7C 00651823 */  subu       $v1, $v1, $a1
/* 3B80 80002F80 00441023 */  subu       $v0, $v0, $a0
/* 3B84 80002F84 00461023 */  subu       $v0, $v0, $a2
/* 3B88 80002F88 AE020010 */  sw         $v0, 0x10($s0)
/* 3B8C 80002F8C AE030014 */  sw         $v1, 0x14($s0)
.L80002F90:
/* 3B90 80002F90 8FA20010 */  lw         $v0, 0x10($sp)
/* 3B94 80002F94 24440010 */  addiu      $a0, $v0, 0x10
/* 3B98 80002F98 0C0077E4 */  jal        osSpTaskLoad
/* 3B9C 80002F9C AE42066C */   sw        $v0, 0x66C($s2)
/* 3BA0 80002FA0 8FA40010 */  lw         $a0, 0x10($sp)
/* 3BA4 80002FA4 0C007867 */  jal        osSpTaskStartGo
/* 3BA8 80002FA8 24840010 */   addiu     $a0, $a0, 0x10
/* 3BAC 80002FAC 264400B0 */  addiu      $a0, $s2, 0xB0
/* 3BB0 80002FB0 02A02821 */  addu       $a1, $s5, $zero
/* 3BB4 80002FB4 0C007720 */  jal        osRecvMesg
/* 3BB8 80002FB8 24060001 */   addiu     $a2, $zero, 0x1
/* 3BBC 80002FBC 8E828E10 */  lw         $v0, %lo(D_80038E10)($s4)
/* 3BC0 80002FC0 AE40066C */  sw         $zero, 0x66C($s2)
/* 3BC4 80002FC4 8C420000 */  lw         $v0, 0x0($v0)
/* 3BC8 80002FC8 2C420008 */  sltiu      $v0, $v0, 0x8
/* 3BCC 80002FCC 10400015 */  beqz       $v0, .L80003024
/* 3BD0 80002FD0 264400E8 */   addiu     $a0, $s2, 0xE8
/* 3BD4 80002FD4 0C007DF8 */  jal        osGetTime
/* 3BD8 80002FD8 001380C0 */   sll       $s0, $s3, 3
/* 3BDC 80002FDC 00022180 */  sll        $a0, $v0, 6
/* 3BE0 80002FE0 00033682 */  srl        $a2, $v1, 26
/* 3BE4 80002FE4 00862025 */  or         $a0, $a0, $a2
/* 3BE8 80002FE8 00032980 */  sll        $a1, $v1, 6
/* 3BEC 80002FEC 24060000 */  addiu      $a2, $zero, 0x0
/* 3BF0 80002FF0 24070BB8 */  addiu      $a3, $zero, 0xBB8
/* 3BF4 80002FF4 8E918E10 */  lw         $s1, %lo(D_80038E10)($s4)
/* 3BF8 80002FF8 0C009198 */  jal        func_80024660
/* 3BFC 80002FFC 02308021 */   addu      $s0, $s1, $s0
/* 3C00 80003000 8E240008 */  lw         $a0, 0x8($s1)
/* 3C04 80003004 8E25000C */  lw         $a1, 0xC($s1)
/* 3C08 80003008 0065302B */  sltu       $a2, $v1, $a1
/* 3C0C 8000300C 00651823 */  subu       $v1, $v1, $a1
/* 3C10 80003010 00441023 */  subu       $v0, $v0, $a0
/* 3C14 80003014 00461023 */  subu       $v0, $v0, $a2
/* 3C18 80003018 AE020090 */  sw         $v0, 0x90($s0)
/* 3C1C 8000301C AE030094 */  sw         $v1, 0x94($s0)
/* 3C20 80003020 264400E8 */  addiu      $a0, $s2, 0xE8
.L80003024:
/* 3C24 80003024 02A02821 */  addu       $a1, $s5, $zero
/* 3C28 80003028 0C007720 */  jal        osRecvMesg
/* 3C2C 8000302C 24060001 */   addiu     $a2, $zero, 0x1
/* 3C30 80003030 8E828E10 */  lw         $v0, %lo(D_80038E10)($s4)
/* 3C34 80003034 8C420000 */  lw         $v0, 0x0($v0)
/* 3C38 80003038 2C420008 */  sltiu      $v0, $v0, 0x8
/* 3C3C 8000303C 10400017 */  beqz       $v0, .L8000309C
/* 3C40 80003040 00000000 */   nop
/* 3C44 80003044 0C007DF8 */  jal        osGetTime
/* 3C48 80003048 001380C0 */   sll       $s0, $s3, 3
/* 3C4C 8000304C 00022180 */  sll        $a0, $v0, 6
/* 3C50 80003050 00033682 */  srl        $a2, $v1, 26
/* 3C54 80003054 00862025 */  or         $a0, $a0, $a2
/* 3C58 80003058 00032980 */  sll        $a1, $v1, 6
/* 3C5C 8000305C 24060000 */  addiu      $a2, $zero, 0x0
/* 3C60 80003060 24070BB8 */  addiu      $a3, $zero, 0xBB8
/* 3C64 80003064 8E918E10 */  lw         $s1, %lo(D_80038E10)($s4)
/* 3C68 80003068 0C009198 */  jal        func_80024660
/* 3C6C 8000306C 02308021 */   addu      $s0, $s1, $s0
/* 3C70 80003070 8E240008 */  lw         $a0, 0x8($s1)
/* 3C74 80003074 8E25000C */  lw         $a1, 0xC($s1)
/* 3C78 80003078 0065302B */  sltu       $a2, $v1, $a1
/* 3C7C 8000307C 00651823 */  subu       $v1, $v1, $a1
/* 3C80 80003080 00441023 */  subu       $v0, $v0, $a0
/* 3C84 80003084 00461023 */  subu       $v0, $v0, $a2
/* 3C88 80003088 AE020050 */  sw         $v0, 0x50($s0)
/* 3C8C 8000308C AE030054 */  sw         $v1, 0x54($s0)
/* 3C90 80003090 8E220000 */  lw         $v0, 0x0($s1)
/* 3C94 80003094 24420001 */  addiu      $v0, $v0, 0x1
/* 3C98 80003098 AE220000 */  sw         $v0, 0x0($s1)
.L8000309C:
/* 3C9C 8000309C 8FA30010 */  lw         $v1, 0x10($sp)
/* 3CA0 800030A0 8C620008 */  lw         $v0, 0x8($v1)
/* 3CA4 800030A4 30420040 */  andi       $v0, $v0, 0x40
/* 3CA8 800030A8 10400006 */  beqz       $v0, .L800030C4
/* 3CAC 800030AC 00000000 */   nop
/* 3CB0 800030B0 8C64000C */  lw         $a0, 0xC($v1)
/* 3CB4 800030B4 0C008110 */  jal        osViSwapBuffer
/* 3CB8 800030B8 00000000 */   nop
/* 3CBC 800030BC 3C028002 */  lui        $v0, %hi(D_800272A8)
/* 3CC0 800030C0 AC4072A8 */  sw         $zero, %lo(D_800272A8)($v0)
.L800030C4:
/* 3CC4 800030C4 8FA20010 */  lw         $v0, 0x10($sp)
/* 3CC8 800030C8 8C440050 */  lw         $a0, 0x50($v0)
/* 3CCC 800030CC 8C450054 */  lw         $a1, 0x54($v0)
/* 3CD0 800030D0 0C00776C */  jal        osSendMesg
/* 3CD4 800030D4 24060001 */   addiu     $a2, $zero, 0x1
/* 3CD8 800030D8 08000BBA */  j          .L80002EE8
/* 3CDC 800030DC 26440040 */   addiu     $a0, $s2, 0x40

glabel func_800030E0
/* 3CE0 800030E0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3CE4 800030E4 AFB3002C */  sw         $s3, 0x2C($sp)
/* 3CE8 800030E8 00809821 */  addu       $s3, $a0, $zero
/* 3CEC 800030EC AFBF0030 */  sw         $ra, 0x30($sp)
/* 3CF0 800030F0 AFB20028 */  sw         $s2, 0x28($sp)
/* 3CF4 800030F4 AFB10024 */  sw         $s1, 0x24($sp)
/* 3CF8 800030F8 AFB00020 */  sw         $s0, 0x20($sp)
/* 3CFC 800030FC 8CB2000C */  lw         $s2, 0xC($a1)
/* 3D00 80003100 26710120 */  addiu      $s1, $s3, 0x120
/* 3D04 80003104 AFA00018 */  sw         $zero, 0x18($sp)
.L80003108:
/* 3D08 80003108 0C007F50 */  jal        osViGetCurrentFramebuffer
/* 3D0C 8000310C 00008021 */   addu      $s0, $zero, $zero
/* 3D10 80003110 50520005 */  beql       $v0, $s2, .L80003128
/* 3D14 80003114 24100001 */   addiu     $s0, $zero, 0x1
/* 3D18 80003118 0C007FA4 */  jal        osViGetNextFramebuffer
/* 3D1C 8000311C 00000000 */   nop
/* 3D20 80003120 50520001 */  beql       $v0, $s2, .L80003128
/* 3D24 80003124 24100001 */   addiu     $s0, $zero, 0x1
.L80003128:
/* 3D28 80003128 1200000D */  beqz       $s0, .L80003160
/* 3D2C 8000312C 02602021 */   addu      $a0, $s3, $zero
/* 3D30 80003130 27A50010 */  addiu      $a1, $sp, 0x10
/* 3D34 80003134 0C000AE0 */  jal        func_80002B80
/* 3D38 80003138 02203021 */   addu      $a2, $s1, $zero
/* 3D3C 8000313C 02202021 */  addu       $a0, $s1, $zero
/* 3D40 80003140 27A50018 */  addiu      $a1, $sp, 0x18
/* 3D44 80003144 0C007720 */  jal        osRecvMesg
/* 3D48 80003148 24060001 */   addiu     $a2, $zero, 0x1
/* 3D4C 8000314C 02602021 */  addu       $a0, $s3, $zero
/* 3D50 80003150 0C000AF6 */  jal        func_80002BD8
/* 3D54 80003154 27A50010 */   addiu     $a1, $sp, 0x10
/* 3D58 80003158 08000C42 */  j          .L80003108
/* 3D5C 8000315C 00000000 */   nop
.L80003160:
/* 3D60 80003160 8FBF0030 */  lw         $ra, 0x30($sp)
/* 3D64 80003164 8FB3002C */  lw         $s3, 0x2C($sp)
/* 3D68 80003168 8FB20028 */  lw         $s2, 0x28($sp)
/* 3D6C 8000316C 8FB10024 */  lw         $s1, 0x24($sp)
/* 3D70 80003170 8FB00020 */  lw         $s0, 0x20($sp)
/* 3D74 80003174 03E00008 */  jr         $ra
/* 3D78 80003178 27BD0038 */   addiu     $sp, $sp, 0x38
