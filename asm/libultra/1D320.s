.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001C720
/* 1D320 8001C720 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 1D324 8001C724 AFB30054 */  sw         $s3, 0x54($sp)
/* 1D328 8001C728 00809821 */  addu       $s3, $a0, $zero
/* 1D32C 8001C72C AFB1004C */  sw         $s1, 0x4C($sp)
/* 1D330 8001C730 27B10018 */  addiu      $s1, $sp, 0x18
/* 1D334 8001C734 AFBF0060 */  sw         $ra, 0x60($sp)
/* 1D338 8001C738 AFB5005C */  sw         $s5, 0x5C($sp)
/* 1D33C 8001C73C AFB40058 */  sw         $s4, 0x58($sp)
/* 1D340 8001C740 AFB20050 */  sw         $s2, 0x50($sp)
/* 1D344 8001C744 AFB00048 */  sw         $s0, 0x48($sp)
/* 1D348 8001C748 F7B80078 */  sdc1       $f24, 0x78($sp)
/* 1D34C 8001C74C F7B60070 */  sdc1       $f22, 0x70($sp)
/* 1D350 8001C750 F7B40068 */  sdc1       $f20, 0x68($sp)
/* 1D354 8001C754 8E620024 */  lw         $v0, 0x24($s3)
/* 1D358 8001C758 D6740000 */  ldc1       $f20, 0x0($s3)
/* 1D35C 8001C75C 04410003 */  bgez       $v0, .L8001C76C
/* 1D360 8001C760 00A0A821 */   addu      $s5, $a1, $zero
/* 1D364 8001C764 080071E5 */  j          .L8001C794
/* 1D368 8001C768 24020006 */   addiu     $v0, $zero, 0x6
.L8001C76C:
/* 1D36C 8001C76C 1440000B */  bnez       $v0, .L8001C79C
/* 1D370 8001C770 27A40038 */   addiu     $a0, $sp, 0x38
/* 1D374 8001C774 32A200FF */  andi       $v0, $s5, 0xFF
/* 1D378 8001C778 38430067 */  xori       $v1, $v0, 0x67
/* 1D37C 8001C77C 2C630001 */  sltiu      $v1, $v1, 0x1
/* 1D380 8001C780 38420047 */  xori       $v0, $v0, 0x47
/* 1D384 8001C784 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1D388 8001C788 00621825 */  or         $v1, $v1, $v0
/* 1D38C 8001C78C 10600003 */  beqz       $v1, .L8001C79C
/* 1D390 8001C790 24020001 */   addiu     $v0, $zero, 0x1
.L8001C794:
/* 1D394 8001C794 AE620024 */  sw         $v0, 0x24($s3)
/* 1D398 8001C798 27A40038 */  addiu      $a0, $sp, 0x38
.L8001C79C:
/* 1D39C 8001C79C 0C0072D8 */  jal        func_8001CB60
/* 1D3A0 8001C7A0 02602821 */   addu      $a1, $s3, $zero
/* 1D3A4 8001C7A4 00021400 */  sll        $v0, $v0, 16
/* 1D3A8 8001C7A8 00021C03 */  sra        $v1, $v0, 16
/* 1D3AC 8001C7AC 18600010 */  blez       $v1, .L8001C7F0
/* 1D3B0 8001C7B0 24020002 */   addiu     $v0, $zero, 0x2
/* 1D3B4 8001C7B4 3C068000 */  lui        $a2, %hi(D_8000196C)
/* 1D3B8 8001C7B8 24C6196C */  addiu      $a2, $a2, %lo(D_8000196C)
/* 1D3BC 8001C7BC 8E670008 */  lw         $a3, 0x8($s3)
/* 1D3C0 8001C7C0 14620003 */  bne        $v1, $v0, .L8001C7D0
/* 1D3C4 8001C7C4 24020003 */   addiu     $v0, $zero, 0x3
/* 1D3C8 8001C7C8 3C068000 */  lui        $a2, %hi(D_80001968)
/* 1D3CC 8001C7CC 24C61968 */  addiu      $a2, $a2, %lo(D_80001968)
.L8001C7D0:
/* 1D3D0 8001C7D0 AE620014 */  sw         $v0, 0x14($s3)
/* 1D3D4 8001C7D4 80C20000 */  lb         $v0, 0x0($a2)
/* 1D3D8 8001C7D8 80C30001 */  lb         $v1, 0x1($a2)
/* 1D3DC 8001C7DC 80C40002 */  lb         $a0, 0x2($a2)
/* 1D3E0 8001C7E0 A0E20000 */  sb         $v0, 0x0($a3)
/* 1D3E4 8001C7E4 A0E30001 */  sb         $v1, 0x1($a3)
/* 1D3E8 8001C7E8 080072CC */  j          .L8001CB30
/* 1D3EC 8001C7EC A0E40002 */   sb        $a0, 0x2($a3)
.L8001C7F0:
/* 1D3F0 8001C7F0 14600003 */  bnez       $v1, .L8001C800
/* 1D3F4 8001C7F4 00003821 */   addu      $a3, $zero, $zero
/* 1D3F8 8001C7F8 080072C4 */  j          .L8001CB10
/* 1D3FC 8001C7FC A7A00038 */   sh        $zero, 0x38($sp)
.L8001C800:
/* 1D400 8001C800 44800000 */  mtc1       $zero, $f0
/* 1D404 8001C804 44800800 */  mtc1       $zero, $f1
/* 1D408 8001C808 00000000 */  nop
/* 1D40C 8001C80C 4620A03C */  c.lt.d     $f20, $f0
/* 1D410 8001C810 00000000 */  nop
/* 1D414 8001C814 00000000 */  nop
/* 1D418 8001C818 45030001 */  bc1tl      .L8001C820
/* 1D41C 8001C81C 4620A507 */   neg.d     $f20, $f20
.L8001C820:
/* 1D420 8001C820 87A30038 */  lh         $v1, 0x38($sp)
/* 1D424 8001C824 24027597 */  addiu      $v0, $zero, 0x7597
/* 1D428 8001C828 00620018 */  mult       $v1, $v0
/* 1D42C 8001C82C 00001812 */  mflo       $v1
/* 1D430 8001C830 3C0214F8 */  lui        $v0, (0x14F8B589 >> 16)
/* 1D434 8001C834 3442B589 */  ori        $v0, $v0, (0x14F8B589 & 0xFFFF)
/* 1D438 8001C838 00620018 */  mult       $v1, $v0
/* 1D43C 8001C83C 00031FC3 */  sra        $v1, $v1, 31
/* 1D440 8001C840 00004010 */  mfhi       $t0
/* 1D444 8001C844 00081343 */  sra        $v0, $t0, 13
/* 1D448 8001C848 00431023 */  subu       $v0, $v0, $v1
/* 1D44C 8001C84C 2443FFFC */  addiu      $v1, $v0, -0x4
/* 1D450 8001C850 00031400 */  sll        $v0, $v1, 16
/* 1D454 8001C854 00021403 */  sra        $v0, $v0, 16
/* 1D458 8001C858 04410013 */  bgez       $v0, .L8001C8A8
/* 1D45C 8001C85C A7A30038 */   sh        $v1, 0x38($sp)
/* 1D460 8001C860 00021023 */  negu       $v0, $v0
/* 1D464 8001C864 24420003 */  addiu      $v0, $v0, 0x3
/* 1D468 8001C868 2403FFFC */  addiu      $v1, $zero, -0x4
/* 1D46C 8001C86C 00431824 */  and        $v1, $v0, $v1
/* 1D470 8001C870 00031023 */  negu       $v0, $v1
/* 1D474 8001C874 1860001F */  blez       $v1, .L8001C8F4
/* 1D478 8001C878 A7A20038 */   sh        $v0, 0x38($sp)
/* 1D47C 8001C87C 3C048000 */  lui        $a0, %hi(pows)
/* 1D480 8001C880 24841920 */  addiu      $a0, $a0, %lo(pows)
.L8001C884:
/* 1D484 8001C884 30620001 */  andi       $v0, $v1, 0x1
/* 1D488 8001C888 10400003 */  beqz       $v0, .L8001C898
/* 1D48C 8001C88C 00031843 */   sra       $v1, $v1, 1
/* 1D490 8001C890 D4800000 */  ldc1       $f0, 0x0($a0)
/* 1D494 8001C894 4620A502 */  mul.d      $f20, $f20, $f0
.L8001C898:
/* 1D498 8001C898 1C60FFFA */  bgtz       $v1, .L8001C884
/* 1D49C 8001C89C 24840008 */   addiu     $a0, $a0, 0x8
/* 1D4A0 8001C8A0 0800723D */  j          .L8001C8F4
/* 1D4A4 8001C8A4 00000000 */   nop
.L8001C8A8:
/* 1D4A8 8001C8A8 18400012 */  blez       $v0, .L8001C8F4
/* 1D4AC 8001C8AC 2402FFFC */   addiu     $v0, $zero, -0x4
/* 1D4B0 8001C8B0 3C018000 */  lui        $at, %hi(D_80001970)
/* 1D4B4 8001C8B4 D4221970 */  ldc1       $f2, %lo(D_80001970)($at)
/* 1D4B8 8001C8B8 00621024 */  and        $v0, $v1, $v0
/* 1D4BC 8001C8BC 00021C00 */  sll        $v1, $v0, 16
/* 1D4C0 8001C8C0 00031C03 */  sra        $v1, $v1, 16
/* 1D4C4 8001C8C4 1860000A */  blez       $v1, .L8001C8F0
/* 1D4C8 8001C8C8 A7A20038 */   sh        $v0, 0x38($sp)
/* 1D4CC 8001C8CC 3C048000 */  lui        $a0, %hi(pows)
/* 1D4D0 8001C8D0 24841920 */  addiu      $a0, $a0, %lo(pows)
.L8001C8D4:
/* 1D4D4 8001C8D4 30620001 */  andi       $v0, $v1, 0x1
/* 1D4D8 8001C8D8 10400003 */  beqz       $v0, .L8001C8E8
/* 1D4DC 8001C8DC 00031843 */   sra       $v1, $v1, 1
/* 1D4E0 8001C8E0 D4800000 */  ldc1       $f0, 0x0($a0)
/* 1D4E4 8001C8E4 46201082 */  mul.d      $f2, $f2, $f0
.L8001C8E8:
/* 1D4E8 8001C8E8 1C60FFFA */  bgtz       $v1, .L8001C8D4
/* 1D4EC 8001C8EC 24840008 */   addiu     $a0, $a0, 0x8
.L8001C8F0:
/* 1D4F0 8001C8F0 4622A503 */  div.d      $f20, $f20, $f2
.L8001C8F4:
/* 1D4F4 8001C8F4 8E640024 */  lw         $a0, 0x24($s3)
/* 1D4F8 8001C8F8 32A300FF */  andi       $v1, $s5, 0xFF
/* 1D4FC 8001C8FC 24020066 */  addiu      $v0, $zero, 0x66
/* 1D500 8001C900 14620004 */  bne        $v1, $v0, .L8001C914
/* 1D504 8001C904 24920006 */   addiu     $s2, $a0, 0x6
/* 1D508 8001C908 87A30038 */  lh         $v1, 0x38($sp)
/* 1D50C 8001C90C 2482000A */  addiu      $v0, $a0, 0xA
/* 1D510 8001C910 00439021 */  addu       $s2, $v0, $v1
.L8001C914:
/* 1D514 8001C914 2A420014 */  slti       $v0, $s2, 0x14
/* 1D518 8001C918 50400001 */  beql       $v0, $zero, .L8001C920
/* 1D51C 8001C91C 24120013 */   addiu     $s2, $zero, 0x13
.L8001C920:
/* 1D520 8001C920 24020030 */  addiu      $v0, $zero, 0x30
/* 1D524 8001C924 A2220000 */  sb         $v0, 0x0($s1)
/* 1D528 8001C928 26310001 */  addiu      $s1, $s1, 0x1
/* 1D52C 8001C92C 4480C000 */  mtc1       $zero, $f24
/* 1D530 8001C930 4480C800 */  mtc1       $zero, $f25
/* 1D534 8001C934 3C018000 */  lui        $at, %hi(D_80001978)
/* 1D538 8001C938 D4361978 */  ldc1       $f22, %lo(D_80001978)($at)
/* 1D53C 8001C93C 24140030 */  addiu      $s4, $zero, 0x30
.L8001C940:
/* 1D540 8001C940 4634C03C */  c.lt.d     $f24, $f20
/* 1D544 8001C944 24030001 */  addiu      $v1, $zero, 0x1
/* 1D548 8001C948 00000000 */  nop
/* 1D54C 8001C94C 45010002 */  bc1t       .L8001C958
/* 1D550 8001C950 0012102A */   slt       $v0, $zero, $s2
/* 1D554 8001C954 00001821 */  addu       $v1, $zero, $zero
.L8001C958:
/* 1D558 8001C958 00431024 */  and        $v0, $v0, $v1
/* 1D55C 8001C95C 10400021 */  beqz       $v0, .L8001C9E4
/* 1D560 8001C960 2652FFF8 */   addiu     $s2, $s2, -0x8
/* 1D564 8001C964 4620A00D */  trunc.w.d  $f0, $f20
/* 1D568 8001C968 44050000 */  mfc1       $a1, $f0
/* 1D56C 8001C96C 00000000 */  nop
/* 1D570 8001C970 1A400006 */  blez       $s2, .L8001C98C
/* 1D574 8001C974 26310008 */   addiu     $s1, $s1, 0x8
/* 1D578 8001C978 44850000 */  mtc1       $a1, $f0
/* 1D57C 8001C97C 00000000 */  nop
/* 1D580 8001C980 46800021 */  cvt.d.w    $f0, $f0
/* 1D584 8001C984 4620A001 */  sub.d      $f0, $f20, $f0
/* 1D588 8001C988 46360502 */  mul.d      $f20, $f0, $f22
.L8001C98C:
/* 1D58C 8001C98C 18A00010 */  blez       $a1, .L8001C9D0
/* 1D590 8001C990 24100008 */   addiu     $s0, $zero, 0x8
/* 1D594 8001C994 2610FFFF */  addiu      $s0, $s0, -0x1
.L8001C998:
/* 1D598 8001C998 0600000D */  bltz       $s0, .L8001C9D0
/* 1D59C 8001C99C 27A40040 */   addiu     $a0, $sp, 0x40
/* 1D5A0 8001C9A0 0C007158 */  jal        func_8001C560
/* 1D5A4 8001C9A4 2406000A */   addiu     $a2, $zero, 0xA
/* 1D5A8 8001C9A8 8FA20044 */  lw         $v0, 0x44($sp)
/* 1D5AC 8001C9AC 2631FFFF */  addiu      $s1, $s1, -0x1
/* 1D5B0 8001C9B0 24420030 */  addiu      $v0, $v0, 0x30
/* 1D5B4 8001C9B4 A2220000 */  sb         $v0, 0x0($s1)
/* 1D5B8 8001C9B8 8FA50040 */  lw         $a1, 0x40($sp)
/* 1D5BC 8001C9BC 1CA0FFF6 */  bgtz       $a1, .L8001C998
/* 1D5C0 8001C9C0 2610FFFF */   addiu     $s0, $s0, -0x1
/* 1D5C4 8001C9C4 08007275 */  j          .L8001C9D4
/* 1D5C8 8001C9C8 00000000 */   nop
.L8001C9CC:
/* 1D5CC 8001C9CC A2340000 */  sb         $s4, 0x0($s1)
.L8001C9D0:
/* 1D5D0 8001C9D0 2610FFFF */  addiu      $s0, $s0, -0x1
.L8001C9D4:
/* 1D5D4 8001C9D4 0603FFFD */  bgezl      $s0, .L8001C9CC
/* 1D5D8 8001C9D8 2631FFFF */   addiu     $s1, $s1, -0x1
/* 1D5DC 8001C9DC 08007250 */  j          .L8001C940
/* 1D5E0 8001C9E0 26310008 */   addiu     $s1, $s1, 0x8
.L8001C9E4:
/* 1D5E4 8001C9E4 2623FFFF */  addiu      $v1, $s1, -0x1
/* 1D5E8 8001C9E8 27A20018 */  addiu      $v0, $sp, 0x18
/* 1D5EC 8001C9EC 00629023 */  subu       $s2, $v1, $v0
/* 1D5F0 8001C9F0 97A20038 */  lhu        $v0, 0x38($sp)
/* 1D5F4 8001C9F4 93A30019 */  lbu        $v1, 0x19($sp)
/* 1D5F8 8001C9F8 24420007 */  addiu      $v0, $v0, 0x7
/* 1D5FC 8001C9FC A7A20038 */  sh         $v0, 0x38($sp)
/* 1D600 8001CA00 24020030 */  addiu      $v0, $zero, 0x30
/* 1D604 8001CA04 14620009 */  bne        $v1, $v0, .L8001CA2C
/* 1D608 8001CA08 27B10019 */   addiu     $s1, $sp, 0x19
/* 1D60C 8001CA0C 24030030 */  addiu      $v1, $zero, 0x30
.L8001CA10:
/* 1D610 8001CA10 97A20038 */  lhu        $v0, 0x38($sp)
/* 1D614 8001CA14 26310001 */  addiu      $s1, $s1, 0x1
/* 1D618 8001CA18 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1D61C 8001CA1C A7A20038 */  sh         $v0, 0x38($sp)
/* 1D620 8001CA20 92220000 */  lbu        $v0, 0x0($s1)
/* 1D624 8001CA24 1043FFFA */  beq        $v0, $v1, .L8001CA10
/* 1D628 8001CA28 2652FFFF */   addiu     $s2, $s2, -0x1
.L8001CA2C:
/* 1D62C 8001CA2C 8E650024 */  lw         $a1, 0x24($s3)
/* 1D630 8001CA30 32A400FF */  andi       $a0, $s5, 0xFF
/* 1D634 8001CA34 24020066 */  addiu      $v0, $zero, 0x66
/* 1D638 8001CA38 14820005 */  bne        $a0, $v0, .L8001CA50
/* 1D63C 8001CA3C 38830065 */   xori      $v1, $a0, 0x65
/* 1D640 8001CA40 87A30038 */  lh         $v1, 0x38($sp)
/* 1D644 8001CA44 24A20001 */  addiu      $v0, $a1, 0x1
/* 1D648 8001CA48 08007299 */  j          .L8001CA64
/* 1D64C 8001CA4C 00433821 */   addu      $a3, $v0, $v1
.L8001CA50:
/* 1D650 8001CA50 2C630001 */  sltiu      $v1, $v1, 0x1
/* 1D654 8001CA54 38820045 */  xori       $v0, $a0, 0x45
/* 1D658 8001CA58 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1D65C 8001CA5C 00621825 */  or         $v1, $v1, $v0
/* 1D660 8001CA60 00A33821 */  addu       $a3, $a1, $v1
.L8001CA64:
/* 1D664 8001CA64 00071400 */  sll        $v0, $a3, 16
/* 1D668 8001CA68 00021403 */  sra        $v0, $v0, 16
/* 1D66C 8001CA6C 0242102A */  slt        $v0, $s2, $v0
/* 1D670 8001CA70 54400001 */  bnel       $v0, $zero, .L8001CA78
/* 1D674 8001CA74 02403821 */   addu      $a3, $s2, $zero
.L8001CA78:
/* 1D678 8001CA78 00071400 */  sll        $v0, $a3, 16
/* 1D67C 8001CA7C 00022403 */  sra        $a0, $v0, 16
/* 1D680 8001CA80 18800023 */  blez       $a0, .L8001CB10
/* 1D684 8001CA84 0092102A */   slt       $v0, $a0, $s2
/* 1D688 8001CA88 10400008 */  beqz       $v0, .L8001CAAC
/* 1D68C 8001CA8C 24030030 */   addiu     $v1, $zero, 0x30
/* 1D690 8001CA90 02241021 */  addu       $v0, $s1, $a0
/* 1D694 8001CA94 90420000 */  lbu        $v0, 0x0($v0)
/* 1D698 8001CA98 2C420035 */  sltiu      $v0, $v0, 0x35
/* 1D69C 8001CA9C 38420001 */  xori       $v0, $v0, 0x1
/* 1D6A0 8001CAA0 00021023 */  negu       $v0, $v0
/* 1D6A4 8001CAA4 30420039 */  andi       $v0, $v0, 0x39
/* 1D6A8 8001CAA8 34430030 */  ori        $v1, $v0, 0x30
.L8001CAAC:
/* 1D6AC 8001CAAC 2485FFFF */  addiu      $a1, $a0, -0x1
/* 1D6B0 8001CAB0 02252021 */  addu       $a0, $s1, $a1
/* 1D6B4 8001CAB4 90820000 */  lbu        $v0, 0x0($a0)
/* 1D6B8 8001CAB8 306600FF */  andi       $a2, $v1, 0xFF
/* 1D6BC 8001CABC 54460007 */  bnel       $v0, $a2, .L8001CADC
/* 1D6C0 8001CAC0 306300FF */   andi      $v1, $v1, 0xFF
.L8001CAC4:
/* 1D6C4 8001CAC4 2484FFFF */  addiu      $a0, $a0, -0x1
/* 1D6C8 8001CAC8 90820000 */  lbu        $v0, 0x0($a0)
/* 1D6CC 8001CACC 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 1D6D0 8001CAD0 1046FFFC */  beq        $v0, $a2, .L8001CAC4
/* 1D6D4 8001CAD4 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 1D6D8 8001CAD8 306300FF */  andi       $v1, $v1, 0xFF
.L8001CADC:
/* 1D6DC 8001CADC 24020039 */  addiu      $v0, $zero, 0x39
/* 1D6E0 8001CAE0 14620004 */  bne        $v1, $v0, .L8001CAF4
/* 1D6E4 8001CAE4 02251821 */   addu      $v1, $s1, $a1
/* 1D6E8 8001CAE8 90620000 */  lbu        $v0, 0x0($v1)
/* 1D6EC 8001CAEC 24420001 */  addiu      $v0, $v0, 0x1
/* 1D6F0 8001CAF0 A0620000 */  sb         $v0, 0x0($v1)
.L8001CAF4:
/* 1D6F4 8001CAF4 04A10007 */  bgez       $a1, .L8001CB14
/* 1D6F8 8001CAF8 02602021 */   addu      $a0, $s3, $zero
/* 1D6FC 8001CAFC 97A20038 */  lhu        $v0, 0x38($sp)
/* 1D700 8001CB00 2631FFFF */  addiu      $s1, $s1, -0x1
/* 1D704 8001CB04 24E70001 */  addiu      $a3, $a3, 0x1
/* 1D708 8001CB08 24420001 */  addiu      $v0, $v0, 0x1
/* 1D70C 8001CB0C A7A20038 */  sh         $v0, 0x38($sp)
.L8001CB10:
/* 1D710 8001CB10 02602021 */  addu       $a0, $s3, $zero
.L8001CB14:
/* 1D714 8001CB14 87A20038 */  lh         $v0, 0x38($sp)
/* 1D718 8001CB18 32A500FF */  andi       $a1, $s5, 0xFF
/* 1D71C 8001CB1C 02203021 */  addu       $a2, $s1, $zero
/* 1D720 8001CB20 00073C00 */  sll        $a3, $a3, 16
/* 1D724 8001CB24 00073C03 */  sra        $a3, $a3, 16
/* 1D728 8001CB28 0C0072FE */  jal        func_8001CBF8
/* 1D72C 8001CB2C AFA20010 */   sw        $v0, 0x10($sp)
.L8001CB30:
/* 1D730 8001CB30 8FBF0060 */  lw         $ra, 0x60($sp)
/* 1D734 8001CB34 8FB5005C */  lw         $s5, 0x5C($sp)
/* 1D738 8001CB38 8FB40058 */  lw         $s4, 0x58($sp)
/* 1D73C 8001CB3C 8FB30054 */  lw         $s3, 0x54($sp)
/* 1D740 8001CB40 8FB20050 */  lw         $s2, 0x50($sp)
/* 1D744 8001CB44 8FB1004C */  lw         $s1, 0x4C($sp)
/* 1D748 8001CB48 8FB00048 */  lw         $s0, 0x48($sp)
/* 1D74C 8001CB4C D7B80078 */  ldc1       $f24, 0x78($sp)
/* 1D750 8001CB50 D7B60070 */  ldc1       $f22, 0x70($sp)
/* 1D754 8001CB54 D7B40068 */  ldc1       $f20, 0x68($sp)
/* 1D758 8001CB58 03E00008 */  jr         $ra
/* 1D75C 8001CB5C 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_8001CB60
/* 1D760 8001CB60 94A30000 */  lhu        $v1, 0x0($a1)
/* 1D764 8001CB64 30627FF0 */  andi       $v0, $v1, 0x7FF0
/* 1D768 8001CB68 00023902 */  srl        $a3, $v0, 4
/* 1D76C 8001CB6C 00E03021 */  addu       $a2, $a3, $zero
/* 1D770 8001CB70 240207FF */  addiu      $v0, $zero, 0x7FF
/* 1D774 8001CB74 14C20011 */  bne        $a2, $v0, .L8001CBBC
/* 1D778 8001CB78 00A04021 */   addu      $t0, $a1, $zero
/* 1D77C 8001CB7C A4800000 */  sh         $zero, 0x0($a0)
/* 1D780 8001CB80 94A20000 */  lhu        $v0, 0x0($a1)
/* 1D784 8001CB84 3042000F */  andi       $v0, $v0, 0xF
/* 1D788 8001CB88 14400019 */  bnez       $v0, .L8001CBF0
/* 1D78C 8001CB8C 24020002 */   addiu     $v0, $zero, 0x2
/* 1D790 8001CB90 94A20002 */  lhu        $v0, 0x2($a1)
/* 1D794 8001CB94 14400016 */  bnez       $v0, .L8001CBF0
/* 1D798 8001CB98 24020002 */   addiu     $v0, $zero, 0x2
/* 1D79C 8001CB9C 94A20004 */  lhu        $v0, 0x4($a1)
/* 1D7A0 8001CBA0 14400013 */  bnez       $v0, .L8001CBF0
/* 1D7A4 8001CBA4 24020002 */   addiu     $v0, $zero, 0x2
/* 1D7A8 8001CBA8 94A20006 */  lhu        $v0, 0x6($a1)
/* 1D7AC 8001CBAC 14400010 */  bnez       $v0, .L8001CBF0
/* 1D7B0 8001CBB0 24020002 */   addiu     $v0, $zero, 0x2
/* 1D7B4 8001CBB4 080072FC */  j          .L8001CBF0
/* 1D7B8 8001CBB8 24020001 */   addiu     $v0, $zero, 0x1
.L8001CBBC:
/* 1D7BC 8001CBBC 18C00007 */  blez       $a2, .L8001CBDC
/* 1D7C0 8001CBC0 2402FFFF */   addiu     $v0, $zero, -0x1
/* 1D7C4 8001CBC4 3063800F */  andi       $v1, $v1, 0x800F
/* 1D7C8 8001CBC8 34633FF0 */  ori        $v1, $v1, 0x3FF0
/* 1D7CC 8001CBCC A5030000 */  sh         $v1, 0x0($t0)
/* 1D7D0 8001CBD0 24E3FC02 */  addiu      $v1, $a3, -0x3FE
/* 1D7D4 8001CBD4 080072FC */  j          .L8001CBF0
/* 1D7D8 8001CBD8 A4830000 */   sh        $v1, 0x0($a0)
.L8001CBDC:
/* 1D7DC 8001CBDC 04C00003 */  bltz       $a2, .L8001CBEC
/* 1D7E0 8001CBE0 00001021 */   addu      $v0, $zero, $zero
/* 1D7E4 8001CBE4 080072FC */  j          .L8001CBF0
/* 1D7E8 8001CBE8 A4800000 */   sh        $zero, 0x0($a0)
.L8001CBEC:
/* 1D7EC 8001CBEC 24020002 */  addiu      $v0, $zero, 0x2
.L8001CBF0:
/* 1D7F0 8001CBF0 03E00008 */  jr         $ra
/* 1D7F4 8001CBF4 00000000 */   nop

glabel func_8001CBF8
/* 1D7F8 8001CBF8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1D7FC 8001CBFC AFB3001C */  sw         $s3, 0x1C($sp)
/* 1D800 8001CC00 00A09821 */  addu       $s3, $a1, $zero
/* 1D804 8001CC04 8FA50040 */  lw         $a1, 0x40($sp)
/* 1D808 8001CC08 AFB10014 */  sw         $s1, 0x14($sp)
/* 1D80C 8001CC0C 00808821 */  addu       $s1, $a0, $zero
/* 1D810 8001CC10 AFB20018 */  sw         $s2, 0x18($sp)
/* 1D814 8001CC14 00C09021 */  addu       $s2, $a2, $zero
/* 1D818 8001CC18 AFB50024 */  sw         $s5, 0x24($sp)
/* 1D81C 8001CC1C 00E0A821 */  addu       $s5, $a3, $zero
/* 1D820 8001CC20 00073C00 */  sll        $a3, $a3, 16
/* 1D824 8001CC24 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1D828 8001CC28 AFB40020 */  sw         $s4, 0x20($sp)
/* 1D82C 8001CC2C AFB00010 */  sw         $s0, 0x10($sp)
/* 1D830 8001CC30 1CE00004 */  bgtz       $a3, .L8001CC44
/* 1D834 8001CC34 00A0A021 */   addu      $s4, $a1, $zero
/* 1D838 8001CC38 24150001 */  addiu      $s5, $zero, 0x1
/* 1D83C 8001CC3C 3C128000 */  lui        $s2, %hi(D_80001980)
/* 1D840 8001CC40 26521980 */  addiu      $s2, $s2, %lo(D_80001980)
.L8001CC44:
/* 1D844 8001CC44 326400FF */  andi       $a0, $s3, 0xFF
/* 1D848 8001CC48 24060066 */  addiu      $a2, $zero, 0x66
/* 1D84C 8001CC4C 1086000F */  beq        $a0, $a2, .L8001CC8C
/* 1D850 8001CC50 38830067 */   xori      $v1, $a0, 0x67
/* 1D854 8001CC54 2C630001 */  sltiu      $v1, $v1, 0x1
/* 1D858 8001CC58 38820047 */  xori       $v0, $a0, 0x47
/* 1D85C 8001CC5C 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1D860 8001CC60 00621825 */  or         $v1, $v1, $v0
/* 1D864 8001CC64 106000B3 */  beqz       $v1, .L8001CF34
/* 1D868 8001CC68 00051400 */   sll       $v0, $a1, 16
/* 1D86C 8001CC6C 00021C03 */  sra        $v1, $v0, 16
/* 1D870 8001CC70 2862FFFC */  slti       $v0, $v1, -0x4
/* 1D874 8001CC74 1440009B */  bnez       $v0, .L8001CEE4
/* 1D878 8001CC78 326200FF */   andi      $v0, $s3, 0xFF
/* 1D87C 8001CC7C 8E220024 */  lw         $v0, 0x24($s1)
/* 1D880 8001CC80 0062102A */  slt        $v0, $v1, $v0
/* 1D884 8001CC84 10400097 */  beqz       $v0, .L8001CEE4
/* 1D888 8001CC88 326200FF */   andi      $v0, $s3, 0xFF
.L8001CC8C:
/* 1D88C 8001CC8C 10860011 */  beq        $a0, $a2, .L8001CCD4
/* 1D890 8001CC90 24B40001 */   addiu     $s4, $a1, 0x1
/* 1D894 8001CC94 8E220030 */  lw         $v0, 0x30($s1)
/* 1D898 8001CC98 30420008 */  andi       $v0, $v0, 0x8
/* 1D89C 8001CC9C 14400006 */  bnez       $v0, .L8001CCB8
/* 1D8A0 8001CCA0 00151C00 */   sll       $v1, $s5, 16
/* 1D8A4 8001CCA4 8E220024 */  lw         $v0, 0x24($s1)
/* 1D8A8 8001CCA8 00031C03 */  sra        $v1, $v1, 16
/* 1D8AC 8001CCAC 0062102A */  slt        $v0, $v1, $v0
/* 1D8B0 8001CCB0 54400001 */  bnel       $v0, $zero, .L8001CCB8
/* 1D8B4 8001CCB4 AE230024 */   sw        $v1, 0x24($s1)
.L8001CCB8:
/* 1D8B8 8001CCB8 8E230024 */  lw         $v1, 0x24($s1)
/* 1D8BC 8001CCBC 00141400 */  sll        $v0, $s4, 16
/* 1D8C0 8001CCC0 00021403 */  sra        $v0, $v0, 16
/* 1D8C4 8001CCC4 00621823 */  subu       $v1, $v1, $v0
/* 1D8C8 8001CCC8 04610002 */  bgez       $v1, .L8001CCD4
/* 1D8CC 8001CCCC AE230024 */   sw        $v1, 0x24($s1)
/* 1D8D0 8001CCD0 AE200024 */  sw         $zero, 0x24($s1)
.L8001CCD4:
/* 1D8D4 8001CCD4 00141400 */  sll        $v0, $s4, 16
/* 1D8D8 8001CCD8 00029C03 */  sra        $s3, $v0, 16
/* 1D8DC 8001CCDC 1E600036 */  bgtz       $s3, .L8001CDB8
/* 1D8E0 8001CCE0 00151400 */   sll       $v0, $s5, 16
/* 1D8E4 8001CCE4 8E240014 */  lw         $a0, 0x14($s1)
/* 1D8E8 8001CCE8 8E230008 */  lw         $v1, 0x8($s1)
/* 1D8EC 8001CCEC 24820001 */  addiu      $v0, $a0, 0x1
/* 1D8F0 8001CCF0 00641821 */  addu       $v1, $v1, $a0
/* 1D8F4 8001CCF4 AE220014 */  sw         $v0, 0x14($s1)
/* 1D8F8 8001CCF8 24020030 */  addiu      $v0, $zero, 0x30
/* 1D8FC 8001CCFC A0620000 */  sb         $v0, 0x0($v1)
/* 1D900 8001CD00 8E220024 */  lw         $v0, 0x24($s1)
/* 1D904 8001CD04 1C400005 */  bgtz       $v0, .L8001CD1C
/* 1D908 8001CD08 00000000 */   nop
/* 1D90C 8001CD0C 8E220030 */  lw         $v0, 0x30($s1)
/* 1D910 8001CD10 30420008 */  andi       $v0, $v0, 0x8
/* 1D914 8001CD14 10400009 */  beqz       $v0, .L8001CD3C
/* 1D918 8001CD18 00141400 */   sll       $v0, $s4, 16
.L8001CD1C:
/* 1D91C 8001CD1C 8E240014 */  lw         $a0, 0x14($s1)
/* 1D920 8001CD20 8E230008 */  lw         $v1, 0x8($s1)
/* 1D924 8001CD24 24820001 */  addiu      $v0, $a0, 0x1
/* 1D928 8001CD28 00641821 */  addu       $v1, $v1, $a0
/* 1D92C 8001CD2C AE220014 */  sw         $v0, 0x14($s1)
/* 1D930 8001CD30 2402002E */  addiu      $v0, $zero, 0x2E
/* 1D934 8001CD34 A0620000 */  sb         $v0, 0x0($v1)
/* 1D938 8001CD38 00141400 */  sll        $v0, $s4, 16
.L8001CD3C:
/* 1D93C 8001CD3C 8E230024 */  lw         $v1, 0x24($s1)
/* 1D940 8001CD40 00021403 */  sra        $v0, $v0, 16
/* 1D944 8001CD44 00021023 */  negu       $v0, $v0
/* 1D948 8001CD48 0062102A */  slt        $v0, $v1, $v0
/* 1D94C 8001CD4C 54400001 */  bnel       $v0, $zero, .L8001CD54
/* 1D950 8001CD50 0003A023 */   negu      $s4, $v1
.L8001CD54:
/* 1D954 8001CD54 00141400 */  sll        $v0, $s4, 16
/* 1D958 8001CD58 8E240024 */  lw         $a0, 0x24($s1)
/* 1D95C 8001CD5C 00021403 */  sra        $v0, $v0, 16
/* 1D960 8001CD60 00021823 */  negu       $v1, $v0
/* 1D964 8001CD64 AE230018 */  sw         $v1, 0x18($s1)
/* 1D968 8001CD68 00822021 */  addu       $a0, $a0, $v0
/* 1D96C 8001CD6C 00151400 */  sll        $v0, $s5, 16
/* 1D970 8001CD70 00021403 */  sra        $v0, $v0, 16
/* 1D974 8001CD74 0082102A */  slt        $v0, $a0, $v0
/* 1D978 8001CD78 10400002 */  beqz       $v0, .L8001CD84
/* 1D97C 8001CD7C AE240024 */   sw        $a0, 0x24($s1)
/* 1D980 8001CD80 0080A821 */  addu       $s5, $a0, $zero
.L8001CD84:
/* 1D984 8001CD84 02402821 */  addu       $a1, $s2, $zero
/* 1D988 8001CD88 8E220008 */  lw         $v0, 0x8($s1)
/* 1D98C 8001CD8C 8E240014 */  lw         $a0, 0x14($s1)
/* 1D990 8001CD90 00158400 */  sll        $s0, $s5, 16
/* 1D994 8001CD94 00108403 */  sra        $s0, $s0, 16
/* 1D998 8001CD98 02003021 */  addu       $a2, $s0, $zero
/* 1D99C 8001CD9C AE30001C */  sw         $s0, 0x1C($s1)
/* 1D9A0 8001CDA0 0C006E07 */  jal        strncpy
/* 1D9A4 8001CDA4 00442021 */   addu      $a0, $v0, $a0
/* 1D9A8 8001CDA8 8E220024 */  lw         $v0, 0x24($s1)
/* 1D9AC 8001CDAC 00501023 */  subu       $v0, $v0, $s0
/* 1D9B0 8001CDB0 0800744A */  j          .L8001D128
/* 1D9B4 8001CDB4 AE220020 */   sw        $v0, 0x20($s1)
.L8001CDB8:
/* 1D9B8 8001CDB8 00028403 */  sra        $s0, $v0, 16
/* 1D9BC 8001CDBC 0213102A */  slt        $v0, $s0, $s3
/* 1D9C0 8001CDC0 1040001C */  beqz       $v0, .L8001CE34
/* 1D9C4 8001CDC4 02402821 */   addu      $a1, $s2, $zero
/* 1D9C8 8001CDC8 8E220008 */  lw         $v0, 0x8($s1)
/* 1D9CC 8001CDCC 8E240014 */  lw         $a0, 0x14($s1)
/* 1D9D0 8001CDD0 02003021 */  addu       $a2, $s0, $zero
/* 1D9D4 8001CDD4 0C006E07 */  jal        strncpy
/* 1D9D8 8001CDD8 00442021 */   addu      $a0, $v0, $a0
/* 1D9DC 8001CDDC 8E230014 */  lw         $v1, 0x14($s1)
/* 1D9E0 8001CDE0 8E240024 */  lw         $a0, 0x24($s1)
/* 1D9E4 8001CDE4 02701023 */  subu       $v0, $s3, $s0
/* 1D9E8 8001CDE8 AE220018 */  sw         $v0, 0x18($s1)
/* 1D9EC 8001CDEC 00701821 */  addu       $v1, $v1, $s0
/* 1D9F0 8001CDF0 1C800005 */  bgtz       $a0, .L8001CE08
/* 1D9F4 8001CDF4 AE230014 */   sw        $v1, 0x14($s1)
/* 1D9F8 8001CDF8 8E220030 */  lw         $v0, 0x30($s1)
/* 1D9FC 8001CDFC 30420008 */  andi       $v0, $v0, 0x8
/* 1DA00 8001CE00 10400009 */  beqz       $v0, .L8001CE28
/* 1DA04 8001CE04 00000000 */   nop
.L8001CE08:
/* 1DA08 8001CE08 8E220008 */  lw         $v0, 0x8($s1)
/* 1DA0C 8001CE0C 8E230014 */  lw         $v1, 0x14($s1)
/* 1DA10 8001CE10 00431021 */  addu       $v0, $v0, $v1
/* 1DA14 8001CE14 2403002E */  addiu      $v1, $zero, 0x2E
/* 1DA18 8001CE18 A0430000 */  sb         $v1, 0x0($v0)
/* 1DA1C 8001CE1C 8E22001C */  lw         $v0, 0x1C($s1)
/* 1DA20 8001CE20 24420001 */  addiu      $v0, $v0, 0x1
/* 1DA24 8001CE24 AE22001C */  sw         $v0, 0x1C($s1)
.L8001CE28:
/* 1DA28 8001CE28 8E220024 */  lw         $v0, 0x24($s1)
/* 1DA2C 8001CE2C 0800744A */  j          .L8001D128
/* 1DA30 8001CE30 AE220020 */   sw        $v0, 0x20($s1)
.L8001CE34:
/* 1DA34 8001CE34 8E220008 */  lw         $v0, 0x8($s1)
/* 1DA38 8001CE38 8E240014 */  lw         $a0, 0x14($s1)
/* 1DA3C 8001CE3C 02603021 */  addu       $a2, $s3, $zero
/* 1DA40 8001CE40 0C006E07 */  jal        strncpy
/* 1DA44 8001CE44 00442021 */   addu      $a0, $v0, $a0
/* 1DA48 8001CE48 8E220014 */  lw         $v0, 0x14($s1)
/* 1DA4C 8001CE4C 8E230024 */  lw         $v1, 0x24($s1)
/* 1DA50 8001CE50 02B4A823 */  subu       $s5, $s5, $s4
/* 1DA54 8001CE54 00533021 */  addu       $a2, $v0, $s3
/* 1DA58 8001CE58 1C600005 */  bgtz       $v1, .L8001CE70
/* 1DA5C 8001CE5C AE260014 */   sw        $a2, 0x14($s1)
/* 1DA60 8001CE60 8E220030 */  lw         $v0, 0x30($s1)
/* 1DA64 8001CE64 30420008 */  andi       $v0, $v0, 0x8
/* 1DA68 8001CE68 10400007 */  beqz       $v0, .L8001CE88
/* 1DA6C 8001CE6C 00000000 */   nop
.L8001CE70:
/* 1DA70 8001CE70 8E220008 */  lw         $v0, 0x8($s1)
/* 1DA74 8001CE74 24C30001 */  addiu      $v1, $a2, 0x1
/* 1DA78 8001CE78 AE230014 */  sw         $v1, 0x14($s1)
/* 1DA7C 8001CE7C 2403002E */  addiu      $v1, $zero, 0x2E
/* 1DA80 8001CE80 00461021 */  addu       $v0, $v0, $a2
/* 1DA84 8001CE84 A0430000 */  sb         $v1, 0x0($v0)
.L8001CE88:
/* 1DA88 8001CE88 8E230024 */  lw         $v1, 0x24($s1)
/* 1DA8C 8001CE8C 00151400 */  sll        $v0, $s5, 16
/* 1DA90 8001CE90 00021403 */  sra        $v0, $v0, 16
/* 1DA94 8001CE94 0062102A */  slt        $v0, $v1, $v0
/* 1DA98 8001CE98 54400001 */  bnel       $v0, $zero, .L8001CEA0
/* 1DA9C 8001CE9C 0060A821 */   addu      $s5, $v1, $zero
.L8001CEA0:
/* 1DAA0 8001CEA0 00142C00 */  sll        $a1, $s4, 16
/* 1DAA4 8001CEA4 00052C03 */  sra        $a1, $a1, 16
/* 1DAA8 8001CEA8 02452821 */  addu       $a1, $s2, $a1
/* 1DAAC 8001CEAC 8E220008 */  lw         $v0, 0x8($s1)
/* 1DAB0 8001CEB0 8E240014 */  lw         $a0, 0x14($s1)
/* 1DAB4 8001CEB4 00158400 */  sll        $s0, $s5, 16
/* 1DAB8 8001CEB8 00108403 */  sra        $s0, $s0, 16
/* 1DABC 8001CEBC 02003021 */  addu       $a2, $s0, $zero
/* 1DAC0 8001CEC0 0C006E07 */  jal        strncpy
/* 1DAC4 8001CEC4 00442021 */   addu      $a0, $v0, $a0
/* 1DAC8 8001CEC8 8E220014 */  lw         $v0, 0x14($s1)
/* 1DACC 8001CECC 8E230024 */  lw         $v1, 0x24($s1)
/* 1DAD0 8001CED0 00501021 */  addu       $v0, $v0, $s0
/* 1DAD4 8001CED4 00701823 */  subu       $v1, $v1, $s0
/* 1DAD8 8001CED8 AE220014 */  sw         $v0, 0x14($s1)
/* 1DADC 8001CEDC 0800744A */  j          .L8001D128
/* 1DAE0 8001CEE0 AE230018 */   sw        $v1, 0x18($s1)
.L8001CEE4:
/* 1DAE4 8001CEE4 38430067 */  xori       $v1, $v0, 0x67
/* 1DAE8 8001CEE8 2C640001 */  sltiu      $a0, $v1, 0x1
/* 1DAEC 8001CEEC 38420047 */  xori       $v0, $v0, 0x47
/* 1DAF0 8001CEF0 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1DAF4 8001CEF4 00821025 */  or         $v0, $a0, $v0
/* 1DAF8 8001CEF8 1040000E */  beqz       $v0, .L8001CF34
/* 1DAFC 8001CEFC 00151C00 */   sll       $v1, $s5, 16
/* 1DB00 8001CF00 8E220024 */  lw         $v0, 0x24($s1)
/* 1DB04 8001CF04 00031C03 */  sra        $v1, $v1, 16
/* 1DB08 8001CF08 0062102A */  slt        $v0, $v1, $v0
/* 1DB0C 8001CF0C 54400001 */  bnel       $v0, $zero, .L8001CF14
/* 1DB10 8001CF10 AE230024 */   sw        $v1, 0x24($s1)
.L8001CF14:
/* 1DB14 8001CF14 8E220024 */  lw         $v0, 0x24($s1)
/* 1DB18 8001CF18 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1DB1C 8001CF1C 04410002 */  bgez       $v0, .L8001CF28
/* 1DB20 8001CF20 AE220024 */   sw        $v0, 0x24($s1)
/* 1DB24 8001CF24 AE200024 */  sw         $zero, 0x24($s1)
.L8001CF28:
/* 1DB28 8001CF28 00041023 */  negu       $v0, $a0
/* 1DB2C 8001CF2C 30420065 */  andi       $v0, $v0, 0x65
/* 1DB30 8001CF30 34530045 */  ori        $s3, $v0, 0x45
.L8001CF34:
/* 1DB34 8001CF34 8E240014 */  lw         $a0, 0x14($s1)
/* 1DB38 8001CF38 24820001 */  addiu      $v0, $a0, 0x1
/* 1DB3C 8001CF3C AE220014 */  sw         $v0, 0x14($s1)
/* 1DB40 8001CF40 8E220008 */  lw         $v0, 0x8($s1)
/* 1DB44 8001CF44 92430000 */  lbu        $v1, 0x0($s2)
/* 1DB48 8001CF48 00441021 */  addu       $v0, $v0, $a0
/* 1DB4C 8001CF4C A0430000 */  sb         $v1, 0x0($v0)
/* 1DB50 8001CF50 8E220024 */  lw         $v0, 0x24($s1)
/* 1DB54 8001CF54 1C400005 */  bgtz       $v0, .L8001CF6C
/* 1DB58 8001CF58 26520001 */   addiu     $s2, $s2, 0x1
/* 1DB5C 8001CF5C 8E220030 */  lw         $v0, 0x30($s1)
/* 1DB60 8001CF60 30420008 */  andi       $v0, $v0, 0x8
/* 1DB64 8001CF64 10400008 */  beqz       $v0, .L8001CF88
/* 1DB68 8001CF68 00000000 */   nop
.L8001CF6C:
/* 1DB6C 8001CF6C 8E240014 */  lw         $a0, 0x14($s1)
/* 1DB70 8001CF70 8E230008 */  lw         $v1, 0x8($s1)
/* 1DB74 8001CF74 24820001 */  addiu      $v0, $a0, 0x1
/* 1DB78 8001CF78 00641821 */  addu       $v1, $v1, $a0
/* 1DB7C 8001CF7C AE220014 */  sw         $v0, 0x14($s1)
/* 1DB80 8001CF80 2402002E */  addiu      $v0, $zero, 0x2E
/* 1DB84 8001CF84 A0620000 */  sb         $v0, 0x0($v1)
.L8001CF88:
/* 1DB88 8001CF88 8E230024 */  lw         $v1, 0x24($s1)
/* 1DB8C 8001CF8C 18600015 */  blez       $v1, .L8001CFE4
/* 1DB90 8001CF90 26A2FFFF */   addiu     $v0, $s5, -0x1
/* 1DB94 8001CF94 0040A821 */  addu       $s5, $v0, $zero
/* 1DB98 8001CF98 00021400 */  sll        $v0, $v0, 16
/* 1DB9C 8001CF9C 00021403 */  sra        $v0, $v0, 16
/* 1DBA0 8001CFA0 0062102A */  slt        $v0, $v1, $v0
/* 1DBA4 8001CFA4 54400001 */  bnel       $v0, $zero, .L8001CFAC
/* 1DBA8 8001CFA8 0060A821 */   addu      $s5, $v1, $zero
.L8001CFAC:
/* 1DBAC 8001CFAC 02402821 */  addu       $a1, $s2, $zero
/* 1DBB0 8001CFB0 8E220008 */  lw         $v0, 0x8($s1)
/* 1DBB4 8001CFB4 8E240014 */  lw         $a0, 0x14($s1)
/* 1DBB8 8001CFB8 00158400 */  sll        $s0, $s5, 16
/* 1DBBC 8001CFBC 00108403 */  sra        $s0, $s0, 16
/* 1DBC0 8001CFC0 02003021 */  addu       $a2, $s0, $zero
/* 1DBC4 8001CFC4 0C006E07 */  jal        strncpy
/* 1DBC8 8001CFC8 00442021 */   addu      $a0, $v0, $a0
/* 1DBCC 8001CFCC 8E220014 */  lw         $v0, 0x14($s1)
/* 1DBD0 8001CFD0 8E230024 */  lw         $v1, 0x24($s1)
/* 1DBD4 8001CFD4 00501021 */  addu       $v0, $v0, $s0
/* 1DBD8 8001CFD8 00701823 */  subu       $v1, $v1, $s0
/* 1DBDC 8001CFDC AE220014 */  sw         $v0, 0x14($s1)
/* 1DBE0 8001CFE0 AE230018 */  sw         $v1, 0x18($s1)
.L8001CFE4:
/* 1DBE4 8001CFE4 8E220008 */  lw         $v0, 0x8($s1)
/* 1DBE8 8001CFE8 8E230014 */  lw         $v1, 0x14($s1)
/* 1DBEC 8001CFEC 00439021 */  addu       $s2, $v0, $v1
/* 1DBF0 8001CFF0 A2530000 */  sb         $s3, 0x0($s2)
/* 1DBF4 8001CFF4 00141400 */  sll        $v0, $s4, 16
/* 1DBF8 8001CFF8 04400005 */  bltz       $v0, .L8001D010
/* 1DBFC 8001CFFC 26520001 */   addiu     $s2, $s2, 0x1
/* 1DC00 8001D000 2402002B */  addiu      $v0, $zero, 0x2B
/* 1DC04 8001D004 A2420000 */  sb         $v0, 0x0($s2)
/* 1DC08 8001D008 08007408 */  j          .L8001D020
/* 1DC0C 8001D00C 26520001 */   addiu     $s2, $s2, 0x1
.L8001D010:
/* 1DC10 8001D010 2402002D */  addiu      $v0, $zero, 0x2D
/* 1DC14 8001D014 A2420000 */  sb         $v0, 0x0($s2)
/* 1DC18 8001D018 26520001 */  addiu      $s2, $s2, 0x1
/* 1DC1C 8001D01C 0014A023 */  negu       $s4, $s4
.L8001D020:
/* 1DC20 8001D020 00142C00 */  sll        $a1, $s4, 16
/* 1DC24 8001D024 00052403 */  sra        $a0, $a1, 16
/* 1DC28 8001D028 28820064 */  slti       $v0, $a0, 0x64
/* 1DC2C 8001D02C 14400027 */  bnez       $v0, .L8001D0CC
/* 1DC30 8001D030 3C036666 */   lui       $v1, (0x66666667 >> 16)
/* 1DC34 8001D034 288203E8 */  slti       $v0, $a0, 0x3E8
/* 1DC38 8001D038 14400012 */  bnez       $v0, .L8001D084
/* 1DC3C 8001D03C 3C0351EB */   lui       $v1, (0x51EB851F >> 16)
/* 1DC40 8001D040 3C021062 */  lui        $v0, (0x10624DD3 >> 16)
/* 1DC44 8001D044 34424DD3 */  ori        $v0, $v0, (0x10624DD3 & 0xFFFF)
/* 1DC48 8001D048 00820018 */  mult       $a0, $v0
/* 1DC4C 8001D04C 000517C3 */  sra        $v0, $a1, 31
/* 1DC50 8001D050 00004010 */  mfhi       $t0
/* 1DC54 8001D054 00081983 */  sra        $v1, $t0, 6
/* 1DC58 8001D058 00621823 */  subu       $v1, $v1, $v0
/* 1DC5C 8001D05C 24620030 */  addiu      $v0, $v1, 0x30
/* 1DC60 8001D060 A2420000 */  sb         $v0, 0x0($s2)
/* 1DC64 8001D064 26520001 */  addiu      $s2, $s2, 0x1
/* 1DC68 8001D068 00031140 */  sll        $v0, $v1, 5
/* 1DC6C 8001D06C 00431023 */  subu       $v0, $v0, $v1
/* 1DC70 8001D070 00021080 */  sll        $v0, $v0, 2
/* 1DC74 8001D074 00431021 */  addu       $v0, $v0, $v1
/* 1DC78 8001D078 000210C0 */  sll        $v0, $v0, 3
/* 1DC7C 8001D07C 0082A023 */  subu       $s4, $a0, $v0
/* 1DC80 8001D080 3C0351EB */  lui        $v1, (0x51EB851F >> 16)
.L8001D084:
/* 1DC84 8001D084 3463851F */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
/* 1DC88 8001D088 00141400 */  sll        $v0, $s4, 16
/* 1DC8C 8001D08C 00022403 */  sra        $a0, $v0, 16
/* 1DC90 8001D090 00830018 */  mult       $a0, $v1
/* 1DC94 8001D094 000217C3 */  sra        $v0, $v0, 31
/* 1DC98 8001D098 00004010 */  mfhi       $t0
/* 1DC9C 8001D09C 00081943 */  sra        $v1, $t0, 5
/* 1DCA0 8001D0A0 00621823 */  subu       $v1, $v1, $v0
/* 1DCA4 8001D0A4 24620030 */  addiu      $v0, $v1, 0x30
/* 1DCA8 8001D0A8 A2420000 */  sb         $v0, 0x0($s2)
/* 1DCAC 8001D0AC 26520001 */  addiu      $s2, $s2, 0x1
/* 1DCB0 8001D0B0 00031040 */  sll        $v0, $v1, 1
/* 1DCB4 8001D0B4 00431021 */  addu       $v0, $v0, $v1
/* 1DCB8 8001D0B8 000210C0 */  sll        $v0, $v0, 3
/* 1DCBC 8001D0BC 00431021 */  addu       $v0, $v0, $v1
/* 1DCC0 8001D0C0 00021080 */  sll        $v0, $v0, 2
/* 1DCC4 8001D0C4 0082A023 */  subu       $s4, $a0, $v0
/* 1DCC8 8001D0C8 3C036666 */  lui        $v1, (0x66666667 >> 16)
.L8001D0CC:
/* 1DCCC 8001D0CC 34636667 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 1DCD0 8001D0D0 00141400 */  sll        $v0, $s4, 16
/* 1DCD4 8001D0D4 00022403 */  sra        $a0, $v0, 16
/* 1DCD8 8001D0D8 00830018 */  mult       $a0, $v1
/* 1DCDC 8001D0DC 000217C3 */  sra        $v0, $v0, 31
/* 1DCE0 8001D0E0 00004010 */  mfhi       $t0
/* 1DCE4 8001D0E4 00081883 */  sra        $v1, $t0, 2
/* 1DCE8 8001D0E8 00621823 */  subu       $v1, $v1, $v0
/* 1DCEC 8001D0EC 24620030 */  addiu      $v0, $v1, 0x30
/* 1DCF0 8001D0F0 A2420000 */  sb         $v0, 0x0($s2)
/* 1DCF4 8001D0F4 26520001 */  addiu      $s2, $s2, 0x1
/* 1DCF8 8001D0F8 00031080 */  sll        $v0, $v1, 2
/* 1DCFC 8001D0FC 00431021 */  addu       $v0, $v0, $v1
/* 1DD00 8001D100 00021040 */  sll        $v0, $v0, 1
/* 1DD04 8001D104 00822023 */  subu       $a0, $a0, $v0
/* 1DD08 8001D108 24840030 */  addiu      $a0, $a0, 0x30
/* 1DD0C 8001D10C A2440000 */  sb         $a0, 0x0($s2)
/* 1DD10 8001D110 8E220008 */  lw         $v0, 0x8($s1)
/* 1DD14 8001D114 8E230014 */  lw         $v1, 0x14($s1)
/* 1DD18 8001D118 26520001 */  addiu      $s2, $s2, 0x1
/* 1DD1C 8001D11C 00431021 */  addu       $v0, $v0, $v1
/* 1DD20 8001D120 02421023 */  subu       $v0, $s2, $v0
/* 1DD24 8001D124 AE22001C */  sw         $v0, 0x1C($s1)
.L8001D128:
/* 1DD28 8001D128 8E220030 */  lw         $v0, 0x30($s1)
/* 1DD2C 8001D12C 24030010 */  addiu      $v1, $zero, 0x10
/* 1DD30 8001D130 30420014 */  andi       $v0, $v0, 0x14
/* 1DD34 8001D134 1443000F */  bne        $v0, $v1, .L8001D174
/* 1DD38 8001D138 00000000 */   nop
/* 1DD3C 8001D13C 8E22000C */  lw         $v0, 0xC($s1)
/* 1DD40 8001D140 8E230014 */  lw         $v1, 0x14($s1)
/* 1DD44 8001D144 8E240018 */  lw         $a0, 0x18($s1)
/* 1DD48 8001D148 00431021 */  addu       $v0, $v0, $v1
/* 1DD4C 8001D14C 00441021 */  addu       $v0, $v0, $a0
/* 1DD50 8001D150 8E23001C */  lw         $v1, 0x1C($s1)
/* 1DD54 8001D154 8E240020 */  lw         $a0, 0x20($s1)
/* 1DD58 8001D158 8E250028 */  lw         $a1, 0x28($s1)
/* 1DD5C 8001D15C 00431021 */  addu       $v0, $v0, $v1
/* 1DD60 8001D160 00441821 */  addu       $v1, $v0, $a0
/* 1DD64 8001D164 0065102A */  slt        $v0, $v1, $a1
/* 1DD68 8001D168 10400002 */  beqz       $v0, .L8001D174
/* 1DD6C 8001D16C 00A31023 */   subu      $v0, $a1, $v1
/* 1DD70 8001D170 AE220010 */  sw         $v0, 0x10($s1)
.L8001D174:
/* 1DD74 8001D174 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1DD78 8001D178 8FB50024 */  lw         $s5, 0x24($sp)
/* 1DD7C 8001D17C 8FB40020 */  lw         $s4, 0x20($sp)
/* 1DD80 8001D180 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1DD84 8001D184 8FB20018 */  lw         $s2, 0x18($sp)
/* 1DD88 8001D188 8FB10014 */  lw         $s1, 0x14($sp)
/* 1DD8C 8001D18C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1DD90 8001D190 03E00008 */  jr         $ra
/* 1DD94 8001D194 27BD0030 */   addiu     $sp, $sp, 0x30
/* 1DD98 8001D198 00000000 */  nop
/* 1DD9C 8001D19C 00000000 */  nop
