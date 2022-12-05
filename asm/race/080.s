.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800D64B0
/* 8C870 800D64B0 00002821 */  addu       $a1, $zero, $zero
/* 8C874 800D64B4 2406FFFF */  addiu      $a2, $zero, -0x1
/* 8C878 800D64B8 00801821 */  addu       $v1, $a0, $zero
/* 8C87C 800D64BC 3C02800D */  lui        $v0, %hi(D_race_800CAAD0)
/* 8C880 800D64C0 2442AAD0 */  addiu      $v0, $v0, %lo(D_race_800CAAD0)
/* 8C884 800D64C4 AC82001C */  sw         $v0, 0x1C($a0)
/* 8C888 800D64C8 AC800000 */  sw         $zero, 0x0($a0)
.Lrace_800D64CC:
/* 8C88C 800D64CC AC660004 */  sw         $a2, 0x4($v1)
/* 8C890 800D64D0 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C894 800D64D4 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 8C898 800D64D8 1440FFFC */  bnez       $v0, .Lrace_800D64CC
/* 8C89C 800D64DC 24630004 */   addiu     $v1, $v1, 0x4
/* 8C8A0 800D64E0 00801021 */  addu       $v0, $a0, $zero
/* 8C8A4 800D64E4 AC800014 */  sw         $zero, 0x14($a0)
/* 8C8A8 800D64E8 AC800010 */  sw         $zero, 0x10($a0)
/* 8C8AC 800D64EC 03E00008 */  jr         $ra
/* 8C8B0 800D64F0 A0800018 */   sb        $zero, 0x18($a0)

glabel func_race_800D64F4
/* 8C8B4 800D64F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C8B8 800D64F8 AFB10014 */  sw         $s1, 0x14($sp)
/* 8C8BC 800D64FC 00808821 */  addu       $s1, $a0, $zero
/* 8C8C0 800D6500 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C8C4 800D6504 00A08021 */  addu       $s0, $a1, $zero
/* 8C8C8 800D6508 3C02800D */  lui        $v0, %hi(D_race_800CAAD0)
/* 8C8CC 800D650C 2442AAD0 */  addiu      $v0, $v0, %lo(D_race_800CAAD0)
/* 8C8D0 800D6510 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8C8D4 800D6514 0C035951 */  jal        func_race_800D6544
/* 8C8D8 800D6518 AE22001C */   sw        $v0, 0x1C($s1)
/* 8C8DC 800D651C 32100001 */  andi       $s0, $s0, 0x1
/* 8C8E0 800D6520 12000003 */  beqz       $s0, .Lrace_800D6530
/* 8C8E4 800D6524 00000000 */   nop
/* 8C8E8 800D6528 0C01FB5C */  jal        func_8007ED70
/* 8C8EC 800D652C 02202021 */   addu      $a0, $s1, $zero
.Lrace_800D6530:
/* 8C8F0 800D6530 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8C8F4 800D6534 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C8F8 800D6538 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C8FC 800D653C 03E00008 */  jr         $ra
/* 8C900 800D6540 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D6544
/* 8C904 800D6544 AC800000 */  sw         $zero, 0x0($a0)
/* 8C908 800D6548 00002821 */  addu       $a1, $zero, $zero
/* 8C90C 800D654C 2406FFFF */  addiu      $a2, $zero, -0x1
/* 8C910 800D6550 00801821 */  addu       $v1, $a0, $zero
.Lrace_800D6554:
/* 8C914 800D6554 AC660004 */  sw         $a2, 0x4($v1)
/* 8C918 800D6558 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C91C 800D655C 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 8C920 800D6560 1440FFFC */  bnez       $v0, .Lrace_800D6554
/* 8C924 800D6564 24630004 */   addiu     $v1, $v1, 0x4
/* 8C928 800D6568 AC800014 */  sw         $zero, 0x14($a0)
/* 8C92C 800D656C 03E00008 */  jr         $ra
/* 8C930 800D6570 AC800010 */   sw        $zero, 0x10($a0)

glabel func_race_800D6574
/* 8C934 800D6574 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C938 800D6578 00802821 */  addu       $a1, $a0, $zero
/* 8C93C 800D657C AFBF0010 */  sw         $ra, 0x10($sp)
/* 8C940 800D6580 8CA30014 */  lw         $v1, 0x14($a1)
/* 8C944 800D6584 24020005 */  addiu      $v0, $zero, 0x5
/* 8C948 800D6588 14620006 */  bne        $v1, $v0, .Lrace_800D65A4
/* 8C94C 800D658C 00000000 */   nop
/* 8C950 800D6590 8CA2001C */  lw         $v0, 0x1C($a1)
/* 8C954 800D6594 84440010 */  lh         $a0, 0x10($v0)
/* 8C958 800D6598 8C420014 */  lw         $v0, 0x14($v0)
/* 8C95C 800D659C 0040F809 */  jalr       $v0
/* 8C960 800D65A0 00A42021 */   addu      $a0, $a1, $a0
.Lrace_800D65A4:
/* 8C964 800D65A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8C968 800D65A8 03E00008 */  jr         $ra
/* 8C96C 800D65AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D65B0
/* 8C970 800D65B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C974 800D65B4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8C978 800D65B8 00C03821 */  addu       $a3, $a2, $zero
/* 8C97C 800D65BC 2406FFFF */  addiu      $a2, $zero, -0x1
/* 8C980 800D65C0 24020003 */  addiu      $v0, $zero, 0x3
/* 8C984 800D65C4 10A2000F */  beq        $a1, $v0, .Lrace_800D6604
/* 8C988 800D65C8 00C01821 */   addu      $v1, $a2, $zero
/* 8C98C 800D65CC 28A20004 */  slti       $v0, $a1, 0x4
/* 8C990 800D65D0 10400005 */  beqz       $v0, .Lrace_800D65E8
/* 8C994 800D65D4 24020002 */   addiu     $v0, $zero, 0x2
/* 8C998 800D65D8 10A20008 */  beq        $a1, $v0, .Lrace_800D65FC
/* 8C99C 800D65DC 24020003 */   addiu     $v0, $zero, 0x3
/* 8C9A0 800D65E0 08035985 */  j          .Lrace_800D6614
/* 8C9A4 800D65E4 24050003 */   addiu     $a1, $zero, 0x3
.Lrace_800D65E8:
/* 8C9A8 800D65E8 24020004 */  addiu      $v0, $zero, 0x4
/* 8C9AC 800D65EC 10A20007 */  beq        $a1, $v0, .Lrace_800D660C
/* 8C9B0 800D65F0 24020003 */   addiu     $v0, $zero, 0x3
/* 8C9B4 800D65F4 08035985 */  j          .Lrace_800D6614
/* 8C9B8 800D65F8 24050003 */   addiu     $a1, $zero, 0x3
.Lrace_800D65FC:
/* 8C9BC 800D65FC 08035984 */  j          .Lrace_800D6610
/* 8C9C0 800D6600 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D6604:
/* 8C9C4 800D6604 08035984 */  j          .Lrace_800D6610
/* 8C9C8 800D6608 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_800D660C:
/* 8C9CC 800D660C 24020002 */  addiu      $v0, $zero, 0x2
.Lrace_800D6610:
/* 8C9D0 800D6610 24050003 */  addiu      $a1, $zero, 0x3
.Lrace_800D6614:
/* 8C9D4 800D6614 10450003 */  beq        $v0, $a1, .Lrace_800D6624
/* 8C9D8 800D6618 00021080 */   sll       $v0, $v0, 2
/* 8C9DC 800D661C 00821021 */  addu       $v0, $a0, $v0
/* 8C9E0 800D6620 8C460004 */  lw         $a2, 0x4($v0)
.Lrace_800D6624:
/* 8C9E4 800D6624 10E50003 */  beq        $a3, $a1, .Lrace_800D6634
/* 8C9E8 800D6628 00071080 */   sll       $v0, $a3, 2
/* 8C9EC 800D662C 00821021 */  addu       $v0, $a0, $v0
/* 8C9F0 800D6630 8C430004 */  lw         $v1, 0x4($v0)
.Lrace_800D6634:
/* 8C9F4 800D6634 2402FFFF */  addiu      $v0, $zero, -0x1
/* 8C9F8 800D6638 10C20010 */  beq        $a2, $v0, .Lrace_800D667C
/* 8C9FC 800D663C 00000000 */   nop
/* 8CA00 800D6640 10620006 */  beq        $v1, $v0, .Lrace_800D665C
/* 8CA04 800D6644 00602821 */   addu      $a1, $v1, $zero
/* 8CA08 800D6648 8C840000 */  lw         $a0, 0x0($a0)
/* 8CA0C 800D664C 0C036D74 */  jal        func_race_800DB5D0
/* 8CA10 800D6650 00003821 */   addu      $a3, $zero, $zero
/* 8CA14 800D6654 080359A4 */  j          .Lrace_800D6690
/* 8CA18 800D6658 00000000 */   nop
.Lrace_800D665C:
/* 8CA1C 800D665C 10C30006 */  beq        $a2, $v1, .Lrace_800D6678
/* 8CA20 800D6660 00C02821 */   addu      $a1, $a2, $zero
/* 8CA24 800D6664 8C840000 */  lw         $a0, 0x0($a0)
/* 8CA28 800D6668 0C036BE1 */  jal        func_race_800DAF84
/* 8CA2C 800D666C 00003021 */   addu      $a2, $zero, $zero
/* 8CA30 800D6670 080359A4 */  j          .Lrace_800D6690
/* 8CA34 800D6674 00000000 */   nop
.Lrace_800D6678:
/* 8CA38 800D6678 2402FFFF */  addiu      $v0, $zero, -0x1
.Lrace_800D667C:
/* 8CA3C 800D667C 10620004 */  beq        $v1, $v0, .Lrace_800D6690
/* 8CA40 800D6680 00602821 */   addu      $a1, $v1, $zero
/* 8CA44 800D6684 8C840000 */  lw         $a0, 0x0($a0)
/* 8CA48 800D6688 0C036B0B */  jal        func_race_800DAC2C
/* 8CA4C 800D668C 00003021 */   addu      $a2, $zero, $zero
.Lrace_800D6690:
/* 8CA50 800D6690 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8CA54 800D6694 03E00008 */  jr         $ra
/* 8CA58 800D6698 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D669C
/* 8CA5C 800D669C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8CA60 800D66A0 00803021 */  addu       $a2, $a0, $zero
/* 8CA64 800D66A4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8CA68 800D66A8 90C20018 */  lbu        $v0, 0x18($a2)
/* 8CA6C 800D66AC 30420004 */  andi       $v0, $v0, 0x4
/* 8CA70 800D66B0 1440000B */  bnez       $v0, .Lrace_800D66E0
/* 8CA74 800D66B4 24020001 */   addiu     $v0, $zero, 0x1
/* 8CA78 800D66B8 8CC30014 */  lw         $v1, 0x14($a2)
/* 8CA7C 800D66BC 10620003 */  beq        $v1, $v0, .Lrace_800D66CC
/* 8CA80 800D66C0 24020004 */   addiu     $v0, $zero, 0x4
/* 8CA84 800D66C4 14620006 */  bne        $v1, $v0, .Lrace_800D66E0
/* 8CA88 800D66C8 00000000 */   nop
.Lrace_800D66CC:
/* 8CA8C 800D66CC 8CC2001C */  lw         $v0, 0x1C($a2)
/* 8CA90 800D66D0 84440008 */  lh         $a0, 0x8($v0)
/* 8CA94 800D66D4 8C42000C */  lw         $v0, 0xC($v0)
/* 8CA98 800D66D8 0040F809 */  jalr       $v0
/* 8CA9C 800D66DC 00C42021 */   addu      $a0, $a2, $a0
.Lrace_800D66E0:
/* 8CAA0 800D66E0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8CAA4 800D66E4 03E00008 */  jr         $ra
/* 8CAA8 800D66E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D66EC
/* 8CAAC 800D66EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8CAB0 800D66F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CAB4 800D66F4 00808021 */  addu       $s0, $a0, $zero
/* 8CAB8 800D66F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8CABC 800D66FC 92020018 */  lbu        $v0, 0x18($s0)
/* 8CAC0 800D6700 30420004 */  andi       $v0, $v0, 0x4
/* 8CAC4 800D6704 1040000D */  beqz       $v0, .Lrace_800D673C
/* 8CAC8 800D6708 24020001 */   addiu     $v0, $zero, 0x1
/* 8CACC 800D670C 8E030014 */  lw         $v1, 0x14($s0)
/* 8CAD0 800D6710 10620003 */  beq        $v1, $v0, .Lrace_800D6720
/* 8CAD4 800D6714 24020004 */   addiu     $v0, $zero, 0x4
/* 8CAD8 800D6718 14620009 */  bne        $v1, $v0, .Lrace_800D6740
/* 8CADC 800D671C 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_800D6720:
/* 8CAE0 800D6720 8E02001C */  lw         $v0, 0x1C($s0)
/* 8CAE4 800D6724 84440008 */  lh         $a0, 0x8($v0)
/* 8CAE8 800D6728 8C42000C */  lw         $v0, 0xC($v0)
/* 8CAEC 800D672C 0040F809 */  jalr       $v0
/* 8CAF0 800D6730 02042021 */   addu      $a0, $s0, $a0
/* 8CAF4 800D6734 080359D2 */  j          .Lrace_800D6748
/* 8CAF8 800D6738 00000000 */   nop
.Lrace_800D673C:
/* 8CAFC 800D673C 8E030014 */  lw         $v1, 0x14($s0)
.Lrace_800D6740:
/* 8CB00 800D6740 1062000A */  beq        $v1, $v0, .Lrace_800D676C
/* 8CB04 800D6744 00000000 */   nop
.Lrace_800D6748:
/* 8CB08 800D6748 92020018 */  lbu        $v0, 0x18($s0)
/* 8CB0C 800D674C 30420002 */  andi       $v0, $v0, 0x2
/* 8CB10 800D6750 14400006 */  bnez       $v0, .Lrace_800D676C
/* 8CB14 800D6754 00000000 */   nop
/* 8CB18 800D6758 8E02001C */  lw         $v0, 0x1C($s0)
/* 8CB1C 800D675C 84440010 */  lh         $a0, 0x10($v0)
/* 8CB20 800D6760 8C420014 */  lw         $v0, 0x14($v0)
/* 8CB24 800D6764 0040F809 */  jalr       $v0
/* 8CB28 800D6768 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D676C:
/* 8CB2C 800D676C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8CB30 800D6770 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CB34 800D6774 03E00008 */  jr         $ra
/* 8CB38 800D6778 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D677C
/* 8CB3C 800D677C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8CB40 800D6780 00803021 */  addu       $a2, $a0, $zero
/* 8CB44 800D6784 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8CB48 800D6788 90C20018 */  lbu        $v0, 0x18($a2)
/* 8CB4C 800D678C 30420004 */  andi       $v0, $v0, 0x4
/* 8CB50 800D6790 1440000B */  bnez       $v0, .Lrace_800D67C0
/* 8CB54 800D6794 24020001 */   addiu     $v0, $zero, 0x1
/* 8CB58 800D6798 8CC30014 */  lw         $v1, 0x14($a2)
/* 8CB5C 800D679C 10620003 */  beq        $v1, $v0, .Lrace_800D67AC
/* 8CB60 800D67A0 24020004 */   addiu     $v0, $zero, 0x4
/* 8CB64 800D67A4 14620006 */  bne        $v1, $v0, .Lrace_800D67C0
/* 8CB68 800D67A8 00000000 */   nop
.Lrace_800D67AC:
/* 8CB6C 800D67AC 8CC2001C */  lw         $v0, 0x1C($a2)
/* 8CB70 800D67B0 84440018 */  lh         $a0, 0x18($v0)
/* 8CB74 800D67B4 8C42001C */  lw         $v0, 0x1C($v0)
/* 8CB78 800D67B8 0040F809 */  jalr       $v0
/* 8CB7C 800D67BC 00C42021 */   addu      $a0, $a2, $a0
.Lrace_800D67C0:
/* 8CB80 800D67C0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8CB84 800D67C4 03E00008 */  jr         $ra
/* 8CB88 800D67C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D67CC
/* 8CB8C 800D67CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8CB90 800D67D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CB94 800D67D4 00808021 */  addu       $s0, $a0, $zero
/* 8CB98 800D67D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8CB9C 800D67DC AFB10014 */  sw         $s1, 0x14($sp)
/* 8CBA0 800D67E0 92020018 */  lbu        $v0, 0x18($s0)
/* 8CBA4 800D67E4 30420004 */  andi       $v0, $v0, 0x4
/* 8CBA8 800D67E8 1040000F */  beqz       $v0, .Lrace_800D6828
/* 8CBAC 800D67EC 00A08821 */   addu      $s1, $a1, $zero
/* 8CBB0 800D67F0 8E030014 */  lw         $v1, 0x14($s0)
/* 8CBB4 800D67F4 24020001 */  addiu      $v0, $zero, 0x1
/* 8CBB8 800D67F8 10620003 */  beq        $v1, $v0, .Lrace_800D6808
/* 8CBBC 800D67FC 24020004 */   addiu     $v0, $zero, 0x4
/* 8CBC0 800D6800 1462000B */  bne        $v1, $v0, .Lrace_800D6830
/* 8CBC4 800D6804 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_800D6808:
/* 8CBC8 800D6808 8E02001C */  lw         $v0, 0x1C($s0)
/* 8CBCC 800D680C 02202821 */  addu       $a1, $s1, $zero
/* 8CBD0 800D6810 84440018 */  lh         $a0, 0x18($v0)
/* 8CBD4 800D6814 8C42001C */  lw         $v0, 0x1C($v0)
/* 8CBD8 800D6818 0040F809 */  jalr       $v0
/* 8CBDC 800D681C 02042021 */   addu      $a0, $s0, $a0
/* 8CBE0 800D6820 08035A0E */  j          .Lrace_800D6838
/* 8CBE4 800D6824 00000000 */   nop
.Lrace_800D6828:
/* 8CBE8 800D6828 8E030014 */  lw         $v1, 0x14($s0)
/* 8CBEC 800D682C 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800D6830:
/* 8CBF0 800D6830 1062000A */  beq        $v1, $v0, .Lrace_800D685C
/* 8CBF4 800D6834 00000000 */   nop
.Lrace_800D6838:
/* 8CBF8 800D6838 92020018 */  lbu        $v0, 0x18($s0)
/* 8CBFC 800D683C 30420002 */  andi       $v0, $v0, 0x2
/* 8CC00 800D6840 14400006 */  bnez       $v0, .Lrace_800D685C
/* 8CC04 800D6844 02202821 */   addu      $a1, $s1, $zero
/* 8CC08 800D6848 8E02001C */  lw         $v0, 0x1C($s0)
/* 8CC0C 800D684C 84440020 */  lh         $a0, 0x20($v0)
/* 8CC10 800D6850 8C420024 */  lw         $v0, 0x24($v0)
/* 8CC14 800D6854 0040F809 */  jalr       $v0
/* 8CC18 800D6858 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D685C:
/* 8CC1C 800D685C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8CC20 800D6860 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CC24 800D6864 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CC28 800D6868 03E00008 */  jr         $ra
/* 8CC2C 800D686C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D6870
/* 8CC30 800D6870 03E00008 */  jr         $ra
/* 8CC34 800D6874 00000000 */   nop

glabel func_race_800D6878
/* 8CC38 800D6878 03E00008 */  jr         $ra
/* 8CC3C 800D687C 00000000 */   nop

glabel func_race_800D6880
/* 8CC40 800D6880 03E00008 */  jr         $ra
/* 8CC44 800D6884 00000000 */   nop

glabel func_race_800D6888
/* 8CC48 800D6888 03E00008 */  jr         $ra
/* 8CC4C 800D688C 00000000 */   nop

glabel func_race_800D6890
/* 8CC50 800D6890 00052880 */  sll        $a1, $a1, 2
/* 8CC54 800D6894 00852021 */  addu       $a0, $a0, $a1
/* 8CC58 800D6898 8C820004 */  lw         $v0, 0x4($a0)
/* 8CC5C 800D689C 03E00008 */  jr         $ra
/* 8CC60 800D68A0 00000000 */   nop

glabel func_race_800D68A4
/* 8CC64 800D68A4 8C820014 */  lw         $v0, 0x14($a0)
/* 8CC68 800D68A8 03E00008 */  jr         $ra
/* 8CC6C 800D68AC 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800D68B0
/* 8CC70 800D68B0 8C820010 */  lw         $v0, 0x10($a0)
/* 8CC74 800D68B4 03E00008 */  jr         $ra
/* 8CC78 800D68B8 00000000 */   nop

glabel func_race_800D68BC
/* 8CC7C 800D68BC 90820018 */  lbu        $v0, 0x18($a0)
/* 8CC80 800D68C0 03E00008 */  jr         $ra
/* 8CC84 800D68C4 00000000 */   nop

glabel func_race_800D68C8
/* 8CC88 800D68C8 8C820014 */  lw         $v0, 0x14($a0)
/* 8CC8C 800D68CC 03E00008 */  jr         $ra
/* 8CC90 800D68D0 00000000 */   nop

glabel func_race_800D68D4
/* 8CC94 800D68D4 03E00008 */  jr         $ra
/* 8CC98 800D68D8 AC850014 */   sw        $a1, 0x14($a0)
