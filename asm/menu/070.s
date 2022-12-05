.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800DE240
/* FC330 800DE240 2402FFFF */  addiu      $v0, $zero, -0x1
/* FC334 800DE244 AC820000 */  sw         $v0, 0x0($a0)
/* FC338 800DE248 AC800004 */  sw         $zero, 0x4($a0)
/* FC33C 800DE24C A0800008 */  sb         $zero, 0x8($a0)
/* FC340 800DE250 03E00008 */  jr         $ra
/* FC344 800DE254 A0800009 */   sb        $zero, 0x9($a0)

glabel func_menu_800DE258
/* FC348 800DE258 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* FC34C 800DE25C 8FA90070 */  lw         $t1, 0x70($sp)
/* FC350 800DE260 AFB70054 */  sw         $s7, 0x54($sp)
/* FC354 800DE264 0080B821 */  addu       $s7, $a0, $zero
/* FC358 800DE268 AFBF005C */  sw         $ra, 0x5C($sp)
/* FC35C 800DE26C AFBE0058 */  sw         $fp, 0x58($sp)
/* FC360 800DE270 AFB60050 */  sw         $s6, 0x50($sp)
/* FC364 800DE274 AFB5004C */  sw         $s5, 0x4C($sp)
/* FC368 800DE278 AFB40048 */  sw         $s4, 0x48($sp)
/* FC36C 800DE27C AFB30044 */  sw         $s3, 0x44($sp)
/* FC370 800DE280 AFB20040 */  sw         $s2, 0x40($sp)
/* FC374 800DE284 AFB1003C */  sw         $s1, 0x3C($sp)
/* FC378 800DE288 AFB00038 */  sw         $s0, 0x38($sp)
/* FC37C 800DE28C AFA50064 */  sw         $a1, 0x64($sp)
/* FC380 800DE290 AFA60068 */  sw         $a2, 0x68($sp)
/* FC384 800DE294 31220001 */  andi       $v0, $t1, 0x1
/* FC388 800DE298 10400008 */  beqz       $v0, .Lmenu_800DE2BC
/* FC38C 800DE29C AFA7006C */   sw        $a3, 0x6C($sp)
/* FC390 800DE2A0 0C037D2B */  jal        func_menu_800DF4AC
/* FC394 800DE2A4 00A02021 */   addu      $a0, $a1, $zero
/* FC398 800DE2A8 8FA40064 */  lw         $a0, 0x64($sp)
/* FC39C 800DE2AC 0C037D27 */  jal        func_menu_800DF49C
/* FC3A0 800DE2B0 AFA20018 */   sw        $v0, 0x18($sp)
/* FC3A4 800DE2B4 080378B6 */  j          .Lmenu_800DE2D8
/* FC3A8 800DE2B8 AFA2001C */   sw        $v0, 0x1C($sp)
.Lmenu_800DE2BC:
/* FC3AC 800DE2BC 8FA40064 */  lw         $a0, 0x64($sp)
/* FC3B0 800DE2C0 0C037D27 */  jal        func_menu_800DF49C
/* FC3B4 800DE2C4 00000000 */   nop
/* FC3B8 800DE2C8 8FA40064 */  lw         $a0, 0x64($sp)
/* FC3BC 800DE2CC 0C037D2B */  jal        func_menu_800DF4AC
/* FC3C0 800DE2D0 AFA20018 */   sw        $v0, 0x18($sp)
/* FC3C4 800DE2D4 AFA2001C */  sw         $v0, 0x1C($sp)
.Lmenu_800DE2D8:
/* FC3C8 800DE2D8 8EE20010 */  lw         $v0, 0x10($s7)
/* FC3CC 800DE2DC 1040008A */  beqz       $v0, .Lmenu_800DE508
/* FC3D0 800DE2E0 0000A821 */   addu      $s5, $zero, $zero
.Lmenu_800DE2E4:
/* FC3D4 800DE2E4 8FA20018 */  lw         $v0, 0x18($sp)
/* FC3D8 800DE2E8 02A2102A */  slt        $v0, $s5, $v0
/* FC3DC 800DE2EC 104000BE */  beqz       $v0, .Lmenu_800DE5E8
/* FC3E0 800DE2F0 00009821 */   addu      $s3, $zero, $zero
/* FC3E4 800DE2F4 8FA90068 */  lw         $t1, 0x68($sp)
/* FC3E8 800DE2F8 8FB6006C */  lw         $s6, 0x6C($sp)
/* FC3EC 800DE2FC 01354821 */  addu       $t1, $t1, $s5
/* FC3F0 800DE300 AFA90030 */  sw         $t1, 0x30($sp)
/* FC3F4 800DE304 27A9002C */  addiu      $t1, $sp, 0x2C
/* FC3F8 800DE308 AFA90034 */  sw         $t1, 0x34($sp)
.Lmenu_800DE30C:
/* FC3FC 800DE30C 8FA2001C */  lw         $v0, 0x1C($sp)
/* FC400 800DE310 0262102A */  slt        $v0, $s3, $v0
/* FC404 800DE314 1040007A */  beqz       $v0, .Lmenu_800DE500
/* FC408 800DE318 02A02821 */   addu      $a1, $s5, $zero
/* FC40C 800DE31C 8FA90064 */  lw         $t1, 0x64($sp)
/* FC410 800DE320 8FA70070 */  lw         $a3, 0x70($sp)
/* FC414 800DE324 8D24000C */  lw         $a0, 0xC($t1)
/* FC418 800DE328 0C037CEB */  jal        func_menu_800DF3AC
/* FC41C 800DE32C 02603021 */   addu      $a2, $s3, $zero
/* FC420 800DE330 00409021 */  addu       $s2, $v0, $zero
/* FC424 800DE334 92440000 */  lbu        $a0, 0x0($s2)
/* FC428 800DE338 92480001 */  lbu        $t0, 0x1($s2)
/* FC42C 800DE33C 00881025 */  or         $v0, $a0, $t0
/* FC430 800DE340 3042003F */  andi       $v0, $v0, 0x3F
/* FC434 800DE344 5040006C */  beql       $v0, $zero, .Lmenu_800DE4F8
/* FC438 800DE348 26D60001 */   addiu     $s6, $s6, 0x1
/* FC43C 800DE34C 8EE20004 */  lw         $v0, 0x4($s7)
/* FC440 800DE350 8FA90030 */  lw         $t1, 0x30($sp)
/* FC444 800DE354 01220018 */  mult       $t1, $v0
/* FC448 800DE358 8EE30008 */  lw         $v1, 0x8($s7)
/* FC44C 800DE35C 00004812 */  mflo       $t1
/* FC450 800DE360 01368821 */  addu       $s1, $t1, $s6
/* FC454 800DE364 00111040 */  sll        $v0, $s1, 1
/* FC458 800DE368 00511021 */  addu       $v0, $v0, $s1
/* FC45C 800DE36C 00021080 */  sll        $v0, $v0, 2
/* FC460 800DE370 00433021 */  addu       $a2, $v0, $v1
/* FC464 800DE374 90C20008 */  lbu        $v0, 0x8($a2)
/* FC468 800DE378 10400044 */  beqz       $v0, .Lmenu_800DE48C
/* FC46C 800DE37C 3105003F */   andi      $a1, $t0, 0x3F
/* FC470 800DE380 30A300FF */  andi       $v1, $a1, 0xFF
/* FC474 800DE384 8CD40004 */  lw         $s4, 0x4($a2)
/* FC478 800DE388 3084003F */  andi       $a0, $a0, 0x3F
/* FC47C 800DE38C 0083102A */  slt        $v0, $a0, $v1
/* FC480 800DE390 10400002 */  beqz       $v0, .Lmenu_800DE39C
/* FC484 800DE394 00003821 */   addu      $a3, $zero, $zero
/* FC488 800DE398 00E01821 */  addu       $v1, $a3, $zero
.Lmenu_800DE39C:
/* FC48C 800DE39C 8FA90074 */  lw         $t1, 0x74($sp)
/* FC490 800DE3A0 00691021 */  addu       $v0, $v1, $t1
/* FC494 800DE3A4 5682000B */  bnel       $s4, $v0, .Lmenu_800DE3D4
/* FC498 800DE3A8 24070001 */   addiu     $a3, $zero, 0x1
/* FC49C 800DE3AC 30A300FF */  andi       $v1, $a1, 0xFF
/* FC4A0 800DE3B0 0083102A */  slt        $v0, $a0, $v1
/* FC4A4 800DE3B4 54400002 */  bnel       $v0, $zero, .Lmenu_800DE3C0
/* FC4A8 800DE3B8 00001821 */   addu      $v1, $zero, $zero
/* FC4AC 800DE3BC 8FA90074 */  lw         $t1, 0x74($sp)
.Lmenu_800DE3C0:
/* FC4B0 800DE3C0 00691021 */  addu       $v0, $v1, $t1
/* FC4B4 800DE3C4 16820003 */  bne        $s4, $v0, .Lmenu_800DE3D4
/* FC4B8 800DE3C8 31020040 */   andi      $v0, $t0, 0x40
/* FC4BC 800DE3CC 54400001 */  bnel       $v0, $zero, .Lmenu_800DE3D4
/* FC4C0 800DE3D0 24070001 */   addiu     $a3, $zero, 0x1
.Lmenu_800DE3D4:
/* FC4C4 800DE3D4 10E0002D */  beqz       $a3, .Lmenu_800DE48C
/* FC4C8 800DE3D8 00111040 */   sll       $v0, $s1, 1
/* FC4CC 800DE3DC 00511021 */  addu       $v0, $v0, $s1
/* FC4D0 800DE3E0 8EE30008 */  lw         $v1, 0x8($s7)
/* FC4D4 800DE3E4 00021080 */  sll        $v0, $v0, 2
/* FC4D8 800DE3E8 00431021 */  addu       $v0, $v0, $v1
/* FC4DC 800DE3EC 8C430000 */  lw         $v1, 0x0($v0)
/* FC4E0 800DE3F0 8EE4000C */  lw         $a0, 0xC($s7)
/* FC4E4 800DE3F4 000310C0 */  sll        $v0, $v1, 3
/* FC4E8 800DE3F8 00431023 */  subu       $v0, $v0, $v1
/* FC4EC 800DE3FC 8C83000C */  lw         $v1, 0xC($a0)
/* FC4F0 800DE400 00021080 */  sll        $v0, $v0, 2
/* FC4F4 800DE404 00432021 */  addu       $a0, $v0, $v1
/* FC4F8 800DE408 8C900000 */  lw         $s0, 0x0($a0)
/* FC4FC 800DE40C 96020010 */  lhu        $v0, 0x10($s0)
/* FC500 800DE410 8C9E0004 */  lw         $fp, 0x4($a0)
/* FC504 800DE414 28420800 */  slti       $v0, $v0, 0x800
/* FC508 800DE418 10400014 */  beqz       $v0, .Lmenu_800DE46C
/* FC50C 800DE41C 00001821 */   addu      $v1, $zero, $zero
/* FC510 800DE420 27A50020 */  addiu      $a1, $sp, 0x20
/* FC514 800DE424 27A60024 */  addiu      $a2, $sp, 0x24
/* FC518 800DE428 8FA90034 */  lw         $t1, 0x34($sp)
/* FC51C 800DE42C 27A70028 */  addiu      $a3, $sp, 0x28
/* FC520 800DE430 0C038124 */  jal        func_menu_800E0490
/* FC524 800DE434 AFA90010 */   sw        $t1, 0x10($sp)
/* FC528 800DE438 8E04000C */  lw         $a0, 0xC($s0)
/* FC52C 800DE43C 8FA50020 */  lw         $a1, 0x20($sp)
/* FC530 800DE440 8FA7002C */  lw         $a3, 0x2C($sp)
/* FC534 800DE444 8FA90030 */  lw         $t1, 0x30($sp)
/* FC538 800DE448 8FA60024 */  lw         $a2, 0x24($sp)
/* FC53C 800DE44C 01252823 */  subu       $a1, $t1, $a1
/* FC540 800DE450 02C63023 */  subu       $a2, $s6, $a2
/* FC544 800DE454 AFA50020 */  sw         $a1, 0x20($sp)
/* FC548 800DE458 0C037CEB */  jal        func_menu_800DF3AC
/* FC54C 800DE45C AFA60024 */   sw        $a2, 0x24($sp)
/* FC550 800DE460 0C037CE2 */  jal        func_menu_800DF388
/* FC554 800DE464 00402021 */   addu      $a0, $v0, $zero
/* FC558 800DE468 00401821 */  addu       $v1, $v0, $zero
.Lmenu_800DE46C:
/* FC55C 800DE46C 02C02821 */  addu       $a1, $s6, $zero
/* FC560 800DE470 02803021 */  addu       $a2, $s4, $zero
/* FC564 800DE474 8FA90068 */  lw         $t1, 0x68($sp)
/* FC568 800DE478 03C03821 */  addu       $a3, $fp, $zero
/* FC56C 800DE47C AFA30010 */  sw         $v1, 0x10($sp)
/* FC570 800DE480 8EE20010 */  lw         $v0, 0x10($s7)
/* FC574 800DE484 0040F809 */  jalr       $v0
/* FC578 800DE488 01352021 */   addu      $a0, $t1, $s5
.Lmenu_800DE48C:
/* FC57C 800DE48C 00111840 */  sll        $v1, $s1, 1
/* FC580 800DE490 00711821 */  addu       $v1, $v1, $s1
/* FC584 800DE494 00031880 */  sll        $v1, $v1, 2
/* FC588 800DE498 92420000 */  lbu        $v0, 0x0($s2)
/* FC58C 800DE49C 8EE40008 */  lw         $a0, 0x8($s7)
/* FC590 800DE4A0 30420080 */  andi       $v0, $v0, 0x80
/* FC594 800DE4A4 10400004 */  beqz       $v0, .Lmenu_800DE4B8
/* FC598 800DE4A8 00641821 */   addu      $v1, $v1, $a0
/* FC59C 800DE4AC 24020001 */  addiu      $v0, $zero, 0x1
/* FC5A0 800DE4B0 0803792F */  j          .Lmenu_800DE4BC
/* FC5A4 800DE4B4 A0620008 */   sb        $v0, 0x8($v1)
.Lmenu_800DE4B8:
/* FC5A8 800DE4B8 A0600008 */  sb         $zero, 0x8($v1)
.Lmenu_800DE4BC:
/* FC5AC 800DE4BC 00111040 */  sll        $v0, $s1, 1
/* FC5B0 800DE4C0 00511021 */  addu       $v0, $v0, $s1
/* FC5B4 800DE4C4 00021080 */  sll        $v0, $v0, 2
/* FC5B8 800DE4C8 92430000 */  lbu        $v1, 0x0($s2)
/* FC5BC 800DE4CC 8EE40008 */  lw         $a0, 0x8($s7)
/* FC5C0 800DE4D0 8FA90074 */  lw         $t1, 0x74($sp)
/* FC5C4 800DE4D4 3063003F */  andi       $v1, $v1, 0x3F
/* FC5C8 800DE4D8 00442021 */  addu       $a0, $v0, $a0
/* FC5CC 800DE4DC 00691821 */  addu       $v1, $v1, $t1
/* FC5D0 800DE4E0 AC830004 */  sw         $v1, 0x4($a0)
/* FC5D4 800DE4E4 8EE30008 */  lw         $v1, 0x8($s7)
/* FC5D8 800DE4E8 8FA90078 */  lw         $t1, 0x78($sp)
/* FC5DC 800DE4EC 00431021 */  addu       $v0, $v0, $v1
/* FC5E0 800DE4F0 AC490000 */  sw         $t1, 0x0($v0)
/* FC5E4 800DE4F4 26D60001 */  addiu      $s6, $s6, 0x1
.Lmenu_800DE4F8:
/* FC5E8 800DE4F8 080378C3 */  j          .Lmenu_800DE30C
/* FC5EC 800DE4FC 26730001 */   addiu     $s3, $s3, 0x1
.Lmenu_800DE500:
/* FC5F0 800DE500 080378B9 */  j          .Lmenu_800DE2E4
/* FC5F4 800DE504 26B50001 */   addiu     $s5, $s5, 0x1
.Lmenu_800DE508:
/* FC5F8 800DE508 24140001 */  addiu      $s4, $zero, 0x1
.Lmenu_800DE50C:
/* FC5FC 800DE50C 8FA20018 */  lw         $v0, 0x18($sp)
/* FC600 800DE510 02A2102A */  slt        $v0, $s5, $v0
/* FC604 800DE514 10400034 */  beqz       $v0, .Lmenu_800DE5E8
/* FC608 800DE518 00009821 */   addu      $s3, $zero, $zero
/* FC60C 800DE51C 8FA90068 */  lw         $t1, 0x68($sp)
/* FC610 800DE520 01358021 */  addu       $s0, $t1, $s5
.Lmenu_800DE524:
/* FC614 800DE524 8FA2001C */  lw         $v0, 0x1C($sp)
/* FC618 800DE528 0262102A */  slt        $v0, $s3, $v0
/* FC61C 800DE52C 1040002C */  beqz       $v0, .Lmenu_800DE5E0
/* FC620 800DE530 02A02821 */   addu      $a1, $s5, $zero
/* FC624 800DE534 8FA90064 */  lw         $t1, 0x64($sp)
/* FC628 800DE538 8FA70070 */  lw         $a3, 0x70($sp)
/* FC62C 800DE53C 8D24000C */  lw         $a0, 0xC($t1)
/* FC630 800DE540 0C037CEB */  jal        func_menu_800DF3AC
/* FC634 800DE544 02603021 */   addu      $a2, $s3, $zero
/* FC638 800DE548 00409021 */  addu       $s2, $v0, $zero
/* FC63C 800DE54C 92440000 */  lbu        $a0, 0x0($s2)
/* FC640 800DE550 92420001 */  lbu        $v0, 0x1($s2)
/* FC644 800DE554 00821025 */  or         $v0, $a0, $v0
/* FC648 800DE558 3042003F */  andi       $v0, $v0, 0x3F
/* FC64C 800DE55C 1040001E */  beqz       $v0, .Lmenu_800DE5D8
/* FC650 800DE560 30840080 */   andi      $a0, $a0, 0x80
/* FC654 800DE564 8EE20004 */  lw         $v0, 0x4($s7)
/* FC658 800DE568 02020018 */  mult       $s0, $v0
/* FC65C 800DE56C 8FA9006C */  lw         $t1, 0x6C($sp)
/* FC660 800DE570 8EE30008 */  lw         $v1, 0x8($s7)
/* FC664 800DE574 01331021 */  addu       $v0, $t1, $s3
/* FC668 800DE578 00004812 */  mflo       $t1
/* FC66C 800DE57C 01228821 */  addu       $s1, $t1, $v0
/* FC670 800DE580 00111040 */  sll        $v0, $s1, 1
/* FC674 800DE584 00511021 */  addu       $v0, $v0, $s1
/* FC678 800DE588 00021080 */  sll        $v0, $v0, 2
/* FC67C 800DE58C 10800003 */  beqz       $a0, .Lmenu_800DE59C
/* FC680 800DE590 00431021 */   addu      $v0, $v0, $v1
/* FC684 800DE594 08037968 */  j          .Lmenu_800DE5A0
/* FC688 800DE598 A0540008 */   sb        $s4, 0x8($v0)
.Lmenu_800DE59C:
/* FC68C 800DE59C A0400008 */  sb         $zero, 0x8($v0)
.Lmenu_800DE5A0:
/* FC690 800DE5A0 00111040 */  sll        $v0, $s1, 1
/* FC694 800DE5A4 00511021 */  addu       $v0, $v0, $s1
/* FC698 800DE5A8 00021080 */  sll        $v0, $v0, 2
/* FC69C 800DE5AC 92430000 */  lbu        $v1, 0x0($s2)
/* FC6A0 800DE5B0 8EE40008 */  lw         $a0, 0x8($s7)
/* FC6A4 800DE5B4 8FA90074 */  lw         $t1, 0x74($sp)
/* FC6A8 800DE5B8 3063003F */  andi       $v1, $v1, 0x3F
/* FC6AC 800DE5BC 00442021 */  addu       $a0, $v0, $a0
/* FC6B0 800DE5C0 00691821 */  addu       $v1, $v1, $t1
/* FC6B4 800DE5C4 AC830004 */  sw         $v1, 0x4($a0)
/* FC6B8 800DE5C8 8EE30008 */  lw         $v1, 0x8($s7)
/* FC6BC 800DE5CC 8FA90078 */  lw         $t1, 0x78($sp)
/* FC6C0 800DE5D0 00431021 */  addu       $v0, $v0, $v1
/* FC6C4 800DE5D4 AC490000 */  sw         $t1, 0x0($v0)
.Lmenu_800DE5D8:
/* FC6C8 800DE5D8 08037949 */  j          .Lmenu_800DE524
/* FC6CC 800DE5DC 26730001 */   addiu     $s3, $s3, 0x1
.Lmenu_800DE5E0:
/* FC6D0 800DE5E0 08037943 */  j          .Lmenu_800DE50C
/* FC6D4 800DE5E4 26B50001 */   addiu     $s5, $s5, 0x1
.Lmenu_800DE5E8:
/* FC6D8 800DE5E8 8FBF005C */  lw         $ra, 0x5C($sp)
/* FC6DC 800DE5EC 8FBE0058 */  lw         $fp, 0x58($sp)
/* FC6E0 800DE5F0 8FB70054 */  lw         $s7, 0x54($sp)
/* FC6E4 800DE5F4 8FB60050 */  lw         $s6, 0x50($sp)
/* FC6E8 800DE5F8 8FB5004C */  lw         $s5, 0x4C($sp)
/* FC6EC 800DE5FC 8FB40048 */  lw         $s4, 0x48($sp)
/* FC6F0 800DE600 8FB30044 */  lw         $s3, 0x44($sp)
/* FC6F4 800DE604 8FB20040 */  lw         $s2, 0x40($sp)
/* FC6F8 800DE608 8FB1003C */  lw         $s1, 0x3C($sp)
/* FC6FC 800DE60C 8FB00038 */  lw         $s0, 0x38($sp)
/* FC700 800DE610 03E00008 */  jr         $ra
/* FC704 800DE614 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_menu_800DE618
/* FC708 800DE618 00801021 */  addu       $v0, $a0, $zero
/* FC70C 800DE61C AC400010 */  sw         $zero, 0x10($v0)
/* FC710 800DE620 AC40000C */  sw         $zero, 0xC($v0)
/* FC714 800DE624 03E00008 */  jr         $ra
/* FC718 800DE628 AC400008 */   sw        $zero, 0x8($v0)

glabel func_menu_800DE62C
/* FC71C 800DE62C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FC720 800DE630 AFB10014 */  sw         $s1, 0x14($sp)
/* FC724 800DE634 00808821 */  addu       $s1, $a0, $zero
/* FC728 800DE638 AFB00010 */  sw         $s0, 0x10($sp)
/* FC72C 800DE63C AFBF0018 */  sw         $ra, 0x18($sp)
/* FC730 800DE640 0C03799C */  jal        func_menu_800DE670
/* FC734 800DE644 00A08021 */   addu      $s0, $a1, $zero
/* FC738 800DE648 32100001 */  andi       $s0, $s0, 0x1
/* FC73C 800DE64C 12000003 */  beqz       $s0, .Lmenu_800DE65C
/* FC740 800DE650 00000000 */   nop
/* FC744 800DE654 0C01FB5C */  jal        func_8007ED70
/* FC748 800DE658 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800DE65C:
/* FC74C 800DE65C 8FBF0018 */  lw         $ra, 0x18($sp)
/* FC750 800DE660 8FB10014 */  lw         $s1, 0x14($sp)
/* FC754 800DE664 8FB00010 */  lw         $s0, 0x10($sp)
/* FC758 800DE668 03E00008 */  jr         $ra
/* FC75C 800DE66C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DE670
/* FC760 800DE670 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FC764 800DE674 AFB00010 */  sw         $s0, 0x10($sp)
/* FC768 800DE678 00808021 */  addu       $s0, $a0, $zero
/* FC76C 800DE67C AFBF0014 */  sw         $ra, 0x14($sp)
/* FC770 800DE680 8E040008 */  lw         $a0, 0x8($s0)
/* FC774 800DE684 10800004 */  beqz       $a0, .Lmenu_800DE698
/* FC778 800DE688 00000000 */   nop
/* FC77C 800DE68C 0C009444 */  jal        func_80025110
/* FC780 800DE690 00000000 */   nop
/* FC784 800DE694 AE000008 */  sw         $zero, 0x8($s0)
.Lmenu_800DE698:
/* FC788 800DE698 8FBF0014 */  lw         $ra, 0x14($sp)
/* FC78C 800DE69C 8FB00010 */  lw         $s0, 0x10($sp)
/* FC790 800DE6A0 03E00008 */  jr         $ra
/* FC794 800DE6A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DE6A8
/* FC798 800DE6A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FC79C 800DE6AC AFB20018 */  sw         $s2, 0x18($sp)
/* FC7A0 800DE6B0 00809021 */  addu       $s2, $a0, $zero
/* FC7A4 800DE6B4 AFB00010 */  sw         $s0, 0x10($sp)
/* FC7A8 800DE6B8 00A08021 */  addu       $s0, $a1, $zero
/* FC7AC 800DE6BC AFB10014 */  sw         $s1, 0x14($sp)
/* FC7B0 800DE6C0 AFBF001C */  sw         $ra, 0x1C($sp)
/* FC7B4 800DE6C4 0C03799C */  jal        func_menu_800DE670
/* FC7B8 800DE6C8 00C08821 */   addu      $s1, $a2, $zero
/* FC7BC 800DE6CC 3C028012 */  lui        $v0, %hi(D_menu_801269C8)
/* FC7C0 800DE6D0 8C4469C8 */  lw         $a0, %lo(D_menu_801269C8)($v0)
/* FC7C4 800DE6D4 AE500000 */  sw         $s0, 0x0($s2)
/* FC7C8 800DE6D8 0C01FB65 */  jal        func_8007ED94
/* FC7CC 800DE6DC AE510004 */   sw        $s1, 0x4($s2)
/* FC7D0 800DE6E0 02110018 */  mult       $s0, $s1
/* FC7D4 800DE6E4 00008012 */  mflo       $s0
/* FC7D8 800DE6E8 00102040 */  sll        $a0, $s0, 1
/* FC7DC 800DE6EC 00902021 */  addu       $a0, $a0, $s0
/* FC7E0 800DE6F0 0C00943C */  jal        func_800250F0
/* FC7E4 800DE6F4 00042080 */   sll       $a0, $a0, 2
/* FC7E8 800DE6F8 0C01FB72 */  jal        func_8007EDC8
/* FC7EC 800DE6FC AE420008 */   sw        $v0, 0x8($s2)
/* FC7F0 800DE700 8E420008 */  lw         $v0, 0x8($s2)
/* FC7F4 800DE704 10400004 */  beqz       $v0, .Lmenu_800DE718
/* FC7F8 800DE708 00001021 */   addu      $v0, $zero, $zero
/* FC7FC 800DE70C 0C0379CC */  jal        func_menu_800DE730
/* FC800 800DE710 02402021 */   addu      $a0, $s2, $zero
/* FC804 800DE714 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800DE718:
/* FC808 800DE718 8FBF001C */  lw         $ra, 0x1C($sp)
/* FC80C 800DE71C 8FB20018 */  lw         $s2, 0x18($sp)
/* FC810 800DE720 8FB10014 */  lw         $s1, 0x14($sp)
/* FC814 800DE724 8FB00010 */  lw         $s0, 0x10($sp)
/* FC818 800DE728 03E00008 */  jr         $ra
/* FC81C 800DE72C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DE730
/* FC820 800DE730 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FC824 800DE734 AFB20018 */  sw         $s2, 0x18($sp)
/* FC828 800DE738 00809021 */  addu       $s2, $a0, $zero
/* FC82C 800DE73C AFBF001C */  sw         $ra, 0x1C($sp)
/* FC830 800DE740 AFB10014 */  sw         $s1, 0x14($sp)
/* FC834 800DE744 AFB00010 */  sw         $s0, 0x10($sp)
/* FC838 800DE748 8E420008 */  lw         $v0, 0x8($s2)
/* FC83C 800DE74C 10400016 */  beqz       $v0, .Lmenu_800DE7A8
/* FC840 800DE750 00008821 */   addu      $s1, $zero, $zero
.Lmenu_800DE754:
/* FC844 800DE754 8E420000 */  lw         $v0, 0x0($s2)
/* FC848 800DE758 0222102A */  slt        $v0, $s1, $v0
/* FC84C 800DE75C 10400012 */  beqz       $v0, .Lmenu_800DE7A8
/* FC850 800DE760 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800DE764:
/* FC854 800DE764 8E430004 */  lw         $v1, 0x4($s2)
/* FC858 800DE768 0203102A */  slt        $v0, $s0, $v1
/* FC85C 800DE76C 02230018 */  mult       $s1, $v1
/* FC860 800DE770 1040000B */  beqz       $v0, .Lmenu_800DE7A0
/* FC864 800DE774 00000000 */   nop
/* FC868 800DE778 00002812 */  mflo       $a1
/* FC86C 800DE77C 00B01021 */  addu       $v0, $a1, $s0
/* FC870 800DE780 00022040 */  sll        $a0, $v0, 1
/* FC874 800DE784 00822021 */  addu       $a0, $a0, $v0
/* FC878 800DE788 8E420008 */  lw         $v0, 0x8($s2)
/* FC87C 800DE78C 00042080 */  sll        $a0, $a0, 2
/* FC880 800DE790 0C037890 */  jal        func_menu_800DE240
/* FC884 800DE794 00442021 */   addu      $a0, $v0, $a0
/* FC888 800DE798 080379D9 */  j          .Lmenu_800DE764
/* FC88C 800DE79C 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DE7A0:
/* FC890 800DE7A0 080379D5 */  j          .Lmenu_800DE754
/* FC894 800DE7A4 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800DE7A8:
/* FC898 800DE7A8 8FBF001C */  lw         $ra, 0x1C($sp)
/* FC89C 800DE7AC 8FB20018 */  lw         $s2, 0x18($sp)
/* FC8A0 800DE7B0 8FB10014 */  lw         $s1, 0x14($sp)
/* FC8A4 800DE7B4 8FB00010 */  lw         $s0, 0x10($sp)
/* FC8A8 800DE7B8 03E00008 */  jr         $ra
/* FC8AC 800DE7BC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DE7C0
/* FC8B0 800DE7C0 8C820008 */  lw         $v0, 0x8($a0)
/* FC8B4 800DE7C4 10400016 */  beqz       $v0, .Lmenu_800DE820
/* FC8B8 800DE7C8 00003021 */   addu      $a2, $zero, $zero
.Lmenu_800DE7CC:
/* FC8BC 800DE7CC 8C820000 */  lw         $v0, 0x0($a0)
/* FC8C0 800DE7D0 00C2102A */  slt        $v0, $a2, $v0
/* FC8C4 800DE7D4 10400012 */  beqz       $v0, .Lmenu_800DE820
/* FC8C8 800DE7D8 00002821 */   addu      $a1, $zero, $zero
.Lmenu_800DE7DC:
/* FC8CC 800DE7DC 8C830004 */  lw         $v1, 0x4($a0)
/* FC8D0 800DE7E0 00A3102A */  slt        $v0, $a1, $v1
/* FC8D4 800DE7E4 00C30018 */  mult       $a2, $v1
/* FC8D8 800DE7E8 1040000B */  beqz       $v0, .Lmenu_800DE818
/* FC8DC 800DE7EC 00000000 */   nop
/* FC8E0 800DE7F0 00003812 */  mflo       $a3
/* FC8E4 800DE7F4 00E51821 */  addu       $v1, $a3, $a1
/* FC8E8 800DE7F8 24A50001 */  addiu      $a1, $a1, 0x1
/* FC8EC 800DE7FC 00031040 */  sll        $v0, $v1, 1
/* FC8F0 800DE800 00431021 */  addu       $v0, $v0, $v1
/* FC8F4 800DE804 8C830008 */  lw         $v1, 0x8($a0)
/* FC8F8 800DE808 00021080 */  sll        $v0, $v0, 2
/* FC8FC 800DE80C 00431021 */  addu       $v0, $v0, $v1
/* FC900 800DE810 080379F7 */  j          .Lmenu_800DE7DC
/* FC904 800DE814 A0400009 */   sb        $zero, 0x9($v0)
.Lmenu_800DE818:
/* FC908 800DE818 080379F3 */  j          .Lmenu_800DE7CC
/* FC90C 800DE81C 24C60001 */   addiu     $a2, $a2, 0x1
.Lmenu_800DE820:
/* FC910 800DE820 03E00008 */  jr         $ra
/* FC914 800DE824 00000000 */   nop

glabel func_menu_800DE828
/* FC918 800DE828 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* FC91C 800DE82C AFB70034 */  sw         $s7, 0x34($sp)
/* FC920 800DE830 8FB70050 */  lw         $s7, 0x50($sp)
/* FC924 800DE834 AFB60030 */  sw         $s6, 0x30($sp)
/* FC928 800DE838 0080B021 */  addu       $s6, $a0, $zero
/* FC92C 800DE83C AFB40028 */  sw         $s4, 0x28($sp)
/* FC930 800DE840 00A0A021 */  addu       $s4, $a1, $zero
/* FC934 800DE844 AFBE0038 */  sw         $fp, 0x38($sp)
/* FC938 800DE848 00E0F021 */  addu       $fp, $a3, $zero
/* FC93C 800DE84C AFB30024 */  sw         $s3, 0x24($sp)
/* FC940 800DE850 2413FFFF */  addiu      $s3, $zero, -0x1
/* FC944 800DE854 AFBF003C */  sw         $ra, 0x3C($sp)
/* FC948 800DE858 AFB5002C */  sw         $s5, 0x2C($sp)
/* FC94C 800DE85C AFB20020 */  sw         $s2, 0x20($sp)
/* FC950 800DE860 AFB1001C */  sw         $s1, 0x1C($sp)
/* FC954 800DE864 AFB00018 */  sw         $s0, 0x18($sp)
/* FC958 800DE868 04C00003 */  bltz       $a2, .Lmenu_800DE878
/* FC95C 800DE86C AFA60048 */   sw        $a2, 0x48($sp)
/* FC960 800DE870 07C10003 */  bgez       $fp, .Lmenu_800DE880
/* FC964 800DE874 32E20001 */   andi      $v0, $s7, 0x1
.Lmenu_800DE878:
/* FC968 800DE878 08037A80 */  j          .Lmenu_800DEA00
/* FC96C 800DE87C 2402FFFE */   addiu     $v0, $zero, -0x2
.Lmenu_800DE880:
/* FC970 800DE880 10400008 */  beqz       $v0, .Lmenu_800DE8A4
/* FC974 800DE884 00000000 */   nop
/* FC978 800DE888 0C037D2B */  jal        func_menu_800DF4AC
/* FC97C 800DE88C 02802021 */   addu      $a0, $s4, $zero
/* FC980 800DE890 02802021 */  addu       $a0, $s4, $zero
/* FC984 800DE894 0C037D27 */  jal        func_menu_800DF49C
/* FC988 800DE898 AFA20010 */   sw        $v0, 0x10($sp)
/* FC98C 800DE89C 08037A2F */  j          .Lmenu_800DE8BC
/* FC990 800DE8A0 AFA20014 */   sw        $v0, 0x14($sp)
.Lmenu_800DE8A4:
/* FC994 800DE8A4 0C037D27 */  jal        func_menu_800DF49C
/* FC998 800DE8A8 02802021 */   addu      $a0, $s4, $zero
/* FC99C 800DE8AC 02802021 */  addu       $a0, $s4, $zero
/* FC9A0 800DE8B0 0C037D2B */  jal        func_menu_800DF4AC
/* FC9A4 800DE8B4 AFA20010 */   sw        $v0, 0x10($sp)
/* FC9A8 800DE8B8 AFA20014 */  sw         $v0, 0x14($sp)
.Lmenu_800DE8BC:
/* FC9AC 800DE8BC 8FA20010 */  lw         $v0, 0x10($sp)
/* FC9B0 800DE8C0 8FA80048 */  lw         $t0, 0x48($sp)
/* FC9B4 800DE8C4 8EC30000 */  lw         $v1, 0x0($s6)
/* FC9B8 800DE8C8 01021021 */  addu       $v0, $t0, $v0
/* FC9BC 800DE8CC 0062182A */  slt        $v1, $v1, $v0
/* FC9C0 800DE8D0 1460004B */  bnez       $v1, .Lmenu_800DEA00
/* FC9C4 800DE8D4 2402FFFD */   addiu     $v0, $zero, -0x3
/* FC9C8 800DE8D8 8FA20014 */  lw         $v0, 0x14($sp)
/* FC9CC 800DE8DC 8EC30004 */  lw         $v1, 0x4($s6)
/* FC9D0 800DE8E0 03C21021 */  addu       $v0, $fp, $v0
/* FC9D4 800DE8E4 0062182A */  slt        $v1, $v1, $v0
/* FC9D8 800DE8E8 14600045 */  bnez       $v1, .Lmenu_800DEA00
/* FC9DC 800DE8EC 2402FFFC */   addiu     $v0, $zero, -0x4
/* FC9E0 800DE8F0 00009021 */  addu       $s2, $zero, $zero
.Lmenu_800DE8F4:
/* FC9E4 800DE8F4 8FA20010 */  lw         $v0, 0x10($sp)
/* FC9E8 800DE8F8 0242102A */  slt        $v0, $s2, $v0
/* FC9EC 800DE8FC 1040003F */  beqz       $v0, .Lmenu_800DE9FC
/* FC9F0 800DE900 00008821 */   addu      $s1, $zero, $zero
/* FC9F4 800DE904 8FA80048 */  lw         $t0, 0x48($sp)
/* FC9F8 800DE908 0112A821 */  addu       $s5, $t0, $s2
.Lmenu_800DE90C:
/* FC9FC 800DE90C 8FA20014 */  lw         $v0, 0x14($sp)
/* FCA00 800DE910 0222102A */  slt        $v0, $s1, $v0
/* FCA04 800DE914 10400037 */  beqz       $v0, .Lmenu_800DE9F4
/* FCA08 800DE918 03D11821 */   addu      $v1, $fp, $s1
/* FCA0C 800DE91C 8EC20004 */  lw         $v0, 0x4($s6)
/* FCA10 800DE920 02A20018 */  mult       $s5, $v0
/* FCA14 800DE924 00004012 */  mflo       $t0
/* FCA18 800DE928 01031821 */  addu       $v1, $t0, $v1
/* FCA1C 800DE92C 00031040 */  sll        $v0, $v1, 1
/* FCA20 800DE930 00431021 */  addu       $v0, $v0, $v1
/* FCA24 800DE934 8EC30008 */  lw         $v1, 0x8($s6)
/* FCA28 800DE938 00021080 */  sll        $v0, $v0, 2
/* FCA2C 800DE93C 00431821 */  addu       $v1, $v0, $v1
/* FCA30 800DE940 90620008 */  lbu        $v0, 0x8($v1)
/* FCA34 800DE944 10400012 */  beqz       $v0, .Lmenu_800DE990
/* FCA38 800DE948 02402821 */   addu      $a1, $s2, $zero
/* FCA3C 800DE94C 02203021 */  addu       $a2, $s1, $zero
/* FCA40 800DE950 8E84000C */  lw         $a0, 0xC($s4)
/* FCA44 800DE954 8C700004 */  lw         $s0, 0x4($v1)
/* FCA48 800DE958 0C037CEB */  jal        func_menu_800DF3AC
/* FCA4C 800DE95C 02E03821 */   addu      $a3, $s7, $zero
/* FCA50 800DE960 00402021 */  addu       $a0, $v0, $zero
/* FCA54 800DE964 90830001 */  lbu        $v1, 0x1($a0)
/* FCA58 800DE968 30620080 */  andi       $v0, $v1, 0x80
/* FCA5C 800DE96C 1040001F */  beqz       $v0, .Lmenu_800DE9EC
/* FCA60 800DE970 3063003F */   andi      $v1, $v1, 0x3F
/* FCA64 800DE974 90820000 */  lbu        $v0, 0x0($a0)
/* FCA68 800DE978 3042003F */  andi       $v0, $v0, 0x3F
/* FCA6C 800DE97C 0043102A */  slt        $v0, $v0, $v1
/* FCA70 800DE980 54400001 */  bnel       $v0, $zero, .Lmenu_800DE988
/* FCA74 800DE984 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800DE988:
/* FCA78 800DE988 08037A78 */  j          .Lmenu_800DE9E0
/* FCA7C 800DE98C 02038023 */   subu      $s0, $s0, $v1
.Lmenu_800DE990:
/* FCA80 800DE990 8FA80054 */  lw         $t0, 0x54($sp)
/* FCA84 800DE994 5100FFDD */  beql       $t0, $zero, .Lmenu_800DE90C
/* FCA88 800DE998 26310001 */   addiu     $s1, $s1, 0x1
/* FCA8C 800DE99C 8C620004 */  lw         $v0, 0x4($v1)
/* FCA90 800DE9A0 5440FFDA */  bnel       $v0, $zero, .Lmenu_800DE90C
/* FCA94 800DE9A4 26310001 */   addiu     $s1, $s1, 0x1
/* FCA98 800DE9A8 02402821 */  addu       $a1, $s2, $zero
/* FCA9C 800DE9AC 02203021 */  addu       $a2, $s1, $zero
/* FCAA0 800DE9B0 8E84000C */  lw         $a0, 0xC($s4)
/* FCAA4 800DE9B4 0C037CEB */  jal        func_menu_800DF3AC
/* FCAA8 800DE9B8 02E03821 */   addu      $a3, $s7, $zero
/* FCAAC 800DE9BC 00402021 */  addu       $a0, $v0, $zero
/* FCAB0 800DE9C0 90830001 */  lbu        $v1, 0x1($a0)
/* FCAB4 800DE9C4 90820000 */  lbu        $v0, 0x0($a0)
/* FCAB8 800DE9C8 3063003F */  andi       $v1, $v1, 0x3F
/* FCABC 800DE9CC 3042003F */  andi       $v0, $v0, 0x3F
/* FCAC0 800DE9D0 0043102A */  slt        $v0, $v0, $v1
/* FCAC4 800DE9D4 54400001 */  bnel       $v0, $zero, .Lmenu_800DE9DC
/* FCAC8 800DE9D8 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800DE9DC:
/* FCACC 800DE9DC 00038023 */  negu       $s0, $v1
.Lmenu_800DE9E0:
/* FCAD0 800DE9E0 0270102A */  slt        $v0, $s3, $s0
/* FCAD4 800DE9E4 54400001 */  bnel       $v0, $zero, .Lmenu_800DE9EC
/* FCAD8 800DE9E8 02009821 */   addu      $s3, $s0, $zero
.Lmenu_800DE9EC:
/* FCADC 800DE9EC 08037A43 */  j          .Lmenu_800DE90C
/* FCAE0 800DE9F0 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800DE9F4:
/* FCAE4 800DE9F4 08037A3D */  j          .Lmenu_800DE8F4
/* FCAE8 800DE9F8 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_800DE9FC:
/* FCAEC 800DE9FC 02601021 */  addu       $v0, $s3, $zero
.Lmenu_800DEA00:
/* FCAF0 800DEA00 8FBF003C */  lw         $ra, 0x3C($sp)
/* FCAF4 800DEA04 8FBE0038 */  lw         $fp, 0x38($sp)
/* FCAF8 800DEA08 8FB70034 */  lw         $s7, 0x34($sp)
/* FCAFC 800DEA0C 8FB60030 */  lw         $s6, 0x30($sp)
/* FCB00 800DEA10 8FB5002C */  lw         $s5, 0x2C($sp)
/* FCB04 800DEA14 8FB40028 */  lw         $s4, 0x28($sp)
/* FCB08 800DEA18 8FB30024 */  lw         $s3, 0x24($sp)
/* FCB0C 800DEA1C 8FB20020 */  lw         $s2, 0x20($sp)
/* FCB10 800DEA20 8FB1001C */  lw         $s1, 0x1C($sp)
/* FCB14 800DEA24 8FB00018 */  lw         $s0, 0x18($sp)
/* FCB18 800DEA28 03E00008 */  jr         $ra
/* FCB1C 800DEA2C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800DEA30
/* FCB20 800DEA30 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* FCB24 800DEA34 8FA80050 */  lw         $t0, 0x50($sp)
/* FCB28 800DEA38 AFBE0038 */  sw         $fp, 0x38($sp)
/* FCB2C 800DEA3C 8FBE0054 */  lw         $fp, 0x54($sp)
/* FCB30 800DEA40 AFB60030 */  sw         $s6, 0x30($sp)
/* FCB34 800DEA44 0080B021 */  addu       $s6, $a0, $zero
/* FCB38 800DEA48 AFB70034 */  sw         $s7, 0x34($sp)
/* FCB3C 800DEA4C 00A0B821 */  addu       $s7, $a1, $zero
/* FCB40 800DEA50 AFB40028 */  sw         $s4, 0x28($sp)
/* FCB44 800DEA54 0000A021 */  addu       $s4, $zero, $zero
/* FCB48 800DEA58 AFBF003C */  sw         $ra, 0x3C($sp)
/* FCB4C 800DEA5C AFB5002C */  sw         $s5, 0x2C($sp)
/* FCB50 800DEA60 AFB30024 */  sw         $s3, 0x24($sp)
/* FCB54 800DEA64 AFB20020 */  sw         $s2, 0x20($sp)
/* FCB58 800DEA68 AFB1001C */  sw         $s1, 0x1C($sp)
/* FCB5C 800DEA6C AFB00018 */  sw         $s0, 0x18($sp)
/* FCB60 800DEA70 AFA60048 */  sw         $a2, 0x48($sp)
/* FCB64 800DEA74 31020001 */  andi       $v0, $t0, 0x1
/* FCB68 800DEA78 10400008 */  beqz       $v0, .Lmenu_800DEA9C
/* FCB6C 800DEA7C AFA7004C */   sw        $a3, 0x4C($sp)
/* FCB70 800DEA80 0C037D2B */  jal        func_menu_800DF4AC
/* FCB74 800DEA84 02E02021 */   addu      $a0, $s7, $zero
/* FCB78 800DEA88 02E02021 */  addu       $a0, $s7, $zero
/* FCB7C 800DEA8C 0C037D27 */  jal        func_menu_800DF49C
/* FCB80 800DEA90 AFA20010 */   sw        $v0, 0x10($sp)
/* FCB84 800DEA94 08037AAD */  j          .Lmenu_800DEAB4
/* FCB88 800DEA98 AFA20014 */   sw        $v0, 0x14($sp)
.Lmenu_800DEA9C:
/* FCB8C 800DEA9C 0C037D27 */  jal        func_menu_800DF49C
/* FCB90 800DEAA0 02E02021 */   addu      $a0, $s7, $zero
/* FCB94 800DEAA4 02E02021 */  addu       $a0, $s7, $zero
/* FCB98 800DEAA8 0C037D2B */  jal        func_menu_800DF4AC
/* FCB9C 800DEAAC AFA20010 */   sw        $v0, 0x10($sp)
/* FCBA0 800DEAB0 AFA20014 */  sw         $v0, 0x14($sp)
.Lmenu_800DEAB4:
/* FCBA4 800DEAB4 07C1000A */  bgez       $fp, .Lmenu_800DEAE0
/* FCBA8 800DEAB8 00009821 */   addu      $s3, $zero, $zero
/* FCBAC 800DEABC 0C037D27 */  jal        func_menu_800DF49C
/* FCBB0 800DEAC0 02E02021 */   addu      $a0, $s7, $zero
/* FCBB4 800DEAC4 02E02021 */  addu       $a0, $s7, $zero
/* FCBB8 800DEAC8 0C037D2B */  jal        func_menu_800DF4AC
/* FCBBC 800DEACC 00408021 */   addu      $s0, $v0, $zero
/* FCBC0 800DEAD0 02020018 */  mult       $s0, $v0
/* FCBC4 800DEAD4 00004012 */  mflo       $t0
/* FCBC8 800DEAD8 08037AF3 */  j          .Lmenu_800DEBCC
/* FCBCC 800DEADC 25020001 */   addiu     $v0, $t0, 0x1
.Lmenu_800DEAE0:
/* FCBD0 800DEAE0 8FA20010 */  lw         $v0, 0x10($sp)
/* FCBD4 800DEAE4 0262102A */  slt        $v0, $s3, $v0
/* FCBD8 800DEAE8 10400037 */  beqz       $v0, .Lmenu_800DEBC8
/* FCBDC 800DEAEC 00008821 */   addu      $s1, $zero, $zero
/* FCBE0 800DEAF0 8FA80048 */  lw         $t0, 0x48($sp)
/* FCBE4 800DEAF4 0113A821 */  addu       $s5, $t0, $s3
.Lmenu_800DEAF8:
/* FCBE8 800DEAF8 8FA20014 */  lw         $v0, 0x14($sp)
/* FCBEC 800DEAFC 0222102A */  slt        $v0, $s1, $v0
/* FCBF0 800DEB00 1040002F */  beqz       $v0, .Lmenu_800DEBC0
/* FCBF4 800DEB04 02602821 */   addu      $a1, $s3, $zero
/* FCBF8 800DEB08 8EC20004 */  lw         $v0, 0x4($s6)
/* FCBFC 800DEB0C 02A20018 */  mult       $s5, $v0
/* FCC00 800DEB10 02203021 */  addu       $a2, $s1, $zero
/* FCC04 800DEB14 8FA8004C */  lw         $t0, 0x4C($sp)
/* FCC08 800DEB18 8EE4000C */  lw         $a0, 0xC($s7)
/* FCC0C 800DEB1C 01111021 */  addu       $v0, $t0, $s1
/* FCC10 800DEB20 00004012 */  mflo       $t0
/* FCC14 800DEB24 01021021 */  addu       $v0, $t0, $v0
/* FCC18 800DEB28 00021840 */  sll        $v1, $v0, 1
/* FCC1C 800DEB2C 00621821 */  addu       $v1, $v1, $v0
/* FCC20 800DEB30 8EC20008 */  lw         $v0, 0x8($s6)
/* FCC24 800DEB34 00039080 */  sll        $s2, $v1, 2
/* FCC28 800DEB38 02421021 */  addu       $v0, $s2, $v0
/* FCC2C 800DEB3C 8C420004 */  lw         $v0, 0x4($v0)
/* FCC30 800DEB40 8FA70050 */  lw         $a3, 0x50($sp)
/* FCC34 800DEB44 0C037CEB */  jal        func_menu_800DF3AC
/* FCC38 800DEB48 005E8023 */   subu      $s0, $v0, $fp
/* FCC3C 800DEB4C 90440000 */  lbu        $a0, 0x0($v0)
/* FCC40 800DEB50 90450001 */  lbu        $a1, 0x1($v0)
/* FCC44 800DEB54 00851025 */  or         $v0, $a0, $a1
/* FCC48 800DEB58 3042003F */  andi       $v0, $v0, 0x3F
/* FCC4C 800DEB5C 10400016 */  beqz       $v0, .Lmenu_800DEBB8
/* FCC50 800DEB60 30A3003F */   andi      $v1, $a1, 0x3F
/* FCC54 800DEB64 3082003F */  andi       $v0, $a0, 0x3F
/* FCC58 800DEB68 0043102A */  slt        $v0, $v0, $v1
/* FCC5C 800DEB6C 54400001 */  bnel       $v0, $zero, .Lmenu_800DEB74
/* FCC60 800DEB70 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800DEB74:
/* FCC64 800DEB74 0070102A */  slt        $v0, $v1, $s0
/* FCC68 800DEB78 5440000F */  bnel       $v0, $zero, .Lmenu_800DEBB8
/* FCC6C 800DEB7C 26940001 */   addiu     $s4, $s4, 0x1
/* FCC70 800DEB80 5603FFDD */  bnel       $s0, $v1, .Lmenu_800DEAF8
/* FCC74 800DEB84 26310001 */   addiu     $s1, $s1, 0x1
/* FCC78 800DEB88 8EC20008 */  lw         $v0, 0x8($s6)
/* FCC7C 800DEB8C 02421021 */  addu       $v0, $s2, $v0
/* FCC80 800DEB90 90420008 */  lbu        $v0, 0x8($v0)
/* FCC84 800DEB94 10400005 */  beqz       $v0, .Lmenu_800DEBAC
/* FCC88 800DEB98 00001821 */   addu      $v1, $zero, $zero
/* FCC8C 800DEB9C 30A20080 */  andi       $v0, $a1, 0x80
/* FCC90 800DEBA0 14400002 */  bnez       $v0, .Lmenu_800DEBAC
/* FCC94 800DEBA4 30A20040 */   andi      $v0, $a1, 0x40
/* FCC98 800DEBA8 2C430001 */  sltiu      $v1, $v0, 0x1
.Lmenu_800DEBAC:
/* FCC9C 800DEBAC 5060FFD2 */  beql       $v1, $zero, .Lmenu_800DEAF8
/* FCCA0 800DEBB0 26310001 */   addiu     $s1, $s1, 0x1
/* FCCA4 800DEBB4 26940001 */  addiu      $s4, $s4, 0x1
.Lmenu_800DEBB8:
/* FCCA8 800DEBB8 08037ABE */  j          .Lmenu_800DEAF8
/* FCCAC 800DEBBC 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800DEBC0:
/* FCCB0 800DEBC0 08037AB8 */  j          .Lmenu_800DEAE0
/* FCCB4 800DEBC4 26730001 */   addiu     $s3, $s3, 0x1
.Lmenu_800DEBC8:
/* FCCB8 800DEBC8 02801021 */  addu       $v0, $s4, $zero
.Lmenu_800DEBCC:
/* FCCBC 800DEBCC 8FBF003C */  lw         $ra, 0x3C($sp)
/* FCCC0 800DEBD0 8FBE0038 */  lw         $fp, 0x38($sp)
/* FCCC4 800DEBD4 8FB70034 */  lw         $s7, 0x34($sp)
/* FCCC8 800DEBD8 8FB60030 */  lw         $s6, 0x30($sp)
/* FCCCC 800DEBDC 8FB5002C */  lw         $s5, 0x2C($sp)
/* FCCD0 800DEBE0 8FB40028 */  lw         $s4, 0x28($sp)
/* FCCD4 800DEBE4 8FB30024 */  lw         $s3, 0x24($sp)
/* FCCD8 800DEBE8 8FB20020 */  lw         $s2, 0x20($sp)
/* FCCDC 800DEBEC 8FB1001C */  lw         $s1, 0x1C($sp)
/* FCCE0 800DEBF0 8FB00018 */  lw         $s0, 0x18($sp)
/* FCCE4 800DEBF4 03E00008 */  jr         $ra
/* FCCE8 800DEBF8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800DEBFC
/* FCCEC 800DEBFC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* FCCF0 800DEC00 8FA80054 */  lw         $t0, 0x54($sp)
/* FCCF4 800DEC04 AFB60030 */  sw         $s6, 0x30($sp)
/* FCCF8 800DEC08 0080B021 */  addu       $s6, $a0, $zero
/* FCCFC 800DEC0C AFB70034 */  sw         $s7, 0x34($sp)
/* FCD00 800DEC10 00C0B821 */  addu       $s7, $a2, $zero
/* FCD04 800DEC14 AFBE0038 */  sw         $fp, 0x38($sp)
/* FCD08 800DEC18 00E0F021 */  addu       $fp, $a3, $zero
/* FCD0C 800DEC1C AFBF003C */  sw         $ra, 0x3C($sp)
/* FCD10 800DEC20 AFB5002C */  sw         $s5, 0x2C($sp)
/* FCD14 800DEC24 AFB40028 */  sw         $s4, 0x28($sp)
/* FCD18 800DEC28 AFB30024 */  sw         $s3, 0x24($sp)
/* FCD1C 800DEC2C AFB20020 */  sw         $s2, 0x20($sp)
/* FCD20 800DEC30 AFB1001C */  sw         $s1, 0x1C($sp)
/* FCD24 800DEC34 AFB00018 */  sw         $s0, 0x18($sp)
/* FCD28 800DEC38 31020001 */  andi       $v0, $t0, 0x1
/* FCD2C 800DEC3C 10400008 */  beqz       $v0, .Lmenu_800DEC60
/* FCD30 800DEC40 AFA50044 */   sw        $a1, 0x44($sp)
/* FCD34 800DEC44 0C037D2B */  jal        func_menu_800DF4AC
/* FCD38 800DEC48 02E02021 */   addu      $a0, $s7, $zero
/* FCD3C 800DEC4C 02E02021 */  addu       $a0, $s7, $zero
/* FCD40 800DEC50 0C037D27 */  jal        func_menu_800DF49C
/* FCD44 800DEC54 AFA20010 */   sw        $v0, 0x10($sp)
/* FCD48 800DEC58 08037B1E */  j          .Lmenu_800DEC78
/* FCD4C 800DEC5C AFA20014 */   sw        $v0, 0x14($sp)
.Lmenu_800DEC60:
/* FCD50 800DEC60 0C037D27 */  jal        func_menu_800DF49C
/* FCD54 800DEC64 02E02021 */   addu      $a0, $s7, $zero
/* FCD58 800DEC68 02E02021 */  addu       $a0, $s7, $zero
/* FCD5C 800DEC6C 0C037D2B */  jal        func_menu_800DF4AC
/* FCD60 800DEC70 AFA20010 */   sw        $v0, 0x10($sp)
/* FCD64 800DEC74 AFA20014 */  sw         $v0, 0x14($sp)
.Lmenu_800DEC78:
/* FCD68 800DEC78 8FA80058 */  lw         $t0, 0x58($sp)
/* FCD6C 800DEC7C 05010018 */  bgez       $t0, .Lmenu_800DECE0
/* FCD70 800DEC80 00009021 */   addu      $s2, $zero, $zero
/* FCD74 800DEC84 8FA20010 */  lw         $v0, 0x10($sp)
/* FCD78 800DEC88 18400053 */  blez       $v0, .Lmenu_800DEDD8
/* FCD7C 800DEC8C 00000000 */   nop
.Lmenu_800DEC90:
/* FCD80 800DEC90 8FA20014 */  lw         $v0, 0x14($sp)
/* FCD84 800DEC94 1840000B */  blez       $v0, .Lmenu_800DECC4
/* FCD88 800DEC98 00008021 */   addu      $s0, $zero, $zero
/* FCD8C 800DEC9C 03D22821 */  addu       $a1, $fp, $s2
.Lmenu_800DECA0:
/* FCD90 800DECA0 8FA80050 */  lw         $t0, 0x50($sp)
/* FCD94 800DECA4 8FA40044 */  lw         $a0, 0x44($sp)
/* FCD98 800DECA8 0C036BD3 */  jal        func_menu_800DAF4C
/* FCD9C 800DECAC 01103021 */   addu      $a2, $t0, $s0
/* FCDA0 800DECB0 8FA20014 */  lw         $v0, 0x14($sp)
/* FCDA4 800DECB4 26100001 */  addiu      $s0, $s0, 0x1
/* FCDA8 800DECB8 0202102A */  slt        $v0, $s0, $v0
/* FCDAC 800DECBC 1440FFF8 */  bnez       $v0, .Lmenu_800DECA0
/* FCDB0 800DECC0 03D22821 */   addu      $a1, $fp, $s2
.Lmenu_800DECC4:
/* FCDB4 800DECC4 8FA20010 */  lw         $v0, 0x10($sp)
/* FCDB8 800DECC8 26520001 */  addiu      $s2, $s2, 0x1
/* FCDBC 800DECCC 0242102A */  slt        $v0, $s2, $v0
/* FCDC0 800DECD0 10400041 */  beqz       $v0, .Lmenu_800DEDD8
/* FCDC4 800DECD4 00000000 */   nop
/* FCDC8 800DECD8 08037B24 */  j          .Lmenu_800DEC90
/* FCDCC 800DECDC 00000000 */   nop
.Lmenu_800DECE0:
/* FCDD0 800DECE0 8FA20010 */  lw         $v0, 0x10($sp)
/* FCDD4 800DECE4 0242102A */  slt        $v0, $s2, $v0
/* FCDD8 800DECE8 1040003B */  beqz       $v0, .Lmenu_800DEDD8
/* FCDDC 800DECEC 00008021 */   addu      $s0, $zero, $zero
/* FCDE0 800DECF0 03D2A821 */  addu       $s5, $fp, $s2
/* FCDE4 800DECF4 8FB40050 */  lw         $s4, 0x50($sp)
.Lmenu_800DECF8:
/* FCDE8 800DECF8 8FA20014 */  lw         $v0, 0x14($sp)
/* FCDEC 800DECFC 0202102A */  slt        $v0, $s0, $v0
/* FCDF0 800DED00 10400033 */  beqz       $v0, .Lmenu_800DEDD0
/* FCDF4 800DED04 02402821 */   addu      $a1, $s2, $zero
/* FCDF8 800DED08 8EC20004 */  lw         $v0, 0x4($s6)
/* FCDFC 800DED0C 02A20018 */  mult       $s5, $v0
/* FCE00 800DED10 02003021 */  addu       $a2, $s0, $zero
/* FCE04 800DED14 8EE4000C */  lw         $a0, 0xC($s7)
/* FCE08 800DED18 00004012 */  mflo       $t0
/* FCE0C 800DED1C 01141021 */  addu       $v0, $t0, $s4
/* FCE10 800DED20 00021840 */  sll        $v1, $v0, 1
/* FCE14 800DED24 00621821 */  addu       $v1, $v1, $v0
/* FCE18 800DED28 8EC20008 */  lw         $v0, 0x8($s6)
/* FCE1C 800DED2C 00039880 */  sll        $s3, $v1, 2
/* FCE20 800DED30 02621021 */  addu       $v0, $s3, $v0
/* FCE24 800DED34 8C420004 */  lw         $v0, 0x4($v0)
/* FCE28 800DED38 8FA70054 */  lw         $a3, 0x54($sp)
/* FCE2C 800DED3C 0C037CEB */  jal        func_menu_800DF3AC
/* FCE30 800DED40 24510000 */   addiu     $s1, $v0, 0x0
/* FCE34 800DED44 90450001 */  lbu        $a1, 0x1($v0)
/* FCE38 800DED48 90440000 */  lbu        $a0, 0x0($v0)
/* FCE3C 800DED4C 30A3003F */  andi       $v1, $a1, 0x3F
/* FCE40 800DED50 3082003F */  andi       $v0, $a0, 0x3F
/* FCE44 800DED54 0043102A */  slt        $v0, $v0, $v1
/* FCE48 800DED58 54400001 */  bnel       $v0, $zero, .Lmenu_800DED60
/* FCE4C 800DED5C 00001821 */   addu      $v1, $zero, $zero
.Lmenu_800DED60:
/* FCE50 800DED60 8FA80058 */  lw         $t0, 0x58($sp)
/* FCE54 800DED64 00851025 */  or         $v0, $a0, $a1
/* FCE58 800DED68 3042003F */  andi       $v0, $v0, 0x3F
/* FCE5C 800DED6C 10400015 */  beqz       $v0, .Lmenu_800DEDC4
/* FCE60 800DED70 00681821 */   addu      $v1, $v1, $t0
/* FCE64 800DED74 0071102A */  slt        $v0, $v1, $s1
/* FCE68 800DED78 1440000E */  bnez       $v0, .Lmenu_800DEDB4
/* FCE6C 800DED7C 00000000 */   nop
/* FCE70 800DED80 56230011 */  bnel       $s1, $v1, .Lmenu_800DEDC8
/* FCE74 800DED84 26940001 */   addiu     $s4, $s4, 0x1
/* FCE78 800DED88 8EC20008 */  lw         $v0, 0x8($s6)
/* FCE7C 800DED8C 02621021 */  addu       $v0, $s3, $v0
/* FCE80 800DED90 90420008 */  lbu        $v0, 0x8($v0)
/* FCE84 800DED94 10400005 */  beqz       $v0, .Lmenu_800DEDAC
/* FCE88 800DED98 00001821 */   addu      $v1, $zero, $zero
/* FCE8C 800DED9C 30A20080 */  andi       $v0, $a1, 0x80
/* FCE90 800DEDA0 14400002 */  bnez       $v0, .Lmenu_800DEDAC
/* FCE94 800DEDA4 30A20040 */   andi      $v0, $a1, 0x40
/* FCE98 800DEDA8 2C430001 */  sltiu      $v1, $v0, 0x1
.Lmenu_800DEDAC:
/* FCE9C 800DEDAC 50600006 */  beql       $v1, $zero, .Lmenu_800DEDC8
/* FCEA0 800DEDB0 26940001 */   addiu     $s4, $s4, 0x1
.Lmenu_800DEDB4:
/* FCEA4 800DEDB4 8FA40044 */  lw         $a0, 0x44($sp)
/* FCEA8 800DEDB8 03D22821 */  addu       $a1, $fp, $s2
/* FCEAC 800DEDBC 0C036BD3 */  jal        func_menu_800DAF4C
/* FCEB0 800DEDC0 02803021 */   addu      $a2, $s4, $zero
.Lmenu_800DEDC4:
/* FCEB4 800DEDC4 26940001 */  addiu      $s4, $s4, 0x1
.Lmenu_800DEDC8:
/* FCEB8 800DEDC8 08037B3E */  j          .Lmenu_800DECF8
/* FCEBC 800DEDCC 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DEDD0:
/* FCEC0 800DEDD0 08037B38 */  j          .Lmenu_800DECE0
/* FCEC4 800DEDD4 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_800DEDD8:
/* FCEC8 800DEDD8 8FBF003C */  lw         $ra, 0x3C($sp)
/* FCECC 800DEDDC 8FBE0038 */  lw         $fp, 0x38($sp)
/* FCED0 800DEDE0 8FB70034 */  lw         $s7, 0x34($sp)
/* FCED4 800DEDE4 8FB60030 */  lw         $s6, 0x30($sp)
/* FCED8 800DEDE8 8FB5002C */  lw         $s5, 0x2C($sp)
/* FCEDC 800DEDEC 8FB40028 */  lw         $s4, 0x28($sp)
/* FCEE0 800DEDF0 8FB30024 */  lw         $s3, 0x24($sp)
/* FCEE4 800DEDF4 8FB20020 */  lw         $s2, 0x20($sp)
/* FCEE8 800DEDF8 8FB1001C */  lw         $s1, 0x1C($sp)
/* FCEEC 800DEDFC 8FB00018 */  lw         $s0, 0x18($sp)
/* FCEF0 800DEE00 03E00008 */  jr         $ra
/* FCEF4 800DEE04 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800DEE08
/* FCEF8 800DEE08 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* FCEFC 800DEE0C AFB10024 */  sw         $s1, 0x24($sp)
/* FCF00 800DEE10 00808821 */  addu       $s1, $a0, $zero
/* FCF04 800DEE14 AFB20028 */  sw         $s2, 0x28($sp)
/* FCF08 800DEE18 00A09021 */  addu       $s2, $a1, $zero
/* FCF0C 800DEE1C AFB40030 */  sw         $s4, 0x30($sp)
/* FCF10 800DEE20 00C0A021 */  addu       $s4, $a2, $zero
/* FCF14 800DEE24 AFB50034 */  sw         $s5, 0x34($sp)
/* FCF18 800DEE28 00E0A821 */  addu       $s5, $a3, $zero
/* FCF1C 800DEE2C AFB3002C */  sw         $s3, 0x2C($sp)
/* FCF20 800DEE30 8FB30050 */  lw         $s3, 0x50($sp)
/* FCF24 800DEE34 8FA2005C */  lw         $v0, 0x5C($sp)
/* FCF28 800DEE38 AFBF0038 */  sw         $ra, 0x38($sp)
/* FCF2C 800DEE3C AFB00020 */  sw         $s0, 0x20($sp)
/* FCF30 800DEE40 AFB30010 */  sw         $s3, 0x10($sp)
/* FCF34 800DEE44 0C037A0A */  jal        func_menu_800DE828
/* FCF38 800DEE48 AFA20014 */   sw        $v0, 0x14($sp)
/* FCF3C 800DEE4C 00408021 */  addu       $s0, $v0, $zero
/* FCF40 800DEE50 06000021 */  bltz       $s0, .Lmenu_800DEED8
/* FCF44 800DEE54 02202021 */   addu      $a0, $s1, $zero
/* FCF48 800DEE58 02402821 */  addu       $a1, $s2, $zero
/* FCF4C 800DEE5C 02803021 */  addu       $a2, $s4, $zero
/* FCF50 800DEE60 02A03821 */  addu       $a3, $s5, $zero
/* FCF54 800DEE64 AFB30010 */  sw         $s3, 0x10($sp)
/* FCF58 800DEE68 0C037A8C */  jal        func_menu_800DEA30
/* FCF5C 800DEE6C AFB00014 */   sw        $s0, 0x14($sp)
/* FCF60 800DEE70 1440001A */  bnez       $v0, .Lmenu_800DEEDC
/* FCF64 800DEE74 00001021 */   addu      $v0, $zero, $zero
/* FCF68 800DEE78 8FA20054 */  lw         $v0, 0x54($sp)
/* FCF6C 800DEE7C 02402821 */  addu       $a1, $s2, $zero
/* FCF70 800DEE80 AFA20014 */  sw         $v0, 0x14($sp)
/* FCF74 800DEE84 8FA20058 */  lw         $v0, 0x58($sp)
/* FCF78 800DEE88 02803021 */  addu       $a2, $s4, $zero
/* FCF7C 800DEE8C AFB30010 */  sw         $s3, 0x10($sp)
/* FCF80 800DEE90 AFB0001C */  sw         $s0, 0x1C($sp)
/* FCF84 800DEE94 AFA20018 */  sw         $v0, 0x18($sp)
/* FCF88 800DEE98 8E24000C */  lw         $a0, 0xC($s1)
/* FCF8C 800DEE9C 0C038135 */  jal        func_menu_800E04D4
/* FCF90 800DEEA0 02A03821 */   addu      $a3, $s5, $zero
/* FCF94 800DEEA4 00401821 */  addu       $v1, $v0, $zero
/* FCF98 800DEEA8 2402FFFF */  addiu      $v0, $zero, -0x1
/* FCF9C 800DEEAC 1062000A */  beq        $v1, $v0, .Lmenu_800DEED8
/* FCFA0 800DEEB0 02202021 */   addu      $a0, $s1, $zero
/* FCFA4 800DEEB4 02402821 */  addu       $a1, $s2, $zero
/* FCFA8 800DEEB8 02803021 */  addu       $a2, $s4, $zero
/* FCFAC 800DEEBC 02A03821 */  addu       $a3, $s5, $zero
/* FCFB0 800DEEC0 AFB30010 */  sw         $s3, 0x10($sp)
/* FCFB4 800DEEC4 AFB00014 */  sw         $s0, 0x14($sp)
/* FCFB8 800DEEC8 0C037896 */  jal        func_menu_800DE258
/* FCFBC 800DEECC AFA30018 */   sw        $v1, 0x18($sp)
/* FCFC0 800DEED0 08037BB7 */  j          .Lmenu_800DEEDC
/* FCFC4 800DEED4 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800DEED8:
/* FCFC8 800DEED8 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800DEEDC:
/* FCFCC 800DEEDC 8FBF0038 */  lw         $ra, 0x38($sp)
/* FCFD0 800DEEE0 8FB50034 */  lw         $s5, 0x34($sp)
/* FCFD4 800DEEE4 8FB40030 */  lw         $s4, 0x30($sp)
/* FCFD8 800DEEE8 8FB3002C */  lw         $s3, 0x2C($sp)
/* FCFDC 800DEEEC 8FB20028 */  lw         $s2, 0x28($sp)
/* FCFE0 800DEEF0 8FB10024 */  lw         $s1, 0x24($sp)
/* FCFE4 800DEEF4 8FB00020 */  lw         $s0, 0x20($sp)
/* FCFE8 800DEEF8 03E00008 */  jr         $ra
/* FCFEC 800DEEFC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800DEF00
/* FCFF0 800DEF00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FCFF4 800DEF04 AFBF0010 */  sw         $ra, 0x10($sp)
/* FCFF8 800DEF08 8C84000C */  lw         $a0, 0xC($a0)
/* FCFFC 800DEF0C 0C03837A */  jal        func_menu_800E0DE8
/* FD000 800DEF10 00000000 */   nop
/* FD004 800DEF14 8FBF0010 */  lw         $ra, 0x10($sp)
/* FD008 800DEF18 03E00008 */  jr         $ra
/* FD00C 800DEF1C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DEF20
/* FD010 800DEF20 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* FD014 800DEF24 AFB5003C */  sw         $s5, 0x3C($sp)
/* FD018 800DEF28 0080A821 */  addu       $s5, $a0, $zero
/* FD01C 800DEF2C AFB70044 */  sw         $s7, 0x44($sp)
/* FD020 800DEF30 00A0B821 */  addu       $s7, $a1, $zero
/* FD024 800DEF34 AFB20030 */  sw         $s2, 0x30($sp)
/* FD028 800DEF38 00009021 */  addu       $s2, $zero, $zero
/* FD02C 800DEF3C AFBF0048 */  sw         $ra, 0x48($sp)
/* FD030 800DEF40 AFB60040 */  sw         $s6, 0x40($sp)
/* FD034 800DEF44 AFB40038 */  sw         $s4, 0x38($sp)
/* FD038 800DEF48 AFB30034 */  sw         $s3, 0x34($sp)
/* FD03C 800DEF4C AFB1002C */  sw         $s1, 0x2C($sp)
/* FD040 800DEF50 AFB00028 */  sw         $s0, 0x28($sp)
.Lmenu_800DEF54:
/* FD044 800DEF54 8EA20000 */  lw         $v0, 0x0($s5)
/* FD048 800DEF58 0242102A */  slt        $v0, $s2, $v0
/* FD04C 800DEF5C 1040003B */  beqz       $v0, .Lmenu_800DF04C
/* FD050 800DEF60 00008821 */   addu      $s1, $zero, $zero
/* FD054 800DEF64 27B60024 */  addiu      $s6, $sp, 0x24
.Lmenu_800DEF68:
/* FD058 800DEF68 8EA30004 */  lw         $v1, 0x4($s5)
/* FD05C 800DEF6C 0223102A */  slt        $v0, $s1, $v1
/* FD060 800DEF70 02430018 */  mult       $s2, $v1
/* FD064 800DEF74 10400033 */  beqz       $v0, .Lmenu_800DF044
/* FD068 800DEF78 00000000 */   nop
/* FD06C 800DEF7C 00004012 */  mflo       $t0
/* FD070 800DEF80 01111021 */  addu       $v0, $t0, $s1
/* FD074 800DEF84 00021840 */  sll        $v1, $v0, 1
/* FD078 800DEF88 00621821 */  addu       $v1, $v1, $v0
/* FD07C 800DEF8C 8EA20008 */  lw         $v0, 0x8($s5)
/* FD080 800DEF90 00039880 */  sll        $s3, $v1, 2
/* FD084 800DEF94 02621821 */  addu       $v1, $s3, $v0
/* FD088 800DEF98 90620008 */  lbu        $v0, 0x8($v1)
/* FD08C 800DEF9C 5040FFF2 */  beql       $v0, $zero, .Lmenu_800DEF68
/* FD090 800DEFA0 26310001 */   addiu     $s1, $s1, 0x1
/* FD094 800DEFA4 8C630000 */  lw         $v1, 0x0($v1)
/* FD098 800DEFA8 8EA4000C */  lw         $a0, 0xC($s5)
/* FD09C 800DEFAC 000310C0 */  sll        $v0, $v1, 3
/* FD0A0 800DEFB0 00431023 */  subu       $v0, $v0, $v1
/* FD0A4 800DEFB4 8C83000C */  lw         $v1, 0xC($a0)
/* FD0A8 800DEFB8 00021080 */  sll        $v0, $v0, 2
/* FD0AC 800DEFBC 00432021 */  addu       $a0, $v0, $v1
/* FD0B0 800DEFC0 8C900000 */  lw         $s0, 0x0($a0)
/* FD0B4 800DEFC4 96020010 */  lhu        $v0, 0x10($s0)
/* FD0B8 800DEFC8 8C940004 */  lw         $s4, 0x4($a0)
/* FD0BC 800DEFCC 28420800 */  slti       $v0, $v0, 0x800
/* FD0C0 800DEFD0 10400012 */  beqz       $v0, .Lmenu_800DF01C
/* FD0C4 800DEFD4 00001821 */   addu      $v1, $zero, $zero
/* FD0C8 800DEFD8 27A50018 */  addiu      $a1, $sp, 0x18
/* FD0CC 800DEFDC 27A6001C */  addiu      $a2, $sp, 0x1C
/* FD0D0 800DEFE0 27A70020 */  addiu      $a3, $sp, 0x20
/* FD0D4 800DEFE4 0C038124 */  jal        func_menu_800E0490
/* FD0D8 800DEFE8 AFB60010 */   sw        $s6, 0x10($sp)
/* FD0DC 800DEFEC 8E04000C */  lw         $a0, 0xC($s0)
/* FD0E0 800DEFF0 8FA50018 */  lw         $a1, 0x18($sp)
/* FD0E4 800DEFF4 8FA70024 */  lw         $a3, 0x24($sp)
/* FD0E8 800DEFF8 8FA6001C */  lw         $a2, 0x1C($sp)
/* FD0EC 800DEFFC 02452823 */  subu       $a1, $s2, $a1
/* FD0F0 800DF000 02263023 */  subu       $a2, $s1, $a2
/* FD0F4 800DF004 AFA50018 */  sw         $a1, 0x18($sp)
/* FD0F8 800DF008 0C037CEB */  jal        func_menu_800DF3AC
/* FD0FC 800DF00C AFA6001C */   sw        $a2, 0x1C($sp)
/* FD100 800DF010 0C037CE2 */  jal        func_menu_800DF388
/* FD104 800DF014 00402021 */   addu      $a0, $v0, $zero
/* FD108 800DF018 00401821 */  addu       $v1, $v0, $zero
.Lmenu_800DF01C:
/* FD10C 800DF01C 02402021 */  addu       $a0, $s2, $zero
/* FD110 800DF020 8EA20008 */  lw         $v0, 0x8($s5)
/* FD114 800DF024 02202821 */  addu       $a1, $s1, $zero
/* FD118 800DF028 02621021 */  addu       $v0, $s3, $v0
/* FD11C 800DF02C 8C460004 */  lw         $a2, 0x4($v0)
/* FD120 800DF030 02803821 */  addu       $a3, $s4, $zero
/* FD124 800DF034 02E0F809 */  jalr       $s7
/* FD128 800DF038 AFA30010 */   sw        $v1, 0x10($sp)
/* FD12C 800DF03C 08037BDA */  j          .Lmenu_800DEF68
/* FD130 800DF040 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800DF044:
/* FD134 800DF044 08037BD5 */  j          .Lmenu_800DEF54
/* FD138 800DF048 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_800DF04C:
/* FD13C 800DF04C 8FBF0048 */  lw         $ra, 0x48($sp)
/* FD140 800DF050 8FB70044 */  lw         $s7, 0x44($sp)
/* FD144 800DF054 8FB60040 */  lw         $s6, 0x40($sp)
/* FD148 800DF058 8FB5003C */  lw         $s5, 0x3C($sp)
/* FD14C 800DF05C 8FB40038 */  lw         $s4, 0x38($sp)
/* FD150 800DF060 8FB30034 */  lw         $s3, 0x34($sp)
/* FD154 800DF064 8FB20030 */  lw         $s2, 0x30($sp)
/* FD158 800DF068 8FB1002C */  lw         $s1, 0x2C($sp)
/* FD15C 800DF06C 8FB00028 */  lw         $s0, 0x28($sp)
/* FD160 800DF070 03E00008 */  jr         $ra
/* FD164 800DF074 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800DF078
/* FD168 800DF078 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FD16C 800DF07C AFB00010 */  sw         $s0, 0x10($sp)
/* FD170 800DF080 00808021 */  addu       $s0, $a0, $zero
/* FD174 800DF084 AFBF0014 */  sw         $ra, 0x14($sp)
/* FD178 800DF088 8E04000C */  lw         $a0, 0xC($s0)
/* FD17C 800DF08C 0C03821F */  jal        func_menu_800E087C
/* FD180 800DF090 AE050010 */   sw        $a1, 0x10($s0)
/* FD184 800DF094 AE000010 */  sw         $zero, 0x10($s0)
/* FD188 800DF098 8FBF0014 */  lw         $ra, 0x14($sp)
/* FD18C 800DF09C 8FB00010 */  lw         $s0, 0x10($sp)
/* FD190 800DF0A0 03E00008 */  jr         $ra
/* FD194 800DF0A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DF0A8
/* FD198 800DF0A8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* FD19C 800DF0AC AFB3003C */  sw         $s3, 0x3C($sp)
/* FD1A0 800DF0B0 00809821 */  addu       $s3, $a0, $zero
/* FD1A4 800DF0B4 AFB50044 */  sw         $s5, 0x44($sp)
/* FD1A8 800DF0B8 00A0A821 */  addu       $s5, $a1, $zero
/* FD1AC 800DF0BC AFBF0048 */  sw         $ra, 0x48($sp)
/* FD1B0 800DF0C0 AFB40040 */  sw         $s4, 0x40($sp)
/* FD1B4 800DF0C4 AFB20038 */  sw         $s2, 0x38($sp)
/* FD1B8 800DF0C8 AFB10034 */  sw         $s1, 0x34($sp)
/* FD1BC 800DF0CC 06A10003 */  bgez       $s5, .Lmenu_800DF0DC
/* FD1C0 800DF0D0 AFB00030 */   sw        $s0, 0x30($sp)
/* FD1C4 800DF0D4 08037C7D */  j          .Lmenu_800DF1F4
/* FD1C8 800DF0D8 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800DF0DC:
/* FD1CC 800DF0DC 27A50018 */  addiu      $a1, $sp, 0x18
/* FD1D0 800DF0E0 27A6001C */  addiu      $a2, $sp, 0x1C
/* FD1D4 800DF0E4 27A70020 */  addiu      $a3, $sp, 0x20
/* FD1D8 800DF0E8 001520C0 */  sll        $a0, $s5, 3
/* FD1DC 800DF0EC 8E62000C */  lw         $v0, 0xC($s3)
/* FD1E0 800DF0F0 00952023 */  subu       $a0, $a0, $s5
/* FD1E4 800DF0F4 8C42000C */  lw         $v0, 0xC($v0)
/* FD1E8 800DF0F8 00042080 */  sll        $a0, $a0, 2
/* FD1EC 800DF0FC 00822021 */  addu       $a0, $a0, $v0
/* FD1F0 800DF100 8C940000 */  lw         $s4, 0x0($a0)
/* FD1F4 800DF104 27A20024 */  addiu      $v0, $sp, 0x24
/* FD1F8 800DF108 0C038124 */  jal        func_menu_800E0490
/* FD1FC 800DF10C AFA20010 */   sw        $v0, 0x10($sp)
/* FD200 800DF110 8FA20024 */  lw         $v0, 0x24($sp)
/* FD204 800DF114 30420001 */  andi       $v0, $v0, 0x1
/* FD208 800DF118 10400008 */  beqz       $v0, .Lmenu_800DF13C
/* FD20C 800DF11C 02809021 */   addu      $s2, $s4, $zero
/* FD210 800DF120 0C037D2B */  jal        func_menu_800DF4AC
/* FD214 800DF124 02402021 */   addu      $a0, $s2, $zero
/* FD218 800DF128 02402021 */  addu       $a0, $s2, $zero
/* FD21C 800DF12C 0C037D27 */  jal        func_menu_800DF49C
/* FD220 800DF130 AFA20028 */   sw        $v0, 0x28($sp)
/* FD224 800DF134 08037C55 */  j          .Lmenu_800DF154
/* FD228 800DF138 AFA2002C */   sw        $v0, 0x2C($sp)
.Lmenu_800DF13C:
/* FD22C 800DF13C 0C037D27 */  jal        func_menu_800DF49C
/* FD230 800DF140 02402021 */   addu      $a0, $s2, $zero
/* FD234 800DF144 02402021 */  addu       $a0, $s2, $zero
/* FD238 800DF148 0C037D2B */  jal        func_menu_800DF4AC
/* FD23C 800DF14C AFA20028 */   sw        $v0, 0x28($sp)
/* FD240 800DF150 AFA2002C */  sw         $v0, 0x2C($sp)
.Lmenu_800DF154:
/* FD244 800DF154 00008821 */  addu       $s1, $zero, $zero
.Lmenu_800DF158:
/* FD248 800DF158 8FA20028 */  lw         $v0, 0x28($sp)
/* FD24C 800DF15C 0222102A */  slt        $v0, $s1, $v0
/* FD250 800DF160 10400023 */  beqz       $v0, .Lmenu_800DF1F0
/* FD254 800DF164 00008021 */   addu      $s0, $zero, $zero
.Lmenu_800DF168:
/* FD258 800DF168 8FA2002C */  lw         $v0, 0x2C($sp)
/* FD25C 800DF16C 0202102A */  slt        $v0, $s0, $v0
/* FD260 800DF170 1040001D */  beqz       $v0, .Lmenu_800DF1E8
/* FD264 800DF174 02202821 */   addu      $a1, $s1, $zero
/* FD268 800DF178 8E84000C */  lw         $a0, 0xC($s4)
/* FD26C 800DF17C 8FA70024 */  lw         $a3, 0x24($sp)
/* FD270 800DF180 0C037CEB */  jal        func_menu_800DF3AC
/* FD274 800DF184 02003021 */   addu      $a2, $s0, $zero
/* FD278 800DF188 90430000 */  lbu        $v1, 0x0($v0)
/* FD27C 800DF18C 90420001 */  lbu        $v0, 0x1($v0)
/* FD280 800DF190 00621825 */  or         $v1, $v1, $v0
/* FD284 800DF194 3063003F */  andi       $v1, $v1, 0x3F
/* FD288 800DF198 5060FFF3 */  beql       $v1, $zero, .Lmenu_800DF168
/* FD28C 800DF19C 26100001 */   addiu     $s0, $s0, 0x1
/* FD290 800DF1A0 8FA20018 */  lw         $v0, 0x18($sp)
/* FD294 800DF1A4 8E630004 */  lw         $v1, 0x4($s3)
/* FD298 800DF1A8 00511021 */  addu       $v0, $v0, $s1
/* FD29C 800DF1AC 00430018 */  mult       $v0, $v1
/* FD2A0 800DF1B0 8FA2001C */  lw         $v0, 0x1C($sp)
/* FD2A4 800DF1B4 00501021 */  addu       $v0, $v0, $s0
/* FD2A8 800DF1B8 00004012 */  mflo       $t0
/* FD2AC 800DF1BC 01021021 */  addu       $v0, $t0, $v0
/* FD2B0 800DF1C0 00021840 */  sll        $v1, $v0, 1
/* FD2B4 800DF1C4 00621821 */  addu       $v1, $v1, $v0
/* FD2B8 800DF1C8 8E620008 */  lw         $v0, 0x8($s3)
/* FD2BC 800DF1CC 00031880 */  sll        $v1, $v1, 2
/* FD2C0 800DF1D0 00621821 */  addu       $v1, $v1, $v0
/* FD2C4 800DF1D4 8C620000 */  lw         $v0, 0x0($v1)
/* FD2C8 800DF1D8 56A20001 */  bnel       $s5, $v0, .Lmenu_800DF1E0
/* FD2CC 800DF1DC 00009021 */   addu      $s2, $zero, $zero
.Lmenu_800DF1E0:
/* FD2D0 800DF1E0 08037C5A */  j          .Lmenu_800DF168
/* FD2D4 800DF1E4 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DF1E8:
/* FD2D8 800DF1E8 08037C56 */  j          .Lmenu_800DF158
/* FD2DC 800DF1EC 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800DF1F0:
/* FD2E0 800DF1F0 02401021 */  addu       $v0, $s2, $zero
.Lmenu_800DF1F4:
/* FD2E4 800DF1F4 8FBF0048 */  lw         $ra, 0x48($sp)
/* FD2E8 800DF1F8 8FB50044 */  lw         $s5, 0x44($sp)
/* FD2EC 800DF1FC 8FB40040 */  lw         $s4, 0x40($sp)
/* FD2F0 800DF200 8FB3003C */  lw         $s3, 0x3C($sp)
/* FD2F4 800DF204 8FB20038 */  lw         $s2, 0x38($sp)
/* FD2F8 800DF208 8FB10034 */  lw         $s1, 0x34($sp)
/* FD2FC 800DF20C 8FB00030 */  lw         $s0, 0x30($sp)
/* FD300 800DF210 03E00008 */  jr         $ra
/* FD304 800DF214 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800DF218
/* FD308 800DF218 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FD30C 800DF21C AFB10014 */  sw         $s1, 0x14($sp)
/* FD310 800DF220 00808821 */  addu       $s1, $a0, $zero
/* FD314 800DF224 AFB20018 */  sw         $s2, 0x18($sp)
/* FD318 800DF228 00A09021 */  addu       $s2, $a1, $zero
/* FD31C 800DF22C AFBF001C */  sw         $ra, 0x1C($sp)
/* FD320 800DF230 0C037C2A */  jal        func_menu_800DF0A8
/* FD324 800DF234 AFB00010 */   sw        $s0, 0x10($sp)
/* FD328 800DF238 00408021 */  addu       $s0, $v0, $zero
/* FD32C 800DF23C 12000005 */  beqz       $s0, .Lmenu_800DF254
/* FD330 800DF240 02001021 */   addu      $v0, $s0, $zero
/* FD334 800DF244 8E24000C */  lw         $a0, 0xC($s1)
/* FD338 800DF248 0C038163 */  jal        func_menu_800E058C
/* FD33C 800DF24C 02402821 */   addu      $a1, $s2, $zero
/* FD340 800DF250 02001021 */  addu       $v0, $s0, $zero
.Lmenu_800DF254:
/* FD344 800DF254 8FBF001C */  lw         $ra, 0x1C($sp)
/* FD348 800DF258 8FB20018 */  lw         $s2, 0x18($sp)
/* FD34C 800DF25C 8FB10014 */  lw         $s1, 0x14($sp)
/* FD350 800DF260 8FB00010 */  lw         $s0, 0x10($sp)
/* FD354 800DF264 03E00008 */  jr         $ra
/* FD358 800DF268 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DF26C
/* FD35C 800DF26C 8C820004 */  lw         $v0, 0x4($a0)
/* FD360 800DF270 00A20018 */  mult       $a1, $v0
/* FD364 800DF274 8C830008 */  lw         $v1, 0x8($a0)
/* FD368 800DF278 00003812 */  mflo       $a3
/* FD36C 800DF27C 00E63021 */  addu       $a2, $a3, $a2
/* FD370 800DF280 00061040 */  sll        $v0, $a2, 1
/* FD374 800DF284 00461021 */  addu       $v0, $v0, $a2
/* FD378 800DF288 00021080 */  sll        $v0, $v0, 2
/* FD37C 800DF28C 00431021 */  addu       $v0, $v0, $v1
/* FD380 800DF290 8C450000 */  lw         $a1, 0x0($v0)
/* FD384 800DF294 2402FFFF */  addiu      $v0, $zero, -0x1
/* FD388 800DF298 10A20009 */  beq        $a1, $v0, .Lmenu_800DF2C0
/* FD38C 800DF29C 000510C0 */   sll       $v0, $a1, 3
/* FD390 800DF2A0 8C83000C */  lw         $v1, 0xC($a0)
/* FD394 800DF2A4 00451023 */  subu       $v0, $v0, $a1
/* FD398 800DF2A8 8C63000C */  lw         $v1, 0xC($v1)
/* FD39C 800DF2AC 00021080 */  sll        $v0, $v0, 2
/* FD3A0 800DF2B0 00431021 */  addu       $v0, $v0, $v1
/* FD3A4 800DF2B4 8C420004 */  lw         $v0, 0x4($v0)
/* FD3A8 800DF2B8 03E00008 */  jr         $ra
/* FD3AC 800DF2BC 00000000 */   nop
.Lmenu_800DF2C0:
/* FD3B0 800DF2C0 03E00008 */  jr         $ra
/* FD3B4 800DF2C4 00001021 */   addu      $v0, $zero, $zero

glabel func_menu_800DF2C8
/* FD3B8 800DF2C8 3C028012 */  lui        $v0, %hi(D_menu_801269C8)
/* FD3BC 800DF2CC 03E00008 */  jr         $ra
/* FD3C0 800DF2D0 AC4469C8 */   sw        $a0, %lo(D_menu_801269C8)($v0)
