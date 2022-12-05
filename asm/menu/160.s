.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800E81C0
/* 1062B0 800E81C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1062B4 800E81C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1062B8 800E81C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1062BC 800E81CC 0C03A244 */  jal        func_menu_800E8910
/* 1062C0 800E81D0 00808021 */   addu      $s0, $a0, $zero
/* 1062C4 800E81D4 02001021 */  addu       $v0, $s0, $zero
/* 1062C8 800E81D8 3C03800D */  lui        $v1, %hi(D_menu_800CB498)
/* 1062CC 800E81DC 2463B498 */  addiu      $v1, $v1, %lo(D_menu_800CB498)
/* 1062D0 800E81E0 AC43001C */  sw         $v1, 0x1C($v0)
/* 1062D4 800E81E4 2403FFFF */  addiu      $v1, $zero, -0x1
/* 1062D8 800E81E8 AC400020 */  sw         $zero, 0x20($v0)
/* 1062DC 800E81EC A0400024 */  sb         $zero, 0x24($v0)
/* 1062E0 800E81F0 AC40002C */  sw         $zero, 0x2C($v0)
/* 1062E4 800E81F4 AC430030 */  sw         $v1, 0x30($v0)
/* 1062E8 800E81F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1062EC 800E81FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1062F0 800E8200 03E00008 */  jr         $ra
/* 1062F4 800E8204 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E8208
/* 1062F8 800E8208 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1062FC 800E820C AFB10014 */  sw         $s1, 0x14($sp)
/* 106300 800E8210 00808821 */  addu       $s1, $a0, $zero
/* 106304 800E8214 AFB20018 */  sw         $s2, 0x18($sp)
/* 106308 800E8218 00009021 */  addu       $s2, $zero, $zero
/* 10630C 800E821C AFB00010 */  sw         $s0, 0x10($sp)
/* 106310 800E8220 00C08021 */  addu       $s0, $a2, $zero
/* 106314 800E8224 02002021 */  addu       $a0, $s0, $zero
/* 106318 800E8228 AFBF0028 */  sw         $ra, 0x28($sp)
/* 10631C 800E822C AFB50024 */  sw         $s5, 0x24($sp)
/* 106320 800E8230 AFB40020 */  sw         $s4, 0x20($sp)
/* 106324 800E8234 AFB3001C */  sw         $s3, 0x1C($sp)
/* 106328 800E8238 AE25002C */  sw         $a1, 0x2C($s1)
/* 10632C 800E823C 0C0026F4 */  jal        func_80009BD0
/* 106330 800E8240 24050029 */   addiu     $a1, $zero, 0x29
/* 106334 800E8244 24150006 */  addiu      $s5, $zero, 0x6
/* 106338 800E8248 2414002B */  addiu      $s4, $zero, 0x2B
/* 10633C 800E824C 8E020028 */  lw         $v0, 0x28($s0)
/* 106340 800E8250 2413002A */  addiu      $s3, $zero, 0x2A
/* 106344 800E8254 844400A0 */  lh         $a0, 0xA0($v0)
/* 106348 800E8258 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10634C 800E825C 0040F809 */  jalr       $v0
/* 106350 800E8260 02042021 */   addu      $a0, $s0, $a0
/* 106354 800E8264 02202021 */  addu       $a0, $s1, $zero
/* 106358 800E8268 26050044 */  addiu      $a1, $s0, 0x44
/* 10635C 800E826C 0C000708 */  jal        func_80001C20
/* 106360 800E8270 24060008 */   addiu     $a2, $zero, 0x8
/* 106364 800E8274 02002021 */  addu       $a0, $s0, $zero
/* 106368 800E8278 0C0026F4 */  jal        func_80009BD0
/* 10636C 800E827C 24050005 */   addiu     $a1, $zero, 0x5
.Lmenu_800E8280:
/* 106370 800E8280 8E020028 */  lw         $v0, 0x28($s0)
/* 106374 800E8284 844400A0 */  lh         $a0, 0xA0($v0)
/* 106378 800E8288 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10637C 800E828C 0040F809 */  jalr       $v0
/* 106380 800E8290 02042021 */   addu      $a0, $s0, $a0
/* 106384 800E8294 00401821 */  addu       $v1, $v0, $zero
/* 106388 800E8298 10750026 */  beq        $v1, $s5, .Lmenu_800E8334
/* 10638C 800E829C 00000000 */   nop
/* 106390 800E82A0 10740018 */  beq        $v1, $s4, .Lmenu_800E8304
/* 106394 800E82A4 2C62002C */   sltiu     $v0, $v1, 0x2C
/* 106398 800E82A8 10400005 */  beqz       $v0, .Lmenu_800E82C0
/* 10639C 800E82AC 2402002C */   addiu     $v0, $zero, 0x2C
/* 1063A0 800E82B0 10730009 */  beq        $v1, $s3, .Lmenu_800E82D8
/* 1063A4 800E82B4 00000000 */   nop
/* 1063A8 800E82B8 0803A0A0 */  j          .Lmenu_800E8280
/* 1063AC 800E82BC 00000000 */   nop
.Lmenu_800E82C0:
/* 1063B0 800E82C0 10620014 */  beq        $v1, $v0, .Lmenu_800E8314
/* 1063B4 800E82C4 2402002D */   addiu     $v0, $zero, 0x2D
/* 1063B8 800E82C8 10620016 */  beq        $v1, $v0, .Lmenu_800E8324
/* 1063BC 800E82CC 00000000 */   nop
/* 1063C0 800E82D0 0803A0A0 */  j          .Lmenu_800E8280
/* 1063C4 800E82D4 00000000 */   nop
.Lmenu_800E82D8:
/* 1063C8 800E82D8 8E020028 */  lw         $v0, 0x28($s0)
/* 1063CC 800E82DC 844400A0 */  lh         $a0, 0xA0($v0)
/* 1063D0 800E82E0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 1063D4 800E82E4 0040F809 */  jalr       $v0
/* 1063D8 800E82E8 02042021 */   addu      $a0, $s0, $a0
/* 1063DC 800E82EC 26240024 */  addiu      $a0, $s1, 0x24
/* 1063E0 800E82F0 26050044 */  addiu      $a1, $s0, 0x44
/* 1063E4 800E82F4 0C000708 */  jal        func_80001C20
/* 1063E8 800E82F8 24060008 */   addiu     $a2, $zero, 0x8
/* 1063EC 800E82FC 0803A0A0 */  j          .Lmenu_800E8280
/* 1063F0 800E8300 00000000 */   nop
.Lmenu_800E8304:
/* 1063F4 800E8304 0C002680 */  jal        func_80009A00
/* 1063F8 800E8308 02002021 */   addu      $a0, $s0, $zero
/* 1063FC 800E830C 0803A0A0 */  j          .Lmenu_800E8280
/* 106400 800E8310 AE220008 */   sw        $v0, 0x8($s1)
.Lmenu_800E8314:
/* 106404 800E8314 0C002680 */  jal        func_80009A00
/* 106408 800E8318 02002021 */   addu      $a0, $s0, $zero
/* 10640C 800E831C 0803A0A0 */  j          .Lmenu_800E8280
/* 106410 800E8320 00409021 */   addu      $s2, $v0, $zero
.Lmenu_800E8324:
/* 106414 800E8324 0C002680 */  jal        func_80009A00
/* 106418 800E8328 02002021 */   addu      $a0, $s0, $zero
/* 10641C 800E832C 0803A0A0 */  j          .Lmenu_800E8280
/* 106420 800E8330 AE220030 */   sw        $v0, 0x30($s1)
.Lmenu_800E8334:
/* 106424 800E8334 8E220008 */  lw         $v0, 0x8($s1)
/* 106428 800E8338 00521021 */  addu       $v0, $v0, $s2
/* 10642C 800E833C AE22000C */  sw         $v0, 0xC($s1)
/* 106430 800E8340 8FBF0028 */  lw         $ra, 0x28($sp)
/* 106434 800E8344 8FB50024 */  lw         $s5, 0x24($sp)
/* 106438 800E8348 8FB40020 */  lw         $s4, 0x20($sp)
/* 10643C 800E834C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 106440 800E8350 8FB20018 */  lw         $s2, 0x18($sp)
/* 106444 800E8354 8FB10014 */  lw         $s1, 0x14($sp)
/* 106448 800E8358 8FB00010 */  lw         $s0, 0x10($sp)
/* 10644C 800E835C 03E00008 */  jr         $ra
/* 106450 800E8360 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800E8364
/* 106454 800E8364 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 106458 800E8368 AFB10054 */  sw         $s1, 0x54($sp)
/* 10645C 800E836C 00808821 */  addu       $s1, $a0, $zero
/* 106460 800E8370 AFB3005C */  sw         $s3, 0x5C($sp)
/* 106464 800E8374 00A09821 */  addu       $s3, $a1, $zero
/* 106468 800E8378 AFBF0060 */  sw         $ra, 0x60($sp)
/* 10646C 800E837C AFB20058 */  sw         $s2, 0x58($sp)
/* 106470 800E8380 AFB00050 */  sw         $s0, 0x50($sp)
/* 106474 800E8384 8E24002C */  lw         $a0, 0x2C($s1)
/* 106478 800E8388 10800030 */  beqz       $a0, .Lmenu_800E844C
/* 10647C 800E838C 00C09021 */   addu      $s2, $a2, $zero
/* 106480 800E8390 8E220020 */  lw         $v0, 0x20($s1)
/* 106484 800E8394 14400014 */  bnez       $v0, .Lmenu_800E83E8
/* 106488 800E8398 26300024 */   addiu     $s0, $s1, 0x24
/* 10648C 800E839C 0C03AB13 */  jal        func_menu_800EAC4C
/* 106490 800E83A0 02002821 */   addu      $a1, $s0, $zero
/* 106494 800E83A4 14400010 */  bnez       $v0, .Lmenu_800E83E8
/* 106498 800E83A8 AE220020 */   sw        $v0, 0x20($s1)
/* 10649C 800E83AC 27A40010 */  addiu      $a0, $sp, 0x10
/* 1064A0 800E83B0 02002821 */  addu       $a1, $s0, $zero
/* 1064A4 800E83B4 0C000708 */  jal        func_80001C20
/* 1064A8 800E83B8 24060008 */   addiu     $a2, $zero, 0x8
/* 1064AC 800E83BC A3A00018 */  sb         $zero, 0x18($sp)
/* 1064B0 800E83C0 27A40010 */  addiu      $a0, $sp, 0x10
/* 1064B4 800E83C4 3C05800D */  lui        $a1, %hi(D_menu_800CB470)
/* 1064B8 800E83C8 0C0006C8 */  jal        func_80001B20
/* 1064BC 800E83CC 24A5B470 */   addiu     $a1, $a1, %lo(D_menu_800CB470)
/* 1064C0 800E83D0 3C04800D */  lui        $a0, %hi(D_menu_800CB490)
/* 1064C4 800E83D4 2484B490 */  addiu      $a0, $a0, %lo(D_menu_800CB490)
/* 1064C8 800E83D8 00002821 */  addu       $a1, $zero, $zero
/* 1064CC 800E83DC 00A03021 */  addu       $a2, $a1, $zero
/* 1064D0 800E83E0 0C011ACF */  jal        func_80046B3C
/* 1064D4 800E83E4 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800E83E8:
/* 1064D8 800E83E8 8E250020 */  lw         $a1, 0x20($s1)
/* 1064DC 800E83EC 0C03A89E */  jal        func_menu_800EA278
/* 1064E0 800E83F0 02602021 */   addu      $a0, $s3, $zero
/* 1064E4 800E83F4 8E250030 */  lw         $a1, 0x30($s1)
/* 1064E8 800E83F8 04A00008 */  bltz       $a1, .Lmenu_800E841C
/* 1064EC 800E83FC 02202021 */   addu      $a0, $s1, $zero
/* 1064F0 800E8400 8E220020 */  lw         $v0, 0x20($s1)
/* 1064F4 800E8404 8C440024 */  lw         $a0, 0x24($v0)
/* 1064F8 800E8408 50800004 */  beql       $a0, $zero, .Lmenu_800E841C
/* 1064FC 800E840C 02202021 */   addu      $a0, $s1, $zero
/* 106500 800E8410 0C01971D */  jal        func_80065C74
/* 106504 800E8414 00000000 */   nop
/* 106508 800E8418 02202021 */  addu       $a0, $s1, $zero
.Lmenu_800E841C:
/* 10650C 800E841C 02602821 */  addu       $a1, $s3, $zero
/* 106510 800E8420 0C03A272 */  jal        func_menu_800E89C8
/* 106514 800E8424 02403021 */   addu      $a2, $s2, $zero
/* 106518 800E8428 12400008 */  beqz       $s2, .Lmenu_800E844C
/* 10651C 800E842C 02602821 */   addu      $a1, $s3, $zero
/* 106520 800E8430 02203021 */  addu       $a2, $s1, $zero
/* 106524 800E8434 8E420000 */  lw         $v0, 0x0($s2)
/* 106528 800E8438 00C03821 */  addu       $a3, $a2, $zero
/* 10652C 800E843C 84440018 */  lh         $a0, 0x18($v0)
/* 106530 800E8440 8C42001C */  lw         $v0, 0x1C($v0)
/* 106534 800E8444 0040F809 */  jalr       $v0
/* 106538 800E8448 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800E844C:
/* 10653C 800E844C 8FBF0060 */  lw         $ra, 0x60($sp)
/* 106540 800E8450 8FB3005C */  lw         $s3, 0x5C($sp)
/* 106544 800E8454 8FB20058 */  lw         $s2, 0x58($sp)
/* 106548 800E8458 8FB10054 */  lw         $s1, 0x54($sp)
/* 10654C 800E845C 8FB00050 */  lw         $s0, 0x50($sp)
/* 106550 800E8460 03E00008 */  jr         $ra
/* 106554 800E8464 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_menu_800E8468
/* 106558 800E8468 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10655C 800E846C AFB20018 */  sw         $s2, 0x18($sp)
/* 106560 800E8470 00809021 */  addu       $s2, $a0, $zero
/* 106564 800E8474 AFB00010 */  sw         $s0, 0x10($sp)
/* 106568 800E8478 00A08021 */  addu       $s0, $a1, $zero
/* 10656C 800E847C AFBF001C */  sw         $ra, 0x1C($sp)
/* 106570 800E8480 AFB10014 */  sw         $s1, 0x14($sp)
/* 106574 800E8484 8E450020 */  lw         $a1, 0x20($s2)
/* 106578 800E8488 10A00010 */  beqz       $a1, .Lmenu_800E84CC
/* 10657C 800E848C 00C08821 */   addu      $s1, $a2, $zero
/* 106580 800E8490 0C03A8B3 */  jal        func_menu_800EA2CC
/* 106584 800E8494 02002021 */   addu      $a0, $s0, $zero
/* 106588 800E8498 02402021 */  addu       $a0, $s2, $zero
/* 10658C 800E849C 02002821 */  addu       $a1, $s0, $zero
/* 106590 800E84A0 0C03A282 */  jal        func_menu_800E8A08
/* 106594 800E84A4 02203021 */   addu      $a2, $s1, $zero
/* 106598 800E84A8 12200008 */  beqz       $s1, .Lmenu_800E84CC
/* 10659C 800E84AC 02002821 */   addu      $a1, $s0, $zero
/* 1065A0 800E84B0 02403021 */  addu       $a2, $s2, $zero
/* 1065A4 800E84B4 8E220000 */  lw         $v0, 0x0($s1)
/* 1065A8 800E84B8 00C03821 */  addu       $a3, $a2, $zero
/* 1065AC 800E84BC 84440020 */  lh         $a0, 0x20($v0)
/* 1065B0 800E84C0 8C420024 */  lw         $v0, 0x24($v0)
/* 1065B4 800E84C4 0040F809 */  jalr       $v0
/* 1065B8 800E84C8 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800E84CC:
/* 1065BC 800E84CC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1065C0 800E84D0 8FB20018 */  lw         $s2, 0x18($sp)
/* 1065C4 800E84D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1065C8 800E84D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1065CC 800E84DC 03E00008 */  jr         $ra
/* 1065D0 800E84E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800E84E4
/* 1065D4 800E84E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1065D8 800E84E8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1065DC 800E84EC 8C840020 */  lw         $a0, 0x20($a0)
/* 1065E0 800E84F0 0C0129DA */  jal        func_8004A768
/* 1065E4 800E84F4 00000000 */   nop
/* 1065E8 800E84F8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1065EC 800E84FC 03E00008 */  jr         $ra
/* 1065F0 800E8500 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800E8504
/* 1065F4 800E8504 8C820020 */  lw         $v0, 0x20($a0)
/* 1065F8 800E8508 03E00008 */  jr         $ra
/* 1065FC 800E850C 00000000 */   nop

glabel func_menu_800E8510
/* 106600 800E8510 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 106604 800E8514 AFBF0010 */  sw         $ra, 0x10($sp)
/* 106608 800E8518 0C03A251 */  jal        func_menu_800E8944
/* 10660C 800E851C 00000000 */   nop
/* 106610 800E8520 8FBF0010 */  lw         $ra, 0x10($sp)
/* 106614 800E8524 03E00008 */  jr         $ra
/* 106618 800E8528 27BD0018 */   addiu     $sp, $sp, 0x18
