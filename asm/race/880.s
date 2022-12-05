.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_80128440
/* DE800 80128440 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DE804 80128444 AFB20018 */  sw         $s2, 0x18($sp)
/* DE808 80128448 00809021 */  addu       $s2, $a0, $zero
/* DE80C 8012844C 26440008 */  addiu      $a0, $s2, 0x8
/* DE810 80128450 AFBF0020 */  sw         $ra, 0x20($sp)
/* DE814 80128454 AFB3001C */  sw         $s3, 0x1C($sp)
/* DE818 80128458 AFB10014 */  sw         $s1, 0x14($sp)
/* DE81C 8012845C 0C0152E4 */  jal        func_80054B90
/* DE820 80128460 AFB00010 */   sw        $s0, 0x10($sp)
/* DE824 80128464 0C019E00 */  jal        func_80067800
/* DE828 80128468 26440014 */   addiu     $a0, $s2, 0x14
/* DE82C 8012846C 265100A4 */  addiu      $s1, $s2, 0xA4
/* DE830 80128470 24100018 */  addiu      $s0, $zero, 0x18
/* DE834 80128474 2413FFFF */  addiu      $s3, $zero, -0x1
.Lrace_80128478:
/* DE838 80128478 0C01955C */  jal        func_80065570
/* DE83C 8012847C 02202021 */   addu      $a0, $s1, $zero
/* DE840 80128480 2610FFFF */  addiu      $s0, $s0, -0x1
/* DE844 80128484 1613FFFC */  bne        $s0, $s3, .Lrace_80128478
/* DE848 80128488 263100F4 */   addiu     $s1, $s1, 0xF4
/* DE84C 8012848C 0C047FD4 */  jal        func_race_8011FF50
/* DE850 80128490 264418BC */   addiu     $a0, $s2, 0x18BC
/* DE854 80128494 0C04A149 */  jal        func_race_80128524
/* DE858 80128498 02402021 */   addu      $a0, $s2, $zero
/* DE85C 8012849C 02401021 */  addu       $v0, $s2, $zero
/* DE860 801284A0 8FBF0020 */  lw         $ra, 0x20($sp)
/* DE864 801284A4 8FB3001C */  lw         $s3, 0x1C($sp)
/* DE868 801284A8 8FB20018 */  lw         $s2, 0x18($sp)
/* DE86C 801284AC 8FB10014 */  lw         $s1, 0x14($sp)
/* DE870 801284B0 8FB00010 */  lw         $s0, 0x10($sp)
/* DE874 801284B4 03E00008 */  jr         $ra
/* DE878 801284B8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_801284BC
/* DE87C 801284BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DE880 801284C0 AFB10014 */  sw         $s1, 0x14($sp)
/* DE884 801284C4 00808821 */  addu       $s1, $a0, $zero
/* DE888 801284C8 AFB00010 */  sw         $s0, 0x10($sp)
/* DE88C 801284CC AFBF0018 */  sw         $ra, 0x18($sp)
/* DE890 801284D0 0C04AA1A */  jal        func_race_8012A868
/* DE894 801284D4 00A08021 */   addu      $s0, $a1, $zero
/* DE898 801284D8 262418BC */  addiu      $a0, $s1, 0x18BC
/* DE89C 801284DC 0C047FED */  jal        func_race_8011FFB4
/* DE8A0 801284E0 24050002 */   addiu     $a1, $zero, 0x2
/* DE8A4 801284E4 26240014 */  addiu      $a0, $s1, 0x14
/* DE8A8 801284E8 0C019E09 */  jal        func_80067824
/* DE8AC 801284EC 24050002 */   addiu     $a1, $zero, 0x2
/* DE8B0 801284F0 26240008 */  addiu      $a0, $s1, 0x8
/* DE8B4 801284F4 0C0152E9 */  jal        func_80054BA4
/* DE8B8 801284F8 24050002 */   addiu     $a1, $zero, 0x2
/* DE8BC 801284FC 32100001 */  andi       $s0, $s0, 0x1
/* DE8C0 80128500 12000003 */  beqz       $s0, .Lrace_80128510
/* DE8C4 80128504 00000000 */   nop
/* DE8C8 80128508 0C01FB5C */  jal        func_8007ED70
/* DE8CC 8012850C 02202021 */   addu      $a0, $s1, $zero
.Lrace_80128510:
/* DE8D0 80128510 8FBF0018 */  lw         $ra, 0x18($sp)
/* DE8D4 80128514 8FB10014 */  lw         $s1, 0x14($sp)
/* DE8D8 80128518 8FB00010 */  lw         $s0, 0x10($sp)
/* DE8DC 8012851C 03E00008 */  jr         $ra
/* DE8E0 80128520 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80128524
/* DE8E4 80128524 00001821 */  addu       $v1, $zero, $zero
/* DE8E8 80128528 AC800000 */  sw         $zero, 0x0($a0)
/* DE8EC 8012852C AC800004 */  sw         $zero, 0x4($a0)
/* DE8F0 80128530 AC800028 */  sw         $zero, 0x28($a0)
/* DE8F4 80128534 AC800030 */  sw         $zero, 0x30($a0)
/* DE8F8 80128538 AC800034 */  sw         $zero, 0x34($a0)
/* DE8FC 8012853C AC80002C */  sw         $zero, 0x2C($a0)
/* DE900 80128540 AC800038 */  sw         $zero, 0x38($a0)
/* DE904 80128544 AC800074 */  sw         $zero, 0x74($a0)
/* DE908 80128548 AC800068 */  sw         $zero, 0x68($a0)
/* DE90C 8012854C AC80006C */  sw         $zero, 0x6C($a0)
/* DE910 80128550 AC80003C */  sw         $zero, 0x3C($a0)
/* DE914 80128554 AC800040 */  sw         $zero, 0x40($a0)
/* DE918 80128558 AC801958 */  sw         $zero, 0x1958($a0)
/* DE91C 8012855C AC80195C */  sw         $zero, 0x195C($a0)
/* DE920 80128560 AC801960 */  sw         $zero, 0x1960($a0)
/* DE924 80128564 AC801964 */  sw         $zero, 0x1964($a0)
/* DE928 80128568 AC800078 */  sw         $zero, 0x78($a0)
/* DE92C 8012856C AC80007C */  sw         $zero, 0x7C($a0)
/* DE930 80128570 AC800080 */  sw         $zero, 0x80($a0)
/* DE934 80128574 AC800084 */  sw         $zero, 0x84($a0)
/* DE938 80128578 AC800088 */  sw         $zero, 0x88($a0)
/* DE93C 8012857C AC80008C */  sw         $zero, 0x8C($a0)
/* DE940 80128580 AC800090 */  sw         $zero, 0x90($a0)
/* DE944 80128584 AC800094 */  sw         $zero, 0x94($a0)
/* DE948 80128588 AC800098 */  sw         $zero, 0x98($a0)
/* DE94C 8012858C AC80009C */  sw         $zero, 0x9C($a0)
/* DE950 80128590 AC8000A0 */  sw         $zero, 0xA0($a0)
/* DE954 80128594 AC80199C */  sw         $zero, 0x199C($a0)
/* DE958 80128598 AC8019A0 */  sw         $zero, 0x19A0($a0)
/* DE95C 8012859C AC800064 */  sw         $zero, 0x64($a0)
/* DE960 801285A0 AC800070 */  sw         $zero, 0x70($a0)
/* DE964 801285A4 AC800048 */  sw         $zero, 0x48($a0)
/* DE968 801285A8 AC800060 */  sw         $zero, 0x60($a0)
/* DE96C 801285AC A0801884 */  sb         $zero, 0x1884($a0)
/* DE970 801285B0 A0801885 */  sb         $zero, 0x1885($a0)
/* DE974 801285B4 A0801886 */  sb         $zero, 0x1886($a0)
/* DE978 801285B8 A0801887 */  sb         $zero, 0x1887($a0)
/* DE97C 801285BC A0801888 */  sb         $zero, 0x1888($a0)
/* DE980 801285C0 A0801889 */  sb         $zero, 0x1889($a0)
/* DE984 801285C4 A080188A */  sb         $zero, 0x188A($a0)
/* DE988 801285C8 A080188B */  sb         $zero, 0x188B($a0)
/* DE98C 801285CC A080188C */  sb         $zero, 0x188C($a0)
/* DE990 801285D0 A080188D */  sb         $zero, 0x188D($a0)
/* DE994 801285D4 A080188E */  sb         $zero, 0x188E($a0)
/* DE998 801285D8 A080194C */  sb         $zero, 0x194C($a0)
/* DE99C 801285DC A080194D */  sb         $zero, 0x194D($a0)
/* DE9A0 801285E0 AC80193C */  sw         $zero, 0x193C($a0)
/* DE9A4 801285E4 AC801940 */  sw         $zero, 0x1940($a0)
/* DE9A8 801285E8 AC801944 */  sw         $zero, 0x1944($a0)
/* DE9AC 801285EC AC801948 */  sw         $zero, 0x1948($a0)
/* DE9B0 801285F0 AC801998 */  sw         $zero, 0x1998($a0)
/* DE9B4 801285F4 AC801950 */  sw         $zero, 0x1950($a0)
/* DE9B8 801285F8 AC801954 */  sw         $zero, 0x1954($a0)
/* DE9BC 801285FC AC801890 */  sw         $zero, 0x1890($a0)
/* DE9C0 80128600 AC801894 */  sw         $zero, 0x1894($a0)
/* DE9C4 80128604 AC801898 */  sw         $zero, 0x1898($a0)
/* DE9C8 80128608 AC80189C */  sw         $zero, 0x189C($a0)
/* DE9CC 8012860C AC8018A0 */  sw         $zero, 0x18A0($a0)
/* DE9D0 80128610 AC8018A4 */  sw         $zero, 0x18A4($a0)
/* DE9D4 80128614 AC8018A8 */  sw         $zero, 0x18A8($a0)
/* DE9D8 80128618 AC8018AC */  sw         $zero, 0x18AC($a0)
/* DE9DC 8012861C AC8018B0 */  sw         $zero, 0x18B0($a0)
/* DE9E0 80128620 AC8018B4 */  sw         $zero, 0x18B4($a0)
/* DE9E4 80128624 AC8018B8 */  sw         $zero, 0x18B8($a0)
/* DE9E8 80128628 AC80004C */  sw         $zero, 0x4C($a0)
/* DE9EC 8012862C AC800050 */  sw         $zero, 0x50($a0)
/* DE9F0 80128630 AC801878 */  sw         $zero, 0x1878($a0)
/* DE9F4 80128634 AC80187C */  sw         $zero, 0x187C($a0)
/* DE9F8 80128638 AC800054 */  sw         $zero, 0x54($a0)
/* DE9FC 8012863C AC801968 */  sw         $zero, 0x1968($a0)
/* DEA00 80128640 AC80196C */  sw         $zero, 0x196C($a0)
/* DEA04 80128644 AC801970 */  sw         $zero, 0x1970($a0)
/* DEA08 80128648 AC801974 */  sw         $zero, 0x1974($a0)
.Lrace_8012864C:
/* DEA0C 8012864C AC801978 */  sw         $zero, 0x1978($a0)
/* DEA10 80128650 24630001 */  addiu      $v1, $v1, 0x1
/* DEA14 80128654 2C620008 */  sltiu      $v0, $v1, 0x8
/* DEA18 80128658 1440FFFC */  bnez       $v0, .Lrace_8012864C
/* DEA1C 8012865C 24840004 */   addiu     $a0, $a0, 0x4
/* DEA20 80128660 03E00008 */  jr         $ra
/* DEA24 80128664 00000000 */   nop

glabel func_race_80128668
/* DEA28 80128668 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DEA2C 8012866C AFB00010 */  sw         $s0, 0x10($sp)
/* DEA30 80128670 00808021 */  addu       $s0, $a0, $zero
/* DEA34 80128674 AFBF0018 */  sw         $ra, 0x18($sp)
/* DEA38 80128678 AFB10014 */  sw         $s1, 0x14($sp)
/* DEA3C 8012867C 8E020000 */  lw         $v0, 0x0($s0)
/* DEA40 80128680 10400003 */  beqz       $v0, .Lrace_80128690
/* DEA44 80128684 00A08821 */   addu      $s1, $a1, $zero
/* DEA48 80128688 0C04AA1A */  jal        func_race_8012A868
/* DEA4C 8012868C 00000000 */   nop
.Lrace_80128690:
/* DEA50 80128690 8E220000 */  lw         $v0, 0x0($s1)
/* DEA54 80128694 AE020000 */  sw         $v0, 0x0($s0)
/* DEA58 80128698 8E220004 */  lw         $v0, 0x4($s1)
/* DEA5C 8012869C AE020004 */  sw         $v0, 0x4($s0)
/* DEA60 801286A0 8E220008 */  lw         $v0, 0x8($s1)
/* DEA64 801286A4 AE020074 */  sw         $v0, 0x74($s0)
/* DEA68 801286A8 8E22000C */  lw         $v0, 0xC($s1)
/* DEA6C 801286AC AE02006C */  sw         $v0, 0x6C($s0)
/* DEA70 801286B0 8E220010 */  lw         $v0, 0x10($s1)
/* DEA74 801286B4 AE020070 */  sw         $v0, 0x70($s0)
/* DEA78 801286B8 8E220014 */  lw         $v0, 0x14($s1)
/* DEA7C 801286BC AE020068 */  sw         $v0, 0x68($s0)
/* DEA80 801286C0 8E220018 */  lw         $v0, 0x18($s1)
/* DEA84 801286C4 AE02003C */  sw         $v0, 0x3C($s0)
/* DEA88 801286C8 8E22001C */  lw         $v0, 0x1C($s1)
/* DEA8C 801286CC AE020040 */  sw         $v0, 0x40($s0)
/* DEA90 801286D0 8E220020 */  lw         $v0, 0x20($s1)
/* DEA94 801286D4 AE020044 */  sw         $v0, 0x44($s0)
/* DEA98 801286D8 8E22002C */  lw         $v0, 0x2C($s1)
/* DEA9C 801286DC AE020060 */  sw         $v0, 0x60($s0)
/* DEAA0 801286E0 8E220024 */  lw         $v0, 0x24($s1)
/* DEAA4 801286E4 AE020048 */  sw         $v0, 0x48($s0)
/* DEAA8 801286E8 8E220028 */  lw         $v0, 0x28($s1)
/* DEAAC 801286EC AE02004C */  sw         $v0, 0x4C($s0)
/* DEAB0 801286F0 8E220030 */  lw         $v0, 0x30($s1)
/* DEAB4 801286F4 AE020050 */  sw         $v0, 0x50($s0)
/* DEAB8 801286F8 C6200034 */  lwc1       $f0, 0x34($s1)
/* DEABC 801286FC E6000054 */  swc1       $f0, 0x54($s0)
/* DEAC0 80128700 8E220038 */  lw         $v0, 0x38($s1)
/* DEAC4 80128704 AE020058 */  sw         $v0, 0x58($s0)
/* DEAC8 80128708 8FBF0018 */  lw         $ra, 0x18($sp)
/* DEACC 8012870C 8FB10014 */  lw         $s1, 0x14($sp)
/* DEAD0 80128710 8FB00010 */  lw         $s0, 0x10($sp)
/* DEAD4 80128714 03E00008 */  jr         $ra
/* DEAD8 80128718 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012871C
/* DEADC 8012871C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DEAE0 80128720 AFB00018 */  sw         $s0, 0x18($sp)
/* DEAE4 80128724 00808021 */  addu       $s0, $a0, $zero
/* DEAE8 80128728 AFB20020 */  sw         $s2, 0x20($sp)
/* DEAEC 8012872C 00A09021 */  addu       $s2, $a1, $zero
/* DEAF0 80128730 AFBF0028 */  sw         $ra, 0x28($sp)
/* DEAF4 80128734 AFB30024 */  sw         $s3, 0x24($sp)
/* DEAF8 80128738 AFB1001C */  sw         $s1, 0x1C($sp)
/* DEAFC 8012873C F7B40030 */  sdc1       $f20, 0x30($sp)
/* DEB00 80128740 8E030000 */  lw         $v1, 0x0($s0)
/* DEB04 80128744 00C09821 */  addu       $s3, $a2, $zero
/* DEB08 80128748 8C620000 */  lw         $v0, 0x0($v1)
/* DEB0C 8012874C 00E08821 */  addu       $s1, $a3, $zero
/* DEB10 80128750 84440018 */  lh         $a0, 0x18($v0)
/* DEB14 80128754 8C42001C */  lw         $v0, 0x1C($v0)
/* DEB18 80128758 0040F809 */  jalr       $v0
/* DEB1C 8012875C 00642021 */   addu      $a0, $v1, $a0
/* DEB20 80128760 02403021 */  addu       $a2, $s2, $zero
/* DEB24 80128764 AE02005C */  sw         $v0, 0x5C($s0)
/* DEB28 80128768 8C4300EC */  lw         $v1, 0xEC($v0)
/* DEB2C 8012876C 3C01800D */  lui        $at, %hi(D_race_800CECD8)
/* DEB30 80128770 C434ECD8 */  lwc1       $f20, %lo(D_race_800CECD8)($at)
/* DEB34 80128774 84640030 */  lh         $a0, 0x30($v1)
/* DEB38 80128778 02203821 */  addu       $a3, $s1, $zero
/* DEB3C 8012877C E7B40010 */  swc1       $f20, 0x10($sp)
/* DEB40 80128780 8E050004 */  lw         $a1, 0x4($s0)
/* DEB44 80128784 8C630034 */  lw         $v1, 0x34($v1)
/* DEB48 80128788 0060F809 */  jalr       $v1
/* DEB4C 8012878C 00442021 */   addu      $a0, $v0, $a0
/* DEB50 80128790 26040014 */  addiu      $a0, $s0, 0x14
/* DEB54 80128794 02603021 */  addu       $a2, $s3, $zero
/* DEB58 80128798 8E050004 */  lw         $a1, 0x4($s0)
/* DEB5C 8012879C 0C019E1D */  jal        func_80067874
/* DEB60 801287A0 02203821 */   addu      $a3, $s1, $zero
/* DEB64 801287A4 8E030000 */  lw         $v1, 0x0($s0)
/* DEB68 801287A8 8C620000 */  lw         $v0, 0x0($v1)
/* DEB6C 801287AC 84440018 */  lh         $a0, 0x18($v0)
/* DEB70 801287B0 8C42001C */  lw         $v0, 0x1C($v0)
/* DEB74 801287B4 0040F809 */  jalr       $v0
/* DEB78 801287B8 00642021 */   addu      $a0, $v1, $a0
/* DEB7C 801287BC 3C06800D */  lui        $a2, %hi(D_race_800CECD0)
/* DEB80 801287C0 AE020064 */  sw         $v0, 0x64($s0)
/* DEB84 801287C4 8C4300EC */  lw         $v1, 0xEC($v0)
/* DEB88 801287C8 24C6ECD0 */  addiu      $a2, $a2, %lo(D_race_800CECD0)
/* DEB8C 801287CC 84640030 */  lh         $a0, 0x30($v1)
/* DEB90 801287D0 02203821 */  addu       $a3, $s1, $zero
/* DEB94 801287D4 E7B40010 */  swc1       $f20, 0x10($sp)
/* DEB98 801287D8 8E050004 */  lw         $a1, 0x4($s0)
/* DEB9C 801287DC 8C630034 */  lw         $v1, 0x34($v1)
/* DEBA0 801287E0 0060F809 */  jalr       $v1
/* DEBA4 801287E4 00442021 */   addu      $a0, $v0, $a0
/* DEBA8 801287E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* DEBAC 801287EC 8FB30024 */  lw         $s3, 0x24($sp)
/* DEBB0 801287F0 8FB20020 */  lw         $s2, 0x20($sp)
/* DEBB4 801287F4 8FB1001C */  lw         $s1, 0x1C($sp)
/* DEBB8 801287F8 8FB00018 */  lw         $s0, 0x18($sp)
/* DEBBC 801287FC D7B40030 */  ldc1       $f20, 0x30($sp)
/* DEBC0 80128800 03E00008 */  jr         $ra
/* DEBC4 80128804 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_80128808
/* DEBC8 80128808 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DEBCC 8012880C AFB00010 */  sw         $s0, 0x10($sp)
/* DEBD0 80128810 AFBF0014 */  sw         $ra, 0x14($sp)
/* DEBD4 80128814 0C04A215 */  jal        func_race_80128854
/* DEBD8 80128818 00808021 */   addu      $s0, $a0, $zero
/* DEBDC 8012881C 26040008 */  addiu      $a0, $s0, 0x8
/* DEBE0 80128820 92021889 */  lbu        $v0, 0x1889($s0)
/* DEBE4 80128824 92061884 */  lbu        $a2, 0x1884($s0)
/* DEBE8 80128828 8E050004 */  lw         $a1, 0x4($s0)
/* DEBEC 8012882C 0C0152FA */  jal        func_80054BE8
/* DEBF0 80128830 00463021 */   addu      $a2, $v0, $a2
/* DEBF4 80128834 260418BC */  addiu      $a0, $s0, 0x18BC
/* DEBF8 80128838 8E060004 */  lw         $a2, 0x4($s0)
/* DEBFC 8012883C 0C04802B */  jal        func_race_801200AC
/* DEC00 80128840 02002821 */   addu      $a1, $s0, $zero
/* DEC04 80128844 8FBF0014 */  lw         $ra, 0x14($sp)
/* DEC08 80128848 8FB00010 */  lw         $s0, 0x10($sp)
/* DEC0C 8012884C 03E00008 */  jr         $ra
/* DEC10 80128850 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80128854
/* DEC14 80128854 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DEC18 80128858 AFB40020 */  sw         $s4, 0x20($sp)
/* DEC1C 8012885C 0080A021 */  addu       $s4, $a0, $zero
/* DEC20 80128860 AFBF0024 */  sw         $ra, 0x24($sp)
/* DEC24 80128864 AFB3001C */  sw         $s3, 0x1C($sp)
/* DEC28 80128868 AFB20018 */  sw         $s2, 0x18($sp)
/* DEC2C 8012886C AFB10014 */  sw         $s1, 0x14($sp)
/* DEC30 80128870 10A00015 */  beqz       $a1, .Lrace_801288C8
/* DEC34 80128874 AFB00010 */   sw        $s0, 0x10($sp)
/* DEC38 80128878 24030003 */  addiu      $v1, $zero, 0x3
/* DEC3C 8012887C 24020004 */  addiu      $v0, $zero, 0x4
/* DEC40 80128880 24040002 */  addiu      $a0, $zero, 0x2
/* DEC44 80128884 A2821885 */  sb         $v0, 0x1885($s4)
/* DEC48 80128888 A2821888 */  sb         $v0, 0x1888($s4)
/* DEC4C 8012888C 24020009 */  addiu      $v0, $zero, 0x9
/* DEC50 80128890 A282188B */  sb         $v0, 0x188B($s4)
/* DEC54 80128894 24020005 */  addiu      $v0, $zero, 0x5
/* DEC58 80128898 A282188C */  sb         $v0, 0x188C($s4)
/* DEC5C 8012889C 24020006 */  addiu      $v0, $zero, 0x6
/* DEC60 801288A0 A2831884 */  sb         $v1, 0x1884($s4)
/* DEC64 801288A4 A2831886 */  sb         $v1, 0x1886($s4)
/* DEC68 801288A8 A2841887 */  sb         $a0, 0x1887($s4)
/* DEC6C 801288AC A2831889 */  sb         $v1, 0x1889($s4)
/* DEC70 801288B0 A283188A */  sb         $v1, 0x188A($s4)
/* DEC74 801288B4 A282188D */  sb         $v0, 0x188D($s4)
/* DEC78 801288B8 A283188E */  sb         $v1, 0x188E($s4)
/* DEC7C 801288BC A282194C */  sb         $v0, 0x194C($s4)
/* DEC80 801288C0 0804A242 */  j          .Lrace_80128908
/* DEC84 801288C4 A284194D */   sb        $a0, 0x194D($s4)
.Lrace_801288C8:
/* DEC88 801288C8 24020002 */  addiu      $v0, $zero, 0x2
/* DEC8C 801288CC 24030003 */  addiu      $v1, $zero, 0x3
/* DEC90 801288D0 A2831885 */  sb         $v1, 0x1885($s4)
/* DEC94 801288D4 24030006 */  addiu      $v1, $zero, 0x6
/* DEC98 801288D8 A2821884 */  sb         $v0, 0x1884($s4)
/* DEC9C 801288DC A2821886 */  sb         $v0, 0x1886($s4)
/* DECA0 801288E0 A2821887 */  sb         $v0, 0x1887($s4)
/* DECA4 801288E4 A2821888 */  sb         $v0, 0x1888($s4)
/* DECA8 801288E8 A2821889 */  sb         $v0, 0x1889($s4)
/* DECAC 801288EC A282188A */  sb         $v0, 0x188A($s4)
/* DECB0 801288F0 A283188B */  sb         $v1, 0x188B($s4)
/* DECB4 801288F4 A282188C */  sb         $v0, 0x188C($s4)
/* DECB8 801288F8 A282188D */  sb         $v0, 0x188D($s4)
/* DECBC 801288FC A282188E */  sb         $v0, 0x188E($s4)
/* DECC0 80128900 A283194C */  sb         $v1, 0x194C($s4)
/* DECC4 80128904 A282194D */  sb         $v0, 0x194D($s4)
.Lrace_80128908:
/* DECC8 80128908 3C028013 */  lui        $v0, %hi(D_race_801324B0)
/* DECCC 8012890C 8C4424B0 */  lw         $a0, %lo(D_race_801324B0)($v0)
/* DECD0 80128910 0C01FB65 */  jal        func_8007ED94
/* DECD4 80128914 00000000 */   nop
/* DECD8 80128918 92901884 */  lbu        $s0, 0x1884($s4)
/* DECDC 8012891C 00102140 */  sll        $a0, $s0, 5
/* DECE0 80128920 00902021 */  addu       $a0, $a0, $s0
/* DECE4 80128924 00042080 */  sll        $a0, $a0, 2
/* DECE8 80128928 0C00943C */  jal        func_800250F0
/* DECEC 8012892C 24840008 */   addiu     $a0, $a0, 0x8
/* DECF0 80128930 24420008 */  addiu      $v0, $v0, 0x8
/* DECF4 80128934 00409821 */  addu       $s3, $v0, $zero
/* DECF8 80128938 02609021 */  addu       $s2, $s3, $zero
/* DECFC 8012893C 2611FFFF */  addiu      $s1, $s0, -0x1
/* DED00 80128940 06200007 */  bltz       $s1, .Lrace_80128960
/* DED04 80128944 AE70FFF8 */   sw        $s0, -0x8($s3)
/* DED08 80128948 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_8012894C:
/* DED0C 8012894C 0C0495C8 */  jal        func_race_80125720
/* DED10 80128950 02402021 */   addu      $a0, $s2, $zero
/* DED14 80128954 2631FFFF */  addiu      $s1, $s1, -0x1
/* DED18 80128958 1630FFFC */  bne        $s1, $s0, .Lrace_8012894C
/* DED1C 8012895C 26520084 */   addiu     $s2, $s2, 0x84
.Lrace_80128960:
/* DED20 80128960 16600007 */  bnez       $s3, .Lrace_80128980
/* DED24 80128964 AE931890 */   sw        $s3, 0x1890($s4)
/* DED28 80128968 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DED2C 8012896C 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DED30 80128970 00002821 */  addu       $a1, $zero, $zero
/* DED34 80128974 00A03021 */  addu       $a2, $a1, $zero
/* DED38 80128978 0C011ACF */  jal        func_80046B3C
/* DED3C 8012897C 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128980:
/* DED40 80128980 92901885 */  lbu        $s0, 0x1885($s4)
/* DED44 80128984 00102040 */  sll        $a0, $s0, 1
/* DED48 80128988 00902021 */  addu       $a0, $a0, $s0
/* DED4C 8012898C 00042080 */  sll        $a0, $a0, 2
/* DED50 80128990 00902021 */  addu       $a0, $a0, $s0
/* DED54 80128994 00042080 */  sll        $a0, $a0, 2
/* DED58 80128998 00902021 */  addu       $a0, $a0, $s0
/* DED5C 8012899C 000420C0 */  sll        $a0, $a0, 3
/* DED60 801289A0 0C00943C */  jal        func_800250F0
/* DED64 801289A4 24840008 */   addiu     $a0, $a0, 0x8
/* DED68 801289A8 24420008 */  addiu      $v0, $v0, 0x8
/* DED6C 801289AC 00409821 */  addu       $s3, $v0, $zero
/* DED70 801289B0 02609021 */  addu       $s2, $s3, $zero
/* DED74 801289B4 2611FFFF */  addiu      $s1, $s0, -0x1
/* DED78 801289B8 06200007 */  bltz       $s1, .Lrace_801289D8
/* DED7C 801289BC AE70FFF8 */   sw        $s0, -0x8($s3)
/* DED80 801289C0 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_801289C4:
/* DED84 801289C4 0C049E34 */  jal        func_race_801278D0
/* DED88 801289C8 02402021 */   addu      $a0, $s2, $zero
/* DED8C 801289CC 2631FFFF */  addiu      $s1, $s1, -0x1
/* DED90 801289D0 1630FFFC */  bne        $s1, $s0, .Lrace_801289C4
/* DED94 801289D4 265201A8 */   addiu     $s2, $s2, 0x1A8
.Lrace_801289D8:
/* DED98 801289D8 16600007 */  bnez       $s3, .Lrace_801289F8
/* DED9C 801289DC AE931894 */   sw        $s3, 0x1894($s4)
/* DEDA0 801289E0 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DEDA4 801289E4 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DEDA8 801289E8 00002821 */  addu       $a1, $zero, $zero
/* DEDAC 801289EC 00A03021 */  addu       $a2, $a1, $zero
/* DEDB0 801289F0 0C011ACF */  jal        func_80046B3C
/* DEDB4 801289F4 00A03821 */   addu      $a3, $a1, $zero
.Lrace_801289F8:
/* DEDB8 801289F8 92901886 */  lbu        $s0, 0x1886($s4)
/* DEDBC 801289FC 00102040 */  sll        $a0, $s0, 1
/* DEDC0 80128A00 00902021 */  addu       $a0, $a0, $s0
/* DEDC4 80128A04 00042140 */  sll        $a0, $a0, 5
/* DEDC8 80128A08 00902023 */  subu       $a0, $a0, $s0
/* DEDCC 80128A0C 00042080 */  sll        $a0, $a0, 2
/* DEDD0 80128A10 0C00943C */  jal        func_800250F0
/* DEDD4 80128A14 24840008 */   addiu     $a0, $a0, 0x8
/* DEDD8 80128A18 24420008 */  addiu      $v0, $v0, 0x8
/* DEDDC 80128A1C 00409821 */  addu       $s3, $v0, $zero
/* DEDE0 80128A20 02609021 */  addu       $s2, $s3, $zero
/* DEDE4 80128A24 2611FFFF */  addiu      $s1, $s0, -0x1
/* DEDE8 80128A28 06200007 */  bltz       $s1, .Lrace_80128A48
/* DEDEC 80128A2C AE70FFF8 */   sw        $s0, -0x8($s3)
/* DEDF0 80128A30 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128A34:
/* DEDF4 80128A34 0C048790 */  jal        func_race_80121E40
/* DEDF8 80128A38 02402021 */   addu      $a0, $s2, $zero
/* DEDFC 80128A3C 2631FFFF */  addiu      $s1, $s1, -0x1
/* DEE00 80128A40 1630FFFC */  bne        $s1, $s0, .Lrace_80128A34
/* DEE04 80128A44 2652017C */   addiu     $s2, $s2, 0x17C
.Lrace_80128A48:
/* DEE08 80128A48 16600007 */  bnez       $s3, .Lrace_80128A68
/* DEE0C 80128A4C AE931898 */   sw        $s3, 0x1898($s4)
/* DEE10 80128A50 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DEE14 80128A54 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DEE18 80128A58 00002821 */  addu       $a1, $zero, $zero
/* DEE1C 80128A5C 00A03021 */  addu       $a2, $a1, $zero
/* DEE20 80128A60 0C011ACF */  jal        func_80046B3C
/* DEE24 80128A64 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128A68:
/* DEE28 80128A68 92901887 */  lbu        $s0, 0x1887($s4)
/* DEE2C 80128A6C 00102040 */  sll        $a0, $s0, 1
/* DEE30 80128A70 00902021 */  addu       $a0, $a0, $s0
/* DEE34 80128A74 00042080 */  sll        $a0, $a0, 2
/* DEE38 80128A78 00902021 */  addu       $a0, $a0, $s0
/* DEE3C 80128A7C 000420C0 */  sll        $a0, $a0, 3
/* DEE40 80128A80 0C00943C */  jal        func_800250F0
/* DEE44 80128A84 24840008 */   addiu     $a0, $a0, 0x8
/* DEE48 80128A88 24420008 */  addiu      $v0, $v0, 0x8
/* DEE4C 80128A8C 00409821 */  addu       $s3, $v0, $zero
/* DEE50 80128A90 02609021 */  addu       $s2, $s3, $zero
/* DEE54 80128A94 2611FFFF */  addiu      $s1, $s0, -0x1
/* DEE58 80128A98 06200007 */  bltz       $s1, .Lrace_80128AB8
/* DEE5C 80128A9C AE70FFF8 */   sw        $s0, -0x8($s3)
/* DEE60 80128AA0 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128AA4:
/* DEE64 80128AA4 0C048450 */  jal        func_race_80121140
/* DEE68 80128AA8 02402021 */   addu      $a0, $s2, $zero
/* DEE6C 80128AAC 2631FFFF */  addiu      $s1, $s1, -0x1
/* DEE70 80128AB0 1630FFFC */  bne        $s1, $s0, .Lrace_80128AA4
/* DEE74 80128AB4 26520068 */   addiu     $s2, $s2, 0x68
.Lrace_80128AB8:
/* DEE78 80128AB8 16600007 */  bnez       $s3, .Lrace_80128AD8
/* DEE7C 80128ABC AE93189C */   sw        $s3, 0x189C($s4)
/* DEE80 80128AC0 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DEE84 80128AC4 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DEE88 80128AC8 00002821 */  addu       $a1, $zero, $zero
/* DEE8C 80128ACC 00A03021 */  addu       $a2, $a1, $zero
/* DEE90 80128AD0 0C011ACF */  jal        func_80046B3C
/* DEE94 80128AD4 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128AD8:
/* DEE98 80128AD8 92901888 */  lbu        $s0, 0x1888($s4)
/* DEE9C 80128ADC 001020C0 */  sll        $a0, $s0, 3
/* DEEA0 80128AE0 00902023 */  subu       $a0, $a0, $s0
/* DEEA4 80128AE4 00042080 */  sll        $a0, $a0, 2
/* DEEA8 80128AE8 00902021 */  addu       $a0, $a0, $s0
/* DEEAC 80128AEC 000420C0 */  sll        $a0, $a0, 3
/* DEEB0 80128AF0 0C00943C */  jal        func_800250F0
/* DEEB4 80128AF4 24840008 */   addiu     $a0, $a0, 0x8
/* DEEB8 80128AF8 24420008 */  addiu      $v0, $v0, 0x8
/* DEEBC 80128AFC 00409821 */  addu       $s3, $v0, $zero
/* DEEC0 80128B00 02609021 */  addu       $s2, $s3, $zero
/* DEEC4 80128B04 2611FFFF */  addiu      $s1, $s0, -0x1
/* DEEC8 80128B08 06200007 */  bltz       $s1, .Lrace_80128B28
/* DEECC 80128B0C AE70FFF8 */   sw        $s0, -0x8($s3)
/* DEED0 80128B10 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128B14:
/* DEED4 80128B14 0C0480FC */  jal        func_race_801203F0
/* DEED8 80128B18 02402021 */   addu      $a0, $s2, $zero
/* DEEDC 80128B1C 2631FFFF */  addiu      $s1, $s1, -0x1
/* DEEE0 80128B20 1630FFFC */  bne        $s1, $s0, .Lrace_80128B14
/* DEEE4 80128B24 265200E8 */   addiu     $s2, $s2, 0xE8
.Lrace_80128B28:
/* DEEE8 80128B28 16600007 */  bnez       $s3, .Lrace_80128B48
/* DEEEC 80128B2C AE9318A0 */   sw        $s3, 0x18A0($s4)
/* DEEF0 80128B30 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DEEF4 80128B34 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DEEF8 80128B38 00002821 */  addu       $a1, $zero, $zero
/* DEEFC 80128B3C 00A03021 */  addu       $a2, $a1, $zero
/* DEF00 80128B40 0C011ACF */  jal        func_80046B3C
/* DEF04 80128B44 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128B48:
/* DEF08 80128B48 92901889 */  lbu        $s0, 0x1889($s4)
/* DEF0C 80128B4C 00102080 */  sll        $a0, $s0, 2
/* DEF10 80128B50 00902021 */  addu       $a0, $a0, $s0
/* DEF14 80128B54 00042080 */  sll        $a0, $a0, 2
/* DEF18 80128B58 00902021 */  addu       $a0, $a0, $s0
/* DEF1C 80128B5C 00042080 */  sll        $a0, $a0, 2
/* DEF20 80128B60 00902023 */  subu       $a0, $a0, $s0
/* DEF24 80128B64 000420C0 */  sll        $a0, $a0, 3
/* DEF28 80128B68 0C00943C */  jal        func_800250F0
/* DEF2C 80128B6C 24840008 */   addiu     $a0, $a0, 0x8
/* DEF30 80128B70 24420008 */  addiu      $v0, $v0, 0x8
/* DEF34 80128B74 00409821 */  addu       $s3, $v0, $zero
/* DEF38 80128B78 02609021 */  addu       $s2, $s3, $zero
/* DEF3C 80128B7C 2611FFFF */  addiu      $s1, $s0, -0x1
/* DEF40 80128B80 06200007 */  bltz       $s1, .Lrace_80128BA0
/* DEF44 80128B84 AE70FFF8 */   sw        $s0, -0x8($s3)
/* DEF48 80128B88 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128B8C:
/* DEF4C 80128B8C 0C048CD8 */  jal        func_race_80123360
/* DEF50 80128B90 02402021 */   addu      $a0, $s2, $zero
/* DEF54 80128B94 2631FFFF */  addiu      $s1, $s1, -0x1
/* DEF58 80128B98 1630FFFC */  bne        $s1, $s0, .Lrace_80128B8C
/* DEF5C 80128B9C 26520298 */   addiu     $s2, $s2, 0x298
.Lrace_80128BA0:
/* DEF60 80128BA0 16600007 */  bnez       $s3, .Lrace_80128BC0
/* DEF64 80128BA4 AE9318A4 */   sw        $s3, 0x18A4($s4)
/* DEF68 80128BA8 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DEF6C 80128BAC 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DEF70 80128BB0 00002821 */  addu       $a1, $zero, $zero
/* DEF74 80128BB4 00A03021 */  addu       $a2, $a1, $zero
/* DEF78 80128BB8 0C011ACF */  jal        func_80046B3C
/* DEF7C 80128BBC 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128BC0:
/* DEF80 80128BC0 9290188A */  lbu        $s0, 0x188A($s4)
/* DEF84 80128BC4 001020C0 */  sll        $a0, $s0, 3
/* DEF88 80128BC8 00902021 */  addu       $a0, $a0, $s0
/* DEF8C 80128BCC 00042080 */  sll        $a0, $a0, 2
/* DEF90 80128BD0 00902021 */  addu       $a0, $a0, $s0
/* DEF94 80128BD4 00042080 */  sll        $a0, $a0, 2
/* DEF98 80128BD8 00902021 */  addu       $a0, $a0, $s0
/* DEF9C 80128BDC 00042080 */  sll        $a0, $a0, 2
/* DEFA0 80128BE0 0C00943C */  jal        func_800250F0
/* DEFA4 80128BE4 24840008 */   addiu     $a0, $a0, 0x8
/* DEFA8 80128BE8 24420008 */  addiu      $v0, $v0, 0x8
/* DEFAC 80128BEC 00409821 */  addu       $s3, $v0, $zero
/* DEFB0 80128BF0 02609021 */  addu       $s2, $s3, $zero
/* DEFB4 80128BF4 2611FFFF */  addiu      $s1, $s0, -0x1
/* DEFB8 80128BF8 06200007 */  bltz       $s1, .Lrace_80128C18
/* DEFBC 80128BFC AE70FFF8 */   sw        $s0, -0x8($s3)
/* DEFC0 80128C00 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128C04:
/* DEFC4 80128C04 0C0490B4 */  jal        func_race_801242D0
/* DEFC8 80128C08 02402021 */   addu      $a0, $s2, $zero
/* DEFCC 80128C0C 2631FFFF */  addiu      $s1, $s1, -0x1
/* DEFD0 80128C10 1630FFFC */  bne        $s1, $s0, .Lrace_80128C04
/* DEFD4 80128C14 26520254 */   addiu     $s2, $s2, 0x254
.Lrace_80128C18:
/* DEFD8 80128C18 16600007 */  bnez       $s3, .Lrace_80128C38
/* DEFDC 80128C1C AE9318A8 */   sw        $s3, 0x18A8($s4)
/* DEFE0 80128C20 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DEFE4 80128C24 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DEFE8 80128C28 00002821 */  addu       $a1, $zero, $zero
/* DEFEC 80128C2C 00A03021 */  addu       $a2, $a1, $zero
/* DEFF0 80128C30 0C011ACF */  jal        func_80046B3C
/* DEFF4 80128C34 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128C38:
/* DEFF8 80128C38 9290188B */  lbu        $s0, 0x188B($s4)
/* DEFFC 80128C3C 00102100 */  sll        $a0, $s0, 4
/* DF000 80128C40 00902021 */  addu       $a0, $a0, $s0
/* DF004 80128C44 000420C0 */  sll        $a0, $a0, 3
/* DF008 80128C48 00902021 */  addu       $a0, $a0, $s0
/* DF00C 80128C4C 00042080 */  sll        $a0, $a0, 2
/* DF010 80128C50 0C00943C */  jal        func_800250F0
/* DF014 80128C54 24840008 */   addiu     $a0, $a0, 0x8
/* DF018 80128C58 24420008 */  addiu      $v0, $v0, 0x8
/* DF01C 80128C5C 00409821 */  addu       $s3, $v0, $zero
/* DF020 80128C60 02609021 */  addu       $s2, $s3, $zero
/* DF024 80128C64 2611FFFF */  addiu      $s1, $s0, -0x1
/* DF028 80128C68 06200007 */  bltz       $s1, .Lrace_80128C88
/* DF02C 80128C6C AE70FFF8 */   sw        $s0, -0x8($s3)
/* DF030 80128C70 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128C74:
/* DF034 80128C74 0C049A7C */  jal        func_race_801269F0
/* DF038 80128C78 02402021 */   addu      $a0, $s2, $zero
/* DF03C 80128C7C 2631FFFF */  addiu      $s1, $s1, -0x1
/* DF040 80128C80 1630FFFC */  bne        $s1, $s0, .Lrace_80128C74
/* DF044 80128C84 26520224 */   addiu     $s2, $s2, 0x224
.Lrace_80128C88:
/* DF048 80128C88 16600007 */  bnez       $s3, .Lrace_80128CA8
/* DF04C 80128C8C AE9318AC */   sw        $s3, 0x18AC($s4)
/* DF050 80128C90 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DF054 80128C94 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DF058 80128C98 00002821 */  addu       $a1, $zero, $zero
/* DF05C 80128C9C 00A03021 */  addu       $a2, $a1, $zero
/* DF060 80128CA0 0C011ACF */  jal        func_80046B3C
/* DF064 80128CA4 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128CA8:
/* DF068 80128CA8 9290188C */  lbu        $s0, 0x188C($s4)
/* DF06C 80128CAC 00102040 */  sll        $a0, $s0, 1
/* DF070 80128CB0 00902021 */  addu       $a0, $a0, $s0
/* DF074 80128CB4 00042080 */  sll        $a0, $a0, 2
/* DF078 80128CB8 00902023 */  subu       $a0, $a0, $s0
/* DF07C 80128CBC 00042080 */  sll        $a0, $a0, 2
/* DF080 80128CC0 0C00943C */  jal        func_800250F0
/* DF084 80128CC4 24840008 */   addiu     $a0, $a0, 0x8
/* DF088 80128CC8 24420008 */  addiu      $v0, $v0, 0x8
/* DF08C 80128CCC 00409821 */  addu       $s3, $v0, $zero
/* DF090 80128CD0 02609021 */  addu       $s2, $s3, $zero
/* DF094 80128CD4 2611FFFF */  addiu      $s1, $s0, -0x1
/* DF098 80128CD8 06200007 */  bltz       $s1, .Lrace_80128CF8
/* DF09C 80128CDC AE70FFF8 */   sw        $s0, -0x8($s3)
/* DF0A0 80128CE0 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128CE4:
/* DF0A4 80128CE4 0C04B7B0 */  jal        func_race_8012DEC0
/* DF0A8 80128CE8 02402021 */   addu      $a0, $s2, $zero
/* DF0AC 80128CEC 2631FFFF */  addiu      $s1, $s1, -0x1
/* DF0B0 80128CF0 1630FFFC */  bne        $s1, $s0, .Lrace_80128CE4
/* DF0B4 80128CF4 2652002C */   addiu     $s2, $s2, 0x2C
.Lrace_80128CF8:
/* DF0B8 80128CF8 16600007 */  bnez       $s3, .Lrace_80128D18
/* DF0BC 80128CFC AE9318B0 */   sw        $s3, 0x18B0($s4)
/* DF0C0 80128D00 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DF0C4 80128D04 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DF0C8 80128D08 00002821 */  addu       $a1, $zero, $zero
/* DF0CC 80128D0C 00A03021 */  addu       $a2, $a1, $zero
/* DF0D0 80128D10 0C011ACF */  jal        func_80046B3C
/* DF0D4 80128D14 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128D18:
/* DF0D8 80128D18 9290188D */  lbu        $s0, 0x188D($s4)
/* DF0DC 80128D1C 00102040 */  sll        $a0, $s0, 1
/* DF0E0 80128D20 00902021 */  addu       $a0, $a0, $s0
/* DF0E4 80128D24 00042080 */  sll        $a0, $a0, 2
/* DF0E8 80128D28 00902021 */  addu       $a0, $a0, $s0
/* DF0EC 80128D2C 00042080 */  sll        $a0, $a0, 2
/* DF0F0 80128D30 0C00943C */  jal        func_800250F0
/* DF0F4 80128D34 24840008 */   addiu     $a0, $a0, 0x8
/* DF0F8 80128D38 24420008 */  addiu      $v0, $v0, 0x8
/* DF0FC 80128D3C 00409821 */  addu       $s3, $v0, $zero
/* DF100 80128D40 02609021 */  addu       $s2, $s3, $zero
/* DF104 80128D44 2611FFFF */  addiu      $s1, $s0, -0x1
/* DF108 80128D48 06200007 */  bltz       $s1, .Lrace_80128D68
/* DF10C 80128D4C AE70FFF8 */   sw        $s0, -0x8($s3)
/* DF110 80128D50 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128D54:
/* DF114 80128D54 0C04BA24 */  jal        func_race_8012E890
/* DF118 80128D58 02402021 */   addu      $a0, $s2, $zero
/* DF11C 80128D5C 2631FFFF */  addiu      $s1, $s1, -0x1
/* DF120 80128D60 1630FFFC */  bne        $s1, $s0, .Lrace_80128D54
/* DF124 80128D64 26520034 */   addiu     $s2, $s2, 0x34
.Lrace_80128D68:
/* DF128 80128D68 16600007 */  bnez       $s3, .Lrace_80128D88
/* DF12C 80128D6C AE9318B4 */   sw        $s3, 0x18B4($s4)
/* DF130 80128D70 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DF134 80128D74 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DF138 80128D78 00002821 */  addu       $a1, $zero, $zero
/* DF13C 80128D7C 00A03021 */  addu       $a2, $a1, $zero
/* DF140 80128D80 0C011ACF */  jal        func_80046B3C
/* DF144 80128D84 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128D88:
/* DF148 80128D88 9290188E */  lbu        $s0, 0x188E($s4)
/* DF14C 80128D8C 001020C0 */  sll        $a0, $s0, 3
/* DF150 80128D90 00902023 */  subu       $a0, $a0, $s0
/* DF154 80128D94 000420C0 */  sll        $a0, $a0, 3
/* DF158 80128D98 00902021 */  addu       $a0, $a0, $s0
/* DF15C 80128D9C 00042080 */  sll        $a0, $a0, 2
/* DF160 80128DA0 0C00943C */  jal        func_800250F0
/* DF164 80128DA4 24840008 */   addiu     $a0, $a0, 0x8
/* DF168 80128DA8 24420008 */  addiu      $v0, $v0, 0x8
/* DF16C 80128DAC 00409821 */  addu       $s3, $v0, $zero
/* DF170 80128DB0 02609021 */  addu       $s2, $s3, $zero
/* DF174 80128DB4 2611FFFF */  addiu      $s1, $s0, -0x1
/* DF178 80128DB8 06200007 */  bltz       $s1, .Lrace_80128DD8
/* DF17C 80128DBC AE70FFF8 */   sw        $s0, -0x8($s3)
/* DF180 80128DC0 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128DC4:
/* DF184 80128DC4 0C04BE68 */  jal        func_race_8012F9A0
/* DF188 80128DC8 02402021 */   addu      $a0, $s2, $zero
/* DF18C 80128DCC 2631FFFF */  addiu      $s1, $s1, -0x1
/* DF190 80128DD0 1630FFFC */  bne        $s1, $s0, .Lrace_80128DC4
/* DF194 80128DD4 265200E4 */   addiu     $s2, $s2, 0xE4
.Lrace_80128DD8:
/* DF198 80128DD8 16600007 */  bnez       $s3, .Lrace_80128DF8
/* DF19C 80128DDC AE9318B8 */   sw        $s3, 0x18B8($s4)
/* DF1A0 80128DE0 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DF1A4 80128DE4 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DF1A8 80128DE8 00002821 */  addu       $a1, $zero, $zero
/* DF1AC 80128DEC 00A03021 */  addu       $a2, $a1, $zero
/* DF1B0 80128DF0 0C011ACF */  jal        func_80046B3C
/* DF1B4 80128DF4 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128DF8:
/* DF1B8 80128DF8 9290194C */  lbu        $s0, 0x194C($s4)
/* DF1BC 80128DFC 00102080 */  sll        $a0, $s0, 2
/* DF1C0 80128E00 00902021 */  addu       $a0, $a0, $s0
/* DF1C4 80128E04 00042100 */  sll        $a0, $a0, 4
/* DF1C8 80128E08 00902021 */  addu       $a0, $a0, $s0
/* DF1CC 80128E0C 000420C0 */  sll        $a0, $a0, 3
/* DF1D0 80128E10 0C00943C */  jal        func_800250F0
/* DF1D4 80128E14 24840008 */   addiu     $a0, $a0, 0x8
/* DF1D8 80128E18 24420008 */  addiu      $v0, $v0, 0x8
/* DF1DC 80128E1C 00409821 */  addu       $s3, $v0, $zero
/* DF1E0 80128E20 02609021 */  addu       $s2, $s3, $zero
/* DF1E4 80128E24 2611FFFF */  addiu      $s1, $s0, -0x1
/* DF1E8 80128E28 06200007 */  bltz       $s1, .Lrace_80128E48
/* DF1EC 80128E2C AE70FFF8 */   sw        $s0, -0x8($s3)
/* DF1F0 80128E30 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128E34:
/* DF1F4 80128E34 0C03CF04 */  jal        func_race_800F3C10
/* DF1F8 80128E38 02402021 */   addu      $a0, $s2, $zero
/* DF1FC 80128E3C 2631FFFF */  addiu      $s1, $s1, -0x1
/* DF200 80128E40 1630FFFC */  bne        $s1, $s0, .Lrace_80128E34
/* DF204 80128E44 26520288 */   addiu     $s2, $s2, 0x288
.Lrace_80128E48:
/* DF208 80128E48 16600007 */  bnez       $s3, .Lrace_80128E68
/* DF20C 80128E4C AE931950 */   sw        $s3, 0x1950($s4)
/* DF210 80128E50 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DF214 80128E54 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DF218 80128E58 00002821 */  addu       $a1, $zero, $zero
/* DF21C 80128E5C 00A03021 */  addu       $a2, $a1, $zero
/* DF220 80128E60 0C011ACF */  jal        func_80046B3C
/* DF224 80128E64 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128E68:
/* DF228 80128E68 9290194D */  lbu        $s0, 0x194D($s4)
/* DF22C 80128E6C 00102080 */  sll        $a0, $s0, 2
/* DF230 80128E70 00902021 */  addu       $a0, $a0, $s0
/* DF234 80128E74 00042100 */  sll        $a0, $a0, 4
/* DF238 80128E78 00902021 */  addu       $a0, $a0, $s0
/* DF23C 80128E7C 000420C0 */  sll        $a0, $a0, 3
/* DF240 80128E80 0C00943C */  jal        func_800250F0
/* DF244 80128E84 24840008 */   addiu     $a0, $a0, 0x8
/* DF248 80128E88 24420008 */  addiu      $v0, $v0, 0x8
/* DF24C 80128E8C 00409821 */  addu       $s3, $v0, $zero
/* DF250 80128E90 02609021 */  addu       $s2, $s3, $zero
/* DF254 80128E94 2611FFFF */  addiu      $s1, $s0, -0x1
/* DF258 80128E98 06200007 */  bltz       $s1, .Lrace_80128EB8
/* DF25C 80128E9C AE70FFF8 */   sw        $s0, -0x8($s3)
/* DF260 80128EA0 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80128EA4:
/* DF264 80128EA4 0C03CF04 */  jal        func_race_800F3C10
/* DF268 80128EA8 02402021 */   addu      $a0, $s2, $zero
/* DF26C 80128EAC 2631FFFF */  addiu      $s1, $s1, -0x1
/* DF270 80128EB0 1630FFFC */  bne        $s1, $s0, .Lrace_80128EA4
/* DF274 80128EB4 26520288 */   addiu     $s2, $s2, 0x288
.Lrace_80128EB8:
/* DF278 80128EB8 16600007 */  bnez       $s3, .Lrace_80128ED8
/* DF27C 80128EBC AE931954 */   sw        $s3, 0x1954($s4)
/* DF280 80128EC0 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DF284 80128EC4 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DF288 80128EC8 00002821 */  addu       $a1, $zero, $zero
/* DF28C 80128ECC 00A03021 */  addu       $a2, $a1, $zero
/* DF290 80128ED0 0C011ACF */  jal        func_80046B3C
/* DF294 80128ED4 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128ED8:
/* DF298 80128ED8 0C01FB72 */  jal        func_8007EDC8
/* DF29C 80128EDC 00000000 */   nop
/* DF2A0 80128EE0 8FBF0024 */  lw         $ra, 0x24($sp)
/* DF2A4 80128EE4 8FB40020 */  lw         $s4, 0x20($sp)
/* DF2A8 80128EE8 8FB3001C */  lw         $s3, 0x1C($sp)
/* DF2AC 80128EEC 8FB20018 */  lw         $s2, 0x18($sp)
/* DF2B0 80128EF0 8FB10014 */  lw         $s1, 0x14($sp)
/* DF2B4 80128EF4 8FB00010 */  lw         $s0, 0x10($sp)
/* DF2B8 80128EF8 03E00008 */  jr         $ra
/* DF2BC 80128EFC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80128F00
/* DF2C0 80128F00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DF2C4 80128F04 AFB10014 */  sw         $s1, 0x14($sp)
/* DF2C8 80128F08 00808821 */  addu       $s1, $a0, $zero
/* DF2CC 80128F0C AFB3001C */  sw         $s3, 0x1C($sp)
/* DF2D0 80128F10 00A09821 */  addu       $s3, $a1, $zero
/* DF2D4 80128F14 AFB20018 */  sw         $s2, 0x18($sp)
/* DF2D8 80128F18 00E09021 */  addu       $s2, $a3, $zero
/* DF2DC 80128F1C AFBF0024 */  sw         $ra, 0x24($sp)
/* DF2E0 80128F20 AFB40020 */  sw         $s4, 0x20($sp)
/* DF2E4 80128F24 10C00014 */  beqz       $a2, .Lrace_80128F78
/* DF2E8 80128F28 AFB00010 */   sw        $s0, 0x10($sp)
/* DF2EC 80128F2C 0C01FB4C */  jal        func_8007ED30
/* DF2F0 80128F30 24040654 */   addiu     $a0, $zero, 0x654
/* DF2F4 80128F34 0C00278C */  jal        func_80009E30
/* DF2F8 80128F38 00402021 */   addu      $a0, $v0, $zero
/* DF2FC 80128F3C 00408021 */  addu       $s0, $v0, $zero
/* DF300 80128F40 56000008 */  bnel       $s0, $zero, .Lrace_80128F64
/* DF304 80128F44 02002021 */   addu      $a0, $s0, $zero
/* DF308 80128F48 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DF30C 80128F4C 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DF310 80128F50 00002821 */  addu       $a1, $zero, $zero
/* DF314 80128F54 00A03021 */  addu       $a2, $a1, $zero
/* DF318 80128F58 0C011ACF */  jal        func_80046B3C
/* DF31C 80128F5C 00A03821 */   addu      $a3, $a1, $zero
/* DF320 80128F60 02002021 */  addu       $a0, $s0, $zero
.Lrace_80128F64:
/* DF324 80128F64 3C05800D */  lui        $a1, %hi(D_race_800CECE0)
/* DF328 80128F68 0C0025BA */  jal        func_800096E8
/* DF32C 80128F6C 24A5ECE0 */   addiu     $a1, $a1, %lo(D_race_800CECE0)
/* DF330 80128F70 0804A3EE */  j          .Lrace_80128FB8
/* DF334 80128F74 02602821 */   addu      $a1, $s3, $zero
.Lrace_80128F78:
/* DF338 80128F78 0C01FB4C */  jal        func_8007ED30
/* DF33C 80128F7C 24040658 */   addiu     $a0, $zero, 0x658
/* DF340 80128F80 00408021 */  addu       $s0, $v0, $zero
/* DF344 80128F84 0C002504 */  jal        func_80009410
/* DF348 80128F88 02002021 */   addu      $a0, $s0, $zero
/* DF34C 80128F8C 3C02800D */  lui        $v0, %hi(D_race_800CEE90)
/* DF350 80128F90 2442EE90 */  addiu      $v0, $v0, %lo(D_race_800CEE90)
/* DF354 80128F94 16000007 */  bnez       $s0, .Lrace_80128FB4
/* DF358 80128F98 AE020028 */   sw        $v0, 0x28($s0)
/* DF35C 80128F9C 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DF360 80128FA0 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DF364 80128FA4 00002821 */  addu       $a1, $zero, $zero
/* DF368 80128FA8 00A03021 */  addu       $a2, $a1, $zero
/* DF36C 80128FAC 0C011ACF */  jal        func_80046B3C
/* DF370 80128FB0 00A03821 */   addu      $a3, $a1, $zero
.Lrace_80128FB4:
/* DF374 80128FB4 02602821 */  addu       $a1, $s3, $zero
.Lrace_80128FB8:
/* DF378 80128FB8 24140027 */  addiu      $s4, $zero, 0x27
/* DF37C 80128FBC 8E020028 */  lw         $v0, 0x28($s0)
/* DF380 80128FC0 2413002F */  addiu      $s3, $zero, 0x2F
/* DF384 80128FC4 84440088 */  lh         $a0, 0x88($v0)
/* DF388 80128FC8 8C42008C */  lw         $v0, 0x8C($v0)
/* DF38C 80128FCC 0040F809 */  jalr       $v0
/* DF390 80128FD0 02042021 */   addu      $a0, $s0, $a0
.Lrace_80128FD4:
/* DF394 80128FD4 8E020028 */  lw         $v0, 0x28($s0)
/* DF398 80128FD8 844400A0 */  lh         $a0, 0xA0($v0)
/* DF39C 80128FDC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DF3A0 80128FE0 0040F809 */  jalr       $v0
/* DF3A4 80128FE4 02042021 */   addu      $a0, $s0, $a0
/* DF3A8 80128FE8 10400011 */  beqz       $v0, .Lrace_80129030
/* DF3AC 80128FEC 00000000 */   nop
/* DF3B0 80128FF0 50540005 */  beql       $v0, $s4, .Lrace_80129008
/* DF3B4 80128FF4 02202021 */   addu      $a0, $s1, $zero
/* DF3B8 80128FF8 50530008 */  beql       $v0, $s3, .Lrace_8012901C
/* DF3BC 80128FFC 02202021 */   addu      $a0, $s1, $zero
/* DF3C0 80129000 0804A3F5 */  j          .Lrace_80128FD4
/* DF3C4 80129004 00000000 */   nop
.Lrace_80129008:
/* DF3C8 80129008 02002821 */  addu       $a1, $s0, $zero
/* DF3CC 8012900C 0C04A47F */  jal        func_race_801291FC
/* DF3D0 80129010 02403021 */   addu      $a2, $s2, $zero
/* DF3D4 80129014 0804A3F5 */  j          .Lrace_80128FD4
/* DF3D8 80129018 00000000 */   nop
.Lrace_8012901C:
/* DF3DC 8012901C 02002821 */  addu       $a1, $s0, $zero
/* DF3E0 80129020 0C04A5A7 */  jal        func_race_8012969C
/* DF3E4 80129024 02403021 */   addu      $a2, $s2, $zero
/* DF3E8 80129028 0804A3F5 */  j          .Lrace_80128FD4
/* DF3EC 8012902C 00000000 */   nop
.Lrace_80129030:
/* DF3F0 80129030 8E020028 */  lw         $v0, 0x28($s0)
/* DF3F4 80129034 84440048 */  lh         $a0, 0x48($v0)
/* DF3F8 80129038 8C42004C */  lw         $v0, 0x4C($v0)
/* DF3FC 8012903C 0040F809 */  jalr       $v0
/* DF400 80129040 02042021 */   addu      $a0, $s0, $a0
/* DF404 80129044 12000006 */  beqz       $s0, .Lrace_80129060
/* DF408 80129048 24050003 */   addiu     $a1, $zero, 0x3
/* DF40C 8012904C 8E020028 */  lw         $v0, 0x28($s0)
/* DF410 80129050 84440038 */  lh         $a0, 0x38($v0)
/* DF414 80129054 8C42003C */  lw         $v0, 0x3C($v0)
/* DF418 80129058 0040F809 */  jalr       $v0
/* DF41C 8012905C 02042021 */   addu      $a0, $s0, $a0
.Lrace_80129060:
/* DF420 80129060 8FBF0024 */  lw         $ra, 0x24($sp)
/* DF424 80129064 8FB40020 */  lw         $s4, 0x20($sp)
/* DF428 80129068 8FB3001C */  lw         $s3, 0x1C($sp)
/* DF42C 8012906C 8FB20018 */  lw         $s2, 0x18($sp)
/* DF430 80129070 8FB10014 */  lw         $s1, 0x14($sp)
/* DF434 80129074 8FB00010 */  lw         $s0, 0x10($sp)
/* DF438 80129078 03E00008 */  jr         $ra
/* DF43C 8012907C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80129080
/* DF440 80129080 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF444 80129084 AFB00010 */  sw         $s0, 0x10($sp)
/* DF448 80129088 00808021 */  addu       $s0, $a0, $zero
/* DF44C 8012908C 3C028013 */  lui        $v0, %hi(D_race_801324B0)
/* DF450 80129090 8C4424B0 */  lw         $a0, %lo(D_race_801324B0)($v0)
/* DF454 80129094 AFBF0014 */  sw         $ra, 0x14($sp)
/* DF458 80129098 0C01FB65 */  jal        func_8007ED94
/* DF45C 8012909C 00000000 */   nop
/* DF460 801290A0 8E040034 */  lw         $a0, 0x34($s0)
/* DF464 801290A4 8E020038 */  lw         $v0, 0x38($s0)
/* DF468 801290A8 00822021 */  addu       $a0, $a0, $v0
/* DF46C 801290AC 0C00943C */  jal        func_800250F0
/* DF470 801290B0 00042080 */   sll       $a0, $a0, 2
/* DF474 801290B4 0C01FB72 */  jal        func_8007EDC8
/* DF478 801290B8 AE020030 */   sw        $v0, 0x30($s0)
/* DF47C 801290BC 8E020030 */  lw         $v0, 0x30($s0)
/* DF480 801290C0 14400006 */  bnez       $v0, .Lrace_801290DC
/* DF484 801290C4 3C04800D */   lui       $a0, %hi(D_race_800CECDC)
/* DF488 801290C8 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DF48C 801290CC 00002821 */  addu       $a1, $zero, $zero
/* DF490 801290D0 00A03021 */  addu       $a2, $a1, $zero
/* DF494 801290D4 0C011ACF */  jal        func_80046B3C
/* DF498 801290D8 00A03821 */   addu      $a3, $a1, $zero
.Lrace_801290DC:
/* DF49C 801290DC 8E020034 */  lw         $v0, 0x34($s0)
/* DF4A0 801290E0 8E030038 */  lw         $v1, 0x38($s0)
/* DF4A4 801290E4 00431021 */  addu       $v0, $v0, $v1
/* DF4A8 801290E8 1040000C */  beqz       $v0, .Lrace_8012911C
/* DF4AC 801290EC 00002021 */   addu      $a0, $zero, $zero
.Lrace_801290F0:
/* DF4B0 801290F0 8E030030 */  lw         $v1, 0x30($s0)
/* DF4B4 801290F4 00041080 */  sll        $v0, $a0, 2
/* DF4B8 801290F8 00431021 */  addu       $v0, $v0, $v1
/* DF4BC 801290FC AC400000 */  sw         $zero, 0x0($v0)
/* DF4C0 80129100 8E020034 */  lw         $v0, 0x34($s0)
/* DF4C4 80129104 8E030038 */  lw         $v1, 0x38($s0)
/* DF4C8 80129108 24840001 */  addiu      $a0, $a0, 0x1
/* DF4CC 8012910C 00431021 */  addu       $v0, $v0, $v1
/* DF4D0 80129110 0082102B */  sltu       $v0, $a0, $v0
/* DF4D4 80129114 1440FFF6 */  bnez       $v0, .Lrace_801290F0
/* DF4D8 80129118 00000000 */   nop
.Lrace_8012911C:
/* DF4DC 8012911C 0C04ACD2 */  jal        func_race_8012B348
/* DF4E0 80129120 02002021 */   addu      $a0, $s0, $zero
/* DF4E4 80129124 0C04ACD4 */  jal        func_race_8012B350
/* DF4E8 80129128 02002021 */   addu      $a0, $s0, $zero
/* DF4EC 8012912C 0C04A670 */  jal        func_race_801299C0
/* DF4F0 80129130 02002021 */   addu      $a0, $s0, $zero
/* DF4F4 80129134 0C04A96E */  jal        func_race_8012A5B8
/* DF4F8 80129138 02002021 */   addu      $a0, $s0, $zero
/* DF4FC 8012913C 8E04003C */  lw         $a0, 0x3C($s0)
/* DF500 80129140 0C04654F */  jal        func_race_8011953C
/* DF504 80129144 24050007 */   addiu     $a1, $zero, 0x7
/* DF508 80129148 10400007 */  beqz       $v0, .Lrace_80129168
/* DF50C 8012914C AE021958 */   sw        $v0, 0x1958($s0)
/* DF510 80129150 3C01800D */  lui        $at, %hi(D_race_800CECE8)
/* DF514 80129154 C420ECE8 */  lwc1       $f0, %lo(D_race_800CECE8)($at)
/* DF518 80129158 3C01800D */  lui        $at, %hi(D_race_800CECEC)
/* DF51C 8012915C C422ECEC */  lwc1       $f2, %lo(D_race_800CECEC)($at)
/* DF520 80129160 E440002C */  swc1       $f0, 0x2C($v0)
/* DF524 80129164 E4420030 */  swc1       $f2, 0x30($v0)
.Lrace_80129168:
/* DF528 80129168 8E04003C */  lw         $a0, 0x3C($s0)
/* DF52C 8012916C 0C04654F */  jal        func_race_8011953C
/* DF530 80129170 24050034 */   addiu     $a1, $zero, 0x34
/* DF534 80129174 10400007 */  beqz       $v0, .Lrace_80129194
/* DF538 80129178 AE02195C */   sw        $v0, 0x195C($s0)
/* DF53C 8012917C 3C01800D */  lui        $at, %hi(D_race_800CECF0)
/* DF540 80129180 C420ECF0 */  lwc1       $f0, %lo(D_race_800CECF0)($at)
/* DF544 80129184 3C01800D */  lui        $at, %hi(D_race_800CECF4)
/* DF548 80129188 C422ECF4 */  lwc1       $f2, %lo(D_race_800CECF4)($at)
/* DF54C 8012918C E440002C */  swc1       $f0, 0x2C($v0)
/* DF550 80129190 E4420030 */  swc1       $f2, 0x30($v0)
.Lrace_80129194:
/* DF554 80129194 8E04003C */  lw         $a0, 0x3C($s0)
/* DF558 80129198 0C04654F */  jal        func_race_8011953C
/* DF55C 8012919C 24050017 */   addiu     $a1, $zero, 0x17
/* DF560 801291A0 10400007 */  beqz       $v0, .Lrace_801291C0
/* DF564 801291A4 AE021960 */   sw        $v0, 0x1960($s0)
/* DF568 801291A8 3C01800D */  lui        $at, %hi(D_race_800CECF8)
/* DF56C 801291AC C420ECF8 */  lwc1       $f0, %lo(D_race_800CECF8)($at)
/* DF570 801291B0 3C01800D */  lui        $at, %hi(D_race_800CECFC)
/* DF574 801291B4 C422ECFC */  lwc1       $f2, %lo(D_race_800CECFC)($at)
/* DF578 801291B8 E440002C */  swc1       $f0, 0x2C($v0)
/* DF57C 801291BC E4420030 */  swc1       $f2, 0x30($v0)
.Lrace_801291C0:
/* DF580 801291C0 8E04003C */  lw         $a0, 0x3C($s0)
/* DF584 801291C4 0C04654F */  jal        func_race_8011953C
/* DF588 801291C8 24050013 */   addiu     $a1, $zero, 0x13
/* DF58C 801291CC 10400007 */  beqz       $v0, .Lrace_801291EC
/* DF590 801291D0 AE021964 */   sw        $v0, 0x1964($s0)
/* DF594 801291D4 3C01800D */  lui        $at, %hi(D_race_800CED00)
/* DF598 801291D8 C420ED00 */  lwc1       $f0, %lo(D_race_800CED00)($at)
/* DF59C 801291DC 3C01800D */  lui        $at, %hi(D_race_800CED04)
/* DF5A0 801291E0 C422ED04 */  lwc1       $f2, %lo(D_race_800CED04)($at)
/* DF5A4 801291E4 E440002C */  swc1       $f0, 0x2C($v0)
/* DF5A8 801291E8 E4420030 */  swc1       $f2, 0x30($v0)
.Lrace_801291EC:
/* DF5AC 801291EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF5B0 801291F0 8FB00010 */  lw         $s0, 0x10($sp)
/* DF5B4 801291F4 03E00008 */  jr         $ra
/* DF5B8 801291F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801291FC
/* DF5BC 801291FC 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* DF5C0 80129200 AFB50044 */  sw         $s5, 0x44($sp)
/* DF5C4 80129204 0080A821 */  addu       $s5, $a0, $zero
/* DF5C8 80129208 AFB40040 */  sw         $s4, 0x40($sp)
/* DF5CC 8012920C 00A0A021 */  addu       $s4, $a1, $zero
/* DF5D0 80129210 02802021 */  addu       $a0, $s4, $zero
/* DF5D4 80129214 AFBF0054 */  sw         $ra, 0x54($sp)
/* DF5D8 80129218 AFBE0050 */  sw         $fp, 0x50($sp)
/* DF5DC 8012921C AFB7004C */  sw         $s7, 0x4C($sp)
/* DF5E0 80129220 AFB60048 */  sw         $s6, 0x48($sp)
/* DF5E4 80129224 AFB3003C */  sw         $s3, 0x3C($sp)
/* DF5E8 80129228 AFB20038 */  sw         $s2, 0x38($sp)
/* DF5EC 8012922C AFB10034 */  sw         $s1, 0x34($sp)
/* DF5F0 80129230 AFB00030 */  sw         $s0, 0x30($sp)
/* DF5F4 80129234 0C002723 */  jal        func_80009C8C
/* DF5F8 80129238 AFA60060 */   sw        $a2, 0x60($sp)
/* DF5FC 8012923C 1040010B */  beqz       $v0, .Lrace_8012966C
/* DF600 80129240 AEA20034 */   sw        $v0, 0x34($s5)
/* DF604 80129244 3C028013 */  lui        $v0, %hi(D_race_801324B0)
/* DF608 80129248 8C4424B0 */  lw         $a0, %lo(D_race_801324B0)($v0)
/* DF60C 8012924C 0C01FB65 */  jal        func_8007ED94
/* DF610 80129250 00000000 */   nop
/* DF614 80129254 8EB00034 */  lw         $s0, 0x34($s5)
/* DF618 80129258 00102040 */  sll        $a0, $s0, 1
/* DF61C 8012925C 00902021 */  addu       $a0, $a0, $s0
/* DF620 80129260 00042080 */  sll        $a0, $a0, 2
/* DF624 80129264 00902021 */  addu       $a0, $a0, $s0
/* DF628 80129268 000420C0 */  sll        $a0, $a0, 3
/* DF62C 8012926C 0C00943C */  jal        func_800250F0
/* DF630 80129270 24840008 */   addiu     $a0, $a0, 0x8
/* DF634 80129274 24420008 */  addiu      $v0, $v0, 0x8
/* DF638 80129278 00409821 */  addu       $s3, $v0, $zero
/* DF63C 8012927C 02609021 */  addu       $s2, $s3, $zero
/* DF640 80129280 2611FFFF */  addiu      $s1, $s0, -0x1
/* DF644 80129284 06200007 */  bltz       $s1, .Lrace_801292A4
/* DF648 80129288 AE70FFF8 */   sw        $s0, -0x8($s3)
/* DF64C 8012928C 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80129290:
/* DF650 80129290 0C04A000 */  jal        func_race_80128000
/* DF654 80129294 02402021 */   addu      $a0, $s2, $zero
/* DF658 80129298 2631FFFF */  addiu      $s1, $s1, -0x1
/* DF65C 8012929C 1630FFFC */  bne        $s1, $s0, .Lrace_80129290
/* DF660 801292A0 26520068 */   addiu     $s2, $s2, 0x68
.Lrace_801292A4:
/* DF664 801292A4 0C01FB72 */  jal        func_8007EDC8
/* DF668 801292A8 AEB30028 */   sw        $s3, 0x28($s5)
/* DF66C 801292AC 8EA20028 */  lw         $v0, 0x28($s5)
/* DF670 801292B0 14400008 */  bnez       $v0, .Lrace_801292D4
/* DF674 801292B4 3C02800D */   lui       $v0, %hi(D_race_800CED08)
/* DF678 801292B8 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DF67C 801292BC 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DF680 801292C0 00002821 */  addu       $a1, $zero, $zero
/* DF684 801292C4 00A03021 */  addu       $a2, $a1, $zero
/* DF688 801292C8 0C011ACF */  jal        func_80046B3C
/* DF68C 801292CC 00A03821 */   addu      $a3, $a1, $zero
/* DF690 801292D0 3C02800D */  lui        $v0, %hi(D_race_800CED08)
.Lrace_801292D4:
/* DF694 801292D4 8EA3005C */  lw         $v1, 0x5C($s5)
/* DF698 801292D8 2445ED08 */  addiu      $a1, $v0, %lo(D_race_800CED08)
/* DF69C 801292DC 8C6200BC */  lw         $v0, 0xBC($v1)
/* DF6A0 801292E0 14400003 */  bnez       $v0, .Lrace_801292F0
/* DF6A4 801292E4 246400BC */   addiu     $a0, $v1, 0xBC
/* DF6A8 801292E8 0804A4BE */  j          .Lrace_801292F8
/* DF6AC 801292EC 00001021 */   addu      $v0, $zero, $zero
.Lrace_801292F0:
/* DF6B0 801292F0 0C016427 */  jal        func_8005909C
/* DF6B4 801292F4 00000000 */   nop
.Lrace_801292F8:
/* DF6B8 801292F8 AEA21968 */  sw         $v0, 0x1968($s5)
/* DF6BC 801292FC 3C02800D */  lui        $v0, %hi(D_race_800CED0C)
/* DF6C0 80129300 8EA3005C */  lw         $v1, 0x5C($s5)
/* DF6C4 80129304 2445ED0C */  addiu      $a1, $v0, %lo(D_race_800CED0C)
/* DF6C8 80129308 8C6200BC */  lw         $v0, 0xBC($v1)
/* DF6CC 8012930C 14400003 */  bnez       $v0, .Lrace_8012931C
/* DF6D0 80129310 246400BC */   addiu     $a0, $v1, 0xBC
/* DF6D4 80129314 0804A4C9 */  j          .Lrace_80129324
/* DF6D8 80129318 00001021 */   addu      $v0, $zero, $zero
.Lrace_8012931C:
/* DF6DC 8012931C 0C016427 */  jal        func_8005909C
/* DF6E0 80129320 00000000 */   nop
.Lrace_80129324:
/* DF6E4 80129324 3C05800D */  lui        $a1, %hi(D_race_800CED14)
/* DF6E8 80129328 24A5ED14 */  addiu      $a1, $a1, %lo(D_race_800CED14)
/* DF6EC 8012932C 8EA40004 */  lw         $a0, 0x4($s5)
/* DF6F0 80129330 0000B021 */  addu       $s6, $zero, $zero
/* DF6F4 80129334 0C016F2D */  jal        func_8005BCB4
/* DF6F8 80129338 AEA2196C */   sw        $v0, 0x196C($s5)
/* DF6FC 8012933C 3C05800D */  lui        $a1, %hi(D_race_800CED1C)
/* DF700 80129340 8EA40004 */  lw         $a0, 0x4($s5)
/* DF704 80129344 24A5ED1C */  addiu      $a1, $a1, %lo(D_race_800CED1C)
/* DF708 80129348 0C016F2D */  jal        func_8005BCB4
/* DF70C 8012934C AEA21978 */   sw        $v0, 0x1978($s5)
/* DF710 80129350 3C05800D */  lui        $a1, %hi(D_race_800CED24)
/* DF714 80129354 8EA40004 */  lw         $a0, 0x4($s5)
/* DF718 80129358 24A5ED24 */  addiu      $a1, $a1, %lo(D_race_800CED24)
/* DF71C 8012935C 0C016F2D */  jal        func_8005BCB4
/* DF720 80129360 AEA2197C */   sw        $v0, 0x197C($s5)
/* DF724 80129364 3C05800D */  lui        $a1, %hi(D_race_800CED2C)
/* DF728 80129368 8EA40004 */  lw         $a0, 0x4($s5)
/* DF72C 8012936C 24A5ED2C */  addiu      $a1, $a1, %lo(D_race_800CED2C)
/* DF730 80129370 0C016F2D */  jal        func_8005BCB4
/* DF734 80129374 AEA21980 */   sw        $v0, 0x1980($s5)
/* DF738 80129378 3C05800D */  lui        $a1, %hi(D_race_800CED34)
/* DF73C 8012937C 8EA40004 */  lw         $a0, 0x4($s5)
/* DF740 80129380 24A5ED34 */  addiu      $a1, $a1, %lo(D_race_800CED34)
/* DF744 80129384 0C016F2D */  jal        func_8005BCB4
/* DF748 80129388 AEA21984 */   sw        $v0, 0x1984($s5)
/* DF74C 8012938C 3C05800D */  lui        $a1, %hi(D_race_800CED3C)
/* DF750 80129390 8EA40004 */  lw         $a0, 0x4($s5)
/* DF754 80129394 24A5ED3C */  addiu      $a1, $a1, %lo(D_race_800CED3C)
/* DF758 80129398 0C016F2D */  jal        func_8005BCB4
/* DF75C 8012939C AEA21988 */   sw        $v0, 0x1988($s5)
/* DF760 801293A0 3C05800D */  lui        $a1, %hi(D_race_800CED44)
/* DF764 801293A4 8EA40004 */  lw         $a0, 0x4($s5)
/* DF768 801293A8 24A5ED44 */  addiu      $a1, $a1, %lo(D_race_800CED44)
/* DF76C 801293AC 0C016F2D */  jal        func_8005BCB4
/* DF770 801293B0 AEA2198C */   sw        $v0, 0x198C($s5)
/* DF774 801293B4 3C05800D */  lui        $a1, %hi(D_race_800CED4C)
/* DF778 801293B8 8EA40004 */  lw         $a0, 0x4($s5)
/* DF77C 801293BC 24A5ED4C */  addiu      $a1, $a1, %lo(D_race_800CED4C)
/* DF780 801293C0 0C016F2D */  jal        func_8005BCB4
/* DF784 801293C4 AEA21990 */   sw        $v0, 0x1990($s5)
/* DF788 801293C8 AEA21994 */  sw         $v0, 0x1994($s5)
/* DF78C 801293CC 26D60001 */  addiu      $s6, $s6, 0x1
.Lrace_801293D0:
/* DF790 801293D0 2EC20008 */  sltiu      $v0, $s6, 0x8
/* DF794 801293D4 1440FFFE */  bnez       $v0, .Lrace_801293D0
/* DF798 801293D8 26D60001 */   addiu     $s6, $s6, 0x1
/* DF79C 801293DC 0000B021 */  addu       $s6, $zero, $zero
/* DF7A0 801293E0 24170003 */  addiu      $s7, $zero, 0x3
/* DF7A4 801293E4 3C02800D */  lui        $v0, %hi(jtbl_race_800CED58)
/* DF7A8 801293E8 245EED58 */  addiu      $fp, $v0, %lo(jtbl_race_800CED58)
/* DF7AC 801293EC 02C09021 */  addu       $s2, $s6, $zero
.Lrace_801293F0:
/* DF7B0 801293F0 8EA20034 */  lw         $v0, 0x34($s5)
/* DF7B4 801293F4 02C2102B */  sltu       $v0, $s6, $v0
/* DF7B8 801293F8 1040008F */  beqz       $v0, .Lrace_80129638
/* DF7BC 801293FC 00000000 */   nop
/* DF7C0 80129400 8E820028 */  lw         $v0, 0x28($s4)
/* DF7C4 80129404 844400A0 */  lh         $a0, 0xA0($v0)
/* DF7C8 80129408 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DF7CC 8012940C 0040F809 */  jalr       $v0
/* DF7D0 80129410 02842021 */   addu      $a0, $s4, $a0
/* DF7D4 80129414 24030027 */  addiu      $v1, $zero, 0x27
/* DF7D8 80129418 10430006 */  beq        $v0, $v1, .Lrace_80129434
/* DF7DC 8012941C 24050013 */   addiu     $a1, $zero, 0x13
/* DF7E0 80129420 8E820028 */  lw         $v0, 0x28($s4)
/* DF7E4 80129424 84440098 */  lh         $a0, 0x98($v0)
/* DF7E8 80129428 8C42009C */  lw         $v0, 0x9C($v0)
/* DF7EC 8012942C 0040F809 */  jalr       $v0
/* DF7F0 80129430 02842021 */   addu      $a0, $s4, $a0
.Lrace_80129434:
/* DF7F4 80129434 8E820028 */  lw         $v0, 0x28($s4)
/* DF7F8 80129438 844400A0 */  lh         $a0, 0xA0($v0)
/* DF7FC 8012943C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DF800 80129440 0040F809 */  jalr       $v0
/* DF804 80129444 02842021 */   addu      $a0, $s4, $a0
/* DF808 80129448 24030005 */  addiu      $v1, $zero, 0x5
/* DF80C 8012944C 10430006 */  beq        $v0, $v1, .Lrace_80129468
/* DF810 80129450 00602821 */   addu      $a1, $v1, $zero
/* DF814 80129454 8E820028 */  lw         $v0, 0x28($s4)
/* DF818 80129458 84440098 */  lh         $a0, 0x98($v0)
/* DF81C 8012945C 8C42009C */  lw         $v0, 0x9C($v0)
/* DF820 80129460 0040F809 */  jalr       $v0
/* DF824 80129464 02842021 */   addu      $a0, $s4, $a0
.Lrace_80129468:
/* DF828 80129468 2413FFFF */  addiu      $s3, $zero, -0x1
/* DF82C 8012946C AFA00018 */  sw         $zero, 0x18($sp)
/* DF830 80129470 AFA0001C */  sw         $zero, 0x1C($sp)
/* DF834 80129474 AFA00020 */  sw         $zero, 0x20($sp)
glabel Lrace_80129478
/* DF838 80129478 AFB70028 */  sw         $s7, 0x28($sp)
.Lrace_8012947C:
/* DF83C 8012947C 8E820028 */  lw         $v0, 0x28($s4)
/* DF840 80129480 844400A0 */  lh         $a0, 0xA0($v0)
/* DF844 80129484 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DF848 80129488 0040F809 */  jalr       $v0
/* DF84C 8012948C 02842021 */   addu      $a0, $s4, $a0
/* DF850 80129490 00401821 */  addu       $v1, $v0, $zero
/* DF854 80129494 24020006 */  addiu      $v0, $zero, 0x6
/* DF858 80129498 10620030 */  beq        $v1, $v0, .Lrace_8012955C
/* DF85C 8012949C 2463FFD8 */   addiu     $v1, $v1, -0x28
/* DF860 801294A0 2C62000A */  sltiu      $v0, $v1, 0xA
/* DF864 801294A4 10400025 */  beqz       $v0, Lrace_8012953C
/* DF868 801294A8 00031080 */   sll       $v0, $v1, 2
/* DF86C 801294AC 005E1021 */  addu       $v0, $v0, $fp
/* DF870 801294B0 8C420000 */  lw         $v0, 0x0($v0)
/* DF874 801294B4 00400008 */  jr         $v0
/* DF878 801294B8 00000000 */   nop
glabel Lrace_801294BC
/* DF87C 801294BC 0C0025F8 */  jal        func_800097E0
/* DF880 801294C0 02802021 */   addu      $a0, $s4, $zero
/* DF884 801294C4 02802021 */  addu       $a0, $s4, $zero
/* DF888 801294C8 0C0025F8 */  jal        func_800097E0
/* DF88C 801294CC E7A00018 */   swc1      $f0, 0x18($sp)
/* DF890 801294D0 02802021 */  addu       $a0, $s4, $zero
/* DF894 801294D4 0C0025F8 */  jal        func_800097E0
/* DF898 801294D8 E7A0001C */   swc1      $f0, 0x1C($sp)
/* DF89C 801294DC 0804A51F */  j          .Lrace_8012947C
/* DF8A0 801294E0 E7A00020 */   swc1      $f0, 0x20($sp)
glabel Lrace_801294E4
/* DF8A4 801294E4 24020001 */  addiu      $v0, $zero, 0x1
/* DF8A8 801294E8 0804A51F */  j          .Lrace_8012947C
/* DF8AC 801294EC AFA20028 */   sw        $v0, 0x28($sp)
glabel Lrace_801294F0
/* DF8B0 801294F0 24020004 */  addiu      $v0, $zero, 0x4
/* DF8B4 801294F4 0804A51F */  j          .Lrace_8012947C
/* DF8B8 801294F8 AFA20028 */   sw        $v0, 0x28($sp)
glabel Lrace_801294FC
/* DF8BC 801294FC 24020002 */  addiu      $v0, $zero, 0x2
/* DF8C0 80129500 0804A51F */  j          .Lrace_8012947C
/* DF8C4 80129504 AFA20028 */   sw        $v0, 0x28($sp)
glabel Lrace_80129508
/* DF8C8 80129508 0C002680 */  jal        func_80009A00
/* DF8CC 8012950C 02802021 */   addu      $a0, $s4, $zero
/* DF8D0 80129510 0804A51F */  j          .Lrace_8012947C
/* DF8D4 80129514 00409821 */   addu      $s3, $v0, $zero
glabel Lrace_80129518
/* DF8D8 80129518 8E820028 */  lw         $v0, 0x28($s4)
/* DF8DC 8012951C 844400A0 */  lh         $a0, 0xA0($v0)
/* DF8E0 80129520 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DF8E4 80129524 0040F809 */  jalr       $v0
/* DF8E8 80129528 02842021 */   addu      $a0, $s4, $a0
glabel Lrace_8012952C
/* DF8EC 8012952C 0C002680 */  jal        func_80009A00
/* DF8F0 80129530 02802021 */   addu      $a0, $s4, $zero
/* DF8F4 80129534 0804A51F */  j          .Lrace_8012947C
/* DF8F8 80129538 00000000 */   nop
glabel Lrace_8012953C
/* DF8FC 8012953C 8E820028 */  lw         $v0, 0x28($s4)
/* DF900 80129540 00002821 */  addu       $a1, $zero, $zero
/* DF904 80129544 84440098 */  lh         $a0, 0x98($v0)
/* DF908 80129548 8C42009C */  lw         $v0, 0x9C($v0)
/* DF90C 8012954C 0040F809 */  jalr       $v0
/* DF910 80129550 02842021 */   addu      $a0, $s4, $a0
/* DF914 80129554 0804A51F */  j          .Lrace_8012947C
/* DF918 80129558 00000000 */   nop
.Lrace_8012955C:
/* DF91C 8012955C 8EA30058 */  lw         $v1, 0x58($s5)
/* DF920 80129560 30620044 */  andi       $v0, $v1, 0x44
/* DF924 80129564 10400003 */  beqz       $v0, .Lrace_80129574
/* DF928 80129568 24020001 */   addiu     $v0, $zero, 0x1
/* DF92C 8012956C 0804A565 */  j          .Lrace_80129594
/* DF930 80129570 AFA20028 */   sw        $v0, 0x28($sp)
.Lrace_80129574:
/* DF934 80129574 30620008 */  andi       $v0, $v1, 0x8
/* DF938 80129578 10400003 */  beqz       $v0, .Lrace_80129588
/* DF93C 8012957C 24020004 */   addiu     $v0, $zero, 0x4
/* DF940 80129580 0804A565 */  j          .Lrace_80129594
/* DF944 80129584 AFA20028 */   sw        $v0, 0x28($sp)
.Lrace_80129588:
/* DF948 80129588 30620010 */  andi       $v0, $v1, 0x10
/* DF94C 8012958C 54400001 */  bnel       $v0, $zero, .Lrace_80129594
/* DF950 80129590 AFB70028 */   sw        $s7, 0x28($sp)
.Lrace_80129594:
/* DF954 80129594 8FA80060 */  lw         $t0, 0x60($sp)
/* DF958 80129598 11000004 */  beqz       $t0, .Lrace_801295AC
/* DF95C 8012959C 02A02021 */   addu      $a0, $s5, $zero
/* DF960 801295A0 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* DF964 801295A4 46000007 */  neg.s      $f0, $f0
/* DF968 801295A8 E7A0001C */  swc1       $f0, 0x1C($sp)
.Lrace_801295AC:
/* DF96C 801295AC 27B00028 */  addiu      $s0, $sp, 0x28
/* DF970 801295B0 0C04B52A */  jal        func_race_8012D4A8
/* DF974 801295B4 02002821 */   addu      $a1, $s0, $zero
/* DF978 801295B8 02A02021 */  addu       $a0, $s5, $zero
/* DF97C 801295BC 02002821 */  addu       $a1, $s0, $zero
/* DF980 801295C0 0C04B549 */  jal        func_race_8012D524
/* DF984 801295C4 00408821 */   addu      $s1, $v0, $zero
/* DF988 801295C8 02A02821 */  addu       $a1, $s5, $zero
/* DF98C 801295CC 8EA40028 */  lw         $a0, 0x28($s5)
/* DF990 801295D0 8EA31968 */  lw         $v1, 0x1968($s5)
/* DF994 801295D4 27A70018 */  addiu      $a3, $sp, 0x18
/* DF998 801295D8 AFA30010 */  sw         $v1, 0x10($sp)
/* DF99C 801295DC 8EA3196C */  lw         $v1, 0x196C($s5)
/* DF9A0 801295E0 00408021 */  addu       $s0, $v0, $zero
/* DF9A4 801295E4 AFA30014 */  sw         $v1, 0x14($sp)
/* DF9A8 801295E8 8EA6003C */  lw         $a2, 0x3C($s5)
/* DF9AC 801295EC 0C048B28 */  jal        func_race_80122CA0
/* DF9B0 801295F0 00922021 */   addu      $a0, $a0, $s2
/* DF9B4 801295F4 02202821 */  addu       $a1, $s1, $zero
/* DF9B8 801295F8 8EA40028 */  lw         $a0, 0x28($s5)
/* DF9BC 801295FC 02003021 */  addu       $a2, $s0, $zero
/* DF9C0 80129600 0C04A0DE */  jal        func_race_80128378
/* DF9C4 80129604 00922021 */   addu      $a0, $a0, $s2
/* DF9C8 80129608 8EA40028 */  lw         $a0, 0x28($s5)
/* DF9CC 8012960C 8FA50028 */  lw         $a1, 0x28($sp)
/* DF9D0 80129610 0C04A026 */  jal        func_race_80128098
/* DF9D4 80129614 00922021 */   addu      $a0, $a0, $s2
/* DF9D8 80129618 06620005 */  bltzl      $s3, .Lrace_80129630
/* DF9DC 8012961C 26520068 */   addiu     $s2, $s2, 0x68
/* DF9E0 80129620 8EA20028 */  lw         $v0, 0x28($s5)
/* DF9E4 80129624 02421021 */  addu       $v0, $s2, $v0
/* DF9E8 80129628 AC530048 */  sw         $s3, 0x48($v0)
/* DF9EC 8012962C 26520068 */  addiu      $s2, $s2, 0x68
.Lrace_80129630:
/* DF9F0 80129630 0804A4FC */  j          .Lrace_801293F0
/* DF9F4 80129634 26D60001 */   addiu     $s6, $s6, 0x1
.Lrace_80129638:
/* DF9F8 80129638 8E820028 */  lw         $v0, 0x28($s4)
/* DF9FC 8012963C 844400A0 */  lh         $a0, 0xA0($v0)
/* DFA00 80129640 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DFA04 80129644 0040F809 */  jalr       $v0
/* DFA08 80129648 02842021 */   addu      $a0, $s4, $a0
/* DFA0C 8012964C 24030006 */  addiu      $v1, $zero, 0x6
/* DFA10 80129650 10430006 */  beq        $v0, $v1, .Lrace_8012966C
/* DFA14 80129654 00602821 */   addu      $a1, $v1, $zero
/* DFA18 80129658 8E820028 */  lw         $v0, 0x28($s4)
/* DFA1C 8012965C 84440098 */  lh         $a0, 0x98($v0)
/* DFA20 80129660 8C42009C */  lw         $v0, 0x9C($v0)
/* DFA24 80129664 0040F809 */  jalr       $v0
/* DFA28 80129668 02842021 */   addu      $a0, $s4, $a0
.Lrace_8012966C:
/* DFA2C 8012966C 8FBF0054 */  lw         $ra, 0x54($sp)
/* DFA30 80129670 8FBE0050 */  lw         $fp, 0x50($sp)
/* DFA34 80129674 8FB7004C */  lw         $s7, 0x4C($sp)
/* DFA38 80129678 8FB60048 */  lw         $s6, 0x48($sp)
/* DFA3C 8012967C 8FB50044 */  lw         $s5, 0x44($sp)
/* DFA40 80129680 8FB40040 */  lw         $s4, 0x40($sp)
/* DFA44 80129684 8FB3003C */  lw         $s3, 0x3C($sp)
/* DFA48 80129688 8FB20038 */  lw         $s2, 0x38($sp)
/* DFA4C 8012968C 8FB10034 */  lw         $s1, 0x34($sp)
/* DFA50 80129690 8FB00030 */  lw         $s0, 0x30($sp)
/* DFA54 80129694 03E00008 */  jr         $ra
/* DFA58 80129698 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_8012969C
/* DFA5C 8012969C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* DFA60 801296A0 AFB5003C */  sw         $s5, 0x3C($sp)
/* DFA64 801296A4 0080A821 */  addu       $s5, $a0, $zero
/* DFA68 801296A8 AFB30034 */  sw         $s3, 0x34($sp)
/* DFA6C 801296AC 00A09821 */  addu       $s3, $a1, $zero
/* DFA70 801296B0 AFB60040 */  sw         $s6, 0x40($sp)
/* DFA74 801296B4 00C0B021 */  addu       $s6, $a2, $zero
/* DFA78 801296B8 02602021 */  addu       $a0, $s3, $zero
/* DFA7C 801296BC AFBF0044 */  sw         $ra, 0x44($sp)
/* DFA80 801296C0 AFB40038 */  sw         $s4, 0x38($sp)
/* DFA84 801296C4 AFB20030 */  sw         $s2, 0x30($sp)
/* DFA88 801296C8 AFB1002C */  sw         $s1, 0x2C($sp)
/* DFA8C 801296CC 0C002723 */  jal        func_80009C8C
/* DFA90 801296D0 AFB00028 */   sw        $s0, 0x28($sp)
/* DFA94 801296D4 104000B0 */  beqz       $v0, .Lrace_80129998
/* DFA98 801296D8 AEA20038 */   sw        $v0, 0x38($s5)
/* DFA9C 801296DC 3C028013 */  lui        $v0, %hi(D_race_801324B0)
/* DFAA0 801296E0 8C4424B0 */  lw         $a0, %lo(D_race_801324B0)($v0)
/* DFAA4 801296E4 0C01FB65 */  jal        func_8007ED94
/* DFAA8 801296E8 00000000 */   nop
/* DFAAC 801296EC 8EB00038 */  lw         $s0, 0x38($s5)
/* DFAB0 801296F0 00102040 */  sll        $a0, $s0, 1
/* DFAB4 801296F4 00902021 */  addu       $a0, $a0, $s0
/* DFAB8 801296F8 00042080 */  sll        $a0, $a0, 2
/* DFABC 801296FC 00902021 */  addu       $a0, $a0, $s0
/* DFAC0 80129700 000420C0 */  sll        $a0, $a0, 3
/* DFAC4 80129704 0C00943C */  jal        func_800250F0
/* DFAC8 80129708 24840008 */   addiu     $a0, $a0, 0x8
/* DFACC 8012970C 24420008 */  addiu      $v0, $v0, 0x8
/* DFAD0 80129710 0040A021 */  addu       $s4, $v0, $zero
/* DFAD4 80129714 02809021 */  addu       $s2, $s4, $zero
/* DFAD8 80129718 2611FFFF */  addiu      $s1, $s0, -0x1
/* DFADC 8012971C 06200007 */  bltz       $s1, .Lrace_8012973C
/* DFAE0 80129720 AE90FFF8 */   sw        $s0, -0x8($s4)
/* DFAE4 80129724 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_80129728:
/* DFAE8 80129728 0C0489F4 */  jal        func_race_801227D0
/* DFAEC 8012972C 02402021 */   addu      $a0, $s2, $zero
/* DFAF0 80129730 2631FFFF */  addiu      $s1, $s1, -0x1
/* DFAF4 80129734 1630FFFC */  bne        $s1, $s0, .Lrace_80129728
/* DFAF8 80129738 26520068 */   addiu     $s2, $s2, 0x68
.Lrace_8012973C:
/* DFAFC 8012973C 0C01FB72 */  jal        func_8007EDC8
/* DFB00 80129740 AEB4002C */   sw        $s4, 0x2C($s5)
/* DFB04 80129744 8EA2002C */  lw         $v0, 0x2C($s5)
/* DFB08 80129748 14400008 */  bnez       $v0, .Lrace_8012976C
/* DFB0C 8012974C 3C02800D */   lui       $v0, %hi(D_race_800CED80)
/* DFB10 80129750 3C04800D */  lui        $a0, %hi(D_race_800CECDC)
/* DFB14 80129754 2484ECDC */  addiu      $a0, $a0, %lo(D_race_800CECDC)
/* DFB18 80129758 00002821 */  addu       $a1, $zero, $zero
/* DFB1C 8012975C 00A03021 */  addu       $a2, $a1, $zero
/* DFB20 80129760 0C011ACF */  jal        func_80046B3C
/* DFB24 80129764 00A03821 */   addu      $a3, $a1, $zero
/* DFB28 80129768 3C02800D */  lui        $v0, %hi(D_race_800CED80)
.Lrace_8012976C:
/* DFB2C 8012976C 8EA3005C */  lw         $v1, 0x5C($s5)
/* DFB30 80129770 2445ED80 */  addiu      $a1, $v0, %lo(D_race_800CED80)
/* DFB34 80129774 8C6200BC */  lw         $v0, 0xBC($v1)
/* DFB38 80129778 14400003 */  bnez       $v0, .Lrace_80129788
/* DFB3C 8012977C 246400BC */   addiu     $a0, $v1, 0xBC
/* DFB40 80129780 0804A5E4 */  j          .Lrace_80129790
/* DFB44 80129784 00001021 */   addu      $v0, $zero, $zero
.Lrace_80129788:
/* DFB48 80129788 0C016427 */  jal        func_8005909C
/* DFB4C 8012978C 00000000 */   nop
.Lrace_80129790:
/* DFB50 80129790 AEA21970 */  sw         $v0, 0x1970($s5)
/* DFB54 80129794 3C02800D */  lui        $v0, %hi(D_race_800CED84)
/* DFB58 80129798 8EA3005C */  lw         $v1, 0x5C($s5)
/* DFB5C 8012979C 2445ED84 */  addiu      $a1, $v0, %lo(D_race_800CED84)
/* DFB60 801297A0 8C6200BC */  lw         $v0, 0xBC($v1)
/* DFB64 801297A4 14400003 */  bnez       $v0, .Lrace_801297B4
/* DFB68 801297A8 246400BC */   addiu     $a0, $v1, 0xBC
/* DFB6C 801297AC 0804A5EF */  j          .Lrace_801297BC
/* DFB70 801297B0 00001021 */   addu      $v0, $zero, $zero
.Lrace_801297B4:
/* DFB74 801297B4 0C016427 */  jal        func_8005909C
/* DFB78 801297B8 00000000 */   nop
.Lrace_801297BC:
/* DFB7C 801297BC AEA21974 */  sw         $v0, 0x1974($s5)
/* DFB80 801297C0 00008821 */  addu       $s1, $zero, $zero
/* DFB84 801297C4 24120006 */  addiu      $s2, $zero, 0x6
/* DFB88 801297C8 02208021 */  addu       $s0, $s1, $zero
.Lrace_801297CC:
/* DFB8C 801297CC 8EA20038 */  lw         $v0, 0x38($s5)
/* DFB90 801297D0 0222102B */  sltu       $v0, $s1, $v0
/* DFB94 801297D4 10400063 */  beqz       $v0, .Lrace_80129964
/* DFB98 801297D8 00000000 */   nop
/* DFB9C 801297DC 8E620028 */  lw         $v0, 0x28($s3)
/* DFBA0 801297E0 844400A0 */  lh         $a0, 0xA0($v0)
/* DFBA4 801297E4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DFBA8 801297E8 0040F809 */  jalr       $v0
/* DFBAC 801297EC 02642021 */   addu      $a0, $s3, $a0
/* DFBB0 801297F0 2403002F */  addiu      $v1, $zero, 0x2F
/* DFBB4 801297F4 10430006 */  beq        $v0, $v1, .Lrace_80129810
/* DFBB8 801297F8 24050013 */   addiu     $a1, $zero, 0x13
/* DFBBC 801297FC 8E620028 */  lw         $v0, 0x28($s3)
/* DFBC0 80129800 84440098 */  lh         $a0, 0x98($v0)
/* DFBC4 80129804 8C42009C */  lw         $v0, 0x9C($v0)
/* DFBC8 80129808 0040F809 */  jalr       $v0
/* DFBCC 8012980C 02642021 */   addu      $a0, $s3, $a0
.Lrace_80129810:
/* DFBD0 80129810 8E620028 */  lw         $v0, 0x28($s3)
/* DFBD4 80129814 844400A0 */  lh         $a0, 0xA0($v0)
/* DFBD8 80129818 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DFBDC 8012981C 0040F809 */  jalr       $v0
/* DFBE0 80129820 02642021 */   addu      $a0, $s3, $a0
/* DFBE4 80129824 24030005 */  addiu      $v1, $zero, 0x5
/* DFBE8 80129828 10430006 */  beq        $v0, $v1, .Lrace_80129844
/* DFBEC 8012982C 00602821 */   addu      $a1, $v1, $zero
/* DFBF0 80129830 8E620028 */  lw         $v0, 0x28($s3)
/* DFBF4 80129834 84440098 */  lh         $a0, 0x98($v0)
/* DFBF8 80129838 8C42009C */  lw         $v0, 0x9C($v0)
/* DFBFC 8012983C 0040F809 */  jalr       $v0
/* DFC00 80129840 02642021 */   addu      $a0, $s3, $a0
.Lrace_80129844:
/* DFC04 80129844 AFA00018 */  sw         $zero, 0x18($sp)
/* DFC08 80129848 AFA0001C */  sw         $zero, 0x1C($sp)
/* DFC0C 8012984C AFA00020 */  sw         $zero, 0x20($sp)
.Lrace_80129850:
/* DFC10 80129850 8E620028 */  lw         $v0, 0x28($s3)
/* DFC14 80129854 844400A0 */  lh         $a0, 0xA0($v0)
/* DFC18 80129858 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DFC1C 8012985C 0040F809 */  jalr       $v0
/* DFC20 80129860 02642021 */   addu      $a0, $s3, $a0
/* DFC24 80129864 00401821 */  addu       $v1, $v0, $zero
/* DFC28 80129868 10720029 */  beq        $v1, $s2, .Lrace_80129910
/* DFC2C 8012986C 24020030 */   addiu     $v0, $zero, 0x30
/* DFC30 80129870 10620016 */  beq        $v1, $v0, .Lrace_801298CC
/* DFC34 80129874 2C620031 */   sltiu     $v0, $v1, 0x31
/* DFC38 80129878 10400005 */  beqz       $v0, .Lrace_80129890
/* DFC3C 8012987C 24020028 */   addiu     $v0, $zero, 0x28
/* DFC40 80129880 10620008 */  beq        $v1, $v0, .Lrace_801298A4
/* DFC44 80129884 00000000 */   nop
/* DFC48 80129888 0804A63C */  j          .Lrace_801298F0
/* DFC4C 8012988C 00000000 */   nop
.Lrace_80129890:
/* DFC50 80129890 24020031 */  addiu      $v0, $zero, 0x31
/* DFC54 80129894 10620012 */  beq        $v1, $v0, .Lrace_801298E0
/* DFC58 80129898 00000000 */   nop
/* DFC5C 8012989C 0804A63C */  j          .Lrace_801298F0
/* DFC60 801298A0 00000000 */   nop
.Lrace_801298A4:
/* DFC64 801298A4 0C0025F8 */  jal        func_800097E0
/* DFC68 801298A8 02602021 */   addu      $a0, $s3, $zero
/* DFC6C 801298AC 02602021 */  addu       $a0, $s3, $zero
/* DFC70 801298B0 0C0025F8 */  jal        func_800097E0
/* DFC74 801298B4 E7A00018 */   swc1      $f0, 0x18($sp)
/* DFC78 801298B8 02602021 */  addu       $a0, $s3, $zero
/* DFC7C 801298BC 0C0025F8 */  jal        func_800097E0
/* DFC80 801298C0 E7A0001C */   swc1      $f0, 0x1C($sp)
/* DFC84 801298C4 0804A614 */  j          .Lrace_80129850
/* DFC88 801298C8 E7A00020 */   swc1      $f0, 0x20($sp)
.Lrace_801298CC:
/* DFC8C 801298CC 8E620028 */  lw         $v0, 0x28($s3)
/* DFC90 801298D0 844400A0 */  lh         $a0, 0xA0($v0)
/* DFC94 801298D4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DFC98 801298D8 0040F809 */  jalr       $v0
/* DFC9C 801298DC 02642021 */   addu      $a0, $s3, $a0
.Lrace_801298E0:
/* DFCA0 801298E0 0C002680 */  jal        func_80009A00
/* DFCA4 801298E4 02602021 */   addu      $a0, $s3, $zero
/* DFCA8 801298E8 0804A614 */  j          .Lrace_80129850
/* DFCAC 801298EC 00000000 */   nop
.Lrace_801298F0:
/* DFCB0 801298F0 8E620028 */  lw         $v0, 0x28($s3)
/* DFCB4 801298F4 00002821 */  addu       $a1, $zero, $zero
/* DFCB8 801298F8 84440098 */  lh         $a0, 0x98($v0)
/* DFCBC 801298FC 8C42009C */  lw         $v0, 0x9C($v0)
/* DFCC0 80129900 0040F809 */  jalr       $v0
/* DFCC4 80129904 02642021 */   addu      $a0, $s3, $a0
/* DFCC8 80129908 0804A614 */  j          .Lrace_80129850
/* DFCCC 8012990C 00000000 */   nop
.Lrace_80129910:
/* DFCD0 80129910 12C00004 */  beqz       $s6, .Lrace_80129924
/* DFCD4 80129914 00000000 */   nop
/* DFCD8 80129918 C7A0001C */  lwc1       $f0, 0x1C($sp)
/* DFCDC 8012991C 46000007 */  neg.s      $f0, $f0
/* DFCE0 80129920 E7A0001C */  swc1       $f0, 0x1C($sp)
.Lrace_80129924:
/* DFCE4 80129924 8EA4002C */  lw         $a0, 0x2C($s5)
/* DFCE8 80129928 8EA21970 */  lw         $v0, 0x1970($s5)
/* DFCEC 8012992C 02A02821 */  addu       $a1, $s5, $zero
/* DFCF0 80129930 AFA20010 */  sw         $v0, 0x10($sp)
/* DFCF4 80129934 8EA21974 */  lw         $v0, 0x1974($s5)
/* DFCF8 80129938 27A70018 */  addiu      $a3, $sp, 0x18
/* DFCFC 8012993C AFA20014 */  sw         $v0, 0x14($sp)
/* DFD00 80129940 8EA6003C */  lw         $a2, 0x3C($s5)
/* DFD04 80129944 0C048B28 */  jal        func_race_80122CA0
/* DFD08 80129948 00902021 */   addu      $a0, $a0, $s0
/* DFD0C 8012994C 8EA4002C */  lw         $a0, 0x2C($s5)
/* DFD10 80129950 26310001 */  addiu      $s1, $s1, 0x1
/* DFD14 80129954 0C048A1D */  jal        func_race_80122874
/* DFD18 80129958 00902021 */   addu      $a0, $a0, $s0
/* DFD1C 8012995C 0804A5F3 */  j          .Lrace_801297CC
/* DFD20 80129960 26100068 */   addiu     $s0, $s0, 0x68
.Lrace_80129964:
/* DFD24 80129964 8E620028 */  lw         $v0, 0x28($s3)
/* DFD28 80129968 844400A0 */  lh         $a0, 0xA0($v0)
/* DFD2C 8012996C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* DFD30 80129970 0040F809 */  jalr       $v0
/* DFD34 80129974 02642021 */   addu      $a0, $s3, $a0
/* DFD38 80129978 24030006 */  addiu      $v1, $zero, 0x6
/* DFD3C 8012997C 10430006 */  beq        $v0, $v1, .Lrace_80129998
/* DFD40 80129980 00602821 */   addu      $a1, $v1, $zero
/* DFD44 80129984 8E620028 */  lw         $v0, 0x28($s3)
/* DFD48 80129988 84440098 */  lh         $a0, 0x98($v0)
/* DFD4C 8012998C 8C42009C */  lw         $v0, 0x9C($v0)
/* DFD50 80129990 0040F809 */  jalr       $v0
/* DFD54 80129994 02642021 */   addu      $a0, $s3, $a0
.Lrace_80129998:
/* DFD58 80129998 8FBF0044 */  lw         $ra, 0x44($sp)
/* DFD5C 8012999C 8FB60040 */  lw         $s6, 0x40($sp)
/* DFD60 801299A0 8FB5003C */  lw         $s5, 0x3C($sp)
/* DFD64 801299A4 8FB40038 */  lw         $s4, 0x38($sp)
/* DFD68 801299A8 8FB30034 */  lw         $s3, 0x34($sp)
/* DFD6C 801299AC 8FB20030 */  lw         $s2, 0x30($sp)
/* DFD70 801299B0 8FB1002C */  lw         $s1, 0x2C($sp)
/* DFD74 801299B4 8FB00028 */  lw         $s0, 0x28($sp)
/* DFD78 801299B8 03E00008 */  jr         $ra
/* DFD7C 801299BC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_801299C0
/* DFD80 801299C0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* DFD84 801299C4 AFB1002C */  sw         $s1, 0x2C($sp)
/* DFD88 801299C8 00808821 */  addu       $s1, $a0, $zero
/* DFD8C 801299CC AFB20030 */  sw         $s2, 0x30($sp)
/* DFD90 801299D0 00009021 */  addu       $s2, $zero, $zero
/* DFD94 801299D4 AFBF0038 */  sw         $ra, 0x38($sp)
/* DFD98 801299D8 AFB30034 */  sw         $s3, 0x34($sp)
/* DFD9C 801299DC AFB00028 */  sw         $s0, 0x28($sp)
.Lrace_801299E0:
/* DFDA0 801299E0 92221884 */  lbu        $v0, 0x1884($s1)
/* DFDA4 801299E4 324600FF */  andi       $a2, $s2, 0xFF
/* DFDA8 801299E8 2442FFFF */  addiu      $v0, $v0, -0x1
/* DFDAC 801299EC 00C2102A */  slt        $v0, $a2, $v0
/* DFDB0 801299F0 1040001C */  beqz       $v0, .Lrace_80129A64
/* DFDB4 801299F4 00068140 */   sll       $s0, $a2, 5
/* DFDB8 801299F8 02068021 */  addu       $s0, $s0, $a2
/* DFDBC 801299FC 8E231890 */  lw         $v1, 0x1890($s1)
/* DFDC0 80129A00 00108080 */  sll        $s0, $s0, 2
/* DFDC4 80129A04 02031821 */  addu       $v1, $s0, $v1
/* DFDC8 80129A08 24620084 */  addiu      $v0, $v1, 0x84
/* DFDCC 80129A0C AC62000C */  sw         $v0, 0xC($v1)
/* DFDD0 80129A10 8E220040 */  lw         $v0, 0x40($s1)
/* DFDD4 80129A14 8E241890 */  lw         $a0, 0x1890($s1)
/* DFDD8 80129A18 AFA20010 */  sw         $v0, 0x10($sp)
/* DFDDC 80129A1C 8E220000 */  lw         $v0, 0x0($s1)
/* DFDE0 80129A20 AFA20014 */  sw         $v0, 0x14($sp)
/* DFDE4 80129A24 8E220004 */  lw         $v0, 0x4($s1)
/* DFDE8 80129A28 02202821 */  addu       $a1, $s1, $zero
/* DFDEC 80129A2C AFA20018 */  sw         $v0, 0x18($sp)
/* DFDF0 80129A30 92221889 */  lbu        $v0, 0x1889($s1)
/* DFDF4 80129A34 26520001 */  addiu      $s2, $s2, 0x1
/* DFDF8 80129A38 00461021 */  addu       $v0, $v0, $a2
/* DFDFC 80129A3C AFA2001C */  sw         $v0, 0x1C($sp)
/* DFE00 80129A40 8E260074 */  lw         $a2, 0x74($s1)
/* DFE04 80129A44 8E270068 */  lw         $a3, 0x68($s1)
/* DFE08 80129A48 0C049606 */  jal        func_race_80125818
/* DFE0C 80129A4C 00902021 */   addu      $a0, $a0, $s0
/* DFE10 80129A50 8E221890 */  lw         $v0, 0x1890($s1)
/* DFE14 80129A54 8E23003C */  lw         $v1, 0x3C($s1)
/* DFE18 80129A58 02028021 */  addu       $s0, $s0, $v0
/* DFE1C 80129A5C 0804A678 */  j          .Lrace_801299E0
/* DFE20 80129A60 AE030010 */   sw        $v1, 0x10($s0)
.Lrace_80129A64:
/* DFE24 80129A64 92231884 */  lbu        $v1, 0x1884($s1)
/* DFE28 80129A68 02202821 */  addu       $a1, $s1, $zero
/* DFE2C 80129A6C 00031140 */  sll        $v0, $v1, 5
/* DFE30 80129A70 00431021 */  addu       $v0, $v0, $v1
/* DFE34 80129A74 8E231890 */  lw         $v1, 0x1890($s1)
/* DFE38 80129A78 00021080 */  sll        $v0, $v0, 2
/* DFE3C 80129A7C 00431021 */  addu       $v0, $v0, $v1
/* DFE40 80129A80 AC40FF88 */  sw         $zero, -0x78($v0)
/* DFE44 80129A84 8E220040 */  lw         $v0, 0x40($s1)
/* DFE48 80129A88 92281884 */  lbu        $t0, 0x1884($s1)
/* DFE4C 80129A8C 8E291890 */  lw         $t1, 0x1890($s1)
/* DFE50 80129A90 00082140 */  sll        $a0, $t0, 5
/* DFE54 80129A94 AFA20010 */  sw         $v0, 0x10($sp)
/* DFE58 80129A98 8E220000 */  lw         $v0, 0x0($s1)
/* DFE5C 80129A9C 00882021 */  addu       $a0, $a0, $t0
/* DFE60 80129AA0 AFA20014 */  sw         $v0, 0x14($sp)
/* DFE64 80129AA4 8E220004 */  lw         $v0, 0x4($s1)
/* DFE68 80129AA8 00042080 */  sll        $a0, $a0, 2
/* DFE6C 80129AAC AFA20018 */  sw         $v0, 0x18($sp)
/* DFE70 80129AB0 92221889 */  lbu        $v0, 0x1889($s1)
/* DFE74 80129AB4 92231884 */  lbu        $v1, 0x1884($s1)
/* DFE78 80129AB8 2484FF7C */  addiu      $a0, $a0, -0x84
/* DFE7C 80129ABC 00431021 */  addu       $v0, $v0, $v1
/* DFE80 80129AC0 2442FFFF */  addiu      $v0, $v0, -0x1
/* DFE84 80129AC4 AFA2001C */  sw         $v0, 0x1C($sp)
/* DFE88 80129AC8 8E260074 */  lw         $a2, 0x74($s1)
/* DFE8C 80129ACC 8E270068 */  lw         $a3, 0x68($s1)
/* DFE90 80129AD0 0C049606 */  jal        func_race_80125818
/* DFE94 80129AD4 01242021 */   addu      $a0, $t1, $a0
/* DFE98 80129AD8 92231884 */  lbu        $v1, 0x1884($s1)
/* DFE9C 80129ADC 8E24003C */  lw         $a0, 0x3C($s1)
/* DFEA0 80129AE0 00031140 */  sll        $v0, $v1, 5
/* DFEA4 80129AE4 00431021 */  addu       $v0, $v0, $v1
/* DFEA8 80129AE8 8E231890 */  lw         $v1, 0x1890($s1)
/* DFEAC 80129AEC 00021080 */  sll        $v0, $v0, 2
/* DFEB0 80129AF0 00431021 */  addu       $v0, $v0, $v1
/* DFEB4 80129AF4 AC44FF8C */  sw         $a0, -0x74($v0)
/* DFEB8 80129AF8 8E221890 */  lw         $v0, 0x1890($s1)
/* DFEBC 80129AFC 00009021 */  addu       $s2, $zero, $zero
/* DFEC0 80129B00 AE220078 */  sw         $v0, 0x78($s1)
.Lrace_80129B04:
/* DFEC4 80129B04 92221885 */  lbu        $v0, 0x1885($s1)
/* DFEC8 80129B08 324300FF */  andi       $v1, $s2, 0xFF
/* DFECC 80129B0C 2442FFFF */  addiu      $v0, $v0, -0x1
/* DFED0 80129B10 0062102A */  slt        $v0, $v1, $v0
/* DFED4 80129B14 1040001F */  beqz       $v0, .Lrace_80129B94
/* DFED8 80129B18 00038040 */   sll       $s0, $v1, 1
/* DFEDC 80129B1C 02038021 */  addu       $s0, $s0, $v1
/* DFEE0 80129B20 00108080 */  sll        $s0, $s0, 2
/* DFEE4 80129B24 02038021 */  addu       $s0, $s0, $v1
/* DFEE8 80129B28 00108080 */  sll        $s0, $s0, 2
/* DFEEC 80129B2C 02038021 */  addu       $s0, $s0, $v1
/* DFEF0 80129B30 8E231894 */  lw         $v1, 0x1894($s1)
/* DFEF4 80129B34 001080C0 */  sll        $s0, $s0, 3
/* DFEF8 80129B38 02031821 */  addu       $v1, $s0, $v1
/* DFEFC 80129B3C 246201A8 */  addiu      $v0, $v1, 0x1A8
/* DFF00 80129B40 AC62000C */  sw         $v0, 0xC($v1)
/* DFF04 80129B44 8E220068 */  lw         $v0, 0x68($s1)
/* DFF08 80129B48 8E241894 */  lw         $a0, 0x1894($s1)
/* DFF0C 80129B4C AFA20010 */  sw         $v0, 0x10($sp)
/* DFF10 80129B50 8E220040 */  lw         $v0, 0x40($s1)
/* DFF14 80129B54 AFA20014 */  sw         $v0, 0x14($sp)
/* DFF18 80129B58 8E220004 */  lw         $v0, 0x4($s1)
/* DFF1C 80129B5C 02202821 */  addu       $a1, $s1, $zero
/* DFF20 80129B60 AFA20018 */  sw         $v0, 0x18($sp)
/* DFF24 80129B64 8E220000 */  lw         $v0, 0x0($s1)
/* DFF28 80129B68 26520001 */  addiu      $s2, $s2, 0x1
/* DFF2C 80129B6C AFA2001C */  sw         $v0, 0x1C($sp)
/* DFF30 80129B70 8E260074 */  lw         $a2, 0x74($s1)
/* DFF34 80129B74 8E27006C */  lw         $a3, 0x6C($s1)
/* DFF38 80129B78 0C049E7A */  jal        func_race_801279E8
/* DFF3C 80129B7C 00902021 */   addu      $a0, $a0, $s0
/* DFF40 80129B80 8E221894 */  lw         $v0, 0x1894($s1)
/* DFF44 80129B84 8E23003C */  lw         $v1, 0x3C($s1)
/* DFF48 80129B88 02028021 */  addu       $s0, $s0, $v0
/* DFF4C 80129B8C 0804A6C1 */  j          .Lrace_80129B04
/* DFF50 80129B90 AE030010 */   sw        $v1, 0x10($s0)
.Lrace_80129B94:
/* DFF54 80129B94 92231885 */  lbu        $v1, 0x1885($s1)
/* DFF58 80129B98 02202821 */  addu       $a1, $s1, $zero
/* DFF5C 80129B9C 00031040 */  sll        $v0, $v1, 1
/* DFF60 80129BA0 00431021 */  addu       $v0, $v0, $v1
/* DFF64 80129BA4 00021080 */  sll        $v0, $v0, 2
/* DFF68 80129BA8 00431021 */  addu       $v0, $v0, $v1
/* DFF6C 80129BAC 00021080 */  sll        $v0, $v0, 2
/* DFF70 80129BB0 00431021 */  addu       $v0, $v0, $v1
/* DFF74 80129BB4 8E231894 */  lw         $v1, 0x1894($s1)
/* DFF78 80129BB8 000210C0 */  sll        $v0, $v0, 3
/* DFF7C 80129BBC 00431021 */  addu       $v0, $v0, $v1
/* DFF80 80129BC0 AC40FE64 */  sw         $zero, -0x19C($v0)
/* DFF84 80129BC4 8E220068 */  lw         $v0, 0x68($s1)
/* DFF88 80129BC8 92231885 */  lbu        $v1, 0x1885($s1)
/* DFF8C 80129BCC 8E281894 */  lw         $t0, 0x1894($s1)
/* DFF90 80129BD0 00032040 */  sll        $a0, $v1, 1
/* DFF94 80129BD4 00832021 */  addu       $a0, $a0, $v1
/* DFF98 80129BD8 00042080 */  sll        $a0, $a0, 2
/* DFF9C 80129BDC 00832021 */  addu       $a0, $a0, $v1
/* DFFA0 80129BE0 00042080 */  sll        $a0, $a0, 2
/* DFFA4 80129BE4 AFA20010 */  sw         $v0, 0x10($sp)
/* DFFA8 80129BE8 8E220040 */  lw         $v0, 0x40($s1)
/* DFFAC 80129BEC 00832021 */  addu       $a0, $a0, $v1
/* DFFB0 80129BF0 AFA20014 */  sw         $v0, 0x14($sp)
/* DFFB4 80129BF4 8E220004 */  lw         $v0, 0x4($s1)
/* DFFB8 80129BF8 000420C0 */  sll        $a0, $a0, 3
/* DFFBC 80129BFC AFA20018 */  sw         $v0, 0x18($sp)
/* DFFC0 80129C00 8E220000 */  lw         $v0, 0x0($s1)
/* DFFC4 80129C04 2484FE58 */  addiu      $a0, $a0, -0x1A8
/* DFFC8 80129C08 AFA2001C */  sw         $v0, 0x1C($sp)
/* DFFCC 80129C0C 8E260074 */  lw         $a2, 0x74($s1)
/* DFFD0 80129C10 8E27006C */  lw         $a3, 0x6C($s1)
/* DFFD4 80129C14 0C049E7A */  jal        func_race_801279E8
/* DFFD8 80129C18 01042021 */   addu      $a0, $t0, $a0
/* DFFDC 80129C1C 00009021 */  addu       $s2, $zero, $zero
/* DFFE0 80129C20 92231885 */  lbu        $v1, 0x1885($s1)
/* DFFE4 80129C24 8E24003C */  lw         $a0, 0x3C($s1)
/* DFFE8 80129C28 00031040 */  sll        $v0, $v1, 1
/* DFFEC 80129C2C 00431021 */  addu       $v0, $v0, $v1
/* DFFF0 80129C30 00021080 */  sll        $v0, $v0, 2
/* DFFF4 80129C34 00431021 */  addu       $v0, $v0, $v1
/* DFFF8 80129C38 00021080 */  sll        $v0, $v0, 2
/* DFFFC 80129C3C 00431021 */  addu       $v0, $v0, $v1
/* E0000 80129C40 8E231894 */  lw         $v1, 0x1894($s1)
/* E0004 80129C44 000210C0 */  sll        $v0, $v0, 3
/* E0008 80129C48 00431021 */  addu       $v0, $v0, $v1
/* E000C 80129C4C AC44FE68 */  sw         $a0, -0x198($v0)
/* E0010 80129C50 8E221894 */  lw         $v0, 0x1894($s1)
/* E0014 80129C54 3C13800D */  lui        $s3, %hi(D_race_800CED8C)
/* E0018 80129C58 AE22007C */  sw         $v0, 0x7C($s1)
.Lrace_80129C5C:
/* E001C 80129C5C 92221886 */  lbu        $v0, 0x1886($s1)
/* E0020 80129C60 324300FF */  andi       $v1, $s2, 0xFF
/* E0024 80129C64 2442FFFF */  addiu      $v0, $v0, -0x1
/* E0028 80129C68 0062102A */  slt        $v0, $v1, $v0
/* E002C 80129C6C 10400028 */  beqz       $v0, .Lrace_80129D10
/* E0030 80129C70 00031040 */   sll       $v0, $v1, 1
/* E0034 80129C74 00431021 */  addu       $v0, $v0, $v1
/* E0038 80129C78 00021140 */  sll        $v0, $v0, 5
/* E003C 80129C7C 00431023 */  subu       $v0, $v0, $v1
/* E0040 80129C80 8E231898 */  lw         $v1, 0x1898($s1)
/* E0044 80129C84 00021080 */  sll        $v0, $v0, 2
/* E0048 80129C88 00431021 */  addu       $v0, $v0, $v1
/* E004C 80129C8C 2443017C */  addiu      $v1, $v0, 0x17C
/* E0050 80129C90 AC43000C */  sw         $v1, 0xC($v0)
/* E0054 80129C94 8E22005C */  lw         $v0, 0x5C($s1)
/* E0058 80129C98 2665ED8C */  addiu      $a1, $s3, %lo(D_race_800CED8C)
/* E005C 80129C9C 8C4300B0 */  lw         $v1, 0xB0($v0)
/* E0060 80129CA0 14600003 */  bnez       $v1, .Lrace_80129CB0
/* E0064 80129CA4 244400B0 */   addiu     $a0, $v0, 0xB0
/* E0068 80129CA8 0804A72F */  j          .Lrace_80129CBC
/* E006C 80129CAC 00002821 */   addu      $a1, $zero, $zero
.Lrace_80129CB0:
/* E0070 80129CB0 0C016427 */  jal        func_8005909C
/* E0074 80129CB4 00000000 */   nop
/* E0078 80129CB8 00402821 */  addu       $a1, $v0, $zero
.Lrace_80129CBC:
/* E007C 80129CBC 02203821 */  addu       $a3, $s1, $zero
/* E0080 80129CC0 324300FF */  andi       $v1, $s2, 0xFF
/* E0084 80129CC4 26520001 */  addiu      $s2, $s2, 0x1
/* E0088 80129CC8 00038040 */  sll        $s0, $v1, 1
/* E008C 80129CCC 02038021 */  addu       $s0, $s0, $v1
/* E0090 80129CD0 00108140 */  sll        $s0, $s0, 5
/* E0094 80129CD4 02038023 */  subu       $s0, $s0, $v1
/* E0098 80129CD8 8E241898 */  lw         $a0, 0x1898($s1)
/* E009C 80129CDC 8E220040 */  lw         $v0, 0x40($s1)
/* E00A0 80129CE0 00108080 */  sll        $s0, $s0, 2
/* E00A4 80129CE4 AFA50014 */  sw         $a1, 0x14($sp)
/* E00A8 80129CE8 AFA20010 */  sw         $v0, 0x10($sp)
/* E00AC 80129CEC 8E250074 */  lw         $a1, 0x74($s1)
/* E00B0 80129CF0 8E260068 */  lw         $a2, 0x68($s1)
/* E00B4 80129CF4 0C0487CF */  jal        func_race_80121F3C
/* E00B8 80129CF8 00902021 */   addu      $a0, $a0, $s0
/* E00BC 80129CFC 8E221898 */  lw         $v0, 0x1898($s1)
/* E00C0 80129D00 8E23003C */  lw         $v1, 0x3C($s1)
/* E00C4 80129D04 02028021 */  addu       $s0, $s0, $v0
/* E00C8 80129D08 0804A717 */  j          .Lrace_80129C5C
/* E00CC 80129D0C AE030010 */   sw        $v1, 0x10($s0)
.Lrace_80129D10:
/* E00D0 80129D10 92231886 */  lbu        $v1, 0x1886($s1)
/* E00D4 80129D14 00031040 */  sll        $v0, $v1, 1
/* E00D8 80129D18 00431021 */  addu       $v0, $v0, $v1
/* E00DC 80129D1C 00021140 */  sll        $v0, $v0, 5
/* E00E0 80129D20 00431023 */  subu       $v0, $v0, $v1
/* E00E4 80129D24 8E231898 */  lw         $v1, 0x1898($s1)
/* E00E8 80129D28 00021080 */  sll        $v0, $v0, 2
/* E00EC 80129D2C 00431021 */  addu       $v0, $v0, $v1
/* E00F0 80129D30 AC40FE90 */  sw         $zero, -0x170($v0)
/* E00F4 80129D34 3C02800D */  lui        $v0, %hi(D_race_800CED8C)
/* E00F8 80129D38 8E23005C */  lw         $v1, 0x5C($s1)
/* E00FC 80129D3C 2445ED8C */  addiu      $a1, $v0, %lo(D_race_800CED8C)
/* E0100 80129D40 8C6200B0 */  lw         $v0, 0xB0($v1)
/* E0104 80129D44 14400003 */  bnez       $v0, .Lrace_80129D54
/* E0108 80129D48 246400B0 */   addiu     $a0, $v1, 0xB0
/* E010C 80129D4C 0804A758 */  j          .Lrace_80129D60
/* E0110 80129D50 00002021 */   addu      $a0, $zero, $zero
.Lrace_80129D54:
/* E0114 80129D54 0C016427 */  jal        func_8005909C
/* E0118 80129D58 00000000 */   nop
/* E011C 80129D5C 00402021 */  addu       $a0, $v0, $zero
.Lrace_80129D60:
/* E0120 80129D60 92221886 */  lbu        $v0, 0x1886($s1)
/* E0124 80129D64 8E281898 */  lw         $t0, 0x1898($s1)
/* E0128 80129D68 8E230040 */  lw         $v1, 0x40($s1)
/* E012C 80129D6C 02203821 */  addu       $a3, $s1, $zero
/* E0130 80129D70 AFA40014 */  sw         $a0, 0x14($sp)
/* E0134 80129D74 00022040 */  sll        $a0, $v0, 1
/* E0138 80129D78 00822021 */  addu       $a0, $a0, $v0
/* E013C 80129D7C 00042140 */  sll        $a0, $a0, 5
/* E0140 80129D80 00822023 */  subu       $a0, $a0, $v0
/* E0144 80129D84 00042080 */  sll        $a0, $a0, 2
/* E0148 80129D88 2484FE84 */  addiu      $a0, $a0, -0x17C
/* E014C 80129D8C AFA30010 */  sw         $v1, 0x10($sp)
/* E0150 80129D90 8E250074 */  lw         $a1, 0x74($s1)
/* E0154 80129D94 8E260068 */  lw         $a2, 0x68($s1)
/* E0158 80129D98 0C0487CF */  jal        func_race_80121F3C
/* E015C 80129D9C 01042021 */   addu      $a0, $t0, $a0
/* E0160 80129DA0 92231886 */  lbu        $v1, 0x1886($s1)
/* E0164 80129DA4 8E24003C */  lw         $a0, 0x3C($s1)
/* E0168 80129DA8 00031040 */  sll        $v0, $v1, 1
/* E016C 80129DAC 00431021 */  addu       $v0, $v0, $v1
/* E0170 80129DB0 00021140 */  sll        $v0, $v0, 5
/* E0174 80129DB4 00431023 */  subu       $v0, $v0, $v1
/* E0178 80129DB8 8E231898 */  lw         $v1, 0x1898($s1)
/* E017C 80129DBC 00021080 */  sll        $v0, $v0, 2
/* E0180 80129DC0 00431021 */  addu       $v0, $v0, $v1
/* E0184 80129DC4 AC44FE94 */  sw         $a0, -0x16C($v0)
/* E0188 80129DC8 8E221898 */  lw         $v0, 0x1898($s1)
/* E018C 80129DCC 00009021 */  addu       $s2, $zero, $zero
/* E0190 80129DD0 AE220080 */  sw         $v0, 0x80($s1)
.Lrace_80129DD4:
/* E0194 80129DD4 92221887 */  lbu        $v0, 0x1887($s1)
/* E0198 80129DD8 324300FF */  andi       $v1, $s2, 0xFF
/* E019C 80129DDC 2442FFFF */  addiu      $v0, $v0, -0x1
/* E01A0 80129DE0 0062102A */  slt        $v0, $v1, $v0
/* E01A4 80129DE4 10400015 */  beqz       $v0, .Lrace_80129E3C
/* E01A8 80129DE8 02203821 */   addu      $a3, $s1, $zero
/* E01AC 80129DEC 26520001 */  addiu      $s2, $s2, 0x1
/* E01B0 80129DF0 00038040 */  sll        $s0, $v1, 1
/* E01B4 80129DF4 02038021 */  addu       $s0, $s0, $v1
/* E01B8 80129DF8 00108080 */  sll        $s0, $s0, 2
/* E01BC 80129DFC 02038021 */  addu       $s0, $s0, $v1
/* E01C0 80129E00 8E23189C */  lw         $v1, 0x189C($s1)
/* E01C4 80129E04 001080C0 */  sll        $s0, $s0, 3
/* E01C8 80129E08 02031821 */  addu       $v1, $s0, $v1
/* E01CC 80129E0C 24620068 */  addiu      $v0, $v1, 0x68
/* E01D0 80129E10 AC62000C */  sw         $v0, 0xC($v1)
/* E01D4 80129E14 8E250074 */  lw         $a1, 0x74($s1)
/* E01D8 80129E18 8E24189C */  lw         $a0, 0x189C($s1)
/* E01DC 80129E1C 8E260068 */  lw         $a2, 0x68($s1)
/* E01E0 80129E20 0C04848A */  jal        func_race_80121228
/* E01E4 80129E24 00902021 */   addu      $a0, $a0, $s0
/* E01E8 80129E28 8E22189C */  lw         $v0, 0x189C($s1)
/* E01EC 80129E2C 8E23003C */  lw         $v1, 0x3C($s1)
/* E01F0 80129E30 02028021 */  addu       $s0, $s0, $v0
/* E01F4 80129E34 0804A775 */  j          .Lrace_80129DD4
/* E01F8 80129E38 AE030010 */   sw        $v1, 0x10($s0)
.Lrace_80129E3C:
/* E01FC 80129E3C 92231887 */  lbu        $v1, 0x1887($s1)
/* E0200 80129E40 00031040 */  sll        $v0, $v1, 1
/* E0204 80129E44 00431021 */  addu       $v0, $v0, $v1
/* E0208 80129E48 00021080 */  sll        $v0, $v0, 2
/* E020C 80129E4C 00431021 */  addu       $v0, $v0, $v1
/* E0210 80129E50 8E23189C */  lw         $v1, 0x189C($s1)
/* E0214 80129E54 000210C0 */  sll        $v0, $v0, 3
/* E0218 80129E58 00431021 */  addu       $v0, $v0, $v1
/* E021C 80129E5C AC40FFA4 */  sw         $zero, -0x5C($v0)
/* E0220 80129E60 8E250074 */  lw         $a1, 0x74($s1)
/* E0224 80129E64 92221887 */  lbu        $v0, 0x1887($s1)
/* E0228 80129E68 8E260068 */  lw         $a2, 0x68($s1)
/* E022C 80129E6C 00022040 */  sll        $a0, $v0, 1
/* E0230 80129E70 00822021 */  addu       $a0, $a0, $v0
/* E0234 80129E74 00042080 */  sll        $a0, $a0, 2
/* E0238 80129E78 00822021 */  addu       $a0, $a0, $v0
/* E023C 80129E7C 000420C0 */  sll        $a0, $a0, 3
/* E0240 80129E80 8E22189C */  lw         $v0, 0x189C($s1)
/* E0244 80129E84 2484FF98 */  addiu      $a0, $a0, -0x68
/* E0248 80129E88 0C04848A */  jal        func_race_80121228
/* E024C 80129E8C 00442021 */   addu      $a0, $v0, $a0
/* E0250 80129E90 92231887 */  lbu        $v1, 0x1887($s1)
/* E0254 80129E94 8E24003C */  lw         $a0, 0x3C($s1)
/* E0258 80129E98 00031040 */  sll        $v0, $v1, 1
/* E025C 80129E9C 00431021 */  addu       $v0, $v0, $v1
/* E0260 80129EA0 00021080 */  sll        $v0, $v0, 2
/* E0264 80129EA4 00431021 */  addu       $v0, $v0, $v1
/* E0268 80129EA8 8E23189C */  lw         $v1, 0x189C($s1)
/* E026C 80129EAC 000210C0 */  sll        $v0, $v0, 3
/* E0270 80129EB0 00431021 */  addu       $v0, $v0, $v1
/* E0274 80129EB4 AC44FFA8 */  sw         $a0, -0x58($v0)
/* E0278 80129EB8 8E22189C */  lw         $v0, 0x189C($s1)
/* E027C 80129EBC 00009021 */  addu       $s2, $zero, $zero
/* E0280 80129EC0 AE220084 */  sw         $v0, 0x84($s1)
.Lrace_80129EC4:
/* E0284 80129EC4 92221888 */  lbu        $v0, 0x1888($s1)
/* E0288 80129EC8 324300FF */  andi       $v1, $s2, 0xFF
/* E028C 80129ECC 2442FFFF */  addiu      $v0, $v0, -0x1
/* E0290 80129ED0 0062102A */  slt        $v0, $v1, $v0
/* E0294 80129ED4 10400014 */  beqz       $v0, .Lrace_80129F28
/* E0298 80129ED8 02202821 */   addu      $a1, $s1, $zero
/* E029C 80129EDC 26520001 */  addiu      $s2, $s2, 0x1
/* E02A0 80129EE0 000380C0 */  sll        $s0, $v1, 3
/* E02A4 80129EE4 02038023 */  subu       $s0, $s0, $v1
/* E02A8 80129EE8 00108080 */  sll        $s0, $s0, 2
/* E02AC 80129EEC 02038021 */  addu       $s0, $s0, $v1
/* E02B0 80129EF0 8E2318A0 */  lw         $v1, 0x18A0($s1)
/* E02B4 80129EF4 001080C0 */  sll        $s0, $s0, 3
/* E02B8 80129EF8 02031821 */  addu       $v1, $s0, $v1
/* E02BC 80129EFC 246200E8 */  addiu      $v0, $v1, 0xE8
/* E02C0 80129F00 AC62000C */  sw         $v0, 0xC($v1)
/* E02C4 80129F04 8E2418A0 */  lw         $a0, 0x18A0($s1)
/* E02C8 80129F08 8E260068 */  lw         $a2, 0x68($s1)
/* E02CC 80129F0C 0C048128 */  jal        func_race_801204A0
/* E02D0 80129F10 00902021 */   addu      $a0, $a0, $s0
/* E02D4 80129F14 8E2218A0 */  lw         $v0, 0x18A0($s1)
/* E02D8 80129F18 8E23003C */  lw         $v1, 0x3C($s1)
/* E02DC 80129F1C 02028021 */  addu       $s0, $s0, $v0
/* E02E0 80129F20 0804A7B1 */  j          .Lrace_80129EC4
/* E02E4 80129F24 AE030010 */   sw        $v1, 0x10($s0)
.Lrace_80129F28:
/* E02E8 80129F28 92231888 */  lbu        $v1, 0x1888($s1)
/* E02EC 80129F2C 000310C0 */  sll        $v0, $v1, 3
/* E02F0 80129F30 00431023 */  subu       $v0, $v0, $v1
/* E02F4 80129F34 00021080 */  sll        $v0, $v0, 2
/* E02F8 80129F38 00431021 */  addu       $v0, $v0, $v1
/* E02FC 80129F3C 8E2318A0 */  lw         $v1, 0x18A0($s1)
/* E0300 80129F40 000210C0 */  sll        $v0, $v0, 3
/* E0304 80129F44 00431021 */  addu       $v0, $v0, $v1
/* E0308 80129F48 AC40FF24 */  sw         $zero, -0xDC($v0)
/* E030C 80129F4C 92221888 */  lbu        $v0, 0x1888($s1)
/* E0310 80129F50 8E260068 */  lw         $a2, 0x68($s1)
/* E0314 80129F54 000220C0 */  sll        $a0, $v0, 3
/* E0318 80129F58 00822023 */  subu       $a0, $a0, $v0
/* E031C 80129F5C 00042080 */  sll        $a0, $a0, 2
/* E0320 80129F60 00822021 */  addu       $a0, $a0, $v0
/* E0324 80129F64 000420C0 */  sll        $a0, $a0, 3
/* E0328 80129F68 8E2218A0 */  lw         $v0, 0x18A0($s1)
/* E032C 80129F6C 2484FF18 */  addiu      $a0, $a0, -0xE8
/* E0330 80129F70 0C048128 */  jal        func_race_801204A0
/* E0334 80129F74 00442021 */   addu      $a0, $v0, $a0
/* E0338 80129F78 92231888 */  lbu        $v1, 0x1888($s1)
/* E033C 80129F7C 8E24003C */  lw         $a0, 0x3C($s1)
/* E0340 80129F80 000310C0 */  sll        $v0, $v1, 3
/* E0344 80129F84 00431023 */  subu       $v0, $v0, $v1
/* E0348 80129F88 00021080 */  sll        $v0, $v0, 2
/* E034C 80129F8C 00431021 */  addu       $v0, $v0, $v1
/* E0350 80129F90 8E2318A0 */  lw         $v1, 0x18A0($s1)
/* E0354 80129F94 000210C0 */  sll        $v0, $v0, 3
/* E0358 80129F98 00431021 */  addu       $v0, $v0, $v1
/* E035C 80129F9C AC44FF28 */  sw         $a0, -0xD8($v0)
/* E0360 80129FA0 8E2218A0 */  lw         $v0, 0x18A0($s1)
/* E0364 80129FA4 00009021 */  addu       $s2, $zero, $zero
/* E0368 80129FA8 AE220088 */  sw         $v0, 0x88($s1)
.Lrace_80129FAC:
/* E036C 80129FAC 92221889 */  lbu        $v0, 0x1889($s1)
/* E0370 80129FB0 324700FF */  andi       $a3, $s2, 0xFF
/* E0374 80129FB4 2442FFFF */  addiu      $v0, $v0, -0x1
/* E0378 80129FB8 00E2102A */  slt        $v0, $a3, $v0
/* E037C 80129FBC 10400016 */  beqz       $v0, .Lrace_8012A018
/* E0380 80129FC0 02202821 */   addu      $a1, $s1, $zero
/* E0384 80129FC4 26520001 */  addiu      $s2, $s2, 0x1
/* E0388 80129FC8 00078080 */  sll        $s0, $a3, 2
/* E038C 80129FCC 02078021 */  addu       $s0, $s0, $a3
/* E0390 80129FD0 00108080 */  sll        $s0, $s0, 2
/* E0394 80129FD4 02078021 */  addu       $s0, $s0, $a3
/* E0398 80129FD8 00108080 */  sll        $s0, $s0, 2
/* E039C 80129FDC 02078023 */  subu       $s0, $s0, $a3
/* E03A0 80129FE0 8E2318A4 */  lw         $v1, 0x18A4($s1)
/* E03A4 80129FE4 001080C0 */  sll        $s0, $s0, 3
/* E03A8 80129FE8 02031821 */  addu       $v1, $s0, $v1
/* E03AC 80129FEC 24620298 */  addiu      $v0, $v1, 0x298
/* E03B0 80129FF0 AC62000C */  sw         $v0, 0xC($v1)
/* E03B4 80129FF4 8E2418A4 */  lw         $a0, 0x18A4($s1)
/* E03B8 80129FF8 8E260068 */  lw         $a2, 0x68($s1)
/* E03BC 80129FFC 0C048D06 */  jal        func_race_80123418
/* E03C0 8012A000 00902021 */   addu      $a0, $a0, $s0
/* E03C4 8012A004 8E2218A4 */  lw         $v0, 0x18A4($s1)
/* E03C8 8012A008 8E23003C */  lw         $v1, 0x3C($s1)
/* E03CC 8012A00C 02028021 */  addu       $s0, $s0, $v0
/* E03D0 8012A010 0804A7EB */  j          .Lrace_80129FAC
/* E03D4 8012A014 AE030010 */   sw        $v1, 0x10($s0)
.Lrace_8012A018:
/* E03D8 8012A018 92231889 */  lbu        $v1, 0x1889($s1)
/* E03DC 8012A01C 00031080 */  sll        $v0, $v1, 2
/* E03E0 8012A020 00431021 */  addu       $v0, $v0, $v1
/* E03E4 8012A024 00021080 */  sll        $v0, $v0, 2
/* E03E8 8012A028 00431021 */  addu       $v0, $v0, $v1
/* E03EC 8012A02C 00021080 */  sll        $v0, $v0, 2
/* E03F0 8012A030 00431023 */  subu       $v0, $v0, $v1
/* E03F4 8012A034 8E2318A4 */  lw         $v1, 0x18A4($s1)
/* E03F8 8012A038 000210C0 */  sll        $v0, $v0, 3
/* E03FC 8012A03C 00431021 */  addu       $v0, $v0, $v1
/* E0400 8012A040 AC40FD74 */  sw         $zero, -0x28C($v0)
/* E0404 8012A044 92271889 */  lbu        $a3, 0x1889($s1)
/* E0408 8012A048 8E260068 */  lw         $a2, 0x68($s1)
/* E040C 8012A04C 8E2218A4 */  lw         $v0, 0x18A4($s1)
/* E0410 8012A050 00072080 */  sll        $a0, $a3, 2
/* E0414 8012A054 00872021 */  addu       $a0, $a0, $a3
/* E0418 8012A058 00042080 */  sll        $a0, $a0, 2
/* E041C 8012A05C 00872021 */  addu       $a0, $a0, $a3
/* E0420 8012A060 00042080 */  sll        $a0, $a0, 2
/* E0424 8012A064 00872023 */  subu       $a0, $a0, $a3
/* E0428 8012A068 000420C0 */  sll        $a0, $a0, 3
/* E042C 8012A06C 2484FD68 */  addiu      $a0, $a0, -0x298
/* E0430 8012A070 00442021 */  addu       $a0, $v0, $a0
/* E0434 8012A074 0C048D06 */  jal        func_race_80123418
/* E0438 8012A078 24E7FFFF */   addiu     $a3, $a3, -0x1
/* E043C 8012A07C 92231889 */  lbu        $v1, 0x1889($s1)
/* E0440 8012A080 8E24003C */  lw         $a0, 0x3C($s1)
/* E0444 8012A084 00031080 */  sll        $v0, $v1, 2
/* E0448 8012A088 00431021 */  addu       $v0, $v0, $v1
/* E044C 8012A08C 00021080 */  sll        $v0, $v0, 2
/* E0450 8012A090 00431021 */  addu       $v0, $v0, $v1
/* E0454 8012A094 00021080 */  sll        $v0, $v0, 2
/* E0458 8012A098 00431023 */  subu       $v0, $v0, $v1
/* E045C 8012A09C 8E2318A4 */  lw         $v1, 0x18A4($s1)
/* E0460 8012A0A0 000210C0 */  sll        $v0, $v0, 3
/* E0464 8012A0A4 00431021 */  addu       $v0, $v0, $v1
/* E0468 8012A0A8 AC44FD78 */  sw         $a0, -0x288($v0)
/* E046C 8012A0AC 8E2218A4 */  lw         $v0, 0x18A4($s1)
/* E0470 8012A0B0 00009021 */  addu       $s2, $zero, $zero
/* E0474 8012A0B4 AE22008C */  sw         $v0, 0x8C($s1)
.Lrace_8012A0B8:
/* E0478 8012A0B8 9222188A */  lbu        $v0, 0x188A($s1)
/* E047C 8012A0BC 324300FF */  andi       $v1, $s2, 0xFF
/* E0480 8012A0C0 2442FFFF */  addiu      $v0, $v0, -0x1
/* E0484 8012A0C4 0062102A */  slt        $v0, $v1, $v0
/* E0488 8012A0C8 1040001A */  beqz       $v0, .Lrace_8012A134
/* E048C 8012A0CC 02203021 */   addu      $a2, $s1, $zero
/* E0490 8012A0D0 000380C0 */  sll        $s0, $v1, 3
/* E0494 8012A0D4 02038021 */  addu       $s0, $s0, $v1
/* E0498 8012A0D8 00108080 */  sll        $s0, $s0, 2
/* E049C 8012A0DC 02038021 */  addu       $s0, $s0, $v1
/* E04A0 8012A0E0 00108080 */  sll        $s0, $s0, 2
/* E04A4 8012A0E4 02038021 */  addu       $s0, $s0, $v1
/* E04A8 8012A0E8 8E2318A8 */  lw         $v1, 0x18A8($s1)
/* E04AC 8012A0EC 00108080 */  sll        $s0, $s0, 2
/* E04B0 8012A0F0 02031821 */  addu       $v1, $s0, $v1
/* E04B4 8012A0F4 24620254 */  addiu      $v0, $v1, 0x254
/* E04B8 8012A0F8 AC62000C */  sw         $v0, 0xC($v1)
/* E04BC 8012A0FC 8E2418A8 */  lw         $a0, 0x18A8($s1)
/* E04C0 8012A100 8E250000 */  lw         $a1, 0x0($s1)
/* E04C4 8012A104 0C0490E5 */  jal        func_race_80124394
/* E04C8 8012A108 00902021 */   addu      $a0, $a0, $s0
/* E04CC 8012A10C 8E2218A8 */  lw         $v0, 0x18A8($s1)
/* E04D0 8012A110 8E23003C */  lw         $v1, 0x3C($s1)
/* E04D4 8012A114 02021021 */  addu       $v0, $s0, $v0
/* E04D8 8012A118 AC430010 */  sw         $v1, 0x10($v0)
/* E04DC 8012A11C 8E2418A8 */  lw         $a0, 0x18A8($s1)
/* E04E0 8012A120 26520001 */  addiu      $s2, $s2, 0x1
/* E04E4 8012A124 0C04915A */  jal        func_race_80124568
/* E04E8 8012A128 00902021 */   addu      $a0, $a0, $s0
/* E04EC 8012A12C 0804A82E */  j          .Lrace_8012A0B8
/* E04F0 8012A130 00000000 */   nop
.Lrace_8012A134:
/* E04F4 8012A134 9223188A */  lbu        $v1, 0x188A($s1)
/* E04F8 8012A138 000310C0 */  sll        $v0, $v1, 3
/* E04FC 8012A13C 00431021 */  addu       $v0, $v0, $v1
/* E0500 8012A140 00021080 */  sll        $v0, $v0, 2
/* E0504 8012A144 00431021 */  addu       $v0, $v0, $v1
/* E0508 8012A148 00021080 */  sll        $v0, $v0, 2
/* E050C 8012A14C 00431021 */  addu       $v0, $v0, $v1
/* E0510 8012A150 8E2318A8 */  lw         $v1, 0x18A8($s1)
/* E0514 8012A154 00021080 */  sll        $v0, $v0, 2
/* E0518 8012A158 00431021 */  addu       $v0, $v0, $v1
/* E051C 8012A15C AC40FDB8 */  sw         $zero, -0x248($v0)
/* E0520 8012A160 9222188A */  lbu        $v0, 0x188A($s1)
/* E0524 8012A164 8E250000 */  lw         $a1, 0x0($s1)
/* E0528 8012A168 000220C0 */  sll        $a0, $v0, 3
/* E052C 8012A16C 00822021 */  addu       $a0, $a0, $v0
/* E0530 8012A170 00042080 */  sll        $a0, $a0, 2
/* E0534 8012A174 00822021 */  addu       $a0, $a0, $v0
/* E0538 8012A178 00042080 */  sll        $a0, $a0, 2
/* E053C 8012A17C 00822021 */  addu       $a0, $a0, $v0
/* E0540 8012A180 00042080 */  sll        $a0, $a0, 2
/* E0544 8012A184 8E2218A8 */  lw         $v0, 0x18A8($s1)
/* E0548 8012A188 2484FDAC */  addiu      $a0, $a0, -0x254
/* E054C 8012A18C 0C0490E5 */  jal        func_race_80124394
/* E0550 8012A190 00442021 */   addu      $a0, $v0, $a0
/* E0554 8012A194 9223188A */  lbu        $v1, 0x188A($s1)
/* E0558 8012A198 8E24003C */  lw         $a0, 0x3C($s1)
/* E055C 8012A19C 000310C0 */  sll        $v0, $v1, 3
/* E0560 8012A1A0 00431021 */  addu       $v0, $v0, $v1
/* E0564 8012A1A4 00021080 */  sll        $v0, $v0, 2
/* E0568 8012A1A8 00431021 */  addu       $v0, $v0, $v1
/* E056C 8012A1AC 00021080 */  sll        $v0, $v0, 2
/* E0570 8012A1B0 00431021 */  addu       $v0, $v0, $v1
/* E0574 8012A1B4 8E2318A8 */  lw         $v1, 0x18A8($s1)
/* E0578 8012A1B8 00021080 */  sll        $v0, $v0, 2
/* E057C 8012A1BC 00431021 */  addu       $v0, $v0, $v1
/* E0580 8012A1C0 AC44FDBC */  sw         $a0, -0x244($v0)
/* E0584 8012A1C4 9222188A */  lbu        $v0, 0x188A($s1)
/* E0588 8012A1C8 000220C0 */  sll        $a0, $v0, 3
/* E058C 8012A1CC 00822021 */  addu       $a0, $a0, $v0
/* E0590 8012A1D0 00042080 */  sll        $a0, $a0, 2
/* E0594 8012A1D4 00822021 */  addu       $a0, $a0, $v0
/* E0598 8012A1D8 00042080 */  sll        $a0, $a0, 2
/* E059C 8012A1DC 00822021 */  addu       $a0, $a0, $v0
/* E05A0 8012A1E0 00042080 */  sll        $a0, $a0, 2
/* E05A4 8012A1E4 8E2218A8 */  lw         $v0, 0x18A8($s1)
/* E05A8 8012A1E8 2484FDAC */  addiu      $a0, $a0, -0x254
/* E05AC 8012A1EC 0C04915A */  jal        func_race_80124568
/* E05B0 8012A1F0 00442021 */   addu      $a0, $v0, $a0
/* E05B4 8012A1F4 8E2218A8 */  lw         $v0, 0x18A8($s1)
/* E05B8 8012A1F8 00009021 */  addu       $s2, $zero, $zero
/* E05BC 8012A1FC AE220090 */  sw         $v0, 0x90($s1)
.Lrace_8012A200:
/* E05C0 8012A200 9222188B */  lbu        $v0, 0x188B($s1)
/* E05C4 8012A204 324300FF */  andi       $v1, $s2, 0xFF
/* E05C8 8012A208 2442FFFF */  addiu      $v0, $v0, -0x1
/* E05CC 8012A20C 0062102A */  slt        $v0, $v1, $v0
/* E05D0 8012A210 10400014 */  beqz       $v0, .Lrace_8012A264
/* E05D4 8012A214 02202821 */   addu      $a1, $s1, $zero
/* E05D8 8012A218 26520001 */  addiu      $s2, $s2, 0x1
/* E05DC 8012A21C 00038100 */  sll        $s0, $v1, 4
/* E05E0 8012A220 02038021 */  addu       $s0, $s0, $v1
/* E05E4 8012A224 001080C0 */  sll        $s0, $s0, 3
/* E05E8 8012A228 02038021 */  addu       $s0, $s0, $v1
/* E05EC 8012A22C 8E2318AC */  lw         $v1, 0x18AC($s1)
/* E05F0 8012A230 00108080 */  sll        $s0, $s0, 2
/* E05F4 8012A234 02031821 */  addu       $v1, $s0, $v1
/* E05F8 8012A238 24620224 */  addiu      $v0, $v1, 0x224
/* E05FC 8012A23C AC62000C */  sw         $v0, 0xC($v1)
/* E0600 8012A240 8E2418AC */  lw         $a0, 0x18AC($s1)
/* E0604 8012A244 8E260068 */  lw         $a2, 0x68($s1)
/* E0608 8012A248 0C049AA8 */  jal        func_race_80126AA0
/* E060C 8012A24C 00902021 */   addu      $a0, $a0, $s0
/* E0610 8012A250 8E2218AC */  lw         $v0, 0x18AC($s1)
/* E0614 8012A254 8E23003C */  lw         $v1, 0x3C($s1)
/* E0618 8012A258 02028021 */  addu       $s0, $s0, $v0
/* E061C 8012A25C 0804A880 */  j          .Lrace_8012A200
/* E0620 8012A260 AE030010 */   sw        $v1, 0x10($s0)
.Lrace_8012A264:
/* E0624 8012A264 9223188B */  lbu        $v1, 0x188B($s1)
/* E0628 8012A268 00031100 */  sll        $v0, $v1, 4
/* E062C 8012A26C 00431021 */  addu       $v0, $v0, $v1
/* E0630 8012A270 000210C0 */  sll        $v0, $v0, 3
/* E0634 8012A274 00431021 */  addu       $v0, $v0, $v1
/* E0638 8012A278 8E2318AC */  lw         $v1, 0x18AC($s1)
/* E063C 8012A27C 00021080 */  sll        $v0, $v0, 2
/* E0640 8012A280 00431021 */  addu       $v0, $v0, $v1
/* E0644 8012A284 AC40FDE8 */  sw         $zero, -0x218($v0)
/* E0648 8012A288 9222188B */  lbu        $v0, 0x188B($s1)
/* E064C 8012A28C 8E260068 */  lw         $a2, 0x68($s1)
/* E0650 8012A290 00022100 */  sll        $a0, $v0, 4
/* E0654 8012A294 00822021 */  addu       $a0, $a0, $v0
/* E0658 8012A298 000420C0 */  sll        $a0, $a0, 3
/* E065C 8012A29C 00822021 */  addu       $a0, $a0, $v0
/* E0660 8012A2A0 00042080 */  sll        $a0, $a0, 2
/* E0664 8012A2A4 8E2218AC */  lw         $v0, 0x18AC($s1)
/* E0668 8012A2A8 2484FDDC */  addiu      $a0, $a0, -0x224
/* E066C 8012A2AC 0C049AA8 */  jal        func_race_80126AA0
/* E0670 8012A2B0 00442021 */   addu      $a0, $v0, $a0
/* E0674 8012A2B4 9223188B */  lbu        $v1, 0x188B($s1)
/* E0678 8012A2B8 8E24003C */  lw         $a0, 0x3C($s1)
/* E067C 8012A2BC 00031100 */  sll        $v0, $v1, 4
/* E0680 8012A2C0 00431021 */  addu       $v0, $v0, $v1
/* E0684 8012A2C4 000210C0 */  sll        $v0, $v0, 3
/* E0688 8012A2C8 00431021 */  addu       $v0, $v0, $v1
/* E068C 8012A2CC 8E2318AC */  lw         $v1, 0x18AC($s1)
/* E0690 8012A2D0 00021080 */  sll        $v0, $v0, 2
/* E0694 8012A2D4 00431021 */  addu       $v0, $v0, $v1
/* E0698 8012A2D8 AC44FDEC */  sw         $a0, -0x214($v0)
/* E069C 8012A2DC 8E2218AC */  lw         $v0, 0x18AC($s1)
/* E06A0 8012A2E0 00009021 */  addu       $s2, $zero, $zero
/* E06A4 8012A2E4 AE220094 */  sw         $v0, 0x94($s1)
.Lrace_8012A2E8:
/* E06A8 8012A2E8 9222188C */  lbu        $v0, 0x188C($s1)
/* E06AC 8012A2EC 324300FF */  andi       $v1, $s2, 0xFF
/* E06B0 8012A2F0 2442FFFF */  addiu      $v0, $v0, -0x1
/* E06B4 8012A2F4 0062102A */  slt        $v0, $v1, $v0
/* E06B8 8012A2F8 10400013 */  beqz       $v0, .Lrace_8012A348
/* E06BC 8012A2FC 02202821 */   addu      $a1, $s1, $zero
/* E06C0 8012A300 00038040 */  sll        $s0, $v1, 1
/* E06C4 8012A304 02038021 */  addu       $s0, $s0, $v1
/* E06C8 8012A308 00108080 */  sll        $s0, $s0, 2
/* E06CC 8012A30C 02038023 */  subu       $s0, $s0, $v1
/* E06D0 8012A310 8E2318B0 */  lw         $v1, 0x18B0($s1)
/* E06D4 8012A314 00108080 */  sll        $s0, $s0, 2
/* E06D8 8012A318 02031821 */  addu       $v1, $s0, $v1
/* E06DC 8012A31C 2462002C */  addiu      $v0, $v1, 0x2C
/* E06E0 8012A320 AC62000C */  sw         $v0, 0xC($v1)
/* E06E4 8012A324 8E2418B0 */  lw         $a0, 0x18B0($s1)
/* E06E8 8012A328 26520001 */  addiu      $s2, $s2, 0x1
/* E06EC 8012A32C 0C04B7D4 */  jal        func_race_8012DF50
/* E06F0 8012A330 00902021 */   addu      $a0, $a0, $s0
/* E06F4 8012A334 8E2218B0 */  lw         $v0, 0x18B0($s1)
/* E06F8 8012A338 8E23003C */  lw         $v1, 0x3C($s1)
/* E06FC 8012A33C 02028021 */  addu       $s0, $s0, $v0
/* E0700 8012A340 0804A8BA */  j          .Lrace_8012A2E8
/* E0704 8012A344 AE030010 */   sw        $v1, 0x10($s0)
.Lrace_8012A348:
/* E0708 8012A348 9223188C */  lbu        $v1, 0x188C($s1)
/* E070C 8012A34C 00031040 */  sll        $v0, $v1, 1
/* E0710 8012A350 00431021 */  addu       $v0, $v0, $v1
/* E0714 8012A354 00021080 */  sll        $v0, $v0, 2
/* E0718 8012A358 00431023 */  subu       $v0, $v0, $v1
/* E071C 8012A35C 8E2318B0 */  lw         $v1, 0x18B0($s1)
/* E0720 8012A360 00021080 */  sll        $v0, $v0, 2
/* E0724 8012A364 00431021 */  addu       $v0, $v0, $v1
/* E0728 8012A368 AC40FFE0 */  sw         $zero, -0x20($v0)
/* E072C 8012A36C 9222188C */  lbu        $v0, 0x188C($s1)
/* E0730 8012A370 00022040 */  sll        $a0, $v0, 1
/* E0734 8012A374 00822021 */  addu       $a0, $a0, $v0
/* E0738 8012A378 00042080 */  sll        $a0, $a0, 2
/* E073C 8012A37C 00822023 */  subu       $a0, $a0, $v0
/* E0740 8012A380 00042080 */  sll        $a0, $a0, 2
/* E0744 8012A384 8E2218B0 */  lw         $v0, 0x18B0($s1)
/* E0748 8012A388 2484FFD4 */  addiu      $a0, $a0, -0x2C
/* E074C 8012A38C 0C04B7D4 */  jal        func_race_8012DF50
/* E0750 8012A390 00442021 */   addu      $a0, $v0, $a0
/* E0754 8012A394 9223188C */  lbu        $v1, 0x188C($s1)
/* E0758 8012A398 8E24003C */  lw         $a0, 0x3C($s1)
/* E075C 8012A39C 00031040 */  sll        $v0, $v1, 1
/* E0760 8012A3A0 00431021 */  addu       $v0, $v0, $v1
/* E0764 8012A3A4 00021080 */  sll        $v0, $v0, 2
/* E0768 8012A3A8 00431023 */  subu       $v0, $v0, $v1
/* E076C 8012A3AC 8E2318B0 */  lw         $v1, 0x18B0($s1)
/* E0770 8012A3B0 00021080 */  sll        $v0, $v0, 2
/* E0774 8012A3B4 00431021 */  addu       $v0, $v0, $v1
/* E0778 8012A3B8 AC44FFE4 */  sw         $a0, -0x1C($v0)
/* E077C 8012A3BC 8E2218B0 */  lw         $v0, 0x18B0($s1)
/* E0780 8012A3C0 00009021 */  addu       $s2, $zero, $zero
/* E0784 8012A3C4 AE220098 */  sw         $v0, 0x98($s1)
.Lrace_8012A3C8:
/* E0788 8012A3C8 9222188D */  lbu        $v0, 0x188D($s1)
/* E078C 8012A3CC 324300FF */  andi       $v1, $s2, 0xFF
/* E0790 8012A3D0 2442FFFF */  addiu      $v0, $v0, -0x1
/* E0794 8012A3D4 0062102A */  slt        $v0, $v1, $v0
/* E0798 8012A3D8 10400014 */  beqz       $v0, .Lrace_8012A42C
/* E079C 8012A3DC 02202821 */   addu      $a1, $s1, $zero
/* E07A0 8012A3E0 26520001 */  addiu      $s2, $s2, 0x1
/* E07A4 8012A3E4 00038040 */  sll        $s0, $v1, 1
/* E07A8 8012A3E8 02038021 */  addu       $s0, $s0, $v1
/* E07AC 8012A3EC 00108080 */  sll        $s0, $s0, 2
/* E07B0 8012A3F0 02038021 */  addu       $s0, $s0, $v1
/* E07B4 8012A3F4 8E2318B4 */  lw         $v1, 0x18B4($s1)
/* E07B8 8012A3F8 00108080 */  sll        $s0, $s0, 2
/* E07BC 8012A3FC 02031821 */  addu       $v1, $s0, $v1
/* E07C0 8012A400 24620034 */  addiu      $v0, $v1, 0x34
/* E07C4 8012A404 AC62000C */  sw         $v0, 0xC($v1)
/* E07C8 8012A408 8E2418B4 */  lw         $a0, 0x18B4($s1)
/* E07CC 8012A40C 8E260040 */  lw         $a2, 0x40($s1)
/* E07D0 8012A410 0C04BA45 */  jal        func_race_8012E914
/* E07D4 8012A414 00902021 */   addu      $a0, $a0, $s0
/* E07D8 8012A418 8E2218B4 */  lw         $v0, 0x18B4($s1)
/* E07DC 8012A41C 8E23003C */  lw         $v1, 0x3C($s1)
/* E07E0 8012A420 02028021 */  addu       $s0, $s0, $v0
/* E07E4 8012A424 0804A8F2 */  j          .Lrace_8012A3C8
/* E07E8 8012A428 AE030010 */   sw        $v1, 0x10($s0)
.Lrace_8012A42C:
/* E07EC 8012A42C 9223188D */  lbu        $v1, 0x188D($s1)
/* E07F0 8012A430 00031040 */  sll        $v0, $v1, 1
/* E07F4 8012A434 00431021 */  addu       $v0, $v0, $v1
/* E07F8 8012A438 00021080 */  sll        $v0, $v0, 2
/* E07FC 8012A43C 00431021 */  addu       $v0, $v0, $v1
/* E0800 8012A440 8E2318B4 */  lw         $v1, 0x18B4($s1)
/* E0804 8012A444 00021080 */  sll        $v0, $v0, 2
/* E0808 8012A448 00431021 */  addu       $v0, $v0, $v1
/* E080C 8012A44C AC40FFD8 */  sw         $zero, -0x28($v0)
/* E0810 8012A450 9222188D */  lbu        $v0, 0x188D($s1)
/* E0814 8012A454 8E260040 */  lw         $a2, 0x40($s1)
/* E0818 8012A458 00022040 */  sll        $a0, $v0, 1
/* E081C 8012A45C 00822021 */  addu       $a0, $a0, $v0
/* E0820 8012A460 00042080 */  sll        $a0, $a0, 2
/* E0824 8012A464 00822021 */  addu       $a0, $a0, $v0
/* E0828 8012A468 00042080 */  sll        $a0, $a0, 2
/* E082C 8012A46C 8E2218B4 */  lw         $v0, 0x18B4($s1)
/* E0830 8012A470 2484FFCC */  addiu      $a0, $a0, -0x34
/* E0834 8012A474 0C04BA45 */  jal        func_race_8012E914
/* E0838 8012A478 00442021 */   addu      $a0, $v0, $a0
/* E083C 8012A47C 9223188D */  lbu        $v1, 0x188D($s1)
/* E0840 8012A480 8E24003C */  lw         $a0, 0x3C($s1)
/* E0844 8012A484 00031040 */  sll        $v0, $v1, 1
/* E0848 8012A488 00431021 */  addu       $v0, $v0, $v1
/* E084C 8012A48C 00021080 */  sll        $v0, $v0, 2
/* E0850 8012A490 00431021 */  addu       $v0, $v0, $v1
/* E0854 8012A494 8E2318B4 */  lw         $v1, 0x18B4($s1)
/* E0858 8012A498 00021080 */  sll        $v0, $v0, 2
/* E085C 8012A49C 00431021 */  addu       $v0, $v0, $v1
/* E0860 8012A4A0 AC44FFDC */  sw         $a0, -0x24($v0)
/* E0864 8012A4A4 8E2218B4 */  lw         $v0, 0x18B4($s1)
/* E0868 8012A4A8 AE22009C */  sw         $v0, 0x9C($s1)
/* E086C 8012A4AC AFB10020 */  sw         $s1, 0x20($sp)
/* E0870 8012A4B0 C6200054 */  lwc1       $f0, 0x54($s1)
/* E0874 8012A4B4 00009021 */  addu       $s2, $zero, $zero
/* E0878 8012A4B8 E7A00024 */  swc1       $f0, 0x24($sp)
.Lrace_8012A4BC:
/* E087C 8012A4BC 9222188E */  lbu        $v0, 0x188E($s1)
/* E0880 8012A4C0 324300FF */  andi       $v1, $s2, 0xFF
/* E0884 8012A4C4 2442FFFF */  addiu      $v0, $v0, -0x1
/* E0888 8012A4C8 0062102A */  slt        $v0, $v1, $v0
/* E088C 8012A4CC 10400013 */  beqz       $v0, .Lrace_8012A51C
/* E0890 8012A4D0 27A50020 */   addiu     $a1, $sp, 0x20
/* E0894 8012A4D4 000380C0 */  sll        $s0, $v1, 3
/* E0898 8012A4D8 02038023 */  subu       $s0, $s0, $v1
/* E089C 8012A4DC 001080C0 */  sll        $s0, $s0, 3
/* E08A0 8012A4E0 02038021 */  addu       $s0, $s0, $v1
/* E08A4 8012A4E4 8E2318B8 */  lw         $v1, 0x18B8($s1)
/* E08A8 8012A4E8 00108080 */  sll        $s0, $s0, 2
/* E08AC 8012A4EC 02031821 */  addu       $v1, $s0, $v1
/* E08B0 8012A4F0 246200E4 */  addiu      $v0, $v1, 0xE4
/* E08B4 8012A4F4 AC62000C */  sw         $v0, 0xC($v1)
/* E08B8 8012A4F8 8E2418B8 */  lw         $a0, 0x18B8($s1)
/* E08BC 8012A4FC 26520001 */  addiu      $s2, $s2, 0x1
/* E08C0 8012A500 0C04BE9C */  jal        func_race_8012FA70
/* E08C4 8012A504 00902021 */   addu      $a0, $a0, $s0
/* E08C8 8012A508 8E2218B8 */  lw         $v0, 0x18B8($s1)
/* E08CC 8012A50C 8E23003C */  lw         $v1, 0x3C($s1)
/* E08D0 8012A510 02028021 */  addu       $s0, $s0, $v0
/* E08D4 8012A514 0804A92F */  j          .Lrace_8012A4BC
/* E08D8 8012A518 AE030010 */   sw        $v1, 0x10($s0)
.Lrace_8012A51C:
/* E08DC 8012A51C 9223188E */  lbu        $v1, 0x188E($s1)
/* E08E0 8012A520 000310C0 */  sll        $v0, $v1, 3
/* E08E4 8012A524 00431023 */  subu       $v0, $v0, $v1
/* E08E8 8012A528 000210C0 */  sll        $v0, $v0, 3
/* E08EC 8012A52C 00431021 */  addu       $v0, $v0, $v1
/* E08F0 8012A530 8E2318B8 */  lw         $v1, 0x18B8($s1)
/* E08F4 8012A534 00021080 */  sll        $v0, $v0, 2
/* E08F8 8012A538 00431021 */  addu       $v0, $v0, $v1
/* E08FC 8012A53C AC40FF28 */  sw         $zero, -0xD8($v0)
/* E0900 8012A540 9222188E */  lbu        $v0, 0x188E($s1)
/* E0904 8012A544 000220C0 */  sll        $a0, $v0, 3
/* E0908 8012A548 00822023 */  subu       $a0, $a0, $v0
/* E090C 8012A54C 000420C0 */  sll        $a0, $a0, 3
/* E0910 8012A550 00822021 */  addu       $a0, $a0, $v0
/* E0914 8012A554 00042080 */  sll        $a0, $a0, 2
/* E0918 8012A558 8E2218B8 */  lw         $v0, 0x18B8($s1)
/* E091C 8012A55C 2484FF1C */  addiu      $a0, $a0, -0xE4
/* E0920 8012A560 0C04BE9C */  jal        func_race_8012FA70
/* E0924 8012A564 00442021 */   addu      $a0, $v0, $a0
/* E0928 8012A568 9223188E */  lbu        $v1, 0x188E($s1)
/* E092C 8012A56C 8E24003C */  lw         $a0, 0x3C($s1)
/* E0930 8012A570 000310C0 */  sll        $v0, $v1, 3
/* E0934 8012A574 00431023 */  subu       $v0, $v0, $v1
/* E0938 8012A578 000210C0 */  sll        $v0, $v0, 3
/* E093C 8012A57C 00431021 */  addu       $v0, $v0, $v1
/* E0940 8012A580 8E2318B8 */  lw         $v1, 0x18B8($s1)
/* E0944 8012A584 00021080 */  sll        $v0, $v0, 2
/* E0948 8012A588 00431021 */  addu       $v0, $v0, $v1
/* E094C 8012A58C AC44FF2C */  sw         $a0, -0xD4($v0)
/* E0950 8012A590 8E2218B8 */  lw         $v0, 0x18B8($s1)
/* E0954 8012A594 AE201880 */  sw         $zero, 0x1880($s1)
/* E0958 8012A598 AE2200A0 */  sw         $v0, 0xA0($s1)
/* E095C 8012A59C 8FBF0038 */  lw         $ra, 0x38($sp)
/* E0960 8012A5A0 8FB30034 */  lw         $s3, 0x34($sp)
/* E0964 8012A5A4 8FB20030 */  lw         $s2, 0x30($sp)
/* E0968 8012A5A8 8FB1002C */  lw         $s1, 0x2C($sp)
/* E096C 8012A5AC 8FB00028 */  lw         $s0, 0x28($sp)
/* E0970 8012A5B0 03E00008 */  jr         $ra
/* E0974 8012A5B4 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8012A5B8
/* E0978 8012A5B8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* E097C 8012A5BC AFB1005C */  sw         $s1, 0x5C($sp)
/* E0980 8012A5C0 00808821 */  addu       $s1, $a0, $zero
/* E0984 8012A5C4 AFBF0060 */  sw         $ra, 0x60($sp)
/* E0988 8012A5C8 AFB00058 */  sw         $s0, 0x58($sp)
/* E098C 8012A5CC 8E220000 */  lw         $v0, 0x0($s1)
/* E0990 8012A5D0 AFA20010 */  sw         $v0, 0x10($sp)
/* E0994 8012A5D4 8E22006C */  lw         $v0, 0x6C($s1)
/* E0998 8012A5D8 AFA20014 */  sw         $v0, 0x14($sp)
/* E099C 8012A5DC 3C02800D */  lui        $v0, %hi(D_race_800CED94)
/* E09A0 8012A5E0 8E23005C */  lw         $v1, 0x5C($s1)
/* E09A4 8012A5E4 2445ED94 */  addiu      $a1, $v0, %lo(D_race_800CED94)
/* E09A8 8012A5E8 8C6200B0 */  lw         $v0, 0xB0($v1)
/* E09AC 8012A5EC 14400003 */  bnez       $v0, .Lrace_8012A5FC
/* E09B0 8012A5F0 246400B0 */   addiu     $a0, $v1, 0xB0
/* E09B4 8012A5F4 0804A981 */  j          .Lrace_8012A604
/* E09B8 8012A5F8 00001021 */   addu      $v0, $zero, $zero
.Lrace_8012A5FC:
/* E09BC 8012A5FC 0C016427 */  jal        func_8005909C
/* E09C0 8012A600 00000000 */   nop
.Lrace_8012A604:
/* E09C4 8012A604 3C05800D */  lui        $a1, %hi(D_race_800CED9C)
/* E09C8 8012A608 AFA20018 */  sw         $v0, 0x18($sp)
/* E09CC 8012A60C AFA0001C */  sw         $zero, 0x1C($sp)
/* E09D0 8012A610 AFA00030 */  sw         $zero, 0x30($sp)
/* E09D4 8012A614 8E240004 */  lw         $a0, 0x4($s1)
/* E09D8 8012A618 0C016F2D */  jal        func_8005BCB4
/* E09DC 8012A61C 24A5ED9C */   addiu     $a1, $a1, %lo(D_race_800CED9C)
/* E09E0 8012A620 3C05800D */  lui        $a1, %hi(D_race_800CEDA4)
/* E09E4 8012A624 AFA20020 */  sw         $v0, 0x20($sp)
/* E09E8 8012A628 8E240004 */  lw         $a0, 0x4($s1)
/* E09EC 8012A62C 0C016F2D */  jal        func_8005BCB4
/* E09F0 8012A630 24A5EDA4 */   addiu     $a1, $a1, %lo(D_race_800CEDA4)
/* E09F4 8012A634 00008021 */  addu       $s0, $zero, $zero
/* E09F8 8012A638 AFA20024 */  sw         $v0, 0x24($sp)
/* E09FC 8012A63C 8E230074 */  lw         $v1, 0x74($s1)
/* E0A00 8012A640 3C01800D */  lui        $at, %hi(D_race_800CEDB4)
/* E0A04 8012A644 C422EDB4 */  lwc1       $f2, %lo(D_race_800CEDB4)($at)
/* E0A08 8012A648 3C01800D */  lui        $at, %hi(D_race_800CEDB8)
/* E0A0C 8012A64C C420EDB8 */  lwc1       $f0, %lo(D_race_800CEDB8)($at)
/* E0A10 8012A650 3C01800D */  lui        $at, %hi(D_race_800CEDBC)
/* E0A14 8012A654 C424EDBC */  lwc1       $f4, %lo(D_race_800CEDBC)($at)
/* E0A18 8012A658 240203E8 */  addiu      $v0, $zero, 0x3E8
/* E0A1C 8012A65C AFA2003C */  sw         $v0, 0x3C($sp)
/* E0A20 8012A660 24021388 */  addiu      $v0, $zero, 0x1388
/* E0A24 8012A664 AFA20040 */  sw         $v0, 0x40($sp)
/* E0A28 8012A668 24020002 */  addiu      $v0, $zero, 0x2
/* E0A2C 8012A66C AFB1002C */  sw         $s1, 0x2C($sp)
/* E0A30 8012A670 AFA00038 */  sw         $zero, 0x38($sp)
/* E0A34 8012A674 AFA20054 */  sw         $v0, 0x54($sp)
/* E0A38 8012A678 246300F0 */  addiu      $v1, $v1, 0xF0
/* E0A3C 8012A67C AFA30028 */  sw         $v1, 0x28($sp)
/* E0A40 8012A680 E7A20044 */  swc1       $f2, 0x44($sp)
/* E0A44 8012A684 E7A00048 */  swc1       $f0, 0x48($sp)
/* E0A48 8012A688 E7A0004C */  swc1       $f0, 0x4C($sp)
/* E0A4C 8012A68C E7A40050 */  swc1       $f4, 0x50($sp)
.Lrace_8012A690:
/* E0A50 8012A690 9222194C */  lbu        $v0, 0x194C($s1)
/* E0A54 8012A694 320300FF */  andi       $v1, $s0, 0xFF
/* E0A58 8012A698 2442FFFF */  addiu      $v0, $v0, -0x1
/* E0A5C 8012A69C 0062102A */  slt        $v0, $v1, $v0
/* E0A60 8012A6A0 10400011 */  beqz       $v0, .Lrace_8012A6E8
/* E0A64 8012A6A4 27A50010 */   addiu     $a1, $sp, 0x10
/* E0A68 8012A6A8 00032080 */  sll        $a0, $v1, 2
/* E0A6C 8012A6AC 00832021 */  addu       $a0, $a0, $v1
/* E0A70 8012A6B0 00042100 */  sll        $a0, $a0, 4
/* E0A74 8012A6B4 00832021 */  addu       $a0, $a0, $v1
/* E0A78 8012A6B8 8E231950 */  lw         $v1, 0x1950($s1)
/* E0A7C 8012A6BC 000420C0 */  sll        $a0, $a0, 3
/* E0A80 8012A6C0 00831821 */  addu       $v1, $a0, $v1
/* E0A84 8012A6C4 24620288 */  addiu      $v0, $v1, 0x288
/* E0A88 8012A6C8 AC620284 */  sw         $v0, 0x284($v1)
/* E0A8C 8012A6CC AFA00034 */  sw         $zero, 0x34($sp)
/* E0A90 8012A6D0 8E221950 */  lw         $v0, 0x1950($s1)
/* E0A94 8012A6D4 26100001 */  addiu      $s0, $s0, 0x1
/* E0A98 8012A6D8 0C03CF56 */  jal        func_race_800F3D58
/* E0A9C 8012A6DC 00442021 */   addu      $a0, $v0, $a0
/* E0AA0 8012A6E0 0804A9A4 */  j          .Lrace_8012A690
/* E0AA4 8012A6E4 00000000 */   nop
.Lrace_8012A6E8:
/* E0AA8 8012A6E8 9223194C */  lbu        $v1, 0x194C($s1)
/* E0AAC 8012A6EC 00031080 */  sll        $v0, $v1, 2
/* E0AB0 8012A6F0 00431021 */  addu       $v0, $v0, $v1
/* E0AB4 8012A6F4 00021100 */  sll        $v0, $v0, 4
/* E0AB8 8012A6F8 00431021 */  addu       $v0, $v0, $v1
/* E0ABC 8012A6FC 8E231950 */  lw         $v1, 0x1950($s1)
/* E0AC0 8012A700 000210C0 */  sll        $v0, $v0, 3
/* E0AC4 8012A704 00431021 */  addu       $v0, $v0, $v1
/* E0AC8 8012A708 AC40FFFC */  sw         $zero, -0x4($v0)
/* E0ACC 8012A70C AFA00034 */  sw         $zero, 0x34($sp)
/* E0AD0 8012A710 9222194C */  lbu        $v0, 0x194C($s1)
/* E0AD4 8012A714 00022080 */  sll        $a0, $v0, 2
/* E0AD8 8012A718 00822021 */  addu       $a0, $a0, $v0
/* E0ADC 8012A71C 00042100 */  sll        $a0, $a0, 4
/* E0AE0 8012A720 00822021 */  addu       $a0, $a0, $v0
/* E0AE4 8012A724 000420C0 */  sll        $a0, $a0, 3
/* E0AE8 8012A728 8E221950 */  lw         $v0, 0x1950($s1)
/* E0AEC 8012A72C 2484FD78 */  addiu      $a0, $a0, -0x288
/* E0AF0 8012A730 0C03CF56 */  jal        func_race_800F3D58
/* E0AF4 8012A734 00442021 */   addu      $a0, $v0, $a0
/* E0AF8 8012A738 8E221950 */  lw         $v0, 0x1950($s1)
/* E0AFC 8012A73C 3C01800D */  lui        $at, %hi(D_race_800CEDC0)
/* E0B00 8012A740 C420EDC0 */  lwc1       $f0, %lo(D_race_800CEDC0)($at)
/* E0B04 8012A744 AE20193C */  sw         $zero, 0x193C($s1)
/* E0B08 8012A748 AE221944 */  sw         $v0, 0x1944($s1)
/* E0B0C 8012A74C 24020002 */  addiu      $v0, $zero, 0x2
/* E0B10 8012A750 AFA20054 */  sw         $v0, 0x54($sp)
/* E0B14 8012A754 3C02800D */  lui        $v0, %hi(D_race_800CEDAC)
/* E0B18 8012A758 AFA00038 */  sw         $zero, 0x38($sp)
/* E0B1C 8012A75C E7A00050 */  swc1       $f0, 0x50($sp)
/* E0B20 8012A760 8E23005C */  lw         $v1, 0x5C($s1)
/* E0B24 8012A764 2445EDAC */  addiu      $a1, $v0, %lo(D_race_800CEDAC)
/* E0B28 8012A768 8C6200B0 */  lw         $v0, 0xB0($v1)
/* E0B2C 8012A76C 14400003 */  bnez       $v0, .Lrace_8012A77C
/* E0B30 8012A770 246400B0 */   addiu     $a0, $v1, 0xB0
/* E0B34 8012A774 0804A9E1 */  j          .Lrace_8012A784
/* E0B38 8012A778 00001021 */   addu      $v0, $zero, $zero
.Lrace_8012A77C:
/* E0B3C 8012A77C 0C016427 */  jal        func_8005909C
/* E0B40 8012A780 00000000 */   nop
.Lrace_8012A784:
/* E0B44 8012A784 3C01800D */  lui        $at, %hi(D_race_800CEDC4)
/* E0B48 8012A788 C420EDC4 */  lwc1       $f0, %lo(D_race_800CEDC4)($at)
/* E0B4C 8012A78C 00008021 */  addu       $s0, $zero, $zero
/* E0B50 8012A790 AFA20018 */  sw         $v0, 0x18($sp)
/* E0B54 8012A794 AFA00020 */  sw         $zero, 0x20($sp)
/* E0B58 8012A798 E7A00048 */  swc1       $f0, 0x48($sp)
/* E0B5C 8012A79C E7A0004C */  swc1       $f0, 0x4C($sp)
.Lrace_8012A7A0:
/* E0B60 8012A7A0 9222194D */  lbu        $v0, 0x194D($s1)
/* E0B64 8012A7A4 320300FF */  andi       $v1, $s0, 0xFF
/* E0B68 8012A7A8 2442FFFF */  addiu      $v0, $v0, -0x1
/* E0B6C 8012A7AC 0062102A */  slt        $v0, $v1, $v0
/* E0B70 8012A7B0 10400011 */  beqz       $v0, .Lrace_8012A7F8
/* E0B74 8012A7B4 27A50010 */   addiu     $a1, $sp, 0x10
/* E0B78 8012A7B8 00032080 */  sll        $a0, $v1, 2
/* E0B7C 8012A7BC 00832021 */  addu       $a0, $a0, $v1
/* E0B80 8012A7C0 00042100 */  sll        $a0, $a0, 4
/* E0B84 8012A7C4 00832021 */  addu       $a0, $a0, $v1
/* E0B88 8012A7C8 8E231954 */  lw         $v1, 0x1954($s1)
/* E0B8C 8012A7CC 000420C0 */  sll        $a0, $a0, 3
/* E0B90 8012A7D0 00831821 */  addu       $v1, $a0, $v1
/* E0B94 8012A7D4 24620288 */  addiu      $v0, $v1, 0x288
/* E0B98 8012A7D8 AC620284 */  sw         $v0, 0x284($v1)
/* E0B9C 8012A7DC AFA00034 */  sw         $zero, 0x34($sp)
/* E0BA0 8012A7E0 8E221954 */  lw         $v0, 0x1954($s1)
/* E0BA4 8012A7E4 26100001 */  addiu      $s0, $s0, 0x1
/* E0BA8 8012A7E8 0C03CF56 */  jal        func_race_800F3D58
/* E0BAC 8012A7EC 00442021 */   addu      $a0, $v0, $a0
/* E0BB0 8012A7F0 0804A9E8 */  j          .Lrace_8012A7A0
/* E0BB4 8012A7F4 00000000 */   nop
.Lrace_8012A7F8:
/* E0BB8 8012A7F8 9223194D */  lbu        $v1, 0x194D($s1)
/* E0BBC 8012A7FC 00031080 */  sll        $v0, $v1, 2
/* E0BC0 8012A800 00431021 */  addu       $v0, $v0, $v1
/* E0BC4 8012A804 00021100 */  sll        $v0, $v0, 4
/* E0BC8 8012A808 00431021 */  addu       $v0, $v0, $v1
/* E0BCC 8012A80C 8E231954 */  lw         $v1, 0x1954($s1)
/* E0BD0 8012A810 000210C0 */  sll        $v0, $v0, 3
/* E0BD4 8012A814 00431021 */  addu       $v0, $v0, $v1
/* E0BD8 8012A818 AC40FFFC */  sw         $zero, -0x4($v0)
/* E0BDC 8012A81C AFA00034 */  sw         $zero, 0x34($sp)
/* E0BE0 8012A820 9222194D */  lbu        $v0, 0x194D($s1)
/* E0BE4 8012A824 00022080 */  sll        $a0, $v0, 2
/* E0BE8 8012A828 00822021 */  addu       $a0, $a0, $v0
/* E0BEC 8012A82C 00042100 */  sll        $a0, $a0, 4
/* E0BF0 8012A830 00822021 */  addu       $a0, $a0, $v0
/* E0BF4 8012A834 000420C0 */  sll        $a0, $a0, 3
/* E0BF8 8012A838 8E221954 */  lw         $v0, 0x1954($s1)
/* E0BFC 8012A83C 2484FD78 */  addiu      $a0, $a0, -0x288
/* E0C00 8012A840 0C03CF56 */  jal        func_race_800F3D58
/* E0C04 8012A844 00442021 */   addu      $a0, $v0, $a0
/* E0C08 8012A848 8E221954 */  lw         $v0, 0x1954($s1)
/* E0C0C 8012A84C AE201940 */  sw         $zero, 0x1940($s1)
/* E0C10 8012A850 AE221948 */  sw         $v0, 0x1948($s1)
/* E0C14 8012A854 8FBF0060 */  lw         $ra, 0x60($sp)
/* E0C18 8012A858 8FB1005C */  lw         $s1, 0x5C($sp)
/* E0C1C 8012A85C 8FB00058 */  lw         $s0, 0x58($sp)
/* E0C20 8012A860 03E00008 */  jr         $ra
/* E0C24 8012A864 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_8012A868
/* E0C28 8012A868 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E0C2C 8012A86C AFB3001C */  sw         $s3, 0x1C($sp)
/* E0C30 8012A870 00809821 */  addu       $s3, $a0, $zero
/* E0C34 8012A874 AFBF0020 */  sw         $ra, 0x20($sp)
/* E0C38 8012A878 AFB20018 */  sw         $s2, 0x18($sp)
/* E0C3C 8012A87C AFB10014 */  sw         $s1, 0x14($sp)
/* E0C40 8012A880 AFB00010 */  sw         $s0, 0x10($sp)
/* E0C44 8012A884 8E651964 */  lw         $a1, 0x1964($s3)
/* E0C48 8012A888 10A00005 */  beqz       $a1, .Lrace_8012A8A0
/* E0C4C 8012A88C 00000000 */   nop
/* E0C50 8012A890 8E64003C */  lw         $a0, 0x3C($s3)
/* E0C54 8012A894 0C046564 */  jal        func_race_80119590
/* E0C58 8012A898 00000000 */   nop
/* E0C5C 8012A89C AE601964 */  sw         $zero, 0x1964($s3)
.Lrace_8012A8A0:
/* E0C60 8012A8A0 8E651960 */  lw         $a1, 0x1960($s3)
/* E0C64 8012A8A4 10A00005 */  beqz       $a1, .Lrace_8012A8BC
/* E0C68 8012A8A8 00000000 */   nop
/* E0C6C 8012A8AC 8E64003C */  lw         $a0, 0x3C($s3)
/* E0C70 8012A8B0 0C046564 */  jal        func_race_80119590
/* E0C74 8012A8B4 00000000 */   nop
/* E0C78 8012A8B8 AE601960 */  sw         $zero, 0x1960($s3)
.Lrace_8012A8BC:
/* E0C7C 8012A8BC 8E65195C */  lw         $a1, 0x195C($s3)
/* E0C80 8012A8C0 10A00005 */  beqz       $a1, .Lrace_8012A8D8
/* E0C84 8012A8C4 00000000 */   nop
/* E0C88 8012A8C8 8E64003C */  lw         $a0, 0x3C($s3)
/* E0C8C 8012A8CC 0C046564 */  jal        func_race_80119590
/* E0C90 8012A8D0 00000000 */   nop
/* E0C94 8012A8D4 AE60195C */  sw         $zero, 0x195C($s3)
.Lrace_8012A8D8:
/* E0C98 8012A8D8 8E651958 */  lw         $a1, 0x1958($s3)
/* E0C9C 8012A8DC 10A00005 */  beqz       $a1, .Lrace_8012A8F4
/* E0CA0 8012A8E0 00000000 */   nop
/* E0CA4 8012A8E4 8E64003C */  lw         $a0, 0x3C($s3)
/* E0CA8 8012A8E8 0C046564 */  jal        func_race_80119590
/* E0CAC 8012A8EC 00000000 */   nop
/* E0CB0 8012A8F0 AE601958 */  sw         $zero, 0x1958($s3)
.Lrace_8012A8F4:
/* E0CB4 8012A8F4 0C0153DC */  jal        func_80054F70
/* E0CB8 8012A8F8 26640008 */   addiu     $a0, $s3, 0x8
/* E0CBC 8012A8FC 8E621954 */  lw         $v0, 0x1954($s3)
/* E0CC0 8012A900 10400027 */  beqz       $v0, .Lrace_8012A9A0
/* E0CC4 8012A904 00000000 */   nop
/* E0CC8 8012A908 9262194D */  lbu        $v0, 0x194D($s3)
/* E0CCC 8012A90C 1040000A */  beqz       $v0, .Lrace_8012A938
/* E0CD0 8012A910 00008021 */   addu      $s0, $zero, $zero
/* E0CD4 8012A914 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012A918:
/* E0CD8 8012A918 8E641954 */  lw         $a0, 0x1954($s3)
/* E0CDC 8012A91C 26100001 */  addiu      $s0, $s0, 0x1
/* E0CE0 8012A920 0C03D010 */  jal        func_race_800F4040
/* E0CE4 8012A924 00912021 */   addu      $a0, $a0, $s1
/* E0CE8 8012A928 9262194D */  lbu        $v0, 0x194D($s3)
/* E0CEC 8012A92C 0202102B */  sltu       $v0, $s0, $v0
/* E0CF0 8012A930 1440FFF9 */  bnez       $v0, .Lrace_8012A918
/* E0CF4 8012A934 26310288 */   addiu     $s1, $s1, 0x288
.Lrace_8012A938:
/* E0CF8 8012A938 8E641954 */  lw         $a0, 0x1954($s3)
/* E0CFC 8012A93C 50800018 */  beql       $a0, $zero, .Lrace_8012A9A0
/* E0D00 8012A940 AE601954 */   sw        $zero, 0x1954($s3)
/* E0D04 8012A944 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E0D08 8012A948 00031080 */  sll        $v0, $v1, 2
/* E0D0C 8012A94C 00431021 */  addu       $v0, $v0, $v1
/* E0D10 8012A950 00021100 */  sll        $v0, $v0, 4
/* E0D14 8012A954 00431021 */  addu       $v0, $v0, $v1
/* E0D18 8012A958 000210C0 */  sll        $v0, $v0, 3
/* E0D1C 8012A95C 00828021 */  addu       $s0, $a0, $v0
/* E0D20 8012A960 1090000C */  beq        $a0, $s0, .Lrace_8012A994
/* E0D24 8012A964 00000000 */   nop
/* E0D28 8012A968 2610FD78 */  addiu      $s0, $s0, -0x288
.Lrace_8012A96C:
/* E0D2C 8012A96C 8E020000 */  lw         $v0, 0x0($s0)
/* E0D30 8012A970 24050002 */  addiu      $a1, $zero, 0x2
/* E0D34 8012A974 84440010 */  lh         $a0, 0x10($v0)
/* E0D38 8012A978 8C420014 */  lw         $v0, 0x14($v0)
/* E0D3C 8012A97C 0040F809 */  jalr       $v0
/* E0D40 8012A980 02042021 */   addu      $a0, $s0, $a0
/* E0D44 8012A984 8E621954 */  lw         $v0, 0x1954($s3)
/* E0D48 8012A988 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012A96C
/* E0D4C 8012A98C 2610FD78 */   addiu     $s0, $s0, -0x288
/* E0D50 8012A990 8E641954 */  lw         $a0, 0x1954($s3)
.Lrace_8012A994:
/* E0D54 8012A994 0C009444 */  jal        func_80025110
/* E0D58 8012A998 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E0D5C 8012A99C AE601954 */  sw         $zero, 0x1954($s3)
.Lrace_8012A9A0:
/* E0D60 8012A9A0 8E621950 */  lw         $v0, 0x1950($s3)
/* E0D64 8012A9A4 10400027 */  beqz       $v0, .Lrace_8012AA44
/* E0D68 8012A9A8 00000000 */   nop
/* E0D6C 8012A9AC 9262194C */  lbu        $v0, 0x194C($s3)
/* E0D70 8012A9B0 1040000A */  beqz       $v0, .Lrace_8012A9DC
/* E0D74 8012A9B4 00008021 */   addu      $s0, $zero, $zero
/* E0D78 8012A9B8 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012A9BC:
/* E0D7C 8012A9BC 8E641950 */  lw         $a0, 0x1950($s3)
/* E0D80 8012A9C0 26100001 */  addiu      $s0, $s0, 0x1
/* E0D84 8012A9C4 0C03D010 */  jal        func_race_800F4040
/* E0D88 8012A9C8 00912021 */   addu      $a0, $a0, $s1
/* E0D8C 8012A9CC 9262194C */  lbu        $v0, 0x194C($s3)
/* E0D90 8012A9D0 0202102B */  sltu       $v0, $s0, $v0
/* E0D94 8012A9D4 1440FFF9 */  bnez       $v0, .Lrace_8012A9BC
/* E0D98 8012A9D8 26310288 */   addiu     $s1, $s1, 0x288
.Lrace_8012A9DC:
/* E0D9C 8012A9DC 8E641950 */  lw         $a0, 0x1950($s3)
/* E0DA0 8012A9E0 50800018 */  beql       $a0, $zero, .Lrace_8012AA44
/* E0DA4 8012A9E4 AE601950 */   sw        $zero, 0x1950($s3)
/* E0DA8 8012A9E8 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E0DAC 8012A9EC 00031080 */  sll        $v0, $v1, 2
/* E0DB0 8012A9F0 00431021 */  addu       $v0, $v0, $v1
/* E0DB4 8012A9F4 00021100 */  sll        $v0, $v0, 4
/* E0DB8 8012A9F8 00431021 */  addu       $v0, $v0, $v1
/* E0DBC 8012A9FC 000210C0 */  sll        $v0, $v0, 3
/* E0DC0 8012AA00 00828021 */  addu       $s0, $a0, $v0
/* E0DC4 8012AA04 1090000C */  beq        $a0, $s0, .Lrace_8012AA38
/* E0DC8 8012AA08 00000000 */   nop
/* E0DCC 8012AA0C 2610FD78 */  addiu      $s0, $s0, -0x288
.Lrace_8012AA10:
/* E0DD0 8012AA10 8E020000 */  lw         $v0, 0x0($s0)
/* E0DD4 8012AA14 24050002 */  addiu      $a1, $zero, 0x2
/* E0DD8 8012AA18 84440010 */  lh         $a0, 0x10($v0)
/* E0DDC 8012AA1C 8C420014 */  lw         $v0, 0x14($v0)
/* E0DE0 8012AA20 0040F809 */  jalr       $v0
/* E0DE4 8012AA24 02042021 */   addu      $a0, $s0, $a0
/* E0DE8 8012AA28 8E621950 */  lw         $v0, 0x1950($s3)
/* E0DEC 8012AA2C 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012AA10
/* E0DF0 8012AA30 2610FD78 */   addiu     $s0, $s0, -0x288
/* E0DF4 8012AA34 8E641950 */  lw         $a0, 0x1950($s3)
.Lrace_8012AA38:
/* E0DF8 8012AA38 0C009444 */  jal        func_80025110
/* E0DFC 8012AA3C 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E0E00 8012AA40 AE601950 */  sw         $zero, 0x1950($s3)
.Lrace_8012AA44:
/* E0E04 8012AA44 8E6218B8 */  lw         $v0, 0x18B8($s3)
/* E0E08 8012AA48 10400027 */  beqz       $v0, .Lrace_8012AAE8
/* E0E0C 8012AA4C 00000000 */   nop
/* E0E10 8012AA50 9262188E */  lbu        $v0, 0x188E($s3)
/* E0E14 8012AA54 1040000A */  beqz       $v0, .Lrace_8012AA80
/* E0E18 8012AA58 00008021 */   addu      $s0, $zero, $zero
/* E0E1C 8012AA5C 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012AA60:
/* E0E20 8012AA60 8E6418B8 */  lw         $a0, 0x18B8($s3)
/* E0E24 8012AA64 26100001 */  addiu      $s0, $s0, 0x1
/* E0E28 8012AA68 0C04BEB1 */  jal        func_race_8012FAC4
/* E0E2C 8012AA6C 00912021 */   addu      $a0, $a0, $s1
/* E0E30 8012AA70 9262188E */  lbu        $v0, 0x188E($s3)
/* E0E34 8012AA74 0202102B */  sltu       $v0, $s0, $v0
/* E0E38 8012AA78 1440FFF9 */  bnez       $v0, .Lrace_8012AA60
/* E0E3C 8012AA7C 263100E4 */   addiu     $s1, $s1, 0xE4
.Lrace_8012AA80:
/* E0E40 8012AA80 8E6418B8 */  lw         $a0, 0x18B8($s3)
/* E0E44 8012AA84 50800018 */  beql       $a0, $zero, .Lrace_8012AAE8
/* E0E48 8012AA88 AE6018B8 */   sw        $zero, 0x18B8($s3)
/* E0E4C 8012AA8C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E0E50 8012AA90 000310C0 */  sll        $v0, $v1, 3
/* E0E54 8012AA94 00431023 */  subu       $v0, $v0, $v1
/* E0E58 8012AA98 000210C0 */  sll        $v0, $v0, 3
/* E0E5C 8012AA9C 00431021 */  addu       $v0, $v0, $v1
/* E0E60 8012AAA0 00021080 */  sll        $v0, $v0, 2
/* E0E64 8012AAA4 00828021 */  addu       $s0, $a0, $v0
/* E0E68 8012AAA8 1090000C */  beq        $a0, $s0, .Lrace_8012AADC
/* E0E6C 8012AAAC 00000000 */   nop
/* E0E70 8012AAB0 2610FF1C */  addiu      $s0, $s0, -0xE4
.Lrace_8012AAB4:
/* E0E74 8012AAB4 8E020000 */  lw         $v0, 0x0($s0)
/* E0E78 8012AAB8 24050002 */  addiu      $a1, $zero, 0x2
/* E0E7C 8012AABC 84440010 */  lh         $a0, 0x10($v0)
/* E0E80 8012AAC0 8C420014 */  lw         $v0, 0x14($v0)
/* E0E84 8012AAC4 0040F809 */  jalr       $v0
/* E0E88 8012AAC8 02042021 */   addu      $a0, $s0, $a0
/* E0E8C 8012AACC 8E6218B8 */  lw         $v0, 0x18B8($s3)
/* E0E90 8012AAD0 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012AAB4
/* E0E94 8012AAD4 2610FF1C */   addiu     $s0, $s0, -0xE4
/* E0E98 8012AAD8 8E6418B8 */  lw         $a0, 0x18B8($s3)
.Lrace_8012AADC:
/* E0E9C 8012AADC 0C009444 */  jal        func_80025110
/* E0EA0 8012AAE0 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E0EA4 8012AAE4 AE6018B8 */  sw         $zero, 0x18B8($s3)
.Lrace_8012AAE8:
/* E0EA8 8012AAE8 8E6218B4 */  lw         $v0, 0x18B4($s3)
/* E0EAC 8012AAEC 10400027 */  beqz       $v0, .Lrace_8012AB8C
/* E0EB0 8012AAF0 00000000 */   nop
/* E0EB4 8012AAF4 9262188D */  lbu        $v0, 0x188D($s3)
/* E0EB8 8012AAF8 1040000A */  beqz       $v0, .Lrace_8012AB24
/* E0EBC 8012AAFC 00008021 */   addu      $s0, $zero, $zero
/* E0EC0 8012AB00 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012AB04:
/* E0EC4 8012AB04 8E6418B4 */  lw         $a0, 0x18B4($s3)
/* E0EC8 8012AB08 26100001 */  addiu      $s0, $s0, 0x1
/* E0ECC 8012AB0C 0C04BA5B */  jal        func_race_8012E96C
/* E0ED0 8012AB10 00912021 */   addu      $a0, $a0, $s1
/* E0ED4 8012AB14 9262188D */  lbu        $v0, 0x188D($s3)
/* E0ED8 8012AB18 0202102B */  sltu       $v0, $s0, $v0
/* E0EDC 8012AB1C 1440FFF9 */  bnez       $v0, .Lrace_8012AB04
/* E0EE0 8012AB20 26310034 */   addiu     $s1, $s1, 0x34
.Lrace_8012AB24:
/* E0EE4 8012AB24 8E6418B4 */  lw         $a0, 0x18B4($s3)
/* E0EE8 8012AB28 50800018 */  beql       $a0, $zero, .Lrace_8012AB8C
/* E0EEC 8012AB2C AE6018B4 */   sw        $zero, 0x18B4($s3)
/* E0EF0 8012AB30 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E0EF4 8012AB34 00031040 */  sll        $v0, $v1, 1
/* E0EF8 8012AB38 00431021 */  addu       $v0, $v0, $v1
/* E0EFC 8012AB3C 00021080 */  sll        $v0, $v0, 2
/* E0F00 8012AB40 00431021 */  addu       $v0, $v0, $v1
/* E0F04 8012AB44 00021080 */  sll        $v0, $v0, 2
/* E0F08 8012AB48 00828021 */  addu       $s0, $a0, $v0
/* E0F0C 8012AB4C 1090000C */  beq        $a0, $s0, .Lrace_8012AB80
/* E0F10 8012AB50 00000000 */   nop
/* E0F14 8012AB54 2610FFCC */  addiu      $s0, $s0, -0x34
.Lrace_8012AB58:
/* E0F18 8012AB58 8E020000 */  lw         $v0, 0x0($s0)
/* E0F1C 8012AB5C 24050002 */  addiu      $a1, $zero, 0x2
/* E0F20 8012AB60 84440010 */  lh         $a0, 0x10($v0)
/* E0F24 8012AB64 8C420014 */  lw         $v0, 0x14($v0)
/* E0F28 8012AB68 0040F809 */  jalr       $v0
/* E0F2C 8012AB6C 02042021 */   addu      $a0, $s0, $a0
/* E0F30 8012AB70 8E6218B4 */  lw         $v0, 0x18B4($s3)
/* E0F34 8012AB74 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012AB58
/* E0F38 8012AB78 2610FFCC */   addiu     $s0, $s0, -0x34
/* E0F3C 8012AB7C 8E6418B4 */  lw         $a0, 0x18B4($s3)
.Lrace_8012AB80:
/* E0F40 8012AB80 0C009444 */  jal        func_80025110
/* E0F44 8012AB84 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E0F48 8012AB88 AE6018B4 */  sw         $zero, 0x18B4($s3)
.Lrace_8012AB8C:
/* E0F4C 8012AB8C 8E6218B0 */  lw         $v0, 0x18B0($s3)
/* E0F50 8012AB90 10400027 */  beqz       $v0, .Lrace_8012AC30
/* E0F54 8012AB94 00000000 */   nop
/* E0F58 8012AB98 9262188C */  lbu        $v0, 0x188C($s3)
/* E0F5C 8012AB9C 1040000A */  beqz       $v0, .Lrace_8012ABC8
/* E0F60 8012ABA0 00008021 */   addu      $s0, $zero, $zero
/* E0F64 8012ABA4 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012ABA8:
/* E0F68 8012ABA8 8E6418B0 */  lw         $a0, 0x18B0($s3)
/* E0F6C 8012ABAC 26100001 */  addiu      $s0, $s0, 0x1
/* E0F70 8012ABB0 0C04B7E6 */  jal        func_race_8012DF98
/* E0F74 8012ABB4 00912021 */   addu      $a0, $a0, $s1
/* E0F78 8012ABB8 9262188C */  lbu        $v0, 0x188C($s3)
/* E0F7C 8012ABBC 0202102B */  sltu       $v0, $s0, $v0
/* E0F80 8012ABC0 1440FFF9 */  bnez       $v0, .Lrace_8012ABA8
/* E0F84 8012ABC4 2631002C */   addiu     $s1, $s1, 0x2C
.Lrace_8012ABC8:
/* E0F88 8012ABC8 8E6418B0 */  lw         $a0, 0x18B0($s3)
/* E0F8C 8012ABCC 50800018 */  beql       $a0, $zero, .Lrace_8012AC30
/* E0F90 8012ABD0 AE6018B0 */   sw        $zero, 0x18B0($s3)
/* E0F94 8012ABD4 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E0F98 8012ABD8 00031040 */  sll        $v0, $v1, 1
/* E0F9C 8012ABDC 00431021 */  addu       $v0, $v0, $v1
/* E0FA0 8012ABE0 00021080 */  sll        $v0, $v0, 2
/* E0FA4 8012ABE4 00431023 */  subu       $v0, $v0, $v1
/* E0FA8 8012ABE8 00021080 */  sll        $v0, $v0, 2
/* E0FAC 8012ABEC 00828021 */  addu       $s0, $a0, $v0
/* E0FB0 8012ABF0 1090000C */  beq        $a0, $s0, .Lrace_8012AC24
/* E0FB4 8012ABF4 00000000 */   nop
/* E0FB8 8012ABF8 2610FFD4 */  addiu      $s0, $s0, -0x2C
.Lrace_8012ABFC:
/* E0FBC 8012ABFC 8E020000 */  lw         $v0, 0x0($s0)
/* E0FC0 8012AC00 24050002 */  addiu      $a1, $zero, 0x2
/* E0FC4 8012AC04 84440010 */  lh         $a0, 0x10($v0)
/* E0FC8 8012AC08 8C420014 */  lw         $v0, 0x14($v0)
/* E0FCC 8012AC0C 0040F809 */  jalr       $v0
/* E0FD0 8012AC10 02042021 */   addu      $a0, $s0, $a0
/* E0FD4 8012AC14 8E6218B0 */  lw         $v0, 0x18B0($s3)
/* E0FD8 8012AC18 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012ABFC
/* E0FDC 8012AC1C 2610FFD4 */   addiu     $s0, $s0, -0x2C
/* E0FE0 8012AC20 8E6418B0 */  lw         $a0, 0x18B0($s3)
.Lrace_8012AC24:
/* E0FE4 8012AC24 0C009444 */  jal        func_80025110
/* E0FE8 8012AC28 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E0FEC 8012AC2C AE6018B0 */  sw         $zero, 0x18B0($s3)
.Lrace_8012AC30:
/* E0FF0 8012AC30 8E6218AC */  lw         $v0, 0x18AC($s3)
/* E0FF4 8012AC34 10400027 */  beqz       $v0, .Lrace_8012ACD4
/* E0FF8 8012AC38 00000000 */   nop
/* E0FFC 8012AC3C 9262188B */  lbu        $v0, 0x188B($s3)
/* E1000 8012AC40 1040000A */  beqz       $v0, .Lrace_8012AC6C
/* E1004 8012AC44 00008021 */   addu      $s0, $zero, $zero
/* E1008 8012AC48 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012AC4C:
/* E100C 8012AC4C 8E6418AC */  lw         $a0, 0x18AC($s3)
/* E1010 8012AC50 26100001 */  addiu      $s0, $s0, 0x1
/* E1014 8012AC54 0C049ABE */  jal        func_race_80126AF8
/* E1018 8012AC58 00912021 */   addu      $a0, $a0, $s1
/* E101C 8012AC5C 9262188B */  lbu        $v0, 0x188B($s3)
/* E1020 8012AC60 0202102B */  sltu       $v0, $s0, $v0
/* E1024 8012AC64 1440FFF9 */  bnez       $v0, .Lrace_8012AC4C
/* E1028 8012AC68 26310224 */   addiu     $s1, $s1, 0x224
.Lrace_8012AC6C:
/* E102C 8012AC6C 8E6418AC */  lw         $a0, 0x18AC($s3)
/* E1030 8012AC70 50800018 */  beql       $a0, $zero, .Lrace_8012ACD4
/* E1034 8012AC74 AE6018AC */   sw        $zero, 0x18AC($s3)
/* E1038 8012AC78 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E103C 8012AC7C 00031100 */  sll        $v0, $v1, 4
/* E1040 8012AC80 00431021 */  addu       $v0, $v0, $v1
/* E1044 8012AC84 000210C0 */  sll        $v0, $v0, 3
/* E1048 8012AC88 00431021 */  addu       $v0, $v0, $v1
/* E104C 8012AC8C 00021080 */  sll        $v0, $v0, 2
/* E1050 8012AC90 00828021 */  addu       $s0, $a0, $v0
/* E1054 8012AC94 1090000C */  beq        $a0, $s0, .Lrace_8012ACC8
/* E1058 8012AC98 00000000 */   nop
/* E105C 8012AC9C 2610FDDC */  addiu      $s0, $s0, -0x224
.Lrace_8012ACA0:
/* E1060 8012ACA0 8E020000 */  lw         $v0, 0x0($s0)
/* E1064 8012ACA4 24050002 */  addiu      $a1, $zero, 0x2
/* E1068 8012ACA8 84440010 */  lh         $a0, 0x10($v0)
/* E106C 8012ACAC 8C420014 */  lw         $v0, 0x14($v0)
/* E1070 8012ACB0 0040F809 */  jalr       $v0
/* E1074 8012ACB4 02042021 */   addu      $a0, $s0, $a0
/* E1078 8012ACB8 8E6218AC */  lw         $v0, 0x18AC($s3)
/* E107C 8012ACBC 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012ACA0
/* E1080 8012ACC0 2610FDDC */   addiu     $s0, $s0, -0x224
/* E1084 8012ACC4 8E6418AC */  lw         $a0, 0x18AC($s3)
.Lrace_8012ACC8:
/* E1088 8012ACC8 0C009444 */  jal        func_80025110
/* E108C 8012ACCC 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E1090 8012ACD0 AE6018AC */  sw         $zero, 0x18AC($s3)
.Lrace_8012ACD4:
/* E1094 8012ACD4 8E6218A8 */  lw         $v0, 0x18A8($s3)
/* E1098 8012ACD8 10400029 */  beqz       $v0, .Lrace_8012AD80
/* E109C 8012ACDC 00000000 */   nop
/* E10A0 8012ACE0 9262188A */  lbu        $v0, 0x188A($s3)
/* E10A4 8012ACE4 1040000A */  beqz       $v0, .Lrace_8012AD10
/* E10A8 8012ACE8 00008021 */   addu      $s0, $zero, $zero
/* E10AC 8012ACEC 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012ACF0:
/* E10B0 8012ACF0 8E6418A8 */  lw         $a0, 0x18A8($s3)
/* E10B4 8012ACF4 26100001 */  addiu      $s0, $s0, 0x1
/* E10B8 8012ACF8 0C04916D */  jal        func_race_801245B4
/* E10BC 8012ACFC 00912021 */   addu      $a0, $a0, $s1
/* E10C0 8012AD00 9262188A */  lbu        $v0, 0x188A($s3)
/* E10C4 8012AD04 0202102B */  sltu       $v0, $s0, $v0
/* E10C8 8012AD08 1440FFF9 */  bnez       $v0, .Lrace_8012ACF0
/* E10CC 8012AD0C 26310254 */   addiu     $s1, $s1, 0x254
.Lrace_8012AD10:
/* E10D0 8012AD10 8E6418A8 */  lw         $a0, 0x18A8($s3)
/* E10D4 8012AD14 5080001A */  beql       $a0, $zero, .Lrace_8012AD80
/* E10D8 8012AD18 AE6018A8 */   sw        $zero, 0x18A8($s3)
/* E10DC 8012AD1C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E10E0 8012AD20 000310C0 */  sll        $v0, $v1, 3
/* E10E4 8012AD24 00431021 */  addu       $v0, $v0, $v1
/* E10E8 8012AD28 00021080 */  sll        $v0, $v0, 2
/* E10EC 8012AD2C 00431021 */  addu       $v0, $v0, $v1
/* E10F0 8012AD30 00021080 */  sll        $v0, $v0, 2
/* E10F4 8012AD34 00431021 */  addu       $v0, $v0, $v1
/* E10F8 8012AD38 00021080 */  sll        $v0, $v0, 2
/* E10FC 8012AD3C 00828021 */  addu       $s0, $a0, $v0
/* E1100 8012AD40 1090000C */  beq        $a0, $s0, .Lrace_8012AD74
/* E1104 8012AD44 00000000 */   nop
/* E1108 8012AD48 2610FDAC */  addiu      $s0, $s0, -0x254
.Lrace_8012AD4C:
/* E110C 8012AD4C 8E020000 */  lw         $v0, 0x0($s0)
/* E1110 8012AD50 24050002 */  addiu      $a1, $zero, 0x2
/* E1114 8012AD54 84440010 */  lh         $a0, 0x10($v0)
/* E1118 8012AD58 8C420014 */  lw         $v0, 0x14($v0)
/* E111C 8012AD5C 0040F809 */  jalr       $v0
/* E1120 8012AD60 02042021 */   addu      $a0, $s0, $a0
/* E1124 8012AD64 8E6218A8 */  lw         $v0, 0x18A8($s3)
/* E1128 8012AD68 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012AD4C
/* E112C 8012AD6C 2610FDAC */   addiu     $s0, $s0, -0x254
/* E1130 8012AD70 8E6418A8 */  lw         $a0, 0x18A8($s3)
.Lrace_8012AD74:
/* E1134 8012AD74 0C009444 */  jal        func_80025110
/* E1138 8012AD78 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E113C 8012AD7C AE6018A8 */  sw         $zero, 0x18A8($s3)
.Lrace_8012AD80:
/* E1140 8012AD80 8E6218A4 */  lw         $v0, 0x18A4($s3)
/* E1144 8012AD84 10400029 */  beqz       $v0, .Lrace_8012AE2C
/* E1148 8012AD88 00000000 */   nop
/* E114C 8012AD8C 92621889 */  lbu        $v0, 0x1889($s3)
/* E1150 8012AD90 1040000A */  beqz       $v0, .Lrace_8012ADBC
/* E1154 8012AD94 00008021 */   addu      $s0, $zero, $zero
/* E1158 8012AD98 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012AD9C:
/* E115C 8012AD9C 8E6418A4 */  lw         $a0, 0x18A4($s3)
/* E1160 8012ADA0 26100001 */  addiu      $s0, $s0, 0x1
/* E1164 8012ADA4 0C048D50 */  jal        func_race_80123540
/* E1168 8012ADA8 00912021 */   addu      $a0, $a0, $s1
/* E116C 8012ADAC 92621889 */  lbu        $v0, 0x1889($s3)
/* E1170 8012ADB0 0202102B */  sltu       $v0, $s0, $v0
/* E1174 8012ADB4 1440FFF9 */  bnez       $v0, .Lrace_8012AD9C
/* E1178 8012ADB8 26310298 */   addiu     $s1, $s1, 0x298
.Lrace_8012ADBC:
/* E117C 8012ADBC 8E6418A4 */  lw         $a0, 0x18A4($s3)
/* E1180 8012ADC0 5080001A */  beql       $a0, $zero, .Lrace_8012AE2C
/* E1184 8012ADC4 AE6018A4 */   sw        $zero, 0x18A4($s3)
/* E1188 8012ADC8 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E118C 8012ADCC 00031080 */  sll        $v0, $v1, 2
/* E1190 8012ADD0 00431021 */  addu       $v0, $v0, $v1
/* E1194 8012ADD4 00021080 */  sll        $v0, $v0, 2
/* E1198 8012ADD8 00431021 */  addu       $v0, $v0, $v1
/* E119C 8012ADDC 00021080 */  sll        $v0, $v0, 2
/* E11A0 8012ADE0 00431023 */  subu       $v0, $v0, $v1
/* E11A4 8012ADE4 000210C0 */  sll        $v0, $v0, 3
/* E11A8 8012ADE8 00828021 */  addu       $s0, $a0, $v0
/* E11AC 8012ADEC 1090000C */  beq        $a0, $s0, .Lrace_8012AE20
/* E11B0 8012ADF0 00000000 */   nop
/* E11B4 8012ADF4 2610FD68 */  addiu      $s0, $s0, -0x298
.Lrace_8012ADF8:
/* E11B8 8012ADF8 8E020000 */  lw         $v0, 0x0($s0)
/* E11BC 8012ADFC 24050002 */  addiu      $a1, $zero, 0x2
/* E11C0 8012AE00 84440010 */  lh         $a0, 0x10($v0)
/* E11C4 8012AE04 8C420014 */  lw         $v0, 0x14($v0)
/* E11C8 8012AE08 0040F809 */  jalr       $v0
/* E11CC 8012AE0C 02042021 */   addu      $a0, $s0, $a0
/* E11D0 8012AE10 8E6218A4 */  lw         $v0, 0x18A4($s3)
/* E11D4 8012AE14 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012ADF8
/* E11D8 8012AE18 2610FD68 */   addiu     $s0, $s0, -0x298
/* E11DC 8012AE1C 8E6418A4 */  lw         $a0, 0x18A4($s3)
.Lrace_8012AE20:
/* E11E0 8012AE20 0C009444 */  jal        func_80025110
/* E11E4 8012AE24 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E11E8 8012AE28 AE6018A4 */  sw         $zero, 0x18A4($s3)
.Lrace_8012AE2C:
/* E11EC 8012AE2C 8E6218A0 */  lw         $v0, 0x18A0($s3)
/* E11F0 8012AE30 10400027 */  beqz       $v0, .Lrace_8012AED0
/* E11F4 8012AE34 00000000 */   nop
/* E11F8 8012AE38 92621888 */  lbu        $v0, 0x1888($s3)
/* E11FC 8012AE3C 1040000A */  beqz       $v0, .Lrace_8012AE68
/* E1200 8012AE40 00008021 */   addu      $s0, $zero, $zero
/* E1204 8012AE44 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012AE48:
/* E1208 8012AE48 8E6418A0 */  lw         $a0, 0x18A0($s3)
/* E120C 8012AE4C 26100001 */  addiu      $s0, $s0, 0x1
/* E1210 8012AE50 0C048146 */  jal        func_race_80120518
/* E1214 8012AE54 00912021 */   addu      $a0, $a0, $s1
/* E1218 8012AE58 92621888 */  lbu        $v0, 0x1888($s3)
/* E121C 8012AE5C 0202102B */  sltu       $v0, $s0, $v0
/* E1220 8012AE60 1440FFF9 */  bnez       $v0, .Lrace_8012AE48
/* E1224 8012AE64 263100E8 */   addiu     $s1, $s1, 0xE8
.Lrace_8012AE68:
/* E1228 8012AE68 8E6418A0 */  lw         $a0, 0x18A0($s3)
/* E122C 8012AE6C 50800018 */  beql       $a0, $zero, .Lrace_8012AED0
/* E1230 8012AE70 AE6018A0 */   sw        $zero, 0x18A0($s3)
/* E1234 8012AE74 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E1238 8012AE78 000310C0 */  sll        $v0, $v1, 3
/* E123C 8012AE7C 00431023 */  subu       $v0, $v0, $v1
/* E1240 8012AE80 00021080 */  sll        $v0, $v0, 2
/* E1244 8012AE84 00431021 */  addu       $v0, $v0, $v1
/* E1248 8012AE88 000210C0 */  sll        $v0, $v0, 3
/* E124C 8012AE8C 00828021 */  addu       $s0, $a0, $v0
/* E1250 8012AE90 1090000C */  beq        $a0, $s0, .Lrace_8012AEC4
/* E1254 8012AE94 00000000 */   nop
/* E1258 8012AE98 2610FF18 */  addiu      $s0, $s0, -0xE8
.Lrace_8012AE9C:
/* E125C 8012AE9C 8E020000 */  lw         $v0, 0x0($s0)
/* E1260 8012AEA0 24050002 */  addiu      $a1, $zero, 0x2
/* E1264 8012AEA4 84440010 */  lh         $a0, 0x10($v0)
/* E1268 8012AEA8 8C420014 */  lw         $v0, 0x14($v0)
/* E126C 8012AEAC 0040F809 */  jalr       $v0
/* E1270 8012AEB0 02042021 */   addu      $a0, $s0, $a0
/* E1274 8012AEB4 8E6218A0 */  lw         $v0, 0x18A0($s3)
/* E1278 8012AEB8 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012AE9C
/* E127C 8012AEBC 2610FF18 */   addiu     $s0, $s0, -0xE8
/* E1280 8012AEC0 8E6418A0 */  lw         $a0, 0x18A0($s3)
.Lrace_8012AEC4:
/* E1284 8012AEC4 0C009444 */  jal        func_80025110
/* E1288 8012AEC8 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E128C 8012AECC AE6018A0 */  sw         $zero, 0x18A0($s3)
.Lrace_8012AED0:
/* E1290 8012AED0 8E62189C */  lw         $v0, 0x189C($s3)
/* E1294 8012AED4 10400027 */  beqz       $v0, .Lrace_8012AF74
/* E1298 8012AED8 00000000 */   nop
/* E129C 8012AEDC 92621887 */  lbu        $v0, 0x1887($s3)
/* E12A0 8012AEE0 1040000A */  beqz       $v0, .Lrace_8012AF0C
/* E12A4 8012AEE4 00008021 */   addu      $s0, $zero, $zero
/* E12A8 8012AEE8 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012AEEC:
/* E12AC 8012AEEC 8E64189C */  lw         $a0, 0x189C($s3)
/* E12B0 8012AEF0 26100001 */  addiu      $s0, $s0, 0x1
/* E12B4 8012AEF4 0C04847B */  jal        func_race_801211EC
/* E12B8 8012AEF8 00912021 */   addu      $a0, $a0, $s1
/* E12BC 8012AEFC 92621887 */  lbu        $v0, 0x1887($s3)
/* E12C0 8012AF00 0202102B */  sltu       $v0, $s0, $v0
/* E12C4 8012AF04 1440FFF9 */  bnez       $v0, .Lrace_8012AEEC
/* E12C8 8012AF08 26310068 */   addiu     $s1, $s1, 0x68
.Lrace_8012AF0C:
/* E12CC 8012AF0C 8E64189C */  lw         $a0, 0x189C($s3)
/* E12D0 8012AF10 50800018 */  beql       $a0, $zero, .Lrace_8012AF74
/* E12D4 8012AF14 AE60189C */   sw        $zero, 0x189C($s3)
/* E12D8 8012AF18 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E12DC 8012AF1C 00031040 */  sll        $v0, $v1, 1
/* E12E0 8012AF20 00431021 */  addu       $v0, $v0, $v1
/* E12E4 8012AF24 00021080 */  sll        $v0, $v0, 2
/* E12E8 8012AF28 00431021 */  addu       $v0, $v0, $v1
/* E12EC 8012AF2C 000210C0 */  sll        $v0, $v0, 3
/* E12F0 8012AF30 00828021 */  addu       $s0, $a0, $v0
/* E12F4 8012AF34 1090000C */  beq        $a0, $s0, .Lrace_8012AF68
/* E12F8 8012AF38 00000000 */   nop
/* E12FC 8012AF3C 2610FF98 */  addiu      $s0, $s0, -0x68
.Lrace_8012AF40:
/* E1300 8012AF40 8E020000 */  lw         $v0, 0x0($s0)
/* E1304 8012AF44 24050002 */  addiu      $a1, $zero, 0x2
/* E1308 8012AF48 84440010 */  lh         $a0, 0x10($v0)
/* E130C 8012AF4C 8C420014 */  lw         $v0, 0x14($v0)
/* E1310 8012AF50 0040F809 */  jalr       $v0
/* E1314 8012AF54 02042021 */   addu      $a0, $s0, $a0
/* E1318 8012AF58 8E62189C */  lw         $v0, 0x189C($s3)
/* E131C 8012AF5C 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012AF40
/* E1320 8012AF60 2610FF98 */   addiu     $s0, $s0, -0x68
/* E1324 8012AF64 8E64189C */  lw         $a0, 0x189C($s3)
.Lrace_8012AF68:
/* E1328 8012AF68 0C009444 */  jal        func_80025110
/* E132C 8012AF6C 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E1330 8012AF70 AE60189C */  sw         $zero, 0x189C($s3)
.Lrace_8012AF74:
/* E1334 8012AF74 8E621898 */  lw         $v0, 0x1898($s3)
/* E1338 8012AF78 10400027 */  beqz       $v0, .Lrace_8012B018
/* E133C 8012AF7C 00000000 */   nop
/* E1340 8012AF80 92621886 */  lbu        $v0, 0x1886($s3)
/* E1344 8012AF84 1040000A */  beqz       $v0, .Lrace_8012AFB0
/* E1348 8012AF88 00008021 */   addu      $s0, $zero, $zero
/* E134C 8012AF8C 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012AF90:
/* E1350 8012AF90 8E641898 */  lw         $a0, 0x1898($s3)
/* E1354 8012AF94 26100001 */  addiu      $s0, $s0, 0x1
/* E1358 8012AF98 0C0487BC */  jal        func_race_80121EF0
/* E135C 8012AF9C 00912021 */   addu      $a0, $a0, $s1
/* E1360 8012AFA0 92621886 */  lbu        $v0, 0x1886($s3)
/* E1364 8012AFA4 0202102B */  sltu       $v0, $s0, $v0
/* E1368 8012AFA8 1440FFF9 */  bnez       $v0, .Lrace_8012AF90
/* E136C 8012AFAC 2631017C */   addiu     $s1, $s1, 0x17C
.Lrace_8012AFB0:
/* E1370 8012AFB0 8E641898 */  lw         $a0, 0x1898($s3)
/* E1374 8012AFB4 50800018 */  beql       $a0, $zero, .Lrace_8012B018
/* E1378 8012AFB8 AE601898 */   sw        $zero, 0x1898($s3)
/* E137C 8012AFBC 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E1380 8012AFC0 00031040 */  sll        $v0, $v1, 1
/* E1384 8012AFC4 00431021 */  addu       $v0, $v0, $v1
/* E1388 8012AFC8 00021140 */  sll        $v0, $v0, 5
/* E138C 8012AFCC 00431023 */  subu       $v0, $v0, $v1
/* E1390 8012AFD0 00021080 */  sll        $v0, $v0, 2
/* E1394 8012AFD4 00828021 */  addu       $s0, $a0, $v0
/* E1398 8012AFD8 1090000C */  beq        $a0, $s0, .Lrace_8012B00C
/* E139C 8012AFDC 00000000 */   nop
/* E13A0 8012AFE0 2610FE84 */  addiu      $s0, $s0, -0x17C
.Lrace_8012AFE4:
/* E13A4 8012AFE4 8E020000 */  lw         $v0, 0x0($s0)
/* E13A8 8012AFE8 24050002 */  addiu      $a1, $zero, 0x2
/* E13AC 8012AFEC 84440010 */  lh         $a0, 0x10($v0)
/* E13B0 8012AFF0 8C420014 */  lw         $v0, 0x14($v0)
/* E13B4 8012AFF4 0040F809 */  jalr       $v0
/* E13B8 8012AFF8 02042021 */   addu      $a0, $s0, $a0
/* E13BC 8012AFFC 8E621898 */  lw         $v0, 0x1898($s3)
/* E13C0 8012B000 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012AFE4
/* E13C4 8012B004 2610FE84 */   addiu     $s0, $s0, -0x17C
/* E13C8 8012B008 8E641898 */  lw         $a0, 0x1898($s3)
.Lrace_8012B00C:
/* E13CC 8012B00C 0C009444 */  jal        func_80025110
/* E13D0 8012B010 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E13D4 8012B014 AE601898 */  sw         $zero, 0x1898($s3)
.Lrace_8012B018:
/* E13D8 8012B018 8E621894 */  lw         $v0, 0x1894($s3)
/* E13DC 8012B01C 10400029 */  beqz       $v0, .Lrace_8012B0C4
/* E13E0 8012B020 00000000 */   nop
/* E13E4 8012B024 92621885 */  lbu        $v0, 0x1885($s3)
/* E13E8 8012B028 1040000A */  beqz       $v0, .Lrace_8012B054
/* E13EC 8012B02C 00008021 */   addu      $s0, $zero, $zero
/* E13F0 8012B030 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012B034:
/* E13F4 8012B034 8E641894 */  lw         $a0, 0x1894($s3)
/* E13F8 8012B038 26100001 */  addiu      $s0, $s0, 0x1
/* E13FC 8012B03C 0C049E64 */  jal        func_race_80127990
/* E1400 8012B040 00912021 */   addu      $a0, $a0, $s1
/* E1404 8012B044 92621885 */  lbu        $v0, 0x1885($s3)
/* E1408 8012B048 0202102B */  sltu       $v0, $s0, $v0
/* E140C 8012B04C 1440FFF9 */  bnez       $v0, .Lrace_8012B034
/* E1410 8012B050 263101A8 */   addiu     $s1, $s1, 0x1A8
.Lrace_8012B054:
/* E1414 8012B054 8E641894 */  lw         $a0, 0x1894($s3)
/* E1418 8012B058 5080001A */  beql       $a0, $zero, .Lrace_8012B0C4
/* E141C 8012B05C AE601894 */   sw        $zero, 0x1894($s3)
/* E1420 8012B060 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E1424 8012B064 00031040 */  sll        $v0, $v1, 1
/* E1428 8012B068 00431021 */  addu       $v0, $v0, $v1
/* E142C 8012B06C 00021080 */  sll        $v0, $v0, 2
/* E1430 8012B070 00431021 */  addu       $v0, $v0, $v1
/* E1434 8012B074 00021080 */  sll        $v0, $v0, 2
/* E1438 8012B078 00431021 */  addu       $v0, $v0, $v1
/* E143C 8012B07C 000210C0 */  sll        $v0, $v0, 3
/* E1440 8012B080 00828021 */  addu       $s0, $a0, $v0
/* E1444 8012B084 1090000C */  beq        $a0, $s0, .Lrace_8012B0B8
/* E1448 8012B088 00000000 */   nop
/* E144C 8012B08C 2610FE58 */  addiu      $s0, $s0, -0x1A8
.Lrace_8012B090:
/* E1450 8012B090 8E020000 */  lw         $v0, 0x0($s0)
/* E1454 8012B094 24050002 */  addiu      $a1, $zero, 0x2
/* E1458 8012B098 84440010 */  lh         $a0, 0x10($v0)
/* E145C 8012B09C 8C420014 */  lw         $v0, 0x14($v0)
/* E1460 8012B0A0 0040F809 */  jalr       $v0
/* E1464 8012B0A4 02042021 */   addu      $a0, $s0, $a0
/* E1468 8012B0A8 8E621894 */  lw         $v0, 0x1894($s3)
/* E146C 8012B0AC 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012B090
/* E1470 8012B0B0 2610FE58 */   addiu     $s0, $s0, -0x1A8
/* E1474 8012B0B4 8E641894 */  lw         $a0, 0x1894($s3)
.Lrace_8012B0B8:
/* E1478 8012B0B8 0C009444 */  jal        func_80025110
/* E147C 8012B0BC 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E1480 8012B0C0 AE601894 */  sw         $zero, 0x1894($s3)
.Lrace_8012B0C4:
/* E1484 8012B0C4 8E621890 */  lw         $v0, 0x1890($s3)
/* E1488 8012B0C8 10400025 */  beqz       $v0, .Lrace_8012B160
/* E148C 8012B0CC 00000000 */   nop
/* E1490 8012B0D0 92621884 */  lbu        $v0, 0x1884($s3)
/* E1494 8012B0D4 1040000A */  beqz       $v0, .Lrace_8012B100
/* E1498 8012B0D8 00008021 */   addu      $s0, $zero, $zero
/* E149C 8012B0DC 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012B0E0:
/* E14A0 8012B0E0 8E641890 */  lw         $a0, 0x1890($s3)
/* E14A4 8012B0E4 26100001 */  addiu      $s0, $s0, 0x1
/* E14A8 8012B0E8 0C0495EB */  jal        func_race_801257AC
/* E14AC 8012B0EC 00912021 */   addu      $a0, $a0, $s1
/* E14B0 8012B0F0 92621884 */  lbu        $v0, 0x1884($s3)
/* E14B4 8012B0F4 0202102B */  sltu       $v0, $s0, $v0
/* E14B8 8012B0F8 1440FFF9 */  bnez       $v0, .Lrace_8012B0E0
/* E14BC 8012B0FC 26310084 */   addiu     $s1, $s1, 0x84
.Lrace_8012B100:
/* E14C0 8012B100 8E641890 */  lw         $a0, 0x1890($s3)
/* E14C4 8012B104 50800016 */  beql       $a0, $zero, .Lrace_8012B160
/* E14C8 8012B108 AE601890 */   sw        $zero, 0x1890($s3)
/* E14CC 8012B10C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E14D0 8012B110 00031140 */  sll        $v0, $v1, 5
/* E14D4 8012B114 00431021 */  addu       $v0, $v0, $v1
/* E14D8 8012B118 00021080 */  sll        $v0, $v0, 2
/* E14DC 8012B11C 00828021 */  addu       $s0, $a0, $v0
/* E14E0 8012B120 1090000C */  beq        $a0, $s0, .Lrace_8012B154
/* E14E4 8012B124 00000000 */   nop
/* E14E8 8012B128 2610FF7C */  addiu      $s0, $s0, -0x84
.Lrace_8012B12C:
/* E14EC 8012B12C 8E020000 */  lw         $v0, 0x0($s0)
/* E14F0 8012B130 24050002 */  addiu      $a1, $zero, 0x2
/* E14F4 8012B134 84440010 */  lh         $a0, 0x10($v0)
/* E14F8 8012B138 8C420014 */  lw         $v0, 0x14($v0)
/* E14FC 8012B13C 0040F809 */  jalr       $v0
/* E1500 8012B140 02042021 */   addu      $a0, $s0, $a0
/* E1504 8012B144 8E621890 */  lw         $v0, 0x1890($s3)
/* E1508 8012B148 5450FFF8 */  bnel       $v0, $s0, .Lrace_8012B12C
/* E150C 8012B14C 2610FF7C */   addiu     $s0, $s0, -0x84
/* E1510 8012B150 8E641890 */  lw         $a0, 0x1890($s3)
.Lrace_8012B154:
/* E1514 8012B154 0C009444 */  jal        func_80025110
/* E1518 8012B158 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E151C 8012B15C AE601890 */  sw         $zero, 0x1890($s3)
.Lrace_8012B160:
/* E1520 8012B160 8E630000 */  lw         $v1, 0x0($s3)
/* E1524 8012B164 1060000A */  beqz       $v1, .Lrace_8012B190
/* E1528 8012B168 00000000 */   nop
/* E152C 8012B16C 8E65005C */  lw         $a1, 0x5C($s3)
/* E1530 8012B170 10A00007 */  beqz       $a1, .Lrace_8012B190
/* E1534 8012B174 00000000 */   nop
/* E1538 8012B178 8C620000 */  lw         $v0, 0x0($v1)
/* E153C 8012B17C 84440080 */  lh         $a0, 0x80($v0)
/* E1540 8012B180 8C420084 */  lw         $v0, 0x84($v0)
/* E1544 8012B184 0040F809 */  jalr       $v0
/* E1548 8012B188 00642021 */   addu      $a0, $v1, $a0
/* E154C 8012B18C AE60005C */  sw         $zero, 0x5C($s3)
.Lrace_8012B190:
/* E1550 8012B190 0C019E72 */  jal        func_800679C8
/* E1554 8012B194 26640014 */   addiu     $a0, $s3, 0x14
/* E1558 8012B198 8E630000 */  lw         $v1, 0x0($s3)
/* E155C 8012B19C 1060000A */  beqz       $v1, .Lrace_8012B1C8
/* E1560 8012B1A0 AE600060 */   sw        $zero, 0x60($s3)
/* E1564 8012B1A4 8E650064 */  lw         $a1, 0x64($s3)
/* E1568 8012B1A8 10A00007 */  beqz       $a1, .Lrace_8012B1C8
/* E156C 8012B1AC 00000000 */   nop
/* E1570 8012B1B0 8C620000 */  lw         $v0, 0x0($v1)
/* E1574 8012B1B4 84440080 */  lh         $a0, 0x80($v0)
/* E1578 8012B1B8 8C420084 */  lw         $v0, 0x84($v0)
/* E157C 8012B1BC 0040F809 */  jalr       $v0
/* E1580 8012B1C0 00642021 */   addu      $a0, $v1, $a0
/* E1584 8012B1C4 AE600064 */  sw         $zero, 0x64($s3)
.Lrace_8012B1C8:
/* E1588 8012B1C8 8E620030 */  lw         $v0, 0x30($s3)
/* E158C 8012B1CC 10400014 */  beqz       $v0, .Lrace_8012B220
/* E1590 8012B1D0 00002021 */   addu      $a0, $zero, $zero
.Lrace_8012B1D4:
/* E1594 8012B1D4 8E620034 */  lw         $v0, 0x34($s3)
/* E1598 8012B1D8 8E630038 */  lw         $v1, 0x38($s3)
/* E159C 8012B1DC 00431021 */  addu       $v0, $v0, $v1
/* E15A0 8012B1E0 0082102B */  sltu       $v0, $a0, $v0
/* E15A4 8012B1E4 10400008 */  beqz       $v0, .Lrace_8012B208
/* E15A8 8012B1E8 00041080 */   sll       $v0, $a0, 2
/* E15AC 8012B1EC 8E630030 */  lw         $v1, 0x30($s3)
/* E15B0 8012B1F0 00431021 */  addu       $v0, $v0, $v1
/* E15B4 8012B1F4 8C420000 */  lw         $v0, 0x0($v0)
/* E15B8 8012B1F8 54400001 */  bnel       $v0, $zero, .Lrace_8012B200
/* E15BC 8012B1FC AC400024 */   sw        $zero, 0x24($v0)
.Lrace_8012B200:
/* E15C0 8012B200 0804AC75 */  j          .Lrace_8012B1D4
/* E15C4 8012B204 24840001 */   addiu     $a0, $a0, 0x1
.Lrace_8012B208:
/* E15C8 8012B208 8E640030 */  lw         $a0, 0x30($s3)
/* E15CC 8012B20C 50800004 */  beql       $a0, $zero, .Lrace_8012B220
/* E15D0 8012B210 AE600030 */   sw        $zero, 0x30($s3)
/* E15D4 8012B214 0C009444 */  jal        func_80025110
/* E15D8 8012B218 00000000 */   nop
/* E15DC 8012B21C AE600030 */  sw         $zero, 0x30($s3)
.Lrace_8012B220:
/* E15E0 8012B220 8E64002C */  lw         $a0, 0x2C($s3)
/* E15E4 8012B224 10800017 */  beqz       $a0, .Lrace_8012B284
/* E15E8 8012B228 00000000 */   nop
/* E15EC 8012B22C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E15F0 8012B230 00031040 */  sll        $v0, $v1, 1
/* E15F4 8012B234 00431021 */  addu       $v0, $v0, $v1
/* E15F8 8012B238 00021080 */  sll        $v0, $v0, 2
/* E15FC 8012B23C 00431021 */  addu       $v0, $v0, $v1
/* E1600 8012B240 000210C0 */  sll        $v0, $v0, 3
/* E1604 8012B244 00828021 */  addu       $s0, $a0, $v0
/* E1608 8012B248 1090000B */  beq        $a0, $s0, .Lrace_8012B278
/* E160C 8012B24C 2610FF98 */   addiu     $s0, $s0, -0x68
.Lrace_8012B250:
/* E1610 8012B250 8E020000 */  lw         $v0, 0x0($s0)
/* E1614 8012B254 24050002 */  addiu      $a1, $zero, 0x2
/* E1618 8012B258 84440018 */  lh         $a0, 0x18($v0)
/* E161C 8012B25C 8C42001C */  lw         $v0, 0x1C($v0)
/* E1620 8012B260 0040F809 */  jalr       $v0
/* E1624 8012B264 02042021 */   addu      $a0, $s0, $a0
/* E1628 8012B268 8E62002C */  lw         $v0, 0x2C($s3)
/* E162C 8012B26C 1450FFF8 */  bne        $v0, $s0, .Lrace_8012B250
/* E1630 8012B270 2610FF98 */   addiu     $s0, $s0, -0x68
/* E1634 8012B274 8E64002C */  lw         $a0, 0x2C($s3)
.Lrace_8012B278:
/* E1638 8012B278 0C009444 */  jal        func_80025110
/* E163C 8012B27C 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E1640 8012B280 AE60002C */  sw         $zero, 0x2C($s3)
.Lrace_8012B284:
/* E1644 8012B284 8E640028 */  lw         $a0, 0x28($s3)
/* E1648 8012B288 10800018 */  beqz       $a0, .Lrace_8012B2EC
/* E164C 8012B28C 00008021 */   addu      $s0, $zero, $zero
/* E1650 8012B290 8C83FFF8 */  lw         $v1, -0x8($a0)
/* E1654 8012B294 00031040 */  sll        $v0, $v1, 1
/* E1658 8012B298 00431021 */  addu       $v0, $v0, $v1
/* E165C 8012B29C 00021080 */  sll        $v0, $v0, 2
/* E1660 8012B2A0 00431021 */  addu       $v0, $v0, $v1
/* E1664 8012B2A4 000210C0 */  sll        $v0, $v0, 3
/* E1668 8012B2A8 00828021 */  addu       $s0, $a0, $v0
/* E166C 8012B2AC 1090000B */  beq        $a0, $s0, .Lrace_8012B2DC
/* E1670 8012B2B0 2610FF98 */   addiu     $s0, $s0, -0x68
.Lrace_8012B2B4:
/* E1674 8012B2B4 8E020000 */  lw         $v0, 0x0($s0)
/* E1678 8012B2B8 24050002 */  addiu      $a1, $zero, 0x2
/* E167C 8012B2BC 84440018 */  lh         $a0, 0x18($v0)
/* E1680 8012B2C0 8C42001C */  lw         $v0, 0x1C($v0)
/* E1684 8012B2C4 0040F809 */  jalr       $v0
/* E1688 8012B2C8 02042021 */   addu      $a0, $s0, $a0
/* E168C 8012B2CC 8E620028 */  lw         $v0, 0x28($s3)
/* E1690 8012B2D0 1450FFF8 */  bne        $v0, $s0, .Lrace_8012B2B4
/* E1694 8012B2D4 2610FF98 */   addiu     $s0, $s0, -0x68
/* E1698 8012B2D8 8E640028 */  lw         $a0, 0x28($s3)
.Lrace_8012B2DC:
/* E169C 8012B2DC 0C009444 */  jal        func_80025110
/* E16A0 8012B2E0 2484FFF8 */   addiu     $a0, $a0, -0x8
/* E16A4 8012B2E4 AE600028 */  sw         $zero, 0x28($s3)
/* E16A8 8012B2E8 00008021 */  addu       $s0, $zero, $zero
.Lrace_8012B2EC:
/* E16AC 8012B2EC 241200A4 */  addiu      $s2, $zero, 0xA4
/* E16B0 8012B2F0 02608821 */  addu       $s1, $s3, $zero
/* E16B4 8012B2F4 02721821 */  addu       $v1, $s3, $s2
.Lrace_8012B2F8:
/* E16B8 8012B2F8 265200F4 */  addiu      $s2, $s2, 0xF4
/* E16BC 8012B2FC 8E2200C8 */  lw         $v0, 0xC8($s1)
/* E16C0 8012B300 263100F4 */  addiu      $s1, $s1, 0xF4
/* E16C4 8012B304 26100001 */  addiu      $s0, $s0, 0x1
/* E16C8 8012B308 844400B0 */  lh         $a0, 0xB0($v0)
/* E16CC 8012B30C 8C4200B4 */  lw         $v0, 0xB4($v0)
/* E16D0 8012B310 0040F809 */  jalr       $v0
/* E16D4 8012B314 00642021 */   addu      $a0, $v1, $a0
/* E16D8 8012B318 2E020019 */  sltiu      $v0, $s0, 0x19
/* E16DC 8012B31C 1440FFF6 */  bnez       $v0, .Lrace_8012B2F8
/* E16E0 8012B320 02721821 */   addu      $v1, $s3, $s2
/* E16E4 8012B324 0C04A149 */  jal        func_race_80128524
/* E16E8 8012B328 02602021 */   addu      $a0, $s3, $zero
/* E16EC 8012B32C 8FBF0020 */  lw         $ra, 0x20($sp)
/* E16F0 8012B330 8FB3001C */  lw         $s3, 0x1C($sp)
/* E16F4 8012B334 8FB20018 */  lw         $s2, 0x18($sp)
/* E16F8 8012B338 8FB10014 */  lw         $s1, 0x14($sp)
/* E16FC 8012B33C 8FB00010 */  lw         $s0, 0x10($sp)
/* E1700 8012B340 03E00008 */  jr         $ra
/* E1704 8012B344 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8012B348
/* E1708 8012B348 03E00008 */  jr         $ra
/* E170C 8012B34C 00000000 */   nop

glabel func_race_8012B350
/* E1710 8012B350 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* E1714 8012B354 AFB20030 */  sw         $s2, 0x30($sp)
/* E1718 8012B358 00809021 */  addu       $s2, $a0, $zero
/* E171C 8012B35C AFB00028 */  sw         $s0, 0x28($sp)
/* E1720 8012B360 00008021 */  addu       $s0, $zero, $zero
/* E1724 8012B364 AFB1002C */  sw         $s1, 0x2C($sp)
/* E1728 8012B368 02008821 */  addu       $s1, $s0, $zero
/* E172C 8012B36C AFBF0038 */  sw         $ra, 0x38($sp)
/* E1730 8012B370 AFB30034 */  sw         $s3, 0x34($sp)
/* E1734 8012B374 8E420074 */  lw         $v0, 0x74($s2)
/* E1738 8012B378 24030004 */  addiu      $v1, $zero, 0x4
/* E173C 8012B37C AFA30010 */  sw         $v1, 0x10($sp)
/* E1740 8012B380 24030001 */  addiu      $v1, $zero, 0x1
/* E1744 8012B384 AFA30014 */  sw         $v1, 0x14($sp)
/* E1748 8012B388 AFA00018 */  sw         $zero, 0x18($sp)
/* E174C 8012B38C AFA0001C */  sw         $zero, 0x1C($sp)
/* E1750 8012B390 245300F0 */  addiu      $s3, $v0, 0xF0
.Lrace_8012B394:
/* E1754 8012B394 8E420034 */  lw         $v0, 0x34($s2)
/* E1758 8012B398 0202102B */  sltu       $v0, $s0, $v0
/* E175C 8012B39C 10400010 */  beqz       $v0, .Lrace_8012B3E0
/* E1760 8012B3A0 02602021 */   addu      $a0, $s3, $zero
/* E1764 8012B3A4 8E420028 */  lw         $v0, 0x28($s2)
/* E1768 8012B3A8 02221021 */  addu       $v0, $s1, $v0
/* E176C 8012B3AC 24420008 */  addiu      $v0, $v0, 0x8
/* E1770 8012B3B0 AFA20020 */  sw         $v0, 0x20($sp)
/* E1774 8012B3B4 8E450028 */  lw         $a1, 0x28($s2)
/* E1778 8012B3B8 27A60010 */  addiu      $a2, $sp, 0x10
/* E177C 8012B3BC 0C04053E */  jal        func_race_801014F8
/* E1780 8012B3C0 00B12821 */   addu      $a1, $a1, $s1
/* E1784 8012B3C4 26310068 */  addiu      $s1, $s1, 0x68
/* E1788 8012B3C8 00101880 */  sll        $v1, $s0, 2
/* E178C 8012B3CC 8E440030 */  lw         $a0, 0x30($s2)
/* E1790 8012B3D0 26100001 */  addiu      $s0, $s0, 0x1
/* E1794 8012B3D4 00641821 */  addu       $v1, $v1, $a0
/* E1798 8012B3D8 0804ACE5 */  j          .Lrace_8012B394
/* E179C 8012B3DC AC620000 */   sw        $v0, 0x0($v1)
.Lrace_8012B3E0:
/* E17A0 8012B3E0 00008021 */  addu       $s0, $zero, $zero
/* E17A4 8012B3E4 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012B3E8:
/* E17A8 8012B3E8 8E420038 */  lw         $v0, 0x38($s2)
/* E17AC 8012B3EC 0202102B */  sltu       $v0, $s0, $v0
/* E17B0 8012B3F0 10400012 */  beqz       $v0, .Lrace_8012B43C
/* E17B4 8012B3F4 02602021 */   addu      $a0, $s3, $zero
/* E17B8 8012B3F8 8E42002C */  lw         $v0, 0x2C($s2)
/* E17BC 8012B3FC 02221021 */  addu       $v0, $s1, $v0
/* E17C0 8012B400 24420008 */  addiu      $v0, $v0, 0x8
/* E17C4 8012B404 AFA20020 */  sw         $v0, 0x20($sp)
/* E17C8 8012B408 8E45002C */  lw         $a1, 0x2C($s2)
/* E17CC 8012B40C 27A60010 */  addiu      $a2, $sp, 0x10
/* E17D0 8012B410 0C04053E */  jal        func_race_801014F8
/* E17D4 8012B414 00B12821 */   addu      $a1, $a1, $s1
/* E17D8 8012B418 26310068 */  addiu      $s1, $s1, 0x68
/* E17DC 8012B41C 8E430034 */  lw         $v1, 0x34($s2)
/* E17E0 8012B420 8E440030 */  lw         $a0, 0x30($s2)
/* E17E4 8012B424 02031821 */  addu       $v1, $s0, $v1
/* E17E8 8012B428 26100001 */  addiu      $s0, $s0, 0x1
/* E17EC 8012B42C 00031880 */  sll        $v1, $v1, 2
/* E17F0 8012B430 00641821 */  addu       $v1, $v1, $a0
/* E17F4 8012B434 0804ACFA */  j          .Lrace_8012B3E8
/* E17F8 8012B438 AC620000 */   sw        $v0, 0x0($v1)
.Lrace_8012B43C:
/* E17FC 8012B43C 8FBF0038 */  lw         $ra, 0x38($sp)
/* E1800 8012B440 8FB30034 */  lw         $s3, 0x34($sp)
/* E1804 8012B444 8FB20030 */  lw         $s2, 0x30($sp)
/* E1808 8012B448 8FB1002C */  lw         $s1, 0x2C($sp)
/* E180C 8012B44C 8FB00028 */  lw         $s0, 0x28($sp)
/* E1810 8012B450 03E00008 */  jr         $ra
/* E1814 8012B454 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8012B458
/* E1818 8012B458 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E181C 8012B45C AFB20018 */  sw         $s2, 0x18($sp)
/* E1820 8012B460 00809021 */  addu       $s2, $a0, $zero
/* E1824 8012B464 AFBF0020 */  sw         $ra, 0x20($sp)
/* E1828 8012B468 AFB3001C */  sw         $s3, 0x1C($sp)
/* E182C 8012B46C AFB10014 */  sw         $s1, 0x14($sp)
/* E1830 8012B470 AFB00010 */  sw         $s0, 0x10($sp)
/* E1834 8012B474 8E431968 */  lw         $v1, 0x1968($s2)
/* E1838 8012B478 10600006 */  beqz       $v1, .Lrace_8012B494
/* E183C 8012B47C 00A09821 */   addu      $s3, $a1, $zero
/* E1840 8012B480 8C620024 */  lw         $v0, 0x24($v1)
/* E1844 8012B484 84440020 */  lh         $a0, 0x20($v0)
/* E1848 8012B488 8C420024 */  lw         $v0, 0x24($v0)
/* E184C 8012B48C 0040F809 */  jalr       $v0
/* E1850 8012B490 00642021 */   addu      $a0, $v1, $a0
.Lrace_8012B494:
/* E1854 8012B494 8E43196C */  lw         $v1, 0x196C($s2)
/* E1858 8012B498 10600006 */  beqz       $v1, .Lrace_8012B4B4
/* E185C 8012B49C 02602821 */   addu      $a1, $s3, $zero
/* E1860 8012B4A0 8C620024 */  lw         $v0, 0x24($v1)
/* E1864 8012B4A4 84440020 */  lh         $a0, 0x20($v0)
/* E1868 8012B4A8 8C420024 */  lw         $v0, 0x24($v0)
/* E186C 8012B4AC 0040F809 */  jalr       $v0
/* E1870 8012B4B0 00642021 */   addu      $a0, $v1, $a0
.Lrace_8012B4B4:
/* E1874 8012B4B4 8E431970 */  lw         $v1, 0x1970($s2)
/* E1878 8012B4B8 10600006 */  beqz       $v1, .Lrace_8012B4D4
/* E187C 8012B4BC 02602821 */   addu      $a1, $s3, $zero
/* E1880 8012B4C0 8C620024 */  lw         $v0, 0x24($v1)
/* E1884 8012B4C4 84440020 */  lh         $a0, 0x20($v0)
/* E1888 8012B4C8 8C420024 */  lw         $v0, 0x24($v0)
/* E188C 8012B4CC 0040F809 */  jalr       $v0
/* E1890 8012B4D0 00642021 */   addu      $a0, $v1, $a0
.Lrace_8012B4D4:
/* E1894 8012B4D4 8E431974 */  lw         $v1, 0x1974($s2)
/* E1898 8012B4D8 10600006 */  beqz       $v1, .Lrace_8012B4F4
/* E189C 8012B4DC 02602821 */   addu      $a1, $s3, $zero
/* E18A0 8012B4E0 8C620024 */  lw         $v0, 0x24($v1)
/* E18A4 8012B4E4 84440020 */  lh         $a0, 0x20($v0)
/* E18A8 8012B4E8 8C420024 */  lw         $v0, 0x24($v0)
/* E18AC 8012B4EC 0040F809 */  jalr       $v0
/* E18B0 8012B4F0 00642021 */   addu      $a0, $v1, $a0
.Lrace_8012B4F4:
/* E18B4 8012B4F4 8E420028 */  lw         $v0, 0x28($s2)
/* E18B8 8012B4F8 1040001B */  beqz       $v0, .Lrace_8012B568
/* E18BC 8012B4FC 00000000 */   nop
/* E18C0 8012B500 8E420034 */  lw         $v0, 0x34($s2)
/* E18C4 8012B504 1040000B */  beqz       $v0, .Lrace_8012B534
/* E18C8 8012B508 00008021 */   addu      $s0, $zero, $zero
/* E18CC 8012B50C 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012B510:
/* E18D0 8012B510 02602821 */  addu       $a1, $s3, $zero
/* E18D4 8012B514 8E440028 */  lw         $a0, 0x28($s2)
/* E18D8 8012B518 26100001 */  addiu      $s0, $s0, 0x1
/* E18DC 8012B51C 0C04A048 */  jal        func_race_80128120
/* E18E0 8012B520 00912021 */   addu      $a0, $a0, $s1
/* E18E4 8012B524 8E420034 */  lw         $v0, 0x34($s2)
/* E18E8 8012B528 0202102B */  sltu       $v0, $s0, $v0
/* E18EC 8012B52C 1440FFF8 */  bnez       $v0, .Lrace_8012B510
/* E18F0 8012B530 26310068 */   addiu     $s1, $s1, 0x68
.Lrace_8012B534:
/* E18F4 8012B534 8E420038 */  lw         $v0, 0x38($s2)
/* E18F8 8012B538 1040000B */  beqz       $v0, .Lrace_8012B568
/* E18FC 8012B53C 00008021 */   addu      $s0, $zero, $zero
/* E1900 8012B540 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012B544:
/* E1904 8012B544 02602821 */  addu       $a1, $s3, $zero
/* E1908 8012B548 8E44002C */  lw         $a0, 0x2C($s2)
/* E190C 8012B54C 26100001 */  addiu      $s0, $s0, 0x1
/* E1910 8012B550 0C048A40 */  jal        func_race_80122900
/* E1914 8012B554 00912021 */   addu      $a0, $a0, $s1
/* E1918 8012B558 8E420038 */  lw         $v0, 0x38($s2)
/* E191C 8012B55C 0202102B */  sltu       $v0, $s0, $v0
/* E1920 8012B560 1440FFF8 */  bnez       $v0, .Lrace_8012B544
/* E1924 8012B564 26310068 */   addiu     $s1, $s1, 0x68
.Lrace_8012B568:
/* E1928 8012B568 8FBF0020 */  lw         $ra, 0x20($sp)
/* E192C 8012B56C 8FB3001C */  lw         $s3, 0x1C($sp)
/* E1930 8012B570 8FB20018 */  lw         $s2, 0x18($sp)
/* E1934 8012B574 8FB10014 */  lw         $s1, 0x14($sp)
/* E1938 8012B578 8FB00010 */  lw         $s0, 0x10($sp)
/* E193C 8012B57C 03E00008 */  jr         $ra
/* E1940 8012B580 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8012B584
/* E1944 8012B584 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E1948 8012B588 AFB10014 */  sw         $s1, 0x14($sp)
/* E194C 8012B58C 00808821 */  addu       $s1, $a0, $zero
/* E1950 8012B590 AFB40020 */  sw         $s4, 0x20($sp)
/* E1954 8012B594 00A0A021 */  addu       $s4, $a1, $zero
/* E1958 8012B598 AFBF0030 */  sw         $ra, 0x30($sp)
/* E195C 8012B59C AFB7002C */  sw         $s7, 0x2C($sp)
/* E1960 8012B5A0 AFB60028 */  sw         $s6, 0x28($sp)
/* E1964 8012B5A4 AFB50024 */  sw         $s5, 0x24($sp)
/* E1968 8012B5A8 AFB3001C */  sw         $s3, 0x1C($sp)
/* E196C 8012B5AC AFB20018 */  sw         $s2, 0x18($sp)
/* E1970 8012B5B0 0C04AD16 */  jal        func_race_8012B458
/* E1974 8012B5B4 AFB00010 */   sw        $s0, 0x10($sp)
/* E1978 8012B5B8 3C01800D */  lui        $at, %hi(D_race_800CEDC8)
/* E197C 8012B5BC C420EDC8 */  lwc1       $f0, %lo(D_race_800CEDC8)($at)
/* E1980 8012B5C0 44941000 */  mtc1       $s4, $f2
/* E1984 8012B5C4 468010A0 */  cvt.s.w    $f2, $f2
/* E1988 8012B5C8 46001082 */  mul.s      $f2, $f2, $f0
/* E198C 8012B5CC C620199C */  lwc1       $f0, 0x199C($s1)
/* E1990 8012B5D0 46020000 */  add.s      $f0, $f0, $f2
/* E1994 8012B5D4 3C01800D */  lui        $at, %hi(D_race_800CEDCC)
/* E1998 8012B5D8 C422EDCC */  lwc1       $f2, %lo(D_race_800CEDCC)($at)
/* E199C 8012B5DC 4600103C */  c.lt.s     $f2, $f0
/* E19A0 8012B5E0 00000000 */  nop
/* E19A4 8012B5E4 45000003 */  bc1f       .Lrace_8012B5F4
/* E19A8 8012B5E8 E620199C */   swc1      $f0, 0x199C($s1)
/* E19AC 8012B5EC 46020001 */  sub.s      $f0, $f0, $f2
/* E19B0 8012B5F0 E620199C */  swc1       $f0, 0x199C($s1)
.Lrace_8012B5F4:
/* E19B4 8012B5F4 8E301880 */  lw         $s0, 0x1880($s1)
.Lrace_8012B5F8:
/* E19B8 8012B5F8 12000009 */  beqz       $s0, .Lrace_8012B620
/* E19BC 8012B5FC 02802821 */   addu      $a1, $s4, $zero
/* E19C0 8012B600 8E020000 */  lw         $v0, 0x0($s0)
/* E19C4 8012B604 84440018 */  lh         $a0, 0x18($v0)
/* E19C8 8012B608 8C42001C */  lw         $v0, 0x1C($v0)
/* E19CC 8012B60C 0040F809 */  jalr       $v0
/* E19D0 8012B610 02042021 */   addu      $a0, $s0, $a0
/* E19D4 8012B614 8E10000C */  lw         $s0, 0xC($s0)
/* E19D8 8012B618 0804AD7E */  j          .Lrace_8012B5F8
/* E19DC 8012B61C 00000000 */   nop
.Lrace_8012B620:
/* E19E0 8012B620 8E30193C */  lw         $s0, 0x193C($s1)
.Lrace_8012B624:
/* E19E4 8012B624 12000006 */  beqz       $s0, .Lrace_8012B640
/* E19E8 8012B628 02002021 */   addu      $a0, $s0, $zero
/* E19EC 8012B62C 0C03D0EA */  jal        func_race_800F43A8
/* E19F0 8012B630 02802821 */   addu      $a1, $s4, $zero
/* E19F4 8012B634 8E100284 */  lw         $s0, 0x284($s0)
/* E19F8 8012B638 0804AD89 */  j          .Lrace_8012B624
/* E19FC 8012B63C 00000000 */   nop
.Lrace_8012B640:
/* E1A00 8012B640 8E301940 */  lw         $s0, 0x1940($s1)
.Lrace_8012B644:
/* E1A04 8012B644 12000006 */  beqz       $s0, .Lrace_8012B660
/* E1A08 8012B648 02002021 */   addu      $a0, $s0, $zero
/* E1A0C 8012B64C 0C03D0EA */  jal        func_race_800F43A8
/* E1A10 8012B650 02802821 */   addu      $a1, $s4, $zero
/* E1A14 8012B654 8E100284 */  lw         $s0, 0x284($s0)
/* E1A18 8012B658 0804AD91 */  j          .Lrace_8012B644
/* E1A1C 8012B65C 00000000 */   nop
.Lrace_8012B660:
/* E1A20 8012B660 262418BC */  addiu      $a0, $s1, 0x18BC
/* E1A24 8012B664 0C0480B0 */  jal        func_race_801202C0
/* E1A28 8012B668 02802821 */   addu      $a1, $s4, $zero
/* E1A2C 8012B66C 00009821 */  addu       $s3, $zero, $zero
/* E1A30 8012B670 8E301880 */  lw         $s0, 0x1880($s1)
/* E1A34 8012B674 24160002 */  addiu      $s6, $zero, 0x2
/* E1A38 8012B678 24170001 */  addiu      $s7, $zero, 0x1
/* E1A3C 8012B67C 24150003 */  addiu      $s5, $zero, 0x3
.Lrace_8012B680:
/* E1A40 8012B680 1200006C */  beqz       $s0, .Lrace_8012B834
/* E1A44 8012B684 24030006 */   addiu     $v1, $zero, 0x6
/* E1A48 8012B688 8E020004 */  lw         $v0, 0x4($s0)
/* E1A4C 8012B68C 8E12000C */  lw         $s2, 0xC($s0)
/* E1A50 8012B690 54430066 */  bnel       $v0, $v1, .Lrace_8012B82C
/* E1A54 8012B694 02009821 */   addu      $s3, $s0, $zero
/* E1A58 8012B698 56600002 */  bnel       $s3, $zero, .Lrace_8012B6A4
/* E1A5C 8012B69C AE72000C */   sw        $s2, 0xC($s3)
/* E1A60 8012B6A0 AE321880 */  sw         $s2, 0x1880($s1)
.Lrace_8012B6A4:
/* E1A64 8012B6A4 8E020000 */  lw         $v0, 0x0($s0)
/* E1A68 8012B6A8 84440040 */  lh         $a0, 0x40($v0)
/* E1A6C 8012B6AC 8C420044 */  lw         $v0, 0x44($v0)
/* E1A70 8012B6B0 0040F809 */  jalr       $v0
/* E1A74 8012B6B4 02042021 */   addu      $a0, $s0, $a0
/* E1A78 8012B6B8 8E020000 */  lw         $v0, 0x0($s0)
/* E1A7C 8012B6BC 84440038 */  lh         $a0, 0x38($v0)
/* E1A80 8012B6C0 8C42003C */  lw         $v0, 0x3C($v0)
/* E1A84 8012B6C4 0040F809 */  jalr       $v0
/* E1A88 8012B6C8 02042021 */   addu      $a0, $s0, $a0
/* E1A8C 8012B6CC 00401821 */  addu       $v1, $v0, $zero
/* E1A90 8012B6D0 10760043 */  beq        $v1, $s6, .Lrace_8012B7E0
/* E1A94 8012B6D4 28620003 */   slti      $v0, $v1, 0x3
/* E1A98 8012B6D8 10400005 */  beqz       $v0, .Lrace_8012B6F0
/* E1A9C 8012B6DC 00000000 */   nop
/* E1AA0 8012B6E0 10770009 */  beq        $v1, $s7, .Lrace_8012B708
/* E1AA4 8012B6E4 00000000 */   nop
/* E1AA8 8012B6E8 0804ADA0 */  j          .Lrace_8012B680
/* E1AAC 8012B6EC 02408021 */   addu      $s0, $s2, $zero
.Lrace_8012B6F0:
/* E1AB0 8012B6F0 1075003F */  beq        $v1, $s5, .Lrace_8012B7F0
/* E1AB4 8012B6F4 24020004 */   addiu     $v0, $zero, 0x4
/* E1AB8 8012B6F8 1062001E */  beq        $v1, $v0, .Lrace_8012B774
/* E1ABC 8012B6FC 00000000 */   nop
/* E1AC0 8012B700 0804ADA0 */  j          .Lrace_8012B680
/* E1AC4 8012B704 02408021 */   addu      $s0, $s2, $zero
.Lrace_8012B708:
/* E1AC8 8012B708 8E020014 */  lw         $v0, 0x14($s0)
/* E1ACC 8012B70C 1043000D */  beq        $v0, $v1, .Lrace_8012B744
/* E1AD0 8012B710 00000000 */   nop
/* E1AD4 8012B714 10400007 */  beqz       $v0, .Lrace_8012B734
/* E1AD8 8012B718 00000000 */   nop
/* E1ADC 8012B71C 1056000D */  beq        $v0, $s6, .Lrace_8012B754
/* E1AE0 8012B720 00000000 */   nop
/* E1AE4 8012B724 1055000F */  beq        $v0, $s5, .Lrace_8012B764
/* E1AE8 8012B728 00000000 */   nop
/* E1AEC 8012B72C 0804ADA0 */  j          .Lrace_8012B680
/* E1AF0 8012B730 02408021 */   addu      $s0, $s2, $zero
.Lrace_8012B734:
/* E1AF4 8012B734 8E220088 */  lw         $v0, 0x88($s1)
/* E1AF8 8012B738 AE02000C */  sw         $v0, 0xC($s0)
/* E1AFC 8012B73C 0804AE0B */  j          .Lrace_8012B82C
/* E1B00 8012B740 AE300088 */   sw        $s0, 0x88($s1)
.Lrace_8012B744:
/* E1B04 8012B744 8E22008C */  lw         $v0, 0x8C($s1)
/* E1B08 8012B748 AE02000C */  sw         $v0, 0xC($s0)
/* E1B0C 8012B74C 0804AE0B */  j          .Lrace_8012B82C
/* E1B10 8012B750 AE30008C */   sw        $s0, 0x8C($s1)
.Lrace_8012B754:
/* E1B14 8012B754 8E220090 */  lw         $v0, 0x90($s1)
/* E1B18 8012B758 AE02000C */  sw         $v0, 0xC($s0)
/* E1B1C 8012B75C 0804AE0B */  j          .Lrace_8012B82C
/* E1B20 8012B760 AE300090 */   sw        $s0, 0x90($s1)
.Lrace_8012B764:
/* E1B24 8012B764 8E220094 */  lw         $v0, 0x94($s1)
/* E1B28 8012B768 AE02000C */  sw         $v0, 0xC($s0)
/* E1B2C 8012B76C 0804AE0B */  j          .Lrace_8012B82C
/* E1B30 8012B770 AE300094 */   sw        $s0, 0x94($s1)
.Lrace_8012B774:
/* E1B34 8012B774 8E020014 */  lw         $v0, 0x14($s0)
/* E1B38 8012B778 1057000D */  beq        $v0, $s7, .Lrace_8012B7B0
/* E1B3C 8012B77C 00000000 */   nop
/* E1B40 8012B780 10400007 */  beqz       $v0, .Lrace_8012B7A0
/* E1B44 8012B784 00000000 */   nop
/* E1B48 8012B788 1056000D */  beq        $v0, $s6, .Lrace_8012B7C0
/* E1B4C 8012B78C 00000000 */   nop
/* E1B50 8012B790 1055000F */  beq        $v0, $s5, .Lrace_8012B7D0
/* E1B54 8012B794 00000000 */   nop
/* E1B58 8012B798 0804ADA0 */  j          .Lrace_8012B680
/* E1B5C 8012B79C 02408021 */   addu      $s0, $s2, $zero
.Lrace_8012B7A0:
/* E1B60 8012B7A0 8E22007C */  lw         $v0, 0x7C($s1)
/* E1B64 8012B7A4 AE02000C */  sw         $v0, 0xC($s0)
/* E1B68 8012B7A8 0804AE0B */  j          .Lrace_8012B82C
/* E1B6C 8012B7AC AE30007C */   sw        $s0, 0x7C($s1)
.Lrace_8012B7B0:
/* E1B70 8012B7B0 8E220080 */  lw         $v0, 0x80($s1)
/* E1B74 8012B7B4 AE02000C */  sw         $v0, 0xC($s0)
/* E1B78 8012B7B8 0804AE0B */  j          .Lrace_8012B82C
/* E1B7C 8012B7BC AE300080 */   sw        $s0, 0x80($s1)
.Lrace_8012B7C0:
/* E1B80 8012B7C0 8E220078 */  lw         $v0, 0x78($s1)
/* E1B84 8012B7C4 AE02000C */  sw         $v0, 0xC($s0)
/* E1B88 8012B7C8 0804AE0B */  j          .Lrace_8012B82C
/* E1B8C 8012B7CC AE300078 */   sw        $s0, 0x78($s1)
.Lrace_8012B7D0:
/* E1B90 8012B7D0 8E220084 */  lw         $v0, 0x84($s1)
/* E1B94 8012B7D4 AE02000C */  sw         $v0, 0xC($s0)
/* E1B98 8012B7D8 0804AE0B */  j          .Lrace_8012B82C
/* E1B9C 8012B7DC AE300084 */   sw        $s0, 0x84($s1)
.Lrace_8012B7E0:
/* E1BA0 8012B7E0 8E220098 */  lw         $v0, 0x98($s1)
/* E1BA4 8012B7E4 AE02000C */  sw         $v0, 0xC($s0)
/* E1BA8 8012B7E8 0804AE0B */  j          .Lrace_8012B82C
/* E1BAC 8012B7EC AE300098 */   sw        $s0, 0x98($s1)
.Lrace_8012B7F0:
/* E1BB0 8012B7F0 8E040014 */  lw         $a0, 0x14($s0)
/* E1BB4 8012B7F4 2C820003 */  sltiu      $v0, $a0, 0x3
/* E1BB8 8012B7F8 14400005 */  bnez       $v0, .Lrace_8012B810
/* E1BBC 8012B7FC 00000000 */   nop
/* E1BC0 8012B800 10830007 */  beq        $a0, $v1, .Lrace_8012B820
/* E1BC4 8012B804 00000000 */   nop
/* E1BC8 8012B808 0804ADA0 */  j          .Lrace_8012B680
/* E1BCC 8012B80C 02408021 */   addu      $s0, $s2, $zero
.Lrace_8012B810:
/* E1BD0 8012B810 8E22009C */  lw         $v0, 0x9C($s1)
/* E1BD4 8012B814 AE02000C */  sw         $v0, 0xC($s0)
/* E1BD8 8012B818 0804AE0B */  j          .Lrace_8012B82C
/* E1BDC 8012B81C AE30009C */   sw        $s0, 0x9C($s1)
.Lrace_8012B820:
/* E1BE0 8012B820 8E2200A0 */  lw         $v0, 0xA0($s1)
/* E1BE4 8012B824 AE02000C */  sw         $v0, 0xC($s0)
/* E1BE8 8012B828 AE3000A0 */  sw         $s0, 0xA0($s1)
.Lrace_8012B82C:
/* E1BEC 8012B82C 0804ADA0 */  j          .Lrace_8012B680
/* E1BF0 8012B830 02408021 */   addu      $s0, $s2, $zero
.Lrace_8012B834:
/* E1BF4 8012B834 8E30193C */  lw         $s0, 0x193C($s1)
/* E1BF8 8012B838 00002021 */  addu       $a0, $zero, $zero
/* E1BFC 8012B83C 24050001 */  addiu      $a1, $zero, 0x1
.Lrace_8012B840:
/* E1C00 8012B840 5200000D */  beql       $s0, $zero, .Lrace_8012B878
/* E1C04 8012B844 00002021 */   addu      $a0, $zero, $zero
/* E1C08 8012B848 8E020004 */  lw         $v0, 0x4($s0)
/* E1C0C 8012B84C 8E030284 */  lw         $v1, 0x284($s0)
/* E1C10 8012B850 54450007 */  bnel       $v0, $a1, .Lrace_8012B870
/* E1C14 8012B854 02002021 */   addu      $a0, $s0, $zero
/* E1C18 8012B858 54800002 */  bnel       $a0, $zero, .Lrace_8012B864
/* E1C1C 8012B85C AC830284 */   sw        $v1, 0x284($a0)
/* E1C20 8012B860 AE23193C */  sw         $v1, 0x193C($s1)
.Lrace_8012B864:
/* E1C24 8012B864 8E221944 */  lw         $v0, 0x1944($s1)
/* E1C28 8012B868 AE020284 */  sw         $v0, 0x284($s0)
/* E1C2C 8012B86C AE301944 */  sw         $s0, 0x1944($s1)
.Lrace_8012B870:
/* E1C30 8012B870 0804AE10 */  j          .Lrace_8012B840
/* E1C34 8012B874 00608021 */   addu      $s0, $v1, $zero
.Lrace_8012B878:
/* E1C38 8012B878 8E301940 */  lw         $s0, 0x1940($s1)
/* E1C3C 8012B87C 24050001 */  addiu      $a1, $zero, 0x1
.Lrace_8012B880:
/* E1C40 8012B880 1200000D */  beqz       $s0, .Lrace_8012B8B8
/* E1C44 8012B884 00000000 */   nop
/* E1C48 8012B888 8E020004 */  lw         $v0, 0x4($s0)
/* E1C4C 8012B88C 8E030284 */  lw         $v1, 0x284($s0)
/* E1C50 8012B890 54450007 */  bnel       $v0, $a1, .Lrace_8012B8B0
/* E1C54 8012B894 02002021 */   addu      $a0, $s0, $zero
/* E1C58 8012B898 54800002 */  bnel       $a0, $zero, .Lrace_8012B8A4
/* E1C5C 8012B89C AC830284 */   sw        $v1, 0x284($a0)
/* E1C60 8012B8A0 AE231940 */  sw         $v1, 0x1940($s1)
.Lrace_8012B8A4:
/* E1C64 8012B8A4 8E221948 */  lw         $v0, 0x1948($s1)
/* E1C68 8012B8A8 AE020284 */  sw         $v0, 0x284($s0)
/* E1C6C 8012B8AC AE301948 */  sw         $s0, 0x1948($s1)
.Lrace_8012B8B0:
/* E1C70 8012B8B0 0804AE20 */  j          .Lrace_8012B880
/* E1C74 8012B8B4 00608021 */   addu      $s0, $v1, $zero
.Lrace_8012B8B8:
/* E1C78 8012B8B8 8E240060 */  lw         $a0, 0x60($s1)
/* E1C7C 8012B8BC 10800003 */  beqz       $a0, .Lrace_8012B8CC
/* E1C80 8012B8C0 00000000 */   nop
/* E1C84 8012B8C4 0C0190C0 */  jal        func_80064300
/* E1C88 8012B8C8 02802821 */   addu      $a1, $s4, $zero
.Lrace_8012B8CC:
/* E1C8C 8012B8CC 8E251958 */  lw         $a1, 0x1958($s1)
/* E1C90 8012B8D0 10A00004 */  beqz       $a1, .Lrace_8012B8E4
/* E1C94 8012B8D4 02202021 */   addu      $a0, $s1, $zero
/* E1C98 8012B8D8 00003021 */  addu       $a2, $zero, $zero
/* E1C9C 8012B8DC 0C04B413 */  jal        func_race_8012D04C
/* E1CA0 8012B8E0 24070003 */   addiu     $a3, $zero, 0x3
.Lrace_8012B8E4:
/* E1CA4 8012B8E4 8E25195C */  lw         $a1, 0x195C($s1)
/* E1CA8 8012B8E8 10A00004 */  beqz       $a1, .Lrace_8012B8FC
/* E1CAC 8012B8EC 02202021 */   addu      $a0, $s1, $zero
/* E1CB0 8012B8F0 24060003 */  addiu      $a2, $zero, 0x3
/* E1CB4 8012B8F4 0C04B413 */  jal        func_race_8012D04C
/* E1CB8 8012B8F8 00C03821 */   addu      $a3, $a2, $zero
.Lrace_8012B8FC:
/* E1CBC 8012B8FC 8E251960 */  lw         $a1, 0x1960($s1)
/* E1CC0 8012B900 10A00004 */  beqz       $a1, .Lrace_8012B914
/* E1CC4 8012B904 02202021 */   addu      $a0, $s1, $zero
/* E1CC8 8012B908 24060001 */  addiu      $a2, $zero, 0x1
/* E1CCC 8012B90C 0C04B413 */  jal        func_race_8012D04C
/* E1CD0 8012B910 24070003 */   addiu     $a3, $zero, 0x3
.Lrace_8012B914:
/* E1CD4 8012B914 8E251964 */  lw         $a1, 0x1964($s1)
/* E1CD8 8012B918 10A00004 */  beqz       $a1, .Lrace_8012B92C
/* E1CDC 8012B91C 02202021 */   addu      $a0, $s1, $zero
/* E1CE0 8012B920 24060001 */  addiu      $a2, $zero, 0x1
/* E1CE4 8012B924 0C04B413 */  jal        func_race_8012D04C
/* E1CE8 8012B928 24070004 */   addiu     $a3, $zero, 0x4
.Lrace_8012B92C:
/* E1CEC 8012B92C 8FBF0030 */  lw         $ra, 0x30($sp)
/* E1CF0 8012B930 8FB7002C */  lw         $s7, 0x2C($sp)
/* E1CF4 8012B934 8FB60028 */  lw         $s6, 0x28($sp)
/* E1CF8 8012B938 8FB50024 */  lw         $s5, 0x24($sp)
/* E1CFC 8012B93C 8FB40020 */  lw         $s4, 0x20($sp)
/* E1D00 8012B940 8FB3001C */  lw         $s3, 0x1C($sp)
/* E1D04 8012B944 8FB20018 */  lw         $s2, 0x18($sp)
/* E1D08 8012B948 8FB10014 */  lw         $s1, 0x14($sp)
/* E1D0C 8012B94C 8FB00010 */  lw         $s0, 0x10($sp)
/* E1D10 8012B950 03E00008 */  jr         $ra
/* E1D14 8012B954 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8012B958
/* E1D18 8012B958 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E1D1C 8012B95C AFB20018 */  sw         $s2, 0x18($sp)
/* E1D20 8012B960 00809021 */  addu       $s2, $a0, $zero
/* E1D24 8012B964 AFB3001C */  sw         $s3, 0x1C($sp)
/* E1D28 8012B968 00A09821 */  addu       $s3, $a1, $zero
/* E1D2C 8012B96C AFBF0024 */  sw         $ra, 0x24($sp)
/* E1D30 8012B970 AFB40020 */  sw         $s4, 0x20($sp)
/* E1D34 8012B974 AFB10014 */  sw         $s1, 0x14($sp)
/* E1D38 8012B978 16600024 */  bnez       $s3, .Lrace_8012BA0C
/* E1D3C 8012B97C AFB00010 */   sw        $s0, 0x10($sp)
/* E1D40 8012B980 8E420034 */  lw         $v0, 0x34($s2)
/* E1D44 8012B984 0262102B */  sltu       $v0, $s3, $v0
/* E1D48 8012B988 1040000F */  beqz       $v0, .Lrace_8012B9C8
/* E1D4C 8012B98C 00008021 */   addu      $s0, $zero, $zero
/* E1D50 8012B990 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012B994:
/* E1D54 8012B994 8E440028 */  lw         $a0, 0x28($s2)
/* E1D58 8012B998 26100001 */  addiu      $s0, $s0, 0x1
/* E1D5C 8012B99C 02242021 */  addu       $a0, $s1, $a0
/* E1D60 8012B9A0 8C820000 */  lw         $v0, 0x0($a0)
/* E1D64 8012B9A4 8E450004 */  lw         $a1, 0x4($s2)
/* E1D68 8012B9A8 84430028 */  lh         $v1, 0x28($v0)
/* E1D6C 8012B9AC 8C42002C */  lw         $v0, 0x2C($v0)
/* E1D70 8012B9B0 0040F809 */  jalr       $v0
/* E1D74 8012B9B4 00832021 */   addu      $a0, $a0, $v1
/* E1D78 8012B9B8 8E420034 */  lw         $v0, 0x34($s2)
/* E1D7C 8012B9BC 0202102B */  sltu       $v0, $s0, $v0
/* E1D80 8012B9C0 1440FFF4 */  bnez       $v0, .Lrace_8012B994
/* E1D84 8012B9C4 26310068 */   addiu     $s1, $s1, 0x68
.Lrace_8012B9C8:
/* E1D88 8012B9C8 8E420038 */  lw         $v0, 0x38($s2)
/* E1D8C 8012B9CC 1040000F */  beqz       $v0, .Lrace_8012BA0C
/* E1D90 8012B9D0 00008021 */   addu      $s0, $zero, $zero
/* E1D94 8012B9D4 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012B9D8:
/* E1D98 8012B9D8 8E44002C */  lw         $a0, 0x2C($s2)
/* E1D9C 8012B9DC 26100001 */  addiu      $s0, $s0, 0x1
/* E1DA0 8012B9E0 02242021 */  addu       $a0, $s1, $a0
/* E1DA4 8012B9E4 8C820000 */  lw         $v0, 0x0($a0)
/* E1DA8 8012B9E8 8E450004 */  lw         $a1, 0x4($s2)
/* E1DAC 8012B9EC 84430028 */  lh         $v1, 0x28($v0)
/* E1DB0 8012B9F0 8C42002C */  lw         $v0, 0x2C($v0)
/* E1DB4 8012B9F4 0040F809 */  jalr       $v0
/* E1DB8 8012B9F8 00832021 */   addu      $a0, $a0, $v1
/* E1DBC 8012B9FC 8E420038 */  lw         $v0, 0x38($s2)
/* E1DC0 8012BA00 0202102B */  sltu       $v0, $s0, $v0
/* E1DC4 8012BA04 1440FFF4 */  bnez       $v0, .Lrace_8012B9D8
/* E1DC8 8012BA08 26310068 */   addiu     $s1, $s1, 0x68
.Lrace_8012BA0C:
/* E1DCC 8012BA0C 8E501880 */  lw         $s0, 0x1880($s2)
/* E1DD0 8012BA10 24140003 */  addiu      $s4, $zero, 0x3
.Lrace_8012BA14:
/* E1DD4 8012BA14 12000018 */  beqz       $s0, .Lrace_8012BA78
/* E1DD8 8012BA18 00000000 */   nop
/* E1DDC 8012BA1C 1260000D */  beqz       $s3, .Lrace_8012BA54
/* E1DE0 8012BA20 00008821 */   addu      $s1, $zero, $zero
/* E1DE4 8012BA24 8E020000 */  lw         $v0, 0x0($s0)
/* E1DE8 8012BA28 84440038 */  lh         $a0, 0x38($v0)
/* E1DEC 8012BA2C 8C42003C */  lw         $v0, 0x3C($v0)
/* E1DF0 8012BA30 0040F809 */  jalr       $v0
/* E1DF4 8012BA34 02042021 */   addu      $a0, $s0, $a0
/* E1DF8 8012BA38 14540004 */  bne        $v0, $s4, .Lrace_8012BA4C
/* E1DFC 8012BA3C 00000000 */   nop
/* E1E00 8012BA40 8E020014 */  lw         $v0, 0x14($s0)
/* E1E04 8012BA44 38420003 */  xori       $v0, $v0, 0x3
/* E1E08 8012BA48 2C510001 */  sltiu      $s1, $v0, 0x1
.Lrace_8012BA4C:
/* E1E0C 8012BA4C 12200007 */  beqz       $s1, .Lrace_8012BA6C
/* E1E10 8012BA50 00000000 */   nop
.Lrace_8012BA54:
/* E1E14 8012BA54 8E020000 */  lw         $v0, 0x0($s0)
/* E1E18 8012BA58 8E450004 */  lw         $a1, 0x4($s2)
/* E1E1C 8012BA5C 84440020 */  lh         $a0, 0x20($v0)
/* E1E20 8012BA60 8C420024 */  lw         $v0, 0x24($v0)
/* E1E24 8012BA64 0040F809 */  jalr       $v0
/* E1E28 8012BA68 02042021 */   addu      $a0, $s0, $a0
.Lrace_8012BA6C:
/* E1E2C 8012BA6C 8E10000C */  lw         $s0, 0xC($s0)
/* E1E30 8012BA70 0804AE85 */  j          .Lrace_8012BA14
/* E1E34 8012BA74 00000000 */   nop
.Lrace_8012BA78:
/* E1E38 8012BA78 16600013 */  bnez       $s3, .Lrace_8012BAC8
/* E1E3C 8012BA7C 00000000 */   nop
/* E1E40 8012BA80 8E50193C */  lw         $s0, 0x193C($s2)
.Lrace_8012BA84:
/* E1E44 8012BA84 12000007 */  beqz       $s0, .Lrace_8012BAA4
/* E1E48 8012BA88 00000000 */   nop
/* E1E4C 8012BA8C 8E450004 */  lw         $a1, 0x4($s2)
/* E1E50 8012BA90 0C03D1C8 */  jal        func_race_800F4720
/* E1E54 8012BA94 02002021 */   addu      $a0, $s0, $zero
/* E1E58 8012BA98 8E100284 */  lw         $s0, 0x284($s0)
/* E1E5C 8012BA9C 0804AEA1 */  j          .Lrace_8012BA84
/* E1E60 8012BAA0 00000000 */   nop
.Lrace_8012BAA4:
/* E1E64 8012BAA4 8E501940 */  lw         $s0, 0x1940($s2)
.Lrace_8012BAA8:
/* E1E68 8012BAA8 12000007 */  beqz       $s0, .Lrace_8012BAC8
/* E1E6C 8012BAAC 00000000 */   nop
/* E1E70 8012BAB0 8E450004 */  lw         $a1, 0x4($s2)
/* E1E74 8012BAB4 0C03D1C8 */  jal        func_race_800F4720
/* E1E78 8012BAB8 02002021 */   addu      $a0, $s0, $zero
/* E1E7C 8012BABC 8E100284 */  lw         $s0, 0x284($s0)
/* E1E80 8012BAC0 0804AEAA */  j          .Lrace_8012BAA8
/* E1E84 8012BAC4 00000000 */   nop
.Lrace_8012BAC8:
/* E1E88 8012BAC8 8E450004 */  lw         $a1, 0x4($s2)
/* E1E8C 8012BACC 0C0480D5 */  jal        func_race_80120354
/* E1E90 8012BAD0 264418BC */   addiu     $a0, $s2, 0x18BC
/* E1E94 8012BAD4 8FBF0024 */  lw         $ra, 0x24($sp)
/* E1E98 8012BAD8 8FB40020 */  lw         $s4, 0x20($sp)
/* E1E9C 8012BADC 8FB3001C */  lw         $s3, 0x1C($sp)
/* E1EA0 8012BAE0 8FB20018 */  lw         $s2, 0x18($sp)
/* E1EA4 8012BAE4 8FB10014 */  lw         $s1, 0x14($sp)
/* E1EA8 8012BAE8 8FB00010 */  lw         $s0, 0x10($sp)
/* E1EAC 8012BAEC 03E00008 */  jr         $ra
/* E1EB0 8012BAF0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8012BAF4
/* E1EB4 8012BAF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E1EB8 8012BAF8 AFB20018 */  sw         $s2, 0x18($sp)
/* E1EBC 8012BAFC 00809021 */  addu       $s2, $a0, $zero
/* E1EC0 8012BB00 AFBF001C */  sw         $ra, 0x1C($sp)
/* E1EC4 8012BB04 AFB10014 */  sw         $s1, 0x14($sp)
/* E1EC8 8012BB08 AFB00010 */  sw         $s0, 0x10($sp)
/* E1ECC 8012BB0C 8E420034 */  lw         $v0, 0x34($s2)
/* E1ED0 8012BB10 1040000F */  beqz       $v0, .Lrace_8012BB50
/* E1ED4 8012BB14 00008021 */   addu      $s0, $zero, $zero
/* E1ED8 8012BB18 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012BB1C:
/* E1EDC 8012BB1C 8E440028 */  lw         $a0, 0x28($s2)
/* E1EE0 8012BB20 26100001 */  addiu      $s0, $s0, 0x1
/* E1EE4 8012BB24 02242021 */  addu       $a0, $s1, $a0
/* E1EE8 8012BB28 8C820000 */  lw         $v0, 0x0($a0)
/* E1EEC 8012BB2C 8E450004 */  lw         $a1, 0x4($s2)
/* E1EF0 8012BB30 84430030 */  lh         $v1, 0x30($v0)
/* E1EF4 8012BB34 8C420034 */  lw         $v0, 0x34($v0)
/* E1EF8 8012BB38 0040F809 */  jalr       $v0
/* E1EFC 8012BB3C 00832021 */   addu      $a0, $a0, $v1
/* E1F00 8012BB40 8E420034 */  lw         $v0, 0x34($s2)
/* E1F04 8012BB44 0202102B */  sltu       $v0, $s0, $v0
/* E1F08 8012BB48 1440FFF4 */  bnez       $v0, .Lrace_8012BB1C
/* E1F0C 8012BB4C 26310068 */   addiu     $s1, $s1, 0x68
.Lrace_8012BB50:
/* E1F10 8012BB50 8E420038 */  lw         $v0, 0x38($s2)
/* E1F14 8012BB54 1040000F */  beqz       $v0, .Lrace_8012BB94
/* E1F18 8012BB58 00008021 */   addu      $s0, $zero, $zero
/* E1F1C 8012BB5C 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012BB60:
/* E1F20 8012BB60 8E44002C */  lw         $a0, 0x2C($s2)
/* E1F24 8012BB64 26100001 */  addiu      $s0, $s0, 0x1
/* E1F28 8012BB68 02242021 */  addu       $a0, $s1, $a0
/* E1F2C 8012BB6C 8C820000 */  lw         $v0, 0x0($a0)
/* E1F30 8012BB70 8E450004 */  lw         $a1, 0x4($s2)
/* E1F34 8012BB74 84430030 */  lh         $v1, 0x30($v0)
/* E1F38 8012BB78 8C420034 */  lw         $v0, 0x34($v0)
/* E1F3C 8012BB7C 0040F809 */  jalr       $v0
/* E1F40 8012BB80 00832021 */   addu      $a0, $a0, $v1
/* E1F44 8012BB84 8E420038 */  lw         $v0, 0x38($s2)
/* E1F48 8012BB88 0202102B */  sltu       $v0, $s0, $v0
/* E1F4C 8012BB8C 1440FFF4 */  bnez       $v0, .Lrace_8012BB60
/* E1F50 8012BB90 26310068 */   addiu     $s1, $s1, 0x68
.Lrace_8012BB94:
/* E1F54 8012BB94 8E501880 */  lw         $s0, 0x1880($s2)
.Lrace_8012BB98:
/* E1F58 8012BB98 1200000A */  beqz       $s0, .Lrace_8012BBC4
/* E1F5C 8012BB9C 00000000 */   nop
/* E1F60 8012BBA0 8E020000 */  lw         $v0, 0x0($s0)
/* E1F64 8012BBA4 8E450004 */  lw         $a1, 0x4($s2)
/* E1F68 8012BBA8 84440028 */  lh         $a0, 0x28($v0)
/* E1F6C 8012BBAC 8C42002C */  lw         $v0, 0x2C($v0)
/* E1F70 8012BBB0 0040F809 */  jalr       $v0
/* E1F74 8012BBB4 02042021 */   addu      $a0, $s0, $a0
/* E1F78 8012BBB8 8E10000C */  lw         $s0, 0xC($s0)
/* E1F7C 8012BBBC 0804AEE6 */  j          .Lrace_8012BB98
/* E1F80 8012BBC0 00000000 */   nop
.Lrace_8012BBC4:
/* E1F84 8012BBC4 8E50193C */  lw         $s0, 0x193C($s2)
.Lrace_8012BBC8:
/* E1F88 8012BBC8 12000007 */  beqz       $s0, .Lrace_8012BBE8
/* E1F8C 8012BBCC 00000000 */   nop
/* E1F90 8012BBD0 8E450004 */  lw         $a1, 0x4($s2)
/* E1F94 8012BBD4 0C03D1CA */  jal        func_race_800F4728
/* E1F98 8012BBD8 02002021 */   addu      $a0, $s0, $zero
/* E1F9C 8012BBDC 8E100284 */  lw         $s0, 0x284($s0)
/* E1FA0 8012BBE0 0804AEF2 */  j          .Lrace_8012BBC8
/* E1FA4 8012BBE4 00000000 */   nop
.Lrace_8012BBE8:
/* E1FA8 8012BBE8 8E501940 */  lw         $s0, 0x1940($s2)
.Lrace_8012BBEC:
/* E1FAC 8012BBEC 12000007 */  beqz       $s0, .Lrace_8012BC0C
/* E1FB0 8012BBF0 00000000 */   nop
/* E1FB4 8012BBF4 8E450004 */  lw         $a1, 0x4($s2)
/* E1FB8 8012BBF8 0C03D1CA */  jal        func_race_800F4728
/* E1FBC 8012BBFC 02002021 */   addu      $a0, $s0, $zero
/* E1FC0 8012BC00 8E100284 */  lw         $s0, 0x284($s0)
/* E1FC4 8012BC04 0804AEFB */  j          .Lrace_8012BBEC
/* E1FC8 8012BC08 00000000 */   nop
.Lrace_8012BC0C:
/* E1FCC 8012BC0C 8FBF001C */  lw         $ra, 0x1C($sp)
/* E1FD0 8012BC10 8FB20018 */  lw         $s2, 0x18($sp)
/* E1FD4 8012BC14 8FB10014 */  lw         $s1, 0x14($sp)
/* E1FD8 8012BC18 8FB00010 */  lw         $s0, 0x10($sp)
/* E1FDC 8012BC1C 03E00008 */  jr         $ra
/* E1FE0 8012BC20 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012BC24
/* E1FE4 8012BC24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E1FE8 8012BC28 24020001 */  addiu      $v0, $zero, 0x1
/* E1FEC 8012BC2C 10C2000D */  beq        $a2, $v0, .Lrace_8012BC64
/* E1FF0 8012BC30 AFBF0010 */   sw        $ra, 0x10($sp)
/* E1FF4 8012BC34 10C00007 */  beqz       $a2, .Lrace_8012BC54
/* E1FF8 8012BC38 24020002 */   addiu     $v0, $zero, 0x2
/* E1FFC 8012BC3C 10C2000D */  beq        $a2, $v0, .Lrace_8012BC74
/* E2000 8012BC40 24020003 */   addiu     $v0, $zero, 0x3
/* E2004 8012BC44 10C2000F */  beq        $a2, $v0, .Lrace_8012BC84
/* E2008 8012BC48 00000000 */   nop
/* E200C 8012BC4C 0804AF23 */  j          .Lrace_8012BC8C
/* E2010 8012BC50 00000000 */   nop
.Lrace_8012BC54:
/* E2014 8012BC54 0C04AF4E */  jal        func_race_8012BD38
/* E2018 8012BC58 00000000 */   nop
/* E201C 8012BC5C 0804AF23 */  j          .Lrace_8012BC8C
/* E2020 8012BC60 00000000 */   nop
.Lrace_8012BC64:
/* E2024 8012BC64 0C04AFAB */  jal        func_race_8012BEAC
/* E2028 8012BC68 24060001 */   addiu     $a2, $zero, 0x1
/* E202C 8012BC6C 0804AF23 */  j          .Lrace_8012BC8C
/* E2030 8012BC70 00000000 */   nop
.Lrace_8012BC74:
/* E2034 8012BC74 0C04B01D */  jal        func_race_8012C074
/* E2038 8012BC78 24060002 */   addiu     $a2, $zero, 0x2
/* E203C 8012BC7C 0804AF23 */  j          .Lrace_8012BC8C
/* E2040 8012BC80 00000000 */   nop
.Lrace_8012BC84:
/* E2044 8012BC84 0C04B143 */  jal        func_race_8012C50C
/* E2048 8012BC88 24060003 */   addiu     $a2, $zero, 0x3
.Lrace_8012BC8C:
/* E204C 8012BC8C 8FBF0010 */  lw         $ra, 0x10($sp)
/* E2050 8012BC90 03E00008 */  jr         $ra
/* E2054 8012BC94 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012BC98
/* E2058 8012BC98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E205C 8012BC9C 24020001 */  addiu      $v0, $zero, 0x1
/* E2060 8012BCA0 10C2000D */  beq        $a2, $v0, .Lrace_8012BCD8
/* E2064 8012BCA4 AFBF0010 */   sw        $ra, 0x10($sp)
/* E2068 8012BCA8 10C00007 */  beqz       $a2, .Lrace_8012BCC8
/* E206C 8012BCAC 24020002 */   addiu     $v0, $zero, 0x2
/* E2070 8012BCB0 10C2000D */  beq        $a2, $v0, .Lrace_8012BCE8
/* E2074 8012BCB4 24020003 */   addiu     $v0, $zero, 0x3
/* E2078 8012BCB8 10C20015 */  beq        $a2, $v0, .Lrace_8012BD10
/* E207C 8012BCBC 24020019 */   addiu     $v0, $zero, 0x19
/* E2080 8012BCC0 0804AF4B */  j          .Lrace_8012BD2C
/* E2084 8012BCC4 00000000 */   nop
.Lrace_8012BCC8:
/* E2088 8012BCC8 0C04B041 */  jal        func_race_8012C104
/* E208C 8012BCCC 00000000 */   nop
/* E2090 8012BCD0 0804AF4B */  j          .Lrace_8012BD2C
/* E2094 8012BCD4 00000000 */   nop
.Lrace_8012BCD8:
/* E2098 8012BCD8 0C04B064 */  jal        func_race_8012C190
/* E209C 8012BCDC 24060001 */   addiu     $a2, $zero, 0x1
/* E20A0 8012BCE0 0804AF4B */  j          .Lrace_8012BD2C
/* E20A4 8012BCE4 00000000 */   nop
.Lrace_8012BCE8:
/* E20A8 8012BCE8 8C83187C */  lw         $v1, 0x187C($a0)
/* E20AC 8012BCEC 24020019 */  addiu      $v0, $zero, 0x19
/* E20B0 8012BCF0 00431023 */  subu       $v0, $v0, $v1
/* E20B4 8012BCF4 2C420003 */  sltiu      $v0, $v0, 0x3
/* E20B8 8012BCF8 1440000C */  bnez       $v0, .Lrace_8012BD2C
/* E20BC 8012BCFC 00000000 */   nop
/* E20C0 8012BD00 0C04B0AD */  jal        func_race_8012C2B4
/* E20C4 8012BD04 24060002 */   addiu     $a2, $zero, 0x2
/* E20C8 8012BD08 0804AF4B */  j          .Lrace_8012BD2C
/* E20CC 8012BD0C 00000000 */   nop
.Lrace_8012BD10:
/* E20D0 8012BD10 8C83187C */  lw         $v1, 0x187C($a0)
/* E20D4 8012BD14 00431023 */  subu       $v0, $v0, $v1
/* E20D8 8012BD18 2C420003 */  sltiu      $v0, $v0, 0x3
/* E20DC 8012BD1C 14400003 */  bnez       $v0, .Lrace_8012BD2C
/* E20E0 8012BD20 00000000 */   nop
/* E20E4 8012BD24 0C04B0F7 */  jal        func_race_8012C3DC
/* E20E8 8012BD28 24060003 */   addiu     $a2, $zero, 0x3
.Lrace_8012BD2C:
/* E20EC 8012BD2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* E20F0 8012BD30 03E00008 */  jr         $ra
/* E20F4 8012BD34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012BD38
/* E20F8 8012BD38 27BDFF98 */  addiu      $sp, $sp, -0x68
/* E20FC 8012BD3C AFB20058 */  sw         $s2, 0x58($sp)
/* E2100 8012BD40 00809021 */  addu       $s2, $a0, $zero
/* E2104 8012BD44 AFB3005C */  sw         $s3, 0x5C($sp)
/* E2108 8012BD48 00A09821 */  addu       $s3, $a1, $zero
/* E210C 8012BD4C AFBF0064 */  sw         $ra, 0x64($sp)
/* E2110 8012BD50 AFB40060 */  sw         $s4, 0x60($sp)
/* E2114 8012BD54 AFB10054 */  sw         $s1, 0x54($sp)
/* E2118 8012BD58 AFB00050 */  sw         $s0, 0x50($sp)
/* E211C 8012BD5C AFB30038 */  sw         $s3, 0x38($sp)
/* E2120 8012BD60 AFA00040 */  sw         $zero, 0x40($sp)
/* E2124 8012BD64 AFA0003C */  sw         $zero, 0x3C($sp)
/* E2128 8012BD68 8E421998 */  lw         $v0, 0x1998($s2)
/* E212C 8012BD6C 1440002F */  bnez       $v0, .Lrace_8012BE2C
/* E2130 8012BD70 00C0A021 */   addu      $s4, $a2, $zero
/* E2134 8012BD74 26700018 */  addiu      $s0, $s3, 0x18
/* E2138 8012BD78 8E030044 */  lw         $v1, 0x44($s0)
/* E213C 8012BD7C 27B10018 */  addiu      $s1, $sp, 0x18
/* E2140 8012BD80 8C620024 */  lw         $v0, 0x24($v1)
/* E2144 8012BD84 02202821 */  addu       $a1, $s1, $zero
/* E2148 8012BD88 84440010 */  lh         $a0, 0x10($v0)
/* E214C 8012BD8C 8C420014 */  lw         $v0, 0x14($v0)
/* E2150 8012BD90 0040F809 */  jalr       $v0
/* E2154 8012BD94 00642021 */   addu      $a0, $v1, $a0
/* E2158 8012BD98 8E020044 */  lw         $v0, 0x44($s0)
/* E215C 8012BD9C C4400028 */  lwc1       $f0, 0x28($v0)
/* E2160 8012BDA0 E7A00028 */  swc1       $f0, 0x28($sp)
/* E2164 8012BDA4 C440002C */  lwc1       $f0, 0x2C($v0)
/* E2168 8012BDA8 E7A0002C */  swc1       $f0, 0x2C($sp)
/* E216C 8012BDAC C4400030 */  lwc1       $f0, 0x30($v0)
/* E2170 8012BDB0 E7A00030 */  swc1       $f0, 0x30($sp)
/* E2174 8012BDB4 8E620D08 */  lw         $v0, 0xD08($s3)
/* E2178 8012BDB8 38420002 */  xori       $v0, $v0, 0x2
/* E217C 8012BDBC 1040000C */  beqz       $v0, .Lrace_8012BDF0
/* E2180 8012BDC0 02202821 */   addu      $a1, $s1, $zero
/* E2184 8012BDC4 3C0742C8 */  lui        $a3, (0x42C80000 >> 16)
/* E2188 8012BDC8 3C01800D */  lui        $at, %hi(D_race_800CEDD0)
/* E218C 8012BDCC C420EDD0 */  lwc1       $f0, %lo(D_race_800CEDD0)($at)
/* E2190 8012BDD0 3C01800D */  lui        $at, %hi(D_race_800CEDD4)
/* E2194 8012BDD4 C422EDD4 */  lwc1       $f2, %lo(D_race_800CEDD4)($at)
/* E2198 8012BDD8 E7A00010 */  swc1       $f0, 0x10($sp)
/* E219C 8012BDDC E7A20014 */  swc1       $f2, 0x14($sp)
/* E21A0 8012BDE0 8E440050 */  lw         $a0, 0x50($s2)
/* E21A4 8012BDE4 0C04B728 */  jal        func_race_8012DCA0
/* E21A8 8012BDE8 27A60028 */   addiu     $a2, $sp, 0x28
/* E21AC 8012BDEC AFA20040 */  sw         $v0, 0x40($sp)
.Lrace_8012BDF0:
/* E21B0 8012BDF0 8FA20040 */  lw         $v0, 0x40($sp)
/* E21B4 8012BDF4 5440000E */  bnel       $v0, $zero, .Lrace_8012BE30
/* E21B8 8012BDF8 AFA00048 */   sw        $zero, 0x48($sp)
/* E21BC 8012BDFC 3C0742C8 */  lui        $a3, (0x42C80000 >> 16)
/* E21C0 8012BE00 3C01800D */  lui        $at, %hi(D_race_800CEDD8)
/* E21C4 8012BE04 C420EDD8 */  lwc1       $f0, %lo(D_race_800CEDD8)($at)
/* E21C8 8012BE08 3C01800D */  lui        $at, %hi(D_race_800CEDDC)
/* E21CC 8012BE0C C422EDDC */  lwc1       $f2, %lo(D_race_800CEDDC)($at)
/* E21D0 8012BE10 02202821 */  addu       $a1, $s1, $zero
/* E21D4 8012BE14 E7A00010 */  swc1       $f0, 0x10($sp)
/* E21D8 8012BE18 E7A20014 */  swc1       $f2, 0x14($sp)
/* E21DC 8012BE1C 8E440074 */  lw         $a0, 0x74($s2)
/* E21E0 8012BE20 0C044571 */  jal        func_race_801115C4
/* E21E4 8012BE24 27A60028 */   addiu     $a2, $sp, 0x28
/* E21E8 8012BE28 AFA2003C */  sw         $v0, 0x3C($sp)
.Lrace_8012BE2C:
/* E21EC 8012BE2C AFA00048 */  sw         $zero, 0x48($sp)
.Lrace_8012BE30:
/* E21F0 8012BE30 8E421998 */  lw         $v0, 0x1998($s2)
/* E21F4 8012BE34 AFA20044 */  sw         $v0, 0x44($sp)
/* E21F8 8012BE38 8E500088 */  lw         $s0, 0x88($s2)
/* E21FC 8012BE3C 1600000A */  bnez       $s0, .Lrace_8012BE68
/* E2200 8012BE40 02402021 */   addu      $a0, $s2, $zero
/* E2204 8012BE44 24050001 */  addiu      $a1, $zero, 0x1
/* E2208 8012BE48 02803021 */  addu       $a2, $s4, $zero
/* E220C 8012BE4C 2407FFFF */  addiu      $a3, $zero, -0x1
/* E2210 8012BE50 00E01021 */  addu       $v0, $a3, $zero
/* E2214 8012BE54 AFA20010 */  sw         $v0, 0x10($sp)
/* E2218 8012BE58 0C04B26B */  jal        func_race_8012C9AC
/* E221C 8012BE5C AFA20014 */   sw        $v0, 0x14($sp)
/* E2220 8012BE60 0804AF9C */  j          .Lrace_8012BE70
/* E2224 8012BE64 00408021 */   addu      $s0, $v0, $zero
.Lrace_8012BE68:
/* E2228 8012BE68 8E02000C */  lw         $v0, 0xC($s0)
/* E222C 8012BE6C AE420088 */  sw         $v0, 0x88($s2)
.Lrace_8012BE70:
/* E2230 8012BE70 02002021 */  addu       $a0, $s0, $zero
/* E2234 8012BE74 8E421880 */  lw         $v0, 0x1880($s2)
/* E2238 8012BE78 27A50038 */  addiu      $a1, $sp, 0x38
/* E223C 8012BE7C AE02000C */  sw         $v0, 0xC($s0)
/* E2240 8012BE80 0C048163 */  jal        func_race_8012058C
/* E2244 8012BE84 AE501880 */   sw        $s0, 0x1880($s2)
/* E2248 8012BE88 AE140014 */  sw         $s4, 0x14($s0)
/* E224C 8012BE8C 8FBF0064 */  lw         $ra, 0x64($sp)
/* E2250 8012BE90 8FB40060 */  lw         $s4, 0x60($sp)
/* E2254 8012BE94 8FB3005C */  lw         $s3, 0x5C($sp)
/* E2258 8012BE98 8FB20058 */  lw         $s2, 0x58($sp)
/* E225C 8012BE9C 8FB10054 */  lw         $s1, 0x54($sp)
/* E2260 8012BEA0 8FB00050 */  lw         $s0, 0x50($sp)
/* E2264 8012BEA4 03E00008 */  jr         $ra
/* E2268 8012BEA8 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_8012BEAC
/* E226C 8012BEAC 27BDFF90 */  addiu      $sp, $sp, -0x70
/* E2270 8012BEB0 AFB3004C */  sw         $s3, 0x4C($sp)
/* E2274 8012BEB4 00809821 */  addu       $s3, $a0, $zero
/* E2278 8012BEB8 AFB40050 */  sw         $s4, 0x50($sp)
/* E227C 8012BEBC 00A0A021 */  addu       $s4, $a1, $zero
/* E2280 8012BEC0 AFB60058 */  sw         $s6, 0x58($sp)
/* E2284 8012BEC4 00C0B021 */  addu       $s6, $a2, $zero
/* E2288 8012BEC8 AFB00040 */  sw         $s0, 0x40($sp)
/* E228C 8012BECC 26900018 */  addiu      $s0, $s4, 0x18
/* E2290 8012BED0 AFBF005C */  sw         $ra, 0x5C($sp)
/* E2294 8012BED4 AFB50054 */  sw         $s5, 0x54($sp)
/* E2298 8012BED8 AFB20048 */  sw         $s2, 0x48($sp)
/* E229C 8012BEDC AFB10044 */  sw         $s1, 0x44($sp)
/* E22A0 8012BEE0 F7B60068 */  sdc1       $f22, 0x68($sp)
/* E22A4 8012BEE4 F7B40060 */  sdc1       $f20, 0x60($sp)
/* E22A8 8012BEE8 8E030044 */  lw         $v1, 0x44($s0)
/* E22AC 8012BEEC 27B20020 */  addiu      $s2, $sp, 0x20
/* E22B0 8012BEF0 8C620024 */  lw         $v0, 0x24($v1)
/* E22B4 8012BEF4 02402821 */  addu       $a1, $s2, $zero
/* E22B8 8012BEF8 84440010 */  lh         $a0, 0x10($v0)
/* E22BC 8012BEFC 8C420014 */  lw         $v0, 0x14($v0)
/* E22C0 8012BF00 0040F809 */  jalr       $v0
/* E22C4 8012BF04 00642021 */   addu      $a0, $v1, $a0
/* E22C8 8012BF08 3C01800D */  lui        $at, %hi(D_race_800CEDE0)
/* E22CC 8012BF0C C434EDE0 */  lwc1       $f20, %lo(D_race_800CEDE0)($at)
/* E22D0 8012BF10 8E020044 */  lw         $v0, 0x44($s0)
/* E22D4 8012BF14 3C01800D */  lui        $at, %hi(D_race_800CEDE4)
/* E22D8 8012BF18 C422EDE4 */  lwc1       $f2, %lo(D_race_800CEDE4)($at)
/* E22DC 8012BF1C 3C01800D */  lui        $at, %hi(D_race_800CEDE8)
/* E22E0 8012BF20 C424EDE8 */  lwc1       $f4, %lo(D_race_800CEDE8)($at)
/* E22E4 8012BF24 4407A000 */  mfc1       $a3, $f20
/* E22E8 8012BF28 C4400028 */  lwc1       $f0, 0x28($v0)
/* E22EC 8012BF2C 0000A821 */  addu       $s5, $zero, $zero
/* E22F0 8012BF30 E7A00030 */  swc1       $f0, 0x30($sp)
/* E22F4 8012BF34 C440002C */  lwc1       $f0, 0x2C($v0)
/* E22F8 8012BF38 02402821 */  addu       $a1, $s2, $zero
/* E22FC 8012BF3C E7A00034 */  swc1       $f0, 0x34($sp)
/* E2300 8012BF40 C4400030 */  lwc1       $f0, 0x30($v0)
/* E2304 8012BF44 27B00030 */  addiu      $s0, $sp, 0x30
/* E2308 8012BF48 E7A00038 */  swc1       $f0, 0x38($sp)
/* E230C 8012BF4C E7A20010 */  swc1       $f2, 0x10($sp)
/* E2310 8012BF50 E7A40014 */  swc1       $f4, 0x14($sp)
/* E2314 8012BF54 8E640074 */  lw         $a0, 0x74($s3)
/* E2318 8012BF58 0C0444F3 */  jal        func_race_801113CC
/* E231C 8012BF5C 02003021 */   addu      $a2, $s0, $zero
/* E2320 8012BF60 00408821 */  addu       $s1, $v0, $zero
/* E2324 8012BF64 1620001B */  bnez       $s1, .Lrace_8012BFD4
/* E2328 8012BF68 02402821 */   addu      $a1, $s2, $zero
/* E232C 8012BF6C 4407A000 */  mfc1       $a3, $f20
/* E2330 8012BF70 3C01800D */  lui        $at, %hi(D_race_800CEDEC)
/* E2334 8012BF74 C436EDEC */  lwc1       $f22, %lo(D_race_800CEDEC)($at)
/* E2338 8012BF78 3C01800D */  lui        $at, %hi(D_race_800CEDF0)
/* E233C 8012BF7C C420EDF0 */  lwc1       $f0, %lo(D_race_800CEDF0)($at)
/* E2340 8012BF80 E7B60010 */  swc1       $f22, 0x10($sp)
/* E2344 8012BF84 E7A00014 */  swc1       $f0, 0x14($sp)
/* E2348 8012BF88 8E640074 */  lw         $a0, 0x74($s3)
/* E234C 8012BF8C 0C044571 */  jal        func_race_801115C4
/* E2350 8012BF90 02003021 */   addu      $a2, $s0, $zero
/* E2354 8012BF94 00408821 */  addu       $s1, $v0, $zero
/* E2358 8012BF98 1620000E */  bnez       $s1, .Lrace_8012BFD4
/* E235C 8012BF9C 00000000 */   nop
/* E2360 8012BFA0 8E820D08 */  lw         $v0, 0xD08($s4)
/* E2364 8012BFA4 38420002 */  xori       $v0, $v0, 0x2
/* E2368 8012BFA8 1040000A */  beqz       $v0, .Lrace_8012BFD4
/* E236C 8012BFAC 02402821 */   addu      $a1, $s2, $zero
/* E2370 8012BFB0 4407A000 */  mfc1       $a3, $f20
/* E2374 8012BFB4 3C01800D */  lui        $at, %hi(D_race_800CEDF4)
/* E2378 8012BFB8 C420EDF4 */  lwc1       $f0, %lo(D_race_800CEDF4)($at)
/* E237C 8012BFBC E7B60010 */  swc1       $f22, 0x10($sp)
/* E2380 8012BFC0 E7A00014 */  swc1       $f0, 0x14($sp)
/* E2384 8012BFC4 8E640050 */  lw         $a0, 0x50($s3)
/* E2388 8012BFC8 0C04B728 */  jal        func_race_8012DCA0
/* E238C 8012BFCC 02003021 */   addu      $a2, $s0, $zero
/* E2390 8012BFD0 0040A821 */  addu       $s5, $v0, $zero
.Lrace_8012BFD4:
/* E2394 8012BFD4 8E70008C */  lw         $s0, 0x8C($s3)
/* E2398 8012BFD8 1600000A */  bnez       $s0, .Lrace_8012C004
/* E239C 8012BFDC 02602021 */   addu      $a0, $s3, $zero
/* E23A0 8012BFE0 24050001 */  addiu      $a1, $zero, 0x1
/* E23A4 8012BFE4 02C03021 */  addu       $a2, $s6, $zero
/* E23A8 8012BFE8 2407FFFF */  addiu      $a3, $zero, -0x1
/* E23AC 8012BFEC 00E01021 */  addu       $v0, $a3, $zero
/* E23B0 8012BFF0 AFA20010 */  sw         $v0, 0x10($sp)
/* E23B4 8012BFF4 0C04B26B */  jal        func_race_8012C9AC
/* E23B8 8012BFF8 AFA20014 */   sw        $v0, 0x14($sp)
/* E23BC 8012BFFC 0804B003 */  j          .Lrace_8012C00C
/* E23C0 8012C000 00408021 */   addu      $s0, $v0, $zero
.Lrace_8012C004:
/* E23C4 8012C004 8E02000C */  lw         $v0, 0xC($s0)
/* E23C8 8012C008 AE62008C */  sw         $v0, 0x8C($s3)
.Lrace_8012C00C:
/* E23CC 8012C00C 8E621880 */  lw         $v0, 0x1880($s3)
/* E23D0 8012C010 02002021 */  addu       $a0, $s0, $zero
/* E23D4 8012C014 AE02000C */  sw         $v0, 0xC($s0)
/* E23D8 8012C018 8E62005C */  lw         $v0, 0x5C($s3)
/* E23DC 8012C01C 02803021 */  addu       $a2, $s4, $zero
/* E23E0 8012C020 AE701880 */  sw         $s0, 0x1880($s3)
/* E23E4 8012C024 8C450098 */  lw         $a1, 0x98($v0)
/* E23E8 8012C028 8E62001C */  lw         $v0, 0x1C($s3)
/* E23EC 8012C02C 02203821 */  addu       $a3, $s1, $zero
/* E23F0 8012C030 AFB50010 */  sw         $s5, 0x10($sp)
/* E23F4 8012C034 AFA00018 */  sw         $zero, 0x18($sp)
/* E23F8 8012C038 0C048D6F */  jal        func_race_801235BC
/* E23FC 8012C03C AFA20014 */   sw        $v0, 0x14($sp)
/* E2400 8012C040 AE160014 */  sw         $s6, 0x14($s0)
/* E2404 8012C044 8FBF005C */  lw         $ra, 0x5C($sp)
/* E2408 8012C048 8FB60058 */  lw         $s6, 0x58($sp)
/* E240C 8012C04C 8FB50054 */  lw         $s5, 0x54($sp)
/* E2410 8012C050 8FB40050 */  lw         $s4, 0x50($sp)
/* E2414 8012C054 8FB3004C */  lw         $s3, 0x4C($sp)
/* E2418 8012C058 8FB20048 */  lw         $s2, 0x48($sp)
/* E241C 8012C05C 8FB10044 */  lw         $s1, 0x44($sp)
/* E2420 8012C060 8FB00040 */  lw         $s0, 0x40($sp)
/* E2424 8012C064 D7B60068 */  ldc1       $f22, 0x68($sp)
/* E2428 8012C068 D7B40060 */  ldc1       $f20, 0x60($sp)
/* E242C 8012C06C 03E00008 */  jr         $ra
/* E2430 8012C070 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_8012C074
/* E2434 8012C074 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E2438 8012C078 AFB1001C */  sw         $s1, 0x1C($sp)
/* E243C 8012C07C 00808821 */  addu       $s1, $a0, $zero
/* E2440 8012C080 AFB30024 */  sw         $s3, 0x24($sp)
/* E2444 8012C084 00A09821 */  addu       $s3, $a1, $zero
/* E2448 8012C088 AFBF0028 */  sw         $ra, 0x28($sp)
/* E244C 8012C08C AFB20020 */  sw         $s2, 0x20($sp)
/* E2450 8012C090 AFB00018 */  sw         $s0, 0x18($sp)
/* E2454 8012C094 8E300090 */  lw         $s0, 0x90($s1)
/* E2458 8012C098 16000009 */  bnez       $s0, .Lrace_8012C0C0
/* E245C 8012C09C 00C09021 */   addu      $s2, $a2, $zero
/* E2460 8012C0A0 24050001 */  addiu      $a1, $zero, 0x1
/* E2464 8012C0A4 2402FFFF */  addiu      $v0, $zero, -0x1
/* E2468 8012C0A8 00403821 */  addu       $a3, $v0, $zero
/* E246C 8012C0AC AFA20010 */  sw         $v0, 0x10($sp)
/* E2470 8012C0B0 0C04B26B */  jal        func_race_8012C9AC
/* E2474 8012C0B4 AFA20014 */   sw        $v0, 0x14($sp)
/* E2478 8012C0B8 0804B032 */  j          .Lrace_8012C0C8
/* E247C 8012C0BC 00408021 */   addu      $s0, $v0, $zero
.Lrace_8012C0C0:
/* E2480 8012C0C0 8E02000C */  lw         $v0, 0xC($s0)
/* E2484 8012C0C4 AE220090 */  sw         $v0, 0x90($s1)
.Lrace_8012C0C8:
/* E2488 8012C0C8 8E221880 */  lw         $v0, 0x1880($s1)
/* E248C 8012C0CC 02002021 */  addu       $a0, $s0, $zero
/* E2490 8012C0D0 AE02000C */  sw         $v0, 0xC($s0)
/* E2494 8012C0D4 8E261998 */  lw         $a2, 0x1998($s1)
/* E2498 8012C0D8 02602821 */  addu       $a1, $s3, $zero
/* E249C 8012C0DC 0C049222 */  jal        func_race_80124888
/* E24A0 8012C0E0 AE301880 */   sw        $s0, 0x1880($s1)
/* E24A4 8012C0E4 AE120014 */  sw         $s2, 0x14($s0)
/* E24A8 8012C0E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* E24AC 8012C0EC 8FB30024 */  lw         $s3, 0x24($sp)
/* E24B0 8012C0F0 8FB20020 */  lw         $s2, 0x20($sp)
/* E24B4 8012C0F4 8FB1001C */  lw         $s1, 0x1C($sp)
/* E24B8 8012C0F8 8FB00018 */  lw         $s0, 0x18($sp)
/* E24BC 8012C0FC 03E00008 */  jr         $ra
/* E24C0 8012C100 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_8012C104
/* E24C4 8012C104 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E24C8 8012C108 AFB1001C */  sw         $s1, 0x1C($sp)
/* E24CC 8012C10C 00808821 */  addu       $s1, $a0, $zero
/* E24D0 8012C110 AFB30024 */  sw         $s3, 0x24($sp)
/* E24D4 8012C114 00A09821 */  addu       $s3, $a1, $zero
/* E24D8 8012C118 AFBF0028 */  sw         $ra, 0x28($sp)
/* E24DC 8012C11C AFB20020 */  sw         $s2, 0x20($sp)
/* E24E0 8012C120 AFB00018 */  sw         $s0, 0x18($sp)
/* E24E4 8012C124 8E30007C */  lw         $s0, 0x7C($s1)
/* E24E8 8012C128 16000009 */  bnez       $s0, .Lrace_8012C150
/* E24EC 8012C12C 00C09021 */   addu      $s2, $a2, $zero
/* E24F0 8012C130 24050004 */  addiu      $a1, $zero, 0x4
/* E24F4 8012C134 2402FFFF */  addiu      $v0, $zero, -0x1
/* E24F8 8012C138 00403821 */  addu       $a3, $v0, $zero
/* E24FC 8012C13C AFA20010 */  sw         $v0, 0x10($sp)
/* E2500 8012C140 0C04B26B */  jal        func_race_8012C9AC
/* E2504 8012C144 AFA20014 */   sw        $v0, 0x14($sp)
/* E2508 8012C148 0804B056 */  j          .Lrace_8012C158
/* E250C 8012C14C 00408021 */   addu      $s0, $v0, $zero
.Lrace_8012C150:
/* E2510 8012C150 8E02000C */  lw         $v0, 0xC($s0)
/* E2514 8012C154 AE22007C */  sw         $v0, 0x7C($s1)
.Lrace_8012C158:
/* E2518 8012C158 02002021 */  addu       $a0, $s0, $zero
/* E251C 8012C15C 8E221880 */  lw         $v0, 0x1880($s1)
/* E2520 8012C160 02602821 */  addu       $a1, $s3, $zero
/* E2524 8012C164 AE02000C */  sw         $v0, 0xC($s0)
/* E2528 8012C168 0C049EA6 */  jal        func_race_80127A98
/* E252C 8012C16C AE301880 */   sw        $s0, 0x1880($s1)
/* E2530 8012C170 AE120014 */  sw         $s2, 0x14($s0)
/* E2534 8012C174 8FBF0028 */  lw         $ra, 0x28($sp)
/* E2538 8012C178 8FB30024 */  lw         $s3, 0x24($sp)
/* E253C 8012C17C 8FB20020 */  lw         $s2, 0x20($sp)
/* E2540 8012C180 8FB1001C */  lw         $s1, 0x1C($sp)
/* E2544 8012C184 8FB00018 */  lw         $s0, 0x18($sp)
/* E2548 8012C188 03E00008 */  jr         $ra
/* E254C 8012C18C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_8012C190
/* E2550 8012C190 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* E2554 8012C194 AFB30044 */  sw         $s3, 0x44($sp)
/* E2558 8012C198 00809821 */  addu       $s3, $a0, $zero
/* E255C 8012C19C AFB40048 */  sw         $s4, 0x48($sp)
/* E2560 8012C1A0 00A0A021 */  addu       $s4, $a1, $zero
/* E2564 8012C1A4 AFBF0050 */  sw         $ra, 0x50($sp)
/* E2568 8012C1A8 AFB5004C */  sw         $s5, 0x4C($sp)
/* E256C 8012C1AC AFB20040 */  sw         $s2, 0x40($sp)
/* E2570 8012C1B0 AFB1003C */  sw         $s1, 0x3C($sp)
/* E2574 8012C1B4 AFB00038 */  sw         $s0, 0x38($sp)
/* E2578 8012C1B8 8E720080 */  lw         $s2, 0x80($s3)
/* E257C 8012C1BC 16400009 */  bnez       $s2, .Lrace_8012C1E4
/* E2580 8012C1C0 00C0A821 */   addu      $s5, $a2, $zero
/* E2584 8012C1C4 24050004 */  addiu      $a1, $zero, 0x4
/* E2588 8012C1C8 2407FFFF */  addiu      $a3, $zero, -0x1
/* E258C 8012C1CC 00E01021 */  addu       $v0, $a3, $zero
/* E2590 8012C1D0 AFA20010 */  sw         $v0, 0x10($sp)
/* E2594 8012C1D4 0C04B26B */  jal        func_race_8012C9AC
/* E2598 8012C1D8 AFA20014 */   sw        $v0, 0x14($sp)
/* E259C 8012C1DC 0804B07B */  j          .Lrace_8012C1EC
/* E25A0 8012C1E0 00409021 */   addu      $s2, $v0, $zero
.Lrace_8012C1E4:
/* E25A4 8012C1E4 8E42000C */  lw         $v0, 0xC($s2)
/* E25A8 8012C1E8 AE620080 */  sw         $v0, 0x80($s3)
.Lrace_8012C1EC:
/* E25AC 8012C1EC 8E621880 */  lw         $v0, 0x1880($s3)
/* E25B0 8012C1F0 26900018 */  addiu      $s0, $s4, 0x18
/* E25B4 8012C1F4 AE42000C */  sw         $v0, 0xC($s2)
/* E25B8 8012C1F8 AE721880 */  sw         $s2, 0x1880($s3)
/* E25BC 8012C1FC 8E030044 */  lw         $v1, 0x44($s0)
/* E25C0 8012C200 27B10018 */  addiu      $s1, $sp, 0x18
/* E25C4 8012C204 8C620024 */  lw         $v0, 0x24($v1)
/* E25C8 8012C208 02202821 */  addu       $a1, $s1, $zero
/* E25CC 8012C20C 84440010 */  lh         $a0, 0x10($v0)
/* E25D0 8012C210 8C420014 */  lw         $v0, 0x14($v0)
/* E25D4 8012C214 0040F809 */  jalr       $v0
/* E25D8 8012C218 00642021 */   addu      $a0, $v1, $a0
/* E25DC 8012C21C 8E020044 */  lw         $v0, 0x44($s0)
/* E25E0 8012C220 3C0742C8 */  lui        $a3, (0x42C80000 >> 16)
/* E25E4 8012C224 C4400028 */  lwc1       $f0, 0x28($v0)
/* E25E8 8012C228 E7A00028 */  swc1       $f0, 0x28($sp)
/* E25EC 8012C22C C442002C */  lwc1       $f2, 0x2C($v0)
/* E25F0 8012C230 E7A2002C */  swc1       $f2, 0x2C($sp)
/* E25F4 8012C234 C4440030 */  lwc1       $f4, 0x30($v0)
/* E25F8 8012C238 46000007 */  neg.s      $f0, $f0
/* E25FC 8012C23C E7A00028 */  swc1       $f0, 0x28($sp)
/* E2600 8012C240 3C01800D */  lui        $at, %hi(D_race_800CEDF8)
/* E2604 8012C244 C420EDF8 */  lwc1       $f0, %lo(D_race_800CEDF8)($at)
/* E2608 8012C248 46001087 */  neg.s      $f2, $f2
/* E260C 8012C24C E7A2002C */  swc1       $f2, 0x2C($sp)
/* E2610 8012C250 3C01800D */  lui        $at, %hi(D_race_800CEDFC)
/* E2614 8012C254 C422EDFC */  lwc1       $f2, %lo(D_race_800CEDFC)($at)
/* E2618 8012C258 02202821 */  addu       $a1, $s1, $zero
/* E261C 8012C25C E7A40030 */  swc1       $f4, 0x30($sp)
/* E2620 8012C260 46002107 */  neg.s      $f4, $f4
/* E2624 8012C264 E7A40030 */  swc1       $f4, 0x30($sp)
/* E2628 8012C268 E7A00010 */  swc1       $f0, 0x10($sp)
/* E262C 8012C26C E7A20014 */  swc1       $f2, 0x14($sp)
/* E2630 8012C270 8E640074 */  lw         $a0, 0x74($s3)
/* E2634 8012C274 0C044571 */  jal        func_race_801115C4
/* E2638 8012C278 27A60028 */   addiu     $a2, $sp, 0x28
/* E263C 8012C27C 02402021 */  addu       $a0, $s2, $zero
/* E2640 8012C280 02802821 */  addu       $a1, $s4, $zero
/* E2644 8012C284 0C0487F4 */  jal        func_race_80121FD0
/* E2648 8012C288 00403021 */   addu      $a2, $v0, $zero
/* E264C 8012C28C AE550014 */  sw         $s5, 0x14($s2)
/* E2650 8012C290 8FBF0050 */  lw         $ra, 0x50($sp)
/* E2654 8012C294 8FB5004C */  lw         $s5, 0x4C($sp)
/* E2658 8012C298 8FB40048 */  lw         $s4, 0x48($sp)
/* E265C 8012C29C 8FB30044 */  lw         $s3, 0x44($sp)
/* E2660 8012C2A0 8FB20040 */  lw         $s2, 0x40($sp)
/* E2664 8012C2A4 8FB1003C */  lw         $s1, 0x3C($sp)
/* E2668 8012C2A8 8FB00038 */  lw         $s0, 0x38($sp)
/* E266C 8012C2AC 03E00008 */  jr         $ra
/* E2670 8012C2B0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_8012C2B4
/* E2674 8012C2B4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E2678 8012C2B8 AFB1001C */  sw         $s1, 0x1C($sp)
/* E267C 8012C2BC 00808821 */  addu       $s1, $a0, $zero
/* E2680 8012C2C0 AFB5002C */  sw         $s5, 0x2C($sp)
/* E2684 8012C2C4 00A0A821 */  addu       $s5, $a1, $zero
/* E2688 8012C2C8 AFBF0030 */  sw         $ra, 0x30($sp)
/* E268C 8012C2CC AFB40028 */  sw         $s4, 0x28($sp)
/* E2690 8012C2D0 AFB30024 */  sw         $s3, 0x24($sp)
/* E2694 8012C2D4 AFB20020 */  sw         $s2, 0x20($sp)
/* E2698 8012C2D8 AFB00018 */  sw         $s0, 0x18($sp)
/* E269C 8012C2DC 8E300078 */  lw         $s0, 0x78($s1)
/* E26A0 8012C2E0 16000009 */  bnez       $s0, .Lrace_8012C308
/* E26A4 8012C2E4 00C0A021 */   addu      $s4, $a2, $zero
/* E26A8 8012C2E8 24050004 */  addiu      $a1, $zero, 0x4
/* E26AC 8012C2EC 2407FFFF */  addiu      $a3, $zero, -0x1
/* E26B0 8012C2F0 00E01021 */  addu       $v0, $a3, $zero
/* E26B4 8012C2F4 AFA20010 */  sw         $v0, 0x10($sp)
/* E26B8 8012C2F8 0C04B26B */  jal        func_race_8012C9AC
/* E26BC 8012C2FC AFA20014 */   sw        $v0, 0x14($sp)
/* E26C0 8012C300 0804B0C4 */  j          .Lrace_8012C310
/* E26C4 8012C304 00408021 */   addu      $s0, $v0, $zero
.Lrace_8012C308:
/* E26C8 8012C308 8E02000C */  lw         $v0, 0xC($s0)
/* E26CC 8012C30C AE220078 */  sw         $v0, 0x78($s1)
.Lrace_8012C310:
/* E26D0 8012C310 8E221880 */  lw         $v0, 0x1880($s1)
/* E26D4 8012C314 AE02000C */  sw         $v0, 0xC($s0)
/* E26D8 8012C318 3C02800D */  lui        $v0, %hi(D_race_800CEE00)
/* E26DC 8012C31C 8E23005C */  lw         $v1, 0x5C($s1)
/* E26E0 8012C320 2445EE00 */  addiu      $a1, $v0, %lo(D_race_800CEE00)
/* E26E4 8012C324 AE301880 */  sw         $s0, 0x1880($s1)
/* E26E8 8012C328 8C6200BC */  lw         $v0, 0xBC($v1)
/* E26EC 8012C32C 14400003 */  bnez       $v0, .Lrace_8012C33C
/* E26F0 8012C330 246400BC */   addiu     $a0, $v1, 0xBC
/* E26F4 8012C334 0804B0D2 */  j          .Lrace_8012C348
/* E26F8 8012C338 00009821 */   addu      $s3, $zero, $zero
.Lrace_8012C33C:
/* E26FC 8012C33C 0C016427 */  jal        func_8005909C
/* E2700 8012C340 00000000 */   nop
/* E2704 8012C344 00409821 */  addu       $s3, $v0, $zero
.Lrace_8012C348:
/* E2708 8012C348 3C02800D */  lui        $v0, %hi(D_race_800CEE08)
/* E270C 8012C34C 8E23005C */  lw         $v1, 0x5C($s1)
/* E2710 8012C350 2445EE08 */  addiu      $a1, $v0, %lo(D_race_800CEE08)
/* E2714 8012C354 8C6200BC */  lw         $v0, 0xBC($v1)
/* E2718 8012C358 14400003 */  bnez       $v0, .Lrace_8012C368
/* E271C 8012C35C 246400BC */   addiu     $a0, $v1, 0xBC
/* E2720 8012C360 0804B0DD */  j          .Lrace_8012C374
/* E2724 8012C364 00009021 */   addu      $s2, $zero, $zero
.Lrace_8012C368:
/* E2728 8012C368 0C016427 */  jal        func_8005909C
/* E272C 8012C36C 00000000 */   nop
/* E2730 8012C370 00409021 */  addu       $s2, $v0, $zero
.Lrace_8012C374:
/* E2734 8012C374 3C02800D */  lui        $v0, %hi(D_race_800CEE10)
/* E2738 8012C378 8E23005C */  lw         $v1, 0x5C($s1)
/* E273C 8012C37C 2445EE10 */  addiu      $a1, $v0, %lo(D_race_800CEE10)
/* E2740 8012C380 8C6200BC */  lw         $v0, 0xBC($v1)
/* E2744 8012C384 14400003 */  bnez       $v0, .Lrace_8012C394
/* E2748 8012C388 246400BC */   addiu     $a0, $v1, 0xBC
/* E274C 8012C38C 0804B0E7 */  j          .Lrace_8012C39C
/* E2750 8012C390 00001021 */   addu      $v0, $zero, $zero
.Lrace_8012C394:
/* E2754 8012C394 0C016427 */  jal        func_8005909C
/* E2758 8012C398 00000000 */   nop
.Lrace_8012C39C:
/* E275C 8012C39C 02002021 */  addu       $a0, $s0, $zero
/* E2760 8012C3A0 02A02821 */  addu       $a1, $s5, $zero
/* E2764 8012C3A4 02603021 */  addu       $a2, $s3, $zero
/* E2768 8012C3A8 02403821 */  addu       $a3, $s2, $zero
/* E276C 8012C3AC 0C04960C */  jal        func_race_80125830
/* E2770 8012C3B0 AFA20010 */   sw        $v0, 0x10($sp)
/* E2774 8012C3B4 AE140014 */  sw         $s4, 0x14($s0)
/* E2778 8012C3B8 8FBF0030 */  lw         $ra, 0x30($sp)
/* E277C 8012C3BC 8FB5002C */  lw         $s5, 0x2C($sp)
/* E2780 8012C3C0 8FB40028 */  lw         $s4, 0x28($sp)
/* E2784 8012C3C4 8FB30024 */  lw         $s3, 0x24($sp)
/* E2788 8012C3C8 8FB20020 */  lw         $s2, 0x20($sp)
/* E278C 8012C3CC 8FB1001C */  lw         $s1, 0x1C($sp)
/* E2790 8012C3D0 8FB00018 */  lw         $s0, 0x18($sp)
/* E2794 8012C3D4 03E00008 */  jr         $ra
/* E2798 8012C3D8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8012C3DC
/* E279C 8012C3DC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E27A0 8012C3E0 AFB1001C */  sw         $s1, 0x1C($sp)
/* E27A4 8012C3E4 00808821 */  addu       $s1, $a0, $zero
/* E27A8 8012C3E8 AFB5002C */  sw         $s5, 0x2C($sp)
/* E27AC 8012C3EC 00A0A821 */  addu       $s5, $a1, $zero
/* E27B0 8012C3F0 AFBF0030 */  sw         $ra, 0x30($sp)
/* E27B4 8012C3F4 AFB40028 */  sw         $s4, 0x28($sp)
/* E27B8 8012C3F8 AFB30024 */  sw         $s3, 0x24($sp)
/* E27BC 8012C3FC AFB20020 */  sw         $s2, 0x20($sp)
/* E27C0 8012C400 AFB00018 */  sw         $s0, 0x18($sp)
/* E27C4 8012C404 8E300084 */  lw         $s0, 0x84($s1)
/* E27C8 8012C408 16000009 */  bnez       $s0, .Lrace_8012C430
/* E27CC 8012C40C 00C0A021 */   addu      $s4, $a2, $zero
/* E27D0 8012C410 24050004 */  addiu      $a1, $zero, 0x4
/* E27D4 8012C414 2407FFFF */  addiu      $a3, $zero, -0x1
/* E27D8 8012C418 00E01021 */  addu       $v0, $a3, $zero
/* E27DC 8012C41C AFA20010 */  sw         $v0, 0x10($sp)
/* E27E0 8012C420 0C04B26B */  jal        func_race_8012C9AC
/* E27E4 8012C424 AFA20014 */   sw        $v0, 0x14($sp)
/* E27E8 8012C428 0804B10E */  j          .Lrace_8012C438
/* E27EC 8012C42C 00408021 */   addu      $s0, $v0, $zero
.Lrace_8012C430:
/* E27F0 8012C430 8E02000C */  lw         $v0, 0xC($s0)
/* E27F4 8012C434 AE220084 */  sw         $v0, 0x84($s1)
.Lrace_8012C438:
/* E27F8 8012C438 8E221880 */  lw         $v0, 0x1880($s1)
/* E27FC 8012C43C AE02000C */  sw         $v0, 0xC($s0)
/* E2800 8012C440 3C02800D */  lui        $v0, %hi(D_race_800CEE18)
/* E2804 8012C444 8E23005C */  lw         $v1, 0x5C($s1)
/* E2808 8012C448 2445EE18 */  addiu      $a1, $v0, %lo(D_race_800CEE18)
/* E280C 8012C44C AE301880 */  sw         $s0, 0x1880($s1)
/* E2810 8012C450 8C6200BC */  lw         $v0, 0xBC($v1)
/* E2814 8012C454 14400003 */  bnez       $v0, .Lrace_8012C464
/* E2818 8012C458 246400BC */   addiu     $a0, $v1, 0xBC
/* E281C 8012C45C 0804B11C */  j          .Lrace_8012C470
/* E2820 8012C460 00009821 */   addu      $s3, $zero, $zero
.Lrace_8012C464:
/* E2824 8012C464 0C016427 */  jal        func_8005909C
/* E2828 8012C468 00000000 */   nop
/* E282C 8012C46C 00409821 */  addu       $s3, $v0, $zero
.Lrace_8012C470:
/* E2830 8012C470 3C02800D */  lui        $v0, %hi(D_race_800CEE20)
/* E2834 8012C474 8E23005C */  lw         $v1, 0x5C($s1)
/* E2838 8012C478 2445EE20 */  addiu      $a1, $v0, %lo(D_race_800CEE20)
/* E283C 8012C47C 8C6200BC */  lw         $v0, 0xBC($v1)
/* E2840 8012C480 14400003 */  bnez       $v0, .Lrace_8012C490
/* E2844 8012C484 246400BC */   addiu     $a0, $v1, 0xBC
/* E2848 8012C488 0804B127 */  j          .Lrace_8012C49C
/* E284C 8012C48C 00009021 */   addu      $s2, $zero, $zero
.Lrace_8012C490:
/* E2850 8012C490 0C016427 */  jal        func_8005909C
/* E2854 8012C494 00000000 */   nop
/* E2858 8012C498 00409021 */  addu       $s2, $v0, $zero
.Lrace_8012C49C:
/* E285C 8012C49C 3C02800D */  lui        $v0, %hi(D_race_800CEE28)
/* E2860 8012C4A0 8E23005C */  lw         $v1, 0x5C($s1)
/* E2864 8012C4A4 2445EE28 */  addiu      $a1, $v0, %lo(D_race_800CEE28)
/* E2868 8012C4A8 8C6200BC */  lw         $v0, 0xBC($v1)
/* E286C 8012C4AC 14400003 */  bnez       $v0, .Lrace_8012C4BC
/* E2870 8012C4B0 246400BC */   addiu     $a0, $v1, 0xBC
/* E2874 8012C4B4 0804B131 */  j          .Lrace_8012C4C4
/* E2878 8012C4B8 00001021 */   addu      $v0, $zero, $zero
.Lrace_8012C4BC:
/* E287C 8012C4BC 0C016427 */  jal        func_8005909C
/* E2880 8012C4C0 00000000 */   nop
.Lrace_8012C4C4:
/* E2884 8012C4C4 02002021 */  addu       $a0, $s0, $zero
/* E2888 8012C4C8 02A02821 */  addu       $a1, $s5, $zero
/* E288C 8012C4CC 02603021 */  addu       $a2, $s3, $zero
/* E2890 8012C4D0 AFA20010 */  sw         $v0, 0x10($sp)
/* E2894 8012C4D4 8E221998 */  lw         $v0, 0x1998($s1)
/* E2898 8012C4D8 02403821 */  addu       $a3, $s2, $zero
/* E289C 8012C4DC 0C048490 */  jal        func_race_80121240
/* E28A0 8012C4E0 AFA20014 */   sw        $v0, 0x14($sp)
/* E28A4 8012C4E4 AE140014 */  sw         $s4, 0x14($s0)
/* E28A8 8012C4E8 8FBF0030 */  lw         $ra, 0x30($sp)
/* E28AC 8012C4EC 8FB5002C */  lw         $s5, 0x2C($sp)
/* E28B0 8012C4F0 8FB40028 */  lw         $s4, 0x28($sp)
/* E28B4 8012C4F4 8FB30024 */  lw         $s3, 0x24($sp)
/* E28B8 8012C4F8 8FB20020 */  lw         $s2, 0x20($sp)
/* E28BC 8012C4FC 8FB1001C */  lw         $s1, 0x1C($sp)
/* E28C0 8012C500 8FB00018 */  lw         $s0, 0x18($sp)
/* E28C4 8012C504 03E00008 */  jr         $ra
/* E28C8 8012C508 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8012C50C
/* E28CC 8012C50C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* E28D0 8012C510 AFB30024 */  sw         $s3, 0x24($sp)
/* E28D4 8012C514 00809821 */  addu       $s3, $a0, $zero
/* E28D8 8012C518 AFB70034 */  sw         $s7, 0x34($sp)
/* E28DC 8012C51C 00A0B821 */  addu       $s7, $a1, $zero
/* E28E0 8012C520 AFB60030 */  sw         $s6, 0x30($sp)
/* E28E4 8012C524 00C0B021 */  addu       $s6, $a2, $zero
/* E28E8 8012C528 AFB20020 */  sw         $s2, 0x20($sp)
/* E28EC 8012C52C 00009021 */  addu       $s2, $zero, $zero
/* E28F0 8012C530 AFB5002C */  sw         $s5, 0x2C($sp)
/* E28F4 8012C534 2415FFFF */  addiu      $s5, $zero, -0x1
/* E28F8 8012C538 AFB40028 */  sw         $s4, 0x28($sp)
/* E28FC 8012C53C 3C14800D */  lui        $s4, %hi(D_race_800CEE30)
/* E2900 8012C540 AFBF0038 */  sw         $ra, 0x38($sp)
/* E2904 8012C544 AFB1001C */  sw         $s1, 0x1C($sp)
/* E2908 8012C548 AFB00018 */  sw         $s0, 0x18($sp)
.Lrace_8012C54C:
/* E290C 8012C54C 2E420003 */  sltiu      $v0, $s2, 0x3
/* E2910 8012C550 1040002D */  beqz       $v0, .Lrace_8012C608
/* E2914 8012C554 00000000 */   nop
/* E2918 8012C558 8E700094 */  lw         $s0, 0x94($s3)
/* E291C 8012C55C 16000009 */  bnez       $s0, .Lrace_8012C584
/* E2920 8012C560 24050001 */   addiu     $a1, $zero, 0x1
/* E2924 8012C564 02602021 */  addu       $a0, $s3, $zero
/* E2928 8012C568 02C03021 */  addu       $a2, $s6, $zero
/* E292C 8012C56C 2407FFFF */  addiu      $a3, $zero, -0x1
/* E2930 8012C570 AFB50010 */  sw         $s5, 0x10($sp)
/* E2934 8012C574 0C04B26B */  jal        func_race_8012C9AC
/* E2938 8012C578 AFB50014 */   sw        $s5, 0x14($sp)
/* E293C 8012C57C 0804B163 */  j          .Lrace_8012C58C
/* E2940 8012C580 00408021 */   addu      $s0, $v0, $zero
.Lrace_8012C584:
/* E2944 8012C584 8E02000C */  lw         $v0, 0xC($s0)
/* E2948 8012C588 AE620094 */  sw         $v0, 0x94($s3)
.Lrace_8012C58C:
/* E294C 8012C58C 8E621880 */  lw         $v0, 0x1880($s3)
/* E2950 8012C590 AE02000C */  sw         $v0, 0xC($s0)
/* E2954 8012C594 8E62005C */  lw         $v0, 0x5C($s3)
/* E2958 8012C598 2685EE30 */  addiu      $a1, $s4, %lo(D_race_800CEE30)
/* E295C 8012C59C AE701880 */  sw         $s0, 0x1880($s3)
/* E2960 8012C5A0 8C4300BC */  lw         $v1, 0xBC($v0)
/* E2964 8012C5A4 14600003 */  bnez       $v1, .Lrace_8012C5B4
/* E2968 8012C5A8 244400BC */   addiu     $a0, $v0, 0xBC
/* E296C 8012C5AC 0804B170 */  j          .Lrace_8012C5C0
/* E2970 8012C5B0 00008821 */   addu      $s1, $zero, $zero
.Lrace_8012C5B4:
/* E2974 8012C5B4 0C016427 */  jal        func_8005909C
/* E2978 8012C5B8 00000000 */   nop
/* E297C 8012C5BC 00408821 */  addu       $s1, $v0, $zero
.Lrace_8012C5C0:
/* E2980 8012C5C0 8E62005C */  lw         $v0, 0x5C($s3)
/* E2984 8012C5C4 2685EE30 */  addiu      $a1, $s4, %lo(D_race_800CEE30)
/* E2988 8012C5C8 8C4300BC */  lw         $v1, 0xBC($v0)
/* E298C 8012C5CC 14600003 */  bnez       $v1, .Lrace_8012C5DC
/* E2990 8012C5D0 244400BC */   addiu     $a0, $v0, 0xBC
/* E2994 8012C5D4 0804B179 */  j          .Lrace_8012C5E4
/* E2998 8012C5D8 00001021 */   addu      $v0, $zero, $zero
.Lrace_8012C5DC:
/* E299C 8012C5DC 0C016427 */  jal        func_8005909C
/* E29A0 8012C5E0 00000000 */   nop
.Lrace_8012C5E4:
/* E29A4 8012C5E4 02002021 */  addu       $a0, $s0, $zero
/* E29A8 8012C5E8 02202821 */  addu       $a1, $s1, $zero
/* E29AC 8012C5EC 00403021 */  addu       $a2, $v0, $zero
/* E29B0 8012C5F0 02E03821 */  addu       $a3, $s7, $zero
/* E29B4 8012C5F4 0C049ACD */  jal        func_race_80126B34
/* E29B8 8012C5F8 AFB20010 */   sw        $s2, 0x10($sp)
/* E29BC 8012C5FC 26520001 */  addiu      $s2, $s2, 0x1
/* E29C0 8012C600 0804B153 */  j          .Lrace_8012C54C
/* E29C4 8012C604 AE160014 */   sw        $s6, 0x14($s0)
.Lrace_8012C608:
/* E29C8 8012C608 8FBF0038 */  lw         $ra, 0x38($sp)
/* E29CC 8012C60C 8FB70034 */  lw         $s7, 0x34($sp)
/* E29D0 8012C610 8FB60030 */  lw         $s6, 0x30($sp)
/* E29D4 8012C614 8FB5002C */  lw         $s5, 0x2C($sp)
/* E29D8 8012C618 8FB40028 */  lw         $s4, 0x28($sp)
/* E29DC 8012C61C 8FB30024 */  lw         $s3, 0x24($sp)
/* E29E0 8012C620 8FB20020 */  lw         $s2, 0x20($sp)
/* E29E4 8012C624 8FB1001C */  lw         $s1, 0x1C($sp)
/* E29E8 8012C628 8FB00018 */  lw         $s0, 0x18($sp)
/* E29EC 8012C62C 03E00008 */  jr         $ra
/* E29F0 8012C630 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_8012C634
/* E29F4 8012C634 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E29F8 8012C638 AFB1001C */  sw         $s1, 0x1C($sp)
/* E29FC 8012C63C 00808821 */  addu       $s1, $a0, $zero
/* E2A00 8012C640 AFB40028 */  sw         $s4, 0x28($sp)
/* E2A04 8012C644 00A0A021 */  addu       $s4, $a1, $zero
/* E2A08 8012C648 AFB30024 */  sw         $s3, 0x24($sp)
/* E2A0C 8012C64C AFBF002C */  sw         $ra, 0x2C($sp)
/* E2A10 8012C650 AFB20020 */  sw         $s2, 0x20($sp)
/* E2A14 8012C654 AFB00018 */  sw         $s0, 0x18($sp)
/* E2A18 8012C658 8E23187C */  lw         $v1, 0x187C($s1)
/* E2A1C 8012C65C 24020019 */  addiu      $v0, $zero, 0x19
/* E2A20 8012C660 00431023 */  subu       $v0, $v0, $v1
/* E2A24 8012C664 2C420002 */  sltiu      $v0, $v0, 0x2
/* E2A28 8012C668 14400066 */  bnez       $v0, .Lrace_8012C804
/* E2A2C 8012C66C 00C09821 */   addu      $s3, $a2, $zero
/* E2A30 8012C670 8E320098 */  lw         $s2, 0x98($s1)
/* E2A34 8012C674 1640000A */  bnez       $s2, .Lrace_8012C6A0
/* E2A38 8012C678 24050002 */   addiu     $a1, $zero, 0x2
/* E2A3C 8012C67C 00003021 */  addu       $a2, $zero, $zero
/* E2A40 8012C680 24070001 */  addiu      $a3, $zero, 0x1
/* E2A44 8012C684 00A01021 */  addu       $v0, $a1, $zero
/* E2A48 8012C688 AFA20010 */  sw         $v0, 0x10($sp)
/* E2A4C 8012C68C 24020003 */  addiu      $v0, $zero, 0x3
/* E2A50 8012C690 0C04B26B */  jal        func_race_8012C9AC
/* E2A54 8012C694 AFA20014 */   sw        $v0, 0x14($sp)
/* E2A58 8012C698 0804B1AA */  j          .Lrace_8012C6A8
/* E2A5C 8012C69C 00409021 */   addu      $s2, $v0, $zero
.Lrace_8012C6A0:
/* E2A60 8012C6A0 8E42000C */  lw         $v0, 0xC($s2)
/* E2A64 8012C6A4 AE220098 */  sw         $v0, 0x98($s1)
.Lrace_8012C6A8:
/* E2A68 8012C6A8 8E221880 */  lw         $v0, 0x1880($s1)
/* E2A6C 8012C6AC AE42000C */  sw         $v0, 0xC($s2)
/* E2A70 8012C6B0 24020001 */  addiu      $v0, $zero, 0x1
/* E2A74 8012C6B4 12620018 */  beq        $s3, $v0, .Lrace_8012C718
/* E2A78 8012C6B8 AE321880 */   sw        $s2, 0x1880($s1)
/* E2A7C 8012C6BC 12600007 */  beqz       $s3, .Lrace_8012C6DC
/* E2A80 8012C6C0 24020002 */   addiu     $v0, $zero, 0x2
/* E2A84 8012C6C4 12620023 */  beq        $s3, $v0, .Lrace_8012C754
/* E2A88 8012C6C8 24020003 */   addiu     $v0, $zero, 0x3
/* E2A8C 8012C6CC 12620030 */  beq        $s3, $v0, .Lrace_8012C790
/* E2A90 8012C6D0 00008021 */   addu      $s0, $zero, $zero
/* E2A94 8012C6D4 0804B1FA */  j          .Lrace_8012C7E8
/* E2A98 8012C6D8 00001021 */   addu      $v0, $zero, $zero
.Lrace_8012C6DC:
/* E2A9C 8012C6DC 3C02800D */  lui        $v0, %hi(D_race_800CEE38)
/* E2AA0 8012C6E0 8E23005C */  lw         $v1, 0x5C($s1)
/* E2AA4 8012C6E4 2445EE38 */  addiu      $a1, $v0, %lo(D_race_800CEE38)
/* E2AA8 8012C6E8 8C6200BC */  lw         $v0, 0xBC($v1)
/* E2AAC 8012C6EC 14400003 */  bnez       $v0, .Lrace_8012C6FC
/* E2AB0 8012C6F0 246400BC */   addiu     $a0, $v1, 0xBC
/* E2AB4 8012C6F4 0804B1C2 */  j          .Lrace_8012C708
/* E2AB8 8012C6F8 00008021 */   addu      $s0, $zero, $zero
.Lrace_8012C6FC:
/* E2ABC 8012C6FC 0C016427 */  jal        func_8005909C
/* E2AC0 8012C700 00000000 */   nop
/* E2AC4 8012C704 00408021 */  addu       $s0, $v0, $zero
.Lrace_8012C708:
/* E2AC8 8012C708 3C02800D */  lui        $v0, %hi(D_race_800CEE40)
/* E2ACC 8012C70C 8E23005C */  lw         $v1, 0x5C($s1)
/* E2AD0 8012C710 0804B1F2 */  j          .Lrace_8012C7C8
/* E2AD4 8012C714 2445EE40 */   addiu     $a1, $v0, %lo(D_race_800CEE40)
.Lrace_8012C718:
/* E2AD8 8012C718 3C02800D */  lui        $v0, %hi(D_race_800CEE48)
/* E2ADC 8012C71C 8E23005C */  lw         $v1, 0x5C($s1)
/* E2AE0 8012C720 2445EE48 */  addiu      $a1, $v0, %lo(D_race_800CEE48)
/* E2AE4 8012C724 8C6200BC */  lw         $v0, 0xBC($v1)
/* E2AE8 8012C728 14400003 */  bnez       $v0, .Lrace_8012C738
/* E2AEC 8012C72C 246400BC */   addiu     $a0, $v1, 0xBC
/* E2AF0 8012C730 0804B1D1 */  j          .Lrace_8012C744
/* E2AF4 8012C734 00008021 */   addu      $s0, $zero, $zero
.Lrace_8012C738:
/* E2AF8 8012C738 0C016427 */  jal        func_8005909C
/* E2AFC 8012C73C 00000000 */   nop
/* E2B00 8012C740 00408021 */  addu       $s0, $v0, $zero
.Lrace_8012C744:
/* E2B04 8012C744 3C02800D */  lui        $v0, %hi(D_race_800CEE50)
/* E2B08 8012C748 8E23005C */  lw         $v1, 0x5C($s1)
/* E2B0C 8012C74C 0804B1F2 */  j          .Lrace_8012C7C8
/* E2B10 8012C750 2445EE50 */   addiu     $a1, $v0, %lo(D_race_800CEE50)
.Lrace_8012C754:
/* E2B14 8012C754 3C02800D */  lui        $v0, %hi(D_race_800CEE58)
/* E2B18 8012C758 8E23005C */  lw         $v1, 0x5C($s1)
/* E2B1C 8012C75C 2445EE58 */  addiu      $a1, $v0, %lo(D_race_800CEE58)
/* E2B20 8012C760 8C6200BC */  lw         $v0, 0xBC($v1)
/* E2B24 8012C764 14400003 */  bnez       $v0, .Lrace_8012C774
/* E2B28 8012C768 246400BC */   addiu     $a0, $v1, 0xBC
/* E2B2C 8012C76C 0804B1E0 */  j          .Lrace_8012C780
/* E2B30 8012C770 00008021 */   addu      $s0, $zero, $zero
.Lrace_8012C774:
/* E2B34 8012C774 0C016427 */  jal        func_8005909C
/* E2B38 8012C778 00000000 */   nop
/* E2B3C 8012C77C 00408021 */  addu       $s0, $v0, $zero
.Lrace_8012C780:
/* E2B40 8012C780 3C02800D */  lui        $v0, %hi(D_race_800CEE60)
/* E2B44 8012C784 8E23005C */  lw         $v1, 0x5C($s1)
/* E2B48 8012C788 0804B1F2 */  j          .Lrace_8012C7C8
/* E2B4C 8012C78C 2445EE60 */   addiu     $a1, $v0, %lo(D_race_800CEE60)
.Lrace_8012C790:
/* E2B50 8012C790 3C02800D */  lui        $v0, %hi(D_race_800CEE68)
/* E2B54 8012C794 8E23005C */  lw         $v1, 0x5C($s1)
/* E2B58 8012C798 2445EE68 */  addiu      $a1, $v0, %lo(D_race_800CEE68)
/* E2B5C 8012C79C 8C6200BC */  lw         $v0, 0xBC($v1)
/* E2B60 8012C7A0 14400003 */  bnez       $v0, .Lrace_8012C7B0
/* E2B64 8012C7A4 246400BC */   addiu     $a0, $v1, 0xBC
/* E2B68 8012C7A8 0804B1EF */  j          .Lrace_8012C7BC
/* E2B6C 8012C7AC 00008021 */   addu      $s0, $zero, $zero
.Lrace_8012C7B0:
/* E2B70 8012C7B0 0C016427 */  jal        func_8005909C
/* E2B74 8012C7B4 00000000 */   nop
/* E2B78 8012C7B8 00408021 */  addu       $s0, $v0, $zero
.Lrace_8012C7BC:
/* E2B7C 8012C7BC 3C02800D */  lui        $v0, %hi(D_race_800CEE70)
/* E2B80 8012C7C0 8E23005C */  lw         $v1, 0x5C($s1)
/* E2B84 8012C7C4 2445EE70 */  addiu      $a1, $v0, %lo(D_race_800CEE70)
.Lrace_8012C7C8:
/* E2B88 8012C7C8 8C6200BC */  lw         $v0, 0xBC($v1)
/* E2B8C 8012C7CC 10400005 */  beqz       $v0, .Lrace_8012C7E4
/* E2B90 8012C7D0 246400BC */   addiu     $a0, $v1, 0xBC
/* E2B94 8012C7D4 0C016427 */  jal        func_8005909C
/* E2B98 8012C7D8 00000000 */   nop
/* E2B9C 8012C7DC 0804B1FB */  j          .Lrace_8012C7EC
/* E2BA0 8012C7E0 02402021 */   addu      $a0, $s2, $zero
.Lrace_8012C7E4:
/* E2BA4 8012C7E4 00001021 */  addu       $v0, $zero, $zero
.Lrace_8012C7E8:
/* E2BA8 8012C7E8 02402021 */  addu       $a0, $s2, $zero
.Lrace_8012C7EC:
/* E2BAC 8012C7EC 02802821 */  addu       $a1, $s4, $zero
/* E2BB0 8012C7F0 02603021 */  addu       $a2, $s3, $zero
/* E2BB4 8012C7F4 02003821 */  addu       $a3, $s0, $zero
/* E2BB8 8012C7F8 0C04B7F4 */  jal        func_race_8012DFD0
/* E2BBC 8012C7FC AFA20010 */   sw        $v0, 0x10($sp)
/* E2BC0 8012C800 AE530014 */  sw         $s3, 0x14($s2)
.Lrace_8012C804:
/* E2BC4 8012C804 8FBF002C */  lw         $ra, 0x2C($sp)
/* E2BC8 8012C808 8FB40028 */  lw         $s4, 0x28($sp)
/* E2BCC 8012C80C 8FB30024 */  lw         $s3, 0x24($sp)
/* E2BD0 8012C810 8FB20020 */  lw         $s2, 0x20($sp)
/* E2BD4 8012C814 8FB1001C */  lw         $s1, 0x1C($sp)
/* E2BD8 8012C818 8FB00018 */  lw         $s0, 0x18($sp)
/* E2BDC 8012C81C 03E00008 */  jr         $ra
/* E2BE0 8012C820 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_8012C824
/* E2BE4 8012C824 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E2BE8 8012C828 AFB1001C */  sw         $s1, 0x1C($sp)
/* E2BEC 8012C82C 00808821 */  addu       $s1, $a0, $zero
/* E2BF0 8012C830 AFB30024 */  sw         $s3, 0x24($sp)
/* E2BF4 8012C834 00A09821 */  addu       $s3, $a1, $zero
/* E2BF8 8012C838 AFB20020 */  sw         $s2, 0x20($sp)
/* E2BFC 8012C83C 00C09021 */  addu       $s2, $a2, $zero
/* E2C00 8012C840 24020003 */  addiu      $v0, $zero, 0x3
/* E2C04 8012C844 AFBF0028 */  sw         $ra, 0x28($sp)
/* E2C08 8012C848 16420005 */  bne        $s2, $v0, .Lrace_8012C860
/* E2C0C 8012C84C AFB00018 */   sw        $s0, 0x18($sp)
/* E2C10 8012C850 0C04B23C */  jal        func_race_8012C8F0
/* E2C14 8012C854 00403021 */   addu      $a2, $v0, $zero
/* E2C18 8012C858 0804B235 */  j          .Lrace_8012C8D4
/* E2C1C 8012C85C 00000000 */   nop
.Lrace_8012C860:
/* E2C20 8012C860 8E23187C */  lw         $v1, 0x187C($s1)
/* E2C24 8012C864 24020019 */  addiu      $v0, $zero, 0x19
/* E2C28 8012C868 00431023 */  subu       $v0, $v0, $v1
/* E2C2C 8012C86C 2C420003 */  sltiu      $v0, $v0, 0x3
/* E2C30 8012C870 14400018 */  bnez       $v0, .Lrace_8012C8D4
/* E2C34 8012C874 00000000 */   nop
/* E2C38 8012C878 8E30009C */  lw         $s0, 0x9C($s1)
/* E2C3C 8012C87C 1600000B */  bnez       $s0, .Lrace_8012C8AC
/* E2C40 8012C880 02202021 */   addu      $a0, $s1, $zero
/* E2C44 8012C884 24050003 */  addiu      $a1, $zero, 0x3
/* E2C48 8012C888 00003021 */  addu       $a2, $zero, $zero
/* E2C4C 8012C88C 24020002 */  addiu      $v0, $zero, 0x2
/* E2C50 8012C890 AFA20010 */  sw         $v0, 0x10($sp)
/* E2C54 8012C894 2402FFFF */  addiu      $v0, $zero, -0x1
/* E2C58 8012C898 24070001 */  addiu      $a3, $zero, 0x1
/* E2C5C 8012C89C 0C04B26B */  jal        func_race_8012C9AC
/* E2C60 8012C8A0 AFA20014 */   sw        $v0, 0x14($sp)
/* E2C64 8012C8A4 0804B22D */  j          .Lrace_8012C8B4
/* E2C68 8012C8A8 00408021 */   addu      $s0, $v0, $zero
.Lrace_8012C8AC:
/* E2C6C 8012C8AC 8E02000C */  lw         $v0, 0xC($s0)
/* E2C70 8012C8B0 AE22009C */  sw         $v0, 0x9C($s1)
.Lrace_8012C8B4:
/* E2C74 8012C8B4 02002021 */  addu       $a0, $s0, $zero
/* E2C78 8012C8B8 02602821 */  addu       $a1, $s3, $zero
/* E2C7C 8012C8BC 8E221880 */  lw         $v0, 0x1880($s1)
/* E2C80 8012C8C0 02403021 */  addu       $a2, $s2, $zero
/* E2C84 8012C8C4 AE02000C */  sw         $v0, 0xC($s0)
/* E2C88 8012C8C8 0C04BA73 */  jal        func_race_8012E9CC
/* E2C8C 8012C8CC AE301880 */   sw        $s0, 0x1880($s1)
/* E2C90 8012C8D0 AE120014 */  sw         $s2, 0x14($s0)
.Lrace_8012C8D4:
/* E2C94 8012C8D4 8FBF0028 */  lw         $ra, 0x28($sp)
/* E2C98 8012C8D8 8FB30024 */  lw         $s3, 0x24($sp)
/* E2C9C 8012C8DC 8FB20020 */  lw         $s2, 0x20($sp)
/* E2CA0 8012C8E0 8FB1001C */  lw         $s1, 0x1C($sp)
/* E2CA4 8012C8E4 8FB00018 */  lw         $s0, 0x18($sp)
/* E2CA8 8012C8E8 03E00008 */  jr         $ra
/* E2CAC 8012C8EC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_8012C8F0
/* E2CB0 8012C8F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E2CB4 8012C8F4 AFB1001C */  sw         $s1, 0x1C($sp)
/* E2CB8 8012C8F8 00808821 */  addu       $s1, $a0, $zero
/* E2CBC 8012C8FC AFB30024 */  sw         $s3, 0x24($sp)
/* E2CC0 8012C900 00A09821 */  addu       $s3, $a1, $zero
/* E2CC4 8012C904 AFBF0028 */  sw         $ra, 0x28($sp)
/* E2CC8 8012C908 AFB20020 */  sw         $s2, 0x20($sp)
/* E2CCC 8012C90C AFB00018 */  sw         $s0, 0x18($sp)
/* E2CD0 8012C910 8E3000A0 */  lw         $s0, 0xA0($s1)
/* E2CD4 8012C914 16000009 */  bnez       $s0, .Lrace_8012C93C
/* E2CD8 8012C918 00C09021 */   addu      $s2, $a2, $zero
/* E2CDC 8012C91C 24050003 */  addiu      $a1, $zero, 0x3
/* E2CE0 8012C920 2407FFFF */  addiu      $a3, $zero, -0x1
/* E2CE4 8012C924 00E01021 */  addu       $v0, $a3, $zero
/* E2CE8 8012C928 AFA20010 */  sw         $v0, 0x10($sp)
/* E2CEC 8012C92C 0C04B26B */  jal        func_race_8012C9AC
/* E2CF0 8012C930 AFA20014 */   sw        $v0, 0x14($sp)
/* E2CF4 8012C934 0804B251 */  j          .Lrace_8012C944
/* E2CF8 8012C938 00408021 */   addu      $s0, $v0, $zero
.Lrace_8012C93C:
/* E2CFC 8012C93C 8E02000C */  lw         $v0, 0xC($s0)
/* E2D00 8012C940 AE2200A0 */  sw         $v0, 0xA0($s1)
.Lrace_8012C944:
/* E2D04 8012C944 8E221880 */  lw         $v0, 0x1880($s1)
/* E2D08 8012C948 AE02000C */  sw         $v0, 0xC($s0)
/* E2D0C 8012C94C 3C02800D */  lui        $v0, %hi(D_race_800CEE78)
/* E2D10 8012C950 8E23005C */  lw         $v1, 0x5C($s1)
/* E2D14 8012C954 2445EE78 */  addiu      $a1, $v0, %lo(D_race_800CEE78)
/* E2D18 8012C958 AE301880 */  sw         $s0, 0x1880($s1)
/* E2D1C 8012C95C 8C6200B0 */  lw         $v0, 0xB0($v1)
/* E2D20 8012C960 14400003 */  bnez       $v0, .Lrace_8012C970
/* E2D24 8012C964 246400B0 */   addiu     $a0, $v1, 0xB0
/* E2D28 8012C968 0804B25E */  j          .Lrace_8012C978
/* E2D2C 8012C96C 00001021 */   addu      $v0, $zero, $zero
.Lrace_8012C970:
/* E2D30 8012C970 0C016427 */  jal        func_8005909C
/* E2D34 8012C974 00000000 */   nop
.Lrace_8012C978:
/* E2D38 8012C978 02002021 */  addu       $a0, $s0, $zero
/* E2D3C 8012C97C 02602821 */  addu       $a1, $s3, $zero
/* E2D40 8012C980 8E271998 */  lw         $a3, 0x1998($s1)
/* E2D44 8012C984 0C04BEC0 */  jal        func_race_8012FB00
/* E2D48 8012C988 00403021 */   addu      $a2, $v0, $zero
/* E2D4C 8012C98C AE120014 */  sw         $s2, 0x14($s0)
/* E2D50 8012C990 8FBF0028 */  lw         $ra, 0x28($sp)
/* E2D54 8012C994 8FB30024 */  lw         $s3, 0x24($sp)
/* E2D58 8012C998 8FB20020 */  lw         $s2, 0x20($sp)
/* E2D5C 8012C99C 8FB1001C */  lw         $s1, 0x1C($sp)
/* E2D60 8012C9A0 8FB00018 */  lw         $s0, 0x18($sp)
/* E2D64 8012C9A4 03E00008 */  jr         $ra
/* E2D68 8012C9A8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_8012C9AC
/* E2D6C 8012C9AC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E2D70 8012C9B0 AFBE0030 */  sw         $fp, 0x30($sp)
/* E2D74 8012C9B4 8FBE0048 */  lw         $fp, 0x48($sp)
/* E2D78 8012C9B8 AFB7002C */  sw         $s7, 0x2C($sp)
/* E2D7C 8012C9BC 8FB7004C */  lw         $s7, 0x4C($sp)
/* E2D80 8012C9C0 AFB60028 */  sw         $s6, 0x28($sp)
/* E2D84 8012C9C4 0000B021 */  addu       $s6, $zero, $zero
/* E2D88 8012C9C8 AFB3001C */  sw         $s3, 0x1C($sp)
/* E2D8C 8012C9CC 02C09821 */  addu       $s3, $s6, $zero
/* E2D90 8012C9D0 AFB50024 */  sw         $s5, 0x24($sp)
/* E2D94 8012C9D4 02C0A821 */  addu       $s5, $s6, $zero
/* E2D98 8012C9D8 AFB20018 */  sw         $s2, 0x18($sp)
/* E2D9C 8012C9DC 02C09021 */  addu       $s2, $s6, $zero
/* E2DA0 8012C9E0 AFB40020 */  sw         $s4, 0x20($sp)
/* E2DA4 8012C9E4 2414FFFF */  addiu      $s4, $zero, -0x1
/* E2DA8 8012C9E8 AFBF0034 */  sw         $ra, 0x34($sp)
/* E2DAC 8012C9EC AFB10014 */  sw         $s1, 0x14($sp)
/* E2DB0 8012C9F0 AFB00010 */  sw         $s0, 0x10($sp)
/* E2DB4 8012C9F4 AFA40038 */  sw         $a0, 0x38($sp)
/* E2DB8 8012C9F8 AFA5003C */  sw         $a1, 0x3C($sp)
/* E2DBC 8012C9FC AFA60040 */  sw         $a2, 0x40($sp)
/* E2DC0 8012CA00 AFA70044 */  sw         $a3, 0x44($sp)
/* E2DC4 8012CA04 8C901880 */  lw         $s0, 0x1880($a0)
.Lrace_8012CA08:
/* E2DC8 8012CA08 12000028 */  beqz       $s0, .Lrace_8012CAAC
/* E2DCC 8012CA0C 00008821 */   addu      $s1, $zero, $zero
/* E2DD0 8012CA10 8E020000 */  lw         $v0, 0x0($s0)
/* E2DD4 8012CA14 84440038 */  lh         $a0, 0x38($v0)
/* E2DD8 8012CA18 8C42003C */  lw         $v0, 0x3C($v0)
/* E2DDC 8012CA1C 0040F809 */  jalr       $v0
/* E2DE0 8012CA20 02042021 */   addu      $a0, $s0, $a0
/* E2DE4 8012CA24 8FA8003C */  lw         $t0, 0x3C($sp)
/* E2DE8 8012CA28 1448000C */  bne        $v0, $t0, .Lrace_8012CA5C
/* E2DEC 8012CA2C 00000000 */   nop
/* E2DF0 8012CA30 8E020014 */  lw         $v0, 0x14($s0)
/* E2DF4 8012CA34 8FA80040 */  lw         $t0, 0x40($sp)
/* E2DF8 8012CA38 50480008 */  beql       $v0, $t0, .Lrace_8012CA5C
/* E2DFC 8012CA3C 24110001 */   addiu     $s1, $zero, 0x1
/* E2E00 8012CA40 8FA80044 */  lw         $t0, 0x44($sp)
/* E2E04 8012CA44 50480005 */  beql       $v0, $t0, .Lrace_8012CA5C
/* E2E08 8012CA48 24110001 */   addiu     $s1, $zero, 0x1
/* E2E0C 8012CA4C 505E0003 */  beql       $v0, $fp, .Lrace_8012CA5C
/* E2E10 8012CA50 24110001 */   addiu     $s1, $zero, 0x1
/* E2E14 8012CA54 50570001 */  beql       $v0, $s7, .Lrace_8012CA5C
/* E2E18 8012CA58 24110001 */   addiu     $s1, $zero, 0x1
.Lrace_8012CA5C:
/* E2E1C 8012CA5C 52200010 */  beql       $s1, $zero, .Lrace_8012CAA0
/* E2E20 8012CA60 0200B021 */   addu      $s6, $s0, $zero
/* E2E24 8012CA64 8E030004 */  lw         $v1, 0x4($s0)
/* E2E28 8012CA68 0243102A */  slt        $v0, $s2, $v1
/* E2E2C 8012CA6C 54400008 */  bnel       $v0, $zero, .Lrace_8012CA90
/* E2E30 8012CA70 00609021 */   addu      $s2, $v1, $zero
/* E2E34 8012CA74 14720003 */  bne        $v1, $s2, .Lrace_8012CA84
/* E2E38 8012CA78 00001021 */   addu      $v0, $zero, $zero
/* E2E3C 8012CA7C 8E020008 */  lw         $v0, 0x8($s0)
/* E2E40 8012CA80 0054102B */  sltu       $v0, $v0, $s4
.Lrace_8012CA84:
/* E2E44 8012CA84 50400006 */  beql       $v0, $zero, .Lrace_8012CAA0
/* E2E48 8012CA88 0200B021 */   addu      $s6, $s0, $zero
/* E2E4C 8012CA8C 00609021 */  addu       $s2, $v1, $zero
.Lrace_8012CA90:
/* E2E50 8012CA90 8E140008 */  lw         $s4, 0x8($s0)
/* E2E54 8012CA94 02009821 */  addu       $s3, $s0, $zero
/* E2E58 8012CA98 02C0A821 */  addu       $s5, $s6, $zero
/* E2E5C 8012CA9C 0200B021 */  addu       $s6, $s0, $zero
.Lrace_8012CAA0:
/* E2E60 8012CAA0 8E10000C */  lw         $s0, 0xC($s0)
/* E2E64 8012CAA4 0804B282 */  j          .Lrace_8012CA08
/* E2E68 8012CAA8 00000000 */   nop
.Lrace_8012CAAC:
/* E2E6C 8012CAAC 16A00005 */  bnez       $s5, .Lrace_8012CAC4
/* E2E70 8012CAB0 00000000 */   nop
/* E2E74 8012CAB4 8E62000C */  lw         $v0, 0xC($s3)
/* E2E78 8012CAB8 8FA80038 */  lw         $t0, 0x38($sp)
/* E2E7C 8012CABC 0804B2B3 */  j          .Lrace_8012CACC
/* E2E80 8012CAC0 AD021880 */   sw        $v0, 0x1880($t0)
.Lrace_8012CAC4:
/* E2E84 8012CAC4 8E62000C */  lw         $v0, 0xC($s3)
/* E2E88 8012CAC8 AEA2000C */  sw         $v0, 0xC($s5)
.Lrace_8012CACC:
/* E2E8C 8012CACC 8E620000 */  lw         $v0, 0x0($s3)
/* E2E90 8012CAD0 AE60000C */  sw         $zero, 0xC($s3)
/* E2E94 8012CAD4 84440040 */  lh         $a0, 0x40($v0)
/* E2E98 8012CAD8 8C420044 */  lw         $v0, 0x44($v0)
/* E2E9C 8012CADC 0040F809 */  jalr       $v0
/* E2EA0 8012CAE0 02642021 */   addu      $a0, $s3, $a0
/* E2EA4 8012CAE4 02601021 */  addu       $v0, $s3, $zero
/* E2EA8 8012CAE8 8FBF0034 */  lw         $ra, 0x34($sp)
/* E2EAC 8012CAEC 8FBE0030 */  lw         $fp, 0x30($sp)
/* E2EB0 8012CAF0 8FB7002C */  lw         $s7, 0x2C($sp)
/* E2EB4 8012CAF4 8FB60028 */  lw         $s6, 0x28($sp)
/* E2EB8 8012CAF8 8FB50024 */  lw         $s5, 0x24($sp)
/* E2EBC 8012CAFC 8FB40020 */  lw         $s4, 0x20($sp)
/* E2EC0 8012CB00 8FB3001C */  lw         $s3, 0x1C($sp)
/* E2EC4 8012CB04 8FB20018 */  lw         $s2, 0x18($sp)
/* E2EC8 8012CB08 8FB10014 */  lw         $s1, 0x14($sp)
/* E2ECC 8012CB0C 8FB00010 */  lw         $s0, 0x10($sp)
/* E2ED0 8012CB10 03E00008 */  jr         $ra
/* E2ED4 8012CB14 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_8012CB18
/* E2ED8 8012CB18 00005821 */  addu       $t3, $zero, $zero
/* E2EDC 8012CB1C 2409FFFF */  addiu      $t1, $zero, -0x1
/* E2EE0 8012CB20 01603821 */  addu       $a3, $t3, $zero
/* E2EE4 8012CB24 240A0003 */  addiu      $t2, $zero, 0x3
/* E2EE8 8012CB28 01604021 */  addu       $t0, $t3, $zero
.Lrace_8012CB2C:
/* E2EEC 8012CB2C 2D020003 */  sltiu      $v0, $t0, 0x3
/* E2EF0 8012CB30 10400016 */  beqz       $v0, .Lrace_8012CB8C
/* E2EF4 8012CB34 00003021 */   addu      $a2, $zero, $zero
/* E2EF8 8012CB38 8CA30000 */  lw         $v1, 0x0($a1)
.Lrace_8012CB3C:
/* E2EFC 8012CB3C 1060000F */  beqz       $v1, .Lrace_8012CB7C
/* E2F00 8012CB40 00000000 */   nop
/* E2F04 8012CB44 8C620004 */  lw         $v0, 0x4($v1)
/* E2F08 8012CB48 15420003 */  bne        $t2, $v0, .Lrace_8012CB58
/* E2F0C 8012CB4C 00002021 */   addu      $a0, $zero, $zero
/* E2F10 8012CB50 8C620250 */  lw         $v0, 0x250($v1)
/* E2F14 8012CB54 0049202B */  sltu       $a0, $v0, $t1
.Lrace_8012CB58:
/* E2F18 8012CB58 50800005 */  beql       $a0, $zero, .Lrace_8012CB70
/* E2F1C 8012CB5C 00603021 */   addu      $a2, $v1, $zero
/* E2F20 8012CB60 8C690250 */  lw         $t1, 0x250($v1)
/* E2F24 8012CB64 00603821 */  addu       $a3, $v1, $zero
/* E2F28 8012CB68 00C05821 */  addu       $t3, $a2, $zero
/* E2F2C 8012CB6C 00603021 */  addu       $a2, $v1, $zero
.Lrace_8012CB70:
/* E2F30 8012CB70 8C630284 */  lw         $v1, 0x284($v1)
/* E2F34 8012CB74 0804B2CF */  j          .Lrace_8012CB3C
/* E2F38 8012CB78 00000000 */   nop
.Lrace_8012CB7C:
/* E2F3C 8012CB7C 14E00007 */  bnez       $a3, .Lrace_8012CB9C
/* E2F40 8012CB80 240A0002 */   addiu     $t2, $zero, 0x2
/* E2F44 8012CB84 0804B2CB */  j          .Lrace_8012CB2C
/* E2F48 8012CB88 25080001 */   addiu     $t0, $t0, 0x1
.Lrace_8012CB8C:
/* E2F4C 8012CB8C 14E00003 */  bnez       $a3, .Lrace_8012CB9C
/* E2F50 8012CB90 00000000 */   nop
/* E2F54 8012CB94 8CA70000 */  lw         $a3, 0x0($a1)
/* E2F58 8012CB98 00005821 */  addu       $t3, $zero, $zero
.Lrace_8012CB9C:
/* E2F5C 8012CB9C 15600004 */  bnez       $t3, .Lrace_8012CBB0
/* E2F60 8012CBA0 00000000 */   nop
/* E2F64 8012CBA4 8CE20284 */  lw         $v0, 0x284($a3)
/* E2F68 8012CBA8 0804B2EE */  j          .Lrace_8012CBB8
/* E2F6C 8012CBAC ACA20000 */   sw        $v0, 0x0($a1)
.Lrace_8012CBB0:
/* E2F70 8012CBB0 8CE20284 */  lw         $v0, 0x284($a3)
/* E2F74 8012CBB4 AD620284 */  sw         $v0, 0x284($t3)
.Lrace_8012CBB8:
/* E2F78 8012CBB8 ACE00284 */  sw         $zero, 0x284($a3)
/* E2F7C 8012CBBC 03E00008 */  jr         $ra
/* E2F80 8012CBC0 00E01021 */   addu      $v0, $a3, $zero

glabel func_race_8012CBC4
/* E2F84 8012CBC4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E2F88 8012CBC8 AFB00010 */  sw         $s0, 0x10($sp)
/* E2F8C 8012CBCC 00808021 */  addu       $s0, $a0, $zero
/* E2F90 8012CBD0 AFB10014 */  sw         $s1, 0x14($sp)
/* E2F94 8012CBD4 00A08821 */  addu       $s1, $a1, $zero
/* E2F98 8012CBD8 AFB20018 */  sw         $s2, 0x18($sp)
/* E2F9C 8012CBDC 00C09021 */  addu       $s2, $a2, $zero
/* E2FA0 8012CBE0 AFBF0020 */  sw         $ra, 0x20($sp)
/* E2FA4 8012CBE4 AFB3001C */  sw         $s3, 0x1C($sp)
/* E2FA8 8012CBE8 8E041944 */  lw         $a0, 0x1944($s0)
/* E2FAC 8012CBEC 14800006 */  bnez       $a0, .Lrace_8012CC08
/* E2FB0 8012CBF0 00E09821 */   addu      $s3, $a3, $zero
/* E2FB4 8012CBF4 02002021 */  addu       $a0, $s0, $zero
/* E2FB8 8012CBF8 0C04B2C6 */  jal        func_race_8012CB18
/* E2FBC 8012CBFC 2605193C */   addiu     $a1, $s0, 0x193C
/* E2FC0 8012CC00 0804B304 */  j          .Lrace_8012CC10
/* E2FC4 8012CC04 00402021 */   addu      $a0, $v0, $zero
.Lrace_8012CC08:
/* E2FC8 8012CC08 8C820284 */  lw         $v0, 0x284($a0)
/* E2FCC 8012CC0C AE021944 */  sw         $v0, 0x1944($s0)
.Lrace_8012CC10:
/* E2FD0 8012CC10 02202821 */  addu       $a1, $s1, $zero
/* E2FD4 8012CC14 02403021 */  addu       $a2, $s2, $zero
/* E2FD8 8012CC18 8E02193C */  lw         $v0, 0x193C($s0)
/* E2FDC 8012CC1C 02603821 */  addu       $a3, $s3, $zero
/* E2FE0 8012CC20 AC820284 */  sw         $v0, 0x284($a0)
/* E2FE4 8012CC24 0C03D035 */  jal        func_race_800F40D4
/* E2FE8 8012CC28 AE04193C */   sw        $a0, 0x193C($s0)
/* E2FEC 8012CC2C 8FBF0020 */  lw         $ra, 0x20($sp)
/* E2FF0 8012CC30 8FB3001C */  lw         $s3, 0x1C($sp)
/* E2FF4 8012CC34 8FB20018 */  lw         $s2, 0x18($sp)
/* E2FF8 8012CC38 8FB10014 */  lw         $s1, 0x14($sp)
/* E2FFC 8012CC3C 8FB00010 */  lw         $s0, 0x10($sp)
/* E3000 8012CC40 03E00008 */  jr         $ra
/* E3004 8012CC44 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8012CC48
/* E3008 8012CC48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E300C 8012CC4C AFBF0010 */  sw         $ra, 0x10($sp)
/* E3010 8012CC50 0C04B2F1 */  jal        func_race_8012CBC4
/* E3014 8012CC54 00000000 */   nop
/* E3018 8012CC58 8FBF0010 */  lw         $ra, 0x10($sp)
/* E301C 8012CC5C 03E00008 */  jr         $ra
/* E3020 8012CC60 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_8012CC64
/* E3024 8012CC64 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E3028 8012CC68 AFB00010 */  sw         $s0, 0x10($sp)
/* E302C 8012CC6C 00808021 */  addu       $s0, $a0, $zero
/* E3030 8012CC70 AFB10014 */  sw         $s1, 0x14($sp)
/* E3034 8012CC74 00A08821 */  addu       $s1, $a1, $zero
/* E3038 8012CC78 AFB20018 */  sw         $s2, 0x18($sp)
/* E303C 8012CC7C 00C09021 */  addu       $s2, $a2, $zero
/* E3040 8012CC80 AFBF0020 */  sw         $ra, 0x20($sp)
/* E3044 8012CC84 AFB3001C */  sw         $s3, 0x1C($sp)
/* E3048 8012CC88 8E041948 */  lw         $a0, 0x1948($s0)
/* E304C 8012CC8C 14800006 */  bnez       $a0, .Lrace_8012CCA8
/* E3050 8012CC90 00E09821 */   addu      $s3, $a3, $zero
/* E3054 8012CC94 02002021 */  addu       $a0, $s0, $zero
/* E3058 8012CC98 0C04B2C6 */  jal        func_race_8012CB18
/* E305C 8012CC9C 26051940 */   addiu     $a1, $s0, 0x1940
/* E3060 8012CCA0 0804B32C */  j          .Lrace_8012CCB0
/* E3064 8012CCA4 00402021 */   addu      $a0, $v0, $zero
.Lrace_8012CCA8:
/* E3068 8012CCA8 8C820284 */  lw         $v0, 0x284($a0)
/* E306C 8012CCAC AE021948 */  sw         $v0, 0x1948($s0)
.Lrace_8012CCB0:
/* E3070 8012CCB0 02202821 */  addu       $a1, $s1, $zero
/* E3074 8012CCB4 02403021 */  addu       $a2, $s2, $zero
/* E3078 8012CCB8 8E021940 */  lw         $v0, 0x1940($s0)
/* E307C 8012CCBC 02603821 */  addu       $a3, $s3, $zero
/* E3080 8012CCC0 AC820284 */  sw         $v0, 0x284($a0)
/* E3084 8012CCC4 0C03D035 */  jal        func_race_800F40D4
/* E3088 8012CCC8 AE041940 */   sw        $a0, 0x1940($s0)
/* E308C 8012CCCC 8FBF0020 */  lw         $ra, 0x20($sp)
/* E3090 8012CCD0 8FB3001C */  lw         $s3, 0x1C($sp)
/* E3094 8012CCD4 8FB20018 */  lw         $s2, 0x18($sp)
/* E3098 8012CCD8 8FB10014 */  lw         $s1, 0x14($sp)
/* E309C 8012CCDC 8FB00010 */  lw         $s0, 0x10($sp)
/* E30A0 8012CCE0 03E00008 */  jr         $ra
/* E30A4 8012CCE4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8012CCE8
/* E30A8 8012CCE8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* E30AC 8012CCEC AFB60038 */  sw         $s6, 0x38($sp)
/* E30B0 8012CCF0 0080B021 */  addu       $s6, $a0, $zero
/* E30B4 8012CCF4 AFB7003C */  sw         $s7, 0x3C($sp)
/* E30B8 8012CCF8 00A0B821 */  addu       $s7, $a1, $zero
/* E30BC 8012CCFC AFB40030 */  sw         $s4, 0x30($sp)
/* E30C0 8012CD00 00C0A021 */  addu       $s4, $a2, $zero
/* E30C4 8012CD04 AFBE0040 */  sw         $fp, 0x40($sp)
/* E30C8 8012CD08 00E0F021 */  addu       $fp, $a3, $zero
/* E30CC 8012CD0C AFB00020 */  sw         $s0, 0x20($sp)
/* E30D0 8012CD10 00008021 */  addu       $s0, $zero, $zero
/* E30D4 8012CD14 3C028003 */  lui        $v0, %hi(D_8002FAB0)
/* E30D8 8012CD18 AFB10024 */  sw         $s1, 0x24($sp)
/* E30DC 8012CD1C 00408821 */  addu       $s1, $v0, $zero
/* E30E0 8012CD20 3C028003 */  lui        $v0, %hi(D_8002F2B0)
/* E30E4 8012CD24 8E23FAB0 */  lw         $v1, %lo(D_8002FAB0)($s1)
/* E30E8 8012CD28 2442F2B0 */  addiu      $v0, $v0, %lo(D_8002F2B0)
/* E30EC 8012CD2C AFB3002C */  sw         $s3, 0x2C($sp)
/* E30F0 8012CD30 00409821 */  addu       $s3, $v0, $zero
/* E30F4 8012CD34 AFB20028 */  sw         $s2, 0x28($sp)
/* E30F8 8012CD38 3C1251EB */  lui        $s2, (0x51EB851F >> 16)
/* E30FC 8012CD3C AFBF0044 */  sw         $ra, 0x44($sp)
/* E3100 8012CD40 AFB50034 */  sw         $s5, 0x34($sp)
/* E3104 8012CD44 F7B60050 */  sdc1       $f22, 0x50($sp)
/* E3108 8012CD48 F7B40048 */  sdc1       $f20, 0x48($sp)
/* E310C 8012CD4C 24630001 */  addiu      $v1, $v1, 0x1
/* E3110 8012CD50 306303FF */  andi       $v1, $v1, 0x3FF
/* E3114 8012CD54 00031040 */  sll        $v0, $v1, 1
/* E3118 8012CD58 00531021 */  addu       $v0, $v0, $s3
/* E311C 8012CD5C 94440000 */  lhu        $a0, 0x0($v0)
/* E3120 8012CD60 3C02AAAA */  lui        $v0, (0xAAAAAAAB >> 16)
/* E3124 8012CD64 3442AAAB */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
/* E3128 8012CD68 00820019 */  multu      $a0, $v0
/* E312C 8012CD6C 3C01800D */  lui        $at, %hi(D_race_800CEE80)
/* E3130 8012CD70 C436EE80 */  lwc1       $f22, %lo(D_race_800CEE80)($at)
/* E3134 8012CD74 3C01800D */  lui        $at, %hi(D_race_800CEE84)
/* E3138 8012CD78 C434EE84 */  lwc1       $f20, %lo(D_race_800CEE84)($at)
/* E313C 8012CD7C 3652851F */  ori        $s2, $s2, (0x51EB851F & 0xFFFF)
/* E3140 8012CD80 AE23FAB0 */  sw         $v1, %lo(D_8002FAB0)($s1)
/* E3144 8012CD84 00004010 */  mfhi       $t0
/* E3148 8012CD88 00081842 */  srl        $v1, $t0, 1
/* E314C 8012CD8C 00031040 */  sll        $v0, $v1, 1
/* E3150 8012CD90 00431021 */  addu       $v0, $v0, $v1
/* E3154 8012CD94 00822023 */  subu       $a0, $a0, $v0
/* E3158 8012CD98 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* E315C 8012CD9C 24950001 */  addiu      $s5, $a0, 0x1
/* E3160 8012CDA0 0215102B */  sltu       $v0, $s0, $s5
.Lrace_8012CDA4:
/* E3164 8012CDA4 10400038 */  beqz       $v0, .Lrace_8012CE88
/* E3168 8012CDA8 26100001 */   addiu     $s0, $s0, 0x1
/* E316C 8012CDAC 8E25FAB0 */  lw         $a1, %lo(D_8002FAB0)($s1)
/* E3170 8012CDB0 24A50001 */  addiu      $a1, $a1, 0x1
/* E3174 8012CDB4 30A503FF */  andi       $a1, $a1, 0x3FF
/* E3178 8012CDB8 00051040 */  sll        $v0, $a1, 1
/* E317C 8012CDBC 00531021 */  addu       $v0, $v0, $s3
/* E3180 8012CDC0 94440000 */  lhu        $a0, 0x0($v0)
/* E3184 8012CDC4 00920019 */  multu      $a0, $s2
/* E3188 8012CDC8 00004010 */  mfhi       $t0
/* E318C 8012CDCC 00081942 */  srl        $v1, $t0, 5
/* E3190 8012CDD0 00031040 */  sll        $v0, $v1, 1
/* E3194 8012CDD4 00431021 */  addu       $v0, $v0, $v1
/* E3198 8012CDD8 000210C0 */  sll        $v0, $v0, 3
/* E319C 8012CDDC 00431021 */  addu       $v0, $v0, $v1
/* E31A0 8012CDE0 00021080 */  sll        $v0, $v0, 2
/* E31A4 8012CDE4 00822023 */  subu       $a0, $a0, $v0
/* E31A8 8012CDE8 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* E31AC 8012CDEC 44841000 */  mtc1       $a0, $f2
/* E31B0 8012CDF0 468010A0 */  cvt.s.w    $f2, $f2
/* E31B4 8012CDF4 46161082 */  mul.s      $f2, $f2, $f22
/* E31B8 8012CDF8 C6800000 */  lwc1       $f0, 0x0($s4)
/* E31BC 8012CDFC 46020000 */  add.s      $f0, $f0, $f2
/* E31C0 8012CE00 24A60001 */  addiu      $a2, $a1, 0x1
/* E31C4 8012CE04 30C603FF */  andi       $a2, $a2, 0x3FF
/* E31C8 8012CE08 46140001 */  sub.s      $f0, $f0, $f20
/* E31CC 8012CE0C 00061040 */  sll        $v0, $a2, 1
/* E31D0 8012CE10 00531021 */  addu       $v0, $v0, $s3
/* E31D4 8012CE14 E7A00010 */  swc1       $f0, 0x10($sp)
/* E31D8 8012CE18 94440000 */  lhu        $a0, 0x0($v0)
/* E31DC 8012CE1C 00920019 */  multu      $a0, $s2
/* E31E0 8012CE20 00004010 */  mfhi       $t0
/* E31E4 8012CE24 00081942 */  srl        $v1, $t0, 5
/* E31E8 8012CE28 00031040 */  sll        $v0, $v1, 1
/* E31EC 8012CE2C 00431021 */  addu       $v0, $v0, $v1
/* E31F0 8012CE30 000210C0 */  sll        $v0, $v0, 3
/* E31F4 8012CE34 00431021 */  addu       $v0, $v0, $v1
/* E31F8 8012CE38 00021080 */  sll        $v0, $v0, 2
/* E31FC 8012CE3C 00822023 */  subu       $a0, $a0, $v0
/* E3200 8012CE40 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* E3204 8012CE44 44840000 */  mtc1       $a0, $f0
/* E3208 8012CE48 46800020 */  cvt.s.w    $f0, $f0
/* E320C 8012CE4C 46160002 */  mul.s      $f0, $f0, $f22
/* E3210 8012CE50 03C03821 */  addu       $a3, $fp, $zero
/* E3214 8012CE54 AE25FAB0 */  sw         $a1, %lo(D_8002FAB0)($s1)
/* E3218 8012CE58 C6820004 */  lwc1       $f2, 0x4($s4)
/* E321C 8012CE5C 02E02821 */  addu       $a1, $s7, $zero
/* E3220 8012CE60 46001080 */  add.s      $f2, $f2, $f0
/* E3224 8012CE64 AE26FAB0 */  sw         $a2, %lo(D_8002FAB0)($s1)
/* E3228 8012CE68 27A60010 */  addiu      $a2, $sp, 0x10
/* E322C 8012CE6C 46141081 */  sub.s      $f2, $f2, $f20
/* E3230 8012CE70 AFA00018 */  sw         $zero, 0x18($sp)
/* E3234 8012CE74 26C418BC */  addiu      $a0, $s6, 0x18BC
/* E3238 8012CE78 0C048060 */  jal        func_race_80120180
/* E323C 8012CE7C E7A20014 */   swc1      $f2, 0x14($sp)
/* E3240 8012CE80 0804B369 */  j          .Lrace_8012CDA4
/* E3244 8012CE84 0215102B */   sltu      $v0, $s0, $s5
.Lrace_8012CE88:
/* E3248 8012CE88 8FBF0044 */  lw         $ra, 0x44($sp)
/* E324C 8012CE8C 8FBE0040 */  lw         $fp, 0x40($sp)
/* E3250 8012CE90 8FB7003C */  lw         $s7, 0x3C($sp)
/* E3254 8012CE94 8FB60038 */  lw         $s6, 0x38($sp)
/* E3258 8012CE98 8FB50034 */  lw         $s5, 0x34($sp)
/* E325C 8012CE9C 8FB40030 */  lw         $s4, 0x30($sp)
/* E3260 8012CEA0 8FB3002C */  lw         $s3, 0x2C($sp)
/* E3264 8012CEA4 8FB20028 */  lw         $s2, 0x28($sp)
/* E3268 8012CEA8 8FB10024 */  lw         $s1, 0x24($sp)
/* E326C 8012CEAC 8FB00020 */  lw         $s0, 0x20($sp)
/* E3270 8012CEB0 D7B60050 */  ldc1       $f22, 0x50($sp)
/* E3274 8012CEB4 D7B40048 */  ldc1       $f20, 0x48($sp)
/* E3278 8012CEB8 03E00008 */  jr         $ra
/* E327C 8012CEBC 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_8012CEC0
/* E3280 8012CEC0 00004021 */  addu       $t0, $zero, $zero
/* E3284 8012CEC4 24090006 */  addiu      $t1, $zero, 0x6
/* E3288 8012CEC8 01003821 */  addu       $a3, $t0, $zero
.Lrace_8012CECC:
/* E328C 8012CECC 9082188C */  lbu        $v0, 0x188C($a0)
/* E3290 8012CED0 0102102B */  sltu       $v0, $t0, $v0
/* E3294 8012CED4 1040000F */  beqz       $v0, .Lrace_8012CF14
/* E3298 8012CED8 00000000 */   nop
/* E329C 8012CEDC 8C8218B0 */  lw         $v0, 0x18B0($a0)
/* E32A0 8012CEE0 00E23021 */  addu       $a2, $a3, $v0
/* E32A4 8012CEE4 8CC20004 */  lw         $v0, 0x4($a2)
/* E32A8 8012CEE8 28420002 */  slti       $v0, $v0, 0x2
/* E32AC 8012CEEC 14400004 */  bnez       $v0, .Lrace_8012CF00
/* E32B0 8012CEF0 00001821 */   addu      $v1, $zero, $zero
/* E32B4 8012CEF4 8CC20020 */  lw         $v0, 0x20($a2)
/* E32B8 8012CEF8 00451026 */  xor        $v0, $v0, $a1
/* E32BC 8012CEFC 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_8012CF00:
/* E32C0 8012CF00 54600001 */  bnel       $v1, $zero, .Lrace_8012CF08
/* E32C4 8012CF04 ACC90004 */   sw        $t1, 0x4($a2)
.Lrace_8012CF08:
/* E32C8 8012CF08 24E7002C */  addiu      $a3, $a3, 0x2C
/* E32CC 8012CF0C 0804B3B3 */  j          .Lrace_8012CECC
/* E32D0 8012CF10 25080001 */   addiu     $t0, $t0, 0x1
.Lrace_8012CF14:
/* E32D4 8012CF14 03E00008 */  jr         $ra
/* E32D8 8012CF18 00000000 */   nop

glabel func_race_8012CF1C
/* E32DC 8012CF1C 00004021 */  addu       $t0, $zero, $zero
/* E32E0 8012CF20 24090006 */  addiu      $t1, $zero, 0x6
/* E32E4 8012CF24 01003821 */  addu       $a3, $t0, $zero
.Lrace_8012CF28:
/* E32E8 8012CF28 9082188D */  lbu        $v0, 0x188D($a0)
/* E32EC 8012CF2C 0102102B */  sltu       $v0, $t0, $v0
/* E32F0 8012CF30 10400013 */  beqz       $v0, .Lrace_8012CF80
/* E32F4 8012CF34 00000000 */   nop
/* E32F8 8012CF38 8C8218B4 */  lw         $v0, 0x18B4($a0)
/* E32FC 8012CF3C 00E23021 */  addu       $a2, $a3, $v0
/* E3300 8012CF40 8CC20004 */  lw         $v0, 0x4($a2)
/* E3304 8012CF44 28420002 */  slti       $v0, $v0, 0x2
/* E3308 8012CF48 14400004 */  bnez       $v0, .Lrace_8012CF5C
/* E330C 8012CF4C 00001821 */   addu      $v1, $zero, $zero
/* E3310 8012CF50 8CC20018 */  lw         $v0, 0x18($a2)
/* E3314 8012CF54 00451026 */  xor        $v0, $v0, $a1
/* E3318 8012CF58 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_8012CF5C:
/* E331C 8012CF5C 50600006 */  beql       $v1, $zero, .Lrace_8012CF78
/* E3320 8012CF60 24E70034 */   addiu     $a3, $a3, 0x34
/* E3324 8012CF64 ACC90004 */  sw         $t1, 0x4($a2)
/* E3328 8012CF68 8C8218B4 */  lw         $v0, 0x18B4($a0)
/* E332C 8012CF6C 00E21021 */  addu       $v0, $a3, $v0
/* E3330 8012CF70 AC400018 */  sw         $zero, 0x18($v0)
/* E3334 8012CF74 24E70034 */  addiu      $a3, $a3, 0x34
.Lrace_8012CF78:
/* E3338 8012CF78 0804B3CA */  j          .Lrace_8012CF28
/* E333C 8012CF7C 25080001 */   addiu     $t0, $t0, 0x1
.Lrace_8012CF80:
/* E3340 8012CF80 03E00008 */  jr         $ra
/* E3344 8012CF84 00000000 */   nop

glabel func_race_8012CF88
/* E3348 8012CF88 00004021 */  addu       $t0, $zero, $zero
/* E334C 8012CF8C 24090006 */  addiu      $t1, $zero, 0x6
/* E3350 8012CF90 01003821 */  addu       $a3, $t0, $zero
.Lrace_8012CF94:
/* E3354 8012CF94 90821884 */  lbu        $v0, 0x1884($a0)
/* E3358 8012CF98 0102102B */  sltu       $v0, $t0, $v0
/* E335C 8012CF9C 1040000F */  beqz       $v0, .Lrace_8012CFDC
/* E3360 8012CFA0 00000000 */   nop
/* E3364 8012CFA4 8C821890 */  lw         $v0, 0x1890($a0)
/* E3368 8012CFA8 00E23021 */  addu       $a2, $a3, $v0
/* E336C 8012CFAC 8CC20004 */  lw         $v0, 0x4($a2)
/* E3370 8012CFB0 28420002 */  slti       $v0, $v0, 0x2
/* E3374 8012CFB4 14400004 */  bnez       $v0, .Lrace_8012CFC8
/* E3378 8012CFB8 00001821 */   addu      $v1, $zero, $zero
/* E337C 8012CFBC 8CC20078 */  lw         $v0, 0x78($a2)
/* E3380 8012CFC0 00451026 */  xor        $v0, $v0, $a1
/* E3384 8012CFC4 2C430001 */  sltiu      $v1, $v0, 0x1
.Lrace_8012CFC8:
/* E3388 8012CFC8 54600001 */  bnel       $v1, $zero, .Lrace_8012CFD0
/* E338C 8012CFCC ACC90004 */   sw        $t1, 0x4($a2)
.Lrace_8012CFD0:
/* E3390 8012CFD0 24E70084 */  addiu      $a3, $a3, 0x84
/* E3394 8012CFD4 0804B3E5 */  j          .Lrace_8012CF94
/* E3398 8012CFD8 25080001 */   addiu     $t0, $t0, 0x1
.Lrace_8012CFDC:
/* E339C 8012CFDC 03E00008 */  jr         $ra
/* E33A0 8012CFE0 00000000 */   nop

glabel func_race_8012CFE4
/* E33A4 8012CFE4 00003821 */  addu       $a3, $zero, $zero
/* E33A8 8012CFE8 240A0002 */  addiu      $t2, $zero, 0x2
/* E33AC 8012CFEC 24090006 */  addiu      $t1, $zero, 0x6
/* E33B0 8012CFF0 24080003 */  addiu      $t0, $zero, 0x3
/* E33B4 8012CFF4 00E03021 */  addu       $a2, $a3, $zero
.Lrace_8012CFF8:
/* E33B8 8012CFF8 9082188E */  lbu        $v0, 0x188E($a0)
/* E33BC 8012CFFC 00E2102B */  sltu       $v0, $a3, $v0
/* E33C0 8012D000 10400010 */  beqz       $v0, .Lrace_8012D044
/* E33C4 8012D004 00000000 */   nop
/* E33C8 8012D008 8C8218B8 */  lw         $v0, 0x18B8($a0)
/* E33CC 8012D00C 00C21821 */  addu       $v1, $a2, $v0
/* E33D0 8012D010 8C6200A8 */  lw         $v0, 0xA8($v1)
/* E33D4 8012D014 54450009 */  bnel       $v0, $a1, .Lrace_8012D03C
/* E33D8 8012D018 24C600E4 */   addiu     $a2, $a2, 0xE4
/* E33DC 8012D01C 8C620004 */  lw         $v0, 0x4($v1)
/* E33E0 8012D020 144A0003 */  bne        $v0, $t2, .Lrace_8012D030
/* E33E4 8012D024 00000000 */   nop
/* E33E8 8012D028 0804B40E */  j          .Lrace_8012D038
/* E33EC 8012D02C AC690004 */   sw        $t1, 0x4($v1)
.Lrace_8012D030:
/* E33F0 8012D030 50480001 */  beql       $v0, $t0, .Lrace_8012D038
/* E33F4 8012D034 AC600008 */   sw        $zero, 0x8($v1)
.Lrace_8012D038:
/* E33F8 8012D038 24C600E4 */  addiu      $a2, $a2, 0xE4
.Lrace_8012D03C:
/* E33FC 8012D03C 0804B3FE */  j          .Lrace_8012CFF8
/* E3400 8012D040 24E70001 */   addiu     $a3, $a3, 0x1
.Lrace_8012D044:
/* E3404 8012D044 03E00008 */  jr         $ra
/* E3408 8012D048 00000000 */   nop

glabel func_race_8012D04C
/* E340C 8012D04C 27BDFF90 */  addiu      $sp, $sp, -0x70
/* E3410 8012D050 AFB00040 */  sw         $s0, 0x40($sp)
/* E3414 8012D054 00808021 */  addu       $s0, $a0, $zero
/* E3418 8012D058 AFB20048 */  sw         $s2, 0x48($sp)
/* E341C 8012D05C 00A09021 */  addu       $s2, $a1, $zero
/* E3420 8012D060 AFBF0060 */  sw         $ra, 0x60($sp)
/* E3424 8012D064 AFB7005C */  sw         $s7, 0x5C($sp)
/* E3428 8012D068 AFB60058 */  sw         $s6, 0x58($sp)
/* E342C 8012D06C AFB50054 */  sw         $s5, 0x54($sp)
/* E3430 8012D070 AFB40050 */  sw         $s4, 0x50($sp)
/* E3434 8012D074 AFB3004C */  sw         $s3, 0x4C($sp)
/* E3438 8012D078 AFB10044 */  sw         $s1, 0x44($sp)
/* E343C 8012D07C F7B40068 */  sdc1       $f20, 0x68($sp)
/* E3440 8012D080 8E020074 */  lw         $v0, 0x74($s0)
/* E3444 8012D084 00C0B021 */  addu       $s6, $a2, $zero
/* E3448 8012D088 8C420170 */  lw         $v0, 0x170($v0)
/* E344C 8012D08C 00E0B821 */  addu       $s7, $a3, $zero
/* E3450 8012D090 10400066 */  beqz       $v0, .Lrace_8012D22C
/* E3454 8012D094 00401821 */   addu      $v1, $v0, $zero
/* E3458 8012D098 0000A021 */  addu       $s4, $zero, $zero
/* E345C 8012D09C 27A50010 */  addiu      $a1, $sp, 0x10
/* E3460 8012D0A0 24150001 */  addiu      $s5, $zero, 0x1
/* E3464 8012D0A4 8C63005C */  lw         $v1, 0x5C($v1)
/* E3468 8012D0A8 00A09821 */  addu       $s3, $a1, $zero
/* E346C 8012D0AC 8C620024 */  lw         $v0, 0x24($v1)
/* E3470 8012D0B0 3C01800D */  lui        $at, %hi(D_race_800CEE88)
/* E3474 8012D0B4 C434EE88 */  lwc1       $f20, %lo(D_race_800CEE88)($at)
/* E3478 8012D0B8 84440010 */  lh         $a0, 0x10($v0)
/* E347C 8012D0BC 8C420014 */  lw         $v0, 0x14($v0)
/* E3480 8012D0C0 0040F809 */  jalr       $v0
/* E3484 8012D0C4 00642021 */   addu      $a0, $v1, $a0
/* E3488 8012D0C8 8E101880 */  lw         $s0, 0x1880($s0)
.Lrace_8012D0CC:
/* E348C 8012D0CC 1200002C */  beqz       $s0, .Lrace_8012D180
/* E3490 8012D0D0 00008821 */   addu      $s1, $zero, $zero
/* E3494 8012D0D4 8E020000 */  lw         $v0, 0x0($s0)
/* E3498 8012D0D8 84440038 */  lh         $a0, 0x38($v0)
/* E349C 8012D0DC 8C42003C */  lw         $v0, 0x3C($v0)
/* E34A0 8012D0E0 0040F809 */  jalr       $v0
/* E34A4 8012D0E4 02042021 */   addu      $a0, $s0, $a0
/* E34A8 8012D0E8 14550007 */  bne        $v0, $s5, .Lrace_8012D108
/* E34AC 8012D0EC 00000000 */   nop
/* E34B0 8012D0F0 8E020014 */  lw         $v0, 0x14($s0)
/* E34B4 8012D0F4 14560004 */  bne        $v0, $s6, .Lrace_8012D108
/* E34B8 8012D0F8 00000000 */   nop
/* E34BC 8012D0FC 8E020004 */  lw         $v0, 0x4($s0)
/* E34C0 8012D100 00571026 */  xor        $v0, $v0, $s7
/* E34C4 8012D104 2C510001 */  sltiu      $s1, $v0, 0x1
.Lrace_8012D108:
/* E34C8 8012D108 1220001A */  beqz       $s1, .Lrace_8012D174
/* E34CC 8012D10C 27A50020 */   addiu     $a1, $sp, 0x20
/* E34D0 8012D110 8E020000 */  lw         $v0, 0x0($s0)
/* E34D4 8012D114 84440050 */  lh         $a0, 0x50($v0)
/* E34D8 8012D118 8C420054 */  lw         $v0, 0x54($v0)
/* E34DC 8012D11C 0040F809 */  jalr       $v0
/* E34E0 8012D120 02042021 */   addu      $a0, $s0, $a0
/* E34E4 8012D124 C7A40010 */  lwc1       $f4, 0x10($sp)
/* E34E8 8012D128 C7A00020 */  lwc1       $f0, 0x20($sp)
/* E34EC 8012D12C 46002101 */  sub.s      $f4, $f4, $f0
/* E34F0 8012D130 46042102 */  mul.s      $f4, $f4, $f4
/* E34F4 8012D134 C6660004 */  lwc1       $f6, 0x4($s3)
/* E34F8 8012D138 C7A00024 */  lwc1       $f0, 0x24($sp)
/* E34FC 8012D13C 46003181 */  sub.s      $f6, $f6, $f0
/* E3500 8012D140 46063182 */  mul.s      $f6, $f6, $f6
/* E3504 8012D144 C7A20028 */  lwc1       $f2, 0x28($sp)
/* E3508 8012D148 C6600008 */  lwc1       $f0, 0x8($s3)
/* E350C 8012D14C 46020001 */  sub.s      $f0, $f0, $f2
/* E3510 8012D150 46000002 */  mul.s      $f0, $f0, $f0
/* E3514 8012D154 46062100 */  add.s      $f4, $f4, $f6
/* E3518 8012D158 46002100 */  add.s      $f4, $f4, $f0
/* E351C 8012D15C 4614203C */  c.lt.s     $f4, $f20
/* E3520 8012D160 00000000 */  nop
/* E3524 8012D164 45000003 */  bc1f       .Lrace_8012D174
/* E3528 8012D168 00000000 */   nop
/* E352C 8012D16C 46002506 */  mov.s      $f20, $f4
/* E3530 8012D170 0200A021 */  addu       $s4, $s0, $zero
.Lrace_8012D174:
/* E3534 8012D174 8E10000C */  lw         $s0, 0xC($s0)
/* E3538 8012D178 0804B433 */  j          .Lrace_8012D0CC
/* E353C 8012D17C 00000000 */   nop
.Lrace_8012D180:
/* E3540 8012D180 3C028013 */  lui        $v0, %hi(D_race_80132F60)
/* E3544 8012D184 C4402F60 */  lwc1       $f0, %lo(D_race_80132F60)($v0)
/* E3548 8012D188 4600A03C */  c.lt.s     $f20, $f0
/* E354C 8012D18C 00000000 */  nop
/* E3550 8012D190 45000026 */  bc1f       .Lrace_8012D22C
/* E3554 8012D194 00000000 */   nop
/* E3558 8012D198 8E420034 */  lw         $v0, 0x34($s2)
/* E355C 8012D19C 84440020 */  lh         $a0, 0x20($v0)
/* E3560 8012D1A0 8C420024 */  lw         $v0, 0x24($v0)
/* E3564 8012D1A4 0040F809 */  jalr       $v0
/* E3568 8012D1A8 02442021 */   addu      $a0, $s2, $a0
/* E356C 8012D1AC 14400006 */  bnez       $v0, .Lrace_8012D1C8
/* E3570 8012D1B0 24050001 */   addiu     $a1, $zero, 0x1
/* E3574 8012D1B4 8E420034 */  lw         $v0, 0x34($s2)
/* E3578 8012D1B8 84440010 */  lh         $a0, 0x10($v0)
/* E357C 8012D1BC 8C420014 */  lw         $v0, 0x14($v0)
/* E3580 8012D1C0 0040F809 */  jalr       $v0
/* E3584 8012D1C4 02442021 */   addu      $a0, $s2, $a0
.Lrace_8012D1C8:
/* E3588 8012D1C8 8E820000 */  lw         $v0, 0x0($s4)
/* E358C 8012D1CC 27A50010 */  addiu      $a1, $sp, 0x10
/* E3590 8012D1D0 84440050 */  lh         $a0, 0x50($v0)
/* E3594 8012D1D4 8C420054 */  lw         $v0, 0x54($v0)
/* E3598 8012D1D8 0040F809 */  jalr       $v0
/* E359C 8012D1DC 02842021 */   addu      $a0, $s4, $a0
/* E35A0 8012D1E0 8E820000 */  lw         $v0, 0x0($s4)
/* E35A4 8012D1E4 27A50030 */  addiu      $a1, $sp, 0x30
/* E35A8 8012D1E8 84440058 */  lh         $a0, 0x58($v0)
/* E35AC 8012D1EC 8C42005C */  lw         $v0, 0x5C($v0)
/* E35B0 8012D1F0 0040F809 */  jalr       $v0
/* E35B4 8012D1F4 02842021 */   addu      $a0, $s4, $a0
/* E35B8 8012D1F8 8FA80010 */  lw         $t0, 0x10($sp)
/* E35BC 8012D1FC 8FA90014 */  lw         $t1, 0x14($sp)
/* E35C0 8012D200 8FAA0018 */  lw         $t2, 0x18($sp)
/* E35C4 8012D204 AE480014 */  sw         $t0, 0x14($s2)
/* E35C8 8012D208 AE490018 */  sw         $t1, 0x18($s2)
/* E35CC 8012D20C AE4A001C */  sw         $t2, 0x1C($s2)
/* E35D0 8012D210 C7A00030 */  lwc1       $f0, 0x30($sp)
/* E35D4 8012D214 E6400020 */  swc1       $f0, 0x20($s2)
/* E35D8 8012D218 C7A00034 */  lwc1       $f0, 0x34($sp)
/* E35DC 8012D21C E6400024 */  swc1       $f0, 0x24($s2)
/* E35E0 8012D220 C7A00038 */  lwc1       $f0, 0x38($sp)
/* E35E4 8012D224 0804B497 */  j          .Lrace_8012D25C
/* E35E8 8012D228 E6400028 */   swc1      $f0, 0x28($s2)
.Lrace_8012D22C:
/* E35EC 8012D22C 8E420034 */  lw         $v0, 0x34($s2)
/* E35F0 8012D230 84440020 */  lh         $a0, 0x20($v0)
/* E35F4 8012D234 8C420024 */  lw         $v0, 0x24($v0)
/* E35F8 8012D238 0040F809 */  jalr       $v0
/* E35FC 8012D23C 02442021 */   addu      $a0, $s2, $a0
/* E3600 8012D240 10400006 */  beqz       $v0, .Lrace_8012D25C
/* E3604 8012D244 00000000 */   nop
/* E3608 8012D248 8E420034 */  lw         $v0, 0x34($s2)
/* E360C 8012D24C 84440018 */  lh         $a0, 0x18($v0)
/* E3610 8012D250 8C42001C */  lw         $v0, 0x1C($v0)
/* E3614 8012D254 0040F809 */  jalr       $v0
/* E3618 8012D258 02442021 */   addu      $a0, $s2, $a0
.Lrace_8012D25C:
/* E361C 8012D25C 8FBF0060 */  lw         $ra, 0x60($sp)
/* E3620 8012D260 8FB7005C */  lw         $s7, 0x5C($sp)
/* E3624 8012D264 8FB60058 */  lw         $s6, 0x58($sp)
/* E3628 8012D268 8FB50054 */  lw         $s5, 0x54($sp)
/* E362C 8012D26C 8FB40050 */  lw         $s4, 0x50($sp)
/* E3630 8012D270 8FB3004C */  lw         $s3, 0x4C($sp)
/* E3634 8012D274 8FB20048 */  lw         $s2, 0x48($sp)
/* E3638 8012D278 8FB10044 */  lw         $s1, 0x44($sp)
/* E363C 8012D27C 8FB00040 */  lw         $s0, 0x40($sp)
/* E3640 8012D280 D7B40068 */  ldc1       $f20, 0x68($sp)
/* E3644 8012D284 03E00008 */  jr         $ra
/* E3648 8012D288 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_8012D28C
/* E364C 8012D28C 00002821 */  addu       $a1, $zero, $zero
/* E3650 8012D290 00A03021 */  addu       $a2, $a1, $zero
.Lrace_8012D294:
/* E3654 8012D294 8C820034 */  lw         $v0, 0x34($a0)
/* E3658 8012D298 00A2102B */  sltu       $v0, $a1, $v0
/* E365C 8012D29C 10400008 */  beqz       $v0, .Lrace_8012D2C0
/* E3660 8012D2A0 24A50001 */   addiu     $a1, $a1, 0x1
/* E3664 8012D2A4 8C830028 */  lw         $v1, 0x28($a0)
/* E3668 8012D2A8 00C31821 */  addu       $v1, $a2, $v1
/* E366C 8012D2AC 8C620050 */  lw         $v0, 0x50($v1)
/* E3670 8012D2B0 24C60068 */  addiu      $a2, $a2, 0x68
/* E3674 8012D2B4 34420001 */  ori        $v0, $v0, 0x1
/* E3678 8012D2B8 0804B4A5 */  j          .Lrace_8012D294
/* E367C 8012D2BC AC620050 */   sw        $v0, 0x50($v1)
.Lrace_8012D2C0:
/* E3680 8012D2C0 00002821 */  addu       $a1, $zero, $zero
/* E3684 8012D2C4 00A03021 */  addu       $a2, $a1, $zero
.Lrace_8012D2C8:
/* E3688 8012D2C8 8C820038 */  lw         $v0, 0x38($a0)
/* E368C 8012D2CC 00A2102B */  sltu       $v0, $a1, $v0
/* E3690 8012D2D0 10400008 */  beqz       $v0, .Lrace_8012D2F4
/* E3694 8012D2D4 24A50001 */   addiu     $a1, $a1, 0x1
/* E3698 8012D2D8 8C83002C */  lw         $v1, 0x2C($a0)
/* E369C 8012D2DC 00C31821 */  addu       $v1, $a2, $v1
/* E36A0 8012D2E0 8C620050 */  lw         $v0, 0x50($v1)
/* E36A4 8012D2E4 24C60068 */  addiu      $a2, $a2, 0x68
/* E36A8 8012D2E8 34420001 */  ori        $v0, $v0, 0x1
/* E36AC 8012D2EC 0804B4B2 */  j          .Lrace_8012D2C8
/* E36B0 8012D2F0 AC620050 */   sw        $v0, 0x50($v1)
.Lrace_8012D2F4:
/* E36B4 8012D2F4 03E00008 */  jr         $ra
/* E36B8 8012D2F8 00000000 */   nop

glabel func_race_8012D2FC
/* E36BC 8012D2FC 00002821 */  addu       $a1, $zero, $zero
/* E36C0 8012D300 2407FFFE */  addiu      $a3, $zero, -0x2
/* E36C4 8012D304 00A03021 */  addu       $a2, $a1, $zero
.Lrace_8012D308:
/* E36C8 8012D308 8C820034 */  lw         $v0, 0x34($a0)
/* E36CC 8012D30C 00A2102B */  sltu       $v0, $a1, $v0
/* E36D0 8012D310 10400008 */  beqz       $v0, .Lrace_8012D334
/* E36D4 8012D314 24A50001 */   addiu     $a1, $a1, 0x1
/* E36D8 8012D318 8C830028 */  lw         $v1, 0x28($a0)
/* E36DC 8012D31C 00C31821 */  addu       $v1, $a2, $v1
/* E36E0 8012D320 8C620050 */  lw         $v0, 0x50($v1)
/* E36E4 8012D324 24C60068 */  addiu      $a2, $a2, 0x68
/* E36E8 8012D328 00471024 */  and        $v0, $v0, $a3
/* E36EC 8012D32C 0804B4C2 */  j          .Lrace_8012D308
/* E36F0 8012D330 AC620050 */   sw        $v0, 0x50($v1)
.Lrace_8012D334:
/* E36F4 8012D334 00002821 */  addu       $a1, $zero, $zero
/* E36F8 8012D338 2407FFFE */  addiu      $a3, $zero, -0x2
/* E36FC 8012D33C 00A03021 */  addu       $a2, $a1, $zero
.Lrace_8012D340:
/* E3700 8012D340 8C820038 */  lw         $v0, 0x38($a0)
/* E3704 8012D344 00A2102B */  sltu       $v0, $a1, $v0
/* E3708 8012D348 10400008 */  beqz       $v0, .Lrace_8012D36C
/* E370C 8012D34C 24A50001 */   addiu     $a1, $a1, 0x1
/* E3710 8012D350 8C83002C */  lw         $v1, 0x2C($a0)
/* E3714 8012D354 00C31821 */  addu       $v1, $a2, $v1
/* E3718 8012D358 8C620050 */  lw         $v0, 0x50($v1)
/* E371C 8012D35C 24C60068 */  addiu      $a2, $a2, 0x68
/* E3720 8012D360 00471024 */  and        $v0, $v0, $a3
/* E3724 8012D364 0804B4D0 */  j          .Lrace_8012D340
/* E3728 8012D368 AC620050 */   sw        $v0, 0x50($v1)
.Lrace_8012D36C:
/* E372C 8012D36C 03E00008 */  jr         $ra
/* E3730 8012D370 00000000 */   nop

glabel func_race_8012D374
/* E3734 8012D374 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E3738 8012D378 AFB20018 */  sw         $s2, 0x18($sp)
/* E373C 8012D37C 00A09021 */  addu       $s2, $a1, $zero
/* E3740 8012D380 AFB10014 */  sw         $s1, 0x14($sp)
/* E3744 8012D384 24110001 */  addiu      $s1, $zero, 0x1
/* E3748 8012D388 AFBF001C */  sw         $ra, 0x1C($sp)
/* E374C 8012D38C AFB00010 */  sw         $s0, 0x10($sp)
/* E3750 8012D390 8C901880 */  lw         $s0, 0x1880($a0)
.Lrace_8012D394:
/* E3754 8012D394 1200000F */  beqz       $s0, .Lrace_8012D3D4
/* E3758 8012D398 00001021 */   addu      $v0, $zero, $zero
/* E375C 8012D39C 8E020000 */  lw         $v0, 0x0($s0)
/* E3760 8012D3A0 84440038 */  lh         $a0, 0x38($v0)
/* E3764 8012D3A4 8C42003C */  lw         $v0, 0x3C($v0)
/* E3768 8012D3A8 0040F809 */  jalr       $v0
/* E376C 8012D3AC 02042021 */   addu      $a0, $s0, $a0
/* E3770 8012D3B0 14510005 */  bne        $v0, $s1, .Lrace_8012D3C8
/* E3774 8012D3B4 00000000 */   nop
/* E3778 8012D3B8 0C04B5EC */  jal        func_race_8012D7B0
/* E377C 8012D3BC 02002021 */   addu      $a0, $s0, $zero
/* E3780 8012D3C0 10520004 */  beq        $v0, $s2, .Lrace_8012D3D4
/* E3784 8012D3C4 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_8012D3C8:
/* E3788 8012D3C8 8E10000C */  lw         $s0, 0xC($s0)
/* E378C 8012D3CC 0804B4E5 */  j          .Lrace_8012D394
/* E3790 8012D3D0 00000000 */   nop
.Lrace_8012D3D4:
/* E3794 8012D3D4 8FBF001C */  lw         $ra, 0x1C($sp)
/* E3798 8012D3D8 8FB20018 */  lw         $s2, 0x18($sp)
/* E379C 8012D3DC 8FB10014 */  lw         $s1, 0x14($sp)
/* E37A0 8012D3E0 8FB00010 */  lw         $s0, 0x10($sp)
/* E37A4 8012D3E4 03E00008 */  jr         $ra
/* E37A8 8012D3E8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012D3EC
/* E37AC 8012D3EC 00803021 */  addu       $a2, $a0, $zero
/* E37B0 8012D3F0 24020019 */  addiu      $v0, $zero, 0x19
/* E37B4 8012D3F4 8CC3187C */  lw         $v1, 0x187C($a2)
/* E37B8 8012D3F8 8CC51878 */  lw         $a1, 0x1878($a2)
/* E37BC 8012D3FC 14620006 */  bne        $v1, $v0, .Lrace_8012D418
/* E37C0 8012D400 00002021 */   addu      $a0, $zero, $zero
/* E37C4 8012D404 03E00008 */  jr         $ra
/* E37C8 8012D408 00801021 */   addu      $v0, $a0, $zero
.Lrace_8012D40C:
/* E37CC 8012D40C 10400005 */  beqz       $v0, .Lrace_8012D424
/* E37D0 8012D410 00052842 */   srl       $a1, $a1, 1
/* E37D4 8012D414 24840001 */  addiu      $a0, $a0, 0x1
.Lrace_8012D418:
/* E37D8 8012D418 30A20001 */  andi       $v0, $a1, 0x1
/* E37DC 8012D41C 1440FFFB */  bnez       $v0, .Lrace_8012D40C
/* E37E0 8012D420 2C820019 */   sltiu     $v0, $a0, 0x19
.Lrace_8012D424:
/* E37E4 8012D424 24020001 */  addiu      $v0, $zero, 0x1
/* E37E8 8012D428 00822804 */  sllv       $a1, $v0, $a0
/* E37EC 8012D42C 00041100 */  sll        $v0, $a0, 4
/* E37F0 8012D430 00441023 */  subu       $v0, $v0, $a0
/* E37F4 8012D434 00021080 */  sll        $v0, $v0, 2
/* E37F8 8012D438 00441021 */  addu       $v0, $v0, $a0
/* E37FC 8012D43C 00021080 */  sll        $v0, $v0, 2
/* E3800 8012D440 244200A4 */  addiu      $v0, $v0, 0xA4
/* E3804 8012D444 00C21021 */  addu       $v0, $a2, $v0
/* E3808 8012D448 8CC31878 */  lw         $v1, 0x1878($a2)
/* E380C 8012D44C 8CC4187C */  lw         $a0, 0x187C($a2)
/* E3810 8012D450 00651825 */  or         $v1, $v1, $a1
/* E3814 8012D454 24840001 */  addiu      $a0, $a0, 0x1
/* E3818 8012D458 ACC31878 */  sw         $v1, 0x1878($a2)
/* E381C 8012D45C 03E00008 */  jr         $ra
/* E3820 8012D460 ACC4187C */   sw        $a0, 0x187C($a2)

glabel func_race_8012D464
/* E3824 8012D464 3C02C10C */  lui        $v0, (0xC10C9715 >> 16)
/* E3828 8012D468 34429715 */  ori        $v0, $v0, (0xC10C9715 & 0xFFFF)
/* E382C 8012D46C 24A5FF5C */  addiu      $a1, $a1, -0xA4
/* E3830 8012D470 00A42823 */  subu       $a1, $a1, $a0
/* E3834 8012D474 00A20018 */  mult       $a1, $v0
/* E3838 8012D478 8C82187C */  lw         $v0, 0x187C($a0)
/* E383C 8012D47C 2442FFFF */  addiu      $v0, $v0, -0x1
/* E3840 8012D480 AC82187C */  sw         $v0, 0x187C($a0)
/* E3844 8012D484 24020001 */  addiu      $v0, $zero, 0x1
/* E3848 8012D488 00003012 */  mflo       $a2
/* E384C 8012D48C 00061883 */  sra        $v1, $a2, 2
/* E3850 8012D490 00621004 */  sllv       $v0, $v0, $v1
/* E3854 8012D494 8C831878 */  lw         $v1, 0x1878($a0)
/* E3858 8012D498 00021027 */  nor        $v0, $zero, $v0
/* E385C 8012D49C 00621824 */  and        $v1, $v1, $v0
/* E3860 8012D4A0 03E00008 */  jr         $ra
/* E3864 8012D4A4 AC831878 */   sw        $v1, 0x1878($a0)

glabel func_race_8012D4A8
/* E3868 8012D4A8 8CA50000 */  lw         $a1, 0x0($a1)
/* E386C 8012D4AC 24020002 */  addiu      $v0, $zero, 0x2
/* E3870 8012D4B0 10A20011 */  beq        $a1, $v0, .Lrace_8012D4F8
/* E3874 8012D4B4 28A20003 */   slti      $v0, $a1, 0x3
/* E3878 8012D4B8 10400005 */  beqz       $v0, .Lrace_8012D4D0
/* E387C 8012D4BC 24020001 */   addiu     $v0, $zero, 0x1
/* E3880 8012D4C0 10A2000A */  beq        $a1, $v0, .Lrace_8012D4EC
/* E3884 8012D4C4 00001021 */   addu      $v0, $zero, $zero
/* E3888 8012D4C8 0804B547 */  j          .Lrace_8012D51C
/* E388C 8012D4CC 00000000 */   nop
.Lrace_8012D4D0:
/* E3890 8012D4D0 24020003 */  addiu      $v0, $zero, 0x3
/* E3894 8012D4D4 10A2000B */  beq        $a1, $v0, .Lrace_8012D504
/* E3898 8012D4D8 24020004 */   addiu     $v0, $zero, 0x4
/* E389C 8012D4DC 10A2000C */  beq        $a1, $v0, .Lrace_8012D510
/* E38A0 8012D4E0 00001021 */   addu      $v0, $zero, $zero
/* E38A4 8012D4E4 0804B547 */  j          .Lrace_8012D51C
/* E38A8 8012D4E8 00000000 */   nop
.Lrace_8012D4EC:
/* E38AC 8012D4EC 8C821978 */  lw         $v0, 0x1978($a0)
/* E38B0 8012D4F0 03E00008 */  jr         $ra
/* E38B4 8012D4F4 00000000 */   nop
.Lrace_8012D4F8:
/* E38B8 8012D4F8 8C821988 */  lw         $v0, 0x1988($a0)
/* E38BC 8012D4FC 03E00008 */  jr         $ra
/* E38C0 8012D500 00000000 */   nop
.Lrace_8012D504:
/* E38C4 8012D504 8C821990 */  lw         $v0, 0x1990($a0)
/* E38C8 8012D508 03E00008 */  jr         $ra
/* E38CC 8012D50C 00000000 */   nop
.Lrace_8012D510:
/* E38D0 8012D510 8C821980 */  lw         $v0, 0x1980($a0)
/* E38D4 8012D514 03E00008 */  jr         $ra
/* E38D8 8012D518 00000000 */   nop
.Lrace_8012D51C:
/* E38DC 8012D51C 03E00008 */  jr         $ra
/* E38E0 8012D520 00000000 */   nop

glabel func_race_8012D524
/* E38E4 8012D524 8CA50000 */  lw         $a1, 0x0($a1)
/* E38E8 8012D528 24020002 */  addiu      $v0, $zero, 0x2
/* E38EC 8012D52C 10A20011 */  beq        $a1, $v0, .Lrace_8012D574
/* E38F0 8012D530 28A20003 */   slti      $v0, $a1, 0x3
/* E38F4 8012D534 10400005 */  beqz       $v0, .Lrace_8012D54C
/* E38F8 8012D538 24020001 */   addiu     $v0, $zero, 0x1
/* E38FC 8012D53C 10A2000A */  beq        $a1, $v0, .Lrace_8012D568
/* E3900 8012D540 00001021 */   addu      $v0, $zero, $zero
/* E3904 8012D544 0804B566 */  j          .Lrace_8012D598
/* E3908 8012D548 00000000 */   nop
.Lrace_8012D54C:
/* E390C 8012D54C 24020003 */  addiu      $v0, $zero, 0x3
/* E3910 8012D550 10A2000B */  beq        $a1, $v0, .Lrace_8012D580
/* E3914 8012D554 24020004 */   addiu     $v0, $zero, 0x4
/* E3918 8012D558 10A2000C */  beq        $a1, $v0, .Lrace_8012D58C
/* E391C 8012D55C 00001021 */   addu      $v0, $zero, $zero
/* E3920 8012D560 0804B566 */  j          .Lrace_8012D598
/* E3924 8012D564 00000000 */   nop
.Lrace_8012D568:
/* E3928 8012D568 8C82197C */  lw         $v0, 0x197C($a0)
/* E392C 8012D56C 03E00008 */  jr         $ra
/* E3930 8012D570 00000000 */   nop
.Lrace_8012D574:
/* E3934 8012D574 8C82198C */  lw         $v0, 0x198C($a0)
/* E3938 8012D578 03E00008 */  jr         $ra
/* E393C 8012D57C 00000000 */   nop
.Lrace_8012D580:
/* E3940 8012D580 8C821994 */  lw         $v0, 0x1994($a0)
/* E3944 8012D584 03E00008 */  jr         $ra
/* E3948 8012D588 00000000 */   nop
.Lrace_8012D58C:
/* E394C 8012D58C 8C821984 */  lw         $v0, 0x1984($a0)
/* E3950 8012D590 03E00008 */  jr         $ra
/* E3954 8012D594 00000000 */   nop
.Lrace_8012D598:
/* E3958 8012D598 03E00008 */  jr         $ra
/* E395C 8012D59C 00000000 */   nop

glabel func_race_8012D5A0
/* E3960 8012D5A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E3964 8012D5A4 AFB20018 */  sw         $s2, 0x18($sp)
/* E3968 8012D5A8 00809021 */  addu       $s2, $a0, $zero
/* E396C 8012D5AC AFBF001C */  sw         $ra, 0x1C($sp)
/* E3970 8012D5B0 AFB10014 */  sw         $s1, 0x14($sp)
/* E3974 8012D5B4 AFB00010 */  sw         $s0, 0x10($sp)
/* E3978 8012D5B8 8E420034 */  lw         $v0, 0x34($s2)
/* E397C 8012D5BC 1040000E */  beqz       $v0, .Lrace_8012D5F8
/* E3980 8012D5C0 00008021 */   addu      $s0, $zero, $zero
/* E3984 8012D5C4 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012D5C8:
/* E3988 8012D5C8 8E440028 */  lw         $a0, 0x28($s2)
/* E398C 8012D5CC 02242021 */  addu       $a0, $s1, $a0
/* E3990 8012D5D0 8C820000 */  lw         $v0, 0x0($a0)
/* E3994 8012D5D4 26100001 */  addiu      $s0, $s0, 0x1
/* E3998 8012D5D8 84430020 */  lh         $v1, 0x20($v0)
/* E399C 8012D5DC 8C420024 */  lw         $v0, 0x24($v0)
/* E39A0 8012D5E0 0040F809 */  jalr       $v0
/* E39A4 8012D5E4 00832021 */   addu      $a0, $a0, $v1
/* E39A8 8012D5E8 8E420034 */  lw         $v0, 0x34($s2)
/* E39AC 8012D5EC 0202102B */  sltu       $v0, $s0, $v0
/* E39B0 8012D5F0 1440FFF5 */  bnez       $v0, .Lrace_8012D5C8
/* E39B4 8012D5F4 26310068 */   addiu     $s1, $s1, 0x68
.Lrace_8012D5F8:
/* E39B8 8012D5F8 8E420038 */  lw         $v0, 0x38($s2)
/* E39BC 8012D5FC 1040000E */  beqz       $v0, .Lrace_8012D638
/* E39C0 8012D600 00008021 */   addu      $s0, $zero, $zero
/* E39C4 8012D604 02008821 */  addu       $s1, $s0, $zero
.Lrace_8012D608:
/* E39C8 8012D608 8E44002C */  lw         $a0, 0x2C($s2)
/* E39CC 8012D60C 02242021 */  addu       $a0, $s1, $a0
/* E39D0 8012D610 8C820000 */  lw         $v0, 0x0($a0)
/* E39D4 8012D614 26100001 */  addiu      $s0, $s0, 0x1
/* E39D8 8012D618 84430020 */  lh         $v1, 0x20($v0)
/* E39DC 8012D61C 8C420024 */  lw         $v0, 0x24($v0)
/* E39E0 8012D620 0040F809 */  jalr       $v0
/* E39E4 8012D624 00832021 */   addu      $a0, $a0, $v1
/* E39E8 8012D628 8E420038 */  lw         $v0, 0x38($s2)
/* E39EC 8012D62C 0202102B */  sltu       $v0, $s0, $v0
/* E39F0 8012D630 1440FFF5 */  bnez       $v0, .Lrace_8012D608
/* E39F4 8012D634 26310068 */   addiu     $s1, $s1, 0x68
.Lrace_8012D638:
/* E39F8 8012D638 8E50193C */  lw         $s0, 0x193C($s2)
.Lrace_8012D63C:
/* E39FC 8012D63C 12000006 */  beqz       $s0, .Lrace_8012D658
/* E3A00 8012D640 00000000 */   nop
/* E3A04 8012D644 0C03D0E2 */  jal        func_race_800F4388
/* E3A08 8012D648 02002021 */   addu      $a0, $s0, $zero
/* E3A0C 8012D64C 8E100284 */  lw         $s0, 0x284($s0)
/* E3A10 8012D650 0804B58F */  j          .Lrace_8012D63C
/* E3A14 8012D654 00000000 */   nop
.Lrace_8012D658:
/* E3A18 8012D658 8E501940 */  lw         $s0, 0x1940($s2)
.Lrace_8012D65C:
/* E3A1C 8012D65C 12000006 */  beqz       $s0, .Lrace_8012D678
/* E3A20 8012D660 00000000 */   nop
/* E3A24 8012D664 0C03D0E2 */  jal        func_race_800F4388
/* E3A28 8012D668 02002021 */   addu      $a0, $s0, $zero
/* E3A2C 8012D66C 8E100284 */  lw         $s0, 0x284($s0)
/* E3A30 8012D670 0804B597 */  j          .Lrace_8012D65C
/* E3A34 8012D674 00000000 */   nop
.Lrace_8012D678:
/* E3A38 8012D678 0C0480EA */  jal        func_race_801203A8
/* E3A3C 8012D67C 264418BC */   addiu     $a0, $s2, 0x18BC
/* E3A40 8012D680 8E421880 */  lw         $v0, 0x1880($s2)
/* E3A44 8012D684 24030006 */  addiu      $v1, $zero, 0x6
.Lrace_8012D688:
/* E3A48 8012D688 50400005 */  beql       $v0, $zero, .Lrace_8012D6A0
/* E3A4C 8012D68C 02402021 */   addu      $a0, $s2, $zero
/* E3A50 8012D690 AC430004 */  sw         $v1, 0x4($v0)
/* E3A54 8012D694 8C42000C */  lw         $v0, 0xC($v0)
/* E3A58 8012D698 0804B5A2 */  j          .Lrace_8012D688
/* E3A5C 8012D69C 00000000 */   nop
.Lrace_8012D6A0:
/* E3A60 8012D6A0 0C04AD61 */  jal        func_race_8012B584
/* E3A64 8012D6A4 00002821 */   addu      $a1, $zero, $zero
/* E3A68 8012D6A8 8FBF001C */  lw         $ra, 0x1C($sp)
/* E3A6C 8012D6AC 8FB20018 */  lw         $s2, 0x18($sp)
/* E3A70 8012D6B0 8FB10014 */  lw         $s1, 0x14($sp)
/* E3A74 8012D6B4 8FB00010 */  lw         $s0, 0x10($sp)
/* E3A78 8012D6B8 03E00008 */  jr         $ra
/* E3A7C 8012D6BC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_8012D6C0
/* E3A80 8012D6C0 3C028013 */  lui        $v0, %hi(D_race_801324B0)
/* E3A84 8012D6C4 03E00008 */  jr         $ra
/* E3A88 8012D6C8 AC4424B0 */   sw        $a0, %lo(D_race_801324B0)($v0)

glabel func_race_8012D6CC
/* E3A8C 8012D6CC 3C028013 */  lui        $v0, %hi(D_race_801324B0)
/* E3A90 8012D6D0 8C4224B0 */  lw         $v0, %lo(D_race_801324B0)($v0)
/* E3A94 8012D6D4 03E00008 */  jr         $ra
/* E3A98 8012D6D8 00000000 */   nop

glabel func_race_8012D6DC
/* E3A9C 8012D6DC 3C01800D */  lui        $at, %hi(D_race_800CEE8C)
/* E3AA0 8012D6E0 C420EE8C */  lwc1       $f0, %lo(D_race_800CEE8C)($at)
/* E3AA4 8012D6E4 3C028013 */  lui        $v0, %hi(D_race_80132F60)
/* E3AA8 8012D6E8 03E00008 */  jr         $ra
/* E3AAC 8012D6EC E4402F60 */   swc1      $f0, %lo(D_race_80132F60)($v0)

glabel func_race_8012D6F0
/* E3AB0 8012D6F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E3AB4 8012D6F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* E3AB8 8012D6F8 0C002513 */  jal        func_8000944C
/* E3ABC 8012D6FC 00000000 */   nop
/* E3AC0 8012D700 8FBF0010 */  lw         $ra, 0x10($sp)
/* E3AC4 8012D704 03E00008 */  jr         $ra
/* E3AC8 8012D708 27BD0018 */   addiu     $sp, $sp, 0x18
