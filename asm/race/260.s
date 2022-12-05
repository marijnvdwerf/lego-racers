.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E56D0
/* 9BA90 800E56D0 00801021 */  addu       $v0, $a0, $zero
/* 9BA94 800E56D4 AC400000 */  sw         $zero, 0x0($v0)
/* 9BA98 800E56D8 AC400004 */  sw         $zero, 0x4($v0)
/* 9BA9C 800E56DC AC400008 */  sw         $zero, 0x8($v0)
/* 9BAA0 800E56E0 AC40000C */  sw         $zero, 0xC($v0)
/* 9BAA4 800E56E4 AC400010 */  sw         $zero, 0x10($v0)
/* 9BAA8 800E56E8 AC400014 */  sw         $zero, 0x14($v0)
/* 9BAAC 800E56EC 03E00008 */  jr         $ra
/* 9BAB0 800E56F0 AC40001C */   sw        $zero, 0x1C($v0)

glabel func_race_800E56F4
/* 9BAB4 800E56F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9BAB8 800E56F8 AFB10014 */  sw         $s1, 0x14($sp)
/* 9BABC 800E56FC 00808821 */  addu       $s1, $a0, $zero
/* 9BAC0 800E5700 AFB00010 */  sw         $s0, 0x10($sp)
/* 9BAC4 800E5704 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9BAC8 800E5708 0C03970C */  jal        func_race_800E5C30
/* 9BACC 800E570C 00A08021 */   addu      $s0, $a1, $zero
/* 9BAD0 800E5710 32100001 */  andi       $s0, $s0, 0x1
/* 9BAD4 800E5714 12000003 */  beqz       $s0, .Lrace_800E5724
/* 9BAD8 800E5718 00000000 */   nop
/* 9BADC 800E571C 0C01FB5C */  jal        func_8007ED70
/* 9BAE0 800E5720 02202021 */   addu      $a0, $s1, $zero
.Lrace_800E5724:
/* 9BAE4 800E5724 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9BAE8 800E5728 8FB10014 */  lw         $s1, 0x14($sp)
/* 9BAEC 800E572C 8FB00010 */  lw         $s0, 0x10($sp)
/* 9BAF0 800E5730 03E00008 */  jr         $ra
/* 9BAF4 800E5734 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E5738
/* 9BAF8 800E5738 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 9BAFC 800E573C AFB40030 */  sw         $s4, 0x30($sp)
/* 9BB00 800E5740 0080A021 */  addu       $s4, $a0, $zero
/* 9BB04 800E5744 AFB50034 */  sw         $s5, 0x34($sp)
/* 9BB08 800E5748 00A0A821 */  addu       $s5, $a1, $zero
/* 9BB0C 800E574C AFB60038 */  sw         $s6, 0x38($sp)
/* 9BB10 800E5750 00C0B021 */  addu       $s6, $a2, $zero
/* 9BB14 800E5754 AFBF003C */  sw         $ra, 0x3C($sp)
/* 9BB18 800E5758 AFB3002C */  sw         $s3, 0x2C($sp)
/* 9BB1C 800E575C AFB20028 */  sw         $s2, 0x28($sp)
/* 9BB20 800E5760 AFB10024 */  sw         $s1, 0x24($sp)
/* 9BB24 800E5764 AFB00020 */  sw         $s0, 0x20($sp)
/* 9BB28 800E5768 F7B60048 */  sdc1       $f22, 0x48($sp)
/* 9BB2C 800E576C F7B40040 */  sdc1       $f20, 0x40($sp)
/* 9BB30 800E5770 8E90000C */  lw         $s0, 0xC($s4)
/* 9BB34 800E5774 4487B000 */  mtc1       $a3, $f22
/* 9BB38 800E5778 001020C0 */  sll        $a0, $s0, 3
/* 9BB3C 800E577C 00902023 */  subu       $a0, $a0, $s0
/* 9BB40 800E5780 00042080 */  sll        $a0, $a0, 2
/* 9BB44 800E5784 00902023 */  subu       $a0, $a0, $s0
/* 9BB48 800E5788 00042080 */  sll        $a0, $a0, 2
/* 9BB4C 800E578C 0C00943C */  jal        func_800250F0
/* 9BB50 800E5790 24840008 */   addiu     $a0, $a0, 0x8
/* 9BB54 800E5794 24420008 */  addiu      $v0, $v0, 0x8
/* 9BB58 800E5798 00409821 */  addu       $s3, $v0, $zero
/* 9BB5C 800E579C 02609021 */  addu       $s2, $s3, $zero
/* 9BB60 800E57A0 2611FFFF */  addiu      $s1, $s0, -0x1
/* 9BB64 800E57A4 06200007 */  bltz       $s1, .Lrace_800E57C4
/* 9BB68 800E57A8 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 9BB6C 800E57AC 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800E57B0:
/* 9BB70 800E57B0 0C039400 */  jal        func_race_800E5000
/* 9BB74 800E57B4 02402021 */   addu      $a0, $s2, $zero
/* 9BB78 800E57B8 2631FFFF */  addiu      $s1, $s1, -0x1
/* 9BB7C 800E57BC 1630FFFC */  bne        $s1, $s0, .Lrace_800E57B0
/* 9BB80 800E57C0 2652006C */   addiu     $s2, $s2, 0x6C
.Lrace_800E57C4:
/* 9BB84 800E57C4 16600007 */  bnez       $s3, .Lrace_800E57E4
/* 9BB88 800E57C8 AE930010 */   sw        $s3, 0x10($s4)
/* 9BB8C 800E57CC 3C04800D */  lui        $a0, %hi(D_race_800CB930)
/* 9BB90 800E57D0 2484B930 */  addiu      $a0, $a0, %lo(D_race_800CB930)
/* 9BB94 800E57D4 00002821 */  addu       $a1, $zero, $zero
/* 9BB98 800E57D8 00A03021 */  addu       $a2, $a1, $zero
/* 9BB9C 800E57DC 0C011ACF */  jal        func_80046B3C
/* 9BBA0 800E57E0 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E57E4:
/* 9BBA4 800E57E4 8E83000C */  lw         $v1, 0xC($s4)
/* 9BBA8 800E57E8 2462FFFF */  addiu      $v0, $v1, -0x1
/* 9BBAC 800E57EC 18400023 */  blez       $v0, .Lrace_800E587C
/* 9BBB0 800E57F0 00008021 */   addu      $s0, $zero, $zero
/* 9BBB4 800E57F4 02C05821 */  addu       $t3, $s6, $zero
/* 9BBB8 800E57F8 02A05021 */  addu       $t2, $s5, $zero
.Lrace_800E57FC:
/* 9BBBC 800E57FC 26070001 */  addiu      $a3, $s0, 0x1
/* 9BBC0 800E5800 00E3102A */  slt        $v0, $a3, $v1
/* 9BBC4 800E5804 10400016 */  beqz       $v0, .Lrace_800E5860
/* 9BBC8 800E5808 00071080 */   sll       $v0, $a3, 2
/* 9BBCC 800E580C 01404821 */  addu       $t1, $t2, $zero
/* 9BBD0 800E5810 01604021 */  addu       $t0, $t3, $zero
/* 9BBD4 800E5814 00563021 */  addu       $a2, $v0, $s6
/* 9BBD8 800E5818 00552821 */  addu       $a1, $v0, $s5
.Lrace_800E581C:
/* 9BBDC 800E581C 8CA40000 */  lw         $a0, 0x0($a1)
/* 9BBE0 800E5820 8D230000 */  lw         $v1, 0x0($t1)
/* 9BBE4 800E5824 0083102A */  slt        $v0, $a0, $v1
/* 9BBE8 800E5828 50400008 */  beql       $v0, $zero, .Lrace_800E584C
/* 9BBEC 800E582C 24C60004 */   addiu     $a2, $a2, 0x4
/* 9BBF0 800E5830 ACA30000 */  sw         $v1, 0x0($a1)
/* 9BBF4 800E5834 AD240000 */  sw         $a0, 0x0($t1)
/* 9BBF8 800E5838 8D020000 */  lw         $v0, 0x0($t0)
/* 9BBFC 800E583C 8CC30000 */  lw         $v1, 0x0($a2)
/* 9BC00 800E5840 ACC20000 */  sw         $v0, 0x0($a2)
/* 9BC04 800E5844 AD030000 */  sw         $v1, 0x0($t0)
/* 9BC08 800E5848 24C60004 */  addiu      $a2, $a2, 0x4
.Lrace_800E584C:
/* 9BC0C 800E584C 8E82000C */  lw         $v0, 0xC($s4)
/* 9BC10 800E5850 24E70001 */  addiu      $a3, $a3, 0x1
/* 9BC14 800E5854 00E2102A */  slt        $v0, $a3, $v0
/* 9BC18 800E5858 1440FFF0 */  bnez       $v0, .Lrace_800E581C
/* 9BC1C 800E585C 24A50004 */   addiu     $a1, $a1, 0x4
.Lrace_800E5860:
/* 9BC20 800E5860 256B0004 */  addiu      $t3, $t3, 0x4
/* 9BC24 800E5864 8E83000C */  lw         $v1, 0xC($s4)
/* 9BC28 800E5868 26100001 */  addiu      $s0, $s0, 0x1
/* 9BC2C 800E586C 2462FFFF */  addiu      $v0, $v1, -0x1
/* 9BC30 800E5870 0202102A */  slt        $v0, $s0, $v0
/* 9BC34 800E5874 1440FFE1 */  bnez       $v0, .Lrace_800E57FC
/* 9BC38 800E5878 254A0004 */   addiu     $t2, $t2, 0x4
.Lrace_800E587C:
/* 9BC3C 800E587C 8E82000C */  lw         $v0, 0xC($s4)
/* 9BC40 800E5880 2450FFFF */  addiu      $s0, $v0, -0x1
/* 9BC44 800E5884 0600001A */  bltz       $s0, .Lrace_800E58F0
/* 9BC48 800E5888 00101080 */   sll       $v0, $s0, 2
/* 9BC4C 800E588C 3C01800D */  lui        $at, %hi(D_race_800CB934)
/* 9BC50 800E5890 C434B934 */  lwc1       $f20, %lo(D_race_800CB934)($at)
/* 9BC54 800E5894 00558821 */  addu       $s1, $v0, $s5
/* 9BC58 800E5898 00569821 */  addu       $s3, $v0, $s6
/* 9BC5C 800E589C 001010C0 */  sll        $v0, $s0, 3
/* 9BC60 800E58A0 00501023 */  subu       $v0, $v0, $s0
/* 9BC64 800E58A4 00021080 */  sll        $v0, $v0, 2
/* 9BC68 800E58A8 00501023 */  subu       $v0, $v0, $s0
/* 9BC6C 800E58AC 00029080 */  sll        $s2, $v0, 2
.Lrace_800E58B0:
/* 9BC70 800E58B0 8E840010 */  lw         $a0, 0x10($s4)
/* 9BC74 800E58B4 8E220000 */  lw         $v0, 0x0($s1)
/* 9BC78 800E58B8 2610FFFF */  addiu      $s0, $s0, -0x1
/* 9BC7C 800E58BC E7B40014 */  swc1       $f20, 0x14($sp)
/* 9BC80 800E58C0 E7B60018 */  swc1       $f22, 0x18($sp)
/* 9BC84 800E58C4 00922021 */  addu       $a0, $a0, $s2
/* 9BC88 800E58C8 AFA20010 */  sw         $v0, 0x10($sp)
/* 9BC8C 800E58CC 8E270000 */  lw         $a3, 0x0($s1)
/* 9BC90 800E58D0 2631FFFC */  addiu      $s1, $s1, -0x4
/* 9BC94 800E58D4 8E660000 */  lw         $a2, 0x0($s3)
/* 9BC98 800E58D8 2673FFFC */  addiu      $s3, $s3, -0x4
/* 9BC9C 800E58DC 8E850000 */  lw         $a1, 0x0($s4)
/* 9BCA0 800E58E0 0C039428 */  jal        func_race_800E50A0
/* 9BCA4 800E58E4 2652FF94 */   addiu     $s2, $s2, -0x6C
/* 9BCA8 800E58E8 0601FFF1 */  bgez       $s0, .Lrace_800E58B0
/* 9BCAC 800E58EC 00000000 */   nop
.Lrace_800E58F0:
/* 9BCB0 800E58F0 8FBF003C */  lw         $ra, 0x3C($sp)
/* 9BCB4 800E58F4 8FB60038 */  lw         $s6, 0x38($sp)
/* 9BCB8 800E58F8 8FB50034 */  lw         $s5, 0x34($sp)
/* 9BCBC 800E58FC 8FB40030 */  lw         $s4, 0x30($sp)
/* 9BCC0 800E5900 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9BCC4 800E5904 8FB20028 */  lw         $s2, 0x28($sp)
/* 9BCC8 800E5908 8FB10024 */  lw         $s1, 0x24($sp)
/* 9BCCC 800E590C 8FB00020 */  lw         $s0, 0x20($sp)
/* 9BCD0 800E5910 D7B60048 */  ldc1       $f22, 0x48($sp)
/* 9BCD4 800E5914 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 9BCD8 800E5918 03E00008 */  jr         $ra
/* 9BCDC 800E591C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800E5920
/* 9BCE0 800E5920 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9BCE4 800E5924 AFB40020 */  sw         $s4, 0x20($sp)
/* 9BCE8 800E5928 0080A021 */  addu       $s4, $a0, $zero
/* 9BCEC 800E592C AFBF0024 */  sw         $ra, 0x24($sp)
/* 9BCF0 800E5930 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9BCF4 800E5934 AFB20018 */  sw         $s2, 0x18($sp)
/* 9BCF8 800E5938 AFB10014 */  sw         $s1, 0x14($sp)
/* 9BCFC 800E593C AFB00010 */  sw         $s0, 0x10($sp)
/* 9BD00 800E5940 8E820008 */  lw         $v0, 0x8($s4)
/* 9BD04 800E5944 00022140 */  sll        $a0, $v0, 5
/* 9BD08 800E5948 00822021 */  addu       $a0, $a0, $v0
/* 9BD0C 800E594C 0C00943C */  jal        func_800250F0
/* 9BD10 800E5950 00042080 */   sll       $a0, $a0, 2
/* 9BD14 800E5954 14400007 */  bnez       $v0, .Lrace_800E5974
/* 9BD18 800E5958 AE820014 */   sw        $v0, 0x14($s4)
/* 9BD1C 800E595C 3C04800D */  lui        $a0, %hi(D_race_800CB930)
/* 9BD20 800E5960 2484B930 */  addiu      $a0, $a0, %lo(D_race_800CB930)
/* 9BD24 800E5964 00002821 */  addu       $a1, $zero, $zero
/* 9BD28 800E5968 00A03021 */  addu       $a2, $a1, $zero
/* 9BD2C 800E596C 0C011ACF */  jal        func_80046B3C
/* 9BD30 800E5970 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800E5974:
/* 9BD34 800E5974 8E820008 */  lw         $v0, 0x8($s4)
/* 9BD38 800E5978 8E910014 */  lw         $s1, 0x14($s4)
/* 9BD3C 800E597C 00021940 */  sll        $v1, $v0, 5
/* 9BD40 800E5980 00621821 */  addu       $v1, $v1, $v0
/* 9BD44 800E5984 00031880 */  sll        $v1, $v1, 2
/* 9BD48 800E5988 02239021 */  addu       $s2, $s1, $v1
/* 9BD4C 800E598C 0232102B */  sltu       $v0, $s1, $s2
/* 9BD50 800E5990 10400011 */  beqz       $v0, .Lrace_800E59D8
/* 9BD54 800E5994 2413FFFF */   addiu     $s3, $zero, -0x1
/* 9BD58 800E5998 26300014 */  addiu      $s0, $s1, 0x14
.Lrace_800E599C:
/* 9BD5C 800E599C AE200000 */  sw         $zero, 0x0($s1)
/* 9BD60 800E59A0 8E830000 */  lw         $v1, 0x0($s4)
/* 9BD64 800E59A4 8C620000 */  lw         $v0, 0x0($v1)
/* 9BD68 800E59A8 26310084 */  addiu      $s1, $s1, 0x84
/* 9BD6C 800E59AC 84440068 */  lh         $a0, 0x68($v0)
/* 9BD70 800E59B0 8C42006C */  lw         $v0, 0x6C($v0)
/* 9BD74 800E59B4 0040F809 */  jalr       $v0
/* 9BD78 800E59B8 00642021 */   addu      $a0, $v1, $a0
/* 9BD7C 800E59BC AE02FFF0 */  sw         $v0, -0x10($s0)
/* 9BD80 800E59C0 AE13FFF8 */  sw         $s3, -0x8($s0)
/* 9BD84 800E59C4 AE13FFFC */  sw         $s3, -0x4($s0)
/* 9BD88 800E59C8 AE000000 */  sw         $zero, 0x0($s0)
/* 9BD8C 800E59CC 0232102B */  sltu       $v0, $s1, $s2
/* 9BD90 800E59D0 1440FFF2 */  bnez       $v0, .Lrace_800E599C
/* 9BD94 800E59D4 26100084 */   addiu     $s0, $s0, 0x84
.Lrace_800E59D8:
/* 9BD98 800E59D8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9BD9C 800E59DC 8FB40020 */  lw         $s4, 0x20($sp)
/* 9BDA0 800E59E0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9BDA4 800E59E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 9BDA8 800E59E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 9BDAC 800E59EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 9BDB0 800E59F0 03E00008 */  jr         $ra
/* 9BDB4 800E59F4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E59F8
/* 9BDB8 800E59F8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9BDBC 800E59FC AFB00010 */  sw         $s0, 0x10($sp)
/* 9BDC0 800E5A00 00808021 */  addu       $s0, $a0, $zero
/* 9BDC4 800E5A04 3C028013 */  lui        $v0, %hi(D_80132130)
/* 9BDC8 800E5A08 8C442130 */  lw         $a0, %lo(D_80132130)($v0)
/* 9BDCC 800E5A0C 8FA2003C */  lw         $v0, 0x3C($sp)
/* 9BDD0 800E5A10 8FA30040 */  lw         $v1, 0x40($sp)
/* 9BDD4 800E5A14 AFB10014 */  sw         $s1, 0x14($sp)
/* 9BDD8 800E5A18 AFBF001C */  sw         $ra, 0x1C($sp)
/* 9BDDC 800E5A1C AFB20018 */  sw         $s2, 0x18($sp)
/* 9BDE0 800E5A20 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 9BDE4 800E5A24 AE050000 */  sw         $a1, 0x0($s0)
/* 9BDE8 800E5A28 AE060008 */  sw         $a2, 0x8($s0)
/* 9BDEC 800E5A2C AE02000C */  sw         $v0, 0xC($s0)
/* 9BDF0 800E5A30 AE030018 */  sw         $v1, 0x18($s0)
/* 9BDF4 800E5A34 8FB20038 */  lw         $s2, 0x38($sp)
/* 9BDF8 800E5A38 C7B40044 */  lwc1       $f20, 0x44($sp)
/* 9BDFC 800E5A3C 0C01FB65 */  jal        func_8007ED94
/* 9BE00 800E5A40 00E08821 */   addu      $s1, $a3, $zero
/* 9BE04 800E5A44 02002021 */  addu       $a0, $s0, $zero
/* 9BE08 800E5A48 02202821 */  addu       $a1, $s1, $zero
/* 9BE0C 800E5A4C 4407A000 */  mfc1       $a3, $f20
/* 9BE10 800E5A50 0C0395CE */  jal        func_race_800E5738
/* 9BE14 800E5A54 02403021 */   addu      $a2, $s2, $zero
/* 9BE18 800E5A58 0C039648 */  jal        func_race_800E5920
/* 9BE1C 800E5A5C 02002021 */   addu      $a0, $s0, $zero
/* 9BE20 800E5A60 0C01FB72 */  jal        func_8007EDC8
/* 9BE24 800E5A64 00000000 */   nop
/* 9BE28 800E5A68 8FBF001C */  lw         $ra, 0x1C($sp)
/* 9BE2C 800E5A6C 8FB20018 */  lw         $s2, 0x18($sp)
/* 9BE30 800E5A70 8FB10014 */  lw         $s1, 0x14($sp)
/* 9BE34 800E5A74 8FB00010 */  lw         $s0, 0x10($sp)
/* 9BE38 800E5A78 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 9BE3C 800E5A7C 03E00008 */  jr         $ra
/* 9BE40 800E5A80 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E5A84
/* 9BE44 800E5A84 00051140 */  sll        $v0, $a1, 5
/* 9BE48 800E5A88 00451021 */  addu       $v0, $v0, $a1
/* 9BE4C 800E5A8C 8C830014 */  lw         $v1, 0x14($a0)
/* 9BE50 800E5A90 00021080 */  sll        $v0, $v0, 2
/* 9BE54 800E5A94 00431021 */  addu       $v0, $v0, $v1
/* 9BE58 800E5A98 03E00008 */  jr         $ra
/* 9BE5C 800E5A9C AC460000 */   sw        $a2, 0x0($v0)

glabel func_race_800E5AA0
/* 9BE60 800E5AA0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 9BE64 800E5AA4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 9BE68 800E5AA8 0080A821 */  addu       $s5, $a0, $zero
/* 9BE6C 800E5AAC 3C028013 */  lui        $v0, %hi(D_80132130)
/* 9BE70 800E5AB0 8C442130 */  lw         $a0, %lo(D_80132130)($v0)
/* 9BE74 800E5AB4 8FA20058 */  lw         $v0, 0x58($sp)
/* 9BE78 800E5AB8 8FA3005C */  lw         $v1, 0x5C($sp)
/* 9BE7C 800E5ABC AFB1001C */  sw         $s1, 0x1C($sp)
/* 9BE80 800E5AC0 00A08821 */  addu       $s1, $a1, $zero
/* 9BE84 800E5AC4 AFB30024 */  sw         $s3, 0x24($sp)
/* 9BE88 800E5AC8 00C09821 */  addu       $s3, $a2, $zero
/* 9BE8C 800E5ACC AFB40028 */  sw         $s4, 0x28($sp)
/* 9BE90 800E5AD0 AFBF0030 */  sw         $ra, 0x30($sp)
/* 9BE94 800E5AD4 AFB20020 */  sw         $s2, 0x20($sp)
/* 9BE98 800E5AD8 AFB00018 */  sw         $s0, 0x18($sp)
/* 9BE9C 800E5ADC F7B40038 */  sdc1       $f20, 0x38($sp)
/* 9BEA0 800E5AE0 AEB10000 */  sw         $s1, 0x0($s5)
/* 9BEA4 800E5AE4 AEA2000C */  sw         $v0, 0xC($s5)
/* 9BEA8 800E5AE8 AEA30018 */  sw         $v1, 0x18($s5)
/* 9BEAC 800E5AEC 8FB00050 */  lw         $s0, 0x50($sp)
/* 9BEB0 800E5AF0 8FB20054 */  lw         $s2, 0x54($sp)
/* 9BEB4 800E5AF4 C7B40060 */  lwc1       $f20, 0x60($sp)
/* 9BEB8 800E5AF8 0C01FB65 */  jal        func_8007ED94
/* 9BEBC 800E5AFC 00E0A021 */   addu      $s4, $a3, $zero
/* 9BEC0 800E5B00 02A02021 */  addu       $a0, $s5, $zero
/* 9BEC4 800E5B04 02002821 */  addu       $a1, $s0, $zero
/* 9BEC8 800E5B08 4407A000 */  mfc1       $a3, $f20
/* 9BECC 800E5B0C 0C0395CE */  jal        func_race_800E5738
/* 9BED0 800E5B10 02403021 */   addu      $a2, $s2, $zero
/* 9BED4 800E5B14 8E220000 */  lw         $v0, 0x0($s1)
/* 9BED8 800E5B18 00009021 */  addu       $s2, $zero, $zero
/* 9BEDC 800E5B1C 84440018 */  lh         $a0, 0x18($v0)
/* 9BEE0 800E5B20 8C42001C */  lw         $v0, 0x1C($v0)
/* 9BEE4 800E5B24 0040F809 */  jalr       $v0
/* 9BEE8 800E5B28 02242021 */   addu      $a0, $s1, $a0
/* 9BEEC 800E5B2C 8EA30010 */  lw         $v1, 0x10($s5)
/* 9BEF0 800E5B30 02603021 */  addu       $a2, $s3, $zero
/* 9BEF4 800E5B34 AEA20004 */  sw         $v0, 0x4($s5)
/* 9BEF8 800E5B38 8C4800EC */  lw         $t0, 0xEC($v0)
/* 9BEFC 800E5B3C 3C01800D */  lui        $at, %hi(D_race_800CB938)
/* 9BF00 800E5B40 C420B938 */  lwc1       $f0, %lo(D_race_800CB938)($at)
/* 9BF04 800E5B44 8C630054 */  lw         $v1, 0x54($v1)
/* 9BF08 800E5B48 85040030 */  lh         $a0, 0x30($t0)
/* 9BF0C 800E5B4C 8C650000 */  lw         $a1, 0x0($v1)
/* 9BF10 800E5B50 00442021 */  addu       $a0, $v0, $a0
/* 9BF14 800E5B54 E7A00010 */  swc1       $f0, 0x10($sp)
/* 9BF18 800E5B58 8D020034 */  lw         $v0, 0x34($t0)
/* 9BF1C 800E5B5C 0040F809 */  jalr       $v0
/* 9BF20 800E5B60 02803821 */   addu      $a3, $s4, $zero
/* 9BF24 800E5B64 8EA30004 */  lw         $v1, 0x4($s5)
/* 9BF28 800E5B68 02408021 */  addu       $s0, $s2, $zero
/* 9BF2C 800E5B6C 8C620048 */  lw         $v0, 0x48($v1)
/* 9BF30 800E5B70 8C630050 */  lw         $v1, 0x50($v1)
/* 9BF34 800E5B74 02A02021 */  addu       $a0, $s5, $zero
/* 9BF38 800E5B78 00431021 */  addu       $v0, $v0, $v1
/* 9BF3C 800E5B7C 0C039648 */  jal        func_race_800E5920
/* 9BF40 800E5B80 AEA20008 */   sw        $v0, 0x8($s5)
/* 9BF44 800E5B84 8EA20004 */  lw         $v0, 0x4($s5)
/* 9BF48 800E5B88 02408821 */  addu       $s1, $s2, $zero
/* 9BF4C 800E5B8C 8C530048 */  lw         $s3, 0x48($v0)
.Lrace_800E5B90:
/* 9BF50 800E5B90 0213102A */  slt        $v0, $s0, $s3
/* 9BF54 800E5B94 1040000A */  beqz       $v0, .Lrace_800E5BC0
/* 9BF58 800E5B98 02402821 */   addu      $a1, $s2, $zero
/* 9BF5C 800E5B9C 26520001 */  addiu      $s2, $s2, 0x1
/* 9BF60 800E5BA0 8EA20004 */  lw         $v0, 0x4($s5)
/* 9BF64 800E5BA4 02A02021 */  addu       $a0, $s5, $zero
/* 9BF68 800E5BA8 8C460098 */  lw         $a2, 0x98($v0)
/* 9BF6C 800E5BAC 26100001 */  addiu      $s0, $s0, 0x1
/* 9BF70 800E5BB0 0C0396A1 */  jal        func_race_800E5A84
/* 9BF74 800E5BB4 00D13021 */   addu      $a2, $a2, $s1
/* 9BF78 800E5BB8 080396E4 */  j          .Lrace_800E5B90
/* 9BF7C 800E5BBC 26310090 */   addiu     $s1, $s1, 0x90
.Lrace_800E5BC0:
/* 9BF80 800E5BC0 00008021 */  addu       $s0, $zero, $zero
/* 9BF84 800E5BC4 8EA20004 */  lw         $v0, 0x4($s5)
/* 9BF88 800E5BC8 02008821 */  addu       $s1, $s0, $zero
/* 9BF8C 800E5BCC 8C530050 */  lw         $s3, 0x50($v0)
.Lrace_800E5BD0:
/* 9BF90 800E5BD0 0213102A */  slt        $v0, $s0, $s3
/* 9BF94 800E5BD4 1040000A */  beqz       $v0, .Lrace_800E5C00
/* 9BF98 800E5BD8 02402821 */   addu      $a1, $s2, $zero
/* 9BF9C 800E5BDC 26520001 */  addiu      $s2, $s2, 0x1
/* 9BFA0 800E5BE0 8EA20004 */  lw         $v0, 0x4($s5)
/* 9BFA4 800E5BE4 02A02021 */  addu       $a0, $s5, $zero
/* 9BFA8 800E5BE8 8C46009C */  lw         $a2, 0x9C($v0)
/* 9BFAC 800E5BEC 26100001 */  addiu      $s0, $s0, 0x1
/* 9BFB0 800E5BF0 0C0396A1 */  jal        func_race_800E5A84
/* 9BFB4 800E5BF4 00D13021 */   addu      $a2, $a2, $s1
/* 9BFB8 800E5BF8 080396F4 */  j          .Lrace_800E5BD0
/* 9BFBC 800E5BFC 263100F4 */   addiu     $s1, $s1, 0xF4
.Lrace_800E5C00:
/* 9BFC0 800E5C00 0C01FB72 */  jal        func_8007EDC8
/* 9BFC4 800E5C04 00000000 */   nop
/* 9BFC8 800E5C08 8FBF0030 */  lw         $ra, 0x30($sp)
/* 9BFCC 800E5C0C 8FB5002C */  lw         $s5, 0x2C($sp)
/* 9BFD0 800E5C10 8FB40028 */  lw         $s4, 0x28($sp)
/* 9BFD4 800E5C14 8FB30024 */  lw         $s3, 0x24($sp)
/* 9BFD8 800E5C18 8FB20020 */  lw         $s2, 0x20($sp)
/* 9BFDC 800E5C1C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 9BFE0 800E5C20 8FB00018 */  lw         $s0, 0x18($sp)
/* 9BFE4 800E5C24 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 9BFE8 800E5C28 03E00008 */  jr         $ra
/* 9BFEC 800E5C2C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800E5C30
/* 9BFF0 800E5C30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9BFF4 800E5C34 AFB20018 */  sw         $s2, 0x18($sp)
/* 9BFF8 800E5C38 00809021 */  addu       $s2, $a0, $zero
/* 9BFFC 800E5C3C AFBF001C */  sw         $ra, 0x1C($sp)
/* 9C000 800E5C40 AFB10014 */  sw         $s1, 0x14($sp)
/* 9C004 800E5C44 AFB00010 */  sw         $s0, 0x10($sp)
/* 9C008 800E5C48 8E430004 */  lw         $v1, 0x4($s2)
/* 9C00C 800E5C4C 10600010 */  beqz       $v1, .Lrace_800E5C90
/* 9C010 800E5C50 00000000 */   nop
/* 9C014 800E5C54 8C6200EC */  lw         $v0, 0xEC($v1)
/* 9C018 800E5C58 84440038 */  lh         $a0, 0x38($v0)
/* 9C01C 800E5C5C 8C42003C */  lw         $v0, 0x3C($v0)
/* 9C020 800E5C60 0040F809 */  jalr       $v0
/* 9C024 800E5C64 00642021 */   addu      $a0, $v1, $a0
/* 9C028 800E5C68 8E430000 */  lw         $v1, 0x0($s2)
/* 9C02C 800E5C6C 50600008 */  beql       $v1, $zero, .Lrace_800E5C90
/* 9C030 800E5C70 AE400004 */   sw        $zero, 0x4($s2)
/* 9C034 800E5C74 8C620000 */  lw         $v0, 0x0($v1)
/* 9C038 800E5C78 8E450004 */  lw         $a1, 0x4($s2)
/* 9C03C 800E5C7C 84440080 */  lh         $a0, 0x80($v0)
/* 9C040 800E5C80 8C420084 */  lw         $v0, 0x84($v0)
/* 9C044 800E5C84 0040F809 */  jalr       $v0
/* 9C048 800E5C88 00642021 */   addu      $a0, $v1, $a0
/* 9C04C 800E5C8C AE400004 */  sw         $zero, 0x4($s2)
.Lrace_800E5C90:
/* 9C050 800E5C90 8E420014 */  lw         $v0, 0x14($s2)
/* 9C054 800E5C94 1040001E */  beqz       $v0, .Lrace_800E5D10
/* 9C058 800E5C98 00000000 */   nop
/* 9C05C 800E5C9C 8E420000 */  lw         $v0, 0x0($s2)
/* 9C060 800E5CA0 10400015 */  beqz       $v0, .Lrace_800E5CF8
/* 9C064 800E5CA4 00000000 */   nop
/* 9C068 800E5CA8 8E420008 */  lw         $v0, 0x8($s2)
/* 9C06C 800E5CAC 18400012 */  blez       $v0, .Lrace_800E5CF8
/* 9C070 800E5CB0 00008021 */   addu      $s0, $zero, $zero
/* 9C074 800E5CB4 02008821 */  addu       $s1, $s0, $zero
.Lrace_800E5CB8:
/* 9C078 800E5CB8 8E420014 */  lw         $v0, 0x14($s2)
/* 9C07C 800E5CBC 02221021 */  addu       $v0, $s1, $v0
/* 9C080 800E5CC0 8C450004 */  lw         $a1, 0x4($v0)
/* 9C084 800E5CC4 10A00007 */  beqz       $a1, .Lrace_800E5CE4
/* 9C088 800E5CC8 00000000 */   nop
/* 9C08C 800E5CCC 8E430000 */  lw         $v1, 0x0($s2)
/* 9C090 800E5CD0 8C620000 */  lw         $v0, 0x0($v1)
/* 9C094 800E5CD4 844400D0 */  lh         $a0, 0xD0($v0)
/* 9C098 800E5CD8 8C4200D4 */  lw         $v0, 0xD4($v0)
/* 9C09C 800E5CDC 0040F809 */  jalr       $v0
/* 9C0A0 800E5CE0 00642021 */   addu      $a0, $v1, $a0
.Lrace_800E5CE4:
/* 9C0A4 800E5CE4 8E420008 */  lw         $v0, 0x8($s2)
/* 9C0A8 800E5CE8 26100001 */  addiu      $s0, $s0, 0x1
/* 9C0AC 800E5CEC 0202102A */  slt        $v0, $s0, $v0
/* 9C0B0 800E5CF0 1440FFF1 */  bnez       $v0, .Lrace_800E5CB8
/* 9C0B4 800E5CF4 26310084 */   addiu     $s1, $s1, 0x84
.Lrace_800E5CF8:
/* 9C0B8 800E5CF8 8E440014 */  lw         $a0, 0x14($s2)
/* 9C0BC 800E5CFC 50800004 */  beql       $a0, $zero, .Lrace_800E5D10
/* 9C0C0 800E5D00 AE400014 */   sw        $zero, 0x14($s2)
/* 9C0C4 800E5D04 0C009444 */  jal        func_80025110
/* 9C0C8 800E5D08 00000000 */   nop
/* 9C0CC 800E5D0C AE400014 */  sw         $zero, 0x14($s2)
.Lrace_800E5D10:
/* 9C0D0 800E5D10 8E440010 */  lw         $a0, 0x10($s2)
/* 9C0D4 800E5D14 50800015 */  beql       $a0, $zero, .Lrace_800E5D6C
/* 9C0D8 800E5D18 AE400000 */   sw        $zero, 0x0($s2)
/* 9C0DC 800E5D1C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 9C0E0 800E5D20 000310C0 */  sll        $v0, $v1, 3
/* 9C0E4 800E5D24 00431023 */  subu       $v0, $v0, $v1
/* 9C0E8 800E5D28 00021080 */  sll        $v0, $v0, 2
/* 9C0EC 800E5D2C 00431023 */  subu       $v0, $v0, $v1
/* 9C0F0 800E5D30 00021080 */  sll        $v0, $v0, 2
/* 9C0F4 800E5D34 00828021 */  addu       $s0, $a0, $v0
/* 9C0F8 800E5D38 10900008 */  beq        $a0, $s0, .Lrace_800E5D5C
/* 9C0FC 800E5D3C 2610FF94 */   addiu     $s0, $s0, -0x6C
.Lrace_800E5D40:
/* 9C100 800E5D40 02002021 */  addu       $a0, $s0, $zero
/* 9C104 800E5D44 0C039411 */  jal        func_race_800E5044
/* 9C108 800E5D48 24050002 */   addiu     $a1, $zero, 0x2
/* 9C10C 800E5D4C 8E420010 */  lw         $v0, 0x10($s2)
/* 9C110 800E5D50 1450FFFB */  bne        $v0, $s0, .Lrace_800E5D40
/* 9C114 800E5D54 2610FF94 */   addiu     $s0, $s0, -0x6C
/* 9C118 800E5D58 8E440010 */  lw         $a0, 0x10($s2)
.Lrace_800E5D5C:
/* 9C11C 800E5D5C 0C009444 */  jal        func_80025110
/* 9C120 800E5D60 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 9C124 800E5D64 AE400010 */  sw         $zero, 0x10($s2)
/* 9C128 800E5D68 AE400000 */  sw         $zero, 0x0($s2)
.Lrace_800E5D6C:
/* 9C12C 800E5D6C AE400008 */  sw         $zero, 0x8($s2)
/* 9C130 800E5D70 AE40000C */  sw         $zero, 0xC($s2)
/* 9C134 800E5D74 8FBF001C */  lw         $ra, 0x1C($sp)
/* 9C138 800E5D78 8FB20018 */  lw         $s2, 0x18($sp)
/* 9C13C 800E5D7C 8FB10014 */  lw         $s1, 0x14($sp)
/* 9C140 800E5D80 8FB00010 */  lw         $s0, 0x10($sp)
/* 9C144 800E5D84 03E00008 */  jr         $ra
/* 9C148 800E5D88 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E5D8C
/* 9C14C 800E5D8C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 9C150 800E5D90 AFB20070 */  sw         $s2, 0x70($sp)
/* 9C154 800E5D94 00809021 */  addu       $s2, $a0, $zero
/* 9C158 800E5D98 AFB1006C */  sw         $s1, 0x6C($sp)
/* 9C15C 800E5D9C 00A08821 */  addu       $s1, $a1, $zero
/* 9C160 800E5DA0 AFBF0074 */  sw         $ra, 0x74($sp)
/* 9C164 800E5DA4 AFB00068 */  sw         $s0, 0x68($sp)
/* 9C168 800E5DA8 F7B40078 */  sdc1       $f20, 0x78($sp)
/* 9C16C 800E5DAC 8E230000 */  lw         $v1, 0x0($s1)
/* 9C170 800E5DB0 26450020 */  addiu      $a1, $s2, 0x20
/* 9C174 800E5DB4 8C620024 */  lw         $v0, 0x24($v1)
/* 9C178 800E5DB8 27A60050 */  addiu      $a2, $sp, 0x50
/* 9C17C 800E5DBC 84440030 */  lh         $a0, 0x30($v0)
/* 9C180 800E5DC0 8C420034 */  lw         $v0, 0x34($v0)
/* 9C184 800E5DC4 0040F809 */  jalr       $v0
/* 9C188 800E5DC8 00642021 */   addu      $a0, $v1, $a0
/* 9C18C 800E5DCC 8FA20050 */  lw         $v0, 0x50($sp)
/* 9C190 800E5DD0 1040009B */  beqz       $v0, .Lrace_800E6040
/* 9C194 800E5DD4 AE220008 */   sw        $v0, 0x8($s1)
/* 9C198 800E5DD8 8E240000 */  lw         $a0, 0x0($s1)
/* 9C19C 800E5DDC 0C0165A4 */  jal        func_80059690
/* 9C1A0 800E5DE0 27A50010 */   addiu     $a1, $sp, 0x10
/* 9C1A4 800E5DE4 8E240000 */  lw         $a0, 0x0($s1)
/* 9C1A8 800E5DE8 0C0165C5 */  jal        func_80059714
/* 9C1AC 800E5DEC 2630004C */   addiu     $s0, $s1, 0x4C
/* 9C1B0 800E5DF0 8E42001C */  lw         $v0, 0x1C($s2)
/* 9C1B4 800E5DF4 8C420000 */  lw         $v0, 0x0($v0)
/* 9C1B8 800E5DF8 8C43000C */  lw         $v1, 0xC($v0)
/* 9C1BC 800E5DFC 84640088 */  lh         $a0, 0x88($v1)
/* 9C1C0 800E5E00 27A50020 */  addiu      $a1, $sp, 0x20
/* 9C1C4 800E5E04 00442021 */  addu       $a0, $v0, $a0
/* 9C1C8 800E5E08 8C62008C */  lw         $v0, 0x8C($v1)
/* 9C1CC 800E5E0C 0040F809 */  jalr       $v0
/* 9C1D0 800E5E10 46000506 */   mov.s     $f20, $f0
/* 9C1D4 800E5E14 27A40030 */  addiu      $a0, $sp, 0x30
/* 9C1D8 800E5E18 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 9C1DC 800E5E1C C7A00010 */  lwc1       $f0, 0x10($sp)
/* 9C1E0 800E5E20 C7A40024 */  lwc1       $f4, 0x24($sp)
/* 9C1E4 800E5E24 46003181 */  sub.s      $f6, $f6, $f0
/* 9C1E8 800E5E28 C7A00014 */  lwc1       $f0, 0x14($sp)
/* 9C1EC 800E5E2C C7A20018 */  lwc1       $f2, 0x18($sp)
/* 9C1F0 800E5E30 46002101 */  sub.s      $f4, $f4, $f0
/* 9C1F4 800E5E34 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 9C1F8 800E5E38 00802821 */  addu       $a1, $a0, $zero
/* 9C1FC 800E5E3C 46020001 */  sub.s      $f0, $f0, $f2
/* 9C200 800E5E40 E7A60030 */  swc1       $f6, 0x30($sp)
/* 9C204 800E5E44 E7A40034 */  swc1       $f4, 0x34($sp)
/* 9C208 800E5E48 0C000F26 */  jal        func_80003C98
/* 9C20C 800E5E4C E7A00038 */   swc1      $f0, 0x38($sp)
/* 9C210 800E5E50 8E42001C */  lw         $v0, 0x1C($s2)
/* 9C214 800E5E54 8C430000 */  lw         $v1, 0x0($v0)
/* 9C218 800E5E58 8C62000C */  lw         $v0, 0xC($v1)
/* 9C21C 800E5E5C 02002821 */  addu       $a1, $s0, $zero
/* 9C220 800E5E60 84440070 */  lh         $a0, 0x70($v0)
/* 9C224 800E5E64 8C420074 */  lw         $v0, 0x74($v0)
/* 9C228 800E5E68 0040F809 */  jalr       $v0
/* 9C22C 800E5E6C 00642021 */   addu      $a0, $v1, $a0
/* 9C230 800E5E70 C620004C */  lwc1       $f0, 0x4C($s1)
/* 9C234 800E5E74 46000007 */  neg.s      $f0, $f0
/* 9C238 800E5E78 E620004C */  swc1       $f0, 0x4C($s1)
/* 9C23C 800E5E7C C6000004 */  lwc1       $f0, 0x4($s0)
/* 9C240 800E5E80 C6020008 */  lwc1       $f2, 0x8($s0)
/* 9C244 800E5E84 46000007 */  neg.s      $f0, $f0
/* 9C248 800E5E88 46001087 */  neg.s      $f2, $f2
/* 9C24C 800E5E8C E6000004 */  swc1       $f0, 0x4($s0)
/* 9C250 800E5E90 E6020008 */  swc1       $f2, 0x8($s0)
/* 9C254 800E5E94 8FA70030 */  lw         $a3, 0x30($sp)
/* 9C258 800E5E98 8FA80034 */  lw         $t0, 0x34($sp)
/* 9C25C 800E5E9C 8FA90038 */  lw         $t1, 0x38($sp)
/* 9C260 800E5EA0 AE27001C */  sw         $a3, 0x1C($s1)
/* 9C264 800E5EA4 AE280020 */  sw         $t0, 0x20($s1)
/* 9C268 800E5EA8 AE290024 */  sw         $t1, 0x24($s1)
/* 9C26C 800E5EAC C7A00030 */  lwc1       $f0, 0x30($sp)
/* 9C270 800E5EB0 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 9C274 800E5EB4 46000007 */  neg.s      $f0, $f0
/* 9C278 800E5EB8 E7A00040 */  swc1       $f0, 0x40($sp)
/* 9C27C 800E5EBC C7A00034 */  lwc1       $f0, 0x34($sp)
/* 9C280 800E5EC0 46001087 */  neg.s      $f2, $f2
/* 9C284 800E5EC4 E7A20048 */  swc1       $f2, 0x48($sp)
/* 9C288 800E5EC8 46000007 */  neg.s      $f0, $f0
/* 9C28C 800E5ECC E7A00044 */  swc1       $f0, 0x44($sp)
/* 9C290 800E5ED0 8E230000 */  lw         $v1, 0x0($s1)
/* 9C294 800E5ED4 27A50040 */  addiu      $a1, $sp, 0x40
/* 9C298 800E5ED8 8C620024 */  lw         $v0, 0x24($v1)
/* 9C29C 800E5EDC 26260034 */  addiu      $a2, $s1, 0x34
/* 9C2A0 800E5EE0 84440078 */  lh         $a0, 0x78($v0)
/* 9C2A4 800E5EE4 8C42007C */  lw         $v0, 0x7C($v0)
/* 9C2A8 800E5EE8 0040F809 */  jalr       $v0
/* 9C2AC 800E5EEC 00642021 */   addu      $a0, $v1, $a0
/* 9C2B0 800E5EF0 C7A40030 */  lwc1       $f4, 0x30($sp)
/* 9C2B4 800E5EF4 46142102 */  mul.s      $f4, $f4, $f20
/* 9C2B8 800E5EF8 C7A60034 */  lwc1       $f6, 0x34($sp)
/* 9C2BC 800E5EFC 46143182 */  mul.s      $f6, $f6, $f20
/* 9C2C0 800E5F00 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 9C2C4 800E5F04 46141082 */  mul.s      $f2, $f2, $f20
/* 9C2C8 800E5F08 C7A00010 */  lwc1       $f0, 0x10($sp)
/* 9C2CC 800E5F0C 27A20010 */  addiu      $v0, $sp, 0x10
/* 9C2D0 800E5F10 46040000 */  add.s      $f0, $f0, $f4
/* 9C2D4 800E5F14 E7A40058 */  swc1       $f4, 0x58($sp)
/* 9C2D8 800E5F18 E7A6005C */  swc1       $f6, 0x5C($sp)
/* 9C2DC 800E5F1C E7A20060 */  swc1       $f2, 0x60($sp)
/* 9C2E0 800E5F20 E6200058 */  swc1       $f0, 0x58($s1)
/* 9C2E4 800E5F24 C4400004 */  lwc1       $f0, 0x4($v0)
/* 9C2E8 800E5F28 C7A2005C */  lwc1       $f2, 0x5C($sp)
/* 9C2EC 800E5F2C 46020000 */  add.s      $f0, $f0, $f2
/* 9C2F0 800E5F30 26250058 */  addiu      $a1, $s1, 0x58
/* 9C2F4 800E5F34 E4A00004 */  swc1       $f0, 0x4($a1)
/* 9C2F8 800E5F38 C4400008 */  lwc1       $f0, 0x8($v0)
/* 9C2FC 800E5F3C C7A20060 */  lwc1       $f2, 0x60($sp)
/* 9C300 800E5F40 46020000 */  add.s      $f0, $f0, $f2
/* 9C304 800E5F44 E4A00008 */  swc1       $f0, 0x8($a1)
/* 9C308 800E5F48 8E43001C */  lw         $v1, 0x1C($s2)
/* 9C30C 800E5F4C 8C62011C */  lw         $v0, 0x11C($v1)
/* 9C310 800E5F50 26260064 */  addiu      $a2, $s1, 0x64
/* 9C314 800E5F54 84440040 */  lh         $a0, 0x40($v0)
/* 9C318 800E5F58 8C420044 */  lw         $v0, 0x44($v0)
/* 9C31C 800E5F5C 0040F809 */  jalr       $v0
/* 9C320 800E5F60 00642021 */   addu      $a0, $v1, $a0
/* 9C324 800E5F64 8E42001C */  lw         $v0, 0x1C($s2)
/* 9C328 800E5F68 C6200064 */  lwc1       $f0, 0x64($s1)
/* 9C32C 800E5F6C C446000C */  lwc1       $f6, 0xC($v0)
/* 9C330 800E5F70 46060002 */  mul.s      $f0, $f0, $f6
/* 9C334 800E5F74 4614A500 */  add.s      $f20, $f20, $f20
/* 9C338 800E5F78 4606A502 */  mul.s      $f20, $f20, $f6
/* 9C33C 800E5F7C C624006C */  lwc1       $f4, 0x6C($s1)
/* 9C340 800E5F80 3C01800D */  lui        $at, %hi(D_race_800CB93C)
/* 9C344 800E5F84 C422B93C */  lwc1       $f2, %lo(D_race_800CB93C)($at)
/* 9C348 800E5F88 46041083 */  div.s      $f2, $f2, $f4
/* 9C34C 800E5F8C 46020002 */  mul.s      $f0, $f0, $f2
/* 9C350 800E5F90 00000000 */  nop
/* 9C354 800E5F94 4602A502 */  mul.s      $f20, $f20, $f2
/* 9C358 800E5F98 E6200070 */  swc1       $f0, 0x70($s1)
/* 9C35C 800E5F9C 8E42001C */  lw         $v0, 0x1C($s2)
/* 9C360 800E5FA0 C6200068 */  lwc1       $f0, 0x68($s1)
/* 9C364 800E5FA4 C444000C */  lwc1       $f4, 0xC($v0)
/* 9C368 800E5FA8 46040002 */  mul.s      $f0, $f0, $f4
/* 9C36C 800E5FAC 00000000 */  nop
/* 9C370 800E5FB0 46020002 */  mul.s      $f0, $f0, $f2
/* 9C374 800E5FB4 E6340078 */  swc1       $f20, 0x78($s1)
/* 9C378 800E5FB8 E6200074 */  swc1       $f0, 0x74($s1)
/* 9C37C 800E5FBC 8E42001C */  lw         $v0, 0x1C($s2)
/* 9C380 800E5FC0 3C01800D */  lui        $at, %hi(D_race_800CB940)
/* 9C384 800E5FC4 C422B940 */  lwc1       $f2, %lo(D_race_800CB940)($at)
/* 9C388 800E5FC8 C4400014 */  lwc1       $f0, 0x14($v0)
/* 9C38C 800E5FCC 46020002 */  mul.s      $f0, $f0, $f2
/* 9C390 800E5FD0 4600A03C */  c.lt.s     $f20, $f0
/* 9C394 800E5FD4 00000000 */  nop
/* 9C398 800E5FD8 45000005 */  bc1f       .Lrace_800E5FF0
/* 9C39C 800E5FDC 00001821 */   addu      $v1, $zero, $zero
/* 9C3A0 800E5FE0 08039810 */  j          .Lrace_800E6040
/* 9C3A4 800E5FE4 AE200008 */   sw        $zero, 0x8($s1)
.Lrace_800E5FE8:
/* 9C3A8 800E5FE8 08039810 */  j          .Lrace_800E6040
/* 9C3AC 800E5FEC AE230080 */   sw        $v1, 0x80($s1)
.Lrace_800E5FF0:
/* 9C3B0 800E5FF0 C64000EC */  lwc1       $f0, 0xEC($s2)
/* 9C3B4 800E5FF4 4600A003 */  div.s      $f0, $f20, $f0
/* 9C3B8 800E5FF8 4600A002 */  mul.s      $f0, $f20, $f0
/* 9C3BC 800E5FFC 00602021 */  addu       $a0, $v1, $zero
/* 9C3C0 800E6000 E620007C */  swc1       $f0, 0x7C($s1)
/* 9C3C4 800E6004 8E45000C */  lw         $a1, 0xC($s2)
.Lrace_800E6008:
/* 9C3C8 800E6008 0065102A */  slt        $v0, $v1, $a1
/* 9C3CC 800E600C 1040000B */  beqz       $v0, .Lrace_800E603C
/* 9C3D0 800E6010 2402FFFF */   addiu     $v0, $zero, -0x1
/* 9C3D4 800E6014 8E420010 */  lw         $v0, 0x10($s2)
/* 9C3D8 800E6018 C620007C */  lwc1       $f0, 0x7C($s1)
/* 9C3DC 800E601C 00821021 */  addu       $v0, $a0, $v0
/* 9C3E0 800E6020 C4420068 */  lwc1       $f2, 0x68($v0)
/* 9C3E4 800E6024 4602003C */  c.lt.s     $f0, $f2
/* 9C3E8 800E6028 00000000 */  nop
/* 9C3EC 800E602C 4501FFEE */  bc1t       .Lrace_800E5FE8
/* 9C3F0 800E6030 2484006C */   addiu     $a0, $a0, 0x6C
/* 9C3F4 800E6034 08039802 */  j          .Lrace_800E6008
/* 9C3F8 800E6038 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800E603C:
/* 9C3FC 800E603C AE220080 */  sw         $v0, 0x80($s1)
.Lrace_800E6040:
/* 9C400 800E6040 8FBF0074 */  lw         $ra, 0x74($sp)
/* 9C404 800E6044 8FB20070 */  lw         $s2, 0x70($sp)
/* 9C408 800E6048 8FB1006C */  lw         $s1, 0x6C($sp)
/* 9C40C 800E604C 8FB00068 */  lw         $s0, 0x68($sp)
/* 9C410 800E6050 D7B40078 */  ldc1       $f20, 0x78($sp)
/* 9C414 800E6054 03E00008 */  jr         $ra
/* 9C418 800E6058 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_800E605C
/* 9C41C 800E605C C4A00034 */  lwc1       $f0, 0x34($a1)
/* 9C420 800E6060 C4A20028 */  lwc1       $f2, 0x28($a1)
/* 9C424 800E6064 24A30034 */  addiu      $v1, $a1, 0x34
/* 9C428 800E6068 46020002 */  mul.s      $f0, $f0, $f2
/* 9C42C 800E606C 24A20028 */  addiu      $v0, $a1, 0x28
/* 9C430 800E6070 C4660004 */  lwc1       $f6, 0x4($v1)
/* 9C434 800E6074 C4420004 */  lwc1       $f2, 0x4($v0)
/* 9C438 800E6078 46023182 */  mul.s      $f6, $f6, $f2
/* 9C43C 800E607C C4440008 */  lwc1       $f4, 0x8($v0)
/* 9C440 800E6080 C4620008 */  lwc1       $f2, 0x8($v1)
/* 9C444 800E6084 46041082 */  mul.s      $f2, $f2, $f4
/* 9C448 800E6088 46060000 */  add.s      $f0, $f0, $f6
/* 9C44C 800E608C 46020000 */  add.s      $f0, $f0, $f2
/* 9C450 800E6090 3C01800D */  lui        $at, %hi(D_race_800CB944)
/* 9C454 800E6094 C422B944 */  lwc1       $f2, %lo(D_race_800CB944)($at)
/* 9C458 800E6098 46000007 */  neg.s      $f0, $f0
/* 9C45C 800E609C 46020000 */  add.s      $f0, $f0, $f2
/* 9C460 800E60A0 3C01800D */  lui        $at, %hi(D_race_800CB948)
/* 9C464 800E60A4 C422B948 */  lwc1       $f2, %lo(D_race_800CB948)($at)
/* 9C468 800E60A8 46020002 */  mul.s      $f0, $f0, $f2
/* 9C46C 800E60AC C4A4007C */  lwc1       $f4, 0x7C($a1)
/* 9C470 800E60B0 3C01800D */  lui        $at, %hi(D_race_800CB94C)
/* 9C474 800E60B4 C422B94C */  lwc1       $f2, %lo(D_race_800CB94C)($at)
/* 9C478 800E60B8 8CA30014 */  lw         $v1, 0x14($a1)
/* 9C47C 800E60BC 46022102 */  mul.s      $f4, $f4, $f2
/* 9C480 800E60C0 00661821 */  addu       $v1, $v1, $a2
/* 9C484 800E60C4 4600020D */  trunc.w.s  $f8, $f0
/* 9C488 800E60C8 44024000 */  mfc1       $v0, $f8
/* 9C48C 800E60CC 00021040 */  sll        $v0, $v0, 1
/* 9C490 800E60D0 00431021 */  addu       $v0, $v0, $v1
/* 9C494 800E60D4 4600220D */  trunc.w.s  $f8, $f4
/* 9C498 800E60D8 44044000 */  mfc1       $a0, $f8
/* 9C49C 800E60DC 00440018 */  mult       $v0, $a0
/* 9C4A0 800E60E0 ACA30014 */  sw         $v1, 0x14($a1)
/* 9C4A4 800E60E4 00003812 */  mflo       $a3
/* 9C4A8 800E60E8 03E00008 */  jr         $ra
/* 9C4AC 800E60EC ACA70018 */   sw        $a3, 0x18($a1)

glabel func_race_800E60F0
/* 9C4B0 800E60F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9C4B4 800E60F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9C4B8 800E60F8 8C840004 */  lw         $a0, 0x4($a0)
/* 9C4BC 800E60FC 10800003 */  beqz       $a0, .Lrace_800E610C
/* 9C4C0 800E6100 00000000 */   nop
/* 9C4C4 800E6104 0C0190C0 */  jal        func_80064300
/* 9C4C8 800E6108 00000000 */   nop
.Lrace_800E610C:
/* 9C4CC 800E610C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9C4D0 800E6110 03E00008 */  jr         $ra
/* 9C4D4 800E6114 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E6118
/* 9C4D8 800E6118 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9C4DC 800E611C AFB50024 */  sw         $s5, 0x24($sp)
/* 9C4E0 800E6120 0080A821 */  addu       $s5, $a0, $zero
/* 9C4E4 800E6124 AFB60028 */  sw         $s6, 0x28($sp)
/* 9C4E8 800E6128 00A0B021 */  addu       $s6, $a1, $zero
/* 9C4EC 800E612C AFB00010 */  sw         $s0, 0x10($sp)
/* 9C4F0 800E6130 00C08021 */  addu       $s0, $a2, $zero
/* 9C4F4 800E6134 AFBF002C */  sw         $ra, 0x2C($sp)
/* 9C4F8 800E6138 AFB40020 */  sw         $s4, 0x20($sp)
/* 9C4FC 800E613C AFB3001C */  sw         $s3, 0x1C($sp)
/* 9C500 800E6140 AFB20018 */  sw         $s2, 0x18($sp)
/* 9C504 800E6144 AFB10014 */  sw         $s1, 0x14($sp)
/* 9C508 800E6148 AEB0001C */  sw         $s0, 0x1C($s5)
/* 9C50C 800E614C 8E03002C */  lw         $v1, 0x2C($s0)
/* 9C510 800E6150 38620001 */  xori       $v0, $v1, 0x1
/* 9C514 800E6154 30420001 */  andi       $v0, $v0, 0x1
/* 9C518 800E6158 10400006 */  beqz       $v0, .Lrace_800E6174
/* 9C51C 800E615C 00002021 */   addu      $a0, $zero, $zero
/* 9C520 800E6160 00031042 */  srl        $v0, $v1, 1
/* 9C524 800E6164 38420001 */  xori       $v0, $v0, 0x1
/* 9C528 800E6168 30420001 */  andi       $v0, $v0, 0x1
/* 9C52C 800E616C 14400002 */  bnez       $v0, .Lrace_800E6178
/* 9C530 800E6170 00000000 */   nop
.Lrace_800E6174:
/* 9C534 800E6174 24040001 */  addiu      $a0, $zero, 0x1
.Lrace_800E6178:
/* 9C538 800E6178 50800007 */  beql       $a0, $zero, .Lrace_800E6198
/* 9C53C 800E617C 26A30020 */   addiu     $v1, $s5, 0x20
/* 9C540 800E6180 8E02011C */  lw         $v0, 0x11C($s0)
/* 9C544 800E6184 84440058 */  lh         $a0, 0x58($v0)
/* 9C548 800E6188 8C42005C */  lw         $v0, 0x5C($v0)
/* 9C54C 800E618C 0040F809 */  jalr       $v0
/* 9C550 800E6190 02042021 */   addu      $a0, $s0, $a0
/* 9C554 800E6194 26A30020 */  addiu      $v1, $s5, 0x20
.Lrace_800E6198:
/* 9C558 800E6198 26020030 */  addiu      $v0, $s0, 0x30
/* 9C55C 800E619C 260400F0 */  addiu      $a0, $s0, 0xF0
.Lrace_800E61A0:
/* 9C560 800E61A0 8C490000 */  lw         $t1, 0x0($v0)
/* 9C564 800E61A4 8C4A0004 */  lw         $t2, 0x4($v0)
/* 9C568 800E61A8 8C4B0008 */  lw         $t3, 0x8($v0)
/* 9C56C 800E61AC 8C4C000C */  lw         $t4, 0xC($v0)
/* 9C570 800E61B0 AC690000 */  sw         $t1, 0x0($v1)
/* 9C574 800E61B4 AC6A0004 */  sw         $t2, 0x4($v1)
/* 9C578 800E61B8 AC6B0008 */  sw         $t3, 0x8($v1)
/* 9C57C 800E61BC AC6C000C */  sw         $t4, 0xC($v1)
/* 9C580 800E61C0 24420010 */  addiu      $v0, $v0, 0x10
/* 9C584 800E61C4 1444FFF6 */  bne        $v0, $a0, .Lrace_800E61A0
/* 9C588 800E61C8 24630010 */   addiu     $v1, $v1, 0x10
/* 9C58C 800E61CC 8C490000 */  lw         $t1, 0x0($v0)
/* 9C590 800E61D0 8C4A0004 */  lw         $t2, 0x4($v0)
/* 9C594 800E61D4 8C4B0008 */  lw         $t3, 0x8($v0)
/* 9C598 800E61D8 AC690000 */  sw         $t1, 0x0($v1)
/* 9C59C 800E61DC AC6A0004 */  sw         $t2, 0x4($v1)
/* 9C5A0 800E61E0 AC6B0008 */  sw         $t3, 0x8($v1)
/* 9C5A4 800E61E4 C6020014 */  lwc1       $f2, 0x14($s0)
/* 9C5A8 800E61E8 C6000018 */  lwc1       $f0, 0x18($s0)
/* 9C5AC 800E61EC 0000A021 */  addu       $s4, $zero, $zero
/* 9C5B0 800E61F0 46001082 */  mul.s      $f2, $f2, $f0
/* 9C5B4 800E61F4 8EB00014 */  lw         $s0, 0x14($s5)
/* 9C5B8 800E61F8 8EA30008 */  lw         $v1, 0x8($s5)
/* 9C5BC 800E61FC 3C01800D */  lui        $at, %hi(D_race_800CB950)
/* 9C5C0 800E6200 C420B950 */  lwc1       $f0, %lo(D_race_800CB950)($at)
/* 9C5C4 800E6204 00031140 */  sll        $v0, $v1, 5
/* 9C5C8 800E6208 46001082 */  mul.s      $f2, $f2, $f0
/* 9C5CC 800E620C 00431021 */  addu       $v0, $v0, $v1
/* 9C5D0 800E6210 00021080 */  sll        $v0, $v0, 2
/* 9C5D4 800E6214 02029021 */  addu       $s2, $s0, $v0
/* 9C5D8 800E6218 0212102B */  sltu       $v0, $s0, $s2
/* 9C5DC 800E621C 10400028 */  beqz       $v0, .Lrace_800E62C0
/* 9C5E0 800E6220 E6A200EC */   swc1      $f2, 0xEC($s5)
/* 9C5E4 800E6224 2413FFFF */  addiu      $s3, $zero, -0x1
/* 9C5E8 800E6228 26110010 */  addiu      $s1, $s0, 0x10
.Lrace_800E622C:
/* 9C5EC 800E622C 8E020000 */  lw         $v0, 0x0($s0)
/* 9C5F0 800E6230 1040001F */  beqz       $v0, .Lrace_800E62B0
/* 9C5F4 800E6234 02A02021 */   addu      $a0, $s5, $zero
/* 9C5F8 800E6238 0C039763 */  jal        func_race_800E5D8C
/* 9C5FC 800E623C 02002821 */   addu      $a1, $s0, $zero
/* 9C600 800E6240 8E23FFFC */  lw         $v1, -0x4($s1)
/* 9C604 800E6244 5073001B */  beql       $v1, $s3, .Lrace_800E62B4
/* 9C608 800E6248 26100084 */   addiu     $s0, $s0, 0x84
/* 9C60C 800E624C 8E22FFF8 */  lw         $v0, -0x8($s1)
/* 9C610 800E6250 10400006 */  beqz       $v0, .Lrace_800E626C
/* 9C614 800E6254 00000000 */   nop
/* 9C618 800E6258 8E220070 */  lw         $v0, 0x70($s1)
/* 9C61C 800E625C 10530003 */  beq        $v0, $s3, .Lrace_800E626C
/* 9C620 800E6260 00000000 */   nop
/* 9C624 800E6264 1043000E */  beq        $v0, $v1, .Lrace_800E62A0
/* 9C628 800E6268 02A02021 */   addu      $a0, $s5, $zero
.Lrace_800E626C:
/* 9C62C 800E626C 8E22FFFC */  lw         $v0, -0x4($s1)
/* 9C630 800E6270 8E250000 */  lw         $a1, 0x0($s1)
/* 9C634 800E6274 000220C0 */  sll        $a0, $v0, 3
/* 9C638 800E6278 00822023 */  subu       $a0, $a0, $v0
/* 9C63C 800E627C 00042080 */  sll        $a0, $a0, 2
/* 9C640 800E6280 00822023 */  subu       $a0, $a0, $v0
/* 9C644 800E6284 8EA20010 */  lw         $v0, 0x10($s5)
/* 9C648 800E6288 00042080 */  sll        $a0, $a0, 2
/* 9C64C 800E628C 0C039592 */  jal        func_race_800E5648
/* 9C650 800E6290 00442021 */   addu      $a0, $v0, $a0
/* 9C654 800E6294 AE33FFFC */  sw         $s3, -0x4($s1)
/* 9C658 800E6298 080398AC */  j          .Lrace_800E62B0
/* 9C65C 800E629C AE330000 */   sw        $s3, 0x0($s1)
.Lrace_800E62A0:
/* 9C660 800E62A0 02002821 */  addu       $a1, $s0, $zero
/* 9C664 800E62A4 0C039817 */  jal        func_race_800E605C
/* 9C668 800E62A8 02C03021 */   addu      $a2, $s6, $zero
/* 9C66C 800E62AC 26940001 */  addiu      $s4, $s4, 0x1
.Lrace_800E62B0:
/* 9C670 800E62B0 26100084 */  addiu      $s0, $s0, 0x84
.Lrace_800E62B4:
/* 9C674 800E62B4 0212102B */  sltu       $v0, $s0, $s2
/* 9C678 800E62B8 1440FFDC */  bnez       $v0, .Lrace_800E622C
/* 9C67C 800E62BC 26310084 */   addiu     $s1, $s1, 0x84
.Lrace_800E62C0:
/* 9C680 800E62C0 8EA70018 */  lw         $a3, 0x18($s5)
/* 9C684 800E62C4 00F4102A */  slt        $v0, $a3, $s4
/* 9C688 800E62C8 10400024 */  beqz       $v0, .Lrace_800E635C
/* 9C68C 800E62CC 00000000 */   nop
/* 9C690 800E62D0 2408FFFF */  addiu      $t0, $zero, -0x1
.Lrace_800E62D4:
/* 9C694 800E62D4 00002821 */  addu       $a1, $zero, $zero
/* 9C698 800E62D8 3C067FFF */  lui        $a2, (0x7FFFFFFF >> 16)
/* 9C69C 800E62DC 8EB00014 */  lw         $s0, 0x14($s5)
/* 9C6A0 800E62E0 0212102B */  sltu       $v0, $s0, $s2
/* 9C6A4 800E62E4 10400017 */  beqz       $v0, .Lrace_800E6344
/* 9C6A8 800E62E8 34C6FFFF */   ori       $a2, $a2, (0x7FFFFFFF & 0xFFFF)
/* 9C6AC 800E62EC 02002021 */  addu       $a0, $s0, $zero
.Lrace_800E62F0:
/* 9C6B0 800E62F0 8E020000 */  lw         $v0, 0x0($s0)
/* 9C6B4 800E62F4 50400010 */  beql       $v0, $zero, .Lrace_800E6338
/* 9C6B8 800E62F8 26100084 */   addiu     $s0, $s0, 0x84
/* 9C6BC 800E62FC 8C820008 */  lw         $v0, 0x8($a0)
/* 9C6C0 800E6300 5040000D */  beql       $v0, $zero, .Lrace_800E6338
/* 9C6C4 800E6304 26100084 */   addiu     $s0, $s0, 0x84
/* 9C6C8 800E6308 8C82000C */  lw         $v0, 0xC($a0)
/* 9C6CC 800E630C 5048000A */  beql       $v0, $t0, .Lrace_800E6338
/* 9C6D0 800E6310 26100084 */   addiu     $s0, $s0, 0x84
/* 9C6D4 800E6314 8C820080 */  lw         $v0, 0x80($a0)
/* 9C6D8 800E6318 10480007 */  beq        $v0, $t0, .Lrace_800E6338
/* 9C6DC 800E631C 26100084 */   addiu     $s0, $s0, 0x84
/* 9C6E0 800E6320 8C830018 */  lw         $v1, 0x18($a0)
/* 9C6E4 800E6324 0066102A */  slt        $v0, $v1, $a2
/* 9C6E8 800E6328 10400003 */  beqz       $v0, .Lrace_800E6338
/* 9C6EC 800E632C 00000000 */   nop
/* 9C6F0 800E6330 00603021 */  addu       $a2, $v1, $zero
/* 9C6F4 800E6334 00802821 */  addu       $a1, $a0, $zero
.Lrace_800E6338:
/* 9C6F8 800E6338 0212102B */  sltu       $v0, $s0, $s2
/* 9C6FC 800E633C 1440FFEC */  bnez       $v0, .Lrace_800E62F0
/* 9C700 800E6340 24840084 */   addiu     $a0, $a0, 0x84
.Lrace_800E6344:
/* 9C704 800E6344 10A00005 */  beqz       $a1, .Lrace_800E635C
/* 9C708 800E6348 00000000 */   nop
/* 9C70C 800E634C 24E70001 */  addiu      $a3, $a3, 0x1
/* 9C710 800E6350 00F4102A */  slt        $v0, $a3, $s4
/* 9C714 800E6354 1440FFDF */  bnez       $v0, .Lrace_800E62D4
/* 9C718 800E6358 ACA80080 */   sw        $t0, 0x80($a1)
.Lrace_800E635C:
/* 9C71C 800E635C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 9C720 800E6360 8FB60028 */  lw         $s6, 0x28($sp)
/* 9C724 800E6364 8FB50024 */  lw         $s5, 0x24($sp)
/* 9C728 800E6368 8FB40020 */  lw         $s4, 0x20($sp)
/* 9C72C 800E636C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9C730 800E6370 8FB20018 */  lw         $s2, 0x18($sp)
/* 9C734 800E6374 8FB10014 */  lw         $s1, 0x14($sp)
/* 9C738 800E6378 8FB00010 */  lw         $s0, 0x10($sp)
/* 9C73C 800E637C 03E00008 */  jr         $ra
/* 9C740 800E6380 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800E6384
/* 9C744 800E6384 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 9C748 800E6388 AFB60060 */  sw         $s6, 0x60($sp)
/* 9C74C 800E638C 0080B021 */  addu       $s6, $a0, $zero
/* 9C750 800E6390 AFBF0068 */  sw         $ra, 0x68($sp)
/* 9C754 800E6394 AFB70064 */  sw         $s7, 0x64($sp)
/* 9C758 800E6398 AFB5005C */  sw         $s5, 0x5C($sp)
/* 9C75C 800E639C AFB40058 */  sw         $s4, 0x58($sp)
/* 9C760 800E63A0 AFB30054 */  sw         $s3, 0x54($sp)
/* 9C764 800E63A4 AFB20050 */  sw         $s2, 0x50($sp)
/* 9C768 800E63A8 AFB1004C */  sw         $s1, 0x4C($sp)
/* 9C76C 800E63AC AFB00048 */  sw         $s0, 0x48($sp)
/* 9C770 800E63B0 F7B40070 */  sdc1       $f20, 0x70($sp)
/* 9C774 800E63B4 8EC20008 */  lw         $v0, 0x8($s6)
/* 9C778 800E63B8 00021940 */  sll        $v1, $v0, 5
/* 9C77C 800E63BC 00621821 */  addu       $v1, $v1, $v0
/* 9C780 800E63C0 8EC20014 */  lw         $v0, 0x14($s6)
/* 9C784 800E63C4 00031880 */  sll        $v1, $v1, 2
/* 9C788 800E63C8 0043B821 */  addu       $s7, $v0, $v1
/* 9C78C 800E63CC 00409821 */  addu       $s3, $v0, $zero
/* 9C790 800E63D0 26720004 */  addiu      $s2, $s3, 0x4
/* 9C794 800E63D4 26750058 */  addiu      $s5, $s3, 0x58
/* 9C798 800E63D8 26740040 */  addiu      $s4, $s3, 0x40
.Lrace_800E63DC:
/* 9C79C 800E63DC 0277102B */  sltu       $v0, $s3, $s7
/* 9C7A0 800E63E0 104000BA */  beqz       $v0, .Lrace_800E66CC
/* 9C7A4 800E63E4 00000000 */   nop
/* 9C7A8 800E63E8 8E630000 */  lw         $v1, 0x0($s3)
/* 9C7AC 800E63EC 506000B3 */  beql       $v1, $zero, .Lrace_800E66BC
/* 9C7B0 800E63F0 26520084 */   addiu     $s2, $s2, 0x84
/* 9C7B4 800E63F4 8E420004 */  lw         $v0, 0x4($s2)
/* 9C7B8 800E63F8 504000B0 */  beql       $v0, $zero, .Lrace_800E66BC
/* 9C7BC 800E63FC 26520084 */   addiu     $s2, $s2, 0x84
/* 9C7C0 800E6400 8E50007C */  lw         $s0, 0x7C($s2)
/* 9C7C4 800E6404 06010016 */  bgez       $s0, .Lrace_800E6460
/* 9C7C8 800E6408 00000000 */   nop
/* 9C7CC 800E640C 8E420008 */  lw         $v0, 0x8($s2)
/* 9C7D0 800E6410 044000A9 */  bltz       $v0, .Lrace_800E66B8
/* 9C7D4 800E6414 02802821 */   addu      $a1, $s4, $zero
/* 9C7D8 800E6418 8C620024 */  lw         $v0, 0x24($v1)
/* 9C7DC 800E641C 27A60028 */  addiu      $a2, $sp, 0x28
/* 9C7E0 800E6420 84440070 */  lh         $a0, 0x70($v0)
/* 9C7E4 800E6424 8C420074 */  lw         $v0, 0x74($v0)
/* 9C7E8 800E6428 0040F809 */  jalr       $v0
/* 9C7EC 800E642C 00642021 */   addu      $a0, $v1, $a0
/* 9C7F0 800E6430 8E430000 */  lw         $v1, 0x0($s2)
/* 9C7F4 800E6434 94620048 */  lhu        $v0, 0x48($v1)
/* 9C7F8 800E6438 34420002 */  ori        $v0, $v0, 0x2
/* 9C7FC 800E643C A4620048 */  sh         $v0, 0x48($v1)
/* 9C800 800E6440 8FA90028 */  lw         $t1, 0x28($sp)
/* 9C804 800E6444 8FAA002C */  lw         $t2, 0x2C($sp)
/* 9C808 800E6448 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9C80C 800E644C AC690030 */  sw         $t1, 0x30($v1)
/* 9C810 800E6450 AC6A0034 */  sw         $t2, 0x34($v1)
/* 9C814 800E6454 AC6B0038 */  sw         $t3, 0x38($v1)
/* 9C818 800E6458 080399A7 */  j          .Lrace_800E669C
/* 9C81C 800E645C 00000000 */   nop
.Lrace_800E6460:
/* 9C820 800E6460 8E420008 */  lw         $v0, 0x8($s2)
/* 9C824 800E6464 1050000B */  beq        $v0, $s0, .Lrace_800E6494
/* 9C828 800E6468 001020C0 */   sll       $a0, $s0, 3
/* 9C82C 800E646C 00902023 */  subu       $a0, $a0, $s0
/* 9C830 800E6470 00042080 */  sll        $a0, $a0, 2
/* 9C834 800E6474 00902023 */  subu       $a0, $a0, $s0
/* 9C838 800E6478 8EC20010 */  lw         $v0, 0x10($s6)
/* 9C83C 800E647C 00042080 */  sll        $a0, $a0, 2
/* 9C840 800E6480 0C039570 */  jal        func_race_800E55C0
/* 9C844 800E6484 00442021 */   addu      $a0, $v0, $a0
/* 9C848 800E6488 0440008B */  bltz       $v0, .Lrace_800E66B8
/* 9C84C 800E648C AE42000C */   sw        $v0, 0xC($s2)
/* 9C850 800E6490 AE500008 */  sw         $s0, 0x8($s2)
.Lrace_800E6494:
/* 9C854 800E6494 8E490030 */  lw         $t1, 0x30($s2)
/* 9C858 800E6498 8E4A0034 */  lw         $t2, 0x34($s2)
/* 9C85C 800E649C 8E4B0038 */  lw         $t3, 0x38($s2)
/* 9C860 800E64A0 AE490024 */  sw         $t1, 0x24($s2)
/* 9C864 800E64A4 AE4A0028 */  sw         $t2, 0x28($s2)
/* 9C868 800E64A8 AE4B002C */  sw         $t3, 0x2C($s2)
/* 9C86C 800E64AC C6420074 */  lwc1       $f2, 0x74($s2)
/* 9C870 800E64B0 3C01800D */  lui        $at, %hi(D_race_800CB954)
/* 9C874 800E64B4 C420B954 */  lwc1       $f0, %lo(D_race_800CB954)($at)
/* 9C878 800E64B8 46001082 */  mul.s      $f2, $f2, $f0
/* 9C87C 800E64BC C640006C */  lwc1       $f0, 0x6C($s2)
/* 9C880 800E64C0 46020001 */  sub.s      $f0, $f0, $f2
/* 9C884 800E64C4 AE400010 */  sw         $zero, 0x10($s2)
/* 9C888 800E64C8 E7A00018 */  swc1       $f0, 0x18($sp)
/* 9C88C 800E64CC C6400070 */  lwc1       $f0, 0x70($s2)
/* 9C890 800E64D0 46020001 */  sub.s      $f0, $f0, $f2
/* 9C894 800E64D4 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 9C898 800E64D8 C640006C */  lwc1       $f0, 0x6C($s2)
/* 9C89C 800E64DC 46020000 */  add.s      $f0, $f0, $f2
/* 9C8A0 800E64E0 001088C0 */  sll        $s1, $s0, 3
/* 9C8A4 800E64E4 02308823 */  subu       $s1, $s1, $s0
/* 9C8A8 800E64E8 E7A00020 */  swc1       $f0, 0x20($sp)
/* 9C8AC 800E64EC C6400070 */  lwc1       $f0, 0x70($s2)
/* 9C8B0 800E64F0 00118880 */  sll        $s1, $s1, 2
/* 9C8B4 800E64F4 46020000 */  add.s      $f0, $f0, $f2
/* 9C8B8 800E64F8 02308823 */  subu       $s1, $s1, $s0
/* 9C8BC 800E64FC 00118880 */  sll        $s1, $s1, 2
/* 9C8C0 800E6500 E7A00024 */  swc1       $f0, 0x24($sp)
/* 9C8C4 800E6504 8EC30010 */  lw         $v1, 0x10($s6)
/* 9C8C8 800E6508 8EC2001C */  lw         $v0, 0x1C($s6)
/* 9C8CC 800E650C 02231821 */  addu       $v1, $s1, $v1
/* 9C8D0 800E6510 C4400004 */  lwc1       $f0, 0x4($v0)
/* 9C8D4 800E6514 C4420010 */  lwc1       $f2, 0x10($v0)
/* 9C8D8 800E6518 8C630058 */  lw         $v1, 0x58($v1)
/* 9C8DC 800E651C 44050000 */  mfc1       $a1, $f0
/* 9C8E0 800E6520 C440000C */  lwc1       $f0, 0xC($v0)
/* 9C8E4 800E6524 8E42000C */  lw         $v0, 0xC($s2)
/* 9C8E8 800E6528 44071000 */  mfc1       $a3, $f2
/* 9C8EC 800E652C 00021080 */  sll        $v0, $v0, 2
/* 9C8F0 800E6530 00431021 */  addu       $v0, $v0, $v1
/* 9C8F4 800E6534 44060000 */  mfc1       $a2, $f0
/* 9C8F8 800E6538 8C500000 */  lw         $s0, 0x0($v0)
/* 9C8FC 800E653C AFA00010 */  sw         $zero, 0x10($sp)
/* 9C900 800E6540 0C0128EB */  jal        func_8004A3AC
/* 9C904 800E6544 02002021 */   addu      $a0, $s0, $zero
/* 9C908 800E6548 8E060000 */  lw         $a2, 0x0($s0)
/* 9C90C 800E654C 8EC2001C */  lw         $v0, 0x1C($s6)
/* 9C910 800E6550 8CC3000C */  lw         $v1, 0xC($a2)
/* 9C914 800E6554 8C450000 */  lw         $a1, 0x0($v0)
/* 9C918 800E6558 84640098 */  lh         $a0, 0x98($v1)
/* 9C91C 800E655C 8C62009C */  lw         $v0, 0x9C($v1)
/* 9C920 800E6560 0040F809 */  jalr       $v0
/* 9C924 800E6564 00C42021 */   addu      $a0, $a2, $a0
/* 9C928 800E6568 27A50018 */  addiu      $a1, $sp, 0x18
/* 9C92C 800E656C 8E02002C */  lw         $v0, 0x2C($s0)
/* 9C930 800E6570 8E03011C */  lw         $v1, 0x11C($s0)
/* 9C934 800E6574 34420001 */  ori        $v0, $v0, 0x1
/* 9C938 800E6578 AE02002C */  sw         $v0, 0x2C($s0)
/* 9C93C 800E657C 84640028 */  lh         $a0, 0x28($v1)
/* 9C940 800E6580 8C62002C */  lw         $v0, 0x2C($v1)
/* 9C944 800E6584 0040F809 */  jalr       $v0
/* 9C948 800E6588 02042021 */   addu      $a0, $s0, $a0
/* 9C94C 800E658C 8E630000 */  lw         $v1, 0x0($s3)
/* 9C950 800E6590 2665004C */  addiu      $a1, $s3, 0x4C
/* 9C954 800E6594 8C620024 */  lw         $v0, 0x24($v1)
/* 9C958 800E6598 02803021 */  addu       $a2, $s4, $zero
/* 9C95C 800E659C 84440078 */  lh         $a0, 0x78($v0)
/* 9C960 800E65A0 8C42007C */  lw         $v0, 0x7C($v0)
/* 9C964 800E65A4 0040F809 */  jalr       $v0
/* 9C968 800E65A8 00642021 */   addu      $a0, $v1, $a0
/* 9C96C 800E65AC 8EC30010 */  lw         $v1, 0x10($s6)
/* 9C970 800E65B0 8E42000C */  lw         $v0, 0xC($s2)
/* 9C974 800E65B4 02231821 */  addu       $v1, $s1, $v1
/* 9C978 800E65B8 8C630054 */  lw         $v1, 0x54($v1)
/* 9C97C 800E65BC 00021080 */  sll        $v0, $v0, 2
/* 9C980 800E65C0 00431021 */  addu       $v0, $v0, $v1
/* 9C984 800E65C4 8C500000 */  lw         $s0, 0x0($v0)
/* 9C988 800E65C8 8E03012C */  lw         $v1, 0x12C($s0)
/* 9C98C 800E65CC 84640230 */  lh         $a0, 0x230($v1)
/* 9C990 800E65D0 24020003 */  addiu      $v0, $zero, 0x3
/* 9C994 800E65D4 8E490054 */  lw         $t1, 0x54($s2)
/* 9C998 800E65D8 8E4A0058 */  lw         $t2, 0x58($s2)
/* 9C99C 800E65DC 8E4B005C */  lw         $t3, 0x5C($s2)
/* 9C9A0 800E65E0 AFA90038 */  sw         $t1, 0x38($sp)
/* 9C9A4 800E65E4 AFAA003C */  sw         $t2, 0x3C($sp)
/* 9C9A8 800E65E8 AFAB0040 */  sw         $t3, 0x40($sp)
/* 9C9AC 800E65EC AFA20010 */  sw         $v0, 0x10($sp)
/* 9C9B0 800E65F0 8FA50038 */  lw         $a1, 0x38($sp)
/* 9C9B4 800E65F4 8FA6003C */  lw         $a2, 0x3C($sp)
/* 9C9B8 800E65F8 8FA70040 */  lw         $a3, 0x40($sp)
/* 9C9BC 800E65FC 8C620234 */  lw         $v0, 0x234($v1)
/* 9C9C0 800E6600 0040F809 */  jalr       $v0
/* 9C9C4 800E6604 02042021 */   addu      $a0, $s0, $a0
/* 9C9C8 800E6608 8E630000 */  lw         $v1, 0x0($s3)
/* 9C9CC 800E660C 8C620024 */  lw         $v0, 0x24($v1)
/* 9C9D0 800E6610 02002821 */  addu       $a1, $s0, $zero
/* 9C9D4 800E6614 84440040 */  lh         $a0, 0x40($v0)
/* 9C9D8 800E6618 8C420044 */  lw         $v0, 0x44($v0)
/* 9C9DC 800E661C 0040F809 */  jalr       $v0
/* 9C9E0 800E6620 00642021 */   addu      $a0, $v1, $a0
/* 9C9E4 800E6624 8E02012C */  lw         $v0, 0x12C($s0)
/* 9C9E8 800E6628 844401E0 */  lh         $a0, 0x1E0($v0)
/* 9C9EC 800E662C 8C4201E4 */  lw         $v0, 0x1E4($v0)
/* 9C9F0 800E6630 0040F809 */  jalr       $v0
/* 9C9F4 800E6634 02042021 */   addu      $a0, $s0, $a0
/* 9C9F8 800E6638 8E640000 */  lw         $a0, 0x0($s3)
/* 9C9FC 800E663C 0C0165C5 */  jal        func_80059714
/* 9CA00 800E6640 00000000 */   nop
/* 9CA04 800E6644 8EC20010 */  lw         $v0, 0x10($s6)
/* 9CA08 800E6648 02228821 */  addu       $s1, $s1, $v0
/* 9CA0C 800E664C 8E220040 */  lw         $v0, 0x40($s1)
/* 9CA10 800E6650 8C430008 */  lw         $v1, 0x8($v0)
/* 9CA14 800E6654 84640058 */  lh         $a0, 0x58($v1)
/* 9CA18 800E6658 8E45000C */  lw         $a1, 0xC($s2)
/* 9CA1C 800E665C 00442021 */  addu       $a0, $v0, $a0
/* 9CA20 800E6660 8C62005C */  lw         $v0, 0x5C($v1)
/* 9CA24 800E6664 0040F809 */  jalr       $v0
/* 9CA28 800E6668 46000500 */   add.s     $f20, $f0, $f0
/* 9CA2C 800E666C 00402821 */  addu       $a1, $v0, $zero
/* 9CA30 800E6670 8E480000 */  lw         $t0, 0x0($s2)
/* 9CA34 800E6674 4406A000 */  mfc1       $a2, $f20
/* 9CA38 800E6678 8D030024 */  lw         $v1, 0x24($t0)
/* 9CA3C 800E667C 3C01800D */  lui        $at, %hi(D_race_800CB958)
/* 9CA40 800E6680 C420B958 */  lwc1       $f0, %lo(D_race_800CB958)($at)
/* 9CA44 800E6684 846400A0 */  lh         $a0, 0xA0($v1)
/* 9CA48 800E6688 00C03821 */  addu       $a3, $a2, $zero
/* 9CA4C 800E668C E7A00010 */  swc1       $f0, 0x10($sp)
/* 9CA50 800E6690 8C6200A4 */  lw         $v0, 0xA4($v1)
/* 9CA54 800E6694 0040F809 */  jalr       $v0
/* 9CA58 800E6698 01042021 */   addu      $a0, $t0, $a0
.Lrace_800E669C:
/* 9CA5C 800E669C 8E430000 */  lw         $v1, 0x0($s2)
/* 9CA60 800E66A0 8C620024 */  lw         $v0, 0x24($v1)
/* 9CA64 800E66A4 02A02821 */  addu       $a1, $s5, $zero
/* 9CA68 800E66A8 84440018 */  lh         $a0, 0x18($v0)
/* 9CA6C 800E66AC 8C42001C */  lw         $v0, 0x1C($v0)
/* 9CA70 800E66B0 0040F809 */  jalr       $v0
/* 9CA74 800E66B4 00642021 */   addu      $a0, $v1, $a0
.Lrace_800E66B8:
/* 9CA78 800E66B8 26520084 */  addiu      $s2, $s2, 0x84
.Lrace_800E66BC:
/* 9CA7C 800E66BC 26B50084 */  addiu      $s5, $s5, 0x84
/* 9CA80 800E66C0 26940084 */  addiu      $s4, $s4, 0x84
/* 9CA84 800E66C4 080398F7 */  j          .Lrace_800E63DC
/* 9CA88 800E66C8 26730084 */   addiu     $s3, $s3, 0x84
.Lrace_800E66CC:
/* 9CA8C 800E66CC 8FBF0068 */  lw         $ra, 0x68($sp)
/* 9CA90 800E66D0 8FB70064 */  lw         $s7, 0x64($sp)
/* 9CA94 800E66D4 8FB60060 */  lw         $s6, 0x60($sp)
/* 9CA98 800E66D8 8FB5005C */  lw         $s5, 0x5C($sp)
/* 9CA9C 800E66DC 8FB40058 */  lw         $s4, 0x58($sp)
/* 9CAA0 800E66E0 8FB30054 */  lw         $s3, 0x54($sp)
/* 9CAA4 800E66E4 8FB20050 */  lw         $s2, 0x50($sp)
/* 9CAA8 800E66E8 8FB1004C */  lw         $s1, 0x4C($sp)
/* 9CAAC 800E66EC 8FB00048 */  lw         $s0, 0x48($sp)
/* 9CAB0 800E66F0 D7B40070 */  ldc1       $f20, 0x70($sp)
/* 9CAB4 800E66F4 03E00008 */  jr         $ra
/* 9CAB8 800E66F8 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_race_800E66FC
/* 9CABC 800E66FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9CAC0 800E6700 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9CAC4 800E6704 AFBF0020 */  sw         $ra, 0x20($sp)
/* 9CAC8 800E6708 AFB20018 */  sw         $s2, 0x18($sp)
/* 9CACC 800E670C AFB10014 */  sw         $s1, 0x14($sp)
/* 9CAD0 800E6710 AFB00010 */  sw         $s0, 0x10($sp)
/* 9CAD4 800E6714 8C830008 */  lw         $v1, 0x8($a0)
/* 9CAD8 800E6718 8C910014 */  lw         $s1, 0x14($a0)
/* 9CADC 800E671C 00031140 */  sll        $v0, $v1, 5
/* 9CAE0 800E6720 00431021 */  addu       $v0, $v0, $v1
/* 9CAE4 800E6724 00021080 */  sll        $v0, $v0, 2
/* 9CAE8 800E6728 02229021 */  addu       $s2, $s1, $v0
/* 9CAEC 800E672C 0232102B */  sltu       $v0, $s1, $s2
/* 9CAF0 800E6730 10400020 */  beqz       $v0, .Lrace_800E67B4
/* 9CAF4 800E6734 00A09821 */   addu      $s3, $a1, $zero
/* 9CAF8 800E6738 26300004 */  addiu      $s0, $s1, 0x4
.Lrace_800E673C:
/* 9CAFC 800E673C 8E230000 */  lw         $v1, 0x0($s1)
/* 9CB00 800E6740 50600019 */  beql       $v1, $zero, .Lrace_800E67A8
/* 9CB04 800E6744 26310084 */   addiu     $s1, $s1, 0x84
/* 9CB08 800E6748 8E020004 */  lw         $v0, 0x4($s0)
/* 9CB0C 800E674C 50400016 */  beql       $v0, $zero, .Lrace_800E67A8
/* 9CB10 800E6750 26310084 */   addiu     $s1, $s1, 0x84
/* 9CB14 800E6754 8E020008 */  lw         $v0, 0x8($s0)
/* 9CB18 800E6758 04410006 */  bgez       $v0, .Lrace_800E6774
/* 9CB1C 800E675C 02602821 */   addu      $a1, $s3, $zero
/* 9CB20 800E6760 8C620024 */  lw         $v0, 0x24($v1)
/* 9CB24 800E6764 84440040 */  lh         $a0, 0x40($v0)
/* 9CB28 800E6768 8C420044 */  lw         $v0, 0x44($v0)
/* 9CB2C 800E676C 080399E8 */  j          .Lrace_800E67A0
/* 9CB30 800E6770 00642021 */   addu      $a0, $v1, $a0
.Lrace_800E6774:
/* 9CB34 800E6774 0C0165C5 */  jal        func_80059714
/* 9CB38 800E6778 00602021 */   addu      $a0, $v1, $zero
/* 9CB3C 800E677C 8E040000 */  lw         $a0, 0x0($s0)
/* 9CB40 800E6780 44050000 */  mfc1       $a1, $f0
/* 9CB44 800E6784 0C0165E8 */  jal        func_800597A0
/* 9CB48 800E6788 00000000 */   nop
/* 9CB4C 800E678C 8E62012C */  lw         $v0, 0x12C($s3)
/* 9CB50 800E6790 8E050000 */  lw         $a1, 0x0($s0)
/* 9CB54 800E6794 84440168 */  lh         $a0, 0x168($v0)
/* 9CB58 800E6798 8C42016C */  lw         $v0, 0x16C($v0)
/* 9CB5C 800E679C 02642021 */  addu       $a0, $s3, $a0
.Lrace_800E67A0:
/* 9CB60 800E67A0 0040F809 */  jalr       $v0
/* 9CB64 800E67A4 26310084 */   addiu     $s1, $s1, 0x84
.Lrace_800E67A8:
/* 9CB68 800E67A8 0232102B */  sltu       $v0, $s1, $s2
/* 9CB6C 800E67AC 1440FFE3 */  bnez       $v0, .Lrace_800E673C
/* 9CB70 800E67B0 26100084 */   addiu     $s0, $s0, 0x84
.Lrace_800E67B4:
/* 9CB74 800E67B4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 9CB78 800E67B8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9CB7C 800E67BC 8FB20018 */  lw         $s2, 0x18($sp)
/* 9CB80 800E67C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 9CB84 800E67C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 9CB88 800E67C8 03E00008 */  jr         $ra
/* 9CB8C 800E67CC 27BD0028 */   addiu     $sp, $sp, 0x28
