.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel cosf
/* 1BB30 8001AF30 E7AC0000 */  swc1       $f12, 0x0($sp)
/* 1BB34 8001AF34 8FA20000 */  lw         $v0, 0x0($sp)
/* 1BB38 8001AF38 00021583 */  sra        $v0, $v0, 22
/* 1BB3C 8001AF3C 304201FF */  andi       $v0, $v0, 0x1FF
/* 1BB40 8001AF40 28420136 */  slti       $v0, $v0, 0x136
/* 1BB44 8001AF44 10400043 */  beqz       $v0, .L8001B054
/* 1BB48 8001AF48 00000000 */   nop
/* 1BB4C 8001AF4C 44800000 */  mtc1       $zero, $f0
/* 1BB50 8001AF50 00000000 */  nop
/* 1BB54 8001AF54 460C003C */  c.lt.s     $f0, $f12
/* 1BB58 8001AF58 00000000 */  nop
/* 1BB5C 8001AF5C 00000000 */  nop
/* 1BB60 8001AF60 45010002 */  bc1t       .L8001AF6C
/* 1BB64 8001AF64 46006106 */   mov.s     $f4, $f12
/* 1BB68 8001AF68 46006107 */  neg.s      $f4, $f12
.L8001AF6C:
/* 1BB6C 8001AF6C 3C018000 */  lui        $at, %hi(D_800016F8)
/* 1BB70 8001AF70 D42016F8 */  ldc1       $f0, %lo(D_800016F8)($at)
/* 1BB74 8001AF74 460021A1 */  cvt.d.s    $f6, $f4
/* 1BB78 8001AF78 46203002 */  mul.d      $f0, $f6, $f0
/* 1BB7C 8001AF7C 3C018000 */  lui        $at, %hi(D_80001718)
/* 1BB80 8001AF80 D4221718 */  ldc1       $f2, %lo(D_80001718)($at)
/* 1BB84 8001AF84 46220100 */  add.d      $f4, $f0, $f2
/* 1BB88 8001AF88 44800000 */  mtc1       $zero, $f0
/* 1BB8C 8001AF8C 44800800 */  mtc1       $zero, $f1
/* 1BB90 8001AF90 00000000 */  nop
/* 1BB94 8001AF94 4624003E */  c.le.d     $f0, $f4
/* 1BB98 8001AF98 00000000 */  nop
/* 1BB9C 8001AF9C 00000000 */  nop
/* 1BBA0 8001AFA0 45020002 */  bc1fl      .L8001AFAC
/* 1BBA4 8001AFA4 46222001 */   sub.d     $f0, $f4, $f2
/* 1BBA8 8001AFA8 46222000 */  add.d      $f0, $f4, $f2
.L8001AFAC:
/* 1BBAC 8001AFAC 4620008D */  trunc.w.d  $f2, $f0
/* 1BBB0 8001AFB0 44031000 */  mfc1       $v1, $f2
/* 1BBB4 8001AFB4 3C018000 */  lui        $at, %hi(D_80001720)
/* 1BBB8 8001AFB8 D4201720 */  ldc1       $f0, %lo(D_80001720)($at)
/* 1BBBC 8001AFBC 44832000 */  mtc1       $v1, $f4
/* 1BBC0 8001AFC0 00000000 */  nop
/* 1BBC4 8001AFC4 46802121 */  cvt.d.w    $f4, $f4
/* 1BBC8 8001AFC8 46202101 */  sub.d      $f4, $f4, $f0
/* 1BBCC 8001AFCC 3C018000 */  lui        $at, %hi(D_80001700)
/* 1BBD0 8001AFD0 D4221700 */  ldc1       $f2, %lo(D_80001700)($at)
/* 1BBD4 8001AFD4 46222082 */  mul.d      $f2, $f4, $f2
/* 1BBD8 8001AFD8 3C018000 */  lui        $at, %hi(D_80001708)
/* 1BBDC 8001AFDC D4201708 */  ldc1       $f0, %lo(D_80001708)($at)
/* 1BBE0 8001AFE0 46202002 */  mul.d      $f0, $f4, $f0
/* 1BBE4 8001AFE4 46223181 */  sub.d      $f6, $f6, $f2
/* 1BBE8 8001AFE8 46203181 */  sub.d      $f6, $f6, $f0
/* 1BBEC 8001AFEC 46263102 */  mul.d      $f4, $f6, $f6
/* 1BBF0 8001AFF0 3C018000 */  lui        $at, %hi(D_800016F0)
/* 1BBF4 8001AFF4 D42016F0 */  ldc1       $f0, %lo(D_800016F0)($at)
/* 1BBF8 8001AFF8 46240002 */  mul.d      $f0, $f0, $f4
/* 1BBFC 8001AFFC 3C018000 */  lui        $at, %hi(D_800016E8)
/* 1BC00 8001B000 D42216E8 */  ldc1       $f2, %lo(D_800016E8)($at)
/* 1BC04 8001B004 46220000 */  add.d      $f0, $f0, $f2
/* 1BC08 8001B008 46240002 */  mul.d      $f0, $f0, $f4
/* 1BC0C 8001B00C 3C018000 */  lui        $at, %hi(D_800016E0)
/* 1BC10 8001B010 D42216E0 */  ldc1       $f2, %lo(D_800016E0)($at)
/* 1BC14 8001B014 46220000 */  add.d      $f0, $f0, $f2
/* 1BC18 8001B018 46240002 */  mul.d      $f0, $f0, $f4
/* 1BC1C 8001B01C 00000000 */  nop
/* 1BC20 8001B020 46243102 */  mul.d      $f4, $f6, $f4
/* 1BC24 8001B024 3C018000 */  lui        $at, %hi(D_800016D8)
/* 1BC28 8001B028 D42216D8 */  ldc1       $f2, %lo(D_800016D8)($at)
/* 1BC2C 8001B02C 46220000 */  add.d      $f0, $f0, $f2
/* 1BC30 8001B030 46202102 */  mul.d      $f4, $f4, $f0
/* 1BC34 8001B034 30620001 */  andi       $v0, $v1, 0x1
/* 1BC38 8001B038 14400003 */  bnez       $v0, .L8001B048
/* 1BC3C 8001B03C 46243000 */   add.d     $f0, $f6, $f4
/* 1BC40 8001B040 08006C1E */  j          .L8001B078
/* 1BC44 8001B044 46200020 */   cvt.s.d   $f0, $f0
.L8001B048:
/* 1BC48 8001B048 46200020 */  cvt.s.d    $f0, $f0
/* 1BC4C 8001B04C 08006C1E */  j          .L8001B078
/* 1BC50 8001B050 46000007 */   neg.s     $f0, $f0
.L8001B054:
/* 1BC54 8001B054 460C6032 */  c.eq.s     $f12, $f12
/* 1BC58 8001B058 00000000 */  nop
/* 1BC5C 8001B05C 45000004 */  bc1f       .L8001B070
/* 1BC60 8001B060 00000000 */   nop
/* 1BC64 8001B064 3C018000 */  lui        $at, %hi(D_80001710)
/* 1BC68 8001B068 08006C1E */  j          .L8001B078
/* 1BC6C 8001B06C C4201710 */   lwc1      $f0, %lo(D_80001710)($at)
.L8001B070:
/* 1BC70 8001B070 3C018000 */  lui        $at, %hi(D_80001730)
/* 1BC74 8001B074 C4201730 */  lwc1       $f0, %lo(D_80001730)($at)
.L8001B078:
/* 1BC78 8001B078 03E00008 */  jr         $ra
/* 1BC7C 8001B07C 00000000 */   nop

glabel func_8001B080
/* 1BC80 8001B080 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1BC84 8001B084 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 1BC88 8001B088 C7B80060 */  lwc1       $f24, 0x60($sp)
/* 1BC8C 8001B08C F7BE0048 */  sdc1       $f30, 0x48($sp)
/* 1BC90 8001B090 C7BE0064 */  lwc1       $f30, 0x64($sp)
/* 1BC94 8001B094 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 1BC98 8001B098 C7B60068 */  lwc1       $f22, 0x68($sp)
/* 1BC9C 8001B09C AFB10014 */  sw         $s1, 0x14($sp)
/* 1BCA0 8001B0A0 8FB1006C */  lw         $s1, 0x6C($sp)
/* 1BCA4 8001B0A4 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 1BCA8 8001B0A8 4485D000 */  mtc1       $a1, $f26
/* 1BCAC 8001B0AC F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1BCB0 8001B0B0 4486A000 */  mtc1       $a2, $f20
/* 1BCB4 8001B0B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1BCB8 8001B0B8 F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 1BCBC 8001B0BC 4487E000 */  mtc1       $a3, $f28
/* 1BCC0 8001B0C0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1BCC4 8001B0C4 0C006D10 */  jal        func_8001B440
/* 1BCC8 8001B0C8 00808021 */   addu      $s0, $a0, $zero
/* 1BCCC 8001B0CC 461AA001 */  sub.s      $f0, $f20, $f26
/* 1BCD0 8001B0D0 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 1BCD4 8001B0D4 44811000 */  mtc1       $at, $f2
/* 1BCD8 8001B0D8 00000000 */  nop
/* 1BCDC 8001B0DC 46001283 */  div.s      $f10, $f2, $f0
/* 1BCE0 8001B0E0 461CC181 */  sub.s      $f6, $f24, $f28
/* 1BCE4 8001B0E4 46061083 */  div.s      $f2, $f2, $f6
/* 1BCE8 8001B0E8 461EB201 */  sub.s      $f8, $f22, $f30
/* 1BCEC 8001B0EC 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* 1BCF0 8001B0F0 44812000 */  mtc1       $at, $f4
/* 1BCF4 8001B0F4 00000000 */  nop
/* 1BCF8 8001B0F8 46082103 */  div.s      $f4, $f4, $f8
/* 1BCFC 8001B0FC 461AA500 */  add.s      $f20, $f20, $f26
/* 1BD00 8001B100 4600A507 */  neg.s      $f20, $f20
/* 1BD04 8001B104 4600A503 */  div.s      $f20, $f20, $f0
/* 1BD08 8001B108 461CC600 */  add.s      $f24, $f24, $f28
/* 1BD0C 8001B10C 4600C607 */  neg.s      $f24, $f24
/* 1BD10 8001B110 4606C603 */  div.s      $f24, $f24, $f6
/* 1BD14 8001B114 461EB580 */  add.s      $f22, $f22, $f30
/* 1BD18 8001B118 4600B587 */  neg.s      $f22, $f22
/* 1BD1C 8001B11C 4608B583 */  div.s      $f22, $f22, $f8
/* 1BD20 8001B120 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1BD24 8001B124 44810000 */  mtc1       $at, $f0
/* 1BD28 8001B128 00002821 */  addu       $a1, $zero, $zero
/* 1BD2C 8001B12C E600003C */  swc1       $f0, 0x3C($s0)
/* 1BD30 8001B130 E60A0000 */  swc1       $f10, 0x0($s0)
/* 1BD34 8001B134 E6140030 */  swc1       $f20, 0x30($s0)
/* 1BD38 8001B138 E6020014 */  swc1       $f2, 0x14($s0)
/* 1BD3C 8001B13C E6040028 */  swc1       $f4, 0x28($s0)
/* 1BD40 8001B140 E6180034 */  swc1       $f24, 0x34($s0)
/* 1BD44 8001B144 E6160038 */  swc1       $f22, 0x38($s0)
.L8001B148:
/* 1BD48 8001B148 00002021 */  addu       $a0, $zero, $zero
/* 1BD4C 8001B14C 02001821 */  addu       $v1, $s0, $zero
.L8001B150:
/* 1BD50 8001B150 C4600000 */  lwc1       $f0, 0x0($v1)
/* 1BD54 8001B154 44916000 */  mtc1       $s1, $f12
/* 1BD58 8001B158 00000000 */  nop
/* 1BD5C 8001B15C 460C0002 */  mul.s      $f0, $f0, $f12
/* 1BD60 8001B160 24840001 */  addiu      $a0, $a0, 0x1
/* 1BD64 8001B164 28820004 */  slti       $v0, $a0, 0x4
/* 1BD68 8001B168 E4600000 */  swc1       $f0, 0x0($v1)
/* 1BD6C 8001B16C 1440FFF8 */  bnez       $v0, .L8001B150
/* 1BD70 8001B170 24630004 */   addiu     $v1, $v1, 0x4
/* 1BD74 8001B174 24A50001 */  addiu      $a1, $a1, 0x1
/* 1BD78 8001B178 28A20004 */  slti       $v0, $a1, 0x4
/* 1BD7C 8001B17C 1440FFF2 */  bnez       $v0, .L8001B148
/* 1BD80 8001B180 26100010 */   addiu     $s0, $s0, 0x10
/* 1BD84 8001B184 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1BD88 8001B188 8FB10014 */  lw         $s1, 0x14($sp)
/* 1BD8C 8001B18C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1BD90 8001B190 D7BE0048 */  ldc1       $f30, 0x48($sp)
/* 1BD94 8001B194 D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 1BD98 8001B198 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 1BD9C 8001B19C D7B80030 */  ldc1       $f24, 0x30($sp)
/* 1BDA0 8001B1A0 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 1BDA4 8001B1A4 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 1BDA8 8001B1A8 03E00008 */  jr         $ra
/* 1BDAC 8001B1AC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel guOrtho
/* 1BDB0 8001B1B0 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 1BDB4 8001B1B4 F7B60068 */  sdc1       $f22, 0x68($sp)
/* 1BDB8 8001B1B8 C7B600A0 */  lwc1       $f22, 0xA0($sp)
/* 1BDBC 8001B1BC F7BC0080 */  sdc1       $f28, 0x80($sp)
/* 1BDC0 8001B1C0 C7BC00A4 */  lwc1       $f28, 0xA4($sp)
/* 1BDC4 8001B1C4 F7B40060 */  sdc1       $f20, 0x60($sp)
/* 1BDC8 8001B1C8 C7B400A8 */  lwc1       $f20, 0xA8($sp)
/* 1BDCC 8001B1CC AFB10054 */  sw         $s1, 0x54($sp)
/* 1BDD0 8001B1D0 8FB100AC */  lw         $s1, 0xAC($sp)
/* 1BDD4 8001B1D4 F7BA0078 */  sdc1       $f26, 0x78($sp)
/* 1BDD8 8001B1D8 4485D000 */  mtc1       $a1, $f26
/* 1BDDC 8001B1DC F7B80070 */  sdc1       $f24, 0x70($sp)
/* 1BDE0 8001B1E0 4486C000 */  mtc1       $a2, $f24
/* 1BDE4 8001B1E4 AFB20058 */  sw         $s2, 0x58($sp)
/* 1BDE8 8001B1E8 00809021 */  addu       $s2, $a0, $zero
/* 1BDEC 8001B1EC AFB00050 */  sw         $s0, 0x50($sp)
/* 1BDF0 8001B1F0 27B00010 */  addiu      $s0, $sp, 0x10
/* 1BDF4 8001B1F4 F7BE0088 */  sdc1       $f30, 0x88($sp)
/* 1BDF8 8001B1F8 4487F000 */  mtc1       $a3, $f30
/* 1BDFC 8001B1FC AFBF005C */  sw         $ra, 0x5C($sp)
/* 1BE00 8001B200 0C006D10 */  jal        func_8001B440
/* 1BE04 8001B204 02002021 */   addu      $a0, $s0, $zero
/* 1BE08 8001B208 461AC001 */  sub.s      $f0, $f24, $f26
/* 1BE0C 8001B20C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 1BE10 8001B210 44811000 */  mtc1       $at, $f2
/* 1BE14 8001B214 00000000 */  nop
/* 1BE18 8001B218 46001283 */  div.s      $f10, $f2, $f0
/* 1BE1C 8001B21C 461EB181 */  sub.s      $f6, $f22, $f30
/* 1BE20 8001B220 46061083 */  div.s      $f2, $f2, $f6
/* 1BE24 8001B224 461CA201 */  sub.s      $f8, $f20, $f28
/* 1BE28 8001B228 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* 1BE2C 8001B22C 44812000 */  mtc1       $at, $f4
/* 1BE30 8001B230 00000000 */  nop
/* 1BE34 8001B234 46082103 */  div.s      $f4, $f4, $f8
/* 1BE38 8001B238 461AC600 */  add.s      $f24, $f24, $f26
/* 1BE3C 8001B23C 4600C607 */  neg.s      $f24, $f24
/* 1BE40 8001B240 4600C603 */  div.s      $f24, $f24, $f0
/* 1BE44 8001B244 461EB580 */  add.s      $f22, $f22, $f30
/* 1BE48 8001B248 4600B587 */  neg.s      $f22, $f22
/* 1BE4C 8001B24C 4606B583 */  div.s      $f22, $f22, $f6
/* 1BE50 8001B250 461CA500 */  add.s      $f20, $f20, $f28
/* 1BE54 8001B254 4600A507 */  neg.s      $f20, $f20
/* 1BE58 8001B258 4608A503 */  div.s      $f20, $f20, $f8
/* 1BE5C 8001B25C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1BE60 8001B260 44810000 */  mtc1       $at, $f0
/* 1BE64 8001B264 00002821 */  addu       $a1, $zero, $zero
/* 1BE68 8001B268 E7A0004C */  swc1       $f0, 0x4C($sp)
/* 1BE6C 8001B26C E7AA0010 */  swc1       $f10, 0x10($sp)
/* 1BE70 8001B270 E7B80040 */  swc1       $f24, 0x40($sp)
/* 1BE74 8001B274 E7A20024 */  swc1       $f2, 0x24($sp)
/* 1BE78 8001B278 E7A40038 */  swc1       $f4, 0x38($sp)
/* 1BE7C 8001B27C E7B60044 */  swc1       $f22, 0x44($sp)
/* 1BE80 8001B280 E7B40048 */  swc1       $f20, 0x48($sp)
.L8001B284:
/* 1BE84 8001B284 00002021 */  addu       $a0, $zero, $zero
/* 1BE88 8001B288 02001821 */  addu       $v1, $s0, $zero
.L8001B28C:
/* 1BE8C 8001B28C C4600000 */  lwc1       $f0, 0x0($v1)
/* 1BE90 8001B290 44916000 */  mtc1       $s1, $f12
/* 1BE94 8001B294 00000000 */  nop
/* 1BE98 8001B298 460C0002 */  mul.s      $f0, $f0, $f12
/* 1BE9C 8001B29C 24840001 */  addiu      $a0, $a0, 0x1
/* 1BEA0 8001B2A0 28820004 */  slti       $v0, $a0, 0x4
/* 1BEA4 8001B2A4 E4600000 */  swc1       $f0, 0x0($v1)
/* 1BEA8 8001B2A8 1440FFF8 */  bnez       $v0, .L8001B28C
/* 1BEAC 8001B2AC 24630004 */   addiu     $v1, $v1, 0x4
/* 1BEB0 8001B2B0 24A50001 */  addiu      $a1, $a1, 0x1
/* 1BEB4 8001B2B4 28A20004 */  slti       $v0, $a1, 0x4
/* 1BEB8 8001B2B8 1440FFF2 */  bnez       $v0, .L8001B284
/* 1BEBC 8001B2BC 26100010 */   addiu     $s0, $s0, 0x10
/* 1BEC0 8001B2C0 27A40010 */  addiu      $a0, $sp, 0x10
/* 1BEC4 8001B2C4 0C006CC0 */  jal        func_8001B300
/* 1BEC8 8001B2C8 02402821 */   addu      $a1, $s2, $zero
/* 1BECC 8001B2CC 8FBF005C */  lw         $ra, 0x5C($sp)
/* 1BED0 8001B2D0 8FB20058 */  lw         $s2, 0x58($sp)
/* 1BED4 8001B2D4 8FB10054 */  lw         $s1, 0x54($sp)
/* 1BED8 8001B2D8 8FB00050 */  lw         $s0, 0x50($sp)
/* 1BEDC 8001B2DC D7BE0088 */  ldc1       $f30, 0x88($sp)
/* 1BEE0 8001B2E0 D7BC0080 */  ldc1       $f28, 0x80($sp)
/* 1BEE4 8001B2E4 D7BA0078 */  ldc1       $f26, 0x78($sp)
/* 1BEE8 8001B2E8 D7B80070 */  ldc1       $f24, 0x70($sp)
/* 1BEEC 8001B2EC D7B60068 */  ldc1       $f22, 0x68($sp)
/* 1BEF0 8001B2F0 D7B40060 */  ldc1       $f20, 0x60($sp)
/* 1BEF4 8001B2F4 03E00008 */  jr         $ra
/* 1BEF8 8001B2F8 27BD0090 */   addiu     $sp, $sp, 0x90
/* 1BEFC 8001B2FC 00000000 */  nop
