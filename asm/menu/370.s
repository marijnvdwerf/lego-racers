.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800F5100
/* 1131F0 800F5100 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1131F4 800F5104 AFB00010 */  sw         $s0, 0x10($sp)
/* 1131F8 800F5108 00808021 */  addu       $s0, $a0, $zero
/* 1131FC 800F510C AFBF0018 */  sw         $ra, 0x18($sp)
/* 113200 800F5110 0C03CDD8 */  jal        func_menu_800F3760
/* 113204 800F5114 AFB10014 */   sw        $s1, 0x14($sp)
/* 113208 800F5118 261104AC */  addiu      $s1, $s0, 0x4AC
/* 11320C 800F511C 0C0499A0 */  jal        func_menu_80126680
/* 113210 800F5120 02202021 */   addu      $a0, $s1, $zero
/* 113214 800F5124 02001021 */  addu       $v0, $s0, $zero
/* 113218 800F5128 3C03800D */  lui        $v1, %hi(D_menu_800CC160)
/* 11321C 800F512C 2463C160 */  addiu      $v1, $v1, %lo(D_menu_800CC160)
/* 113220 800F5130 AE230028 */  sw         $v1, 0x28($s1)
/* 113224 800F5134 AC4004A8 */  sw         $zero, 0x4A8($v0)
/* 113228 800F5138 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11322C 800F513C 8FB10014 */  lw         $s1, 0x14($sp)
/* 113230 800F5140 8FB00010 */  lw         $s0, 0x10($sp)
/* 113234 800F5144 03E00008 */  jr         $ra
/* 113238 800F5148 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F514C
/* 11323C 800F514C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 113240 800F5150 AFB00010 */  sw         $s0, 0x10($sp)
/* 113244 800F5154 00808021 */  addu       $s0, $a0, $zero
/* 113248 800F5158 AFB10014 */  sw         $s1, 0x14($sp)
/* 11324C 800F515C AFBF0018 */  sw         $ra, 0x18($sp)
/* 113250 800F5160 0C03D480 */  jal        func_menu_800F5200
/* 113254 800F5164 00A08821 */   addu      $s1, $a1, $zero
/* 113258 800F5168 260404AC */  addiu      $a0, $s0, 0x4AC
/* 11325C 800F516C 0C049698 */  jal        func_menu_80125A60
/* 113260 800F5170 24050002 */   addiu     $a1, $zero, 0x2
/* 113264 800F5174 02002021 */  addu       $a0, $s0, $zero
/* 113268 800F5178 0C03CDE7 */  jal        func_menu_800F379C
/* 11326C 800F517C 02202821 */   addu      $a1, $s1, $zero
/* 113270 800F5180 8FBF0018 */  lw         $ra, 0x18($sp)
/* 113274 800F5184 8FB10014 */  lw         $s1, 0x14($sp)
/* 113278 800F5188 8FB00010 */  lw         $s0, 0x10($sp)
/* 11327C 800F518C 03E00008 */  jr         $ra
/* 113280 800F5190 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F5194
/* 113284 800F5194 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 113288 800F5198 AFB00010 */  sw         $s0, 0x10($sp)
/* 11328C 800F519C 00808021 */  addu       $s0, $a0, $zero
/* 113290 800F51A0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 113294 800F51A4 00A09821 */  addu       $s3, $a1, $zero
/* 113298 800F51A8 AFB10014 */  sw         $s1, 0x14($sp)
/* 11329C 800F51AC 00C08821 */  addu       $s1, $a2, $zero
/* 1132A0 800F51B0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1132A4 800F51B4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1132A8 800F51B8 8E020004 */  lw         $v0, 0x4($s0)
/* 1132AC 800F51BC 10400003 */  beqz       $v0, .Lmenu_800F51CC
/* 1132B0 800F51C0 00E09021 */   addu      $s2, $a3, $zero
/* 1132B4 800F51C4 0C03D480 */  jal        func_menu_800F5200
/* 1132B8 800F51C8 00000000 */   nop
.Lmenu_800F51CC:
/* 1132BC 800F51CC 02002021 */  addu       $a0, $s0, $zero
/* 1132C0 800F51D0 02202821 */  addu       $a1, $s1, $zero
/* 1132C4 800F51D4 8FA70038 */  lw         $a3, 0x38($sp)
/* 1132C8 800F51D8 0C03CDF6 */  jal        func_menu_800F37D8
/* 1132CC 800F51DC 02403021 */   addu      $a2, $s2, $zero
/* 1132D0 800F51E0 AE1304A8 */  sw         $s3, 0x4A8($s0)
/* 1132D4 800F51E4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1132D8 800F51E8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1132DC 800F51EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1132E0 800F51F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1132E4 800F51F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1132E8 800F51F8 03E00008 */  jr         $ra
/* 1132EC 800F51FC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F5200
/* 1132F0 800F5200 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1132F4 800F5204 AFB00010 */  sw         $s0, 0x10($sp)
/* 1132F8 800F5208 00808021 */  addu       $s0, $a0, $zero
/* 1132FC 800F520C 260404AC */  addiu      $a0, $s0, 0x4AC
/* 113300 800F5210 AFBF0014 */  sw         $ra, 0x14($sp)
/* 113304 800F5214 8C820004 */  lw         $v0, 0x4($a0)
/* 113308 800F5218 30420001 */  andi       $v0, $v0, 0x1
/* 11330C 800F521C 10400003 */  beqz       $v0, .Lmenu_800F522C
/* 113310 800F5220 00000000 */   nop
/* 113314 800F5224 0C0496F4 */  jal        func_menu_80125BD0
/* 113318 800F5228 00000000 */   nop
.Lmenu_800F522C:
/* 11331C 800F522C 0C03CE10 */  jal        func_menu_800F3840
/* 113320 800F5230 02002021 */   addu      $a0, $s0, $zero
/* 113324 800F5234 8FBF0014 */  lw         $ra, 0x14($sp)
/* 113328 800F5238 8FB00010 */  lw         $s0, 0x10($sp)
/* 11332C 800F523C 03E00008 */  jr         $ra
/* 113330 800F5240 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F5244
/* 113334 800F5244 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 113338 800F5248 00801021 */  addu       $v0, $a0, $zero
/* 11333C 800F524C 24033E00 */  addiu      $v1, $zero, 0x3E00
/* 113340 800F5250 AFA30010 */  sw         $v1, 0x10($sp)
/* 113344 800F5254 3C038012 */  lui        $v1, %hi(D_menu_80126C80)
/* 113348 800F5258 244404AC */  addiu      $a0, $v0, 0x4AC
/* 11334C 800F525C AFBF0018 */  sw         $ra, 0x18($sp)
/* 113350 800F5260 AFA00014 */  sw         $zero, 0x14($sp)
/* 113354 800F5264 8C4504A8 */  lw         $a1, 0x4A8($v0)
/* 113358 800F5268 8C666C80 */  lw         $a2, %lo(D_menu_80126C80)($v1)
/* 11335C 800F526C 0C0496B4 */  jal        func_menu_80125AD0
/* 113360 800F5270 24070040 */   addiu     $a3, $zero, 0x40
/* 113364 800F5274 8FBF0018 */  lw         $ra, 0x18($sp)
/* 113368 800F5278 03E00008 */  jr         $ra
/* 11336C 800F527C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F5280
/* 113370 800F5280 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 113374 800F5284 AFB00018 */  sw         $s0, 0x18($sp)
/* 113378 800F5288 00808021 */  addu       $s0, $a0, $zero
/* 11337C 800F528C 260404AC */  addiu      $a0, $s0, 0x4AC
/* 113380 800F5290 24023E00 */  addiu      $v0, $zero, 0x3E00
/* 113384 800F5294 AFA20010 */  sw         $v0, 0x10($sp)
/* 113388 800F5298 AFA20014 */  sw         $v0, 0x14($sp)
/* 11338C 800F529C 3C028012 */  lui        $v0, %hi(D_menu_80126C80)
/* 113390 800F52A0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 113394 800F52A4 8E0504A8 */  lw         $a1, 0x4A8($s0)
/* 113398 800F52A8 8C466C80 */  lw         $a2, %lo(D_menu_80126C80)($v0)
/* 11339C 800F52AC 0C0496B4 */  jal        func_menu_80125AD0
/* 1133A0 800F52B0 24070001 */   addiu     $a3, $zero, 0x1
/* 1133A4 800F52B4 14400003 */  bnez       $v0, .Lmenu_800F52C4
/* 1133A8 800F52B8 00000000 */   nop
/* 1133AC 800F52BC 0C03D4D2 */  jal        func_menu_800F5348
/* 1133B0 800F52C0 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800F52C4:
/* 1133B4 800F52C4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1133B8 800F52C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 1133BC 800F52CC 03E00008 */  jr         $ra
/* 1133C0 800F52D0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F52D4
/* 1133C4 800F52D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1133C8 800F52D8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1133CC 800F52DC 00808821 */  addu       $s1, $a0, $zero
/* 1133D0 800F52E0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1133D4 800F52E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1133D8 800F52E8 8E2204B0 */  lw         $v0, 0x4B0($s1)
/* 1133DC 800F52EC 30420001 */  andi       $v0, $v0, 0x1
/* 1133E0 800F52F0 54400007 */  bnel       $v0, $zero, .Lmenu_800F5310
/* 1133E4 800F52F4 02202021 */   addu      $a0, $s1, $zero
/* 1133E8 800F52F8 0C03D491 */  jal        func_menu_800F5244
/* 1133EC 800F52FC 00000000 */   nop
/* 1133F0 800F5300 00408021 */  addu       $s0, $v0, $zero
/* 1133F4 800F5304 1600000B */  bnez       $s0, .Lmenu_800F5334
/* 1133F8 800F5308 00000000 */   nop
/* 1133FC 800F530C 02202021 */  addu       $a0, $s1, $zero
.Lmenu_800F5310:
/* 113400 800F5310 249104AC */  addiu      $s1, $a0, 0x4AC
/* 113404 800F5314 0C03CE46 */  jal        func_menu_800F3918
/* 113408 800F5318 02202821 */   addu      $a1, $s1, $zero
/* 11340C 800F531C 00408021 */  addu       $s0, $v0, $zero
/* 113410 800F5320 12000004 */  beqz       $s0, .Lmenu_800F5334
/* 113414 800F5324 02001021 */   addu      $v0, $s0, $zero
/* 113418 800F5328 0C0496F4 */  jal        func_menu_80125BD0
/* 11341C 800F532C 02202021 */   addu      $a0, $s1, $zero
/* 113420 800F5330 02001021 */  addu       $v0, $s0, $zero
.Lmenu_800F5334:
/* 113424 800F5334 8FBF0018 */  lw         $ra, 0x18($sp)
/* 113428 800F5338 8FB10014 */  lw         $s1, 0x14($sp)
/* 11342C 800F533C 8FB00010 */  lw         $s0, 0x10($sp)
/* 113430 800F5340 03E00008 */  jr         $ra
/* 113434 800F5344 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F5348
/* 113438 800F5348 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11343C 800F534C AFB10014 */  sw         $s1, 0x14($sp)
/* 113440 800F5350 00808821 */  addu       $s1, $a0, $zero
/* 113444 800F5354 AFBF0018 */  sw         $ra, 0x18($sp)
/* 113448 800F5358 AFB00010 */  sw         $s0, 0x10($sp)
/* 11344C 800F535C 8E2204B0 */  lw         $v0, 0x4B0($s1)
/* 113450 800F5360 30420001 */  andi       $v0, $v0, 0x1
/* 113454 800F5364 54400007 */  bnel       $v0, $zero, .Lmenu_800F5384
/* 113458 800F5368 02202021 */   addu      $a0, $s1, $zero
/* 11345C 800F536C 0C03D491 */  jal        func_menu_800F5244
/* 113460 800F5370 00000000 */   nop
/* 113464 800F5374 00401821 */  addu       $v1, $v0, $zero
/* 113468 800F5378 1460000F */  bnez       $v1, .Lmenu_800F53B8
/* 11346C 800F537C 00000000 */   nop
/* 113470 800F5380 02202021 */  addu       $a0, $s1, $zero
.Lmenu_800F5384:
/* 113474 800F5384 263004AC */  addiu      $s0, $s1, 0x4AC
/* 113478 800F5388 0C03CE17 */  jal        func_menu_800F385C
/* 11347C 800F538C 02002821 */   addu      $a1, $s0, $zero
/* 113480 800F5390 00401821 */  addu       $v1, $v0, $zero
/* 113484 800F5394 14600006 */  bnez       $v1, .Lmenu_800F53B0
/* 113488 800F5398 24020001 */   addiu     $v0, $zero, 0x1
/* 11348C 800F539C 0C001DC7 */  jal        func_8000771C
/* 113490 800F53A0 02002021 */   addu      $a0, $s0, $zero
/* 113494 800F53A4 00401821 */  addu       $v1, $v0, $zero
/* 113498 800F53A8 10600002 */  beqz       $v1, .Lmenu_800F53B4
/* 11349C 800F53AC 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800F53B0:
/* 1134A0 800F53B0 AE220020 */  sw         $v0, 0x20($s1)
.Lmenu_800F53B4:
/* 1134A4 800F53B4 00601021 */  addu       $v0, $v1, $zero
.Lmenu_800F53B8:
/* 1134A8 800F53B8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1134AC 800F53BC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1134B0 800F53C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1134B4 800F53C4 03E00008 */  jr         $ra
/* 1134B8 800F53C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F53CC
/* 1134BC 800F53CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1134C0 800F53D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1134C4 800F53D4 0C049698 */  jal        func_menu_80125A60
/* 1134C8 800F53D8 00000000 */   nop
/* 1134CC 800F53DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1134D0 800F53E0 03E00008 */  jr         $ra
/* 1134D4 800F53E4 27BD0018 */   addiu     $sp, $sp, 0x18
