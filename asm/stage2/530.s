.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8006DAE0
/* 64E10 8006DAE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 64E14 8006DAE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 64E18 8006DAE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 64E1C 8006DAEC 0C01E81C */  jal        func_8007A070
/* 64E20 8006DAF0 00808021 */   addu      $s0, $a0, $zero
/* 64E24 8006DAF4 02001021 */  addu       $v0, $s0, $zero
/* 64E28 8006DAF8 3C038004 */  lui        $v1, %hi(D_8003EEE0)
/* 64E2C 8006DAFC 2463EEE0 */  addiu      $v1, $v1, %lo(D_8003EEE0)
/* 64E30 8006DB00 AC430008 */  sw         $v1, 0x8($v0)
/* 64E34 8006DB04 24030001 */  addiu      $v1, $zero, 0x1
/* 64E38 8006DB08 AC40000C */  sw         $zero, 0xC($v0)
/* 64E3C 8006DB0C A4430002 */  sh         $v1, 0x2($v0)
/* 64E40 8006DB10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 64E44 8006DB14 8FB00010 */  lw         $s0, 0x10($sp)
/* 64E48 8006DB18 03E00008 */  jr         $ra
/* 64E4C 8006DB1C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006DB20
/* 64E50 8006DB20 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 64E54 8006DB24 AFB10014 */  sw         $s1, 0x14($sp)
/* 64E58 8006DB28 00808821 */  addu       $s1, $a0, $zero
/* 64E5C 8006DB2C AFBF0020 */  sw         $ra, 0x20($sp)
/* 64E60 8006DB30 AFB3001C */  sw         $s3, 0x1C($sp)
/* 64E64 8006DB34 AFB20018 */  sw         $s2, 0x18($sp)
/* 64E68 8006DB38 AFB00010 */  sw         $s0, 0x10($sp)
/* 64E6C 8006DB3C F7B60030 */  sdc1       $f22, 0x30($sp)
/* 64E70 8006DB40 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 64E74 8006DB44 96220000 */  lhu        $v0, 0x0($s1)
/* 64E78 8006DB48 10400006 */  beqz       $v0, .L8006DB64
/* 64E7C 8006DB4C 00A09821 */   addu      $s3, $a1, $zero
/* 64E80 8006DB50 8E220008 */  lw         $v0, 0x8($s1)
/* 64E84 8006DB54 84440020 */  lh         $a0, 0x20($v0)
/* 64E88 8006DB58 8C420024 */  lw         $v0, 0x24($v0)
/* 64E8C 8006DB5C 0040F809 */  jalr       $v0
/* 64E90 8006DB60 02242021 */   addu      $a0, $s1, $a0
.L8006DB64:
/* 64E94 8006DB64 02602021 */  addu       $a0, $s3, $zero
/* 64E98 8006DB68 0C0026F4 */  jal        func_80009BD0
/* 64E9C 8006DB6C 24050007 */   addiu     $a1, $zero, 0x7
/* 64EA0 8006DB70 0C002680 */  jal        func_80009A00
/* 64EA4 8006DB74 02602021 */   addu      $a0, $s3, $zero
/* 64EA8 8006DB78 A6220000 */  sh         $v0, 0x0($s1)
/* 64EAC 8006DB7C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 64EB0 8006DB80 54400008 */  bnel       $v0, $zero, .L8006DBA4
/* 64EB4 8006DB84 02602021 */   addu      $a0, $s3, $zero
/* 64EB8 8006DB88 8E620028 */  lw         $v0, 0x28($s3)
/* 64EBC 8006DB8C 24050004 */  addiu      $a1, $zero, 0x4
/* 64EC0 8006DB90 84440098 */  lh         $a0, 0x98($v0)
/* 64EC4 8006DB94 8C42009C */  lw         $v0, 0x9C($v0)
/* 64EC8 8006DB98 0040F809 */  jalr       $v0
/* 64ECC 8006DB9C 02642021 */   addu      $a0, $s3, $a0
/* 64ED0 8006DBA0 02602021 */  addu       $a0, $s3, $zero
.L8006DBA4:
/* 64ED4 8006DBA4 0C0026F4 */  jal        func_80009BD0
/* 64ED8 8006DBA8 24050008 */   addiu     $a1, $zero, 0x8
/* 64EDC 8006DBAC 02602021 */  addu       $a0, $s3, $zero
/* 64EE0 8006DBB0 0C0026F4 */  jal        func_80009BD0
/* 64EE4 8006DBB4 24050005 */   addiu     $a1, $zero, 0x5
/* 64EE8 8006DBB8 3C028008 */  lui        $v0, %hi(D_80087330)
/* 64EEC 8006DBBC 8C447330 */  lw         $a0, %lo(D_80087330)($v0)
/* 64EF0 8006DBC0 0C01FB65 */  jal        func_8007ED94
/* 64EF4 8006DBC4 00000000 */   nop
/* 64EF8 8006DBC8 96240000 */  lhu        $a0, 0x0($s1)
/* 64EFC 8006DBCC 0C00943C */  jal        func_800250F0
/* 64F00 8006DBD0 00042100 */   sll       $a0, $a0, 4
/* 64F04 8006DBD4 0C01FB72 */  jal        func_8007EDC8
/* 64F08 8006DBD8 AE22000C */   sw        $v0, 0xC($s1)
/* 64F0C 8006DBDC 8E22000C */  lw         $v0, 0xC($s1)
/* 64F10 8006DBE0 14400007 */  bnez       $v0, .L8006DC00
/* 64F14 8006DBE4 00002821 */   addu      $a1, $zero, $zero
/* 64F18 8006DBE8 3C048004 */  lui        $a0, %hi(D_8003EEC0)
/* 64F1C 8006DBEC 2484EEC0 */  addiu      $a0, $a0, %lo(D_8003EEC0)
/* 64F20 8006DBF0 00A03021 */  addu       $a2, $a1, $zero
/* 64F24 8006DBF4 0C011ACF */  jal        func_80046B3C
/* 64F28 8006DBF8 00A03821 */   addu      $a3, $a1, $zero
/* 64F2C 8006DBFC 00002821 */  addu       $a1, $zero, $zero
.L8006DC00:
/* 64F30 8006DC00 96260000 */  lhu        $a2, 0x0($s1)
/* 64F34 8006DC04 8E24000C */  lw         $a0, 0xC($s1)
/* 64F38 8006DC08 0C000697 */  jal        func_80001A5C
/* 64F3C 8006DC0C 00063100 */   sll       $a2, $a2, 4
/* 64F40 8006DC10 96220000 */  lhu        $v0, 0x0($s1)
/* 64F44 8006DC14 1040004B */  beqz       $v0, .L8006DD44
/* 64F48 8006DC18 00009021 */   addu      $s2, $zero, $zero
/* 64F4C 8006DC1C 3C018004 */  lui        $at, %hi(D_8003EEC4)
/* 64F50 8006DC20 C436EEC4 */  lwc1       $f22, %lo(D_8003EEC4)($at)
/* 64F54 8006DC24 3C018004 */  lui        $at, %hi(D_8003EEC8)
/* 64F58 8006DC28 C434EEC8 */  lwc1       $f20, %lo(D_8003EEC8)($at)
.L8006DC2C:
/* 64F5C 8006DC2C 0C0025F8 */  jal        func_800097E0
/* 64F60 8006DC30 02602021 */   addu      $a0, $s3, $zero
/* 64F64 8006DC34 02602021 */  addu       $a0, $s3, $zero
/* 64F68 8006DC38 00128100 */  sll        $s0, $s2, 4
/* 64F6C 8006DC3C 8E23000C */  lw         $v1, 0xC($s1)
/* 64F70 8006DC40 4600008D */  trunc.w.s  $f2, $f0
/* 64F74 8006DC44 44021000 */  mfc1       $v0, $f2
/* 64F78 8006DC48 02031821 */  addu       $v1, $s0, $v1
/* 64F7C 8006DC4C 0C0025F8 */  jal        func_800097E0
/* 64F80 8006DC50 A4620000 */   sh        $v0, 0x0($v1)
/* 64F84 8006DC54 02602021 */  addu       $a0, $s3, $zero
/* 64F88 8006DC58 8E23000C */  lw         $v1, 0xC($s1)
/* 64F8C 8006DC5C 4600008D */  trunc.w.s  $f2, $f0
/* 64F90 8006DC60 44021000 */  mfc1       $v0, $f2
/* 64F94 8006DC64 02031821 */  addu       $v1, $s0, $v1
/* 64F98 8006DC68 0C0025F8 */  jal        func_800097E0
/* 64F9C 8006DC6C A4620002 */   sh        $v0, 0x2($v1)
/* 64FA0 8006DC70 02602021 */  addu       $a0, $s3, $zero
/* 64FA4 8006DC74 8E23000C */  lw         $v1, 0xC($s1)
/* 64FA8 8006DC78 4600008D */  trunc.w.s  $f2, $f0
/* 64FAC 8006DC7C 44021000 */  mfc1       $v0, $f2
/* 64FB0 8006DC80 02031821 */  addu       $v1, $s0, $v1
/* 64FB4 8006DC84 0C0025F8 */  jal        func_800097E0
/* 64FB8 8006DC88 A4620004 */   sh        $v0, 0x4($v1)
/* 64FBC 8006DC8C 46160002 */  mul.s      $f0, $f0, $f22
/* 64FC0 8006DC90 00000000 */  nop
/* 64FC4 8006DC94 46140002 */  mul.s      $f0, $f0, $f20
/* 64FC8 8006DC98 8E23000C */  lw         $v1, 0xC($s1)
/* 64FCC 8006DC9C 02602021 */  addu       $a0, $s3, $zero
/* 64FD0 8006DCA0 02031821 */  addu       $v1, $s0, $v1
/* 64FD4 8006DCA4 4600008D */  trunc.w.s  $f2, $f0
/* 64FD8 8006DCA8 44021000 */  mfc1       $v0, $f2
/* 64FDC 8006DCAC 0C0025F8 */  jal        func_800097E0
/* 64FE0 8006DCB0 A4620008 */   sh        $v0, 0x8($v1)
/* 64FE4 8006DCB4 46160002 */  mul.s      $f0, $f0, $f22
/* 64FE8 8006DCB8 00000000 */  nop
/* 64FEC 8006DCBC 46140002 */  mul.s      $f0, $f0, $f20
/* 64FF0 8006DCC0 8E22000C */  lw         $v0, 0xC($s1)
/* 64FF4 8006DCC4 02021021 */  addu       $v0, $s0, $v0
/* 64FF8 8006DCC8 4600008D */  trunc.w.s  $f2, $f0
/* 64FFC 8006DCCC 44031000 */  mfc1       $v1, $f2
/* 65000 8006DCD0 A443000A */  sh         $v1, 0xA($v0)
/* 65004 8006DCD4 8E22000C */  lw         $v0, 0xC($s1)
/* 65008 8006DCD8 02602021 */  addu       $a0, $s3, $zero
/* 6500C 8006DCDC 02021021 */  addu       $v0, $s0, $v0
/* 65010 8006DCE0 0C002680 */  jal        func_80009A00
/* 65014 8006DCE4 A4400006 */   sh        $zero, 0x6($v0)
/* 65018 8006DCE8 8E23000C */  lw         $v1, 0xC($s1)
/* 6501C 8006DCEC 02602021 */  addu       $a0, $s3, $zero
/* 65020 8006DCF0 02031821 */  addu       $v1, $s0, $v1
/* 65024 8006DCF4 0C002680 */  jal        func_80009A00
/* 65028 8006DCF8 A062000C */   sb        $v0, 0xC($v1)
/* 6502C 8006DCFC 8E23000C */  lw         $v1, 0xC($s1)
/* 65030 8006DD00 02602021 */  addu       $a0, $s3, $zero
/* 65034 8006DD04 02031821 */  addu       $v1, $s0, $v1
/* 65038 8006DD08 0C002680 */  jal        func_80009A00
/* 6503C 8006DD0C A062000D */   sb        $v0, 0xD($v1)
/* 65040 8006DD10 8E23000C */  lw         $v1, 0xC($s1)
/* 65044 8006DD14 02602021 */  addu       $a0, $s3, $zero
/* 65048 8006DD18 02031821 */  addu       $v1, $s0, $v1
/* 6504C 8006DD1C 0C002680 */  jal        func_80009A00
/* 65050 8006DD20 A062000E */   sb        $v0, 0xE($v1)
/* 65054 8006DD24 8E23000C */  lw         $v1, 0xC($s1)
/* 65058 8006DD28 02038021 */  addu       $s0, $s0, $v1
/* 6505C 8006DD2C A202000F */  sb         $v0, 0xF($s0)
/* 65060 8006DD30 96220000 */  lhu        $v0, 0x0($s1)
/* 65064 8006DD34 26520001 */  addiu      $s2, $s2, 0x1
/* 65068 8006DD38 0242102B */  sltu       $v0, $s2, $v0
/* 6506C 8006DD3C 1440FFBB */  bnez       $v0, .L8006DC2C
/* 65070 8006DD40 00000000 */   nop
.L8006DD44:
/* 65074 8006DD44 02602021 */  addu       $a0, $s3, $zero
/* 65078 8006DD48 0C0026F4 */  jal        func_80009BD0
/* 6507C 8006DD4C 24050006 */   addiu     $a1, $zero, 0x6
/* 65080 8006DD50 8FBF0020 */  lw         $ra, 0x20($sp)
/* 65084 8006DD54 8FB3001C */  lw         $s3, 0x1C($sp)
/* 65088 8006DD58 8FB20018 */  lw         $s2, 0x18($sp)
/* 6508C 8006DD5C 8FB10014 */  lw         $s1, 0x14($sp)
/* 65090 8006DD60 8FB00010 */  lw         $s0, 0x10($sp)
/* 65094 8006DD64 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 65098 8006DD68 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 6509C 8006DD6C 03E00008 */  jr         $ra
/* 650A0 8006DD70 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8006DD74
/* 650A4 8006DD74 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 650A8 8006DD78 AFB00010 */  sw         $s0, 0x10($sp)
/* 650AC 8006DD7C 00808021 */  addu       $s0, $a0, $zero
/* 650B0 8006DD80 AFBF0018 */  sw         $ra, 0x18($sp)
/* 650B4 8006DD84 AFB10014 */  sw         $s1, 0x14($sp)
/* 650B8 8006DD88 96020000 */  lhu        $v0, 0x0($s0)
/* 650BC 8006DD8C 10400006 */  beqz       $v0, .L8006DDA8
/* 650C0 8006DD90 00A08821 */   addu      $s1, $a1, $zero
/* 650C4 8006DD94 8E020008 */  lw         $v0, 0x8($s0)
/* 650C8 8006DD98 84440020 */  lh         $a0, 0x20($v0)
/* 650CC 8006DD9C 8C420024 */  lw         $v0, 0x24($v0)
/* 650D0 8006DDA0 0040F809 */  jalr       $v0
/* 650D4 8006DDA4 02042021 */   addu      $a0, $s0, $a0
.L8006DDA8:
/* 650D8 8006DDA8 3C028008 */  lui        $v0, %hi(D_80087330)
/* 650DC 8006DDAC 8C447330 */  lw         $a0, %lo(D_80087330)($v0)
/* 650E0 8006DDB0 0C01FB65 */  jal        func_8007ED94
/* 650E4 8006DDB4 A6110000 */   sh        $s1, 0x0($s0)
/* 650E8 8006DDB8 96040000 */  lhu        $a0, 0x0($s0)
/* 650EC 8006DDBC 0C00943C */  jal        func_800250F0
/* 650F0 8006DDC0 00042100 */   sll       $a0, $a0, 4
/* 650F4 8006DDC4 0C01FB72 */  jal        func_8007EDC8
/* 650F8 8006DDC8 AE02000C */   sw        $v0, 0xC($s0)
/* 650FC 8006DDCC 8E02000C */  lw         $v0, 0xC($s0)
/* 65100 8006DDD0 14400007 */  bnez       $v0, .L8006DDF0
/* 65104 8006DDD4 00002821 */   addu      $a1, $zero, $zero
/* 65108 8006DDD8 3C048004 */  lui        $a0, %hi(D_8003EEC0)
/* 6510C 8006DDDC 2484EEC0 */  addiu      $a0, $a0, %lo(D_8003EEC0)
/* 65110 8006DDE0 00A03021 */  addu       $a2, $a1, $zero
/* 65114 8006DDE4 0C011ACF */  jal        func_80046B3C
/* 65118 8006DDE8 00A03821 */   addu      $a3, $a1, $zero
/* 6511C 8006DDEC 00002821 */  addu       $a1, $zero, $zero
.L8006DDF0:
/* 65120 8006DDF0 96060000 */  lhu        $a2, 0x0($s0)
/* 65124 8006DDF4 8E04000C */  lw         $a0, 0xC($s0)
/* 65128 8006DDF8 0C000697 */  jal        func_80001A5C
/* 6512C 8006DDFC 00063100 */   sll       $a2, $a2, 4
/* 65130 8006DE00 8FBF0018 */  lw         $ra, 0x18($sp)
/* 65134 8006DE04 8FB10014 */  lw         $s1, 0x14($sp)
/* 65138 8006DE08 8FB00010 */  lw         $s0, 0x10($sp)
/* 6513C 8006DE0C 03E00008 */  jr         $ra
/* 65140 8006DE10 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8006DE14
/* 65144 8006DE14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 65148 8006DE18 AFB00010 */  sw         $s0, 0x10($sp)
/* 6514C 8006DE1C 00808021 */  addu       $s0, $a0, $zero
/* 65150 8006DE20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 65154 8006DE24 8E04000C */  lw         $a0, 0xC($s0)
/* 65158 8006DE28 10800004 */  beqz       $a0, .L8006DE3C
/* 6515C 8006DE2C 00000000 */   nop
/* 65160 8006DE30 0C009444 */  jal        func_80025110
/* 65164 8006DE34 00000000 */   nop
/* 65168 8006DE38 AE00000C */  sw         $zero, 0xC($s0)
.L8006DE3C:
/* 6516C 8006DE3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 65170 8006DE40 8FB00010 */  lw         $s0, 0x10($sp)
/* 65174 8006DE44 03E00008 */  jr         $ra
/* 65178 8006DE48 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006DE4C
/* 6517C 8006DE4C 8C82000C */  lw         $v0, 0xC($a0)
/* 65180 8006DE50 00052900 */  sll        $a1, $a1, 4
/* 65184 8006DE54 00A21021 */  addu       $v0, $a1, $v0
/* 65188 8006DE58 84420000 */  lh         $v0, 0x0($v0)
/* 6518C 8006DE5C 44820000 */  mtc1       $v0, $f0
/* 65190 8006DE60 46800020 */  cvt.s.w    $f0, $f0
/* 65194 8006DE64 E4C00000 */  swc1       $f0, 0x0($a2)
/* 65198 8006DE68 8C82000C */  lw         $v0, 0xC($a0)
/* 6519C 8006DE6C 00A21021 */  addu       $v0, $a1, $v0
/* 651A0 8006DE70 84420002 */  lh         $v0, 0x2($v0)
/* 651A4 8006DE74 44820000 */  mtc1       $v0, $f0
/* 651A8 8006DE78 46800020 */  cvt.s.w    $f0, $f0
/* 651AC 8006DE7C E4C00004 */  swc1       $f0, 0x4($a2)
/* 651B0 8006DE80 8C82000C */  lw         $v0, 0xC($a0)
/* 651B4 8006DE84 00A22821 */  addu       $a1, $a1, $v0
/* 651B8 8006DE88 84A20004 */  lh         $v0, 0x4($a1)
/* 651BC 8006DE8C 44820000 */  mtc1       $v0, $f0
/* 651C0 8006DE90 46800020 */  cvt.s.w    $f0, $f0
/* 651C4 8006DE94 03E00008 */  jr         $ra
/* 651C8 8006DE98 E4C00008 */   swc1      $f0, 0x8($a2)

glabel func_8006DE9C
/* 651CC 8006DE9C 8C82000C */  lw         $v0, 0xC($a0)
/* 651D0 8006DEA0 00052900 */  sll        $a1, $a1, 4
/* 651D4 8006DEA4 00A21021 */  addu       $v0, $a1, $v0
/* 651D8 8006DEA8 84420008 */  lh         $v0, 0x8($v0)
/* 651DC 8006DEAC 3C018004 */  lui        $at, %hi(D_8003EECC)
/* 651E0 8006DEB0 C424EECC */  lwc1       $f4, %lo(D_8003EECC)($at)
/* 651E4 8006DEB4 44820000 */  mtc1       $v0, $f0
/* 651E8 8006DEB8 46800020 */  cvt.s.w    $f0, $f0
/* 651EC 8006DEBC 46040002 */  mul.s      $f0, $f0, $f4
/* 651F0 8006DEC0 3C018004 */  lui        $at, %hi(D_8003EED0)
/* 651F4 8006DEC4 C422EED0 */  lwc1       $f2, %lo(D_8003EED0)($at)
/* 651F8 8006DEC8 46020003 */  div.s      $f0, $f0, $f2
/* 651FC 8006DECC E4C00000 */  swc1       $f0, 0x0($a2)
/* 65200 8006DED0 8C82000C */  lw         $v0, 0xC($a0)
/* 65204 8006DED4 00A22821 */  addu       $a1, $a1, $v0
/* 65208 8006DED8 84A2000A */  lh         $v0, 0xA($a1)
/* 6520C 8006DEDC 44820000 */  mtc1       $v0, $f0
/* 65210 8006DEE0 46800020 */  cvt.s.w    $f0, $f0
/* 65214 8006DEE4 46040002 */  mul.s      $f0, $f0, $f4
/* 65218 8006DEE8 46020003 */  div.s      $f0, $f0, $f2
/* 6521C 8006DEEC 03E00008 */  jr         $ra
/* 65220 8006DEF0 E4C00004 */   swc1      $f0, 0x4($a2)

glabel func_8006DEF4
/* 65224 8006DEF4 ACC00000 */  sw         $zero, 0x0($a2)
/* 65228 8006DEF8 ACC00004 */  sw         $zero, 0x4($a2)
/* 6522C 8006DEFC 03E00008 */  jr         $ra
/* 65230 8006DF00 ACC00008 */   sw        $zero, 0x8($a2)

glabel func_8006DF04
/* 65234 8006DF04 8C82000C */  lw         $v0, 0xC($a0)
/* 65238 8006DF08 00052900 */  sll        $a1, $a1, 4
/* 6523C 8006DF0C 00A21021 */  addu       $v0, $a1, $v0
/* 65240 8006DF10 9042000C */  lbu        $v0, 0xC($v0)
/* 65244 8006DF14 A0C20000 */  sb         $v0, 0x0($a2)
/* 65248 8006DF18 8C82000C */  lw         $v0, 0xC($a0)
/* 6524C 8006DF1C 00A21021 */  addu       $v0, $a1, $v0
/* 65250 8006DF20 9042000D */  lbu        $v0, 0xD($v0)
/* 65254 8006DF24 A0C20001 */  sb         $v0, 0x1($a2)
/* 65258 8006DF28 8C82000C */  lw         $v0, 0xC($a0)
/* 6525C 8006DF2C 00A21021 */  addu       $v0, $a1, $v0
/* 65260 8006DF30 9042000E */  lbu        $v0, 0xE($v0)
/* 65264 8006DF34 A0C20002 */  sb         $v0, 0x2($a2)
/* 65268 8006DF38 8C82000C */  lw         $v0, 0xC($a0)
/* 6526C 8006DF3C 00A22821 */  addu       $a1, $a1, $v0
/* 65270 8006DF40 90A2000F */  lbu        $v0, 0xF($a1)
/* 65274 8006DF44 03E00008 */  jr         $ra
/* 65278 8006DF48 A0C20003 */   sb        $v0, 0x3($a2)

glabel func_8006DF4C
/* 6527C 8006DF4C 00052900 */  sll        $a1, $a1, 4
/* 65280 8006DF50 8C82000C */  lw         $v0, 0xC($a0)
/* 65284 8006DF54 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 65288 8006DF58 00A21021 */  addu       $v0, $a1, $v0
/* 6528C 8006DF5C 4600008D */  trunc.w.s  $f2, $f0
/* 65290 8006DF60 44031000 */  mfc1       $v1, $f2
/* 65294 8006DF64 A4430000 */  sh         $v1, 0x0($v0)
/* 65298 8006DF68 8C82000C */  lw         $v0, 0xC($a0)
/* 6529C 8006DF6C C4C00004 */  lwc1       $f0, 0x4($a2)
/* 652A0 8006DF70 00A21021 */  addu       $v0, $a1, $v0
/* 652A4 8006DF74 4600008D */  trunc.w.s  $f2, $f0
/* 652A8 8006DF78 44031000 */  mfc1       $v1, $f2
/* 652AC 8006DF7C A4430002 */  sh         $v1, 0x2($v0)
/* 652B0 8006DF80 8C82000C */  lw         $v0, 0xC($a0)
/* 652B4 8006DF84 C4C00008 */  lwc1       $f0, 0x8($a2)
/* 652B8 8006DF88 00A22821 */  addu       $a1, $a1, $v0
/* 652BC 8006DF8C 4600008D */  trunc.w.s  $f2, $f0
/* 652C0 8006DF90 44021000 */  mfc1       $v0, $f2
/* 652C4 8006DF94 03E00008 */  jr         $ra
/* 652C8 8006DF98 A4A20004 */   sh        $v0, 0x4($a1)

glabel func_8006DF9C
/* 652CC 8006DF9C C4C00000 */  lwc1       $f0, 0x0($a2)
/* 652D0 8006DFA0 3C018004 */  lui        $at, %hi(D_8003EED4)
/* 652D4 8006DFA4 C424EED4 */  lwc1       $f4, %lo(D_8003EED4)($at)
/* 652D8 8006DFA8 46040002 */  mul.s      $f0, $f0, $f4
/* 652DC 8006DFAC 3C018004 */  lui        $at, %hi(D_8003EED8)
/* 652E0 8006DFB0 C422EED8 */  lwc1       $f2, %lo(D_8003EED8)($at)
/* 652E4 8006DFB4 46020002 */  mul.s      $f0, $f0, $f2
/* 652E8 8006DFB8 8C82000C */  lw         $v0, 0xC($a0)
/* 652EC 8006DFBC 00052900 */  sll        $a1, $a1, 4
/* 652F0 8006DFC0 00A21021 */  addu       $v0, $a1, $v0
/* 652F4 8006DFC4 4600018D */  trunc.w.s  $f6, $f0
/* 652F8 8006DFC8 44033000 */  mfc1       $v1, $f6
/* 652FC 8006DFCC A4430008 */  sh         $v1, 0x8($v0)
/* 65300 8006DFD0 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 65304 8006DFD4 46040002 */  mul.s      $f0, $f0, $f4
/* 65308 8006DFD8 00000000 */  nop
/* 6530C 8006DFDC 46020002 */  mul.s      $f0, $f0, $f2
/* 65310 8006DFE0 8C82000C */  lw         $v0, 0xC($a0)
/* 65314 8006DFE4 00A22821 */  addu       $a1, $a1, $v0
/* 65318 8006DFE8 4600018D */  trunc.w.s  $f6, $f0
/* 6531C 8006DFEC 44023000 */  mfc1       $v0, $f6
/* 65320 8006DFF0 03E00008 */  jr         $ra
/* 65324 8006DFF4 A4A2000A */   sh        $v0, 0xA($a1)

glabel func_8006DFF8
/* 65328 8006DFF8 03E00008 */  jr         $ra
/* 6532C 8006DFFC 00000000 */   nop

glabel func_8006E000
/* 65330 8006E000 00052900 */  sll        $a1, $a1, 4
/* 65334 8006E004 8C82000C */  lw         $v0, 0xC($a0)
/* 65338 8006E008 90C30000 */  lbu        $v1, 0x0($a2)
/* 6533C 8006E00C 00A21021 */  addu       $v0, $a1, $v0
/* 65340 8006E010 A043000C */  sb         $v1, 0xC($v0)
/* 65344 8006E014 8C82000C */  lw         $v0, 0xC($a0)
/* 65348 8006E018 90C30001 */  lbu        $v1, 0x1($a2)
/* 6534C 8006E01C 00A21021 */  addu       $v0, $a1, $v0
/* 65350 8006E020 A043000D */  sb         $v1, 0xD($v0)
/* 65354 8006E024 8C82000C */  lw         $v0, 0xC($a0)
/* 65358 8006E028 90C30002 */  lbu        $v1, 0x2($a2)
/* 6535C 8006E02C 00A21021 */  addu       $v0, $a1, $v0
/* 65360 8006E030 A043000E */  sb         $v1, 0xE($v0)
/* 65364 8006E034 8C82000C */  lw         $v0, 0xC($a0)
/* 65368 8006E038 90C30003 */  lbu        $v1, 0x3($a2)
/* 6536C 8006E03C 00A22821 */  addu       $a1, $a1, $v0
/* 65370 8006E040 03E00008 */  jr         $ra
/* 65374 8006E044 A0A3000F */   sb        $v1, 0xF($a1)

glabel func_8006E048
/* 65378 8006E048 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6537C 8006E04C AFBF0010 */  sw         $ra, 0x10($sp)
/* 65380 8006E050 0C01E82C */  jal        func_8007A0B0
/* 65384 8006E054 00000000 */   nop
/* 65388 8006E058 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6538C 8006E05C 03E00008 */  jr         $ra
/* 65390 8006E060 27BD0018 */   addiu     $sp, $sp, 0x18
