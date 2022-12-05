.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8007A380
/* 716B0 8007A380 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 716B4 8007A384 AFB00010 */  sw         $s0, 0x10($sp)
/* 716B8 8007A388 AFBF0014 */  sw         $ra, 0x14($sp)
/* 716BC 8007A38C 0C018100 */  jal        func_80060400
/* 716C0 8007A390 00808021 */   addu      $s0, $a0, $zero
/* 716C4 8007A394 02001021 */  addu       $v0, $s0, $zero
/* 716C8 8007A398 3C038004 */  lui        $v1, %hi(D_8003FD68)
/* 716CC 8007A39C 2463FD68 */  addiu      $v1, $v1, %lo(D_8003FD68)
/* 716D0 8007A3A0 AC4300EC */  sw         $v1, 0xEC($v0)
/* 716D4 8007A3A4 AC4000F0 */  sw         $zero, 0xF0($v0)
/* 716D8 8007A3A8 AC4000F4 */  sw         $zero, 0xF4($v0)
/* 716DC 8007A3AC AC4000F8 */  sw         $zero, 0xF8($v0)
/* 716E0 8007A3B0 AC4000FC */  sw         $zero, 0xFC($v0)
/* 716E4 8007A3B4 AC400100 */  sw         $zero, 0x100($v0)
/* 716E8 8007A3B8 AC400104 */  sw         $zero, 0x104($v0)
/* 716EC 8007A3BC AC400108 */  sw         $zero, 0x108($v0)
/* 716F0 8007A3C0 AC40010C */  sw         $zero, 0x10C($v0)
/* 716F4 8007A3C4 AC400110 */  sw         $zero, 0x110($v0)
/* 716F8 8007A3C8 AC400114 */  sw         $zero, 0x114($v0)
/* 716FC 8007A3CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 71700 8007A3D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 71704 8007A3D4 03E00008 */  jr         $ra
/* 71708 8007A3D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007A3DC
/* 7170C 8007A3DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 71710 8007A3E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 71714 8007A3E4 00808021 */  addu       $s0, $a0, $zero
/* 71718 8007A3E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 7171C 8007A3EC 00A08821 */  addu       $s1, $a1, $zero
/* 71720 8007A3F0 3C028004 */  lui        $v0, %hi(D_8003FD68)
/* 71724 8007A3F4 2442FD68 */  addiu      $v0, $v0, %lo(D_8003FD68)
/* 71728 8007A3F8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 7172C 8007A3FC 0C01EC33 */  jal        func_8007B0CC
/* 71730 8007A400 AE0200EC */   sw        $v0, 0xEC($s0)
/* 71734 8007A404 02002021 */  addu       $a0, $s0, $zero
/* 71738 8007A408 0C018147 */  jal        func_8006051C
/* 7173C 8007A40C 02202821 */   addu      $a1, $s1, $zero
/* 71740 8007A410 8FBF0018 */  lw         $ra, 0x18($sp)
/* 71744 8007A414 8FB10014 */  lw         $s1, 0x14($sp)
/* 71748 8007A418 8FB00010 */  lw         $s0, 0x10($sp)
/* 7174C 8007A41C 03E00008 */  jr         $ra
/* 71750 8007A420 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007A424
/* 71754 8007A424 8C8200F0 */  lw         $v0, 0xF0($a0)
/* 71758 8007A428 00052940 */  sll        $a1, $a1, 5
/* 7175C 8007A42C 03E00008 */  jr         $ra
/* 71760 8007A430 00451021 */   addu      $v0, $v0, $a1

glabel func_8007A434
/* 71764 8007A434 8C8200F4 */  lw         $v0, 0xF4($a0)
/* 71768 8007A438 00052940 */  sll        $a1, $a1, 5
/* 7176C 8007A43C 03E00008 */  jr         $ra
/* 71770 8007A440 00451021 */   addu      $v0, $v0, $a1

glabel func_8007A444
/* 71774 8007A444 00051040 */  sll        $v0, $a1, 1
/* 71778 8007A448 00451021 */  addu       $v0, $v0, $a1
/* 7177C 8007A44C 00021080 */  sll        $v0, $v0, 2
/* 71780 8007A450 00451021 */  addu       $v0, $v0, $a1
/* 71784 8007A454 8C8300F8 */  lw         $v1, 0xF8($a0)
/* 71788 8007A458 00021080 */  sll        $v0, $v0, 2
/* 7178C 8007A45C 03E00008 */  jr         $ra
/* 71790 8007A460 00621021 */   addu      $v0, $v1, $v0

glabel func_8007A464
/* 71794 8007A464 00051080 */  sll        $v0, $a1, 2
/* 71798 8007A468 00451021 */  addu       $v0, $v0, $a1
/* 7179C 8007A46C 00021080 */  sll        $v0, $v0, 2
/* 717A0 8007A470 00451023 */  subu       $v0, $v0, $a1
/* 717A4 8007A474 8C8300FC */  lw         $v1, 0xFC($a0)
/* 717A8 8007A478 00021080 */  sll        $v0, $v0, 2
/* 717AC 8007A47C 03E00008 */  jr         $ra
/* 717B0 8007A480 00621021 */   addu      $v0, $v1, $v0

glabel func_8007A484
/* 717B4 8007A484 00051840 */  sll        $v1, $a1, 1
/* 717B8 8007A488 00651821 */  addu       $v1, $v1, $a1
/* 717BC 8007A48C 8C820100 */  lw         $v0, 0x100($a0)
/* 717C0 8007A490 00031880 */  sll        $v1, $v1, 2
/* 717C4 8007A494 03E00008 */  jr         $ra
/* 717C8 8007A498 00431021 */   addu      $v0, $v0, $v1

glabel func_8007A49C
/* 717CC 8007A49C 000518C0 */  sll        $v1, $a1, 3
/* 717D0 8007A4A0 00651823 */  subu       $v1, $v1, $a1
/* 717D4 8007A4A4 8C820104 */  lw         $v0, 0x104($a0)
/* 717D8 8007A4A8 00031880 */  sll        $v1, $v1, 2
/* 717DC 8007A4AC 03E00008 */  jr         $ra
/* 717E0 8007A4B0 00431021 */   addu      $v0, $v0, $v1

glabel func_8007A4B4
/* 717E4 8007A4B4 00051040 */  sll        $v0, $a1, 1
/* 717E8 8007A4B8 00451021 */  addu       $v0, $v0, $a1
/* 717EC 8007A4BC 00021080 */  sll        $v0, $v0, 2
/* 717F0 8007A4C0 00451023 */  subu       $v0, $v0, $a1
/* 717F4 8007A4C4 8C830108 */  lw         $v1, 0x108($a0)
/* 717F8 8007A4C8 00021080 */  sll        $v0, $v0, 2
/* 717FC 8007A4CC 03E00008 */  jr         $ra
/* 71800 8007A4D0 00621021 */   addu      $v0, $v1, $v0

glabel func_8007A4D4
/* 71804 8007A4D4 00051040 */  sll        $v0, $a1, 1
/* 71808 8007A4D8 00451021 */  addu       $v0, $v0, $a1
/* 7180C 8007A4DC 000210C0 */  sll        $v0, $v0, 3
/* 71810 8007A4E0 00451023 */  subu       $v0, $v0, $a1
/* 71814 8007A4E4 8C83010C */  lw         $v1, 0x10C($a0)
/* 71818 8007A4E8 00021080 */  sll        $v0, $v0, 2
/* 7181C 8007A4EC 03E00008 */  jr         $ra
/* 71820 8007A4F0 00621021 */   addu      $v0, $v1, $v0

glabel func_8007A4F4
/* 71824 8007A4F4 00051880 */  sll        $v1, $a1, 2
/* 71828 8007A4F8 00651821 */  addu       $v1, $v1, $a1
/* 7182C 8007A4FC 8C820110 */  lw         $v0, 0x110($a0)
/* 71830 8007A500 00031880 */  sll        $v1, $v1, 2
/* 71834 8007A504 03E00008 */  jr         $ra
/* 71838 8007A508 00431021 */   addu      $v0, $v0, $v1

glabel func_8007A50C
/* 7183C 8007A50C 00051080 */  sll        $v0, $a1, 2
/* 71840 8007A510 00451021 */  addu       $v0, $v0, $a1
/* 71844 8007A514 000210C0 */  sll        $v0, $v0, 3
/* 71848 8007A518 00451021 */  addu       $v0, $v0, $a1
/* 7184C 8007A51C 8C830114 */  lw         $v1, 0x114($a0)
/* 71850 8007A520 00021100 */  sll        $v0, $v0, 4
/* 71854 8007A524 03E00008 */  jr         $ra
/* 71858 8007A528 00621021 */   addu      $v0, $v1, $v0

glabel func_8007A52C
/* 7185C 8007A52C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 71860 8007A530 AFB50024 */  sw         $s5, 0x24($sp)
/* 71864 8007A534 0080A821 */  addu       $s5, $a0, $zero
/* 71868 8007A538 3C028008 */  lui        $v0, %hi(D_80083DE0)
/* 7186C 8007A53C 8C443DE0 */  lw         $a0, %lo(D_80083DE0)($v0)
/* 71870 8007A540 AFBF0028 */  sw         $ra, 0x28($sp)
/* 71874 8007A544 AFB40020 */  sw         $s4, 0x20($sp)
/* 71878 8007A548 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7187C 8007A54C AFB20018 */  sw         $s2, 0x18($sp)
/* 71880 8007A550 AFB10014 */  sw         $s1, 0x14($sp)
/* 71884 8007A554 0C01FB65 */  jal        func_8007ED94
/* 71888 8007A558 AFB00010 */   sw        $s0, 0x10($sp)
/* 7188C 8007A55C 8EB00008 */  lw         $s0, 0x8($s5)
/* 71890 8007A560 12000017 */  beqz       $s0, .L8007A5C0
/* 71894 8007A564 00102140 */   sll       $a0, $s0, 5
/* 71898 8007A568 0C00943C */  jal        func_800250F0
/* 7189C 8007A56C 34840008 */   ori       $a0, $a0, 0x8
/* 718A0 8007A570 24420008 */  addiu      $v0, $v0, 0x8
/* 718A4 8007A574 AC50FFF8 */  sw         $s0, -0x8($v0)
/* 718A8 8007A578 00409021 */  addu       $s2, $v0, $zero
/* 718AC 8007A57C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 718B0 8007A580 06000007 */  bltz       $s0, .L8007A5A0
/* 718B4 8007A584 02408821 */   addu      $s1, $s2, $zero
/* 718B8 8007A588 2413FFFF */  addiu      $s3, $zero, -0x1
.L8007A58C:
/* 718BC 8007A58C 0C01E3DC */  jal        func_80078F70
/* 718C0 8007A590 02202021 */   addu      $a0, $s1, $zero
/* 718C4 8007A594 2610FFFF */  addiu      $s0, $s0, -0x1
/* 718C8 8007A598 1613FFFC */  bne        $s0, $s3, .L8007A58C
/* 718CC 8007A59C 26310020 */   addiu     $s1, $s1, 0x20
.L8007A5A0:
/* 718D0 8007A5A0 16400007 */  bnez       $s2, .L8007A5C0
/* 718D4 8007A5A4 AEB200F0 */   sw        $s2, 0xF0($s5)
/* 718D8 8007A5A8 3C048004 */  lui        $a0, %hi(D_8003FD10)
/* 718DC 8007A5AC 2484FD10 */  addiu      $a0, $a0, %lo(D_8003FD10)
/* 718E0 8007A5B0 00002821 */  addu       $a1, $zero, $zero
/* 718E4 8007A5B4 00A03021 */  addu       $a2, $a1, $zero
/* 718E8 8007A5B8 0C011ACF */  jal        func_80046B3C
/* 718EC 8007A5BC 00A03821 */   addu      $a3, $a1, $zero
.L8007A5C0:
/* 718F0 8007A5C0 8EB00010 */  lw         $s0, 0x10($s5)
/* 718F4 8007A5C4 12000017 */  beqz       $s0, .L8007A624
/* 718F8 8007A5C8 00102140 */   sll       $a0, $s0, 5
/* 718FC 8007A5CC 0C00943C */  jal        func_800250F0
/* 71900 8007A5D0 34840008 */   ori       $a0, $a0, 0x8
/* 71904 8007A5D4 24420008 */  addiu      $v0, $v0, 0x8
/* 71908 8007A5D8 AC50FFF8 */  sw         $s0, -0x8($v0)
/* 7190C 8007A5DC 00409021 */  addu       $s2, $v0, $zero
/* 71910 8007A5E0 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71914 8007A5E4 06000007 */  bltz       $s0, .L8007A604
/* 71918 8007A5E8 02408821 */   addu      $s1, $s2, $zero
/* 7191C 8007A5EC 2413FFFF */  addiu      $s3, $zero, -0x1
.L8007A5F0:
/* 71920 8007A5F0 0C01B830 */  jal        func_8006E0C0
/* 71924 8007A5F4 02202021 */   addu      $a0, $s1, $zero
/* 71928 8007A5F8 2610FFFF */  addiu      $s0, $s0, -0x1
/* 7192C 8007A5FC 1613FFFC */  bne        $s0, $s3, .L8007A5F0
/* 71930 8007A600 26310020 */   addiu     $s1, $s1, 0x20
.L8007A604:
/* 71934 8007A604 16400007 */  bnez       $s2, .L8007A624
/* 71938 8007A608 AEB200F4 */   sw        $s2, 0xF4($s5)
/* 7193C 8007A60C 3C048004 */  lui        $a0, %hi(D_8003FD10)
/* 71940 8007A610 2484FD10 */  addiu      $a0, $a0, %lo(D_8003FD10)
/* 71944 8007A614 00002821 */  addu       $a1, $zero, $zero
/* 71948 8007A618 00A03021 */  addu       $a2, $a1, $zero
/* 7194C 8007A61C 0C011ACF */  jal        func_80046B3C
/* 71950 8007A620 00A03821 */   addu      $a3, $a1, $zero
.L8007A624:
/* 71954 8007A624 8EB00018 */  lw         $s0, 0x18($s5)
/* 71958 8007A628 1200001B */  beqz       $s0, .L8007A698
/* 7195C 8007A62C 00102040 */   sll       $a0, $s0, 1
/* 71960 8007A630 00902021 */  addu       $a0, $a0, $s0
/* 71964 8007A634 00042080 */  sll        $a0, $a0, 2
/* 71968 8007A638 00902021 */  addu       $a0, $a0, $s0
/* 7196C 8007A63C 00042080 */  sll        $a0, $a0, 2
/* 71970 8007A640 0C00943C */  jal        func_800250F0
/* 71974 8007A644 24840008 */   addiu     $a0, $a0, 0x8
/* 71978 8007A648 24420008 */  addiu      $v0, $v0, 0x8
/* 7197C 8007A64C AC50FFF8 */  sw         $s0, -0x8($v0)
/* 71980 8007A650 00409021 */  addu       $s2, $v0, $zero
/* 71984 8007A654 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71988 8007A658 06000007 */  bltz       $s0, .L8007A678
/* 7198C 8007A65C 02408821 */   addu      $s1, $s2, $zero
/* 71990 8007A660 2413FFFF */  addiu      $s3, $zero, -0x1
.L8007A664:
/* 71994 8007A664 0C01933C */  jal        func_80064CF0
/* 71998 8007A668 02202021 */   addu      $a0, $s1, $zero
/* 7199C 8007A66C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 719A0 8007A670 1613FFFC */  bne        $s0, $s3, .L8007A664
/* 719A4 8007A674 26310034 */   addiu     $s1, $s1, 0x34
.L8007A678:
/* 719A8 8007A678 16400007 */  bnez       $s2, .L8007A698
/* 719AC 8007A67C AEB200F8 */   sw        $s2, 0xF8($s5)
/* 719B0 8007A680 3C048004 */  lui        $a0, %hi(D_8003FD10)
/* 719B4 8007A684 2484FD10 */  addiu      $a0, $a0, %lo(D_8003FD10)
/* 719B8 8007A688 00002821 */  addu       $a1, $zero, $zero
/* 719BC 8007A68C 00A03021 */  addu       $a2, $a1, $zero
/* 719C0 8007A690 0C011ACF */  jal        func_80046B3C
/* 719C4 8007A694 00A03821 */   addu      $a3, $a1, $zero
.L8007A698:
/* 719C8 8007A698 8EB00020 */  lw         $s0, 0x20($s5)
/* 719CC 8007A69C 1200001B */  beqz       $s0, .L8007A70C
/* 719D0 8007A6A0 00102080 */   sll       $a0, $s0, 2
/* 719D4 8007A6A4 00902021 */  addu       $a0, $a0, $s0
/* 719D8 8007A6A8 00042080 */  sll        $a0, $a0, 2
/* 719DC 8007A6AC 00902023 */  subu       $a0, $a0, $s0
/* 719E0 8007A6B0 00042080 */  sll        $a0, $a0, 2
/* 719E4 8007A6B4 0C00943C */  jal        func_800250F0
/* 719E8 8007A6B8 24840008 */   addiu     $a0, $a0, 0x8
/* 719EC 8007A6BC 24420008 */  addiu      $v0, $v0, 0x8
/* 719F0 8007A6C0 AC50FFF8 */  sw         $s0, -0x8($v0)
/* 719F4 8007A6C4 00409021 */  addu       $s2, $v0, $zero
/* 719F8 8007A6C8 2610FFFF */  addiu      $s0, $s0, -0x1
/* 719FC 8007A6CC 06000007 */  bltz       $s0, .L8007A6EC
/* 71A00 8007A6D0 02408821 */   addu      $s1, $s2, $zero
/* 71A04 8007A6D4 2413FFFF */  addiu      $s3, $zero, -0x1
.L8007A6D8:
/* 71A08 8007A6D8 0C01B8E4 */  jal        func_8006E390
/* 71A0C 8007A6DC 02202021 */   addu      $a0, $s1, $zero
/* 71A10 8007A6E0 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71A14 8007A6E4 1613FFFC */  bne        $s0, $s3, .L8007A6D8
/* 71A18 8007A6E8 2631004C */   addiu     $s1, $s1, 0x4C
.L8007A6EC:
/* 71A1C 8007A6EC 16400007 */  bnez       $s2, .L8007A70C
/* 71A20 8007A6F0 AEB200FC */   sw        $s2, 0xFC($s5)
/* 71A24 8007A6F4 3C048004 */  lui        $a0, %hi(D_8003FD10)
/* 71A28 8007A6F8 2484FD10 */  addiu      $a0, $a0, %lo(D_8003FD10)
/* 71A2C 8007A6FC 00002821 */  addu       $a1, $zero, $zero
/* 71A30 8007A700 00A03021 */  addu       $a2, $a1, $zero
/* 71A34 8007A704 0C011ACF */  jal        func_80046B3C
/* 71A38 8007A708 00A03821 */   addu      $a3, $a1, $zero
.L8007A70C:
/* 71A3C 8007A70C 8EB00028 */  lw         $s0, 0x28($s5)
/* 71A40 8007A710 12000019 */  beqz       $s0, .L8007A778
/* 71A44 8007A714 00102040 */   sll       $a0, $s0, 1
/* 71A48 8007A718 00902021 */  addu       $a0, $a0, $s0
/* 71A4C 8007A71C 00042080 */  sll        $a0, $a0, 2
/* 71A50 8007A720 0C00943C */  jal        func_800250F0
/* 71A54 8007A724 24840008 */   addiu     $a0, $a0, 0x8
/* 71A58 8007A728 24420008 */  addiu      $v0, $v0, 0x8
/* 71A5C 8007A72C AC50FFF8 */  sw         $s0, -0x8($v0)
/* 71A60 8007A730 00409021 */  addu       $s2, $v0, $zero
/* 71A64 8007A734 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71A68 8007A738 06000007 */  bltz       $s0, .L8007A758
/* 71A6C 8007A73C 02408821 */   addu      $s1, $s2, $zero
/* 71A70 8007A740 2413FFFF */  addiu      $s3, $zero, -0x1
.L8007A744:
/* 71A74 8007A744 0C0152E4 */  jal        func_80054B90
/* 71A78 8007A748 02202021 */   addu      $a0, $s1, $zero
/* 71A7C 8007A74C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71A80 8007A750 1613FFFC */  bne        $s0, $s3, .L8007A744
/* 71A84 8007A754 2631000C */   addiu     $s1, $s1, 0xC
.L8007A758:
/* 71A88 8007A758 16400007 */  bnez       $s2, .L8007A778
/* 71A8C 8007A75C AEB20100 */   sw        $s2, 0x100($s5)
/* 71A90 8007A760 3C048004 */  lui        $a0, %hi(D_8003FD10)
/* 71A94 8007A764 2484FD10 */  addiu      $a0, $a0, %lo(D_8003FD10)
/* 71A98 8007A768 00002821 */  addu       $a1, $zero, $zero
/* 71A9C 8007A76C 00A03021 */  addu       $a2, $a1, $zero
/* 71AA0 8007A770 0C011ACF */  jal        func_80046B3C
/* 71AA4 8007A774 00A03821 */   addu      $a3, $a1, $zero
.L8007A778:
/* 71AA8 8007A778 8EB00030 */  lw         $s0, 0x30($s5)
/* 71AAC 8007A77C 12000019 */  beqz       $s0, .L8007A7E4
/* 71AB0 8007A780 001020C0 */   sll       $a0, $s0, 3
/* 71AB4 8007A784 00902023 */  subu       $a0, $a0, $s0
/* 71AB8 8007A788 00042080 */  sll        $a0, $a0, 2
/* 71ABC 8007A78C 0C00943C */  jal        func_800250F0
/* 71AC0 8007A790 24840008 */   addiu     $a0, $a0, 0x8
/* 71AC4 8007A794 24420008 */  addiu      $v0, $v0, 0x8
/* 71AC8 8007A798 AC50FFF8 */  sw         $s0, -0x8($v0)
/* 71ACC 8007A79C 00409021 */  addu       $s2, $v0, $zero
/* 71AD0 8007A7A0 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71AD4 8007A7A4 06000007 */  bltz       $s0, .L8007A7C4
/* 71AD8 8007A7A8 02408821 */   addu      $s1, $s2, $zero
/* 71ADC 8007A7AC 2413FFFF */  addiu      $s3, $zero, -0x1
.L8007A7B0:
/* 71AE0 8007A7B0 0C01DB64 */  jal        func_80076D90
/* 71AE4 8007A7B4 02202021 */   addu      $a0, $s1, $zero
/* 71AE8 8007A7B8 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71AEC 8007A7BC 1613FFFC */  bne        $s0, $s3, .L8007A7B0
/* 71AF0 8007A7C0 2631001C */   addiu     $s1, $s1, 0x1C
.L8007A7C4:
/* 71AF4 8007A7C4 16400007 */  bnez       $s2, .L8007A7E4
/* 71AF8 8007A7C8 AEB20104 */   sw        $s2, 0x104($s5)
/* 71AFC 8007A7CC 3C048004 */  lui        $a0, %hi(D_8003FD10)
/* 71B00 8007A7D0 2484FD10 */  addiu      $a0, $a0, %lo(D_8003FD10)
/* 71B04 8007A7D4 00002821 */  addu       $a1, $zero, $zero
/* 71B08 8007A7D8 00A03021 */  addu       $a2, $a1, $zero
/* 71B0C 8007A7DC 0C011ACF */  jal        func_80046B3C
/* 71B10 8007A7E0 00A03821 */   addu      $a3, $a1, $zero
.L8007A7E4:
/* 71B14 8007A7E4 8EB00038 */  lw         $s0, 0x38($s5)
/* 71B18 8007A7E8 1200001B */  beqz       $s0, .L8007A858
/* 71B1C 8007A7EC 00102040 */   sll       $a0, $s0, 1
/* 71B20 8007A7F0 00902021 */  addu       $a0, $a0, $s0
/* 71B24 8007A7F4 00042080 */  sll        $a0, $a0, 2
/* 71B28 8007A7F8 00902023 */  subu       $a0, $a0, $s0
/* 71B2C 8007A7FC 00042080 */  sll        $a0, $a0, 2
/* 71B30 8007A800 0C00943C */  jal        func_800250F0
/* 71B34 8007A804 24840008 */   addiu     $a0, $a0, 0x8
/* 71B38 8007A808 24420008 */  addiu      $v0, $v0, 0x8
/* 71B3C 8007A80C AC50FFF8 */  sw         $s0, -0x8($v0)
/* 71B40 8007A810 00409021 */  addu       $s2, $v0, $zero
/* 71B44 8007A814 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71B48 8007A818 06000007 */  bltz       $s0, .L8007A838
/* 71B4C 8007A81C 02408821 */   addu      $s1, $s2, $zero
/* 71B50 8007A820 2413FFFF */  addiu      $s3, $zero, -0x1
.L8007A824:
/* 71B54 8007A824 0C0380A8 */  jal        func_race_800E02A0
/* 71B58 8007A828 02202021 */   addu      $a0, $s1, $zero
/* 71B5C 8007A82C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71B60 8007A830 1613FFFC */  bne        $s0, $s3, .L8007A824
/* 71B64 8007A834 2631002C */   addiu     $s1, $s1, 0x2C
.L8007A838:
/* 71B68 8007A838 16400007 */  bnez       $s2, .L8007A858
/* 71B6C 8007A83C AEB20108 */   sw        $s2, 0x108($s5)
/* 71B70 8007A840 3C048004 */  lui        $a0, %hi(D_8003FD10)
/* 71B74 8007A844 2484FD10 */  addiu      $a0, $a0, %lo(D_8003FD10)
/* 71B78 8007A848 00002821 */  addu       $a1, $zero, $zero
/* 71B7C 8007A84C 00A03021 */  addu       $a2, $a1, $zero
/* 71B80 8007A850 0C011ACF */  jal        func_80046B3C
/* 71B84 8007A854 00A03821 */   addu      $a3, $a1, $zero
.L8007A858:
/* 71B88 8007A858 8EB10068 */  lw         $s1, 0x68($s5)
/* 71B8C 8007A85C 1220001B */  beqz       $s1, .L8007A8CC
/* 71B90 8007A860 00112040 */   sll       $a0, $s1, 1
/* 71B94 8007A864 00912021 */  addu       $a0, $a0, $s1
/* 71B98 8007A868 000420C0 */  sll        $a0, $a0, 3
/* 71B9C 8007A86C 00912023 */  subu       $a0, $a0, $s1
/* 71BA0 8007A870 0C00943C */  jal        func_800250F0
/* 71BA4 8007A874 00042080 */   sll       $a0, $a0, 2
/* 71BA8 8007A878 00409021 */  addu       $s2, $v0, $zero
/* 71BAC 8007A87C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 71BB0 8007A880 0620000A */  bltz       $s1, .L8007A8AC
/* 71BB4 8007A884 02408021 */   addu      $s0, $s2, $zero
/* 71BB8 8007A888 3C028004 */  lui        $v0, %hi(D_8003F560)
/* 71BBC 8007A88C 2454F560 */  addiu      $s4, $v0, %lo(D_8003F560)
/* 71BC0 8007A890 2413FFFF */  addiu      $s3, $zero, -0x1
.L8007A894:
/* 71BC4 8007A894 0C01A33C */  jal        func_80068CF0
/* 71BC8 8007A898 02002021 */   addu      $a0, $s0, $zero
/* 71BCC 8007A89C AE140024 */  sw         $s4, 0x24($s0)
/* 71BD0 8007A8A0 2631FFFF */  addiu      $s1, $s1, -0x1
/* 71BD4 8007A8A4 1633FFFB */  bne        $s1, $s3, .L8007A894
/* 71BD8 8007A8A8 2610005C */   addiu     $s0, $s0, 0x5C
.L8007A8AC:
/* 71BDC 8007A8AC 16400007 */  bnez       $s2, .L8007A8CC
/* 71BE0 8007A8B0 AEB2010C */   sw        $s2, 0x10C($s5)
/* 71BE4 8007A8B4 3C048004 */  lui        $a0, %hi(D_8003FD10)
/* 71BE8 8007A8B8 2484FD10 */  addiu      $a0, $a0, %lo(D_8003FD10)
/* 71BEC 8007A8BC 00002821 */  addu       $a1, $zero, $zero
/* 71BF0 8007A8C0 00A03021 */  addu       $a2, $a1, $zero
/* 71BF4 8007A8C4 0C011ACF */  jal        func_80046B3C
/* 71BF8 8007A8C8 00A03821 */   addu      $a3, $a1, $zero
.L8007A8CC:
/* 71BFC 8007A8CC 8EB00070 */  lw         $s0, 0x70($s5)
/* 71C00 8007A8D0 12000019 */  beqz       $s0, .L8007A938
/* 71C04 8007A8D4 00102080 */   sll       $a0, $s0, 2
/* 71C08 8007A8D8 00902021 */  addu       $a0, $a0, $s0
/* 71C0C 8007A8DC 00042080 */  sll        $a0, $a0, 2
/* 71C10 8007A8E0 0C00943C */  jal        func_800250F0
/* 71C14 8007A8E4 24840008 */   addiu     $a0, $a0, 0x8
/* 71C18 8007A8E8 24420008 */  addiu      $v0, $v0, 0x8
/* 71C1C 8007A8EC AC50FFF8 */  sw         $s0, -0x8($v0)
/* 71C20 8007A8F0 00409021 */  addu       $s2, $v0, $zero
/* 71C24 8007A8F4 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71C28 8007A8F8 06000007 */  bltz       $s0, .L8007A918
/* 71C2C 8007A8FC 02408821 */   addu      $s1, $s2, $zero
/* 71C30 8007A900 2413FFFF */  addiu      $s3, $zero, -0x1
.L8007A904:
/* 71C34 8007A904 0C019E00 */  jal        func_80067800
/* 71C38 8007A908 02202021 */   addu      $a0, $s1, $zero
/* 71C3C 8007A90C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71C40 8007A910 1613FFFC */  bne        $s0, $s3, .L8007A904
/* 71C44 8007A914 26310014 */   addiu     $s1, $s1, 0x14
.L8007A918:
/* 71C48 8007A918 16400007 */  bnez       $s2, .L8007A938
/* 71C4C 8007A91C AEB20110 */   sw        $s2, 0x110($s5)
/* 71C50 8007A920 3C048004 */  lui        $a0, %hi(D_8003FD10)
/* 71C54 8007A924 2484FD10 */  addiu      $a0, $a0, %lo(D_8003FD10)
/* 71C58 8007A928 00002821 */  addu       $a1, $zero, $zero
/* 71C5C 8007A92C 00A03021 */  addu       $a2, $a1, $zero
/* 71C60 8007A930 0C011ACF */  jal        func_80046B3C
/* 71C64 8007A934 00A03821 */   addu      $a3, $a1, $zero
.L8007A938:
/* 71C68 8007A938 8EB00078 */  lw         $s0, 0x78($s5)
/* 71C6C 8007A93C 1200001B */  beqz       $s0, .L8007A9AC
/* 71C70 8007A940 00102080 */   sll       $a0, $s0, 2
/* 71C74 8007A944 00902021 */  addu       $a0, $a0, $s0
/* 71C78 8007A948 000420C0 */  sll        $a0, $a0, 3
/* 71C7C 8007A94C 00902021 */  addu       $a0, $a0, $s0
/* 71C80 8007A950 00042100 */  sll        $a0, $a0, 4
/* 71C84 8007A954 0C00943C */  jal        func_800250F0
/* 71C88 8007A958 34840008 */   ori       $a0, $a0, 0x8
/* 71C8C 8007A95C 24420008 */  addiu      $v0, $v0, 0x8
/* 71C90 8007A960 AC50FFF8 */  sw         $s0, -0x8($v0)
/* 71C94 8007A964 00409021 */  addu       $s2, $v0, $zero
/* 71C98 8007A968 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71C9C 8007A96C 06000007 */  bltz       $s0, .L8007A98C
/* 71CA0 8007A970 02408821 */   addu      $s1, $s2, $zero
/* 71CA4 8007A974 2413FFFF */  addiu      $s3, $zero, -0x1
.L8007A978:
/* 71CA8 8007A978 0C01A5B0 */  jal        func_800696C0
/* 71CAC 8007A97C 02202021 */   addu      $a0, $s1, $zero
/* 71CB0 8007A980 2610FFFF */  addiu      $s0, $s0, -0x1
/* 71CB4 8007A984 1613FFFC */  bne        $s0, $s3, .L8007A978
/* 71CB8 8007A988 26310290 */   addiu     $s1, $s1, 0x290
.L8007A98C:
/* 71CBC 8007A98C 16400007 */  bnez       $s2, .L8007A9AC
/* 71CC0 8007A990 AEB20114 */   sw        $s2, 0x114($s5)
/* 71CC4 8007A994 3C048004 */  lui        $a0, %hi(D_8003FD10)
/* 71CC8 8007A998 2484FD10 */  addiu      $a0, $a0, %lo(D_8003FD10)
/* 71CCC 8007A99C 00002821 */  addu       $a1, $zero, $zero
/* 71CD0 8007A9A0 00A03021 */  addu       $a2, $a1, $zero
/* 71CD4 8007A9A4 0C011ACF */  jal        func_80046B3C
/* 71CD8 8007A9A8 00A03821 */   addu      $a3, $a1, $zero
.L8007A9AC:
/* 71CDC 8007A9AC 0C01FB72 */  jal        func_8007EDC8
/* 71CE0 8007A9B0 00000000 */   nop
/* 71CE4 8007A9B4 8FBF0028 */  lw         $ra, 0x28($sp)
/* 71CE8 8007A9B8 8FB50024 */  lw         $s5, 0x24($sp)
/* 71CEC 8007A9BC 8FB40020 */  lw         $s4, 0x20($sp)
/* 71CF0 8007A9C0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 71CF4 8007A9C4 8FB20018 */  lw         $s2, 0x18($sp)
/* 71CF8 8007A9C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 71CFC 8007A9CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 71D00 8007A9D0 03E00008 */  jr         $ra
/* 71D04 8007A9D4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007A9D8
/* 71D08 8007A9D8 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 71D0C 8007A9DC AFB1006C */  sw         $s1, 0x6C($sp)
/* 71D10 8007A9E0 00808821 */  addu       $s1, $a0, $zero
/* 71D14 8007A9E4 AFBF0084 */  sw         $ra, 0x84($sp)
/* 71D18 8007A9E8 AFB60080 */  sw         $s6, 0x80($sp)
/* 71D1C 8007A9EC AFB5007C */  sw         $s5, 0x7C($sp)
/* 71D20 8007A9F0 AFB40078 */  sw         $s4, 0x78($sp)
/* 71D24 8007A9F4 AFB30074 */  sw         $s3, 0x74($sp)
/* 71D28 8007A9F8 AFB20070 */  sw         $s2, 0x70($sp)
/* 71D2C 8007A9FC AFB00068 */  sw         $s0, 0x68($sp)
/* 71D30 8007AA00 F7B40088 */  sdc1       $f20, 0x88($sp)
/* 71D34 8007AA04 8E220008 */  lw         $v0, 0x8($s1)
/* 71D38 8007AA08 8E340000 */  lw         $s4, 0x0($s1)
/* 71D3C 8007AA0C 10400024 */  beqz       $v0, .L8007AAA0
/* 71D40 8007AA10 00000000 */   nop
/* 71D44 8007AA14 10400022 */  beqz       $v0, .L8007AAA0
/* 71D48 8007AA18 00008021 */   addu      $s0, $zero, $zero
/* 71D4C 8007AA1C 27B20018 */  addiu      $s2, $sp, 0x18
/* 71D50 8007AA20 3C138004 */  lui        $s3, %hi(D_8003FD14)
/* 71D54 8007AA24 02402021 */  addu       $a0, $s2, $zero
.L8007AA28:
/* 71D58 8007AA28 2665FD14 */  addiu      $a1, $s3, %lo(D_8003FD14)
/* 71D5C 8007AA2C 8E23000C */  lw         $v1, 0xC($s1)
/* 71D60 8007AA30 001010C0 */  sll        $v0, $s0, 3
/* 71D64 8007AA34 00431021 */  addu       $v0, $v0, $v1
/* 71D68 8007AA38 88490000 */  lwl        $t1, 0x0($v0)
/* 71D6C 8007AA3C 98490003 */  lwr        $t1, 0x3($v0)
/* 71D70 8007AA40 884A0004 */  lwl        $t2, 0x4($v0)
/* 71D74 8007AA44 984A0007 */  lwr        $t2, 0x7($v0)
/* 71D78 8007AA48 ABA90018 */  swl        $t1, 0x18($sp)
/* 71D7C 8007AA4C BBA9001B */  swr        $t1, 0x1B($sp)
/* 71D80 8007AA50 ABAA001C */  swl        $t2, 0x1C($sp)
/* 71D84 8007AA54 BBAA001F */  swr        $t2, 0x1F($sp)
/* 71D88 8007AA58 0C0006C8 */  jal        func_80001B20
/* 71D8C 8007AA5C A3A00020 */   sb        $zero, 0x20($sp)
/* 71D90 8007AA60 02802821 */  addu       $a1, $s4, $zero
/* 71D94 8007AA64 02403021 */  addu       $a2, $s2, $zero
/* 71D98 8007AA68 8E2200F0 */  lw         $v0, 0xF0($s1)
/* 71D9C 8007AA6C 00102140 */  sll        $a0, $s0, 5
/* 71DA0 8007AA70 00822021 */  addu       $a0, $a0, $v0
/* 71DA4 8007AA74 8C820008 */  lw         $v0, 0x8($a0)
/* 71DA8 8007AA78 8E270004 */  lw         $a3, 0x4($s1)
/* 71DAC 8007AA7C 84430040 */  lh         $v1, 0x40($v0)
/* 71DB0 8007AA80 8C420044 */  lw         $v0, 0x44($v0)
/* 71DB4 8007AA84 0040F809 */  jalr       $v0
/* 71DB8 8007AA88 00832021 */   addu      $a0, $a0, $v1
/* 71DBC 8007AA8C 8E220008 */  lw         $v0, 0x8($s1)
/* 71DC0 8007AA90 26100001 */  addiu      $s0, $s0, 0x1
/* 71DC4 8007AA94 0202102B */  sltu       $v0, $s0, $v0
/* 71DC8 8007AA98 5440FFE3 */  bnel       $v0, $zero, .L8007AA28
/* 71DCC 8007AA9C 02402021 */   addu      $a0, $s2, $zero
.L8007AAA0:
/* 71DD0 8007AAA0 8E220010 */  lw         $v0, 0x10($s1)
/* 71DD4 8007AAA4 10400024 */  beqz       $v0, .L8007AB38
/* 71DD8 8007AAA8 00000000 */   nop
/* 71DDC 8007AAAC 10400022 */  beqz       $v0, .L8007AB38
/* 71DE0 8007AAB0 00008021 */   addu      $s0, $zero, $zero
/* 71DE4 8007AAB4 27B20018 */  addiu      $s2, $sp, 0x18
/* 71DE8 8007AAB8 3C138004 */  lui        $s3, %hi(D_8003FD1C)
/* 71DEC 8007AABC 02402021 */  addu       $a0, $s2, $zero
.L8007AAC0:
/* 71DF0 8007AAC0 2665FD1C */  addiu      $a1, $s3, %lo(D_8003FD1C)
/* 71DF4 8007AAC4 8E230014 */  lw         $v1, 0x14($s1)
/* 71DF8 8007AAC8 001010C0 */  sll        $v0, $s0, 3
/* 71DFC 8007AACC 00431021 */  addu       $v0, $v0, $v1
/* 71E00 8007AAD0 88490000 */  lwl        $t1, 0x0($v0)
/* 71E04 8007AAD4 98490003 */  lwr        $t1, 0x3($v0)
/* 71E08 8007AAD8 884A0004 */  lwl        $t2, 0x4($v0)
/* 71E0C 8007AADC 984A0007 */  lwr        $t2, 0x7($v0)
/* 71E10 8007AAE0 ABA90018 */  swl        $t1, 0x18($sp)
/* 71E14 8007AAE4 BBA9001B */  swr        $t1, 0x1B($sp)
/* 71E18 8007AAE8 ABAA001C */  swl        $t2, 0x1C($sp)
/* 71E1C 8007AAEC BBAA001F */  swr        $t2, 0x1F($sp)
/* 71E20 8007AAF0 0C0006C8 */  jal        func_80001B20
/* 71E24 8007AAF4 A3A00020 */   sb        $zero, 0x20($sp)
/* 71E28 8007AAF8 02802821 */  addu       $a1, $s4, $zero
/* 71E2C 8007AAFC 02403021 */  addu       $a2, $s2, $zero
/* 71E30 8007AB00 8E2200F4 */  lw         $v0, 0xF4($s1)
/* 71E34 8007AB04 00102140 */  sll        $a0, $s0, 5
/* 71E38 8007AB08 00822021 */  addu       $a0, $a0, $v0
/* 71E3C 8007AB0C 8C820008 */  lw         $v0, 0x8($a0)
/* 71E40 8007AB10 8E270004 */  lw         $a3, 0x4($s1)
/* 71E44 8007AB14 84430040 */  lh         $v1, 0x40($v0)
/* 71E48 8007AB18 8C420044 */  lw         $v0, 0x44($v0)
/* 71E4C 8007AB1C 0040F809 */  jalr       $v0
/* 71E50 8007AB20 00832021 */   addu      $a0, $a0, $v1
/* 71E54 8007AB24 8E220010 */  lw         $v0, 0x10($s1)
/* 71E58 8007AB28 26100001 */  addiu      $s0, $s0, 0x1
/* 71E5C 8007AB2C 0202102B */  sltu       $v0, $s0, $v0
/* 71E60 8007AB30 5440FFE3 */  bnel       $v0, $zero, .L8007AAC0
/* 71E64 8007AB34 02402021 */   addu      $a0, $s2, $zero
.L8007AB38:
/* 71E68 8007AB38 8E220018 */  lw         $v0, 0x18($s1)
/* 71E6C 8007AB3C 10400023 */  beqz       $v0, .L8007ABCC
/* 71E70 8007AB40 00000000 */   nop
/* 71E74 8007AB44 10400021 */  beqz       $v0, .L8007ABCC
/* 71E78 8007AB48 00008021 */   addu      $s0, $zero, $zero
/* 71E7C 8007AB4C 27B30018 */  addiu      $s3, $sp, 0x18
/* 71E80 8007AB50 3C158004 */  lui        $s5, %hi(D_8003FD24)
/* 71E84 8007AB54 02009021 */  addu       $s2, $s0, $zero
.L8007AB58:
/* 71E88 8007AB58 02602021 */  addu       $a0, $s3, $zero
/* 71E8C 8007AB5C 26A5FD24 */  addiu      $a1, $s5, %lo(D_8003FD24)
/* 71E90 8007AB60 001010C0 */  sll        $v0, $s0, 3
/* 71E94 8007AB64 8E23001C */  lw         $v1, 0x1C($s1)
/* 71E98 8007AB68 26100001 */  addiu      $s0, $s0, 0x1
/* 71E9C 8007AB6C 00431021 */  addu       $v0, $v0, $v1
/* 71EA0 8007AB70 88490000 */  lwl        $t1, 0x0($v0)
/* 71EA4 8007AB74 98490003 */  lwr        $t1, 0x3($v0)
/* 71EA8 8007AB78 884A0004 */  lwl        $t2, 0x4($v0)
/* 71EAC 8007AB7C 984A0007 */  lwr        $t2, 0x7($v0)
/* 71EB0 8007AB80 ABA90018 */  swl        $t1, 0x18($sp)
/* 71EB4 8007AB84 BBA9001B */  swr        $t1, 0x1B($sp)
/* 71EB8 8007AB88 ABAA001C */  swl        $t2, 0x1C($sp)
/* 71EBC 8007AB8C BBAA001F */  swr        $t2, 0x1F($sp)
/* 71EC0 8007AB90 0C0006C8 */  jal        func_80001B20
/* 71EC4 8007AB94 A3A00020 */   sb        $zero, 0x20($sp)
/* 71EC8 8007AB98 8E2400F8 */  lw         $a0, 0xF8($s1)
/* 71ECC 8007AB9C 02602821 */  addu       $a1, $s3, $zero
/* 71ED0 8007ABA0 02442021 */  addu       $a0, $s2, $a0
/* 71ED4 8007ABA4 8C820008 */  lw         $v0, 0x8($a0)
/* 71ED8 8007ABA8 8E260004 */  lw         $a2, 0x4($s1)
/* 71EDC 8007ABAC 84430030 */  lh         $v1, 0x30($v0)
/* 71EE0 8007ABB0 8C420034 */  lw         $v0, 0x34($v0)
/* 71EE4 8007ABB4 0040F809 */  jalr       $v0
/* 71EE8 8007ABB8 00832021 */   addu      $a0, $a0, $v1
/* 71EEC 8007ABBC 8E220018 */  lw         $v0, 0x18($s1)
/* 71EF0 8007ABC0 0202102B */  sltu       $v0, $s0, $v0
/* 71EF4 8007ABC4 1440FFE4 */  bnez       $v0, .L8007AB58
/* 71EF8 8007ABC8 26520034 */   addiu     $s2, $s2, 0x34
.L8007ABCC:
/* 71EFC 8007ABCC 8E220020 */  lw         $v0, 0x20($s1)
/* 71F00 8007ABD0 10400024 */  beqz       $v0, .L8007AC64
/* 71F04 8007ABD4 00000000 */   nop
/* 71F08 8007ABD8 10400022 */  beqz       $v0, .L8007AC64
/* 71F0C 8007ABDC 00008021 */   addu      $s0, $zero, $zero
/* 71F10 8007ABE0 27B30018 */  addiu      $s3, $sp, 0x18
/* 71F14 8007ABE4 3C158004 */  lui        $s5, %hi(D_8003FD2C)
/* 71F18 8007ABE8 02009021 */  addu       $s2, $s0, $zero
.L8007ABEC:
/* 71F1C 8007ABEC 02602021 */  addu       $a0, $s3, $zero
/* 71F20 8007ABF0 26A5FD2C */  addiu      $a1, $s5, %lo(D_8003FD2C)
/* 71F24 8007ABF4 001010C0 */  sll        $v0, $s0, 3
/* 71F28 8007ABF8 8E230024 */  lw         $v1, 0x24($s1)
/* 71F2C 8007ABFC 26100001 */  addiu      $s0, $s0, 0x1
/* 71F30 8007AC00 00431021 */  addu       $v0, $v0, $v1
/* 71F34 8007AC04 88490000 */  lwl        $t1, 0x0($v0)
/* 71F38 8007AC08 98490003 */  lwr        $t1, 0x3($v0)
/* 71F3C 8007AC0C 884A0004 */  lwl        $t2, 0x4($v0)
/* 71F40 8007AC10 984A0007 */  lwr        $t2, 0x7($v0)
/* 71F44 8007AC14 ABA90018 */  swl        $t1, 0x18($sp)
/* 71F48 8007AC18 BBA9001B */  swr        $t1, 0x1B($sp)
/* 71F4C 8007AC1C ABAA001C */  swl        $t2, 0x1C($sp)
/* 71F50 8007AC20 BBAA001F */  swr        $t2, 0x1F($sp)
/* 71F54 8007AC24 0C0006C8 */  jal        func_80001B20
/* 71F58 8007AC28 A3A00020 */   sb        $zero, 0x20($sp)
/* 71F5C 8007AC2C 02802821 */  addu       $a1, $s4, $zero
/* 71F60 8007AC30 8E2400FC */  lw         $a0, 0xFC($s1)
/* 71F64 8007AC34 02603021 */  addu       $a2, $s3, $zero
/* 71F68 8007AC38 02442021 */  addu       $a0, $s2, $a0
/* 71F6C 8007AC3C 8C82003C */  lw         $v0, 0x3C($a0)
/* 71F70 8007AC40 8E270004 */  lw         $a3, 0x4($s1)
/* 71F74 8007AC44 84430040 */  lh         $v1, 0x40($v0)
/* 71F78 8007AC48 8C420044 */  lw         $v0, 0x44($v0)
/* 71F7C 8007AC4C 0040F809 */  jalr       $v0
/* 71F80 8007AC50 00832021 */   addu      $a0, $a0, $v1
/* 71F84 8007AC54 8E220020 */  lw         $v0, 0x20($s1)
/* 71F88 8007AC58 0202102B */  sltu       $v0, $s0, $v0
/* 71F8C 8007AC5C 1440FFE3 */  bnez       $v0, .L8007ABEC
/* 71F90 8007AC60 2652004C */   addiu     $s2, $s2, 0x4C
.L8007AC64:
/* 71F94 8007AC64 8E220028 */  lw         $v0, 0x28($s1)
/* 71F98 8007AC68 10400020 */  beqz       $v0, .L8007ACEC
/* 71F9C 8007AC6C 00000000 */   nop
/* 71FA0 8007AC70 1040001E */  beqz       $v0, .L8007ACEC
/* 71FA4 8007AC74 00008021 */   addu      $s0, $zero, $zero
/* 71FA8 8007AC78 27B30018 */  addiu      $s3, $sp, 0x18
/* 71FAC 8007AC7C 3C158004 */  lui        $s5, %hi(D_8003FD2C)
/* 71FB0 8007AC80 02009021 */  addu       $s2, $s0, $zero
.L8007AC84:
/* 71FB4 8007AC84 02602021 */  addu       $a0, $s3, $zero
/* 71FB8 8007AC88 26A5FD2C */  addiu      $a1, $s5, %lo(D_8003FD2C)
/* 71FBC 8007AC8C 001010C0 */  sll        $v0, $s0, 3
/* 71FC0 8007AC90 8E23002C */  lw         $v1, 0x2C($s1)
/* 71FC4 8007AC94 26100001 */  addiu      $s0, $s0, 0x1
/* 71FC8 8007AC98 00431021 */  addu       $v0, $v0, $v1
/* 71FCC 8007AC9C 88490000 */  lwl        $t1, 0x0($v0)
/* 71FD0 8007ACA0 98490003 */  lwr        $t1, 0x3($v0)
/* 71FD4 8007ACA4 884A0004 */  lwl        $t2, 0x4($v0)
/* 71FD8 8007ACA8 984A0007 */  lwr        $t2, 0x7($v0)
/* 71FDC 8007ACAC ABA90018 */  swl        $t1, 0x18($sp)
/* 71FE0 8007ACB0 BBA9001B */  swr        $t1, 0x1B($sp)
/* 71FE4 8007ACB4 ABAA001C */  swl        $t2, 0x1C($sp)
/* 71FE8 8007ACB8 BBAA001F */  swr        $t2, 0x1F($sp)
/* 71FEC 8007ACBC 0C0006C8 */  jal        func_80001B20
/* 71FF0 8007ACC0 A3A00020 */   sb        $zero, 0x20($sp)
/* 71FF4 8007ACC4 02802821 */  addu       $a1, $s4, $zero
/* 71FF8 8007ACC8 02603021 */  addu       $a2, $s3, $zero
/* 71FFC 8007ACCC 8E240100 */  lw         $a0, 0x100($s1)
/* 72000 8007ACD0 8E270004 */  lw         $a3, 0x4($s1)
/* 72004 8007ACD4 0C015323 */  jal        func_80054C8C
/* 72008 8007ACD8 00922021 */   addu      $a0, $a0, $s2
/* 7200C 8007ACDC 8E220028 */  lw         $v0, 0x28($s1)
/* 72010 8007ACE0 0202102B */  sltu       $v0, $s0, $v0
/* 72014 8007ACE4 1440FFE7 */  bnez       $v0, .L8007AC84
/* 72018 8007ACE8 2652000C */   addiu     $s2, $s2, 0xC
.L8007ACEC:
/* 7201C 8007ACEC 8E220030 */  lw         $v0, 0x30($s1)
/* 72020 8007ACF0 10400023 */  beqz       $v0, .L8007AD80
/* 72024 8007ACF4 00000000 */   nop
/* 72028 8007ACF8 10400021 */  beqz       $v0, .L8007AD80
/* 7202C 8007ACFC 00008021 */   addu      $s0, $zero, $zero
/* 72030 8007AD00 27B30018 */  addiu      $s3, $sp, 0x18
/* 72034 8007AD04 3C158004 */  lui        $s5, %hi(D_8003FD34)
/* 72038 8007AD08 02009021 */  addu       $s2, $s0, $zero
.L8007AD0C:
/* 7203C 8007AD0C 02602021 */  addu       $a0, $s3, $zero
/* 72040 8007AD10 26A5FD34 */  addiu      $a1, $s5, %lo(D_8003FD34)
/* 72044 8007AD14 001010C0 */  sll        $v0, $s0, 3
/* 72048 8007AD18 8E230034 */  lw         $v1, 0x34($s1)
/* 7204C 8007AD1C 26100001 */  addiu      $s0, $s0, 0x1
/* 72050 8007AD20 00431021 */  addu       $v0, $v0, $v1
/* 72054 8007AD24 88490000 */  lwl        $t1, 0x0($v0)
/* 72058 8007AD28 98490003 */  lwr        $t1, 0x3($v0)
/* 7205C 8007AD2C 884A0004 */  lwl        $t2, 0x4($v0)
/* 72060 8007AD30 984A0007 */  lwr        $t2, 0x7($v0)
/* 72064 8007AD34 ABA90018 */  swl        $t1, 0x18($sp)
/* 72068 8007AD38 BBA9001B */  swr        $t1, 0x1B($sp)
/* 7206C 8007AD3C ABAA001C */  swl        $t2, 0x1C($sp)
/* 72070 8007AD40 BBAA001F */  swr        $t2, 0x1F($sp)
/* 72074 8007AD44 0C0006C8 */  jal        func_80001B20
/* 72078 8007AD48 A3A00020 */   sb        $zero, 0x20($sp)
/* 7207C 8007AD4C 8E240104 */  lw         $a0, 0x104($s1)
/* 72080 8007AD50 02602821 */  addu       $a1, $s3, $zero
/* 72084 8007AD54 02442021 */  addu       $a0, $s2, $a0
/* 72088 8007AD58 8C820008 */  lw         $v0, 0x8($a0)
/* 7208C 8007AD5C 8E260004 */  lw         $a2, 0x4($s1)
/* 72090 8007AD60 84430028 */  lh         $v1, 0x28($v0)
/* 72094 8007AD64 8C42002C */  lw         $v0, 0x2C($v0)
/* 72098 8007AD68 0040F809 */  jalr       $v0
/* 7209C 8007AD6C 00832021 */   addu      $a0, $a0, $v1
/* 720A0 8007AD70 8E220030 */  lw         $v0, 0x30($s1)
/* 720A4 8007AD74 0202102B */  sltu       $v0, $s0, $v0
/* 720A8 8007AD78 1440FFE4 */  bnez       $v0, .L8007AD0C
/* 720AC 8007AD7C 2652001C */   addiu     $s2, $s2, 0x1C
.L8007AD80:
/* 720B0 8007AD80 8E220038 */  lw         $v0, 0x38($s1)
/* 720B4 8007AD84 10400023 */  beqz       $v0, .L8007AE14
/* 720B8 8007AD88 00000000 */   nop
/* 720BC 8007AD8C 10400021 */  beqz       $v0, .L8007AE14
/* 720C0 8007AD90 00008021 */   addu      $s0, $zero, $zero
/* 720C4 8007AD94 27B30018 */  addiu      $s3, $sp, 0x18
/* 720C8 8007AD98 3C158004 */  lui        $s5, %hi(D_8003FD3C)
/* 720CC 8007AD9C 02009021 */  addu       $s2, $s0, $zero
.L8007ADA0:
/* 720D0 8007ADA0 02602021 */  addu       $a0, $s3, $zero
/* 720D4 8007ADA4 26A5FD3C */  addiu      $a1, $s5, %lo(D_8003FD3C)
/* 720D8 8007ADA8 001010C0 */  sll        $v0, $s0, 3
/* 720DC 8007ADAC 8E23003C */  lw         $v1, 0x3C($s1)
/* 720E0 8007ADB0 26100001 */  addiu      $s0, $s0, 0x1
/* 720E4 8007ADB4 00431021 */  addu       $v0, $v0, $v1
/* 720E8 8007ADB8 88490000 */  lwl        $t1, 0x0($v0)
/* 720EC 8007ADBC 98490003 */  lwr        $t1, 0x3($v0)
/* 720F0 8007ADC0 884A0004 */  lwl        $t2, 0x4($v0)
/* 720F4 8007ADC4 984A0007 */  lwr        $t2, 0x7($v0)
/* 720F8 8007ADC8 ABA90018 */  swl        $t1, 0x18($sp)
/* 720FC 8007ADCC BBA9001B */  swr        $t1, 0x1B($sp)
/* 72100 8007ADD0 ABAA001C */  swl        $t2, 0x1C($sp)
/* 72104 8007ADD4 BBAA001F */  swr        $t2, 0x1F($sp)
/* 72108 8007ADD8 0C0006C8 */  jal        func_80001B20
/* 7210C 8007ADDC A3A00020 */   sb        $zero, 0x20($sp)
/* 72110 8007ADE0 8E240108 */  lw         $a0, 0x108($s1)
/* 72114 8007ADE4 02602821 */  addu       $a1, $s3, $zero
/* 72118 8007ADE8 02442021 */  addu       $a0, $s2, $a0
/* 7211C 8007ADEC 8C820028 */  lw         $v0, 0x28($a0)
/* 72120 8007ADF0 8E260004 */  lw         $a2, 0x4($s1)
/* 72124 8007ADF4 84430010 */  lh         $v1, 0x10($v0)
/* 72128 8007ADF8 8C420014 */  lw         $v0, 0x14($v0)
/* 7212C 8007ADFC 0040F809 */  jalr       $v0
/* 72130 8007AE00 00832021 */   addu      $a0, $a0, $v1
/* 72134 8007AE04 8E220038 */  lw         $v0, 0x38($s1)
/* 72138 8007AE08 0202102B */  sltu       $v0, $s0, $v0
/* 7213C 8007AE0C 1440FFE4 */  bnez       $v0, .L8007ADA0
/* 72140 8007AE10 2652002C */   addiu     $s2, $s2, 0x2C
.L8007AE14:
/* 72144 8007AE14 8E220070 */  lw         $v0, 0x70($s1)
/* 72148 8007AE18 10400024 */  beqz       $v0, .L8007AEAC
/* 7214C 8007AE1C 00000000 */   nop
/* 72150 8007AE20 10400022 */  beqz       $v0, .L8007AEAC
/* 72154 8007AE24 00008021 */   addu      $s0, $zero, $zero
/* 72158 8007AE28 27B30018 */  addiu      $s3, $sp, 0x18
/* 7215C 8007AE2C 3C158004 */  lui        $s5, %hi(D_8003FD44)
/* 72160 8007AE30 02009021 */  addu       $s2, $s0, $zero
.L8007AE34:
/* 72164 8007AE34 02602021 */  addu       $a0, $s3, $zero
/* 72168 8007AE38 26A5FD44 */  addiu      $a1, $s5, %lo(D_8003FD44)
/* 7216C 8007AE3C 001010C0 */  sll        $v0, $s0, 3
/* 72170 8007AE40 8E230074 */  lw         $v1, 0x74($s1)
/* 72174 8007AE44 26100001 */  addiu      $s0, $s0, 0x1
/* 72178 8007AE48 00431021 */  addu       $v0, $v0, $v1
/* 7217C 8007AE4C 88490000 */  lwl        $t1, 0x0($v0)
/* 72180 8007AE50 98490003 */  lwr        $t1, 0x3($v0)
/* 72184 8007AE54 884A0004 */  lwl        $t2, 0x4($v0)
/* 72188 8007AE58 984A0007 */  lwr        $t2, 0x7($v0)
/* 7218C 8007AE5C ABA90018 */  swl        $t1, 0x18($sp)
/* 72190 8007AE60 BBA9001B */  swr        $t1, 0x1B($sp)
/* 72194 8007AE64 ABAA001C */  swl        $t2, 0x1C($sp)
/* 72198 8007AE68 BBAA001F */  swr        $t2, 0x1F($sp)
/* 7219C 8007AE6C 0C0006C8 */  jal        func_80001B20
/* 721A0 8007AE70 A3A00020 */   sb        $zero, 0x20($sp)
/* 721A4 8007AE74 02802821 */  addu       $a1, $s4, $zero
/* 721A8 8007AE78 8E240110 */  lw         $a0, 0x110($s1)
/* 721AC 8007AE7C 02603021 */  addu       $a2, $s3, $zero
/* 721B0 8007AE80 02442021 */  addu       $a0, $s2, $a0
/* 721B4 8007AE84 8C820010 */  lw         $v0, 0x10($a0)
/* 721B8 8007AE88 8E270004 */  lw         $a3, 0x4($s1)
/* 721BC 8007AE8C 84430010 */  lh         $v1, 0x10($v0)
/* 721C0 8007AE90 8C420014 */  lw         $v0, 0x14($v0)
/* 721C4 8007AE94 0040F809 */  jalr       $v0
/* 721C8 8007AE98 00832021 */   addu      $a0, $a0, $v1
/* 721CC 8007AE9C 8E220070 */  lw         $v0, 0x70($s1)
/* 721D0 8007AEA0 0202102B */  sltu       $v0, $s0, $v0
/* 721D4 8007AEA4 1440FFE3 */  bnez       $v0, .L8007AE34
/* 721D8 8007AEA8 26520014 */   addiu     $s2, $s2, 0x14
.L8007AEAC:
/* 721DC 8007AEAC 8E220068 */  lw         $v0, 0x68($s1)
/* 721E0 8007AEB0 1040007B */  beqz       $v0, .L8007B0A0
/* 721E4 8007AEB4 00008021 */   addu      $s0, $zero, $zero
/* 721E8 8007AEB8 3C168004 */  lui        $s6, %hi(D_8003FD10)
/* 721EC 8007AEBC 27B50028 */  addiu      $s5, $sp, 0x28
/* 721F0 8007AEC0 02009021 */  addu       $s2, $s0, $zero
/* 721F4 8007AEC4 0200A021 */  addu       $s4, $s0, $zero
.L8007AEC8:
/* 721F8 8007AEC8 8E220068 */  lw         $v0, 0x68($s1)
/* 721FC 8007AECC 0202102B */  sltu       $v0, $s0, $v0
/* 72200 8007AED0 10400073 */  beqz       $v0, .L8007B0A0
/* 72204 8007AED4 00000000 */   nop
/* 72208 8007AED8 8E22006C */  lw         $v0, 0x6C($s1)
/* 7220C 8007AEDC 02421821 */  addu       $v1, $s2, $v0
/* 72210 8007AEE0 9462002C */  lhu        $v0, 0x2C($v1)
/* 72214 8007AEE4 C4600028 */  lwc1       $f0, 0x28($v1)
/* 72218 8007AEE8 30420004 */  andi       $v0, $v0, 0x4
/* 7221C 8007AEEC 46000502 */  mul.s      $f20, $f0, $f0
/* 72220 8007AEF0 1040001D */  beqz       $v0, .L8007AF68
/* 72224 8007AEF4 00000000 */   nop
/* 72228 8007AEF8 94620034 */  lhu        $v0, 0x34($v1)
/* 7222C 8007AEFC 8E230028 */  lw         $v1, 0x28($s1)
/* 72230 8007AF00 0043102B */  sltu       $v0, $v0, $v1
/* 72234 8007AF04 14400005 */  bnez       $v0, .L8007AF1C
/* 72238 8007AF08 00002821 */   addu      $a1, $zero, $zero
/* 7223C 8007AF0C 26C4FD10 */  addiu      $a0, $s6, %lo(D_8003FD10)
/* 72240 8007AF10 00A03021 */  addu       $a2, $a1, $zero
/* 72244 8007AF14 0C011ACF */  jal        func_80046B3C
/* 72248 8007AF18 00A03821 */   addu      $a3, $a1, $zero
.L8007AF1C:
/* 7224C 8007AF1C 8E22006C */  lw         $v0, 0x6C($s1)
/* 72250 8007AF20 8E24010C */  lw         $a0, 0x10C($s1)
/* 72254 8007AF24 8E270100 */  lw         $a3, 0x100($s1)
/* 72258 8007AF28 02421021 */  addu       $v0, $s2, $v0
/* 7225C 8007AF2C 94430034 */  lhu        $v1, 0x34($v0)
/* 72260 8007AF30 94460036 */  lhu        $a2, 0x36($v0)
/* 72264 8007AF34 C4400020 */  lwc1       $f0, 0x20($v0)
/* 72268 8007AF38 C4420024 */  lwc1       $f2, 0x24($v0)
/* 7226C 8007AF3C 00032840 */  sll        $a1, $v1, 1
/* 72270 8007AF40 00A32821 */  addu       $a1, $a1, $v1
/* 72274 8007AF44 00052880 */  sll        $a1, $a1, 2
/* 72278 8007AF48 00A72821 */  addu       $a1, $a1, $a3
/* 7227C 8007AF4C 44070000 */  mfc1       $a3, $f0
/* 72280 8007AF50 02842021 */  addu       $a0, $s4, $a0
/* 72284 8007AF54 E7B40014 */  swc1       $f20, 0x14($sp)
/* 72288 8007AF58 0C01A378 */  jal        func_80068DE0
/* 7228C 8007AF5C E7A20010 */   swc1      $f2, 0x10($sp)
/* 72290 8007AF60 0801EC03 */  j          .L8007B00C
/* 72294 8007AF64 00000000 */   nop
.L8007AF68:
/* 72298 8007AF68 90620000 */  lbu        $v0, 0x0($v1)
/* 7229C 8007AF6C 14400005 */  bnez       $v0, .L8007AF84
/* 722A0 8007AF70 26C4FD10 */   addiu     $a0, $s6, %lo(D_8003FD10)
/* 722A4 8007AF74 00002821 */  addu       $a1, $zero, $zero
/* 722A8 8007AF78 00A03021 */  addu       $a2, $a1, $zero
/* 722AC 8007AF7C 0C011ACF */  jal        func_80046B3C
/* 722B0 8007AF80 00A03821 */   addu      $a3, $a1, $zero
.L8007AF84:
/* 722B4 8007AF84 8E25006C */  lw         $a1, 0x6C($s1)
/* 722B8 8007AF88 8E240000 */  lw         $a0, 0x0($s1)
/* 722BC 8007AF8C 0C016F2D */  jal        func_8005BCB4
/* 722C0 8007AF90 00B22821 */   addu      $a1, $a1, $s2
/* 722C4 8007AF94 00409821 */  addu       $s3, $v0, $zero
/* 722C8 8007AF98 1660000F */  bnez       $s3, .L8007AFD8
/* 722CC 8007AF9C 24060008 */   addiu     $a2, $zero, 0x8
/* 722D0 8007AFA0 02A02021 */  addu       $a0, $s5, $zero
/* 722D4 8007AFA4 8E25006C */  lw         $a1, 0x6C($s1)
/* 722D8 8007AFA8 0C000708 */  jal        func_80001C20
/* 722DC 8007AFAC 00B22821 */   addu      $a1, $a1, $s2
/* 722E0 8007AFB0 02A02021 */  addu       $a0, $s5, $zero
/* 722E4 8007AFB4 3C058004 */  lui        $a1, %hi(D_8003FD4C)
/* 722E8 8007AFB8 24A5FD4C */  addiu      $a1, $a1, %lo(D_8003FD4C)
/* 722EC 8007AFBC 0C0006C8 */  jal        func_80001B20
/* 722F0 8007AFC0 A3A00030 */   sb        $zero, 0x30($sp)
/* 722F4 8007AFC4 26C4FD10 */  addiu      $a0, $s6, %lo(D_8003FD10)
/* 722F8 8007AFC8 00002821 */  addu       $a1, $zero, $zero
/* 722FC 8007AFCC 00A03021 */  addu       $a2, $a1, $zero
/* 72300 8007AFD0 0C011ACF */  jal        func_80046B3C
/* 72304 8007AFD4 00A03821 */   addu      $a3, $a1, $zero
.L8007AFD8:
/* 72308 8007AFD8 8E24010C */  lw         $a0, 0x10C($s1)
/* 7230C 8007AFDC 02602821 */  addu       $a1, $s3, $zero
/* 72310 8007AFE0 02842021 */  addu       $a0, $s4, $a0
/* 72314 8007AFE4 8C830024 */  lw         $v1, 0x24($a0)
/* 72318 8007AFE8 8E22006C */  lw         $v0, 0x6C($s1)
/* 7231C 8007AFEC 846800A0 */  lh         $t0, 0xA0($v1)
/* 72320 8007AFF0 02421021 */  addu       $v0, $s2, $v0
/* 72324 8007AFF4 E7B40010 */  swc1       $f20, 0x10($sp)
/* 72328 8007AFF8 8C460020 */  lw         $a2, 0x20($v0)
/* 7232C 8007AFFC 8C470024 */  lw         $a3, 0x24($v0)
/* 72330 8007B000 8C6200A4 */  lw         $v0, 0xA4($v1)
/* 72334 8007B004 0040F809 */  jalr       $v0
/* 72338 8007B008 00882021 */   addu      $a0, $a0, $t0
.L8007B00C:
/* 7233C 8007B00C 8E23010C */  lw         $v1, 0x10C($s1)
/* 72340 8007B010 8E25006C */  lw         $a1, 0x6C($s1)
/* 72344 8007B014 02831821 */  addu       $v1, $s4, $v1
/* 72348 8007B018 00B22821 */  addu       $a1, $a1, $s2
/* 7234C 8007B01C 8C620024 */  lw         $v0, 0x24($v1)
/* 72350 8007B020 24A50008 */  addiu      $a1, $a1, 0x8
/* 72354 8007B024 84440018 */  lh         $a0, 0x18($v0)
/* 72358 8007B028 8C42001C */  lw         $v0, 0x1C($v0)
/* 7235C 8007B02C 0040F809 */  jalr       $v0
/* 72360 8007B030 00642021 */   addu      $a0, $v1, $a0
/* 72364 8007B034 8E22006C */  lw         $v0, 0x6C($s1)
/* 72368 8007B038 02422021 */  addu       $a0, $s2, $v0
/* 7236C 8007B03C 9482002C */  lhu        $v0, 0x2C($a0)
/* 72370 8007B040 30420002 */  andi       $v0, $v0, 0x2
/* 72374 8007B044 5040000D */  beql       $v0, $zero, .L8007B07C
/* 72378 8007B048 02202021 */   addu      $a0, $s1, $zero
/* 7237C 8007B04C 8E23010C */  lw         $v1, 0x10C($s1)
/* 72380 8007B050 02831821 */  addu       $v1, $s4, $v1
/* 72384 8007B054 94620048 */  lhu        $v0, 0x48($v1)
/* 72388 8007B058 34420002 */  ori        $v0, $v0, 0x2
/* 7238C 8007B05C A4620048 */  sh         $v0, 0x48($v1)
/* 72390 8007B060 8C890014 */  lw         $t1, 0x14($a0)
/* 72394 8007B064 8C8A0018 */  lw         $t2, 0x18($a0)
/* 72398 8007B068 8C8B001C */  lw         $t3, 0x1C($a0)
/* 7239C 8007B06C AC690030 */  sw         $t1, 0x30($v1)
/* 723A0 8007B070 AC6A0034 */  sw         $t2, 0x34($v1)
/* 723A4 8007B074 AC6B0038 */  sw         $t3, 0x38($v1)
/* 723A8 8007B078 02202021 */  addu       $a0, $s1, $zero
.L8007B07C:
/* 723AC 8007B07C 26100001 */  addiu      $s0, $s0, 0x1
/* 723B0 8007B080 8E25010C */  lw         $a1, 0x10C($s1)
/* 723B4 8007B084 8E26006C */  lw         $a2, 0x6C($s1)
/* 723B8 8007B088 00B42821 */  addu       $a1, $a1, $s4
/* 723BC 8007B08C 0C018B43 */  jal        func_80062D0C
/* 723C0 8007B090 00D23021 */   addu      $a2, $a2, $s2
/* 723C4 8007B094 26520038 */  addiu      $s2, $s2, 0x38
/* 723C8 8007B098 0801EBB2 */  j          .L8007AEC8
/* 723CC 8007B09C 2694005C */   addiu     $s4, $s4, 0x5C
.L8007B0A0:
/* 723D0 8007B0A0 8FBF0084 */  lw         $ra, 0x84($sp)
/* 723D4 8007B0A4 8FB60080 */  lw         $s6, 0x80($sp)
/* 723D8 8007B0A8 8FB5007C */  lw         $s5, 0x7C($sp)
/* 723DC 8007B0AC 8FB40078 */  lw         $s4, 0x78($sp)
/* 723E0 8007B0B0 8FB30074 */  lw         $s3, 0x74($sp)
/* 723E4 8007B0B4 8FB20070 */  lw         $s2, 0x70($sp)
/* 723E8 8007B0B8 8FB1006C */  lw         $s1, 0x6C($sp)
/* 723EC 8007B0BC 8FB00068 */  lw         $s0, 0x68($sp)
/* 723F0 8007B0C0 D7B40088 */  ldc1       $f20, 0x88($sp)
/* 723F4 8007B0C4 03E00008 */  jr         $ra
/* 723F8 8007B0C8 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_8007B0CC
/* 723FC 8007B0CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 72400 8007B0D0 AFB10014 */  sw         $s1, 0x14($sp)
/* 72404 8007B0D4 00808821 */  addu       $s1, $a0, $zero
/* 72408 8007B0D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 7240C 8007B0DC 0C0182DB */  jal        func_80060B6C
/* 72410 8007B0E0 AFB00010 */   sw        $s0, 0x10($sp)
/* 72414 8007B0E4 8E240114 */  lw         $a0, 0x114($s1)
/* 72418 8007B0E8 10800018 */  beqz       $a0, .L8007B14C
/* 7241C 8007B0EC 00000000 */   nop
/* 72420 8007B0F0 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 72424 8007B0F4 00031080 */  sll        $v0, $v1, 2
/* 72428 8007B0F8 00431021 */  addu       $v0, $v0, $v1
/* 7242C 8007B0FC 000210C0 */  sll        $v0, $v0, 3
/* 72430 8007B100 00431021 */  addu       $v0, $v0, $v1
/* 72434 8007B104 00021100 */  sll        $v0, $v0, 4
/* 72438 8007B108 00828021 */  addu       $s0, $a0, $v0
/* 7243C 8007B10C 1090000C */  beq        $a0, $s0, .L8007B140
/* 72440 8007B110 00000000 */   nop
/* 72444 8007B114 2610FD70 */  addiu      $s0, $s0, -0x290
.L8007B118:
/* 72448 8007B118 8E02011C */  lw         $v0, 0x11C($s0)
/* 7244C 8007B11C 24050002 */  addiu      $a1, $zero, 0x2
/* 72450 8007B120 84440018 */  lh         $a0, 0x18($v0)
/* 72454 8007B124 8C42001C */  lw         $v0, 0x1C($v0)
/* 72458 8007B128 0040F809 */  jalr       $v0
/* 7245C 8007B12C 02042021 */   addu      $a0, $s0, $a0
/* 72460 8007B130 8E220114 */  lw         $v0, 0x114($s1)
/* 72464 8007B134 5450FFF8 */  bnel       $v0, $s0, .L8007B118
/* 72468 8007B138 2610FD70 */   addiu     $s0, $s0, -0x290
/* 7246C 8007B13C 8E240114 */  lw         $a0, 0x114($s1)
.L8007B140:
/* 72470 8007B140 0C009444 */  jal        func_80025110
/* 72474 8007B144 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 72478 8007B148 AE200114 */  sw         $zero, 0x114($s1)
.L8007B14C:
/* 7247C 8007B14C 8E24010C */  lw         $a0, 0x10C($s1)
/* 72480 8007B150 10800004 */  beqz       $a0, .L8007B164
/* 72484 8007B154 00000000 */   nop
/* 72488 8007B158 0C009444 */  jal        func_80025110
/* 7248C 8007B15C 00000000 */   nop
/* 72490 8007B160 AE20010C */  sw         $zero, 0x10C($s1)
.L8007B164:
/* 72494 8007B164 8E240108 */  lw         $a0, 0x108($s1)
/* 72498 8007B168 10800018 */  beqz       $a0, .L8007B1CC
/* 7249C 8007B16C 00000000 */   nop
/* 724A0 8007B170 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 724A4 8007B174 00031040 */  sll        $v0, $v1, 1
/* 724A8 8007B178 00431021 */  addu       $v0, $v0, $v1
/* 724AC 8007B17C 00021080 */  sll        $v0, $v0, 2
/* 724B0 8007B180 00431023 */  subu       $v0, $v0, $v1
/* 724B4 8007B184 00021080 */  sll        $v0, $v0, 2
/* 724B8 8007B188 00828021 */  addu       $s0, $a0, $v0
/* 724BC 8007B18C 1090000C */  beq        $a0, $s0, .L8007B1C0
/* 724C0 8007B190 00000000 */   nop
/* 724C4 8007B194 2610FFD4 */  addiu      $s0, $s0, -0x2C
.L8007B198:
/* 724C8 8007B198 8E020028 */  lw         $v0, 0x28($s0)
/* 724CC 8007B19C 24050002 */  addiu      $a1, $zero, 0x2
/* 724D0 8007B1A0 84440008 */  lh         $a0, 0x8($v0)
/* 724D4 8007B1A4 8C42000C */  lw         $v0, 0xC($v0)
/* 724D8 8007B1A8 0040F809 */  jalr       $v0
/* 724DC 8007B1AC 02042021 */   addu      $a0, $s0, $a0
/* 724E0 8007B1B0 8E220108 */  lw         $v0, 0x108($s1)
/* 724E4 8007B1B4 5450FFF8 */  bnel       $v0, $s0, .L8007B198
/* 724E8 8007B1B8 2610FFD4 */   addiu     $s0, $s0, -0x2C
/* 724EC 8007B1BC 8E240108 */  lw         $a0, 0x108($s1)
.L8007B1C0:
/* 724F0 8007B1C0 0C009444 */  jal        func_80025110
/* 724F4 8007B1C4 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 724F8 8007B1C8 AE200108 */  sw         $zero, 0x108($s1)
.L8007B1CC:
/* 724FC 8007B1CC 8E240104 */  lw         $a0, 0x104($s1)
/* 72500 8007B1D0 10800016 */  beqz       $a0, .L8007B22C
/* 72504 8007B1D4 00000000 */   nop
/* 72508 8007B1D8 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 7250C 8007B1DC 000310C0 */  sll        $v0, $v1, 3
/* 72510 8007B1E0 00431023 */  subu       $v0, $v0, $v1
/* 72514 8007B1E4 00021080 */  sll        $v0, $v0, 2
/* 72518 8007B1E8 00828021 */  addu       $s0, $a0, $v0
/* 7251C 8007B1EC 1090000C */  beq        $a0, $s0, .L8007B220
/* 72520 8007B1F0 00000000 */   nop
/* 72524 8007B1F4 2610FFE4 */  addiu      $s0, $s0, -0x1C
.L8007B1F8:
/* 72528 8007B1F8 8E020008 */  lw         $v0, 0x8($s0)
/* 7252C 8007B1FC 24050002 */  addiu      $a1, $zero, 0x2
/* 72530 8007B200 84440008 */  lh         $a0, 0x8($v0)
/* 72534 8007B204 8C42000C */  lw         $v0, 0xC($v0)
/* 72538 8007B208 0040F809 */  jalr       $v0
/* 7253C 8007B20C 02042021 */   addu      $a0, $s0, $a0
/* 72540 8007B210 8E220104 */  lw         $v0, 0x104($s1)
/* 72544 8007B214 5450FFF8 */  bnel       $v0, $s0, .L8007B1F8
/* 72548 8007B218 2610FFE4 */   addiu     $s0, $s0, -0x1C
/* 7254C 8007B21C 8E240104 */  lw         $a0, 0x104($s1)
.L8007B220:
/* 72550 8007B220 0C009444 */  jal        func_80025110
/* 72554 8007B224 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 72558 8007B228 AE200104 */  sw         $zero, 0x104($s1)
.L8007B22C:
/* 7255C 8007B22C 8E240100 */  lw         $a0, 0x100($s1)
/* 72560 8007B230 10800013 */  beqz       $a0, .L8007B280
/* 72564 8007B234 00000000 */   nop
/* 72568 8007B238 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 7256C 8007B23C 00031040 */  sll        $v0, $v1, 1
/* 72570 8007B240 00431021 */  addu       $v0, $v0, $v1
/* 72574 8007B244 00021080 */  sll        $v0, $v0, 2
/* 72578 8007B248 00828021 */  addu       $s0, $a0, $v0
/* 7257C 8007B24C 10900009 */  beq        $a0, $s0, .L8007B274
/* 72580 8007B250 00000000 */   nop
/* 72584 8007B254 2610FFF4 */  addiu      $s0, $s0, -0xC
.L8007B258:
/* 72588 8007B258 02002021 */  addu       $a0, $s0, $zero
/* 7258C 8007B25C 0C0152E9 */  jal        func_80054BA4
/* 72590 8007B260 24050002 */   addiu     $a1, $zero, 0x2
/* 72594 8007B264 8E220100 */  lw         $v0, 0x100($s1)
/* 72598 8007B268 5450FFFB */  bnel       $v0, $s0, .L8007B258
/* 7259C 8007B26C 2610FFF4 */   addiu     $s0, $s0, -0xC
/* 725A0 8007B270 8E240100 */  lw         $a0, 0x100($s1)
.L8007B274:
/* 725A4 8007B274 0C009444 */  jal        func_80025110
/* 725A8 8007B278 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 725AC 8007B27C AE200100 */  sw         $zero, 0x100($s1)
.L8007B280:
/* 725B0 8007B280 8E2400FC */  lw         $a0, 0xFC($s1)
/* 725B4 8007B284 10800018 */  beqz       $a0, .L8007B2E8
/* 725B8 8007B288 00000000 */   nop
/* 725BC 8007B28C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 725C0 8007B290 00031080 */  sll        $v0, $v1, 2
/* 725C4 8007B294 00431021 */  addu       $v0, $v0, $v1
/* 725C8 8007B298 00021080 */  sll        $v0, $v0, 2
/* 725CC 8007B29C 00431023 */  subu       $v0, $v0, $v1
/* 725D0 8007B2A0 00021080 */  sll        $v0, $v0, 2
/* 725D4 8007B2A4 00828021 */  addu       $s0, $a0, $v0
/* 725D8 8007B2A8 1090000C */  beq        $a0, $s0, .L8007B2DC
/* 725DC 8007B2AC 00000000 */   nop
/* 725E0 8007B2B0 2610FFB4 */  addiu      $s0, $s0, -0x4C
.L8007B2B4:
/* 725E4 8007B2B4 8E02003C */  lw         $v0, 0x3C($s0)
/* 725E8 8007B2B8 24050002 */  addiu      $a1, $zero, 0x2
/* 725EC 8007B2BC 84440038 */  lh         $a0, 0x38($v0)
/* 725F0 8007B2C0 8C42003C */  lw         $v0, 0x3C($v0)
/* 725F4 8007B2C4 0040F809 */  jalr       $v0
/* 725F8 8007B2C8 02042021 */   addu      $a0, $s0, $a0
/* 725FC 8007B2CC 8E2200FC */  lw         $v0, 0xFC($s1)
/* 72600 8007B2D0 5450FFF8 */  bnel       $v0, $s0, .L8007B2B4
/* 72604 8007B2D4 2610FFB4 */   addiu     $s0, $s0, -0x4C
/* 72608 8007B2D8 8E2400FC */  lw         $a0, 0xFC($s1)
.L8007B2DC:
/* 7260C 8007B2DC 0C009444 */  jal        func_80025110
/* 72610 8007B2E0 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 72614 8007B2E4 AE2000FC */  sw         $zero, 0xFC($s1)
.L8007B2E8:
/* 72618 8007B2E8 8E2400F8 */  lw         $a0, 0xF8($s1)
/* 7261C 8007B2EC 10800018 */  beqz       $a0, .L8007B350
/* 72620 8007B2F0 00000000 */   nop
/* 72624 8007B2F4 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 72628 8007B2F8 00031040 */  sll        $v0, $v1, 1
/* 7262C 8007B2FC 00431021 */  addu       $v0, $v0, $v1
/* 72630 8007B300 00021080 */  sll        $v0, $v0, 2
/* 72634 8007B304 00431021 */  addu       $v0, $v0, $v1
/* 72638 8007B308 00021080 */  sll        $v0, $v0, 2
/* 7263C 8007B30C 00828021 */  addu       $s0, $a0, $v0
/* 72640 8007B310 1090000C */  beq        $a0, $s0, .L8007B344
/* 72644 8007B314 00000000 */   nop
/* 72648 8007B318 2610FFCC */  addiu      $s0, $s0, -0x34
.L8007B31C:
/* 7264C 8007B31C 8E020008 */  lw         $v0, 0x8($s0)
/* 72650 8007B320 24050002 */  addiu      $a1, $zero, 0x2
/* 72654 8007B324 84440008 */  lh         $a0, 0x8($v0)
/* 72658 8007B328 8C42000C */  lw         $v0, 0xC($v0)
/* 7265C 8007B32C 0040F809 */  jalr       $v0
/* 72660 8007B330 02042021 */   addu      $a0, $s0, $a0
/* 72664 8007B334 8E2200F8 */  lw         $v0, 0xF8($s1)
/* 72668 8007B338 5450FFF8 */  bnel       $v0, $s0, .L8007B31C
/* 7266C 8007B33C 2610FFCC */   addiu     $s0, $s0, -0x34
/* 72670 8007B340 8E2400F8 */  lw         $a0, 0xF8($s1)
.L8007B344:
/* 72674 8007B344 0C009444 */  jal        func_80025110
/* 72678 8007B348 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 7267C 8007B34C AE2000F8 */  sw         $zero, 0xF8($s1)
.L8007B350:
/* 72680 8007B350 8E2300F4 */  lw         $v1, 0xF4($s1)
/* 72684 8007B354 10600014 */  beqz       $v1, .L8007B3A8
/* 72688 8007B358 00000000 */   nop
/* 7268C 8007B35C 8C62FFF8 */  lw         $v0, -0x8($v1)
/* 72690 8007B360 00021140 */  sll        $v0, $v0, 5
/* 72694 8007B364 00628021 */  addu       $s0, $v1, $v0
/* 72698 8007B368 1070000B */  beq        $v1, $s0, .L8007B398
/* 7269C 8007B36C 00000000 */   nop
/* 726A0 8007B370 2610FFE0 */  addiu      $s0, $s0, -0x20
.L8007B374:
/* 726A4 8007B374 8E020008 */  lw         $v0, 0x8($s0)
/* 726A8 8007B378 24050002 */  addiu      $a1, $zero, 0x2
/* 726AC 8007B37C 84440008 */  lh         $a0, 0x8($v0)
/* 726B0 8007B380 8C42000C */  lw         $v0, 0xC($v0)
/* 726B4 8007B384 0040F809 */  jalr       $v0
/* 726B8 8007B388 02042021 */   addu      $a0, $s0, $a0
/* 726BC 8007B38C 8E2200F4 */  lw         $v0, 0xF4($s1)
/* 726C0 8007B390 5450FFF8 */  bnel       $v0, $s0, .L8007B374
/* 726C4 8007B394 2610FFE0 */   addiu     $s0, $s0, -0x20
.L8007B398:
/* 726C8 8007B398 8E2400F4 */  lw         $a0, 0xF4($s1)
/* 726CC 8007B39C 0C009444 */  jal        func_80025110
/* 726D0 8007B3A0 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 726D4 8007B3A4 AE2000F4 */  sw         $zero, 0xF4($s1)
.L8007B3A8:
/* 726D8 8007B3A8 8E2300F0 */  lw         $v1, 0xF0($s1)
/* 726DC 8007B3AC 10600013 */  beqz       $v1, .L8007B3FC
/* 726E0 8007B3B0 00000000 */   nop
/* 726E4 8007B3B4 8C62FFF8 */  lw         $v0, -0x8($v1)
/* 726E8 8007B3B8 00021140 */  sll        $v0, $v0, 5
/* 726EC 8007B3BC 00628021 */  addu       $s0, $v1, $v0
/* 726F0 8007B3C0 1070000A */  beq        $v1, $s0, .L8007B3EC
/* 726F4 8007B3C4 2610FFE0 */   addiu     $s0, $s0, -0x20
.L8007B3C8:
/* 726F8 8007B3C8 8E020008 */  lw         $v0, 0x8($s0)
/* 726FC 8007B3CC 24050002 */  addiu      $a1, $zero, 0x2
/* 72700 8007B3D0 84440008 */  lh         $a0, 0x8($v0)
/* 72704 8007B3D4 8C42000C */  lw         $v0, 0xC($v0)
/* 72708 8007B3D8 0040F809 */  jalr       $v0
/* 7270C 8007B3DC 02042021 */   addu      $a0, $s0, $a0
/* 72710 8007B3E0 8E2200F0 */  lw         $v0, 0xF0($s1)
/* 72714 8007B3E4 1450FFF8 */  bne        $v0, $s0, .L8007B3C8
/* 72718 8007B3E8 2610FFE0 */   addiu     $s0, $s0, -0x20
.L8007B3EC:
/* 7271C 8007B3EC 8E2400F0 */  lw         $a0, 0xF0($s1)
/* 72720 8007B3F0 0C009444 */  jal        func_80025110
/* 72724 8007B3F4 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 72728 8007B3F8 AE2000F0 */  sw         $zero, 0xF0($s1)
.L8007B3FC:
/* 7272C 8007B3FC 8E240110 */  lw         $a0, 0x110($s1)
/* 72730 8007B400 10800015 */  beqz       $a0, .L8007B458
/* 72734 8007B404 00000000 */   nop
/* 72738 8007B408 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 7273C 8007B40C 00031080 */  sll        $v0, $v1, 2
/* 72740 8007B410 00431021 */  addu       $v0, $v0, $v1
/* 72744 8007B414 00021080 */  sll        $v0, $v0, 2
/* 72748 8007B418 00828021 */  addu       $s0, $a0, $v0
/* 7274C 8007B41C 1090000B */  beq        $a0, $s0, .L8007B44C
/* 72750 8007B420 2610FFEC */   addiu     $s0, $s0, -0x14
.L8007B424:
/* 72754 8007B424 8E020010 */  lw         $v0, 0x10($s0)
/* 72758 8007B428 24050002 */  addiu      $a1, $zero, 0x2
/* 7275C 8007B42C 84440008 */  lh         $a0, 0x8($v0)
/* 72760 8007B430 8C42000C */  lw         $v0, 0xC($v0)
/* 72764 8007B434 0040F809 */  jalr       $v0
/* 72768 8007B438 02042021 */   addu      $a0, $s0, $a0
/* 7276C 8007B43C 8E220110 */  lw         $v0, 0x110($s1)
/* 72770 8007B440 1450FFF8 */  bne        $v0, $s0, .L8007B424
/* 72774 8007B444 2610FFEC */   addiu     $s0, $s0, -0x14
/* 72778 8007B448 8E240110 */  lw         $a0, 0x110($s1)
.L8007B44C:
/* 7277C 8007B44C 0C009444 */  jal        func_80025110
/* 72780 8007B450 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 72784 8007B454 AE200110 */  sw         $zero, 0x110($s1)
.L8007B458:
/* 72788 8007B458 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7278C 8007B45C 8FB10014 */  lw         $s1, 0x14($sp)
/* 72790 8007B460 8FB00010 */  lw         $s0, 0x10($sp)
/* 72794 8007B464 03E00008 */  jr         $ra
/* 72798 8007B468 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007B46C
/* 7279C 8007B46C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 727A0 8007B470 AFB20018 */  sw         $s2, 0x18($sp)
/* 727A4 8007B474 00809021 */  addu       $s2, $a0, $zero
/* 727A8 8007B478 AFB3001C */  sw         $s3, 0x1C($sp)
/* 727AC 8007B47C 00A09821 */  addu       $s3, $a1, $zero
/* 727B0 8007B480 AFBF0020 */  sw         $ra, 0x20($sp)
/* 727B4 8007B484 AFB10014 */  sw         $s1, 0x14($sp)
/* 727B8 8007B488 AFB00010 */  sw         $s0, 0x10($sp)
/* 727BC 8007B48C 8E420058 */  lw         $v0, 0x58($s2)
/* 727C0 8007B490 1040000E */  beqz       $v0, .L8007B4CC
/* 727C4 8007B494 00008021 */   addu      $s0, $zero, $zero
/* 727C8 8007B498 02008821 */  addu       $s1, $s0, $zero
.L8007B49C:
/* 727CC 8007B49C 26100001 */  addiu      $s0, $s0, 0x1
/* 727D0 8007B4A0 8E4500A0 */  lw         $a1, 0xA0($s2)
/* 727D4 8007B4A4 8E62012C */  lw         $v0, 0x12C($s3)
/* 727D8 8007B4A8 00B12821 */  addu       $a1, $a1, $s1
/* 727DC 8007B4AC 84440120 */  lh         $a0, 0x120($v0)
/* 727E0 8007B4B0 8C420124 */  lw         $v0, 0x124($v0)
/* 727E4 8007B4B4 0040F809 */  jalr       $v0
/* 727E8 8007B4B8 02642021 */   addu      $a0, $s3, $a0
/* 727EC 8007B4BC 8E420058 */  lw         $v0, 0x58($s2)
/* 727F0 8007B4C0 0202102B */  sltu       $v0, $s0, $v0
/* 727F4 8007B4C4 1440FFF5 */  bnez       $v0, .L8007B49C
/* 727F8 8007B4C8 2631009C */   addiu     $s1, $s1, 0x9C
.L8007B4CC:
/* 727FC 8007B4CC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 72800 8007B4D0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 72804 8007B4D4 8FB20018 */  lw         $s2, 0x18($sp)
/* 72808 8007B4D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 7280C 8007B4DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 72810 8007B4E0 03E00008 */  jr         $ra
/* 72814 8007B4E4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007B4E8
/* 72818 8007B4E8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7281C 8007B4EC AFB20018 */  sw         $s2, 0x18($sp)
/* 72820 8007B4F0 00809021 */  addu       $s2, $a0, $zero
/* 72824 8007B4F4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 72828 8007B4F8 00A09821 */  addu       $s3, $a1, $zero
/* 7282C 8007B4FC AFBF0020 */  sw         $ra, 0x20($sp)
/* 72830 8007B500 AFB10014 */  sw         $s1, 0x14($sp)
/* 72834 8007B504 AFB00010 */  sw         $s0, 0x10($sp)
/* 72838 8007B508 8E420048 */  lw         $v0, 0x48($s2)
/* 7283C 8007B50C 1040000F */  beqz       $v0, .L8007B54C
/* 72840 8007B510 00008021 */   addu      $s0, $zero, $zero
/* 72844 8007B514 02008821 */  addu       $s1, $s0, $zero
.L8007B518:
/* 72848 8007B518 8E440098 */  lw         $a0, 0x98($s2)
/* 7284C 8007B51C 02242021 */  addu       $a0, $s1, $a0
/* 72850 8007B520 8C830024 */  lw         $v1, 0x24($a0)
/* 72854 8007B524 84620040 */  lh         $v0, 0x40($v1)
/* 72858 8007B528 26100001 */  addiu      $s0, $s0, 0x1
/* 7285C 8007B52C 00822021 */  addu       $a0, $a0, $v0
/* 72860 8007B530 8C620044 */  lw         $v0, 0x44($v1)
/* 72864 8007B534 0040F809 */  jalr       $v0
/* 72868 8007B538 02602821 */   addu      $a1, $s3, $zero
/* 7286C 8007B53C 8E420048 */  lw         $v0, 0x48($s2)
/* 72870 8007B540 0202102B */  sltu       $v0, $s0, $v0
/* 72874 8007B544 1440FFF4 */  bnez       $v0, .L8007B518
/* 72878 8007B548 26310090 */   addiu     $s1, $s1, 0x90
.L8007B54C:
/* 7287C 8007B54C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 72880 8007B550 8FB3001C */  lw         $s3, 0x1C($sp)
/* 72884 8007B554 8FB20018 */  lw         $s2, 0x18($sp)
/* 72888 8007B558 8FB10014 */  lw         $s1, 0x14($sp)
/* 7288C 8007B55C 8FB00010 */  lw         $s0, 0x10($sp)
/* 72890 8007B560 03E00008 */  jr         $ra
/* 72894 8007B564 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007B568
/* 72898 8007B568 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7289C 8007B56C AFB20018 */  sw         $s2, 0x18($sp)
/* 728A0 8007B570 00809021 */  addu       $s2, $a0, $zero
/* 728A4 8007B574 AFB3001C */  sw         $s3, 0x1C($sp)
/* 728A8 8007B578 00A09821 */  addu       $s3, $a1, $zero
/* 728AC 8007B57C AFBF0020 */  sw         $ra, 0x20($sp)
/* 728B0 8007B580 AFB10014 */  sw         $s1, 0x14($sp)
/* 728B4 8007B584 AFB00010 */  sw         $s0, 0x10($sp)
/* 728B8 8007B588 8E420050 */  lw         $v0, 0x50($s2)
/* 728BC 8007B58C 1040000F */  beqz       $v0, .L8007B5CC
/* 728C0 8007B590 00008021 */   addu      $s0, $zero, $zero
/* 728C4 8007B594 02008821 */  addu       $s1, $s0, $zero
.L8007B598:
/* 728C8 8007B598 8E44009C */  lw         $a0, 0x9C($s2)
/* 728CC 8007B59C 02242021 */  addu       $a0, $s1, $a0
/* 728D0 8007B5A0 8C830024 */  lw         $v1, 0x24($a0)
/* 728D4 8007B5A4 84620040 */  lh         $v0, 0x40($v1)
/* 728D8 8007B5A8 26100001 */  addiu      $s0, $s0, 0x1
/* 728DC 8007B5AC 00822021 */  addu       $a0, $a0, $v0
/* 728E0 8007B5B0 8C620044 */  lw         $v0, 0x44($v1)
/* 728E4 8007B5B4 0040F809 */  jalr       $v0
/* 728E8 8007B5B8 02602821 */   addu      $a1, $s3, $zero
/* 728EC 8007B5BC 8E420050 */  lw         $v0, 0x50($s2)
/* 728F0 8007B5C0 0202102B */  sltu       $v0, $s0, $v0
/* 728F4 8007B5C4 1440FFF4 */  bnez       $v0, .L8007B598
/* 728F8 8007B5C8 263100F4 */   addiu     $s1, $s1, 0xF4
.L8007B5CC:
/* 728FC 8007B5CC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 72900 8007B5D0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 72904 8007B5D4 8FB20018 */  lw         $s2, 0x18($sp)
/* 72908 8007B5D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 7290C 8007B5DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 72910 8007B5E0 03E00008 */  jr         $ra
/* 72914 8007B5E4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007B5E8
/* 72918 8007B5E8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7291C 8007B5EC AFB20018 */  sw         $s2, 0x18($sp)
/* 72920 8007B5F0 00809021 */  addu       $s2, $a0, $zero
/* 72924 8007B5F4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 72928 8007B5F8 00A09821 */  addu       $s3, $a1, $zero
/* 7292C 8007B5FC AFBF0020 */  sw         $ra, 0x20($sp)
/* 72930 8007B600 AFB10014 */  sw         $s1, 0x14($sp)
/* 72934 8007B604 AFB00010 */  sw         $s0, 0x10($sp)
/* 72938 8007B608 8E420068 */  lw         $v0, 0x68($s2)
/* 7293C 8007B60C 1040000E */  beqz       $v0, .L8007B648
/* 72940 8007B610 00008021 */   addu      $s0, $zero, $zero
/* 72944 8007B614 02008821 */  addu       $s1, $s0, $zero
.L8007B618:
/* 72948 8007B618 26100001 */  addiu      $s0, $s0, 0x1
/* 7294C 8007B61C 8E45010C */  lw         $a1, 0x10C($s2)
/* 72950 8007B620 8E62012C */  lw         $v0, 0x12C($s3)
/* 72954 8007B624 00B12821 */  addu       $a1, $a1, $s1
/* 72958 8007B628 84440168 */  lh         $a0, 0x168($v0)
/* 7295C 8007B62C 8C42016C */  lw         $v0, 0x16C($v0)
/* 72960 8007B630 0040F809 */  jalr       $v0
/* 72964 8007B634 02642021 */   addu      $a0, $s3, $a0
/* 72968 8007B638 8E420068 */  lw         $v0, 0x68($s2)
/* 7296C 8007B63C 0202102B */  sltu       $v0, $s0, $v0
/* 72970 8007B640 1440FFF5 */  bnez       $v0, .L8007B618
/* 72974 8007B644 2631005C */   addiu     $s1, $s1, 0x5C
.L8007B648:
/* 72978 8007B648 8FBF0020 */  lw         $ra, 0x20($sp)
/* 7297C 8007B64C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 72980 8007B650 8FB20018 */  lw         $s2, 0x18($sp)
/* 72984 8007B654 8FB10014 */  lw         $s1, 0x14($sp)
/* 72988 8007B658 8FB00010 */  lw         $s0, 0x10($sp)
/* 7298C 8007B65C 03E00008 */  jr         $ra
/* 72990 8007B660 27BD0028 */   addiu     $sp, $sp, 0x28
