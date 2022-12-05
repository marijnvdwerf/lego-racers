.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801242D0
/* DA690 801242D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA694 801242D4 AFB00010 */  sw         $s0, 0x10($sp)
/* DA698 801242D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* DA69C 801242DC 0C04B5C4 */  jal        func_race_8012D710
/* DA6A0 801242E0 00808021 */   addu      $s0, $a0, $zero
/* DA6A4 801242E4 26040030 */  addiu      $a0, $s0, 0x30
/* DA6A8 801242E8 3C02800D */  lui        $v0, %hi(D_race_800CE990)
/* DA6AC 801242EC 2442E990 */  addiu      $v0, $v0, %lo(D_race_800CE990)
/* DA6B0 801242F0 0C035088 */  jal        func_race_800D4220
/* DA6B4 801242F4 AE020000 */   sw        $v0, 0x0($s0)
/* DA6B8 801242F8 02001021 */  addu       $v0, $s0, $zero
/* DA6BC 801242FC 3C01800D */  lui        $at, %hi(D_race_800CE8C0)
/* DA6C0 80124300 C420E8C0 */  lwc1       $f0, %lo(D_race_800CE8C0)($at)
/* DA6C4 80124304 24030003 */  addiu      $v1, $zero, 0x3
/* DA6C8 80124308 AC400228 */  sw         $zero, 0x228($v0)
/* DA6CC 8012430C AC430230 */  sw         $v1, 0x230($v0)
/* DA6D0 80124310 AC400234 */  sw         $zero, 0x234($v0)
/* DA6D4 80124314 AC400240 */  sw         $zero, 0x240($v0)
/* DA6D8 80124318 AC40024C */  sw         $zero, 0x24C($v0)
/* DA6DC 8012431C AC40023C */  sw         $zero, 0x23C($v0)
/* DA6E0 80124320 AC400248 */  sw         $zero, 0x248($v0)
/* DA6E4 80124324 AC400244 */  sw         $zero, 0x244($v0)
/* DA6E8 80124328 AC400250 */  sw         $zero, 0x250($v0)
/* DA6EC 8012432C E4400238 */  swc1       $f0, 0x238($v0)
/* DA6F0 80124330 8FBF0014 */  lw         $ra, 0x14($sp)
/* DA6F4 80124334 8FB00010 */  lw         $s0, 0x10($sp)
/* DA6F8 80124338 03E00008 */  jr         $ra
/* DA6FC 8012433C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80124340
/* DA700 80124340 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DA704 80124344 AFB00010 */  sw         $s0, 0x10($sp)
/* DA708 80124348 00808021 */  addu       $s0, $a0, $zero
/* DA70C 8012434C AFB10014 */  sw         $s1, 0x14($sp)
/* DA710 80124350 00A08821 */  addu       $s1, $a1, $zero
/* DA714 80124354 3C02800D */  lui        $v0, %hi(D_race_800CE990)
/* DA718 80124358 2442E990 */  addiu      $v0, $v0, %lo(D_race_800CE990)
/* DA71C 8012435C AFBF0018 */  sw         $ra, 0x18($sp)
/* DA720 80124360 0C04916D */  jal        func_race_801245B4
/* DA724 80124364 AE020000 */   sw        $v0, 0x0($s0)
/* DA728 80124368 26040030 */  addiu      $a0, $s0, 0x30
/* DA72C 8012436C 0C035095 */  jal        func_race_800D4254
/* DA730 80124370 24050002 */   addiu     $a1, $zero, 0x2
/* DA734 80124374 02002021 */  addu       $a0, $s0, $zero
/* DA738 80124378 0C047E8A */  jal        func_race_8011FA28
/* DA73C 8012437C 02202821 */   addu      $a1, $s1, $zero
/* DA740 80124380 8FBF0018 */  lw         $ra, 0x18($sp)
/* DA744 80124384 8FB10014 */  lw         $s1, 0x14($sp)
/* DA748 80124388 8FB00010 */  lw         $s0, 0x10($sp)
/* DA74C 8012438C 03E00008 */  jr         $ra
/* DA750 80124390 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80124394
/* DA754 80124394 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* DA758 80124398 AFB3009C */  sw         $s3, 0x9C($sp)
/* DA75C 8012439C 00809821 */  addu       $s3, $a0, $zero
/* DA760 801243A0 AFB400A0 */  sw         $s4, 0xA0($sp)
/* DA764 801243A4 00A0A021 */  addu       $s4, $a1, $zero
/* DA768 801243A8 AFBF00A4 */  sw         $ra, 0xA4($sp)
/* DA76C 801243AC AFB20098 */  sw         $s2, 0x98($sp)
/* DA770 801243B0 AFB10094 */  sw         $s1, 0x94($sp)
/* DA774 801243B4 AFB00090 */  sw         $s0, 0x90($sp)
/* DA778 801243B8 8E620004 */  lw         $v0, 0x4($s3)
/* DA77C 801243BC 10400003 */  beqz       $v0, .Lrace_801243CC
/* DA780 801243C0 00C08021 */   addu      $s0, $a2, $zero
/* DA784 801243C4 0C04916D */  jal        func_race_801245B4
/* DA788 801243C8 00000000 */   nop
.Lrace_801243CC:
/* DA78C 801243CC AE70001C */  sw         $s0, 0x1C($s3)
/* DA790 801243D0 8E020068 */  lw         $v0, 0x68($s0)
/* DA794 801243D4 AE60022C */  sw         $zero, 0x22C($s3)
/* DA798 801243D8 AE600248 */  sw         $zero, 0x248($s3)
/* DA79C 801243DC AE600244 */  sw         $zero, 0x244($s3)
/* DA7A0 801243E0 AE620020 */  sw         $v0, 0x20($s3)
/* DA7A4 801243E4 8E820000 */  lw         $v0, 0x0($s4)
/* DA7A8 801243E8 84440010 */  lh         $a0, 0x10($v0)
/* DA7AC 801243EC 8C420014 */  lw         $v0, 0x14($v0)
/* DA7B0 801243F0 0040F809 */  jalr       $v0
/* DA7B4 801243F4 02842021 */   addu      $a0, $s4, $a0
/* DA7B8 801243F8 3C05800D */  lui        $a1, %hi(D_race_800CE8C4)
/* DA7BC 801243FC 8C50001C */  lw         $s0, 0x1C($v0)
/* DA7C0 80124400 24A5E8C4 */  addiu      $a1, $a1, %lo(D_race_800CE8C4)
/* DA7C4 80124404 0C016F2D */  jal        func_8005BCB4
/* DA7C8 80124408 02002021 */   addu      $a0, $s0, $zero
/* DA7CC 8012440C 26710030 */  addiu      $s1, $s3, 0x30
/* DA7D0 80124410 02202021 */  addu       $a0, $s1, $zero
/* DA7D4 80124414 27A50018 */  addiu      $a1, $sp, 0x18
/* DA7D8 80124418 AFA20020 */  sw         $v0, 0x20($sp)
/* DA7DC 8012441C 24020004 */  addiu      $v0, $zero, 0x4
/* DA7E0 80124420 AFA20024 */  sw         $v0, 0x24($sp)
/* DA7E4 80124424 24020005 */  addiu      $v0, $zero, 0x5
/* DA7E8 80124428 AFA20028 */  sw         $v0, 0x28($sp)
/* DA7EC 8012442C 24020002 */  addiu      $v0, $zero, 0x2
/* DA7F0 80124430 AFA2002C */  sw         $v0, 0x2C($sp)
/* DA7F4 80124434 24020003 */  addiu      $v0, $zero, 0x3
/* DA7F8 80124438 3C01800D */  lui        $at, %hi(D_race_800CE8D4)
/* DA7FC 8012443C C422E8D4 */  lwc1       $f2, %lo(D_race_800CE8D4)($at)
/* DA800 80124440 3C01800D */  lui        $at, %hi(D_race_800CE8D8)
/* DA804 80124444 C420E8D8 */  lwc1       $f0, %lo(D_race_800CE8D8)($at)
/* DA808 80124448 3C01800D */  lui        $at, %hi(D_race_800CE8DC)
/* DA80C 8012444C C424E8DC */  lwc1       $f4, %lo(D_race_800CE8DC)($at)
/* DA810 80124450 3C01800D */  lui        $at, %hi(D_race_800CE8E0)
/* DA814 80124454 C426E8E0 */  lwc1       $f6, %lo(D_race_800CE8E0)($at)
/* DA818 80124458 3C01800D */  lui        $at, %hi(D_race_800CE8E4)
/* DA81C 8012445C C428E8E4 */  lwc1       $f8, %lo(D_race_800CE8E4)($at)
/* DA820 80124460 3C01800D */  lui        $at, %hi(D_race_800CE8E8)
/* DA824 80124464 C42AE8E8 */  lwc1       $f10, %lo(D_race_800CE8E8)($at)
/* DA828 80124468 3C01800D */  lui        $at, %hi(D_race_800CE8EC)
/* DA82C 8012446C C42CE8EC */  lwc1       $f12, %lo(D_race_800CE8EC)($at)
/* DA830 80124470 24120001 */  addiu      $s2, $zero, 0x1
/* DA834 80124474 AFB40018 */  sw         $s4, 0x18($sp)
/* DA838 80124478 AFB0001C */  sw         $s0, 0x1C($sp)
/* DA83C 8012447C AFA00030 */  sw         $zero, 0x30($sp)
/* DA840 80124480 AFA0003C */  sw         $zero, 0x3C($sp)
/* DA844 80124484 AFA00040 */  sw         $zero, 0x40($sp)
/* DA848 80124488 AFA00048 */  sw         $zero, 0x48($sp)
/* DA84C 8012448C AFA0006C */  sw         $zero, 0x6C($sp)
/* DA850 80124490 AFA20080 */  sw         $v0, 0x80($sp)
/* DA854 80124494 AFB20088 */  sw         $s2, 0x88($sp)
/* DA858 80124498 E7A20034 */  swc1       $f2, 0x34($sp)
/* DA85C 8012449C E7A00038 */  swc1       $f0, 0x38($sp)
/* DA860 801244A0 E7A40044 */  swc1       $f4, 0x44($sp)
/* DA864 801244A4 E7A6004C */  swc1       $f6, 0x4C($sp)
/* DA868 801244A8 E7A00050 */  swc1       $f0, 0x50($sp)
/* DA86C 801244AC E7A80070 */  swc1       $f8, 0x70($sp)
/* DA870 801244B0 E7AA0074 */  swc1       $f10, 0x74($sp)
/* DA874 801244B4 0C0350E3 */  jal        func_race_800D438C
/* DA878 801244B8 E7AC0084 */   swc1      $f12, 0x84($sp)
/* DA87C 801244BC 02202021 */  addu       $a0, $s1, $zero
/* DA880 801244C0 3C05800D */  lui        $a1, %hi(D_race_800CE9F4)
/* DA884 801244C4 24A5E9F4 */  addiu      $a1, $a1, %lo(D_race_800CE9F4)
/* DA888 801244C8 3C06800D */  lui        $a2, %hi(D_race_800CE9F8)
/* DA88C 801244CC 24C6E9F8 */  addiu      $a2, $a2, %lo(D_race_800CE9F8)
/* DA890 801244D0 3C07800D */  lui        $a3, %hi(D_race_800CE9FC)
/* DA894 801244D4 0C0354E2 */  jal        func_race_800D5388
/* DA898 801244D8 24E7E9FC */   addiu     $a3, $a3, %lo(D_race_800CE9FC)
/* DA89C 801244DC 8E820000 */  lw         $v0, 0x0($s4)
/* DA8A0 801244E0 84440068 */  lh         $a0, 0x68($v0)
/* DA8A4 801244E4 8C42006C */  lw         $v0, 0x6C($v0)
/* DA8A8 801244E8 0040F809 */  jalr       $v0
/* DA8AC 801244EC 02842021 */   addu      $a0, $s4, $a0
/* DA8B0 801244F0 02002021 */  addu       $a0, $s0, $zero
/* DA8B4 801244F4 3C05800D */  lui        $a1, %hi(D_race_800CE8CC)
/* DA8B8 801244F8 24A5E8CC */  addiu      $a1, $a1, %lo(D_race_800CE8CC)
/* DA8BC 801244FC 0C016F2D */  jal        func_8005BCB4
/* DA8C0 80124500 AE620250 */   sw        $v0, 0x250($s3)
/* DA8C4 80124504 00402821 */  addu       $a1, $v0, $zero
/* DA8C8 80124508 3C01800D */  lui        $at, %hi(D_race_800CE8F0)
/* DA8CC 8012450C C420E8F0 */  lwc1       $f0, %lo(D_race_800CE8F0)($at)
/* DA8D0 80124510 8E680250 */  lw         $t0, 0x250($s3)
/* DA8D4 80124514 44060000 */  mfc1       $a2, $f0
/* DA8D8 80124518 8D030024 */  lw         $v1, 0x24($t0)
/* DA8DC 8012451C 3C01800D */  lui        $at, %hi(D_race_800CE8F4)
/* DA8E0 80124520 C420E8F4 */  lwc1       $f0, %lo(D_race_800CE8F4)($at)
/* DA8E4 80124524 846400A0 */  lh         $a0, 0xA0($v1)
/* DA8E8 80124528 00C03821 */  addu       $a3, $a2, $zero
/* DA8EC 8012452C E7A00010 */  swc1       $f0, 0x10($sp)
/* DA8F0 80124530 8C6200A4 */  lw         $v0, 0xA4($v1)
/* DA8F4 80124534 0040F809 */  jalr       $v0
/* DA8F8 80124538 01042021 */   addu      $a0, $t0, $a0
/* DA8FC 8012453C 02602021 */  addu       $a0, $s3, $zero
/* DA900 80124540 0C0491B8 */  jal        func_race_801246E0
/* DA904 80124544 AC920004 */   sw        $s2, 0x4($a0)
/* DA908 80124548 8FBF00A4 */  lw         $ra, 0xA4($sp)
/* DA90C 8012454C 8FB400A0 */  lw         $s4, 0xA0($sp)
/* DA910 80124550 8FB3009C */  lw         $s3, 0x9C($sp)
/* DA914 80124554 8FB20098 */  lw         $s2, 0x98($sp)
/* DA918 80124558 8FB10094 */  lw         $s1, 0x94($sp)
/* DA91C 8012455C 8FB00090 */  lw         $s0, 0x90($sp)
/* DA920 80124560 03E00008 */  jr         $ra
/* DA924 80124564 27BD00A8 */   addiu     $sp, $sp, 0xA8

glabel func_race_80124568
/* DA928 80124568 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA92C 8012456C AFB00010 */  sw         $s0, 0x10($sp)
/* DA930 80124570 00808021 */  addu       $s0, $a0, $zero
/* DA934 80124574 AFBF0014 */  sw         $ra, 0x14($sp)
/* DA938 80124578 8E040010 */  lw         $a0, 0x10($s0)
/* DA93C 8012457C 0C04654F */  jal        func_race_8011953C
/* DA940 80124580 24050044 */   addiu     $a1, $zero, 0x44
/* DA944 80124584 10400007 */  beqz       $v0, .Lrace_801245A4
/* DA948 80124588 AE020240 */   sw        $v0, 0x240($s0)
/* DA94C 8012458C 3C01800D */  lui        $at, %hi(D_race_800CE8F8)
/* DA950 80124590 C420E8F8 */  lwc1       $f0, %lo(D_race_800CE8F8)($at)
/* DA954 80124594 3C01800D */  lui        $at, %hi(D_race_800CE8FC)
/* DA958 80124598 C422E8FC */  lwc1       $f2, %lo(D_race_800CE8FC)($at)
/* DA95C 8012459C E440002C */  swc1       $f0, 0x2C($v0)
/* DA960 801245A0 E4420030 */  swc1       $f2, 0x30($v0)
.Lrace_801245A4:
/* DA964 801245A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* DA968 801245A8 8FB00010 */  lw         $s0, 0x10($sp)
/* DA96C 801245AC 03E00008 */  jr         $ra
/* DA970 801245B0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801245B4
/* DA974 801245B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA978 801245B8 AFB00010 */  sw         $s0, 0x10($sp)
/* DA97C 801245BC 00808021 */  addu       $s0, $a0, $zero
/* DA980 801245C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* DA984 801245C4 8E050240 */  lw         $a1, 0x240($s0)
/* DA988 801245C8 10A00005 */  beqz       $a1, .Lrace_801245E0
/* DA98C 801245CC 00000000 */   nop
/* DA990 801245D0 8E040010 */  lw         $a0, 0x10($s0)
/* DA994 801245D4 0C046564 */  jal        func_race_80119590
/* DA998 801245D8 00000000 */   nop
/* DA99C 801245DC AE000240 */  sw         $zero, 0x240($s0)
.Lrace_801245E0:
/* DA9A0 801245E0 8E020000 */  lw         $v0, 0x0($s0)
/* DA9A4 801245E4 84440040 */  lh         $a0, 0x40($v0)
/* DA9A8 801245E8 8C420044 */  lw         $v0, 0x44($v0)
/* DA9AC 801245EC 0040F809 */  jalr       $v0
/* DA9B0 801245F0 02042021 */   addu      $a0, $s0, $a0
/* DA9B4 801245F4 8E030250 */  lw         $v1, 0x250($s0)
/* DA9B8 801245F8 1060000F */  beqz       $v1, .Lrace_80124638
/* DA9BC 801245FC 00000000 */   nop
/* DA9C0 80124600 8C620024 */  lw         $v0, 0x24($v1)
/* DA9C4 80124604 844400A8 */  lh         $a0, 0xA8($v0)
/* DA9C8 80124608 8C4200AC */  lw         $v0, 0xAC($v0)
/* DA9CC 8012460C 0040F809 */  jalr       $v0
/* DA9D0 80124610 00642021 */   addu      $a0, $v1, $a0
/* DA9D4 80124614 8E02001C */  lw         $v0, 0x1C($s0)
/* DA9D8 80124618 8C430000 */  lw         $v1, 0x0($v0)
/* DA9DC 8012461C 8C620000 */  lw         $v0, 0x0($v1)
/* DA9E0 80124620 8E050250 */  lw         $a1, 0x250($s0)
/* DA9E4 80124624 844400D0 */  lh         $a0, 0xD0($v0)
/* DA9E8 80124628 8C4200D4 */  lw         $v0, 0xD4($v0)
/* DA9EC 8012462C 0040F809 */  jalr       $v0
/* DA9F0 80124630 00642021 */   addu      $a0, $v1, $a0
/* DA9F4 80124634 AE000250 */  sw         $zero, 0x250($s0)
.Lrace_80124638:
/* DA9F8 80124638 0C03518A */  jal        func_race_800D4628
/* DA9FC 8012463C 26040030 */   addiu     $a0, $s0, 0x30
/* DAA00 80124640 AE000004 */  sw         $zero, 0x4($s0)
/* DAA04 80124644 AE00024C */  sw         $zero, 0x24C($s0)
/* DAA08 80124648 AE000244 */  sw         $zero, 0x244($s0)
/* DAA0C 8012464C 8FBF0014 */  lw         $ra, 0x14($sp)
/* DAA10 80124650 8FB00010 */  lw         $s0, 0x10($sp)
/* DAA14 80124654 03E00008 */  jr         $ra
/* DAA18 80124658 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012465C
/* DAA1C 8012465C 00803021 */  addu       $a2, $a0, $zero
/* DAA20 80124660 3C058003 */  lui        $a1, %hi(D_8002FAB0)
/* DAA24 80124664 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* DAA28 80124668 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* DAA2C 8012466C 8CA4FAB0 */  lw         $a0, %lo(D_8002FAB0)($a1)
/* DAA30 80124670 3C01800D */  lui        $at, %hi(D_race_800CE900)
/* DAA34 80124674 C422E900 */  lwc1       $f2, %lo(D_race_800CE900)($at)
/* DAA38 80124678 24840001 */  addiu      $a0, $a0, 0x1
/* DAA3C 8012467C 308403FF */  andi       $a0, $a0, 0x3FF
/* DAA40 80124680 00041040 */  sll        $v0, $a0, 1
/* DAA44 80124684 00431021 */  addu       $v0, $v0, $v1
/* DAA48 80124688 94420000 */  lhu        $v0, 0x0($v0)
/* DAA4C 8012468C 3C01800D */  lui        $at, %hi(D_race_800CE904)
/* DAA50 80124690 C424E904 */  lwc1       $f4, %lo(D_race_800CE904)($at)
/* DAA54 80124694 44820000 */  mtc1       $v0, $f0
/* DAA58 80124698 46800020 */  cvt.s.w    $f0, $f0
/* DAA5C 8012469C 46020003 */  div.s      $f0, $f0, $f2
/* DAA60 801246A0 46040001 */  sub.s      $f0, $f0, $f4
/* DAA64 801246A4 3C01800D */  lui        $at, %hi(D_race_800CE908)
/* DAA68 801246A8 C422E908 */  lwc1       $f2, %lo(D_race_800CE908)($at)
/* DAA6C 801246AC 8CC20228 */  lw         $v0, 0x228($a2)
/* DAA70 801246B0 46020002 */  mul.s      $f0, $f0, $f2
/* DAA74 801246B4 ACA4FAB0 */  sw         $a0, %lo(D_8002FAB0)($a1)
/* DAA78 801246B8 00021880 */  sll        $v1, $v0, 2
/* DAA7C 801246BC 24420001 */  addiu      $v0, $v0, 0x1
/* DAA80 801246C0 00C31821 */  addu       $v1, $a2, $v1
/* DAA84 801246C4 E46001D8 */  swc1       $f0, 0x1D8($v1)
/* DAA88 801246C8 ACC20228 */  sw         $v0, 0x228($a2)
/* DAA8C 801246CC 2C420014 */  sltiu      $v0, $v0, 0x14
/* DAA90 801246D0 50400001 */  beql       $v0, $zero, .Lrace_801246D8
/* DAA94 801246D4 ACC00228 */   sw        $zero, 0x228($a2)
.Lrace_801246D8:
/* DAA98 801246D8 03E00008 */  jr         $ra
/* DAA9C 801246DC 00000000 */   nop

glabel func_race_801246E0
/* DAAA0 801246E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DAAA4 801246E4 AFB10014 */  sw         $s1, 0x14($sp)
/* DAAA8 801246E8 00808821 */  addu       $s1, $a0, $zero
/* DAAAC 801246EC AFB00010 */  sw         $s0, 0x10($sp)
/* DAAB0 801246F0 00008021 */  addu       $s0, $zero, $zero
/* DAAB4 801246F4 AFBF0018 */  sw         $ra, 0x18($sp)
.Lrace_801246F8:
/* DAAB8 801246F8 0C049197 */  jal        func_race_8012465C
/* DAABC 801246FC 02202021 */   addu      $a0, $s1, $zero
/* DAAC0 80124700 26100001 */  addiu      $s0, $s0, 0x1
/* DAAC4 80124704 2E020014 */  sltiu      $v0, $s0, 0x14
/* DAAC8 80124708 1440FFFB */  bnez       $v0, .Lrace_801246F8
/* DAACC 8012470C 00000000 */   nop
/* DAAD0 80124710 8FBF0018 */  lw         $ra, 0x18($sp)
/* DAAD4 80124714 8FB10014 */  lw         $s1, 0x14($sp)
/* DAAD8 80124718 8FB00010 */  lw         $s0, 0x10($sp)
/* DAADC 8012471C 03E00008 */  jr         $ra
/* DAAE0 80124720 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80124724
/* DAAE4 80124724 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* DAAE8 80124728 AFB3003C */  sw         $s3, 0x3C($sp)
/* DAAEC 8012472C 00809821 */  addu       $s3, $a0, $zero
/* DAAF0 80124730 AFBF004C */  sw         $ra, 0x4C($sp)
/* DAAF4 80124734 AFB60048 */  sw         $s6, 0x48($sp)
/* DAAF8 80124738 AFB50044 */  sw         $s5, 0x44($sp)
/* DAAFC 8012473C AFB40040 */  sw         $s4, 0x40($sp)
/* DAB00 80124740 AFB20038 */  sw         $s2, 0x38($sp)
/* DAB04 80124744 AFB10034 */  sw         $s1, 0x34($sp)
/* DAB08 80124748 AFB00030 */  sw         $s0, 0x30($sp)
/* DAB0C 8012474C F7B40050 */  sdc1       $f20, 0x50($sp)
/* DAB10 80124750 8E620244 */  lw         $v0, 0x244($s3)
/* DAB14 80124754 3C01800D */  lui        $at, %hi(D_race_800CE90C)
/* DAB18 80124758 C422E90C */  lwc1       $f2, %lo(D_race_800CE90C)($at)
/* DAB1C 8012475C 27A50010 */  addiu      $a1, $sp, 0x10
/* DAB20 80124760 8C470000 */  lw         $a3, 0x0($v0)
/* DAB24 80124764 8C480004 */  lw         $t0, 0x4($v0)
/* DAB28 80124768 8C490008 */  lw         $t1, 0x8($v0)
/* DAB2C 8012476C AFA70010 */  sw         $a3, 0x10($sp)
/* DAB30 80124770 AFA80014 */  sw         $t0, 0x14($sp)
/* DAB34 80124774 AFA90018 */  sw         $t1, 0x18($sp)
/* DAB38 80124778 C4A00008 */  lwc1       $f0, 0x8($a1)
/* DAB3C 8012477C 46020000 */  add.s      $f0, $f0, $f2
/* DAB40 80124780 E4A00008 */  swc1       $f0, 0x8($a1)
/* DAB44 80124784 C66201A8 */  lwc1       $f2, 0x1A8($s3)
/* DAB48 80124788 C7A00010 */  lwc1       $f0, 0x10($sp)
/* DAB4C 8012478C 46001081 */  sub.s      $f2, $f2, $f0
/* DAB50 80124790 26640030 */  addiu      $a0, $s3, 0x30
/* DAB54 80124794 27A60020 */  addiu      $a2, $sp, 0x20
/* DAB58 80124798 E7A20020 */  swc1       $f2, 0x20($sp)
/* DAB5C 8012479C C66001AC */  lwc1       $f0, 0x1AC($s3)
/* DAB60 801247A0 C7A20014 */  lwc1       $f2, 0x14($sp)
/* DAB64 801247A4 00009021 */  addu       $s2, $zero, $zero
/* DAB68 801247A8 46020001 */  sub.s      $f0, $f0, $f2
/* DAB6C 801247AC C7A20018 */  lwc1       $f2, 0x18($sp)
/* DAB70 801247B0 3C158013 */  lui        $s5, %hi(D_race_80132F20)
/* DAB74 801247B4 E7A00024 */  swc1       $f0, 0x24($sp)
/* DAB78 801247B8 C66001B0 */  lwc1       $f0, 0x1B0($s3)
/* DAB7C 801247BC 26B62F20 */  addiu      $s6, $s5, %lo(D_race_80132F20)
/* DAB80 801247C0 46020001 */  sub.s      $f0, $f0, $f2
/* DAB84 801247C4 0080A021 */  addu       $s4, $a0, $zero
/* DAB88 801247C8 241101A8 */  addiu      $s1, $zero, 0x1A8
/* DAB8C 801247CC E7A00028 */  swc1       $f0, 0x28($sp)
/* DAB90 801247D0 8E620228 */  lw         $v0, 0x228($s3)
/* DAB94 801247D4 3C01800D */  lui        $at, %hi(D_race_800CE910)
/* DAB98 801247D8 C434E910 */  lwc1       $f20, %lo(D_race_800CE910)($at)
/* DAB9C 801247DC 0C0351AA */  jal        func_race_800D46A8
/* DABA0 801247E0 2450FFFF */   addiu     $s0, $v0, -0x1
/* DABA4 801247E4 00002021 */  addu       $a0, $zero, $zero
.Lrace_801247E8:
/* DABA8 801247E8 02C01821 */  addu       $v1, $s6, $zero
.Lrace_801247EC:
/* DABAC 801247EC 06020001 */  bltzl      $s0, .Lrace_801247F4
/* DABB0 801247F0 24100013 */   addiu     $s0, $zero, 0x13
.Lrace_801247F4:
/* DABB4 801247F4 00101080 */  sll        $v0, $s0, 2
/* DABB8 801247F8 2610FFFF */  addiu      $s0, $s0, -0x1
/* DABBC 801247FC 02621021 */  addu       $v0, $s3, $v0
/* DABC0 80124800 24840001 */  addiu      $a0, $a0, 0x1
/* DABC4 80124804 C44001D8 */  lwc1       $f0, 0x1D8($v0)
/* DABC8 80124808 2C820005 */  sltiu      $v0, $a0, 0x5
/* DABCC 8012480C AC600008 */  sw         $zero, 0x8($v1)
/* DABD0 80124810 E4600000 */  swc1       $f0, 0x0($v1)
/* DABD4 80124814 E4600004 */  swc1       $f0, 0x4($v1)
/* DABD8 80124818 1440FFF4 */  bnez       $v0, .Lrace_801247EC
/* DABDC 8012481C 2463000C */   addiu     $v1, $v1, 0xC
/* DABE0 80124820 02802021 */  addu       $a0, $s4, $zero
/* DABE4 80124824 0C035608 */  jal        func_race_800D5820
/* DABE8 80124828 26A52F20 */   addiu     $a1, $s5, %lo(D_race_80132F20)
/* DABEC 8012482C 02802021 */  addu       $a0, $s4, $zero
/* DABF0 80124830 02712821 */  addu       $a1, $s3, $s1
/* DABF4 80124834 4406A000 */  mfc1       $a2, $f20
/* DABF8 80124838 2631000C */  addiu      $s1, $s1, 0xC
/* DABFC 8012483C 26520001 */  addiu      $s2, $s2, 0x1
/* DAC00 80124840 0C0354FB */  jal        func_race_800D53EC
/* DAC04 80124844 4600A507 */   neg.s     $f20, $f20
/* DAC08 80124848 2E420004 */  sltiu      $v0, $s2, 0x4
/* DAC0C 8012484C 1440FFE6 */  bnez       $v0, .Lrace_801247E8
/* DAC10 80124850 00002021 */   addu      $a0, $zero, $zero
/* DAC14 80124854 0C0352EF */  jal        func_race_800D4BBC
/* DAC18 80124858 26640030 */   addiu     $a0, $s3, 0x30
/* DAC1C 8012485C 8FBF004C */  lw         $ra, 0x4C($sp)
/* DAC20 80124860 8FB60048 */  lw         $s6, 0x48($sp)
/* DAC24 80124864 8FB50044 */  lw         $s5, 0x44($sp)
/* DAC28 80124868 8FB40040 */  lw         $s4, 0x40($sp)
/* DAC2C 8012486C 8FB3003C */  lw         $s3, 0x3C($sp)
/* DAC30 80124870 8FB20038 */  lw         $s2, 0x38($sp)
/* DAC34 80124874 8FB10034 */  lw         $s1, 0x34($sp)
/* DAC38 80124878 8FB00030 */  lw         $s0, 0x30($sp)
/* DAC3C 8012487C D7B40050 */  ldc1       $f20, 0x50($sp)
/* DAC40 80124880 03E00008 */  jr         $ra
/* DAC44 80124884 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_80124888
/* DAC48 80124888 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DAC4C 8012488C AFB00010 */  sw         $s0, 0x10($sp)
/* DAC50 80124890 00808021 */  addu       $s0, $a0, $zero
/* DAC54 80124894 24020002 */  addiu      $v0, $zero, 0x2
/* DAC58 80124898 AFBF0014 */  sw         $ra, 0x14($sp)
/* DAC5C 8012489C AE020004 */  sw         $v0, 0x4($s0)
/* DAC60 801248A0 240201F4 */  addiu      $v0, $zero, 0x1F4
/* DAC64 801248A4 AE020008 */  sw         $v0, 0x8($s0)
/* DAC68 801248A8 AE050024 */  sw         $a1, 0x24($s0)
/* DAC6C 801248AC 10A00003 */  beqz       $a1, .Lrace_801248BC
/* DAC70 801248B0 AE000028 */   sw        $zero, 0x28($s0)
/* DAC74 801248B4 08049230 */  j          .Lrace_801248C0
/* DAC78 801248B8 24A20E00 */   addiu     $v0, $a1, 0xE00
.Lrace_801248BC:
/* DAC7C 801248BC 8CC20018 */  lw         $v0, 0x18($a2)
.Lrace_801248C0:
/* DAC80 801248C0 AE020244 */  sw         $v0, 0x244($s0)
/* DAC84 801248C4 8E030240 */  lw         $v1, 0x240($s0)
/* DAC88 801248C8 10600007 */  beqz       $v1, .Lrace_801248E8
/* DAC8C 801248CC AE000234 */   sw        $zero, 0x234($s0)
/* DAC90 801248D0 8C620034 */  lw         $v0, 0x34($v1)
/* DAC94 801248D4 24050001 */  addiu      $a1, $zero, 0x1
/* DAC98 801248D8 84440010 */  lh         $a0, 0x10($v0)
/* DAC9C 801248DC 8C420014 */  lw         $v0, 0x14($v0)
/* DACA0 801248E0 0040F809 */  jalr       $v0
/* DACA4 801248E4 00642021 */   addu      $a0, $v1, $a0
.Lrace_801248E8:
/* DACA8 801248E8 AE00023C */  sw         $zero, 0x23C($s0)
/* DACAC 801248EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* DACB0 801248F0 8FB00010 */  lw         $s0, 0x10($sp)
/* DACB4 801248F4 03E00008 */  jr         $ra
/* DACB8 801248F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801248FC
/* DACBC 801248FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DACC0 80124900 AFB00010 */  sw         $s0, 0x10($sp)
/* DACC4 80124904 00808021 */  addu       $s0, $a0, $zero
/* DACC8 80124908 AFBF0014 */  sw         $ra, 0x14($sp)
/* DACCC 8012490C 8E040028 */  lw         $a0, 0x28($s0)
/* DACD0 80124910 10800003 */  beqz       $a0, .Lrace_80124920
/* DACD4 80124914 00000000 */   nop
/* DACD8 80124918 0C043564 */  jal        func_race_8010D590
/* DACDC 8012491C 00000000 */   nop
.Lrace_80124920:
/* DACE0 80124920 8E02001C */  lw         $v0, 0x1C($s0)
/* DACE4 80124924 10400009 */  beqz       $v0, .Lrace_8012494C
/* DACE8 80124928 26040030 */   addiu     $a0, $s0, 0x30
/* DACEC 8012492C 8E05024C */  lw         $a1, 0x24C($s0)
/* DACF0 80124930 50A00007 */  beql       $a1, $zero, .Lrace_80124950
/* DACF4 80124934 3C05800D */   lui       $a1, %hi(D_race_800CE9F4)
/* DACF8 80124938 8C440040 */  lw         $a0, 0x40($v0)
/* DACFC 8012493C 0C01088C */  jal        func_80042230
/* DAD00 80124940 00000000 */   nop
/* DAD04 80124944 AE00024C */  sw         $zero, 0x24C($s0)
/* DAD08 80124948 26040030 */  addiu      $a0, $s0, 0x30
.Lrace_8012494C:
/* DAD0C 8012494C 3C05800D */  lui        $a1, %hi(D_race_800CE9F4)
.Lrace_80124950:
/* DAD10 80124950 24A5E9F4 */  addiu      $a1, $a1, %lo(D_race_800CE9F4)
/* DAD14 80124954 3C06800D */  lui        $a2, %hi(D_race_800CE9F8)
/* DAD18 80124958 3C07800D */  lui        $a3, %hi(D_race_800CE9FC)
/* DAD1C 8012495C 24C6E9F8 */  addiu      $a2, $a2, %lo(D_race_800CE9F8)
/* DAD20 80124960 0C0354E2 */  jal        func_race_800D5388
/* DAD24 80124964 24E7E9FC */   addiu     $a3, $a3, %lo(D_race_800CE9FC)
/* DAD28 80124968 24020001 */  addiu      $v0, $zero, 0x1
/* DAD2C 8012496C AE000244 */  sw         $zero, 0x244($s0)
/* DAD30 80124970 AE000024 */  sw         $zero, 0x24($s0)
/* DAD34 80124974 AE000028 */  sw         $zero, 0x28($s0)
/* DAD38 80124978 AE020004 */  sw         $v0, 0x4($s0)
/* DAD3C 8012497C 8FBF0014 */  lw         $ra, 0x14($sp)
/* DAD40 80124980 8FB00010 */  lw         $s0, 0x10($sp)
/* DAD44 80124984 03E00008 */  jr         $ra
/* DAD48 80124988 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012498C
/* DAD4C 8012498C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DAD50 80124990 AFB00010 */  sw         $s0, 0x10($sp)
/* DAD54 80124994 00808021 */  addu       $s0, $a0, $zero
/* DAD58 80124998 AFB10014 */  sw         $s1, 0x14($sp)
/* DAD5C 8012499C AFBF0018 */  sw         $ra, 0x18($sp)
/* DAD60 801249A0 8E030004 */  lw         $v1, 0x4($s0)
/* DAD64 801249A4 24020006 */  addiu      $v0, $zero, 0x6
/* DAD68 801249A8 1062003B */  beq        $v1, $v0, .Lrace_80124A98
/* DAD6C 801249AC 00A08821 */   addu      $s1, $a1, $zero
/* DAD70 801249B0 8E030008 */  lw         $v1, 0x8($s0)
/* DAD74 801249B4 0223102B */  sltu       $v0, $s1, $v1
/* DAD78 801249B8 5440000A */  bnel       $v0, $zero, .Lrace_801249E4
/* DAD7C 801249BC 00711023 */   subu      $v0, $v1, $s1
/* DAD80 801249C0 8E020000 */  lw         $v0, 0x0($s0)
/* DAD84 801249C4 02238823 */  subu       $s1, $s1, $v1
/* DAD88 801249C8 AE000008 */  sw         $zero, 0x8($s0)
/* DAD8C 801249CC 84440030 */  lh         $a0, 0x30($v0)
/* DAD90 801249D0 8C420034 */  lw         $v0, 0x34($v0)
/* DAD94 801249D4 0040F809 */  jalr       $v0
/* DAD98 801249D8 02042021 */   addu      $a0, $s0, $a0
/* DAD9C 801249DC 0804927A */  j          .Lrace_801249E8
/* DADA0 801249E0 00000000 */   nop
.Lrace_801249E4:
/* DADA4 801249E4 AE020008 */  sw         $v0, 0x8($s0)
.Lrace_801249E8:
/* DADA8 801249E8 8E02022C */  lw         $v0, 0x22C($s0)
/* DADAC 801249EC 08049281 */  j          .Lrace_80124A04
/* DADB0 801249F0 00511021 */   addu      $v0, $v0, $s1
.Lrace_801249F4:
/* DADB4 801249F4 0C049197 */  jal        func_race_8012465C
/* DADB8 801249F8 02002021 */   addu      $a0, $s0, $zero
/* DADBC 801249FC 8E02022C */  lw         $v0, 0x22C($s0)
/* DADC0 80124A00 2442FFCE */  addiu      $v0, $v0, -0x32
.Lrace_80124A04:
/* DADC4 80124A04 AE02022C */  sw         $v0, 0x22C($s0)
/* DADC8 80124A08 2C420033 */  sltiu      $v0, $v0, 0x33
/* DADCC 80124A0C 1040FFF9 */  beqz       $v0, .Lrace_801249F4
/* DADD0 80124A10 00000000 */   nop
/* DADD4 80124A14 8E020028 */  lw         $v0, 0x28($s0)
/* DADD8 80124A18 10400014 */  beqz       $v0, .Lrace_80124A6C
/* DADDC 80124A1C 00000000 */   nop
/* DADE0 80124A20 8E020248 */  lw         $v0, 0x248($s0)
/* DADE4 80124A24 00511021 */  addu       $v0, $v0, $s1
/* DADE8 80124A28 AE020248 */  sw         $v0, 0x248($s0)
/* DADEC 80124A2C 2C4203E9 */  sltiu      $v0, $v0, 0x3E9
/* DADF0 80124A30 1440000E */  bnez       $v0, .Lrace_80124A6C
/* DADF4 80124A34 00000000 */   nop
/* DADF8 80124A38 8E040028 */  lw         $a0, 0x28($s0)
/* DADFC 80124A3C 0C043564 */  jal        func_race_8010D590
/* DAE00 80124A40 00000000 */   nop
/* DAE04 80124A44 26040030 */  addiu      $a0, $s0, 0x30
/* DAE08 80124A48 3C05800D */  lui        $a1, %hi(D_race_800CE9F4)
/* DAE0C 80124A4C 24A5E9F4 */  addiu      $a1, $a1, %lo(D_race_800CE9F4)
/* DAE10 80124A50 3C06800D */  lui        $a2, %hi(D_race_800CE9F8)
/* DAE14 80124A54 3C07800D */  lui        $a3, %hi(D_race_800CE9FC)
/* DAE18 80124A58 24C6E9F8 */  addiu      $a2, $a2, %lo(D_race_800CE9F8)
/* DAE1C 80124A5C 24E7E9FC */  addiu      $a3, $a3, %lo(D_race_800CE9FC)
/* DAE20 80124A60 AE000028 */  sw         $zero, 0x28($s0)
/* DAE24 80124A64 0C0354E2 */  jal        func_race_800D5388
/* DAE28 80124A68 AE000248 */   sw        $zero, 0x248($s0)
.Lrace_80124A6C:
/* DAE2C 80124A6C 0C0493A8 */  jal        func_race_80124EA0
/* DAE30 80124A70 02002021 */   addu      $a0, $s0, $zero
/* DAE34 80124A74 0C0491C9 */  jal        func_race_80124724
/* DAE38 80124A78 02002021 */   addu      $a0, $s0, $zero
/* DAE3C 80124A7C 0C04958B */  jal        func_race_8012562C
/* DAE40 80124A80 02002021 */   addu      $a0, $s0, $zero
/* DAE44 80124A84 0C049480 */  jal        func_race_80125200
/* DAE48 80124A88 02002021 */   addu      $a0, $s0, $zero
/* DAE4C 80124A8C 02002021 */  addu       $a0, $s0, $zero
/* DAE50 80124A90 0C0492AB */  jal        func_race_80124AAC
/* DAE54 80124A94 02202821 */   addu      $a1, $s1, $zero
.Lrace_80124A98:
/* DAE58 80124A98 8FBF0018 */  lw         $ra, 0x18($sp)
/* DAE5C 80124A9C 8FB10014 */  lw         $s1, 0x14($sp)
/* DAE60 80124AA0 8FB00010 */  lw         $s0, 0x10($sp)
/* DAE64 80124AA4 03E00008 */  jr         $ra
/* DAE68 80124AA8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80124AAC
/* DAE6C 80124AAC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* DAE70 80124AB0 AFB20048 */  sw         $s2, 0x48($sp)
/* DAE74 80124AB4 00809021 */  addu       $s2, $a0, $zero
/* DAE78 80124AB8 AFBF004C */  sw         $ra, 0x4C($sp)
/* DAE7C 80124ABC AFB10044 */  sw         $s1, 0x44($sp)
/* DAE80 80124AC0 AFB00040 */  sw         $s0, 0x40($sp)
/* DAE84 80124AC4 8E430240 */  lw         $v1, 0x240($s2)
/* DAE88 80124AC8 1060003A */  beqz       $v1, .Lrace_80124BB4
/* DAE8C 80124ACC 00000000 */   nop
/* DAE90 80124AD0 8E420244 */  lw         $v0, 0x244($s2)
/* DAE94 80124AD4 8C480000 */  lw         $t0, 0x0($v0)
/* DAE98 80124AD8 8C490004 */  lw         $t1, 0x4($v0)
/* DAE9C 80124ADC 8C4A0008 */  lw         $t2, 0x8($v0)
/* DAEA0 80124AE0 AC680014 */  sw         $t0, 0x14($v1)
/* DAEA4 80124AE4 AC690018 */  sw         $t1, 0x18($v1)
/* DAEA8 80124AE8 AC6A001C */  sw         $t2, 0x1C($v1)
/* DAEAC 80124AEC 8E420244 */  lw         $v0, 0x244($s2)
/* DAEB0 80124AF0 8E430240 */  lw         $v1, 0x240($s2)
/* DAEB4 80124AF4 C440000C */  lwc1       $f0, 0xC($v0)
/* DAEB8 80124AF8 2442000C */  addiu      $v0, $v0, 0xC
/* DAEBC 80124AFC E4600020 */  swc1       $f0, 0x20($v1)
/* DAEC0 80124B00 C4400004 */  lwc1       $f0, 0x4($v0)
/* DAEC4 80124B04 E4600024 */  swc1       $f0, 0x24($v1)
/* DAEC8 80124B08 C4400008 */  lwc1       $f0, 0x8($v0)
/* DAECC 80124B0C E4600028 */  swc1       $f0, 0x28($v1)
/* DAED0 80124B10 8E430004 */  lw         $v1, 0x4($s2)
/* DAED4 80124B14 24020003 */  addiu      $v0, $zero, 0x3
/* DAED8 80124B18 10620012 */  beq        $v1, $v0, .Lrace_80124B64
/* DAEDC 80124B1C 28620004 */   slti      $v0, $v1, 0x4
/* DAEE0 80124B20 10400005 */  beqz       $v0, .Lrace_80124B38
/* DAEE4 80124B24 24020002 */   addiu     $v0, $zero, 0x2
/* DAEE8 80124B28 10620008 */  beq        $v1, $v0, .Lrace_80124B4C
/* DAEEC 80124B2C 24020003 */   addiu     $v0, $zero, 0x3
/* DAEF0 80124B30 080492EF */  j          .Lrace_80124BBC
/* DAEF4 80124B34 00000000 */   nop
.Lrace_80124B38:
/* DAEF8 80124B38 24020004 */  addiu      $v0, $zero, 0x4
/* DAEFC 80124B3C 1062000E */  beq        $v1, $v0, .Lrace_80124B78
/* DAF00 80124B40 240201F4 */   addiu     $v0, $zero, 0x1F4
/* DAF04 80124B44 080492ED */  j          .Lrace_80124BB4
/* DAF08 80124B48 00000000 */   nop
.Lrace_80124B4C:
/* DAF0C 80124B4C 3C01800D */  lui        $at, %hi(D_race_800CE914)
/* DAF10 80124B50 C422E914 */  lwc1       $f2, %lo(D_race_800CE914)($at)
/* DAF14 80124B54 C6400008 */  lwc1       $f0, 0x8($s2)
/* DAF18 80124B58 46800020 */  cvt.s.w    $f0, $f0
/* DAF1C 80124B5C 080492E4 */  j          .Lrace_80124B90
/* DAF20 80124B60 00000000 */   nop
.Lrace_80124B64:
/* DAF24 80124B64 8E420240 */  lw         $v0, 0x240($s2)
/* DAF28 80124B68 3C01800D */  lui        $at, %hi(D_race_800CE918)
/* DAF2C 80124B6C C420E918 */  lwc1       $f0, %lo(D_race_800CE918)($at)
/* DAF30 80124B70 080492ED */  j          .Lrace_80124BB4
/* DAF34 80124B74 E4400004 */   swc1      $f0, 0x4($v0)
.Lrace_80124B78:
/* DAF38 80124B78 8E430008 */  lw         $v1, 0x8($s2)
/* DAF3C 80124B7C 3C01800D */  lui        $at, %hi(D_race_800CE91C)
/* DAF40 80124B80 C422E91C */  lwc1       $f2, %lo(D_race_800CE91C)($at)
/* DAF44 80124B84 00431023 */  subu       $v0, $v0, $v1
/* DAF48 80124B88 44820000 */  mtc1       $v0, $f0
/* DAF4C 80124B8C 46800020 */  cvt.s.w    $f0, $f0
.Lrace_80124B90:
/* DAF50 80124B90 46020002 */  mul.s      $f0, $f0, $f2
/* DAF54 80124B94 3C01800D */  lui        $at, %hi(D_race_800CE920)
/* DAF58 80124B98 C424E920 */  lwc1       $f4, %lo(D_race_800CE920)($at)
/* DAF5C 80124B9C 3C01800D */  lui        $at, %hi(D_race_800CE924)
/* DAF60 80124BA0 C422E924 */  lwc1       $f2, %lo(D_race_800CE924)($at)
/* DAF64 80124BA4 46040003 */  div.s      $f0, $f0, $f4
/* DAF68 80124BA8 46001081 */  sub.s      $f2, $f2, $f0
/* DAF6C 80124BAC 8E420240 */  lw         $v0, 0x240($s2)
/* DAF70 80124BB0 E4420004 */  swc1       $f2, 0x4($v0)
.Lrace_80124BB4:
/* DAF74 80124BB4 8E430004 */  lw         $v1, 0x4($s2)
/* DAF78 80124BB8 24020003 */  addiu      $v0, $zero, 0x3
.Lrace_80124BBC:
/* DAF7C 80124BBC 1462005B */  bne        $v1, $v0, .Lrace_80124D2C
/* DAF80 80124BC0 00000000 */   nop
/* DAF84 80124BC4 8E430234 */  lw         $v1, 0x234($s2)
/* DAF88 80124BC8 0065102B */  sltu       $v0, $v1, $a1
/* DAF8C 80124BCC 10400055 */  beqz       $v0, .Lrace_80124D24
/* DAF90 80124BD0 3C118003 */   lui       $s1, %hi(D_8002FAB0)
/* DAF94 80124BD4 3C0351EB */  lui        $v1, (0x51EB851F >> 16)
/* DAF98 80124BD8 3C108003 */  lui        $s0, %hi(D_8002F2B0)
/* DAF9C 80124BDC 2610F2B0 */  addiu      $s0, $s0, %lo(D_8002F2B0)
/* DAFA0 80124BE0 8E25FAB0 */  lw         $a1, %lo(D_8002FAB0)($s1)
/* DAFA4 80124BE4 8E420244 */  lw         $v0, 0x244($s2)
/* DAFA8 80124BE8 24A50001 */  addiu      $a1, $a1, 0x1
/* DAFAC 80124BEC 30A503FF */  andi       $a1, $a1, 0x3FF
/* DAFB0 80124BF0 8C480000 */  lw         $t0, 0x0($v0)
/* DAFB4 80124BF4 8C490004 */  lw         $t1, 0x4($v0)
/* DAFB8 80124BF8 8C4A0008 */  lw         $t2, 0x8($v0)
/* DAFBC 80124BFC AFA80020 */  sw         $t0, 0x20($sp)
/* DAFC0 80124C00 AFA90024 */  sw         $t1, 0x24($sp)
/* DAFC4 80124C04 AFAA0028 */  sw         $t2, 0x28($sp)
/* DAFC8 80124C08 00051040 */  sll        $v0, $a1, 1
/* DAFCC 80124C0C 00501021 */  addu       $v0, $v0, $s0
/* DAFD0 80124C10 94440000 */  lhu        $a0, 0x0($v0)
/* DAFD4 80124C14 3463851F */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
/* DAFD8 80124C18 00830019 */  multu      $a0, $v1
/* DAFDC 80124C1C 00004010 */  mfhi       $t0
/* DAFE0 80124C20 00081902 */  srl        $v1, $t0, 4
/* DAFE4 80124C24 00031040 */  sll        $v0, $v1, 1
/* DAFE8 80124C28 00431021 */  addu       $v0, $v0, $v1
/* DAFEC 80124C2C 000210C0 */  sll        $v0, $v0, 3
/* DAFF0 80124C30 00431021 */  addu       $v0, $v0, $v1
/* DAFF4 80124C34 00021040 */  sll        $v0, $v0, 1
/* DAFF8 80124C38 00822023 */  subu       $a0, $a0, $v0
/* DAFFC 80124C3C 8E420244 */  lw         $v0, 0x244($s2)
/* DB000 80124C40 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* DB004 80124C44 C4420018 */  lwc1       $f2, 0x18($v0)
/* DB008 80124C48 44840000 */  mtc1       $a0, $f0
/* DB00C 80124C4C 46800020 */  cvt.s.w    $f0, $f0
/* DB010 80124C50 46001082 */  mul.s      $f2, $f2, $f0
/* DB014 80124C54 24420018 */  addiu      $v0, $v0, 0x18
/* DB018 80124C58 E7A20030 */  swc1       $f2, 0x30($sp)
/* DB01C 80124C5C C4440004 */  lwc1       $f4, 0x4($v0)
/* DB020 80124C60 46002102 */  mul.s      $f4, $f4, $f0
/* DB024 80124C64 E7A40034 */  swc1       $f4, 0x34($sp)
/* DB028 80124C68 C4460008 */  lwc1       $f6, 0x8($v0)
/* DB02C 80124C6C 46003182 */  mul.s      $f6, $f6, $f0
/* DB030 80124C70 C7A00020 */  lwc1       $f0, 0x20($sp)
/* DB034 80124C74 46020000 */  add.s      $f0, $f0, $f2
/* DB038 80124C78 3C01800D */  lui        $at, %hi(D_race_800CE928)
/* DB03C 80124C7C C428E928 */  lwc1       $f8, %lo(D_race_800CE928)($at)
/* DB040 80124C80 27A60020 */  addiu      $a2, $sp, 0x20
/* DB044 80124C84 E7A00020 */  swc1       $f0, 0x20($sp)
/* DB048 80124C88 E7A60038 */  swc1       $f6, 0x38($sp)
/* DB04C 80124C8C C4C20004 */  lwc1       $f2, 0x4($a2)
/* DB050 80124C90 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DB054 80124C94 46041080 */  add.s      $f2, $f2, $f4
/* DB058 80124C98 C4C00008 */  lwc1       $f0, 0x8($a2)
/* DB05C 80124C9C 3C01800D */  lui        $at, %hi(D_race_800CE92C)
/* DB060 80124CA0 C424E92C */  lwc1       $f4, %lo(D_race_800CE92C)($at)
/* DB064 80124CA4 46060000 */  add.s      $f0, $f0, $f6
/* DB068 80124CA8 AE25FAB0 */  sw         $a1, %lo(D_8002FAB0)($s1)
/* DB06C 80124CAC E4C20004 */  swc1       $f2, 0x4($a2)
/* DB070 80124CB0 E4C00008 */  swc1       $f0, 0x8($a2)
/* DB074 80124CB4 E7A80010 */  swc1       $f8, 0x10($sp)
/* DB078 80124CB8 E7A40014 */  swc1       $f4, 0x14($sp)
/* DB07C 80124CBC E7A40018 */  swc1       $f4, 0x18($sp)
/* DB080 80124CC0 8E440010 */  lw         $a0, 0x10($s2)
/* DB084 80124CC4 0C046530 */  jal        func_race_801194C0
/* DB088 80124CC8 24050045 */   addiu     $a1, $zero, 0x45
/* DB08C 80124CCC 8E23FAB0 */  lw         $v1, %lo(D_8002FAB0)($s1)
/* DB090 80124CD0 3C051B4E */  lui        $a1, (0x1B4E81B5 >> 16)
/* DB094 80124CD4 24630001 */  addiu      $v1, $v1, 0x1
/* DB098 80124CD8 306303FF */  andi       $v1, $v1, 0x3FF
/* DB09C 80124CDC 00031040 */  sll        $v0, $v1, 1
/* DB0A0 80124CE0 00501021 */  addu       $v0, $v0, $s0
/* DB0A4 80124CE4 94440000 */  lhu        $a0, 0x0($v0)
/* DB0A8 80124CE8 34A581B5 */  ori        $a1, $a1, (0x1B4E81B5 & 0xFFFF)
/* DB0AC 80124CEC 00850019 */  multu      $a0, $a1
/* DB0B0 80124CF0 AE23FAB0 */  sw         $v1, %lo(D_8002FAB0)($s1)
/* DB0B4 80124CF4 00004010 */  mfhi       $t0
/* DB0B8 80124CF8 00081142 */  srl        $v0, $t0, 5
/* DB0BC 80124CFC 00021880 */  sll        $v1, $v0, 2
/* DB0C0 80124D00 00621821 */  addu       $v1, $v1, $v0
/* DB0C4 80124D04 00031100 */  sll        $v0, $v1, 4
/* DB0C8 80124D08 00431023 */  subu       $v0, $v0, $v1
/* DB0CC 80124D0C 00021080 */  sll        $v0, $v0, 2
/* DB0D0 80124D10 00822023 */  subu       $a0, $a0, $v0
/* DB0D4 80124D14 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* DB0D8 80124D18 248400C8 */  addiu      $a0, $a0, 0xC8
/* DB0DC 80124D1C 0804934B */  j          .Lrace_80124D2C
/* DB0E0 80124D20 AE440234 */   sw        $a0, 0x234($s2)
.Lrace_80124D24:
/* DB0E4 80124D24 00651023 */  subu       $v0, $v1, $a1
/* DB0E8 80124D28 AE420234 */  sw         $v0, 0x234($s2)
.Lrace_80124D2C:
/* DB0EC 80124D2C 8FBF004C */  lw         $ra, 0x4C($sp)
/* DB0F0 80124D30 8FB20048 */  lw         $s2, 0x48($sp)
/* DB0F4 80124D34 8FB10044 */  lw         $s1, 0x44($sp)
/* DB0F8 80124D38 8FB00040 */  lw         $s0, 0x40($sp)
/* DB0FC 80124D3C 03E00008 */  jr         $ra
/* DB100 80124D40 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_80124D44
/* DB104 80124D44 03E00008 */  jr         $ra
/* DB108 80124D48 00000000 */   nop

glabel func_race_80124D4C
/* DB10C 80124D4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DB110 80124D50 AFB00010 */  sw         $s0, 0x10($sp)
/* DB114 80124D54 00808021 */  addu       $s0, $a0, $zero
/* DB118 80124D58 AFBF0018 */  sw         $ra, 0x18($sp)
/* DB11C 80124D5C AFB10014 */  sw         $s1, 0x14($sp)
/* DB120 80124D60 8E020028 */  lw         $v0, 0x28($s0)
/* DB124 80124D64 1040000E */  beqz       $v0, .Lrace_80124DA0
/* DB128 80124D68 00A08821 */   addu      $s1, $a1, $zero
/* DB12C 80124D6C 8E030250 */  lw         $v1, 0x250($s0)
/* DB130 80124D70 8C620024 */  lw         $v0, 0x24($v1)
/* DB134 80124D74 260501CC */  addiu      $a1, $s0, 0x1CC
/* DB138 80124D78 84440018 */  lh         $a0, 0x18($v0)
/* DB13C 80124D7C 8C42001C */  lw         $v0, 0x1C($v0)
/* DB140 80124D80 0040F809 */  jalr       $v0
/* DB144 80124D84 00642021 */   addu      $a0, $v1, $a0
/* DB148 80124D88 8E22012C */  lw         $v0, 0x12C($s1)
/* DB14C 80124D8C 8E050250 */  lw         $a1, 0x250($s0)
/* DB150 80124D90 84440168 */  lh         $a0, 0x168($v0)
/* DB154 80124D94 8C42016C */  lw         $v0, 0x16C($v0)
/* DB158 80124D98 0040F809 */  jalr       $v0
/* DB15C 80124D9C 02242021 */   addu      $a0, $s1, $a0
.Lrace_80124DA0:
/* DB160 80124DA0 26040030 */  addiu      $a0, $s0, 0x30
/* DB164 80124DA4 0C0354F0 */  jal        func_race_800D53C0
/* DB168 80124DA8 02202821 */   addu      $a1, $s1, $zero
/* DB16C 80124DAC 8FBF0018 */  lw         $ra, 0x18($sp)
/* DB170 80124DB0 8FB10014 */  lw         $s1, 0x14($sp)
/* DB174 80124DB4 8FB00010 */  lw         $s0, 0x10($sp)
/* DB178 80124DB8 03E00008 */  jr         $ra
/* DB17C 80124DBC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80124DC0
/* DB180 80124DC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DB184 80124DC4 AFB00020 */  sw         $s0, 0x20($sp)
/* DB188 80124DC8 00808021 */  addu       $s0, $a0, $zero
/* DB18C 80124DCC AFBF0024 */  sw         $ra, 0x24($sp)
/* DB190 80124DD0 8E030004 */  lw         $v1, 0x4($s0)
/* DB194 80124DD4 24020002 */  addiu      $v0, $zero, 0x2
/* DB198 80124DD8 10620005 */  beq        $v1, $v0, .Lrace_80124DF0
/* DB19C 80124DDC 24020003 */   addiu     $v0, $zero, 0x3
/* DB1A0 80124DE0 10620007 */  beq        $v1, $v0, .Lrace_80124E00
/* DB1A4 80124DE4 24020006 */   addiu     $v0, $zero, 0x6
/* DB1A8 80124DE8 08049385 */  j          .Lrace_80124E14
/* DB1AC 80124DEC 00000000 */   nop
.Lrace_80124DF0:
/* DB1B0 80124DF0 AE020004 */  sw         $v0, 0x4($s0)
/* DB1B4 80124DF4 24021B58 */  addiu      $v0, $zero, 0x1B58
/* DB1B8 80124DF8 080493A4 */  j          .Lrace_80124E90
/* DB1BC 80124DFC AE020008 */   sw        $v0, 0x8($s0)
.Lrace_80124E00:
/* DB1C0 80124E00 24020004 */  addiu      $v0, $zero, 0x4
/* DB1C4 80124E04 AE020004 */  sw         $v0, 0x4($s0)
/* DB1C8 80124E08 240201F4 */  addiu      $v0, $zero, 0x1F4
/* DB1CC 80124E0C 080493A4 */  j          .Lrace_80124E90
/* DB1D0 80124E10 AE020008 */   sw        $v0, 0x8($s0)
.Lrace_80124E14:
/* DB1D4 80124E14 8E03001C */  lw         $v1, 0x1C($s0)
/* DB1D8 80124E18 AE020004 */  sw         $v0, 0x4($s0)
/* DB1DC 80124E1C 10600008 */  beqz       $v1, .Lrace_80124E40
/* DB1E0 80124E20 AE000008 */   sw        $zero, 0x8($s0)
/* DB1E4 80124E24 8E05024C */  lw         $a1, 0x24C($s0)
/* DB1E8 80124E28 10A00005 */  beqz       $a1, .Lrace_80124E40
/* DB1EC 80124E2C 00000000 */   nop
/* DB1F0 80124E30 8C640040 */  lw         $a0, 0x40($v1)
/* DB1F4 80124E34 0C01088C */  jal        func_80042230
/* DB1F8 80124E38 00000000 */   nop
/* DB1FC 80124E3C AE00024C */  sw         $zero, 0x24C($s0)
.Lrace_80124E40:
/* DB200 80124E40 3C01800D */  lui        $at, %hi(D_race_800CE930)
/* DB204 80124E44 C420E930 */  lwc1       $f0, %lo(D_race_800CE930)($at)
/* DB208 80124E48 3C01800D */  lui        $at, %hi(D_race_800CE934)
/* DB20C 80124E4C C422E934 */  lwc1       $f2, %lo(D_race_800CE934)($at)
/* DB210 80124E50 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DB214 80124E54 E7A00010 */  swc1       $f0, 0x10($sp)
/* DB218 80124E58 E7A20014 */  swc1       $f2, 0x14($sp)
/* DB21C 80124E5C E7A20018 */  swc1       $f2, 0x18($sp)
/* DB220 80124E60 8E040010 */  lw         $a0, 0x10($s0)
/* DB224 80124E64 8E060244 */  lw         $a2, 0x244($s0)
/* DB228 80124E68 0C046530 */  jal        func_race_801194C0
/* DB22C 80124E6C 24050042 */   addiu     $a1, $zero, 0x42
/* DB230 80124E70 8E030240 */  lw         $v1, 0x240($s0)
/* DB234 80124E74 10600006 */  beqz       $v1, .Lrace_80124E90
/* DB238 80124E78 00000000 */   nop
/* DB23C 80124E7C 8C620034 */  lw         $v0, 0x34($v1)
/* DB240 80124E80 84440018 */  lh         $a0, 0x18($v0)
/* DB244 80124E84 8C42001C */  lw         $v0, 0x1C($v0)
/* DB248 80124E88 0040F809 */  jalr       $v0
/* DB24C 80124E8C 00642021 */   addu      $a0, $v1, $a0
.Lrace_80124E90:
/* DB250 80124E90 8FBF0024 */  lw         $ra, 0x24($sp)
/* DB254 80124E94 8FB00020 */  lw         $s0, 0x20($sp)
/* DB258 80124E98 03E00008 */  jr         $ra
/* DB25C 80124E9C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80124EA0
/* DB260 80124EA0 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* DB264 80124EA4 AFB100A4 */  sw         $s1, 0xA4($sp)
/* DB268 80124EA8 00808821 */  addu       $s1, $a0, $zero
/* DB26C 80124EAC AFBF00A8 */  sw         $ra, 0xA8($sp)
/* DB270 80124EB0 AFB000A0 */  sw         $s0, 0xA0($sp)
/* DB274 80124EB4 F7B400B0 */  sdc1       $f20, 0xB0($sp)
/* DB278 80124EB8 8E220244 */  lw         $v0, 0x244($s1)
/* DB27C 80124EBC 3C01800D */  lui        $at, %hi(D_race_800CE938)
/* DB280 80124EC0 C422E938 */  lwc1       $f2, %lo(D_race_800CE938)($at)
/* DB284 80124EC4 8C480000 */  lw         $t0, 0x0($v0)
/* DB288 80124EC8 8C490004 */  lw         $t1, 0x4($v0)
/* DB28C 80124ECC 8C4A0008 */  lw         $t2, 0x8($v0)
/* DB290 80124ED0 AFA80018 */  sw         $t0, 0x18($sp)
/* DB294 80124ED4 AFA9001C */  sw         $t1, 0x1C($sp)
/* DB298 80124ED8 AFAA0020 */  sw         $t2, 0x20($sp)
/* DB29C 80124EDC 27A20018 */  addiu      $v0, $sp, 0x18
/* DB2A0 80124EE0 C4400008 */  lwc1       $f0, 0x8($v0)
/* DB2A4 80124EE4 46020000 */  add.s      $f0, $f0, $f2
/* DB2A8 80124EE8 E4400008 */  swc1       $f0, 0x8($v0)
/* DB2AC 80124EEC 8E220244 */  lw         $v0, 0x244($s1)
/* DB2B0 80124EF0 8C480018 */  lw         $t0, 0x18($v0)
/* DB2B4 80124EF4 8C49001C */  lw         $t1, 0x1C($v0)
/* DB2B8 80124EF8 8C4A0020 */  lw         $t2, 0x20($v0)
/* DB2BC 80124EFC AFA80048 */  sw         $t0, 0x48($sp)
/* DB2C0 80124F00 AFA9004C */  sw         $t1, 0x4C($sp)
/* DB2C4 80124F04 AFAA0050 */  sw         $t2, 0x50($sp)
/* DB2C8 80124F08 8E230004 */  lw         $v1, 0x4($s1)
/* DB2CC 80124F0C 24020002 */  addiu      $v0, $zero, 0x2
/* DB2D0 80124F10 1462000E */  bne        $v1, $v0, .Lrace_80124F4C
/* DB2D4 80124F14 24020004 */   addiu     $v0, $zero, 0x4
/* DB2D8 80124F18 C6200008 */  lwc1       $f0, 0x8($s1)
/* DB2DC 80124F1C 46800020 */  cvt.s.w    $f0, $f0
/* DB2E0 80124F20 3C01800D */  lui        $at, %hi(D_race_800CE93C)
/* DB2E4 80124F24 C422E93C */  lwc1       $f2, %lo(D_race_800CE93C)($at)
/* DB2E8 80124F28 3C01800D */  lui        $at, %hi(D_race_800CE940)
/* DB2EC 80124F2C C424E940 */  lwc1       $f4, %lo(D_race_800CE940)($at)
/* DB2F0 80124F30 46020003 */  div.s      $f0, $f0, $f2
/* DB2F4 80124F34 46002101 */  sub.s      $f4, $f4, $f0
/* DB2F8 80124F38 3C01800D */  lui        $at, %hi(D_race_800CE944)
/* DB2FC 80124F3C C420E944 */  lwc1       $f0, %lo(D_race_800CE944)($at)
/* DB300 80124F40 46002002 */  mul.s      $f0, $f4, $f0
/* DB304 80124F44 080493E2 */  j          .Lrace_80124F88
/* DB308 80124F48 E6200238 */   swc1      $f0, 0x238($s1)
.Lrace_80124F4C:
/* DB30C 80124F4C 1462000B */  bne        $v1, $v0, .Lrace_80124F7C
/* DB310 80124F50 00000000 */   nop
/* DB314 80124F54 C6240008 */  lwc1       $f4, 0x8($s1)
/* DB318 80124F58 46802120 */  cvt.s.w    $f4, $f4
/* DB31C 80124F5C 3C01800D */  lui        $at, %hi(D_race_800CE948)
/* DB320 80124F60 C422E948 */  lwc1       $f2, %lo(D_race_800CE948)($at)
/* DB324 80124F64 3C01800D */  lui        $at, %hi(D_race_800CE94C)
/* DB328 80124F68 C420E94C */  lwc1       $f0, %lo(D_race_800CE94C)($at)
/* DB32C 80124F6C 46022103 */  div.s      $f4, $f4, $f2
/* DB330 80124F70 46002002 */  mul.s      $f0, $f4, $f0
/* DB334 80124F74 080493E2 */  j          .Lrace_80124F88
/* DB338 80124F78 E6200238 */   swc1      $f0, 0x238($s1)
.Lrace_80124F7C:
/* DB33C 80124F7C 3C01800D */  lui        $at, %hi(D_race_800CE950)
/* DB340 80124F80 C420E950 */  lwc1       $f0, %lo(D_race_800CE950)($at)
/* DB344 80124F84 E6200238 */  swc1       $f0, 0x238($s1)
.Lrace_80124F88:
/* DB348 80124F88 C6220238 */  lwc1       $f2, 0x238($s1)
/* DB34C 80124F8C 3C01800D */  lui        $at, %hi(D_race_800CE954)
/* DB350 80124F90 C420E954 */  lwc1       $f0, %lo(D_race_800CE954)($at)
/* DB354 80124F94 46001502 */  mul.s      $f20, $f2, $f0
/* DB358 80124F98 C7A20048 */  lwc1       $f2, 0x48($sp)
/* DB35C 80124F9C 46141082 */  mul.s      $f2, $f2, $f20
/* DB360 80124FA0 C7A4004C */  lwc1       $f4, 0x4C($sp)
/* DB364 80124FA4 46142102 */  mul.s      $f4, $f4, $f20
/* DB368 80124FA8 C7A60050 */  lwc1       $f6, 0x50($sp)
/* DB36C 80124FAC 46143182 */  mul.s      $f6, $f6, $f20
/* DB370 80124FB0 C7A00018 */  lwc1       $f0, 0x18($sp)
/* DB374 80124FB4 27B00018 */  addiu      $s0, $sp, 0x18
/* DB378 80124FB8 46020000 */  add.s      $f0, $f0, $f2
/* DB37C 80124FBC E7A20090 */  swc1       $f2, 0x90($sp)
/* DB380 80124FC0 E7A40094 */  swc1       $f4, 0x94($sp)
/* DB384 80124FC4 E7A60098 */  swc1       $f6, 0x98($sp)
/* DB388 80124FC8 E7A00028 */  swc1       $f0, 0x28($sp)
/* DB38C 80124FCC C6000004 */  lwc1       $f0, 0x4($s0)
/* DB390 80124FD0 46040000 */  add.s      $f0, $f0, $f4
/* DB394 80124FD4 E7A0002C */  swc1       $f0, 0x2C($sp)
/* DB398 80124FD8 C6000008 */  lwc1       $f0, 0x8($s0)
/* DB39C 80124FDC 46060000 */  add.s      $f0, $f0, $f6
/* DB3A0 80124FE0 E7A00030 */  swc1       $f0, 0x30($sp)
/* DB3A4 80124FE4 8E220028 */  lw         $v0, 0x28($s1)
/* DB3A8 80124FE8 10400038 */  beqz       $v0, .Lrace_801250CC
/* DB3AC 80124FEC 27A50028 */   addiu     $a1, $sp, 0x28
/* DB3B0 80124FF0 8C43005C */  lw         $v1, 0x5C($v0)
/* DB3B4 80124FF4 8C620024 */  lw         $v0, 0x24($v1)
/* DB3B8 80124FF8 84440010 */  lh         $a0, 0x10($v0)
/* DB3BC 80124FFC 8C420014 */  lw         $v0, 0x14($v0)
/* DB3C0 80125000 0040F809 */  jalr       $v0
/* DB3C4 80125004 00642021 */   addu      $a0, $v1, $a0
/* DB3C8 80125008 C7A00028 */  lwc1       $f0, 0x28($sp)
/* DB3CC 8012500C C7A20018 */  lwc1       $f2, 0x18($sp)
/* DB3D0 80125010 46020001 */  sub.s      $f0, $f0, $f2
/* DB3D4 80125014 E7A00048 */  swc1       $f0, 0x48($sp)
/* DB3D8 80125018 C7A0002C */  lwc1       $f0, 0x2C($sp)
/* DB3DC 8012501C C6020004 */  lwc1       $f2, 0x4($s0)
/* DB3E0 80125020 46020001 */  sub.s      $f0, $f0, $f2
/* DB3E4 80125024 E7A0004C */  swc1       $f0, 0x4C($sp)
/* DB3E8 80125028 C7A00030 */  lwc1       $f0, 0x30($sp)
/* DB3EC 8012502C C6020008 */  lwc1       $f2, 0x8($s0)
/* DB3F0 80125030 46020001 */  sub.s      $f0, $f0, $f2
/* DB3F4 80125034 27A40048 */  addiu      $a0, $sp, 0x48
/* DB3F8 80125038 00802821 */  addu       $a1, $a0, $zero
/* DB3FC 8012503C 0C000F26 */  jal        func_80003C98
/* DB400 80125040 E7A00050 */   swc1      $f0, 0x50($sp)
/* DB404 80125044 C7A20018 */  lwc1       $f2, 0x18($sp)
/* DB408 80125048 C7A00028 */  lwc1       $f0, 0x28($sp)
/* DB40C 8012504C 46001081 */  sub.s      $f2, $f2, $f0
/* DB410 80125050 46021082 */  mul.s      $f2, $f2, $f2
/* DB414 80125054 C6060004 */  lwc1       $f6, 0x4($s0)
/* DB418 80125058 C7A0002C */  lwc1       $f0, 0x2C($sp)
/* DB41C 8012505C 46003181 */  sub.s      $f6, $f6, $f0
/* DB420 80125060 46063182 */  mul.s      $f6, $f6, $f6
/* DB424 80125064 C7A40030 */  lwc1       $f4, 0x30($sp)
/* DB428 80125068 C6000008 */  lwc1       $f0, 0x8($s0)
/* DB42C 8012506C 46040001 */  sub.s      $f0, $f0, $f4
/* DB430 80125070 46000002 */  mul.s      $f0, $f0, $f0
/* DB434 80125074 46061080 */  add.s      $f2, $f2, $f6
/* DB438 80125078 46001300 */  add.s      $f12, $f2, $f0
/* DB43C 8012507C 46006004 */  sqrt.s     $f0, $f12
/* DB440 80125080 46000032 */  c.eq.s     $f0, $f0
/* DB444 80125084 00000000 */  nop
/* DB448 80125088 45010003 */  bc1t       .Lrace_80125098
/* DB44C 8012508C 00000000 */   nop
/* DB450 80125090 0C006BC8 */  jal        sqrt
/* DB454 80125094 00000000 */   nop
.Lrace_80125098:
/* DB458 80125098 8E240028 */  lw         $a0, 0x28($s1)
/* DB45C 8012509C 46000506 */  mov.s      $f20, $f0
/* DB460 801250A0 0C0165C5 */  jal        func_80059714
/* DB464 801250A4 2484001C */   addiu     $a0, $a0, 0x1C
/* DB468 801250A8 4614003C */  c.lt.s     $f0, $f20
/* DB46C 801250AC 00000000 */  nop
/* DB470 801250B0 45030001 */  bc1tl      .Lrace_801250B8
/* DB474 801250B4 4600A501 */   sub.s     $f20, $f20, $f0
.Lrace_801250B8:
/* DB478 801250B8 3C01800D */  lui        $at, %hi(D_race_800CE958)
/* DB47C 801250BC C420E958 */  lwc1       $f0, %lo(D_race_800CE958)($at)
/* DB480 801250C0 4600A002 */  mul.s      $f0, $f20, $f0
/* DB484 801250C4 08049456 */  j          .Lrace_80125158
/* DB488 801250C8 E6200238 */   swc1      $f0, 0x238($s1)
.Lrace_801250CC:
/* DB48C 801250CC 02002821 */  addu       $a1, $s0, $zero
/* DB490 801250D0 27A20038 */  addiu      $v0, $sp, 0x38
/* DB494 801250D4 27A60028 */  addiu      $a2, $sp, 0x28
/* DB498 801250D8 AFA20010 */  sw         $v0, 0x10($sp)
/* DB49C 801250DC 8E240020 */  lw         $a0, 0x20($s1)
/* DB4A0 801250E0 0C03CAED */  jal        func_race_800F2BB4
/* DB4A4 801250E4 27A70058 */   addiu     $a3, $sp, 0x58
/* DB4A8 801250E8 1040001B */  beqz       $v0, .Lrace_80125158
/* DB4AC 801250EC 00000000 */   nop
/* DB4B0 801250F0 C7A20018 */  lwc1       $f2, 0x18($sp)
/* DB4B4 801250F4 C7A00038 */  lwc1       $f0, 0x38($sp)
/* DB4B8 801250F8 46001081 */  sub.s      $f2, $f2, $f0
/* DB4BC 801250FC 46021082 */  mul.s      $f2, $f2, $f2
/* DB4C0 80125100 C6060004 */  lwc1       $f6, 0x4($s0)
/* DB4C4 80125104 C7A0003C */  lwc1       $f0, 0x3C($sp)
/* DB4C8 80125108 46003181 */  sub.s      $f6, $f6, $f0
/* DB4CC 8012510C 46063182 */  mul.s      $f6, $f6, $f6
/* DB4D0 80125110 C7A40040 */  lwc1       $f4, 0x40($sp)
/* DB4D4 80125114 C6000008 */  lwc1       $f0, 0x8($s0)
/* DB4D8 80125118 46040001 */  sub.s      $f0, $f0, $f4
/* DB4DC 8012511C 46000002 */  mul.s      $f0, $f0, $f0
/* DB4E0 80125120 46061080 */  add.s      $f2, $f2, $f6
/* DB4E4 80125124 46001300 */  add.s      $f12, $f2, $f0
/* DB4E8 80125128 46006104 */  sqrt.s     $f4, $f12
/* DB4EC 8012512C 46042032 */  c.eq.s     $f4, $f4
/* DB4F0 80125130 00000000 */  nop
/* DB4F4 80125134 45010004 */  bc1t       .Lrace_80125148
/* DB4F8 80125138 00000000 */   nop
/* DB4FC 8012513C 0C006BC8 */  jal        sqrt
/* DB500 80125140 00000000 */   nop
/* DB504 80125144 46000106 */  mov.s      $f4, $f0
.Lrace_80125148:
/* DB508 80125148 3C01800D */  lui        $at, %hi(D_race_800CE95C)
/* DB50C 8012514C C420E95C */  lwc1       $f0, %lo(D_race_800CE95C)($at)
/* DB510 80125150 46002002 */  mul.s      $f0, $f4, $f0
/* DB514 80125154 E6200238 */  swc1       $f0, 0x238($s1)
.Lrace_80125158:
/* DB518 80125158 C6200238 */  lwc1       $f0, 0x238($s1)
/* DB51C 8012515C C7A60048 */  lwc1       $f6, 0x48($sp)
/* DB520 80125160 46003182 */  mul.s      $f6, $f6, $f0
/* DB524 80125164 C7A4004C */  lwc1       $f4, 0x4C($sp)
/* DB528 80125168 46002102 */  mul.s      $f4, $f4, $f0
/* DB52C 8012516C C7A20050 */  lwc1       $f2, 0x50($sp)
/* DB530 80125170 00002821 */  addu       $a1, $zero, $zero
/* DB534 80125174 46001082 */  mul.s      $f2, $f2, $f0
/* DB538 80125178 27A30018 */  addiu      $v1, $sp, 0x18
/* DB53C 8012517C 02202021 */  addu       $a0, $s1, $zero
/* DB540 80125180 E7A60048 */  swc1       $f6, 0x48($sp)
/* DB544 80125184 E7A4004C */  swc1       $f4, 0x4C($sp)
/* DB548 80125188 E7A20050 */  swc1       $f2, 0x50($sp)
.Lrace_8012518C:
/* DB54C 8012518C 2CA20004 */  sltiu      $v0, $a1, 0x4
/* DB550 80125190 10400015 */  beqz       $v0, .Lrace_801251E8
/* DB554 80125194 24A50001 */   addiu     $a1, $a1, 0x1
/* DB558 80125198 C7A00018 */  lwc1       $f0, 0x18($sp)
/* DB55C 8012519C C7A20048 */  lwc1       $f2, 0x48($sp)
/* DB560 801251A0 46020000 */  add.s      $f0, $f0, $f2
/* DB564 801251A4 C7A2004C */  lwc1       $f2, 0x4C($sp)
/* DB568 801251A8 E7A00018 */  swc1       $f0, 0x18($sp)
/* DB56C 801251AC C4600004 */  lwc1       $f0, 0x4($v1)
/* DB570 801251B0 46020000 */  add.s      $f0, $f0, $f2
/* DB574 801251B4 C4620008 */  lwc1       $f2, 0x8($v1)
/* DB578 801251B8 E4600004 */  swc1       $f0, 0x4($v1)
/* DB57C 801251BC C7A00050 */  lwc1       $f0, 0x50($sp)
/* DB580 801251C0 46001080 */  add.s      $f2, $f2, $f0
/* DB584 801251C4 E4620008 */  swc1       $f2, 0x8($v1)
/* DB588 801251C8 8FA80018 */  lw         $t0, 0x18($sp)
/* DB58C 801251CC 8FA9001C */  lw         $t1, 0x1C($sp)
/* DB590 801251D0 8FAA0020 */  lw         $t2, 0x20($sp)
/* DB594 801251D4 AC8801A8 */  sw         $t0, 0x1A8($a0)
/* DB598 801251D8 AC8901AC */  sw         $t1, 0x1AC($a0)
/* DB59C 801251DC AC8A01B0 */  sw         $t2, 0x1B0($a0)
/* DB5A0 801251E0 08049463 */  j          .Lrace_8012518C
/* DB5A4 801251E4 2484000C */   addiu     $a0, $a0, 0xC
.Lrace_801251E8:
/* DB5A8 801251E8 8FBF00A8 */  lw         $ra, 0xA8($sp)
/* DB5AC 801251EC 8FB100A4 */  lw         $s1, 0xA4($sp)
/* DB5B0 801251F0 8FB000A0 */  lw         $s0, 0xA0($sp)
/* DB5B4 801251F4 D7B400B0 */  ldc1       $f20, 0xB0($sp)
/* DB5B8 801251F8 03E00008 */  jr         $ra
/* DB5BC 801251FC 27BD00B8 */   addiu     $sp, $sp, 0xB8

glabel func_race_80125200
/* DB5C0 80125200 27BDFF90 */  addiu      $sp, $sp, -0x70
/* DB5C4 80125204 AFB40050 */  sw         $s4, 0x50($sp)
/* DB5C8 80125208 0080A021 */  addu       $s4, $a0, $zero
/* DB5CC 8012520C AFBF0058 */  sw         $ra, 0x58($sp)
/* DB5D0 80125210 AFB50054 */  sw         $s5, 0x54($sp)
/* DB5D4 80125214 AFB3004C */  sw         $s3, 0x4C($sp)
/* DB5D8 80125218 AFB20048 */  sw         $s2, 0x48($sp)
/* DB5DC 8012521C AFB10044 */  sw         $s1, 0x44($sp)
/* DB5E0 80125220 AFB00040 */  sw         $s0, 0x40($sp)
/* DB5E4 80125224 F7B60068 */  sdc1       $f22, 0x68($sp)
/* DB5E8 80125228 F7B40060 */  sdc1       $f20, 0x60($sp)
/* DB5EC 8012522C 8E820028 */  lw         $v0, 0x28($s4)
/* DB5F0 80125230 14400047 */  bnez       $v0, .Lrace_80125350
/* DB5F4 80125234 27A50020 */   addiu     $a1, $sp, 0x20
/* DB5F8 80125238 8E820244 */  lw         $v0, 0x244($s4)
/* DB5FC 8012523C 3C01800D */  lui        $at, %hi(D_race_800CE960)
/* DB600 80125240 C422E960 */  lwc1       $f2, %lo(D_race_800CE960)($at)
/* DB604 80125244 8C430000 */  lw         $v1, 0x0($v0)
/* DB608 80125248 8C480004 */  lw         $t0, 0x4($v0)
/* DB60C 8012524C 8C490008 */  lw         $t1, 0x8($v0)
/* DB610 80125250 AFA30020 */  sw         $v1, 0x20($sp)
/* DB614 80125254 AFA80024 */  sw         $t0, 0x24($sp)
/* DB618 80125258 AFA90028 */  sw         $t1, 0x28($sp)
/* DB61C 8012525C C4A00008 */  lwc1       $f0, 0x8($a1)
/* DB620 80125260 46020000 */  add.s      $f0, $f0, $f2
/* DB624 80125264 3C01800D */  lui        $at, %hi(D_race_800CE964)
/* DB628 80125268 C422E964 */  lwc1       $f2, %lo(D_race_800CE964)($at)
/* DB62C 8012526C 3C01800D */  lui        $at, %hi(D_race_800CE968)
/* DB630 80125270 C424E968 */  lwc1       $f4, %lo(D_race_800CE968)($at)
/* DB634 80125274 46001586 */  mov.s      $f22, $f2
/* DB638 80125278 4407B000 */  mfc1       $a3, $f22
/* DB63C 8012527C 46002506 */  mov.s      $f20, $f4
/* DB640 80125280 E4A00008 */  swc1       $f0, 0x8($a1)
/* DB644 80125284 8E82001C */  lw         $v0, 0x1C($s4)
/* DB648 80125288 8E860244 */  lw         $a2, 0x244($s4)
/* DB64C 8012528C 3C01800D */  lui        $at, %hi(D_race_800CE96C)
/* DB650 80125290 C420E96C */  lwc1       $f0, %lo(D_race_800CE96C)($at)
/* DB654 80125294 8C550074 */  lw         $s5, 0x74($v0)
/* DB658 80125298 24C60018 */  addiu      $a2, $a2, 0x18
/* DB65C 8012529C E7B40010 */  swc1       $f20, 0x10($sp)
/* DB660 801252A0 E7A00014 */  swc1       $f0, 0x14($sp)
/* DB664 801252A4 0C044421 */  jal        func_race_80111084
/* DB668 801252A8 02A02021 */   addu      $a0, $s5, $zero
/* DB66C 801252AC 00409821 */  addu       $s3, $v0, $zero
.Lrace_801252B0:
/* DB670 801252B0 12600027 */  beqz       $s3, .Lrace_80125350
/* DB674 801252B4 00000000 */   nop
/* DB678 801252B8 8E820024 */  lw         $v0, 0x24($s4)
/* DB67C 801252BC 12620017 */  beq        $s3, $v0, .Lrace_8012531C
/* DB680 801252C0 27A50020 */   addiu     $a1, $sp, 0x20
/* DB684 801252C4 00009021 */  addu       $s2, $zero, $zero
/* DB688 801252C8 241101A8 */  addiu      $s1, $zero, 0x1A8
/* DB68C 801252CC 02408021 */  addu       $s0, $s2, $zero
.Lrace_801252D0:
/* DB690 801252D0 2E420004 */  sltiu      $v0, $s2, 0x4
/* DB694 801252D4 10400011 */  beqz       $v0, .Lrace_8012531C
/* DB698 801252D8 02143021 */   addu      $a2, $s0, $s4
/* DB69C 801252DC 26640018 */  addiu      $a0, $s3, 0x18
/* DB6A0 801252E0 24C601A8 */  addiu      $a2, $a2, 0x1A8
/* DB6A4 801252E4 0C0455B7 */  jal        func_race_801156DC
/* DB6A8 801252E8 27A70030 */   addiu     $a3, $sp, 0x30
/* DB6AC 801252EC 14400006 */  bnez       $v0, .Lrace_80125308
/* DB6B0 801252F0 02602821 */   addu      $a1, $s3, $zero
/* DB6B4 801252F4 02912821 */  addu       $a1, $s4, $s1
/* DB6B8 801252F8 2631000C */  addiu      $s1, $s1, 0xC
/* DB6BC 801252FC 2610000C */  addiu      $s0, $s0, 0xC
/* DB6C0 80125300 080494B4 */  j          .Lrace_801252D0
/* DB6C4 80125304 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_80125308:
/* DB6C8 80125308 8E820000 */  lw         $v0, 0x0($s4)
/* DB6CC 8012530C 84440048 */  lh         $a0, 0x48($v0)
/* DB6D0 80125310 8C42004C */  lw         $v0, 0x4C($v0)
/* DB6D4 80125314 0040F809 */  jalr       $v0
/* DB6D8 80125318 02842021 */   addu      $a0, $s4, $a0
.Lrace_8012531C:
/* DB6DC 8012531C 02A02021 */  addu       $a0, $s5, $zero
/* DB6E0 80125320 02602821 */  addu       $a1, $s3, $zero
/* DB6E4 80125324 8E870244 */  lw         $a3, 0x244($s4)
/* DB6E8 80125328 3C01800D */  lui        $at, %hi(D_race_800CE970)
/* DB6EC 8012532C C420E970 */  lwc1       $f0, %lo(D_race_800CE970)($at)
/* DB6F0 80125330 27A60020 */  addiu      $a2, $sp, 0x20
/* DB6F4 80125334 E7B60010 */  swc1       $f22, 0x10($sp)
/* DB6F8 80125338 E7B40014 */  swc1       $f20, 0x14($sp)
/* DB6FC 8012533C 24E70018 */  addiu      $a3, $a3, 0x18
/* DB700 80125340 0C044487 */  jal        func_race_8011121C
/* DB704 80125344 E7A00018 */   swc1      $f0, 0x18($sp)
/* DB708 80125348 080494AC */  j          .Lrace_801252B0
/* DB70C 8012534C 00409821 */   addu      $s3, $v0, $zero
.Lrace_80125350:
/* DB710 80125350 8FBF0058 */  lw         $ra, 0x58($sp)
/* DB714 80125354 8FB50054 */  lw         $s5, 0x54($sp)
/* DB718 80125358 8FB40050 */  lw         $s4, 0x50($sp)
/* DB71C 8012535C 8FB3004C */  lw         $s3, 0x4C($sp)
/* DB720 80125360 8FB20048 */  lw         $s2, 0x48($sp)
/* DB724 80125364 8FB10044 */  lw         $s1, 0x44($sp)
/* DB728 80125368 8FB00040 */  lw         $s0, 0x40($sp)
/* DB72C 8012536C D7B60068 */  ldc1       $f22, 0x68($sp)
/* DB730 80125370 D7B40060 */  ldc1       $f20, 0x60($sp)
/* DB734 80125374 03E00008 */  jr         $ra
/* DB738 80125378 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_8012537C
/* DB73C 8012537C 27BDFF50 */  addiu      $sp, $sp, -0xB0
/* DB740 80125380 AFB3009C */  sw         $s3, 0x9C($sp)
/* DB744 80125384 00809821 */  addu       $s3, $a0, $zero
/* DB748 80125388 AFB20098 */  sw         $s2, 0x98($sp)
/* DB74C 8012538C AFBF00A0 */  sw         $ra, 0xA0($sp)
/* DB750 80125390 AFB10094 */  sw         $s1, 0x94($sp)
/* DB754 80125394 AFB00090 */  sw         $s0, 0x90($sp)
/* DB758 80125398 F7B400A8 */  sdc1       $f20, 0xA8($sp)
/* DB75C 8012539C 8E630004 */  lw         $v1, 0x4($s3)
/* DB760 801253A0 24020003 */  addiu      $v0, $zero, 0x3
/* DB764 801253A4 1462008D */  bne        $v1, $v0, .Lrace_801255DC
/* DB768 801253A8 00A09021 */   addu      $s2, $a1, $zero
/* DB76C 801253AC 8E420D04 */  lw         $v0, 0xD04($s2)
/* DB770 801253B0 30420001 */  andi       $v0, $v0, 0x1
/* DB774 801253B4 10400007 */  beqz       $v0, .Lrace_801253D4
/* DB778 801253B8 02402021 */   addu      $a0, $s2, $zero
/* DB77C 801253BC 0C04339E */  jal        func_race_8010CE78
/* DB780 801253C0 24050001 */   addiu     $a1, $zero, 0x1
/* DB784 801253C4 0C0438E0 */  jal        func_race_8010E380
/* DB788 801253C8 02402021 */   addu      $a0, $s2, $zero
/* DB78C 801253CC 08049577 */  j          .Lrace_801255DC
/* DB790 801253D0 00000000 */   nop
.Lrace_801253D4:
/* DB794 801253D4 265003FC */  addiu      $s0, $s2, 0x3FC
/* DB798 801253D8 8E0206AC */  lw         $v0, 0x6AC($s0)
/* DB79C 801253DC 30420080 */  andi       $v0, $v0, 0x80
/* DB7A0 801253E0 1440007E */  bnez       $v0, .Lrace_801255DC
/* DB7A4 801253E4 00000000 */   nop
/* DB7A8 801253E8 3C01800D */  lui        $at, %hi(D_race_800CE97C)
/* DB7AC 801253EC C434E97C */  lwc1       $f20, %lo(D_race_800CE97C)($at)
/* DB7B0 801253F0 8E480568 */  lw         $t0, 0x568($s2)
/* DB7B4 801253F4 8E49056C */  lw         $t1, 0x56C($s2)
/* DB7B8 801253F8 8E4A0570 */  lw         $t2, 0x570($s2)
/* DB7BC 801253FC AFA80040 */  sw         $t0, 0x40($sp)
/* DB7C0 80125400 AFA90044 */  sw         $t1, 0x44($sp)
/* DB7C4 80125404 AFAA0048 */  sw         $t2, 0x48($sp)
/* DB7C8 80125408 AFA00050 */  sw         $zero, 0x50($sp)
/* DB7CC 8012540C AFA00054 */  sw         $zero, 0x54($sp)
/* DB7D0 80125410 0C04355D */  jal        func_race_8010D574
/* DB7D4 80125414 E7B40058 */   swc1      $f20, 0x58($sp)
/* DB7D8 80125418 AFA00030 */  sw         $zero, 0x30($sp)
/* DB7DC 8012541C C7A00030 */  lwc1       $f0, 0x30($sp)
/* DB7E0 80125420 AFA00034 */  sw         $zero, 0x34($sp)
/* DB7E4 80125424 AFA00038 */  sw         $zero, 0x38($sp)
/* DB7E8 80125428 E6000004 */  swc1       $f0, 0x4($s0)
/* DB7EC 8012542C C7A00034 */  lwc1       $f0, 0x34($sp)
/* DB7F0 80125430 E6000008 */  swc1       $f0, 0x8($s0)
/* DB7F4 80125434 C7A00038 */  lwc1       $f0, 0x38($sp)
/* DB7F8 80125438 E600000C */  swc1       $f0, 0xC($s0)
/* DB7FC 8012543C 3C01800D */  lui        $at, %hi(D_race_800CE980)
/* DB800 80125440 C420E980 */  lwc1       $f0, %lo(D_race_800CE980)($at)
/* DB804 80125444 C7AC0040 */  lwc1       $f12, 0x40($sp)
/* DB808 80125448 46006302 */  mul.s      $f12, $f12, $f0
/* DB80C 8012544C C7AA0044 */  lwc1       $f10, 0x44($sp)
/* DB810 80125450 46005282 */  mul.s      $f10, $f10, $f0
/* DB814 80125454 C7A80048 */  lwc1       $f8, 0x48($sp)
/* DB818 80125458 46004202 */  mul.s      $f8, $f8, $f0
/* DB81C 8012545C C7A20050 */  lwc1       $f2, 0x50($sp)
/* DB820 80125460 3C01800D */  lui        $at, %hi(D_race_800CE984)
/* DB824 80125464 C420E984 */  lwc1       $f0, %lo(D_race_800CE984)($at)
/* DB828 80125468 46001082 */  mul.s      $f2, $f2, $f0
/* DB82C 8012546C C7A40054 */  lwc1       $f4, 0x54($sp)
/* DB830 80125470 46002102 */  mul.s      $f4, $f4, $f0
/* DB834 80125474 C7A60058 */  lwc1       $f6, 0x58($sp)
/* DB838 80125478 46003182 */  mul.s      $f6, $f6, $f0
/* DB83C 8012547C E7AC0030 */  swc1       $f12, 0x30($sp)
/* DB840 80125480 46026300 */  add.s      $f12, $f12, $f2
/* DB844 80125484 E7AA0034 */  swc1       $f10, 0x34($sp)
/* DB848 80125488 46045280 */  add.s      $f10, $f10, $f4
/* DB84C 8012548C 27A50030 */  addiu      $a1, $sp, 0x30
/* DB850 80125490 E7A80038 */  swc1       $f8, 0x38($sp)
/* DB854 80125494 46064200 */  add.s      $f8, $f8, $f6
/* DB858 80125498 E7A20080 */  swc1       $f2, 0x80($sp)
/* DB85C 8012549C E7A40084 */  swc1       $f4, 0x84($sp)
/* DB860 801254A0 E7A60088 */  swc1       $f6, 0x88($sp)
/* DB864 801254A4 E7AC0030 */  swc1       $f12, 0x30($sp)
/* DB868 801254A8 E7AA0034 */  swc1       $f10, 0x34($sp)
/* DB86C 801254AC E7A80038 */  swc1       $f8, 0x38($sp)
/* DB870 801254B0 8E0200CC */  lw         $v0, 0xCC($s0)
/* DB874 801254B4 00A03021 */  addu       $a2, $a1, $zero
/* DB878 801254B8 84440048 */  lh         $a0, 0x48($v0)
/* DB87C 801254BC 8C42004C */  lw         $v0, 0x4C($v0)
/* DB880 801254C0 0040F809 */  jalr       $v0
/* DB884 801254C4 02042021 */   addu      $a0, $s0, $a0
/* DB888 801254C8 26510018 */  addiu      $s1, $s2, 0x18
/* DB88C 801254CC 02202021 */  addu       $a0, $s1, $zero
/* DB890 801254D0 27A50060 */  addiu      $a1, $sp, 0x60
/* DB894 801254D4 24060064 */  addiu      $a2, $zero, 0x64
/* DB898 801254D8 240200E1 */  addiu      $v0, $zero, 0xE1
/* DB89C 801254DC AFA20070 */  sw         $v0, 0x70($sp)
/* DB8A0 801254E0 AFA20074 */  sw         $v0, 0x74($sp)
/* DB8A4 801254E4 240200FF */  addiu      $v0, $zero, 0xFF
/* DB8A8 801254E8 AFA00060 */  sw         $zero, 0x60($sp)
/* DB8AC 801254EC AFA00064 */  sw         $zero, 0x64($sp)
/* DB8B0 801254F0 AFA20078 */  sw         $v0, 0x78($sp)
/* DB8B4 801254F4 AFA00068 */  sw         $zero, 0x68($sp)
/* DB8B8 801254F8 AFA0007C */  sw         $zero, 0x7C($sp)
/* DB8BC 801254FC 0C0456DF */  jal        func_race_80115B7C
/* DB8C0 80125500 AFA0006C */   sw        $zero, 0x6C($sp)
/* DB8C4 80125504 8E640024 */  lw         $a0, 0x24($s3)
/* DB8C8 80125508 50800004 */  beql       $a0, $zero, .Lrace_8012551C
/* DB8CC 8012550C 02402021 */   addu      $a0, $s2, $zero
/* DB8D0 80125510 0C04339E */  jal        func_race_8010CE78
/* DB8D4 80125514 24050001 */   addiu     $a1, $zero, 0x1
/* DB8D8 80125518 02402021 */  addu       $a0, $s2, $zero
.Lrace_8012551C:
/* DB8DC 8012551C 0C04339E */  jal        func_race_8010CE78
/* DB8E0 80125520 00002821 */   addu      $a1, $zero, $zero
/* DB8E4 80125524 0C04345D */  jal        func_race_8010D174
/* DB8E8 80125528 02402021 */   addu      $a0, $s2, $zero
/* DB8EC 8012552C 26640030 */  addiu      $a0, $s3, 0x30
/* DB8F0 80125530 3C05800D */  lui        $a1, %hi(D_race_800CEA00)
/* DB8F4 80125534 24A5EA00 */  addiu      $a1, $a1, %lo(D_race_800CEA00)
/* DB8F8 80125538 00A03021 */  addu       $a2, $a1, $zero
/* DB8FC 8012553C 8E22039C */  lw         $v0, 0x39C($s1)
/* DB900 80125540 00A03821 */  addu       $a3, $a1, $zero
/* DB904 80125544 34420002 */  ori        $v0, $v0, 0x2
/* DB908 80125548 AE22039C */  sw         $v0, 0x39C($s1)
/* DB90C 8012554C AE600248 */  sw         $zero, 0x248($s3)
/* DB910 80125550 0C0354E2 */  jal        func_race_800D5388
/* DB914 80125554 AE720028 */   sw        $s2, 0x28($s3)
/* DB918 80125558 8E62001C */  lw         $v0, 0x1C($s3)
/* DB91C 8012555C 8E65024C */  lw         $a1, 0x24C($s3)
/* DB920 80125560 8C500040 */  lw         $s0, 0x40($v0)
/* DB924 80125564 50A00004 */  beql       $a1, $zero, .Lrace_80125578
/* DB928 80125568 02002021 */   addu      $a0, $s0, $zero
/* DB92C 8012556C 0C01088C */  jal        func_80042230
/* DB930 80125570 02002021 */   addu      $a0, $s0, $zero
/* DB934 80125574 02002021 */  addu       $a0, $s0, $zero
.Lrace_80125578:
/* DB938 80125578 3C05800D */  lui        $a1, %hi(D_race_800CE974)
/* DB93C 8012557C 24A5E974 */  addiu      $a1, $a1, %lo(D_race_800CE974)
/* DB940 80125580 00003021 */  addu       $a2, $zero, $zero
/* DB944 80125584 00C03821 */  addu       $a3, $a2, $zero
/* DB948 80125588 0C0107DD */  jal        func_80041F74
/* DB94C 8012558C AFA00010 */   sw        $zero, 0x10($sp)
/* DB950 80125590 AE62024C */  sw         $v0, 0x24C($s3)
/* DB954 80125594 8E230044 */  lw         $v1, 0x44($s1)
/* DB958 80125598 27B00020 */  addiu      $s0, $sp, 0x20
/* DB95C 8012559C 8C620024 */  lw         $v0, 0x24($v1)
/* DB960 801255A0 02002821 */  addu       $a1, $s0, $zero
/* DB964 801255A4 84440010 */  lh         $a0, 0x10($v0)
/* DB968 801255A8 8C420014 */  lw         $v0, 0x14($v0)
/* DB96C 801255AC 0040F809 */  jalr       $v0
/* DB970 801255B0 00642021 */   addu      $a0, $v1, $a0
/* DB974 801255B4 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DB978 801255B8 3C01800D */  lui        $at, %hi(D_race_800CE988)
/* DB97C 801255BC C420E988 */  lwc1       $f0, %lo(D_race_800CE988)($at)
/* DB980 801255C0 24050043 */  addiu      $a1, $zero, 0x43
/* DB984 801255C4 E7B40014 */  swc1       $f20, 0x14($sp)
/* DB988 801255C8 E7B40018 */  swc1       $f20, 0x18($sp)
/* DB98C 801255CC E7A00010 */  swc1       $f0, 0x10($sp)
/* DB990 801255D0 8E640010 */  lw         $a0, 0x10($s3)
/* DB994 801255D4 0C046530 */  jal        func_race_801194C0
/* DB998 801255D8 02003021 */   addu      $a2, $s0, $zero
.Lrace_801255DC:
/* DB99C 801255DC 8FBF00A0 */  lw         $ra, 0xA0($sp)
/* DB9A0 801255E0 8FB3009C */  lw         $s3, 0x9C($sp)
/* DB9A4 801255E4 8FB20098 */  lw         $s2, 0x98($sp)
/* DB9A8 801255E8 8FB10094 */  lw         $s1, 0x94($sp)
/* DB9AC 801255EC 8FB00090 */  lw         $s0, 0x90($sp)
/* DB9B0 801255F0 D7B400A8 */  ldc1       $f20, 0xA8($sp)
/* DB9B4 801255F4 03E00008 */  jr         $ra
/* DB9B8 801255F8 27BD00B0 */   addiu     $sp, $sp, 0xB0

glabel func_race_801255FC
/* DB9BC 801255FC 8C8201CC */  lw         $v0, 0x1CC($a0)
/* DB9C0 80125600 8C8301D0 */  lw         $v1, 0x1D0($a0)
/* DB9C4 80125604 8C8601D4 */  lw         $a2, 0x1D4($a0)
/* DB9C8 80125608 ACA20000 */  sw         $v0, 0x0($a1)
/* DB9CC 8012560C ACA30004 */  sw         $v1, 0x4($a1)
/* DB9D0 80125610 ACA60008 */  sw         $a2, 0x8($a1)
/* DB9D4 80125614 03E00008 */  jr         $ra
/* DB9D8 80125618 00000000 */   nop

glabel func_race_8012561C
/* DB9DC 8012561C ACA00000 */  sw         $zero, 0x0($a1)
/* DB9E0 80125620 ACA00004 */  sw         $zero, 0x4($a1)
/* DB9E4 80125624 03E00008 */  jr         $ra
/* DB9E8 80125628 ACA00008 */   sw        $zero, 0x8($a1)

glabel func_race_8012562C
/* DB9EC 8012562C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DB9F0 80125630 AFB00030 */  sw         $s0, 0x30($sp)
/* DB9F4 80125634 00808021 */  addu       $s0, $a0, $zero
/* DB9F8 80125638 AFBF0034 */  sw         $ra, 0x34($sp)
/* DB9FC 8012563C 8E05024C */  lw         $a1, 0x24C($s0)
/* DBA00 80125640 10A00026 */  beqz       $a1, .Lrace_801256DC
/* DBA04 80125644 00000000 */   nop
/* DBA08 80125648 8E020028 */  lw         $v0, 0x28($s0)
/* DBA0C 8012564C 54400007 */  bnel       $v0, $zero, .Lrace_8012566C
/* DBA10 80125650 AFA00020 */   sw        $zero, 0x20($sp)
/* DBA14 80125654 8E02001C */  lw         $v0, 0x1C($s0)
/* DBA18 80125658 8C440040 */  lw         $a0, 0x40($v0)
/* DBA1C 8012565C 0C01088C */  jal        func_80042230
/* DBA20 80125660 00000000 */   nop
/* DBA24 80125664 080495B7 */  j          .Lrace_801256DC
/* DBA28 80125668 AE00024C */   sw        $zero, 0x24C($s0)
.Lrace_8012566C:
/* DBA2C 8012566C 3C01800D */  lui        $at, %hi(D_race_800CE98C)
/* DBA30 80125670 C420E98C */  lwc1       $f0, %lo(D_race_800CE98C)($at)
/* DBA34 80125674 AFA00024 */  sw         $zero, 0x24($sp)
/* DBA38 80125678 E7A00028 */  swc1       $f0, 0x28($sp)
/* DBA3C 8012567C 8E020244 */  lw         $v0, 0x244($s0)
/* DBA40 80125680 C4400018 */  lwc1       $f0, 0x18($v0)
/* DBA44 80125684 46000007 */  neg.s      $f0, $f0
/* DBA48 80125688 E7A00010 */  swc1       $f0, 0x10($sp)
/* DBA4C 8012568C 8E020244 */  lw         $v0, 0x244($s0)
/* DBA50 80125690 C440001C */  lwc1       $f0, 0x1C($v0)
/* DBA54 80125694 46000007 */  neg.s      $f0, $f0
/* DBA58 80125698 E7A00014 */  swc1       $f0, 0x14($sp)
/* DBA5C 8012569C 8E020244 */  lw         $v0, 0x244($s0)
/* DBA60 801256A0 C4400020 */  lwc1       $f0, 0x20($v0)
/* DBA64 801256A4 46000007 */  neg.s      $f0, $f0
/* DBA68 801256A8 E7A00018 */  swc1       $f0, 0x18($sp)
/* DBA6C 801256AC 8E02024C */  lw         $v0, 0x24C($s0)
/* DBA70 801256B0 8C440000 */  lw         $a0, 0x0($v0)
/* DBA74 801256B4 10800005 */  beqz       $a0, .Lrace_801256CC
/* DBA78 801256B8 260501CC */   addiu     $a1, $s0, 0x1CC
/* DBA7C 801256BC 0C01058D */  jal        func_80041634
/* DBA80 801256C0 00000000 */   nop
/* DBA84 801256C4 8E02024C */  lw         $v0, 0x24C($s0)
/* DBA88 801256C8 8C440000 */  lw         $a0, 0x0($v0)
.Lrace_801256CC:
/* DBA8C 801256CC 10800003 */  beqz       $a0, .Lrace_801256DC
/* DBA90 801256D0 27A50010 */   addiu     $a1, $sp, 0x10
/* DBA94 801256D4 0C010521 */  jal        func_80041484
/* DBA98 801256D8 27A60020 */   addiu     $a2, $sp, 0x20
.Lrace_801256DC:
/* DBA9C 801256DC 8FBF0034 */  lw         $ra, 0x34($sp)
/* DBAA0 801256E0 8FB00030 */  lw         $s0, 0x30($sp)
/* DBAA4 801256E4 03E00008 */  jr         $ra
/* DBAA8 801256E8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_801256EC
/* DBAAC 801256EC 8C820244 */  lw         $v0, 0x244($a0)
/* DBAB0 801256F0 3C01800D */  lui        $at, %hi(D_race_800CE9F0)
/* DBAB4 801256F4 C422E9F0 */  lwc1       $f2, %lo(D_race_800CE9F0)($at)
/* DBAB8 801256F8 8C430000 */  lw         $v1, 0x0($v0)
/* DBABC 801256FC 8C460004 */  lw         $a2, 0x4($v0)
/* DBAC0 80125700 8C470008 */  lw         $a3, 0x8($v0)
/* DBAC4 80125704 ACA30000 */  sw         $v1, 0x0($a1)
/* DBAC8 80125708 ACA60004 */  sw         $a2, 0x4($a1)
/* DBACC 8012570C ACA70008 */  sw         $a3, 0x8($a1)
/* DBAD0 80125710 C4A00008 */  lwc1       $f0, 0x8($a1)
/* DBAD4 80125714 46020000 */  add.s      $f0, $f0, $f2
/* DBAD8 80125718 03E00008 */  jr         $ra
/* DBADC 8012571C E4A00008 */   swc1      $f0, 0x8($a1)
