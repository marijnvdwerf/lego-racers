.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_8011FF50
/* D6310 8011FF50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D6314 8011FF54 AFB20018 */  sw         $s2, 0x18($sp)
/* D6318 8011FF58 00809021 */  addu       $s2, $a0, $zero
/* D631C 8011FF5C AFB10014 */  sw         $s1, 0x14($sp)
/* D6320 8011FF60 02408821 */  addu       $s1, $s2, $zero
/* D6324 8011FF64 AFB00010 */  sw         $s0, 0x10($sp)
/* D6328 8011FF68 24100004 */  addiu      $s0, $zero, 0x4
/* D632C 8011FF6C AFB3001C */  sw         $s3, 0x1C($sp)
/* D6330 8011FF70 2413FFFF */  addiu      $s3, $zero, -0x1
/* D6334 8011FF74 AFBF0020 */  sw         $ra, 0x20($sp)
.Lrace_8011FF78:
/* D6338 8011FF78 0C047ED0 */  jal        func_race_8011FB40
/* D633C 8011FF7C 02202021 */   addu      $a0, $s1, $zero
/* D6340 8011FF80 2610FFFF */  addiu      $s0, $s0, -0x1
/* D6344 8011FF84 1613FFFC */  bne        $s0, $s3, .Lrace_8011FF78
/* D6348 8011FF88 26310014 */   addiu     $s1, $s1, 0x14
/* D634C 8011FF8C 0C048020 */  jal        func_race_80120080
/* D6350 8011FF90 02402021 */   addu      $a0, $s2, $zero
/* D6354 8011FF94 02401021 */  addu       $v0, $s2, $zero
/* D6358 8011FF98 8FBF0020 */  lw         $ra, 0x20($sp)
/* D635C 8011FF9C 8FB3001C */  lw         $s3, 0x1C($sp)
/* D6360 8011FFA0 8FB20018 */  lw         $s2, 0x18($sp)
/* D6364 8011FFA4 8FB10014 */  lw         $s1, 0x14($sp)
/* D6368 8011FFA8 8FB00010 */  lw         $s0, 0x10($sp)
/* D636C 8011FFAC 03E00008 */  jr         $ra
/* D6370 8011FFB0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_8011FFB4
/* D6374 8011FFB4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D6378 8011FFB8 AFB10014 */  sw         $s1, 0x14($sp)
/* D637C 8011FFBC 00808821 */  addu       $s1, $a0, $zero
/* D6380 8011FFC0 AFB20018 */  sw         $s2, 0x18($sp)
/* D6384 8011FFC4 00A09021 */  addu       $s2, $a1, $zero
/* D6388 8011FFC8 AFBF001C */  sw         $ra, 0x1C($sp)
/* D638C 8011FFCC 0C04800A */  jal        func_race_80120028
/* D6390 8011FFD0 AFB00010 */   sw        $s0, 0x10($sp)
/* D6394 8011FFD4 12200009 */  beqz       $s1, .Lrace_8011FFFC
/* D6398 8011FFD8 26300064 */   addiu     $s0, $s1, 0x64
/* D639C 8011FFDC 12300008 */  beq        $s1, $s0, .Lrace_80120000
/* D63A0 8011FFE0 32420001 */   andi      $v0, $s2, 0x1
/* D63A4 8011FFE4 2610FFEC */  addiu      $s0, $s0, -0x14
.Lrace_8011FFE8:
/* D63A8 8011FFE8 02002021 */  addu       $a0, $s0, $zero
/* D63AC 8011FFEC 0C047EDC */  jal        func_race_8011FB70
/* D63B0 8011FFF0 24050002 */   addiu     $a1, $zero, 0x2
/* D63B4 8011FFF4 1630FFFC */  bne        $s1, $s0, .Lrace_8011FFE8
/* D63B8 8011FFF8 2610FFEC */   addiu     $s0, $s0, -0x14
.Lrace_8011FFFC:
/* D63BC 8011FFFC 32420001 */  andi       $v0, $s2, 0x1
.Lrace_80120000:
/* D63C0 80120000 10400003 */  beqz       $v0, .Lrace_80120010
/* D63C4 80120004 00000000 */   nop
/* D63C8 80120008 0C01FB5C */  jal        func_8007ED70
/* D63CC 8012000C 02202021 */   addu      $a0, $s1, $zero
.Lrace_80120010:
/* D63D0 80120010 8FBF001C */  lw         $ra, 0x1C($sp)
/* D63D4 80120014 8FB20018 */  lw         $s2, 0x18($sp)
/* D63D8 80120018 8FB10014 */  lw         $s1, 0x14($sp)
/* D63DC 8012001C 8FB00010 */  lw         $s0, 0x10($sp)
/* D63E0 80120020 03E00008 */  jr         $ra
/* D63E4 80120024 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80120028
/* D63E8 80120028 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D63EC 8012002C AFB20018 */  sw         $s2, 0x18($sp)
/* D63F0 80120030 00809021 */  addu       $s2, $a0, $zero
/* D63F4 80120034 AFB10014 */  sw         $s1, 0x14($sp)
/* D63F8 80120038 00008821 */  addu       $s1, $zero, $zero
/* D63FC 8012003C AFB00010 */  sw         $s0, 0x10($sp)
/* D6400 80120040 02408021 */  addu       $s0, $s2, $zero
/* D6404 80120044 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_80120048:
/* D6408 80120048 0C047EF0 */  jal        func_race_8011FBC0
/* D640C 8012004C 02002021 */   addu      $a0, $s0, $zero
/* D6410 80120050 26310001 */  addiu      $s1, $s1, 0x1
/* D6414 80120054 2E220005 */  sltiu      $v0, $s1, 0x5
/* D6418 80120058 1440FFFB */  bnez       $v0, .Lrace_80120048
/* D641C 8012005C 26100014 */   addiu     $s0, $s0, 0x14
/* D6420 80120060 0C048020 */  jal        func_race_80120080
/* D6424 80120064 02402021 */   addu      $a0, $s2, $zero
/* D6428 80120068 8FBF001C */  lw         $ra, 0x1C($sp)
/* D642C 8012006C 8FB20018 */  lw         $s2, 0x18($sp)
/* D6430 80120070 8FB10014 */  lw         $s1, 0x14($sp)
/* D6434 80120074 8FB00010 */  lw         $s0, 0x10($sp)
/* D6438 80120078 03E00008 */  jr         $ra
/* D643C 8012007C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80120080
/* D6440 80120080 00002821 */  addu       $a1, $zero, $zero
/* D6444 80120084 00801821 */  addu       $v1, $a0, $zero
.Lrace_80120088:
/* D6448 80120088 AC600064 */  sw         $zero, 0x64($v1)
/* D644C 8012008C 24A50001 */  addiu      $a1, $a1, 0x1
/* D6450 80120090 2CA20004 */  sltiu      $v0, $a1, 0x4
/* D6454 80120094 1440FFFC */  bnez       $v0, .Lrace_80120088
/* D6458 80120098 24630004 */   addiu     $v1, $v1, 0x4
/* D645C 8012009C AC800074 */  sw         $zero, 0x74($a0)
/* D6460 801200A0 AC800078 */  sw         $zero, 0x78($a0)
/* D6464 801200A4 03E00008 */  jr         $ra
/* D6468 801200A8 AC80007C */   sw        $zero, 0x7C($a0)

glabel func_race_801200AC
/* D646C 801200AC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D6470 801200B0 AFB40020 */  sw         $s4, 0x20($sp)
/* D6474 801200B4 0080A021 */  addu       $s4, $a0, $zero
/* D6478 801200B8 AFB3001C */  sw         $s3, 0x1C($sp)
/* D647C 801200BC 00A09821 */  addu       $s3, $a1, $zero
/* D6480 801200C0 AFBF0028 */  sw         $ra, 0x28($sp)
/* D6484 801200C4 AFB50024 */  sw         $s5, 0x24($sp)
/* D6488 801200C8 AFB20018 */  sw         $s2, 0x18($sp)
/* D648C 801200CC AFB10014 */  sw         $s1, 0x14($sp)
/* D6490 801200D0 AFB00010 */  sw         $s0, 0x10($sp)
/* D6494 801200D4 8E820074 */  lw         $v0, 0x74($s4)
/* D6498 801200D8 10400003 */  beqz       $v0, .Lrace_801200E8
/* D649C 801200DC 00C0A821 */   addu      $s5, $a2, $zero
/* D64A0 801200E0 0C04800A */  jal        func_race_80120028
/* D64A4 801200E4 00000000 */   nop
.Lrace_801200E8:
/* D64A8 801200E8 00008821 */  addu       $s1, $zero, $zero
/* D64AC 801200EC 02809021 */  addu       $s2, $s4, $zero
/* D64B0 801200F0 3C02800D */  lui        $v0, %hi(D_race_800CE530)
/* D64B4 801200F4 2450E530 */  addiu      $s0, $v0, %lo(D_race_800CE530)
/* D64B8 801200F8 AE930074 */  sw         $s3, 0x74($s4)
/* D64BC 801200FC 8E73005C */  lw         $s3, 0x5C($s3)
.Lrace_80120100:
/* D64C0 80120100 2E220004 */  sltiu      $v0, $s1, 0x4
/* D64C4 80120104 5040000D */  beql       $v0, $zero, .Lrace_8012013C
/* D64C8 80120108 00008821 */   addu      $s1, $zero, $zero
/* D64CC 8012010C 8E6200BC */  lw         $v0, 0xBC($s3)
/* D64D0 80120110 14400003 */  bnez       $v0, .Lrace_80120120
/* D64D4 80120114 266400BC */   addiu     $a0, $s3, 0xBC
/* D64D8 80120118 0804804A */  j          .Lrace_80120128
/* D64DC 8012011C 00001021 */   addu      $v0, $zero, $zero
.Lrace_80120120:
/* D64E0 80120120 0C016427 */  jal        func_8005909C
/* D64E4 80120124 02002821 */   addu      $a1, $s0, $zero
.Lrace_80120128:
/* D64E8 80120128 AE420064 */  sw         $v0, 0x64($s2)
/* D64EC 8012012C 26520004 */  addiu      $s2, $s2, 0x4
/* D64F0 80120130 26100008 */  addiu      $s0, $s0, 0x8
/* D64F4 80120134 08048040 */  j          .Lrace_80120100
/* D64F8 80120138 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_8012013C:
/* D64FC 8012013C 02808021 */  addu       $s0, $s4, $zero
.Lrace_80120140:
/* D6500 80120140 02002021 */  addu       $a0, $s0, $zero
/* D6504 80120144 0C047EFB */  jal        func_race_8011FBEC
/* D6508 80120148 02A02821 */   addu      $a1, $s5, $zero
/* D650C 8012014C 26310001 */  addiu      $s1, $s1, 0x1
/* D6510 80120150 2E220005 */  sltiu      $v0, $s1, 0x5
/* D6514 80120154 1440FFFA */  bnez       $v0, .Lrace_80120140
/* D6518 80120158 26100014 */   addiu     $s0, $s0, 0x14
/* D651C 8012015C 8FBF0028 */  lw         $ra, 0x28($sp)
/* D6520 80120160 8FB50024 */  lw         $s5, 0x24($sp)
/* D6524 80120164 8FB40020 */  lw         $s4, 0x20($sp)
/* D6528 80120168 8FB3001C */  lw         $s3, 0x1C($sp)
/* D652C 8012016C 8FB20018 */  lw         $s2, 0x18($sp)
/* D6530 80120170 8FB10014 */  lw         $s1, 0x14($sp)
/* D6534 80120174 8FB00010 */  lw         $s0, 0x10($sp)
/* D6538 80120178 03E00008 */  jr         $ra
/* D653C 8012017C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_80120180
/* D6540 80120180 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D6544 80120184 AFB10024 */  sw         $s1, 0x24($sp)
/* D6548 80120188 00808821 */  addu       $s1, $a0, $zero
/* D654C 8012018C AFB7003C */  sw         $s7, 0x3C($sp)
/* D6550 80120190 00A0B821 */  addu       $s7, $a1, $zero
/* D6554 80120194 AFB60038 */  sw         $s6, 0x38($sp)
/* D6558 80120198 00C0B021 */  addu       $s6, $a2, $zero
/* D655C 8012019C AFB50034 */  sw         $s5, 0x34($sp)
/* D6560 801201A0 00E0A821 */  addu       $s5, $a3, $zero
/* D6564 801201A4 AFB40030 */  sw         $s4, 0x30($sp)
/* D6568 801201A8 0000A021 */  addu       $s4, $zero, $zero
/* D656C 801201AC AFB00020 */  sw         $s0, 0x20($sp)
/* D6570 801201B0 02808021 */  addu       $s0, $s4, $zero
/* D6574 801201B4 24040002 */  addiu      $a0, $zero, 0x2
/* D6578 801201B8 02201821 */  addu       $v1, $s1, $zero
/* D657C 801201BC AFBF0040 */  sw         $ra, 0x40($sp)
/* D6580 801201C0 AFB3002C */  sw         $s3, 0x2C($sp)
/* D6584 801201C4 AFB20028 */  sw         $s2, 0x28($sp)
.Lrace_801201C8:
/* D6588 801201C8 2E020005 */  sltiu      $v0, $s0, 0x5
/* D658C 801201CC 10400007 */  beqz       $v0, .Lrace_801201EC
/* D6590 801201D0 24020005 */   addiu     $v0, $zero, 0x5
/* D6594 801201D4 8C620010 */  lw         $v0, 0x10($v1)
/* D6598 801201D8 14440003 */  bne        $v0, $a0, .Lrace_801201E8
/* D659C 801201DC 24630014 */   addiu     $v1, $v1, 0x14
/* D65A0 801201E0 08048072 */  j          .Lrace_801201C8
/* D65A4 801201E4 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_801201E8:
/* D65A8 801201E8 24020005 */  addiu      $v0, $zero, 0x5
.Lrace_801201EC:
/* D65AC 801201EC 12020029 */  beq        $s0, $v0, .Lrace_80120294
/* D65B0 801201F0 00000000 */   nop
/* D65B4 801201F4 8E240074 */  lw         $a0, 0x74($s1)
/* D65B8 801201F8 0C04B4FB */  jal        func_race_8012D3EC
/* D65BC 801201FC 00000000 */   nop
/* D65C0 80120200 00409821 */  addu       $s3, $v0, $zero
/* D65C4 80120204 12600023 */  beqz       $s3, .Lrace_80120294
/* D65C8 80120208 24020004 */   addiu     $v0, $zero, 0x4
/* D65CC 8012020C 8E320078 */  lw         $s2, 0x78($s1)
/* D65D0 80120210 26430001 */  addiu      $v1, $s2, 0x1
/* D65D4 80120214 14620002 */  bne        $v1, $v0, .Lrace_80120220
/* D65D8 80120218 AE230078 */   sw        $v1, 0x78($s1)
/* D65DC 8012021C AE200078 */  sw         $zero, 0x78($s1)
.Lrace_80120220:
/* D65E0 80120220 52A0000C */  beql       $s5, $zero, .Lrace_80120254
/* D65E4 80120224 00102080 */   sll       $a0, $s0, 2
/* D65E8 80120228 8E220074 */  lw         $v0, 0x74($s1)
/* D65EC 8012022C 8C420074 */  lw         $v0, 0x74($v0)
/* D65F0 80120230 8C430298 */  lw         $v1, 0x298($v0)
/* D65F4 80120234 8C620008 */  lw         $v0, 0x8($v1)
/* D65F8 80120238 8EA50DFC */  lw         $a1, 0xDFC($s5)
/* D65FC 8012023C 84440058 */  lh         $a0, 0x58($v0)
/* D6600 80120240 8C42005C */  lw         $v0, 0x5C($v0)
/* D6604 80120244 0040F809 */  jalr       $v0
/* D6608 80120248 00642021 */   addu      $a0, $v1, $a0
/* D660C 8012024C 0040A021 */  addu       $s4, $v0, $zero
/* D6610 80120250 00102080 */  sll        $a0, $s0, 2
.Lrace_80120254:
/* D6614 80120254 00902021 */  addu       $a0, $a0, $s0
/* D6618 80120258 00042080 */  sll        $a0, $a0, 2
/* D661C 8012025C 02242021 */  addu       $a0, $s1, $a0
/* D6620 80120260 AFB60010 */  sw         $s6, 0x10($sp)
/* D6624 80120264 8E22007C */  lw         $v0, 0x7C($s1)
/* D6628 80120268 02603021 */  addu       $a2, $s3, $zero
/* D662C 8012026C AFB40018 */  sw         $s4, 0x18($sp)
/* D6630 80120270 AFA20014 */  sw         $v0, 0x14($sp)
/* D6634 80120274 00121080 */  sll        $v0, $s2, 2
/* D6638 80120278 02221021 */  addu       $v0, $s1, $v0
/* D663C 8012027C 8C450064 */  lw         $a1, 0x64($v0)
/* D6640 80120280 0C047F10 */  jal        func_race_8011FC40
/* D6644 80120284 02E03821 */   addu      $a3, $s7, $zero
/* D6648 80120288 8E22007C */  lw         $v0, 0x7C($s1)
/* D664C 8012028C 24420001 */  addiu      $v0, $v0, 0x1
/* D6650 80120290 AE22007C */  sw         $v0, 0x7C($s1)
.Lrace_80120294:
/* D6654 80120294 8FBF0040 */  lw         $ra, 0x40($sp)
/* D6658 80120298 8FB7003C */  lw         $s7, 0x3C($sp)
/* D665C 8012029C 8FB60038 */  lw         $s6, 0x38($sp)
/* D6660 801202A0 8FB50034 */  lw         $s5, 0x34($sp)
/* D6664 801202A4 8FB40030 */  lw         $s4, 0x30($sp)
/* D6668 801202A8 8FB3002C */  lw         $s3, 0x2C($sp)
/* D666C 801202AC 8FB20028 */  lw         $s2, 0x28($sp)
/* D6670 801202B0 8FB10024 */  lw         $s1, 0x24($sp)
/* D6674 801202B4 8FB00020 */  lw         $s0, 0x20($sp)
/* D6678 801202B8 03E00008 */  jr         $ra
/* D667C 801202BC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_801202C0
/* D6680 801202C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D6684 801202C4 AFB20018 */  sw         $s2, 0x18($sp)
/* D6688 801202C8 00809021 */  addu       $s2, $a0, $zero
/* D668C 801202CC AFB40020 */  sw         $s4, 0x20($sp)
/* D6690 801202D0 00A0A021 */  addu       $s4, $a1, $zero
/* D6694 801202D4 AFB10014 */  sw         $s1, 0x14($sp)
/* D6698 801202D8 00008821 */  addu       $s1, $zero, $zero
/* D669C 801202DC AFB3001C */  sw         $s3, 0x1C($sp)
/* D66A0 801202E0 24130003 */  addiu      $s3, $zero, 0x3
/* D66A4 801202E4 AFB00010 */  sw         $s0, 0x10($sp)
/* D66A8 801202E8 02408021 */  addu       $s0, $s2, $zero
/* D66AC 801202EC AFBF0024 */  sw         $ra, 0x24($sp)
.Lrace_801202F0:
/* D66B0 801202F0 2E220005 */  sltiu      $v0, $s1, 0x5
/* D66B4 801202F4 1040000F */  beqz       $v0, .Lrace_80120334
/* D66B8 801202F8 02002021 */   addu      $a0, $s0, $zero
/* D66BC 801202FC 0C047F9E */  jal        func_race_8011FE78
/* D66C0 80120300 02802821 */   addu      $a1, $s4, $zero
/* D66C4 80120304 8E020010 */  lw         $v0, 0x10($s0)
/* D66C8 80120308 54530008 */  bnel       $v0, $s3, .Lrace_8012032C
/* D66CC 8012030C 26100014 */   addiu     $s0, $s0, 0x14
/* D66D0 80120310 8E440074 */  lw         $a0, 0x74($s2)
/* D66D4 80120314 8E05000C */  lw         $a1, 0xC($s0)
/* D66D8 80120318 0C04B519 */  jal        func_race_8012D464
/* D66DC 8012031C 00000000 */   nop
/* D66E0 80120320 0C047FCE */  jal        func_race_8011FF38
/* D66E4 80120324 02002021 */   addu      $a0, $s0, $zero
/* D66E8 80120328 26100014 */  addiu      $s0, $s0, 0x14
.Lrace_8012032C:
/* D66EC 8012032C 080480BC */  j          .Lrace_801202F0
/* D66F0 80120330 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_80120334:
/* D66F4 80120334 8FBF0024 */  lw         $ra, 0x24($sp)
/* D66F8 80120338 8FB40020 */  lw         $s4, 0x20($sp)
/* D66FC 8012033C 8FB3001C */  lw         $s3, 0x1C($sp)
/* D6700 80120340 8FB20018 */  lw         $s2, 0x18($sp)
/* D6704 80120344 8FB10014 */  lw         $s1, 0x14($sp)
/* D6708 80120348 8FB00010 */  lw         $s0, 0x10($sp)
/* D670C 8012034C 03E00008 */  jr         $ra
/* D6710 80120350 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80120354
/* D6714 80120354 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D6718 80120358 AFB20018 */  sw         $s2, 0x18($sp)
/* D671C 8012035C 00A09021 */  addu       $s2, $a1, $zero
/* D6720 80120360 AFB10014 */  sw         $s1, 0x14($sp)
/* D6724 80120364 00008821 */  addu       $s1, $zero, $zero
/* D6728 80120368 AFB00010 */  sw         $s0, 0x10($sp)
/* D672C 8012036C 00808021 */  addu       $s0, $a0, $zero
/* D6730 80120370 AFBF001C */  sw         $ra, 0x1C($sp)
.Lrace_80120374:
/* D6734 80120374 02002021 */  addu       $a0, $s0, $zero
/* D6738 80120378 0C047FBE */  jal        func_race_8011FEF8
/* D673C 8012037C 02402821 */   addu      $a1, $s2, $zero
/* D6740 80120380 26310001 */  addiu      $s1, $s1, 0x1
/* D6744 80120384 2E220005 */  sltiu      $v0, $s1, 0x5
/* D6748 80120388 1440FFFA */  bnez       $v0, .Lrace_80120374
/* D674C 8012038C 26100014 */   addiu     $s0, $s0, 0x14
/* D6750 80120390 8FBF001C */  lw         $ra, 0x1C($sp)
/* D6754 80120394 8FB20018 */  lw         $s2, 0x18($sp)
/* D6758 80120398 8FB10014 */  lw         $s1, 0x14($sp)
/* D675C 8012039C 8FB00010 */  lw         $s0, 0x10($sp)
/* D6760 801203A0 03E00008 */  jr         $ra
/* D6764 801203A4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_801203A8
/* D6768 801203A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D676C 801203AC AFB10014 */  sw         $s1, 0x14($sp)
/* D6770 801203B0 00008821 */  addu       $s1, $zero, $zero
/* D6774 801203B4 AFB00010 */  sw         $s0, 0x10($sp)
/* D6778 801203B8 00808021 */  addu       $s0, $a0, $zero
/* D677C 801203BC AFBF0018 */  sw         $ra, 0x18($sp)
.Lrace_801203C0:
/* D6780 801203C0 0C047FCE */  jal        func_race_8011FF38
/* D6784 801203C4 02002021 */   addu      $a0, $s0, $zero
/* D6788 801203C8 26310001 */  addiu      $s1, $s1, 0x1
/* D678C 801203CC 2E220005 */  sltiu      $v0, $s1, 0x5
/* D6790 801203D0 1440FFFB */  bnez       $v0, .Lrace_801203C0
/* D6794 801203D4 26100014 */   addiu     $s0, $s0, 0x14
/* D6798 801203D8 8FBF0018 */  lw         $ra, 0x18($sp)
/* D679C 801203DC 8FB10014 */  lw         $s1, 0x14($sp)
/* D67A0 801203E0 8FB00010 */  lw         $s0, 0x10($sp)
/* D67A4 801203E4 03E00008 */  jr         $ra
/* D67A8 801203E8 27BD0020 */   addiu     $sp, $sp, 0x20
