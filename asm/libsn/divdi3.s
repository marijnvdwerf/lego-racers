.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __divdi3
/* 24C70 80024070 04810008 */  bgez       $a0, .L80024094
/* 24C74 80024074 0000C021 */   addu      $t8, $zero, $zero
/* 24C78 80024078 2418FFFF */  addiu      $t8, $zero, -0x1
/* 24C7C 8002407C 00054823 */  negu       $t1, $a1
/* 24C80 80024080 00041823 */  negu       $v1, $a0
/* 24C84 80024084 0009102B */  sltu       $v0, $zero, $t1
/* 24C88 80024088 00624023 */  subu       $t0, $v1, $v0
/* 24C8C 8002408C 01002021 */  addu       $a0, $t0, $zero
/* 24C90 80024090 01202821 */  addu       $a1, $t1, $zero
.L80024094:
/* 24C94 80024094 04C10009 */  bgez       $a2, .L800240BC
/* 24C98 80024098 00E04821 */   addu      $t1, $a3, $zero
/* 24C9C 8002409C 0018C027 */  nor        $t8, $zero, $t8
/* 24CA0 800240A0 00075823 */  negu       $t3, $a3
/* 24CA4 800240A4 00061823 */  negu       $v1, $a2
/* 24CA8 800240A8 000B102B */  sltu       $v0, $zero, $t3
/* 24CAC 800240AC 00625023 */  subu       $t2, $v1, $v0
/* 24CB0 800240B0 01403021 */  addu       $a2, $t2, $zero
/* 24CB4 800240B4 01603821 */  addu       $a3, $t3, $zero
/* 24CB8 800240B8 00E04821 */  addu       $t1, $a3, $zero
.L800240BC:
/* 24CBC 800240BC 00C04021 */  addu       $t0, $a2, $zero
/* 24CC0 800240C0 150000E8 */  bnez       $t0, .L80024464
/* 24CC4 800240C4 00A05821 */   addu      $t3, $a1, $zero
/* 24CC8 800240C8 0089102B */  sltu       $v0, $a0, $t1
/* 24CCC 800240CC 10400051 */  beqz       $v0, .L80024214
/* 24CD0 800240D0 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 24CD4 800240D4 0049102B */  sltu       $v0, $v0, $t1
/* 24CD8 800240D8 14400005 */  bnez       $v0, .L800240F0
/* 24CDC 800240DC 00E01821 */   addu      $v1, $a3, $zero
/* 24CE0 800240E0 2D220100 */  sltiu      $v0, $t1, 0x100
/* 24CE4 800240E4 38420001 */  xori       $v0, $v0, 0x1
/* 24CE8 800240E8 08009042 */  j          .L80024108
/* 24CEC 800240EC 000240C0 */   sll       $t0, $v0, 3
.L800240F0:
/* 24CF0 800240F0 3C0200FF */  lui        $v0, (0xFFFFFF >> 16)
/* 24CF4 800240F4 3442FFFF */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 24CF8 800240F8 0049102B */  sltu       $v0, $v0, $t1
/* 24CFC 800240FC 14400002 */  bnez       $v0, .L80024108
/* 24D00 80024100 24080018 */   addiu     $t0, $zero, 0x18
/* 24D04 80024104 24080010 */  addiu      $t0, $zero, 0x10
.L80024108:
/* 24D08 80024108 3C028000 */  lui        $v0, %hi(__clz_tab)
/* 24D0C 8002410C 24421150 */  addiu      $v0, $v0, %lo(__clz_tab)
/* 24D10 80024110 01031806 */  srlv       $v1, $v1, $t0
/* 24D14 80024114 00621821 */  addu       $v1, $v1, $v0
/* 24D18 80024118 90620000 */  lbu        $v0, 0x0($v1)
/* 24D1C 8002411C 24050020 */  addiu      $a1, $zero, 0x20
/* 24D20 80024120 00481021 */  addu       $v0, $v0, $t0
/* 24D24 80024124 00A23023 */  subu       $a2, $a1, $v0
/* 24D28 80024128 10C00006 */  beqz       $a2, .L80024144
/* 24D2C 8002412C 00C41804 */   sllv      $v1, $a0, $a2
/* 24D30 80024130 00C94804 */  sllv       $t1, $t1, $a2
/* 24D34 80024134 00A61023 */  subu       $v0, $a1, $a2
/* 24D38 80024138 004B1006 */  srlv       $v0, $t3, $v0
/* 24D3C 8002413C 00622025 */  or         $a0, $v1, $v0
/* 24D40 80024140 00CB5804 */  sllv       $t3, $t3, $a2
.L80024144:
/* 24D44 80024144 00093402 */  srl        $a2, $t1, 16
/* 24D48 80024148 0086001B */  divu       $zero, $a0, $a2
/* 24D4C 8002414C 14C00002 */  bnez       $a2, .L80024158
/* 24D50 80024150 00000000 */   nop
/* 24D54 80024154 0007000D */  break      7
.L80024158:
/* 24D58 80024158 00003812 */  mflo       $a3
/* 24D5C 8002415C 00001810 */  mfhi       $v1
/* 24D60 80024160 3128FFFF */  andi       $t0, $t1, 0xFFFF
/* 24D64 80024164 00000000 */  nop
/* 24D68 80024168 00E80018 */  mult       $a3, $t0
/* 24D6C 8002416C 000B1402 */  srl        $v0, $t3, 16
/* 24D70 80024170 00031C00 */  sll        $v1, $v1, 16
/* 24D74 80024174 00621825 */  or         $v1, $v1, $v0
/* 24D78 80024178 00002812 */  mflo       $a1
/* 24D7C 8002417C 0065102B */  sltu       $v0, $v1, $a1
/* 24D80 80024180 5040000B */  beql       $v0, $zero, .L800241B0
/* 24D84 80024184 00651823 */   subu      $v1, $v1, $a1
/* 24D88 80024188 00691821 */  addu       $v1, $v1, $t1
/* 24D8C 8002418C 0069102B */  sltu       $v0, $v1, $t1
/* 24D90 80024190 14400006 */  bnez       $v0, .L800241AC
/* 24D94 80024194 24E7FFFF */   addiu     $a3, $a3, -0x1
/* 24D98 80024198 0065102B */  sltu       $v0, $v1, $a1
/* 24D9C 8002419C 50400004 */  beql       $v0, $zero, .L800241B0
/* 24DA0 800241A0 00651823 */   subu      $v1, $v1, $a1
/* 24DA4 800241A4 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 24DA8 800241A8 00691821 */  addu       $v1, $v1, $t1
.L800241AC:
/* 24DAC 800241AC 00651823 */  subu       $v1, $v1, $a1
.L800241B0:
/* 24DB0 800241B0 0066001B */  divu       $zero, $v1, $a2
/* 24DB4 800241B4 14C00002 */  bnez       $a2, .L800241C0
/* 24DB8 800241B8 00000000 */   nop
/* 24DBC 800241BC 0007000D */  break      7
.L800241C0:
/* 24DC0 800241C0 00002012 */  mflo       $a0
/* 24DC4 800241C4 00001810 */  mfhi       $v1
/* 24DC8 800241C8 00000000 */  nop
/* 24DCC 800241CC 00000000 */  nop
/* 24DD0 800241D0 00880018 */  mult       $a0, $t0
/* 24DD4 800241D4 3162FFFF */  andi       $v0, $t3, 0xFFFF
/* 24DD8 800241D8 00031C00 */  sll        $v1, $v1, 16
/* 24DDC 800241DC 00621825 */  or         $v1, $v1, $v0
/* 24DE0 800241E0 00002812 */  mflo       $a1
/* 24DE4 800241E4 0065102B */  sltu       $v0, $v1, $a1
/* 24DE8 800241E8 10400007 */  beqz       $v0, .L80024208
/* 24DEC 800241EC 00691821 */   addu      $v1, $v1, $t1
/* 24DF0 800241F0 0069102B */  sltu       $v0, $v1, $t1
/* 24DF4 800241F4 14400004 */  bnez       $v0, .L80024208
/* 24DF8 800241F8 2484FFFF */   addiu     $a0, $a0, -0x1
/* 24DFC 800241FC 0065102B */  sltu       $v0, $v1, $a1
/* 24E00 80024200 54400001 */  bnel       $v0, $zero, .L80024208
/* 24E04 80024204 2484FFFF */   addiu     $a0, $a0, -0x1
.L80024208:
/* 24E08 80024208 00071400 */  sll        $v0, $a3, 16
/* 24E0C 8002420C 08009189 */  j          .L80024624
/* 24E10 80024210 00443025 */   or        $a2, $v0, $a0
.L80024214:
/* 24E14 80024214 15200009 */  bnez       $t1, .L8002423C
/* 24E18 80024218 0049102B */   sltu      $v0, $v0, $t1
/* 24E1C 8002421C 24020001 */  addiu      $v0, $zero, 0x1
/* 24E20 80024220 0048001B */  divu       $zero, $v0, $t0
/* 24E24 80024224 15000002 */  bnez       $t0, .L80024230
/* 24E28 80024228 00000000 */   nop
/* 24E2C 8002422C 0007000D */  break      7
.L80024230:
/* 24E30 80024230 00004812 */  mflo       $t1
/* 24E34 80024234 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 24E38 80024238 0049102B */  sltu       $v0, $v0, $t1
.L8002423C:
/* 24E3C 8002423C 14400005 */  bnez       $v0, .L80024254
/* 24E40 80024240 01201821 */   addu      $v1, $t1, $zero
/* 24E44 80024244 2D220100 */  sltiu      $v0, $t1, 0x100
/* 24E48 80024248 38420001 */  xori       $v0, $v0, 0x1
/* 24E4C 8002424C 0800909B */  j          .L8002426C
/* 24E50 80024250 000230C0 */   sll       $a2, $v0, 3
.L80024254:
/* 24E54 80024254 3C0200FF */  lui        $v0, (0xFFFFFF >> 16)
/* 24E58 80024258 3442FFFF */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 24E5C 8002425C 0049102B */  sltu       $v0, $v0, $t1
/* 24E60 80024260 14400002 */  bnez       $v0, .L8002426C
/* 24E64 80024264 24060018 */   addiu     $a2, $zero, 0x18
/* 24E68 80024268 24060010 */  addiu      $a2, $zero, 0x10
.L8002426C:
/* 24E6C 8002426C 3C028000 */  lui        $v0, %hi(__clz_tab)
/* 24E70 80024270 24421150 */  addiu      $v0, $v0, %lo(__clz_tab)
/* 24E74 80024274 00C31806 */  srlv       $v1, $v1, $a2
/* 24E78 80024278 00621821 */  addu       $v1, $v1, $v0
/* 24E7C 8002427C 90620000 */  lbu        $v0, 0x0($v1)
/* 24E80 80024280 24030020 */  addiu      $v1, $zero, 0x20
/* 24E84 80024284 00461021 */  addu       $v0, $v0, $a2
/* 24E88 80024288 00623023 */  subu       $a2, $v1, $v0
/* 24E8C 8002428C 14C00004 */  bnez       $a2, .L800242A0
/* 24E90 80024290 00662823 */   subu      $a1, $v1, $a2
/* 24E94 80024294 00892023 */  subu       $a0, $a0, $t1
/* 24E98 80024298 080090E5 */  j          .L80024394
/* 24E9C 8002429C 240A0001 */   addiu     $t2, $zero, 0x1
.L800242A0:
/* 24EA0 800242A0 00C94804 */  sllv       $t1, $t1, $a2
/* 24EA4 800242A4 00A43806 */  srlv       $a3, $a0, $a1
/* 24EA8 800242A8 00C41804 */  sllv       $v1, $a0, $a2
/* 24EAC 800242AC 00AB1006 */  srlv       $v0, $t3, $a1
/* 24EB0 800242B0 00622025 */  or         $a0, $v1, $v0
/* 24EB4 800242B4 00CB5804 */  sllv       $t3, $t3, $a2
/* 24EB8 800242B8 00093402 */  srl        $a2, $t1, 16
/* 24EBC 800242BC 00E6001B */  divu       $zero, $a3, $a2
/* 24EC0 800242C0 14C00002 */  bnez       $a2, .L800242CC
/* 24EC4 800242C4 00000000 */   nop
/* 24EC8 800242C8 0007000D */  break      7
.L800242CC:
/* 24ECC 800242CC 00004012 */  mflo       $t0
/* 24ED0 800242D0 00001810 */  mfhi       $v1
/* 24ED4 800242D4 3125FFFF */  andi       $a1, $t1, 0xFFFF
/* 24ED8 800242D8 00000000 */  nop
/* 24EDC 800242DC 01050018 */  mult       $t0, $a1
/* 24EE0 800242E0 00041402 */  srl        $v0, $a0, 16
/* 24EE4 800242E4 00031C00 */  sll        $v1, $v1, 16
/* 24EE8 800242E8 00621825 */  or         $v1, $v1, $v0
/* 24EEC 800242EC 00003812 */  mflo       $a3
/* 24EF0 800242F0 0067102B */  sltu       $v0, $v1, $a3
/* 24EF4 800242F4 5040000B */  beql       $v0, $zero, .L80024324
/* 24EF8 800242F8 00671823 */   subu      $v1, $v1, $a3
/* 24EFC 800242FC 00691821 */  addu       $v1, $v1, $t1
/* 24F00 80024300 0069102B */  sltu       $v0, $v1, $t1
/* 24F04 80024304 14400006 */  bnez       $v0, .L80024320
/* 24F08 80024308 2508FFFF */   addiu     $t0, $t0, -0x1
/* 24F0C 8002430C 0067102B */  sltu       $v0, $v1, $a3
/* 24F10 80024310 50400004 */  beql       $v0, $zero, .L80024324
/* 24F14 80024314 00671823 */   subu      $v1, $v1, $a3
/* 24F18 80024318 2508FFFF */  addiu      $t0, $t0, -0x1
/* 24F1C 8002431C 00691821 */  addu       $v1, $v1, $t1
.L80024320:
/* 24F20 80024320 00671823 */  subu       $v1, $v1, $a3
.L80024324:
/* 24F24 80024324 0066001B */  divu       $zero, $v1, $a2
/* 24F28 80024328 14C00002 */  bnez       $a2, .L80024334
/* 24F2C 8002432C 00000000 */   nop
/* 24F30 80024330 0007000D */  break      7
.L80024334:
/* 24F34 80024334 00003012 */  mflo       $a2
/* 24F38 80024338 00001810 */  mfhi       $v1
/* 24F3C 8002433C 00000000 */  nop
/* 24F40 80024340 00000000 */  nop
/* 24F44 80024344 00C50018 */  mult       $a2, $a1
/* 24F48 80024348 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 24F4C 8002434C 00031C00 */  sll        $v1, $v1, 16
/* 24F50 80024350 00621825 */  or         $v1, $v1, $v0
/* 24F54 80024354 00003812 */  mflo       $a3
/* 24F58 80024358 0067102B */  sltu       $v0, $v1, $a3
/* 24F5C 8002435C 1040000B */  beqz       $v0, .L8002438C
/* 24F60 80024360 00081400 */   sll       $v0, $t0, 16
/* 24F64 80024364 00691821 */  addu       $v1, $v1, $t1
/* 24F68 80024368 0069102B */  sltu       $v0, $v1, $t1
/* 24F6C 8002436C 14400006 */  bnez       $v0, .L80024388
/* 24F70 80024370 24C6FFFF */   addiu     $a2, $a2, -0x1
/* 24F74 80024374 0067102B */  sltu       $v0, $v1, $a3
/* 24F78 80024378 10400004 */  beqz       $v0, .L8002438C
/* 24F7C 8002437C 00081400 */   sll       $v0, $t0, 16
/* 24F80 80024380 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 24F84 80024384 00691821 */  addu       $v1, $v1, $t1
.L80024388:
/* 24F88 80024388 00081400 */  sll        $v0, $t0, 16
.L8002438C:
/* 24F8C 8002438C 00465025 */  or         $t2, $v0, $a2
/* 24F90 80024390 00672023 */  subu       $a0, $v1, $a3
.L80024394:
/* 24F94 80024394 00093402 */  srl        $a2, $t1, 16
/* 24F98 80024398 0086001B */  divu       $zero, $a0, $a2
/* 24F9C 8002439C 14C00002 */  bnez       $a2, .L800243A8
/* 24FA0 800243A0 00000000 */   nop
/* 24FA4 800243A4 0007000D */  break      7
.L800243A8:
/* 24FA8 800243A8 00003812 */  mflo       $a3
/* 24FAC 800243AC 00001810 */  mfhi       $v1
/* 24FB0 800243B0 3128FFFF */  andi       $t0, $t1, 0xFFFF
/* 24FB4 800243B4 00000000 */  nop
/* 24FB8 800243B8 00E80018 */  mult       $a3, $t0
/* 24FBC 800243BC 000B1402 */  srl        $v0, $t3, 16
/* 24FC0 800243C0 00031C00 */  sll        $v1, $v1, 16
/* 24FC4 800243C4 00621825 */  or         $v1, $v1, $v0
/* 24FC8 800243C8 00002812 */  mflo       $a1
/* 24FCC 800243CC 0065102B */  sltu       $v0, $v1, $a1
/* 24FD0 800243D0 5040000B */  beql       $v0, $zero, .L80024400
/* 24FD4 800243D4 00651823 */   subu      $v1, $v1, $a1
/* 24FD8 800243D8 00691821 */  addu       $v1, $v1, $t1
/* 24FDC 800243DC 0069102B */  sltu       $v0, $v1, $t1
/* 24FE0 800243E0 14400006 */  bnez       $v0, .L800243FC
/* 24FE4 800243E4 24E7FFFF */   addiu     $a3, $a3, -0x1
/* 24FE8 800243E8 0065102B */  sltu       $v0, $v1, $a1
/* 24FEC 800243EC 50400004 */  beql       $v0, $zero, .L80024400
/* 24FF0 800243F0 00651823 */   subu      $v1, $v1, $a1
/* 24FF4 800243F4 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 24FF8 800243F8 00691821 */  addu       $v1, $v1, $t1
.L800243FC:
/* 24FFC 800243FC 00651823 */  subu       $v1, $v1, $a1
.L80024400:
/* 25000 80024400 0066001B */  divu       $zero, $v1, $a2
/* 25004 80024404 14C00002 */  bnez       $a2, .L80024410
/* 25008 80024408 00000000 */   nop
/* 2500C 8002440C 0007000D */  break      7
.L80024410:
/* 25010 80024410 00002012 */  mflo       $a0
/* 25014 80024414 00001810 */  mfhi       $v1
/* 25018 80024418 00000000 */  nop
/* 2501C 8002441C 00000000 */  nop
/* 25020 80024420 00880018 */  mult       $a0, $t0
/* 25024 80024424 3162FFFF */  andi       $v0, $t3, 0xFFFF
/* 25028 80024428 00031C00 */  sll        $v1, $v1, 16
/* 2502C 8002442C 00621825 */  or         $v1, $v1, $v0
/* 25030 80024430 00002812 */  mflo       $a1
/* 25034 80024434 0065102B */  sltu       $v0, $v1, $a1
/* 25038 80024438 10400007 */  beqz       $v0, .L80024458
/* 2503C 8002443C 00691821 */   addu      $v1, $v1, $t1
/* 25040 80024440 0069102B */  sltu       $v0, $v1, $t1
/* 25044 80024444 14400004 */  bnez       $v0, .L80024458
/* 25048 80024448 2484FFFF */   addiu     $a0, $a0, -0x1
/* 2504C 8002444C 0065102B */  sltu       $v0, $v1, $a1
/* 25050 80024450 54400001 */  bnel       $v0, $zero, .L80024458
/* 25054 80024454 2484FFFF */   addiu     $a0, $a0, -0x1
.L80024458:
/* 25058 80024458 00071400 */  sll        $v0, $a3, 16
/* 2505C 8002445C 0800918A */  j          .L80024628
/* 25060 80024460 00443025 */   or        $a2, $v0, $a0
.L80024464:
/* 25064 80024464 0088102B */  sltu       $v0, $a0, $t0
/* 25068 80024468 10400003 */  beqz       $v0, .L80024478
/* 2506C 8002446C 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 25070 80024470 08009189 */  j          .L80024624
/* 25074 80024474 00003021 */   addu      $a2, $zero, $zero
.L80024478:
/* 25078 80024478 0048102B */  sltu       $v0, $v0, $t0
/* 2507C 8002447C 14400005 */  bnez       $v0, .L80024494
/* 25080 80024480 01001821 */   addu      $v1, $t0, $zero
/* 25084 80024484 2D020100 */  sltiu      $v0, $t0, 0x100
/* 25088 80024488 38420001 */  xori       $v0, $v0, 0x1
/* 2508C 8002448C 0800912B */  j          .L800244AC
/* 25090 80024490 000230C0 */   sll       $a2, $v0, 3
.L80024494:
/* 25094 80024494 3C0200FF */  lui        $v0, (0xFFFFFF >> 16)
/* 25098 80024498 3442FFFF */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 2509C 8002449C 0048102B */  sltu       $v0, $v0, $t0
/* 250A0 800244A0 14400002 */  bnez       $v0, .L800244AC
/* 250A4 800244A4 24060018 */   addiu     $a2, $zero, 0x18
/* 250A8 800244A8 24060010 */  addiu      $a2, $zero, 0x10
.L800244AC:
/* 250AC 800244AC 3C028000 */  lui        $v0, %hi(__clz_tab)
/* 250B0 800244B0 24421150 */  addiu      $v0, $v0, %lo(__clz_tab)
/* 250B4 800244B4 00C31806 */  srlv       $v1, $v1, $a2
/* 250B8 800244B8 00621821 */  addu       $v1, $v1, $v0
/* 250BC 800244BC 90620000 */  lbu        $v0, 0x0($v1)
/* 250C0 800244C0 24030020 */  addiu      $v1, $zero, 0x20
/* 250C4 800244C4 00461021 */  addu       $v0, $v0, $a2
/* 250C8 800244C8 00623023 */  subu       $a2, $v1, $v0
/* 250CC 800244CC 14C00009 */  bnez       $a2, .L800244F4
/* 250D0 800244D0 00662823 */   subu      $a1, $v1, $a2
/* 250D4 800244D4 0104102B */  sltu       $v0, $t0, $a0
/* 250D8 800244D8 14400052 */  bnez       $v0, .L80024624
/* 250DC 800244DC 24060001 */   addiu     $a2, $zero, 0x1
/* 250E0 800244E0 0169102B */  sltu       $v0, $t3, $t1
/* 250E4 800244E4 1440004F */  bnez       $v0, .L80024624
/* 250E8 800244E8 00003021 */   addu      $a2, $zero, $zero
/* 250EC 800244EC 08009189 */  j          .L80024624
/* 250F0 800244F0 24060001 */   addiu     $a2, $zero, 0x1
.L800244F4:
/* 250F4 800244F4 00C81804 */  sllv       $v1, $t0, $a2
/* 250F8 800244F8 00A91006 */  srlv       $v0, $t1, $a1
/* 250FC 800244FC 00624025 */  or         $t0, $v1, $v0
/* 25100 80024500 00C94804 */  sllv       $t1, $t1, $a2
/* 25104 80024504 00A43806 */  srlv       $a3, $a0, $a1
/* 25108 80024508 00C41804 */  sllv       $v1, $a0, $a2
/* 2510C 8002450C 00AB1006 */  srlv       $v0, $t3, $a1
/* 25110 80024510 00622025 */  or         $a0, $v1, $v0
/* 25114 80024514 00CB5804 */  sllv       $t3, $t3, $a2
/* 25118 80024518 00083402 */  srl        $a2, $t0, 16
/* 2511C 8002451C 00E6001B */  divu       $zero, $a3, $a2
/* 25120 80024520 14C00002 */  bnez       $a2, .L8002452C
/* 25124 80024524 00000000 */   nop
/* 25128 80024528 0007000D */  break      7
.L8002452C:
/* 2512C 8002452C 00005012 */  mflo       $t2
/* 25130 80024530 00001810 */  mfhi       $v1
/* 25134 80024534 3105FFFF */  andi       $a1, $t0, 0xFFFF
/* 25138 80024538 00000000 */  nop
/* 2513C 8002453C 01450018 */  mult       $t2, $a1
/* 25140 80024540 00041402 */  srl        $v0, $a0, 16
/* 25144 80024544 00031C00 */  sll        $v1, $v1, 16
/* 25148 80024548 00621825 */  or         $v1, $v1, $v0
/* 2514C 8002454C 00003812 */  mflo       $a3
/* 25150 80024550 0067102B */  sltu       $v0, $v1, $a3
/* 25154 80024554 5040000B */  beql       $v0, $zero, .L80024584
/* 25158 80024558 00671823 */   subu      $v1, $v1, $a3
/* 2515C 8002455C 00681821 */  addu       $v1, $v1, $t0
/* 25160 80024560 0068102B */  sltu       $v0, $v1, $t0
/* 25164 80024564 14400006 */  bnez       $v0, .L80024580
/* 25168 80024568 254AFFFF */   addiu     $t2, $t2, -0x1
/* 2516C 8002456C 0067102B */  sltu       $v0, $v1, $a3
/* 25170 80024570 50400004 */  beql       $v0, $zero, .L80024584
/* 25174 80024574 00671823 */   subu      $v1, $v1, $a3
/* 25178 80024578 254AFFFF */  addiu      $t2, $t2, -0x1
/* 2517C 8002457C 00681821 */  addu       $v1, $v1, $t0
.L80024580:
/* 25180 80024580 00671823 */  subu       $v1, $v1, $a3
.L80024584:
/* 25184 80024584 0066001B */  divu       $zero, $v1, $a2
/* 25188 80024588 14C00002 */  bnez       $a2, .L80024594
/* 2518C 8002458C 00000000 */   nop
/* 25190 80024590 0007000D */  break      7
.L80024594:
/* 25194 80024594 00003012 */  mflo       $a2
/* 25198 80024598 00001810 */  mfhi       $v1
/* 2519C 8002459C 00000000 */  nop
/* 251A0 800245A0 00000000 */  nop
/* 251A4 800245A4 00C50018 */  mult       $a2, $a1
/* 251A8 800245A8 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* 251AC 800245AC 00031C00 */  sll        $v1, $v1, 16
/* 251B0 800245B0 00621825 */  or         $v1, $v1, $v0
/* 251B4 800245B4 00003812 */  mflo       $a3
/* 251B8 800245B8 0067102B */  sltu       $v0, $v1, $a3
/* 251BC 800245BC 1040000B */  beqz       $v0, .L800245EC
/* 251C0 800245C0 000A1400 */   sll       $v0, $t2, 16
/* 251C4 800245C4 00681821 */  addu       $v1, $v1, $t0
/* 251C8 800245C8 0068102B */  sltu       $v0, $v1, $t0
/* 251CC 800245CC 14400006 */  bnez       $v0, .L800245E8
/* 251D0 800245D0 24C6FFFF */   addiu     $a2, $a2, -0x1
/* 251D4 800245D4 0067102B */  sltu       $v0, $v1, $a3
/* 251D8 800245D8 10400004 */  beqz       $v0, .L800245EC
/* 251DC 800245DC 000A1400 */   sll       $v0, $t2, 16
/* 251E0 800245E0 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 251E4 800245E4 00681821 */  addu       $v1, $v1, $t0
.L800245E8:
/* 251E8 800245E8 000A1400 */  sll        $v0, $t2, 16
.L800245EC:
/* 251EC 800245EC 00463025 */  or         $a2, $v0, $a2
/* 251F0 800245F0 00672023 */  subu       $a0, $v1, $a3
/* 251F4 800245F4 00C90019 */  multu      $a2, $t1
/* 251F8 800245F8 00001810 */  mfhi       $v1
/* 251FC 800245FC 0083102B */  sltu       $v0, $a0, $v1
/* 25200 80024600 00004012 */  mflo       $t0
/* 25204 80024604 54400007 */  bnel       $v0, $zero, .L80024624
/* 25208 80024608 24C6FFFF */   addiu     $a2, $a2, -0x1
/* 2520C 8002460C 14640006 */  bne        $v1, $a0, .L80024628
/* 25210 80024610 00005021 */   addu      $t2, $zero, $zero
/* 25214 80024614 0168102B */  sltu       $v0, $t3, $t0
/* 25218 80024618 10400004 */  beqz       $v0, .L8002462C
/* 2521C 8002461C 00C07821 */   addu      $t7, $a2, $zero
/* 25220 80024620 24C6FFFF */  addiu      $a2, $a2, -0x1
.L80024624:
/* 25224 80024624 00005021 */  addu       $t2, $zero, $zero
.L80024628:
/* 25228 80024628 00C07821 */  addu       $t7, $a2, $zero
.L8002462C:
/* 2522C 8002462C 01407021 */  addu       $t6, $t2, $zero
/* 25230 80024630 01C01021 */  addu       $v0, $t6, $zero
/* 25234 80024634 13000007 */  beqz       $t8, .L80024654
/* 25238 80024638 01E01821 */   addu      $v1, $t7, $zero
/* 2523C 8002463C 00036823 */  negu       $t5, $v1
/* 25240 80024640 00021823 */  negu       $v1, $v0
/* 25244 80024644 000D102B */  sltu       $v0, $zero, $t5
/* 25248 80024648 00626023 */  subu       $t4, $v1, $v0
/* 2524C 8002464C 01801021 */  addu       $v0, $t4, $zero
/* 25250 80024650 01A01821 */  addu       $v1, $t5, $zero
.L80024654:
/* 25254 80024654 03E00008 */  jr         $ra
/* 25258 80024658 00000000 */   nop
