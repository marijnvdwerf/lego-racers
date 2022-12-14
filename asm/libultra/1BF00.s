.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.8.2 */

glabel func_8001B300
/* 1BF00 8001B300 00A04021 */  addu       $t0, $a1, $zero
/* 1BF04 8001B304 25090020 */  addiu      $t1, $t0, 0x20
/* 1BF08 8001B308 00005821 */  addu       $t3, $zero, $zero
/* 1BF0C 8001B30C 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 1BF10 8001B310 44813000 */  mtc1       $at, $f6
/* 1BF14 8001B314 3C0CFFFF */  lui        $t4, (0xFFFF0000 >> 16)
/* 1BF18 8001B318 00805021 */  addu       $t2, $a0, $zero
.L8001B31C:
/* 1BF1C 8001B31C 00003821 */  addu       $a3, $zero, $zero
/* 1BF20 8001B320 01403021 */  addu       $a2, $t2, $zero
.L8001B324:
/* 1BF24 8001B324 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 1BF28 8001B328 46061082 */  mul.s      $f2, $f2, $f6
/* 1BF2C 8001B32C C4C00004 */  lwc1       $f0, 0x4($a2)
/* 1BF30 8001B330 46060002 */  mul.s      $f0, $f0, $f6
/* 1BF34 8001B334 24C60008 */  addiu      $a2, $a2, 0x8
/* 1BF38 8001B338 24E70001 */  addiu      $a3, $a3, 0x1
/* 1BF3C 8001B33C 4600110D */  trunc.w.s  $f4, $f2
/* 1BF40 8001B340 44042000 */  mfc1       $a0, $f4
/* 1BF44 8001B344 4600008D */  trunc.w.s  $f2, $f0
/* 1BF48 8001B348 44051000 */  mfc1       $a1, $f2
/* 1BF4C 8001B34C 008C1024 */  and        $v0, $a0, $t4
/* 1BF50 8001B350 00051C02 */  srl        $v1, $a1, 16
/* 1BF54 8001B354 00431025 */  or         $v0, $v0, $v1
/* 1BF58 8001B358 AD020000 */  sw         $v0, 0x0($t0)
/* 1BF5C 8001B35C 25080004 */  addiu      $t0, $t0, 0x4
/* 1BF60 8001B360 00042400 */  sll        $a0, $a0, 16
/* 1BF64 8001B364 008C2024 */  and        $a0, $a0, $t4
/* 1BF68 8001B368 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 1BF6C 8001B36C 00852025 */  or         $a0, $a0, $a1
/* 1BF70 8001B370 AD240000 */  sw         $a0, 0x0($t1)
/* 1BF74 8001B374 28E20002 */  slti       $v0, $a3, 0x2
/* 1BF78 8001B378 1440FFEA */  bnez       $v0, .L8001B324
/* 1BF7C 8001B37C 25290004 */   addiu     $t1, $t1, 0x4
/* 1BF80 8001B380 256B0001 */  addiu      $t3, $t3, 0x1
/* 1BF84 8001B384 29620004 */  slti       $v0, $t3, 0x4
/* 1BF88 8001B388 1440FFE4 */  bnez       $v0, .L8001B31C
/* 1BF8C 8001B38C 254A0010 */   addiu     $t2, $t2, 0x10
/* 1BF90 8001B390 03E00008 */  jr         $ra
/* 1BF94 8001B394 00000000 */   nop

glabel func_8001B398
/* 1BF98 8001B398 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 1BF9C 8001B39C 24A80020 */  addiu      $t0, $a1, 0x20
/* 1BFA0 8001B3A0 00004821 */  addu       $t1, $zero, $zero
/* 1BFA4 8001B3A4 3C0AFFFF */  lui        $t2, (0xFFFF0000 >> 16)
/* 1BFA8 8001B3A8 3C013780 */  lui        $at, (0x37800000 >> 16)
/* 1BFAC 8001B3AC 44812000 */  mtc1       $at, $f4
.L8001B3B0:
/* 1BFB0 8001B3B0 00003821 */  addu       $a3, $zero, $zero
/* 1BFB4 8001B3B4 00803021 */  addu       $a2, $a0, $zero
.L8001B3B8:
/* 1BFB8 8001B3B8 8CA20000 */  lw         $v0, 0x0($a1)
/* 1BFBC 8001B3BC 95030000 */  lhu        $v1, 0x0($t0)
/* 1BFC0 8001B3C0 004A1024 */  and        $v0, $v0, $t2
/* 1BFC4 8001B3C4 00431025 */  or         $v0, $v0, $v1
/* 1BFC8 8001B3C8 AFA20000 */  sw         $v0, 0x0($sp)
/* 1BFCC 8001B3CC 8CA30000 */  lw         $v1, 0x0($a1)
/* 1BFD0 8001B3D0 44821000 */  mtc1       $v0, $f2
/* 1BFD4 8001B3D4 00000000 */  nop
/* 1BFD8 8001B3D8 468010A0 */  cvt.s.w    $f2, $f2
/* 1BFDC 8001B3DC 46041082 */  mul.s      $f2, $f2, $f4
/* 1BFE0 8001B3E0 95020002 */  lhu        $v0, 0x2($t0)
/* 1BFE4 8001B3E4 00031C00 */  sll        $v1, $v1, 16
/* 1BFE8 8001B3E8 006A1824 */  and        $v1, $v1, $t2
/* 1BFEC 8001B3EC 00621825 */  or         $v1, $v1, $v0
/* 1BFF0 8001B3F0 44830000 */  mtc1       $v1, $f0
/* 1BFF4 8001B3F4 00000000 */  nop
/* 1BFF8 8001B3F8 46800020 */  cvt.s.w    $f0, $f0
/* 1BFFC 8001B3FC 46040002 */  mul.s      $f0, $f0, $f4
/* 1C000 8001B400 24E70001 */  addiu      $a3, $a3, 0x1
/* 1C004 8001B404 25080004 */  addiu      $t0, $t0, 0x4
/* 1C008 8001B408 24A50004 */  addiu      $a1, $a1, 0x4
/* 1C00C 8001B40C 28E20002 */  slti       $v0, $a3, 0x2
/* 1C010 8001B410 AFA30004 */  sw         $v1, 0x4($sp)
/* 1C014 8001B414 E4C20000 */  swc1       $f2, 0x0($a2)
/* 1C018 8001B418 E4C00004 */  swc1       $f0, 0x4($a2)
/* 1C01C 8001B41C 1440FFE6 */  bnez       $v0, .L8001B3B8
/* 1C020 8001B420 24C60008 */   addiu     $a2, $a2, 0x8
/* 1C024 8001B424 25290001 */  addiu      $t1, $t1, 0x1
/* 1C028 8001B428 29220004 */  slti       $v0, $t1, 0x4
/* 1C02C 8001B42C 1440FFE0 */  bnez       $v0, .L8001B3B0
/* 1C030 8001B430 24840010 */   addiu     $a0, $a0, 0x10
/* 1C034 8001B434 27BD0008 */  addiu      $sp, $sp, 0x8
/* 1C038 8001B438 03E00008 */  jr         $ra
/* 1C03C 8001B43C 00000000 */   nop

glabel func_8001B440
/* 1C040 8001B440 00003021 */  addu       $a2, $zero, $zero
/* 1C044 8001B444 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1C048 8001B448 44810000 */  mtc1       $at, $f0
/* 1C04C 8001B44C 00803821 */  addu       $a3, $a0, $zero
.L8001B450:
/* 1C050 8001B450 00001821 */  addu       $v1, $zero, $zero
/* 1C054 8001B454 00802821 */  addu       $a1, $a0, $zero
.L8001B458:
/* 1C058 8001B458 54C30002 */  bnel       $a2, $v1, .L8001B464
/* 1C05C 8001B45C ACA00000 */   sw        $zero, 0x0($a1)
/* 1C060 8001B460 E4E00000 */  swc1       $f0, 0x0($a3)
.L8001B464:
/* 1C064 8001B464 24630001 */  addiu      $v1, $v1, 0x1
/* 1C068 8001B468 28620004 */  slti       $v0, $v1, 0x4
/* 1C06C 8001B46C 1440FFFA */  bnez       $v0, .L8001B458
/* 1C070 8001B470 24A50004 */   addiu     $a1, $a1, 0x4
/* 1C074 8001B474 24E70014 */  addiu      $a3, $a3, 0x14
/* 1C078 8001B478 24C60001 */  addiu      $a2, $a2, 0x1
/* 1C07C 8001B47C 28C20004 */  slti       $v0, $a2, 0x4
/* 1C080 8001B480 1440FFF3 */  bnez       $v0, .L8001B450
/* 1C084 8001B484 24840010 */   addiu     $a0, $a0, 0x10
/* 1C088 8001B488 03E00008 */  jr         $ra
/* 1C08C 8001B48C 00000000 */   nop

glabel func_8001B490
/* 1C090 8001B490 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1C094 8001B494 00003021 */  addu       $a2, $zero, $zero
/* 1C098 8001B498 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1C09C 8001B49C 44810000 */  mtc1       $at, $f0
/* 1C0A0 8001B4A0 03A04821 */  addu       $t1, $sp, $zero
/* 1C0A4 8001B4A4 03A04021 */  addu       $t0, $sp, $zero
.L8001B4A8:
/* 1C0A8 8001B4A8 00001821 */  addu       $v1, $zero, $zero
/* 1C0AC 8001B4AC 01203821 */  addu       $a3, $t1, $zero
/* 1C0B0 8001B4B0 01002821 */  addu       $a1, $t0, $zero
.L8001B4B4:
/* 1C0B4 8001B4B4 54C30002 */  bnel       $a2, $v1, .L8001B4C0
/* 1C0B8 8001B4B8 ACA00000 */   sw        $zero, 0x0($a1)
/* 1C0BC 8001B4BC E4E00000 */  swc1       $f0, 0x0($a3)
.L8001B4C0:
/* 1C0C0 8001B4C0 24630001 */  addiu      $v1, $v1, 0x1
/* 1C0C4 8001B4C4 28620004 */  slti       $v0, $v1, 0x4
/* 1C0C8 8001B4C8 1440FFFA */  bnez       $v0, .L8001B4B4
/* 1C0CC 8001B4CC 24A50004 */   addiu     $a1, $a1, 0x4
/* 1C0D0 8001B4D0 25290014 */  addiu      $t1, $t1, 0x14
/* 1C0D4 8001B4D4 24C60001 */  addiu      $a2, $a2, 0x1
/* 1C0D8 8001B4D8 28C20004 */  slti       $v0, $a2, 0x4
/* 1C0DC 8001B4DC 1440FFF2 */  bnez       $v0, .L8001B4A8
/* 1C0E0 8001B4E0 25080010 */   addiu     $t0, $t0, 0x10
/* 1C0E4 8001B4E4 00804021 */  addu       $t0, $a0, $zero
/* 1C0E8 8001B4E8 25090020 */  addiu      $t1, $t0, 0x20
/* 1C0EC 8001B4EC 00005821 */  addu       $t3, $zero, $zero
/* 1C0F0 8001B4F0 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 1C0F4 8001B4F4 44813000 */  mtc1       $at, $f6
/* 1C0F8 8001B4F8 3C0CFFFF */  lui        $t4, (0xFFFF0000 >> 16)
/* 1C0FC 8001B4FC 03A05021 */  addu       $t2, $sp, $zero
.L8001B500:
/* 1C100 8001B500 00003821 */  addu       $a3, $zero, $zero
/* 1C104 8001B504 01403021 */  addu       $a2, $t2, $zero
.L8001B508:
/* 1C108 8001B508 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 1C10C 8001B50C 46061082 */  mul.s      $f2, $f2, $f6
/* 1C110 8001B510 C4C00004 */  lwc1       $f0, 0x4($a2)
/* 1C114 8001B514 46060002 */  mul.s      $f0, $f0, $f6
/* 1C118 8001B518 24C60008 */  addiu      $a2, $a2, 0x8
/* 1C11C 8001B51C 24E70001 */  addiu      $a3, $a3, 0x1
/* 1C120 8001B520 4600110D */  trunc.w.s  $f4, $f2
/* 1C124 8001B524 44042000 */  mfc1       $a0, $f4
/* 1C128 8001B528 4600008D */  trunc.w.s  $f2, $f0
/* 1C12C 8001B52C 44051000 */  mfc1       $a1, $f2
/* 1C130 8001B530 008C1024 */  and        $v0, $a0, $t4
/* 1C134 8001B534 00051C02 */  srl        $v1, $a1, 16
/* 1C138 8001B538 00431025 */  or         $v0, $v0, $v1
/* 1C13C 8001B53C AD020000 */  sw         $v0, 0x0($t0)
/* 1C140 8001B540 25080004 */  addiu      $t0, $t0, 0x4
/* 1C144 8001B544 00042400 */  sll        $a0, $a0, 16
/* 1C148 8001B548 008C2024 */  and        $a0, $a0, $t4
/* 1C14C 8001B54C 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 1C150 8001B550 00852025 */  or         $a0, $a0, $a1
/* 1C154 8001B554 AD240000 */  sw         $a0, 0x0($t1)
/* 1C158 8001B558 28E20002 */  slti       $v0, $a3, 0x2
/* 1C15C 8001B55C 1440FFEA */  bnez       $v0, .L8001B508
/* 1C160 8001B560 25290004 */   addiu     $t1, $t1, 0x4
/* 1C164 8001B564 256B0001 */  addiu      $t3, $t3, 0x1
/* 1C168 8001B568 29620004 */  slti       $v0, $t3, 0x4
/* 1C16C 8001B56C 1440FFE4 */  bnez       $v0, .L8001B500
/* 1C170 8001B570 254A0010 */   addiu     $t2, $t2, 0x10
/* 1C174 8001B574 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1C178 8001B578 03E00008 */  jr         $ra
/* 1C17C 8001B57C 00000000 */   nop

glabel sinf
/* 1C180 8001B580 E7AC0000 */  swc1       $f12, 0x0($sp)
/* 1C184 8001B584 8FA20000 */  lw         $v0, 0x0($sp)
/* 1C188 8001B588 00021D83 */  sra        $v1, $v0, 22
/* 1C18C 8001B58C 306301FF */  andi       $v1, $v1, 0x1FF
/* 1C190 8001B590 286200FF */  slti       $v0, $v1, 0xFF
/* 1C194 8001B594 1040001B */  beqz       $v0, .L8001B604
/* 1C198 8001B598 286200E6 */   slti      $v0, $v1, 0xE6
/* 1C19C 8001B59C 14400017 */  bnez       $v0, .L8001B5FC
/* 1C1A0 8001B5A0 460061A1 */   cvt.d.s   $f6, $f12
/* 1C1A4 8001B5A4 00000000 */  nop
/* 1C1A8 8001B5A8 46263102 */  mul.d      $f4, $f6, $f6
/* 1C1AC 8001B5AC 3C018000 */  lui        $at, %hi(D_80001760)
/* 1C1B0 8001B5B0 D4201760 */  ldc1       $f0, %lo(D_80001760)($at)
/* 1C1B4 8001B5B4 46240002 */  mul.d      $f0, $f0, $f4
/* 1C1B8 8001B5B8 3C018000 */  lui        $at, %hi(D_80001758)
/* 1C1BC 8001B5BC D4221758 */  ldc1       $f2, %lo(D_80001758)($at)
/* 1C1C0 8001B5C0 46220000 */  add.d      $f0, $f0, $f2
/* 1C1C4 8001B5C4 46240002 */  mul.d      $f0, $f0, $f4
/* 1C1C8 8001B5C8 3C018000 */  lui        $at, %hi(D_80001750)
/* 1C1CC 8001B5CC D4221750 */  ldc1       $f2, %lo(D_80001750)($at)
/* 1C1D0 8001B5D0 46220000 */  add.d      $f0, $f0, $f2
/* 1C1D4 8001B5D4 46240002 */  mul.d      $f0, $f0, $f4
/* 1C1D8 8001B5D8 00000000 */  nop
/* 1C1DC 8001B5DC 46243082 */  mul.d      $f2, $f6, $f4
/* 1C1E0 8001B5E0 3C018000 */  lui        $at, %hi(D_80001748)
/* 1C1E4 8001B5E4 D4241748 */  ldc1       $f4, %lo(D_80001748)($at)
/* 1C1E8 8001B5E8 46240000 */  add.d      $f0, $f0, $f4
/* 1C1EC 8001B5EC 46201082 */  mul.d      $f2, $f2, $f0
/* 1C1F0 8001B5F0 46223000 */  add.d      $f0, $f6, $f2
/* 1C1F4 8001B5F4 08006DC6 */  j          .L8001B718
/* 1C1F8 8001B5F8 46200020 */   cvt.s.d   $f0, $f0
.L8001B5FC:
/* 1C1FC 8001B5FC 08006DC6 */  j          .L8001B718
/* 1C200 8001B600 46006006 */   mov.s     $f0, $f12
.L8001B604:
/* 1C204 8001B604 28620136 */  slti       $v0, $v1, 0x136
/* 1C208 8001B608 1040003A */  beqz       $v0, .L8001B6F4
/* 1C20C 8001B60C 00000000 */   nop
/* 1C210 8001B610 3C018000 */  lui        $at, %hi(D_80001768)
/* 1C214 8001B614 D4201768 */  ldc1       $f0, %lo(D_80001768)($at)
/* 1C218 8001B618 460061A1 */  cvt.d.s    $f6, $f12
/* 1C21C 8001B61C 46203102 */  mul.d      $f4, $f6, $f0
/* 1C220 8001B620 44800000 */  mtc1       $zero, $f0
/* 1C224 8001B624 44800800 */  mtc1       $zero, $f1
/* 1C228 8001B628 00000000 */  nop
/* 1C22C 8001B62C 4624003E */  c.le.d     $f0, $f4
/* 1C230 8001B630 00000000 */  nop
/* 1C234 8001B634 45000005 */  bc1f       .L8001B64C
/* 1C238 8001B638 00000000 */   nop
/* 1C23C 8001B63C 3C018000 */  lui        $at, %hi(D_80001788)
/* 1C240 8001B640 D4201788 */  ldc1       $f0, %lo(D_80001788)($at)
/* 1C244 8001B644 08006D96 */  j          .L8001B658
/* 1C248 8001B648 46202000 */   add.d     $f0, $f4, $f0
.L8001B64C:
/* 1C24C 8001B64C 3C018000 */  lui        $at, %hi(D_80001790)
/* 1C250 8001B650 D4201790 */  ldc1       $f0, %lo(D_80001790)($at)
/* 1C254 8001B654 46202001 */  sub.d      $f0, $f4, $f0
.L8001B658:
/* 1C258 8001B658 4620008D */  trunc.w.d  $f2, $f0
/* 1C25C 8001B65C 44031000 */  mfc1       $v1, $f2
/* 1C260 8001B660 3C018000 */  lui        $at, %hi(D_80001770)
/* 1C264 8001B664 D4221770 */  ldc1       $f2, %lo(D_80001770)($at)
/* 1C268 8001B668 44832000 */  mtc1       $v1, $f4
/* 1C26C 8001B66C 00000000 */  nop
/* 1C270 8001B670 46802121 */  cvt.d.w    $f4, $f4
/* 1C274 8001B674 46222082 */  mul.d      $f2, $f4, $f2
/* 1C278 8001B678 3C018000 */  lui        $at, %hi(D_80001778)
/* 1C27C 8001B67C D4201778 */  ldc1       $f0, %lo(D_80001778)($at)
/* 1C280 8001B680 46202002 */  mul.d      $f0, $f4, $f0
/* 1C284 8001B684 46223181 */  sub.d      $f6, $f6, $f2
/* 1C288 8001B688 46203181 */  sub.d      $f6, $f6, $f0
/* 1C28C 8001B68C 46263102 */  mul.d      $f4, $f6, $f6
/* 1C290 8001B690 3C018000 */  lui        $at, %hi(D_80001760)
/* 1C294 8001B694 D4201760 */  ldc1       $f0, %lo(D_80001760)($at)
/* 1C298 8001B698 46240002 */  mul.d      $f0, $f0, $f4
/* 1C29C 8001B69C 3C018000 */  lui        $at, %hi(D_80001758)
/* 1C2A0 8001B6A0 D4221758 */  ldc1       $f2, %lo(D_80001758)($at)
/* 1C2A4 8001B6A4 46220000 */  add.d      $f0, $f0, $f2
/* 1C2A8 8001B6A8 46240002 */  mul.d      $f0, $f0, $f4
/* 1C2AC 8001B6AC 3C018000 */  lui        $at, %hi(D_80001750)
/* 1C2B0 8001B6B0 D4221750 */  ldc1       $f2, %lo(D_80001750)($at)
/* 1C2B4 8001B6B4 46220000 */  add.d      $f0, $f0, $f2
/* 1C2B8 8001B6B8 46240002 */  mul.d      $f0, $f0, $f4
/* 1C2BC 8001B6BC 00000000 */  nop
/* 1C2C0 8001B6C0 46243082 */  mul.d      $f2, $f6, $f4
/* 1C2C4 8001B6C4 3C018000 */  lui        $at, %hi(D_80001748)
/* 1C2C8 8001B6C8 D4241748 */  ldc1       $f4, %lo(D_80001748)($at)
/* 1C2CC 8001B6CC 46240000 */  add.d      $f0, $f0, $f4
/* 1C2D0 8001B6D0 46201082 */  mul.d      $f2, $f2, $f0
/* 1C2D4 8001B6D4 30620001 */  andi       $v0, $v1, 0x1
/* 1C2D8 8001B6D8 14400003 */  bnez       $v0, .L8001B6E8
/* 1C2DC 8001B6DC 46223000 */   add.d     $f0, $f6, $f2
/* 1C2E0 8001B6E0 08006DC6 */  j          .L8001B718
/* 1C2E4 8001B6E4 46200020 */   cvt.s.d   $f0, $f0
.L8001B6E8:
/* 1C2E8 8001B6E8 46200020 */  cvt.s.d    $f0, $f0
/* 1C2EC 8001B6EC 08006DC6 */  j          .L8001B718
/* 1C2F0 8001B6F0 46000007 */   neg.s     $f0, $f0
.L8001B6F4:
/* 1C2F4 8001B6F4 460C6032 */  c.eq.s     $f12, $f12
/* 1C2F8 8001B6F8 00000000 */  nop
/* 1C2FC 8001B6FC 45000004 */  bc1f       .L8001B710
/* 1C300 8001B700 00000000 */   nop
/* 1C304 8001B704 3C018000 */  lui        $at, %hi(D_80001780)
/* 1C308 8001B708 08006DC6 */  j          .L8001B718
/* 1C30C 8001B70C C4201780 */   lwc1      $f0, %lo(D_80001780)($at)
.L8001B710:
/* 1C310 8001B710 3C018000 */  lui        $at, %hi(D_80001730)
/* 1C314 8001B714 C4201730 */  lwc1       $f0, %lo(D_80001730)($at)
.L8001B718:
/* 1C318 8001B718 03E00008 */  jr         $ra
/* 1C31C 8001B71C 00000000 */   nop

glabel func_8001B720
/* 1C320 8001B720 00041823 */  negu       $v1, $a0
/* 1C324 8001B724 28A1000C */  slti       $at, $a1, 0xC
/* 1C328 8001B728 1420001D */  bnez       $at, .L8001B7A0
/* 1C32C 8001B72C 00000000 */   nop
/* 1C330 8001B730 30630003 */  andi       $v1, $v1, 0x3
/* 1C334 8001B734 10600003 */  beqz       $v1, .L8001B744
/* 1C338 8001B738 00A32823 */   subu      $a1, $a1, $v1
/* 1C33C 8001B73C A8800000 */  swl        $zero, 0x0($a0)
/* 1C340 8001B740 00832021 */  addu       $a0, $a0, $v1
.L8001B744:
/* 1C344 8001B744 2401FFE0 */  addiu      $at, $zero, -0x20
/* 1C348 8001B748 00A13824 */  and        $a3, $a1, $at
/* 1C34C 8001B74C 10E0000C */  beqz       $a3, .L8001B780
/* 1C350 8001B750 00A72823 */   subu      $a1, $a1, $a3
/* 1C354 8001B754 00E43821 */  addu       $a3, $a3, $a0
.L8001B758:
/* 1C358 8001B758 AC800000 */  sw         $zero, 0x0($a0)
/* 1C35C 8001B75C AC800004 */  sw         $zero, 0x4($a0)
/* 1C360 8001B760 AC800008 */  sw         $zero, 0x8($a0)
/* 1C364 8001B764 AC80000C */  sw         $zero, 0xC($a0)
/* 1C368 8001B768 24840020 */  addiu      $a0, $a0, 0x20
/* 1C36C 8001B76C AC80FFF0 */  sw         $zero, -0x10($a0)
/* 1C370 8001B770 AC80FFF4 */  sw         $zero, -0xC($a0)
/* 1C374 8001B774 AC80FFF8 */  sw         $zero, -0x8($a0)
/* 1C378 8001B778 1487FFF7 */  bne        $a0, $a3, .L8001B758
/* 1C37C 8001B77C AC80FFFC */   sw        $zero, -0x4($a0)
.L8001B780:
/* 1C380 8001B780 2401FFFC */  addiu      $at, $zero, -0x4
/* 1C384 8001B784 00A13824 */  and        $a3, $a1, $at
/* 1C388 8001B788 10E00005 */  beqz       $a3, .L8001B7A0
/* 1C38C 8001B78C 00A72823 */   subu      $a1, $a1, $a3
/* 1C390 8001B790 00E43821 */  addu       $a3, $a3, $a0
.L8001B794:
/* 1C394 8001B794 24840004 */  addiu      $a0, $a0, 0x4
/* 1C398 8001B798 1487FFFE */  bne        $a0, $a3, .L8001B794
/* 1C39C 8001B79C AC80FFFC */   sw        $zero, -0x4($a0)
.L8001B7A0:
/* 1C3A0 8001B7A0 18A00005 */  blez       $a1, .L8001B7B8
/* 1C3A4 8001B7A4 00000000 */   nop
/* 1C3A8 8001B7A8 00A42821 */  addu       $a1, $a1, $a0
.L8001B7AC:
/* 1C3AC 8001B7AC 24840001 */  addiu      $a0, $a0, 0x1
/* 1C3B0 8001B7B0 1485FFFE */  bne        $a0, $a1, .L8001B7AC
/* 1C3B4 8001B7B4 A080FFFF */   sb        $zero, -0x1($a0)
.L8001B7B8:
/* 1C3B8 8001B7B8 03E00008 */  jr         $ra
/* 1C3BC 8001B7BC 00000000 */   nop

glabel func_8001B7C0
/* 1C3C0 8001B7C0 90830000 */  lbu        $v1, 0x0($a0)
/* 1C3C4 8001B7C4 30A500FF */  andi       $a1, $a1, 0xFF
/* 1C3C8 8001B7C8 306200FF */  andi       $v0, $v1, 0xFF
/* 1C3CC 8001B7CC 10450008 */  beq        $v0, $a1, .L8001B7F0
/* 1C3D0 8001B7D0 00801021 */   addu      $v0, $a0, $zero
.L8001B7D4:
/* 1C3D4 8001B7D4 14600003 */  bnez       $v1, .L8001B7E4
/* 1C3D8 8001B7D8 24840001 */   addiu     $a0, $a0, 0x1
/* 1C3DC 8001B7DC 08006DFC */  j          .L8001B7F0
/* 1C3E0 8001B7E0 00001021 */   addu      $v0, $zero, $zero
.L8001B7E4:
/* 1C3E4 8001B7E4 90830000 */  lbu        $v1, 0x0($a0)
/* 1C3E8 8001B7E8 1465FFFA */  bne        $v1, $a1, .L8001B7D4
/* 1C3EC 8001B7EC 00801021 */   addu      $v0, $a0, $zero
.L8001B7F0:
/* 1C3F0 8001B7F0 03E00008 */  jr         $ra
/* 1C3F4 8001B7F4 00000000 */   nop

glabel strlen
/* 1C3F8 8001B7F8 90820000 */  lbu        $v0, 0x0($a0)
/* 1C3FC 8001B7FC 10400005 */  beqz       $v0, .L8001B814
/* 1C400 8001B800 00801821 */   addu      $v1, $a0, $zero
/* 1C404 8001B804 24630001 */  addiu      $v1, $v1, 0x1
.L8001B808:
/* 1C408 8001B808 90620000 */  lbu        $v0, 0x0($v1)
/* 1C40C 8001B80C 5440FFFE */  bnel       $v0, $zero, .L8001B808
/* 1C410 8001B810 24630001 */   addiu     $v1, $v1, 0x1
.L8001B814:
/* 1C414 8001B814 03E00008 */  jr         $ra
/* 1C418 8001B818 00641023 */   subu      $v0, $v1, $a0

glabel memcpy
/* 1C41C 8001B81C 10C00007 */  beqz       $a2, .L8001B83C
/* 1C420 8001B820 00801821 */   addu      $v1, $a0, $zero
.L8001B824:
/* 1C424 8001B824 90A20000 */  lbu        $v0, 0x0($a1)
/* 1C428 8001B828 24A50001 */  addiu      $a1, $a1, 0x1
/* 1C42C 8001B82C 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1C430 8001B830 A0620000 */  sb         $v0, 0x0($v1)
/* 1C434 8001B834 14C0FFFB */  bnez       $a2, .L8001B824
/* 1C438 8001B838 24630001 */   addiu     $v1, $v1, 0x1
.L8001B83C:
/* 1C43C 8001B83C 03E00008 */  jr         $ra
/* 1C440 8001B840 00801021 */   addu      $v0, $a0, $zero
/* 1C444 8001B844 00000000 */  nop
/* 1C448 8001B848 00000000 */  nop
/* 1C44C 8001B84C 00000000 */  nop
