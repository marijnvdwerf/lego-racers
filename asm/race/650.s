.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80111F70
/* C8330 80111F70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8334 80111F74 AFB00010 */  sw         $s0, 0x10($sp)
/* C8338 80111F78 AFBF0014 */  sw         $ra, 0x14($sp)
/* C833C 80111F7C 0C043B98 */  jal        func_race_8010EE60
/* C8340 80111F80 00808021 */   addu      $s0, $a0, $zero
/* C8344 80111F84 02001021 */  addu       $v0, $s0, $zero
/* C8348 80111F88 3C03800D */  lui        $v1, %hi(D_race_800CDE10)
/* C834C 80111F8C 2463DE10 */  addiu      $v1, $v1, %lo(D_race_800CDE10)
/* C8350 80111F90 AC430024 */  sw         $v1, 0x24($v0)
/* C8354 80111F94 AC400048 */  sw         $zero, 0x48($v0)
/* C8358 80111F98 AC40004C */  sw         $zero, 0x4C($v0)
/* C835C 80111F9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C8360 80111FA0 8FB00010 */  lw         $s0, 0x10($sp)
/* C8364 80111FA4 03E00008 */  jr         $ra
/* C8368 80111FA8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80111FAC
/* C836C 80111FAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8370 80111FB0 AFBF0010 */  sw         $ra, 0x10($sp)
/* C8374 80111FB4 AC800048 */  sw         $zero, 0x48($a0)
/* C8378 80111FB8 0C043BA6 */  jal        func_race_8010EE98
/* C837C 80111FBC AC80004C */   sw        $zero, 0x4C($a0)
/* C8380 80111FC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* C8384 80111FC4 03E00008 */  jr         $ra
/* C8388 80111FC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80111FCC
/* C838C 80111FCC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C8390 80111FD0 AFB00010 */  sw         $s0, 0x10($sp)
/* C8394 80111FD4 00808021 */  addu       $s0, $a0, $zero
/* C8398 80111FD8 AFB10014 */  sw         $s1, 0x14($sp)
/* C839C 80111FDC AFBF0018 */  sw         $ra, 0x18($sp)
/* C83A0 80111FE0 0C044822 */  jal        func_race_80112088
/* C83A4 80111FE4 00A08821 */   addu      $s1, $a1, $zero
/* C83A8 80111FE8 02002021 */  addu       $a0, $s0, $zero
/* C83AC 80111FEC 0C043BAD */  jal        func_race_8010EEB4
/* C83B0 80111FF0 02202821 */   addu      $a1, $s1, $zero
/* C83B4 80111FF4 0C0448DC */  jal        func_race_80112370
/* C83B8 80111FF8 02002021 */   addu      $a0, $s0, $zero
/* C83BC 80111FFC 0C044849 */  jal        func_race_80112124
/* C83C0 80112000 02002021 */   addu      $a0, $s0, $zero
/* C83C4 80112004 0C044822 */  jal        func_race_80112088
/* C83C8 80112008 02002021 */   addu      $a0, $s0, $zero
/* C83CC 8011200C 8FBF0018 */  lw         $ra, 0x18($sp)
/* C83D0 80112010 8FB10014 */  lw         $s1, 0x14($sp)
/* C83D4 80112014 8FB00010 */  lw         $s0, 0x10($sp)
/* C83D8 80112018 03E00008 */  jr         $ra
/* C83DC 8011201C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80112020
/* C83E0 80112020 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C83E4 80112024 AFB10014 */  sw         $s1, 0x14($sp)
/* C83E8 80112028 00808821 */  addu       $s1, $a0, $zero
/* C83EC 8011202C AFB00010 */  sw         $s0, 0x10($sp)
/* C83F0 80112030 AFBF0018 */  sw         $ra, 0x18($sp)
/* C83F4 80112034 0C043BBC */  jal        func_race_8010EEF0
/* C83F8 80112038 00A08021 */   addu      $s0, $a1, $zero
/* C83FC 8011203C 1440000D */  bnez       $v0, .Lrace_80112074
/* C8400 80112040 24020001 */   addiu     $v0, $zero, 0x1
/* C8404 80112044 8E030004 */  lw         $v1, 0x4($s0)
/* C8408 80112048 24020004 */  addiu      $v0, $zero, 0x4
/* C840C 8011204C 14620009 */  bne        $v1, $v0, .Lrace_80112074
/* C8410 80112050 00001021 */   addu      $v0, $zero, $zero
/* C8414 80112054 8E220048 */  lw         $v0, 0x48($s1)
/* C8418 80112058 54400001 */  bnel       $v0, $zero, .Lrace_80112060
/* C841C 8011205C AC500018 */   sw        $s0, 0x18($v0)
.Lrace_80112060:
/* C8420 80112060 AE000018 */  sw         $zero, 0x18($s0)
/* C8424 80112064 8E230048 */  lw         $v1, 0x48($s1)
/* C8428 80112068 24020001 */  addiu      $v0, $zero, 0x1
/* C842C 8011206C AE030028 */  sw         $v1, 0x28($s0)
/* C8430 80112070 AE300048 */  sw         $s0, 0x48($s1)
.Lrace_80112074:
/* C8434 80112074 8FBF0018 */  lw         $ra, 0x18($sp)
/* C8438 80112078 8FB10014 */  lw         $s1, 0x14($sp)
/* C843C 8011207C 8FB00010 */  lw         $s0, 0x10($sp)
/* C8440 80112080 03E00008 */  jr         $ra
/* C8444 80112084 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80112088
/* C8448 80112088 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C844C 8011208C AFB20018 */  sw         $s2, 0x18($sp)
/* C8450 80112090 00809021 */  addu       $s2, $a0, $zero
/* C8454 80112094 AFB10014 */  sw         $s1, 0x14($sp)
/* C8458 80112098 00008821 */  addu       $s1, $zero, $zero
/* C845C 8011209C AFBF001C */  sw         $ra, 0x1C($sp)
/* C8460 801120A0 AFB00010 */  sw         $s0, 0x10($sp)
/* C8464 801120A4 8E450048 */  lw         $a1, 0x48($s2)
.Lrace_801120A8:
/* C8468 801120A8 10A00015 */  beqz       $a1, .Lrace_80112100
/* C846C 801120AC 00000000 */   nop
/* C8470 801120B0 8CA20024 */  lw         $v0, 0x24($a1)
/* C8474 801120B4 8CB00028 */  lw         $s0, 0x28($a1)
/* C8478 801120B8 5440000F */  bnel       $v0, $zero, .Lrace_801120F8
/* C847C 801120BC 00A08821 */   addu      $s1, $a1, $zero
/* C8480 801120C0 8E420048 */  lw         $v0, 0x48($s2)
/* C8484 801120C4 14450005 */  bne        $v0, $a1, .Lrace_801120DC
/* C8488 801120C8 00000000 */   nop
/* C848C 801120CC 12000006 */  beqz       $s0, .Lrace_801120E8
/* C8490 801120D0 AE500048 */   sw        $s0, 0x48($s2)
/* C8494 801120D4 0804483A */  j          .Lrace_801120E8
/* C8498 801120D8 AE000018 */   sw        $zero, 0x18($s0)
.Lrace_801120DC:
/* C849C 801120DC 12000002 */  beqz       $s0, .Lrace_801120E8
/* C84A0 801120E0 AE300028 */   sw        $s0, 0x28($s1)
/* C84A4 801120E4 AE110018 */  sw         $s1, 0x18($s0)
.Lrace_801120E8:
/* C84A8 801120E8 0C0405A4 */  jal        func_race_80101690
/* C84AC 801120EC 02402021 */   addu      $a0, $s2, $zero
/* C84B0 801120F0 0804482A */  j          .Lrace_801120A8
/* C84B4 801120F4 02002821 */   addu      $a1, $s0, $zero
.Lrace_801120F8:
/* C84B8 801120F8 0804482A */  j          .Lrace_801120A8
/* C84BC 801120FC 02002821 */   addu      $a1, $s0, $zero
.Lrace_80112100:
/* C84C0 80112100 8FBF001C */  lw         $ra, 0x1C($sp)
/* C84C4 80112104 8FB20018 */  lw         $s2, 0x18($sp)
/* C84C8 80112108 8FB10014 */  lw         $s1, 0x14($sp)
/* C84CC 8011210C 8FB00010 */  lw         $s0, 0x10($sp)
/* C84D0 80112110 03E00008 */  jr         $ra
/* C84D4 80112114 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80112118
/* C84D8 80112118 8CA20014 */  lw         $v0, 0x14($a1)
/* C84DC 8011211C 03E00008 */  jr         $ra
/* C84E0 80112120 00000000 */   nop

glabel func_race_80112124
/* C84E4 80112124 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C84E8 80112128 AFB40020 */  sw         $s4, 0x20($sp)
/* C84EC 8011212C 0080A021 */  addu       $s4, $a0, $zero
/* C84F0 80112130 AFBF0028 */  sw         $ra, 0x28($sp)
/* C84F4 80112134 AFB50024 */  sw         $s5, 0x24($sp)
/* C84F8 80112138 AFB3001C */  sw         $s3, 0x1C($sp)
/* C84FC 8011213C AFB20018 */  sw         $s2, 0x18($sp)
/* C8500 80112140 AFB10014 */  sw         $s1, 0x14($sp)
/* C8504 80112144 AFB00010 */  sw         $s0, 0x10($sp)
/* C8508 80112148 F7B60038 */  sdc1       $f22, 0x38($sp)
/* C850C 8011214C F7B40030 */  sdc1       $f20, 0x30($sp)
/* C8510 80112150 8E95002C */  lw         $s5, 0x2C($s4)
/* C8514 80112154 4480B000 */  mtc1       $zero, $f22
.Lrace_80112158:
/* C8518 80112158 12A0007A */  beqz       $s5, .Lrace_80112344
/* C851C 8011215C 00000000 */   nop
/* C8520 80112160 8EA20024 */  lw         $v0, 0x24($s5)
/* C8524 80112164 10400074 */  beqz       $v0, .Lrace_80112338
/* C8528 80112168 00000000 */   nop
/* C852C 8011216C 8EA20014 */  lw         $v0, 0x14($s5)
/* C8530 80112170 8C5300E0 */  lw         $s3, 0xE0($v0)
/* C8534 80112174 12600070 */  beqz       $s3, .Lrace_80112338
/* C8538 80112178 02802021 */   addu      $a0, $s4, $zero
/* C853C 8011217C 0C043BFA */  jal        func_race_8010EFE8
/* C8540 80112180 02A02821 */   addu      $a1, $s5, $zero
/* C8544 80112184 00409021 */  addu       $s2, $v0, $zero
/* C8548 80112188 8E910048 */  lw         $s1, 0x48($s4)
.Lrace_8011218C:
/* C854C 8011218C 12200025 */  beqz       $s1, .Lrace_80112224
/* C8550 80112190 00000000 */   nop
/* C8554 80112194 8E220024 */  lw         $v0, 0x24($s1)
/* C8558 80112198 1040001F */  beqz       $v0, .Lrace_80112218
/* C855C 8011219C 00000000 */   nop
/* C8560 801121A0 C640000C */  lwc1       $f0, 0xC($s2)
/* C8564 801121A4 8E300014 */  lw         $s0, 0x14($s1)
/* C8568 801121A8 4616003C */  c.lt.s     $f0, $f22
/* C856C 801121AC 00000000 */  nop
/* C8570 801121B0 45000006 */  bc1f       .Lrace_801121CC
/* C8574 801121B4 00000000 */   nop
/* C8578 801121B8 8E420024 */  lw         $v0, 0x24($s2)
/* C857C 801121BC 84440008 */  lh         $a0, 0x8($v0)
/* C8580 801121C0 8C42000C */  lw         $v0, 0xC($v0)
/* C8584 801121C4 0040F809 */  jalr       $v0
/* C8588 801121C8 02442021 */   addu      $a0, $s2, $a0
.Lrace_801121CC:
/* C858C 801121CC C600000C */  lwc1       $f0, 0xC($s0)
/* C8590 801121D0 C6540010 */  lwc1       $f20, 0x10($s2)
/* C8594 801121D4 4616003C */  c.lt.s     $f0, $f22
/* C8598 801121D8 00000000 */  nop
/* C859C 801121DC 45000006 */  bc1f       .Lrace_801121F8
/* C85A0 801121E0 00000000 */   nop
/* C85A4 801121E4 8E020024 */  lw         $v0, 0x24($s0)
/* C85A8 801121E8 84440008 */  lh         $a0, 0x8($v0)
/* C85AC 801121EC 8C42000C */  lw         $v0, 0xC($v0)
/* C85B0 801121F0 0040F809 */  jalr       $v0
/* C85B4 801121F4 02042021 */   addu      $a0, $s0, $a0
.Lrace_801121F8:
/* C85B8 801121F8 C6000014 */  lwc1       $f0, 0x14($s0)
/* C85BC 801121FC 4600A03E */  c.le.s     $f20, $f0
/* C85C0 80112200 00000000 */  nop
/* C85C4 80112204 45010002 */  bc1t       .Lrace_80112210
/* C85C8 80112208 24020001 */   addiu     $v0, $zero, 0x1
/* C85CC 8011220C 00001021 */  addu       $v0, $zero, $zero
.Lrace_80112210:
/* C85D0 80112210 14400004 */  bnez       $v0, .Lrace_80112224
/* C85D4 80112214 00000000 */   nop
.Lrace_80112218:
/* C85D8 80112218 8E310028 */  lw         $s1, 0x28($s1)
/* C85DC 8011221C 08044863 */  j          .Lrace_8011218C
/* C85E0 80112220 00000000 */   nop
.Lrace_80112224:
/* C85E4 80112224 12200044 */  beqz       $s1, .Lrace_80112338
/* C85E8 80112228 00000000 */   nop
/* C85EC 8011222C 8E220024 */  lw         $v0, 0x24($s1)
/* C85F0 80112230 1040003E */  beqz       $v0, .Lrace_8011232C
/* C85F4 80112234 00000000 */   nop
/* C85F8 80112238 8E230008 */  lw         $v1, 0x8($s1)
/* C85FC 8011223C 8E300014 */  lw         $s0, 0x14($s1)
/* C8600 80112240 30620008 */  andi       $v0, $v1, 0x8
/* C8604 80112244 10400005 */  beqz       $v0, .Lrace_8011225C
/* C8608 80112248 00002021 */   addu      $a0, $zero, $zero
/* C860C 8011224C 8E620D08 */  lw         $v0, 0xD08($s3)
/* C8610 80112250 38420002 */  xori       $v0, $v0, 0x2
/* C8614 80112254 50400008 */  beql       $v0, $zero, .Lrace_80112278
/* C8618 80112258 24040001 */   addiu     $a0, $zero, 0x1
.Lrace_8011225C:
/* C861C 8011225C 30620010 */  andi       $v0, $v1, 0x10
/* C8620 80112260 10400005 */  beqz       $v0, .Lrace_80112278
/* C8624 80112264 00000000 */   nop
/* C8628 80112268 8E620D08 */  lw         $v0, 0xD08($s3)
/* C862C 8011226C 38420002 */  xori       $v0, $v0, 0x2
/* C8630 80112270 54400001 */  bnel       $v0, $zero, .Lrace_80112278
/* C8634 80112274 24040001 */   addiu     $a0, $zero, 0x1
.Lrace_80112278:
/* C8638 80112278 1480002C */  bnez       $a0, .Lrace_8011232C
/* C863C 8011227C 00000000 */   nop
/* C8640 80112280 C640000C */  lwc1       $f0, 0xC($s2)
/* C8644 80112284 4616003C */  c.lt.s     $f0, $f22
/* C8648 80112288 00000000 */  nop
/* C864C 8011228C 45000006 */  bc1f       .Lrace_801122A8
/* C8650 80112290 00000000 */   nop
/* C8654 80112294 8E420024 */  lw         $v0, 0x24($s2)
/* C8658 80112298 84440008 */  lh         $a0, 0x8($v0)
/* C865C 8011229C 8C42000C */  lw         $v0, 0xC($v0)
/* C8660 801122A0 0040F809 */  jalr       $v0
/* C8664 801122A4 02442021 */   addu      $a0, $s2, $a0
.Lrace_801122A8:
/* C8668 801122A8 C600000C */  lwc1       $f0, 0xC($s0)
/* C866C 801122AC C6540014 */  lwc1       $f20, 0x14($s2)
/* C8670 801122B0 4616003C */  c.lt.s     $f0, $f22
/* C8674 801122B4 00000000 */  nop
/* C8678 801122B8 45000006 */  bc1f       .Lrace_801122D4
/* C867C 801122BC 00000000 */   nop
/* C8680 801122C0 8E020024 */  lw         $v0, 0x24($s0)
/* C8684 801122C4 84440008 */  lh         $a0, 0x8($v0)
/* C8688 801122C8 8C42000C */  lw         $v0, 0xC($v0)
/* C868C 801122CC 0040F809 */  jalr       $v0
/* C8690 801122D0 02042021 */   addu      $a0, $s0, $a0
.Lrace_801122D4:
/* C8694 801122D4 C6000010 */  lwc1       $f0, 0x10($s0)
/* C8698 801122D8 4600A03C */  c.lt.s     $f20, $f0
/* C869C 801122DC 00000000 */  nop
/* C86A0 801122E0 45010002 */  bc1t       .Lrace_801122EC
/* C86A4 801122E4 24020001 */   addiu     $v0, $zero, 0x1
/* C86A8 801122E8 00001021 */  addu       $v0, $zero, $zero
.Lrace_801122EC:
/* C86AC 801122EC 14400012 */  bnez       $v0, .Lrace_80112338
/* C86B0 801122F0 02002821 */   addu      $a1, $s0, $zero
/* C86B4 801122F4 8E420024 */  lw         $v0, 0x24($s2)
/* C86B8 801122F8 84440038 */  lh         $a0, 0x38($v0)
/* C86BC 801122FC 8C42003C */  lw         $v0, 0x3C($v0)
/* C86C0 80112300 0040F809 */  jalr       $v0
/* C86C4 80112304 02442021 */   addu      $a0, $s2, $a0
/* C86C8 80112308 10400008 */  beqz       $v0, .Lrace_8011232C
/* C86CC 8011230C 02202021 */   addu      $a0, $s1, $zero
/* C86D0 80112310 02802821 */  addu       $a1, $s4, $zero
/* C86D4 80112314 24020004 */  addiu      $v0, $zero, 0x4
/* C86D8 80112318 2686000C */  addiu      $a2, $s4, 0xC
/* C86DC 8011231C AE82000C */  sw         $v0, 0xC($s4)
/* C86E0 80112320 AE90001C */  sw         $s0, 0x1C($s4)
/* C86E4 80112324 0C045AFC */  jal        func_race_80116BF0
/* C86E8 80112328 AE930020 */   sw        $s3, 0x20($s4)
.Lrace_8011232C:
/* C86EC 8011232C 8E310028 */  lw         $s1, 0x28($s1)
/* C86F0 80112330 08044889 */  j          .Lrace_80112224
/* C86F4 80112334 00000000 */   nop
.Lrace_80112338:
/* C86F8 80112338 8EB50028 */  lw         $s5, 0x28($s5)
/* C86FC 8011233C 08044856 */  j          .Lrace_80112158
/* C8700 80112340 00000000 */   nop
.Lrace_80112344:
/* C8704 80112344 8FBF0028 */  lw         $ra, 0x28($sp)
/* C8708 80112348 8FB50024 */  lw         $s5, 0x24($sp)
/* C870C 8011234C 8FB40020 */  lw         $s4, 0x20($sp)
/* C8710 80112350 8FB3001C */  lw         $s3, 0x1C($sp)
/* C8714 80112354 8FB20018 */  lw         $s2, 0x18($sp)
/* C8718 80112358 8FB10014 */  lw         $s1, 0x14($sp)
/* C871C 8011235C 8FB00010 */  lw         $s0, 0x10($sp)
/* C8720 80112360 D7B60038 */  ldc1       $f22, 0x38($sp)
/* C8724 80112364 D7B40030 */  ldc1       $f20, 0x30($sp)
/* C8728 80112368 03E00008 */  jr         $ra
/* C872C 8011236C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_80112370
/* C8730 80112370 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* C8734 80112374 AFB7002C */  sw         $s7, 0x2C($sp)
/* C8738 80112378 0080B821 */  addu       $s7, $a0, $zero
/* C873C 8011237C AFBF0030 */  sw         $ra, 0x30($sp)
/* C8740 80112380 AFB60028 */  sw         $s6, 0x28($sp)
/* C8744 80112384 AFB50024 */  sw         $s5, 0x24($sp)
/* C8748 80112388 AFB40020 */  sw         $s4, 0x20($sp)
/* C874C 8011238C AFB3001C */  sw         $s3, 0x1C($sp)
/* C8750 80112390 AFB20018 */  sw         $s2, 0x18($sp)
/* C8754 80112394 AFB10014 */  sw         $s1, 0x14($sp)
/* C8758 80112398 AFB00010 */  sw         $s0, 0x10($sp)
/* C875C 8011239C F7B80048 */  sdc1       $f24, 0x48($sp)
/* C8760 801123A0 F7B60040 */  sdc1       $f22, 0x40($sp)
/* C8764 801123A4 F7B40038 */  sdc1       $f20, 0x38($sp)
/* C8768 801123A8 8EE20048 */  lw         $v0, 0x48($s7)
/* C876C 801123AC 10400064 */  beqz       $v0, .Lrace_80112540
/* C8770 801123B0 0040B021 */   addu      $s6, $v0, $zero
/* C8774 801123B4 8ED10014 */  lw         $s1, 0x14($s6)
/* C8778 801123B8 4480A000 */  mtc1       $zero, $f20
/* C877C 801123BC C620000C */  lwc1       $f0, 0xC($s1)
/* C8780 801123C0 4614003C */  c.lt.s     $f0, $f20
/* C8784 801123C4 00000000 */  nop
/* C8788 801123C8 45000008 */  bc1f       .Lrace_801123EC
/* C878C 801123CC 4600A586 */   mov.s     $f22, $f20
/* C8790 801123D0 8E220024 */  lw         $v0, 0x24($s1)
/* C8794 801123D4 84440008 */  lh         $a0, 0x8($v0)
/* C8798 801123D8 8C42000C */  lw         $v0, 0xC($v0)
/* C879C 801123DC 0040F809 */  jalr       $v0
/* C87A0 801123E0 02242021 */   addu      $a0, $s1, $a0
/* C87A4 801123E4 4600A586 */  mov.s      $f22, $f20
/* C87A8 801123E8 8EE20048 */  lw         $v0, 0x48($s7)
.Lrace_801123EC:
/* C87AC 801123EC C6380010 */  lwc1       $f24, 0x10($s1)
/* C87B0 801123F0 8C530028 */  lw         $s3, 0x28($v0)
.Lrace_801123F4:
/* C87B4 801123F4 12600052 */  beqz       $s3, .Lrace_80112540
/* C87B8 801123F8 00000000 */   nop
/* C87BC 801123FC 8E710014 */  lw         $s1, 0x14($s3)
/* C87C0 80112400 C620000C */  lwc1       $f0, 0xC($s1)
/* C87C4 80112404 8E750028 */  lw         $s5, 0x28($s3)
/* C87C8 80112408 4616003C */  c.lt.s     $f0, $f22
/* C87CC 8011240C 00000000 */  nop
/* C87D0 80112410 45000006 */  bc1f       .Lrace_8011242C
/* C87D4 80112414 00000000 */   nop
/* C87D8 80112418 8E220024 */  lw         $v0, 0x24($s1)
/* C87DC 8011241C 84440008 */  lh         $a0, 0x8($v0)
/* C87E0 80112420 8C42000C */  lw         $v0, 0xC($v0)
/* C87E4 80112424 0040F809 */  jalr       $v0
/* C87E8 80112428 02242021 */   addu      $a0, $s1, $a0
.Lrace_8011242C:
/* C87EC 8011242C C6200010 */  lwc1       $f0, 0x10($s1)
/* C87F0 80112430 4618003C */  c.lt.s     $f0, $f24
/* C87F4 80112434 00000000 */  nop
/* C87F8 80112438 45000034 */  bc1f       .Lrace_8011250C
/* C87FC 8011243C 00000000 */   nop
/* C8800 80112440 12A00002 */  beqz       $s5, .Lrace_8011244C
/* C8804 80112444 AED50028 */   sw        $s5, 0x28($s6)
/* C8808 80112448 AEB60018 */  sw         $s6, 0x18($s5)
.Lrace_8011244C:
/* C880C 8011244C 8ED20018 */  lw         $s2, 0x18($s6)
.Lrace_80112450:
/* C8810 80112450 52400028 */  beql       $s2, $zero, .Lrace_801124F4
/* C8814 80112454 AE600018 */   sw        $zero, 0x18($s3)
/* C8818 80112458 8E500014 */  lw         $s0, 0x14($s2)
/* C881C 8011245C C620000C */  lwc1       $f0, 0xC($s1)
/* C8820 80112460 4616003C */  c.lt.s     $f0, $f22
/* C8824 80112464 00000000 */  nop
/* C8828 80112468 45000006 */  bc1f       .Lrace_80112484
/* C882C 8011246C 0200A021 */   addu      $s4, $s0, $zero
/* C8830 80112470 8E220024 */  lw         $v0, 0x24($s1)
/* C8834 80112474 84440008 */  lh         $a0, 0x8($v0)
/* C8838 80112478 8C42000C */  lw         $v0, 0xC($v0)
/* C883C 8011247C 0040F809 */  jalr       $v0
/* C8840 80112480 02242021 */   addu      $a0, $s1, $a0
.Lrace_80112484:
/* C8844 80112484 C600000C */  lwc1       $f0, 0xC($s0)
/* C8848 80112488 C6340010 */  lwc1       $f20, 0x10($s1)
/* C884C 8011248C 4616003C */  c.lt.s     $f0, $f22
/* C8850 80112490 00000000 */  nop
/* C8854 80112494 45000006 */  bc1f       .Lrace_801124B0
/* C8858 80112498 00000000 */   nop
/* C885C 8011249C 8E020024 */  lw         $v0, 0x24($s0)
/* C8860 801124A0 84440008 */  lh         $a0, 0x8($v0)
/* C8864 801124A4 8C42000C */  lw         $v0, 0xC($v0)
/* C8868 801124A8 0040F809 */  jalr       $v0
/* C886C 801124AC 02042021 */   addu      $a0, $s0, $a0
.Lrace_801124B0:
/* C8870 801124B0 C6800010 */  lwc1       $f0, 0x10($s4)
/* C8874 801124B4 4614003E */  c.le.s     $f0, $f20
/* C8878 801124B8 00000000 */  nop
/* C887C 801124BC 45010002 */  bc1t       .Lrace_801124C8
/* C8880 801124C0 24020001 */   addiu     $v0, $zero, 0x1
/* C8884 801124C4 00001021 */  addu       $v0, $zero, $zero
.Lrace_801124C8:
/* C8888 801124C8 54400004 */  bnel       $v0, $zero, .Lrace_801124DC
/* C888C 801124CC AE720018 */   sw        $s2, 0x18($s3)
/* C8890 801124D0 8E520018 */  lw         $s2, 0x18($s2)
/* C8894 801124D4 08044914 */  j          .Lrace_80112450
/* C8898 801124D8 00000000 */   nop
.Lrace_801124DC:
/* C889C 801124DC 8E420028 */  lw         $v0, 0x28($s2)
/* C88A0 801124E0 AE620028 */  sw         $v0, 0x28($s3)
/* C88A4 801124E4 8E420028 */  lw         $v0, 0x28($s2)
/* C88A8 801124E8 AC530018 */  sw         $s3, 0x18($v0)
/* C88AC 801124EC 0804494E */  j          .Lrace_80112538
/* C88B0 801124F0 AE530028 */   sw        $s3, 0x28($s2)
.Lrace_801124F4:
/* C88B4 801124F4 8EE20048 */  lw         $v0, 0x48($s7)
/* C88B8 801124F8 AE620028 */  sw         $v0, 0x28($s3)
/* C88BC 801124FC 8EE20048 */  lw         $v0, 0x48($s7)
/* C88C0 80112500 AC530018 */  sw         $s3, 0x18($v0)
/* C88C4 80112504 0804494E */  j          .Lrace_80112538
/* C88C8 80112508 AEF30048 */   sw        $s3, 0x48($s7)
.Lrace_8011250C:
/* C88CC 8011250C C620000C */  lwc1       $f0, 0xC($s1)
/* C88D0 80112510 4616003C */  c.lt.s     $f0, $f22
/* C88D4 80112514 00000000 */  nop
/* C88D8 80112518 45000006 */  bc1f       .Lrace_80112534
/* C88DC 8011251C 0260B021 */   addu      $s6, $s3, $zero
/* C88E0 80112520 8E220024 */  lw         $v0, 0x24($s1)
/* C88E4 80112524 84440008 */  lh         $a0, 0x8($v0)
/* C88E8 80112528 8C42000C */  lw         $v0, 0xC($v0)
/* C88EC 8011252C 0040F809 */  jalr       $v0
/* C88F0 80112530 02242021 */   addu      $a0, $s1, $a0
.Lrace_80112534:
/* C88F4 80112534 C6380010 */  lwc1       $f24, 0x10($s1)
.Lrace_80112538:
/* C88F8 80112538 080448FD */  j          .Lrace_801123F4
/* C88FC 8011253C 02A09821 */   addu      $s3, $s5, $zero
.Lrace_80112540:
/* C8900 80112540 8FBF0030 */  lw         $ra, 0x30($sp)
/* C8904 80112544 8FB7002C */  lw         $s7, 0x2C($sp)
/* C8908 80112548 8FB60028 */  lw         $s6, 0x28($sp)
/* C890C 8011254C 8FB50024 */  lw         $s5, 0x24($sp)
/* C8910 80112550 8FB40020 */  lw         $s4, 0x20($sp)
/* C8914 80112554 8FB3001C */  lw         $s3, 0x1C($sp)
/* C8918 80112558 8FB20018 */  lw         $s2, 0x18($sp)
/* C891C 8011255C 8FB10014 */  lw         $s1, 0x14($sp)
/* C8920 80112560 8FB00010 */  lw         $s0, 0x10($sp)
/* C8924 80112564 D7B80048 */  ldc1       $f24, 0x48($sp)
/* C8928 80112568 D7B60040 */  ldc1       $f22, 0x40($sp)
/* C892C 8011256C D7B40038 */  ldc1       $f20, 0x38($sp)
/* C8930 80112570 03E00008 */  jr         $ra
/* C8934 80112574 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_80112578
/* C8938 80112578 03E00008 */  jr         $ra
/* C893C 8011257C AC85004C */   sw        $a1, 0x4C($a0)

glabel func_race_80112580
/* C8940 80112580 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8944 80112584 AFBF0010 */  sw         $ra, 0x10($sp)
/* C8948 80112588 0C0404D3 */  jal        func_race_8010134C
/* C894C 8011258C 00000000 */   nop
/* C8950 80112590 8FBF0010 */  lw         $ra, 0x10($sp)
/* C8954 80112594 03E00008 */  jr         $ra
/* C8958 80112598 27BD0018 */   addiu     $sp, $sp, 0x18
