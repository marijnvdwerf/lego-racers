.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80128000
/* DE3C0 80128000 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE3C4 80128004 AFB00010 */  sw         $s0, 0x10($sp)
/* DE3C8 80128008 AFBF0014 */  sw         $ra, 0x14($sp)
/* DE3CC 8012800C 0C048AF4 */  jal        func_race_80122BD0
/* DE3D0 80128010 00808021 */   addu      $s0, $a0, $zero
/* DE3D4 80128014 02001021 */  addu       $v0, $s0, $zero
/* DE3D8 80128018 24040003 */  addiu      $a0, $zero, 0x3
/* DE3DC 8012801C 3C03800D */  lui        $v1, %hi(D_race_800CEC98)
/* DE3E0 80128020 AC44005C */  sw         $a0, 0x5C($v0)
/* DE3E4 80128024 00802821 */  addu       $a1, $a0, $zero
/* DE3E8 80128028 2463EC98 */  addiu      $v1, $v1, %lo(D_race_800CEC98)
/* DE3EC 8012802C AC430000 */  sw         $v1, 0x0($v0)
/* DE3F0 80128030 AC400054 */  sw         $zero, 0x54($v0)
/* DE3F4 80128034 AC400058 */  sw         $zero, 0x58($v0)
/* DE3F8 80128038 AC440060 */  sw         $a0, 0x60($v0)
/* DE3FC 8012803C AC450064 */  sw         $a1, 0x64($v0)
/* DE400 80128040 8FBF0014 */  lw         $ra, 0x14($sp)
/* DE404 80128044 8FB00010 */  lw         $s0, 0x10($sp)
/* DE408 80128048 03E00008 */  jr         $ra
/* DE40C 8012804C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80128050
/* DE410 80128050 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DE414 80128054 AFB00010 */  sw         $s0, 0x10($sp)
/* DE418 80128058 00808021 */  addu       $s0, $a0, $zero
/* DE41C 8012805C AFB10014 */  sw         $s1, 0x14($sp)
/* DE420 80128060 00A08821 */  addu       $s1, $a1, $zero
/* DE424 80128064 3C02800D */  lui        $v0, %hi(D_race_800CEC98)
/* DE428 80128068 2442EC98 */  addiu      $v0, $v0, %lo(D_race_800CEC98)
/* DE42C 8012806C AFBF0018 */  sw         $ra, 0x18($sp)
/* DE430 80128070 0C04A041 */  jal        func_race_80128104
/* DE434 80128074 AE020000 */   sw        $v0, 0x0($s0)
/* DE438 80128078 02002021 */  addu       $a0, $s0, $zero
/* DE43C 8012807C 0C048B04 */  jal        func_race_80122C10
/* DE440 80128080 02202821 */   addu      $a1, $s1, $zero
/* DE444 80128084 8FBF0018 */  lw         $ra, 0x18($sp)
/* DE448 80128088 8FB10014 */  lw         $s1, 0x14($sp)
/* DE44C 8012808C 8FB00010 */  lw         $s0, 0x10($sp)
/* DE450 80128090 03E00008 */  jr         $ra
/* DE454 80128094 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80128098
/* DE458 80128098 AC85005C */  sw         $a1, 0x5C($a0)
/* DE45C 8012809C 03E00008 */  jr         $ra
/* DE460 801280A0 AC850060 */   sw        $a1, 0x60($a0)

glabel func_race_801280A4
/* DE464 801280A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DE468 801280A8 AFB00010 */  sw         $s0, 0x10($sp)
/* DE46C 801280AC 00808021 */  addu       $s0, $a0, $zero
/* DE470 801280B0 AFBF0018 */  sw         $ra, 0x18($sp)
/* DE474 801280B4 0C048BA0 */  jal        func_race_80122E80
/* DE478 801280B8 AFB10014 */   sw        $s1, 0x14($sp)
/* DE47C 801280BC 26110060 */  addiu      $s1, $s0, 0x60
/* DE480 801280C0 02202821 */  addu       $a1, $s1, $zero
/* DE484 801280C4 8E02005C */  lw         $v0, 0x5C($s0)
/* DE488 801280C8 8E040004 */  lw         $a0, 0x4($s0)
/* DE48C 801280CC 00401821 */  addu       $v1, $v0, $zero
/* DE490 801280D0 AE020060 */  sw         $v0, 0x60($s0)
/* DE494 801280D4 0C04B52A */  jal        func_race_8012D4A8
/* DE498 801280D8 AE030064 */   sw        $v1, 0x64($s0)
/* DE49C 801280DC 8E040004 */  lw         $a0, 0x4($s0)
/* DE4A0 801280E0 02202821 */  addu       $a1, $s1, $zero
/* DE4A4 801280E4 0C04B549 */  jal        func_race_8012D524
/* DE4A8 801280E8 AE020054 */   sw        $v0, 0x54($s0)
/* DE4AC 801280EC AE020058 */  sw         $v0, 0x58($s0)
/* DE4B0 801280F0 8FBF0018 */  lw         $ra, 0x18($sp)
/* DE4B4 801280F4 8FB10014 */  lw         $s1, 0x14($sp)
/* DE4B8 801280F8 8FB00010 */  lw         $s0, 0x10($sp)
/* DE4BC 801280FC 03E00008 */  jr         $ra
/* DE4C0 80128100 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80128104
/* DE4C4 80128104 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE4C8 80128108 AFBF0010 */  sw         $ra, 0x10($sp)
/* DE4CC 8012810C 0C048BA5 */  jal        func_race_80122E94
/* DE4D0 80128110 00000000 */   nop
/* DE4D4 80128114 8FBF0010 */  lw         $ra, 0x10($sp)
/* DE4D8 80128118 03E00008 */  jr         $ra
/* DE4DC 8012811C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80128120
/* DE4E0 80128120 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* DE4E4 80128124 AFB10034 */  sw         $s1, 0x34($sp)
/* DE4E8 80128128 00808821 */  addu       $s1, $a0, $zero
/* DE4EC 8012812C AFBF003C */  sw         $ra, 0x3C($sp)
/* DE4F0 80128130 AFB20038 */  sw         $s2, 0x38($sp)
/* DE4F4 80128134 AFB00030 */  sw         $s0, 0x30($sp)
/* DE4F8 80128138 8E23003C */  lw         $v1, 0x3C($s1)
/* DE4FC 8012813C 24020004 */  addiu      $v0, $zero, 0x4
/* DE500 80128140 1062004D */  beq        $v1, $v0, .Lrace_80128278
/* DE504 80128144 00000000 */   nop
/* DE508 80128148 0C048BAC */  jal        func_race_80122EB0
/* DE50C 8012814C 24120002 */   addiu     $s2, $zero, 0x2
/* DE510 80128150 8E23003C */  lw         $v1, 0x3C($s1)
/* DE514 80128154 10720040 */  beq        $v1, $s2, .Lrace_80128258
/* DE518 80128158 28620003 */   slti      $v0, $v1, 0x3
/* DE51C 8012815C 10400005 */  beqz       $v0, .Lrace_80128174
/* DE520 80128160 24020001 */   addiu     $v0, $zero, 0x1
/* DE524 80128164 10620008 */  beq        $v1, $v0, .Lrace_80128188
/* DE528 80128168 00000000 */   nop
/* DE52C 8012816C 0804A09E */  j          .Lrace_80128278
/* DE530 80128170 00000000 */   nop
.Lrace_80128174:
/* DE534 80128174 24020003 */  addiu      $v0, $zero, 0x3
/* DE538 80128178 1062000C */  beq        $v1, $v0, .Lrace_801281AC
/* DE53C 8012817C 00000000 */   nop
/* DE540 80128180 0804A09E */  j          .Lrace_80128278
/* DE544 80128184 00000000 */   nop
.Lrace_80128188:
/* DE548 80128188 8E22004C */  lw         $v0, 0x4C($s1)
/* DE54C 8012818C 8E230048 */  lw         $v1, 0x48($s1)
/* DE550 80128190 0043102B */  sltu       $v0, $v0, $v1
/* DE554 80128194 14400038 */  bnez       $v0, .Lrace_80128278
/* DE558 80128198 00000000 */   nop
/* DE55C 8012819C 8E220050 */  lw         $v0, 0x50($s1)
/* DE560 801281A0 AE20004C */  sw         $zero, 0x4C($s1)
/* DE564 801281A4 0804A083 */  j          .Lrace_8012820C
/* DE568 801281A8 AE32003C */   sw        $s2, 0x3C($s1)
.Lrace_801281AC:
/* DE56C 801281AC 8E22004C */  lw         $v0, 0x4C($s1)
/* DE570 801281B0 2C4200FB */  sltiu      $v0, $v0, 0xFB
/* DE574 801281B4 14400030 */  bnez       $v0, .Lrace_80128278
/* DE578 801281B8 26300060 */   addiu     $s0, $s1, 0x60
/* DE57C 801281BC 8E240004 */  lw         $a0, 0x4($s1)
/* DE580 801281C0 8E220040 */  lw         $v0, 0x40($s1)
/* DE584 801281C4 8E230064 */  lw         $v1, 0x64($s1)
/* DE588 801281C8 02002821 */  addu       $a1, $s0, $zero
/* DE58C 801281CC AE20004C */  sw         $zero, 0x4C($s1)
/* DE590 801281D0 AE22003C */  sw         $v0, 0x3C($s1)
/* DE594 801281D4 0C04B52A */  jal        func_race_8012D4A8
/* DE598 801281D8 AE230060 */   sw        $v1, 0x60($s1)
/* DE59C 801281DC 8E240004 */  lw         $a0, 0x4($s1)
/* DE5A0 801281E0 02002821 */  addu       $a1, $s0, $zero
/* DE5A4 801281E4 0C04B549 */  jal        func_race_8012D524
/* DE5A8 801281E8 AE220054 */   sw        $v0, 0x54($s1)
/* DE5AC 801281EC 02202021 */  addu       $a0, $s1, $zero
/* DE5B0 801281F0 00002821 */  addu       $a1, $zero, $zero
/* DE5B4 801281F4 0C048BE7 */  jal        func_race_80122F9C
/* DE5B8 801281F8 AE220058 */   sw        $v0, 0x58($s1)
/* DE5BC 801281FC 8E22003C */  lw         $v0, 0x3C($s1)
/* DE5C0 80128200 1452001D */  bne        $v0, $s2, .Lrace_80128278
/* DE5C4 80128204 00000000 */   nop
/* DE5C8 80128208 8E220050 */  lw         $v0, 0x50($s1)
.Lrace_8012820C:
/* DE5CC 8012820C 30420001 */  andi       $v0, $v0, 0x1
/* DE5D0 80128210 10400019 */  beqz       $v0, .Lrace_80128278
/* DE5D4 80128214 26240008 */   addiu     $a0, $s1, 0x8
/* DE5D8 80128218 0C016596 */  jal        func_80059658
/* DE5DC 8012821C 27A50020 */   addiu     $a1, $sp, 0x20
/* DE5E0 80128220 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DE5E4 80128224 3C01800D */  lui        $at, %hi(D_race_800CEC80)
/* DE5E8 80128228 C422EC80 */  lwc1       $f2, %lo(D_race_800CEC80)($at)
/* DE5EC 8012822C 3C01800D */  lui        $at, %hi(D_race_800CEC84)
/* DE5F0 80128230 C420EC84 */  lwc1       $f0, %lo(D_race_800CEC84)($at)
/* DE5F4 80128234 2405000E */  addiu      $a1, $zero, 0xE
/* DE5F8 80128238 E7A20010 */  swc1       $f2, 0x10($sp)
/* DE5FC 8012823C E7A00014 */  swc1       $f0, 0x14($sp)
/* DE600 80128240 E7A00018 */  swc1       $f0, 0x18($sp)
/* DE604 80128244 8E240044 */  lw         $a0, 0x44($s1)
/* DE608 80128248 0C046530 */  jal        func_race_801194C0
/* DE60C 8012824C 27A60020 */   addiu     $a2, $sp, 0x20
/* DE610 80128250 0804A09E */  j          .Lrace_80128278
/* DE614 80128254 00000000 */   nop
.Lrace_80128258:
/* DE618 80128258 8E22004C */  lw         $v0, 0x4C($s1)
/* DE61C 8012825C 2C4201F5 */  sltiu      $v0, $v0, 0x1F5
/* DE620 80128260 14400005 */  bnez       $v0, .Lrace_80128278
/* DE624 80128264 02202021 */   addu      $a0, $s1, $zero
/* DE628 80128268 24050001 */  addiu      $a1, $zero, 0x1
/* DE62C 8012826C AC80003C */  sw         $zero, 0x3C($a0)
/* DE630 80128270 0C048BE7 */  jal        func_race_80122F9C
/* DE634 80128274 AC80004C */   sw        $zero, 0x4C($a0)
.Lrace_80128278:
/* DE638 80128278 8FBF003C */  lw         $ra, 0x3C($sp)
/* DE63C 8012827C 8FB20038 */  lw         $s2, 0x38($sp)
/* DE640 80128280 8FB10034 */  lw         $s1, 0x34($sp)
/* DE644 80128284 8FB00030 */  lw         $s0, 0x30($sp)
/* DE648 80128288 03E00008 */  jr         $ra
/* DE64C 8012828C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_80128290
/* DE650 80128290 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* DE654 80128294 AFB20038 */  sw         $s2, 0x38($sp)
/* DE658 80128298 00809021 */  addu       $s2, $a0, $zero
/* DE65C 8012829C AFBF003C */  sw         $ra, 0x3C($sp)
/* DE660 801282A0 AFB10034 */  sw         $s1, 0x34($sp)
/* DE664 801282A4 AFB00030 */  sw         $s0, 0x30($sp)
/* DE668 801282A8 8E42003C */  lw         $v0, 0x3C($s2)
/* DE66C 801282AC 1440002C */  bnez       $v0, .Lrace_80128360
/* DE670 801282B0 00A02021 */   addu      $a0, $a1, $zero
/* DE674 801282B4 8E450060 */  lw         $a1, 0x60($s2)
/* DE678 801282B8 8C900CCC */  lw         $s0, 0xCCC($a0)
/* DE67C 801282BC 0C043399 */  jal        func_race_8010CE64
/* DE680 801282C0 02008821 */   addu      $s1, $s0, $zero
/* DE684 801282C4 26440008 */  addiu      $a0, $s2, 0x8
/* DE688 801282C8 0C016596 */  jal        func_80059658
/* DE68C 801282CC 27A50020 */   addiu     $a1, $sp, 0x20
/* DE690 801282D0 1600000F */  bnez       $s0, .Lrace_80128310
/* DE694 801282D4 24030002 */   addiu     $v1, $zero, 0x2
/* DE698 801282D8 8E44005C */  lw         $a0, 0x5C($s2)
/* DE69C 801282DC 8E430050 */  lw         $v1, 0x50($s2)
/* DE6A0 801282E0 24020001 */  addiu      $v0, $zero, 0x1
/* DE6A4 801282E4 AE420040 */  sw         $v0, 0x40($s2)
/* DE6A8 801282E8 00621824 */  and        $v1, $v1, $v0
/* DE6AC 801282EC 10600019 */  beqz       $v1, .Lrace_80128354
/* DE6B0 801282F0 AE440064 */   sw        $a0, 0x64($s2)
/* DE6B4 801282F4 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DE6B8 801282F8 3C01800D */  lui        $at, %hi(D_race_800CEC88)
/* DE6BC 801282FC C422EC88 */  lwc1       $f2, %lo(D_race_800CEC88)($at)
/* DE6C0 80128300 3C01800D */  lui        $at, %hi(D_race_800CEC8C)
/* DE6C4 80128304 C420EC8C */  lwc1       $f0, %lo(D_race_800CEC8C)($at)
/* DE6C8 80128308 0804A0CF */  j          .Lrace_8012833C
/* DE6CC 8012830C 24050031 */   addiu     $a1, $zero, 0x31
.Lrace_80128310:
/* DE6D0 80128310 8E420050 */  lw         $v0, 0x50($s2)
/* DE6D4 80128314 AE510064 */  sw         $s1, 0x64($s2)
/* DE6D8 80128318 30420001 */  andi       $v0, $v0, 0x1
/* DE6DC 8012831C 1040000D */  beqz       $v0, .Lrace_80128354
/* DE6E0 80128320 AE430040 */   sw        $v1, 0x40($s2)
/* DE6E4 80128324 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DE6E8 80128328 3C01800D */  lui        $at, %hi(D_race_800CEC90)
/* DE6EC 8012832C C422EC90 */  lwc1       $f2, %lo(D_race_800CEC90)($at)
/* DE6F0 80128330 3C01800D */  lui        $at, %hi(D_race_800CEC94)
/* DE6F4 80128334 C420EC94 */  lwc1       $f0, %lo(D_race_800CEC94)($at)
/* DE6F8 80128338 24050048 */  addiu      $a1, $zero, 0x48
.Lrace_8012833C:
/* DE6FC 8012833C E7A20010 */  swc1       $f2, 0x10($sp)
/* DE700 80128340 E7A00014 */  swc1       $f0, 0x14($sp)
/* DE704 80128344 E7A00018 */  swc1       $f0, 0x18($sp)
/* DE708 80128348 8E440044 */  lw         $a0, 0x44($s2)
/* DE70C 8012834C 0C046530 */  jal        func_race_801194C0
/* DE710 80128350 27A60020 */   addiu     $a2, $sp, 0x20
.Lrace_80128354:
/* DE714 80128354 24020003 */  addiu      $v0, $zero, 0x3
/* DE718 80128358 AE42003C */  sw         $v0, 0x3C($s2)
/* DE71C 8012835C AE40004C */  sw         $zero, 0x4C($s2)
.Lrace_80128360:
/* DE720 80128360 8FBF003C */  lw         $ra, 0x3C($sp)
/* DE724 80128364 8FB20038 */  lw         $s2, 0x38($sp)
/* DE728 80128368 8FB10034 */  lw         $s1, 0x34($sp)
/* DE72C 8012836C 8FB00030 */  lw         $s0, 0x30($sp)
/* DE730 80128370 03E00008 */  jr         $ra
/* DE734 80128374 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_80128378
/* DE738 80128378 AC850054 */  sw         $a1, 0x54($a0)
/* DE73C 8012837C 03E00008 */  jr         $ra
/* DE740 80128380 AC860058 */   sw        $a2, 0x58($a0)

glabel func_race_80128384
/* DE744 80128384 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DE748 80128388 AFB00010 */  sw         $s0, 0x10($sp)
/* DE74C 8012838C 00808021 */  addu       $s0, $a0, $zero
/* DE750 80128390 AFBF0018 */  sw         $ra, 0x18($sp)
/* DE754 80128394 AFB10014 */  sw         $s1, 0x14($sp)
/* DE758 80128398 8E020034 */  lw         $v0, 0x34($s0)
/* DE75C 8012839C 8C44006C */  lw         $a0, 0x6C($v0)
/* DE760 801283A0 14800002 */  bnez       $a0, .Lrace_801283AC
/* DE764 801283A4 00A08821 */   addu      $s1, $a1, $zero
/* DE768 801283A8 8C440078 */  lw         $a0, 0x78($v0)
.Lrace_801283AC:
/* DE76C 801283AC 8E060054 */  lw         $a2, 0x54($s0)
/* DE770 801283B0 0C01543D */  jal        func_800550F4
/* DE774 801283B4 00002821 */   addu      $a1, $zero, $zero
/* DE778 801283B8 02002021 */  addu       $a0, $s0, $zero
/* DE77C 801283BC 0C048C19 */  jal        func_race_80123064
/* DE780 801283C0 02202821 */   addu      $a1, $s1, $zero
/* DE784 801283C4 8FBF0018 */  lw         $ra, 0x18($sp)
/* DE788 801283C8 8FB10014 */  lw         $s1, 0x14($sp)
/* DE78C 801283CC 8FB00010 */  lw         $s0, 0x10($sp)
/* DE790 801283D0 03E00008 */  jr         $ra
/* DE794 801283D4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801283D8
/* DE798 801283D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DE79C 801283DC AFB00010 */  sw         $s0, 0x10($sp)
/* DE7A0 801283E0 00808021 */  addu       $s0, $a0, $zero
/* DE7A4 801283E4 AFBF0018 */  sw         $ra, 0x18($sp)
/* DE7A8 801283E8 AFB10014 */  sw         $s1, 0x14($sp)
/* DE7AC 801283EC 8E020038 */  lw         $v0, 0x38($s0)
/* DE7B0 801283F0 8C44006C */  lw         $a0, 0x6C($v0)
/* DE7B4 801283F4 14800002 */  bnez       $a0, .Lrace_80128400
/* DE7B8 801283F8 00A08821 */   addu      $s1, $a1, $zero
/* DE7BC 801283FC 8C440078 */  lw         $a0, 0x78($v0)
.Lrace_80128400:
/* DE7C0 80128400 8E060058 */  lw         $a2, 0x58($s0)
/* DE7C4 80128404 0C01543D */  jal        func_800550F4
/* DE7C8 80128408 00002821 */   addu      $a1, $zero, $zero
/* DE7CC 8012840C 02002021 */  addu       $a0, $s0, $zero
/* DE7D0 80128410 0C048C85 */  jal        func_race_80123214
/* DE7D4 80128414 02202821 */   addu      $a1, $s1, $zero
/* DE7D8 80128418 8FBF0018 */  lw         $ra, 0x18($sp)
/* DE7DC 8012841C 8FB10014 */  lw         $s1, 0x14($sp)
/* DE7E0 80128420 8FB00010 */  lw         $s0, 0x10($sp)
/* DE7E4 80128424 03E00008 */  jr         $ra
/* DE7E8 80128428 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012842C
/* DE7EC 8012842C 8C820060 */  lw         $v0, 0x60($a0)
/* DE7F0 80128430 03E00008 */  jr         $ra
/* DE7F4 80128434 00000000 */   nop
