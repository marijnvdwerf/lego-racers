.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800DEE40
/* 95200 800DEE40 00801021 */  addu       $v0, $a0, $zero
/* 95204 800DEE44 AC400008 */  sw         $zero, 0x8($v0)
/* 95208 800DEE48 AC400000 */  sw         $zero, 0x0($v0)
/* 9520C 800DEE4C 03E00008 */  jr         $ra
/* 95210 800DEE50 AC400004 */   sw        $zero, 0x4($v0)

glabel func_race_800DEE54
/* 95214 800DEE54 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95218 800DEE58 AFB10014 */  sw         $s1, 0x14($sp)
/* 9521C 800DEE5C 00808821 */  addu       $s1, $a0, $zero
/* 95220 800DEE60 AFB00010 */  sw         $s0, 0x10($sp)
/* 95224 800DEE64 AFBF0018 */  sw         $ra, 0x18($sp)
/* 95228 800DEE68 0C037CB0 */  jal        func_race_800DF2C0
/* 9522C 800DEE6C 00A08021 */   addu      $s0, $a1, $zero
/* 95230 800DEE70 32100001 */  andi       $s0, $s0, 0x1
/* 95234 800DEE74 12000003 */  beqz       $s0, .Lrace_800DEE84
/* 95238 800DEE78 00000000 */   nop
/* 9523C 800DEE7C 0C01FB5C */  jal        func_8007ED70
/* 95240 800DEE80 02202021 */   addu      $a0, $s1, $zero
.Lrace_800DEE84:
/* 95244 800DEE84 8FBF0018 */  lw         $ra, 0x18($sp)
/* 95248 800DEE88 8FB10014 */  lw         $s1, 0x14($sp)
/* 9524C 800DEE8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 95250 800DEE90 03E00008 */  jr         $ra
/* 95254 800DEE94 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DEE98
/* 95258 800DEE98 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 9525C 800DEE9C AFBE0040 */  sw         $fp, 0x40($sp)
/* 95260 800DEEA0 0080F021 */  addu       $fp, $a0, $zero
/* 95264 800DEEA4 AFB00020 */  sw         $s0, 0x20($sp)
/* 95268 800DEEA8 00C08021 */  addu       $s0, $a2, $zero
/* 9526C 800DEEAC AFB3002C */  sw         $s3, 0x2C($sp)
/* 95270 800DEEB0 AFBF0044 */  sw         $ra, 0x44($sp)
/* 95274 800DEEB4 AFB7003C */  sw         $s7, 0x3C($sp)
/* 95278 800DEEB8 AFB60038 */  sw         $s6, 0x38($sp)
/* 9527C 800DEEBC AFB50034 */  sw         $s5, 0x34($sp)
/* 95280 800DEEC0 AFB40030 */  sw         $s4, 0x30($sp)
/* 95284 800DEEC4 AFB20028 */  sw         $s2, 0x28($sp)
/* 95288 800DEEC8 AFB10024 */  sw         $s1, 0x24($sp)
/* 9528C 800DEECC AFA5004C */  sw         $a1, 0x4C($sp)
/* 95290 800DEED0 8FC20000 */  lw         $v0, 0x0($fp)
/* 95294 800DEED4 8FB10058 */  lw         $s1, 0x58($sp)
/* 95298 800DEED8 10400003 */  beqz       $v0, .Lrace_800DEEE8
/* 9529C 800DEEDC 00E09821 */   addu      $s3, $a3, $zero
/* 952A0 800DEEE0 0C037CB0 */  jal        func_race_800DF2C0
/* 952A4 800DEEE4 00000000 */   nop
.Lrace_800DEEE8:
/* 952A8 800DEEE8 12200014 */  beqz       $s1, .Lrace_800DEF3C
/* 952AC 800DEEEC AFD00000 */   sw        $s0, 0x0($fp)
/* 952B0 800DEEF0 0C01FB4C */  jal        func_8007ED30
/* 952B4 800DEEF4 24040654 */   addiu     $a0, $zero, 0x654
/* 952B8 800DEEF8 0C00278C */  jal        func_80009E30
/* 952BC 800DEEFC 00402021 */   addu      $a0, $v0, $zero
/* 952C0 800DEF00 00409021 */  addu       $s2, $v0, $zero
/* 952C4 800DEF04 56400008 */  bnel       $s2, $zero, .Lrace_800DEF28
/* 952C8 800DEF08 02402021 */   addu      $a0, $s2, $zero
/* 952CC 800DEF0C 3C04800D */  lui        $a0, %hi(D_race_800CB380)
/* 952D0 800DEF10 2484B380 */  addiu      $a0, $a0, %lo(D_race_800CB380)
/* 952D4 800DEF14 00002821 */  addu       $a1, $zero, $zero
/* 952D8 800DEF18 00A03021 */  addu       $a2, $a1, $zero
/* 952DC 800DEF1C 0C011ACF */  jal        func_80046B3C
/* 952E0 800DEF20 00A03821 */   addu      $a3, $a1, $zero
/* 952E4 800DEF24 02402021 */  addu       $a0, $s2, $zero
.Lrace_800DEF28:
/* 952E8 800DEF28 3C05800D */  lui        $a1, %hi(D_race_800CB384)
/* 952EC 800DEF2C 0C0025BA */  jal        func_800096E8
/* 952F0 800DEF30 24A5B384 */   addiu     $a1, $a1, %lo(D_race_800CB384)
/* 952F4 800DEF34 08037BDF */  j          .Lrace_800DEF7C
/* 952F8 800DEF38 00000000 */   nop
.Lrace_800DEF3C:
/* 952FC 800DEF3C 0C01FB4C */  jal        func_8007ED30
/* 95300 800DEF40 24040658 */   addiu     $a0, $zero, 0x658
/* 95304 800DEF44 00408021 */  addu       $s0, $v0, $zero
/* 95308 800DEF48 0C002504 */  jal        func_80009410
/* 9530C 800DEF4C 02002021 */   addu      $a0, $s0, $zero
/* 95310 800DEF50 3C02800D */  lui        $v0, %hi(D_race_800CB390)
/* 95314 800DEF54 2442B390 */  addiu      $v0, $v0, %lo(D_race_800CB390)
/* 95318 800DEF58 02009021 */  addu       $s2, $s0, $zero
/* 9531C 800DEF5C 16400007 */  bnez       $s2, .Lrace_800DEF7C
/* 95320 800DEF60 AE020028 */   sw        $v0, 0x28($s0)
/* 95324 800DEF64 3C04800D */  lui        $a0, %hi(D_race_800CB380)
/* 95328 800DEF68 2484B380 */  addiu      $a0, $a0, %lo(D_race_800CB380)
/* 9532C 800DEF6C 00002821 */  addu       $a1, $zero, $zero
/* 95330 800DEF70 00A03021 */  addu       $a2, $a1, $zero
/* 95334 800DEF74 0C011ACF */  jal        func_80046B3C
/* 95338 800DEF78 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800DEF7C:
/* 9533C 800DEF7C 8E420028 */  lw         $v0, 0x28($s2)
/* 95340 800DEF80 02602821 */  addu       $a1, $s3, $zero
/* 95344 800DEF84 84440088 */  lh         $a0, 0x88($v0)
/* 95348 800DEF88 8C42008C */  lw         $v0, 0x8C($v0)
/* 9534C 800DEF8C 0040F809 */  jalr       $v0
/* 95350 800DEF90 02442021 */   addu      $a0, $s2, $a0
/* 95354 800DEF94 02402021 */  addu       $a0, $s2, $zero
/* 95358 800DEF98 0C0026F4 */  jal        func_80009BD0
/* 9535C 800DEF9C 24050027 */   addiu     $a1, $zero, 0x27
/* 95360 800DEFA0 02402021 */  addu       $a0, $s2, $zero
/* 95364 800DEFA4 0C0026F4 */  jal        func_80009BD0
/* 95368 800DEFA8 24050007 */   addiu     $a1, $zero, 0x7
/* 9536C 800DEFAC 0C002680 */  jal        func_80009A00
/* 95370 800DEFB0 02402021 */   addu      $a0, $s2, $zero
/* 95374 800DEFB4 1040008E */  beqz       $v0, .Lrace_800DF1F0
/* 95378 800DEFB8 AFC20004 */   sw        $v0, 0x4($fp)
/* 9537C 800DEFBC 02402021 */  addu       $a0, $s2, $zero
/* 95380 800DEFC0 0C0026F4 */  jal        func_80009BD0
/* 95384 800DEFC4 24050008 */   addiu     $a1, $zero, 0x8
/* 95388 800DEFC8 02402021 */  addu       $a0, $s2, $zero
/* 9538C 800DEFCC 0C0026F4 */  jal        func_80009BD0
/* 95390 800DEFD0 24050005 */   addiu     $a1, $zero, 0x5
/* 95394 800DEFD4 3C028013 */  lui        $v0, %hi(D_race_801320A0)
/* 95398 800DEFD8 8C4420A0 */  lw         $a0, %lo(D_race_801320A0)($v0)
/* 9539C 800DEFDC 0C01FB65 */  jal        func_8007ED94
/* 953A0 800DEFE0 00000000 */   nop
/* 953A4 800DEFE4 8FD00004 */  lw         $s0, 0x4($fp)
/* 953A8 800DEFE8 001020C0 */  sll        $a0, $s0, 3
/* 953AC 800DEFEC 00902021 */  addu       $a0, $a0, $s0
/* 953B0 800DEFF0 00042080 */  sll        $a0, $a0, 2
/* 953B4 800DEFF4 0C00943C */  jal        func_800250F0
/* 953B8 800DEFF8 24840008 */   addiu     $a0, $a0, 0x8
/* 953BC 800DEFFC 24420008 */  addiu      $v0, $v0, 0x8
/* 953C0 800DF000 0040A021 */  addu       $s4, $v0, $zero
/* 953C4 800DF004 02809821 */  addu       $s3, $s4, $zero
/* 953C8 800DF008 2611FFFF */  addiu      $s1, $s0, -0x1
/* 953CC 800DF00C 06200007 */  bltz       $s1, .Lrace_800DF02C
/* 953D0 800DF010 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 953D4 800DF014 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800DF018:
/* 953D8 800DF018 0C037A3C */  jal        func_race_800DE8F0
/* 953DC 800DF01C 02602021 */   addu      $a0, $s3, $zero
/* 953E0 800DF020 2631FFFF */  addiu      $s1, $s1, -0x1
/* 953E4 800DF024 1630FFFC */  bne        $s1, $s0, .Lrace_800DF018
/* 953E8 800DF028 26730024 */   addiu     $s3, $s3, 0x24
.Lrace_800DF02C:
/* 953EC 800DF02C 0C01FB72 */  jal        func_8007EDC8
/* 953F0 800DF030 AFD40008 */   sw        $s4, 0x8($fp)
/* 953F4 800DF034 8FC20008 */  lw         $v0, 0x8($fp)
/* 953F8 800DF038 14400008 */  bnez       $v0, .Lrace_800DF05C
/* 953FC 800DF03C 0000B821 */   addu      $s7, $zero, $zero
/* 95400 800DF040 3C04800D */  lui        $a0, %hi(D_race_800CB380)
/* 95404 800DF044 2484B380 */  addiu      $a0, $a0, %lo(D_race_800CB380)
/* 95408 800DF048 00002821 */  addu       $a1, $zero, $zero
/* 9540C 800DF04C 00A03021 */  addu       $a2, $a1, $zero
/* 95410 800DF050 0C011ACF */  jal        func_80046B3C
/* 95414 800DF054 00A03821 */   addu      $a3, $a1, $zero
/* 95418 800DF058 0000B821 */  addu       $s7, $zero, $zero
.Lrace_800DF05C:
/* 9541C 800DF05C 02E0B021 */  addu       $s6, $s7, $zero
.Lrace_800DF060:
/* 95420 800DF060 8FC20004 */  lw         $v0, 0x4($fp)
/* 95424 800DF064 02E2102B */  sltu       $v0, $s7, $v0
/* 95428 800DF068 10400061 */  beqz       $v0, .Lrace_800DF1F0
/* 9542C 800DF06C 00000000 */   nop
/* 95430 800DF070 02402021 */  addu       $a0, $s2, $zero
/* 95434 800DF074 0C0026F4 */  jal        func_80009BD0
/* 95438 800DF078 24050027 */   addiu     $a1, $zero, 0x27
/* 9543C 800DF07C 02402021 */  addu       $a0, $s2, $zero
/* 95440 800DF080 0C0026F4 */  jal        func_80009BD0
/* 95444 800DF084 24050005 */   addiu     $a1, $zero, 0x5
/* 95448 800DF088 0000A821 */  addu       $s5, $zero, $zero
/* 9544C 800DF08C 02A09821 */  addu       $s3, $s5, $zero
/* 95450 800DF090 02A08821 */  addu       $s1, $s5, $zero
/* 95454 800DF094 02A08021 */  addu       $s0, $s5, $zero
/* 95458 800DF098 2414FFFF */  addiu      $s4, $zero, -0x1
.Lrace_800DF09C:
/* 9545C 800DF09C 8E420028 */  lw         $v0, 0x28($s2)
/* 95460 800DF0A0 844400A0 */  lh         $a0, 0xA0($v0)
/* 95464 800DF0A4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 95468 800DF0A8 0040F809 */  jalr       $v0
/* 9546C 800DF0AC 02442021 */   addu      $a0, $s2, $a0
/* 95470 800DF0B0 00401821 */  addu       $v1, $v0, $zero
/* 95474 800DF0B4 24020006 */  addiu      $v0, $zero, 0x6
/* 95478 800DF0B8 10620040 */  beq        $v1, $v0, .Lrace_800DF1BC
/* 9547C 800DF0BC 24020029 */   addiu     $v0, $zero, 0x29
/* 95480 800DF0C0 1062001E */  beq        $v1, $v0, .Lrace_800DF13C
/* 95484 800DF0C4 2C62002A */   sltiu     $v0, $v1, 0x2A
/* 95488 800DF0C8 10400005 */  beqz       $v0, .Lrace_800DF0E0
/* 9548C 800DF0CC 24020028 */   addiu     $v0, $zero, 0x28
/* 95490 800DF0D0 1062000A */  beq        $v1, $v0, .Lrace_800DF0FC
/* 95494 800DF0D4 00000000 */   nop
/* 95498 800DF0D8 08037C67 */  j          .Lrace_800DF19C
/* 9549C 800DF0DC 00000000 */   nop
.Lrace_800DF0E0:
/* 954A0 800DF0E0 2402002A */  addiu      $v0, $zero, 0x2A
/* 954A4 800DF0E4 10620025 */  beq        $v1, $v0, .Lrace_800DF17C
/* 954A8 800DF0E8 2402002D */   addiu     $v0, $zero, 0x2D
/* 954AC 800DF0EC 10620027 */  beq        $v1, $v0, .Lrace_800DF18C
/* 954B0 800DF0F0 00000000 */   nop
/* 954B4 800DF0F4 08037C67 */  j          .Lrace_800DF19C
/* 954B8 800DF0F8 00000000 */   nop
.Lrace_800DF0FC:
/* 954BC 800DF0FC 8E420028 */  lw         $v0, 0x28($s2)
/* 954C0 800DF100 844400A0 */  lh         $a0, 0xA0($v0)
/* 954C4 800DF104 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 954C8 800DF108 0040F809 */  jalr       $v0
/* 954CC 800DF10C 02442021 */   addu      $a0, $s2, $a0
/* 954D0 800DF110 2408002B */  addiu      $t0, $zero, 0x2B
/* 954D4 800DF114 14480006 */  bne        $v0, $t0, .Lrace_800DF130
/* 954D8 800DF118 00000000 */   nop
/* 954DC 800DF11C 36100002 */  ori        $s0, $s0, 0x2
/* 954E0 800DF120 0C002680 */  jal        func_80009A00
/* 954E4 800DF124 02402021 */   addu      $a0, $s2, $zero
/* 954E8 800DF128 08037C27 */  j          .Lrace_800DF09C
/* 954EC 800DF12C 00408821 */   addu      $s1, $v0, $zero
.Lrace_800DF130:
/* 954F0 800DF130 8E510038 */  lw         $s1, 0x38($s2)
/* 954F4 800DF134 08037C27 */  j          .Lrace_800DF09C
/* 954F8 800DF138 00000000 */   nop
.Lrace_800DF13C:
/* 954FC 800DF13C 8E420028 */  lw         $v0, 0x28($s2)
/* 95500 800DF140 844400A0 */  lh         $a0, 0xA0($v0)
/* 95504 800DF144 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 95508 800DF148 0040F809 */  jalr       $v0
/* 9550C 800DF14C 02442021 */   addu      $a0, $s2, $a0
/* 95510 800DF150 2408002B */  addiu      $t0, $zero, 0x2B
/* 95514 800DF154 14480006 */  bne        $v0, $t0, .Lrace_800DF170
/* 95518 800DF158 00000000 */   nop
/* 9551C 800DF15C 36100004 */  ori        $s0, $s0, 0x4
/* 95520 800DF160 0C002680 */  jal        func_80009A00
/* 95524 800DF164 02402021 */   addu      $a0, $s2, $zero
/* 95528 800DF168 08037C27 */  j          .Lrace_800DF09C
/* 9552C 800DF16C 00409821 */   addu      $s3, $v0, $zero
.Lrace_800DF170:
/* 95530 800DF170 8E530038 */  lw         $s3, 0x38($s2)
/* 95534 800DF174 08037C27 */  j          .Lrace_800DF09C
/* 95538 800DF178 00000000 */   nop
.Lrace_800DF17C:
/* 9553C 800DF17C 0C002680 */  jal        func_80009A00
/* 95540 800DF180 02402021 */   addu      $a0, $s2, $zero
/* 95544 800DF184 08037C27 */  j          .Lrace_800DF09C
/* 95548 800DF188 0040A021 */   addu      $s4, $v0, $zero
.Lrace_800DF18C:
/* 9554C 800DF18C 0C002680 */  jal        func_80009A00
/* 95550 800DF190 02402021 */   addu      $a0, $s2, $zero
/* 95554 800DF194 08037C27 */  j          .Lrace_800DF09C
/* 95558 800DF198 0040A821 */   addu      $s5, $v0, $zero
.Lrace_800DF19C:
/* 9555C 800DF19C 8E420028 */  lw         $v0, 0x28($s2)
/* 95560 800DF1A0 00002821 */  addu       $a1, $zero, $zero
/* 95564 800DF1A4 84440098 */  lh         $a0, 0x98($v0)
/* 95568 800DF1A8 8C42009C */  lw         $v0, 0x9C($v0)
/* 9556C 800DF1AC 0040F809 */  jalr       $v0
/* 95570 800DF1B0 02442021 */   addu      $a0, $s2, $a0
/* 95574 800DF1B4 08037C27 */  j          .Lrace_800DF09C
/* 95578 800DF1B8 00000000 */   nop
.Lrace_800DF1BC:
/* 9557C 800DF1BC 02203821 */  addu       $a3, $s1, $zero
/* 95580 800DF1C0 8FA5004C */  lw         $a1, 0x4C($sp)
/* 95584 800DF1C4 8FC40008 */  lw         $a0, 0x8($fp)
/* 95588 800DF1C8 26F70001 */  addiu      $s7, $s7, 0x1
/* 9558C 800DF1CC AFB30010 */  sw         $s3, 0x10($sp)
/* 95590 800DF1D0 AFB50014 */  sw         $s5, 0x14($sp)
/* 95594 800DF1D4 AFB40018 */  sw         $s4, 0x18($sp)
/* 95598 800DF1D8 AFB0001C */  sw         $s0, 0x1C($sp)
/* 9559C 800DF1DC 8FC60000 */  lw         $a2, 0x0($fp)
/* 955A0 800DF1E0 0C037A5D */  jal        func_race_800DE974
/* 955A4 800DF1E4 00962021 */   addu      $a0, $a0, $s6
/* 955A8 800DF1E8 08037C18 */  j          .Lrace_800DF060
/* 955AC 800DF1EC 26D60024 */   addiu     $s6, $s6, 0x24
.Lrace_800DF1F0:
/* 955B0 800DF1F0 8E420028 */  lw         $v0, 0x28($s2)
/* 955B4 800DF1F4 84440048 */  lh         $a0, 0x48($v0)
/* 955B8 800DF1F8 8C42004C */  lw         $v0, 0x4C($v0)
/* 955BC 800DF1FC 0040F809 */  jalr       $v0
/* 955C0 800DF200 02442021 */   addu      $a0, $s2, $a0
/* 955C4 800DF204 12400006 */  beqz       $s2, .Lrace_800DF220
/* 955C8 800DF208 24050003 */   addiu     $a1, $zero, 0x3
/* 955CC 800DF20C 8E420028 */  lw         $v0, 0x28($s2)
/* 955D0 800DF210 84440038 */  lh         $a0, 0x38($v0)
/* 955D4 800DF214 8C42003C */  lw         $v0, 0x3C($v0)
/* 955D8 800DF218 0040F809 */  jalr       $v0
/* 955DC 800DF21C 02442021 */   addu      $a0, $s2, $a0
.Lrace_800DF220:
/* 955E0 800DF220 8FBF0044 */  lw         $ra, 0x44($sp)
/* 955E4 800DF224 8FBE0040 */  lw         $fp, 0x40($sp)
/* 955E8 800DF228 8FB7003C */  lw         $s7, 0x3C($sp)
/* 955EC 800DF22C 8FB60038 */  lw         $s6, 0x38($sp)
/* 955F0 800DF230 8FB50034 */  lw         $s5, 0x34($sp)
/* 955F4 800DF234 8FB40030 */  lw         $s4, 0x30($sp)
/* 955F8 800DF238 8FB3002C */  lw         $s3, 0x2C($sp)
/* 955FC 800DF23C 8FB20028 */  lw         $s2, 0x28($sp)
/* 95600 800DF240 8FB10024 */  lw         $s1, 0x24($sp)
/* 95604 800DF244 8FB00020 */  lw         $s0, 0x20($sp)
/* 95608 800DF248 03E00008 */  jr         $ra
/* 9560C 800DF24C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_800DF250
/* 95610 800DF250 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 95614 800DF254 AFB20018 */  sw         $s2, 0x18($sp)
/* 95618 800DF258 00809021 */  addu       $s2, $a0, $zero
/* 9561C 800DF25C AFB3001C */  sw         $s3, 0x1C($sp)
/* 95620 800DF260 00A09821 */  addu       $s3, $a1, $zero
/* 95624 800DF264 AFBF0020 */  sw         $ra, 0x20($sp)
/* 95628 800DF268 AFB10014 */  sw         $s1, 0x14($sp)
/* 9562C 800DF26C AFB00010 */  sw         $s0, 0x10($sp)
/* 95630 800DF270 8E420004 */  lw         $v0, 0x4($s2)
/* 95634 800DF274 1040000B */  beqz       $v0, .Lrace_800DF2A4
/* 95638 800DF278 00008021 */   addu      $s0, $zero, $zero
/* 9563C 800DF27C 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DF280:
/* 95640 800DF280 26100001 */  addiu      $s0, $s0, 0x1
/* 95644 800DF284 8E440008 */  lw         $a0, 0x8($s2)
/* 95648 800DF288 02602821 */  addu       $a1, $s3, $zero
/* 9564C 800DF28C 0C037AAC */  jal        func_race_800DEAB0
/* 95650 800DF290 00912021 */   addu      $a0, $a0, $s1
/* 95654 800DF294 8E420004 */  lw         $v0, 0x4($s2)
/* 95658 800DF298 0202102B */  sltu       $v0, $s0, $v0
/* 9565C 800DF29C 1440FFF8 */  bnez       $v0, .Lrace_800DF280
/* 95660 800DF2A0 26310024 */   addiu     $s1, $s1, 0x24
.Lrace_800DF2A4:
/* 95664 800DF2A4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 95668 800DF2A8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9566C 800DF2AC 8FB20018 */  lw         $s2, 0x18($sp)
/* 95670 800DF2B0 8FB10014 */  lw         $s1, 0x14($sp)
/* 95674 800DF2B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 95678 800DF2B8 03E00008 */  jr         $ra
/* 9567C 800DF2BC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DF2C0
/* 95680 800DF2C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95684 800DF2C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 95688 800DF2C8 00808821 */  addu       $s1, $a0, $zero
/* 9568C 800DF2CC AFBF0018 */  sw         $ra, 0x18($sp)
/* 95690 800DF2D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 95694 800DF2D4 8E240008 */  lw         $a0, 0x8($s1)
/* 95698 800DF2D8 50800016 */  beql       $a0, $zero, .Lrace_800DF334
/* 9569C 800DF2DC AE200000 */   sw        $zero, 0x0($s1)
/* 956A0 800DF2E0 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 956A4 800DF2E4 000310C0 */  sll        $v0, $v1, 3
/* 956A8 800DF2E8 00431021 */  addu       $v0, $v0, $v1
/* 956AC 800DF2EC 00021080 */  sll        $v0, $v0, 2
/* 956B0 800DF2F0 00828021 */  addu       $s0, $a0, $v0
/* 956B4 800DF2F4 1090000B */  beq        $a0, $s0, .Lrace_800DF324
/* 956B8 800DF2F8 2610FFDC */   addiu     $s0, $s0, -0x24
.Lrace_800DF2FC:
/* 956BC 800DF2FC 8E020000 */  lw         $v0, 0x0($s0)
/* 956C0 800DF300 24050002 */  addiu      $a1, $zero, 0x2
/* 956C4 800DF304 84440010 */  lh         $a0, 0x10($v0)
/* 956C8 800DF308 8C420014 */  lw         $v0, 0x14($v0)
/* 956CC 800DF30C 0040F809 */  jalr       $v0
/* 956D0 800DF310 02042021 */   addu      $a0, $s0, $a0
/* 956D4 800DF314 8E220008 */  lw         $v0, 0x8($s1)
/* 956D8 800DF318 1450FFF8 */  bne        $v0, $s0, .Lrace_800DF2FC
/* 956DC 800DF31C 2610FFDC */   addiu     $s0, $s0, -0x24
/* 956E0 800DF320 8E240008 */  lw         $a0, 0x8($s1)
.Lrace_800DF324:
/* 956E4 800DF324 0C009444 */  jal        func_80025110
/* 956E8 800DF328 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 956EC 800DF32C AE200008 */  sw         $zero, 0x8($s1)
/* 956F0 800DF330 AE200000 */  sw         $zero, 0x0($s1)
.Lrace_800DF334:
/* 956F4 800DF334 AE200004 */  sw         $zero, 0x4($s1)
/* 956F8 800DF338 8FBF0018 */  lw         $ra, 0x18($sp)
/* 956FC 800DF33C 8FB10014 */  lw         $s1, 0x14($sp)
/* 95700 800DF340 8FB00010 */  lw         $s0, 0x10($sp)
/* 95704 800DF344 03E00008 */  jr         $ra
/* 95708 800DF348 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DF34C
/* 9570C 800DF34C 3C028013 */  lui        $v0, %hi(D_race_801320A0)
/* 95710 800DF350 03E00008 */  jr         $ra
/* 95714 800DF354 AC4420A0 */   sw        $a0, %lo(D_race_801320A0)($v0)

glabel func_race_800DF358
/* 95718 800DF358 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9571C 800DF35C AFBF0010 */  sw         $ra, 0x10($sp)
/* 95720 800DF360 0C002513 */  jal        func_8000944C
/* 95724 800DF364 00000000 */   nop
/* 95728 800DF368 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9572C 800DF36C 03E00008 */  jr         $ra
/* 95730 800DF370 27BD0018 */   addiu     $sp, $sp, 0x18
