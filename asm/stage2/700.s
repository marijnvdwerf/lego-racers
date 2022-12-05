.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007DC80
/* 74FB0 8007DC80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74FB4 8007DC84 AFB00010 */  sw         $s0, 0x10($sp)
/* 74FB8 8007DC88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74FBC 8007DC8C 0C0018B0 */  jal        func_800062C0
/* 74FC0 8007DC90 00808021 */   addu      $s0, $a0, $zero
/* 74FC4 8007DC94 02001021 */  addu       $v0, $s0, $zero
/* 74FC8 8007DC98 3C038004 */  lui        $v1, %hi(D_80040330)
/* 74FCC 8007DC9C 24630330 */  addiu      $v1, $v1, %lo(D_80040330)
/* 74FD0 8007DCA0 AC430028 */  sw         $v1, 0x28($v0)
/* 74FD4 8007DCA4 AC40002C */  sw         $zero, 0x2C($v0)
/* 74FD8 8007DCA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74FDC 8007DCAC 8FB00010 */  lw         $s0, 0x10($sp)
/* 74FE0 8007DCB0 03E00008 */  jr         $ra
/* 74FE4 8007DCB4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007DCB8
/* 74FE8 8007DCB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74FEC 8007DCBC AFB00010 */  sw         $s0, 0x10($sp)
/* 74FF0 8007DCC0 00808021 */  addu       $s0, $a0, $zero
/* 74FF4 8007DCC4 AFB10014 */  sw         $s1, 0x14($sp)
/* 74FF8 8007DCC8 00A08821 */  addu       $s1, $a1, $zero
/* 74FFC 8007DCCC 3C028004 */  lui        $v0, %hi(D_80040330)
/* 75000 8007DCD0 24420330 */  addiu      $v0, $v0, %lo(D_80040330)
/* 75004 8007DCD4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 75008 8007DCD8 0C001A16 */  jal        func_80006858
/* 7500C 8007DCDC AE020028 */   sw        $v0, 0x28($s0)
/* 75010 8007DCE0 02002021 */  addu       $a0, $s0, $zero
/* 75014 8007DCE4 0C0018BD */  jal        func_800062F4
/* 75018 8007DCE8 02202821 */   addu      $a1, $s1, $zero
/* 7501C 8007DCEC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 75020 8007DCF0 8FB10014 */  lw         $s1, 0x14($sp)
/* 75024 8007DCF4 8FB00010 */  lw         $s0, 0x10($sp)
/* 75028 8007DCF8 03E00008 */  jr         $ra
/* 7502C 8007DCFC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007DD00
/* 75030 8007DD00 03E00008 */  jr         $ra
/* 75034 8007DD04 00000000 */   nop

glabel func_8007DD08
/* 75038 8007DD08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7503C 8007DD0C AFB00010 */  sw         $s0, 0x10($sp)
/* 75040 8007DD10 00808021 */  addu       $s0, $a0, $zero
/* 75044 8007DD14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 75048 8007DD18 8E020004 */  lw         $v0, 0x4($s0)
/* 7504C 8007DD1C 30420002 */  andi       $v0, $v0, 0x2
/* 75050 8007DD20 14400004 */  bnez       $v0, .L8007DD34
/* 75054 8007DD24 00000000 */   nop
/* 75058 8007DD28 8E02002C */  lw         $v0, 0x2C($s0)
/* 7505C 8007DD2C 0801F75B */  j          .L8007DD6C
/* 75060 8007DD30 00000000 */   nop
.L8007DD34:
/* 75064 8007DD34 8E030024 */  lw         $v1, 0x24($s0)
/* 75068 8007DD38 00031040 */  sll        $v0, $v1, 1
/* 7506C 8007DD3C 00431021 */  addu       $v0, $v0, $v1
/* 75070 8007DD40 00021080 */  sll        $v0, $v0, 2
/* 75074 8007DD44 00431021 */  addu       $v0, $v0, $v1
/* 75078 8007DD48 3C038003 */  lui        $v1, %hi(D_8002FB28)
/* 7507C 8007DD4C 8C63FB28 */  lw         $v1, %lo(D_8002FB28)($v1)
/* 75080 8007DD50 00021080 */  sll        $v0, $v0, 2
/* 75084 8007DD54 00431021 */  addu       $v0, $v0, $v1
/* 75088 8007DD58 8C440000 */  lw         $a0, 0x0($v0)
/* 7508C 8007DD5C 0C01F742 */  jal        func_8007DD08
/* 75090 8007DD60 00000000 */   nop
/* 75094 8007DD64 8E030008 */  lw         $v1, 0x8($s0)
/* 75098 8007DD68 00621021 */  addu       $v0, $v1, $v0
.L8007DD6C:
/* 7509C 8007DD6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 750A0 8007DD70 8FB00010 */  lw         $s0, 0x10($sp)
/* 750A4 8007DD74 03E00008 */  jr         $ra
/* 750A8 8007DD78 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007DD7C
/* 750AC 8007DD7C 03E00008 */  jr         $ra
/* 750B0 8007DD80 24020008 */   addiu     $v0, $zero, 0x8

glabel func_8007DD84
/* 750B4 8007DD84 03E00008 */  jr         $ra
/* 750B8 8007DD88 24020008 */   addiu     $v0, $zero, 0x8

glabel func_8007DD8C
/* 750BC 8007DD8C 03E00008 */  jr         $ra
/* 750C0 8007DD90 24020008 */   addiu     $v0, $zero, 0x8

glabel func_8007DD94
/* 750C4 8007DD94 8C820010 */  lw         $v0, 0x10($a0)
/* 750C8 8007DD98 00A2102B */  sltu       $v0, $a1, $v0
/* 750CC 8007DD9C 10400003 */  beqz       $v0, .L8007DDAC
/* 750D0 8007DDA0 00001021 */   addu      $v0, $zero, $zero
/* 750D4 8007DDA4 03E00008 */  jr         $ra
/* 750D8 8007DDA8 AC850008 */   sw        $a1, 0x8($a0)
.L8007DDAC:
/* 750DC 8007DDAC 03E00008 */  jr         $ra
/* 750E0 8007DDB0 2402000F */   addiu     $v0, $zero, 0xF

glabel func_8007DDB4
/* 750E4 8007DDB4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 750E8 8007DDB8 AFB10024 */  sw         $s1, 0x24($sp)
/* 750EC 8007DDBC 00808821 */  addu       $s1, $a0, $zero
/* 750F0 8007DDC0 AFB20028 */  sw         $s2, 0x28($sp)
/* 750F4 8007DDC4 00A09021 */  addu       $s2, $a1, $zero
/* 750F8 8007DDC8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 750FC 8007DDCC AFB00020 */  sw         $s0, 0x20($sp)
/* 75100 8007DDD0 8E220010 */  lw         $v0, 0x10($s1)
/* 75104 8007DDD4 8E230008 */  lw         $v1, 0x8($s1)
/* 75108 8007DDD8 00432023 */  subu       $a0, $v0, $v1
/* 7510C 8007DDDC 1C800004 */  bgtz       $a0, .L8007DDF0
/* 75110 8007DDE0 00C08021 */   addu      $s0, $a2, $zero
/* 75114 8007DDE4 ACE00000 */  sw         $zero, 0x0($a3)
/* 75118 8007DDE8 0801F7A2 */  j          .L8007DE88
/* 7511C 8007DDEC 24020010 */   addiu     $v0, $zero, 0x10
.L8007DDF0:
/* 75120 8007DDF0 30620001 */  andi       $v0, $v1, 0x1
/* 75124 8007DDF4 00621823 */  subu       $v1, $v1, $v0
/* 75128 8007DDF8 00822021 */  addu       $a0, $a0, $v0
/* 7512C 8007DDFC 0090102A */  slt        $v0, $a0, $s0
/* 75130 8007DE00 10400006 */  beqz       $v0, .L8007DE1C
/* 75134 8007DE04 AE230008 */   sw        $v1, 0x8($s1)
/* 75138 8007DE08 00808021 */  addu       $s0, $a0, $zero
/* 7513C 8007DE0C ACF00000 */  sw         $s0, 0x0($a3)
/* 75140 8007DE10 32020001 */  andi       $v0, $s0, 0x1
/* 75144 8007DE14 0801F788 */  j          .L8007DE20
/* 75148 8007DE18 02028021 */   addu      $s0, $s0, $v0
.L8007DE1C:
/* 7514C 8007DE1C ACF00000 */  sw         $s0, 0x0($a3)
.L8007DE20:
/* 75150 8007DE20 3C028008 */  lui        $v0, %hi(D_80087560)
/* 75154 8007DE24 8C427560 */  lw         $v0, %lo(D_80087560)($v0)
/* 75158 8007DE28 10400003 */  beqz       $v0, .L8007DE38
/* 7515C 8007DE2C 02402021 */   addu      $a0, $s2, $zero
.L8007DE30:
/* 75160 8007DE30 0801F78C */  j          .L8007DE30
/* 75164 8007DE34 00000000 */   nop
.L8007DE38:
/* 75168 8007DE38 0C0069D4 */  jal        osInvalDCache
/* 7516C 8007DE3C 02002821 */   addu      $a1, $s0, $zero
/* 75170 8007DE40 3C048002 */  lui        $a0, %hi(D_80027280)
/* 75174 8007DE44 24847280 */  addiu      $a0, $a0, %lo(D_80027280)
/* 75178 8007DE48 00002821 */  addu       $a1, $zero, $zero
/* 7517C 8007DE4C 8E22002C */  lw         $v0, 0x2C($s1)
/* 75180 8007DE50 8E270008 */  lw         $a3, 0x8($s1)
/* 75184 8007DE54 00A03021 */  addu       $a2, $a1, $zero
/* 75188 8007DE58 AFB00014 */  sw         $s0, 0x14($sp)
/* 7518C 8007DE5C 3C108002 */  lui        $s0, %hi(D_80027248)
/* 75190 8007DE60 26107248 */  addiu      $s0, $s0, %lo(D_80027248)
/* 75194 8007DE64 AFB20010 */  sw         $s2, 0x10($sp)
/* 75198 8007DE68 AFB00018 */  sw         $s0, 0x18($sp)
/* 7519C 8007DE6C 0C005AA0 */  jal        osPiStartDma
/* 751A0 8007DE70 00473821 */   addu      $a3, $v0, $a3
/* 751A4 8007DE74 02002021 */  addu       $a0, $s0, $zero
/* 751A8 8007DE78 00002821 */  addu       $a1, $zero, $zero
/* 751AC 8007DE7C 0C007720 */  jal        osRecvMesg
/* 751B0 8007DE80 24060001 */   addiu     $a2, $zero, 0x1
/* 751B4 8007DE84 00001021 */  addu       $v0, $zero, $zero
.L8007DE88:
/* 751B8 8007DE88 8FBF002C */  lw         $ra, 0x2C($sp)
/* 751BC 8007DE8C 8FB20028 */  lw         $s2, 0x28($sp)
/* 751C0 8007DE90 8FB10024 */  lw         $s1, 0x24($sp)
/* 751C4 8007DE94 8FB00020 */  lw         $s0, 0x20($sp)
/* 751C8 8007DE98 03E00008 */  jr         $ra
/* 751CC 8007DE9C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007DEA0
/* 751D0 8007DEA0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 751D4 8007DEA4 AFB10024 */  sw         $s1, 0x24($sp)
/* 751D8 8007DEA8 00808821 */  addu       $s1, $a0, $zero
/* 751DC 8007DEAC AFB20028 */  sw         $s2, 0x28($sp)
/* 751E0 8007DEB0 00A09021 */  addu       $s2, $a1, $zero
/* 751E4 8007DEB4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 751E8 8007DEB8 AFB00020 */  sw         $s0, 0x20($sp)
/* 751EC 8007DEBC 8E220010 */  lw         $v0, 0x10($s1)
/* 751F0 8007DEC0 8E230008 */  lw         $v1, 0x8($s1)
/* 751F4 8007DEC4 00432023 */  subu       $a0, $v0, $v1
/* 751F8 8007DEC8 1C800004 */  bgtz       $a0, .L8007DEDC
/* 751FC 8007DECC 00C08021 */   addu      $s0, $a2, $zero
/* 75200 8007DED0 ACE00000 */  sw         $zero, 0x0($a3)
/* 75204 8007DED4 0801F7D4 */  j          .L8007DF50
/* 75208 8007DED8 24020010 */   addiu     $v0, $zero, 0x10
.L8007DEDC:
/* 7520C 8007DEDC 30620001 */  andi       $v0, $v1, 0x1
/* 75210 8007DEE0 00621823 */  subu       $v1, $v1, $v0
/* 75214 8007DEE4 00822021 */  addu       $a0, $a0, $v0
/* 75218 8007DEE8 0090102A */  slt        $v0, $a0, $s0
/* 7521C 8007DEEC 10400006 */  beqz       $v0, .L8007DF08
/* 75220 8007DEF0 AE230008 */   sw        $v1, 0x8($s1)
/* 75224 8007DEF4 00808021 */  addu       $s0, $a0, $zero
/* 75228 8007DEF8 ACF00000 */  sw         $s0, 0x0($a3)
/* 7522C 8007DEFC 32020001 */  andi       $v0, $s0, 0x1
/* 75230 8007DF00 0801F7C3 */  j          .L8007DF0C
/* 75234 8007DF04 02028021 */   addu      $s0, $s0, $v0
.L8007DF08:
/* 75238 8007DF08 ACF00000 */  sw         $s0, 0x0($a3)
.L8007DF0C:
/* 7523C 8007DF0C 02402021 */  addu       $a0, $s2, $zero
/* 75240 8007DF10 0C0069D4 */  jal        osInvalDCache
/* 75244 8007DF14 02002821 */   addu      $a1, $s0, $zero
/* 75248 8007DF18 3C048002 */  lui        $a0, %hi(D_80027280)
/* 7524C 8007DF1C 24847280 */  addiu      $a0, $a0, %lo(D_80027280)
/* 75250 8007DF20 00002821 */  addu       $a1, $zero, $zero
/* 75254 8007DF24 3C028002 */  lui        $v0, %hi(D_80027248)
/* 75258 8007DF28 24427248 */  addiu      $v0, $v0, %lo(D_80027248)
/* 7525C 8007DF2C 8E23002C */  lw         $v1, 0x2C($s1)
/* 75260 8007DF30 8E270008 */  lw         $a3, 0x8($s1)
/* 75264 8007DF34 00A03021 */  addu       $a2, $a1, $zero
/* 75268 8007DF38 AFB20010 */  sw         $s2, 0x10($sp)
/* 7526C 8007DF3C AFB00014 */  sw         $s0, 0x14($sp)
/* 75270 8007DF40 AFA20018 */  sw         $v0, 0x18($sp)
/* 75274 8007DF44 0C005AA0 */  jal        osPiStartDma
/* 75278 8007DF48 00673821 */   addu      $a3, $v1, $a3
/* 7527C 8007DF4C 00001021 */  addu       $v0, $zero, $zero
.L8007DF50:
/* 75280 8007DF50 8FBF002C */  lw         $ra, 0x2C($sp)
/* 75284 8007DF54 8FB20028 */  lw         $s2, 0x28($sp)
/* 75288 8007DF58 8FB10024 */  lw         $s1, 0x24($sp)
/* 7528C 8007DF5C 8FB00020 */  lw         $s0, 0x20($sp)
/* 75290 8007DF60 03E00008 */  jr         $ra
/* 75294 8007DF64 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007DF68
/* 75298 8007DF68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7529C 8007DF6C 3C048002 */  lui        $a0, %hi(D_80027248)
/* 752A0 8007DF70 24847248 */  addiu      $a0, $a0, %lo(D_80027248)
/* 752A4 8007DF74 00002821 */  addu       $a1, $zero, $zero
/* 752A8 8007DF78 AFBF0010 */  sw         $ra, 0x10($sp)
/* 752AC 8007DF7C 0C007720 */  jal        osRecvMesg
/* 752B0 8007DF80 24060001 */   addiu     $a2, $zero, 0x1
/* 752B4 8007DF84 8FBF0010 */  lw         $ra, 0x10($sp)
/* 752B8 8007DF88 00001021 */  addu       $v0, $zero, $zero
/* 752BC 8007DF8C 03E00008 */  jr         $ra
/* 752C0 8007DF90 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007DF94
/* 752C4 8007DF94 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 752C8 8007DF98 AFB00010 */  sw         $s0, 0x10($sp)
/* 752CC 8007DF9C 00808021 */  addu       $s0, $a0, $zero
/* 752D0 8007DFA0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 752D4 8007DFA4 00A09821 */  addu       $s3, $a1, $zero
/* 752D8 8007DFA8 AFB40020 */  sw         $s4, 0x20($sp)
/* 752DC 8007DFAC 00C0A021 */  addu       $s4, $a2, $zero
/* 752E0 8007DFB0 AFB20018 */  sw         $s2, 0x18($sp)
/* 752E4 8007DFB4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 752E8 8007DFB8 AFB10014 */  sw         $s1, 0x14($sp)
/* 752EC 8007DFBC 8E020004 */  lw         $v0, 0x4($s0)
/* 752F0 8007DFC0 8FB10038 */  lw         $s1, 0x38($sp)
/* 752F4 8007DFC4 30420001 */  andi       $v0, $v0, 0x1
/* 752F8 8007DFC8 10400006 */  beqz       $v0, .L8007DFE4
/* 752FC 8007DFCC 00E09021 */   addu      $s2, $a3, $zero
/* 75300 8007DFD0 8E020028 */  lw         $v0, 0x28($s0)
/* 75304 8007DFD4 84440048 */  lh         $a0, 0x48($v0)
/* 75308 8007DFD8 8C42004C */  lw         $v0, 0x4C($v0)
/* 7530C 8007DFDC 0040F809 */  jalr       $v0
/* 75310 8007DFE0 02042021 */   addu      $a0, $s0, $a0
.L8007DFE4:
/* 75314 8007DFE4 12200025 */  beqz       $s1, .L8007E07C
/* 75318 8007DFE8 24020003 */   addiu     $v0, $zero, 0x3
/* 7531C 8007DFEC 32420020 */  andi       $v0, $s2, 0x20
/* 75320 8007DFF0 10400004 */  beqz       $v0, .L8007E004
/* 75324 8007DFF4 00000000 */   nop
/* 75328 8007DFF8 8E020020 */  lw         $v0, 0x20($s0)
/* 7532C 8007DFFC 14400016 */  bnez       $v0, .L8007E058
/* 75330 8007E000 00001021 */   addu      $v0, $zero, $zero
.L8007E004:
/* 75334 8007E004 8E040020 */  lw         $a0, 0x20($s0)
/* 75338 8007E008 10800005 */  beqz       $a0, .L8007E020
/* 7533C 8007E00C 3C028003 */   lui       $v0, %hi(D_8002FC34)
/* 75340 8007E010 0C009444 */  jal        func_80025110
/* 75344 8007E014 00000000 */   nop
/* 75348 8007E018 AE000020 */  sw         $zero, 0x20($s0)
/* 7534C 8007E01C 3C028003 */  lui        $v0, %hi(D_8002FC34)
.L8007E020:
/* 75350 8007E020 8C44FC34 */  lw         $a0, %lo(D_8002FC34)($v0)
/* 75354 8007E024 32220001 */  andi       $v0, $s1, 0x1
/* 75358 8007E028 0C01FB65 */  jal        func_8007ED94
/* 7535C 8007E02C 02228821 */   addu      $s1, $s1, $v0
/* 75360 8007E030 0C00943C */  jal        func_800250F0
/* 75364 8007E034 02202021 */   addu      $a0, $s1, $zero
/* 75368 8007E038 0C01FB72 */  jal        func_8007EDC8
/* 7536C 8007E03C AE020020 */   sw        $v0, 0x20($s0)
/* 75370 8007E040 8E020020 */  lw         $v0, 0x20($s0)
/* 75374 8007E044 54400003 */  bnel       $v0, $zero, .L8007E054
/* 75378 8007E048 AE110014 */   sw        $s1, 0x14($s0)
/* 7537C 8007E04C 0801F81F */  j          .L8007E07C
/* 75380 8007E050 24020004 */   addiu     $v0, $zero, 0x4
.L8007E054:
/* 75384 8007E054 00001021 */  addu       $v0, $zero, $zero
.L8007E058:
/* 75388 8007E058 36430040 */  ori        $v1, $s2, 0x40
/* 7538C 8007E05C AE030000 */  sw         $v1, 0x0($s0)
/* 75390 8007E060 24030001 */  addiu      $v1, $zero, 0x1
/* 75394 8007E064 AE000018 */  sw         $zero, 0x18($s0)
/* 75398 8007E068 AE00001C */  sw         $zero, 0x1C($s0)
/* 7539C 8007E06C AE000008 */  sw         $zero, 0x8($s0)
/* 753A0 8007E070 AE13002C */  sw         $s3, 0x2C($s0)
/* 753A4 8007E074 AE140010 */  sw         $s4, 0x10($s0)
/* 753A8 8007E078 AE030004 */  sw         $v1, 0x4($s0)
.L8007E07C:
/* 753AC 8007E07C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 753B0 8007E080 8FB40020 */  lw         $s4, 0x20($sp)
/* 753B4 8007E084 8FB3001C */  lw         $s3, 0x1C($sp)
/* 753B8 8007E088 8FB20018 */  lw         $s2, 0x18($sp)
/* 753BC 8007E08C 8FB10014 */  lw         $s1, 0x14($sp)
/* 753C0 8007E090 8FB00010 */  lw         $s0, 0x10($sp)
/* 753C4 8007E094 03E00008 */  jr         $ra
/* 753C8 8007E098 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007E09C
/* 753CC 8007E09C 3C038008 */  lui        $v1, %hi(D_80087560)
/* 753D0 8007E0A0 24020001 */  addiu      $v0, $zero, 0x1
/* 753D4 8007E0A4 03E00008 */  jr         $ra
/* 753D8 8007E0A8 AC627560 */   sw        $v0, %lo(D_80087560)($v1)
