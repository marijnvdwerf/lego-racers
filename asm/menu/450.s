.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800FB260
/* 119350 800FB260 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 119354 800FB264 AFB20018 */  sw         $s2, 0x18($sp)
/* 119358 800FB268 00809021 */  addu       $s2, $a0, $zero
/* 11935C 800FB26C AFBF0020 */  sw         $ra, 0x20($sp)
/* 119360 800FB270 AFB3001C */  sw         $s3, 0x1C($sp)
/* 119364 800FB274 AFB10014 */  sw         $s1, 0x14($sp)
/* 119368 800FB278 0C0401D8 */  jal        func_menu_80100760
/* 11936C 800FB27C AFB00010 */   sw        $s0, 0x10($sp)
/* 119370 800FB280 3C02800D */  lui        $v0, %hi(D_menu_800CCD60)
/* 119374 800FB284 2442CD60 */  addiu      $v0, $v0, %lo(D_menu_800CCD60)
/* 119378 800FB288 26440368 */  addiu      $a0, $s2, 0x368
/* 11937C 800FB28C 0C047C14 */  jal        func_menu_8011F050
/* 119380 800FB290 AE420000 */   sw        $v0, 0x0($s2)
/* 119384 800FB294 0C047BA4 */  jal        func_menu_8011EE90
/* 119388 800FB298 264403E4 */   addiu     $a0, $s2, 0x3E4
/* 11938C 800FB29C 26510440 */  addiu      $s1, $s2, 0x440
/* 119390 800FB2A0 24100007 */  addiu      $s0, $zero, 0x7
/* 119394 800FB2A4 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_800FB2A8:
/* 119398 800FB2A8 0C047BA4 */  jal        func_menu_8011EE90
/* 11939C 800FB2AC 02202021 */   addu      $a0, $s1, $zero
/* 1193A0 800FB2B0 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1193A4 800FB2B4 1613FFFC */  bne        $s0, $s3, .Lmenu_800FB2A8
/* 1193A8 800FB2B8 2631005C */   addiu     $s1, $s1, 0x5C
/* 1193AC 800FB2BC 0C047BA4 */  jal        func_menu_8011EE90
/* 1193B0 800FB2C0 26440720 */   addiu     $a0, $s2, 0x720
/* 1193B4 800FB2C4 0C047BA4 */  jal        func_menu_8011EE90
/* 1193B8 800FB2C8 2644077C */   addiu     $a0, $s2, 0x77C
/* 1193BC 800FB2CC 0C047BA4 */  jal        func_menu_8011EE90
/* 1193C0 800FB2D0 264407D8 */   addiu     $a0, $s2, 0x7D8
/* 1193C4 800FB2D4 0C047BA4 */  jal        func_menu_8011EE90
/* 1193C8 800FB2D8 26440834 */   addiu     $a0, $s2, 0x834
/* 1193CC 800FB2DC 0C047CA8 */  jal        func_menu_8011F2A0
/* 1193D0 800FB2E0 26440890 */   addiu     $a0, $s2, 0x890
/* 1193D4 800FB2E4 0C047CA8 */  jal        func_menu_8011F2A0
/* 1193D8 800FB2E8 26440908 */   addiu     $a0, $s2, 0x908
/* 1193DC 800FB2EC 0C047CA8 */  jal        func_menu_8011F2A0
/* 1193E0 800FB2F0 26440980 */   addiu     $a0, $s2, 0x980
/* 1193E4 800FB2F4 0C047CA8 */  jal        func_menu_8011F2A0
/* 1193E8 800FB2F8 264409F8 */   addiu     $a0, $s2, 0x9F8
/* 1193EC 800FB2FC 0C040F38 */  jal        func_menu_80103CE0
/* 1193F0 800FB300 26440A70 */   addiu     $a0, $s2, 0xA70
/* 1193F4 800FB304 0C040F38 */  jal        func_menu_80103CE0
/* 1193F8 800FB308 26440D60 */   addiu     $a0, $s2, 0xD60
/* 1193FC 800FB30C 0C040F38 */  jal        func_menu_80103CE0
/* 119400 800FB310 26441050 */   addiu     $a0, $s2, 0x1050
/* 119404 800FB314 0C040F38 */  jal        func_menu_80103CE0
/* 119408 800FB318 26441340 */   addiu     $a0, $s2, 0x1340
/* 11940C 800FB31C 0C040F38 */  jal        func_menu_80103CE0
/* 119410 800FB320 26441630 */   addiu     $a0, $s2, 0x1630
/* 119414 800FB324 0C044424 */  jal        func_menu_80111090
/* 119418 800FB328 26441920 */   addiu     $a0, $s2, 0x1920
/* 11941C 800FB32C 0C0479E0 */  jal        func_menu_8011E780
/* 119420 800FB330 26441DF8 */   addiu     $a0, $s2, 0x1DF8
/* 119424 800FB334 0C0489D8 */  jal        func_menu_80122760
/* 119428 800FB338 264421F4 */   addiu     $a0, $s2, 0x21F4
/* 11942C 800FB33C 0C03FAAC */  jal        func_menu_800FEAB0
/* 119430 800FB340 26442524 */   addiu     $a0, $s2, 0x2524
/* 119434 800FB344 0C0016DC */  jal        func_80005B70
/* 119438 800FB348 26442680 */   addiu     $a0, $s2, 0x2680
/* 11943C 800FB34C 0C03ED3E */  jal        func_menu_800FB4F8
/* 119440 800FB350 02402021 */   addu      $a0, $s2, $zero
/* 119444 800FB354 02401021 */  addu       $v0, $s2, $zero
/* 119448 800FB358 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11944C 800FB35C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 119450 800FB360 8FB20018 */  lw         $s2, 0x18($sp)
/* 119454 800FB364 8FB10014 */  lw         $s1, 0x14($sp)
/* 119458 800FB368 8FB00010 */  lw         $s0, 0x10($sp)
/* 11945C 800FB36C 03E00008 */  jr         $ra
/* 119460 800FB370 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FB374
/* 119464 800FB374 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 119468 800FB378 AFB10014 */  sw         $s1, 0x14($sp)
/* 11946C 800FB37C 00808821 */  addu       $s1, $a0, $zero
/* 119470 800FB380 AFB3001C */  sw         $s3, 0x1C($sp)
/* 119474 800FB384 00A09821 */  addu       $s3, $a1, $zero
/* 119478 800FB388 3C02800D */  lui        $v0, %hi(D_menu_800CCD60)
/* 11947C 800FB38C 2442CD60 */  addiu      $v0, $v0, %lo(D_menu_800CCD60)
/* 119480 800FB390 AFBF0020 */  sw         $ra, 0x20($sp)
/* 119484 800FB394 AFB20018 */  sw         $s2, 0x18($sp)
/* 119488 800FB398 AFB00010 */  sw         $s0, 0x10($sp)
/* 11948C 800FB39C 0C03EE89 */  jal        func_menu_800FBA24
/* 119490 800FB3A0 AE220000 */   sw        $v0, 0x0($s1)
/* 119494 800FB3A4 26242680 */  addiu      $a0, $s1, 0x2680
/* 119498 800FB3A8 0C0016E2 */  jal        func_80005B88
/* 11949C 800FB3AC 24050002 */   addiu     $a1, $zero, 0x2
/* 1194A0 800FB3B0 26242524 */  addiu      $a0, $s1, 0x2524
/* 1194A4 800FB3B4 0C03FABF */  jal        func_menu_800FEAFC
/* 1194A8 800FB3B8 24050002 */   addiu     $a1, $zero, 0x2
/* 1194AC 800FB3BC 262421F4 */  addiu      $a0, $s1, 0x21F4
/* 1194B0 800FB3C0 0C0489E9 */  jal        func_menu_801227A4
/* 1194B4 800FB3C4 24050002 */   addiu     $a1, $zero, 0x2
/* 1194B8 800FB3C8 26241DF8 */  addiu      $a0, $s1, 0x1DF8
/* 1194BC 800FB3CC 0C0479FF */  jal        func_menu_8011E7FC
/* 1194C0 800FB3D0 24050002 */   addiu     $a1, $zero, 0x2
/* 1194C4 800FB3D4 26241920 */  addiu      $a0, $s1, 0x1920
/* 1194C8 800FB3D8 0C044435 */  jal        func_menu_801110D4
/* 1194CC 800FB3DC 24050002 */   addiu     $a1, $zero, 0x2
/* 1194D0 800FB3E0 26241630 */  addiu      $a0, $s1, 0x1630
/* 1194D4 800FB3E4 0C040F4B */  jal        func_menu_80103D2C
/* 1194D8 800FB3E8 24050002 */   addiu     $a1, $zero, 0x2
/* 1194DC 800FB3EC 26241340 */  addiu      $a0, $s1, 0x1340
/* 1194E0 800FB3F0 0C040F4B */  jal        func_menu_80103D2C
/* 1194E4 800FB3F4 24050002 */   addiu     $a1, $zero, 0x2
/* 1194E8 800FB3F8 26241050 */  addiu      $a0, $s1, 0x1050
/* 1194EC 800FB3FC 0C040F4B */  jal        func_menu_80103D2C
/* 1194F0 800FB400 24050002 */   addiu     $a1, $zero, 0x2
/* 1194F4 800FB404 26240D60 */  addiu      $a0, $s1, 0xD60
/* 1194F8 800FB408 0C040F4B */  jal        func_menu_80103D2C
/* 1194FC 800FB40C 24050002 */   addiu     $a1, $zero, 0x2
/* 119500 800FB410 26240A70 */  addiu      $a0, $s1, 0xA70
/* 119504 800FB414 0C040F4B */  jal        func_menu_80103D2C
/* 119508 800FB418 24050002 */   addiu     $a1, $zero, 0x2
/* 11950C 800FB41C 262409F8 */  addiu      $a0, $s1, 0x9F8
/* 119510 800FB420 0C047CB9 */  jal        func_menu_8011F2E4
/* 119514 800FB424 24050002 */   addiu     $a1, $zero, 0x2
/* 119518 800FB428 26240980 */  addiu      $a0, $s1, 0x980
/* 11951C 800FB42C 0C047CB9 */  jal        func_menu_8011F2E4
/* 119520 800FB430 24050002 */   addiu     $a1, $zero, 0x2
/* 119524 800FB434 26240908 */  addiu      $a0, $s1, 0x908
/* 119528 800FB438 0C047CB9 */  jal        func_menu_8011F2E4
/* 11952C 800FB43C 24050002 */   addiu     $a1, $zero, 0x2
/* 119530 800FB440 26240890 */  addiu      $a0, $s1, 0x890
/* 119534 800FB444 0C047CB9 */  jal        func_menu_8011F2E4
/* 119538 800FB448 24050002 */   addiu     $a1, $zero, 0x2
/* 11953C 800FB44C 26240834 */  addiu      $a0, $s1, 0x834
/* 119540 800FB450 0C047BB3 */  jal        func_menu_8011EECC
/* 119544 800FB454 24050002 */   addiu     $a1, $zero, 0x2
/* 119548 800FB458 262407D8 */  addiu      $a0, $s1, 0x7D8
/* 11954C 800FB45C 0C047BB3 */  jal        func_menu_8011EECC
/* 119550 800FB460 24050002 */   addiu     $a1, $zero, 0x2
/* 119554 800FB464 2624077C */  addiu      $a0, $s1, 0x77C
/* 119558 800FB468 0C047BB3 */  jal        func_menu_8011EECC
/* 11955C 800FB46C 24050002 */   addiu     $a1, $zero, 0x2
/* 119560 800FB470 26300720 */  addiu      $s0, $s1, 0x720
/* 119564 800FB474 02002021 */  addu       $a0, $s0, $zero
/* 119568 800FB478 0C047BB3 */  jal        func_menu_8011EECC
/* 11956C 800FB47C 24050002 */   addiu     $a1, $zero, 0x2
/* 119570 800FB480 26220440 */  addiu      $v0, $s1, 0x440
/* 119574 800FB484 1040000D */  beqz       $v0, .Lmenu_800FB4BC
/* 119578 800FB488 262403E4 */   addiu     $a0, $s1, 0x3E4
/* 11957C 800FB48C 1050000B */  beq        $v0, $s0, .Lmenu_800FB4BC
/* 119580 800FB490 00409021 */   addu      $s2, $v0, $zero
/* 119584 800FB494 2610FFA4 */  addiu      $s0, $s0, -0x5C
.Lmenu_800FB498:
/* 119588 800FB498 8E020054 */  lw         $v0, 0x54($s0)
/* 11958C 800FB49C 24050002 */  addiu      $a1, $zero, 0x2
/* 119590 800FB4A0 84440010 */  lh         $a0, 0x10($v0)
/* 119594 800FB4A4 8C420014 */  lw         $v0, 0x14($v0)
/* 119598 800FB4A8 0040F809 */  jalr       $v0
/* 11959C 800FB4AC 02042021 */   addu      $a0, $s0, $a0
/* 1195A0 800FB4B0 1650FFF9 */  bne        $s2, $s0, .Lmenu_800FB498
/* 1195A4 800FB4B4 2610FFA4 */   addiu     $s0, $s0, -0x5C
/* 1195A8 800FB4B8 262403E4 */  addiu      $a0, $s1, 0x3E4
.Lmenu_800FB4BC:
/* 1195AC 800FB4BC 0C047BB3 */  jal        func_menu_8011EECC
/* 1195B0 800FB4C0 24050002 */   addiu     $a1, $zero, 0x2
/* 1195B4 800FB4C4 26240368 */  addiu      $a0, $s1, 0x368
/* 1195B8 800FB4C8 0C047C23 */  jal        func_menu_8011F08C
/* 1195BC 800FB4CC 24050002 */   addiu     $a1, $zero, 0x2
/* 1195C0 800FB4D0 02202021 */  addu       $a0, $s1, $zero
/* 1195C4 800FB4D4 0C0401EF */  jal        func_menu_801007BC
/* 1195C8 800FB4D8 02602821 */   addu      $a1, $s3, $zero
/* 1195CC 800FB4DC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1195D0 800FB4E0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1195D4 800FB4E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1195D8 800FB4E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1195DC 800FB4EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1195E0 800FB4F0 03E00008 */  jr         $ra
/* 1195E4 800FB4F4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FB4F8
/* 1195E8 800FB4F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1195EC 800FB4FC AFB00010 */  sw         $s0, 0x10($sp)
/* 1195F0 800FB500 00808021 */  addu       $s0, $a0, $zero
/* 1195F4 800FB504 AFB10014 */  sw         $s1, 0x14($sp)
/* 1195F8 800FB508 261124F4 */  addiu      $s1, $s0, 0x24F4
/* 1195FC 800FB50C 02202021 */  addu       $a0, $s1, $zero
/* 119600 800FB510 00002821 */  addu       $a1, $zero, $zero
/* 119604 800FB514 AFBF0018 */  sw         $ra, 0x18($sp)
/* 119608 800FB518 0C000697 */  jal        func_80001A5C
/* 11960C 800FB51C 2406001E */   addiu     $a2, $zero, 0x1E
/* 119610 800FB520 26042680 */  addiu      $a0, $s0, 0x2680
/* 119614 800FB524 02202821 */  addu       $a1, $s1, $zero
/* 119618 800FB528 0C0016F6 */  jal        func_80005BD8
/* 11961C 800FB52C 2406000E */   addiu     $a2, $zero, 0xE
/* 119620 800FB530 02002021 */  addu       $a0, $s0, $zero
/* 119624 800FB534 24020001 */  addiu      $v0, $zero, 0x1
/* 119628 800FB538 AC82268C */  sw         $v0, 0x268C($a0)
/* 11962C 800FB53C 0C040207 */  jal        func_menu_8010081C
/* 119630 800FB540 AC802690 */   sw        $zero, 0x2690($a0)
/* 119634 800FB544 8FBF0018 */  lw         $ra, 0x18($sp)
/* 119638 800FB548 8FB10014 */  lw         $s1, 0x14($sp)
/* 11963C 800FB54C 8FB00010 */  lw         $s0, 0x10($sp)
/* 119640 800FB550 03E00008 */  jr         $ra
/* 119644 800FB554 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FB558
/* 119648 800FB558 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 11964C 800FB55C AFB00050 */  sw         $s0, 0x50($sp)
/* 119650 800FB560 00808021 */  addu       $s0, $a0, $zero
/* 119654 800FB564 AFB10054 */  sw         $s1, 0x54($sp)
/* 119658 800FB568 26111920 */  addiu      $s1, $s0, 0x1920
/* 11965C 800FB56C 02202821 */  addu       $a1, $s1, $zero
/* 119660 800FB570 00003021 */  addu       $a2, $zero, $zero
/* 119664 800FB574 240700DC */  addiu      $a3, $zero, 0xDC
/* 119668 800FB578 AFBF005C */  sw         $ra, 0x5C($sp)
/* 11966C 800FB57C 0C046AA0 */  jal        func_menu_8011AA80
/* 119670 800FB580 AFB20058 */   sw        $s2, 0x58($sp)
/* 119674 800FB584 27A40010 */  addiu      $a0, $sp, 0x10
/* 119678 800FB588 00002821 */  addu       $a1, $zero, $zero
/* 11967C 800FB58C 0C000697 */  jal        func_80001A5C
/* 119680 800FB590 2406001C */   addiu     $a2, $zero, 0x1C
/* 119684 800FB594 8E0200B4 */  lw         $v0, 0xB4($s0)
/* 119688 800FB598 3C01800D */  lui        $at, %hi(D_menu_800CCD40)
/* 11968C 800FB59C C420CD40 */  lwc1       $f0, %lo(D_menu_800CCD40)($at)
/* 119690 800FB5A0 3C01800D */  lui        $at, %hi(D_menu_800CCD44)
/* 119694 800FB5A4 C422CD44 */  lwc1       $f2, %lo(D_menu_800CCD44)($at)
/* 119698 800FB5A8 26122524 */  addiu      $s2, $s0, 0x2524
/* 11969C 800FB5AC AFA20010 */  sw         $v0, 0x10($sp)
/* 1196A0 800FB5B0 8E0200B8 */  lw         $v0, 0xB8($s0)
/* 1196A4 800FB5B4 02402021 */  addu       $a0, $s2, $zero
/* 1196A8 800FB5B8 AFB10018 */  sw         $s1, 0x18($sp)
/* 1196AC 800FB5BC AFA20014 */  sw         $v0, 0x14($sp)
/* 1196B0 800FB5C0 8E020354 */  lw         $v0, 0x354($s0)
/* 1196B4 800FB5C4 27A50010 */  addiu      $a1, $sp, 0x10
/* 1196B8 800FB5C8 E7A00020 */  swc1       $f0, 0x20($sp)
/* 1196BC 800FB5CC E7A20024 */  swc1       $f2, 0x24($sp)
/* 1196C0 800FB5D0 AFA00028 */  sw         $zero, 0x28($sp)
/* 1196C4 800FB5D4 2442459C */  addiu      $v0, $v0, 0x459C
/* 1196C8 800FB5D8 0C03FB3C */  jal        func_menu_800FECF0
/* 1196CC 800FB5DC AFA2001C */   sw        $v0, 0x1C($sp)
/* 1196D0 800FB5E0 02202021 */  addu       $a0, $s1, $zero
/* 1196D4 800FB5E4 0C0441DB */  jal        func_menu_8011076C
/* 1196D8 800FB5E8 02402821 */   addu      $a1, $s2, $zero
/* 1196DC 800FB5EC 27A50030 */  addiu      $a1, $sp, 0x30
/* 1196E0 800FB5F0 3C01800D */  lui        $at, %hi(D_menu_800CCD48)
/* 1196E4 800FB5F4 C420CD48 */  lwc1       $f0, %lo(D_menu_800CCD48)($at)
/* 1196E8 800FB5F8 3C01800D */  lui        $at, %hi(D_menu_800CCD4C)
/* 1196EC 800FB5FC C422CD4C */  lwc1       $f2, %lo(D_menu_800CCD4C)($at)
/* 1196F0 800FB600 3C01800D */  lui        $at, %hi(D_menu_800CCD50)
/* 1196F4 800FB604 C424CD50 */  lwc1       $f4, %lo(D_menu_800CCD50)($at)
/* 1196F8 800FB608 26102540 */  addiu      $s0, $s0, 0x2540
/* 1196FC 800FB60C AFA00034 */  sw         $zero, 0x34($sp)
/* 119700 800FB610 AFA00038 */  sw         $zero, 0x38($sp)
/* 119704 800FB614 AFA00040 */  sw         $zero, 0x40($sp)
/* 119708 800FB618 E7A00030 */  swc1       $f0, 0x30($sp)
/* 11970C 800FB61C E7A20044 */  swc1       $f2, 0x44($sp)
/* 119710 800FB620 E7A40048 */  swc1       $f4, 0x48($sp)
/* 119714 800FB624 8E020024 */  lw         $v0, 0x24($s0)
/* 119718 800FB628 27A60040 */  addiu      $a2, $sp, 0x40
/* 11971C 800FB62C 84440080 */  lh         $a0, 0x80($v0)
/* 119720 800FB630 8C420084 */  lw         $v0, 0x84($v0)
/* 119724 800FB634 0040F809 */  jalr       $v0
/* 119728 800FB638 02042021 */   addu      $a0, $s0, $a0
/* 11972C 800FB63C 8FBF005C */  lw         $ra, 0x5C($sp)
/* 119730 800FB640 8FB20058 */  lw         $s2, 0x58($sp)
/* 119734 800FB644 8FB10054 */  lw         $s1, 0x54($sp)
/* 119738 800FB648 8FB00050 */  lw         $s0, 0x50($sp)
/* 11973C 800FB64C 03E00008 */  jr         $ra
/* 119740 800FB650 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_menu_800FB654
/* 119744 800FB654 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 119748 800FB658 AFB20020 */  sw         $s2, 0x20($sp)
/* 11974C 800FB65C 00809021 */  addu       $s2, $a0, $zero
/* 119750 800FB660 26450368 */  addiu      $a1, $s2, 0x368
/* 119754 800FB664 24060052 */  addiu      $a2, $zero, 0x52
/* 119758 800FB668 00C03821 */  addu       $a3, $a2, $zero
/* 11975C 800FB66C AFBF0030 */  sw         $ra, 0x30($sp)
/* 119760 800FB670 AFB5002C */  sw         $s5, 0x2C($sp)
/* 119764 800FB674 AFB40028 */  sw         $s4, 0x28($sp)
/* 119768 800FB678 AFB30024 */  sw         $s3, 0x24($sp)
/* 11976C 800FB67C AFB1001C */  sw         $s1, 0x1C($sp)
/* 119770 800FB680 0C04675B */  jal        func_menu_80119D6C
/* 119774 800FB684 AFB00018 */   sw        $s0, 0x18($sp)
/* 119778 800FB688 02402021 */  addu       $a0, $s2, $zero
/* 11977C 800FB68C 264503E4 */  addiu      $a1, $s2, 0x3E4
/* 119780 800FB690 240600E2 */  addiu      $a2, $zero, 0xE2
/* 119784 800FB694 0C04675B */  jal        func_menu_80119D6C
/* 119788 800FB698 00C03821 */   addu      $a3, $a2, $zero
/* 11978C 800FB69C 0C03ED56 */  jal        func_menu_800FB558
/* 119790 800FB6A0 02402021 */   addu      $a0, $s2, $zero
/* 119794 800FB6A4 02402021 */  addu       $a0, $s2, $zero
/* 119798 800FB6A8 26501DF8 */  addiu      $s0, $s2, 0x1DF8
/* 11979C 800FB6AC 02002821 */  addu       $a1, $s0, $zero
/* 1197A0 800FB6B0 240600E5 */  addiu      $a2, $zero, 0xE5
/* 1197A4 800FB6B4 0C0467F0 */  jal        func_menu_80119FC0
/* 1197A8 800FB6B8 24070051 */   addiu     $a3, $zero, 0x51
/* 1197AC 800FB6BC 3C03BFFF */  lui        $v1, (0xBFFFFFFF >> 16)
/* 1197B0 800FB6C0 3463FFFF */  ori        $v1, $v1, (0xBFFFFFFF & 0xFFFF)
/* 1197B4 800FB6C4 02402021 */  addu       $a0, $s2, $zero
/* 1197B8 800FB6C8 265109F8 */  addiu      $s1, $s2, 0x9F8
/* 1197BC 800FB6CC 02202821 */  addu       $a1, $s1, $zero
/* 1197C0 800FB6D0 24060043 */  addiu      $a2, $zero, 0x43
/* 1197C4 800FB6D4 8E020018 */  lw         $v0, 0x18($s0)
/* 1197C8 800FB6D8 00C03821 */  addu       $a3, $a2, $zero
/* 1197CC 800FB6DC 00431024 */  and        $v0, $v0, $v1
/* 1197D0 800FB6E0 AE020018 */  sw         $v0, 0x18($s0)
/* 1197D4 800FB6E4 2402000A */  addiu      $v0, $zero, 0xA
/* 1197D8 800FB6E8 0C04679E */  jal        func_menu_80119E78
/* 1197DC 800FB6EC AFA20010 */   sw        $v0, 0x10($sp)
/* 1197E0 800FB6F0 02202021 */  addu       $a0, $s1, $zero
/* 1197E4 800FB6F4 0C047D63 */  jal        func_menu_8011F58C
/* 1197E8 800FB6F8 2405001E */   addiu     $a1, $zero, 0x1E
/* 1197EC 800FB6FC 02402021 */  addu       $a0, $s2, $zero
/* 1197F0 800FB700 264521F4 */  addiu      $a1, $s2, 0x21F4
/* 1197F4 800FB704 240600E7 */  addiu      $a2, $zero, 0xE7
/* 1197F8 800FB708 240700E3 */  addiu      $a3, $zero, 0xE3
/* 1197FC 800FB70C 24020001 */  addiu      $v0, $zero, 0x1
/* 119800 800FB710 AFA20010 */  sw         $v0, 0x10($sp)
/* 119804 800FB714 26422680 */  addiu      $v0, $s2, 0x2680
/* 119808 800FB718 0C046B06 */  jal        func_menu_8011AC18
/* 11980C 800FB71C AFA20014 */   sw        $v0, 0x14($sp)
/* 119810 800FB720 02402021 */  addu       $a0, $s2, $zero
/* 119814 800FB724 26450A70 */  addiu      $a1, $s2, 0xA70
/* 119818 800FB728 240600E8 */  addiu      $a2, $zero, 0xE8
/* 11981C 800FB72C 2407004B */  addiu      $a3, $zero, 0x4B
/* 119820 800FB730 2402003B */  addiu      $v0, $zero, 0x3B
/* 119824 800FB734 0C040297 */  jal        func_menu_80100A5C
/* 119828 800FB738 AFA20010 */   sw        $v0, 0x10($sp)
/* 11982C 800FB73C 8E420354 */  lw         $v0, 0x354($s2)
/* 119830 800FB740 8C424614 */  lw         $v0, 0x4614($v0)
/* 119834 800FB744 30420001 */  andi       $v0, $v0, 0x1
/* 119838 800FB748 1040000D */  beqz       $v0, .Lmenu_800FB780
/* 11983C 800FB74C 02402021 */   addu      $a0, $s2, $zero
/* 119840 800FB750 26451050 */  addiu      $a1, $s2, 0x1050
/* 119844 800FB754 24060049 */  addiu      $a2, $zero, 0x49
/* 119848 800FB758 2407004D */  addiu      $a3, $zero, 0x4D
/* 11984C 800FB75C 2402000B */  addiu      $v0, $zero, 0xB
/* 119850 800FB760 0C040297 */  jal        func_menu_80100A5C
/* 119854 800FB764 AFA20010 */   sw        $v0, 0x10($sp)
/* 119858 800FB768 02402021 */  addu       $a0, $s2, $zero
/* 11985C 800FB76C 26450D60 */  addiu      $a1, $s2, 0xD60
/* 119860 800FB770 24060048 */  addiu      $a2, $zero, 0x48
/* 119864 800FB774 2407004C */  addiu      $a3, $zero, 0x4C
/* 119868 800FB778 0803EDEB */  j          .Lmenu_800FB7AC
/* 11986C 800FB77C 24020009 */   addiu     $v0, $zero, 0x9
.Lmenu_800FB780:
/* 119870 800FB780 26451050 */  addiu      $a1, $s2, 0x1050
/* 119874 800FB784 24060049 */  addiu      $a2, $zero, 0x49
/* 119878 800FB788 2407004F */  addiu      $a3, $zero, 0x4F
/* 11987C 800FB78C 24020072 */  addiu      $v0, $zero, 0x72
/* 119880 800FB790 0C040297 */  jal        func_menu_80100A5C
/* 119884 800FB794 AFA20010 */   sw        $v0, 0x10($sp)
/* 119888 800FB798 02402021 */  addu       $a0, $s2, $zero
/* 11988C 800FB79C 26450D60 */  addiu      $a1, $s2, 0xD60
/* 119890 800FB7A0 24060048 */  addiu      $a2, $zero, 0x48
/* 119894 800FB7A4 2407004E */  addiu      $a3, $zero, 0x4E
/* 119898 800FB7A8 2402001F */  addiu      $v0, $zero, 0x1F
.Lmenu_800FB7AC:
/* 11989C 800FB7AC 0C040297 */  jal        func_menu_80100A5C
/* 1198A0 800FB7B0 AFA20010 */   sw        $v0, 0x10($sp)
/* 1198A4 800FB7B4 00009821 */  addu       $s3, $zero, $zero
/* 1198A8 800FB7B8 24150002 */  addiu      $s5, $zero, 0x2
/* 1198AC 800FB7BC 241100EC */  addiu      $s1, $zero, 0xEC
/* 1198B0 800FB7C0 8E420354 */  lw         $v0, 0x354($s2)
/* 1198B4 800FB7C4 24100440 */  addiu      $s0, $zero, 0x440
/* 1198B8 800FB7C8 24542A5C */  addiu      $s4, $v0, 0x2A5C
.Lmenu_800FB7CC:
/* 1198BC 800FB7CC 02802021 */  addu       $a0, $s4, $zero
/* 1198C0 800FB7D0 0C03BD30 */  jal        func_menu_800EF4C0
/* 1198C4 800FB7D4 02602821 */   addu      $a1, $s3, $zero
/* 1198C8 800FB7D8 00401821 */  addu       $v1, $v0, $zero
/* 1198CC 800FB7DC 10750010 */  beq        $v1, $s5, .Lmenu_800FB820
/* 1198D0 800FB7E0 2C620003 */   sltiu     $v0, $v1, 0x3
/* 1198D4 800FB7E4 10400005 */  beqz       $v0, .Lmenu_800FB7FC
/* 1198D8 800FB7E8 24020001 */   addiu     $v0, $zero, 0x1
/* 1198DC 800FB7EC 10620008 */  beq        $v1, $v0, .Lmenu_800FB810
/* 1198E0 800FB7F0 02402021 */   addu      $a0, $s2, $zero
/* 1198E4 800FB7F4 0803EE12 */  j          .Lmenu_800FB848
/* 1198E8 800FB7F8 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800FB7FC:
/* 1198EC 800FB7FC 24020003 */  addiu      $v0, $zero, 0x3
/* 1198F0 800FB800 1062000C */  beq        $v1, $v0, .Lmenu_800FB834
/* 1198F4 800FB804 02402021 */   addu      $a0, $s2, $zero
/* 1198F8 800FB808 0803EE12 */  j          .Lmenu_800FB848
/* 1198FC 800FB80C 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800FB810:
/* 119900 800FB810 02502821 */  addu       $a1, $s2, $s0
/* 119904 800FB814 3226FFFF */  andi       $a2, $s1, 0xFFFF
/* 119908 800FB818 0803EE10 */  j          .Lmenu_800FB840
/* 11990C 800FB81C 240700E9 */   addiu     $a3, $zero, 0xE9
.Lmenu_800FB820:
/* 119910 800FB820 02402021 */  addu       $a0, $s2, $zero
/* 119914 800FB824 02502821 */  addu       $a1, $s2, $s0
/* 119918 800FB828 3226FFFF */  andi       $a2, $s1, 0xFFFF
/* 11991C 800FB82C 0803EE10 */  j          .Lmenu_800FB840
/* 119920 800FB830 240700EA */   addiu     $a3, $zero, 0xEA
.Lmenu_800FB834:
/* 119924 800FB834 02502821 */  addu       $a1, $s2, $s0
/* 119928 800FB838 3226FFFF */  andi       $a2, $s1, 0xFFFF
/* 11992C 800FB83C 240700EB */  addiu      $a3, $zero, 0xEB
.Lmenu_800FB840:
/* 119930 800FB840 0C04675B */  jal        func_menu_80119D6C
/* 119934 800FB844 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_800FB848:
/* 119938 800FB848 26730001 */  addiu      $s3, $s3, 0x1
/* 11993C 800FB84C 2E620008 */  sltiu      $v0, $s3, 0x8
/* 119940 800FB850 1440FFDE */  bnez       $v0, .Lmenu_800FB7CC
/* 119944 800FB854 2610005C */   addiu     $s0, $s0, 0x5C
/* 119948 800FB858 02402021 */  addu       $a0, $s2, $zero
/* 11994C 800FB85C 26450720 */  addiu      $a1, $s2, 0x720
/* 119950 800FB860 24060058 */  addiu      $a2, $zero, 0x58
/* 119954 800FB864 0C04675B */  jal        func_menu_80119D6C
/* 119958 800FB868 00C03821 */   addu      $a3, $a2, $zero
/* 11995C 800FB86C 02402021 */  addu       $a0, $s2, $zero
/* 119960 800FB870 2645077C */  addiu      $a1, $s2, 0x77C
/* 119964 800FB874 24060059 */  addiu      $a2, $zero, 0x59
/* 119968 800FB878 0C04675B */  jal        func_menu_80119D6C
/* 11996C 800FB87C 00C03821 */   addu      $a3, $a2, $zero
/* 119970 800FB880 02402021 */  addu       $a0, $s2, $zero
/* 119974 800FB884 264507D8 */  addiu      $a1, $s2, 0x7D8
/* 119978 800FB888 24060094 */  addiu      $a2, $zero, 0x94
/* 11997C 800FB88C 0C04675B */  jal        func_menu_80119D6C
/* 119980 800FB890 00C03821 */   addu      $a3, $a2, $zero
/* 119984 800FB894 02402021 */  addu       $a0, $s2, $zero
/* 119988 800FB898 26450834 */  addiu      $a1, $s2, 0x834
/* 11998C 800FB89C 24060095 */  addiu      $a2, $zero, 0x95
/* 119990 800FB8A0 0C04675B */  jal        func_menu_80119D6C
/* 119994 800FB8A4 00C03821 */   addu      $a3, $a2, $zero
/* 119998 800FB8A8 02402021 */  addu       $a0, $s2, $zero
/* 11999C 800FB8AC 26450890 */  addiu      $a1, $s2, 0x890
/* 1199A0 800FB8B0 240600F4 */  addiu      $a2, $zero, 0xF4
/* 1199A4 800FB8B4 24070040 */  addiu      $a3, $zero, 0x40
/* 1199A8 800FB8B8 240200C2 */  addiu      $v0, $zero, 0xC2
/* 1199AC 800FB8BC 0C04679E */  jal        func_menu_80119E78
/* 1199B0 800FB8C0 AFA20010 */   sw        $v0, 0x10($sp)
/* 1199B4 800FB8C4 02402021 */  addu       $a0, $s2, $zero
/* 1199B8 800FB8C8 26450908 */  addiu      $a1, $s2, 0x908
/* 1199BC 800FB8CC 24060134 */  addiu      $a2, $zero, 0x134
/* 1199C0 800FB8D0 24070040 */  addiu      $a3, $zero, 0x40
/* 1199C4 800FB8D4 2402001C */  addiu      $v0, $zero, 0x1C
/* 1199C8 800FB8D8 0C04679E */  jal        func_menu_80119E78
/* 1199CC 800FB8DC AFA20010 */   sw        $v0, 0x10($sp)
/* 1199D0 800FB8E0 02402021 */  addu       $a0, $s2, $zero
/* 1199D4 800FB8E4 24850980 */  addiu      $a1, $a0, 0x980
/* 1199D8 800FB8E8 2406011D */  addiu      $a2, $zero, 0x11D
/* 1199DC 800FB8EC 24070040 */  addiu      $a3, $zero, 0x40
/* 1199E0 800FB8F0 240200C3 */  addiu      $v0, $zero, 0xC3
/* 1199E4 800FB8F4 0C04679E */  jal        func_menu_80119E78
/* 1199E8 800FB8F8 AFA20010 */   sw        $v0, 0x10($sp)
/* 1199EC 800FB8FC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1199F0 800FB900 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1199F4 800FB904 8FB40028 */  lw         $s4, 0x28($sp)
/* 1199F8 800FB908 8FB30024 */  lw         $s3, 0x24($sp)
/* 1199FC 800FB90C 8FB20020 */  lw         $s2, 0x20($sp)
/* 119A00 800FB910 8FB1001C */  lw         $s1, 0x1C($sp)
/* 119A04 800FB914 8FB00018 */  lw         $s0, 0x18($sp)
/* 119A08 800FB918 03E00008 */  jr         $ra
/* 119A0C 800FB91C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800FB920
/* 119A10 800FB920 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 119A14 800FB924 AFB10024 */  sw         $s1, 0x24($sp)
/* 119A18 800FB928 00808821 */  addu       $s1, $a0, $zero
/* 119A1C 800FB92C AFB00020 */  sw         $s0, 0x20($sp)
/* 119A20 800FB930 00A08021 */  addu       $s0, $a1, $zero
/* 119A24 800FB934 AFBF002C */  sw         $ra, 0x2C($sp)
/* 119A28 800FB938 AFB20028 */  sw         $s2, 0x28($sp)
/* 119A2C 800FB93C 8E02459C */  lw         $v0, 0x459C($s0)
/* 119A30 800FB940 14400003 */  bnez       $v0, .Lmenu_800FB950
/* 119A34 800FB944 00C09021 */   addu      $s2, $a2, $zero
/* 119A38 800FB948 0C04042B */  jal        func_menu_801010AC
/* 119A3C 800FB94C 00003021 */   addu      $a2, $zero, $zero
.Lmenu_800FB950:
/* 119A40 800FB950 02202021 */  addu       $a0, $s1, $zero
/* 119A44 800FB954 02002821 */  addu       $a1, $s0, $zero
/* 119A48 800FB958 0C040214 */  jal        func_menu_80100850
/* 119A4C 800FB95C 02403021 */   addu      $a2, $s2, $zero
/* 119A50 800FB960 10400029 */  beqz       $v0, .Lmenu_800FBA08
/* 119A54 800FB964 02202021 */   addu      $a0, $s1, $zero
/* 119A58 800FB968 27A50010 */  addiu      $a1, $sp, 0x10
/* 119A5C 800FB96C 27A60018 */  addiu      $a2, $sp, 0x18
/* 119A60 800FB970 24020078 */  addiu      $v0, $zero, 0x78
/* 119A64 800FB974 A3A20012 */  sb         $v0, 0x12($sp)
/* 119A68 800FB978 A3A20011 */  sb         $v0, 0x11($sp)
/* 119A6C 800FB97C A3A20010 */  sb         $v0, 0x10($sp)
/* 119A70 800FB980 240200B4 */  addiu      $v0, $zero, 0xB4
/* 119A74 800FB984 A3A2001A */  sb         $v0, 0x1A($sp)
/* 119A78 800FB988 A3A20019 */  sb         $v0, 0x19($sp)
/* 119A7C 800FB98C 0C0402F1 */  jal        func_menu_80100BC4
/* 119A80 800FB990 A3A20018 */   sb        $v0, 0x18($sp)
/* 119A84 800FB994 0C03EECF */  jal        func_menu_800FBB3C
/* 119A88 800FB998 02202021 */   addu      $a0, $s1, $zero
/* 119A8C 800FB99C 3C05800D */  lui        $a1, %hi(D_menu_800CCD54)
/* 119A90 800FB9A0 24A5CD54 */  addiu      $a1, $a1, %lo(D_menu_800CCD54)
/* 119A94 800FB9A4 2627263C */  addiu      $a3, $s1, 0x263C
/* 119A98 800FB9A8 8E020000 */  lw         $v0, 0x0($s0)
/* 119A9C 800FB9AC 8CE30008 */  lw         $v1, 0x8($a3)
/* 119AA0 800FB9B0 8C46001C */  lw         $a2, 0x1C($v0)
/* 119AA4 800FB9B4 84640030 */  lh         $a0, 0x30($v1)
/* 119AA8 800FB9B8 8C620034 */  lw         $v0, 0x34($v1)
/* 119AAC 800FB9BC 0040F809 */  jalr       $v0
/* 119AB0 800FB9C0 00E42021 */   addu      $a0, $a3, $a0
/* 119AB4 800FB9C4 26302540 */  addiu      $s0, $s1, 0x2540
/* 119AB8 800FB9C8 02002021 */  addu       $a0, $s0, $zero
/* 119ABC 800FB9CC 0C01971D */  jal        func_80065C74
/* 119AC0 800FB9D0 00002821 */   addu      $a1, $zero, $zero
/* 119AC4 800FB9D4 263121F4 */  addiu      $s1, $s1, 0x21F4
/* 119AC8 800FB9D8 02202021 */  addu       $a0, $s1, $zero
/* 119ACC 800FB9DC 24050004 */  addiu      $a1, $zero, 0x4
/* 119AD0 800FB9E0 8E02005C */  lw         $v0, 0x5C($s0)
/* 119AD4 800FB9E4 3C030001 */  lui        $v1, (0x10000 >> 16)
/* 119AD8 800FB9E8 00431025 */  or         $v0, $v0, $v1
/* 119ADC 800FB9EC 0C048778 */  jal        func_menu_80121DE0
/* 119AE0 800FB9F0 AE02005C */   sw        $v0, 0x5C($s0)
/* 119AE4 800FB9F4 02202021 */  addu       $a0, $s1, $zero
/* 119AE8 800FB9F8 0C0487C6 */  jal        func_menu_80121F18
/* 119AEC 800FB9FC 24050004 */   addiu     $a1, $zero, 0x4
/* 119AF0 800FBA00 0803EE83 */  j          .Lmenu_800FBA0C
/* 119AF4 800FBA04 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800FBA08:
/* 119AF8 800FBA08 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800FBA0C:
/* 119AFC 800FBA0C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 119B00 800FBA10 8FB20028 */  lw         $s2, 0x28($sp)
/* 119B04 800FBA14 8FB10024 */  lw         $s1, 0x24($sp)
/* 119B08 800FBA18 8FB00020 */  lw         $s0, 0x20($sp)
/* 119B0C 800FBA1C 03E00008 */  jr         $ra
/* 119B10 800FBA20 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FBA24
/* 119B14 800FBA24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 119B18 800FBA28 AFBF0010 */  sw         $ra, 0x10($sp)
/* 119B1C 800FBA2C 8C820004 */  lw         $v0, 0x4($a0)
/* 119B20 800FBA30 10400004 */  beqz       $v0, .Lmenu_800FBA44
/* 119B24 800FBA34 24020001 */   addiu     $v0, $zero, 0x1
/* 119B28 800FBA38 8C830354 */  lw         $v1, 0x354($a0)
/* 119B2C 800FBA3C 0C040232 */  jal        func_menu_801008C8
/* 119B30 800FBA40 AC6245AC */   sw        $v0, 0x45AC($v1)
.Lmenu_800FBA44:
/* 119B34 800FBA44 8FBF0010 */  lw         $ra, 0x10($sp)
/* 119B38 800FBA48 03E00008 */  jr         $ra
/* 119B3C 800FBA4C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FBA50
/* 119B40 800FBA50 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 119B44 800FBA54 AFB30064 */  sw         $s3, 0x64($sp)
/* 119B48 800FBA58 00809821 */  addu       $s3, $a0, $zero
/* 119B4C 800FBA5C AFB20060 */  sw         $s2, 0x60($sp)
/* 119B50 800FBA60 27B20040 */  addiu      $s2, $sp, 0x40
/* 119B54 800FBA64 02402021 */  addu       $a0, $s2, $zero
/* 119B58 800FBA68 AFBF0068 */  sw         $ra, 0x68($sp)
/* 119B5C 800FBA6C AFB1005C */  sw         $s1, 0x5C($sp)
/* 119B60 800FBA70 0C0016DC */  jal        func_80005B70
/* 119B64 800FBA74 AFB00058 */   sw        $s0, 0x58($sp)
/* 119B68 800FBA78 8E620354 */  lw         $v0, 0x354($s3)
/* 119B6C 800FBA7C 8C424614 */  lw         $v0, 0x4614($v0)
/* 119B70 800FBA80 30420001 */  andi       $v0, $v0, 0x1
/* 119B74 800FBA84 54400023 */  bnel       $v0, $zero, .Lmenu_800FBB14
/* 119B78 800FBA88 02402021 */   addu      $a0, $s2, $zero
/* 119B7C 800FBA8C 27A40010 */  addiu      $a0, $sp, 0x10
/* 119B80 800FBA90 00002821 */  addu       $a1, $zero, $zero
/* 119B84 800FBA94 0C000697 */  jal        func_80001A5C
/* 119B88 800FBA98 24060030 */   addiu     $a2, $zero, 0x30
/* 119B8C 800FBA9C 02402021 */  addu       $a0, $s2, $zero
/* 119B90 800FBAA0 27A50010 */  addiu      $a1, $sp, 0x10
/* 119B94 800FBAA4 0C0016F6 */  jal        func_80005BD8
/* 119B98 800FBAA8 24060017 */   addiu     $a2, $zero, 0x17
/* 119B9C 800FBAAC 26712680 */  addiu      $s1, $s3, 0x2680
/* 119BA0 800FBAB0 02202021 */  addu       $a0, $s1, $zero
/* 119BA4 800FBAB4 266523A8 */  addiu      $a1, $s3, 0x23A8
/* 119BA8 800FBAB8 0C0016F6 */  jal        func_80005BD8
/* 119BAC 800FBABC 00003021 */   addu      $a2, $zero, $zero
/* 119BB0 800FBAC0 8E700354 */  lw         $s0, 0x354($s3)
/* 119BB4 800FBAC4 02402821 */  addu       $a1, $s2, $zero
/* 119BB8 800FBAC8 26102A5C */  addiu      $s0, $s0, 0x2A5C
/* 119BBC 800FBACC 0C03BC12 */  jal        func_menu_800EF048
/* 119BC0 800FBAD0 02002021 */   addu      $a0, $s0, $zero
/* 119BC4 800FBAD4 02002021 */  addu       $a0, $s0, $zero
/* 119BC8 800FBAD8 0C03BBD1 */  jal        func_menu_800EEF44
/* 119BCC 800FBADC 27A50050 */   addiu     $a1, $sp, 0x50
/* 119BD0 800FBAE0 02402021 */  addu       $a0, $s2, $zero
/* 119BD4 800FBAE4 0C0017CB */  jal        func_80005F2C
/* 119BD8 800FBAE8 02202821 */   addu      $a1, $s1, $zero
/* 119BDC 800FBAEC 10400009 */  beqz       $v0, .Lmenu_800FBB14
/* 119BE0 800FBAF0 02402021 */   addu      $a0, $s2, $zero
/* 119BE4 800FBAF4 93B00054 */  lbu        $s0, 0x54($sp)
/* 119BE8 800FBAF8 92622520 */  lbu        $v0, 0x2520($s3)
/* 119BEC 800FBAFC 24050002 */  addiu      $a1, $zero, 0x2
/* 119BF0 800FBB00 02028026 */  xor        $s0, $s0, $v0
/* 119BF4 800FBB04 0C0016E2 */  jal        func_80005B88
/* 119BF8 800FBB08 0010802B */   sltu      $s0, $zero, $s0
/* 119BFC 800FBB0C 0803EEC8 */  j          .Lmenu_800FBB20
/* 119C00 800FBB10 02001021 */   addu      $v0, $s0, $zero
.Lmenu_800FBB14:
/* 119C04 800FBB14 0C0016E2 */  jal        func_80005B88
/* 119C08 800FBB18 24050002 */   addiu     $a1, $zero, 0x2
/* 119C0C 800FBB1C 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800FBB20:
/* 119C10 800FBB20 8FBF0068 */  lw         $ra, 0x68($sp)
/* 119C14 800FBB24 8FB30064 */  lw         $s3, 0x64($sp)
/* 119C18 800FBB28 8FB20060 */  lw         $s2, 0x60($sp)
/* 119C1C 800FBB2C 8FB1005C */  lw         $s1, 0x5C($sp)
/* 119C20 800FBB30 8FB00058 */  lw         $s0, 0x58($sp)
/* 119C24 800FBB34 03E00008 */  jr         $ra
/* 119C28 800FBB38 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_menu_800FBB3C
/* 119C2C 800FBB3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 119C30 800FBB40 AFB20018 */  sw         $s2, 0x18($sp)
/* 119C34 800FBB44 00809021 */  addu       $s2, $a0, $zero
/* 119C38 800FBB48 AFB3001C */  sw         $s3, 0x1C($sp)
/* 119C3C 800FBB4C 26532680 */  addiu      $s3, $s2, 0x2680
/* 119C40 800FBB50 AFBF0020 */  sw         $ra, 0x20($sp)
/* 119C44 800FBB54 AFB10014 */  sw         $s1, 0x14($sp)
/* 119C48 800FBB58 AFB00010 */  sw         $s0, 0x10($sp)
/* 119C4C 800FBB5C 8E440354 */  lw         $a0, 0x354($s2)
/* 119C50 800FBB60 02602821 */  addu       $a1, $s3, $zero
/* 119C54 800FBB64 0C03BC12 */  jal        func_menu_800EF048
/* 119C58 800FBB68 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 119C5C 800FBB6C 2650251C */  addiu      $s0, $s2, 0x251C
/* 119C60 800FBB70 8E440354 */  lw         $a0, 0x354($s2)
/* 119C64 800FBB74 02002821 */  addu       $a1, $s0, $zero
/* 119C68 800FBB78 0C03BBD1 */  jal        func_menu_800EEF44
/* 119C6C 800FBB7C 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 119C70 800FBB80 26512524 */  addiu      $s1, $s2, 0x2524
/* 119C74 800FBB84 02202021 */  addu       $a0, $s1, $zero
/* 119C78 800FBB88 02002821 */  addu       $a1, $s0, $zero
/* 119C7C 800FBB8C 8E430354 */  lw         $v1, 0x354($s2)
/* 119C80 800FBB90 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 119C84 800FBB94 0C03FBD2 */  jal        func_menu_800FEF48
/* 119C88 800FBB98 AC6245AC */   sw        $v0, 0x45AC($v1)
/* 119C8C 800FBB9C 9245251D */  lbu        $a1, 0x251D($s2)
/* 119C90 800FBBA0 92462520 */  lbu        $a2, 0x2520($s2)
/* 119C94 800FBBA4 0C03FB8E */  jal        func_menu_800FEE38
/* 119C98 800FBBA8 02202021 */   addu      $a0, $s1, $zero
/* 119C9C 800FBBAC 96620008 */  lhu        $v0, 0x8($s3)
/* 119CA0 800FBBB0 96630006 */  lhu        $v1, 0x6($s3)
/* 119CA4 800FBBB4 00431023 */  subu       $v0, $v0, $v1
/* 119CA8 800FBBB8 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 119CAC 800FBBBC 14400006 */  bnez       $v0, .Lmenu_800FBBD8
/* 119CB0 800FBBC0 264421F4 */   addiu     $a0, $s2, 0x21F4
/* 119CB4 800FBBC4 8E4400D4 */  lw         $a0, 0xD4($s2)
/* 119CB8 800FBBC8 02602821 */  addu       $a1, $s3, $zero
/* 119CBC 800FBBCC 0C003053 */  jal        func_8000C14C
/* 119CC0 800FBBD0 2406003A */   addiu     $a2, $zero, 0x3A
/* 119CC4 800FBBD4 264421F4 */  addiu      $a0, $s2, 0x21F4
.Lmenu_800FBBD8:
/* 119CC8 800FBBD8 0C0487B5 */  jal        func_menu_80121ED4
/* 119CCC 800FBBDC 02602821 */   addu      $a1, $s3, $zero
/* 119CD0 800FBBE0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 119CD4 800FBBE4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 119CD8 800FBBE8 8FB20018 */  lw         $s2, 0x18($sp)
/* 119CDC 800FBBEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 119CE0 800FBBF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 119CE4 800FBBF4 03E00008 */  jr         $ra
/* 119CE8 800FBBF8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FBBFC
/* 119CEC 800FBBFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 119CF0 800FBC00 AFB20018 */  sw         $s2, 0x18($sp)
/* 119CF4 800FBC04 00809021 */  addu       $s2, $a0, $zero
/* 119CF8 800FBC08 AFB10014 */  sw         $s1, 0x14($sp)
/* 119CFC 800FBC0C 26512680 */  addiu      $s1, $s2, 0x2680
/* 119D00 800FBC10 AFBF001C */  sw         $ra, 0x1C($sp)
/* 119D04 800FBC14 AFB00010 */  sw         $s0, 0x10($sp)
/* 119D08 800FBC18 96220008 */  lhu        $v0, 0x8($s1)
/* 119D0C 800FBC1C 96230006 */  lhu        $v1, 0x6($s1)
/* 119D10 800FBC20 00431023 */  subu       $v0, $v0, $v1
/* 119D14 800FBC24 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 119D18 800FBC28 14400005 */  bnez       $v0, .Lmenu_800FBC40
/* 119D1C 800FBC2C 02202021 */   addu      $a0, $s1, $zero
/* 119D20 800FBC30 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 119D24 800FBC34 A6420360 */  sh         $v0, 0x360($s2)
/* 119D28 800FBC38 0803EF24 */  j          .Lmenu_800FBC90
/* 119D2C 800FBC3C AE400364 */   sw        $zero, 0x364($s2)
.Lmenu_800FBC40:
/* 119D30 800FBC40 264523A8 */  addiu      $a1, $s2, 0x23A8
/* 119D34 800FBC44 0C0016F6 */  jal        func_80005BD8
/* 119D38 800FBC48 00003021 */   addu      $a2, $zero, $zero
/* 119D3C 800FBC4C 8E500354 */  lw         $s0, 0x354($s2)
/* 119D40 800FBC50 02202821 */  addu       $a1, $s1, $zero
/* 119D44 800FBC54 26102A5C */  addiu      $s0, $s0, 0x2A5C
/* 119D48 800FBC58 0C03BCC2 */  jal        func_menu_800EF308
/* 119D4C 800FBC5C 02002021 */   addu      $a0, $s0, $zero
/* 119D50 800FBC60 02002021 */  addu       $a0, $s0, $zero
/* 119D54 800FBC64 0C03BC6F */  jal        func_menu_800EF1BC
/* 119D58 800FBC68 2645251C */   addiu     $a1, $s2, 0x251C
/* 119D5C 800FBC6C 8E450354 */  lw         $a1, 0x354($s2)
/* 119D60 800FBC70 8CA24614 */  lw         $v0, 0x4614($a1)
/* 119D64 800FBC74 14400006 */  bnez       $v0, .Lmenu_800FBC90
/* 119D68 800FBC78 00000000 */   nop
/* 119D6C 800FBC7C 8CA42CA4 */  lw         $a0, 0x2CA4($a1)
/* 119D70 800FBC80 0C03BCFF */  jal        func_menu_800EF3FC
/* 119D74 800FBC84 24A52A5C */   addiu     $a1, $a1, 0x2A5C
/* 119D78 800FBC88 24020001 */  addiu      $v0, $zero, 0x1
/* 119D7C 800FBC8C AE422690 */  sw         $v0, 0x2690($s2)
.Lmenu_800FBC90:
/* 119D80 800FBC90 8FBF001C */  lw         $ra, 0x1C($sp)
/* 119D84 800FBC94 8FB20018 */  lw         $s2, 0x18($sp)
/* 119D88 800FBC98 8FB10014 */  lw         $s1, 0x14($sp)
/* 119D8C 800FBC9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 119D90 800FBCA0 03E00008 */  jr         $ra
/* 119D94 800FBCA4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FBCA8
/* 119D98 800FBCA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 119D9C 800FBCAC AFB00010 */  sw         $s0, 0x10($sp)
/* 119DA0 800FBCB0 00808021 */  addu       $s0, $a0, $zero
/* 119DA4 800FBCB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 119DA8 800FBCB8 8E040354 */  lw         $a0, 0x354($s0)
/* 119DAC 800FBCBC 0C0401B4 */  jal        func_menu_801006D0
/* 119DB0 800FBCC0 24840004 */   addiu     $a0, $a0, 0x4
/* 119DB4 800FBCC4 96050360 */  lhu        $a1, 0x360($s0)
/* 119DB8 800FBCC8 2402000F */  addiu      $v0, $zero, 0xF
/* 119DBC 800FBCCC 10A20003 */  beq        $a1, $v0, .Lmenu_800FBCDC
/* 119DC0 800FBCD0 24020011 */   addiu     $v0, $zero, 0x11
/* 119DC4 800FBCD4 14A20004 */  bne        $a1, $v0, .Lmenu_800FBCE8
/* 119DC8 800FBCD8 00000000 */   nop
.Lmenu_800FBCDC:
/* 119DCC 800FBCDC 8E040354 */  lw         $a0, 0x354($s0)
/* 119DD0 800FBCE0 0C0401A6 */  jal        func_menu_80100698
/* 119DD4 800FBCE4 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800FBCE8:
/* 119DD8 800FBCE8 8E022690 */  lw         $v0, 0x2690($s0)
/* 119DDC 800FBCEC 1040000C */  beqz       $v0, .Lmenu_800FBD20
/* 119DE0 800FBCF0 24020002 */   addiu     $v0, $zero, 0x2
/* 119DE4 800FBCF4 8E050354 */  lw         $a1, 0x354($s0)
/* 119DE8 800FBCF8 8CA42CA4 */  lw         $a0, 0x2CA4($a1)
/* 119DEC 800FBCFC 8C830008 */  lw         $v1, 0x8($a0)
/* 119DF0 800FBD00 14620007 */  bne        $v1, $v0, .Lmenu_800FBD20
/* 119DF4 800FBD04 00000000 */   nop
/* 119DF8 800FBD08 8C82000C */  lw         $v0, 0xC($a0)
/* 119DFC 800FBD0C ACA24620 */  sw         $v0, 0x4620($a1)
/* 119E00 800FBD10 8E040354 */  lw         $a0, 0x354($s0)
/* 119E04 800FBD14 24050032 */  addiu      $a1, $zero, 0x32
/* 119E08 800FBD18 0C0401A6 */  jal        func_menu_80100698
/* 119E0C 800FBD1C 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800FBD20:
/* 119E10 800FBD20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 119E14 800FBD24 8FB00010 */  lw         $s0, 0x10($sp)
/* 119E18 800FBD28 03E00008 */  jr         $ra
/* 119E1C 800FBD2C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FBD30
/* 119E20 800FBD30 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 119E24 800FBD34 AFB20020 */  sw         $s2, 0x20($sp)
/* 119E28 800FBD38 00809021 */  addu       $s2, $a0, $zero
/* 119E2C 800FBD3C AFB40028 */  sw         $s4, 0x28($sp)
/* 119E30 800FBD40 00A0A021 */  addu       $s4, $a1, $zero
/* 119E34 800FBD44 AFB30024 */  sw         $s3, 0x24($sp)
/* 119E38 800FBD48 00009821 */  addu       $s3, $zero, $zero
/* 119E3C 800FBD4C 26420A70 */  addiu      $v0, $s2, 0xA70
/* 119E40 800FBD50 AFBF002C */  sw         $ra, 0x2C($sp)
/* 119E44 800FBD54 AFB1001C */  sw         $s1, 0x1C($sp)
/* 119E48 800FBD58 16820014 */  bne        $s4, $v0, .Lmenu_800FBDAC
/* 119E4C 800FBD5C AFB00018 */   sw        $s0, 0x18($sp)
/* 119E50 800FBD60 3C022AAA */  lui        $v0, (0x2AAAAAAB >> 16)
/* 119E54 800FBD64 92442520 */  lbu        $a0, 0x2520($s2)
/* 119E58 800FBD68 3442AAAB */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
/* 119E5C 800FBD6C 24840001 */  addiu      $a0, $a0, 0x1
/* 119E60 800FBD70 00820018 */  mult       $a0, $v0
/* 119E64 800FBD74 9245251D */  lbu        $a1, 0x251D($s2)
/* 119E68 800FBD78 00041FC3 */  sra        $v1, $a0, 31
/* 119E6C 800FBD7C 00004010 */  mfhi       $t0
/* 119E70 800FBD80 01031823 */  subu       $v1, $t0, $v1
/* 119E74 800FBD84 00031040 */  sll        $v0, $v1, 1
/* 119E78 800FBD88 00431021 */  addu       $v0, $v0, $v1
/* 119E7C 800FBD8C 00021040 */  sll        $v0, $v0, 1
/* 119E80 800FBD90 00822023 */  subu       $a0, $a0, $v0
/* 119E84 800FBD94 A2442520 */  sb         $a0, 0x2520($s2)
/* 119E88 800FBD98 308600FF */  andi       $a2, $a0, 0xFF
/* 119E8C 800FBD9C 0C03FB8E */  jal        func_menu_800FEE38
/* 119E90 800FBDA0 26442524 */   addiu     $a0, $s2, 0x2524
/* 119E94 800FBDA4 0803EFA7 */  j          .Lmenu_800FBE9C
/* 119E98 800FBDA8 00000000 */   nop
.Lmenu_800FBDAC:
/* 119E9C 800FBDAC 26421050 */  addiu      $v0, $s2, 0x1050
/* 119EA0 800FBDB0 16820008 */  bne        $s4, $v0, .Lmenu_800FBDD4
/* 119EA4 800FBDB4 26420D60 */   addiu     $v0, $s2, 0xD60
/* 119EA8 800FBDB8 8E420354 */  lw         $v0, 0x354($s2)
/* 119EAC 800FBDBC 8C424614 */  lw         $v0, 0x4614($v0)
/* 119EB0 800FBDC0 30420001 */  andi       $v0, $v0, 0x1
/* 119EB4 800FBDC4 1440000A */  bnez       $v0, .Lmenu_800FBDF0
/* 119EB8 800FBDC8 24020011 */   addiu     $v0, $zero, 0x11
/* 119EBC 800FBDCC 0803EF7C */  j          .Lmenu_800FBDF0
/* 119EC0 800FBDD0 24020003 */   addiu     $v0, $zero, 0x3
.Lmenu_800FBDD4:
/* 119EC4 800FBDD4 16820026 */  bne        $s4, $v0, .Lmenu_800FBE70
/* 119EC8 800FBDD8 26421340 */   addiu     $v0, $s2, 0x1340
/* 119ECC 800FBDDC 8E420354 */  lw         $v0, 0x354($s2)
/* 119ED0 800FBDE0 8C424614 */  lw         $v0, 0x4614($v0)
/* 119ED4 800FBDE4 30420001 */  andi       $v0, $v0, 0x1
/* 119ED8 800FBDE8 10400004 */  beqz       $v0, .Lmenu_800FBDFC
/* 119EDC 800FBDEC 2402000F */   addiu     $v0, $zero, 0xF
.Lmenu_800FBDF0:
/* 119EE0 800FBDF0 A6420360 */  sh         $v0, 0x360($s2)
/* 119EE4 800FBDF4 0803EFA7 */  j          .Lmenu_800FBE9C
/* 119EE8 800FBDF8 24130001 */   addiu     $s3, $zero, 0x1
.Lmenu_800FBDFC:
/* 119EEC 800FBDFC 0C03EE94 */  jal        func_menu_800FBA50
/* 119EF0 800FBE00 02402021 */   addu      $a0, $s2, $zero
/* 119EF4 800FBE04 10400017 */  beqz       $v0, .Lmenu_800FBE64
/* 119EF8 800FBE08 02402021 */   addu      $a0, $s2, $zero
/* 119EFC 800FBE0C 26511340 */  addiu      $s1, $s2, 0x1340
/* 119F00 800FBE10 02202821 */  addu       $a1, $s1, $zero
/* 119F04 800FBE14 240600A1 */  addiu      $a2, $zero, 0xA1
/* 119F08 800FBE18 2407004F */  addiu      $a3, $zero, 0x4F
/* 119F0C 800FBE1C 24020020 */  addiu      $v0, $zero, 0x20
/* 119F10 800FBE20 0C040297 */  jal        func_menu_80100A5C
/* 119F14 800FBE24 AFA20010 */   sw        $v0, 0x10($sp)
/* 119F18 800FBE28 02402021 */  addu       $a0, $s2, $zero
/* 119F1C 800FBE2C 26501630 */  addiu      $s0, $s2, 0x1630
/* 119F20 800FBE30 02002821 */  addu       $a1, $s0, $zero
/* 119F24 800FBE34 240600A1 */  addiu      $a2, $zero, 0xA1
/* 119F28 800FBE38 2407004E */  addiu      $a3, $zero, 0x4E
/* 119F2C 800FBE3C 2402001F */  addiu      $v0, $zero, 0x1F
/* 119F30 800FBE40 0C040297 */  jal        func_menu_80100A5C
/* 119F34 800FBE44 AFA20010 */   sw        $v0, 0x10($sp)
/* 119F38 800FBE48 02402021 */  addu       $a0, $s2, $zero
/* 119F3C 800FBE4C 02202821 */  addu       $a1, $s1, $zero
/* 119F40 800FBE50 02003021 */  addu       $a2, $s0, $zero
/* 119F44 800FBE54 0C046B48 */  jal        func_menu_8011AD20
/* 119F48 800FBE58 2407007B */   addiu     $a3, $zero, 0x7B
/* 119F4C 800FBE5C 0803EFA7 */  j          .Lmenu_800FBE9C
/* 119F50 800FBE60 00000000 */   nop
.Lmenu_800FBE64:
/* 119F54 800FBE64 24020003 */  addiu      $v0, $zero, 0x3
/* 119F58 800FBE68 0803EFA7 */  j          .Lmenu_800FBE9C
/* 119F5C 800FBE6C A6420360 */   sh        $v0, 0x360($s2)
.Lmenu_800FBE70:
/* 119F60 800FBE70 16820005 */  bne        $s4, $v0, .Lmenu_800FBE88
/* 119F64 800FBE74 26421630 */   addiu     $v0, $s2, 0x1630
/* 119F68 800FBE78 8E440284 */  lw         $a0, 0x284($s2)
/* 119F6C 800FBE7C 24020003 */  addiu      $v0, $zero, 0x3
/* 119F70 800FBE80 0803EFA5 */  j          .Lmenu_800FBE94
/* 119F74 800FBE84 A6420360 */   sh        $v0, 0x360($s2)
.Lmenu_800FBE88:
/* 119F78 800FBE88 16820004 */  bne        $s4, $v0, .Lmenu_800FBE9C
/* 119F7C 800FBE8C 00000000 */   nop
/* 119F80 800FBE90 8E440284 */  lw         $a0, 0x284($s2)
.Lmenu_800FBE94:
/* 119F84 800FBE94 0C045449 */  jal        func_menu_80115124
/* 119F88 800FBE98 00000000 */   nop
.Lmenu_800FBE9C:
/* 119F8C 800FBE9C 12600005 */  beqz       $s3, .Lmenu_800FBEB4
/* 119F90 800FBEA0 00000000 */   nop
/* 119F94 800FBEA4 0C03EEFF */  jal        func_menu_800FBBFC
/* 119F98 800FBEA8 02402021 */   addu      $a0, $s2, $zero
/* 119F9C 800FBEAC 0C03F00A */  jal        func_menu_800FC028
/* 119FA0 800FBEB0 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800FBEB4:
/* 119FA4 800FBEB4 96430360 */  lhu        $v1, 0x360($s2)
/* 119FA8 800FBEB8 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 119FAC 800FBEBC 10620002 */  beq        $v1, $v0, .Lmenu_800FBEC8
/* 119FB0 800FBEC0 24020001 */   addiu     $v0, $zero, 0x1
/* 119FB4 800FBEC4 AE420364 */  sw         $v0, 0x364($s2)
.Lmenu_800FBEC8:
/* 119FB8 800FBEC8 AE54035C */  sw         $s4, 0x35C($s2)
/* 119FBC 800FBECC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 119FC0 800FBED0 8FB40028 */  lw         $s4, 0x28($sp)
/* 119FC4 800FBED4 8FB30024 */  lw         $s3, 0x24($sp)
/* 119FC8 800FBED8 8FB20020 */  lw         $s2, 0x20($sp)
/* 119FCC 800FBEDC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 119FD0 800FBEE0 8FB00018 */  lw         $s0, 0x18($sp)
/* 119FD4 800FBEE4 03E00008 */  jr         $ra
/* 119FD8 800FBEE8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FBEEC
/* 119FDC 800FBEEC 03E00008 */  jr         $ra
/* 119FE0 800FBEF0 00000000 */   nop

glabel func_menu_800FBEF4
/* 119FE4 800FBEF4 00803021 */  addu       $a2, $a0, $zero
/* 119FE8 800FBEF8 24C221F4 */  addiu      $v0, $a2, 0x21F4
/* 119FEC 800FBEFC 14A20022 */  bne        $a1, $v0, .Lmenu_800FBF88
/* 119FF0 800FBF00 3C04BFFF */   lui       $a0, (0xBFFFFFFF >> 16)
/* 119FF4 800FBF04 24C31DF8 */  addiu      $v1, $a2, 0x1DF8
/* 119FF8 800FBF08 8C620018 */  lw         $v0, 0x18($v1)
/* 119FFC 800FBF0C 3484FFFF */  ori        $a0, $a0, (0xBFFFFFFF & 0xFFFF)
/* 11A000 800FBF10 00441024 */  and        $v0, $v0, $a0
/* 11A004 800FBF14 AC620018 */  sw         $v0, 0x18($v1)
/* 11A008 800FBF18 24C30720 */  addiu      $v1, $a2, 0x720
/* 11A00C 800FBF1C 8C620018 */  lw         $v0, 0x18($v1)
/* 11A010 800FBF20 00441024 */  and        $v0, $v0, $a0
/* 11A014 800FBF24 AC620018 */  sw         $v0, 0x18($v1)
/* 11A018 800FBF28 24C3077C */  addiu      $v1, $a2, 0x77C
/* 11A01C 800FBF2C 8C620018 */  lw         $v0, 0x18($v1)
/* 11A020 800FBF30 00441024 */  and        $v0, $v0, $a0
/* 11A024 800FBF34 AC620018 */  sw         $v0, 0x18($v1)
/* 11A028 800FBF38 24C307D8 */  addiu      $v1, $a2, 0x7D8
/* 11A02C 800FBF3C 8C620018 */  lw         $v0, 0x18($v1)
/* 11A030 800FBF40 00441024 */  and        $v0, $v0, $a0
/* 11A034 800FBF44 AC620018 */  sw         $v0, 0x18($v1)
/* 11A038 800FBF48 24C30834 */  addiu      $v1, $a2, 0x834
/* 11A03C 800FBF4C 8C620018 */  lw         $v0, 0x18($v1)
/* 11A040 800FBF50 00441024 */  and        $v0, $v0, $a0
/* 11A044 800FBF54 AC620018 */  sw         $v0, 0x18($v1)
/* 11A048 800FBF58 24C30890 */  addiu      $v1, $a2, 0x890
/* 11A04C 800FBF5C 8C620018 */  lw         $v0, 0x18($v1)
/* 11A050 800FBF60 00441024 */  and        $v0, $v0, $a0
/* 11A054 800FBF64 AC620018 */  sw         $v0, 0x18($v1)
/* 11A058 800FBF68 24C30908 */  addiu      $v1, $a2, 0x908
/* 11A05C 800FBF6C 8C620018 */  lw         $v0, 0x18($v1)
/* 11A060 800FBF70 00441024 */  and        $v0, $v0, $a0
/* 11A064 800FBF74 AC620018 */  sw         $v0, 0x18($v1)
/* 11A068 800FBF78 24C30980 */  addiu      $v1, $a2, 0x980
/* 11A06C 800FBF7C 8C620018 */  lw         $v0, 0x18($v1)
/* 11A070 800FBF80 00441024 */  and        $v0, $v0, $a0
/* 11A074 800FBF84 AC620018 */  sw         $v0, 0x18($v1)
.Lmenu_800FBF88:
/* 11A078 800FBF88 03E00008 */  jr         $ra
/* 11A07C 800FBF8C 00000000 */   nop

glabel func_menu_800FBF90
/* 11A080 800FBF90 00803021 */  addu       $a2, $a0, $zero
/* 11A084 800FBF94 24C221F4 */  addiu      $v0, $a2, 0x21F4
/* 11A088 800FBF98 14A20021 */  bne        $a1, $v0, .Lmenu_800FC020
/* 11A08C 800FBF9C 24C31DF8 */   addiu     $v1, $a2, 0x1DF8
/* 11A090 800FBFA0 8C620018 */  lw         $v0, 0x18($v1)
/* 11A094 800FBFA4 3C044000 */  lui        $a0, (0x40000000 >> 16)
/* 11A098 800FBFA8 00441025 */  or         $v0, $v0, $a0
/* 11A09C 800FBFAC AC620018 */  sw         $v0, 0x18($v1)
/* 11A0A0 800FBFB0 24C30720 */  addiu      $v1, $a2, 0x720
/* 11A0A4 800FBFB4 8C620018 */  lw         $v0, 0x18($v1)
/* 11A0A8 800FBFB8 00441025 */  or         $v0, $v0, $a0
/* 11A0AC 800FBFBC AC620018 */  sw         $v0, 0x18($v1)
/* 11A0B0 800FBFC0 24C3077C */  addiu      $v1, $a2, 0x77C
/* 11A0B4 800FBFC4 8C620018 */  lw         $v0, 0x18($v1)
/* 11A0B8 800FBFC8 00441025 */  or         $v0, $v0, $a0
/* 11A0BC 800FBFCC AC620018 */  sw         $v0, 0x18($v1)
/* 11A0C0 800FBFD0 24C307D8 */  addiu      $v1, $a2, 0x7D8
/* 11A0C4 800FBFD4 8C620018 */  lw         $v0, 0x18($v1)
/* 11A0C8 800FBFD8 00441025 */  or         $v0, $v0, $a0
/* 11A0CC 800FBFDC AC620018 */  sw         $v0, 0x18($v1)
/* 11A0D0 800FBFE0 24C30834 */  addiu      $v1, $a2, 0x834
/* 11A0D4 800FBFE4 8C620018 */  lw         $v0, 0x18($v1)
/* 11A0D8 800FBFE8 00441025 */  or         $v0, $v0, $a0
/* 11A0DC 800FBFEC AC620018 */  sw         $v0, 0x18($v1)
/* 11A0E0 800FBFF0 24C30890 */  addiu      $v1, $a2, 0x890
/* 11A0E4 800FBFF4 8C620018 */  lw         $v0, 0x18($v1)
/* 11A0E8 800FBFF8 00441025 */  or         $v0, $v0, $a0
/* 11A0EC 800FBFFC AC620018 */  sw         $v0, 0x18($v1)
/* 11A0F0 800FC000 24C30908 */  addiu      $v1, $a2, 0x908
/* 11A0F4 800FC004 8C620018 */  lw         $v0, 0x18($v1)
/* 11A0F8 800FC008 00441025 */  or         $v0, $v0, $a0
/* 11A0FC 800FC00C AC620018 */  sw         $v0, 0x18($v1)
/* 11A100 800FC010 24C30980 */  addiu      $v1, $a2, 0x980
/* 11A104 800FC014 8C620018 */  lw         $v0, 0x18($v1)
/* 11A108 800FC018 00441025 */  or         $v0, $v0, $a0
/* 11A10C 800FC01C AC620018 */  sw         $v0, 0x18($v1)
.Lmenu_800FC020:
/* 11A110 800FC020 03E00008 */  jr         $ra
/* 11A114 800FC024 00000000 */   nop

glabel func_menu_800FC028
/* 11A118 800FC028 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11A11C 800FC02C AFB00020 */  sw         $s0, 0x20($sp)
/* 11A120 800FC030 00808021 */  addu       $s0, $a0, $zero
/* 11A124 800FC034 26042680 */  addiu      $a0, $s0, 0x2680
/* 11A128 800FC038 27A50010 */  addiu      $a1, $sp, 0x10
/* 11A12C 800FC03C AFBF002C */  sw         $ra, 0x2C($sp)
/* 11A130 800FC040 AFB20028 */  sw         $s2, 0x28($sp)
/* 11A134 800FC044 0C001854 */  jal        func_80006150
/* 11A138 800FC048 AFB10024 */   sw        $s1, 0x24($sp)
/* 11A13C 800FC04C 00008821 */  addu       $s1, $zero, $zero
/* 11A140 800FC050 3C028012 */  lui        $v0, %hi(D_menu_80126F18)
/* 11A144 800FC054 24526F18 */  addiu      $s2, $v0, %lo(D_menu_80126F18)
/* 11A148 800FC058 A3A0001D */  sb         $zero, 0x1D($sp)
.Lmenu_800FC05C:
/* 11A14C 800FC05C 8E440000 */  lw         $a0, 0x0($s2)
/* 11A150 800FC060 0C0006A2 */  jal        func_80001A88
/* 11A154 800FC064 27A50010 */   addiu     $a1, $sp, 0x10
/* 11A158 800FC068 5440006D */  bnel       $v0, $zero, .Lmenu_800FC220
/* 11A15C 800FC06C 26520004 */   addiu     $s2, $s2, 0x4
/* 11A160 800FC070 2E22000C */  sltiu      $v0, $s1, 0xC
/* 11A164 800FC074 10400064 */  beqz       $v0, .Lmenu_800FC208
/* 11A168 800FC078 2402000C */   addiu     $v0, $zero, 0xC
/* 11A16C 800FC07C 8E020354 */  lw         $v0, 0x354($s0)
/* 11A170 800FC080 8C450000 */  lw         $a1, 0x0($v0)
/* 11A174 800FC084 24020001 */  addiu      $v0, $zero, 0x1
/* 11A178 800FC088 8CA40024 */  lw         $a0, 0x24($a1)
/* 11A17C 800FC08C 02221804 */  sllv       $v1, $v0, $s1
/* 11A180 800FC090 00831024 */  and        $v0, $a0, $v1
/* 11A184 800FC094 14400059 */  bnez       $v0, .Lmenu_800FC1FC
/* 11A188 800FC098 00031027 */   nor       $v0, $zero, $v1
/* 11A18C 800FC09C 00831025 */  or         $v0, $a0, $v1
/* 11A190 800FC0A0 ACA20024 */  sw         $v0, 0x24($a1)
/* 11A194 800FC0A4 24020040 */  addiu      $v0, $zero, 0x40
/* 11A198 800FC0A8 1062002F */  beq        $v1, $v0, .Lmenu_800FC168
/* 11A19C 800FC0AC 2C620041 */   sltiu     $v0, $v1, 0x41
/* 11A1A0 800FC0B0 1040000E */  beqz       $v0, .Lmenu_800FC0EC
/* 11A1A4 800FC0B4 24020008 */   addiu     $v0, $zero, 0x8
/* 11A1A8 800FC0B8 10620021 */  beq        $v1, $v0, .Lmenu_800FC140
/* 11A1AC 800FC0BC 2C620009 */   sltiu     $v0, $v1, 0x9
/* 11A1B0 800FC0C0 10400005 */  beqz       $v0, .Lmenu_800FC0D8
/* 11A1B4 800FC0C4 24020004 */   addiu     $v0, $zero, 0x4
/* 11A1B8 800FC0C8 10620018 */  beq        $v1, $v0, .Lmenu_800FC12C
/* 11A1BC 800FC0CC 00000000 */   nop
/* 11A1C0 800FC0D0 0803F088 */  j          .Lmenu_800FC220
/* 11A1C4 800FC0D4 26520004 */   addiu     $s2, $s2, 0x4
.Lmenu_800FC0D8:
/* 11A1C8 800FC0D8 24020010 */  addiu      $v0, $zero, 0x10
/* 11A1CC 800FC0DC 1062001D */  beq        $v1, $v0, .Lmenu_800FC154
/* 11A1D0 800FC0E0 00000000 */   nop
/* 11A1D4 800FC0E4 0803F088 */  j          .Lmenu_800FC220
/* 11A1D8 800FC0E8 26520004 */   addiu     $s2, $s2, 0x4
.Lmenu_800FC0EC:
/* 11A1DC 800FC0EC 24020200 */  addiu      $v0, $zero, 0x200
/* 11A1E0 800FC0F0 10620028 */  beq        $v1, $v0, .Lmenu_800FC194
/* 11A1E4 800FC0F4 2C620201 */   sltiu     $v0, $v1, 0x201
/* 11A1E8 800FC0F8 10400005 */  beqz       $v0, .Lmenu_800FC110
/* 11A1EC 800FC0FC 24020080 */   addiu     $v0, $zero, 0x80
/* 11A1F0 800FC100 1062001E */  beq        $v1, $v0, .Lmenu_800FC17C
/* 11A1F4 800FC104 2403FFBF */   addiu     $v1, $zero, -0x41
/* 11A1F8 800FC108 0803F088 */  j          .Lmenu_800FC220
/* 11A1FC 800FC10C 26520004 */   addiu     $s2, $s2, 0x4
.Lmenu_800FC110:
/* 11A200 800FC110 24020400 */  addiu      $v0, $zero, 0x400
/* 11A204 800FC114 10620028 */  beq        $v1, $v0, .Lmenu_800FC1B8
/* 11A208 800FC118 24020800 */   addiu     $v0, $zero, 0x800
/* 11A20C 800FC11C 1062002F */  beq        $v1, $v0, .Lmenu_800FC1DC
/* 11A210 800FC120 00000000 */   nop
/* 11A214 800FC124 0803F088 */  j          .Lmenu_800FC220
/* 11A218 800FC128 26520004 */   addiu     $s2, $s2, 0x4
.Lmenu_800FC12C:
/* 11A21C 800FC12C 8E020354 */  lw         $v0, 0x354($s0)
/* 11A220 800FC130 8C440000 */  lw         $a0, 0x0($v0)
/* 11A224 800FC134 8C820024 */  lw         $v0, 0x24($a0)
/* 11A228 800FC138 0803F062 */  j          .Lmenu_800FC188
/* 11A22C 800FC13C 2403FFA7 */   addiu     $v1, $zero, -0x59
.Lmenu_800FC140:
/* 11A230 800FC140 8E020354 */  lw         $v0, 0x354($s0)
/* 11A234 800FC144 8C440000 */  lw         $a0, 0x0($v0)
/* 11A238 800FC148 8C820024 */  lw         $v0, 0x24($a0)
/* 11A23C 800FC14C 0803F062 */  j          .Lmenu_800FC188
/* 11A240 800FC150 2403FFAB */   addiu     $v1, $zero, -0x55
.Lmenu_800FC154:
/* 11A244 800FC154 8E020354 */  lw         $v0, 0x354($s0)
/* 11A248 800FC158 8C440000 */  lw         $a0, 0x0($v0)
/* 11A24C 800FC15C 8C820024 */  lw         $v0, 0x24($a0)
/* 11A250 800FC160 0803F062 */  j          .Lmenu_800FC188
/* 11A254 800FC164 2403FFB3 */   addiu     $v1, $zero, -0x4D
.Lmenu_800FC168:
/* 11A258 800FC168 8E020354 */  lw         $v0, 0x354($s0)
/* 11A25C 800FC16C 8C440000 */  lw         $a0, 0x0($v0)
/* 11A260 800FC170 8C820024 */  lw         $v0, 0x24($a0)
/* 11A264 800FC174 0803F062 */  j          .Lmenu_800FC188
/* 11A268 800FC178 2403FF63 */   addiu     $v1, $zero, -0x9D
.Lmenu_800FC17C:
/* 11A26C 800FC17C 8E020354 */  lw         $v0, 0x354($s0)
/* 11A270 800FC180 8C440000 */  lw         $a0, 0x0($v0)
/* 11A274 800FC184 8C820024 */  lw         $v0, 0x24($a0)
.Lmenu_800FC188:
/* 11A278 800FC188 00431024 */  and        $v0, $v0, $v1
/* 11A27C 800FC18C 0803F087 */  j          .Lmenu_800FC21C
/* 11A280 800FC190 AC820024 */   sw        $v0, 0x24($a0)
.Lmenu_800FC194:
/* 11A284 800FC194 8E020354 */  lw         $v0, 0x354($s0)
/* 11A288 800FC198 8C450000 */  lw         $a1, 0x0($v0)
/* 11A28C 800FC19C 8CA40024 */  lw         $a0, 0x24($a1)
/* 11A290 800FC1A0 24020C00 */  addiu      $v0, $zero, 0xC00
/* 11A294 800FC1A4 30830C00 */  andi       $v1, $a0, 0xC00
/* 11A298 800FC1A8 5462001D */  bnel       $v1, $v0, .Lmenu_800FC220
/* 11A29C 800FC1AC 26520004 */   addiu     $s2, $s2, 0x4
/* 11A2A0 800FC1B0 0803F07F */  j          .Lmenu_800FC1FC
/* 11A2A4 800FC1B4 2402F7FF */   addiu     $v0, $zero, -0x801
.Lmenu_800FC1B8:
/* 11A2A8 800FC1B8 8E020354 */  lw         $v0, 0x354($s0)
/* 11A2AC 800FC1BC 8C450000 */  lw         $a1, 0x0($v0)
/* 11A2B0 800FC1C0 8CA40024 */  lw         $a0, 0x24($a1)
/* 11A2B4 800FC1C4 24020A00 */  addiu      $v0, $zero, 0xA00
/* 11A2B8 800FC1C8 30830A00 */  andi       $v1, $a0, 0xA00
/* 11A2BC 800FC1CC 54620014 */  bnel       $v1, $v0, .Lmenu_800FC220
/* 11A2C0 800FC1D0 26520004 */   addiu     $s2, $s2, 0x4
/* 11A2C4 800FC1D4 0803F07F */  j          .Lmenu_800FC1FC
/* 11A2C8 800FC1D8 2402FDFF */   addiu     $v0, $zero, -0x201
.Lmenu_800FC1DC:
/* 11A2CC 800FC1DC 8E020354 */  lw         $v0, 0x354($s0)
/* 11A2D0 800FC1E0 8C450000 */  lw         $a1, 0x0($v0)
/* 11A2D4 800FC1E4 8CA40024 */  lw         $a0, 0x24($a1)
/* 11A2D8 800FC1E8 24020600 */  addiu      $v0, $zero, 0x600
/* 11A2DC 800FC1EC 30830600 */  andi       $v1, $a0, 0x600
/* 11A2E0 800FC1F0 5462000B */  bnel       $v1, $v0, .Lmenu_800FC220
/* 11A2E4 800FC1F4 26520004 */   addiu     $s2, $s2, 0x4
/* 11A2E8 800FC1F8 2402FBFF */  addiu      $v0, $zero, -0x401
.Lmenu_800FC1FC:
/* 11A2EC 800FC1FC 00821024 */  and        $v0, $a0, $v0
/* 11A2F0 800FC200 0803F087 */  j          .Lmenu_800FC21C
/* 11A2F4 800FC204 ACA20024 */   sw        $v0, 0x24($a1)
.Lmenu_800FC208:
/* 11A2F8 800FC208 56220005 */  bnel       $s1, $v0, .Lmenu_800FC220
/* 11A2FC 800FC20C 26520004 */   addiu     $s2, $s2, 0x4
/* 11A300 800FC210 8E020354 */  lw         $v0, 0x354($s0)
/* 11A304 800FC214 8C420000 */  lw         $v0, 0x0($v0)
/* 11A308 800FC218 AC400024 */  sw         $zero, 0x24($v0)
.Lmenu_800FC21C:
/* 11A30C 800FC21C 26520004 */  addiu      $s2, $s2, 0x4
.Lmenu_800FC220:
/* 11A310 800FC220 26310001 */  addiu      $s1, $s1, 0x1
/* 11A314 800FC224 2E22000D */  sltiu      $v0, $s1, 0xD
/* 11A318 800FC228 1440FF8C */  bnez       $v0, .Lmenu_800FC05C
/* 11A31C 800FC22C 00000000 */   nop
/* 11A320 800FC230 8FBF002C */  lw         $ra, 0x2C($sp)
/* 11A324 800FC234 8FB20028 */  lw         $s2, 0x28($sp)
/* 11A328 800FC238 8FB10024 */  lw         $s1, 0x24($sp)
/* 11A32C 800FC23C 8FB00020 */  lw         $s0, 0x20($sp)
/* 11A330 800FC240 03E00008 */  jr         $ra
/* 11A334 800FC244 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FC248
/* 11A338 800FC248 03E00008 */  jr         $ra
/* 11A33C 800FC24C 00000000 */   nop

glabel func_menu_800FC250
/* 11A340 800FC250 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11A344 800FC254 AFB20018 */  sw         $s2, 0x18($sp)
/* 11A348 800FC258 00809021 */  addu       $s2, $a0, $zero
/* 11A34C 800FC25C AFBF0020 */  sw         $ra, 0x20($sp)
/* 11A350 800FC260 AFB3001C */  sw         $s3, 0x1C($sp)
/* 11A354 800FC264 AFB10014 */  sw         $s1, 0x14($sp)
/* 11A358 800FC268 0C0401D8 */  jal        func_menu_80100760
/* 11A35C 800FC26C AFB00010 */   sw        $s0, 0x10($sp)
/* 11A360 800FC270 26440368 */  addiu      $a0, $s2, 0x368
/* 11A364 800FC274 3C02800D */  lui        $v0, %hi(D_menu_800CCED8)
/* 11A368 800FC278 2442CED8 */  addiu      $v0, $v0, %lo(D_menu_800CCED8)
/* 11A36C 800FC27C 0C047BA4 */  jal        func_menu_8011EE90
/* 11A370 800FC280 AE420000 */   sw        $v0, 0x0($s2)
/* 11A374 800FC284 0C047CA8 */  jal        func_menu_8011F2A0
/* 11A378 800FC288 264403C4 */   addiu     $a0, $s2, 0x3C4
/* 11A37C 800FC28C 0C044424 */  jal        func_menu_80111090
/* 11A380 800FC290 2644043C */   addiu     $a0, $s2, 0x43C
/* 11A384 800FC294 0C040F38 */  jal        func_menu_80103CE0
/* 11A388 800FC298 26440914 */   addiu     $a0, $s2, 0x914
/* 11A38C 800FC29C 0C040F38 */  jal        func_menu_80103CE0
/* 11A390 800FC2A0 26440C04 */   addiu     $a0, $s2, 0xC04
/* 11A394 800FC2A4 0C040F38 */  jal        func_menu_80103CE0
/* 11A398 800FC2A8 26440EF4 */   addiu     $a0, $s2, 0xEF4
/* 11A39C 800FC2AC 0C040F38 */  jal        func_menu_80103CE0
/* 11A3A0 800FC2B0 264411E4 */   addiu     $a0, $s2, 0x11E4
/* 11A3A4 800FC2B4 0C040F38 */  jal        func_menu_80103CE0
/* 11A3A8 800FC2B8 264414D4 */   addiu     $a0, $s2, 0x14D4
/* 11A3AC 800FC2BC 0C040F38 */  jal        func_menu_80103CE0
/* 11A3B0 800FC2C0 264417C4 */   addiu     $a0, $s2, 0x17C4
/* 11A3B4 800FC2C4 0C040F38 */  jal        func_menu_80103CE0
/* 11A3B8 800FC2C8 26441AB4 */   addiu     $a0, $s2, 0x1AB4
/* 11A3BC 800FC2CC 0C040F38 */  jal        func_menu_80103CE0
/* 11A3C0 800FC2D0 26441DA4 */   addiu     $a0, $s2, 0x1DA4
/* 11A3C4 800FC2D4 0C040F38 */  jal        func_menu_80103CE0
/* 11A3C8 800FC2D8 26442094 */   addiu     $a0, $s2, 0x2094
/* 11A3CC 800FC2DC 26502384 */  addiu      $s0, $s2, 0x2384
/* 11A3D0 800FC2E0 0C04729C */  jal        func_menu_8011CA70
/* 11A3D4 800FC2E4 02002021 */   addu      $a0, $s0, $zero
/* 11A3D8 800FC2E8 26442418 */  addiu      $a0, $s2, 0x2418
/* 11A3DC 800FC2EC 3C02800D */  lui        $v0, %hi(D_menu_800D0740)
/* 11A3E0 800FC2F0 24420740 */  addiu      $v0, $v0, %lo(D_menu_800D0740)
/* 11A3E4 800FC2F4 0C044D38 */  jal        func_menu_801134E0
/* 11A3E8 800FC2F8 AE020054 */   sw        $v0, 0x54($s0)
/* 11A3EC 800FC2FC 0C047CA8 */  jal        func_menu_8011F2A0
/* 11A3F0 800FC300 26442E0C */   addiu     $a0, $s2, 0x2E0C
/* 11A3F4 800FC304 26512E84 */  addiu      $s1, $s2, 0x2E84
/* 11A3F8 800FC308 2410000B */  addiu      $s0, $zero, 0xB
/* 11A3FC 800FC30C 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_800FC310:
/* 11A400 800FC310 0C047BA4 */  jal        func_menu_8011EE90
/* 11A404 800FC314 02202021 */   addu      $a0, $s1, $zero
/* 11A408 800FC318 2610FFFF */  addiu      $s0, $s0, -0x1
/* 11A40C 800FC31C 1613FFFC */  bne        $s0, $s3, .Lmenu_800FC310
/* 11A410 800FC320 2631005C */   addiu     $s1, $s1, 0x5C
/* 11A414 800FC324 0C03B56C */  jal        func_menu_800ED5B0
/* 11A418 800FC328 264434D8 */   addiu     $a0, $s2, 0x34D8
/* 11A41C 800FC32C 0C01955C */  jal        func_80065570
/* 11A420 800FC330 26443528 */   addiu     $a0, $s2, 0x3528
/* 11A424 800FC334 0C042D90 */  jal        func_menu_8010B640
/* 11A428 800FC338 26443628 */   addiu     $a0, $s2, 0x3628
/* 11A42C 800FC33C 0C03D054 */  jal        func_menu_800F4150
/* 11A430 800FC340 264436C8 */   addiu     $a0, $s2, 0x36C8
/* 11A434 800FC344 0C03F132 */  jal        func_menu_800FC4C8
/* 11A438 800FC348 02402021 */   addu      $a0, $s2, $zero
/* 11A43C 800FC34C 02401021 */  addu       $v0, $s2, $zero
/* 11A440 800FC350 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11A444 800FC354 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11A448 800FC358 8FB20018 */  lw         $s2, 0x18($sp)
/* 11A44C 800FC35C 8FB10014 */  lw         $s1, 0x14($sp)
/* 11A450 800FC360 8FB00010 */  lw         $s0, 0x10($sp)
/* 11A454 800FC364 03E00008 */  jr         $ra
/* 11A458 800FC368 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FC36C
/* 11A45C 800FC36C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11A460 800FC370 AFB10014 */  sw         $s1, 0x14($sp)
/* 11A464 800FC374 00808821 */  addu       $s1, $a0, $zero
/* 11A468 800FC378 AFB3001C */  sw         $s3, 0x1C($sp)
/* 11A46C 800FC37C 00A09821 */  addu       $s3, $a1, $zero
/* 11A470 800FC380 3C02800D */  lui        $v0, %hi(D_menu_800CCED8)
/* 11A474 800FC384 2442CED8 */  addiu      $v0, $v0, %lo(D_menu_800CCED8)
/* 11A478 800FC388 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11A47C 800FC38C AFB20018 */  sw         $s2, 0x18($sp)
/* 11A480 800FC390 AFB00010 */  sw         $s0, 0x10($sp)
/* 11A484 800FC394 0C03F24D */  jal        func_menu_800FC934
/* 11A488 800FC398 AE220000 */   sw        $v0, 0x0($s1)
/* 11A48C 800FC39C 26243628 */  addiu      $a0, $s1, 0x3628
/* 11A490 800FC3A0 0C042D9F */  jal        func_menu_8010B67C
/* 11A494 800FC3A4 24050002 */   addiu     $a1, $zero, 0x2
/* 11A498 800FC3A8 262434D8 */  addiu      $a0, $s1, 0x34D8
/* 11A49C 800FC3AC 0C03B579 */  jal        func_menu_800ED5E4
/* 11A4A0 800FC3B0 24050002 */   addiu     $a1, $zero, 0x2
/* 11A4A4 800FC3B4 26222E84 */  addiu      $v0, $s1, 0x2E84
/* 11A4A8 800FC3B8 1040000C */  beqz       $v0, .Lmenu_800FC3EC
/* 11A4AC 800FC3BC 263032D4 */   addiu     $s0, $s1, 0x32D4
/* 11A4B0 800FC3C0 1050000A */  beq        $v0, $s0, .Lmenu_800FC3EC
/* 11A4B4 800FC3C4 00409021 */   addu      $s2, $v0, $zero
/* 11A4B8 800FC3C8 2610FFA4 */  addiu      $s0, $s0, -0x5C
.Lmenu_800FC3CC:
/* 11A4BC 800FC3CC 8E020054 */  lw         $v0, 0x54($s0)
/* 11A4C0 800FC3D0 24050002 */  addiu      $a1, $zero, 0x2
/* 11A4C4 800FC3D4 84440010 */  lh         $a0, 0x10($v0)
/* 11A4C8 800FC3D8 8C420014 */  lw         $v0, 0x14($v0)
/* 11A4CC 800FC3DC 0040F809 */  jalr       $v0
/* 11A4D0 800FC3E0 02042021 */   addu      $a0, $s0, $a0
/* 11A4D4 800FC3E4 1650FFF9 */  bne        $s2, $s0, .Lmenu_800FC3CC
/* 11A4D8 800FC3E8 2610FFA4 */   addiu     $s0, $s0, -0x5C
.Lmenu_800FC3EC:
/* 11A4DC 800FC3EC 26242E0C */  addiu      $a0, $s1, 0x2E0C
/* 11A4E0 800FC3F0 0C047CB9 */  jal        func_menu_8011F2E4
/* 11A4E4 800FC3F4 24050002 */   addiu     $a1, $zero, 0x2
/* 11A4E8 800FC3F8 26242418 */  addiu      $a0, $s1, 0x2418
/* 11A4EC 800FC3FC 0C044D49 */  jal        func_menu_80113524
/* 11A4F0 800FC400 24050002 */   addiu     $a1, $zero, 0x2
/* 11A4F4 800FC404 26242384 */  addiu      $a0, $s1, 0x2384
/* 11A4F8 800FC408 0C0472AB */  jal        func_menu_8011CAAC
/* 11A4FC 800FC40C 24050002 */   addiu     $a1, $zero, 0x2
/* 11A500 800FC410 26242094 */  addiu      $a0, $s1, 0x2094
/* 11A504 800FC414 0C040F4B */  jal        func_menu_80103D2C
/* 11A508 800FC418 24050002 */   addiu     $a1, $zero, 0x2
/* 11A50C 800FC41C 26241DA4 */  addiu      $a0, $s1, 0x1DA4
/* 11A510 800FC420 0C040F4B */  jal        func_menu_80103D2C
/* 11A514 800FC424 24050002 */   addiu     $a1, $zero, 0x2
/* 11A518 800FC428 26241AB4 */  addiu      $a0, $s1, 0x1AB4
/* 11A51C 800FC42C 0C040F4B */  jal        func_menu_80103D2C
/* 11A520 800FC430 24050002 */   addiu     $a1, $zero, 0x2
/* 11A524 800FC434 262417C4 */  addiu      $a0, $s1, 0x17C4
/* 11A528 800FC438 0C040F4B */  jal        func_menu_80103D2C
/* 11A52C 800FC43C 24050002 */   addiu     $a1, $zero, 0x2
/* 11A530 800FC440 262414D4 */  addiu      $a0, $s1, 0x14D4
/* 11A534 800FC444 0C040F4B */  jal        func_menu_80103D2C
/* 11A538 800FC448 24050002 */   addiu     $a1, $zero, 0x2
/* 11A53C 800FC44C 262411E4 */  addiu      $a0, $s1, 0x11E4
/* 11A540 800FC450 0C040F4B */  jal        func_menu_80103D2C
/* 11A544 800FC454 24050002 */   addiu     $a1, $zero, 0x2
/* 11A548 800FC458 26240EF4 */  addiu      $a0, $s1, 0xEF4
/* 11A54C 800FC45C 0C040F4B */  jal        func_menu_80103D2C
/* 11A550 800FC460 24050002 */   addiu     $a1, $zero, 0x2
/* 11A554 800FC464 26240C04 */  addiu      $a0, $s1, 0xC04
/* 11A558 800FC468 0C040F4B */  jal        func_menu_80103D2C
/* 11A55C 800FC46C 24050002 */   addiu     $a1, $zero, 0x2
/* 11A560 800FC470 26240914 */  addiu      $a0, $s1, 0x914
/* 11A564 800FC474 0C040F4B */  jal        func_menu_80103D2C
/* 11A568 800FC478 24050002 */   addiu     $a1, $zero, 0x2
/* 11A56C 800FC47C 2624043C */  addiu      $a0, $s1, 0x43C
/* 11A570 800FC480 0C044435 */  jal        func_menu_801110D4
/* 11A574 800FC484 24050002 */   addiu     $a1, $zero, 0x2
/* 11A578 800FC488 262403C4 */  addiu      $a0, $s1, 0x3C4
/* 11A57C 800FC48C 0C047CB9 */  jal        func_menu_8011F2E4
/* 11A580 800FC490 24050002 */   addiu     $a1, $zero, 0x2
/* 11A584 800FC494 26240368 */  addiu      $a0, $s1, 0x368
/* 11A588 800FC498 0C047BB3 */  jal        func_menu_8011EECC
/* 11A58C 800FC49C 24050002 */   addiu     $a1, $zero, 0x2
/* 11A590 800FC4A0 02202021 */  addu       $a0, $s1, $zero
/* 11A594 800FC4A4 0C0401EF */  jal        func_menu_801007BC
/* 11A598 800FC4A8 02602821 */   addu      $a1, $s3, $zero
/* 11A59C 800FC4AC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11A5A0 800FC4B0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11A5A4 800FC4B4 8FB20018 */  lw         $s2, 0x18($sp)
/* 11A5A8 800FC4B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 11A5AC 800FC4BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 11A5B0 800FC4C0 03E00008 */  jr         $ra
/* 11A5B4 800FC4C4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FC4C8
/* 11A5B8 800FC4C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11A5BC 800FC4CC AFB00010 */  sw         $s0, 0x10($sp)
/* 11A5C0 800FC4D0 00808021 */  addu       $s0, $a0, $zero
/* 11A5C4 800FC4D4 26043708 */  addiu      $a0, $s0, 0x3708
/* 11A5C8 800FC4D8 00002821 */  addu       $a1, $zero, $zero
/* 11A5CC 800FC4DC 24060030 */  addiu      $a2, $zero, 0x30
/* 11A5D0 800FC4E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11A5D4 800FC4E4 AE0036F8 */  sw         $zero, 0x36F8($s0)
/* 11A5D8 800FC4E8 AE00361C */  sw         $zero, 0x361C($s0)
/* 11A5DC 800FC4EC AE003620 */  sw         $zero, 0x3620($s0)
/* 11A5E0 800FC4F0 0C000697 */  jal        func_80001A5C
/* 11A5E4 800FC4F4 AE003704 */   sw        $zero, 0x3704($s0)
/* 11A5E8 800FC4F8 260432D4 */  addiu      $a0, $s0, 0x32D4
/* 11A5EC 800FC4FC 00002821 */  addu       $a1, $zero, $zero
/* 11A5F0 800FC500 0C000697 */  jal        func_80001A5C
/* 11A5F4 800FC504 24060202 */   addiu     $a2, $zero, 0x202
/* 11A5F8 800FC508 02002021 */  addu       $a0, $s0, $zero
/* 11A5FC 800FC50C 0C040207 */  jal        func_menu_8010081C
/* 11A600 800FC510 AC803740 */   sw        $zero, 0x3740($a0)
/* 11A604 800FC514 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11A608 800FC518 8FB00010 */  lw         $s0, 0x10($sp)
/* 11A60C 800FC51C 03E00008 */  jr         $ra
/* 11A610 800FC520 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FC524
/* 11A614 800FC524 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 11A618 800FC528 AFB20060 */  sw         $s2, 0x60($sp)
/* 11A61C 800FC52C 00809021 */  addu       $s2, $a0, $zero
/* 11A620 800FC530 3C02800D */  lui        $v0, %hi(D_menu_800CCEA0)
/* 11A624 800FC534 2445CEA0 */  addiu      $a1, $v0, %lo(D_menu_800CCEA0)
/* 11A628 800FC538 AFBF0064 */  sw         $ra, 0x64($sp)
/* 11A62C 800FC53C AFB1005C */  sw         $s1, 0x5C($sp)
/* 11A630 800FC540 10A00008 */  beqz       $a1, .Lmenu_800FC564
/* 11A634 800FC544 AFB00058 */   sw        $s0, 0x58($sp)
/* 11A638 800FC548 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 11A63C 800FC54C 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 11A640 800FC550 02002021 */  addu       $a0, $s0, $zero
/* 11A644 800FC554 0C000708 */  jal        func_80001C20
/* 11A648 800FC558 24060100 */   addiu     $a2, $zero, 0x100
/* 11A64C 800FC55C 0803F15B */  j          .Lmenu_800FC56C
/* 11A650 800FC560 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800FC564:
/* 11A654 800FC564 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 11A658 800FC568 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800FC56C:
/* 11A65C 800FC56C 02402021 */  addu       $a0, $s2, $zero
/* 11A660 800FC570 2645043C */  addiu      $a1, $s2, 0x43C
/* 11A664 800FC574 00003021 */  addu       $a2, $zero, $zero
/* 11A668 800FC578 0C046AA0 */  jal        func_menu_8011AA80
/* 11A66C 800FC57C 24070003 */   addiu     $a3, $zero, 0x3
/* 11A670 800FC580 3C02800D */  lui        $v0, %hi(D_menu_800CCEB0)
/* 11A674 800FC584 2445CEB0 */  addiu      $a1, $v0, %lo(D_menu_800CCEB0)
/* 11A678 800FC588 10A00007 */  beqz       $a1, .Lmenu_800FC5A8
/* 11A67C 800FC58C 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 11A680 800FC590 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 11A684 800FC594 02002021 */  addu       $a0, $s0, $zero
/* 11A688 800FC598 0C000708 */  jal        func_80001C20
/* 11A68C 800FC59C 24060100 */   addiu     $a2, $zero, 0x100
/* 11A690 800FC5A0 0803F16C */  j          .Lmenu_800FC5B0
/* 11A694 800FC5A4 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800FC5A8:
/* 11A698 800FC5A8 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 11A69C 800FC5AC A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800FC5B0:
/* 11A6A0 800FC5B0 27A40010 */  addiu      $a0, $sp, 0x10
/* 11A6A4 800FC5B4 00002821 */  addu       $a1, $zero, $zero
/* 11A6A8 800FC5B8 0C000697 */  jal        func_80001A5C
/* 11A6AC 800FC5BC 24060048 */   addiu     $a2, $zero, 0x48
/* 11A6B0 800FC5C0 26513628 */  addiu      $s1, $s2, 0x3628
/* 11A6B4 800FC5C4 02202021 */  addu       $a0, $s1, $zero
/* 11A6B8 800FC5C8 8E4200B4 */  lw         $v0, 0xB4($s2)
/* 11A6BC 800FC5CC 3C01800D */  lui        $at, %hi(D_menu_800CCEBC)
/* 11A6C0 800FC5D0 C420CEBC */  lwc1       $f0, %lo(D_menu_800CCEBC)($at)
/* 11A6C4 800FC5D4 3C01800D */  lui        $at, %hi(D_menu_800CCEC0)
/* 11A6C8 800FC5D8 C422CEC0 */  lwc1       $f2, %lo(D_menu_800CCEC0)($at)
/* 11A6CC 800FC5DC 27A50010 */  addiu      $a1, $sp, 0x10
/* 11A6D0 800FC5E0 AFA20010 */  sw         $v0, 0x10($sp)
/* 11A6D4 800FC5E4 8E4200B8 */  lw         $v0, 0xB8($s2)
/* 11A6D8 800FC5E8 2650043C */  addiu      $s0, $s2, 0x43C
/* 11A6DC 800FC5EC AFB00018 */  sw         $s0, 0x18($sp)
/* 11A6E0 800FC5F0 AFA0003C */  sw         $zero, 0x3C($sp)
/* 11A6E4 800FC5F4 AFA00040 */  sw         $zero, 0x40($sp)
/* 11A6E8 800FC5F8 E7A00044 */  swc1       $f0, 0x44($sp)
/* 11A6EC 800FC5FC E7A20050 */  swc1       $f2, 0x50($sp)
/* 11A6F0 800FC600 0C042DD3 */  jal        func_menu_8010B74C
/* 11A6F4 800FC604 AFA20014 */   sw        $v0, 0x14($sp)
/* 11A6F8 800FC608 02002021 */  addu       $a0, $s0, $zero
/* 11A6FC 800FC60C 0C0441DB */  jal        func_menu_8011076C
/* 11A700 800FC610 02202821 */   addu      $a1, $s1, $zero
/* 11A704 800FC614 8FBF0064 */  lw         $ra, 0x64($sp)
/* 11A708 800FC618 8FB20060 */  lw         $s2, 0x60($sp)
/* 11A70C 800FC61C 8FB1005C */  lw         $s1, 0x5C($sp)
/* 11A710 800FC620 8FB00058 */  lw         $s0, 0x58($sp)
/* 11A714 800FC624 03E00008 */  jr         $ra
/* 11A718 800FC628 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_menu_800FC62C
/* 11A71C 800FC62C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11A720 800FC630 AFB20020 */  sw         $s2, 0x20($sp)
/* 11A724 800FC634 00809021 */  addu       $s2, $a0, $zero
/* 11A728 800FC638 AFB00018 */  sw         $s0, 0x18($sp)
/* 11A72C 800FC63C 26502384 */  addiu      $s0, $s2, 0x2384
/* 11A730 800FC640 02002821 */  addu       $a1, $s0, $zero
/* 11A734 800FC644 24060047 */  addiu      $a2, $zero, 0x47
/* 11A738 800FC648 24070044 */  addiu      $a3, $zero, 0x44
/* 11A73C 800FC64C AFBF0024 */  sw         $ra, 0x24($sp)
/* 11A740 800FC650 0C046966 */  jal        func_menu_8011A598
/* 11A744 800FC654 AFB1001C */   sw        $s1, 0x1C($sp)
/* 11A748 800FC658 24020056 */  addiu      $v0, $zero, 0x56
/* 11A74C 800FC65C 02402021 */  addu       $a0, $s2, $zero
/* 11A750 800FC660 26452418 */  addiu      $a1, $s2, 0x2418
/* 11A754 800FC664 02003021 */  addu       $a2, $s0, $zero
/* 11A758 800FC668 2407009D */  addiu      $a3, $zero, 0x9D
/* 11A75C 800FC66C 0C04699A */  jal        func_menu_8011A668
/* 11A760 800FC670 AFA20010 */   sw        $v0, 0x10($sp)
/* 11A764 800FC674 00008021 */  addu       $s0, $zero, $zero
/* 11A768 800FC678 24112E84 */  addiu      $s1, $zero, 0x2E84
.Lmenu_800FC67C:
/* 11A76C 800FC67C 02402021 */  addu       $a0, $s2, $zero
/* 11A770 800FC680 02512821 */  addu       $a1, $s2, $s1
/* 11A774 800FC684 240600A5 */  addiu      $a2, $zero, 0xA5
/* 11A778 800FC688 260700A6 */  addiu      $a3, $s0, 0xA6
/* 11A77C 800FC68C 0C04675B */  jal        func_menu_80119D6C
/* 11A780 800FC690 30E7FFFF */   andi      $a3, $a3, 0xFFFF
/* 11A784 800FC694 26100001 */  addiu      $s0, $s0, 0x1
/* 11A788 800FC698 2E02000C */  sltiu      $v0, $s0, 0xC
/* 11A78C 800FC69C 1440FFF7 */  bnez       $v0, .Lmenu_800FC67C
/* 11A790 800FC6A0 2631005C */   addiu     $s1, $s1, 0x5C
/* 11A794 800FC6A4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11A798 800FC6A8 8FB20020 */  lw         $s2, 0x20($sp)
/* 11A79C 800FC6AC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11A7A0 800FC6B0 8FB00018 */  lw         $s0, 0x18($sp)
/* 11A7A4 800FC6B4 03E00008 */  jr         $ra
/* 11A7A8 800FC6B8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FC6BC
/* 11A7AC 800FC6BC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11A7B0 800FC6C0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 11A7B4 800FC6C4 00808821 */  addu       $s1, $a0, $zero
/* 11A7B8 800FC6C8 26250368 */  addiu      $a1, $s1, 0x368
/* 11A7BC 800FC6CC 24060052 */  addiu      $a2, $zero, 0x52
/* 11A7C0 800FC6D0 00C03821 */  addu       $a3, $a2, $zero
/* 11A7C4 800FC6D4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11A7C8 800FC6D8 0C04675B */  jal        func_menu_80119D6C
/* 11A7CC 800FC6DC AFB00018 */   sw        $s0, 0x18($sp)
/* 11A7D0 800FC6E0 0C03F149 */  jal        func_menu_800FC524
/* 11A7D4 800FC6E4 02202021 */   addu      $a0, $s1, $zero
/* 11A7D8 800FC6E8 02202021 */  addu       $a0, $s1, $zero
/* 11A7DC 800FC6EC 263003C4 */  addiu      $s0, $s1, 0x3C4
/* 11A7E0 800FC6F0 02002821 */  addu       $a1, $s0, $zero
/* 11A7E4 800FC6F4 24060043 */  addiu      $a2, $zero, 0x43
/* 11A7E8 800FC6F8 00C03821 */  addu       $a3, $a2, $zero
/* 11A7EC 800FC6FC 2402000B */  addiu      $v0, $zero, 0xB
/* 11A7F0 800FC700 0C04679E */  jal        func_menu_80119E78
/* 11A7F4 800FC704 AFA20010 */   sw        $v0, 0x10($sp)
/* 11A7F8 800FC708 02002021 */  addu       $a0, $s0, $zero
/* 11A7FC 800FC70C 0C047D63 */  jal        func_menu_8011F58C
/* 11A800 800FC710 2405001E */   addiu     $a1, $zero, 0x1E
/* 11A804 800FC714 02202021 */  addu       $a0, $s1, $zero
/* 11A808 800FC718 26250914 */  addiu      $a1, $s1, 0x914
/* 11A80C 800FC71C 240600A2 */  addiu      $a2, $zero, 0xA2
/* 11A810 800FC720 2407004B */  addiu      $a3, $zero, 0x4B
/* 11A814 800FC724 24020025 */  addiu      $v0, $zero, 0x25
/* 11A818 800FC728 0C040297 */  jal        func_menu_80100A5C
/* 11A81C 800FC72C AFA20010 */   sw        $v0, 0x10($sp)
/* 11A820 800FC730 02202021 */  addu       $a0, $s1, $zero
/* 11A824 800FC734 26250EF4 */  addiu      $a1, $s1, 0xEF4
/* 11A828 800FC738 240600A3 */  addiu      $a2, $zero, 0xA3
/* 11A82C 800FC73C 2407004B */  addiu      $a3, $zero, 0x4B
/* 11A830 800FC740 2402003C */  addiu      $v0, $zero, 0x3C
/* 11A834 800FC744 0C040297 */  jal        func_menu_80100A5C
/* 11A838 800FC748 AFA20010 */   sw        $v0, 0x10($sp)
/* 11A83C 800FC74C 02202021 */  addu       $a0, $s1, $zero
/* 11A840 800FC750 26250C04 */  addiu      $a1, $s1, 0xC04
/* 11A844 800FC754 240600A4 */  addiu      $a2, $zero, 0xA4
/* 11A848 800FC758 2407004B */  addiu      $a3, $zero, 0x4B
/* 11A84C 800FC75C 2402003D */  addiu      $v0, $zero, 0x3D
/* 11A850 800FC760 0C040297 */  jal        func_menu_80100A5C
/* 11A854 800FC764 AFA20010 */   sw        $v0, 0x10($sp)
/* 11A858 800FC768 8E220354 */  lw         $v0, 0x354($s1)
/* 11A85C 800FC76C 8C424614 */  lw         $v0, 0x4614($v0)
/* 11A860 800FC770 30420001 */  andi       $v0, $v0, 0x1
/* 11A864 800FC774 1040000D */  beqz       $v0, .Lmenu_800FC7AC
/* 11A868 800FC778 262511E4 */   addiu     $a1, $s1, 0x11E4
/* 11A86C 800FC77C 02202021 */  addu       $a0, $s1, $zero
/* 11A870 800FC780 24060049 */  addiu      $a2, $zero, 0x49
/* 11A874 800FC784 2407004F */  addiu      $a3, $zero, 0x4F
/* 11A878 800FC788 2402001E */  addiu      $v0, $zero, 0x1E
/* 11A87C 800FC78C 0C040297 */  jal        func_menu_80100A5C
/* 11A880 800FC790 AFA20010 */   sw        $v0, 0x10($sp)
/* 11A884 800FC794 02202021 */  addu       $a0, $s1, $zero
/* 11A888 800FC798 262514D4 */  addiu      $a1, $s1, 0x14D4
/* 11A88C 800FC79C 24060048 */  addiu      $a2, $zero, 0x48
/* 11A890 800FC7A0 2407004C */  addiu      $a3, $zero, 0x4C
/* 11A894 800FC7A4 0803F1F6 */  j          .Lmenu_800FC7D8
/* 11A898 800FC7A8 2402000A */   addiu     $v0, $zero, 0xA
.Lmenu_800FC7AC:
/* 11A89C 800FC7AC 02202021 */  addu       $a0, $s1, $zero
/* 11A8A0 800FC7B0 24060049 */  addiu      $a2, $zero, 0x49
/* 11A8A4 800FC7B4 2407004F */  addiu      $a3, $zero, 0x4F
/* 11A8A8 800FC7B8 24020072 */  addiu      $v0, $zero, 0x72
/* 11A8AC 800FC7BC 0C040297 */  jal        func_menu_80100A5C
/* 11A8B0 800FC7C0 AFA20010 */   sw        $v0, 0x10($sp)
/* 11A8B4 800FC7C4 02202021 */  addu       $a0, $s1, $zero
/* 11A8B8 800FC7C8 262514D4 */  addiu      $a1, $s1, 0x14D4
/* 11A8BC 800FC7CC 24060048 */  addiu      $a2, $zero, 0x48
/* 11A8C0 800FC7D0 2407004E */  addiu      $a3, $zero, 0x4E
/* 11A8C4 800FC7D4 2402001F */  addiu      $v0, $zero, 0x1F
.Lmenu_800FC7D8:
/* 11A8C8 800FC7D8 0C040297 */  jal        func_menu_80100A5C
/* 11A8CC 800FC7DC AFA20010 */   sw        $v0, 0x10($sp)
/* 11A8D0 800FC7E0 240200C1 */  addiu      $v0, $zero, 0xC1
/* 11A8D4 800FC7E4 02202021 */  addu       $a0, $s1, $zero
/* 11A8D8 800FC7E8 26252E0C */  addiu      $a1, $s1, 0x2E0C
/* 11A8DC 800FC7EC 240600F4 */  addiu      $a2, $zero, 0xF4
/* 11A8E0 800FC7F0 24070040 */  addiu      $a3, $zero, 0x40
/* 11A8E4 800FC7F4 0C04679E */  jal        func_menu_80119E78
/* 11A8E8 800FC7F8 AFA20010 */   sw        $v0, 0x10($sp)
/* 11A8EC 800FC7FC 0C03F18B */  jal        func_menu_800FC62C
/* 11A8F0 800FC800 02202021 */   addu      $a0, $s1, $zero
/* 11A8F4 800FC804 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11A8F8 800FC808 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11A8FC 800FC80C 8FB00018 */  lw         $s0, 0x18($sp)
/* 11A900 800FC810 03E00008 */  jr         $ra
/* 11A904 800FC814 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FC818
/* 11A908 800FC818 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11A90C 800FC81C 24020078 */  addiu      $v0, $zero, 0x78
/* 11A910 800FC820 27A50010 */  addiu      $a1, $sp, 0x10
/* 11A914 800FC824 27A60018 */  addiu      $a2, $sp, 0x18
/* 11A918 800FC828 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11A91C 800FC82C A3A20012 */  sb         $v0, 0x12($sp)
/* 11A920 800FC830 A3A20011 */  sb         $v0, 0x11($sp)
/* 11A924 800FC834 A3A20010 */  sb         $v0, 0x10($sp)
/* 11A928 800FC838 A3A20013 */  sb         $v0, 0x13($sp)
/* 11A92C 800FC83C A3A2001A */  sb         $v0, 0x1A($sp)
/* 11A930 800FC840 A3A20019 */  sb         $v0, 0x19($sp)
/* 11A934 800FC844 A3A20018 */  sb         $v0, 0x18($sp)
/* 11A938 800FC848 0C0402F1 */  jal        func_menu_80100BC4
/* 11A93C 800FC84C A3A2001B */   sb        $v0, 0x1B($sp)
/* 11A940 800FC850 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11A944 800FC854 03E00008 */  jr         $ra
/* 11A948 800FC858 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FC85C
/* 11A94C 800FC85C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11A950 800FC860 AFB00010 */  sw         $s0, 0x10($sp)
/* 11A954 800FC864 00808021 */  addu       $s0, $a0, $zero
/* 11A958 800FC868 AFB10014 */  sw         $s1, 0x14($sp)
/* 11A95C 800FC86C 00A08821 */  addu       $s1, $a1, $zero
/* 11A960 800FC870 AFB20018 */  sw         $s2, 0x18($sp)
/* 11A964 800FC874 AFBF001C */  sw         $ra, 0x1C($sp)
/* 11A968 800FC878 0C03F2B4 */  jal        func_menu_800FCAD0
/* 11A96C 800FC87C 00C09021 */   addu      $s2, $a2, $zero
/* 11A970 800FC880 0C0362CC */  jal        func_menu_800D8B30
/* 11A974 800FC884 26242CF8 */   addiu     $a0, $s1, 0x2CF8
/* 11A978 800FC888 14400004 */  bnez       $v0, .Lmenu_800FC89C
/* 11A97C 800FC88C 02002021 */   addu      $a0, $s0, $zero
/* 11A980 800FC890 02202821 */  addu       $a1, $s1, $zero
/* 11A984 800FC894 0C04034B */  jal        func_menu_80100D2C
/* 11A988 800FC898 24060001 */   addiu     $a2, $zero, 0x1
.Lmenu_800FC89C:
/* 11A98C 800FC89C 8E22459C */  lw         $v0, 0x459C($s1)
/* 11A990 800FC8A0 14400006 */  bnez       $v0, .Lmenu_800FC8BC
/* 11A994 800FC8A4 24020001 */   addiu     $v0, $zero, 0x1
/* 11A998 800FC8A8 02002021 */  addu       $a0, $s0, $zero
/* 11A99C 800FC8AC 02202821 */  addu       $a1, $s1, $zero
/* 11A9A0 800FC8B0 0C04042B */  jal        func_menu_801010AC
/* 11A9A4 800FC8B4 00003021 */   addu      $a2, $zero, $zero
/* 11A9A8 800FC8B8 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800FC8BC:
/* 11A9AC 800FC8BC AE224598 */  sw         $v0, 0x4598($s1)
/* 11A9B0 800FC8C0 02002021 */  addu       $a0, $s0, $zero
/* 11A9B4 800FC8C4 02202821 */  addu       $a1, $s1, $zero
/* 11A9B8 800FC8C8 0C040214 */  jal        func_menu_80100850
/* 11A9BC 800FC8CC 02403021 */   addu      $a2, $s2, $zero
/* 11A9C0 800FC8D0 10400012 */  beqz       $v0, .Lmenu_800FC91C
/* 11A9C4 800FC8D4 00001021 */   addu      $v0, $zero, $zero
/* 11A9C8 800FC8D8 0C03F34C */  jal        func_menu_800FCD30
/* 11A9CC 800FC8DC 02002021 */   addu      $a0, $s0, $zero
/* 11A9D0 800FC8E0 0C03F2DD */  jal        func_menu_800FCB74
/* 11A9D4 800FC8E4 02002021 */   addu      $a0, $s0, $zero
/* 11A9D8 800FC8E8 0C03F3B5 */  jal        func_menu_800FCED4
/* 11A9DC 800FC8EC 02002021 */   addu      $a0, $s0, $zero
/* 11A9E0 800FC8F0 26040914 */  addiu      $a0, $s0, 0x914
/* 11A9E4 800FC8F4 0C048D3F */  jal        func_menu_801234FC
/* 11A9E8 800FC8F8 24050005 */   addiu     $a1, $zero, 0x5
/* 11A9EC 800FC8FC 261036C8 */  addiu      $s0, $s0, 0x36C8
/* 11A9F0 800FC900 02002021 */  addu       $a0, $s0, $zero
/* 11A9F4 800FC904 0C03D06F */  jal        func_menu_800F41BC
/* 11A9F8 800FC908 262502A4 */   addiu     $a1, $s1, 0x2A4
/* 11A9FC 800FC90C 02002021 */  addu       $a0, $s0, $zero
/* 11AA00 800FC910 0C03D0C6 */  jal        func_menu_800F4318
/* 11AA04 800FC914 24050004 */   addiu     $a1, $zero, 0x4
/* 11AA08 800FC918 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800FC91C:
/* 11AA0C 800FC91C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 11AA10 800FC920 8FB20018 */  lw         $s2, 0x18($sp)
/* 11AA14 800FC924 8FB10014 */  lw         $s1, 0x14($sp)
/* 11AA18 800FC928 8FB00010 */  lw         $s0, 0x10($sp)
/* 11AA1C 800FC92C 03E00008 */  jr         $ra
/* 11AA20 800FC930 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FC934
/* 11AA24 800FC934 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11AA28 800FC938 AFB00010 */  sw         $s0, 0x10($sp)
/* 11AA2C 800FC93C 00808021 */  addu       $s0, $a0, $zero
/* 11AA30 800FC940 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11AA34 800FC944 8E020004 */  lw         $v0, 0x4($s0)
/* 11AA38 800FC948 10400017 */  beqz       $v0, .Lmenu_800FC9A8
/* 11AA3C 800FC94C 24020001 */   addiu     $v0, $zero, 0x1
/* 11AA40 800FC950 0C01958C */  jal        func_80065630
/* 11AA44 800FC954 26043528 */   addiu     $a0, $s0, 0x3528
/* 11AA48 800FC958 8E053620 */  lw         $a1, 0x3620($s0)
/* 11AA4C 800FC95C 10A00007 */  beqz       $a1, .Lmenu_800FC97C
/* 11AA50 800FC960 00000000 */   nop
/* 11AA54 800FC964 8E0300B4 */  lw         $v1, 0xB4($s0)
/* 11AA58 800FC968 8C620000 */  lw         $v0, 0x0($v1)
/* 11AA5C 800FC96C 844400A0 */  lh         $a0, 0xA0($v0)
/* 11AA60 800FC970 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 11AA64 800FC974 0040F809 */  jalr       $v0
/* 11AA68 800FC978 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800FC97C:
/* 11AA6C 800FC97C 8E05361C */  lw         $a1, 0x361C($s0)
/* 11AA70 800FC980 10A00007 */  beqz       $a1, .Lmenu_800FC9A0
/* 11AA74 800FC984 00000000 */   nop
/* 11AA78 800FC988 8E0300B4 */  lw         $v1, 0xB4($s0)
/* 11AA7C 800FC98C 8C620000 */  lw         $v0, 0x0($v1)
/* 11AA80 800FC990 84440098 */  lh         $a0, 0x98($v0)
/* 11AA84 800FC994 8C42009C */  lw         $v0, 0x9C($v0)
/* 11AA88 800FC998 0040F809 */  jalr       $v0
/* 11AA8C 800FC99C 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800FC9A0:
/* 11AA90 800FC9A0 0C040232 */  jal        func_menu_801008C8
/* 11AA94 800FC9A4 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800FC9A8:
/* 11AA98 800FC9A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11AA9C 800FC9AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 11AAA0 800FC9B0 03E00008 */  jr         $ra
/* 11AAA4 800FC9B4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FC9B8
/* 11AAA8 800FC9B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11AAAC 800FC9BC AFB3001C */  sw         $s3, 0x1C($sp)
/* 11AAB0 800FC9C0 00809821 */  addu       $s3, $a0, $zero
/* 11AAB4 800FC9C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 11AAB8 800FC9C8 24110001 */  addiu      $s1, $zero, 0x1
/* 11AABC 800FC9CC AFBF0020 */  sw         $ra, 0x20($sp)
/* 11AAC0 800FC9D0 AFB20018 */  sw         $s2, 0x18($sp)
/* 11AAC4 800FC9D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 11AAC8 800FC9D8 8E640354 */  lw         $a0, 0x354($s3)
/* 11AACC 800FC9DC 24100003 */  addiu      $s0, $zero, 0x3
/* 11AAD0 800FC9E0 0C03CA0F */  jal        func_menu_800F283C
/* 11AAD4 800FC9E4 24842624 */   addiu     $a0, $a0, 0x2624
/* 11AAD8 800FC9E8 02202021 */  addu       $a0, $s1, $zero
/* 11AADC 800FC9EC 2663000C */  addiu      $v1, $s3, 0xC
/* 11AAE0 800FC9F0 304200FF */  andi       $v0, $v0, 0xFF
/* 11AAE4 800FC9F4 AE623704 */  sw         $v0, 0x3704($s3)
.Lmenu_800FC9F8:
/* 11AAE8 800FC9F8 AC643708 */  sw         $a0, 0x3708($v1)
/* 11AAEC 800FC9FC 2610FFFF */  addiu      $s0, $s0, -0x1
/* 11AAF0 800FCA00 0601FFFD */  bgez       $s0, .Lmenu_800FC9F8
/* 11AAF4 800FCA04 2463FFFC */   addiu     $v1, $v1, -0x4
/* 11AAF8 800FCA08 24100004 */  addiu      $s0, $zero, 0x4
/* 11AAFC 800FCA0C 24040001 */  addiu      $a0, $zero, 0x1
/* 11AB00 800FCA10 26630010 */  addiu      $v1, $s3, 0x10
.Lmenu_800FCA14:
/* 11AB04 800FCA14 8E623704 */  lw         $v0, 0x3704($s3)
/* 11AB08 800FCA18 02221024 */  and        $v0, $s1, $v0
/* 11AB0C 800FCA1C 54400001 */  bnel       $v0, $zero, .Lmenu_800FCA24
/* 11AB10 800FCA20 AC643708 */   sw        $a0, 0x3708($v1)
.Lmenu_800FCA24:
/* 11AB14 800FCA24 24630004 */  addiu      $v1, $v1, 0x4
/* 11AB18 800FCA28 26100001 */  addiu      $s0, $s0, 0x1
/* 11AB1C 800FCA2C 2E02000C */  sltiu      $v0, $s0, 0xC
/* 11AB20 800FCA30 1440FFF8 */  bnez       $v0, .Lmenu_800FCA14
/* 11AB24 800FCA34 00118840 */   sll       $s1, $s1, 1
/* 11AB28 800FCA38 00008021 */  addu       $s0, $zero, $zero
/* 11AB2C 800FCA3C 24110001 */  addiu      $s1, $zero, 0x1
.Lmenu_800FCA40:
/* 11AB30 800FCA40 8E620354 */  lw         $v0, 0x354($s3)
/* 11AB34 800FCA44 24442CF8 */  addiu      $a0, $v0, 0x2CF8
/* 11AB38 800FCA48 8C8200D4 */  lw         $v0, 0xD4($a0)
/* 11AB3C 800FCA4C 0202102A */  slt        $v0, $s0, $v0
/* 11AB40 800FCA50 5040000C */  beql       $v0, $zero, .Lmenu_800FCA84
/* 11AB44 800FCA54 00008021 */   addu      $s0, $zero, $zero
/* 11AB48 800FCA58 0C036B6A */  jal        func_menu_800DADA8
/* 11AB4C 800FCA5C 02002821 */   addu      $a1, $s0, $zero
/* 11AB50 800FCA60 00402821 */  addu       $a1, $v0, $zero
/* 11AB54 800FCA64 8E640354 */  lw         $a0, 0x354($s3)
/* 11AB58 800FCA68 26100001 */  addiu      $s0, $s0, 0x1
/* 11AB5C 800FCA6C 0C0372DB */  jal        func_menu_800DCB6C
/* 11AB60 800FCA70 24842CAC */   addiu     $a0, $a0, 0x2CAC
/* 11AB64 800FCA74 00021080 */  sll        $v0, $v0, 2
/* 11AB68 800FCA78 02621021 */  addu       $v0, $s3, $v0
/* 11AB6C 800FCA7C 0803F290 */  j          .Lmenu_800FCA40
/* 11AB70 800FCA80 AC513708 */   sw        $s1, 0x3708($v0)
.Lmenu_800FCA84:
/* 11AB74 800FCA84 24122E84 */  addiu      $s2, $zero, 0x2E84
/* 11AB78 800FCA88 02608821 */  addu       $s1, $s3, $zero
.Lmenu_800FCA8C:
/* 11AB7C 800FCA8C 8E223708 */  lw         $v0, 0x3708($s1)
/* 11AB80 800FCA90 10400003 */  beqz       $v0, .Lmenu_800FCAA0
/* 11AB84 800FCA94 26642384 */   addiu     $a0, $s3, 0x2384
/* 11AB88 800FCA98 0C047346 */  jal        func_menu_8011CD18
/* 11AB8C 800FCA9C 02722821 */   addu      $a1, $s3, $s2
.Lmenu_800FCAA0:
/* 11AB90 800FCAA0 2652005C */  addiu      $s2, $s2, 0x5C
/* 11AB94 800FCAA4 26100001 */  addiu      $s0, $s0, 0x1
/* 11AB98 800FCAA8 2E02000C */  sltiu      $v0, $s0, 0xC
/* 11AB9C 800FCAAC 1440FFF7 */  bnez       $v0, .Lmenu_800FCA8C
/* 11ABA0 800FCAB0 26310004 */   addiu     $s1, $s1, 0x4
/* 11ABA4 800FCAB4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11ABA8 800FCAB8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11ABAC 800FCABC 8FB20018 */  lw         $s2, 0x18($sp)
/* 11ABB0 800FCAC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 11ABB4 800FCAC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 11ABB8 800FCAC8 03E00008 */  jr         $ra
/* 11ABBC 800FCACC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FCAD0
/* 11ABC0 800FCAD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11ABC4 800FCAD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 11ABC8 800FCAD8 3C108012 */  lui        $s0, %hi(D_menu_80126F58)
/* 11ABCC 800FCADC 8E026F58 */  lw         $v0, %lo(D_menu_80126F58)($s0)
/* 11ABD0 800FCAE0 AFB20018 */  sw         $s2, 0x18($sp)
/* 11ABD4 800FCAE4 00A09021 */  addu       $s2, $a1, $zero
/* 11ABD8 800FCAE8 AFB10014 */  sw         $s1, 0x14($sp)
/* 11ABDC 800FCAEC 00C08821 */  addu       $s1, $a2, $zero
/* 11ABE0 800FCAF0 1440001A */  bnez       $v0, .Lmenu_800FCB5C
/* 11ABE4 800FCAF4 AFBF001C */   sw        $ra, 0x1C($sp)
/* 11ABE8 800FCAF8 8E230000 */  lw         $v1, 0x0($s1)
/* 11ABEC 800FCAFC 8C620000 */  lw         $v0, 0x0($v1)
/* 11ABF0 800FCB00 84440070 */  lh         $a0, 0x70($v0)
/* 11ABF4 800FCB04 8C420074 */  lw         $v0, 0x74($v0)
/* 11ABF8 800FCB08 0040F809 */  jalr       $v0
/* 11ABFC 800FCB0C 00642021 */   addu      $a0, $v1, $a0
/* 11AC00 800FCB10 14400007 */  bnez       $v0, .Lmenu_800FCB30
/* 11AC04 800FCB14 AE026F58 */   sw        $v0, %lo(D_menu_80126F58)($s0)
/* 11AC08 800FCB18 3C04800D */  lui        $a0, %hi(D_menu_800CCEC4)
/* 11AC0C 800FCB1C 2484CEC4 */  addiu      $a0, $a0, %lo(D_menu_800CCEC4)
/* 11AC10 800FCB20 00002821 */  addu       $a1, $zero, $zero
/* 11AC14 800FCB24 00A03021 */  addu       $a2, $a1, $zero
/* 11AC18 800FCB28 0C011ACF */  jal        func_80046B3C
/* 11AC1C 800FCB2C 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800FCB30:
/* 11AC20 800FCB30 3C06800D */  lui        $a2, %hi(D_menu_800CCEC8)
/* 11AC24 800FCB34 24C6CEC8 */  addiu      $a2, $a2, %lo(D_menu_800CCEC8)
/* 11AC28 800FCB38 8E250004 */  lw         $a1, 0x4($s1)
/* 11AC2C 800FCB3C 8E086F58 */  lw         $t0, %lo(D_menu_80126F58)($s0)
/* 11AC30 800FCB40 8E420000 */  lw         $v0, 0x0($s2)
/* 11AC34 800FCB44 8D030008 */  lw         $v1, 0x8($t0)
/* 11AC38 800FCB48 8C47001C */  lw         $a3, 0x1C($v0)
/* 11AC3C 800FCB4C 84640040 */  lh         $a0, 0x40($v1)
/* 11AC40 800FCB50 8C620044 */  lw         $v0, 0x44($v1)
/* 11AC44 800FCB54 0040F809 */  jalr       $v0
/* 11AC48 800FCB58 01042021 */   addu      $a0, $t0, $a0
.Lmenu_800FCB5C:
/* 11AC4C 800FCB5C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 11AC50 800FCB60 8FB20018 */  lw         $s2, 0x18($sp)
/* 11AC54 800FCB64 8FB10014 */  lw         $s1, 0x14($sp)
/* 11AC58 800FCB68 8FB00010 */  lw         $s0, 0x10($sp)
/* 11AC5C 800FCB6C 03E00008 */  jr         $ra
/* 11AC60 800FCB70 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FCB74
/* 11AC64 800FCB74 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11AC68 800FCB78 AFB10024 */  sw         $s1, 0x24($sp)
/* 11AC6C 800FCB7C 00808821 */  addu       $s1, $a0, $zero
/* 11AC70 800FCB80 AFB00020 */  sw         $s0, 0x20($sp)
/* 11AC74 800FCB84 263032D4 */  addiu      $s0, $s1, 0x32D4
/* 11AC78 800FCB88 AFBF0028 */  sw         $ra, 0x28($sp)
/* 11AC7C 800FCB8C 8E240354 */  lw         $a0, 0x354($s1)
/* 11AC80 800FCB90 02002821 */  addu       $a1, $s0, $zero
/* 11AC84 800FCB94 24842A5C */  addiu      $a0, $a0, 0x2A5C
/* 11AC88 800FCB98 0C03BBDE */  jal        func_menu_800EEF78
/* 11AC8C 800FCB9C AE2436F8 */   sw        $a0, 0x36F8($s1)
/* 11AC90 800FCBA0 8E240354 */  lw         $a0, 0x354($s1)
/* 11AC94 800FCBA4 02002821 */  addu       $a1, $s0, $zero
/* 11AC98 800FCBA8 0C036F3B */  jal        func_menu_800DBCEC
/* 11AC9C 800FCBAC 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11ACA0 800FCBB0 0C03F26E */  jal        func_menu_800FC9B8
/* 11ACA4 800FCBB4 02202021 */   addu      $a0, $s1, $zero
/* 11ACA8 800FCBB8 8E220354 */  lw         $v0, 0x354($s1)
/* 11ACAC 800FCBBC 24442CF8 */  addiu      $a0, $v0, 0x2CF8
/* 11ACB0 800FCBC0 8C8200D4 */  lw         $v0, 0xD4($a0)
/* 11ACB4 800FCBC4 50400030 */  beql       $v0, $zero, .Lmenu_800FCC88
/* 11ACB8 800FCBC8 26242384 */   addiu     $a0, $s1, 0x2384
/* 11ACBC 800FCBCC 0C03699C */  jal        func_menu_800DA670
/* 11ACC0 800FCBD0 00002821 */   addu      $a1, $zero, $zero
/* 11ACC4 800FCBD4 24050001 */  addiu      $a1, $zero, 0x1
/* 11ACC8 800FCBD8 8E240354 */  lw         $a0, 0x354($s1)
/* 11ACCC 800FCBDC 2406007F */  addiu      $a2, $zero, 0x7F
/* 11ACD0 800FCBE0 0C036A24 */  jal        func_menu_800DA890
/* 11ACD4 800FCBE4 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11ACD8 800FCBE8 263036FC */  addiu      $s0, $s1, 0x36FC
/* 11ACDC 800FCBEC 8E240354 */  lw         $a0, 0x354($s1)
/* 11ACE0 800FCBF0 02002821 */  addu       $a1, $s0, $zero
/* 11ACE4 800FCBF4 0C03BC08 */  jal        func_menu_800EF020
/* 11ACE8 800FCBF8 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 11ACEC 800FCBFC 27A40010 */  addiu      $a0, $sp, 0x10
/* 11ACF0 800FCC00 02002821 */  addu       $a1, $s0, $zero
/* 11ACF4 800FCC04 0C000708 */  jal        func_80001C20
/* 11ACF8 800FCC08 24060008 */   addiu     $a2, $zero, 0x8
/* 11ACFC 800FCC0C A3A00018 */  sb         $zero, 0x18($sp)
/* 11AD00 800FCC10 8E240354 */  lw         $a0, 0x354($s1)
/* 11AD04 800FCC14 27A50010 */  addiu      $a1, $sp, 0x10
/* 11AD08 800FCC18 0C03802B */  jal        func_menu_800E00AC
/* 11AD0C 800FCC1C 24842CC0 */   addiu     $a0, $a0, 0x2CC0
/* 11AD10 800FCC20 8E240354 */  lw         $a0, 0x354($s1)
/* 11AD14 800FCC24 94450010 */  lhu        $a1, 0x10($v0)
/* 11AD18 800FCC28 0C0372C9 */  jal        func_menu_800DCB24
/* 11AD1C 800FCC2C 24842CAC */   addiu     $a0, $a0, 0x2CAC
/* 11AD20 800FCC30 8E230354 */  lw         $v1, 0x354($s1)
/* 11AD24 800FCC34 AC622CBC */  sw         $v0, 0x2CBC($v1)
/* 11AD28 800FCC38 8E220354 */  lw         $v0, 0x354($s1)
/* 11AD2C 800FCC3C 8C422CBC */  lw         $v0, 0x2CBC($v0)
/* 11AD30 800FCC40 8C43000C */  lw         $v1, 0xC($v0)
/* 11AD34 800FCC44 00031080 */  sll        $v0, $v1, 2
/* 11AD38 800FCC48 02221021 */  addu       $v0, $s1, $v0
/* 11AD3C 800FCC4C 8C423708 */  lw         $v0, 0x3708($v0)
/* 11AD40 800FCC50 10400009 */  beqz       $v0, .Lmenu_800FCC78
/* 11AD44 800FCC54 26242384 */   addiu     $a0, $s1, 0x2384
/* 11AD48 800FCC58 00032840 */  sll        $a1, $v1, 1
/* 11AD4C 800FCC5C 00A32821 */  addu       $a1, $a1, $v1
/* 11AD50 800FCC60 000528C0 */  sll        $a1, $a1, 3
/* 11AD54 800FCC64 00A32823 */  subu       $a1, $a1, $v1
/* 11AD58 800FCC68 00052880 */  sll        $a1, $a1, 2
/* 11AD5C 800FCC6C 24A52E84 */  addiu      $a1, $a1, 0x2E84
/* 11AD60 800FCC70 0C0472CE */  jal        func_menu_8011CB38
/* 11AD64 800FCC74 02252821 */   addu      $a1, $s1, $a1
.Lmenu_800FCC78:
/* 11AD68 800FCC78 0C03F395 */  jal        func_menu_800FCE54
/* 11AD6C 800FCC7C 02202021 */   addu      $a0, $s1, $zero
/* 11AD70 800FCC80 0803F32A */  j          .Lmenu_800FCCA8
/* 11AD74 800FCC84 00000000 */   nop
.Lmenu_800FCC88:
/* 11AD78 800FCC88 0C0472E9 */  jal        func_menu_8011CBA4
/* 11AD7C 800FCC8C 00002821 */   addu      $a1, $zero, $zero
/* 11AD80 800FCC90 8E220000 */  lw         $v0, 0x0($s1)
/* 11AD84 800FCC94 26252418 */  addiu      $a1, $s1, 0x2418
/* 11AD88 800FCC98 84440090 */  lh         $a0, 0x90($v0)
/* 11AD8C 800FCC9C 8C420094 */  lw         $v0, 0x94($v0)
/* 11AD90 800FCCA0 0040F809 */  jalr       $v0
/* 11AD94 800FCCA4 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800FCCA8:
/* 11AD98 800FCCA8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 11AD9C 800FCCAC 8FB10024 */  lw         $s1, 0x24($sp)
/* 11ADA0 800FCCB0 8FB00020 */  lw         $s0, 0x20($sp)
/* 11ADA4 800FCCB4 03E00008 */  jr         $ra
/* 11ADA8 800FCCB8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FCCBC
/* 11ADAC 800FCCBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11ADB0 800FCCC0 AFB10014 */  sw         $s1, 0x14($sp)
/* 11ADB4 800FCCC4 00808821 */  addu       $s1, $a0, $zero
/* 11ADB8 800FCCC8 AFB00010 */  sw         $s0, 0x10($sp)
/* 11ADBC 800FCCCC 263032D4 */  addiu      $s0, $s1, 0x32D4
/* 11ADC0 800FCCD0 02002021 */  addu       $a0, $s0, $zero
/* 11ADC4 800FCCD4 00002821 */  addu       $a1, $zero, $zero
/* 11ADC8 800FCCD8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11ADCC 800FCCDC 0C000697 */  jal        func_80001A5C
/* 11ADD0 800FCCE0 24060202 */   addiu     $a2, $zero, 0x202
/* 11ADD4 800FCCE4 8E240354 */  lw         $a0, 0x354($s1)
/* 11ADD8 800FCCE8 02002821 */  addu       $a1, $s0, $zero
/* 11ADDC 800FCCEC 0C036F4C */  jal        func_menu_800DBD30
/* 11ADE0 800FCCF0 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11ADE4 800FCCF4 8E240354 */  lw         $a0, 0x354($s1)
/* 11ADE8 800FCCF8 02002821 */  addu       $a1, $s0, $zero
/* 11ADEC 800FCCFC 0C03BC83 */  jal        func_menu_800EF20C
/* 11ADF0 800FCD00 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 11ADF4 800FCD04 8E250354 */  lw         $a1, 0x354($s1)
/* 11ADF8 800FCD08 8CA42CA4 */  lw         $a0, 0x2CA4($a1)
/* 11ADFC 800FCD0C 0C03BCFF */  jal        func_menu_800EF3FC
/* 11AE00 800FCD10 24A52A5C */   addiu     $a1, $a1, 0x2A5C
/* 11AE04 800FCD14 24020001 */  addiu      $v0, $zero, 0x1
/* 11AE08 800FCD18 AE223740 */  sw         $v0, 0x3740($s1)
/* 11AE0C 800FCD1C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11AE10 800FCD20 8FB10014 */  lw         $s1, 0x14($sp)
/* 11AE14 800FCD24 8FB00010 */  lw         $s0, 0x10($sp)
/* 11AE18 800FCD28 03E00008 */  jr         $ra
/* 11AE1C 800FCD2C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FCD30
/* 11AE20 800FCD30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11AE24 800FCD34 AFB00020 */  sw         $s0, 0x20($sp)
/* 11AE28 800FCD38 00808021 */  addu       $s0, $a0, $zero
/* 11AE2C 800FCD3C AFBF0024 */  sw         $ra, 0x24($sp)
/* 11AE30 800FCD40 8E030354 */  lw         $v1, 0x354($s0)
/* 11AE34 800FCD44 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 11AE38 800FCD48 AC6245AC */  sw         $v0, 0x45AC($v1)
/* 11AE3C 800FCD4C 8E040354 */  lw         $a0, 0x354($s0)
/* 11AE40 800FCD50 27A50018 */  addiu      $a1, $sp, 0x18
/* 11AE44 800FCD54 0C03BBD1 */  jal        func_menu_800EEF44
/* 11AE48 800FCD58 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 11AE4C 800FCD5C 27A50018 */  addiu      $a1, $sp, 0x18
/* 11AE50 800FCD60 00003021 */  addu       $a2, $zero, $zero
/* 11AE54 800FCD64 8E040354 */  lw         $a0, 0x354($s0)
/* 11AE58 800FCD68 00C03821 */  addu       $a3, $a2, $zero
/* 11AE5C 800FCD6C 0C037746 */  jal        func_menu_800DDD18
/* 11AE60 800FCD70 2484459C */   addiu     $a0, $a0, 0x459C
/* 11AE64 800FCD74 14400007 */  bnez       $v0, .Lmenu_800FCD94
/* 11AE68 800FCD78 AE02361C */   sw        $v0, 0x361C($s0)
/* 11AE6C 800FCD7C 3C04800D */  lui        $a0, %hi(D_menu_800CCEC4)
/* 11AE70 800FCD80 2484CEC4 */  addiu      $a0, $a0, %lo(D_menu_800CCEC4)
/* 11AE74 800FCD84 00002821 */  addu       $a1, $zero, $zero
/* 11AE78 800FCD88 00A03021 */  addu       $a2, $a1, $zero
/* 11AE7C 800FCD8C 0C011ACF */  jal        func_80046B3C
/* 11AE80 800FCD90 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800FCD94:
/* 11AE84 800FCD94 27A60018 */  addiu      $a2, $sp, 0x18
/* 11AE88 800FCD98 8E040354 */  lw         $a0, 0x354($s0)
/* 11AE8C 800FCD9C 8E05361C */  lw         $a1, 0x361C($s0)
/* 11AE90 800FCDA0 0C0377BF */  jal        func_menu_800DDEFC
/* 11AE94 800FCDA4 2484459C */   addiu     $a0, $a0, 0x459C
/* 11AE98 800FCDA8 8E0300B4 */  lw         $v1, 0xB4($s0)
/* 11AE9C 800FCDAC 8C620000 */  lw         $v0, 0x0($v1)
/* 11AEA0 800FCDB0 84440038 */  lh         $a0, 0x38($v0)
/* 11AEA4 800FCDB4 8C42003C */  lw         $v0, 0x3C($v0)
/* 11AEA8 800FCDB8 0040F809 */  jalr       $v0
/* 11AEAC 800FCDBC 00642021 */   addu      $a0, $v1, $a0
/* 11AEB0 800FCDC0 8E040354 */  lw         $a0, 0x354($s0)
/* 11AEB4 800FCDC4 27A50018 */  addiu      $a1, $sp, 0x18
/* 11AEB8 800FCDC8 AE023620 */  sw         $v0, 0x3620($s0)
/* 11AEBC 800FCDCC 0C037778 */  jal        func_menu_800DDDE0
/* 11AEC0 800FCDD0 2484459C */   addiu     $a0, $a0, 0x459C
/* 11AEC4 800FCDD4 8E063620 */  lw         $a2, 0x3620($s0)
/* 11AEC8 800FCDD8 8CC30008 */  lw         $v1, 0x8($a2)
/* 11AECC 800FCDDC 00402821 */  addu       $a1, $v0, $zero
/* 11AED0 800FCDE0 84640030 */  lh         $a0, 0x30($v1)
/* 11AED4 800FCDE4 8C620034 */  lw         $v0, 0x34($v1)
/* 11AED8 800FCDE8 0040F809 */  jalr       $v0
/* 11AEDC 800FCDEC 00C42021 */   addu      $a0, $a2, $a0
/* 11AEE0 800FCDF0 8E023620 */  lw         $v0, 0x3620($s0)
/* 11AEE4 800FCDF4 14400006 */  bnez       $v0, .Lmenu_800FCE10
/* 11AEE8 800FCDF8 00002821 */   addu      $a1, $zero, $zero
/* 11AEEC 800FCDFC 3C04800D */  lui        $a0, %hi(D_menu_800CCEC4)
/* 11AEF0 800FCE00 2484CEC4 */  addiu      $a0, $a0, %lo(D_menu_800CCEC4)
/* 11AEF4 800FCE04 00A03021 */  addu       $a2, $a1, $zero
/* 11AEF8 800FCE08 0C011ACF */  jal        func_80046B3C
/* 11AEFC 800FCE0C 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800FCE10:
/* 11AF00 800FCE10 8E040354 */  lw         $a0, 0x354($s0)
/* 11AF04 800FCE14 27A50018 */  addiu      $a1, $sp, 0x18
/* 11AF08 800FCE18 0C03778A */  jal        func_menu_800DDE28
/* 11AF0C 800FCE1C 2484459C */   addiu     $a0, $a0, 0x459C
/* 11AF10 800FCE20 3C01800D */  lui        $at, %hi(D_menu_800CCED0)
/* 11AF14 800FCE24 C420CED0 */  lwc1       $f0, %lo(D_menu_800CCED0)($at)
/* 11AF18 800FCE28 AE023624 */  sw         $v0, 0x3624($s0)
/* 11AF1C 800FCE2C E7A00010 */  swc1       $f0, 0x10($sp)
/* 11AF20 800FCE30 8E05361C */  lw         $a1, 0x361C($s0)
/* 11AF24 800FCE34 8E063620 */  lw         $a2, 0x3620($s0)
/* 11AF28 800FCE38 8E073624 */  lw         $a3, 0x3624($s0)
/* 11AF2C 800FCE3C 0C01956B */  jal        func_800655AC
/* 11AF30 800FCE40 26043528 */   addiu     $a0, $s0, 0x3528
/* 11AF34 800FCE44 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11AF38 800FCE48 8FB00020 */  lw         $s0, 0x20($sp)
/* 11AF3C 800FCE4C 03E00008 */  jr         $ra
/* 11AF40 800FCE50 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FCE54
/* 11AF44 800FCE54 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 11AF48 800FCE58 AFB00028 */  sw         $s0, 0x28($sp)
/* 11AF4C 800FCE5C 00808021 */  addu       $s0, $a0, $zero
/* 11AF50 800FCE60 AFBF0030 */  sw         $ra, 0x30($sp)
/* 11AF54 800FCE64 AFB1002C */  sw         $s1, 0x2C($sp)
/* 11AF58 800FCE68 8E020354 */  lw         $v0, 0x354($s0)
/* 11AF5C 800FCE6C 24423D3C */  addiu      $v0, $v0, 0x3D3C
/* 11AF60 800FCE70 AFA20010 */  sw         $v0, 0x10($sp)
/* 11AF64 800FCE74 8E020354 */  lw         $v0, 0x354($s0)
/* 11AF68 800FCE78 24422CF8 */  addiu      $v0, $v0, 0x2CF8
/* 11AF6C 800FCE7C AFA20014 */  sw         $v0, 0x14($sp)
/* 11AF70 800FCE80 8E020354 */  lw         $v0, 0x354($s0)
/* 11AF74 800FCE84 26033528 */  addiu      $v1, $s0, 0x3528
/* 11AF78 800FCE88 AFA3001C */  sw         $v1, 0x1C($sp)
/* 11AF7C 800FCE8C 24422D04 */  addiu      $v0, $v0, 0x2D04
/* 11AF80 800FCE90 AFA20018 */  sw         $v0, 0x18($sp)
/* 11AF84 800FCE94 8E040354 */  lw         $a0, 0x354($s0)
/* 11AF88 800FCE98 27A50020 */  addiu      $a1, $sp, 0x20
/* 11AF8C 800FCE9C 0C03BC08 */  jal        func_menu_800EF020
/* 11AF90 800FCEA0 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 11AF94 800FCEA4 261134D8 */  addiu      $s1, $s0, 0x34D8
/* 11AF98 800FCEA8 02202021 */  addu       $a0, $s1, $zero
/* 11AF9C 800FCEAC 0C03B5A2 */  jal        func_menu_800ED688
/* 11AFA0 800FCEB0 27A50010 */   addiu     $a1, $sp, 0x10
/* 11AFA4 800FCEB4 26043628 */  addiu      $a0, $s0, 0x3628
/* 11AFA8 800FCEB8 0C042EAC */  jal        func_menu_8010BAB0
/* 11AFAC 800FCEBC 02202821 */   addu      $a1, $s1, $zero
/* 11AFB0 800FCEC0 8FBF0030 */  lw         $ra, 0x30($sp)
/* 11AFB4 800FCEC4 8FB1002C */  lw         $s1, 0x2C($sp)
/* 11AFB8 800FCEC8 8FB00028 */  lw         $s0, 0x28($sp)
/* 11AFBC 800FCECC 03E00008 */  jr         $ra
/* 11AFC0 800FCED0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800FCED4
/* 11AFC4 800FCED4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11AFC8 800FCED8 AFB00010 */  sw         $s0, 0x10($sp)
/* 11AFCC 800FCEDC 00808021 */  addu       $s0, $a0, $zero
/* 11AFD0 800FCEE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11AFD4 800FCEE4 8E020354 */  lw         $v0, 0x354($s0)
/* 11AFD8 800FCEE8 8C422DCC */  lw         $v0, 0x2DCC($v0)
/* 11AFDC 800FCEEC 28420002 */  slti       $v0, $v0, 0x2
/* 11AFE0 800FCEF0 14400011 */  bnez       $v0, .Lmenu_800FCF38
/* 11AFE4 800FCEF4 26042418 */   addiu     $a0, $s0, 0x2418
/* 11AFE8 800FCEF8 8E0436F8 */  lw         $a0, 0x36F8($s0)
/* 11AFEC 800FCEFC 0C03BC54 */  jal        func_menu_800EF150
/* 11AFF0 800FCF00 00000000 */   nop
/* 11AFF4 800FCF04 14400005 */  bnez       $v0, .Lmenu_800FCF1C
/* 11AFF8 800FCF08 26042418 */   addiu     $a0, $s0, 0x2418
/* 11AFFC 800FCF0C 0C044BCF */  jal        func_menu_80112F3C
/* 11B000 800FCF10 24050005 */   addiu     $a1, $zero, 0x5
/* 11B004 800FCF14 0803F3CA */  j          .Lmenu_800FCF28
/* 11B008 800FCF18 26040EF4 */   addiu     $a0, $s0, 0xEF4
.Lmenu_800FCF1C:
/* 11B00C 800FCF1C 0C044BB5 */  jal        func_menu_80112ED4
/* 11B010 800FCF20 24050005 */   addiu     $a1, $zero, 0x5
/* 11B014 800FCF24 26040EF4 */  addiu      $a0, $s0, 0xEF4
.Lmenu_800FCF28:
/* 11B018 800FCF28 0C048CEC */  jal        func_menu_801233B0
/* 11B01C 800FCF2C 24050005 */   addiu     $a1, $zero, 0x5
/* 11B020 800FCF30 0803F3D3 */  j          .Lmenu_800FCF4C
/* 11B024 800FCF34 00000000 */   nop
.Lmenu_800FCF38:
/* 11B028 800FCF38 0C044BB5 */  jal        func_menu_80112ED4
/* 11B02C 800FCF3C 24050005 */   addiu     $a1, $zero, 0x5
/* 11B030 800FCF40 26040EF4 */  addiu      $a0, $s0, 0xEF4
/* 11B034 800FCF44 0C048D07 */  jal        func_menu_8012341C
/* 11B038 800FCF48 24050005 */   addiu     $a1, $zero, 0x5
.Lmenu_800FCF4C:
/* 11B03C 800FCF4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11B040 800FCF50 8FB00010 */  lw         $s0, 0x10($sp)
/* 11B044 800FCF54 03E00008 */  jr         $ra
/* 11B048 800FCF58 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FCF5C
/* 11B04C 800FCF5C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11B050 800FCF60 AFB20020 */  sw         $s2, 0x20($sp)
/* 11B054 800FCF64 00809021 */  addu       $s2, $a0, $zero
/* 11B058 800FCF68 264436C8 */  addiu      $a0, $s2, 0x36C8
/* 11B05C 800FCF6C 24050004 */  addiu      $a1, $zero, 0x4
/* 11B060 800FCF70 AFBF0024 */  sw         $ra, 0x24($sp)
/* 11B064 800FCF74 AFB1001C */  sw         $s1, 0x1C($sp)
/* 11B068 800FCF78 0C03D07E */  jal        func_menu_800F41F8
/* 11B06C 800FCF7C AFB00018 */   sw        $s0, 0x18($sp)
/* 11B070 800FCF80 24510005 */  addiu      $s1, $v0, 0x5
.Lmenu_800FCF84:
/* 11B074 800FCF84 12200028 */  beqz       $s1, .Lmenu_800FD028
/* 11B078 800FCF88 00000000 */   nop
/* 11B07C 800FCF8C 0C03D131 */  jal        func_menu_800F44C4
/* 11B080 800FCF90 264436C8 */   addiu     $a0, $s2, 0x36C8
/* 11B084 800FCF94 2631FFFF */  addiu      $s1, $s1, -0x1
/* 11B088 800FCF98 00408021 */  addu       $s0, $v0, $zero
/* 11B08C 800FCF9C 02002021 */  addu       $a0, $s0, $zero
/* 11B090 800FCFA0 0C03BC08 */  jal        func_menu_800EF020
/* 11B094 800FCFA4 27A50010 */   addiu     $a1, $sp, 0x10
/* 11B098 800FCFA8 264436FC */  addiu      $a0, $s2, 0x36FC
/* 11B09C 800FCFAC 27A50010 */  addiu      $a1, $sp, 0x10
/* 11B0A0 800FCFB0 0C0006B2 */  jal        func_80001AC8
/* 11B0A4 800FCFB4 24060008 */   addiu     $a2, $zero, 0x8
/* 11B0A8 800FCFB8 1440FFF2 */  bnez       $v0, .Lmenu_800FCF84
/* 11B0AC 800FCFBC 02002021 */   addu      $a0, $s0, $zero
/* 11B0B0 800FCFC0 265132D4 */  addiu      $s1, $s2, 0x32D4
/* 11B0B4 800FCFC4 0C03BBDE */  jal        func_menu_800EEF78
/* 11B0B8 800FCFC8 02202821 */   addu      $a1, $s1, $zero
/* 11B0BC 800FCFCC 8E500354 */  lw         $s0, 0x354($s2)
/* 11B0C0 800FCFD0 26042D9C */  addiu      $a0, $s0, 0x2D9C
/* 11B0C4 800FCFD4 0C03837A */  jal        func_menu_800E0DE8
/* 11B0C8 800FCFD8 26102CF8 */   addiu     $s0, $s0, 0x2CF8
/* 11B0CC 800FCFDC AE0000D4 */  sw         $zero, 0xD4($s0)
/* 11B0D0 800FCFE0 8E440354 */  lw         $a0, 0x354($s2)
/* 11B0D4 800FCFE4 02202821 */  addu       $a1, $s1, $zero
/* 11B0D8 800FCFE8 0C036F3B */  jal        func_menu_800DBCEC
/* 11B0DC 800FCFEC 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11B0E0 800FCFF0 8E440354 */  lw         $a0, 0x354($s2)
/* 11B0E4 800FCFF4 00002821 */  addu       $a1, $zero, $zero
/* 11B0E8 800FCFF8 0C03699C */  jal        func_menu_800DA670
/* 11B0EC 800FCFFC 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11B0F0 800FD000 24050001 */  addiu      $a1, $zero, 0x1
/* 11B0F4 800FD004 8E440354 */  lw         $a0, 0x354($s2)
/* 11B0F8 800FD008 2406007F */  addiu      $a2, $zero, 0x7F
/* 11B0FC 800FD00C 0C036A24 */  jal        func_menu_800DA890
/* 11B100 800FD010 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11B104 800FD014 8E4436F8 */  lw         $a0, 0x36F8($s2)
/* 11B108 800FD018 0C03BC57 */  jal        func_menu_800EF15C
/* 11B10C 800FD01C 00000000 */   nop
/* 11B110 800FD020 0C03F3B5 */  jal        func_menu_800FCED4
/* 11B114 800FD024 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800FD028:
/* 11B118 800FD028 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11B11C 800FD02C 8FB20020 */  lw         $s2, 0x20($sp)
/* 11B120 800FD030 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11B124 800FD034 8FB00018 */  lw         $s0, 0x18($sp)
/* 11B128 800FD038 03E00008 */  jr         $ra
/* 11B12C 800FD03C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FD040
/* 11B130 800FD040 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11B134 800FD044 AFB00010 */  sw         $s0, 0x10($sp)
/* 11B138 800FD048 00808021 */  addu       $s0, $a0, $zero
/* 11B13C 800FD04C 24040202 */  addiu      $a0, $zero, 0x202
/* 11B140 800FD050 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11B144 800FD054 0C00943C */  jal        func_800250F0
/* 11B148 800FD058 AFB10014 */   sw        $s1, 0x14($sp)
/* 11B14C 800FD05C 00408821 */  addu       $s1, $v0, $zero
/* 11B150 800FD060 56200008 */  bnel       $s1, $zero, .Lmenu_800FD084
/* 11B154 800FD064 02202021 */   addu      $a0, $s1, $zero
/* 11B158 800FD068 3C04800D */  lui        $a0, %hi(D_menu_800CCEC4)
/* 11B15C 800FD06C 2484CEC4 */  addiu      $a0, $a0, %lo(D_menu_800CCEC4)
/* 11B160 800FD070 00002821 */  addu       $a1, $zero, $zero
/* 11B164 800FD074 00A03021 */  addu       $a2, $a1, $zero
/* 11B168 800FD078 0C011ACF */  jal        func_80046B3C
/* 11B16C 800FD07C 00A03821 */   addu      $a3, $a1, $zero
/* 11B170 800FD080 02202021 */  addu       $a0, $s1, $zero
.Lmenu_800FD084:
/* 11B174 800FD084 00002821 */  addu       $a1, $zero, $zero
/* 11B178 800FD088 0C000697 */  jal        func_80001A5C
/* 11B17C 800FD08C 24060202 */   addiu     $a2, $zero, 0x202
/* 11B180 800FD090 8E040354 */  lw         $a0, 0x354($s0)
/* 11B184 800FD094 02202821 */  addu       $a1, $s1, $zero
/* 11B188 800FD098 0C036F4C */  jal        func_menu_800DBD30
/* 11B18C 800FD09C 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11B190 800FD0A0 8E0436F8 */  lw         $a0, 0x36F8($s0)
/* 11B194 800FD0A4 261032D4 */  addiu      $s0, $s0, 0x32D4
/* 11B198 800FD0A8 0C03BBDE */  jal        func_menu_800EEF78
/* 11B19C 800FD0AC 02002821 */   addu      $a1, $s0, $zero
/* 11B1A0 800FD0B0 02202021 */  addu       $a0, $s1, $zero
/* 11B1A4 800FD0B4 02002821 */  addu       $a1, $s0, $zero
/* 11B1A8 800FD0B8 0C000684 */  jal        func_80001A10
/* 11B1AC 800FD0BC 24060202 */   addiu     $a2, $zero, 0x202
/* 11B1B0 800FD0C0 12200003 */  beqz       $s1, .Lmenu_800FD0D0
/* 11B1B4 800FD0C4 00408021 */   addu      $s0, $v0, $zero
/* 11B1B8 800FD0C8 0C009444 */  jal        func_80025110
/* 11B1BC 800FD0CC 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800FD0D0:
/* 11B1C0 800FD0D0 02001021 */  addu       $v0, $s0, $zero
/* 11B1C4 800FD0D4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11B1C8 800FD0D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 11B1CC 800FD0DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 11B1D0 800FD0E0 03E00008 */  jr         $ra
/* 11B1D4 800FD0E4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FD0E8
/* 11B1D8 800FD0E8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11B1DC 800FD0EC AFB20020 */  sw         $s2, 0x20($sp)
/* 11B1E0 800FD0F0 00809021 */  addu       $s2, $a0, $zero
/* 11B1E4 800FD0F4 AFB30024 */  sw         $s3, 0x24($sp)
/* 11B1E8 800FD0F8 00A09821 */  addu       $s3, $a1, $zero
/* 11B1EC 800FD0FC 26420914 */  addiu      $v0, $s2, 0x914
/* 11B1F0 800FD100 AFBF0028 */  sw         $ra, 0x28($sp)
/* 11B1F4 800FD104 AFB1001C */  sw         $s1, 0x1C($sp)
/* 11B1F8 800FD108 16620004 */  bne        $s3, $v0, .Lmenu_800FD11C
/* 11B1FC 800FD10C AFB00018 */   sw        $s0, 0x18($sp)
/* 11B200 800FD110 2402000E */  addiu      $v0, $zero, 0xE
/* 11B204 800FD114 0803F4D5 */  j          .Lmenu_800FD354
/* 11B208 800FD118 A6420360 */   sh        $v0, 0x360($s2)
.Lmenu_800FD11C:
/* 11B20C 800FD11C 26420C04 */  addiu      $v0, $s2, 0xC04
/* 11B210 800FD120 1662000C */  bne        $s3, $v0, .Lmenu_800FD154
/* 11B214 800FD124 26420EF4 */   addiu     $v0, $s2, 0xEF4
/* 11B218 800FD128 8E4436F8 */  lw         $a0, 0x36F8($s2)
/* 11B21C 800FD12C 0C03BC54 */  jal        func_menu_800EF150
/* 11B220 800FD130 00000000 */   nop
/* 11B224 800FD134 10400004 */  beqz       $v0, .Lmenu_800FD148
/* 11B228 800FD138 26451DA4 */   addiu     $a1, $s2, 0x1DA4
/* 11B22C 800FD13C 8E420000 */  lw         $v0, 0x0($s2)
/* 11B230 800FD140 0803F4B1 */  j          .Lmenu_800FD2C4
/* 11B234 800FD144 00000000 */   nop
.Lmenu_800FD148:
/* 11B238 800FD148 02402021 */  addu       $a0, $s2, $zero
/* 11B23C 800FD14C 0803F49A */  j          .Lmenu_800FD268
/* 11B240 800FD150 26511DA4 */   addiu     $s1, $s2, 0x1DA4
.Lmenu_800FD154:
/* 11B244 800FD154 16620026 */  bne        $s3, $v0, .Lmenu_800FD1F0
/* 11B248 800FD158 264211E4 */   addiu     $v0, $s2, 0x11E4
/* 11B24C 800FD15C 8E4436F8 */  lw         $a0, 0x36F8($s2)
/* 11B250 800FD160 0C03BC54 */  jal        func_menu_800EF150
/* 11B254 800FD164 00000000 */   nop
/* 11B258 800FD168 10400008 */  beqz       $v0, .Lmenu_800FD18C
/* 11B25C 800FD16C 26452094 */   addiu     $a1, $s2, 0x2094
/* 11B260 800FD170 8E420000 */  lw         $v0, 0x0($s2)
/* 11B264 800FD174 84440078 */  lh         $a0, 0x78($v0)
/* 11B268 800FD178 8C42007C */  lw         $v0, 0x7C($v0)
/* 11B26C 800FD17C 0040F809 */  jalr       $v0
/* 11B270 800FD180 02442021 */   addu      $a0, $s2, $a0
/* 11B274 800FD184 0803F478 */  j          .Lmenu_800FD1E0
/* 11B278 800FD188 00000000 */   nop
.Lmenu_800FD18C:
/* 11B27C 800FD18C 02402021 */  addu       $a0, $s2, $zero
/* 11B280 800FD190 26512094 */  addiu      $s1, $s2, 0x2094
/* 11B284 800FD194 02202821 */  addu       $a1, $s1, $zero
/* 11B288 800FD198 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11B28C 800FD19C 2407004F */  addiu      $a3, $zero, 0x4F
/* 11B290 800FD1A0 24020020 */  addiu      $v0, $zero, 0x20
/* 11B294 800FD1A4 0C040297 */  jal        func_menu_80100A5C
/* 11B298 800FD1A8 AFA20010 */   sw        $v0, 0x10($sp)
/* 11B29C 800FD1AC 02402021 */  addu       $a0, $s2, $zero
/* 11B2A0 800FD1B0 26501AB4 */  addiu      $s0, $s2, 0x1AB4
/* 11B2A4 800FD1B4 02002821 */  addu       $a1, $s0, $zero
/* 11B2A8 800FD1B8 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11B2AC 800FD1BC 2407004E */  addiu      $a3, $zero, 0x4E
/* 11B2B0 800FD1C0 2402001F */  addiu      $v0, $zero, 0x1F
/* 11B2B4 800FD1C4 0C040297 */  jal        func_menu_80100A5C
/* 11B2B8 800FD1C8 AFA20010 */   sw        $v0, 0x10($sp)
/* 11B2BC 800FD1CC 02402021 */  addu       $a0, $s2, $zero
/* 11B2C0 800FD1D0 02202821 */  addu       $a1, $s1, $zero
/* 11B2C4 800FD1D4 02003021 */  addu       $a2, $s0, $zero
/* 11B2C8 800FD1D8 0C046B48 */  jal        func_menu_8011AD20
/* 11B2CC 800FD1DC 2407007B */   addiu     $a3, $zero, 0x7B
.Lmenu_800FD1E0:
/* 11B2D0 800FD1E0 0C03F3B5 */  jal        func_menu_800FCED4
/* 11B2D4 800FD1E4 02402021 */   addu      $a0, $s2, $zero
/* 11B2D8 800FD1E8 0803F4D5 */  j          .Lmenu_800FD354
/* 11B2DC 800FD1EC 00000000 */   nop
.Lmenu_800FD1F0:
/* 11B2E0 800FD1F0 1662000F */  bne        $s3, $v0, .Lmenu_800FD230
/* 11B2E4 800FD1F4 264214D4 */   addiu     $v0, $s2, 0x14D4
/* 11B2E8 800FD1F8 8E440354 */  lw         $a0, 0x354($s2)
/* 11B2EC 800FD1FC 8C834614 */  lw         $v1, 0x4614($a0)
/* 11B2F0 800FD200 30620001 */  andi       $v0, $v1, 0x1
/* 11B2F4 800FD204 10400005 */  beqz       $v0, .Lmenu_800FD21C
/* 11B2F8 800FD208 2402FFFE */   addiu     $v0, $zero, -0x2
/* 11B2FC 800FD20C 00621024 */  and        $v0, $v1, $v0
/* 11B300 800FD210 AC824614 */  sw         $v0, 0x4614($a0)
/* 11B304 800FD214 0C03F584 */  jal        func_menu_800FD610
/* 11B308 800FD218 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800FD21C:
/* 11B30C 800FD21C 0C03F32F */  jal        func_menu_800FCCBC
/* 11B310 800FD220 02402021 */   addu      $a0, $s2, $zero
/* 11B314 800FD224 24020003 */  addiu      $v0, $zero, 0x3
/* 11B318 800FD228 0803F4D5 */  j          .Lmenu_800FD354
/* 11B31C 800FD22C A6420360 */   sh        $v0, 0x360($s2)
.Lmenu_800FD230:
/* 11B320 800FD230 1662002A */  bne        $s3, $v0, .Lmenu_800FD2DC
/* 11B324 800FD234 264217C4 */   addiu     $v0, $s2, 0x17C4
/* 11B328 800FD238 8E420354 */  lw         $v0, 0x354($s2)
/* 11B32C 800FD23C 8C424614 */  lw         $v0, 0x4614($v0)
/* 11B330 800FD240 30420001 */  andi       $v0, $v0, 0x1
/* 11B334 800FD244 10400003 */  beqz       $v0, .Lmenu_800FD254
/* 11B338 800FD248 24020010 */   addiu     $v0, $zero, 0x10
/* 11B33C 800FD24C 0803F4D5 */  j          .Lmenu_800FD354
/* 11B340 800FD250 A6420360 */   sh        $v0, 0x360($s2)
.Lmenu_800FD254:
/* 11B344 800FD254 0C03F410 */  jal        func_menu_800FD040
/* 11B348 800FD258 02402021 */   addu      $a0, $s2, $zero
/* 11B34C 800FD25C 10400017 */  beqz       $v0, .Lmenu_800FD2BC
/* 11B350 800FD260 02402021 */   addu      $a0, $s2, $zero
/* 11B354 800FD264 265117C4 */  addiu      $s1, $s2, 0x17C4
.Lmenu_800FD268:
/* 11B358 800FD268 02202821 */  addu       $a1, $s1, $zero
/* 11B35C 800FD26C 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11B360 800FD270 2407004F */  addiu      $a3, $zero, 0x4F
/* 11B364 800FD274 24020020 */  addiu      $v0, $zero, 0x20
/* 11B368 800FD278 0C040297 */  jal        func_menu_80100A5C
/* 11B36C 800FD27C AFA20010 */   sw        $v0, 0x10($sp)
/* 11B370 800FD280 02402021 */  addu       $a0, $s2, $zero
/* 11B374 800FD284 26501AB4 */  addiu      $s0, $s2, 0x1AB4
/* 11B378 800FD288 02002821 */  addu       $a1, $s0, $zero
/* 11B37C 800FD28C 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11B380 800FD290 2407004E */  addiu      $a3, $zero, 0x4E
/* 11B384 800FD294 2402001F */  addiu      $v0, $zero, 0x1F
/* 11B388 800FD298 0C040297 */  jal        func_menu_80100A5C
/* 11B38C 800FD29C AFA20010 */   sw        $v0, 0x10($sp)
/* 11B390 800FD2A0 02402021 */  addu       $a0, $s2, $zero
/* 11B394 800FD2A4 02202821 */  addu       $a1, $s1, $zero
/* 11B398 800FD2A8 02003021 */  addu       $a2, $s0, $zero
/* 11B39C 800FD2AC 0C046B48 */  jal        func_menu_8011AD20
/* 11B3A0 800FD2B0 2407007B */   addiu     $a3, $zero, 0x7B
/* 11B3A4 800FD2B4 0803F4D5 */  j          .Lmenu_800FD354
/* 11B3A8 800FD2B8 00000000 */   nop
.Lmenu_800FD2BC:
/* 11B3AC 800FD2BC 8E420000 */  lw         $v0, 0x0($s2)
/* 11B3B0 800FD2C0 264517C4 */  addiu      $a1, $s2, 0x17C4
.Lmenu_800FD2C4:
/* 11B3B4 800FD2C4 84440078 */  lh         $a0, 0x78($v0)
/* 11B3B8 800FD2C8 8C42007C */  lw         $v0, 0x7C($v0)
/* 11B3BC 800FD2CC 0040F809 */  jalr       $v0
/* 11B3C0 800FD2D0 02442021 */   addu      $a0, $s2, $a0
/* 11B3C4 800FD2D4 0803F4D5 */  j          .Lmenu_800FD354
/* 11B3C8 800FD2D8 00000000 */   nop
.Lmenu_800FD2DC:
/* 11B3CC 800FD2DC 16620005 */  bne        $s3, $v0, .Lmenu_800FD2F4
/* 11B3D0 800FD2E0 26421AB4 */   addiu     $v0, $s2, 0x1AB4
/* 11B3D4 800FD2E4 8E440284 */  lw         $a0, 0x284($s2)
/* 11B3D8 800FD2E8 24020003 */  addiu      $v0, $zero, 0x3
/* 11B3DC 800FD2EC 0803F4D0 */  j          .Lmenu_800FD340
/* 11B3E0 800FD2F0 A6420360 */   sh        $v0, 0x360($s2)
.Lmenu_800FD2F4:
/* 11B3E4 800FD2F4 16620004 */  bne        $s3, $v0, .Lmenu_800FD308
/* 11B3E8 800FD2F8 26421DA4 */   addiu     $v0, $s2, 0x1DA4
/* 11B3EC 800FD2FC 8E440284 */  lw         $a0, 0x284($s2)
/* 11B3F0 800FD300 0803F4D3 */  j          .Lmenu_800FD34C
/* 11B3F4 800FD304 00000000 */   nop
.Lmenu_800FD308:
/* 11B3F8 800FD308 16620005 */  bne        $s3, $v0, .Lmenu_800FD320
/* 11B3FC 800FD30C 26422094 */   addiu     $v0, $s2, 0x2094
/* 11B400 800FD310 0C03F3D7 */  jal        func_menu_800FCF5C
/* 11B404 800FD314 02402021 */   addu      $a0, $s2, $zero
/* 11B408 800FD318 0803F4CF */  j          .Lmenu_800FD33C
/* 11B40C 800FD31C 00000000 */   nop
.Lmenu_800FD320:
/* 11B410 800FD320 1662000C */  bne        $s3, $v0, .Lmenu_800FD354
/* 11B414 800FD324 26452418 */   addiu     $a1, $s2, 0x2418
/* 11B418 800FD328 8E420000 */  lw         $v0, 0x0($s2)
/* 11B41C 800FD32C 84440090 */  lh         $a0, 0x90($v0)
/* 11B420 800FD330 8C420094 */  lw         $v0, 0x94($v0)
/* 11B424 800FD334 0040F809 */  jalr       $v0
/* 11B428 800FD338 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800FD33C:
/* 11B42C 800FD33C 8E440284 */  lw         $a0, 0x284($s2)
.Lmenu_800FD340:
/* 11B430 800FD340 8C82009C */  lw         $v0, 0x9C($a0)
/* 11B434 800FD344 10400003 */  beqz       $v0, .Lmenu_800FD354
/* 11B438 800FD348 00000000 */   nop
.Lmenu_800FD34C:
/* 11B43C 800FD34C 0C045449 */  jal        func_menu_80115124
/* 11B440 800FD350 00000000 */   nop
.Lmenu_800FD354:
/* 11B444 800FD354 96430360 */  lhu        $v1, 0x360($s2)
/* 11B448 800FD358 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 11B44C 800FD35C 10620002 */  beq        $v1, $v0, .Lmenu_800FD368
/* 11B450 800FD360 24020001 */   addiu     $v0, $zero, 0x1
/* 11B454 800FD364 AE420364 */  sw         $v0, 0x364($s2)
.Lmenu_800FD368:
/* 11B458 800FD368 AE53035C */  sw         $s3, 0x35C($s2)
/* 11B45C 800FD36C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 11B460 800FD370 8FB30024 */  lw         $s3, 0x24($sp)
/* 11B464 800FD374 8FB20020 */  lw         $s2, 0x20($sp)
/* 11B468 800FD378 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11B46C 800FD37C 8FB00018 */  lw         $s0, 0x18($sp)
/* 11B470 800FD380 03E00008 */  jr         $ra
/* 11B474 800FD384 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FD388
/* 11B478 800FD388 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 11B47C 800FD38C AFB10034 */  sw         $s1, 0x34($sp)
/* 11B480 800FD390 00808821 */  addu       $s1, $a0, $zero
/* 11B484 800FD394 26222418 */  addiu      $v0, $s1, 0x2418
/* 11B488 800FD398 AFBF0038 */  sw         $ra, 0x38($sp)
/* 11B48C 800FD39C 14A20045 */  bne        $a1, $v0, .Lmenu_800FD4B4
/* 11B490 800FD3A0 AFB00030 */   sw        $s0, 0x30($sp)
/* 11B494 800FD3A4 8E300354 */  lw         $s0, 0x354($s1)
/* 11B498 800FD3A8 26042D9C */  addiu      $a0, $s0, 0x2D9C
/* 11B49C 800FD3AC 0C03837A */  jal        func_menu_800E0DE8
/* 11B4A0 800FD3B0 26102CF8 */   addiu     $s0, $s0, 0x2CF8
/* 11B4A4 800FD3B4 00002021 */  addu       $a0, $zero, $zero
/* 11B4A8 800FD3B8 24052E84 */  addiu      $a1, $zero, 0x2E84
/* 11B4AC 800FD3BC AE0000D4 */  sw         $zero, 0xD4($s0)
/* 11B4B0 800FD3C0 8E2623FC */  lw         $a2, 0x23FC($s1)
.Lmenu_800FD3C4:
/* 11B4B4 800FD3C4 2C82000C */  sltiu      $v0, $a0, 0xC
/* 11B4B8 800FD3C8 1040000D */  beqz       $v0, .Lmenu_800FD400
/* 11B4BC 800FD3CC 02251021 */   addu      $v0, $s1, $a1
/* 11B4C0 800FD3D0 10C20004 */  beq        $a2, $v0, .Lmenu_800FD3E4
/* 11B4C4 800FD3D4 00041840 */   sll       $v1, $a0, 1
/* 11B4C8 800FD3D8 24A5005C */  addiu      $a1, $a1, 0x5C
/* 11B4CC 800FD3DC 0803F4F1 */  j          .Lmenu_800FD3C4
/* 11B4D0 800FD3E0 24840001 */   addiu     $a0, $a0, 0x1
.Lmenu_800FD3E4:
/* 11B4D4 800FD3E4 8E220354 */  lw         $v0, 0x354($s1)
/* 11B4D8 800FD3E8 00641821 */  addu       $v1, $v1, $a0
/* 11B4DC 800FD3EC 24422CAC */  addiu      $v0, $v0, 0x2CAC
/* 11B4E0 800FD3F0 8C44000C */  lw         $a0, 0xC($v0)
/* 11B4E4 800FD3F4 000318C0 */  sll        $v1, $v1, 3
/* 11B4E8 800FD3F8 00832021 */  addu       $a0, $a0, $v1
/* 11B4EC 800FD3FC AC440010 */  sw         $a0, 0x10($v0)
.Lmenu_800FD400:
/* 11B4F0 800FD400 263036FC */  addiu      $s0, $s1, 0x36FC
/* 11B4F4 800FD404 8E220354 */  lw         $v0, 0x354($s1)
/* 11B4F8 800FD408 02002021 */  addu       $a0, $s0, $zero
/* 11B4FC 800FD40C 8C452CBC */  lw         $a1, 0x2CBC($v0)
/* 11B500 800FD410 0C000708 */  jal        func_80001C20
/* 11B504 800FD414 24060008 */   addiu     $a2, $zero, 0x8
/* 11B508 800FD418 27A40020 */  addiu      $a0, $sp, 0x20
/* 11B50C 800FD41C 02002821 */  addu       $a1, $s0, $zero
/* 11B510 800FD420 0C000708 */  jal        func_80001C20
/* 11B514 800FD424 24060008 */   addiu     $a2, $zero, 0x8
/* 11B518 800FD428 A3A00028 */  sb         $zero, 0x28($sp)
/* 11B51C 800FD42C 8E240354 */  lw         $a0, 0x354($s1)
/* 11B520 800FD430 02002821 */  addu       $a1, $s0, $zero
/* 11B524 800FD434 0C03BCB3 */  jal        func_menu_800EF2CC
/* 11B528 800FD438 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 11B52C 800FD43C 8E240354 */  lw         $a0, 0x354($s1)
/* 11B530 800FD440 27A50020 */  addiu      $a1, $sp, 0x20
/* 11B534 800FD444 0C03802B */  jal        func_menu_800E00AC
/* 11B538 800FD448 24842CC0 */   addiu     $a0, $a0, 0x2CC0
/* 11B53C 800FD44C 00402821 */  addu       $a1, $v0, $zero
/* 11B540 800FD450 00003021 */  addu       $a2, $zero, $zero
/* 11B544 800FD454 24020003 */  addiu      $v0, $zero, 0x3
/* 11B548 800FD458 8E240354 */  lw         $a0, 0x354($s1)
/* 11B54C 800FD45C 00C03821 */  addu       $a3, $a2, $zero
/* 11B550 800FD460 AFA00010 */  sw         $zero, 0x10($sp)
/* 11B554 800FD464 AFA20014 */  sw         $v0, 0x14($sp)
/* 11B558 800FD468 AFA00018 */  sw         $zero, 0x18($sp)
/* 11B55C 800FD46C 0C0362F7 */  jal        func_menu_800D8BDC
/* 11B560 800FD470 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11B564 800FD474 8E240354 */  lw         $a0, 0x354($s1)
/* 11B568 800FD478 00002821 */  addu       $a1, $zero, $zero
/* 11B56C 800FD47C 0C03699C */  jal        func_menu_800DA670
/* 11B570 800FD480 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11B574 800FD484 24050001 */  addiu      $a1, $zero, 0x1
/* 11B578 800FD488 8E240354 */  lw         $a0, 0x354($s1)
/* 11B57C 800FD48C 2406007F */  addiu      $a2, $zero, 0x7F
/* 11B580 800FD490 0C036A24 */  jal        func_menu_800DA890
/* 11B584 800FD494 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11B588 800FD498 8E2436F8 */  lw         $a0, 0x36F8($s1)
/* 11B58C 800FD49C 0C03BC57 */  jal        func_menu_800EF15C
/* 11B590 800FD4A0 00000000 */   nop
/* 11B594 800FD4A4 0C03F395 */  jal        func_menu_800FCE54
/* 11B598 800FD4A8 02202021 */   addu      $a0, $s1, $zero
/* 11B59C 800FD4AC 0C03F3B5 */  jal        func_menu_800FCED4
/* 11B5A0 800FD4B0 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800FD4B4:
/* 11B5A4 800FD4B4 8FBF0038 */  lw         $ra, 0x38($sp)
/* 11B5A8 800FD4B8 8FB10034 */  lw         $s1, 0x34($sp)
/* 11B5AC 800FD4BC 8FB00030 */  lw         $s0, 0x30($sp)
/* 11B5B0 800FD4C0 03E00008 */  jr         $ra
/* 11B5B4 800FD4C4 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800FD4C8
/* 11B5B8 800FD4C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11B5BC 800FD4CC AFB10014 */  sw         $s1, 0x14($sp)
/* 11B5C0 800FD4D0 00808821 */  addu       $s1, $a0, $zero
/* 11B5C4 800FD4D4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11B5C8 800FD4D8 AFB00010 */  sw         $s0, 0x10($sp)
/* 11B5CC 800FD4DC 96230360 */  lhu        $v1, 0x360($s1)
/* 11B5D0 800FD4E0 2402000E */  addiu      $v0, $zero, 0xE
/* 11B5D4 800FD4E4 10620041 */  beq        $v1, $v0, .Lmenu_800FD5EC
/* 11B5D8 800FD4E8 2862000F */   slti      $v0, $v1, 0xF
/* 11B5DC 800FD4EC 10400005 */  beqz       $v0, .Lmenu_800FD504
/* 11B5E0 800FD4F0 24020003 */   addiu     $v0, $zero, 0x3
/* 11B5E4 800FD4F4 10620008 */  beq        $v1, $v0, .Lmenu_800FD518
/* 11B5E8 800FD4F8 00000000 */   nop
/* 11B5EC 800FD4FC 0803F57F */  j          .Lmenu_800FD5FC
/* 11B5F0 800FD500 00000000 */   nop
.Lmenu_800FD504:
/* 11B5F4 800FD504 24020010 */  addiu      $v0, $zero, 0x10
/* 11B5F8 800FD508 10620021 */  beq        $v1, $v0, .Lmenu_800FD590
/* 11B5FC 800FD50C 00000000 */   nop
/* 11B600 800FD510 0803F57F */  j          .Lmenu_800FD5FC
/* 11B604 800FD514 00000000 */   nop
.Lmenu_800FD518:
/* 11B608 800FD518 8E240354 */  lw         $a0, 0x354($s1)
/* 11B60C 800FD51C 0C0401B4 */  jal        func_menu_801006D0
/* 11B610 800FD520 24840004 */   addiu     $a0, $a0, 0x4
/* 11B614 800FD524 8E223740 */  lw         $v0, 0x3740($s1)
/* 11B618 800FD528 1040000C */  beqz       $v0, .Lmenu_800FD55C
/* 11B61C 800FD52C 24020002 */   addiu     $v0, $zero, 0x2
/* 11B620 800FD530 8E250354 */  lw         $a1, 0x354($s1)
/* 11B624 800FD534 8CA42CA4 */  lw         $a0, 0x2CA4($a1)
/* 11B628 800FD538 8C830008 */  lw         $v1, 0x8($a0)
/* 11B62C 800FD53C 14620008 */  bne        $v1, $v0, .Lmenu_800FD560
/* 11B630 800FD540 3C108012 */   lui       $s0, %hi(D_menu_80126F58)
/* 11B634 800FD544 8C82000C */  lw         $v0, 0xC($a0)
/* 11B638 800FD548 ACA24620 */  sw         $v0, 0x4620($a1)
/* 11B63C 800FD54C 8E240354 */  lw         $a0, 0x354($s1)
/* 11B640 800FD550 24050032 */  addiu      $a1, $zero, 0x32
/* 11B644 800FD554 0C0401A6 */  jal        func_menu_80100698
/* 11B648 800FD558 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800FD55C:
/* 11B64C 800FD55C 3C108012 */  lui        $s0, %hi(D_menu_80126F58)
.Lmenu_800FD560:
/* 11B650 800FD560 8E220354 */  lw         $v0, 0x354($s1)
/* 11B654 800FD564 8E056F58 */  lw         $a1, %lo(D_menu_80126F58)($s0)
/* 11B658 800FD568 10A00024 */  beqz       $a1, .Lmenu_800FD5FC
/* 11B65C 800FD56C AC404598 */   sw        $zero, 0x4598($v0)
/* 11B660 800FD570 8E2300B4 */  lw         $v1, 0xB4($s1)
/* 11B664 800FD574 8C620000 */  lw         $v0, 0x0($v1)
/* 11B668 800FD578 844400D8 */  lh         $a0, 0xD8($v0)
/* 11B66C 800FD57C 8C4200DC */  lw         $v0, 0xDC($v0)
/* 11B670 800FD580 0040F809 */  jalr       $v0
/* 11B674 800FD584 00642021 */   addu      $a0, $v1, $a0
/* 11B678 800FD588 0803F57F */  j          .Lmenu_800FD5FC
/* 11B67C 800FD58C AE006F58 */   sw        $zero, %lo(D_menu_80126F58)($s0)
.Lmenu_800FD590:
/* 11B680 800FD590 8E240354 */  lw         $a0, 0x354($s1)
/* 11B684 800FD594 0C0401B4 */  jal        func_menu_801006D0
/* 11B688 800FD598 24840004 */   addiu     $a0, $a0, 0x4
/* 11B68C 800FD59C 3C108012 */  lui        $s0, %hi(D_menu_80126F58)
/* 11B690 800FD5A0 8E220354 */  lw         $v0, 0x354($s1)
/* 11B694 800FD5A4 8E056F58 */  lw         $a1, %lo(D_menu_80126F58)($s0)
/* 11B698 800FD5A8 10A00008 */  beqz       $a1, .Lmenu_800FD5CC
/* 11B69C 800FD5AC AC404598 */   sw        $zero, 0x4598($v0)
/* 11B6A0 800FD5B0 8E2300B4 */  lw         $v1, 0xB4($s1)
/* 11B6A4 800FD5B4 8C620000 */  lw         $v0, 0x0($v1)
/* 11B6A8 800FD5B8 844400D8 */  lh         $a0, 0xD8($v0)
/* 11B6AC 800FD5BC 8C4200DC */  lw         $v0, 0xDC($v0)
/* 11B6B0 800FD5C0 0040F809 */  jalr       $v0
/* 11B6B4 800FD5C4 00642021 */   addu      $a0, $v1, $a0
/* 11B6B8 800FD5C8 AE006F58 */  sw         $zero, %lo(D_menu_80126F58)($s0)
.Lmenu_800FD5CC:
/* 11B6BC 800FD5CC 263032D4 */  addiu      $s0, $s1, 0x32D4
/* 11B6C0 800FD5D0 8E240354 */  lw         $a0, 0x354($s1)
/* 11B6C4 800FD5D4 02002821 */  addu       $a1, $s0, $zero
/* 11B6C8 800FD5D8 0C036F4C */  jal        func_menu_800DBD30
/* 11B6CC 800FD5DC 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 11B6D0 800FD5E0 8E2436F8 */  lw         $a0, 0x36F8($s1)
/* 11B6D4 800FD5E4 0C03BC83 */  jal        func_menu_800EF20C
/* 11B6D8 800FD5E8 02002821 */   addu      $a1, $s0, $zero
.Lmenu_800FD5EC:
/* 11B6DC 800FD5EC 8E240354 */  lw         $a0, 0x354($s1)
/* 11B6E0 800FD5F0 96250360 */  lhu        $a1, 0x360($s1)
/* 11B6E4 800FD5F4 0C0401A6 */  jal        func_menu_80100698
/* 11B6E8 800FD5F8 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800FD5FC:
/* 11B6EC 800FD5FC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11B6F0 800FD600 8FB10014 */  lw         $s1, 0x14($sp)
/* 11B6F4 800FD604 8FB00010 */  lw         $s0, 0x10($sp)
/* 11B6F8 800FD608 03E00008 */  jr         $ra
/* 11B6FC 800FD60C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FD610
/* 11B700 800FD610 8C840354 */  lw         $a0, 0x354($a0)
/* 11B704 800FD614 8C862CA4 */  lw         $a2, 0x2CA4($a0)
/* 11B708 800FD618 24030001 */  addiu      $v1, $zero, 0x1
/* 11B70C 800FD61C 8CC20008 */  lw         $v0, 0x8($a2)
/* 11B710 800FD620 24852624 */  addiu      $a1, $a0, 0x2624
/* 11B714 800FD624 A0A20369 */  sb         $v0, 0x369($a1)
/* 11B718 800FD628 AC832624 */  sw         $v1, 0x2624($a0)
/* 11B71C 800FD62C 8CC2000C */  lw         $v0, 0xC($a2)
/* 11B720 800FD630 A0A2036A */  sb         $v0, 0x36A($a1)
/* 11B724 800FD634 AC832624 */  sw         $v1, 0x2624($a0)
/* 11B728 800FD638 8CC20010 */  lw         $v0, 0x10($a2)
/* 11B72C 800FD63C A0A20368 */  sb         $v0, 0x368($a1)
/* 11B730 800FD640 03E00008 */  jr         $ra
/* 11B734 800FD644 AC832624 */   sw        $v1, 0x2624($a0)
