.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801125A0
/* C8960 801125A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8964 801125A4 AFB00010 */  sw         $s0, 0x10($sp)
/* C8968 801125A8 00808021 */  addu       $s0, $a0, $zero
/* C896C 801125AC AFBF0014 */  sw         $ra, 0x14($sp)
/* C8970 801125B0 0C016670 */  jal        func_800599C0
/* C8974 801125B4 26040004 */   addiu     $a0, $s0, 0x4
/* C8978 801125B8 0C039AC0 */  jal        func_race_800E6B00
/* C897C 801125BC 2604007C */   addiu     $a0, $s0, 0x7C
/* C8980 801125C0 0C0152E4 */  jal        func_80054B90
/* C8984 801125C4 26040230 */   addiu     $a0, $s0, 0x230
/* C8988 801125C8 0C0152E4 */  jal        func_80054B90
/* C898C 801125CC 2604023C */   addiu     $a0, $s0, 0x23C
/* C8990 801125D0 0C01955C */  jal        func_80065570
/* C8994 801125D4 2604029C */   addiu     $a0, $s0, 0x29C
/* C8998 801125D8 0C04499A */  jal        func_race_80112668
/* C899C 801125DC 02002021 */   addu      $a0, $s0, $zero
/* C89A0 801125E0 02001021 */  addu       $v0, $s0, $zero
/* C89A4 801125E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* C89A8 801125E8 8FB00010 */  lw         $s0, 0x10($sp)
/* C89AC 801125EC 03E00008 */  jr         $ra
/* C89B0 801125F0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801125F4
/* C89B4 801125F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C89B8 801125F8 AFB10014 */  sw         $s1, 0x14($sp)
/* C89BC 801125FC 00808821 */  addu       $s1, $a0, $zero
/* C89C0 80112600 AFB00010 */  sw         $s0, 0x10($sp)
/* C89C4 80112604 AFBF0018 */  sw         $ra, 0x18($sp)
/* C89C8 80112608 0C04499A */  jal        func_race_80112668
/* C89CC 8011260C 00A08021 */   addu      $s0, $a1, $zero
/* C89D0 80112610 2624023C */  addiu      $a0, $s1, 0x23C
/* C89D4 80112614 0C0152E9 */  jal        func_80054BA4
/* C89D8 80112618 24050002 */   addiu     $a1, $zero, 0x2
/* C89DC 8011261C 26240230 */  addiu      $a0, $s1, 0x230
/* C89E0 80112620 0C0152E9 */  jal        func_80054BA4
/* C89E4 80112624 24050002 */   addiu     $a1, $zero, 0x2
/* C89E8 80112628 2624007C */  addiu      $a0, $s1, 0x7C
/* C89EC 8011262C 0C039AFD */  jal        func_race_800E6BF4
/* C89F0 80112630 24050002 */   addiu     $a1, $zero, 0x2
/* C89F4 80112634 26240004 */  addiu      $a0, $s1, 0x4
/* C89F8 80112638 0C016684 */  jal        func_80059A10
/* C89FC 8011263C 24050002 */   addiu     $a1, $zero, 0x2
/* C8A00 80112640 32100001 */  andi       $s0, $s0, 0x1
/* C8A04 80112644 12000003 */  beqz       $s0, .Lrace_80112654
/* C8A08 80112648 00000000 */   nop
/* C8A0C 8011264C 0C01FB5C */  jal        func_8007ED70
/* C8A10 80112650 02202021 */   addu      $a0, $s1, $zero
.Lrace_80112654:
/* C8A14 80112654 8FBF0018 */  lw         $ra, 0x18($sp)
/* C8A18 80112658 8FB10014 */  lw         $s1, 0x14($sp)
/* C8A1C 8011265C 8FB00010 */  lw         $s0, 0x10($sp)
/* C8A20 80112660 03E00008 */  jr         $ra
/* C8A24 80112664 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80112668
/* C8A28 80112668 00003021 */  addu       $a2, $zero, $zero
/* C8A2C 8011266C 00803821 */  addu       $a3, $a0, $zero
/* C8A30 80112670 00802821 */  addu       $a1, $a0, $zero
/* C8A34 80112674 3C01800D */  lui        $at, %hi(D_race_800CDE50)
/* C8A38 80112678 C420DE50 */  lwc1       $f0, %lo(D_race_800CDE50)($at)
/* C8A3C 8011267C 00801821 */  addu       $v1, $a0, $zero
/* C8A40 80112680 AC80003C */  sw         $zero, 0x3C($a0)
/* C8A44 80112684 AC800040 */  sw         $zero, 0x40($a0)
/* C8A48 80112688 AC800044 */  sw         $zero, 0x44($a0)
/* C8A4C 8011268C AC800048 */  sw         $zero, 0x48($a0)
/* C8A50 80112690 AC8001F0 */  sw         $zero, 0x1F0($a0)
/* C8A54 80112694 AC800058 */  sw         $zero, 0x58($a0)
/* C8A58 80112698 AC80005C */  sw         $zero, 0x5C($a0)
/* C8A5C 8011269C AC800064 */  sw         $zero, 0x64($a0)
/* C8A60 801126A0 AC8001F4 */  sw         $zero, 0x1F4($a0)
/* C8A64 801126A4 AC800000 */  sw         $zero, 0x0($a0)
/* C8A68 801126A8 AC80004C */  sw         $zero, 0x4C($a0)
/* C8A6C 801126AC AC800050 */  sw         $zero, 0x50($a0)
/* C8A70 801126B0 AC800054 */  sw         $zero, 0x54($a0)
/* C8A74 801126B4 E4800060 */  swc1       $f0, 0x60($a0)
.Lrace_801126B8:
/* C8A78 801126B8 00861021 */  addu       $v0, $a0, $a2
/* C8A7C 801126BC A040020C */  sb         $zero, 0x20C($v0)
/* C8A80 801126C0 AC600210 */  sw         $zero, 0x210($v1)
/* C8A84 801126C4 AC600220 */  sw         $zero, 0x220($v1)
/* C8A88 801126C8 ACA001C0 */  sw         $zero, 0x1C0($a1)
/* C8A8C 801126CC ACA001C4 */  sw         $zero, 0x1C4($a1)
/* C8A90 801126D0 ACA001C8 */  sw         $zero, 0x1C8($a1)
/* C8A94 801126D4 AC6001FC */  sw         $zero, 0x1FC($v1)
/* C8A98 801126D8 AC600248 */  sw         $zero, 0x248($v1)
/* C8A9C 801126DC AC600278 */  sw         $zero, 0x278($v1)
/* C8AA0 801126E0 A0E00258 */  sb         $zero, 0x258($a3)
/* C8AA4 801126E4 24E70008 */  addiu      $a3, $a3, 0x8
/* C8AA8 801126E8 24A5000C */  addiu      $a1, $a1, 0xC
/* C8AAC 801126EC 24C60001 */  addiu      $a2, $a2, 0x1
/* C8AB0 801126F0 2CC20004 */  sltiu      $v0, $a2, 0x4
/* C8AB4 801126F4 1440FFF0 */  bnez       $v0, .Lrace_801126B8
/* C8AB8 801126F8 24630004 */   addiu     $v1, $v1, 0x4
/* C8ABC 801126FC 24020004 */  addiu      $v0, $zero, 0x4
/* C8AC0 80112700 AC800288 */  sw         $zero, 0x288($a0)
/* C8AC4 80112704 AC800290 */  sw         $zero, 0x290($a0)
/* C8AC8 80112708 AC80028C */  sw         $zero, 0x28C($a0)
/* C8ACC 8011270C AC800294 */  sw         $zero, 0x294($a0)
/* C8AD0 80112710 AC800298 */  sw         $zero, 0x298($a0)
/* C8AD4 80112714 AC8001F8 */  sw         $zero, 0x1F8($a0)
/* C8AD8 80112718 AC800390 */  sw         $zero, 0x390($a0)
/* C8ADC 8011271C AC800394 */  sw         $zero, 0x394($a0)
/* C8AE0 80112720 AC800398 */  sw         $zero, 0x398($a0)
/* C8AE4 80112724 AC8003A8 */  sw         $zero, 0x3A8($a0)
/* C8AE8 80112728 AC8003AC */  sw         $zero, 0x3AC($a0)
/* C8AEC 8011272C AC8003B0 */  sw         $zero, 0x3B0($a0)
/* C8AF0 80112730 AC8003A4 */  sw         $zero, 0x3A4($a0)
/* C8AF4 80112734 AC80039C */  sw         $zero, 0x39C($a0)
/* C8AF8 80112738 AC8003A0 */  sw         $zero, 0x3A0($a0)
/* C8AFC 8011273C AC8003D4 */  sw         $zero, 0x3D4($a0)
/* C8B00 80112740 AC8003D8 */  sw         $zero, 0x3D8($a0)
/* C8B04 80112744 AC8003DC */  sw         $zero, 0x3DC($a0)
/* C8B08 80112748 03E00008 */  jr         $ra
/* C8B0C 8011274C AC8203E0 */   sw        $v0, 0x3E0($a0)

glabel func_race_80112750
/* C8B10 80112750 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C8B14 80112754 AFB20018 */  sw         $s2, 0x18($sp)
/* C8B18 80112758 00809021 */  addu       $s2, $a0, $zero
/* C8B1C 8011275C AFB3001C */  sw         $s3, 0x1C($sp)
/* C8B20 80112760 00A09821 */  addu       $s3, $a1, $zero
/* C8B24 80112764 AFBF0024 */  sw         $ra, 0x24($sp)
/* C8B28 80112768 AFB40020 */  sw         $s4, 0x20($sp)
/* C8B2C 8011276C AFB10014 */  sw         $s1, 0x14($sp)
/* C8B30 80112770 AFB00010 */  sw         $s0, 0x10($sp)
/* C8B34 80112774 8E420000 */  lw         $v0, 0x0($s2)
/* C8B38 80112778 30420001 */  andi       $v0, $v0, 0x1
/* C8B3C 8011277C 10400003 */  beqz       $v0, .Lrace_8011278C
/* C8B40 80112780 00C0A021 */   addu      $s4, $a2, $zero
/* C8B44 80112784 0C044ACE */  jal        func_race_80112B38
/* C8B48 80112788 00000000 */   nop
.Lrace_8011278C:
/* C8B4C 8011278C 8E620000 */  lw         $v0, 0x0($s3)
/* C8B50 80112790 AE42003C */  sw         $v0, 0x3C($s2)
/* C8B54 80112794 8E620004 */  lw         $v0, 0x4($s3)
/* C8B58 80112798 AE420040 */  sw         $v0, 0x40($s2)
/* C8B5C 8011279C 8E620008 */  lw         $v0, 0x8($s3)
/* C8B60 801127A0 AE420044 */  sw         $v0, 0x44($s2)
/* C8B64 801127A4 8E62000C */  lw         $v0, 0xC($s3)
/* C8B68 801127A8 AE420048 */  sw         $v0, 0x48($s2)
/* C8B6C 801127AC 8E6A0010 */  lw         $t2, 0x10($s3)
/* C8B70 801127B0 8E6B0014 */  lw         $t3, 0x14($s3)
/* C8B74 801127B4 8E6C0018 */  lw         $t4, 0x18($s3)
/* C8B78 801127B8 AE4A004C */  sw         $t2, 0x4C($s2)
/* C8B7C 801127BC AE4B0050 */  sw         $t3, 0x50($s2)
/* C8B80 801127C0 AE4C0054 */  sw         $t4, 0x54($s2)
/* C8B84 801127C4 8E820008 */  lw         $v0, 0x8($s4)
/* C8B88 801127C8 AE420064 */  sw         $v0, 0x64($s2)
/* C8B8C 801127CC 8E62001C */  lw         $v0, 0x1C($s3)
/* C8B90 801127D0 AE4201F0 */  sw         $v0, 0x1F0($s2)
/* C8B94 801127D4 244203FC */  addiu      $v0, $v0, 0x3FC
/* C8B98 801127D8 AE4201F4 */  sw         $v0, 0x1F4($s2)
/* C8B9C 801127DC 8E82001C */  lw         $v0, 0x1C($s4)
/* C8BA0 801127E0 AE420294 */  sw         $v0, 0x294($s2)
/* C8BA4 801127E4 8E820020 */  lw         $v0, 0x20($s4)
/* C8BA8 801127E8 AE420298 */  sw         $v0, 0x298($s2)
/* C8BAC 801127EC 8E830024 */  lw         $v1, 0x24($s4)
/* C8BB0 801127F0 24020003 */  addiu      $v0, $zero, 0x3
/* C8BB4 801127F4 AE420000 */  sw         $v0, 0x0($s2)
/* C8BB8 801127F8 AE4301F8 */  sw         $v1, 0x1F8($s2)
/* C8BBC 801127FC 8E820030 */  lw         $v0, 0x30($s4)
/* C8BC0 80112800 10400002 */  beqz       $v0, .Lrace_8011280C
/* C8BC4 80112804 24020007 */   addiu     $v0, $zero, 0x7
/* C8BC8 80112808 AE420000 */  sw         $v0, 0x0($s2)
.Lrace_8011280C:
/* C8BCC 8011280C C6600020 */  lwc1       $f0, 0x20($s3)
/* C8BD0 80112810 26510074 */  addiu      $s1, $s2, 0x74
/* C8BD4 80112814 E64001B0 */  swc1       $f0, 0x1B0($s2)
/* C8BD8 80112818 C6600024 */  lwc1       $f0, 0x24($s3)
/* C8BDC 8011281C 02202021 */  addu       $a0, $s1, $zero
/* C8BE0 80112820 E64001B4 */  swc1       $f0, 0x1B4($s2)
/* C8BE4 80112824 C6600028 */  lwc1       $f0, 0x28($s3)
/* C8BE8 80112828 26650030 */  addiu      $a1, $s3, 0x30
/* C8BEC 8011282C E64001B8 */  swc1       $f0, 0x1B8($s2)
/* C8BF0 80112830 C660002C */  lwc1       $f0, 0x2C($s3)
/* C8BF4 80112834 24060008 */  addiu      $a2, $zero, 0x8
/* C8BF8 80112838 0C000708 */  jal        func_80001C20
/* C8BFC 8011283C E64001BC */   swc1      $f0, 0x1BC($s2)
/* C8C00 80112840 26500230 */  addiu      $s0, $s2, 0x230
/* C8C04 80112844 02002021 */  addu       $a0, $s0, $zero
/* C8C08 80112848 8E850000 */  lw         $a1, 0x0($s4)
/* C8C0C 8011284C 0C0152FA */  jal        func_80054BE8
/* C8C10 80112850 24060001 */   addiu     $a2, $zero, 0x1
/* C8C14 80112854 02002021 */  addu       $a0, $s0, $zero
/* C8C18 80112858 00002821 */  addu       $a1, $zero, $zero
/* C8C1C 8011285C 0C015415 */  jal        func_80055054
/* C8C20 80112860 02203021 */   addu      $a2, $s1, $zero
/* C8C24 80112864 2650023C */  addiu      $s0, $s2, 0x23C
/* C8C28 80112868 02002021 */  addu       $a0, $s0, $zero
/* C8C2C 8011286C 8E850000 */  lw         $a1, 0x0($s4)
/* C8C30 80112870 0C0152FA */  jal        func_80054BE8
/* C8C34 80112874 24060001 */   addiu     $a2, $zero, 0x1
/* C8C38 80112878 02002021 */  addu       $a0, $s0, $zero
/* C8C3C 8011287C 00002821 */  addu       $a1, $zero, $zero
/* C8C40 80112880 3C06800D */  lui        $a2, %hi(D_race_800CDE54)
/* C8C44 80112884 0C015415 */  jal        func_80055054
/* C8C48 80112888 24C6DE54 */   addiu     $a2, $a2, %lo(D_race_800CDE54)
/* C8C4C 8011288C 3C078003 */  lui        $a3, %hi(D_8002FAB0)
/* C8C50 80112890 3C061062 */  lui        $a2, (0x10624DD3 >> 16)
/* C8C54 80112894 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C8C58 80112898 8CE4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a3)
/* C8C5C 8011289C 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C8C60 801128A0 24840001 */  addiu      $a0, $a0, 0x1
/* C8C64 801128A4 308403FF */  andi       $a0, $a0, 0x3FF
/* C8C68 801128A8 00041040 */  sll        $v0, $a0, 1
/* C8C6C 801128AC 00431021 */  addu       $v0, $v0, $v1
/* C8C70 801128B0 94450000 */  lhu        $a1, 0x0($v0)
/* C8C74 801128B4 34C64DD3 */  ori        $a2, $a2, (0x10624DD3 & 0xFFFF)
/* C8C78 801128B8 00A60019 */  multu      $a1, $a2
/* C8C7C 801128BC 00004821 */  addu       $t1, $zero, $zero
/* C8C80 801128C0 02604021 */  addu       $t0, $s3, $zero
/* C8C84 801128C4 ACE4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a3)
/* C8C88 801128C8 02403021 */  addu       $a2, $s2, $zero
/* C8C8C 801128CC 00005010 */  mfhi       $t2
/* C8C90 801128D0 000A19C2 */  srl        $v1, $t2, 7
/* C8C94 801128D4 00031140 */  sll        $v0, $v1, 5
/* C8C98 801128D8 00431023 */  subu       $v0, $v0, $v1
/* C8C9C 801128DC 00021080 */  sll        $v0, $v0, 2
/* C8CA0 801128E0 00431021 */  addu       $v0, $v0, $v1
/* C8CA4 801128E4 00021100 */  sll        $v0, $v0, 4
/* C8CA8 801128E8 00A22823 */  subu       $a1, $a1, $v0
/* C8CAC 801128EC 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* C8CB0 801128F0 AE4503A0 */  sw         $a1, 0x3A0($s2)
.Lrace_801128F4:
/* C8CB4 801128F4 8D0B0038 */  lw         $t3, 0x38($t0)
/* C8CB8 801128F8 8D0C003C */  lw         $t4, 0x3C($t0)
/* C8CBC 801128FC 8D0D0040 */  lw         $t5, 0x40($t0)
/* C8CC0 80112900 ACCB01C0 */  sw         $t3, 0x1C0($a2)
/* C8CC4 80112904 ACCC01C4 */  sw         $t4, 0x1C4($a2)
/* C8CC8 80112908 ACCD01C8 */  sw         $t5, 0x1C8($a2)
/* C8CCC 8011290C 2508000C */  addiu      $t0, $t0, 0xC
/* C8CD0 80112910 25290001 */  addiu      $t1, $t1, 0x1
/* C8CD4 80112914 2D220004 */  sltiu      $v0, $t1, 0x4
/* C8CD8 80112918 1440FFF6 */  bnez       $v0, .Lrace_801128F4
/* C8CDC 8011291C 24C6000C */   addiu     $a2, $a2, 0xC
/* C8CE0 80112920 8E440044 */  lw         $a0, 0x44($s2)
/* C8CE4 80112924 0C01971D */  jal        func_80065C74
/* C8CE8 80112928 00002821 */   addu      $a1, $zero, $zero
/* C8CEC 8011292C 8E430044 */  lw         $v1, 0x44($s2)
/* C8CF0 80112930 8C62005C */  lw         $v0, 0x5C($v1)
/* C8CF4 80112934 3C100001 */  lui        $s0, (0x10000 >> 16)
/* C8CF8 80112938 00501025 */  or         $v0, $v0, $s0
/* C8CFC 8011293C AC62005C */  sw         $v0, 0x5C($v1)
/* C8D00 80112940 8E440040 */  lw         $a0, 0x40($s2)
/* C8D04 80112944 10800007 */  beqz       $a0, .Lrace_80112964
/* C8D08 80112948 00000000 */   nop
/* C8D0C 8011294C 0C01971D */  jal        func_80065C74
/* C8D10 80112950 00002821 */   addu      $a1, $zero, $zero
/* C8D14 80112954 8E430040 */  lw         $v1, 0x40($s2)
/* C8D18 80112958 8C62005C */  lw         $v0, 0x5C($v1)
/* C8D1C 8011295C 00501025 */  or         $v0, $v0, $s0
/* C8D20 80112960 AC62005C */  sw         $v0, 0x5C($v1)
.Lrace_80112964:
/* C8D24 80112964 8E440048 */  lw         $a0, 0x48($s2)
/* C8D28 80112968 0C01971D */  jal        func_80065C74
/* C8D2C 8011296C 24050009 */   addiu     $a1, $zero, 0x9
/* C8D30 80112970 8E420048 */  lw         $v0, 0x48($s2)
/* C8D34 80112974 8C43005C */  lw         $v1, 0x5C($v0)
/* C8D38 80112978 00701825 */  or         $v1, $v1, $s0
/* C8D3C 8011297C AC43005C */  sw         $v1, 0x5C($v0)
/* C8D40 80112980 8E82003C */  lw         $v0, 0x3C($s4)
/* C8D44 80112984 30420200 */  andi       $v0, $v0, 0x200
/* C8D48 80112988 10400004 */  beqz       $v0, .Lrace_8011299C
/* C8D4C 8011298C 00000000 */   nop
/* C8D50 80112990 8E420000 */  lw         $v0, 0x0($s2)
/* C8D54 80112994 34420400 */  ori        $v0, $v0, 0x400
/* C8D58 80112998 AE420000 */  sw         $v0, 0x0($s2)
.Lrace_8011299C:
/* C8D5C 8011299C 8E82003C */  lw         $v0, 0x3C($s4)
/* C8D60 801129A0 30420400 */  andi       $v0, $v0, 0x400
/* C8D64 801129A4 10400004 */  beqz       $v0, .Lrace_801129B8
/* C8D68 801129A8 00000000 */   nop
/* C8D6C 801129AC 8E420000 */  lw         $v0, 0x0($s2)
/* C8D70 801129B0 34420800 */  ori        $v0, $v0, 0x800
/* C8D74 801129B4 AE420000 */  sw         $v0, 0x0($s2)
.Lrace_801129B8:
/* C8D78 801129B8 8E82003C */  lw         $v0, 0x3C($s4)
/* C8D7C 801129BC 30420800 */  andi       $v0, $v0, 0x800
/* C8D80 801129C0 10400004 */  beqz       $v0, .Lrace_801129D4
/* C8D84 801129C4 00000000 */   nop
/* C8D88 801129C8 8E420000 */  lw         $v0, 0x0($s2)
/* C8D8C 801129CC 34421000 */  ori        $v0, $v0, 0x1000
/* C8D90 801129D0 AE420000 */  sw         $v0, 0x0($s2)
.Lrace_801129D4:
/* C8D94 801129D4 0C045687 */  jal        func_race_80115A1C
/* C8D98 801129D8 02402021 */   addu      $a0, $s2, $zero
/* C8D9C 801129DC 8FBF0024 */  lw         $ra, 0x24($sp)
/* C8DA0 801129E0 8FB40020 */  lw         $s4, 0x20($sp)
/* C8DA4 801129E4 8FB3001C */  lw         $s3, 0x1C($sp)
/* C8DA8 801129E8 8FB20018 */  lw         $s2, 0x18($sp)
/* C8DAC 801129EC 8FB10014 */  lw         $s1, 0x14($sp)
/* C8DB0 801129F0 8FB00010 */  lw         $s0, 0x10($sp)
/* C8DB4 801129F4 03E00008 */  jr         $ra
/* C8DB8 801129F8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_801129FC
/* C8DBC 801129FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C8DC0 80112A00 AFB00010 */  sw         $s0, 0x10($sp)
/* C8DC4 80112A04 00808021 */  addu       $s0, $a0, $zero
/* C8DC8 80112A08 AFB10014 */  sw         $s1, 0x14($sp)
/* C8DCC 80112A0C 00A08821 */  addu       $s1, $a1, $zero
/* C8DD0 80112A10 AFB20018 */  sw         $s2, 0x18($sp)
/* C8DD4 80112A14 00C09021 */  addu       $s2, $a2, $zero
/* C8DD8 80112A18 00002021 */  addu       $a0, $zero, $zero
/* C8DDC 80112A1C 02002821 */  addu       $a1, $s0, $zero
/* C8DE0 80112A20 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_80112A24:
/* C8DE4 80112A24 2C820003 */  sltiu      $v0, $a0, 0x3
/* C8DE8 80112A28 10400008 */  beqz       $v0, .Lrace_80112A4C
/* C8DEC 80112A2C 00041880 */   sll       $v1, $a0, 2
/* C8DF0 80112A30 8E02003C */  lw         $v0, 0x3C($s0)
/* C8DF4 80112A34 00431021 */  addu       $v0, $v0, $v1
/* C8DF8 80112A38 C4400084 */  lwc1       $f0, 0x84($v0)
/* C8DFC 80112A3C 24840001 */  addiu      $a0, $a0, 0x1
/* C8E00 80112A40 E4A00068 */  swc1       $f0, 0x68($a1)
/* C8E04 80112A44 08044A89 */  j          .Lrace_80112A24
/* C8E08 80112A48 24A50004 */   addiu     $a1, $a1, 0x4
.Lrace_80112A4C:
/* C8E0C 80112A4C 0C044E89 */  jal        func_race_80113A24
/* C8E10 80112A50 02002021 */   addu      $a0, $s0, $zero
/* C8E14 80112A54 02002021 */  addu       $a0, $s0, $zero
/* C8E18 80112A58 0C045635 */  jal        func_race_801158D4
/* C8E1C 80112A5C 02202821 */   addu      $a1, $s1, $zero
/* C8E20 80112A60 2604007C */  addiu      $a0, $s0, 0x7C
/* C8E24 80112A64 02402821 */  addu       $a1, $s2, $zero
/* C8E28 80112A68 02203021 */  addu       $a2, $s1, $zero
/* C8E2C 80112A6C 0C039B0E */  jal        func_race_800E6C38
/* C8E30 80112A70 24070010 */   addiu     $a3, $zero, 0x10
/* C8E34 80112A74 2603008C */  addiu      $v1, $s0, 0x8C
/* C8E38 80112A78 8C62005C */  lw         $v0, 0x5C($v1)
/* C8E3C 80112A7C 34420002 */  ori        $v0, $v0, 0x2
/* C8E40 80112A80 AC62005C */  sw         $v0, 0x5C($v1)
/* C8E44 80112A84 8FBF001C */  lw         $ra, 0x1C($sp)
/* C8E48 80112A88 8FB20018 */  lw         $s2, 0x18($sp)
/* C8E4C 80112A8C 8FB10014 */  lw         $s1, 0x14($sp)
/* C8E50 80112A90 8FB00010 */  lw         $s0, 0x10($sp)
/* C8E54 80112A94 03E00008 */  jr         $ra
/* C8E58 80112A98 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80112A9C
/* C8E5C 80112A9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8E60 80112AA0 00A03021 */  addu       $a2, $a1, $zero
/* C8E64 80112AA4 24840230 */  addiu      $a0, $a0, 0x230
/* C8E68 80112AA8 AFBF0010 */  sw         $ra, 0x10($sp)
/* C8E6C 80112AAC 0C01543D */  jal        func_800550F4
/* C8E70 80112AB0 00002821 */   addu      $a1, $zero, $zero
/* C8E74 80112AB4 8FBF0010 */  lw         $ra, 0x10($sp)
/* C8E78 80112AB8 03E00008 */  jr         $ra
/* C8E7C 80112ABC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80112AC0
/* C8E80 80112AC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8E84 80112AC4 00803021 */  addu       $a2, $a0, $zero
/* C8E88 80112AC8 24C40230 */  addiu      $a0, $a2, 0x230
/* C8E8C 80112ACC 00002821 */  addu       $a1, $zero, $zero
/* C8E90 80112AD0 AFBF0010 */  sw         $ra, 0x10($sp)
/* C8E94 80112AD4 0C015415 */  jal        func_80055054
/* C8E98 80112AD8 24C60074 */   addiu     $a2, $a2, 0x74
/* C8E9C 80112ADC 8FBF0010 */  lw         $ra, 0x10($sp)
/* C8EA0 80112AE0 03E00008 */  jr         $ra
/* C8EA4 80112AE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80112AE8
/* C8EA8 80112AE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8EAC 80112AEC 3C06800D */  lui        $a2, %hi(D_race_800CDE5C)
/* C8EB0 80112AF0 2484023C */  addiu      $a0, $a0, 0x23C
/* C8EB4 80112AF4 00002821 */  addu       $a1, $zero, $zero
/* C8EB8 80112AF8 AFBF0010 */  sw         $ra, 0x10($sp)
/* C8EBC 80112AFC 0C015415 */  jal        func_80055054
/* C8EC0 80112B00 24C6DE5C */   addiu     $a2, $a2, %lo(D_race_800CDE5C)
/* C8EC4 80112B04 8FBF0010 */  lw         $ra, 0x10($sp)
/* C8EC8 80112B08 03E00008 */  jr         $ra
/* C8ECC 80112B0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80112B10
/* C8ED0 80112B10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8ED4 80112B14 3C06800D */  lui        $a2, %hi(D_race_800CDE54)
/* C8ED8 80112B18 2484023C */  addiu      $a0, $a0, 0x23C
/* C8EDC 80112B1C 00002821 */  addu       $a1, $zero, $zero
/* C8EE0 80112B20 AFBF0010 */  sw         $ra, 0x10($sp)
/* C8EE4 80112B24 0C015415 */  jal        func_80055054
/* C8EE8 80112B28 24C6DE54 */   addiu     $a2, $a2, %lo(D_race_800CDE54)
/* C8EEC 80112B2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* C8EF0 80112B30 03E00008 */  jr         $ra
/* C8EF4 80112B34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80112B38
/* C8EF8 80112B38 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C8EFC 80112B3C AFB10014 */  sw         $s1, 0x14($sp)
/* C8F00 80112B40 00808821 */  addu       $s1, $a0, $zero
/* C8F04 80112B44 2624029C */  addiu      $a0, $s1, 0x29C
/* C8F08 80112B48 AFBF0020 */  sw         $ra, 0x20($sp)
/* C8F0C 80112B4C AFB3001C */  sw         $s3, 0x1C($sp)
/* C8F10 80112B50 AFB20018 */  sw         $s2, 0x18($sp)
/* C8F14 80112B54 0C01958C */  jal        func_80065630
/* C8F18 80112B58 AFB00010 */   sw        $s0, 0x10($sp)
/* C8F1C 80112B5C 0C039B58 */  jal        func_race_800E6D60
/* C8F20 80112B60 2624007C */   addiu     $a0, $s1, 0x7C
/* C8F24 80112B64 0C0153DC */  jal        func_80054F70
/* C8F28 80112B68 2624023C */   addiu     $a0, $s1, 0x23C
/* C8F2C 80112B6C 0C0153DC */  jal        func_80054F70
/* C8F30 80112B70 26240230 */   addiu     $a0, $s1, 0x230
/* C8F34 80112B74 8E25028C */  lw         $a1, 0x28C($s1)
/* C8F38 80112B78 10A00005 */  beqz       $a1, .Lrace_80112B90
/* C8F3C 80112B7C 00000000 */   nop
/* C8F40 80112B80 8E240294 */  lw         $a0, 0x294($s1)
/* C8F44 80112B84 0C01087B */  jal        func_800421EC
/* C8F48 80112B88 00000000 */   nop
/* C8F4C 80112B8C AE20028C */  sw         $zero, 0x28C($s1)
.Lrace_80112B90:
/* C8F50 80112B90 8E250290 */  lw         $a1, 0x290($s1)
/* C8F54 80112B94 10A00005 */  beqz       $a1, .Lrace_80112BAC
/* C8F58 80112B98 00000000 */   nop
/* C8F5C 80112B9C 8E240294 */  lw         $a0, 0x294($s1)
/* C8F60 80112BA0 0C01087B */  jal        func_800421EC
/* C8F64 80112BA4 00000000 */   nop
/* C8F68 80112BA8 AE200290 */  sw         $zero, 0x290($s1)
.Lrace_80112BAC:
/* C8F6C 80112BAC 8E250288 */  lw         $a1, 0x288($s1)
/* C8F70 80112BB0 10A00005 */  beqz       $a1, .Lrace_80112BC8
/* C8F74 80112BB4 00009821 */   addu      $s3, $zero, $zero
/* C8F78 80112BB8 8E240294 */  lw         $a0, 0x294($s1)
/* C8F7C 80112BBC 0C01087B */  jal        func_800421EC
/* C8F80 80112BC0 00000000 */   nop
/* C8F84 80112BC4 AE200288 */  sw         $zero, 0x288($s1)
.Lrace_80112BC8:
/* C8F88 80112BC8 02209021 */  addu       $s2, $s1, $zero
/* C8F8C 80112BCC 02208021 */  addu       $s0, $s1, $zero
.Lrace_80112BD0:
/* C8F90 80112BD0 8E050248 */  lw         $a1, 0x248($s0)
/* C8F94 80112BD4 50A0000D */  beql       $a1, $zero, .Lrace_80112C0C
/* C8F98 80112BD8 26520008 */   addiu     $s2, $s2, 0x8
/* C8F9C 80112BDC 8E020278 */  lw         $v0, 0x278($s0)
/* C8FA0 80112BE0 10400004 */  beqz       $v0, .Lrace_80112BF4
/* C8FA4 80112BE4 00000000 */   nop
/* C8FA8 80112BE8 8E240294 */  lw         $a0, 0x294($s1)
/* C8FAC 80112BEC 08044AFE */  j          .Lrace_80112BF8
/* C8FB0 80112BF0 00000000 */   nop
.Lrace_80112BF4:
/* C8FB4 80112BF4 8E240298 */  lw         $a0, 0x298($s1)
.Lrace_80112BF8:
/* C8FB8 80112BF8 0C01087B */  jal        func_800421EC
/* C8FBC 80112BFC 00000000 */   nop
/* C8FC0 80112C00 AE000248 */  sw         $zero, 0x248($s0)
/* C8FC4 80112C04 A2400258 */  sb         $zero, 0x258($s2)
/* C8FC8 80112C08 26520008 */  addiu      $s2, $s2, 0x8
.Lrace_80112C0C:
/* C8FCC 80112C0C 26730001 */  addiu      $s3, $s3, 0x1
/* C8FD0 80112C10 2E620004 */  sltiu      $v0, $s3, 0x4
/* C8FD4 80112C14 1440FFEE */  bnez       $v0, .Lrace_80112BD0
/* C8FD8 80112C18 26100004 */   addiu     $s0, $s0, 0x4
/* C8FDC 80112C1C 2624007C */  addiu      $a0, $s1, 0x7C
/* C8FE0 80112C20 0C039B58 */  jal        func_race_800E6D60
/* C8FE4 80112C24 AE200294 */   sw        $zero, 0x294($s1)
/* C8FE8 80112C28 0C0153DC */  jal        func_80054F70
/* C8FEC 80112C2C 2624023C */   addiu     $a0, $s1, 0x23C
/* C8FF0 80112C30 0C0153DC */  jal        func_80054F70
/* C8FF4 80112C34 26240230 */   addiu     $a0, $s1, 0x230
/* C8FF8 80112C38 0C04499A */  jal        func_race_80112668
/* C8FFC 80112C3C 02202021 */   addu      $a0, $s1, $zero
/* C9000 80112C40 8FBF0020 */  lw         $ra, 0x20($sp)
/* C9004 80112C44 8FB3001C */  lw         $s3, 0x1C($sp)
/* C9008 80112C48 8FB20018 */  lw         $s2, 0x18($sp)
/* C900C 80112C4C 8FB10014 */  lw         $s1, 0x14($sp)
/* C9010 80112C50 8FB00010 */  lw         $s0, 0x10($sp)
/* C9014 80112C54 03E00008 */  jr         $ra
/* C9018 80112C58 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80112C5C
/* C901C 80112C5C 00003021 */  addu       $a2, $zero, $zero
/* C9020 80112C60 8C820000 */  lw         $v0, 0x0($a0)
/* C9024 80112C64 00802821 */  addu       $a1, $a0, $zero
/* C9028 80112C68 34420002 */  ori        $v0, $v0, 0x2
/* C902C 80112C6C AC820000 */  sw         $v0, 0x0($a0)
.Lrace_80112C70:
/* C9030 80112C70 2CC20003 */  sltiu      $v0, $a2, 0x3
/* C9034 80112C74 10400015 */  beqz       $v0, .Lrace_80112CCC
/* C9038 80112C78 00061880 */   sll       $v1, $a2, 2
/* C903C 80112C7C 8C82003C */  lw         $v0, 0x3C($a0)
/* C9040 80112C80 C4A00068 */  lwc1       $f0, 0x68($a1)
/* C9044 80112C84 00431021 */  addu       $v0, $v0, $v1
/* C9048 80112C88 E4400084 */  swc1       $f0, 0x84($v0)
/* C904C 80112C8C 8C820044 */  lw         $v0, 0x44($a0)
/* C9050 80112C90 C4A00068 */  lwc1       $f0, 0x68($a1)
/* C9054 80112C94 00431021 */  addu       $v0, $v0, $v1
/* C9058 80112C98 E4400084 */  swc1       $f0, 0x84($v0)
/* C905C 80112C9C 8C820048 */  lw         $v0, 0x48($a0)
/* C9060 80112CA0 C4A00068 */  lwc1       $f0, 0x68($a1)
/* C9064 80112CA4 00431021 */  addu       $v0, $v0, $v1
/* C9068 80112CA8 E4400084 */  swc1       $f0, 0x84($v0)
/* C906C 80112CAC 8C820040 */  lw         $v0, 0x40($a0)
/* C9070 80112CB0 10400003 */  beqz       $v0, .Lrace_80112CC0
/* C9074 80112CB4 00431021 */   addu      $v0, $v0, $v1
/* C9078 80112CB8 C4A00068 */  lwc1       $f0, 0x68($a1)
/* C907C 80112CBC E4400084 */  swc1       $f0, 0x84($v0)
.Lrace_80112CC0:
/* C9080 80112CC0 24A50004 */  addiu      $a1, $a1, 0x4
/* C9084 80112CC4 08044B1C */  j          .Lrace_80112C70
/* C9088 80112CC8 24C60001 */   addiu     $a2, $a2, 0x1
.Lrace_80112CCC:
/* C908C 80112CCC 03E00008 */  jr         $ra
/* C9090 80112CD0 00000000 */   nop

glabel func_race_80112CD4
/* C9094 80112CD4 00002821 */  addu       $a1, $zero, $zero
/* C9098 80112CD8 8C820000 */  lw         $v0, 0x0($a0)
/* C909C 80112CDC 2403FFFD */  addiu      $v1, $zero, -0x3
/* C90A0 80112CE0 00431024 */  and        $v0, $v0, $v1
/* C90A4 80112CE4 AC820000 */  sw         $v0, 0x0($a0)
.Lrace_80112CE8:
/* C90A8 80112CE8 2CA20003 */  sltiu      $v0, $a1, 0x3
/* C90AC 80112CEC 10400012 */  beqz       $v0, .Lrace_80112D38
/* C90B0 80112CF0 00051880 */   sll       $v1, $a1, 2
/* C90B4 80112CF4 8C82003C */  lw         $v0, 0x3C($a0)
/* C90B8 80112CF8 3C01800D */  lui        $at, %hi(D_race_800CDE64)
/* C90BC 80112CFC C420DE64 */  lwc1       $f0, %lo(D_race_800CDE64)($at)
/* C90C0 80112D00 00431021 */  addu       $v0, $v0, $v1
/* C90C4 80112D04 E4400084 */  swc1       $f0, 0x84($v0)
/* C90C8 80112D08 8C820044 */  lw         $v0, 0x44($a0)
/* C90CC 80112D0C 00431021 */  addu       $v0, $v0, $v1
/* C90D0 80112D10 E4400084 */  swc1       $f0, 0x84($v0)
/* C90D4 80112D14 8C820048 */  lw         $v0, 0x48($a0)
/* C90D8 80112D18 00431021 */  addu       $v0, $v0, $v1
/* C90DC 80112D1C E4400084 */  swc1       $f0, 0x84($v0)
/* C90E0 80112D20 8C820040 */  lw         $v0, 0x40($a0)
/* C90E4 80112D24 10400002 */  beqz       $v0, .Lrace_80112D30
/* C90E8 80112D28 00431021 */   addu      $v0, $v0, $v1
/* C90EC 80112D2C E4400084 */  swc1       $f0, 0x84($v0)
.Lrace_80112D30:
/* C90F0 80112D30 08044B3A */  j          .Lrace_80112CE8
/* C90F4 80112D34 24A50001 */   addiu     $a1, $a1, 0x1
.Lrace_80112D38:
/* C90F8 80112D38 03E00008 */  jr         $ra
/* C90FC 80112D3C 00000000 */   nop

glabel func_race_80112D40
/* C9100 80112D40 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C9104 80112D44 AFB00028 */  sw         $s0, 0x28($sp)
/* C9108 80112D48 00808021 */  addu       $s0, $a0, $zero
/* C910C 80112D4C AFBF0030 */  sw         $ra, 0x30($sp)
/* C9110 80112D50 AFB1002C */  sw         $s1, 0x2C($sp)
/* C9114 80112D54 8E0201F0 */  lw         $v0, 0x1F0($s0)
/* C9118 80112D58 8C420D04 */  lw         $v0, 0xD04($v0)
/* C911C 80112D5C 30420008 */  andi       $v0, $v0, 0x8
/* C9120 80112D60 1440003C */  bnez       $v0, .Lrace_80112E54
/* C9124 80112D64 00002021 */   addu      $a0, $zero, $zero
/* C9128 80112D68 24050001 */  addiu      $a1, $zero, 0x1
/* C912C 80112D6C 02001821 */  addu       $v1, $s0, $zero
.Lrace_80112D70:
/* C9130 80112D70 2C820004 */  sltiu      $v0, $a0, 0x4
/* C9134 80112D74 10400011 */  beqz       $v0, .Lrace_80112DBC
/* C9138 80112D78 00000000 */   nop
/* C913C 80112D7C 8E0201F4 */  lw         $v0, 0x1F4($s0)
/* C9140 80112D80 8C4206AC */  lw         $v0, 0x6AC($v0)
/* C9144 80112D84 30420002 */  andi       $v0, $v0, 0x2
/* C9148 80112D88 54400009 */  bnel       $v0, $zero, .Lrace_80112DB0
/* C914C 80112D8C A065020C */   sb        $a1, 0x20C($v1)
/* C9150 80112D90 2C820002 */  sltiu      $v0, $a0, 0x2
/* C9154 80112D94 14400003 */  bnez       $v0, .Lrace_80112DA4
/* C9158 80112D98 00000000 */   nop
/* C915C 80112D9C 08044B6C */  j          .Lrace_80112DB0
/* C9160 80112DA0 A065020C */   sb        $a1, 0x20C($v1)
.Lrace_80112DA4:
/* C9164 80112DA4 9062020C */  lbu        $v0, 0x20C($v1)
/* C9168 80112DA8 304200FC */  andi       $v0, $v0, 0xFC
/* C916C 80112DAC A062020C */  sb         $v0, 0x20C($v1)
.Lrace_80112DB0:
/* C9170 80112DB0 24630001 */  addiu      $v1, $v1, 0x1
/* C9174 80112DB4 08044B5C */  j          .Lrace_80112D70
/* C9178 80112DB8 24840001 */   addiu     $a0, $a0, 0x1
.Lrace_80112DBC:
/* C917C 80112DBC 8E02028C */  lw         $v0, 0x28C($s0)
/* C9180 80112DC0 14400021 */  bnez       $v0, .Lrace_80112E48
/* C9184 80112DC4 00003021 */   addu      $a2, $zero, $zero
/* C9188 80112DC8 3C05800D */  lui        $a1, %hi(D_race_800CDE68)
/* C918C 80112DCC 24A5DE68 */  addiu      $a1, $a1, %lo(D_race_800CDE68)
/* C9190 80112DD0 AFA00010 */  sw         $zero, 0x10($sp)
/* C9194 80112DD4 8E040294 */  lw         $a0, 0x294($s0)
/* C9198 80112DD8 0C0107DD */  jal        func_80041F74
/* C919C 80112DDC 00C03821 */   addu      $a3, $a2, $zero
/* C91A0 80112DE0 10400019 */  beqz       $v0, .Lrace_80112E48
/* C91A4 80112DE4 AE02028C */   sw        $v0, 0x28C($s0)
/* C91A8 80112DE8 8E0201F4 */  lw         $v0, 0x1F4($s0)
/* C91AC 80112DEC 8C4802F8 */  lw         $t0, 0x2F8($v0)
/* C91B0 80112DF0 8C4902FC */  lw         $t1, 0x2FC($v0)
/* C91B4 80112DF4 8C4A0300 */  lw         $t2, 0x300($v0)
/* C91B8 80112DF8 AFA80018 */  sw         $t0, 0x18($sp)
/* C91BC 80112DFC AFA9001C */  sw         $t1, 0x1C($sp)
/* C91C0 80112E00 AFAA0020 */  sw         $t2, 0x20($sp)
/* C91C4 80112E04 8E02028C */  lw         $v0, 0x28C($s0)
/* C91C8 80112E08 8C450000 */  lw         $a1, 0x0($v0)
/* C91CC 80112E0C 8E030044 */  lw         $v1, 0x44($s0)
/* C91D0 80112E10 10A00008 */  beqz       $a1, .Lrace_80112E34
/* C91D4 80112E14 27B10018 */   addiu     $s1, $sp, 0x18
/* C91D8 80112E18 8C620024 */  lw         $v0, 0x24($v1)
/* C91DC 80112E1C 24A50168 */  addiu      $a1, $a1, 0x168
/* C91E0 80112E20 84440090 */  lh         $a0, 0x90($v0)
/* C91E4 80112E24 8C420094 */  lw         $v0, 0x94($v0)
/* C91E8 80112E28 0040F809 */  jalr       $v0
/* C91EC 80112E2C 00642021 */   addu      $a0, $v1, $a0
/* C91F0 80112E30 8E02028C */  lw         $v0, 0x28C($s0)
.Lrace_80112E34:
/* C91F4 80112E34 8C440000 */  lw         $a0, 0x0($v0)
/* C91F8 80112E38 10800003 */  beqz       $a0, .Lrace_80112E48
/* C91FC 80112E3C 00000000 */   nop
/* C9200 80112E40 0C01058D */  jal        func_80041634
/* C9204 80112E44 02202821 */   addu      $a1, $s1, $zero
.Lrace_80112E48:
/* C9208 80112E48 8E020000 */  lw         $v0, 0x0($s0)
/* C920C 80112E4C 34420008 */  ori        $v0, $v0, 0x8
/* C9210 80112E50 AE020000 */  sw         $v0, 0x0($s0)
.Lrace_80112E54:
/* C9214 80112E54 8FBF0030 */  lw         $ra, 0x30($sp)
/* C9218 80112E58 8FB1002C */  lw         $s1, 0x2C($sp)
/* C921C 80112E5C 8FB00028 */  lw         $s0, 0x28($sp)
/* C9220 80112E60 03E00008 */  jr         $ra
/* C9224 80112E64 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_80112E68
/* C9228 80112E68 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C922C 80112E6C AFB20018 */  sw         $s2, 0x18($sp)
/* C9230 80112E70 00809021 */  addu       $s2, $a0, $zero
/* C9234 80112E74 AFB10014 */  sw         $s1, 0x14($sp)
/* C9238 80112E78 00008821 */  addu       $s1, $zero, $zero
/* C923C 80112E7C AFB00010 */  sw         $s0, 0x10($sp)
/* C9240 80112E80 02408021 */  addu       $s0, $s2, $zero
/* C9244 80112E84 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_80112E88:
/* C9248 80112E88 8E0501FC */  lw         $a1, 0x1FC($s0)
/* C924C 80112E8C 10A00006 */  beqz       $a1, .Lrace_80112EA8
/* C9250 80112E90 02511821 */   addu      $v1, $s2, $s1
/* C9254 80112E94 8E4401F8 */  lw         $a0, 0x1F8($s2)
/* C9258 80112E98 0C03492E */  jal        func_race_800D24B8
/* C925C 80112E9C 240603E8 */   addiu     $a2, $zero, 0x3E8
/* C9260 80112EA0 AE0001FC */  sw         $zero, 0x1FC($s0)
/* C9264 80112EA4 02511821 */  addu       $v1, $s2, $s1
.Lrace_80112EA8:
/* C9268 80112EA8 9064020C */  lbu        $a0, 0x20C($v1)
/* C926C 80112EAC 30820002 */  andi       $v0, $a0, 0x2
/* C9270 80112EB0 10400004 */  beqz       $v0, .Lrace_80112EC4
/* C9274 80112EB4 308200FD */   andi      $v0, $a0, 0xFD
/* C9278 80112EB8 34420004 */  ori        $v0, $v0, 0x4
/* C927C 80112EBC 08044BB2 */  j          .Lrace_80112EC8
/* C9280 80112EC0 A062020C */   sb        $v0, 0x20C($v1)
.Lrace_80112EC4:
/* C9284 80112EC4 A060020C */  sb         $zero, 0x20C($v1)
.Lrace_80112EC8:
/* C9288 80112EC8 26310001 */  addiu      $s1, $s1, 0x1
/* C928C 80112ECC 2E220004 */  sltiu      $v0, $s1, 0x4
/* C9290 80112ED0 1440FFED */  bnez       $v0, .Lrace_80112E88
/* C9294 80112ED4 26100004 */   addiu     $s0, $s0, 0x4
/* C9298 80112ED8 8E45028C */  lw         $a1, 0x28C($s2)
/* C929C 80112EDC 10A00005 */  beqz       $a1, .Lrace_80112EF4
/* C92A0 80112EE0 00000000 */   nop
/* C92A4 80112EE4 8E440294 */  lw         $a0, 0x294($s2)
/* C92A8 80112EE8 0C01088C */  jal        func_80042230
/* C92AC 80112EEC 00000000 */   nop
/* C92B0 80112EF0 AE40028C */  sw         $zero, 0x28C($s2)
.Lrace_80112EF4:
/* C92B4 80112EF4 8E420000 */  lw         $v0, 0x0($s2)
/* C92B8 80112EF8 2403FFF7 */  addiu      $v1, $zero, -0x9
/* C92BC 80112EFC 00431024 */  and        $v0, $v0, $v1
/* C92C0 80112F00 AE420000 */  sw         $v0, 0x0($s2)
/* C92C4 80112F04 8FBF001C */  lw         $ra, 0x1C($sp)
/* C92C8 80112F08 8FB20018 */  lw         $s2, 0x18($sp)
/* C92CC 80112F0C 8FB10014 */  lw         $s1, 0x14($sp)
/* C92D0 80112F10 8FB00010 */  lw         $s0, 0x10($sp)
/* C92D4 80112F14 03E00008 */  jr         $ra
/* C92D8 80112F18 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80112F1C
/* C92DC 80112F1C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C92E0 80112F20 AFB1002C */  sw         $s1, 0x2C($sp)
/* C92E4 80112F24 00808821 */  addu       $s1, $a0, $zero
/* C92E8 80112F28 AFB30034 */  sw         $s3, 0x34($sp)
/* C92EC 80112F2C 00A09821 */  addu       $s3, $a1, $zero
/* C92F0 80112F30 00131080 */  sll        $v0, $s3, 2
/* C92F4 80112F34 AFB00028 */  sw         $s0, 0x28($sp)
/* C92F8 80112F38 02228021 */  addu       $s0, $s1, $v0
/* C92FC 80112F3C AFBF0038 */  sw         $ra, 0x38($sp)
/* C9300 80112F40 AFB20030 */  sw         $s2, 0x30($sp)
/* C9304 80112F44 8E020248 */  lw         $v0, 0x248($s0)
/* C9308 80112F48 1040000E */  beqz       $v0, .Lrace_80112F84
/* C930C 80112F4C 00C09021 */   addu      $s2, $a2, $zero
/* C9310 80112F50 001320C0 */  sll        $a0, $s3, 3
/* C9314 80112F54 24840258 */  addiu      $a0, $a0, 0x258
/* C9318 80112F58 02242021 */  addu       $a0, $s1, $a0
/* C931C 80112F5C 02402821 */  addu       $a1, $s2, $zero
/* C9320 80112F60 0C0006B2 */  jal        func_80001AC8
/* C9324 80112F64 24060008 */   addiu     $a2, $zero, 0x8
/* C9328 80112F68 1040004A */  beqz       $v0, .Lrace_80113094
/* C932C 80112F6C 00000000 */   nop
/* C9330 80112F70 8E240294 */  lw         $a0, 0x294($s1)
/* C9334 80112F74 8E050248 */  lw         $a1, 0x248($s0)
/* C9338 80112F78 0C01087B */  jal        func_800421EC
/* C933C 80112F7C 00000000 */   nop
/* C9340 80112F80 AE000248 */  sw         $zero, 0x248($s0)
.Lrace_80112F84:
/* C9344 80112F84 001310C0 */  sll        $v0, $s3, 3
/* C9348 80112F88 00511021 */  addu       $v0, $v0, $s1
/* C934C 80112F8C 8A480000 */  lwl        $t0, 0x0($s2)
/* C9350 80112F90 9A480003 */  lwr        $t0, 0x3($s2)
/* C9354 80112F94 8A490004 */  lwl        $t1, 0x4($s2)
/* C9358 80112F98 9A490007 */  lwr        $t1, 0x7($s2)
/* C935C 80112F9C A8480258 */  swl        $t0, 0x258($v0)
/* C9360 80112FA0 B848025B */  swr        $t0, 0x25B($v0)
/* C9364 80112FA4 A849025C */  swl        $t1, 0x25C($v0)
/* C9368 80112FA8 B849025F */  swr        $t1, 0x25F($v0)
/* C936C 80112FAC 8E240294 */  lw         $a0, 0x294($s1)
/* C9370 80112FB0 0C0107D5 */  jal        func_80041F54
/* C9374 80112FB4 02402821 */   addu      $a1, $s2, $zero
/* C9378 80112FB8 1040000A */  beqz       $v0, .Lrace_80112FE4
/* C937C 80112FBC 02402821 */   addu      $a1, $s2, $zero
/* C9380 80112FC0 00003021 */  addu       $a2, $zero, $zero
/* C9384 80112FC4 AFA00010 */  sw         $zero, 0x10($sp)
/* C9388 80112FC8 8E240294 */  lw         $a0, 0x294($s1)
/* C938C 80112FCC 0C0107DD */  jal        func_80041F74
/* C9390 80112FD0 00C03821 */   addu      $a3, $a2, $zero
/* C9394 80112FD4 AE020248 */  sw         $v0, 0x248($s0)
/* C9398 80112FD8 24020001 */  addiu      $v0, $zero, 0x1
/* C939C 80112FDC 08044C05 */  j          .Lrace_80113014
/* C93A0 80112FE0 AE020278 */   sw        $v0, 0x278($s0)
.Lrace_80112FE4:
/* C93A4 80112FE4 8E240298 */  lw         $a0, 0x298($s1)
/* C93A8 80112FE8 0C0107D5 */  jal        func_80041F54
/* C93AC 80112FEC 02402821 */   addu      $a1, $s2, $zero
/* C93B0 80112FF0 10400008 */  beqz       $v0, .Lrace_80113014
/* C93B4 80112FF4 02402821 */   addu      $a1, $s2, $zero
/* C93B8 80112FF8 00003021 */  addu       $a2, $zero, $zero
/* C93BC 80112FFC AFA00010 */  sw         $zero, 0x10($sp)
/* C93C0 80113000 8E240298 */  lw         $a0, 0x298($s1)
/* C93C4 80113004 0C0107DD */  jal        func_80041F74
/* C93C8 80113008 00C03821 */   addu      $a3, $a2, $zero
/* C93CC 8011300C AE020248 */  sw         $v0, 0x248($s0)
/* C93D0 80113010 AE000278 */  sw         $zero, 0x278($s0)
.Lrace_80113014:
/* C93D4 80113014 00131080 */  sll        $v0, $s3, 2
/* C93D8 80113018 02228021 */  addu       $s0, $s1, $v0
/* C93DC 8011301C 8E020248 */  lw         $v0, 0x248($s0)
/* C93E0 80113020 1040001C */  beqz       $v0, .Lrace_80113094
/* C93E4 80113024 001310C0 */   sll       $v0, $s3, 3
/* C93E8 80113028 00531023 */  subu       $v0, $v0, $s3
/* C93EC 8011302C 8E2301F4 */  lw         $v1, 0x1F4($s1)
/* C93F0 80113030 00021100 */  sll        $v0, $v0, 4
/* C93F4 80113034 00621821 */  addu       $v1, $v1, $v0
/* C93F8 80113038 8C6801A8 */  lw         $t0, 0x1A8($v1)
/* C93FC 8011303C 8C6901AC */  lw         $t1, 0x1AC($v1)
/* C9400 80113040 8C6A01B0 */  lw         $t2, 0x1B0($v1)
/* C9404 80113044 AFA80018 */  sw         $t0, 0x18($sp)
/* C9408 80113048 AFA9001C */  sw         $t1, 0x1C($sp)
/* C940C 8011304C AFAA0020 */  sw         $t2, 0x20($sp)
/* C9410 80113050 8E020248 */  lw         $v0, 0x248($s0)
/* C9414 80113054 8C450000 */  lw         $a1, 0x0($v0)
/* C9418 80113058 8E230044 */  lw         $v1, 0x44($s1)
/* C941C 8011305C 10A00008 */  beqz       $a1, .Lrace_80113080
/* C9420 80113060 27B20018 */   addiu     $s2, $sp, 0x18
/* C9424 80113064 8C620024 */  lw         $v0, 0x24($v1)
/* C9428 80113068 24A50168 */  addiu      $a1, $a1, 0x168
/* C942C 8011306C 84440090 */  lh         $a0, 0x90($v0)
/* C9430 80113070 8C420094 */  lw         $v0, 0x94($v0)
/* C9434 80113074 0040F809 */  jalr       $v0
/* C9438 80113078 00642021 */   addu      $a0, $v1, $a0
/* C943C 8011307C 8E020248 */  lw         $v0, 0x248($s0)
.Lrace_80113080:
/* C9440 80113080 8C440000 */  lw         $a0, 0x0($v0)
/* C9444 80113084 10800003 */  beqz       $a0, .Lrace_80113094
/* C9448 80113088 00000000 */   nop
/* C944C 8011308C 0C01058D */  jal        func_80041634
/* C9450 80113090 02402821 */   addu      $a1, $s2, $zero
.Lrace_80113094:
/* C9454 80113094 8FBF0038 */  lw         $ra, 0x38($sp)
/* C9458 80113098 8FB30034 */  lw         $s3, 0x34($sp)
/* C945C 8011309C 8FB20030 */  lw         $s2, 0x30($sp)
/* C9460 801130A0 8FB1002C */  lw         $s1, 0x2C($sp)
/* C9464 801130A4 8FB00028 */  lw         $s0, 0x28($sp)
/* C9468 801130A8 03E00008 */  jr         $ra
/* C946C 801130AC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_801130B0
/* C9470 801130B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C9474 801130B4 AFB00010 */  sw         $s0, 0x10($sp)
/* C9478 801130B8 00808021 */  addu       $s0, $a0, $zero
/* C947C 801130BC AFB10014 */  sw         $s1, 0x14($sp)
/* C9480 801130C0 00A08821 */  addu       $s1, $a1, $zero
/* C9484 801130C4 00111080 */  sll        $v0, $s1, 2
/* C9488 801130C8 02021821 */  addu       $v1, $s0, $v0
/* C948C 801130CC AFBF0018 */  sw         $ra, 0x18($sp)
/* C9490 801130D0 8C620248 */  lw         $v0, 0x248($v1)
/* C9494 801130D4 10400010 */  beqz       $v0, .Lrace_80113118
/* C9498 801130D8 001110C0 */   sll       $v0, $s1, 3
/* C949C 801130DC 02021021 */  addu       $v0, $s0, $v0
/* C94A0 801130E0 A0400258 */  sb         $zero, 0x258($v0)
/* C94A4 801130E4 8C620278 */  lw         $v0, 0x278($v1)
/* C94A8 801130E8 10400004 */  beqz       $v0, .Lrace_801130FC
/* C94AC 801130EC 00000000 */   nop
/* C94B0 801130F0 8E040294 */  lw         $a0, 0x294($s0)
/* C94B4 801130F4 08044C40 */  j          .Lrace_80113100
/* C94B8 801130F8 00000000 */   nop
.Lrace_801130FC:
/* C94BC 801130FC 8E040298 */  lw         $a0, 0x298($s0)
.Lrace_80113100:
/* C94C0 80113100 8C650248 */  lw         $a1, 0x248($v1)
/* C94C4 80113104 0C01087B */  jal        func_800421EC
/* C94C8 80113108 00000000 */   nop
/* C94CC 8011310C 00111080 */  sll        $v0, $s1, 2
/* C94D0 80113110 02021021 */  addu       $v0, $s0, $v0
/* C94D4 80113114 AC400248 */  sw         $zero, 0x248($v0)
.Lrace_80113118:
/* C94D8 80113118 8FBF0018 */  lw         $ra, 0x18($sp)
/* C94DC 8011311C 8FB10014 */  lw         $s1, 0x14($sp)
/* C94E0 80113120 8FB00010 */  lw         $s0, 0x10($sp)
/* C94E4 80113124 03E00008 */  jr         $ra
/* C94E8 80113128 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011312C
/* C94EC 8011312C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C94F0 80113130 AFB00028 */  sw         $s0, 0x28($sp)
/* C94F4 80113134 00808021 */  addu       $s0, $a0, $zero
/* C94F8 80113138 AFBF0030 */  sw         $ra, 0x30($sp)
/* C94FC 8011313C AFB1002C */  sw         $s1, 0x2C($sp)
/* C9500 80113140 8E020288 */  lw         $v0, 0x288($s0)
/* C9504 80113144 14400027 */  bnez       $v0, .Lrace_801131E4
/* C9508 80113148 00000000 */   nop
/* C950C 8011314C 8E020254 */  lw         $v0, 0x254($s0)
/* C9510 80113150 14400024 */  bnez       $v0, .Lrace_801131E4
/* C9514 80113154 00000000 */   nop
/* C9518 80113158 8E020250 */  lw         $v0, 0x250($s0)
/* C951C 8011315C 14400021 */  bnez       $v0, .Lrace_801131E4
/* C9520 80113160 00003021 */   addu      $a2, $zero, $zero
/* C9524 80113164 3C05800D */  lui        $a1, %hi(D_race_800CDE70)
/* C9528 80113168 24A5DE70 */  addiu      $a1, $a1, %lo(D_race_800CDE70)
/* C952C 8011316C AFA00010 */  sw         $zero, 0x10($sp)
/* C9530 80113170 8E040294 */  lw         $a0, 0x294($s0)
/* C9534 80113174 0C0107DD */  jal        func_80041F74
/* C9538 80113178 00C03821 */   addu      $a3, $a2, $zero
/* C953C 8011317C 10400019 */  beqz       $v0, .Lrace_801131E4
/* C9540 80113180 AE020288 */   sw        $v0, 0x288($s0)
/* C9544 80113184 8E0201F4 */  lw         $v0, 0x1F4($s0)
/* C9548 80113188 8C4802F8 */  lw         $t0, 0x2F8($v0)
/* C954C 8011318C 8C4902FC */  lw         $t1, 0x2FC($v0)
/* C9550 80113190 8C4A0300 */  lw         $t2, 0x300($v0)
/* C9554 80113194 AFA80018 */  sw         $t0, 0x18($sp)
/* C9558 80113198 AFA9001C */  sw         $t1, 0x1C($sp)
/* C955C 8011319C AFAA0020 */  sw         $t2, 0x20($sp)
/* C9560 801131A0 8E020288 */  lw         $v0, 0x288($s0)
/* C9564 801131A4 8C450000 */  lw         $a1, 0x0($v0)
/* C9568 801131A8 8E030044 */  lw         $v1, 0x44($s0)
/* C956C 801131AC 10A00008 */  beqz       $a1, .Lrace_801131D0
/* C9570 801131B0 27B10018 */   addiu     $s1, $sp, 0x18
/* C9574 801131B4 8C620024 */  lw         $v0, 0x24($v1)
/* C9578 801131B8 24A50168 */  addiu      $a1, $a1, 0x168
/* C957C 801131BC 84440090 */  lh         $a0, 0x90($v0)
/* C9580 801131C0 8C420094 */  lw         $v0, 0x94($v0)
/* C9584 801131C4 0040F809 */  jalr       $v0
/* C9588 801131C8 00642021 */   addu      $a0, $v1, $a0
/* C958C 801131CC 8E020288 */  lw         $v0, 0x288($s0)
.Lrace_801131D0:
/* C9590 801131D0 8C440000 */  lw         $a0, 0x0($v0)
/* C9594 801131D4 10800003 */  beqz       $a0, .Lrace_801131E4
/* C9598 801131D8 00000000 */   nop
/* C959C 801131DC 0C01058D */  jal        func_80041634
/* C95A0 801131E0 02202821 */   addu      $a1, $s1, $zero
.Lrace_801131E4:
/* C95A4 801131E4 8FBF0030 */  lw         $ra, 0x30($sp)
/* C95A8 801131E8 8FB1002C */  lw         $s1, 0x2C($sp)
/* C95AC 801131EC 8FB00028 */  lw         $s0, 0x28($sp)
/* C95B0 801131F0 03E00008 */  jr         $ra
/* C95B4 801131F4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_801131F8
/* C95B8 801131F8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C95BC 801131FC AFB00038 */  sw         $s0, 0x38($sp)
/* C95C0 80113200 00808021 */  addu       $s0, $a0, $zero
/* C95C4 80113204 AFBF0040 */  sw         $ra, 0x40($sp)
/* C95C8 80113208 AFB1003C */  sw         $s1, 0x3C($sp)
/* C95CC 8011320C 8E020290 */  lw         $v0, 0x290($s0)
/* C95D0 80113210 1440003C */  bnez       $v0, .Lrace_80113304
/* C95D4 80113214 00003021 */   addu      $a2, $zero, $zero
/* C95D8 80113218 3C05800D */  lui        $a1, %hi(D_race_800CDE78)
/* C95DC 8011321C 24A5DE78 */  addiu      $a1, $a1, %lo(D_race_800CDE78)
/* C95E0 80113220 AFA00010 */  sw         $zero, 0x10($sp)
/* C95E4 80113224 8E040294 */  lw         $a0, 0x294($s0)
/* C95E8 80113228 0C0107DD */  jal        func_80041F74
/* C95EC 8011322C 00C03821 */   addu      $a3, $a2, $zero
/* C95F0 80113230 10400034 */  beqz       $v0, .Lrace_80113304
/* C95F4 80113234 AE020290 */   sw        $v0, 0x290($s0)
/* C95F8 80113238 8E0201F4 */  lw         $v0, 0x1F4($s0)
/* C95FC 8011323C 8C4802F8 */  lw         $t0, 0x2F8($v0)
/* C9600 80113240 8C4902FC */  lw         $t1, 0x2FC($v0)
/* C9604 80113244 8C4A0300 */  lw         $t2, 0x300($v0)
/* C9608 80113248 AFA80018 */  sw         $t0, 0x18($sp)
/* C960C 8011324C AFA9001C */  sw         $t1, 0x1C($sp)
/* C9610 80113250 AFAA0020 */  sw         $t2, 0x20($sp)
/* C9614 80113254 8E0201F4 */  lw         $v0, 0x1F4($s0)
/* C9618 80113258 8C480288 */  lw         $t0, 0x288($v0)
/* C961C 8011325C 8C49028C */  lw         $t1, 0x28C($v0)
/* C9620 80113260 8C4A0290 */  lw         $t2, 0x290($v0)
/* C9624 80113264 AFA80028 */  sw         $t0, 0x28($sp)
/* C9628 80113268 AFA9002C */  sw         $t1, 0x2C($sp)
/* C962C 8011326C AFAA0030 */  sw         $t2, 0x30($sp)
/* C9630 80113270 C7A80018 */  lwc1       $f8, 0x18($sp)
/* C9634 80113274 C7A00028 */  lwc1       $f0, 0x28($sp)
/* C9638 80113278 46004200 */  add.s      $f8, $f8, $f0
/* C963C 8011327C 3C01800D */  lui        $at, %hi(D_race_800CDE80)
/* C9640 80113280 C426DE80 */  lwc1       $f6, %lo(D_race_800CDE80)($at)
/* C9644 80113284 46064202 */  mul.s      $f8, $f8, $f6
/* C9648 80113288 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* C964C 8011328C C7A0002C */  lwc1       $f0, 0x2C($sp)
/* C9650 80113290 46002100 */  add.s      $f4, $f4, $f0
/* C9654 80113294 46062102 */  mul.s      $f4, $f4, $f6
/* C9658 80113298 C7A20030 */  lwc1       $f2, 0x30($sp)
/* C965C 8011329C C7A00020 */  lwc1       $f0, 0x20($sp)
/* C9660 801132A0 46020000 */  add.s      $f0, $f0, $f2
/* C9664 801132A4 46060002 */  mul.s      $f0, $f0, $f6
/* C9668 801132A8 3C01800D */  lui        $at, %hi(D_race_800CDE84)
/* C966C 801132AC C422DE84 */  lwc1       $f2, %lo(D_race_800CDE84)($at)
/* C9670 801132B0 46020000 */  add.s      $f0, $f0, $f2
/* C9674 801132B4 E7A80018 */  swc1       $f8, 0x18($sp)
/* C9678 801132B8 E7A4001C */  swc1       $f4, 0x1C($sp)
/* C967C 801132BC E7A00020 */  swc1       $f0, 0x20($sp)
/* C9680 801132C0 8E020290 */  lw         $v0, 0x290($s0)
/* C9684 801132C4 8C450000 */  lw         $a1, 0x0($v0)
/* C9688 801132C8 8E030044 */  lw         $v1, 0x44($s0)
/* C968C 801132CC 10A00008 */  beqz       $a1, .Lrace_801132F0
/* C9690 801132D0 27B10018 */   addiu     $s1, $sp, 0x18
/* C9694 801132D4 8C620024 */  lw         $v0, 0x24($v1)
/* C9698 801132D8 24A50168 */  addiu      $a1, $a1, 0x168
/* C969C 801132DC 84440090 */  lh         $a0, 0x90($v0)
/* C96A0 801132E0 8C420094 */  lw         $v0, 0x94($v0)
/* C96A4 801132E4 0040F809 */  jalr       $v0
/* C96A8 801132E8 00642021 */   addu      $a0, $v1, $a0
/* C96AC 801132EC 8E020290 */  lw         $v0, 0x290($s0)
.Lrace_801132F0:
/* C96B0 801132F0 8C440000 */  lw         $a0, 0x0($v0)
/* C96B4 801132F4 10800003 */  beqz       $a0, .Lrace_80113304
/* C96B8 801132F8 00000000 */   nop
/* C96BC 801132FC 0C01058D */  jal        func_80041634
/* C96C0 80113300 02202821 */   addu      $a1, $s1, $zero
.Lrace_80113304:
/* C96C4 80113304 8FBF0040 */  lw         $ra, 0x40($sp)
/* C96C8 80113308 8FB1003C */  lw         $s1, 0x3C($sp)
/* C96CC 8011330C 8FB00038 */  lw         $s0, 0x38($sp)
/* C96D0 80113310 03E00008 */  jr         $ra
/* C96D4 80113314 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_80113318
/* C96D8 80113318 27BDFF98 */  addiu      $sp, $sp, -0x68
/* C96DC 8011331C AFB20058 */  sw         $s2, 0x58($sp)
/* C96E0 80113320 00809021 */  addu       $s2, $a0, $zero
/* C96E4 80113324 AFB10054 */  sw         $s1, 0x54($sp)
/* C96E8 80113328 00A08821 */  addu       $s1, $a1, $zero
/* C96EC 8011332C AFBF0060 */  sw         $ra, 0x60($sp)
/* C96F0 80113330 AFB3005C */  sw         $s3, 0x5C($sp)
/* C96F4 80113334 0C044EF0 */  jal        func_race_80113BC0
/* C96F8 80113338 AFB00050 */   sw        $s0, 0x50($sp)
/* C96FC 8011333C 02402021 */  addu       $a0, $s2, $zero
/* C9700 80113340 0C04502D */  jal        func_race_801140B4
/* C9704 80113344 02202821 */   addu      $a1, $s1, $zero
/* C9708 80113348 0C0166DC */  jal        func_80059B70
/* C970C 8011334C 26440004 */   addiu     $a0, $s2, 0x4
/* C9710 80113350 8E4203D8 */  lw         $v0, 0x3D8($s2)
/* C9714 80113354 1040000A */  beqz       $v0, .Lrace_80113380
/* C9718 80113358 00000000 */   nop
/* C971C 8011335C 8E4303DC */  lw         $v1, 0x3DC($s2)
/* C9720 80113360 0223102B */  sltu       $v0, $s1, $v1
/* C9724 80113364 14400005 */  bnez       $v0, .Lrace_8011337C
/* C9728 80113368 00711023 */   subu      $v0, $v1, $s1
/* C972C 8011336C 0C0456E9 */  jal        func_race_80115BA4
/* C9730 80113370 02402021 */   addu      $a0, $s2, $zero
/* C9734 80113374 08044CE0 */  j          .Lrace_80113380
/* C9738 80113378 00000000 */   nop
.Lrace_8011337C:
/* C973C 8011337C AE4203DC */  sw         $v0, 0x3DC($s2)
.Lrace_80113380:
/* C9740 80113380 8E4201F0 */  lw         $v0, 0x1F0($s2)
/* C9744 80113384 8C420D04 */  lw         $v0, 0xD04($v0)
/* C9748 80113388 30420010 */  andi       $v0, $v0, 0x10
/* C974C 8011338C 1440019E */  bnez       $v0, .Lrace_80113A08
/* C9750 80113390 00000000 */   nop
/* C9754 80113394 8E4201F4 */  lw         $v0, 0x1F4($s2)
/* C9758 80113398 8C4206AC */  lw         $v0, 0x6AC($v0)
/* C975C 8011339C 30420002 */  andi       $v0, $v0, 0x2
/* C9760 801133A0 10400009 */  beqz       $v0, .Lrace_801133C8
/* C9764 801133A4 00000000 */   nop
/* C9768 801133A8 8E420000 */  lw         $v0, 0x0($s2)
/* C976C 801133AC 30420100 */  andi       $v0, $v0, 0x100
/* C9770 801133B0 14400005 */  bnez       $v0, .Lrace_801133C8
/* C9774 801133B4 00000000 */   nop
/* C9778 801133B8 0C04559E */  jal        func_race_80115678
/* C977C 801133BC 02402021 */   addu      $a0, $s2, $zero
/* C9780 801133C0 08044CFE */  j          .Lrace_801133F8
/* C9784 801133C4 00008021 */   addu      $s0, $zero, $zero
.Lrace_801133C8:
/* C9788 801133C8 8E4201F4 */  lw         $v0, 0x1F4($s2)
/* C978C 801133CC 8C4206AC */  lw         $v0, 0x6AC($v0)
/* C9790 801133D0 30420002 */  andi       $v0, $v0, 0x2
/* C9794 801133D4 14400008 */  bnez       $v0, .Lrace_801133F8
/* C9798 801133D8 00008021 */   addu      $s0, $zero, $zero
/* C979C 801133DC 8E420000 */  lw         $v0, 0x0($s2)
/* C97A0 801133E0 30420100 */  andi       $v0, $v0, 0x100
/* C97A4 801133E4 10400005 */  beqz       $v0, .Lrace_801133FC
/* C97A8 801133E8 02402021 */   addu      $a0, $s2, $zero
/* C97AC 801133EC 0C0455AD */  jal        func_race_801156B4
/* C97B0 801133F0 02402021 */   addu      $a0, $s2, $zero
/* C97B4 801133F4 00008021 */  addu       $s0, $zero, $zero
.Lrace_801133F8:
/* C97B8 801133F8 02402021 */  addu       $a0, $s2, $zero
.Lrace_801133FC:
/* C97BC 801133FC 02501821 */  addu       $v1, $s2, $s0
/* C97C0 80113400 9062020C */  lbu        $v0, 0x20C($v1)
/* C97C4 80113404 30420004 */  andi       $v0, $v0, 0x4
/* C97C8 80113408 1040000B */  beqz       $v0, .Lrace_80113438
/* C97CC 8011340C 26100001 */   addiu     $s0, $s0, 0x1
/* C97D0 80113410 8C820220 */  lw         $v0, 0x220($a0)
/* C97D4 80113414 00511021 */  addu       $v0, $v0, $s1
/* C97D8 80113418 AC820220 */  sw         $v0, 0x220($a0)
/* C97DC 8011341C 2C4203E9 */  sltiu      $v0, $v0, 0x3E9
/* C97E0 80113420 14400005 */  bnez       $v0, .Lrace_80113438
/* C97E4 80113424 00000000 */   nop
/* C97E8 80113428 9062020C */  lbu        $v0, 0x20C($v1)
/* C97EC 8011342C 304200FB */  andi       $v0, $v0, 0xFB
/* C97F0 80113430 A062020C */  sb         $v0, 0x20C($v1)
/* C97F4 80113434 AC800220 */  sw         $zero, 0x220($a0)
.Lrace_80113438:
/* C97F8 80113438 2E020004 */  sltiu      $v0, $s0, 0x4
/* C97FC 8011343C 1440FFEF */  bnez       $v0, .Lrace_801133FC
/* C9800 80113440 24840004 */   addiu     $a0, $a0, 0x4
/* C9804 80113444 8E4201F0 */  lw         $v0, 0x1F0($s2)
/* C9808 80113448 8C420D04 */  lw         $v0, 0xD04($v0)
/* C980C 8011344C 30420008 */  andi       $v0, $v0, 0x8
/* C9810 80113450 10400008 */  beqz       $v0, .Lrace_80113474
/* C9814 80113454 02402021 */   addu      $a0, $s2, $zero
/* C9818 80113458 8E420000 */  lw         $v0, 0x0($s2)
/* C981C 8011345C 30420008 */  andi       $v0, $v0, 0x8
/* C9820 80113460 10400004 */  beqz       $v0, .Lrace_80113474
/* C9824 80113464 00000000 */   nop
/* C9828 80113468 0C044B9A */  jal        func_race_80112E68
/* C982C 8011346C 02402021 */   addu      $a0, $s2, $zero
/* C9830 80113470 02402021 */  addu       $a0, $s2, $zero
.Lrace_80113474:
/* C9834 80113474 0C0451D7 */  jal        func_race_8011475C
/* C9838 80113478 02202821 */   addu      $a1, $s1, $zero
/* C983C 8011347C 8E4201F0 */  lw         $v0, 0x1F0($s2)
/* C9840 80113480 8C420D04 */  lw         $v0, 0xD04($v0)
/* C9844 80113484 30420800 */  andi       $v0, $v0, 0x800
/* C9848 80113488 10400005 */  beqz       $v0, .Lrace_801134A0
/* C984C 8011348C 02402021 */   addu      $a0, $s2, $zero
/* C9850 80113490 0C0452DD */  jal        func_race_80114B74
/* C9854 80113494 02202821 */   addu      $a1, $s1, $zero
/* C9858 80113498 08044D2A */  j          .Lrace_801134A8
/* C985C 8011349C 00000000 */   nop
.Lrace_801134A0:
/* C9860 801134A0 240203E8 */  addiu      $v0, $zero, 0x3E8
/* C9864 801134A4 AE420394 */  sw         $v0, 0x394($s2)
.Lrace_801134A8:
/* C9868 801134A8 8E4201F4 */  lw         $v0, 0x1F4($s2)
/* C986C 801134AC 3C01800D */  lui        $at, %hi(D_race_800CDE90)
/* C9870 801134B0 C424DE90 */  lwc1       $f4, %lo(D_race_800CDE90)($at)
/* C9874 801134B4 8C480004 */  lw         $t0, 0x4($v0)
/* C9878 801134B8 8C490008 */  lw         $t1, 0x8($v0)
/* C987C 801134BC 8C4A000C */  lw         $t2, 0xC($v0)
/* C9880 801134C0 AFA80020 */  sw         $t0, 0x20($sp)
/* C9884 801134C4 AFA90024 */  sw         $t1, 0x24($sp)
/* C9888 801134C8 AFAA0028 */  sw         $t2, 0x28($sp)
/* C988C 801134CC C7A00020 */  lwc1       $f0, 0x20($sp)
/* C9890 801134D0 46040002 */  mul.s      $f0, $f0, $f4
/* C9894 801134D4 27A20020 */  addiu      $v0, $sp, 0x20
/* C9898 801134D8 E7A00020 */  swc1       $f0, 0x20($sp)
/* C989C 801134DC C4420004 */  lwc1       $f2, 0x4($v0)
/* C98A0 801134E0 46041082 */  mul.s      $f2, $f2, $f4
/* C98A4 801134E4 C4400008 */  lwc1       $f0, 0x8($v0)
/* C98A8 801134E8 46040002 */  mul.s      $f0, $f0, $f4
/* C98AC 801134EC 00008021 */  addu       $s0, $zero, $zero
/* C98B0 801134F0 02009821 */  addu       $s3, $s0, $zero
/* C98B4 801134F4 02408821 */  addu       $s1, $s2, $zero
/* C98B8 801134F8 E4420004 */  swc1       $f2, 0x4($v0)
/* C98BC 801134FC E4400008 */  swc1       $f0, 0x8($v0)
.Lrace_80113500:
/* C98C0 80113500 2E020004 */  sltiu      $v0, $s0, 0x4
/* C98C4 80113504 10400026 */  beqz       $v0, .Lrace_801135A0
/* C98C8 80113508 00000000 */   nop
/* C98CC 8011350C 8E220248 */  lw         $v0, 0x248($s1)
/* C98D0 80113510 50400020 */  beql       $v0, $zero, .Lrace_80113594
/* C98D4 80113514 26730070 */   addiu     $s3, $s3, 0x70
/* C98D8 80113518 8E4201F4 */  lw         $v0, 0x1F4($s2)
/* C98DC 8011351C 00531021 */  addu       $v0, $v0, $s3
/* C98E0 80113520 8C4801A8 */  lw         $t0, 0x1A8($v0)
/* C98E4 80113524 8C4901AC */  lw         $t1, 0x1AC($v0)
/* C98E8 80113528 8C4A01B0 */  lw         $t2, 0x1B0($v0)
/* C98EC 8011352C AFA80030 */  sw         $t0, 0x30($sp)
/* C98F0 80113530 AFA90034 */  sw         $t1, 0x34($sp)
/* C98F4 80113534 AFAA0038 */  sw         $t2, 0x38($sp)
/* C98F8 80113538 8E220248 */  lw         $v0, 0x248($s1)
/* C98FC 8011353C 8C450000 */  lw         $a1, 0x0($v0)
/* C9900 80113540 8E430044 */  lw         $v1, 0x44($s2)
/* C9904 80113544 10A00007 */  beqz       $a1, .Lrace_80113564
/* C9908 80113548 24A50168 */   addiu     $a1, $a1, 0x168
/* C990C 8011354C 8C620024 */  lw         $v0, 0x24($v1)
/* C9910 80113550 84440090 */  lh         $a0, 0x90($v0)
/* C9914 80113554 8C420094 */  lw         $v0, 0x94($v0)
/* C9918 80113558 0040F809 */  jalr       $v0
/* C991C 8011355C 00642021 */   addu      $a0, $v1, $a0
/* C9920 80113560 8E220248 */  lw         $v0, 0x248($s1)
.Lrace_80113564:
/* C9924 80113564 8C440000 */  lw         $a0, 0x0($v0)
/* C9928 80113568 10800005 */  beqz       $a0, .Lrace_80113580
/* C992C 8011356C 00000000 */   nop
/* C9930 80113570 0C01058D */  jal        func_80041634
/* C9934 80113574 27A50030 */   addiu     $a1, $sp, 0x30
/* C9938 80113578 8E220248 */  lw         $v0, 0x248($s1)
/* C993C 8011357C 8C440000 */  lw         $a0, 0x0($v0)
.Lrace_80113580:
/* C9940 80113580 10800003 */  beqz       $a0, .Lrace_80113590
/* C9944 80113584 27A50020 */   addiu     $a1, $sp, 0x20
/* C9948 80113588 0C01059B */  jal        func_8004166C
/* C994C 8011358C 00000000 */   nop
.Lrace_80113590:
/* C9950 80113590 26730070 */  addiu      $s3, $s3, 0x70
.Lrace_80113594:
/* C9954 80113594 26310004 */  addiu      $s1, $s1, 0x4
/* C9958 80113598 08044D40 */  j          .Lrace_80113500
/* C995C 8011359C 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_801135A0:
/* C9960 801135A0 8E4201F0 */  lw         $v0, 0x1F0($s2)
/* C9964 801135A4 8C420AC4 */  lw         $v0, 0xAC4($v0)
/* C9968 801135A8 2C420191 */  sltiu      $v0, $v0, 0x191
/* C996C 801135AC 14400004 */  bnez       $v0, .Lrace_801135C0
/* C9970 801135B0 00000000 */   nop
/* C9974 801135B4 8E420000 */  lw         $v0, 0x0($s2)
/* C9978 801135B8 34420200 */  ori        $v0, $v0, 0x200
/* C997C 801135BC AE420000 */  sw         $v0, 0x0($s2)
.Lrace_801135C0:
/* C9980 801135C0 8E440000 */  lw         $a0, 0x0($s2)
/* C9984 801135C4 30820200 */  andi       $v0, $a0, 0x200
/* C9988 801135C8 10400037 */  beqz       $v0, .Lrace_801136A8
/* C998C 801135CC 00000000 */   nop
/* C9990 801135D0 8E4201F0 */  lw         $v0, 0x1F0($s2)
/* C9994 801135D4 8E4603E0 */  lw         $a2, 0x3E0($s2)
/* C9998 801135D8 8C47076C */  lw         $a3, 0x76C($v0)
/* C999C 801135DC 00C7102B */  sltu       $v0, $a2, $a3
/* C99A0 801135E0 10400031 */  beqz       $v0, .Lrace_801136A8
/* C99A4 801135E4 2402FDFF */   addiu     $v0, $zero, -0x201
/* C99A8 801135E8 00821024 */  and        $v0, $a0, $v0
/* C99AC 801135EC 8E430044 */  lw         $v1, 0x44($s2)
/* C99B0 801135F0 27A50030 */  addiu      $a1, $sp, 0x30
/* C99B4 801135F4 AE420000 */  sw         $v0, 0x0($s2)
/* C99B8 801135F8 8C620024 */  lw         $v0, 0x24($v1)
/* C99BC 801135FC 00E68023 */  subu       $s0, $a3, $a2
/* C99C0 80113600 84440010 */  lh         $a0, 0x10($v0)
/* C99C4 80113604 8C420014 */  lw         $v0, 0x14($v0)
/* C99C8 80113608 0040F809 */  jalr       $v0
/* C99CC 8011360C 00642021 */   addu      $a0, $v1, $a0
/* C99D0 80113610 2E020004 */  sltiu      $v0, $s0, 0x4
/* C99D4 80113614 10400007 */  beqz       $v0, .Lrace_80113634
/* C99D8 80113618 2E020002 */   sltiu     $v0, $s0, 0x2
/* C99DC 8011361C 1040000C */  beqz       $v0, .Lrace_80113650
/* C99E0 80113620 24020001 */   addiu     $v0, $zero, 0x1
/* C99E4 80113624 12020008 */  beq        $s0, $v0, .Lrace_80113648
/* C99E8 80113628 3C05800D */   lui       $a1, %hi(D_race_800CDE88)
/* C99EC 8011362C 08044DA5 */  j          .Lrace_80113694
/* C99F0 80113630 24A5DE88 */   addiu     $a1, $a1, %lo(D_race_800CDE88)
.Lrace_80113634:
/* C99F4 80113634 24020004 */  addiu      $v0, $zero, 0x4
/* C99F8 80113638 12020007 */  beq        $s0, $v0, .Lrace_80113658
/* C99FC 8011363C 3C05800D */   lui       $a1, %hi(D_race_800CDE88)
/* C9A00 80113640 08044DA5 */  j          .Lrace_80113694
/* C9A04 80113644 24A5DE88 */   addiu     $a1, $a1, %lo(D_race_800CDE88)
.Lrace_80113648:
/* C9A08 80113648 08044D97 */  j          .Lrace_8011365C
/* C9A0C 8011364C 2405003F */   addiu     $a1, $zero, 0x3F
.Lrace_80113650:
/* C9A10 80113650 08044D97 */  j          .Lrace_8011365C
/* C9A14 80113654 24050040 */   addiu     $a1, $zero, 0x40
.Lrace_80113658:
/* C9A18 80113658 24050004 */  addiu      $a1, $zero, 0x4
.Lrace_8011365C:
/* C9A1C 8011365C 8E4201F0 */  lw         $v0, 0x1F0($s2)
/* C9A20 80113660 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* C9A24 80113664 3C01800D */  lui        $at, %hi(D_race_800CDE94)
/* C9A28 80113668 C422DE94 */  lwc1       $f2, %lo(D_race_800CDE94)($at)
/* C9A2C 8011366C 3C01800D */  lui        $at, %hi(D_race_800CDE98)
/* C9A30 80113670 C420DE98 */  lwc1       $f0, %lo(D_race_800CDE98)($at)
/* C9A34 80113674 8C440004 */  lw         $a0, 0x4($v0)
/* C9A38 80113678 27A60030 */  addiu      $a2, $sp, 0x30
/* C9A3C 8011367C E7A20010 */  swc1       $f2, 0x10($sp)
/* C9A40 80113680 E7A00014 */  swc1       $f0, 0x14($sp)
/* C9A44 80113684 0C046530 */  jal        func_race_801194C0
/* C9A48 80113688 E7A00018 */   swc1      $f0, 0x18($sp)
/* C9A4C 8011368C 3C05800D */  lui        $a1, %hi(D_race_800CDE88)
/* C9A50 80113690 24A5DE88 */  addiu      $a1, $a1, %lo(D_race_800CDE88)
.Lrace_80113694:
/* C9A54 80113694 27A60030 */  addiu      $a2, $sp, 0x30
/* C9A58 80113698 AFA00010 */  sw         $zero, 0x10($sp)
/* C9A5C 8011369C 8E440294 */  lw         $a0, 0x294($s2)
/* C9A60 801136A0 0C0107DD */  jal        func_80041F74
/* C9A64 801136A4 00003821 */   addu      $a3, $zero, $zero
.Lrace_801136A8:
/* C9A68 801136A8 8E4201F0 */  lw         $v0, 0x1F0($s2)
/* C9A6C 801136AC 8E430288 */  lw         $v1, 0x288($s2)
/* C9A70 801136B0 8C42076C */  lw         $v0, 0x76C($v0)
/* C9A74 801136B4 10600041 */  beqz       $v1, .Lrace_801137BC
/* C9A78 801136B8 AE4203E0 */   sw        $v0, 0x3E0($s2)
/* C9A7C 801136BC 8C620000 */  lw         $v0, 0x0($v1)
/* C9A80 801136C0 50400004 */  beql       $v0, $zero, .Lrace_801136D4
/* C9A84 801136C4 2402FFFF */   addiu     $v0, $zero, -0x1
/* C9A88 801136C8 8C4200F0 */  lw         $v0, 0xF0($v0)
/* C9A8C 801136CC 08044DB6 */  j          .Lrace_801136D8
/* C9A90 801136D0 2C42000A */   sltiu     $v0, $v0, 0xA
.Lrace_801136D4:
/* C9A94 801136D4 2C42000A */  sltiu      $v0, $v0, 0xA
.Lrace_801136D8:
/* C9A98 801136D8 14400007 */  bnez       $v0, .Lrace_801136F8
/* C9A9C 801136DC 3C058003 */   lui       $a1, %hi(D_8002FAB0)
/* C9AA0 801136E0 8E440294 */  lw         $a0, 0x294($s2)
/* C9AA4 801136E4 8E450288 */  lw         $a1, 0x288($s2)
/* C9AA8 801136E8 0C01088C */  jal        func_80042230
/* C9AAC 801136EC 00000000 */   nop
/* C9AB0 801136F0 08044DEF */  j          .Lrace_801137BC
/* C9AB4 801136F4 AE400288 */   sw        $zero, 0x288($s2)
.Lrace_801136F8:
/* C9AB8 801136F8 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C9ABC 801136FC 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* C9AC0 80113700 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C9AC4 80113704 24840001 */  addiu      $a0, $a0, 0x1
/* C9AC8 80113708 308403FF */  andi       $a0, $a0, 0x3FF
/* C9ACC 8011370C 00041040 */  sll        $v0, $a0, 1
/* C9AD0 80113710 00431021 */  addu       $v0, $v0, $v1
/* C9AD4 80113714 94420000 */  lhu        $v0, 0x0($v0)
/* C9AD8 80113718 30420002 */  andi       $v0, $v0, 0x2
/* C9ADC 8011371C 1040000A */  beqz       $v0, .Lrace_80113748
/* C9AE0 80113720 ACA4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a1)
/* C9AE4 80113724 8E4201F4 */  lw         $v0, 0x1F4($s2)
/* C9AE8 80113728 8C4802F8 */  lw         $t0, 0x2F8($v0)
/* C9AEC 8011372C 8C4902FC */  lw         $t1, 0x2FC($v0)
/* C9AF0 80113730 8C4A0300 */  lw         $t2, 0x300($v0)
/* C9AF4 80113734 AFA80030 */  sw         $t0, 0x30($sp)
/* C9AF8 80113738 AFA90034 */  sw         $t1, 0x34($sp)
/* C9AFC 8011373C AFAA0038 */  sw         $t2, 0x38($sp)
/* C9B00 80113740 08044DD9 */  j          .Lrace_80113764
/* C9B04 80113744 00000000 */   nop
.Lrace_80113748:
/* C9B08 80113748 8E4201F4 */  lw         $v0, 0x1F4($s2)
/* C9B0C 8011374C 8C480288 */  lw         $t0, 0x288($v0)
/* C9B10 80113750 8C49028C */  lw         $t1, 0x28C($v0)
/* C9B14 80113754 8C4A0290 */  lw         $t2, 0x290($v0)
/* C9B18 80113758 AFA80030 */  sw         $t0, 0x30($sp)
/* C9B1C 8011375C AFA90034 */  sw         $t1, 0x34($sp)
/* C9B20 80113760 AFAA0038 */  sw         $t2, 0x38($sp)
.Lrace_80113764:
/* C9B24 80113764 8E420288 */  lw         $v0, 0x288($s2)
/* C9B28 80113768 8C450000 */  lw         $a1, 0x0($v0)
/* C9B2C 8011376C 8E430044 */  lw         $v1, 0x44($s2)
/* C9B30 80113770 10A00007 */  beqz       $a1, .Lrace_80113790
/* C9B34 80113774 24A50168 */   addiu     $a1, $a1, 0x168
/* C9B38 80113778 8C620024 */  lw         $v0, 0x24($v1)
/* C9B3C 8011377C 84440090 */  lh         $a0, 0x90($v0)
/* C9B40 80113780 8C420094 */  lw         $v0, 0x94($v0)
/* C9B44 80113784 0040F809 */  jalr       $v0
/* C9B48 80113788 00642021 */   addu      $a0, $v1, $a0
/* C9B4C 8011378C 8E420288 */  lw         $v0, 0x288($s2)
.Lrace_80113790:
/* C9B50 80113790 8C440000 */  lw         $a0, 0x0($v0)
/* C9B54 80113794 10800005 */  beqz       $a0, .Lrace_801137AC
/* C9B58 80113798 00000000 */   nop
/* C9B5C 8011379C 0C01058D */  jal        func_80041634
/* C9B60 801137A0 27A50030 */   addiu     $a1, $sp, 0x30
/* C9B64 801137A4 8E420288 */  lw         $v0, 0x288($s2)
/* C9B68 801137A8 8C440000 */  lw         $a0, 0x0($v0)
.Lrace_801137AC:
/* C9B6C 801137AC 10800003 */  beqz       $a0, .Lrace_801137BC
/* C9B70 801137B0 27A50020 */   addiu     $a1, $sp, 0x20
/* C9B74 801137B4 0C01059B */  jal        func_8004166C
/* C9B78 801137B8 00000000 */   nop
.Lrace_801137BC:
/* C9B7C 801137BC 8E420290 */  lw         $v0, 0x290($s2)
/* C9B80 801137C0 10400048 */  beqz       $v0, .Lrace_801138E4
/* C9B84 801137C4 00000000 */   nop
/* C9B88 801137C8 8C420000 */  lw         $v0, 0x0($v0)
/* C9B8C 801137CC 50400004 */  beql       $v0, $zero, .Lrace_801137E0
/* C9B90 801137D0 2402FFFF */   addiu     $v0, $zero, -0x1
/* C9B94 801137D4 8C4200F0 */  lw         $v0, 0xF0($v0)
/* C9B98 801137D8 08044DF9 */  j          .Lrace_801137E4
/* C9B9C 801137DC 2C420004 */   sltiu     $v0, $v0, 0x4
.Lrace_801137E0:
/* C9BA0 801137E0 2C420004 */  sltiu      $v0, $v0, 0x4
.Lrace_801137E4:
/* C9BA4 801137E4 14400007 */  bnez       $v0, .Lrace_80113804
/* C9BA8 801137E8 00000000 */   nop
/* C9BAC 801137EC 8E440294 */  lw         $a0, 0x294($s2)
/* C9BB0 801137F0 8E450290 */  lw         $a1, 0x290($s2)
/* C9BB4 801137F4 0C01088C */  jal        func_80042230
/* C9BB8 801137F8 00000000 */   nop
/* C9BBC 801137FC 08044E39 */  j          .Lrace_801138E4
/* C9BC0 80113800 AE400290 */   sw        $zero, 0x290($s2)
.Lrace_80113804:
/* C9BC4 80113804 8E4201F4 */  lw         $v0, 0x1F4($s2)
/* C9BC8 80113808 8C4802F8 */  lw         $t0, 0x2F8($v0)
/* C9BCC 8011380C 8C4902FC */  lw         $t1, 0x2FC($v0)
/* C9BD0 80113810 8C4A0300 */  lw         $t2, 0x300($v0)
/* C9BD4 80113814 AFA80030 */  sw         $t0, 0x30($sp)
/* C9BD8 80113818 AFA90034 */  sw         $t1, 0x34($sp)
/* C9BDC 8011381C AFAA0038 */  sw         $t2, 0x38($sp)
/* C9BE0 80113820 8E4201F4 */  lw         $v0, 0x1F4($s2)
/* C9BE4 80113824 8C480288 */  lw         $t0, 0x288($v0)
/* C9BE8 80113828 8C49028C */  lw         $t1, 0x28C($v0)
/* C9BEC 8011382C 8C4A0290 */  lw         $t2, 0x290($v0)
/* C9BF0 80113830 AFA80040 */  sw         $t0, 0x40($sp)
/* C9BF4 80113834 AFA90044 */  sw         $t1, 0x44($sp)
/* C9BF8 80113838 AFAA0048 */  sw         $t2, 0x48($sp)
/* C9BFC 8011383C C7A80030 */  lwc1       $f8, 0x30($sp)
/* C9C00 80113840 C7A00040 */  lwc1       $f0, 0x40($sp)
/* C9C04 80113844 46004200 */  add.s      $f8, $f8, $f0
/* C9C08 80113848 3C01800D */  lui        $at, %hi(D_race_800CDE9C)
/* C9C0C 8011384C C426DE9C */  lwc1       $f6, %lo(D_race_800CDE9C)($at)
/* C9C10 80113850 46064202 */  mul.s      $f8, $f8, $f6
/* C9C14 80113854 C7A40034 */  lwc1       $f4, 0x34($sp)
/* C9C18 80113858 C7A00044 */  lwc1       $f0, 0x44($sp)
/* C9C1C 8011385C 46002100 */  add.s      $f4, $f4, $f0
/* C9C20 80113860 46062102 */  mul.s      $f4, $f4, $f6
/* C9C24 80113864 C7A20048 */  lwc1       $f2, 0x48($sp)
/* C9C28 80113868 C7A00038 */  lwc1       $f0, 0x38($sp)
/* C9C2C 8011386C 46020000 */  add.s      $f0, $f0, $f2
/* C9C30 80113870 46060002 */  mul.s      $f0, $f0, $f6
/* C9C34 80113874 3C01800D */  lui        $at, %hi(D_race_800CDEA0)
/* C9C38 80113878 C422DEA0 */  lwc1       $f2, %lo(D_race_800CDEA0)($at)
/* C9C3C 8011387C 46020000 */  add.s      $f0, $f0, $f2
/* C9C40 80113880 E7A80030 */  swc1       $f8, 0x30($sp)
/* C9C44 80113884 E7A40034 */  swc1       $f4, 0x34($sp)
/* C9C48 80113888 E7A00038 */  swc1       $f0, 0x38($sp)
/* C9C4C 8011388C 8E420290 */  lw         $v0, 0x290($s2)
/* C9C50 80113890 8C450000 */  lw         $a1, 0x0($v0)
/* C9C54 80113894 8E430044 */  lw         $v1, 0x44($s2)
/* C9C58 80113898 10A00007 */  beqz       $a1, .Lrace_801138B8
/* C9C5C 8011389C 24A50168 */   addiu     $a1, $a1, 0x168
/* C9C60 801138A0 8C620024 */  lw         $v0, 0x24($v1)
/* C9C64 801138A4 84440090 */  lh         $a0, 0x90($v0)
/* C9C68 801138A8 8C420094 */  lw         $v0, 0x94($v0)
/* C9C6C 801138AC 0040F809 */  jalr       $v0
/* C9C70 801138B0 00642021 */   addu      $a0, $v1, $a0
/* C9C74 801138B4 8E420290 */  lw         $v0, 0x290($s2)
.Lrace_801138B8:
/* C9C78 801138B8 8C440000 */  lw         $a0, 0x0($v0)
/* C9C7C 801138BC 10800005 */  beqz       $a0, .Lrace_801138D4
/* C9C80 801138C0 00000000 */   nop
/* C9C84 801138C4 0C01058D */  jal        func_80041634
/* C9C88 801138C8 27A50030 */   addiu     $a1, $sp, 0x30
/* C9C8C 801138CC 8E420290 */  lw         $v0, 0x290($s2)
/* C9C90 801138D0 8C440000 */  lw         $a0, 0x0($v0)
.Lrace_801138D4:
/* C9C94 801138D4 10800003 */  beqz       $a0, .Lrace_801138E4
/* C9C98 801138D8 27A50020 */   addiu     $a1, $sp, 0x20
/* C9C9C 801138DC 0C01059B */  jal        func_8004166C
/* C9CA0 801138E0 00000000 */   nop
.Lrace_801138E4:
/* C9CA4 801138E4 8E42028C */  lw         $v0, 0x28C($s2)
/* C9CA8 801138E8 10400043 */  beqz       $v0, .Lrace_801139F8
/* C9CAC 801138EC 00003021 */   addu      $a2, $zero, $zero
/* C9CB0 801138F0 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* C9CB4 801138F4 00C08021 */  addu       $s0, $a2, $zero
/* C9CB8 801138F8 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* C9CBC 801138FC 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* C9CC0 80113900 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* C9CC4 80113904 AFA00030 */  sw         $zero, 0x30($sp)
/* C9CC8 80113908 AFA00034 */  sw         $zero, 0x34($sp)
/* C9CCC 8011390C AFA00038 */  sw         $zero, 0x38($sp)
/* C9CD0 80113910 24840001 */  addiu      $a0, $a0, 0x1
/* C9CD4 80113914 308403FF */  andi       $a0, $a0, 0x3FF
/* C9CD8 80113918 00041040 */  sll        $v0, $a0, 1
/* C9CDC 8011391C 00431021 */  addu       $v0, $v0, $v1
/* C9CE0 80113920 94420000 */  lhu        $v0, 0x0($v0)
/* C9CE4 80113924 00C01821 */  addu       $v1, $a2, $zero
/* C9CE8 80113928 ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* C9CEC 8011392C 30420002 */  andi       $v0, $v0, 0x2
/* C9CF0 80113930 00C2202B */  sltu       $a0, $a2, $v0
.Lrace_80113934:
/* C9CF4 80113934 2E020004 */  sltiu      $v0, $s0, 0x4
/* C9CF8 80113938 10400019 */  beqz       $v0, .Lrace_801139A0
/* C9CFC 8011393C 02501021 */   addu      $v0, $s2, $s0
/* C9D00 80113940 9042020C */  lbu        $v0, 0x20C($v0)
/* C9D04 80113944 30420001 */  andi       $v0, $v0, 0x1
/* C9D08 80113948 50400013 */  beql       $v0, $zero, .Lrace_80113998
/* C9D0C 8011394C 24630070 */   addiu     $v1, $v1, 0x70
/* C9D10 80113950 10800005 */  beqz       $a0, .Lrace_80113968
/* C9D14 80113954 00000000 */   nop
/* C9D18 80113958 10C00005 */  beqz       $a2, .Lrace_80113970
/* C9D1C 8011395C 24060001 */   addiu     $a2, $zero, 0x1
/* C9D20 80113960 08044E66 */  j          .Lrace_80113998
/* C9D24 80113964 24630070 */   addiu     $v1, $v1, 0x70
.Lrace_80113968:
/* C9D28 80113968 10C0000A */  beqz       $a2, .Lrace_80113994
/* C9D2C 8011396C 24060001 */   addiu     $a2, $zero, 0x1
.Lrace_80113970:
/* C9D30 80113970 8E4201F4 */  lw         $v0, 0x1F4($s2)
/* C9D34 80113974 00431021 */  addu       $v0, $v0, $v1
/* C9D38 80113978 8C4801A8 */  lw         $t0, 0x1A8($v0)
/* C9D3C 8011397C 8C4901AC */  lw         $t1, 0x1AC($v0)
/* C9D40 80113980 8C4A01B0 */  lw         $t2, 0x1B0($v0)
/* C9D44 80113984 AFA80030 */  sw         $t0, 0x30($sp)
/* C9D48 80113988 AFA90034 */  sw         $t1, 0x34($sp)
/* C9D4C 8011398C AFAA0038 */  sw         $t2, 0x38($sp)
/* C9D50 80113990 24060001 */  addiu      $a2, $zero, 0x1
.Lrace_80113994:
/* C9D54 80113994 24630070 */  addiu      $v1, $v1, 0x70
.Lrace_80113998:
/* C9D58 80113998 08044E4D */  j          .Lrace_80113934
/* C9D5C 8011399C 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_801139A0:
/* C9D60 801139A0 8E42028C */  lw         $v0, 0x28C($s2)
/* C9D64 801139A4 8C450000 */  lw         $a1, 0x0($v0)
/* C9D68 801139A8 8E430044 */  lw         $v1, 0x44($s2)
/* C9D6C 801139AC 10A00007 */  beqz       $a1, .Lrace_801139CC
/* C9D70 801139B0 24A50168 */   addiu     $a1, $a1, 0x168
/* C9D74 801139B4 8C620024 */  lw         $v0, 0x24($v1)
/* C9D78 801139B8 84440090 */  lh         $a0, 0x90($v0)
/* C9D7C 801139BC 8C420094 */  lw         $v0, 0x94($v0)
/* C9D80 801139C0 0040F809 */  jalr       $v0
/* C9D84 801139C4 00642021 */   addu      $a0, $v1, $a0
/* C9D88 801139C8 8E42028C */  lw         $v0, 0x28C($s2)
.Lrace_801139CC:
/* C9D8C 801139CC 8C440000 */  lw         $a0, 0x0($v0)
/* C9D90 801139D0 10800005 */  beqz       $a0, .Lrace_801139E8
/* C9D94 801139D4 00000000 */   nop
/* C9D98 801139D8 0C01058D */  jal        func_80041634
/* C9D9C 801139DC 27A50030 */   addiu     $a1, $sp, 0x30
/* C9DA0 801139E0 8E42028C */  lw         $v0, 0x28C($s2)
/* C9DA4 801139E4 8C440000 */  lw         $a0, 0x0($v0)
.Lrace_801139E8:
/* C9DA8 801139E8 10800003 */  beqz       $a0, .Lrace_801139F8
/* C9DAC 801139EC 27A50020 */   addiu     $a1, $sp, 0x20
/* C9DB0 801139F0 0C01059B */  jal        func_8004166C
/* C9DB4 801139F4 00000000 */   nop
.Lrace_801139F8:
/* C9DB8 801139F8 8E420000 */  lw         $v0, 0x0($s2)
/* C9DBC 801139FC 2403FFEF */  addiu      $v1, $zero, -0x11
/* C9DC0 80113A00 00431024 */  and        $v0, $v0, $v1
/* C9DC4 80113A04 AE420000 */  sw         $v0, 0x0($s2)
.Lrace_80113A08:
/* C9DC8 80113A08 8FBF0060 */  lw         $ra, 0x60($sp)
/* C9DCC 80113A0C 8FB3005C */  lw         $s3, 0x5C($sp)
/* C9DD0 80113A10 8FB20058 */  lw         $s2, 0x58($sp)
/* C9DD4 80113A14 8FB10054 */  lw         $s1, 0x54($sp)
/* C9DD8 80113A18 8FB00050 */  lw         $s0, 0x50($sp)
/* C9DDC 80113A1C 03E00008 */  jr         $ra
/* C9DE0 80113A20 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_80113A24
/* C9DE4 80113A24 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C9DE8 80113A28 AFB00020 */  sw         $s0, 0x20($sp)
/* C9DEC 80113A2C 00808021 */  addu       $s0, $a0, $zero
/* C9DF0 80113A30 AFBF0024 */  sw         $ra, 0x24($sp)
/* C9DF4 80113A34 F7B40028 */  sdc1       $f20, 0x28($sp)
/* C9DF8 80113A38 8E030044 */  lw         $v1, 0x44($s0)
/* C9DFC 80113A3C 8E02003C */  lw         $v0, 0x3C($s0)
/* C9E00 80113A40 3C01800D */  lui        $at, %hi(D_race_800CDEA4)
/* C9E04 80113A44 C434DEA4 */  lwc1       $f20, %lo(D_race_800CDEA4)($at)
/* C9E08 80113A48 C4600028 */  lwc1       $f0, 0x28($v1)
/* C9E0C 80113A4C E4400028 */  swc1       $f0, 0x28($v0)
/* C9E10 80113A50 C460002C */  lwc1       $f0, 0x2C($v1)
/* C9E14 80113A54 E440002C */  swc1       $f0, 0x2C($v0)
/* C9E18 80113A58 C4600030 */  lwc1       $f0, 0x30($v1)
/* C9E1C 80113A5C E4400030 */  swc1       $f0, 0x30($v0)
/* C9E20 80113A60 C4600034 */  lwc1       $f0, 0x34($v1)
/* C9E24 80113A64 E4400034 */  swc1       $f0, 0x34($v0)
/* C9E28 80113A68 C4600038 */  lwc1       $f0, 0x38($v1)
/* C9E2C 80113A6C E4400038 */  swc1       $f0, 0x38($v0)
/* C9E30 80113A70 C460003C */  lwc1       $f0, 0x3C($v1)
/* C9E34 80113A74 E440003C */  swc1       $f0, 0x3C($v0)
/* C9E38 80113A78 C4600040 */  lwc1       $f0, 0x40($v1)
/* C9E3C 80113A7C E4400040 */  swc1       $f0, 0x40($v0)
/* C9E40 80113A80 C4600044 */  lwc1       $f0, 0x44($v1)
/* C9E44 80113A84 E4400044 */  swc1       $f0, 0x44($v0)
/* C9E48 80113A88 C4600048 */  lwc1       $f0, 0x48($v1)
/* C9E4C 80113A8C E4400048 */  swc1       $f0, 0x48($v0)
/* C9E50 80113A90 8C67004C */  lw         $a3, 0x4C($v1)
/* C9E54 80113A94 8C680050 */  lw         $t0, 0x50($v1)
/* C9E58 80113A98 8C690054 */  lw         $t1, 0x54($v1)
/* C9E5C 80113A9C AC47004C */  sw         $a3, 0x4C($v0)
/* C9E60 80113AA0 AC480050 */  sw         $t0, 0x50($v0)
/* C9E64 80113AA4 AC490054 */  sw         $t1, 0x54($v0)
/* C9E68 80113AA8 E454000C */  swc1       $f20, 0xC($v0)
/* C9E6C 80113AAC 8E02003C */  lw         $v0, 0x3C($s0)
/* C9E70 80113AB0 8C430024 */  lw         $v1, 0x24($v0)
/* C9E74 80113AB4 84640060 */  lh         $a0, 0x60($v1)
/* C9E78 80113AB8 2605004C */  addiu      $a1, $s0, 0x4C
/* C9E7C 80113ABC 00442021 */  addu       $a0, $v0, $a0
/* C9E80 80113AC0 8C620064 */  lw         $v0, 0x64($v1)
/* C9E84 80113AC4 0040F809 */  jalr       $v0
/* C9E88 80113AC8 27A60010 */   addiu     $a2, $sp, 0x10
/* C9E8C 80113ACC 8E030048 */  lw         $v1, 0x48($s0)
/* C9E90 80113AD0 8C620024 */  lw         $v0, 0x24($v1)
/* C9E94 80113AD4 27A50010 */  addiu      $a1, $sp, 0x10
/* C9E98 80113AD8 84440018 */  lh         $a0, 0x18($v0)
/* C9E9C 80113ADC 8C42001C */  lw         $v0, 0x1C($v0)
/* C9EA0 80113AE0 0040F809 */  jalr       $v0
/* C9EA4 80113AE4 00642021 */   addu      $a0, $v1, $a0
/* C9EA8 80113AE8 8E02003C */  lw         $v0, 0x3C($s0)
/* C9EAC 80113AEC 8E030048 */  lw         $v1, 0x48($s0)
/* C9EB0 80113AF0 C4400028 */  lwc1       $f0, 0x28($v0)
/* C9EB4 80113AF4 E4600028 */  swc1       $f0, 0x28($v1)
/* C9EB8 80113AF8 C440002C */  lwc1       $f0, 0x2C($v0)
/* C9EBC 80113AFC E460002C */  swc1       $f0, 0x2C($v1)
/* C9EC0 80113B00 C4400030 */  lwc1       $f0, 0x30($v0)
/* C9EC4 80113B04 E4600030 */  swc1       $f0, 0x30($v1)
/* C9EC8 80113B08 C4400034 */  lwc1       $f0, 0x34($v0)
/* C9ECC 80113B0C E4600034 */  swc1       $f0, 0x34($v1)
/* C9ED0 80113B10 C4400038 */  lwc1       $f0, 0x38($v0)
/* C9ED4 80113B14 E4600038 */  swc1       $f0, 0x38($v1)
/* C9ED8 80113B18 C440003C */  lwc1       $f0, 0x3C($v0)
/* C9EDC 80113B1C E460003C */  swc1       $f0, 0x3C($v1)
/* C9EE0 80113B20 C4400040 */  lwc1       $f0, 0x40($v0)
/* C9EE4 80113B24 E4600040 */  swc1       $f0, 0x40($v1)
/* C9EE8 80113B28 C4400044 */  lwc1       $f0, 0x44($v0)
/* C9EEC 80113B2C E4600044 */  swc1       $f0, 0x44($v1)
/* C9EF0 80113B30 C4400048 */  lwc1       $f0, 0x48($v0)
/* C9EF4 80113B34 E4600048 */  swc1       $f0, 0x48($v1)
/* C9EF8 80113B38 8E030040 */  lw         $v1, 0x40($s0)
/* C9EFC 80113B3C 1060001B */  beqz       $v1, .Lrace_80113BAC
/* C9F00 80113B40 00000000 */   nop
/* C9F04 80113B44 8E020044 */  lw         $v0, 0x44($s0)
/* C9F08 80113B48 C4400028 */  lwc1       $f0, 0x28($v0)
/* C9F0C 80113B4C E4600028 */  swc1       $f0, 0x28($v1)
/* C9F10 80113B50 C440002C */  lwc1       $f0, 0x2C($v0)
/* C9F14 80113B54 E460002C */  swc1       $f0, 0x2C($v1)
/* C9F18 80113B58 C4400030 */  lwc1       $f0, 0x30($v0)
/* C9F1C 80113B5C E4600030 */  swc1       $f0, 0x30($v1)
/* C9F20 80113B60 C4400034 */  lwc1       $f0, 0x34($v0)
/* C9F24 80113B64 E4600034 */  swc1       $f0, 0x34($v1)
/* C9F28 80113B68 C4400038 */  lwc1       $f0, 0x38($v0)
/* C9F2C 80113B6C E4600038 */  swc1       $f0, 0x38($v1)
/* C9F30 80113B70 C440003C */  lwc1       $f0, 0x3C($v0)
/* C9F34 80113B74 E460003C */  swc1       $f0, 0x3C($v1)
/* C9F38 80113B78 C4400040 */  lwc1       $f0, 0x40($v0)
/* C9F3C 80113B7C E4600040 */  swc1       $f0, 0x40($v1)
/* C9F40 80113B80 C4400044 */  lwc1       $f0, 0x44($v0)
/* C9F44 80113B84 E4600044 */  swc1       $f0, 0x44($v1)
/* C9F48 80113B88 C4400048 */  lwc1       $f0, 0x48($v0)
/* C9F4C 80113B8C E4600048 */  swc1       $f0, 0x48($v1)
/* C9F50 80113B90 8C47004C */  lw         $a3, 0x4C($v0)
/* C9F54 80113B94 8C480050 */  lw         $t0, 0x50($v0)
/* C9F58 80113B98 8C490054 */  lw         $t1, 0x54($v0)
/* C9F5C 80113B9C AC67004C */  sw         $a3, 0x4C($v1)
/* C9F60 80113BA0 AC680050 */  sw         $t0, 0x50($v1)
/* C9F64 80113BA4 AC690054 */  sw         $t1, 0x54($v1)
/* C9F68 80113BA8 E474000C */  swc1       $f20, 0xC($v1)
.Lrace_80113BAC:
/* C9F6C 80113BAC 8FBF0024 */  lw         $ra, 0x24($sp)
/* C9F70 80113BB0 8FB00020 */  lw         $s0, 0x20($sp)
/* C9F74 80113BB4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* C9F78 80113BB8 03E00008 */  jr         $ra
/* C9F7C 80113BBC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_80113BC0
/* C9F80 80113BC0 27BDFF30 */  addiu      $sp, $sp, -0xD0
/* C9F84 80113BC4 AFB100C4 */  sw         $s1, 0xC4($sp)
/* C9F88 80113BC8 00808821 */  addu       $s1, $a0, $zero
/* C9F8C 80113BCC AFBF00CC */  sw         $ra, 0xCC($sp)
/* C9F90 80113BD0 AFB200C8 */  sw         $s2, 0xC8($sp)
/* C9F94 80113BD4 AFB000C0 */  sw         $s0, 0xC0($sp)
/* C9F98 80113BD8 8E230044 */  lw         $v1, 0x44($s1)
/* C9F9C 80113BDC 00A09021 */  addu       $s2, $a1, $zero
/* C9FA0 80113BE0 8C620024 */  lw         $v0, 0x24($v1)
/* C9FA4 80113BE4 27A500A0 */  addiu      $a1, $sp, 0xA0
/* C9FA8 80113BE8 84440010 */  lh         $a0, 0x10($v0)
/* C9FAC 80113BEC 8C420014 */  lw         $v0, 0x14($v0)
/* C9FB0 80113BF0 0040F809 */  jalr       $v0
/* C9FB4 80113BF4 00642021 */   addu      $a0, $v1, $a0
/* C9FB8 80113BF8 8E220044 */  lw         $v0, 0x44($s1)
/* C9FBC 80113BFC C4400028 */  lwc1       $f0, 0x28($v0)
/* C9FC0 80113C00 E7A00010 */  swc1       $f0, 0x10($sp)
/* C9FC4 80113C04 C440002C */  lwc1       $f0, 0x2C($v0)
/* C9FC8 80113C08 27B00010 */  addiu      $s0, $sp, 0x10
/* C9FCC 80113C0C E6000004 */  swc1       $f0, 0x4($s0)
/* C9FD0 80113C10 C4400030 */  lwc1       $f0, 0x30($v0)
/* C9FD4 80113C14 E6000008 */  swc1       $f0, 0x8($s0)
/* C9FD8 80113C18 C4400034 */  lwc1       $f0, 0x34($v0)
/* C9FDC 80113C1C E7A00020 */  swc1       $f0, 0x20($sp)
/* C9FE0 80113C20 C4400038 */  lwc1       $f0, 0x38($v0)
/* C9FE4 80113C24 E7A00024 */  swc1       $f0, 0x24($sp)
/* C9FE8 80113C28 C440003C */  lwc1       $f0, 0x3C($v0)
/* C9FEC 80113C2C E7A00028 */  swc1       $f0, 0x28($sp)
/* C9FF0 80113C30 C4400040 */  lwc1       $f0, 0x40($v0)
/* C9FF4 80113C34 E7A00030 */  swc1       $f0, 0x30($sp)
/* C9FF8 80113C38 C4400044 */  lwc1       $f0, 0x44($v0)
/* C9FFC 80113C3C E7A00034 */  swc1       $f0, 0x34($sp)
/* CA000 80113C40 C4400048 */  lwc1       $f0, 0x48($v0)
/* CA004 80113C44 E7A00038 */  swc1       $f0, 0x38($sp)
/* CA008 80113C48 8E230044 */  lw         $v1, 0x44($s1)
/* CA00C 80113C4C 8C620024 */  lw         $v0, 0x24($v1)
/* CA010 80113C50 02402821 */  addu       $a1, $s2, $zero
/* CA014 80113C54 84440020 */  lh         $a0, 0x20($v0)
/* CA018 80113C58 8C420024 */  lw         $v0, 0x24($v0)
/* CA01C 80113C5C 0040F809 */  jalr       $v0
/* CA020 80113C60 00642021 */   addu      $a0, $v1, $a0
/* CA024 80113C64 8E22003C */  lw         $v0, 0x3C($s1)
/* CA028 80113C68 C7A20028 */  lwc1       $f2, 0x28($sp)
/* CA02C 80113C6C C4400028 */  lwc1       $f0, 0x28($v0)
/* CA030 80113C70 E7A00040 */  swc1       $f0, 0x40($sp)
/* CA034 80113C74 C440002C */  lwc1       $f0, 0x2C($v0)
/* CA038 80113C78 E7A00044 */  swc1       $f0, 0x44($sp)
/* CA03C 80113C7C C4400030 */  lwc1       $f0, 0x30($v0)
/* CA040 80113C80 E7A00048 */  swc1       $f0, 0x48($sp)
/* CA044 80113C84 C4400034 */  lwc1       $f0, 0x34($v0)
/* CA048 80113C88 E7A00050 */  swc1       $f0, 0x50($sp)
/* CA04C 80113C8C C4400038 */  lwc1       $f0, 0x38($v0)
/* CA050 80113C90 E7A00054 */  swc1       $f0, 0x54($sp)
/* CA054 80113C94 C440003C */  lwc1       $f0, 0x3C($v0)
/* CA058 80113C98 E7A00058 */  swc1       $f0, 0x58($sp)
/* CA05C 80113C9C C44A0040 */  lwc1       $f10, 0x40($v0)
/* CA060 80113CA0 E7AA0060 */  swc1       $f10, 0x60($sp)
/* CA064 80113CA4 C4460044 */  lwc1       $f6, 0x44($v0)
/* CA068 80113CA8 46061402 */  mul.s      $f16, $f2, $f6
/* CA06C 80113CAC C7A00024 */  lwc1       $f0, 0x24($sp)
/* CA070 80113CB0 460A1082 */  mul.s      $f2, $f2, $f10
/* CA074 80113CB4 E7A60064 */  swc1       $f6, 0x64($sp)
/* CA078 80113CB8 C44C0048 */  lwc1       $f12, 0x48($v0)
/* CA07C 80113CBC 460C0202 */  mul.s      $f8, $f0, $f12
/* CA080 80113CC0 C7A40020 */  lwc1       $f4, 0x20($sp)
/* CA084 80113CC4 460C2382 */  mul.s      $f14, $f4, $f12
/* CA088 80113CC8 00000000 */  nop
/* CA08C 80113CCC 46062102 */  mul.s      $f4, $f4, $f6
/* CA090 80113CD0 00000000 */  nop
/* CA094 80113CD4 460A0002 */  mul.s      $f0, $f0, $f10
/* CA098 80113CD8 46104201 */  sub.s      $f8, $f8, $f16
/* CA09C 80113CDC 460E1081 */  sub.s      $f2, $f2, $f14
/* CA0A0 80113CE0 46002101 */  sub.s      $f4, $f4, $f0
/* CA0A4 80113CE4 C7A00010 */  lwc1       $f0, 0x10($sp)
/* CA0A8 80113CE8 E7AC0068 */  swc1       $f12, 0x68($sp)
/* CA0AC 80113CEC 46080001 */  sub.s      $f0, $f0, $f8
/* CA0B0 80113CF0 E7A40048 */  swc1       $f4, 0x48($sp)
/* CA0B4 80113CF4 E7A80040 */  swc1       $f8, 0x40($sp)
/* CA0B8 80113CF8 46000182 */  mul.s      $f6, $f0, $f0
/* CA0BC 80113CFC E7A20044 */  swc1       $f2, 0x44($sp)
/* CA0C0 80113D00 E7A00070 */  swc1       $f0, 0x70($sp)
/* CA0C4 80113D04 C6000004 */  lwc1       $f0, 0x4($s0)
/* CA0C8 80113D08 46020001 */  sub.s      $f0, $f0, $f2
/* CA0CC 80113D0C 46000202 */  mul.s      $f8, $f0, $f0
/* CA0D0 80113D10 E7A00074 */  swc1       $f0, 0x74($sp)
/* CA0D4 80113D14 C6000008 */  lwc1       $f0, 0x8($s0)
/* CA0D8 80113D18 46040001 */  sub.s      $f0, $f0, $f4
/* CA0DC 80113D1C 46000082 */  mul.s      $f2, $f0, $f0
/* CA0E0 80113D20 46083180 */  add.s      $f6, $f6, $f8
/* CA0E4 80113D24 46023300 */  add.s      $f12, $f6, $f2
/* CA0E8 80113D28 46006204 */  sqrt.s     $f8, $f12
/* CA0EC 80113D2C 46084032 */  c.eq.s     $f8, $f8
/* CA0F0 80113D30 00000000 */  nop
/* CA0F4 80113D34 45010004 */  bc1t       .Lrace_80113D48
/* CA0F8 80113D38 E7A00078 */   swc1      $f0, 0x78($sp)
/* CA0FC 80113D3C 0C006BC8 */  jal        sqrt
/* CA100 80113D40 00000000 */   nop
/* CA104 80113D44 46000206 */  mov.s      $f8, $f0
.Lrace_80113D48:
/* CA108 80113D48 C7A40040 */  lwc1       $f4, 0x40($sp)
/* CA10C 80113D4C C7A00030 */  lwc1       $f0, 0x30($sp)
/* CA110 80113D50 46002102 */  mul.s      $f4, $f4, $f0
/* CA114 80113D54 C7A60044 */  lwc1       $f6, 0x44($sp)
/* CA118 80113D58 C7A00034 */  lwc1       $f0, 0x34($sp)
/* CA11C 80113D5C 46003182 */  mul.s      $f6, $f6, $f0
/* CA120 80113D60 C7A20038 */  lwc1       $f2, 0x38($sp)
/* CA124 80113D64 C7A00048 */  lwc1       $f0, 0x48($sp)
/* CA128 80113D68 46020002 */  mul.s      $f0, $f0, $f2
/* CA12C 80113D6C 46062100 */  add.s      $f4, $f4, $f6
/* CA130 80113D70 46002100 */  add.s      $f4, $f4, $f0
/* CA134 80113D74 44805000 */  mtc1       $zero, $f10
/* CA138 80113D78 460A203C */  c.lt.s     $f4, $f10
/* CA13C 80113D7C 00000000 */  nop
/* CA140 80113D80 45000002 */  bc1f       .Lrace_80113D8C
/* CA144 80113D84 46004086 */   mov.s     $f2, $f8
/* CA148 80113D88 46001087 */  neg.s      $f2, $f2
.Lrace_80113D8C:
/* CA14C 80113D8C 3C01800D */  lui        $at, %hi(D_race_800CDEA8)
/* CA150 80113D90 C420DEA8 */  lwc1       $f0, %lo(D_race_800CDEA8)($at)
/* CA154 80113D94 46001002 */  mul.s      $f0, $f2, $f0
/* CA158 80113D98 44923000 */  mtc1       $s2, $f6
/* CA15C 80113D9C 468031A0 */  cvt.s.w    $f6, $f6
/* CA160 80113DA0 46060002 */  mul.s      $f0, $f0, $f6
/* CA164 80113DA4 3C01800D */  lui        $at, %hi(D_race_800CDEAC)
/* CA168 80113DA8 C422DEAC */  lwc1       $f2, %lo(D_race_800CDEAC)($at)
/* CA16C 80113DAC 8E2201F4 */  lw         $v0, 0x1F4($s1)
/* CA170 80113DB0 46023182 */  mul.s      $f6, $f6, $f2
/* CA174 80113DB4 C44200C4 */  lwc1       $f2, 0xC4($v0)
/* CA178 80113DB8 C62403B0 */  lwc1       $f4, 0x3B0($s1)
/* CA17C 80113DBC 46020003 */  div.s      $f0, $f0, $f2
/* CA180 80113DC0 46002100 */  add.s      $f4, $f4, $f0
/* CA184 80113DC4 4604503C */  c.lt.s     $f10, $f4
/* CA188 80113DC8 46062082 */  mul.s      $f2, $f4, $f6
/* CA18C 80113DCC 45000005 */  bc1f       .Lrace_80113DE4
/* CA190 80113DD0 E62403B0 */   swc1      $f4, 0x3B0($s1)
/* CA194 80113DD4 4604103C */  c.lt.s     $f2, $f4
/* CA198 80113DD8 00000000 */  nop
/* CA19C 80113DDC 45010009 */  bc1t       .Lrace_80113E04
/* CA1A0 80113DE0 00000000 */   nop
.Lrace_80113DE4:
/* CA1A4 80113DE4 460A203C */  c.lt.s     $f4, $f10
/* CA1A8 80113DE8 00000000 */  nop
/* CA1AC 80113DEC 45020008 */  bc1fl      .Lrace_80113E10
/* CA1B0 80113DF0 AE2003B0 */   sw        $zero, 0x3B0($s1)
/* CA1B4 80113DF4 4602203C */  c.lt.s     $f4, $f2
/* CA1B8 80113DF8 00000000 */  nop
/* CA1BC 80113DFC 45020004 */  bc1fl      .Lrace_80113E10
/* CA1C0 80113E00 AE2003B0 */   sw        $zero, 0x3B0($s1)
.Lrace_80113E04:
/* CA1C4 80113E04 C62003B0 */  lwc1       $f0, 0x3B0($s1)
/* CA1C8 80113E08 46020001 */  sub.s      $f0, $f0, $f2
/* CA1CC 80113E0C E62003B0 */  swc1       $f0, 0x3B0($s1)
.Lrace_80113E10:
/* CA1D0 80113E10 27A20010 */  addiu      $v0, $sp, 0x10
/* CA1D4 80113E14 C7AC0064 */  lwc1       $f12, 0x64($sp)
/* CA1D8 80113E18 C4420008 */  lwc1       $f2, 0x8($v0)
/* CA1DC 80113E1C 46026382 */  mul.s      $f14, $f12, $f2
/* CA1E0 80113E20 C7A40068 */  lwc1       $f4, 0x68($sp)
/* CA1E4 80113E24 C4480004 */  lwc1       $f8, 0x4($v0)
/* CA1E8 80113E28 46082282 */  mul.s      $f10, $f4, $f8
/* CA1EC 80113E2C C7A60010 */  lwc1       $f6, 0x10($sp)
/* CA1F0 80113E30 46062102 */  mul.s      $f4, $f4, $f6
/* CA1F4 80113E34 C7A00060 */  lwc1       $f0, 0x60($sp)
/* CA1F8 80113E38 46020082 */  mul.s      $f2, $f0, $f2
/* CA1FC 80113E3C 00000000 */  nop
/* CA200 80113E40 46080002 */  mul.s      $f0, $f0, $f8
/* CA204 80113E44 00000000 */  nop
/* CA208 80113E48 46066302 */  mul.s      $f12, $f12, $f6
/* CA20C 80113E4C 460A7381 */  sub.s      $f14, $f14, $f10
/* CA210 80113E50 C7A80020 */  lwc1       $f8, 0x20($sp)
/* CA214 80113E54 460E4201 */  sub.s      $f8, $f8, $f14
/* CA218 80113E58 46084282 */  mul.s      $f10, $f8, $f8
/* CA21C 80113E5C 46022101 */  sub.s      $f4, $f4, $f2
/* CA220 80113E60 C7A60024 */  lwc1       $f6, 0x24($sp)
/* CA224 80113E64 46043181 */  sub.s      $f6, $f6, $f4
/* CA228 80113E68 46063402 */  mul.s      $f16, $f6, $f6
/* CA22C 80113E6C 460C0001 */  sub.s      $f0, $f0, $f12
/* CA230 80113E70 C7A20028 */  lwc1       $f2, 0x28($sp)
/* CA234 80113E74 46001081 */  sub.s      $f2, $f2, $f0
/* CA238 80113E78 46021302 */  mul.s      $f12, $f2, $f2
/* CA23C 80113E7C E7AE0050 */  swc1       $f14, 0x50($sp)
/* CA240 80113E80 E7A40054 */  swc1       $f4, 0x54($sp)
/* CA244 80113E84 46105280 */  add.s      $f10, $f10, $f16
/* CA248 80113E88 E7A00058 */  swc1       $f0, 0x58($sp)
/* CA24C 80113E8C E7A80070 */  swc1       $f8, 0x70($sp)
/* CA250 80113E90 460C5300 */  add.s      $f12, $f10, $f12
/* CA254 80113E94 E7A60074 */  swc1       $f6, 0x74($sp)
/* CA258 80113E98 46006004 */  sqrt.s     $f0, $f12
/* CA25C 80113E9C 46000032 */  c.eq.s     $f0, $f0
/* CA260 80113EA0 00000000 */  nop
/* CA264 80113EA4 45010003 */  bc1t       .Lrace_80113EB4
/* CA268 80113EA8 E7A20078 */   swc1      $f2, 0x78($sp)
/* CA26C 80113EAC 0C006BC8 */  jal        sqrt
/* CA270 80113EB0 00000000 */   nop
.Lrace_80113EB4:
/* CA274 80113EB4 C62203B0 */  lwc1       $f2, 0x3B0($s1)
/* CA278 80113EB8 44800000 */  mtc1       $zero, $f0
/* CA27C 80113EBC 46001032 */  c.eq.s     $f2, $f0
/* CA280 80113EC0 00000000 */  nop
/* CA284 80113EC4 45000009 */  bc1f       .Lrace_80113EEC
/* CA288 80113EC8 00000000 */   nop
/* CA28C 80113ECC 8FA70010 */  lw         $a3, 0x10($sp)
/* CA290 80113ED0 8FA80014 */  lw         $t0, 0x14($sp)
/* CA294 80113ED4 8FA90018 */  lw         $t1, 0x18($sp)
/* CA298 80113ED8 AFA70080 */  sw         $a3, 0x80($sp)
/* CA29C 80113EDC AFA80084 */  sw         $t0, 0x84($sp)
/* CA2A0 80113EE0 AFA90088 */  sw         $t1, 0x88($sp)
/* CA2A4 80113EE4 08044FCD */  j          .Lrace_80113F34
/* CA2A8 80113EE8 00000000 */   nop
.Lrace_80113EEC:
/* CA2AC 80113EEC C7A00030 */  lwc1       $f0, 0x30($sp)
/* CA2B0 80113EF0 46020002 */  mul.s      $f0, $f0, $f2
/* CA2B4 80113EF4 C7A40034 */  lwc1       $f4, 0x34($sp)
/* CA2B8 80113EF8 46022102 */  mul.s      $f4, $f4, $f2
/* CA2BC 80113EFC C7A60038 */  lwc1       $f6, 0x38($sp)
/* CA2C0 80113F00 46023182 */  mul.s      $f6, $f6, $f2
/* CA2C4 80113F04 C7A80040 */  lwc1       $f8, 0x40($sp)
/* CA2C8 80113F08 C7A20048 */  lwc1       $f2, 0x48($sp)
/* CA2CC 80113F0C 46004200 */  add.s      $f8, $f8, $f0
/* CA2D0 80113F10 E7A000B0 */  swc1       $f0, 0xB0($sp)
/* CA2D4 80113F14 C7A00044 */  lwc1       $f0, 0x44($sp)
/* CA2D8 80113F18 46061080 */  add.s      $f2, $f2, $f6
/* CA2DC 80113F1C E7A400B4 */  swc1       $f4, 0xB4($sp)
/* CA2E0 80113F20 E7A600B8 */  swc1       $f6, 0xB8($sp)
/* CA2E4 80113F24 46040000 */  add.s      $f0, $f0, $f4
/* CA2E8 80113F28 E7A80080 */  swc1       $f8, 0x80($sp)
/* CA2EC 80113F2C E7A20088 */  swc1       $f2, 0x88($sp)
/* CA2F0 80113F30 E7A00084 */  swc1       $f0, 0x84($sp)
.Lrace_80113F34:
/* CA2F4 80113F34 8FA70020 */  lw         $a3, 0x20($sp)
/* CA2F8 80113F38 8FA80024 */  lw         $t0, 0x24($sp)
/* CA2FC 80113F3C 8FA90028 */  lw         $t1, 0x28($sp)
/* CA300 80113F40 AFA70090 */  sw         $a3, 0x90($sp)
/* CA304 80113F44 AFA80094 */  sw         $t0, 0x94($sp)
/* CA308 80113F48 AFA90098 */  sw         $t1, 0x98($sp)
/* CA30C 80113F4C 8E23003C */  lw         $v1, 0x3C($s1)
/* CA310 80113F50 27B000A0 */  addiu      $s0, $sp, 0xA0
/* CA314 80113F54 8C620024 */  lw         $v0, 0x24($v1)
/* CA318 80113F58 02002821 */  addu       $a1, $s0, $zero
/* CA31C 80113F5C 84440018 */  lh         $a0, 0x18($v0)
/* CA320 80113F60 8C42001C */  lw         $v0, 0x1C($v0)
/* CA324 80113F64 0040F809 */  jalr       $v0
/* CA328 80113F68 00642021 */   addu      $a0, $v1, $a0
/* CA32C 80113F6C 27A50080 */  addiu      $a1, $sp, 0x80
/* CA330 80113F70 8E24003C */  lw         $a0, 0x3C($s1)
/* CA334 80113F74 0C01577E */  jal        func_80055DF8
/* CA338 80113F78 27A60090 */   addiu     $a2, $sp, 0x90
/* CA33C 80113F7C 8E230040 */  lw         $v1, 0x40($s1)
/* CA340 80113F80 10600023 */  beqz       $v1, .Lrace_80114010
/* CA344 80113F84 02402821 */   addu      $a1, $s2, $zero
/* CA348 80113F88 8E22003C */  lw         $v0, 0x3C($s1)
/* CA34C 80113F8C 3C01800D */  lui        $at, %hi(D_race_800CDEB0)
/* CA350 80113F90 C422DEB0 */  lwc1       $f2, %lo(D_race_800CDEB0)($at)
/* CA354 80113F94 C4400028 */  lwc1       $f0, 0x28($v0)
/* CA358 80113F98 E4600028 */  swc1       $f0, 0x28($v1)
/* CA35C 80113F9C C440002C */  lwc1       $f0, 0x2C($v0)
/* CA360 80113FA0 E460002C */  swc1       $f0, 0x2C($v1)
/* CA364 80113FA4 C4400030 */  lwc1       $f0, 0x30($v0)
/* CA368 80113FA8 E4600030 */  swc1       $f0, 0x30($v1)
/* CA36C 80113FAC C4400034 */  lwc1       $f0, 0x34($v0)
/* CA370 80113FB0 E4600034 */  swc1       $f0, 0x34($v1)
/* CA374 80113FB4 C4400038 */  lwc1       $f0, 0x38($v0)
/* CA378 80113FB8 E4600038 */  swc1       $f0, 0x38($v1)
/* CA37C 80113FBC C440003C */  lwc1       $f0, 0x3C($v0)
/* CA380 80113FC0 E460003C */  swc1       $f0, 0x3C($v1)
/* CA384 80113FC4 C4400040 */  lwc1       $f0, 0x40($v0)
/* CA388 80113FC8 E4600040 */  swc1       $f0, 0x40($v1)
/* CA38C 80113FCC C4400044 */  lwc1       $f0, 0x44($v0)
/* CA390 80113FD0 E4600044 */  swc1       $f0, 0x44($v1)
/* CA394 80113FD4 C4400048 */  lwc1       $f0, 0x48($v0)
/* CA398 80113FD8 E4600048 */  swc1       $f0, 0x48($v1)
/* CA39C 80113FDC 8C47004C */  lw         $a3, 0x4C($v0)
/* CA3A0 80113FE0 8C480050 */  lw         $t0, 0x50($v0)
/* CA3A4 80113FE4 8C490054 */  lw         $t1, 0x54($v0)
/* CA3A8 80113FE8 AC67004C */  sw         $a3, 0x4C($v1)
/* CA3AC 80113FEC AC680050 */  sw         $t0, 0x50($v1)
/* CA3B0 80113FF0 AC690054 */  sw         $t1, 0x54($v1)
/* CA3B4 80113FF4 E462000C */  swc1       $f2, 0xC($v1)
/* CA3B8 80113FF8 8E230040 */  lw         $v1, 0x40($s1)
/* CA3BC 80113FFC 8C620024 */  lw         $v0, 0x24($v1)
/* CA3C0 80114000 84440020 */  lh         $a0, 0x20($v0)
/* CA3C4 80114004 8C420024 */  lw         $v0, 0x24($v0)
/* CA3C8 80114008 0040F809 */  jalr       $v0
/* CA3CC 8011400C 00642021 */   addu      $a0, $v1, $a0
.Lrace_80114010:
/* CA3D0 80114010 8E23003C */  lw         $v1, 0x3C($s1)
/* CA3D4 80114014 2625004C */  addiu      $a1, $s1, 0x4C
/* CA3D8 80114018 8C620024 */  lw         $v0, 0x24($v1)
/* CA3DC 8011401C 02003021 */  addu       $a2, $s0, $zero
/* CA3E0 80114020 84440060 */  lh         $a0, 0x60($v0)
/* CA3E4 80114024 8C420064 */  lw         $v0, 0x64($v0)
/* CA3E8 80114028 0040F809 */  jalr       $v0
/* CA3EC 8011402C 00642021 */   addu      $a0, $v1, $a0
/* CA3F0 80114030 8E230048 */  lw         $v1, 0x48($s1)
/* CA3F4 80114034 8C620024 */  lw         $v0, 0x24($v1)
/* CA3F8 80114038 02002821 */  addu       $a1, $s0, $zero
/* CA3FC 8011403C 84440018 */  lh         $a0, 0x18($v0)
/* CA400 80114040 8C42001C */  lw         $v0, 0x1C($v0)
/* CA404 80114044 0040F809 */  jalr       $v0
/* CA408 80114048 00642021 */   addu      $a0, $v1, $a0
/* CA40C 8011404C 8E22003C */  lw         $v0, 0x3C($s1)
/* CA410 80114050 8E230048 */  lw         $v1, 0x48($s1)
/* CA414 80114054 C4400028 */  lwc1       $f0, 0x28($v0)
/* CA418 80114058 E4600028 */  swc1       $f0, 0x28($v1)
/* CA41C 8011405C C440002C */  lwc1       $f0, 0x2C($v0)
/* CA420 80114060 E460002C */  swc1       $f0, 0x2C($v1)
/* CA424 80114064 C4400030 */  lwc1       $f0, 0x30($v0)
/* CA428 80114068 E4600030 */  swc1       $f0, 0x30($v1)
/* CA42C 8011406C C4400034 */  lwc1       $f0, 0x34($v0)
/* CA430 80114070 E4600034 */  swc1       $f0, 0x34($v1)
/* CA434 80114074 C4400038 */  lwc1       $f0, 0x38($v0)
/* CA438 80114078 E4600038 */  swc1       $f0, 0x38($v1)
/* CA43C 8011407C C440003C */  lwc1       $f0, 0x3C($v0)
/* CA440 80114080 E460003C */  swc1       $f0, 0x3C($v1)
/* CA444 80114084 C4400040 */  lwc1       $f0, 0x40($v0)
/* CA448 80114088 E4600040 */  swc1       $f0, 0x40($v1)
/* CA44C 8011408C C4400044 */  lwc1       $f0, 0x44($v0)
/* CA450 80114090 E4600044 */  swc1       $f0, 0x44($v1)
/* CA454 80114094 C4400048 */  lwc1       $f0, 0x48($v0)
/* CA458 80114098 E4600048 */  swc1       $f0, 0x48($v1)
/* CA45C 8011409C 8FBF00CC */  lw         $ra, 0xCC($sp)
/* CA460 801140A0 8FB200C8 */  lw         $s2, 0xC8($sp)
/* CA464 801140A4 8FB100C4 */  lw         $s1, 0xC4($sp)
/* CA468 801140A8 8FB000C0 */  lw         $s0, 0xC0($sp)
/* CA46C 801140AC 03E00008 */  jr         $ra
/* CA470 801140B0 27BD00D0 */   addiu     $sp, $sp, 0xD0

glabel func_race_801140B4
/* CA474 801140B4 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* CA478 801140B8 AFB10084 */  sw         $s1, 0x84($sp)
/* CA47C 801140BC 00808821 */  addu       $s1, $a0, $zero
/* CA480 801140C0 AFB20088 */  sw         $s2, 0x88($sp)
/* CA484 801140C4 AFBF0094 */  sw         $ra, 0x94($sp)
/* CA488 801140C8 AFB40090 */  sw         $s4, 0x90($sp)
/* CA48C 801140CC AFB3008C */  sw         $s3, 0x8C($sp)
/* CA490 801140D0 AFB00080 */  sw         $s0, 0x80($sp)
/* CA494 801140D4 F7B600A0 */  sdc1       $f22, 0xA0($sp)
/* CA498 801140D8 F7B40098 */  sdc1       $f20, 0x98($sp)
/* CA49C 801140DC 8E2201F0 */  lw         $v0, 0x1F0($s1)
/* CA4A0 801140E0 8E240048 */  lw         $a0, 0x48($s1)
/* CA4A4 801140E4 24540C70 */  addiu      $s4, $v0, 0xC70
/* CA4A8 801140E8 8C83005C */  lw         $v1, 0x5C($a0)
/* CA4AC 801140EC 3C020002 */  lui        $v0, (0x20000 >> 16)
/* CA4B0 801140F0 00621824 */  and        $v1, $v1, $v0
/* CA4B4 801140F4 8E2201F4 */  lw         $v0, 0x1F4($s1)
/* CA4B8 801140F8 C696000C */  lwc1       $f22, 0xC($s4)
/* CA4BC 801140FC C454061C */  lwc1       $f20, 0x61C($v0)
/* CA4C0 80114100 10600004 */  beqz       $v1, .Lrace_80114114
/* CA4C4 80114104 00A09021 */   addu      $s2, $a1, $zero
/* CA4C8 80114108 948600D8 */  lhu        $a2, 0xD8($a0)
/* CA4CC 8011410C 08045046 */  j          .Lrace_80114118
/* CA4D0 80114110 00000000 */   nop
.Lrace_80114114:
/* CA4D4 80114114 948600BC */  lhu        $a2, 0xBC($a0)
.Lrace_80114118:
/* CA4D8 80114118 8E220048 */  lw         $v0, 0x48($s1)
/* CA4DC 8011411C 8C430024 */  lw         $v1, 0x24($v0)
/* CA4E0 80114120 02402821 */  addu       $a1, $s2, $zero
/* CA4E4 80114124 84640020 */  lh         $a0, 0x20($v1)
/* CA4E8 80114128 00442021 */  addu       $a0, $v0, $a0
/* CA4EC 8011412C 8C620024 */  lw         $v0, 0x24($v1)
/* CA4F0 80114130 8E33039C */  lw         $s3, 0x39C($s1)
/* CA4F4 80114134 0040F809 */  jalr       $v0
/* CA4F8 80114138 00C08021 */   addu      $s0, $a2, $zero
/* CA4FC 8011413C 8E2303A0 */  lw         $v1, 0x3A0($s1)
/* CA500 80114140 0243102B */  sltu       $v0, $s2, $v1
/* CA504 80114144 10400004 */  beqz       $v0, .Lrace_80114158
/* CA508 80114148 AE20039C */   sw        $zero, 0x39C($s1)
/* CA50C 8011414C 00721023 */  subu       $v0, $v1, $s2
/* CA510 80114150 08045057 */  j          .Lrace_8011415C
/* CA514 80114154 AE2203A0 */   sw        $v0, 0x3A0($s1)
.Lrace_80114158:
/* CA518 80114158 AE2003A0 */  sw         $zero, 0x3A0($s1)
.Lrace_8011415C:
/* CA51C 8011415C 3C028013 */  lui        $v0, %hi(D_race_80132258)
/* CA520 80114160 8E2401F0 */  lw         $a0, 0x1F0($s1)
/* CA524 80114164 8C422258 */  lw         $v0, %lo(D_race_80132258)($v0)
/* CA528 80114168 8C830CE4 */  lw         $v1, 0xCE4($a0)
/* CA52C 8011416C 0062182B */  sltu       $v1, $v1, $v0
/* CA530 80114170 14600032 */  bnez       $v1, .Lrace_8011423C
/* CA534 80114174 24020001 */   addiu     $v0, $zero, 0x1
/* CA538 80114178 8C830D00 */  lw         $v1, 0xD00($a0)
/* CA53C 8011417C 14620023 */  bne        $v1, $v0, .Lrace_8011420C
/* CA540 80114180 2602FFF5 */   addiu     $v0, $s0, -0xB
/* CA544 80114184 2402000D */  addiu      $v0, $zero, 0xD
/* CA548 80114188 1202016A */  beq        $s0, $v0, .Lrace_80114734
/* CA54C 8011418C 2412000F */   addiu     $s2, $zero, 0xF
/* CA550 80114190 12120168 */  beq        $s0, $s2, .Lrace_80114734
/* CA554 80114194 2402000E */   addiu     $v0, $zero, 0xE
/* CA558 80114198 12020166 */  beq        $s0, $v0, .Lrace_80114734
/* CA55C 8011419C 3C058003 */   lui       $a1, %hi(D_8002FAB0)
/* CA560 801141A0 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* CA564 801141A4 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* CA568 801141A8 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* CA56C 801141AC 24840001 */  addiu      $a0, $a0, 0x1
/* CA570 801141B0 308403FF */  andi       $a0, $a0, 0x3FF
/* CA574 801141B4 00041040 */  sll        $v0, $a0, 1
/* CA578 801141B8 00431021 */  addu       $v0, $v0, $v1
/* CA57C 801141BC 94420000 */  lhu        $v0, 0x0($v0)
/* CA580 801141C0 30420001 */  andi       $v0, $v0, 0x1
/* CA584 801141C4 14400006 */  bnez       $v0, .Lrace_801141E0
/* CA588 801141C8 ACA4FAB0 */   sw        $a0, %lo(D_8002FAB0)($a1)
/* CA58C 801141CC 8E240048 */  lw         $a0, 0x48($s1)
/* CA590 801141D0 0C01971D */  jal        func_80065C74
/* CA594 801141D4 2405000D */   addiu     $a1, $zero, 0xD
/* CA598 801141D8 080451CD */  j          .Lrace_80114734
/* CA59C 801141DC 00000000 */   nop
.Lrace_801141E0:
/* CA5A0 801141E0 8E240048 */  lw         $a0, 0x48($s1)
/* CA5A4 801141E4 0C01971D */  jal        func_80065C74
/* CA5A8 801141E8 2405000E */   addiu     $a1, $zero, 0xE
/* CA5AC 801141EC 8E240048 */  lw         $a0, 0x48($s1)
/* CA5B0 801141F0 3C03FFB1 */  lui        $v1, (0xFFB1FFFF >> 16)
/* CA5B4 801141F4 8C82005C */  lw         $v0, 0x5C($a0)
/* CA5B8 801141F8 3463FFFF */  ori        $v1, $v1, (0xFFB1FFFF & 0xFFFF)
/* CA5BC 801141FC A49200D8 */  sh         $s2, 0xD8($a0)
/* CA5C0 80114200 00431024 */  and        $v0, $v0, $v1
/* CA5C4 80114204 080451A9 */  j          .Lrace_801146A4
/* CA5C8 80114208 3C030010 */   lui       $v1, (0x100000 >> 16)
.Lrace_8011420C:
/* CA5CC 8011420C 2C420002 */  sltiu      $v0, $v0, 0x2
/* CA5D0 80114210 14400148 */  bnez       $v0, .Lrace_80114734
/* CA5D4 80114214 00000000 */   nop
/* CA5D8 80114218 8E240048 */  lw         $a0, 0x48($s1)
/* CA5DC 8011421C 0C01971D */  jal        func_80065C74
/* CA5E0 80114220 2405000B */   addiu     $a1, $zero, 0xB
/* CA5E4 80114224 3C05FFB1 */  lui        $a1, (0xFFB1FFFF >> 16)
/* CA5E8 80114228 8E240048 */  lw         $a0, 0x48($s1)
/* CA5EC 8011422C 34A5FFFF */  ori        $a1, $a1, (0xFFB1FFFF & 0xFFFF)
/* CA5F0 80114230 8C82005C */  lw         $v0, 0x5C($a0)
/* CA5F4 80114234 080451A6 */  j          .Lrace_80114698
/* CA5F8 80114238 2403000C */   addiu     $v1, $zero, 0xC
.Lrace_8011423C:
/* CA5FC 8011423C C62203A4 */  lwc1       $f2, 0x3A4($s1)
/* CA600 80114240 3C01800D */  lui        $at, %hi(D_race_800CDEB4)
/* CA604 80114244 C420DEB4 */  lwc1       $f0, %lo(D_race_800CDEB4)($at)
/* CA608 80114248 4602003C */  c.lt.s     $f0, $f2
/* CA60C 8011424C 00000000 */  nop
/* CA610 80114250 45000023 */  bc1f       .Lrace_801142E0
/* CA614 80114254 32620001 */   andi      $v0, $s3, 0x1
/* CA618 80114258 3C01800D */  lui        $at, %hi(D_race_800CDEB8)
/* CA61C 8011425C C420DEB8 */  lwc1       $f0, %lo(D_race_800CDEB8)($at)
/* CA620 80114260 4600A03C */  c.lt.s     $f20, $f0
/* CA624 80114264 00000000 */  nop
/* CA628 80114268 4500001D */  bc1f       .Lrace_801142E0
/* CA62C 8011426C 00000000 */   nop
/* CA630 80114270 1200001B */  beqz       $s0, .Lrace_801142E0
/* CA634 80114274 00000000 */   nop
/* CA638 80114278 0C04339E */  jal        func_race_8010CE78
/* CA63C 8011427C 00002821 */   addu      $a1, $zero, $zero
/* CA640 80114280 8E240048 */  lw         $a0, 0x48($s1)
/* CA644 80114284 0C01971D */  jal        func_80065C74
/* CA648 80114288 00002821 */   addu      $a1, $zero, $zero
/* CA64C 8011428C 3C05FFB1 */  lui        $a1, (0xFFB1FFFF >> 16)
/* CA650 80114290 8E240048 */  lw         $a0, 0x48($s1)
/* CA654 80114294 34A5FFFF */  ori        $a1, $a1, (0xFFB1FFFF & 0xFFFF)
/* CA658 80114298 8C82005C */  lw         $v0, 0x5C($a0)
/* CA65C 8011429C 24030009 */  addiu      $v1, $zero, 0x9
/* CA660 801142A0 A48300D8 */  sh         $v1, 0xD8($a0)
/* CA664 801142A4 3C030010 */  lui        $v1, (0x100000 >> 16)
/* CA668 801142A8 00451024 */  and        $v0, $v0, $a1
/* CA66C 801142AC 00431025 */  or         $v0, $v0, $v1
/* CA670 801142B0 3C030040 */  lui        $v1, (0x400000 >> 16)
/* CA674 801142B4 00431025 */  or         $v0, $v0, $v1
/* CA678 801142B8 AC82005C */  sw         $v0, 0x5C($a0)
/* CA67C 801142BC 8E2201F0 */  lw         $v0, 0x1F0($s1)
/* CA680 801142C0 AE2003A4 */  sw         $zero, 0x3A4($s1)
/* CA684 801142C4 8C440014 */  lw         $a0, 0x14($v0)
/* CA688 801142C8 1080011A */  beqz       $a0, .Lrace_80114734
/* CA68C 801142CC 00000000 */   nop
/* CA690 801142D0 0C03D3CD */  jal        func_race_800F4F34
/* CA694 801142D4 00000000 */   nop
/* CA698 801142D8 080451CD */  j          .Lrace_80114734
/* CA69C 801142DC 00000000 */   nop
.Lrace_801142E0:
/* CA6A0 801142E0 10400004 */  beqz       $v0, .Lrace_801142F4
/* CA6A4 801142E4 E63403A4 */   swc1      $f20, 0x3A4($s1)
/* CA6A8 801142E8 8E240048 */  lw         $a0, 0x48($s1)
/* CA6AC 801142EC 0804519F */  j          .Lrace_8011467C
/* CA6B0 801142F0 24050001 */   addiu     $a1, $zero, 0x1
.Lrace_801142F4:
/* CA6B4 801142F4 32620002 */  andi       $v0, $s3, 0x2
/* CA6B8 801142F8 10400018 */  beqz       $v0, .Lrace_8011435C
/* CA6BC 801142FC 2E020002 */   sltiu     $v0, $s0, 0x2
/* CA6C0 80114300 8E240048 */  lw         $a0, 0x48($s1)
/* CA6C4 80114304 0C01971D */  jal        func_80065C74
/* CA6C8 80114308 2405000A */   addiu     $a1, $zero, 0xA
/* CA6CC 8011430C 3C05FFB1 */  lui        $a1, (0xFFB1FFFF >> 16)
/* CA6D0 80114310 8E240048 */  lw         $a0, 0x48($s1)
/* CA6D4 80114314 34A5FFFF */  ori        $a1, $a1, (0xFFB1FFFF & 0xFFFF)
/* CA6D8 80114318 8C82005C */  lw         $v0, 0x5C($a0)
/* CA6DC 8011431C 24030009 */  addiu      $v1, $zero, 0x9
/* CA6E0 80114320 A48300D8 */  sh         $v1, 0xD8($a0)
/* CA6E4 80114324 3C030010 */  lui        $v1, (0x100000 >> 16)
/* CA6E8 80114328 00451024 */  and        $v0, $v0, $a1
/* CA6EC 8011432C 00431025 */  or         $v0, $v0, $v1
/* CA6F0 80114330 3C030040 */  lui        $v1, (0x400000 >> 16)
/* CA6F4 80114334 00431025 */  or         $v0, $v0, $v1
/* CA6F8 80114338 AC82005C */  sw         $v0, 0x5C($a0)
/* CA6FC 8011433C 8E2201F0 */  lw         $v0, 0x1F0($s1)
/* CA700 80114340 8C440014 */  lw         $a0, 0x14($v0)
/* CA704 80114344 108000FB */  beqz       $a0, .Lrace_80114734
/* CA708 80114348 00000000 */   nop
/* CA70C 8011434C 0C03D3E5 */  jal        func_race_800F4F94
/* CA710 80114350 00000000 */   nop
/* CA714 80114354 080451CD */  j          .Lrace_80114734
/* CA718 80114358 00000000 */   nop
.Lrace_8011435C:
/* CA71C 8011435C 144000F5 */  bnez       $v0, .Lrace_80114734
/* CA720 80114360 2402000A */   addiu     $v0, $zero, 0xA
/* CA724 80114364 120200F3 */  beq        $s0, $v0, .Lrace_80114734
/* CA728 80114368 2402000D */   addiu     $v0, $zero, 0xD
/* CA72C 8011436C 120200F1 */  beq        $s0, $v0, .Lrace_80114734
/* CA730 80114370 2402000F */   addiu     $v0, $zero, 0xF
/* CA734 80114374 120200EF */  beq        $s0, $v0, .Lrace_80114734
/* CA738 80114378 2402000C */   addiu     $v0, $zero, 0xC
/* CA73C 8011437C 120200ED */  beq        $s0, $v0, .Lrace_80114734
/* CA740 80114380 00000000 */   nop
/* CA744 80114384 C6800010 */  lwc1       $f0, 0x10($s4)
/* CA748 80114388 44801000 */  mtc1       $zero, $f2
/* CA74C 8011438C 4602003C */  c.lt.s     $f0, $f2
/* CA750 80114390 00000000 */  nop
/* CA754 80114394 45000012 */  bc1f       .Lrace_801143E0
/* CA758 80114398 24020003 */   addiu     $v0, $zero, 0x3
/* CA75C 8011439C 4602A03C */  c.lt.s     $f20, $f2
/* CA760 801143A0 00000000 */  nop
/* CA764 801143A4 4500000D */  bc1f       .Lrace_801143DC
/* CA768 801143A8 2602FFFE */   addiu     $v0, $s0, -0x2
/* CA76C 801143AC 2C420002 */  sltiu      $v0, $v0, 0x2
/* CA770 801143B0 144000E0 */  bnez       $v0, .Lrace_80114734
/* CA774 801143B4 00000000 */   nop
/* CA778 801143B8 8E240048 */  lw         $a0, 0x48($s1)
/* CA77C 801143BC 0C01971D */  jal        func_80065C74
/* CA780 801143C0 24050002 */   addiu     $a1, $zero, 0x2
/* CA784 801143C4 3C05FFB1 */  lui        $a1, (0xFFB1FFFF >> 16)
/* CA788 801143C8 8E240048 */  lw         $a0, 0x48($s1)
/* CA78C 801143CC 34A5FFFF */  ori        $a1, $a1, (0xFFB1FFFF & 0xFFFF)
/* CA790 801143D0 8C82005C */  lw         $v0, 0x5C($a0)
/* CA794 801143D4 080451A6 */  j          .Lrace_80114698
/* CA798 801143D8 24030003 */   addiu     $v1, $zero, 0x3
.Lrace_801143DC:
/* CA79C 801143DC 24020003 */  addiu      $v0, $zero, 0x3
.Lrace_801143E0:
/* CA7A0 801143E0 16020004 */  bne        $s0, $v0, .Lrace_801143F4
/* CA7A4 801143E4 24020007 */   addiu     $v0, $zero, 0x7
/* CA7A8 801143E8 8E240048 */  lw         $a0, 0x48($s1)
/* CA7AC 801143EC 0804519F */  j          .Lrace_8011467C
/* CA7B0 801143F0 24050004 */   addiu     $a1, $zero, 0x4
.Lrace_801143F4:
/* CA7B4 801143F4 120200CF */  beq        $s0, $v0, .Lrace_80114734
/* CA7B8 801143F8 24020010 */   addiu     $v0, $zero, 0x10
/* CA7BC 801143FC 120200CD */  beq        $s0, $v0, .Lrace_80114734
/* CA7C0 80114400 24020008 */   addiu     $v0, $zero, 0x8
/* CA7C4 80114404 120200CB */  beq        $s0, $v0, .Lrace_80114734
/* CA7C8 80114408 24020011 */   addiu     $v0, $zero, 0x11
/* CA7CC 8011440C 120200C9 */  beq        $s0, $v0, .Lrace_80114734
/* CA7D0 80114410 00000000 */   nop
/* CA7D4 80114414 8E2203A0 */  lw         $v0, 0x3A0($s1)
/* CA7D8 80114418 144000A7 */  bnez       $v0, .Lrace_801146B8
/* CA7DC 8011441C 27A50020 */   addiu     $a1, $sp, 0x20
/* CA7E0 80114420 8E230044 */  lw         $v1, 0x44($s1)
/* CA7E4 80114424 8C620024 */  lw         $v0, 0x24($v1)
/* CA7E8 80114428 84440010 */  lh         $a0, 0x10($v0)
/* CA7EC 8011442C 8C420014 */  lw         $v0, 0x14($v0)
/* CA7F0 80114430 0040F809 */  jalr       $v0
/* CA7F4 80114434 00642021 */   addu      $a0, $v1, $a0
/* CA7F8 80114438 3C064000 */  lui        $a2, (0x40000000 >> 16)
/* CA7FC 8011443C 8E2201F0 */  lw         $v0, 0x1F0($s1)
/* CA800 80114440 3C07471C */  lui        $a3, (0x471C4000 >> 16)
/* CA804 80114444 34E74000 */  ori        $a3, $a3, (0x471C4000 & 0xFFFF)
/* CA808 80114448 8C44000C */  lw         $a0, 0xC($v0)
/* CA80C 8011444C 0C0445F0 */  jal        func_race_801117C0
/* CA810 80114450 27A50020 */   addiu     $a1, $sp, 0x20
/* CA814 80114454 10400098 */  beqz       $v0, .Lrace_801146B8
/* CA818 80114458 AE220398 */   sw        $v0, 0x398($s1)
/* CA81C 8011445C 8E220044 */  lw         $v0, 0x44($s1)
/* CA820 80114460 C4400028 */  lwc1       $f0, 0x28($v0)
/* CA824 80114464 E7A00040 */  swc1       $f0, 0x40($sp)
/* CA828 80114468 C440002C */  lwc1       $f0, 0x2C($v0)
/* CA82C 8011446C E7A00044 */  swc1       $f0, 0x44($sp)
/* CA830 80114470 C4400030 */  lwc1       $f0, 0x30($v0)
/* CA834 80114474 E7A00048 */  swc1       $f0, 0x48($sp)
/* CA838 80114478 C4400034 */  lwc1       $f0, 0x34($v0)
/* CA83C 8011447C E7A00050 */  swc1       $f0, 0x50($sp)
/* CA840 80114480 C4400038 */  lwc1       $f0, 0x38($v0)
/* CA844 80114484 E7A00054 */  swc1       $f0, 0x54($sp)
/* CA848 80114488 C440003C */  lwc1       $f0, 0x3C($v0)
/* CA84C 8011448C E7A00058 */  swc1       $f0, 0x58($sp)
/* CA850 80114490 C4400040 */  lwc1       $f0, 0x40($v0)
/* CA854 80114494 E7A00060 */  swc1       $f0, 0x60($sp)
/* CA858 80114498 C4400044 */  lwc1       $f0, 0x44($v0)
/* CA85C 8011449C E7A00064 */  swc1       $f0, 0x64($sp)
/* CA860 801144A0 C4400048 */  lwc1       $f0, 0x48($v0)
/* CA864 801144A4 E7A00068 */  swc1       $f0, 0x68($sp)
/* CA868 801144A8 8E220398 */  lw         $v0, 0x398($s1)
/* CA86C 801144AC 8C43005C */  lw         $v1, 0x5C($v0)
/* CA870 801144B0 8C620024 */  lw         $v0, 0x24($v1)
/* CA874 801144B4 27A50030 */  addiu      $a1, $sp, 0x30
/* CA878 801144B8 84440010 */  lh         $a0, 0x10($v0)
/* CA87C 801144BC 8C420014 */  lw         $v0, 0x14($v0)
/* CA880 801144C0 0040F809 */  jalr       $v0
/* CA884 801144C4 00642021 */   addu      $a0, $v1, $a0
/* CA888 801144C8 27A40070 */  addiu      $a0, $sp, 0x70
/* CA88C 801144CC C7A60030 */  lwc1       $f6, 0x30($sp)
/* CA890 801144D0 C7A00020 */  lwc1       $f0, 0x20($sp)
/* CA894 801144D4 C7A40034 */  lwc1       $f4, 0x34($sp)
/* CA898 801144D8 46003181 */  sub.s      $f6, $f6, $f0
/* CA89C 801144DC C7A00024 */  lwc1       $f0, 0x24($sp)
/* CA8A0 801144E0 C7A20028 */  lwc1       $f2, 0x28($sp)
/* CA8A4 801144E4 46002101 */  sub.s      $f4, $f4, $f0
/* CA8A8 801144E8 C7A00038 */  lwc1       $f0, 0x38($sp)
/* CA8AC 801144EC 00802821 */  addu       $a1, $a0, $zero
/* CA8B0 801144F0 46020001 */  sub.s      $f0, $f0, $f2
/* CA8B4 801144F4 E7A60070 */  swc1       $f6, 0x70($sp)
/* CA8B8 801144F8 E7A40074 */  swc1       $f4, 0x74($sp)
/* CA8BC 801144FC 0C000F26 */  jal        func_80003C98
/* CA8C0 80114500 E7A00078 */   swc1      $f0, 0x78($sp)
/* CA8C4 80114504 C7AA0070 */  lwc1       $f10, 0x70($sp)
/* CA8C8 80114508 C7A40040 */  lwc1       $f4, 0x40($sp)
/* CA8CC 8011450C 46045102 */  mul.s      $f4, $f10, $f4
/* CA8D0 80114510 C7A80074 */  lwc1       $f8, 0x74($sp)
/* CA8D4 80114514 C7A20044 */  lwc1       $f2, 0x44($sp)
/* CA8D8 80114518 46024082 */  mul.s      $f2, $f8, $f2
/* CA8DC 8011451C C7A60078 */  lwc1       $f6, 0x78($sp)
/* CA8E0 80114520 C7A00048 */  lwc1       $f0, 0x48($sp)
/* CA8E4 80114524 46003002 */  mul.s      $f0, $f6, $f0
/* CA8E8 80114528 46022100 */  add.s      $f4, $f4, $f2
/* CA8EC 8011452C 46002100 */  add.s      $f4, $f4, $f0
/* CA8F0 80114530 3C01800D */  lui        $at, %hi(D_race_800CDEBC)
/* CA8F4 80114534 C420DEBC */  lwc1       $f0, %lo(D_race_800CDEBC)($at)
/* CA8F8 80114538 4600203C */  c.lt.s     $f4, $f0
/* CA8FC 8011453C 00000000 */  nop
/* CA900 80114540 45000016 */  bc1f       .Lrace_8011459C
/* CA904 80114544 2405FFFF */   addiu     $a1, $zero, -0x1
/* CA908 80114548 3C01800D */  lui        $at, %hi(D_race_800CDEC0)
/* CA90C 8011454C C420DEC0 */  lwc1       $f0, %lo(D_race_800CDEC0)($at)
/* CA910 80114550 4604003C */  c.lt.s     $f0, $f4
/* CA914 80114554 00000000 */  nop
/* CA918 80114558 45000012 */  bc1f       .Lrace_801145A4
/* CA91C 8011455C 00000000 */   nop
/* CA920 80114560 C7A40050 */  lwc1       $f4, 0x50($sp)
/* CA924 80114564 46045102 */  mul.s      $f4, $f10, $f4
/* CA928 80114568 C7A20054 */  lwc1       $f2, 0x54($sp)
/* CA92C 8011456C 46024082 */  mul.s      $f2, $f8, $f2
/* CA930 80114570 C7A00058 */  lwc1       $f0, 0x58($sp)
/* CA934 80114574 46003002 */  mul.s      $f0, $f6, $f0
/* CA938 80114578 46022100 */  add.s      $f4, $f4, $f2
/* CA93C 8011457C 46002100 */  add.s      $f4, $f4, $f0
/* CA940 80114580 44800000 */  mtc1       $zero, $f0
/* CA944 80114584 4600203C */  c.lt.s     $f4, $f0
/* CA948 80114588 00000000 */  nop
/* CA94C 8011458C 45000020 */  bc1f       .Lrace_80114610
/* CA950 80114590 24050010 */   addiu     $a1, $zero, 0x10
/* CA954 80114594 08045184 */  j          .Lrace_80114610
/* CA958 80114598 24050007 */   addiu     $a1, $zero, 0x7
.Lrace_8011459C:
/* CA95C 8011459C 3C01800D */  lui        $at, %hi(D_race_800CDEC4)
/* CA960 801145A0 C420DEC4 */  lwc1       $f0, %lo(D_race_800CDEC4)($at)
.Lrace_801145A4:
/* CA964 801145A4 4600203E */  c.le.s     $f4, $f0
/* CA968 801145A8 00000000 */  nop
/* CA96C 801145AC 45000019 */  bc1f       .Lrace_80114614
/* CA970 801145B0 2402FFFF */   addiu     $v0, $zero, -0x1
/* CA974 801145B4 3C01800D */  lui        $at, %hi(D_race_800CDEC8)
/* CA978 801145B8 C420DEC8 */  lwc1       $f0, %lo(D_race_800CDEC8)($at)
/* CA97C 801145BC 4604003C */  c.lt.s     $f0, $f4
/* CA980 801145C0 00000000 */  nop
/* CA984 801145C4 45000013 */  bc1f       .Lrace_80114614
/* CA988 801145C8 00000000 */   nop
/* CA98C 801145CC C7A60070 */  lwc1       $f6, 0x70($sp)
/* CA990 801145D0 C7A00050 */  lwc1       $f0, 0x50($sp)
/* CA994 801145D4 46003182 */  mul.s      $f6, $f6, $f0
/* CA998 801145D8 C7A40074 */  lwc1       $f4, 0x74($sp)
/* CA99C 801145DC C7A00054 */  lwc1       $f0, 0x54($sp)
/* CA9A0 801145E0 46002102 */  mul.s      $f4, $f4, $f0
/* CA9A4 801145E4 C7A20058 */  lwc1       $f2, 0x58($sp)
/* CA9A8 801145E8 C7A00078 */  lwc1       $f0, 0x78($sp)
/* CA9AC 801145EC 46020002 */  mul.s      $f0, $f0, $f2
/* CA9B0 801145F0 46043180 */  add.s      $f6, $f6, $f4
/* CA9B4 801145F4 46003100 */  add.s      $f4, $f6, $f0
/* CA9B8 801145F8 44800000 */  mtc1       $zero, $f0
/* CA9BC 801145FC 4600203C */  c.lt.s     $f4, $f0
/* CA9C0 80114600 00000000 */  nop
/* CA9C4 80114604 45000003 */  bc1f       .Lrace_80114614
/* CA9C8 80114608 24050011 */   addiu     $a1, $zero, 0x11
/* CA9CC 8011460C 24050008 */  addiu      $a1, $zero, 0x8
.Lrace_80114610:
/* CA9D0 80114610 2402FFFF */  addiu      $v0, $zero, -0x1
.Lrace_80114614:
/* CA9D4 80114614 10A20028 */  beq        $a1, $v0, .Lrace_801146B8
/* CA9D8 80114618 3C088003 */   lui       $t0, %hi(D_8002FAB0)
/* CA9DC 8011461C 3C041062 */  lui        $a0, (0x10624DD3 >> 16)
/* CA9E0 80114620 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* CA9E4 80114624 8D07FAB0 */  lw         $a3, %lo(D_8002FAB0)($t0)
/* CA9E8 80114628 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* CA9EC 8011462C 24E70001 */  addiu      $a3, $a3, 0x1
/* CA9F0 80114630 30E703FF */  andi       $a3, $a3, 0x3FF
/* CA9F4 80114634 00071040 */  sll        $v0, $a3, 1
/* CA9F8 80114638 00431021 */  addu       $v0, $v0, $v1
/* CA9FC 8011463C 94460000 */  lhu        $a2, 0x0($v0)
/* CAA00 80114640 34844DD3 */  ori        $a0, $a0, (0x10624DD3 & 0xFFFF)
/* CAA04 80114644 00C40019 */  multu      $a2, $a0
/* CAA08 80114648 AD07FAB0 */  sw         $a3, %lo(D_8002FAB0)($t0)
/* CAA0C 8011464C 8E240048 */  lw         $a0, 0x48($s1)
/* CAA10 80114650 00004810 */  mfhi       $t1
/* CAA14 80114654 00091982 */  srl        $v1, $t1, 6
/* CAA18 80114658 00031140 */  sll        $v0, $v1, 5
/* CAA1C 8011465C 00431023 */  subu       $v0, $v0, $v1
/* CAA20 80114660 00021080 */  sll        $v0, $v0, 2
/* CAA24 80114664 00431021 */  addu       $v0, $v0, $v1
/* CAA28 80114668 000210C0 */  sll        $v0, $v0, 3
/* CAA2C 8011466C 00C23023 */  subu       $a2, $a2, $v0
/* CAA30 80114670 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* CAA34 80114674 24C61388 */  addiu      $a2, $a2, 0x1388
/* CAA38 80114678 AE2603A0 */  sw         $a2, 0x3A0($s1)
.Lrace_8011467C:
/* CAA3C 8011467C 0C01971D */  jal        func_80065C74
/* CAA40 80114680 00000000 */   nop
/* CAA44 80114684 3C05FFB1 */  lui        $a1, (0xFFB1FFFF >> 16)
/* CAA48 80114688 8E240048 */  lw         $a0, 0x48($s1)
/* CAA4C 8011468C 34A5FFFF */  ori        $a1, $a1, (0xFFB1FFFF & 0xFFFF)
/* CAA50 80114690 8C82005C */  lw         $v0, 0x5C($a0)
/* CAA54 80114694 24030009 */  addiu      $v1, $zero, 0x9
.Lrace_80114698:
/* CAA58 80114698 A48300D8 */  sh         $v1, 0xD8($a0)
/* CAA5C 8011469C 3C030010 */  lui        $v1, (0x100000 >> 16)
/* CAA60 801146A0 00451024 */  and        $v0, $v0, $a1
.Lrace_801146A4:
/* CAA64 801146A4 00431025 */  or         $v0, $v0, $v1
/* CAA68 801146A8 3C030040 */  lui        $v1, (0x400000 >> 16)
/* CAA6C 801146AC 00431025 */  or         $v0, $v0, $v1
/* CAA70 801146B0 080451CD */  j          .Lrace_80114734
/* CAA74 801146B4 AC82005C */   sw        $v0, 0x5C($a0)
.Lrace_801146B8:
/* CAA78 801146B8 44800000 */  mtc1       $zero, $f0
/* CAA7C 801146BC 4600B03C */  c.lt.s     $f22, $f0
/* CAA80 801146C0 00000000 */  nop
/* CAA84 801146C4 45000005 */  bc1f       .Lrace_801146DC
/* CAA88 801146C8 00000000 */   nop
/* CAA8C 801146CC 24020005 */  addiu      $v0, $zero, 0x5
/* CAA90 801146D0 16020010 */  bne        $s0, $v0, .Lrace_80114714
/* CAA94 801146D4 00402821 */   addu      $a1, $v0, $zero
/* CAA98 801146D8 44800000 */  mtc1       $zero, $f0
.Lrace_801146DC:
/* CAA9C 801146DC 4616003C */  c.lt.s     $f0, $f22
/* CAAA0 801146E0 00000000 */  nop
/* CAAA4 801146E4 45000004 */  bc1f       .Lrace_801146F8
/* CAAA8 801146E8 00000000 */   nop
/* CAAAC 801146EC 24020006 */  addiu      $v0, $zero, 0x6
/* CAAB0 801146F0 16020008 */  bne        $s0, $v0, .Lrace_80114714
/* CAAB4 801146F4 00402821 */   addu      $a1, $v0, $zero
.Lrace_801146F8:
/* CAAB8 801146F8 44800000 */  mtc1       $zero, $f0
/* CAABC 801146FC 4600B032 */  c.eq.s     $f22, $f0
/* CAAC0 80114700 00000000 */  nop
/* CAAC4 80114704 4500000B */  bc1f       .Lrace_80114734
/* CAAC8 80114708 24020009 */   addiu     $v0, $zero, 0x9
/* CAACC 8011470C 12020009 */  beq        $s0, $v0, .Lrace_80114734
/* CAAD0 80114710 00402821 */   addu      $a1, $v0, $zero
.Lrace_80114714:
/* CAAD4 80114714 24020001 */  addiu      $v0, $zero, 0x1
/* CAAD8 80114718 AFA20010 */  sw         $v0, 0x10($sp)
/* CAADC 8011471C AFA20014 */  sw         $v0, 0x14($sp)
/* CAAE0 80114720 AFA20018 */  sw         $v0, 0x18($sp)
/* CAAE4 80114724 8E240048 */  lw         $a0, 0x48($s1)
/* CAAE8 80114728 44070000 */  mfc1       $a3, $f0
/* CAAEC 8011472C 0C019761 */  jal        func_80065D84
/* CAAF0 80114730 2406012C */   addiu     $a2, $zero, 0x12C
.Lrace_80114734:
/* CAAF4 80114734 8FBF0094 */  lw         $ra, 0x94($sp)
/* CAAF8 80114738 8FB40090 */  lw         $s4, 0x90($sp)
/* CAAFC 8011473C 8FB3008C */  lw         $s3, 0x8C($sp)
/* CAB00 80114740 8FB20088 */  lw         $s2, 0x88($sp)
/* CAB04 80114744 8FB10084 */  lw         $s1, 0x84($sp)
/* CAB08 80114748 8FB00080 */  lw         $s0, 0x80($sp)
/* CAB0C 8011474C D7B600A0 */  ldc1       $f22, 0xA0($sp)
/* CAB10 80114750 D7B40098 */  ldc1       $f20, 0x98($sp)
/* CAB14 80114754 03E00008 */  jr         $ra
/* CAB18 80114758 27BD00A8 */   addiu     $sp, $sp, 0xA8

glabel func_race_8011475C
/* CAB1C 8011475C 27BDFF88 */  addiu      $sp, $sp, -0x78
/* CAB20 80114760 AFB1005C */  sw         $s1, 0x5C($sp)
/* CAB24 80114764 00808821 */  addu       $s1, $a0, $zero
/* CAB28 80114768 AFBF0074 */  sw         $ra, 0x74($sp)
/* CAB2C 8011476C AFB60070 */  sw         $s6, 0x70($sp)
/* CAB30 80114770 AFB5006C */  sw         $s5, 0x6C($sp)
/* CAB34 80114774 AFB40068 */  sw         $s4, 0x68($sp)
/* CAB38 80114778 AFB30064 */  sw         $s3, 0x64($sp)
/* CAB3C 8011477C AFB20060 */  sw         $s2, 0x60($sp)
/* CAB40 80114780 AFB00058 */  sw         $s0, 0x58($sp)
/* CAB44 80114784 8E220000 */  lw         $v0, 0x0($s1)
/* CAB48 80114788 30420008 */  andi       $v0, $v0, 0x8
/* CAB4C 8011478C 104000EF */  beqz       $v0, .Lrace_80114B4C
/* CAB50 80114790 00A0B021 */   addu      $s6, $a1, $zero
/* CAB54 80114794 00009821 */  addu       $s3, $zero, $zero
/* CAB58 80114798 241501C0 */  addiu      $s5, $zero, 0x1C0
/* CAB5C 8011479C 02208021 */  addu       $s0, $s1, $zero
/* CAB60 801147A0 02209021 */  addu       $s2, $s1, $zero
/* CAB64 801147A4 0260A021 */  addu       $s4, $s3, $zero
.Lrace_801147A8:
/* CAB68 801147A8 2E620004 */  sltiu      $v0, $s3, 0x4
/* CAB6C 801147AC 1040003D */  beqz       $v0, .Lrace_801148A4
/* CAB70 801147B0 00000000 */   nop
/* CAB74 801147B4 9243020C */  lbu        $v1, 0x20C($s2)
/* CAB78 801147B8 30620001 */  andi       $v0, $v1, 0x1
/* CAB7C 801147BC 1040001A */  beqz       $v0, .Lrace_80114828
/* CAB80 801147C0 30620002 */   andi      $v0, $v1, 0x2
/* CAB84 801147C4 14400007 */  bnez       $v0, .Lrace_801147E4
/* CAB88 801147C8 00000000 */   nop
/* CAB8C 801147CC 8E2201F4 */  lw         $v0, 0x1F4($s1)
/* CAB90 801147D0 00541021 */  addu       $v0, $v0, $s4
/* CAB94 801147D4 8C4201E4 */  lw         $v0, 0x1E4($v0)
/* CAB98 801147D8 30420001 */  andi       $v0, $v0, 0x1
/* CAB9C 801147DC 14400013 */  bnez       $v0, .Lrace_8011482C
/* CABA0 801147E0 34620002 */   ori       $v0, $v1, 0x2
.Lrace_801147E4:
/* CABA4 801147E4 8E2201F4 */  lw         $v0, 0x1F4($s1)
/* CABA8 801147E8 00541021 */  addu       $v0, $v0, $s4
/* CABAC 801147EC 8C4201E4 */  lw         $v0, 0x1E4($v0)
/* CABB0 801147F0 30420001 */  andi       $v0, $v0, 0x1
/* CABB4 801147F4 5440000E */  bnel       $v0, $zero, .Lrace_80114830
/* CABB8 801147F8 AE000210 */   sw        $zero, 0x210($s0)
/* CABBC 801147FC 8E020210 */  lw         $v0, 0x210($s0)
/* CABC0 80114800 00561021 */  addu       $v0, $v0, $s6
/* CABC4 80114804 AE020210 */  sw         $v0, 0x210($s0)
/* CABC8 80114808 2C420097 */  sltiu      $v0, $v0, 0x97
/* CABCC 8011480C 14400008 */  bnez       $v0, .Lrace_80114830
/* CABD0 80114810 00000000 */   nop
/* CABD4 80114814 9242020C */  lbu        $v0, 0x20C($s2)
/* CABD8 80114818 304200FD */  andi       $v0, $v0, 0xFD
/* CABDC 8011481C A242020C */  sb         $v0, 0x20C($s2)
/* CABE0 80114820 0804520C */  j          .Lrace_80114830
/* CABE4 80114824 AE000210 */   sw        $zero, 0x210($s0)
.Lrace_80114828:
/* CABE8 80114828 306200FD */  andi       $v0, $v1, 0xFD
.Lrace_8011482C:
/* CABEC 8011482C A242020C */  sb         $v0, 0x20C($s2)
.Lrace_80114830:
/* CABF0 80114830 8E0201FC */  lw         $v0, 0x1FC($s0)
/* CABF4 80114834 10400015 */  beqz       $v0, .Lrace_8011488C
/* CABF8 80114838 27A60038 */   addiu     $a2, $sp, 0x38
/* CABFC 8011483C 8E230044 */  lw         $v1, 0x44($s1)
/* CAC00 80114840 02352821 */  addu       $a1, $s1, $s5
/* CAC04 80114844 8C620024 */  lw         $v0, 0x24($v1)
/* CAC08 80114848 84440060 */  lh         $a0, 0x60($v0)
/* CAC0C 8011484C 8C420064 */  lw         $v0, 0x64($v0)
/* CAC10 80114850 0040F809 */  jalr       $v0
/* CAC14 80114854 00642021 */   addu      $a0, $v1, $a0
/* CAC18 80114858 8FA80038 */  lw         $t0, 0x38($sp)
/* CAC1C 8011485C 8FA9003C */  lw         $t1, 0x3C($sp)
/* CAC20 80114860 8FAA0040 */  lw         $t2, 0x40($sp)
/* CAC24 80114864 AFA80048 */  sw         $t0, 0x48($sp)
/* CAC28 80114868 AFA9004C */  sw         $t1, 0x4C($sp)
/* CAC2C 8011486C AFAA0050 */  sw         $t2, 0x50($sp)
/* CAC30 80114870 8FA20050 */  lw         $v0, 0x50($sp)
/* CAC34 80114874 AFA20010 */  sw         $v0, 0x10($sp)
/* CAC38 80114878 8FA60048 */  lw         $a2, 0x48($sp)
/* CAC3C 8011487C 8E0401FC */  lw         $a0, 0x1FC($s0)
/* CAC40 80114880 8FA7004C */  lw         $a3, 0x4C($sp)
/* CAC44 80114884 0C0345DD */  jal        func_race_800D1774
/* CAC48 80114888 02C02821 */   addu      $a1, $s6, $zero
.Lrace_8011488C:
/* CAC4C 8011488C 26B5000C */  addiu      $s5, $s5, 0xC
/* CAC50 80114890 26100004 */  addiu      $s0, $s0, 0x4
/* CAC54 80114894 26520001 */  addiu      $s2, $s2, 0x1
/* CAC58 80114898 26940070 */  addiu      $s4, $s4, 0x70
/* CAC5C 8011489C 080451EA */  j          .Lrace_801147A8
/* CAC60 801148A0 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_801148A4:
/* CAC64 801148A4 8E2301F4 */  lw         $v1, 0x1F4($s1)
/* CAC68 801148A8 8C6206AC */  lw         $v0, 0x6AC($v1)
/* CAC6C 801148AC 30420002 */  andi       $v0, $v0, 0x2
/* CAC70 801148B0 1040000D */  beqz       $v0, .Lrace_801148E8
/* CAC74 801148B4 00000000 */   nop
/* CAC78 801148B8 9222020C */  lbu        $v0, 0x20C($s1)
/* CAC7C 801148BC 9223020D */  lbu        $v1, 0x20D($s1)
/* CAC80 801148C0 344200FE */  ori        $v0, $v0, 0xFE
/* CAC84 801148C4 A222020C */  sb         $v0, 0x20C($s1)
/* CAC88 801148C8 9222020E */  lbu        $v0, 0x20E($s1)
/* CAC8C 801148CC 346300FE */  ori        $v1, $v1, 0xFE
/* CAC90 801148D0 A223020D */  sb         $v1, 0x20D($s1)
/* CAC94 801148D4 9223020F */  lbu        $v1, 0x20F($s1)
/* CAC98 801148D8 344200FE */  ori        $v0, $v0, 0xFE
/* CAC9C 801148DC 346300FE */  ori        $v1, $v1, 0xFE
/* CACA0 801148E0 0804527B */  j          .Lrace_801149EC
/* CACA4 801148E4 A222020E */   sb        $v0, 0x20E($s1)
.Lrace_801148E8:
/* CACA8 801148E8 8E2201F0 */  lw         $v0, 0x1F0($s1)
/* CACAC 801148EC 8C420D04 */  lw         $v0, 0xD04($v0)
/* CACB0 801148F0 30420040 */  andi       $v0, $v0, 0x40
/* CACB4 801148F4 1040000C */  beqz       $v0, .Lrace_80114928
/* CACB8 801148F8 00000000 */   nop
/* CACBC 801148FC 9222020C */  lbu        $v0, 0x20C($s1)
/* CACC0 80114900 9223020E */  lbu        $v1, 0x20E($s1)
/* CACC4 80114904 304200FE */  andi       $v0, $v0, 0xFE
/* CACC8 80114908 A222020C */  sb         $v0, 0x20C($s1)
/* CACCC 8011490C 9222020D */  lbu        $v0, 0x20D($s1)
/* CACD0 80114910 34630001 */  ori        $v1, $v1, 0x1
/* CACD4 80114914 A223020E */  sb         $v1, 0x20E($s1)
/* CACD8 80114918 9223020F */  lbu        $v1, 0x20F($s1)
/* CACDC 8011491C 304200FE */  andi       $v0, $v0, 0xFE
/* CACE0 80114920 0804527A */  j          .Lrace_801149E8
/* CACE4 80114924 34630001 */   ori       $v1, $v1, 0x1
.Lrace_80114928:
/* CACE8 80114928 8C6805FC */  lw         $t0, 0x5FC($v1)
/* CACEC 8011492C 8C690600 */  lw         $t1, 0x600($v1)
/* CACF0 80114930 8C6A0604 */  lw         $t2, 0x604($v1)
/* CACF4 80114934 AFA80018 */  sw         $t0, 0x18($sp)
/* CACF8 80114938 AFA9001C */  sw         $t1, 0x1C($sp)
/* CACFC 8011493C AFAA0020 */  sw         $t2, 0x20($sp)
/* CAD00 80114940 8E220044 */  lw         $v0, 0x44($s1)
/* CAD04 80114944 C7A00018 */  lwc1       $f0, 0x18($sp)
/* CAD08 80114948 C4420034 */  lwc1       $f2, 0x34($v0)
/* CAD0C 8011494C E7A20028 */  swc1       $f2, 0x28($sp)
/* CAD10 80114950 C4460038 */  lwc1       $f6, 0x38($v0)
/* CAD14 80114954 46001082 */  mul.s      $f2, $f2, $f0
/* CAD18 80114958 E7A6002C */  swc1       $f6, 0x2C($sp)
/* CAD1C 8011495C C444003C */  lwc1       $f4, 0x3C($v0)
/* CAD20 80114960 27A20018 */  addiu      $v0, $sp, 0x18
/* CAD24 80114964 E7A40030 */  swc1       $f4, 0x30($sp)
/* CAD28 80114968 C4400004 */  lwc1       $f0, 0x4($v0)
/* CAD2C 8011496C 46003182 */  mul.s      $f6, $f6, $f0
/* CAD30 80114970 C4400008 */  lwc1       $f0, 0x8($v0)
/* CAD34 80114974 46002102 */  mul.s      $f4, $f4, $f0
/* CAD38 80114978 46061080 */  add.s      $f2, $f2, $f6
/* CAD3C 8011497C 46041080 */  add.s      $f2, $f2, $f4
/* CAD40 80114980 44800000 */  mtc1       $zero, $f0
/* CAD44 80114984 4602003C */  c.lt.s     $f0, $f2
/* CAD48 80114988 00000000 */  nop
/* CAD4C 8011498C 4500000C */  bc1f       .Lrace_801149C0
/* CAD50 80114990 00000000 */   nop
/* CAD54 80114994 9222020C */  lbu        $v0, 0x20C($s1)
/* CAD58 80114998 9223020E */  lbu        $v1, 0x20E($s1)
/* CAD5C 8011499C 304200FE */  andi       $v0, $v0, 0xFE
/* CAD60 801149A0 A222020C */  sb         $v0, 0x20C($s1)
/* CAD64 801149A4 9222020D */  lbu        $v0, 0x20D($s1)
/* CAD68 801149A8 306300FE */  andi       $v1, $v1, 0xFE
/* CAD6C 801149AC A223020E */  sb         $v1, 0x20E($s1)
/* CAD70 801149B0 9223020F */  lbu        $v1, 0x20F($s1)
/* CAD74 801149B4 34420001 */  ori        $v0, $v0, 0x1
/* CAD78 801149B8 0804527A */  j          .Lrace_801149E8
/* CAD7C 801149BC 34630001 */   ori       $v1, $v1, 0x1
.Lrace_801149C0:
/* CAD80 801149C0 9222020C */  lbu        $v0, 0x20C($s1)
/* CAD84 801149C4 9223020E */  lbu        $v1, 0x20E($s1)
/* CAD88 801149C8 34420001 */  ori        $v0, $v0, 0x1
/* CAD8C 801149CC A222020C */  sb         $v0, 0x20C($s1)
/* CAD90 801149D0 9222020D */  lbu        $v0, 0x20D($s1)
/* CAD94 801149D4 34630001 */  ori        $v1, $v1, 0x1
/* CAD98 801149D8 A223020E */  sb         $v1, 0x20E($s1)
/* CAD9C 801149DC 9223020F */  lbu        $v1, 0x20F($s1)
/* CADA0 801149E0 304200FE */  andi       $v0, $v0, 0xFE
/* CADA4 801149E4 306300FE */  andi       $v1, $v1, 0xFE
.Lrace_801149E8:
/* CADA8 801149E8 A222020D */  sb         $v0, 0x20D($s1)
.Lrace_801149EC:
/* CADAC 801149EC A223020F */  sb         $v1, 0x20F($s1)
/* CADB0 801149F0 00009821 */  addu       $s3, $zero, $zero
/* CADB4 801149F4 241200FF */  addiu      $s2, $zero, 0xFF
/* CADB8 801149F8 02208021 */  addu       $s0, $s1, $zero
.Lrace_801149FC:
/* CADBC 801149FC 2E620004 */  sltiu      $v0, $s3, 0x4
/* CADC0 80114A00 10400052 */  beqz       $v0, .Lrace_80114B4C
/* CADC4 80114A04 00000000 */   nop
/* CADC8 80114A08 8E220000 */  lw         $v0, 0x0($s1)
/* CADCC 80114A0C 30420100 */  andi       $v0, $v0, 0x100
/* CADD0 80114A10 1040000A */  beqz       $v0, .Lrace_80114A3C
/* CADD4 80114A14 00002021 */   addu      $a0, $zero, $zero
/* CADD8 80114A18 8E0201FC */  lw         $v0, 0x1FC($s0)
/* CADDC 80114A1C 1040000E */  beqz       $v0, .Lrace_80114A58
/* CADE0 80114A20 00000000 */   nop
/* CADE4 80114A24 8C430328 */  lw         $v1, 0x328($v0)
/* CADE8 80114A28 240203E8 */  addiu      $v0, $zero, 0x3E8
/* CADEC 80114A2C 5062000A */  beql       $v1, $v0, .Lrace_80114A58
/* CADF0 80114A30 24040001 */   addiu     $a0, $zero, 0x1
/* CADF4 80114A34 08045296 */  j          .Lrace_80114A58
/* CADF8 80114A38 00000000 */   nop
.Lrace_80114A3C:
/* CADFC 80114A3C 8E0201FC */  lw         $v0, 0x1FC($s0)
/* CAE00 80114A40 10400005 */  beqz       $v0, .Lrace_80114A58
/* CAE04 80114A44 00000000 */   nop
/* CAE08 80114A48 8C430328 */  lw         $v1, 0x328($v0)
/* CAE0C 80114A4C 240200FA */  addiu      $v0, $zero, 0xFA
/* CAE10 80114A50 50620001 */  beql       $v1, $v0, .Lrace_80114A58
/* CAE14 80114A54 24040001 */   addiu     $a0, $zero, 0x1
.Lrace_80114A58:
/* CAE18 80114A58 10800007 */  beqz       $a0, .Lrace_80114A78
/* CAE1C 80114A5C 02331021 */   addu      $v0, $s1, $s3
/* CAE20 80114A60 8E2401F8 */  lw         $a0, 0x1F8($s1)
/* CAE24 80114A64 8E0501FC */  lw         $a1, 0x1FC($s0)
/* CAE28 80114A68 0C03492E */  jal        func_race_800D24B8
/* CAE2C 80114A6C 00003021 */   addu      $a2, $zero, $zero
/* CAE30 80114A70 AE0001FC */  sw         $zero, 0x1FC($s0)
/* CAE34 80114A74 02331021 */  addu       $v0, $s1, $s3
.Lrace_80114A78:
/* CAE38 80114A78 9042020C */  lbu        $v0, 0x20C($v0)
/* CAE3C 80114A7C 30420001 */  andi       $v0, $v0, 0x1
/* CAE40 80114A80 10400028 */  beqz       $v0, .Lrace_80114B24
/* CAE44 80114A84 00000000 */   nop
/* CAE48 80114A88 8E0201FC */  lw         $v0, 0x1FC($s0)
/* CAE4C 80114A8C 5440002D */  bnel       $v0, $zero, .Lrace_80114B44
/* CAE50 80114A90 26100004 */   addiu     $s0, $s0, 0x4
/* CAE54 80114A94 8E220000 */  lw         $v0, 0x0($s1)
/* CAE58 80114A98 30420100 */  andi       $v0, $v0, 0x100
/* CAE5C 80114A9C 10400004 */  beqz       $v0, .Lrace_80114AB0
/* CAE60 80114AA0 240500FA */   addiu     $a1, $zero, 0xFA
/* CAE64 80114AA4 8E2401F8 */  lw         $a0, 0x1F8($s1)
/* CAE68 80114AA8 080452AE */  j          .Lrace_80114AB8
/* CAE6C 80114AAC 00000000 */   nop
.Lrace_80114AB0:
/* CAE70 80114AB0 8E2401F8 */  lw         $a0, 0x1F8($s1)
/* CAE74 80114AB4 240503E8 */  addiu      $a1, $zero, 0x3E8
.Lrace_80114AB8:
/* CAE78 80114AB8 0C034904 */  jal        func_race_800D2410
/* CAE7C 80114ABC 00000000 */   nop
/* CAE80 80114AC0 AE0201FC */  sw         $v0, 0x1FC($s0)
/* CAE84 80114AC4 8E0201FC */  lw         $v0, 0x1FC($s0)
/* CAE88 80114AC8 5040001E */  beql       $v0, $zero, .Lrace_80114B44
/* CAE8C 80114ACC 26100004 */   addiu     $s0, $s0, 0x4
/* CAE90 80114AD0 A3B20048 */  sb         $s2, 0x48($sp)
/* CAE94 80114AD4 A3B20049 */  sb         $s2, 0x49($sp)
/* CAE98 80114AD8 A3B2004A */  sb         $s2, 0x4A($sp)
/* CAE9C 80114ADC A3B2004B */  sb         $s2, 0x4B($sp)
/* CAEA0 80114AE0 8E0401FC */  lw         $a0, 0x1FC($s0)
/* CAEA4 80114AE4 0C034557 */  jal        func_race_800D155C
/* CAEA8 80114AE8 27A50048 */   addiu     $a1, $sp, 0x48
/* CAEAC 80114AEC 8E0401FC */  lw         $a0, 0x1FC($s0)
/* CAEB0 80114AF0 0C03453B */  jal        func_race_800D14EC
/* CAEB4 80114AF4 2625023C */   addiu     $a1, $s1, 0x23C
/* CAEB8 80114AF8 2E620002 */  sltiu      $v0, $s3, 0x2
/* CAEBC 80114AFC 10400005 */  beqz       $v0, .Lrace_80114B14
/* CAEC0 80114B00 00000000 */   nop
/* CAEC4 80114B04 8E0201FC */  lw         $v0, 0x1FC($s0)
/* CAEC8 80114B08 C62001B8 */  lwc1       $f0, 0x1B8($s1)
/* CAECC 80114B0C 080452D0 */  j          .Lrace_80114B40
/* CAED0 80114B10 E4400338 */   swc1      $f0, 0x338($v0)
.Lrace_80114B14:
/* CAED4 80114B14 8E0201FC */  lw         $v0, 0x1FC($s0)
/* CAED8 80114B18 C62001BC */  lwc1       $f0, 0x1BC($s1)
/* CAEDC 80114B1C 080452D0 */  j          .Lrace_80114B40
/* CAEE0 80114B20 E4400338 */   swc1      $f0, 0x338($v0)
.Lrace_80114B24:
/* CAEE4 80114B24 8E0501FC */  lw         $a1, 0x1FC($s0)
/* CAEE8 80114B28 50A00006 */  beql       $a1, $zero, .Lrace_80114B44
/* CAEEC 80114B2C 26100004 */   addiu     $s0, $s0, 0x4
/* CAEF0 80114B30 8E2401F8 */  lw         $a0, 0x1F8($s1)
/* CAEF4 80114B34 0C03492E */  jal        func_race_800D24B8
/* CAEF8 80114B38 00003021 */   addu      $a2, $zero, $zero
/* CAEFC 80114B3C AE0001FC */  sw         $zero, 0x1FC($s0)
.Lrace_80114B40:
/* CAF00 80114B40 26100004 */  addiu      $s0, $s0, 0x4
.Lrace_80114B44:
/* CAF04 80114B44 0804527F */  j          .Lrace_801149FC
/* CAF08 80114B48 26730001 */   addiu     $s3, $s3, 0x1
.Lrace_80114B4C:
/* CAF0C 80114B4C 8FBF0074 */  lw         $ra, 0x74($sp)
/* CAF10 80114B50 8FB60070 */  lw         $s6, 0x70($sp)
/* CAF14 80114B54 8FB5006C */  lw         $s5, 0x6C($sp)
/* CAF18 80114B58 8FB40068 */  lw         $s4, 0x68($sp)
/* CAF1C 80114B5C 8FB30064 */  lw         $s3, 0x64($sp)
/* CAF20 80114B60 8FB20060 */  lw         $s2, 0x60($sp)
/* CAF24 80114B64 8FB1005C */  lw         $s1, 0x5C($sp)
/* CAF28 80114B68 8FB00058 */  lw         $s0, 0x58($sp)
/* CAF2C 80114B6C 03E00008 */  jr         $ra
/* CAF30 80114B70 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_race_80114B74
/* CAF34 80114B74 27BDFE88 */  addiu      $sp, $sp, -0x178
/* CAF38 80114B78 AFB3013C */  sw         $s3, 0x13C($sp)
/* CAF3C 80114B7C 00809821 */  addu       $s3, $a0, $zero
/* CAF40 80114B80 AFBF0148 */  sw         $ra, 0x148($sp)
/* CAF44 80114B84 AFB50144 */  sw         $s5, 0x144($sp)
/* CAF48 80114B88 AFB40140 */  sw         $s4, 0x140($sp)
/* CAF4C 80114B8C AFB20138 */  sw         $s2, 0x138($sp)
/* CAF50 80114B90 AFB10134 */  sw         $s1, 0x134($sp)
/* CAF54 80114B94 AFB00130 */  sw         $s0, 0x130($sp)
/* CAF58 80114B98 F7BC0170 */  sdc1       $f28, 0x170($sp)
/* CAF5C 80114B9C F7BA0168 */  sdc1       $f26, 0x168($sp)
/* CAF60 80114BA0 F7B80160 */  sdc1       $f24, 0x160($sp)
/* CAF64 80114BA4 F7B60158 */  sdc1       $f22, 0x158($sp)
/* CAF68 80114BA8 F7B40150 */  sdc1       $f20, 0x150($sp)
/* CAF6C 80114BAC 8E630390 */  lw         $v1, 0x390($s3)
/* CAF70 80114BB0 00A0A821 */  addu       $s5, $a1, $zero
/* CAF74 80114BB4 0075102B */  sltu       $v0, $v1, $s5
/* CAF78 80114BB8 14400002 */  bnez       $v0, .Lrace_80114BC4
/* CAF7C 80114BBC 240203E8 */   addiu     $v0, $zero, 0x3E8
/* CAF80 80114BC0 00751023 */  subu       $v0, $v1, $s5
.Lrace_80114BC4:
/* CAF84 80114BC4 AE620390 */  sw         $v0, 0x390($s3)
/* CAF88 80114BC8 8E630394 */  lw         $v1, 0x394($s3)
/* CAF8C 80114BCC 0075102B */  sltu       $v0, $v1, $s5
/* CAF90 80114BD0 10400003 */  beqz       $v0, .Lrace_80114BE0
/* CAF94 80114BD4 00751023 */   subu      $v0, $v1, $s5
/* CAF98 80114BD8 080452F9 */  j          .Lrace_80114BE4
/* CAF9C 80114BDC AE600394 */   sw        $zero, 0x394($s3)
.Lrace_80114BE0:
/* CAFA0 80114BE0 AE620394 */  sw         $v0, 0x394($s3)
.Lrace_80114BE4:
/* CAFA4 80114BE4 8E620390 */  lw         $v0, 0x390($s3)
/* CAFA8 80114BE8 44822000 */  mtc1       $v0, $f4
/* CAFAC 80114BEC 46802121 */  cvt.d.w    $f4, $f4
/* CAFB0 80114BF0 04410004 */  bgez       $v0, .Lrace_80114C04
/* CAFB4 80114BF4 00000000 */   nop
/* CAFB8 80114BF8 3C01800D */  lui        $at, %hi(D_race_800CDED0)
/* CAFBC 80114BFC D420DED0 */  ldc1       $f0, %lo(D_race_800CDED0)($at)
/* CAFC0 80114C00 46202100 */  add.d      $f4, $f4, $f0
.Lrace_80114C04:
/* CAFC4 80114C04 3C01800D */  lui        $at, %hi(D_race_800CDED8)
/* CAFC8 80114C08 C422DED8 */  lwc1       $f2, %lo(D_race_800CDED8)($at)
/* CAFCC 80114C0C 46202020 */  cvt.s.d    $f0, $f4
/* CAFD0 80114C10 46020002 */  mul.s      $f0, $f0, $f2
/* CAFD4 80114C14 3C01800D */  lui        $at, %hi(D_race_800CDEDC)
/* CAFD8 80114C18 C422DEDC */  lwc1       $f2, %lo(D_race_800CDEDC)($at)
/* CAFDC 80114C1C 46020002 */  mul.s      $f0, $f0, $f2
/* CAFE0 80114C20 2664029C */  addiu      $a0, $s3, 0x29C
/* CAFE4 80114C24 3C068003 */  lui        $a2, %hi(D_8002D2B0)
/* CAFE8 80114C28 24C6D2B0 */  addiu      $a2, $a2, %lo(D_8002D2B0)
/* CAFEC 80114C2C 4600070D */  trunc.w.s  $f28, $f0
/* CAFF0 80114C30 4403E000 */  mfc1       $v1, $f28
/* CAFF4 80114C34 2462FF00 */  addiu      $v0, $v1, -0x100
/* CAFF8 80114C38 304203FF */  andi       $v0, $v0, 0x3FF
/* CAFFC 80114C3C 00021080 */  sll        $v0, $v0, 2
/* CB000 80114C40 00461021 */  addu       $v0, $v0, $a2
/* CB004 80114C44 306303FF */  andi       $v1, $v1, 0x3FF
/* CB008 80114C48 00031880 */  sll        $v1, $v1, 2
/* CB00C 80114C4C 00661821 */  addu       $v1, $v1, $a2
/* CB010 80114C50 C4540000 */  lwc1       $f20, 0x0($v0)
/* CB014 80114C54 C4760000 */  lwc1       $f22, 0x0($v1)
/* CB018 80114C58 0C01595B */  jal        func_8005656C
/* CB01C 80114C5C 27A500A0 */   addiu     $a1, $sp, 0xA0
/* CB020 80114C60 8E63003C */  lw         $v1, 0x3C($s3)
/* CB024 80114C64 8C620024 */  lw         $v0, 0x24($v1)
/* CB028 80114C68 27A500B0 */  addiu      $a1, $sp, 0xB0
/* CB02C 80114C6C 84440010 */  lh         $a0, 0x10($v0)
/* CB030 80114C70 8C420014 */  lw         $v0, 0x14($v0)
/* CB034 80114C74 0040F809 */  jalr       $v0
/* CB038 80114C78 00642021 */   addu      $a0, $v1, $a0
/* CB03C 80114C7C 3C01800D */  lui        $at, %hi(D_race_800CDEE0)
/* CB040 80114C80 C420DEE0 */  lwc1       $f0, %lo(D_race_800CDEE0)($at)
/* CB044 80114C84 4600A502 */  mul.s      $f20, $f20, $f0
/* CB048 80114C88 00000000 */  nop
/* CB04C 80114C8C 4600B582 */  mul.s      $f22, $f22, $f0
/* CB050 80114C90 C7A000B0 */  lwc1       $f0, 0xB0($sp)
/* CB054 80114C94 C7A200B8 */  lwc1       $f2, 0xB8($sp)
/* CB058 80114C98 46140380 */  add.s      $f14, $f0, $f20
/* CB05C 80114C9C 3C01800D */  lui        $at, %hi(D_race_800CDEE4)
/* CB060 80114CA0 C420DEE4 */  lwc1       $f0, %lo(D_race_800CDEE4)($at)
/* CB064 80114CA4 46001300 */  add.s      $f12, $f2, $f0
/* CB068 80114CA8 C7A000B4 */  lwc1       $f0, 0xB4($sp)
/* CB06C 80114CAC 46160200 */  add.s      $f8, $f0, $f22
/* CB070 80114CB0 E7AE00B0 */  swc1       $f14, 0xB0($sp)
/* CB074 80114CB4 E7AC00B8 */  swc1       $f12, 0xB8($sp)
/* CB078 80114CB8 E7A800B4 */  swc1       $f8, 0xB4($sp)
/* CB07C 80114CBC 8E6201F4 */  lw         $v0, 0x1F4($s3)
/* CB080 80114CC0 C4400608 */  lwc1       $f0, 0x608($v0)
/* CB084 80114CC4 3C01800D */  lui        $at, %hi(D_race_800CDEE8)
/* CB088 80114CC8 C422DEE8 */  lwc1       $f2, %lo(D_race_800CDEE8)($at)
/* CB08C 80114CCC 46000186 */  mov.s      $f6, $f0
/* CB090 80114CD0 4606103C */  c.lt.s     $f2, $f6
/* CB094 80114CD4 00000000 */  nop
/* CB098 80114CD8 45020001 */  bc1fl      .Lrace_80114CE0
/* CB09C 80114CDC 46001186 */   mov.s     $f6, $f2
.Lrace_80114CE0:
/* CB0A0 80114CE0 44950000 */  mtc1       $s5, $f0
/* CB0A4 80114CE4 46800020 */  cvt.s.w    $f0, $f0
/* CB0A8 80114CE8 46060502 */  mul.s      $f20, $f0, $f6
/* CB0AC 80114CEC C7BA00A0 */  lwc1       $f26, 0xA0($sp)
/* CB0B0 80114CF0 46007606 */  mov.s      $f24, $f14
/* CB0B4 80114CF4 4618D081 */  sub.s      $f2, $f26, $f24
/* CB0B8 80114CF8 46021082 */  mul.s      $f2, $f2, $f2
/* CB0BC 80114CFC C7B600A4 */  lwc1       $f22, 0xA4($sp)
/* CB0C0 80114D00 46004406 */  mov.s      $f16, $f8
/* CB0C4 80114D04 4610B101 */  sub.s      $f4, $f22, $f16
/* CB0C8 80114D08 46042102 */  mul.s      $f4, $f4, $f4
/* CB0CC 80114D0C C7B200A8 */  lwc1       $f18, 0xA8($sp)
/* CB0D0 80114D10 46006286 */  mov.s      $f10, $f12
/* CB0D4 80114D14 460A9001 */  sub.s      $f0, $f18, $f10
/* CB0D8 80114D18 46000002 */  mul.s      $f0, $f0, $f0
/* CB0DC 80114D1C 00000000 */  nop
/* CB0E0 80114D20 4614A182 */  mul.s      $f6, $f20, $f20
/* CB0E4 80114D24 46041080 */  add.s      $f2, $f2, $f4
/* CB0E8 80114D28 46001080 */  add.s      $f2, $f2, $f0
/* CB0EC 80114D2C 4602303C */  c.lt.s     $f6, $f2
/* CB0F0 80114D30 00000000 */  nop
/* CB0F4 80114D34 4502001D */  bc1fl      .Lrace_80114DAC
/* CB0F8 80114D38 E7AE00A0 */   swc1      $f14, 0xA0($sp)
/* CB0FC 80114D3C 461AC101 */  sub.s      $f4, $f24, $f26
/* CB100 80114D40 46168081 */  sub.s      $f2, $f16, $f22
/* CB104 80114D44 27A400C0 */  addiu      $a0, $sp, 0xC0
/* CB108 80114D48 00802821 */  addu       $a1, $a0, $zero
/* CB10C 80114D4C 46125001 */  sub.s      $f0, $f10, $f18
/* CB110 80114D50 E7A400C0 */  swc1       $f4, 0xC0($sp)
/* CB114 80114D54 E7A200C4 */  swc1       $f2, 0xC4($sp)
/* CB118 80114D58 0C000F26 */  jal        func_80003C98
/* CB11C 80114D5C E7A000C8 */   swc1      $f0, 0xC8($sp)
/* CB120 80114D60 C7A000C0 */  lwc1       $f0, 0xC0($sp)
/* CB124 80114D64 46140002 */  mul.s      $f0, $f0, $f20
/* CB128 80114D68 C7A400C4 */  lwc1       $f4, 0xC4($sp)
/* CB12C 80114D6C 46142102 */  mul.s      $f4, $f4, $f20
/* CB130 80114D70 C7A600C8 */  lwc1       $f6, 0xC8($sp)
/* CB134 80114D74 46143182 */  mul.s      $f6, $f6, $f20
/* CB138 80114D78 C7A800A0 */  lwc1       $f8, 0xA0($sp)
/* CB13C 80114D7C C7A200A8 */  lwc1       $f2, 0xA8($sp)
/* CB140 80114D80 46004200 */  add.s      $f8, $f8, $f0
/* CB144 80114D84 E7A00100 */  swc1       $f0, 0x100($sp)
/* CB148 80114D88 C7A000A4 */  lwc1       $f0, 0xA4($sp)
/* CB14C 80114D8C 46061080 */  add.s      $f2, $f2, $f6
/* CB150 80114D90 E7A40104 */  swc1       $f4, 0x104($sp)
/* CB154 80114D94 E7A60108 */  swc1       $f6, 0x108($sp)
/* CB158 80114D98 46040000 */  add.s      $f0, $f0, $f4
/* CB15C 80114D9C E7A800A0 */  swc1       $f8, 0xA0($sp)
/* CB160 80114DA0 E7A200A8 */  swc1       $f2, 0xA8($sp)
/* CB164 80114DA4 0804536D */  j          .Lrace_80114DB4
/* CB168 80114DA8 E7A000A4 */   swc1      $f0, 0xA4($sp)
.Lrace_80114DAC:
/* CB16C 80114DAC E7A800A4 */  swc1       $f8, 0xA4($sp)
/* CB170 80114DB0 E7AC00A8 */  swc1       $f12, 0xA8($sp)
.Lrace_80114DB4:
/* CB174 80114DB4 2674029C */  addiu      $s4, $s3, 0x29C
/* CB178 80114DB8 02802021 */  addu       $a0, $s4, $zero
/* CB17C 80114DBC 0C015962 */  jal        func_80056588
/* CB180 80114DC0 27A500A0 */   addiu     $a1, $sp, 0xA0
/* CB184 80114DC4 3C01800D */  lui        $at, %hi(D_race_800CDEEC)
/* CB188 80114DC8 C420DEEC */  lwc1       $f0, %lo(D_race_800CDEEC)($at)
/* CB18C 80114DCC AFA000F0 */  sw         $zero, 0xF0($sp)
/* CB190 80114DD0 AFA000F4 */  sw         $zero, 0xF4($sp)
/* CB194 80114DD4 E7A000F8 */  swc1       $f0, 0xF8($sp)
/* CB198 80114DD8 8E63003C */  lw         $v1, 0x3C($s3)
/* CB19C 80114DDC 8C620024 */  lw         $v0, 0x24($v1)
/* CB1A0 80114DE0 27A500B0 */  addiu      $a1, $sp, 0xB0
/* CB1A4 80114DE4 84440010 */  lh         $a0, 0x10($v0)
/* CB1A8 80114DE8 8C420014 */  lw         $v0, 0x14($v0)
/* CB1AC 80114DEC 0040F809 */  jalr       $v0
/* CB1B0 80114DF0 00642021 */   addu      $a0, $v1, $a0
/* CB1B4 80114DF4 27A400D0 */  addiu      $a0, $sp, 0xD0
/* CB1B8 80114DF8 C7A600B0 */  lwc1       $f6, 0xB0($sp)
/* CB1BC 80114DFC C7A000A0 */  lwc1       $f0, 0xA0($sp)
/* CB1C0 80114E00 C7A400B4 */  lwc1       $f4, 0xB4($sp)
/* CB1C4 80114E04 46003181 */  sub.s      $f6, $f6, $f0
/* CB1C8 80114E08 C7A000A4 */  lwc1       $f0, 0xA4($sp)
/* CB1CC 80114E0C C7A200A8 */  lwc1       $f2, 0xA8($sp)
/* CB1D0 80114E10 46002101 */  sub.s      $f4, $f4, $f0
/* CB1D4 80114E14 C7A000B8 */  lwc1       $f0, 0xB8($sp)
/* CB1D8 80114E18 00802821 */  addu       $a1, $a0, $zero
/* CB1DC 80114E1C 46020001 */  sub.s      $f0, $f0, $f2
/* CB1E0 80114E20 E7A600D0 */  swc1       $f6, 0xD0($sp)
/* CB1E4 80114E24 E7A400D4 */  swc1       $f4, 0xD4($sp)
/* CB1E8 80114E28 0C000F26 */  jal        func_80003C98
/* CB1EC 80114E2C E7A000D8 */   swc1      $f0, 0xD8($sp)
/* CB1F0 80114E30 C7A800F4 */  lwc1       $f8, 0xF4($sp)
/* CB1F4 80114E34 C7A400D8 */  lwc1       $f4, 0xD8($sp)
/* CB1F8 80114E38 46044282 */  mul.s      $f10, $f8, $f4
/* CB1FC 80114E3C C7A200F8 */  lwc1       $f2, 0xF8($sp)
/* CB200 80114E40 C7AC00D4 */  lwc1       $f12, 0xD4($sp)
/* CB204 80114E44 460C1382 */  mul.s      $f14, $f2, $f12
/* CB208 80114E48 C7A600D0 */  lwc1       $f6, 0xD0($sp)
/* CB20C 80114E4C 46061082 */  mul.s      $f2, $f2, $f6
/* CB210 80114E50 C7A000F0 */  lwc1       $f0, 0xF0($sp)
/* CB214 80114E54 46040102 */  mul.s      $f4, $f0, $f4
/* CB218 80114E58 00000000 */  nop
/* CB21C 80114E5C 460C0002 */  mul.s      $f0, $f0, $f12
/* CB220 80114E60 00000000 */  nop
/* CB224 80114E64 46064202 */  mul.s      $f8, $f8, $f6
/* CB228 80114E68 460E5281 */  sub.s      $f10, $f10, $f14
/* CB22C 80114E6C 27B000E0 */  addiu      $s0, $sp, 0xE0
/* CB230 80114E70 46041081 */  sub.s      $f2, $f2, $f4
/* CB234 80114E74 02002021 */  addu       $a0, $s0, $zero
/* CB238 80114E78 02002821 */  addu       $a1, $s0, $zero
/* CB23C 80114E7C 46080001 */  sub.s      $f0, $f0, $f8
/* CB240 80114E80 E7AA00E0 */  swc1       $f10, 0xE0($sp)
/* CB244 80114E84 E7A200E4 */  swc1       $f2, 0xE4($sp)
/* CB248 80114E88 0C000F26 */  jal        func_80003C98
/* CB24C 80114E8C E7A000E8 */   swc1      $f0, 0xE8($sp)
/* CB250 80114E90 8E620394 */  lw         $v0, 0x394($s3)
/* CB254 80114E94 1040005F */  beqz       $v0, .Lrace_80115014
/* CB258 80114E98 02802021 */   addu      $a0, $s4, $zero
/* CB25C 80114E9C 27B10040 */  addiu      $s1, $sp, 0x40
/* CB260 80114EA0 0C01583B */  jal        func_800560EC
/* CB264 80114EA4 02202821 */   addu      $a1, $s1, $zero
/* CB268 80114EA8 02002021 */  addu       $a0, $s0, $zero
/* CB26C 80114EAC 27A50110 */  addiu      $a1, $sp, 0x110
/* CB270 80114EB0 AFA00064 */  sw         $zero, 0x64($sp)
/* CB274 80114EB4 AFA00068 */  sw         $zero, 0x68($sp)
/* CB278 80114EB8 0C000F26 */  jal        func_80003C98
/* CB27C 80114EBC AFA0006C */   sw        $zero, 0x6C($sp)
/* CB280 80114EC0 C7B000F0 */  lwc1       $f16, 0xF0($sp)
/* CB284 80114EC4 C7A80110 */  lwc1       $f8, 0x110($sp)
/* CB288 80114EC8 46088002 */  mul.s      $f0, $f16, $f8
/* CB28C 80114ECC C7AE00F4 */  lwc1       $f14, 0xF4($sp)
/* CB290 80114ED0 C7A60114 */  lwc1       $f6, 0x114($sp)
/* CB294 80114ED4 46067302 */  mul.s      $f12, $f14, $f6
/* CB298 80114ED8 C7AA00F8 */  lwc1       $f10, 0xF8($sp)
/* CB29C 80114EDC C7A40118 */  lwc1       $f4, 0x118($sp)
/* CB2A0 80114EE0 46045082 */  mul.s      $f2, $f10, $f4
/* CB2A4 80114EE4 460C0000 */  add.s      $f0, $f0, $f12
/* CB2A8 80114EE8 46020000 */  add.s      $f0, $f0, $f2
/* CB2AC 80114EEC 46004202 */  mul.s      $f8, $f8, $f0
/* CB2B0 80114EF0 00000000 */  nop
/* CB2B4 80114EF4 46003182 */  mul.s      $f6, $f6, $f0
/* CB2B8 80114EF8 00000000 */  nop
/* CB2BC 80114EFC 46002102 */  mul.s      $f4, $f4, $f0
/* CB2C0 80114F00 27A400F0 */  addiu      $a0, $sp, 0xF0
/* CB2C4 80114F04 46088401 */  sub.s      $f16, $f16, $f8
/* CB2C8 80114F08 00802821 */  addu       $a1, $a0, $zero
/* CB2CC 80114F0C E7A80120 */  swc1       $f8, 0x120($sp)
/* CB2D0 80114F10 46067381 */  sub.s      $f14, $f14, $f6
/* CB2D4 80114F14 E7A60124 */  swc1       $f6, 0x124($sp)
/* CB2D8 80114F18 E7A40128 */  swc1       $f4, 0x128($sp)
/* CB2DC 80114F1C 46045281 */  sub.s      $f10, $f10, $f4
/* CB2E0 80114F20 E7B000F0 */  swc1       $f16, 0xF0($sp)
/* CB2E4 80114F24 E7AE00F4 */  swc1       $f14, 0xF4($sp)
/* CB2E8 80114F28 0C000F26 */  jal        func_80003C98
/* CB2EC 80114F2C E7AA00F8 */   swc1      $f10, 0xF8($sp)
/* CB2F0 80114F30 C7B000F4 */  lwc1       $f16, 0xF4($sp)
/* CB2F4 80114F34 C7AA00E8 */  lwc1       $f10, 0xE8($sp)
/* CB2F8 80114F38 460A8382 */  mul.s      $f14, $f16, $f10
/* CB2FC 80114F3C C7AC00F8 */  lwc1       $f12, 0xF8($sp)
/* CB300 80114F40 C7A400E4 */  lwc1       $f4, 0xE4($sp)
/* CB304 80114F44 46046582 */  mul.s      $f22, $f12, $f4
/* CB308 80114F48 C7A000E0 */  lwc1       $f0, 0xE0($sp)
/* CB30C 80114F4C 46006202 */  mul.s      $f8, $f12, $f0
/* CB310 80114F50 C7A200F0 */  lwc1       $f2, 0xF0($sp)
/* CB314 80114F54 460A1502 */  mul.s      $f20, $f2, $f10
/* CB318 80114F58 27A40010 */  addiu      $a0, $sp, 0x10
/* CB31C 80114F5C 46008482 */  mul.s      $f18, $f16, $f0
/* CB320 80114F60 27B20070 */  addiu      $s2, $sp, 0x70
/* CB324 80114F64 02402821 */  addu       $a1, $s2, $zero
/* CB328 80114F68 E7A00010 */  swc1       $f0, 0x10($sp)
/* CB32C 80114F6C 3C01800D */  lui        $at, %hi(D_race_800CDEF0)
/* CB330 80114F70 C420DEF0 */  lwc1       $f0, %lo(D_race_800CDEF0)($at)
/* CB334 80114F74 46041182 */  mul.s      $f6, $f2, $f4
/* CB338 80114F78 AFA00034 */  sw         $zero, 0x34($sp)
/* CB33C 80114F7C AFA00038 */  sw         $zero, 0x38($sp)
/* CB340 80114F80 AFA0003C */  sw         $zero, 0x3C($sp)
/* CB344 80114F84 E7A40014 */  swc1       $f4, 0x14($sp)
/* CB348 80114F88 46167381 */  sub.s      $f14, $f14, $f22
/* CB34C 80114F8C E7AA0018 */  swc1       $f10, 0x18($sp)
/* CB350 80114F90 E7A20028 */  swc1       $f2, 0x28($sp)
/* CB354 80114F94 46144201 */  sub.s      $f8, $f8, $f20
/* CB358 80114F98 E7B0002C */  swc1       $f16, 0x2C($sp)
/* CB35C 80114F9C E7AC0030 */  swc1       $f12, 0x30($sp)
/* CB360 80114FA0 46123181 */  sub.s      $f6, $f6, $f18
/* CB364 80114FA4 E7AE00D0 */  swc1       $f14, 0xD0($sp)
/* CB368 80114FA8 E7A800D4 */  swc1       $f8, 0xD4($sp)
/* CB36C 80114FAC E7A600D8 */  swc1       $f6, 0xD8($sp)
/* CB370 80114FB0 E7AE001C */  swc1       $f14, 0x1C($sp)
/* CB374 80114FB4 E7A80020 */  swc1       $f8, 0x20($sp)
/* CB378 80114FB8 E7A60024 */  swc1       $f6, 0x24($sp)
/* CB37C 80114FBC C6740394 */  lwc1       $f20, 0x394($s3)
/* CB380 80114FC0 4680A520 */  cvt.s.w    $f20, $f20
/* CB384 80114FC4 0C00109A */  jal        func_80004268
/* CB388 80114FC8 4600A503 */   div.s     $f20, $f20, $f0
/* CB38C 80114FCC 02202021 */  addu       $a0, $s1, $zero
/* CB390 80114FD0 27B00080 */  addiu      $s0, $sp, 0x80
/* CB394 80114FD4 0C00109A */  jal        func_80004268
/* CB398 80114FD8 02002821 */   addu      $a1, $s0, $zero
/* CB39C 80114FDC 02002021 */  addu       $a0, $s0, $zero
/* CB3A0 80114FE0 02402821 */  addu       $a1, $s2, $zero
/* CB3A4 80114FE4 27B00090 */  addiu      $s0, $sp, 0x90
/* CB3A8 80114FE8 4406A000 */  mfc1       $a2, $f20
/* CB3AC 80114FEC 0C0012B8 */  jal        func_80004AE0
/* CB3B0 80114FF0 02003821 */   addu      $a3, $s0, $zero
/* CB3B4 80114FF4 02002021 */  addu       $a0, $s0, $zero
/* CB3B8 80114FF8 0C001055 */  jal        func_80004154
/* CB3BC 80114FFC 02202821 */   addu      $a1, $s1, $zero
/* CB3C0 80115000 02802021 */  addu       $a0, $s4, $zero
/* CB3C4 80115004 0C01584E */  jal        func_80056138
/* CB3C8 80115008 02202821 */   addu      $a1, $s1, $zero
/* CB3CC 8011500C 08045409 */  j          .Lrace_80115024
/* CB3D0 80115010 2662029C */   addiu     $v0, $s3, 0x29C
.Lrace_80115014:
/* CB3D4 80115014 02002821 */  addu       $a1, $s0, $zero
/* CB3D8 80115018 0C015729 */  jal        func_80055CA4
/* CB3DC 8011501C 27A600F0 */   addiu     $a2, $sp, 0xF0
/* CB3E0 80115020 2662029C */  addiu      $v0, $s3, 0x29C
.Lrace_80115024:
/* CB3E4 80115024 C4440058 */  lwc1       $f4, 0x58($v0)
/* CB3E8 80115028 3C01800D */  lui        $at, %hi(D_race_800CDEF4)
/* CB3EC 8011502C C426DEF4 */  lwc1       $f6, %lo(D_race_800CDEF4)($at)
/* CB3F0 80115030 4604303C */  c.lt.s     $f6, $f4
/* CB3F4 80115034 00000000 */  nop
/* CB3F8 80115038 45000013 */  bc1f       .Lrace_80115088
/* CB3FC 8011503C 2664029C */   addiu     $a0, $s3, 0x29C
/* CB400 80115040 3C01800D */  lui        $at, %hi(D_race_800CDEF8)
/* CB404 80115044 C420DEF8 */  lwc1       $f0, %lo(D_race_800CDEF8)($at)
/* CB408 80115048 44951000 */  mtc1       $s5, $f2
/* CB40C 8011504C 468010A0 */  cvt.s.w    $f2, $f2
/* CB410 80115050 46001082 */  mul.s      $f2, $f2, $f0
/* CB414 80115054 3C01800D */  lui        $at, %hi(D_race_800CDEFC)
/* CB418 80115058 C420DEFC */  lwc1       $f0, %lo(D_race_800CDEFC)($at)
/* CB41C 8011505C 46001082 */  mul.s      $f2, $f2, $f0
/* CB420 80115060 46022101 */  sub.s      $f4, $f4, $f2
/* CB424 80115064 4606203C */  c.lt.s     $f4, $f6
/* CB428 80115068 00000000 */  nop
/* CB42C 8011506C 45030001 */  bc1tl      .Lrace_80115074
/* CB430 80115070 46003106 */   mov.s     $f4, $f6
.Lrace_80115074:
/* CB434 80115074 3C01800D */  lui        $at, %hi(D_race_800CDF00)
/* CB438 80115078 C420DF00 */  lwc1       $f0, %lo(D_race_800CDF00)($at)
/* CB43C 8011507C E4440058 */  swc1       $f4, 0x58($v0)
/* CB440 80115080 E440000C */  swc1       $f0, 0xC($v0)
/* CB444 80115084 2664029C */  addiu      $a0, $s3, 0x29C
.Lrace_80115088:
/* CB448 80115088 0C0197F5 */  jal        func_80065FD4
/* CB44C 8011508C 02A02821 */   addu      $a1, $s5, $zero
/* CB450 80115090 8FBF0148 */  lw         $ra, 0x148($sp)
/* CB454 80115094 8FB50144 */  lw         $s5, 0x144($sp)
/* CB458 80115098 8FB40140 */  lw         $s4, 0x140($sp)
/* CB45C 8011509C 8FB3013C */  lw         $s3, 0x13C($sp)
/* CB460 801150A0 8FB20138 */  lw         $s2, 0x138($sp)
/* CB464 801150A4 8FB10134 */  lw         $s1, 0x134($sp)
/* CB468 801150A8 8FB00130 */  lw         $s0, 0x130($sp)
/* CB46C 801150AC D7BC0170 */  ldc1       $f28, 0x170($sp)
/* CB470 801150B0 D7BA0168 */  ldc1       $f26, 0x168($sp)
/* CB474 801150B4 D7B80160 */  ldc1       $f24, 0x160($sp)
/* CB478 801150B8 D7B60158 */  ldc1       $f22, 0x158($sp)
/* CB47C 801150BC D7B40150 */  ldc1       $f20, 0x150($sp)
/* CB480 801150C0 03E00008 */  jr         $ra
/* CB484 801150C4 27BD0178 */   addiu     $sp, $sp, 0x178

glabel func_race_801150C8
/* CB488 801150C8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* CB48C 801150CC AFB10064 */  sw         $s1, 0x64($sp)
/* CB490 801150D0 00808821 */  addu       $s1, $a0, $zero
/* CB494 801150D4 AFB00060 */  sw         $s0, 0x60($sp)
/* CB498 801150D8 AFBF0068 */  sw         $ra, 0x68($sp)
/* CB49C 801150DC 8E220000 */  lw         $v0, 0x0($s1)
/* CB4A0 801150E0 24030004 */  addiu      $v1, $zero, 0x4
/* CB4A4 801150E4 30420014 */  andi       $v0, $v0, 0x14
/* CB4A8 801150E8 14430072 */  bne        $v0, $v1, .Lrace_801152B4
/* CB4AC 801150EC 00A08021 */   addu      $s0, $a1, $zero
/* CB4B0 801150F0 8E230044 */  lw         $v1, 0x44($s1)
/* CB4B4 801150F4 8C620024 */  lw         $v0, 0x24($v1)
/* CB4B8 801150F8 27A50010 */  addiu      $a1, $sp, 0x10
/* CB4BC 801150FC 84440010 */  lh         $a0, 0x10($v0)
/* CB4C0 80115100 8C420014 */  lw         $v0, 0x14($v0)
/* CB4C4 80115104 0040F809 */  jalr       $v0
/* CB4C8 80115108 00642021 */   addu      $a0, $v1, $a0
/* CB4CC 8011510C 8E030000 */  lw         $v1, 0x0($s0)
/* CB4D0 80115110 8C62000C */  lw         $v0, 0xC($v1)
/* CB4D4 80115114 27A50020 */  addiu      $a1, $sp, 0x20
/* CB4D8 80115118 84440088 */  lh         $a0, 0x88($v0)
/* CB4DC 8011511C 8C42008C */  lw         $v0, 0x8C($v0)
/* CB4E0 80115120 0040F809 */  jalr       $v0
/* CB4E4 80115124 00642021 */   addu      $a0, $v1, $a0
/* CB4E8 80115128 C7A40010 */  lwc1       $f4, 0x10($sp)
/* CB4EC 8011512C C7A00020 */  lwc1       $f0, 0x20($sp)
/* CB4F0 80115130 46002101 */  sub.s      $f4, $f4, $f0
/* CB4F4 80115134 46042102 */  mul.s      $f4, $f4, $f4
/* CB4F8 80115138 27A20010 */  addiu      $v0, $sp, 0x10
/* CB4FC 8011513C C4460004 */  lwc1       $f6, 0x4($v0)
/* CB500 80115140 C7A00024 */  lwc1       $f0, 0x24($sp)
/* CB504 80115144 46003181 */  sub.s      $f6, $f6, $f0
/* CB508 80115148 46063182 */  mul.s      $f6, $f6, $f6
/* CB50C 8011514C C7A20028 */  lwc1       $f2, 0x28($sp)
/* CB510 80115150 C4400008 */  lwc1       $f0, 0x8($v0)
/* CB514 80115154 46020001 */  sub.s      $f0, $f0, $f2
/* CB518 80115158 46000002 */  mul.s      $f0, $f0, $f0
/* CB51C 8011515C 46062100 */  add.s      $f4, $f4, $f6
/* CB520 80115160 8E220044 */  lw         $v0, 0x44($s1)
/* CB524 80115164 46002100 */  add.s      $f4, $f4, $f0
/* CB528 80115168 C4400084 */  lwc1       $f0, 0x84($v0)
/* CB52C 8011516C 4600203C */  c.lt.s     $f4, $f0
/* CB530 80115170 00000000 */  nop
/* CB534 80115174 45010002 */  bc1t       .Lrace_80115180
/* CB538 80115178 24020001 */   addiu     $v0, $zero, 0x1
/* CB53C 8011517C 00001021 */  addu       $v0, $zero, $zero
.Lrace_80115180:
/* CB540 80115180 1040004C */  beqz       $v0, .Lrace_801152B4
/* CB544 80115184 00000000 */   nop
/* CB548 80115188 8E220000 */  lw         $v0, 0x0($s1)
/* CB54C 8011518C 8E230044 */  lw         $v1, 0x44($s1)
/* CB550 80115190 34420010 */  ori        $v0, $v0, 0x10
/* CB554 80115194 AE220000 */  sw         $v0, 0x0($s1)
/* CB558 80115198 C4600040 */  lwc1       $f0, 0x40($v1)
/* CB55C 8011519C E7A00050 */  swc1       $f0, 0x50($sp)
/* CB560 801151A0 C4600044 */  lwc1       $f0, 0x44($v1)
/* CB564 801151A4 E7A00054 */  swc1       $f0, 0x54($sp)
/* CB568 801151A8 C4600048 */  lwc1       $f0, 0x48($v1)
/* CB56C 801151AC E7A00058 */  swc1       $f0, 0x58($sp)
/* CB570 801151B0 8E220044 */  lw         $v0, 0x44($s1)
/* CB574 801151B4 C4400034 */  lwc1       $f0, 0x34($v0)
/* CB578 801151B8 E7A00040 */  swc1       $f0, 0x40($sp)
/* CB57C 801151BC C4400038 */  lwc1       $f0, 0x38($v0)
/* CB580 801151C0 E7A00044 */  swc1       $f0, 0x44($sp)
/* CB584 801151C4 C440003C */  lwc1       $f0, 0x3C($v0)
/* CB588 801151C8 E7A00048 */  swc1       $f0, 0x48($sp)
/* CB58C 801151CC 8E240044 */  lw         $a0, 0x44($s1)
/* CB590 801151D0 0C0165A4 */  jal        func_80059690
/* CB594 801151D4 27A50030 */   addiu     $a1, $sp, 0x30
/* CB598 801151D8 8E220044 */  lw         $v0, 0x44($s1)
/* CB59C 801151DC 3C01800D */  lui        $at, %hi(D_race_800CDF04)
/* CB5A0 801151E0 C420DF04 */  lwc1       $f0, %lo(D_race_800CDF04)($at)
/* CB5A4 801151E4 C4420058 */  lwc1       $f2, 0x58($v0)
/* CB5A8 801151E8 46001032 */  c.eq.s     $f2, $f0
/* CB5AC 801151EC 00000000 */  nop
/* CB5B0 801151F0 4501000B */  bc1t       .Lrace_80115220
/* CB5B4 801151F4 2622007C */   addiu     $v0, $s1, 0x7C
/* CB5B8 801151F8 C62001B0 */  lwc1       $f0, 0x1B0($s1)
/* CB5BC 801151FC 46020002 */  mul.s      $f0, $f0, $f2
/* CB5C0 80115200 2623007C */  addiu      $v1, $s1, 0x7C
/* CB5C4 80115204 E460011C */  swc1       $f0, 0x11C($v1)
/* CB5C8 80115208 8E220044 */  lw         $v0, 0x44($s1)
/* CB5CC 8011520C C62001B4 */  lwc1       $f0, 0x1B4($s1)
/* CB5D0 80115210 C4420058 */  lwc1       $f2, 0x58($v0)
/* CB5D4 80115214 46020002 */  mul.s      $f0, $f0, $f2
/* CB5D8 80115218 0804548C */  j          .Lrace_80115230
/* CB5DC 8011521C E4600120 */   swc1      $f0, 0x120($v1)
.Lrace_80115220:
/* CB5E0 80115220 C62001B0 */  lwc1       $f0, 0x1B0($s1)
/* CB5E4 80115224 E440011C */  swc1       $f0, 0x11C($v0)
/* CB5E8 80115228 C62001B4 */  lwc1       $f0, 0x1B4($s1)
/* CB5EC 8011522C E4400120 */  swc1       $f0, 0x120($v0)
.Lrace_80115230:
/* CB5F0 80115230 3C01800D */  lui        $at, %hi(D_race_800CDF08)
/* CB5F4 80115234 C420DF08 */  lwc1       $f0, %lo(D_race_800CDF08)($at)
/* CB5F8 80115238 3C01800D */  lui        $at, %hi(D_race_800CDF0C)
/* CB5FC 8011523C C422DF0C */  lwc1       $f2, %lo(D_race_800CDF0C)($at)
/* CB600 80115240 2630007C */  addiu      $s0, $s1, 0x7C
/* CB604 80115244 E6000124 */  swc1       $f0, 0x124($s0)
/* CB608 80115248 C7A00038 */  lwc1       $f0, 0x38($sp)
/* CB60C 8011524C 02002021 */  addu       $a0, $s0, $zero
/* CB610 80115250 46020000 */  add.s      $f0, $f0, $f2
/* CB614 80115254 C7A20030 */  lwc1       $f2, 0x30($sp)
/* CB618 80115258 26220230 */  addiu      $v0, $s1, 0x230
/* CB61C 8011525C E7A00038 */  swc1       $f0, 0x38($sp)
/* CB620 80115260 E60200F0 */  swc1       $f2, 0xF0($s0)
/* CB624 80115264 C7A00034 */  lwc1       $f0, 0x34($sp)
/* CB628 80115268 26250058 */  addiu      $a1, $s1, 0x58
/* CB62C 8011526C E60000F4 */  swc1       $f0, 0xF4($s0)
/* CB630 80115270 C7A00038 */  lwc1       $f0, 0x38($sp)
/* CB634 80115274 27A60040 */  addiu      $a2, $sp, 0x40
/* CB638 80115278 E60000F8 */  swc1       $f0, 0xF8($s0)
/* CB63C 8011527C AE2200F8 */  sw         $v0, 0xF8($s1)
/* CB640 80115280 C7A00040 */  lwc1       $f0, 0x40($sp)
/* CB644 80115284 C7A20048 */  lwc1       $f2, 0x48($sp)
/* CB648 80115288 46000007 */  neg.s      $f0, $f0
/* CB64C 8011528C E7A00040 */  swc1       $f0, 0x40($sp)
/* CB650 80115290 C7A00044 */  lwc1       $f0, 0x44($sp)
/* CB654 80115294 46001087 */  neg.s      $f2, $f2
/* CB658 80115298 E7A20048 */  swc1       $f2, 0x48($sp)
/* CB65C 8011529C 46000007 */  neg.s      $f0, $f0
/* CB660 801152A0 0C039CC3 */  jal        func_race_800E730C
/* CB664 801152A4 E7A00044 */   swc1      $f0, 0x44($sp)
/* CB668 801152A8 8E250064 */  lw         $a1, 0x64($s1)
/* CB66C 801152AC 0C039B98 */  jal        func_race_800E6E60
/* CB670 801152B0 02002021 */   addu      $a0, $s0, $zero
.Lrace_801152B4:
/* CB674 801152B4 8FBF0068 */  lw         $ra, 0x68($sp)
/* CB678 801152B8 8FB10064 */  lw         $s1, 0x64($sp)
/* CB67C 801152BC 8FB00060 */  lw         $s0, 0x60($sp)
/* CB680 801152C0 03E00008 */  jr         $ra
/* CB684 801152C4 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_801152C8
/* CB688 801152C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CB68C 801152CC AFB10014 */  sw         $s1, 0x14($sp)
/* CB690 801152D0 00808821 */  addu       $s1, $a0, $zero
/* CB694 801152D4 AFBF0018 */  sw         $ra, 0x18($sp)
/* CB698 801152D8 AFB00010 */  sw         $s0, 0x10($sp)
/* CB69C 801152DC 8E220000 */  lw         $v0, 0x0($s1)
/* CB6A0 801152E0 30420400 */  andi       $v0, $v0, 0x400
/* CB6A4 801152E4 14400007 */  bnez       $v0, .Lrace_80115304
/* CB6A8 801152E8 00A08021 */   addu      $s0, $a1, $zero
/* CB6AC 801152EC 8E02012C */  lw         $v0, 0x12C($s0)
/* CB6B0 801152F0 8E250044 */  lw         $a1, 0x44($s1)
/* CB6B4 801152F4 84440118 */  lh         $a0, 0x118($v0)
/* CB6B8 801152F8 8C42011C */  lw         $v0, 0x11C($v0)
/* CB6BC 801152FC 0040F809 */  jalr       $v0
/* CB6C0 80115300 02042021 */   addu      $a0, $s0, $a0
.Lrace_80115304:
/* CB6C4 80115304 8E220000 */  lw         $v0, 0x0($s1)
/* CB6C8 80115308 30420800 */  andi       $v0, $v0, 0x800
/* CB6CC 8011530C 1440000F */  bnez       $v0, .Lrace_8011534C
/* CB6D0 80115310 00000000 */   nop
/* CB6D4 80115314 8E02012C */  lw         $v0, 0x12C($s0)
/* CB6D8 80115318 8E25003C */  lw         $a1, 0x3C($s1)
/* CB6DC 8011531C 84440118 */  lh         $a0, 0x118($v0)
/* CB6E0 80115320 8C42011C */  lw         $v0, 0x11C($v0)
/* CB6E4 80115324 0040F809 */  jalr       $v0
/* CB6E8 80115328 02042021 */   addu      $a0, $s0, $a0
/* CB6EC 8011532C 8E250040 */  lw         $a1, 0x40($s1)
/* CB6F0 80115330 10A00006 */  beqz       $a1, .Lrace_8011534C
/* CB6F4 80115334 00000000 */   nop
/* CB6F8 80115338 8E02012C */  lw         $v0, 0x12C($s0)
/* CB6FC 8011533C 84440118 */  lh         $a0, 0x118($v0)
/* CB700 80115340 8C42011C */  lw         $v0, 0x11C($v0)
/* CB704 80115344 0040F809 */  jalr       $v0
/* CB708 80115348 02042021 */   addu      $a0, $s0, $a0
.Lrace_8011534C:
/* CB70C 8011534C 8E220000 */  lw         $v0, 0x0($s1)
/* CB710 80115350 30421000 */  andi       $v0, $v0, 0x1000
/* CB714 80115354 14400007 */  bnez       $v0, .Lrace_80115374
/* CB718 80115358 00000000 */   nop
/* CB71C 8011535C 8E02012C */  lw         $v0, 0x12C($s0)
/* CB720 80115360 8E250048 */  lw         $a1, 0x48($s1)
/* CB724 80115364 84440118 */  lh         $a0, 0x118($v0)
/* CB728 80115368 8C42011C */  lw         $v0, 0x11C($v0)
/* CB72C 8011536C 0040F809 */  jalr       $v0
/* CB730 80115370 02042021 */   addu      $a0, $s0, $a0
.Lrace_80115374:
/* CB734 80115374 8FBF0018 */  lw         $ra, 0x18($sp)
/* CB738 80115378 8FB10014 */  lw         $s1, 0x14($sp)
/* CB73C 8011537C 8FB00010 */  lw         $s0, 0x10($sp)
/* CB740 80115380 03E00008 */  jr         $ra
/* CB744 80115384 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80115388
/* CB748 80115388 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CB74C 8011538C AFB00010 */  sw         $s0, 0x10($sp)
/* CB750 80115390 00A08021 */  addu       $s0, $a1, $zero
/* CB754 80115394 AFBF0018 */  sw         $ra, 0x18($sp)
/* CB758 80115398 AFB10014 */  sw         $s1, 0x14($sp)
/* CB75C 8011539C 8E02012C */  lw         $v0, 0x12C($s0)
/* CB760 801153A0 00808821 */  addu       $s1, $a0, $zero
/* CB764 801153A4 84440090 */  lh         $a0, 0x90($v0)
/* CB768 801153A8 8C420094 */  lw         $v0, 0x94($v0)
/* CB76C 801153AC 0040F809 */  jalr       $v0
/* CB770 801153B0 02042021 */   addu      $a0, $s0, $a0
/* CB774 801153B4 8E220000 */  lw         $v0, 0x0($s1)
/* CB778 801153B8 30420400 */  andi       $v0, $v0, 0x400
/* CB77C 801153BC 14400007 */  bnez       $v0, .Lrace_801153DC
/* CB780 801153C0 00000000 */   nop
/* CB784 801153C4 8E02012C */  lw         $v0, 0x12C($s0)
/* CB788 801153C8 8E250044 */  lw         $a1, 0x44($s1)
/* CB78C 801153CC 84440118 */  lh         $a0, 0x118($v0)
/* CB790 801153D0 8C42011C */  lw         $v0, 0x11C($v0)
/* CB794 801153D4 0040F809 */  jalr       $v0
/* CB798 801153D8 02042021 */   addu      $a0, $s0, $a0
.Lrace_801153DC:
/* CB79C 801153DC 8E220000 */  lw         $v0, 0x0($s1)
/* CB7A0 801153E0 30420800 */  andi       $v0, $v0, 0x800
/* CB7A4 801153E4 1440000F */  bnez       $v0, .Lrace_80115424
/* CB7A8 801153E8 00000000 */   nop
/* CB7AC 801153EC 8E02012C */  lw         $v0, 0x12C($s0)
/* CB7B0 801153F0 8E25003C */  lw         $a1, 0x3C($s1)
/* CB7B4 801153F4 84440118 */  lh         $a0, 0x118($v0)
/* CB7B8 801153F8 8C42011C */  lw         $v0, 0x11C($v0)
/* CB7BC 801153FC 0040F809 */  jalr       $v0
/* CB7C0 80115400 02042021 */   addu      $a0, $s0, $a0
/* CB7C4 80115404 8E250040 */  lw         $a1, 0x40($s1)
/* CB7C8 80115408 10A00006 */  beqz       $a1, .Lrace_80115424
/* CB7CC 8011540C 00000000 */   nop
/* CB7D0 80115410 8E02012C */  lw         $v0, 0x12C($s0)
/* CB7D4 80115414 84440118 */  lh         $a0, 0x118($v0)
/* CB7D8 80115418 8C42011C */  lw         $v0, 0x11C($v0)
/* CB7DC 8011541C 0040F809 */  jalr       $v0
/* CB7E0 80115420 02042021 */   addu      $a0, $s0, $a0
.Lrace_80115424:
/* CB7E4 80115424 8E02012C */  lw         $v0, 0x12C($s0)
/* CB7E8 80115428 84440098 */  lh         $a0, 0x98($v0)
/* CB7EC 8011542C 8C42009C */  lw         $v0, 0x9C($v0)
/* CB7F0 80115430 0040F809 */  jalr       $v0
/* CB7F4 80115434 02042021 */   addu      $a0, $s0, $a0
/* CB7F8 80115438 8E220000 */  lw         $v0, 0x0($s1)
/* CB7FC 8011543C 30421000 */  andi       $v0, $v0, 0x1000
/* CB800 80115440 14400007 */  bnez       $v0, .Lrace_80115460
/* CB804 80115444 00000000 */   nop
/* CB808 80115448 8E02012C */  lw         $v0, 0x12C($s0)
/* CB80C 8011544C 8E250048 */  lw         $a1, 0x48($s1)
/* CB810 80115450 84440118 */  lh         $a0, 0x118($v0)
/* CB814 80115454 8C42011C */  lw         $v0, 0x11C($v0)
/* CB818 80115458 0040F809 */  jalr       $v0
/* CB81C 8011545C 02042021 */   addu      $a0, $s0, $a0
.Lrace_80115460:
/* CB820 80115460 8FBF0018 */  lw         $ra, 0x18($sp)
/* CB824 80115464 8FB10014 */  lw         $s1, 0x14($sp)
/* CB828 80115468 8FB00010 */  lw         $s0, 0x10($sp)
/* CB82C 8011546C 03E00008 */  jr         $ra
/* CB830 80115470 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80115474
/* CB834 80115474 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* CB838 80115478 AFB20038 */  sw         $s2, 0x38($sp)
/* CB83C 8011547C 00809021 */  addu       $s2, $a0, $zero
/* CB840 80115480 AFBF003C */  sw         $ra, 0x3C($sp)
/* CB844 80115484 AFB10034 */  sw         $s1, 0x34($sp)
/* CB848 80115488 AFB00030 */  sw         $s0, 0x30($sp)
/* CB84C 8011548C 8E420000 */  lw         $v0, 0x0($s2)
/* CB850 80115490 30420010 */  andi       $v0, $v0, 0x10
/* CB854 80115494 10400044 */  beqz       $v0, .Lrace_801155A8
/* CB858 80115498 00A08821 */   addu      $s1, $a1, $zero
/* CB85C 8011549C 8E220008 */  lw         $v0, 0x8($s1)
/* CB860 801154A0 8C430000 */  lw         $v1, 0x0($v0)
/* CB864 801154A4 27B00010 */  addiu      $s0, $sp, 0x10
/* CB868 801154A8 8C62000C */  lw         $v0, 0xC($v1)
/* CB86C 801154AC 02002821 */  addu       $a1, $s0, $zero
/* CB870 801154B0 84440088 */  lh         $a0, 0x88($v0)
/* CB874 801154B4 8C42008C */  lw         $v0, 0x8C($v0)
/* CB878 801154B8 0040F809 */  jalr       $v0
/* CB87C 801154BC 00642021 */   addu      $a0, $v1, $a0
/* CB880 801154C0 2642007C */  addiu      $v0, $s2, 0x7C
/* CB884 801154C4 C44000F0 */  lwc1       $f0, 0xF0($v0)
/* CB888 801154C8 C7A40010 */  lwc1       $f4, 0x10($sp)
/* CB88C 801154CC E7A00020 */  swc1       $f0, 0x20($sp)
/* CB890 801154D0 C44600F4 */  lwc1       $f6, 0xF4($v0)
/* CB894 801154D4 46002101 */  sub.s      $f4, $f4, $f0
/* CB898 801154D8 E7A60024 */  swc1       $f6, 0x24($sp)
/* CB89C 801154DC C44800F8 */  lwc1       $f8, 0xF8($v0)
/* CB8A0 801154E0 46042102 */  mul.s      $f4, $f4, $f4
/* CB8A4 801154E4 E7A80028 */  swc1       $f8, 0x28($sp)
/* CB8A8 801154E8 C6020004 */  lwc1       $f2, 0x4($s0)
/* CB8AC 801154EC 46061081 */  sub.s      $f2, $f2, $f6
/* CB8B0 801154F0 46021082 */  mul.s      $f2, $f2, $f2
/* CB8B4 801154F4 C6000008 */  lwc1       $f0, 0x8($s0)
/* CB8B8 801154F8 46080001 */  sub.s      $f0, $f0, $f8
/* CB8BC 801154FC 46000002 */  mul.s      $f0, $f0, $f0
/* CB8C0 80115500 46022100 */  add.s      $f4, $f4, $f2
/* CB8C4 80115504 46002100 */  add.s      $f4, $f4, $f0
/* CB8C8 80115508 3C01800D */  lui        $at, %hi(D_race_800CDF10)
/* CB8CC 8011550C C426DF10 */  lwc1       $f6, %lo(D_race_800CDF10)($at)
/* CB8D0 80115510 4606203E */  c.le.s     $f4, $f6
/* CB8D4 80115514 00000000 */  nop
/* CB8D8 80115518 45000003 */  bc1f       .Lrace_80115528
/* CB8DC 8011551C 46002086 */   mov.s     $f2, $f4
/* CB8E0 80115520 0804555B */  j          .Lrace_8011556C
/* CB8E4 80115524 240500BF */   addiu     $a1, $zero, 0xBF
.Lrace_80115528:
/* CB8E8 80115528 3C01800D */  lui        $at, %hi(D_race_800CDF14)
/* CB8EC 8011552C C420DF14 */  lwc1       $f0, %lo(D_race_800CDF14)($at)
/* CB8F0 80115530 4604003E */  c.le.s     $f0, $f4
/* CB8F4 80115534 00000000 */  nop
/* CB8F8 80115538 4501000C */  bc1t       .Lrace_8011556C
/* CB8FC 8011553C 00002821 */   addu      $a1, $zero, $zero
/* CB900 80115540 46061001 */  sub.s      $f0, $f2, $f6
/* CB904 80115544 3C01800D */  lui        $at, %hi(D_race_800CDF18)
/* CB908 80115548 C422DF18 */  lwc1       $f2, %lo(D_race_800CDF18)($at)
/* CB90C 8011554C 3C01800D */  lui        $at, %hi(D_race_800CDF1C)
/* CB910 80115550 C424DF1C */  lwc1       $f4, %lo(D_race_800CDF1C)($at)
/* CB914 80115554 46020003 */  div.s      $f0, $f0, $f2
/* CB918 80115558 46040002 */  mul.s      $f0, $f0, $f4
/* CB91C 8011555C 240200BF */  addiu      $v0, $zero, 0xBF
/* CB920 80115560 4600028D */  trunc.w.s  $f10, $f0
/* CB924 80115564 44035000 */  mfc1       $v1, $f10
/* CB928 80115568 00432823 */  subu       $a1, $v0, $v1
.Lrace_8011556C:
/* CB92C 8011556C 10A0000E */  beqz       $a1, .Lrace_801155A8
/* CB930 80115570 24060001 */   addiu     $a2, $zero, 0x1
/* CB934 80115574 8E22012C */  lw         $v0, 0x12C($s1)
/* CB938 80115578 84440170 */  lh         $a0, 0x170($v0)
/* CB93C 8011557C 8C420174 */  lw         $v0, 0x174($v0)
/* CB940 80115580 0040F809 */  jalr       $v0
/* CB944 80115584 02242021 */   addu      $a0, $s1, $a0
/* CB948 80115588 2644007C */  addiu      $a0, $s2, 0x7C
/* CB94C 8011558C 0C03A0C6 */  jal        func_race_800E8318
/* CB950 80115590 02202821 */   addu      $a1, $s1, $zero
/* CB954 80115594 8E22012C */  lw         $v0, 0x12C($s1)
/* CB958 80115598 84440178 */  lh         $a0, 0x178($v0)
/* CB95C 8011559C 8C42017C */  lw         $v0, 0x17C($v0)
/* CB960 801155A0 0040F809 */  jalr       $v0
/* CB964 801155A4 02242021 */   addu      $a0, $s1, $a0
.Lrace_801155A8:
/* CB968 801155A8 8E4201F0 */  lw         $v0, 0x1F0($s2)
/* CB96C 801155AC 8C420D04 */  lw         $v0, 0xD04($v0)
/* CB970 801155B0 30420800 */  andi       $v0, $v0, 0x800
/* CB974 801155B4 10400006 */  beqz       $v0, .Lrace_801155D0
/* CB978 801155B8 2645029C */   addiu     $a1, $s2, 0x29C
/* CB97C 801155BC 8E22012C */  lw         $v0, 0x12C($s1)
/* CB980 801155C0 84440118 */  lh         $a0, 0x118($v0)
/* CB984 801155C4 8C42011C */  lw         $v0, 0x11C($v0)
/* CB988 801155C8 0040F809 */  jalr       $v0
/* CB98C 801155CC 02242021 */   addu      $a0, $s1, $a0
.Lrace_801155D0:
/* CB990 801155D0 8FBF003C */  lw         $ra, 0x3C($sp)
/* CB994 801155D4 8FB20038 */  lw         $s2, 0x38($sp)
/* CB998 801155D8 8FB10034 */  lw         $s1, 0x34($sp)
/* CB99C 801155DC 8FB00030 */  lw         $s0, 0x30($sp)
/* CB9A0 801155E0 03E00008 */  jr         $ra
/* CB9A4 801155E4 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_801155E8
/* CB9A8 801155E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CB9AC 801155EC AFB00010 */  sw         $s0, 0x10($sp)
/* CB9B0 801155F0 00808021 */  addu       $s0, $a0, $zero
/* CB9B4 801155F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* CB9B8 801155F8 8E0201F0 */  lw         $v0, 0x1F0($s0)
/* CB9BC 801155FC 8C420D08 */  lw         $v0, 0xD08($v0)
/* CB9C0 80115600 38420002 */  xori       $v0, $v0, 0x2
/* CB9C4 80115604 1040000D */  beqz       $v0, .Lrace_8011563C
/* CB9C8 80115608 00000000 */   nop
/* CB9CC 8011560C 0C044C4B */  jal        func_race_8011312C
/* CB9D0 80115610 00000000 */   nop
/* CB9D4 80115614 0C044C7E */  jal        func_race_801131F8
/* CB9D8 80115618 02002021 */   addu      $a0, $s0, $zero
/* CB9DC 8011561C 8E0201F0 */  lw         $v0, 0x1F0($s0)
/* CB9E0 80115620 8C420D60 */  lw         $v0, 0xD60($v0)
/* CB9E4 80115624 10400005 */  beqz       $v0, .Lrace_8011563C
/* CB9E8 80115628 00000000 */   nop
/* CB9EC 8011562C 0C044ABA */  jal        func_race_80112AE8
/* CB9F0 80115630 02002021 */   addu      $a0, $s0, $zero
/* CB9F4 80115634 0C044B50 */  jal        func_race_80112D40
/* CB9F8 80115638 02002021 */   addu      $a0, $s0, $zero
.Lrace_8011563C:
/* CB9FC 8011563C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CBA00 80115640 8FB00010 */  lw         $s0, 0x10($sp)
/* CBA04 80115644 03E00008 */  jr         $ra
/* CBA08 80115648 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011564C
/* CBA0C 8011564C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CBA10 80115650 AFB00010 */  sw         $s0, 0x10($sp)
/* CBA14 80115654 AFBF0014 */  sw         $ra, 0x14($sp)
/* CBA18 80115658 0C044B9A */  jal        func_race_80112E68
/* CBA1C 8011565C 00808021 */   addu      $s0, $a0, $zero
/* CBA20 80115660 0C044AC4 */  jal        func_race_80112B10
/* CBA24 80115664 02002021 */   addu      $a0, $s0, $zero
/* CBA28 80115668 8FBF0014 */  lw         $ra, 0x14($sp)
/* CBA2C 8011566C 8FB00010 */  lw         $s0, 0x10($sp)
/* CBA30 80115670 03E00008 */  jr         $ra
/* CBA34 80115674 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115678
/* CBA38 80115678 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CBA3C 8011567C AFBF0010 */  sw         $ra, 0x10($sp)
/* CBA40 80115680 8C820000 */  lw         $v0, 0x0($a0)
/* CBA44 80115684 8C8301F0 */  lw         $v1, 0x1F0($a0)
/* CBA48 80115688 34420100 */  ori        $v0, $v0, 0x100
/* CBA4C 8011568C AC820000 */  sw         $v0, 0x0($a0)
/* CBA50 80115690 8C620D08 */  lw         $v0, 0xD08($v1)
/* CBA54 80115694 38420002 */  xori       $v0, $v0, 0x2
/* CBA58 80115698 10400003 */  beqz       $v0, .Lrace_801156A8
/* CBA5C 8011569C 00000000 */   nop
/* CBA60 801156A0 0C044B50 */  jal        func_race_80112D40
/* CBA64 801156A4 00000000 */   nop
.Lrace_801156A8:
/* CBA68 801156A8 8FBF0010 */  lw         $ra, 0x10($sp)
/* CBA6C 801156AC 03E00008 */  jr         $ra
/* CBA70 801156B0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801156B4
/* CBA74 801156B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CBA78 801156B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* CBA7C 801156BC 8C820000 */  lw         $v0, 0x0($a0)
/* CBA80 801156C0 2403FEFF */  addiu      $v1, $zero, -0x101
/* CBA84 801156C4 00431024 */  and        $v0, $v0, $v1
/* CBA88 801156C8 0C044B9A */  jal        func_race_80112E68
/* CBA8C 801156CC AC820000 */   sw        $v0, 0x0($a0)
/* CBA90 801156D0 8FBF0010 */  lw         $ra, 0x10($sp)
/* CBA94 801156D4 03E00008 */  jr         $ra
/* CBA98 801156D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801156DC
/* CBA9C 801156DC 27BDFF90 */  addiu      $sp, $sp, -0x70
/* CBAA0 801156E0 AFB00058 */  sw         $s0, 0x58($sp)
/* CBAA4 801156E4 00A08021 */  addu       $s0, $a1, $zero
/* CBAA8 801156E8 AFB1005C */  sw         $s1, 0x5C($sp)
/* CBAAC 801156EC 00C08821 */  addu       $s1, $a2, $zero
/* CBAB0 801156F0 AFB20060 */  sw         $s2, 0x60($sp)
/* CBAB4 801156F4 00E09021 */  addu       $s2, $a3, $zero
/* CBAB8 801156F8 00002821 */  addu       $a1, $zero, $zero
/* CBABC 801156FC 27A60010 */  addiu      $a2, $sp, 0x10
/* CBAC0 80115700 AFBF0064 */  sw         $ra, 0x64($sp)
/* CBAC4 80115704 F7B40068 */  sdc1       $f20, 0x68($sp)
/* CBAC8 80115708 8C84003C */  lw         $a0, 0x3C($a0)
/* CBACC 8011570C 0C0161E1 */  jal        func_80058784
/* CBAD0 80115710 27A70050 */   addiu     $a3, $sp, 0x50
/* CBAD4 80115714 C6200000 */  lwc1       $f0, 0x0($s1)
/* CBAD8 80115718 C6020000 */  lwc1       $f2, 0x0($s0)
/* CBADC 8011571C 46020001 */  sub.s      $f0, $f0, $f2
/* CBAE0 80115720 E7A00020 */  swc1       $f0, 0x20($sp)
/* CBAE4 80115724 C6200004 */  lwc1       $f0, 0x4($s1)
/* CBAE8 80115728 C6020004 */  lwc1       $f2, 0x4($s0)
/* CBAEC 8011572C 46020001 */  sub.s      $f0, $f0, $f2
/* CBAF0 80115730 E7A00024 */  swc1       $f0, 0x24($sp)
/* CBAF4 80115734 C6200008 */  lwc1       $f0, 0x8($s1)
/* CBAF8 80115738 C6020008 */  lwc1       $f2, 0x8($s0)
/* CBAFC 8011573C 27A40020 */  addiu      $a0, $sp, 0x20
/* CBB00 80115740 46020001 */  sub.s      $f0, $f0, $f2
/* CBB04 80115744 C7B40050 */  lwc1       $f20, 0x50($sp)
/* CBB08 80115748 00802821 */  addu       $a1, $a0, $zero
/* CBB0C 8011574C 4614A502 */  mul.s      $f20, $f20, $f20
/* CBB10 80115750 0C000F26 */  jal        func_80003C98
/* CBB14 80115754 E7A00028 */   swc1      $f0, 0x28($sp)
/* CBB18 80115758 C7A20010 */  lwc1       $f2, 0x10($sp)
/* CBB1C 8011575C C6000000 */  lwc1       $f0, 0x0($s0)
/* CBB20 80115760 46001081 */  sub.s      $f2, $f2, $f0
/* CBB24 80115764 C7A60020 */  lwc1       $f6, 0x20($sp)
/* CBB28 80115768 46023182 */  mul.s      $f6, $f6, $f2
/* CBB2C 8011576C E7A20030 */  swc1       $f2, 0x30($sp)
/* CBB30 80115770 46021082 */  mul.s      $f2, $f2, $f2
/* CBB34 80115774 27A20010 */  addiu      $v0, $sp, 0x10
/* CBB38 80115778 C4440004 */  lwc1       $f4, 0x4($v0)
/* CBB3C 8011577C C6000004 */  lwc1       $f0, 0x4($s0)
/* CBB40 80115780 46002101 */  sub.s      $f4, $f4, $f0
/* CBB44 80115784 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* CBB48 80115788 46045282 */  mul.s      $f10, $f10, $f4
/* CBB4C 8011578C E7A40034 */  swc1       $f4, 0x34($sp)
/* CBB50 80115790 46042102 */  mul.s      $f4, $f4, $f4
/* CBB54 80115794 C4480008 */  lwc1       $f8, 0x8($v0)
/* CBB58 80115798 C6000008 */  lwc1       $f0, 0x8($s0)
/* CBB5C 8011579C 46004201 */  sub.s      $f8, $f8, $f0
/* CBB60 801157A0 C7A00028 */  lwc1       $f0, 0x28($sp)
/* CBB64 801157A4 46080002 */  mul.s      $f0, $f0, $f8
/* CBB68 801157A8 00000000 */  nop
/* CBB6C 801157AC 46084302 */  mul.s      $f12, $f8, $f8
/* CBB70 801157B0 460A3180 */  add.s      $f6, $f6, $f10
/* CBB74 801157B4 46003180 */  add.s      $f6, $f6, $f0
/* CBB78 801157B8 46063002 */  mul.s      $f0, $f6, $f6
/* CBB7C 801157BC 46041080 */  add.s      $f2, $f2, $f4
/* CBB80 801157C0 460C1080 */  add.s      $f2, $f2, $f12
/* CBB84 801157C4 46001081 */  sub.s      $f2, $f2, $f0
/* CBB88 801157C8 E7A80038 */  swc1       $f8, 0x38($sp)
/* CBB8C 801157CC 4602A301 */  sub.s      $f12, $f20, $f2
/* CBB90 801157D0 44800000 */  mtc1       $zero, $f0
/* CBB94 801157D4 4600603E */  c.le.s     $f12, $f0
/* CBB98 801157D8 00000000 */  nop
/* CBB9C 801157DC 45010035 */  bc1t       .Lrace_801158B4
/* CBBA0 801157E0 46003506 */   mov.s     $f20, $f6
/* CBBA4 801157E4 46006004 */  sqrt.s     $f0, $f12
/* CBBA8 801157E8 46000032 */  c.eq.s     $f0, $f0
/* CBBAC 801157EC 00000000 */  nop
/* CBBB0 801157F0 45030004 */  bc1tl      .Lrace_80115804
/* CBBB4 801157F4 4600A281 */   sub.s     $f10, $f20, $f0
/* CBBB8 801157F8 0C006BC8 */  jal        sqrt
/* CBBBC 801157FC 00000000 */   nop
/* CBBC0 80115800 4600A281 */  sub.s      $f10, $f20, $f0
.Lrace_80115804:
/* CBBC4 80115804 460A5202 */  mul.s      $f8, $f10, $f10
/* CBBC8 80115808 C6020000 */  lwc1       $f2, 0x0($s0)
/* CBBCC 8011580C C6200000 */  lwc1       $f0, 0x0($s1)
/* CBBD0 80115810 46001081 */  sub.s      $f2, $f2, $f0
/* CBBD4 80115814 46021082 */  mul.s      $f2, $f2, $f2
/* CBBD8 80115818 C6060004 */  lwc1       $f6, 0x4($s0)
/* CBBDC 8011581C C6200004 */  lwc1       $f0, 0x4($s1)
/* CBBE0 80115820 46003181 */  sub.s      $f6, $f6, $f0
/* CBBE4 80115824 46063182 */  mul.s      $f6, $f6, $f6
/* CBBE8 80115828 C6240008 */  lwc1       $f4, 0x8($s1)
/* CBBEC 8011582C C6000008 */  lwc1       $f0, 0x8($s0)
/* CBBF0 80115830 46040001 */  sub.s      $f0, $f0, $f4
/* CBBF4 80115834 46000002 */  mul.s      $f0, $f0, $f0
/* CBBF8 80115838 46061080 */  add.s      $f2, $f2, $f6
/* CBBFC 8011583C 46001080 */  add.s      $f2, $f2, $f0
/* CBC00 80115840 4608103C */  c.lt.s     $f2, $f8
/* CBC04 80115844 00000000 */  nop
/* CBC08 80115848 45010002 */  bc1t       .Lrace_80115854
/* CBC0C 8011584C 24020001 */   addiu     $v0, $zero, 0x1
/* CBC10 80115850 00001021 */  addu       $v0, $zero, $zero
.Lrace_80115854:
/* CBC14 80115854 14400018 */  bnez       $v0, .Lrace_801158B8
/* CBC18 80115858 00001021 */   addu      $v0, $zero, $zero
/* CBC1C 8011585C C7A40020 */  lwc1       $f4, 0x20($sp)
/* CBC20 80115860 460A2102 */  mul.s      $f4, $f4, $f10
/* CBC24 80115864 C7A20024 */  lwc1       $f2, 0x24($sp)
/* CBC28 80115868 460A1082 */  mul.s      $f2, $f2, $f10
/* CBC2C 8011586C C7A00028 */  lwc1       $f0, 0x28($sp)
/* CBC30 80115870 460A0002 */  mul.s      $f0, $f0, $f10
/* CBC34 80115874 E7A40040 */  swc1       $f4, 0x40($sp)
/* CBC38 80115878 E7A20044 */  swc1       $f2, 0x44($sp)
/* CBC3C 8011587C E7A00048 */  swc1       $f0, 0x48($sp)
/* CBC40 80115880 C6000000 */  lwc1       $f0, 0x0($s0)
/* CBC44 80115884 46040000 */  add.s      $f0, $f0, $f4
/* CBC48 80115888 E6400000 */  swc1       $f0, 0x0($s2)
/* CBC4C 8011588C C6000004 */  lwc1       $f0, 0x4($s0)
/* CBC50 80115890 C7A20044 */  lwc1       $f2, 0x44($sp)
/* CBC54 80115894 46020000 */  add.s      $f0, $f0, $f2
/* CBC58 80115898 E6400004 */  swc1       $f0, 0x4($s2)
/* CBC5C 8011589C C6000008 */  lwc1       $f0, 0x8($s0)
/* CBC60 801158A0 C7A20048 */  lwc1       $f2, 0x48($sp)
/* CBC64 801158A4 46020000 */  add.s      $f0, $f0, $f2
/* CBC68 801158A8 24020001 */  addiu      $v0, $zero, 0x1
/* CBC6C 801158AC 0804562E */  j          .Lrace_801158B8
/* CBC70 801158B0 E6400008 */   swc1      $f0, 0x8($s2)
.Lrace_801158B4:
/* CBC74 801158B4 00001021 */  addu       $v0, $zero, $zero
.Lrace_801158B8:
/* CBC78 801158B8 8FBF0064 */  lw         $ra, 0x64($sp)
/* CBC7C 801158BC 8FB20060 */  lw         $s2, 0x60($sp)
/* CBC80 801158C0 8FB1005C */  lw         $s1, 0x5C($sp)
/* CBC84 801158C4 8FB00058 */  lw         $s0, 0x58($sp)
/* CBC88 801158C8 D7B40068 */  ldc1       $f20, 0x68($sp)
/* CBC8C 801158CC 03E00008 */  jr         $ra
/* CBC90 801158D0 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_801158D4
/* CBC94 801158D4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* CBC98 801158D8 AFB00038 */  sw         $s0, 0x38($sp)
/* CBC9C 801158DC 00808021 */  addu       $s0, $a0, $zero
/* CBCA0 801158E0 AFB1003C */  sw         $s1, 0x3C($sp)
/* CBCA4 801158E4 00A08821 */  addu       $s1, $a1, $zero
/* CBCA8 801158E8 02202021 */  addu       $a0, $s1, $zero
/* CBCAC 801158EC 26050074 */  addiu      $a1, $s0, 0x74
/* CBCB0 801158F0 AFBF0044 */  sw         $ra, 0x44($sp)
/* CBCB4 801158F4 0C016F2D */  jal        func_8005BCB4
/* CBCB8 801158F8 AFB20040 */   sw        $s2, 0x40($sp)
/* CBCBC 801158FC 3C038013 */  lui        $v1, %hi(D_race_80132C70)
/* CBCC0 80115900 24722C70 */  addiu      $s2, $v1, %lo(D_race_80132C70)
/* CBCC4 80115904 02402021 */  addu       $a0, $s2, $zero
/* CBCC8 80115908 8C460000 */  lw         $a2, 0x0($v0)
/* CBCCC 8011590C 0C038E05 */  jal        func_race_800E3814
/* CBCD0 80115910 02202821 */   addu      $a1, $s1, $zero
/* CBCD4 80115914 8E030044 */  lw         $v1, 0x44($s0)
/* CBCD8 80115918 8C620024 */  lw         $v0, 0x24($v1)
/* CBCDC 8011591C 27A50018 */  addiu      $a1, $sp, 0x18
/* CBCE0 80115920 84440010 */  lh         $a0, 0x10($v0)
/* CBCE4 80115924 8C420014 */  lw         $v0, 0x14($v0)
/* CBCE8 80115928 0040F809 */  jalr       $v0
/* CBCEC 8011592C 00642021 */   addu      $a0, $v1, $a0
/* CBCF0 80115930 02402021 */  addu       $a0, $s2, $zero
/* CBCF4 80115934 27B10030 */  addiu      $s1, $sp, 0x30
/* CBCF8 80115938 C7A00018 */  lwc1       $f0, 0x18($sp)
/* CBCFC 8011593C C7A2001C */  lwc1       $f2, 0x1C($sp)
/* CBD00 80115940 02202821 */  addu       $a1, $s1, $zero
/* CBD04 80115944 A3A00030 */  sb         $zero, 0x30($sp)
/* CBD08 80115948 A3A00031 */  sb         $zero, 0x31($sp)
/* CBD0C 8011594C A3A00032 */  sb         $zero, 0x32($sp)
/* CBD10 80115950 A3A00033 */  sb         $zero, 0x33($sp)
/* CBD14 80115954 E7A00028 */  swc1       $f0, 0x28($sp)
/* CBD18 80115958 0C038E38 */  jal        func_race_800E38E0
/* CBD1C 8011595C E7A2002C */   swc1      $f2, 0x2C($sp)
/* CBD20 80115960 02402021 */  addu       $a0, $s2, $zero
/* CBD24 80115964 02202821 */  addu       $a1, $s1, $zero
/* CBD28 80115968 24020008 */  addiu      $v0, $zero, 0x8
/* CBD2C 8011596C A3A20030 */  sb         $v0, 0x30($sp)
/* CBD30 80115970 A3A20031 */  sb         $v0, 0x31($sp)
/* CBD34 80115974 A3A20032 */  sb         $v0, 0x32($sp)
/* CBD38 80115978 240200FF */  addiu      $v0, $zero, 0xFF
/* CBD3C 8011597C 0C038E5A */  jal        func_race_800E3968
/* CBD40 80115980 A3A20033 */   sb        $v0, 0x33($sp)
/* CBD44 80115984 C60001B4 */  lwc1       $f0, 0x1B4($s0)
/* CBD48 80115988 3C01800D */  lui        $at, %hi(D_race_800CDF20)
/* CBD4C 8011598C C422DF20 */  lwc1       $f2, %lo(D_race_800CDF20)($at)
/* CBD50 80115990 46020002 */  mul.s      $f0, $f0, $f2
/* CBD54 80115994 02402021 */  addu       $a0, $s2, $zero
/* CBD58 80115998 44060000 */  mfc1       $a2, $f0
/* CBD5C 8011599C C60001B0 */  lwc1       $f0, 0x1B0($s0)
/* CBD60 801159A0 3C028013 */  lui        $v0, %hi(D_race_80132250)
/* CBD64 801159A4 46020002 */  mul.s      $f0, $f0, $f2
/* CBD68 801159A8 3C038013 */  lui        $v1, %hi(D_race_80132254)
/* CBD6C 801159AC 27A50028 */  addiu      $a1, $sp, 0x28
/* CBD70 801159B0 8C422250 */  lw         $v0, %lo(D_race_80132250)($v0)
/* CBD74 801159B4 8C632254 */  lw         $v1, %lo(D_race_80132254)($v1)
/* CBD78 801159B8 44070000 */  mfc1       $a3, $f0
/* CBD7C 801159BC 00431025 */  or         $v0, $v0, $v1
/* CBD80 801159C0 0C038E9E */  jal        func_race_800E3A78
/* CBD84 801159C4 AFA20010 */   sw        $v0, 0x10($sp)
/* CBD88 801159C8 02402021 */  addu       $a0, $s2, $zero
/* CBD8C 801159CC 8E050044 */  lw         $a1, 0x44($s0)
/* CBD90 801159D0 0C038ED8 */  jal        func_race_800E3B60
/* CBD94 801159D4 00003021 */   addu      $a2, $zero, $zero
/* CBD98 801159D8 02402021 */  addu       $a0, $s2, $zero
/* CBD9C 801159DC 8E05003C */  lw         $a1, 0x3C($s0)
/* CBDA0 801159E0 0C038ED8 */  jal        func_race_800E3B60
/* CBDA4 801159E4 00003021 */   addu      $a2, $zero, $zero
/* CBDA8 801159E8 8E050040 */  lw         $a1, 0x40($s0)
/* CBDAC 801159EC 10A00003 */  beqz       $a1, .Lrace_801159FC
/* CBDB0 801159F0 02402021 */   addu      $a0, $s2, $zero
/* CBDB4 801159F4 0C038ED8 */  jal        func_race_800E3B60
/* CBDB8 801159F8 00003021 */   addu      $a2, $zero, $zero
.Lrace_801159FC:
/* CBDBC 801159FC 0C038F0D */  jal        func_race_800E3C34
/* CBDC0 80115A00 02402021 */   addu      $a0, $s2, $zero
/* CBDC4 80115A04 8FBF0044 */  lw         $ra, 0x44($sp)
/* CBDC8 80115A08 8FB20040 */  lw         $s2, 0x40($sp)
/* CBDCC 80115A0C 8FB1003C */  lw         $s1, 0x3C($sp)
/* CBDD0 80115A10 8FB00038 */  lw         $s0, 0x38($sp)
/* CBDD4 80115A14 03E00008 */  jr         $ra
/* CBDD8 80115A18 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_80115A1C
/* CBDDC 80115A1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CBDE0 80115A20 AFB00010 */  sw         $s0, 0x10($sp)
/* CBDE4 80115A24 00808021 */  addu       $s0, $a0, $zero
/* CBDE8 80115A28 AFB10014 */  sw         $s1, 0x14($sp)
/* CBDEC 80115A2C 26110004 */  addiu      $s1, $s0, 0x4
/* CBDF0 80115A30 02202021 */  addu       $a0, $s1, $zero
/* CBDF4 80115A34 AFBF0018 */  sw         $ra, 0x18($sp)
/* CBDF8 80115A38 0C016698 */  jal        func_80059A60
/* CBDFC 80115A3C 24050004 */   addiu     $a1, $zero, 0x4
/* CBE00 80115A40 8E05003C */  lw         $a1, 0x3C($s0)
/* CBE04 80115A44 10A00007 */  beqz       $a1, .Lrace_80115A64
/* CBE08 80115A48 00000000 */   nop
/* CBE0C 80115A4C 8E020000 */  lw         $v0, 0x0($s0)
/* CBE10 80115A50 30420800 */  andi       $v0, $v0, 0x800
/* CBE14 80115A54 14400003 */  bnez       $v0, .Lrace_80115A64
/* CBE18 80115A58 00000000 */   nop
/* CBE1C 80115A5C 0C0166CE */  jal        func_80059B38
/* CBE20 80115A60 02202021 */   addu      $a0, $s1, $zero
.Lrace_80115A64:
/* CBE24 80115A64 8E050040 */  lw         $a1, 0x40($s0)
/* CBE28 80115A68 10A00007 */  beqz       $a1, .Lrace_80115A88
/* CBE2C 80115A6C 00000000 */   nop
/* CBE30 80115A70 8E020000 */  lw         $v0, 0x0($s0)
/* CBE34 80115A74 30420800 */  andi       $v0, $v0, 0x800
/* CBE38 80115A78 14400003 */  bnez       $v0, .Lrace_80115A88
/* CBE3C 80115A7C 00000000 */   nop
/* CBE40 80115A80 0C0166CE */  jal        func_80059B38
/* CBE44 80115A84 26040004 */   addiu     $a0, $s0, 0x4
.Lrace_80115A88:
/* CBE48 80115A88 8E050044 */  lw         $a1, 0x44($s0)
/* CBE4C 80115A8C 10A00007 */  beqz       $a1, .Lrace_80115AAC
/* CBE50 80115A90 00000000 */   nop
/* CBE54 80115A94 8E020000 */  lw         $v0, 0x0($s0)
/* CBE58 80115A98 30420400 */  andi       $v0, $v0, 0x400
/* CBE5C 80115A9C 14400003 */  bnez       $v0, .Lrace_80115AAC
/* CBE60 80115AA0 00000000 */   nop
/* CBE64 80115AA4 0C0166CE */  jal        func_80059B38
/* CBE68 80115AA8 26040004 */   addiu     $a0, $s0, 0x4
.Lrace_80115AAC:
/* CBE6C 80115AAC 8E050048 */  lw         $a1, 0x48($s0)
/* CBE70 80115AB0 10A00007 */  beqz       $a1, .Lrace_80115AD0
/* CBE74 80115AB4 00000000 */   nop
/* CBE78 80115AB8 8E020000 */  lw         $v0, 0x0($s0)
/* CBE7C 80115ABC 30421000 */  andi       $v0, $v0, 0x1000
/* CBE80 80115AC0 14400003 */  bnez       $v0, .Lrace_80115AD0
/* CBE84 80115AC4 00000000 */   nop
/* CBE88 80115AC8 0C0166CE */  jal        func_80059B38
/* CBE8C 80115ACC 26040004 */   addiu     $a0, $s0, 0x4
.Lrace_80115AD0:
/* CBE90 80115AD0 8FBF0018 */  lw         $ra, 0x18($sp)
/* CBE94 80115AD4 8FB10014 */  lw         $s1, 0x14($sp)
/* CBE98 80115AD8 8FB00010 */  lw         $s0, 0x10($sp)
/* CBE9C 80115ADC 03E00008 */  jr         $ra
/* CBEA0 80115AE0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80115AE4
/* CBEA4 80115AE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CBEA8 80115AE8 24020001 */  addiu      $v0, $zero, 0x1
/* CBEAC 80115AEC AFBF0010 */  sw         $ra, 0x10($sp)
/* CBEB0 80115AF0 8CA30000 */  lw         $v1, 0x0($a1)
/* CBEB4 80115AF4 8CA60004 */  lw         $a2, 0x4($a1)
/* CBEB8 80115AF8 8CA70008 */  lw         $a3, 0x8($a1)
/* CBEBC 80115AFC 8CA8000C */  lw         $t0, 0xC($a1)
/* CBEC0 80115B00 AC8303B4 */  sw         $v1, 0x3B4($a0)
/* CBEC4 80115B04 AC8603B8 */  sw         $a2, 0x3B8($a0)
/* CBEC8 80115B08 AC8703BC */  sw         $a3, 0x3BC($a0)
/* CBECC 80115B0C AC8803C0 */  sw         $t0, 0x3C0($a0)
/* CBED0 80115B10 8CA30010 */  lw         $v1, 0x10($a1)
/* CBED4 80115B14 8CA60014 */  lw         $a2, 0x14($a1)
/* CBED8 80115B18 8CA70018 */  lw         $a3, 0x18($a1)
/* CBEDC 80115B1C 8CA8001C */  lw         $t0, 0x1C($a1)
/* CBEE0 80115B20 AC8303C4 */  sw         $v1, 0x3C4($a0)
/* CBEE4 80115B24 AC8603C8 */  sw         $a2, 0x3C8($a0)
/* CBEE8 80115B28 AC8703CC */  sw         $a3, 0x3CC($a0)
/* CBEEC 80115B2C AC8803D0 */  sw         $t0, 0x3D0($a0)
/* CBEF0 80115B30 AC8203D4 */  sw         $v0, 0x3D4($a0)
/* CBEF4 80115B34 8C8203D8 */  lw         $v0, 0x3D8($a0)
/* CBEF8 80115B38 14400003 */  bnez       $v0, .Lrace_80115B48
/* CBEFC 80115B3C 248503B4 */   addiu     $a1, $a0, 0x3B4
/* CBF00 80115B40 0C016898 */  jal        func_8005A260
/* CBF04 80115B44 24840004 */   addiu     $a0, $a0, 0x4
.Lrace_80115B48:
/* CBF08 80115B48 8FBF0010 */  lw         $ra, 0x10($sp)
/* CBF0C 80115B4C 03E00008 */  jr         $ra
/* CBF10 80115B50 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115B54
/* CBF14 80115B54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CBF18 80115B58 AFBF0010 */  sw         $ra, 0x10($sp)
/* CBF1C 80115B5C 8C8203D8 */  lw         $v0, 0x3D8($a0)
/* CBF20 80115B60 14400003 */  bnez       $v0, .Lrace_80115B70
/* CBF24 80115B64 AC8003D4 */   sw        $zero, 0x3D4($a0)
/* CBF28 80115B68 0C0168B7 */  jal        func_8005A2DC
/* CBF2C 80115B6C 24840004 */   addiu     $a0, $a0, 0x4
.Lrace_80115B70:
/* CBF30 80115B70 8FBF0010 */  lw         $ra, 0x10($sp)
/* CBF34 80115B74 03E00008 */  jr         $ra
/* CBF38 80115B78 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115B7C
/* CBF3C 80115B7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CBF40 80115B80 24020001 */  addiu      $v0, $zero, 0x1
/* CBF44 80115B84 AFBF0010 */  sw         $ra, 0x10($sp)
/* CBF48 80115B88 AC8203D8 */  sw         $v0, 0x3D8($a0)
/* CBF4C 80115B8C AC8603DC */  sw         $a2, 0x3DC($a0)
/* CBF50 80115B90 0C016898 */  jal        func_8005A260
/* CBF54 80115B94 24840004 */   addiu     $a0, $a0, 0x4
/* CBF58 80115B98 8FBF0010 */  lw         $ra, 0x10($sp)
/* CBF5C 80115B9C 03E00008 */  jr         $ra
/* CBF60 80115BA0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115BA4
/* CBF64 80115BA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CBF68 80115BA8 00802821 */  addu       $a1, $a0, $zero
/* CBF6C 80115BAC AFBF0010 */  sw         $ra, 0x10($sp)
/* CBF70 80115BB0 8CA203D4 */  lw         $v0, 0x3D4($a1)
/* CBF74 80115BB4 ACA003D8 */  sw         $zero, 0x3D8($a1)
/* CBF78 80115BB8 10400006 */  beqz       $v0, .Lrace_80115BD4
/* CBF7C 80115BBC ACA003DC */   sw        $zero, 0x3DC($a1)
/* CBF80 80115BC0 24A40004 */  addiu      $a0, $a1, 0x4
/* CBF84 80115BC4 0C016898 */  jal        func_8005A260
/* CBF88 80115BC8 24A503B4 */   addiu     $a1, $a1, 0x3B4
/* CBF8C 80115BCC 080456F7 */  j          .Lrace_80115BDC
/* CBF90 80115BD0 00000000 */   nop
.Lrace_80115BD4:
/* CBF94 80115BD4 0C0168B7 */  jal        func_8005A2DC
/* CBF98 80115BD8 24A40004 */   addiu     $a0, $a1, 0x4
.Lrace_80115BDC:
/* CBF9C 80115BDC 8FBF0010 */  lw         $ra, 0x10($sp)
/* CBFA0 80115BE0 03E00008 */  jr         $ra
/* CBFA4 80115BE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115BE8
/* CBFA8 80115BE8 8C820044 */  lw         $v0, 0x44($a0)
/* CBFAC 80115BEC 3C01800D */  lui        $at, %hi(D_race_800CDF24)
/* CBFB0 80115BF0 C420DF24 */  lwc1       $f0, %lo(D_race_800CDF24)($at)
/* CBFB4 80115BF4 44851000 */  mtc1       $a1, $f2
/* CBFB8 80115BF8 E440000C */  swc1       $f0, 0xC($v0)
/* CBFBC 80115BFC E4420058 */  swc1       $f2, 0x58($v0)
/* CBFC0 80115C00 8C82003C */  lw         $v0, 0x3C($a0)
/* CBFC4 80115C04 E440000C */  swc1       $f0, 0xC($v0)
/* CBFC8 80115C08 E4420058 */  swc1       $f2, 0x58($v0)
/* CBFCC 80115C0C 8C820040 */  lw         $v0, 0x40($a0)
/* CBFD0 80115C10 10400003 */  beqz       $v0, .Lrace_80115C20
/* CBFD4 80115C14 00000000 */   nop
/* CBFD8 80115C18 E440000C */  swc1       $f0, 0xC($v0)
/* CBFDC 80115C1C E4420058 */  swc1       $f2, 0x58($v0)
.Lrace_80115C20:
/* CBFE0 80115C20 8C820048 */  lw         $v0, 0x48($a0)
/* CBFE4 80115C24 E440000C */  swc1       $f0, 0xC($v0)
/* CBFE8 80115C28 03E00008 */  jr         $ra
/* CBFEC 80115C2C E4420058 */   swc1      $f2, 0x58($v0)

glabel func_race_80115C30
/* CBFF0 80115C30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CBFF4 80115C34 AFBF0010 */  sw         $ra, 0x10($sp)
/* CBFF8 80115C38 8C840048 */  lw         $a0, 0x48($a0)
/* CBFFC 80115C3C 0C01971D */  jal        func_80065C74
/* CC000 80115C40 24050009 */   addiu     $a1, $zero, 0x9
/* CC004 80115C44 8FBF0010 */  lw         $ra, 0x10($sp)
/* CC008 80115C48 03E00008 */  jr         $ra
/* CC00C 80115C4C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115C50
/* CC010 80115C50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC014 80115C54 AFBF0010 */  sw         $ra, 0x10($sp)
/* CC018 80115C58 8C850044 */  lw         $a1, 0x44($a0)
/* CC01C 80115C5C 8CA2005C */  lw         $v0, 0x5C($a1)
/* CC020 80115C60 3C030002 */  lui        $v1, (0x20000 >> 16)
/* CC024 80115C64 00431024 */  and        $v0, $v0, $v1
/* CC028 80115C68 10400004 */  beqz       $v0, .Lrace_80115C7C
/* CC02C 80115C6C 00000000 */   nop
/* CC030 80115C70 94A200D8 */  lhu        $v0, 0xD8($a1)
/* CC034 80115C74 08045720 */  j          .Lrace_80115C80
/* CC038 80115C78 00000000 */   nop
.Lrace_80115C7C:
/* CC03C 80115C7C 94A200BC */  lhu        $v0, 0xBC($a1)
.Lrace_80115C80:
/* CC040 80115C80 10400004 */  beqz       $v0, .Lrace_80115C94
/* CC044 80115C84 00000000 */   nop
/* CC048 80115C88 8C840044 */  lw         $a0, 0x44($a0)
/* CC04C 80115C8C 0C01971D */  jal        func_80065C74
/* CC050 80115C90 00002821 */   addu      $a1, $zero, $zero
.Lrace_80115C94:
/* CC054 80115C94 8FBF0010 */  lw         $ra, 0x10($sp)
/* CC058 80115C98 03E00008 */  jr         $ra
/* CC05C 80115C9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115CA0
/* CC060 80115CA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC064 80115CA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* CC068 80115CA8 8C850044 */  lw         $a1, 0x44($a0)
/* CC06C 80115CAC 8CA200A8 */  lw         $v0, 0xA8($a1)
/* CC070 80115CB0 8C420030 */  lw         $v0, 0x30($v0)
/* CC074 80115CB4 2C420002 */  sltiu      $v0, $v0, 0x2
/* CC078 80115CB8 1440000E */  bnez       $v0, .Lrace_80115CF4
/* CC07C 80115CBC 3C030002 */   lui       $v1, (0x20000 >> 16)
/* CC080 80115CC0 8CA2005C */  lw         $v0, 0x5C($a1)
/* CC084 80115CC4 00431024 */  and        $v0, $v0, $v1
/* CC088 80115CC8 10400004 */  beqz       $v0, .Lrace_80115CDC
/* CC08C 80115CCC 24020001 */   addiu     $v0, $zero, 0x1
/* CC090 80115CD0 94A300D8 */  lhu        $v1, 0xD8($a1)
/* CC094 80115CD4 08045738 */  j          .Lrace_80115CE0
/* CC098 80115CD8 00000000 */   nop
.Lrace_80115CDC:
/* CC09C 80115CDC 94A300BC */  lhu        $v1, 0xBC($a1)
.Lrace_80115CE0:
/* CC0A0 80115CE0 10620004 */  beq        $v1, $v0, .Lrace_80115CF4
/* CC0A4 80115CE4 00000000 */   nop
/* CC0A8 80115CE8 8C840044 */  lw         $a0, 0x44($a0)
/* CC0AC 80115CEC 0C01971D */  jal        func_80065C74
/* CC0B0 80115CF0 00402821 */   addu      $a1, $v0, $zero
.Lrace_80115CF4:
/* CC0B4 80115CF4 8FBF0010 */  lw         $ra, 0x10($sp)
/* CC0B8 80115CF8 03E00008 */  jr         $ra
/* CC0BC 80115CFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115D00
/* CC0C0 80115D00 3C028013 */  lui        $v0, %hi(D_race_8013225C)
/* CC0C4 80115D04 03E00008 */  jr         $ra
/* CC0C8 80115D08 AC44225C */   sw        $a0, %lo(D_race_8013225C)($v0)

glabel func_race_80115D0C
/* CC0CC 80115D0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC0D0 80115D10 3C048013 */  lui        $a0, %hi(D_race_80132C70)
/* CC0D4 80115D14 24842C70 */  addiu      $a0, $a0, %lo(D_race_80132C70)
/* CC0D8 80115D18 AFBF0010 */  sw         $ra, 0x10($sp)
/* CC0DC 80115D1C 0C038DF1 */  jal        func_race_800E37C4
/* CC0E0 80115D20 24050002 */   addiu     $a1, $zero, 0x2
/* CC0E4 80115D24 8FBF0010 */  lw         $ra, 0x10($sp)
/* CC0E8 80115D28 03E00008 */  jr         $ra
/* CC0EC 80115D2C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115D30
/* CC0F0 80115D30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC0F4 80115D34 3C048013 */  lui        $a0, %hi(D_race_80132C70)
/* CC0F8 80115D38 AFBF0010 */  sw         $ra, 0x10($sp)
/* CC0FC 80115D3C 0C038DCC */  jal        func_race_800E3730
/* CC100 80115D40 24842C70 */   addiu     $a0, $a0, %lo(D_race_80132C70)
/* CC104 80115D44 8FBF0010 */  lw         $ra, 0x10($sp)
/* CC108 80115D48 03E00008 */  jr         $ra
/* CC10C 80115D4C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115D50
/* CC110 80115D50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC114 80115D54 AFB00010 */  sw         $s0, 0x10($sp)
/* CC118 80115D58 AFBF0014 */  sw         $ra, 0x14($sp)
/* CC11C 80115D5C 0C04576F */  jal        func_race_80115DBC
/* CC120 80115D60 00808021 */   addu      $s0, $a0, $zero
/* CC124 80115D64 02001021 */  addu       $v0, $s0, $zero
/* CC128 80115D68 8FBF0014 */  lw         $ra, 0x14($sp)
/* CC12C 80115D6C 8FB00010 */  lw         $s0, 0x10($sp)
/* CC130 80115D70 03E00008 */  jr         $ra
/* CC134 80115D74 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115D78
/* CC138 80115D78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CC13C 80115D7C AFB10014 */  sw         $s1, 0x14($sp)
/* CC140 80115D80 00808821 */  addu       $s1, $a0, $zero
/* CC144 80115D84 AFB00010 */  sw         $s0, 0x10($sp)
/* CC148 80115D88 AFBF0018 */  sw         $ra, 0x18($sp)
/* CC14C 80115D8C 0C04578F */  jal        func_race_80115E3C
/* CC150 80115D90 00A08021 */   addu      $s0, $a1, $zero
/* CC154 80115D94 32100001 */  andi       $s0, $s0, 0x1
/* CC158 80115D98 12000003 */  beqz       $s0, .Lrace_80115DA8
/* CC15C 80115D9C 00000000 */   nop
/* CC160 80115DA0 0C01FB5C */  jal        func_8007ED70
/* CC164 80115DA4 02202021 */   addu      $a0, $s1, $zero
.Lrace_80115DA8:
/* CC168 80115DA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* CC16C 80115DAC 8FB10014 */  lw         $s1, 0x14($sp)
/* CC170 80115DB0 8FB00010 */  lw         $s0, 0x10($sp)
/* CC174 80115DB4 03E00008 */  jr         $ra
/* CC178 80115DB8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80115DBC
/* CC17C 80115DBC 00002821 */  addu       $a1, $zero, $zero
/* CC180 80115DC0 00801821 */  addu       $v1, $a0, $zero
/* CC184 80115DC4 AC800000 */  sw         $zero, 0x0($a0)
/* CC188 80115DC8 AC800004 */  sw         $zero, 0x4($a0)
/* CC18C 80115DCC AC800008 */  sw         $zero, 0x8($a0)
/* CC190 80115DD0 AC80000C */  sw         $zero, 0xC($a0)
.Lrace_80115DD4:
/* CC194 80115DD4 AC600010 */  sw         $zero, 0x10($v1)
/* CC198 80115DD8 AC600028 */  sw         $zero, 0x28($v1)
/* CC19C 80115DDC 24A50001 */  addiu      $a1, $a1, 0x1
/* CC1A0 80115DE0 2CA20006 */  sltiu      $v0, $a1, 0x6
/* CC1A4 80115DE4 1440FFFB */  bnez       $v0, .Lrace_80115DD4
/* CC1A8 80115DE8 24630004 */   addiu     $v1, $v1, 0x4
/* CC1AC 80115DEC 24020001 */  addiu      $v0, $zero, 0x1
/* CC1B0 80115DF0 AC800040 */  sw         $zero, 0x40($a0)
/* CC1B4 80115DF4 03E00008 */  jr         $ra
/* CC1B8 80115DF8 AC820044 */   sw        $v0, 0x44($a0)

glabel func_race_80115DFC
/* CC1BC 80115DFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CC1C0 80115E00 AFB00010 */  sw         $s0, 0x10($sp)
/* CC1C4 80115E04 00808021 */  addu       $s0, $a0, $zero
/* CC1C8 80115E08 AFBF0018 */  sw         $ra, 0x18($sp)
/* CC1CC 80115E0C AFB10014 */  sw         $s1, 0x14($sp)
/* CC1D0 80115E10 8E020004 */  lw         $v0, 0x4($s0)
/* CC1D4 80115E14 10400003 */  beqz       $v0, .Lrace_80115E24
/* CC1D8 80115E18 00A08821 */   addu      $s1, $a1, $zero
/* CC1DC 80115E1C 0C04578F */  jal        func_race_80115E3C
/* CC1E0 80115E20 00000000 */   nop
.Lrace_80115E24:
/* CC1E4 80115E24 AE110004 */  sw         $s1, 0x4($s0)
/* CC1E8 80115E28 8FBF0018 */  lw         $ra, 0x18($sp)
/* CC1EC 80115E2C 8FB10014 */  lw         $s1, 0x14($sp)
/* CC1F0 80115E30 8FB00010 */  lw         $s0, 0x10($sp)
/* CC1F4 80115E34 03E00008 */  jr         $ra
/* CC1F8 80115E38 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80115E3C
/* CC1FC 80115E3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC200 80115E40 AFBF0010 */  sw         $ra, 0x10($sp)
/* CC204 80115E44 0C04576F */  jal        func_race_80115DBC
/* CC208 80115E48 00000000 */   nop
/* CC20C 80115E4C 8FBF0010 */  lw         $ra, 0x10($sp)
/* CC210 80115E50 03E00008 */  jr         $ra
/* CC214 80115E54 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80115E58
/* CC218 80115E58 00001821 */  addu       $v1, $zero, $zero
.Lrace_80115E5C:
/* CC21C 80115E5C AC800028 */  sw         $zero, 0x28($a0)
/* CC220 80115E60 24630001 */  addiu      $v1, $v1, 0x1
/* CC224 80115E64 2C620006 */  sltiu      $v0, $v1, 0x6
/* CC228 80115E68 1440FFFC */  bnez       $v0, .Lrace_80115E5C
/* CC22C 80115E6C 24840004 */   addiu     $a0, $a0, 0x4
/* CC230 80115E70 03E00008 */  jr         $ra
/* CC234 80115E74 00000000 */   nop

glabel func_race_80115E78
/* CC238 80115E78 00052880 */  sll        $a1, $a1, 2
/* CC23C 80115E7C 00852021 */  addu       $a0, $a0, $a1
/* CC240 80115E80 3C02800D */  lui        $v0, %hi(D_race_800CDF40)
/* CC244 80115E84 2442DF40 */  addiu      $v0, $v0, %lo(D_race_800CDF40)
/* CC248 80115E88 00063080 */  sll        $a2, $a2, 2
/* CC24C 80115E8C 00C23021 */  addu       $a2, $a2, $v0
/* CC250 80115E90 8CC30000 */  lw         $v1, 0x0($a2)
/* CC254 80115E94 8C820010 */  lw         $v0, 0x10($a0)
/* CC258 80115E98 00431021 */  addu       $v0, $v0, $v1
/* CC25C 80115E9C AC830028 */  sw         $v1, 0x28($a0)
/* CC260 80115EA0 03E00008 */  jr         $ra
/* CC264 80115EA4 AC820010 */   sw        $v0, 0x10($a0)

glabel func_race_80115EA8
/* CC268 80115EA8 00052880 */  sll        $a1, $a1, 2
/* CC26C 80115EAC 00852021 */  addu       $a0, $a0, $a1
/* CC270 80115EB0 8C820010 */  lw         $v0, 0x10($a0)
/* CC274 80115EB4 03E00008 */  jr         $ra
/* CC278 80115EB8 00000000 */   nop

glabel func_race_80115EBC
/* CC27C 80115EBC 00003821 */  addu       $a3, $zero, $zero
/* CC280 80115EC0 00E03021 */  addu       $a2, $a3, $zero
/* CC284 80115EC4 00051080 */  sll        $v0, $a1, 2
/* CC288 80115EC8 00824021 */  addu       $t0, $a0, $v0
.Lrace_80115ECC:
/* CC28C 80115ECC 50C50007 */  beql       $a2, $a1, .Lrace_80115EEC
/* CC290 80115ED0 24C60001 */   addiu     $a2, $a2, 0x1
/* CC294 80115ED4 8C830010 */  lw         $v1, 0x10($a0)
/* CC298 80115ED8 8D020010 */  lw         $v0, 0x10($t0)
/* CC29C 80115EDC 0043102B */  sltu       $v0, $v0, $v1
/* CC2A0 80115EE0 54400001 */  bnel       $v0, $zero, .Lrace_80115EE8
/* CC2A4 80115EE4 24E70001 */   addiu     $a3, $a3, 0x1
.Lrace_80115EE8:
/* CC2A8 80115EE8 24C60001 */  addiu      $a2, $a2, 0x1
.Lrace_80115EEC:
/* CC2AC 80115EEC 2CC20006 */  sltiu      $v0, $a2, 0x6
/* CC2B0 80115EF0 1440FFF6 */  bnez       $v0, .Lrace_80115ECC
/* CC2B4 80115EF4 24840004 */   addiu     $a0, $a0, 0x4
/* CC2B8 80115EF8 03E00008 */  jr         $ra
/* CC2BC 80115EFC 00E01021 */   addu      $v0, $a3, $zero

glabel func_race_80115F00
/* CC2C0 80115F00 8C830040 */  lw         $v1, 0x40($a0)
/* CC2C4 80115F04 0065102B */  sltu       $v0, $v1, $a1
/* CC2C8 80115F08 10400004 */  beqz       $v0, .Lrace_80115F1C
/* CC2CC 80115F0C 00651023 */   subu      $v0, $v1, $a1
/* CC2D0 80115F10 24020190 */  addiu      $v0, $zero, 0x190
/* CC2D4 80115F14 03E00008 */  jr         $ra
/* CC2D8 80115F18 AC820040 */   sw        $v0, 0x40($a0)
.Lrace_80115F1C:
/* CC2DC 80115F1C 03E00008 */  jr         $ra
/* CC2E0 80115F20 AC820040 */   sw        $v0, 0x40($a0)

glabel func_race_80115F24
/* CC2E4 80115F24 00C03821 */  addu       $a3, $a2, $zero
/* CC2E8 80115F28 3C029521 */  lui        $v0, (0x95217CB1 >> 16)
/* CC2EC 80115F2C 34427CB1 */  ori        $v0, $v0, (0x95217CB1 & 0xFFFF)
/* CC2F0 80115F30 00E20019 */  multu      $a3, $v0
/* CC2F4 80115F34 00A04821 */  addu       $t1, $a1, $zero
/* CC2F8 80115F38 3C040009 */  lui        $a0, (0x927BF >> 16)
/* CC2FC 80115F3C 348427BF */  ori        $a0, $a0, (0x927BF & 0xFFFF)
/* CC300 80115F40 00006010 */  mfhi       $t4
/* CC304 80115F44 000C1D42 */  srl        $v1, $t4, 21
/* CC308 80115F48 00031140 */  sll        $v0, $v1, 5
/* CC30C 80115F4C 00431023 */  subu       $v0, $v0, $v1
/* CC310 80115F50 00021080 */  sll        $v0, $v0, 2
/* CC314 80115F54 00431021 */  addu       $v0, $v0, $v1
/* CC318 80115F58 00021900 */  sll        $v1, $v0, 4
/* CC31C 80115F5C 00621823 */  subu       $v1, $v1, $v0
/* CC320 80115F60 00031100 */  sll        $v0, $v1, 4
/* CC324 80115F64 00431023 */  subu       $v0, $v0, $v1
/* CC328 80115F68 000211C0 */  sll        $v0, $v0, 7
/* CC32C 80115F6C 00E23823 */  subu       $a3, $a3, $v0
/* CC330 80115F70 0087202B */  sltu       $a0, $a0, $a3
/* CC334 80115F74 10800006 */  beqz       $a0, .Lrace_80115F90
/* CC338 80115F78 A1200008 */   sb        $zero, 0x8($t1)
/* CC33C 80115F7C 240B0007 */  addiu      $t3, $zero, 0x7
/* CC340 80115F80 2402003A */  addiu      $v0, $zero, 0x3A
/* CC344 80115F84 A1220005 */  sb         $v0, 0x5($t1)
/* CC348 80115F88 080457E9 */  j          .Lrace_80115FA4
/* CC34C 80115F8C A1220002 */   sb        $v0, 0x2($t1)
.Lrace_80115F90:
/* CC350 80115F90 240B0006 */  addiu      $t3, $zero, 0x6
/* CC354 80115F94 2402003A */  addiu      $v0, $zero, 0x3A
/* CC358 80115F98 A1220004 */  sb         $v0, 0x4($t1)
/* CC35C 80115F9C A1220001 */  sb         $v0, 0x1($t1)
/* CC360 80115FA0 A1200007 */  sb         $zero, 0x7($t1)
.Lrace_80115FA4:
/* CC364 80115FA4 3C0ACCCC */  lui        $t2, (0xCCCCCCCD >> 16)
/* CC368 80115FA8 354ACCCD */  ori        $t2, $t2, (0xCCCCCCCD & 0xFFFF)
/* CC36C 80115FAC 00EA0019 */  multu      $a3, $t2
/* CC370 80115FB0 00006010 */  mfhi       $t4
/* CC374 80115FB4 000C38C2 */  srl        $a3, $t4, 3
/* CC378 80115FB8 00000000 */  nop
/* CC37C 80115FBC 00EA0019 */  multu      $a3, $t2
/* CC380 80115FC0 00006010 */  mfhi       $t4
/* CC384 80115FC4 000C10C2 */  srl        $v0, $t4, 3
/* CC388 80115FC8 00022880 */  sll        $a1, $v0, 2
/* CC38C 80115FCC 00A22821 */  addu       $a1, $a1, $v0
/* CC390 80115FD0 00052840 */  sll        $a1, $a1, 1
/* CC394 80115FD4 00E52823 */  subu       $a1, $a3, $a1
/* CC398 80115FD8 00403821 */  addu       $a3, $v0, $zero
/* CC39C 80115FDC 00EA0019 */  multu      $a3, $t2
/* CC3A0 80115FE0 00006010 */  mfhi       $t4
/* CC3A4 80115FE4 000C10C2 */  srl        $v0, $t4, 3
/* CC3A8 80115FE8 00022080 */  sll        $a0, $v0, 2
/* CC3AC 80115FEC 00822021 */  addu       $a0, $a0, $v0
/* CC3B0 80115FF0 00042040 */  sll        $a0, $a0, 1
/* CC3B4 80115FF4 00E42023 */  subu       $a0, $a3, $a0
/* CC3B8 80115FF8 00403821 */  addu       $a3, $v0, $zero
/* CC3BC 80115FFC 3C028888 */  lui        $v0, (0x88888889 >> 16)
/* CC3C0 80116000 34428889 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* CC3C4 80116004 00E20019 */  multu      $a3, $v0
/* CC3C8 80116008 3C066666 */  lui        $a2, (0x66666667 >> 16)
/* CC3CC 8011600C 34C66667 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* CC3D0 80116010 012B4821 */  addu       $t1, $t1, $t3
/* CC3D4 80116014 00006010 */  mfhi       $t4
/* CC3D8 80116018 000C4142 */  srl        $t0, $t4, 5
/* CC3DC 8011601C 01001821 */  addu       $v1, $t0, $zero
/* CC3E0 80116020 00031100 */  sll        $v0, $v1, 4
/* CC3E4 80116024 00431023 */  subu       $v0, $v0, $v1
/* CC3E8 80116028 00021080 */  sll        $v0, $v0, 2
/* CC3EC 8011602C 00E24023 */  subu       $t0, $a3, $v0
/* CC3F0 80116030 00603821 */  addu       $a3, $v1, $zero
/* CC3F4 80116034 00EA0019 */  multu      $a3, $t2
/* CC3F8 80116038 24A50030 */  addiu      $a1, $a1, 0x30
/* CC3FC 8011603C A1250000 */  sb         $a1, 0x0($t1)
/* CC400 80116040 24840030 */  addiu      $a0, $a0, 0x30
/* CC404 80116044 A124FFFF */  sb         $a0, -0x1($t1)
/* CC408 80116048 00006010 */  mfhi       $t4
/* CC40C 8011604C 000C10C2 */  srl        $v0, $t4, 3
/* CC410 80116050 00021880 */  sll        $v1, $v0, 2
/* CC414 80116054 00621821 */  addu       $v1, $v1, $v0
/* CC418 80116058 00031840 */  sll        $v1, $v1, 1
/* CC41C 8011605C 00E31823 */  subu       $v1, $a3, $v1
/* CC420 80116060 01060018 */  mult       $t0, $a2
/* CC424 80116064 00403821 */  addu       $a3, $v0, $zero
/* CC428 80116068 000817C3 */  sra        $v0, $t0, 31
/* CC42C 8011606C 24630030 */  addiu      $v1, $v1, 0x30
/* CC430 80116070 A123FFFA */  sb         $v1, -0x6($t1)
/* CC434 80116074 00006010 */  mfhi       $t4
/* CC438 80116078 000C2083 */  sra        $a0, $t4, 2
/* CC43C 8011607C 00822023 */  subu       $a0, $a0, $v0
/* CC440 80116080 00041080 */  sll        $v0, $a0, 2
/* CC444 80116084 00441021 */  addu       $v0, $v0, $a0
/* CC448 80116088 00021040 */  sll        $v0, $v0, 1
/* CC44C 8011608C 00860018 */  mult       $a0, $a2
/* CC450 80116090 01021023 */  subu       $v0, $t0, $v0
/* CC454 80116094 24420030 */  addiu      $v0, $v0, 0x30
/* CC458 80116098 A122FFFD */  sb         $v0, -0x3($t1)
/* CC45C 8011609C 000417C3 */  sra        $v0, $a0, 31
/* CC460 801160A0 00006010 */  mfhi       $t4
/* CC464 801160A4 000C1883 */  sra        $v1, $t4, 2
/* CC468 801160A8 00621823 */  subu       $v1, $v1, $v0
/* CC46C 801160AC 00031080 */  sll        $v0, $v1, 2
/* CC470 801160B0 00431021 */  addu       $v0, $v0, $v1
/* CC474 801160B4 00021040 */  sll        $v0, $v0, 1
/* CC478 801160B8 00822023 */  subu       $a0, $a0, $v0
/* CC47C 801160BC 24840030 */  addiu      $a0, $a0, 0x30
/* CC480 801160C0 10E0000A */  beqz       $a3, .Lrace_801160EC
/* CC484 801160C4 A124FFFC */   sb        $a0, -0x4($t1)
/* CC488 801160C8 00EA0019 */  multu      $a3, $t2
/* CC48C 801160CC 00006010 */  mfhi       $t4
/* CC490 801160D0 000C18C2 */  srl        $v1, $t4, 3
/* CC494 801160D4 00031080 */  sll        $v0, $v1, 2
/* CC498 801160D8 00431021 */  addu       $v0, $v0, $v1
/* CC49C 801160DC 00021040 */  sll        $v0, $v0, 1
/* CC4A0 801160E0 00E21023 */  subu       $v0, $a3, $v0
/* CC4A4 801160E4 24420030 */  addiu      $v0, $v0, 0x30
/* CC4A8 801160E8 A122FFF9 */  sb         $v0, -0x7($t1)
.Lrace_801160EC:
/* CC4AC 801160EC 03E00008 */  jr         $ra
/* CC4B0 801160F0 00000000 */   nop

glabel func_race_801160F4
/* CC4B4 801160F4 27BDFEF0 */  addiu      $sp, $sp, -0x110
/* CC4B8 801160F8 AFB400F0 */  sw         $s4, 0xF0($sp)
/* CC4BC 801160FC 0080A021 */  addu       $s4, $a0, $zero
/* CC4C0 80116100 AFB200E8 */  sw         $s2, 0xE8($sp)
/* CC4C4 80116104 00A09021 */  addu       $s2, $a1, $zero
/* CC4C8 80116108 AFB000E0 */  sw         $s0, 0xE0($sp)
/* CC4CC 8011610C 27B00068 */  addiu      $s0, $sp, 0x68
/* CC4D0 80116110 AFBF0104 */  sw         $ra, 0x104($sp)
/* CC4D4 80116114 AFBE0100 */  sw         $fp, 0x100($sp)
/* CC4D8 80116118 AFB700FC */  sw         $s7, 0xFC($sp)
/* CC4DC 8011611C AFB600F8 */  sw         $s6, 0xF8($sp)
/* CC4E0 80116120 AFB500F4 */  sw         $s5, 0xF4($sp)
/* CC4E4 80116124 AFB300EC */  sw         $s3, 0xEC($sp)
/* CC4E8 80116128 AFB100E4 */  sw         $s1, 0xE4($sp)
/* CC4EC 8011612C F7B40108 */  sdc1       $f20, 0x108($sp)
/* CC4F0 80116130 0C0016DC */  jal        func_80005B70
/* CC4F4 80116134 02002021 */   addu      $a0, $s0, $zero
/* CC4F8 80116138 8E820004 */  lw         $v0, 0x4($s4)
/* CC4FC 8011613C 8C420004 */  lw         $v0, 0x4($v0)
/* CC500 80116140 8C530078 */  lw         $s3, 0x78($v0)
/* CC504 80116144 8E62012C */  lw         $v0, 0x12C($s3)
/* CC508 80116148 00008821 */  addu       $s1, $zero, $zero
/* CC50C 8011614C 84440030 */  lh         $a0, 0x30($v0)
/* CC510 80116150 8C420034 */  lw         $v0, 0x34($v0)
/* CC514 80116154 0040F809 */  jalr       $v0
/* CC518 80116158 02642021 */   addu      $a0, $s3, $a0
/* CC51C 8011615C 8E830044 */  lw         $v1, 0x44($s4)
/* CC520 80116160 14600003 */  bnez       $v1, .Lrace_80116170
/* CC524 80116164 0040A821 */   addu      $s5, $v0, $zero
/* CC528 80116168 0804598F */  j          .Lrace_8011663C
/* CC52C 8011616C 02002021 */   addu      $a0, $s0, $zero
.Lrace_80116170:
/* CC530 80116170 12400094 */  beqz       $s2, .Lrace_801163C4
/* CC534 80116174 2405002D */   addiu     $a1, $zero, 0x2D
/* CC538 80116178 8E84000C */  lw         $a0, 0xC($s4)
/* CC53C 8011617C 0C00306A */  jal        func_8000C1A8
/* CC540 80116180 00009021 */   addu      $s2, $zero, $zero
/* CC544 80116184 02002021 */  addu       $a0, $s0, $zero
/* CC548 80116188 00402821 */  addu       $a1, $v0, $zero
/* CC54C 8011618C 0C0016F6 */  jal        func_80005BD8
/* CC550 80116190 02403021 */   addu      $a2, $s2, $zero
/* CC554 80116194 02002821 */  addu       $a1, $s0, $zero
/* CC558 80116198 27A600D8 */  addiu      $a2, $sp, 0xD8
/* CC55C 8011619C 8E840000 */  lw         $a0, 0x0($s4)
/* CC560 801161A0 0C01376C */  jal        func_8004DDB0
/* CC564 801161A4 27A700DC */   addiu     $a3, $sp, 0xDC
/* CC568 801161A8 02002821 */  addu       $a1, $s0, $zero
/* CC56C 801161AC 96A20026 */  lhu        $v0, 0x26($s5)
/* CC570 801161B0 8FA700D8 */  lw         $a3, 0xD8($sp)
/* CC574 801161B4 8E63012C */  lw         $v1, 0x12C($s3)
/* CC578 801161B8 3C01800D */  lui        $at, %hi(D_race_800CDF34)
/* CC57C 801161BC C420DF34 */  lwc1       $f0, %lo(D_race_800CDF34)($at)
/* CC580 801161C0 00021042 */  srl        $v0, $v0, 1
/* CC584 801161C4 00073842 */  srl        $a3, $a3, 1
/* CC588 801161C8 00473823 */  subu       $a3, $v0, $a3
/* CC58C 801161CC 846400D8 */  lh         $a0, 0xD8($v1)
/* CC590 801161D0 2402001E */  addiu      $v0, $zero, 0x1E
/* CC594 801161D4 AFA20010 */  sw         $v0, 0x10($sp)
/* CC598 801161D8 E7A00014 */  swc1       $f0, 0x14($sp)
/* CC59C 801161DC E7A00018 */  swc1       $f0, 0x18($sp)
/* CC5A0 801161E0 AFA0001C */  sw         $zero, 0x1C($sp)
/* CC5A4 801161E4 AFA00020 */  sw         $zero, 0x20($sp)
/* CC5A8 801161E8 8E860000 */  lw         $a2, 0x0($s4)
/* CC5AC 801161EC 8C6200DC */  lw         $v0, 0xDC($v1)
/* CC5B0 801161F0 0040F809 */  jalr       $v0
/* CC5B4 801161F4 02642021 */   addu      $a0, $s3, $a0
/* CC5B8 801161F8 27A30078 */  addiu      $v1, $sp, 0x78
.Lrace_801161FC:
/* CC5BC 801161FC AC600000 */  sw         $zero, 0x0($v1)
/* CC5C0 80116200 26520001 */  addiu      $s2, $s2, 0x1
/* CC5C4 80116204 2E420006 */  sltiu      $v0, $s2, 0x6
/* CC5C8 80116208 1440FFFC */  bnez       $v0, .Lrace_801161FC
/* CC5CC 8011620C 24630004 */   addiu     $v1, $v1, 0x4
/* CC5D0 80116210 00009021 */  addu       $s2, $zero, $zero
/* CC5D4 80116214 27B50078 */  addiu      $s5, $sp, 0x78
/* CC5D8 80116218 3C02800D */  lui        $v0, %hi(D_race_800CDF30)
/* CC5DC 8011621C 2456DF30 */  addiu      $s6, $v0, %lo(D_race_800CDF30)
/* CC5E0 80116220 3C01800D */  lui        $at, %hi(D_race_800CDF38)
/* CC5E4 80116224 C434DF38 */  lwc1       $f20, %lo(D_race_800CDF38)($at)
/* CC5E8 80116228 24100042 */  addiu      $s0, $zero, 0x42
.Lrace_8011622C:
/* CC5EC 8011622C 2E420006 */  sltiu      $v0, $s2, 0x6
/* CC5F0 80116230 10400101 */  beqz       $v0, .Lrace_80116638
/* CC5F4 80116234 00003821 */   addu      $a3, $zero, $zero
/* CC5F8 80116238 00E02021 */  addu       $a0, $a3, $zero
/* CC5FC 8011623C 02803021 */  addu       $a2, $s4, $zero
/* CC600 80116240 02A02821 */  addu       $a1, $s5, $zero
.Lrace_80116244:
/* CC604 80116244 8CA20000 */  lw         $v0, 0x0($a1)
/* CC608 80116248 54400007 */  bnel       $v0, $zero, .Lrace_80116268
/* CC60C 8011624C 24C60004 */   addiu     $a2, $a2, 0x4
/* CC610 80116250 8CC30010 */  lw         $v1, 0x10($a2)
/* CC614 80116254 00E3102B */  sltu       $v0, $a3, $v1
/* CC618 80116258 10400003 */  beqz       $v0, .Lrace_80116268
/* CC61C 8011625C 24C60004 */   addiu     $a2, $a2, 0x4
/* CC620 80116260 00603821 */  addu       $a3, $v1, $zero
/* CC624 80116264 00808821 */  addu       $s1, $a0, $zero
.Lrace_80116268:
/* CC628 80116268 24840001 */  addiu      $a0, $a0, 0x1
/* CC62C 8011626C 2C820006 */  sltiu      $v0, $a0, 0x6
/* CC630 80116270 1440FFF4 */  bnez       $v0, .Lrace_80116244
/* CC634 80116274 24A50004 */   addiu     $a1, $a1, 0x4
/* CC638 80116278 8E820040 */  lw         $v0, 0x40($s4)
/* CC63C 8011627C 2C420096 */  sltiu      $v0, $v0, 0x96
/* CC640 80116280 1040000A */  beqz       $v0, .Lrace_801162AC
/* CC644 80116284 00001821 */   addu      $v1, $zero, $zero
/* CC648 80116288 00111040 */  sll        $v0, $s1, 1
/* CC64C 8011628C 00511021 */  addu       $v0, $v0, $s1
/* CC650 80116290 000210C0 */  sll        $v0, $v0, 3
/* CC654 80116294 00511023 */  subu       $v0, $v0, $s1
/* CC658 80116298 8E830004 */  lw         $v1, 0x4($s4)
/* CC65C 8011629C 00021080 */  sll        $v0, $v0, 2
/* CC660 801162A0 00621821 */  addu       $v1, $v1, $v0
/* CC664 801162A4 8C620118 */  lw         $v0, 0x118($v1)
/* CC668 801162A8 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_801162AC:
/* CC66C 801162AC 1460003F */  bnez       $v1, .Lrace_801163AC
/* CC670 801162B0 00111080 */   sll       $v0, $s1, 2
/* CC674 801162B4 27A40028 */  addiu      $a0, $sp, 0x28
/* CC678 801162B8 02C02821 */  addu       $a1, $s6, $zero
/* CC67C 801162BC 0C006E14 */  jal        sprintf
/* CC680 801162C0 26460001 */   addiu     $a2, $s2, 0x1
/* CC684 801162C4 8E62012C */  lw         $v0, 0x12C($s3)
/* CC688 801162C8 27A50028 */  addiu      $a1, $sp, 0x28
/* CC68C 801162CC 844400D0 */  lh         $a0, 0xD0($v0)
/* CC690 801162D0 24070024 */  addiu      $a3, $zero, 0x24
/* CC694 801162D4 AFB00010 */  sw         $s0, 0x10($sp)
/* CC698 801162D8 E7B40014 */  swc1       $f20, 0x14($sp)
/* CC69C 801162DC E7B40018 */  swc1       $f20, 0x18($sp)
/* CC6A0 801162E0 AFA0001C */  sw         $zero, 0x1C($sp)
/* CC6A4 801162E4 AFA00020 */  sw         $zero, 0x20($sp)
/* CC6A8 801162E8 8E860000 */  lw         $a2, 0x0($s4)
/* CC6AC 801162EC 8C4200D4 */  lw         $v0, 0xD4($v0)
/* CC6B0 801162F0 0040F809 */  jalr       $v0
/* CC6B4 801162F4 02642021 */   addu      $a0, $s3, $a0
/* CC6B8 801162F8 24070033 */  addiu      $a3, $zero, 0x33
/* CC6BC 801162FC 8E820008 */  lw         $v0, 0x8($s4)
/* CC6C0 80116300 8E63012C */  lw         $v1, 0x12C($s3)
/* CC6C4 80116304 8C450140 */  lw         $a1, 0x140($v0)
/* CC6C8 80116308 001110C0 */  sll        $v0, $s1, 3
/* CC6CC 8011630C 00511023 */  subu       $v0, $v0, $s1
/* CC6D0 80116310 000210C0 */  sll        $v0, $v0, 3
/* CC6D4 80116314 00511021 */  addu       $v0, $v0, $s1
/* CC6D8 80116318 00021080 */  sll        $v0, $v0, 2
/* CC6DC 8011631C 00511023 */  subu       $v0, $v0, $s1
/* CC6E0 80116320 00021080 */  sll        $v0, $v0, 2
/* CC6E4 80116324 00511023 */  subu       $v0, $v0, $s1
/* CC6E8 80116328 846400D8 */  lh         $a0, 0xD8($v1)
/* CC6EC 8011632C 00021080 */  sll        $v0, $v0, 2
/* CC6F0 80116330 AFB00010 */  sw         $s0, 0x10($sp)
/* CC6F4 80116334 E7B40014 */  swc1       $f20, 0x14($sp)
/* CC6F8 80116338 E7B40018 */  swc1       $f20, 0x18($sp)
/* CC6FC 8011633C AFA0001C */  sw         $zero, 0x1C($sp)
/* CC700 80116340 AFA00020 */  sw         $zero, 0x20($sp)
/* CC704 80116344 8E860000 */  lw         $a2, 0x0($s4)
/* CC708 80116348 02642021 */  addu       $a0, $s3, $a0
/* CC70C 8011634C 00A22821 */  addu       $a1, $a1, $v0
/* CC710 80116350 8C6200DC */  lw         $v0, 0xDC($v1)
/* CC714 80116354 0040F809 */  jalr       $v0
/* CC718 80116358 24A50DE4 */   addiu     $a1, $a1, 0xDE4
/* CC71C 8011635C 27A40028 */  addiu      $a0, $sp, 0x28
/* CC720 80116360 00111080 */  sll        $v0, $s1, 2
/* CC724 80116364 02821021 */  addu       $v0, $s4, $v0
/* CC728 80116368 8C460010 */  lw         $a2, 0x10($v0)
/* CC72C 8011636C 0C006E14 */  jal        sprintf
/* CC730 80116370 02C02821 */   addu      $a1, $s6, $zero
/* CC734 80116374 8E62012C */  lw         $v0, 0x12C($s3)
/* CC738 80116378 27A50028 */  addiu      $a1, $sp, 0x28
/* CC73C 8011637C 844400D0 */  lh         $a0, 0xD0($v0)
/* CC740 80116380 240700F3 */  addiu      $a3, $zero, 0xF3
/* CC744 80116384 AFB00010 */  sw         $s0, 0x10($sp)
/* CC748 80116388 E7B40014 */  swc1       $f20, 0x14($sp)
/* CC74C 8011638C E7B40018 */  swc1       $f20, 0x18($sp)
/* CC750 80116390 AFA0001C */  sw         $zero, 0x1C($sp)
/* CC754 80116394 AFA00020 */  sw         $zero, 0x20($sp)
/* CC758 80116398 8E860000 */  lw         $a2, 0x0($s4)
/* CC75C 8011639C 8C4200D4 */  lw         $v0, 0xD4($v0)
/* CC760 801163A0 0040F809 */  jalr       $v0
/* CC764 801163A4 02642021 */   addu      $a0, $s3, $a0
/* CC768 801163A8 00111080 */  sll        $v0, $s1, 2
.Lrace_801163AC:
/* CC76C 801163AC 02A21021 */  addu       $v0, $s5, $v0
/* CC770 801163B0 24030001 */  addiu      $v1, $zero, 0x1
/* CC774 801163B4 AC430000 */  sw         $v1, 0x0($v0)
/* CC778 801163B8 26100010 */  addiu      $s0, $s0, 0x10
/* CC77C 801163BC 0804588B */  j          .Lrace_8011622C
/* CC780 801163C0 02439021 */   addu      $s2, $s2, $v1
.Lrace_801163C4:
/* CC784 801163C4 00003821 */  addu       $a3, $zero, $zero
/* CC788 801163C8 00E08821 */  addu       $s1, $a3, $zero
/* CC78C 801163CC 00E09021 */  addu       $s2, $a3, $zero
/* CC790 801163D0 02802021 */  addu       $a0, $s4, $zero
.Lrace_801163D4:
/* CC794 801163D4 8C830028 */  lw         $v1, 0x28($a0)
/* CC798 801163D8 0067102B */  sltu       $v0, $v1, $a3
/* CC79C 801163DC 54400004 */  bnel       $v0, $zero, .Lrace_801163F0
/* CC7A0 801163E0 26520001 */   addiu     $s2, $s2, 0x1
/* CC7A4 801163E4 00603821 */  addu       $a3, $v1, $zero
/* CC7A8 801163E8 02408821 */  addu       $s1, $s2, $zero
/* CC7AC 801163EC 26520001 */  addiu      $s2, $s2, 0x1
.Lrace_801163F0:
/* CC7B0 801163F0 2E420006 */  sltiu      $v0, $s2, 0x6
/* CC7B4 801163F4 1440FFF7 */  bnez       $v0, .Lrace_801163D4
/* CC7B8 801163F8 24840004 */   addiu     $a0, $a0, 0x4
/* CC7BC 801163FC 27A50090 */  addiu      $a1, $sp, 0x90
/* CC7C0 80116400 00009021 */  addu       $s2, $zero, $zero
/* CC7C4 80116404 001120C0 */  sll        $a0, $s1, 3
/* CC7C8 80116408 00912023 */  subu       $a0, $a0, $s1
/* CC7CC 8011640C 000420C0 */  sll        $a0, $a0, 3
/* CC7D0 80116410 00912021 */  addu       $a0, $a0, $s1
/* CC7D4 80116414 00042080 */  sll        $a0, $a0, 2
/* CC7D8 80116418 00912023 */  subu       $a0, $a0, $s1
/* CC7DC 8011641C 00042080 */  sll        $a0, $a0, 2
/* CC7E0 80116420 8E820008 */  lw         $v0, 0x8($s4)
/* CC7E4 80116424 00912023 */  subu       $a0, $a0, $s1
/* CC7E8 80116428 8C420140 */  lw         $v0, 0x140($v0)
/* CC7EC 8011642C 00042080 */  sll        $a0, $a0, 2
/* CC7F0 80116430 0C0436D6 */  jal        func_race_8010DB58
/* CC7F4 80116434 00442021 */   addu      $a0, $v0, $a0
/* CC7F8 80116438 27A30078 */  addiu      $v1, $sp, 0x78
.Lrace_8011643C:
/* CC7FC 8011643C AC600000 */  sw         $zero, 0x0($v1)
/* CC800 80116440 26520001 */  addiu      $s2, $s2, 0x1
/* CC804 80116444 2E420006 */  sltiu      $v0, $s2, 0x6
/* CC808 80116448 1440FFFC */  bnez       $v0, .Lrace_8011643C
/* CC80C 8011644C 24630004 */   addiu     $v1, $v1, 0x4
/* CC810 80116450 00009021 */  addu       $s2, $zero, $zero
/* CC814 80116454 27B60078 */  addiu      $s6, $sp, 0x78
/* CC818 80116458 3C02800D */  lui        $v0, %hi(D_race_800CDF30)
/* CC81C 8011645C 2457DF30 */  addiu      $s7, $v0, %lo(D_race_800CDF30)
/* CC820 80116460 3C01800D */  lui        $at, %hi(D_race_800CDF3C)
/* CC824 80116464 C434DF3C */  lwc1       $f20, %lo(D_race_800CDF3C)($at)
/* CC828 80116468 27BE0090 */  addiu      $fp, $sp, 0x90
/* CC82C 8011646C 24150042 */  addiu      $s5, $zero, 0x42
.Lrace_80116470:
/* CC830 80116470 2E420006 */  sltiu      $v0, $s2, 0x6
/* CC834 80116474 10400070 */  beqz       $v0, .Lrace_80116638
/* CC838 80116478 00003821 */   addu      $a3, $zero, $zero
/* CC83C 8011647C 00E02021 */  addu       $a0, $a3, $zero
/* CC840 80116480 02803021 */  addu       $a2, $s4, $zero
/* CC844 80116484 02C02821 */  addu       $a1, $s6, $zero
.Lrace_80116488:
/* CC848 80116488 8CA20000 */  lw         $v0, 0x0($a1)
/* CC84C 8011648C 54400007 */  bnel       $v0, $zero, .Lrace_801164AC
/* CC850 80116490 24C60004 */   addiu     $a2, $a2, 0x4
/* CC854 80116494 8CC30028 */  lw         $v1, 0x28($a2)
/* CC858 80116498 0067102B */  sltu       $v0, $v1, $a3
/* CC85C 8011649C 14400003 */  bnez       $v0, .Lrace_801164AC
/* CC860 801164A0 24C60004 */   addiu     $a2, $a2, 0x4
/* CC864 801164A4 00603821 */  addu       $a3, $v1, $zero
/* CC868 801164A8 00808821 */  addu       $s1, $a0, $zero
.Lrace_801164AC:
/* CC86C 801164AC 24840001 */  addiu      $a0, $a0, 0x1
/* CC870 801164B0 2C820006 */  sltiu      $v0, $a0, 0x6
/* CC874 801164B4 1440FFF4 */  bnez       $v0, .Lrace_80116488
/* CC878 801164B8 24A50004 */   addiu     $a1, $a1, 0x4
/* CC87C 801164BC 8E820040 */  lw         $v0, 0x40($s4)
/* CC880 801164C0 2C420096 */  sltiu      $v0, $v0, 0x96
/* CC884 801164C4 1040000A */  beqz       $v0, .Lrace_801164F0
/* CC888 801164C8 00001821 */   addu      $v1, $zero, $zero
/* CC88C 801164CC 00111040 */  sll        $v0, $s1, 1
/* CC890 801164D0 00511021 */  addu       $v0, $v0, $s1
/* CC894 801164D4 000210C0 */  sll        $v0, $v0, 3
/* CC898 801164D8 00511023 */  subu       $v0, $v0, $s1
/* CC89C 801164DC 8E830004 */  lw         $v1, 0x4($s4)
/* CC8A0 801164E0 00021080 */  sll        $v0, $v0, 2
/* CC8A4 801164E4 00621821 */  addu       $v1, $v1, $v0
/* CC8A8 801164E8 8C620118 */  lw         $v0, 0x118($v1)
/* CC8AC 801164EC 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_801164F0:
/* CC8B0 801164F0 1460004B */  bnez       $v1, .Lrace_80116620
/* CC8B4 801164F4 00111080 */   sll       $v0, $s1, 2
/* CC8B8 801164F8 27A40028 */  addiu      $a0, $sp, 0x28
/* CC8BC 801164FC 02E02821 */  addu       $a1, $s7, $zero
/* CC8C0 80116500 0C006E14 */  jal        sprintf
/* CC8C4 80116504 26460001 */   addiu     $a2, $s2, 0x1
/* CC8C8 80116508 8E62012C */  lw         $v0, 0x12C($s3)
/* CC8CC 8011650C 27A50028 */  addiu      $a1, $sp, 0x28
/* CC8D0 80116510 844400D0 */  lh         $a0, 0xD0($v0)
/* CC8D4 80116514 24070024 */  addiu      $a3, $zero, 0x24
/* CC8D8 80116518 AFB50010 */  sw         $s5, 0x10($sp)
/* CC8DC 8011651C E7B40014 */  swc1       $f20, 0x14($sp)
/* CC8E0 80116520 E7B40018 */  swc1       $f20, 0x18($sp)
/* CC8E4 80116524 AFA0001C */  sw         $zero, 0x1C($sp)
/* CC8E8 80116528 AFA00020 */  sw         $zero, 0x20($sp)
/* CC8EC 8011652C 8E860000 */  lw         $a2, 0x0($s4)
/* CC8F0 80116530 8C4200D4 */  lw         $v0, 0xD4($v0)
/* CC8F4 80116534 0040F809 */  jalr       $v0
/* CC8F8 80116538 02642021 */   addu      $a0, $s3, $a0
/* CC8FC 8011653C 24070033 */  addiu      $a3, $zero, 0x33
/* CC900 80116540 001180C0 */  sll        $s0, $s1, 3
/* CC904 80116544 02118023 */  subu       $s0, $s0, $s1
/* CC908 80116548 001080C0 */  sll        $s0, $s0, 3
/* CC90C 8011654C 02118021 */  addu       $s0, $s0, $s1
/* CC910 80116550 00108080 */  sll        $s0, $s0, 2
/* CC914 80116554 02118023 */  subu       $s0, $s0, $s1
/* CC918 80116558 00108080 */  sll        $s0, $s0, 2
/* CC91C 8011655C 02118023 */  subu       $s0, $s0, $s1
/* CC920 80116560 8E820008 */  lw         $v0, 0x8($s4)
/* CC924 80116564 8E63012C */  lw         $v1, 0x12C($s3)
/* CC928 80116568 8C450140 */  lw         $a1, 0x140($v0)
/* CC92C 8011656C 846400D8 */  lh         $a0, 0xD8($v1)
/* CC930 80116570 00108080 */  sll        $s0, $s0, 2
/* CC934 80116574 AFB50010 */  sw         $s5, 0x10($sp)
/* CC938 80116578 E7B40014 */  swc1       $f20, 0x14($sp)
/* CC93C 8011657C E7B40018 */  swc1       $f20, 0x18($sp)
/* CC940 80116580 AFA0001C */  sw         $zero, 0x1C($sp)
/* CC944 80116584 AFA00020 */  sw         $zero, 0x20($sp)
/* CC948 80116588 8E860000 */  lw         $a2, 0x0($s4)
/* CC94C 8011658C 8C6200DC */  lw         $v0, 0xDC($v1)
/* CC950 80116590 02642021 */  addu       $a0, $s3, $a0
/* CC954 80116594 00B02821 */  addu       $a1, $a1, $s0
/* CC958 80116598 0040F809 */  jalr       $v0
/* CC95C 8011659C 24A50DE4 */   addiu     $a1, $a1, 0xDE4
/* CC960 801165A0 27A40028 */  addiu      $a0, $sp, 0x28
/* CC964 801165A4 00111080 */  sll        $v0, $s1, 2
/* CC968 801165A8 02821021 */  addu       $v0, $s4, $v0
/* CC96C 801165AC 8C460028 */  lw         $a2, 0x28($v0)
/* CC970 801165B0 0C006E14 */  jal        sprintf
/* CC974 801165B4 02E02821 */   addu      $a1, $s7, $zero
/* CC978 801165B8 8E62012C */  lw         $v0, 0x12C($s3)
/* CC97C 801165BC 27A50028 */  addiu      $a1, $sp, 0x28
/* CC980 801165C0 844400D0 */  lh         $a0, 0xD0($v0)
/* CC984 801165C4 240700F3 */  addiu      $a3, $zero, 0xF3
/* CC988 801165C8 AFB50010 */  sw         $s5, 0x10($sp)
/* CC98C 801165CC E7B40014 */  swc1       $f20, 0x14($sp)
/* CC990 801165D0 E7B40018 */  swc1       $f20, 0x18($sp)
/* CC994 801165D4 AFA0001C */  sw         $zero, 0x1C($sp)
/* CC998 801165D8 AFA00020 */  sw         $zero, 0x20($sp)
/* CC99C 801165DC 8E860000 */  lw         $a2, 0x0($s4)
/* CC9A0 801165E0 8C4200D4 */  lw         $v0, 0xD4($v0)
/* CC9A4 801165E4 0040F809 */  jalr       $v0
/* CC9A8 801165E8 02642021 */   addu      $a0, $s3, $a0
/* CC9AC 801165EC 8E820008 */  lw         $v0, 0x8($s4)
/* CC9B0 801165F0 00002021 */  addu       $a0, $zero, $zero
/* CC9B4 801165F4 8C420140 */  lw         $v0, 0x140($v0)
/* CC9B8 801165F8 03C01821 */  addu       $v1, $fp, $zero
/* CC9BC 801165FC 00502821 */  addu       $a1, $v0, $s0
.Lrace_80116600:
/* CC9C0 80116600 8C620000 */  lw         $v0, 0x0($v1)
/* CC9C4 80116604 10450005 */  beq        $v0, $a1, .Lrace_8011661C
/* CC9C8 80116608 2C820006 */   sltiu     $v0, $a0, 0x6
/* CC9CC 8011660C 10400003 */  beqz       $v0, .Lrace_8011661C
/* CC9D0 80116610 2463000C */   addiu     $v1, $v1, 0xC
/* CC9D4 80116614 08045980 */  j          .Lrace_80116600
/* CC9D8 80116618 24840001 */   addiu     $a0, $a0, 0x1
.Lrace_8011661C:
/* CC9DC 8011661C 00111080 */  sll        $v0, $s1, 2
.Lrace_80116620:
/* CC9E0 80116620 02C21021 */  addu       $v0, $s6, $v0
/* CC9E4 80116624 24030001 */  addiu      $v1, $zero, 0x1
/* CC9E8 80116628 AC430000 */  sw         $v1, 0x0($v0)
/* CC9EC 8011662C 26B50010 */  addiu      $s5, $s5, 0x10
/* CC9F0 80116630 0804591C */  j          .Lrace_80116470
/* CC9F4 80116634 02439021 */   addu      $s2, $s2, $v1
.Lrace_80116638:
/* CC9F8 80116638 27A40068 */  addiu      $a0, $sp, 0x68
.Lrace_8011663C:
/* CC9FC 8011663C 0C0016E2 */  jal        func_80005B88
/* CCA00 80116640 24050002 */   addiu     $a1, $zero, 0x2
/* CCA04 80116644 8FBF0104 */  lw         $ra, 0x104($sp)
/* CCA08 80116648 8FBE0100 */  lw         $fp, 0x100($sp)
/* CCA0C 8011664C 8FB700FC */  lw         $s7, 0xFC($sp)
/* CCA10 80116650 8FB600F8 */  lw         $s6, 0xF8($sp)
/* CCA14 80116654 8FB500F4 */  lw         $s5, 0xF4($sp)
/* CCA18 80116658 8FB400F0 */  lw         $s4, 0xF0($sp)
/* CCA1C 8011665C 8FB300EC */  lw         $s3, 0xEC($sp)
/* CCA20 80116660 8FB200E8 */  lw         $s2, 0xE8($sp)
/* CCA24 80116664 8FB100E4 */  lw         $s1, 0xE4($sp)
/* CCA28 80116668 8FB000E0 */  lw         $s0, 0xE0($sp)
/* CCA2C 8011666C D7B40108 */  ldc1       $f20, 0x108($sp)
/* CCA30 80116670 03E00008 */  jr         $ra
/* CCA34 80116674 27BD0110 */   addiu     $sp, $sp, 0x110

glabel func_race_80116678
/* CCA38 80116678 00001821 */  addu       $v1, $zero, $zero
.Lrace_8011667C:
/* CCA3C 8011667C AC800010 */  sw         $zero, 0x10($a0)
/* CCA40 80116680 AC800028 */  sw         $zero, 0x28($a0)
/* CCA44 80116684 24630001 */  addiu      $v1, $v1, 0x1
/* CCA48 80116688 2C620006 */  sltiu      $v0, $v1, 0x6
/* CCA4C 8011668C 1440FFFB */  bnez       $v0, .Lrace_8011667C
/* CCA50 80116690 24840004 */   addiu     $a0, $a0, 0x4
/* CCA54 80116694 03E00008 */  jr         $ra
/* CCA58 80116698 00000000 */   nop
