.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DDF50
/* 94310 800DDF50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 94314 800DDF54 AFB00010 */  sw         $s0, 0x10($sp)
/* 94318 800DDF58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9431C 800DDF5C 0C03592C */  jal        func_race_800D64B0
/* 94320 800DDF60 00808021 */   addu      $s0, $a0, $zero
/* 94324 800DDF64 02001021 */  addu       $v0, $s0, $zero
/* 94328 800DDF68 3C03800D */  lui        $v1, %hi(D_race_800CB2D8)
/* 9432C 800DDF6C 2463B2D8 */  addiu      $v1, $v1, %lo(D_race_800CB2D8)
/* 94330 800DDF70 AC43001C */  sw         $v1, 0x1C($v0)
/* 94334 800DDF74 240300FF */  addiu      $v1, $zero, 0xFF
/* 94338 800DDF78 AC400020 */  sw         $zero, 0x20($v0)
/* 9433C 800DDF7C AC400024 */  sw         $zero, 0x24($v0)
/* 94340 800DDF80 A0400018 */  sb         $zero, 0x18($v0)
/* 94344 800DDF84 A0430054 */  sb         $v1, 0x54($v0)
/* 94348 800DDF88 AC400028 */  sw         $zero, 0x28($v0)
/* 9434C 800DDF8C AC40002C */  sw         $zero, 0x2C($v0)
/* 94350 800DDF90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 94354 800DDF94 8FB00010 */  lw         $s0, 0x10($sp)
/* 94358 800DDF98 03E00008 */  jr         $ra
/* 9435C 800DDF9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DDFA0
/* 94360 800DDFA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 94364 800DDFA4 AFB00010 */  sw         $s0, 0x10($sp)
/* 94368 800DDFA8 00808021 */  addu       $s0, $a0, $zero
/* 9436C 800DDFAC AFB10014 */  sw         $s1, 0x14($sp)
/* 94370 800DDFB0 00A08821 */  addu       $s1, $a1, $zero
/* 94374 800DDFB4 3C02800D */  lui        $v0, %hi(D_race_800CB2D8)
/* 94378 800DDFB8 2442B2D8 */  addiu      $v0, $v0, %lo(D_race_800CB2D8)
/* 9437C 800DDFBC AFBF0018 */  sw         $ra, 0x18($sp)
/* 94380 800DDFC0 0C03785B */  jal        func_race_800DE16C
/* 94384 800DDFC4 AE02001C */   sw        $v0, 0x1C($s0)
/* 94388 800DDFC8 02002021 */  addu       $a0, $s0, $zero
/* 9438C 800DDFCC 0C03593D */  jal        func_race_800D64F4
/* 94390 800DDFD0 02202821 */   addu      $a1, $s1, $zero
/* 94394 800DDFD4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 94398 800DDFD8 8FB10014 */  lw         $s1, 0x14($sp)
/* 9439C 800DDFDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 943A0 800DDFE0 03E00008 */  jr         $ra
/* 943A4 800DDFE4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DDFE8
/* 943A8 800DDFE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 943AC 800DDFEC AFB00010 */  sw         $s0, 0x10($sp)
/* 943B0 800DDFF0 00808021 */  addu       $s0, $a0, $zero
/* 943B4 800DDFF4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 943B8 800DDFF8 AFB10014 */  sw         $s1, 0x14($sp)
/* 943BC 800DDFFC 8E020014 */  lw         $v0, 0x14($s0)
/* 943C0 800DE000 10400003 */  beqz       $v0, .Lrace_800DE010
/* 943C4 800DE004 00A08821 */   addu      $s1, $a1, $zero
/* 943C8 800DE008 0C03785B */  jal        func_race_800DE16C
/* 943CC 800DE00C 00000000 */   nop
.Lrace_800DE010:
/* 943D0 800DE010 8E220000 */  lw         $v0, 0x0($s1)
/* 943D4 800DE014 3C01800D */  lui        $at, %hi(D_race_800CB2D0)
/* 943D8 800DE018 C422B2D0 */  lwc1       $f2, %lo(D_race_800CB2D0)($at)
/* 943DC 800DE01C AE020010 */  sw         $v0, 0x10($s0)
/* 943E0 800DE020 8E220008 */  lw         $v0, 0x8($s1)
/* 943E4 800DE024 AE020024 */  sw         $v0, 0x24($s0)
/* 943E8 800DE028 8E220018 */  lw         $v0, 0x18($s1)
/* 943EC 800DE02C AE02003C */  sw         $v0, 0x3C($s0)
/* 943F0 800DE030 8E22001C */  lw         $v0, 0x1C($s1)
/* 943F4 800DE034 AE020040 */  sw         $v0, 0x40($s0)
/* 943F8 800DE038 C6200020 */  lwc1       $f0, 0x20($s1)
/* 943FC 800DE03C E6000044 */  swc1       $f0, 0x44($s0)
/* 94400 800DE040 C6200024 */  lwc1       $f0, 0x24($s1)
/* 94404 800DE044 E6000048 */  swc1       $f0, 0x48($s0)
/* 94408 800DE048 C6200028 */  lwc1       $f0, 0x28($s1)
/* 9440C 800DE04C E600004C */  swc1       $f0, 0x4C($s0)
/* 94410 800DE050 C620002C */  lwc1       $f0, 0x2C($s1)
/* 94414 800DE054 E6000050 */  swc1       $f0, 0x50($s0)
/* 94418 800DE058 C620000C */  lwc1       $f0, 0xC($s1)
/* 9441C 800DE05C E6000030 */  swc1       $f0, 0x30($s0)
/* 94420 800DE060 C6200010 */  lwc1       $f0, 0x10($s1)
/* 94424 800DE064 E6000034 */  swc1       $f0, 0x34($s0)
/* 94428 800DE068 C6200014 */  lwc1       $f0, 0x14($s1)
/* 9442C 800DE06C E6000038 */  swc1       $f0, 0x38($s0)
/* 94430 800DE070 8E220044 */  lw         $v0, 0x44($s1)
/* 94434 800DE074 AE020028 */  sw         $v0, 0x28($s0)
/* 94438 800DE078 8E220048 */  lw         $v0, 0x48($s1)
/* 9443C 800DE07C AE02002C */  sw         $v0, 0x2C($s0)
/* 94440 800DE080 C6200030 */  lwc1       $f0, 0x30($s1)
/* 94444 800DE084 46020002 */  mul.s      $f0, $f0, $f2
/* 94448 800DE088 3C068003 */  lui        $a2, %hi(D_8002FAB0)
/* 9444C 800DE08C 3C041062 */  lui        $a0, (0x10624DD3 >> 16)
/* 94450 800DE090 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* 94454 800DE094 4600010D */  trunc.w.s  $f4, $f0
/* 94458 800DE098 44022000 */  mfc1       $v0, $f4
/* 9445C 800DE09C A2020054 */  sb         $v0, 0x54($s0)
/* 94460 800DE0A0 8CC5FAB0 */  lw         $a1, %lo(D_8002FAB0)($a2)
/* 94464 800DE0A4 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* 94468 800DE0A8 24A50001 */  addiu      $a1, $a1, 0x1
/* 9446C 800DE0AC 30A503FF */  andi       $a1, $a1, 0x3FF
/* 94470 800DE0B0 00051040 */  sll        $v0, $a1, 1
/* 94474 800DE0B4 00431021 */  addu       $v0, $v0, $v1
/* 94478 800DE0B8 94430000 */  lhu        $v1, 0x0($v0)
/* 9447C 800DE0BC 34844DD3 */  ori        $a0, $a0, (0x10624DD3 & 0xFFFF)
/* 94480 800DE0C0 00640019 */  multu      $v1, $a0
/* 94484 800DE0C4 00003810 */  mfhi       $a3
/* 94488 800DE0C8 00072182 */  srl        $a0, $a3, 6
/* 9448C 800DE0CC 00041140 */  sll        $v0, $a0, 5
/* 94490 800DE0D0 00441023 */  subu       $v0, $v0, $a0
/* 94494 800DE0D4 00021080 */  sll        $v0, $v0, 2
/* 94498 800DE0D8 00441021 */  addu       $v0, $v0, $a0
/* 9449C 800DE0DC 000210C0 */  sll        $v0, $v0, 3
/* 944A0 800DE0E0 00621823 */  subu       $v1, $v1, $v0
/* 944A4 800DE0E4 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 944A8 800DE0E8 246301F4 */  addiu      $v1, $v1, 0x1F4
/* 944AC 800DE0EC AE030058 */  sw         $v1, 0x58($s0)
/* 944B0 800DE0F0 8E220034 */  lw         $v0, 0x34($s1)
/* 944B4 800DE0F4 10400004 */  beqz       $v0, .Lrace_800DE108
/* 944B8 800DE0F8 ACC5FAB0 */   sw        $a1, %lo(D_8002FAB0)($a2)
/* 944BC 800DE0FC 92020018 */  lbu        $v0, 0x18($s0)
/* 944C0 800DE100 34420001 */  ori        $v0, $v0, 0x1
/* 944C4 800DE104 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DE108:
/* 944C8 800DE108 8E220038 */  lw         $v0, 0x38($s1)
/* 944CC 800DE10C 10400004 */  beqz       $v0, .Lrace_800DE120
/* 944D0 800DE110 00000000 */   nop
/* 944D4 800DE114 92020018 */  lbu        $v0, 0x18($s0)
/* 944D8 800DE118 34420002 */  ori        $v0, $v0, 0x2
/* 944DC 800DE11C A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DE120:
/* 944E0 800DE120 8E22003C */  lw         $v0, 0x3C($s1)
/* 944E4 800DE124 10400004 */  beqz       $v0, .Lrace_800DE138
/* 944E8 800DE128 00000000 */   nop
/* 944EC 800DE12C 92020018 */  lbu        $v0, 0x18($s0)
/* 944F0 800DE130 34420004 */  ori        $v0, $v0, 0x4
/* 944F4 800DE134 A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DE138:
/* 944F8 800DE138 8E220040 */  lw         $v0, 0x40($s1)
/* 944FC 800DE13C 10400005 */  beqz       $v0, .Lrace_800DE154
/* 94500 800DE140 24020001 */   addiu     $v0, $zero, 0x1
/* 94504 800DE144 92020018 */  lbu        $v0, 0x18($s0)
/* 94508 800DE148 34420008 */  ori        $v0, $v0, 0x8
/* 9450C 800DE14C A2020018 */  sb         $v0, 0x18($s0)
/* 94510 800DE150 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800DE154:
/* 94514 800DE154 AE020014 */  sw         $v0, 0x14($s0)
/* 94518 800DE158 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9451C 800DE15C 8FB10014 */  lw         $s1, 0x14($sp)
/* 94520 800DE160 8FB00010 */  lw         $s0, 0x10($sp)
/* 94524 800DE164 03E00008 */  jr         $ra
/* 94528 800DE168 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DE16C
/* 9452C 800DE16C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 94530 800DE170 AFB00010 */  sw         $s0, 0x10($sp)
/* 94534 800DE174 00808021 */  addu       $s0, $a0, $zero
/* 94538 800DE178 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9453C 800DE17C 8E050020 */  lw         $a1, 0x20($s0)
/* 94540 800DE180 10A00006 */  beqz       $a1, .Lrace_800DE19C
/* 94544 800DE184 02002021 */   addu      $a0, $s0, $zero
/* 94548 800DE188 8E040024 */  lw         $a0, 0x24($s0)
/* 9454C 800DE18C 0C046564 */  jal        func_race_80119590
/* 94550 800DE190 00000000 */   nop
/* 94554 800DE194 AE000020 */  sw         $zero, 0x20($s0)
/* 94558 800DE198 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DE19C:
/* 9455C 800DE19C AC800024 */  sw         $zero, 0x24($a0)
/* 94560 800DE1A0 AC800028 */  sw         $zero, 0x28($a0)
/* 94564 800DE1A4 AC80002C */  sw         $zero, 0x2C($a0)
/* 94568 800DE1A8 0C035951 */  jal        func_race_800D6544
/* 9456C 800DE1AC A0800018 */   sb        $zero, 0x18($a0)
/* 94570 800DE1B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 94574 800DE1B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 94578 800DE1B8 03E00008 */  jr         $ra
/* 9457C 800DE1BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DE1C0
/* 94580 800DE1C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 94584 800DE1C4 AFB00030 */  sw         $s0, 0x30($sp)
/* 94588 800DE1C8 00808021 */  addu       $s0, $a0, $zero
/* 9458C 800DE1CC 10A0000B */  beqz       $a1, .Lrace_800DE1FC
/* 94590 800DE1D0 AFBF0034 */   sw        $ra, 0x34($sp)
/* 94594 800DE1D4 92020018 */  lbu        $v0, 0x18($s0)
/* 94598 800DE1D8 30420008 */  andi       $v0, $v0, 0x8
/* 9459C 800DE1DC 10400007 */  beqz       $v0, .Lrace_800DE1FC
/* 945A0 800DE1E0 00000000 */   nop
/* 945A4 800DE1E4 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 945A8 800DE1E8 E6000030 */  swc1       $f0, 0x30($s0)
/* 945AC 800DE1EC C4A00004 */  lwc1       $f0, 0x4($a1)
/* 945B0 800DE1F0 E6000034 */  swc1       $f0, 0x34($s0)
/* 945B4 800DE1F4 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 945B8 800DE1F8 E6000038 */  swc1       $f0, 0x38($s0)
.Lrace_800DE1FC:
/* 945BC 800DE1FC 92020054 */  lbu        $v0, 0x54($s0)
/* 945C0 800DE200 2C4200FF */  sltiu      $v0, $v0, 0xFF
/* 945C4 800DE204 10400003 */  beqz       $v0, .Lrace_800DE214
/* 945C8 800DE208 24020003 */   addiu     $v0, $zero, 0x3
/* 945CC 800DE20C 080378C9 */  j          .Lrace_800DE324
/* 945D0 800DE210 AE020014 */   sw        $v0, 0x14($s0)
.Lrace_800DE214:
/* 945D4 800DE214 8E020028 */  lw         $v0, 0x28($s0)
/* 945D8 800DE218 10400003 */  beqz       $v0, .Lrace_800DE228
/* 945DC 800DE21C 00000000 */   nop
/* 945E0 800DE220 0C037936 */  jal        func_race_800DE4D8
/* 945E4 800DE224 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DE228:
/* 945E8 800DE228 92020018 */  lbu        $v0, 0x18($s0)
/* 945EC 800DE22C 30420001 */  andi       $v0, $v0, 0x1
/* 945F0 800DE230 1440000E */  bnez       $v0, .Lrace_800DE26C
/* 945F4 800DE234 00000000 */   nop
/* 945F8 800DE238 C6000050 */  lwc1       $f0, 0x50($s0)
/* 945FC 800DE23C E7A00010 */  swc1       $f0, 0x10($sp)
/* 94600 800DE240 C6000044 */  lwc1       $f0, 0x44($s0)
/* 94604 800DE244 E7A00014 */  swc1       $f0, 0x14($sp)
/* 94608 800DE248 C6000048 */  lwc1       $f0, 0x48($s0)
/* 9460C 800DE24C E7A00018 */  swc1       $f0, 0x18($sp)
/* 94610 800DE250 8E040024 */  lw         $a0, 0x24($s0)
/* 94614 800DE254 8E05003C */  lw         $a1, 0x3C($s0)
/* 94618 800DE258 8E07004C */  lw         $a3, 0x4C($s0)
/* 9461C 800DE25C 0C046530 */  jal        func_race_801194C0
/* 94620 800DE260 26060030 */   addiu     $a2, $s0, 0x30
/* 94624 800DE264 080378C9 */  j          .Lrace_800DE324
/* 94628 800DE268 00000000 */   nop
.Lrace_800DE26C:
/* 9462C 800DE26C 8E040024 */  lw         $a0, 0x24($s0)
/* 94630 800DE270 8E05003C */  lw         $a1, 0x3C($s0)
/* 94634 800DE274 0C04654F */  jal        func_race_8011953C
/* 94638 800DE278 00000000 */   nop
/* 9463C 800DE27C 10400029 */  beqz       $v0, .Lrace_800DE324
/* 94640 800DE280 AE020020 */   sw        $v0, 0x20($s0)
/* 94644 800DE284 C602004C */  lwc1       $f2, 0x4C($s0)
/* 94648 800DE288 46021082 */  mul.s      $f2, $f2, $f2
/* 9464C 800DE28C C6000050 */  lwc1       $f0, 0x50($s0)
/* 94650 800DE290 46000002 */  mul.s      $f0, $f0, $f0
/* 94654 800DE294 E442002C */  swc1       $f2, 0x2C($v0)
/* 94658 800DE298 E4400030 */  swc1       $f0, 0x30($v0)
/* 9465C 800DE29C 8E040020 */  lw         $a0, 0x20($s0)
/* 94660 800DE2A0 8E050044 */  lw         $a1, 0x44($s0)
/* 94664 800DE2A4 0C01FDE4 */  jal        func_8007F790
/* 94668 800DE2A8 00000000 */   nop
/* 9466C 800DE2AC 8E020020 */  lw         $v0, 0x20($s0)
/* 94670 800DE2B0 C6000048 */  lwc1       $f0, 0x48($s0)
/* 94674 800DE2B4 E4400004 */  swc1       $f0, 0x4($v0)
/* 94678 800DE2B8 8E020020 */  lw         $v0, 0x20($s0)
/* 9467C 800DE2BC 8E080030 */  lw         $t0, 0x30($s0)
/* 94680 800DE2C0 8E090034 */  lw         $t1, 0x34($s0)
/* 94684 800DE2C4 8E0A0038 */  lw         $t2, 0x38($s0)
/* 94688 800DE2C8 AC480014 */  sw         $t0, 0x14($v0)
/* 9468C 800DE2CC AC490018 */  sw         $t1, 0x18($v0)
/* 94690 800DE2D0 AC4A001C */  sw         $t2, 0x1C($v0)
/* 94694 800DE2D4 AFA00020 */  sw         $zero, 0x20($sp)
/* 94698 800DE2D8 AFA00024 */  sw         $zero, 0x24($sp)
/* 9469C 800DE2DC AFA00028 */  sw         $zero, 0x28($sp)
/* 946A0 800DE2E0 8E020020 */  lw         $v0, 0x20($s0)
/* 946A4 800DE2E4 C7A00020 */  lwc1       $f0, 0x20($sp)
/* 946A8 800DE2E8 27A30020 */  addiu      $v1, $sp, 0x20
/* 946AC 800DE2EC E4400020 */  swc1       $f0, 0x20($v0)
/* 946B0 800DE2F0 C4600004 */  lwc1       $f0, 0x4($v1)
/* 946B4 800DE2F4 E4400024 */  swc1       $f0, 0x24($v0)
/* 946B8 800DE2F8 C4600008 */  lwc1       $f0, 0x8($v1)
/* 946BC 800DE2FC E4400028 */  swc1       $f0, 0x28($v0)
/* 946C0 800DE300 8E030020 */  lw         $v1, 0x20($s0)
/* 946C4 800DE304 24020003 */  addiu      $v0, $zero, 0x3
/* 946C8 800DE308 AE020014 */  sw         $v0, 0x14($s0)
/* 946CC 800DE30C 8C620034 */  lw         $v0, 0x34($v1)
/* 946D0 800DE310 24050001 */  addiu      $a1, $zero, 0x1
/* 946D4 800DE314 84440010 */  lh         $a0, 0x10($v0)
/* 946D8 800DE318 8C420014 */  lw         $v0, 0x14($v0)
/* 946DC 800DE31C 0040F809 */  jalr       $v0
/* 946E0 800DE320 00642021 */   addu      $a0, $v1, $a0
.Lrace_800DE324:
/* 946E4 800DE324 8FBF0034 */  lw         $ra, 0x34($sp)
/* 946E8 800DE328 8FB00030 */  lw         $s0, 0x30($sp)
/* 946EC 800DE32C 03E00008 */  jr         $ra
/* 946F0 800DE330 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800DE334
/* 946F4 800DE334 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 946F8 800DE338 AFB00010 */  sw         $s0, 0x10($sp)
/* 946FC 800DE33C 00808021 */  addu       $s0, $a0, $zero
/* 94700 800DE340 AFBF0014 */  sw         $ra, 0x14($sp)
/* 94704 800DE344 8E050020 */  lw         $a1, 0x20($s0)
/* 94708 800DE348 10A00006 */  beqz       $a1, .Lrace_800DE364
/* 9470C 800DE34C 24020001 */   addiu     $v0, $zero, 0x1
/* 94710 800DE350 8E040024 */  lw         $a0, 0x24($s0)
/* 94714 800DE354 0C046564 */  jal        func_race_80119590
/* 94718 800DE358 00000000 */   nop
/* 9471C 800DE35C AE000020 */  sw         $zero, 0x20($s0)
/* 94720 800DE360 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800DE364:
/* 94724 800DE364 AE020014 */  sw         $v0, 0x14($s0)
/* 94728 800DE368 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9472C 800DE36C 8FB00010 */  lw         $s0, 0x10($sp)
/* 94730 800DE370 03E00008 */  jr         $ra
/* 94734 800DE374 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DE378
/* 94738 800DE378 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9473C 800DE37C AFB00020 */  sw         $s0, 0x20($sp)
/* 94740 800DE380 00808021 */  addu       $s0, $a0, $zero
/* 94744 800DE384 AFB10024 */  sw         $s1, 0x24($sp)
/* 94748 800DE388 AFBF0028 */  sw         $ra, 0x28($sp)
/* 9474C 800DE38C 0C03595D */  jal        func_race_800D6574
/* 94750 800DE390 00A08821 */   addu      $s1, $a1, $zero
/* 94754 800DE394 8E030014 */  lw         $v1, 0x14($s0)
/* 94758 800DE398 24020001 */  addiu      $v0, $zero, 0x1
/* 9475C 800DE39C 10620049 */  beq        $v1, $v0, .Lrace_800DE4C4
/* 94760 800DE3A0 00000000 */   nop
/* 94764 800DE3A4 8E030058 */  lw         $v1, 0x58($s0)
/* 94768 800DE3A8 0223102B */  sltu       $v0, $s1, $v1
/* 9476C 800DE3AC 10400003 */  beqz       $v0, .Lrace_800DE3BC
/* 94770 800DE3B0 00711023 */   subu      $v0, $v1, $s1
/* 94774 800DE3B4 080378F0 */  j          .Lrace_800DE3C0
/* 94778 800DE3B8 AE020058 */   sw        $v0, 0x58($s0)
.Lrace_800DE3BC:
/* 9477C 800DE3BC AE000058 */  sw         $zero, 0x58($s0)
.Lrace_800DE3C0:
/* 94780 800DE3C0 8E020028 */  lw         $v0, 0x28($s0)
/* 94784 800DE3C4 10400003 */  beqz       $v0, .Lrace_800DE3D4
/* 94788 800DE3C8 00000000 */   nop
/* 9478C 800DE3CC 0C037936 */  jal        func_race_800DE4D8
/* 94790 800DE3D0 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DE3D4:
/* 94794 800DE3D4 92020054 */  lbu        $v0, 0x54($s0)
/* 94798 800DE3D8 2C4200FF */  sltiu      $v0, $v0, 0xFF
/* 9479C 800DE3DC 10400039 */  beqz       $v0, .Lrace_800DE4C4
/* 947A0 800DE3E0 00000000 */   nop
/* 947A4 800DE3E4 8E020058 */  lw         $v0, 0x58($s0)
/* 947A8 800DE3E8 14400036 */  bnez       $v0, .Lrace_800DE4C4
/* 947AC 800DE3EC 3C078003 */   lui       $a3, %hi(D_8002FAB0)
/* 947B0 800DE3F0 3C041062 */  lui        $a0, (0x10624DD3 >> 16)
/* 947B4 800DE3F4 3C068003 */  lui        $a2, %hi(D_8002F2B0)
/* 947B8 800DE3F8 8CE5FAB0 */  lw         $a1, %lo(D_8002FAB0)($a3)
/* 947BC 800DE3FC 24C6F2B0 */  addiu      $a2, $a2, %lo(D_8002F2B0)
/* 947C0 800DE400 24A50001 */  addiu      $a1, $a1, 0x1
/* 947C4 800DE404 30A503FF */  andi       $a1, $a1, 0x3FF
/* 947C8 800DE408 00051040 */  sll        $v0, $a1, 1
/* 947CC 800DE40C 00461021 */  addu       $v0, $v0, $a2
/* 947D0 800DE410 94430000 */  lhu        $v1, 0x0($v0)
/* 947D4 800DE414 34844DD3 */  ori        $a0, $a0, (0x10624DD3 & 0xFFFF)
/* 947D8 800DE418 00640019 */  multu      $v1, $a0
/* 947DC 800DE41C 00004010 */  mfhi       $t0
/* 947E0 800DE420 00082182 */  srl        $a0, $t0, 6
/* 947E4 800DE424 00041140 */  sll        $v0, $a0, 5
/* 947E8 800DE428 00441023 */  subu       $v0, $v0, $a0
/* 947EC 800DE42C 00021080 */  sll        $v0, $v0, 2
/* 947F0 800DE430 00441021 */  addu       $v0, $v0, $a0
/* 947F4 800DE434 000210C0 */  sll        $v0, $v0, 3
/* 947F8 800DE438 00621823 */  subu       $v1, $v1, $v0
/* 947FC 800DE43C 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 94800 800DE440 246301F4 */  addiu      $v1, $v1, 0x1F4
/* 94804 800DE444 24A40001 */  addiu      $a0, $a1, 0x1
/* 94808 800DE448 308403FF */  andi       $a0, $a0, 0x3FF
/* 9480C 800DE44C 00041040 */  sll        $v0, $a0, 1
/* 94810 800DE450 00461021 */  addu       $v0, $v0, $a2
/* 94814 800DE454 AE030058 */  sw         $v1, 0x58($s0)
/* 94818 800DE458 94430000 */  lhu        $v1, 0x0($v0)
/* 9481C 800DE45C 3C028080 */  lui        $v0, (0x80808081 >> 16)
/* 94820 800DE460 34428081 */  ori        $v0, $v0, (0x80808081 & 0xFFFF)
/* 94824 800DE464 00620019 */  multu      $v1, $v0
/* 94828 800DE468 ACE5FAB0 */  sw         $a1, %lo(D_8002FAB0)($a3)
/* 9482C 800DE46C ACE4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a3)
/* 94830 800DE470 00004010 */  mfhi       $t0
/* 94834 800DE474 000821C2 */  srl        $a0, $t0, 7
/* 94838 800DE478 00041200 */  sll        $v0, $a0, 8
/* 9483C 800DE47C 00441023 */  subu       $v0, $v0, $a0
/* 94840 800DE480 00621823 */  subu       $v1, $v1, $v0
/* 94844 800DE484 92020054 */  lbu        $v0, 0x54($s0)
/* 94848 800DE488 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 9484C 800DE48C 0062182B */  sltu       $v1, $v1, $v0
/* 94850 800DE490 1060000C */  beqz       $v1, .Lrace_800DE4C4
/* 94854 800DE494 00000000 */   nop
/* 94858 800DE498 C6000050 */  lwc1       $f0, 0x50($s0)
/* 9485C 800DE49C E7A00010 */  swc1       $f0, 0x10($sp)
/* 94860 800DE4A0 C6000044 */  lwc1       $f0, 0x44($s0)
/* 94864 800DE4A4 E7A00014 */  swc1       $f0, 0x14($sp)
/* 94868 800DE4A8 C6000048 */  lwc1       $f0, 0x48($s0)
/* 9486C 800DE4AC E7A00018 */  swc1       $f0, 0x18($sp)
/* 94870 800DE4B0 8E040024 */  lw         $a0, 0x24($s0)
/* 94874 800DE4B4 8E05003C */  lw         $a1, 0x3C($s0)
/* 94878 800DE4B8 8E07004C */  lw         $a3, 0x4C($s0)
/* 9487C 800DE4BC 0C046530 */  jal        func_race_801194C0
/* 94880 800DE4C0 26060030 */   addiu     $a2, $s0, 0x30
.Lrace_800DE4C4:
/* 94884 800DE4C4 8FBF0028 */  lw         $ra, 0x28($sp)
/* 94888 800DE4C8 8FB10024 */  lw         $s1, 0x24($sp)
/* 9488C 800DE4CC 8FB00020 */  lw         $s0, 0x20($sp)
/* 94890 800DE4D0 03E00008 */  jr         $ra
/* 94894 800DE4D4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800DE4D8
/* 94898 800DE4D8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 9489C 800DE4DC AFB10034 */  sw         $s1, 0x34($sp)
/* 948A0 800DE4E0 00808821 */  addu       $s1, $a0, $zero
/* 948A4 800DE4E4 AFBF0038 */  sw         $ra, 0x38($sp)
/* 948A8 800DE4E8 AFB00030 */  sw         $s0, 0x30($sp)
/* 948AC 800DE4EC 8E230028 */  lw         $v1, 0x28($s1)
/* 948B0 800DE4F0 8C620024 */  lw         $v0, 0x24($v1)
/* 948B4 800DE4F4 00002821 */  addu       $a1, $zero, $zero
/* 948B8 800DE4F8 844400B8 */  lh         $a0, 0xB8($v0)
/* 948BC 800DE4FC 8C4200BC */  lw         $v0, 0xBC($v0)
/* 948C0 800DE500 0040F809 */  jalr       $v0
/* 948C4 800DE504 00642021 */   addu      $a0, $v1, $a0
/* 948C8 800DE508 8C430008 */  lw         $v1, 0x8($v0)
/* 948CC 800DE50C 8E25002C */  lw         $a1, 0x2C($s1)
/* 948D0 800DE510 84640038 */  lh         $a0, 0x38($v1)
/* 948D4 800DE514 8C63003C */  lw         $v1, 0x3C($v1)
/* 948D8 800DE518 0060F809 */  jalr       $v1
/* 948DC 800DE51C 00442021 */   addu      $a0, $v0, $a0
/* 948E0 800DE520 00408021 */  addu       $s0, $v0, $zero
/* 948E4 800DE524 AFA00020 */  sw         $zero, 0x20($sp)
/* 948E8 800DE528 AFA00024 */  sw         $zero, 0x24($sp)
/* 948EC 800DE52C AFA00028 */  sw         $zero, 0x28($sp)
/* 948F0 800DE530 27A50010 */  addiu      $a1, $sp, 0x10
.Lrace_800DE534:
/* 948F4 800DE534 8FA70020 */  lw         $a3, 0x20($sp)
/* 948F8 800DE538 8FA80024 */  lw         $t0, 0x24($sp)
/* 948FC 800DE53C 8FA90028 */  lw         $t1, 0x28($sp)
/* 94900 800DE540 AFA70010 */  sw         $a3, 0x10($sp)
/* 94904 800DE544 AFA80014 */  sw         $t0, 0x14($sp)
/* 94908 800DE548 AFA90018 */  sw         $t1, 0x18($sp)
/* 9490C 800DE54C 8E02000C */  lw         $v0, 0xC($s0)
/* 94910 800DE550 27A60020 */  addiu      $a2, $sp, 0x20
/* 94914 800DE554 84440010 */  lh         $a0, 0x10($v0)
/* 94918 800DE558 8C420014 */  lw         $v0, 0x14($v0)
/* 9491C 800DE55C 0040F809 */  jalr       $v0
/* 94920 800DE560 02042021 */   addu      $a0, $s0, $a0
/* 94924 800DE564 8E100000 */  lw         $s0, 0x0($s0)
/* 94928 800DE568 1600FFF2 */  bnez       $s0, .Lrace_800DE534
/* 9492C 800DE56C 27A50010 */   addiu     $a1, $sp, 0x10
/* 94930 800DE570 8E230028 */  lw         $v1, 0x28($s1)
/* 94934 800DE574 8C620078 */  lw         $v0, 0x78($v1)
/* 94938 800DE578 C4620058 */  lwc1       $f2, 0x58($v1)
/* 9493C 800DE57C C4400034 */  lwc1       $f0, 0x34($v0)
/* 94940 800DE580 46001082 */  mul.s      $f2, $f2, $f0
/* 94944 800DE584 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 94948 800DE588 46023182 */  mul.s      $f6, $f6, $f2
/* 9494C 800DE58C C7A40024 */  lwc1       $f4, 0x24($sp)
/* 94950 800DE590 46022102 */  mul.s      $f4, $f4, $f2
/* 94954 800DE594 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 94958 800DE598 46020002 */  mul.s      $f0, $f0, $f2
/* 9495C 800DE59C E7A60020 */  swc1       $f6, 0x20($sp)
/* 94960 800DE5A0 E7A40024 */  swc1       $f4, 0x24($sp)
/* 94964 800DE5A4 E7A00028 */  swc1       $f0, 0x28($sp)
/* 94968 800DE5A8 8E230028 */  lw         $v1, 0x28($s1)
/* 9496C 800DE5AC 27A50020 */  addiu      $a1, $sp, 0x20
/* 94970 800DE5B0 8C620024 */  lw         $v0, 0x24($v1)
/* 94974 800DE5B4 26260030 */  addiu      $a2, $s1, 0x30
/* 94978 800DE5B8 84440060 */  lh         $a0, 0x60($v0)
/* 9497C 800DE5BC 8C420064 */  lw         $v0, 0x64($v0)
/* 94980 800DE5C0 0040F809 */  jalr       $v0
/* 94984 800DE5C4 00642021 */   addu      $a0, $v1, $a0
/* 94988 800DE5C8 8E220020 */  lw         $v0, 0x20($s1)
/* 9498C 800DE5CC 10400007 */  beqz       $v0, .Lrace_800DE5EC
/* 94990 800DE5D0 00000000 */   nop
/* 94994 800DE5D4 8E270030 */  lw         $a3, 0x30($s1)
/* 94998 800DE5D8 8E280034 */  lw         $t0, 0x34($s1)
/* 9499C 800DE5DC 8E290038 */  lw         $t1, 0x38($s1)
/* 949A0 800DE5E0 AC470014 */  sw         $a3, 0x14($v0)
/* 949A4 800DE5E4 AC480018 */  sw         $t0, 0x18($v0)
/* 949A8 800DE5E8 AC49001C */  sw         $t1, 0x1C($v0)
.Lrace_800DE5EC:
/* 949AC 800DE5EC 8FBF0038 */  lw         $ra, 0x38($sp)
/* 949B0 800DE5F0 8FB10034 */  lw         $s1, 0x34($sp)
/* 949B4 800DE5F4 8FB00030 */  lw         $s0, 0x30($sp)
/* 949B8 800DE5F8 03E00008 */  jr         $ra
/* 949BC 800DE5FC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800DE600
/* 949C0 800DE600 8C82002C */  lw         $v0, 0x2C($a0)
/* 949C4 800DE604 03E00008 */  jr         $ra
/* 949C8 800DE608 00000000 */   nop

glabel func_race_800DE60C
/* 949CC 800DE60C 8C820028 */  lw         $v0, 0x28($a0)
/* 949D0 800DE610 03E00008 */  jr         $ra
/* 949D4 800DE614 00000000 */   nop

glabel func_race_800DE618
/* 949D8 800DE618 03E00008 */  jr         $ra
/* 949DC 800DE61C AC850050 */   sw        $a1, 0x50($a0)

glabel func_race_800DE620
/* 949E0 800DE620 03E00008 */  jr         $ra
/* 949E4 800DE624 AC85004C */   sw        $a1, 0x4C($a0)

glabel func_race_800DE628
/* 949E8 800DE628 03E00008 */  jr         $ra
/* 949EC 800DE62C AC850048 */   sw        $a1, 0x48($a0)

glabel func_race_800DE630
/* 949F0 800DE630 03E00008 */  jr         $ra
/* 949F4 800DE634 AC850044 */   sw        $a1, 0x44($a0)

glabel func_race_800DE638
/* 949F8 800DE638 03E00008 */  jr         $ra
/* 949FC 800DE63C AC850040 */   sw        $a1, 0x40($a0)

glabel func_race_800DE640
/* 94A00 800DE640 03E00008 */  jr         $ra
/* 94A04 800DE644 AC85003C */   sw        $a1, 0x3C($a0)

glabel func_race_800DE648
/* 94A08 800DE648 90820054 */  lbu        $v0, 0x54($a0)
/* 94A0C 800DE64C 03E00008 */  jr         $ra
/* 94A10 800DE650 00000000 */   nop

glabel func_race_800DE654
/* 94A14 800DE654 C4800050 */  lwc1       $f0, 0x50($a0)
/* 94A18 800DE658 03E00008 */  jr         $ra
/* 94A1C 800DE65C 00000000 */   nop

glabel func_race_800DE660
/* 94A20 800DE660 C480004C */  lwc1       $f0, 0x4C($a0)
/* 94A24 800DE664 03E00008 */  jr         $ra
/* 94A28 800DE668 00000000 */   nop

glabel func_race_800DE66C
/* 94A2C 800DE66C C4800048 */  lwc1       $f0, 0x48($a0)
/* 94A30 800DE670 03E00008 */  jr         $ra
/* 94A34 800DE674 00000000 */   nop

glabel func_race_800DE678
/* 94A38 800DE678 C4800044 */  lwc1       $f0, 0x44($a0)
/* 94A3C 800DE67C 03E00008 */  jr         $ra
/* 94A40 800DE680 00000000 */   nop

glabel func_race_800DE684
/* 94A44 800DE684 8C820040 */  lw         $v0, 0x40($a0)
/* 94A48 800DE688 03E00008 */  jr         $ra
/* 94A4C 800DE68C 00000000 */   nop

glabel func_race_800DE690
/* 94A50 800DE690 03E00008 */  jr         $ra
/* 94A54 800DE694 24820030 */   addiu     $v0, $a0, 0x30

glabel func_race_800DE698
/* 94A58 800DE698 8C82003C */  lw         $v0, 0x3C($a0)
/* 94A5C 800DE69C 03E00008 */  jr         $ra
/* 94A60 800DE6A0 00000000 */   nop

glabel func_race_800DE6A4
/* 94A64 800DE6A4 03E00008 */  jr         $ra
/* 94A68 800DE6A8 00001021 */   addu      $v0, $zero, $zero
