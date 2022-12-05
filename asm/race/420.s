.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800EFE60
/* A6220 800EFE60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6224 800EFE64 AFB00010 */  sw         $s0, 0x10($sp)
/* A6228 800EFE68 AFBF0014 */  sw         $ra, 0x14($sp)
/* A622C 800EFE6C 0C03A1A4 */  jal        func_race_800E8690
/* A6230 800EFE70 00808021 */   addu      $s0, $a0, $zero
/* A6234 800EFE74 02001021 */  addu       $v0, $s0, $zero
/* A6238 800EFE78 3C03800D */  lui        $v1, %hi(D_race_800CC828)
/* A623C 800EFE7C 2463C828 */  addiu      $v1, $v1, %lo(D_race_800CC828)
/* A6240 800EFE80 AC430000 */  sw         $v1, 0x0($v0)
/* A6244 800EFE84 AC400010 */  sw         $zero, 0x10($v0)
/* A6248 800EFE88 AC400014 */  sw         $zero, 0x14($v0)
/* A624C 800EFE8C AC400018 */  sw         $zero, 0x18($v0)
/* A6250 800EFE90 AC40001C */  sw         $zero, 0x1C($v0)
/* A6254 800EFE94 8FBF0014 */  lw         $ra, 0x14($sp)
/* A6258 800EFE98 8FB00010 */  lw         $s0, 0x10($sp)
/* A625C 800EFE9C 03E00008 */  jr         $ra
/* A6260 800EFEA0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EFEA4
/* A6264 800EFEA4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A6268 800EFEA8 AFB00010 */  sw         $s0, 0x10($sp)
/* A626C 800EFEAC 00808021 */  addu       $s0, $a0, $zero
/* A6270 800EFEB0 AFB10014 */  sw         $s1, 0x14($sp)
/* A6274 800EFEB4 00A08821 */  addu       $s1, $a1, $zero
/* A6278 800EFEB8 3C02800D */  lui        $v0, %hi(D_race_800CC828)
/* A627C 800EFEBC 2442C828 */  addiu      $v0, $v0, %lo(D_race_800CC828)
/* A6280 800EFEC0 AFBF0018 */  sw         $ra, 0x18($sp)
/* A6284 800EFEC4 0C03BFDF */  jal        func_race_800EFF7C
/* A6288 800EFEC8 AE020000 */   sw        $v0, 0x0($s0)
/* A628C 800EFECC 02002021 */  addu       $a0, $s0, $zero
/* A6290 800EFED0 0C03A1AC */  jal        func_race_800E86B0
/* A6294 800EFED4 02202821 */   addu      $a1, $s1, $zero
/* A6298 800EFED8 8FBF0018 */  lw         $ra, 0x18($sp)
/* A629C 800EFEDC 8FB10014 */  lw         $s1, 0x14($sp)
/* A62A0 800EFEE0 8FB00010 */  lw         $s0, 0x10($sp)
/* A62A4 800EFEE4 03E00008 */  jr         $ra
/* A62A8 800EFEE8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EFEEC
/* A62AC 800EFEEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A62B0 800EFEF0 AFB00010 */  sw         $s0, 0x10($sp)
/* A62B4 800EFEF4 00808021 */  addu       $s0, $a0, $zero
/* A62B8 800EFEF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* A62BC 800EFEFC AFB10014 */  sw         $s1, 0x14($sp)
/* A62C0 800EFF00 8E02000C */  lw         $v0, 0xC($s0)
/* A62C4 800EFF04 10400003 */  beqz       $v0, .Lrace_800EFF14
/* A62C8 800EFF08 00A08821 */   addu      $s1, $a1, $zero
/* A62CC 800EFF0C 0C03BFDF */  jal        func_race_800EFF7C
/* A62D0 800EFF10 00000000 */   nop
.Lrace_800EFF14:
/* A62D4 800EFF14 2402000A */  addiu      $v0, $zero, 0xA
/* A62D8 800EFF18 AE020008 */  sw         $v0, 0x8($s0)
/* A62DC 800EFF1C 8E22000C */  lw         $v0, 0xC($s1)
/* A62E0 800EFF20 AE020004 */  sw         $v0, 0x4($s0)
/* A62E4 800EFF24 8E22001C */  lw         $v0, 0x1C($s1)
/* A62E8 800EFF28 AE020014 */  sw         $v0, 0x14($s0)
/* A62EC 800EFF2C 8E220040 */  lw         $v0, 0x40($s1)
/* A62F0 800EFF30 AE02001C */  sw         $v0, 0x1C($s0)
/* A62F4 800EFF34 3C02800D */  lui        $v0, %hi(D_race_800CC810)
/* A62F8 800EFF38 8E230010 */  lw         $v1, 0x10($s1)
/* A62FC 800EFF3C 2445C810 */  addiu      $a1, $v0, %lo(D_race_800CC810)
/* A6300 800EFF40 8C6200BC */  lw         $v0, 0xBC($v1)
/* A6304 800EFF44 14400003 */  bnez       $v0, .Lrace_800EFF54
/* A6308 800EFF48 246400BC */   addiu     $a0, $v1, 0xBC
/* A630C 800EFF4C 0803BFD7 */  j          .Lrace_800EFF5C
/* A6310 800EFF50 00001021 */   addu      $v0, $zero, $zero
.Lrace_800EFF54:
/* A6314 800EFF54 0C016427 */  jal        func_8005909C
/* A6318 800EFF58 00000000 */   nop
.Lrace_800EFF5C:
/* A631C 800EFF5C AE020010 */  sw         $v0, 0x10($s0)
/* A6320 800EFF60 24020001 */  addiu      $v0, $zero, 0x1
/* A6324 800EFF64 AE02000C */  sw         $v0, 0xC($s0)
/* A6328 800EFF68 8FBF0018 */  lw         $ra, 0x18($sp)
/* A632C 800EFF6C 8FB10014 */  lw         $s1, 0x14($sp)
/* A6330 800EFF70 8FB00010 */  lw         $s0, 0x10($sp)
/* A6334 800EFF74 03E00008 */  jr         $ra
/* A6338 800EFF78 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800EFF7C
/* A633C 800EFF7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6340 800EFF80 AFB00010 */  sw         $s0, 0x10($sp)
/* A6344 800EFF84 00808021 */  addu       $s0, $a0, $zero
/* A6348 800EFF88 AFBF0014 */  sw         $ra, 0x14($sp)
/* A634C 800EFF8C 8E020000 */  lw         $v0, 0x0($s0)
/* A6350 800EFF90 00002821 */  addu       $a1, $zero, $zero
/* A6354 800EFF94 84440018 */  lh         $a0, 0x18($v0)
/* A6358 800EFF98 8C42001C */  lw         $v0, 0x1C($v0)
/* A635C 800EFF9C 0040F809 */  jalr       $v0
/* A6360 800EFFA0 02042021 */   addu      $a0, $s0, $a0
/* A6364 800EFFA4 02002021 */  addu       $a0, $s0, $zero
/* A6368 800EFFA8 AC800010 */  sw         $zero, 0x10($a0)
/* A636C 800EFFAC AC800014 */  sw         $zero, 0x14($a0)
/* A6370 800EFFB0 0C03A1C0 */  jal        func_race_800E8700
/* A6374 800EFFB4 AC80001C */   sw        $zero, 0x1C($a0)
/* A6378 800EFFB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A637C 800EFFBC 8FB00010 */  lw         $s0, 0x10($sp)
/* A6380 800EFFC0 03E00008 */  jr         $ra
/* A6384 800EFFC4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800EFFC8
/* A6388 800EFFC8 24020002 */  addiu      $v0, $zero, 0x2
/* A638C 800EFFCC 03E00008 */  jr         $ra
/* A6390 800EFFD0 AC82000C */   sw        $v0, 0xC($a0)

glabel func_race_800EFFD4
/* A6394 800EFFD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6398 800EFFD8 AFB00010 */  sw         $s0, 0x10($sp)
/* A639C 800EFFDC 00808021 */  addu       $s0, $a0, $zero
/* A63A0 800EFFE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A63A4 800EFFE4 8E050018 */  lw         $a1, 0x18($s0)
/* A63A8 800EFFE8 10A00006 */  beqz       $a1, .Lrace_800F0004
/* A63AC 800EFFEC 24020001 */   addiu     $v0, $zero, 0x1
/* A63B0 800EFFF0 8E040014 */  lw         $a0, 0x14($s0)
/* A63B4 800EFFF4 0C01088C */  jal        func_80042230
/* A63B8 800EFFF8 00000000 */   nop
/* A63BC 800EFFFC AE000018 */  sw         $zero, 0x18($s0)
/* A63C0 800F0000 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800F0004:
/* A63C4 800F0004 AE02000C */  sw         $v0, 0xC($s0)
/* A63C8 800F0008 8FBF0014 */  lw         $ra, 0x14($sp)
/* A63CC 800F000C 8FB00010 */  lw         $s0, 0x10($sp)
/* A63D0 800F0010 03E00008 */  jr         $ra
/* A63D4 800F0014 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F0018
/* A63D8 800F0018 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A63DC 800F001C AFB1003C */  sw         $s1, 0x3C($sp)
/* A63E0 800F0020 00808821 */  addu       $s1, $a0, $zero
/* A63E4 800F0024 AFBF0048 */  sw         $ra, 0x48($sp)
/* A63E8 800F0028 AFB30044 */  sw         $s3, 0x44($sp)
/* A63EC 800F002C AFB20040 */  sw         $s2, 0x40($sp)
/* A63F0 800F0030 AFB00038 */  sw         $s0, 0x38($sp)
/* A63F4 800F0034 F7B60058 */  sdc1       $f22, 0x58($sp)
/* A63F8 800F0038 F7B40050 */  sdc1       $f20, 0x50($sp)
/* A63FC 800F003C 8E23000C */  lw         $v1, 0xC($s1)
/* A6400 800F0040 24020001 */  addiu      $v0, $zero, 0x1
/* A6404 800F0044 10620083 */  beq        $v1, $v0, .Lrace_800F0254
/* A6408 800F0048 00000000 */   nop
/* A640C 800F004C 8E230010 */  lw         $v1, 0x10($s1)
/* A6410 800F0050 8C620078 */  lw         $v0, 0x78($v1)
/* A6414 800F0054 C4740058 */  lwc1       $f20, 0x58($v1)
/* A6418 800F0058 C4400034 */  lwc1       $f0, 0x34($v0)
/* A641C 800F005C 4600A502 */  mul.s      $f20, $f20, $f0
/* A6420 800F0060 3C01800D */  lui        $at, %hi(D_race_800CC820)
/* A6424 800F0064 C420C820 */  lwc1       $f0, %lo(D_race_800CC820)($at)
/* A6428 800F0068 0C03A1C4 */  jal        func_race_800E8710
/* A642C 800F006C 46140583 */   div.s     $f22, $f0, $f20
/* A6430 800F0070 8E230010 */  lw         $v1, 0x10($s1)
/* A6434 800F0074 8C620024 */  lw         $v0, 0x24($v1)
/* A6438 800F0078 00002821 */  addu       $a1, $zero, $zero
/* A643C 800F007C 844400B8 */  lh         $a0, 0xB8($v0)
/* A6440 800F0080 8C4200BC */  lw         $v0, 0xBC($v0)
/* A6444 800F0084 0040F809 */  jalr       $v0
/* A6448 800F0088 00642021 */   addu      $a0, $v1, $a0
/* A644C 800F008C 8C430008 */  lw         $v1, 0x8($v0)
/* A6450 800F0090 00002821 */  addu       $a1, $zero, $zero
/* A6454 800F0094 84640038 */  lh         $a0, 0x38($v1)
/* A6458 800F0098 8C63003C */  lw         $v1, 0x3C($v1)
/* A645C 800F009C 0060F809 */  jalr       $v1
/* A6460 800F00A0 00442021 */   addu      $a0, $v0, $a0
/* A6464 800F00A4 00409021 */  addu       $s2, $v0, $zero
/* A6468 800F00A8 8E42000C */  lw         $v0, 0xC($s2)
/* A646C 800F00AC 27A50018 */  addiu      $a1, $sp, 0x18
/* A6470 800F00B0 84440088 */  lh         $a0, 0x88($v0)
/* A6474 800F00B4 8C42008C */  lw         $v0, 0x8C($v0)
/* A6478 800F00B8 0040F809 */  jalr       $v0
/* A647C 800F00BC 02442021 */   addu      $a0, $s2, $a0
/* A6480 800F00C0 C7A40018 */  lwc1       $f4, 0x18($sp)
/* A6484 800F00C4 46142102 */  mul.s      $f4, $f4, $f20
/* A6488 800F00C8 27B00018 */  addiu      $s0, $sp, 0x18
/* A648C 800F00CC C6020004 */  lwc1       $f2, 0x4($s0)
/* A6490 800F00D0 46141082 */  mul.s      $f2, $f2, $f20
/* A6494 800F00D4 C6000008 */  lwc1       $f0, 0x8($s0)
/* A6498 800F00D8 46140002 */  mul.s      $f0, $f0, $f20
/* A649C 800F00DC 02002821 */  addu       $a1, $s0, $zero
/* A64A0 800F00E0 E7A40018 */  swc1       $f4, 0x18($sp)
/* A64A4 800F00E4 E6020004 */  swc1       $f2, 0x4($s0)
/* A64A8 800F00E8 E6000008 */  swc1       $f0, 0x8($s0)
/* A64AC 800F00EC 8E230010 */  lw         $v1, 0x10($s1)
/* A64B0 800F00F0 27B30028 */  addiu      $s3, $sp, 0x28
/* A64B4 800F00F4 8C620024 */  lw         $v0, 0x24($v1)
/* A64B8 800F00F8 02603021 */  addu       $a2, $s3, $zero
/* A64BC 800F00FC 84440060 */  lh         $a0, 0x60($v0)
/* A64C0 800F0100 8C420064 */  lw         $v0, 0x64($v0)
/* A64C4 800F0104 0040F809 */  jalr       $v0
/* A64C8 800F0108 00642021 */   addu      $a0, $v1, $a0
/* A64CC 800F010C 8E220018 */  lw         $v0, 0x18($s1)
/* A64D0 800F0110 1440000B */  bnez       $v0, .Lrace_800F0140
/* A64D4 800F0114 3C068003 */   lui       $a2, %hi(D_8002FAB0)
/* A64D8 800F0118 3C05800D */  lui        $a1, %hi(D_race_800CC818)
/* A64DC 800F011C 24A5C818 */  addiu      $a1, $a1, %lo(D_race_800CC818)
/* A64E0 800F0120 00003021 */  addu       $a2, $zero, $zero
/* A64E4 800F0124 AFA00010 */  sw         $zero, 0x10($sp)
/* A64E8 800F0128 8E240014 */  lw         $a0, 0x14($s1)
/* A64EC 800F012C 0C0107DD */  jal        func_80041F74
/* A64F0 800F0130 00C03821 */   addu      $a3, $a2, $zero
/* A64F4 800F0134 10400047 */  beqz       $v0, .Lrace_800F0254
/* A64F8 800F0138 AE220018 */   sw        $v0, 0x18($s1)
/* A64FC 800F013C 3C068003 */  lui        $a2, %hi(D_8002FAB0)
.Lrace_800F0140:
/* A6500 800F0140 3C038003 */  lui        $v1, %hi(D_8002F2B0)
/* A6504 800F0144 2463F2B0 */  addiu      $v1, $v1, %lo(D_8002F2B0)
/* A6508 800F0148 8CC5FAB0 */  lw         $a1, %lo(D_8002FAB0)($a2)
/* A650C 800F014C 3C04800D */  lui        $a0, %hi(D_race_800CC890)
/* A6510 800F0150 24A50001 */  addiu      $a1, $a1, 0x1
/* A6514 800F0154 30A503FF */  andi       $a1, $a1, 0x3FF
/* A6518 800F0158 00051040 */  sll        $v0, $a1, 1
/* A651C 800F015C 00431021 */  addu       $v0, $v0, $v1
/* A6520 800F0160 94430000 */  lhu        $v1, 0x0($v0)
/* A6524 800F0164 2484C890 */  addiu      $a0, $a0, %lo(D_race_800CC890)
/* A6528 800F0168 30630003 */  andi       $v1, $v1, 0x3
/* A652C 800F016C 00031040 */  sll        $v0, $v1, 1
/* A6530 800F0170 00431021 */  addu       $v0, $v0, $v1
/* A6534 800F0174 00021080 */  sll        $v0, $v0, 2
/* A6538 800F0178 00441021 */  addu       $v0, $v0, $a0
/* A653C 800F017C C4420000 */  lwc1       $f2, 0x0($v0)
/* A6540 800F0180 46161082 */  mul.s      $f2, $f2, $f22
/* A6544 800F0184 C4400004 */  lwc1       $f0, 0x4($v0)
/* A6548 800F0188 46160102 */  mul.s      $f4, $f0, $f22
/* A654C 800F018C C4400008 */  lwc1       $f0, 0x8($v0)
/* A6550 800F0190 46160002 */  mul.s      $f0, $f0, $f22
/* A6554 800F0194 E7A20018 */  swc1       $f2, 0x18($sp)
/* A6558 800F0198 E7A4001C */  swc1       $f4, 0x1C($sp)
/* A655C 800F019C E7A00020 */  swc1       $f0, 0x20($sp)
/* A6560 800F01A0 8E22001C */  lw         $v0, 0x1C($s1)
/* A6564 800F01A4 10400003 */  beqz       $v0, .Lrace_800F01B4
/* A6568 800F01A8 ACC5FAB0 */   sw        $a1, %lo(D_8002FAB0)($a2)
/* A656C 800F01AC 46002007 */  neg.s      $f0, $f4
/* A6570 800F01B0 E7A0001C */  swc1       $f0, 0x1C($sp)
.Lrace_800F01B4:
/* A6574 800F01B4 02002821 */  addu       $a1, $s0, $zero
/* A6578 800F01B8 8E42000C */  lw         $v0, 0xC($s2)
/* A657C 800F01BC 02603021 */  addu       $a2, $s3, $zero
/* A6580 800F01C0 84440010 */  lh         $a0, 0x10($v0)
/* A6584 800F01C4 8C420014 */  lw         $v0, 0x14($v0)
/* A6588 800F01C8 0040F809 */  jalr       $v0
/* A658C 800F01CC 02442021 */   addu      $a0, $s2, $a0
/* A6590 800F01D0 C7A40028 */  lwc1       $f4, 0x28($sp)
/* A6594 800F01D4 46142102 */  mul.s      $f4, $f4, $f20
/* A6598 800F01D8 C7A2002C */  lwc1       $f2, 0x2C($sp)
/* A659C 800F01DC 46141082 */  mul.s      $f2, $f2, $f20
/* A65A0 800F01E0 C7A00030 */  lwc1       $f0, 0x30($sp)
/* A65A4 800F01E4 46140002 */  mul.s      $f0, $f0, $f20
/* A65A8 800F01E8 E7A40018 */  swc1       $f4, 0x18($sp)
/* A65AC 800F01EC E6020004 */  swc1       $f2, 0x4($s0)
/* A65B0 800F01F0 E6000008 */  swc1       $f0, 0x8($s0)
/* A65B4 800F01F4 8E230010 */  lw         $v1, 0x10($s1)
/* A65B8 800F01F8 02002821 */  addu       $a1, $s0, $zero
/* A65BC 800F01FC 8C620024 */  lw         $v0, 0x24($v1)
/* A65C0 800F0200 02603021 */  addu       $a2, $s3, $zero
/* A65C4 800F0204 84440060 */  lh         $a0, 0x60($v0)
/* A65C8 800F0208 8C420064 */  lw         $v0, 0x64($v0)
/* A65CC 800F020C 0040F809 */  jalr       $v0
/* A65D0 800F0210 00642021 */   addu      $a0, $v1, $a0
/* A65D4 800F0214 8E220018 */  lw         $v0, 0x18($s1)
/* A65D8 800F0218 8C450000 */  lw         $a1, 0x0($v0)
/* A65DC 800F021C 8E230010 */  lw         $v1, 0x10($s1)
/* A65E0 800F0220 10A00007 */  beqz       $a1, .Lrace_800F0240
/* A65E4 800F0224 24A50168 */   addiu     $a1, $a1, 0x168
/* A65E8 800F0228 8C620024 */  lw         $v0, 0x24($v1)
/* A65EC 800F022C 84440090 */  lh         $a0, 0x90($v0)
/* A65F0 800F0230 8C420094 */  lw         $v0, 0x94($v0)
/* A65F4 800F0234 0040F809 */  jalr       $v0
/* A65F8 800F0238 00642021 */   addu      $a0, $v1, $a0
/* A65FC 800F023C 8E220018 */  lw         $v0, 0x18($s1)
.Lrace_800F0240:
/* A6600 800F0240 8C440000 */  lw         $a0, 0x0($v0)
/* A6604 800F0244 10800003 */  beqz       $a0, .Lrace_800F0254
/* A6608 800F0248 00000000 */   nop
/* A660C 800F024C 0C01058D */  jal        func_80041634
/* A6610 800F0250 02602821 */   addu      $a1, $s3, $zero
.Lrace_800F0254:
/* A6614 800F0254 8FBF0048 */  lw         $ra, 0x48($sp)
/* A6618 800F0258 8FB30044 */  lw         $s3, 0x44($sp)
/* A661C 800F025C 8FB20040 */  lw         $s2, 0x40($sp)
/* A6620 800F0260 8FB1003C */  lw         $s1, 0x3C($sp)
/* A6624 800F0264 8FB00038 */  lw         $s0, 0x38($sp)
/* A6628 800F0268 D7B60058 */  ldc1       $f22, 0x58($sp)
/* A662C 800F026C D7B40050 */  ldc1       $f20, 0x50($sp)
/* A6630 800F0270 03E00008 */  jr         $ra
/* A6634 800F0274 27BD0060 */   addiu     $sp, $sp, 0x60
