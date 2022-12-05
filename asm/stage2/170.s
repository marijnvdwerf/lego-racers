.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004C410
/* 43740 8004C410 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43744 8004C414 AFB00010 */  sw         $s0, 0x10($sp)
/* 43748 8004C418 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4374C 8004C41C 0C01637C */  jal        func_80058DF0
/* 43750 8004C420 00808021 */   addu      $s0, $a0, $zero
/* 43754 8004C424 02001021 */  addu       $v0, $s0, $zero
/* 43758 8004C428 3C038004 */  lui        $v1, %hi(D_8003C988)
/* 4375C 8004C42C 2463C988 */  addiu      $v1, $v1, %lo(D_8003C988)
/* 43760 8004C430 AC430008 */  sw         $v1, 0x8($v0)
/* 43764 8004C434 AC40000C */  sw         $zero, 0xC($v0)
/* 43768 8004C438 AC400014 */  sw         $zero, 0x14($v0)
/* 4376C 8004C43C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 43770 8004C440 8FB00010 */  lw         $s0, 0x10($sp)
/* 43774 8004C444 03E00008 */  jr         $ra
/* 43778 8004C448 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004C44C
/* 4377C 8004C44C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 43780 8004C450 AFB00010 */  sw         $s0, 0x10($sp)
/* 43784 8004C454 00808021 */  addu       $s0, $a0, $zero
/* 43788 8004C458 AFB10014 */  sw         $s1, 0x14($sp)
/* 4378C 8004C45C 00A08821 */  addu       $s1, $a1, $zero
/* 43790 8004C460 3C028004 */  lui        $v0, %hi(D_8003C988)
/* 43794 8004C464 2442C988 */  addiu      $v0, $v0, %lo(D_8003C988)
/* 43798 8004C468 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4379C 8004C46C 0C0132D4 */  jal        func_8004CB50
/* 437A0 8004C470 AE020008 */   sw        $v0, 0x8($s0)
/* 437A4 8004C474 02002021 */  addu       $a0, $s0, $zero
/* 437A8 8004C478 0C016383 */  jal        func_80058E0C
/* 437AC 8004C47C 02202821 */   addu      $a1, $s1, $zero
/* 437B0 8004C480 8FBF0018 */  lw         $ra, 0x18($sp)
/* 437B4 8004C484 8FB10014 */  lw         $s1, 0x14($sp)
/* 437B8 8004C488 8FB00010 */  lw         $s0, 0x10($sp)
/* 437BC 8004C48C 03E00008 */  jr         $ra
/* 437C0 8004C490 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004C494
/* 437C4 8004C494 27BDFED8 */  addiu      $sp, $sp, -0x128
/* 437C8 8004C498 AFB3010C */  sw         $s3, 0x10C($sp)
/* 437CC 8004C49C 00809821 */  addu       $s3, $a0, $zero
/* 437D0 8004C4A0 AFB00100 */  sw         $s0, 0x100($sp)
/* 437D4 8004C4A4 00A08021 */  addu       $s0, $a1, $zero
/* 437D8 8004C4A8 AFB20108 */  sw         $s2, 0x108($sp)
/* 437DC 8004C4AC 00C09021 */  addu       $s2, $a2, $zero
/* 437E0 8004C4B0 AFBF0124 */  sw         $ra, 0x124($sp)
/* 437E4 8004C4B4 AFBE0120 */  sw         $fp, 0x120($sp)
/* 437E8 8004C4B8 AFB7011C */  sw         $s7, 0x11C($sp)
/* 437EC 8004C4BC AFB60118 */  sw         $s6, 0x118($sp)
/* 437F0 8004C4C0 AFB50114 */  sw         $s5, 0x114($sp)
/* 437F4 8004C4C4 AFB40110 */  sw         $s4, 0x110($sp)
/* 437F8 8004C4C8 AFB10104 */  sw         $s1, 0x104($sp)
/* 437FC 8004C4CC 8E620014 */  lw         $v0, 0x14($s3)
/* 43800 8004C4D0 10400006 */  beqz       $v0, .L8004C4EC
/* 43804 8004C4D4 00E08821 */   addu      $s1, $a3, $zero
/* 43808 8004C4D8 8E620008 */  lw         $v0, 0x8($s3)
/* 4380C 8004C4DC 84440018 */  lh         $a0, 0x18($v0)
/* 43810 8004C4E0 8C42001C */  lw         $v0, 0x1C($v0)
/* 43814 8004C4E4 0040F809 */  jalr       $v0
/* 43818 8004C4E8 02642021 */   addu      $a0, $s3, $a0
.L8004C4EC:
/* 4381C 8004C4EC AE70000C */  sw         $s0, 0xC($s3)
/* 43820 8004C4F0 02002021 */  addu       $a0, $s0, $zero
/* 43824 8004C4F4 0C016E76 */  jal        func_8005B9D8
/* 43828 8004C4F8 02602821 */   addu      $a1, $s3, $zero
/* 4382C 8004C4FC 12200014 */  beqz       $s1, .L8004C550
/* 43830 8004C500 00000000 */   nop
/* 43834 8004C504 0C01FB4C */  jal        func_8007ED30
/* 43838 8004C508 24040654 */   addiu     $a0, $zero, 0x654
/* 4383C 8004C50C 0C00278C */  jal        func_80009E30
/* 43840 8004C510 00402021 */   addu      $a0, $v0, $zero
/* 43844 8004C514 00408021 */  addu       $s0, $v0, $zero
/* 43848 8004C518 56000008 */  bnel       $s0, $zero, .L8004C53C
/* 4384C 8004C51C 02002021 */   addu      $a0, $s0, $zero
/* 43850 8004C520 3C048004 */  lui        $a0, %hi(D_8003C8B0)
/* 43854 8004C524 2484C8B0 */  addiu      $a0, $a0, %lo(D_8003C8B0)
/* 43858 8004C528 00002821 */  addu       $a1, $zero, $zero
/* 4385C 8004C52C 00A03021 */  addu       $a2, $a1, $zero
/* 43860 8004C530 0C011ACF */  jal        func_80046B3C
/* 43864 8004C534 00A03821 */   addu      $a3, $a1, $zero
/* 43868 8004C538 02002021 */  addu       $a0, $s0, $zero
.L8004C53C:
/* 4386C 8004C53C 3C058004 */  lui        $a1, %hi(D_8003C8B4)
/* 43870 8004C540 0C0025BA */  jal        func_800096E8
/* 43874 8004C544 24A5C8B4 */   addiu     $a1, $a1, %lo(D_8003C8B4)
/* 43878 8004C548 08013163 */  j          .L8004C58C
/* 4387C 8004C54C 00000000 */   nop
.L8004C550:
/* 43880 8004C550 0C01FB4C */  jal        func_8007ED30
/* 43884 8004C554 24040658 */   addiu     $a0, $zero, 0x658
/* 43888 8004C558 00408021 */  addu       $s0, $v0, $zero
/* 4388C 8004C55C 0C002504 */  jal        func_80009410
/* 43890 8004C560 02002021 */   addu      $a0, $s0, $zero
/* 43894 8004C564 3C028004 */  lui        $v0, %hi(D_8003C8D8)
/* 43898 8004C568 2442C8D8 */  addiu      $v0, $v0, %lo(D_8003C8D8)
/* 4389C 8004C56C 16000007 */  bnez       $s0, .L8004C58C
/* 438A0 8004C570 AE020028 */   sw        $v0, 0x28($s0)
/* 438A4 8004C574 3C048004 */  lui        $a0, %hi(D_8003C8B0)
/* 438A8 8004C578 2484C8B0 */  addiu      $a0, $a0, %lo(D_8003C8B0)
/* 438AC 8004C57C 00002821 */  addu       $a1, $zero, $zero
/* 438B0 8004C580 00A03021 */  addu       $a2, $a1, $zero
/* 438B4 8004C584 0C011ACF */  jal        func_80046B3C
/* 438B8 8004C588 00A03821 */   addu      $a3, $a1, $zero
.L8004C58C:
/* 438BC 8004C58C 8E020028 */  lw         $v0, 0x28($s0)
/* 438C0 8004C590 02402821 */  addu       $a1, $s2, $zero
/* 438C4 8004C594 84440088 */  lh         $a0, 0x88($v0)
/* 438C8 8004C598 8C42008C */  lw         $v0, 0x8C($v0)
/* 438CC 8004C59C 0040F809 */  jalr       $v0
/* 438D0 8004C5A0 02042021 */   addu      $a0, $s0, $a0
/* 438D4 8004C5A4 02002021 */  addu       $a0, $s0, $zero
/* 438D8 8004C5A8 0C0026F4 */  jal        func_80009BD0
/* 438DC 8004C5AC 24050027 */   addiu     $a1, $zero, 0x27
/* 438E0 8004C5B0 0C002723 */  jal        func_80009C8C
/* 438E4 8004C5B4 02002021 */   addu      $a0, $s0, $zero
/* 438E8 8004C5B8 1440000F */  bnez       $v0, .L8004C5F8
/* 438EC 8004C5BC AE620014 */   sw        $v0, 0x14($s3)
/* 438F0 8004C5C0 8E020028 */  lw         $v0, 0x28($s0)
/* 438F4 8004C5C4 84440048 */  lh         $a0, 0x48($v0)
/* 438F8 8004C5C8 8C42004C */  lw         $v0, 0x4C($v0)
/* 438FC 8004C5CC 0040F809 */  jalr       $v0
/* 43900 8004C5D0 02042021 */   addu      $a0, $s0, $a0
/* 43904 8004C5D4 120000D3 */  beqz       $s0, .L8004C924
/* 43908 8004C5D8 24050003 */   addiu     $a1, $zero, 0x3
/* 4390C 8004C5DC 8E020028 */  lw         $v0, 0x28($s0)
/* 43910 8004C5E0 84440038 */  lh         $a0, 0x38($v0)
/* 43914 8004C5E4 8C42003C */  lw         $v0, 0x3C($v0)
/* 43918 8004C5E8 0040F809 */  jalr       $v0
/* 4391C 8004C5EC 02042021 */   addu      $a0, $s0, $a0
/* 43920 8004C5F0 08013249 */  j          .L8004C924
/* 43924 8004C5F4 00000000 */   nop
.L8004C5F8:
/* 43928 8004C5F8 02602021 */  addu       $a0, $s3, $zero
/* 4392C 8004C5FC 0C016397 */  jal        func_80058E5C
/* 43930 8004C600 00402821 */   addu      $a1, $v0, $zero
/* 43934 8004C604 0000A021 */  addu       $s4, $zero, $zero
/* 43938 8004C608 27A800D8 */  addiu      $t0, $sp, 0xD8
/* 4393C 8004C60C 241700FF */  addiu      $s7, $zero, 0xFF
/* 43940 8004C610 AFA800F4 */  sw         $t0, 0xF4($sp)
/* 43944 8004C614 8E620008 */  lw         $v0, 0x8($s3)
/* 43948 8004C618 0280F021 */  addu       $fp, $s4, $zero
/* 4394C 8004C61C 84440020 */  lh         $a0, 0x20($v0)
/* 43950 8004C620 8C420024 */  lw         $v0, 0x24($v0)
/* 43954 8004C624 0040F809 */  jalr       $v0
/* 43958 8004C628 02642021 */   addu      $a0, $s3, $a0
.L8004C62C:
/* 4395C 8004C62C 8E620014 */  lw         $v0, 0x14($s3)
/* 43960 8004C630 0282102B */  sltu       $v0, $s4, $v0
/* 43964 8004C634 104000AB */  beqz       $v0, .L8004C8E4
/* 43968 8004C638 02002021 */   addu      $a0, $s0, $zero
/* 4396C 8004C63C 0C0026F4 */  jal        func_80009BD0
/* 43970 8004C640 24050027 */   addiu     $a1, $zero, 0x27
/* 43974 8004C644 02802821 */  addu       $a1, $s4, $zero
/* 43978 8004C648 00008821 */  addu       $s1, $zero, $zero
/* 4397C 8004C64C 8E620008 */  lw         $v0, 0x8($s3)
/* 43980 8004C650 0014B040 */  sll        $s6, $s4, 1
/* 43984 8004C654 84440050 */  lh         $a0, 0x50($v0)
/* 43988 8004C658 8C420054 */  lw         $v0, 0x54($v0)
/* 4398C 8004C65C 0040F809 */  jalr       $v0
/* 43990 8004C660 02642021 */   addu      $a0, $s3, $a0
/* 43994 8004C664 8E030028 */  lw         $v1, 0x28($s0)
/* 43998 8004C668 0014A880 */  sll        $s5, $s4, 2
/* 4399C 8004C66C 846400A0 */  lh         $a0, 0xA0($v1)
/* 439A0 8004C670 00409021 */  addu       $s2, $v0, $zero
/* 439A4 8004C674 AFBE00F8 */  sw         $fp, 0xF8($sp)
/* 439A8 8004C678 8C6300A4 */  lw         $v1, 0xA4($v1)
/* 439AC 8004C67C 0060F809 */  jalr       $v1
/* 439B0 8004C680 02042021 */   addu      $a0, $s0, $a0
/* 439B4 8004C684 26050044 */  addiu      $a1, $s0, 0x44
/* 439B8 8004C688 8FA400F4 */  lw         $a0, 0xF4($sp)
/* 439BC 8004C68C 0C000708 */  jal        func_80001C20
/* 439C0 8004C690 24060008 */   addiu     $a2, $zero, 0x8
/* 439C4 8004C694 02602021 */  addu       $a0, $s3, $zero
/* 439C8 8004C698 8FA500F4 */  lw         $a1, 0xF4($sp)
/* 439CC 8004C69C 0C0163C7 */  jal        func_80058F1C
/* 439D0 8004C6A0 02403021 */   addu      $a2, $s2, $zero
/* 439D4 8004C6A4 02002021 */  addu       $a0, $s0, $zero
/* 439D8 8004C6A8 0C0026F4 */  jal        func_80009BD0
/* 439DC 8004C6AC 24050005 */   addiu     $a1, $zero, 0x5
/* 439E0 8004C6B0 A3A000E0 */  sb         $zero, 0xE0($sp)
/* 439E4 8004C6B4 A3A000E1 */  sb         $zero, 0xE1($sp)
/* 439E8 8004C6B8 A3A000E2 */  sb         $zero, 0xE2($sp)
/* 439EC 8004C6BC A3B700E3 */  sb         $s7, 0xE3($sp)
/* 439F0 8004C6C0 A3B700E8 */  sb         $s7, 0xE8($sp)
/* 439F4 8004C6C4 A3B700E9 */  sb         $s7, 0xE9($sp)
/* 439F8 8004C6C8 A3B700EA */  sb         $s7, 0xEA($sp)
/* 439FC 8004C6CC A3B700EB */  sb         $s7, 0xEB($sp)
.L8004C6D0:
/* 43A00 8004C6D0 8E020028 */  lw         $v0, 0x28($s0)
/* 43A04 8004C6D4 844400A0 */  lh         $a0, 0xA0($v0)
/* 43A08 8004C6D8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 43A0C 8004C6DC 0040F809 */  jalr       $v0
/* 43A10 8004C6E0 02042021 */   addu      $a0, $s0, $a0
/* 43A14 8004C6E4 00401821 */  addu       $v1, $v0, $zero
/* 43A18 8004C6E8 24020006 */  addiu      $v0, $zero, 0x6
/* 43A1C 8004C6EC 10620063 */  beq        $v1, $v0, .L8004C87C
/* 43A20 8004C6F0 2463FFD8 */   addiu     $v1, $v1, -0x28
/* 43A24 8004C6F4 0062102B */  sltu       $v0, $v1, $v0
/* 43A28 8004C6F8 10400058 */  beqz       $v0, .L8004C85C
/* 43A2C 8004C6FC 00031080 */   sll       $v0, $v1, 2
/* 43A30 8004C700 3C098004 */  lui        $t1, %hi(jtbl_8003C8C0)
/* 43A34 8004C704 2529C8C0 */  addiu      $t1, $t1, %lo(jtbl_8003C8C0)
/* 43A38 8004C708 00491021 */  addu       $v0, $v0, $t1
/* 43A3C 8004C70C 8C420000 */  lw         $v0, 0x0($v0)
/* 43A40 8004C710 00400008 */  jr         $v0
/* 43A44 8004C714 00000000 */   nop
glabel L8004C718
/* 43A48 8004C718 36220008 */  ori        $v0, $s1, 0x8
/* 43A4C 8004C71C 080131B4 */  j          .L8004C6D0
/* 43A50 8004C720 3051FFEF */   andi      $s1, $v0, 0xFFEF
glabel L8004C724
/* 43A54 8004C724 36220010 */  ori        $v0, $s1, 0x10
/* 43A58 8004C728 080131B4 */  j          .L8004C6D0
/* 43A5C 8004C72C 3051FFF7 */   andi      $s1, $v0, 0xFFF7
glabel L8004C730
/* 43A60 8004C730 36310020 */  ori        $s1, $s1, 0x20
/* 43A64 8004C734 0C002680 */  jal        func_80009A00
/* 43A68 8004C738 02002021 */   addu      $a0, $s0, $zero
/* 43A6C 8004C73C 02002021 */  addu       $a0, $s0, $zero
/* 43A70 8004C740 0C002680 */  jal        func_80009A00
/* 43A74 8004C744 A3A200E0 */   sb        $v0, 0xE0($sp)
/* 43A78 8004C748 02002021 */  addu       $a0, $s0, $zero
/* 43A7C 8004C74C 0C002680 */  jal        func_80009A00
/* 43A80 8004C750 A3A200E1 */   sb        $v0, 0xE1($sp)
/* 43A84 8004C754 080131B4 */  j          .L8004C6D0
/* 43A88 8004C758 A3A200E2 */   sb        $v0, 0xE2($sp)
glabel L8004C75C
/* 43A8C 8004C75C 0C002680 */  jal        func_80009A00
/* 43A90 8004C760 02002021 */   addu      $a0, $s0, $zero
/* 43A94 8004C764 080131B4 */  j          .L8004C6D0
/* 43A98 8004C768 AE42001C */   sw        $v0, 0x1C($s2)
glabel L8004C76C
/* 43A9C 8004C76C 02602021 */  addu       $a0, $s3, $zero
/* 43AA0 8004C770 02002821 */  addu       $a1, $s0, $zero
/* 43AA4 8004C774 27A60010 */  addiu      $a2, $sp, 0x10
/* 43AA8 8004C778 0C013279 */  jal        func_8004C9E4
/* 43AAC 8004C77C 27A700F0 */   addiu     $a3, $sp, 0xF0
/* 43AB0 8004C780 8E620020 */  lw         $v0, 0x20($s3)
/* 43AB4 8004C784 97A300F0 */  lhu        $v1, 0xF0($sp)
/* 43AB8 8004C788 02C21021 */  addu       $v0, $s6, $v0
/* 43ABC 8004C78C A4430000 */  sh         $v1, 0x0($v0)
/* 43AC0 8004C790 8E620008 */  lw         $v0, 0x8($s3)
/* 43AC4 8004C794 02802821 */  addu       $a1, $s4, $zero
/* 43AC8 8004C798 84440028 */  lh         $a0, 0x28($v0)
/* 43ACC 8004C79C 8C42002C */  lw         $v0, 0x2C($v0)
/* 43AD0 8004C7A0 0040F809 */  jalr       $v0
/* 43AD4 8004C7A4 02642021 */   addu      $a0, $s3, $a0
/* 43AD8 8004C7A8 27A50010 */  addiu      $a1, $sp, 0x10
/* 43ADC 8004C7AC 8E62001C */  lw         $v0, 0x1C($s3)
/* 43AE0 8004C7B0 97A600F0 */  lhu        $a2, 0xF0($sp)
/* 43AE4 8004C7B4 02A21021 */  addu       $v0, $s5, $v0
/* 43AE8 8004C7B8 8C440000 */  lw         $a0, 0x0($v0)
/* 43AEC 8004C7BC 0C006E07 */  jal        strncpy
/* 43AF0 8004C7C0 00063040 */   sll       $a2, $a2, 1
/* 43AF4 8004C7C4 8E63001C */  lw         $v1, 0x1C($s3)
/* 43AF8 8004C7C8 97A200F0 */  lhu        $v0, 0xF0($sp)
/* 43AFC 8004C7CC 02A31821 */  addu       $v1, $s5, $v1
/* 43B00 8004C7D0 8C630000 */  lw         $v1, 0x0($v1)
/* 43B04 8004C7D4 00021040 */  sll        $v0, $v0, 1
/* 43B08 8004C7D8 00431021 */  addu       $v0, $v0, $v1
/* 43B0C 8004C7DC A4400000 */  sh         $zero, 0x0($v0)
/* 43B10 8004C7E0 8E640018 */  lw         $a0, 0x18($s3)
/* 43B14 8004C7E4 8FAA00F8 */  lw         $t2, 0xF8($sp)
/* 43B18 8004C7E8 8E63001C */  lw         $v1, 0x1C($s3)
/* 43B1C 8004C7EC 8E620020 */  lw         $v0, 0x20($s3)
/* 43B20 8004C7F0 008A2021 */  addu       $a0, $a0, $t2
/* 43B24 8004C7F4 02A31821 */  addu       $v1, $s5, $v1
/* 43B28 8004C7F8 02C21021 */  addu       $v0, $s6, $v0
/* 43B2C 8004C7FC 94460000 */  lhu        $a2, 0x0($v0)
/* 43B30 8004C800 8C650000 */  lw         $a1, 0x0($v1)
/* 43B34 8004C804 24C60001 */  addiu      $a2, $a2, 0x1
/* 43B38 8004C808 0C0016F6 */  jal        func_80005BD8
/* 43B3C 8004C80C 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 43B40 8004C810 1440FFAF */  bnez       $v0, .L8004C6D0
/* 43B44 8004C814 00002821 */   addu      $a1, $zero, $zero
/* 43B48 8004C818 3C048004 */  lui        $a0, %hi(D_8003C8B0)
/* 43B4C 8004C81C 2484C8B0 */  addiu      $a0, $a0, %lo(D_8003C8B0)
/* 43B50 8004C820 00A03021 */  addu       $a2, $a1, $zero
/* 43B54 8004C824 0C011ACF */  jal        func_80046B3C
/* 43B58 8004C828 00A03821 */   addu      $a3, $a1, $zero
/* 43B5C 8004C82C 080131B4 */  j          .L8004C6D0
/* 43B60 8004C830 00000000 */   nop
glabel L8004C834
/* 43B64 8004C834 0C002680 */  jal        func_80009A00
/* 43B68 8004C838 02002021 */   addu      $a0, $s0, $zero
/* 43B6C 8004C83C 02002021 */  addu       $a0, $s0, $zero
/* 43B70 8004C840 0C002680 */  jal        func_80009A00
/* 43B74 8004C844 A3A200E8 */   sb        $v0, 0xE8($sp)
/* 43B78 8004C848 02002021 */  addu       $a0, $s0, $zero
/* 43B7C 8004C84C 0C002680 */  jal        func_80009A00
/* 43B80 8004C850 A3A200E9 */   sb        $v0, 0xE9($sp)
/* 43B84 8004C854 080131B4 */  j          .L8004C6D0
/* 43B88 8004C858 A3A200EA */   sb        $v0, 0xEA($sp)
.L8004C85C:
/* 43B8C 8004C85C 8E020028 */  lw         $v0, 0x28($s0)
/* 43B90 8004C860 00002821 */  addu       $a1, $zero, $zero
/* 43B94 8004C864 84440098 */  lh         $a0, 0x98($v0)
/* 43B98 8004C868 8C42009C */  lw         $v0, 0x9C($v0)
/* 43B9C 8004C86C 0040F809 */  jalr       $v0
/* 43BA0 8004C870 02042021 */   addu      $a0, $s0, $a0
/* 43BA4 8004C874 080131B4 */  j          .L8004C6D0
/* 43BA8 8004C878 00000000 */   nop
.L8004C87C:
/* 43BAC 8004C87C 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* 43BB0 8004C880 8BAB00D8 */  lwl        $t3, 0xD8($sp)
/* 43BB4 8004C884 9BAB00DB */  lwr        $t3, 0xDB($sp)
/* 43BB8 8004C888 8BA800DC */  lwl        $t0, 0xDC($sp)
/* 43BBC 8004C88C 9BA800DF */  lwr        $t0, 0xDF($sp)
/* 43BC0 8004C890 AA4B002C */  swl        $t3, 0x2C($s2)
/* 43BC4 8004C894 BA4B002F */  swr        $t3, 0x2F($s2)
/* 43BC8 8004C898 AA480030 */  swl        $t0, 0x30($s2)
/* 43BCC 8004C89C BA480033 */  swr        $t0, 0x33($s2)
/* 43BD0 8004C8A0 AE420028 */  sw         $v0, 0x28($s2)
/* 43BD4 8004C8A4 32220020 */  andi       $v0, $s1, 0x20
/* 43BD8 8004C8A8 8BAB00E8 */  lwl        $t3, 0xE8($sp)
/* 43BDC 8004C8AC 9BAB00EB */  lwr        $t3, 0xEB($sp)
/* 43BE0 8004C8B0 AA4B0038 */  swl        $t3, 0x38($s2)
/* 43BE4 8004C8B4 BA4B003B */  swr        $t3, 0x3B($s2)
/* 43BE8 8004C8B8 10400008 */  beqz       $v0, .L8004C8DC
/* 43BEC 8004C8BC 27DE000C */   addiu     $fp, $fp, 0xC
/* 43BF0 8004C8C0 8BAB00E0 */  lwl        $t3, 0xE0($sp)
/* 43BF4 8004C8C4 9BAB00E3 */  lwr        $t3, 0xE3($sp)
/* 43BF8 8004C8C8 AA4B0034 */  swl        $t3, 0x34($s2)
/* 43BFC 8004C8CC BA4B0037 */  swr        $t3, 0x37($s2)
/* 43C00 8004C8D0 8E420028 */  lw         $v0, 0x28($s2)
/* 43C04 8004C8D4 34420800 */  ori        $v0, $v0, 0x800
/* 43C08 8004C8D8 AE420028 */  sw         $v0, 0x28($s2)
.L8004C8DC:
/* 43C0C 8004C8DC 0801318B */  j          .L8004C62C
/* 43C10 8004C8E0 26940001 */   addiu     $s4, $s4, 0x1
.L8004C8E4:
/* 43C14 8004C8E4 0C0026F4 */  jal        func_80009BD0
/* 43C18 8004C8E8 24050006 */   addiu     $a1, $zero, 0x6
/* 43C1C 8004C8EC 8E020028 */  lw         $v0, 0x28($s0)
/* 43C20 8004C8F0 84440048 */  lh         $a0, 0x48($v0)
/* 43C24 8004C8F4 8C42004C */  lw         $v0, 0x4C($v0)
/* 43C28 8004C8F8 0040F809 */  jalr       $v0
/* 43C2C 8004C8FC 02042021 */   addu      $a0, $s0, $a0
/* 43C30 8004C900 12000006 */  beqz       $s0, .L8004C91C
/* 43C34 8004C904 24050003 */   addiu     $a1, $zero, 0x3
/* 43C38 8004C908 8E020028 */  lw         $v0, 0x28($s0)
/* 43C3C 8004C90C 84440038 */  lh         $a0, 0x38($v0)
/* 43C40 8004C910 8C42003C */  lw         $v0, 0x3C($v0)
/* 43C44 8004C914 0040F809 */  jalr       $v0
/* 43C48 8004C918 02042021 */   addu      $a0, $s0, $a0
.L8004C91C:
/* 43C4C 8004C91C 0C013255 */  jal        func_8004C954
/* 43C50 8004C920 02602021 */   addu      $a0, $s3, $zero
.L8004C924:
/* 43C54 8004C924 8FBF0124 */  lw         $ra, 0x124($sp)
/* 43C58 8004C928 8FBE0120 */  lw         $fp, 0x120($sp)
/* 43C5C 8004C92C 8FB7011C */  lw         $s7, 0x11C($sp)
/* 43C60 8004C930 8FB60118 */  lw         $s6, 0x118($sp)
/* 43C64 8004C934 8FB50114 */  lw         $s5, 0x114($sp)
/* 43C68 8004C938 8FB40110 */  lw         $s4, 0x110($sp)
/* 43C6C 8004C93C 8FB3010C */  lw         $s3, 0x10C($sp)
/* 43C70 8004C940 8FB20108 */  lw         $s2, 0x108($sp)
/* 43C74 8004C944 8FB10104 */  lw         $s1, 0x104($sp)
/* 43C78 8004C948 8FB00100 */  lw         $s0, 0x100($sp)
/* 43C7C 8004C94C 03E00008 */  jr         $ra
/* 43C80 8004C950 27BD0128 */   addiu     $sp, $sp, 0x128

glabel func_8004C954
/* 43C84 8004C954 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 43C88 8004C958 AFB10014 */  sw         $s1, 0x14($sp)
/* 43C8C 8004C95C 00808821 */  addu       $s1, $a0, $zero
/* 43C90 8004C960 AFBF001C */  sw         $ra, 0x1C($sp)
/* 43C94 8004C964 AFB20018 */  sw         $s2, 0x18($sp)
/* 43C98 8004C968 AFB00010 */  sw         $s0, 0x10($sp)
/* 43C9C 8004C96C 8E220014 */  lw         $v0, 0x14($s1)
/* 43CA0 8004C970 10400016 */  beqz       $v0, .L8004C9CC
/* 43CA4 8004C974 00008021 */   addu      $s0, $zero, $zero
/* 43CA8 8004C978 02009021 */  addu       $s2, $s0, $zero
.L8004C97C:
/* 43CAC 8004C97C 8E220008 */  lw         $v0, 0x8($s1)
/* 43CB0 8004C980 02002821 */  addu       $a1, $s0, $zero
/* 43CB4 8004C984 84440050 */  lh         $a0, 0x50($v0)
/* 43CB8 8004C988 8C420054 */  lw         $v0, 0x54($v0)
/* 43CBC 8004C98C 0040F809 */  jalr       $v0
/* 43CC0 8004C990 02242021 */   addu      $a0, $s1, $a0
/* 43CC4 8004C994 00402021 */  addu       $a0, $v0, $zero
/* 43CC8 8004C998 00101040 */  sll        $v0, $s0, 1
/* 43CCC 8004C99C 26100001 */  addiu      $s0, $s0, 0x1
/* 43CD0 8004C9A0 8E230020 */  lw         $v1, 0x20($s1)
/* 43CD4 8004C9A4 8E25000C */  lw         $a1, 0xC($s1)
/* 43CD8 8004C9A8 8E260018 */  lw         $a2, 0x18($s1)
/* 43CDC 8004C9AC 00431021 */  addu       $v0, $v0, $v1
/* 43CE0 8004C9B0 94470000 */  lhu        $a3, 0x0($v0)
/* 43CE4 8004C9B4 0C013337 */  jal        func_8004CCDC
/* 43CE8 8004C9B8 00D23021 */   addu      $a2, $a2, $s2
/* 43CEC 8004C9BC 8E220014 */  lw         $v0, 0x14($s1)
/* 43CF0 8004C9C0 0202102B */  sltu       $v0, $s0, $v0
/* 43CF4 8004C9C4 1440FFED */  bnez       $v0, .L8004C97C
/* 43CF8 8004C9C8 2652000C */   addiu     $s2, $s2, 0xC
.L8004C9CC:
/* 43CFC 8004C9CC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 43D00 8004C9D0 8FB20018 */  lw         $s2, 0x18($sp)
/* 43D04 8004C9D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 43D08 8004C9D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 43D0C 8004C9DC 03E00008 */  jr         $ra
/* 43D10 8004C9E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004C9E4
/* 43D14 8004C9E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 43D18 8004C9E8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 43D1C 8004C9EC 00A08821 */  addu       $s1, $a1, $zero
/* 43D20 8004C9F0 AFB20020 */  sw         $s2, 0x20($sp)
/* 43D24 8004C9F4 00E09021 */  addu       $s2, $a3, $zero
/* 43D28 8004C9F8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 43D2C 8004C9FC AFB40028 */  sw         $s4, 0x28($sp)
/* 43D30 8004CA00 AFB30024 */  sw         $s3, 0x24($sp)
/* 43D34 8004CA04 AFB00018 */  sw         $s0, 0x18($sp)
/* 43D38 8004CA08 A6400000 */  sh         $zero, 0x0($s2)
/* 43D3C 8004CA0C 8E220028 */  lw         $v0, 0x28($s1)
/* 43D40 8004CA10 00C0A021 */  addu       $s4, $a2, $zero
/* 43D44 8004CA14 844400A0 */  lh         $a0, 0xA0($v0)
/* 43D48 8004CA18 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 43D4C 8004CA1C 0040F809 */  jalr       $v0
/* 43D50 8004CA20 02242021 */   addu      $a0, $s1, $a0
/* 43D54 8004CA24 24030007 */  addiu      $v1, $zero, 0x7
/* 43D58 8004CA28 10430006 */  beq        $v0, $v1, .L8004CA44
/* 43D5C 8004CA2C 00602821 */   addu      $a1, $v1, $zero
/* 43D60 8004CA30 8E220028 */  lw         $v0, 0x28($s1)
/* 43D64 8004CA34 84440098 */  lh         $a0, 0x98($v0)
/* 43D68 8004CA38 8C42009C */  lw         $v0, 0x9C($v0)
/* 43D6C 8004CA3C 0040F809 */  jalr       $v0
/* 43D70 8004CA40 02242021 */   addu      $a0, $s1, $a0
.L8004CA44:
/* 43D74 8004CA44 26330044 */  addiu      $s3, $s1, 0x44
.L8004CA48:
/* 43D78 8004CA48 8E220028 */  lw         $v0, 0x28($s1)
/* 43D7C 8004CA4C 844400A0 */  lh         $a0, 0xA0($v0)
/* 43D80 8004CA50 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 43D84 8004CA54 0040F809 */  jalr       $v0
/* 43D88 8004CA58 02242021 */   addu      $a0, $s1, $a0
/* 43D8C 8004CA5C 00401821 */  addu       $v1, $v0, $zero
/* 43D90 8004CA60 24020008 */  addiu      $v0, $zero, 0x8
/* 43D94 8004CA64 10620032 */  beq        $v1, $v0, .L8004CB30
/* 43D98 8004CA68 24020002 */   addiu     $v0, $zero, 0x2
/* 43D9C 8004CA6C 10620005 */  beq        $v1, $v0, .L8004CA84
/* 43DA0 8004CA70 24020004 */   addiu     $v0, $zero, 0x4
/* 43DA4 8004CA74 10620016 */  beq        $v1, $v0, .L8004CAD0
/* 43DA8 8004CA78 00002821 */   addu      $a1, $zero, $zero
/* 43DAC 8004CA7C 080132C3 */  j          .L8004CB0C
/* 43DB0 8004CA80 00000000 */   nop
.L8004CA84:
/* 43DB4 8004CA84 0C006DFE */  jal        strlen
/* 43DB8 8004CA88 02602021 */   addu      $a0, $s3, $zero
/* 43DBC 8004CA8C 2C420002 */  sltiu      $v0, $v0, 0x2
/* 43DC0 8004CA90 54400008 */  bnel       $v0, $zero, .L8004CAB4
/* 43DC4 8004CA94 27A40010 */   addiu     $a0, $sp, 0x10
/* 43DC8 8004CA98 8E220028 */  lw         $v0, 0x28($s1)
/* 43DCC 8004CA9C 00002821 */  addu       $a1, $zero, $zero
/* 43DD0 8004CAA0 84440098 */  lh         $a0, 0x98($v0)
/* 43DD4 8004CAA4 8C42009C */  lw         $v0, 0x9C($v0)
/* 43DD8 8004CAA8 0040F809 */  jalr       $v0
/* 43DDC 8004CAAC 02242021 */   addu      $a0, $s1, $a0
/* 43DE0 8004CAB0 27A40010 */  addiu      $a0, $sp, 0x10
.L8004CAB4:
/* 43DE4 8004CAB4 02602821 */  addu       $a1, $s3, $zero
/* 43DE8 8004CAB8 0C000708 */  jal        func_80001C20
/* 43DEC 8004CABC 24060001 */   addiu     $a2, $zero, 0x1
/* 43DF0 8004CAC0 96420000 */  lhu        $v0, 0x0($s2)
/* 43DF4 8004CAC4 93B00010 */  lbu        $s0, 0x10($sp)
/* 43DF8 8004CAC8 080132C0 */  j          .L8004CB00
/* 43DFC 8004CACC 00021040 */   sll       $v0, $v0, 1
.L8004CAD0:
/* 43E00 8004CAD0 8E300038 */  lw         $s0, 0x38($s1)
/* 43E04 8004CAD4 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 43E08 8004CAD8 0050102B */  sltu       $v0, $v0, $s0
/* 43E0C 8004CADC 10400006 */  beqz       $v0, .L8004CAF8
/* 43E10 8004CAE0 00000000 */   nop
/* 43E14 8004CAE4 8E220028 */  lw         $v0, 0x28($s1)
/* 43E18 8004CAE8 84440098 */  lh         $a0, 0x98($v0)
/* 43E1C 8004CAEC 8C42009C */  lw         $v0, 0x9C($v0)
/* 43E20 8004CAF0 0040F809 */  jalr       $v0
/* 43E24 8004CAF4 02242021 */   addu      $a0, $s1, $a0
.L8004CAF8:
/* 43E28 8004CAF8 96420000 */  lhu        $v0, 0x0($s2)
/* 43E2C 8004CAFC 00021040 */  sll        $v0, $v0, 1
.L8004CB00:
/* 43E30 8004CB00 00541021 */  addu       $v0, $v0, $s4
/* 43E34 8004CB04 080132C8 */  j          .L8004CB20
/* 43E38 8004CB08 A4500000 */   sh        $s0, 0x0($v0)
.L8004CB0C:
/* 43E3C 8004CB0C 8E220028 */  lw         $v0, 0x28($s1)
/* 43E40 8004CB10 84440098 */  lh         $a0, 0x98($v0)
/* 43E44 8004CB14 8C42009C */  lw         $v0, 0x9C($v0)
/* 43E48 8004CB18 0040F809 */  jalr       $v0
/* 43E4C 8004CB1C 02242021 */   addu      $a0, $s1, $a0
.L8004CB20:
/* 43E50 8004CB20 96420000 */  lhu        $v0, 0x0($s2)
/* 43E54 8004CB24 24420001 */  addiu      $v0, $v0, 0x1
/* 43E58 8004CB28 08013292 */  j          .L8004CA48
/* 43E5C 8004CB2C A6420000 */   sh        $v0, 0x0($s2)
.L8004CB30:
/* 43E60 8004CB30 8FBF002C */  lw         $ra, 0x2C($sp)
/* 43E64 8004CB34 8FB40028 */  lw         $s4, 0x28($sp)
/* 43E68 8004CB38 8FB30024 */  lw         $s3, 0x24($sp)
/* 43E6C 8004CB3C 8FB20020 */  lw         $s2, 0x20($sp)
/* 43E70 8004CB40 8FB1001C */  lw         $s1, 0x1C($sp)
/* 43E74 8004CB44 8FB00018 */  lw         $s0, 0x18($sp)
/* 43E78 8004CB48 03E00008 */  jr         $ra
/* 43E7C 8004CB4C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8004CB50
/* 43E80 8004CB50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43E84 8004CB54 AFB00010 */  sw         $s0, 0x10($sp)
/* 43E88 8004CB58 00808021 */  addu       $s0, $a0, $zero
/* 43E8C 8004CB5C AFBF0014 */  sw         $ra, 0x14($sp)
/* 43E90 8004CB60 8E04000C */  lw         $a0, 0xC($s0)
/* 43E94 8004CB64 10800004 */  beqz       $a0, .L8004CB78
/* 43E98 8004CB68 AE000014 */   sw        $zero, 0x14($s0)
/* 43E9C 8004CB6C 0C016E7A */  jal        func_8005B9E8
/* 43EA0 8004CB70 02002821 */   addu      $a1, $s0, $zero
/* 43EA4 8004CB74 AE00000C */  sw         $zero, 0xC($s0)
.L8004CB78:
/* 43EA8 8004CB78 8E020000 */  lw         $v0, 0x0($s0)
/* 43EAC 8004CB7C 10400003 */  beqz       $v0, .L8004CB8C
/* 43EB0 8004CB80 00000000 */   nop
/* 43EB4 8004CB84 0C0163B9 */  jal        func_80058EE4
/* 43EB8 8004CB88 02002021 */   addu      $a0, $s0, $zero
.L8004CB8C:
/* 43EBC 8004CB8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 43EC0 8004CB90 8FB00010 */  lw         $s0, 0x10($sp)
/* 43EC4 8004CB94 03E00008 */  jr         $ra
/* 43EC8 8004CB98 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004CB9C
/* 43ECC 8004CB9C 03E00008 */  jr         $ra
/* 43ED0 8004CBA0 00000000 */   nop

glabel func_8004CBA4
/* 43ED4 8004CBA4 03E00008 */  jr         $ra
/* 43ED8 8004CBA8 00000000 */   nop

glabel func_8004CBAC
/* 43EDC 8004CBAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43EE0 8004CBB0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 43EE4 8004CBB4 0C002513 */  jal        func_8000944C
/* 43EE8 8004CBB8 00000000 */   nop
/* 43EEC 8004CBBC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 43EF0 8004CBC0 03E00008 */  jr         $ra
/* 43EF4 8004CBC4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004CBC8
/* 43EF8 8004CBC8 8C820014 */  lw         $v0, 0x14($a0)
/* 43EFC 8004CBCC 03E00008 */  jr         $ra
/* 43F00 8004CBD0 0002102B */   sltu      $v0, $zero, $v0

glabel func_8004CBD4
/* 43F04 8004CBD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43F08 8004CBD8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 43F0C 8004CBDC 8C820000 */  lw         $v0, 0x0($a0)
/* 43F10 8004CBE0 10400003 */  beqz       $v0, .L8004CBF0
/* 43F14 8004CBE4 00001021 */   addu      $v0, $zero, $zero
/* 43F18 8004CBE8 0C016427 */  jal        func_8005909C
/* 43F1C 8004CBEC 00000000 */   nop
.L8004CBF0:
/* 43F20 8004CBF0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 43F24 8004CBF4 03E00008 */  jr         $ra
/* 43F28 8004CBF8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004CBFC
/* 43F2C 8004CBFC 8C820014 */  lw         $v0, 0x14($a0)
/* 43F30 8004CC00 03E00008 */  jr         $ra
/* 43F34 8004CC04 00000000 */   nop

glabel func_8004CC08
/* 43F38 8004CC08 8C820010 */  lw         $v0, 0x10($a0)
/* 43F3C 8004CC0C 03E00008 */  jr         $ra
/* 43F40 8004CC10 00000000 */   nop

glabel func_8004CC14
/* 43F44 8004CC14 03E00008 */  jr         $ra
/* 43F48 8004CC18 AC850010 */   sw        $a1, 0x10($a0)
