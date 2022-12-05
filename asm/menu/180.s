.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800E8910
/* 106A00 800E8910 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 106A04 800E8914 AFB00010 */  sw         $s0, 0x10($sp)
/* 106A08 800E8918 00808021 */  addu       $s0, $a0, $zero
/* 106A0C 800E891C 3C02800D */  lui        $v0, %hi(D_menu_800CB560)
/* 106A10 800E8920 2442B560 */  addiu      $v0, $v0, %lo(D_menu_800CB560)
/* 106A14 800E8924 AFBF0014 */  sw         $ra, 0x14($sp)
/* 106A18 800E8928 0C03A265 */  jal        func_menu_800E8994
/* 106A1C 800E892C AE02001C */   sw        $v0, 0x1C($s0)
/* 106A20 800E8930 02001021 */  addu       $v0, $s0, $zero
/* 106A24 800E8934 8FBF0014 */  lw         $ra, 0x14($sp)
/* 106A28 800E8938 8FB00010 */  lw         $s0, 0x10($sp)
/* 106A2C 800E893C 03E00008 */  jr         $ra
/* 106A30 800E8940 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E8944
/* 106A34 800E8944 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 106A38 800E8948 AFB10014 */  sw         $s1, 0x14($sp)
/* 106A3C 800E894C 00808821 */  addu       $s1, $a0, $zero
/* 106A40 800E8950 AFB00010 */  sw         $s0, 0x10($sp)
/* 106A44 800E8954 00A08021 */  addu       $s0, $a1, $zero
/* 106A48 800E8958 3C02800D */  lui        $v0, %hi(D_menu_800CB560)
/* 106A4C 800E895C 2442B560 */  addiu      $v0, $v0, %lo(D_menu_800CB560)
/* 106A50 800E8960 AFBF0018 */  sw         $ra, 0x18($sp)
/* 106A54 800E8964 0C03A265 */  jal        func_menu_800E8994
/* 106A58 800E8968 AE22001C */   sw        $v0, 0x1C($s1)
/* 106A5C 800E896C 32100001 */  andi       $s0, $s0, 0x1
/* 106A60 800E8970 12000003 */  beqz       $s0, .Lmenu_800E8980
/* 106A64 800E8974 00000000 */   nop
/* 106A68 800E8978 0C01FB5C */  jal        func_8007ED70
/* 106A6C 800E897C 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800E8980:
/* 106A70 800E8980 8FBF0018 */  lw         $ra, 0x18($sp)
/* 106A74 800E8984 8FB10014 */  lw         $s1, 0x14($sp)
/* 106A78 800E8988 8FB00010 */  lw         $s0, 0x10($sp)
/* 106A7C 800E898C 03E00008 */  jr         $ra
/* 106A80 800E8990 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E8994
/* 106A84 800E8994 A0800000 */  sb         $zero, 0x0($a0)
/* 106A88 800E8998 AC800008 */  sw         $zero, 0x8($a0)
/* 106A8C 800E899C AC80000C */  sw         $zero, 0xC($a0)
/* 106A90 800E89A0 AC800014 */  sw         $zero, 0x14($a0)
/* 106A94 800E89A4 AC800018 */  sw         $zero, 0x18($a0)
/* 106A98 800E89A8 03E00008 */  jr         $ra
/* 106A9C 800E89AC AC800010 */   sw        $zero, 0x10($a0)

glabel func_menu_800E89B0
/* 106AA0 800E89B0 03E00008 */  jr         $ra
/* 106AA4 800E89B4 00000000 */   nop

glabel func_menu_800E89B8
/* 106AA8 800E89B8 03E00008 */  jr         $ra
/* 106AAC 800E89BC 00000000 */   nop

glabel func_menu_800E89C0
/* 106AB0 800E89C0 03E00008 */  jr         $ra
/* 106AB4 800E89C4 00000000 */   nop

glabel func_menu_800E89C8
/* 106AB8 800E89C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 106ABC 800E89CC 00801821 */  addu       $v1, $a0, $zero
/* 106AC0 800E89D0 24020001 */  addiu      $v0, $zero, 0x1
/* 106AC4 800E89D4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 106AC8 800E89D8 10C00008 */  beqz       $a2, .Lmenu_800E89FC
/* 106ACC 800E89DC AC620010 */   sw        $v0, 0x10($v1)
/* 106AD0 800E89E0 8CC20000 */  lw         $v0, 0x0($a2)
/* 106AD4 800E89E4 84440008 */  lh         $a0, 0x8($v0)
/* 106AD8 800E89E8 8C42000C */  lw         $v0, 0xC($v0)
/* 106ADC 800E89EC 00C42021 */  addu       $a0, $a2, $a0
/* 106AE0 800E89F0 00603021 */  addu       $a2, $v1, $zero
/* 106AE4 800E89F4 0040F809 */  jalr       $v0
/* 106AE8 800E89F8 00C03821 */   addu      $a3, $a2, $zero
.Lmenu_800E89FC:
/* 106AEC 800E89FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 106AF0 800E8A00 03E00008 */  jr         $ra
/* 106AF4 800E8A04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E8A08
/* 106AF8 800E8A08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 106AFC 800E8A0C 00801821 */  addu       $v1, $a0, $zero
/* 106B00 800E8A10 AFBF0010 */  sw         $ra, 0x10($sp)
/* 106B04 800E8A14 10C00008 */  beqz       $a2, .Lmenu_800E8A38
/* 106B08 800E8A18 AC600010 */   sw        $zero, 0x10($v1)
/* 106B0C 800E8A1C 8CC20000 */  lw         $v0, 0x0($a2)
/* 106B10 800E8A20 84440010 */  lh         $a0, 0x10($v0)
/* 106B14 800E8A24 8C420014 */  lw         $v0, 0x14($v0)
/* 106B18 800E8A28 00C42021 */  addu       $a0, $a2, $a0
/* 106B1C 800E8A2C 00603021 */  addu       $a2, $v1, $zero
/* 106B20 800E8A30 0040F809 */  jalr       $v0
/* 106B24 800E8A34 00C03821 */   addu      $a3, $a2, $zero
.Lmenu_800E8A38:
/* 106B28 800E8A38 8FBF0010 */  lw         $ra, 0x10($sp)
/* 106B2C 800E8A3C 03E00008 */  jr         $ra
/* 106B30 800E8A40 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E8A44
/* 106B34 800E8A44 8C820000 */  lw         $v0, 0x0($a0)
/* 106B38 800E8A48 8CA30000 */  lw         $v1, 0x0($a1)
/* 106B3C 800E8A4C 8C440008 */  lw         $a0, 0x8($v0)
/* 106B40 800E8A50 8C630008 */  lw         $v1, 0x8($v1)
/* 106B44 800E8A54 0064102B */  sltu       $v0, $v1, $a0
/* 106B48 800E8A58 14400006 */  bnez       $v0, .Lmenu_800E8A74
/* 106B4C 800E8A5C 24020001 */   addiu     $v0, $zero, 0x1
/* 106B50 800E8A60 0083182B */  sltu       $v1, $a0, $v1
/* 106B54 800E8A64 14600003 */  bnez       $v1, .Lmenu_800E8A74
/* 106B58 800E8A68 2402FFFF */   addiu     $v0, $zero, -0x1
/* 106B5C 800E8A6C 03E00008 */  jr         $ra
/* 106B60 800E8A70 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800E8A74:
/* 106B64 800E8A74 03E00008 */  jr         $ra
/* 106B68 800E8A78 00000000 */   nop

glabel func_menu_800E8A7C
/* 106B6C 800E8A7C 8C820000 */  lw         $v0, 0x0($a0)
/* 106B70 800E8A80 8CA30000 */  lw         $v1, 0x0($a1)
/* 106B74 800E8A84 8C44000C */  lw         $a0, 0xC($v0)
/* 106B78 800E8A88 8C63000C */  lw         $v1, 0xC($v1)
/* 106B7C 800E8A8C 0064102B */  sltu       $v0, $v1, $a0
/* 106B80 800E8A90 14400006 */  bnez       $v0, .Lmenu_800E8AAC
/* 106B84 800E8A94 24020001 */   addiu     $v0, $zero, 0x1
/* 106B88 800E8A98 0083182B */  sltu       $v1, $a0, $v1
/* 106B8C 800E8A9C 14600003 */  bnez       $v1, .Lmenu_800E8AAC
/* 106B90 800E8AA0 2402FFFF */   addiu     $v0, $zero, -0x1
/* 106B94 800E8AA4 03E00008 */  jr         $ra
/* 106B98 800E8AA8 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800E8AAC:
/* 106B9C 800E8AAC 03E00008 */  jr         $ra
/* 106BA0 800E8AB0 00000000 */   nop

glabel func_menu_800E8AB4
/* 106BA4 800E8AB4 8C820010 */  lw         $v0, 0x10($a0)
/* 106BA8 800E8AB8 03E00008 */  jr         $ra
/* 106BAC 800E8ABC 00000000 */   nop

glabel func_menu_800E8AC0
/* 106BB0 800E8AC0 8C83000C */  lw         $v1, 0xC($a0)
/* 106BB4 800E8AC4 8C820008 */  lw         $v0, 0x8($a0)
/* 106BB8 800E8AC8 03E00008 */  jr         $ra
/* 106BBC 800E8ACC 00621023 */   subu      $v0, $v1, $v0

glabel func_menu_800E8AD0
/* 106BC0 800E8AD0 8C82000C */  lw         $v0, 0xC($a0)
/* 106BC4 800E8AD4 03E00008 */  jr         $ra
/* 106BC8 800E8AD8 00000000 */   nop

glabel func_menu_800E8ADC
/* 106BCC 800E8ADC 8C820008 */  lw         $v0, 0x8($a0)
/* 106BD0 800E8AE0 03E00008 */  jr         $ra
/* 106BD4 800E8AE4 00000000 */   nop

glabel func_menu_800E8AE8
/* 106BD8 800E8AE8 03E00008 */  jr         $ra
/* 106BDC 800E8AEC AC850018 */   sw        $a1, 0x18($a0)

glabel func_menu_800E8AF0
/* 106BE0 800E8AF0 8C820018 */  lw         $v0, 0x18($a0)
/* 106BE4 800E8AF4 03E00008 */  jr         $ra
/* 106BE8 800E8AF8 00000000 */   nop

glabel func_menu_800E8AFC
/* 106BEC 800E8AFC 03E00008 */  jr         $ra
/* 106BF0 800E8B00 AC850014 */   sw        $a1, 0x14($a0)

glabel func_menu_800E8B04
/* 106BF4 800E8B04 8C820014 */  lw         $v0, 0x14($a0)
/* 106BF8 800E8B08 03E00008 */  jr         $ra
/* 106BFC 800E8B0C 00000000 */   nop

glabel func_menu_800E8B10
/* 106C00 800E8B10 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 106C04 800E8B14 AFB10024 */  sw         $s1, 0x24($sp)
/* 106C08 800E8B18 00808821 */  addu       $s1, $a0, $zero
/* 106C0C 800E8B1C AFB00020 */  sw         $s0, 0x20($sp)
/* 106C10 800E8B20 00A08021 */  addu       $s0, $a1, $zero
/* 106C14 800E8B24 AFB20028 */  sw         $s2, 0x28($sp)
/* 106C18 800E8B28 00009021 */  addu       $s2, $zero, $zero
/* 106C1C 800E8B2C 02002021 */  addu       $a0, $s0, $zero
/* 106C20 800E8B30 24050035 */  addiu      $a1, $zero, 0x35
/* 106C24 800E8B34 AFBF002C */  sw         $ra, 0x2C($sp)
/* 106C28 800E8B38 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 106C2C 800E8B3C AE200034 */  sw         $zero, 0x34($s1)
/* 106C30 800E8B40 AE200024 */  sw         $zero, 0x24($s1)
/* 106C34 800E8B44 AE200028 */  sw         $zero, 0x28($s1)
/* 106C38 800E8B48 AE20002C */  sw         $zero, 0x2C($s1)
/* 106C3C 800E8B4C 0C0026F4 */  jal        func_80009BD0
/* 106C40 800E8B50 A2200030 */   sb        $zero, 0x30($s1)
/* 106C44 800E8B54 8E020028 */  lw         $v0, 0x28($s0)
/* 106C48 800E8B58 3C01800D */  lui        $at, %hi(D_menu_800CB5A0)
/* 106C4C 800E8B5C C434B5A0 */  lwc1       $f20, %lo(D_menu_800CB5A0)($at)
/* 106C50 800E8B60 844400A0 */  lh         $a0, 0xA0($v0)
/* 106C54 800E8B64 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 106C58 800E8B68 0040F809 */  jalr       $v0
/* 106C5C 800E8B6C 02042021 */   addu      $a0, $s0, $a0
/* 106C60 800E8B70 02202021 */  addu       $a0, $s1, $zero
/* 106C64 800E8B74 26050044 */  addiu      $a1, $s0, 0x44
/* 106C68 800E8B78 0C000708 */  jal        func_80001C20
/* 106C6C 800E8B7C 24060008 */   addiu     $a2, $zero, 0x8
/* 106C70 800E8B80 02002021 */  addu       $a0, $s0, $zero
/* 106C74 800E8B84 0C0026F4 */  jal        func_80009BD0
/* 106C78 800E8B88 24050005 */   addiu     $a1, $zero, 0x5
.Lmenu_800E8B8C:
/* 106C7C 800E8B8C 8E020028 */  lw         $v0, 0x28($s0)
/* 106C80 800E8B90 844400A0 */  lh         $a0, 0xA0($v0)
/* 106C84 800E8B94 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 106C88 800E8B98 0040F809 */  jalr       $v0
/* 106C8C 800E8B9C 02042021 */   addu      $a0, $s0, $a0
/* 106C90 800E8BA0 00401821 */  addu       $v1, $v0, $zero
/* 106C94 800E8BA4 24020006 */  addiu      $v0, $zero, 0x6
/* 106C98 800E8BA8 10620048 */  beq        $v1, $v0, .Lmenu_800E8CCC
/* 106C9C 800E8BAC 24020038 */   addiu     $v0, $zero, 0x38
/* 106CA0 800E8BB0 10620016 */  beq        $v1, $v0, .Lmenu_800E8C0C
/* 106CA4 800E8BB4 2C620039 */   sltiu     $v0, $v1, 0x39
/* 106CA8 800E8BB8 10400007 */  beqz       $v0, .Lmenu_800E8BD8
/* 106CAC 800E8BBC 2402002B */   addiu     $v0, $zero, 0x2B
/* 106CB0 800E8BC0 1062000A */  beq        $v1, $v0, .Lmenu_800E8BEC
/* 106CB4 800E8BC4 2402002C */   addiu     $v0, $zero, 0x2C
/* 106CB8 800E8BC8 1062000C */  beq        $v1, $v0, .Lmenu_800E8BFC
/* 106CBC 800E8BCC 00000000 */   nop
/* 106CC0 800E8BD0 0803A2E3 */  j          .Lmenu_800E8B8C
/* 106CC4 800E8BD4 00000000 */   nop
.Lmenu_800E8BD8:
/* 106CC8 800E8BD8 2402003C */  addiu      $v0, $zero, 0x3C
/* 106CCC 800E8BDC 10620028 */  beq        $v1, $v0, .Lmenu_800E8C80
/* 106CD0 800E8BE0 00000000 */   nop
/* 106CD4 800E8BE4 0803A2E3 */  j          .Lmenu_800E8B8C
/* 106CD8 800E8BE8 00000000 */   nop
.Lmenu_800E8BEC:
/* 106CDC 800E8BEC 0C002680 */  jal        func_80009A00
/* 106CE0 800E8BF0 02002021 */   addu      $a0, $s0, $zero
/* 106CE4 800E8BF4 0803A2E3 */  j          .Lmenu_800E8B8C
/* 106CE8 800E8BF8 AE220008 */   sw        $v0, 0x8($s1)
.Lmenu_800E8BFC:
/* 106CEC 800E8BFC 0C002680 */  jal        func_80009A00
/* 106CF0 800E8C00 02002021 */   addu      $a0, $s0, $zero
/* 106CF4 800E8C04 0803A2E3 */  j          .Lmenu_800E8B8C
/* 106CF8 800E8C08 00409021 */   addu      $s2, $v0, $zero
.Lmenu_800E8C0C:
/* 106CFC 800E8C0C 0C002680 */  jal        func_80009A00
/* 106D00 800E8C10 02002021 */   addu      $a0, $s0, $zero
/* 106D04 800E8C14 02002021 */  addu       $a0, $s0, $zero
/* 106D08 800E8C18 0C002680 */  jal        func_80009A00
/* 106D0C 800E8C1C A3A20010 */   sb        $v0, 0x10($sp)
/* 106D10 800E8C20 02002021 */  addu       $a0, $s0, $zero
/* 106D14 800E8C24 0C002680 */  jal        func_80009A00
/* 106D18 800E8C28 A3A20011 */   sb        $v0, 0x11($sp)
/* 106D1C 800E8C2C 26240020 */  addiu      $a0, $s1, 0x20
/* 106D20 800E8C30 A3A20012 */  sb         $v0, 0x12($sp)
/* 106D24 800E8C34 240200FF */  addiu      $v0, $zero, 0xFF
/* 106D28 800E8C38 A3A20013 */  sb         $v0, 0x13($sp)
/* 106D2C 800E8C3C 8BA70010 */  lwl        $a3, 0x10($sp)
/* 106D30 800E8C40 9BA70013 */  lwr        $a3, 0x13($sp)
/* 106D34 800E8C44 ABA70018 */  swl        $a3, 0x18($sp)
/* 106D38 800E8C48 BBA7001B */  swr        $a3, 0x1B($sp)
/* 106D3C 800E8C4C 93A50018 */  lbu        $a1, 0x18($sp)
/* 106D40 800E8C50 93A20019 */  lbu        $v0, 0x19($sp)
/* 106D44 800E8C54 93A3001A */  lbu        $v1, 0x1A($sp)
/* 106D48 800E8C58 00052E00 */  sll        $a1, $a1, 24
/* 106D4C 800E8C5C 00021400 */  sll        $v0, $v0, 16
/* 106D50 800E8C60 00A22825 */  or         $a1, $a1, $v0
/* 106D54 800E8C64 00031A00 */  sll        $v1, $v1, 8
/* 106D58 800E8C68 93A2001B */  lbu        $v0, 0x1B($sp)
/* 106D5C 800E8C6C 00A32825 */  or         $a1, $a1, $v1
/* 106D60 800E8C70 0C03B3BB */  jal        func_menu_800ECEEC
/* 106D64 800E8C74 00A22825 */   or        $a1, $a1, $v0
/* 106D68 800E8C78 0803A2E3 */  j          .Lmenu_800E8B8C
/* 106D6C 800E8C7C 00000000 */   nop
.Lmenu_800E8C80:
/* 106D70 800E8C80 0C002680 */  jal        func_80009A00
/* 106D74 800E8C84 02002021 */   addu      $a0, $s0, $zero
/* 106D78 800E8C88 44820000 */  mtc1       $v0, $f0
/* 106D7C 800E8C8C 46800020 */  cvt.s.w    $f0, $f0
/* 106D80 800E8C90 46140002 */  mul.s      $f0, $f0, $f20
/* 106D84 800E8C94 4600008D */  trunc.w.s  $f2, $f0
/* 106D88 800E8C98 E6220024 */  swc1       $f2, 0x24($s1)
/* 106D8C 800E8C9C 0C002680 */  jal        func_80009A00
/* 106D90 800E8CA0 02002021 */   addu      $a0, $s0, $zero
/* 106D94 800E8CA4 44820000 */  mtc1       $v0, $f0
/* 106D98 800E8CA8 46800020 */  cvt.s.w    $f0, $f0
/* 106D9C 800E8CAC 46140002 */  mul.s      $f0, $f0, $f20
/* 106DA0 800E8CB0 92220030 */  lbu        $v0, 0x30($s1)
/* 106DA4 800E8CB4 34420001 */  ori        $v0, $v0, 0x1
/* 106DA8 800E8CB8 A2220030 */  sb         $v0, 0x30($s1)
/* 106DAC 800E8CBC 4600008D */  trunc.w.s  $f2, $f0
/* 106DB0 800E8CC0 E6220028 */  swc1       $f2, 0x28($s1)
/* 106DB4 800E8CC4 0803A2E3 */  j          .Lmenu_800E8B8C
/* 106DB8 800E8CC8 00000000 */   nop
.Lmenu_800E8CCC:
/* 106DBC 800E8CCC 8E220008 */  lw         $v0, 0x8($s1)
/* 106DC0 800E8CD0 00521021 */  addu       $v0, $v0, $s2
/* 106DC4 800E8CD4 AE22000C */  sw         $v0, 0xC($s1)
/* 106DC8 800E8CD8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 106DCC 800E8CDC 8FB20028 */  lw         $s2, 0x28($sp)
/* 106DD0 800E8CE0 8FB10024 */  lw         $s1, 0x24($sp)
/* 106DD4 800E8CE4 8FB00020 */  lw         $s0, 0x20($sp)
/* 106DD8 800E8CE8 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 106DDC 800E8CEC 03E00008 */  jr         $ra
/* 106DE0 800E8CF0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E8CF4
/* 106DE4 800E8CF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 106DE8 800E8CF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 106DEC 800E8CFC 00808021 */  addu       $s0, $a0, $zero
/* 106DF0 800E8D00 AFB20018 */  sw         $s2, 0x18($sp)
/* 106DF4 800E8D04 00A09021 */  addu       $s2, $a1, $zero
/* 106DF8 800E8D08 AFB10014 */  sw         $s1, 0x14($sp)
/* 106DFC 800E8D0C 00C08821 */  addu       $s1, $a2, $zero
/* 106E00 800E8D10 02402021 */  addu       $a0, $s2, $zero
/* 106E04 800E8D14 26050020 */  addiu      $a1, $s0, 0x20
/* 106E08 800E8D18 AFBF001C */  sw         $ra, 0x1C($sp)
/* 106E0C 800E8D1C 92020030 */  lbu        $v0, 0x30($s0)
/* 106E10 800E8D20 8E030024 */  lw         $v1, 0x24($s0)
/* 106E14 800E8D24 34420002 */  ori        $v0, $v0, 0x2
/* 106E18 800E8D28 AE03002C */  sw         $v1, 0x2C($s0)
/* 106E1C 800E8D2C 0C03A8D6 */  jal        func_menu_800EA358
/* 106E20 800E8D30 A2020030 */   sb        $v0, 0x30($s0)
/* 106E24 800E8D34 02002021 */  addu       $a0, $s0, $zero
/* 106E28 800E8D38 02402821 */  addu       $a1, $s2, $zero
/* 106E2C 800E8D3C 0C03A272 */  jal        func_menu_800E89C8
/* 106E30 800E8D40 02203021 */   addu      $a2, $s1, $zero
/* 106E34 800E8D44 12200008 */  beqz       $s1, .Lmenu_800E8D68
/* 106E38 800E8D48 02402821 */   addu      $a1, $s2, $zero
/* 106E3C 800E8D4C 02003021 */  addu       $a2, $s0, $zero
/* 106E40 800E8D50 8E220000 */  lw         $v0, 0x0($s1)
/* 106E44 800E8D54 02003821 */  addu       $a3, $s0, $zero
/* 106E48 800E8D58 84440048 */  lh         $a0, 0x48($v0)
/* 106E4C 800E8D5C 8C42004C */  lw         $v0, 0x4C($v0)
/* 106E50 800E8D60 0040F809 */  jalr       $v0
/* 106E54 800E8D64 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800E8D68:
/* 106E58 800E8D68 AE120034 */  sw         $s2, 0x34($s0)
/* 106E5C 800E8D6C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 106E60 800E8D70 8FB20018 */  lw         $s2, 0x18($sp)
/* 106E64 800E8D74 8FB10014 */  lw         $s1, 0x14($sp)
/* 106E68 800E8D78 8FB00010 */  lw         $s0, 0x10($sp)
/* 106E6C 800E8D7C 03E00008 */  jr         $ra
/* 106E70 800E8D80 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E8D84
/* 106E74 800E8D84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 106E78 800E8D88 AFB20018 */  sw         $s2, 0x18($sp)
/* 106E7C 800E8D8C 00809021 */  addu       $s2, $a0, $zero
/* 106E80 800E8D90 AFB00010 */  sw         $s0, 0x10($sp)
/* 106E84 800E8D94 00A08021 */  addu       $s0, $a1, $zero
/* 106E88 800E8D98 AFB10014 */  sw         $s1, 0x14($sp)
/* 106E8C 800E8D9C 00C08821 */  addu       $s1, $a2, $zero
/* 106E90 800E8DA0 02002021 */  addu       $a0, $s0, $zero
/* 106E94 800E8DA4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 106E98 800E8DA8 0C03A8D8 */  jal        func_menu_800EA360
/* 106E9C 800E8DAC 26450020 */   addiu     $a1, $s2, 0x20
/* 106EA0 800E8DB0 02402021 */  addu       $a0, $s2, $zero
/* 106EA4 800E8DB4 02002821 */  addu       $a1, $s0, $zero
/* 106EA8 800E8DB8 0C03A282 */  jal        func_menu_800E8A08
/* 106EAC 800E8DBC 02203021 */   addu      $a2, $s1, $zero
/* 106EB0 800E8DC0 12200008 */  beqz       $s1, .Lmenu_800E8DE4
/* 106EB4 800E8DC4 02002821 */   addu      $a1, $s0, $zero
/* 106EB8 800E8DC8 02403021 */  addu       $a2, $s2, $zero
/* 106EBC 800E8DCC 8E220000 */  lw         $v0, 0x0($s1)
/* 106EC0 800E8DD0 02403821 */  addu       $a3, $s2, $zero
/* 106EC4 800E8DD4 84440050 */  lh         $a0, 0x50($v0)
/* 106EC8 800E8DD8 8C420054 */  lw         $v0, 0x54($v0)
/* 106ECC 800E8DDC 0040F809 */  jalr       $v0
/* 106ED0 800E8DE0 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800E8DE4:
/* 106ED4 800E8DE4 AE400034 */  sw         $zero, 0x34($s2)
/* 106ED8 800E8DE8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 106EDC 800E8DEC 8FB20018 */  lw         $s2, 0x18($sp)
/* 106EE0 800E8DF0 8FB10014 */  lw         $s1, 0x14($sp)
/* 106EE4 800E8DF4 8FB00010 */  lw         $s0, 0x10($sp)
/* 106EE8 800E8DF8 03E00008 */  jr         $ra
/* 106EEC 800E8DFC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E8E00
/* 106EF0 800E8E00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 106EF4 800E8E04 AFB00010 */  sw         $s0, 0x10($sp)
/* 106EF8 800E8E08 00808021 */  addu       $s0, $a0, $zero
/* 106EFC 800E8E0C AFBF0018 */  sw         $ra, 0x18($sp)
/* 106F00 800E8E10 AFB10014 */  sw         $s1, 0x14($sp)
/* 106F04 800E8E14 92060030 */  lbu        $a2, 0x30($s0)
/* 106F08 800E8E18 30C20001 */  andi       $v0, $a2, 0x1
/* 106F0C 800E8E1C 10400019 */  beqz       $v0, .Lmenu_800E8E84
/* 106F10 800E8E20 00A08821 */   addu      $s1, $a1, $zero
/* 106F14 800E8E24 8E03002C */  lw         $v1, 0x2C($s0)
/* 106F18 800E8E28 0071102B */  sltu       $v0, $v1, $s1
/* 106F1C 800E8E2C 10400013 */  beqz       $v0, .Lmenu_800E8E7C
/* 106F20 800E8E30 30C20002 */   andi      $v0, $a2, 0x2
/* 106F24 800E8E34 10400009 */  beqz       $v0, .Lmenu_800E8E5C
/* 106F28 800E8E38 26050020 */   addiu     $a1, $s0, 0x20
/* 106F2C 800E8E3C 8E040034 */  lw         $a0, 0x34($s0)
/* 106F30 800E8E40 8E030028 */  lw         $v1, 0x28($s0)
/* 106F34 800E8E44 30C200FD */  andi       $v0, $a2, 0xFD
/* 106F38 800E8E48 A2020030 */  sb         $v0, 0x30($s0)
/* 106F3C 800E8E4C 0C03A8D8 */  jal        func_menu_800EA360
/* 106F40 800E8E50 AE03002C */   sw        $v1, 0x2C($s0)
/* 106F44 800E8E54 0803A3A2 */  j          .Lmenu_800E8E88
/* 106F48 800E8E58 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800E8E5C:
/* 106F4C 800E8E5C 8E040034 */  lw         $a0, 0x34($s0)
/* 106F50 800E8E60 8E030024 */  lw         $v1, 0x24($s0)
/* 106F54 800E8E64 34C20002 */  ori        $v0, $a2, 0x2
/* 106F58 800E8E68 A2020030 */  sb         $v0, 0x30($s0)
/* 106F5C 800E8E6C 0C03A8D6 */  jal        func_menu_800EA358
/* 106F60 800E8E70 AE03002C */   sw        $v1, 0x2C($s0)
/* 106F64 800E8E74 0803A3A2 */  j          .Lmenu_800E8E88
/* 106F68 800E8E78 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800E8E7C:
/* 106F6C 800E8E7C 00711023 */  subu       $v0, $v1, $s1
/* 106F70 800E8E80 AE02002C */  sw         $v0, 0x2C($s0)
.Lmenu_800E8E84:
/* 106F74 800E8E84 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800E8E88:
/* 106F78 800E8E88 0C03A26C */  jal        func_menu_800E89B0
/* 106F7C 800E8E8C 02202821 */   addu      $a1, $s1, $zero
/* 106F80 800E8E90 8FBF0018 */  lw         $ra, 0x18($sp)
/* 106F84 800E8E94 8FB10014 */  lw         $s1, 0x14($sp)
/* 106F88 800E8E98 8FB00010 */  lw         $s0, 0x10($sp)
/* 106F8C 800E8E9C 03E00008 */  jr         $ra
/* 106F90 800E8EA0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E8EA4
/* 106F94 800E8EA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 106F98 800E8EA8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 106F9C 800E8EAC 0C03A251 */  jal        func_menu_800E8944
/* 106FA0 800E8EB0 00000000 */   nop
/* 106FA4 800E8EB4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 106FA8 800E8EB8 03E00008 */  jr         $ra
/* 106FAC 800E8EBC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E8EC0
/* 106FB0 800E8EC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 106FB4 800E8EC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 106FB8 800E8EC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 106FBC 800E8ECC 0C03A3CB */  jal        func_menu_800E8F2C
/* 106FC0 800E8ED0 00808021 */   addu      $s0, $a0, $zero
/* 106FC4 800E8ED4 02001021 */  addu       $v0, $s0, $zero
/* 106FC8 800E8ED8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 106FCC 800E8EDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 106FD0 800E8EE0 03E00008 */  jr         $ra
/* 106FD4 800E8EE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E8EE8
/* 106FD8 800E8EE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 106FDC 800E8EEC AFB10014 */  sw         $s1, 0x14($sp)
/* 106FE0 800E8EF0 00808821 */  addu       $s1, $a0, $zero
/* 106FE4 800E8EF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 106FE8 800E8EF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 106FEC 800E8EFC 0C03A677 */  jal        func_menu_800E99DC
/* 106FF0 800E8F00 00A08021 */   addu      $s0, $a1, $zero
/* 106FF4 800E8F04 32100001 */  andi       $s0, $s0, 0x1
/* 106FF8 800E8F08 12000003 */  beqz       $s0, .Lmenu_800E8F18
/* 106FFC 800E8F0C 00000000 */   nop
/* 107000 800E8F10 0C01FB5C */  jal        func_8007ED70
/* 107004 800E8F14 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800E8F18:
/* 107008 800E8F18 8FBF0018 */  lw         $ra, 0x18($sp)
/* 10700C 800E8F1C 8FB10014 */  lw         $s1, 0x14($sp)
/* 107010 800E8F20 8FB00010 */  lw         $s0, 0x10($sp)
/* 107014 800E8F24 03E00008 */  jr         $ra
/* 107018 800E8F28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E8F2C
/* 10701C 800E8F2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 107020 800E8F30 AFB00010 */  sw         $s0, 0x10($sp)
/* 107024 800E8F34 00808021 */  addu       $s0, $a0, $zero
/* 107028 800E8F38 26040060 */  addiu      $a0, $s0, 0x60
/* 10702C 800E8F3C 00002821 */  addu       $a1, $zero, $zero
/* 107030 800E8F40 24060020 */  addiu      $a2, $zero, 0x20
/* 107034 800E8F44 2402001E */  addiu      $v0, $zero, 0x1E
/* 107038 800E8F48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10703C 800E8F4C AE000000 */  sw         $zero, 0x0($s0)
/* 107040 800E8F50 AE000004 */  sw         $zero, 0x4($s0)
/* 107044 800E8F54 AE000008 */  sw         $zero, 0x8($s0)
/* 107048 800E8F58 AE00000C */  sw         $zero, 0xC($s0)
/* 10704C 800E8F5C AE000010 */  sw         $zero, 0x10($s0)
/* 107050 800E8F60 AE000014 */  sw         $zero, 0x14($s0)
/* 107054 800E8F64 AE000018 */  sw         $zero, 0x18($s0)
/* 107058 800E8F68 AE00001C */  sw         $zero, 0x1C($s0)
/* 10705C 800E8F6C AE000020 */  sw         $zero, 0x20($s0)
/* 107060 800E8F70 AE000024 */  sw         $zero, 0x24($s0)
/* 107064 800E8F74 AE000028 */  sw         $zero, 0x28($s0)
/* 107068 800E8F78 AE00002C */  sw         $zero, 0x2C($s0)
/* 10706C 800E8F7C AE000030 */  sw         $zero, 0x30($s0)
/* 107070 800E8F80 AE000034 */  sw         $zero, 0x34($s0)
/* 107074 800E8F84 AE000038 */  sw         $zero, 0x38($s0)
/* 107078 800E8F88 AE00003C */  sw         $zero, 0x3C($s0)
/* 10707C 800E8F8C AE000040 */  sw         $zero, 0x40($s0)
/* 107080 800E8F90 AE000044 */  sw         $zero, 0x44($s0)
/* 107084 800E8F94 AE00004C */  sw         $zero, 0x4C($s0)
/* 107088 800E8F98 AE000048 */  sw         $zero, 0x48($s0)
/* 10708C 800E8F9C AE000050 */  sw         $zero, 0x50($s0)
/* 107090 800E8FA0 AE020054 */  sw         $v0, 0x54($s0)
/* 107094 800E8FA4 AE020058 */  sw         $v0, 0x58($s0)
/* 107098 800E8FA8 AE000094 */  sw         $zero, 0x94($s0)
/* 10709C 800E8FAC 0C000697 */  jal        func_80001A5C
/* 1070A0 800E8FB0 AE00005C */   sw        $zero, 0x5C($s0)
/* 1070A4 800E8FB4 26040088 */  addiu      $a0, $s0, 0x88
/* 1070A8 800E8FB8 00002821 */  addu       $a1, $zero, $zero
/* 1070AC 800E8FBC 2406000C */  addiu      $a2, $zero, 0xC
/* 1070B0 800E8FC0 AE000080 */  sw         $zero, 0x80($s0)
/* 1070B4 800E8FC4 0C000697 */  jal        func_80001A5C
/* 1070B8 800E8FC8 AE000084 */   sw        $zero, 0x84($s0)
/* 1070BC 800E8FCC AE0000A4 */  sw         $zero, 0xA4($s0)
/* 1070C0 800E8FD0 AE00009C */  sw         $zero, 0x9C($s0)
/* 1070C4 800E8FD4 AE000098 */  sw         $zero, 0x98($s0)
/* 1070C8 800E8FD8 AE0000A0 */  sw         $zero, 0xA0($s0)
/* 1070CC 800E8FDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1070D0 800E8FE0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1070D4 800E8FE4 03E00008 */  jr         $ra
/* 1070D8 800E8FE8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E8FEC
/* 1070DC 800E8FEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1070E0 800E8FF0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1070E4 800E8FF4 00808021 */  addu       $s0, $a0, $zero
/* 1070E8 800E8FF8 AFB20018 */  sw         $s2, 0x18($sp)
/* 1070EC 800E8FFC 00A09021 */  addu       $s2, $a1, $zero
/* 1070F0 800E9000 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1070F4 800E9004 AFB10014 */  sw         $s1, 0x14($sp)
/* 1070F8 800E9008 8E020000 */  lw         $v0, 0x0($s0)
/* 1070FC 800E900C 10400003 */  beqz       $v0, .Lmenu_800E901C
/* 107100 800E9010 00C08821 */   addu      $s1, $a2, $zero
/* 107104 800E9014 0C03A677 */  jal        func_menu_800E99DC
/* 107108 800E9018 00000000 */   nop
.Lmenu_800E901C:
/* 10710C 800E901C AE120000 */  sw         $s2, 0x0($s0)
/* 107110 800E9020 02202021 */  addu       $a0, $s1, $zero
/* 107114 800E9024 0C0026F4 */  jal        func_80009BD0
/* 107118 800E9028 24050005 */   addiu     $a1, $zero, 0x5
/* 10711C 800E902C 3C02800D */  lui        $v0, %hi(jtbl_menu_800CB5E8)
/* 107120 800E9030 2452B5E8 */  addiu      $s2, $v0, %lo(jtbl_menu_800CB5E8)
.Lmenu_800E9034:
/* 107124 800E9034 8E220028 */  lw         $v0, 0x28($s1)
/* 107128 800E9038 844400A0 */  lh         $a0, 0xA0($v0)
/* 10712C 800E903C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 107130 800E9040 0040F809 */  jalr       $v0
/* 107134 800E9044 02242021 */   addu      $a0, $s1, $a0
/* 107138 800E9048 00401821 */  addu       $v1, $v0, $zero
/* 10713C 800E904C 24020006 */  addiu      $v0, $zero, 0x6
/* 107140 800E9050 10620032 */  beq        $v1, $v0, .Lmenu_800E911C
/* 107144 800E9054 2463FFD7 */   addiu     $v1, $v1, -0x29
/* 107148 800E9058 2C620013 */  sltiu      $v0, $v1, 0x13
/* 10714C 800E905C 10400027 */  beqz       $v0, Lmenu_800E90FC
/* 107150 800E9060 00031080 */   sll       $v0, $v1, 2
/* 107154 800E9064 00521021 */  addu       $v0, $v0, $s2
/* 107158 800E9068 8C420000 */  lw         $v0, 0x0($v0)
/* 10715C 800E906C 00400008 */  jr         $v0
/* 107160 800E9070 00000000 */   nop
glabel Lmenu_800E9074
/* 107164 800E9074 02002021 */  addu       $a0, $s0, $zero
/* 107168 800E9078 0C03A500 */  jal        func_menu_800E9400
/* 10716C 800E907C 02202821 */   addu      $a1, $s1, $zero
/* 107170 800E9080 0803A40D */  j          .Lmenu_800E9034
/* 107174 800E9084 00000000 */   nop
glabel Lmenu_800E9088
/* 107178 800E9088 02002021 */  addu       $a0, $s0, $zero
/* 10717C 800E908C 0C03A548 */  jal        func_menu_800E9520
/* 107180 800E9090 02202821 */   addu      $a1, $s1, $zero
/* 107184 800E9094 0803A40D */  j          .Lmenu_800E9034
/* 107188 800E9098 00000000 */   nop
glabel Lmenu_800E909C
/* 10718C 800E909C 02002021 */  addu       $a0, $s0, $zero
/* 107190 800E90A0 0C03A590 */  jal        func_menu_800E9640
/* 107194 800E90A4 02202821 */   addu      $a1, $s1, $zero
/* 107198 800E90A8 0803A40D */  j          .Lmenu_800E9034
/* 10719C 800E90AC 00000000 */   nop
glabel Lmenu_800E90B0
/* 1071A0 800E90B0 02002021 */  addu       $a0, $s0, $zero
/* 1071A4 800E90B4 0C03A5D5 */  jal        func_menu_800E9754
/* 1071A8 800E90B8 02202821 */   addu      $a1, $s1, $zero
/* 1071AC 800E90BC 0803A40D */  j          .Lmenu_800E9034
/* 1071B0 800E90C0 00000000 */   nop
glabel Lmenu_800E90C4
/* 1071B4 800E90C4 02002021 */  addu       $a0, $s0, $zero
/* 1071B8 800E90C8 0C03A626 */  jal        func_menu_800E9898
/* 1071BC 800E90CC 02202821 */   addu      $a1, $s1, $zero
/* 1071C0 800E90D0 0803A40D */  j          .Lmenu_800E9034
/* 1071C4 800E90D4 00000000 */   nop
glabel Lmenu_800E90D8
/* 1071C8 800E90D8 0C002680 */  jal        func_80009A00
/* 1071CC 800E90DC 02202021 */   addu      $a0, $s1, $zero
/* 1071D0 800E90E0 AE020054 */  sw         $v0, 0x54($s0)
/* 1071D4 800E90E4 0803A40D */  j          .Lmenu_800E9034
/* 1071D8 800E90E8 AE020058 */   sw        $v0, 0x58($s0)
glabel Lmenu_800E90EC
/* 1071DC 800E90EC 0C002680 */  jal        func_80009A00
/* 1071E0 800E90F0 02202021 */   addu      $a0, $s1, $zero
/* 1071E4 800E90F4 0803A40D */  j          .Lmenu_800E9034
/* 1071E8 800E90F8 AE02004C */   sw        $v0, 0x4C($s0)
glabel Lmenu_800E90FC
/* 1071EC 800E90FC 8E220028 */  lw         $v0, 0x28($s1)
/* 1071F0 800E9100 00002821 */  addu       $a1, $zero, $zero
/* 1071F4 800E9104 84440098 */  lh         $a0, 0x98($v0)
/* 1071F8 800E9108 8C42009C */  lw         $v0, 0x9C($v0)
/* 1071FC 800E910C 0040F809 */  jalr       $v0
/* 107200 800E9110 02242021 */   addu      $a0, $s1, $a0
/* 107204 800E9114 0803A40D */  j          .Lmenu_800E9034
/* 107208 800E9118 00000000 */   nop
.Lmenu_800E911C:
/* 10720C 800E911C 8E02004C */  lw         $v0, 0x4C($s0)
/* 107210 800E9120 14400011 */  bnez       $v0, .Lmenu_800E9168
/* 107214 800E9124 3C118012 */   lui       $s1, %hi(D_menu_80126A20)
/* 107218 800E9128 00002821 */  addu       $a1, $zero, $zero
/* 10721C 800E912C 8E060004 */  lw         $a2, 0x4($s0)
/* 107220 800E9130 00A02021 */  addu       $a0, $a1, $zero
.Lmenu_800E9134:
/* 107224 800E9134 00A6102B */  sltu       $v0, $a1, $a2
/* 107228 800E9138 1040000B */  beqz       $v0, .Lmenu_800E9168
/* 10722C 800E913C 3C118012 */   lui       $s1, %hi(D_menu_80126A20)
/* 107230 800E9140 8E020008 */  lw         $v0, 0x8($s0)
/* 107234 800E9144 00821021 */  addu       $v0, $a0, $v0
/* 107238 800E9148 8C43000C */  lw         $v1, 0xC($v0)
/* 10723C 800E914C 8E02004C */  lw         $v0, 0x4C($s0)
/* 107240 800E9150 0043102B */  sltu       $v0, $v0, $v1
/* 107244 800E9154 54400001 */  bnel       $v0, $zero, .Lmenu_800E915C
/* 107248 800E9158 AE03004C */   sw        $v1, 0x4C($s0)
.Lmenu_800E915C:
/* 10724C 800E915C 24840034 */  addiu      $a0, $a0, 0x34
/* 107250 800E9160 0803A44D */  j          .Lmenu_800E9134
/* 107254 800E9164 24A50001 */   addiu     $a1, $a1, 0x1
.Lmenu_800E9168:
/* 107258 800E9168 8E246A20 */  lw         $a0, %lo(D_menu_80126A20)($s1)
/* 10725C 800E916C 8E020004 */  lw         $v0, 0x4($s0)
/* 107260 800E9170 8E03000C */  lw         $v1, 0xC($s0)
/* 107264 800E9174 8E050014 */  lw         $a1, 0x14($s0)
/* 107268 800E9178 00431021 */  addu       $v0, $v0, $v1
/* 10726C 800E917C 00451021 */  addu       $v0, $v0, $a1
/* 107270 800E9180 8E03001C */  lw         $v1, 0x1C($s0)
/* 107274 800E9184 8E050024 */  lw         $a1, 0x24($s0)
/* 107278 800E9188 00431021 */  addu       $v0, $v0, $v1
/* 10727C 800E918C 00451021 */  addu       $v0, $v0, $a1
/* 107280 800E9190 0C01FB65 */  jal        func_8007ED94
/* 107284 800E9194 AE02002C */   sw        $v0, 0x2C($s0)
/* 107288 800E9198 8E04002C */  lw         $a0, 0x2C($s0)
/* 10728C 800E919C 0C00943C */  jal        func_800250F0
/* 107290 800E91A0 00042080 */   sll       $a0, $a0, 2
/* 107294 800E91A4 0C01FB72 */  jal        func_8007EDC8
/* 107298 800E91A8 AE020030 */   sw        $v0, 0x30($s0)
/* 10729C 800E91AC 8E020030 */  lw         $v0, 0x30($s0)
/* 1072A0 800E91B0 14400006 */  bnez       $v0, .Lmenu_800E91CC
/* 1072A4 800E91B4 00002821 */   addu      $a1, $zero, $zero
/* 1072A8 800E91B8 3C04800D */  lui        $a0, %hi(D_menu_800CB5E0)
/* 1072AC 800E91BC 2484B5E0 */  addiu      $a0, $a0, %lo(D_menu_800CB5E0)
/* 1072B0 800E91C0 00A03021 */  addu       $a2, $a1, $zero
/* 1072B4 800E91C4 0C011ACF */  jal        func_80046B3C
/* 1072B8 800E91C8 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E91CC:
/* 1072BC 800E91CC 8E246A20 */  lw         $a0, %lo(D_menu_80126A20)($s1)
/* 1072C0 800E91D0 0C01FB65 */  jal        func_8007ED94
/* 1072C4 800E91D4 00000000 */   nop
/* 1072C8 800E91D8 8E04002C */  lw         $a0, 0x2C($s0)
/* 1072CC 800E91DC 0C00943C */  jal        func_800250F0
/* 1072D0 800E91E0 00042080 */   sll       $a0, $a0, 2
/* 1072D4 800E91E4 0C01FB72 */  jal        func_8007EDC8
/* 1072D8 800E91E8 AE020038 */   sw        $v0, 0x38($s0)
/* 1072DC 800E91EC 8E020038 */  lw         $v0, 0x38($s0)
/* 1072E0 800E91F0 14400008 */  bnez       $v0, .Lmenu_800E9214
/* 1072E4 800E91F4 00003821 */   addu      $a3, $zero, $zero
/* 1072E8 800E91F8 3C04800D */  lui        $a0, %hi(D_menu_800CB5E0)
/* 1072EC 800E91FC 2484B5E0 */  addiu      $a0, $a0, %lo(D_menu_800CB5E0)
/* 1072F0 800E9200 00002821 */  addu       $a1, $zero, $zero
/* 1072F4 800E9204 00A03021 */  addu       $a2, $a1, $zero
/* 1072F8 800E9208 0C011ACF */  jal        func_80046B3C
/* 1072FC 800E920C 00A03821 */   addu      $a3, $a1, $zero
/* 107300 800E9210 00003821 */  addu       $a3, $zero, $zero
.Lmenu_800E9214:
/* 107304 800E9214 8E020004 */  lw         $v0, 0x4($s0)
/* 107308 800E9218 10400013 */  beqz       $v0, .Lmenu_800E9268
/* 10730C 800E921C 00E02821 */   addu      $a1, $a3, $zero
/* 107310 800E9220 00E03021 */  addu       $a2, $a3, $zero
.Lmenu_800E9224:
/* 107314 800E9224 00072080 */  sll        $a0, $a3, 2
/* 107318 800E9228 24E70001 */  addiu      $a3, $a3, 0x1
/* 10731C 800E922C 24A50001 */  addiu      $a1, $a1, 0x1
/* 107320 800E9230 8E030030 */  lw         $v1, 0x30($s0)
/* 107324 800E9234 8E020008 */  lw         $v0, 0x8($s0)
/* 107328 800E9238 00831821 */  addu       $v1, $a0, $v1
/* 10732C 800E923C 00461021 */  addu       $v0, $v0, $a2
/* 107330 800E9240 AC620000 */  sw         $v0, 0x0($v1)
/* 107334 800E9244 8E030038 */  lw         $v1, 0x38($s0)
/* 107338 800E9248 8E020008 */  lw         $v0, 0x8($s0)
/* 10733C 800E924C 00832021 */  addu       $a0, $a0, $v1
/* 107340 800E9250 00461021 */  addu       $v0, $v0, $a2
/* 107344 800E9254 AC820000 */  sw         $v0, 0x0($a0)
/* 107348 800E9258 8E020004 */  lw         $v0, 0x4($s0)
/* 10734C 800E925C 00A2102B */  sltu       $v0, $a1, $v0
/* 107350 800E9260 1440FFF0 */  bnez       $v0, .Lmenu_800E9224
/* 107354 800E9264 24C60034 */   addiu     $a2, $a2, 0x34
.Lmenu_800E9268:
/* 107358 800E9268 8E02000C */  lw         $v0, 0xC($s0)
/* 10735C 800E926C 10400013 */  beqz       $v0, .Lmenu_800E92BC
/* 107360 800E9270 00002821 */   addu      $a1, $zero, $zero
/* 107364 800E9274 00A03021 */  addu       $a2, $a1, $zero
.Lmenu_800E9278:
/* 107368 800E9278 00072080 */  sll        $a0, $a3, 2
/* 10736C 800E927C 24E70001 */  addiu      $a3, $a3, 0x1
/* 107370 800E9280 24A50001 */  addiu      $a1, $a1, 0x1
/* 107374 800E9284 8E030030 */  lw         $v1, 0x30($s0)
/* 107378 800E9288 8E020010 */  lw         $v0, 0x10($s0)
/* 10737C 800E928C 00831821 */  addu       $v1, $a0, $v1
/* 107380 800E9290 00461021 */  addu       $v0, $v0, $a2
/* 107384 800E9294 AC620000 */  sw         $v0, 0x0($v1)
/* 107388 800E9298 8E030038 */  lw         $v1, 0x38($s0)
/* 10738C 800E929C 8E020010 */  lw         $v0, 0x10($s0)
/* 107390 800E92A0 00832021 */  addu       $a0, $a0, $v1
/* 107394 800E92A4 00461021 */  addu       $v0, $v0, $a2
/* 107398 800E92A8 AC820000 */  sw         $v0, 0x0($a0)
/* 10739C 800E92AC 8E02000C */  lw         $v0, 0xC($s0)
/* 1073A0 800E92B0 00A2102B */  sltu       $v0, $a1, $v0
/* 1073A4 800E92B4 1440FFF0 */  bnez       $v0, .Lmenu_800E9278
/* 1073A8 800E92B8 24C60068 */   addiu     $a2, $a2, 0x68
.Lmenu_800E92BC:
/* 1073AC 800E92BC 8E020014 */  lw         $v0, 0x14($s0)
/* 1073B0 800E92C0 10400013 */  beqz       $v0, .Lmenu_800E9310
/* 1073B4 800E92C4 00002821 */   addu      $a1, $zero, $zero
/* 1073B8 800E92C8 00A03021 */  addu       $a2, $a1, $zero
.Lmenu_800E92CC:
/* 1073BC 800E92CC 00072080 */  sll        $a0, $a3, 2
/* 1073C0 800E92D0 24E70001 */  addiu      $a3, $a3, 0x1
/* 1073C4 800E92D4 24A50001 */  addiu      $a1, $a1, 0x1
/* 1073C8 800E92D8 8E030030 */  lw         $v1, 0x30($s0)
/* 1073CC 800E92DC 8E020018 */  lw         $v0, 0x18($s0)
/* 1073D0 800E92E0 00831821 */  addu       $v1, $a0, $v1
/* 1073D4 800E92E4 00461021 */  addu       $v0, $v0, $a2
/* 1073D8 800E92E8 AC620000 */  sw         $v0, 0x0($v1)
/* 1073DC 800E92EC 8E030038 */  lw         $v1, 0x38($s0)
/* 1073E0 800E92F0 8E020018 */  lw         $v0, 0x18($s0)
/* 1073E4 800E92F4 00832021 */  addu       $a0, $a0, $v1
/* 1073E8 800E92F8 00461021 */  addu       $v0, $v0, $a2
/* 1073EC 800E92FC AC820000 */  sw         $v0, 0x0($a0)
/* 1073F0 800E9300 8E020014 */  lw         $v0, 0x14($s0)
/* 1073F4 800E9304 00A2102B */  sltu       $v0, $a1, $v0
/* 1073F8 800E9308 1440FFF0 */  bnez       $v0, .Lmenu_800E92CC
/* 1073FC 800E930C 24C60044 */   addiu     $a2, $a2, 0x44
.Lmenu_800E9310:
/* 107400 800E9310 8E02001C */  lw         $v0, 0x1C($s0)
/* 107404 800E9314 10400013 */  beqz       $v0, .Lmenu_800E9364
/* 107408 800E9318 00002821 */   addu      $a1, $zero, $zero
/* 10740C 800E931C 00A03021 */  addu       $a2, $a1, $zero
.Lmenu_800E9320:
/* 107410 800E9320 00072080 */  sll        $a0, $a3, 2
/* 107414 800E9324 24E70001 */  addiu      $a3, $a3, 0x1
/* 107418 800E9328 24A50001 */  addiu      $a1, $a1, 0x1
/* 10741C 800E932C 8E030030 */  lw         $v1, 0x30($s0)
/* 107420 800E9330 8E020020 */  lw         $v0, 0x20($s0)
/* 107424 800E9334 00831821 */  addu       $v1, $a0, $v1
/* 107428 800E9338 00461021 */  addu       $v0, $v0, $a2
/* 10742C 800E933C AC620000 */  sw         $v0, 0x0($v1)
/* 107430 800E9340 8E030038 */  lw         $v1, 0x38($s0)
/* 107434 800E9344 8E020020 */  lw         $v0, 0x20($s0)
/* 107438 800E9348 00832021 */  addu       $a0, $a0, $v1
/* 10743C 800E934C 00461021 */  addu       $v0, $v0, $a2
/* 107440 800E9350 AC820000 */  sw         $v0, 0x0($a0)
/* 107444 800E9354 8E02001C */  lw         $v0, 0x1C($s0)
/* 107448 800E9358 00A2102B */  sltu       $v0, $a1, $v0
/* 10744C 800E935C 1440FFF0 */  bnez       $v0, .Lmenu_800E9320
/* 107450 800E9360 24C60038 */   addiu     $a2, $a2, 0x38
.Lmenu_800E9364:
/* 107454 800E9364 8E020024 */  lw         $v0, 0x24($s0)
/* 107458 800E9368 10400013 */  beqz       $v0, .Lmenu_800E93B8
/* 10745C 800E936C 00002821 */   addu      $a1, $zero, $zero
/* 107460 800E9370 00A03021 */  addu       $a2, $a1, $zero
.Lmenu_800E9374:
/* 107464 800E9374 00072080 */  sll        $a0, $a3, 2
/* 107468 800E9378 24E70001 */  addiu      $a3, $a3, 0x1
/* 10746C 800E937C 24A50001 */  addiu      $a1, $a1, 0x1
/* 107470 800E9380 8E030030 */  lw         $v1, 0x30($s0)
/* 107474 800E9384 8E020028 */  lw         $v0, 0x28($s0)
/* 107478 800E9388 00831821 */  addu       $v1, $a0, $v1
/* 10747C 800E938C 00461021 */  addu       $v0, $v0, $a2
/* 107480 800E9390 AC620000 */  sw         $v0, 0x0($v1)
/* 107484 800E9394 8E030038 */  lw         $v1, 0x38($s0)
/* 107488 800E9398 8E020028 */  lw         $v0, 0x28($s0)
/* 10748C 800E939C 00832021 */  addu       $a0, $a0, $v1
/* 107490 800E93A0 00461021 */  addu       $v0, $v0, $a2
/* 107494 800E93A4 AC820000 */  sw         $v0, 0x0($a0)
/* 107498 800E93A8 8E020024 */  lw         $v0, 0x24($s0)
/* 10749C 800E93AC 00A2102B */  sltu       $v0, $a1, $v0
/* 1074A0 800E93B0 1440FFF0 */  bnez       $v0, .Lmenu_800E9374
/* 1074A4 800E93B4 24C60044 */   addiu     $a2, $a2, 0x44
.Lmenu_800E93B8:
/* 1074A8 800E93B8 24060004 */  addiu      $a2, $zero, 0x4
/* 1074AC 800E93BC 3C07800F */  lui        $a3, %hi(func_menu_800E8A44)
/* 1074B0 800E93C0 8E040030 */  lw         $a0, 0x30($s0)
/* 1074B4 800E93C4 8E05002C */  lw         $a1, 0x2C($s0)
/* 1074B8 800E93C8 0C0007B1 */  jal        func_80001EC4
/* 1074BC 800E93CC 24E78A44 */   addiu     $a3, $a3, %lo(func_menu_800E8A44)
/* 1074C0 800E93D0 24060004 */  addiu      $a2, $zero, 0x4
/* 1074C4 800E93D4 3C07800F */  lui        $a3, %hi(func_menu_800E8A7C)
/* 1074C8 800E93D8 8E040038 */  lw         $a0, 0x38($s0)
/* 1074CC 800E93DC 8E05002C */  lw         $a1, 0x2C($s0)
/* 1074D0 800E93E0 0C0007B1 */  jal        func_80001EC4
/* 1074D4 800E93E4 24E78A7C */   addiu     $a3, $a3, %lo(func_menu_800E8A7C)
/* 1074D8 800E93E8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1074DC 800E93EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1074E0 800E93F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1074E4 800E93F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1074E8 800E93F8 03E00008 */  jr         $ra
/* 1074EC 800E93FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E9400
/* 1074F0 800E9400 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1074F4 800E9404 AFB40020 */  sw         $s4, 0x20($sp)
/* 1074F8 800E9408 0080A021 */  addu       $s4, $a0, $zero
/* 1074FC 800E940C AFB50024 */  sw         $s5, 0x24($sp)
/* 107500 800E9410 00A0A821 */  addu       $s5, $a1, $zero
/* 107504 800E9414 02A02021 */  addu       $a0, $s5, $zero
/* 107508 800E9418 AFBF0028 */  sw         $ra, 0x28($sp)
/* 10750C 800E941C AFB3001C */  sw         $s3, 0x1C($sp)
/* 107510 800E9420 AFB20018 */  sw         $s2, 0x18($sp)
/* 107514 800E9424 AFB10014 */  sw         $s1, 0x14($sp)
/* 107518 800E9428 0C002723 */  jal        func_80009C8C
/* 10751C 800E942C AFB00010 */   sw        $s0, 0x10($sp)
/* 107520 800E9430 3C038012 */  lui        $v1, %hi(D_menu_80126A20)
/* 107524 800E9434 8C646A20 */  lw         $a0, %lo(D_menu_80126A20)($v1)
/* 107528 800E9438 0C01FB65 */  jal        func_8007ED94
/* 10752C 800E943C AE820004 */   sw        $v0, 0x4($s4)
/* 107530 800E9440 8E900004 */  lw         $s0, 0x4($s4)
/* 107534 800E9444 00102040 */  sll        $a0, $s0, 1
/* 107538 800E9448 00902021 */  addu       $a0, $a0, $s0
/* 10753C 800E944C 00042080 */  sll        $a0, $a0, 2
/* 107540 800E9450 00902021 */  addu       $a0, $a0, $s0
/* 107544 800E9454 00042080 */  sll        $a0, $a0, 2
/* 107548 800E9458 0C00943C */  jal        func_800250F0
/* 10754C 800E945C 24840008 */   addiu     $a0, $a0, 0x8
/* 107550 800E9460 24420008 */  addiu      $v0, $v0, 0x8
/* 107554 800E9464 00409821 */  addu       $s3, $v0, $zero
/* 107558 800E9468 02609021 */  addu       $s2, $s3, $zero
/* 10755C 800E946C 2611FFFF */  addiu      $s1, $s0, -0x1
/* 107560 800E9470 06200007 */  bltz       $s1, .Lmenu_800E9490
/* 107564 800E9474 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 107568 800E9478 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E947C:
/* 10756C 800E947C 0C03A070 */  jal        func_menu_800E81C0
/* 107570 800E9480 02402021 */   addu      $a0, $s2, $zero
/* 107574 800E9484 2631FFFF */  addiu      $s1, $s1, -0x1
/* 107578 800E9488 1630FFFC */  bne        $s1, $s0, .Lmenu_800E947C
/* 10757C 800E948C 26520034 */   addiu     $s2, $s2, 0x34
.Lmenu_800E9490:
/* 107580 800E9490 0C01FB72 */  jal        func_8007EDC8
/* 107584 800E9494 AE930008 */   sw        $s3, 0x8($s4)
/* 107588 800E9498 8E820008 */  lw         $v0, 0x8($s4)
/* 10758C 800E949C 14400006 */  bnez       $v0, .Lmenu_800E94B8
/* 107590 800E94A0 3C04800D */   lui       $a0, %hi(D_menu_800CB5E0)
/* 107594 800E94A4 2484B5E0 */  addiu      $a0, $a0, %lo(D_menu_800CB5E0)
/* 107598 800E94A8 00002821 */  addu       $a1, $zero, $zero
/* 10759C 800E94AC 00A03021 */  addu       $a2, $a1, $zero
/* 1075A0 800E94B0 0C011ACF */  jal        func_80046B3C
/* 1075A4 800E94B4 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E94B8:
/* 1075A8 800E94B8 8E820004 */  lw         $v0, 0x4($s4)
/* 1075AC 800E94BC 1040000C */  beqz       $v0, .Lmenu_800E94F0
/* 1075B0 800E94C0 00008021 */   addu      $s0, $zero, $zero
/* 1075B4 800E94C4 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E94C8:
/* 1075B8 800E94C8 02A03021 */  addu       $a2, $s5, $zero
/* 1075BC 800E94CC 26100001 */  addiu      $s0, $s0, 0x1
/* 1075C0 800E94D0 8E840008 */  lw         $a0, 0x8($s4)
/* 1075C4 800E94D4 8E850000 */  lw         $a1, 0x0($s4)
/* 1075C8 800E94D8 0C03A082 */  jal        func_menu_800E8208
/* 1075CC 800E94DC 00912021 */   addu      $a0, $a0, $s1
/* 1075D0 800E94E0 8E820004 */  lw         $v0, 0x4($s4)
/* 1075D4 800E94E4 0202102B */  sltu       $v0, $s0, $v0
/* 1075D8 800E94E8 1440FFF7 */  bnez       $v0, .Lmenu_800E94C8
/* 1075DC 800E94EC 26310034 */   addiu     $s1, $s1, 0x34
.Lmenu_800E94F0:
/* 1075E0 800E94F0 02A02021 */  addu       $a0, $s5, $zero
/* 1075E4 800E94F4 0C0026F4 */  jal        func_80009BD0
/* 1075E8 800E94F8 24050006 */   addiu     $a1, $zero, 0x6
/* 1075EC 800E94FC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1075F0 800E9500 8FB50024 */  lw         $s5, 0x24($sp)
/* 1075F4 800E9504 8FB40020 */  lw         $s4, 0x20($sp)
/* 1075F8 800E9508 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1075FC 800E950C 8FB20018 */  lw         $s2, 0x18($sp)
/* 107600 800E9510 8FB10014 */  lw         $s1, 0x14($sp)
/* 107604 800E9514 8FB00010 */  lw         $s0, 0x10($sp)
/* 107608 800E9518 03E00008 */  jr         $ra
/* 10760C 800E951C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E9520
/* 107610 800E9520 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 107614 800E9524 AFB40020 */  sw         $s4, 0x20($sp)
/* 107618 800E9528 0080A021 */  addu       $s4, $a0, $zero
/* 10761C 800E952C AFB50024 */  sw         $s5, 0x24($sp)
/* 107620 800E9530 00A0A821 */  addu       $s5, $a1, $zero
/* 107624 800E9534 02A02021 */  addu       $a0, $s5, $zero
/* 107628 800E9538 AFBF0028 */  sw         $ra, 0x28($sp)
/* 10762C 800E953C AFB3001C */  sw         $s3, 0x1C($sp)
/* 107630 800E9540 AFB20018 */  sw         $s2, 0x18($sp)
/* 107634 800E9544 AFB10014 */  sw         $s1, 0x14($sp)
/* 107638 800E9548 0C002723 */  jal        func_80009C8C
/* 10763C 800E954C AFB00010 */   sw        $s0, 0x10($sp)
/* 107640 800E9550 3C038012 */  lui        $v1, %hi(D_menu_80126A20)
/* 107644 800E9554 8C646A20 */  lw         $a0, %lo(D_menu_80126A20)($v1)
/* 107648 800E9558 0C01FB65 */  jal        func_8007ED94
/* 10764C 800E955C AE82000C */   sw        $v0, 0xC($s4)
/* 107650 800E9560 8E90000C */  lw         $s0, 0xC($s4)
/* 107654 800E9564 00102040 */  sll        $a0, $s0, 1
/* 107658 800E9568 00902021 */  addu       $a0, $a0, $s0
/* 10765C 800E956C 00042080 */  sll        $a0, $a0, 2
/* 107660 800E9570 00902021 */  addu       $a0, $a0, $s0
/* 107664 800E9574 000420C0 */  sll        $a0, $a0, 3
/* 107668 800E9578 0C00943C */  jal        func_800250F0
/* 10766C 800E957C 24840008 */   addiu     $a0, $a0, 0x8
/* 107670 800E9580 24420008 */  addiu      $v0, $v0, 0x8
/* 107674 800E9584 00409821 */  addu       $s3, $v0, $zero
/* 107678 800E9588 02609021 */  addu       $s2, $s3, $zero
/* 10767C 800E958C 2611FFFF */  addiu      $s1, $s0, -0x1
/* 107680 800E9590 06200007 */  bltz       $s1, .Lmenu_800E95B0
/* 107684 800E9594 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 107688 800E9598 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E959C:
/* 10768C 800E959C 0C039DEC */  jal        func_menu_800E77B0
/* 107690 800E95A0 02402021 */   addu      $a0, $s2, $zero
/* 107694 800E95A4 2631FFFF */  addiu      $s1, $s1, -0x1
/* 107698 800E95A8 1630FFFC */  bne        $s1, $s0, .Lmenu_800E959C
/* 10769C 800E95AC 26520068 */   addiu     $s2, $s2, 0x68
.Lmenu_800E95B0:
/* 1076A0 800E95B0 0C01FB72 */  jal        func_8007EDC8
/* 1076A4 800E95B4 AE930010 */   sw        $s3, 0x10($s4)
/* 1076A8 800E95B8 8E820010 */  lw         $v0, 0x10($s4)
/* 1076AC 800E95BC 14400006 */  bnez       $v0, .Lmenu_800E95D8
/* 1076B0 800E95C0 3C04800D */   lui       $a0, %hi(D_menu_800CB5E0)
/* 1076B4 800E95C4 2484B5E0 */  addiu      $a0, $a0, %lo(D_menu_800CB5E0)
/* 1076B8 800E95C8 00002821 */  addu       $a1, $zero, $zero
/* 1076BC 800E95CC 00A03021 */  addu       $a2, $a1, $zero
/* 1076C0 800E95D0 0C011ACF */  jal        func_80046B3C
/* 1076C4 800E95D4 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E95D8:
/* 1076C8 800E95D8 8E82000C */  lw         $v0, 0xC($s4)
/* 1076CC 800E95DC 1040000C */  beqz       $v0, .Lmenu_800E9610
/* 1076D0 800E95E0 00008021 */   addu      $s0, $zero, $zero
/* 1076D4 800E95E4 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E95E8:
/* 1076D8 800E95E8 02A03021 */  addu       $a2, $s5, $zero
/* 1076DC 800E95EC 26100001 */  addiu      $s0, $s0, 0x1
/* 1076E0 800E95F0 8E840010 */  lw         $a0, 0x10($s4)
/* 1076E4 800E95F4 8E850000 */  lw         $a1, 0x0($s4)
/* 1076E8 800E95F8 0C039E24 */  jal        func_menu_800E7890
/* 1076EC 800E95FC 00912021 */   addu      $a0, $a0, $s1
/* 1076F0 800E9600 8E82000C */  lw         $v0, 0xC($s4)
/* 1076F4 800E9604 0202102B */  sltu       $v0, $s0, $v0
/* 1076F8 800E9608 1440FFF7 */  bnez       $v0, .Lmenu_800E95E8
/* 1076FC 800E960C 26310068 */   addiu     $s1, $s1, 0x68
.Lmenu_800E9610:
/* 107700 800E9610 02A02021 */  addu       $a0, $s5, $zero
/* 107704 800E9614 0C0026F4 */  jal        func_80009BD0
/* 107708 800E9618 24050006 */   addiu     $a1, $zero, 0x6
/* 10770C 800E961C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 107710 800E9620 8FB50024 */  lw         $s5, 0x24($sp)
/* 107714 800E9624 8FB40020 */  lw         $s4, 0x20($sp)
/* 107718 800E9628 8FB3001C */  lw         $s3, 0x1C($sp)
/* 10771C 800E962C 8FB20018 */  lw         $s2, 0x18($sp)
/* 107720 800E9630 8FB10014 */  lw         $s1, 0x14($sp)
/* 107724 800E9634 8FB00010 */  lw         $s0, 0x10($sp)
/* 107728 800E9638 03E00008 */  jr         $ra
/* 10772C 800E963C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E9640
/* 107730 800E9640 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 107734 800E9644 AFB40020 */  sw         $s4, 0x20($sp)
/* 107738 800E9648 0080A021 */  addu       $s4, $a0, $zero
/* 10773C 800E964C AFB50024 */  sw         $s5, 0x24($sp)
/* 107740 800E9650 00A0A821 */  addu       $s5, $a1, $zero
/* 107744 800E9654 02A02021 */  addu       $a0, $s5, $zero
/* 107748 800E9658 AFBF0028 */  sw         $ra, 0x28($sp)
/* 10774C 800E965C AFB3001C */  sw         $s3, 0x1C($sp)
/* 107750 800E9660 AFB20018 */  sw         $s2, 0x18($sp)
/* 107754 800E9664 AFB10014 */  sw         $s1, 0x14($sp)
/* 107758 800E9668 0C002723 */  jal        func_80009C8C
/* 10775C 800E966C AFB00010 */   sw        $s0, 0x10($sp)
/* 107760 800E9670 3C038012 */  lui        $v1, %hi(D_menu_80126A20)
/* 107764 800E9674 8C646A20 */  lw         $a0, %lo(D_menu_80126A20)($v1)
/* 107768 800E9678 0C01FB65 */  jal        func_8007ED94
/* 10776C 800E967C AE820014 */   sw        $v0, 0x14($s4)
/* 107770 800E9680 8E900014 */  lw         $s0, 0x14($s4)
/* 107774 800E9684 00102100 */  sll        $a0, $s0, 4
/* 107778 800E9688 00902021 */  addu       $a0, $a0, $s0
/* 10777C 800E968C 00042080 */  sll        $a0, $a0, 2
/* 107780 800E9690 0C00943C */  jal        func_800250F0
/* 107784 800E9694 24840008 */   addiu     $a0, $a0, 0x8
/* 107788 800E9698 24420008 */  addiu      $v0, $v0, 0x8
/* 10778C 800E969C 00409821 */  addu       $s3, $v0, $zero
/* 107790 800E96A0 02609021 */  addu       $s2, $s3, $zero
/* 107794 800E96A4 2611FFFF */  addiu      $s1, $s0, -0x1
/* 107798 800E96A8 06200007 */  bltz       $s1, .Lmenu_800E96C8
/* 10779C 800E96AC AE70FFF8 */   sw        $s0, -0x8($s3)
/* 1077A0 800E96B0 2410FFFF */  addiu      $s0, $zero, -0x1
.Lmenu_800E96B4:
/* 1077A4 800E96B4 0C03AC18 */  jal        func_menu_800EB060
/* 1077A8 800E96B8 02402021 */   addu      $a0, $s2, $zero
/* 1077AC 800E96BC 2631FFFF */  addiu      $s1, $s1, -0x1
/* 1077B0 800E96C0 1630FFFC */  bne        $s1, $s0, .Lmenu_800E96B4
/* 1077B4 800E96C4 26520044 */   addiu     $s2, $s2, 0x44
.Lmenu_800E96C8:
/* 1077B8 800E96C8 0C01FB72 */  jal        func_8007EDC8
/* 1077BC 800E96CC AE930018 */   sw        $s3, 0x18($s4)
/* 1077C0 800E96D0 8E820018 */  lw         $v0, 0x18($s4)
/* 1077C4 800E96D4 14400006 */  bnez       $v0, .Lmenu_800E96F0
/* 1077C8 800E96D8 3C04800D */   lui       $a0, %hi(D_menu_800CB5E0)
/* 1077CC 800E96DC 2484B5E0 */  addiu      $a0, $a0, %lo(D_menu_800CB5E0)
/* 1077D0 800E96E0 00002821 */  addu       $a1, $zero, $zero
/* 1077D4 800E96E4 00A03021 */  addu       $a2, $a1, $zero
/* 1077D8 800E96E8 0C011ACF */  jal        func_80046B3C
/* 1077DC 800E96EC 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E96F0:
/* 1077E0 800E96F0 8E820014 */  lw         $v0, 0x14($s4)
/* 1077E4 800E96F4 1040000B */  beqz       $v0, .Lmenu_800E9724
/* 1077E8 800E96F8 00008021 */   addu      $s0, $zero, $zero
/* 1077EC 800E96FC 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E9700:
/* 1077F0 800E9700 02A02821 */  addu       $a1, $s5, $zero
/* 1077F4 800E9704 8E840018 */  lw         $a0, 0x18($s4)
/* 1077F8 800E9708 26100001 */  addiu      $s0, $s0, 0x1
/* 1077FC 800E970C 0C03AC45 */  jal        func_menu_800EB114
/* 107800 800E9710 00912021 */   addu      $a0, $a0, $s1
/* 107804 800E9714 8E820014 */  lw         $v0, 0x14($s4)
/* 107808 800E9718 0202102B */  sltu       $v0, $s0, $v0
/* 10780C 800E971C 1440FFF8 */  bnez       $v0, .Lmenu_800E9700
/* 107810 800E9720 26310044 */   addiu     $s1, $s1, 0x44
.Lmenu_800E9724:
/* 107814 800E9724 02A02021 */  addu       $a0, $s5, $zero
/* 107818 800E9728 0C0026F4 */  jal        func_80009BD0
/* 10781C 800E972C 24050006 */   addiu     $a1, $zero, 0x6
/* 107820 800E9730 8FBF0028 */  lw         $ra, 0x28($sp)
/* 107824 800E9734 8FB50024 */  lw         $s5, 0x24($sp)
/* 107828 800E9738 8FB40020 */  lw         $s4, 0x20($sp)
/* 10782C 800E973C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 107830 800E9740 8FB20018 */  lw         $s2, 0x18($sp)
/* 107834 800E9744 8FB10014 */  lw         $s1, 0x14($sp)
/* 107838 800E9748 8FB00010 */  lw         $s0, 0x10($sp)
/* 10783C 800E974C 03E00008 */  jr         $ra
/* 107840 800E9750 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E9754
/* 107844 800E9754 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 107848 800E9758 AFB40020 */  sw         $s4, 0x20($sp)
/* 10784C 800E975C 0080A021 */  addu       $s4, $a0, $zero
/* 107850 800E9760 AFB7002C */  sw         $s7, 0x2C($sp)
/* 107854 800E9764 00A0B821 */  addu       $s7, $a1, $zero
/* 107858 800E9768 02E02021 */  addu       $a0, $s7, $zero
/* 10785C 800E976C AFBF0030 */  sw         $ra, 0x30($sp)
/* 107860 800E9770 AFB60028 */  sw         $s6, 0x28($sp)
/* 107864 800E9774 AFB50024 */  sw         $s5, 0x24($sp)
/* 107868 800E9778 AFB3001C */  sw         $s3, 0x1C($sp)
/* 10786C 800E977C AFB20018 */  sw         $s2, 0x18($sp)
/* 107870 800E9780 AFB10014 */  sw         $s1, 0x14($sp)
/* 107874 800E9784 0C002723 */  jal        func_80009C8C
/* 107878 800E9788 AFB00010 */   sw        $s0, 0x10($sp)
/* 10787C 800E978C 3C038012 */  lui        $v1, %hi(D_menu_80126A20)
/* 107880 800E9790 8C646A20 */  lw         $a0, %lo(D_menu_80126A20)($v1)
/* 107884 800E9794 0C01FB65 */  jal        func_8007ED94
/* 107888 800E9798 AE82001C */   sw        $v0, 0x1C($s4)
/* 10788C 800E979C 8E90001C */  lw         $s0, 0x1C($s4)
/* 107890 800E97A0 001020C0 */  sll        $a0, $s0, 3
/* 107894 800E97A4 00902023 */  subu       $a0, $a0, $s0
/* 107898 800E97A8 000420C0 */  sll        $a0, $a0, 3
/* 10789C 800E97AC 0C00943C */  jal        func_800250F0
/* 1078A0 800E97B0 24840008 */   addiu     $a0, $a0, 0x8
/* 1078A4 800E97B4 00402021 */  addu       $a0, $v0, $zero
/* 1078A8 800E97B8 24820008 */  addiu      $v0, $a0, 0x8
/* 1078AC 800E97BC 00409821 */  addu       $s3, $v0, $zero
/* 1078B0 800E97C0 02609021 */  addu       $s2, $s3, $zero
/* 1078B4 800E97C4 2611FFFF */  addiu      $s1, $s0, -0x1
/* 1078B8 800E97C8 0620000E */  bltz       $s1, .Lmenu_800E9804
/* 1078BC 800E97CC AE70FFF8 */   sw        $s0, -0x8($s3)
/* 1078C0 800E97D0 3C02800D */  lui        $v0, %hi(D_menu_800CB5A8)
/* 1078C4 800E97D4 2456B5A8 */  addiu      $s6, $v0, %lo(D_menu_800CB5A8)
/* 1078C8 800E97D8 2415FFFF */  addiu      $s5, $zero, -0x1
/* 1078CC 800E97DC 24900028 */  addiu      $s0, $a0, 0x28
.Lmenu_800E97E0:
/* 1078D0 800E97E0 0C03A244 */  jal        func_menu_800E8910
/* 1078D4 800E97E4 02402021 */   addu      $a0, $s2, $zero
/* 1078D8 800E97E8 AE16FFFC */  sw         $s6, -0x4($s0)
/* 1078DC 800E97EC 0C03B3B4 */  jal        func_menu_800ECED0
/* 1078E0 800E97F0 02002021 */   addu      $a0, $s0, $zero
/* 1078E4 800E97F4 26100038 */  addiu      $s0, $s0, 0x38
/* 1078E8 800E97F8 2631FFFF */  addiu      $s1, $s1, -0x1
/* 1078EC 800E97FC 1635FFF8 */  bne        $s1, $s5, .Lmenu_800E97E0
/* 1078F0 800E9800 26520038 */   addiu     $s2, $s2, 0x38
.Lmenu_800E9804:
/* 1078F4 800E9804 0C01FB72 */  jal        func_8007EDC8
/* 1078F8 800E9808 AE930020 */   sw        $s3, 0x20($s4)
/* 1078FC 800E980C 8E820020 */  lw         $v0, 0x20($s4)
/* 107900 800E9810 14400006 */  bnez       $v0, .Lmenu_800E982C
/* 107904 800E9814 3C04800D */   lui       $a0, %hi(D_menu_800CB5E0)
/* 107908 800E9818 2484B5E0 */  addiu      $a0, $a0, %lo(D_menu_800CB5E0)
/* 10790C 800E981C 00002821 */  addu       $a1, $zero, $zero
/* 107910 800E9820 00A03021 */  addu       $a2, $a1, $zero
/* 107914 800E9824 0C011ACF */  jal        func_80046B3C
/* 107918 800E9828 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E982C:
/* 10791C 800E982C 8E82001C */  lw         $v0, 0x1C($s4)
/* 107920 800E9830 1040000B */  beqz       $v0, .Lmenu_800E9860
/* 107924 800E9834 00008021 */   addu      $s0, $zero, $zero
/* 107928 800E9838 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E983C:
/* 10792C 800E983C 02E02821 */  addu       $a1, $s7, $zero
/* 107930 800E9840 8E840020 */  lw         $a0, 0x20($s4)
/* 107934 800E9844 26100001 */  addiu      $s0, $s0, 0x1
/* 107938 800E9848 0C03A2C4 */  jal        func_menu_800E8B10
/* 10793C 800E984C 00912021 */   addu      $a0, $a0, $s1
/* 107940 800E9850 8E82001C */  lw         $v0, 0x1C($s4)
/* 107944 800E9854 0202102B */  sltu       $v0, $s0, $v0
/* 107948 800E9858 1440FFF8 */  bnez       $v0, .Lmenu_800E983C
/* 10794C 800E985C 26310038 */   addiu     $s1, $s1, 0x38
.Lmenu_800E9860:
/* 107950 800E9860 02E02021 */  addu       $a0, $s7, $zero
/* 107954 800E9864 0C0026F4 */  jal        func_80009BD0
/* 107958 800E9868 24050006 */   addiu     $a1, $zero, 0x6
/* 10795C 800E986C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 107960 800E9870 8FB7002C */  lw         $s7, 0x2C($sp)
/* 107964 800E9874 8FB60028 */  lw         $s6, 0x28($sp)
/* 107968 800E9878 8FB50024 */  lw         $s5, 0x24($sp)
/* 10796C 800E987C 8FB40020 */  lw         $s4, 0x20($sp)
/* 107970 800E9880 8FB3001C */  lw         $s3, 0x1C($sp)
/* 107974 800E9884 8FB20018 */  lw         $s2, 0x18($sp)
/* 107978 800E9888 8FB10014 */  lw         $s1, 0x14($sp)
/* 10797C 800E988C 8FB00010 */  lw         $s0, 0x10($sp)
/* 107980 800E9890 03E00008 */  jr         $ra
/* 107984 800E9894 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E9898
/* 107988 800E9898 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10798C 800E989C AFB40020 */  sw         $s4, 0x20($sp)
/* 107990 800E98A0 0080A021 */  addu       $s4, $a0, $zero
/* 107994 800E98A4 AFB7002C */  sw         $s7, 0x2C($sp)
/* 107998 800E98A8 00A0B821 */  addu       $s7, $a1, $zero
/* 10799C 800E98AC 02E02021 */  addu       $a0, $s7, $zero
/* 1079A0 800E98B0 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1079A4 800E98B4 AFB60028 */  sw         $s6, 0x28($sp)
/* 1079A8 800E98B8 AFB50024 */  sw         $s5, 0x24($sp)
/* 1079AC 800E98BC AFB3001C */  sw         $s3, 0x1C($sp)
/* 1079B0 800E98C0 AFB20018 */  sw         $s2, 0x18($sp)
/* 1079B4 800E98C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1079B8 800E98C8 0C002723 */  jal        func_80009C8C
/* 1079BC 800E98CC AFB00010 */   sw        $s0, 0x10($sp)
/* 1079C0 800E98D0 3C038012 */  lui        $v1, %hi(D_menu_80126A20)
/* 1079C4 800E98D4 8C646A20 */  lw         $a0, %lo(D_menu_80126A20)($v1)
/* 1079C8 800E98D8 0C01FB65 */  jal        func_8007ED94
/* 1079CC 800E98DC AE820024 */   sw        $v0, 0x24($s4)
/* 1079D0 800E98E0 8E900024 */  lw         $s0, 0x24($s4)
/* 1079D4 800E98E4 00102100 */  sll        $a0, $s0, 4
/* 1079D8 800E98E8 00902021 */  addu       $a0, $a0, $s0
/* 1079DC 800E98EC 00042080 */  sll        $a0, $a0, 2
/* 1079E0 800E98F0 0C00943C */  jal        func_800250F0
/* 1079E4 800E98F4 24840008 */   addiu     $a0, $a0, 0x8
/* 1079E8 800E98F8 00402021 */  addu       $a0, $v0, $zero
/* 1079EC 800E98FC 24820008 */  addiu      $v0, $a0, 0x8
/* 1079F0 800E9900 00409821 */  addu       $s3, $v0, $zero
/* 1079F4 800E9904 02609021 */  addu       $s2, $s3, $zero
/* 1079F8 800E9908 2611FFFF */  addiu      $s1, $s0, -0x1
/* 1079FC 800E990C 0620000E */  bltz       $s1, .Lmenu_800E9948
/* 107A00 800E9910 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 107A04 800E9914 3C02800D */  lui        $v0, %hi(D_menu_800CB520)
/* 107A08 800E9918 2456B520 */  addiu      $s6, $v0, %lo(D_menu_800CB520)
/* 107A0C 800E991C 2415FFFF */  addiu      $s5, $zero, -0x1
/* 107A10 800E9920 24900028 */  addiu      $s0, $a0, 0x28
.Lmenu_800E9924:
/* 107A14 800E9924 0C03A244 */  jal        func_menu_800E8910
/* 107A18 800E9928 02402021 */   addu      $a0, $s2, $zero
/* 107A1C 800E992C AE16FFFC */  sw         $s6, -0x4($s0)
/* 107A20 800E9930 0C03B39C */  jal        func_menu_800ECE70
/* 107A24 800E9934 02002021 */   addu      $a0, $s0, $zero
/* 107A28 800E9938 26100044 */  addiu      $s0, $s0, 0x44
/* 107A2C 800E993C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 107A30 800E9940 1635FFF8 */  bne        $s1, $s5, .Lmenu_800E9924
/* 107A34 800E9944 26520044 */   addiu     $s2, $s2, 0x44
.Lmenu_800E9948:
/* 107A38 800E9948 0C01FB72 */  jal        func_8007EDC8
/* 107A3C 800E994C AE930028 */   sw        $s3, 0x28($s4)
/* 107A40 800E9950 8E820028 */  lw         $v0, 0x28($s4)
/* 107A44 800E9954 14400006 */  bnez       $v0, .Lmenu_800E9970
/* 107A48 800E9958 3C04800D */   lui       $a0, %hi(D_menu_800CB5E0)
/* 107A4C 800E995C 2484B5E0 */  addiu      $a0, $a0, %lo(D_menu_800CB5E0)
/* 107A50 800E9960 00002821 */  addu       $a1, $zero, $zero
/* 107A54 800E9964 00A03021 */  addu       $a2, $a1, $zero
/* 107A58 800E9968 0C011ACF */  jal        func_80046B3C
/* 107A5C 800E996C 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E9970:
/* 107A60 800E9970 8E820024 */  lw         $v0, 0x24($s4)
/* 107A64 800E9974 1040000B */  beqz       $v0, .Lmenu_800E99A4
/* 107A68 800E9978 00008021 */   addu      $s0, $zero, $zero
/* 107A6C 800E997C 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800E9980:
/* 107A70 800E9980 02E02821 */  addu       $a1, $s7, $zero
/* 107A74 800E9984 8E840028 */  lw         $a0, 0x28($s4)
/* 107A78 800E9988 26100001 */  addiu      $s0, $s0, 0x1
/* 107A7C 800E998C 0C03A14C */  jal        func_menu_800E8530
/* 107A80 800E9990 00912021 */   addu      $a0, $a0, $s1
/* 107A84 800E9994 8E820024 */  lw         $v0, 0x24($s4)
/* 107A88 800E9998 0202102B */  sltu       $v0, $s0, $v0
/* 107A8C 800E999C 1440FFF8 */  bnez       $v0, .Lmenu_800E9980
/* 107A90 800E99A0 26310044 */   addiu     $s1, $s1, 0x44
.Lmenu_800E99A4:
/* 107A94 800E99A4 02E02021 */  addu       $a0, $s7, $zero
/* 107A98 800E99A8 0C0026F4 */  jal        func_80009BD0
/* 107A9C 800E99AC 24050006 */   addiu     $a1, $zero, 0x6
/* 107AA0 800E99B0 8FBF0030 */  lw         $ra, 0x30($sp)
/* 107AA4 800E99B4 8FB7002C */  lw         $s7, 0x2C($sp)
/* 107AA8 800E99B8 8FB60028 */  lw         $s6, 0x28($sp)
/* 107AAC 800E99BC 8FB50024 */  lw         $s5, 0x24($sp)
/* 107AB0 800E99C0 8FB40020 */  lw         $s4, 0x20($sp)
/* 107AB4 800E99C4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 107AB8 800E99C8 8FB20018 */  lw         $s2, 0x18($sp)
/* 107ABC 800E99CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 107AC0 800E99D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 107AC4 800E99D4 03E00008 */  jr         $ra
/* 107AC8 800E99D8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800E99DC
/* 107ACC 800E99DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 107AD0 800E99E0 AFB10014 */  sw         $s1, 0x14($sp)
/* 107AD4 800E99E4 00808821 */  addu       $s1, $a0, $zero
/* 107AD8 800E99E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 107ADC 800E99EC AFB00010 */  sw         $s0, 0x10($sp)
/* 107AE0 800E99F0 8E240030 */  lw         $a0, 0x30($s1)
/* 107AE4 800E99F4 10800003 */  beqz       $a0, .Lmenu_800E9A04
/* 107AE8 800E99F8 00000000 */   nop
/* 107AEC 800E99FC 0C009444 */  jal        func_80025110
/* 107AF0 800E9A00 00000000 */   nop
.Lmenu_800E9A04:
/* 107AF4 800E9A04 8E240038 */  lw         $a0, 0x38($s1)
/* 107AF8 800E9A08 10800003 */  beqz       $a0, .Lmenu_800E9A18
/* 107AFC 800E9A0C 00000000 */   nop
/* 107B00 800E9A10 0C009444 */  jal        func_80025110
/* 107B04 800E9A14 00000000 */   nop
.Lmenu_800E9A18:
/* 107B08 800E9A18 8E240008 */  lw         $a0, 0x8($s1)
/* 107B0C 800E9A1C 10800017 */  beqz       $a0, .Lmenu_800E9A7C
/* 107B10 800E9A20 00000000 */   nop
/* 107B14 800E9A24 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 107B18 800E9A28 00031040 */  sll        $v0, $v1, 1
/* 107B1C 800E9A2C 00431021 */  addu       $v0, $v0, $v1
/* 107B20 800E9A30 00021080 */  sll        $v0, $v0, 2
/* 107B24 800E9A34 00431021 */  addu       $v0, $v0, $v1
/* 107B28 800E9A38 00021080 */  sll        $v0, $v0, 2
/* 107B2C 800E9A3C 00828021 */  addu       $s0, $a0, $v0
/* 107B30 800E9A40 1090000C */  beq        $a0, $s0, .Lmenu_800E9A74
/* 107B34 800E9A44 00000000 */   nop
/* 107B38 800E9A48 2610FFCC */  addiu      $s0, $s0, -0x34
.Lmenu_800E9A4C:
/* 107B3C 800E9A4C 8E02001C */  lw         $v0, 0x1C($s0)
/* 107B40 800E9A50 24050002 */  addiu      $a1, $zero, 0x2
/* 107B44 800E9A54 84440008 */  lh         $a0, 0x8($v0)
/* 107B48 800E9A58 8C42000C */  lw         $v0, 0xC($v0)
/* 107B4C 800E9A5C 0040F809 */  jalr       $v0
/* 107B50 800E9A60 02042021 */   addu      $a0, $s0, $a0
/* 107B54 800E9A64 8E220008 */  lw         $v0, 0x8($s1)
/* 107B58 800E9A68 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E9A4C
/* 107B5C 800E9A6C 2610FFCC */   addiu     $s0, $s0, -0x34
/* 107B60 800E9A70 8E240008 */  lw         $a0, 0x8($s1)
.Lmenu_800E9A74:
/* 107B64 800E9A74 0C009444 */  jal        func_80025110
/* 107B68 800E9A78 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E9A7C:
/* 107B6C 800E9A7C 8E240010 */  lw         $a0, 0x10($s1)
/* 107B70 800E9A80 10800017 */  beqz       $a0, .Lmenu_800E9AE0
/* 107B74 800E9A84 00000000 */   nop
/* 107B78 800E9A88 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 107B7C 800E9A8C 00031040 */  sll        $v0, $v1, 1
/* 107B80 800E9A90 00431021 */  addu       $v0, $v0, $v1
/* 107B84 800E9A94 00021080 */  sll        $v0, $v0, 2
/* 107B88 800E9A98 00431021 */  addu       $v0, $v0, $v1
/* 107B8C 800E9A9C 000210C0 */  sll        $v0, $v0, 3
/* 107B90 800E9AA0 00828021 */  addu       $s0, $a0, $v0
/* 107B94 800E9AA4 1090000C */  beq        $a0, $s0, .Lmenu_800E9AD8
/* 107B98 800E9AA8 00000000 */   nop
/* 107B9C 800E9AAC 2610FF98 */  addiu      $s0, $s0, -0x68
.Lmenu_800E9AB0:
/* 107BA0 800E9AB0 8E02001C */  lw         $v0, 0x1C($s0)
/* 107BA4 800E9AB4 24050002 */  addiu      $a1, $zero, 0x2
/* 107BA8 800E9AB8 84440008 */  lh         $a0, 0x8($v0)
/* 107BAC 800E9ABC 8C42000C */  lw         $v0, 0xC($v0)
/* 107BB0 800E9AC0 0040F809 */  jalr       $v0
/* 107BB4 800E9AC4 02042021 */   addu      $a0, $s0, $a0
/* 107BB8 800E9AC8 8E220010 */  lw         $v0, 0x10($s1)
/* 107BBC 800E9ACC 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E9AB0
/* 107BC0 800E9AD0 2610FF98 */   addiu     $s0, $s0, -0x68
/* 107BC4 800E9AD4 8E240010 */  lw         $a0, 0x10($s1)
.Lmenu_800E9AD8:
/* 107BC8 800E9AD8 0C009444 */  jal        func_80025110
/* 107BCC 800E9ADC 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E9AE0:
/* 107BD0 800E9AE0 8E240018 */  lw         $a0, 0x18($s1)
/* 107BD4 800E9AE4 10800015 */  beqz       $a0, .Lmenu_800E9B3C
/* 107BD8 800E9AE8 00000000 */   nop
/* 107BDC 800E9AEC 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 107BE0 800E9AF0 00031100 */  sll        $v0, $v1, 4
/* 107BE4 800E9AF4 00431021 */  addu       $v0, $v0, $v1
/* 107BE8 800E9AF8 00021080 */  sll        $v0, $v0, 2
/* 107BEC 800E9AFC 00828021 */  addu       $s0, $a0, $v0
/* 107BF0 800E9B00 1090000C */  beq        $a0, $s0, .Lmenu_800E9B34
/* 107BF4 800E9B04 00000000 */   nop
/* 107BF8 800E9B08 2610FFBC */  addiu      $s0, $s0, -0x44
.Lmenu_800E9B0C:
/* 107BFC 800E9B0C 8E02001C */  lw         $v0, 0x1C($s0)
/* 107C00 800E9B10 24050002 */  addiu      $a1, $zero, 0x2
/* 107C04 800E9B14 84440008 */  lh         $a0, 0x8($v0)
/* 107C08 800E9B18 8C42000C */  lw         $v0, 0xC($v0)
/* 107C0C 800E9B1C 0040F809 */  jalr       $v0
/* 107C10 800E9B20 02042021 */   addu      $a0, $s0, $a0
/* 107C14 800E9B24 8E220018 */  lw         $v0, 0x18($s1)
/* 107C18 800E9B28 5450FFF8 */  bnel       $v0, $s0, .Lmenu_800E9B0C
/* 107C1C 800E9B2C 2610FFBC */   addiu     $s0, $s0, -0x44
/* 107C20 800E9B30 8E240018 */  lw         $a0, 0x18($s1)
.Lmenu_800E9B34:
/* 107C24 800E9B34 0C009444 */  jal        func_80025110
/* 107C28 800E9B38 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E9B3C:
/* 107C2C 800E9B3C 8E240020 */  lw         $a0, 0x20($s1)
/* 107C30 800E9B40 10800014 */  beqz       $a0, .Lmenu_800E9B94
/* 107C34 800E9B44 00000000 */   nop
/* 107C38 800E9B48 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 107C3C 800E9B4C 000310C0 */  sll        $v0, $v1, 3
/* 107C40 800E9B50 00431023 */  subu       $v0, $v0, $v1
/* 107C44 800E9B54 000210C0 */  sll        $v0, $v0, 3
/* 107C48 800E9B58 00828021 */  addu       $s0, $a0, $v0
/* 107C4C 800E9B5C 1090000B */  beq        $a0, $s0, .Lmenu_800E9B8C
/* 107C50 800E9B60 2610FFC8 */   addiu     $s0, $s0, -0x38
.Lmenu_800E9B64:
/* 107C54 800E9B64 8E02001C */  lw         $v0, 0x1C($s0)
/* 107C58 800E9B68 24050002 */  addiu      $a1, $zero, 0x2
/* 107C5C 800E9B6C 84440008 */  lh         $a0, 0x8($v0)
/* 107C60 800E9B70 8C42000C */  lw         $v0, 0xC($v0)
/* 107C64 800E9B74 0040F809 */  jalr       $v0
/* 107C68 800E9B78 02042021 */   addu      $a0, $s0, $a0
/* 107C6C 800E9B7C 8E220020 */  lw         $v0, 0x20($s1)
/* 107C70 800E9B80 1450FFF8 */  bne        $v0, $s0, .Lmenu_800E9B64
/* 107C74 800E9B84 2610FFC8 */   addiu     $s0, $s0, -0x38
/* 107C78 800E9B88 8E240020 */  lw         $a0, 0x20($s1)
.Lmenu_800E9B8C:
/* 107C7C 800E9B8C 0C009444 */  jal        func_80025110
/* 107C80 800E9B90 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E9B94:
/* 107C84 800E9B94 8E240028 */  lw         $a0, 0x28($s1)
/* 107C88 800E9B98 10800014 */  beqz       $a0, .Lmenu_800E9BEC
/* 107C8C 800E9B9C 00000000 */   nop
/* 107C90 800E9BA0 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 107C94 800E9BA4 00031100 */  sll        $v0, $v1, 4
/* 107C98 800E9BA8 00431021 */  addu       $v0, $v0, $v1
/* 107C9C 800E9BAC 00021080 */  sll        $v0, $v0, 2
/* 107CA0 800E9BB0 00828021 */  addu       $s0, $a0, $v0
/* 107CA4 800E9BB4 1090000B */  beq        $a0, $s0, .Lmenu_800E9BE4
/* 107CA8 800E9BB8 2610FFBC */   addiu     $s0, $s0, -0x44
.Lmenu_800E9BBC:
/* 107CAC 800E9BBC 8E02001C */  lw         $v0, 0x1C($s0)
/* 107CB0 800E9BC0 24050002 */  addiu      $a1, $zero, 0x2
/* 107CB4 800E9BC4 84440008 */  lh         $a0, 0x8($v0)
/* 107CB8 800E9BC8 8C42000C */  lw         $v0, 0xC($v0)
/* 107CBC 800E9BCC 0040F809 */  jalr       $v0
/* 107CC0 800E9BD0 02042021 */   addu      $a0, $s0, $a0
/* 107CC4 800E9BD4 8E220028 */  lw         $v0, 0x28($s1)
/* 107CC8 800E9BD8 1450FFF8 */  bne        $v0, $s0, .Lmenu_800E9BBC
/* 107CCC 800E9BDC 2610FFBC */   addiu     $s0, $s0, -0x44
/* 107CD0 800E9BE0 8E240028 */  lw         $a0, 0x28($s1)
.Lmenu_800E9BE4:
/* 107CD4 800E9BE4 0C009444 */  jal        func_80025110
/* 107CD8 800E9BE8 2484FFF8 */   addiu     $a0, $a0, -0x8
.Lmenu_800E9BEC:
/* 107CDC 800E9BEC 0C03A3CB */  jal        func_menu_800E8F2C
/* 107CE0 800E9BF0 02202021 */   addu      $a0, $s1, $zero
/* 107CE4 800E9BF4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 107CE8 800E9BF8 8FB10014 */  lw         $s1, 0x14($sp)
/* 107CEC 800E9BFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 107CF0 800E9C00 03E00008 */  jr         $ra
/* 107CF4 800E9C04 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E9C08
/* 107CF8 800E9C08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 107CFC 800E9C0C AFB00010 */  sw         $s0, 0x10($sp)
/* 107D00 800E9C10 00808021 */  addu       $s0, $a0, $zero
/* 107D04 800E9C14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 107D08 800E9C18 8E020044 */  lw         $v0, 0x44($s0)
/* 107D0C 800E9C1C 30420004 */  andi       $v0, $v0, 0x4
/* 107D10 800E9C20 10400003 */  beqz       $v0, .Lmenu_800E9C30
/* 107D14 800E9C24 00000000 */   nop
/* 107D18 800E9C28 0C03A715 */  jal        func_menu_800E9C54
/* 107D1C 800E9C2C 00000000 */   nop
.Lmenu_800E9C30:
/* 107D20 800E9C30 8E020044 */  lw         $v0, 0x44($s0)
/* 107D24 800E9C34 2403FFFB */  addiu      $v1, $zero, -0x5
/* 107D28 800E9C38 34420001 */  ori        $v0, $v0, 0x1
/* 107D2C 800E9C3C 00431024 */  and        $v0, $v0, $v1
/* 107D30 800E9C40 AE020044 */  sw         $v0, 0x44($s0)
/* 107D34 800E9C44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 107D38 800E9C48 8FB00010 */  lw         $s0, 0x10($sp)
/* 107D3C 800E9C4C 03E00008 */  jr         $ra
/* 107D40 800E9C50 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E9C54
/* 107D44 800E9C54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 107D48 800E9C58 AFB00010 */  sw         $s0, 0x10($sp)
/* 107D4C 800E9C5C 00808021 */  addu       $s0, $a0, $zero
/* 107D50 800E9C60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 107D54 800E9C64 AE000048 */  sw         $zero, 0x48($s0)
/* 107D58 800E9C68 AE000050 */  sw         $zero, 0x50($s0)
/* 107D5C 800E9C6C AE000034 */  sw         $zero, 0x34($s0)
/* 107D60 800E9C70 AE00003C */  sw         $zero, 0x3C($s0)
/* 107D64 800E9C74 AE000094 */  sw         $zero, 0x94($s0)
.Lmenu_800E9C78:
/* 107D68 800E9C78 8E070040 */  lw         $a3, 0x40($s0)
/* 107D6C 800E9C7C 10E0000D */  beqz       $a3, .Lmenu_800E9CB4
/* 107D70 800E9C80 02002821 */   addu      $a1, $s0, $zero
/* 107D74 800E9C84 8CE2001C */  lw         $v0, 0x1C($a3)
/* 107D78 800E9C88 8E030000 */  lw         $v1, 0x0($s0)
/* 107D7C 800E9C8C 84440030 */  lh         $a0, 0x30($v0)
/* 107D80 800E9C90 8C420034 */  lw         $v0, 0x34($v0)
/* 107D84 800E9C94 8C66000C */  lw         $a2, 0xC($v1)
/* 107D88 800E9C98 0040F809 */  jalr       $v0
/* 107D8C 800E9C9C 00E42021 */   addu      $a0, $a3, $a0
/* 107D90 800E9CA0 8E050040 */  lw         $a1, 0x40($s0)
/* 107D94 800E9CA4 0C03A895 */  jal        func_menu_800EA254
/* 107D98 800E9CA8 02002021 */   addu      $a0, $s0, $zero
/* 107D9C 800E9CAC 0803A71E */  j          .Lmenu_800E9C78
/* 107DA0 800E9CB0 00000000 */   nop
.Lmenu_800E9CB4:
/* 107DA4 800E9CB4 8E020044 */  lw         $v0, 0x44($s0)
/* 107DA8 800E9CB8 2403FFF3 */  addiu      $v1, $zero, -0xD
/* 107DAC 800E9CBC 00431024 */  and        $v0, $v0, $v1
/* 107DB0 800E9CC0 AE020044 */  sw         $v0, 0x44($s0)
/* 107DB4 800E9CC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 107DB8 800E9CC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 107DBC 800E9CCC 03E00008 */  jr         $ra
/* 107DC0 800E9CD0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E9CD4
/* 107DC4 800E9CD4 8C820044 */  lw         $v0, 0x44($a0)
/* 107DC8 800E9CD8 2403FFF2 */  addiu      $v1, $zero, -0xE
/* 107DCC 800E9CDC 00431024 */  and        $v0, $v0, $v1
/* 107DD0 800E9CE0 03E00008 */  jr         $ra
/* 107DD4 800E9CE4 AC820044 */   sw        $v0, 0x44($a0)

glabel func_menu_800E9CE8
/* 107DD8 800E9CE8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 107DDC 800E9CEC AFB10014 */  sw         $s1, 0x14($sp)
/* 107DE0 800E9CF0 00808821 */  addu       $s1, $a0, $zero
/* 107DE4 800E9CF4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 107DE8 800E9CF8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 107DEC 800E9CFC AFB20018 */  sw         $s2, 0x18($sp)
/* 107DF0 800E9D00 AFB00010 */  sw         $s0, 0x10($sp)
/* 107DF4 800E9D04 8E240044 */  lw         $a0, 0x44($s1)
/* 107DF8 800E9D08 30820001 */  andi       $v0, $a0, 0x1
/* 107DFC 800E9D0C 1040004E */  beqz       $v0, .Lmenu_800E9E48
/* 107E00 800E9D10 00A08021 */   addu      $s0, $a1, $zero
/* 107E04 800E9D14 8E220058 */  lw         $v0, 0x58($s1)
/* 107E08 800E9D18 02020018 */  mult       $s0, $v0
/* 107E0C 800E9D1C 3C031062 */  lui        $v1, (0x10624DD3 >> 16)
/* 107E10 800E9D20 8E220050 */  lw         $v0, 0x50($s1)
/* 107E14 800E9D24 00004012 */  mflo       $t0
/* 107E18 800E9D28 34634DD3 */  ori        $v1, $v1, (0x10624DD3 & 0xFFFF)
/* 107E1C 800E9D2C 00489821 */  addu       $s3, $v0, $t0
/* 107E20 800E9D30 02630019 */  multu      $s3, $v1
/* 107E24 800E9D34 8E22004C */  lw         $v0, 0x4C($s1)
/* 107E28 800E9D38 00001810 */  mfhi       $v1
/* 107E2C 800E9D3C 00039182 */  srl        $s2, $v1, 6
/* 107E30 800E9D40 0242102B */  sltu       $v0, $s2, $v0
/* 107E34 800E9D44 14400015 */  bnez       $v0, .Lmenu_800E9D9C
/* 107E38 800E9D48 2402FFF3 */   addiu     $v0, $zero, -0xD
/* 107E3C 800E9D4C 02202021 */  addu       $a0, $s1, $zero
/* 107E40 800E9D50 8E250048 */  lw         $a1, 0x48($s1)
/* 107E44 800E9D54 0C03A826 */  jal        func_menu_800EA098
/* 107E48 800E9D58 02403021 */   addu      $a2, $s2, $zero
/* 107E4C 800E9D5C 8E230044 */  lw         $v1, 0x44($s1)
/* 107E50 800E9D60 30620002 */  andi       $v0, $v1, 0x2
/* 107E54 800E9D64 50400009 */  beql       $v0, $zero, .Lmenu_800E9D8C
/* 107E58 800E9D68 2402FFF6 */   addiu     $v0, $zero, -0xA
/* 107E5C 800E9D6C 0C03A715 */  jal        func_menu_800E9C54
/* 107E60 800E9D70 02202021 */   addu      $a0, $s1, $zero
/* 107E64 800E9D74 00009821 */  addu       $s3, $zero, $zero
/* 107E68 800E9D78 8E220044 */  lw         $v0, 0x44($s1)
/* 107E6C 800E9D7C 02609021 */  addu       $s2, $s3, $zero
/* 107E70 800E9D80 AE200094 */  sw         $zero, 0x94($s1)
/* 107E74 800E9D84 0803A768 */  j          .Lmenu_800E9DA0
/* 107E78 800E9D88 34420008 */   ori       $v0, $v0, 0x8
.Lmenu_800E9D8C:
/* 107E7C 800E9D8C 00621024 */  and        $v0, $v1, $v0
/* 107E80 800E9D90 34420004 */  ori        $v0, $v0, 0x4
/* 107E84 800E9D94 0803A792 */  j          .Lmenu_800E9E48
/* 107E88 800E9D98 AE220044 */   sw        $v0, 0x44($s1)
.Lmenu_800E9D9C:
/* 107E8C 800E9D9C 00821024 */  and        $v0, $a0, $v0
.Lmenu_800E9DA0:
/* 107E90 800E9DA0 AE220044 */  sw         $v0, 0x44($s1)
/* 107E94 800E9DA4 02202021 */  addu       $a0, $s1, $zero
/* 107E98 800E9DA8 8E250048 */  lw         $a1, 0x48($s1)
/* 107E9C 800E9DAC 0C03A826 */  jal        func_menu_800EA098
/* 107EA0 800E9DB0 02403021 */   addu      $a2, $s2, $zero
/* 107EA4 800E9DB4 8E220058 */  lw         $v0, 0x58($s1)
/* 107EA8 800E9DB8 8E230054 */  lw         $v1, 0x54($s1)
/* 107EAC 800E9DBC 14430006 */  bne        $v0, $v1, .Lmenu_800E9DD8
/* 107EB0 800E9DC0 00000000 */   nop
/* 107EB4 800E9DC4 C6200094 */  lwc1       $f0, 0x94($s1)
/* 107EB8 800E9DC8 44901000 */  mtc1       $s0, $f2
/* 107EBC 800E9DCC 468010A0 */  cvt.s.w    $f2, $f2
/* 107EC0 800E9DD0 0803A77F */  j          .Lmenu_800E9DFC
/* 107EC4 800E9DD4 46020000 */   add.s     $f0, $f0, $f2
.Lmenu_800E9DD8:
/* 107EC8 800E9DD8 44832000 */  mtc1       $v1, $f4
/* 107ECC 800E9DDC 46802120 */  cvt.s.w    $f4, $f4
/* 107ED0 800E9DE0 8E220050 */  lw         $v0, 0x50($s1)
/* 107ED4 800E9DE4 C6200094 */  lwc1       $f0, 0x94($s1)
/* 107ED8 800E9DE8 02621023 */  subu       $v0, $s3, $v0
/* 107EDC 800E9DEC 44821000 */  mtc1       $v0, $f2
/* 107EE0 800E9DF0 468010A0 */  cvt.s.w    $f2, $f2
/* 107EE4 800E9DF4 46041083 */  div.s      $f2, $f2, $f4
/* 107EE8 800E9DF8 46020000 */  add.s      $f0, $f0, $f2
.Lmenu_800E9DFC:
/* 107EEC 800E9DFC E6200094 */  swc1       $f0, 0x94($s1)
/* 107EF0 800E9E00 C6220094 */  lwc1       $f2, 0x94($s1)
/* 107EF4 800E9E04 3C01800D */  lui        $at, %hi(D_menu_800CB634)
/* 107EF8 800E9E08 C420B634 */  lwc1       $f0, %lo(D_menu_800CB634)($at)
/* 107EFC 800E9E0C 4602003E */  c.le.s     $f0, $f2
/* 107F00 800E9E10 00000000 */  nop
/* 107F04 800E9E14 4500000A */  bc1f       .Lmenu_800E9E40
/* 107F08 800E9E18 02202021 */   addu      $a0, $s1, $zero
/* 107F0C 800E9E1C 4600118D */  trunc.w.s  $f6, $f2
/* 107F10 800E9E20 44103000 */  mfc1       $s0, $f6
/* 107F14 800E9E24 0C03A811 */  jal        func_menu_800EA044
/* 107F18 800E9E28 02002821 */   addu      $a1, $s0, $zero
/* 107F1C 800E9E2C C6200094 */  lwc1       $f0, 0x94($s1)
/* 107F20 800E9E30 44901000 */  mtc1       $s0, $f2
/* 107F24 800E9E34 468010A0 */  cvt.s.w    $f2, $f2
/* 107F28 800E9E38 46020001 */  sub.s      $f0, $f0, $f2
/* 107F2C 800E9E3C E6200094 */  swc1       $f0, 0x94($s1)
.Lmenu_800E9E40:
/* 107F30 800E9E40 AE330050 */  sw         $s3, 0x50($s1)
/* 107F34 800E9E44 AE320048 */  sw         $s2, 0x48($s1)
.Lmenu_800E9E48:
/* 107F38 800E9E48 8FBF0020 */  lw         $ra, 0x20($sp)
/* 107F3C 800E9E4C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 107F40 800E9E50 8FB20018 */  lw         $s2, 0x18($sp)
/* 107F44 800E9E54 8FB10014 */  lw         $s1, 0x14($sp)
/* 107F48 800E9E58 8FB00010 */  lw         $s0, 0x10($sp)
/* 107F4C 800E9E5C 03E00008 */  jr         $ra
/* 107F50 800E9E60 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800E9E64
/* 107F54 800E9E64 8CA30000 */  lw         $v1, 0x0($a1)
/* 107F58 800E9E68 8CA60004 */  lw         $a2, 0x4($a1)
/* 107F5C 800E9E6C 8CA70008 */  lw         $a3, 0x8($a1)
/* 107F60 800E9E70 8CA8000C */  lw         $t0, 0xC($a1)
/* 107F64 800E9E74 AC830098 */  sw         $v1, 0x98($a0)
/* 107F68 800E9E78 AC86009C */  sw         $a2, 0x9C($a0)
/* 107F6C 800E9E7C AC8700A0 */  sw         $a3, 0xA0($a0)
/* 107F70 800E9E80 AC8800A4 */  sw         $t0, 0xA4($a0)
/* 107F74 800E9E84 8C820044 */  lw         $v0, 0x44($a0)
/* 107F78 800E9E88 34420010 */  ori        $v0, $v0, 0x10
/* 107F7C 800E9E8C 03E00008 */  jr         $ra
/* 107F80 800E9E90 AC820044 */   sw        $v0, 0x44($a0)

glabel func_menu_800E9E94
/* 107F84 800E9E94 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 107F88 800E9E98 AFB3001C */  sw         $s3, 0x1C($sp)
/* 107F8C 800E9E9C 00809821 */  addu       $s3, $a0, $zero
/* 107F90 800E9EA0 AFB20018 */  sw         $s2, 0x18($sp)
/* 107F94 800E9EA4 00A09021 */  addu       $s2, $a1, $zero
/* 107F98 800E9EA8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 107F9C 800E9EAC AFB10014 */  sw         $s1, 0x14($sp)
/* 107FA0 800E9EB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 107FA4 800E9EB4 8E63005C */  lw         $v1, 0x5C($s3)
/* 107FA8 800E9EB8 10600023 */  beqz       $v1, .Lmenu_800E9F48
/* 107FAC 800E9EBC 00C08021 */   addu      $s0, $a2, $zero
/* 107FB0 800E9EC0 0203102B */  sltu       $v0, $s0, $v1
/* 107FB4 800E9EC4 50400001 */  beql       $v0, $zero, .Lmenu_800E9ECC
/* 107FB8 800E9EC8 2470FFFF */   addiu     $s0, $v1, -0x1
.Lmenu_800E9ECC:
/* 107FBC 800E9ECC 8E620044 */  lw         $v0, 0x44($s3)
/* 107FC0 800E9ED0 30420010 */  andi       $v0, $v0, 0x10
/* 107FC4 800E9ED4 10400009 */  beqz       $v0, .Lmenu_800E9EFC
/* 107FC8 800E9ED8 00101080 */   sll       $v0, $s0, 2
/* 107FCC 800E9EDC 02621021 */  addu       $v0, $s3, $v0
/* 107FD0 800E9EE0 8C430060 */  lw         $v1, 0x60($v0)
/* 107FD4 800E9EE4 8C62011C */  lw         $v0, 0x11C($v1)
/* 107FD8 800E9EE8 26650098 */  addiu      $a1, $s3, 0x98
/* 107FDC 800E9EEC 84440020 */  lh         $a0, 0x20($v0)
/* 107FE0 800E9EF0 8C420024 */  lw         $v0, 0x24($v0)
/* 107FE4 800E9EF4 0040F809 */  jalr       $v0
/* 107FE8 800E9EF8 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800E9EFC:
/* 107FEC 800E9EFC 00101080 */  sll        $v0, $s0, 2
/* 107FF0 800E9F00 02621021 */  addu       $v0, $s3, $v0
/* 107FF4 800E9F04 8E43012C */  lw         $v1, 0x12C($s2)
/* 107FF8 800E9F08 8C450060 */  lw         $a1, 0x60($v0)
/* 107FFC 800E9F0C 84640048 */  lh         $a0, 0x48($v1)
/* 108000 800E9F10 8C62004C */  lw         $v0, 0x4C($v1)
/* 108004 800E9F14 0040F809 */  jalr       $v0
/* 108008 800E9F18 02442021 */   addu      $a0, $s2, $a0
/* 10800C 800E9F1C 8E42012C */  lw         $v0, 0x12C($s2)
/* 108010 800E9F20 844400C0 */  lh         $a0, 0xC0($v0)
/* 108014 800E9F24 8C4200C4 */  lw         $v0, 0xC4($v0)
/* 108018 800E9F28 0040F809 */  jalr       $v0
/* 10801C 800E9F2C 02442021 */   addu      $a0, $s2, $a0
/* 108020 800E9F30 8E42012C */  lw         $v0, 0x12C($s2)
/* 108024 800E9F34 24050004 */  addiu      $a1, $zero, 0x4
/* 108028 800E9F38 844401D8 */  lh         $a0, 0x1D8($v0)
/* 10802C 800E9F3C 8C4201DC */  lw         $v0, 0x1DC($v0)
/* 108030 800E9F40 0040F809 */  jalr       $v0
/* 108034 800E9F44 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800E9F48:
/* 108038 800E9F48 8E42012C */  lw         $v0, 0x12C($s2)
/* 10803C 800E9F4C 84440058 */  lh         $a0, 0x58($v0)
/* 108040 800E9F50 8C42005C */  lw         $v0, 0x5C($v0)
/* 108044 800E9F54 0040F809 */  jalr       $v0
/* 108048 800E9F58 02442021 */   addu      $a0, $s2, $a0
/* 10804C 800E9F5C 8E650080 */  lw         $a1, 0x80($s3)
/* 108050 800E9F60 14A00006 */  bnez       $a1, .Lmenu_800E9F7C
/* 108054 800E9F64 00000000 */   nop
/* 108058 800E9F68 8E620084 */  lw         $v0, 0x84($s3)
/* 10805C 800E9F6C 10400018 */  beqz       $v0, .Lmenu_800E9FD0
/* 108060 800E9F70 00008021 */   addu      $s0, $zero, $zero
/* 108064 800E9F74 0803A7E8 */  j          .Lmenu_800E9FA0
/* 108068 800E9F78 02608821 */   addu      $s1, $s3, $zero
.Lmenu_800E9F7C:
/* 10806C 800E9F7C 8E42012C */  lw         $v0, 0x12C($s2)
/* 108070 800E9F80 84440060 */  lh         $a0, 0x60($v0)
/* 108074 800E9F84 8C420064 */  lw         $v0, 0x64($v0)
/* 108078 800E9F88 0040F809 */  jalr       $v0
/* 10807C 800E9F8C 02442021 */   addu      $a0, $s2, $a0
/* 108080 800E9F90 8E620084 */  lw         $v0, 0x84($s3)
/* 108084 800E9F94 1040000E */  beqz       $v0, .Lmenu_800E9FD0
/* 108088 800E9F98 00008021 */   addu      $s0, $zero, $zero
/* 10808C 800E9F9C 02608821 */  addu       $s1, $s3, $zero
.Lmenu_800E9FA0:
/* 108090 800E9FA0 8E250088 */  lw         $a1, 0x88($s1)
/* 108094 800E9FA4 8E42012C */  lw         $v0, 0x12C($s2)
/* 108098 800E9FA8 26310004 */  addiu      $s1, $s1, 0x4
/* 10809C 800E9FAC 84440068 */  lh         $a0, 0x68($v0)
/* 1080A0 800E9FB0 8C42006C */  lw         $v0, 0x6C($v0)
/* 1080A4 800E9FB4 0040F809 */  jalr       $v0
/* 1080A8 800E9FB8 02442021 */   addu      $a0, $s2, $a0
/* 1080AC 800E9FBC 8E620084 */  lw         $v0, 0x84($s3)
/* 1080B0 800E9FC0 26100001 */  addiu      $s0, $s0, 0x1
/* 1080B4 800E9FC4 0202102B */  sltu       $v0, $s0, $v0
/* 1080B8 800E9FC8 1440FFF5 */  bnez       $v0, .Lmenu_800E9FA0
/* 1080BC 800E9FCC 00000000 */   nop
.Lmenu_800E9FD0:
/* 1080C0 800E9FD0 8E700040 */  lw         $s0, 0x40($s3)
.Lmenu_800E9FD4:
/* 1080C4 800E9FD4 12000009 */  beqz       $s0, .Lmenu_800E9FFC
/* 1080C8 800E9FD8 02402821 */   addu      $a1, $s2, $zero
/* 1080CC 800E9FDC 8E02001C */  lw         $v0, 0x1C($s0)
/* 1080D0 800E9FE0 84440018 */  lh         $a0, 0x18($v0)
/* 1080D4 800E9FE4 8C42001C */  lw         $v0, 0x1C($v0)
/* 1080D8 800E9FE8 0040F809 */  jalr       $v0
/* 1080DC 800E9FEC 02042021 */   addu      $a0, $s0, $a0
/* 1080E0 800E9FF0 8E100018 */  lw         $s0, 0x18($s0)
/* 1080E4 800E9FF4 0803A7F5 */  j          .Lmenu_800E9FD4
/* 1080E8 800E9FF8 00000000 */   nop
.Lmenu_800E9FFC:
/* 1080EC 800E9FFC 8E700040 */  lw         $s0, 0x40($s3)
.Lmenu_800EA000:
/* 1080F0 800EA000 12000009 */  beqz       $s0, .Lmenu_800EA028
/* 1080F4 800EA004 02402821 */   addu      $a1, $s2, $zero
/* 1080F8 800EA008 8E02001C */  lw         $v0, 0x1C($s0)
/* 1080FC 800EA00C 84440020 */  lh         $a0, 0x20($v0)
/* 108100 800EA010 8C420024 */  lw         $v0, 0x24($v0)
/* 108104 800EA014 0040F809 */  jalr       $v0
/* 108108 800EA018 02042021 */   addu      $a0, $s0, $a0
/* 10810C 800EA01C 8E100018 */  lw         $s0, 0x18($s0)
/* 108110 800EA020 0803A800 */  j          .Lmenu_800EA000
/* 108114 800EA024 00000000 */   nop
.Lmenu_800EA028:
/* 108118 800EA028 8FBF0020 */  lw         $ra, 0x20($sp)
/* 10811C 800EA02C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 108120 800EA030 8FB20018 */  lw         $s2, 0x18($sp)
/* 108124 800EA034 8FB10014 */  lw         $s1, 0x14($sp)
/* 108128 800EA038 8FB00010 */  lw         $s0, 0x10($sp)
/* 10812C 800EA03C 03E00008 */  jr         $ra
/* 108130 800EA040 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800EA044
/* 108134 800EA044 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 108138 800EA048 AFB10014 */  sw         $s1, 0x14($sp)
/* 10813C 800EA04C 00A08821 */  addu       $s1, $a1, $zero
/* 108140 800EA050 AFBF0018 */  sw         $ra, 0x18($sp)
/* 108144 800EA054 AFB00010 */  sw         $s0, 0x10($sp)
/* 108148 800EA058 8C900040 */  lw         $s0, 0x40($a0)
.Lmenu_800EA05C:
/* 10814C 800EA05C 12000009 */  beqz       $s0, .Lmenu_800EA084
/* 108150 800EA060 02202821 */   addu      $a1, $s1, $zero
/* 108154 800EA064 8E02001C */  lw         $v0, 0x1C($s0)
/* 108158 800EA068 84440010 */  lh         $a0, 0x10($v0)
/* 10815C 800EA06C 8C420014 */  lw         $v0, 0x14($v0)
/* 108160 800EA070 0040F809 */  jalr       $v0
/* 108164 800EA074 02042021 */   addu      $a0, $s0, $a0
/* 108168 800EA078 8E100018 */  lw         $s0, 0x18($s0)
/* 10816C 800EA07C 0803A817 */  j          .Lmenu_800EA05C
/* 108170 800EA080 00000000 */   nop
.Lmenu_800EA084:
/* 108174 800EA084 8FBF0018 */  lw         $ra, 0x18($sp)
/* 108178 800EA088 8FB10014 */  lw         $s1, 0x14($sp)
/* 10817C 800EA08C 8FB00010 */  lw         $s0, 0x10($sp)
/* 108180 800EA090 03E00008 */  jr         $ra
/* 108184 800EA094 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EA098
/* 108188 800EA098 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10818C 800EA09C AFB00010 */  sw         $s0, 0x10($sp)
/* 108190 800EA0A0 00808021 */  addu       $s0, $a0, $zero
/* 108194 800EA0A4 AFB10014 */  sw         $s1, 0x14($sp)
/* 108198 800EA0A8 00A08821 */  addu       $s1, $a1, $zero
/* 10819C 800EA0AC AFB20018 */  sw         $s2, 0x18($sp)
/* 1081A0 800EA0B0 00C09021 */  addu       $s2, $a2, $zero
/* 1081A4 800EA0B4 AFBF001C */  sw         $ra, 0x1C($sp)
.Lmenu_800EA0B8:
/* 1081A8 800EA0B8 8E030034 */  lw         $v1, 0x34($s0)
/* 1081AC 800EA0BC 8E02002C */  lw         $v0, 0x2C($s0)
/* 1081B0 800EA0C0 0062102B */  sltu       $v0, $v1, $v0
/* 1081B4 800EA0C4 1040002A */  beqz       $v0, .Lmenu_800EA170
/* 1081B8 800EA0C8 00031880 */   sll       $v1, $v1, 2
/* 1081BC 800EA0CC 8E020030 */  lw         $v0, 0x30($s0)
/* 1081C0 800EA0D0 8E040038 */  lw         $a0, 0x38($s0)
/* 1081C4 800EA0D4 00621821 */  addu       $v1, $v1, $v0
/* 1081C8 800EA0D8 8E02003C */  lw         $v0, 0x3C($s0)
/* 1081CC 800EA0DC 8C670000 */  lw         $a3, 0x0($v1)
/* 1081D0 800EA0E0 00021080 */  sll        $v0, $v0, 2
/* 1081D4 800EA0E4 00441021 */  addu       $v0, $v0, $a0
/* 1081D8 800EA0E8 8C420000 */  lw         $v0, 0x0($v0)
/* 1081DC 800EA0EC 8CE30008 */  lw         $v1, 0x8($a3)
/* 1081E0 800EA0F0 8C42000C */  lw         $v0, 0xC($v0)
/* 1081E4 800EA0F4 0043102B */  sltu       $v0, $v0, $v1
/* 1081E8 800EA0F8 38420001 */  xori       $v0, $v0, 0x1
/* 1081EC 800EA0FC 1040001C */  beqz       $v0, .Lmenu_800EA170
/* 1081F0 800EA100 0071102B */   sltu      $v0, $v1, $s1
/* 1081F4 800EA104 14400003 */  bnez       $v0, .Lmenu_800EA114
/* 1081F8 800EA108 00002021 */   addu      $a0, $zero, $zero
/* 1081FC 800EA10C 0243102B */  sltu       $v0, $s2, $v1
/* 108200 800EA110 38440001 */  xori       $a0, $v0, 0x1
.Lmenu_800EA114:
/* 108204 800EA114 10800040 */  beqz       $a0, .Lmenu_800EA218
/* 108208 800EA118 00000000 */   nop
/* 10820C 800EA11C 8CE20010 */  lw         $v0, 0x10($a3)
/* 108210 800EA120 1440000F */  bnez       $v0, .Lmenu_800EA160
/* 108214 800EA124 02002821 */   addu      $a1, $s0, $zero
/* 108218 800EA128 8E020000 */  lw         $v0, 0x0($s0)
/* 10821C 800EA12C 8CE3001C */  lw         $v1, 0x1C($a3)
/* 108220 800EA130 8C46000C */  lw         $a2, 0xC($v0)
/* 108224 800EA134 84640028 */  lh         $a0, 0x28($v1)
/* 108228 800EA138 8C62002C */  lw         $v0, 0x2C($v1)
/* 10822C 800EA13C 0040F809 */  jalr       $v0
/* 108230 800EA140 00E42021 */   addu      $a0, $a3, $a0
/* 108234 800EA144 8E020034 */  lw         $v0, 0x34($s0)
/* 108238 800EA148 8E030030 */  lw         $v1, 0x30($s0)
/* 10823C 800EA14C 00021080 */  sll        $v0, $v0, 2
/* 108240 800EA150 00431021 */  addu       $v0, $v0, $v1
/* 108244 800EA154 8C450000 */  lw         $a1, 0x0($v0)
/* 108248 800EA158 0C03A88C */  jal        func_menu_800EA230
/* 10824C 800EA15C 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800EA160:
/* 108250 800EA160 8E020034 */  lw         $v0, 0x34($s0)
/* 108254 800EA164 24420001 */  addiu      $v0, $v0, 0x1
/* 108258 800EA168 0803A82E */  j          .Lmenu_800EA0B8
/* 10825C 800EA16C AE020034 */   sw        $v0, 0x34($s0)
.Lmenu_800EA170:
/* 108260 800EA170 8E04003C */  lw         $a0, 0x3C($s0)
/* 108264 800EA174 8E02002C */  lw         $v0, 0x2C($s0)
/* 108268 800EA178 0082102B */  sltu       $v0, $a0, $v0
/* 10826C 800EA17C 1040000A */  beqz       $v0, .Lmenu_800EA1A8
/* 108270 800EA180 00002821 */   addu      $a1, $zero, $zero
/* 108274 800EA184 8E030038 */  lw         $v1, 0x38($s0)
/* 108278 800EA188 00041080 */  sll        $v0, $a0, 2
/* 10827C 800EA18C 00431021 */  addu       $v0, $v0, $v1
/* 108280 800EA190 8C420000 */  lw         $v0, 0x0($v0)
/* 108284 800EA194 8C43000C */  lw         $v1, 0xC($v0)
/* 108288 800EA198 0071102B */  sltu       $v0, $v1, $s1
/* 10828C 800EA19C 14400002 */  bnez       $v0, .Lmenu_800EA1A8
/* 108290 800EA1A0 0243102B */   sltu      $v0, $s2, $v1
/* 108294 800EA1A4 38450001 */  xori       $a1, $v0, 0x1
.Lmenu_800EA1A8:
/* 108298 800EA1A8 10A0001B */  beqz       $a1, .Lmenu_800EA218
/* 10829C 800EA1AC 00000000 */   nop
/* 1082A0 800EA1B0 8E02003C */  lw         $v0, 0x3C($s0)
/* 1082A4 800EA1B4 8E030038 */  lw         $v1, 0x38($s0)
/* 1082A8 800EA1B8 00021080 */  sll        $v0, $v0, 2
/* 1082AC 800EA1BC 00431021 */  addu       $v0, $v0, $v1
/* 1082B0 800EA1C0 8C470000 */  lw         $a3, 0x0($v0)
/* 1082B4 800EA1C4 8CE20010 */  lw         $v0, 0x10($a3)
/* 1082B8 800EA1C8 1040000F */  beqz       $v0, .Lmenu_800EA208
/* 1082BC 800EA1CC 02002821 */   addu      $a1, $s0, $zero
/* 1082C0 800EA1D0 8E020000 */  lw         $v0, 0x0($s0)
/* 1082C4 800EA1D4 8CE3001C */  lw         $v1, 0x1C($a3)
/* 1082C8 800EA1D8 8C46000C */  lw         $a2, 0xC($v0)
/* 1082CC 800EA1DC 84640030 */  lh         $a0, 0x30($v1)
/* 1082D0 800EA1E0 8C620034 */  lw         $v0, 0x34($v1)
/* 1082D4 800EA1E4 0040F809 */  jalr       $v0
/* 1082D8 800EA1E8 00E42021 */   addu      $a0, $a3, $a0
/* 1082DC 800EA1EC 8E02003C */  lw         $v0, 0x3C($s0)
/* 1082E0 800EA1F0 8E030038 */  lw         $v1, 0x38($s0)
/* 1082E4 800EA1F4 00021080 */  sll        $v0, $v0, 2
/* 1082E8 800EA1F8 00431021 */  addu       $v0, $v0, $v1
/* 1082EC 800EA1FC 8C450000 */  lw         $a1, 0x0($v0)
/* 1082F0 800EA200 0C03A895 */  jal        func_menu_800EA254
/* 1082F4 800EA204 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800EA208:
/* 1082F8 800EA208 8E02003C */  lw         $v0, 0x3C($s0)
/* 1082FC 800EA20C 24420001 */  addiu      $v0, $v0, 0x1
/* 108300 800EA210 0803A82E */  j          .Lmenu_800EA0B8
/* 108304 800EA214 AE02003C */   sw        $v0, 0x3C($s0)
.Lmenu_800EA218:
/* 108308 800EA218 8FBF001C */  lw         $ra, 0x1C($sp)
/* 10830C 800EA21C 8FB20018 */  lw         $s2, 0x18($sp)
/* 108310 800EA220 8FB10014 */  lw         $s1, 0x14($sp)
/* 108314 800EA224 8FB00010 */  lw         $s0, 0x10($sp)
/* 108318 800EA228 03E00008 */  jr         $ra
/* 10831C 800EA22C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EA230
/* 108320 800EA230 ACA00014 */  sw         $zero, 0x14($a1)
/* 108324 800EA234 8C820040 */  lw         $v0, 0x40($a0)
/* 108328 800EA238 50400004 */  beql       $v0, $zero, .Lmenu_800EA24C
/* 10832C 800EA23C ACA00018 */   sw        $zero, 0x18($a1)
/* 108330 800EA240 AC450014 */  sw         $a1, 0x14($v0)
/* 108334 800EA244 8C820040 */  lw         $v0, 0x40($a0)
/* 108338 800EA248 ACA20018 */  sw         $v0, 0x18($a1)
.Lmenu_800EA24C:
/* 10833C 800EA24C 03E00008 */  jr         $ra
/* 108340 800EA250 AC850040 */   sw        $a1, 0x40($a0)

glabel func_menu_800EA254
/* 108344 800EA254 8CA30014 */  lw         $v1, 0x14($a1)
/* 108348 800EA258 8CA20018 */  lw         $v0, 0x18($a1)
/* 10834C 800EA25C 50600002 */  beql       $v1, $zero, .Lmenu_800EA268
/* 108350 800EA260 AC820040 */   sw        $v0, 0x40($a0)
/* 108354 800EA264 AC620018 */  sw         $v0, 0x18($v1)
.Lmenu_800EA268:
/* 108358 800EA268 54400001 */  bnel       $v0, $zero, .Lmenu_800EA270
/* 10835C 800EA26C AC430014 */   sw        $v1, 0x14($v0)
.Lmenu_800EA270:
/* 108360 800EA270 03E00008 */  jr         $ra
/* 108364 800EA274 00000000 */   nop

glabel func_menu_800EA278
/* 108368 800EA278 8C82005C */  lw         $v0, 0x5C($a0)
/* 10836C 800EA27C 1040000B */  beqz       $v0, .Lmenu_800EA2AC
/* 108370 800EA280 00001821 */   addu      $v1, $zero, $zero
/* 108374 800EA284 00403821 */  addu       $a3, $v0, $zero
/* 108378 800EA288 00803021 */  addu       $a2, $a0, $zero
.Lmenu_800EA28C:
/* 10837C 800EA28C 8CC20060 */  lw         $v0, 0x60($a2)
/* 108380 800EA290 54450003 */  bnel       $v0, $a1, .Lmenu_800EA2A0
/* 108384 800EA294 24630001 */   addiu     $v1, $v1, 0x1
/* 108388 800EA298 03E00008 */  jr         $ra
/* 10838C 800EA29C 00601021 */   addu      $v0, $v1, $zero
.Lmenu_800EA2A0:
/* 108390 800EA2A0 0067102B */  sltu       $v0, $v1, $a3
/* 108394 800EA2A4 1440FFF9 */  bnez       $v0, .Lmenu_800EA28C
/* 108398 800EA2A8 24C60004 */   addiu     $a2, $a2, 0x4
.Lmenu_800EA2AC:
/* 10839C 800EA2AC 8C83005C */  lw         $v1, 0x5C($a0)
/* 1083A0 800EA2B0 00601021 */  addu       $v0, $v1, $zero
/* 1083A4 800EA2B4 24430001 */  addiu      $v1, $v0, 0x1
/* 1083A8 800EA2B8 AC83005C */  sw         $v1, 0x5C($a0)
/* 1083AC 800EA2BC 00021880 */  sll        $v1, $v0, 2
/* 1083B0 800EA2C0 00831821 */  addu       $v1, $a0, $v1
/* 1083B4 800EA2C4 03E00008 */  jr         $ra
/* 1083B8 800EA2C8 AC650060 */   sw        $a1, 0x60($v1)

glabel func_menu_800EA2CC
/* 1083BC 800EA2CC 00803821 */  addu       $a3, $a0, $zero
/* 1083C0 800EA2D0 8CE6005C */  lw         $a2, 0x5C($a3)
/* 1083C4 800EA2D4 10C0001E */  beqz       $a2, .Lmenu_800EA350
/* 1083C8 800EA2D8 00000000 */   nop
/* 1083CC 800EA2DC 10C00011 */  beqz       $a2, .Lmenu_800EA324
/* 1083D0 800EA2E0 00002021 */   addu      $a0, $zero, $zero
/* 1083D4 800EA2E4 00E01821 */  addu       $v1, $a3, $zero
.Lmenu_800EA2E8:
/* 1083D8 800EA2E8 8C620060 */  lw         $v0, 0x60($v1)
/* 1083DC 800EA2EC 1045000D */  beq        $v0, $a1, .Lmenu_800EA324
/* 1083E0 800EA2F0 00000000 */   nop
/* 1083E4 800EA2F4 24840001 */  addiu      $a0, $a0, 0x1
/* 1083E8 800EA2F8 0086102B */  sltu       $v0, $a0, $a2
/* 1083EC 800EA2FC 1440FFFA */  bnez       $v0, .Lmenu_800EA2E8
/* 1083F0 800EA300 24630004 */   addiu     $v1, $v1, 0x4
/* 1083F4 800EA304 0803A8C9 */  j          .Lmenu_800EA324
/* 1083F8 800EA308 00000000 */   nop
.Lmenu_800EA30C:
/* 1083FC 800EA30C 24840001 */  addiu      $a0, $a0, 0x1
/* 108400 800EA310 00041080 */  sll        $v0, $a0, 2
/* 108404 800EA314 00E21021 */  addu       $v0, $a3, $v0
/* 108408 800EA318 8C420060 */  lw         $v0, 0x60($v0)
/* 10840C 800EA31C 00E31821 */  addu       $v1, $a3, $v1
/* 108410 800EA320 AC620060 */  sw         $v0, 0x60($v1)
.Lmenu_800EA324:
/* 108414 800EA324 8CE2005C */  lw         $v0, 0x5C($a3)
/* 108418 800EA328 2442FFFF */  addiu      $v0, $v0, -0x1
/* 10841C 800EA32C 0082102B */  sltu       $v0, $a0, $v0
/* 108420 800EA330 1440FFF6 */  bnez       $v0, .Lmenu_800EA30C
/* 108424 800EA334 00041880 */   sll       $v1, $a0, 2
/* 108428 800EA338 8CE2005C */  lw         $v0, 0x5C($a3)
/* 10842C 800EA33C 2442FFFF */  addiu      $v0, $v0, -0x1
/* 108430 800EA340 ACE2005C */  sw         $v0, 0x5C($a3)
/* 108434 800EA344 00021080 */  sll        $v0, $v0, 2
/* 108438 800EA348 00E21021 */  addu       $v0, $a3, $v0
/* 10843C 800EA34C AC400060 */  sw         $zero, 0x60($v0)
.Lmenu_800EA350:
/* 108440 800EA350 03E00008 */  jr         $ra
/* 108444 800EA354 00000000 */   nop

glabel func_menu_800EA358
/* 108448 800EA358 03E00008 */  jr         $ra
/* 10844C 800EA35C AC850080 */   sw        $a1, 0x80($a0)

glabel func_menu_800EA360
/* 108450 800EA360 8C820080 */  lw         $v0, 0x80($a0)
/* 108454 800EA364 50450001 */  beql       $v0, $a1, .Lmenu_800EA36C
/* 108458 800EA368 AC800080 */   sw        $zero, 0x80($a0)
.Lmenu_800EA36C:
/* 10845C 800EA36C 03E00008 */  jr         $ra
/* 108460 800EA370 00000000 */   nop

glabel func_menu_800EA374
/* 108464 800EA374 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 108468 800EA378 AFB00010 */  sw         $s0, 0x10($sp)
/* 10846C 800EA37C 00808021 */  addu       $s0, $a0, $zero
/* 108470 800EA380 AFB10014 */  sw         $s1, 0x14($sp)
/* 108474 800EA384 00A08821 */  addu       $s1, $a1, $zero
/* 108478 800EA388 AFBF0018 */  sw         $ra, 0x18($sp)
/* 10847C 800EA38C 8E050084 */  lw         $a1, 0x84($s0)
/* 108480 800EA390 10A00007 */  beqz       $a1, .Lmenu_800EA3B0
/* 108484 800EA394 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800EA398:
/* 108488 800EA398 8C820088 */  lw         $v0, 0x88($a0)
/* 10848C 800EA39C 10510011 */  beq        $v0, $s1, .Lmenu_800EA3E4
/* 108490 800EA3A0 24630001 */   addiu     $v1, $v1, 0x1
/* 108494 800EA3A4 0065102B */  sltu       $v0, $v1, $a1
/* 108498 800EA3A8 1440FFFB */  bnez       $v0, .Lmenu_800EA398
/* 10849C 800EA3AC 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800EA3B0:
/* 1084A0 800EA3B0 8E020084 */  lw         $v0, 0x84($s0)
/* 1084A4 800EA3B4 2C420003 */  sltiu      $v0, $v0, 0x3
/* 1084A8 800EA3B8 14400004 */  bnez       $v0, .Lmenu_800EA3CC
/* 1084AC 800EA3BC 00000000 */   nop
/* 1084B0 800EA3C0 8E050088 */  lw         $a1, 0x88($s0)
/* 1084B4 800EA3C4 0C03A8FE */  jal        func_menu_800EA3F8
/* 1084B8 800EA3C8 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800EA3CC:
/* 1084BC 800EA3CC 8E030084 */  lw         $v1, 0x84($s0)
/* 1084C0 800EA3D0 00031080 */  sll        $v0, $v1, 2
/* 1084C4 800EA3D4 24630001 */  addiu      $v1, $v1, 0x1
/* 1084C8 800EA3D8 02021021 */  addu       $v0, $s0, $v0
/* 1084CC 800EA3DC AC510088 */  sw         $s1, 0x88($v0)
/* 1084D0 800EA3E0 AE030084 */  sw         $v1, 0x84($s0)
.Lmenu_800EA3E4:
/* 1084D4 800EA3E4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1084D8 800EA3E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1084DC 800EA3EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1084E0 800EA3F0 03E00008 */  jr         $ra
/* 1084E4 800EA3F4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EA3F8
/* 1084E8 800EA3F8 00803821 */  addu       $a3, $a0, $zero
/* 1084EC 800EA3FC 8CE60084 */  lw         $a2, 0x84($a3)
/* 1084F0 800EA400 10C0001E */  beqz       $a2, .Lmenu_800EA47C
/* 1084F4 800EA404 00000000 */   nop
/* 1084F8 800EA408 10C00011 */  beqz       $a2, .Lmenu_800EA450
/* 1084FC 800EA40C 00002021 */   addu      $a0, $zero, $zero
/* 108500 800EA410 00E01821 */  addu       $v1, $a3, $zero
.Lmenu_800EA414:
/* 108504 800EA414 8C620088 */  lw         $v0, 0x88($v1)
/* 108508 800EA418 1045000D */  beq        $v0, $a1, .Lmenu_800EA450
/* 10850C 800EA41C 00000000 */   nop
/* 108510 800EA420 24840001 */  addiu      $a0, $a0, 0x1
/* 108514 800EA424 0086102B */  sltu       $v0, $a0, $a2
/* 108518 800EA428 1440FFFA */  bnez       $v0, .Lmenu_800EA414
/* 10851C 800EA42C 24630004 */   addiu     $v1, $v1, 0x4
/* 108520 800EA430 0803A914 */  j          .Lmenu_800EA450
/* 108524 800EA434 00000000 */   nop
.Lmenu_800EA438:
/* 108528 800EA438 24840001 */  addiu      $a0, $a0, 0x1
/* 10852C 800EA43C 00041080 */  sll        $v0, $a0, 2
/* 108530 800EA440 00E21021 */  addu       $v0, $a3, $v0
/* 108534 800EA444 8C420088 */  lw         $v0, 0x88($v0)
/* 108538 800EA448 00E31821 */  addu       $v1, $a3, $v1
/* 10853C 800EA44C AC620088 */  sw         $v0, 0x88($v1)
.Lmenu_800EA450:
/* 108540 800EA450 8CE20084 */  lw         $v0, 0x84($a3)
/* 108544 800EA454 2442FFFF */  addiu      $v0, $v0, -0x1
/* 108548 800EA458 0082102B */  sltu       $v0, $a0, $v0
/* 10854C 800EA45C 1440FFF6 */  bnez       $v0, .Lmenu_800EA438
/* 108550 800EA460 00041880 */   sll       $v1, $a0, 2
/* 108554 800EA464 8CE20084 */  lw         $v0, 0x84($a3)
/* 108558 800EA468 2442FFFF */  addiu      $v0, $v0, -0x1
/* 10855C 800EA46C ACE20084 */  sw         $v0, 0x84($a3)
/* 108560 800EA470 00021080 */  sll        $v0, $v0, 2
/* 108564 800EA474 00E21021 */  addu       $v0, $a3, $v0
/* 108568 800EA478 AC400088 */  sw         $zero, 0x88($v0)
.Lmenu_800EA47C:
/* 10856C 800EA47C 03E00008 */  jr         $ra
/* 108570 800EA480 00000000 */   nop

glabel func_menu_800EA484
/* 108574 800EA484 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 108578 800EA488 AFB20018 */  sw         $s2, 0x18($sp)
/* 10857C 800EA48C 00809021 */  addu       $s2, $a0, $zero
/* 108580 800EA490 AFBF001C */  sw         $ra, 0x1C($sp)
/* 108584 800EA494 AFB10014 */  sw         $s1, 0x14($sp)
/* 108588 800EA498 AFB00010 */  sw         $s0, 0x10($sp)
/* 10858C 800EA49C 8E42000C */  lw         $v0, 0xC($s2)
/* 108590 800EA4A0 1040000A */  beqz       $v0, .Lmenu_800EA4CC
/* 108594 800EA4A4 00008021 */   addu      $s0, $zero, $zero
/* 108598 800EA4A8 02008821 */  addu       $s1, $s0, $zero
.Lmenu_800EA4AC:
/* 10859C 800EA4AC 8E440010 */  lw         $a0, 0x10($s2)
/* 1085A0 800EA4B0 26100001 */  addiu      $s0, $s0, 0x1
/* 1085A4 800EA4B4 0C039EEF */  jal        func_menu_800E7BBC
/* 1085A8 800EA4B8 00912021 */   addu      $a0, $a0, $s1
/* 1085AC 800EA4BC 8E42000C */  lw         $v0, 0xC($s2)
/* 1085B0 800EA4C0 0202102B */  sltu       $v0, $s0, $v0
/* 1085B4 800EA4C4 1440FFF9 */  bnez       $v0, .Lmenu_800EA4AC
/* 1085B8 800EA4C8 26310068 */   addiu     $s1, $s1, 0x68
.Lmenu_800EA4CC:
/* 1085BC 800EA4CC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1085C0 800EA4D0 8FB20018 */  lw         $s2, 0x18($sp)
/* 1085C4 800EA4D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1085C8 800EA4D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1085CC 800EA4DC 03E00008 */  jr         $ra
/* 1085D0 800EA4E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EA4E4
/* 1085D4 800EA4E4 8C82005C */  lw         $v0, 0x5C($a0)
/* 1085D8 800EA4E8 14400003 */  bnez       $v0, .Lmenu_800EA4F8
/* 1085DC 800EA4EC 2442FFFF */   addiu     $v0, $v0, -0x1
/* 1085E0 800EA4F0 03E00008 */  jr         $ra
/* 1085E4 800EA4F4 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800EA4F8:
/* 1085E8 800EA4F8 00021080 */  sll        $v0, $v0, 2
/* 1085EC 800EA4FC 00821021 */  addu       $v0, $a0, $v0
/* 1085F0 800EA500 8C420060 */  lw         $v0, 0x60($v0)
/* 1085F4 800EA504 03E00008 */  jr         $ra
/* 1085F8 800EA508 00000000 */   nop

glabel func_menu_800EA50C
/* 1085FC 800EA50C 3C028012 */  lui        $v0, %hi(D_menu_80126A20)
/* 108600 800EA510 03E00008 */  jr         $ra
/* 108604 800EA514 AC446A20 */   sw        $a0, %lo(D_menu_80126A20)($v0)
