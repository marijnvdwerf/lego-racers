.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800D4220
/* 8A5E0 800D4220 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8A5E4 800D4224 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A5E8 800D4228 00808021 */  addu       $s0, $a0, $zero
/* 8A5EC 800D422C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8A5F0 800D4230 0C034FE8 */  jal        func_race_800D3FA0
/* 8A5F4 800D4234 26040018 */   addiu     $a0, $s0, 0x18
/* 8A5F8 800D4238 0C0350A9 */  jal        func_race_800D42A4
/* 8A5FC 800D423C 02002021 */   addu      $a0, $s0, $zero
/* 8A600 800D4240 02001021 */  addu       $v0, $s0, $zero
/* 8A604 800D4244 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8A608 800D4248 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A60C 800D424C 03E00008 */  jr         $ra
/* 8A610 800D4250 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D4254
/* 8A614 800D4254 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8A618 800D4258 AFB10014 */  sw         $s1, 0x14($sp)
/* 8A61C 800D425C 00808821 */  addu       $s1, $a0, $zero
/* 8A620 800D4260 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A624 800D4264 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8A628 800D4268 0C03518A */  jal        func_race_800D4628
/* 8A62C 800D426C 00A08021 */   addu      $s0, $a1, $zero
/* 8A630 800D4270 26240018 */  addiu      $a0, $s1, 0x18
/* 8A634 800D4274 0C034FF7 */  jal        func_race_800D3FDC
/* 8A638 800D4278 24050002 */   addiu     $a1, $zero, 0x2
/* 8A63C 800D427C 32100001 */  andi       $s0, $s0, 0x1
/* 8A640 800D4280 12000003 */  beqz       $s0, .Lrace_800D4290
/* 8A644 800D4284 00000000 */   nop
/* 8A648 800D4288 0C01FB5C */  jal        func_8007ED70
/* 8A64C 800D428C 02202021 */   addu      $a0, $s1, $zero
.Lrace_800D4290:
/* 8A650 800D4290 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8A654 800D4294 8FB10014 */  lw         $s1, 0x14($sp)
/* 8A658 800D4298 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A65C 800D429C 03E00008 */  jr         $ra
/* 8A660 800D42A0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D42A4
/* 8A664 800D42A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8A668 800D42A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 8A66C 800D42AC 00808021 */  addu       $s0, $a0, $zero
/* 8A670 800D42B0 260400EC */  addiu      $a0, $s0, 0xEC
/* 8A674 800D42B4 00002821 */  addu       $a1, $zero, $zero
/* 8A678 800D42B8 2406003C */  addiu      $a2, $zero, 0x3C
/* 8A67C 800D42BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 8A680 800D42C0 AE000000 */  sw         $zero, 0x0($s0)
/* 8A684 800D42C4 AE000004 */  sw         $zero, 0x4($s0)
/* 8A688 800D42C8 AE000008 */  sw         $zero, 0x8($s0)
/* 8A68C 800D42CC AE00000C */  sw         $zero, 0xC($s0)
/* 8A690 800D42D0 AE000010 */  sw         $zero, 0x10($s0)
/* 8A694 800D42D4 AE000014 */  sw         $zero, 0x14($s0)
/* 8A698 800D42D8 AE0000B0 */  sw         $zero, 0xB0($s0)
/* 8A69C 800D42DC AE0000B4 */  sw         $zero, 0xB4($s0)
/* 8A6A0 800D42E0 AE0000B8 */  sw         $zero, 0xB8($s0)
/* 8A6A4 800D42E4 AE0000BC */  sw         $zero, 0xBC($s0)
/* 8A6A8 800D42E8 AE0000C0 */  sw         $zero, 0xC0($s0)
/* 8A6AC 800D42EC AE0000C4 */  sw         $zero, 0xC4($s0)
/* 8A6B0 800D42F0 AE0000C8 */  sw         $zero, 0xC8($s0)
/* 8A6B4 800D42F4 AE0000CC */  sw         $zero, 0xCC($s0)
/* 8A6B8 800D42F8 AE0000D0 */  sw         $zero, 0xD0($s0)
/* 8A6BC 800D42FC AE0000D4 */  sw         $zero, 0xD4($s0)
/* 8A6C0 800D4300 AE0000DC */  sw         $zero, 0xDC($s0)
/* 8A6C4 800D4304 AE0000E0 */  sw         $zero, 0xE0($s0)
/* 8A6C8 800D4308 AE0000E4 */  sw         $zero, 0xE4($s0)
/* 8A6CC 800D430C 0C000697 */  jal        func_80001A5C
/* 8A6D0 800D4310 AE0000E8 */   sw        $zero, 0xE8($s0)
/* 8A6D4 800D4314 26040128 */  addiu      $a0, $s0, 0x128
/* 8A6D8 800D4318 00002821 */  addu       $a1, $zero, $zero
/* 8A6DC 800D431C 0C000697 */  jal        func_80001A5C
/* 8A6E0 800D4320 24060014 */   addiu     $a2, $zero, 0x14
/* 8A6E4 800D4324 240200FF */  addiu      $v0, $zero, 0xFF
/* 8A6E8 800D4328 AE00013C */  sw         $zero, 0x13C($s0)
/* 8A6EC 800D432C AE000140 */  sw         $zero, 0x140($s0)
/* 8A6F0 800D4330 AE000144 */  sw         $zero, 0x144($s0)
/* 8A6F4 800D4334 AE000148 */  sw         $zero, 0x148($s0)
/* 8A6F8 800D4338 AE00014C */  sw         $zero, 0x14C($s0)
/* 8A6FC 800D433C AE000150 */  sw         $zero, 0x150($s0)
/* 8A700 800D4340 A2000160 */  sb         $zero, 0x160($s0)
/* 8A704 800D4344 A2000161 */  sb         $zero, 0x161($s0)
/* 8A708 800D4348 A2000162 */  sb         $zero, 0x162($s0)
/* 8A70C 800D434C A2020163 */  sb         $v0, 0x163($s0)
/* 8A710 800D4350 A2000164 */  sb         $zero, 0x164($s0)
/* 8A714 800D4354 A2000165 */  sb         $zero, 0x165($s0)
/* 8A718 800D4358 A2000166 */  sb         $zero, 0x166($s0)
/* 8A71C 800D435C A2020167 */  sb         $v0, 0x167($s0)
/* 8A720 800D4360 A2000168 */  sb         $zero, 0x168($s0)
/* 8A724 800D4364 A2000169 */  sb         $zero, 0x169($s0)
/* 8A728 800D4368 A200016A */  sb         $zero, 0x16A($s0)
/* 8A72C 800D436C A202016B */  sb         $v0, 0x16B($s0)
/* 8A730 800D4370 AE00016C */  sw         $zero, 0x16C($s0)
/* 8A734 800D4374 AE000170 */  sw         $zero, 0x170($s0)
/* 8A738 800D4378 AE000174 */  sw         $zero, 0x174($s0)
/* 8A73C 800D437C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8A740 800D4380 8FB00010 */  lw         $s0, 0x10($sp)
/* 8A744 800D4384 03E00008 */  jr         $ra
/* 8A748 800D4388 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D438C
/* 8A74C 800D438C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8A750 800D4390 AFB10024 */  sw         $s1, 0x24($sp)
/* 8A754 800D4394 00808821 */  addu       $s1, $a0, $zero
/* 8A758 800D4398 AFBF0030 */  sw         $ra, 0x30($sp)
/* 8A75C 800D439C AFB3002C */  sw         $s3, 0x2C($sp)
/* 8A760 800D43A0 AFB20028 */  sw         $s2, 0x28($sp)
/* 8A764 800D43A4 AFB00020 */  sw         $s0, 0x20($sp)
/* 8A768 800D43A8 8E220004 */  lw         $v0, 0x4($s1)
/* 8A76C 800D43AC 10400003 */  beqz       $v0, .Lrace_800D43BC
/* 8A770 800D43B0 00A09021 */   addu      $s2, $a1, $zero
/* 8A774 800D43B4 0C03518A */  jal        func_race_800D4628
/* 8A778 800D43B8 00000000 */   nop
.Lrace_800D43BC:
/* 8A77C 800D43BC 8E420000 */  lw         $v0, 0x0($s2)
/* 8A780 800D43C0 3C01800D */  lui        $at, %hi(D_race_800CA9B0)
/* 8A784 800D43C4 C420A9B0 */  lwc1       $f0, %lo(D_race_800CA9B0)($at)
/* 8A788 800D43C8 AE220000 */  sw         $v0, 0x0($s1)
/* 8A78C 800D43CC 8E420008 */  lw         $v0, 0x8($s2)
/* 8A790 800D43D0 AE220014 */  sw         $v0, 0x14($s1)
/* 8A794 800D43D4 8E42000C */  lw         $v0, 0xC($s2)
/* 8A798 800D43D8 AE2200DC */  sw         $v0, 0xDC($s1)
/* 8A79C 800D43DC 8E420010 */  lw         $v0, 0x10($s2)
/* 8A7A0 800D43E0 00003021 */  addu       $a2, $zero, $zero
/* 8A7A4 800D43E4 AE2200E0 */  sw         $v0, 0xE0($s1)
/* 8A7A8 800D43E8 C62200E0 */  lwc1       $f2, 0xE0($s1)
/* 8A7AC 800D43EC 468010A0 */  cvt.s.w    $f2, $f2
/* 8A7B0 800D43F0 8E430014 */  lw         $v1, 0x14($s2)
/* 8A7B4 800D43F4 46020003 */  div.s      $f0, $f0, $f2
/* 8A7B8 800D43F8 E62000D8 */  swc1       $f0, 0xD8($s1)
/* 8A7BC 800D43FC 24620001 */  addiu      $v0, $v1, 0x1
/* 8A7C0 800D4400 AE2200E8 */  sw         $v0, 0xE8($s1)
/* 8A7C4 800D4404 10400015 */  beqz       $v0, .Lrace_800D445C
/* 8A7C8 800D4408 AE2300E4 */   sw        $v1, 0xE4($s1)
/* 8A7CC 800D440C 02403821 */  addu       $a3, $s2, $zero
/* 8A7D0 800D4410 02202821 */  addu       $a1, $s1, $zero
/* 8A7D4 800D4414 02402021 */  addu       $a0, $s2, $zero
/* 8A7D8 800D4418 02201821 */  addu       $v1, $s1, $zero
.Lrace_800D441C:
/* 8A7DC 800D441C 8C890018 */  lw         $t1, 0x18($a0)
/* 8A7E0 800D4420 8C8A001C */  lw         $t2, 0x1C($a0)
/* 8A7E4 800D4424 8C8B0020 */  lw         $t3, 0x20($a0)
/* 8A7E8 800D4428 AC6900EC */  sw         $t1, 0xEC($v1)
/* 8A7EC 800D442C AC6A00F0 */  sw         $t2, 0xF0($v1)
/* 8A7F0 800D4430 AC6B00F4 */  sw         $t3, 0xF4($v1)
/* 8A7F4 800D4434 C4E00054 */  lwc1       $f0, 0x54($a3)
/* 8A7F8 800D4438 24E70004 */  addiu      $a3, $a3, 0x4
/* 8A7FC 800D443C 2484000C */  addiu      $a0, $a0, 0xC
/* 8A800 800D4440 2463000C */  addiu      $v1, $v1, 0xC
/* 8A804 800D4444 24C60001 */  addiu      $a2, $a2, 0x1
/* 8A808 800D4448 E4A00128 */  swc1       $f0, 0x128($a1)
/* 8A80C 800D444C 8E2200E8 */  lw         $v0, 0xE8($s1)
/* 8A810 800D4450 00C2102B */  sltu       $v0, $a2, $v0
/* 8A814 800D4454 1440FFF1 */  bnez       $v0, .Lrace_800D441C
/* 8A818 800D4458 24A50004 */   addiu     $a1, $a1, 0x4
.Lrace_800D445C:
/* 8A81C 800D445C 8E2600DC */  lw         $a2, 0xDC($s1)
/* 8A820 800D4460 8E2400E0 */  lw         $a0, 0xE0($s1)
/* 8A824 800D4464 00C40018 */  mult       $a2, $a0
/* 8A828 800D4468 00004812 */  mflo       $t1
/* 8A82C 800D446C 8E2200E4 */  lw         $v0, 0xE4($s1)
/* 8A830 800D4470 8E430068 */  lw         $v1, 0x68($s2)
/* 8A834 800D4474 01220018 */  mult       $t1, $v0
/* 8A838 800D4478 8E220014 */  lw         $v0, 0x14($s1)
/* 8A83C 800D447C AE23013C */  sw         $v1, 0x13C($s1)
/* 8A840 800D4480 8C420004 */  lw         $v0, 0x4($v0)
/* 8A844 800D4484 30420008 */  andi       $v0, $v0, 0x8
/* 8A848 800D4488 00005012 */  mflo       $t2
/* 8A84C 800D448C 10400008 */  beqz       $v0, .Lrace_800D44B0
/* 8A850 800D4490 000A9840 */   sll       $s3, $t2, 1
/* 8A854 800D4494 0083102B */  sltu       $v0, $a0, $v1
/* 8A858 800D4498 14400002 */  bnez       $v0, .Lrace_800D44A4
/* 8A85C 800D449C 00002821 */   addu      $a1, $zero, $zero
/* 8A860 800D44A0 00832823 */  subu       $a1, $a0, $v1
.Lrace_800D44A4:
/* 8A864 800D44A4 24A20001 */  addiu      $v0, $a1, 0x1
/* 8A868 800D44A8 0803512D */  j          .Lrace_800D44B4
/* 8A86C 800D44AC 00821021 */   addu      $v0, $a0, $v0
.Lrace_800D44B0:
/* 8A870 800D44B0 24820001 */  addiu      $v0, $a0, 0x1
.Lrace_800D44B4:
/* 8A874 800D44B4 00C20018 */  mult       $a2, $v0
/* 8A878 800D44B8 00004812 */  mflo       $t1
/* 8A87C 800D44BC 8E2200E8 */  lw         $v0, 0xE8($s1)
/* 8A880 800D44C0 00000000 */  nop
/* 8A884 800D44C4 01220018 */  mult       $t1, $v0
/* 8A888 800D44C8 00005012 */  mflo       $t2
/* 8A88C 800D44CC AE2A016C */  sw         $t2, 0x16C($s1)
/* 8A890 800D44D0 8E2400E0 */  lw         $a0, 0xE0($s1)
/* 8A894 800D44D4 8E25013C */  lw         $a1, 0x13C($s1)
/* 8A898 800D44D8 0085102B */  sltu       $v0, $a0, $a1
/* 8A89C 800D44DC 14400003 */  bnez       $v0, .Lrace_800D44EC
/* 8A8A0 800D44E0 24830001 */   addiu     $v1, $a0, 0x1
/* 8A8A4 800D44E4 00851023 */  subu       $v0, $a0, $a1
/* 8A8A8 800D44E8 00621821 */  addu       $v1, $v1, $v0
.Lrace_800D44EC:
/* 8A8AC 800D44EC 8E2200E8 */  lw         $v0, 0xE8($s1)
/* 8A8B0 800D44F0 00620018 */  mult       $v1, $v0
/* 8A8B4 800D44F4 00001812 */  mflo       $v1
/* 8A8B8 800D44F8 24020020 */  addiu      $v0, $zero, 0x20
/* 8A8BC 800D44FC 00000000 */  nop
/* 8A8C0 800D4500 0043001B */  divu       $zero, $v0, $v1
/* 8A8C4 800D4504 14600002 */  bnez       $v1, .Lrace_800D4510
/* 8A8C8 800D4508 00000000 */   nop
/* 8A8CC 800D450C 0007000D */  break      7
.Lrace_800D4510:
/* 8A8D0 800D4510 00001012 */  mflo       $v0
/* 8A8D4 800D4514 8E260000 */  lw         $a2, 0x0($s1)
/* 8A8D8 800D4518 8CC50000 */  lw         $a1, 0x0($a2)
/* 8A8DC 800D451C 8E2300DC */  lw         $v1, 0xDC($s1)
/* 8A8E0 800D4520 24420002 */  addiu      $v0, $v0, 0x2
/* 8A8E4 800D4524 00021040 */  sll        $v0, $v0, 1
/* 8A8E8 800D4528 24420001 */  addiu      $v0, $v0, 0x1
/* 8A8EC 800D452C 00620018 */  mult       $v1, $v0
/* 8A8F0 800D4530 84A40030 */  lh         $a0, 0x30($a1)
/* 8A8F4 800D4534 00C42021 */  addu       $a0, $a2, $a0
/* 8A8F8 800D4538 8CA20034 */  lw         $v0, 0x34($a1)
/* 8A8FC 800D453C 00001812 */  mflo       $v1
/* 8A900 800D4540 0040F809 */  jalr       $v0
/* 8A904 800D4544 24700002 */   addiu     $s0, $v1, 0x2
/* 8A908 800D4548 24060001 */  addiu      $a2, $zero, 0x1
/* 8A90C 800D454C 00C01821 */  addu       $v1, $a2, $zero
/* 8A910 800D4550 AE220004 */  sw         $v0, 0x4($s1)
/* 8A914 800D4554 8C48003C */  lw         $t0, 0x3C($v0)
/* 8A918 800D4558 8E27016C */  lw         $a3, 0x16C($s1)
/* 8A91C 800D455C 85040048 */  lh         $a0, 0x48($t0)
/* 8A920 800D4560 00C73804 */  sllv       $a3, $a3, $a2
/* 8A924 800D4564 AFB30010 */  sw         $s3, 0x10($sp)
/* 8A928 800D4568 AFB00014 */  sw         $s0, 0x14($sp)
/* 8A92C 800D456C AFA30018 */  sw         $v1, 0x18($sp)
/* 8A930 800D4570 8E450004 */  lw         $a1, 0x4($s2)
/* 8A934 800D4574 8D03004C */  lw         $v1, 0x4C($t0)
/* 8A938 800D4578 0060F809 */  jalr       $v1
/* 8A93C 800D457C 00442021 */   addu      $a0, $v0, $a0
/* 8A940 800D4580 8E230000 */  lw         $v1, 0x0($s1)
/* 8A944 800D4584 8C620000 */  lw         $v0, 0x0($v1)
/* 8A948 800D4588 84440038 */  lh         $a0, 0x38($v0)
/* 8A94C 800D458C 8C42003C */  lw         $v0, 0x3C($v0)
/* 8A950 800D4590 0040F809 */  jalr       $v0
/* 8A954 800D4594 00642021 */   addu      $a0, $v1, $a0
/* 8A958 800D4598 AE220010 */  sw         $v0, 0x10($s1)
/* 8A95C 800D459C 8C430008 */  lw         $v1, 0x8($v0)
/* 8A960 800D45A0 8E2500DC */  lw         $a1, 0xDC($s1)
/* 8A964 800D45A4 84640010 */  lh         $a0, 0x10($v1)
/* 8A968 800D45A8 8C630014 */  lw         $v1, 0x14($v1)
/* 8A96C 800D45AC 0060F809 */  jalr       $v1
/* 8A970 800D45B0 00442021 */   addu      $a0, $v0, $a0
/* 8A974 800D45B4 C640006C */  lwc1       $f0, 0x6C($s2)
/* 8A978 800D45B8 26300018 */  addiu      $s0, $s1, 0x18
/* 8A97C 800D45BC E7A00010 */  swc1       $f0, 0x10($sp)
/* 8A980 800D45C0 8E250004 */  lw         $a1, 0x4($s1)
/* 8A984 800D45C4 8E260010 */  lw         $a2, 0x10($s1)
/* 8A988 800D45C8 8E470070 */  lw         $a3, 0x70($s2)
/* 8A98C 800D45CC 0C03500B */  jal        func_race_800D402C
/* 8A990 800D45D0 02002021 */   addu      $a0, $s0, $zero
/* 8A994 800D45D4 8E240004 */  lw         $a0, 0x4($s1)
/* 8A998 800D45D8 8E460008 */  lw         $a2, 0x8($s2)
/* 8A99C 800D45DC 0C01543D */  jal        func_800550F4
/* 8A9A0 800D45E0 00002821 */   addu      $a1, $zero, $zero
/* 8A9A4 800D45E4 8E220004 */  lw         $v0, 0x4($s1)
/* 8A9A8 800D45E8 3C01800D */  lui        $at, %hi(D_race_800CA9B4)
/* 8A9AC 800D45EC C422A9B4 */  lwc1       $f2, %lo(D_race_800CA9B4)($at)
/* 8A9B0 800D45F0 3C01800D */  lui        $at, %hi(D_race_800CA9B8)
/* 8A9B4 800D45F4 C424A9B8 */  lwc1       $f4, %lo(D_race_800CA9B8)($at)
/* 8A9B8 800D45F8 3C01800D */  lui        $at, %hi(D_race_800CA9BC)
/* 8A9BC 800D45FC C420A9BC */  lwc1       $f0, %lo(D_race_800CA9BC)($at)
/* 8A9C0 800D4600 E4420034 */  swc1       $f2, 0x34($v0)
/* 8A9C4 800D4604 E600000C */  swc1       $f0, 0xC($s0)
/* 8A9C8 800D4608 E6040058 */  swc1       $f4, 0x58($s0)
/* 8A9CC 800D460C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 8A9D0 800D4610 8FB3002C */  lw         $s3, 0x2C($sp)
/* 8A9D4 800D4614 8FB20028 */  lw         $s2, 0x28($sp)
/* 8A9D8 800D4618 8FB10024 */  lw         $s1, 0x24($sp)
/* 8A9DC 800D461C 8FB00020 */  lw         $s0, 0x20($sp)
/* 8A9E0 800D4620 03E00008 */  jr         $ra
/* 8A9E4 800D4624 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800D4628
/* 8A9E8 800D4628 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8A9EC 800D462C AFB00010 */  sw         $s0, 0x10($sp)
/* 8A9F0 800D4630 00808021 */  addu       $s0, $a0, $zero
/* 8A9F4 800D4634 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8A9F8 800D4638 0C03501D */  jal        func_race_800D4074
/* 8A9FC 800D463C 26040018 */   addiu     $a0, $s0, 0x18
/* 8AA00 800D4640 8E030000 */  lw         $v1, 0x0($s0)
/* 8AA04 800D4644 10600012 */  beqz       $v1, .Lrace_800D4690
/* 8AA08 800D4648 00000000 */   nop
/* 8AA0C 800D464C 8E050010 */  lw         $a1, 0x10($s0)
/* 8AA10 800D4650 10A00006 */  beqz       $a1, .Lrace_800D466C
/* 8AA14 800D4654 00000000 */   nop
/* 8AA18 800D4658 8C620000 */  lw         $v0, 0x0($v1)
/* 8AA1C 800D465C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8AA20 800D4660 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8AA24 800D4664 0040F809 */  jalr       $v0
/* 8AA28 800D4668 00642021 */   addu      $a0, $v1, $a0
.Lrace_800D466C:
/* 8AA2C 800D466C 8E050004 */  lw         $a1, 0x4($s0)
/* 8AA30 800D4670 10A00007 */  beqz       $a1, .Lrace_800D4690
/* 8AA34 800D4674 00000000 */   nop
/* 8AA38 800D4678 8E030000 */  lw         $v1, 0x0($s0)
/* 8AA3C 800D467C 8C620000 */  lw         $v0, 0x0($v1)
/* 8AA40 800D4680 84440098 */  lh         $a0, 0x98($v0)
/* 8AA44 800D4684 8C42009C */  lw         $v0, 0x9C($v0)
/* 8AA48 800D4688 0040F809 */  jalr       $v0
/* 8AA4C 800D468C 00642021 */   addu      $a0, $v1, $a0
.Lrace_800D4690:
/* 8AA50 800D4690 0C0350A9 */  jal        func_race_800D42A4
/* 8AA54 800D4694 02002021 */   addu      $a0, $s0, $zero
/* 8AA58 800D4698 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8AA5C 800D469C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8AA60 800D46A0 03E00008 */  jr         $ra
/* 8AA64 800D46A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D46A8
/* 8AA68 800D46A8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 8AA6C 800D46AC AFB10054 */  sw         $s1, 0x54($sp)
/* 8AA70 800D46B0 00808821 */  addu       $s1, $a0, $zero
/* 8AA74 800D46B4 AFB20058 */  sw         $s2, 0x58($sp)
/* 8AA78 800D46B8 00A09021 */  addu       $s2, $a1, $zero
/* 8AA7C 800D46BC 3C02800D */  lui        $v0, %hi(D_race_800CA9C0)
/* 8AA80 800D46C0 AFBF0060 */  sw         $ra, 0x60($sp)
/* 8AA84 800D46C4 AFB3005C */  sw         $s3, 0x5C($sp)
/* 8AA88 800D46C8 AFB00050 */  sw         $s0, 0x50($sp)
/* 8AA8C 800D46CC 244CA9C0 */  addiu      $t4, $v0, %lo(D_race_800CA9C0)
/* 8AA90 800D46D0 8D890000 */  lw         $t1, 0x0($t4)
/* 8AA94 800D46D4 8D8A0004 */  lw         $t2, 0x4($t4)
/* 8AA98 800D46D8 8D8B0008 */  lw         $t3, 0x8($t4)
/* 8AA9C 800D46DC AFA90028 */  sw         $t1, 0x28($sp)
/* 8AAA0 800D46E0 AFAA002C */  sw         $t2, 0x2C($sp)
/* 8AAA4 800D46E4 AFAB0030 */  sw         $t3, 0x30($sp)
/* 8AAA8 800D46E8 8E230004 */  lw         $v1, 0x4($s1)
/* 8AAAC 800D46EC 00C09821 */  addu       $s3, $a2, $zero
/* 8AAB0 800D46F0 8C62003C */  lw         $v0, 0x3C($v1)
/* 8AAB4 800D46F4 26250008 */  addiu      $a1, $s1, 0x8
/* 8AAB8 800D46F8 84440058 */  lh         $a0, 0x58($v0)
/* 8AABC 800D46FC 8C42005C */  lw         $v0, 0x5C($v0)
/* 8AAC0 800D4700 0040F809 */  jalr       $v0
/* 8AAC4 800D4704 00642021 */   addu      $a0, $v1, $a0
/* 8AAC8 800D4708 8E230004 */  lw         $v1, 0x4($s1)
/* 8AACC 800D470C 8C62003C */  lw         $v0, 0x3C($v1)
/* 8AAD0 800D4710 27A50048 */  addiu      $a1, $sp, 0x48
/* 8AAD4 800D4714 84440068 */  lh         $a0, 0x68($v0)
/* 8AAD8 800D4718 8C42006C */  lw         $v0, 0x6C($v0)
/* 8AADC 800D471C 0040F809 */  jalr       $v0
/* 8AAE0 800D4720 00642021 */   addu      $a0, $v1, $a0
/* 8AAE4 800D4724 8E230174 */  lw         $v1, 0x174($s1)
/* 8AAE8 800D4728 8FA20048 */  lw         $v0, 0x48($sp)
/* 8AAEC 800D472C 00602021 */  addu       $a0, $v1, $zero
/* 8AAF0 800D4730 00602821 */  addu       $a1, $v1, $zero
/* 8AAF4 800D4734 8C470008 */  lw         $a3, 0x8($v0)
/* 8AAF8 800D4738 8E2200E8 */  lw         $v0, 0xE8($s1)
/* 8AAFC 800D473C 00603021 */  addu       $a2, $v1, $zero
/* 8AB00 800D4740 AE2000B0 */  sw         $zero, 0xB0($s1)
/* 8AB04 800D4744 AE2000B8 */  sw         $zero, 0xB8($s1)
/* 8AB08 800D4748 AE230170 */  sw         $v1, 0x170($s1)
/* 8AB0C 800D474C AE2400BC */  sw         $a0, 0xBC($s1)
/* 8AB10 800D4750 AE2500C0 */  sw         $a1, 0xC0($s1)
/* 8AB14 800D4754 00021023 */  negu       $v0, $v0
/* 8AB18 800D4758 AE2200B4 */  sw         $v0, 0xB4($s1)
/* 8AB1C 800D475C 14C00004 */  bnez       $a2, .Lrace_800D4770
/* 8AB20 800D4760 AE27000C */   sw        $a3, 0xC($s1)
/* 8AB24 800D4764 8E22016C */  lw         $v0, 0x16C($s1)
/* 8AB28 800D4768 080351DD */  j          .Lrace_800D4774
/* 8AB2C 800D476C AE220174 */   sw        $v0, 0x174($s1)
.Lrace_800D4770:
/* 8AB30 800D4770 AE200174 */  sw         $zero, 0x174($s1)
.Lrace_800D4774:
/* 8AB34 800D4774 02202021 */  addu       $a0, $s1, $zero
/* 8AB38 800D4778 2405FFFE */  addiu      $a1, $zero, -0x2
/* 8AB3C 800D477C 26260160 */  addiu      $a2, $s1, 0x160
/* 8AB40 800D4780 AE2000CC */  sw         $zero, 0xCC($s1)
/* 8AB44 800D4784 8E2300CC */  lw         $v1, 0xCC($s1)
/* 8AB48 800D4788 8E220140 */  lw         $v0, 0x140($s1)
/* 8AB4C 800D478C 8E280004 */  lw         $t0, 0x4($s1)
/* 8AB50 800D4790 24100001 */  addiu      $s0, $zero, 0x1
/* 8AB54 800D4794 AE2000C8 */  sw         $zero, 0xC8($s1)
/* 8AB58 800D4798 AE2000C4 */  sw         $zero, 0xC4($s1)
/* 8AB5C 800D479C 00603821 */  addu       $a3, $v1, $zero
/* 8AB60 800D47A0 24630001 */  addiu      $v1, $v1, 0x1
/* 8AB64 800D47A4 00451024 */  and        $v0, $v0, $a1
/* 8AB68 800D47A8 00073880 */  sll        $a3, $a3, 2
/* 8AB6C 800D47AC AE220140 */  sw         $v0, 0x140($s1)
/* 8AB70 800D47B0 AE2300CC */  sw         $v1, 0xCC($s1)
/* 8AB74 800D47B4 8D020020 */  lw         $v0, 0x20($t0)
/* 8AB78 800D47B8 3C034000 */  lui        $v1, (0x40000000 >> 16)
/* 8AB7C 800D47BC 00E21021 */  addu       $v0, $a3, $v0
/* 8AB80 800D47C0 AC430000 */  sw         $v1, 0x0($v0)
/* 8AB84 800D47C4 8D020020 */  lw         $v0, 0x20($t0)
/* 8AB88 800D47C8 27A50038 */  addiu      $a1, $sp, 0x38
/* 8AB8C 800D47CC 00E23821 */  addu       $a3, $a3, $v0
/* 8AB90 800D47D0 8CE20000 */  lw         $v0, 0x0($a3)
/* 8AB94 800D47D4 00003821 */  addu       $a3, $zero, $zero
/* 8AB98 800D47D8 AD100038 */  sw         $s0, 0x38($t0)
/* 8AB9C 800D47DC 8E490000 */  lw         $t1, 0x0($s2)
/* 8ABA0 800D47E0 8E4A0004 */  lw         $t2, 0x4($s2)
/* 8ABA4 800D47E4 8E4B0008 */  lw         $t3, 0x8($s2)
/* 8ABA8 800D47E8 AE290148 */  sw         $t1, 0x148($s1)
/* 8ABAC 800D47EC AE2A014C */  sw         $t2, 0x14C($s1)
/* 8ABB0 800D47F0 AE2B0150 */  sw         $t3, 0x150($s1)
/* 8ABB4 800D47F4 8E290148 */  lw         $t1, 0x148($s1)
/* 8ABB8 800D47F8 8E2A014C */  lw         $t2, 0x14C($s1)
/* 8ABBC 800D47FC 8E2B0150 */  lw         $t3, 0x150($s1)
/* 8ABC0 800D4800 AE290154 */  sw         $t1, 0x154($s1)
/* 8ABC4 800D4804 AE2A0158 */  sw         $t2, 0x158($s1)
/* 8ABC8 800D4808 AE2B015C */  sw         $t3, 0x15C($s1)
/* 8ABCC 800D480C AE2000D0 */  sw         $zero, 0xD0($s1)
/* 8ABD0 800D4810 AFA00038 */  sw         $zero, 0x38($sp)
/* 8ABD4 800D4814 AFA0003C */  sw         $zero, 0x3C($sp)
/* 8ABD8 800D4818 AFA00040 */  sw         $zero, 0x40($sp)
/* 8ABDC 800D481C 0C035317 */  jal        func_race_800D4C5C
/* 8ABE0 800D4820 AFA00010 */   sw        $zero, 0x10($sp)
/* 8ABE4 800D4824 26240018 */  addiu      $a0, $s1, 0x18
/* 8ABE8 800D4828 02402821 */  addu       $a1, $s2, $zero
/* 8ABEC 800D482C 0C015962 */  jal        func_80056588
/* 8ABF0 800D4830 AE3000D4 */   sw        $s0, 0xD4($s1)
/* 8ABF4 800D4834 02602021 */  addu       $a0, $s3, $zero
/* 8ABF8 800D4838 0C000F26 */  jal        func_80003C98
/* 8ABFC 800D483C 27A50018 */   addiu     $a1, $sp, 0x18
/* 8AC00 800D4840 C7A60018 */  lwc1       $f6, 0x18($sp)
/* 8AC04 800D4844 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 8AC08 800D4848 46003182 */  mul.s      $f6, $f6, $f0
/* 8AC0C 800D484C 27A20018 */  addiu      $v0, $sp, 0x18
/* 8AC10 800D4850 C4440004 */  lwc1       $f4, 0x4($v0)
/* 8AC14 800D4854 C7A0002C */  lwc1       $f0, 0x2C($sp)
/* 8AC18 800D4858 46002102 */  mul.s      $f4, $f4, $f0
/* 8AC1C 800D485C C7A20030 */  lwc1       $f2, 0x30($sp)
/* 8AC20 800D4860 C4400008 */  lwc1       $f0, 0x8($v0)
/* 8AC24 800D4864 46020002 */  mul.s      $f0, $f0, $f2
/* 8AC28 800D4868 46043180 */  add.s      $f6, $f6, $f4
/* 8AC2C 800D486C 46003180 */  add.s      $f6, $f6, $f0
/* 8AC30 800D4870 3C01800D */  lui        $at, %hi(D_race_800CA9CC)
/* 8AC34 800D4874 C422A9CC */  lwc1       $f2, %lo(D_race_800CA9CC)($at)
/* 8AC38 800D4878 4606103E */  c.le.s     $f2, $f6
/* 8AC3C 800D487C 00000000 */  nop
/* 8AC40 800D4880 45030008 */  bc1tl      .Lrace_800D48A4
/* 8AC44 800D4884 E7A20028 */   swc1      $f2, 0x28($sp)
/* 8AC48 800D4888 3C01800D */  lui        $at, %hi(D_race_800CA9D0)
/* 8AC4C 800D488C C420A9D0 */  lwc1       $f0, %lo(D_race_800CA9D0)($at)
/* 8AC50 800D4890 4600303E */  c.le.s     $f6, $f0
/* 8AC54 800D4894 00000000 */  nop
/* 8AC58 800D4898 45000005 */  bc1f       .Lrace_800D48B0
/* 8AC5C 800D489C 26240018 */   addiu     $a0, $s1, 0x18
/* 8AC60 800D48A0 E7A20028 */  swc1       $f2, 0x28($sp)
.Lrace_800D48A4:
/* 8AC64 800D48A4 AFA0002C */  sw         $zero, 0x2C($sp)
/* 8AC68 800D48A8 AFA00030 */  sw         $zero, 0x30($sp)
/* 8AC6C 800D48AC 26240018 */  addiu      $a0, $s1, 0x18
.Lrace_800D48B0:
/* 8AC70 800D48B0 27A50018 */  addiu      $a1, $sp, 0x18
/* 8AC74 800D48B4 0C015729 */  jal        func_80055CA4
/* 8AC78 800D48B8 27A60028 */   addiu     $a2, $sp, 0x28
/* 8AC7C 800D48BC 8FBF0060 */  lw         $ra, 0x60($sp)
/* 8AC80 800D48C0 8FB3005C */  lw         $s3, 0x5C($sp)
/* 8AC84 800D48C4 8FB20058 */  lw         $s2, 0x58($sp)
/* 8AC88 800D48C8 8FB10054 */  lw         $s1, 0x54($sp)
/* 8AC8C 800D48CC 8FB00050 */  lw         $s0, 0x50($sp)
/* 8AC90 800D48D0 03E00008 */  jr         $ra
/* 8AC94 800D48D4 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_800D48D8
/* 8AC98 800D48D8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 8AC9C 800D48DC AFB00030 */  sw         $s0, 0x30($sp)
/* 8ACA0 800D48E0 00808021 */  addu       $s0, $a0, $zero
/* 8ACA4 800D48E4 AFBF004C */  sw         $ra, 0x4C($sp)
/* 8ACA8 800D48E8 AFB60048 */  sw         $s6, 0x48($sp)
/* 8ACAC 800D48EC AFB50044 */  sw         $s5, 0x44($sp)
/* 8ACB0 800D48F0 AFB40040 */  sw         $s4, 0x40($sp)
/* 8ACB4 800D48F4 AFB3003C */  sw         $s3, 0x3C($sp)
/* 8ACB8 800D48F8 AFB20038 */  sw         $s2, 0x38($sp)
/* 8ACBC 800D48FC AFB10034 */  sw         $s1, 0x34($sp)
/* 8ACC0 800D4900 8E030010 */  lw         $v1, 0x10($s0)
/* 8ACC4 800D4904 00A0A821 */  addu       $s5, $a1, $zero
/* 8ACC8 800D4908 8C620008 */  lw         $v0, 0x8($v1)
/* 8ACCC 800D490C 8E0500D0 */  lw         $a1, 0xD0($s0)
/* 8ACD0 800D4910 84440038 */  lh         $a0, 0x38($v0)
/* 8ACD4 800D4914 8C42003C */  lw         $v0, 0x3C($v0)
/* 8ACD8 800D4918 0040F809 */  jalr       $v0
/* 8ACDC 800D491C 00642021 */   addu      $a0, $v1, $a0
/* 8ACE0 800D4920 C6000154 */  lwc1       $f0, 0x154($s0)
/* 8ACE4 800D4924 C6020148 */  lwc1       $f2, 0x148($s0)
/* 8ACE8 800D4928 26130154 */  addiu      $s3, $s0, 0x154
/* 8ACEC 800D492C 46020001 */  sub.s      $f0, $f0, $f2
/* 8ACF0 800D4930 26030148 */  addiu      $v1, $s0, 0x148
/* 8ACF4 800D4934 26160018 */  addiu      $s6, $s0, 0x18
/* 8ACF8 800D4938 E7A00010 */  swc1       $f0, 0x10($sp)
/* 8ACFC 800D493C C6600004 */  lwc1       $f0, 0x4($s3)
/* 8AD00 800D4940 C4620004 */  lwc1       $f2, 0x4($v1)
/* 8AD04 800D4944 02C02021 */  addu       $a0, $s6, $zero
/* 8AD08 800D4948 46020001 */  sub.s      $f0, $f0, $f2
/* 8AD0C 800D494C 27B10010 */  addiu      $s1, $sp, 0x10
/* 8AD10 800D4950 02202821 */  addu       $a1, $s1, $zero
/* 8AD14 800D4954 E6200004 */  swc1       $f0, 0x4($s1)
/* 8AD18 800D4958 C6600008 */  lwc1       $f0, 0x8($s3)
/* 8AD1C 800D495C C4620008 */  lwc1       $f2, 0x8($v1)
/* 8AD20 800D4960 27B20020 */  addiu      $s2, $sp, 0x20
/* 8AD24 800D4964 46020001 */  sub.s      $f0, $f0, $f2
/* 8AD28 800D4968 02403021 */  addu       $a2, $s2, $zero
/* 8AD2C 800D496C 0040A021 */  addu       $s4, $v0, $zero
/* 8AD30 800D4970 0C015892 */  jal        func_80056248
/* 8AD34 800D4974 E6200008 */   swc1      $f0, 0x8($s1)
/* 8AD38 800D4978 3C01800D */  lui        $at, %hi(D_race_800CA9D4)
/* 8AD3C 800D497C C424A9D4 */  lwc1       $f4, %lo(D_race_800CA9D4)($at)
/* 8AD40 800D4980 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 8AD44 800D4984 46043182 */  mul.s      $f6, $f6, $f4
/* 8AD48 800D4988 C7A20024 */  lwc1       $f2, 0x24($sp)
/* 8AD4C 800D498C 46041082 */  mul.s      $f2, $f2, $f4
/* 8AD50 800D4990 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 8AD54 800D4994 46040002 */  mul.s      $f0, $f0, $f4
/* 8AD58 800D4998 E7A60020 */  swc1       $f6, 0x20($sp)
/* 8AD5C 800D499C E7A20024 */  swc1       $f2, 0x24($sp)
/* 8AD60 800D49A0 E7A00028 */  swc1       $f0, 0x28($sp)
/* 8AD64 800D49A4 8E82000C */  lw         $v0, 0xC($s4)
/* 8AD68 800D49A8 02402821 */  addu       $a1, $s2, $zero
/* 8AD6C 800D49AC 84440090 */  lh         $a0, 0x90($v0)
/* 8AD70 800D49B0 8C420094 */  lw         $v0, 0x94($v0)
/* 8AD74 800D49B4 0040F809 */  jalr       $v0
/* 8AD78 800D49B8 02842021 */   addu      $a0, $s4, $a0
/* 8AD7C 800D49BC C6A00000 */  lwc1       $f0, 0x0($s5)
/* 8AD80 800D49C0 C6020154 */  lwc1       $f2, 0x154($s0)
/* 8AD84 800D49C4 46020001 */  sub.s      $f0, $f0, $f2
/* 8AD88 800D49C8 E7A00010 */  swc1       $f0, 0x10($sp)
/* 8AD8C 800D49CC C6A00004 */  lwc1       $f0, 0x4($s5)
/* 8AD90 800D49D0 C6620004 */  lwc1       $f2, 0x4($s3)
/* 8AD94 800D49D4 46020001 */  sub.s      $f0, $f0, $f2
/* 8AD98 800D49D8 E6200004 */  swc1       $f0, 0x4($s1)
/* 8AD9C 800D49DC C6A00008 */  lwc1       $f0, 0x8($s5)
/* 8ADA0 800D49E0 C6620008 */  lwc1       $f2, 0x8($s3)
/* 8ADA4 800D49E4 02C02021 */  addu       $a0, $s6, $zero
/* 8ADA8 800D49E8 46020001 */  sub.s      $f0, $f0, $f2
/* 8ADAC 800D49EC 02202821 */  addu       $a1, $s1, $zero
/* 8ADB0 800D49F0 02403021 */  addu       $a2, $s2, $zero
/* 8ADB4 800D49F4 0C015892 */  jal        func_80056248
/* 8ADB8 800D49F8 E6200008 */   swc1      $f0, 0x8($s1)
/* 8ADBC 800D49FC 3C01800D */  lui        $at, %hi(D_race_800CA9D8)
/* 8ADC0 800D4A00 C420A9D8 */  lwc1       $f0, %lo(D_race_800CA9D8)($at)
/* 8ADC4 800D4A04 02402821 */  addu       $a1, $s2, $zero
/* 8ADC8 800D4A08 AFA00010 */  sw         $zero, 0x10($sp)
/* 8ADCC 800D4A0C AFA00014 */  sw         $zero, 0x14($sp)
/* 8ADD0 800D4A10 E7A00018 */  swc1       $f0, 0x18($sp)
/* 8ADD4 800D4A14 8E82000C */  lw         $v0, 0xC($s4)
/* 8ADD8 800D4A18 02203021 */  addu       $a2, $s1, $zero
/* 8ADDC 800D4A1C 84440058 */  lh         $a0, 0x58($v0)
/* 8ADE0 800D4A20 8C42005C */  lw         $v0, 0x5C($v0)
/* 8ADE4 800D4A24 0040F809 */  jalr       $v0
/* 8ADE8 800D4A28 02842021 */   addu      $a0, $s4, $a0
/* 8ADEC 800D4A2C 8E0200D0 */  lw         $v0, 0xD0($s0)
/* 8ADF0 800D4A30 24420001 */  addiu      $v0, $v0, 0x1
/* 8ADF4 800D4A34 AE0200D0 */  sw         $v0, 0xD0($s0)
/* 8ADF8 800D4A38 8EA70000 */  lw         $a3, 0x0($s5)
/* 8ADFC 800D4A3C 8EA80004 */  lw         $t0, 0x4($s5)
/* 8AE00 800D4A40 8EA90008 */  lw         $t1, 0x8($s5)
/* 8AE04 800D4A44 AE070154 */  sw         $a3, 0x154($s0)
/* 8AE08 800D4A48 AE080158 */  sw         $t0, 0x158($s0)
/* 8AE0C 800D4A4C AE09015C */  sw         $t1, 0x15C($s0)
/* 8AE10 800D4A50 8E020140 */  lw         $v0, 0x140($s0)
/* 8AE14 800D4A54 2403FFFB */  addiu      $v1, $zero, -0x5
/* 8AE18 800D4A58 00431024 */  and        $v0, $v0, $v1
/* 8AE1C 800D4A5C AE020140 */  sw         $v0, 0x140($s0)
/* 8AE20 800D4A60 8FBF004C */  lw         $ra, 0x4C($sp)
/* 8AE24 800D4A64 8FB60048 */  lw         $s6, 0x48($sp)
/* 8AE28 800D4A68 8FB50044 */  lw         $s5, 0x44($sp)
/* 8AE2C 800D4A6C 8FB40040 */  lw         $s4, 0x40($sp)
/* 8AE30 800D4A70 8FB3003C */  lw         $s3, 0x3C($sp)
/* 8AE34 800D4A74 8FB20038 */  lw         $s2, 0x38($sp)
/* 8AE38 800D4A78 8FB10034 */  lw         $s1, 0x34($sp)
/* 8AE3C 800D4A7C 8FB00030 */  lw         $s0, 0x30($sp)
/* 8AE40 800D4A80 03E00008 */  jr         $ra
/* 8AE44 800D4A84 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800D4A88
/* 8AE48 800D4A88 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8AE4C 800D4A8C AFB00028 */  sw         $s0, 0x28($sp)
/* 8AE50 800D4A90 00808021 */  addu       $s0, $a0, $zero
/* 8AE54 800D4A94 AFB20030 */  sw         $s2, 0x30($sp)
/* 8AE58 800D4A98 00A09021 */  addu       $s2, $a1, $zero
/* 8AE5C 800D4A9C AFBF0034 */  sw         $ra, 0x34($sp)
/* 8AE60 800D4AA0 AFB1002C */  sw         $s1, 0x2C($sp)
/* 8AE64 800D4AA4 C6440000 */  lwc1       $f4, 0x0($s2)
/* 8AE68 800D4AA8 C6000154 */  lwc1       $f0, 0x154($s0)
/* 8AE6C 800D4AAC 46002101 */  sub.s      $f4, $f4, $f0
/* 8AE70 800D4AB0 46042102 */  mul.s      $f4, $f4, $f4
/* 8AE74 800D4AB4 26020154 */  addiu      $v0, $s0, 0x154
/* 8AE78 800D4AB8 C6460004 */  lwc1       $f6, 0x4($s2)
/* 8AE7C 800D4ABC C4400004 */  lwc1       $f0, 0x4($v0)
/* 8AE80 800D4AC0 46003181 */  sub.s      $f6, $f6, $f0
/* 8AE84 800D4AC4 46063182 */  mul.s      $f6, $f6, $f6
/* 8AE88 800D4AC8 C4420008 */  lwc1       $f2, 0x8($v0)
/* 8AE8C 800D4ACC C6400008 */  lwc1       $f0, 0x8($s2)
/* 8AE90 800D4AD0 46020001 */  sub.s      $f0, $f0, $f2
/* 8AE94 800D4AD4 46000002 */  mul.s      $f0, $f0, $f0
/* 8AE98 800D4AD8 46062100 */  add.s      $f4, $f4, $f6
/* 8AE9C 800D4ADC 46002300 */  add.s      $f12, $f4, $f0
/* 8AEA0 800D4AE0 3C01800D */  lui        $at, %hi(D_race_800CA9DC)
/* 8AEA4 800D4AE4 C420A9DC */  lwc1       $f0, %lo(D_race_800CA9DC)($at)
/* 8AEA8 800D4AE8 4600603C */  c.lt.s     $f12, $f0
/* 8AEAC 800D4AEC 00000000 */  nop
/* 8AEB0 800D4AF0 4501002C */  bc1t       .Lrace_800D4BA4
/* 8AEB4 800D4AF4 00000000 */   nop
/* 8AEB8 800D4AF8 46006004 */  sqrt.s     $f0, $f12
/* 8AEBC 800D4AFC 46000032 */  c.eq.s     $f0, $f0
/* 8AEC0 800D4B00 00000000 */  nop
/* 8AEC4 800D4B04 45030004 */  bc1tl      .Lrace_800D4B18
/* 8AEC8 800D4B08 02002021 */   addu      $a0, $s0, $zero
/* 8AECC 800D4B0C 0C006BC8 */  jal        sqrt
/* 8AED0 800D4B10 00000000 */   nop
/* 8AED4 800D4B14 02002021 */  addu       $a0, $s0, $zero
.Lrace_800D4B18:
/* 8AED8 800D4B18 27A50018 */  addiu      $a1, $sp, 0x18
/* 8AEDC 800D4B1C 26110160 */  addiu      $s1, $s0, 0x160
/* 8AEE0 800D4B20 E7A00018 */  swc1       $f0, 0x18($sp)
/* 8AEE4 800D4B24 AFA0001C */  sw         $zero, 0x1C($sp)
/* 8AEE8 800D4B28 AFA00020 */  sw         $zero, 0x20($sp)
/* 8AEEC 800D4B2C AFA00010 */  sw         $zero, 0x10($sp)
/* 8AEF0 800D4B30 8E0700D4 */  lw         $a3, 0xD4($s0)
/* 8AEF4 800D4B34 0C035317 */  jal        func_race_800D4C5C
/* 8AEF8 800D4B38 02203021 */   addu      $a2, $s1, $zero
/* 8AEFC 800D4B3C 0C0353CF */  jal        func_race_800D4F3C
/* 8AF00 800D4B40 02002021 */   addu      $a0, $s0, $zero
/* 8AF04 800D4B44 8E020014 */  lw         $v0, 0x14($s0)
/* 8AF08 800D4B48 8C420004 */  lw         $v0, 0x4($v0)
/* 8AF0C 800D4B4C 30420008 */  andi       $v0, $v0, 0x8
/* 8AF10 800D4B50 1040000F */  beqz       $v0, .Lrace_800D4B90
/* 8AF14 800D4B54 00000000 */   nop
/* 8AF18 800D4B58 8E0200D4 */  lw         $v0, 0xD4($s0)
/* 8AF1C 800D4B5C 8E03013C */  lw         $v1, 0x13C($s0)
/* 8AF20 800D4B60 24420001 */  addiu      $v0, $v0, 0x1
/* 8AF24 800D4B64 0062182B */  sltu       $v1, $v1, $v0
/* 8AF28 800D4B68 10600009 */  beqz       $v1, .Lrace_800D4B90
/* 8AF2C 800D4B6C AE0200D4 */   sw        $v0, 0xD4($s0)
/* 8AF30 800D4B70 02002021 */  addu       $a0, $s0, $zero
/* 8AF34 800D4B74 27A50018 */  addiu      $a1, $sp, 0x18
/* 8AF38 800D4B78 02203021 */  addu       $a2, $s1, $zero
/* 8AF3C 800D4B7C 00003821 */  addu       $a3, $zero, $zero
/* 8AF40 800D4B80 0C035317 */  jal        func_race_800D4C5C
/* 8AF44 800D4B84 AFA00010 */   sw        $zero, 0x10($sp)
/* 8AF48 800D4B88 24020001 */  addiu      $v0, $zero, 0x1
/* 8AF4C 800D4B8C AE0200D4 */  sw         $v0, 0xD4($s0)
.Lrace_800D4B90:
/* 8AF50 800D4B90 0C035479 */  jal        func_race_800D51E4
/* 8AF54 800D4B94 02002021 */   addu      $a0, $s0, $zero
/* 8AF58 800D4B98 02002021 */  addu       $a0, $s0, $zero
/* 8AF5C 800D4B9C 0C035236 */  jal        func_race_800D48D8
/* 8AF60 800D4BA0 02402821 */   addu      $a1, $s2, $zero
.Lrace_800D4BA4:
/* 8AF64 800D4BA4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8AF68 800D4BA8 8FB20030 */  lw         $s2, 0x30($sp)
/* 8AF6C 800D4BAC 8FB1002C */  lw         $s1, 0x2C($sp)
/* 8AF70 800D4BB0 8FB00028 */  lw         $s0, 0x28($sp)
/* 8AF74 800D4BB4 03E00008 */  jr         $ra
/* 8AF78 800D4BB8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800D4BBC
/* 8AF7C 800D4BBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8AF80 800D4BC0 AFB00010 */  sw         $s0, 0x10($sp)
/* 8AF84 800D4BC4 00808021 */  addu       $s0, $a0, $zero
/* 8AF88 800D4BC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8AF8C 800D4BCC 8E0200C8 */  lw         $v0, 0xC8($s0)
/* 8AF90 800D4BD0 1040000F */  beqz       $v0, .Lrace_800D4C10
/* 8AF94 800D4BD4 00000000 */   nop
/* 8AF98 800D4BD8 0C035479 */  jal        func_race_800D51E4
/* 8AF9C 800D4BDC 00000000 */   nop
/* 8AFA0 800D4BE0 8E040004 */  lw         $a0, 0x4($s0)
/* 8AFA4 800D4BE4 8E0200CC */  lw         $v0, 0xCC($s0)
/* 8AFA8 800D4BE8 8C830020 */  lw         $v1, 0x20($a0)
/* 8AFAC 800D4BEC 00021080 */  sll        $v0, $v0, 2
/* 8AFB0 800D4BF0 00431021 */  addu       $v0, $v0, $v1
/* 8AFB4 800D4BF4 3C036000 */  lui        $v1, (0x60000000 >> 16)
/* 8AFB8 800D4BF8 AC430000 */  sw         $v1, 0x0($v0)
/* 8AFBC 800D4BFC 24020001 */  addiu      $v0, $zero, 0x1
/* 8AFC0 800D4C00 AC820038 */  sw         $v0, 0x38($a0)
/* 8AFC4 800D4C04 8E020140 */  lw         $v0, 0x140($s0)
/* 8AFC8 800D4C08 34420001 */  ori        $v0, $v0, 0x1
/* 8AFCC 800D4C0C AE020140 */  sw         $v0, 0x140($s0)
.Lrace_800D4C10:
/* 8AFD0 800D4C10 8E030004 */  lw         $v1, 0x4($s0)
/* 8AFD4 800D4C14 8C62003C */  lw         $v0, 0x3C($v1)
/* 8AFD8 800D4C18 00002821 */  addu       $a1, $zero, $zero
/* 8AFDC 800D4C1C 84440070 */  lh         $a0, 0x70($v0)
/* 8AFE0 800D4C20 8C420074 */  lw         $v0, 0x74($v0)
/* 8AFE4 800D4C24 0040F809 */  jalr       $v0
/* 8AFE8 800D4C28 00642021 */   addu      $a0, $v1, $a0
/* 8AFEC 800D4C2C 8E020004 */  lw         $v0, 0x4($s0)
/* 8AFF0 800D4C30 8C43003C */  lw         $v1, 0x3C($v0)
/* 8AFF4 800D4C34 84640060 */  lh         $a0, 0x60($v1)
/* 8AFF8 800D4C38 00002821 */  addu       $a1, $zero, $zero
/* 8AFFC 800D4C3C 00442021 */  addu       $a0, $v0, $a0
/* 8B000 800D4C40 8C620064 */  lw         $v0, 0x64($v1)
/* 8B004 800D4C44 0040F809 */  jalr       $v0
/* 8B008 800D4C48 00A03021 */   addu      $a2, $a1, $zero
/* 8B00C 800D4C4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8B010 800D4C50 8FB00010 */  lw         $s0, 0x10($sp)
/* 8B014 800D4C54 03E00008 */  jr         $ra
/* 8B018 800D4C58 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D4C5C
/* 8B01C 800D4C5C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 8B020 800D4C60 AFB00028 */  sw         $s0, 0x28($sp)
/* 8B024 800D4C64 00808021 */  addu       $s0, $a0, $zero
/* 8B028 800D4C68 AFB5003C */  sw         $s5, 0x3C($sp)
/* 8B02C 800D4C6C 00A0A821 */  addu       $s5, $a1, $zero
/* 8B030 800D4C70 AFB1002C */  sw         $s1, 0x2C($sp)
/* 8B034 800D4C74 8FB10060 */  lw         $s1, 0x60($sp)
/* 8B038 800D4C78 44870000 */  mtc1       $a3, $f0
/* 8B03C 800D4C7C 46800020 */  cvt.s.w    $f0, $f0
/* 8B040 800D4C80 AFBF0044 */  sw         $ra, 0x44($sp)
/* 8B044 800D4C84 AFB60040 */  sw         $s6, 0x40($sp)
/* 8B048 800D4C88 AFB40038 */  sw         $s4, 0x38($sp)
/* 8B04C 800D4C8C AFB30034 */  sw         $s3, 0x34($sp)
/* 8B050 800D4C90 AFB20030 */  sw         $s2, 0x30($sp)
/* 8B054 800D4C94 F7B40048 */  sdc1       $f20, 0x48($sp)
/* 8B058 800D4C98 E7A00024 */  swc1       $f0, 0x24($sp)
/* 8B05C 800D4C9C 8E0400B4 */  lw         $a0, 0xB4($s0)
/* 8B060 800D4CA0 8E0300E8 */  lw         $v1, 0xE8($s0)
/* 8B064 800D4CA4 00831021 */  addu       $v0, $a0, $v1
/* 8B068 800D4CA8 00431021 */  addu       $v0, $v0, $v1
/* 8B06C 800D4CAC 2C420020 */  sltiu      $v0, $v0, 0x20
/* 8B070 800D4CB0 14400005 */  bnez       $v0, .Lrace_800D4CC8
/* 8B074 800D4CB4 00C0B021 */   addu      $s6, $a2, $zero
/* 8B078 800D4CB8 0C0353F0 */  jal        func_race_800D4FC0
/* 8B07C 800D4CBC 02002021 */   addu      $a0, $s0, $zero
/* 8B080 800D4CC0 08035337 */  j          .Lrace_800D4CDC
/* 8B084 800D4CC4 00000000 */   nop
.Lrace_800D4CC8:
/* 8B088 800D4CC8 8E0200B4 */  lw         $v0, 0xB4($s0)
/* 8B08C 800D4CCC 8E0300E8 */  lw         $v1, 0xE8($s0)
/* 8B090 800D4CD0 AE0400B8 */  sw         $a0, 0xB8($s0)
/* 8B094 800D4CD4 00431021 */  addu       $v0, $v0, $v1
/* 8B098 800D4CD8 AE0200B4 */  sw         $v0, 0xB4($s0)
.Lrace_800D4CDC:
/* 8B09C 800D4CDC 8E020140 */  lw         $v0, 0x140($s0)
/* 8B0A0 800D4CE0 30420002 */  andi       $v0, $v0, 0x2
/* 8B0A4 800D4CE4 1040004E */  beqz       $v0, .Lrace_800D4E20
/* 8B0A8 800D4CE8 00000000 */   nop
/* 8B0AC 800D4CEC 8E0200E8 */  lw         $v0, 0xE8($s0)
/* 8B0B0 800D4CF0 10400087 */  beqz       $v0, .Lrace_800D4F10
/* 8B0B4 800D4CF4 00009021 */   addu      $s2, $zero, $zero
/* 8B0B8 800D4CF8 00111040 */  sll        $v0, $s1, 1
/* 8B0BC 800D4CFC 00511021 */  addu       $v0, $v0, $s1
/* 8B0C0 800D4D00 0002A080 */  sll        $s4, $v0, 2
/* 8B0C4 800D4D04 3C01800D */  lui        $at, %hi(D_race_800CA9E0)
/* 8B0C8 800D4D08 C434A9E0 */  lwc1       $f20, %lo(D_race_800CA9E0)($at)
/* 8B0CC 800D4D0C 02009821 */  addu       $s3, $s0, $zero
/* 8B0D0 800D4D10 02008821 */  addu       $s1, $s0, $zero
.Lrace_800D4D14:
/* 8B0D4 800D4D14 C6A60000 */  lwc1       $f6, 0x0($s5)
/* 8B0D8 800D4D18 8E020144 */  lw         $v0, 0x144($s0)
/* 8B0DC 800D4D1C C62000EC */  lwc1       $f0, 0xEC($s1)
/* 8B0E0 800D4D20 02821021 */  addu       $v0, $s4, $v0
/* 8B0E4 800D4D24 46003180 */  add.s      $f6, $f6, $f0
/* 8B0E8 800D4D28 C4400000 */  lwc1       $f0, 0x0($v0)
/* 8B0EC 800D4D2C 46003180 */  add.s      $f6, $f6, $f0
/* 8B0F0 800D4D30 E7A60010 */  swc1       $f6, 0x10($sp)
/* 8B0F4 800D4D34 46143182 */  mul.s      $f6, $f6, $f20
/* 8B0F8 800D4D38 C6A20004 */  lwc1       $f2, 0x4($s5)
/* 8B0FC 800D4D3C 8E020144 */  lw         $v0, 0x144($s0)
/* 8B100 800D4D40 C62000F0 */  lwc1       $f0, 0xF0($s1)
/* 8B104 800D4D44 02821021 */  addu       $v0, $s4, $v0
/* 8B108 800D4D48 46001080 */  add.s      $f2, $f2, $f0
/* 8B10C 800D4D4C C4400004 */  lwc1       $f0, 0x4($v0)
/* 8B110 800D4D50 46001080 */  add.s      $f2, $f2, $f0
/* 8B114 800D4D54 E7A20014 */  swc1       $f2, 0x14($sp)
/* 8B118 800D4D58 46141082 */  mul.s      $f2, $f2, $f20
/* 8B11C 800D4D5C C6A40008 */  lwc1       $f4, 0x8($s5)
/* 8B120 800D4D60 8E020144 */  lw         $v0, 0x144($s0)
/* 8B124 800D4D64 C62000F4 */  lwc1       $f0, 0xF4($s1)
/* 8B128 800D4D68 02821021 */  addu       $v0, $s4, $v0
/* 8B12C 800D4D6C 46002100 */  add.s      $f4, $f4, $f0
/* 8B130 800D4D70 C4400008 */  lwc1       $f0, 0x8($v0)
/* 8B134 800D4D74 46002100 */  add.s      $f4, $f4, $f0
/* 8B138 800D4D78 27A60010 */  addiu      $a2, $sp, 0x10
/* 8B13C 800D4D7C 46142002 */  mul.s      $f0, $f4, $f20
/* 8B140 800D4D80 26520001 */  addiu      $s2, $s2, 0x1
/* 8B144 800D4D84 E7A60010 */  swc1       $f6, 0x10($sp)
/* 8B148 800D4D88 E7A20014 */  swc1       $f2, 0x14($sp)
/* 8B14C 800D4D8C E7A40018 */  swc1       $f4, 0x18($sp)
/* 8B150 800D4D90 E7A00018 */  swc1       $f0, 0x18($sp)
/* 8B154 800D4D94 8E030008 */  lw         $v1, 0x8($s0)
/* 8B158 800D4D98 2631000C */  addiu      $s1, $s1, 0xC
/* 8B15C 800D4D9C 8C620008 */  lw         $v0, 0x8($v1)
/* 8B160 800D4DA0 8E0500BC */  lw         $a1, 0xBC($s0)
/* 8B164 800D4DA4 84440050 */  lh         $a0, 0x50($v0)
/* 8B168 800D4DA8 8C420054 */  lw         $v0, 0x54($v0)
/* 8B16C 800D4DAC 0040F809 */  jalr       $v0
/* 8B170 800D4DB0 00642021 */   addu      $a0, $v1, $a0
/* 8B174 800D4DB4 8E030008 */  lw         $v1, 0x8($s0)
/* 8B178 800D4DB8 02C03021 */  addu       $a2, $s6, $zero
/* 8B17C 800D4DBC 8C620008 */  lw         $v0, 0x8($v1)
/* 8B180 800D4DC0 8E0500BC */  lw         $a1, 0xBC($s0)
/* 8B184 800D4DC4 84440068 */  lh         $a0, 0x68($v0)
/* 8B188 800D4DC8 8C42006C */  lw         $v0, 0x6C($v0)
/* 8B18C 800D4DCC 0040F809 */  jalr       $v0
/* 8B190 800D4DD0 00642021 */   addu      $a0, $v1, $a0
/* 8B194 800D4DD4 C6600128 */  lwc1       $f0, 0x128($s3)
/* 8B198 800D4DD8 27A60020 */  addiu      $a2, $sp, 0x20
/* 8B19C 800D4DDC E7A00020 */  swc1       $f0, 0x20($sp)
/* 8B1A0 800D4DE0 8E070008 */  lw         $a3, 0x8($s0)
/* 8B1A4 800D4DE4 8E0200BC */  lw         $v0, 0xBC($s0)
/* 8B1A8 800D4DE8 8CE30008 */  lw         $v1, 0x8($a3)
/* 8B1AC 800D4DEC 00402821 */  addu       $a1, $v0, $zero
/* 8B1B0 800D4DF0 84640058 */  lh         $a0, 0x58($v1)
/* 8B1B4 800D4DF4 24420001 */  addiu      $v0, $v0, 0x1
/* 8B1B8 800D4DF8 AE0200BC */  sw         $v0, 0xBC($s0)
/* 8B1BC 800D4DFC 8C62005C */  lw         $v0, 0x5C($v1)
/* 8B1C0 800D4E00 0040F809 */  jalr       $v0
/* 8B1C4 800D4E04 00E42021 */   addu      $a0, $a3, $a0
/* 8B1C8 800D4E08 8E0200E8 */  lw         $v0, 0xE8($s0)
/* 8B1CC 800D4E0C 0242102B */  sltu       $v0, $s2, $v0
/* 8B1D0 800D4E10 1440FFC0 */  bnez       $v0, .Lrace_800D4D14
/* 8B1D4 800D4E14 26730004 */   addiu     $s3, $s3, 0x4
/* 8B1D8 800D4E18 080353C4 */  j          .Lrace_800D4F10
/* 8B1DC 800D4E1C 00000000 */   nop
.Lrace_800D4E20:
/* 8B1E0 800D4E20 8E0200E8 */  lw         $v0, 0xE8($s0)
/* 8B1E4 800D4E24 1040003A */  beqz       $v0, .Lrace_800D4F10
/* 8B1E8 800D4E28 00009021 */   addu      $s2, $zero, $zero
/* 8B1EC 800D4E2C 3C01800D */  lui        $at, %hi(D_race_800CA9E4)
/* 8B1F0 800D4E30 C434A9E4 */  lwc1       $f20, %lo(D_race_800CA9E4)($at)
/* 8B1F4 800D4E34 02009821 */  addu       $s3, $s0, $zero
/* 8B1F8 800D4E38 02008821 */  addu       $s1, $s0, $zero
.Lrace_800D4E3C:
/* 8B1FC 800D4E3C C6A20000 */  lwc1       $f2, 0x0($s5)
/* 8B200 800D4E40 C62000EC */  lwc1       $f0, 0xEC($s1)
/* 8B204 800D4E44 46001080 */  add.s      $f2, $f2, $f0
/* 8B208 800D4E48 46141182 */  mul.s      $f6, $f2, $f20
/* 8B20C 800D4E4C E7A20010 */  swc1       $f2, 0x10($sp)
/* 8B210 800D4E50 C6A20004 */  lwc1       $f2, 0x4($s5)
/* 8B214 800D4E54 C62000F0 */  lwc1       $f0, 0xF0($s1)
/* 8B218 800D4E58 46001080 */  add.s      $f2, $f2, $f0
/* 8B21C 800D4E5C 46141102 */  mul.s      $f4, $f2, $f20
/* 8B220 800D4E60 E7A20014 */  swc1       $f2, 0x14($sp)
/* 8B224 800D4E64 C6A20008 */  lwc1       $f2, 0x8($s5)
/* 8B228 800D4E68 C62000F4 */  lwc1       $f0, 0xF4($s1)
/* 8B22C 800D4E6C 46001080 */  add.s      $f2, $f2, $f0
/* 8B230 800D4E70 27A60010 */  addiu      $a2, $sp, 0x10
/* 8B234 800D4E74 46141002 */  mul.s      $f0, $f2, $f20
/* 8B238 800D4E78 26520001 */  addiu      $s2, $s2, 0x1
/* 8B23C 800D4E7C E7A60010 */  swc1       $f6, 0x10($sp)
/* 8B240 800D4E80 E7A20018 */  swc1       $f2, 0x18($sp)
/* 8B244 800D4E84 E7A40014 */  swc1       $f4, 0x14($sp)
/* 8B248 800D4E88 E7A00018 */  swc1       $f0, 0x18($sp)
/* 8B24C 800D4E8C 8E030008 */  lw         $v1, 0x8($s0)
/* 8B250 800D4E90 2631000C */  addiu      $s1, $s1, 0xC
/* 8B254 800D4E94 8C620008 */  lw         $v0, 0x8($v1)
/* 8B258 800D4E98 8E0500BC */  lw         $a1, 0xBC($s0)
/* 8B25C 800D4E9C 84440050 */  lh         $a0, 0x50($v0)
/* 8B260 800D4EA0 8C420054 */  lw         $v0, 0x54($v0)
/* 8B264 800D4EA4 0040F809 */  jalr       $v0
/* 8B268 800D4EA8 00642021 */   addu      $a0, $v1, $a0
/* 8B26C 800D4EAC 8E030008 */  lw         $v1, 0x8($s0)
/* 8B270 800D4EB0 02C03021 */  addu       $a2, $s6, $zero
/* 8B274 800D4EB4 8C620008 */  lw         $v0, 0x8($v1)
/* 8B278 800D4EB8 8E0500BC */  lw         $a1, 0xBC($s0)
/* 8B27C 800D4EBC 84440068 */  lh         $a0, 0x68($v0)
/* 8B280 800D4EC0 8C42006C */  lw         $v0, 0x6C($v0)
/* 8B284 800D4EC4 0040F809 */  jalr       $v0
/* 8B288 800D4EC8 00642021 */   addu      $a0, $v1, $a0
/* 8B28C 800D4ECC C6600128 */  lwc1       $f0, 0x128($s3)
/* 8B290 800D4ED0 27A60020 */  addiu      $a2, $sp, 0x20
/* 8B294 800D4ED4 E7A00020 */  swc1       $f0, 0x20($sp)
/* 8B298 800D4ED8 8E070008 */  lw         $a3, 0x8($s0)
/* 8B29C 800D4EDC 8E0200BC */  lw         $v0, 0xBC($s0)
/* 8B2A0 800D4EE0 8CE30008 */  lw         $v1, 0x8($a3)
/* 8B2A4 800D4EE4 00402821 */  addu       $a1, $v0, $zero
/* 8B2A8 800D4EE8 84640058 */  lh         $a0, 0x58($v1)
/* 8B2AC 800D4EEC 24420001 */  addiu      $v0, $v0, 0x1
/* 8B2B0 800D4EF0 AE0200BC */  sw         $v0, 0xBC($s0)
/* 8B2B4 800D4EF4 8C62005C */  lw         $v0, 0x5C($v1)
/* 8B2B8 800D4EF8 0040F809 */  jalr       $v0
/* 8B2BC 800D4EFC 00E42021 */   addu      $a0, $a3, $a0
/* 8B2C0 800D4F00 8E0200E8 */  lw         $v0, 0xE8($s0)
/* 8B2C4 800D4F04 0242102B */  sltu       $v0, $s2, $v0
/* 8B2C8 800D4F08 1440FFCC */  bnez       $v0, .Lrace_800D4E3C
/* 8B2CC 800D4F0C 26730004 */   addiu     $s3, $s3, 0x4
.Lrace_800D4F10:
/* 8B2D0 800D4F10 8FBF0044 */  lw         $ra, 0x44($sp)
/* 8B2D4 800D4F14 8FB60040 */  lw         $s6, 0x40($sp)
/* 8B2D8 800D4F18 8FB5003C */  lw         $s5, 0x3C($sp)
/* 8B2DC 800D4F1C 8FB40038 */  lw         $s4, 0x38($sp)
/* 8B2E0 800D4F20 8FB30034 */  lw         $s3, 0x34($sp)
/* 8B2E4 800D4F24 8FB20030 */  lw         $s2, 0x30($sp)
/* 8B2E8 800D4F28 8FB1002C */  lw         $s1, 0x2C($sp)
/* 8B2EC 800D4F2C 8FB00028 */  lw         $s0, 0x28($sp)
/* 8B2F0 800D4F30 D7B40048 */  ldc1       $f20, 0x48($sp)
/* 8B2F4 800D4F34 03E00008 */  jr         $ra
/* 8B2F8 800D4F38 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800D4F3C
/* 8B2FC 800D4F3C 00803021 */  addu       $a2, $a0, $zero
/* 8B300 800D4F40 00002821 */  addu       $a1, $zero, $zero
/* 8B304 800D4F44 8CC200E4 */  lw         $v0, 0xE4($a2)
/* 8B308 800D4F48 8CC300C8 */  lw         $v1, 0xC8($a2)
/* 8B30C 800D4F4C 8CC400E4 */  lw         $a0, 0xE4($a2)
/* 8B310 800D4F50 00021040 */  sll        $v0, $v0, 1
/* 8B314 800D4F54 00621021 */  addu       $v0, $v1, $v0
/* 8B318 800D4F58 ACC200C8 */  sw         $v0, 0xC8($a2)
/* 8B31C 800D4F5C 8CC2000C */  lw         $v0, 0xC($a2)
/* 8B320 800D4F60 00031880 */  sll        $v1, $v1, 2
/* 8B324 800D4F64 10800014 */  beqz       $a0, .Lrace_800D4FB8
/* 8B328 800D4F68 00431021 */   addu      $v0, $v0, $v1
/* 8B32C 800D4F6C 24440001 */  addiu      $a0, $v0, 0x1
.Lrace_800D4F70:
/* 8B330 800D4F70 8CC200B4 */  lw         $v0, 0xB4($a2)
/* 8B334 800D4F74 8CC300B8 */  lw         $v1, 0xB8($a2)
/* 8B338 800D4F78 00451021 */  addu       $v0, $v0, $a1
/* 8B33C 800D4F7C A0820002 */  sb         $v0, 0x2($a0)
/* 8B340 800D4F80 24420001 */  addiu      $v0, $v0, 0x1
/* 8B344 800D4F84 00651821 */  addu       $v1, $v1, $a1
/* 8B348 800D4F88 A0820001 */  sb         $v0, 0x1($a0)
/* 8B34C 800D4F8C A0830000 */  sb         $v1, 0x0($a0)
/* 8B350 800D4F90 24840004 */  addiu      $a0, $a0, 0x4
/* 8B354 800D4F94 A0820002 */  sb         $v0, 0x2($a0)
/* 8B358 800D4F98 24620001 */  addiu      $v0, $v1, 0x1
/* 8B35C 800D4F9C A0820001 */  sb         $v0, 0x1($a0)
/* 8B360 800D4FA0 A0830000 */  sb         $v1, 0x0($a0)
/* 8B364 800D4FA4 8CC200E4 */  lw         $v0, 0xE4($a2)
/* 8B368 800D4FA8 24A50001 */  addiu      $a1, $a1, 0x1
/* 8B36C 800D4FAC 00A2102B */  sltu       $v0, $a1, $v0
/* 8B370 800D4FB0 1440FFEF */  bnez       $v0, .Lrace_800D4F70
/* 8B374 800D4FB4 24840004 */   addiu     $a0, $a0, 0x4
.Lrace_800D4FB8:
/* 8B378 800D4FB8 03E00008 */  jr         $ra
/* 8B37C 800D4FBC 00000000 */   nop

glabel func_race_800D4FC0
/* 8B380 800D4FC0 00804821 */  addu       $t1, $a0, $zero
/* 8B384 800D4FC4 8D2500BC */  lw         $a1, 0xBC($t1)
/* 8B388 800D4FC8 8D2300C0 */  lw         $v1, 0xC0($t1)
/* 8B38C 800D4FCC 8D2400C8 */  lw         $a0, 0xC8($t1)
/* 8B390 800D4FD0 8D2200C4 */  lw         $v0, 0xC4($t1)
/* 8B394 800D4FD4 00825023 */  subu       $t2, $a0, $v0
/* 8B398 800D4FD8 15400003 */  bnez       $t2, .Lrace_800D4FE8
/* 8B39C 800D4FDC 00A34023 */   subu      $t0, $a1, $v1
/* 8B3A0 800D4FE0 11000057 */  beqz       $t0, .Lrace_800D5140
/* 8B3A4 800D4FE4 00000000 */   nop
.Lrace_800D4FE8:
/* 8B3A8 800D4FE8 8D220140 */  lw         $v0, 0x140($t1)
/* 8B3AC 800D4FEC 30420004 */  andi       $v0, $v0, 0x4
/* 8B3B0 800D4FF0 14400018 */  bnez       $v0, .Lrace_800D5054
/* 8B3B4 800D4FF4 3C0700FF */   lui       $a3, (0xFFFFFF >> 16)
/* 8B3B8 800D4FF8 8D2200CC */  lw         $v0, 0xCC($t1)
/* 8B3BC 800D4FFC 8D260004 */  lw         $a2, 0x4($t1)
/* 8B3C0 800D5000 8D2500D0 */  lw         $a1, 0xD0($t1)
/* 8B3C4 800D5004 00402021 */  addu       $a0, $v0, $zero
/* 8B3C8 800D5008 24420001 */  addiu      $v0, $v0, 0x1
/* 8B3CC 800D500C 00042080 */  sll        $a0, $a0, 2
/* 8B3D0 800D5010 AD2200CC */  sw         $v0, 0xCC($t1)
/* 8B3D4 800D5014 8CC30020 */  lw         $v1, 0x20($a2)
/* 8B3D8 800D5018 3C025000 */  lui        $v0, (0x50000000 >> 16)
/* 8B3DC 800D501C 00831821 */  addu       $v1, $a0, $v1
/* 8B3E0 800D5020 AC620000 */  sw         $v0, 0x0($v1)
/* 8B3E4 800D5024 8CC20020 */  lw         $v0, 0x20($a2)
/* 8B3E8 800D5028 34E7FFFF */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
/* 8B3EC 800D502C 00822021 */  addu       $a0, $a0, $v0
/* 8B3F0 800D5030 8C820000 */  lw         $v0, 0x0($a0)
/* 8B3F4 800D5034 00A72824 */  and        $a1, $a1, $a3
/* 8B3F8 800D5038 00451025 */  or         $v0, $v0, $a1
/* 8B3FC 800D503C AC820000 */  sw         $v0, 0x0($a0)
/* 8B400 800D5040 24020001 */  addiu      $v0, $zero, 0x1
/* 8B404 800D5044 ACC20038 */  sw         $v0, 0x38($a2)
/* 8B408 800D5048 8D220140 */  lw         $v0, 0x140($t1)
/* 8B40C 800D504C 34420004 */  ori        $v0, $v0, 0x4
/* 8B410 800D5050 AD220140 */  sw         $v0, 0x140($t1)
.Lrace_800D5054:
/* 8B414 800D5054 8D2200CC */  lw         $v0, 0xCC($t1)
/* 8B418 800D5058 8D260004 */  lw         $a2, 0x4($t1)
/* 8B41C 800D505C 8D2400B0 */  lw         $a0, 0xB0($t1)
/* 8B420 800D5060 8D2700C0 */  lw         $a3, 0xC0($t1)
/* 8B424 800D5064 00402821 */  addu       $a1, $v0, $zero
/* 8B428 800D5068 24420001 */  addiu      $v0, $v0, 0x1
/* 8B42C 800D506C AD2200CC */  sw         $v0, 0xCC($t1)
/* 8B430 800D5070 8CC20020 */  lw         $v0, 0x20($a2)
/* 8B434 800D5074 00052880 */  sll        $a1, $a1, 2
/* 8B438 800D5078 00A21021 */  addu       $v0, $a1, $v0
/* 8B43C 800D507C AC400000 */  sw         $zero, 0x0($v0)
/* 8B440 800D5080 8CC30020 */  lw         $v1, 0x20($a2)
/* 8B444 800D5084 3084003F */  andi       $a0, $a0, 0x3F
/* 8B448 800D5088 00A31821 */  addu       $v1, $a1, $v1
/* 8B44C 800D508C 8C620000 */  lw         $v0, 0x0($v1)
/* 8B450 800D5090 00042580 */  sll        $a0, $a0, 22
/* 8B454 800D5094 00441025 */  or         $v0, $v0, $a0
/* 8B458 800D5098 AC620000 */  sw         $v0, 0x0($v1)
/* 8B45C 800D509C 2502FFFF */  addiu      $v0, $t0, -0x1
/* 8B460 800D50A0 8CC40020 */  lw         $a0, 0x20($a2)
/* 8B464 800D50A4 3042003F */  andi       $v0, $v0, 0x3F
/* 8B468 800D50A8 00A42021 */  addu       $a0, $a1, $a0
/* 8B46C 800D50AC 8C830000 */  lw         $v1, 0x0($a0)
/* 8B470 800D50B0 00021400 */  sll        $v0, $v0, 16
/* 8B474 800D50B4 00621825 */  or         $v1, $v1, $v0
/* 8B478 800D50B8 AC830000 */  sw         $v1, 0x0($a0)
/* 8B47C 800D50BC 8CC20020 */  lw         $v0, 0x20($a2)
/* 8B480 800D50C0 30E7FFFF */  andi       $a3, $a3, 0xFFFF
/* 8B484 800D50C4 00A22821 */  addu       $a1, $a1, $v0
/* 8B488 800D50C8 8CA20000 */  lw         $v0, 0x0($a1)
/* 8B48C 800D50CC 24080001 */  addiu      $t0, $zero, 0x1
/* 8B490 800D50D0 00471025 */  or         $v0, $v0, $a3
/* 8B494 800D50D4 ACA20000 */  sw         $v0, 0x0($a1)
/* 8B498 800D50D8 ACC80038 */  sw         $t0, 0x38($a2)
/* 8B49C 800D50DC 8D2200CC */  lw         $v0, 0xCC($t1)
/* 8B4A0 800D50E0 8D270004 */  lw         $a3, 0x4($t1)
/* 8B4A4 800D50E4 8D2600C4 */  lw         $a2, 0xC4($t1)
/* 8B4A8 800D50E8 00402821 */  addu       $a1, $v0, $zero
/* 8B4AC 800D50EC 00481021 */  addu       $v0, $v0, $t0
/* 8B4B0 800D50F0 00052880 */  sll        $a1, $a1, 2
/* 8B4B4 800D50F4 AD2200CC */  sw         $v0, 0xCC($t1)
/* 8B4B8 800D50F8 8CE30020 */  lw         $v1, 0x20($a3)
/* 8B4BC 800D50FC 3C021000 */  lui        $v0, (0x10000000 >> 16)
/* 8B4C0 800D5100 00A31821 */  addu       $v1, $a1, $v1
/* 8B4C4 800D5104 AC620000 */  sw         $v0, 0x0($v1)
/* 8B4C8 800D5108 8CE40020 */  lw         $a0, 0x20($a3)
/* 8B4CC 800D510C 31420FFF */  andi       $v0, $t2, 0xFFF
/* 8B4D0 800D5110 00A42021 */  addu       $a0, $a1, $a0
/* 8B4D4 800D5114 8C830000 */  lw         $v1, 0x0($a0)
/* 8B4D8 800D5118 00021400 */  sll        $v0, $v0, 16
/* 8B4DC 800D511C 00621825 */  or         $v1, $v1, $v0
/* 8B4E0 800D5120 AC830000 */  sw         $v1, 0x0($a0)
/* 8B4E4 800D5124 8CE20020 */  lw         $v0, 0x20($a3)
/* 8B4E8 800D5128 00A22821 */  addu       $a1, $a1, $v0
/* 8B4EC 800D512C 8CA20000 */  lw         $v0, 0x0($a1)
/* 8B4F0 800D5130 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 8B4F4 800D5134 00461025 */  or         $v0, $v0, $a2
/* 8B4F8 800D5138 ACA20000 */  sw         $v0, 0x0($a1)
/* 8B4FC 800D513C ACE80038 */  sw         $t0, 0x38($a3)
.Lrace_800D5140:
/* 8B500 800D5140 8D2200CC */  lw         $v0, 0xCC($t1)
/* 8B504 800D5144 8D270004 */  lw         $a3, 0x4($t1)
/* 8B508 800D5148 8D2600BC */  lw         $a2, 0xBC($t1)
/* 8B50C 800D514C 8D2800E8 */  lw         $t0, 0xE8($t1)
/* 8B510 800D5150 00402821 */  addu       $a1, $v0, $zero
/* 8B514 800D5154 24420001 */  addiu      $v0, $v0, 0x1
/* 8B518 800D5158 AD2200CC */  sw         $v0, 0xCC($t1)
/* 8B51C 800D515C 8CE20020 */  lw         $v0, 0x20($a3)
/* 8B520 800D5160 00052880 */  sll        $a1, $a1, 2
/* 8B524 800D5164 00A21021 */  addu       $v0, $a1, $v0
/* 8B528 800D5168 AC400000 */  sw         $zero, 0x0($v0)
/* 8B52C 800D516C 8CE20020 */  lw         $v0, 0x20($a3)
/* 8B530 800D5170 8CE40020 */  lw         $a0, 0x20($a3)
/* 8B534 800D5174 00A21021 */  addu       $v0, $a1, $v0
/* 8B538 800D5178 00A42021 */  addu       $a0, $a1, $a0
/* 8B53C 800D517C 8C430000 */  lw         $v1, 0x0($v0)
/* 8B540 800D5180 2502FFFF */  addiu      $v0, $t0, -0x1
/* 8B544 800D5184 3042003F */  andi       $v0, $v0, 0x3F
/* 8B548 800D5188 8C830000 */  lw         $v1, 0x0($a0)
/* 8B54C 800D518C 00021400 */  sll        $v0, $v0, 16
/* 8B550 800D5190 00621825 */  or         $v1, $v1, $v0
/* 8B554 800D5194 AC830000 */  sw         $v1, 0x0($a0)
/* 8B558 800D5198 8CE20020 */  lw         $v0, 0x20($a3)
/* 8B55C 800D519C 00C83023 */  subu       $a2, $a2, $t0
/* 8B560 800D51A0 00A22821 */  addu       $a1, $a1, $v0
/* 8B564 800D51A4 8CA20000 */  lw         $v0, 0x0($a1)
/* 8B568 800D51A8 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 8B56C 800D51AC 00461025 */  or         $v0, $v0, $a2
/* 8B570 800D51B0 ACA20000 */  sw         $v0, 0x0($a1)
/* 8B574 800D51B4 24020001 */  addiu      $v0, $zero, 0x1
/* 8B578 800D51B8 ACE20038 */  sw         $v0, 0x38($a3)
/* 8B57C 800D51BC 8D2200E8 */  lw         $v0, 0xE8($t1)
/* 8B580 800D51C0 8D2400BC */  lw         $a0, 0xBC($t1)
/* 8B584 800D51C4 8D2500C8 */  lw         $a1, 0xC8($t1)
/* 8B588 800D51C8 AD2000B8 */  sw         $zero, 0xB8($t1)
/* 8B58C 800D51CC 00401821 */  addu       $v1, $v0, $zero
/* 8B590 800D51D0 AD2200B4 */  sw         $v0, 0xB4($t1)
/* 8B594 800D51D4 AD2300B0 */  sw         $v1, 0xB0($t1)
/* 8B598 800D51D8 AD2400C0 */  sw         $a0, 0xC0($t1)
/* 8B59C 800D51DC 03E00008 */  jr         $ra
/* 8B5A0 800D51E0 AD2500C4 */   sw        $a1, 0xC4($t1)

glabel func_race_800D51E4
/* 8B5A4 800D51E4 00804821 */  addu       $t1, $a0, $zero
/* 8B5A8 800D51E8 8D2500BC */  lw         $a1, 0xBC($t1)
/* 8B5AC 800D51EC 8D2300C0 */  lw         $v1, 0xC0($t1)
/* 8B5B0 800D51F0 8D2400C8 */  lw         $a0, 0xC8($t1)
/* 8B5B4 800D51F4 8D2200C4 */  lw         $v0, 0xC4($t1)
/* 8B5B8 800D51F8 00825823 */  subu       $t3, $a0, $v0
/* 8B5BC 800D51FC 15600003 */  bnez       $t3, .Lrace_800D520C
/* 8B5C0 800D5200 00A35023 */   subu      $t2, $a1, $v1
/* 8B5C4 800D5204 1140005E */  beqz       $t2, .Lrace_800D5380
/* 8B5C8 800D5208 00000000 */   nop
.Lrace_800D520C:
/* 8B5CC 800D520C 8D220140 */  lw         $v0, 0x140($t1)
/* 8B5D0 800D5210 30420004 */  andi       $v0, $v0, 0x4
/* 8B5D4 800D5214 14400018 */  bnez       $v0, .Lrace_800D5278
/* 8B5D8 800D5218 3C0700FF */   lui       $a3, (0xFFFFFF >> 16)
/* 8B5DC 800D521C 8D2200CC */  lw         $v0, 0xCC($t1)
/* 8B5E0 800D5220 8D260004 */  lw         $a2, 0x4($t1)
/* 8B5E4 800D5224 8D2500D0 */  lw         $a1, 0xD0($t1)
/* 8B5E8 800D5228 00402021 */  addu       $a0, $v0, $zero
/* 8B5EC 800D522C 24420001 */  addiu      $v0, $v0, 0x1
/* 8B5F0 800D5230 00042080 */  sll        $a0, $a0, 2
/* 8B5F4 800D5234 AD2200CC */  sw         $v0, 0xCC($t1)
/* 8B5F8 800D5238 8CC30020 */  lw         $v1, 0x20($a2)
/* 8B5FC 800D523C 3C025000 */  lui        $v0, (0x50000000 >> 16)
/* 8B600 800D5240 00831821 */  addu       $v1, $a0, $v1
/* 8B604 800D5244 AC620000 */  sw         $v0, 0x0($v1)
/* 8B608 800D5248 8CC20020 */  lw         $v0, 0x20($a2)
/* 8B60C 800D524C 34E7FFFF */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
/* 8B610 800D5250 00822021 */  addu       $a0, $a0, $v0
/* 8B614 800D5254 8C820000 */  lw         $v0, 0x0($a0)
/* 8B618 800D5258 00A72824 */  and        $a1, $a1, $a3
/* 8B61C 800D525C 00451025 */  or         $v0, $v0, $a1
/* 8B620 800D5260 AC820000 */  sw         $v0, 0x0($a0)
/* 8B624 800D5264 24020001 */  addiu      $v0, $zero, 0x1
/* 8B628 800D5268 ACC20038 */  sw         $v0, 0x38($a2)
/* 8B62C 800D526C 8D220140 */  lw         $v0, 0x140($t1)
/* 8B630 800D5270 34420004 */  ori        $v0, $v0, 0x4
/* 8B634 800D5274 AD220140 */  sw         $v0, 0x140($t1)
.Lrace_800D5278:
/* 8B638 800D5278 8D2200CC */  lw         $v0, 0xCC($t1)
/* 8B63C 800D527C 8D260004 */  lw         $a2, 0x4($t1)
/* 8B640 800D5280 8D2400B0 */  lw         $a0, 0xB0($t1)
/* 8B644 800D5284 8D2700C0 */  lw         $a3, 0xC0($t1)
/* 8B648 800D5288 00402821 */  addu       $a1, $v0, $zero
/* 8B64C 800D528C 24420001 */  addiu      $v0, $v0, 0x1
/* 8B650 800D5290 AD2200CC */  sw         $v0, 0xCC($t1)
/* 8B654 800D5294 8CC20020 */  lw         $v0, 0x20($a2)
/* 8B658 800D5298 00052880 */  sll        $a1, $a1, 2
/* 8B65C 800D529C 00A21021 */  addu       $v0, $a1, $v0
/* 8B660 800D52A0 AC400000 */  sw         $zero, 0x0($v0)
/* 8B664 800D52A4 8CC30020 */  lw         $v1, 0x20($a2)
/* 8B668 800D52A8 3084003F */  andi       $a0, $a0, 0x3F
/* 8B66C 800D52AC 00A31821 */  addu       $v1, $a1, $v1
/* 8B670 800D52B0 8C620000 */  lw         $v0, 0x0($v1)
/* 8B674 800D52B4 00042580 */  sll        $a0, $a0, 22
/* 8B678 800D52B8 00441025 */  or         $v0, $v0, $a0
/* 8B67C 800D52BC AC620000 */  sw         $v0, 0x0($v1)
/* 8B680 800D52C0 2542FFFF */  addiu      $v0, $t2, -0x1
/* 8B684 800D52C4 8CC40020 */  lw         $a0, 0x20($a2)
/* 8B688 800D52C8 3042003F */  andi       $v0, $v0, 0x3F
/* 8B68C 800D52CC 00A42021 */  addu       $a0, $a1, $a0
/* 8B690 800D52D0 8C830000 */  lw         $v1, 0x0($a0)
/* 8B694 800D52D4 00021400 */  sll        $v0, $v0, 16
/* 8B698 800D52D8 00621825 */  or         $v1, $v1, $v0
/* 8B69C 800D52DC AC830000 */  sw         $v1, 0x0($a0)
/* 8B6A0 800D52E0 8CC20020 */  lw         $v0, 0x20($a2)
/* 8B6A4 800D52E4 24080001 */  addiu      $t0, $zero, 0x1
/* 8B6A8 800D52E8 00A22821 */  addu       $a1, $a1, $v0
/* 8B6AC 800D52EC 8CA20000 */  lw         $v0, 0x0($a1)
/* 8B6B0 800D52F0 30E7FFFF */  andi       $a3, $a3, 0xFFFF
/* 8B6B4 800D52F4 00471025 */  or         $v0, $v0, $a3
/* 8B6B8 800D52F8 ACA20000 */  sw         $v0, 0x0($a1)
/* 8B6BC 800D52FC ACC80038 */  sw         $t0, 0x38($a2)
/* 8B6C0 800D5300 8D2200CC */  lw         $v0, 0xCC($t1)
/* 8B6C4 800D5304 8D270004 */  lw         $a3, 0x4($t1)
/* 8B6C8 800D5308 8D2600C4 */  lw         $a2, 0xC4($t1)
/* 8B6CC 800D530C 00402821 */  addu       $a1, $v0, $zero
/* 8B6D0 800D5310 00481021 */  addu       $v0, $v0, $t0
/* 8B6D4 800D5314 00052880 */  sll        $a1, $a1, 2
/* 8B6D8 800D5318 AD2200CC */  sw         $v0, 0xCC($t1)
/* 8B6DC 800D531C 8CE30020 */  lw         $v1, 0x20($a3)
/* 8B6E0 800D5320 3C021000 */  lui        $v0, (0x10000000 >> 16)
/* 8B6E4 800D5324 00A31821 */  addu       $v1, $a1, $v1
/* 8B6E8 800D5328 AC620000 */  sw         $v0, 0x0($v1)
/* 8B6EC 800D532C 8CE40020 */  lw         $a0, 0x20($a3)
/* 8B6F0 800D5330 31620FFF */  andi       $v0, $t3, 0xFFF
/* 8B6F4 800D5334 00A42021 */  addu       $a0, $a1, $a0
/* 8B6F8 800D5338 8C830000 */  lw         $v1, 0x0($a0)
/* 8B6FC 800D533C 00021400 */  sll        $v0, $v0, 16
/* 8B700 800D5340 00621825 */  or         $v1, $v1, $v0
/* 8B704 800D5344 AC830000 */  sw         $v1, 0x0($a0)
/* 8B708 800D5348 8CE20020 */  lw         $v0, 0x20($a3)
/* 8B70C 800D534C 00A22821 */  addu       $a1, $a1, $v0
/* 8B710 800D5350 8CA20000 */  lw         $v0, 0x0($a1)
/* 8B714 800D5354 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 8B718 800D5358 00461025 */  or         $v0, $v0, $a2
/* 8B71C 800D535C ACA20000 */  sw         $v0, 0x0($a1)
/* 8B720 800D5360 ACE80038 */  sw         $t0, 0x38($a3)
/* 8B724 800D5364 8D2200B0 */  lw         $v0, 0xB0($t1)
/* 8B728 800D5368 8D2300BC */  lw         $v1, 0xBC($t1)
/* 8B72C 800D536C 004A1021 */  addu       $v0, $v0, $t2
/* 8B730 800D5370 AD2200B0 */  sw         $v0, 0xB0($t1)
/* 8B734 800D5374 AD2300C0 */  sw         $v1, 0xC0($t1)
/* 8B738 800D5378 8D2200C8 */  lw         $v0, 0xC8($t1)
/* 8B73C 800D537C AD2200C4 */  sw         $v0, 0xC4($t1)
.Lrace_800D5380:
/* 8B740 800D5380 03E00008 */  jr         $ra
/* 8B744 800D5384 00000000 */   nop

glabel func_race_800D5388
/* 8B748 800D5388 88A20000 */  lwl        $v0, 0x0($a1)
/* 8B74C 800D538C 98A20003 */  lwr        $v0, 0x3($a1)
/* 8B750 800D5390 A8820160 */  swl        $v0, 0x160($a0)
/* 8B754 800D5394 B8820163 */  swr        $v0, 0x163($a0)
/* 8B758 800D5398 88C20000 */  lwl        $v0, 0x0($a2)
/* 8B75C 800D539C 98C20003 */  lwr        $v0, 0x3($a2)
/* 8B760 800D53A0 A8820164 */  swl        $v0, 0x164($a0)
/* 8B764 800D53A4 B8820167 */  swr        $v0, 0x167($a0)
/* 8B768 800D53A8 88E20000 */  lwl        $v0, 0x0($a3)
/* 8B76C 800D53AC 98E20003 */  lwr        $v0, 0x3($a3)
/* 8B770 800D53B0 A8820168 */  swl        $v0, 0x168($a0)
/* 8B774 800D53B4 B882016B */  swr        $v0, 0x16B($a0)
/* 8B778 800D53B8 03E00008 */  jr         $ra
/* 8B77C 800D53BC 00000000 */   nop

glabel func_race_800D53C0
/* 8B780 800D53C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8B784 800D53C4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8B788 800D53C8 8C820140 */  lw         $v0, 0x140($a0)
/* 8B78C 800D53CC 30420001 */  andi       $v0, $v0, 0x1
/* 8B790 800D53D0 10400003 */  beqz       $v0, .Lrace_800D53E0
/* 8B794 800D53D4 00000000 */   nop
/* 8B798 800D53D8 0C035022 */  jal        func_race_800D4088
/* 8B79C 800D53DC 24840018 */   addiu     $a0, $a0, 0x18
.Lrace_800D53E0:
/* 8B7A0 800D53E0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8B7A4 800D53E4 03E00008 */  jr         $ra
/* 8B7A8 800D53E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D53EC
/* 8B7AC 800D53EC 27BDFF20 */  addiu      $sp, $sp, -0xE0
/* 8B7B0 800D53F0 AFB000A8 */  sw         $s0, 0xA8($sp)
/* 8B7B4 800D53F4 00808021 */  addu       $s0, $a0, $zero
/* 8B7B8 800D53F8 AFBF00CC */  sw         $ra, 0xCC($sp)
/* 8B7BC 800D53FC AFBE00C8 */  sw         $fp, 0xC8($sp)
/* 8B7C0 800D5400 AFB700C4 */  sw         $s7, 0xC4($sp)
/* 8B7C4 800D5404 AFB600C0 */  sw         $s6, 0xC0($sp)
/* 8B7C8 800D5408 AFB500BC */  sw         $s5, 0xBC($sp)
/* 8B7CC 800D540C AFB400B8 */  sw         $s4, 0xB8($sp)
/* 8B7D0 800D5410 AFB300B4 */  sw         $s3, 0xB4($sp)
/* 8B7D4 800D5414 AFB200B0 */  sw         $s2, 0xB0($sp)
/* 8B7D8 800D5418 AFB100AC */  sw         $s1, 0xAC($sp)
/* 8B7DC 800D541C F7B600D8 */  sdc1       $f22, 0xD8($sp)
/* 8B7E0 800D5420 F7B400D0 */  sdc1       $f20, 0xD0($sp)
/* 8B7E4 800D5424 AFA500E4 */  sw         $a1, 0xE4($sp)
/* 8B7E8 800D5428 8E0200E0 */  lw         $v0, 0xE0($s0)
/* 8B7EC 800D542C 4486B000 */  mtc1       $a2, $f22
/* 8B7F0 800D5430 2C420002 */  sltiu      $v0, $v0, 0x2
/* 8B7F4 800D5434 10400005 */  beqz       $v0, .Lrace_800D544C
/* 8B7F8 800D5438 26020154 */   addiu     $v0, $s0, 0x154
/* 8B7FC 800D543C 0C0352A2 */  jal        func_race_800D4A88
/* 8B800 800D5440 00000000 */   nop
/* 8B804 800D5444 080355AB */  j          .Lrace_800D56AC
/* 8B808 800D5448 00000000 */   nop
.Lrace_800D544C:
/* 8B80C 800D544C 8FA800E4 */  lw         $t0, 0xE4($sp)
/* 8B810 800D5450 C6000154 */  lwc1       $f0, 0x154($s0)
/* 8B814 800D5454 C5040000 */  lwc1       $f4, 0x0($t0)
/* 8B818 800D5458 46002101 */  sub.s      $f4, $f4, $f0
/* 8B81C 800D545C 46042102 */  mul.s      $f4, $f4, $f4
/* 8B820 800D5460 C5060004 */  lwc1       $f6, 0x4($t0)
/* 8B824 800D5464 C4400004 */  lwc1       $f0, 0x4($v0)
/* 8B828 800D5468 46003181 */  sub.s      $f6, $f6, $f0
/* 8B82C 800D546C 46063182 */  mul.s      $f6, $f6, $f6
/* 8B830 800D5470 C4420008 */  lwc1       $f2, 0x8($v0)
/* 8B834 800D5474 C5000008 */  lwc1       $f0, 0x8($t0)
/* 8B838 800D5478 46020001 */  sub.s      $f0, $f0, $f2
/* 8B83C 800D547C 46000002 */  mul.s      $f0, $f0, $f0
/* 8B840 800D5480 46062100 */  add.s      $f4, $f4, $f6
/* 8B844 800D5484 46002300 */  add.s      $f12, $f4, $f0
/* 8B848 800D5488 3C01800D */  lui        $at, %hi(D_race_800CA9E8)
/* 8B84C 800D548C C420A9E8 */  lwc1       $f0, %lo(D_race_800CA9E8)($at)
/* 8B850 800D5490 4600603C */  c.lt.s     $f12, $f0
/* 8B854 800D5494 00000000 */  nop
/* 8B858 800D5498 45010084 */  bc1t       .Lrace_800D56AC
/* 8B85C 800D549C 00000000 */   nop
/* 8B860 800D54A0 46006184 */  sqrt.s     $f6, $f12
/* 8B864 800D54A4 46063032 */  c.eq.s     $f6, $f6
/* 8B868 800D54A8 AFA00040 */  sw         $zero, 0x40($sp)
/* 8B86C 800D54AC AFA00044 */  sw         $zero, 0x44($sp)
/* 8B870 800D54B0 45010004 */  bc1t       .Lrace_800D54C4
/* 8B874 800D54B4 AFA00048 */   sw        $zero, 0x48($sp)
/* 8B878 800D54B8 0C006BC8 */  jal        sqrt
/* 8B87C 800D54BC 00000000 */   nop
/* 8B880 800D54C0 46000186 */  mov.s      $f6, $f0
.Lrace_800D54C4:
/* 8B884 800D54C4 AFA00074 */  sw         $zero, 0x74($sp)
/* 8B888 800D54C8 C7A00074 */  lwc1       $f0, 0x74($sp)
/* 8B88C 800D54CC 3C01800D */  lui        $at, %hi(D_race_800CA9EC)
/* 8B890 800D54D0 C422A9EC */  lwc1       $f2, %lo(D_race_800CA9EC)($at)
/* 8B894 800D54D4 E7A60070 */  swc1       $f6, 0x70($sp)
/* 8B898 800D54D8 4616003C */  c.lt.s     $f0, $f22
/* 8B89C 800D54DC 46023002 */  mul.s      $f0, $f6, $f2
/* 8B8A0 800D54E0 45000007 */  bc1f       .Lrace_800D5500
/* 8B8A4 800D54E4 AFA00078 */   sw        $zero, 0x78($sp)
/* 8B8A8 800D54E8 8A090164 */  lwl        $t1, 0x164($s0)
/* 8B8AC 800D54EC 9A090167 */  lwr        $t1, 0x167($s0)
/* 8B8B0 800D54F0 ABA90090 */  swl        $t1, 0x90($sp)
/* 8B8B4 800D54F4 BBA90093 */  swr        $t1, 0x93($sp)
/* 8B8B8 800D54F8 08035545 */  j          .Lrace_800D5514
/* 8B8BC 800D54FC 00008821 */   addu      $s1, $zero, $zero
.Lrace_800D5500:
/* 8B8C0 800D5500 8A090168 */  lwl        $t1, 0x168($s0)
/* 8B8C4 800D5504 9A09016B */  lwr        $t1, 0x16B($s0)
/* 8B8C8 800D5508 ABA90090 */  swl        $t1, 0x90($sp)
/* 8B8CC 800D550C BBA90093 */  swr        $t1, 0x93($sp)
/* 8B8D0 800D5510 00008821 */  addu       $s1, $zero, $zero
.Lrace_800D5514:
/* 8B8D4 800D5514 26090160 */  addiu      $t1, $s0, 0x160
/* 8B8D8 800D5518 27BE0090 */  addiu      $fp, $sp, 0x90
/* 8B8DC 800D551C 27B70050 */  addiu      $s7, $sp, 0x50
/* 8B8E0 800D5520 27B60080 */  addiu      $s6, $sp, 0x80
/* 8B8E4 800D5524 27B50060 */  addiu      $s5, $sp, 0x60
/* 8B8E8 800D5528 27B40088 */  addiu      $s4, $sp, 0x88
/* 8B8EC 800D552C 27B30030 */  addiu      $s3, $sp, 0x30
/* 8B8F0 800D5530 AFA00028 */  sw         $zero, 0x28($sp)
/* 8B8F4 800D5534 C7B40028 */  lwc1       $f20, 0x28($sp)
/* 8B8F8 800D5538 27B20098 */  addiu      $s2, $sp, 0x98
/* 8B8FC 800D553C AFA900A0 */  sw         $t1, 0xA0($sp)
/* 8B900 800D5540 E7A00020 */  swc1       $f0, 0x20($sp)
/* 8B904 800D5544 E7B60024 */  swc1       $f22, 0x24($sp)
.Lrace_800D5548:
/* 8B908 800D5548 8E0200E0 */  lw         $v0, 0xE0($s0)
/* 8B90C 800D554C 2442FFFF */  addiu      $v0, $v0, -0x1
/* 8B910 800D5550 0222102B */  sltu       $v0, $s1, $v0
/* 8B914 800D5554 1040003B */  beqz       $v0, .Lrace_800D5644
/* 8B918 800D5558 27A50040 */   addiu     $a1, $sp, 0x40
/* 8B91C 800D555C 02002021 */  addu       $a0, $s0, $zero
/* 8B920 800D5560 C60000D8 */  lwc1       $f0, 0xD8($s0)
/* 8B924 800D5564 8FA700A0 */  lw         $a3, 0xA0($sp)
/* 8B928 800D5568 27A60020 */  addiu      $a2, $sp, 0x20
/* 8B92C 800D556C AFBE0010 */  sw         $fp, 0x10($sp)
/* 8B930 800D5570 4600A500 */  add.s      $f20, $f20, $f0
/* 8B934 800D5574 AFB70018 */  sw         $s7, 0x18($sp)
/* 8B938 800D5578 AFB6001C */  sw         $s6, 0x1C($sp)
/* 8B93C 800D557C 0C0355B9 */  jal        func_race_800D56E4
/* 8B940 800D5580 E7B40014 */   swc1      $f20, 0x14($sp)
/* 8B944 800D5584 02002021 */  addu       $a0, $s0, $zero
/* 8B948 800D5588 27A50020 */  addiu      $a1, $sp, 0x20
/* 8B94C 800D558C 27A60070 */  addiu      $a2, $sp, 0x70
/* 8B950 800D5590 8FAA00A0 */  lw         $t2, 0xA0($sp)
/* 8B954 800D5594 03C03821 */  addu       $a3, $fp, $zero
/* 8B958 800D5598 E7B40014 */  swc1       $f20, 0x14($sp)
/* 8B95C 800D559C AFB50018 */  sw         $s5, 0x18($sp)
/* 8B960 800D55A0 AFB4001C */  sw         $s4, 0x1C($sp)
/* 8B964 800D55A4 0C0355B9 */  jal        func_race_800D56E4
/* 8B968 800D55A8 AFAA0010 */   sw        $t2, 0x10($sp)
/* 8B96C 800D55AC 02002021 */  addu       $a0, $s0, $zero
/* 8B970 800D55B0 02E02821 */  addu       $a1, $s7, $zero
/* 8B974 800D55B4 02A03021 */  addu       $a2, $s5, $zero
/* 8B978 800D55B8 02C03821 */  addu       $a3, $s6, $zero
/* 8B97C 800D55BC AFB40010 */  sw         $s4, 0x10($sp)
/* 8B980 800D55C0 E7B40014 */  swc1       $f20, 0x14($sp)
/* 8B984 800D55C4 AFB30018 */  sw         $s3, 0x18($sp)
/* 8B988 800D55C8 0C0355B9 */  jal        func_race_800D56E4
/* 8B98C 800D55CC AFB2001C */   sw        $s2, 0x1C($sp)
/* 8B990 800D55D0 02002021 */  addu       $a0, $s0, $zero
/* 8B994 800D55D4 02602821 */  addu       $a1, $s3, $zero
/* 8B998 800D55D8 AFB10010 */  sw         $s1, 0x10($sp)
/* 8B99C 800D55DC 8E0700D4 */  lw         $a3, 0xD4($s0)
/* 8B9A0 800D55E0 0C035317 */  jal        func_race_800D4C5C
/* 8B9A4 800D55E4 02403021 */   addu      $a2, $s2, $zero
/* 8B9A8 800D55E8 0C0353CF */  jal        func_race_800D4F3C
/* 8B9AC 800D55EC 02002021 */   addu      $a0, $s0, $zero
/* 8B9B0 800D55F0 8E020014 */  lw         $v0, 0x14($s0)
/* 8B9B4 800D55F4 8C420004 */  lw         $v0, 0x4($v0)
/* 8B9B8 800D55F8 30420008 */  andi       $v0, $v0, 0x8
/* 8B9BC 800D55FC 5040FFD2 */  beql       $v0, $zero, .Lrace_800D5548
/* 8B9C0 800D5600 26310001 */   addiu     $s1, $s1, 0x1
/* 8B9C4 800D5604 8E0200D4 */  lw         $v0, 0xD4($s0)
/* 8B9C8 800D5608 8E03013C */  lw         $v1, 0x13C($s0)
/* 8B9CC 800D560C 24420001 */  addiu      $v0, $v0, 0x1
/* 8B9D0 800D5610 0062182B */  sltu       $v1, $v1, $v0
/* 8B9D4 800D5614 10600009 */  beqz       $v1, .Lrace_800D563C
/* 8B9D8 800D5618 AE0200D4 */   sw        $v0, 0xD4($s0)
/* 8B9DC 800D561C 02002021 */  addu       $a0, $s0, $zero
/* 8B9E0 800D5620 02602821 */  addu       $a1, $s3, $zero
/* 8B9E4 800D5624 02403021 */  addu       $a2, $s2, $zero
/* 8B9E8 800D5628 00003821 */  addu       $a3, $zero, $zero
/* 8B9EC 800D562C 0C035317 */  jal        func_race_800D4C5C
/* 8B9F0 800D5630 AFB10010 */   sw        $s1, 0x10($sp)
/* 8B9F4 800D5634 24020001 */  addiu      $v0, $zero, 0x1
/* 8B9F8 800D5638 AE0200D4 */  sw         $v0, 0xD4($s0)
.Lrace_800D563C:
/* 8B9FC 800D563C 08035552 */  j          .Lrace_800D5548
/* 8BA00 800D5640 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800D5644:
/* 8BA04 800D5644 02002021 */  addu       $a0, $s0, $zero
/* 8BA08 800D5648 27A50070 */  addiu      $a1, $sp, 0x70
/* 8BA0C 800D564C AFB10010 */  sw         $s1, 0x10($sp)
/* 8BA10 800D5650 8E0700D4 */  lw         $a3, 0xD4($s0)
/* 8BA14 800D5654 0C035317 */  jal        func_race_800D4C5C
/* 8BA18 800D5658 26060160 */   addiu     $a2, $s0, 0x160
/* 8BA1C 800D565C 0C0353CF */  jal        func_race_800D4F3C
/* 8BA20 800D5660 02002021 */   addu      $a0, $s0, $zero
/* 8BA24 800D5664 8E020014 */  lw         $v0, 0x14($s0)
/* 8BA28 800D5668 8C420004 */  lw         $v0, 0x4($v0)
/* 8BA2C 800D566C 30420008 */  andi       $v0, $v0, 0x8
/* 8BA30 800D5670 10400009 */  beqz       $v0, .Lrace_800D5698
/* 8BA34 800D5674 00000000 */   nop
/* 8BA38 800D5678 8E0200D4 */  lw         $v0, 0xD4($s0)
/* 8BA3C 800D567C 8E03013C */  lw         $v1, 0x13C($s0)
/* 8BA40 800D5680 24420001 */  addiu      $v0, $v0, 0x1
/* 8BA44 800D5684 0062182B */  sltu       $v1, $v1, $v0
/* 8BA48 800D5688 10600003 */  beqz       $v1, .Lrace_800D5698
/* 8BA4C 800D568C AE0200D4 */   sw        $v0, 0xD4($s0)
/* 8BA50 800D5690 24020001 */  addiu      $v0, $zero, 0x1
/* 8BA54 800D5694 AE0200D4 */  sw         $v0, 0xD4($s0)
.Lrace_800D5698:
/* 8BA58 800D5698 0C035479 */  jal        func_race_800D51E4
/* 8BA5C 800D569C 02002021 */   addu      $a0, $s0, $zero
/* 8BA60 800D56A0 8FA500E4 */  lw         $a1, 0xE4($sp)
/* 8BA64 800D56A4 0C035236 */  jal        func_race_800D48D8
/* 8BA68 800D56A8 02002021 */   addu      $a0, $s0, $zero
.Lrace_800D56AC:
/* 8BA6C 800D56AC 8FBF00CC */  lw         $ra, 0xCC($sp)
/* 8BA70 800D56B0 8FBE00C8 */  lw         $fp, 0xC8($sp)
/* 8BA74 800D56B4 8FB700C4 */  lw         $s7, 0xC4($sp)
/* 8BA78 800D56B8 8FB600C0 */  lw         $s6, 0xC0($sp)
/* 8BA7C 800D56BC 8FB500BC */  lw         $s5, 0xBC($sp)
/* 8BA80 800D56C0 8FB400B8 */  lw         $s4, 0xB8($sp)
/* 8BA84 800D56C4 8FB300B4 */  lw         $s3, 0xB4($sp)
/* 8BA88 800D56C8 8FB200B0 */  lw         $s2, 0xB0($sp)
/* 8BA8C 800D56CC 8FB100AC */  lw         $s1, 0xAC($sp)
/* 8BA90 800D56D0 8FB000A8 */  lw         $s0, 0xA8($sp)
/* 8BA94 800D56D4 D7B600D8 */  ldc1       $f22, 0xD8($sp)
/* 8BA98 800D56D8 D7B400D0 */  ldc1       $f20, 0xD0($sp)
/* 8BA9C 800D56DC 03E00008 */  jr         $ra
/* 8BAA0 800D56E0 27BD00E0 */   addiu     $sp, $sp, 0xE0

glabel func_race_800D56E4
/* 8BAA4 800D56E4 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 8BAA8 800D56E8 C4A20000 */  lwc1       $f2, 0x0($a1)
/* 8BAAC 800D56EC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 8BAB0 800D56F0 46020001 */  sub.s      $f0, $f0, $f2
/* 8BAB4 800D56F4 8FA20028 */  lw         $v0, 0x28($sp)
/* 8BAB8 800D56F8 E4400000 */  swc1       $f0, 0x0($v0)
/* 8BABC 800D56FC C4C00004 */  lwc1       $f0, 0x4($a2)
/* 8BAC0 800D5700 C4A20004 */  lwc1       $f2, 0x4($a1)
/* 8BAC4 800D5704 46020001 */  sub.s      $f0, $f0, $f2
/* 8BAC8 800D5708 C4440000 */  lwc1       $f4, 0x0($v0)
/* 8BACC 800D570C E4400004 */  swc1       $f0, 0x4($v0)
/* 8BAD0 800D5710 C7A60024 */  lwc1       $f6, 0x24($sp)
/* 8BAD4 800D5714 46062102 */  mul.s      $f4, $f4, $f6
/* 8BAD8 800D5718 C4C20008 */  lwc1       $f2, 0x8($a2)
/* 8BADC 800D571C C4A00008 */  lwc1       $f0, 0x8($a1)
/* 8BAE0 800D5720 8FA40020 */  lw         $a0, 0x20($sp)
/* 8BAE4 800D5724 46001081 */  sub.s      $f2, $f2, $f0
/* 8BAE8 800D5728 8FA6002C */  lw         $a2, 0x2C($sp)
/* 8BAEC 800D572C E4420008 */  swc1       $f2, 0x8($v0)
/* 8BAF0 800D5730 E7A40000 */  swc1       $f4, 0x0($sp)
/* 8BAF4 800D5734 C4400004 */  lwc1       $f0, 0x4($v0)
/* 8BAF8 800D5738 46060002 */  mul.s      $f0, $f0, $f6
/* 8BAFC 800D573C E7A00004 */  swc1       $f0, 0x4($sp)
/* 8BB00 800D5740 C4400008 */  lwc1       $f0, 0x8($v0)
/* 8BB04 800D5744 46060002 */  mul.s      $f0, $f0, $f6
/* 8BB08 800D5748 E7A00008 */  swc1       $f0, 0x8($sp)
/* 8BB0C 800D574C C4A00000 */  lwc1       $f0, 0x0($a1)
/* 8BB10 800D5750 46040000 */  add.s      $f0, $f0, $f4
/* 8BB14 800D5754 E4400000 */  swc1       $f0, 0x0($v0)
/* 8BB18 800D5758 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 8BB1C 800D575C C7A20004 */  lwc1       $f2, 0x4($sp)
/* 8BB20 800D5760 46020000 */  add.s      $f0, $f0, $f2
/* 8BB24 800D5764 E4400004 */  swc1       $f0, 0x4($v0)
/* 8BB28 800D5768 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 8BB2C 800D576C C7A20008 */  lwc1       $f2, 0x8($sp)
/* 8BB30 800D5770 46020000 */  add.s      $f0, $f0, $f2
/* 8BB34 800D5774 E4400008 */  swc1       $f0, 0x8($v0)
/* 8BB38 800D5778 90820000 */  lbu        $v0, 0x0($a0)
/* 8BB3C 800D577C 90E30000 */  lbu        $v1, 0x0($a3)
/* 8BB40 800D5780 00431023 */  subu       $v0, $v0, $v1
/* 8BB44 800D5784 44820000 */  mtc1       $v0, $f0
/* 8BB48 800D5788 46800020 */  cvt.s.w    $f0, $f0
/* 8BB4C 800D578C 46003002 */  mul.s      $f0, $f6, $f0
/* 8BB50 800D5790 4600020D */  trunc.w.s  $f8, $f0
/* 8BB54 800D5794 44024000 */  mfc1       $v0, $f8
/* 8BB58 800D5798 00621821 */  addu       $v1, $v1, $v0
/* 8BB5C 800D579C A0C30000 */  sb         $v1, 0x0($a2)
/* 8BB60 800D57A0 90820001 */  lbu        $v0, 0x1($a0)
/* 8BB64 800D57A4 90E30001 */  lbu        $v1, 0x1($a3)
/* 8BB68 800D57A8 00431023 */  subu       $v0, $v0, $v1
/* 8BB6C 800D57AC 44820000 */  mtc1       $v0, $f0
/* 8BB70 800D57B0 46800020 */  cvt.s.w    $f0, $f0
/* 8BB74 800D57B4 46003002 */  mul.s      $f0, $f6, $f0
/* 8BB78 800D57B8 4600020D */  trunc.w.s  $f8, $f0
/* 8BB7C 800D57BC 44024000 */  mfc1       $v0, $f8
/* 8BB80 800D57C0 00621821 */  addu       $v1, $v1, $v0
/* 8BB84 800D57C4 A0C30001 */  sb         $v1, 0x1($a2)
/* 8BB88 800D57C8 90820002 */  lbu        $v0, 0x2($a0)
/* 8BB8C 800D57CC 90E30002 */  lbu        $v1, 0x2($a3)
/* 8BB90 800D57D0 00431023 */  subu       $v0, $v0, $v1
/* 8BB94 800D57D4 44820000 */  mtc1       $v0, $f0
/* 8BB98 800D57D8 46800020 */  cvt.s.w    $f0, $f0
/* 8BB9C 800D57DC 46003002 */  mul.s      $f0, $f6, $f0
/* 8BBA0 800D57E0 4600020D */  trunc.w.s  $f8, $f0
/* 8BBA4 800D57E4 44024000 */  mfc1       $v0, $f8
/* 8BBA8 800D57E8 00621821 */  addu       $v1, $v1, $v0
/* 8BBAC 800D57EC A0C30002 */  sb         $v1, 0x2($a2)
/* 8BBB0 800D57F0 90820003 */  lbu        $v0, 0x3($a0)
/* 8BBB4 800D57F4 90E30003 */  lbu        $v1, 0x3($a3)
/* 8BBB8 800D57F8 00431023 */  subu       $v0, $v0, $v1
/* 8BBBC 800D57FC 44820000 */  mtc1       $v0, $f0
/* 8BBC0 800D5800 46800020 */  cvt.s.w    $f0, $f0
/* 8BBC4 800D5804 46003182 */  mul.s      $f6, $f6, $f0
/* 8BBC8 800D5808 4600320D */  trunc.w.s  $f8, $f6
/* 8BBCC 800D580C 44024000 */  mfc1       $v0, $f8
/* 8BBD0 800D5810 00621821 */  addu       $v1, $v1, $v0
/* 8BBD4 800D5814 A0C30003 */  sb         $v1, 0x3($a2)
/* 8BBD8 800D5818 03E00008 */  jr         $ra
/* 8BBDC 800D581C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_race_800D5820
/* 8BBE0 800D5820 8C820140 */  lw         $v0, 0x140($a0)
/* 8BBE4 800D5824 AC850144 */  sw         $a1, 0x144($a0)
/* 8BBE8 800D5828 34420002 */  ori        $v0, $v0, 0x2
/* 8BBEC 800D582C 03E00008 */  jr         $ra
/* 8BBF0 800D5830 AC820140 */   sw        $v0, 0x140($a0)

glabel func_race_800D5834
/* 8BBF4 800D5834 8C820140 */  lw         $v0, 0x140($a0)
/* 8BBF8 800D5838 2403FFFD */  addiu      $v1, $zero, -0x3
/* 8BBFC 800D583C AC800144 */  sw         $zero, 0x144($a0)
/* 8BC00 800D5840 00431024 */  and        $v0, $v0, $v1
/* 8BC04 800D5844 03E00008 */  jr         $ra
/* 8BC08 800D5848 AC820140 */   sw        $v0, 0x140($a0)

glabel func_race_800D584C
/* 8BC0C 800D584C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8BC10 800D5850 AFB10014 */  sw         $s1, 0x14($sp)
/* 8BC14 800D5854 00808821 */  addu       $s1, $a0, $zero
/* 8BC18 800D5858 AFB00010 */  sw         $s0, 0x10($sp)
/* 8BC1C 800D585C 00A08021 */  addu       $s0, $a1, $zero
/* 8BC20 800D5860 00002821 */  addu       $a1, $zero, $zero
/* 8BC24 800D5864 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8BC28 800D5868 8E240004 */  lw         $a0, 0x4($s1)
/* 8BC2C 800D586C 0C01543D */  jal        func_800550F4
/* 8BC30 800D5870 02003021 */   addu      $a2, $s0, $zero
/* 8BC34 800D5874 AE300014 */  sw         $s0, 0x14($s1)
/* 8BC38 800D5878 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8BC3C 800D587C 8FB10014 */  lw         $s1, 0x14($sp)
/* 8BC40 800D5880 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BC44 800D5884 03E00008 */  jr         $ra
/* 8BC48 800D5888 27BD0020 */   addiu     $sp, $sp, 0x20
