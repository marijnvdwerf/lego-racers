.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800ED8F0
/* 10B9E0 800ED8F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B9E4 800ED8F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 10B9E8 800ED8F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10B9EC 800ED8FC 0C03B657 */  jal        func_menu_800ED95C
/* 10B9F0 800ED900 00808021 */   addu      $s0, $a0, $zero
/* 10B9F4 800ED904 02001021 */  addu       $v0, $s0, $zero
/* 10B9F8 800ED908 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10B9FC 800ED90C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10BA00 800ED910 03E00008 */  jr         $ra
/* 10BA04 800ED914 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ED918
/* 10BA08 800ED918 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10BA0C 800ED91C AFB10014 */  sw         $s1, 0x14($sp)
/* 10BA10 800ED920 00808821 */  addu       $s1, $a0, $zero
/* 10BA14 800ED924 AFB00010 */  sw         $s0, 0x10($sp)
/* 10BA18 800ED928 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10BA1C 800ED92C 0C03B6DD */  jal        func_menu_800EDB74
/* 10BA20 800ED930 00A08021 */   addu      $s0, $a1, $zero
/* 10BA24 800ED934 32100001 */  andi       $s0, $s0, 0x1
/* 10BA28 800ED938 12000003 */  beqz       $s0, .Lmenu_800ED948
/* 10BA2C 800ED93C 00000000 */   nop
/* 10BA30 800ED940 0C01FB5C */  jal        func_8007ED70
/* 10BA34 800ED944 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800ED948:
/* 10BA38 800ED948 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10BA3C 800ED94C 8FB10014 */  lw         $s1, 0x14($sp)
/* 10BA40 800ED950 8FB00010 */  lw         $s0, 0x10($sp)
/* 10BA44 800ED954 03E00008 */  jr         $ra
/* 10BA48 800ED958 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800ED95C
/* 10BA4C 800ED95C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10BA50 800ED960 AFB00010 */  sw         $s0, 0x10($sp)
/* 10BA54 800ED964 00808021 */  addu       $s0, $a0, $zero
/* 10BA58 800ED968 26040004 */  addiu      $a0, $s0, 0x4
/* 10BA5C 800ED96C 00002821 */  addu       $a1, $zero, $zero
/* 10BA60 800ED970 24060008 */  addiu      $a2, $zero, 0x8
/* 10BA64 800ED974 2402FFFF */  addiu      $v0, $zero, -0x1
/* 10BA68 800ED978 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10BA6C 800ED97C AE000000 */  sw         $zero, 0x0($s0)
/* 10BA70 800ED980 AE000014 */  sw         $zero, 0x14($s0)
/* 10BA74 800ED984 AE020058 */  sw         $v0, 0x58($s0)
/* 10BA78 800ED988 AE00005C */  sw         $zero, 0x5C($s0)
/* 10BA7C 800ED98C 0C000697 */  jal        func_80001A5C
/* 10BA80 800ED990 A6000060 */   sh        $zero, 0x60($s0)
/* 10BA84 800ED994 2604000C */  addiu      $a0, $s0, 0xC
/* 10BA88 800ED998 00002821 */  addu       $a1, $zero, $zero
/* 10BA8C 800ED99C 0C000697 */  jal        func_80001A5C
/* 10BA90 800ED9A0 24060008 */   addiu     $a2, $zero, 0x8
/* 10BA94 800ED9A4 26040018 */  addiu      $a0, $s0, 0x18
/* 10BA98 800ED9A8 00002821 */  addu       $a1, $zero, $zero
/* 10BA9C 800ED9AC 0C000697 */  jal        func_80001A5C
/* 10BAA0 800ED9B0 24060030 */   addiu     $a2, $zero, 0x30
/* 10BAA4 800ED9B4 26040048 */  addiu      $a0, $s0, 0x48
/* 10BAA8 800ED9B8 00002821 */  addu       $a1, $zero, $zero
/* 10BAAC 800ED9BC 0C000697 */  jal        func_80001A5C
/* 10BAB0 800ED9C0 24060010 */   addiu     $a2, $zero, 0x10
/* 10BAB4 800ED9C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10BAB8 800ED9C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 10BABC 800ED9CC 03E00008 */  jr         $ra
/* 10BAC0 800ED9D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ED9D4
/* 10BAC4 800ED9D4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10BAC8 800ED9D8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10BACC 800ED9DC 00809821 */  addu       $s3, $a0, $zero
/* 10BAD0 800ED9E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 10BAD4 800ED9E4 00A09021 */  addu       $s2, $a1, $zero
/* 10BAD8 800ED9E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 10BADC 800ED9EC 00C08021 */  addu       $s0, $a2, $zero
/* 10BAE0 800ED9F0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10BAE4 800ED9F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 10BAE8 800ED9F8 8E620000 */  lw         $v0, 0x0($s3)
/* 10BAEC 800ED9FC 10400003 */  beqz       $v0, .Lmenu_800EDA0C
/* 10BAF0 800EDA00 00E08821 */   addu      $s1, $a3, $zero
/* 10BAF4 800EDA04 0C03B6DD */  jal        func_menu_800EDB74
/* 10BAF8 800EDA08 00000000 */   nop
.Lmenu_800EDA0C:
/* 10BAFC 800EDA0C 26640004 */  addiu      $a0, $s3, 0x4
/* 10BB00 800EDA10 02002821 */  addu       $a1, $s0, $zero
/* 10BB04 800EDA14 24060008 */  addiu      $a2, $zero, 0x8
/* 10BB08 800EDA18 0C000708 */  jal        func_80001C20
/* 10BB0C 800EDA1C AE71005C */   sw        $s1, 0x5C($s3)
/* 10BB10 800EDA20 24020001 */  addiu      $v0, $zero, 0x1
/* 10BB14 800EDA24 AE620000 */  sw         $v0, 0x0($s3)
.Lmenu_800EDA28:
/* 10BB18 800EDA28 8E420028 */  lw         $v0, 0x28($s2)
/* 10BB1C 800EDA2C 844400A0 */  lh         $a0, 0xA0($v0)
/* 10BB20 800EDA30 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10BB24 800EDA34 0040F809 */  jalr       $v0
/* 10BB28 800EDA38 02442021 */   addu      $a0, $s2, $a0
/* 10BB2C 800EDA3C 00401821 */  addu       $v1, $v0, $zero
/* 10BB30 800EDA40 24020006 */  addiu      $v0, $zero, 0x6
/* 10BB34 800EDA44 10620044 */  beq        $v1, $v0, .Lmenu_800EDB58
/* 10BB38 800EDA48 24020029 */   addiu     $v0, $zero, 0x29
/* 10BB3C 800EDA4C 10620027 */  beq        $v1, $v0, .Lmenu_800EDAEC
/* 10BB40 800EDA50 2C62002A */   sltiu     $v0, $v1, 0x2A
/* 10BB44 800EDA54 10400005 */  beqz       $v0, .Lmenu_800EDA6C
/* 10BB48 800EDA58 24020028 */   addiu     $v0, $zero, 0x28
/* 10BB4C 800EDA5C 1062000A */  beq        $v1, $v0, .Lmenu_800EDA88
/* 10BB50 800EDA60 00000000 */   nop
/* 10BB54 800EDA64 0803B6CE */  j          .Lmenu_800EDB38
/* 10BB58 800EDA68 00000000 */   nop
.Lmenu_800EDA6C:
/* 10BB5C 800EDA6C 2402002A */  addiu      $v0, $zero, 0x2A
/* 10BB60 800EDA70 10620022 */  beq        $v1, $v0, .Lmenu_800EDAFC
/* 10BB64 800EDA74 2402002B */   addiu     $v0, $zero, 0x2B
/* 10BB68 800EDA78 10620024 */  beq        $v1, $v0, .Lmenu_800EDB0C
/* 10BB6C 800EDA7C 00000000 */   nop
/* 10BB70 800EDA80 0803B6CE */  j          .Lmenu_800EDB38
/* 10BB74 800EDA84 00000000 */   nop
.Lmenu_800EDA88:
/* 10BB78 800EDA88 0C002723 */  jal        func_80009C8C
/* 10BB7C 800EDA8C 02402021 */   addu      $a0, $s2, $zero
/* 10BB80 800EDA90 AE620014 */  sw         $v0, 0x14($s3)
/* 10BB84 800EDA94 00008821 */  addu       $s1, $zero, $zero
/* 10BB88 800EDA98 24100018 */  addiu      $s0, $zero, 0x18
.Lmenu_800EDA9C:
/* 10BB8C 800EDA9C 8E620014 */  lw         $v0, 0x14($s3)
/* 10BB90 800EDAA0 0222102B */  sltu       $v0, $s1, $v0
/* 10BB94 800EDAA4 1040000C */  beqz       $v0, .Lmenu_800EDAD8
/* 10BB98 800EDAA8 26310001 */   addiu     $s1, $s1, 0x1
/* 10BB9C 800EDAAC 8E420028 */  lw         $v0, 0x28($s2)
/* 10BBA0 800EDAB0 844400A0 */  lh         $a0, 0xA0($v0)
/* 10BBA4 800EDAB4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10BBA8 800EDAB8 0040F809 */  jalr       $v0
/* 10BBAC 800EDABC 02442021 */   addu      $a0, $s2, $a0
/* 10BBB0 800EDAC0 02702021 */  addu       $a0, $s3, $s0
/* 10BBB4 800EDAC4 26450044 */  addiu      $a1, $s2, 0x44
/* 10BBB8 800EDAC8 0C000708 */  jal        func_80001C20
/* 10BBBC 800EDACC 24060008 */   addiu     $a2, $zero, 0x8
/* 10BBC0 800EDAD0 0803B6A7 */  j          .Lmenu_800EDA9C
/* 10BBC4 800EDAD4 26100008 */   addiu     $s0, $s0, 0x8
.Lmenu_800EDAD8:
/* 10BBC8 800EDAD8 02402021 */  addu       $a0, $s2, $zero
/* 10BBCC 800EDADC 0C0026F4 */  jal        func_80009BD0
/* 10BBD0 800EDAE0 24050006 */   addiu     $a1, $zero, 0x6
/* 10BBD4 800EDAE4 0803B68A */  j          .Lmenu_800EDA28
/* 10BBD8 800EDAE8 00000000 */   nop
.Lmenu_800EDAEC:
/* 10BBDC 800EDAEC 0C002680 */  jal        func_80009A00
/* 10BBE0 800EDAF0 02402021 */   addu      $a0, $s2, $zero
/* 10BBE4 800EDAF4 0803B68A */  j          .Lmenu_800EDA28
/* 10BBE8 800EDAF8 A6620060 */   sh        $v0, 0x60($s3)
.Lmenu_800EDAFC:
/* 10BBEC 800EDAFC 0C002680 */  jal        func_80009A00
/* 10BBF0 800EDB00 02402021 */   addu      $a0, $s2, $zero
/* 10BBF4 800EDB04 0803B68A */  j          .Lmenu_800EDA28
/* 10BBF8 800EDB08 AE620058 */   sw        $v0, 0x58($s3)
.Lmenu_800EDB0C:
/* 10BBFC 800EDB0C 8E420028 */  lw         $v0, 0x28($s2)
/* 10BC00 800EDB10 844400A0 */  lh         $a0, 0xA0($v0)
/* 10BC04 800EDB14 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10BC08 800EDB18 0040F809 */  jalr       $v0
/* 10BC0C 800EDB1C 02442021 */   addu      $a0, $s2, $a0
/* 10BC10 800EDB20 2664000C */  addiu      $a0, $s3, 0xC
/* 10BC14 800EDB24 26450044 */  addiu      $a1, $s2, 0x44
/* 10BC18 800EDB28 0C000708 */  jal        func_80001C20
/* 10BC1C 800EDB2C 24060008 */   addiu     $a2, $zero, 0x8
/* 10BC20 800EDB30 0803B68A */  j          .Lmenu_800EDA28
/* 10BC24 800EDB34 00000000 */   nop
.Lmenu_800EDB38:
/* 10BC28 800EDB38 8E420028 */  lw         $v0, 0x28($s2)
/* 10BC2C 800EDB3C 00002821 */  addu       $a1, $zero, $zero
/* 10BC30 800EDB40 84440098 */  lh         $a0, 0x98($v0)
/* 10BC34 800EDB44 8C42009C */  lw         $v0, 0x9C($v0)
/* 10BC38 800EDB48 0040F809 */  jalr       $v0
/* 10BC3C 800EDB4C 02442021 */   addu      $a0, $s2, $a0
/* 10BC40 800EDB50 0803B68A */  j          .Lmenu_800EDA28
/* 10BC44 800EDB54 00000000 */   nop
.Lmenu_800EDB58:
/* 10BC48 800EDB58 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10BC4C 800EDB5C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10BC50 800EDB60 8FB20018 */  lw         $s2, 0x18($sp)
/* 10BC54 800EDB64 8FB10014 */  lw         $s1, 0x14($sp)
/* 10BC58 800EDB68 8FB00010 */  lw         $s0, 0x10($sp)
/* 10BC5C 800EDB6C 03E00008 */  jr         $ra
/* 10BC60 800EDB70 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EDB74
/* 10BC64 800EDB74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10BC68 800EDB78 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10BC6C 800EDB7C 0C03B657 */  jal        func_menu_800ED95C
/* 10BC70 800EDB80 00000000 */   nop
/* 10BC74 800EDB84 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10BC78 800EDB88 03E00008 */  jr         $ra
/* 10BC7C 800EDB8C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EDB90
/* 10BC80 800EDB90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10BC84 800EDB94 AFB00010 */  sw         $s0, 0x10($sp)
/* 10BC88 800EDB98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10BC8C 800EDB9C 0C01637C */  jal        func_80058DF0
/* 10BC90 800EDBA0 00808021 */   addu      $s0, $a0, $zero
/* 10BC94 800EDBA4 02001021 */  addu       $v0, $s0, $zero
/* 10BC98 800EDBA8 3C03800D */  lui        $v1, %hi(D_menu_800CBAD0)
/* 10BC9C 800EDBAC 2463BAD0 */  addiu      $v1, $v1, %lo(D_menu_800CBAD0)
/* 10BCA0 800EDBB0 AC430008 */  sw         $v1, 0x8($v0)
/* 10BCA4 800EDBB4 AC40000C */  sw         $zero, 0xC($v0)
/* 10BCA8 800EDBB8 AC400010 */  sw         $zero, 0x10($v0)
/* 10BCAC 800EDBBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10BCB0 800EDBC0 8FB00010 */  lw         $s0, 0x10($sp)
/* 10BCB4 800EDBC4 03E00008 */  jr         $ra
/* 10BCB8 800EDBC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EDBCC
/* 10BCBC 800EDBCC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10BCC0 800EDBD0 AFB00010 */  sw         $s0, 0x10($sp)
/* 10BCC4 800EDBD4 00808021 */  addu       $s0, $a0, $zero
/* 10BCC8 800EDBD8 AFB10014 */  sw         $s1, 0x14($sp)
/* 10BCCC 800EDBDC 00A08821 */  addu       $s1, $a1, $zero
/* 10BCD0 800EDBE0 3C02800D */  lui        $v0, %hi(D_menu_800CBAD0)
/* 10BCD4 800EDBE4 2442BAD0 */  addiu      $v0, $v0, %lo(D_menu_800CBAD0)
/* 10BCD8 800EDBE8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10BCDC 800EDBEC 0C03B7A9 */  jal        func_menu_800EDEA4
/* 10BCE0 800EDBF0 AE020008 */   sw        $v0, 0x8($s0)
/* 10BCE4 800EDBF4 02002021 */  addu       $a0, $s0, $zero
/* 10BCE8 800EDBF8 0C016383 */  jal        func_80058E0C
/* 10BCEC 800EDBFC 02202821 */   addu      $a1, $s1, $zero
/* 10BCF0 800EDC00 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10BCF4 800EDC04 8FB10014 */  lw         $s1, 0x14($sp)
/* 10BCF8 800EDC08 8FB00010 */  lw         $s0, 0x10($sp)
/* 10BCFC 800EDC0C 03E00008 */  jr         $ra
/* 10BD00 800EDC10 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EDC14
/* 10BD04 800EDC14 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10BD08 800EDC18 AFB5002C */  sw         $s5, 0x2C($sp)
/* 10BD0C 800EDC1C 0080A821 */  addu       $s5, $a0, $zero
/* 10BD10 800EDC20 AFB60030 */  sw         $s6, 0x30($sp)
/* 10BD14 800EDC24 00A0B021 */  addu       $s6, $a1, $zero
/* 10BD18 800EDC28 AFB1001C */  sw         $s1, 0x1C($sp)
/* 10BD1C 800EDC2C 00C08821 */  addu       $s1, $a2, $zero
/* 10BD20 800EDC30 AFBF0034 */  sw         $ra, 0x34($sp)
/* 10BD24 800EDC34 AFB40028 */  sw         $s4, 0x28($sp)
/* 10BD28 800EDC38 AFB30024 */  sw         $s3, 0x24($sp)
/* 10BD2C 800EDC3C AFB20020 */  sw         $s2, 0x20($sp)
/* 10BD30 800EDC40 AFB00018 */  sw         $s0, 0x18($sp)
/* 10BD34 800EDC44 8EA2000C */  lw         $v0, 0xC($s5)
/* 10BD38 800EDC48 10400006 */  beqz       $v0, .Lmenu_800EDC64
/* 10BD3C 800EDC4C 00E08021 */   addu      $s0, $a3, $zero
/* 10BD40 800EDC50 8EA20008 */  lw         $v0, 0x8($s5)
/* 10BD44 800EDC54 84440018 */  lh         $a0, 0x18($v0)
/* 10BD48 800EDC58 8C42001C */  lw         $v0, 0x1C($v0)
/* 10BD4C 800EDC5C 0040F809 */  jalr       $v0
/* 10BD50 800EDC60 02A42021 */   addu      $a0, $s5, $a0
.Lmenu_800EDC64:
/* 10BD54 800EDC64 12000014 */  beqz       $s0, .Lmenu_800EDCB8
/* 10BD58 800EDC68 00000000 */   nop
/* 10BD5C 800EDC6C 0C01FB4C */  jal        func_8007ED30
/* 10BD60 800EDC70 24040654 */   addiu     $a0, $zero, 0x654
/* 10BD64 800EDC74 0C00278C */  jal        func_80009E30
/* 10BD68 800EDC78 00402021 */   addu      $a0, $v0, $zero
/* 10BD6C 800EDC7C 00409821 */  addu       $s3, $v0, $zero
/* 10BD70 800EDC80 56600008 */  bnel       $s3, $zero, .Lmenu_800EDCA4
/* 10BD74 800EDC84 02602021 */   addu      $a0, $s3, $zero
/* 10BD78 800EDC88 3C04800D */  lui        $a0, %hi(D_menu_800CBA10)
/* 10BD7C 800EDC8C 2484BA10 */  addiu      $a0, $a0, %lo(D_menu_800CBA10)
/* 10BD80 800EDC90 00002821 */  addu       $a1, $zero, $zero
/* 10BD84 800EDC94 00A03021 */  addu       $a2, $a1, $zero
/* 10BD88 800EDC98 0C011ACF */  jal        func_80046B3C
/* 10BD8C 800EDC9C 00A03821 */   addu      $a3, $a1, $zero
/* 10BD90 800EDCA0 02602021 */  addu       $a0, $s3, $zero
.Lmenu_800EDCA4:
/* 10BD94 800EDCA4 3C05800D */  lui        $a1, %hi(D_menu_800CBA14)
/* 10BD98 800EDCA8 0C0025BA */  jal        func_800096E8
/* 10BD9C 800EDCAC 24A5BA14 */   addiu     $a1, $a1, %lo(D_menu_800CBA14)
/* 10BDA0 800EDCB0 0803B73E */  j          .Lmenu_800EDCF8
/* 10BDA4 800EDCB4 00000000 */   nop
.Lmenu_800EDCB8:
/* 10BDA8 800EDCB8 0C01FB4C */  jal        func_8007ED30
/* 10BDAC 800EDCBC 24040658 */   addiu     $a0, $zero, 0x658
/* 10BDB0 800EDCC0 00408021 */  addu       $s0, $v0, $zero
/* 10BDB4 800EDCC4 0C002504 */  jal        func_80009410
/* 10BDB8 800EDCC8 02002021 */   addu      $a0, $s0, $zero
/* 10BDBC 800EDCCC 3C02800D */  lui        $v0, %hi(D_menu_800CBA20)
/* 10BDC0 800EDCD0 2442BA20 */  addiu      $v0, $v0, %lo(D_menu_800CBA20)
/* 10BDC4 800EDCD4 02009821 */  addu       $s3, $s0, $zero
/* 10BDC8 800EDCD8 16600007 */  bnez       $s3, .Lmenu_800EDCF8
/* 10BDCC 800EDCDC AE020028 */   sw        $v0, 0x28($s0)
/* 10BDD0 800EDCE0 3C04800D */  lui        $a0, %hi(D_menu_800CBA10)
/* 10BDD4 800EDCE4 2484BA10 */  addiu      $a0, $a0, %lo(D_menu_800CBA10)
/* 10BDD8 800EDCE8 00002821 */  addu       $a1, $zero, $zero
/* 10BDDC 800EDCEC 00A03021 */  addu       $a2, $a1, $zero
/* 10BDE0 800EDCF0 0C011ACF */  jal        func_80046B3C
/* 10BDE4 800EDCF4 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800EDCF8:
/* 10BDE8 800EDCF8 8E620028 */  lw         $v0, 0x28($s3)
/* 10BDEC 800EDCFC 02202821 */  addu       $a1, $s1, $zero
/* 10BDF0 800EDD00 84440088 */  lh         $a0, 0x88($v0)
/* 10BDF4 800EDD04 8C42008C */  lw         $v0, 0x8C($v0)
/* 10BDF8 800EDD08 0040F809 */  jalr       $v0
/* 10BDFC 800EDD0C 02642021 */   addu      $a0, $s3, $a0
/* 10BE00 800EDD10 02602021 */  addu       $a0, $s3, $zero
/* 10BE04 800EDD14 0C0026F4 */  jal        func_80009BD0
/* 10BE08 800EDD18 24050027 */   addiu     $a1, $zero, 0x27
/* 10BE0C 800EDD1C 0C002723 */  jal        func_80009C8C
/* 10BE10 800EDD20 02602021 */   addu      $a0, $s3, $zero
/* 10BE14 800EDD24 3C038012 */  lui        $v1, %hi(D_menu_80126BD0)
/* 10BE18 800EDD28 8C646BD0 */  lw         $a0, %lo(D_menu_80126BD0)($v1)
/* 10BE1C 800EDD2C 0C01FB65 */  jal        func_8007ED94
/* 10BE20 800EDD30 AEA20010 */   sw        $v0, 0x10($s5)
/* 10BE24 800EDD34 8EB00010 */  lw         $s0, 0x10($s5)
/* 10BE28 800EDD38 00102040 */  sll        $a0, $s0, 1
/* 10BE2C 800EDD3C 00902021 */  addu       $a0, $a0, $s0
/* 10BE30 800EDD40 000420C0 */  sll        $a0, $a0, 3
/* 10BE34 800EDD44 00902021 */  addu       $a0, $a0, $s0
/* 10BE38 800EDD48 00042080 */  sll        $a0, $a0, 2
/* 10BE3C 800EDD4C 0C00943C */  jal        func_800250F0
/* 10BE40 800EDD50 24840008 */   addiu     $a0, $a0, 0x8
/* 10BE44 800EDD54 24420008 */  addiu      $v0, $v0, 0x8
/* 10BE48 800EDD58 0040A021 */  addu       $s4, $v0, $zero
/* 10BE4C 800EDD5C 02809021 */  addu       $s2, $s4, $zero
/* 10BE50 800EDD60 2611FFFF */  addiu      $s1, $s0, -0x1
/* 10BE54 800EDD64 06200007 */  bltz       $s1, .Lmenu_800EDD84
/* 10BE58 800EDD68 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 10BE5C 800EDD6C 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800EDD70:
/* 10BE60 800EDD70 0C03B63C */  jal        func_menu_800ED8F0
/* 10BE64 800EDD74 02402021 */   addu      $a0, $s2, $zero
/* 10BE68 800EDD78 2631FFFF */  addiu      $s1, $s1, -0x1
/* 10BE6C 800EDD7C 1630FFFC */  bne        $s1, $s0, .Lmenu_800EDD70
/* 10BE70 800EDD80 26520064 */   addiu     $s2, $s2, 0x64
.Lmenu_800EDD84:
/* 10BE74 800EDD84 0C01FB72 */  jal        func_8007EDC8
/* 10BE78 800EDD88 AEB4000C */   sw        $s4, 0xC($s5)
/* 10BE7C 800EDD8C 8EA2000C */  lw         $v0, 0xC($s5)
/* 10BE80 800EDD90 14400008 */  bnez       $v0, .Lmenu_800EDDB4
/* 10BE84 800EDD94 02A02021 */   addu      $a0, $s5, $zero
/* 10BE88 800EDD98 3C04800D */  lui        $a0, %hi(D_menu_800CBA10)
/* 10BE8C 800EDD9C 2484BA10 */  addiu      $a0, $a0, %lo(D_menu_800CBA10)
/* 10BE90 800EDDA0 00002821 */  addu       $a1, $zero, $zero
/* 10BE94 800EDDA4 00A03021 */  addu       $a2, $a1, $zero
/* 10BE98 800EDDA8 0C011ACF */  jal        func_80046B3C
/* 10BE9C 800EDDAC 00A03821 */   addu      $a3, $a1, $zero
/* 10BEA0 800EDDB0 02A02021 */  addu       $a0, $s5, $zero
.Lmenu_800EDDB4:
/* 10BEA4 800EDDB4 8EA50010 */  lw         $a1, 0x10($s5)
/* 10BEA8 800EDDB8 00008821 */  addu       $s1, $zero, $zero
/* 10BEAC 800EDDBC 0C016397 */  jal        func_80058E5C
/* 10BEB0 800EDDC0 02208021 */   addu      $s0, $s1, $zero
.Lmenu_800EDDC4:
/* 10BEB4 800EDDC4 8EA20010 */  lw         $v0, 0x10($s5)
/* 10BEB8 800EDDC8 0222102B */  sltu       $v0, $s1, $v0
/* 10BEBC 800EDDCC 1040001D */  beqz       $v0, .Lmenu_800EDE44
/* 10BEC0 800EDDD0 02602021 */   addu      $a0, $s3, $zero
/* 10BEC4 800EDDD4 0C0026F4 */  jal        func_80009BD0
/* 10BEC8 800EDDD8 24050027 */   addiu     $a1, $zero, 0x27
/* 10BECC 800EDDDC 8E620028 */  lw         $v0, 0x28($s3)
/* 10BED0 800EDDE0 26310001 */  addiu      $s1, $s1, 0x1
/* 10BED4 800EDDE4 844400A0 */  lh         $a0, 0xA0($v0)
/* 10BED8 800EDDE8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10BEDC 800EDDEC 0040F809 */  jalr       $v0
/* 10BEE0 800EDDF0 02642021 */   addu      $a0, $s3, $a0
/* 10BEE4 800EDDF4 27A40010 */  addiu      $a0, $sp, 0x10
/* 10BEE8 800EDDF8 26650044 */  addiu      $a1, $s3, 0x44
/* 10BEEC 800EDDFC 0C000708 */  jal        func_80001C20
/* 10BEF0 800EDE00 24060008 */   addiu     $a2, $zero, 0x8
/* 10BEF4 800EDE04 02602021 */  addu       $a0, $s3, $zero
/* 10BEF8 800EDE08 0C0026F4 */  jal        func_80009BD0
/* 10BEFC 800EDE0C 24050005 */   addiu     $a1, $zero, 0x5
/* 10BF00 800EDE10 02A02021 */  addu       $a0, $s5, $zero
/* 10BF04 800EDE14 8EA6000C */  lw         $a2, 0xC($s5)
/* 10BF08 800EDE18 27A50010 */  addiu      $a1, $sp, 0x10
/* 10BF0C 800EDE1C 0C0163C7 */  jal        func_80058F1C
/* 10BF10 800EDE20 00D03021 */   addu      $a2, $a2, $s0
/* 10BF14 800EDE24 02602821 */  addu       $a1, $s3, $zero
/* 10BF18 800EDE28 27A60010 */  addiu      $a2, $sp, 0x10
/* 10BF1C 800EDE2C 8EA4000C */  lw         $a0, 0xC($s5)
/* 10BF20 800EDE30 02C03821 */  addu       $a3, $s6, $zero
/* 10BF24 800EDE34 0C03B675 */  jal        func_menu_800ED9D4
/* 10BF28 800EDE38 00902021 */   addu      $a0, $a0, $s0
/* 10BF2C 800EDE3C 0803B771 */  j          .Lmenu_800EDDC4
/* 10BF30 800EDE40 26100064 */   addiu     $s0, $s0, 0x64
.Lmenu_800EDE44:
/* 10BF34 800EDE44 0C0026F4 */  jal        func_80009BD0
/* 10BF38 800EDE48 24050006 */   addiu     $a1, $zero, 0x6
/* 10BF3C 800EDE4C 8E620028 */  lw         $v0, 0x28($s3)
/* 10BF40 800EDE50 84440048 */  lh         $a0, 0x48($v0)
/* 10BF44 800EDE54 8C42004C */  lw         $v0, 0x4C($v0)
/* 10BF48 800EDE58 0040F809 */  jalr       $v0
/* 10BF4C 800EDE5C 02642021 */   addu      $a0, $s3, $a0
/* 10BF50 800EDE60 12600006 */  beqz       $s3, .Lmenu_800EDE7C
/* 10BF54 800EDE64 24050003 */   addiu     $a1, $zero, 0x3
/* 10BF58 800EDE68 8E620028 */  lw         $v0, 0x28($s3)
/* 10BF5C 800EDE6C 84440038 */  lh         $a0, 0x38($v0)
/* 10BF60 800EDE70 8C42003C */  lw         $v0, 0x3C($v0)
/* 10BF64 800EDE74 0040F809 */  jalr       $v0
/* 10BF68 800EDE78 02642021 */   addu      $a0, $s3, $a0
.Lmenu_800EDE7C:
/* 10BF6C 800EDE7C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 10BF70 800EDE80 8FB60030 */  lw         $s6, 0x30($sp)
/* 10BF74 800EDE84 8FB5002C */  lw         $s5, 0x2C($sp)
/* 10BF78 800EDE88 8FB40028 */  lw         $s4, 0x28($sp)
/* 10BF7C 800EDE8C 8FB30024 */  lw         $s3, 0x24($sp)
/* 10BF80 800EDE90 8FB20020 */  lw         $s2, 0x20($sp)
/* 10BF84 800EDE94 8FB1001C */  lw         $s1, 0x1C($sp)
/* 10BF88 800EDE98 8FB00018 */  lw         $s0, 0x18($sp)
/* 10BF8C 800EDE9C 03E00008 */  jr         $ra
/* 10BF90 800EDEA0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800EDEA4
/* 10BF94 800EDEA4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10BF98 800EDEA8 AFB10014 */  sw         $s1, 0x14($sp)
/* 10BF9C 800EDEAC 00808821 */  addu       $s1, $a0, $zero
/* 10BFA0 800EDEB0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10BFA4 800EDEB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 10BFA8 800EDEB8 8E24000C */  lw         $a0, 0xC($s1)
/* 10BFAC 800EDEBC 50800015 */  beql       $a0, $zero, .Lmenu_800EDF14
/* 10BFB0 800EDEC0 AE200010 */   sw        $zero, 0x10($s1)
/* 10BFB4 800EDEC4 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 10BFB8 800EDEC8 00031040 */  sll        $v0, $v1, 1
/* 10BFBC 800EDECC 00431021 */  addu       $v0, $v0, $v1
/* 10BFC0 800EDED0 000210C0 */  sll        $v0, $v0, 3
/* 10BFC4 800EDED4 00431021 */  addu       $v0, $v0, $v1
/* 10BFC8 800EDED8 00021080 */  sll        $v0, $v0, 2
/* 10BFCC 800EDEDC 00828021 */  addu       $s0, $a0, $v0
/* 10BFD0 800EDEE0 10900008 */  beq        $a0, $s0, .Lmenu_800EDF04
/* 10BFD4 800EDEE4 2610FF9C */   addiu     $s0, $s0, -0x64
.Lmenu_800EDEE8:
/* 10BFD8 800EDEE8 02002021 */  addu       $a0, $s0, $zero
/* 10BFDC 800EDEEC 0C03B646 */  jal        func_menu_800ED918
/* 10BFE0 800EDEF0 24050002 */   addiu     $a1, $zero, 0x2
/* 10BFE4 800EDEF4 8E22000C */  lw         $v0, 0xC($s1)
/* 10BFE8 800EDEF8 1450FFFB */  bne        $v0, $s0, .Lmenu_800EDEE8
/* 10BFEC 800EDEFC 2610FF9C */   addiu     $s0, $s0, -0x64
/* 10BFF0 800EDF00 8E24000C */  lw         $a0, 0xC($s1)
.Lmenu_800EDF04:
/* 10BFF4 800EDF04 0C009444 */  jal        func_80025110
/* 10BFF8 800EDF08 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 10BFFC 800EDF0C AE20000C */  sw         $zero, 0xC($s1)
/* 10C000 800EDF10 AE200010 */  sw         $zero, 0x10($s1)
.Lmenu_800EDF14:
/* 10C004 800EDF14 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10C008 800EDF18 8FB10014 */  lw         $s1, 0x14($sp)
/* 10C00C 800EDF1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 10C010 800EDF20 03E00008 */  jr         $ra
/* 10C014 800EDF24 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EDF28
/* 10C018 800EDF28 8C820010 */  lw         $v0, 0x10($a0)
/* 10C01C 800EDF2C 1040000A */  beqz       $v0, .Lmenu_800EDF58
/* 10C020 800EDF30 00001821 */   addu      $v1, $zero, $zero
/* 10C024 800EDF34 00403021 */  addu       $a2, $v0, $zero
/* 10C028 800EDF38 8C84000C */  lw         $a0, 0xC($a0)
.Lmenu_800EDF3C:
/* 10C02C 800EDF3C 54850003 */  bnel       $a0, $a1, .Lmenu_800EDF4C
/* 10C030 800EDF40 24630001 */   addiu     $v1, $v1, 0x1
/* 10C034 800EDF44 03E00008 */  jr         $ra
/* 10C038 800EDF48 00601021 */   addu      $v0, $v1, $zero
.Lmenu_800EDF4C:
/* 10C03C 800EDF4C 0066102B */  sltu       $v0, $v1, $a2
/* 10C040 800EDF50 1440FFFA */  bnez       $v0, .Lmenu_800EDF3C
/* 10C044 800EDF54 24840064 */   addiu     $a0, $a0, 0x64
.Lmenu_800EDF58:
/* 10C048 800EDF58 03E00008 */  jr         $ra
/* 10C04C 800EDF5C 00001021 */   addu      $v0, $zero, $zero

glabel func_menu_800EDF60
/* 10C050 800EDF60 3C028012 */  lui        $v0, %hi(D_menu_80126BD0)
/* 10C054 800EDF64 03E00008 */  jr         $ra
/* 10C058 800EDF68 AC446BD0 */   sw        $a0, %lo(D_menu_80126BD0)($v0)

glabel func_menu_800EDF6C
/* 10C05C 800EDF6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10C060 800EDF70 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10C064 800EDF74 0C002513 */  jal        func_8000944C
/* 10C068 800EDF78 00000000 */   nop
/* 10C06C 800EDF7C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10C070 800EDF80 03E00008 */  jr         $ra
/* 10C074 800EDF84 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EDF88
/* 10C078 800EDF88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10C07C 800EDF8C AFBF0010 */  sw         $ra, 0x10($sp)
/* 10C080 800EDF90 0C016427 */  jal        func_8005909C
/* 10C084 800EDF94 00000000 */   nop
/* 10C088 800EDF98 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10C08C 800EDF9C 03E00008 */  jr         $ra
/* 10C090 800EDFA0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EDFA4
/* 10C094 800EDFA4 00051040 */  sll        $v0, $a1, 1
/* 10C098 800EDFA8 00451021 */  addu       $v0, $v0, $a1
/* 10C09C 800EDFAC 000210C0 */  sll        $v0, $v0, 3
/* 10C0A0 800EDFB0 00451021 */  addu       $v0, $v0, $a1
/* 10C0A4 800EDFB4 8C83000C */  lw         $v1, 0xC($a0)
/* 10C0A8 800EDFB8 00021080 */  sll        $v0, $v0, 2
/* 10C0AC 800EDFBC 03E00008 */  jr         $ra
/* 10C0B0 800EDFC0 00621021 */   addu      $v0, $v1, $v0

glabel func_menu_800EDFC4
/* 10C0B4 800EDFC4 8C820010 */  lw         $v0, 0x10($a0)
/* 10C0B8 800EDFC8 03E00008 */  jr         $ra
/* 10C0BC 800EDFCC 00000000 */   nop

glabel func_menu_800EDFD0
/* 10C0C0 800EDFD0 8C82000C */  lw         $v0, 0xC($a0)
/* 10C0C4 800EDFD4 03E00008 */  jr         $ra
/* 10C0C8 800EDFD8 0002102B */   sltu      $v0, $zero, $v0
