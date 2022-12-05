.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800F3760
/* 111850 800F3760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 111854 800F3764 AFB00010 */  sw         $s0, 0x10($sp)
/* 111858 800F3768 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11185C 800F376C 0C03BA60 */  jal        func_menu_800EE980
/* 111860 800F3770 00808021 */   addu      $s0, $a0, $zero
/* 111864 800F3774 26040024 */  addiu      $a0, $s0, 0x24
/* 111868 800F3778 00002821 */  addu       $a1, $zero, $zero
/* 11186C 800F377C 0C000697 */  jal        func_80001A5C
/* 111870 800F3780 24060480 */   addiu     $a2, $zero, 0x480
/* 111874 800F3784 02001021 */  addu       $v0, $s0, $zero
/* 111878 800F3788 AE0004A4 */  sw         $zero, 0x4A4($s0)
/* 11187C 800F378C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 111880 800F3790 8FB00010 */  lw         $s0, 0x10($sp)
/* 111884 800F3794 03E00008 */  jr         $ra
/* 111888 800F3798 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F379C
/* 11188C 800F379C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 111890 800F37A0 AFB00010 */  sw         $s0, 0x10($sp)
/* 111894 800F37A4 00808021 */  addu       $s0, $a0, $zero
/* 111898 800F37A8 AFB10014 */  sw         $s1, 0x14($sp)
/* 11189C 800F37AC AFBF0018 */  sw         $ra, 0x18($sp)
/* 1118A0 800F37B0 0C03CE10 */  jal        func_menu_800F3840
/* 1118A4 800F37B4 00A08821 */   addu      $s1, $a1, $zero
/* 1118A8 800F37B8 02002021 */  addu       $a0, $s0, $zero
/* 1118AC 800F37BC 0C03BA6A */  jal        func_menu_800EE9A8
/* 1118B0 800F37C0 02202821 */   addu      $a1, $s1, $zero
/* 1118B4 800F37C4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1118B8 800F37C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1118BC 800F37CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1118C0 800F37D0 03E00008 */  jr         $ra
/* 1118C4 800F37D4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F37D8
/* 1118C8 800F37D8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1118CC 800F37DC AFB00010 */  sw         $s0, 0x10($sp)
/* 1118D0 800F37E0 00808021 */  addu       $s0, $a0, $zero
/* 1118D4 800F37E4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1118D8 800F37E8 00A08821 */  addu       $s1, $a1, $zero
/* 1118DC 800F37EC AFB20018 */  sw         $s2, 0x18($sp)
/* 1118E0 800F37F0 00C09021 */  addu       $s2, $a2, $zero
/* 1118E4 800F37F4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1118E8 800F37F8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1118EC 800F37FC 8E020004 */  lw         $v0, 0x4($s0)
/* 1118F0 800F3800 10400003 */  beqz       $v0, .Lmenu_800F3810
/* 1118F4 800F3804 00E09821 */   addu      $s3, $a3, $zero
/* 1118F8 800F3808 0C03CE10 */  jal        func_menu_800F3840
/* 1118FC 800F380C 00000000 */   nop
.Lmenu_800F3810:
/* 111900 800F3810 02002021 */  addu       $a0, $s0, $zero
/* 111904 800F3814 02202821 */  addu       $a1, $s1, $zero
/* 111908 800F3818 02403021 */  addu       $a2, $s2, $zero
/* 11190C 800F381C 0C03BA85 */  jal        func_menu_800EEA14
/* 111910 800F3820 02603821 */   addu      $a3, $s3, $zero
/* 111914 800F3824 8FBF0020 */  lw         $ra, 0x20($sp)
/* 111918 800F3828 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11191C 800F382C 8FB20018 */  lw         $s2, 0x18($sp)
/* 111920 800F3830 8FB10014 */  lw         $s1, 0x14($sp)
/* 111924 800F3834 8FB00010 */  lw         $s0, 0x10($sp)
/* 111928 800F3838 03E00008 */  jr         $ra
/* 11192C 800F383C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F3840
/* 111930 800F3840 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 111934 800F3844 AFBF0010 */  sw         $ra, 0x10($sp)
/* 111938 800F3848 0C03BAC8 */  jal        func_menu_800EEB20
/* 11193C 800F384C 00000000 */   nop
/* 111940 800F3850 8FBF0010 */  lw         $ra, 0x10($sp)
/* 111944 800F3854 03E00008 */  jr         $ra
/* 111948 800F3858 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F385C
/* 11194C 800F385C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 111950 800F3860 AFB10014 */  sw         $s1, 0x14($sp)
/* 111954 800F3864 00808821 */  addu       $s1, $a0, $zero
/* 111958 800F3868 AFB3001C */  sw         $s3, 0x1C($sp)
/* 11195C 800F386C 00A09821 */  addu       $s3, $a1, $zero
/* 111960 800F3870 26260024 */  addiu      $a2, $s1, 0x24
/* 111964 800F3874 24070477 */  addiu      $a3, $zero, 0x477
/* 111968 800F3878 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11196C 800F387C AFB20018 */  sw         $s2, 0x18($sp)
/* 111970 800F3880 AFB00010 */  sw         $s0, 0x10($sp)
/* 111974 800F3884 8E320000 */  lw         $s2, 0x0($s1)
/* 111978 800F3888 2402004C */  addiu      $v0, $zero, 0x4C
/* 11197C 800F388C A2220024 */  sb         $v0, 0x24($s1)
/* 111980 800F3890 24020052 */  addiu      $v0, $zero, 0x52
/* 111984 800F3894 A2220025 */  sb         $v0, 0x25($s1)
/* 111988 800F3898 24020080 */  addiu      $v0, $zero, 0x80
/* 11198C 800F389C A2220027 */  sb         $v0, 0x27($s1)
/* 111990 800F38A0 24020004 */  addiu      $v0, $zero, 0x4
/* 111994 800F38A4 A2220028 */  sb         $v0, 0x28($s1)
/* 111998 800F38A8 AE2004A4 */  sw         $zero, 0x4A4($s1)
/* 11199C 800F38AC 0C03CE87 */  jal        func_menu_800F3A1C
/* 1119A0 800F38B0 A2320026 */   sb        $s2, 0x26($s1)
/* 1119A4 800F38B4 14400011 */  bnez       $v0, .Lmenu_800F38FC
/* 1119A8 800F38B8 00008021 */   addu      $s0, $zero, $zero
/* 1119AC 800F38BC 0212102B */  sltu       $v0, $s0, $s2
.Lmenu_800F38C0:
/* 1119B0 800F38C0 1040000C */  beqz       $v0, .Lmenu_800F38F4
/* 1119B4 800F38C4 02202021 */   addu      $a0, $s1, $zero
/* 1119B8 800F38C8 0C03BB67 */  jal        func_menu_800EED9C
/* 1119BC 800F38CC 02002821 */   addu      $a1, $s0, $zero
/* 1119C0 800F38D0 02202021 */  addu       $a0, $s1, $zero
/* 1119C4 800F38D4 02602821 */  addu       $a1, $s3, $zero
/* 1119C8 800F38D8 24460014 */  addiu      $a2, $v0, 0x14
/* 1119CC 800F38DC 0C03CE87 */  jal        func_menu_800F3A1C
/* 1119D0 800F38E0 2407022D */   addiu     $a3, $zero, 0x22D
/* 1119D4 800F38E4 14400005 */  bnez       $v0, .Lmenu_800F38FC
/* 1119D8 800F38E8 26100001 */   addiu     $s0, $s0, 0x1
/* 1119DC 800F38EC 0803CE30 */  j          .Lmenu_800F38C0
/* 1119E0 800F38F0 0212102B */   sltu      $v0, $s0, $s2
.Lmenu_800F38F4:
/* 1119E4 800F38F4 AE200020 */  sw         $zero, 0x20($s1)
/* 1119E8 800F38F8 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800F38FC:
/* 1119EC 800F38FC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1119F0 800F3900 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1119F4 800F3904 8FB20018 */  lw         $s2, 0x18($sp)
/* 1119F8 800F3908 8FB10014 */  lw         $s1, 0x14($sp)
/* 1119FC 800F390C 8FB00010 */  lw         $s0, 0x10($sp)
/* 111A00 800F3910 03E00008 */  jr         $ra
/* 111A04 800F3914 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F3918
/* 111A08 800F3918 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 111A0C 800F391C AFB20020 */  sw         $s2, 0x20($sp)
/* 111A10 800F3920 00809021 */  addu       $s2, $a0, $zero
/* 111A14 800F3924 AFB40028 */  sw         $s4, 0x28($sp)
/* 111A18 800F3928 00A0A021 */  addu       $s4, $a1, $zero
/* 111A1C 800F392C 26460024 */  addiu      $a2, $s2, 0x24
/* 111A20 800F3930 24070477 */  addiu      $a3, $zero, 0x477
/* 111A24 800F3934 AFBF002C */  sw         $ra, 0x2C($sp)
/* 111A28 800F3938 AFB30024 */  sw         $s3, 0x24($sp)
/* 111A2C 800F393C AFB1001C */  sw         $s1, 0x1C($sp)
/* 111A30 800F3940 AFB00018 */  sw         $s0, 0x18($sp)
/* 111A34 800F3944 0C03CEC6 */  jal        func_menu_800F3B18
/* 111A38 800F3948 AE4004A4 */   sw        $zero, 0x4A4($s2)
/* 111A3C 800F394C 1440002B */  bnez       $v0, .Lmenu_800F39FC
/* 111A40 800F3950 3C03FFFF */   lui       $v1, (0xFFFF0000 >> 16)
/* 111A44 800F3954 8E420024 */  lw         $v0, 0x24($s2)
/* 111A48 800F3958 00431024 */  and        $v0, $v0, $v1
/* 111A4C 800F395C 3C034C52 */  lui        $v1, (0x4C520000 >> 16)
/* 111A50 800F3960 14430026 */  bne        $v0, $v1, .Lmenu_800F39FC
/* 111A54 800F3964 24020011 */   addiu     $v0, $zero, 0x11
/* 111A58 800F3968 92530026 */  lbu        $s3, 0x26($s2)
/* 111A5C 800F396C 8E42001C */  lw         $v0, 0x1C($s2)
/* 111A60 800F3970 0053102B */  sltu       $v0, $v0, $s3
/* 111A64 800F3974 14400021 */  bnez       $v0, .Lmenu_800F39FC
/* 111A68 800F3978 24020011 */   addiu     $v0, $zero, 0x11
/* 111A6C 800F397C 02402021 */  addu       $a0, $s2, $zero
/* 111A70 800F3980 0C03BAEA */  jal        func_menu_800EEBA8
/* 111A74 800F3984 AE400000 */   sw        $zero, 0x0($s2)
/* 111A78 800F3988 00008821 */  addu       $s1, $zero, $zero
/* 111A7C 800F398C 92420028 */  lbu        $v0, 0x28($s2)
/* 111A80 800F3990 92430027 */  lbu        $v1, 0x27($s2)
/* 111A84 800F3994 00021200 */  sll        $v0, $v0, 8
/* 111A88 800F3998 00621825 */  or         $v1, $v1, $v0
/* 111A8C 800F399C AE4304A4 */  sw         $v1, 0x4A4($s2)
/* 111A90 800F39A0 0233102B */  sltu       $v0, $s1, $s3
.Lmenu_800F39A4:
/* 111A94 800F39A4 10400013 */  beqz       $v0, .Lmenu_800F39F4
/* 111A98 800F39A8 00001021 */   addu      $v0, $zero, $zero
/* 111A9C 800F39AC 0C03BAFD */  jal        func_menu_800EEBF4
/* 111AA0 800F39B0 02402021 */   addu      $a0, $s2, $zero
/* 111AA4 800F39B4 00408021 */  addu       $s0, $v0, $zero
/* 111AA8 800F39B8 02002021 */  addu       $a0, $s0, $zero
/* 111AAC 800F39BC AFB20010 */  sw         $s2, 0x10($sp)
/* 111AB0 800F39C0 8E450008 */  lw         $a1, 0x8($s2)
/* 111AB4 800F39C4 8E46000C */  lw         $a2, 0xC($s2)
/* 111AB8 800F39C8 0C03BBB0 */  jal        func_menu_800EEEC0
/* 111ABC 800F39CC 02203821 */   addu      $a3, $s1, $zero
/* 111AC0 800F39D0 02402021 */  addu       $a0, $s2, $zero
/* 111AC4 800F39D4 02802821 */  addu       $a1, $s4, $zero
/* 111AC8 800F39D8 26060014 */  addiu      $a2, $s0, 0x14
/* 111ACC 800F39DC 0C03CEC6 */  jal        func_menu_800F3B18
/* 111AD0 800F39E0 2407022D */   addiu     $a3, $zero, 0x22D
/* 111AD4 800F39E4 14400005 */  bnez       $v0, .Lmenu_800F39FC
/* 111AD8 800F39E8 26310001 */   addiu     $s1, $s1, 0x1
/* 111ADC 800F39EC 0803CE69 */  j          .Lmenu_800F39A4
/* 111AE0 800F39F0 0233102B */   sltu      $v0, $s1, $s3
.Lmenu_800F39F4:
/* 111AE4 800F39F4 AE530010 */  sw         $s3, 0x10($s2)
/* 111AE8 800F39F8 AE400020 */  sw         $zero, 0x20($s2)
.Lmenu_800F39FC:
/* 111AEC 800F39FC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 111AF0 800F3A00 8FB40028 */  lw         $s4, 0x28($sp)
/* 111AF4 800F3A04 8FB30024 */  lw         $s3, 0x24($sp)
/* 111AF8 800F3A08 8FB20020 */  lw         $s2, 0x20($sp)
/* 111AFC 800F3A0C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 111B00 800F3A10 8FB00018 */  lw         $s0, 0x18($sp)
/* 111B04 800F3A14 03E00008 */  jr         $ra
/* 111B08 800F3A18 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F3A1C
/* 111B0C 800F3A1C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 111B10 800F3A20 AFB3001C */  sw         $s3, 0x1C($sp)
/* 111B14 800F3A24 00809821 */  addu       $s3, $a0, $zero
/* 111B18 800F3A28 AFB50024 */  sw         $s5, 0x24($sp)
/* 111B1C 800F3A2C 00A0A821 */  addu       $s5, $a1, $zero
/* 111B20 800F3A30 AFB10014 */  sw         $s1, 0x14($sp)
/* 111B24 800F3A34 00C08821 */  addu       $s1, $a2, $zero
/* 111B28 800F3A38 AFB40020 */  sw         $s4, 0x20($sp)
/* 111B2C 800F3A3C 0227A021 */  addu       $s4, $s1, $a3
/* 111B30 800F3A40 0234102B */  sltu       $v0, $s1, $s4
/* 111B34 800F3A44 AFBF002C */  sw         $ra, 0x2C($sp)
/* 111B38 800F3A48 AFB60028 */  sw         $s6, 0x28($sp)
/* 111B3C 800F3A4C AFB20018 */  sw         $s2, 0x18($sp)
/* 111B40 800F3A50 10400026 */  beqz       $v0, .Lmenu_800F3AEC
/* 111B44 800F3A54 AFB00010 */   sw        $s0, 0x10($sp)
/* 111B48 800F3A58 3C028013 */  lui        $v0, %hi(D_menu_8012A540)
/* 111B4C 800F3A5C 2452A540 */  addiu      $s2, $v0, %lo(D_menu_8012A540)
/* 111B50 800F3A60 2416007F */  addiu      $s6, $zero, 0x7F
/* 111B54 800F3A64 02918023 */  subu       $s0, $s4, $s1
.Lmenu_800F3A68:
/* 111B58 800F3A68 2E02007F */  sltiu      $v0, $s0, 0x7F
/* 111B5C 800F3A6C 54400003 */  bnel       $v0, $zero, .Lmenu_800F3A7C
/* 111B60 800F3A70 02122021 */   addu      $a0, $s0, $s2
/* 111B64 800F3A74 0803CEA2 */  j          .Lmenu_800F3A88
/* 111B68 800F3A78 2410007F */   addiu     $s0, $zero, 0x7F
.Lmenu_800F3A7C:
/* 111B6C 800F3A7C 00002821 */  addu       $a1, $zero, $zero
/* 111B70 800F3A80 0C000697 */  jal        func_80001A5C
/* 111B74 800F3A84 02D03023 */   subu      $a2, $s6, $s0
.Lmenu_800F3A88:
/* 111B78 800F3A88 02402021 */  addu       $a0, $s2, $zero
/* 111B7C 800F3A8C 02202821 */  addu       $a1, $s1, $zero
/* 111B80 800F3A90 0C006E07 */  jal        strncpy
/* 111B84 800F3A94 02003021 */   addu      $a2, $s0, $zero
/* 111B88 800F3A98 02602021 */  addu       $a0, $s3, $zero
/* 111B8C 800F3A9C 02402821 */  addu       $a1, $s2, $zero
/* 111B90 800F3AA0 0C03CF0B */  jal        func_menu_800F3C2C
/* 111B94 800F3AA4 2406007F */   addiu     $a2, $zero, 0x7F
/* 111B98 800F3AA8 02403021 */  addu       $a2, $s2, $zero
/* 111B9C 800F3AAC 24070080 */  addiu      $a3, $zero, 0x80
/* 111BA0 800F3AB0 A242007F */  sb         $v0, 0x7F($s2)
/* 111BA4 800F3AB4 8EA20028 */  lw         $v0, 0x28($s5)
/* 111BA8 800F3AB8 8E6504A4 */  lw         $a1, 0x4A4($s3)
/* 111BAC 800F3ABC 84440060 */  lh         $a0, 0x60($v0)
/* 111BB0 800F3AC0 8C420064 */  lw         $v0, 0x64($v0)
/* 111BB4 800F3AC4 0040F809 */  jalr       $v0
/* 111BB8 800F3AC8 02A42021 */   addu      $a0, $s5, $a0
/* 111BBC 800F3ACC 14400008 */  bnez       $v0, .Lmenu_800F3AF0
/* 111BC0 800F3AD0 02308821 */   addu      $s1, $s1, $s0
/* 111BC4 800F3AD4 8E6204A4 */  lw         $v0, 0x4A4($s3)
/* 111BC8 800F3AD8 24420080 */  addiu      $v0, $v0, 0x80
/* 111BCC 800F3ADC AE6204A4 */  sw         $v0, 0x4A4($s3)
/* 111BD0 800F3AE0 0234102B */  sltu       $v0, $s1, $s4
/* 111BD4 800F3AE4 1440FFE0 */  bnez       $v0, .Lmenu_800F3A68
/* 111BD8 800F3AE8 02918023 */   subu      $s0, $s4, $s1
.Lmenu_800F3AEC:
/* 111BDC 800F3AEC 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800F3AF0:
/* 111BE0 800F3AF0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 111BE4 800F3AF4 8FB60028 */  lw         $s6, 0x28($sp)
/* 111BE8 800F3AF8 8FB50024 */  lw         $s5, 0x24($sp)
/* 111BEC 800F3AFC 8FB40020 */  lw         $s4, 0x20($sp)
/* 111BF0 800F3B00 8FB3001C */  lw         $s3, 0x1C($sp)
/* 111BF4 800F3B04 8FB20018 */  lw         $s2, 0x18($sp)
/* 111BF8 800F3B08 8FB10014 */  lw         $s1, 0x14($sp)
/* 111BFC 800F3B0C 8FB00010 */  lw         $s0, 0x10($sp)
/* 111C00 800F3B10 03E00008 */  jr         $ra
/* 111C04 800F3B14 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F3B18
/* 111C08 800F3B18 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 111C0C 800F3B1C AFB3002C */  sw         $s3, 0x2C($sp)
/* 111C10 800F3B20 00809821 */  addu       $s3, $a0, $zero
/* 111C14 800F3B24 AFB50034 */  sw         $s5, 0x34($sp)
/* 111C18 800F3B28 00A0A821 */  addu       $s5, $a1, $zero
/* 111C1C 800F3B2C AFB10024 */  sw         $s1, 0x24($sp)
/* 111C20 800F3B30 00C08821 */  addu       $s1, $a2, $zero
/* 111C24 800F3B34 AFB40030 */  sw         $s4, 0x30($sp)
/* 111C28 800F3B38 0227A021 */  addu       $s4, $s1, $a3
/* 111C2C 800F3B3C 0234102B */  sltu       $v0, $s1, $s4
/* 111C30 800F3B40 AFBF0040 */  sw         $ra, 0x40($sp)
/* 111C34 800F3B44 AFB7003C */  sw         $s7, 0x3C($sp)
/* 111C38 800F3B48 AFB60038 */  sw         $s6, 0x38($sp)
/* 111C3C 800F3B4C AFB20028 */  sw         $s2, 0x28($sp)
/* 111C40 800F3B50 1040002A */  beqz       $v0, .Lmenu_800F3BFC
/* 111C44 800F3B54 AFB00020 */   sw        $s0, 0x20($sp)
/* 111C48 800F3B58 3C028013 */  lui        $v0, %hi(D_menu_8012A540)
/* 111C4C 800F3B5C 2452A540 */  addiu      $s2, $v0, %lo(D_menu_8012A540)
/* 111C50 800F3B60 27B60018 */  addiu      $s6, $sp, 0x18
/* 111C54 800F3B64 24170080 */  addiu      $s7, $zero, 0x80
.Lmenu_800F3B68:
/* 111C58 800F3B68 8EA20028 */  lw         $v0, 0x28($s5)
/* 111C5C 800F3B6C 02403021 */  addu       $a2, $s2, $zero
/* 111C60 800F3B70 84440050 */  lh         $a0, 0x50($v0)
/* 111C64 800F3B74 24070080 */  addiu      $a3, $zero, 0x80
/* 111C68 800F3B78 AFB60010 */  sw         $s6, 0x10($sp)
/* 111C6C 800F3B7C 8E6504A4 */  lw         $a1, 0x4A4($s3)
/* 111C70 800F3B80 8C420054 */  lw         $v0, 0x54($v0)
/* 111C74 800F3B84 0040F809 */  jalr       $v0
/* 111C78 800F3B88 02A42021 */   addu      $a0, $s5, $a0
/* 111C7C 800F3B8C 1440001C */  bnez       $v0, .Lmenu_800F3C00
/* 111C80 800F3B90 00000000 */   nop
/* 111C84 800F3B94 8FA20018 */  lw         $v0, 0x18($sp)
/* 111C88 800F3B98 14570019 */  bne        $v0, $s7, .Lmenu_800F3C00
/* 111C8C 800F3B9C 24020011 */   addiu     $v0, $zero, 0x11
/* 111C90 800F3BA0 02602021 */  addu       $a0, $s3, $zero
/* 111C94 800F3BA4 02402821 */  addu       $a1, $s2, $zero
/* 111C98 800F3BA8 0C03CF0B */  jal        func_menu_800F3C2C
/* 111C9C 800F3BAC 2406007F */   addiu     $a2, $zero, 0x7F
/* 111CA0 800F3BB0 9243007F */  lbu        $v1, 0x7F($s2)
/* 111CA4 800F3BB4 304200FF */  andi       $v0, $v0, 0xFF
/* 111CA8 800F3BB8 14620011 */  bne        $v1, $v0, .Lmenu_800F3C00
/* 111CAC 800F3BBC 24020011 */   addiu     $v0, $zero, 0x11
/* 111CB0 800F3BC0 02918023 */  subu       $s0, $s4, $s1
/* 111CB4 800F3BC4 2E02007F */  sltiu      $v0, $s0, 0x7F
/* 111CB8 800F3BC8 50400001 */  beql       $v0, $zero, .Lmenu_800F3BD0
/* 111CBC 800F3BCC 2410007F */   addiu     $s0, $zero, 0x7F
.Lmenu_800F3BD0:
/* 111CC0 800F3BD0 02202021 */  addu       $a0, $s1, $zero
/* 111CC4 800F3BD4 02402821 */  addu       $a1, $s2, $zero
/* 111CC8 800F3BD8 0C006E07 */  jal        strncpy
/* 111CCC 800F3BDC 02003021 */   addu      $a2, $s0, $zero
/* 111CD0 800F3BE0 8E6204A4 */  lw         $v0, 0x4A4($s3)
/* 111CD4 800F3BE4 02308821 */  addu       $s1, $s1, $s0
/* 111CD8 800F3BE8 24420080 */  addiu      $v0, $v0, 0x80
/* 111CDC 800F3BEC AE6204A4 */  sw         $v0, 0x4A4($s3)
/* 111CE0 800F3BF0 0234102B */  sltu       $v0, $s1, $s4
/* 111CE4 800F3BF4 1440FFDC */  bnez       $v0, .Lmenu_800F3B68
/* 111CE8 800F3BF8 00000000 */   nop
.Lmenu_800F3BFC:
/* 111CEC 800F3BFC 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800F3C00:
/* 111CF0 800F3C00 8FBF0040 */  lw         $ra, 0x40($sp)
/* 111CF4 800F3C04 8FB7003C */  lw         $s7, 0x3C($sp)
/* 111CF8 800F3C08 8FB60038 */  lw         $s6, 0x38($sp)
/* 111CFC 800F3C0C 8FB50034 */  lw         $s5, 0x34($sp)
/* 111D00 800F3C10 8FB40030 */  lw         $s4, 0x30($sp)
/* 111D04 800F3C14 8FB3002C */  lw         $s3, 0x2C($sp)
/* 111D08 800F3C18 8FB20028 */  lw         $s2, 0x28($sp)
/* 111D0C 800F3C1C 8FB10024 */  lw         $s1, 0x24($sp)
/* 111D10 800F3C20 8FB00020 */  lw         $s0, 0x20($sp)
/* 111D14 800F3C24 03E00008 */  jr         $ra
/* 111D18 800F3C28 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_menu_800F3C2C
/* 111D1C 800F3C2C 00001821 */  addu       $v1, $zero, $zero
/* 111D20 800F3C30 10C00008 */  beqz       $a2, .Lmenu_800F3C54
/* 111D24 800F3C34 00602021 */   addu      $a0, $v1, $zero
/* 111D28 800F3C38 00A31021 */  addu       $v0, $a1, $v1
.Lmenu_800F3C3C:
/* 111D2C 800F3C3C 90420000 */  lbu        $v0, 0x0($v0)
/* 111D30 800F3C40 24630001 */  addiu      $v1, $v1, 0x1
/* 111D34 800F3C44 00822021 */  addu       $a0, $a0, $v0
/* 111D38 800F3C48 0066102B */  sltu       $v0, $v1, $a2
/* 111D3C 800F3C4C 1440FFFB */  bnez       $v0, .Lmenu_800F3C3C
/* 111D40 800F3C50 00A31021 */   addu      $v0, $a1, $v1
.Lmenu_800F3C54:
/* 111D44 800F3C54 03E00008 */  jr         $ra
/* 111D48 800F3C58 00801021 */   addu      $v0, $a0, $zero

glabel func_menu_800F3C5C
/* 111D4C 800F3C5C 00806021 */  addu       $t4, $a0, $zero
/* 111D50 800F3C60 00A06821 */  addu       $t5, $a1, $zero
/* 111D54 800F3C64 9182036D */  lbu        $v0, 0x36D($t4)
/* 111D58 800F3C68 00003021 */  addu       $a2, $zero, $zero
/* 111D5C 800F3C6C A1A20000 */  sb         $v0, 0x0($t5)
/* 111D60 800F3C70 01A61821 */  addu       $v1, $t5, $a2
.Lmenu_800F3C74:
/* 111D64 800F3C74 00CC1021 */  addu       $v0, $a2, $t4
/* 111D68 800F3C78 9042036E */  lbu        $v0, 0x36E($v0)
/* 111D6C 800F3C7C 24C60001 */  addiu      $a2, $a2, 0x1
/* 111D70 800F3C80 A0620001 */  sb         $v0, 0x1($v1)
/* 111D74 800F3C84 2CC20010 */  sltiu      $v0, $a2, 0x10
/* 111D78 800F3C88 1440FFFA */  bnez       $v0, .Lmenu_800F3C74
/* 111D7C 800F3C8C 01A61821 */   addu      $v1, $t5, $a2
/* 111D80 800F3C90 9182037E */  lbu        $v0, 0x37E($t4)
/* 111D84 800F3C94 A1A20011 */  sb         $v0, 0x11($t5)
/* 111D88 800F3C98 9182037F */  lbu        $v0, 0x37F($t4)
/* 111D8C 800F3C9C A1A20012 */  sb         $v0, 0x12($t5)
/* 111D90 800F3CA0 91820380 */  lbu        $v0, 0x380($t4)
/* 111D94 800F3CA4 A1A20013 */  sb         $v0, 0x13($t5)
/* 111D98 800F3CA8 91820381 */  lbu        $v0, 0x381($t4)
/* 111D9C 800F3CAC A1A20014 */  sb         $v0, 0x14($t5)
/* 111DA0 800F3CB0 91820382 */  lbu        $v0, 0x382($t4)
/* 111DA4 800F3CB4 24080361 */  addiu      $t0, $zero, 0x361
/* 111DA8 800F3CB8 A1A20015 */  sb         $v0, 0x15($t5)
/* 111DAC 800F3CBC 91820383 */  lbu        $v0, 0x383($t4)
/* 111DB0 800F3CC0 00002821 */  addu       $a1, $zero, $zero
/* 111DB4 800F3CC4 A1A20016 */  sb         $v0, 0x16($t5)
/* 111DB8 800F3CC8 91820384 */  lbu        $v0, 0x384($t4)
/* 111DBC 800F3CCC 01A02021 */  addu       $a0, $t5, $zero
/* 111DC0 800F3CD0 A1A20017 */  sb         $v0, 0x17($t5)
.Lmenu_800F3CD4:
/* 111DC4 800F3CD4 01881021 */  addu       $v0, $t4, $t0
/* 111DC8 800F3CD8 90420024 */  lbu        $v0, 0x24($v0)
/* 111DCC 800F3CDC A082035C */  sb         $v0, 0x35C($a0)
/* 111DD0 800F3CE0 010C1021 */  addu       $v0, $t0, $t4
/* 111DD4 800F3CE4 90420025 */  lbu        $v0, 0x25($v0)
/* 111DD8 800F3CE8 A082035D */  sb         $v0, 0x35D($a0)
/* 111DDC 800F3CEC 010C1021 */  addu       $v0, $t0, $t4
/* 111DE0 800F3CF0 00401821 */  addu       $v1, $v0, $zero
/* 111DE4 800F3CF4 90420026 */  lbu        $v0, 0x26($v0)
/* 111DE8 800F3CF8 24A50001 */  addiu      $a1, $a1, 0x1
/* 111DEC 800F3CFC A082035E */  sb         $v0, 0x35E($a0)
/* 111DF0 800F3D00 90620027 */  lbu        $v0, 0x27($v1)
/* 111DF4 800F3D04 25080004 */  addiu      $t0, $t0, 0x4
/* 111DF8 800F3D08 A082035F */  sb         $v0, 0x35F($a0)
/* 111DFC 800F3D0C 2CA20002 */  sltiu      $v0, $a1, 0x2
/* 111E00 800F3D10 1440FFF0 */  bnez       $v0, .Lmenu_800F3CD4
/* 111E04 800F3D14 24840004 */   addiu     $a0, $a0, 0x4
/* 111E08 800F3D18 0000C021 */  addu       $t8, $zero, $zero
/* 111E0C 800F3D1C 240F036B */  addiu      $t7, $zero, 0x36B
/* 111E10 800F3D20 240E036A */  addiu      $t6, $zero, 0x36A
/* 111E14 800F3D24 01A05021 */  addu       $t2, $t5, $zero
/* 111E18 800F3D28 240B0369 */  addiu      $t3, $zero, 0x369
/* 111E1C 800F3D2C 25B900C8 */  addiu      $t9, $t5, 0xC8
.Lmenu_800F3D30:
/* 111E20 800F3D30 018B1021 */  addu       $v0, $t4, $t3
/* 111E24 800F3D34 90420024 */  lbu        $v0, 0x24($v0)
/* 111E28 800F3D38 00004821 */  addu       $t1, $zero, $zero
/* 111E2C 800F3D3C A1420364 */  sb         $v0, 0x364($t2)
/* 111E30 800F3D40 018E1021 */  addu       $v0, $t4, $t6
/* 111E34 800F3D44 90420024 */  lbu        $v0, 0x24($v0)
/* 111E38 800F3D48 03004021 */  addu       $t0, $t8, $zero
/* 111E3C 800F3D4C A1420365 */  sb         $v0, 0x365($t2)
/* 111E40 800F3D50 018F1021 */  addu       $v0, $t4, $t7
/* 111E44 800F3D54 90420024 */  lbu        $v0, 0x24($v0)
/* 111E48 800F3D58 24070003 */  addiu      $a3, $zero, 0x3
/* 111E4C 800F3D5C A1420366 */  sb         $v0, 0x366($t2)
.Lmenu_800F3D60:
/* 111E50 800F3D60 01A83021 */  addu       $a2, $t5, $t0
/* 111E54 800F3D64 25080004 */  addiu      $t0, $t0, 0x4
/* 111E58 800F3D68 01671821 */  addu       $v1, $t3, $a3
/* 111E5C 800F3D6C 006C1821 */  addu       $v1, $v1, $t4
/* 111E60 800F3D70 25290001 */  addiu      $t1, $t1, 0x1
/* 111E64 800F3D74 90650025 */  lbu        $a1, 0x25($v1)
/* 111E68 800F3D78 90620024 */  lbu        $v0, 0x24($v1)
/* 111E6C 800F3D7C 90640026 */  lbu        $a0, 0x26($v1)
/* 111E70 800F3D80 90630027 */  lbu        $v1, 0x27($v1)
/* 111E74 800F3D84 00052A00 */  sll        $a1, $a1, 8
/* 111E78 800F3D88 00451021 */  addu       $v0, $v0, $a1
/* 111E7C 800F3D8C 00042400 */  sll        $a0, $a0, 16
/* 111E80 800F3D90 00441021 */  addu       $v0, $v0, $a0
/* 111E84 800F3D94 00031E00 */  sll        $v1, $v1, 24
/* 111E88 800F3D98 00431021 */  addu       $v0, $v0, $v1
/* 111E8C 800F3D9C ACC20368 */  sw         $v0, 0x368($a2)
/* 111E90 800F3DA0 2D220009 */  sltiu      $v0, $t1, 0x9
/* 111E94 800F3DA4 1440FFEE */  bnez       $v0, .Lmenu_800F3D60
/* 111E98 800F3DA8 24E70004 */   addiu     $a3, $a3, 0x4
/* 111E9C 800F3DAC 27180028 */  addiu      $t8, $t8, 0x28
/* 111EA0 800F3DB0 25EF0027 */  addiu      $t7, $t7, 0x27
/* 111EA4 800F3DB4 25CE0027 */  addiu      $t6, $t6, 0x27
/* 111EA8 800F3DB8 254A0028 */  addiu      $t2, $t2, 0x28
/* 111EAC 800F3DBC 0159102B */  sltu       $v0, $t2, $t9
/* 111EB0 800F3DC0 1440FFDB */  bnez       $v0, .Lmenu_800F3D30
/* 111EB4 800F3DC4 256B0027 */   addiu     $t3, $t3, 0x27
/* 111EB8 800F3DC8 00004021 */  addu       $t0, $zero, $zero
/* 111EBC 800F3DCC 01005021 */  addu       $t2, $t0, $zero
/* 111EC0 800F3DD0 01A05821 */  addu       $t3, $t5, $zero
/* 111EC4 800F3DD4 91820029 */  lbu        $v0, 0x29($t4)
/* 111EC8 800F3DD8 240F004D */  addiu      $t7, $zero, 0x4D
/* 111ECC 800F3DDC A1A20018 */  sb         $v0, 0x18($t5)
/* 111ED0 800F3DE0 9182002A */  lbu        $v0, 0x2A($t4)
/* 111ED4 800F3DE4 240E002D */  addiu      $t6, $zero, 0x2D
/* 111ED8 800F3DE8 A1A20019 */  sb         $v0, 0x19($t5)
/* 111EDC 800F3DEC 9182002C */  lbu        $v0, 0x2C($t4)
/* 111EE0 800F3DF0 9183002B */  lbu        $v1, 0x2B($t4)
/* 111EE4 800F3DF4 00021200 */  sll        $v0, $v0, 8
/* 111EE8 800F3DF8 00621821 */  addu       $v1, $v1, $v0
/* 111EEC 800F3DFC A5A3001A */  sh         $v1, 0x1A($t5)
.Lmenu_800F3E00:
/* 111EF0 800F3E00 018E3821 */  addu       $a3, $t4, $t6
/* 111EF4 800F3E04 90E20000 */  lbu        $v0, 0x0($a3)
/* 111EF8 800F3E08 90E30001 */  lbu        $v1, 0x1($a3)
/* 111EFC 800F3E0C 90E40002 */  lbu        $a0, 0x2($a3)
/* 111F00 800F3E10 90E50003 */  lbu        $a1, 0x3($a3)
/* 111F04 800F3E14 24E70004 */  addiu      $a3, $a3, 0x4
/* 111F08 800F3E18 00003021 */  addu       $a2, $zero, $zero
/* 111F0C 800F3E1C 00031A00 */  sll        $v1, $v1, 8
/* 111F10 800F3E20 00431021 */  addu       $v0, $v0, $v1
/* 111F14 800F3E24 00042400 */  sll        $a0, $a0, 16
/* 111F18 800F3E28 00441021 */  addu       $v0, $v0, $a0
/* 111F1C 800F3E2C 00052E00 */  sll        $a1, $a1, 24
/* 111F20 800F3E30 00451021 */  addu       $v0, $v0, $a1
/* 111F24 800F3E34 AD62001C */  sw         $v0, 0x1C($t3)
/* 111F28 800F3E38 00CA1021 */  addu       $v0, $a2, $t2
.Lmenu_800F3E3C:
/* 111F2C 800F3E3C 00E61821 */  addu       $v1, $a3, $a2
/* 111F30 800F3E40 24C60001 */  addiu      $a2, $a2, 0x1
/* 111F34 800F3E44 90630000 */  lbu        $v1, 0x0($v1)
/* 111F38 800F3E48 01A21021 */  addu       $v0, $t5, $v0
/* 111F3C 800F3E4C A0430084 */  sb         $v1, 0x84($v0)
/* 111F40 800F3E50 2CC2001C */  sltiu      $v0, $a2, 0x1C
/* 111F44 800F3E54 1440FFF9 */  bnez       $v0, .Lmenu_800F3E3C
/* 111F48 800F3E58 00CA1021 */   addu      $v0, $a2, $t2
/* 111F4C 800F3E5C 018F3821 */  addu       $a3, $t4, $t7
/* 111F50 800F3E60 90E20000 */  lbu        $v0, 0x0($a3)
/* 111F54 800F3E64 90E30001 */  lbu        $v1, 0x1($a3)
/* 111F58 800F3E68 90E40002 */  lbu        $a0, 0x2($a3)
/* 111F5C 800F3E6C 90E50003 */  lbu        $a1, 0x3($a3)
/* 111F60 800F3E70 24E70004 */  addiu      $a3, $a3, 0x4
/* 111F64 800F3E74 00003021 */  addu       $a2, $zero, $zero
/* 111F68 800F3E78 01404821 */  addu       $t1, $t2, $zero
/* 111F6C 800F3E7C 00031A00 */  sll        $v1, $v1, 8
/* 111F70 800F3E80 00431021 */  addu       $v0, $v0, $v1
/* 111F74 800F3E84 00042400 */  sll        $a0, $a0, 16
/* 111F78 800F3E88 00441021 */  addu       $v0, $v0, $a0
/* 111F7C 800F3E8C 00052E00 */  sll        $a1, $a1, 24
/* 111F80 800F3E90 00451021 */  addu       $v0, $v0, $a1
/* 111F84 800F3E94 AD620050 */  sw         $v0, 0x50($t3)
/* 111F88 800F3E98 00C91021 */  addu       $v0, $a2, $t1
.Lmenu_800F3E9C:
/* 111F8C 800F3E9C 00E61821 */  addu       $v1, $a3, $a2
/* 111F90 800F3EA0 24C60001 */  addiu      $a2, $a2, 0x1
/* 111F94 800F3EA4 90630000 */  lbu        $v1, 0x0($v1)
/* 111F98 800F3EA8 01A21021 */  addu       $v0, $t5, $v0
/* 111F9C 800F3EAC A04301F0 */  sb         $v1, 0x1F0($v0)
/* 111FA0 800F3EB0 2CC2001C */  sltiu      $v0, $a2, 0x1C
/* 111FA4 800F3EB4 1440FFF9 */  bnez       $v0, .Lmenu_800F3E9C
/* 111FA8 800F3EB8 00C91021 */   addu      $v0, $a2, $t1
/* 111FAC 800F3EBC 254A001C */  addiu      $t2, $t2, 0x1C
/* 111FB0 800F3EC0 256B0004 */  addiu      $t3, $t3, 0x4
/* 111FB4 800F3EC4 25EF0040 */  addiu      $t7, $t7, 0x40
/* 111FB8 800F3EC8 25080001 */  addiu      $t0, $t0, 0x1
/* 111FBC 800F3ECC 2D02000D */  sltiu      $v0, $t0, 0xD
/* 111FC0 800F3ED0 1440FFCB */  bnez       $v0, .Lmenu_800F3E00
/* 111FC4 800F3ED4 25CE0040 */   addiu     $t6, $t6, 0x40
/* 111FC8 800F3ED8 03E00008 */  jr         $ra
/* 111FCC 800F3EDC 00000000 */   nop

glabel func_menu_800F3EE0
/* 111FD0 800F3EE0 00805021 */  addu       $t2, $a0, $zero
/* 111FD4 800F3EE4 00A05821 */  addu       $t3, $a1, $zero
/* 111FD8 800F3EE8 91620000 */  lbu        $v0, 0x0($t3)
/* 111FDC 800F3EEC 00002021 */  addu       $a0, $zero, $zero
/* 111FE0 800F3EF0 A142036D */  sb         $v0, 0x36D($t2)
/* 111FE4 800F3EF4 008A1821 */  addu       $v1, $a0, $t2
.Lmenu_800F3EF8:
/* 111FE8 800F3EF8 01641021 */  addu       $v0, $t3, $a0
/* 111FEC 800F3EFC 90420001 */  lbu        $v0, 0x1($v0)
/* 111FF0 800F3F00 24840001 */  addiu      $a0, $a0, 0x1
/* 111FF4 800F3F04 A062036E */  sb         $v0, 0x36E($v1)
/* 111FF8 800F3F08 2C820010 */  sltiu      $v0, $a0, 0x10
/* 111FFC 800F3F0C 1440FFFA */  bnez       $v0, .Lmenu_800F3EF8
/* 112000 800F3F10 008A1821 */   addu      $v1, $a0, $t2
/* 112004 800F3F14 91620011 */  lbu        $v0, 0x11($t3)
/* 112008 800F3F18 A142037E */  sb         $v0, 0x37E($t2)
/* 11200C 800F3F1C 91620012 */  lbu        $v0, 0x12($t3)
/* 112010 800F3F20 A142037F */  sb         $v0, 0x37F($t2)
/* 112014 800F3F24 91620013 */  lbu        $v0, 0x13($t3)
/* 112018 800F3F28 A1420380 */  sb         $v0, 0x380($t2)
/* 11201C 800F3F2C 91620014 */  lbu        $v0, 0x14($t3)
/* 112020 800F3F30 A1420381 */  sb         $v0, 0x381($t2)
/* 112024 800F3F34 91620015 */  lbu        $v0, 0x15($t3)
/* 112028 800F3F38 24070361 */  addiu      $a3, $zero, 0x361
/* 11202C 800F3F3C A1420382 */  sb         $v0, 0x382($t2)
/* 112030 800F3F40 91620016 */  lbu        $v0, 0x16($t3)
/* 112034 800F3F44 00004021 */  addu       $t0, $zero, $zero
/* 112038 800F3F48 A1420383 */  sb         $v0, 0x383($t2)
/* 11203C 800F3F4C 91620017 */  lbu        $v0, 0x17($t3)
/* 112040 800F3F50 01603021 */  addu       $a2, $t3, $zero
/* 112044 800F3F54 A1420384 */  sb         $v0, 0x384($t2)
.Lmenu_800F3F58:
/* 112048 800F3F58 01471021 */  addu       $v0, $t2, $a3
/* 11204C 800F3F5C 90C3035C */  lbu        $v1, 0x35C($a2)
/* 112050 800F3F60 25080001 */  addiu      $t0, $t0, 0x1
/* 112054 800F3F64 A0430024 */  sb         $v1, 0x24($v0)
/* 112058 800F3F68 00EA1821 */  addu       $v1, $a3, $t2
/* 11205C 800F3F6C 00602021 */  addu       $a0, $v1, $zero
/* 112060 800F3F70 90C2035D */  lbu        $v0, 0x35D($a2)
/* 112064 800F3F74 00602821 */  addu       $a1, $v1, $zero
/* 112068 800F3F78 A0620025 */  sb         $v0, 0x25($v1)
/* 11206C 800F3F7C 90C2035E */  lbu        $v0, 0x35E($a2)
/* 112070 800F3F80 24E70004 */  addiu      $a3, $a3, 0x4
/* 112074 800F3F84 A0820026 */  sb         $v0, 0x26($a0)
/* 112078 800F3F88 90C2035F */  lbu        $v0, 0x35F($a2)
/* 11207C 800F3F8C A0A20027 */  sb         $v0, 0x27($a1)
/* 112080 800F3F90 2D020002 */  sltiu      $v0, $t0, 0x2
/* 112084 800F3F94 1440FFF0 */  bnez       $v0, .Lmenu_800F3F58
/* 112088 800F3F98 24C60004 */   addiu     $a2, $a2, 0x4
/* 11208C 800F3F9C 00007021 */  addu       $t6, $zero, $zero
/* 112090 800F3FA0 240D036B */  addiu      $t5, $zero, 0x36B
/* 112094 800F3FA4 240C036A */  addiu      $t4, $zero, 0x36A
/* 112098 800F3FA8 01604021 */  addu       $t0, $t3, $zero
/* 11209C 800F3FAC 24090369 */  addiu      $t1, $zero, 0x369
/* 1120A0 800F3FB0 256F00C8 */  addiu      $t7, $t3, 0xC8
.Lmenu_800F3FB4:
/* 1120A4 800F3FB4 00003821 */  addu       $a3, $zero, $zero
/* 1120A8 800F3FB8 01C03021 */  addu       $a2, $t6, $zero
/* 1120AC 800F3FBC 24050003 */  addiu      $a1, $zero, 0x3
/* 1120B0 800F3FC0 91030364 */  lbu        $v1, 0x364($t0)
/* 1120B4 800F3FC4 01491021 */  addu       $v0, $t2, $t1
/* 1120B8 800F3FC8 A0430024 */  sb         $v1, 0x24($v0)
/* 1120BC 800F3FCC 91030365 */  lbu        $v1, 0x365($t0)
/* 1120C0 800F3FD0 014C1021 */  addu       $v0, $t2, $t4
/* 1120C4 800F3FD4 A0430024 */  sb         $v1, 0x24($v0)
/* 1120C8 800F3FD8 91030366 */  lbu        $v1, 0x366($t0)
/* 1120CC 800F3FDC 014D1021 */  addu       $v0, $t2, $t5
/* 1120D0 800F3FE0 A0430024 */  sb         $v1, 0x24($v0)
.Lmenu_800F3FE4:
/* 1120D4 800F3FE4 01251821 */  addu       $v1, $t1, $a1
/* 1120D8 800F3FE8 01662021 */  addu       $a0, $t3, $a2
/* 1120DC 800F3FEC 9082036B */  lbu        $v0, 0x36B($a0)
/* 1120E0 800F3FF0 006A1821 */  addu       $v1, $v1, $t2
/* 1120E4 800F3FF4 A0620024 */  sb         $v0, 0x24($v1)
/* 1120E8 800F3FF8 8C820368 */  lw         $v0, 0x368($a0)
/* 1120EC 800F3FFC 24C60004 */  addiu      $a2, $a2, 0x4
/* 1120F0 800F4000 00021202 */  srl        $v0, $v0, 8
/* 1120F4 800F4004 A0620025 */  sb         $v0, 0x25($v1)
/* 1120F8 800F4008 94820368 */  lhu        $v0, 0x368($a0)
/* 1120FC 800F400C A0620026 */  sb         $v0, 0x26($v1)
/* 112100 800F4010 90820368 */  lbu        $v0, 0x368($a0)
/* 112104 800F4014 24E70001 */  addiu      $a3, $a3, 0x1
/* 112108 800F4018 A0620027 */  sb         $v0, 0x27($v1)
/* 11210C 800F401C 2CE20009 */  sltiu      $v0, $a3, 0x9
/* 112110 800F4020 1440FFF0 */  bnez       $v0, .Lmenu_800F3FE4
/* 112114 800F4024 24A50004 */   addiu     $a1, $a1, 0x4
/* 112118 800F4028 25CE0028 */  addiu      $t6, $t6, 0x28
/* 11211C 800F402C 25AD0027 */  addiu      $t5, $t5, 0x27
/* 112120 800F4030 258C0027 */  addiu      $t4, $t4, 0x27
/* 112124 800F4034 25080028 */  addiu      $t0, $t0, 0x28
/* 112128 800F4038 010F102B */  sltu       $v0, $t0, $t7
/* 11212C 800F403C 1440FFDD */  bnez       $v0, .Lmenu_800F3FB4
/* 112130 800F4040 25290027 */   addiu     $t1, $t1, 0x27
/* 112134 800F4044 00003821 */  addu       $a3, $zero, $zero
/* 112138 800F4048 91620018 */  lbu        $v0, 0x18($t3)
/* 11213C 800F404C 00E04821 */  addu       $t1, $a3, $zero
/* 112140 800F4050 A1420029 */  sb         $v0, 0x29($t2)
/* 112144 800F4054 91620019 */  lbu        $v0, 0x19($t3)
/* 112148 800F4058 01603021 */  addu       $a2, $t3, $zero
/* 11214C 800F405C A142002A */  sb         $v0, 0x2A($t2)
/* 112150 800F4060 9162001B */  lbu        $v0, 0x1B($t3)
/* 112154 800F4064 240D004D */  addiu      $t5, $zero, 0x4D
/* 112158 800F4068 A142002B */  sb         $v0, 0x2B($t2)
/* 11215C 800F406C 9562001A */  lhu        $v0, 0x1A($t3)
/* 112160 800F4070 240C002D */  addiu      $t4, $zero, 0x2D
/* 112164 800F4074 00021202 */  srl        $v0, $v0, 8
/* 112168 800F4078 A142002C */  sb         $v0, 0x2C($t2)
.Lmenu_800F407C:
/* 11216C 800F407C 90C2001F */  lbu        $v0, 0x1F($a2)
/* 112170 800F4080 014C2821 */  addu       $a1, $t2, $t4
/* 112174 800F4084 A0A20000 */  sb         $v0, 0x0($a1)
/* 112178 800F4088 8CC2001C */  lw         $v0, 0x1C($a2)
/* 11217C 800F408C 00021202 */  srl        $v0, $v0, 8
/* 112180 800F4090 A0A20001 */  sb         $v0, 0x1($a1)
/* 112184 800F4094 94C2001C */  lhu        $v0, 0x1C($a2)
/* 112188 800F4098 A0A20002 */  sb         $v0, 0x2($a1)
/* 11218C 800F409C 90C2001C */  lbu        $v0, 0x1C($a2)
/* 112190 800F40A0 00002021 */  addu       $a0, $zero, $zero
/* 112194 800F40A4 A0A20003 */  sb         $v0, 0x3($a1)
/* 112198 800F40A8 24A50004 */  addiu      $a1, $a1, 0x4
/* 11219C 800F40AC 00A41821 */  addu       $v1, $a1, $a0
.Lmenu_800F40B0:
/* 1121A0 800F40B0 00891021 */  addu       $v0, $a0, $t1
/* 1121A4 800F40B4 01621021 */  addu       $v0, $t3, $v0
/* 1121A8 800F40B8 90420084 */  lbu        $v0, 0x84($v0)
/* 1121AC 800F40BC 24840001 */  addiu      $a0, $a0, 0x1
/* 1121B0 800F40C0 A0620000 */  sb         $v0, 0x0($v1)
/* 1121B4 800F40C4 2C82001C */  sltiu      $v0, $a0, 0x1C
/* 1121B8 800F40C8 1440FFF9 */  bnez       $v0, .Lmenu_800F40B0
/* 1121BC 800F40CC 00A41821 */   addu      $v1, $a1, $a0
/* 1121C0 800F40D0 90C20053 */  lbu        $v0, 0x53($a2)
/* 1121C4 800F40D4 014D2821 */  addu       $a1, $t2, $t5
/* 1121C8 800F40D8 A0A20000 */  sb         $v0, 0x0($a1)
/* 1121CC 800F40DC 8CC20050 */  lw         $v0, 0x50($a2)
/* 1121D0 800F40E0 00021202 */  srl        $v0, $v0, 8
/* 1121D4 800F40E4 A0A20001 */  sb         $v0, 0x1($a1)
/* 1121D8 800F40E8 94C20050 */  lhu        $v0, 0x50($a2)
/* 1121DC 800F40EC 00002021 */  addu       $a0, $zero, $zero
/* 1121E0 800F40F0 A0A20002 */  sb         $v0, 0x2($a1)
/* 1121E4 800F40F4 90C20050 */  lbu        $v0, 0x50($a2)
/* 1121E8 800F40F8 01204021 */  addu       $t0, $t1, $zero
/* 1121EC 800F40FC A0A20003 */  sb         $v0, 0x3($a1)
/* 1121F0 800F4100 24A50004 */  addiu      $a1, $a1, 0x4
/* 1121F4 800F4104 00A41821 */  addu       $v1, $a1, $a0
.Lmenu_800F4108:
/* 1121F8 800F4108 00881021 */  addu       $v0, $a0, $t0
/* 1121FC 800F410C 01621021 */  addu       $v0, $t3, $v0
/* 112200 800F4110 904201F0 */  lbu        $v0, 0x1F0($v0)
/* 112204 800F4114 24840001 */  addiu      $a0, $a0, 0x1
/* 112208 800F4118 A0620000 */  sb         $v0, 0x0($v1)
/* 11220C 800F411C 2C82001C */  sltiu      $v0, $a0, 0x1C
/* 112210 800F4120 5440FFF9 */  bnel       $v0, $zero, .Lmenu_800F4108
/* 112214 800F4124 00A41821 */   addu      $v1, $a1, $a0
/* 112218 800F4128 2529001C */  addiu      $t1, $t1, 0x1C
/* 11221C 800F412C 24C60004 */  addiu      $a2, $a2, 0x4
/* 112220 800F4130 25AD0040 */  addiu      $t5, $t5, 0x40
/* 112224 800F4134 24E70001 */  addiu      $a3, $a3, 0x1
/* 112228 800F4138 2CE2000D */  sltiu      $v0, $a3, 0xD
/* 11222C 800F413C 1440FFCF */  bnez       $v0, .Lmenu_800F407C
/* 112230 800F4140 258C0040 */   addiu     $t4, $t4, 0x40
/* 112234 800F4144 03E00008 */  jr         $ra
/* 112238 800F4148 00000000 */   nop
