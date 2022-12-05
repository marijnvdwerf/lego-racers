.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EC460
/* 10A550 800EC460 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10A554 800EC464 AFB00010 */  sw         $s0, 0x10($sp)
/* 10A558 800EC468 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10A55C 800EC46C 0C018020 */  jal        func_80060080
/* 10A560 800EC470 00808021 */   addu      $s0, $a0, $zero
/* 10A564 800EC474 02001021 */  addu       $v0, $s0, $zero
/* 10A568 800EC478 3C03800D */  lui        $v1, %hi(D_menu_800CB898)
/* 10A56C 800EC47C 2463B898 */  addiu      $v1, $v1, %lo(D_menu_800CB898)
/* 10A570 800EC480 AC430008 */  sw         $v1, 0x8($v0)
/* 10A574 800EC484 AC40000C */  sw         $zero, 0xC($v0)
/* 10A578 800EC488 AC400010 */  sw         $zero, 0x10($v0)
/* 10A57C 800EC48C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10A580 800EC490 8FB00010 */  lw         $s0, 0x10($sp)
/* 10A584 800EC494 03E00008 */  jr         $ra
/* 10A588 800EC498 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EC49C
/* 10A58C 800EC49C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10A590 800EC4A0 AFB00010 */  sw         $s0, 0x10($sp)
/* 10A594 800EC4A4 00808021 */  addu       $s0, $a0, $zero
/* 10A598 800EC4A8 AFB10014 */  sw         $s1, 0x14($sp)
/* 10A59C 800EC4AC 00A08821 */  addu       $s1, $a1, $zero
/* 10A5A0 800EC4B0 3C02800D */  lui        $v0, %hi(D_menu_800CB898)
/* 10A5A4 800EC4B4 2442B898 */  addiu      $v0, $v0, %lo(D_menu_800CB898)
/* 10A5A8 800EC4B8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10A5AC 800EC4BC 0C03B1E1 */  jal        func_menu_800EC784
/* 10A5B0 800EC4C0 AE020008 */   sw        $v0, 0x8($s0)
/* 10A5B4 800EC4C4 02002021 */  addu       $a0, $s0, $zero
/* 10A5B8 800EC4C8 0C018029 */  jal        func_800600A4
/* 10A5BC 800EC4CC 02202821 */   addu      $a1, $s1, $zero
/* 10A5C0 800EC4D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10A5C4 800EC4D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 10A5C8 800EC4D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 10A5CC 800EC4DC 03E00008 */  jr         $ra
/* 10A5D0 800EC4E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EC4E4
/* 10A5D4 800EC4E4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10A5D8 800EC4E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 10A5DC 800EC4EC 00808021 */  addu       $s0, $a0, $zero
/* 10A5E0 800EC4F0 AFB20018 */  sw         $s2, 0x18($sp)
/* 10A5E4 800EC4F4 00A09021 */  addu       $s2, $a1, $zero
/* 10A5E8 800EC4F8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10A5EC 800EC4FC AFB3001C */  sw         $s3, 0x1C($sp)
/* 10A5F0 800EC500 AFB10014 */  sw         $s1, 0x14($sp)
/* 10A5F4 800EC504 96020000 */  lhu        $v0, 0x0($s0)
/* 10A5F8 800EC508 10400006 */  beqz       $v0, .Lmenu_800EC524
/* 10A5FC 800EC50C 00C08821 */   addu      $s1, $a2, $zero
/* 10A600 800EC510 8E020008 */  lw         $v0, 0x8($s0)
/* 10A604 800EC514 84440020 */  lh         $a0, 0x20($v0)
/* 10A608 800EC518 8C420024 */  lw         $v0, 0x24($v0)
/* 10A60C 800EC51C 0040F809 */  jalr       $v0
/* 10A610 800EC520 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800EC524:
/* 10A614 800EC524 02402021 */  addu       $a0, $s2, $zero
/* 10A618 800EC528 0C002723 */  jal        func_80009C8C
/* 10A61C 800EC52C A6110002 */   sh        $s1, 0x2($s0)
/* 10A620 800EC530 3C038012 */  lui        $v1, %hi(D_menu_80126BA0)
/* 10A624 800EC534 8C646BA0 */  lw         $a0, %lo(D_menu_80126BA0)($v1)
/* 10A628 800EC538 0C01FB65 */  jal        func_8007ED94
/* 10A62C 800EC53C A6020000 */   sh        $v0, 0x0($s0)
/* 10A630 800EC540 96020000 */  lhu        $v0, 0x0($s0)
/* 10A634 800EC544 000220C0 */  sll        $a0, $v0, 3
/* 10A638 800EC548 00822023 */  subu       $a0, $a0, $v0
/* 10A63C 800EC54C 0C00943C */  jal        func_800250F0
/* 10A640 800EC550 00042040 */   sll       $a0, $a0, 1
/* 10A644 800EC554 0C01FB72 */  jal        func_8007EDC8
/* 10A648 800EC558 AE02000C */   sw        $v0, 0xC($s0)
/* 10A64C 800EC55C 8E02000C */  lw         $v0, 0xC($s0)
/* 10A650 800EC560 14400007 */  bnez       $v0, .Lmenu_800EC580
/* 10A654 800EC564 00002821 */   addu      $a1, $zero, $zero
/* 10A658 800EC568 3C04800D */  lui        $a0, %hi(D_menu_800CB880)
/* 10A65C 800EC56C 2484B880 */  addiu      $a0, $a0, %lo(D_menu_800CB880)
/* 10A660 800EC570 00A03021 */  addu       $a2, $a1, $zero
/* 10A664 800EC574 0C011ACF */  jal        func_80046B3C
/* 10A668 800EC578 00A03821 */   addu      $a3, $a1, $zero
/* 10A66C 800EC57C 00002821 */  addu       $a1, $zero, $zero
.Lmenu_800EC580:
/* 10A670 800EC580 96020000 */  lhu        $v0, 0x0($s0)
/* 10A674 800EC584 8E04000C */  lw         $a0, 0xC($s0)
/* 10A678 800EC588 000230C0 */  sll        $a2, $v0, 3
/* 10A67C 800EC58C 00C23023 */  subu       $a2, $a2, $v0
/* 10A680 800EC590 0C000697 */  jal        func_80001A5C
/* 10A684 800EC594 00063040 */   sll       $a2, $a2, 1
/* 10A688 800EC598 96030000 */  lhu        $v1, 0x0($s0)
/* 10A68C 800EC59C 8E11000C */  lw         $s1, 0xC($s0)
/* 10A690 800EC5A0 000310C0 */  sll        $v0, $v1, 3
/* 10A694 800EC5A4 00431023 */  subu       $v0, $v0, $v1
/* 10A698 800EC5A8 00021040 */  sll        $v0, $v0, 1
/* 10A69C 800EC5AC 02229821 */  addu       $s3, $s1, $v0
/* 10A6A0 800EC5B0 96030002 */  lhu        $v1, 0x2($s0)
/* 10A6A4 800EC5B4 24020001 */  addiu      $v0, $zero, 0x1
/* 10A6A8 800EC5B8 14620024 */  bne        $v1, $v0, .Lmenu_800EC64C
/* 10A6AC 800EC5BC 0233102B */   sltu      $v0, $s1, $s3
/* 10A6B0 800EC5C0 10400040 */  beqz       $v0, .Lmenu_800EC6C4
/* 10A6B4 800EC5C4 2630000D */   addiu     $s0, $s1, 0xD
.Lmenu_800EC5C8:
/* 10A6B8 800EC5C8 0C002680 */  jal        func_80009A00
/* 10A6BC 800EC5CC 02402021 */   addu      $a0, $s2, $zero
/* 10A6C0 800EC5D0 02402021 */  addu       $a0, $s2, $zero
/* 10A6C4 800EC5D4 0C002680 */  jal        func_80009A00
/* 10A6C8 800EC5D8 A6220000 */   sh        $v0, 0x0($s1)
/* 10A6CC 800EC5DC 02402021 */  addu       $a0, $s2, $zero
/* 10A6D0 800EC5E0 0C002680 */  jal        func_80009A00
/* 10A6D4 800EC5E4 A602FFF5 */   sh        $v0, -0xB($s0)
/* 10A6D8 800EC5E8 02402021 */  addu       $a0, $s2, $zero
/* 10A6DC 800EC5EC 0C002680 */  jal        func_80009A00
/* 10A6E0 800EC5F0 A602FFF7 */   sh        $v0, -0x9($s0)
/* 10A6E4 800EC5F4 02402021 */  addu       $a0, $s2, $zero
/* 10A6E8 800EC5F8 0C002680 */  jal        func_80009A00
/* 10A6EC 800EC5FC A602FFF9 */   sh        $v0, -0x7($s0)
/* 10A6F0 800EC600 02402021 */  addu       $a0, $s2, $zero
/* 10A6F4 800EC604 0C002680 */  jal        func_80009A00
/* 10A6F8 800EC608 A602FFFB */   sh        $v0, -0x5($s0)
/* 10A6FC 800EC60C 02402021 */  addu       $a0, $s2, $zero
/* 10A700 800EC610 0C002680 */  jal        func_80009A00
/* 10A704 800EC614 A202FFFD */   sb        $v0, -0x3($s0)
/* 10A708 800EC618 02402021 */  addu       $a0, $s2, $zero
/* 10A70C 800EC61C 0C002680 */  jal        func_80009A00
/* 10A710 800EC620 A202FFFE */   sb        $v0, -0x2($s0)
/* 10A714 800EC624 02402021 */  addu       $a0, $s2, $zero
/* 10A718 800EC628 0C002680 */  jal        func_80009A00
/* 10A71C 800EC62C A202FFFF */   sb        $v0, -0x1($s0)
/* 10A720 800EC630 A2020000 */  sb         $v0, 0x0($s0)
/* 10A724 800EC634 2631000E */  addiu      $s1, $s1, 0xE
/* 10A728 800EC638 0233102B */  sltu       $v0, $s1, $s3
/* 10A72C 800EC63C 1440FFE2 */  bnez       $v0, .Lmenu_800EC5C8
/* 10A730 800EC640 2610000E */   addiu     $s0, $s0, 0xE
/* 10A734 800EC644 0803B1B2 */  j          .Lmenu_800EC6C8
/* 10A738 800EC648 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800EC64C:
/* 10A73C 800EC64C 1040001D */  beqz       $v0, .Lmenu_800EC6C4
/* 10A740 800EC650 2630000C */   addiu     $s0, $s1, 0xC
.Lmenu_800EC654:
/* 10A744 800EC654 0C002680 */  jal        func_80009A00
/* 10A748 800EC658 02402021 */   addu      $a0, $s2, $zero
/* 10A74C 800EC65C 02402021 */  addu       $a0, $s2, $zero
/* 10A750 800EC660 0C002680 */  jal        func_80009A00
/* 10A754 800EC664 A6220000 */   sh        $v0, 0x0($s1)
/* 10A758 800EC668 02402021 */  addu       $a0, $s2, $zero
/* 10A75C 800EC66C 0C002680 */  jal        func_80009A00
/* 10A760 800EC670 A602FFF6 */   sh        $v0, -0xA($s0)
/* 10A764 800EC674 02402021 */  addu       $a0, $s2, $zero
/* 10A768 800EC678 0C002680 */  jal        func_80009A00
/* 10A76C 800EC67C A602FFF8 */   sh        $v0, -0x8($s0)
/* 10A770 800EC680 02402021 */  addu       $a0, $s2, $zero
/* 10A774 800EC684 0C002680 */  jal        func_80009A00
/* 10A778 800EC688 A602FFFA */   sh        $v0, -0x6($s0)
/* 10A77C 800EC68C 02402021 */  addu       $a0, $s2, $zero
/* 10A780 800EC690 0C002680 */  jal        func_80009A00
/* 10A784 800EC694 A602FFFC */   sh        $v0, -0x4($s0)
/* 10A788 800EC698 02402021 */  addu       $a0, $s2, $zero
/* 10A78C 800EC69C 0C002680 */  jal        func_80009A00
/* 10A790 800EC6A0 A202FFFE */   sb        $v0, -0x2($s0)
/* 10A794 800EC6A4 02402021 */  addu       $a0, $s2, $zero
/* 10A798 800EC6A8 0C002680 */  jal        func_80009A00
/* 10A79C 800EC6AC A202FFFF */   sb        $v0, -0x1($s0)
/* 10A7A0 800EC6B0 A2020000 */  sb         $v0, 0x0($s0)
/* 10A7A4 800EC6B4 2631000E */  addiu      $s1, $s1, 0xE
/* 10A7A8 800EC6B8 0233102B */  sltu       $v0, $s1, $s3
/* 10A7AC 800EC6BC 1440FFE5 */  bnez       $v0, .Lmenu_800EC654
/* 10A7B0 800EC6C0 2610000E */   addiu     $s0, $s0, 0xE
.Lmenu_800EC6C4:
/* 10A7B4 800EC6C4 02402021 */  addu       $a0, $s2, $zero
.Lmenu_800EC6C8:
/* 10A7B8 800EC6C8 0C0026F4 */  jal        func_80009BD0
/* 10A7BC 800EC6CC 24050006 */   addiu     $a1, $zero, 0x6
/* 10A7C0 800EC6D0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10A7C4 800EC6D4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10A7C8 800EC6D8 8FB20018 */  lw         $s2, 0x18($sp)
/* 10A7CC 800EC6DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 10A7D0 800EC6E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 10A7D4 800EC6E4 03E00008 */  jr         $ra
/* 10A7D8 800EC6E8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EC6EC
/* 10A7DC 800EC6EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10A7E0 800EC6F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 10A7E4 800EC6F4 00808021 */  addu       $s0, $a0, $zero
/* 10A7E8 800EC6F8 3C028012 */  lui        $v0, %hi(D_menu_80126BA0)
/* 10A7EC 800EC6FC 8C446BA0 */  lw         $a0, %lo(D_menu_80126BA0)($v0)
/* 10A7F0 800EC700 AFB10014 */  sw         $s1, 0x14($sp)
/* 10A7F4 800EC704 00C08821 */  addu       $s1, $a2, $zero
/* 10A7F8 800EC708 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10A7FC 800EC70C 0C01FB65 */  jal        func_8007ED94
/* 10A800 800EC710 A6050000 */   sh        $a1, 0x0($s0)
/* 10A804 800EC714 96020000 */  lhu        $v0, 0x0($s0)
/* 10A808 800EC718 000220C0 */  sll        $a0, $v0, 3
/* 10A80C 800EC71C 00822023 */  subu       $a0, $a0, $v0
/* 10A810 800EC720 0C00943C */  jal        func_800250F0
/* 10A814 800EC724 00042040 */   sll       $a0, $a0, 1
/* 10A818 800EC728 0C01FB72 */  jal        func_8007EDC8
/* 10A81C 800EC72C AE02000C */   sw        $v0, 0xC($s0)
/* 10A820 800EC730 8E02000C */  lw         $v0, 0xC($s0)
/* 10A824 800EC734 14400007 */  bnez       $v0, .Lmenu_800EC754
/* 10A828 800EC738 00002821 */   addu      $a1, $zero, $zero
/* 10A82C 800EC73C 3C04800D */  lui        $a0, %hi(D_menu_800CB880)
/* 10A830 800EC740 2484B880 */  addiu      $a0, $a0, %lo(D_menu_800CB880)
/* 10A834 800EC744 00A03021 */  addu       $a2, $a1, $zero
/* 10A838 800EC748 0C011ACF */  jal        func_80046B3C
/* 10A83C 800EC74C 00A03821 */   addu      $a3, $a1, $zero
/* 10A840 800EC750 00002821 */  addu       $a1, $zero, $zero
.Lmenu_800EC754:
/* 10A844 800EC754 96020000 */  lhu        $v0, 0x0($s0)
/* 10A848 800EC758 8E04000C */  lw         $a0, 0xC($s0)
/* 10A84C 800EC75C 000230C0 */  sll        $a2, $v0, 3
/* 10A850 800EC760 00C23023 */  subu       $a2, $a2, $v0
/* 10A854 800EC764 0C000697 */  jal        func_80001A5C
/* 10A858 800EC768 00063040 */   sll       $a2, $a2, 1
/* 10A85C 800EC76C A6110002 */  sh         $s1, 0x2($s0)
/* 10A860 800EC770 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10A864 800EC774 8FB10014 */  lw         $s1, 0x14($sp)
/* 10A868 800EC778 8FB00010 */  lw         $s0, 0x10($sp)
/* 10A86C 800EC77C 03E00008 */  jr         $ra
/* 10A870 800EC780 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EC784
/* 10A874 800EC784 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10A878 800EC788 AFB00010 */  sw         $s0, 0x10($sp)
/* 10A87C 800EC78C 00808021 */  addu       $s0, $a0, $zero
/* 10A880 800EC790 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10A884 800EC794 8E04000C */  lw         $a0, 0xC($s0)
/* 10A888 800EC798 50800005 */  beql       $a0, $zero, .Lmenu_800EC7B0
/* 10A88C 800EC79C AE000010 */   sw        $zero, 0x10($s0)
/* 10A890 800EC7A0 0C009444 */  jal        func_80025110
/* 10A894 800EC7A4 00000000 */   nop
/* 10A898 800EC7A8 AE00000C */  sw         $zero, 0xC($s0)
/* 10A89C 800EC7AC AE000010 */  sw         $zero, 0x10($s0)
.Lmenu_800EC7B0:
/* 10A8A0 800EC7B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10A8A4 800EC7B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 10A8A8 800EC7B8 03E00008 */  jr         $ra
/* 10A8AC 800EC7BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EC7C0
/* 10A8B0 800EC7C0 000510C0 */  sll        $v0, $a1, 3
/* 10A8B4 800EC7C4 00451023 */  subu       $v0, $v0, $a1
/* 10A8B8 800EC7C8 8C83000C */  lw         $v1, 0xC($a0)
/* 10A8BC 800EC7CC 00021040 */  sll        $v0, $v0, 1
/* 10A8C0 800EC7D0 00621821 */  addu       $v1, $v1, $v0
/* 10A8C4 800EC7D4 84620000 */  lh         $v0, 0x0($v1)
/* 10A8C8 800EC7D8 44820000 */  mtc1       $v0, $f0
/* 10A8CC 800EC7DC 46800020 */  cvt.s.w    $f0, $f0
/* 10A8D0 800EC7E0 E4C00000 */  swc1       $f0, 0x0($a2)
/* 10A8D4 800EC7E4 84620002 */  lh         $v0, 0x2($v1)
/* 10A8D8 800EC7E8 44820000 */  mtc1       $v0, $f0
/* 10A8DC 800EC7EC 46800020 */  cvt.s.w    $f0, $f0
/* 10A8E0 800EC7F0 E4C00004 */  swc1       $f0, 0x4($a2)
/* 10A8E4 800EC7F4 84620004 */  lh         $v0, 0x4($v1)
/* 10A8E8 800EC7F8 44820000 */  mtc1       $v0, $f0
/* 10A8EC 800EC7FC 46800020 */  cvt.s.w    $f0, $f0
/* 10A8F0 800EC800 03E00008 */  jr         $ra
/* 10A8F4 800EC804 E4C00008 */   swc1      $f0, 0x8($a2)

glabel func_menu_800EC808
/* 10A8F8 800EC808 000510C0 */  sll        $v0, $a1, 3
/* 10A8FC 800EC80C 00451023 */  subu       $v0, $v0, $a1
/* 10A900 800EC810 8C83000C */  lw         $v1, 0xC($a0)
/* 10A904 800EC814 00021040 */  sll        $v0, $v0, 1
/* 10A908 800EC818 00621821 */  addu       $v1, $v1, $v0
/* 10A90C 800EC81C 84620006 */  lh         $v0, 0x6($v1)
/* 10A910 800EC820 3C01800D */  lui        $at, %hi(D_menu_800CB884)
/* 10A914 800EC824 C422B884 */  lwc1       $f2, %lo(D_menu_800CB884)($at)
/* 10A918 800EC828 44820000 */  mtc1       $v0, $f0
/* 10A91C 800EC82C 46800020 */  cvt.s.w    $f0, $f0
/* 10A920 800EC830 46020002 */  mul.s      $f0, $f0, $f2
/* 10A924 800EC834 E4C00000 */  swc1       $f0, 0x0($a2)
/* 10A928 800EC838 84620008 */  lh         $v0, 0x8($v1)
/* 10A92C 800EC83C 44820000 */  mtc1       $v0, $f0
/* 10A930 800EC840 46800020 */  cvt.s.w    $f0, $f0
/* 10A934 800EC844 46020002 */  mul.s      $f0, $f0, $f2
/* 10A938 800EC848 03E00008 */  jr         $ra
/* 10A93C 800EC84C E4C00004 */   swc1      $f0, 0x4($a2)

glabel func_menu_800EC850
/* 10A940 800EC850 000510C0 */  sll        $v0, $a1, 3
/* 10A944 800EC854 00451023 */  subu       $v0, $v0, $a1
/* 10A948 800EC858 8C83000C */  lw         $v1, 0xC($a0)
/* 10A94C 800EC85C 00021040 */  sll        $v0, $v0, 1
/* 10A950 800EC860 00621821 */  addu       $v1, $v1, $v0
/* 10A954 800EC864 8062000A */  lb         $v0, 0xA($v1)
/* 10A958 800EC868 3C01800D */  lui        $at, %hi(D_menu_800CB888)
/* 10A95C 800EC86C C422B888 */  lwc1       $f2, %lo(D_menu_800CB888)($at)
/* 10A960 800EC870 44820000 */  mtc1       $v0, $f0
/* 10A964 800EC874 46800020 */  cvt.s.w    $f0, $f0
/* 10A968 800EC878 46020002 */  mul.s      $f0, $f0, $f2
/* 10A96C 800EC87C E4C00000 */  swc1       $f0, 0x0($a2)
/* 10A970 800EC880 8062000B */  lb         $v0, 0xB($v1)
/* 10A974 800EC884 44820000 */  mtc1       $v0, $f0
/* 10A978 800EC888 46800020 */  cvt.s.w    $f0, $f0
/* 10A97C 800EC88C 46020002 */  mul.s      $f0, $f0, $f2
/* 10A980 800EC890 E4C00004 */  swc1       $f0, 0x4($a2)
/* 10A984 800EC894 8062000C */  lb         $v0, 0xC($v1)
/* 10A988 800EC898 44820000 */  mtc1       $v0, $f0
/* 10A98C 800EC89C 46800020 */  cvt.s.w    $f0, $f0
/* 10A990 800EC8A0 46020002 */  mul.s      $f0, $f0, $f2
/* 10A994 800EC8A4 03E00008 */  jr         $ra
/* 10A998 800EC8A8 E4C00008 */   swc1      $f0, 0x8($a2)

glabel func_menu_800EC8AC
/* 10A99C 800EC8AC 000510C0 */  sll        $v0, $a1, 3
/* 10A9A0 800EC8B0 00451023 */  subu       $v0, $v0, $a1
/* 10A9A4 800EC8B4 8C83000C */  lw         $v1, 0xC($a0)
/* 10A9A8 800EC8B8 00021040 */  sll        $v0, $v0, 1
/* 10A9AC 800EC8BC 00621821 */  addu       $v1, $v1, $v0
/* 10A9B0 800EC8C0 8867000A */  lwl        $a3, 0xA($v1)
/* 10A9B4 800EC8C4 9867000D */  lwr        $a3, 0xD($v1)
/* 10A9B8 800EC8C8 A8C70000 */  swl        $a3, 0x0($a2)
/* 10A9BC 800EC8CC B8C70003 */  swr        $a3, 0x3($a2)
/* 10A9C0 800EC8D0 03E00008 */  jr         $ra
/* 10A9C4 800EC8D4 00000000 */   nop

glabel func_menu_800EC8D8
/* 10A9C8 800EC8D8 000510C0 */  sll        $v0, $a1, 3
/* 10A9CC 800EC8DC 00451023 */  subu       $v0, $v0, $a1
/* 10A9D0 800EC8E0 00021040 */  sll        $v0, $v0, 1
/* 10A9D4 800EC8E4 8C83000C */  lw         $v1, 0xC($a0)
/* 10A9D8 800EC8E8 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 10A9DC 800EC8EC 00621821 */  addu       $v1, $v1, $v0
/* 10A9E0 800EC8F0 4600008D */  trunc.w.s  $f2, $f0
/* 10A9E4 800EC8F4 44021000 */  mfc1       $v0, $f2
/* 10A9E8 800EC8F8 A4620000 */  sh         $v0, 0x0($v1)
/* 10A9EC 800EC8FC C4C00004 */  lwc1       $f0, 0x4($a2)
/* 10A9F0 800EC900 4600008D */  trunc.w.s  $f2, $f0
/* 10A9F4 800EC904 44021000 */  mfc1       $v0, $f2
/* 10A9F8 800EC908 A4620002 */  sh         $v0, 0x2($v1)
/* 10A9FC 800EC90C C4C00008 */  lwc1       $f0, 0x8($a2)
/* 10AA00 800EC910 4600008D */  trunc.w.s  $f2, $f0
/* 10AA04 800EC914 44021000 */  mfc1       $v0, $f2
/* 10AA08 800EC918 03E00008 */  jr         $ra
/* 10AA0C 800EC91C A4620004 */   sh        $v0, 0x4($v1)

glabel func_menu_800EC920
/* 10AA10 800EC920 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 10AA14 800EC924 3C01800D */  lui        $at, %hi(D_menu_800CB88C)
/* 10AA18 800EC928 C422B88C */  lwc1       $f2, %lo(D_menu_800CB88C)($at)
/* 10AA1C 800EC92C 000510C0 */  sll        $v0, $a1, 3
/* 10AA20 800EC930 46020002 */  mul.s      $f0, $f0, $f2
/* 10AA24 800EC934 00451023 */  subu       $v0, $v0, $a1
/* 10AA28 800EC938 8C83000C */  lw         $v1, 0xC($a0)
/* 10AA2C 800EC93C 00021040 */  sll        $v0, $v0, 1
/* 10AA30 800EC940 00621821 */  addu       $v1, $v1, $v0
/* 10AA34 800EC944 4600010D */  trunc.w.s  $f4, $f0
/* 10AA38 800EC948 44022000 */  mfc1       $v0, $f4
/* 10AA3C 800EC94C A4620006 */  sh         $v0, 0x6($v1)
/* 10AA40 800EC950 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 10AA44 800EC954 46020002 */  mul.s      $f0, $f0, $f2
/* 10AA48 800EC958 4600010D */  trunc.w.s  $f4, $f0
/* 10AA4C 800EC95C 44022000 */  mfc1       $v0, $f4
/* 10AA50 800EC960 03E00008 */  jr         $ra
/* 10AA54 800EC964 A4620008 */   sh        $v0, 0x8($v1)

glabel func_menu_800EC968
/* 10AA58 800EC968 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 10AA5C 800EC96C 3C01800D */  lui        $at, %hi(D_menu_800CB890)
/* 10AA60 800EC970 C422B890 */  lwc1       $f2, %lo(D_menu_800CB890)($at)
/* 10AA64 800EC974 000510C0 */  sll        $v0, $a1, 3
/* 10AA68 800EC978 46020002 */  mul.s      $f0, $f0, $f2
/* 10AA6C 800EC97C 00451023 */  subu       $v0, $v0, $a1
/* 10AA70 800EC980 8C83000C */  lw         $v1, 0xC($a0)
/* 10AA74 800EC984 00021040 */  sll        $v0, $v0, 1
/* 10AA78 800EC988 00621821 */  addu       $v1, $v1, $v0
/* 10AA7C 800EC98C 4600010D */  trunc.w.s  $f4, $f0
/* 10AA80 800EC990 44022000 */  mfc1       $v0, $f4
/* 10AA84 800EC994 A062000A */  sb         $v0, 0xA($v1)
/* 10AA88 800EC998 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 10AA8C 800EC99C 46020002 */  mul.s      $f0, $f0, $f2
/* 10AA90 800EC9A0 4600010D */  trunc.w.s  $f4, $f0
/* 10AA94 800EC9A4 44022000 */  mfc1       $v0, $f4
/* 10AA98 800EC9A8 A062000B */  sb         $v0, 0xB($v1)
/* 10AA9C 800EC9AC C4C00008 */  lwc1       $f0, 0x8($a2)
/* 10AAA0 800EC9B0 46020002 */  mul.s      $f0, $f0, $f2
/* 10AAA4 800EC9B4 240200FF */  addiu      $v0, $zero, 0xFF
/* 10AAA8 800EC9B8 A062000D */  sb         $v0, 0xD($v1)
/* 10AAAC 800EC9BC 4600010D */  trunc.w.s  $f4, $f0
/* 10AAB0 800EC9C0 44022000 */  mfc1       $v0, $f4
/* 10AAB4 800EC9C4 03E00008 */  jr         $ra
/* 10AAB8 800EC9C8 A062000C */   sb        $v0, 0xC($v1)

glabel func_menu_800EC9CC
/* 10AABC 800EC9CC 000510C0 */  sll        $v0, $a1, 3
/* 10AAC0 800EC9D0 00451023 */  subu       $v0, $v0, $a1
/* 10AAC4 800EC9D4 8C83000C */  lw         $v1, 0xC($a0)
/* 10AAC8 800EC9D8 00021040 */  sll        $v0, $v0, 1
/* 10AACC 800EC9DC 00621821 */  addu       $v1, $v1, $v0
/* 10AAD0 800EC9E0 88C70000 */  lwl        $a3, 0x0($a2)
/* 10AAD4 800EC9E4 98C70003 */  lwr        $a3, 0x3($a2)
/* 10AAD8 800EC9E8 A867000A */  swl        $a3, 0xA($v1)
/* 10AADC 800EC9EC B867000D */  swr        $a3, 0xD($v1)
/* 10AAE0 800EC9F0 03E00008 */  jr         $ra
/* 10AAE4 800EC9F4 00000000 */   nop

glabel func_menu_800EC9F8
/* 10AAE8 800EC9F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10AAEC 800EC9FC AFB20018 */  sw         $s2, 0x18($sp)
/* 10AAF0 800ECA00 00809021 */  addu       $s2, $a0, $zero
/* 10AAF4 800ECA04 AFB00010 */  sw         $s0, 0x10($sp)
/* 10AAF8 800ECA08 00C08021 */  addu       $s0, $a2, $zero
/* 10AAFC 800ECA0C AFB10014 */  sw         $s1, 0x14($sp)
/* 10AB00 800ECA10 00E08821 */  addu       $s1, $a3, $zero
/* 10AB04 800ECA14 00A03021 */  addu       $a2, $a1, $zero
/* 10AB08 800ECA18 AFBF001C */  sw         $ra, 0x1C($sp)
/* 10AB0C 800ECA1C 8E420008 */  lw         $v0, 0x8($s2)
/* 10AB10 800ECA20 8E450010 */  lw         $a1, 0x10($s2)
/* 10AB14 800ECA24 84440050 */  lh         $a0, 0x50($v0)
/* 10AB18 800ECA28 8C420054 */  lw         $v0, 0x54($v0)
/* 10AB1C 800ECA2C 0040F809 */  jalr       $v0
/* 10AB20 800ECA30 02442021 */   addu      $a0, $s2, $a0
/* 10AB24 800ECA34 02003021 */  addu       $a2, $s0, $zero
/* 10AB28 800ECA38 8E420008 */  lw         $v0, 0x8($s2)
/* 10AB2C 800ECA3C 8E450010 */  lw         $a1, 0x10($s2)
/* 10AB30 800ECA40 84440058 */  lh         $a0, 0x58($v0)
/* 10AB34 800ECA44 8C42005C */  lw         $v0, 0x5C($v0)
/* 10AB38 800ECA48 0040F809 */  jalr       $v0
/* 10AB3C 800ECA4C 02442021 */   addu      $a0, $s2, $a0
/* 10AB40 800ECA50 02203021 */  addu       $a2, $s1, $zero
/* 10AB44 800ECA54 8E420008 */  lw         $v0, 0x8($s2)
/* 10AB48 800ECA58 8E450010 */  lw         $a1, 0x10($s2)
/* 10AB4C 800ECA5C 84440068 */  lh         $a0, 0x68($v0)
/* 10AB50 800ECA60 8C42006C */  lw         $v0, 0x6C($v0)
/* 10AB54 800ECA64 0040F809 */  jalr       $v0
/* 10AB58 800ECA68 02442021 */   addu      $a0, $s2, $a0
/* 10AB5C 800ECA6C 8E42000C */  lw         $v0, 0xC($s2)
/* 10AB60 800ECA70 8E430010 */  lw         $v1, 0x10($s2)
/* 10AB64 800ECA74 00404021 */  addu       $t0, $v0, $zero
/* 10AB68 800ECA78 000310C0 */  sll        $v0, $v1, 3
/* 10AB6C 800ECA7C 00431023 */  subu       $v0, $v0, $v1
/* 10AB70 800ECA80 00021040 */  sll        $v0, $v0, 1
/* 10AB74 800ECA84 01023021 */  addu       $a2, $t0, $v0
/* 10AB78 800ECA88 0106102B */  sltu       $v0, $t0, $a2
/* 10AB7C 800ECA8C 1040005C */  beqz       $v0, .Lmenu_800ECC00
/* 10AB80 800ECA90 3C028012 */   lui       $v0, %hi(D_menu_80126B90)
/* 10AB84 800ECA94 2504000D */  addiu      $a0, $t0, 0xD
/* 10AB88 800ECA98 8C4C6B90 */  lw         $t4, %lo(D_menu_80126B90)($v0)
/* 10AB8C 800ECA9C 3C028012 */  lui        $v0, %hi(D_menu_80126B94)
/* 10AB90 800ECAA0 8C4B6B94 */  lw         $t3, %lo(D_menu_80126B94)($v0)
/* 10AB94 800ECAA4 3C028012 */  lui        $v0, %hi(D_menu_80126B98)
/* 10AB98 800ECAA8 84CF0000 */  lh         $t7, 0x0($a2)
/* 10AB9C 800ECAAC 84CE0002 */  lh         $t6, 0x2($a2)
/* 10ABA0 800ECAB0 84CD0004 */  lh         $t5, 0x4($a2)
/* 10ABA4 800ECAB4 8C4A6B98 */  lw         $t2, %lo(D_menu_80126B98)($v0)
.Lmenu_800ECAB8:
/* 10ABA8 800ECAB8 85020000 */  lh         $v0, 0x0($t0)
/* 10ABAC 800ECABC 004F1023 */  subu       $v0, $v0, $t7
/* 10ABB0 800ECAC0 00420018 */  mult       $v0, $v0
/* 10ABB4 800ECAC4 8482FFF5 */  lh         $v0, -0xB($a0)
/* 10ABB8 800ECAC8 00002812 */  mflo       $a1
/* 10ABBC 800ECACC 004E1023 */  subu       $v0, $v0, $t6
/* 10ABC0 800ECAD0 00000000 */  nop
/* 10ABC4 800ECAD4 00420018 */  mult       $v0, $v0
/* 10ABC8 800ECAD8 8482FFF7 */  lh         $v0, -0x9($a0)
/* 10ABCC 800ECADC 00001812 */  mflo       $v1
/* 10ABD0 800ECAE0 004D1023 */  subu       $v0, $v0, $t5
/* 10ABD4 800ECAE4 00000000 */  nop
/* 10ABD8 800ECAE8 00420018 */  mult       $v0, $v0
/* 10ABDC 800ECAEC 00A31021 */  addu       $v0, $a1, $v1
/* 10ABE0 800ECAF0 00004812 */  mflo       $t1
/* 10ABE4 800ECAF4 00491021 */  addu       $v0, $v0, $t1
/* 10ABE8 800ECAF8 0182102A */  slt        $v0, $t4, $v0
/* 10ABEC 800ECAFC 5440003C */  bnel       $v0, $zero, .Lmenu_800ECBF0
/* 10ABF0 800ECB00 2508000E */   addiu     $t0, $t0, 0xE
/* 10ABF4 800ECB04 8483FFF9 */  lh         $v1, -0x7($a0)
/* 10ABF8 800ECB08 84C20006 */  lh         $v0, 0x6($a2)
/* 10ABFC 800ECB0C 00621023 */  subu       $v0, $v1, $v0
/* 10AC00 800ECB10 00420018 */  mult       $v0, $v0
/* 10AC04 800ECB14 8483FFFB */  lh         $v1, -0x5($a0)
/* 10AC08 800ECB18 84C20008 */  lh         $v0, 0x8($a2)
/* 10AC0C 800ECB1C 00002812 */  mflo       $a1
/* 10AC10 800ECB20 00621023 */  subu       $v0, $v1, $v0
/* 10AC14 800ECB24 00000000 */  nop
/* 10AC18 800ECB28 00420018 */  mult       $v0, $v0
/* 10AC1C 800ECB2C 00001812 */  mflo       $v1
/* 10AC20 800ECB30 00A31021 */  addu       $v0, $a1, $v1
/* 10AC24 800ECB34 0162102A */  slt        $v0, $t3, $v0
/* 10AC28 800ECB38 5440002D */  bnel       $v0, $zero, .Lmenu_800ECBF0
/* 10AC2C 800ECB3C 2508000E */   addiu     $t0, $t0, 0xE
/* 10AC30 800ECB40 9083FFFD */  lbu        $v1, -0x3($a0)
/* 10AC34 800ECB44 90C2000A */  lbu        $v0, 0xA($a2)
/* 10AC38 800ECB48 00621023 */  subu       $v0, $v1, $v0
/* 10AC3C 800ECB4C 00420018 */  mult       $v0, $v0
/* 10AC40 800ECB50 9083FFFE */  lbu        $v1, -0x2($a0)
/* 10AC44 800ECB54 90C2000B */  lbu        $v0, 0xB($a2)
/* 10AC48 800ECB58 00004812 */  mflo       $t1
/* 10AC4C 800ECB5C 00621023 */  subu       $v0, $v1, $v0
/* 10AC50 800ECB60 00000000 */  nop
/* 10AC54 800ECB64 00420018 */  mult       $v0, $v0
/* 10AC58 800ECB68 9083FFFF */  lbu        $v1, -0x1($a0)
/* 10AC5C 800ECB6C 90C2000C */  lbu        $v0, 0xC($a2)
/* 10AC60 800ECB70 00003812 */  mflo       $a3
/* 10AC64 800ECB74 00621023 */  subu       $v0, $v1, $v0
/* 10AC68 800ECB78 00000000 */  nop
/* 10AC6C 800ECB7C 00420018 */  mult       $v0, $v0
/* 10AC70 800ECB80 90C3000D */  lbu        $v1, 0xD($a2)
/* 10AC74 800ECB84 90820000 */  lbu        $v0, 0x0($a0)
/* 10AC78 800ECB88 00002812 */  mflo       $a1
/* 10AC7C 800ECB8C 00431023 */  subu       $v0, $v0, $v1
/* 10AC80 800ECB90 00000000 */  nop
/* 10AC84 800ECB94 00420018 */  mult       $v0, $v0
/* 10AC88 800ECB98 01271021 */  addu       $v0, $t1, $a3
/* 10AC8C 800ECB9C 00451021 */  addu       $v0, $v0, $a1
/* 10AC90 800ECBA0 00001812 */  mflo       $v1
/* 10AC94 800ECBA4 00431021 */  addu       $v0, $v0, $v1
/* 10AC98 800ECBA8 0142102A */  slt        $v0, $t2, $v0
/* 10AC9C 800ECBAC 54400010 */  bnel       $v0, $zero, .Lmenu_800ECBF0
/* 10ACA0 800ECBB0 2508000E */   addiu     $t0, $t0, 0xE
/* 10ACA4 800ECBB4 8E44000C */  lw         $a0, 0xC($s2)
/* 10ACA8 800ECBB8 01042023 */  subu       $a0, $t0, $a0
/* 10ACAC 800ECBBC 000410C0 */  sll        $v0, $a0, 3
/* 10ACB0 800ECBC0 00441021 */  addu       $v0, $v0, $a0
/* 10ACB4 800ECBC4 00021980 */  sll        $v1, $v0, 6
/* 10ACB8 800ECBC8 00431021 */  addu       $v0, $v0, $v1
/* 10ACBC 800ECBCC 000210C0 */  sll        $v0, $v0, 3
/* 10ACC0 800ECBD0 00441021 */  addu       $v0, $v0, $a0
/* 10ACC4 800ECBD4 00021BC0 */  sll        $v1, $v0, 15
/* 10ACC8 800ECBD8 00431021 */  addu       $v0, $v0, $v1
/* 10ACCC 800ECBDC 000210C0 */  sll        $v0, $v0, 3
/* 10ACD0 800ECBE0 00441021 */  addu       $v0, $v0, $a0
/* 10ACD4 800ECBE4 00021023 */  negu       $v0, $v0
/* 10ACD8 800ECBE8 0803B303 */  j          .Lmenu_800ECC0C
/* 10ACDC 800ECBEC 00021043 */   sra       $v0, $v0, 1
.Lmenu_800ECBF0:
/* 10ACE0 800ECBF0 0106102B */  sltu       $v0, $t0, $a2
/* 10ACE4 800ECBF4 1440FFB0 */  bnez       $v0, .Lmenu_800ECAB8
/* 10ACE8 800ECBF8 2484000E */   addiu     $a0, $a0, 0xE
/* 10ACEC 800ECBFC 8E430010 */  lw         $v1, 0x10($s2)
.Lmenu_800ECC00:
/* 10ACF0 800ECC00 00601021 */  addu       $v0, $v1, $zero
/* 10ACF4 800ECC04 24630001 */  addiu      $v1, $v1, 0x1
/* 10ACF8 800ECC08 AE430010 */  sw         $v1, 0x10($s2)
.Lmenu_800ECC0C:
/* 10ACFC 800ECC0C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 10AD00 800ECC10 8FB20018 */  lw         $s2, 0x18($sp)
/* 10AD04 800ECC14 8FB10014 */  lw         $s1, 0x14($sp)
/* 10AD08 800ECC18 8FB00010 */  lw         $s0, 0x10($sp)
/* 10AD0C 800ECC1C 03E00008 */  jr         $ra
/* 10AD10 800ECC20 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800ECC24
/* 10AD14 800ECC24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10AD18 800ECC28 AFB20018 */  sw         $s2, 0x18($sp)
/* 10AD1C 800ECC2C 00809021 */  addu       $s2, $a0, $zero
/* 10AD20 800ECC30 AFB00010 */  sw         $s0, 0x10($sp)
/* 10AD24 800ECC34 00C08021 */  addu       $s0, $a2, $zero
/* 10AD28 800ECC38 AFB10014 */  sw         $s1, 0x14($sp)
/* 10AD2C 800ECC3C 00E08821 */  addu       $s1, $a3, $zero
/* 10AD30 800ECC40 00A03021 */  addu       $a2, $a1, $zero
/* 10AD34 800ECC44 AFBF001C */  sw         $ra, 0x1C($sp)
/* 10AD38 800ECC48 8E420008 */  lw         $v0, 0x8($s2)
/* 10AD3C 800ECC4C 8E450010 */  lw         $a1, 0x10($s2)
/* 10AD40 800ECC50 84440050 */  lh         $a0, 0x50($v0)
/* 10AD44 800ECC54 8C420054 */  lw         $v0, 0x54($v0)
/* 10AD48 800ECC58 0040F809 */  jalr       $v0
/* 10AD4C 800ECC5C 02442021 */   addu      $a0, $s2, $a0
/* 10AD50 800ECC60 02003021 */  addu       $a2, $s0, $zero
/* 10AD54 800ECC64 8E420008 */  lw         $v0, 0x8($s2)
/* 10AD58 800ECC68 8E450010 */  lw         $a1, 0x10($s2)
/* 10AD5C 800ECC6C 84440058 */  lh         $a0, 0x58($v0)
/* 10AD60 800ECC70 8C42005C */  lw         $v0, 0x5C($v0)
/* 10AD64 800ECC74 0040F809 */  jalr       $v0
/* 10AD68 800ECC78 02442021 */   addu      $a0, $s2, $a0
/* 10AD6C 800ECC7C 02203021 */  addu       $a2, $s1, $zero
/* 10AD70 800ECC80 8E420008 */  lw         $v0, 0x8($s2)
/* 10AD74 800ECC84 8E450010 */  lw         $a1, 0x10($s2)
/* 10AD78 800ECC88 84440060 */  lh         $a0, 0x60($v0)
/* 10AD7C 800ECC8C 8C420064 */  lw         $v0, 0x64($v0)
/* 10AD80 800ECC90 0040F809 */  jalr       $v0
/* 10AD84 800ECC94 02442021 */   addu      $a0, $s2, $a0
/* 10AD88 800ECC98 8E42000C */  lw         $v0, 0xC($s2)
/* 10AD8C 800ECC9C 8E430010 */  lw         $v1, 0x10($s2)
/* 10AD90 800ECCA0 00404021 */  addu       $t0, $v0, $zero
/* 10AD94 800ECCA4 000310C0 */  sll        $v0, $v1, 3
/* 10AD98 800ECCA8 00431023 */  subu       $v0, $v0, $v1
/* 10AD9C 800ECCAC 00021040 */  sll        $v0, $v0, 1
/* 10ADA0 800ECCB0 01023021 */  addu       $a2, $t0, $v0
/* 10ADA4 800ECCB4 0106102B */  sltu       $v0, $t0, $a2
/* 10ADA8 800ECCB8 10400055 */  beqz       $v0, .Lmenu_800ECE10
/* 10ADAC 800ECCBC 3C028012 */   lui       $v0, %hi(D_menu_80126B90)
/* 10ADB0 800ECCC0 2504000C */  addiu      $a0, $t0, 0xC
/* 10ADB4 800ECCC4 8C4B6B90 */  lw         $t3, %lo(D_menu_80126B90)($v0)
/* 10ADB8 800ECCC8 3C028012 */  lui        $v0, %hi(D_menu_80126B94)
/* 10ADBC 800ECCCC 8C4A6B94 */  lw         $t2, %lo(D_menu_80126B94)($v0)
/* 10ADC0 800ECCD0 3C028012 */  lui        $v0, %hi(D_menu_80126B9C)
/* 10ADC4 800ECCD4 84CE0000 */  lh         $t6, 0x0($a2)
/* 10ADC8 800ECCD8 84CD0002 */  lh         $t5, 0x2($a2)
/* 10ADCC 800ECCDC 84CC0004 */  lh         $t4, 0x4($a2)
/* 10ADD0 800ECCE0 8C496B9C */  lw         $t1, %lo(D_menu_80126B9C)($v0)
.Lmenu_800ECCE4:
/* 10ADD4 800ECCE4 85020000 */  lh         $v0, 0x0($t0)
/* 10ADD8 800ECCE8 004E1023 */  subu       $v0, $v0, $t6
/* 10ADDC 800ECCEC 00420018 */  mult       $v0, $v0
/* 10ADE0 800ECCF0 8482FFF6 */  lh         $v0, -0xA($a0)
/* 10ADE4 800ECCF4 00002812 */  mflo       $a1
/* 10ADE8 800ECCF8 004D1023 */  subu       $v0, $v0, $t5
/* 10ADEC 800ECCFC 00000000 */  nop
/* 10ADF0 800ECD00 00420018 */  mult       $v0, $v0
/* 10ADF4 800ECD04 8482FFF8 */  lh         $v0, -0x8($a0)
/* 10ADF8 800ECD08 00001812 */  mflo       $v1
/* 10ADFC 800ECD0C 004C1023 */  subu       $v0, $v0, $t4
/* 10AE00 800ECD10 00000000 */  nop
/* 10AE04 800ECD14 00420018 */  mult       $v0, $v0
/* 10AE08 800ECD18 00A31021 */  addu       $v0, $a1, $v1
/* 10AE0C 800ECD1C 00008012 */  mflo       $s0
/* 10AE10 800ECD20 00501021 */  addu       $v0, $v0, $s0
/* 10AE14 800ECD24 0162102A */  slt        $v0, $t3, $v0
/* 10AE18 800ECD28 54400035 */  bnel       $v0, $zero, .Lmenu_800ECE00
/* 10AE1C 800ECD2C 2508000E */   addiu     $t0, $t0, 0xE
/* 10AE20 800ECD30 8483FFFA */  lh         $v1, -0x6($a0)
/* 10AE24 800ECD34 84C20006 */  lh         $v0, 0x6($a2)
/* 10AE28 800ECD38 00621023 */  subu       $v0, $v1, $v0
/* 10AE2C 800ECD3C 00420018 */  mult       $v0, $v0
/* 10AE30 800ECD40 8483FFFC */  lh         $v1, -0x4($a0)
/* 10AE34 800ECD44 84C20008 */  lh         $v0, 0x8($a2)
/* 10AE38 800ECD48 00002812 */  mflo       $a1
/* 10AE3C 800ECD4C 00621023 */  subu       $v0, $v1, $v0
/* 10AE40 800ECD50 00000000 */  nop
/* 10AE44 800ECD54 00420018 */  mult       $v0, $v0
/* 10AE48 800ECD58 00001812 */  mflo       $v1
/* 10AE4C 800ECD5C 00A31021 */  addu       $v0, $a1, $v1
/* 10AE50 800ECD60 0142102A */  slt        $v0, $t2, $v0
/* 10AE54 800ECD64 54400026 */  bnel       $v0, $zero, .Lmenu_800ECE00
/* 10AE58 800ECD68 2508000E */   addiu     $t0, $t0, 0xE
/* 10AE5C 800ECD6C 8083FFFE */  lb         $v1, -0x2($a0)
/* 10AE60 800ECD70 80C2000A */  lb         $v0, 0xA($a2)
/* 10AE64 800ECD74 00621023 */  subu       $v0, $v1, $v0
/* 10AE68 800ECD78 00420018 */  mult       $v0, $v0
/* 10AE6C 800ECD7C 8083FFFF */  lb         $v1, -0x1($a0)
/* 10AE70 800ECD80 80C2000B */  lb         $v0, 0xB($a2)
/* 10AE74 800ECD84 00003812 */  mflo       $a3
/* 10AE78 800ECD88 00621023 */  subu       $v0, $v1, $v0
/* 10AE7C 800ECD8C 00000000 */  nop
/* 10AE80 800ECD90 00420018 */  mult       $v0, $v0
/* 10AE84 800ECD94 80830000 */  lb         $v1, 0x0($a0)
/* 10AE88 800ECD98 80C2000C */  lb         $v0, 0xC($a2)
/* 10AE8C 800ECD9C 00002812 */  mflo       $a1
/* 10AE90 800ECDA0 00621023 */  subu       $v0, $v1, $v0
/* 10AE94 800ECDA4 00000000 */  nop
/* 10AE98 800ECDA8 00420018 */  mult       $v0, $v0
/* 10AE9C 800ECDAC 00E51021 */  addu       $v0, $a3, $a1
/* 10AEA0 800ECDB0 00001812 */  mflo       $v1
/* 10AEA4 800ECDB4 00431021 */  addu       $v0, $v0, $v1
/* 10AEA8 800ECDB8 0122102A */  slt        $v0, $t1, $v0
/* 10AEAC 800ECDBC 54400010 */  bnel       $v0, $zero, .Lmenu_800ECE00
/* 10AEB0 800ECDC0 2508000E */   addiu     $t0, $t0, 0xE
/* 10AEB4 800ECDC4 8E44000C */  lw         $a0, 0xC($s2)
/* 10AEB8 800ECDC8 01042023 */  subu       $a0, $t0, $a0
/* 10AEBC 800ECDCC 000410C0 */  sll        $v0, $a0, 3
/* 10AEC0 800ECDD0 00441021 */  addu       $v0, $v0, $a0
/* 10AEC4 800ECDD4 00021980 */  sll        $v1, $v0, 6
/* 10AEC8 800ECDD8 00431021 */  addu       $v0, $v0, $v1
/* 10AECC 800ECDDC 000210C0 */  sll        $v0, $v0, 3
/* 10AED0 800ECDE0 00441021 */  addu       $v0, $v0, $a0
/* 10AED4 800ECDE4 00021BC0 */  sll        $v1, $v0, 15
/* 10AED8 800ECDE8 00431021 */  addu       $v0, $v0, $v1
/* 10AEDC 800ECDEC 000210C0 */  sll        $v0, $v0, 3
/* 10AEE0 800ECDF0 00441021 */  addu       $v0, $v0, $a0
/* 10AEE4 800ECDF4 00021023 */  negu       $v0, $v0
/* 10AEE8 800ECDF8 0803B387 */  j          .Lmenu_800ECE1C
/* 10AEEC 800ECDFC 00021043 */   sra       $v0, $v0, 1
.Lmenu_800ECE00:
/* 10AEF0 800ECE00 0106102B */  sltu       $v0, $t0, $a2
/* 10AEF4 800ECE04 1440FFB7 */  bnez       $v0, .Lmenu_800ECCE4
/* 10AEF8 800ECE08 2484000E */   addiu     $a0, $a0, 0xE
/* 10AEFC 800ECE0C 8E430010 */  lw         $v1, 0x10($s2)
.Lmenu_800ECE10:
/* 10AF00 800ECE10 00601021 */  addu       $v0, $v1, $zero
/* 10AF04 800ECE14 24630001 */  addiu      $v1, $v1, 0x1
/* 10AF08 800ECE18 AE430010 */  sw         $v1, 0x10($s2)
.Lmenu_800ECE1C:
/* 10AF0C 800ECE1C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 10AF10 800ECE20 8FB20018 */  lw         $s2, 0x18($sp)
/* 10AF14 800ECE24 8FB10014 */  lw         $s1, 0x14($sp)
/* 10AF18 800ECE28 8FB00010 */  lw         $s0, 0x10($sp)
/* 10AF1C 800ECE2C 03E00008 */  jr         $ra
/* 10AF20 800ECE30 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800ECE34
/* 10AF24 800ECE34 3C028012 */  lui        $v0, %hi(D_menu_80126BA0)
/* 10AF28 800ECE38 03E00008 */  jr         $ra
/* 10AF2C 800ECE3C AC446BA0 */   sw        $a0, %lo(D_menu_80126BA0)($v0)

glabel func_menu_800ECE40
/* 10AF30 800ECE40 3C028012 */  lui        $v0, %hi(D_menu_80126B9C)
/* 10AF34 800ECE44 03E00008 */  jr         $ra
/* 10AF38 800ECE48 AC446B9C */   sw        $a0, %lo(D_menu_80126B9C)($v0)

glabel func_menu_800ECE4C
/* 10AF3C 800ECE4C 3C028012 */  lui        $v0, %hi(D_menu_80126B98)
/* 10AF40 800ECE50 03E00008 */  jr         $ra
/* 10AF44 800ECE54 AC446B98 */   sw        $a0, %lo(D_menu_80126B98)($v0)

glabel func_menu_800ECE58
/* 10AF48 800ECE58 3C028012 */  lui        $v0, %hi(D_menu_80126B94)
/* 10AF4C 800ECE5C 03E00008 */  jr         $ra
/* 10AF50 800ECE60 AC446B94 */   sw        $a0, %lo(D_menu_80126B94)($v0)

glabel func_menu_800ECE64
/* 10AF54 800ECE64 3C028012 */  lui        $v0, %hi(D_menu_80126B90)
/* 10AF58 800ECE68 03E00008 */  jr         $ra
/* 10AF5C 800ECE6C AC446B90 */   sw        $a0, %lo(D_menu_80126B90)($v0)

glabel func_menu_800ECE70
/* 10AF60 800ECE70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10AF64 800ECE74 AFB00010 */  sw         $s0, 0x10($sp)
/* 10AF68 800ECE78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10AF6C 800ECE7C 0C03B3B4 */  jal        func_menu_800ECED0
/* 10AF70 800ECE80 00808021 */   addu      $s0, $a0, $zero
/* 10AF74 800ECE84 3C01800D */  lui        $at, %hi(D_menu_800CB920)
/* 10AF78 800ECE88 C420B920 */  lwc1       $f0, %lo(D_menu_800CB920)($at)
/* 10AF7C 800ECE8C 02001021 */  addu       $v0, $s0, $zero
/* 10AF80 800ECE90 AC400004 */  sw         $zero, 0x4($v0)
/* 10AF84 800ECE94 AC400008 */  sw         $zero, 0x8($v0)
/* 10AF88 800ECE98 E440000C */  swc1       $f0, 0xC($v0)
/* 10AF8C 800ECE9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10AF90 800ECEA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 10AF94 800ECEA4 03E00008 */  jr         $ra
/* 10AF98 800ECEA8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ECEAC
/* 10AF9C 800ECEAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10AFA0 800ECEB0 24820004 */  addiu      $v0, $a0, 0x4
/* 10AFA4 800ECEB4 00A02021 */  addu       $a0, $a1, $zero
/* 10AFA8 800ECEB8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10AFAC 800ECEBC 0C000F26 */  jal        func_80003C98
/* 10AFB0 800ECEC0 00402821 */   addu      $a1, $v0, $zero
/* 10AFB4 800ECEC4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10AFB8 800ECEC8 03E00008 */  jr         $ra
/* 10AFBC 800ECECC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ECED0
/* 10AFC0 800ECED0 00801021 */  addu       $v0, $a0, $zero
/* 10AFC4 800ECED4 240300FF */  addiu      $v1, $zero, 0xFF
/* 10AFC8 800ECED8 A0430000 */  sb         $v1, 0x0($v0)
/* 10AFCC 800ECEDC A0430001 */  sb         $v1, 0x1($v0)
/* 10AFD0 800ECEE0 A0430002 */  sb         $v1, 0x2($v0)
/* 10AFD4 800ECEE4 03E00008 */  jr         $ra
/* 10AFD8 800ECEE8 A0430003 */   sb        $v1, 0x3($v0)

glabel func_menu_800ECEEC
/* 10AFDC 800ECEEC AFA50004 */  sw         $a1, 0x4($sp)
/* 10AFE0 800ECEF0 8BA20004 */  lwl        $v0, 0x4($sp)
/* 10AFE4 800ECEF4 9BA20007 */  lwr        $v0, 0x7($sp)
/* 10AFE8 800ECEF8 A8820000 */  swl        $v0, 0x0($a0)
/* 10AFEC 800ECEFC B8820003 */  swr        $v0, 0x3($a0)
/* 10AFF0 800ECF00 03E00008 */  jr         $ra
/* 10AFF4 800ECF04 00000000 */   nop
