.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80119240
/* CF600 80119240 00002821 */  addu       $a1, $zero, $zero
/* CF604 80119244 00801821 */  addu       $v1, $a0, $zero
.Lrace_80119248:
/* CF608 80119248 AC600004 */  sw         $zero, 0x4($v1)
/* CF60C 8011924C 24A50001 */  addiu      $a1, $a1, 0x1
/* CF610 80119250 2CA20004 */  sltiu      $v0, $a1, 0x4
/* CF614 80119254 1440FFFC */  bnez       $v0, .Lrace_80119248
/* CF618 80119258 24630004 */   addiu     $v1, $v1, 0x4
/* CF61C 8011925C AC800000 */  sw         $zero, 0x0($a0)
/* CF620 80119260 03E00008 */  jr         $ra
/* CF624 80119264 00801021 */   addu      $v0, $a0, $zero

glabel func_race_80119268
/* CF628 80119268 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CF62C 8011926C AFB10014 */  sw         $s1, 0x14($sp)
/* CF630 80119270 00808821 */  addu       $s1, $a0, $zero
/* CF634 80119274 AFB00010 */  sw         $s0, 0x10($sp)
/* CF638 80119278 AFBF0018 */  sw         $ra, 0x18($sp)
/* CF63C 8011927C 0C0464AB */  jal        func_race_801192AC
/* CF640 80119280 00A08021 */   addu      $s0, $a1, $zero
/* CF644 80119284 32100001 */  andi       $s0, $s0, 0x1
/* CF648 80119288 12000003 */  beqz       $s0, .Lrace_80119298
/* CF64C 8011928C 00000000 */   nop
/* CF650 80119290 0C01FB5C */  jal        func_8007ED70
/* CF654 80119294 02202021 */   addu      $a0, $s1, $zero
.Lrace_80119298:
/* CF658 80119298 8FBF0018 */  lw         $ra, 0x18($sp)
/* CF65C 8011929C 8FB10014 */  lw         $s1, 0x14($sp)
/* CF660 801192A0 8FB00010 */  lw         $s0, 0x10($sp)
/* CF664 801192A4 03E00008 */  jr         $ra
/* CF668 801192A8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801192AC
/* CF66C 801192AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CF670 801192B0 AFB20018 */  sw         $s2, 0x18($sp)
/* CF674 801192B4 00809021 */  addu       $s2, $a0, $zero
/* CF678 801192B8 AFB10014 */  sw         $s1, 0x14($sp)
/* CF67C 801192BC 00008821 */  addu       $s1, $zero, $zero
/* CF680 801192C0 AFB00010 */  sw         $s0, 0x10($sp)
/* CF684 801192C4 02408021 */  addu       $s0, $s2, $zero
/* CF688 801192C8 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_801192CC:
/* CF68C 801192CC 8E030004 */  lw         $v1, 0x4($s0)
/* CF690 801192D0 5060000F */  beql       $v1, $zero, .Lrace_80119310
/* CF694 801192D4 26310001 */   addiu     $s1, $s1, 0x1
/* CF698 801192D8 8C620000 */  lw         $v0, 0x0($v1)
/* CF69C 801192DC 84440010 */  lh         $a0, 0x10($v0)
/* CF6A0 801192E0 8C420014 */  lw         $v0, 0x14($v0)
/* CF6A4 801192E4 0040F809 */  jalr       $v0
/* CF6A8 801192E8 00642021 */   addu      $a0, $v1, $a0
/* CF6AC 801192EC 8E430000 */  lw         $v1, 0x0($s2)
/* CF6B0 801192F0 8C620014 */  lw         $v0, 0x14($v1)
/* CF6B4 801192F4 8E050004 */  lw         $a1, 0x4($s0)
/* CF6B8 801192F8 84440048 */  lh         $a0, 0x48($v0)
/* CF6BC 801192FC 8C42004C */  lw         $v0, 0x4C($v0)
/* CF6C0 80119300 0040F809 */  jalr       $v0
/* CF6C4 80119304 00642021 */   addu      $a0, $v1, $a0
/* CF6C8 80119308 AE000004 */  sw         $zero, 0x4($s0)
/* CF6CC 8011930C 26310001 */  addiu      $s1, $s1, 0x1
.Lrace_80119310:
/* CF6D0 80119310 2E220004 */  sltiu      $v0, $s1, 0x4
/* CF6D4 80119314 1440FFED */  bnez       $v0, .Lrace_801192CC
/* CF6D8 80119318 26100004 */   addiu     $s0, $s0, 0x4
/* CF6DC 8011931C AE400000 */  sw         $zero, 0x0($s2)
/* CF6E0 80119320 8FBF001C */  lw         $ra, 0x1C($sp)
/* CF6E4 80119324 8FB20018 */  lw         $s2, 0x18($sp)
/* CF6E8 80119328 8FB10014 */  lw         $s1, 0x14($sp)
/* CF6EC 8011932C 8FB00010 */  lw         $s0, 0x10($sp)
/* CF6F0 80119330 03E00008 */  jr         $ra
/* CF6F4 80119334 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80119338
/* CF6F8 80119338 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CF6FC 8011933C AFB20018 */  sw         $s2, 0x18($sp)
/* CF700 80119340 00809021 */  addu       $s2, $a0, $zero
/* CF704 80119344 AFBF001C */  sw         $ra, 0x1C($sp)
/* CF708 80119348 AFB10014 */  sw         $s1, 0x14($sp)
/* CF70C 8011934C AFB00010 */  sw         $s0, 0x10($sp)
/* CF710 80119350 8E420000 */  lw         $v0, 0x0($s2)
/* CF714 80119354 10400003 */  beqz       $v0, .Lrace_80119364
/* CF718 80119358 00A08021 */   addu      $s0, $a1, $zero
/* CF71C 8011935C 0C0464AB */  jal        func_race_801192AC
/* CF720 80119360 00000000 */   nop
.Lrace_80119364:
/* CF724 80119364 AE500000 */  sw         $s0, 0x0($s2)
/* CF728 80119368 00008821 */  addu       $s1, $zero, $zero
/* CF72C 8011936C 02408021 */  addu       $s0, $s2, $zero
.Lrace_80119370:
/* CF730 80119370 8E430000 */  lw         $v1, 0x0($s2)
/* CF734 80119374 8C620014 */  lw         $v0, 0x14($v1)
/* CF738 80119378 26310001 */  addiu      $s1, $s1, 0x1
/* CF73C 8011937C 84440040 */  lh         $a0, 0x40($v0)
/* CF740 80119380 8C420044 */  lw         $v0, 0x44($v0)
/* CF744 80119384 0040F809 */  jalr       $v0
/* CF748 80119388 00642021 */   addu      $a0, $v1, $a0
/* CF74C 8011938C AE020004 */  sw         $v0, 0x4($s0)
/* CF750 80119390 2E220004 */  sltiu      $v0, $s1, 0x4
/* CF754 80119394 1440FFF6 */  bnez       $v0, .Lrace_80119370
/* CF758 80119398 26100004 */   addiu     $s0, $s0, 0x4
/* CF75C 8011939C 8FBF001C */  lw         $ra, 0x1C($sp)
/* CF760 801193A0 8FB20018 */  lw         $s2, 0x18($sp)
/* CF764 801193A4 8FB10014 */  lw         $s1, 0x14($sp)
/* CF768 801193A8 8FB00010 */  lw         $s0, 0x10($sp)
/* CF76C 801193AC 03E00008 */  jr         $ra
/* CF770 801193B0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801193B4
/* CF774 801193B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF778 801193B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* CF77C 801193BC 8C820004 */  lw         $v0, 0x4($a0)
/* CF780 801193C0 8C430000 */  lw         $v1, 0x0($v0)
/* CF784 801193C4 84640008 */  lh         $a0, 0x8($v1)
/* CF788 801193C8 00442021 */  addu       $a0, $v0, $a0
/* CF78C 801193CC 8C62000C */  lw         $v0, 0xC($v1)
/* CF790 801193D0 0040F809 */  jalr       $v0
/* CF794 801193D4 00000000 */   nop
/* CF798 801193D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* CF79C 801193DC 03E00008 */  jr         $ra
/* CF7A0 801193E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801193E4
/* CF7A4 801193E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CF7A8 801193E8 AFB10014 */  sw         $s1, 0x14($sp)
/* CF7AC 801193EC 00808821 */  addu       $s1, $a0, $zero
/* CF7B0 801193F0 AFBF0018 */  sw         $ra, 0x18($sp)
/* CF7B4 801193F4 AFB00010 */  sw         $s0, 0x10($sp)
/* CF7B8 801193F8 8E220008 */  lw         $v0, 0x8($s1)
/* CF7BC 801193FC 8C430000 */  lw         $v1, 0x0($v0)
/* CF7C0 80119400 84640008 */  lh         $a0, 0x8($v1)
/* CF7C4 80119404 00442021 */  addu       $a0, $v0, $a0
/* CF7C8 80119408 8C62000C */  lw         $v0, 0xC($v1)
/* CF7CC 8011940C 0040F809 */  jalr       $v0
/* CF7D0 80119410 00C08021 */   addu      $s0, $a2, $zero
/* CF7D4 80119414 92020000 */  lbu        $v0, 0x0($s0)
/* CF7D8 80119418 10400007 */  beqz       $v0, .Lrace_80119438
/* CF7DC 8011941C 02002821 */   addu      $a1, $s0, $zero
/* CF7E0 80119420 8E23000C */  lw         $v1, 0xC($s1)
/* CF7E4 80119424 8C620000 */  lw         $v0, 0x0($v1)
/* CF7E8 80119428 84440008 */  lh         $a0, 0x8($v0)
/* CF7EC 8011942C 8C42000C */  lw         $v0, 0xC($v0)
/* CF7F0 80119430 0040F809 */  jalr       $v0
/* CF7F4 80119434 00642021 */   addu      $a0, $v1, $a0
.Lrace_80119438:
/* CF7F8 80119438 8FBF0018 */  lw         $ra, 0x18($sp)
/* CF7FC 8011943C 8FB10014 */  lw         $s1, 0x14($sp)
/* CF800 80119440 8FB00010 */  lw         $s0, 0x10($sp)
/* CF804 80119444 03E00008 */  jr         $ra
/* CF808 80119448 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8011944C
/* CF80C 8011944C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF810 80119450 AFBF0010 */  sw         $ra, 0x10($sp)
/* CF814 80119454 8C820010 */  lw         $v0, 0x10($a0)
/* CF818 80119458 8C430000 */  lw         $v1, 0x0($v0)
/* CF81C 8011945C 84640008 */  lh         $a0, 0x8($v1)
/* CF820 80119460 00442021 */  addu       $a0, $v0, $a0
/* CF824 80119464 8C62000C */  lw         $v0, 0xC($v1)
/* CF828 80119468 0040F809 */  jalr       $v0
/* CF82C 8011946C 00000000 */   nop
/* CF830 80119470 8FBF0010 */  lw         $ra, 0x10($sp)
/* CF834 80119474 03E00008 */  jr         $ra
/* CF838 80119478 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011947C
/* CF83C 8011947C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CF840 80119480 AFBF0018 */  sw         $ra, 0x18($sp)
/* CF844 80119484 8C820000 */  lw         $v0, 0x0($a0)
/* CF848 80119488 1040000A */  beqz       $v0, .Lrace_801194B4
/* CF84C 8011948C 27A60010 */   addiu     $a2, $sp, 0x10
/* CF850 80119490 0C0465A3 */  jal        func_race_8011968C
/* CF854 80119494 AFA00010 */   sw        $zero, 0x10($sp)
/* CF858 80119498 8FA60010 */  lw         $a2, 0x10($sp)
/* CF85C 8011949C 8CC30000 */  lw         $v1, 0x0($a2)
/* CF860 801194A0 00402821 */  addu       $a1, $v0, $zero
/* CF864 801194A4 84640028 */  lh         $a0, 0x28($v1)
/* CF868 801194A8 8C62002C */  lw         $v0, 0x2C($v1)
/* CF86C 801194AC 0040F809 */  jalr       $v0
/* CF870 801194B0 00C42021 */   addu      $a0, $a2, $a0
.Lrace_801194B4:
/* CF874 801194B4 8FBF0018 */  lw         $ra, 0x18($sp)
/* CF878 801194B8 03E00008 */  jr         $ra
/* CF87C 801194BC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801194C0
/* CF880 801194C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* CF884 801194C4 AFB00028 */  sw         $s0, 0x28($sp)
/* CF888 801194C8 AFBF002C */  sw         $ra, 0x2C($sp)
/* CF88C 801194CC F7B40030 */  sdc1       $f20, 0x30($sp)
/* CF890 801194D0 8C820000 */  lw         $v0, 0x0($a0)
/* CF894 801194D4 4487A000 */  mtc1       $a3, $f20
/* CF898 801194D8 10400013 */  beqz       $v0, .Lrace_80119528
/* CF89C 801194DC 00C08021 */   addu      $s0, $a2, $zero
/* CF8A0 801194E0 27A60020 */  addiu      $a2, $sp, 0x20
/* CF8A4 801194E4 0C0465A3 */  jal        func_race_8011968C
/* CF8A8 801194E8 AFA00020 */   sw        $zero, 0x20($sp)
/* CF8AC 801194EC 8FA40020 */  lw         $a0, 0x20($sp)
/* CF8B0 801194F0 C7A00048 */  lwc1       $f0, 0x48($sp)
/* CF8B4 801194F4 8C830000 */  lw         $v1, 0x0($a0)
/* CF8B8 801194F8 4407A000 */  mfc1       $a3, $f20
/* CF8BC 801194FC 84680040 */  lh         $t0, 0x40($v1)
/* CF8C0 80119500 E7A00010 */  swc1       $f0, 0x10($sp)
/* CF8C4 80119504 C7A0004C */  lwc1       $f0, 0x4C($sp)
/* CF8C8 80119508 00402821 */  addu       $a1, $v0, $zero
/* CF8CC 8011950C E7A00014 */  swc1       $f0, 0x14($sp)
/* CF8D0 80119510 C7A00050 */  lwc1       $f0, 0x50($sp)
/* CF8D4 80119514 02003021 */  addu       $a2, $s0, $zero
/* CF8D8 80119518 E7A00018 */  swc1       $f0, 0x18($sp)
/* CF8DC 8011951C 8C620044 */  lw         $v0, 0x44($v1)
/* CF8E0 80119520 0040F809 */  jalr       $v0
/* CF8E4 80119524 00882021 */   addu      $a0, $a0, $t0
.Lrace_80119528:
/* CF8E8 80119528 8FBF002C */  lw         $ra, 0x2C($sp)
/* CF8EC 8011952C 8FB00028 */  lw         $s0, 0x28($sp)
/* CF8F0 80119530 D7B40030 */  ldc1       $f20, 0x30($sp)
/* CF8F4 80119534 03E00008 */  jr         $ra
/* CF8F8 80119538 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8011953C
/* CF8FC 8011953C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CF900 80119540 AFBF0018 */  sw         $ra, 0x18($sp)
/* CF904 80119544 8C820000 */  lw         $v0, 0x0($a0)
/* CF908 80119548 1040000C */  beqz       $v0, .Lrace_8011957C
/* CF90C 8011954C 27A60010 */   addiu     $a2, $sp, 0x10
/* CF910 80119550 0C0465A3 */  jal        func_race_8011968C
/* CF914 80119554 AFA00010 */   sw        $zero, 0x10($sp)
/* CF918 80119558 8FA60010 */  lw         $a2, 0x10($sp)
/* CF91C 8011955C 8CC30000 */  lw         $v1, 0x0($a2)
/* CF920 80119560 00402821 */  addu       $a1, $v0, $zero
/* CF924 80119564 84640048 */  lh         $a0, 0x48($v1)
/* CF928 80119568 8C62004C */  lw         $v0, 0x4C($v1)
/* CF92C 8011956C 0040F809 */  jalr       $v0
/* CF930 80119570 00C42021 */   addu      $a0, $a2, $a0
/* CF934 80119574 08046561 */  j          .Lrace_80119584
/* CF938 80119578 00000000 */   nop
.Lrace_8011957C:
/* CF93C 8011957C 3C028013 */  lui        $v0, %hi(D_race_80132E30)
/* CF940 80119580 24422E30 */  addiu      $v0, $v0, %lo(D_race_80132E30)
.Lrace_80119584:
/* CF944 80119584 8FBF0018 */  lw         $ra, 0x18($sp)
/* CF948 80119588 03E00008 */  jr         $ra
/* CF94C 8011958C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80119590
/* CF950 80119590 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF954 80119594 AFBF0014 */  sw         $ra, 0x14($sp)
/* CF958 80119598 AFB00010 */  sw         $s0, 0x10($sp)
/* CF95C 8011959C 8C820000 */  lw         $v0, 0x0($a0)
/* CF960 801195A0 1040000C */  beqz       $v0, .Lrace_801195D4
/* CF964 801195A4 00A08021 */   addu      $s0, $a1, $zero
/* CF968 801195A8 8E020034 */  lw         $v0, 0x34($s0)
/* CF96C 801195AC 84440028 */  lh         $a0, 0x28($v0)
/* CF970 801195B0 8C42002C */  lw         $v0, 0x2C($v0)
/* CF974 801195B4 0040F809 */  jalr       $v0
/* CF978 801195B8 02042021 */   addu      $a0, $s0, $a0
/* CF97C 801195BC 8C430000 */  lw         $v1, 0x0($v0)
/* CF980 801195C0 84640050 */  lh         $a0, 0x50($v1)
/* CF984 801195C4 00442021 */  addu       $a0, $v0, $a0
/* CF988 801195C8 8C620054 */  lw         $v0, 0x54($v1)
/* CF98C 801195CC 0040F809 */  jalr       $v0
/* CF990 801195D0 02002821 */   addu      $a1, $s0, $zero
.Lrace_801195D4:
/* CF994 801195D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* CF998 801195D8 8FB00010 */  lw         $s0, 0x10($sp)
/* CF99C 801195DC 03E00008 */  jr         $ra
/* CF9A0 801195E0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801195E4
/* CF9A4 801195E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CF9A8 801195E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* CF9AC 801195EC 8C820000 */  lw         $v0, 0x0($a0)
/* CF9B0 801195F0 1040000C */  beqz       $v0, .Lrace_80119624
/* CF9B4 801195F4 27A60010 */   addiu     $a2, $sp, 0x10
/* CF9B8 801195F8 0C0465A3 */  jal        func_race_8011968C
/* CF9BC 801195FC AFA00010 */   sw        $zero, 0x10($sp)
/* CF9C0 80119600 8FA60010 */  lw         $a2, 0x10($sp)
/* CF9C4 80119604 8CC30000 */  lw         $v1, 0x0($a2)
/* CF9C8 80119608 00402821 */  addu       $a1, $v0, $zero
/* CF9CC 8011960C 84640030 */  lh         $a0, 0x30($v1)
/* CF9D0 80119610 8C620034 */  lw         $v0, 0x34($v1)
/* CF9D4 80119614 0040F809 */  jalr       $v0
/* CF9D8 80119618 00C42021 */   addu      $a0, $a2, $a0
/* CF9DC 8011961C 0804658B */  j          .Lrace_8011962C
/* CF9E0 80119620 00000000 */   nop
.Lrace_80119624:
/* CF9E4 80119624 3C028013 */  lui        $v0, %hi(D_race_80132E68)
/* CF9E8 80119628 24422E68 */  addiu      $v0, $v0, %lo(D_race_80132E68)
.Lrace_8011962C:
/* CF9EC 8011962C 8FBF0018 */  lw         $ra, 0x18($sp)
/* CF9F0 80119630 03E00008 */  jr         $ra
/* CF9F4 80119634 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80119638
/* CF9F8 80119638 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF9FC 8011963C AFBF0014 */  sw         $ra, 0x14($sp)
/* CFA00 80119640 AFB00010 */  sw         $s0, 0x10($sp)
/* CFA04 80119644 8C820000 */  lw         $v0, 0x0($a0)
/* CFA08 80119648 1040000C */  beqz       $v0, .Lrace_8011967C
/* CFA0C 8011964C 00A08021 */   addu      $s0, $a1, $zero
/* CFA10 80119650 8E020000 */  lw         $v0, 0x0($s0)
/* CFA14 80119654 84440040 */  lh         $a0, 0x40($v0)
/* CFA18 80119658 8C420044 */  lw         $v0, 0x44($v0)
/* CFA1C 8011965C 0040F809 */  jalr       $v0
/* CFA20 80119660 02042021 */   addu      $a0, $s0, $a0
/* CFA24 80119664 8C430000 */  lw         $v1, 0x0($v0)
/* CFA28 80119668 84640038 */  lh         $a0, 0x38($v1)
/* CFA2C 8011966C 00442021 */  addu       $a0, $v0, $a0
/* CFA30 80119670 8C62003C */  lw         $v0, 0x3C($v1)
/* CFA34 80119674 0040F809 */  jalr       $v0
/* CFA38 80119678 02002821 */   addu      $a1, $s0, $zero
.Lrace_8011967C:
/* CFA3C 8011967C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CFA40 80119680 8FB00010 */  lw         $s0, 0x10($sp)
/* CFA44 80119684 03E00008 */  jr         $ra
/* CFA48 80119688 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8011968C
/* CFA4C 8011968C 2CA203E8 */  sltiu      $v0, $a1, 0x3E8
/* CFA50 80119690 10400005 */  beqz       $v0, .Lrace_801196A8
/* CFA54 80119694 2CA2044C */   sltiu     $v0, $a1, 0x44C
/* CFA58 80119698 8C830004 */  lw         $v1, 0x4($a0)
/* CFA5C 8011969C 00A01021 */  addu       $v0, $a1, $zero
/* CFA60 801196A0 03E00008 */  jr         $ra
/* CFA64 801196A4 ACC30000 */   sw        $v1, 0x0($a2)
.Lrace_801196A8:
/* CFA68 801196A8 10400005 */  beqz       $v0, .Lrace_801196C0
/* CFA6C 801196AC 2CA20BB8 */   sltiu     $v0, $a1, 0xBB8
/* CFA70 801196B0 8C830008 */  lw         $v1, 0x8($a0)
/* CFA74 801196B4 24A2FC18 */  addiu      $v0, $a1, -0x3E8
/* CFA78 801196B8 03E00008 */  jr         $ra
/* CFA7C 801196BC ACC30000 */   sw        $v1, 0x0($a2)
.Lrace_801196C0:
/* CFA80 801196C0 14400005 */  bnez       $v0, .Lrace_801196D8
/* CFA84 801196C4 24A2FBB4 */   addiu     $v0, $a1, -0x44C
/* CFA88 801196C8 8C830010 */  lw         $v1, 0x10($a0)
/* CFA8C 801196CC 24A2F448 */  addiu      $v0, $a1, -0xBB8
/* CFA90 801196D0 03E00008 */  jr         $ra
/* CFA94 801196D4 ACC30000 */   sw        $v1, 0x0($a2)
.Lrace_801196D8:
/* CFA98 801196D8 8C83000C */  lw         $v1, 0xC($a0)
/* CFA9C 801196DC 03E00008 */  jr         $ra
/* CFAA0 801196E0 ACC30000 */   sw        $v1, 0x0($a2)

glabel func_race_801196E4
/* CFAA4 801196E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CFAA8 801196E8 3C048013 */  lui        $a0, %hi(D_race_80132E30)
/* CFAAC 801196EC 24842E30 */  addiu      $a0, $a0, %lo(D_race_80132E30)
/* CFAB0 801196F0 AFBF0010 */  sw         $ra, 0x10($sp)
/* CFAB4 801196F4 0C01FC70 */  jal        func_8007F1C0
/* CFAB8 801196F8 24050002 */   addiu     $a1, $zero, 0x2
/* CFABC 801196FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* CFAC0 80119700 03E00008 */  jr         $ra
/* CFAC4 80119704 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80119708
/* CFAC8 80119708 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CFACC 8011970C 3C028013 */  lui        $v0, %hi(D_race_80132E68)
/* CFAD0 80119710 3C038004 */  lui        $v1, %hi(D_80040570)
/* CFAD4 80119714 24630570 */  addiu      $v1, $v1, %lo(D_80040570)
/* CFAD8 80119718 3C048013 */  lui        $a0, %hi(D_race_80132E30)
/* CFADC 8011971C 24842E30 */  addiu      $a0, $a0, %lo(D_race_80132E30)
/* CFAE0 80119720 AFBF0010 */  sw         $ra, 0x10($sp)
/* CFAE4 80119724 0C01FC58 */  jal        func_8007F160
/* CFAE8 80119728 AC432E68 */   sw        $v1, %lo(D_race_80132E68)($v0)
/* CFAEC 8011972C 8FBF0010 */  lw         $ra, 0x10($sp)
/* CFAF0 80119730 03E00008 */  jr         $ra
/* CFAF4 80119734 27BD0018 */   addiu     $sp, $sp, 0x18
