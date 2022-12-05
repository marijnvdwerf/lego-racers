.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800EB060
/* 109150 800EB060 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 109154 800EB064 AFB00010 */  sw         $s0, 0x10($sp)
/* 109158 800EB068 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10915C 800EB06C 0C03A244 */  jal        func_menu_800E8910
/* 109160 800EB070 00808021 */   addu      $s0, $a0, $zero
/* 109164 800EB074 3C02800D */  lui        $v0, %hi(D_menu_800CB728)
/* 109168 800EB078 2442B728 */  addiu      $v0, $v0, %lo(D_menu_800CB728)
/* 10916C 800EB07C 02002021 */  addu       $a0, $s0, $zero
/* 109170 800EB080 0C03AC39 */  jal        func_menu_800EB0E4
/* 109174 800EB084 AE02001C */   sw        $v0, 0x1C($s0)
/* 109178 800EB088 02001021 */  addu       $v0, $s0, $zero
/* 10917C 800EB08C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 109180 800EB090 8FB00010 */  lw         $s0, 0x10($sp)
/* 109184 800EB094 03E00008 */  jr         $ra
/* 109188 800EB098 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EB09C
/* 10918C 800EB09C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 109190 800EB0A0 AFB00010 */  sw         $s0, 0x10($sp)
/* 109194 800EB0A4 00808021 */  addu       $s0, $a0, $zero
/* 109198 800EB0A8 AFB10014 */  sw         $s1, 0x14($sp)
/* 10919C 800EB0AC 00A08821 */  addu       $s1, $a1, $zero
/* 1091A0 800EB0B0 3C02800D */  lui        $v0, %hi(D_menu_800CB728)
/* 1091A4 800EB0B4 2442B728 */  addiu      $v0, $v0, %lo(D_menu_800CB728)
/* 1091A8 800EB0B8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1091AC 800EB0BC 0C03ACA2 */  jal        func_menu_800EB288
/* 1091B0 800EB0C0 AE02001C */   sw        $v0, 0x1C($s0)
/* 1091B4 800EB0C4 02002021 */  addu       $a0, $s0, $zero
/* 1091B8 800EB0C8 0C03A251 */  jal        func_menu_800E8944
/* 1091BC 800EB0CC 02202821 */   addu      $a1, $s1, $zero
/* 1091C0 800EB0D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1091C4 800EB0D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1091C8 800EB0D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1091CC 800EB0DC 03E00008 */  jr         $ra
/* 1091D0 800EB0E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EB0E4
/* 1091D4 800EB0E4 3C01800D */  lui        $at, %hi(D_menu_800CB720)
/* 1091D8 800EB0E8 C420B720 */  lwc1       $f0, %lo(D_menu_800CB720)($at)
/* 1091DC 800EB0EC AC800020 */  sw         $zero, 0x20($a0)
/* 1091E0 800EB0F0 AC800024 */  sw         $zero, 0x24($a0)
/* 1091E4 800EB0F4 AC800028 */  sw         $zero, 0x28($a0)
/* 1091E8 800EB0F8 AC800030 */  sw         $zero, 0x30($a0)
/* 1091EC 800EB0FC AC800034 */  sw         $zero, 0x34($a0)
/* 1091F0 800EB100 AC800038 */  sw         $zero, 0x38($a0)
/* 1091F4 800EB104 AC80003C */  sw         $zero, 0x3C($a0)
/* 1091F8 800EB108 E480002C */  swc1       $f0, 0x2C($a0)
/* 1091FC 800EB10C 03E00008 */  jr         $ra
/* 109200 800EB110 E4800040 */   swc1      $f0, 0x40($a0)

glabel func_menu_800EB114
/* 109204 800EB114 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 109208 800EB118 AFB10014 */  sw         $s1, 0x14($sp)
/* 10920C 800EB11C 00808821 */  addu       $s1, $a0, $zero
/* 109210 800EB120 AFB00010 */  sw         $s0, 0x10($sp)
/* 109214 800EB124 00A08021 */  addu       $s0, $a1, $zero
/* 109218 800EB128 02002021 */  addu       $a0, $s0, $zero
/* 10921C 800EB12C 24050037 */  addiu      $a1, $zero, 0x37
/* 109220 800EB130 AFBF001C */  sw         $ra, 0x1C($sp)
/* 109224 800EB134 0C0026F4 */  jal        func_80009BD0
/* 109228 800EB138 AFB20018 */   sw        $s2, 0x18($sp)
/* 10922C 800EB13C 8E020028 */  lw         $v0, 0x28($s0)
/* 109230 800EB140 00009021 */  addu       $s2, $zero, $zero
/* 109234 800EB144 844400A0 */  lh         $a0, 0xA0($v0)
/* 109238 800EB148 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10923C 800EB14C 0040F809 */  jalr       $v0
/* 109240 800EB150 02042021 */   addu      $a0, $s0, $a0
/* 109244 800EB154 02202021 */  addu       $a0, $s1, $zero
/* 109248 800EB158 26050044 */  addiu      $a1, $s0, 0x44
/* 10924C 800EB15C 0C000708 */  jal        func_80001C20
/* 109250 800EB160 24060008 */   addiu     $a2, $zero, 0x8
/* 109254 800EB164 02002021 */  addu       $a0, $s0, $zero
/* 109258 800EB168 0C0026F4 */  jal        func_80009BD0
/* 10925C 800EB16C 24050005 */   addiu     $a1, $zero, 0x5
.Lmenu_800EB170:
/* 109260 800EB170 8E020028 */  lw         $v0, 0x28($s0)
/* 109264 800EB174 844400A0 */  lh         $a0, 0xA0($v0)
/* 109268 800EB178 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 10926C 800EB17C 0040F809 */  jalr       $v0
/* 109270 800EB180 02042021 */   addu      $a0, $s0, $a0
/* 109274 800EB184 00401821 */  addu       $v1, $v0, $zero
/* 109278 800EB188 24020006 */  addiu      $v0, $zero, 0x6
/* 10927C 800EB18C 10620035 */  beq        $v1, $v0, .Lmenu_800EB264
/* 109280 800EB190 24020033 */   addiu     $v0, $zero, 0x33
/* 109284 800EB194 10620016 */  beq        $v1, $v0, .Lmenu_800EB1F0
/* 109288 800EB198 2C620034 */   sltiu     $v0, $v1, 0x34
/* 10928C 800EB19C 10400007 */  beqz       $v0, .Lmenu_800EB1BC
/* 109290 800EB1A0 2402002B */   addiu     $v0, $zero, 0x2B
/* 109294 800EB1A4 1062000A */  beq        $v1, $v0, .Lmenu_800EB1D0
/* 109298 800EB1A8 2402002C */   addiu     $v0, $zero, 0x2C
/* 10929C 800EB1AC 1062000C */  beq        $v1, $v0, .Lmenu_800EB1E0
/* 1092A0 800EB1B0 00000000 */   nop
/* 1092A4 800EB1B4 0803AC5C */  j          .Lmenu_800EB170
/* 1092A8 800EB1B8 00000000 */   nop
.Lmenu_800EB1BC:
/* 1092AC 800EB1BC 24020034 */  addiu      $v0, $zero, 0x34
/* 1092B0 800EB1C0 10620015 */  beq        $v1, $v0, .Lmenu_800EB218
/* 1092B4 800EB1C4 00000000 */   nop
/* 1092B8 800EB1C8 0803AC5C */  j          .Lmenu_800EB170
/* 1092BC 800EB1CC 00000000 */   nop
.Lmenu_800EB1D0:
/* 1092C0 800EB1D0 0C002680 */  jal        func_80009A00
/* 1092C4 800EB1D4 02002021 */   addu      $a0, $s0, $zero
/* 1092C8 800EB1D8 0803AC5C */  j          .Lmenu_800EB170
/* 1092CC 800EB1DC AE220008 */   sw        $v0, 0x8($s1)
.Lmenu_800EB1E0:
/* 1092D0 800EB1E0 0C002680 */  jal        func_80009A00
/* 1092D4 800EB1E4 02002021 */   addu      $a0, $s0, $zero
/* 1092D8 800EB1E8 0803AC5C */  j          .Lmenu_800EB170
/* 1092DC 800EB1EC 00409021 */   addu      $s2, $v0, $zero
.Lmenu_800EB1F0:
/* 1092E0 800EB1F0 0C0025F8 */  jal        func_800097E0
/* 1092E4 800EB1F4 02002021 */   addu      $a0, $s0, $zero
/* 1092E8 800EB1F8 02002021 */  addu       $a0, $s0, $zero
/* 1092EC 800EB1FC 0C0025F8 */  jal        func_800097E0
/* 1092F0 800EB200 E6200020 */   swc1      $f0, 0x20($s1)
/* 1092F4 800EB204 02002021 */  addu       $a0, $s0, $zero
/* 1092F8 800EB208 0C0025F8 */  jal        func_800097E0
/* 1092FC 800EB20C E6200024 */   swc1      $f0, 0x24($s1)
/* 109300 800EB210 0803AC5C */  j          .Lmenu_800EB170
/* 109304 800EB214 E6200028 */   swc1      $f0, 0x28($s1)
.Lmenu_800EB218:
/* 109308 800EB218 0C0025F8 */  jal        func_800097E0
/* 10930C 800EB21C 02002021 */   addu      $a0, $s0, $zero
/* 109310 800EB220 02002021 */  addu       $a0, $s0, $zero
/* 109314 800EB224 0C0025F8 */  jal        func_800097E0
/* 109318 800EB228 E620002C */   swc1      $f0, 0x2C($s1)
/* 10931C 800EB22C 02002021 */  addu       $a0, $s0, $zero
/* 109320 800EB230 0C0025F8 */  jal        func_800097E0
/* 109324 800EB234 E6200030 */   swc1      $f0, 0x30($s1)
/* 109328 800EB238 02002021 */  addu       $a0, $s0, $zero
/* 10932C 800EB23C 0C0025F8 */  jal        func_800097E0
/* 109330 800EB240 E6200034 */   swc1      $f0, 0x34($s1)
/* 109334 800EB244 02002021 */  addu       $a0, $s0, $zero
/* 109338 800EB248 0C0025F8 */  jal        func_800097E0
/* 10933C 800EB24C E6200038 */   swc1      $f0, 0x38($s1)
/* 109340 800EB250 02002021 */  addu       $a0, $s0, $zero
/* 109344 800EB254 0C0025F8 */  jal        func_800097E0
/* 109348 800EB258 E620003C */   swc1      $f0, 0x3C($s1)
/* 10934C 800EB25C 0803AC5C */  j          .Lmenu_800EB170
/* 109350 800EB260 E6200040 */   swc1      $f0, 0x40($s1)
.Lmenu_800EB264:
/* 109354 800EB264 8E220008 */  lw         $v0, 0x8($s1)
/* 109358 800EB268 00521021 */  addu       $v0, $v0, $s2
/* 10935C 800EB26C AE22000C */  sw         $v0, 0xC($s1)
/* 109360 800EB270 8FBF001C */  lw         $ra, 0x1C($sp)
/* 109364 800EB274 8FB20018 */  lw         $s2, 0x18($sp)
/* 109368 800EB278 8FB10014 */  lw         $s1, 0x14($sp)
/* 10936C 800EB27C 8FB00010 */  lw         $s0, 0x10($sp)
/* 109370 800EB280 03E00008 */  jr         $ra
/* 109374 800EB284 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EB288
/* 109378 800EB288 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10937C 800EB28C AFBF0010 */  sw         $ra, 0x10($sp)
/* 109380 800EB290 0C03AC39 */  jal        func_menu_800EB0E4
/* 109384 800EB294 00000000 */   nop
/* 109388 800EB298 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10938C 800EB29C 03E00008 */  jr         $ra
/* 109390 800EB2A0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800EB2A4
/* 109394 800EB2A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 109398 800EB2A8 AFB20018 */  sw         $s2, 0x18($sp)
/* 10939C 800EB2AC 00809021 */  addu       $s2, $a0, $zero
/* 1093A0 800EB2B0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1093A4 800EB2B4 00A08821 */  addu       $s1, $a1, $zero
/* 1093A8 800EB2B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1093AC 800EB2BC AFBF001C */  sw         $ra, 0x1C($sp)
/* 1093B0 800EB2C0 0C03A272 */  jal        func_menu_800E89C8
/* 1093B4 800EB2C4 00C08021 */   addu      $s0, $a2, $zero
/* 1093B8 800EB2C8 12000008 */  beqz       $s0, .Lmenu_800EB2EC
/* 1093BC 800EB2CC 02202821 */   addu      $a1, $s1, $zero
/* 1093C0 800EB2D0 02403021 */  addu       $a2, $s2, $zero
/* 1093C4 800EB2D4 8E020000 */  lw         $v0, 0x0($s0)
/* 1093C8 800EB2D8 00C03821 */  addu       $a3, $a2, $zero
/* 1093CC 800EB2DC 84440038 */  lh         $a0, 0x38($v0)
/* 1093D0 800EB2E0 8C42003C */  lw         $v0, 0x3C($v0)
/* 1093D4 800EB2E4 0040F809 */  jalr       $v0
/* 1093D8 800EB2E8 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800EB2EC:
/* 1093DC 800EB2EC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1093E0 800EB2F0 8FB20018 */  lw         $s2, 0x18($sp)
/* 1093E4 800EB2F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1093E8 800EB2F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1093EC 800EB2FC 03E00008 */  jr         $ra
/* 1093F0 800EB300 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EB304
/* 1093F4 800EB304 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1093F8 800EB308 AFB20018 */  sw         $s2, 0x18($sp)
/* 1093FC 800EB30C 00809021 */  addu       $s2, $a0, $zero
/* 109400 800EB310 AFB10014 */  sw         $s1, 0x14($sp)
/* 109404 800EB314 00A08821 */  addu       $s1, $a1, $zero
/* 109408 800EB318 AFB00010 */  sw         $s0, 0x10($sp)
/* 10940C 800EB31C AFBF001C */  sw         $ra, 0x1C($sp)
/* 109410 800EB320 0C03A282 */  jal        func_menu_800E8A08
/* 109414 800EB324 00C08021 */   addu      $s0, $a2, $zero
/* 109418 800EB328 12000008 */  beqz       $s0, .Lmenu_800EB34C
/* 10941C 800EB32C 02202821 */   addu      $a1, $s1, $zero
/* 109420 800EB330 02403021 */  addu       $a2, $s2, $zero
/* 109424 800EB334 8E020000 */  lw         $v0, 0x0($s0)
/* 109428 800EB338 00C03821 */  addu       $a3, $a2, $zero
/* 10942C 800EB33C 84440040 */  lh         $a0, 0x40($v0)
/* 109430 800EB340 8C420044 */  lw         $v0, 0x44($v0)
/* 109434 800EB344 0040F809 */  jalr       $v0
/* 109438 800EB348 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800EB34C:
/* 10943C 800EB34C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 109440 800EB350 8FB20018 */  lw         $s2, 0x18($sp)
/* 109444 800EB354 8FB10014 */  lw         $s1, 0x14($sp)
/* 109448 800EB358 8FB00010 */  lw         $s0, 0x10($sp)
/* 10944C 800EB35C 03E00008 */  jr         $ra
/* 109450 800EB360 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800EB364
/* 109454 800EB364 8C82002C */  lw         $v0, 0x2C($a0)
/* 109458 800EB368 8C830030 */  lw         $v1, 0x30($a0)
/* 10945C 800EB36C 8C870034 */  lw         $a3, 0x34($a0)
/* 109460 800EB370 ACA20000 */  sw         $v0, 0x0($a1)
/* 109464 800EB374 ACA30004 */  sw         $v1, 0x4($a1)
/* 109468 800EB378 ACA70008 */  sw         $a3, 0x8($a1)
/* 10946C 800EB37C 8C820038 */  lw         $v0, 0x38($a0)
/* 109470 800EB380 8C83003C */  lw         $v1, 0x3C($a0)
/* 109474 800EB384 8C870040 */  lw         $a3, 0x40($a0)
/* 109478 800EB388 ACC20000 */  sw         $v0, 0x0($a2)
/* 10947C 800EB38C ACC30004 */  sw         $v1, 0x4($a2)
/* 109480 800EB390 ACC70008 */  sw         $a3, 0x8($a2)
/* 109484 800EB394 03E00008 */  jr         $ra
/* 109488 800EB398 00000000 */   nop

glabel func_menu_800EB39C
/* 10948C 800EB39C 8C820020 */  lw         $v0, 0x20($a0)
/* 109490 800EB3A0 8C830024 */  lw         $v1, 0x24($a0)
/* 109494 800EB3A4 8C860028 */  lw         $a2, 0x28($a0)
/* 109498 800EB3A8 ACA20000 */  sw         $v0, 0x0($a1)
/* 10949C 800EB3AC ACA30004 */  sw         $v1, 0x4($a1)
/* 1094A0 800EB3B0 ACA60008 */  sw         $a2, 0x8($a1)
/* 1094A4 800EB3B4 03E00008 */  jr         $ra
/* 1094A8 800EB3B8 00000000 */   nop
