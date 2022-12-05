.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800FF050
/* 11D140 800FF050 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D144 800FF054 AFB00010 */  sw         $s0, 0x10($sp)
/* 11D148 800FF058 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11D14C 800FF05C 0C0436D4 */  jal        func_menu_8010DB50
/* 11D150 800FF060 00808021 */   addu      $s0, $a0, $zero
/* 11D154 800FF064 3C02800D */  lui        $v0, %hi(D_menu_800CD1C8)
/* 11D158 800FF068 2442D1C8 */  addiu      $v0, $v0, %lo(D_menu_800CD1C8)
/* 11D15C 800FF06C 26043014 */  addiu      $a0, $s0, 0x3014
/* 11D160 800FF070 0C047BA4 */  jal        func_menu_8011EE90
/* 11D164 800FF074 AE020000 */   sw        $v0, 0x0($s0)
/* 11D168 800FF078 0C047CA8 */  jal        func_menu_8011F2A0
/* 11D16C 800FF07C 26043070 */   addiu     $a0, $s0, 0x3070
/* 11D170 800FF080 0C040F38 */  jal        func_menu_80103CE0
/* 11D174 800FF084 260430E8 */   addiu     $a0, $s0, 0x30E8
/* 11D178 800FF088 0C040F38 */  jal        func_menu_80103CE0
/* 11D17C 800FF08C 260433D8 */   addiu     $a0, $s0, 0x33D8
/* 11D180 800FF090 0C040F38 */  jal        func_menu_80103CE0
/* 11D184 800FF094 260436C8 */   addiu     $a0, $s0, 0x36C8
/* 11D188 800FF098 0C040F38 */  jal        func_menu_80103CE0
/* 11D18C 800FF09C 260439B8 */   addiu     $a0, $s0, 0x39B8
/* 11D190 800FF0A0 0C040F38 */  jal        func_menu_80103CE0
/* 11D194 800FF0A4 26043CA8 */   addiu     $a0, $s0, 0x3CA8
/* 11D198 800FF0A8 0C040F38 */  jal        func_menu_80103CE0
/* 11D19C 800FF0AC 26043F98 */   addiu     $a0, $s0, 0x3F98
/* 11D1A0 800FF0B0 0C040F38 */  jal        func_menu_80103CE0
/* 11D1A4 800FF0B4 26044288 */   addiu     $a0, $s0, 0x4288
/* 11D1A8 800FF0B8 0C040F38 */  jal        func_menu_80103CE0
/* 11D1AC 800FF0BC 26044578 */   addiu     $a0, $s0, 0x4578
/* 11D1B0 800FF0C0 0C040F38 */  jal        func_menu_80103CE0
/* 11D1B4 800FF0C4 26044868 */   addiu     $a0, $s0, 0x4868
/* 11D1B8 800FF0C8 0C040F38 */  jal        func_menu_80103CE0
/* 11D1BC 800FF0CC 26044B58 */   addiu     $a0, $s0, 0x4B58
/* 11D1C0 800FF0D0 0C040F38 */  jal        func_menu_80103CE0
/* 11D1C4 800FF0D4 26044E48 */   addiu     $a0, $s0, 0x4E48
/* 11D1C8 800FF0D8 0C040F38 */  jal        func_menu_80103CE0
/* 11D1CC 800FF0DC 26045138 */   addiu     $a0, $s0, 0x5138
/* 11D1D0 800FF0E0 0C03FC7B */  jal        func_menu_800FF1EC
/* 11D1D4 800FF0E4 02002021 */   addu      $a0, $s0, $zero
/* 11D1D8 800FF0E8 02001021 */  addu       $v0, $s0, $zero
/* 11D1DC 800FF0EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11D1E0 800FF0F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D1E4 800FF0F4 03E00008 */  jr         $ra
/* 11D1E8 800FF0F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FF0FC
/* 11D1EC 800FF0FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11D1F0 800FF100 AFB00010 */  sw         $s0, 0x10($sp)
/* 11D1F4 800FF104 00808021 */  addu       $s0, $a0, $zero
/* 11D1F8 800FF108 AFB10014 */  sw         $s1, 0x14($sp)
/* 11D1FC 800FF10C 00A08821 */  addu       $s1, $a1, $zero
/* 11D200 800FF110 3C02800D */  lui        $v0, %hi(D_menu_800CD1C8)
/* 11D204 800FF114 2442D1C8 */  addiu      $v0, $v0, %lo(D_menu_800CD1C8)
/* 11D208 800FF118 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11D20C 800FF11C 0C04234B */  jal        func_menu_80108D2C
/* 11D210 800FF120 AE020000 */   sw        $v0, 0x0($s0)
/* 11D214 800FF124 26045138 */  addiu      $a0, $s0, 0x5138
/* 11D218 800FF128 0C040F4B */  jal        func_menu_80103D2C
/* 11D21C 800FF12C 24050002 */   addiu     $a1, $zero, 0x2
/* 11D220 800FF130 26044E48 */  addiu      $a0, $s0, 0x4E48
/* 11D224 800FF134 0C040F4B */  jal        func_menu_80103D2C
/* 11D228 800FF138 24050002 */   addiu     $a1, $zero, 0x2
/* 11D22C 800FF13C 26044B58 */  addiu      $a0, $s0, 0x4B58
/* 11D230 800FF140 0C040F4B */  jal        func_menu_80103D2C
/* 11D234 800FF144 24050002 */   addiu     $a1, $zero, 0x2
/* 11D238 800FF148 26044868 */  addiu      $a0, $s0, 0x4868
/* 11D23C 800FF14C 0C040F4B */  jal        func_menu_80103D2C
/* 11D240 800FF150 24050002 */   addiu     $a1, $zero, 0x2
/* 11D244 800FF154 26044578 */  addiu      $a0, $s0, 0x4578
/* 11D248 800FF158 0C040F4B */  jal        func_menu_80103D2C
/* 11D24C 800FF15C 24050002 */   addiu     $a1, $zero, 0x2
/* 11D250 800FF160 26044288 */  addiu      $a0, $s0, 0x4288
/* 11D254 800FF164 0C040F4B */  jal        func_menu_80103D2C
/* 11D258 800FF168 24050002 */   addiu     $a1, $zero, 0x2
/* 11D25C 800FF16C 26043F98 */  addiu      $a0, $s0, 0x3F98
/* 11D260 800FF170 0C040F4B */  jal        func_menu_80103D2C
/* 11D264 800FF174 24050002 */   addiu     $a1, $zero, 0x2
/* 11D268 800FF178 26043CA8 */  addiu      $a0, $s0, 0x3CA8
/* 11D26C 800FF17C 0C040F4B */  jal        func_menu_80103D2C
/* 11D270 800FF180 24050002 */   addiu     $a1, $zero, 0x2
/* 11D274 800FF184 260439B8 */  addiu      $a0, $s0, 0x39B8
/* 11D278 800FF188 0C040F4B */  jal        func_menu_80103D2C
/* 11D27C 800FF18C 24050002 */   addiu     $a1, $zero, 0x2
/* 11D280 800FF190 260436C8 */  addiu      $a0, $s0, 0x36C8
/* 11D284 800FF194 0C040F4B */  jal        func_menu_80103D2C
/* 11D288 800FF198 24050002 */   addiu     $a1, $zero, 0x2
/* 11D28C 800FF19C 260433D8 */  addiu      $a0, $s0, 0x33D8
/* 11D290 800FF1A0 0C040F4B */  jal        func_menu_80103D2C
/* 11D294 800FF1A4 24050002 */   addiu     $a1, $zero, 0x2
/* 11D298 800FF1A8 260430E8 */  addiu      $a0, $s0, 0x30E8
/* 11D29C 800FF1AC 0C040F4B */  jal        func_menu_80103D2C
/* 11D2A0 800FF1B0 24050002 */   addiu     $a1, $zero, 0x2
/* 11D2A4 800FF1B4 26043070 */  addiu      $a0, $s0, 0x3070
/* 11D2A8 800FF1B8 0C047CB9 */  jal        func_menu_8011F2E4
/* 11D2AC 800FF1BC 24050002 */   addiu     $a1, $zero, 0x2
/* 11D2B0 800FF1C0 26043014 */  addiu      $a0, $s0, 0x3014
/* 11D2B4 800FF1C4 0C047BB3 */  jal        func_menu_8011EECC
/* 11D2B8 800FF1C8 24050002 */   addiu     $a1, $zero, 0x2
/* 11D2BC 800FF1CC 02002021 */  addu       $a0, $s0, $zero
/* 11D2C0 800FF1D0 0C04371A */  jal        func_menu_8010DC68
/* 11D2C4 800FF1D4 02202821 */   addu      $a1, $s1, $zero
/* 11D2C8 800FF1D8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11D2CC 800FF1DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 11D2D0 800FF1E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D2D4 800FF1E4 03E00008 */  jr         $ra
/* 11D2D8 800FF1E8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FF1EC
/* 11D2DC 800FF1EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D2E0 800FF1F0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 11D2E4 800FF1F4 AC80542C */  sw         $zero, 0x542C($a0)
/* 11D2E8 800FF1F8 0C04376A */  jal        func_menu_8010DDA8
/* 11D2EC 800FF1FC AC805428 */   sw        $zero, 0x5428($a0)
/* 11D2F0 800FF200 8FBF0010 */  lw         $ra, 0x10($sp)
/* 11D2F4 800FF204 03E00008 */  jr         $ra
/* 11D2F8 800FF208 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FF20C
/* 11D2FC 800FF20C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11D300 800FF210 AFB00018 */  sw         $s0, 0x18($sp)
/* 11D304 800FF214 00808021 */  addu       $s0, $a0, $zero
/* 11D308 800FF218 260530E8 */  addiu      $a1, $s0, 0x30E8
/* 11D30C 800FF21C 24060098 */  addiu      $a2, $zero, 0x98
/* 11D310 800FF220 2407004B */  addiu      $a3, $zero, 0x4B
/* 11D314 800FF224 24020028 */  addiu      $v0, $zero, 0x28
/* 11D318 800FF228 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11D31C 800FF22C AFB1001C */  sw         $s1, 0x1C($sp)
/* 11D320 800FF230 0C040297 */  jal        func_menu_80100A5C
/* 11D324 800FF234 AFA20010 */   sw        $v0, 0x10($sp)
/* 11D328 800FF238 02002021 */  addu       $a0, $s0, $zero
/* 11D32C 800FF23C 260533D8 */  addiu      $a1, $s0, 0x33D8
/* 11D330 800FF240 24060099 */  addiu      $a2, $zero, 0x99
/* 11D334 800FF244 2407004B */  addiu      $a3, $zero, 0x4B
/* 11D338 800FF248 24020029 */  addiu      $v0, $zero, 0x29
/* 11D33C 800FF24C 0C040297 */  jal        func_menu_80100A5C
/* 11D340 800FF250 AFA20010 */   sw        $v0, 0x10($sp)
/* 11D344 800FF254 02002021 */  addu       $a0, $s0, $zero
/* 11D348 800FF258 260536C8 */  addiu      $a1, $s0, 0x36C8
/* 11D34C 800FF25C 2406009A */  addiu      $a2, $zero, 0x9A
/* 11D350 800FF260 2407004B */  addiu      $a3, $zero, 0x4B
/* 11D354 800FF264 2402002A */  addiu      $v0, $zero, 0x2A
/* 11D358 800FF268 0C040297 */  jal        func_menu_80100A5C
/* 11D35C 800FF26C AFA20010 */   sw        $v0, 0x10($sp)
/* 11D360 800FF270 02002021 */  addu       $a0, $s0, $zero
/* 11D364 800FF274 260539B8 */  addiu      $a1, $s0, 0x39B8
/* 11D368 800FF278 2406009B */  addiu      $a2, $zero, 0x9B
/* 11D36C 800FF27C 2407004B */  addiu      $a3, $zero, 0x4B
/* 11D370 800FF280 2402002C */  addiu      $v0, $zero, 0x2C
/* 11D374 800FF284 0C040297 */  jal        func_menu_80100A5C
/* 11D378 800FF288 AFA20010 */   sw        $v0, 0x10($sp)
/* 11D37C 800FF28C 02002021 */  addu       $a0, $s0, $zero
/* 11D380 800FF290 26053CA8 */  addiu      $a1, $s0, 0x3CA8
/* 11D384 800FF294 2406009C */  addiu      $a2, $zero, 0x9C
/* 11D388 800FF298 2407004B */  addiu      $a3, $zero, 0x4B
/* 11D38C 800FF29C 2402002D */  addiu      $v0, $zero, 0x2D
/* 11D390 800FF2A0 0C040297 */  jal        func_menu_80100A5C
/* 11D394 800FF2A4 AFA20010 */   sw        $v0, 0x10($sp)
/* 11D398 800FF2A8 02002021 */  addu       $a0, $s0, $zero
/* 11D39C 800FF2AC 26054868 */  addiu      $a1, $s0, 0x4868
/* 11D3A0 800FF2B0 24060048 */  addiu      $a2, $zero, 0x48
/* 11D3A4 800FF2B4 2407004C */  addiu      $a3, $zero, 0x4C
/* 11D3A8 800FF2B8 24110003 */  addiu      $s1, $zero, 0x3
/* 11D3AC 800FF2BC 0C040297 */  jal        func_menu_80100A5C
/* 11D3B0 800FF2C0 AFB10010 */   sw        $s1, 0x10($sp)
/* 11D3B4 800FF2C4 02002021 */  addu       $a0, $s0, $zero
/* 11D3B8 800FF2C8 24903070 */  addiu      $s0, $a0, 0x3070
/* 11D3BC 800FF2CC 02002821 */  addu       $a1, $s0, $zero
/* 11D3C0 800FF2D0 24060043 */  addiu      $a2, $zero, 0x43
/* 11D3C4 800FF2D4 00C03821 */  addu       $a3, $a2, $zero
/* 11D3C8 800FF2D8 0C04679E */  jal        func_menu_80119E78
/* 11D3CC 800FF2DC AFB10010 */   sw        $s1, 0x10($sp)
/* 11D3D0 800FF2E0 02002021 */  addu       $a0, $s0, $zero
/* 11D3D4 800FF2E4 0C047D63 */  jal        func_menu_8011F58C
/* 11D3D8 800FF2E8 2405001E */   addiu     $a1, $zero, 0x1E
/* 11D3DC 800FF2EC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11D3E0 800FF2F0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11D3E4 800FF2F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 11D3E8 800FF2F8 03E00008 */  jr         $ra
/* 11D3EC 800FF2FC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FF300
/* 11D3F0 800FF300 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11D3F4 800FF304 AFB00018 */  sw         $s0, 0x18($sp)
/* 11D3F8 800FF308 00808021 */  addu       $s0, $a0, $zero
/* 11D3FC 800FF30C 26054288 */  addiu      $a1, $s0, 0x4288
/* 11D400 800FF310 2406000F */  addiu      $a2, $zero, 0xF
/* 11D404 800FF314 2407004B */  addiu      $a3, $zero, 0x4B
/* 11D408 800FF318 24020009 */  addiu      $v0, $zero, 0x9
/* 11D40C 800FF31C AFBF001C */  sw         $ra, 0x1C($sp)
/* 11D410 800FF320 0C040297 */  jal        func_menu_80100A5C
/* 11D414 800FF324 AFA20010 */   sw        $v0, 0x10($sp)
/* 11D418 800FF328 02002021 */  addu       $a0, $s0, $zero
/* 11D41C 800FF32C 26054578 */  addiu      $a1, $s0, 0x4578
/* 11D420 800FF330 240600A0 */  addiu      $a2, $zero, 0xA0
/* 11D424 800FF334 2407004B */  addiu      $a3, $zero, 0x4B
/* 11D428 800FF338 2402000A */  addiu      $v0, $zero, 0xA
/* 11D42C 800FF33C 0C040297 */  jal        func_menu_80100A5C
/* 11D430 800FF340 AFA20010 */   sw        $v0, 0x10($sp)
/* 11D434 800FF344 02002021 */  addu       $a0, $s0, $zero
/* 11D438 800FF348 26053F98 */  addiu      $a1, $s0, 0x3F98
/* 11D43C 800FF34C 24060011 */  addiu      $a2, $zero, 0x11
/* 11D440 800FF350 2407004B */  addiu      $a3, $zero, 0x4B
/* 11D444 800FF354 2402000B */  addiu      $v0, $zero, 0xB
/* 11D448 800FF358 0C040297 */  jal        func_menu_80100A5C
/* 11D44C 800FF35C AFA20010 */   sw        $v0, 0x10($sp)
/* 11D450 800FF360 0C03FDF0 */  jal        func_menu_800FF7C0
/* 11D454 800FF364 02002021 */   addu      $a0, $s0, $zero
/* 11D458 800FF368 8FBF001C */  lw         $ra, 0x1C($sp)
/* 11D45C 800FF36C 8FB00018 */  lw         $s0, 0x18($sp)
/* 11D460 800FF370 03E00008 */  jr         $ra
/* 11D464 800FF374 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800FF378
/* 11D468 800FF378 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D46C 800FF37C AFB00010 */  sw         $s0, 0x10($sp)
/* 11D470 800FF380 00808021 */  addu       $s0, $a0, $zero
/* 11D474 800FF384 26053014 */  addiu      $a1, $s0, 0x3014
/* 11D478 800FF388 24060052 */  addiu      $a2, $zero, 0x52
/* 11D47C 800FF38C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11D480 800FF390 0C04675B */  jal        func_menu_80119D6C
/* 11D484 800FF394 00C03821 */   addu      $a3, $a2, $zero
/* 11D488 800FF398 0C043778 */  jal        func_menu_8010DDE0
/* 11D48C 800FF39C 02002021 */   addu      $a0, $s0, $zero
/* 11D490 800FF3A0 0C03FC83 */  jal        func_menu_800FF20C
/* 11D494 800FF3A4 02002021 */   addu      $a0, $s0, $zero
/* 11D498 800FF3A8 0C03FCC0 */  jal        func_menu_800FF300
/* 11D49C 800FF3AC 02002021 */   addu      $a0, $s0, $zero
/* 11D4A0 800FF3B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11D4A4 800FF3B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D4A8 800FF3B8 03E00008 */  jr         $ra
/* 11D4AC 800FF3BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FF3C0
/* 11D4B0 800FF3C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 11D4B4 800FF3C4 AFB3002C */  sw         $s3, 0x2C($sp)
/* 11D4B8 800FF3C8 00809821 */  addu       $s3, $a0, $zero
/* 11D4BC 800FF3CC AFB20028 */  sw         $s2, 0x28($sp)
/* 11D4C0 800FF3D0 00A09021 */  addu       $s2, $a1, $zero
/* 11D4C4 800FF3D4 AFB40030 */  sw         $s4, 0x30($sp)
/* 11D4C8 800FF3D8 00C0A021 */  addu       $s4, $a2, $zero
/* 11D4CC 800FF3DC AFBF0034 */  sw         $ra, 0x34($sp)
/* 11D4D0 800FF3E0 AFB10024 */  sw         $s1, 0x24($sp)
/* 11D4D4 800FF3E4 0C040509 */  jal        func_menu_80101424
/* 11D4D8 800FF3E8 AFB00020 */   sw        $s0, 0x20($sp)
/* 11D4DC 800FF3EC 14400007 */  bnez       $v0, .Lmenu_800FF40C
/* 11D4E0 800FF3F0 26500004 */   addiu     $s0, $s2, 0x4
/* 11D4E4 800FF3F4 02602021 */  addu       $a0, $s3, $zero
/* 11D4E8 800FF3F8 02402821 */  addu       $a1, $s2, $zero
/* 11D4EC 800FF3FC 24060001 */  addiu      $a2, $zero, 0x1
/* 11D4F0 800FF400 0C04051A */  jal        func_menu_80101468
/* 11D4F4 800FF404 00C03821 */   addu      $a3, $a2, $zero
/* 11D4F8 800FF408 26500004 */  addiu      $s0, $s2, 0x4
.Lmenu_800FF40C:
/* 11D4FC 800FF40C 8E020008 */  lw         $v0, 0x8($s0)
/* 11D500 800FF410 24110001 */  addiu      $s1, $zero, 0x1
/* 11D504 800FF414 14510009 */  bne        $v0, $s1, .Lmenu_800FF43C
/* 11D508 800FF418 3C02000F */   lui       $v0, (0xFFFF2 >> 16)
/* 11D50C 800FF41C AE000008 */  sw         $zero, 0x8($s0)
/* 11D510 800FF420 02002021 */  addu       $a0, $s0, $zero
/* 11D514 800FF424 0C0401A6 */  jal        func_menu_80100698
/* 11D518 800FF428 24050002 */   addiu     $a1, $zero, 0x2
/* 11D51C 800FF42C 02002021 */  addu       $a0, $s0, $zero
/* 11D520 800FF430 0C0401A6 */  jal        func_menu_80100698
/* 11D524 800FF434 24050003 */   addiu     $a1, $zero, 0x3
/* 11D528 800FF438 3C02000F */  lui        $v0, (0xFFFF2 >> 16)
.Lmenu_800FF43C:
/* 11D52C 800FF43C 3442FFF2 */  ori        $v0, $v0, (0xFFFF2 & 0xFFFF)
/* 11D530 800FF440 02602021 */  addu       $a0, $s3, $zero
/* 11D534 800FF444 02402821 */  addu       $a1, $s2, $zero
/* 11D538 800FF448 02803021 */  addu       $a2, $s4, $zero
/* 11D53C 800FF44C 2403FFF6 */  addiu      $v1, $zero, -0xA
/* 11D540 800FF450 AFB10010 */  sw         $s1, 0x10($sp)
/* 11D544 800FF454 AFB10014 */  sw         $s1, 0x14($sp)
/* 11D548 800FF458 AFA20018 */  sw         $v0, 0x18($sp)
/* 11D54C 800FF45C 8CA24614 */  lw         $v0, 0x4614($a1)
/* 11D550 800FF460 8CA80000 */  lw         $t0, 0x0($a1)
/* 11D554 800FF464 00431024 */  and        $v0, $v0, $v1
/* 11D558 800FF468 ACA24614 */  sw         $v0, 0x4614($a1)
/* 11D55C 800FF46C 95020022 */  lhu        $v0, 0x22($t0)
/* 11D560 800FF470 27A70010 */  addiu      $a3, $sp, 0x10
/* 11D564 800FF474 3042FFFD */  andi       $v0, $v0, 0xFFFD
/* 11D568 800FF478 A5020022 */  sh         $v0, 0x22($t0)
/* 11D56C 800FF47C 0C0437BB */  jal        func_menu_8010DEEC
/* 11D570 800FF480 ACA02CA4 */   sw        $zero, 0x2CA4($a1)
/* 11D574 800FF484 50400009 */  beql       $v0, $zero, .Lmenu_800FF4AC
/* 11D578 800FF488 00001021 */   addu      $v0, $zero, $zero
/* 11D57C 800FF48C 8E620000 */  lw         $v0, 0x0($s3)
/* 11D580 800FF490 84440108 */  lh         $a0, 0x108($v0)
/* 11D584 800FF494 8C42010C */  lw         $v0, 0x10C($v0)
/* 11D588 800FF498 0040F809 */  jalr       $v0
/* 11D58C 800FF49C 02642021 */   addu      $a0, $s3, $a0
/* 11D590 800FF4A0 0C03FD33 */  jal        func_menu_800FF4CC
/* 11D594 800FF4A4 02602021 */   addu      $a0, $s3, $zero
/* 11D598 800FF4A8 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800FF4AC:
/* 11D59C 800FF4AC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 11D5A0 800FF4B0 8FB40030 */  lw         $s4, 0x30($sp)
/* 11D5A4 800FF4B4 8FB3002C */  lw         $s3, 0x2C($sp)
/* 11D5A8 800FF4B8 8FB20028 */  lw         $s2, 0x28($sp)
/* 11D5AC 800FF4BC 8FB10024 */  lw         $s1, 0x24($sp)
/* 11D5B0 800FF4C0 8FB00020 */  lw         $s0, 0x20($sp)
/* 11D5B4 800FF4C4 03E00008 */  jr         $ra
/* 11D5B8 800FF4C8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800FF4CC
/* 11D5BC 800FF4CC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11D5C0 800FF4D0 AFB10014 */  sw         $s1, 0x14($sp)
/* 11D5C4 800FF4D4 00808821 */  addu       $s1, $a0, $zero
/* 11D5C8 800FF4D8 AFB20018 */  sw         $s2, 0x18($sp)
/* 11D5CC 800FF4DC 263230E8 */  addiu      $s2, $s1, 0x30E8
/* 11D5D0 800FF4E0 3C034000 */  lui        $v1, (0x40000000 >> 16)
/* 11D5D4 800FF4E4 AFB50024 */  sw         $s5, 0x24($sp)
/* 11D5D8 800FF4E8 263533D8 */  addiu      $s5, $s1, 0x33D8
/* 11D5DC 800FF4EC AFBF002C */  sw         $ra, 0x2C($sp)
/* 11D5E0 800FF4F0 AFB60028 */  sw         $s6, 0x28($sp)
/* 11D5E4 800FF4F4 AFB40020 */  sw         $s4, 0x20($sp)
/* 11D5E8 800FF4F8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 11D5EC 800FF4FC AFB00010 */  sw         $s0, 0x10($sp)
/* 11D5F0 800FF500 8E420018 */  lw         $v0, 0x18($s2)
/* 11D5F4 800FF504 263636C8 */  addiu      $s6, $s1, 0x36C8
/* 11D5F8 800FF508 00431025 */  or         $v0, $v0, $v1
/* 11D5FC 800FF50C AE420018 */  sw         $v0, 0x18($s2)
/* 11D600 800FF510 8EA20018 */  lw         $v0, 0x18($s5)
/* 11D604 800FF514 263339B8 */  addiu      $s3, $s1, 0x39B8
/* 11D608 800FF518 00431025 */  or         $v0, $v0, $v1
/* 11D60C 800FF51C AEA20018 */  sw         $v0, 0x18($s5)
/* 11D610 800FF520 8EC20018 */  lw         $v0, 0x18($s6)
/* 11D614 800FF524 00431025 */  or         $v0, $v0, $v1
/* 11D618 800FF528 AEC20018 */  sw         $v0, 0x18($s6)
/* 11D61C 800FF52C 8E620018 */  lw         $v0, 0x18($s3)
/* 11D620 800FF530 26343CA8 */  addiu      $s4, $s1, 0x3CA8
/* 11D624 800FF534 00431025 */  or         $v0, $v0, $v1
/* 11D628 800FF538 AE620018 */  sw         $v0, 0x18($s3)
/* 11D62C 800FF53C 8E820018 */  lw         $v0, 0x18($s4)
/* 11D630 800FF540 00002821 */  addu       $a1, $zero, $zero
/* 11D634 800FF544 00431025 */  or         $v0, $v0, $v1
/* 11D638 800FF548 0C043912 */  jal        func_menu_8010E448
/* 11D63C 800FF54C AE820018 */   sw        $v0, 0x18($s4)
/* 11D640 800FF550 26244868 */  addiu      $a0, $s1, 0x4868
/* 11D644 800FF554 0C041070 */  jal        func_menu_801041C0
/* 11D648 800FF558 24050002 */   addiu     $a1, $zero, 0x2
/* 11D64C 800FF55C 26303070 */  addiu      $s0, $s1, 0x3070
/* 11D650 800FF560 02002021 */  addu       $a0, $s0, $zero
/* 11D654 800FF564 24050003 */  addiu      $a1, $zero, 0x3
/* 11D658 800FF568 0C047D09 */  jal        func_menu_8011F424
/* 11D65C 800FF56C 24060001 */   addiu     $a2, $zero, 0x1
/* 11D660 800FF570 02002021 */  addu       $a0, $s0, $zero
/* 11D664 800FF574 0C047D63 */  jal        func_menu_8011F58C
/* 11D668 800FF578 2405001E */   addiu     $a1, $zero, 0x1E
/* 11D66C 800FF57C 8E221724 */  lw         $v0, 0x1724($s1)
/* 11D670 800FF580 1040002B */  beqz       $v0, .Lmenu_800FF630
/* 11D674 800FF584 02A02021 */   addu      $a0, $s5, $zero
/* 11D678 800FF588 0C048CEC */  jal        func_menu_801233B0
/* 11D67C 800FF58C 24050005 */   addiu     $a1, $zero, 0x5
/* 11D680 800FF590 02602021 */  addu       $a0, $s3, $zero
/* 11D684 800FF594 0C048CEC */  jal        func_menu_801233B0
/* 11D688 800FF598 24050005 */   addiu     $a1, $zero, 0x5
/* 11D68C 800FF59C 02802021 */  addu       $a0, $s4, $zero
/* 11D690 800FF5A0 0C048CEC */  jal        func_menu_801233B0
/* 11D694 800FF5A4 24050005 */   addiu     $a1, $zero, 0x5
/* 11D698 800FF5A8 8E231724 */  lw         $v1, 0x1724($s1)
/* 11D69C 800FF5AC 24020065 */  addiu      $v0, $zero, 0x65
/* 11D6A0 800FF5B0 14620008 */  bne        $v1, $v0, .Lmenu_800FF5D4
/* 11D6A4 800FF5B4 02402021 */   addu      $a0, $s2, $zero
/* 11D6A8 800FF5B8 0C048D07 */  jal        func_menu_8012341C
/* 11D6AC 800FF5BC 24050005 */   addiu     $a1, $zero, 0x5
/* 11D6B0 800FF5C0 02C02021 */  addu       $a0, $s6, $zero
/* 11D6B4 800FF5C4 0C048D07 */  jal        func_menu_8012341C
/* 11D6B8 800FF5C8 24050005 */   addiu     $a1, $zero, 0x5
/* 11D6BC 800FF5CC 0803FD7B */  j          .Lmenu_800FF5EC
/* 11D6C0 800FF5D0 02A02021 */   addu      $a0, $s5, $zero
.Lmenu_800FF5D4:
/* 11D6C4 800FF5D4 0C048CEC */  jal        func_menu_801233B0
/* 11D6C8 800FF5D8 24050005 */   addiu     $a1, $zero, 0x5
/* 11D6CC 800FF5DC 02C02021 */  addu       $a0, $s6, $zero
/* 11D6D0 800FF5E0 0C048CEC */  jal        func_menu_801233B0
/* 11D6D4 800FF5E4 24050005 */   addiu     $a1, $zero, 0x5
/* 11D6D8 800FF5E8 02402021 */  addu       $a0, $s2, $zero
.Lmenu_800FF5EC:
/* 11D6DC 800FF5EC 0C048D3F */  jal        func_menu_801234FC
/* 11D6E0 800FF5F0 24050004 */   addiu     $a1, $zero, 0x4
/* 11D6E4 800FF5F4 8E221724 */  lw         $v0, 0x1724($s1)
/* 11D6E8 800FF5F8 28420002 */  slti       $v0, $v0, 0x2
/* 11D6EC 800FF5FC 14400005 */  bnez       $v0, .Lmenu_800FF614
/* 11D6F0 800FF600 02202021 */   addu      $a0, $s1, $zero
/* 11D6F4 800FF604 0C043931 */  jal        func_menu_8010E4C4
/* 11D6F8 800FF608 00002821 */   addu      $a1, $zero, $zero
/* 11D6FC 800FF60C 0803FD88 */  j          .Lmenu_800FF620
/* 11D700 800FF610 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800FF614:
/* 11D704 800FF614 0C043980 */  jal        func_menu_8010E600
/* 11D708 800FF618 00002821 */   addu      $a1, $zero, $zero
/* 11D70C 800FF61C 02202021 */  addu       $a0, $s1, $zero
.Lmenu_800FF620:
/* 11D710 800FF620 0C042452 */  jal        func_menu_80109148
/* 11D714 800FF624 00002821 */   addu      $a1, $zero, $zero
/* 11D718 800FF628 0803FDA5 */  j          .Lmenu_800FF694
/* 11D71C 800FF62C 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800FF630:
/* 11D720 800FF630 02402021 */  addu       $a0, $s2, $zero
/* 11D724 800FF634 0C048CEC */  jal        func_menu_801233B0
/* 11D728 800FF638 24050005 */   addiu     $a1, $zero, 0x5
/* 11D72C 800FF63C 02A02021 */  addu       $a0, $s5, $zero
/* 11D730 800FF640 0C048D07 */  jal        func_menu_8012341C
/* 11D734 800FF644 24050005 */   addiu     $a1, $zero, 0x5
/* 11D738 800FF648 02C02021 */  addu       $a0, $s6, $zero
/* 11D73C 800FF64C 0C048D07 */  jal        func_menu_8012341C
/* 11D740 800FF650 24050005 */   addiu     $a1, $zero, 0x5
/* 11D744 800FF654 02602021 */  addu       $a0, $s3, $zero
/* 11D748 800FF658 0C048D07 */  jal        func_menu_8012341C
/* 11D74C 800FF65C 24050005 */   addiu     $a1, $zero, 0x5
/* 11D750 800FF660 02802021 */  addu       $a0, $s4, $zero
/* 11D754 800FF664 0C048D07 */  jal        func_menu_8012341C
/* 11D758 800FF668 24050005 */   addiu     $a1, $zero, 0x5
/* 11D75C 800FF66C 02402021 */  addu       $a0, $s2, $zero
/* 11D760 800FF670 0C048D3F */  jal        func_menu_801234FC
/* 11D764 800FF674 24050005 */   addiu     $a1, $zero, 0x5
/* 11D768 800FF678 02202021 */  addu       $a0, $s1, $zero
/* 11D76C 800FF67C 0C043980 */  jal        func_menu_8010E600
/* 11D770 800FF680 00002821 */   addu      $a1, $zero, $zero
/* 11D774 800FF684 02202021 */  addu       $a0, $s1, $zero
/* 11D778 800FF688 0C04258C */  jal        func_menu_80109630
/* 11D77C 800FF68C 00002821 */   addu      $a1, $zero, $zero
/* 11D780 800FF690 02202021 */  addu       $a0, $s1, $zero
.Lmenu_800FF694:
/* 11D784 800FF694 0C043844 */  jal        func_menu_8010E110
/* 11D788 800FF698 00002821 */   addu      $a1, $zero, $zero
/* 11D78C 800FF69C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 11D790 800FF6A0 8FB60028 */  lw         $s6, 0x28($sp)
/* 11D794 800FF6A4 8FB50024 */  lw         $s5, 0x24($sp)
/* 11D798 800FF6A8 8FB40020 */  lw         $s4, 0x20($sp)
/* 11D79C 800FF6AC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11D7A0 800FF6B0 8FB20018 */  lw         $s2, 0x18($sp)
/* 11D7A4 800FF6B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 11D7A8 800FF6B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D7AC 800FF6BC 03E00008 */  jr         $ra
/* 11D7B0 800FF6C0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FF6C4
/* 11D7B4 800FF6C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D7B8 800FF6C8 3C05BFFF */  lui        $a1, (0xBFFFFFFF >> 16)
/* 11D7BC 800FF6CC 248330E8 */  addiu      $v1, $a0, 0x30E8
/* 11D7C0 800FF6D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 11D7C4 800FF6D4 8C620018 */  lw         $v0, 0x18($v1)
/* 11D7C8 800FF6D8 34A5FFFF */  ori        $a1, $a1, (0xBFFFFFFF & 0xFFFF)
/* 11D7CC 800FF6DC 00451024 */  and        $v0, $v0, $a1
/* 11D7D0 800FF6E0 AC620018 */  sw         $v0, 0x18($v1)
/* 11D7D4 800FF6E4 248333D8 */  addiu      $v1, $a0, 0x33D8
/* 11D7D8 800FF6E8 8C620018 */  lw         $v0, 0x18($v1)
/* 11D7DC 800FF6EC 00451024 */  and        $v0, $v0, $a1
/* 11D7E0 800FF6F0 AC620018 */  sw         $v0, 0x18($v1)
/* 11D7E4 800FF6F4 248336C8 */  addiu      $v1, $a0, 0x36C8
/* 11D7E8 800FF6F8 8C620018 */  lw         $v0, 0x18($v1)
/* 11D7EC 800FF6FC 00451024 */  and        $v0, $v0, $a1
/* 11D7F0 800FF700 AC620018 */  sw         $v0, 0x18($v1)
/* 11D7F4 800FF704 248339B8 */  addiu      $v1, $a0, 0x39B8
/* 11D7F8 800FF708 8C620018 */  lw         $v0, 0x18($v1)
/* 11D7FC 800FF70C 00451024 */  and        $v0, $v0, $a1
/* 11D800 800FF710 AC620018 */  sw         $v0, 0x18($v1)
/* 11D804 800FF714 24833CA8 */  addiu      $v1, $a0, 0x3CA8
/* 11D808 800FF718 8C620018 */  lw         $v0, 0x18($v1)
/* 11D80C 800FF71C 00451024 */  and        $v0, $v0, $a1
/* 11D810 800FF720 00002821 */  addu       $a1, $zero, $zero
/* 11D814 800FF724 0C043980 */  jal        func_menu_8010E600
/* 11D818 800FF728 AC620018 */   sw        $v0, 0x18($v1)
/* 11D81C 800FF72C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 11D820 800FF730 03E00008 */  jr         $ra
/* 11D824 800FF734 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FF738
/* 11D828 800FF738 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D82C 800FF73C AFB00010 */  sw         $s0, 0x10($sp)
/* 11D830 800FF740 00808021 */  addu       $s0, $a0, $zero
/* 11D834 800FF744 26033F98 */  addiu      $v1, $s0, 0x3F98
/* 11D838 800FF748 3C064000 */  lui        $a2, (0x40000000 >> 16)
/* 11D83C 800FF74C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11D840 800FF750 8C620018 */  lw         $v0, 0x18($v1)
/* 11D844 800FF754 26044288 */  addiu      $a0, $s0, 0x4288
/* 11D848 800FF758 00461025 */  or         $v0, $v0, $a2
/* 11D84C 800FF75C AC620018 */  sw         $v0, 0x18($v1)
/* 11D850 800FF760 8C820018 */  lw         $v0, 0x18($a0)
/* 11D854 800FF764 26034578 */  addiu      $v1, $s0, 0x4578
/* 11D858 800FF768 00461025 */  or         $v0, $v0, $a2
/* 11D85C 800FF76C AC820018 */  sw         $v0, 0x18($a0)
/* 11D860 800FF770 8C620018 */  lw         $v0, 0x18($v1)
/* 11D864 800FF774 24050005 */  addiu      $a1, $zero, 0x5
/* 11D868 800FF778 00461025 */  or         $v0, $v0, $a2
/* 11D86C 800FF77C 0C048D3F */  jal        func_menu_801234FC
/* 11D870 800FF780 AC620018 */   sw        $v0, 0x18($v1)
/* 11D874 800FF784 26044868 */  addiu      $a0, $s0, 0x4868
/* 11D878 800FF788 0C041070 */  jal        func_menu_801041C0
/* 11D87C 800FF78C 24050003 */   addiu     $a1, $zero, 0x3
/* 11D880 800FF790 26103070 */  addiu      $s0, $s0, 0x3070
/* 11D884 800FF794 02002021 */  addu       $a0, $s0, $zero
/* 11D888 800FF798 24050004 */  addiu      $a1, $zero, 0x4
/* 11D88C 800FF79C 0C047D09 */  jal        func_menu_8011F424
/* 11D890 800FF7A0 24060001 */   addiu     $a2, $zero, 0x1
/* 11D894 800FF7A4 02002021 */  addu       $a0, $s0, $zero
/* 11D898 800FF7A8 0C047D63 */  jal        func_menu_8011F58C
/* 11D89C 800FF7AC 2405001E */   addiu     $a1, $zero, 0x1E
/* 11D8A0 800FF7B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11D8A4 800FF7B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D8A8 800FF7B8 03E00008 */  jr         $ra
/* 11D8AC 800FF7BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FF7C0
/* 11D8B0 800FF7C0 3C05BFFF */  lui        $a1, (0xBFFFFFFF >> 16)
/* 11D8B4 800FF7C4 24833F98 */  addiu      $v1, $a0, 0x3F98
/* 11D8B8 800FF7C8 8C620018 */  lw         $v0, 0x18($v1)
/* 11D8BC 800FF7CC 34A5FFFF */  ori        $a1, $a1, (0xBFFFFFFF & 0xFFFF)
/* 11D8C0 800FF7D0 00451024 */  and        $v0, $v0, $a1
/* 11D8C4 800FF7D4 AC620018 */  sw         $v0, 0x18($v1)
/* 11D8C8 800FF7D8 24834288 */  addiu      $v1, $a0, 0x4288
/* 11D8CC 800FF7DC 8C620018 */  lw         $v0, 0x18($v1)
/* 11D8D0 800FF7E0 24844578 */  addiu      $a0, $a0, 0x4578
/* 11D8D4 800FF7E4 00451024 */  and        $v0, $v0, $a1
/* 11D8D8 800FF7E8 AC620018 */  sw         $v0, 0x18($v1)
/* 11D8DC 800FF7EC 8C820018 */  lw         $v0, 0x18($a0)
/* 11D8E0 800FF7F0 00451024 */  and        $v0, $v0, $a1
/* 11D8E4 800FF7F4 03E00008 */  jr         $ra
/* 11D8E8 800FF7F8 AC820018 */   sw        $v0, 0x18($a0)

glabel func_menu_800FF7FC
/* 11D8EC 800FF7FC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 11D8F0 800FF800 AFB10044 */  sw         $s1, 0x44($sp)
/* 11D8F4 800FF804 00808821 */  addu       $s1, $a0, $zero
/* 11D8F8 800FF808 AFB00040 */  sw         $s0, 0x40($sp)
/* 11D8FC 800FF80C 00A08021 */  addu       $s0, $a1, $zero
/* 11D900 800FF810 AFBF0048 */  sw         $ra, 0x48($sp)
/* 11D904 800FF814 0C03D054 */  jal        func_menu_800F4150
/* 11D908 800FF818 27A40010 */   addiu     $a0, $sp, 0x10
/* 11D90C 800FF81C 27A40010 */  addiu      $a0, $sp, 0x10
/* 11D910 800FF820 0C03D06F */  jal        func_menu_800F41BC
/* 11D914 800FF824 260502A4 */   addiu     $a1, $s0, 0x2A4
/* 11D918 800FF828 27A40010 */  addiu      $a0, $sp, 0x10
/* 11D91C 800FF82C 3C05000F */  lui        $a1, (0xFFFF2 >> 16)
/* 11D920 800FF830 0C03D0C6 */  jal        func_menu_800F4318
/* 11D924 800FF834 34A5FFF2 */   ori       $a1, $a1, (0xFFFF2 & 0xFFFF)
/* 11D928 800FF838 27A40010 */  addiu      $a0, $sp, 0x10
/* 11D92C 800FF83C 3C05000F */  lui        $a1, (0xFFFF2 >> 16)
/* 11D930 800FF840 0C03D07E */  jal        func_menu_800F41F8
/* 11D934 800FF844 34A5FFF2 */   ori       $a1, $a1, (0xFFFF2 & 0xFFFF)
/* 11D938 800FF848 27A40010 */  addiu      $a0, $sp, 0x10
/* 11D93C 800FF84C 0C03D077 */  jal        func_menu_800F41DC
/* 11D940 800FF850 AE221724 */   sw        $v0, 0x1724($s1)
/* 11D944 800FF854 8FBF0048 */  lw         $ra, 0x48($sp)
/* 11D948 800FF858 8FB10044 */  lw         $s1, 0x44($sp)
/* 11D94C 800FF85C 8FB00040 */  lw         $s0, 0x40($sp)
/* 11D950 800FF860 03E00008 */  jr         $ra
/* 11D954 800FF864 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800FF868
/* 11D958 800FF868 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11D95C 800FF86C AFB10014 */  sw         $s1, 0x14($sp)
/* 11D960 800FF870 00808821 */  addu       $s1, $a0, $zero
/* 11D964 800FF874 AFB00010 */  sw         $s0, 0x10($sp)
/* 11D968 800FF878 00008021 */  addu       $s0, $zero, $zero
/* 11D96C 800FF87C AFB20018 */  sw         $s2, 0x18($sp)
/* 11D970 800FF880 263214D4 */  addiu      $s2, $s1, 0x14D4
/* 11D974 800FF884 02402021 */  addu       $a0, $s2, $zero
/* 11D978 800FF888 AFBF0024 */  sw         $ra, 0x24($sp)
/* 11D97C 800FF88C AFB40020 */  sw         $s4, 0x20($sp)
/* 11D980 800FF890 0C03D188 */  jal        func_menu_800F4620
/* 11D984 800FF894 AFB3001C */   sw        $s3, 0x1C($sp)
/* 11D988 800FF898 02402021 */  addu       $a0, $s2, $zero
/* 11D98C 800FF89C 0C03D131 */  jal        func_menu_800F44C4
/* 11D990 800FF8A0 00409821 */   addu      $s3, $v0, $zero
/* 11D994 800FF8A4 0040A021 */  addu       $s4, $v0, $zero
/* 11D998 800FF8A8 24020001 */  addiu      $v0, $zero, 0x1
/* 11D99C 800FF8AC 8E630008 */  lw         $v1, 0x8($s3)
/* 11D9A0 800FF8B0 8E64000C */  lw         $a0, 0xC($s3)
/* 11D9A4 800FF8B4 10620005 */  beq        $v1, $v0, .Lmenu_800FF8CC
/* 11D9A8 800FF8B8 24020002 */   addiu     $v0, $zero, 0x2
/* 11D9AC 800FF8BC 10620006 */  beq        $v1, $v0, .Lmenu_800FF8D8
/* 11D9B0 800FF8C0 00041080 */   sll       $v0, $a0, 2
/* 11D9B4 800FF8C4 0803FE40 */  j          .Lmenu_800FF900
/* 11D9B8 800FF8C8 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800FF8CC:
/* 11D9BC 800FF8CC 8E220354 */  lw         $v0, 0x354($s1)
/* 11D9C0 800FF8D0 0803FE3F */  j          .Lmenu_800FF8FC
/* 11D9C4 800FF8D4 245002A4 */   addiu     $s0, $v0, 0x2A4
.Lmenu_800FF8D8:
/* 11D9C8 800FF8D8 8E230354 */  lw         $v1, 0x354($s1)
/* 11D9CC 800FF8DC 00441021 */  addu       $v0, $v0, $a0
/* 11D9D0 800FF8E0 000210C0 */  sll        $v0, $v0, 3
/* 11D9D4 800FF8E4 00441023 */  subu       $v0, $v0, $a0
/* 11D9D8 800FF8E8 000210C0 */  sll        $v0, $v0, 3
/* 11D9DC 800FF8EC 00441021 */  addu       $v0, $v0, $a0
/* 11D9E0 800FF8F0 00021080 */  sll        $v0, $v0, 2
/* 11D9E4 800FF8F4 00621821 */  addu       $v1, $v1, $v0
/* 11D9E8 800FF8F8 24700DE8 */  addiu      $s0, $v1, 0xDE8
.Lmenu_800FF8FC:
/* 11D9EC 800FF8FC 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800FF900:
/* 11D9F0 800FF900 0C03BB36 */  jal        func_menu_800EECD8
/* 11D9F4 800FF904 02602821 */   addu      $a1, $s3, $zero
/* 11D9F8 800FF908 24020001 */  addiu      $v0, $zero, 0x1
/* 11D9FC 800FF90C AE220364 */  sw         $v0, 0x364($s1)
/* 11DA00 800FF910 24020003 */  addiu      $v0, $zero, 0x3
/* 11DA04 800FF914 A6220360 */  sh         $v0, 0x360($s1)
/* 11DA08 800FF918 8E45002C */  lw         $a1, 0x2C($s2)
/* 11DA0C 800FF91C 0C03D0C6 */  jal        func_menu_800F4318
/* 11DA10 800FF920 02402021 */   addu      $a0, $s2, $zero
/* 11DA14 800FF924 12800005 */  beqz       $s4, .Lmenu_800FF93C
/* 11DA18 800FF928 00000000 */   nop
/* 11DA1C 800FF92C 12930003 */  beq        $s4, $s3, .Lmenu_800FF93C
/* 11DA20 800FF930 02402021 */   addu      $a0, $s2, $zero
/* 11DA24 800FF934 0C03D19B */  jal        func_menu_800F466C
/* 11DA28 800FF938 02802821 */   addu      $a1, $s4, $zero
.Lmenu_800FF93C:
/* 11DA2C 800FF93C 8E250354 */  lw         $a1, 0x354($s1)
/* 11DA30 800FF940 0C03FDFF */  jal        func_menu_800FF7FC
/* 11DA34 800FF944 02202021 */   addu      $a0, $s1, $zero
/* 11DA38 800FF948 0C03FD33 */  jal        func_menu_800FF4CC
/* 11DA3C 800FF94C 02202021 */   addu      $a0, $s1, $zero
/* 11DA40 800FF950 8E221724 */  lw         $v0, 0x1724($s1)
/* 11DA44 800FF954 10400003 */  beqz       $v0, .Lmenu_800FF964
/* 11DA48 800FF958 262439B8 */   addiu     $a0, $s1, 0x39B8
/* 11DA4C 800FF95C 0C048D3F */  jal        func_menu_801234FC
/* 11DA50 800FF960 24050005 */   addiu     $a1, $zero, 0x5
.Lmenu_800FF964:
/* 11DA54 800FF964 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11DA58 800FF968 8FB40020 */  lw         $s4, 0x20($sp)
/* 11DA5C 800FF96C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11DA60 800FF970 8FB20018 */  lw         $s2, 0x18($sp)
/* 11DA64 800FF974 8FB10014 */  lw         $s1, 0x14($sp)
/* 11DA68 800FF978 8FB00010 */  lw         $s0, 0x10($sp)
/* 11DA6C 800FF97C 03E00008 */  jr         $ra
/* 11DA70 800FF980 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FF984
/* 11DA74 800FF984 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11DA78 800FF988 AFB20018 */  sw         $s2, 0x18($sp)
/* 11DA7C 800FF98C 00809021 */  addu       $s2, $a0, $zero
/* 11DA80 800FF990 AFB00010 */  sw         $s0, 0x10($sp)
/* 11DA84 800FF994 00A08021 */  addu       $s0, $a1, $zero
/* 11DA88 800FF998 AFB10014 */  sw         $s1, 0x14($sp)
/* 11DA8C 800FF99C 265114D4 */  addiu      $s1, $s2, 0x14D4
/* 11DA90 800FF9A0 02202021 */  addu       $a0, $s1, $zero
/* 11DA94 800FF9A4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11DA98 800FF9A8 0C03D188 */  jal        func_menu_800F4620
/* 11DA9C 800FF9AC AFB3001C */   sw        $s3, 0x1C($sp)
/* 11DAA0 800FF9B0 02002021 */  addu       $a0, $s0, $zero
/* 11DAA4 800FF9B4 0C03BB23 */  jal        func_menu_800EEC8C
/* 11DAA8 800FF9B8 00402821 */   addu      $a1, $v0, $zero
/* 11DAAC 800FF9BC 02202021 */  addu       $a0, $s1, $zero
/* 11DAB0 800FF9C0 0C03D188 */  jal        func_menu_800F4620
/* 11DAB4 800FF9C4 00409821 */   addu      $s3, $v0, $zero
/* 11DAB8 800FF9C8 8C420008 */  lw         $v0, 0x8($v0)
/* 11DABC 800FF9CC 24100001 */  addiu      $s0, $zero, 0x1
/* 11DAC0 800FF9D0 14500004 */  bne        $v0, $s0, .Lmenu_800FF9E4
/* 11DAC4 800FF9D4 24020003 */   addiu     $v0, $zero, 0x3
/* 11DAC8 800FF9D8 0C03FE1A */  jal        func_menu_800FF868
/* 11DACC 800FF9DC 02402021 */   addu      $a0, $s2, $zero
/* 11DAD0 800FF9E0 24020003 */  addiu      $v0, $zero, 0x3
.Lmenu_800FF9E4:
/* 11DAD4 800FF9E4 AE500364 */  sw         $s0, 0x364($s2)
/* 11DAD8 800FF9E8 A6420360 */  sh         $v0, 0x360($s2)
/* 11DADC 800FF9EC 8E25002C */  lw         $a1, 0x2C($s1)
/* 11DAE0 800FF9F0 0C03D0C6 */  jal        func_menu_800F4318
/* 11DAE4 800FF9F4 02202021 */   addu      $a0, $s1, $zero
/* 11DAE8 800FF9F8 02202021 */  addu       $a0, $s1, $zero
/* 11DAEC 800FF9FC 0C03D19B */  jal        func_menu_800F466C
/* 11DAF0 800FFA00 02602821 */   addu      $a1, $s3, $zero
/* 11DAF4 800FFA04 8E450354 */  lw         $a1, 0x354($s2)
/* 11DAF8 800FFA08 0C03FDFF */  jal        func_menu_800FF7FC
/* 11DAFC 800FFA0C 02402021 */   addu      $a0, $s2, $zero
/* 11DB00 800FFA10 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11DB04 800FFA14 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11DB08 800FFA18 8FB20018 */  lw         $s2, 0x18($sp)
/* 11DB0C 800FFA1C 8FB10014 */  lw         $s1, 0x14($sp)
/* 11DB10 800FFA20 8FB00010 */  lw         $s0, 0x10($sp)
/* 11DB14 800FFA24 03E00008 */  jr         $ra
/* 11DB18 800FFA28 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FFA2C
/* 11DB1C 800FFA2C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11DB20 800FFA30 AFB1001C */  sw         $s1, 0x1C($sp)
/* 11DB24 800FFA34 00808821 */  addu       $s1, $a0, $zero
/* 11DB28 800FFA38 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11DB2C 800FFA3C AFB00018 */  sw         $s0, 0x18($sp)
/* 11DB30 800FFA40 8E220354 */  lw         $v0, 0x354($s1)
/* 11DB34 800FFA44 8C500000 */  lw         $s0, 0x0($v0)
/* 11DB38 800FFA48 3C02800D */  lui        $v0, %hi(D_menu_800CD1C0)
/* 11DB3C 800FFA4C 2449D1C0 */  addiu      $t1, $v0, %lo(D_menu_800CD1C0)
/* 11DB40 800FFA50 8D260000 */  lw         $a2, 0x0($t1)
/* 11DB44 800FFA54 81270004 */  lb         $a3, 0x4($t1)
/* 11DB48 800FFA58 AFA60010 */  sw         $a2, 0x10($sp)
/* 11DB4C 800FFA5C A3A70014 */  sb         $a3, 0x14($sp)
/* 11DB50 800FFA60 8E240354 */  lw         $a0, 0x354($s1)
/* 11DB54 800FFA64 27A50010 */  addiu      $a1, $sp, 0x10
/* 11DB58 800FFA68 0C016427 */  jal        func_8005909C
/* 11DB5C 800FFA6C 24843DC0 */   addiu     $a0, $a0, 0x3DC0
/* 11DB60 800FFA70 24030001 */  addiu      $v1, $zero, 0x1
/* 11DB64 800FFA74 AE030028 */  sw         $v1, 0x28($s0)
/* 11DB68 800FFA78 A2000031 */  sb         $zero, 0x31($s0)
/* 11DB6C 800FFA7C 8846000C */  lwl        $a2, 0xC($v0)
/* 11DB70 800FFA80 9846000F */  lwr        $a2, 0xF($v0)
/* 11DB74 800FFA84 88470010 */  lwl        $a3, 0x10($v0)
/* 11DB78 800FFA88 98470013 */  lwr        $a3, 0x13($v0)
/* 11DB7C 800FFA8C AA06004C */  swl        $a2, 0x4C($s0)
/* 11DB80 800FFA90 BA06004F */  swr        $a2, 0x4F($s0)
/* 11DB84 800FFA94 AA070050 */  swl        $a3, 0x50($s0)
/* 11DB88 800FFA98 BA070053 */  swr        $a3, 0x53($s0)
/* 11DB8C 800FFA9C 88460004 */  lwl        $a2, 0x4($v0)
/* 11DB90 800FFAA0 98460007 */  lwr        $a2, 0x7($v0)
/* 11DB94 800FFAA4 88470008 */  lwl        $a3, 0x8($v0)
/* 11DB98 800FFAA8 9847000B */  lwr        $a3, 0xB($v0)
/* 11DB9C 800FFAAC AA060044 */  swl        $a2, 0x44($s0)
/* 11DBA0 800FFAB0 BA060047 */  swr        $a2, 0x47($s0)
/* 11DBA4 800FFAB4 AA070048 */  swl        $a3, 0x48($s0)
/* 11DBA8 800FFAB8 BA07004B */  swr        $a3, 0x4B($s0)
/* 11DBAC 800FFABC AE03003C */  sw         $v1, 0x3C($s0)
/* 11DBB0 800FFAC0 8C44002C */  lw         $a0, 0x2C($v0)
/* 11DBB4 800FFAC4 96020022 */  lhu        $v0, 0x22($s0)
/* 11DBB8 800FFAC8 AE030104 */  sw         $v1, 0x104($s0)
/* 11DBBC 800FFACC 34420002 */  ori        $v0, $v0, 0x2
/* 11DBC0 800FFAD0 AE040040 */  sw         $a0, 0x40($s0)
/* 11DBC4 800FFAD4 A6020022 */  sh         $v0, 0x22($s0)
/* 11DBC8 800FFAD8 8E220354 */  lw         $v0, 0x354($s1)
/* 11DBCC 800FFADC AC432CA0 */  sw         $v1, 0x2CA0($v0)
/* 11DBD0 800FFAE0 8E250354 */  lw         $a1, 0x354($s1)
/* 11DBD4 800FFAE4 262414D4 */  addiu      $a0, $s1, 0x14D4
/* 11DBD8 800FFAE8 8CA24614 */  lw         $v0, 0x4614($a1)
/* 11DBDC 800FFAEC 2403FFFD */  addiu      $v1, $zero, -0x3
/* 11DBE0 800FFAF0 00431024 */  and        $v0, $v0, $v1
/* 11DBE4 800FFAF4 0C03D188 */  jal        func_menu_800F4620
/* 11DBE8 800FFAF8 ACA24614 */   sw        $v0, 0x4614($a1)
/* 11DBEC 800FFAFC 8E230354 */  lw         $v1, 0x354($s1)
/* 11DBF0 800FFB00 AC622CA4 */  sw         $v0, 0x2CA4($v1)
/* 11DBF4 800FFB04 2402004A */  addiu      $v0, $zero, 0x4A
/* 11DBF8 800FFB08 A6220360 */  sh         $v0, 0x360($s1)
/* 11DBFC 800FFB0C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11DC00 800FFB10 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11DC04 800FFB14 8FB00018 */  lw         $s0, 0x18($sp)
/* 11DC08 800FFB18 03E00008 */  jr         $ra
/* 11DC0C 800FFB1C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FFB20
/* 11DC10 800FFB20 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11DC14 800FFB24 AFB20020 */  sw         $s2, 0x20($sp)
/* 11DC18 800FFB28 00809021 */  addu       $s2, $a0, $zero
/* 11DC1C 800FFB2C AFBF0024 */  sw         $ra, 0x24($sp)
/* 11DC20 800FFB30 AFB1001C */  sw         $s1, 0x1C($sp)
/* 11DC24 800FFB34 AFB00018 */  sw         $s0, 0x18($sp)
/* 11DC28 800FFB38 96430360 */  lhu        $v1, 0x360($s2)
/* 11DC2C 800FFB3C 28620012 */  slti       $v0, $v1, 0x12
/* 11DC30 800FFB40 10400010 */  beqz       $v0, .Lmenu_800FFB84
/* 11DC34 800FFB44 2862000F */   slti      $v0, $v1, 0xF
/* 11DC38 800FFB48 10400036 */  beqz       $v0, .Lmenu_800FFC24
/* 11DC3C 800FFB4C 24020003 */   addiu     $v0, $zero, 0x3
/* 11DC40 800FFB50 10620013 */  beq        $v1, $v0, .Lmenu_800FFBA0
/* 11DC44 800FFB54 28620004 */   slti      $v0, $v1, 0x4
/* 11DC48 800FFB58 10400005 */  beqz       $v0, .Lmenu_800FFB70
/* 11DC4C 800FFB5C 24020002 */   addiu     $v0, $zero, 0x2
/* 11DC50 800FFB60 10620015 */  beq        $v1, $v0, .Lmenu_800FFBB8
/* 11DC54 800FFB64 00000000 */   nop
/* 11DC58 800FFB68 0803FF26 */  j          .Lmenu_800FFC98
/* 11DC5C 800FFB6C 00000000 */   nop
.Lmenu_800FFB70:
/* 11DC60 800FFB70 2402000C */  addiu      $v0, $zero, 0xC
/* 11DC64 800FFB74 1062003C */  beq        $v1, $v0, .Lmenu_800FFC68
/* 11DC68 800FFB78 2405000C */   addiu     $a1, $zero, 0xC
/* 11DC6C 800FFB7C 0803FF26 */  j          .Lmenu_800FFC98
/* 11DC70 800FFB80 00000000 */   nop
.Lmenu_800FFB84:
/* 11DC74 800FFB84 2402004A */  addiu      $v0, $zero, 0x4A
/* 11DC78 800FFB88 10620034 */  beq        $v1, $v0, .Lmenu_800FFC5C
/* 11DC7C 800FFB8C 24020098 */   addiu     $v0, $zero, 0x98
/* 11DC80 800FFB90 10620015 */  beq        $v1, $v0, .Lmenu_800FFBE8
/* 11DC84 800FFB94 2405000C */   addiu     $a1, $zero, 0xC
/* 11DC88 800FFB98 0803FF26 */  j          .Lmenu_800FFC98
/* 11DC8C 800FFB9C 00000000 */   nop
.Lmenu_800FFBA0:
/* 11DC90 800FFBA0 8E440354 */  lw         $a0, 0x354($s2)
/* 11DC94 800FFBA4 24050031 */  addiu      $a1, $zero, 0x31
/* 11DC98 800FFBA8 0C0401A6 */  jal        func_menu_80100698
/* 11DC9C 800FFBAC 24840004 */   addiu     $a0, $a0, 0x4
/* 11DCA0 800FFBB0 0803FF2C */  j          .Lmenu_800FFCB0
/* 11DCA4 800FFBB4 00000000 */   nop
.Lmenu_800FFBB8:
/* 11DCA8 800FFBB8 8E420354 */  lw         $v0, 0x354($s2)
/* 11DCAC 800FFBBC AC402CA4 */  sw         $zero, 0x2CA4($v0)
/* 11DCB0 800FFBC0 8E420354 */  lw         $v0, 0x354($s2)
/* 11DCB4 800FFBC4 AC402CA8 */  sw         $zero, 0x2CA8($v0)
/* 11DCB8 800FFBC8 8E440354 */  lw         $a0, 0x354($s2)
/* 11DCBC 800FFBCC 0C0401B4 */  jal        func_menu_801006D0
/* 11DCC0 800FFBD0 24840004 */   addiu     $a0, $a0, 0x4
/* 11DCC4 800FFBD4 8E450354 */  lw         $a1, 0x354($s2)
/* 11DCC8 800FFBD8 0C040547 */  jal        func_menu_8010151C
/* 11DCCC 800FFBDC 02402021 */   addu      $a0, $s2, $zero
/* 11DCD0 800FFBE0 0803FF2A */  j          .Lmenu_800FFCA8
/* 11DCD4 800FFBE4 00000000 */   nop
.Lmenu_800FFBE8:
/* 11DCD8 800FFBE8 8E440354 */  lw         $a0, 0x354($s2)
/* 11DCDC 800FFBEC 0C0401A6 */  jal        func_menu_80100698
/* 11DCE0 800FFBF0 24840004 */   addiu     $a0, $a0, 0x4
/* 11DCE4 800FFBF4 24050004 */  addiu      $a1, $zero, 0x4
/* 11DCE8 800FFBF8 00003021 */  addu       $a2, $zero, $zero
/* 11DCEC 800FFBFC 8E440354 */  lw         $a0, 0x354($s2)
/* 11DCF0 800FFC00 00C03821 */  addu       $a3, $a2, $zero
/* 11DCF4 800FFC04 AFA00010 */  sw         $zero, 0x10($sp)
/* 11DCF8 800FFC08 0C03BBB0 */  jal        func_menu_800EEEC0
/* 11DCFC 800FFC0C 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 11DD00 800FFC10 8E430354 */  lw         $v1, 0x354($s2)
/* 11DD04 800FFC14 8C624614 */  lw         $v0, 0x4614($v1)
/* 11DD08 800FFC18 34420001 */  ori        $v0, $v0, 0x1
/* 11DD0C 800FFC1C 0803FF2A */  j          .Lmenu_800FFCA8
/* 11DD10 800FFC20 AC624614 */   sw        $v0, 0x4614($v1)
.Lmenu_800FFC24:
/* 11DD14 800FFC24 265114D4 */  addiu      $s1, $s2, 0x14D4
/* 11DD18 800FFC28 0C03D188 */  jal        func_menu_800F4620
/* 11DD1C 800FFC2C 02202021 */   addu      $a0, $s1, $zero
/* 11DD20 800FFC30 8E430354 */  lw         $v1, 0x354($s2)
/* 11DD24 800FFC34 AC622CA4 */  sw         $v0, 0x2CA4($v1)
/* 11DD28 800FFC38 8E500354 */  lw         $s0, 0x354($s2)
/* 11DD2C 800FFC3C 02202021 */  addu       $a0, $s1, $zero
/* 11DD30 800FFC40 0C03D188 */  jal        func_menu_800F4620
/* 11DD34 800FFC44 26102A5C */   addiu     $s0, $s0, 0x2A5C
/* 11DD38 800FFC48 02002021 */  addu       $a0, $s0, $zero
/* 11DD3C 800FFC4C 0C03BCFF */  jal        func_menu_800EF3FC
/* 11DD40 800FFC50 00402821 */   addu      $a1, $v0, $zero
/* 11DD44 800FFC54 0803FF26 */  j          .Lmenu_800FFC98
/* 11DD48 800FFC58 00000000 */   nop
.Lmenu_800FFC5C:
/* 11DD4C 800FFC5C 8E440354 */  lw         $a0, 0x354($s2)
/* 11DD50 800FFC60 0803FF28 */  j          .Lmenu_800FFCA0
/* 11DD54 800FFC64 24050036 */   addiu     $a1, $zero, 0x36
.Lmenu_800FFC68:
/* 11DD58 800FFC68 8E440354 */  lw         $a0, 0x354($s2)
/* 11DD5C 800FFC6C 0C0401A6 */  jal        func_menu_80100698
/* 11DD60 800FFC70 24840004 */   addiu     $a0, $a0, 0x4
/* 11DD64 800FFC74 0C03D188 */  jal        func_menu_800F4620
/* 11DD68 800FFC78 264414D4 */   addiu     $a0, $s2, 0x14D4
/* 11DD6C 800FFC7C 8E430354 */  lw         $v1, 0x354($s2)
/* 11DD70 800FFC80 AC622CA4 */  sw         $v0, 0x2CA4($v1)
/* 11DD74 800FFC84 8E430354 */  lw         $v1, 0x354($s2)
/* 11DD78 800FFC88 8C624614 */  lw         $v0, 0x4614($v1)
/* 11DD7C 800FFC8C 34420008 */  ori        $v0, $v0, 0x8
/* 11DD80 800FFC90 0803FF2A */  j          .Lmenu_800FFCA8
/* 11DD84 800FFC94 AC624614 */   sw        $v0, 0x4614($v1)
.Lmenu_800FFC98:
/* 11DD88 800FFC98 8E440354 */  lw         $a0, 0x354($s2)
/* 11DD8C 800FFC9C 96450360 */  lhu        $a1, 0x360($s2)
.Lmenu_800FFCA0:
/* 11DD90 800FFCA0 0C0401A6 */  jal        func_menu_80100698
/* 11DD94 800FFCA4 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800FFCA8:
/* 11DD98 800FFCA8 0C042398 */  jal        func_menu_80108E60
/* 11DD9C 800FFCAC 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800FFCB0:
/* 11DDA0 800FFCB0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11DDA4 800FFCB4 8FB20020 */  lw         $s2, 0x20($sp)
/* 11DDA8 800FFCB8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11DDAC 800FFCBC 8FB00018 */  lw         $s0, 0x18($sp)
/* 11DDB0 800FFCC0 03E00008 */  jr         $ra
/* 11DDB4 800FFCC4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FFCC8
/* 11DDB8 800FFCC8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11DDBC 800FFCCC AFB20020 */  sw         $s2, 0x20($sp)
/* 11DDC0 800FFCD0 00809021 */  addu       $s2, $a0, $zero
/* 11DDC4 800FFCD4 AFB30024 */  sw         $s3, 0x24($sp)
/* 11DDC8 800FFCD8 00A09821 */  addu       $s3, $a1, $zero
/* 11DDCC 800FFCDC 26424868 */  addiu      $v0, $s2, 0x4868
/* 11DDD0 800FFCE0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 11DDD4 800FFCE4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 11DDD8 800FFCE8 16620006 */  bne        $s3, $v0, .Lmenu_800FFD04
/* 11DDDC 800FFCEC AFB00018 */   sw        $s0, 0x18($sp)
/* 11DDE0 800FFCF0 8E425428 */  lw         $v0, 0x5428($s2)
/* 11DDE4 800FFCF4 5440004F */  bnel       $v0, $zero, .Lmenu_800FFE34
/* 11DDE8 800FFCF8 AE40542C */   sw        $zero, 0x542C($s2)
/* 11DDEC 800FFCFC 0803FF8C */  j          .Lmenu_800FFE30
/* 11DDF0 800FFD00 24020002 */   addiu     $v0, $zero, 0x2
.Lmenu_800FFD04:
/* 11DDF4 800FFD04 8E435428 */  lw         $v1, 0x5428($s2)
/* 11DDF8 800FFD08 10600005 */  beqz       $v1, .Lmenu_800FFD20
/* 11DDFC 800FFD0C 24020001 */   addiu     $v0, $zero, 0x1
/* 11DE00 800FFD10 1062003D */  beq        $v1, $v0, .Lmenu_800FFE08
/* 11DE04 800FFD14 26423F98 */   addiu     $v0, $s2, 0x3F98
/* 11DE08 800FFD18 0803FF8D */  j          .Lmenu_800FFE34
/* 11DE0C 800FFD1C 00000000 */   nop
.Lmenu_800FFD20:
/* 11DE10 800FFD20 264230E8 */  addiu      $v0, $s2, 0x30E8
/* 11DE14 800FFD24 16620003 */  bne        $s3, $v0, .Lmenu_800FFD34
/* 11DE18 800FFD28 264233D8 */   addiu     $v0, $s2, 0x33D8
/* 11DE1C 800FFD2C 0803FF8C */  j          .Lmenu_800FFE30
/* 11DE20 800FFD30 24020098 */   addiu     $v0, $zero, 0x98
.Lmenu_800FFD34:
/* 11DE24 800FFD34 16620004 */  bne        $s3, $v0, .Lmenu_800FFD48
/* 11DE28 800FFD38 264236C8 */   addiu     $v0, $s2, 0x36C8
/* 11DE2C 800FFD3C 24020001 */  addiu      $v0, $zero, 0x1
/* 11DE30 800FFD40 0803FF8D */  j          .Lmenu_800FFE34
/* 11DE34 800FFD44 AE42542C */   sw        $v0, 0x542C($s2)
.Lmenu_800FFD48:
/* 11DE38 800FFD48 16620003 */  bne        $s3, $v0, .Lmenu_800FFD58
/* 11DE3C 800FFD4C 264239B8 */   addiu     $v0, $s2, 0x39B8
/* 11DE40 800FFD50 0803FF8C */  j          .Lmenu_800FFE30
/* 11DE44 800FFD54 2402000C */   addiu     $v0, $zero, 0xC
.Lmenu_800FFD58:
/* 11DE48 800FFD58 16620018 */  bne        $s3, $v0, .Lmenu_800FFDBC
/* 11DE4C 800FFD5C 26423CA8 */   addiu     $v0, $s2, 0x3CA8
/* 11DE50 800FFD60 02402021 */  addu       $a0, $s2, $zero
/* 11DE54 800FFD64 26514B58 */  addiu      $s1, $s2, 0x4B58
/* 11DE58 800FFD68 02202821 */  addu       $a1, $s1, $zero
/* 11DE5C 800FFD6C 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11DE60 800FFD70 2407004F */  addiu      $a3, $zero, 0x4F
/* 11DE64 800FFD74 24020073 */  addiu      $v0, $zero, 0x73
/* 11DE68 800FFD78 0C040297 */  jal        func_menu_80100A5C
/* 11DE6C 800FFD7C AFA20010 */   sw        $v0, 0x10($sp)
/* 11DE70 800FFD80 02402021 */  addu       $a0, $s2, $zero
/* 11DE74 800FFD84 26504E48 */  addiu      $s0, $s2, 0x4E48
/* 11DE78 800FFD88 02002821 */  addu       $a1, $s0, $zero
/* 11DE7C 800FFD8C 240600A1 */  addiu      $a2, $zero, 0xA1
/* 11DE80 800FFD90 2407004E */  addiu      $a3, $zero, 0x4E
/* 11DE84 800FFD94 24020074 */  addiu      $v0, $zero, 0x74
/* 11DE88 800FFD98 0C040297 */  jal        func_menu_80100A5C
/* 11DE8C 800FFD9C AFA20010 */   sw        $v0, 0x10($sp)
/* 11DE90 800FFDA0 02402021 */  addu       $a0, $s2, $zero
/* 11DE94 800FFDA4 02202821 */  addu       $a1, $s1, $zero
/* 11DE98 800FFDA8 02003021 */  addu       $a2, $s0, $zero
/* 11DE9C 800FFDAC 0C046B48 */  jal        func_menu_8011AD20
/* 11DEA0 800FFDB0 24070076 */   addiu     $a3, $zero, 0x76
/* 11DEA4 800FFDB4 0803FF8D */  j          .Lmenu_800FFE34
/* 11DEA8 800FFDB8 00000000 */   nop
.Lmenu_800FFDBC:
/* 11DEAC 800FFDBC 16620005 */  bne        $s3, $v0, .Lmenu_800FFDD4
/* 11DEB0 800FFDC0 26424B58 */   addiu     $v0, $s2, 0x4B58
/* 11DEB4 800FFDC4 0C03FE8B */  jal        func_menu_800FFA2C
/* 11DEB8 800FFDC8 02402021 */   addu      $a0, $s2, $zero
/* 11DEBC 800FFDCC 0803FF8D */  j          .Lmenu_800FFE34
/* 11DEC0 800FFDD0 00000000 */   nop
.Lmenu_800FFDD4:
/* 11DEC4 800FFDD4 16620005 */  bne        $s3, $v0, .Lmenu_800FFDEC
/* 11DEC8 800FFDD8 26424E48 */   addiu     $v0, $s2, 0x4E48
/* 11DECC 800FFDDC 0C03FE1A */  jal        func_menu_800FF868
/* 11DED0 800FFDE0 02402021 */   addu      $a0, $s2, $zero
/* 11DED4 800FFDE4 0803FF7D */  j          .Lmenu_800FFDF4
/* 11DED8 800FFDE8 00000000 */   nop
.Lmenu_800FFDEC:
/* 11DEDC 800FFDEC 16620011 */  bne        $s3, $v0, .Lmenu_800FFE34
/* 11DEE0 800FFDF0 00000000 */   nop
.Lmenu_800FFDF4:
/* 11DEE4 800FFDF4 8E440284 */  lw         $a0, 0x284($s2)
/* 11DEE8 800FFDF8 0C045449 */  jal        func_menu_80115124
/* 11DEEC 800FFDFC 00000000 */   nop
/* 11DEF0 800FFE00 0803FF8D */  j          .Lmenu_800FFE34
/* 11DEF4 800FFE04 00000000 */   nop
.Lmenu_800FFE08:
/* 11DEF8 800FFE08 16620003 */  bne        $s3, $v0, .Lmenu_800FFE18
/* 11DEFC 800FFE0C 26424288 */   addiu     $v0, $s2, 0x4288
/* 11DF00 800FFE10 0803FF8C */  j          .Lmenu_800FFE30
/* 11DF04 800FFE14 24020011 */   addiu     $v0, $zero, 0x11
.Lmenu_800FFE18:
/* 11DF08 800FFE18 16620003 */  bne        $s3, $v0, .Lmenu_800FFE28
/* 11DF0C 800FFE1C 26424578 */   addiu     $v0, $s2, 0x4578
/* 11DF10 800FFE20 0803FF8C */  j          .Lmenu_800FFE30
/* 11DF14 800FFE24 2402000F */   addiu     $v0, $zero, 0xF
.Lmenu_800FFE28:
/* 11DF18 800FFE28 16620002 */  bne        $s3, $v0, .Lmenu_800FFE34
/* 11DF1C 800FFE2C 24020010 */   addiu     $v0, $zero, 0x10
.Lmenu_800FFE30:
/* 11DF20 800FFE30 A6420360 */  sh         $v0, 0x360($s2)
.Lmenu_800FFE34:
/* 11DF24 800FFE34 96430360 */  lhu        $v1, 0x360($s2)
/* 11DF28 800FFE38 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 11DF2C 800FFE3C 10620008 */  beq        $v1, $v0, .Lmenu_800FFE60
/* 11DF30 800FFE40 3C04FFFE */   lui       $a0, (0xFFFEFFFF >> 16)
/* 11DF34 800FFE44 24020001 */  addiu      $v0, $zero, 0x1
/* 11DF38 800FFE48 26431534 */  addiu      $v1, $s2, 0x1534
/* 11DF3C 800FFE4C AE420364 */  sw         $v0, 0x364($s2)
/* 11DF40 800FFE50 8C62005C */  lw         $v0, 0x5C($v1)
/* 11DF44 800FFE54 3484FFFF */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
/* 11DF48 800FFE58 00441024 */  and        $v0, $v0, $a0
/* 11DF4C 800FFE5C AC62005C */  sw         $v0, 0x5C($v1)
.Lmenu_800FFE60:
/* 11DF50 800FFE60 AE53035C */  sw         $s3, 0x35C($s2)
/* 11DF54 800FFE64 8FBF0028 */  lw         $ra, 0x28($sp)
/* 11DF58 800FFE68 8FB30024 */  lw         $s3, 0x24($sp)
/* 11DF5C 800FFE6C 8FB20020 */  lw         $s2, 0x20($sp)
/* 11DF60 800FFE70 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11DF64 800FFE74 8FB00018 */  lw         $s0, 0x18($sp)
/* 11DF68 800FFE78 03E00008 */  jr         $ra
/* 11DF6C 800FFE7C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800FFE80
/* 11DF70 800FFE80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11DF74 800FFE84 AFB00010 */  sw         $s0, 0x10($sp)
/* 11DF78 800FFE88 00808021 */  addu       $s0, $a0, $zero
/* 11DF7C 800FFE8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11DF80 800FFE90 8E035428 */  lw         $v1, 0x5428($s0)
/* 11DF84 800FFE94 10600005 */  beqz       $v1, .Lmenu_800FFEAC
/* 11DF88 800FFE98 24020001 */   addiu     $v0, $zero, 0x1
/* 11DF8C 800FFE9C 10620007 */  beq        $v1, $v0, .Lmenu_800FFEBC
/* 11DF90 800FFEA0 00000000 */   nop
/* 11DF94 800FFEA4 0803FFB1 */  j          .Lmenu_800FFEC4
/* 11DF98 800FFEA8 00000000 */   nop
.Lmenu_800FFEAC:
/* 11DF9C 800FFEAC 0C03FDB1 */  jal        func_menu_800FF6C4
/* 11DFA0 800FFEB0 02002021 */   addu      $a0, $s0, $zero
/* 11DFA4 800FFEB4 0803FFB1 */  j          .Lmenu_800FFEC4
/* 11DFA8 800FFEB8 00000000 */   nop
.Lmenu_800FFEBC:
/* 11DFAC 800FFEBC 0C03FDF0 */  jal        func_menu_800FF7C0
/* 11DFB0 800FFEC0 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800FFEC4:
/* 11DFB4 800FFEC4 8E02542C */  lw         $v0, 0x542C($s0)
/* 11DFB8 800FFEC8 00401821 */  addu       $v1, $v0, $zero
/* 11DFBC 800FFECC 10600006 */  beqz       $v1, .Lmenu_800FFEE8
/* 11DFC0 800FFED0 AE025428 */   sw        $v0, 0x5428($s0)
/* 11DFC4 800FFED4 24020001 */  addiu      $v0, $zero, 0x1
/* 11DFC8 800FFED8 10620007 */  beq        $v1, $v0, .Lmenu_800FFEF8
/* 11DFCC 800FFEDC 00000000 */   nop
/* 11DFD0 800FFEE0 0803FFC0 */  j          .Lmenu_800FFF00
/* 11DFD4 800FFEE4 00000000 */   nop
.Lmenu_800FFEE8:
/* 11DFD8 800FFEE8 0C03FD33 */  jal        func_menu_800FF4CC
/* 11DFDC 800FFEEC 02002021 */   addu      $a0, $s0, $zero
/* 11DFE0 800FFEF0 0803FFC0 */  j          .Lmenu_800FFF00
/* 11DFE4 800FFEF4 00000000 */   nop
.Lmenu_800FFEF8:
/* 11DFE8 800FFEF8 0C03FDCE */  jal        func_menu_800FF738
/* 11DFEC 800FFEFC 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800FFF00:
/* 11DFF0 800FFF00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11DFF4 800FFF04 8FB00010 */  lw         $s0, 0x10($sp)
/* 11DFF8 800FFF08 03E00008 */  jr         $ra
/* 11DFFC 800FFF0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FFF10
/* 11E000 800FFF10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11E004 800FFF14 AFB10014 */  sw         $s1, 0x14($sp)
/* 11E008 800FFF18 00808821 */  addu       $s1, $a0, $zero
/* 11E00C 800FFF1C AFBF0020 */  sw         $ra, 0x20($sp)
/* 11E010 800FFF20 AFB3001C */  sw         $s3, 0x1C($sp)
/* 11E014 800FFF24 AFB20018 */  sw         $s2, 0x18($sp)
/* 11E018 800FFF28 AFB00010 */  sw         $s0, 0x10($sp)
/* 11E01C 800FFF2C 8E23542C */  lw         $v1, 0x542C($s1)
/* 11E020 800FFF30 8E225428 */  lw         $v0, 0x5428($s1)
/* 11E024 800FFF34 10620007 */  beq        $v1, $v0, .Lmenu_800FFF54
/* 11E028 800FFF38 00A09821 */   addu      $s3, $a1, $zero
/* 11E02C 800FFF3C 8E22035C */  lw         $v0, 0x35C($s1)
/* 11E030 800FFF40 8C420050 */  lw         $v0, 0x50($v0)
/* 11E034 800FFF44 04400004 */  bltz       $v0, .Lmenu_800FFF58
/* 11E038 800FFF48 263014D4 */   addiu     $s0, $s1, 0x14D4
/* 11E03C 800FFF4C 0C03FFA0 */  jal        func_menu_800FFE80
/* 11E040 800FFF50 00000000 */   nop
.Lmenu_800FFF54:
/* 11E044 800FFF54 263014D4 */  addiu      $s0, $s1, 0x14D4
.Lmenu_800FFF58:
/* 11E048 800FFF58 0C03D188 */  jal        func_menu_800F4620
/* 11E04C 800FFF5C 02002021 */   addu      $a0, $s0, $zero
/* 11E050 800FFF60 10400028 */  beqz       $v0, .Lmenu_80100004
/* 11E054 800FFF64 02202021 */   addu      $a0, $s1, $zero
/* 11E058 800FFF68 0C03D188 */  jal        func_menu_800F4620
/* 11E05C 800FFF6C 02002021 */   addu      $a0, $s0, $zero
/* 11E060 800FFF70 8C430008 */  lw         $v1, 0x8($v0)
/* 11E064 800FFF74 24020001 */  addiu      $v0, $zero, 0x1
/* 11E068 800FFF78 1462001E */  bne        $v1, $v0, .Lmenu_800FFFF4
/* 11E06C 800FFF7C 262436C8 */   addiu     $a0, $s1, 0x36C8
/* 11E070 800FFF80 8E220354 */  lw         $v0, 0x354($s1)
/* 11E074 800FFF84 00009021 */  addu       $s2, $zero, $zero
/* 11E078 800FFF88 24500BF4 */  addiu      $s0, $v0, 0xBF4
/* 11E07C 800FFF8C 0C04977A */  jal        func_menu_80125DE8
/* 11E080 800FFF90 02002021 */   addu      $a0, $s0, $zero
/* 11E084 800FFF94 02002021 */  addu       $a0, $s0, $zero
/* 11E088 800FFF98 0C049783 */  jal        func_menu_80125E0C
/* 11E08C 800FFF9C 02402821 */   addu      $a1, $s2, $zero
/* 11E090 800FFFA0 54400010 */  bnel       $v0, $zero, .Lmenu_800FFFE4
/* 11E094 800FFFA4 24120001 */   addiu     $s2, $zero, 0x1
/* 11E098 800FFFA8 02002021 */  addu       $a0, $s0, $zero
/* 11E09C 800FFFAC 0C049783 */  jal        func_menu_80125E0C
/* 11E0A0 800FFFB0 24050001 */   addiu     $a1, $zero, 0x1
/* 11E0A4 800FFFB4 5440000B */  bnel       $v0, $zero, .Lmenu_800FFFE4
/* 11E0A8 800FFFB8 24120001 */   addiu     $s2, $zero, 0x1
/* 11E0AC 800FFFBC 02002021 */  addu       $a0, $s0, $zero
/* 11E0B0 800FFFC0 0C049783 */  jal        func_menu_80125E0C
/* 11E0B4 800FFFC4 24050002 */   addiu     $a1, $zero, 0x2
/* 11E0B8 800FFFC8 54400006 */  bnel       $v0, $zero, .Lmenu_800FFFE4
/* 11E0BC 800FFFCC 24120001 */   addiu     $s2, $zero, 0x1
/* 11E0C0 800FFFD0 02002021 */  addu       $a0, $s0, $zero
/* 11E0C4 800FFFD4 0C049783 */  jal        func_menu_80125E0C
/* 11E0C8 800FFFD8 24050003 */   addiu     $a1, $zero, 0x3
/* 11E0CC 800FFFDC 54400001 */  bnel       $v0, $zero, .Lmenu_800FFFE4
/* 11E0D0 800FFFE0 24120001 */   addiu     $s2, $zero, 0x1
.Lmenu_800FFFE4:
/* 11E0D4 800FFFE4 12400003 */  beqz       $s2, .Lmenu_800FFFF4
/* 11E0D8 800FFFE8 262436C8 */   addiu     $a0, $s1, 0x36C8
/* 11E0DC 800FFFEC 0803FFFE */  j          .Lmenu_800FFFF8
/* 11E0E0 800FFFF0 2405002B */   addiu     $a1, $zero, 0x2B
.Lmenu_800FFFF4:
/* 11E0E4 800FFFF4 2405002A */  addiu      $a1, $zero, 0x2A
.Lmenu_800FFFF8:
/* 11E0E8 800FFFF8 0C041070 */  jal        func_menu_801041C0
/* 11E0EC 800FFFFC 00000000 */   nop
/* 11E0F0 80100000 02202021 */  addu       $a0, $s1, $zero
.Lmenu_80100004:
/* 11E0F4 80100004 0C0426A5 */  jal        func_menu_80109A94
/* 11E0F8 80100008 02602821 */   addu      $a1, $s3, $zero
/* 11E0FC 8010000C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11E100 80100010 8FB3001C */  lw         $s3, 0x1C($sp)
/* 11E104 80100014 8FB20018 */  lw         $s2, 0x18($sp)
/* 11E108 80100018 8FB10014 */  lw         $s1, 0x14($sp)
/* 11E10C 8010001C 8FB00010 */  lw         $s0, 0x10($sp)
/* 11E110 80100020 03E00008 */  jr         $ra
/* 11E114 80100024 27BD0028 */   addiu     $sp, $sp, 0x28
