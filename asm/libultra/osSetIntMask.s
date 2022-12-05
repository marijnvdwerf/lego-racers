.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

# Handwritten function
glabel osSetIntMask
/* 166A0 80015AA0 400C6000 */  mfc0       $t4, $12
/* 166A4 80015AA4 3182FF01 */  andi       $v0, $t4, 0xFF01
/* 166A8 80015AA8 3C088003 */  lui        $t0, %hi(D_80032400)
/* 166AC 80015AAC 25082400 */  addiu      $t0, $t0, %lo(D_80032400)
/* 166B0 80015AB0 8D0B0000 */  lw         $t3, 0x0($t0)
/* 166B4 80015AB4 2401FFFF */  addiu      $at, $zero, -0x1
/* 166B8 80015AB8 01614026 */  xor        $t0, $t3, $at
/* 166BC 80015ABC 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 166C0 80015AC0 00481025 */  or         $v0, $v0, $t0
/* 166C4 80015AC4 3C0AA430 */  lui        $t2, %hi(D_A430000C)
/* 166C8 80015AC8 8D4A000C */  lw         $t2, %lo(D_A430000C)($t2)
/* 166CC 80015ACC 11400005 */  beqz       $t2, .L80015AE4
/* 166D0 80015AD0 000B4C02 */   srl       $t1, $t3, 16
/* 166D4 80015AD4 2401FFFF */  addiu      $at, $zero, -0x1
/* 166D8 80015AD8 01214826 */  xor        $t1, $t1, $at
/* 166DC 80015ADC 3129003F */  andi       $t1, $t1, 0x3F
/* 166E0 80015AE0 01495025 */  or         $t2, $t2, $t1
.L80015AE4:
/* 166E4 80015AE4 000A5400 */  sll        $t2, $t2, 16
/* 166E8 80015AE8 004A1025 */  or         $v0, $v0, $t2
/* 166EC 80015AEC 3C01003F */  lui        $at, (0x3F0000 >> 16)
/* 166F0 80015AF0 00814024 */  and        $t0, $a0, $at
/* 166F4 80015AF4 010B4024 */  and        $t0, $t0, $t3
/* 166F8 80015AF8 000843C2 */  srl        $t0, $t0, 15
/* 166FC 80015AFC 3C0A8000 */  lui        $t2, %hi(__osRcpImTable)
/* 16700 80015B00 01485021 */  addu       $t2, $t2, $t0
/* 16704 80015B04 954A1450 */  lhu        $t2, %lo(__osRcpImTable)($t2)
/* 16708 80015B08 3C01A430 */  lui        $at, %hi(D_A430000C)
/* 1670C 80015B0C AC2A000C */  sw         $t2, %lo(D_A430000C)($at)
/* 16710 80015B10 3088FF01 */  andi       $t0, $a0, 0xFF01
/* 16714 80015B14 3169FF00 */  andi       $t1, $t3, 0xFF00
/* 16718 80015B18 01094024 */  and        $t0, $t0, $t1
/* 1671C 80015B1C 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 16720 80015B20 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 16724 80015B24 01816024 */  and        $t4, $t4, $at
/* 16728 80015B28 01886025 */  or         $t4, $t4, $t0
/* 1672C 80015B2C 408C6000 */  mtc0       $t4, $12
/* 16730 80015B30 00000000 */  nop
/* 16734 80015B34 00000000 */  nop
/* 16738 80015B38 03E00008 */  jr         $ra
/* 1673C 80015B3C 00000000 */   nop

glabel osCreatePiManager
/* 16740 80015B40 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 16744 80015B44 AFB00018 */  sw         $s0, 0x18($sp)
/* 16748 80015B48 00808021 */  addu       $s0, $a0, $zero
/* 1674C 80015B4C AFB5002C */  sw         $s5, 0x2C($sp)
/* 16750 80015B50 00A0A821 */  addu       $s5, $a1, $zero
/* 16754 80015B54 AFB40028 */  sw         $s4, 0x28($sp)
/* 16758 80015B58 3C148003 */  lui        $s4, %hi(D_80030C90)
/* 1675C 80015B5C 26940C90 */  addiu      $s4, $s4, %lo(D_80030C90)
/* 16760 80015B60 AFBF0030 */  sw         $ra, 0x30($sp)
/* 16764 80015B64 AFB30024 */  sw         $s3, 0x24($sp)
/* 16768 80015B68 AFB20020 */  sw         $s2, 0x20($sp)
/* 1676C 80015B6C AFB1001C */  sw         $s1, 0x1C($sp)
/* 16770 80015B70 8E820000 */  lw         $v0, 0x0($s4)
/* 16774 80015B74 00C02821 */  addu       $a1, $a2, $zero
/* 16778 80015B78 1440004C */  bnez       $v0, .L80015CAC
/* 1677C 80015B7C 00E03021 */   addu      $a2, $a3, $zero
/* 16780 80015B80 0C007468 */  jal        osCreateMesgQueue
/* 16784 80015B84 02A02021 */   addu      $a0, $s5, $zero
/* 16788 80015B88 3C138004 */  lui        $s3, %hi(D_8003A340)
/* 1678C 80015B8C 2673A340 */  addiu      $s3, $s3, %lo(D_8003A340)
/* 16790 80015B90 02602021 */  addu       $a0, $s3, $zero
/* 16794 80015B94 3C058004 */  lui        $a1, %hi(D_8003A358)
/* 16798 80015B98 24A5A358 */  addiu      $a1, $a1, %lo(D_8003A358)
/* 1679C 80015B9C 0C007468 */  jal        osCreateMesgQueue
/* 167A0 80015BA0 24060001 */   addiu     $a2, $zero, 0x1
/* 167A4 80015BA4 3C028003 */  lui        $v0, %hi(D_80030CD0)
/* 167A8 80015BA8 8C420CD0 */  lw         $v0, %lo(D_80030CD0)($v0)
/* 167AC 80015BAC 54400004 */  bnel       $v0, $zero, .L80015BC0
/* 167B0 80015BB0 24040008 */   addiu     $a0, $zero, 0x8
/* 167B4 80015BB4 0C005A64 */  jal        func_80016990
/* 167B8 80015BB8 00000000 */   nop
/* 167BC 80015BBC 24040008 */  addiu      $a0, $zero, 0x8
.L80015BC0:
/* 167C0 80015BC0 02602821 */  addu       $a1, $s3, $zero
/* 167C4 80015BC4 3C062222 */  lui        $a2, (0x22222222 >> 16)
/* 167C8 80015BC8 0C0077B8 */  jal        osSetEventMesg
/* 167CC 80015BCC 34C62222 */   ori       $a2, $a2, (0x22222222 & 0xFFFF)
/* 167D0 80015BD0 2412FFFF */  addiu      $s2, $zero, -0x1
/* 167D4 80015BD4 0C007D20 */  jal        func_8001F480
/* 167D8 80015BD8 00002021 */   addu      $a0, $zero, $zero
/* 167DC 80015BDC 00401821 */  addu       $v1, $v0, $zero
/* 167E0 80015BE0 0070102A */  slt        $v0, $v1, $s0
/* 167E4 80015BE4 10400005 */  beqz       $v0, .L80015BFC
/* 167E8 80015BE8 00000000 */   nop
/* 167EC 80015BEC 00609021 */  addu       $s2, $v1, $zero
/* 167F0 80015BF0 00002021 */  addu       $a0, $zero, $zero
/* 167F4 80015BF4 0C007D28 */  jal        osSetThreadPri
/* 167F8 80015BF8 02002821 */   addu      $a1, $s0, $zero
.L80015BFC:
/* 167FC 80015BFC 0C005734 */  jal        func_80015CD0
/* 16800 80015C00 00000000 */   nop
/* 16804 80015C04 3C118004 */  lui        $s1, %hi(D_80039190)
/* 16808 80015C08 26319190 */  addiu      $s1, $s1, %lo(D_80039190)
/* 1680C 80015C0C 02202021 */  addu       $a0, $s1, $zero
/* 16810 80015C10 00002821 */  addu       $a1, $zero, $zero
/* 16814 80015C14 3C068001 */  lui        $a2, %hi(func_80016260)
/* 16818 80015C18 24C66260 */  addiu      $a2, $a2, %lo(func_80016260)
/* 1681C 80015C1C 24030001 */  addiu      $v1, $zero, 0x1
/* 16820 80015C20 AE830000 */  sw         $v1, 0x0($s4)
/* 16824 80015C24 3C038004 */  lui        $v1, %hi(D_8003A4E0)
/* 16828 80015C28 2463A4E0 */  addiu      $v1, $v1, %lo(D_8003A4E0)
/* 1682C 80015C2C 3C018003 */  lui        $at, %hi(D_80030CA0)
/* 16830 80015C30 AC230CA0 */  sw         $v1, %lo(D_80030CA0)($at)
/* 16834 80015C34 3C038001 */  lui        $v1, %hi(func_80015D60)
/* 16838 80015C38 24635D60 */  addiu      $v1, $v1, %lo(func_80015D60)
/* 1683C 80015C3C 3C018003 */  lui        $at, %hi(D_80030CA4)
/* 16840 80015C40 AC230CA4 */  sw         $v1, %lo(D_80030CA4)($at)
/* 16844 80015C44 3C038001 */  lui        $v1, %hi(func_80015E30)
/* 16848 80015C48 24635E30 */  addiu      $v1, $v1, %lo(func_80015E30)
/* 1684C 80015C4C 3C018003 */  lui        $at, %hi(D_80030CA8)
/* 16850 80015C50 AC230CA8 */  sw         $v1, %lo(D_80030CA8)($at)
/* 16854 80015C54 3C038004 */  lui        $v1, %hi(D_8003A340)
/* 16858 80015C58 2463A340 */  addiu      $v1, $v1, %lo(D_8003A340)
/* 1685C 80015C5C AFB00014 */  sw         $s0, 0x14($sp)
/* 16860 80015C60 00408021 */  addu       $s0, $v0, $zero
/* 16864 80015C64 02803821 */  addu       $a3, $s4, $zero
/* 16868 80015C68 3C018003 */  lui        $at, %hi(D_80030C94)
/* 1686C 80015C6C AC310C94 */  sw         $s1, %lo(D_80030C94)($at)
/* 16870 80015C70 3C018003 */  lui        $at, %hi(D_80030C98)
/* 16874 80015C74 AC350C98 */  sw         $s5, %lo(D_80030C98)($at)
/* 16878 80015C78 3C018003 */  lui        $at, %hi(D_80030C9C)
/* 1687C 80015C7C AC330C9C */  sw         $s3, %lo(D_80030C9C)($at)
/* 16880 80015C80 0C007CB4 */  jal        osCreateThread
/* 16884 80015C84 AFA30010 */   sw        $v1, 0x10($sp)
/* 16888 80015C88 0C007D5C */  jal        osStartThread
/* 1688C 80015C8C 02202021 */   addu      $a0, $s1, $zero
/* 16890 80015C90 0C005750 */  jal        func_80015D40
/* 16894 80015C94 02002021 */   addu      $a0, $s0, $zero
/* 16898 80015C98 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1689C 80015C9C 12420003 */  beq        $s2, $v0, .L80015CAC
/* 168A0 80015CA0 00002021 */   addu      $a0, $zero, $zero
/* 168A4 80015CA4 0C007D28 */  jal        osSetThreadPri
/* 168A8 80015CA8 02402821 */   addu      $a1, $s2, $zero
.L80015CAC:
/* 168AC 80015CAC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 168B0 80015CB0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 168B4 80015CB4 8FB40028 */  lw         $s4, 0x28($sp)
/* 168B8 80015CB8 8FB30024 */  lw         $s3, 0x24($sp)
/* 168BC 80015CBC 8FB20020 */  lw         $s2, 0x20($sp)
/* 168C0 80015CC0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 168C4 80015CC4 8FB00018 */  lw         $s0, 0x18($sp)
/* 168C8 80015CC8 03E00008 */  jr         $ra
/* 168CC 80015CCC 27BD0038 */   addiu     $sp, $sp, 0x38

# Handwritten function
glabel func_80015CD0
/* 168D0 80015CD0 3C0A8003 */  lui        $t2, %hi(D_80032400)
/* 168D4 80015CD4 254A2400 */  addiu      $t2, $t2, %lo(D_80032400)
/* 168D8 80015CD8 8D4B0000 */  lw         $t3, 0x0($t2)
/* 168DC 80015CDC 316BFF00 */  andi       $t3, $t3, 0xFF00
/* 168E0 80015CE0 40086000 */  mfc0       $t0, $12
/* 168E4 80015CE4 2401FFFE */  addiu      $at, $zero, -0x2
/* 168E8 80015CE8 01014824 */  and        $t1, $t0, $at
/* 168EC 80015CEC 40896000 */  mtc0       $t1, $12
/* 168F0 80015CF0 31020001 */  andi       $v0, $t0, 0x1
/* 168F4 80015CF4 8D480000 */  lw         $t0, 0x0($t2)
/* 168F8 80015CF8 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 168FC 80015CFC 110B000E */  beq        $t0, $t3, .L80015D38
/* 16900 80015D00 3C0A8003 */   lui       $t2, %hi(D_800310B0)
/* 16904 80015D04 254A10B0 */  addiu      $t2, $t2, %lo(D_800310B0)
/* 16908 80015D08 8D490118 */  lw         $t1, 0x118($t2)
/* 1690C 80015D0C 312AFF00 */  andi       $t2, $t1, 0xFF00
/* 16910 80015D10 01485024 */  and        $t2, $t2, $t0
/* 16914 80015D14 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 16918 80015D18 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 1691C 80015D1C 01214824 */  and        $t1, $t1, $at
/* 16920 80015D20 012A4825 */  or         $t1, $t1, $t2
/* 16924 80015D24 2401FFFE */  addiu      $at, $zero, -0x2
/* 16928 80015D28 01214824 */  and        $t1, $t1, $at
/* 1692C 80015D2C 40896000 */  mtc0       $t1, $12
/* 16930 80015D30 00000000 */  nop
/* 16934 80015D34 00000000 */  nop
.L80015D38:
/* 16938 80015D38 03E00008 */  jr         $ra
/* 1693C 80015D3C 00000000 */   nop

# Handwritten function
glabel func_80015D40
/* 16940 80015D40 40086000 */  mfc0       $t0, $12
/* 16944 80015D44 01044025 */  or         $t0, $t0, $a0
/* 16948 80015D48 40886000 */  mtc0       $t0, $12
/* 1694C 80015D4C 00000000 */  nop
/* 16950 80015D50 00000000 */  nop
/* 16954 80015D54 03E00008 */  jr         $ra
/* 16958 80015D58 00000000 */   nop
/* 1695C 80015D5C 00000000 */  nop
