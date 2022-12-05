.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8006FFD0
/* 67300 8006FFD0 00801021 */  addu       $v0, $a0, $zero
/* 67304 8006FFD4 3C038004 */  lui        $v1, %hi(D_8003F098)
/* 67308 8006FFD8 2463F098 */  addiu      $v1, $v1, %lo(D_8003F098)
/* 6730C 8006FFDC AC430000 */  sw         $v1, 0x0($v0)
/* 67310 8006FFE0 AC400004 */  sw         $zero, 0x4($v0)
/* 67314 8006FFE4 03E00008 */  jr         $ra
/* 67318 8006FFE8 AC400008 */   sw        $zero, 0x8($v0)

glabel func_8006FFEC
/* 6731C 8006FFEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 67320 8006FFF0 AFB10014 */  sw         $s1, 0x14($sp)
/* 67324 8006FFF4 00808821 */  addu       $s1, $a0, $zero
/* 67328 8006FFF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 6732C 8006FFFC 00A08021 */  addu       $s0, $a1, $zero
/* 67330 80070000 3C028004 */  lui        $v0, %hi(D_8003F098)
/* 67334 80070004 2442F098 */  addiu      $v0, $v0, %lo(D_8003F098)
/* 67338 80070008 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6733C 8007000C 0C01C03E */  jal        func_800700F8
/* 67340 80070010 AE220000 */   sw        $v0, 0x0($s1)
/* 67344 80070014 32100001 */  andi       $s0, $s0, 0x1
/* 67348 80070018 12000003 */  beqz       $s0, .L80070028
/* 6734C 8007001C 00000000 */   nop
/* 67350 80070020 0C01FB5C */  jal        func_8007ED70
/* 67354 80070024 02202021 */   addu      $a0, $s1, $zero
.L80070028:
/* 67358 80070028 8FBF0018 */  lw         $ra, 0x18($sp)
/* 6735C 8007002C 8FB10014 */  lw         $s1, 0x14($sp)
/* 67360 80070030 8FB00010 */  lw         $s0, 0x10($sp)
/* 67364 80070034 03E00008 */  jr         $ra
/* 67368 80070038 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007003C
/* 6736C 8007003C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 67370 80070040 AFB00010 */  sw         $s0, 0x10($sp)
/* 67374 80070044 00808021 */  addu       $s0, $a0, $zero
/* 67378 80070048 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6737C 8007004C AFB10014 */  sw         $s1, 0x14($sp)
/* 67380 80070050 8E020004 */  lw         $v0, 0x4($s0)
/* 67384 80070054 10400003 */  beqz       $v0, .L80070064
/* 67388 80070058 00A08821 */   addu      $s1, $a1, $zero
/* 6738C 8007005C 0C01C03E */  jal        func_800700F8
/* 67390 80070060 00000000 */   nop
.L80070064:
/* 67394 80070064 3C028008 */  lui        $v0, %hi(D_80085E90)
/* 67398 80070068 8C445E90 */  lw         $a0, %lo(D_80085E90)($v0)
/* 6739C 8007006C 96230016 */  lhu        $v1, 0x16($s1)
/* 673A0 80070070 24020001 */  addiu      $v0, $zero, 0x1
/* 673A4 80070074 00621004 */  sllv       $v0, $v0, $v1
/* 673A8 80070078 0C01FB65 */  jal        func_8007ED94
/* 673AC 8007007C AE020008 */   sw        $v0, 0x8($s0)
/* 673B0 80070080 8E040008 */  lw         $a0, 0x8($s0)
/* 673B4 80070084 0C00943C */  jal        func_800250F0
/* 673B8 80070088 00042040 */   sll       $a0, $a0, 1
/* 673BC 8007008C 0C01FB72 */  jal        func_8007EDC8
/* 673C0 80070090 AE020004 */   sw        $v0, 0x4($s0)
/* 673C4 80070094 8E020004 */  lw         $v0, 0x4($s0)
/* 673C8 80070098 14400006 */  bnez       $v0, .L800700B4
/* 673CC 8007009C 3C048004 */   lui       $a0, %hi(D_8003F090)
/* 673D0 800700A0 2484F090 */  addiu      $a0, $a0, %lo(D_8003F090)
/* 673D4 800700A4 00002821 */  addu       $a1, $zero, $zero
/* 673D8 800700A8 00A03021 */  addu       $a2, $a1, $zero
/* 673DC 800700AC 0C011ACF */  jal        func_80046B3C
/* 673E0 800700B0 00A03821 */   addu      $a3, $a1, $zero
.L800700B4:
/* 673E4 800700B4 8E020008 */  lw         $v0, 0x8($s0)
/* 673E8 800700B8 1040000A */  beqz       $v0, .L800700E4
/* 673EC 800700BC 00002021 */   addu      $a0, $zero, $zero
.L800700C0:
/* 673F0 800700C0 8E020004 */  lw         $v0, 0x4($s0)
/* 673F4 800700C4 00041840 */  sll        $v1, $a0, 1
/* 673F8 800700C8 00621821 */  addu       $v1, $v1, $v0
/* 673FC 800700CC A4600000 */  sh         $zero, 0x0($v1)
/* 67400 800700D0 8E020008 */  lw         $v0, 0x8($s0)
/* 67404 800700D4 24840001 */  addiu      $a0, $a0, 0x1
/* 67408 800700D8 0082102B */  sltu       $v0, $a0, $v0
/* 6740C 800700DC 1440FFF8 */  bnez       $v0, .L800700C0
/* 67410 800700E0 00000000 */   nop
.L800700E4:
/* 67414 800700E4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 67418 800700E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 6741C 800700EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 67420 800700F0 03E00008 */  jr         $ra
/* 67424 800700F4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800700F8
/* 67428 800700F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6742C 800700FC AFB00010 */  sw         $s0, 0x10($sp)
/* 67430 80070100 00808021 */  addu       $s0, $a0, $zero
/* 67434 80070104 AFBF0014 */  sw         $ra, 0x14($sp)
/* 67438 80070108 8E040004 */  lw         $a0, 0x4($s0)
/* 6743C 8007010C 10800004 */  beqz       $a0, .L80070120
/* 67440 80070110 AE000008 */   sw        $zero, 0x8($s0)
/* 67444 80070114 0C009444 */  jal        func_80025110
/* 67448 80070118 00000000 */   nop
/* 6744C 8007011C AE000004 */  sw         $zero, 0x4($s0)
.L80070120:
/* 67450 80070120 8FBF0014 */  lw         $ra, 0x14($sp)
/* 67454 80070124 8FB00010 */  lw         $s0, 0x10($sp)
/* 67458 80070128 03E00008 */  jr         $ra
/* 6745C 8007012C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80070130
/* 67460 80070130 00805021 */  addu       $t2, $a0, $zero
/* 67464 80070134 10E0002E */  beqz       $a3, .L800701F0
/* 67468 80070138 00004821 */   addu      $t1, $zero, $zero
/* 6746C 8007013C 240B00FF */  addiu      $t3, $zero, 0xFF
/* 67470 80070140 00A04021 */  addu       $t0, $a1, $zero
.L80070144:
/* 67474 80070144 01262821 */  addu       $a1, $t1, $a2
/* 67478 80070148 8D420004 */  lw         $v0, 0x4($t2)
/* 6747C 8007014C 00052840 */  sll        $a1, $a1, 1
/* 67480 80070150 00A21021 */  addu       $v0, $a1, $v0
/* 67484 80070154 94420000 */  lhu        $v0, 0x0($v0)
/* 67488 80070158 3042F800 */  andi       $v0, $v0, 0xF800
/* 6748C 8007015C 00021202 */  srl        $v0, $v0, 8
/* 67490 80070160 A1020000 */  sb         $v0, 0x0($t0)
/* 67494 80070164 8D420004 */  lw         $v0, 0x4($t2)
/* 67498 80070168 00A21021 */  addu       $v0, $a1, $v0
/* 6749C 8007016C 94420000 */  lhu        $v0, 0x0($v0)
/* 674A0 80070170 30440040 */  andi       $a0, $v0, 0x40
/* 674A4 80070174 304207C0 */  andi       $v0, $v0, 0x7C0
/* 674A8 80070178 000210C2 */  srl        $v0, $v0, 3
/* 674AC 8007017C 00041880 */  sll        $v1, $a0, 2
/* 674B0 80070180 00431025 */  or         $v0, $v0, $v1
/* 674B4 80070184 00041840 */  sll        $v1, $a0, 1
/* 674B8 80070188 00431025 */  or         $v0, $v0, $v1
/* 674BC 8007018C 00441025 */  or         $v0, $v0, $a0
/* 674C0 80070190 A1020001 */  sb         $v0, 0x1($t0)
/* 674C4 80070194 8D420004 */  lw         $v0, 0x4($t2)
/* 674C8 80070198 00A21021 */  addu       $v0, $a1, $v0
/* 674CC 8007019C 94440000 */  lhu        $a0, 0x0($v0)
/* 674D0 800701A0 A1000003 */  sb         $zero, 0x3($t0)
/* 674D4 800701A4 3082003E */  andi       $v0, $a0, 0x3E
/* 674D8 800701A8 30840002 */  andi       $a0, $a0, 0x2
/* 674DC 800701AC 00021080 */  sll        $v0, $v0, 2
/* 674E0 800701B0 00041880 */  sll        $v1, $a0, 2
/* 674E4 800701B4 00431025 */  or         $v0, $v0, $v1
/* 674E8 800701B8 00041840 */  sll        $v1, $a0, 1
/* 674EC 800701BC 00431025 */  or         $v0, $v0, $v1
/* 674F0 800701C0 00441025 */  or         $v0, $v0, $a0
/* 674F4 800701C4 A1020002 */  sb         $v0, 0x2($t0)
/* 674F8 800701C8 8D420004 */  lw         $v0, 0x4($t2)
/* 674FC 800701CC 00A22821 */  addu       $a1, $a1, $v0
/* 67500 800701D0 94A20000 */  lhu        $v0, 0x0($a1)
/* 67504 800701D4 30420001 */  andi       $v0, $v0, 0x1
/* 67508 800701D8 54400001 */  bnel       $v0, $zero, .L800701E0
/* 6750C 800701DC A10B0003 */   sb        $t3, 0x3($t0)
.L800701E0:
/* 67510 800701E0 25290001 */  addiu      $t1, $t1, 0x1
/* 67514 800701E4 0127102B */  sltu       $v0, $t1, $a3
/* 67518 800701E8 1440FFD6 */  bnez       $v0, .L80070144
/* 6751C 800701EC 25080004 */   addiu     $t0, $t0, 0x4
.L800701F0:
/* 67520 800701F0 03E00008 */  jr         $ra
/* 67524 800701F4 00000000 */   nop

glabel func_800701F8
/* 67528 800701F8 00805821 */  addu       $t3, $a0, $zero
/* 6752C 800701FC 00C06021 */  addu       $t4, $a2, $zero
/* 67530 80070200 00E05021 */  addu       $t2, $a3, $zero
/* 67534 80070204 11400019 */  beqz       $t2, .L8007026C
/* 67538 80070208 00004821 */   addu      $t1, $zero, $zero
/* 6753C 8007020C 00A04021 */  addu       $t0, $a1, $zero
.L80070210:
/* 67540 80070210 91040000 */  lbu        $a0, 0x0($t0)
/* 67544 80070214 91060001 */  lbu        $a2, 0x1($t0)
/* 67548 80070218 91030002 */  lbu        $v1, 0x2($t0)
/* 6754C 8007021C 91070003 */  lbu        $a3, 0x3($t0)
/* 67550 80070220 25080004 */  addiu      $t0, $t0, 0x4
/* 67554 80070224 012C2821 */  addu       $a1, $t1, $t4
/* 67558 80070228 25290001 */  addiu      $t1, $t1, 0x1
/* 6755C 8007022C 00052840 */  sll        $a1, $a1, 1
/* 67560 80070230 8D620004 */  lw         $v0, 0x4($t3)
/* 67564 80070234 306300F8 */  andi       $v1, $v1, 0xF8
/* 67568 80070238 00031882 */  srl        $v1, $v1, 2
/* 6756C 8007023C 000739C2 */  srl        $a3, $a3, 7
/* 67570 80070240 00A22821 */  addu       $a1, $a1, $v0
/* 67574 80070244 308400F8 */  andi       $a0, $a0, 0xF8
/* 67578 80070248 00042200 */  sll        $a0, $a0, 8
/* 6757C 8007024C 30C600F8 */  andi       $a2, $a2, 0xF8
/* 67580 80070250 000630C0 */  sll        $a2, $a2, 3
/* 67584 80070254 00862025 */  or         $a0, $a0, $a2
/* 67588 80070258 00641825 */  or         $v1, $v1, $a0
/* 6758C 8007025C 00E33825 */  or         $a3, $a3, $v1
/* 67590 80070260 012A102B */  sltu       $v0, $t1, $t2
/* 67594 80070264 1440FFEA */  bnez       $v0, .L80070210
/* 67598 80070268 A4A70000 */   sh        $a3, 0x0($a1)
.L8007026C:
/* 6759C 8007026C 03E00008 */  jr         $ra
/* 675A0 80070270 00000000 */   nop

glabel func_80070274
/* 675A4 80070274 8C820004 */  lw         $v0, 0x4($a0)
/* 675A8 80070278 00063040 */  sll        $a2, $a2, 1
/* 675AC 8007027C 00C21021 */  addu       $v0, $a2, $v0
/* 675B0 80070280 94420000 */  lhu        $v0, 0x0($v0)
/* 675B4 80070284 00A03821 */  addu       $a3, $a1, $zero
/* 675B8 80070288 3042F800 */  andi       $v0, $v0, 0xF800
/* 675BC 8007028C 00021202 */  srl        $v0, $v0, 8
/* 675C0 80070290 A0E20000 */  sb         $v0, 0x0($a3)
/* 675C4 80070294 8C820004 */  lw         $v0, 0x4($a0)
/* 675C8 80070298 00C21021 */  addu       $v0, $a2, $v0
/* 675CC 8007029C 94420000 */  lhu        $v0, 0x0($v0)
/* 675D0 800702A0 30450040 */  andi       $a1, $v0, 0x40
/* 675D4 800702A4 304207C0 */  andi       $v0, $v0, 0x7C0
/* 675D8 800702A8 000210C2 */  srl        $v0, $v0, 3
/* 675DC 800702AC 00051880 */  sll        $v1, $a1, 2
/* 675E0 800702B0 00431025 */  or         $v0, $v0, $v1
/* 675E4 800702B4 00051840 */  sll        $v1, $a1, 1
/* 675E8 800702B8 00431025 */  or         $v0, $v0, $v1
/* 675EC 800702BC 00451025 */  or         $v0, $v0, $a1
/* 675F0 800702C0 A0E20001 */  sb         $v0, 0x1($a3)
/* 675F4 800702C4 8C820004 */  lw         $v0, 0x4($a0)
/* 675F8 800702C8 00C21021 */  addu       $v0, $a2, $v0
/* 675FC 800702CC 94450000 */  lhu        $a1, 0x0($v0)
/* 67600 800702D0 A0E00003 */  sb         $zero, 0x3($a3)
/* 67604 800702D4 30A2003E */  andi       $v0, $a1, 0x3E
/* 67608 800702D8 30A50002 */  andi       $a1, $a1, 0x2
/* 6760C 800702DC 00021080 */  sll        $v0, $v0, 2
/* 67610 800702E0 00051880 */  sll        $v1, $a1, 2
/* 67614 800702E4 00431025 */  or         $v0, $v0, $v1
/* 67618 800702E8 00051840 */  sll        $v1, $a1, 1
/* 6761C 800702EC 00431025 */  or         $v0, $v0, $v1
/* 67620 800702F0 00451025 */  or         $v0, $v0, $a1
/* 67624 800702F4 A0E20002 */  sb         $v0, 0x2($a3)
/* 67628 800702F8 8C820004 */  lw         $v0, 0x4($a0)
/* 6762C 800702FC 00C23021 */  addu       $a2, $a2, $v0
/* 67630 80070300 94C20000 */  lhu        $v0, 0x0($a2)
/* 67634 80070304 30420001 */  andi       $v0, $v0, 0x1
/* 67638 80070308 10400002 */  beqz       $v0, .L80070314
/* 6763C 8007030C 240200FF */   addiu     $v0, $zero, 0xFF
/* 67640 80070310 A0E20003 */  sb         $v0, 0x3($a3)
.L80070314:
/* 67644 80070314 03E00008 */  jr         $ra
/* 67648 80070318 00000000 */   nop

glabel func_8007031C
/* 6764C 8007031C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 67650 80070320 AFB20020 */  sw         $s2, 0x20($sp)
/* 67654 80070324 00809021 */  addu       $s2, $a0, $zero
/* 67658 80070328 AFB1001C */  sw         $s1, 0x1C($sp)
/* 6765C 8007032C 00A08821 */  addu       $s1, $a1, $zero
/* 67660 80070330 AFBF0024 */  sw         $ra, 0x24($sp)
/* 67664 80070334 AFB00018 */  sw         $s0, 0x18($sp)
/* 67668 80070338 8E220000 */  lw         $v0, 0x0($s1)
/* 6766C 8007033C 00008021 */  addu       $s0, $zero, $zero
/* 67670 80070340 84440038 */  lh         $a0, 0x38($v0)
/* 67674 80070344 8C42003C */  lw         $v0, 0x3C($v0)
/* 67678 80070348 0040F809 */  jalr       $v0
/* 6767C 8007034C 02242021 */   addu      $a0, $s1, $a0
/* 67680 80070350 1040001F */  beqz       $v0, .L800703D0
/* 67684 80070354 AE420008 */   sw        $v0, 0x8($s2)
/* 67688 80070358 27A50010 */  addiu      $a1, $sp, 0x10
.L8007035C:
/* 6768C 8007035C 8E220000 */  lw         $v0, 0x0($s1)
/* 67690 80070360 02003021 */  addu       $a2, $s0, $zero
/* 67694 80070364 84440018 */  lh         $a0, 0x18($v0)
/* 67698 80070368 8C42001C */  lw         $v0, 0x1C($v0)
/* 6769C 8007036C 0040F809 */  jalr       $v0
/* 676A0 80070370 02242021 */   addu      $a0, $s1, $a0
/* 676A4 80070374 00103040 */  sll        $a2, $s0, 1
/* 676A8 80070378 93A40012 */  lbu        $a0, 0x12($sp)
/* 676AC 8007037C 93A50013 */  lbu        $a1, 0x13($sp)
/* 676B0 80070380 8E420004 */  lw         $v0, 0x4($s2)
/* 676B4 80070384 93A30010 */  lbu        $v1, 0x10($sp)
/* 676B8 80070388 308400F8 */  andi       $a0, $a0, 0xF8
/* 676BC 8007038C 00042082 */  srl        $a0, $a0, 2
/* 676C0 80070390 000529C2 */  srl        $a1, $a1, 7
/* 676C4 80070394 00C23021 */  addu       $a2, $a2, $v0
/* 676C8 80070398 306300F8 */  andi       $v1, $v1, 0xF8
/* 676CC 8007039C 93A20011 */  lbu        $v0, 0x11($sp)
/* 676D0 800703A0 00031A00 */  sll        $v1, $v1, 8
/* 676D4 800703A4 304200F8 */  andi       $v0, $v0, 0xF8
/* 676D8 800703A8 000210C0 */  sll        $v0, $v0, 3
/* 676DC 800703AC 00621825 */  or         $v1, $v1, $v0
/* 676E0 800703B0 00832025 */  or         $a0, $a0, $v1
/* 676E4 800703B4 00A42825 */  or         $a1, $a1, $a0
/* 676E8 800703B8 A4C50000 */  sh         $a1, 0x0($a2)
/* 676EC 800703BC 8E420008 */  lw         $v0, 0x8($s2)
/* 676F0 800703C0 26100001 */  addiu      $s0, $s0, 0x1
/* 676F4 800703C4 0202102B */  sltu       $v0, $s0, $v0
/* 676F8 800703C8 1440FFE4 */  bnez       $v0, .L8007035C
/* 676FC 800703CC 27A50010 */   addiu     $a1, $sp, 0x10
.L800703D0:
/* 67700 800703D0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 67704 800703D4 8FB20020 */  lw         $s2, 0x20($sp)
/* 67708 800703D8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 6770C 800703DC 8FB00018 */  lw         $s0, 0x18($sp)
/* 67710 800703E0 03E00008 */  jr         $ra
/* 67714 800703E4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800703E8
/* 67718 800703E8 00804021 */  addu       $t0, $a0, $zero
/* 6771C 800703EC 00003821 */  addu       $a3, $zero, $zero
/* 67720 800703F0 90A40002 */  lbu        $a0, 0x2($a1)
/* 67724 800703F4 90A60003 */  lbu        $a2, 0x3($a1)
/* 67728 800703F8 90A20000 */  lbu        $v0, 0x0($a1)
/* 6772C 800703FC 90A30001 */  lbu        $v1, 0x1($a1)
/* 67730 80070400 308400F8 */  andi       $a0, $a0, 0xF8
/* 67734 80070404 00042082 */  srl        $a0, $a0, 2
/* 67738 80070408 000631C2 */  srl        $a2, $a2, 7
/* 6773C 8007040C 304200F8 */  andi       $v0, $v0, 0xF8
/* 67740 80070410 00021200 */  sll        $v0, $v0, 8
/* 67744 80070414 306300F8 */  andi       $v1, $v1, 0xF8
/* 67748 80070418 000318C0 */  sll        $v1, $v1, 3
/* 6774C 8007041C 00431025 */  or         $v0, $v0, $v1
/* 67750 80070420 00822025 */  or         $a0, $a0, $v0
/* 67754 80070424 8D020008 */  lw         $v0, 0x8($t0)
/* 67758 80070428 1040000C */  beqz       $v0, .L8007045C
/* 6775C 8007042C 00C43025 */   or        $a2, $a2, $a0
/* 67760 80070430 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 67764 80070434 00401821 */  addu       $v1, $v0, $zero
/* 67768 80070438 8D040004 */  lw         $a0, 0x4($t0)
.L8007043C:
/* 6776C 8007043C 94820000 */  lhu        $v0, 0x0($a0)
/* 67770 80070440 54460003 */  bnel       $v0, $a2, .L80070450
/* 67774 80070444 24E70001 */   addiu     $a3, $a3, 0x1
/* 67778 80070448 03E00008 */  jr         $ra
/* 6777C 8007044C 00E01021 */   addu      $v0, $a3, $zero
.L80070450:
/* 67780 80070450 00E3102B */  sltu       $v0, $a3, $v1
/* 67784 80070454 1440FFF9 */  bnez       $v0, .L8007043C
/* 67788 80070458 24840002 */   addiu     $a0, $a0, 0x2
.L8007045C:
/* 6778C 8007045C 03E00008 */  jr         $ra
/* 67790 80070460 2402FFFF */   addiu     $v0, $zero, -0x1

glabel func_80070464
/* 67794 80070464 3C028008 */  lui        $v0, %hi(D_80085E90)
/* 67798 80070468 03E00008 */  jr         $ra
/* 6779C 8007046C AC445E90 */   sw        $a0, %lo(D_80085E90)($v0)

glabel func_80070470
/* 677A0 80070470 03E00008 */  jr         $ra
/* 677A4 80070474 00001021 */   addu      $v0, $zero, $zero

glabel func_80070478
/* 677A8 80070478 8C820008 */  lw         $v0, 0x8($a0)
/* 677AC 8007047C 03E00008 */  jr         $ra
/* 677B0 80070480 00000000 */   nop

glabel func_80070484
/* 677B4 80070484 8C820008 */  lw         $v0, 0x8($a0)
/* 677B8 80070488 03E00008 */  jr         $ra
/* 677BC 8007048C 00000000 */   nop

glabel func_80070490
/* 677C0 80070490 3C028008 */  lui        $v0, %hi(D_80085E90)
/* 677C4 80070494 8C425E90 */  lw         $v0, %lo(D_80085E90)($v0)
/* 677C8 80070498 03E00008 */  jr         $ra
/* 677CC 8007049C 00000000 */   nop

glabel func_800704A0
/* 677D0 800704A0 8C820004 */  lw         $v0, 0x4($a0)
/* 677D4 800704A4 03E00008 */  jr         $ra
/* 677D8 800704A8 00000000 */   nop

glabel func_800704AC
/* 677DC 800704AC 8C820004 */  lw         $v0, 0x4($a0)
/* 677E0 800704B0 03E00008 */  jr         $ra
/* 677E4 800704B4 0002102B */   sltu      $v0, $zero, $v0
