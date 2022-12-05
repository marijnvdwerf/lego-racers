.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801026A0
/* B8A60 801026A0 00002821 */  addu       $a1, $zero, $zero
/* B8A64 801026A4 00801821 */  addu       $v1, $a0, $zero
/* B8A68 801026A8 3C02800D */  lui        $v0, %hi(D_race_800CD640)
/* B8A6C 801026AC 2442D640 */  addiu      $v0, $v0, %lo(D_race_800CD640)
/* B8A70 801026B0 AC820000 */  sw         $v0, 0x0($a0)
/* B8A74 801026B4 AC800004 */  sw         $zero, 0x4($a0)
/* B8A78 801026B8 AC800050 */  sw         $zero, 0x50($a0)
.Lrace_801026BC:
/* B8A7C 801026BC AC600008 */  sw         $zero, 0x8($v1)
/* B8A80 801026C0 AC60002C */  sw         $zero, 0x2C($v1)
/* B8A84 801026C4 24A50001 */  addiu      $a1, $a1, 0x1
/* B8A88 801026C8 2CA20009 */  sltiu      $v0, $a1, 0x9
/* B8A8C 801026CC 1440FFFB */  bnez       $v0, .Lrace_801026BC
/* B8A90 801026D0 24630004 */   addiu     $v1, $v1, 0x4
/* B8A94 801026D4 24020001 */  addiu      $v0, $zero, 0x1
/* B8A98 801026D8 AC820054 */  sw         $v0, 0x54($a0)
/* B8A9C 801026DC 03E00008 */  jr         $ra
/* B8AA0 801026E0 00801021 */   addu      $v0, $a0, $zero

glabel func_race_801026E4
/* B8AA4 801026E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B8AA8 801026E8 AFB10014 */  sw         $s1, 0x14($sp)
/* B8AAC 801026EC 00808821 */  addu       $s1, $a0, $zero
/* B8AB0 801026F0 AFB00010 */  sw         $s0, 0x10($sp)
/* B8AB4 801026F4 00A08021 */  addu       $s0, $a1, $zero
/* B8AB8 801026F8 3C02800D */  lui        $v0, %hi(D_race_800CD640)
/* B8ABC 801026FC 2442D640 */  addiu      $v0, $v0, %lo(D_race_800CD640)
/* B8AC0 80102700 AFBF0018 */  sw         $ra, 0x18($sp)
/* B8AC4 80102704 0C0409CD */  jal        func_race_80102734
/* B8AC8 80102708 AE220000 */   sw        $v0, 0x0($s1)
/* B8ACC 8010270C 32100001 */  andi       $s0, $s0, 0x1
/* B8AD0 80102710 12000003 */  beqz       $s0, .Lrace_80102720
/* B8AD4 80102714 00000000 */   nop
/* B8AD8 80102718 0C01FB5C */  jal        func_8007ED70
/* B8ADC 8010271C 02202021 */   addu      $a0, $s1, $zero
.Lrace_80102720:
/* B8AE0 80102720 8FBF0018 */  lw         $ra, 0x18($sp)
/* B8AE4 80102724 8FB10014 */  lw         $s1, 0x14($sp)
/* B8AE8 80102728 8FB00010 */  lw         $s0, 0x10($sp)
/* B8AEC 8010272C 03E00008 */  jr         $ra
/* B8AF0 80102730 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80102734
/* B8AF4 80102734 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8AF8 80102738 AFB00010 */  sw         $s0, 0x10($sp)
/* B8AFC 8010273C AFBF0014 */  sw         $ra, 0x14($sp)
/* B8B00 80102740 0C040A25 */  jal        func_race_80102894
/* B8B04 80102744 00808021 */   addu      $s0, $a0, $zero
/* B8B08 80102748 00002021 */  addu       $a0, $zero, $zero
/* B8B0C 8010274C 02001821 */  addu       $v1, $s0, $zero
.Lrace_80102750:
/* B8B10 80102750 AC600008 */  sw         $zero, 0x8($v1)
/* B8B14 80102754 AC60002C */  sw         $zero, 0x2C($v1)
/* B8B18 80102758 24840001 */  addiu      $a0, $a0, 0x1
/* B8B1C 8010275C 2C820009 */  sltiu      $v0, $a0, 0x9
/* B8B20 80102760 1440FFFB */  bnez       $v0, .Lrace_80102750
/* B8B24 80102764 24630004 */   addiu     $v1, $v1, 0x4
/* B8B28 80102768 24020001 */  addiu      $v0, $zero, 0x1
/* B8B2C 8010276C AE000004 */  sw         $zero, 0x4($s0)
/* B8B30 80102770 AE000050 */  sw         $zero, 0x50($s0)
/* B8B34 80102774 AE020054 */  sw         $v0, 0x54($s0)
/* B8B38 80102778 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8B3C 8010277C 8FB00010 */  lw         $s0, 0x10($sp)
/* B8B40 80102780 03E00008 */  jr         $ra
/* B8B44 80102784 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80102788
/* B8B48 80102788 24020001 */  addiu      $v0, $zero, 0x1
/* B8B4C 8010278C AC850004 */  sw         $a1, 0x4($a0)
/* B8B50 80102790 AC860050 */  sw         $a2, 0x50($a0)
/* B8B54 80102794 03E00008 */  jr         $ra
/* B8B58 80102798 AC820054 */   sw        $v0, 0x54($a0)

glabel func_race_8010279C
/* B8B5C 8010279C 03E00008 */  jr         $ra
/* B8B60 801027A0 00000000 */   nop

glabel func_race_801027A4
/* B8B64 801027A4 00073880 */  sll        $a3, $a3, 2
/* B8B68 801027A8 00872021 */  addu       $a0, $a0, $a3
/* B8B6C 801027AC AC85002C */  sw         $a1, 0x2C($a0)
/* B8B70 801027B0 03E00008 */  jr         $ra
/* B8B74 801027B4 AC860008 */   sw        $a2, 0x8($a0)

glabel func_race_801027B8
/* B8B78 801027B8 00063080 */  sll        $a2, $a2, 2
/* B8B7C 801027BC 00862021 */  addu       $a0, $a0, $a2
/* B8B80 801027C0 8C82002C */  lw         $v0, 0x2C($a0)
/* B8B84 801027C4 ACA20000 */  sw         $v0, 0x0($a1)
/* B8B88 801027C8 8C820008 */  lw         $v0, 0x8($a0)
/* B8B8C 801027CC 03E00008 */  jr         $ra
/* B8B90 801027D0 00000000 */   nop

glabel func_race_801027D4
/* B8B94 801027D4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B8B98 801027D8 AFB20018 */  sw         $s2, 0x18($sp)
/* B8B9C 801027DC 00809021 */  addu       $s2, $a0, $zero
/* B8BA0 801027E0 AFB10014 */  sw         $s1, 0x14($sp)
/* B8BA4 801027E4 00008821 */  addu       $s1, $zero, $zero
/* B8BA8 801027E8 AFB40020 */  sw         $s4, 0x20($sp)
/* B8BAC 801027EC 3C147000 */  lui        $s4, (0x70000000 >> 16)
/* B8BB0 801027F0 AFB3001C */  sw         $s3, 0x1C($sp)
/* B8BB4 801027F4 3C131000 */  lui        $s3, (0x10000000 >> 16)
/* B8BB8 801027F8 AFB00010 */  sw         $s0, 0x10($sp)
/* B8BBC 801027FC 02408021 */  addu       $s0, $s2, $zero
/* B8BC0 80102800 AFBF0024 */  sw         $ra, 0x24($sp)
.Lrace_80102804:
/* B8BC4 80102804 2E220009 */  sltiu      $v0, $s1, 0x9
/* B8BC8 80102808 1040001A */  beqz       $v0, .Lrace_80102874
/* B8BCC 8010280C 00000000 */   nop
/* B8BD0 80102810 8E03002C */  lw         $v1, 0x2C($s0)
/* B8BD4 80102814 50600015 */  beql       $v1, $zero, .Lrace_8010286C
/* B8BD8 80102818 26100004 */   addiu     $s0, $s0, 0x4
/* B8BDC 8010281C 8E020008 */  lw         $v0, 0x8($s0)
/* B8BE0 80102820 00541024 */  and        $v0, $v0, $s4
/* B8BE4 80102824 50530011 */  beql       $v0, $s3, .Lrace_8010286C
/* B8BE8 80102828 26100004 */   addiu     $s0, $s0, 0x4
/* B8BEC 8010282C AC72008C */  sw         $s2, 0x8C($v1)
/* B8BF0 80102830 8E03002C */  lw         $v1, 0x2C($s0)
/* B8BF4 80102834 8C620098 */  lw         $v0, 0x98($v1)
/* B8BF8 80102838 84440038 */  lh         $a0, 0x38($v0)
/* B8BFC 8010283C 8C42003C */  lw         $v0, 0x3C($v0)
/* B8C00 80102840 0040F809 */  jalr       $v0
/* B8C04 80102844 00642021 */   addu      $a0, $v1, $a0
/* B8C08 80102848 54400008 */  bnel       $v0, $zero, .Lrace_8010286C
/* B8C0C 8010284C 26100004 */   addiu     $s0, $s0, 0x4
/* B8C10 80102850 8E03002C */  lw         $v1, 0x2C($s0)
/* B8C14 80102854 8C620098 */  lw         $v0, 0x98($v1)
/* B8C18 80102858 844400A8 */  lh         $a0, 0xA8($v0)
/* B8C1C 8010285C 8C4200AC */  lw         $v0, 0xAC($v0)
/* B8C20 80102860 0040F809 */  jalr       $v0
/* B8C24 80102864 00642021 */   addu      $a0, $v1, $a0
/* B8C28 80102868 26100004 */  addiu      $s0, $s0, 0x4
.Lrace_8010286C:
/* B8C2C 8010286C 08040A01 */  j          .Lrace_80102804
/* B8C30 80102870 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_80102874:
/* B8C34 80102874 8FBF0024 */  lw         $ra, 0x24($sp)
/* B8C38 80102878 8FB40020 */  lw         $s4, 0x20($sp)
/* B8C3C 8010287C 8FB3001C */  lw         $s3, 0x1C($sp)
/* B8C40 80102880 8FB20018 */  lw         $s2, 0x18($sp)
/* B8C44 80102884 8FB10014 */  lw         $s1, 0x14($sp)
/* B8C48 80102888 8FB00010 */  lw         $s0, 0x10($sp)
/* B8C4C 8010288C 03E00008 */  jr         $ra
/* B8C50 80102890 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80102894
/* B8C54 80102894 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B8C58 80102898 AFB20018 */  sw         $s2, 0x18($sp)
/* B8C5C 8010289C 00809021 */  addu       $s2, $a0, $zero
/* B8C60 801028A0 AFB10014 */  sw         $s1, 0x14($sp)
/* B8C64 801028A4 00008821 */  addu       $s1, $zero, $zero
/* B8C68 801028A8 AFB00010 */  sw         $s0, 0x10($sp)
/* B8C6C 801028AC 02408021 */  addu       $s0, $s2, $zero
/* B8C70 801028B0 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_801028B4:
/* B8C74 801028B4 2E220009 */  sltiu      $v0, $s1, 0x9
/* B8C78 801028B8 10400011 */  beqz       $v0, .Lrace_80102900
/* B8C7C 801028BC 00000000 */   nop
/* B8C80 801028C0 8E03002C */  lw         $v1, 0x2C($s0)
/* B8C84 801028C4 5060000C */  beql       $v1, $zero, .Lrace_801028F8
/* B8C88 801028C8 26100004 */   addiu     $s0, $s0, 0x4
/* B8C8C 801028CC 8C62008C */  lw         $v0, 0x8C($v1)
/* B8C90 801028D0 54520009 */  bnel       $v0, $s2, .Lrace_801028F8
/* B8C94 801028D4 26100004 */   addiu     $s0, $s0, 0x4
/* B8C98 801028D8 AC60008C */  sw         $zero, 0x8C($v1)
/* B8C9C 801028DC 8E03002C */  lw         $v1, 0x2C($s0)
/* B8CA0 801028E0 8C620098 */  lw         $v0, 0x98($v1)
/* B8CA4 801028E4 844400B0 */  lh         $a0, 0xB0($v0)
/* B8CA8 801028E8 8C4200B4 */  lw         $v0, 0xB4($v0)
/* B8CAC 801028EC 0040F809 */  jalr       $v0
/* B8CB0 801028F0 00642021 */   addu      $a0, $v1, $a0
/* B8CB4 801028F4 26100004 */  addiu      $s0, $s0, 0x4
.Lrace_801028F8:
/* B8CB8 801028F8 08040A2D */  j          .Lrace_801028B4
/* B8CBC 801028FC 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_80102900:
/* B8CC0 80102900 8FBF001C */  lw         $ra, 0x1C($sp)
/* B8CC4 80102904 8FB20018 */  lw         $s2, 0x18($sp)
/* B8CC8 80102908 8FB10014 */  lw         $s1, 0x14($sp)
/* B8CCC 8010290C 8FB00010 */  lw         $s0, 0x10($sp)
/* B8CD0 80102910 03E00008 */  jr         $ra
/* B8CD4 80102914 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80102918
/* B8CD8 80102918 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8CDC 8010291C AFBF0010 */  sw         $ra, 0x10($sp)
/* B8CE0 80102920 8C820054 */  lw         $v0, 0x54($a0)
/* B8CE4 80102924 10400041 */  beqz       $v0, .Lrace_80102A2C
/* B8CE8 80102928 3C02800D */   lui       $v0, %hi(jtbl_race_800CD5F0)
/* B8CEC 8010292C 00004021 */  addu       $t0, $zero, $zero
/* B8CF0 80102930 2449D5F0 */  addiu      $t1, $v0, %lo(jtbl_race_800CD5F0)
/* B8CF4 80102934 00801821 */  addu       $v1, $a0, $zero
.Lrace_80102938:
/* B8CF8 80102938 8C620008 */  lw         $v0, 0x8($v1)
/* B8CFC 8010293C 54C20037 */  bnel       $a2, $v0, .Lrace_80102A1C
/* B8D00 80102940 25290004 */   addiu     $t1, $t1, 0x4
/* B8D04 80102944 8C62002C */  lw         $v0, 0x2C($v1)
/* B8D08 80102948 54A20034 */  bnel       $a1, $v0, .Lrace_80102A1C
/* B8D0C 8010294C 25290004 */   addiu     $t1, $t1, 0x4
/* B8D10 80102950 2D020009 */  sltiu      $v0, $t0, 0x9
/* B8D14 80102954 50400031 */  beql       $v0, $zero, .Lrace_80102A1C
/* B8D18 80102958 25290004 */   addiu     $t1, $t1, 0x4
/* B8D1C 8010295C 8D220000 */  lw         $v0, 0x0($t1)
/* B8D20 80102960 00400008 */  jr         $v0
/* B8D24 80102964 00000000 */   nop
glabel Lrace_80102968
/* B8D28 80102968 8C840004 */  lw         $a0, 0x4($a0)
/* B8D2C 8010296C 0C0408B0 */  jal        func_race_801022C0
/* B8D30 80102970 24050001 */   addiu     $a1, $zero, 0x1
/* B8D34 80102974 08040A93 */  j          .Lrace_80102A4C
/* B8D38 80102978 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_8010297C
/* B8D3C 8010297C 8C840004 */  lw         $a0, 0x4($a0)
/* B8D40 80102980 0C0408BA */  jal        func_race_801022E8
/* B8D44 80102984 24050001 */   addiu     $a1, $zero, 0x1
/* B8D48 80102988 08040A93 */  j          .Lrace_80102A4C
/* B8D4C 8010298C 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_80102990
/* B8D50 80102990 8C840004 */  lw         $a0, 0x4($a0)
/* B8D54 80102994 0C0408C4 */  jal        func_race_80102310
/* B8D58 80102998 24050001 */   addiu     $a1, $zero, 0x1
/* B8D5C 8010299C 08040A93 */  j          .Lrace_80102A4C
/* B8D60 801029A0 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_801029A4
/* B8D64 801029A4 8C840004 */  lw         $a0, 0x4($a0)
/* B8D68 801029A8 0C0408D5 */  jal        func_race_80102354
/* B8D6C 801029AC 24050001 */   addiu     $a1, $zero, 0x1
/* B8D70 801029B0 08040A93 */  j          .Lrace_80102A4C
/* B8D74 801029B4 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_801029B8
/* B8D78 801029B8 8C840004 */  lw         $a0, 0x4($a0)
/* B8D7C 801029BC 0C0408F0 */  jal        func_race_801023C0
/* B8D80 801029C0 24050001 */   addiu     $a1, $zero, 0x1
/* B8D84 801029C4 08040A93 */  j          .Lrace_80102A4C
/* B8D88 801029C8 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_801029CC
/* B8D8C 801029CC 8C840004 */  lw         $a0, 0x4($a0)
/* B8D90 801029D0 0C040906 */  jal        func_race_80102418
/* B8D94 801029D4 24050001 */   addiu     $a1, $zero, 0x1
/* B8D98 801029D8 08040A93 */  j          .Lrace_80102A4C
/* B8D9C 801029DC 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_801029E0
/* B8DA0 801029E0 8C840004 */  lw         $a0, 0x4($a0)
/* B8DA4 801029E4 0C040919 */  jal        func_race_80102464
/* B8DA8 801029E8 24050001 */   addiu     $a1, $zero, 0x1
/* B8DAC 801029EC 08040A93 */  j          .Lrace_80102A4C
/* B8DB0 801029F0 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_801029F4
/* B8DB4 801029F4 8C840004 */  lw         $a0, 0x4($a0)
/* B8DB8 801029F8 0C04092C */  jal        func_race_801024B0
/* B8DBC 801029FC 24050001 */   addiu     $a1, $zero, 0x1
/* B8DC0 80102A00 08040A93 */  j          .Lrace_80102A4C
/* B8DC4 80102A04 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_80102A08
/* B8DC8 80102A08 8C840004 */  lw         $a0, 0x4($a0)
/* B8DCC 80102A0C 0C040936 */  jal        func_race_801024D8
/* B8DD0 80102A10 24050001 */   addiu     $a1, $zero, 0x1
/* B8DD4 80102A14 08040A93 */  j          .Lrace_80102A4C
/* B8DD8 80102A18 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_80102A1C:
/* B8DDC 80102A1C 25080001 */  addiu      $t0, $t0, 0x1
/* B8DE0 80102A20 2D020009 */  sltiu      $v0, $t0, 0x9
/* B8DE4 80102A24 1440FFC4 */  bnez       $v0, .Lrace_80102938
/* B8DE8 80102A28 24630004 */   addiu     $v1, $v1, 0x4
.Lrace_80102A2C:
/* B8DEC 80102A2C 8C830050 */  lw         $v1, 0x50($a0)
/* B8DF0 80102A30 10600006 */  beqz       $v1, .Lrace_80102A4C
/* B8DF4 80102A34 00001021 */   addu      $v0, $zero, $zero
/* B8DF8 80102A38 8C620000 */  lw         $v0, 0x0($v1)
/* B8DFC 80102A3C 84440008 */  lh         $a0, 0x8($v0)
/* B8E00 80102A40 8C42000C */  lw         $v0, 0xC($v0)
/* B8E04 80102A44 0040F809 */  jalr       $v0
/* B8E08 80102A48 00642021 */   addu      $a0, $v1, $a0
.Lrace_80102A4C:
/* B8E0C 80102A4C 8FBF0010 */  lw         $ra, 0x10($sp)
/* B8E10 80102A50 03E00008 */  jr         $ra
/* B8E14 80102A54 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80102A58
/* B8E18 80102A58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8E1C 80102A5C AFBF0010 */  sw         $ra, 0x10($sp)
/* B8E20 80102A60 8C820054 */  lw         $v0, 0x54($a0)
/* B8E24 80102A64 10400041 */  beqz       $v0, .Lrace_80102B6C
/* B8E28 80102A68 3C02800D */   lui       $v0, %hi(jtbl_race_800CD618)
/* B8E2C 80102A6C 00004021 */  addu       $t0, $zero, $zero
/* B8E30 80102A70 2449D618 */  addiu      $t1, $v0, %lo(jtbl_race_800CD618)
/* B8E34 80102A74 00801821 */  addu       $v1, $a0, $zero
.Lrace_80102A78:
/* B8E38 80102A78 8C620008 */  lw         $v0, 0x8($v1)
/* B8E3C 80102A7C 54C20037 */  bnel       $a2, $v0, .Lrace_80102B5C
/* B8E40 80102A80 25290004 */   addiu     $t1, $t1, 0x4
/* B8E44 80102A84 8C62002C */  lw         $v0, 0x2C($v1)
/* B8E48 80102A88 54A20034 */  bnel       $a1, $v0, .Lrace_80102B5C
/* B8E4C 80102A8C 25290004 */   addiu     $t1, $t1, 0x4
/* B8E50 80102A90 2D020009 */  sltiu      $v0, $t0, 0x9
/* B8E54 80102A94 50400031 */  beql       $v0, $zero, .Lrace_80102B5C
/* B8E58 80102A98 25290004 */   addiu     $t1, $t1, 0x4
/* B8E5C 80102A9C 8D220000 */  lw         $v0, 0x0($t1)
/* B8E60 80102AA0 00400008 */  jr         $v0
/* B8E64 80102AA4 00000000 */   nop
glabel Lrace_80102AA8
/* B8E68 80102AA8 8C840004 */  lw         $a0, 0x4($a0)
/* B8E6C 80102AAC 0C0408B0 */  jal        func_race_801022C0
/* B8E70 80102AB0 00002821 */   addu      $a1, $zero, $zero
/* B8E74 80102AB4 08040AE3 */  j          .Lrace_80102B8C
/* B8E78 80102AB8 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_80102ABC
/* B8E7C 80102ABC 8C840004 */  lw         $a0, 0x4($a0)
/* B8E80 80102AC0 0C0408BA */  jal        func_race_801022E8
/* B8E84 80102AC4 00002821 */   addu      $a1, $zero, $zero
/* B8E88 80102AC8 08040AE3 */  j          .Lrace_80102B8C
/* B8E8C 80102ACC 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_80102AD0
/* B8E90 80102AD0 8C840004 */  lw         $a0, 0x4($a0)
/* B8E94 80102AD4 0C0408C4 */  jal        func_race_80102310
/* B8E98 80102AD8 00002821 */   addu      $a1, $zero, $zero
/* B8E9C 80102ADC 08040AE3 */  j          .Lrace_80102B8C
/* B8EA0 80102AE0 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_80102AE4
/* B8EA4 80102AE4 8C840004 */  lw         $a0, 0x4($a0)
/* B8EA8 80102AE8 0C0408D5 */  jal        func_race_80102354
/* B8EAC 80102AEC 00002821 */   addu      $a1, $zero, $zero
/* B8EB0 80102AF0 08040AE3 */  j          .Lrace_80102B8C
/* B8EB4 80102AF4 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_80102AF8
/* B8EB8 80102AF8 8C840004 */  lw         $a0, 0x4($a0)
/* B8EBC 80102AFC 0C0408F0 */  jal        func_race_801023C0
/* B8EC0 80102B00 00002821 */   addu      $a1, $zero, $zero
/* B8EC4 80102B04 08040AE3 */  j          .Lrace_80102B8C
/* B8EC8 80102B08 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_80102B0C
/* B8ECC 80102B0C 8C840004 */  lw         $a0, 0x4($a0)
/* B8ED0 80102B10 0C040906 */  jal        func_race_80102418
/* B8ED4 80102B14 00002821 */   addu      $a1, $zero, $zero
/* B8ED8 80102B18 08040AE3 */  j          .Lrace_80102B8C
/* B8EDC 80102B1C 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_80102B20
/* B8EE0 80102B20 8C840004 */  lw         $a0, 0x4($a0)
/* B8EE4 80102B24 0C040919 */  jal        func_race_80102464
/* B8EE8 80102B28 00002821 */   addu      $a1, $zero, $zero
/* B8EEC 80102B2C 08040AE3 */  j          .Lrace_80102B8C
/* B8EF0 80102B30 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_80102B34
/* B8EF4 80102B34 8C840004 */  lw         $a0, 0x4($a0)
/* B8EF8 80102B38 0C04092C */  jal        func_race_801024B0
/* B8EFC 80102B3C 00002821 */   addu      $a1, $zero, $zero
/* B8F00 80102B40 08040AE3 */  j          .Lrace_80102B8C
/* B8F04 80102B44 24020001 */   addiu     $v0, $zero, 0x1
glabel Lrace_80102B48
/* B8F08 80102B48 8C840004 */  lw         $a0, 0x4($a0)
/* B8F0C 80102B4C 0C040936 */  jal        func_race_801024D8
/* B8F10 80102B50 00002821 */   addu      $a1, $zero, $zero
/* B8F14 80102B54 08040AE3 */  j          .Lrace_80102B8C
/* B8F18 80102B58 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_80102B5C:
/* B8F1C 80102B5C 25080001 */  addiu      $t0, $t0, 0x1
/* B8F20 80102B60 2D020009 */  sltiu      $v0, $t0, 0x9
/* B8F24 80102B64 1440FFC4 */  bnez       $v0, .Lrace_80102A78
/* B8F28 80102B68 24630004 */   addiu     $v1, $v1, 0x4
.Lrace_80102B6C:
/* B8F2C 80102B6C 8C830050 */  lw         $v1, 0x50($a0)
/* B8F30 80102B70 10600006 */  beqz       $v1, .Lrace_80102B8C
/* B8F34 80102B74 00001021 */   addu      $v0, $zero, $zero
/* B8F38 80102B78 8C620000 */  lw         $v0, 0x0($v1)
/* B8F3C 80102B7C 84440010 */  lh         $a0, 0x10($v0)
/* B8F40 80102B80 8C420014 */  lw         $v0, 0x14($v0)
/* B8F44 80102B84 0040F809 */  jalr       $v0
/* B8F48 80102B88 00642021 */   addu      $a0, $v1, $a0
.Lrace_80102B8C:
/* B8F4C 80102B8C 8FBF0010 */  lw         $ra, 0x10($sp)
/* B8F50 80102B90 03E00008 */  jr         $ra
/* B8F54 80102B94 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80102B98
/* B8F58 80102B98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8F5C 80102B9C AFB00010 */  sw         $s0, 0x10($sp)
/* B8F60 80102BA0 00808021 */  addu       $s0, $a0, $zero
/* B8F64 80102BA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B8F68 80102BA8 8E040004 */  lw         $a0, 0x4($s0)
/* B8F6C 80102BAC 0C0408B0 */  jal        func_race_801022C0
/* B8F70 80102BB0 00002821 */   addu      $a1, $zero, $zero
/* B8F74 80102BB4 8E040004 */  lw         $a0, 0x4($s0)
/* B8F78 80102BB8 0C0408BA */  jal        func_race_801022E8
/* B8F7C 80102BBC 00002821 */   addu      $a1, $zero, $zero
/* B8F80 80102BC0 8E040004 */  lw         $a0, 0x4($s0)
/* B8F84 80102BC4 0C0408C4 */  jal        func_race_80102310
/* B8F88 80102BC8 00002821 */   addu      $a1, $zero, $zero
/* B8F8C 80102BCC 8E040004 */  lw         $a0, 0x4($s0)
/* B8F90 80102BD0 0C0408D5 */  jal        func_race_80102354
/* B8F94 80102BD4 00002821 */   addu      $a1, $zero, $zero
/* B8F98 80102BD8 8E040004 */  lw         $a0, 0x4($s0)
/* B8F9C 80102BDC 0C0408F0 */  jal        func_race_801023C0
/* B8FA0 80102BE0 00002821 */   addu      $a1, $zero, $zero
/* B8FA4 80102BE4 8E040004 */  lw         $a0, 0x4($s0)
/* B8FA8 80102BE8 0C040906 */  jal        func_race_80102418
/* B8FAC 80102BEC 00002821 */   addu      $a1, $zero, $zero
/* B8FB0 80102BF0 8E040004 */  lw         $a0, 0x4($s0)
/* B8FB4 80102BF4 0C040919 */  jal        func_race_80102464
/* B8FB8 80102BF8 00002821 */   addu      $a1, $zero, $zero
/* B8FBC 80102BFC 8E040004 */  lw         $a0, 0x4($s0)
/* B8FC0 80102C00 0C04092C */  jal        func_race_801024B0
/* B8FC4 80102C04 00002821 */   addu      $a1, $zero, $zero
/* B8FC8 80102C08 8E040004 */  lw         $a0, 0x4($s0)
/* B8FCC 80102C0C 0C040936 */  jal        func_race_801024D8
/* B8FD0 80102C10 00002821 */   addu      $a1, $zero, $zero
/* B8FD4 80102C14 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8FD8 80102C18 8FB00010 */  lw         $s0, 0x10($sp)
/* B8FDC 80102C1C 03E00008 */  jr         $ra
/* B8FE0 80102C20 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80102C24
/* B8FE4 80102C24 8C820004 */  lw         $v0, 0x4($a0)
/* B8FE8 80102C28 03E00008 */  jr         $ra
/* B8FEC 80102C2C 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_80102C30
/* B8FF0 80102C30 03E00008 */  jr         $ra
/* B8FF4 80102C34 AC800054 */   sw        $zero, 0x54($a0)

glabel func_race_80102C38
/* B8FF8 80102C38 24020001 */  addiu      $v0, $zero, 0x1
/* B8FFC 80102C3C 03E00008 */  jr         $ra
/* B9000 80102C40 AC820054 */   sw        $v0, 0x54($a0)

glabel func_race_80102C44
/* B9004 80102C44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9008 80102C48 AFBF0010 */  sw         $ra, 0x10($sp)
/* B900C 80102C4C 8C830000 */  lw         $v1, 0x0($a0)
/* B9010 80102C50 84620008 */  lh         $v0, 0x8($v1)
/* B9014 80102C54 00822021 */  addu       $a0, $a0, $v0
/* B9018 80102C58 8C62000C */  lw         $v0, 0xC($v1)
/* B901C 80102C5C 0040F809 */  jalr       $v0
/* B9020 80102C60 00000000 */   nop
/* B9024 80102C64 8FBF0010 */  lw         $ra, 0x10($sp)
/* B9028 80102C68 03E00008 */  jr         $ra
/* B902C 80102C6C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80102C70
/* B9030 80102C70 8C82003C */  lw         $v0, 0x3C($a0)
/* B9034 80102C74 03E00008 */  jr         $ra
/* B9038 80102C78 00000000 */   nop
