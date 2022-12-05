.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8010D090
/* 12B180 8010D090 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12B184 8010D094 AFB00010 */  sw         $s0, 0x10($sp)
/* 12B188 8010D098 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12B18C 8010D09C 0C03E578 */  jal        func_menu_800F95E0
/* 12B190 8010D0A0 00808021 */   addu      $s0, $a0, $zero
/* 12B194 8010D0A4 3C02800D */  lui        $v0, %hi(D_menu_800CEF40)
/* 12B198 8010D0A8 2442EF40 */  addiu      $v0, $v0, %lo(D_menu_800CEF40)
/* 12B19C 8010D0AC AE020000 */  sw         $v0, 0x0($s0)
/* 12B1A0 8010D0B0 02001021 */  addu       $v0, $s0, $zero
/* 12B1A4 8010D0B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12B1A8 8010D0B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B1AC 8010D0BC 03E00008 */  jr         $ra
/* 12B1B0 8010D0C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010D0C4
/* 12B1B4 8010D0C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12B1B8 8010D0C8 AFB00010 */  sw         $s0, 0x10($sp)
/* 12B1BC 8010D0CC 00808021 */  addu       $s0, $a0, $zero
/* 12B1C0 8010D0D0 AFB10014 */  sw         $s1, 0x14($sp)
/* 12B1C4 8010D0D4 00A08821 */  addu       $s1, $a1, $zero
/* 12B1C8 8010D0D8 3C02800D */  lui        $v0, %hi(D_menu_800CEF40)
/* 12B1CC 8010D0DC 2442EF40 */  addiu      $v0, $v0, %lo(D_menu_800CEF40)
/* 12B1D0 8010D0E0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12B1D4 8010D0E4 0C043481 */  jal        func_menu_8010D204
/* 12B1D8 8010D0E8 AE020000 */   sw        $v0, 0x0($s0)
/* 12B1DC 8010D0EC 02002021 */  addu       $a0, $s0, $zero
/* 12B1E0 8010D0F0 0C03E58C */  jal        func_menu_800F9630
/* 12B1E4 8010D0F4 02202821 */   addu      $a1, $s1, $zero
/* 12B1E8 8010D0F8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12B1EC 8010D0FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 12B1F0 8010D100 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B1F4 8010D104 03E00008 */  jr         $ra
/* 12B1F8 8010D108 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010D10C
/* 12B1FC 8010D10C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12B200 8010D110 AFB10014 */  sw         $s1, 0x14($sp)
/* 12B204 8010D114 00808821 */  addu       $s1, $a0, $zero
/* 12B208 8010D118 AFB20018 */  sw         $s2, 0x18($sp)
/* 12B20C 8010D11C 00A09021 */  addu       $s2, $a1, $zero
/* 12B210 8010D120 AFBF001C */  sw         $ra, 0x1C($sp)
/* 12B214 8010D124 AFB00010 */  sw         $s0, 0x10($sp)
/* 12B218 8010D128 8E220000 */  lw         $v0, 0x0($s1)
/* 12B21C 8010D12C 00C08021 */  addu       $s0, $a2, $zero
/* 12B220 8010D130 844400F0 */  lh         $a0, 0xF0($v0)
/* 12B224 8010D134 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 12B228 8010D138 0040F809 */  jalr       $v0
/* 12B22C 8010D13C 02242021 */   addu      $a0, $s1, $a0
/* 12B230 8010D140 02202021 */  addu       $a0, $s1, $zero
/* 12B234 8010D144 02402821 */  addu       $a1, $s2, $zero
/* 12B238 8010D148 96020028 */  lhu        $v0, 0x28($s0)
/* 12B23C 8010D14C 02003021 */  addu       $a2, $s0, $zero
/* 12B240 8010D150 A6220362 */  sh         $v0, 0x362($s1)
/* 12B244 8010D154 24020001 */  addiu      $v0, $zero, 0x1
/* 12B248 8010D158 0C03E5A4 */  jal        func_menu_800F9690
/* 12B24C 8010D15C A4C20028 */   sh        $v0, 0x28($a2)
/* 12B250 8010D160 14400003 */  bnez       $v0, .Lmenu_8010D170
/* 12B254 8010D164 2406FFFF */   addiu     $a2, $zero, -0x1
/* 12B258 8010D168 0804347B */  j          .Lmenu_8010D1EC
/* 12B25C 8010D16C 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8010D170:
/* 12B260 8010D170 96230362 */  lhu        $v1, 0x362($s1)
/* 12B264 8010D174 24020027 */  addiu      $v0, $zero, 0x27
/* 12B268 8010D178 10620013 */  beq        $v1, $v0, .Lmenu_8010D1C8
/* 12B26C 8010D17C 00003821 */   addu      $a3, $zero, $zero
/* 12B270 8010D180 28620028 */  slti       $v0, $v1, 0x28
/* 12B274 8010D184 10400005 */  beqz       $v0, .Lmenu_8010D19C
/* 12B278 8010D188 24020001 */   addiu     $v0, $zero, 0x1
/* 12B27C 8010D18C 1062000C */  beq        $v1, $v0, .Lmenu_8010D1C0
/* 12B280 8010D190 2402FFFF */   addiu     $v0, $zero, -0x1
/* 12B284 8010D194 08043475 */  j          .Lmenu_8010D1D4
/* 12B288 8010D198 00000000 */   nop
.Lmenu_8010D19C:
/* 12B28C 8010D19C 24020029 */  addiu      $v0, $zero, 0x29
/* 12B290 8010D1A0 10620005 */  beq        $v1, $v0, .Lmenu_8010D1B8
/* 12B294 8010D1A4 2402002B */   addiu     $v0, $zero, 0x2B
/* 12B298 8010D1A8 50620009 */  beql       $v1, $v0, .Lmenu_8010D1D0
/* 12B29C 8010D1AC 24060015 */   addiu     $a2, $zero, 0x15
/* 12B2A0 8010D1B0 08043475 */  j          .Lmenu_8010D1D4
/* 12B2A4 8010D1B4 2402FFFF */   addiu     $v0, $zero, -0x1
.Lmenu_8010D1B8:
/* 12B2A8 8010D1B8 08043474 */  j          .Lmenu_8010D1D0
/* 12B2AC 8010D1BC 24060014 */   addiu     $a2, $zero, 0x14
.Lmenu_8010D1C0:
/* 12B2B0 8010D1C0 08043474 */  j          .Lmenu_8010D1D0
/* 12B2B4 8010D1C4 24060012 */   addiu     $a2, $zero, 0x12
.Lmenu_8010D1C8:
/* 12B2B8 8010D1C8 24060011 */  addiu      $a2, $zero, 0x11
/* 12B2BC 8010D1CC 24070001 */  addiu      $a3, $zero, 0x1
.Lmenu_8010D1D0:
/* 12B2C0 8010D1D0 2402FFFF */  addiu      $v0, $zero, -0x1
.Lmenu_8010D1D4:
/* 12B2C4 8010D1D4 10C20003 */  beq        $a2, $v0, .Lmenu_8010D1E4
/* 12B2C8 8010D1D8 02202021 */   addu      $a0, $s1, $zero
/* 12B2CC 8010D1DC 0C04051A */  jal        func_menu_80101468
/* 12B2D0 8010D1E0 02402821 */   addu      $a1, $s2, $zero
.Lmenu_8010D1E4:
/* 12B2D4 8010D1E4 AE200634 */  sw         $zero, 0x634($s1)
/* 12B2D8 8010D1E8 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_8010D1EC:
/* 12B2DC 8010D1EC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 12B2E0 8010D1F0 8FB20018 */  lw         $s2, 0x18($sp)
/* 12B2E4 8010D1F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 12B2E8 8010D1F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B2EC 8010D1FC 03E00008 */  jr         $ra
/* 12B2F0 8010D200 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010D204
/* 12B2F4 8010D204 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12B2F8 8010D208 AFB00010 */  sw         $s0, 0x10($sp)
/* 12B2FC 8010D20C 00808021 */  addu       $s0, $a0, $zero
/* 12B300 8010D210 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12B304 8010D214 8E050354 */  lw         $a1, 0x354($s0)
/* 12B308 8010D218 0C040547 */  jal        func_menu_8010151C
/* 12B30C 8010D21C 00000000 */   nop
/* 12B310 8010D220 0C03E65F */  jal        func_menu_800F997C
/* 12B314 8010D224 02002021 */   addu      $a0, $s0, $zero
/* 12B318 8010D228 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12B31C 8010D22C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B320 8010D230 03E00008 */  jr         $ra
/* 12B324 8010D234 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010D238
/* 12B328 8010D238 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12B32C 8010D23C AFB10014 */  sw         $s1, 0x14($sp)
/* 12B330 8010D240 00808821 */  addu       $s1, $a0, $zero
/* 12B334 8010D244 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12B338 8010D248 AFB00010 */  sw         $s0, 0x10($sp)
/* 12B33C 8010D24C 96220362 */  lhu        $v0, 0x362($s1)
/* 12B340 8010D250 2443FFFF */  addiu      $v1, $v0, -0x1
/* 12B344 8010D254 2C62002B */  sltiu      $v0, $v1, 0x2B
/* 12B348 8010D258 10400036 */  beqz       $v0, Lmenu_8010D334
/* 12B34C 8010D25C 3C02800D */   lui       $v0, %hi(jtbl_menu_800CEDE0)
/* 12B350 8010D260 2442EDE0 */  addiu      $v0, $v0, %lo(jtbl_menu_800CEDE0)
/* 12B354 8010D264 00031880 */  sll        $v1, $v1, 2
/* 12B358 8010D268 00621821 */  addu       $v1, $v1, $v0
/* 12B35C 8010D26C 8C620000 */  lw         $v0, 0x0($v1)
/* 12B360 8010D270 00400008 */  jr         $v0
/* 12B364 8010D274 00000000 */   nop
glabel Lmenu_8010D278
/* 12B368 8010D278 3C02800D */  lui        $v0, %hi(D_menu_800CED80)
/* 12B36C 8010D27C 2445ED80 */  addiu      $a1, $v0, %lo(D_menu_800CED80)
/* 12B370 8010D280 14A00024 */  bnez       $a1, .Lmenu_8010D314
/* 12B374 8010D284 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 12B378 8010D288 080434CC */  j          .Lmenu_8010D330
/* 12B37C 8010D28C 3C028003 */   lui       $v0, %hi(D_8002FB34)
glabel Lmenu_8010D290
/* 12B380 8010D290 3C02800D */  lui        $v0, %hi(D_menu_800CED94)
/* 12B384 8010D294 2445ED94 */  addiu      $a1, $v0, %lo(D_menu_800CED94)
/* 12B388 8010D298 14A0001E */  bnez       $a1, .Lmenu_8010D314
/* 12B38C 8010D29C 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 12B390 8010D2A0 080434CC */  j          .Lmenu_8010D330
/* 12B394 8010D2A4 3C028003 */   lui       $v0, %hi(D_8002FB34)
glabel Lmenu_8010D2A8
/* 12B398 8010D2A8 3C02800D */  lui        $v0, %hi(D_menu_800CEDA8)
/* 12B39C 8010D2AC 2445EDA8 */  addiu      $a1, $v0, %lo(D_menu_800CEDA8)
/* 12B3A0 8010D2B0 14A00018 */  bnez       $a1, .Lmenu_8010D314
/* 12B3A4 8010D2B4 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 12B3A8 8010D2B8 080434CC */  j          .Lmenu_8010D330
/* 12B3AC 8010D2BC 3C028003 */   lui       $v0, %hi(D_8002FB34)
glabel Lmenu_8010D2C0
/* 12B3B0 8010D2C0 3C02800D */  lui        $v0, %hi(D_menu_800CEDBC)
/* 12B3B4 8010D2C4 2445EDBC */  addiu      $a1, $v0, %lo(D_menu_800CEDBC)
/* 12B3B8 8010D2C8 14A00012 */  bnez       $a1, .Lmenu_8010D314
/* 12B3BC 8010D2CC 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 12B3C0 8010D2D0 080434CC */  j          .Lmenu_8010D330
/* 12B3C4 8010D2D4 3C028003 */   lui       $v0, %hi(D_8002FB34)
glabel Lmenu_8010D2D8
/* 12B3C8 8010D2D8 8E23064C */  lw         $v1, 0x64C($s1)
/* 12B3CC 8010D2DC 8C62012C */  lw         $v0, 0x12C($v1)
/* 12B3D0 8010D2E0 84440028 */  lh         $a0, 0x28($v0)
/* 12B3D4 8010D2E4 8C42002C */  lw         $v0, 0x2C($v0)
/* 12B3D8 8010D2E8 0040F809 */  jalr       $v0
/* 12B3DC 8010D2EC 00642021 */   addu      $a0, $v1, $a0
/* 12B3E0 8010D2F0 8C430014 */  lw         $v1, 0x14($v0)
/* 12B3E4 8010D2F4 84640020 */  lh         $a0, 0x20($v1)
/* 12B3E8 8010D2F8 8C630024 */  lw         $v1, 0x24($v1)
/* 12B3EC 8010D2FC 0060F809 */  jalr       $v1
/* 12B3F0 8010D300 00442021 */   addu      $a0, $v0, $a0
/* 12B3F4 8010D304 3C02800D */  lui        $v0, %hi(D_menu_800CEDCC)
/* 12B3F8 8010D308 2445EDCC */  addiu      $a1, $v0, %lo(D_menu_800CEDCC)
/* 12B3FC 8010D30C 10A00007 */  beqz       $a1, .Lmenu_8010D32C
/* 12B400 8010D310 3C108003 */   lui       $s0, %hi(D_8002FB34)
.Lmenu_8010D314:
/* 12B404 8010D314 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 12B408 8010D318 02002021 */  addu       $a0, $s0, $zero
/* 12B40C 8010D31C 0C000708 */  jal        func_80001C20
/* 12B410 8010D320 24060100 */   addiu     $a2, $zero, 0x100
/* 12B414 8010D324 080434CD */  j          Lmenu_8010D334
/* 12B418 8010D328 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_8010D32C:
/* 12B41C 8010D32C 3C028003 */  lui        $v0, %hi(D_8002FB34)
.Lmenu_8010D330:
/* 12B420 8010D330 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
glabel Lmenu_8010D334
/* 12B424 8010D334 02202021 */  addu       $a0, $s1, $zero
/* 12B428 8010D338 94860362 */  lhu        $a2, 0x362($a0)
/* 12B42C 8010D33C 0C046ADA */  jal        func_menu_8011AB68
/* 12B430 8010D340 24850368 */   addiu     $a1, $a0, 0x368
/* 12B434 8010D344 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12B438 8010D348 8FB10014 */  lw         $s1, 0x14($sp)
/* 12B43C 8010D34C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B440 8010D350 03E00008 */  jr         $ra
/* 12B444 8010D354 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010D358
/* 12B448 8010D358 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12B44C 8010D35C AFB00010 */  sw         $s0, 0x10($sp)
/* 12B450 8010D360 00808021 */  addu       $s0, $a0, $zero
/* 12B454 8010D364 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12B458 8010D368 8E03064C */  lw         $v1, 0x64C($s0)
/* 12B45C 8010D36C 10600006 */  beqz       $v1, .Lmenu_8010D388
/* 12B460 8010D370 00000000 */   nop
/* 12B464 8010D374 8C62012C */  lw         $v0, 0x12C($v1)
/* 12B468 8010D378 844401E8 */  lh         $a0, 0x1E8($v0)
/* 12B46C 8010D37C 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 12B470 8010D380 0040F809 */  jalr       $v0
/* 12B474 8010D384 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8010D388:
/* 12B478 8010D388 8E040354 */  lw         $a0, 0x354($s0)
/* 12B47C 8010D38C 0C0401B4 */  jal        func_menu_801006D0
/* 12B480 8010D390 24840004 */   addiu     $a0, $a0, 0x4
/* 12B484 8010D394 8E0300C4 */  lw         $v1, 0xC4($s0)
/* 12B488 8010D398 24020001 */  addiu      $v0, $zero, 0x1
/* 12B48C 8010D39C A0620041 */  sb         $v0, 0x41($v1)
/* 12B490 8010D3A0 96020362 */  lhu        $v0, 0x362($s0)
/* 12B494 8010D3A4 2443FFFF */  addiu      $v1, $v0, -0x1
/* 12B498 8010D3A8 2C62002B */  sltiu      $v0, $v1, 0x2B
/* 12B49C 8010D3AC 10400034 */  beqz       $v0, Lmenu_8010D480
/* 12B4A0 8010D3B0 3C02800D */   lui       $v0, %hi(jtbl_menu_800CEE90)
/* 12B4A4 8010D3B4 2442EE90 */  addiu      $v0, $v0, %lo(jtbl_menu_800CEE90)
/* 12B4A8 8010D3B8 00031880 */  sll        $v1, $v1, 2
/* 12B4AC 8010D3BC 00621821 */  addu       $v1, $v1, $v0
/* 12B4B0 8010D3C0 8C620000 */  lw         $v0, 0x0($v1)
/* 12B4B4 8010D3C4 00400008 */  jr         $v0
/* 12B4B8 8010D3C8 00000000 */   nop
glabel Lmenu_8010D3CC
/* 12B4BC 8010D3CC 8E040354 */  lw         $a0, 0x354($s0)
/* 12B4C0 8010D3D0 24050029 */  addiu      $a1, $zero, 0x29
/* 12B4C4 8010D3D4 0804351E */  j          .Lmenu_8010D478
/* 12B4C8 8010D3D8 24840004 */   addiu     $a0, $a0, 0x4
glabel Lmenu_8010D3DC
/* 12B4CC 8010D3DC 8E040354 */  lw         $a0, 0x354($s0)
/* 12B4D0 8010D3E0 24050001 */  addiu      $a1, $zero, 0x1
/* 12B4D4 8010D3E4 0804351E */  j          .Lmenu_8010D478
/* 12B4D8 8010D3E8 24840004 */   addiu     $a0, $a0, 0x4
glabel Lmenu_8010D3EC
/* 12B4DC 8010D3EC 8E040354 */  lw         $a0, 0x354($s0)
/* 12B4E0 8010D3F0 24050026 */  addiu      $a1, $zero, 0x26
/* 12B4E4 8010D3F4 0804351E */  j          .Lmenu_8010D478
/* 12B4E8 8010D3F8 24840004 */   addiu     $a0, $a0, 0x4
glabel Lmenu_8010D3FC
/* 12B4EC 8010D3FC 8E040354 */  lw         $a0, 0x354($s0)
/* 12B4F0 8010D400 24050002 */  addiu      $a1, $zero, 0x2
/* 12B4F4 8010D404 0C0401A6 */  jal        func_menu_80100698
/* 12B4F8 8010D408 24840004 */   addiu     $a0, $a0, 0x4
/* 12B4FC 8010D40C 8E040354 */  lw         $a0, 0x354($s0)
/* 12B500 8010D410 2405002D */  addiu      $a1, $zero, 0x2D
/* 12B504 8010D414 0C0401A6 */  jal        func_menu_80100698
/* 12B508 8010D418 24840004 */   addiu     $a0, $a0, 0x4
/* 12B50C 8010D41C 8E040354 */  lw         $a0, 0x354($s0)
/* 12B510 8010D420 8C832628 */  lw         $v1, 0x2628($a0)
/* 12B514 8010D424 2402FFFF */  addiu      $v0, $zero, -0x1
/* 12B518 8010D428 14620015 */  bne        $v1, $v0, Lmenu_8010D480
/* 12B51C 8010D42C 24840004 */   addiu     $a0, $a0, 0x4
/* 12B520 8010D430 0804351E */  j          .Lmenu_8010D478
/* 12B524 8010D434 2405003B */   addiu     $a1, $zero, 0x3B
glabel Lmenu_8010D438
/* 12B528 8010D438 8E03064C */  lw         $v1, 0x64C($s0)
/* 12B52C 8010D43C 8C62012C */  lw         $v0, 0x12C($v1)
/* 12B530 8010D440 84440028 */  lh         $a0, 0x28($v0)
/* 12B534 8010D444 8C42002C */  lw         $v0, 0x2C($v0)
/* 12B538 8010D448 0040F809 */  jalr       $v0
/* 12B53C 8010D44C 00642021 */   addu      $a0, $v1, $a0
/* 12B540 8010D450 8C430014 */  lw         $v1, 0x14($v0)
/* 12B544 8010D454 84640018 */  lh         $a0, 0x18($v1)
/* 12B548 8010D458 8C63001C */  lw         $v1, 0x1C($v1)
/* 12B54C 8010D45C 0060F809 */  jalr       $v1
/* 12B550 8010D460 00442021 */   addu      $a0, $v0, $a0
/* 12B554 8010D464 8E020354 */  lw         $v0, 0x354($s0)
/* 12B558 8010D468 24440004 */  addiu      $a0, $v0, 0x4
/* 12B55C 8010D46C 8C820008 */  lw         $v0, 0x8($a0)
/* 12B560 8010D470 14400003 */  bnez       $v0, Lmenu_8010D480
/* 12B564 8010D474 24050002 */   addiu     $a1, $zero, 0x2
.Lmenu_8010D478:
/* 12B568 8010D478 0C0401A6 */  jal        func_menu_80100698
/* 12B56C 8010D47C 00000000 */   nop
glabel Lmenu_8010D480
/* 12B570 8010D480 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12B574 8010D484 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B578 8010D488 03E00008 */  jr         $ra
/* 12B57C 8010D48C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010D490
/* 12B580 8010D490 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12B584 8010D494 AFBF0010 */  sw         $ra, 0x10($sp)
/* 12B588 8010D498 94830362 */  lhu        $v1, 0x362($a0)
/* 12B58C 8010D49C 24020029 */  addiu      $v0, $zero, 0x29
/* 12B590 8010D4A0 10620002 */  beq        $v1, $v0, .Lmenu_8010D4AC
/* 12B594 8010D4A4 24020001 */   addiu     $v0, $zero, 0x1
/* 12B598 8010D4A8 AC820634 */  sw         $v0, 0x634($a0)
.Lmenu_8010D4AC:
/* 12B59C 8010D4AC 0C03E681 */  jal        func_menu_800F9A04
/* 12B5A0 8010D4B0 00000000 */   nop
/* 12B5A4 8010D4B4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 12B5A8 8010D4B8 03E00008 */  jr         $ra
/* 12B5AC 8010D4BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010D4C0
/* 12B5B0 8010D4C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12B5B4 8010D4C4 AFB20018 */  sw         $s2, 0x18($sp)
/* 12B5B8 8010D4C8 00809021 */  addu       $s2, $a0, $zero
/* 12B5BC 8010D4CC AFBF0020 */  sw         $ra, 0x20($sp)
/* 12B5C0 8010D4D0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12B5C4 8010D4D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 12B5C8 8010D4D8 0C03E578 */  jal        func_menu_800F95E0
/* 12B5CC 8010D4DC AFB00010 */   sw        $s0, 0x10($sp)
/* 12B5D0 8010D4E0 26440660 */  addiu      $a0, $s2, 0x660
/* 12B5D4 8010D4E4 3C02800D */  lui        $v0, %hi(D_menu_800CF0A8)
/* 12B5D8 8010D4E8 2442F0A8 */  addiu      $v0, $v0, %lo(D_menu_800CF0A8)
/* 12B5DC 8010D4EC 0C01955C */  jal        func_80065570
/* 12B5E0 8010D4F0 AE420000 */   sw        $v0, 0x0($s2)
/* 12B5E4 8010D4F4 0C0479E0 */  jal        func_menu_8011E780
/* 12B5E8 8010D4F8 26440758 */   addiu     $a0, $s2, 0x758
/* 12B5EC 8010D4FC 26500B54 */  addiu      $s0, $s2, 0xB54
/* 12B5F0 8010D500 0C04729C */  jal        func_menu_8011CA70
/* 12B5F4 8010D504 02002021 */   addu      $a0, $s0, $zero
/* 12B5F8 8010D508 26440BE8 */  addiu      $a0, $s2, 0xBE8
/* 12B5FC 8010D50C 3C02800D */  lui        $v0, %hi(D_menu_800D0740)
/* 12B600 8010D510 24420740 */  addiu      $v0, $v0, %lo(D_menu_800D0740)
/* 12B604 8010D514 0C044D38 */  jal        func_menu_801134E0
/* 12B608 8010D518 AE020054 */   sw        $v0, 0x54($s0)
/* 12B60C 8010D51C 265115DC */  addiu      $s1, $s2, 0x15DC
/* 12B610 8010D520 24100006 */  addiu      $s0, $zero, 0x6
/* 12B614 8010D524 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_8010D528:
/* 12B618 8010D528 0C047BA4 */  jal        func_menu_8011EE90
/* 12B61C 8010D52C 02202021 */   addu      $a0, $s1, $zero
/* 12B620 8010D530 2610FFFF */  addiu      $s0, $s0, -0x1
/* 12B624 8010D534 1613FFFC */  bne        $s0, $s3, .Lmenu_8010D528
/* 12B628 8010D538 2631005C */   addiu     $s1, $s1, 0x5C
/* 12B62C 8010D53C 0C0495B8 */  jal        func_menu_801256E0
/* 12B630 8010D540 26441860 */   addiu     $a0, $s2, 0x1860
/* 12B634 8010D544 0C040207 */  jal        func_menu_8010081C
/* 12B638 8010D548 02402021 */   addu      $a0, $s2, $zero
/* 12B63C 8010D54C 02401021 */  addu       $v0, $s2, $zero
/* 12B640 8010D550 AC401904 */  sw         $zero, 0x1904($v0)
/* 12B644 8010D554 AC400754 */  sw         $zero, 0x754($v0)
/* 12B648 8010D558 A0400658 */  sb         $zero, 0x658($v0)
/* 12B64C 8010D55C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12B650 8010D560 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12B654 8010D564 8FB20018 */  lw         $s2, 0x18($sp)
/* 12B658 8010D568 8FB10014 */  lw         $s1, 0x14($sp)
/* 12B65C 8010D56C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B660 8010D570 03E00008 */  jr         $ra
/* 12B664 8010D574 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010D578
/* 12B668 8010D578 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12B66C 8010D57C AFB10014 */  sw         $s1, 0x14($sp)
/* 12B670 8010D580 00808821 */  addu       $s1, $a0, $zero
/* 12B674 8010D584 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12B678 8010D588 00A09821 */  addu       $s3, $a1, $zero
/* 12B67C 8010D58C 3C02800D */  lui        $v0, %hi(D_menu_800CF0A8)
/* 12B680 8010D590 2442F0A8 */  addiu      $v0, $v0, %lo(D_menu_800CF0A8)
/* 12B684 8010D594 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12B688 8010D598 AFB20018 */  sw         $s2, 0x18($sp)
/* 12B68C 8010D59C AFB00010 */  sw         $s0, 0x10($sp)
/* 12B690 8010D5A0 0C04358F */  jal        func_menu_8010D63C
/* 12B694 8010D5A4 AE220000 */   sw        $v0, 0x0($s1)
/* 12B698 8010D5A8 26301860 */  addiu      $s0, $s1, 0x1860
/* 12B69C 8010D5AC 02002021 */  addu       $a0, $s0, $zero
/* 12B6A0 8010D5B0 0C0495C7 */  jal        func_menu_8012571C
/* 12B6A4 8010D5B4 24050002 */   addiu     $a1, $zero, 0x2
/* 12B6A8 8010D5B8 262215DC */  addiu      $v0, $s1, 0x15DC
/* 12B6AC 8010D5BC 1040000D */  beqz       $v0, .Lmenu_8010D5F4
/* 12B6B0 8010D5C0 26240BE8 */   addiu     $a0, $s1, 0xBE8
/* 12B6B4 8010D5C4 1050000B */  beq        $v0, $s0, .Lmenu_8010D5F4
/* 12B6B8 8010D5C8 00409021 */   addu      $s2, $v0, $zero
/* 12B6BC 8010D5CC 2610FFA4 */  addiu      $s0, $s0, -0x5C
.Lmenu_8010D5D0:
/* 12B6C0 8010D5D0 8E020054 */  lw         $v0, 0x54($s0)
/* 12B6C4 8010D5D4 24050002 */  addiu      $a1, $zero, 0x2
/* 12B6C8 8010D5D8 84440010 */  lh         $a0, 0x10($v0)
/* 12B6CC 8010D5DC 8C420014 */  lw         $v0, 0x14($v0)
/* 12B6D0 8010D5E0 0040F809 */  jalr       $v0
/* 12B6D4 8010D5E4 02042021 */   addu      $a0, $s0, $a0
/* 12B6D8 8010D5E8 1650FFF9 */  bne        $s2, $s0, .Lmenu_8010D5D0
/* 12B6DC 8010D5EC 2610FFA4 */   addiu     $s0, $s0, -0x5C
/* 12B6E0 8010D5F0 26240BE8 */  addiu      $a0, $s1, 0xBE8
.Lmenu_8010D5F4:
/* 12B6E4 8010D5F4 0C044D49 */  jal        func_menu_80113524
/* 12B6E8 8010D5F8 24050002 */   addiu     $a1, $zero, 0x2
/* 12B6EC 8010D5FC 26240B54 */  addiu      $a0, $s1, 0xB54
/* 12B6F0 8010D600 0C0472AB */  jal        func_menu_8011CAAC
/* 12B6F4 8010D604 24050002 */   addiu     $a1, $zero, 0x2
/* 12B6F8 8010D608 26240758 */  addiu      $a0, $s1, 0x758
/* 12B6FC 8010D60C 0C0479FF */  jal        func_menu_8011E7FC
/* 12B700 8010D610 24050002 */   addiu     $a1, $zero, 0x2
/* 12B704 8010D614 02202021 */  addu       $a0, $s1, $zero
/* 12B708 8010D618 0C03E58C */  jal        func_menu_800F9630
/* 12B70C 8010D61C 02602821 */   addu      $a1, $s3, $zero
/* 12B710 8010D620 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12B714 8010D624 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12B718 8010D628 8FB20018 */  lw         $s2, 0x18($sp)
/* 12B71C 8010D62C 8FB10014 */  lw         $s1, 0x14($sp)
/* 12B720 8010D630 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B724 8010D634 03E00008 */  jr         $ra
/* 12B728 8010D638 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010D63C
/* 12B72C 8010D63C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12B730 8010D640 AFB00010 */  sw         $s0, 0x10($sp)
/* 12B734 8010D644 00808021 */  addu       $s0, $a0, $zero
/* 12B738 8010D648 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12B73C 8010D64C AFB10014 */  sw         $s1, 0x14($sp)
/* 12B740 8010D650 8E020004 */  lw         $v0, 0x4($s0)
/* 12B744 8010D654 8E110354 */  lw         $s1, 0x354($s0)
/* 12B748 8010D658 10400018 */  beqz       $v0, .Lmenu_8010D6BC
/* 12B74C 8010D65C 24020001 */   addiu     $v0, $zero, 0x1
/* 12B750 8010D660 0C01958C */  jal        func_80065630
/* 12B754 8010D664 26040660 */   addiu     $a0, $s0, 0x660
/* 12B758 8010D668 8E050754 */  lw         $a1, 0x754($s0)
/* 12B75C 8010D66C 10A00009 */  beqz       $a1, .Lmenu_8010D694
/* 12B760 8010D670 00000000 */   nop
/* 12B764 8010D674 8E0200B4 */  lw         $v0, 0xB4($s0)
/* 12B768 8010D678 8C430000 */  lw         $v1, 0x0($v0)
/* 12B76C 8010D67C 84640098 */  lh         $a0, 0x98($v1)
/* 12B770 8010D680 00442021 */  addu       $a0, $v0, $a0
/* 12B774 8010D684 8C62009C */  lw         $v0, 0x9C($v1)
/* 12B778 8010D688 0040F809 */  jalr       $v0
/* 12B77C 8010D68C 00000000 */   nop
/* 12B780 8010D690 AE000754 */  sw         $zero, 0x754($s0)
.Lmenu_8010D694:
/* 12B784 8010D694 0C0404CB */  jal        func_menu_8010132C
/* 12B788 8010D698 02002021 */   addu      $a0, $s0, $zero
/* 12B78C 8010D69C 02002021 */  addu       $a0, $s0, $zero
/* 12B790 8010D6A0 A0800658 */  sb         $zero, 0x658($a0)
/* 12B794 8010D6A4 0C03E65F */  jal        func_menu_800F997C
/* 12B798 8010D6A8 AC801904 */   sw        $zero, 0x1904($a0)
/* 12B79C 8010D6AC 26242CF8 */  addiu      $a0, $s1, 0x2CF8
/* 12B7A0 8010D6B0 0C036201 */  jal        func_menu_800D8804
/* 12B7A4 8010D6B4 00408021 */   addu      $s0, $v0, $zero
/* 12B7A8 8010D6B8 02001021 */  addu       $v0, $s0, $zero
.Lmenu_8010D6BC:
/* 12B7AC 8010D6BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12B7B0 8010D6C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 12B7B4 8010D6C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B7B8 8010D6C8 03E00008 */  jr         $ra
/* 12B7BC 8010D6CC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010D6D0
/* 12B7C0 8010D6D0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 12B7C4 8010D6D4 AFB30034 */  sw         $s3, 0x34($sp)
/* 12B7C8 8010D6D8 00809821 */  addu       $s3, $a0, $zero
/* 12B7CC 8010D6DC AFB40038 */  sw         $s4, 0x38($sp)
/* 12B7D0 8010D6E0 AFBF003C */  sw         $ra, 0x3C($sp)
/* 12B7D4 8010D6E4 AFB20030 */  sw         $s2, 0x30($sp)
/* 12B7D8 8010D6E8 AFB1002C */  sw         $s1, 0x2C($sp)
/* 12B7DC 8010D6EC AFB00028 */  sw         $s0, 0x28($sp)
/* 12B7E0 8010D6F0 96630362 */  lhu        $v1, 0x362($s3)
/* 12B7E4 8010D6F4 2402001D */  addiu      $v0, $zero, 0x1D
/* 12B7E8 8010D6F8 14620002 */  bne        $v1, $v0, .Lmenu_8010D704
/* 12B7EC 8010D6FC 24140007 */   addiu     $s4, $zero, 0x7
/* 12B7F0 8010D700 24140003 */  addiu      $s4, $zero, 0x3
.Lmenu_8010D704:
/* 12B7F4 8010D704 02602021 */  addu       $a0, $s3, $zero
/* 12B7F8 8010D708 26650758 */  addiu      $a1, $s3, 0x758
/* 12B7FC 8010D70C 24060050 */  addiu      $a2, $zero, 0x50
/* 12B800 8010D710 0C0467F0 */  jal        func_menu_80119FC0
/* 12B804 8010D714 00C03821 */   addu      $a3, $a2, $zero
/* 12B808 8010D718 3C02800D */  lui        $v0, %hi(D_menu_800CF080)
/* 12B80C 8010D71C 2445F080 */  addiu      $a1, $v0, %lo(D_menu_800CF080)
/* 12B810 8010D720 10A00007 */  beqz       $a1, .Lmenu_8010D740
/* 12B814 8010D724 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 12B818 8010D728 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 12B81C 8010D72C 02002021 */  addu       $a0, $s0, $zero
/* 12B820 8010D730 0C000708 */  jal        func_80001C20
/* 12B824 8010D734 24060100 */   addiu     $a2, $zero, 0x100
/* 12B828 8010D738 080435D2 */  j          .Lmenu_8010D748
/* 12B82C 8010D73C A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_8010D740:
/* 12B830 8010D740 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 12B834 8010D744 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_8010D748:
/* 12B838 8010D748 02602021 */  addu       $a0, $s3, $zero
/* 12B83C 8010D74C 26700368 */  addiu      $s0, $s3, 0x368
/* 12B840 8010D750 02002821 */  addu       $a1, $s0, $zero
/* 12B844 8010D754 0C046ADA */  jal        func_menu_8011AB68
/* 12B848 8010D758 24060006 */   addiu     $a2, $zero, 0x6
/* 12B84C 8010D75C 8E0302B0 */  lw         $v1, 0x2B0($s0)
/* 12B850 8010D760 8C620044 */  lw         $v0, 0x44($v1)
/* 12B854 8010D764 34420002 */  ori        $v0, $v0, 0x2
/* 12B858 8010D768 AC620044 */  sw         $v0, 0x44($v1)
/* 12B85C 8010D76C 3C02800D */  lui        $v0, %hi(D_menu_800CF094)
/* 12B860 8010D770 2445F094 */  addiu      $a1, $v0, %lo(D_menu_800CF094)
/* 12B864 8010D774 10A00007 */  beqz       $a1, .Lmenu_8010D794
/* 12B868 8010D778 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 12B86C 8010D77C 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 12B870 8010D780 02002021 */  addu       $a0, $s0, $zero
/* 12B874 8010D784 0C000708 */  jal        func_80001C20
/* 12B878 8010D788 24060100 */   addiu     $a2, $zero, 0x100
/* 12B87C 8010D78C 080435E7 */  j          .Lmenu_8010D79C
/* 12B880 8010D790 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_8010D794:
/* 12B884 8010D794 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 12B888 8010D798 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_8010D79C:
/* 12B88C 8010D79C 02602021 */  addu       $a0, $s3, $zero
/* 12B890 8010D7A0 26701860 */  addiu      $s0, $s3, 0x1860
/* 12B894 8010D7A4 02002821 */  addu       $a1, $s0, $zero
/* 12B898 8010D7A8 26630398 */  addiu      $v1, $s3, 0x398
/* 12B89C 8010D7AC AFA0001C */  sw         $zero, 0x1C($sp)
/* 12B8A0 8010D7B0 AFA00018 */  sw         $zero, 0x18($sp)
/* 12B8A4 8010D7B4 8C620008 */  lw         $v0, 0x8($v1)
/* 12B8A8 8010D7B8 8E670398 */  lw         $a3, 0x398($s3)
/* 12B8AC 8010D7BC 24060066 */  addiu      $a2, $zero, 0x66
/* 12B8B0 8010D7C0 00471023 */  subu       $v0, $v0, $a3
/* 12B8B4 8010D7C4 AFA20020 */  sw         $v0, 0x20($sp)
/* 12B8B8 8010D7C8 8C62000C */  lw         $v0, 0xC($v1)
/* 12B8BC 8010D7CC 8C630004 */  lw         $v1, 0x4($v1)
/* 12B8C0 8010D7D0 00009021 */  addu       $s2, $zero, $zero
/* 12B8C4 8010D7D4 00431023 */  subu       $v0, $v0, $v1
/* 12B8C8 8010D7D8 0C046734 */  jal        func_menu_80119CD0
/* 12B8CC 8010D7DC AFA20024 */   sw        $v0, 0x24($sp)
/* 12B8D0 8010D7E0 02002021 */  addu       $a0, $s0, $zero
/* 12B8D4 8010D7E4 0C04936A */  jal        func_menu_80124DA8
/* 12B8D8 8010D7E8 27A50018 */   addiu     $a1, $sp, 0x18
/* 12B8DC 8010D7EC 3C08BFFF */  lui        $t0, (0xBFFFFFFF >> 16)
/* 12B8E0 8010D7F0 3508FFFF */  ori        $t0, $t0, (0xBFFFFFFF & 0xFFFF)
/* 12B8E4 8010D7F4 02602021 */  addu       $a0, $s3, $zero
/* 12B8E8 8010D7F8 26710B54 */  addiu      $s1, $s3, 0xB54
/* 12B8EC 8010D7FC 02202821 */  addu       $a1, $s1, $zero
/* 12B8F0 8010D800 24060047 */  addiu      $a2, $zero, 0x47
/* 12B8F4 8010D804 24070044 */  addiu      $a3, $zero, 0x44
/* 12B8F8 8010D808 8E020018 */  lw         $v0, 0x18($s0)
/* 12B8FC 8010D80C 240300C8 */  addiu      $v1, $zero, 0xC8
/* 12B900 8010D810 AE0300A0 */  sw         $v1, 0xA0($s0)
/* 12B904 8010D814 00481024 */  and        $v0, $v0, $t0
/* 12B908 8010D818 0C046966 */  jal        func_menu_8011A598
/* 12B90C 8010D81C AE020018 */   sw        $v0, 0x18($s0)
/* 12B910 8010D820 02602021 */  addu       $a0, $s3, $zero
/* 12B914 8010D824 26650BE8 */  addiu      $a1, $s3, 0xBE8
/* 12B918 8010D828 02203021 */  addu       $a2, $s1, $zero
/* 12B91C 8010D82C 2407009D */  addiu      $a3, $zero, 0x9D
/* 12B920 8010D830 24020056 */  addiu      $v0, $zero, 0x56
/* 12B924 8010D834 0C04699A */  jal        func_menu_8011A668
/* 12B928 8010D838 AFA20010 */   sw        $v0, 0x10($sp)
/* 12B92C 8010D83C 1280000F */  beqz       $s4, .Lmenu_8010D87C
/* 12B930 8010D840 241115DC */   addiu     $s1, $zero, 0x15DC
.Lmenu_8010D844:
/* 12B934 8010D844 02602021 */  addu       $a0, $s3, $zero
/* 12B938 8010D848 02718021 */  addu       $s0, $s3, $s1
/* 12B93C 8010D84C 02002821 */  addu       $a1, $s0, $zero
/* 12B940 8010D850 26460069 */  addiu      $a2, $s2, 0x69
/* 12B944 8010D854 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 12B948 8010D858 0C04675B */  jal        func_menu_80119D6C
/* 12B94C 8010D85C 240700A5 */   addiu     $a3, $zero, 0xA5
/* 12B950 8010D860 26640B54 */  addiu      $a0, $s3, 0xB54
/* 12B954 8010D864 0C047346 */  jal        func_menu_8011CD18
/* 12B958 8010D868 02002821 */   addu      $a1, $s0, $zero
/* 12B95C 8010D86C 26520001 */  addiu      $s2, $s2, 0x1
/* 12B960 8010D870 0254102A */  slt        $v0, $s2, $s4
/* 12B964 8010D874 1440FFF3 */  bnez       $v0, .Lmenu_8010D844
/* 12B968 8010D878 2631005C */   addiu     $s1, $s1, 0x5C
.Lmenu_8010D87C:
/* 12B96C 8010D87C 26640B54 */  addiu      $a0, $s3, 0xB54
/* 12B970 8010D880 0C0472E9 */  jal        func_menu_8011CBA4
/* 12B974 8010D884 00002821 */   addu      $a1, $zero, $zero
/* 12B978 8010D888 8FBF003C */  lw         $ra, 0x3C($sp)
/* 12B97C 8010D88C 8FB40038 */  lw         $s4, 0x38($sp)
/* 12B980 8010D890 8FB30034 */  lw         $s3, 0x34($sp)
/* 12B984 8010D894 8FB20030 */  lw         $s2, 0x30($sp)
/* 12B988 8010D898 8FB1002C */  lw         $s1, 0x2C($sp)
/* 12B98C 8010D89C 8FB00028 */  lw         $s0, 0x28($sp)
/* 12B990 8010D8A0 03E00008 */  jr         $ra
/* 12B994 8010D8A4 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_8010D8A8
/* 12B998 8010D8A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12B99C 8010D8AC AFB10014 */  sw         $s1, 0x14($sp)
/* 12B9A0 8010D8B0 00808821 */  addu       $s1, $a0, $zero
/* 12B9A4 8010D8B4 AFB20018 */  sw         $s2, 0x18($sp)
/* 12B9A8 8010D8B8 00A09021 */  addu       $s2, $a1, $zero
/* 12B9AC 8010D8BC AFB00010 */  sw         $s0, 0x10($sp)
/* 12B9B0 8010D8C0 00C08021 */  addu       $s0, $a2, $zero
/* 12B9B4 8010D8C4 26442CF8 */  addiu      $a0, $s2, 0x2CF8
/* 12B9B8 8010D8C8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 12B9BC 8010D8CC 0C03620E */  jal        func_menu_800D8838
/* 12B9C0 8010D8D0 AE201904 */   sw        $zero, 0x1904($s1)
/* 12B9C4 8010D8D4 02202021 */  addu       $a0, $s1, $zero
/* 12B9C8 8010D8D8 02402821 */  addu       $a1, $s2, $zero
/* 12B9CC 8010D8DC 0C03E5A4 */  jal        func_menu_800F9690
/* 12B9D0 8010D8E0 02003021 */   addu      $a2, $s0, $zero
/* 12B9D4 8010D8E4 14400003 */  bnez       $v0, .Lmenu_8010D8F4
/* 12B9D8 8010D8E8 24030001 */   addiu     $v1, $zero, 0x1
/* 12B9DC 8010D8EC 08043649 */  j          .Lmenu_8010D924
/* 12B9E0 8010D8F0 00001021 */   addu      $v0, $zero, $zero
.Lmenu_8010D8F4:
/* 12B9E4 8010D8F4 8E2200C4 */  lw         $v0, 0xC4($s1)
/* 12B9E8 8010D8F8 A0430041 */  sb         $v1, 0x41($v0)
/* 12B9EC 8010D8FC 8E42459C */  lw         $v0, 0x459C($s2)
/* 12B9F0 8010D900 14400004 */  bnez       $v0, .Lmenu_8010D914
/* 12B9F4 8010D904 02202021 */   addu      $a0, $s1, $zero
/* 12B9F8 8010D908 8E250354 */  lw         $a1, 0x354($s1)
/* 12B9FC 8010D90C 0C04042B */  jal        func_menu_801010AC
/* 12BA00 8010D910 00003021 */   addu      $a2, $zero, $zero
.Lmenu_8010D914:
/* 12BA04 8010D914 0C040493 */  jal        func_menu_8010124C
/* 12BA08 8010D918 02202021 */   addu      $a0, $s1, $zero
/* 12BA0C 8010D91C AE200634 */  sw         $zero, 0x634($s1)
/* 12BA10 8010D920 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_8010D924:
/* 12BA14 8010D924 8FBF001C */  lw         $ra, 0x1C($sp)
/* 12BA18 8010D928 8FB20018 */  lw         $s2, 0x18($sp)
/* 12BA1C 8010D92C 8FB10014 */  lw         $s1, 0x14($sp)
/* 12BA20 8010D930 8FB00010 */  lw         $s0, 0x10($sp)
/* 12BA24 8010D934 03E00008 */  jr         $ra
/* 12BA28 8010D938 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010D93C
/* 12BA2C 8010D93C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 12BA30 8010D940 AFB3002C */  sw         $s3, 0x2C($sp)
/* 12BA34 8010D944 00809821 */  addu       $s3, $a0, $zero
/* 12BA38 8010D948 AFB60038 */  sw         $s6, 0x38($sp)
/* 12BA3C 8010D94C 00A0B021 */  addu       $s6, $a1, $zero
/* 12BA40 8010D950 AFB20028 */  sw         $s2, 0x28($sp)
/* 12BA44 8010D954 00009021 */  addu       $s2, $zero, $zero
/* 12BA48 8010D958 AFB10024 */  sw         $s1, 0x24($sp)
/* 12BA4C 8010D95C 267103C0 */  addiu      $s1, $s3, 0x3C0
/* 12BA50 8010D960 AFB00020 */  sw         $s0, 0x20($sp)
/* 12BA54 8010D964 02408021 */  addu       $s0, $s2, $zero
/* 12BA58 8010D968 AFB50034 */  sw         $s5, 0x34($sp)
/* 12BA5C 8010D96C 3C15800D */  lui        $s5, %hi(D_menu_800CF0A0)
/* 12BA60 8010D970 AFBF003C */  sw         $ra, 0x3C($sp)
/* 12BA64 8010D974 AFB40030 */  sw         $s4, 0x30($sp)
/* 12BA68 8010D978 8E740618 */  lw         $s4, 0x618($s3)
.Lmenu_8010D97C:
/* 12BA6C 8010D97C 56400012 */  bnel       $s2, $zero, .Lmenu_8010D9C8
/* 12BA70 8010D980 26700658 */   addiu     $s0, $s3, 0x658
/* 12BA74 8010D984 8E220018 */  lw         $v0, 0x18($s1)
/* 12BA78 8010D988 0202102B */  sltu       $v0, $s0, $v0
/* 12BA7C 8010D98C 1040000D */  beqz       $v0, .Lmenu_8010D9C4
/* 12BA80 8010D990 00101080 */   sll       $v0, $s0, 2
/* 12BA84 8010D994 8E23001C */  lw         $v1, 0x1C($s1)
/* 12BA88 8010D998 00431021 */  addu       $v0, $v0, $v1
/* 12BA8C 8010D99C 8C420000 */  lw         $v0, 0x0($v0)
/* 12BA90 8010D9A0 26A5F0A0 */  addiu      $a1, $s5, %lo(D_menu_800CF0A0)
/* 12BA94 8010D9A4 8C4300BC */  lw         $v1, 0xBC($v0)
/* 12BA98 8010D9A8 10600004 */  beqz       $v1, .Lmenu_8010D9BC
/* 12BA9C 8010D9AC 244400BC */   addiu     $a0, $v0, 0xBC
/* 12BAA0 8010D9B0 0C016427 */  jal        func_8005909C
/* 12BAA4 8010D9B4 00000000 */   nop
/* 12BAA8 8010D9B8 00409021 */  addu       $s2, $v0, $zero
.Lmenu_8010D9BC:
/* 12BAAC 8010D9BC 0804365F */  j          .Lmenu_8010D97C
/* 12BAB0 8010D9C0 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_8010D9C4:
/* 12BAB4 8010D9C4 26700658 */  addiu      $s0, $s3, 0x658
.Lmenu_8010D9C8:
/* 12BAB8 8010D9C8 02002021 */  addu       $a0, $s0, $zero
/* 12BABC 8010D9CC 02C02821 */  addu       $a1, $s6, $zero
/* 12BAC0 8010D9D0 0C0006B2 */  jal        func_80001AC8
/* 12BAC4 8010D9D4 24060008 */   addiu     $a2, $zero, 0x8
/* 12BAC8 8010D9D8 10400031 */  beqz       $v0, .Lmenu_8010DAA0
/* 12BACC 8010D9DC 02002021 */   addu      $a0, $s0, $zero
/* 12BAD0 8010D9E0 02C02821 */  addu       $a1, $s6, $zero
/* 12BAD4 8010D9E4 0C000708 */  jal        func_80001C20
/* 12BAD8 8010D9E8 24060008 */   addiu     $a2, $zero, 0x8
/* 12BADC 8010D9EC 26710660 */  addiu      $s1, $s3, 0x660
/* 12BAE0 8010D9F0 8E22005C */  lw         $v0, 0x5C($s1)
/* 12BAE4 8010D9F4 30420001 */  andi       $v0, $v0, 0x1
/* 12BAE8 8010D9F8 10400006 */  beqz       $v0, .Lmenu_8010DA14
/* 12BAEC 8010D9FC 00000000 */   nop
/* 12BAF0 8010DA00 0C01958C */  jal        func_80065630
/* 12BAF4 8010DA04 02202021 */   addu      $a0, $s1, $zero
/* 12BAF8 8010DA08 8E640354 */  lw         $a0, 0x354($s3)
/* 12BAFC 8010DA0C 0C03738D */  jal        func_menu_800DCE34
/* 12BB00 8010DA10 2484459C */   addiu     $a0, $a0, 0x459C
.Lmenu_8010DA14:
/* 12BB04 8010DA14 8E650754 */  lw         $a1, 0x754($s3)
/* 12BB08 8010DA18 50A00009 */  beql       $a1, $zero, .Lmenu_8010DA40
/* 12BB0C 8010DA1C 02002821 */   addu      $a1, $s0, $zero
/* 12BB10 8010DA20 8E6300B4 */  lw         $v1, 0xB4($s3)
/* 12BB14 8010DA24 8C620000 */  lw         $v0, 0x0($v1)
/* 12BB18 8010DA28 84440098 */  lh         $a0, 0x98($v0)
/* 12BB1C 8010DA2C 8C42009C */  lw         $v0, 0x9C($v0)
/* 12BB20 8010DA30 0040F809 */  jalr       $v0
/* 12BB24 8010DA34 00642021 */   addu      $a0, $v1, $a0
/* 12BB28 8010DA38 AE600754 */  sw         $zero, 0x754($s3)
/* 12BB2C 8010DA3C 02002821 */  addu       $a1, $s0, $zero
.Lmenu_8010DA40:
/* 12BB30 8010DA40 8E640354 */  lw         $a0, 0x354($s3)
/* 12BB34 8010DA44 27A60018 */  addiu      $a2, $sp, 0x18
/* 12BB38 8010DA48 0C011604 */  jal        func_80045810
/* 12BB3C 8010DA4C 24843CBC */   addiu     $a0, $a0, 0x3CBC
/* 12BB40 8010DA50 27A50018 */  addiu      $a1, $sp, 0x18
/* 12BB44 8010DA54 00003021 */  addu       $a2, $zero, $zero
/* 12BB48 8010DA58 8E640354 */  lw         $a0, 0x354($s3)
/* 12BB4C 8010DA5C 00C03821 */  addu       $a3, $a2, $zero
/* 12BB50 8010DA60 0C037746 */  jal        func_menu_800DDD18
/* 12BB54 8010DA64 2484459C */   addiu     $a0, $a0, 0x459C
/* 12BB58 8010DA68 AE620754 */  sw         $v0, 0x754($s3)
/* 12BB5C 8010DA6C 8E420024 */  lw         $v0, 0x24($s2)
/* 12BB60 8010DA70 00002821 */  addu       $a1, $zero, $zero
/* 12BB64 8010DA74 844400B8 */  lh         $a0, 0xB8($v0)
/* 12BB68 8010DA78 8C4200BC */  lw         $v0, 0xBC($v0)
/* 12BB6C 8010DA7C 0040F809 */  jalr       $v0
/* 12BB70 8010DA80 02442021 */   addu      $a0, $s2, $a0
/* 12BB74 8010DA84 8E4700A8 */  lw         $a3, 0xA8($s2)
/* 12BB78 8010DA88 C6400084 */  lwc1       $f0, 0x84($s2)
/* 12BB7C 8010DA8C 02202021 */  addu       $a0, $s1, $zero
/* 12BB80 8010DA90 E7A00010 */  swc1       $f0, 0x10($sp)
/* 12BB84 8010DA94 8E650754 */  lw         $a1, 0x754($s3)
/* 12BB88 8010DA98 0C01956B */  jal        func_800655AC
/* 12BB8C 8010DA9C 00403021 */   addu      $a2, $v0, $zero
.Lmenu_8010DAA0:
/* 12BB90 8010DAA0 26640660 */  addiu      $a0, $s3, 0x660
/* 12BB94 8010DAA4 8C82005C */  lw         $v0, 0x5C($a0)
/* 12BB98 8010DAA8 30420001 */  andi       $v0, $v0, 0x1
/* 12BB9C 8010DAAC 1040000E */  beqz       $v0, .Lmenu_8010DAE8
/* 12BBA0 8010DAB0 00008021 */   addu      $s0, $zero, $zero
/* 12BBA4 8010DAB4 02002821 */  addu       $a1, $s0, $zero
.Lmenu_8010DAB8:
/* 12BBA8 8010DAB8 8E82000C */  lw         $v0, 0xC($s4)
/* 12BBAC 8010DABC 0202102B */  sltu       $v0, $s0, $v0
/* 12BBB0 8010DAC0 10400009 */  beqz       $v0, .Lmenu_8010DAE8
/* 12BBB4 8010DAC4 00000000 */   nop
/* 12BBB8 8010DAC8 8E820010 */  lw         $v0, 0x10($s4)
/* 12BBBC 8010DACC 00451821 */  addu       $v1, $v0, $a1
/* 12BBC0 8010DAD0 8C620024 */  lw         $v0, 0x24($v1)
/* 12BBC4 8010DAD4 50520001 */  beql       $v0, $s2, .Lmenu_8010DADC
/* 12BBC8 8010DAD8 AC640024 */   sw        $a0, 0x24($v1)
.Lmenu_8010DADC:
/* 12BBCC 8010DADC 24A50068 */  addiu      $a1, $a1, 0x68
/* 12BBD0 8010DAE0 080436AE */  j          .Lmenu_8010DAB8
/* 12BBD4 8010DAE4 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_8010DAE8:
/* 12BBD8 8010DAE8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 12BBDC 8010DAEC 8FB60038 */  lw         $s6, 0x38($sp)
/* 12BBE0 8010DAF0 8FB50034 */  lw         $s5, 0x34($sp)
/* 12BBE4 8010DAF4 8FB40030 */  lw         $s4, 0x30($sp)
/* 12BBE8 8010DAF8 8FB3002C */  lw         $s3, 0x2C($sp)
/* 12BBEC 8010DAFC 8FB20028 */  lw         $s2, 0x28($sp)
/* 12BBF0 8010DB00 8FB10024 */  lw         $s1, 0x24($sp)
/* 12BBF4 8010DB04 8FB00020 */  lw         $s0, 0x20($sp)
/* 12BBF8 8010DB08 03E00008 */  jr         $ra
/* 12BBFC 8010DB0C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_8010DB10
/* 12BC00 8010DB10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12BC04 8010DB14 3C028012 */  lui        $v0, %hi(D_menu_801270FC)
/* 12BC08 8010DB18 244270FC */  addiu      $v0, $v0, %lo(D_menu_801270FC)
/* 12BC0C 8010DB1C 00A22821 */  addu       $a1, $a1, $v0
/* 12BC10 8010DB20 AFBF0010 */  sw         $ra, 0x10($sp)
/* 12BC14 8010DB24 90A20000 */  lbu        $v0, 0x0($a1)
/* 12BC18 8010DB28 3C058012 */  lui        $a1, %hi(D_menu_801270E8)
/* 12BC1C 8010DB2C 24A570E8 */  addiu      $a1, $a1, %lo(D_menu_801270E8)
/* 12BC20 8010DB30 24840758 */  addiu      $a0, $a0, 0x758
/* 12BC24 8010DB34 00021080 */  sll        $v0, $v0, 2
/* 12BC28 8010DB38 0C047B79 */  jal        func_menu_8011EDE4
/* 12BC2C 8010DB3C 00452821 */   addu      $a1, $v0, $a1
/* 12BC30 8010DB40 8FBF0010 */  lw         $ra, 0x10($sp)
/* 12BC34 8010DB44 03E00008 */  jr         $ra
/* 12BC38 8010DB48 27BD0018 */   addiu     $sp, $sp, 0x18
