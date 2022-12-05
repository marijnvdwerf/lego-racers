.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8010F4F0
/* C58B0 8010F4F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C58B4 8010F4F4 AFB00010 */  sw         $s0, 0x10($sp)
/* C58B8 8010F4F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* C58BC 8010F4FC 0C011268 */  jal        func_800449A0
/* C58C0 8010F500 00808021 */   addu      $s0, $a0, $zero
/* C58C4 8010F504 0C010F84 */  jal        func_80043E10
/* C58C8 8010F508 26040080 */   addiu     $a0, $s0, 0x80
/* C58CC 8010F50C 0C010A64 */  jal        func_80042990
/* C58D0 8010F510 260400B4 */   addiu     $a0, $s0, 0xB4
/* C58D4 8010F514 0C0447DC */  jal        func_race_80111F70
/* C58D8 8010F518 260400F0 */   addiu     $a0, $s0, 0xF0
/* C58DC 8010F51C 0C043ACC */  jal        func_race_8010EB30
/* C58E0 8010F520 26040284 */   addiu     $a0, $s0, 0x284
/* C58E4 8010F524 0C04C394 */  jal        func_race_80130E50
/* C58E8 8010F528 260402A0 */   addiu     $a0, $s0, 0x2A0
/* C58EC 8010F52C 0C043D75 */  jal        func_race_8010F5D4
/* C58F0 8010F530 02002021 */   addu      $a0, $s0, $zero
/* C58F4 8010F534 02001021 */  addu       $v0, $s0, $zero
/* C58F8 8010F538 8FBF0014 */  lw         $ra, 0x14($sp)
/* C58FC 8010F53C 8FB00010 */  lw         $s0, 0x10($sp)
/* C5900 8010F540 03E00008 */  jr         $ra
/* C5904 8010F544 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8010F548
/* C5908 8010F548 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C590C 8010F54C AFB10014 */  sw         $s1, 0x14($sp)
/* C5910 8010F550 00808821 */  addu       $s1, $a0, $zero
/* C5914 8010F554 AFB00010 */  sw         $s0, 0x10($sp)
/* C5918 8010F558 AFBF0018 */  sw         $ra, 0x18($sp)
/* C591C 8010F55C 0C043D9E */  jal        func_race_8010F678
/* C5920 8010F560 00A08021 */   addu      $s0, $a1, $zero
/* C5924 8010F564 262402A0 */  addiu      $a0, $s1, 0x2A0
/* C5928 8010F568 0C04C39E */  jal        func_race_80130E78
/* C592C 8010F56C 24050002 */   addiu     $a1, $zero, 0x2
/* C5930 8010F570 26240284 */  addiu      $a0, $s1, 0x284
/* C5934 8010F574 0C043AD6 */  jal        func_race_8010EB58
/* C5938 8010F578 24050002 */   addiu     $a1, $zero, 0x2
/* C593C 8010F57C 262400F0 */  addiu      $a0, $s1, 0xF0
/* C5940 8010F580 0C0404D3 */  jal        func_race_8010134C
/* C5944 8010F584 24050002 */   addiu     $a1, $zero, 0x2
/* C5948 8010F588 262400B4 */  addiu      $a0, $s1, 0xB4
/* C594C 8010F58C 0C010A73 */  jal        func_800429CC
/* C5950 8010F590 24050002 */   addiu     $a1, $zero, 0x2
/* C5954 8010F594 26240080 */  addiu      $a0, $s1, 0x80
/* C5958 8010F598 0C010F93 */  jal        func_80043E4C
/* C595C 8010F59C 24050002 */   addiu     $a1, $zero, 0x2
/* C5960 8010F5A0 02202021 */  addu       $a0, $s1, $zero
/* C5964 8010F5A4 0C01127B */  jal        func_800449EC
/* C5968 8010F5A8 24050002 */   addiu     $a1, $zero, 0x2
/* C596C 8010F5AC 32100001 */  andi       $s0, $s0, 0x1
/* C5970 8010F5B0 12000003 */  beqz       $s0, .Lrace_8010F5C0
/* C5974 8010F5B4 00000000 */   nop
/* C5978 8010F5B8 0C01FB5C */  jal        func_8007ED70
/* C597C 8010F5BC 02202021 */   addu      $a0, $s1, $zero
.Lrace_8010F5C0:
/* C5980 8010F5C0 8FBF0018 */  lw         $ra, 0x18($sp)
/* C5984 8010F5C4 8FB10014 */  lw         $s1, 0x14($sp)
/* C5988 8010F5C8 8FB00010 */  lw         $s0, 0x10($sp)
/* C598C 8010F5CC 03E00008 */  jr         $ra
/* C5990 8010F5D0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010F5D4
/* C5994 8010F5D4 00003021 */  addu       $a2, $zero, $zero
/* C5998 8010F5D8 00801821 */  addu       $v1, $a0, $zero
/* C599C 8010F5DC 00802821 */  addu       $a1, $a0, $zero
/* C59A0 8010F5E0 AC800140 */  sw         $zero, 0x140($a0)
/* C59A4 8010F5E4 AC800148 */  sw         $zero, 0x148($a0)
/* C59A8 8010F5E8 AC800144 */  sw         $zero, 0x144($a0)
/* C59AC 8010F5EC AC80014C */  sw         $zero, 0x14C($a0)
.Lrace_8010F5F0:
/* C59B0 8010F5F0 ACA00154 */  sw         $zero, 0x154($a1)
/* C59B4 8010F5F4 AC600194 */  sw         $zero, 0x194($v1)
/* C59B8 8010F5F8 AC600198 */  sw         $zero, 0x198($v1)
/* C59BC 8010F5FC AC60019C */  sw         $zero, 0x19C($v1)
/* C59C0 8010F600 AC6001DC */  sw         $zero, 0x1DC($v1)
/* C59C4 8010F604 AC6001E0 */  sw         $zero, 0x1E0($v1)
/* C59C8 8010F608 AC6001E4 */  sw         $zero, 0x1E4($v1)
/* C59CC 8010F60C AC600224 */  sw         $zero, 0x224($v1)
/* C59D0 8010F610 AC600228 */  sw         $zero, 0x228($v1)
/* C59D4 8010F614 AC60022C */  sw         $zero, 0x22C($v1)
/* C59D8 8010F618 2463000C */  addiu      $v1, $v1, 0xC
/* C59DC 8010F61C ACA0026C */  sw         $zero, 0x26C($a1)
/* C59E0 8010F620 24C60001 */  addiu      $a2, $a2, 0x1
/* C59E4 8010F624 2CC20006 */  sltiu      $v0, $a2, 0x6
/* C59E8 8010F628 1440FFF1 */  bnez       $v0, .Lrace_8010F5F0
/* C59EC 8010F62C 24A50004 */   addiu     $a1, $a1, 0x4
/* C59F0 8010F630 00003021 */  addu       $a2, $zero, $zero
/* C59F4 8010F634 00801821 */  addu       $v1, $a0, $zero
/* C59F8 8010F638 AC80016C */  sw         $zero, 0x16C($a0)
/* C59FC 8010F63C AC800170 */  sw         $zero, 0x170($a0)
/* C5A00 8010F640 AC800174 */  sw         $zero, 0x174($a0)
/* C5A04 8010F644 AC800178 */  sw         $zero, 0x178($a0)
.Lrace_8010F648:
/* C5A08 8010F648 AC60017C */  sw         $zero, 0x17C($v1)
/* C5A0C 8010F64C AC600184 */  sw         $zero, 0x184($v1)
/* C5A10 8010F650 24C60001 */  addiu      $a2, $a2, 0x1
/* C5A14 8010F654 2CC20002 */  sltiu      $v0, $a2, 0x2
/* C5A18 8010F658 1440FFFB */  bnez       $v0, .Lrace_8010F648
/* C5A1C 8010F65C 24630004 */   addiu     $v1, $v1, 0x4
/* C5A20 8010F660 AC80018C */  sw         $zero, 0x18C($a0)
/* C5A24 8010F664 AC800190 */  sw         $zero, 0x190($a0)
/* C5A28 8010F668 AC800294 */  sw         $zero, 0x294($a0)
/* C5A2C 8010F66C AC800298 */  sw         $zero, 0x298($a0)
/* C5A30 8010F670 03E00008 */  jr         $ra
/* C5A34 8010F674 A080029C */   sb        $zero, 0x29C($a0)

glabel func_race_8010F678
/* C5A38 8010F678 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C5A3C 8010F67C AFB20018 */  sw         $s2, 0x18($sp)
/* C5A40 8010F680 00809021 */  addu       $s2, $a0, $zero
/* C5A44 8010F684 26440284 */  addiu      $a0, $s2, 0x284
/* C5A48 8010F688 AFBF001C */  sw         $ra, 0x1C($sp)
/* C5A4C 8010F68C AFB10014 */  sw         $s1, 0x14($sp)
/* C5A50 8010F690 0C043AEC */  jal        func_race_8010EBB0
/* C5A54 8010F694 AFB00010 */   sw        $s0, 0x10($sp)
/* C5A58 8010F698 8E450298 */  lw         $a1, 0x298($s2)
/* C5A5C 8010F69C 10A00008 */  beqz       $a1, .Lrace_8010F6C0
/* C5A60 8010F6A0 00000000 */   nop
/* C5A64 8010F6A4 8E430174 */  lw         $v1, 0x174($s2)
/* C5A68 8010F6A8 8C620000 */  lw         $v0, 0x0($v1)
/* C5A6C 8010F6AC 84440090 */  lh         $a0, 0x90($v0)
/* C5A70 8010F6B0 8C420094 */  lw         $v0, 0x94($v0)
/* C5A74 8010F6B4 0040F809 */  jalr       $v0
/* C5A78 8010F6B8 00642021 */   addu      $a0, $v1, $a0
/* C5A7C 8010F6BC AE400298 */  sw         $zero, 0x298($s2)
.Lrace_8010F6C0:
/* C5A80 8010F6C0 8E450294 */  lw         $a1, 0x294($s2)
/* C5A84 8010F6C4 10A00009 */  beqz       $a1, .Lrace_8010F6EC
/* C5A88 8010F6C8 00008821 */   addu      $s1, $zero, $zero
/* C5A8C 8010F6CC 8E430174 */  lw         $v1, 0x174($s2)
/* C5A90 8010F6D0 8C620000 */  lw         $v0, 0x0($v1)
/* C5A94 8010F6D4 84440088 */  lh         $a0, 0x88($v0)
/* C5A98 8010F6D8 8C42008C */  lw         $v0, 0x8C($v0)
/* C5A9C 8010F6DC 0040F809 */  jalr       $v0
/* C5AA0 8010F6E0 00642021 */   addu      $a0, $v1, $a0
/* C5AA4 8010F6E4 AE400294 */  sw         $zero, 0x294($s2)
/* C5AA8 8010F6E8 00008821 */  addu       $s1, $zero, $zero
.Lrace_8010F6EC:
/* C5AAC 8010F6EC 02408021 */  addu       $s0, $s2, $zero
.Lrace_8010F6F0:
/* C5AB0 8010F6F0 8E04017C */  lw         $a0, 0x17C($s0)
/* C5AB4 8010F6F4 10800004 */  beqz       $a0, .Lrace_8010F708
/* C5AB8 8010F6F8 00000000 */   nop
/* C5ABC 8010F6FC 0C01FB5C */  jal        func_8007ED70
/* C5AC0 8010F700 00000000 */   nop
/* C5AC4 8010F704 AE00017C */  sw         $zero, 0x17C($s0)
.Lrace_8010F708:
/* C5AC8 8010F708 8E040184 */  lw         $a0, 0x184($s0)
/* C5ACC 8010F70C 10800004 */  beqz       $a0, .Lrace_8010F720
/* C5AD0 8010F710 26310001 */   addiu     $s1, $s1, 0x1
/* C5AD4 8010F714 0C01FB5C */  jal        func_8007ED70
/* C5AD8 8010F718 00000000 */   nop
/* C5ADC 8010F71C AE000184 */  sw         $zero, 0x184($s0)
.Lrace_8010F720:
/* C5AE0 8010F720 2E220002 */  sltiu      $v0, $s1, 0x2
/* C5AE4 8010F724 1440FFF2 */  bnez       $v0, .Lrace_8010F6F0
/* C5AE8 8010F728 26100004 */   addiu     $s0, $s0, 0x4
/* C5AEC 8010F72C 0C010A92 */  jal        func_80042A48
/* C5AF0 8010F730 264400B4 */   addiu     $a0, $s2, 0xB4
/* C5AF4 8010F734 0C010FB0 */  jal        func_80043EC0
/* C5AF8 8010F738 26440080 */   addiu     $a0, $s2, 0x80
/* C5AFC 8010F73C 0C01129F */  jal        func_80044A7C
/* C5B00 8010F740 02402021 */   addu      $a0, $s2, $zero
/* C5B04 8010F744 8E45016C */  lw         $a1, 0x16C($s2)
/* C5B08 8010F748 10A00005 */  beqz       $a1, .Lrace_8010F760
/* C5B0C 8010F74C 00008821 */   addu      $s1, $zero, $zero
/* C5B10 8010F750 8E44014C */  lw         $a0, 0x14C($s2)
/* C5B14 8010F754 0C046564 */  jal        func_race_80119590
/* C5B18 8010F758 00000000 */   nop
/* C5B1C 8010F75C AE40016C */  sw         $zero, 0x16C($s2)
.Lrace_8010F760:
/* C5B20 8010F760 02401821 */  addu       $v1, $s2, $zero
.Lrace_8010F764:
/* C5B24 8010F764 8E420144 */  lw         $v0, 0x144($s2)
/* C5B28 8010F768 0222102B */  sltu       $v0, $s1, $v0
/* C5B2C 8010F76C 10400009 */  beqz       $v0, .Lrace_8010F794
/* C5B30 8010F770 00000000 */   nop
/* C5B34 8010F774 8C620154 */  lw         $v0, 0x154($v1)
/* C5B38 8010F778 50400004 */  beql       $v0, $zero, .Lrace_8010F78C
/* C5B3C 8010F77C 24630004 */   addiu     $v1, $v1, 0x4
/* C5B40 8010F780 AC400024 */  sw         $zero, 0x24($v0)
/* C5B44 8010F784 AC600154 */  sw         $zero, 0x154($v1)
/* C5B48 8010F788 24630004 */  addiu      $v1, $v1, 0x4
.Lrace_8010F78C:
/* C5B4C 8010F78C 08043DD9 */  j          .Lrace_8010F764
/* C5B50 8010F790 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_8010F794:
/* C5B54 8010F794 0C0447EB */  jal        func_race_80111FAC
/* C5B58 8010F798 264400F0 */   addiu     $a0, $s2, 0xF0
/* C5B5C 8010F79C 8E420140 */  lw         $v0, 0x140($s2)
/* C5B60 8010F7A0 1040002A */  beqz       $v0, .Lrace_8010F84C
/* C5B64 8010F7A4 00000000 */   nop
/* C5B68 8010F7A8 8E420144 */  lw         $v0, 0x144($s2)
/* C5B6C 8010F7AC 1040000A */  beqz       $v0, .Lrace_8010F7D8
/* C5B70 8010F7B0 00008821 */   addu      $s1, $zero, $zero
/* C5B74 8010F7B4 02208021 */  addu       $s0, $s1, $zero
.Lrace_8010F7B8:
/* C5B78 8010F7B8 8E440140 */  lw         $a0, 0x140($s2)
/* C5B7C 8010F7BC 26310001 */  addiu      $s1, $s1, 0x1
/* C5B80 8010F7C0 0C042836 */  jal        func_race_8010A0D8
/* C5B84 8010F7C4 00902021 */   addu      $a0, $a0, $s0
/* C5B88 8010F7C8 8E420144 */  lw         $v0, 0x144($s2)
/* C5B8C 8010F7CC 0222102B */  sltu       $v0, $s1, $v0
/* C5B90 8010F7D0 1440FFF9 */  bnez       $v0, .Lrace_8010F7B8
/* C5B94 8010F7D4 26100E2C */   addiu     $s0, $s0, 0xE2C
.Lrace_8010F7D8:
/* C5B98 8010F7D8 8E440140 */  lw         $a0, 0x140($s2)
/* C5B9C 8010F7DC 5080001B */  beql       $a0, $zero, .Lrace_8010F84C
/* C5BA0 8010F7E0 AE400140 */   sw        $zero, 0x140($s2)
/* C5BA4 8010F7E4 8C83FFF8 */  lw         $v1, -0x8($a0)
/* C5BA8 8010F7E8 000310C0 */  sll        $v0, $v1, 3
/* C5BAC 8010F7EC 00431023 */  subu       $v0, $v0, $v1
/* C5BB0 8010F7F0 000210C0 */  sll        $v0, $v0, 3
/* C5BB4 8010F7F4 00431021 */  addu       $v0, $v0, $v1
/* C5BB8 8010F7F8 00021080 */  sll        $v0, $v0, 2
/* C5BBC 8010F7FC 00431023 */  subu       $v0, $v0, $v1
/* C5BC0 8010F800 00021080 */  sll        $v0, $v0, 2
/* C5BC4 8010F804 00431023 */  subu       $v0, $v0, $v1
/* C5BC8 8010F808 00021080 */  sll        $v0, $v0, 2
/* C5BCC 8010F80C 00828021 */  addu       $s0, $a0, $v0
/* C5BD0 8010F810 1090000B */  beq        $a0, $s0, .Lrace_8010F840
/* C5BD4 8010F814 2610F1D4 */   addiu     $s0, $s0, -0xE2C
.Lrace_8010F818:
/* C5BD8 8010F818 8E020000 */  lw         $v0, 0x0($s0)
/* C5BDC 8010F81C 24050002 */  addiu      $a1, $zero, 0x2
/* C5BE0 8010F820 84440010 */  lh         $a0, 0x10($v0)
/* C5BE4 8010F824 8C420014 */  lw         $v0, 0x14($v0)
/* C5BE8 8010F828 0040F809 */  jalr       $v0
/* C5BEC 8010F82C 02042021 */   addu      $a0, $s0, $a0
/* C5BF0 8010F830 8E420140 */  lw         $v0, 0x140($s2)
/* C5BF4 8010F834 1450FFF8 */  bne        $v0, $s0, .Lrace_8010F818
/* C5BF8 8010F838 2610F1D4 */   addiu     $s0, $s0, -0xE2C
/* C5BFC 8010F83C 8E440140 */  lw         $a0, 0x140($s2)
.Lrace_8010F840:
/* C5C00 8010F840 0C009444 */  jal        func_80025110
/* C5C04 8010F844 2484FFF8 */   addiu     $a0, $a0, -0x8
/* C5C08 8010F848 AE400140 */  sw         $zero, 0x140($s2)
.Lrace_8010F84C:
/* C5C0C 8010F84C 0C043D75 */  jal        func_race_8010F5D4
/* C5C10 8010F850 02402021 */   addu      $a0, $s2, $zero
/* C5C14 8010F854 8FBF001C */  lw         $ra, 0x1C($sp)
/* C5C18 8010F858 8FB20018 */  lw         $s2, 0x18($sp)
/* C5C1C 8010F85C 8FB10014 */  lw         $s1, 0x14($sp)
/* C5C20 8010F860 8FB00010 */  lw         $s0, 0x10($sp)
/* C5C24 8010F864 03E00008 */  jr         $ra
/* C5C28 8010F868 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8010F86C
/* C5C2C 8010F86C 27BDFF78 */  addiu      $sp, $sp, -0x88
/* C5C30 8010F870 AFB50074 */  sw         $s5, 0x74($sp)
/* C5C34 8010F874 00C0A821 */  addu       $s5, $a2, $zero
/* C5C38 8010F878 AFBF0080 */  sw         $ra, 0x80($sp)
/* C5C3C 8010F87C AFB7007C */  sw         $s7, 0x7C($sp)
/* C5C40 8010F880 AFB60078 */  sw         $s6, 0x78($sp)
/* C5C44 8010F884 AFB40070 */  sw         $s4, 0x70($sp)
/* C5C48 8010F888 AFB3006C */  sw         $s3, 0x6C($sp)
/* C5C4C 8010F88C AFB20068 */  sw         $s2, 0x68($sp)
/* C5C50 8010F890 AFB10064 */  sw         $s1, 0x64($sp)
/* C5C54 8010F894 AFB00060 */  sw         $s0, 0x60($sp)
/* C5C58 8010F898 8EA20038 */  lw         $v0, 0x38($s5)
/* C5C5C 8010F89C 0080A021 */  addu       $s4, $a0, $zero
/* C5C60 8010F8A0 AE820148 */  sw         $v0, 0x148($s4)
/* C5C64 8010F8A4 8EA20014 */  lw         $v0, 0x14($s5)
/* C5C68 8010F8A8 AE82014C */  sw         $v0, 0x14C($s4)
/* C5C6C 8010F8AC 8EA20018 */  lw         $v0, 0x18($s5)
/* C5C70 8010F8B0 00A0B021 */  addu       $s6, $a1, $zero
/* C5C74 8010F8B4 AE820150 */  sw         $v0, 0x150($s4)
/* C5C78 8010F8B8 8EA20004 */  lw         $v0, 0x4($s5)
/* C5C7C 8010F8BC 00E0B821 */  addu       $s7, $a3, $zero
/* C5C80 8010F8C0 AE820174 */  sw         $v0, 0x174($s4)
/* C5C84 8010F8C4 8EC20038 */  lw         $v0, 0x38($s6)
/* C5C88 8010F8C8 269000F0 */  addiu      $s0, $s4, 0xF0
/* C5C8C 8010F8CC AE820178 */  sw         $v0, 0x178($s4)
/* C5C90 8010F8D0 8EC2001C */  lw         $v0, 0x1C($s6)
/* C5C94 8010F8D4 02002021 */  addu       $a0, $s0, $zero
/* C5C98 8010F8D8 AE820190 */  sw         $v0, 0x190($s4)
/* C5C9C 8010F8DC 92C20040 */  lbu        $v0, 0x40($s6)
/* C5CA0 8010F8E0 24050064 */  addiu      $a1, $zero, 0x64
/* C5CA4 8010F8E4 0C0404E7 */  jal        func_race_8010139C
/* C5CA8 8010F8E8 A282029C */   sb        $v0, 0x29C($s4)
/* C5CAC 8010F8EC 3C028013 */  lui        $v0, %hi(D_race_8013224C)
/* C5CB0 8010F8F0 8C44224C */  lw         $a0, %lo(D_race_8013224C)($v0)
/* C5CB4 8010F8F4 AE14004C */  sw         $s4, 0x4C($s0)
/* C5CB8 8010F8F8 8EC20000 */  lw         $v0, 0x0($s6)
/* C5CBC 8010F8FC 0C01FB65 */  jal        func_8007ED94
/* C5CC0 8010F900 AE820144 */   sw        $v0, 0x144($s4)
/* C5CC4 8010F904 8E900144 */  lw         $s0, 0x144($s4)
/* C5CC8 8010F908 001020C0 */  sll        $a0, $s0, 3
/* C5CCC 8010F90C 00902023 */  subu       $a0, $a0, $s0
/* C5CD0 8010F910 000420C0 */  sll        $a0, $a0, 3
/* C5CD4 8010F914 00902021 */  addu       $a0, $a0, $s0
/* C5CD8 8010F918 00042080 */  sll        $a0, $a0, 2
/* C5CDC 8010F91C 00902023 */  subu       $a0, $a0, $s0
/* C5CE0 8010F920 00042080 */  sll        $a0, $a0, 2
/* C5CE4 8010F924 00902023 */  subu       $a0, $a0, $s0
/* C5CE8 8010F928 00042080 */  sll        $a0, $a0, 2
/* C5CEC 8010F92C 0C00943C */  jal        func_800250F0
/* C5CF0 8010F930 24840008 */   addiu     $a0, $a0, 0x8
/* C5CF4 8010F934 24420008 */  addiu      $v0, $v0, 0x8
/* C5CF8 8010F938 00409821 */  addu       $s3, $v0, $zero
/* C5CFC 8010F93C 02609021 */  addu       $s2, $s3, $zero
/* C5D00 8010F940 2611FFFF */  addiu      $s1, $s0, -0x1
/* C5D04 8010F944 06200007 */  bltz       $s1, .Lrace_8010F964
/* C5D08 8010F948 AE70FFF8 */   sw        $s0, -0x8($s3)
/* C5D0C 8010F94C 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_8010F950:
/* C5D10 8010F950 0C042800 */  jal        func_race_8010A000
/* C5D14 8010F954 02402021 */   addu      $a0, $s2, $zero
/* C5D18 8010F958 2631FFFF */  addiu      $s1, $s1, -0x1
/* C5D1C 8010F95C 1630FFFC */  bne        $s1, $s0, .Lrace_8010F950
/* C5D20 8010F960 26520E2C */   addiu     $s2, $s2, 0xE2C
.Lrace_8010F964:
/* C5D24 8010F964 0C01FB72 */  jal        func_8007EDC8
/* C5D28 8010F968 AE930140 */   sw        $s3, 0x140($s4)
/* C5D2C 8010F96C 8E820140 */  lw         $v0, 0x140($s4)
/* C5D30 8010F970 14400006 */  bnez       $v0, .Lrace_8010F98C
/* C5D34 8010F974 00002821 */   addu      $a1, $zero, $zero
/* C5D38 8010F978 3C04800D */  lui        $a0, %hi(D_race_800CDD08)
/* C5D3C 8010F97C 2484DD08 */  addiu      $a0, $a0, %lo(D_race_800CDD08)
/* C5D40 8010F980 00A03021 */  addu       $a2, $a1, $zero
/* C5D44 8010F984 0C011ACF */  jal        func_80046B3C
/* C5D48 8010F988 00A03821 */   addu      $a3, $a1, $zero
.Lrace_8010F98C:
/* C5D4C 8010F98C 8E830174 */  lw         $v1, 0x174($s4)
/* C5D50 8010F990 8C620000 */  lw         $v0, 0x0($v1)
/* C5D54 8010F994 84440020 */  lh         $a0, 0x20($v0)
/* C5D58 8010F998 8C420024 */  lw         $v0, 0x24($v0)
/* C5D5C 8010F99C 0040F809 */  jalr       $v0
/* C5D60 8010F9A0 00642021 */   addu      $a0, $v1, $a0
/* C5D64 8010F9A4 8E830174 */  lw         $v1, 0x174($s4)
/* C5D68 8010F9A8 AE820294 */  sw         $v0, 0x294($s4)
/* C5D6C 8010F9AC 8C620000 */  lw         $v0, 0x0($v1)
/* C5D70 8010F9B0 84440028 */  lh         $a0, 0x28($v0)
/* C5D74 8010F9B4 8C42002C */  lw         $v0, 0x2C($v0)
/* C5D78 8010F9B8 0040F809 */  jalr       $v0
/* C5D7C 8010F9BC 00642021 */   addu      $a0, $v1, $a0
/* C5D80 8010F9C0 8E830294 */  lw         $v1, 0x294($s4)
/* C5D84 8010F9C4 AE820298 */  sw         $v0, 0x298($s4)
/* C5D88 8010F9C8 8EA50000 */  lw         $a1, 0x0($s5)
/* C5D8C 8010F9CC 8C620008 */  lw         $v0, 0x8($v1)
/* C5D90 8010F9D0 8E860144 */  lw         $a2, 0x144($s4)
/* C5D94 8010F9D4 84440050 */  lh         $a0, 0x50($v0)
/* C5D98 8010F9D8 8C420054 */  lw         $v0, 0x54($v0)
/* C5D9C 8010F9DC 0040F809 */  jalr       $v0
/* C5DA0 8010F9E0 00642021 */   addu      $a0, $v1, $a0
/* C5DA4 8010F9E4 8E830298 */  lw         $v1, 0x298($s4)
/* C5DA8 8010F9E8 8EA50000 */  lw         $a1, 0x0($s5)
/* C5DAC 8010F9EC 8C620008 */  lw         $v0, 0x8($v1)
/* C5DB0 8010F9F0 8E860144 */  lw         $a2, 0x144($s4)
/* C5DB4 8010F9F4 84440050 */  lh         $a0, 0x50($v0)
/* C5DB8 8010F9F8 8C420054 */  lw         $v0, 0x54($v0)
/* C5DBC 8010F9FC 0040F809 */  jalr       $v0
/* C5DC0 8010FA00 00642021 */   addu      $a0, $v1, $a0
/* C5DC4 8010FA04 8EA20004 */  lw         $v0, 0x4($s5)
/* C5DC8 8010FA08 AFA20018 */  sw         $v0, 0x18($sp)
/* C5DCC 8010FA0C 8EA20000 */  lw         $v0, 0x0($s5)
/* C5DD0 8010FA10 02802021 */  addu       $a0, $s4, $zero
/* C5DD4 8010FA14 AFA2001C */  sw         $v0, 0x1C($sp)
/* C5DD8 8010FA18 3C028013 */  lui        $v0, %hi(D_race_80132240)
/* C5DDC 8010FA1C 8E830144 */  lw         $v1, 0x144($s4)
/* C5DE0 8010FA20 8C422240 */  lw         $v0, %lo(D_race_80132240)($v0)
/* C5DE4 8010FA24 27A50018 */  addiu      $a1, $sp, 0x18
/* C5DE8 8010FA28 AFB70028 */  sw         $s7, 0x28($sp)
/* C5DEC 8010FA2C AFA20024 */  sw         $v0, 0x24($sp)
/* C5DF0 8010FA30 0C01132B */  jal        func_80044CAC
/* C5DF4 8010FA34 AFA30020 */   sw        $v1, 0x20($sp)
/* C5DF8 8010FA38 8EA20004 */  lw         $v0, 0x4($s5)
/* C5DFC 8010FA3C AFA20030 */  sw         $v0, 0x30($sp)
/* C5E00 8010FA40 8EA20000 */  lw         $v0, 0x0($s5)
/* C5E04 8010FA44 26840080 */  addiu      $a0, $s4, 0x80
/* C5E08 8010FA48 AFA20034 */  sw         $v0, 0x34($sp)
/* C5E0C 8010FA4C 3C028013 */  lui        $v0, %hi(D_race_80132244)
/* C5E10 8010FA50 8E830144 */  lw         $v1, 0x144($s4)
/* C5E14 8010FA54 8C422244 */  lw         $v0, %lo(D_race_80132244)($v0)
/* C5E18 8010FA58 27A50030 */  addiu      $a1, $sp, 0x30
/* C5E1C 8010FA5C AFB70040 */  sw         $s7, 0x40($sp)
/* C5E20 8010FA60 AFA2003C */  sw         $v0, 0x3C($sp)
/* C5E24 8010FA64 0C01102E */  jal        func_800440B8
/* C5E28 8010FA68 AFA30038 */   sw        $v1, 0x38($sp)
/* C5E2C 8010FA6C 8EA20004 */  lw         $v0, 0x4($s5)
/* C5E30 8010FA70 AFA20048 */  sw         $v0, 0x48($sp)
/* C5E34 8010FA74 8EA20000 */  lw         $v0, 0x0($s5)
/* C5E38 8010FA78 268400B4 */  addiu      $a0, $s4, 0xB4
/* C5E3C 8010FA7C AFA2004C */  sw         $v0, 0x4C($sp)
/* C5E40 8010FA80 3C028013 */  lui        $v0, %hi(D_race_80132248)
/* C5E44 8010FA84 8E830144 */  lw         $v1, 0x144($s4)
/* C5E48 8010FA88 8C422248 */  lw         $v0, %lo(D_race_80132248)($v0)
/* C5E4C 8010FA8C 27A50048 */  addiu      $a1, $sp, 0x48
/* C5E50 8010FA90 AFB70058 */  sw         $s7, 0x58($sp)
/* C5E54 8010FA94 AFA20054 */  sw         $v0, 0x54($sp)
/* C5E58 8010FA98 0C010B48 */  jal        func_80042D20
/* C5E5C 8010FA9C AFA30050 */   sw        $v1, 0x50($sp)
/* C5E60 8010FAA0 8E820144 */  lw         $v0, 0x144($s4)
/* C5E64 8010FAA4 10400010 */  beqz       $v0, .Lrace_8010FAE8
/* C5E68 8010FAA8 00008821 */   addu      $s1, $zero, $zero
/* C5E6C 8010FAAC 02C08021 */  addu       $s0, $s6, $zero
.Lrace_8010FAB0:
/* C5E70 8010FAB0 02802021 */  addu       $a0, $s4, $zero
/* C5E74 8010FAB4 8E020020 */  lw         $v0, 0x20($s0)
/* C5E78 8010FAB8 02A03021 */  addu       $a2, $s5, $zero
/* C5E7C 8010FABC AEA20034 */  sw         $v0, 0x34($s5)
/* C5E80 8010FAC0 8EC2003C */  lw         $v0, 0x3C($s6)
/* C5E84 8010FAC4 02203821 */  addu       $a3, $s1, $zero
/* C5E88 8010FAC8 AFA20010 */  sw         $v0, 0x10($sp)
/* C5E8C 8010FACC 8E050004 */  lw         $a1, 0x4($s0)
/* C5E90 8010FAD0 0C043ED5 */  jal        func_race_8010FB54
/* C5E94 8010FAD4 26310001 */   addiu     $s1, $s1, 0x1
/* C5E98 8010FAD8 8E820144 */  lw         $v0, 0x144($s4)
/* C5E9C 8010FADC 0222102B */  sltu       $v0, $s1, $v0
/* C5EA0 8010FAE0 1440FFF3 */  bnez       $v0, .Lrace_8010FAB0
/* C5EA4 8010FAE4 26100004 */   addiu     $s0, $s0, 0x4
.Lrace_8010FAE8:
/* C5EA8 8010FAE8 0C010B39 */  jal        func_80042CE4
/* C5EAC 8010FAEC 268400B4 */   addiu     $a0, $s4, 0xB4
/* C5EB0 8010FAF0 0C01101F */  jal        func_8004407C
/* C5EB4 8010FAF4 26840080 */   addiu     $a0, $s4, 0x80
/* C5EB8 8010FAF8 0C01131C */  jal        func_80044C70
/* C5EBC 8010FAFC 02802021 */   addu      $a0, $s4, $zero
/* C5EC0 8010FB00 8E840294 */  lw         $a0, 0x294($s4)
/* C5EC4 8010FB04 0C017B99 */  jal        func_8005EE64
/* C5EC8 8010FB08 00000000 */   nop
/* C5ECC 8010FB0C 8E840298 */  lw         $a0, 0x298($s4)
/* C5ED0 8010FB10 0C015643 */  jal        func_8005590C
/* C5ED4 8010FB14 00000000 */   nop
/* C5ED8 8010FB18 8E850140 */  lw         $a1, 0x140($s4)
/* C5EDC 8010FB1C 8E860144 */  lw         $a2, 0x144($s4)
/* C5EE0 8010FB20 0C043AF3 */  jal        func_race_8010EBCC
/* C5EE4 8010FB24 26840284 */   addiu     $a0, $s4, 0x284
/* C5EE8 8010FB28 8FBF0080 */  lw         $ra, 0x80($sp)
/* C5EEC 8010FB2C 8FB7007C */  lw         $s7, 0x7C($sp)
/* C5EF0 8010FB30 8FB60078 */  lw         $s6, 0x78($sp)
/* C5EF4 8010FB34 8FB50074 */  lw         $s5, 0x74($sp)
/* C5EF8 8010FB38 8FB40070 */  lw         $s4, 0x70($sp)
/* C5EFC 8010FB3C 8FB3006C */  lw         $s3, 0x6C($sp)
/* C5F00 8010FB40 8FB20068 */  lw         $s2, 0x68($sp)
/* C5F04 8010FB44 8FB10064 */  lw         $s1, 0x64($sp)
/* C5F08 8010FB48 8FB00060 */  lw         $s0, 0x60($sp)
/* C5F0C 8010FB4C 03E00008 */  jr         $ra
/* C5F10 8010FB50 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_race_8010FB54
/* C5F14 8010FB54 27BDFE90 */  addiu      $sp, $sp, -0x170
/* C5F18 8010FB58 AFB60158 */  sw         $s6, 0x158($sp)
/* C5F1C 8010FB5C 0080B021 */  addu       $s6, $a0, $zero
/* C5F20 8010FB60 AFB3014C */  sw         $s3, 0x14C($sp)
/* C5F24 8010FB64 00A09821 */  addu       $s3, $a1, $zero
/* C5F28 8010FB68 AFBE0160 */  sw         $fp, 0x160($sp)
/* C5F2C 8010FB6C 00C0F021 */  addu       $fp, $a2, $zero
/* C5F30 8010FB70 AFB7015C */  sw         $s7, 0x15C($sp)
/* C5F34 8010FB74 00E0B821 */  addu       $s7, $a3, $zero
/* C5F38 8010FB78 AFBF0164 */  sw         $ra, 0x164($sp)
/* C5F3C 8010FB7C AFB50154 */  sw         $s5, 0x154($sp)
/* C5F40 8010FB80 AFB40150 */  sw         $s4, 0x150($sp)
/* C5F44 8010FB84 AFB20148 */  sw         $s2, 0x148($sp)
/* C5F48 8010FB88 AFB10144 */  sw         $s1, 0x144($sp)
/* C5F4C 8010FB8C AFB00140 */  sw         $s0, 0x140($sp)
/* C5F50 8010FB90 F7B40168 */  sdc1       $f20, 0x168($sp)
/* C5F54 8010FB94 AFA00098 */  sw         $zero, 0x98($sp)
/* C5F58 8010FB98 A3A00080 */  sb         $zero, 0x80($sp)
/* C5F5C 8010FB9C AFA000FC */  sw         $zero, 0xFC($sp)
/* C5F60 8010FBA0 AFA00100 */  sw         $zero, 0x100($sp)
/* C5F64 8010FBA4 92620000 */  lbu        $v0, 0x0($s3)
/* C5F68 8010FBA8 10400048 */  beqz       $v0, .Lrace_8010FCCC
/* C5F6C 8010FBAC 0000A021 */   addu      $s4, $zero, $zero
/* C5F70 8010FBB0 0C016427 */  jal        func_8005909C
/* C5F74 8010FBB4 26D10080 */   addiu     $s1, $s6, 0x80
/* C5F78 8010FBB8 02C02021 */  addu       $a0, $s6, $zero
/* C5F7C 8010FBBC 02602821 */  addu       $a1, $s3, $zero
/* C5F80 8010FBC0 0C011517 */  jal        func_8004545C
/* C5F84 8010FBC4 00409021 */   addu      $s2, $v0, $zero
/* C5F88 8010FBC8 02202021 */  addu       $a0, $s1, $zero
/* C5F8C 8010FBCC 2650001A */  addiu      $s0, $s2, 0x1A
/* C5F90 8010FBD0 02002821 */  addu       $a1, $s0, $zero
/* C5F94 8010FBD4 0C016427 */  jal        func_8005909C
/* C5F98 8010FBD8 AFA20024 */   sw        $v0, 0x24($sp)
/* C5F9C 8010FBDC 0040A021 */  addu       $s4, $v0, $zero
/* C5FA0 8010FBE0 02202021 */  addu       $a0, $s1, $zero
/* C5FA4 8010FBE4 0C01118A */  jal        func_80044628
/* C5FA8 8010FBE8 02002821 */   addu      $a1, $s0, $zero
/* C5FAC 8010FBEC 26D000B4 */  addiu      $s0, $s6, 0xB4
/* C5FB0 8010FBF0 02002021 */  addu       $a0, $s0, $zero
/* C5FB4 8010FBF4 26850018 */  addiu      $a1, $s4, 0x18
/* C5FB8 8010FBF8 0C016427 */  jal        func_8005909C
/* C5FBC 8010FBFC AFA20018 */   sw        $v0, 0x18($sp)
/* C5FC0 8010FC00 0040A821 */  addu       $s5, $v0, $zero
/* C5FC4 8010FC04 02002021 */  addu       $a0, $s0, $zero
/* C5FC8 8010FC08 02A02821 */  addu       $a1, $s5, $zero
/* C5FCC 8010FC0C 27A60020 */  addiu      $a2, $sp, 0x20
/* C5FD0 8010FC10 0C010DD8 */  jal        func_80043760
/* C5FD4 8010FC14 27A7001C */   addiu     $a3, $sp, 0x1C
/* C5FD8 8010FC18 92A20100 */  lbu        $v0, 0x100($s5)
/* C5FDC 8010FC1C A3A20104 */  sb         $v0, 0x104($sp)
/* C5FE0 8010FC20 92A20101 */  lbu        $v0, 0x101($s5)
/* C5FE4 8010FC24 A3A20105 */  sb         $v0, 0x105($sp)
/* C5FE8 8010FC28 92A20102 */  lbu        $v0, 0x102($s5)
/* C5FEC 8010FC2C A3A20106 */  sb         $v0, 0x106($sp)
/* C5FF0 8010FC30 92420024 */  lbu        $v0, 0x24($s2)
/* C5FF4 8010FC34 A3A200EC */  sb         $v0, 0xEC($sp)
/* C5FF8 8010FC38 92420025 */  lbu        $v0, 0x25($s2)
/* C5FFC 8010FC3C A3A200ED */  sb         $v0, 0xED($sp)
/* C6000 8010FC40 92420026 */  lbu        $v0, 0x26($s2)
/* C6004 8010FC44 A3A200EE */  sb         $v0, 0xEE($sp)
/* C6008 8010FC48 92420027 */  lbu        $v0, 0x27($s2)
/* C600C 8010FC4C A3A200EF */  sb         $v0, 0xEF($sp)
/* C6010 8010FC50 92420028 */  lbu        $v0, 0x28($s2)
/* C6014 8010FC54 A3A200F0 */  sb         $v0, 0xF0($sp)
/* C6018 8010FC58 92420029 */  lbu        $v0, 0x29($s2)
/* C601C 8010FC5C A3A200F1 */  sb         $v0, 0xF1($sp)
/* C6020 8010FC60 9242002A */  lbu        $v0, 0x2A($s2)
/* C6024 8010FC64 00021080 */  sll        $v0, $v0, 2
/* C6028 8010FC68 2442044C */  addiu      $v0, $v0, 0x44C
/* C602C 8010FC6C AFA200F4 */  sw         $v0, 0xF4($sp)
/* C6030 8010FC70 92430022 */  lbu        $v1, 0x22($s2)
/* C6034 8010FC74 24020002 */  addiu      $v0, $zero, 0x2
/* C6038 8010FC78 1062000C */  beq        $v1, $v0, .Lrace_8010FCAC
/* C603C 8010FC7C 28620003 */   slti      $v0, $v1, 0x3
/* C6040 8010FC80 10400005 */  beqz       $v0, .Lrace_8010FC98
/* C6044 8010FC84 24020001 */   addiu     $v0, $zero, 0x1
/* C6048 8010FC88 50620009 */  beql       $v1, $v0, .Lrace_8010FCB0
/* C604C 8010FC8C AFA300FC */   sw        $v1, 0xFC($sp)
/* C6050 8010FC90 08043F2C */  j          .Lrace_8010FCB0
/* C6054 8010FC94 AFA000FC */   sw        $zero, 0xFC($sp)
.Lrace_8010FC98:
/* C6058 8010FC98 24020003 */  addiu      $v0, $zero, 0x3
/* C605C 8010FC9C 10620003 */  beq        $v1, $v0, .Lrace_8010FCAC
/* C6060 8010FCA0 24020004 */   addiu     $v0, $zero, 0x4
/* C6064 8010FCA4 54620002 */  bnel       $v1, $v0, .Lrace_8010FCB0
/* C6068 8010FCA8 AFA000FC */   sw        $zero, 0xFC($sp)
.Lrace_8010FCAC:
/* C606C 8010FCAC AFA300FC */  sw         $v1, 0xFC($sp)
.Lrace_8010FCB0:
/* C6070 8010FCB0 02C02021 */  addu       $a0, $s6, $zero
/* C6074 8010FCB4 92420023 */  lbu        $v0, 0x23($s2)
/* C6078 8010FCB8 02602821 */  addu       $a1, $s3, $zero
/* C607C 8010FCBC 0C011627 */  jal        func_8004589C
/* C6080 8010FCC0 AFA20100 */   sw        $v0, 0x100($sp)
/* C6084 8010FCC4 08043FBD */  j          .Lrace_8010FEF4
/* C6088 8010FCC8 AFA20098 */   sw        $v0, 0x98($sp)
.Lrace_8010FCCC:
/* C608C 8010FCCC 3C028013 */  lui        $v0, %hi(D_race_8013224C)
/* C6090 8010FCD0 8C44224C */  lw         $a0, %lo(D_race_8013224C)($v0)
/* C6094 8010FCD4 0C01FB65 */  jal        func_8007ED94
/* C6098 8010FCD8 00000000 */   nop
/* C609C 8010FCDC 0C01FB4C */  jal        func_8007ED30
/* C60A0 8010FCE0 24040090 */   addiu     $a0, $zero, 0x90
/* C60A4 8010FCE4 0C016038 */  jal        func_800580E0
/* C60A8 8010FCE8 00402021 */   addu      $a0, $v0, $zero
/* C60AC 8010FCEC 8EC3018C */  lw         $v1, 0x18C($s6)
/* C60B0 8010FCF0 00031880 */  sll        $v1, $v1, 2
/* C60B4 8010FCF4 02C31821 */  addu       $v1, $s6, $v1
/* C60B8 8010FCF8 AC62017C */  sw         $v0, 0x17C($v1)
/* C60BC 8010FCFC 8EC2018C */  lw         $v0, 0x18C($s6)
/* C60C0 8010FD00 00021080 */  sll        $v0, $v0, 2
/* C60C4 8010FD04 02C21021 */  addu       $v0, $s6, $v0
/* C60C8 8010FD08 8C42017C */  lw         $v0, 0x17C($v0)
/* C60CC 8010FD0C 14400006 */  bnez       $v0, .Lrace_8010FD28
/* C60D0 8010FD10 3C04800D */   lui       $a0, %hi(D_race_800CDD08)
/* C60D4 8010FD14 2484DD08 */  addiu      $a0, $a0, %lo(D_race_800CDD08)
/* C60D8 8010FD18 00002821 */  addu       $a1, $zero, $zero
/* C60DC 8010FD1C 00A03021 */  addu       $a2, $a1, $zero
/* C60E0 8010FD20 0C011ACF */  jal        func_80046B3C
/* C60E4 8010FD24 00A03821 */   addu      $a3, $a1, $zero
.Lrace_8010FD28:
/* C60E8 8010FD28 0C01FB4C */  jal        func_8007ED30
/* C60EC 8010FD2C 240400F4 */   addiu     $a0, $zero, 0xF4
/* C60F0 8010FD30 0C01955C */  jal        func_80065570
/* C60F4 8010FD34 00402021 */   addu      $a0, $v0, $zero
/* C60F8 8010FD38 8EC3018C */  lw         $v1, 0x18C($s6)
/* C60FC 8010FD3C 00031880 */  sll        $v1, $v1, 2
/* C6100 8010FD40 02C31821 */  addu       $v1, $s6, $v1
/* C6104 8010FD44 AC620184 */  sw         $v0, 0x184($v1)
/* C6108 8010FD48 8EC2018C */  lw         $v0, 0x18C($s6)
/* C610C 8010FD4C 00021080 */  sll        $v0, $v0, 2
/* C6110 8010FD50 02C21021 */  addu       $v0, $s6, $v0
/* C6114 8010FD54 8C42017C */  lw         $v0, 0x17C($v0)
/* C6118 8010FD58 14400006 */  bnez       $v0, .Lrace_8010FD74
/* C611C 8010FD5C 00002821 */   addu      $a1, $zero, $zero
/* C6120 8010FD60 3C04800D */  lui        $a0, %hi(D_race_800CDD08)
/* C6124 8010FD64 2484DD08 */  addiu      $a0, $a0, %lo(D_race_800CDD08)
/* C6128 8010FD68 00A03021 */  addu       $a2, $a1, $zero
/* C612C 8010FD6C 0C011ACF */  jal        func_80046B3C
/* C6130 8010FD70 00A03821 */   addu      $a3, $a1, $zero
.Lrace_8010FD74:
/* C6134 8010FD74 0C01FB72 */  jal        func_8007EDC8
/* C6138 8010FD78 00000000 */   nop
/* C613C 8010FD7C 8E64002C */  lw         $a0, 0x2C($s3)
/* C6140 8010FD80 0C017B99 */  jal        func_8005EE64
/* C6144 8010FD84 00000000 */   nop
/* C6148 8010FD88 8E640028 */  lw         $a0, 0x28($s3)
/* C614C 8010FD8C 0C015643 */  jal        func_8005590C
/* C6150 8010FD90 00000000 */   nop
/* C6154 8010FD94 8EC2018C */  lw         $v0, 0x18C($s6)
/* C6158 8010FD98 8E650024 */  lw         $a1, 0x24($s3)
/* C615C 8010FD9C 00021080 */  sll        $v0, $v0, 2
/* C6160 8010FDA0 02C21021 */  addu       $v0, $s6, $v0
/* C6164 8010FDA4 8C43017C */  lw         $v1, 0x17C($v0)
/* C6168 8010FDA8 3C01800D */  lui        $at, %hi(D_race_800CDD14)
/* C616C 8010FDAC C434DD14 */  lwc1       $f20, %lo(D_race_800CDD14)($at)
/* C6170 8010FDB0 8C620024 */  lw         $v0, 0x24($v1)
/* C6174 8010FDB4 4406A000 */  mfc1       $a2, $f20
/* C6178 8010FDB8 844400A8 */  lh         $a0, 0xA8($v0)
/* C617C 8010FDBC 8C4200AC */  lw         $v0, 0xAC($v0)
/* C6180 8010FDC0 0040F809 */  jalr       $v0
/* C6184 8010FDC4 00642021 */   addu      $a0, $v1, $a0
/* C6188 8010FDC8 8EC2018C */  lw         $v0, 0x18C($s6)
/* C618C 8010FDCC 00021080 */  sll        $v0, $v0, 2
/* C6190 8010FDD0 02C21021 */  addu       $v0, $s6, $v0
/* C6194 8010FDD4 8C42017C */  lw         $v0, 0x17C($v0)
/* C6198 8010FDD8 AFA20018 */  sw         $v0, 0x18($sp)
/* C619C 8010FDDC 8E620048 */  lw         $v0, 0x48($s3)
/* C61A0 8010FDE0 1440000C */  bnez       $v0, .Lrace_8010FE14
/* C61A4 8010FDE4 24020062 */   addiu     $v0, $zero, 0x62
/* C61A8 8010FDE8 02C02021 */  addu       $a0, $s6, $zero
/* C61AC 8010FDEC 27A50120 */  addiu      $a1, $sp, 0x120
/* C61B0 8010FDF0 A3A20120 */  sb         $v0, 0x120($sp)
/* C61B4 8010FDF4 A3A20121 */  sb         $v0, 0x121($sp)
/* C61B8 8010FDF8 0C016427 */  jal        func_8005909C
/* C61BC 8010FDFC A3A00122 */   sb        $zero, 0x122($sp)
/* C61C0 8010FE00 02C02021 */  addu       $a0, $s6, $zero
/* C61C4 8010FE04 0C011517 */  jal        func_8004545C
/* C61C8 8010FE08 27A50120 */   addiu     $a1, $sp, 0x120
/* C61CC 8010FE0C 08043F99 */  j          .Lrace_8010FE64
/* C61D0 8010FE10 AFA20024 */   sw        $v0, 0x24($sp)
.Lrace_8010FE14:
/* C61D4 8010FE14 8E640050 */  lw         $a0, 0x50($s3)
/* C61D8 8010FE18 0C017B99 */  jal        func_8005EE64
/* C61DC 8010FE1C 00000000 */   nop
/* C61E0 8010FE20 8E64004C */  lw         $a0, 0x4C($s3)
/* C61E4 8010FE24 0C015643 */  jal        func_8005590C
/* C61E8 8010FE28 00000000 */   nop
/* C61EC 8010FE2C 8EC6003C */  lw         $a2, 0x3C($s6)
/* C61F0 8010FE30 8EC2018C */  lw         $v0, 0x18C($s6)
/* C61F4 8010FE34 E7B40010 */  swc1       $f20, 0x10($sp)
/* C61F8 8010FE38 8E650048 */  lw         $a1, 0x48($s3)
/* C61FC 8010FE3C 00021080 */  sll        $v0, $v0, 2
/* C6200 8010FE40 02C21021 */  addu       $v0, $s6, $v0
/* C6204 8010FE44 8C440184 */  lw         $a0, 0x184($v0)
/* C6208 8010FE48 0C01956B */  jal        func_800655AC
/* C620C 8010FE4C 26C70040 */   addiu     $a3, $s6, 0x40
/* C6210 8010FE50 8EC2018C */  lw         $v0, 0x18C($s6)
/* C6214 8010FE54 00021080 */  sll        $v0, $v0, 2
/* C6218 8010FE58 02C21021 */  addu       $v0, $s6, $v0
/* C621C 8010FE5C 8C420184 */  lw         $v0, 0x184($v0)
/* C6220 8010FE60 AFA20024 */  sw         $v0, 0x24($sp)
.Lrace_8010FE64:
/* C6224 8010FE64 26D000B4 */  addiu      $s0, $s6, 0xB4
/* C6228 8010FE68 02002021 */  addu       $a0, $s0, $zero
/* C622C 8010FE6C 0C016427 */  jal        func_8005909C
/* C6230 8010FE70 26650008 */   addiu     $a1, $s3, 0x8
/* C6234 8010FE74 0040A821 */  addu       $s5, $v0, $zero
/* C6238 8010FE78 02002021 */  addu       $a0, $s0, $zero
/* C623C 8010FE7C 02A02821 */  addu       $a1, $s5, $zero
/* C6240 8010FE80 27A60020 */  addiu      $a2, $sp, 0x20
/* C6244 8010FE84 0C010DD8 */  jal        func_80043760
/* C6248 8010FE88 27A7001C */   addiu     $a3, $sp, 0x1C
/* C624C 8010FE8C 92A20100 */  lbu        $v0, 0x100($s5)
/* C6250 8010FE90 27A40080 */  addiu      $a0, $sp, 0x80
/* C6254 8010FE94 A3A20104 */  sb         $v0, 0x104($sp)
/* C6258 8010FE98 92A20101 */  lbu        $v0, 0x101($s5)
/* C625C 8010FE9C 26650030 */  addiu      $a1, $s3, 0x30
/* C6260 8010FEA0 A3A20105 */  sb         $v0, 0x105($sp)
/* C6264 8010FEA4 92A30102 */  lbu        $v1, 0x102($s5)
/* C6268 8010FEA8 24020064 */  addiu      $v0, $zero, 0x64
/* C626C 8010FEAC A3A200EC */  sb         $v0, 0xEC($sp)
/* C6270 8010FEB0 A3A200ED */  sb         $v0, 0xED($sp)
/* C6274 8010FEB4 A3A200EE */  sb         $v0, 0xEE($sp)
/* C6278 8010FEB8 A3A200EF */  sb         $v0, 0xEF($sp)
/* C627C 8010FEBC A3A200F0 */  sb         $v0, 0xF0($sp)
/* C6280 8010FEC0 A3A200F1 */  sb         $v0, 0xF1($sp)
/* C6284 8010FEC4 00171040 */  sll        $v0, $s7, 1
/* C6288 8010FEC8 00571021 */  addu       $v0, $v0, $s7
/* C628C 8010FECC 000210C0 */  sll        $v0, $v0, 3
/* C6290 8010FED0 00571021 */  addu       $v0, $v0, $s7
/* C6294 8010FED4 00021080 */  sll        $v0, $v0, 2
/* C6298 8010FED8 244203E8 */  addiu      $v0, $v0, 0x3E8
/* C629C 8010FEDC AFA200F4 */  sw         $v0, 0xF4($sp)
/* C62A0 8010FEE0 0C0006FA */  jal        func_80001BE8
/* C62A4 8010FEE4 A3A30106 */   sb        $v1, 0x106($sp)
/* C62A8 8010FEE8 8EC2018C */  lw         $v0, 0x18C($s6)
/* C62AC 8010FEEC 24420001 */  addiu      $v0, $v0, 0x1
/* C62B0 8010FEF0 AEC2018C */  sw         $v0, 0x18C($s6)
.Lrace_8010FEF4:
/* C62B4 8010FEF4 001710C0 */  sll        $v0, $s7, 3
/* C62B8 8010FEF8 00571023 */  subu       $v0, $v0, $s7
/* C62BC 8010FEFC 000210C0 */  sll        $v0, $v0, 3
/* C62C0 8010FF00 00571021 */  addu       $v0, $v0, $s7
/* C62C4 8010FF04 00021080 */  sll        $v0, $v0, 2
/* C62C8 8010FF08 00571023 */  subu       $v0, $v0, $s7
/* C62CC 8010FF0C 00021080 */  sll        $v0, $v0, 2
/* C62D0 8010FF10 00571023 */  subu       $v0, $v0, $s7
/* C62D4 8010FF14 8EA800C4 */  lw         $t0, 0xC4($s5)
/* C62D8 8010FF18 8EA900C8 */  lw         $t1, 0xC8($s5)
/* C62DC 8010FF1C 8EAA00CC */  lw         $t2, 0xCC($s5)
/* C62E0 8010FF20 AFA80028 */  sw         $t0, 0x28($sp)
/* C62E4 8010FF24 AFA9002C */  sw         $t1, 0x2C($sp)
/* C62E8 8010FF28 AFAA0030 */  sw         $t2, 0x30($sp)
/* C62EC 8010FF2C 8EC30140 */  lw         $v1, 0x140($s6)
/* C62F0 8010FF30 00021080 */  sll        $v0, $v0, 2
/* C62F4 8010FF34 00621821 */  addu       $v1, $v1, $v0
/* C62F8 8010FF38 AFA30034 */  sw         $v1, 0x34($sp)
/* C62FC 8010FF3C C6A000DC */  lwc1       $f0, 0xDC($s5)
/* C6300 8010FF40 27A40048 */  addiu      $a0, $sp, 0x48
/* C6304 8010FF44 E7A00038 */  swc1       $f0, 0x38($sp)
/* C6308 8010FF48 C6A000E0 */  lwc1       $f0, 0xE0($s5)
/* C630C 8010FF4C 3C05800D */  lui        $a1, %hi(D_race_800CDD0C)
/* C6310 8010FF50 E7A0003C */  swc1       $f0, 0x3C($sp)
/* C6314 8010FF54 C6A000E4 */  lwc1       $f0, 0xE4($s5)
/* C6318 8010FF58 24A5DD0C */  addiu      $a1, $a1, %lo(D_race_800CDD0C)
/* C631C 8010FF5C E7A00040 */  swc1       $f0, 0x40($sp)
/* C6320 8010FF60 C6A000E8 */  lwc1       $f0, 0xE8($s5)
/* C6324 8010FF64 24060008 */  addiu      $a2, $zero, 0x8
/* C6328 8010FF68 0C000708 */  jal        func_80001C20
/* C632C 8010FF6C E7A00044 */   swc1      $f0, 0x44($sp)
/* C6330 8010FF70 00003021 */  addu       $a2, $zero, $zero
/* C6334 8010FF74 27A50080 */  addiu      $a1, $sp, 0x80
/* C6338 8010FF78 02A01821 */  addu       $v1, $s5, $zero
/* C633C 8010FF7C 27A40018 */  addiu      $a0, $sp, 0x18
/* C6340 8010FF80 26E20030 */  addiu      $v0, $s7, 0x30
/* C6344 8010FF84 A3A2004F */  sb         $v0, 0x4F($sp)
.Lrace_8010FF88:
/* C6348 8010FF88 8C680058 */  lw         $t0, 0x58($v1)
/* C634C 8010FF8C 8C69005C */  lw         $t1, 0x5C($v1)
/* C6350 8010FF90 8C6A0060 */  lw         $t2, 0x60($v1)
/* C6354 8010FF94 AC880038 */  sw         $t0, 0x38($a0)
/* C6358 8010FF98 AC89003C */  sw         $t1, 0x3C($a0)
/* C635C 8010FF9C AC8A0040 */  sw         $t2, 0x40($a0)
/* C6360 8010FFA0 8C680088 */  lw         $t0, 0x88($v1)
/* C6364 8010FFA4 8C69008C */  lw         $t1, 0x8C($v1)
/* C6368 8010FFA8 8C6A0090 */  lw         $t2, 0x90($v1)
/* C636C 8010FFAC ACA8001C */  sw         $t0, 0x1C($a1)
/* C6370 8010FFB0 ACA90020 */  sw         $t1, 0x20($a1)
/* C6374 8010FFB4 ACAA0024 */  sw         $t2, 0x24($a1)
/* C6378 8010FFB8 24A5000C */  addiu      $a1, $a1, 0xC
/* C637C 8010FFBC 2463000C */  addiu      $v1, $v1, 0xC
/* C6380 8010FFC0 24C60001 */  addiu      $a2, $a2, 0x1
/* C6384 8010FFC4 2CC20004 */  sltiu      $v0, $a2, 0x4
/* C6388 8010FFC8 1440FFEF */  bnez       $v0, .Lrace_8010FF88
/* C638C 8010FFCC 2484000C */   addiu     $a0, $a0, 0xC
/* C6390 8010FFD0 8FC20028 */  lw         $v0, 0x28($fp)
/* C6394 8010FFD4 AFA200E0 */  sw         $v0, 0xE0($sp)
/* C6398 8010FFD8 8FC2002C */  lw         $v0, 0x2C($fp)
/* C639C 8010FFDC AFA200E4 */  sw         $v0, 0xE4($sp)
/* C63A0 8010FFE0 8FC2000C */  lw         $v0, 0xC($fp)
/* C63A4 8010FFE4 AFA200E8 */  sw         $v0, 0xE8($sp)
/* C63A8 8010FFE8 C6A000EC */  lwc1       $f0, 0xEC($s5)
/* C63AC 8010FFEC 1280000B */  beqz       $s4, .Lrace_8011001C
/* C63B0 8010FFF0 E7A000F8 */   swc1      $f0, 0xF8($sp)
/* C63B4 8010FFF4 8E880024 */  lw         $t0, 0x24($s4)
/* C63B8 8010FFF8 8E890028 */  lw         $t1, 0x28($s4)
/* C63BC 8010FFFC 8E8A002C */  lw         $t2, 0x2C($s4)
/* C63C0 80110000 AFA800CC */  sw         $t0, 0xCC($sp)
/* C63C4 80110004 AFA900D0 */  sw         $t1, 0xD0($sp)
/* C63C8 80110008 AFAA00D4 */  sw         $t2, 0xD4($sp)
/* C63CC 8011000C C6800020 */  lwc1       $f0, 0x20($s4)
/* C63D0 80110010 AFA000DC */  sw         $zero, 0xDC($sp)
/* C63D4 80110014 0804401B */  j          .Lrace_8011006C
/* C63D8 80110018 E7A000D8 */   swc1      $f0, 0xD8($sp)
.Lrace_8011001C:
/* C63DC 8011001C C6620018 */  lwc1       $f2, 0x18($s3)
/* C63E0 80110020 3C01800D */  lui        $at, %hi(D_race_800CDD18)
/* C63E4 80110024 C424DD18 */  lwc1       $f4, %lo(D_race_800CDD18)($at)
/* C63E8 80110028 46041082 */  mul.s      $f2, $f2, $f4
/* C63EC 8011002C C6A000B8 */  lwc1       $f0, 0xB8($s5)
/* C63F0 80110030 46020000 */  add.s      $f0, $f0, $f2
/* C63F4 80110034 E7A000CC */  swc1       $f0, 0xCC($sp)
/* C63F8 80110038 C662001C */  lwc1       $f2, 0x1C($s3)
/* C63FC 8011003C 46041082 */  mul.s      $f2, $f2, $f4
/* C6400 80110040 C6A000BC */  lwc1       $f0, 0xBC($s5)
/* C6404 80110044 46020000 */  add.s      $f0, $f0, $f2
/* C6408 80110048 E7A000D0 */  swc1       $f0, 0xD0($sp)
/* C640C 8011004C C6A000C0 */  lwc1       $f0, 0xC0($s5)
/* C6410 80110050 E7A000D4 */  swc1       $f0, 0xD4($sp)
/* C6414 80110054 C6A000D0 */  lwc1       $f0, 0xD0($s5)
/* C6418 80110058 C6620014 */  lwc1       $f2, 0x14($s3)
/* C641C 8011005C 46020000 */  add.s      $f0, $f0, $f2
/* C6420 80110060 E7A000D8 */  swc1       $f0, 0xD8($sp)
/* C6424 80110064 C6600014 */  lwc1       $f0, 0x14($s3)
/* C6428 80110068 E7A000DC */  swc1       $f0, 0xDC($sp)
.Lrace_8011006C:
/* C642C 8011006C 00171080 */  sll        $v0, $s7, 2
/* C6430 80110070 02C22021 */  addu       $a0, $s6, $v0
/* C6434 80110074 AC97026C */  sw         $s7, 0x26C($a0)
/* C6438 80110078 8EC20178 */  lw         $v0, 0x178($s6)
/* C643C 8011007C 10400008 */  beqz       $v0, .Lrace_801100A0
/* C6440 80110080 00000000 */   nop
/* C6444 80110084 904203B0 */  lbu        $v0, 0x3B0($v0)
/* C6448 80110088 30420008 */  andi       $v0, $v0, 0x8
/* C644C 8011008C 10400002 */  beqz       $v0, .Lrace_80110098
/* C6450 80110090 24030001 */   addiu     $v1, $zero, 0x1
/* C6454 80110094 24030002 */  addiu      $v1, $zero, 0x2
.Lrace_80110098:
/* C6458 80110098 0804402F */  j          .Lrace_801100BC
/* C645C 8011009C AC83026C */   sw        $v1, 0x26C($a0)
.Lrace_801100A0:
/* C6460 801100A0 8FA80180 */  lw         $t0, 0x180($sp)
/* C6464 801100A4 11000006 */  beqz       $t0, .Lrace_801100C0
/* C6468 801100A8 0017A080 */   sll       $s4, $s7, 2
/* C646C 801100AC 16E00005 */  bnez       $s7, .Lrace_801100C4
/* C6470 801100B0 02D4A021 */   addu      $s4, $s6, $s4
/* C6474 801100B4 24020002 */  addiu      $v0, $zero, 0x2
/* C6478 801100B8 AEC2026C */  sw         $v0, 0x26C($s6)
.Lrace_801100BC:
/* C647C 801100BC 0017A080 */  sll        $s4, $s7, 2
.Lrace_801100C0:
/* C6480 801100C0 02D4A021 */  addu       $s4, $s6, $s4
.Lrace_801100C4:
/* C6484 801100C4 8E82026C */  lw         $v0, 0x26C($s4)
/* C6488 801100C8 8FA30020 */  lw         $v1, 0x20($sp)
/* C648C 801100CC 00022840 */  sll        $a1, $v0, 1
/* C6490 801100D0 00A22821 */  addu       $a1, $a1, $v0
/* C6494 801100D4 00052880 */  sll        $a1, $a1, 2
/* C6498 801100D8 24A50194 */  addiu      $a1, $a1, 0x194
/* C649C 801100DC 8C620024 */  lw         $v0, 0x24($v1)
/* C64A0 801100E0 02C52821 */  addu       $a1, $s6, $a1
/* C64A4 801100E4 84440018 */  lh         $a0, 0x18($v0)
/* C64A8 801100E8 8C42001C */  lw         $v0, 0x1C($v0)
/* C64AC 801100EC 0040F809 */  jalr       $v0
/* C64B0 801100F0 00642021 */   addu      $a0, $v1, $a0
/* C64B4 801100F4 8E82026C */  lw         $v0, 0x26C($s4)
/* C64B8 801100F8 8FA30020 */  lw         $v1, 0x20($sp)
/* C64BC 801100FC 00023040 */  sll        $a2, $v0, 1
/* C64C0 80110100 00C23021 */  addu       $a2, $a2, $v0
/* C64C4 80110104 00063080 */  sll        $a2, $a2, 2
/* C64C8 80110108 24C501DC */  addiu      $a1, $a2, 0x1DC
/* C64CC 8011010C 02C52821 */  addu       $a1, $s6, $a1
/* C64D0 80110110 24C60224 */  addiu      $a2, $a2, 0x224
/* C64D4 80110114 8C620024 */  lw         $v0, 0x24($v1)
/* C64D8 80110118 02C63021 */  addu       $a2, $s6, $a2
/* C64DC 8011011C 84440080 */  lh         $a0, 0x80($v0)
/* C64E0 80110120 8C420084 */  lw         $v0, 0x84($v0)
/* C64E4 80110124 0040F809 */  jalr       $v0
/* C64E8 80110128 00642021 */   addu      $a0, $v1, $a0
/* C64EC 8011012C 03C02821 */  addu       $a1, $fp, $zero
/* C64F0 80110130 27A60018 */  addiu      $a2, $sp, 0x18
/* C64F4 80110134 27A70080 */  addiu      $a3, $sp, 0x80
/* C64F8 80110138 001780C0 */  sll        $s0, $s7, 3
/* C64FC 8011013C 02178023 */  subu       $s0, $s0, $s7
/* C6500 80110140 001080C0 */  sll        $s0, $s0, 3
/* C6504 80110144 02178021 */  addu       $s0, $s0, $s7
/* C6508 80110148 00108080 */  sll        $s0, $s0, 2
/* C650C 8011014C 02178023 */  subu       $s0, $s0, $s7
/* C6510 80110150 00108080 */  sll        $s0, $s0, 2
/* C6514 80110154 92C2029C */  lbu        $v0, 0x29C($s6)
/* C6518 80110158 02178023 */  subu       $s0, $s0, $s7
/* C651C 8011015C A3A200F2 */  sb         $v0, 0xF2($sp)
/* C6520 80110160 8EC40140 */  lw         $a0, 0x140($s6)
/* C6524 80110164 00108080 */  sll        $s0, $s0, 2
/* C6528 80110168 AFB60010 */  sw         $s6, 0x10($sp)
/* C652C 8011016C AFB70014 */  sw         $s7, 0x14($sp)
/* C6530 80110170 0C0428EC */  jal        func_race_8010A3B0
/* C6534 80110174 00902021 */   addu      $a0, $a0, $s0
/* C6538 80110178 8EC20140 */  lw         $v0, 0x140($s6)
/* C653C 8011017C 26C302A0 */  addiu      $v1, $s6, 0x2A0
/* C6540 80110180 02021021 */  addu       $v0, $s0, $v0
/* C6544 80110184 AC430CC0 */  sw         $v1, 0xCC0($v0)
/* C6548 80110188 8EC30294 */  lw         $v1, 0x294($s6)
/* C654C 8011018C 8C620008 */  lw         $v0, 0x8($v1)
/* C6550 80110190 02E02821 */  addu       $a1, $s7, $zero
/* C6554 80110194 84440058 */  lh         $a0, 0x58($v0)
/* C6558 80110198 8C42005C */  lw         $v0, 0x5C($v0)
/* C655C 8011019C 0040F809 */  jalr       $v0
/* C6560 801101A0 00642021 */   addu      $a0, $v1, $a0
/* C6564 801101A4 8EC30298 */  lw         $v1, 0x298($s6)
/* C6568 801101A8 8C660008 */  lw         $a2, 0x8($v1)
/* C656C 801101AC 84C40058 */  lh         $a0, 0x58($a2)
/* C6570 801101B0 02E02821 */  addu       $a1, $s7, $zero
/* C6574 801101B4 00642021 */  addu       $a0, $v1, $a0
/* C6578 801101B8 8CC3005C */  lw         $v1, 0x5C($a2)
/* C657C 801101BC 0060F809 */  jalr       $v1
/* C6580 801101C0 00409021 */   addu      $s2, $v0, $zero
/* C6584 801101C4 27B30108 */  addiu      $s3, $sp, 0x108
/* C6588 801101C8 02602021 */  addu       $a0, $s3, $zero
/* C658C 801101CC 00002821 */  addu       $a1, $zero, $zero
/* C6590 801101D0 2403000C */  addiu      $v1, $zero, 0xC
/* C6594 801101D4 00408821 */  addu       $s1, $v0, $zero
/* C6598 801101D8 8AA90050 */  lwl        $t1, 0x50($s5)
/* C659C 801101DC 9AA90053 */  lwr        $t1, 0x53($s5)
/* C65A0 801101E0 8AAA0054 */  lwl        $t2, 0x54($s5)
/* C65A4 801101E4 9AAA0057 */  lwr        $t2, 0x57($s5)
/* C65A8 801101E8 AA490038 */  swl        $t1, 0x38($s2)
/* C65AC 801101EC BA49003B */  swr        $t1, 0x3B($s2)
/* C65B0 801101F0 AA4A003C */  swl        $t2, 0x3C($s2)
/* C65B4 801101F4 BA4A003F */  swr        $t2, 0x3F($s2)
/* C65B8 801101F8 A6430036 */  sh         $v1, 0x36($s2)
/* C65BC 801101FC 8AA90050 */  lwl        $t1, 0x50($s5)
/* C65C0 80110200 9AA90053 */  lwr        $t1, 0x53($s5)
/* C65C4 80110204 8AAA0054 */  lwl        $t2, 0x54($s5)
/* C65C8 80110208 9AAA0057 */  lwr        $t2, 0x57($s5)
/* C65CC 8011020C AA290014 */  swl        $t1, 0x14($s1)
/* C65D0 80110210 BA290017 */  swr        $t1, 0x17($s1)
/* C65D4 80110214 AA2A0018 */  swl        $t2, 0x18($s1)
/* C65D8 80110218 BA2A001B */  swr        $t2, 0x1B($s1)
/* C65DC 8011021C 0C000697 */  jal        func_80001A5C
/* C65E0 80110220 24060014 */   addiu     $a2, $zero, 0x14
/* C65E4 80110224 3C020050 */  lui        $v0, (0x50A6AC >> 16)
/* C65E8 80110228 3442A6AC */  ori        $v0, $v0, (0x50A6AC & 0xFFFF)
/* C65EC 8011022C 02202021 */  addu       $a0, $s1, $zero
/* C65F0 80110230 AFA20108 */  sw         $v0, 0x108($sp)
/* C65F4 80110234 AFB2010C */  sw         $s2, 0x10C($sp)
/* C65F8 80110238 8FC50000 */  lw         $a1, 0x0($fp)
/* C65FC 8011023C 0C0151F9 */  jal        func_800547E4
/* C6600 80110240 02603021 */   addu      $a2, $s3, $zero
/* C6604 80110244 24020003 */  addiu      $v0, $zero, 0x3
/* C6608 80110248 AFA20128 */  sw         $v0, 0x128($sp)
/* C660C 8011024C 24020005 */  addiu      $v0, $zero, 0x5
/* C6610 80110250 AFA2012C */  sw         $v0, 0x12C($sp)
/* C6614 80110254 AFA00134 */  sw         $zero, 0x134($sp)
/* C6618 80110258 8EC20140 */  lw         $v0, 0x140($s6)
/* C661C 8011025C 26C400F0 */  addiu      $a0, $s6, 0xF0
/* C6620 80110260 02021021 */  addu       $v0, $s0, $v0
/* C6624 80110264 244203FC */  addiu      $v0, $v0, 0x3FC
/* C6628 80110268 AFA20138 */  sw         $v0, 0x138($sp)
/* C662C 8011026C 8EC50140 */  lw         $a1, 0x140($s6)
/* C6630 80110270 27A60128 */  addiu      $a2, $sp, 0x128
/* C6634 80110274 0C04053E */  jal        func_race_801014F8
/* C6638 80110278 00B02821 */   addu      $a1, $a1, $s0
/* C663C 8011027C AE820154 */  sw         $v0, 0x154($s4)
/* C6640 80110280 8FBF0164 */  lw         $ra, 0x164($sp)
/* C6644 80110284 8FBE0160 */  lw         $fp, 0x160($sp)
/* C6648 80110288 8FB7015C */  lw         $s7, 0x15C($sp)
/* C664C 8011028C 8FB60158 */  lw         $s6, 0x158($sp)
/* C6650 80110290 8FB50154 */  lw         $s5, 0x154($sp)
/* C6654 80110294 8FB40150 */  lw         $s4, 0x150($sp)
/* C6658 80110298 8FB3014C */  lw         $s3, 0x14C($sp)
/* C665C 8011029C 8FB20148 */  lw         $s2, 0x148($sp)
/* C6660 801102A0 8FB10144 */  lw         $s1, 0x144($sp)
/* C6664 801102A4 8FB00140 */  lw         $s0, 0x140($sp)
/* C6668 801102A8 D7B40168 */  ldc1       $f20, 0x168($sp)
/* C666C 801102AC 03E00008 */  jr         $ra
/* C6670 801102B0 27BD0170 */   addiu     $sp, $sp, 0x170

glabel func_race_801102B4
/* C6674 801102B4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C6678 801102B8 AFB50024 */  sw         $s5, 0x24($sp)
/* C667C 801102BC 0080A821 */  addu       $s5, $a0, $zero
/* C6680 801102C0 AFB20018 */  sw         $s2, 0x18($sp)
/* C6684 801102C4 00A09021 */  addu       $s2, $a1, $zero
/* C6688 801102C8 AFB3001C */  sw         $s3, 0x1C($sp)
/* C668C 801102CC 00E09821 */  addu       $s3, $a3, $zero
/* C6690 801102D0 AFBF0028 */  sw         $ra, 0x28($sp)
/* C6694 801102D4 AFB40020 */  sw         $s4, 0x20($sp)
/* C6698 801102D8 AFB10014 */  sw         $s1, 0x14($sp)
/* C669C 801102DC 10C00014 */  beqz       $a2, .Lrace_80110330
/* C66A0 801102E0 AFB00010 */   sw        $s0, 0x10($sp)
/* C66A4 801102E4 0C01FB4C */  jal        func_8007ED30
/* C66A8 801102E8 24040654 */   addiu     $a0, $zero, 0x654
/* C66AC 801102EC 0C00278C */  jal        func_80009E30
/* C66B0 801102F0 00402021 */   addu      $a0, $v0, $zero
/* C66B4 801102F4 00408821 */  addu       $s1, $v0, $zero
/* C66B8 801102F8 56200008 */  bnel       $s1, $zero, .Lrace_8011031C
/* C66BC 801102FC 02202021 */   addu      $a0, $s1, $zero
/* C66C0 80110300 3C04800D */  lui        $a0, %hi(D_race_800CDD08)
/* C66C4 80110304 2484DD08 */  addiu      $a0, $a0, %lo(D_race_800CDD08)
/* C66C8 80110308 00002821 */  addu       $a1, $zero, $zero
/* C66CC 8011030C 00A03021 */  addu       $a2, $a1, $zero
/* C66D0 80110310 0C011ACF */  jal        func_80046B3C
/* C66D4 80110314 00A03821 */   addu      $a3, $a1, $zero
/* C66D8 80110318 02202021 */  addu       $a0, $s1, $zero
.Lrace_8011031C:
/* C66DC 8011031C 3C05800D */  lui        $a1, %hi(D_race_800CDD1C)
/* C66E0 80110320 0C0025BA */  jal        func_800096E8
/* C66E4 80110324 24A5DD1C */   addiu     $a1, $a1, %lo(D_race_800CDD1C)
/* C66E8 80110328 080440DD */  j          .Lrace_80110374
/* C66EC 8011032C 02402821 */   addu      $a1, $s2, $zero
.Lrace_80110330:
/* C66F0 80110330 0C01FB4C */  jal        func_8007ED30
/* C66F4 80110334 24040658 */   addiu     $a0, $zero, 0x658
/* C66F8 80110338 00408021 */  addu       $s0, $v0, $zero
/* C66FC 8011033C 0C002504 */  jal        func_80009410
/* C6700 80110340 02002021 */   addu      $a0, $s0, $zero
/* C6704 80110344 3C02800D */  lui        $v0, %hi(D_race_800CDD58)
/* C6708 80110348 2442DD58 */  addiu      $v0, $v0, %lo(D_race_800CDD58)
/* C670C 8011034C 02008821 */  addu       $s1, $s0, $zero
/* C6710 80110350 16200007 */  bnez       $s1, .Lrace_80110370
/* C6714 80110354 AE020028 */   sw        $v0, 0x28($s0)
/* C6718 80110358 3C04800D */  lui        $a0, %hi(D_race_800CDD08)
/* C671C 8011035C 2484DD08 */  addiu      $a0, $a0, %lo(D_race_800CDD08)
/* C6720 80110360 00002821 */  addu       $a1, $zero, $zero
/* C6724 80110364 00A03021 */  addu       $a2, $a1, $zero
/* C6728 80110368 0C011ACF */  jal        func_80046B3C
/* C672C 8011036C 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80110370:
/* C6730 80110370 02402821 */  addu       $a1, $s2, $zero
.Lrace_80110374:
/* C6734 80110374 8E220028 */  lw         $v0, 0x28($s1)
/* C6738 80110378 00009021 */  addu       $s2, $zero, $zero
/* C673C 8011037C 84440088 */  lh         $a0, 0x88($v0)
/* C6740 80110380 8C42008C */  lw         $v0, 0x8C($v0)
/* C6744 80110384 0040F809 */  jalr       $v0
/* C6748 80110388 02242021 */   addu      $a0, $s1, $a0
/* C674C 8011038C 02202021 */  addu       $a0, $s1, $zero
/* C6750 80110390 0C0026F4 */  jal        func_80009BD0
/* C6754 80110394 24050027 */   addiu     $a1, $zero, 0x27
/* C6758 80110398 0C002723 */  jal        func_80009C8C
/* C675C 8011039C 02202021 */   addu      $a0, $s1, $zero
/* C6760 801103A0 0040A021 */  addu       $s4, $v0, $zero
.Lrace_801103A4:
/* C6764 801103A4 0254102B */  sltu       $v0, $s2, $s4
/* C6768 801103A8 1040004D */  beqz       $v0, .Lrace_801104E0
/* C676C 801103AC 02202021 */   addu      $a0, $s1, $zero
/* C6770 801103B0 0C0026F4 */  jal        func_80009BD0
/* C6774 801103B4 24050027 */   addiu     $a1, $zero, 0x27
/* C6778 801103B8 0C002680 */  jal        func_80009A00
/* C677C 801103BC 02202021 */   addu      $a0, $s1, $zero
/* C6780 801103C0 02202021 */  addu       $a0, $s1, $zero
/* C6784 801103C4 24050005 */  addiu      $a1, $zero, 0x5
/* C6788 801103C8 0C0026F4 */  jal        func_80009BD0
/* C678C 801103CC 00408021 */   addu      $s0, $v0, $zero
/* C6790 801103D0 00101040 */  sll        $v0, $s0, 1
/* C6794 801103D4 00501021 */  addu       $v0, $v0, $s0
/* C6798 801103D8 00021080 */  sll        $v0, $v0, 2
/* C679C 801103DC 02A28021 */  addu       $s0, $s5, $v0
.Lrace_801103E0:
/* C67A0 801103E0 8E220028 */  lw         $v0, 0x28($s1)
/* C67A4 801103E4 844400A0 */  lh         $a0, 0xA0($v0)
/* C67A8 801103E8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* C67AC 801103EC 0040F809 */  jalr       $v0
/* C67B0 801103F0 02242021 */   addu      $a0, $s1, $a0
/* C67B4 801103F4 00401821 */  addu       $v1, $v0, $zero
/* C67B8 801103F8 24020006 */  addiu      $v0, $zero, 0x6
/* C67BC 801103FC 10620036 */  beq        $v1, $v0, .Lrace_801104D8
/* C67C0 80110400 24020028 */   addiu     $v0, $zero, 0x28
/* C67C4 80110404 10620005 */  beq        $v1, $v0, .Lrace_8011041C
/* C67C8 80110408 24020029 */   addiu     $v0, $zero, 0x29
/* C67CC 8011040C 10620011 */  beq        $v1, $v0, .Lrace_80110454
/* C67D0 80110410 00002821 */   addu      $a1, $zero, $zero
/* C67D4 80110414 0804412F */  j          .Lrace_801104BC
/* C67D8 80110418 00000000 */   nop
.Lrace_8011041C:
/* C67DC 8011041C 0C0025F8 */  jal        func_800097E0
/* C67E0 80110420 02202021 */   addu      $a0, $s1, $zero
/* C67E4 80110424 02202021 */  addu       $a0, $s1, $zero
/* C67E8 80110428 0C0025F8 */  jal        func_800097E0
/* C67EC 8011042C E6000194 */   swc1      $f0, 0x194($s0)
/* C67F0 80110430 02202021 */  addu       $a0, $s1, $zero
/* C67F4 80110434 0C0025F8 */  jal        func_800097E0
/* C67F8 80110438 E6000198 */   swc1      $f0, 0x198($s0)
/* C67FC 8011043C 1260FFE8 */  beqz       $s3, .Lrace_801103E0
/* C6800 80110440 E600019C */   swc1      $f0, 0x19C($s0)
/* C6804 80110444 C6000198 */  lwc1       $f0, 0x198($s0)
/* C6808 80110448 46000007 */  neg.s      $f0, $f0
/* C680C 8011044C 080440F8 */  j          .Lrace_801103E0
/* C6810 80110450 E6000198 */   swc1      $f0, 0x198($s0)
.Lrace_80110454:
/* C6814 80110454 0C0025F8 */  jal        func_800097E0
/* C6818 80110458 02202021 */   addu      $a0, $s1, $zero
/* C681C 8011045C 02202021 */  addu       $a0, $s1, $zero
/* C6820 80110460 0C0025F8 */  jal        func_800097E0
/* C6824 80110464 E60001DC */   swc1      $f0, 0x1DC($s0)
/* C6828 80110468 02202021 */  addu       $a0, $s1, $zero
/* C682C 8011046C 0C0025F8 */  jal        func_800097E0
/* C6830 80110470 E60001E0 */   swc1      $f0, 0x1E0($s0)
/* C6834 80110474 02202021 */  addu       $a0, $s1, $zero
/* C6838 80110478 0C0025F8 */  jal        func_800097E0
/* C683C 8011047C E60001E4 */   swc1      $f0, 0x1E4($s0)
/* C6840 80110480 02202021 */  addu       $a0, $s1, $zero
/* C6844 80110484 0C0025F8 */  jal        func_800097E0
/* C6848 80110488 E6000224 */   swc1      $f0, 0x224($s0)
/* C684C 8011048C 02202021 */  addu       $a0, $s1, $zero
/* C6850 80110490 0C0025F8 */  jal        func_800097E0
/* C6854 80110494 E6000228 */   swc1      $f0, 0x228($s0)
/* C6858 80110498 1260FFD1 */  beqz       $s3, .Lrace_801103E0
/* C685C 8011049C E600022C */   swc1      $f0, 0x22C($s0)
/* C6860 801104A0 C60001E0 */  lwc1       $f0, 0x1E0($s0)
/* C6864 801104A4 C6020228 */  lwc1       $f2, 0x228($s0)
/* C6868 801104A8 46000007 */  neg.s      $f0, $f0
/* C686C 801104AC 46001087 */  neg.s      $f2, $f2
/* C6870 801104B0 E60001E0 */  swc1       $f0, 0x1E0($s0)
/* C6874 801104B4 080440F8 */  j          .Lrace_801103E0
/* C6878 801104B8 E6020228 */   swc1      $f2, 0x228($s0)
.Lrace_801104BC:
/* C687C 801104BC 8E220028 */  lw         $v0, 0x28($s1)
/* C6880 801104C0 84440098 */  lh         $a0, 0x98($v0)
/* C6884 801104C4 8C42009C */  lw         $v0, 0x9C($v0)
/* C6888 801104C8 0040F809 */  jalr       $v0
/* C688C 801104CC 02242021 */   addu      $a0, $s1, $a0
/* C6890 801104D0 080440F8 */  j          .Lrace_801103E0
/* C6894 801104D4 00000000 */   nop
.Lrace_801104D8:
/* C6898 801104D8 080440E9 */  j          .Lrace_801103A4
/* C689C 801104DC 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_801104E0:
/* C68A0 801104E0 0C0026F4 */  jal        func_80009BD0
/* C68A4 801104E4 24050006 */   addiu     $a1, $zero, 0x6
/* C68A8 801104E8 8E220028 */  lw         $v0, 0x28($s1)
/* C68AC 801104EC 84440048 */  lh         $a0, 0x48($v0)
/* C68B0 801104F0 8C42004C */  lw         $v0, 0x4C($v0)
/* C68B4 801104F4 0040F809 */  jalr       $v0
/* C68B8 801104F8 02242021 */   addu      $a0, $s1, $a0
/* C68BC 801104FC 12200006 */  beqz       $s1, .Lrace_80110518
/* C68C0 80110500 24050003 */   addiu     $a1, $zero, 0x3
/* C68C4 80110504 8E220028 */  lw         $v0, 0x28($s1)
/* C68C8 80110508 84440038 */  lh         $a0, 0x38($v0)
/* C68CC 8011050C 8C42003C */  lw         $v0, 0x3C($v0)
/* C68D0 80110510 0040F809 */  jalr       $v0
/* C68D4 80110514 02242021 */   addu      $a0, $s1, $a0
.Lrace_80110518:
/* C68D8 80110518 8FBF0028 */  lw         $ra, 0x28($sp)
/* C68DC 8011051C 8FB50024 */  lw         $s5, 0x24($sp)
/* C68E0 80110520 8FB40020 */  lw         $s4, 0x20($sp)
/* C68E4 80110524 8FB3001C */  lw         $s3, 0x1C($sp)
/* C68E8 80110528 8FB20018 */  lw         $s2, 0x18($sp)
/* C68EC 8011052C 8FB10014 */  lw         $s1, 0x14($sp)
/* C68F0 80110530 8FB00010 */  lw         $s0, 0x10($sp)
/* C68F4 80110534 03E00008 */  jr         $ra
/* C68F8 80110538 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_8011053C
/* C68FC 8011053C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C6900 80110540 AFB20018 */  sw         $s2, 0x18($sp)
/* C6904 80110544 00809021 */  addu       $s2, $a0, $zero
/* C6908 80110548 AFB3001C */  sw         $s3, 0x1C($sp)
/* C690C 8011054C 00A09821 */  addu       $s3, $a1, $zero
/* C6910 80110550 AFB40020 */  sw         $s4, 0x20($sp)
/* C6914 80110554 00C0A021 */  addu       $s4, $a2, $zero
/* C6918 80110558 AFB10014 */  sw         $s1, 0x14($sp)
/* C691C 8011055C 00008821 */  addu       $s1, $zero, $zero
/* C6920 80110560 AFB00010 */  sw         $s0, 0x10($sp)
/* C6924 80110564 02208021 */  addu       $s0, $s1, $zero
/* C6928 80110568 AFBF0024 */  sw         $ra, 0x24($sp)
.Lrace_8011056C:
/* C692C 8011056C 8E420144 */  lw         $v0, 0x144($s2)
/* C6930 80110570 0222102B */  sltu       $v0, $s1, $v0
/* C6934 80110574 10400009 */  beqz       $v0, .Lrace_8011059C
/* C6938 80110578 26310001 */   addiu     $s1, $s1, 0x1
/* C693C 8011057C 8E440140 */  lw         $a0, 0x140($s2)
/* C6940 80110580 02602821 */  addu       $a1, $s3, $zero
/* C6944 80110584 02803021 */  addu       $a2, $s4, $zero
/* C6948 80110588 02042021 */  addu       $a0, $s0, $a0
/* C694C 8011058C 0C044A7F */  jal        func_race_801129FC
/* C6950 80110590 24840018 */   addiu     $a0, $a0, 0x18
/* C6954 80110594 0804415B */  j          .Lrace_8011056C
/* C6958 80110598 26100E2C */   addiu     $s0, $s0, 0xE2C
.Lrace_8011059C:
/* C695C 8011059C 8FBF0024 */  lw         $ra, 0x24($sp)
/* C6960 801105A0 8FB40020 */  lw         $s4, 0x20($sp)
/* C6964 801105A4 8FB3001C */  lw         $s3, 0x1C($sp)
/* C6968 801105A8 8FB20018 */  lw         $s2, 0x18($sp)
/* C696C 801105AC 8FB10014 */  lw         $s1, 0x14($sp)
/* C6970 801105B0 8FB00010 */  lw         $s0, 0x10($sp)
/* C6974 801105B4 03E00008 */  jr         $ra
/* C6978 801105B8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_801105BC
/* C697C 801105BC 240DFFFF */  addiu      $t5, $zero, -0x1
/* C6980 801105C0 01A07821 */  addu       $t7, $t5, $zero
/* C6984 801105C4 01A0C021 */  addu       $t8, $t5, $zero
/* C6988 801105C8 00004821 */  addu       $t1, $zero, $zero
/* C698C 801105CC 8C990144 */  lw         $t9, 0x144($a0)
/* C6990 801105D0 01205021 */  addu       $t2, $t1, $zero
/* C6994 801105D4 00A07021 */  addu       $t6, $a1, $zero
.Lrace_801105D8:
/* C6998 801105D8 0139102B */  sltu       $v0, $t1, $t9
/* C699C 801105DC 10400025 */  beqz       $v0, .Lrace_80110674
/* C69A0 801105E0 2DA2FFFF */   sltiu     $v0, $t5, -0x1
/* C69A4 801105E4 8DC20118 */  lw         $v0, 0x118($t6)
/* C69A8 801105E8 5440001F */  bnel       $v0, $zero, .Lrace_80110668
/* C69AC 801105EC 254A0E2C */   addiu     $t2, $t2, 0xE2C
/* C69B0 801105F0 8C820140 */  lw         $v0, 0x140($a0)
/* C69B4 801105F4 9083029C */  lbu        $v1, 0x29C($a0)
/* C69B8 801105F8 01421021 */  addu       $v0, $t2, $v0
/* C69BC 801105FC 8C420CE4 */  lw         $v0, 0xCE4($v0)
/* C69C0 80110600 0043102B */  sltu       $v0, $v0, $v1
/* C69C4 80110604 54400018 */  bnel       $v0, $zero, .Lrace_80110668
/* C69C8 80110608 254A0E2C */   addiu     $t2, $t2, 0xE2C
/* C69CC 8011060C 00004021 */  addu       $t0, $zero, $zero
/* C69D0 80110610 01003021 */  addu       $a2, $t0, $zero
/* C69D4 80110614 00606021 */  addu       $t4, $v1, $zero
/* C69D8 80110618 01405821 */  addu       $t3, $t2, $zero
.Lrace_8011061C:
/* C69DC 8011061C 00CC102B */  sltu       $v0, $a2, $t4
/* C69E0 80110620 1040000D */  beqz       $v0, .Lrace_80110658
/* C69E4 80110624 00061880 */   sll       $v1, $a2, 2
/* C69E8 80110628 8C820140 */  lw         $v0, 0x140($a0)
/* C69EC 8011062C 01621021 */  addu       $v0, $t3, $v0
/* C69F0 80110630 00431021 */  addu       $v0, $v0, $v1
/* C69F4 80110634 8C430CEC */  lw         $v1, 0xCEC($v0)
/* C69F8 80110638 006D102B */  sltu       $v0, $v1, $t5
/* C69FC 8011063C 10400003 */  beqz       $v0, .Lrace_8011064C
/* C6A00 80110640 00603821 */   addu      $a3, $v1, $zero
/* C6A04 80110644 00606821 */  addu       $t5, $v1, $zero
/* C6A08 80110648 0120C021 */  addu       $t8, $t1, $zero
.Lrace_8011064C:
/* C6A0C 8011064C 01074021 */  addu       $t0, $t0, $a3
/* C6A10 80110650 08044187 */  j          .Lrace_8011061C
/* C6A14 80110654 24C60001 */   addiu     $a2, $a2, 0x1
.Lrace_80110658:
/* C6A18 80110658 010F102B */  sltu       $v0, $t0, $t7
/* C6A1C 8011065C 54400001 */  bnel       $v0, $zero, .Lrace_80110664
/* C6A20 80110660 01007821 */   addu      $t7, $t0, $zero
.Lrace_80110664:
/* C6A24 80110664 254A0E2C */  addiu      $t2, $t2, 0xE2C
.Lrace_80110668:
/* C6A28 80110668 25CE005C */  addiu      $t6, $t6, 0x5C
/* C6A2C 8011066C 08044176 */  j          .Lrace_801105D8
/* C6A30 80110670 25290001 */   addiu     $t1, $t1, 0x1
.Lrace_80110674:
/* C6A34 80110674 1040000F */  beqz       $v0, .Lrace_801106B4
/* C6A38 80110678 2DE2FFFF */   sltiu     $v0, $t7, -0x1
/* C6A3C 8011067C 8CA200DC */  lw         $v0, 0xDC($a1)
/* C6A40 80110680 00021080 */  sll        $v0, $v0, 2
/* C6A44 80110684 00A21821 */  addu       $v1, $a1, $v0
/* C6A48 80110688 8C62009C */  lw         $v0, 0x9C($v1)
/* C6A4C 8011068C 10400003 */  beqz       $v0, .Lrace_8011069C
/* C6A50 80110690 004D102B */   sltu      $v0, $v0, $t5
/* C6A54 80110694 14400007 */  bnez       $v0, .Lrace_801106B4
/* C6A58 80110698 2DE2FFFF */   sltiu     $v0, $t7, -0x1
.Lrace_8011069C:
/* C6A5C 8011069C AC6D009C */  sw         $t5, 0x9C($v1)
/* C6A60 801106A0 8CA200DC */  lw         $v0, 0xDC($a1)
/* C6A64 801106A4 00021080 */  sll        $v0, $v0, 2
/* C6A68 801106A8 00A21021 */  addu       $v0, $a1, $v0
/* C6A6C 801106AC AC5800AC */  sw         $t8, 0xAC($v0)
/* C6A70 801106B0 2DE2FFFF */  sltiu      $v0, $t7, -0x1
.Lrace_801106B4:
/* C6A74 801106B4 1040000E */  beqz       $v0, .Lrace_801106F0
/* C6A78 801106B8 00000000 */   nop
/* C6A7C 801106BC 8CA200DC */  lw         $v0, 0xDC($a1)
/* C6A80 801106C0 00021080 */  sll        $v0, $v0, 2
/* C6A84 801106C4 00A21821 */  addu       $v1, $a1, $v0
/* C6A88 801106C8 8C6200BC */  lw         $v0, 0xBC($v1)
/* C6A8C 801106CC 10400003 */  beqz       $v0, .Lrace_801106DC
/* C6A90 801106D0 004F102B */   sltu      $v0, $v0, $t7
/* C6A94 801106D4 14400006 */  bnez       $v0, .Lrace_801106F0
/* C6A98 801106D8 00000000 */   nop
.Lrace_801106DC:
/* C6A9C 801106DC AC6F00BC */  sw         $t7, 0xBC($v1)
/* C6AA0 801106E0 8CA200DC */  lw         $v0, 0xDC($a1)
/* C6AA4 801106E4 00021080 */  sll        $v0, $v0, 2
/* C6AA8 801106E8 00A21021 */  addu       $v0, $a1, $v0
/* C6AAC 801106EC AC5800CC */  sw         $t8, 0xCC($v0)
.Lrace_801106F0:
/* C6AB0 801106F0 03E00008 */  jr         $ra
/* C6AB4 801106F4 00000000 */   nop

glabel func_race_801106F8
/* C6AB8 801106F8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C6ABC 801106FC AFB20018 */  sw         $s2, 0x18($sp)
/* C6AC0 80110700 00809021 */  addu       $s2, $a0, $zero
/* C6AC4 80110704 AFB3001C */  sw         $s3, 0x1C($sp)
/* C6AC8 80110708 00A09821 */  addu       $s3, $a1, $zero
/* C6ACC 8011070C AFB10014 */  sw         $s1, 0x14($sp)
/* C6AD0 80110710 00008821 */  addu       $s1, $zero, $zero
/* C6AD4 80110714 AFB00010 */  sw         $s0, 0x10($sp)
/* C6AD8 80110718 02208021 */  addu       $s0, $s1, $zero
/* C6ADC 8011071C AFBF0020 */  sw         $ra, 0x20($sp)
.Lrace_80110720:
/* C6AE0 80110720 8E420144 */  lw         $v0, 0x144($s2)
/* C6AE4 80110724 0222102B */  sltu       $v0, $s1, $v0
/* C6AE8 80110728 10400008 */  beqz       $v0, .Lrace_8011074C
/* C6AEC 8011072C 26310001 */   addiu     $s1, $s1, 0x1
/* C6AF0 80110730 8E440140 */  lw         $a0, 0x140($s2)
/* C6AF4 80110734 02602821 */  addu       $a1, $s3, $zero
/* C6AF8 80110738 02042021 */  addu       $a0, $s0, $a0
/* C6AFC 8011073C 0C04551D */  jal        func_race_80115474
/* C6B00 80110740 24840018 */   addiu     $a0, $a0, 0x18
/* C6B04 80110744 080441C8 */  j          .Lrace_80110720
/* C6B08 80110748 26100E2C */   addiu     $s0, $s0, 0xE2C
.Lrace_8011074C:
/* C6B0C 8011074C 8FBF0020 */  lw         $ra, 0x20($sp)
/* C6B10 80110750 8FB3001C */  lw         $s3, 0x1C($sp)
/* C6B14 80110754 8FB20018 */  lw         $s2, 0x18($sp)
/* C6B18 80110758 8FB10014 */  lw         $s1, 0x14($sp)
/* C6B1C 8011075C 8FB00010 */  lw         $s0, 0x10($sp)
/* C6B20 80110760 03E00008 */  jr         $ra
/* C6B24 80110764 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80110768
/* C6B28 80110768 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C6B2C 8011076C AFB40020 */  sw         $s4, 0x20($sp)
/* C6B30 80110770 0080A021 */  addu       $s4, $a0, $zero
/* C6B34 80110774 AFBF0024 */  sw         $ra, 0x24($sp)
/* C6B38 80110778 AFB3001C */  sw         $s3, 0x1C($sp)
/* C6B3C 8011077C AFB20018 */  sw         $s2, 0x18($sp)
/* C6B40 80110780 AFB10014 */  sw         $s1, 0x14($sp)
/* C6B44 80110784 AFB00010 */  sw         $s0, 0x10($sp)
/* C6B48 80110788 8E820144 */  lw         $v0, 0x144($s4)
/* C6B4C 8011078C 00A09821 */  addu       $s3, $a1, $zero
/* C6B50 80110790 000218C0 */  sll        $v1, $v0, 3
/* C6B54 80110794 00621823 */  subu       $v1, $v1, $v0
/* C6B58 80110798 000318C0 */  sll        $v1, $v1, 3
/* C6B5C 8011079C 00621821 */  addu       $v1, $v1, $v0
/* C6B60 801107A0 00031880 */  sll        $v1, $v1, 2
/* C6B64 801107A4 00621823 */  subu       $v1, $v1, $v0
/* C6B68 801107A8 00031880 */  sll        $v1, $v1, 2
/* C6B6C 801107AC 00621823 */  subu       $v1, $v1, $v0
/* C6B70 801107B0 8E820140 */  lw         $v0, 0x140($s4)
/* C6B74 801107B4 00031880 */  sll        $v1, $v1, 2
/* C6B78 801107B8 00439021 */  addu       $s2, $v0, $v1
/* C6B7C 801107BC 00408021 */  addu       $s0, $v0, $zero
/* C6B80 801107C0 26110D08 */  addiu      $s1, $s0, 0xD08
.Lrace_801107C4:
/* C6B84 801107C4 0212102B */  sltu       $v0, $s0, $s2
/* C6B88 801107C8 10400018 */  beqz       $v0, .Lrace_8011082C
/* C6B8C 801107CC 00000000 */   nop
/* C6B90 801107D0 8E23FF7C */  lw         $v1, -0x84($s1)
/* C6B94 801107D4 30620080 */  andi       $v0, $v1, 0x80
/* C6B98 801107D8 10400005 */  beqz       $v0, .Lrace_801107F0
/* C6B9C 801107DC 26040C70 */   addiu     $a0, $s0, 0xC70
/* C6BA0 801107E0 0C03CC07 */  jal        func_race_800F301C
/* C6BA4 801107E4 02602821 */   addu      $a1, $s3, $zero
/* C6BA8 801107E8 08044209 */  j          .Lrace_80110824
/* C6BAC 801107EC 26310E2C */   addiu     $s1, $s1, 0xE2C
.Lrace_801107F0:
/* C6BB0 801107F0 8E220000 */  lw         $v0, 0x0($s1)
/* C6BB4 801107F4 38420002 */  xori       $v0, $v0, 0x2
/* C6BB8 801107F8 10400005 */  beqz       $v0, .Lrace_80110810
/* C6BBC 801107FC 30620040 */   andi      $v0, $v1, 0x40
/* C6BC0 80110800 0C03CB78 */  jal        func_race_800F2DE0
/* C6BC4 80110804 02602821 */   addu      $a1, $s3, $zero
/* C6BC8 80110808 08044209 */  j          .Lrace_80110824
/* C6BCC 8011080C 26310E2C */   addiu     $s1, $s1, 0xE2C
.Lrace_80110810:
/* C6BD0 80110810 50400004 */  beql       $v0, $zero, .Lrace_80110824
/* C6BD4 80110814 26310E2C */   addiu     $s1, $s1, 0xE2C
/* C6BD8 80110818 0C03CE07 */  jal        func_race_800F381C
/* C6BDC 8011081C 02602821 */   addu      $a1, $s3, $zero
/* C6BE0 80110820 26310E2C */  addiu      $s1, $s1, 0xE2C
.Lrace_80110824:
/* C6BE4 80110824 080441F1 */  j          .Lrace_801107C4
/* C6BE8 80110828 26100E2C */   addiu     $s0, $s0, 0xE2C
.Lrace_8011082C:
/* C6BEC 8011082C 8E900140 */  lw         $s0, 0x140($s4)
/* C6BF0 80110830 0212102B */  sltu       $v0, $s0, $s2
.Lrace_80110834:
/* C6BF4 80110834 1040000A */  beqz       $v0, .Lrace_80110860
/* C6BF8 80110838 02602821 */   addu      $a1, $s3, $zero
/* C6BFC 8011083C 260303FC */  addiu      $v1, $s0, 0x3FC
/* C6C00 80110840 8C6200CC */  lw         $v0, 0xCC($v1)
/* C6C04 80110844 26100E2C */  addiu      $s0, $s0, 0xE2C
/* C6C08 80110848 84440010 */  lh         $a0, 0x10($v0)
/* C6C0C 8011084C 8C420014 */  lw         $v0, 0x14($v0)
/* C6C10 80110850 0040F809 */  jalr       $v0
/* C6C14 80110854 00642021 */   addu      $a0, $v1, $a0
/* C6C18 80110858 0804420D */  j          .Lrace_80110834
/* C6C1C 8011085C 0212102B */   sltu      $v0, $s0, $s2
.Lrace_80110860:
/* C6C20 80110860 8E900140 */  lw         $s0, 0x140($s4)
.Lrace_80110864:
/* C6C24 80110864 0212102B */  sltu       $v0, $s0, $s2
/* C6C28 80110868 10400009 */  beqz       $v0, .Lrace_80110890
/* C6C2C 8011086C 268400F0 */   addiu     $a0, $s4, 0xF0
/* C6C30 80110870 8E020D04 */  lw         $v0, 0xD04($s0)
/* C6C34 80110874 30420080 */  andi       $v0, $v0, 0x80
/* C6C38 80110878 5040FFFA */  beql       $v0, $zero, .Lrace_80110864
/* C6C3C 8011087C 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C6C40 80110880 0C042C8C */  jal        func_race_8010B230
/* C6C44 80110884 02002021 */   addu      $a0, $s0, $zero
/* C6C48 80110888 08044219 */  j          .Lrace_80110864
/* C6C4C 8011088C 26100E2C */   addiu     $s0, $s0, 0xE2C
.Lrace_80110890:
/* C6C50 80110890 0C0447F3 */  jal        func_race_80111FCC
/* C6C54 80110894 02602821 */   addu      $a1, $s3, $zero
/* C6C58 80110898 8E900140 */  lw         $s0, 0x140($s4)
/* C6C5C 8011089C 0212102B */  sltu       $v0, $s0, $s2
/* C6C60 801108A0 10400009 */  beqz       $v0, .Lrace_801108C8
/* C6C64 801108A4 02002021 */   addu      $a0, $s0, $zero
.Lrace_801108A8:
/* C6C68 801108A8 0C042B4D */  jal        func_race_8010AD34
/* C6C6C 801108AC 02602821 */   addu      $a1, $s3, $zero
/* C6C70 801108B0 26100E2C */  addiu      $s0, $s0, 0xE2C
/* C6C74 801108B4 0212102B */  sltu       $v0, $s0, $s2
/* C6C78 801108B8 1440FFFB */  bnez       $v0, .Lrace_801108A8
/* C6C7C 801108BC 02002021 */   addu      $a0, $s0, $zero
/* C6C80 801108C0 8E900140 */  lw         $s0, 0x140($s4)
/* C6C84 801108C4 0212102B */  sltu       $v0, $s0, $s2
.Lrace_801108C8:
/* C6C88 801108C8 10400009 */  beqz       $v0, .Lrace_801108F0
/* C6C8C 801108CC 02002021 */   addu      $a0, $s0, $zero
.Lrace_801108D0:
/* C6C90 801108D0 0C042D19 */  jal        func_race_8010B464
/* C6C94 801108D4 02602821 */   addu      $a1, $s3, $zero
/* C6C98 801108D8 0C042C97 */  jal        func_race_8010B25C
/* C6C9C 801108DC 02002021 */   addu      $a0, $s0, $zero
/* C6CA0 801108E0 26100E2C */  addiu      $s0, $s0, 0xE2C
/* C6CA4 801108E4 0212102B */  sltu       $v0, $s0, $s2
/* C6CA8 801108E8 1440FFF9 */  bnez       $v0, .Lrace_801108D0
/* C6CAC 801108EC 02002021 */   addu      $a0, $s0, $zero
.Lrace_801108F0:
/* C6CB0 801108F0 8E900140 */  lw         $s0, 0x140($s4)
/* C6CB4 801108F4 0212102B */  sltu       $v0, $s0, $s2
/* C6CB8 801108F8 10400007 */  beqz       $v0, .Lrace_80110918
/* C6CBC 801108FC 02002021 */   addu      $a0, $s0, $zero
.Lrace_80110900:
/* C6CC0 80110900 0C042B7D */  jal        func_race_8010ADF4
/* C6CC4 80110904 02602821 */   addu      $a1, $s3, $zero
/* C6CC8 80110908 26100E2C */  addiu      $s0, $s0, 0xE2C
/* C6CCC 8011090C 0212102B */  sltu       $v0, $s0, $s2
/* C6CD0 80110910 1440FFFB */  bnez       $v0, .Lrace_80110900
/* C6CD4 80110914 02002021 */   addu      $a0, $s0, $zero
.Lrace_80110918:
/* C6CD8 80110918 0C044253 */  jal        func_race_8011094C
/* C6CDC 8011091C 02802021 */   addu      $a0, $s4, $zero
/* C6CE0 80110920 26840284 */  addiu      $a0, $s4, 0x284
/* C6CE4 80110924 0C043B09 */  jal        func_race_8010EC24
/* C6CE8 80110928 02602821 */   addu      $a1, $s3, $zero
/* C6CEC 8011092C 8FBF0024 */  lw         $ra, 0x24($sp)
/* C6CF0 80110930 8FB40020 */  lw         $s4, 0x20($sp)
/* C6CF4 80110934 8FB3001C */  lw         $s3, 0x1C($sp)
/* C6CF8 80110938 8FB20018 */  lw         $s2, 0x18($sp)
/* C6CFC 8011093C 8FB10014 */  lw         $s1, 0x14($sp)
/* C6D00 80110940 8FB00010 */  lw         $s0, 0x10($sp)
/* C6D04 80110944 03E00008 */  jr         $ra
/* C6D08 80110948 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8011094C
/* C6D0C 8011094C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* C6D10 80110950 AFB7006C */  sw         $s7, 0x6C($sp)
/* C6D14 80110954 0080B821 */  addu       $s7, $a0, $zero
/* C6D18 80110958 AFB3005C */  sw         $s3, 0x5C($sp)
/* C6D1C 8011095C AFBF0074 */  sw         $ra, 0x74($sp)
/* C6D20 80110960 AFBE0070 */  sw         $fp, 0x70($sp)
/* C6D24 80110964 AFB60068 */  sw         $s6, 0x68($sp)
/* C6D28 80110968 AFB50064 */  sw         $s5, 0x64($sp)
/* C6D2C 8011096C AFB40060 */  sw         $s4, 0x60($sp)
/* C6D30 80110970 AFB20058 */  sw         $s2, 0x58($sp)
/* C6D34 80110974 AFB10054 */  sw         $s1, 0x54($sp)
/* C6D38 80110978 AFB00050 */  sw         $s0, 0x50($sp)
/* C6D3C 8011097C F7B40078 */  sdc1       $f20, 0x78($sp)
/* C6D40 80110980 8EE20144 */  lw         $v0, 0x144($s7)
/* C6D44 80110984 8EF00140 */  lw         $s0, 0x140($s7)
/* C6D48 80110988 1040000D */  beqz       $v0, .Lrace_801109C0
/* C6D4C 8011098C 00009821 */   addu      $s3, $zero, $zero
/* C6D50 80110990 3C028013 */  lui        $v0, %hi(D_race_80132C20)
/* C6D54 80110994 24512C20 */  addiu      $s1, $v0, %lo(D_race_80132C20)
.Lrace_80110998:
/* C6D58 80110998 02002021 */  addu       $a0, $s0, $zero
/* C6D5C 8011099C 0C04382E */  jal        func_race_8010E0B8
/* C6D60 801109A0 AE300000 */   sw        $s0, 0x0($s1)
/* C6D64 801109A4 E6200008 */  swc1       $f0, 0x8($s1)
/* C6D68 801109A8 2631000C */  addiu      $s1, $s1, 0xC
/* C6D6C 801109AC 26730001 */  addiu      $s3, $s3, 0x1
/* C6D70 801109B0 8EE20144 */  lw         $v0, 0x144($s7)
/* C6D74 801109B4 0262102B */  sltu       $v0, $s3, $v0
/* C6D78 801109B8 1440FFF7 */  bnez       $v0, .Lrace_80110998
/* C6D7C 801109BC 26100E2C */   addiu     $s0, $s0, 0xE2C
.Lrace_801109C0:
/* C6D80 801109C0 8EE30144 */  lw         $v1, 0x144($s7)
/* C6D84 801109C4 2462FFFF */  addiu      $v0, $v1, -0x1
/* C6D88 801109C8 1040002D */  beqz       $v0, .Lrace_80110A80
/* C6D8C 801109CC 00009821 */   addu      $s3, $zero, $zero
/* C6D90 801109D0 3C028013 */  lui        $v0, %hi(D_race_80132C20)
/* C6D94 801109D4 24442C20 */  addiu      $a0, $v0, %lo(D_race_80132C20)
/* C6D98 801109D8 00803821 */  addu       $a3, $a0, $zero
.Lrace_801109DC:
/* C6D9C 801109DC C4820008 */  lwc1       $f2, 0x8($a0)
/* C6DA0 801109E0 26710001 */  addiu      $s1, $s3, 0x1
/* C6DA4 801109E4 0223102B */  sltu       $v0, $s1, $v1
/* C6DA8 801109E8 10400011 */  beqz       $v0, .Lrace_80110A30
/* C6DAC 801109EC 02602821 */   addu      $a1, $s3, $zero
/* C6DB0 801109F0 8EE60144 */  lw         $a2, 0x144($s7)
/* C6DB4 801109F4 00111040 */  sll        $v0, $s1, 1
/* C6DB8 801109F8 00511021 */  addu       $v0, $v0, $s1
/* C6DBC 801109FC 00021080 */  sll        $v0, $v0, 2
/* C6DC0 80110A00 00471821 */  addu       $v1, $v0, $a3
.Lrace_80110A04:
/* C6DC4 80110A04 C4600008 */  lwc1       $f0, 0x8($v1)
/* C6DC8 80110A08 4602003C */  c.lt.s     $f0, $f2
/* C6DCC 80110A0C 00000000 */  nop
/* C6DD0 80110A10 45020004 */  bc1fl      .Lrace_80110A24
/* C6DD4 80110A14 26310001 */   addiu     $s1, $s1, 0x1
/* C6DD8 80110A18 46000086 */  mov.s      $f2, $f0
/* C6DDC 80110A1C 02202821 */  addu       $a1, $s1, $zero
/* C6DE0 80110A20 26310001 */  addiu      $s1, $s1, 0x1
.Lrace_80110A24:
/* C6DE4 80110A24 0226102B */  sltu       $v0, $s1, $a2
/* C6DE8 80110A28 1440FFF6 */  bnez       $v0, .Lrace_80110A04
/* C6DEC 80110A2C 2463000C */   addiu     $v1, $v1, 0xC
.Lrace_80110A30:
/* C6DF0 80110A30 0265102B */  sltu       $v0, $s3, $a1
/* C6DF4 80110A34 1040000C */  beqz       $v0, .Lrace_80110A68
/* C6DF8 80110A38 00051040 */   sll       $v0, $a1, 1
/* C6DFC 80110A3C 00451021 */  addu       $v0, $v0, $a1
/* C6E00 80110A40 00021080 */  sll        $v0, $v0, 2
/* C6E04 80110A44 00471021 */  addu       $v0, $v0, $a3
/* C6E08 80110A48 C4400008 */  lwc1       $f0, 0x8($v0)
/* C6E0C 80110A4C C4820008 */  lwc1       $f2, 0x8($a0)
/* C6E10 80110A50 E4800008 */  swc1       $f0, 0x8($a0)
/* C6E14 80110A54 8C430000 */  lw         $v1, 0x0($v0)
/* C6E18 80110A58 E4420008 */  swc1       $f2, 0x8($v0)
/* C6E1C 80110A5C 8C900000 */  lw         $s0, 0x0($a0)
/* C6E20 80110A60 AC830000 */  sw         $v1, 0x0($a0)
/* C6E24 80110A64 AC500000 */  sw         $s0, 0x0($v0)
.Lrace_80110A68:
/* C6E28 80110A68 8EE30144 */  lw         $v1, 0x144($s7)
/* C6E2C 80110A6C 26730001 */  addiu      $s3, $s3, 0x1
/* C6E30 80110A70 2462FFFF */  addiu      $v0, $v1, -0x1
/* C6E34 80110A74 0262102B */  sltu       $v0, $s3, $v0
/* C6E38 80110A78 1440FFD8 */  bnez       $v0, .Lrace_801109DC
/* C6E3C 80110A7C 2484000C */   addiu     $a0, $a0, 0xC
.Lrace_80110A80:
/* C6E40 80110A80 00009821 */  addu       $s3, $zero, $zero
/* C6E44 80110A84 3C028013 */  lui        $v0, %hi(D_race_80132C20)
/* C6E48 80110A88 24462C20 */  addiu      $a2, $v0, %lo(D_race_80132C20)
/* C6E4C 80110A8C 00C0F021 */  addu       $fp, $a2, $zero
/* C6E50 80110A90 AFA00040 */  sw         $zero, 0x40($sp)
.Lrace_80110A94:
/* C6E54 80110A94 8EE30144 */  lw         $v1, 0x144($s7)
/* C6E58 80110A98 2462FFFF */  addiu      $v0, $v1, -0x1
/* C6E5C 80110A9C 0262102B */  sltu       $v0, $s3, $v0
/* C6E60 80110AA0 1040008F */  beqz       $v0, .Lrace_80110CE0
/* C6E64 80110AA4 26710001 */   addiu     $s1, $s3, 0x1
/* C6E68 80110AA8 00111040 */  sll        $v0, $s1, 1
/* C6E6C 80110AAC 00511021 */  addu       $v0, $v0, $s1
/* C6E70 80110AB0 00022080 */  sll        $a0, $v0, 2
/* C6E74 80110AB4 00861021 */  addu       $v0, $a0, $a2
/* C6E78 80110AB8 C7C20008 */  lwc1       $f2, 0x8($fp)
/* C6E7C 80110ABC C4400008 */  lwc1       $f0, 0x8($v0)
/* C6E80 80110AC0 46001032 */  c.eq.s     $f2, $f0
/* C6E84 80110AC4 00000000 */  nop
/* C6E88 80110AC8 45000011 */  bc1f       .Lrace_80110B10
/* C6E8C 80110ACC 26620001 */   addiu     $v0, $s3, 0x1
/* C6E90 80110AD0 00602821 */  addu       $a1, $v1, $zero
/* C6E94 80110AD4 3C038013 */  lui        $v1, %hi(D_race_80132C20)
/* C6E98 80110AD8 8FA80040 */  lw         $t0, 0x40($sp)
/* C6E9C 80110ADC 24632C20 */  addiu      $v1, $v1, %lo(D_race_80132C20)
/* C6EA0 80110AE0 01031021 */  addu       $v0, $t0, $v1
/* C6EA4 80110AE4 00831821 */  addu       $v1, $a0, $v1
/* C6EA8 80110AE8 C4420008 */  lwc1       $f2, 0x8($v0)
.Lrace_80110AEC:
/* C6EAC 80110AEC 0225102B */  sltu       $v0, $s1, $a1
/* C6EB0 80110AF0 10400006 */  beqz       $v0, .Lrace_80110B0C
/* C6EB4 80110AF4 2463000C */   addiu     $v1, $v1, 0xC
/* C6EB8 80110AF8 C4600008 */  lwc1       $f0, 0x8($v1)
/* C6EBC 80110AFC 46001032 */  c.eq.s     $f2, $f0
/* C6EC0 80110B00 00000000 */  nop
/* C6EC4 80110B04 4501FFF9 */  bc1t       .Lrace_80110AEC
/* C6EC8 80110B08 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_80110B0C:
/* C6ECC 80110B0C 26620001 */  addiu      $v0, $s3, 0x1
.Lrace_80110B10:
/* C6ED0 80110B10 8FC30000 */  lw         $v1, 0x0($fp)
/* C6ED4 80110B14 0051102B */  sltu       $v0, $v0, $s1
/* C6ED8 80110B18 8C760CC4 */  lw         $s6, 0xCC4($v1)
/* C6EDC 80110B1C 5040006B */  beql       $v0, $zero, .Lrace_80110CCC
/* C6EE0 80110B20 27DE000C */   addiu     $fp, $fp, 0xC
/* C6EE4 80110B24 12C00068 */  beqz       $s6, .Lrace_80110CC8
/* C6EE8 80110B28 02609021 */   addu      $s2, $s3, $zero
/* C6EEC 80110B2C 00131040 */  sll        $v0, $s3, 1
/* C6EF0 80110B30 00531021 */  addu       $v0, $v0, $s3
/* C6EF4 80110B34 00021080 */  sll        $v0, $v0, 2
/* C6EF8 80110B38 0046A821 */  addu       $s5, $v0, $a2
.Lrace_80110B3C:
/* C6EFC 80110B3C 0251102B */  sltu       $v0, $s2, $s1
/* C6F00 80110B40 10400030 */  beqz       $v0, .Lrace_80110C04
/* C6F04 80110B44 27A50010 */   addiu     $a1, $sp, 0x10
/* C6F08 80110B48 8EA20000 */  lw         $v0, 0x0($s5)
/* C6F0C 80110B4C 8C43005C */  lw         $v1, 0x5C($v0)
/* C6F10 80110B50 00008021 */  addu       $s0, $zero, $zero
/* C6F14 80110B54 8C620024 */  lw         $v0, 0x24($v1)
/* C6F18 80110B58 3C01800D */  lui        $at, %hi(D_race_800CDD24)
/* C6F1C 80110B5C C434DD24 */  lwc1       $f20, %lo(D_race_800CDD24)($at)
/* C6F20 80110B60 84440010 */  lh         $a0, 0x10($v0)
/* C6F24 80110B64 8C420014 */  lw         $v0, 0x14($v0)
/* C6F28 80110B68 00A0A021 */  addu       $s4, $a1, $zero
/* C6F2C 80110B6C AFA60048 */  sw         $a2, 0x48($sp)
/* C6F30 80110B70 0040F809 */  jalr       $v0
/* C6F34 80110B74 00642021 */   addu      $a0, $v1, $a0
/* C6F38 80110B78 8FA60048 */  lw         $a2, 0x48($sp)
.Lrace_80110B7C:
/* C6F3C 80110B7C 2E020004 */  sltiu      $v0, $s0, 0x4
/* C6F40 80110B80 1040001C */  beqz       $v0, .Lrace_80110BF4
/* C6F44 80110B84 02D01021 */   addu      $v0, $s6, $s0
/* C6F48 80110B88 90450020 */  lbu        $a1, 0x20($v0)
/* C6F4C 80110B8C 240900FF */  addiu      $t1, $zero, 0xFF
/* C6F50 80110B90 50A9FFFA */  beql       $a1, $t1, .Lrace_80110B7C
/* C6F54 80110B94 26100001 */   addiu     $s0, $s0, 0x1
/* C6F58 80110B98 8EE40148 */  lw         $a0, 0x148($s7)
/* C6F5C 80110B9C 0C03C8CA */  jal        func_race_800F2328
/* C6F60 80110BA0 AFA60048 */   sw        $a2, 0x48($sp)
/* C6F64 80110BA4 C4440000 */  lwc1       $f4, 0x0($v0)
/* C6F68 80110BA8 C7A00010 */  lwc1       $f0, 0x10($sp)
/* C6F6C 80110BAC 46002102 */  mul.s      $f4, $f4, $f0
/* C6F70 80110BB0 C4460004 */  lwc1       $f6, 0x4($v0)
/* C6F74 80110BB4 C6800004 */  lwc1       $f0, 0x4($s4)
/* C6F78 80110BB8 46003182 */  mul.s      $f6, $f6, $f0
/* C6F7C 80110BBC C4420008 */  lwc1       $f2, 0x8($v0)
/* C6F80 80110BC0 C6800008 */  lwc1       $f0, 0x8($s4)
/* C6F84 80110BC4 46001082 */  mul.s      $f2, $f2, $f0
/* C6F88 80110BC8 46062100 */  add.s      $f4, $f4, $f6
/* C6F8C 80110BCC 46022100 */  add.s      $f4, $f4, $f2
/* C6F90 80110BD0 C440000C */  lwc1       $f0, 0xC($v0)
/* C6F94 80110BD4 46002100 */  add.s      $f4, $f4, $f0
/* C6F98 80110BD8 8FA60048 */  lw         $a2, 0x48($sp)
/* C6F9C 80110BDC 4614203C */  c.lt.s     $f4, $f20
/* C6FA0 80110BE0 00000000 */  nop
/* C6FA4 80110BE4 45030001 */  bc1tl      .Lrace_80110BEC
/* C6FA8 80110BE8 46002506 */   mov.s     $f20, $f4
.Lrace_80110BEC:
/* C6FAC 80110BEC 080442DF */  j          .Lrace_80110B7C
/* C6FB0 80110BF0 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_80110BF4:
/* C6FB4 80110BF4 E6B40004 */  swc1       $f20, 0x4($s5)
/* C6FB8 80110BF8 26B5000C */  addiu      $s5, $s5, 0xC
/* C6FBC 80110BFC 080442CF */  j          .Lrace_80110B3C
/* C6FC0 80110C00 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_80110C04:
/* C6FC4 80110C04 0271102B */  sltu       $v0, $s3, $s1
/* C6FC8 80110C08 1040002F */  beqz       $v0, .Lrace_80110CC8
/* C6FCC 80110C0C 02609021 */   addu      $s2, $s3, $zero
/* C6FD0 80110C10 00131040 */  sll        $v0, $s3, 1
/* C6FD4 80110C14 00531021 */  addu       $v0, $v0, $s3
/* C6FD8 80110C18 00021080 */  sll        $v0, $v0, 2
/* C6FDC 80110C1C 00462021 */  addu       $a0, $v0, $a2
.Lrace_80110C20:
/* C6FE0 80110C20 C4940004 */  lwc1       $f20, 0x4($a0)
/* C6FE4 80110C24 26500001 */  addiu      $s0, $s2, 0x1
/* C6FE8 80110C28 0211102B */  sltu       $v0, $s0, $s1
/* C6FEC 80110C2C 10400010 */  beqz       $v0, .Lrace_80110C70
/* C6FF0 80110C30 02402821 */   addu      $a1, $s2, $zero
/* C6FF4 80110C34 00101040 */  sll        $v0, $s0, 1
/* C6FF8 80110C38 00501021 */  addu       $v0, $v0, $s0
/* C6FFC 80110C3C 00021080 */  sll        $v0, $v0, 2
/* C7000 80110C40 00461821 */  addu       $v1, $v0, $a2
.Lrace_80110C44:
/* C7004 80110C44 C4600004 */  lwc1       $f0, 0x4($v1)
/* C7008 80110C48 4600A03C */  c.lt.s     $f20, $f0
/* C700C 80110C4C 00000000 */  nop
/* C7010 80110C50 45020004 */  bc1fl      .Lrace_80110C64
/* C7014 80110C54 26100001 */   addiu     $s0, $s0, 0x1
/* C7018 80110C58 46000506 */  mov.s      $f20, $f0
/* C701C 80110C5C 02002821 */  addu       $a1, $s0, $zero
/* C7020 80110C60 26100001 */  addiu      $s0, $s0, 0x1
.Lrace_80110C64:
/* C7024 80110C64 0211102B */  sltu       $v0, $s0, $s1
/* C7028 80110C68 1440FFF6 */  bnez       $v0, .Lrace_80110C44
/* C702C 80110C6C 2463000C */   addiu     $v1, $v1, 0xC
.Lrace_80110C70:
/* C7030 80110C70 0245102B */  sltu       $v0, $s2, $a1
/* C7034 80110C74 10400010 */  beqz       $v0, .Lrace_80110CB8
/* C7038 80110C78 00051040 */   sll       $v0, $a1, 1
/* C703C 80110C7C 00451021 */  addu       $v0, $v0, $a1
/* C7040 80110C80 00021080 */  sll        $v0, $v0, 2
/* C7044 80110C84 00461021 */  addu       $v0, $v0, $a2
/* C7048 80110C88 C4400008 */  lwc1       $f0, 0x8($v0)
/* C704C 80110C8C C4820008 */  lwc1       $f2, 0x8($a0)
/* C7050 80110C90 E4800008 */  swc1       $f0, 0x8($a0)
/* C7054 80110C94 C4400004 */  lwc1       $f0, 0x4($v0)
/* C7058 80110C98 E4420008 */  swc1       $f2, 0x8($v0)
/* C705C 80110C9C C4840004 */  lwc1       $f4, 0x4($a0)
/* C7060 80110CA0 E4800004 */  swc1       $f0, 0x4($a0)
/* C7064 80110CA4 8C430000 */  lw         $v1, 0x0($v0)
/* C7068 80110CA8 E4440004 */  swc1       $f4, 0x4($v0)
/* C706C 80110CAC 8C900000 */  lw         $s0, 0x0($a0)
/* C7070 80110CB0 AC830000 */  sw         $v1, 0x0($a0)
/* C7074 80110CB4 AC500000 */  sw         $s0, 0x0($v0)
.Lrace_80110CB8:
/* C7078 80110CB8 26520001 */  addiu      $s2, $s2, 0x1
/* C707C 80110CBC 0251102B */  sltu       $v0, $s2, $s1
/* C7080 80110CC0 1440FFD7 */  bnez       $v0, .Lrace_80110C20
/* C7084 80110CC4 2484000C */   addiu     $a0, $a0, 0xC
.Lrace_80110CC8:
/* C7088 80110CC8 27DE000C */  addiu      $fp, $fp, 0xC
.Lrace_80110CCC:
/* C708C 80110CCC 8FAA0040 */  lw         $t2, 0x40($sp)
/* C7090 80110CD0 26730001 */  addiu      $s3, $s3, 0x1
/* C7094 80110CD4 254A000C */  addiu      $t2, $t2, 0xC
/* C7098 80110CD8 080442A5 */  j          .Lrace_80110A94
/* C709C 80110CDC AFAA0040 */   sw        $t2, 0x40($sp)
.Lrace_80110CE0:
/* C70A0 80110CE0 00009821 */  addu       $s3, $zero, $zero
/* C70A4 80110CE4 3C028013 */  lui        $v0, %hi(D_race_80132C20)
/* C70A8 80110CE8 24502C20 */  addiu      $s0, $v0, %lo(D_race_80132C20)
.Lrace_80110CEC:
/* C70AC 80110CEC 8EE50144 */  lw         $a1, 0x144($s7)
/* C70B0 80110CF0 0265102B */  sltu       $v0, $s3, $a1
/* C70B4 80110CF4 1040000B */  beqz       $v0, .Lrace_80110D24
/* C70B8 80110CF8 00000000 */   nop
/* C70BC 80110CFC 8E040000 */  lw         $a0, 0x0($s0)
/* C70C0 80110D00 8C820D04 */  lw         $v0, 0xD04($a0)
/* C70C4 80110D04 30421000 */  andi       $v0, $v0, 0x1000
/* C70C8 80110D08 54400004 */  bnel       $v0, $zero, .Lrace_80110D1C
/* C70CC 80110D0C 2610000C */   addiu     $s0, $s0, 0xC
/* C70D0 80110D10 0C04389D */  jal        func_race_8010E274
/* C70D4 80110D14 00B32823 */   subu      $a1, $a1, $s3
/* C70D8 80110D18 2610000C */  addiu      $s0, $s0, 0xC
.Lrace_80110D1C:
/* C70DC 80110D1C 0804433B */  j          .Lrace_80110CEC
/* C70E0 80110D20 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_80110D24:
/* C70E4 80110D24 8EE2016C */  lw         $v0, 0x16C($s7)
/* C70E8 80110D28 1040009C */  beqz       $v0, .Lrace_80110F9C
/* C70EC 80110D2C 00000000 */   nop
/* C70F0 80110D30 8EE20170 */  lw         $v0, 0x170($s7)
/* C70F4 80110D34 10400099 */  beqz       $v0, .Lrace_80110F9C
/* C70F8 80110D38 00008821 */   addu      $s1, $zero, $zero
/* C70FC 80110D3C 27A50010 */  addiu      $a1, $sp, 0x10
/* C7100 80110D40 02209821 */  addu       $s3, $s1, $zero
/* C7104 80110D44 00A09021 */  addu       $s2, $a1, $zero
/* C7108 80110D48 8C43005C */  lw         $v1, 0x5C($v0)
/* C710C 80110D4C 02208021 */  addu       $s0, $s1, $zero
/* C7110 80110D50 8C620024 */  lw         $v0, 0x24($v1)
/* C7114 80110D54 3C01800D */  lui        $at, %hi(D_race_800CDD28)
/* C7118 80110D58 C434DD28 */  lwc1       $f20, %lo(D_race_800CDD28)($at)
/* C711C 80110D5C 84440010 */  lh         $a0, 0x10($v0)
/* C7120 80110D60 8C420014 */  lw         $v0, 0x14($v0)
/* C7124 80110D64 0040F809 */  jalr       $v0
/* C7128 80110D68 00642021 */   addu      $a0, $v1, $a0
.Lrace_80110D6C:
/* C712C 80110D6C 8EE20144 */  lw         $v0, 0x144($s7)
/* C7130 80110D70 0262102B */  sltu       $v0, $s3, $v0
/* C7134 80110D74 10400024 */  beqz       $v0, .Lrace_80110E08
/* C7138 80110D78 3C028013 */   lui       $v0, %hi(D_race_80132C10)
/* C713C 80110D7C 8EE20140 */  lw         $v0, 0x140($s7)
/* C7140 80110D80 8EE30170 */  lw         $v1, 0x170($s7)
/* C7144 80110D84 00501021 */  addu       $v0, $v0, $s0
/* C7148 80110D88 1043001C */  beq        $v0, $v1, .Lrace_80110DFC
/* C714C 80110D8C 27A50020 */   addiu     $a1, $sp, 0x20
/* C7150 80110D90 8C43005C */  lw         $v1, 0x5C($v0)
/* C7154 80110D94 8C620024 */  lw         $v0, 0x24($v1)
/* C7158 80110D98 84440010 */  lh         $a0, 0x10($v0)
/* C715C 80110D9C 8C420014 */  lw         $v0, 0x14($v0)
/* C7160 80110DA0 0040F809 */  jalr       $v0
/* C7164 80110DA4 00642021 */   addu      $a0, $v1, $a0
/* C7168 80110DA8 C7A40010 */  lwc1       $f4, 0x10($sp)
/* C716C 80110DAC C7A00020 */  lwc1       $f0, 0x20($sp)
/* C7170 80110DB0 46002101 */  sub.s      $f4, $f4, $f0
/* C7174 80110DB4 46042102 */  mul.s      $f4, $f4, $f4
/* C7178 80110DB8 C6460004 */  lwc1       $f6, 0x4($s2)
/* C717C 80110DBC C7A00024 */  lwc1       $f0, 0x24($sp)
/* C7180 80110DC0 46003181 */  sub.s      $f6, $f6, $f0
/* C7184 80110DC4 46063182 */  mul.s      $f6, $f6, $f6
/* C7188 80110DC8 C7A20028 */  lwc1       $f2, 0x28($sp)
/* C718C 80110DCC C6400008 */  lwc1       $f0, 0x8($s2)
/* C7190 80110DD0 46020001 */  sub.s      $f0, $f0, $f2
/* C7194 80110DD4 46000002 */  mul.s      $f0, $f0, $f0
/* C7198 80110DD8 46062100 */  add.s      $f4, $f4, $f6
/* C719C 80110DDC 46002100 */  add.s      $f4, $f4, $f0
/* C71A0 80110DE0 4614203C */  c.lt.s     $f4, $f20
/* C71A4 80110DE4 00000000 */  nop
/* C71A8 80110DE8 45020005 */  bc1fl      .Lrace_80110E00
/* C71AC 80110DEC 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C71B0 80110DF0 8EE20140 */  lw         $v0, 0x140($s7)
/* C71B4 80110DF4 46002506 */  mov.s      $f20, $f4
/* C71B8 80110DF8 00508821 */  addu       $s1, $v0, $s0
.Lrace_80110DFC:
/* C71BC 80110DFC 26100E2C */  addiu      $s0, $s0, 0xE2C
.Lrace_80110E00:
/* C71C0 80110E00 0804435B */  j          .Lrace_80110D6C
/* C71C4 80110E04 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_80110E08:
/* C71C8 80110E08 C4402C10 */  lwc1       $f0, %lo(D_race_80132C10)($v0)
/* C71CC 80110E0C 4600A03C */  c.lt.s     $f20, $f0
/* C71D0 80110E10 00000000 */  nop
/* C71D4 80110E14 45000053 */  bc1f       .Lrace_80110F64
/* C71D8 80110E18 27A50010 */   addiu     $a1, $sp, 0x10
/* C71DC 80110E1C 8E23005C */  lw         $v1, 0x5C($s1)
/* C71E0 80110E20 8C620024 */  lw         $v0, 0x24($v1)
/* C71E4 80110E24 84440010 */  lh         $a0, 0x10($v0)
/* C71E8 80110E28 8C420014 */  lw         $v0, 0x14($v0)
/* C71EC 80110E2C 0040F809 */  jalr       $v0
/* C71F0 80110E30 00642021 */   addu      $a0, $v1, $a0
/* C71F4 80110E34 8E2B0400 */  lw         $t3, 0x400($s1)
/* C71F8 80110E38 8E280404 */  lw         $t0, 0x404($s1)
/* C71FC 80110E3C 8E290408 */  lw         $t1, 0x408($s1)
/* C7200 80110E40 AFAB0030 */  sw         $t3, 0x30($sp)
/* C7204 80110E44 AFA80034 */  sw         $t0, 0x34($sp)
/* C7208 80110E48 AFA90038 */  sw         $t1, 0x38($sp)
/* C720C 80110E4C 8EE2016C */  lw         $v0, 0x16C($s7)
/* C7210 80110E50 8FAB0010 */  lw         $t3, 0x10($sp)
/* C7214 80110E54 8FA80014 */  lw         $t0, 0x14($sp)
/* C7218 80110E58 8FA90018 */  lw         $t1, 0x18($sp)
/* C721C 80110E5C AC4B0014 */  sw         $t3, 0x14($v0)
/* C7220 80110E60 AC480018 */  sw         $t0, 0x18($v0)
/* C7224 80110E64 AC49001C */  sw         $t1, 0x1C($v0)
/* C7228 80110E68 C7A40030 */  lwc1       $f4, 0x30($sp)
/* C722C 80110E6C 46042100 */  add.s      $f4, $f4, $f4
/* C7230 80110E70 C7A20034 */  lwc1       $f2, 0x34($sp)
/* C7234 80110E74 46021080 */  add.s      $f2, $f2, $f2
/* C7238 80110E78 C7A00038 */  lwc1       $f0, 0x38($sp)
/* C723C 80110E7C 46000000 */  add.s      $f0, $f0, $f0
/* C7240 80110E80 E7A40030 */  swc1       $f4, 0x30($sp)
/* C7244 80110E84 E7A20034 */  swc1       $f2, 0x34($sp)
/* C7248 80110E88 E7A00038 */  swc1       $f0, 0x38($sp)
/* C724C 80110E8C 8EE2016C */  lw         $v0, 0x16C($s7)
/* C7250 80110E90 3C01800D */  lui        $at, %hi(D_race_800CDD2C)
/* C7254 80110E94 C422DD2C */  lwc1       $f2, %lo(D_race_800CDD2C)($at)
/* C7258 80110E98 E4440020 */  swc1       $f4, 0x20($v0)
/* C725C 80110E9C C7A00034 */  lwc1       $f0, 0x34($sp)
/* C7260 80110EA0 E4400024 */  swc1       $f0, 0x24($v0)
/* C7264 80110EA4 C7A00038 */  lwc1       $f0, 0x38($sp)
/* C7268 80110EA8 E4400028 */  swc1       $f0, 0x28($v0)
/* C726C 80110EAC C6200A04 */  lwc1       $f0, 0xA04($s1)
/* C7270 80110EB0 3C01800D */  lui        $at, %hi(D_race_800CDD30)
/* C7274 80110EB4 C424DD30 */  lwc1       $f4, %lo(D_race_800CDD30)($at)
/* C7278 80110EB8 46020003 */  div.s      $f0, $f0, $f2
/* C727C 80110EBC 46040082 */  mul.s      $f2, $f0, $f4
/* C7280 80110EC0 C6200D4C */  lwc1       $f0, 0xD4C($s1)
/* C7284 80110EC4 46020002 */  mul.s      $f0, $f0, $f2
/* C7288 80110EC8 3C01800D */  lui        $at, %hi(D_race_800CDD34)
/* C728C 80110ECC C422DD34 */  lwc1       $f2, %lo(D_race_800CDD34)($at)
/* C7290 80110ED0 46020080 */  add.s      $f2, $f0, $f2
/* C7294 80110ED4 44800000 */  mtc1       $zero, $f0
/* C7298 80110ED8 4600103C */  c.lt.s     $f2, $f0
/* C729C 80110EDC 00000000 */  nop
/* C72A0 80110EE0 45030007 */  bc1tl      .Lrace_80110F00
/* C72A4 80110EE4 46000086 */   mov.s     $f2, $f0
/* C72A8 80110EE8 3C01800D */  lui        $at, %hi(D_race_800CDD38)
/* C72AC 80110EEC C420DD38 */  lwc1       $f0, %lo(D_race_800CDD38)($at)
/* C72B0 80110EF0 4602003C */  c.lt.s     $f0, $f2
/* C72B4 80110EF4 00000000 */  nop
/* C72B8 80110EF8 45030001 */  bc1tl      .Lrace_80110F00
/* C72BC 80110EFC 46000086 */   mov.s     $f2, $f0
.Lrace_80110F00:
/* C72C0 80110F00 8E220D48 */  lw         $v0, 0xD48($s1)
/* C72C4 80110F04 2C420033 */  sltiu      $v0, $v0, 0x33
/* C72C8 80110F08 14400004 */  bnez       $v0, .Lrace_80110F1C
/* C72CC 80110F0C 00000000 */   nop
/* C72D0 80110F10 3C01800D */  lui        $at, %hi(D_race_800CDD3C)
/* C72D4 80110F14 C420DD3C */  lwc1       $f0, %lo(D_race_800CDD3C)($at)
/* C72D8 80110F18 46001080 */  add.s      $f2, $f2, $f0
.Lrace_80110F1C:
/* C72DC 80110F1C 8EE2016C */  lw         $v0, 0x16C($s7)
/* C72E0 80110F20 E4420004 */  swc1       $f2, 0x4($v0)
/* C72E4 80110F24 8EE3016C */  lw         $v1, 0x16C($s7)
/* C72E8 80110F28 8C620034 */  lw         $v0, 0x34($v1)
/* C72EC 80110F2C 84440020 */  lh         $a0, 0x20($v0)
/* C72F0 80110F30 8C420024 */  lw         $v0, 0x24($v0)
/* C72F4 80110F34 0040F809 */  jalr       $v0
/* C72F8 80110F38 00642021 */   addu      $a0, $v1, $a0
/* C72FC 80110F3C 14400017 */  bnez       $v0, .Lrace_80110F9C
/* C7300 80110F40 24050001 */   addiu     $a1, $zero, 0x1
/* C7304 80110F44 8EE3016C */  lw         $v1, 0x16C($s7)
/* C7308 80110F48 8C620034 */  lw         $v0, 0x34($v1)
/* C730C 80110F4C 84440010 */  lh         $a0, 0x10($v0)
/* C7310 80110F50 8C420014 */  lw         $v0, 0x14($v0)
/* C7314 80110F54 0040F809 */  jalr       $v0
/* C7318 80110F58 00642021 */   addu      $a0, $v1, $a0
/* C731C 80110F5C 080443E7 */  j          .Lrace_80110F9C
/* C7320 80110F60 00000000 */   nop
.Lrace_80110F64:
/* C7324 80110F64 8EE3016C */  lw         $v1, 0x16C($s7)
/* C7328 80110F68 8C620034 */  lw         $v0, 0x34($v1)
/* C732C 80110F6C 84440020 */  lh         $a0, 0x20($v0)
/* C7330 80110F70 8C420024 */  lw         $v0, 0x24($v0)
/* C7334 80110F74 0040F809 */  jalr       $v0
/* C7338 80110F78 00642021 */   addu      $a0, $v1, $a0
/* C733C 80110F7C 10400007 */  beqz       $v0, .Lrace_80110F9C
/* C7340 80110F80 00000000 */   nop
/* C7344 80110F84 8EE3016C */  lw         $v1, 0x16C($s7)
/* C7348 80110F88 8C620034 */  lw         $v0, 0x34($v1)
/* C734C 80110F8C 84440018 */  lh         $a0, 0x18($v0)
/* C7350 80110F90 8C42001C */  lw         $v0, 0x1C($v0)
/* C7354 80110F94 0040F809 */  jalr       $v0
/* C7358 80110F98 00642021 */   addu      $a0, $v1, $a0
.Lrace_80110F9C:
/* C735C 80110F9C 8FBF0074 */  lw         $ra, 0x74($sp)
/* C7360 80110FA0 8FBE0070 */  lw         $fp, 0x70($sp)
/* C7364 80110FA4 8FB7006C */  lw         $s7, 0x6C($sp)
/* C7368 80110FA8 8FB60068 */  lw         $s6, 0x68($sp)
/* C736C 80110FAC 8FB50064 */  lw         $s5, 0x64($sp)
/* C7370 80110FB0 8FB40060 */  lw         $s4, 0x60($sp)
/* C7374 80110FB4 8FB3005C */  lw         $s3, 0x5C($sp)
/* C7378 80110FB8 8FB20058 */  lw         $s2, 0x58($sp)
/* C737C 80110FBC 8FB10054 */  lw         $s1, 0x54($sp)
/* C7380 80110FC0 8FB00050 */  lw         $s0, 0x50($sp)
/* C7384 80110FC4 D7B40078 */  ldc1       $f20, 0x78($sp)
/* C7388 80110FC8 03E00008 */  jr         $ra
/* C738C 80110FCC 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_80110FD0
/* C7390 80110FD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C7394 80110FD4 AFB20018 */  sw         $s2, 0x18($sp)
/* C7398 80110FD8 00809021 */  addu       $s2, $a0, $zero
/* C739C 80110FDC AFB3001C */  sw         $s3, 0x1C($sp)
/* C73A0 80110FE0 00A09821 */  addu       $s3, $a1, $zero
/* C73A4 80110FE4 AFB10014 */  sw         $s1, 0x14($sp)
/* C73A8 80110FE8 00008821 */  addu       $s1, $zero, $zero
/* C73AC 80110FEC AFB00010 */  sw         $s0, 0x10($sp)
/* C73B0 80110FF0 02208021 */  addu       $s0, $s1, $zero
/* C73B4 80110FF4 AFBF0020 */  sw         $ra, 0x20($sp)
.Lrace_80110FF8:
/* C73B8 80110FF8 8E420144 */  lw         $v0, 0x144($s2)
/* C73BC 80110FFC 0222102B */  sltu       $v0, $s1, $v0
/* C73C0 80111000 10400008 */  beqz       $v0, .Lrace_80111024
/* C73C4 80111004 26310001 */   addiu     $s1, $s1, 0x1
/* C73C8 80111008 8E440140 */  lw         $a0, 0x140($s2)
/* C73CC 8011100C 02602821 */  addu       $a1, $s3, $zero
/* C73D0 80111010 02042021 */  addu       $a0, $s0, $a0
/* C73D4 80111014 0C045432 */  jal        func_race_801150C8
/* C73D8 80111018 24840018 */   addiu     $a0, $a0, 0x18
/* C73DC 8011101C 080443FE */  j          .Lrace_80110FF8
/* C73E0 80111020 26100E2C */   addiu     $s0, $s0, 0xE2C
.Lrace_80111024:
/* C73E4 80111024 8FBF0020 */  lw         $ra, 0x20($sp)
/* C73E8 80111028 8FB3001C */  lw         $s3, 0x1C($sp)
/* C73EC 8011102C 8FB20018 */  lw         $s2, 0x18($sp)
/* C73F0 80111030 8FB10014 */  lw         $s1, 0x14($sp)
/* C73F4 80111034 8FB00010 */  lw         $s0, 0x10($sp)
/* C73F8 80111038 03E00008 */  jr         $ra
/* C73FC 8011103C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80111040
/* C7400 80111040 00003821 */  addu       $a3, $zero, $zero
/* C7404 80111044 8C880144 */  lw         $t0, 0x144($a0)
/* C7408 80111048 00E03021 */  addu       $a2, $a3, $zero
.Lrace_8011104C:
/* C740C 8011104C 00E8102B */  sltu       $v0, $a3, $t0
/* C7410 80111050 1040000A */  beqz       $v0, .Lrace_8011107C
/* C7414 80111054 00000000 */   nop
/* C7418 80111058 8C820140 */  lw         $v0, 0x140($a0)
/* C741C 8011105C 00C21821 */  addu       $v1, $a2, $v0
/* C7420 80111060 8C62005C */  lw         $v0, 0x5C($v1)
/* C7424 80111064 14A20003 */  bne        $a1, $v0, .Lrace_80111074
/* C7428 80111068 24C60E2C */   addiu     $a2, $a2, 0xE2C
/* C742C 8011106C 03E00008 */  jr         $ra
/* C7430 80111070 00601021 */   addu      $v0, $v1, $zero
.Lrace_80111074:
/* C7434 80111074 08044413 */  j          .Lrace_8011104C
/* C7438 80111078 24E70001 */   addiu     $a3, $a3, 0x1
.Lrace_8011107C:
/* C743C 8011107C 03E00008 */  jr         $ra
/* C7440 80111080 00001021 */   addu      $v0, $zero, $zero

glabel func_race_80111084
/* C7444 80111084 27BDFF98 */  addiu      $sp, $sp, -0x68
/* C7448 80111088 F7B80060 */  sdc1       $f24, 0x60($sp)
/* C744C 8011108C 4487C000 */  mtc1       $a3, $f24
/* C7450 80111090 F7B60058 */  sdc1       $f22, 0x58($sp)
/* C7454 80111094 C7B60078 */  lwc1       $f22, 0x78($sp)
/* C7458 80111098 F7B40050 */  sdc1       $f20, 0x50($sp)
/* C745C 8011109C C7B4007C */  lwc1       $f20, 0x7C($sp)
/* C7460 801110A0 AFB60048 */  sw         $s6, 0x48($sp)
/* C7464 801110A4 0080B021 */  addu       $s6, $a0, $zero
/* C7468 801110A8 AFB10034 */  sw         $s1, 0x34($sp)
/* C746C 801110AC 00A08821 */  addu       $s1, $a1, $zero
/* C7470 801110B0 AFB50044 */  sw         $s5, 0x44($sp)
/* C7474 801110B4 00C0A821 */  addu       $s5, $a2, $zero
/* C7478 801110B8 AFB3003C */  sw         $s3, 0x3C($sp)
/* C747C 801110BC 00009821 */  addu       $s3, $zero, $zero
/* C7480 801110C0 AFB20038 */  sw         $s2, 0x38($sp)
/* C7484 801110C4 27B20010 */  addiu      $s2, $sp, 0x10
/* C7488 801110C8 AFB40040 */  sw         $s4, 0x40($sp)
/* C748C 801110CC 27B40020 */  addiu      $s4, $sp, 0x20
/* C7490 801110D0 AFB00030 */  sw         $s0, 0x30($sp)
/* C7494 801110D4 02608021 */  addu       $s0, $s3, $zero
/* C7498 801110D8 AFBF004C */  sw         $ra, 0x4C($sp)
.Lrace_801110DC:
/* C749C 801110DC 8EC20144 */  lw         $v0, 0x144($s6)
/* C74A0 801110E0 0262102A */  slt        $v0, $s3, $v0
/* C74A4 801110E4 1040003F */  beqz       $v0, .Lrace_801111E4
/* C74A8 801110E8 02402821 */   addu      $a1, $s2, $zero
/* C74AC 801110EC 8EC20140 */  lw         $v0, 0x140($s6)
/* C74B0 801110F0 02021021 */  addu       $v0, $s0, $v0
/* C74B4 801110F4 8C43005C */  lw         $v1, 0x5C($v0)
/* C74B8 801110F8 8C620024 */  lw         $v0, 0x24($v1)
/* C74BC 801110FC 84440010 */  lh         $a0, 0x10($v0)
/* C74C0 80111100 8C420014 */  lw         $v0, 0x14($v0)
/* C74C4 80111104 0040F809 */  jalr       $v0
/* C74C8 80111108 00642021 */   addu      $a0, $v1, $a0
/* C74CC 8011110C C7A20010 */  lwc1       $f2, 0x10($sp)
/* C74D0 80111110 C6200000 */  lwc1       $f0, 0x0($s1)
/* C74D4 80111114 46001201 */  sub.s      $f8, $f2, $f0
/* C74D8 80111118 46084182 */  mul.s      $f6, $f8, $f8
/* C74DC 8011111C C6440004 */  lwc1       $f4, 0x4($s2)
/* C74E0 80111120 C6200004 */  lwc1       $f0, 0x4($s1)
/* C74E4 80111124 46002101 */  sub.s      $f4, $f4, $f0
/* C74E8 80111128 46042102 */  mul.s      $f4, $f4, $f4
/* C74EC 8011112C C6220008 */  lwc1       $f2, 0x8($s1)
/* C74F0 80111130 C6400008 */  lwc1       $f0, 0x8($s2)
/* C74F4 80111134 46020001 */  sub.s      $f0, $f0, $f2
/* C74F8 80111138 46000002 */  mul.s      $f0, $f0, $f0
/* C74FC 8011113C 46043180 */  add.s      $f6, $f6, $f4
/* C7500 80111140 46003180 */  add.s      $f6, $f6, $f0
/* C7504 80111144 4618303C */  c.lt.s     $f6, $f24
/* C7508 80111148 00000000 */  nop
/* C750C 8011114C 45030023 */  bc1tl      .Lrace_801111DC
/* C7510 80111150 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C7514 80111154 4606B03C */  c.lt.s     $f22, $f6
/* C7518 80111158 00000000 */  nop
/* C751C 8011115C 4503001F */  bc1tl      .Lrace_801111DC
/* C7520 80111160 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C7524 80111164 C7A00014 */  lwc1       $f0, 0x14($sp)
/* C7528 80111168 E7A80020 */  swc1       $f8, 0x20($sp)
/* C752C 8011116C C6220004 */  lwc1       $f2, 0x4($s1)
/* C7530 80111170 46020001 */  sub.s      $f0, $f0, $f2
/* C7534 80111174 C7A20018 */  lwc1       $f2, 0x18($sp)
/* C7538 80111178 E7A00024 */  swc1       $f0, 0x24($sp)
/* C753C 8011117C C6200008 */  lwc1       $f0, 0x8($s1)
/* C7540 80111180 46001081 */  sub.s      $f2, $f2, $f0
/* C7544 80111184 02802021 */  addu       $a0, $s4, $zero
/* C7548 80111188 02802821 */  addu       $a1, $s4, $zero
/* C754C 8011118C 0C000F26 */  jal        func_80003C98
/* C7550 80111190 E7A20028 */   swc1      $f2, 0x28($sp)
/* C7554 80111194 C7A40020 */  lwc1       $f4, 0x20($sp)
/* C7558 80111198 C6A00000 */  lwc1       $f0, 0x0($s5)
/* C755C 8011119C 46002102 */  mul.s      $f4, $f4, $f0
/* C7560 801111A0 C7A60024 */  lwc1       $f6, 0x24($sp)
/* C7564 801111A4 C6A00004 */  lwc1       $f0, 0x4($s5)
/* C7568 801111A8 46003182 */  mul.s      $f6, $f6, $f0
/* C756C 801111AC C7A20028 */  lwc1       $f2, 0x28($sp)
/* C7570 801111B0 C6A00008 */  lwc1       $f0, 0x8($s5)
/* C7574 801111B4 46001082 */  mul.s      $f2, $f2, $f0
/* C7578 801111B8 46062100 */  add.s      $f4, $f4, $f6
/* C757C 801111BC 46022100 */  add.s      $f4, $f4, $f2
/* C7580 801111C0 4614203C */  c.lt.s     $f4, $f20
/* C7584 801111C4 00000000 */  nop
/* C7588 801111C8 45030004 */  bc1tl      .Lrace_801111DC
/* C758C 801111CC 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C7590 801111D0 8EC20140 */  lw         $v0, 0x140($s6)
/* C7594 801111D4 0804447A */  j          .Lrace_801111E8
/* C7598 801111D8 00501021 */   addu      $v0, $v0, $s0
.Lrace_801111DC:
/* C759C 801111DC 08044437 */  j          .Lrace_801110DC
/* C75A0 801111E0 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_801111E4:
/* C75A4 801111E4 00001021 */  addu       $v0, $zero, $zero
.Lrace_801111E8:
/* C75A8 801111E8 8FBF004C */  lw         $ra, 0x4C($sp)
/* C75AC 801111EC 8FB60048 */  lw         $s6, 0x48($sp)
/* C75B0 801111F0 8FB50044 */  lw         $s5, 0x44($sp)
/* C75B4 801111F4 8FB40040 */  lw         $s4, 0x40($sp)
/* C75B8 801111F8 8FB3003C */  lw         $s3, 0x3C($sp)
/* C75BC 801111FC 8FB20038 */  lw         $s2, 0x38($sp)
/* C75C0 80111200 8FB10034 */  lw         $s1, 0x34($sp)
/* C75C4 80111204 8FB00030 */  lw         $s0, 0x30($sp)
/* C75C8 80111208 D7B80060 */  ldc1       $f24, 0x60($sp)
/* C75CC 8011120C D7B60058 */  ldc1       $f22, 0x58($sp)
/* C75D0 80111210 D7B40050 */  ldc1       $f20, 0x50($sp)
/* C75D4 80111214 03E00008 */  jr         $ra
/* C75D8 80111218 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_8011121C
/* C75DC 8011121C 27BDFF90 */  addiu      $sp, $sp, -0x70
/* C75E0 80111220 F7B80068 */  sdc1       $f24, 0x68($sp)
/* C75E4 80111224 C7B80080 */  lwc1       $f24, 0x80($sp)
/* C75E8 80111228 F7B60060 */  sdc1       $f22, 0x60($sp)
/* C75EC 8011122C C7B60084 */  lwc1       $f22, 0x84($sp)
/* C75F0 80111230 F7B40058 */  sdc1       $f20, 0x58($sp)
/* C75F4 80111234 C7B40088 */  lwc1       $f20, 0x88($sp)
/* C75F8 80111238 AFB60048 */  sw         $s6, 0x48($sp)
/* C75FC 8011123C 0080B021 */  addu       $s6, $a0, $zero
/* C7600 80111240 AFB7004C */  sw         $s7, 0x4C($sp)
/* C7604 80111244 00A0B821 */  addu       $s7, $a1, $zero
/* C7608 80111248 AFB10034 */  sw         $s1, 0x34($sp)
/* C760C 8011124C 00C08821 */  addu       $s1, $a2, $zero
/* C7610 80111250 AFB50044 */  sw         $s5, 0x44($sp)
/* C7614 80111254 00E0A821 */  addu       $s5, $a3, $zero
/* C7618 80111258 AFB3003C */  sw         $s3, 0x3C($sp)
/* C761C 8011125C 00009821 */  addu       $s3, $zero, $zero
/* C7620 80111260 AFB20038 */  sw         $s2, 0x38($sp)
/* C7624 80111264 27B20010 */  addiu      $s2, $sp, 0x10
/* C7628 80111268 AFB40040 */  sw         $s4, 0x40($sp)
/* C762C 8011126C 27B40020 */  addiu      $s4, $sp, 0x20
/* C7630 80111270 AFB00030 */  sw         $s0, 0x30($sp)
/* C7634 80111274 02608021 */  addu       $s0, $s3, $zero
/* C7638 80111278 AFBF0050 */  sw         $ra, 0x50($sp)
.Lrace_8011127C:
/* C763C 8011127C 8EC20144 */  lw         $v0, 0x144($s6)
/* C7640 80111280 0262102A */  slt        $v0, $s3, $v0
/* C7644 80111284 10400043 */  beqz       $v0, .Lrace_80111394
/* C7648 80111288 00001021 */   addu      $v0, $zero, $zero
/* C764C 8011128C 8EC20140 */  lw         $v0, 0x140($s6)
/* C7650 80111290 00501821 */  addu       $v1, $v0, $s0
/* C7654 80111294 02E3102B */  sltu       $v0, $s7, $v1
/* C7658 80111298 1040003B */  beqz       $v0, .Lrace_80111388
/* C765C 8011129C 02402821 */   addu      $a1, $s2, $zero
/* C7660 801112A0 8C63005C */  lw         $v1, 0x5C($v1)
/* C7664 801112A4 8C620024 */  lw         $v0, 0x24($v1)
/* C7668 801112A8 84440010 */  lh         $a0, 0x10($v0)
/* C766C 801112AC 8C420014 */  lw         $v0, 0x14($v0)
/* C7670 801112B0 0040F809 */  jalr       $v0
/* C7674 801112B4 00642021 */   addu      $a0, $v1, $a0
/* C7678 801112B8 C7A20010 */  lwc1       $f2, 0x10($sp)
/* C767C 801112BC C6200000 */  lwc1       $f0, 0x0($s1)
/* C7680 801112C0 46001201 */  sub.s      $f8, $f2, $f0
/* C7684 801112C4 46084182 */  mul.s      $f6, $f8, $f8
/* C7688 801112C8 C6440004 */  lwc1       $f4, 0x4($s2)
/* C768C 801112CC C6200004 */  lwc1       $f0, 0x4($s1)
/* C7690 801112D0 46002101 */  sub.s      $f4, $f4, $f0
/* C7694 801112D4 46042102 */  mul.s      $f4, $f4, $f4
/* C7698 801112D8 C6220008 */  lwc1       $f2, 0x8($s1)
/* C769C 801112DC C6400008 */  lwc1       $f0, 0x8($s2)
/* C76A0 801112E0 46020001 */  sub.s      $f0, $f0, $f2
/* C76A4 801112E4 46000002 */  mul.s      $f0, $f0, $f0
/* C76A8 801112E8 46043180 */  add.s      $f6, $f6, $f4
/* C76AC 801112EC 46003180 */  add.s      $f6, $f6, $f0
/* C76B0 801112F0 4618303C */  c.lt.s     $f6, $f24
/* C76B4 801112F4 00000000 */  nop
/* C76B8 801112F8 45030024 */  bc1tl      .Lrace_8011138C
/* C76BC 801112FC 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C76C0 80111300 4606B03C */  c.lt.s     $f22, $f6
/* C76C4 80111304 00000000 */  nop
/* C76C8 80111308 45030020 */  bc1tl      .Lrace_8011138C
/* C76CC 8011130C 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C76D0 80111310 C7A00014 */  lwc1       $f0, 0x14($sp)
/* C76D4 80111314 E7A80020 */  swc1       $f8, 0x20($sp)
/* C76D8 80111318 C6220004 */  lwc1       $f2, 0x4($s1)
/* C76DC 8011131C 46020001 */  sub.s      $f0, $f0, $f2
/* C76E0 80111320 C7A20018 */  lwc1       $f2, 0x18($sp)
/* C76E4 80111324 E7A00024 */  swc1       $f0, 0x24($sp)
/* C76E8 80111328 C6200008 */  lwc1       $f0, 0x8($s1)
/* C76EC 8011132C 46001081 */  sub.s      $f2, $f2, $f0
/* C76F0 80111330 02802021 */  addu       $a0, $s4, $zero
/* C76F4 80111334 02802821 */  addu       $a1, $s4, $zero
/* C76F8 80111338 0C000F26 */  jal        func_80003C98
/* C76FC 8011133C E7A20028 */   swc1      $f2, 0x28($sp)
/* C7700 80111340 C7A40020 */  lwc1       $f4, 0x20($sp)
/* C7704 80111344 C6A00000 */  lwc1       $f0, 0x0($s5)
/* C7708 80111348 46002102 */  mul.s      $f4, $f4, $f0
/* C770C 8011134C C7A60024 */  lwc1       $f6, 0x24($sp)
/* C7710 80111350 C6A00004 */  lwc1       $f0, 0x4($s5)
/* C7714 80111354 46003182 */  mul.s      $f6, $f6, $f0
/* C7718 80111358 C7A20028 */  lwc1       $f2, 0x28($sp)
/* C771C 8011135C C6A00008 */  lwc1       $f0, 0x8($s5)
/* C7720 80111360 46001082 */  mul.s      $f2, $f2, $f0
/* C7724 80111364 46062100 */  add.s      $f4, $f4, $f6
/* C7728 80111368 46022100 */  add.s      $f4, $f4, $f2
/* C772C 8011136C 4614203C */  c.lt.s     $f4, $f20
/* C7730 80111370 00000000 */  nop
/* C7734 80111374 45030005 */  bc1tl      .Lrace_8011138C
/* C7738 80111378 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C773C 8011137C 8EC20140 */  lw         $v0, 0x140($s6)
/* C7740 80111380 080444E5 */  j          .Lrace_80111394
/* C7744 80111384 00501021 */   addu      $v0, $v0, $s0
.Lrace_80111388:
/* C7748 80111388 26100E2C */  addiu      $s0, $s0, 0xE2C
.Lrace_8011138C:
/* C774C 8011138C 0804449F */  j          .Lrace_8011127C
/* C7750 80111390 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_80111394:
/* C7754 80111394 8FBF0050 */  lw         $ra, 0x50($sp)
/* C7758 80111398 8FB7004C */  lw         $s7, 0x4C($sp)
/* C775C 8011139C 8FB60048 */  lw         $s6, 0x48($sp)
/* C7760 801113A0 8FB50044 */  lw         $s5, 0x44($sp)
/* C7764 801113A4 8FB40040 */  lw         $s4, 0x40($sp)
/* C7768 801113A8 8FB3003C */  lw         $s3, 0x3C($sp)
/* C776C 801113AC 8FB20038 */  lw         $s2, 0x38($sp)
/* C7770 801113B0 8FB10034 */  lw         $s1, 0x34($sp)
/* C7774 801113B4 8FB00030 */  lw         $s0, 0x30($sp)
/* C7778 801113B8 D7B80068 */  ldc1       $f24, 0x68($sp)
/* C777C 801113BC D7B60060 */  ldc1       $f22, 0x60($sp)
/* C7780 801113C0 D7B40058 */  ldc1       $f20, 0x58($sp)
/* C7784 801113C4 03E00008 */  jr         $ra
/* C7788 801113C8 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_801113CC
/* C778C 801113CC 27BDFF80 */  addiu      $sp, $sp, -0x80
/* C7790 801113D0 F7BC0078 */  sdc1       $f28, 0x78($sp)
/* C7794 801113D4 4487E000 */  mtc1       $a3, $f28
/* C7798 801113D8 F7BA0070 */  sdc1       $f26, 0x70($sp)
/* C779C 801113DC C7BA0090 */  lwc1       $f26, 0x90($sp)
/* C77A0 801113E0 F7B80068 */  sdc1       $f24, 0x68($sp)
/* C77A4 801113E4 C7B80094 */  lwc1       $f24, 0x94($sp)
/* C77A8 801113E8 F7B60060 */  sdc1       $f22, 0x60($sp)
/* C77AC 801113EC 4480B000 */  mtc1       $zero, $f22
/* C77B0 801113F0 AFB7004C */  sw         $s7, 0x4C($sp)
/* C77B4 801113F4 0080B821 */  addu       $s7, $a0, $zero
/* C77B8 801113F8 AFB20038 */  sw         $s2, 0x38($sp)
/* C77BC 801113FC 00A09021 */  addu       $s2, $a1, $zero
/* C77C0 80111400 AFB60048 */  sw         $s6, 0x48($sp)
/* C77C4 80111404 00C0B021 */  addu       $s6, $a2, $zero
/* C77C8 80111408 AFB10034 */  sw         $s1, 0x34($sp)
/* C77CC 8011140C 2411FFFF */  addiu      $s1, $zero, -0x1
/* C77D0 80111410 AFB00030 */  sw         $s0, 0x30($sp)
/* C77D4 80111414 00008021 */  addu       $s0, $zero, $zero
/* C77D8 80111418 AFB40040 */  sw         $s4, 0x40($sp)
/* C77DC 8011141C 27B40010 */  addiu      $s4, $sp, 0x10
/* C77E0 80111420 AFB50044 */  sw         $s5, 0x44($sp)
/* C77E4 80111424 27B50020 */  addiu      $s5, $sp, 0x20
/* C77E8 80111428 AFB3003C */  sw         $s3, 0x3C($sp)
/* C77EC 8011142C 02009821 */  addu       $s3, $s0, $zero
/* C77F0 80111430 AFBF0050 */  sw         $ra, 0x50($sp)
/* C77F4 80111434 F7B40058 */  sdc1       $f20, 0x58($sp)
.Lrace_80111438:
/* C77F8 80111438 8EE20144 */  lw         $v0, 0x144($s7)
/* C77FC 8011143C 0202102A */  slt        $v0, $s0, $v0
/* C7800 80111440 10400042 */  beqz       $v0, .Lrace_8011154C
/* C7804 80111444 02802821 */   addu      $a1, $s4, $zero
/* C7808 80111448 8EE20140 */  lw         $v0, 0x140($s7)
/* C780C 8011144C 02621021 */  addu       $v0, $s3, $v0
/* C7810 80111450 8C43005C */  lw         $v1, 0x5C($v0)
/* C7814 80111454 8C620024 */  lw         $v0, 0x24($v1)
/* C7818 80111458 84440010 */  lh         $a0, 0x10($v0)
/* C781C 8011145C 8C420014 */  lw         $v0, 0x14($v0)
/* C7820 80111460 0040F809 */  jalr       $v0
/* C7824 80111464 00642021 */   addu      $a0, $v1, $a0
/* C7828 80111468 C7A20010 */  lwc1       $f2, 0x10($sp)
/* C782C 8011146C C6400000 */  lwc1       $f0, 0x0($s2)
/* C7830 80111470 46001201 */  sub.s      $f8, $f2, $f0
/* C7834 80111474 46084182 */  mul.s      $f6, $f8, $f8
/* C7838 80111478 C6840004 */  lwc1       $f4, 0x4($s4)
/* C783C 8011147C C6400004 */  lwc1       $f0, 0x4($s2)
/* C7840 80111480 46002101 */  sub.s      $f4, $f4, $f0
/* C7844 80111484 46042102 */  mul.s      $f4, $f4, $f4
/* C7848 80111488 C6420008 */  lwc1       $f2, 0x8($s2)
/* C784C 8011148C C6800008 */  lwc1       $f0, 0x8($s4)
/* C7850 80111490 46020001 */  sub.s      $f0, $f0, $f2
/* C7854 80111494 46000002 */  mul.s      $f0, $f0, $f0
/* C7858 80111498 46043180 */  add.s      $f6, $f6, $f4
/* C785C 8011149C 46003500 */  add.s      $f20, $f6, $f0
/* C7860 801114A0 461CA03C */  c.lt.s     $f20, $f28
/* C7864 801114A4 00000000 */  nop
/* C7868 801114A8 45030026 */  bc1tl      .Lrace_80111544
/* C786C 801114AC 26730E2C */   addiu     $s3, $s3, 0xE2C
/* C7870 801114B0 4614D03C */  c.lt.s     $f26, $f20
/* C7874 801114B4 00000000 */  nop
/* C7878 801114B8 45030022 */  bc1tl      .Lrace_80111544
/* C787C 801114BC 26730E2C */   addiu     $s3, $s3, 0xE2C
/* C7880 801114C0 C7A00014 */  lwc1       $f0, 0x14($sp)
/* C7884 801114C4 E7A80020 */  swc1       $f8, 0x20($sp)
/* C7888 801114C8 C6420004 */  lwc1       $f2, 0x4($s2)
/* C788C 801114CC 46020001 */  sub.s      $f0, $f0, $f2
/* C7890 801114D0 C7A20018 */  lwc1       $f2, 0x18($sp)
/* C7894 801114D4 E7A00024 */  swc1       $f0, 0x24($sp)
/* C7898 801114D8 C6400008 */  lwc1       $f0, 0x8($s2)
/* C789C 801114DC 46001081 */  sub.s      $f2, $f2, $f0
/* C78A0 801114E0 02A02021 */  addu       $a0, $s5, $zero
/* C78A4 801114E4 02A02821 */  addu       $a1, $s5, $zero
/* C78A8 801114E8 0C000F26 */  jal        func_80003C98
/* C78AC 801114EC E7A20028 */   swc1      $f2, 0x28($sp)
/* C78B0 801114F0 C7A40020 */  lwc1       $f4, 0x20($sp)
/* C78B4 801114F4 C6C00000 */  lwc1       $f0, 0x0($s6)
/* C78B8 801114F8 46002102 */  mul.s      $f4, $f4, $f0
/* C78BC 801114FC C7A60024 */  lwc1       $f6, 0x24($sp)
/* C78C0 80111500 C6C00004 */  lwc1       $f0, 0x4($s6)
/* C78C4 80111504 46003182 */  mul.s      $f6, $f6, $f0
/* C78C8 80111508 C7A20028 */  lwc1       $f2, 0x28($sp)
/* C78CC 8011150C C6C00008 */  lwc1       $f0, 0x8($s6)
/* C78D0 80111510 46001082 */  mul.s      $f2, $f2, $f0
/* C78D4 80111514 46062100 */  add.s      $f4, $f4, $f6
/* C78D8 80111518 46022100 */  add.s      $f4, $f4, $f2
/* C78DC 8011151C 4618203C */  c.lt.s     $f4, $f24
/* C78E0 80111520 00000000 */  nop
/* C78E4 80111524 45010007 */  bc1t       .Lrace_80111544
/* C78E8 80111528 26730E2C */   addiu     $s3, $s3, 0xE2C
/* C78EC 8011152C 4614B03C */  c.lt.s     $f22, $f20
/* C78F0 80111530 00000000 */  nop
/* C78F4 80111534 45000003 */  bc1f       .Lrace_80111544
/* C78F8 80111538 00000000 */   nop
/* C78FC 8011153C 4600A586 */  mov.s      $f22, $f20
/* C7900 80111540 02008821 */  addu       $s1, $s0, $zero
.Lrace_80111544:
/* C7904 80111544 0804450E */  j          .Lrace_80111438
/* C7908 80111548 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_8011154C:
/* C790C 8011154C 0620000C */  bltz       $s1, .Lrace_80111580
/* C7910 80111550 001110C0 */   sll       $v0, $s1, 3
/* C7914 80111554 00511023 */  subu       $v0, $v0, $s1
/* C7918 80111558 000210C0 */  sll        $v0, $v0, 3
/* C791C 8011155C 00511021 */  addu       $v0, $v0, $s1
/* C7920 80111560 00021080 */  sll        $v0, $v0, 2
/* C7924 80111564 00511023 */  subu       $v0, $v0, $s1
/* C7928 80111568 00021080 */  sll        $v0, $v0, 2
/* C792C 8011156C 00511023 */  subu       $v0, $v0, $s1
/* C7930 80111570 8EE30140 */  lw         $v1, 0x140($s7)
/* C7934 80111574 00021080 */  sll        $v0, $v0, 2
/* C7938 80111578 08044561 */  j          .Lrace_80111584
/* C793C 8011157C 00621021 */   addu      $v0, $v1, $v0
.Lrace_80111580:
/* C7940 80111580 00001021 */  addu       $v0, $zero, $zero
.Lrace_80111584:
/* C7944 80111584 8FBF0050 */  lw         $ra, 0x50($sp)
/* C7948 80111588 8FB7004C */  lw         $s7, 0x4C($sp)
/* C794C 8011158C 8FB60048 */  lw         $s6, 0x48($sp)
/* C7950 80111590 8FB50044 */  lw         $s5, 0x44($sp)
/* C7954 80111594 8FB40040 */  lw         $s4, 0x40($sp)
/* C7958 80111598 8FB3003C */  lw         $s3, 0x3C($sp)
/* C795C 8011159C 8FB20038 */  lw         $s2, 0x38($sp)
/* C7960 801115A0 8FB10034 */  lw         $s1, 0x34($sp)
/* C7964 801115A4 8FB00030 */  lw         $s0, 0x30($sp)
/* C7968 801115A8 D7BC0078 */  ldc1       $f28, 0x78($sp)
/* C796C 801115AC D7BA0070 */  ldc1       $f26, 0x70($sp)
/* C7970 801115B0 D7B80068 */  ldc1       $f24, 0x68($sp)
/* C7974 801115B4 D7B60060 */  ldc1       $f22, 0x60($sp)
/* C7978 801115B8 D7B40058 */  ldc1       $f20, 0x58($sp)
/* C797C 801115BC 03E00008 */  jr         $ra
/* C7980 801115C0 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_801115C4
/* C7984 801115C4 27BDFF80 */  addiu      $sp, $sp, -0x80
/* C7988 801115C8 F7BC0078 */  sdc1       $f28, 0x78($sp)
/* C798C 801115CC 4487E000 */  mtc1       $a3, $f28
/* C7990 801115D0 F7BA0070 */  sdc1       $f26, 0x70($sp)
/* C7994 801115D4 C7BA0090 */  lwc1       $f26, 0x90($sp)
/* C7998 801115D8 F7B80068 */  sdc1       $f24, 0x68($sp)
/* C799C 801115DC C7B80094 */  lwc1       $f24, 0x94($sp)
/* C79A0 801115E0 F7B60060 */  sdc1       $f22, 0x60($sp)
/* C79A4 801115E4 3C01800D */  lui        $at, %hi(D_race_800CDD40)
/* C79A8 801115E8 C436DD40 */  lwc1       $f22, %lo(D_race_800CDD40)($at)
/* C79AC 801115EC AFB7004C */  sw         $s7, 0x4C($sp)
/* C79B0 801115F0 0080B821 */  addu       $s7, $a0, $zero
/* C79B4 801115F4 AFB20038 */  sw         $s2, 0x38($sp)
/* C79B8 801115F8 00A09021 */  addu       $s2, $a1, $zero
/* C79BC 801115FC AFB60048 */  sw         $s6, 0x48($sp)
/* C79C0 80111600 00C0B021 */  addu       $s6, $a2, $zero
/* C79C4 80111604 AFB10034 */  sw         $s1, 0x34($sp)
/* C79C8 80111608 2411FFFF */  addiu      $s1, $zero, -0x1
/* C79CC 8011160C AFB00030 */  sw         $s0, 0x30($sp)
/* C79D0 80111610 00008021 */  addu       $s0, $zero, $zero
/* C79D4 80111614 AFB40040 */  sw         $s4, 0x40($sp)
/* C79D8 80111618 27B40010 */  addiu      $s4, $sp, 0x10
/* C79DC 8011161C AFB50044 */  sw         $s5, 0x44($sp)
/* C79E0 80111620 27B50020 */  addiu      $s5, $sp, 0x20
/* C79E4 80111624 AFB3003C */  sw         $s3, 0x3C($sp)
/* C79E8 80111628 02009821 */  addu       $s3, $s0, $zero
/* C79EC 8011162C AFBF0050 */  sw         $ra, 0x50($sp)
/* C79F0 80111630 F7B40058 */  sdc1       $f20, 0x58($sp)
.Lrace_80111634:
/* C79F4 80111634 8EE20144 */  lw         $v0, 0x144($s7)
/* C79F8 80111638 0202102A */  slt        $v0, $s0, $v0
/* C79FC 8011163C 10400042 */  beqz       $v0, .Lrace_80111748
/* C7A00 80111640 02802821 */   addu      $a1, $s4, $zero
/* C7A04 80111644 8EE20140 */  lw         $v0, 0x140($s7)
/* C7A08 80111648 02621021 */  addu       $v0, $s3, $v0
/* C7A0C 8011164C 8C43005C */  lw         $v1, 0x5C($v0)
/* C7A10 80111650 8C620024 */  lw         $v0, 0x24($v1)
/* C7A14 80111654 84440010 */  lh         $a0, 0x10($v0)
/* C7A18 80111658 8C420014 */  lw         $v0, 0x14($v0)
/* C7A1C 8011165C 0040F809 */  jalr       $v0
/* C7A20 80111660 00642021 */   addu      $a0, $v1, $a0
/* C7A24 80111664 C7A20010 */  lwc1       $f2, 0x10($sp)
/* C7A28 80111668 C6400000 */  lwc1       $f0, 0x0($s2)
/* C7A2C 8011166C 46001201 */  sub.s      $f8, $f2, $f0
/* C7A30 80111670 46084182 */  mul.s      $f6, $f8, $f8
/* C7A34 80111674 C6840004 */  lwc1       $f4, 0x4($s4)
/* C7A38 80111678 C6400004 */  lwc1       $f0, 0x4($s2)
/* C7A3C 8011167C 46002101 */  sub.s      $f4, $f4, $f0
/* C7A40 80111680 46042102 */  mul.s      $f4, $f4, $f4
/* C7A44 80111684 C6420008 */  lwc1       $f2, 0x8($s2)
/* C7A48 80111688 C6800008 */  lwc1       $f0, 0x8($s4)
/* C7A4C 8011168C 46020001 */  sub.s      $f0, $f0, $f2
/* C7A50 80111690 46000002 */  mul.s      $f0, $f0, $f0
/* C7A54 80111694 46043180 */  add.s      $f6, $f6, $f4
/* C7A58 80111698 46003500 */  add.s      $f20, $f6, $f0
/* C7A5C 8011169C 461CA03C */  c.lt.s     $f20, $f28
/* C7A60 801116A0 00000000 */  nop
/* C7A64 801116A4 45030026 */  bc1tl      .Lrace_80111740
/* C7A68 801116A8 26730E2C */   addiu     $s3, $s3, 0xE2C
/* C7A6C 801116AC 4614D03C */  c.lt.s     $f26, $f20
/* C7A70 801116B0 00000000 */  nop
/* C7A74 801116B4 45030022 */  bc1tl      .Lrace_80111740
/* C7A78 801116B8 26730E2C */   addiu     $s3, $s3, 0xE2C
/* C7A7C 801116BC C7A00014 */  lwc1       $f0, 0x14($sp)
/* C7A80 801116C0 E7A80020 */  swc1       $f8, 0x20($sp)
/* C7A84 801116C4 C6420004 */  lwc1       $f2, 0x4($s2)
/* C7A88 801116C8 46020001 */  sub.s      $f0, $f0, $f2
/* C7A8C 801116CC C7A20018 */  lwc1       $f2, 0x18($sp)
/* C7A90 801116D0 E7A00024 */  swc1       $f0, 0x24($sp)
/* C7A94 801116D4 C6400008 */  lwc1       $f0, 0x8($s2)
/* C7A98 801116D8 46001081 */  sub.s      $f2, $f2, $f0
/* C7A9C 801116DC 02A02021 */  addu       $a0, $s5, $zero
/* C7AA0 801116E0 02A02821 */  addu       $a1, $s5, $zero
/* C7AA4 801116E4 0C000F26 */  jal        func_80003C98
/* C7AA8 801116E8 E7A20028 */   swc1      $f2, 0x28($sp)
/* C7AAC 801116EC C7A40020 */  lwc1       $f4, 0x20($sp)
/* C7AB0 801116F0 C6C00000 */  lwc1       $f0, 0x0($s6)
/* C7AB4 801116F4 46002102 */  mul.s      $f4, $f4, $f0
/* C7AB8 801116F8 C7A60024 */  lwc1       $f6, 0x24($sp)
/* C7ABC 801116FC C6C00004 */  lwc1       $f0, 0x4($s6)
/* C7AC0 80111700 46003182 */  mul.s      $f6, $f6, $f0
/* C7AC4 80111704 C7A20028 */  lwc1       $f2, 0x28($sp)
/* C7AC8 80111708 C6C00008 */  lwc1       $f0, 0x8($s6)
/* C7ACC 8011170C 46001082 */  mul.s      $f2, $f2, $f0
/* C7AD0 80111710 46062100 */  add.s      $f4, $f4, $f6
/* C7AD4 80111714 46022100 */  add.s      $f4, $f4, $f2
/* C7AD8 80111718 4618203C */  c.lt.s     $f4, $f24
/* C7ADC 8011171C 00000000 */  nop
/* C7AE0 80111720 45010007 */  bc1t       .Lrace_80111740
/* C7AE4 80111724 26730E2C */   addiu     $s3, $s3, 0xE2C
/* C7AE8 80111728 4616A03C */  c.lt.s     $f20, $f22
/* C7AEC 8011172C 00000000 */  nop
/* C7AF0 80111730 45000003 */  bc1f       .Lrace_80111740
/* C7AF4 80111734 00000000 */   nop
/* C7AF8 80111738 4600A586 */  mov.s      $f22, $f20
/* C7AFC 8011173C 02008821 */  addu       $s1, $s0, $zero
.Lrace_80111740:
/* C7B00 80111740 0804458D */  j          .Lrace_80111634
/* C7B04 80111744 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_80111748:
/* C7B08 80111748 0620000C */  bltz       $s1, .Lrace_8011177C
/* C7B0C 8011174C 001110C0 */   sll       $v0, $s1, 3
/* C7B10 80111750 00511023 */  subu       $v0, $v0, $s1
/* C7B14 80111754 000210C0 */  sll        $v0, $v0, 3
/* C7B18 80111758 00511021 */  addu       $v0, $v0, $s1
/* C7B1C 8011175C 00021080 */  sll        $v0, $v0, 2
/* C7B20 80111760 00511023 */  subu       $v0, $v0, $s1
/* C7B24 80111764 00021080 */  sll        $v0, $v0, 2
/* C7B28 80111768 00511023 */  subu       $v0, $v0, $s1
/* C7B2C 8011176C 8EE30140 */  lw         $v1, 0x140($s7)
/* C7B30 80111770 00021080 */  sll        $v0, $v0, 2
/* C7B34 80111774 080445E0 */  j          .Lrace_80111780
/* C7B38 80111778 00621021 */   addu      $v0, $v1, $v0
.Lrace_8011177C:
/* C7B3C 8011177C 00001021 */  addu       $v0, $zero, $zero
.Lrace_80111780:
/* C7B40 80111780 8FBF0050 */  lw         $ra, 0x50($sp)
/* C7B44 80111784 8FB7004C */  lw         $s7, 0x4C($sp)
/* C7B48 80111788 8FB60048 */  lw         $s6, 0x48($sp)
/* C7B4C 8011178C 8FB50044 */  lw         $s5, 0x44($sp)
/* C7B50 80111790 8FB40040 */  lw         $s4, 0x40($sp)
/* C7B54 80111794 8FB3003C */  lw         $s3, 0x3C($sp)
/* C7B58 80111798 8FB20038 */  lw         $s2, 0x38($sp)
/* C7B5C 8011179C 8FB10034 */  lw         $s1, 0x34($sp)
/* C7B60 801117A0 8FB00030 */  lw         $s0, 0x30($sp)
/* C7B64 801117A4 D7BC0078 */  ldc1       $f28, 0x78($sp)
/* C7B68 801117A8 D7BA0070 */  ldc1       $f26, 0x70($sp)
/* C7B6C 801117AC D7B80068 */  ldc1       $f24, 0x68($sp)
/* C7B70 801117B0 D7B60060 */  ldc1       $f22, 0x60($sp)
/* C7B74 801117B4 D7B40058 */  ldc1       $f20, 0x58($sp)
/* C7B78 801117B8 03E00008 */  jr         $ra
/* C7B7C 801117BC 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_801117C0
/* C7B80 801117C0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* C7B84 801117C4 F7B60048 */  sdc1       $f22, 0x48($sp)
/* C7B88 801117C8 4486B000 */  mtc1       $a2, $f22
/* C7B8C 801117CC F7B80050 */  sdc1       $f24, 0x50($sp)
/* C7B90 801117D0 4487C000 */  mtc1       $a3, $f24
/* C7B94 801117D4 F7B40040 */  sdc1       $f20, 0x40($sp)
/* C7B98 801117D8 3C01800D */  lui        $at, %hi(D_race_800CDD44)
/* C7B9C 801117DC C434DD44 */  lwc1       $f20, %lo(D_race_800CDD44)($at)
/* C7BA0 801117E0 AFB50034 */  sw         $s5, 0x34($sp)
/* C7BA4 801117E4 0080A821 */  addu       $s5, $a0, $zero
/* C7BA8 801117E8 AFB40030 */  sw         $s4, 0x30($sp)
/* C7BAC 801117EC 00A0A021 */  addu       $s4, $a1, $zero
/* C7BB0 801117F0 AFB10024 */  sw         $s1, 0x24($sp)
/* C7BB4 801117F4 2411FFFF */  addiu      $s1, $zero, -0x1
/* C7BB8 801117F8 AFB00020 */  sw         $s0, 0x20($sp)
/* C7BBC 801117FC 00008021 */  addu       $s0, $zero, $zero
/* C7BC0 80111800 AFB3002C */  sw         $s3, 0x2C($sp)
/* C7BC4 80111804 27B30010 */  addiu      $s3, $sp, 0x10
/* C7BC8 80111808 AFB20028 */  sw         $s2, 0x28($sp)
/* C7BCC 8011180C 02009021 */  addu       $s2, $s0, $zero
/* C7BD0 80111810 AFBF0038 */  sw         $ra, 0x38($sp)
.Lrace_80111814:
/* C7BD4 80111814 8EA20144 */  lw         $v0, 0x144($s5)
/* C7BD8 80111818 0202102A */  slt        $v0, $s0, $v0
/* C7BDC 8011181C 10400028 */  beqz       $v0, .Lrace_801118C0
/* C7BE0 80111820 00000000 */   nop
/* C7BE4 80111824 8EA20140 */  lw         $v0, 0x140($s5)
/* C7BE8 80111828 02421021 */  addu       $v0, $s2, $v0
/* C7BEC 8011182C 8C42005C */  lw         $v0, 0x5C($v0)
/* C7BF0 80111830 8C430024 */  lw         $v1, 0x24($v0)
/* C7BF4 80111834 84640010 */  lh         $a0, 0x10($v1)
/* C7BF8 80111838 00442021 */  addu       $a0, $v0, $a0
/* C7BFC 8011183C 8C620014 */  lw         $v0, 0x14($v1)
/* C7C00 80111840 0040F809 */  jalr       $v0
/* C7C04 80111844 02602821 */   addu      $a1, $s3, $zero
/* C7C08 80111848 C7A40010 */  lwc1       $f4, 0x10($sp)
/* C7C0C 8011184C C6800000 */  lwc1       $f0, 0x0($s4)
/* C7C10 80111850 46002101 */  sub.s      $f4, $f4, $f0
/* C7C14 80111854 46042102 */  mul.s      $f4, $f4, $f4
/* C7C18 80111858 C6660004 */  lwc1       $f6, 0x4($s3)
/* C7C1C 8011185C C6800004 */  lwc1       $f0, 0x4($s4)
/* C7C20 80111860 46003181 */  sub.s      $f6, $f6, $f0
/* C7C24 80111864 46063182 */  mul.s      $f6, $f6, $f6
/* C7C28 80111868 C6820008 */  lwc1       $f2, 0x8($s4)
/* C7C2C 8011186C C6600008 */  lwc1       $f0, 0x8($s3)
/* C7C30 80111870 46020001 */  sub.s      $f0, $f0, $f2
/* C7C34 80111874 46000002 */  mul.s      $f0, $f0, $f0
/* C7C38 80111878 46062100 */  add.s      $f4, $f4, $f6
/* C7C3C 8011187C 46002100 */  add.s      $f4, $f4, $f0
/* C7C40 80111880 4616203C */  c.lt.s     $f4, $f22
/* C7C44 80111884 00000000 */  nop
/* C7C48 80111888 4503000B */  bc1tl      .Lrace_801118B8
/* C7C4C 8011188C 26520E2C */   addiu     $s2, $s2, 0xE2C
/* C7C50 80111890 4604C03C */  c.lt.s     $f24, $f4
/* C7C54 80111894 00000000 */  nop
/* C7C58 80111898 45010007 */  bc1t       .Lrace_801118B8
/* C7C5C 8011189C 26520E2C */   addiu     $s2, $s2, 0xE2C
/* C7C60 801118A0 4614203C */  c.lt.s     $f4, $f20
/* C7C64 801118A4 00000000 */  nop
/* C7C68 801118A8 45000003 */  bc1f       .Lrace_801118B8
/* C7C6C 801118AC 00000000 */   nop
/* C7C70 801118B0 46002506 */  mov.s      $f20, $f4
/* C7C74 801118B4 02008821 */  addu       $s1, $s0, $zero
.Lrace_801118B8:
/* C7C78 801118B8 08044605 */  j          .Lrace_80111814
/* C7C7C 801118BC 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_801118C0:
/* C7C80 801118C0 0620000C */  bltz       $s1, .Lrace_801118F4
/* C7C84 801118C4 001110C0 */   sll       $v0, $s1, 3
/* C7C88 801118C8 00511023 */  subu       $v0, $v0, $s1
/* C7C8C 801118CC 000210C0 */  sll        $v0, $v0, 3
/* C7C90 801118D0 00511021 */  addu       $v0, $v0, $s1
/* C7C94 801118D4 00021080 */  sll        $v0, $v0, 2
/* C7C98 801118D8 00511023 */  subu       $v0, $v0, $s1
/* C7C9C 801118DC 00021080 */  sll        $v0, $v0, 2
/* C7CA0 801118E0 00511023 */  subu       $v0, $v0, $s1
/* C7CA4 801118E4 8EA30140 */  lw         $v1, 0x140($s5)
/* C7CA8 801118E8 00021080 */  sll        $v0, $v0, 2
/* C7CAC 801118EC 0804463E */  j          .Lrace_801118F8
/* C7CB0 801118F0 00621021 */   addu      $v0, $v1, $v0
.Lrace_801118F4:
/* C7CB4 801118F4 00001021 */  addu       $v0, $zero, $zero
.Lrace_801118F8:
/* C7CB8 801118F8 8FBF0038 */  lw         $ra, 0x38($sp)
/* C7CBC 801118FC 8FB50034 */  lw         $s5, 0x34($sp)
/* C7CC0 80111900 8FB40030 */  lw         $s4, 0x30($sp)
/* C7CC4 80111904 8FB3002C */  lw         $s3, 0x2C($sp)
/* C7CC8 80111908 8FB20028 */  lw         $s2, 0x28($sp)
/* C7CCC 8011190C 8FB10024 */  lw         $s1, 0x24($sp)
/* C7CD0 80111910 8FB00020 */  lw         $s0, 0x20($sp)
/* C7CD4 80111914 D7B80050 */  ldc1       $f24, 0x50($sp)
/* C7CD8 80111918 D7B60048 */  ldc1       $f22, 0x48($sp)
/* C7CDC 8011191C D7B40040 */  ldc1       $f20, 0x40($sp)
/* C7CE0 80111920 03E00008 */  jr         $ra
/* C7CE4 80111924 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_80111928
/* C7CE8 80111928 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C7CEC 8011192C AFB20018 */  sw         $s2, 0x18($sp)
/* C7CF0 80111930 00809021 */  addu       $s2, $a0, $zero
/* C7CF4 80111934 AFBF001C */  sw         $ra, 0x1C($sp)
/* C7CF8 80111938 AFB10014 */  sw         $s1, 0x14($sp)
/* C7CFC 8011193C AFB00010 */  sw         $s0, 0x10($sp)
/* C7D00 80111940 8E420144 */  lw         $v0, 0x144($s2)
/* C7D04 80111944 1040000A */  beqz       $v0, .Lrace_80111970
/* C7D08 80111948 00008021 */   addu      $s0, $zero, $zero
/* C7D0C 8011194C 02008821 */  addu       $s1, $s0, $zero
.Lrace_80111950:
/* C7D10 80111950 8E440140 */  lw         $a0, 0x140($s2)
/* C7D14 80111954 26100001 */  addiu      $s0, $s0, 0x1
/* C7D18 80111958 0C0433F2 */  jal        func_race_8010CFC8
/* C7D1C 8011195C 00912021 */   addu      $a0, $a0, $s1
/* C7D20 80111960 8E420144 */  lw         $v0, 0x144($s2)
/* C7D24 80111964 0202102B */  sltu       $v0, $s0, $v0
/* C7D28 80111968 1440FFF9 */  bnez       $v0, .Lrace_80111950
/* C7D2C 8011196C 26310E2C */   addiu     $s1, $s1, 0xE2C
.Lrace_80111970:
/* C7D30 80111970 8E44014C */  lw         $a0, 0x14C($s2)
/* C7D34 80111974 0C04654F */  jal        func_race_8011953C
/* C7D38 80111978 2405004F */   addiu     $a1, $zero, 0x4F
/* C7D3C 8011197C 1040000C */  beqz       $v0, .Lrace_801119B0
/* C7D40 80111980 AE42016C */   sw        $v0, 0x16C($s2)
/* C7D44 80111984 3C01800D */  lui        $at, %hi(D_race_800CDD48)
/* C7D48 80111988 C420DD48 */  lwc1       $f0, %lo(D_race_800CDD48)($at)
/* C7D4C 8011198C 3C053F4C */  lui        $a1, (0x3F4CCCCD >> 16)
/* C7D50 80111990 34A5CCCD */  ori        $a1, $a1, (0x3F4CCCCD & 0xFFFF)
/* C7D54 80111994 3C01800D */  lui        $at, %hi(D_race_800CDD4C)
/* C7D58 80111998 C422DD4C */  lwc1       $f2, %lo(D_race_800CDD4C)($at)
/* C7D5C 8011199C E440002C */  swc1       $f0, 0x2C($v0)
/* C7D60 801119A0 E4420030 */  swc1       $f2, 0x30($v0)
/* C7D64 801119A4 8E44016C */  lw         $a0, 0x16C($s2)
/* C7D68 801119A8 0C01FDE4 */  jal        func_8007F790
/* C7D6C 801119AC 00000000 */   nop
.Lrace_801119B0:
/* C7D70 801119B0 8FBF001C */  lw         $ra, 0x1C($sp)
/* C7D74 801119B4 8FB20018 */  lw         $s2, 0x18($sp)
/* C7D78 801119B8 8FB10014 */  lw         $s1, 0x14($sp)
/* C7D7C 801119BC 8FB00010 */  lw         $s0, 0x10($sp)
/* C7D80 801119C0 03E00008 */  jr         $ra
/* C7D84 801119C4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801119C8
/* C7D88 801119C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C7D8C 801119CC AFB20018 */  sw         $s2, 0x18($sp)
/* C7D90 801119D0 00809021 */  addu       $s2, $a0, $zero
/* C7D94 801119D4 AFB50024 */  sw         $s5, 0x24($sp)
/* C7D98 801119D8 00A0A821 */  addu       $s5, $a1, $zero
/* C7D9C 801119DC AFB3001C */  sw         $s3, 0x1C($sp)
/* C7DA0 801119E0 00C09821 */  addu       $s3, $a2, $zero
/* C7DA4 801119E4 AFB10014 */  sw         $s1, 0x14($sp)
/* C7DA8 801119E8 00008821 */  addu       $s1, $zero, $zero
/* C7DAC 801119EC AFB40020 */  sw         $s4, 0x20($sp)
/* C7DB0 801119F0 24140003 */  addiu      $s4, $zero, 0x3
/* C7DB4 801119F4 AFB00010 */  sw         $s0, 0x10($sp)
/* C7DB8 801119F8 02208021 */  addu       $s0, $s1, $zero
/* C7DBC 801119FC AFBF0028 */  sw         $ra, 0x28($sp)
.Lrace_80111A00:
/* C7DC0 80111A00 8E420144 */  lw         $v0, 0x144($s2)
/* C7DC4 80111A04 0222102B */  sltu       $v0, $s1, $v0
/* C7DC8 80111A08 1040001B */  beqz       $v0, .Lrace_80111A78
/* C7DCC 80111A0C 00000000 */   nop
/* C7DD0 80111A10 8E420140 */  lw         $v0, 0x140($s2)
/* C7DD4 80111A14 00501021 */  addu       $v0, $v0, $s0
/* C7DD8 80111A18 16620009 */  bne        $s3, $v0, .Lrace_80111A40
/* C7DDC 80111A1C 00002021 */   addu      $a0, $zero, $zero
/* C7DE0 80111A20 8E620DB0 */  lw         $v0, 0xDB0($s3)
/* C7DE4 80111A24 14540006 */  bne        $v0, $s4, .Lrace_80111A40
/* C7DE8 80111A28 00000000 */   nop
/* C7DEC 80111A2C 8E630D04 */  lw         $v1, 0xD04($s3)
/* C7DF0 80111A30 30621000 */  andi       $v0, $v1, 0x1000
/* C7DF4 80111A34 14400002 */  bnez       $v0, .Lrace_80111A40
/* C7DF8 80111A38 30620400 */   andi      $v0, $v1, 0x400
/* C7DFC 80111A3C 0082202B */  sltu       $a0, $a0, $v0
.Lrace_80111A40:
/* C7E00 80111A40 5480000B */  bnel       $a0, $zero, .Lrace_80111A70
/* C7E04 80111A44 26100E2C */   addiu     $s0, $s0, 0xE2C
/* C7E08 80111A48 8E440140 */  lw         $a0, 0x140($s2)
/* C7E0C 80111A4C 02042021 */  addu       $a0, $s0, $a0
/* C7E10 80111A50 2484001C */  addiu      $a0, $a0, 0x1C
/* C7E14 80111A54 8C830024 */  lw         $v1, 0x24($a0)
/* C7E18 80111A58 84620040 */  lh         $v0, 0x40($v1)
/* C7E1C 80111A5C 00822021 */  addu       $a0, $a0, $v0
/* C7E20 80111A60 8C620044 */  lw         $v0, 0x44($v1)
/* C7E24 80111A64 0040F809 */  jalr       $v0
/* C7E28 80111A68 02A02821 */   addu      $a1, $s5, $zero
/* C7E2C 80111A6C 26100E2C */  addiu      $s0, $s0, 0xE2C
.Lrace_80111A70:
/* C7E30 80111A70 08044680 */  j          .Lrace_80111A00
/* C7E34 80111A74 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_80111A78:
/* C7E38 80111A78 8FBF0028 */  lw         $ra, 0x28($sp)
/* C7E3C 80111A7C 8FB50024 */  lw         $s5, 0x24($sp)
/* C7E40 80111A80 8FB40020 */  lw         $s4, 0x20($sp)
/* C7E44 80111A84 8FB3001C */  lw         $s3, 0x1C($sp)
/* C7E48 80111A88 8FB20018 */  lw         $s2, 0x18($sp)
/* C7E4C 80111A8C 8FB10014 */  lw         $s1, 0x14($sp)
/* C7E50 80111A90 8FB00010 */  lw         $s0, 0x10($sp)
/* C7E54 80111A94 03E00008 */  jr         $ra
/* C7E58 80111A98 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_80111A9C
/* C7E5C 80111A9C 00806821 */  addu       $t5, $a0, $zero
/* C7E60 80111AA0 8DA20178 */  lw         $v0, 0x178($t5)
/* C7E64 80111AA4 8CAA0CE4 */  lw         $t2, 0xCE4($a1)
/* C7E68 80111AA8 10400036 */  beqz       $v0, .Lrace_80111B84
/* C7E6C 80111AAC 00004021 */   addu      $t0, $zero, $zero
/* C7E70 80111AB0 01002021 */  addu       $a0, $t0, $zero
/* C7E74 80111AB4 01003821 */  addu       $a3, $t0, $zero
/* C7E78 80111AB8 01003021 */  addu       $a2, $t0, $zero
.Lrace_80111ABC:
/* C7E7C 80111ABC 00CA102B */  sltu       $v0, $a2, $t2
/* C7E80 80111AC0 10400005 */  beqz       $v0, .Lrace_80111AD8
/* C7E84 80111AC4 24C60001 */   addiu     $a2, $a2, 0x1
/* C7E88 80111AC8 8CA20CEC */  lw         $v0, 0xCEC($a1)
/* C7E8C 80111ACC 24A50004 */  addiu      $a1, $a1, 0x4
/* C7E90 80111AD0 080446AF */  j          .Lrace_80111ABC
/* C7E94 80111AD4 01024021 */   addu      $t0, $t0, $v0
.Lrace_80111AD8:
/* C7E98 80111AD8 8DA20178 */  lw         $v0, 0x178($t5)
/* C7E9C 80111ADC 904203B0 */  lbu        $v0, 0x3B0($v0)
/* C7EA0 80111AE0 30420008 */  andi       $v0, $v0, 0x8
/* C7EA4 80111AE4 1040000B */  beqz       $v0, .Lrace_80111B14
/* C7EA8 80111AE8 00003021 */   addu      $a2, $zero, $zero
.Lrace_80111AEC:
/* C7EAC 80111AEC 00CA102B */  sltu       $v0, $a2, $t2
/* C7EB0 80111AF0 10400008 */  beqz       $v0, .Lrace_80111B14
/* C7EB4 80111AF4 00061880 */   sll       $v1, $a2, 2
/* C7EB8 80111AF8 8DA20178 */  lw         $v0, 0x178($t5)
/* C7EBC 80111AFC 8C420008 */  lw         $v0, 0x8($v0)
/* C7EC0 80111B00 00431021 */  addu       $v0, $v0, $v1
/* C7EC4 80111B04 8C420000 */  lw         $v0, 0x0($v0)
/* C7EC8 80111B08 24C60001 */  addiu      $a2, $a2, 0x1
/* C7ECC 80111B0C 080446BB */  j          .Lrace_80111AEC
/* C7ED0 80111B10 00822021 */   addu      $a0, $a0, $v0
.Lrace_80111B14:
/* C7ED4 80111B14 8DA20178 */  lw         $v0, 0x178($t5)
/* C7ED8 80111B18 904203B0 */  lbu        $v0, 0x3B0($v0)
/* C7EDC 80111B1C 30420001 */  andi       $v0, $v0, 0x1
/* C7EE0 80111B20 1040000B */  beqz       $v0, .Lrace_80111B50
/* C7EE4 80111B24 00003021 */   addu      $a2, $zero, $zero
.Lrace_80111B28:
/* C7EE8 80111B28 00CA102B */  sltu       $v0, $a2, $t2
/* C7EEC 80111B2C 10400008 */  beqz       $v0, .Lrace_80111B50
/* C7EF0 80111B30 00061880 */   sll       $v1, $a2, 2
/* C7EF4 80111B34 8DA20178 */  lw         $v0, 0x178($t5)
/* C7EF8 80111B38 8C42000C */  lw         $v0, 0xC($v0)
/* C7EFC 80111B3C 00431021 */  addu       $v0, $v0, $v1
/* C7F00 80111B40 8C420000 */  lw         $v0, 0x0($v0)
/* C7F04 80111B44 24C60001 */  addiu      $a2, $a2, 0x1
/* C7F08 80111B48 080446CA */  j          .Lrace_80111B28
/* C7F0C 80111B4C 00E23821 */   addu      $a3, $a3, $v0
.Lrace_80111B50:
/* C7F10 80111B50 10E00003 */  beqz       $a3, .Lrace_80111B60
/* C7F14 80111B54 00E4102B */   sltu      $v0, $a3, $a0
/* C7F18 80111B58 54400004 */  bnel       $v0, $zero, .Lrace_80111B6C
/* C7F1C 80111B5C 00E02021 */   addu      $a0, $a3, $zero
.Lrace_80111B60:
/* C7F20 80111B60 14800004 */  bnez       $a0, .Lrace_80111B74
/* C7F24 80111B64 0088102B */   sltu      $v0, $a0, $t0
/* C7F28 80111B68 00E02021 */  addu       $a0, $a3, $zero
.Lrace_80111B6C:
/* C7F2C 80111B6C 10800009 */  beqz       $a0, .Lrace_80111B94
/* C7F30 80111B70 0088102B */   sltu      $v0, $a0, $t0
.Lrace_80111B74:
/* C7F34 80111B74 10400007 */  beqz       $v0, .Lrace_80111B94
/* C7F38 80111B78 01041023 */   subu      $v0, $t0, $a0
/* C7F3C 80111B7C 03E00008 */  jr         $ra
/* C7F40 80111B80 00000000 */   nop
.Lrace_80111B84:
/* C7F44 80111B84 8CA30D00 */  lw         $v1, 0xD00($a1)
/* C7F48 80111B88 24020001 */  addiu      $v0, $zero, 0x1
/* C7F4C 80111B8C 14620003 */  bne        $v1, $v0, .Lrace_80111B9C
/* C7F50 80111B90 00000000 */   nop
.Lrace_80111B94:
/* C7F54 80111B94 03E00008 */  jr         $ra
/* C7F58 80111B98 00001021 */   addu      $v0, $zero, $zero
.Lrace_80111B9C:
/* C7F5C 80111B9C 91A3029C */  lbu        $v1, 0x29C($t5)
/* C7F60 80111BA0 006A102B */  sltu       $v0, $v1, $t2
/* C7F64 80111BA4 10400002 */  beqz       $v0, .Lrace_80111BB0
/* C7F68 80111BA8 00007821 */   addu      $t7, $zero, $zero
/* C7F6C 80111BAC 00605021 */  addu       $t2, $v1, $zero
.Lrace_80111BB0:
/* C7F70 80111BB0 00007021 */  addu       $t6, $zero, $zero
/* C7F74 80111BB4 8DB80144 */  lw         $t8, 0x144($t5)
/* C7F78 80111BB8 01C06021 */  addu       $t4, $t6, $zero
.Lrace_80111BBC:
/* C7F7C 80111BBC 01D8102B */  sltu       $v0, $t6, $t8
/* C7F80 80111BC0 10400032 */  beqz       $v0, .Lrace_80111C8C
/* C7F84 80111BC4 00000000 */   nop
/* C7F88 80111BC8 8DA20140 */  lw         $v0, 0x140($t5)
/* C7F8C 80111BCC 004C1021 */  addu       $v0, $v0, $t4
/* C7F90 80111BD0 5045002C */  beql       $v0, $a1, .Lrace_80111C84
/* C7F94 80111BD4 258C0E2C */   addiu     $t4, $t4, 0xE2C
/* C7F98 80111BD8 8C490CE4 */  lw         $t1, 0xCE4($v0)
/* C7F9C 80111BDC 91A3029C */  lbu        $v1, 0x29C($t5)
/* C7FA0 80111BE0 0069102B */  sltu       $v0, $v1, $t1
/* C7FA4 80111BE4 54400001 */  bnel       $v0, $zero, .Lrace_80111BEC
/* C7FA8 80111BE8 00604821 */   addu      $t1, $v1, $zero
.Lrace_80111BEC:
/* C7FAC 80111BEC 012A102B */  sltu       $v0, $t1, $t2
/* C7FB0 80111BF0 54400024 */  bnel       $v0, $zero, .Lrace_80111C84
/* C7FB4 80111BF4 258C0E2C */   addiu     $t4, $t4, 0xE2C
/* C7FB8 80111BF8 00004021 */  addu       $t0, $zero, $zero
/* C7FBC 80111BFC 01003021 */  addu       $a2, $t0, $zero
/* C7FC0 80111C00 01805821 */  addu       $t3, $t4, $zero
/* C7FC4 80111C04 00A03821 */  addu       $a3, $a1, $zero
.Lrace_80111C08:
/* C7FC8 80111C08 00CA102B */  sltu       $v0, $a2, $t2
/* C7FCC 80111C0C 1040000B */  beqz       $v0, .Lrace_80111C3C
/* C7FD0 80111C10 00061880 */   sll       $v1, $a2, 2
/* C7FD4 80111C14 8CE40CEC */  lw         $a0, 0xCEC($a3)
/* C7FD8 80111C18 24E70004 */  addiu      $a3, $a3, 0x4
/* C7FDC 80111C1C 8DA20140 */  lw         $v0, 0x140($t5)
/* C7FE0 80111C20 01621021 */  addu       $v0, $t3, $v0
/* C7FE4 80111C24 00431021 */  addu       $v0, $v0, $v1
/* C7FE8 80111C28 8C420CEC */  lw         $v0, 0xCEC($v0)
/* C7FEC 80111C2C 24C60001 */  addiu      $a2, $a2, 0x1
/* C7FF0 80111C30 00822023 */  subu       $a0, $a0, $v0
/* C7FF4 80111C34 08044702 */  j          .Lrace_80111C08
/* C7FF8 80111C38 01044021 */   addu      $t0, $t0, $a0
.Lrace_80111C3C:
/* C7FFC 80111C3C 0149102B */  sltu       $v0, $t2, $t1
/* C8000 80111C40 1040000C */  beqz       $v0, .Lrace_80111C74
/* C8004 80111C44 01403021 */   addu      $a2, $t2, $zero
/* C8008 80111C48 01802021 */  addu       $a0, $t4, $zero
.Lrace_80111C4C:
/* C800C 80111C4C 00C9102B */  sltu       $v0, $a2, $t1
/* C8010 80111C50 10400008 */  beqz       $v0, .Lrace_80111C74
/* C8014 80111C54 00061880 */   sll       $v1, $a2, 2
/* C8018 80111C58 8DA20140 */  lw         $v0, 0x140($t5)
/* C801C 80111C5C 00821021 */  addu       $v0, $a0, $v0
/* C8020 80111C60 00431021 */  addu       $v0, $v0, $v1
/* C8024 80111C64 8C420CEC */  lw         $v0, 0xCEC($v0)
/* C8028 80111C68 24C60001 */  addiu      $a2, $a2, 0x1
/* C802C 80111C6C 08044713 */  j          .Lrace_80111C4C
/* C8030 80111C70 01024021 */   addu      $t0, $t0, $v0
.Lrace_80111C74:
/* C8034 80111C74 01E8102A */  slt        $v0, $t7, $t0
/* C8038 80111C78 54400001 */  bnel       $v0, $zero, .Lrace_80111C80
/* C803C 80111C7C 01007821 */   addu      $t7, $t0, $zero
.Lrace_80111C80:
/* C8040 80111C80 258C0E2C */  addiu      $t4, $t4, 0xE2C
.Lrace_80111C84:
/* C8044 80111C84 080446EF */  j          .Lrace_80111BBC
/* C8048 80111C88 25CE0001 */   addiu     $t6, $t6, 0x1
.Lrace_80111C8C:
/* C804C 80111C8C 03E00008 */  jr         $ra
/* C8050 80111C90 01E01021 */   addu      $v0, $t7, $zero

glabel func_race_80111C94
/* C8054 80111C94 8CA20CE4 */  lw         $v0, 0xCE4($a1)
/* C8058 80111C98 9083029C */  lbu        $v1, 0x29C($a0)
/* C805C 80111C9C 0043102B */  sltu       $v0, $v0, $v1
/* C8060 80111CA0 1040000E */  beqz       $v0, .Lrace_80111CDC
/* C8064 80111CA4 00007021 */   addu      $t6, $zero, $zero
/* C8068 80111CA8 8C820144 */  lw         $v0, 0x144($a0)
/* C806C 80111CAC 10400009 */  beqz       $v0, .Lrace_80111CD4
/* C8070 80111CB0 01C05021 */   addu      $t2, $t6, $zero
.Lrace_80111CB4:
/* C8074 80111CB4 ACC00000 */  sw         $zero, 0x0($a2)
/* C8078 80111CB8 ACC00004 */  sw         $zero, 0x4($a2)
/* C807C 80111CBC ACC00008 */  sw         $zero, 0x8($a2)
/* C8080 80111CC0 8C820144 */  lw         $v0, 0x144($a0)
/* C8084 80111CC4 254A0001 */  addiu      $t2, $t2, 0x1
/* C8088 80111CC8 0142102B */  sltu       $v0, $t2, $v0
/* C808C 80111CCC 1440FFF9 */  bnez       $v0, .Lrace_80111CB4
/* C8090 80111CD0 24C6000C */   addiu     $a2, $a2, 0xC
.Lrace_80111CD4:
/* C8094 80111CD4 03E00008 */  jr         $ra
/* C8098 80111CD8 00000000 */   nop
.Lrace_80111CDC:
/* C809C 80111CDC 00003821 */  addu       $a3, $zero, $zero
/* C80A0 80111CE0 00604021 */  addu       $t0, $v1, $zero
/* C80A4 80111CE4 00A01821 */  addu       $v1, $a1, $zero
.Lrace_80111CE8:
/* C80A8 80111CE8 00E8102B */  sltu       $v0, $a3, $t0
/* C80AC 80111CEC 10400005 */  beqz       $v0, .Lrace_80111D04
/* C80B0 80111CF0 24E70001 */   addiu     $a3, $a3, 0x1
/* C80B4 80111CF4 8C620CEC */  lw         $v0, 0xCEC($v1)
/* C80B8 80111CF8 24630004 */  addiu      $v1, $v1, 0x4
/* C80BC 80111CFC 0804473A */  j          .Lrace_80111CE8
/* C80C0 80111D00 01C27021 */   addu      $t6, $t6, $v0
.Lrace_80111D04:
/* C80C4 80111D04 00005021 */  addu       $t2, $zero, $zero
/* C80C8 80111D08 24180001 */  addiu      $t8, $zero, 0x1
/* C80CC 80111D0C 3C0F7FFF */  lui        $t7, (0x7FFFFFF9 >> 16)
/* C80D0 80111D10 35EFFFF9 */  ori        $t7, $t7, (0x7FFFFFF9 & 0xFFFF)
/* C80D4 80111D14 00C05821 */  addu       $t3, $a2, $zero
/* C80D8 80111D18 01406821 */  addu       $t5, $t2, $zero
.Lrace_80111D1C:
/* C80DC 80111D1C 8C820144 */  lw         $v0, 0x144($a0)
/* C80E0 80111D20 0142102B */  sltu       $v0, $t2, $v0
/* C80E4 80111D24 10400026 */  beqz       $v0, .Lrace_80111DC0
/* C80E8 80111D28 00000000 */   nop
/* C80EC 80111D2C 8C820140 */  lw         $v0, 0x140($a0)
/* C80F0 80111D30 AD780008 */  sw         $t8, 0x8($t3)
/* C80F4 80111D34 004D1021 */  addu       $v0, $v0, $t5
/* C80F8 80111D38 AD620000 */  sw         $v0, 0x0($t3)
/* C80FC 80111D3C 8C820140 */  lw         $v0, 0x140($a0)
/* C8100 80111D40 004D1821 */  addu       $v1, $v0, $t5
/* C8104 80111D44 14650003 */  bne        $v1, $a1, .Lrace_80111D54
/* C8108 80111D48 00000000 */   nop
/* C810C 80111D4C 0804476C */  j          .Lrace_80111DB0
/* C8110 80111D50 AD600004 */   sw        $zero, 0x4($t3)
.Lrace_80111D54:
/* C8114 80111D54 8C620CE4 */  lw         $v0, 0xCE4($v1)
/* C8118 80111D58 9089029C */  lbu        $t1, 0x29C($a0)
/* C811C 80111D5C 0049102B */  sltu       $v0, $v0, $t1
/* C8120 80111D60 10400004 */  beqz       $v0, .Lrace_80111D74
/* C8124 80111D64 00004021 */   addu      $t0, $zero, $zero
/* C8128 80111D68 8C620D00 */  lw         $v0, 0xD00($v1)
/* C812C 80111D6C 0804476B */  j          .Lrace_80111DAC
/* C8130 80111D70 004F1021 */   addu      $v0, $v0, $t7
.Lrace_80111D74:
/* C8134 80111D74 01003821 */  addu       $a3, $t0, $zero
/* C8138 80111D78 01206021 */  addu       $t4, $t1, $zero
/* C813C 80111D7C 01A04821 */  addu       $t1, $t5, $zero
.Lrace_80111D80:
/* C8140 80111D80 00EC102B */  sltu       $v0, $a3, $t4
/* C8144 80111D84 10400008 */  beqz       $v0, .Lrace_80111DA8
/* C8148 80111D88 00071880 */   sll       $v1, $a3, 2
/* C814C 80111D8C 8C820140 */  lw         $v0, 0x140($a0)
/* C8150 80111D90 01221021 */  addu       $v0, $t1, $v0
/* C8154 80111D94 00431021 */  addu       $v0, $v0, $v1
/* C8158 80111D98 8C420CEC */  lw         $v0, 0xCEC($v0)
/* C815C 80111D9C 24E70001 */  addiu      $a3, $a3, 0x1
/* C8160 80111DA0 08044760 */  j          .Lrace_80111D80
/* C8164 80111DA4 01024021 */   addu      $t0, $t0, $v0
.Lrace_80111DA8:
/* C8168 80111DA8 010E1023 */  subu       $v0, $t0, $t6
.Lrace_80111DAC:
/* C816C 80111DAC AD620004 */  sw         $v0, 0x4($t3)
.Lrace_80111DB0:
/* C8170 80111DB0 256B000C */  addiu      $t3, $t3, 0xC
/* C8174 80111DB4 25AD0E2C */  addiu      $t5, $t5, 0xE2C
/* C8178 80111DB8 08044747 */  j          .Lrace_80111D1C
/* C817C 80111DBC 254A0001 */   addiu     $t2, $t2, 0x1
.Lrace_80111DC0:
/* C8180 80111DC0 8C8A0144 */  lw         $t2, 0x144($a0)
/* C8184 80111DC4 2D420006 */  sltiu      $v0, $t2, 0x6
/* C8188 80111DC8 1040FFC2 */  beqz       $v0, .Lrace_80111CD4
/* C818C 80111DCC 000A1040 */   sll       $v0, $t2, 1
/* C8190 80111DD0 004A1021 */  addu       $v0, $v0, $t2
/* C8194 80111DD4 00021080 */  sll        $v0, $v0, 2
/* C8198 80111DD8 00463021 */  addu       $a2, $v0, $a2
.Lrace_80111DDC:
/* C819C 80111DDC ACC00008 */  sw         $zero, 0x8($a2)
/* C81A0 80111DE0 254A0001 */  addiu      $t2, $t2, 0x1
/* C81A4 80111DE4 2D420006 */  sltiu      $v0, $t2, 0x6
/* C81A8 80111DE8 1440FFFC */  bnez       $v0, .Lrace_80111DDC
/* C81AC 80111DEC 24C6000C */   addiu     $a2, $a2, 0xC
/* C81B0 80111DF0 03E00008 */  jr         $ra
/* C81B4 80111DF4 00000000 */   nop

glabel func_race_80111DF8
/* C81B8 80111DF8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C81BC 80111DFC AFB20038 */  sw         $s2, 0x38($sp)
/* C81C0 80111E00 00809021 */  addu       $s2, $a0, $zero
/* C81C4 80111E04 AFB10034 */  sw         $s1, 0x34($sp)
/* C81C8 80111E08 00008821 */  addu       $s1, $zero, $zero
/* C81CC 80111E0C AFB00030 */  sw         $s0, 0x30($sp)
/* C81D0 80111E10 27B00010 */  addiu      $s0, $sp, 0x10
/* C81D4 80111E14 AFBF003C */  sw         $ra, 0x3C($sp)
/* C81D8 80111E18 F7B40040 */  sdc1       $f20, 0x40($sp)
/* C81DC 80111E1C 8CA3005C */  lw         $v1, 0x5C($a1)
/* C81E0 80111E20 02002821 */  addu       $a1, $s0, $zero
/* C81E4 80111E24 8C620024 */  lw         $v0, 0x24($v1)
/* C81E8 80111E28 3C01800D */  lui        $at, %hi(D_race_800CDD50)
/* C81EC 80111E2C C434DD50 */  lwc1       $f20, %lo(D_race_800CDD50)($at)
/* C81F0 80111E30 84440010 */  lh         $a0, 0x10($v0)
/* C81F4 80111E34 8C420014 */  lw         $v0, 0x14($v0)
/* C81F8 80111E38 0040F809 */  jalr       $v0
/* C81FC 80111E3C 00642021 */   addu      $a0, $v1, $a0
/* C8200 80111E40 02202821 */  addu       $a1, $s1, $zero
/* C8204 80111E44 02202021 */  addu       $a0, $s1, $zero
.Lrace_80111E48:
/* C8208 80111E48 2CA20006 */  sltiu      $v0, $a1, 0x6
/* C820C 80111E4C 10400022 */  beqz       $v0, .Lrace_80111ED8
/* C8210 80111E50 02201021 */   addu      $v0, $s1, $zero
/* C8214 80111E54 8E420190 */  lw         $v0, 0x190($s2)
/* C8218 80111E58 00441821 */  addu       $v1, $v0, $a0
/* C821C 80111E5C 8C620004 */  lw         $v0, 0x4($v1)
/* C8220 80111E60 1040001B */  beqz       $v0, .Lrace_80111ED0
/* C8224 80111E64 24840048 */   addiu     $a0, $a0, 0x48
/* C8228 80111E68 8C660024 */  lw         $a2, 0x24($v1)
/* C822C 80111E6C 8C670028 */  lw         $a3, 0x28($v1)
/* C8230 80111E70 8C68002C */  lw         $t0, 0x2C($v1)
/* C8234 80111E74 AFA60020 */  sw         $a2, 0x20($sp)
/* C8238 80111E78 AFA70024 */  sw         $a3, 0x24($sp)
/* C823C 80111E7C AFA80028 */  sw         $t0, 0x28($sp)
/* C8240 80111E80 C7A40020 */  lwc1       $f4, 0x20($sp)
/* C8244 80111E84 C7A00010 */  lwc1       $f0, 0x10($sp)
/* C8248 80111E88 46002101 */  sub.s      $f4, $f4, $f0
/* C824C 80111E8C 46042102 */  mul.s      $f4, $f4, $f4
/* C8250 80111E90 C7A60024 */  lwc1       $f6, 0x24($sp)
/* C8254 80111E94 C6000004 */  lwc1       $f0, 0x4($s0)
/* C8258 80111E98 46003181 */  sub.s      $f6, $f6, $f0
/* C825C 80111E9C 46063182 */  mul.s      $f6, $f6, $f6
/* C8260 80111EA0 C6020008 */  lwc1       $f2, 0x8($s0)
/* C8264 80111EA4 C7A00028 */  lwc1       $f0, 0x28($sp)
/* C8268 80111EA8 46020001 */  sub.s      $f0, $f0, $f2
/* C826C 80111EAC 46000002 */  mul.s      $f0, $f0, $f0
/* C8270 80111EB0 46062100 */  add.s      $f4, $f4, $f6
/* C8274 80111EB4 46002100 */  add.s      $f4, $f4, $f0
/* C8278 80111EB8 4614203C */  c.lt.s     $f4, $f20
/* C827C 80111EBC 00000000 */  nop
/* C8280 80111EC0 45000003 */  bc1f       .Lrace_80111ED0
/* C8284 80111EC4 00000000 */   nop
/* C8288 80111EC8 46002506 */  mov.s      $f20, $f4
/* C828C 80111ECC 00608821 */  addu       $s1, $v1, $zero
.Lrace_80111ED0:
/* C8290 80111ED0 08044792 */  j          .Lrace_80111E48
/* C8294 80111ED4 24A50001 */   addiu     $a1, $a1, 0x1
.Lrace_80111ED8:
/* C8298 80111ED8 8FBF003C */  lw         $ra, 0x3C($sp)
/* C829C 80111EDC 8FB20038 */  lw         $s2, 0x38($sp)
/* C82A0 80111EE0 8FB10034 */  lw         $s1, 0x34($sp)
/* C82A4 80111EE4 8FB00030 */  lw         $s0, 0x30($sp)
/* C82A8 80111EE8 D7B40040 */  ldc1       $f20, 0x40($sp)
/* C82AC 80111EEC 03E00008 */  jr         $ra
/* C82B0 80111EF0 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_80111EF4
/* C82B4 80111EF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C82B8 80111EF8 AFB00010 */  sw         $s0, 0x10($sp)
/* C82BC 80111EFC 00808021 */  addu       $s0, $a0, $zero
/* C82C0 80111F00 AFBF0014 */  sw         $ra, 0x14($sp)
/* C82C4 80111F04 8E05016C */  lw         $a1, 0x16C($s0)
/* C82C8 80111F08 10A00005 */  beqz       $a1, .Lrace_80111F20
/* C82CC 80111F0C 00000000 */   nop
/* C82D0 80111F10 8E04014C */  lw         $a0, 0x14C($s0)
/* C82D4 80111F14 0C046564 */  jal        func_race_80119590
/* C82D8 80111F18 00000000 */   nop
/* C82DC 80111F1C AE00016C */  sw         $zero, 0x16C($s0)
.Lrace_80111F20:
/* C82E0 80111F20 8FBF0014 */  lw         $ra, 0x14($sp)
/* C82E4 80111F24 8FB00010 */  lw         $s0, 0x10($sp)
/* C82E8 80111F28 03E00008 */  jr         $ra
/* C82EC 80111F2C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80111F30
/* C82F0 80111F30 3C028013 */  lui        $v0, %hi(D_race_8013224C)
/* C82F4 80111F34 03E00008 */  jr         $ra
/* C82F8 80111F38 AC44224C */   sw        $a0, %lo(D_race_8013224C)($v0)

glabel func_race_80111F3C
/* C82FC 80111F3C 3C01800D */  lui        $at, %hi(D_race_800CDD54)
/* C8300 80111F40 C420DD54 */  lwc1       $f0, %lo(D_race_800CDD54)($at)
/* C8304 80111F44 3C028013 */  lui        $v0, %hi(D_race_80132C10)
/* C8308 80111F48 03E00008 */  jr         $ra
/* C830C 80111F4C E4402C10 */   swc1      $f0, %lo(D_race_80132C10)($v0)

glabel func_race_80111F50
/* C8310 80111F50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8314 80111F54 AFBF0010 */  sw         $ra, 0x10($sp)
/* C8318 80111F58 0C002513 */  jal        func_8000944C
/* C831C 80111F5C 00000000 */   nop
/* C8320 80111F60 8FBF0010 */  lw         $ra, 0x10($sp)
/* C8324 80111F64 03E00008 */  jr         $ra
/* C8328 80111F68 27BD0018 */   addiu     $sp, $sp, 0x18
