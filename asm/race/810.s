.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80122BD0
/* D8F90 80122BD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D8F94 80122BD4 AFB00010 */  sw         $s0, 0x10($sp)
/* D8F98 80122BD8 00808021 */  addu       $s0, $a0, $zero
/* D8F9C 80122BDC 3C02800D */  lui        $v0, %hi(D_race_800CE7B0)
/* D8FA0 80122BE0 2442E7B0 */  addiu      $v0, $v0, %lo(D_race_800CE7B0)
/* D8FA4 80122BE4 26040008 */  addiu      $a0, $s0, 0x8
/* D8FA8 80122BE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D8FAC 80122BEC 0C0164A4 */  jal        func_80059290
/* D8FB0 80122BF0 AE020000 */   sw        $v0, 0x0($s0)
/* D8FB4 80122BF4 0C048B18 */  jal        func_race_80122C60
/* D8FB8 80122BF8 02002021 */   addu      $a0, $s0, $zero
/* D8FBC 80122BFC 02001021 */  addu       $v0, $s0, $zero
/* D8FC0 80122C00 8FBF0014 */  lw         $ra, 0x14($sp)
/* D8FC4 80122C04 8FB00010 */  lw         $s0, 0x10($sp)
/* D8FC8 80122C08 03E00008 */  jr         $ra
/* D8FCC 80122C0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80122C10
/* D8FD0 80122C10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D8FD4 80122C14 AFB10014 */  sw         $s1, 0x14($sp)
/* D8FD8 80122C18 00808821 */  addu       $s1, $a0, $zero
/* D8FDC 80122C1C AFB00010 */  sw         $s0, 0x10($sp)
/* D8FE0 80122C20 00A08021 */  addu       $s0, $a1, $zero
/* D8FE4 80122C24 3C02800D */  lui        $v0, %hi(D_race_800CE7B0)
/* D8FE8 80122C28 2442E7B0 */  addiu      $v0, $v0, %lo(D_race_800CE7B0)
/* D8FEC 80122C2C AFBF0018 */  sw         $ra, 0x18($sp)
/* D8FF0 80122C30 0C048BA5 */  jal        func_race_80122E94
/* D8FF4 80122C34 AE220000 */   sw        $v0, 0x0($s1)
/* D8FF8 80122C38 32100001 */  andi       $s0, $s0, 0x1
/* D8FFC 80122C3C 12000003 */  beqz       $s0, .Lrace_80122C4C
/* D9000 80122C40 00000000 */   nop
/* D9004 80122C44 0C01FB5C */  jal        func_8007ED70
/* D9008 80122C48 02202021 */   addu      $a0, $s1, $zero
.Lrace_80122C4C:
/* D900C 80122C4C 8FBF0018 */  lw         $ra, 0x18($sp)
/* D9010 80122C50 8FB10014 */  lw         $s1, 0x14($sp)
/* D9014 80122C54 8FB00010 */  lw         $s0, 0x10($sp)
/* D9018 80122C58 03E00008 */  jr         $ra
/* D901C 80122C5C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80122C60
/* D9020 80122C60 3C01800D */  lui        $at, %hi(D_race_800CE780)
/* D9024 80122C64 C420E780 */  lwc1       $f0, %lo(D_race_800CE780)($at)
/* D9028 80122C68 24020004 */  addiu      $v0, $zero, 0x4
/* D902C 80122C6C AC82003C */  sw         $v0, 0x3C($a0)
/* D9030 80122C70 24020001 */  addiu      $v0, $zero, 0x1
/* D9034 80122C74 AC820040 */  sw         $v0, 0x40($a0)
/* D9038 80122C78 24020BB8 */  addiu      $v0, $zero, 0xBB8
/* D903C 80122C7C AC800034 */  sw         $zero, 0x34($a0)
/* D9040 80122C80 AC800038 */  sw         $zero, 0x38($a0)
/* D9044 80122C84 AC800004 */  sw         $zero, 0x4($a0)
/* D9048 80122C88 AC800044 */  sw         $zero, 0x44($a0)
/* D904C 80122C8C AC80004C */  sw         $zero, 0x4C($a0)
/* D9050 80122C90 AC820048 */  sw         $v0, 0x48($a0)
/* D9054 80122C94 AC800050 */  sw         $zero, 0x50($a0)
/* D9058 80122C98 03E00008 */  jr         $ra
/* D905C 80122C9C E4800030 */   swc1      $f0, 0x30($a0)

glabel func_race_80122CA0
/* D9060 80122CA0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D9064 80122CA4 AFB40038 */  sw         $s4, 0x38($sp)
/* D9068 80122CA8 8FB40058 */  lw         $s4, 0x58($sp)
/* D906C 80122CAC AFB1002C */  sw         $s1, 0x2C($sp)
/* D9070 80122CB0 00808821 */  addu       $s1, $a0, $zero
/* D9074 80122CB4 AFB30034 */  sw         $s3, 0x34($sp)
/* D9078 80122CB8 00A09821 */  addu       $s3, $a1, $zero
/* D907C 80122CBC AFB5003C */  sw         $s5, 0x3C($sp)
/* D9080 80122CC0 00C0A821 */  addu       $s5, $a2, $zero
/* D9084 80122CC4 AFB20030 */  sw         $s2, 0x30($sp)
/* D9088 80122CC8 AFBF0044 */  sw         $ra, 0x44($sp)
/* D908C 80122CCC AFB60040 */  sw         $s6, 0x40($sp)
/* D9090 80122CD0 AFB00028 */  sw         $s0, 0x28($sp)
/* D9094 80122CD4 8E220004 */  lw         $v0, 0x4($s1)
/* D9098 80122CD8 8FB6005C */  lw         $s6, 0x5C($sp)
/* D909C 80122CDC 10400003 */  beqz       $v0, .Lrace_80122CEC
/* D90A0 80122CE0 00E09021 */   addu      $s2, $a3, $zero
/* D90A4 80122CE4 0C048BA5 */  jal        func_race_80122E94
/* D90A8 80122CE8 00000000 */   nop
.Lrace_80122CEC:
/* D90AC 80122CEC 26300008 */  addiu      $s0, $s1, 0x8
/* D90B0 80122CF0 02002021 */  addu       $a0, $s0, $zero
/* D90B4 80122CF4 02402821 */  addu       $a1, $s2, $zero
/* D90B8 80122CF8 AE330004 */  sw         $s3, 0x4($s1)
/* D90BC 80122CFC AE350044 */  sw         $s5, 0x44($s1)
/* D90C0 80122D00 AE340034 */  sw         $s4, 0x34($s1)
/* D90C4 80122D04 0C01659D */  jal        func_80059674
/* D90C8 80122D08 AE360038 */   sw        $s6, 0x38($s1)
/* D90CC 80122D0C 3C054000 */  lui        $a1, (0x40000000 >> 16)
/* D90D0 80122D10 0C0165E8 */  jal        func_800597A0
/* D90D4 80122D14 02002021 */   addu      $a0, $s0, $zero
/* D90D8 80122D18 24020001 */  addiu      $v0, $zero, 0x1
/* D90DC 80122D1C AE22003C */  sw         $v0, 0x3C($s1)
/* D90E0 80122D20 24020BB8 */  addiu      $v0, $zero, 0xBB8
/* D90E4 80122D24 AE22004C */  sw         $v0, 0x4C($s1)
/* D90E8 80122D28 8E8200A8 */  lw         $v0, 0xA8($s4)
/* D90EC 80122D2C 8C42002C */  lw         $v0, 0x2C($v0)
/* D90F0 80122D30 8C430010 */  lw         $v1, 0x10($v0)
/* D90F4 80122D34 8C480014 */  lw         $t0, 0x14($v0)
/* D90F8 80122D38 8C490018 */  lw         $t1, 0x18($v0)
/* D90FC 80122D3C AFA30010 */  sw         $v1, 0x10($sp)
/* D9100 80122D40 AFA80014 */  sw         $t0, 0x14($sp)
/* D9104 80122D44 AFA90018 */  sw         $t1, 0x18($sp)
/* D9108 80122D48 C7A40010 */  lwc1       $f4, 0x10($sp)
/* D910C 80122D4C 46042102 */  mul.s      $f4, $f4, $f4
/* D9110 80122D50 27B00010 */  addiu      $s0, $sp, 0x10
/* D9114 80122D54 C6020004 */  lwc1       $f2, 0x4($s0)
/* D9118 80122D58 46021082 */  mul.s      $f2, $f2, $f2
/* D911C 80122D5C C6000008 */  lwc1       $f0, 0x8($s0)
/* D9120 80122D60 46000002 */  mul.s      $f0, $f0, $f0
/* D9124 80122D64 46022100 */  add.s      $f4, $f4, $f2
/* D9128 80122D68 46002300 */  add.s      $f12, $f4, $f0
/* D912C 80122D6C C440001C */  lwc1       $f0, 0x1C($v0)
/* D9130 80122D70 E7A00020 */  swc1       $f0, 0x20($sp)
/* D9134 80122D74 46006004 */  sqrt.s     $f0, $f12
/* D9138 80122D78 46000032 */  c.eq.s     $f0, $f0
/* D913C 80122D7C 00000000 */  nop
/* D9140 80122D80 45010003 */  bc1t       .Lrace_80122D90
/* D9144 80122D84 00000000 */   nop
/* D9148 80122D88 0C006BC8 */  jal        sqrt
/* D914C 80122D8C 00000000 */   nop
.Lrace_80122D90:
/* D9150 80122D90 C7A20020 */  lwc1       $f2, 0x20($sp)
/* D9154 80122D94 8E820078 */  lw         $v0, 0x78($s4)
/* D9158 80122D98 46001080 */  add.s      $f2, $f2, $f0
/* D915C 80122D9C C4400034 */  lwc1       $f0, 0x34($v0)
/* D9160 80122DA0 46020102 */  mul.s      $f4, $f0, $f2
/* D9164 80122DA4 3C118013 */  lui        $s1, %hi(D_race_80132480)
/* D9168 80122DA8 C6202480 */  lwc1       $f0, %lo(D_race_80132480)($s1)
/* D916C 80122DAC E7A20020 */  swc1       $f2, 0x20($sp)
/* D9170 80122DB0 4604003C */  c.lt.s     $f0, $f4
/* D9174 80122DB4 00000000 */  nop
/* D9178 80122DB8 45000002 */  bc1f       .Lrace_80122DC4
/* D917C 80122DBC E7A40020 */   swc1      $f4, 0x20($sp)
/* D9180 80122DC0 E6242480 */  swc1       $f4, %lo(D_race_80132480)($s1)
.Lrace_80122DC4:
/* D9184 80122DC4 8EC200A8 */  lw         $v0, 0xA8($s6)
/* D9188 80122DC8 8C42002C */  lw         $v0, 0x2C($v0)
/* D918C 80122DCC 8C430010 */  lw         $v1, 0x10($v0)
/* D9190 80122DD0 8C480014 */  lw         $t0, 0x14($v0)
/* D9194 80122DD4 8C490018 */  lw         $t1, 0x18($v0)
/* D9198 80122DD8 AFA30010 */  sw         $v1, 0x10($sp)
/* D919C 80122DDC AFA80014 */  sw         $t0, 0x14($sp)
/* D91A0 80122DE0 AFA90018 */  sw         $t1, 0x18($sp)
/* D91A4 80122DE4 C7A40010 */  lwc1       $f4, 0x10($sp)
/* D91A8 80122DE8 46042102 */  mul.s      $f4, $f4, $f4
/* D91AC 80122DEC C6000004 */  lwc1       $f0, 0x4($s0)
/* D91B0 80122DF0 46000002 */  mul.s      $f0, $f0, $f0
/* D91B4 80122DF4 C6020008 */  lwc1       $f2, 0x8($s0)
/* D91B8 80122DF8 46021082 */  mul.s      $f2, $f2, $f2
/* D91BC 80122DFC 46002100 */  add.s      $f4, $f4, $f0
/* D91C0 80122E00 C440001C */  lwc1       $f0, 0x1C($v0)
/* D91C4 80122E04 46022300 */  add.s      $f12, $f4, $f2
/* D91C8 80122E08 E7A00020 */  swc1       $f0, 0x20($sp)
/* D91CC 80122E0C 46006004 */  sqrt.s     $f0, $f12
/* D91D0 80122E10 46000032 */  c.eq.s     $f0, $f0
/* D91D4 80122E14 00000000 */  nop
/* D91D8 80122E18 45010003 */  bc1t       .Lrace_80122E28
/* D91DC 80122E1C 00000000 */   nop
/* D91E0 80122E20 0C006BC8 */  jal        sqrt
/* D91E4 80122E24 00000000 */   nop
.Lrace_80122E28:
/* D91E8 80122E28 C7A20020 */  lwc1       $f2, 0x20($sp)
/* D91EC 80122E2C 8EC20078 */  lw         $v0, 0x78($s6)
/* D91F0 80122E30 46001080 */  add.s      $f2, $f2, $f0
/* D91F4 80122E34 C4400034 */  lwc1       $f0, 0x34($v0)
/* D91F8 80122E38 46020102 */  mul.s      $f4, $f0, $f2
/* D91FC 80122E3C C6202480 */  lwc1       $f0, %lo(D_race_80132480)($s1)
/* D9200 80122E40 E7A20020 */  swc1       $f2, 0x20($sp)
/* D9204 80122E44 4604003C */  c.lt.s     $f0, $f4
/* D9208 80122E48 00000000 */  nop
/* D920C 80122E4C 45000002 */  bc1f       .Lrace_80122E58
/* D9210 80122E50 E7A40020 */   swc1      $f4, 0x20($sp)
/* D9214 80122E54 E6242480 */  swc1       $f4, %lo(D_race_80132480)($s1)
.Lrace_80122E58:
/* D9218 80122E58 8FBF0044 */  lw         $ra, 0x44($sp)
/* D921C 80122E5C 8FB60040 */  lw         $s6, 0x40($sp)
/* D9220 80122E60 8FB5003C */  lw         $s5, 0x3C($sp)
/* D9224 80122E64 8FB40038 */  lw         $s4, 0x38($sp)
/* D9228 80122E68 8FB30034 */  lw         $s3, 0x34($sp)
/* D922C 80122E6C 8FB20030 */  lw         $s2, 0x30($sp)
/* D9230 80122E70 8FB1002C */  lw         $s1, 0x2C($sp)
/* D9234 80122E74 8FB00028 */  lw         $s0, 0x28($sp)
/* D9238 80122E78 03E00008 */  jr         $ra
/* D923C 80122E7C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_80122E80
/* D9240 80122E80 24020001 */  addiu      $v0, $zero, 0x1
/* D9244 80122E84 AC82003C */  sw         $v0, 0x3C($a0)
/* D9248 80122E88 24020BB8 */  addiu      $v0, $zero, 0xBB8
/* D924C 80122E8C 03E00008 */  jr         $ra
/* D9250 80122E90 AC82004C */   sw        $v0, 0x4C($a0)

glabel func_race_80122E94
/* D9254 80122E94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D9258 80122E98 AFBF0010 */  sw         $ra, 0x10($sp)
/* D925C 80122E9C 0C048B18 */  jal        func_race_80122C60
/* D9260 80122EA0 00000000 */   nop
/* D9264 80122EA4 8FBF0010 */  lw         $ra, 0x10($sp)
/* D9268 80122EA8 03E00008 */  jr         $ra
/* D926C 80122EAC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80122EB0
/* D9270 80122EB0 8C83003C */  lw         $v1, 0x3C($a0)
/* D9274 80122EB4 24020004 */  addiu      $v0, $zero, 0x4
/* D9278 80122EB8 10620036 */  beq        $v1, $v0, .Lrace_80122F94
/* D927C 80122EBC 00000000 */   nop
/* D9280 80122EC0 8C82004C */  lw         $v0, 0x4C($a0)
/* D9284 80122EC4 00452821 */  addu       $a1, $v0, $a1
/* D9288 80122EC8 24020002 */  addiu      $v0, $zero, 0x2
/* D928C 80122ECC 10620011 */  beq        $v1, $v0, .Lrace_80122F14
/* D9290 80122ED0 AC85004C */   sw        $a1, 0x4C($a0)
/* D9294 80122ED4 24020003 */  addiu      $v0, $zero, 0x3
/* D9298 80122ED8 14620023 */  bne        $v1, $v0, .Lrace_80122F68
/* D929C 80122EDC 2CA200FB */   sltiu     $v0, $a1, 0xFB
/* D92A0 80122EE0 10400021 */  beqz       $v0, .Lrace_80122F68
/* D92A4 80122EE4 240200FA */   addiu     $v0, $zero, 0xFA
/* D92A8 80122EE8 00451023 */  subu       $v0, $v0, $a1
/* D92AC 80122EEC 3C01800D */  lui        $at, %hi(D_race_800CE784)
/* D92B0 80122EF0 C422E784 */  lwc1       $f2, %lo(D_race_800CE784)($at)
/* D92B4 80122EF4 44820000 */  mtc1       $v0, $f0
/* D92B8 80122EF8 46800020 */  cvt.s.w    $f0, $f0
/* D92BC 80122EFC 46020002 */  mul.s      $f0, $f0, $f2
/* D92C0 80122F00 3C01800D */  lui        $at, %hi(D_race_800CE788)
/* D92C4 80122F04 C422E788 */  lwc1       $f2, %lo(D_race_800CE788)($at)
/* D92C8 80122F08 46020002 */  mul.s      $f0, $f0, $f2
/* D92CC 80122F0C 08048BDA */  j          .Lrace_80122F68
/* D92D0 80122F10 E4800030 */   swc1      $f0, 0x30($a0)
.Lrace_80122F14:
/* D92D4 80122F14 2CA20190 */  sltiu      $v0, $a1, 0x190
/* D92D8 80122F18 10400008 */  beqz       $v0, .Lrace_80122F3C
/* D92DC 80122F1C 2CA201F4 */   sltiu     $v0, $a1, 0x1F4
/* D92E0 80122F20 3C01800D */  lui        $at, %hi(D_race_800CE78C)
/* D92E4 80122F24 C422E78C */  lwc1       $f2, %lo(D_race_800CE78C)($at)
/* D92E8 80122F28 44850000 */  mtc1       $a1, $f0
/* D92EC 80122F2C 46800020 */  cvt.s.w    $f0, $f0
/* D92F0 80122F30 46020002 */  mul.s      $f0, $f0, $f2
/* D92F4 80122F34 08048BDA */  j          .Lrace_80122F68
/* D92F8 80122F38 E4800030 */   swc1      $f0, 0x30($a0)
.Lrace_80122F3C:
/* D92FC 80122F3C 1040000A */  beqz       $v0, .Lrace_80122F68
/* D9300 80122F40 24A2FE70 */   addiu     $v0, $a1, -0x190
/* D9304 80122F44 3C01800D */  lui        $at, %hi(D_race_800CE790)
/* D9308 80122F48 C420E790 */  lwc1       $f0, %lo(D_race_800CE790)($at)
/* D930C 80122F4C 44821000 */  mtc1       $v0, $f2
/* D9310 80122F50 468010A0 */  cvt.s.w    $f2, $f2
/* D9314 80122F54 46001082 */  mul.s      $f2, $f2, $f0
/* D9318 80122F58 3C01800D */  lui        $at, %hi(D_race_800CE794)
/* D931C 80122F5C C420E794 */  lwc1       $f0, %lo(D_race_800CE794)($at)
/* D9320 80122F60 46020001 */  sub.s      $f0, $f0, $f2
/* D9324 80122F64 E4800030 */  swc1       $f0, 0x30($a0)
.Lrace_80122F68:
/* D9328 80122F68 8C830050 */  lw         $v1, 0x50($a0)
/* D932C 80122F6C 30620002 */  andi       $v0, $v1, 0x2
/* D9330 80122F70 10400006 */  beqz       $v0, .Lrace_80122F8C
/* D9334 80122F74 2402FFFB */   addiu     $v0, $zero, -0x5
/* D9338 80122F78 2402FFFD */  addiu      $v0, $zero, -0x3
/* D933C 80122F7C 00621024 */  and        $v0, $v1, $v0
/* D9340 80122F80 34420004 */  ori        $v0, $v0, 0x4
/* D9344 80122F84 03E00008 */  jr         $ra
/* D9348 80122F88 AC820050 */   sw        $v0, 0x50($a0)
.Lrace_80122F8C:
/* D934C 80122F8C 00621024 */  and        $v0, $v1, $v0
/* D9350 80122F90 AC820050 */  sw         $v0, 0x50($a0)
.Lrace_80122F94:
/* D9354 80122F94 03E00008 */  jr         $ra
/* D9358 80122F98 00000000 */   nop

glabel func_race_80122F9C
/* D935C 80122F9C 10A00005 */  beqz       $a1, .Lrace_80122FB4
/* D9360 80122FA0 00000000 */   nop
/* D9364 80122FA4 3C01800D */  lui        $at, %hi(D_race_800CE798)
/* D9368 80122FA8 C420E798 */  lwc1       $f0, %lo(D_race_800CE798)($at)
/* D936C 80122FAC 03E00008 */  jr         $ra
/* D9370 80122FB0 E4800030 */   swc1      $f0, 0x30($a0)
.Lrace_80122FB4:
/* D9374 80122FB4 03E00008 */  jr         $ra
/* D9378 80122FB8 AC800030 */   sw        $zero, 0x30($a0)

glabel func_race_80122FBC
/* D937C 80122FBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D9380 80122FC0 00803021 */  addu       $a2, $a0, $zero
/* D9384 80122FC4 AFBF0010 */  sw         $ra, 0x10($sp)
/* D9388 80122FC8 8CC20050 */  lw         $v0, 0x50($a2)
/* D938C 80122FCC 8CC3003C */  lw         $v1, 0x3C($a2)
/* D9390 80122FD0 34440002 */  ori        $a0, $v0, 0x2
/* D9394 80122FD4 14600010 */  bnez       $v1, .Lrace_80123018
/* D9398 80122FD8 ACC40050 */   sw        $a0, 0x50($a2)
/* D939C 80122FDC 8CA50014 */  lw         $a1, 0x14($a1)
/* D93A0 80122FE0 8CA20D04 */  lw         $v0, 0xD04($a1)
/* D93A4 80122FE4 30420010 */  andi       $v0, $v0, 0x10
/* D93A8 80122FE8 1440000B */  bnez       $v0, .Lrace_80123018
/* D93AC 80122FEC 30820004 */   andi      $v0, $a0, 0x4
/* D93B0 80122FF0 10400004 */  beqz       $v0, .Lrace_80123004
/* D93B4 80122FF4 00000000 */   nop
/* D93B8 80122FF8 8CA20CCC */  lw         $v0, 0xCCC($a1)
/* D93BC 80122FFC 14400006 */  bnez       $v0, .Lrace_80123018
/* D93C0 80123000 00000000 */   nop
.Lrace_80123004:
/* D93C4 80123004 8CC20000 */  lw         $v0, 0x0($a2)
/* D93C8 80123008 84440010 */  lh         $a0, 0x10($v0)
/* D93CC 8012300C 8C420014 */  lw         $v0, 0x14($v0)
/* D93D0 80123010 0040F809 */  jalr       $v0
/* D93D4 80123014 00C42021 */   addu      $a0, $a2, $a0
.Lrace_80123018:
/* D93D8 80123018 8FBF0010 */  lw         $ra, 0x10($sp)
/* D93DC 8012301C 03E00008 */  jr         $ra
/* D93E0 80123020 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80123024
/* D93E4 80123024 8C83003C */  lw         $v1, 0x3C($a0)
/* D93E8 80123028 24020004 */  addiu      $v0, $zero, 0x4
/* D93EC 8012302C 14620003 */  bne        $v1, $v0, .Lrace_8012303C
/* D93F0 80123030 00000000 */   nop
/* D93F4 80123034 AC80003C */  sw         $zero, 0x3C($a0)
/* D93F8 80123038 AC80004C */  sw         $zero, 0x4C($a0)
.Lrace_8012303C:
/* D93FC 8012303C 03E00008 */  jr         $ra
/* D9400 80123040 00000000 */   nop

glabel func_race_80123044
/* D9404 80123044 8C82003C */  lw         $v0, 0x3C($a0)
/* D9408 80123048 24030004 */  addiu      $v1, $zero, 0x4
/* D940C 8012304C 10430003 */  beq        $v0, $v1, .Lrace_8012305C
/* D9410 80123050 00000000 */   nop
/* D9414 80123054 AC83003C */  sw         $v1, 0x3C($a0)
/* D9418 80123058 AC80004C */  sw         $zero, 0x4C($a0)
.Lrace_8012305C:
/* D941C 8012305C 03E00008 */  jr         $ra
/* D9420 80123060 00000000 */   nop

glabel func_race_80123064
/* D9424 80123064 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D9428 80123068 AFB00010 */  sw         $s0, 0x10($sp)
/* D942C 8012306C 00808021 */  addu       $s0, $a0, $zero
/* D9430 80123070 AFB10014 */  sw         $s1, 0x14($sp)
/* D9434 80123074 AFBF0018 */  sw         $ra, 0x18($sp)
/* D9438 80123078 8E03003C */  lw         $v1, 0x3C($s0)
/* D943C 8012307C 24020004 */  addiu      $v0, $zero, 0x4
/* D9440 80123080 1062001E */  beq        $v1, $v0, .Lrace_801230FC
/* D9444 80123084 00A08821 */   addu      $s1, $a1, $zero
/* D9448 80123088 8E020050 */  lw         $v0, 0x50($s0)
/* D944C 8012308C 2403FFF7 */  addiu      $v1, $zero, -0x9
/* D9450 80123090 00431024 */  and        $v0, $v0, $v1
/* D9454 80123094 8E03003C */  lw         $v1, 0x3C($s0)
/* D9458 80123098 AE020050 */  sw         $v0, 0x50($s0)
/* D945C 8012309C 24020002 */  addiu      $v0, $zero, 0x2
/* D9460 801230A0 50620006 */  beql       $v1, $v0, .Lrace_801230BC
/* D9464 801230A4 02002021 */   addu      $a0, $s0, $zero
/* D9468 801230A8 10600003 */  beqz       $v1, .Lrace_801230B8
/* D946C 801230AC 24020003 */   addiu     $v0, $zero, 0x3
/* D9470 801230B0 14620012 */  bne        $v1, $v0, .Lrace_801230FC
/* D9474 801230B4 00000000 */   nop
.Lrace_801230B8:
/* D9478 801230B8 02002021 */  addu       $a0, $s0, $zero
.Lrace_801230BC:
/* D947C 801230BC 0C048C44 */  jal        func_race_80123110
/* D9480 801230C0 02202821 */   addu      $a1, $s1, $zero
/* D9484 801230C4 1040000D */  beqz       $v0, .Lrace_801230FC
/* D9488 801230C8 02202821 */   addu      $a1, $s1, $zero
/* D948C 801230CC 8E020034 */  lw         $v0, 0x34($s0)
/* D9490 801230D0 3C01800D */  lui        $at, %hi(D_race_800CE79C)
/* D9494 801230D4 C420E79C */  lwc1       $f0, %lo(D_race_800CE79C)($at)
/* D9498 801230D8 C6020030 */  lwc1       $f2, 0x30($s0)
/* D949C 801230DC E440000C */  swc1       $f0, 0xC($v0)
/* D94A0 801230E0 E4420058 */  swc1       $f2, 0x58($v0)
/* D94A4 801230E4 8E030034 */  lw         $v1, 0x34($s0)
/* D94A8 801230E8 8C620024 */  lw         $v0, 0x24($v1)
/* D94AC 801230EC 84440040 */  lh         $a0, 0x40($v0)
/* D94B0 801230F0 8C420044 */  lw         $v0, 0x44($v0)
/* D94B4 801230F4 0040F809 */  jalr       $v0
/* D94B8 801230F8 00642021 */   addu      $a0, $v1, $a0
.Lrace_801230FC:
/* D94BC 801230FC 8FBF0018 */  lw         $ra, 0x18($sp)
/* D94C0 80123100 8FB10014 */  lw         $s1, 0x14($sp)
/* D94C4 80123104 8FB00010 */  lw         $s0, 0x10($sp)
/* D94C8 80123108 03E00008 */  jr         $ra
/* D94CC 8012310C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80123110
/* D94D0 80123110 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D94D4 80123114 AFB20028 */  sw         $s2, 0x28($sp)
/* D94D8 80123118 00809021 */  addu       $s2, $a0, $zero
/* D94DC 8012311C AFB00020 */  sw         $s0, 0x20($sp)
/* D94E0 80123120 00A08021 */  addu       $s0, $a1, $zero
/* D94E4 80123124 26440008 */  addiu      $a0, $s2, 0x8
/* D94E8 80123128 AFBF002C */  sw         $ra, 0x2C($sp)
/* D94EC 8012312C AFB10024 */  sw         $s1, 0x24($sp)
/* D94F0 80123130 F7B40030 */  sdc1       $f20, 0x30($sp)
/* D94F4 80123134 0C016596 */  jal        func_80059658
/* D94F8 80123138 27A50010 */   addiu     $a1, $sp, 0x10
/* D94FC 8012313C C6040048 */  lwc1       $f4, 0x48($s0)
/* D9500 80123140 C7A00010 */  lwc1       $f0, 0x10($sp)
/* D9504 80123144 46002101 */  sub.s      $f4, $f4, $f0
/* D9508 80123148 26100048 */  addiu      $s0, $s0, 0x48
/* D950C 8012314C 46042102 */  mul.s      $f4, $f4, $f4
/* D9510 80123150 27B10010 */  addiu      $s1, $sp, 0x10
/* D9514 80123154 C6060004 */  lwc1       $f6, 0x4($s0)
/* D9518 80123158 C6200004 */  lwc1       $f0, 0x4($s1)
/* D951C 8012315C 46003181 */  sub.s      $f6, $f6, $f0
/* D9520 80123160 46063182 */  mul.s      $f6, $f6, $f6
/* D9524 80123164 C6220008 */  lwc1       $f2, 0x8($s1)
/* D9528 80123168 C6000008 */  lwc1       $f0, 0x8($s0)
/* D952C 8012316C 46020001 */  sub.s      $f0, $f0, $f2
/* D9530 80123170 46000002 */  mul.s      $f0, $f0, $f0
/* D9534 80123174 46062100 */  add.s      $f4, $f4, $f6
/* D9538 80123178 46002100 */  add.s      $f4, $f4, $f0
/* D953C 8012317C 02002021 */  addu       $a0, $s0, $zero
/* D9540 80123180 3C01800D */  lui        $at, %hi(D_race_800CE7A0)
/* D9544 80123184 C420E7A0 */  lwc1       $f0, %lo(D_race_800CE7A0)($at)
/* D9548 80123188 46002506 */  mov.s      $f20, $f4
/* D954C 8012318C 4604003E */  c.le.s     $f0, $f4
/* D9550 80123190 00000000 */  nop
/* D9554 80123194 45010018 */  bc1t       .Lrace_801231F8
/* D9558 80123198 00001021 */   addu      $v0, $zero, $zero
/* D955C 8012319C 3C028013 */  lui        $v0, %hi(D_race_80132480)
/* D9560 801231A0 8C462480 */  lw         $a2, %lo(D_race_80132480)($v0)
/* D9564 801231A4 0C017F80 */  jal        func_8005FE00
/* D9568 801231A8 02202821 */   addu      $a1, $s1, $zero
/* D956C 801231AC 10400012 */  beqz       $v0, .Lrace_801231F8
/* D9570 801231B0 00001021 */   addu      $v0, $zero, $zero
/* D9574 801231B4 3C01800D */  lui        $at, %hi(D_race_800CE7A4)
/* D9578 801231B8 C420E7A4 */  lwc1       $f0, %lo(D_race_800CE7A4)($at)
/* D957C 801231BC 4600A03C */  c.lt.s     $f20, $f0
/* D9580 801231C0 00000000 */  nop
/* D9584 801231C4 45000004 */  bc1f       .Lrace_801231D8
/* D9588 801231C8 00000000 */   nop
/* D958C 801231CC 8E420050 */  lw         $v0, 0x50($s2)
/* D9590 801231D0 34420008 */  ori        $v0, $v0, 0x8
/* D9594 801231D4 AE420050 */  sw         $v0, 0x50($s2)
.Lrace_801231D8:
/* D9598 801231D8 8E430034 */  lw         $v1, 0x34($s2)
/* D959C 801231DC 8C620024 */  lw         $v0, 0x24($v1)
/* D95A0 801231E0 02202821 */  addu       $a1, $s1, $zero
/* D95A4 801231E4 84440018 */  lh         $a0, 0x18($v0)
/* D95A8 801231E8 8C42001C */  lw         $v0, 0x1C($v0)
/* D95AC 801231EC 0040F809 */  jalr       $v0
/* D95B0 801231F0 00642021 */   addu      $a0, $v1, $a0
/* D95B4 801231F4 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_801231F8:
/* D95B8 801231F8 8FBF002C */  lw         $ra, 0x2C($sp)
/* D95BC 801231FC 8FB20028 */  lw         $s2, 0x28($sp)
/* D95C0 80123200 8FB10024 */  lw         $s1, 0x24($sp)
/* D95C4 80123204 8FB00020 */  lw         $s0, 0x20($sp)
/* D95C8 80123208 D7B40030 */  ldc1       $f20, 0x30($sp)
/* D95CC 8012320C 03E00008 */  jr         $ra
/* D95D0 80123210 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_80123214
/* D95D4 80123214 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D95D8 80123218 AFB00020 */  sw         $s0, 0x20($sp)
/* D95DC 8012321C 00808021 */  addu       $s0, $a0, $zero
/* D95E0 80123220 AFB10024 */  sw         $s1, 0x24($sp)
/* D95E4 80123224 AFBF0028 */  sw         $ra, 0x28($sp)
/* D95E8 80123228 8E03003C */  lw         $v1, 0x3C($s0)
/* D95EC 8012322C 24020004 */  addiu      $v0, $zero, 0x4
/* D95F0 80123230 10620022 */  beq        $v1, $v0, .Lrace_801232BC
/* D95F4 80123234 00A08821 */   addu      $s1, $a1, $zero
/* D95F8 80123238 8E020050 */  lw         $v0, 0x50($s0)
/* D95FC 8012323C 30420008 */  andi       $v0, $v0, 0x8
/* D9600 80123240 1040001E */  beqz       $v0, .Lrace_801232BC
/* D9604 80123244 24020002 */   addiu     $v0, $zero, 0x2
/* D9608 80123248 50620006 */  beql       $v1, $v0, .Lrace_80123264
/* D960C 8012324C 26040008 */   addiu     $a0, $s0, 0x8
/* D9610 80123250 10600003 */  beqz       $v1, .Lrace_80123260
/* D9614 80123254 24020003 */   addiu     $v0, $zero, 0x3
/* D9618 80123258 14620018 */  bne        $v1, $v0, .Lrace_801232BC
/* D961C 8012325C 00000000 */   nop
.Lrace_80123260:
/* D9620 80123260 26040008 */  addiu      $a0, $s0, 0x8
.Lrace_80123264:
/* D9624 80123264 0C016596 */  jal        func_80059658
/* D9628 80123268 27A50010 */   addiu     $a1, $sp, 0x10
/* D962C 8012326C 8E030038 */  lw         $v1, 0x38($s0)
/* D9630 80123270 8C620024 */  lw         $v0, 0x24($v1)
/* D9634 80123274 27A50010 */  addiu      $a1, $sp, 0x10
/* D9638 80123278 84440018 */  lh         $a0, 0x18($v0)
/* D963C 8012327C 8C42001C */  lw         $v0, 0x1C($v0)
/* D9640 80123280 0040F809 */  jalr       $v0
/* D9644 80123284 00642021 */   addu      $a0, $v1, $a0
/* D9648 80123288 8E020038 */  lw         $v0, 0x38($s0)
/* D964C 8012328C 3C01800D */  lui        $at, %hi(D_race_800CE7A8)
/* D9650 80123290 C420E7A8 */  lwc1       $f0, %lo(D_race_800CE7A8)($at)
/* D9654 80123294 C6020030 */  lwc1       $f2, 0x30($s0)
/* D9658 80123298 E440000C */  swc1       $f0, 0xC($v0)
/* D965C 8012329C E4420058 */  swc1       $f2, 0x58($v0)
/* D9660 801232A0 8E030038 */  lw         $v1, 0x38($s0)
/* D9664 801232A4 8C620024 */  lw         $v0, 0x24($v1)
/* D9668 801232A8 02202821 */  addu       $a1, $s1, $zero
/* D966C 801232AC 84440040 */  lh         $a0, 0x40($v0)
/* D9670 801232B0 8C420044 */  lw         $v0, 0x44($v0)
/* D9674 801232B4 0040F809 */  jalr       $v0
/* D9678 801232B8 00642021 */   addu      $a0, $v1, $a0
.Lrace_801232BC:
/* D967C 801232BC 8FBF0028 */  lw         $ra, 0x28($sp)
/* D9680 801232C0 8FB10024 */  lw         $s1, 0x24($sp)
/* D9684 801232C4 8FB00020 */  lw         $s0, 0x20($sp)
/* D9688 801232C8 03E00008 */  jr         $ra
/* D968C 801232CC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_801232D0
/* D9690 801232D0 8C820050 */  lw         $v0, 0x50($a0)
/* D9694 801232D4 03E00008 */  jr         $ra
/* D9698 801232D8 30420001 */   andi      $v0, $v0, 0x1

glabel func_race_801232DC
/* D969C 801232DC 8C820050 */  lw         $v0, 0x50($a0)
/* D96A0 801232E0 2403FFFE */  addiu      $v1, $zero, -0x2
/* D96A4 801232E4 00431024 */  and        $v0, $v0, $v1
/* D96A8 801232E8 03E00008 */  jr         $ra
/* D96AC 801232EC AC820050 */   sw        $v0, 0x50($a0)

glabel func_race_801232F0
/* D96B0 801232F0 8C820050 */  lw         $v0, 0x50($a0)
/* D96B4 801232F4 34420001 */  ori        $v0, $v0, 0x1
/* D96B8 801232F8 03E00008 */  jr         $ra
/* D96BC 801232FC AC820050 */   sw        $v0, 0x50($a0)

glabel func_race_80123300
/* D96C0 80123300 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D96C4 80123304 AFBF0010 */  sw         $ra, 0x10($sp)
/* D96C8 80123308 0C016596 */  jal        func_80059658
/* D96CC 8012330C 24840008 */   addiu     $a0, $a0, 0x8
/* D96D0 80123310 8FBF0010 */  lw         $ra, 0x10($sp)
/* D96D4 80123314 03E00008 */  jr         $ra
/* D96D8 80123318 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012331C
/* D96DC 8012331C 03E00008 */  jr         $ra
/* D96E0 80123320 24820008 */   addiu     $v0, $a0, 0x8

glabel func_race_80123324
/* D96E4 80123324 03E00008 */  jr         $ra
/* D96E8 80123328 AC850048 */   sw        $a1, 0x48($a0)

glabel func_race_8012332C
/* D96EC 8012332C 8C820048 */  lw         $v0, 0x48($a0)
/* D96F0 80123330 03E00008 */  jr         $ra
/* D96F4 80123334 00000000 */   nop

glabel func_race_80123338
/* D96F8 80123338 8C82003C */  lw         $v0, 0x3C($a0)
/* D96FC 8012333C 03E00008 */  jr         $ra
/* D9700 80123340 00000000 */   nop

glabel func_race_80123344
/* D9704 80123344 8C82003C */  lw         $v0, 0x3C($a0)
/* D9708 80123348 03E00008 */  jr         $ra
/* D970C 8012334C 2C420001 */   sltiu     $v0, $v0, 0x1

glabel func_race_80123350
/* D9710 80123350 8C820004 */  lw         $v0, 0x4($a0)
/* D9714 80123354 03E00008 */  jr         $ra
/* D9718 80123358 0002102B */   sltu      $v0, $zero, $v0
