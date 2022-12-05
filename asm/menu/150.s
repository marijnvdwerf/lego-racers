.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800E77B0
/* 1058A0 800E77B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1058A4 800E77B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1058A8 800E77B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1058AC 800E77BC 0C03A244 */  jal        func_menu_800E8910
/* 1058B0 800E77C0 00808021 */   addu      $s0, $a0, $zero
/* 1058B4 800E77C4 3C02800D */  lui        $v0, %hi(D_menu_800CB430)
/* 1058B8 800E77C8 2442B430 */  addiu      $v0, $v0, %lo(D_menu_800CB430)
/* 1058BC 800E77CC 02002021 */  addu       $a0, $s0, $zero
/* 1058C0 800E77D0 0C039E0D */  jal        func_menu_800E7834
/* 1058C4 800E77D4 AE02001C */   sw        $v0, 0x1C($s0)
/* 1058C8 800E77D8 02001021 */  addu       $v0, $s0, $zero
/* 1058CC 800E77DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1058D0 800E77E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1058D4 800E77E4 03E00008 */  jr         $ra
/* 1058D8 800E77E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E77EC
/* 1058DC 800E77EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1058E0 800E77F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1058E4 800E77F4 00808021 */  addu       $s0, $a0, $zero
/* 1058E8 800E77F8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1058EC 800E77FC 00A08821 */  addu       $s1, $a1, $zero
/* 1058F0 800E7800 3C02800D */  lui        $v0, %hi(D_menu_800CB430)
/* 1058F4 800E7804 2442B430 */  addiu      $v0, $v0, %lo(D_menu_800CB430)
/* 1058F8 800E7808 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1058FC 800E780C 0C039F6A */  jal        func_menu_800E7DA8
/* 105900 800E7810 AE02001C */   sw        $v0, 0x1C($s0)
/* 105904 800E7814 02002021 */  addu       $a0, $s0, $zero
/* 105908 800E7818 0C03A251 */  jal        func_menu_800E8944
/* 10590C 800E781C 02202821 */   addu      $a1, $s1, $zero
/* 105910 800E7820 8FBF0018 */  lw         $ra, 0x18($sp)
/* 105914 800E7824 8FB10014 */  lw         $s1, 0x14($sp)
/* 105918 800E7828 8FB00010 */  lw         $s0, 0x10($sp)
/* 10591C 800E782C 03E00008 */  jr         $ra
/* 105920 800E7830 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E7834
/* 105924 800E7834 3C01800D */  lui        $at, %hi(D_menu_800CB3A0)
/* 105928 800E7838 C420B3A0 */  lwc1       $f0, %lo(D_menu_800CB3A0)($at)
/* 10592C 800E783C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 105930 800E7840 AC800020 */  sw         $zero, 0x20($a0)
/* 105934 800E7844 A080002C */  sb         $zero, 0x2C($a0)
/* 105938 800E7848 AC80002C */  sw         $zero, 0x2C($a0)
/* 10593C 800E784C AC800030 */  sw         $zero, 0x30($a0)
/* 105940 800E7850 AC800028 */  sw         $zero, 0x28($a0)
/* 105944 800E7854 AC800024 */  sw         $zero, 0x24($a0)
/* 105948 800E7858 AC800034 */  sw         $zero, 0x34($a0)
/* 10594C 800E785C AC800038 */  sw         $zero, 0x38($a0)
/* 105950 800E7860 AC80003C */  sw         $zero, 0x3C($a0)
/* 105954 800E7864 AC800044 */  sw         $zero, 0x44($a0)
/* 105958 800E7868 AC800048 */  sw         $zero, 0x48($a0)
/* 10595C 800E786C AC80004C */  sw         $zero, 0x4C($a0)
/* 105960 800E7870 AC800050 */  sw         $zero, 0x50($a0)
/* 105964 800E7874 AC820058 */  sw         $v0, 0x58($a0)
/* 105968 800E7878 AC80005C */  sw         $zero, 0x5C($a0)
/* 10596C 800E787C AC800060 */  sw         $zero, 0x60($a0)
/* 105970 800E7880 AC800064 */  sw         $zero, 0x64($a0)
/* 105974 800E7884 E4800040 */  swc1       $f0, 0x40($a0)
/* 105978 800E7888 03E00008 */  jr         $ra
/* 10597C 800E788C E4800054 */   swc1      $f0, 0x54($a0)

glabel func_menu_800E7890
/* 105980 800E7890 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 105984 800E7894 AFB20018 */  sw         $s2, 0x18($sp)
/* 105988 800E7898 00809021 */  addu       $s2, $a0, $zero
/* 10598C 800E789C AFB10014 */  sw         $s1, 0x14($sp)
/* 105990 800E78A0 00C08821 */  addu       $s1, $a2, $zero
/* 105994 800E78A4 02202021 */  addu       $a0, $s1, $zero
/* 105998 800E78A8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 10599C 800E78AC AFB50024 */  sw         $s5, 0x24($sp)
/* 1059A0 800E78B0 AFB40020 */  sw         $s4, 0x20($sp)
/* 1059A4 800E78B4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1059A8 800E78B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1059AC 800E78BC AE450028 */  sw         $a1, 0x28($s2)
/* 1059B0 800E78C0 0C0026F4 */  jal        func_80009BD0
/* 1059B4 800E78C4 2405002E */   addiu     $a1, $zero, 0x2E
/* 1059B8 800E78C8 8E220028 */  lw         $v0, 0x28($s1)
/* 1059BC 800E78CC 0000A021 */  addu       $s4, $zero, $zero
/* 1059C0 800E78D0 844400A0 */  lh         $a0, 0xA0($v0)
/* 1059C4 800E78D4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 1059C8 800E78D8 0040F809 */  jalr       $v0
/* 1059CC 800E78DC 02242021 */   addu      $a0, $s1, $a0
/* 1059D0 800E78E0 02402021 */  addu       $a0, $s2, $zero
/* 1059D4 800E78E4 26250044 */  addiu      $a1, $s1, 0x44
/* 1059D8 800E78E8 0C000708 */  jal        func_80001C20
/* 1059DC 800E78EC 24060008 */   addiu     $a2, $zero, 0x8
/* 1059E0 800E78F0 02202021 */  addu       $a0, $s1, $zero
/* 1059E4 800E78F4 0C0026F4 */  jal        func_80009BD0
/* 1059E8 800E78F8 24050005 */   addiu     $a1, $zero, 0x5
/* 1059EC 800E78FC 3C02800D */  lui        $v0, %hi(jtbl_menu_800CB3A8)
/* 1059F0 800E7900 2455B3A8 */  addiu      $s5, $v0, %lo(jtbl_menu_800CB3A8)
glabel Lmenu_800E7904
/* 1059F4 800E7904 8E220028 */  lw         $v0, 0x28($s1)
/* 1059F8 800E7908 844400A0 */  lh         $a0, 0xA0($v0)
/* 1059FC 800E790C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 105A00 800E7910 0040F809 */  jalr       $v0
/* 105A04 800E7914 02242021 */   addu      $a0, $s1, $a0
/* 105A08 800E7918 00401821 */  addu       $v1, $v0, $zero
/* 105A0C 800E791C 24020006 */  addiu      $v0, $zero, 0x6
/* 105A10 800E7920 1062009A */  beq        $v1, $v0, .Lmenu_800E7B8C
/* 105A14 800E7924 2463FFD5 */   addiu     $v1, $v1, -0x2B
/* 105A18 800E7928 2C62000C */  sltiu      $v0, $v1, 0xC
/* 105A1C 800E792C 1040FFF5 */  beqz       $v0, Lmenu_800E7904
/* 105A20 800E7930 00031080 */   sll       $v0, $v1, 2
/* 105A24 800E7934 00551021 */  addu       $v0, $v0, $s5
/* 105A28 800E7938 8C420000 */  lw         $v0, 0x0($v0)
/* 105A2C 800E793C 00400008 */  jr         $v0
/* 105A30 800E7940 00000000 */   nop
glabel Lmenu_800E7944
/* 105A34 800E7944 8E220028 */  lw         $v0, 0x28($s1)
/* 105A38 800E7948 844400A0 */  lh         $a0, 0xA0($v0)
/* 105A3C 800E794C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 105A40 800E7950 0040F809 */  jalr       $v0
/* 105A44 800E7954 02242021 */   addu      $a0, $s1, $a0
/* 105A48 800E7958 2644002C */  addiu      $a0, $s2, 0x2C
/* 105A4C 800E795C 26250044 */  addiu      $a1, $s1, 0x44
/* 105A50 800E7960 0C000708 */  jal        func_80001C20
/* 105A54 800E7964 24060008 */   addiu     $a2, $zero, 0x8
/* 105A58 800E7968 24020001 */  addiu      $v0, $zero, 0x1
/* 105A5C 800E796C 08039E41 */  j          Lmenu_800E7904
/* 105A60 800E7970 AE420020 */   sw        $v0, 0x20($s2)
glabel Lmenu_800E7974
/* 105A64 800E7974 8E220028 */  lw         $v0, 0x28($s1)
/* 105A68 800E7978 844400A0 */  lh         $a0, 0xA0($v0)
/* 105A6C 800E797C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 105A70 800E7980 0040F809 */  jalr       $v0
/* 105A74 800E7984 02242021 */   addu      $a0, $s1, $a0
/* 105A78 800E7988 2644002C */  addiu      $a0, $s2, 0x2C
/* 105A7C 800E798C 26250044 */  addiu      $a1, $s1, 0x44
/* 105A80 800E7990 0C000708 */  jal        func_80001C20
/* 105A84 800E7994 24060008 */   addiu     $a2, $zero, 0x8
/* 105A88 800E7998 24020002 */  addiu      $v0, $zero, 0x2
/* 105A8C 800E799C 08039E41 */  j          Lmenu_800E7904
/* 105A90 800E79A0 AE420020 */   sw        $v0, 0x20($s2)
glabel Lmenu_800E79A4
/* 105A94 800E79A4 8E220028 */  lw         $v0, 0x28($s1)
/* 105A98 800E79A8 844400A0 */  lh         $a0, 0xA0($v0)
/* 105A9C 800E79AC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 105AA0 800E79B0 0040F809 */  jalr       $v0
/* 105AA4 800E79B4 02242021 */   addu      $a0, $s1, $a0
/* 105AA8 800E79B8 2644002C */  addiu      $a0, $s2, 0x2C
/* 105AAC 800E79BC 26250044 */  addiu      $a1, $s1, 0x44
/* 105AB0 800E79C0 0C000708 */  jal        func_80001C20
/* 105AB4 800E79C4 24060008 */   addiu     $a2, $zero, 0x8
/* 105AB8 800E79C8 24020003 */  addiu      $v0, $zero, 0x3
/* 105ABC 800E79CC 08039E41 */  j          Lmenu_800E7904
/* 105AC0 800E79D0 AE420020 */   sw        $v0, 0x20($s2)
glabel Lmenu_800E79D4
/* 105AC4 800E79D4 0C002680 */  jal        func_80009A00
/* 105AC8 800E79D8 02202021 */   addu      $a0, $s1, $zero
/* 105ACC 800E79DC 02202021 */  addu       $a0, $s1, $zero
/* 105AD0 800E79E0 0C002680 */  jal        func_80009A00
/* 105AD4 800E79E4 AE42002C */   sw        $v0, 0x2C($s2)
/* 105AD8 800E79E8 AE420030 */  sw         $v0, 0x30($s2)
/* 105ADC 800E79EC 24020004 */  addiu      $v0, $zero, 0x4
/* 105AE0 800E79F0 08039E41 */  j          Lmenu_800E7904
/* 105AE4 800E79F4 AE420020 */   sw        $v0, 0x20($s2)
glabel Lmenu_800E79F8
/* 105AE8 800E79F8 0C002680 */  jal        func_80009A00
/* 105AEC 800E79FC 02202021 */   addu      $a0, $s1, $zero
/* 105AF0 800E7A00 08039E41 */  j          Lmenu_800E7904
/* 105AF4 800E7A04 AE420008 */   sw        $v0, 0x8($s2)
glabel Lmenu_800E7A08
/* 105AF8 800E7A08 0C002680 */  jal        func_80009A00
/* 105AFC 800E7A0C 02202021 */   addu      $a0, $s1, $zero
/* 105B00 800E7A10 08039E41 */  j          Lmenu_800E7904
/* 105B04 800E7A14 0040A021 */   addu      $s4, $v0, $zero
glabel Lmenu_800E7A18
/* 105B08 800E7A18 0C002680 */  jal        func_80009A00
/* 105B0C 800E7A1C 02202021 */   addu      $a0, $s1, $zero
/* 105B10 800E7A20 08039E41 */  j          Lmenu_800E7904
/* 105B14 800E7A24 AE420058 */   sw        $v0, 0x58($s2)
glabel Lmenu_800E7A28
/* 105B18 800E7A28 0C002723 */  jal        func_80009C8C
/* 105B1C 800E7A2C 02202021 */   addu      $a0, $s1, $zero
/* 105B20 800E7A30 3C038012 */  lui        $v1, %hi(D_80126A10)
/* 105B24 800E7A34 8C646A10 */  lw         $a0, %lo(D_80126A10)($v1)
/* 105B28 800E7A38 0C01FB65 */  jal        func_8007ED94
/* 105B2C 800E7A3C AE42005C */   sw        $v0, 0x5C($s2)
/* 105B30 800E7A40 8E42005C */  lw         $v0, 0x5C($s2)
/* 105B34 800E7A44 000220C0 */  sll        $a0, $v0, 3
/* 105B38 800E7A48 00822023 */  subu       $a0, $a0, $v0
/* 105B3C 800E7A4C 0C00943C */  jal        func_800250F0
/* 105B40 800E7A50 00042080 */   sll       $a0, $a0, 2
/* 105B44 800E7A54 0C01FB72 */  jal        func_8007EDC8
/* 105B48 800E7A58 AE420060 */   sw        $v0, 0x60($s2)
/* 105B4C 800E7A5C 8E420060 */  lw         $v0, 0x60($s2)
/* 105B50 800E7A60 14400006 */  bnez       $v0, .Lmenu_800E7A7C
/* 105B54 800E7A64 3C04800D */   lui       $a0, %hi(D_menu_800CB3A4)
/* 105B58 800E7A68 2484B3A4 */  addiu      $a0, $a0, %lo(D_menu_800CB3A4)
/* 105B5C 800E7A6C 00002821 */  addu       $a1, $zero, $zero
/* 105B60 800E7A70 00A03021 */  addu       $a2, $a1, $zero
/* 105B64 800E7A74 0C011ACF */  jal        func_80046B3C
/* 105B68 800E7A78 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E7A7C:
/* 105B6C 800E7A7C 8E42005C */  lw         $v0, 0x5C($s2)
/* 105B70 800E7A80 10400020 */  beqz       $v0, .Lmenu_800E7B04
/* 105B74 800E7A84 00009821 */   addu      $s3, $zero, $zero
/* 105B78 800E7A88 02608021 */  addu       $s0, $s3, $zero
.Lmenu_800E7A8C:
/* 105B7C 800E7A8C 0C002680 */  jal        func_80009A00
/* 105B80 800E7A90 02202021 */   addu      $a0, $s1, $zero
/* 105B84 800E7A94 8E430060 */  lw         $v1, 0x60($s2)
/* 105B88 800E7A98 02202021 */  addu       $a0, $s1, $zero
/* 105B8C 800E7A9C 02031821 */  addu       $v1, $s0, $v1
/* 105B90 800E7AA0 0C002680 */  jal        func_80009A00
/* 105B94 800E7AA4 AC620008 */   sw        $v0, 0x8($v1)
/* 105B98 800E7AA8 8E430060 */  lw         $v1, 0x60($s2)
/* 105B9C 800E7AAC 02202021 */  addu       $a0, $s1, $zero
/* 105BA0 800E7AB0 02031821 */  addu       $v1, $s0, $v1
/* 105BA4 800E7AB4 0C002680 */  jal        func_80009A00
/* 105BA8 800E7AB8 AC62000C */   sw        $v0, 0xC($v1)
/* 105BAC 800E7ABC 8E430060 */  lw         $v1, 0x60($s2)
/* 105BB0 800E7AC0 02202021 */  addu       $a0, $s1, $zero
/* 105BB4 800E7AC4 02031821 */  addu       $v1, $s0, $v1
/* 105BB8 800E7AC8 0C002680 */  jal        func_80009A00
/* 105BBC 800E7ACC AC620010 */   sw        $v0, 0x10($v1)
/* 105BC0 800E7AD0 8E430060 */  lw         $v1, 0x60($s2)
/* 105BC4 800E7AD4 02202021 */  addu       $a0, $s1, $zero
/* 105BC8 800E7AD8 02031821 */  addu       $v1, $s0, $v1
/* 105BCC 800E7ADC 0C002680 */  jal        func_80009A00
/* 105BD0 800E7AE0 AC620014 */   sw        $v0, 0x14($v1)
/* 105BD4 800E7AE4 8E430060 */  lw         $v1, 0x60($s2)
/* 105BD8 800E7AE8 26730001 */  addiu      $s3, $s3, 0x1
/* 105BDC 800E7AEC 02031821 */  addu       $v1, $s0, $v1
/* 105BE0 800E7AF0 AC620018 */  sw         $v0, 0x18($v1)
/* 105BE4 800E7AF4 8E42005C */  lw         $v0, 0x5C($s2)
/* 105BE8 800E7AF8 0262102B */  sltu       $v0, $s3, $v0
/* 105BEC 800E7AFC 1440FFE3 */  bnez       $v0, .Lmenu_800E7A8C
/* 105BF0 800E7B00 2610001C */   addiu     $s0, $s0, 0x1C
.Lmenu_800E7B04:
/* 105BF4 800E7B04 02202021 */  addu       $a0, $s1, $zero
/* 105BF8 800E7B08 0C0026F4 */  jal        func_80009BD0
/* 105BFC 800E7B0C 24050006 */   addiu     $a1, $zero, 0x6
/* 105C00 800E7B10 08039E41 */  j          Lmenu_800E7904
/* 105C04 800E7B14 00000000 */   nop
glabel Lmenu_800E7B18
/* 105C08 800E7B18 0C0025F8 */  jal        func_800097E0
/* 105C0C 800E7B1C 02202021 */   addu      $a0, $s1, $zero
/* 105C10 800E7B20 02202021 */  addu       $a0, $s1, $zero
/* 105C14 800E7B24 0C0025F8 */  jal        func_800097E0
/* 105C18 800E7B28 E6400034 */   swc1      $f0, 0x34($s2)
/* 105C1C 800E7B2C 02202021 */  addu       $a0, $s1, $zero
/* 105C20 800E7B30 0C0025F8 */  jal        func_800097E0
/* 105C24 800E7B34 E6400038 */   swc1      $f0, 0x38($s2)
/* 105C28 800E7B38 08039E41 */  j          Lmenu_800E7904
/* 105C2C 800E7B3C E640003C */   swc1      $f0, 0x3C($s2)
glabel Lmenu_800E7B40
/* 105C30 800E7B40 0C0025F8 */  jal        func_800097E0
/* 105C34 800E7B44 02202021 */   addu      $a0, $s1, $zero
/* 105C38 800E7B48 02202021 */  addu       $a0, $s1, $zero
/* 105C3C 800E7B4C 0C0025F8 */  jal        func_800097E0
/* 105C40 800E7B50 E6400040 */   swc1      $f0, 0x40($s2)
/* 105C44 800E7B54 02202021 */  addu       $a0, $s1, $zero
/* 105C48 800E7B58 0C0025F8 */  jal        func_800097E0
/* 105C4C 800E7B5C E6400044 */   swc1      $f0, 0x44($s2)
/* 105C50 800E7B60 02202021 */  addu       $a0, $s1, $zero
/* 105C54 800E7B64 0C0025F8 */  jal        func_800097E0
/* 105C58 800E7B68 E6400048 */   swc1      $f0, 0x48($s2)
/* 105C5C 800E7B6C 02202021 */  addu       $a0, $s1, $zero
/* 105C60 800E7B70 0C0025F8 */  jal        func_800097E0
/* 105C64 800E7B74 E640004C */   swc1      $f0, 0x4C($s2)
/* 105C68 800E7B78 02202021 */  addu       $a0, $s1, $zero
/* 105C6C 800E7B7C 0C0025F8 */  jal        func_800097E0
/* 105C70 800E7B80 E6400050 */   swc1      $f0, 0x50($s2)
/* 105C74 800E7B84 08039E41 */  j          Lmenu_800E7904
/* 105C78 800E7B88 E6400054 */   swc1      $f0, 0x54($s2)
.Lmenu_800E7B8C:
/* 105C7C 800E7B8C 8E420008 */  lw         $v0, 0x8($s2)
/* 105C80 800E7B90 00541021 */  addu       $v0, $v0, $s4
/* 105C84 800E7B94 AE42000C */  sw         $v0, 0xC($s2)
/* 105C88 800E7B98 8FBF0028 */  lw         $ra, 0x28($sp)
/* 105C8C 800E7B9C 8FB50024 */  lw         $s5, 0x24($sp)
/* 105C90 800E7BA0 8FB40020 */  lw         $s4, 0x20($sp)
/* 105C94 800E7BA4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 105C98 800E7BA8 8FB20018 */  lw         $s2, 0x18($sp)
/* 105C9C 800E7BAC 8FB10014 */  lw         $s1, 0x14($sp)
/* 105CA0 800E7BB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 105CA4 800E7BB4 03E00008 */  jr         $ra
/* 105CA8 800E7BB8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E7BBC
/* 105CAC 800E7BBC 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 105CB0 800E7BC0 AFB3005C */  sw         $s3, 0x5C($sp)
/* 105CB4 800E7BC4 00809821 */  addu       $s3, $a0, $zero
/* 105CB8 800E7BC8 AFBF0060 */  sw         $ra, 0x60($sp)
/* 105CBC 800E7BCC AFB20058 */  sw         $s2, 0x58($sp)
/* 105CC0 800E7BD0 AFB10054 */  sw         $s1, 0x54($sp)
/* 105CC4 800E7BD4 AFB00050 */  sw         $s0, 0x50($sp)
/* 105CC8 800E7BD8 8E620024 */  lw         $v0, 0x24($s3)
/* 105CCC 800E7BDC 1440004C */  bnez       $v0, .Lmenu_800E7D10
/* 105CD0 800E7BE0 24020002 */   addiu     $v0, $zero, 0x2
/* 105CD4 800E7BE4 8E630020 */  lw         $v1, 0x20($s3)
/* 105CD8 800E7BE8 1062001C */  beq        $v1, $v0, .Lmenu_800E7C5C
/* 105CDC 800E7BEC 28620003 */   slti      $v0, $v1, 0x3
/* 105CE0 800E7BF0 10400005 */  beqz       $v0, .Lmenu_800E7C08
/* 105CE4 800E7BF4 24020001 */   addiu     $v0, $zero, 0x1
/* 105CE8 800E7BF8 1062000A */  beq        $v1, $v0, .Lmenu_800E7C24
/* 105CEC 800E7BFC 2670002C */   addiu     $s0, $s3, 0x2C
/* 105CF0 800E7C00 08039F63 */  j          .Lmenu_800E7D8C
/* 105CF4 800E7C04 00000000 */   nop
.Lmenu_800E7C08:
/* 105CF8 800E7C08 24020003 */  addiu      $v0, $zero, 0x3
/* 105CFC 800E7C0C 10620022 */  beq        $v1, $v0, .Lmenu_800E7C98
/* 105D00 800E7C10 24020004 */   addiu     $v0, $zero, 0x4
/* 105D04 800E7C14 10620038 */  beq        $v1, $v0, .Lmenu_800E7CF8
/* 105D08 800E7C18 00000000 */   nop
/* 105D0C 800E7C1C 08039F63 */  j          .Lmenu_800E7D8C
/* 105D10 800E7C20 00000000 */   nop
.Lmenu_800E7C24:
/* 105D14 800E7C24 8E640028 */  lw         $a0, 0x28($s3)
/* 105D18 800E7C28 0C03AB34 */  jal        func_menu_800EACD0
/* 105D1C 800E7C2C 02002821 */   addu      $a1, $s0, $zero
/* 105D20 800E7C30 14400037 */  bnez       $v0, .Lmenu_800E7D10
/* 105D24 800E7C34 AE620024 */   sw        $v0, 0x24($s3)
/* 105D28 800E7C38 27A40010 */  addiu      $a0, $sp, 0x10
/* 105D2C 800E7C3C 02002821 */  addu       $a1, $s0, $zero
/* 105D30 800E7C40 0C000708 */  jal        func_80001C20
/* 105D34 800E7C44 24060008 */   addiu     $a2, $zero, 0x8
/* 105D38 800E7C48 A3A00018 */  sb         $zero, 0x18($sp)
/* 105D3C 800E7C4C 27A40010 */  addiu      $a0, $sp, 0x10
/* 105D40 800E7C50 3C05800D */  lui        $a1, %hi(D_menu_800CB3D8)
/* 105D44 800E7C54 08039F34 */  j          .Lmenu_800E7CD0
/* 105D48 800E7C58 24A5B3D8 */   addiu     $a1, $a1, %lo(D_menu_800CB3D8)
.Lmenu_800E7C5C:
/* 105D4C 800E7C5C 2670002C */  addiu      $s0, $s3, 0x2C
/* 105D50 800E7C60 8E640028 */  lw         $a0, 0x28($s3)
/* 105D54 800E7C64 0C03AB55 */  jal        func_menu_800EAD54
/* 105D58 800E7C68 02002821 */   addu      $a1, $s0, $zero
/* 105D5C 800E7C6C 14400028 */  bnez       $v0, .Lmenu_800E7D10
/* 105D60 800E7C70 AE620024 */   sw        $v0, 0x24($s3)
/* 105D64 800E7C74 27A40010 */  addiu      $a0, $sp, 0x10
/* 105D68 800E7C78 02002821 */  addu       $a1, $s0, $zero
/* 105D6C 800E7C7C 0C000708 */  jal        func_80001C20
/* 105D70 800E7C80 24060008 */   addiu     $a2, $zero, 0x8
/* 105D74 800E7C84 A3A00018 */  sb         $zero, 0x18($sp)
/* 105D78 800E7C88 27A40010 */  addiu      $a0, $sp, 0x10
/* 105D7C 800E7C8C 3C05800D */  lui        $a1, %hi(D_menu_800CB3F0)
/* 105D80 800E7C90 08039F34 */  j          .Lmenu_800E7CD0
/* 105D84 800E7C94 24A5B3F0 */   addiu     $a1, $a1, %lo(D_menu_800CB3F0)
.Lmenu_800E7C98:
/* 105D88 800E7C98 2670002C */  addiu      $s0, $s3, 0x2C
/* 105D8C 800E7C9C 8E640028 */  lw         $a0, 0x28($s3)
/* 105D90 800E7CA0 0C03AB76 */  jal        func_menu_800EADD8
/* 105D94 800E7CA4 02002821 */   addu      $a1, $s0, $zero
/* 105D98 800E7CA8 14400019 */  bnez       $v0, .Lmenu_800E7D10
/* 105D9C 800E7CAC AE620024 */   sw        $v0, 0x24($s3)
/* 105DA0 800E7CB0 27A40010 */  addiu      $a0, $sp, 0x10
/* 105DA4 800E7CB4 02002821 */  addu       $a1, $s0, $zero
/* 105DA8 800E7CB8 0C000708 */  jal        func_80001C20
/* 105DAC 800E7CBC 24060008 */   addiu     $a2, $zero, 0x8
/* 105DB0 800E7CC0 A3A00018 */  sb         $zero, 0x18($sp)
/* 105DB4 800E7CC4 27A40010 */  addiu      $a0, $sp, 0x10
/* 105DB8 800E7CC8 3C05800D */  lui        $a1, %hi(D_menu_800CB410)
/* 105DBC 800E7CCC 24A5B410 */  addiu      $a1, $a1, %lo(D_menu_800CB410)
.Lmenu_800E7CD0:
/* 105DC0 800E7CD0 0C0006C8 */  jal        func_80001B20
/* 105DC4 800E7CD4 00000000 */   nop
/* 105DC8 800E7CD8 3C04800D */  lui        $a0, %hi(D_menu_800CB3A4)
/* 105DCC 800E7CDC 2484B3A4 */  addiu      $a0, $a0, %lo(D_menu_800CB3A4)
/* 105DD0 800E7CE0 00002821 */  addu       $a1, $zero, $zero
/* 105DD4 800E7CE4 00A03021 */  addu       $a2, $a1, $zero
/* 105DD8 800E7CE8 0C011ACF */  jal        func_80046B3C
/* 105DDC 800E7CEC 00A03821 */   addu      $a3, $a1, $zero
/* 105DE0 800E7CF0 08039F44 */  j          .Lmenu_800E7D10
/* 105DE4 800E7CF4 00000000 */   nop
.Lmenu_800E7CF8:
/* 105DE8 800E7CF8 8E640028 */  lw         $a0, 0x28($s3)
/* 105DEC 800E7CFC 8E65002C */  lw         $a1, 0x2C($s3)
/* 105DF0 800E7D00 8E660030 */  lw         $a2, 0x30($s3)
/* 105DF4 800E7D04 0C03AB97 */  jal        func_menu_800EAE5C
/* 105DF8 800E7D08 00000000 */   nop
/* 105DFC 800E7D0C AE620024 */  sw         $v0, 0x24($s3)
.Lmenu_800E7D10:
/* 105E00 800E7D10 8E63005C */  lw         $v1, 0x5C($s3)
/* 105E04 800E7D14 1060001D */  beqz       $v1, .Lmenu_800E7D8C
/* 105E08 800E7D18 00000000 */   nop
/* 105E0C 800E7D1C 8E620020 */  lw         $v0, 0x20($s3)
/* 105E10 800E7D20 2442FFFF */  addiu      $v0, $v0, -0x1
/* 105E14 800E7D24 2C420003 */  sltiu      $v0, $v0, 0x3
/* 105E18 800E7D28 10400018 */  beqz       $v0, .Lmenu_800E7D8C
/* 105E1C 800E7D2C 000310C0 */   sll       $v0, $v1, 3
/* 105E20 800E7D30 8E710060 */  lw         $s1, 0x60($s3)
/* 105E24 800E7D34 00431023 */  subu       $v0, $v0, $v1
/* 105E28 800E7D38 00021080 */  sll        $v0, $v0, 2
/* 105E2C 800E7D3C 02229021 */  addu       $s2, $s1, $v0
/* 105E30 800E7D40 0232102B */  sltu       $v0, $s1, $s2
/* 105E34 800E7D44 10400011 */  beqz       $v0, .Lmenu_800E7D8C
/* 105E38 800E7D48 26300004 */   addiu     $s0, $s1, 0x4
.Lmenu_800E7D4C:
/* 105E3C 800E7D4C 8E640028 */  lw         $a0, 0x28($s3)
/* 105E40 800E7D50 8E050004 */  lw         $a1, 0x4($s0)
/* 105E44 800E7D54 8E060008 */  lw         $a2, 0x8($s0)
/* 105E48 800E7D58 0C03ABA6 */  jal        func_menu_800EAE98
/* 105E4C 800E7D5C 00000000 */   nop
/* 105E50 800E7D60 AE220000 */  sw         $v0, 0x0($s1)
/* 105E54 800E7D64 8E640028 */  lw         $a0, 0x28($s3)
/* 105E58 800E7D68 8E050004 */  lw         $a1, 0x4($s0)
/* 105E5C 800E7D6C 8E060008 */  lw         $a2, 0x8($s0)
/* 105E60 800E7D70 8E07000C */  lw         $a3, 0xC($s0)
/* 105E64 800E7D74 0C03ABB5 */  jal        func_menu_800EAED4
/* 105E68 800E7D78 2631001C */   addiu     $s1, $s1, 0x1C
/* 105E6C 800E7D7C AE020000 */  sw         $v0, 0x0($s0)
/* 105E70 800E7D80 0232102B */  sltu       $v0, $s1, $s2
/* 105E74 800E7D84 1440FFF1 */  bnez       $v0, .Lmenu_800E7D4C
/* 105E78 800E7D88 2610001C */   addiu     $s0, $s0, 0x1C
.Lmenu_800E7D8C:
/* 105E7C 800E7D8C 8FBF0060 */  lw         $ra, 0x60($sp)
/* 105E80 800E7D90 8FB3005C */  lw         $s3, 0x5C($sp)
/* 105E84 800E7D94 8FB20058 */  lw         $s2, 0x58($sp)
/* 105E88 800E7D98 8FB10054 */  lw         $s1, 0x54($sp)
/* 105E8C 800E7D9C 8FB00050 */  lw         $s0, 0x50($sp)
/* 105E90 800E7DA0 03E00008 */  jr         $ra
/* 105E94 800E7DA4 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_menu_800E7DA8
/* 105E98 800E7DA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 105E9C 800E7DAC AFB00010 */  sw         $s0, 0x10($sp)
/* 105EA0 800E7DB0 00808021 */  addu       $s0, $a0, $zero
/* 105EA4 800E7DB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 105EA8 800E7DB8 8E040060 */  lw         $a0, 0x60($s0)
/* 105EAC 800E7DBC 10800003 */  beqz       $a0, .Lmenu_800E7DCC
/* 105EB0 800E7DC0 00000000 */   nop
/* 105EB4 800E7DC4 0C009444 */  jal        func_80025110
/* 105EB8 800E7DC8 00000000 */   nop
.Lmenu_800E7DCC:
/* 105EBC 800E7DCC 0C039E0D */  jal        func_menu_800E7834
/* 105EC0 800E7DD0 02002021 */   addu      $a0, $s0, $zero
/* 105EC4 800E7DD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 105EC8 800E7DD8 8FB00010 */  lw         $s0, 0x10($sp)
/* 105ECC 800E7DDC 03E00008 */  jr         $ra
/* 105ED0 800E7DE0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E7DE4
/* 105ED4 800E7DE4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 105ED8 800E7DE8 AFB20018 */  sw         $s2, 0x18($sp)
/* 105EDC 800E7DEC 00809021 */  addu       $s2, $a0, $zero
/* 105EE0 800E7DF0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 105EE4 800E7DF4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 105EE8 800E7DF8 AFB10014 */  sw         $s1, 0x14($sp)
/* 105EEC 800E7DFC AFB00010 */  sw         $s0, 0x10($sp)
/* 105EF0 800E7E00 8E420010 */  lw         $v0, 0x10($s2)
/* 105EF4 800E7E04 10400018 */  beqz       $v0, .Lmenu_800E7E68
/* 105EF8 800E7E08 00A09821 */   addu      $s3, $a1, $zero
/* 105EFC 800E7E0C 8E430024 */  lw         $v1, 0x24($s2)
/* 105F00 800E7E10 00008821 */  addu       $s1, $zero, $zero
/* 105F04 800E7E14 8C620024 */  lw         $v0, 0x24($v1)
/* 105F08 800E7E18 02208021 */  addu       $s0, $s1, $zero
/* 105F0C 800E7E1C 84440020 */  lh         $a0, 0x20($v0)
/* 105F10 800E7E20 8C420024 */  lw         $v0, 0x24($v0)
/* 105F14 800E7E24 0040F809 */  jalr       $v0
/* 105F18 800E7E28 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E7E2C:
/* 105F1C 800E7E2C 8E42005C */  lw         $v0, 0x5C($s2)
/* 105F20 800E7E30 0222102B */  sltu       $v0, $s1, $v0
/* 105F24 800E7E34 1040000C */  beqz       $v0, .Lmenu_800E7E68
/* 105F28 800E7E38 02602821 */   addu      $a1, $s3, $zero
/* 105F2C 800E7E3C 8E420060 */  lw         $v0, 0x60($s2)
/* 105F30 800E7E40 26310001 */  addiu      $s1, $s1, 0x1
/* 105F34 800E7E44 02021021 */  addu       $v0, $s0, $v0
/* 105F38 800E7E48 8C430000 */  lw         $v1, 0x0($v0)
/* 105F3C 800E7E4C 8C440004 */  lw         $a0, 0x4($v0)
/* 105F40 800E7E50 8C660000 */  lw         $a2, 0x0($v1)
/* 105F44 800E7E54 8C670004 */  lw         $a3, 0x4($v1)
/* 105F48 800E7E58 0C01A036 */  jal        func_800680D8
/* 105F4C 800E7E5C 2610001C */   addiu     $s0, $s0, 0x1C
/* 105F50 800E7E60 08039F8B */  j          .Lmenu_800E7E2C
/* 105F54 800E7E64 00000000 */   nop
.Lmenu_800E7E68:
/* 105F58 800E7E68 8FBF0020 */  lw         $ra, 0x20($sp)
/* 105F5C 800E7E6C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 105F60 800E7E70 8FB20018 */  lw         $s2, 0x18($sp)
/* 105F64 800E7E74 8FB10014 */  lw         $s1, 0x14($sp)
/* 105F68 800E7E78 8FB00010 */  lw         $s0, 0x10($sp)
/* 105F6C 800E7E7C 03E00008 */  jr         $ra
/* 105F70 800E7E80 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E7E84
/* 105F74 800E7E84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 105F78 800E7E88 AFBF0010 */  sw         $ra, 0x10($sp)
/* 105F7C 800E7E8C 8C820010 */  lw         $v0, 0x10($a0)
/* 105F80 800E7E90 1040000B */  beqz       $v0, .Lmenu_800E7EC0
/* 105F84 800E7E94 00000000 */   nop
/* 105F88 800E7E98 8C820064 */  lw         $v0, 0x64($a0)
/* 105F8C 800E7E9C 14400008 */  bnez       $v0, .Lmenu_800E7EC0
/* 105F90 800E7EA0 00000000 */   nop
/* 105F94 800E7EA4 8C820024 */  lw         $v0, 0x24($a0)
/* 105F98 800E7EA8 8C430024 */  lw         $v1, 0x24($v0)
/* 105F9C 800E7EAC 84640040 */  lh         $a0, 0x40($v1)
/* 105FA0 800E7EB0 00442021 */  addu       $a0, $v0, $a0
/* 105FA4 800E7EB4 8C620044 */  lw         $v0, 0x44($v1)
/* 105FA8 800E7EB8 0040F809 */  jalr       $v0
/* 105FAC 800E7EBC 00000000 */   nop
.Lmenu_800E7EC0:
/* 105FB0 800E7EC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 105FB4 800E7EC4 03E00008 */  jr         $ra
/* 105FB8 800E7EC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E7ECC
/* 105FBC 800E7ECC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 105FC0 800E7ED0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 105FC4 800E7ED4 8C820010 */  lw         $v0, 0x10($a0)
/* 105FC8 800E7ED8 1040000B */  beqz       $v0, .Lmenu_800E7F08
/* 105FCC 800E7EDC 00000000 */   nop
/* 105FD0 800E7EE0 8C820064 */  lw         $v0, 0x64($a0)
/* 105FD4 800E7EE4 10400008 */  beqz       $v0, .Lmenu_800E7F08
/* 105FD8 800E7EE8 00000000 */   nop
/* 105FDC 800E7EEC 8C820024 */  lw         $v0, 0x24($a0)
/* 105FE0 800E7EF0 8C430024 */  lw         $v1, 0x24($v0)
/* 105FE4 800E7EF4 84640040 */  lh         $a0, 0x40($v1)
/* 105FE8 800E7EF8 00442021 */  addu       $a0, $v0, $a0
/* 105FEC 800E7EFC 8C620044 */  lw         $v0, 0x44($v1)
/* 105FF0 800E7F00 0040F809 */  jalr       $v0
/* 105FF4 800E7F04 00000000 */   nop
.Lmenu_800E7F08:
/* 105FF8 800E7F08 8FBF0010 */  lw         $ra, 0x10($sp)
/* 105FFC 800E7F0C 03E00008 */  jr         $ra
/* 106000 800E7F10 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E7F14
/* 106004 800E7F14 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 106008 800E7F18 AFB20018 */  sw         $s2, 0x18($sp)
/* 10600C 800E7F1C 00809021 */  addu       $s2, $a0, $zero
/* 106010 800E7F20 AFB50024 */  sw         $s5, 0x24($sp)
/* 106014 800E7F24 00A0A821 */  addu       $s5, $a1, $zero
/* 106018 800E7F28 AFBF0028 */  sw         $ra, 0x28($sp)
/* 10601C 800E7F2C AFB40020 */  sw         $s4, 0x20($sp)
/* 106020 800E7F30 AFB3001C */  sw         $s3, 0x1C($sp)
/* 106024 800E7F34 AFB10014 */  sw         $s1, 0x14($sp)
/* 106028 800E7F38 AFB00010 */  sw         $s0, 0x10($sp)
/* 10602C 800E7F3C 8E430024 */  lw         $v1, 0x24($s2)
/* 106030 800E7F40 10600051 */  beqz       $v1, .Lmenu_800E8088
/* 106034 800E7F44 00C0A021 */   addu      $s4, $a2, $zero
/* 106038 800E7F48 8C620024 */  lw         $v0, 0x24($v1)
/* 10603C 800E7F4C 84440048 */  lh         $a0, 0x48($v0)
/* 106040 800E7F50 8C42004C */  lw         $v0, 0x4C($v0)
/* 106044 800E7F54 0040F809 */  jalr       $v0
/* 106048 800E7F58 00642021 */   addu      $a0, $v1, $a0
/* 10604C 800E7F5C 8E430024 */  lw         $v1, 0x24($s2)
/* 106050 800E7F60 AE420064 */  sw         $v0, 0x64($s2)
/* 106054 800E7F64 8C620024 */  lw         $v0, 0x24($v1)
/* 106058 800E7F68 26450034 */  addiu      $a1, $s2, 0x34
/* 10605C 800E7F6C 84440018 */  lh         $a0, 0x18($v0)
/* 106060 800E7F70 8C42001C */  lw         $v0, 0x1C($v0)
/* 106064 800E7F74 0040F809 */  jalr       $v0
/* 106068 800E7F78 00642021 */   addu      $a0, $v1, $a0
/* 10606C 800E7F7C 8E430024 */  lw         $v1, 0x24($s2)
/* 106070 800E7F80 26450040 */  addiu      $a1, $s2, 0x40
/* 106074 800E7F84 8C620024 */  lw         $v0, 0x24($v1)
/* 106078 800E7F88 2646004C */  addiu      $a2, $s2, 0x4C
/* 10607C 800E7F8C 84440080 */  lh         $a0, 0x80($v0)
/* 106080 800E7F90 8C420084 */  lw         $v0, 0x84($v0)
/* 106084 800E7F94 0040F809 */  jalr       $v0
/* 106088 800E7F98 00642021 */   addu      $a0, $v1, $a0
/* 10608C 800E7F9C 8E43005C */  lw         $v1, 0x5C($s2)
/* 106090 800E7FA0 1060001D */  beqz       $v1, .Lmenu_800E8018
/* 106094 800E7FA4 00000000 */   nop
/* 106098 800E7FA8 8E420020 */  lw         $v0, 0x20($s2)
/* 10609C 800E7FAC 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1060A0 800E7FB0 2C420003 */  sltiu      $v0, $v0, 0x3
/* 1060A4 800E7FB4 10400018 */  beqz       $v0, .Lmenu_800E8018
/* 1060A8 800E7FB8 000310C0 */   sll       $v0, $v1, 3
/* 1060AC 800E7FBC 8E510060 */  lw         $s1, 0x60($s2)
/* 1060B0 800E7FC0 00431023 */  subu       $v0, $v0, $v1
/* 1060B4 800E7FC4 00021080 */  sll        $v0, $v0, 2
/* 1060B8 800E7FC8 02229821 */  addu       $s3, $s1, $v0
/* 1060BC 800E7FCC 26300014 */  addiu      $s0, $s1, 0x14
/* 1060C0 800E7FD0 0233102B */  sltu       $v0, $s1, $s3
.Lmenu_800E7FD4:
/* 1060C4 800E7FD4 10400010 */  beqz       $v0, .Lmenu_800E8018
/* 1060C8 800E7FD8 00000000 */   nop
/* 1060CC 800E7FDC 8E020004 */  lw         $v0, 0x4($s0)
/* 1060D0 800E7FE0 8E430024 */  lw         $v1, 0x24($s2)
/* 1060D4 800E7FE4 00021080 */  sll        $v0, $v0, 2
/* 1060D8 800E7FE8 00621821 */  addu       $v1, $v1, $v0
/* 1060DC 800E7FEC 8C65006C */  lw         $a1, 0x6C($v1)
/* 1060E0 800E7FF0 14A00002 */  bnez       $a1, .Lmenu_800E7FFC
/* 1060E4 800E7FF4 24070001 */   addiu     $a3, $zero, 0x1
/* 1060E8 800E7FF8 8C650078 */  lw         $a1, 0x78($v1)
.Lmenu_800E7FFC:
/* 1060EC 800E7FFC 8E04FFF0 */  lw         $a0, -0x10($s0)
/* 1060F0 800E8000 8E060000 */  lw         $a2, 0x0($s0)
/* 1060F4 800E8004 2610001C */  addiu      $s0, $s0, 0x1C
/* 1060F8 800E8008 0C01A018 */  jal        func_80068060
/* 1060FC 800E800C 2631001C */   addiu     $s1, $s1, 0x1C
/* 106100 800E8010 08039FF5 */  j          .Lmenu_800E7FD4
/* 106104 800E8014 0233102B */   sltu      $v0, $s1, $s3
.Lmenu_800E8018:
/* 106108 800E8018 8E430020 */  lw         $v1, 0x20($s2)
/* 10610C 800E801C 24020002 */  addiu      $v0, $zero, 0x2
/* 106110 800E8020 1462000D */  bne        $v1, $v0, .Lmenu_800E8058
/* 106114 800E8024 02402021 */   addu      $a0, $s2, $zero
/* 106118 800E8028 8E450058 */  lw         $a1, 0x58($s2)
/* 10611C 800E802C 04A2000B */  bltzl      $a1, .Lmenu_800E805C
/* 106120 800E8030 02A02821 */   addu      $a1, $s5, $zero
/* 106124 800E8034 8E440024 */  lw         $a0, 0x24($s2)
/* 106128 800E8038 0C01971D */  jal        func_80065C74
/* 10612C 800E803C 00000000 */   nop
/* 106130 800E8040 8E420024 */  lw         $v0, 0x24($s2)
/* 106134 800E8044 8C43005C */  lw         $v1, 0x5C($v0)
/* 106138 800E8048 3C040001 */  lui        $a0, (0x10000 >> 16)
/* 10613C 800E804C 00641825 */  or         $v1, $v1, $a0
/* 106140 800E8050 AC43005C */  sw         $v1, 0x5C($v0)
/* 106144 800E8054 02402021 */  addu       $a0, $s2, $zero
.Lmenu_800E8058:
/* 106148 800E8058 02A02821 */  addu       $a1, $s5, $zero
.Lmenu_800E805C:
/* 10614C 800E805C 0C03A272 */  jal        func_menu_800E89C8
/* 106150 800E8060 02803021 */   addu      $a2, $s4, $zero
/* 106154 800E8064 12800008 */  beqz       $s4, .Lmenu_800E8088
/* 106158 800E8068 02A02821 */   addu      $a1, $s5, $zero
/* 10615C 800E806C 02403021 */  addu       $a2, $s2, $zero
/* 106160 800E8070 8E820000 */  lw         $v0, 0x0($s4)
/* 106164 800E8074 00C03821 */  addu       $a3, $a2, $zero
/* 106168 800E8078 84440028 */  lh         $a0, 0x28($v0)
/* 10616C 800E807C 8C42002C */  lw         $v0, 0x2C($v0)
/* 106170 800E8080 0040F809 */  jalr       $v0
/* 106174 800E8084 02842021 */   addu      $a0, $s4, $a0
.Lmenu_800E8088:
/* 106178 800E8088 8FBF0028 */  lw         $ra, 0x28($sp)
/* 10617C 800E808C 8FB50024 */  lw         $s5, 0x24($sp)
/* 106180 800E8090 8FB40020 */  lw         $s4, 0x20($sp)
/* 106184 800E8094 8FB3001C */  lw         $s3, 0x1C($sp)
/* 106188 800E8098 8FB20018 */  lw         $s2, 0x18($sp)
/* 10618C 800E809C 8FB10014 */  lw         $s1, 0x14($sp)
/* 106190 800E80A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 106194 800E80A4 03E00008 */  jr         $ra
/* 106198 800E80A8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E80AC
/* 10619C 800E80AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1061A0 800E80B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1061A4 800E80B4 00808021 */  addu       $s0, $a0, $zero
/* 1061A8 800E80B8 AFB20018 */  sw         $s2, 0x18($sp)
/* 1061AC 800E80BC 00A09021 */  addu       $s2, $a1, $zero
/* 1061B0 800E80C0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1061B4 800E80C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1061B8 800E80C8 8E040024 */  lw         $a0, 0x24($s0)
/* 1061BC 800E80CC 10800019 */  beqz       $a0, .Lmenu_800E8134
/* 1061C0 800E80D0 00C08821 */   addu      $s1, $a2, $zero
/* 1061C4 800E80D4 8E030020 */  lw         $v1, 0x20($s0)
/* 1061C8 800E80D8 24020002 */  addiu      $v0, $zero, 0x2
/* 1061CC 800E80DC 54620009 */  bnel       $v1, $v0, .Lmenu_800E8104
/* 1061D0 800E80E0 02002021 */   addu      $a0, $s0, $zero
/* 1061D4 800E80E4 8E020058 */  lw         $v0, 0x58($s0)
/* 1061D8 800E80E8 04400005 */  bltz       $v0, .Lmenu_800E8100
/* 1061DC 800E80EC 3C03FFFE */   lui       $v1, (0xFFFEFFFF >> 16)
/* 1061E0 800E80F0 8C82005C */  lw         $v0, 0x5C($a0)
/* 1061E4 800E80F4 3463FFFF */  ori        $v1, $v1, (0xFFFEFFFF & 0xFFFF)
/* 1061E8 800E80F8 00431024 */  and        $v0, $v0, $v1
/* 1061EC 800E80FC AC82005C */  sw         $v0, 0x5C($a0)
.Lmenu_800E8100:
/* 1061F0 800E8100 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800E8104:
/* 1061F4 800E8104 02402821 */  addu       $a1, $s2, $zero
/* 1061F8 800E8108 0C03A282 */  jal        func_menu_800E8A08
/* 1061FC 800E810C 02203021 */   addu      $a2, $s1, $zero
/* 106200 800E8110 12200008 */  beqz       $s1, .Lmenu_800E8134
/* 106204 800E8114 02402821 */   addu      $a1, $s2, $zero
/* 106208 800E8118 02003021 */  addu       $a2, $s0, $zero
/* 10620C 800E811C 8E220000 */  lw         $v0, 0x0($s1)
/* 106210 800E8120 00C03821 */  addu       $a3, $a2, $zero
/* 106214 800E8124 84440030 */  lh         $a0, 0x30($v0)
/* 106218 800E8128 8C420034 */  lw         $v0, 0x34($v0)
/* 10621C 800E812C 0040F809 */  jalr       $v0
/* 106220 800E8130 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800E8134:
/* 106224 800E8134 8FBF001C */  lw         $ra, 0x1C($sp)
/* 106228 800E8138 8FB20018 */  lw         $s2, 0x18($sp)
/* 10622C 800E813C 8FB10014 */  lw         $s1, 0x14($sp)
/* 106230 800E8140 8FB00010 */  lw         $s0, 0x10($sp)
/* 106234 800E8144 03E00008 */  jr         $ra
/* 106238 800E8148 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E814C
/* 10623C 800E814C 000518C0 */  sll        $v1, $a1, 3
/* 106240 800E8150 00651823 */  subu       $v1, $v1, $a1
/* 106244 800E8154 8C820060 */  lw         $v0, 0x60($a0)
/* 106248 800E8158 00031880 */  sll        $v1, $v1, 2
/* 10624C 800E815C 03E00008 */  jr         $ra
/* 106250 800E8160 00431021 */   addu      $v0, $v0, $v1

glabel func_menu_800E8164
/* 106254 800E8164 8C82005C */  lw         $v0, 0x5C($a0)
/* 106258 800E8168 03E00008 */  jr         $ra
/* 10625C 800E816C 00000000 */   nop

glabel func_menu_800E8170
/* 106260 800E8170 03E00008 */  jr         $ra
/* 106264 800E8174 AC850024 */   sw        $a1, 0x24($a0)

glabel func_menu_800E8178
/* 106268 800E8178 8C820024 */  lw         $v0, 0x24($a0)
/* 10626C 800E817C 03E00008 */  jr         $ra
/* 106270 800E8180 00000000 */   nop

glabel func_menu_800E8184
/* 106274 800E8184 8C820024 */  lw         $v0, 0x24($a0)
/* 106278 800E8188 03E00008 */  jr         $ra
/* 10627C 800E818C 00000000 */   nop

glabel func_menu_800E8190
/* 106280 800E8190 8C820024 */  lw         $v0, 0x24($a0)
/* 106284 800E8194 03E00008 */  jr         $ra
/* 106288 800E8198 00000000 */   nop

glabel func_menu_800E819C
/* 10628C 800E819C 8C820020 */  lw         $v0, 0x20($a0)
/* 106290 800E81A0 03E00008 */  jr         $ra
/* 106294 800E81A4 00000000 */   nop

glabel func_menu_800E81A8
/* 106298 800E81A8 3C028012 */  lui        $v0, %hi(D_80126A10)
/* 10629C 800E81AC 03E00008 */  jr         $ra
/* 1062A0 800E81B0 AC446A10 */   sw        $a0, %lo(D_80126A10)($v0)
