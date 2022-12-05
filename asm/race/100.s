.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800D6F30
/* 8D2F0 800D6F30 00801021 */  addu       $v0, $a0, $zero
/* 8D2F4 800D6F34 AC40005C */  sw         $zero, 0x5C($v0)
/* 8D2F8 800D6F38 AC400060 */  sw         $zero, 0x60($v0)
/* 8D2FC 800D6F3C AC400064 */  sw         $zero, 0x64($v0)
/* 8D300 800D6F40 AC400068 */  sw         $zero, 0x68($v0)
/* 8D304 800D6F44 AC40006C */  sw         $zero, 0x6C($v0)
/* 8D308 800D6F48 AC400070 */  sw         $zero, 0x70($v0)
/* 8D30C 800D6F4C AC400074 */  sw         $zero, 0x74($v0)
/* 8D310 800D6F50 AC400078 */  sw         $zero, 0x78($v0)
/* 8D314 800D6F54 AC40007C */  sw         $zero, 0x7C($v0)
/* 8D318 800D6F58 AC400080 */  sw         $zero, 0x80($v0)
/* 8D31C 800D6F5C AC400084 */  sw         $zero, 0x84($v0)
/* 8D320 800D6F60 AC400088 */  sw         $zero, 0x88($v0)
/* 8D324 800D6F64 AC40008C */  sw         $zero, 0x8C($v0)
/* 8D328 800D6F68 AC400000 */  sw         $zero, 0x0($v0)
/* 8D32C 800D6F6C AC400004 */  sw         $zero, 0x4($v0)
/* 8D330 800D6F70 AC400008 */  sw         $zero, 0x8($v0)
/* 8D334 800D6F74 AC40000C */  sw         $zero, 0xC($v0)
/* 8D338 800D6F78 AC400010 */  sw         $zero, 0x10($v0)
/* 8D33C 800D6F7C AC400014 */  sw         $zero, 0x14($v0)
/* 8D340 800D6F80 AC400020 */  sw         $zero, 0x20($v0)
/* 8D344 800D6F84 03E00008 */  jr         $ra
/* 8D348 800D6F88 AC400024 */   sw        $zero, 0x24($v0)

glabel func_race_800D6F8C
/* 8D34C 800D6F8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8D350 800D6F90 AFB10014 */  sw         $s1, 0x14($sp)
/* 8D354 800D6F94 00808821 */  addu       $s1, $a0, $zero
/* 8D358 800D6F98 AFB00010 */  sw         $s0, 0x10($sp)
/* 8D35C 800D6F9C AFBF0018 */  sw         $ra, 0x18($sp)
/* 8D360 800D6FA0 0C0368C7 */  jal        func_race_800DA31C
/* 8D364 800D6FA4 00A08021 */   addu      $s0, $a1, $zero
/* 8D368 800D6FA8 32100001 */  andi       $s0, $s0, 0x1
/* 8D36C 800D6FAC 12000003 */  beqz       $s0, .Lrace_800D6FBC
/* 8D370 800D6FB0 00000000 */   nop
/* 8D374 800D6FB4 0C01FB5C */  jal        func_8007ED70
/* 8D378 800D6FB8 02202021 */   addu      $a0, $s1, $zero
.Lrace_800D6FBC:
/* 8D37C 800D6FBC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8D380 800D6FC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 8D384 800D6FC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 8D388 800D6FC8 03E00008 */  jr         $ra
/* 8D38C 800D6FCC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D6FD0
/* 8D390 800D6FD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8D394 800D6FD4 AFB10014 */  sw         $s1, 0x14($sp)
/* 8D398 800D6FD8 00808821 */  addu       $s1, $a0, $zero
/* 8D39C 800D6FDC AFBF0020 */  sw         $ra, 0x20($sp)
/* 8D3A0 800D6FE0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 8D3A4 800D6FE4 AFB20018 */  sw         $s2, 0x18($sp)
/* 8D3A8 800D6FE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 8D3AC 800D6FEC 8E220000 */  lw         $v0, 0x0($s1)
/* 8D3B0 800D6FF0 10400003 */  beqz       $v0, .Lrace_800D7000
/* 8D3B4 800D6FF4 00A09021 */   addu      $s2, $a1, $zero
/* 8D3B8 800D6FF8 0C0368C7 */  jal        func_race_800DA31C
/* 8D3BC 800D6FFC 00000000 */   nop
.Lrace_800D7000:
/* 8D3C0 800D7000 8E420000 */  lw         $v0, 0x0($s2)
/* 8D3C4 800D7004 AE220000 */  sw         $v0, 0x0($s1)
/* 8D3C8 800D7008 8E420004 */  lw         $v0, 0x4($s2)
/* 8D3CC 800D700C AE220004 */  sw         $v0, 0x4($s1)
/* 8D3D0 800D7010 8E420008 */  lw         $v0, 0x8($s2)
/* 8D3D4 800D7014 AE220008 */  sw         $v0, 0x8($s1)
/* 8D3D8 800D7018 8E42000C */  lw         $v0, 0xC($s2)
/* 8D3DC 800D701C AE22000C */  sw         $v0, 0xC($s1)
/* 8D3E0 800D7020 8E420010 */  lw         $v0, 0x10($s2)
/* 8D3E4 800D7024 AE220010 */  sw         $v0, 0x10($s1)
/* 8D3E8 800D7028 8E420014 */  lw         $v0, 0x14($s2)
/* 8D3EC 800D702C AE220014 */  sw         $v0, 0x14($s1)
/* 8D3F0 800D7030 8E420018 */  lw         $v0, 0x18($s2)
/* 8D3F4 800D7034 AE220018 */  sw         $v0, 0x18($s1)
/* 8D3F8 800D7038 8E42001C */  lw         $v0, 0x1C($s2)
/* 8D3FC 800D703C AE22001C */  sw         $v0, 0x1C($s1)
/* 8D400 800D7040 8E420020 */  lw         $v0, 0x20($s2)
/* 8D404 800D7044 AE220020 */  sw         $v0, 0x20($s1)
/* 8D408 800D7048 8E420024 */  lw         $v0, 0x24($s2)
/* 8D40C 800D704C AE220024 */  sw         $v0, 0x24($s1)
/* 8D410 800D7050 8E42002C */  lw         $v0, 0x2C($s2)
/* 8D414 800D7054 10400014 */  beqz       $v0, .Lrace_800D70A8
/* 8D418 800D7058 00000000 */   nop
/* 8D41C 800D705C 0C01FB4C */  jal        func_8007ED30
/* 8D420 800D7060 24040654 */   addiu     $a0, $zero, 0x654
/* 8D424 800D7064 0C00278C */  jal        func_80009E30
/* 8D428 800D7068 00402021 */   addu      $a0, $v0, $zero
/* 8D42C 800D706C 00408021 */  addu       $s0, $v0, $zero
/* 8D430 800D7070 56000008 */  bnel       $s0, $zero, .Lrace_800D7094
/* 8D434 800D7074 02002021 */   addu      $a0, $s0, $zero
/* 8D438 800D7078 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8D43C 800D707C 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8D440 800D7080 00002821 */  addu       $a1, $zero, $zero
/* 8D444 800D7084 00A03021 */  addu       $a2, $a1, $zero
/* 8D448 800D7088 0C011ACF */  jal        func_80046B3C
/* 8D44C 800D708C 00A03821 */   addu      $a3, $a1, $zero
/* 8D450 800D7090 02002021 */  addu       $a0, $s0, $zero
.Lrace_800D7094:
/* 8D454 800D7094 3C05800D */  lui        $a1, %hi(D_race_800CAB64)
/* 8D458 800D7098 0C0025BA */  jal        func_800096E8
/* 8D45C 800D709C 24A5AB64 */   addiu     $a1, $a1, %lo(D_race_800CAB64)
/* 8D460 800D70A0 08035C39 */  j          .Lrace_800D70E4
/* 8D464 800D70A4 00000000 */   nop
.Lrace_800D70A8:
/* 8D468 800D70A8 0C01FB4C */  jal        func_8007ED30
/* 8D46C 800D70AC 24040658 */   addiu     $a0, $zero, 0x658
/* 8D470 800D70B0 00408021 */  addu       $s0, $v0, $zero
/* 8D474 800D70B4 0C002504 */  jal        func_80009410
/* 8D478 800D70B8 02002021 */   addu      $a0, $s0, $zero
/* 8D47C 800D70BC 3C02800D */  lui        $v0, %hi(D_race_800CB068)
/* 8D480 800D70C0 2442B068 */  addiu      $v0, $v0, %lo(D_race_800CB068)
/* 8D484 800D70C4 16000007 */  bnez       $s0, .Lrace_800D70E4
/* 8D488 800D70C8 AE020028 */   sw        $v0, 0x28($s0)
/* 8D48C 800D70CC 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8D490 800D70D0 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8D494 800D70D4 00002821 */  addu       $a1, $zero, $zero
/* 8D498 800D70D8 00A03021 */  addu       $a2, $a1, $zero
/* 8D49C 800D70DC 0C011ACF */  jal        func_80046B3C
/* 8D4A0 800D70E0 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800D70E4:
/* 8D4A4 800D70E4 8E020028 */  lw         $v0, 0x28($s0)
/* 8D4A8 800D70E8 8E450028 */  lw         $a1, 0x28($s2)
/* 8D4AC 800D70EC 84440088 */  lh         $a0, 0x88($v0)
/* 8D4B0 800D70F0 8C42008C */  lw         $v0, 0x8C($v0)
/* 8D4B4 800D70F4 0040F809 */  jalr       $v0
/* 8D4B8 800D70F8 02042021 */   addu      $a0, $s0, $a0
/* 8D4BC 800D70FC 3C02800D */  lui        $v0, %hi(jtbl_race_800CAB70)
/* 8D4C0 800D7100 2453AB70 */  addiu      $s3, $v0, %lo(jtbl_race_800CAB70)
.Lrace_800D7104:
/* 8D4C4 800D7104 8E020028 */  lw         $v0, 0x28($s0)
/* 8D4C8 800D7108 844400A0 */  lh         $a0, 0xA0($v0)
/* 8D4CC 800D710C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8D4D0 800D7110 0040F809 */  jalr       $v0
/* 8D4D4 800D7114 02042021 */   addu      $a0, $s0, $a0
/* 8D4D8 800D7118 10400055 */  beqz       $v0, .Lrace_800D7270
/* 8D4DC 800D711C 2443FFD8 */   addiu     $v1, $v0, -0x28
/* 8D4E0 800D7120 2C620032 */  sltiu      $v0, $v1, 0x32
/* 8D4E4 800D7124 1040004A */  beqz       $v0, Lrace_800D7250
/* 8D4E8 800D7128 00031080 */   sll       $v0, $v1, 2
/* 8D4EC 800D712C 00531021 */  addu       $v0, $v0, $s3
/* 8D4F0 800D7130 8C420000 */  lw         $v0, 0x0($v0)
/* 8D4F4 800D7134 00400008 */  jr         $v0
/* 8D4F8 800D7138 00000000 */   nop
glabel Lrace_800D713C
/* 8D4FC 800D713C 02202021 */  addu       $a0, $s1, $zero
/* 8D500 800D7140 8E460030 */  lw         $a2, 0x30($s2)
/* 8D504 800D7144 0C035CAF */  jal        func_race_800D72BC
/* 8D508 800D7148 02002821 */   addu      $a1, $s0, $zero
/* 8D50C 800D714C 08035C41 */  j          .Lrace_800D7104
/* 8D510 800D7150 00000000 */   nop
glabel Lrace_800D7154
/* 8D514 800D7154 02202021 */  addu       $a0, $s1, $zero
/* 8D518 800D7158 0C035DDA */  jal        func_race_800D7768
/* 8D51C 800D715C 02002821 */   addu      $a1, $s0, $zero
/* 8D520 800D7160 08035C41 */  j          .Lrace_800D7104
/* 8D524 800D7164 00000000 */   nop
glabel Lrace_800D7168
/* 8D528 800D7168 02202021 */  addu       $a0, $s1, $zero
/* 8D52C 800D716C 0C035F0C */  jal        func_race_800D7C30
/* 8D530 800D7170 02002821 */   addu      $a1, $s0, $zero
/* 8D534 800D7174 08035C41 */  j          .Lrace_800D7104
/* 8D538 800D7178 00000000 */   nop
glabel Lrace_800D717C
/* 8D53C 800D717C 02202021 */  addu       $a0, $s1, $zero
/* 8D540 800D7180 8E460030 */  lw         $a2, 0x30($s2)
/* 8D544 800D7184 0C036069 */  jal        func_race_800D81A4
/* 8D548 800D7188 02002821 */   addu      $a1, $s0, $zero
/* 8D54C 800D718C 08035C41 */  j          .Lrace_800D7104
/* 8D550 800D7190 00000000 */   nop
glabel Lrace_800D7194
/* 8D554 800D7194 02202021 */  addu       $a0, $s1, $zero
/* 8D558 800D7198 0C03618E */  jal        func_race_800D8638
/* 8D55C 800D719C 02002821 */   addu      $a1, $s0, $zero
/* 8D560 800D71A0 08035C41 */  j          .Lrace_800D7104
/* 8D564 800D71A4 00000000 */   nop
glabel Lrace_800D71A8
/* 8D568 800D71A8 02202021 */  addu       $a0, $s1, $zero
/* 8D56C 800D71AC 0C03622C */  jal        func_race_800D88B0
/* 8D570 800D71B0 02002821 */   addu      $a1, $s0, $zero
/* 8D574 800D71B4 08035C41 */  j          .Lrace_800D7104
/* 8D578 800D71B8 00000000 */   nop
glabel Lrace_800D71BC
/* 8D57C 800D71BC 02202021 */  addu       $a0, $s1, $zero
/* 8D580 800D71C0 0C0363FE */  jal        func_race_800D8FF8
/* 8D584 800D71C4 02002821 */   addu      $a1, $s0, $zero
/* 8D588 800D71C8 08035C41 */  j          .Lrace_800D7104
/* 8D58C 800D71CC 00000000 */   nop
glabel Lrace_800D71D0
/* 8D590 800D71D0 02202021 */  addu       $a0, $s1, $zero
/* 8D594 800D71D4 0C0364B8 */  jal        func_race_800D92E0
/* 8D598 800D71D8 02002821 */   addu      $a1, $s0, $zero
/* 8D59C 800D71DC 08035C41 */  j          .Lrace_800D7104
/* 8D5A0 800D71E0 00000000 */   nop
glabel Lrace_800D71E4
/* 8D5A4 800D71E4 02202021 */  addu       $a0, $s1, $zero
/* 8D5A8 800D71E8 0C036302 */  jal        func_race_800D8C08
/* 8D5AC 800D71EC 02002821 */   addu      $a1, $s0, $zero
/* 8D5B0 800D71F0 08035C41 */  j          .Lrace_800D7104
/* 8D5B4 800D71F4 00000000 */   nop
glabel Lrace_800D71F8
/* 8D5B8 800D71F8 02202021 */  addu       $a0, $s1, $zero
/* 8D5BC 800D71FC 0C036824 */  jal        func_race_800DA090
/* 8D5C0 800D7200 02002821 */   addu      $a1, $s0, $zero
/* 8D5C4 800D7204 08035C41 */  j          .Lrace_800D7104
/* 8D5C8 800D7208 00000000 */   nop
glabel Lrace_800D720C
/* 8D5CC 800D720C 02202021 */  addu       $a0, $s1, $zero
/* 8D5D0 800D7210 0C0365A6 */  jal        func_race_800D9698
/* 8D5D4 800D7214 02002821 */   addu      $a1, $s0, $zero
/* 8D5D8 800D7218 08035C41 */  j          .Lrace_800D7104
/* 8D5DC 800D721C 00000000 */   nop
glabel Lrace_800D7220
/* 8D5E0 800D7220 02202021 */  addu       $a0, $s1, $zero
/* 8D5E4 800D7224 8E460030 */  lw         $a2, 0x30($s2)
/* 8D5E8 800D7228 0C0366A8 */  jal        func_race_800D9AA0
/* 8D5EC 800D722C 02002821 */   addu      $a1, $s0, $zero
/* 8D5F0 800D7230 08035C41 */  j          .Lrace_800D7104
/* 8D5F4 800D7234 00000000 */   nop
glabel Lrace_800D7238
/* 8D5F8 800D7238 02202021 */  addu       $a0, $s1, $zero
/* 8D5FC 800D723C 8E460030 */  lw         $a2, 0x30($s2)
/* 8D600 800D7240 0C036751 */  jal        func_race_800D9D44
/* 8D604 800D7244 02002821 */   addu      $a1, $s0, $zero
/* 8D608 800D7248 08035C41 */  j          .Lrace_800D7104
/* 8D60C 800D724C 00000000 */   nop
glabel Lrace_800D7250
/* 8D610 800D7250 8E020028 */  lw         $v0, 0x28($s0)
/* 8D614 800D7254 00002821 */  addu       $a1, $zero, $zero
/* 8D618 800D7258 84440098 */  lh         $a0, 0x98($v0)
/* 8D61C 800D725C 8C42009C */  lw         $v0, 0x9C($v0)
/* 8D620 800D7260 0040F809 */  jalr       $v0
/* 8D624 800D7264 02042021 */   addu      $a0, $s0, $a0
/* 8D628 800D7268 08035C41 */  j          .Lrace_800D7104
/* 8D62C 800D726C 00000000 */   nop
.Lrace_800D7270:
/* 8D630 800D7270 8E020028 */  lw         $v0, 0x28($s0)
/* 8D634 800D7274 84440048 */  lh         $a0, 0x48($v0)
/* 8D638 800D7278 8C42004C */  lw         $v0, 0x4C($v0)
/* 8D63C 800D727C 0040F809 */  jalr       $v0
/* 8D640 800D7280 02042021 */   addu      $a0, $s0, $a0
/* 8D644 800D7284 12000006 */  beqz       $s0, .Lrace_800D72A0
/* 8D648 800D7288 24050003 */   addiu     $a1, $zero, 0x3
/* 8D64C 800D728C 8E020028 */  lw         $v0, 0x28($s0)
/* 8D650 800D7290 84440038 */  lh         $a0, 0x38($v0)
/* 8D654 800D7294 8C42003C */  lw         $v0, 0x3C($v0)
/* 8D658 800D7298 0040F809 */  jalr       $v0
/* 8D65C 800D729C 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D72A0:
/* 8D660 800D72A0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 8D664 800D72A4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8D668 800D72A8 8FB20018 */  lw         $s2, 0x18($sp)
/* 8D66C 800D72AC 8FB10014 */  lw         $s1, 0x14($sp)
/* 8D670 800D72B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 8D674 800D72B4 03E00008 */  jr         $ra
/* 8D678 800D72B8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800D72BC
/* 8D67C 800D72BC 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 8D680 800D72C0 AFB5007C */  sw         $s5, 0x7C($sp)
/* 8D684 800D72C4 0080A821 */  addu       $s5, $a0, $zero
/* 8D688 800D72C8 AFB30074 */  sw         $s3, 0x74($sp)
/* 8D68C 800D72CC 00A09821 */  addu       $s3, $a1, $zero
/* 8D690 800D72D0 AFBF0088 */  sw         $ra, 0x88($sp)
/* 8D694 800D72D4 AFB70084 */  sw         $s7, 0x84($sp)
/* 8D698 800D72D8 AFB60080 */  sw         $s6, 0x80($sp)
/* 8D69C 800D72DC AFB40078 */  sw         $s4, 0x78($sp)
/* 8D6A0 800D72E0 AFB20070 */  sw         $s2, 0x70($sp)
/* 8D6A4 800D72E4 AFB1006C */  sw         $s1, 0x6C($sp)
/* 8D6A8 800D72E8 AFB00068 */  sw         $s0, 0x68($sp)
/* 8D6AC 800D72EC F7B40090 */  sdc1       $f20, 0x90($sp)
/* 8D6B0 800D72F0 8E620028 */  lw         $v0, 0x28($s3)
/* 8D6B4 800D72F4 00C0B821 */  addu       $s7, $a2, $zero
/* 8D6B8 800D72F8 844400A0 */  lh         $a0, 0xA0($v0)
/* 8D6BC 800D72FC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8D6C0 800D7300 0040F809 */  jalr       $v0
/* 8D6C4 800D7304 02642021 */   addu      $a0, $s3, $a0
/* 8D6C8 800D7308 24030007 */  addiu      $v1, $zero, 0x7
/* 8D6CC 800D730C 10430006 */  beq        $v0, $v1, .Lrace_800D7328
/* 8D6D0 800D7310 00602821 */   addu      $a1, $v1, $zero
/* 8D6D4 800D7314 8E620028 */  lw         $v0, 0x28($s3)
/* 8D6D8 800D7318 84440098 */  lh         $a0, 0x98($v0)
/* 8D6DC 800D731C 8C42009C */  lw         $v0, 0x9C($v0)
/* 8D6E0 800D7320 0040F809 */  jalr       $v0
/* 8D6E4 800D7324 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7328:
/* 8D6E8 800D7328 0C002680 */  jal        func_80009A00
/* 8D6EC 800D732C 02602021 */   addu      $a0, $s3, $zero
/* 8D6F0 800D7330 AEA20028 */  sw         $v0, 0x28($s5)
/* 8D6F4 800D7334 8E620028 */  lw         $v0, 0x28($s3)
/* 8D6F8 800D7338 844400A0 */  lh         $a0, 0xA0($v0)
/* 8D6FC 800D733C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8D700 800D7340 0040F809 */  jalr       $v0
/* 8D704 800D7344 02642021 */   addu      $a0, $s3, $a0
/* 8D708 800D7348 24030008 */  addiu      $v1, $zero, 0x8
/* 8D70C 800D734C 10430006 */  beq        $v0, $v1, .Lrace_800D7368
/* 8D710 800D7350 00602821 */   addu      $a1, $v1, $zero
/* 8D714 800D7354 8E620028 */  lw         $v0, 0x28($s3)
/* 8D718 800D7358 84440098 */  lh         $a0, 0x98($v0)
/* 8D71C 800D735C 8C42009C */  lw         $v0, 0x9C($v0)
/* 8D720 800D7360 0040F809 */  jalr       $v0
/* 8D724 800D7364 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7368:
/* 8D728 800D7368 8E620028 */  lw         $v0, 0x28($s3)
/* 8D72C 800D736C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8D730 800D7370 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8D734 800D7374 0040F809 */  jalr       $v0
/* 8D738 800D7378 02642021 */   addu      $a0, $s3, $a0
/* 8D73C 800D737C 24030005 */  addiu      $v1, $zero, 0x5
/* 8D740 800D7380 10430006 */  beq        $v0, $v1, .Lrace_800D739C
/* 8D744 800D7384 00602821 */   addu      $a1, $v1, $zero
/* 8D748 800D7388 8E620028 */  lw         $v0, 0x28($s3)
/* 8D74C 800D738C 84440098 */  lh         $a0, 0x98($v0)
/* 8D750 800D7390 8C42009C */  lw         $v0, 0x9C($v0)
/* 8D754 800D7394 0040F809 */  jalr       $v0
/* 8D758 800D7398 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D739C:
/* 8D75C 800D739C 3C028013 */  lui        $v0, %hi(D_race_80132090)
/* 8D760 800D73A0 8C442090 */  lw         $a0, %lo(D_race_80132090)($v0)
/* 8D764 800D73A4 0C01FB65 */  jal        func_8007ED94
/* 8D768 800D73A8 00000000 */   nop
/* 8D76C 800D73AC 8EB00028 */  lw         $s0, 0x28($s5)
/* 8D770 800D73B0 00102040 */  sll        $a0, $s0, 1
/* 8D774 800D73B4 00902021 */  addu       $a0, $a0, $s0
/* 8D778 800D73B8 000420C0 */  sll        $a0, $a0, 3
/* 8D77C 800D73BC 00902023 */  subu       $a0, $a0, $s0
/* 8D780 800D73C0 00042080 */  sll        $a0, $a0, 2
/* 8D784 800D73C4 0C00943C */  jal        func_800250F0
/* 8D788 800D73C8 24840008 */   addiu     $a0, $a0, 0x8
/* 8D78C 800D73CC 24420008 */  addiu      $v0, $v0, 0x8
/* 8D790 800D73D0 0040A021 */  addu       $s4, $v0, $zero
/* 8D794 800D73D4 02809021 */  addu       $s2, $s4, $zero
/* 8D798 800D73D8 2611FFFF */  addiu      $s1, $s0, -0x1
/* 8D79C 800D73DC 06200007 */  bltz       $s1, .Lrace_800D73FC
/* 8D7A0 800D73E0 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 8D7A4 800D73E4 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D73E8:
/* 8D7A8 800D73E8 0C0377D4 */  jal        func_race_800DDF50
/* 8D7AC 800D73EC 02402021 */   addu      $a0, $s2, $zero
/* 8D7B0 800D73F0 2631FFFF */  addiu      $s1, $s1, -0x1
/* 8D7B4 800D73F4 1630FFFC */  bne        $s1, $s0, .Lrace_800D73E8
/* 8D7B8 800D73F8 2652005C */   addiu     $s2, $s2, 0x5C
.Lrace_800D73FC:
/* 8D7BC 800D73FC 0C01FB72 */  jal        func_8007EDC8
/* 8D7C0 800D7400 AEB4005C */   sw        $s4, 0x5C($s5)
/* 8D7C4 800D7404 8EA2005C */  lw         $v0, 0x5C($s5)
/* 8D7C8 800D7408 14400008 */  bnez       $v0, .Lrace_800D742C
/* 8D7CC 800D740C 0000A021 */   addu      $s4, $zero, $zero
/* 8D7D0 800D7410 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8D7D4 800D7414 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8D7D8 800D7418 00002821 */  addu       $a1, $zero, $zero
/* 8D7DC 800D741C 00A03021 */  addu       $a2, $a1, $zero
/* 8D7E0 800D7420 0C011ACF */  jal        func_80046B3C
/* 8D7E4 800D7424 00A03821 */   addu      $a3, $a1, $zero
/* 8D7E8 800D7428 0000A021 */  addu       $s4, $zero, $zero
.Lrace_800D742C:
/* 8D7EC 800D742C 24100001 */  addiu      $s0, $zero, 0x1
/* 8D7F0 800D7430 3C01800D */  lui        $at, %hi(D_race_800CAC38)
/* 8D7F4 800D7434 C434AC38 */  lwc1       $f20, %lo(D_race_800CAC38)($at)
/* 8D7F8 800D7438 3C02800D */  lui        $v0, %hi(jtbl_race_800CAC48)
/* 8D7FC 800D743C 2456AC48 */  addiu      $s6, $v0, %lo(jtbl_race_800CAC48)
/* 8D800 800D7440 27B20060 */  addiu      $s2, $sp, 0x60
/* 8D804 800D7444 02808821 */  addu       $s1, $s4, $zero
.Lrace_800D7448:
/* 8D808 800D7448 8EA20028 */  lw         $v0, 0x28($s5)
/* 8D80C 800D744C 0282102B */  sltu       $v0, $s4, $v0
/* 8D810 800D7450 104000AC */  beqz       $v0, .Lrace_800D7704
/* 8D814 800D7454 00000000 */   nop
/* 8D818 800D7458 8E620028 */  lw         $v0, 0x28($s3)
/* 8D81C 800D745C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8D820 800D7460 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8D824 800D7464 0040F809 */  jalr       $v0
/* 8D828 800D7468 02642021 */   addu      $a0, $s3, $a0
/* 8D82C 800D746C 24030027 */  addiu      $v1, $zero, 0x27
/* 8D830 800D7470 10430006 */  beq        $v0, $v1, .Lrace_800D748C
/* 8D834 800D7474 00002821 */   addu      $a1, $zero, $zero
/* 8D838 800D7478 8E620028 */  lw         $v0, 0x28($s3)
/* 8D83C 800D747C 84440098 */  lh         $a0, 0x98($v0)
/* 8D840 800D7480 8C42009C */  lw         $v0, 0x9C($v0)
/* 8D844 800D7484 0040F809 */  jalr       $v0
/* 8D848 800D7488 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D748C:
/* 8D84C 800D748C 0C002680 */  jal        func_80009A00
/* 8D850 800D7490 02602021 */   addu      $a0, $s3, $zero
/* 8D854 800D7494 AFA20010 */  sw         $v0, 0x10($sp)
/* 8D858 800D7498 8E620028 */  lw         $v0, 0x28($s3)
/* 8D85C 800D749C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8D860 800D74A0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8D864 800D74A4 0040F809 */  jalr       $v0
/* 8D868 800D74A8 02642021 */   addu      $a0, $s3, $a0
/* 8D86C 800D74AC 00401821 */  addu       $v1, $v0, $zero
/* 8D870 800D74B0 2402003C */  addiu      $v0, $zero, 0x3C
/* 8D874 800D74B4 14620009 */  bne        $v1, $v0, .Lrace_800D74DC
/* 8D878 800D74B8 AFA0004C */   sw        $zero, 0x4C($sp)
/* 8D87C 800D74BC AFB0004C */  sw         $s0, 0x4C($sp)
/* 8D880 800D74C0 8E620028 */  lw         $v0, 0x28($s3)
/* 8D884 800D74C4 844400A0 */  lh         $a0, 0xA0($v0)
/* 8D888 800D74C8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8D88C 800D74CC 0040F809 */  jalr       $v0
/* 8D890 800D74D0 02642021 */   addu      $a0, $s3, $a0
/* 8D894 800D74D4 08035D38 */  j          .Lrace_800D74E0
/* 8D898 800D74D8 24030005 */   addiu     $v1, $zero, 0x5
.Lrace_800D74DC:
/* 8D89C 800D74DC 24020005 */  addiu      $v0, $zero, 0x5
.Lrace_800D74E0:
/* 8D8A0 800D74E0 10620006 */  beq        $v1, $v0, .Lrace_800D74FC
/* 8D8A4 800D74E4 24050005 */   addiu     $a1, $zero, 0x5
/* 8D8A8 800D74E8 8E620028 */  lw         $v0, 0x28($s3)
/* 8D8AC 800D74EC 84440098 */  lh         $a0, 0x98($v0)
/* 8D8B0 800D74F0 8C42009C */  lw         $v0, 0x9C($v0)
/* 8D8B4 800D74F4 0040F809 */  jalr       $v0
/* 8D8B8 800D74F8 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D74FC:
/* 8D8BC 800D74FC 3C01800D */  lui        $at, %hi(D_race_800CAC3C)
/* 8D8C0 800D7500 C420AC3C */  lwc1       $f0, %lo(D_race_800CAC3C)($at)
/* 8D8C4 800D7504 3C01800D */  lui        $at, %hi(D_race_800CAC40)
/* 8D8C8 800D7508 C422AC40 */  lwc1       $f2, %lo(D_race_800CAC40)($at)
/* 8D8CC 800D750C AFA00028 */  sw         $zero, 0x28($sp)
/* 8D8D0 800D7510 AFA00044 */  sw         $zero, 0x44($sp)
/* 8D8D4 800D7514 AFA00048 */  sw         $zero, 0x48($sp)
/* 8D8D8 800D7518 AFA00050 */  sw         $zero, 0x50($sp)
/* 8D8DC 800D751C AFA0002C */  sw         $zero, 0x2C($sp)
/* 8D8E0 800D7520 E7B40030 */  swc1       $f20, 0x30($sp)
/* 8D8E4 800D7524 E7B40034 */  swc1       $f20, 0x34($sp)
/* 8D8E8 800D7528 E7A00038 */  swc1       $f0, 0x38($sp)
/* 8D8EC 800D752C E7A2003C */  swc1       $f2, 0x3C($sp)
/* 8D8F0 800D7530 8EA20010 */  lw         $v0, 0x10($s5)
/* 8D8F4 800D7534 E7B40040 */  swc1       $f20, 0x40($sp)
/* 8D8F8 800D7538 AFA00054 */  sw         $zero, 0x54($sp)
/* 8D8FC 800D753C AFA00058 */  sw         $zero, 0x58($sp)
/* 8D900 800D7540 AFA20018 */  sw         $v0, 0x18($sp)
.Lrace_800D7544:
/* 8D904 800D7544 8E620028 */  lw         $v0, 0x28($s3)
/* 8D908 800D7548 844400A0 */  lh         $a0, 0xA0($v0)
/* 8D90C 800D754C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8D910 800D7550 0040F809 */  jalr       $v0
/* 8D914 800D7554 02642021 */   addu      $a0, $s3, $a0
/* 8D918 800D7558 00401821 */  addu       $v1, $v0, $zero
/* 8D91C 800D755C 24020006 */  addiu      $v0, $zero, 0x6
/* 8D920 800D7560 10620061 */  beq        $v1, $v0, .Lrace_800D76E8
/* 8D924 800D7564 2463FFD4 */   addiu     $v1, $v1, -0x2C
/* 8D928 800D7568 2C620029 */  sltiu      $v0, $v1, 0x29
/* 8D92C 800D756C 10400056 */  beqz       $v0, Lrace_800D76C8
/* 8D930 800D7570 00031080 */   sll       $v0, $v1, 2
/* 8D934 800D7574 00561021 */  addu       $v0, $v0, $s6
/* 8D938 800D7578 8C420000 */  lw         $v0, 0x0($v0)
/* 8D93C 800D757C 00400008 */  jr         $v0
/* 8D940 800D7580 00000000 */   nop
glabel Lrace_800D7584
/* 8D944 800D7584 0C0025F8 */  jal        func_800097E0
/* 8D948 800D7588 02602021 */   addu      $a0, $s3, $zero
/* 8D94C 800D758C 02602021 */  addu       $a0, $s3, $zero
/* 8D950 800D7590 0C0025F8 */  jal        func_800097E0
/* 8D954 800D7594 E7A0001C */   swc1      $f0, 0x1C($sp)
/* 8D958 800D7598 02602021 */  addu       $a0, $s3, $zero
/* 8D95C 800D759C 0C0025F8 */  jal        func_800097E0
/* 8D960 800D75A0 E7A00020 */   swc1      $f0, 0x20($sp)
/* 8D964 800D75A4 12E0FFE7 */  beqz       $s7, .Lrace_800D7544
/* 8D968 800D75A8 E7A00024 */   swc1      $f0, 0x24($sp)
/* 8D96C 800D75AC C7A00020 */  lwc1       $f0, 0x20($sp)
/* 8D970 800D75B0 46000007 */  neg.s      $f0, $f0
/* 8D974 800D75B4 08035D51 */  j          .Lrace_800D7544
/* 8D978 800D75B8 E7A00020 */   swc1      $f0, 0x20($sp)
glabel Lrace_800D75BC
/* 8D97C 800D75BC 0C002680 */  jal        func_80009A00
/* 8D980 800D75C0 02602021 */   addu      $a0, $s3, $zero
/* 8D984 800D75C4 08035D51 */  j          .Lrace_800D7544
/* 8D988 800D75C8 AFA20028 */   sw        $v0, 0x28($sp)
glabel Lrace_800D75CC
/* 8D98C 800D75CC 0C002680 */  jal        func_80009A00
/* 8D990 800D75D0 02602021 */   addu      $a0, $s3, $zero
/* 8D994 800D75D4 08035D51 */  j          .Lrace_800D7544
/* 8D998 800D75D8 AFA2002C */   sw        $v0, 0x2C($sp)
glabel Lrace_800D75DC
/* 8D99C 800D75DC 0C0025F8 */  jal        func_800097E0
/* 8D9A0 800D75E0 02602021 */   addu      $a0, $s3, $zero
/* 8D9A4 800D75E4 08035D51 */  j          .Lrace_800D7544
/* 8D9A8 800D75E8 E7A00030 */   swc1      $f0, 0x30($sp)
glabel Lrace_800D75EC
/* 8D9AC 800D75EC 0C0025F8 */  jal        func_800097E0
/* 8D9B0 800D75F0 02602021 */   addu      $a0, $s3, $zero
/* 8D9B4 800D75F4 08035D51 */  j          .Lrace_800D7544
/* 8D9B8 800D75F8 E7A00034 */   swc1      $f0, 0x34($sp)
glabel Lrace_800D75FC
/* 8D9BC 800D75FC 0C0025F8 */  jal        func_800097E0
/* 8D9C0 800D7600 02602021 */   addu      $a0, $s3, $zero
/* 8D9C4 800D7604 08035D51 */  j          .Lrace_800D7544
/* 8D9C8 800D7608 E7A00038 */   swc1      $f0, 0x38($sp)
glabel Lrace_800D760C
/* 8D9CC 800D760C 0C0025F8 */  jal        func_800097E0
/* 8D9D0 800D7610 02602021 */   addu      $a0, $s3, $zero
/* 8D9D4 800D7614 08035D51 */  j          .Lrace_800D7544
/* 8D9D8 800D7618 E7A0003C */   swc1      $f0, 0x3C($sp)
glabel Lrace_800D761C
/* 8D9DC 800D761C 08035D51 */  j          .Lrace_800D7544
/* 8D9E0 800D7620 AFB00044 */   sw        $s0, 0x44($sp)
glabel Lrace_800D7624
/* 8D9E4 800D7624 08035D51 */  j          .Lrace_800D7544
/* 8D9E8 800D7628 AFB00048 */   sw        $s0, 0x48($sp)
glabel Lrace_800D762C
/* 8D9EC 800D762C 08035D51 */  j          .Lrace_800D7544
/* 8D9F0 800D7630 AFB00050 */   sw        $s0, 0x50($sp)
glabel Lrace_800D7634
/* 8D9F4 800D7634 0C0025F8 */  jal        func_800097E0
/* 8D9F8 800D7638 02602021 */   addu      $a0, $s3, $zero
/* 8D9FC 800D763C 08035D51 */  j          .Lrace_800D7544
/* 8DA00 800D7640 E7A00040 */   swc1      $f0, 0x40($sp)
glabel Lrace_800D7644
/* 8DA04 800D7644 8E620028 */  lw         $v0, 0x28($s3)
/* 8DA08 800D7648 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DA0C 800D764C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DA10 800D7650 0040F809 */  jalr       $v0
/* 8DA14 800D7654 02642021 */   addu      $a0, $s3, $a0
/* 8DA18 800D7658 02402021 */  addu       $a0, $s2, $zero
/* 8DA1C 800D765C 26650044 */  addiu      $a1, $s3, 0x44
/* 8DA20 800D7660 0C000708 */  jal        func_80001C20
/* 8DA24 800D7664 24060008 */   addiu     $a2, $zero, 0x8
/* 8DA28 800D7668 8EA20000 */  lw         $v0, 0x0($s5)
/* 8DA2C 800D766C 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8DA30 800D7670 14600003 */  bnez       $v1, .Lrace_800D7680
/* 8DA34 800D7674 244400BC */   addiu     $a0, $v0, 0xBC
/* 8DA38 800D7678 08035DA2 */  j          .Lrace_800D7688
/* 8DA3C 800D767C 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D7680:
/* 8DA40 800D7680 0C016427 */  jal        func_8005909C
/* 8DA44 800D7684 02402821 */   addu      $a1, $s2, $zero
.Lrace_800D7688:
/* 8DA48 800D7688 1440FFAE */  bnez       $v0, .Lrace_800D7544
/* 8DA4C 800D768C AFA20054 */   sw        $v0, 0x54($sp)
/* 8DA50 800D7690 8EA20004 */  lw         $v0, 0x4($s5)
/* 8DA54 800D7694 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8DA58 800D7698 14600003 */  bnez       $v1, .Lrace_800D76A8
/* 8DA5C 800D769C 244400BC */   addiu     $a0, $v0, 0xBC
/* 8DA60 800D76A0 08035DAC */  j          .Lrace_800D76B0
/* 8DA64 800D76A4 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D76A8:
/* 8DA68 800D76A8 0C016427 */  jal        func_8005909C
/* 8DA6C 800D76AC 27A50060 */   addiu     $a1, $sp, 0x60
.Lrace_800D76B0:
/* 8DA70 800D76B0 08035D51 */  j          .Lrace_800D7544
/* 8DA74 800D76B4 AFA20054 */   sw        $v0, 0x54($sp)
glabel Lrace_800D76B8
/* 8DA78 800D76B8 0C002680 */  jal        func_80009A00
/* 8DA7C 800D76BC 02602021 */   addu      $a0, $s3, $zero
/* 8DA80 800D76C0 08035D51 */  j          .Lrace_800D7544
/* 8DA84 800D76C4 AFA20058 */   sw        $v0, 0x58($sp)
glabel Lrace_800D76C8
/* 8DA88 800D76C8 8E620028 */  lw         $v0, 0x28($s3)
/* 8DA8C 800D76CC 00002821 */  addu       $a1, $zero, $zero
/* 8DA90 800D76D0 84440098 */  lh         $a0, 0x98($v0)
/* 8DA94 800D76D4 8C42009C */  lw         $v0, 0x9C($v0)
/* 8DA98 800D76D8 0040F809 */  jalr       $v0
/* 8DA9C 800D76DC 02642021 */   addu      $a0, $s3, $a0
/* 8DAA0 800D76E0 08035D51 */  j          .Lrace_800D7544
/* 8DAA4 800D76E4 00000000 */   nop
.Lrace_800D76E8:
/* 8DAA8 800D76E8 27A50010 */  addiu      $a1, $sp, 0x10
/* 8DAAC 800D76EC 8EA4005C */  lw         $a0, 0x5C($s5)
/* 8DAB0 800D76F0 26940001 */  addiu      $s4, $s4, 0x1
/* 8DAB4 800D76F4 0C0377FA */  jal        func_race_800DDFE8
/* 8DAB8 800D76F8 00912021 */   addu      $a0, $a0, $s1
/* 8DABC 800D76FC 08035D12 */  j          .Lrace_800D7448
/* 8DAC0 800D7700 2631005C */   addiu     $s1, $s1, 0x5C
.Lrace_800D7704:
/* 8DAC4 800D7704 8E620028 */  lw         $v0, 0x28($s3)
/* 8DAC8 800D7708 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DACC 800D770C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DAD0 800D7710 0040F809 */  jalr       $v0
/* 8DAD4 800D7714 02642021 */   addu      $a0, $s3, $a0
/* 8DAD8 800D7718 24030006 */  addiu      $v1, $zero, 0x6
/* 8DADC 800D771C 10430006 */  beq        $v0, $v1, .Lrace_800D7738
/* 8DAE0 800D7720 00602821 */   addu      $a1, $v1, $zero
/* 8DAE4 800D7724 8E620028 */  lw         $v0, 0x28($s3)
/* 8DAE8 800D7728 84440098 */  lh         $a0, 0x98($v0)
/* 8DAEC 800D772C 8C42009C */  lw         $v0, 0x9C($v0)
/* 8DAF0 800D7730 0040F809 */  jalr       $v0
/* 8DAF4 800D7734 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7738:
/* 8DAF8 800D7738 8FBF0088 */  lw         $ra, 0x88($sp)
/* 8DAFC 800D773C 8FB70084 */  lw         $s7, 0x84($sp)
/* 8DB00 800D7740 8FB60080 */  lw         $s6, 0x80($sp)
/* 8DB04 800D7744 8FB5007C */  lw         $s5, 0x7C($sp)
/* 8DB08 800D7748 8FB40078 */  lw         $s4, 0x78($sp)
/* 8DB0C 800D774C 8FB30074 */  lw         $s3, 0x74($sp)
/* 8DB10 800D7750 8FB20070 */  lw         $s2, 0x70($sp)
/* 8DB14 800D7754 8FB1006C */  lw         $s1, 0x6C($sp)
/* 8DB18 800D7758 8FB00068 */  lw         $s0, 0x68($sp)
/* 8DB1C 800D775C D7B40090 */  ldc1       $f20, 0x90($sp)
/* 8DB20 800D7760 03E00008 */  jr         $ra
/* 8DB24 800D7764 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_race_800D7768
/* 8DB28 800D7768 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 8DB2C 800D776C AFB30064 */  sw         $s3, 0x64($sp)
/* 8DB30 800D7770 00A09821 */  addu       $s3, $a1, $zero
/* 8DB34 800D7774 AFBF007C */  sw         $ra, 0x7C($sp)
/* 8DB38 800D7778 AFBE0078 */  sw         $fp, 0x78($sp)
/* 8DB3C 800D777C AFB70074 */  sw         $s7, 0x74($sp)
/* 8DB40 800D7780 AFB60070 */  sw         $s6, 0x70($sp)
/* 8DB44 800D7784 AFB5006C */  sw         $s5, 0x6C($sp)
/* 8DB48 800D7788 AFB40068 */  sw         $s4, 0x68($sp)
/* 8DB4C 800D778C AFB20060 */  sw         $s2, 0x60($sp)
/* 8DB50 800D7790 AFB1005C */  sw         $s1, 0x5C($sp)
/* 8DB54 800D7794 AFB00058 */  sw         $s0, 0x58($sp)
/* 8DB58 800D7798 8E620028 */  lw         $v0, 0x28($s3)
/* 8DB5C 800D779C 0080A821 */  addu       $s5, $a0, $zero
/* 8DB60 800D77A0 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DB64 800D77A4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DB68 800D77A8 0040F809 */  jalr       $v0
/* 8DB6C 800D77AC 02642021 */   addu      $a0, $s3, $a0
/* 8DB70 800D77B0 24030007 */  addiu      $v1, $zero, 0x7
/* 8DB74 800D77B4 10430006 */  beq        $v0, $v1, .Lrace_800D77D0
/* 8DB78 800D77B8 00602821 */   addu      $a1, $v1, $zero
/* 8DB7C 800D77BC 8E620028 */  lw         $v0, 0x28($s3)
/* 8DB80 800D77C0 84440098 */  lh         $a0, 0x98($v0)
/* 8DB84 800D77C4 8C42009C */  lw         $v0, 0x9C($v0)
/* 8DB88 800D77C8 0040F809 */  jalr       $v0
/* 8DB8C 800D77CC 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D77D0:
/* 8DB90 800D77D0 0C002680 */  jal        func_80009A00
/* 8DB94 800D77D4 02602021 */   addu      $a0, $s3, $zero
/* 8DB98 800D77D8 AEA2002C */  sw         $v0, 0x2C($s5)
/* 8DB9C 800D77DC 8E620028 */  lw         $v0, 0x28($s3)
/* 8DBA0 800D77E0 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DBA4 800D77E4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DBA8 800D77E8 0040F809 */  jalr       $v0
/* 8DBAC 800D77EC 02642021 */   addu      $a0, $s3, $a0
/* 8DBB0 800D77F0 24030008 */  addiu      $v1, $zero, 0x8
/* 8DBB4 800D77F4 10430006 */  beq        $v0, $v1, .Lrace_800D7810
/* 8DBB8 800D77F8 00602821 */   addu      $a1, $v1, $zero
/* 8DBBC 800D77FC 8E620028 */  lw         $v0, 0x28($s3)
/* 8DBC0 800D7800 84440098 */  lh         $a0, 0x98($v0)
/* 8DBC4 800D7804 8C42009C */  lw         $v0, 0x9C($v0)
/* 8DBC8 800D7808 0040F809 */  jalr       $v0
/* 8DBCC 800D780C 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7810:
/* 8DBD0 800D7810 8E620028 */  lw         $v0, 0x28($s3)
/* 8DBD4 800D7814 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DBD8 800D7818 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DBDC 800D781C 0040F809 */  jalr       $v0
/* 8DBE0 800D7820 02642021 */   addu      $a0, $s3, $a0
/* 8DBE4 800D7824 24030005 */  addiu      $v1, $zero, 0x5
/* 8DBE8 800D7828 10430006 */  beq        $v0, $v1, .Lrace_800D7844
/* 8DBEC 800D782C 00602821 */   addu      $a1, $v1, $zero
/* 8DBF0 800D7830 8E620028 */  lw         $v0, 0x28($s3)
/* 8DBF4 800D7834 84440098 */  lh         $a0, 0x98($v0)
/* 8DBF8 800D7838 8C42009C */  lw         $v0, 0x9C($v0)
/* 8DBFC 800D783C 0040F809 */  jalr       $v0
/* 8DC00 800D7840 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7844:
/* 8DC04 800D7844 3C028013 */  lui        $v0, %hi(D_race_80132090)
/* 8DC08 800D7848 8C442090 */  lw         $a0, %lo(D_race_80132090)($v0)
/* 8DC0C 800D784C 0C01FB65 */  jal        func_8007ED94
/* 8DC10 800D7850 00000000 */   nop
/* 8DC14 800D7854 8EB0002C */  lw         $s0, 0x2C($s5)
/* 8DC18 800D7858 00102040 */  sll        $a0, $s0, 1
/* 8DC1C 800D785C 00902021 */  addu       $a0, $a0, $s0
/* 8DC20 800D7860 00042080 */  sll        $a0, $a0, 2
/* 8DC24 800D7864 00902021 */  addu       $a0, $a0, $s0
/* 8DC28 800D7868 00042080 */  sll        $a0, $a0, 2
/* 8DC2C 800D786C 0C00943C */  jal        func_800250F0
/* 8DC30 800D7870 24840008 */   addiu     $a0, $a0, 0x8
/* 8DC34 800D7874 24420008 */  addiu      $v0, $v0, 0x8
/* 8DC38 800D7878 0040A021 */  addu       $s4, $v0, $zero
/* 8DC3C 800D787C 02809021 */  addu       $s2, $s4, $zero
/* 8DC40 800D7880 2611FFFF */  addiu      $s1, $s0, -0x1
/* 8DC44 800D7884 06200007 */  bltz       $s1, .Lrace_800D78A4
/* 8DC48 800D7888 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 8DC4C 800D788C 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D7890:
/* 8DC50 800D7890 0C0372A0 */  jal        func_race_800DCA80
/* 8DC54 800D7894 02402021 */   addu      $a0, $s2, $zero
/* 8DC58 800D7898 2631FFFF */  addiu      $s1, $s1, -0x1
/* 8DC5C 800D789C 1630FFFC */  bne        $s1, $s0, .Lrace_800D7890
/* 8DC60 800D78A0 26520034 */   addiu     $s2, $s2, 0x34
.Lrace_800D78A4:
/* 8DC64 800D78A4 0C01FB72 */  jal        func_8007EDC8
/* 8DC68 800D78A8 AEB40060 */   sw        $s4, 0x60($s5)
/* 8DC6C 800D78AC 8EA20060 */  lw         $v0, 0x60($s5)
/* 8DC70 800D78B0 14400008 */  bnez       $v0, .Lrace_800D78D4
/* 8DC74 800D78B4 0000B021 */   addu      $s6, $zero, $zero
/* 8DC78 800D78B8 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8DC7C 800D78BC 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8DC80 800D78C0 00002821 */  addu       $a1, $zero, $zero
/* 8DC84 800D78C4 00A03021 */  addu       $a2, $a1, $zero
/* 8DC88 800D78C8 0C011ACF */  jal        func_80046B3C
/* 8DC8C 800D78CC 00A03821 */   addu      $a3, $a1, $zero
/* 8DC90 800D78D0 0000B021 */  addu       $s6, $zero, $zero
.Lrace_800D78D4:
/* 8DC94 800D78D4 24120001 */  addiu      $s2, $zero, 0x1
/* 8DC98 800D78D8 27BE0010 */  addiu      $fp, $sp, 0x10
/* 8DC9C 800D78DC 2417FFFF */  addiu      $s7, $zero, -0x1
/* 8DCA0 800D78E0 27B10050 */  addiu      $s1, $sp, 0x50
/* 8DCA4 800D78E4 02C0A021 */  addu       $s4, $s6, $zero
.Lrace_800D78E8:
/* 8DCA8 800D78E8 8EA2002C */  lw         $v0, 0x2C($s5)
/* 8DCAC 800D78EC 02C2102B */  sltu       $v0, $s6, $v0
/* 8DCB0 800D78F0 104000B6 */  beqz       $v0, .Lrace_800D7BCC
/* 8DCB4 800D78F4 00000000 */   nop
/* 8DCB8 800D78F8 8E620028 */  lw         $v0, 0x28($s3)
/* 8DCBC 800D78FC 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DCC0 800D7900 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DCC4 800D7904 0040F809 */  jalr       $v0
/* 8DCC8 800D7908 02642021 */   addu      $a0, $s3, $a0
/* 8DCCC 800D790C 24030027 */  addiu      $v1, $zero, 0x27
/* 8DCD0 800D7910 10430006 */  beq        $v0, $v1, .Lrace_800D792C
/* 8DCD4 800D7914 00002821 */   addu      $a1, $zero, $zero
/* 8DCD8 800D7918 8E620028 */  lw         $v0, 0x28($s3)
/* 8DCDC 800D791C 84440098 */  lh         $a0, 0x98($v0)
/* 8DCE0 800D7920 8C42009C */  lw         $v0, 0x9C($v0)
/* 8DCE4 800D7924 0040F809 */  jalr       $v0
/* 8DCE8 800D7928 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D792C:
/* 8DCEC 800D792C 0C002680 */  jal        func_80009A00
/* 8DCF0 800D7930 02602021 */   addu      $a0, $s3, $zero
/* 8DCF4 800D7934 AFA20010 */  sw         $v0, 0x10($sp)
/* 8DCF8 800D7938 8E620028 */  lw         $v0, 0x28($s3)
/* 8DCFC 800D793C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DD00 800D7940 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DD04 800D7944 0040F809 */  jalr       $v0
/* 8DD08 800D7948 02642021 */   addu      $a0, $s3, $a0
/* 8DD0C 800D794C 00401821 */  addu       $v1, $v0, $zero
/* 8DD10 800D7950 2402003C */  addiu      $v0, $zero, 0x3C
/* 8DD14 800D7954 14620009 */  bne        $v1, $v0, .Lrace_800D797C
/* 8DD18 800D7958 AFA00040 */   sw        $zero, 0x40($sp)
/* 8DD1C 800D795C AFB20040 */  sw         $s2, 0x40($sp)
/* 8DD20 800D7960 8E620028 */  lw         $v0, 0x28($s3)
/* 8DD24 800D7964 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DD28 800D7968 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DD2C 800D796C 0040F809 */  jalr       $v0
/* 8DD30 800D7970 02642021 */   addu      $a0, $s3, $a0
/* 8DD34 800D7974 08035E60 */  j          .Lrace_800D7980
/* 8DD38 800D7978 24030005 */   addiu     $v1, $zero, 0x5
.Lrace_800D797C:
/* 8DD3C 800D797C 24020005 */  addiu      $v0, $zero, 0x5
.Lrace_800D7980:
/* 8DD40 800D7980 10620006 */  beq        $v1, $v0, .Lrace_800D799C
/* 8DD44 800D7984 24050005 */   addiu     $a1, $zero, 0x5
/* 8DD48 800D7988 8E620028 */  lw         $v0, 0x28($s3)
/* 8DD4C 800D798C 84440098 */  lh         $a0, 0x98($v0)
/* 8DD50 800D7990 8C42009C */  lw         $v0, 0x9C($v0)
/* 8DD54 800D7994 0040F809 */  jalr       $v0
/* 8DD58 800D7998 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D799C:
/* 8DD5C 800D799C 00002021 */  addu       $a0, $zero, $zero
/* 8DD60 800D79A0 03C01821 */  addu       $v1, $fp, $zero
.Lrace_800D79A4:
/* 8DD64 800D79A4 AC770004 */  sw         $s7, 0x4($v1)
/* 8DD68 800D79A8 24840001 */  addiu      $a0, $a0, 0x1
/* 8DD6C 800D79AC 2C820003 */  sltiu      $v0, $a0, 0x3
/* 8DD70 800D79B0 1440FFFC */  bnez       $v0, .Lrace_800D79A4
/* 8DD74 800D79B4 24630004 */   addiu     $v1, $v1, 0x4
/* 8DD78 800D79B8 AFB50020 */  sw         $s5, 0x20($sp)
/* 8DD7C 800D79BC AFA00024 */  sw         $zero, 0x24($sp)
/* 8DD80 800D79C0 AFA00028 */  sw         $zero, 0x28($sp)
/* 8DD84 800D79C4 AFA0002C */  sw         $zero, 0x2C($sp)
/* 8DD88 800D79C8 AFB70030 */  sw         $s7, 0x30($sp)
/* 8DD8C 800D79CC AFB70034 */  sw         $s7, 0x34($sp)
/* 8DD90 800D79D0 AFA0003C */  sw         $zero, 0x3C($sp)
/* 8DD94 800D79D4 AFA00038 */  sw         $zero, 0x38($sp)
/* 8DD98 800D79D8 AFA00044 */  sw         $zero, 0x44($sp)
/* 8DD9C 800D79DC AFA00048 */  sw         $zero, 0x48($sp)
.Lrace_800D79E0:
/* 8DDA0 800D79E0 8E620028 */  lw         $v0, 0x28($s3)
/* 8DDA4 800D79E4 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DDA8 800D79E8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DDAC 800D79EC 0040F809 */  jalr       $v0
/* 8DDB0 800D79F0 02642021 */   addu      $a0, $s3, $a0
/* 8DDB4 800D79F4 00401821 */  addu       $v1, $v0, $zero
/* 8DDB8 800D79F8 24020006 */  addiu      $v0, $zero, 0x6
/* 8DDBC 800D79FC 1062006C */  beq        $v1, $v0, .Lrace_800D7BB0
/* 8DDC0 800D7A00 2463FFD9 */   addiu     $v1, $v1, -0x27
/* 8DDC4 800D7A04 2C62001B */  sltiu      $v0, $v1, 0x1B
/* 8DDC8 800D7A08 10400061 */  beqz       $v0, Lrace_800D7B90
/* 8DDCC 800D7A0C 00031080 */   sll       $v0, $v1, 2
/* 8DDD0 800D7A10 3C08800D */  lui        $t0, %hi(jtbl_race_800CACF0)
/* 8DDD4 800D7A14 2508ACF0 */  addiu      $t0, $t0, %lo(jtbl_race_800CACF0)
/* 8DDD8 800D7A18 00481021 */  addu       $v0, $v0, $t0
/* 8DDDC 800D7A1C 8C420000 */  lw         $v0, 0x0($v0)
/* 8DDE0 800D7A20 00400008 */  jr         $v0
/* 8DDE4 800D7A24 00000000 */   nop
glabel Lrace_800D7A28
/* 8DDE8 800D7A28 8E620028 */  lw         $v0, 0x28($s3)
/* 8DDEC 800D7A2C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DDF0 800D7A30 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DDF4 800D7A34 0040F809 */  jalr       $v0
/* 8DDF8 800D7A38 02642021 */   addu      $a0, $s3, $a0
/* 8DDFC 800D7A3C 02202021 */  addu       $a0, $s1, $zero
/* 8DE00 800D7A40 26650044 */  addiu      $a1, $s3, 0x44
/* 8DE04 800D7A44 0C000708 */  jal        func_80001C20
/* 8DE08 800D7A48 24060008 */   addiu     $a2, $zero, 0x8
/* 8DE0C 800D7A4C 8FA20048 */  lw         $v0, 0x48($sp)
/* 8DE10 800D7A50 10400007 */  beqz       $v0, .Lrace_800D7A70
/* 8DE14 800D7A54 00000000 */   nop
/* 8DE18 800D7A58 8EA20004 */  lw         $v0, 0x4($s5)
/* 8DE1C 800D7A5C 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8DE20 800D7A60 10600007 */  beqz       $v1, .Lrace_800D7A80
/* 8DE24 800D7A64 244400BC */   addiu     $a0, $v0, 0xBC
/* 8DE28 800D7A68 08035EA2 */  j          .Lrace_800D7A88
/* 8DE2C 800D7A6C 00000000 */   nop
.Lrace_800D7A70:
/* 8DE30 800D7A70 8EA20000 */  lw         $v0, 0x0($s5)
/* 8DE34 800D7A74 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8DE38 800D7A78 14600003 */  bnez       $v1, .Lrace_800D7A88
/* 8DE3C 800D7A7C 244400BC */   addiu     $a0, $v0, 0xBC
.Lrace_800D7A80:
/* 8DE40 800D7A80 08035EA4 */  j          .Lrace_800D7A90
/* 8DE44 800D7A84 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D7A88:
/* 8DE48 800D7A88 0C016427 */  jal        func_8005909C
/* 8DE4C 800D7A8C 02202821 */   addu      $a1, $s1, $zero
.Lrace_800D7A90:
/* 8DE50 800D7A90 08035E78 */  j          .Lrace_800D79E0
/* 8DE54 800D7A94 AFA20024 */   sw        $v0, 0x24($sp)
glabel Lrace_800D7A98
/* 8DE58 800D7A98 08035E78 */  j          .Lrace_800D79E0
/* 8DE5C 800D7A9C AFB20048 */   sw        $s2, 0x48($sp)
glabel Lrace_800D7AA0
/* 8DE60 800D7AA0 0C002680 */  jal        func_80009A00
/* 8DE64 800D7AA4 02602021 */   addu      $a0, $s3, $zero
/* 8DE68 800D7AA8 08035E78 */  j          .Lrace_800D79E0
/* 8DE6C 800D7AAC AFA20028 */   sw        $v0, 0x28($sp)
glabel Lrace_800D7AB0
/* 8DE70 800D7AB0 0C002680 */  jal        func_80009A00
/* 8DE74 800D7AB4 02602021 */   addu      $a0, $s3, $zero
/* 8DE78 800D7AB8 08035E78 */  j          .Lrace_800D79E0
/* 8DE7C 800D7ABC AFA2002C */   sw        $v0, 0x2C($sp)
glabel Lrace_800D7AC0
/* 8DE80 800D7AC0 0C002680 */  jal        func_80009A00
/* 8DE84 800D7AC4 02602021 */   addu      $a0, $s3, $zero
/* 8DE88 800D7AC8 08035E78 */  j          .Lrace_800D79E0
/* 8DE8C 800D7ACC AFA20030 */   sw        $v0, 0x30($sp)
glabel Lrace_800D7AD0
/* 8DE90 800D7AD0 0C002680 */  jal        func_80009A00
/* 8DE94 800D7AD4 02602021 */   addu      $a0, $s3, $zero
/* 8DE98 800D7AD8 08035E78 */  j          .Lrace_800D79E0
/* 8DE9C 800D7ADC AFA20034 */   sw        $v0, 0x34($sp)
glabel Lrace_800D7AE0
/* 8DEA0 800D7AE0 08035E78 */  j          .Lrace_800D79E0
/* 8DEA4 800D7AE4 AFB20038 */   sw        $s2, 0x38($sp)
glabel Lrace_800D7AE8
/* 8DEA8 800D7AE8 08035E78 */  j          .Lrace_800D79E0
/* 8DEAC 800D7AEC AFB2003C */   sw        $s2, 0x3C($sp)
glabel Lrace_800D7AF0
/* 8DEB0 800D7AF0 08035E78 */  j          .Lrace_800D79E0
/* 8DEB4 800D7AF4 AFB20044 */   sw        $s2, 0x44($sp)
glabel Lrace_800D7AF8
/* 8DEB8 800D7AF8 8E620028 */  lw         $v0, 0x28($s3)
/* 8DEBC 800D7AFC 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DEC0 800D7B00 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DEC4 800D7B04 0040F809 */  jalr       $v0
/* 8DEC8 800D7B08 02642021 */   addu      $a0, $s3, $a0
/* 8DECC 800D7B0C 00401821 */  addu       $v1, $v0, $zero
/* 8DED0 800D7B10 24020036 */  addiu      $v0, $zero, 0x36
/* 8DED4 800D7B14 1062000C */  beq        $v1, $v0, .Lrace_800D7B48
/* 8DED8 800D7B18 2C620037 */   sltiu     $v0, $v1, 0x37
/* 8DEDC 800D7B1C 10400005 */  beqz       $v0, .Lrace_800D7B34
/* 8DEE0 800D7B20 24020034 */   addiu     $v0, $zero, 0x34
/* 8DEE4 800D7B24 1062000A */  beq        $v1, $v0, .Lrace_800D7B50
/* 8DEE8 800D7B28 24100003 */   addiu     $s0, $zero, 0x3
/* 8DEEC 800D7B2C 08035ED8 */  j          .Lrace_800D7B60
/* 8DEF0 800D7B30 00000000 */   nop
.Lrace_800D7B34:
/* 8DEF4 800D7B34 24020037 */  addiu      $v0, $zero, 0x37
/* 8DEF8 800D7B38 10620007 */  beq        $v1, $v0, .Lrace_800D7B58
/* 8DEFC 800D7B3C 24100003 */   addiu     $s0, $zero, 0x3
/* 8DF00 800D7B40 08035ED8 */  j          .Lrace_800D7B60
/* 8DF04 800D7B44 00000000 */   nop
.Lrace_800D7B48:
/* 8DF08 800D7B48 08035EDE */  j          .Lrace_800D7B78
/* 8DF0C 800D7B4C 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D7B50:
/* 8DF10 800D7B50 08035EDE */  j          .Lrace_800D7B78
/* 8DF14 800D7B54 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800D7B58:
/* 8DF18 800D7B58 08035EDE */  j          .Lrace_800D7B78
/* 8DF1C 800D7B5C 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800D7B60:
/* 8DF20 800D7B60 8E620028 */  lw         $v0, 0x28($s3)
/* 8DF24 800D7B64 00002821 */  addu       $a1, $zero, $zero
/* 8DF28 800D7B68 84440098 */  lh         $a0, 0x98($v0)
/* 8DF2C 800D7B6C 8C42009C */  lw         $v0, 0x9C($v0)
/* 8DF30 800D7B70 0040F809 */  jalr       $v0
/* 8DF34 800D7B74 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7B78:
/* 8DF38 800D7B78 0C002680 */  jal        func_80009A00
/* 8DF3C 800D7B7C 02602021 */   addu      $a0, $s3, $zero
/* 8DF40 800D7B80 00101880 */  sll        $v1, $s0, 2
/* 8DF44 800D7B84 03C31821 */  addu       $v1, $fp, $v1
/* 8DF48 800D7B88 08035E78 */  j          .Lrace_800D79E0
/* 8DF4C 800D7B8C AC620004 */   sw        $v0, 0x4($v1)
glabel Lrace_800D7B90
/* 8DF50 800D7B90 8E620028 */  lw         $v0, 0x28($s3)
/* 8DF54 800D7B94 00002821 */  addu       $a1, $zero, $zero
/* 8DF58 800D7B98 84440098 */  lh         $a0, 0x98($v0)
/* 8DF5C 800D7B9C 8C42009C */  lw         $v0, 0x9C($v0)
/* 8DF60 800D7BA0 0040F809 */  jalr       $v0
/* 8DF64 800D7BA4 02642021 */   addu      $a0, $s3, $a0
/* 8DF68 800D7BA8 08035E78 */  j          .Lrace_800D79E0
/* 8DF6C 800D7BAC 00000000 */   nop
.Lrace_800D7BB0:
/* 8DF70 800D7BB0 27A50010 */  addiu      $a1, $sp, 0x10
/* 8DF74 800D7BB4 8EA40060 */  lw         $a0, 0x60($s5)
/* 8DF78 800D7BB8 26D60001 */  addiu      $s6, $s6, 0x1
/* 8DF7C 800D7BBC 0C0372C1 */  jal        func_race_800DCB04
/* 8DF80 800D7BC0 00942021 */   addu      $a0, $a0, $s4
/* 8DF84 800D7BC4 08035E3A */  j          .Lrace_800D78E8
/* 8DF88 800D7BC8 26940034 */   addiu     $s4, $s4, 0x34
.Lrace_800D7BCC:
/* 8DF8C 800D7BCC 8E620028 */  lw         $v0, 0x28($s3)
/* 8DF90 800D7BD0 844400A0 */  lh         $a0, 0xA0($v0)
/* 8DF94 800D7BD4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8DF98 800D7BD8 0040F809 */  jalr       $v0
/* 8DF9C 800D7BDC 02642021 */   addu      $a0, $s3, $a0
/* 8DFA0 800D7BE0 24030006 */  addiu      $v1, $zero, 0x6
/* 8DFA4 800D7BE4 10430006 */  beq        $v0, $v1, .Lrace_800D7C00
/* 8DFA8 800D7BE8 00602821 */   addu      $a1, $v1, $zero
/* 8DFAC 800D7BEC 8E620028 */  lw         $v0, 0x28($s3)
/* 8DFB0 800D7BF0 84440098 */  lh         $a0, 0x98($v0)
/* 8DFB4 800D7BF4 8C42009C */  lw         $v0, 0x9C($v0)
/* 8DFB8 800D7BF8 0040F809 */  jalr       $v0
/* 8DFBC 800D7BFC 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7C00:
/* 8DFC0 800D7C00 8FBF007C */  lw         $ra, 0x7C($sp)
/* 8DFC4 800D7C04 8FBE0078 */  lw         $fp, 0x78($sp)
/* 8DFC8 800D7C08 8FB70074 */  lw         $s7, 0x74($sp)
/* 8DFCC 800D7C0C 8FB60070 */  lw         $s6, 0x70($sp)
/* 8DFD0 800D7C10 8FB5006C */  lw         $s5, 0x6C($sp)
/* 8DFD4 800D7C14 8FB40068 */  lw         $s4, 0x68($sp)
/* 8DFD8 800D7C18 8FB30064 */  lw         $s3, 0x64($sp)
/* 8DFDC 800D7C1C 8FB20060 */  lw         $s2, 0x60($sp)
/* 8DFE0 800D7C20 8FB1005C */  lw         $s1, 0x5C($sp)
/* 8DFE4 800D7C24 8FB00058 */  lw         $s0, 0x58($sp)
/* 8DFE8 800D7C28 03E00008 */  jr         $ra
/* 8DFEC 800D7C2C 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_800D7C30
/* 8DFF0 800D7C30 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 8DFF4 800D7C34 AFB3005C */  sw         $s3, 0x5C($sp)
/* 8DFF8 800D7C38 00A09821 */  addu       $s3, $a1, $zero
/* 8DFFC 800D7C3C AFBF0074 */  sw         $ra, 0x74($sp)
/* 8E000 800D7C40 AFBE0070 */  sw         $fp, 0x70($sp)
/* 8E004 800D7C44 AFB7006C */  sw         $s7, 0x6C($sp)
/* 8E008 800D7C48 AFB60068 */  sw         $s6, 0x68($sp)
/* 8E00C 800D7C4C AFB50064 */  sw         $s5, 0x64($sp)
/* 8E010 800D7C50 AFB40060 */  sw         $s4, 0x60($sp)
/* 8E014 800D7C54 AFB20058 */  sw         $s2, 0x58($sp)
/* 8E018 800D7C58 AFB10054 */  sw         $s1, 0x54($sp)
/* 8E01C 800D7C5C AFB00050 */  sw         $s0, 0x50($sp)
/* 8E020 800D7C60 8E620028 */  lw         $v0, 0x28($s3)
/* 8E024 800D7C64 0080A821 */  addu       $s5, $a0, $zero
/* 8E028 800D7C68 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E02C 800D7C6C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E030 800D7C70 0040F809 */  jalr       $v0
/* 8E034 800D7C74 02642021 */   addu      $a0, $s3, $a0
/* 8E038 800D7C78 24030007 */  addiu      $v1, $zero, 0x7
/* 8E03C 800D7C7C 10430006 */  beq        $v0, $v1, .Lrace_800D7C98
/* 8E040 800D7C80 00602821 */   addu      $a1, $v1, $zero
/* 8E044 800D7C84 8E620028 */  lw         $v0, 0x28($s3)
/* 8E048 800D7C88 84440098 */  lh         $a0, 0x98($v0)
/* 8E04C 800D7C8C 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E050 800D7C90 0040F809 */  jalr       $v0
/* 8E054 800D7C94 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7C98:
/* 8E058 800D7C98 0C002680 */  jal        func_80009A00
/* 8E05C 800D7C9C 02602021 */   addu      $a0, $s3, $zero
/* 8E060 800D7CA0 AEA20030 */  sw         $v0, 0x30($s5)
/* 8E064 800D7CA4 8E620028 */  lw         $v0, 0x28($s3)
/* 8E068 800D7CA8 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E06C 800D7CAC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E070 800D7CB0 0040F809 */  jalr       $v0
/* 8E074 800D7CB4 02642021 */   addu      $a0, $s3, $a0
/* 8E078 800D7CB8 24030008 */  addiu      $v1, $zero, 0x8
/* 8E07C 800D7CBC 10430006 */  beq        $v0, $v1, .Lrace_800D7CD8
/* 8E080 800D7CC0 00602821 */   addu      $a1, $v1, $zero
/* 8E084 800D7CC4 8E620028 */  lw         $v0, 0x28($s3)
/* 8E088 800D7CC8 84440098 */  lh         $a0, 0x98($v0)
/* 8E08C 800D7CCC 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E090 800D7CD0 0040F809 */  jalr       $v0
/* 8E094 800D7CD4 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7CD8:
/* 8E098 800D7CD8 8E620028 */  lw         $v0, 0x28($s3)
/* 8E09C 800D7CDC 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E0A0 800D7CE0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E0A4 800D7CE4 0040F809 */  jalr       $v0
/* 8E0A8 800D7CE8 02642021 */   addu      $a0, $s3, $a0
/* 8E0AC 800D7CEC 24030005 */  addiu      $v1, $zero, 0x5
/* 8E0B0 800D7CF0 10430006 */  beq        $v0, $v1, .Lrace_800D7D0C
/* 8E0B4 800D7CF4 00602821 */   addu      $a1, $v1, $zero
/* 8E0B8 800D7CF8 8E620028 */  lw         $v0, 0x28($s3)
/* 8E0BC 800D7CFC 84440098 */  lh         $a0, 0x98($v0)
/* 8E0C0 800D7D00 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E0C4 800D7D04 0040F809 */  jalr       $v0
/* 8E0C8 800D7D08 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7D0C:
/* 8E0CC 800D7D0C 3C028013 */  lui        $v0, %hi(D_race_80132090)
/* 8E0D0 800D7D10 8C442090 */  lw         $a0, %lo(D_race_80132090)($v0)
/* 8E0D4 800D7D14 0C01FB65 */  jal        func_8007ED94
/* 8E0D8 800D7D18 00000000 */   nop
/* 8E0DC 800D7D1C 8EB00030 */  lw         $s0, 0x30($s5)
/* 8E0E0 800D7D20 00102040 */  sll        $a0, $s0, 1
/* 8E0E4 800D7D24 00902021 */  addu       $a0, $a0, $s0
/* 8E0E8 800D7D28 00042080 */  sll        $a0, $a0, 2
/* 8E0EC 800D7D2C 00902021 */  addu       $a0, $a0, $s0
/* 8E0F0 800D7D30 00042080 */  sll        $a0, $a0, 2
/* 8E0F4 800D7D34 0C00943C */  jal        func_800250F0
/* 8E0F8 800D7D38 24840008 */   addiu     $a0, $a0, 0x8
/* 8E0FC 800D7D3C 24420008 */  addiu      $v0, $v0, 0x8
/* 8E100 800D7D40 0040A021 */  addu       $s4, $v0, $zero
/* 8E104 800D7D44 02809021 */  addu       $s2, $s4, $zero
/* 8E108 800D7D48 2611FFFF */  addiu      $s1, $s0, -0x1
/* 8E10C 800D7D4C 06200007 */  bltz       $s1, .Lrace_800D7D6C
/* 8E110 800D7D50 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 8E114 800D7D54 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D7D58:
/* 8E118 800D7D58 0C0371BC */  jal        func_race_800DC6F0
/* 8E11C 800D7D5C 02402021 */   addu      $a0, $s2, $zero
/* 8E120 800D7D60 2631FFFF */  addiu      $s1, $s1, -0x1
/* 8E124 800D7D64 1630FFFC */  bne        $s1, $s0, .Lrace_800D7D58
/* 8E128 800D7D68 26520034 */   addiu     $s2, $s2, 0x34
.Lrace_800D7D6C:
/* 8E12C 800D7D6C 0C01FB72 */  jal        func_8007EDC8
/* 8E130 800D7D70 AEB40064 */   sw        $s4, 0x64($s5)
/* 8E134 800D7D74 8EA20064 */  lw         $v0, 0x64($s5)
/* 8E138 800D7D78 14400008 */  bnez       $v0, .Lrace_800D7D9C
/* 8E13C 800D7D7C 0000B021 */   addu      $s6, $zero, $zero
/* 8E140 800D7D80 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8E144 800D7D84 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8E148 800D7D88 00002821 */  addu       $a1, $zero, $zero
/* 8E14C 800D7D8C 00A03021 */  addu       $a2, $a1, $zero
/* 8E150 800D7D90 0C011ACF */  jal        func_80046B3C
/* 8E154 800D7D94 00A03821 */   addu      $a3, $a1, $zero
/* 8E158 800D7D98 0000B021 */  addu       $s6, $zero, $zero
.Lrace_800D7D9C:
/* 8E15C 800D7D9C 24120001 */  addiu      $s2, $zero, 0x1
/* 8E160 800D7DA0 27B70010 */  addiu      $s7, $sp, 0x10
/* 8E164 800D7DA4 3C02800D */  lui        $v0, %hi(jtbl_race_800CAD60)
/* 8E168 800D7DA8 245EAD60 */  addiu      $fp, $v0, %lo(jtbl_race_800CAD60)
/* 8E16C 800D7DAC 27B10048 */  addiu      $s1, $sp, 0x48
/* 8E170 800D7DB0 02C0A021 */  addu       $s4, $s6, $zero
.Lrace_800D7DB4:
/* 8E174 800D7DB4 8EA20030 */  lw         $v0, 0x30($s5)
/* 8E178 800D7DB8 02C2102B */  sltu       $v0, $s6, $v0
/* 8E17C 800D7DBC 104000E0 */  beqz       $v0, .Lrace_800D8140
/* 8E180 800D7DC0 00000000 */   nop
/* 8E184 800D7DC4 8E620028 */  lw         $v0, 0x28($s3)
/* 8E188 800D7DC8 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E18C 800D7DCC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E190 800D7DD0 0040F809 */  jalr       $v0
/* 8E194 800D7DD4 02642021 */   addu      $a0, $s3, $a0
/* 8E198 800D7DD8 24030027 */  addiu      $v1, $zero, 0x27
/* 8E19C 800D7DDC 10430006 */  beq        $v0, $v1, .Lrace_800D7DF8
/* 8E1A0 800D7DE0 00002821 */   addu      $a1, $zero, $zero
/* 8E1A4 800D7DE4 8E620028 */  lw         $v0, 0x28($s3)
/* 8E1A8 800D7DE8 84440098 */  lh         $a0, 0x98($v0)
/* 8E1AC 800D7DEC 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E1B0 800D7DF0 0040F809 */  jalr       $v0
/* 8E1B4 800D7DF4 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7DF8:
/* 8E1B8 800D7DF8 0C002680 */  jal        func_80009A00
/* 8E1BC 800D7DFC 02602021 */   addu      $a0, $s3, $zero
/* 8E1C0 800D7E00 AFA20010 */  sw         $v0, 0x10($sp)
/* 8E1C4 800D7E04 8E620028 */  lw         $v0, 0x28($s3)
/* 8E1C8 800D7E08 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E1CC 800D7E0C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E1D0 800D7E10 0040F809 */  jalr       $v0
/* 8E1D4 800D7E14 02642021 */   addu      $a0, $s3, $a0
/* 8E1D8 800D7E18 00401821 */  addu       $v1, $v0, $zero
/* 8E1DC 800D7E1C 2402003C */  addiu      $v0, $zero, 0x3C
/* 8E1E0 800D7E20 14620009 */  bne        $v1, $v0, .Lrace_800D7E48
/* 8E1E4 800D7E24 AFA00040 */   sw        $zero, 0x40($sp)
/* 8E1E8 800D7E28 AFB20040 */  sw         $s2, 0x40($sp)
/* 8E1EC 800D7E2C 8E620028 */  lw         $v0, 0x28($s3)
/* 8E1F0 800D7E30 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E1F4 800D7E34 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E1F8 800D7E38 0040F809 */  jalr       $v0
/* 8E1FC 800D7E3C 02642021 */   addu      $a0, $s3, $a0
/* 8E200 800D7E40 08035F93 */  j          .Lrace_800D7E4C
/* 8E204 800D7E44 24030005 */   addiu     $v1, $zero, 0x5
.Lrace_800D7E48:
/* 8E208 800D7E48 24020005 */  addiu      $v0, $zero, 0x5
.Lrace_800D7E4C:
/* 8E20C 800D7E4C 10620006 */  beq        $v1, $v0, .Lrace_800D7E68
/* 8E210 800D7E50 24050005 */   addiu     $a1, $zero, 0x5
/* 8E214 800D7E54 8E620028 */  lw         $v0, 0x28($s3)
/* 8E218 800D7E58 84440098 */  lh         $a0, 0x98($v0)
/* 8E21C 800D7E5C 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E220 800D7E60 0040F809 */  jalr       $v0
/* 8E224 800D7E64 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7E68:
/* 8E228 800D7E68 00002021 */  addu       $a0, $zero, $zero
/* 8E22C 800D7E6C 2405FFFF */  addiu      $a1, $zero, -0x1
/* 8E230 800D7E70 02E01821 */  addu       $v1, $s7, $zero
.Lrace_800D7E74:
/* 8E234 800D7E74 AC650004 */  sw         $a1, 0x4($v1)
/* 8E238 800D7E78 24840001 */  addiu      $a0, $a0, 0x1
/* 8E23C 800D7E7C 2C820003 */  sltiu      $v0, $a0, 0x3
/* 8E240 800D7E80 1440FFFC */  bnez       $v0, .Lrace_800D7E74
/* 8E244 800D7E84 24630004 */   addiu     $v1, $v1, 0x4
/* 8E248 800D7E88 AFB50020 */  sw         $s5, 0x20($sp)
/* 8E24C 800D7E8C AFA00024 */  sw         $zero, 0x24($sp)
/* 8E250 800D7E90 AFA00028 */  sw         $zero, 0x28($sp)
/* 8E254 800D7E94 A7A0002C */  sh         $zero, 0x2C($sp)
/* 8E258 800D7E98 AFA00030 */  sw         $zero, 0x30($sp)
/* 8E25C 800D7E9C AFA00034 */  sw         $zero, 0x34($sp)
/* 8E260 800D7EA0 AFA00038 */  sw         $zero, 0x38($sp)
/* 8E264 800D7EA4 AFA0003C */  sw         $zero, 0x3C($sp)
/* 8E268 800D7EA8 AFA00044 */  sw         $zero, 0x44($sp)
.Lrace_800D7EAC:
/* 8E26C 800D7EAC 8E620028 */  lw         $v0, 0x28($s3)
/* 8E270 800D7EB0 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E274 800D7EB4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E278 800D7EB8 0040F809 */  jalr       $v0
/* 8E27C 800D7EBC 02642021 */   addu      $a0, $s3, $a0
/* 8E280 800D7EC0 00401821 */  addu       $v1, $v0, $zero
/* 8E284 800D7EC4 24020006 */  addiu      $v0, $zero, 0x6
/* 8E288 800D7EC8 10620096 */  beq        $v1, $v0, .Lrace_800D8124
/* 8E28C 800D7ECC 2463FFD9 */   addiu     $v1, $v1, -0x27
/* 8E290 800D7ED0 2C620019 */  sltiu      $v0, $v1, 0x19
/* 8E294 800D7ED4 1040008B */  beqz       $v0, Lrace_800D8104
/* 8E298 800D7ED8 00031080 */   sll       $v0, $v1, 2
/* 8E29C 800D7EDC 005E1021 */  addu       $v0, $v0, $fp
/* 8E2A0 800D7EE0 8C420000 */  lw         $v0, 0x0($v0)
/* 8E2A4 800D7EE4 00400008 */  jr         $v0
/* 8E2A8 800D7EE8 00000000 */   nop
glabel Lrace_800D7EEC
/* 8E2AC 800D7EEC 0C002680 */  jal        func_80009A00
/* 8E2B0 800D7EF0 02602021 */   addu      $a0, $s3, $zero
/* 8E2B4 800D7EF4 8EA6000C */  lw         $a2, 0xC($s5)
/* 8E2B8 800D7EF8 8CC300EC */  lw         $v1, 0xEC($a2)
/* 8E2BC 800D7EFC 00402821 */  addu       $a1, $v0, $zero
/* 8E2C0 800D7F00 846400A0 */  lh         $a0, 0xA0($v1)
/* 8E2C4 800D7F04 8C6200A4 */  lw         $v0, 0xA4($v1)
/* 8E2C8 800D7F08 0040F809 */  jalr       $v0
/* 8E2CC 800D7F0C 00C42021 */   addu      $a0, $a2, $a0
/* 8E2D0 800D7F10 08035FAB */  j          .Lrace_800D7EAC
/* 8E2D4 800D7F14 AFA20024 */   sw        $v0, 0x24($sp)
glabel Lrace_800D7F18
/* 8E2D8 800D7F18 0C002680 */  jal        func_80009A00
/* 8E2DC 800D7F1C 02602021 */   addu      $a0, $s3, $zero
/* 8E2E0 800D7F20 08035FAB */  j          .Lrace_800D7EAC
/* 8E2E4 800D7F24 AFA20030 */   sw        $v0, 0x30($sp)
glabel Lrace_800D7F28
/* 8E2E8 800D7F28 0C002680 */  jal        func_80009A00
/* 8E2EC 800D7F2C 02602021 */   addu      $a0, $s3, $zero
/* 8E2F0 800D7F30 08035FAB */  j          .Lrace_800D7EAC
/* 8E2F4 800D7F34 AFA20034 */   sw        $v0, 0x34($sp)
glabel Lrace_800D7F38
/* 8E2F8 800D7F38 08035FAB */  j          .Lrace_800D7EAC
/* 8E2FC 800D7F3C AFB20038 */   sw        $s2, 0x38($sp)
glabel Lrace_800D7F40
/* 8E300 800D7F40 08035FAB */  j          .Lrace_800D7EAC
/* 8E304 800D7F44 AFB2003C */   sw        $s2, 0x3C($sp)
glabel Lrace_800D7F48
/* 8E308 800D7F48 08035FAB */  j          .Lrace_800D7EAC
/* 8E30C 800D7F4C AFB20044 */   sw        $s2, 0x44($sp)
glabel Lrace_800D7F50
/* 8E310 800D7F50 8E620028 */  lw         $v0, 0x28($s3)
/* 8E314 800D7F54 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E318 800D7F58 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E31C 800D7F5C 0040F809 */  jalr       $v0
/* 8E320 800D7F60 02642021 */   addu      $a0, $s3, $a0
/* 8E324 800D7F64 00401821 */  addu       $v1, $v0, $zero
/* 8E328 800D7F68 24020036 */  addiu      $v0, $zero, 0x36
/* 8E32C 800D7F6C 1062000C */  beq        $v1, $v0, .Lrace_800D7FA0
/* 8E330 800D7F70 2C620037 */   sltiu     $v0, $v1, 0x37
/* 8E334 800D7F74 10400005 */  beqz       $v0, .Lrace_800D7F8C
/* 8E338 800D7F78 24020034 */   addiu     $v0, $zero, 0x34
/* 8E33C 800D7F7C 1062000A */  beq        $v1, $v0, .Lrace_800D7FA8
/* 8E340 800D7F80 24100003 */   addiu     $s0, $zero, 0x3
/* 8E344 800D7F84 08035FEE */  j          .Lrace_800D7FB8
/* 8E348 800D7F88 00000000 */   nop
.Lrace_800D7F8C:
/* 8E34C 800D7F8C 24020037 */  addiu      $v0, $zero, 0x37
/* 8E350 800D7F90 10620007 */  beq        $v1, $v0, .Lrace_800D7FB0
/* 8E354 800D7F94 24100003 */   addiu     $s0, $zero, 0x3
/* 8E358 800D7F98 08035FEE */  j          .Lrace_800D7FB8
/* 8E35C 800D7F9C 00000000 */   nop
.Lrace_800D7FA0:
/* 8E360 800D7FA0 08035FF4 */  j          .Lrace_800D7FD0
/* 8E364 800D7FA4 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D7FA8:
/* 8E368 800D7FA8 08035FF4 */  j          .Lrace_800D7FD0
/* 8E36C 800D7FAC 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800D7FB0:
/* 8E370 800D7FB0 08035FF4 */  j          .Lrace_800D7FD0
/* 8E374 800D7FB4 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800D7FB8:
/* 8E378 800D7FB8 8E620028 */  lw         $v0, 0x28($s3)
/* 8E37C 800D7FBC 00002821 */  addu       $a1, $zero, $zero
/* 8E380 800D7FC0 84440098 */  lh         $a0, 0x98($v0)
/* 8E384 800D7FC4 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E388 800D7FC8 0040F809 */  jalr       $v0
/* 8E38C 800D7FCC 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D7FD0:
/* 8E390 800D7FD0 0C002680 */  jal        func_80009A00
/* 8E394 800D7FD4 02602021 */   addu      $a0, $s3, $zero
/* 8E398 800D7FD8 00101880 */  sll        $v1, $s0, 2
/* 8E39C 800D7FDC 02E31821 */  addu       $v1, $s7, $v1
/* 8E3A0 800D7FE0 08035FAB */  j          .Lrace_800D7EAC
/* 8E3A4 800D7FE4 AC620004 */   sw        $v0, 0x4($v1)
glabel Lrace_800D7FE8
/* 8E3A8 800D7FE8 8E620028 */  lw         $v0, 0x28($s3)
/* 8E3AC 800D7FEC 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E3B0 800D7FF0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E3B4 800D7FF4 0040F809 */  jalr       $v0
/* 8E3B8 800D7FF8 02642021 */   addu      $a0, $s3, $a0
/* 8E3BC 800D7FFC 02202021 */  addu       $a0, $s1, $zero
/* 8E3C0 800D8000 26650044 */  addiu      $a1, $s3, 0x44
/* 8E3C4 800D8004 0C000708 */  jal        func_80001C20
/* 8E3C8 800D8008 24060008 */   addiu     $a2, $zero, 0x8
/* 8E3CC 800D800C 8EA20000 */  lw         $v0, 0x0($s5)
/* 8E3D0 800D8010 00002821 */  addu       $a1, $zero, $zero
/* 8E3D4 800D8014 8C4300B0 */  lw         $v1, 0xB0($v0)
/* 8E3D8 800D8018 10600004 */  beqz       $v1, .Lrace_800D802C
/* 8E3DC 800D801C 244400B0 */   addiu     $a0, $v0, 0xB0
/* 8E3E0 800D8020 0C016427 */  jal        func_8005909C
/* 8E3E4 800D8024 02202821 */   addu      $a1, $s1, $zero
/* 8E3E8 800D8028 00402821 */  addu       $a1, $v0, $zero
.Lrace_800D802C:
/* 8E3EC 800D802C 14A0002C */  bnez       $a1, .Lrace_800D80E0
/* 8E3F0 800D8030 00000000 */   nop
/* 8E3F4 800D8034 8EA20000 */  lw         $v0, 0x0($s5)
/* 8E3F8 800D8038 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8E3FC 800D803C 10600007 */  beqz       $v1, .Lrace_800D805C
/* 8E400 800D8040 244400BC */   addiu     $a0, $v0, 0xBC
/* 8E404 800D8044 0C016427 */  jal        func_8005909C
/* 8E408 800D8048 02202821 */   addu      $a1, $s1, $zero
/* 8E40C 800D804C 00402821 */  addu       $a1, $v0, $zero
/* 8E410 800D8050 14A00023 */  bnez       $a1, .Lrace_800D80E0
/* 8E414 800D8054 00000000 */   nop
/* 8E418 800D8058 8EA20000 */  lw         $v0, 0x0($s5)
.Lrace_800D805C:
/* 8E41C 800D805C 8C4300C8 */  lw         $v1, 0xC8($v0)
/* 8E420 800D8060 10600004 */  beqz       $v1, .Lrace_800D8074
/* 8E424 800D8064 244400C8 */   addiu     $a0, $v0, 0xC8
/* 8E428 800D8068 0C016427 */  jal        func_8005909C
/* 8E42C 800D806C 02202821 */   addu      $a1, $s1, $zero
/* 8E430 800D8070 00402821 */  addu       $a1, $v0, $zero
.Lrace_800D8074:
/* 8E434 800D8074 14A0001A */  bnez       $a1, .Lrace_800D80E0
/* 8E438 800D8078 00000000 */   nop
/* 8E43C 800D807C 8EA20004 */  lw         $v0, 0x4($s5)
/* 8E440 800D8080 8C4300B0 */  lw         $v1, 0xB0($v0)
/* 8E444 800D8084 10600007 */  beqz       $v1, .Lrace_800D80A4
/* 8E448 800D8088 244400B0 */   addiu     $a0, $v0, 0xB0
/* 8E44C 800D808C 0C016427 */  jal        func_8005909C
/* 8E450 800D8090 02202821 */   addu      $a1, $s1, $zero
/* 8E454 800D8094 00402821 */  addu       $a1, $v0, $zero
/* 8E458 800D8098 14A00011 */  bnez       $a1, .Lrace_800D80E0
/* 8E45C 800D809C 00000000 */   nop
/* 8E460 800D80A0 8EA20004 */  lw         $v0, 0x4($s5)
.Lrace_800D80A4:
/* 8E464 800D80A4 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8E468 800D80A8 10600004 */  beqz       $v1, .Lrace_800D80BC
/* 8E46C 800D80AC 244400BC */   addiu     $a0, $v0, 0xBC
/* 8E470 800D80B0 0C016427 */  jal        func_8005909C
/* 8E474 800D80B4 02202821 */   addu      $a1, $s1, $zero
/* 8E478 800D80B8 00402821 */  addu       $a1, $v0, $zero
.Lrace_800D80BC:
/* 8E47C 800D80BC 14A00008 */  bnez       $a1, .Lrace_800D80E0
/* 8E480 800D80C0 00000000 */   nop
/* 8E484 800D80C4 8EA20004 */  lw         $v0, 0x4($s5)
/* 8E488 800D80C8 8C4300C8 */  lw         $v1, 0xC8($v0)
/* 8E48C 800D80CC 10600004 */  beqz       $v1, .Lrace_800D80E0
/* 8E490 800D80D0 244400C8 */   addiu     $a0, $v0, 0xC8
/* 8E494 800D80D4 0C016427 */  jal        func_8005909C
/* 8E498 800D80D8 02202821 */   addu      $a1, $s1, $zero
/* 8E49C 800D80DC 00402821 */  addu       $a1, $v0, $zero
.Lrace_800D80E0:
/* 8E4A0 800D80E0 8CA2006C */  lw         $v0, 0x6C($a1)
/* 8E4A4 800D80E4 14400002 */  bnez       $v0, .Lrace_800D80F0
/* 8E4A8 800D80E8 00401821 */   addu      $v1, $v0, $zero
/* 8E4AC 800D80EC 8CA30078 */  lw         $v1, 0x78($a1)
.Lrace_800D80F0:
/* 8E4B0 800D80F0 02602021 */  addu       $a0, $s3, $zero
/* 8E4B4 800D80F4 0C002680 */  jal        func_80009A00
/* 8E4B8 800D80F8 AFA30028 */   sw        $v1, 0x28($sp)
/* 8E4BC 800D80FC 08035FAB */  j          .Lrace_800D7EAC
/* 8E4C0 800D8100 A7A2002C */   sh        $v0, 0x2C($sp)
glabel Lrace_800D8104
/* 8E4C4 800D8104 8E620028 */  lw         $v0, 0x28($s3)
/* 8E4C8 800D8108 00002821 */  addu       $a1, $zero, $zero
/* 8E4CC 800D810C 84440098 */  lh         $a0, 0x98($v0)
/* 8E4D0 800D8110 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E4D4 800D8114 0040F809 */  jalr       $v0
/* 8E4D8 800D8118 02642021 */   addu      $a0, $s3, $a0
/* 8E4DC 800D811C 08035FAB */  j          .Lrace_800D7EAC
/* 8E4E0 800D8120 00000000 */   nop
.Lrace_800D8124:
/* 8E4E4 800D8124 27A50010 */  addiu      $a1, $sp, 0x10
/* 8E4E8 800D8128 8EA40064 */  lw         $a0, 0x64($s5)
/* 8E4EC 800D812C 26D60001 */  addiu      $s6, $s6, 0x1
/* 8E4F0 800D8130 0C0371E1 */  jal        func_race_800DC784
/* 8E4F4 800D8134 00942021 */   addu      $a0, $a0, $s4
/* 8E4F8 800D8138 08035F6D */  j          .Lrace_800D7DB4
/* 8E4FC 800D813C 26940034 */   addiu     $s4, $s4, 0x34
.Lrace_800D8140:
/* 8E500 800D8140 8E620028 */  lw         $v0, 0x28($s3)
/* 8E504 800D8144 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E508 800D8148 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E50C 800D814C 0040F809 */  jalr       $v0
/* 8E510 800D8150 02642021 */   addu      $a0, $s3, $a0
/* 8E514 800D8154 24030006 */  addiu      $v1, $zero, 0x6
/* 8E518 800D8158 10430006 */  beq        $v0, $v1, .Lrace_800D8174
/* 8E51C 800D815C 00602821 */   addu      $a1, $v1, $zero
/* 8E520 800D8160 8E620028 */  lw         $v0, 0x28($s3)
/* 8E524 800D8164 84440098 */  lh         $a0, 0x98($v0)
/* 8E528 800D8168 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E52C 800D816C 0040F809 */  jalr       $v0
/* 8E530 800D8170 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D8174:
/* 8E534 800D8174 8FBF0074 */  lw         $ra, 0x74($sp)
/* 8E538 800D8178 8FBE0070 */  lw         $fp, 0x70($sp)
/* 8E53C 800D817C 8FB7006C */  lw         $s7, 0x6C($sp)
/* 8E540 800D8180 8FB60068 */  lw         $s6, 0x68($sp)
/* 8E544 800D8184 8FB50064 */  lw         $s5, 0x64($sp)
/* 8E548 800D8188 8FB40060 */  lw         $s4, 0x60($sp)
/* 8E54C 800D818C 8FB3005C */  lw         $s3, 0x5C($sp)
/* 8E550 800D8190 8FB20058 */  lw         $s2, 0x58($sp)
/* 8E554 800D8194 8FB10054 */  lw         $s1, 0x54($sp)
/* 8E558 800D8198 8FB00050 */  lw         $s0, 0x50($sp)
/* 8E55C 800D819C 03E00008 */  jr         $ra
/* 8E560 800D81A0 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_race_800D81A4
/* 8E564 800D81A4 27BDFF60 */  addiu      $sp, $sp, -0xA0
/* 8E568 800D81A8 AFB5008C */  sw         $s5, 0x8C($sp)
/* 8E56C 800D81AC 0080A821 */  addu       $s5, $a0, $zero
/* 8E570 800D81B0 AFB30084 */  sw         $s3, 0x84($sp)
/* 8E574 800D81B4 00A09821 */  addu       $s3, $a1, $zero
/* 8E578 800D81B8 02602021 */  addu       $a0, $s3, $zero
/* 8E57C 800D81BC AFBF009C */  sw         $ra, 0x9C($sp)
/* 8E580 800D81C0 AFBE0098 */  sw         $fp, 0x98($sp)
/* 8E584 800D81C4 AFB70094 */  sw         $s7, 0x94($sp)
/* 8E588 800D81C8 AFB60090 */  sw         $s6, 0x90($sp)
/* 8E58C 800D81CC AFB40088 */  sw         $s4, 0x88($sp)
/* 8E590 800D81D0 AFB20080 */  sw         $s2, 0x80($sp)
/* 8E594 800D81D4 AFB1007C */  sw         $s1, 0x7C($sp)
/* 8E598 800D81D8 AFB00078 */  sw         $s0, 0x78($sp)
/* 8E59C 800D81DC 0C002723 */  jal        func_80009C8C
/* 8E5A0 800D81E0 AFA600A8 */   sw        $a2, 0xA8($sp)
/* 8E5A4 800D81E4 3C038013 */  lui        $v1, %hi(D_race_80132090)
/* 8E5A8 800D81E8 8C642090 */  lw         $a0, %lo(D_race_80132090)($v1)
/* 8E5AC 800D81EC 0C01FB65 */  jal        func_8007ED94
/* 8E5B0 800D81F0 AEA20034 */   sw        $v0, 0x34($s5)
/* 8E5B4 800D81F4 8EB00034 */  lw         $s0, 0x34($s5)
/* 8E5B8 800D81F8 00102040 */  sll        $a0, $s0, 1
/* 8E5BC 800D81FC 00902021 */  addu       $a0, $a0, $s0
/* 8E5C0 800D8200 000420C0 */  sll        $a0, $a0, 3
/* 8E5C4 800D8204 00902021 */  addu       $a0, $a0, $s0
/* 8E5C8 800D8208 00042080 */  sll        $a0, $a0, 2
/* 8E5CC 800D820C 0C00943C */  jal        func_800250F0
/* 8E5D0 800D8210 24840008 */   addiu     $a0, $a0, 0x8
/* 8E5D4 800D8214 24420008 */  addiu      $v0, $v0, 0x8
/* 8E5D8 800D8218 0040A021 */  addu       $s4, $v0, $zero
/* 8E5DC 800D821C 02809021 */  addu       $s2, $s4, $zero
/* 8E5E0 800D8220 2611FFFF */  addiu      $s1, $s0, -0x1
/* 8E5E4 800D8224 06200007 */  bltz       $s1, .Lrace_800D8244
/* 8E5E8 800D8228 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 8E5EC 800D822C 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D8230:
/* 8E5F0 800D8230 0C035A38 */  jal        func_race_800D68E0
/* 8E5F4 800D8234 02402021 */   addu      $a0, $s2, $zero
/* 8E5F8 800D8238 2631FFFF */  addiu      $s1, $s1, -0x1
/* 8E5FC 800D823C 1630FFFC */  bne        $s1, $s0, .Lrace_800D8230
/* 8E600 800D8240 26520064 */   addiu     $s2, $s2, 0x64
.Lrace_800D8244:
/* 8E604 800D8244 0C01FB72 */  jal        func_8007EDC8
/* 8E608 800D8248 AEB40068 */   sw        $s4, 0x68($s5)
/* 8E60C 800D824C 8EA20068 */  lw         $v0, 0x68($s5)
/* 8E610 800D8250 14400008 */  bnez       $v0, .Lrace_800D8274
/* 8E614 800D8254 0000B021 */   addu      $s6, $zero, $zero
/* 8E618 800D8258 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8E61C 800D825C 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8E620 800D8260 00002821 */  addu       $a1, $zero, $zero
/* 8E624 800D8264 00A03021 */  addu       $a2, $a1, $zero
/* 8E628 800D8268 0C011ACF */  jal        func_80046B3C
/* 8E62C 800D826C 00A03821 */   addu      $a3, $a1, $zero
/* 8E630 800D8270 0000B021 */  addu       $s6, $zero, $zero
.Lrace_800D8274:
/* 8E634 800D8274 24170001 */  addiu      $s7, $zero, 0x1
/* 8E638 800D8278 27BE0010 */  addiu      $fp, $sp, 0x10
/* 8E63C 800D827C 27B20070 */  addiu      $s2, $sp, 0x70
/* 8E640 800D8280 02C0A021 */  addu       $s4, $s6, $zero
.Lrace_800D8284:
/* 8E644 800D8284 8EA20034 */  lw         $v0, 0x34($s5)
/* 8E648 800D8288 02C2102B */  sltu       $v0, $s6, $v0
/* 8E64C 800D828C 104000DC */  beqz       $v0, .Lrace_800D8600
/* 8E650 800D8290 02602021 */   addu      $a0, $s3, $zero
/* 8E654 800D8294 0C0026F4 */  jal        func_80009BD0
/* 8E658 800D8298 24050027 */   addiu     $a1, $zero, 0x27
/* 8E65C 800D829C 0C002680 */  jal        func_80009A00
/* 8E660 800D82A0 02602021 */   addu      $a0, $s3, $zero
/* 8E664 800D82A4 AFA20010 */  sw         $v0, 0x10($sp)
/* 8E668 800D82A8 8E620028 */  lw         $v0, 0x28($s3)
/* 8E66C 800D82AC 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E670 800D82B0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E674 800D82B4 0040F809 */  jalr       $v0
/* 8E678 800D82B8 02642021 */   addu      $a0, $s3, $a0
/* 8E67C 800D82BC 00401821 */  addu       $v1, $v0, $zero
/* 8E680 800D82C0 2402003C */  addiu      $v0, $zero, 0x3C
/* 8E684 800D82C4 14620007 */  bne        $v1, $v0, .Lrace_800D82E4
/* 8E688 800D82C8 AFA00064 */   sw        $zero, 0x64($sp)
/* 8E68C 800D82CC AFB70064 */  sw         $s7, 0x64($sp)
/* 8E690 800D82D0 02602021 */  addu       $a0, $s3, $zero
/* 8E694 800D82D4 0C0026F4 */  jal        func_80009BD0
/* 8E698 800D82D8 24050005 */   addiu     $a1, $zero, 0x5
/* 8E69C 800D82DC 080360C2 */  j          .Lrace_800D8308
/* 8E6A0 800D82E0 00002021 */   addu      $a0, $zero, $zero
.Lrace_800D82E4:
/* 8E6A4 800D82E4 24020005 */  addiu      $v0, $zero, 0x5
/* 8E6A8 800D82E8 10620006 */  beq        $v1, $v0, .Lrace_800D8304
/* 8E6AC 800D82EC 24050005 */   addiu     $a1, $zero, 0x5
/* 8E6B0 800D82F0 8E620028 */  lw         $v0, 0x28($s3)
/* 8E6B4 800D82F4 84440098 */  lh         $a0, 0x98($v0)
/* 8E6B8 800D82F8 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E6BC 800D82FC 0040F809 */  jalr       $v0
/* 8E6C0 800D8300 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D8304:
/* 8E6C4 800D8304 00002021 */  addu       $a0, $zero, $zero
.Lrace_800D8308:
/* 8E6C8 800D8308 2405FFFF */  addiu      $a1, $zero, -0x1
/* 8E6CC 800D830C 03C01821 */  addu       $v1, $fp, $zero
.Lrace_800D8310:
/* 8E6D0 800D8310 AC650004 */  sw         $a1, 0x4($v1)
/* 8E6D4 800D8314 24840001 */  addiu      $a0, $a0, 0x1
/* 8E6D8 800D8318 2C820003 */  sltiu      $v0, $a0, 0x3
/* 8E6DC 800D831C 1440FFFC */  bnez       $v0, .Lrace_800D8310
/* 8E6E0 800D8320 24630004 */   addiu     $v1, $v1, 0x4
/* 8E6E4 800D8324 AFB50020 */  sw         $s5, 0x20($sp)
/* 8E6E8 800D8328 8EA20018 */  lw         $v0, 0x18($s5)
/* 8E6EC 800D832C 3C01800D */  lui        $at, %hi(D_race_800CADC4)
/* 8E6F0 800D8330 C420ADC4 */  lwc1       $f0, %lo(D_race_800CADC4)($at)
/* 8E6F4 800D8334 AFA20024 */  sw         $v0, 0x24($sp)
/* 8E6F8 800D8338 8EA2001C */  lw         $v0, 0x1C($s5)
/* 8E6FC 800D833C 00008821 */  addu       $s1, $zero, $zero
/* 8E700 800D8340 A3A00034 */  sb         $zero, 0x34($sp)
/* 8E704 800D8344 AFA00060 */  sw         $zero, 0x60($sp)
/* 8E708 800D8348 AFA00068 */  sw         $zero, 0x68($sp)
/* 8E70C 800D834C AFA0003C */  sw         $zero, 0x3C($sp)
/* 8E710 800D8350 AFA00040 */  sw         $zero, 0x40($sp)
/* 8E714 800D8354 AFA00044 */  sw         $zero, 0x44($sp)
/* 8E718 800D8358 E7A00048 */  swc1       $f0, 0x48($sp)
/* 8E71C 800D835C AFA0004C */  sw         $zero, 0x4C($sp)
/* 8E720 800D8360 AFA00050 */  sw         $zero, 0x50($sp)
/* 8E724 800D8364 AFA00054 */  sw         $zero, 0x54($sp)
/* 8E728 800D8368 AFA00058 */  sw         $zero, 0x58($sp)
/* 8E72C 800D836C E7A0005C */  swc1       $f0, 0x5C($sp)
/* 8E730 800D8370 AFA0002C */  sw         $zero, 0x2C($sp)
/* 8E734 800D8374 AFA00030 */  sw         $zero, 0x30($sp)
/* 8E738 800D8378 AFA20028 */  sw         $v0, 0x28($sp)
.Lrace_800D837C:
/* 8E73C 800D837C 8E620028 */  lw         $v0, 0x28($s3)
/* 8E740 800D8380 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E744 800D8384 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E748 800D8388 0040F809 */  jalr       $v0
/* 8E74C 800D838C 02642021 */   addu      $a0, $s3, $a0
/* 8E750 800D8390 00401821 */  addu       $v1, $v0, $zero
/* 8E754 800D8394 24020006 */  addiu      $v0, $zero, 0x6
/* 8E758 800D8398 10620092 */  beq        $v1, $v0, .Lrace_800D85E4
/* 8E75C 800D839C 2463FFD9 */   addiu     $v1, $v1, -0x27
/* 8E760 800D83A0 2C62002E */  sltiu      $v0, $v1, 0x2E
/* 8E764 800D83A4 10400087 */  beqz       $v0, Lrace_800D85C4
/* 8E768 800D83A8 00031080 */   sll       $v0, $v1, 2
/* 8E76C 800D83AC 3C08800D */  lui        $t0, %hi(jtbl_race_800CADC8)
/* 8E770 800D83B0 2508ADC8 */  addiu      $t0, $t0, %lo(jtbl_race_800CADC8)
/* 8E774 800D83B4 00481021 */  addu       $v0, $v0, $t0
/* 8E778 800D83B8 8C420000 */  lw         $v0, 0x0($v0)
/* 8E77C 800D83BC 00400008 */  jr         $v0
/* 8E780 800D83C0 00000000 */   nop
glabel Lrace_800D83C4
/* 8E784 800D83C4 8E620028 */  lw         $v0, 0x28($s3)
/* 8E788 800D83C8 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E78C 800D83CC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E790 800D83D0 0040F809 */  jalr       $v0
/* 8E794 800D83D4 02642021 */   addu      $a0, $s3, $a0
/* 8E798 800D83D8 27A40034 */  addiu      $a0, $sp, 0x34
/* 8E79C 800D83DC 26650044 */  addiu      $a1, $s3, 0x44
/* 8E7A0 800D83E0 0C000708 */  jal        func_80001C20
/* 8E7A4 800D83E4 24060008 */   addiu     $a2, $zero, 0x8
/* 8E7A8 800D83E8 080360DF */  j          .Lrace_800D837C
/* 8E7AC 800D83EC 00000000 */   nop
glabel Lrace_800D83F0
/* 8E7B0 800D83F0 080360DF */  j          .Lrace_800D837C
/* 8E7B4 800D83F4 AFB70060 */   sw        $s7, 0x60($sp)
glabel Lrace_800D83F8
/* 8E7B8 800D83F8 080360DF */  j          .Lrace_800D837C
/* 8E7BC 800D83FC AFB70068 */   sw        $s7, 0x68($sp)
glabel Lrace_800D8400
/* 8E7C0 800D8400 0C0025F8 */  jal        func_800097E0
/* 8E7C4 800D8404 02602021 */   addu      $a0, $s3, $zero
/* 8E7C8 800D8408 02602021 */  addu       $a0, $s3, $zero
/* 8E7CC 800D840C 0C0025F8 */  jal        func_800097E0
/* 8E7D0 800D8410 E7A0003C */   swc1      $f0, 0x3C($sp)
/* 8E7D4 800D8414 02602021 */  addu       $a0, $s3, $zero
/* 8E7D8 800D8418 0C0025F8 */  jal        func_800097E0
/* 8E7DC 800D841C E7A00040 */   swc1      $f0, 0x40($sp)
/* 8E7E0 800D8420 8FA800A8 */  lw         $t0, 0xA8($sp)
/* 8E7E4 800D8424 1100FFD5 */  beqz       $t0, .Lrace_800D837C
/* 8E7E8 800D8428 E7A00044 */   swc1      $f0, 0x44($sp)
/* 8E7EC 800D842C C7A00040 */  lwc1       $f0, 0x40($sp)
/* 8E7F0 800D8430 46000007 */  neg.s      $f0, $f0
/* 8E7F4 800D8434 080360DF */  j          .Lrace_800D837C
/* 8E7F8 800D8438 E7A00040 */   swc1      $f0, 0x40($sp)
glabel Lrace_800D843C
/* 8E7FC 800D843C 0C0025F8 */  jal        func_800097E0
/* 8E800 800D8440 02602021 */   addu      $a0, $s3, $zero
/* 8E804 800D8444 02602021 */  addu       $a0, $s3, $zero
/* 8E808 800D8448 0C0025F8 */  jal        func_800097E0
/* 8E80C 800D844C E7A00048 */   swc1      $f0, 0x48($sp)
/* 8E810 800D8450 02602021 */  addu       $a0, $s3, $zero
/* 8E814 800D8454 0C0025F8 */  jal        func_800097E0
/* 8E818 800D8458 E7A0004C */   swc1      $f0, 0x4C($sp)
/* 8E81C 800D845C 02602021 */  addu       $a0, $s3, $zero
/* 8E820 800D8460 0C0025F8 */  jal        func_800097E0
/* 8E824 800D8464 E7A00050 */   swc1      $f0, 0x50($sp)
/* 8E828 800D8468 02602021 */  addu       $a0, $s3, $zero
/* 8E82C 800D846C 0C0025F8 */  jal        func_800097E0
/* 8E830 800D8470 E7A00054 */   swc1      $f0, 0x54($sp)
/* 8E834 800D8474 02602021 */  addu       $a0, $s3, $zero
/* 8E838 800D8478 0C0025F8 */  jal        func_800097E0
/* 8E83C 800D847C E7A00058 */   swc1      $f0, 0x58($sp)
/* 8E840 800D8480 8FA800A8 */  lw         $t0, 0xA8($sp)
/* 8E844 800D8484 1100FFBD */  beqz       $t0, .Lrace_800D837C
/* 8E848 800D8488 E7A0005C */   swc1      $f0, 0x5C($sp)
/* 8E84C 800D848C C7A0004C */  lwc1       $f0, 0x4C($sp)
/* 8E850 800D8490 C7A20058 */  lwc1       $f2, 0x58($sp)
/* 8E854 800D8494 46000007 */  neg.s      $f0, $f0
/* 8E858 800D8498 46001087 */  neg.s      $f2, $f2
/* 8E85C 800D849C E7A0004C */  swc1       $f0, 0x4C($sp)
/* 8E860 800D84A0 080360DF */  j          .Lrace_800D837C
/* 8E864 800D84A4 E7A20058 */   swc1      $f2, 0x58($sp)
glabel Lrace_800D84A8
/* 8E868 800D84A8 080360DF */  j          .Lrace_800D837C
/* 8E86C 800D84AC 24110001 */   addiu     $s1, $zero, 0x1
glabel Lrace_800D84B0
/* 8E870 800D84B0 8E620028 */  lw         $v0, 0x28($s3)
/* 8E874 800D84B4 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E878 800D84B8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E87C 800D84BC 0040F809 */  jalr       $v0
/* 8E880 800D84C0 02642021 */   addu      $a0, $s3, $a0
/* 8E884 800D84C4 02402021 */  addu       $a0, $s2, $zero
/* 8E888 800D84C8 26650044 */  addiu      $a1, $s3, 0x44
/* 8E88C 800D84CC 0C000708 */  jal        func_80001C20
/* 8E890 800D84D0 24060008 */   addiu     $a2, $zero, 0x8
/* 8E894 800D84D4 12200007 */  beqz       $s1, .Lrace_800D84F4
/* 8E898 800D84D8 00000000 */   nop
/* 8E89C 800D84DC 8EA20004 */  lw         $v0, 0x4($s5)
/* 8E8A0 800D84E0 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8E8A4 800D84E4 10600007 */  beqz       $v1, .Lrace_800D8504
/* 8E8A8 800D84E8 244400BC */   addiu     $a0, $v0, 0xBC
/* 8E8AC 800D84EC 08036143 */  j          .Lrace_800D850C
/* 8E8B0 800D84F0 00000000 */   nop
.Lrace_800D84F4:
/* 8E8B4 800D84F4 8EA20000 */  lw         $v0, 0x0($s5)
/* 8E8B8 800D84F8 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8E8BC 800D84FC 14600003 */  bnez       $v1, .Lrace_800D850C
/* 8E8C0 800D8500 244400BC */   addiu     $a0, $v0, 0xBC
.Lrace_800D8504:
/* 8E8C4 800D8504 08036145 */  j          .Lrace_800D8514
/* 8E8C8 800D8508 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D850C:
/* 8E8CC 800D850C 0C016427 */  jal        func_8005909C
/* 8E8D0 800D8510 02402821 */   addu      $a1, $s2, $zero
.Lrace_800D8514:
/* 8E8D4 800D8514 080360DF */  j          .Lrace_800D837C
/* 8E8D8 800D8518 AFA2002C */   sw        $v0, 0x2C($sp)
glabel Lrace_800D851C
/* 8E8DC 800D851C 0C002680 */  jal        func_80009A00
/* 8E8E0 800D8520 02602021 */   addu      $a0, $s3, $zero
/* 8E8E4 800D8524 080360DF */  j          .Lrace_800D837C
/* 8E8E8 800D8528 AFA20030 */   sw        $v0, 0x30($sp)
glabel Lrace_800D852C
/* 8E8EC 800D852C 8E620028 */  lw         $v0, 0x28($s3)
/* 8E8F0 800D8530 844400A0 */  lh         $a0, 0xA0($v0)
/* 8E8F4 800D8534 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8E8F8 800D8538 0040F809 */  jalr       $v0
/* 8E8FC 800D853C 02642021 */   addu      $a0, $s3, $a0
/* 8E900 800D8540 00401821 */  addu       $v1, $v0, $zero
/* 8E904 800D8544 24020036 */  addiu      $v0, $zero, 0x36
/* 8E908 800D8548 1062000C */  beq        $v1, $v0, .Lrace_800D857C
/* 8E90C 800D854C 2C620037 */   sltiu     $v0, $v1, 0x37
/* 8E910 800D8550 10400005 */  beqz       $v0, .Lrace_800D8568
/* 8E914 800D8554 24020034 */   addiu     $v0, $zero, 0x34
/* 8E918 800D8558 1062000A */  beq        $v1, $v0, .Lrace_800D8584
/* 8E91C 800D855C 24100003 */   addiu     $s0, $zero, 0x3
/* 8E920 800D8560 08036165 */  j          .Lrace_800D8594
/* 8E924 800D8564 00000000 */   nop
.Lrace_800D8568:
/* 8E928 800D8568 24020037 */  addiu      $v0, $zero, 0x37
/* 8E92C 800D856C 10620007 */  beq        $v1, $v0, .Lrace_800D858C
/* 8E930 800D8570 24100003 */   addiu     $s0, $zero, 0x3
/* 8E934 800D8574 08036165 */  j          .Lrace_800D8594
/* 8E938 800D8578 00000000 */   nop
.Lrace_800D857C:
/* 8E93C 800D857C 0803616B */  j          .Lrace_800D85AC
/* 8E940 800D8580 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D8584:
/* 8E944 800D8584 0803616B */  j          .Lrace_800D85AC
/* 8E948 800D8588 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800D858C:
/* 8E94C 800D858C 0803616B */  j          .Lrace_800D85AC
/* 8E950 800D8590 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800D8594:
/* 8E954 800D8594 8E620028 */  lw         $v0, 0x28($s3)
/* 8E958 800D8598 00002821 */  addu       $a1, $zero, $zero
/* 8E95C 800D859C 84440098 */  lh         $a0, 0x98($v0)
/* 8E960 800D85A0 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E964 800D85A4 0040F809 */  jalr       $v0
/* 8E968 800D85A8 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D85AC:
/* 8E96C 800D85AC 0C002680 */  jal        func_80009A00
/* 8E970 800D85B0 02602021 */   addu      $a0, $s3, $zero
/* 8E974 800D85B4 00101880 */  sll        $v1, $s0, 2
/* 8E978 800D85B8 03C31821 */  addu       $v1, $fp, $v1
/* 8E97C 800D85BC 080360DF */  j          .Lrace_800D837C
/* 8E980 800D85C0 AC620004 */   sw        $v0, 0x4($v1)
glabel Lrace_800D85C4
/* 8E984 800D85C4 8E620028 */  lw         $v0, 0x28($s3)
/* 8E988 800D85C8 00002821 */  addu       $a1, $zero, $zero
/* 8E98C 800D85CC 84440098 */  lh         $a0, 0x98($v0)
/* 8E990 800D85D0 8C42009C */  lw         $v0, 0x9C($v0)
/* 8E994 800D85D4 0040F809 */  jalr       $v0
/* 8E998 800D85D8 02642021 */   addu      $a0, $s3, $a0
/* 8E99C 800D85DC 080360DF */  j          .Lrace_800D837C
/* 8E9A0 800D85E0 00000000 */   nop
.Lrace_800D85E4:
/* 8E9A4 800D85E4 27A50010 */  addiu      $a1, $sp, 0x10
/* 8E9A8 800D85E8 8EA40068 */  lw         $a0, 0x68($s5)
/* 8E9AC 800D85EC 26D60001 */  addiu      $s6, $s6, 0x1
/* 8E9B0 800D85F0 0C035A6D */  jal        func_race_800D69B4
/* 8E9B4 800D85F4 00942021 */   addu      $a0, $a0, $s4
/* 8E9B8 800D85F8 080360A1 */  j          .Lrace_800D8284
/* 8E9BC 800D85FC 26940064 */   addiu     $s4, $s4, 0x64
.Lrace_800D8600:
/* 8E9C0 800D8600 0C0026F4 */  jal        func_80009BD0
/* 8E9C4 800D8604 24050006 */   addiu     $a1, $zero, 0x6
/* 8E9C8 800D8608 8FBF009C */  lw         $ra, 0x9C($sp)
/* 8E9CC 800D860C 8FBE0098 */  lw         $fp, 0x98($sp)
/* 8E9D0 800D8610 8FB70094 */  lw         $s7, 0x94($sp)
/* 8E9D4 800D8614 8FB60090 */  lw         $s6, 0x90($sp)
/* 8E9D8 800D8618 8FB5008C */  lw         $s5, 0x8C($sp)
/* 8E9DC 800D861C 8FB40088 */  lw         $s4, 0x88($sp)
/* 8E9E0 800D8620 8FB30084 */  lw         $s3, 0x84($sp)
/* 8E9E4 800D8624 8FB20080 */  lw         $s2, 0x80($sp)
/* 8E9E8 800D8628 8FB1007C */  lw         $s1, 0x7C($sp)
/* 8E9EC 800D862C 8FB00078 */  lw         $s0, 0x78($sp)
/* 8E9F0 800D8630 03E00008 */  jr         $ra
/* 8E9F4 800D8634 27BD00A0 */   addiu     $sp, $sp, 0xA0

glabel func_race_800D8638
/* 8E9F8 800D8638 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8E9FC 800D863C AFB00010 */  sw         $s0, 0x10($sp)
/* 8EA00 800D8640 00A08021 */  addu       $s0, $a1, $zero
/* 8EA04 800D8644 AFBF0020 */  sw         $ra, 0x20($sp)
/* 8EA08 800D8648 AFB3001C */  sw         $s3, 0x1C($sp)
/* 8EA0C 800D864C AFB20018 */  sw         $s2, 0x18($sp)
/* 8EA10 800D8650 AFB10014 */  sw         $s1, 0x14($sp)
/* 8EA14 800D8654 8E020028 */  lw         $v0, 0x28($s0)
/* 8EA18 800D8658 00809821 */  addu       $s3, $a0, $zero
/* 8EA1C 800D865C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EA20 800D8660 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EA24 800D8664 0040F809 */  jalr       $v0
/* 8EA28 800D8668 02042021 */   addu      $a0, $s0, $a0
/* 8EA2C 800D866C 24030007 */  addiu      $v1, $zero, 0x7
/* 8EA30 800D8670 10430006 */  beq        $v0, $v1, .Lrace_800D868C
/* 8EA34 800D8674 00602821 */   addu      $a1, $v1, $zero
/* 8EA38 800D8678 8E020028 */  lw         $v0, 0x28($s0)
/* 8EA3C 800D867C 84440098 */  lh         $a0, 0x98($v0)
/* 8EA40 800D8680 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EA44 800D8684 0040F809 */  jalr       $v0
/* 8EA48 800D8688 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D868C:
/* 8EA4C 800D868C 0C002680 */  jal        func_80009A00
/* 8EA50 800D8690 02002021 */   addu      $a0, $s0, $zero
/* 8EA54 800D8694 AE620038 */  sw         $v0, 0x38($s3)
/* 8EA58 800D8698 8E020028 */  lw         $v0, 0x28($s0)
/* 8EA5C 800D869C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EA60 800D86A0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EA64 800D86A4 0040F809 */  jalr       $v0
/* 8EA68 800D86A8 02042021 */   addu      $a0, $s0, $a0
/* 8EA6C 800D86AC 24030008 */  addiu      $v1, $zero, 0x8
/* 8EA70 800D86B0 10430006 */  beq        $v0, $v1, .Lrace_800D86CC
/* 8EA74 800D86B4 00602821 */   addu      $a1, $v1, $zero
/* 8EA78 800D86B8 8E020028 */  lw         $v0, 0x28($s0)
/* 8EA7C 800D86BC 84440098 */  lh         $a0, 0x98($v0)
/* 8EA80 800D86C0 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EA84 800D86C4 0040F809 */  jalr       $v0
/* 8EA88 800D86C8 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D86CC:
/* 8EA8C 800D86CC 8E020028 */  lw         $v0, 0x28($s0)
/* 8EA90 800D86D0 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EA94 800D86D4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EA98 800D86D8 0040F809 */  jalr       $v0
/* 8EA9C 800D86DC 02042021 */   addu      $a0, $s0, $a0
/* 8EAA0 800D86E0 24030005 */  addiu      $v1, $zero, 0x5
/* 8EAA4 800D86E4 10430006 */  beq        $v0, $v1, .Lrace_800D8700
/* 8EAA8 800D86E8 00602821 */   addu      $a1, $v1, $zero
/* 8EAAC 800D86EC 8E020028 */  lw         $v0, 0x28($s0)
/* 8EAB0 800D86F0 84440098 */  lh         $a0, 0x98($v0)
/* 8EAB4 800D86F4 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EAB8 800D86F8 0040F809 */  jalr       $v0
/* 8EABC 800D86FC 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D8700:
/* 8EAC0 800D8700 3C028013 */  lui        $v0, %hi(D_race_80132090)
/* 8EAC4 800D8704 8C442090 */  lw         $a0, %lo(D_race_80132090)($v0)
/* 8EAC8 800D8708 0C01FB65 */  jal        func_8007ED94
/* 8EACC 800D870C 00000000 */   nop
/* 8EAD0 800D8710 8E640038 */  lw         $a0, 0x38($s3)
/* 8EAD4 800D8714 0C00943C */  jal        func_800250F0
/* 8EAD8 800D8718 000420C0 */   sll       $a0, $a0, 3
/* 8EADC 800D871C 0C01FB72 */  jal        func_8007EDC8
/* 8EAE0 800D8720 AE62006C */   sw        $v0, 0x6C($s3)
/* 8EAE4 800D8724 8E62006C */  lw         $v0, 0x6C($s3)
/* 8EAE8 800D8728 14400006 */  bnez       $v0, .Lrace_800D8744
/* 8EAEC 800D872C 3C04800D */   lui       $a0, %hi(D_race_800CAB60)
/* 8EAF0 800D8730 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8EAF4 800D8734 00002821 */  addu       $a1, $zero, $zero
/* 8EAF8 800D8738 00A03021 */  addu       $a2, $a1, $zero
/* 8EAFC 800D873C 0C011ACF */  jal        func_80046B3C
/* 8EB00 800D8740 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800D8744:
/* 8EB04 800D8744 8E620038 */  lw         $v0, 0x38($s3)
/* 8EB08 800D8748 10400045 */  beqz       $v0, .Lrace_800D8860
/* 8EB0C 800D874C 00008821 */   addu      $s1, $zero, $zero
.Lrace_800D8750:
/* 8EB10 800D8750 8E020028 */  lw         $v0, 0x28($s0)
/* 8EB14 800D8754 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EB18 800D8758 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EB1C 800D875C 0040F809 */  jalr       $v0
/* 8EB20 800D8760 02042021 */   addu      $a0, $s0, $a0
/* 8EB24 800D8764 24030027 */  addiu      $v1, $zero, 0x27
/* 8EB28 800D8768 10430006 */  beq        $v0, $v1, .Lrace_800D8784
/* 8EB2C 800D876C 00002821 */   addu      $a1, $zero, $zero
/* 8EB30 800D8770 8E020028 */  lw         $v0, 0x28($s0)
/* 8EB34 800D8774 84440098 */  lh         $a0, 0x98($v0)
/* 8EB38 800D8778 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EB3C 800D877C 0040F809 */  jalr       $v0
/* 8EB40 800D8780 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D8784:
/* 8EB44 800D8784 0C002680 */  jal        func_80009A00
/* 8EB48 800D8788 02002021 */   addu      $a0, $s0, $zero
/* 8EB4C 800D878C 8E63006C */  lw         $v1, 0x6C($s3)
/* 8EB50 800D8790 001190C0 */  sll        $s2, $s1, 3
/* 8EB54 800D8794 02431821 */  addu       $v1, $s2, $v1
/* 8EB58 800D8798 AC620000 */  sw         $v0, 0x0($v1)
/* 8EB5C 800D879C 8E020028 */  lw         $v0, 0x28($s0)
/* 8EB60 800D87A0 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EB64 800D87A4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EB68 800D87A8 0040F809 */  jalr       $v0
/* 8EB6C 800D87AC 02042021 */   addu      $a0, $s0, $a0
/* 8EB70 800D87B0 24030005 */  addiu      $v1, $zero, 0x5
/* 8EB74 800D87B4 10430006 */  beq        $v0, $v1, .Lrace_800D87D0
/* 8EB78 800D87B8 00602821 */   addu      $a1, $v1, $zero
/* 8EB7C 800D87BC 8E020028 */  lw         $v0, 0x28($s0)
/* 8EB80 800D87C0 84440098 */  lh         $a0, 0x98($v0)
/* 8EB84 800D87C4 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EB88 800D87C8 0040F809 */  jalr       $v0
/* 8EB8C 800D87CC 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D87D0:
/* 8EB90 800D87D0 8E020028 */  lw         $v0, 0x28($s0)
/* 8EB94 800D87D4 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EB98 800D87D8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EB9C 800D87DC 0040F809 */  jalr       $v0
/* 8EBA0 800D87E0 02042021 */   addu      $a0, $s0, $a0
/* 8EBA4 800D87E4 24030039 */  addiu      $v1, $zero, 0x39
/* 8EBA8 800D87E8 10430006 */  beq        $v0, $v1, .Lrace_800D8804
/* 8EBAC 800D87EC 00002821 */   addu      $a1, $zero, $zero
/* 8EBB0 800D87F0 8E020028 */  lw         $v0, 0x28($s0)
/* 8EBB4 800D87F4 84440098 */  lh         $a0, 0x98($v0)
/* 8EBB8 800D87F8 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EBBC 800D87FC 0040F809 */  jalr       $v0
/* 8EBC0 800D8800 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D8804:
/* 8EBC4 800D8804 0C002680 */  jal        func_80009A00
/* 8EBC8 800D8808 02002021 */   addu      $a0, $s0, $zero
/* 8EBCC 800D880C 8E63006C */  lw         $v1, 0x6C($s3)
/* 8EBD0 800D8810 02431821 */  addu       $v1, $s2, $v1
/* 8EBD4 800D8814 AC620004 */  sw         $v0, 0x4($v1)
/* 8EBD8 800D8818 8E020028 */  lw         $v0, 0x28($s0)
/* 8EBDC 800D881C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EBE0 800D8820 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EBE4 800D8824 0040F809 */  jalr       $v0
/* 8EBE8 800D8828 02042021 */   addu      $a0, $s0, $a0
/* 8EBEC 800D882C 24030006 */  addiu      $v1, $zero, 0x6
/* 8EBF0 800D8830 10430006 */  beq        $v0, $v1, .Lrace_800D884C
/* 8EBF4 800D8834 00602821 */   addu      $a1, $v1, $zero
/* 8EBF8 800D8838 8E020028 */  lw         $v0, 0x28($s0)
/* 8EBFC 800D883C 84440098 */  lh         $a0, 0x98($v0)
/* 8EC00 800D8840 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EC04 800D8844 0040F809 */  jalr       $v0
/* 8EC08 800D8848 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D884C:
/* 8EC0C 800D884C 8E620038 */  lw         $v0, 0x38($s3)
/* 8EC10 800D8850 26310001 */  addiu      $s1, $s1, 0x1
/* 8EC14 800D8854 0222102B */  sltu       $v0, $s1, $v0
/* 8EC18 800D8858 1440FFBD */  bnez       $v0, .Lrace_800D8750
/* 8EC1C 800D885C 00000000 */   nop
.Lrace_800D8860:
/* 8EC20 800D8860 8E020028 */  lw         $v0, 0x28($s0)
/* 8EC24 800D8864 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EC28 800D8868 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EC2C 800D886C 0040F809 */  jalr       $v0
/* 8EC30 800D8870 02042021 */   addu      $a0, $s0, $a0
/* 8EC34 800D8874 24030006 */  addiu      $v1, $zero, 0x6
/* 8EC38 800D8878 10430006 */  beq        $v0, $v1, .Lrace_800D8894
/* 8EC3C 800D887C 00602821 */   addu      $a1, $v1, $zero
/* 8EC40 800D8880 8E020028 */  lw         $v0, 0x28($s0)
/* 8EC44 800D8884 84440098 */  lh         $a0, 0x98($v0)
/* 8EC48 800D8888 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EC4C 800D888C 0040F809 */  jalr       $v0
/* 8EC50 800D8890 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D8894:
/* 8EC54 800D8894 8FBF0020 */  lw         $ra, 0x20($sp)
/* 8EC58 800D8898 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8EC5C 800D889C 8FB20018 */  lw         $s2, 0x18($sp)
/* 8EC60 800D88A0 8FB10014 */  lw         $s1, 0x14($sp)
/* 8EC64 800D88A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 8EC68 800D88A8 03E00008 */  jr         $ra
/* 8EC6C 800D88AC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800D88B0
/* 8EC70 800D88B0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 8EC74 800D88B4 AFB50054 */  sw         $s5, 0x54($sp)
/* 8EC78 800D88B8 0080A821 */  addu       $s5, $a0, $zero
/* 8EC7C 800D88BC AFB3004C */  sw         $s3, 0x4C($sp)
/* 8EC80 800D88C0 00A09821 */  addu       $s3, $a1, $zero
/* 8EC84 800D88C4 02602021 */  addu       $a0, $s3, $zero
/* 8EC88 800D88C8 AFBF0060 */  sw         $ra, 0x60($sp)
/* 8EC8C 800D88CC AFB7005C */  sw         $s7, 0x5C($sp)
/* 8EC90 800D88D0 AFB60058 */  sw         $s6, 0x58($sp)
/* 8EC94 800D88D4 AFB40050 */  sw         $s4, 0x50($sp)
/* 8EC98 800D88D8 AFB20048 */  sw         $s2, 0x48($sp)
/* 8EC9C 800D88DC AFB10044 */  sw         $s1, 0x44($sp)
/* 8ECA0 800D88E0 0C002723 */  jal        func_80009C8C
/* 8ECA4 800D88E4 AFB00040 */   sw        $s0, 0x40($sp)
/* 8ECA8 800D88E8 3C038013 */  lui        $v1, %hi(D_race_80132090)
/* 8ECAC 800D88EC 8C642090 */  lw         $a0, %lo(D_race_80132090)($v1)
/* 8ECB0 800D88F0 0C01FB65 */  jal        func_8007ED94
/* 8ECB4 800D88F4 AEA2003C */   sw        $v0, 0x3C($s5)
/* 8ECB8 800D88F8 8EB0003C */  lw         $s0, 0x3C($s5)
/* 8ECBC 800D88FC 00102040 */  sll        $a0, $s0, 1
/* 8ECC0 800D8900 00902021 */  addu       $a0, $a0, $s0
/* 8ECC4 800D8904 00042080 */  sll        $a0, $a0, 2
/* 8ECC8 800D8908 00902021 */  addu       $a0, $a0, $s0
/* 8ECCC 800D890C 00042080 */  sll        $a0, $a0, 2
/* 8ECD0 800D8910 0C00943C */  jal        func_800250F0
/* 8ECD4 800D8914 24840008 */   addiu     $a0, $a0, 0x8
/* 8ECD8 800D8918 24420008 */  addiu      $v0, $v0, 0x8
/* 8ECDC 800D891C 0040A021 */  addu       $s4, $v0, $zero
/* 8ECE0 800D8920 02809021 */  addu       $s2, $s4, $zero
/* 8ECE4 800D8924 2611FFFF */  addiu      $s1, $s0, -0x1
/* 8ECE8 800D8928 06200007 */  bltz       $s1, .Lrace_800D8948
/* 8ECEC 800D892C AE90FFF8 */   sw        $s0, -0x8($s4)
/* 8ECF0 800D8930 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D8934:
/* 8ECF4 800D8934 0C035624 */  jal        func_race_800D5890
/* 8ECF8 800D8938 02402021 */   addu      $a0, $s2, $zero
/* 8ECFC 800D893C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 8ED00 800D8940 1630FFFC */  bne        $s1, $s0, .Lrace_800D8934
/* 8ED04 800D8944 26520034 */   addiu     $s2, $s2, 0x34
.Lrace_800D8948:
/* 8ED08 800D8948 0C01FB72 */  jal        func_8007EDC8
/* 8ED0C 800D894C AEB40070 */   sw        $s4, 0x70($s5)
/* 8ED10 800D8950 8EA20070 */  lw         $v0, 0x70($s5)
/* 8ED14 800D8954 14400008 */  bnez       $v0, .Lrace_800D8978
/* 8ED18 800D8958 00009021 */   addu      $s2, $zero, $zero
/* 8ED1C 800D895C 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8ED20 800D8960 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8ED24 800D8964 00002821 */  addu       $a1, $zero, $zero
/* 8ED28 800D8968 00A03021 */  addu       $a2, $a1, $zero
/* 8ED2C 800D896C 0C011ACF */  jal        func_80046B3C
/* 8ED30 800D8970 00A03821 */   addu      $a3, $a1, $zero
/* 8ED34 800D8974 00009021 */  addu       $s2, $zero, $zero
.Lrace_800D8978:
/* 8ED38 800D8978 27B40010 */  addiu      $s4, $sp, 0x10
/* 8ED3C 800D897C 2417FFFF */  addiu      $s7, $zero, -0x1
/* 8ED40 800D8980 3C02800D */  lui        $v0, %hi(jtbl_race_800CAE80)
/* 8ED44 800D8984 2456AE80 */  addiu      $s6, $v0, %lo(jtbl_race_800CAE80)
/* 8ED48 800D8988 02408821 */  addu       $s1, $s2, $zero
.Lrace_800D898C:
/* 8ED4C 800D898C 8EA2003C */  lw         $v0, 0x3C($s5)
/* 8ED50 800D8990 0242102B */  sltu       $v0, $s2, $v0
/* 8ED54 800D8994 1040008F */  beqz       $v0, .Lrace_800D8BD4
/* 8ED58 800D8998 02602021 */   addu      $a0, $s3, $zero
/* 8ED5C 800D899C 0C0026F4 */  jal        func_80009BD0
/* 8ED60 800D89A0 24050027 */   addiu     $a1, $zero, 0x27
/* 8ED64 800D89A4 0C002680 */  jal        func_80009A00
/* 8ED68 800D89A8 02602021 */   addu      $a0, $s3, $zero
/* 8ED6C 800D89AC AFA20010 */  sw         $v0, 0x10($sp)
/* 8ED70 800D89B0 8E620028 */  lw         $v0, 0x28($s3)
/* 8ED74 800D89B4 844400A0 */  lh         $a0, 0xA0($v0)
/* 8ED78 800D89B8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8ED7C 800D89BC 0040F809 */  jalr       $v0
/* 8ED80 800D89C0 02642021 */   addu      $a0, $s3, $a0
/* 8ED84 800D89C4 00401821 */  addu       $v1, $v0, $zero
/* 8ED88 800D89C8 2402003C */  addiu      $v0, $zero, 0x3C
/* 8ED8C 800D89CC 14620008 */  bne        $v1, $v0, .Lrace_800D89F0
/* 8ED90 800D89D0 AFA00034 */   sw        $zero, 0x34($sp)
/* 8ED94 800D89D4 24020001 */  addiu      $v0, $zero, 0x1
/* 8ED98 800D89D8 AFA20034 */  sw         $v0, 0x34($sp)
/* 8ED9C 800D89DC 02602021 */  addu       $a0, $s3, $zero
/* 8EDA0 800D89E0 0C0026F4 */  jal        func_80009BD0
/* 8EDA4 800D89E4 24050005 */   addiu     $a1, $zero, 0x5
/* 8EDA8 800D89E8 08036285 */  j          .Lrace_800D8A14
/* 8EDAC 800D89EC 00002021 */   addu      $a0, $zero, $zero
.Lrace_800D89F0:
/* 8EDB0 800D89F0 24020005 */  addiu      $v0, $zero, 0x5
/* 8EDB4 800D89F4 10620006 */  beq        $v1, $v0, .Lrace_800D8A10
/* 8EDB8 800D89F8 24050005 */   addiu     $a1, $zero, 0x5
/* 8EDBC 800D89FC 8E620028 */  lw         $v0, 0x28($s3)
/* 8EDC0 800D8A00 84440098 */  lh         $a0, 0x98($v0)
/* 8EDC4 800D8A04 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EDC8 800D8A08 0040F809 */  jalr       $v0
/* 8EDCC 800D8A0C 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D8A10:
/* 8EDD0 800D8A10 00002021 */  addu       $a0, $zero, $zero
.Lrace_800D8A14:
/* 8EDD4 800D8A14 02801821 */  addu       $v1, $s4, $zero
.Lrace_800D8A18:
/* 8EDD8 800D8A18 AC770004 */  sw         $s7, 0x4($v1)
/* 8EDDC 800D8A1C 24840001 */  addiu      $a0, $a0, 0x1
/* 8EDE0 800D8A20 2C820003 */  sltiu      $v0, $a0, 0x3
/* 8EDE4 800D8A24 1440FFFC */  bnez       $v0, .Lrace_800D8A18
/* 8EDE8 800D8A28 24630004 */   addiu     $v1, $v1, 0x4
/* 8EDEC 800D8A2C AFB50020 */  sw         $s5, 0x20($sp)
/* 8EDF0 800D8A30 8EA20020 */  lw         $v0, 0x20($s5)
/* 8EDF4 800D8A34 A3A00028 */  sb         $zero, 0x28($sp)
/* 8EDF8 800D8A38 AFA00030 */  sw         $zero, 0x30($sp)
/* 8EDFC 800D8A3C A3A00038 */  sb         $zero, 0x38($sp)
/* 8EE00 800D8A40 AFA20024 */  sw         $v0, 0x24($sp)
.Lrace_800D8A44:
/* 8EE04 800D8A44 8E620028 */  lw         $v0, 0x28($s3)
/* 8EE08 800D8A48 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EE0C 800D8A4C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EE10 800D8A50 0040F809 */  jalr       $v0
/* 8EE14 800D8A54 02642021 */   addu      $a0, $s3, $a0
/* 8EE18 800D8A58 00401821 */  addu       $v1, $v0, $zero
/* 8EE1C 800D8A5C 24020006 */  addiu      $v0, $zero, 0x6
/* 8EE20 800D8A60 10620055 */  beq        $v1, $v0, .Lrace_800D8BB8
/* 8EE24 800D8A64 2463FFD9 */   addiu     $v1, $v1, -0x27
/* 8EE28 800D8A68 2C620022 */  sltiu      $v0, $v1, 0x22
/* 8EE2C 800D8A6C 1040004A */  beqz       $v0, Lrace_800D8B98
/* 8EE30 800D8A70 00031080 */   sll       $v0, $v1, 2
/* 8EE34 800D8A74 00561021 */  addu       $v0, $v0, $s6
/* 8EE38 800D8A78 8C420000 */  lw         $v0, 0x0($v0)
/* 8EE3C 800D8A7C 00400008 */  jr         $v0
/* 8EE40 800D8A80 00000000 */   nop
glabel Lrace_800D8A84
/* 8EE44 800D8A84 8E620028 */  lw         $v0, 0x28($s3)
/* 8EE48 800D8A88 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EE4C 800D8A8C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EE50 800D8A90 0040F809 */  jalr       $v0
/* 8EE54 800D8A94 02642021 */   addu      $a0, $s3, $a0
/* 8EE58 800D8A98 27A40028 */  addiu      $a0, $sp, 0x28
/* 8EE5C 800D8A9C 26650044 */  addiu      $a1, $s3, 0x44
/* 8EE60 800D8AA0 0C000708 */  jal        func_80001C20
/* 8EE64 800D8AA4 24060008 */   addiu     $a2, $zero, 0x8
/* 8EE68 800D8AA8 08036291 */  j          .Lrace_800D8A44
/* 8EE6C 800D8AAC 00000000 */   nop
glabel Lrace_800D8AB0
/* 8EE70 800D8AB0 0C002680 */  jal        func_80009A00
/* 8EE74 800D8AB4 02602021 */   addu      $a0, $s3, $zero
/* 8EE78 800D8AB8 08036291 */  j          .Lrace_800D8A44
/* 8EE7C 800D8ABC AFA20030 */   sw        $v0, 0x30($sp)
glabel Lrace_800D8AC0
/* 8EE80 800D8AC0 93A20038 */  lbu        $v0, 0x38($sp)
/* 8EE84 800D8AC4 34420002 */  ori        $v0, $v0, 0x2
/* 8EE88 800D8AC8 08036291 */  j          .Lrace_800D8A44
/* 8EE8C 800D8ACC A3A20038 */   sb        $v0, 0x38($sp)
glabel Lrace_800D8AD0
/* 8EE90 800D8AD0 93A20038 */  lbu        $v0, 0x38($sp)
/* 8EE94 800D8AD4 34420001 */  ori        $v0, $v0, 0x1
/* 8EE98 800D8AD8 08036291 */  j          .Lrace_800D8A44
/* 8EE9C 800D8ADC A3A20038 */   sb        $v0, 0x38($sp)
glabel Lrace_800D8AE0
/* 8EEA0 800D8AE0 93A20038 */  lbu        $v0, 0x38($sp)
/* 8EEA4 800D8AE4 34420008 */  ori        $v0, $v0, 0x8
/* 8EEA8 800D8AE8 08036291 */  j          .Lrace_800D8A44
/* 8EEAC 800D8AEC A3A20038 */   sb        $v0, 0x38($sp)
glabel Lrace_800D8AF0
/* 8EEB0 800D8AF0 93A20038 */  lbu        $v0, 0x38($sp)
/* 8EEB4 800D8AF4 34420004 */  ori        $v0, $v0, 0x4
/* 8EEB8 800D8AF8 08036291 */  j          .Lrace_800D8A44
/* 8EEBC 800D8AFC A3A20038 */   sb        $v0, 0x38($sp)
glabel Lrace_800D8B00
/* 8EEC0 800D8B00 8E620028 */  lw         $v0, 0x28($s3)
/* 8EEC4 800D8B04 844400A0 */  lh         $a0, 0xA0($v0)
/* 8EEC8 800D8B08 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8EECC 800D8B0C 0040F809 */  jalr       $v0
/* 8EED0 800D8B10 02642021 */   addu      $a0, $s3, $a0
/* 8EED4 800D8B14 00401821 */  addu       $v1, $v0, $zero
/* 8EED8 800D8B18 24020036 */  addiu      $v0, $zero, 0x36
/* 8EEDC 800D8B1C 1062000C */  beq        $v1, $v0, .Lrace_800D8B50
/* 8EEE0 800D8B20 2C620037 */   sltiu     $v0, $v1, 0x37
/* 8EEE4 800D8B24 10400005 */  beqz       $v0, .Lrace_800D8B3C
/* 8EEE8 800D8B28 24020034 */   addiu     $v0, $zero, 0x34
/* 8EEEC 800D8B2C 1062000A */  beq        $v1, $v0, .Lrace_800D8B58
/* 8EEF0 800D8B30 24100003 */   addiu     $s0, $zero, 0x3
/* 8EEF4 800D8B34 080362DA */  j          .Lrace_800D8B68
/* 8EEF8 800D8B38 00000000 */   nop
.Lrace_800D8B3C:
/* 8EEFC 800D8B3C 24020037 */  addiu      $v0, $zero, 0x37
/* 8EF00 800D8B40 10620007 */  beq        $v1, $v0, .Lrace_800D8B60
/* 8EF04 800D8B44 24100003 */   addiu     $s0, $zero, 0x3
/* 8EF08 800D8B48 080362DA */  j          .Lrace_800D8B68
/* 8EF0C 800D8B4C 00000000 */   nop
.Lrace_800D8B50:
/* 8EF10 800D8B50 080362E0 */  j          .Lrace_800D8B80
/* 8EF14 800D8B54 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D8B58:
/* 8EF18 800D8B58 080362E0 */  j          .Lrace_800D8B80
/* 8EF1C 800D8B5C 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800D8B60:
/* 8EF20 800D8B60 080362E0 */  j          .Lrace_800D8B80
/* 8EF24 800D8B64 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800D8B68:
/* 8EF28 800D8B68 8E620028 */  lw         $v0, 0x28($s3)
/* 8EF2C 800D8B6C 00002821 */  addu       $a1, $zero, $zero
/* 8EF30 800D8B70 84440098 */  lh         $a0, 0x98($v0)
/* 8EF34 800D8B74 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EF38 800D8B78 0040F809 */  jalr       $v0
/* 8EF3C 800D8B7C 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D8B80:
/* 8EF40 800D8B80 0C002680 */  jal        func_80009A00
/* 8EF44 800D8B84 02602021 */   addu      $a0, $s3, $zero
/* 8EF48 800D8B88 00101880 */  sll        $v1, $s0, 2
/* 8EF4C 800D8B8C 02831821 */  addu       $v1, $s4, $v1
/* 8EF50 800D8B90 08036291 */  j          .Lrace_800D8A44
/* 8EF54 800D8B94 AC620004 */   sw        $v0, 0x4($v1)
glabel Lrace_800D8B98
/* 8EF58 800D8B98 8E620028 */  lw         $v0, 0x28($s3)
/* 8EF5C 800D8B9C 00002821 */  addu       $a1, $zero, $zero
/* 8EF60 800D8BA0 84440098 */  lh         $a0, 0x98($v0)
/* 8EF64 800D8BA4 8C42009C */  lw         $v0, 0x9C($v0)
/* 8EF68 800D8BA8 0040F809 */  jalr       $v0
/* 8EF6C 800D8BAC 02642021 */   addu      $a0, $s3, $a0
/* 8EF70 800D8BB0 08036291 */  j          .Lrace_800D8A44
/* 8EF74 800D8BB4 00000000 */   nop
.Lrace_800D8BB8:
/* 8EF78 800D8BB8 27A50010 */  addiu      $a1, $sp, 0x10
/* 8EF7C 800D8BBC 8EA40070 */  lw         $a0, 0x70($s5)
/* 8EF80 800D8BC0 26520001 */  addiu      $s2, $s2, 0x1
/* 8EF84 800D8BC4 0C03564B */  jal        func_race_800D592C
/* 8EF88 800D8BC8 00912021 */   addu      $a0, $a0, $s1
/* 8EF8C 800D8BCC 08036263 */  j          .Lrace_800D898C
/* 8EF90 800D8BD0 26310034 */   addiu     $s1, $s1, 0x34
.Lrace_800D8BD4:
/* 8EF94 800D8BD4 0C0026F4 */  jal        func_80009BD0
/* 8EF98 800D8BD8 24050006 */   addiu     $a1, $zero, 0x6
/* 8EF9C 800D8BDC 8FBF0060 */  lw         $ra, 0x60($sp)
/* 8EFA0 800D8BE0 8FB7005C */  lw         $s7, 0x5C($sp)
/* 8EFA4 800D8BE4 8FB60058 */  lw         $s6, 0x58($sp)
/* 8EFA8 800D8BE8 8FB50054 */  lw         $s5, 0x54($sp)
/* 8EFAC 800D8BEC 8FB40050 */  lw         $s4, 0x50($sp)
/* 8EFB0 800D8BF0 8FB3004C */  lw         $s3, 0x4C($sp)
/* 8EFB4 800D8BF4 8FB20048 */  lw         $s2, 0x48($sp)
/* 8EFB8 800D8BF8 8FB10044 */  lw         $s1, 0x44($sp)
/* 8EFBC 800D8BFC 8FB00040 */  lw         $s0, 0x40($sp)
/* 8EFC0 800D8C00 03E00008 */  jr         $ra
/* 8EFC4 800D8C04 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_800D8C08
/* 8EFC8 800D8C08 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 8EFCC 800D8C0C AFB5006C */  sw         $s5, 0x6C($sp)
/* 8EFD0 800D8C10 0080A821 */  addu       $s5, $a0, $zero
/* 8EFD4 800D8C14 AFB30064 */  sw         $s3, 0x64($sp)
/* 8EFD8 800D8C18 00A09821 */  addu       $s3, $a1, $zero
/* 8EFDC 800D8C1C 02602021 */  addu       $a0, $s3, $zero
/* 8EFE0 800D8C20 AFBF007C */  sw         $ra, 0x7C($sp)
/* 8EFE4 800D8C24 AFBE0078 */  sw         $fp, 0x78($sp)
/* 8EFE8 800D8C28 AFB70074 */  sw         $s7, 0x74($sp)
/* 8EFEC 800D8C2C AFB60070 */  sw         $s6, 0x70($sp)
/* 8EFF0 800D8C30 AFB40068 */  sw         $s4, 0x68($sp)
/* 8EFF4 800D8C34 AFB20060 */  sw         $s2, 0x60($sp)
/* 8EFF8 800D8C38 AFB1005C */  sw         $s1, 0x5C($sp)
/* 8EFFC 800D8C3C 0C002723 */  jal        func_80009C8C
/* 8F000 800D8C40 AFB00058 */   sw        $s0, 0x58($sp)
/* 8F004 800D8C44 3C038013 */  lui        $v1, %hi(D_race_80132090)
/* 8F008 800D8C48 8C642090 */  lw         $a0, %lo(D_race_80132090)($v1)
/* 8F00C 800D8C4C 0C01FB65 */  jal        func_8007ED94
/* 8F010 800D8C50 AEA20044 */   sw        $v0, 0x44($s5)
/* 8F014 800D8C54 8EB00044 */  lw         $s0, 0x44($s5)
/* 8F018 800D8C58 001020C0 */  sll        $a0, $s0, 3
/* 8F01C 800D8C5C 00902021 */  addu       $a0, $a0, $s0
/* 8F020 800D8C60 000420C0 */  sll        $a0, $a0, 3
/* 8F024 800D8C64 0C00943C */  jal        func_800250F0
/* 8F028 800D8C68 24840008 */   addiu     $a0, $a0, 0x8
/* 8F02C 800D8C6C 24420008 */  addiu      $v0, $v0, 0x8
/* 8F030 800D8C70 0040A021 */  addu       $s4, $v0, $zero
/* 8F034 800D8C74 02809021 */  addu       $s2, $s4, $zero
/* 8F038 800D8C78 2611FFFF */  addiu      $s1, $s0, -0x1
/* 8F03C 800D8C7C 06200007 */  bltz       $s1, .Lrace_800D8C9C
/* 8F040 800D8C80 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 8F044 800D8C84 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D8C88:
/* 8F048 800D8C88 0C037F40 */  jal        func_race_800DFD00
/* 8F04C 800D8C8C 02402021 */   addu      $a0, $s2, $zero
/* 8F050 800D8C90 2631FFFF */  addiu      $s1, $s1, -0x1
/* 8F054 800D8C94 1630FFFC */  bne        $s1, $s0, .Lrace_800D8C88
/* 8F058 800D8C98 26520048 */   addiu     $s2, $s2, 0x48
.Lrace_800D8C9C:
/* 8F05C 800D8C9C 0C01FB72 */  jal        func_8007EDC8
/* 8F060 800D8CA0 AEB4007C */   sw        $s4, 0x7C($s5)
/* 8F064 800D8CA4 8EA2007C */  lw         $v0, 0x7C($s5)
/* 8F068 800D8CA8 14400008 */  bnez       $v0, .Lrace_800D8CCC
/* 8F06C 800D8CAC 0000A021 */   addu      $s4, $zero, $zero
/* 8F070 800D8CB0 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8F074 800D8CB4 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8F078 800D8CB8 00002821 */  addu       $a1, $zero, $zero
/* 8F07C 800D8CBC 00A03021 */  addu       $a2, $a1, $zero
/* 8F080 800D8CC0 0C011ACF */  jal        func_80046B3C
/* 8F084 800D8CC4 00A03821 */   addu      $a3, $a1, $zero
/* 8F088 800D8CC8 0000A021 */  addu       $s4, $zero, $zero
.Lrace_800D8CCC:
/* 8F08C 800D8CCC 24170005 */  addiu      $s7, $zero, 0x5
/* 8F090 800D8CD0 27B60010 */  addiu      $s6, $sp, 0x10
/* 8F094 800D8CD4 3C02800D */  lui        $v0, %hi(jtbl_race_800CAF08)
/* 8F098 800D8CD8 245EAF08 */  addiu      $fp, $v0, %lo(jtbl_race_800CAF08)
/* 8F09C 800D8CDC 27B20050 */  addiu      $s2, $sp, 0x50
/* 8F0A0 800D8CE0 02808821 */  addu       $s1, $s4, $zero
.Lrace_800D8CE4:
/* 8F0A4 800D8CE4 8EA20044 */  lw         $v0, 0x44($s5)
/* 8F0A8 800D8CE8 0282102B */  sltu       $v0, $s4, $v0
/* 8F0AC 800D8CEC 104000B4 */  beqz       $v0, .Lrace_800D8FC0
/* 8F0B0 800D8CF0 02602021 */   addu      $a0, $s3, $zero
/* 8F0B4 800D8CF4 0C0026F4 */  jal        func_80009BD0
/* 8F0B8 800D8CF8 24050027 */   addiu     $a1, $zero, 0x27
/* 8F0BC 800D8CFC 0C002680 */  jal        func_80009A00
/* 8F0C0 800D8D00 02602021 */   addu      $a0, $s3, $zero
/* 8F0C4 800D8D04 AFA20010 */  sw         $v0, 0x10($sp)
/* 8F0C8 800D8D08 8E620028 */  lw         $v0, 0x28($s3)
/* 8F0CC 800D8D0C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F0D0 800D8D10 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F0D4 800D8D14 0040F809 */  jalr       $v0
/* 8F0D8 800D8D18 02642021 */   addu      $a0, $s3, $a0
/* 8F0DC 800D8D1C 00401821 */  addu       $v1, $v0, $zero
/* 8F0E0 800D8D20 2402003C */  addiu      $v0, $zero, 0x3C
/* 8F0E4 800D8D24 14620007 */  bne        $v1, $v0, .Lrace_800D8D44
/* 8F0E8 800D8D28 AFA00024 */   sw        $zero, 0x24($sp)
/* 8F0EC 800D8D2C AFB70024 */  sw         $s7, 0x24($sp)
/* 8F0F0 800D8D30 02602021 */  addu       $a0, $s3, $zero
/* 8F0F4 800D8D34 0C0026F4 */  jal        func_80009BD0
/* 8F0F8 800D8D38 24050005 */   addiu     $a1, $zero, 0x5
/* 8F0FC 800D8D3C 08036359 */  j          .Lrace_800D8D64
/* 8F100 800D8D40 00002021 */   addu      $a0, $zero, $zero
.Lrace_800D8D44:
/* 8F104 800D8D44 10770006 */  beq        $v1, $s7, .Lrace_800D8D60
/* 8F108 800D8D48 24050005 */   addiu     $a1, $zero, 0x5
/* 8F10C 800D8D4C 8E620028 */  lw         $v0, 0x28($s3)
/* 8F110 800D8D50 84440098 */  lh         $a0, 0x98($v0)
/* 8F114 800D8D54 8C42009C */  lw         $v0, 0x9C($v0)
/* 8F118 800D8D58 0040F809 */  jalr       $v0
/* 8F11C 800D8D5C 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D8D60:
/* 8F120 800D8D60 00002021 */  addu       $a0, $zero, $zero
.Lrace_800D8D64:
/* 8F124 800D8D64 2405FFFF */  addiu      $a1, $zero, -0x1
/* 8F128 800D8D68 02C01821 */  addu       $v1, $s6, $zero
.Lrace_800D8D6C:
/* 8F12C 800D8D6C AC650004 */  sw         $a1, 0x4($v1)
/* 8F130 800D8D70 24840001 */  addiu      $a0, $a0, 0x1
/* 8F134 800D8D74 2C820003 */  sltiu      $v0, $a0, 0x3
/* 8F138 800D8D78 1440FFFC */  bnez       $v0, .Lrace_800D8D6C
/* 8F13C 800D8D7C 24630004 */   addiu     $v1, $v1, 0x4
/* 8F140 800D8D80 AFB50020 */  sw         $s5, 0x20($sp)
/* 8F144 800D8D84 AFA00048 */  sw         $zero, 0x48($sp)
.Lrace_800D8D88:
/* 8F148 800D8D88 8E620028 */  lw         $v0, 0x28($s3)
/* 8F14C 800D8D8C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F150 800D8D90 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F154 800D8D94 0040F809 */  jalr       $v0
/* 8F158 800D8D98 02642021 */   addu      $a0, $s3, $a0
/* 8F15C 800D8D9C 00401821 */  addu       $v1, $v0, $zero
/* 8F160 800D8DA0 24020006 */  addiu      $v0, $zero, 0x6
/* 8F164 800D8DA4 1062007F */  beq        $v1, $v0, .Lrace_800D8FA4
/* 8F168 800D8DA8 2463FFD9 */   addiu     $v1, $v1, -0x27
/* 8F16C 800D8DAC 2C62002A */  sltiu      $v0, $v1, 0x2A
/* 8F170 800D8DB0 10400074 */  beqz       $v0, Lrace_800D8F84
/* 8F174 800D8DB4 00031080 */   sll       $v0, $v1, 2
/* 8F178 800D8DB8 005E1021 */  addu       $v0, $v0, $fp
/* 8F17C 800D8DBC 8C420000 */  lw         $v0, 0x0($v0)
/* 8F180 800D8DC0 00400008 */  jr         $v0
/* 8F184 800D8DC4 00000000 */   nop
glabel Lrace_800D8DC8
/* 8F188 800D8DC8 8E620028 */  lw         $v0, 0x28($s3)
/* 8F18C 800D8DCC 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F190 800D8DD0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F194 800D8DD4 0040F809 */  jalr       $v0
/* 8F198 800D8DD8 02642021 */   addu      $a0, $s3, $a0
/* 8F19C 800D8DDC 02402021 */  addu       $a0, $s2, $zero
/* 8F1A0 800D8DE0 26650044 */  addiu      $a1, $s3, 0x44
/* 8F1A4 800D8DE4 0C000708 */  jal        func_80001C20
/* 8F1A8 800D8DE8 24060008 */   addiu     $a2, $zero, 0x8
/* 8F1AC 800D8DEC 8EA20000 */  lw         $v0, 0x0($s5)
/* 8F1B0 800D8DF0 8C4300B0 */  lw         $v1, 0xB0($v0)
/* 8F1B4 800D8DF4 14600003 */  bnez       $v1, .Lrace_800D8E04
/* 8F1B8 800D8DF8 244400B0 */   addiu     $a0, $v0, 0xB0
/* 8F1BC 800D8DFC 08036383 */  j          .Lrace_800D8E0C
/* 8F1C0 800D8E00 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D8E04:
/* 8F1C4 800D8E04 0C016427 */  jal        func_8005909C
/* 8F1C8 800D8E08 02402821 */   addu      $a1, $s2, $zero
.Lrace_800D8E0C:
/* 8F1CC 800D8E0C 1440FFDE */  bnez       $v0, .Lrace_800D8D88
/* 8F1D0 800D8E10 AFA20048 */   sw        $v0, 0x48($sp)
/* 8F1D4 800D8E14 8EA20000 */  lw         $v0, 0x0($s5)
/* 8F1D8 800D8E18 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8F1DC 800D8E1C 14600003 */  bnez       $v1, .Lrace_800D8E2C
/* 8F1E0 800D8E20 244400BC */   addiu     $a0, $v0, 0xBC
/* 8F1E4 800D8E24 0803638D */  j          .Lrace_800D8E34
/* 8F1E8 800D8E28 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D8E2C:
/* 8F1EC 800D8E2C 0C016427 */  jal        func_8005909C
/* 8F1F0 800D8E30 27A50050 */   addiu     $a1, $sp, 0x50
.Lrace_800D8E34:
/* 8F1F4 800D8E34 1440FFD4 */  bnez       $v0, .Lrace_800D8D88
/* 8F1F8 800D8E38 AFA20048 */   sw        $v0, 0x48($sp)
/* 8F1FC 800D8E3C 8EA20000 */  lw         $v0, 0x0($s5)
/* 8F200 800D8E40 8C4300C8 */  lw         $v1, 0xC8($v0)
/* 8F204 800D8E44 14600003 */  bnez       $v1, .Lrace_800D8E54
/* 8F208 800D8E48 244400C8 */   addiu     $a0, $v0, 0xC8
/* 8F20C 800D8E4C 08036397 */  j          .Lrace_800D8E5C
/* 8F210 800D8E50 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D8E54:
/* 8F214 800D8E54 0C016427 */  jal        func_8005909C
/* 8F218 800D8E58 27A50050 */   addiu     $a1, $sp, 0x50
.Lrace_800D8E5C:
/* 8F21C 800D8E5C 08036362 */  j          .Lrace_800D8D88
/* 8F220 800D8E60 AFA20048 */   sw        $v0, 0x48($sp)
glabel Lrace_800D8E64
/* 8F224 800D8E64 0C002680 */  jal        func_80009A00
/* 8F228 800D8E68 02602021 */   addu      $a0, $s3, $zero
/* 8F22C 800D8E6C 02602021 */  addu       $a0, $s3, $zero
/* 8F230 800D8E70 0C002680 */  jal        func_80009A00
/* 8F234 800D8E74 AFA20028 */   sw        $v0, 0x28($sp)
/* 8F238 800D8E78 02602021 */  addu       $a0, $s3, $zero
/* 8F23C 800D8E7C 0C002680 */  jal        func_80009A00
/* 8F240 800D8E80 AFA2002C */   sw        $v0, 0x2C($sp)
/* 8F244 800D8E84 02602021 */  addu       $a0, $s3, $zero
/* 8F248 800D8E88 0C002680 */  jal        func_80009A00
/* 8F24C 800D8E8C AFA20030 */   sw        $v0, 0x30($sp)
/* 8F250 800D8E90 08036362 */  j          .Lrace_800D8D88
/* 8F254 800D8E94 AFA20034 */   sw        $v0, 0x34($sp)
glabel Lrace_800D8E98
/* 8F258 800D8E98 0C002680 */  jal        func_80009A00
/* 8F25C 800D8E9C 02602021 */   addu      $a0, $s3, $zero
/* 8F260 800D8EA0 02602021 */  addu       $a0, $s3, $zero
/* 8F264 800D8EA4 0C002680 */  jal        func_80009A00
/* 8F268 800D8EA8 AFA20038 */   sw        $v0, 0x38($sp)
/* 8F26C 800D8EAC 02602021 */  addu       $a0, $s3, $zero
/* 8F270 800D8EB0 0C002680 */  jal        func_80009A00
/* 8F274 800D8EB4 AFA2003C */   sw        $v0, 0x3C($sp)
/* 8F278 800D8EB8 02602021 */  addu       $a0, $s3, $zero
/* 8F27C 800D8EBC 0C002680 */  jal        func_80009A00
/* 8F280 800D8EC0 AFA20040 */   sw        $v0, 0x40($sp)
/* 8F284 800D8EC4 08036362 */  j          .Lrace_800D8D88
/* 8F288 800D8EC8 AFA20044 */   sw        $v0, 0x44($sp)
glabel Lrace_800D8ECC
/* 8F28C 800D8ECC 8FA20024 */  lw         $v0, 0x24($sp)
/* 8F290 800D8ED0 34420002 */  ori        $v0, $v0, 0x2
/* 8F294 800D8ED4 08036362 */  j          .Lrace_800D8D88
/* 8F298 800D8ED8 AFA20024 */   sw        $v0, 0x24($sp)
glabel Lrace_800D8EDC
/* 8F29C 800D8EDC 8FA20024 */  lw         $v0, 0x24($sp)
/* 8F2A0 800D8EE0 34420004 */  ori        $v0, $v0, 0x4
/* 8F2A4 800D8EE4 08036362 */  j          .Lrace_800D8D88
/* 8F2A8 800D8EE8 AFA20024 */   sw        $v0, 0x24($sp)
glabel Lrace_800D8EEC
/* 8F2AC 800D8EEC 8E620028 */  lw         $v0, 0x28($s3)
/* 8F2B0 800D8EF0 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F2B4 800D8EF4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F2B8 800D8EF8 0040F809 */  jalr       $v0
/* 8F2BC 800D8EFC 02642021 */   addu      $a0, $s3, $a0
/* 8F2C0 800D8F00 00401821 */  addu       $v1, $v0, $zero
/* 8F2C4 800D8F04 24020036 */  addiu      $v0, $zero, 0x36
/* 8F2C8 800D8F08 1062000C */  beq        $v1, $v0, .Lrace_800D8F3C
/* 8F2CC 800D8F0C 2C620037 */   sltiu     $v0, $v1, 0x37
/* 8F2D0 800D8F10 10400005 */  beqz       $v0, .Lrace_800D8F28
/* 8F2D4 800D8F14 24020034 */   addiu     $v0, $zero, 0x34
/* 8F2D8 800D8F18 1062000A */  beq        $v1, $v0, .Lrace_800D8F44
/* 8F2DC 800D8F1C 24100003 */   addiu     $s0, $zero, 0x3
/* 8F2E0 800D8F20 080363D5 */  j          .Lrace_800D8F54
/* 8F2E4 800D8F24 00000000 */   nop
.Lrace_800D8F28:
/* 8F2E8 800D8F28 24020037 */  addiu      $v0, $zero, 0x37
/* 8F2EC 800D8F2C 10620007 */  beq        $v1, $v0, .Lrace_800D8F4C
/* 8F2F0 800D8F30 24100003 */   addiu     $s0, $zero, 0x3
/* 8F2F4 800D8F34 080363D5 */  j          .Lrace_800D8F54
/* 8F2F8 800D8F38 00000000 */   nop
.Lrace_800D8F3C:
/* 8F2FC 800D8F3C 080363DB */  j          .Lrace_800D8F6C
/* 8F300 800D8F40 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D8F44:
/* 8F304 800D8F44 080363DB */  j          .Lrace_800D8F6C
/* 8F308 800D8F48 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800D8F4C:
/* 8F30C 800D8F4C 080363DB */  j          .Lrace_800D8F6C
/* 8F310 800D8F50 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800D8F54:
/* 8F314 800D8F54 8E620028 */  lw         $v0, 0x28($s3)
/* 8F318 800D8F58 00002821 */  addu       $a1, $zero, $zero
/* 8F31C 800D8F5C 84440098 */  lh         $a0, 0x98($v0)
/* 8F320 800D8F60 8C42009C */  lw         $v0, 0x9C($v0)
/* 8F324 800D8F64 0040F809 */  jalr       $v0
/* 8F328 800D8F68 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D8F6C:
/* 8F32C 800D8F6C 0C002680 */  jal        func_80009A00
/* 8F330 800D8F70 02602021 */   addu      $a0, $s3, $zero
/* 8F334 800D8F74 00101880 */  sll        $v1, $s0, 2
/* 8F338 800D8F78 02C31821 */  addu       $v1, $s6, $v1
/* 8F33C 800D8F7C 08036362 */  j          .Lrace_800D8D88
/* 8F340 800D8F80 AC620004 */   sw        $v0, 0x4($v1)
glabel Lrace_800D8F84
/* 8F344 800D8F84 8E620028 */  lw         $v0, 0x28($s3)
/* 8F348 800D8F88 00002821 */  addu       $a1, $zero, $zero
/* 8F34C 800D8F8C 84440098 */  lh         $a0, 0x98($v0)
/* 8F350 800D8F90 8C42009C */  lw         $v0, 0x9C($v0)
/* 8F354 800D8F94 0040F809 */  jalr       $v0
/* 8F358 800D8F98 02642021 */   addu      $a0, $s3, $a0
/* 8F35C 800D8F9C 08036362 */  j          .Lrace_800D8D88
/* 8F360 800D8FA0 00000000 */   nop
.Lrace_800D8FA4:
/* 8F364 800D8FA4 27A50010 */  addiu      $a1, $sp, 0x10
/* 8F368 800D8FA8 8EA4007C */  lw         $a0, 0x7C($s5)
/* 8F36C 800D8FAC 26940001 */  addiu      $s4, $s4, 0x1
/* 8F370 800D8FB0 0C037F66 */  jal        func_race_800DFD98
/* 8F374 800D8FB4 00912021 */   addu      $a0, $a0, $s1
/* 8F378 800D8FB8 08036339 */  j          .Lrace_800D8CE4
/* 8F37C 800D8FBC 26310048 */   addiu     $s1, $s1, 0x48
.Lrace_800D8FC0:
/* 8F380 800D8FC0 0C0026F4 */  jal        func_80009BD0
/* 8F384 800D8FC4 24050006 */   addiu     $a1, $zero, 0x6
/* 8F388 800D8FC8 8FBF007C */  lw         $ra, 0x7C($sp)
/* 8F38C 800D8FCC 8FBE0078 */  lw         $fp, 0x78($sp)
/* 8F390 800D8FD0 8FB70074 */  lw         $s7, 0x74($sp)
/* 8F394 800D8FD4 8FB60070 */  lw         $s6, 0x70($sp)
/* 8F398 800D8FD8 8FB5006C */  lw         $s5, 0x6C($sp)
/* 8F39C 800D8FDC 8FB40068 */  lw         $s4, 0x68($sp)
/* 8F3A0 800D8FE0 8FB30064 */  lw         $s3, 0x64($sp)
/* 8F3A4 800D8FE4 8FB20060 */  lw         $s2, 0x60($sp)
/* 8F3A8 800D8FE8 8FB1005C */  lw         $s1, 0x5C($sp)
/* 8F3AC 800D8FEC 8FB00058 */  lw         $s0, 0x58($sp)
/* 8F3B0 800D8FF0 03E00008 */  jr         $ra
/* 8F3B4 800D8FF4 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_race_800D8FF8
/* 8F3B8 800D8FF8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 8F3BC 800D8FFC AFB50044 */  sw         $s5, 0x44($sp)
/* 8F3C0 800D9000 0080A821 */  addu       $s5, $a0, $zero
/* 8F3C4 800D9004 AFB3003C */  sw         $s3, 0x3C($sp)
/* 8F3C8 800D9008 00A09821 */  addu       $s3, $a1, $zero
/* 8F3CC 800D900C 02602021 */  addu       $a0, $s3, $zero
/* 8F3D0 800D9010 AFBF004C */  sw         $ra, 0x4C($sp)
/* 8F3D4 800D9014 AFB60048 */  sw         $s6, 0x48($sp)
/* 8F3D8 800D9018 AFB40040 */  sw         $s4, 0x40($sp)
/* 8F3DC 800D901C AFB20038 */  sw         $s2, 0x38($sp)
/* 8F3E0 800D9020 AFB10034 */  sw         $s1, 0x34($sp)
/* 8F3E4 800D9024 0C002723 */  jal        func_80009C8C
/* 8F3E8 800D9028 AFB00030 */   sw        $s0, 0x30($sp)
/* 8F3EC 800D902C 3C038013 */  lui        $v1, %hi(D_race_80132090)
/* 8F3F0 800D9030 8C642090 */  lw         $a0, %lo(D_race_80132090)($v1)
/* 8F3F4 800D9034 0C01FB65 */  jal        func_8007ED94
/* 8F3F8 800D9038 AEA20040 */   sw        $v0, 0x40($s5)
/* 8F3FC 800D903C 8EB00040 */  lw         $s0, 0x40($s5)
/* 8F400 800D9040 00102040 */  sll        $a0, $s0, 1
/* 8F404 800D9044 00902021 */  addu       $a0, $a0, $s0
/* 8F408 800D9048 00042100 */  sll        $a0, $a0, 4
/* 8F40C 800D904C 0C00943C */  jal        func_800250F0
/* 8F410 800D9050 34840008 */   ori       $a0, $a0, 0x8
/* 8F414 800D9054 24420008 */  addiu      $v0, $v0, 0x8
/* 8F418 800D9058 0040A021 */  addu       $s4, $v0, $zero
/* 8F41C 800D905C 02809021 */  addu       $s2, $s4, $zero
/* 8F420 800D9060 2611FFFF */  addiu      $s1, $s0, -0x1
/* 8F424 800D9064 06200007 */  bltz       $s1, .Lrace_800D9084
/* 8F428 800D9068 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 8F42C 800D906C 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D9070:
/* 8F430 800D9070 0C035874 */  jal        func_race_800D61D0
/* 8F434 800D9074 02402021 */   addu      $a0, $s2, $zero
/* 8F438 800D9078 2631FFFF */  addiu      $s1, $s1, -0x1
/* 8F43C 800D907C 1630FFFC */  bne        $s1, $s0, .Lrace_800D9070
/* 8F440 800D9080 26520030 */   addiu     $s2, $s2, 0x30
.Lrace_800D9084:
/* 8F444 800D9084 0C01FB72 */  jal        func_8007EDC8
/* 8F448 800D9088 AEB40074 */   sw        $s4, 0x74($s5)
/* 8F44C 800D908C 8EA20074 */  lw         $v0, 0x74($s5)
/* 8F450 800D9090 14400008 */  bnez       $v0, .Lrace_800D90B4
/* 8F454 800D9094 00009021 */   addu      $s2, $zero, $zero
/* 8F458 800D9098 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8F45C 800D909C 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8F460 800D90A0 00002821 */  addu       $a1, $zero, $zero
/* 8F464 800D90A4 00A03021 */  addu       $a2, $a1, $zero
/* 8F468 800D90A8 0C011ACF */  jal        func_80046B3C
/* 8F46C 800D90AC 00A03821 */   addu      $a3, $a1, $zero
/* 8F470 800D90B0 00009021 */  addu       $s2, $zero, $zero
.Lrace_800D90B4:
/* 8F474 800D90B4 27B40010 */  addiu      $s4, $sp, 0x10
/* 8F478 800D90B8 2416FFFF */  addiu      $s6, $zero, -0x1
/* 8F47C 800D90BC 02408821 */  addu       $s1, $s2, $zero
.Lrace_800D90C0:
/* 8F480 800D90C0 8EA20040 */  lw         $v0, 0x40($s5)
/* 8F484 800D90C4 0242102B */  sltu       $v0, $s2, $v0
/* 8F488 800D90C8 10400079 */  beqz       $v0, .Lrace_800D92B0
/* 8F48C 800D90CC 02602021 */   addu      $a0, $s3, $zero
/* 8F490 800D90D0 0C0026F4 */  jal        func_80009BD0
/* 8F494 800D90D4 24050027 */   addiu     $a1, $zero, 0x27
/* 8F498 800D90D8 0C002680 */  jal        func_80009A00
/* 8F49C 800D90DC 02602021 */   addu      $a0, $s3, $zero
/* 8F4A0 800D90E0 AFA20010 */  sw         $v0, 0x10($sp)
/* 8F4A4 800D90E4 8E620028 */  lw         $v0, 0x28($s3)
/* 8F4A8 800D90E8 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F4AC 800D90EC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F4B0 800D90F0 0040F809 */  jalr       $v0
/* 8F4B4 800D90F4 02642021 */   addu      $a0, $s3, $a0
/* 8F4B8 800D90F8 00401821 */  addu       $v1, $v0, $zero
/* 8F4BC 800D90FC 2402003C */  addiu      $v0, $zero, 0x3C
/* 8F4C0 800D9100 14620008 */  bne        $v1, $v0, .Lrace_800D9124
/* 8F4C4 800D9104 AFA0002C */   sw        $zero, 0x2C($sp)
/* 8F4C8 800D9108 24020001 */  addiu      $v0, $zero, 0x1
/* 8F4CC 800D910C AFA2002C */  sw         $v0, 0x2C($sp)
/* 8F4D0 800D9110 02602021 */  addu       $a0, $s3, $zero
/* 8F4D4 800D9114 0C0026F4 */  jal        func_80009BD0
/* 8F4D8 800D9118 24050005 */   addiu     $a1, $zero, 0x5
/* 8F4DC 800D911C 08036452 */  j          .Lrace_800D9148
/* 8F4E0 800D9120 00002021 */   addu      $a0, $zero, $zero
.Lrace_800D9124:
/* 8F4E4 800D9124 24020005 */  addiu      $v0, $zero, 0x5
/* 8F4E8 800D9128 10620006 */  beq        $v1, $v0, .Lrace_800D9144
/* 8F4EC 800D912C 24050005 */   addiu     $a1, $zero, 0x5
/* 8F4F0 800D9130 8E620028 */  lw         $v0, 0x28($s3)
/* 8F4F4 800D9134 84440098 */  lh         $a0, 0x98($v0)
/* 8F4F8 800D9138 8C42009C */  lw         $v0, 0x9C($v0)
/* 8F4FC 800D913C 0040F809 */  jalr       $v0
/* 8F500 800D9140 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D9144:
/* 8F504 800D9144 00002021 */  addu       $a0, $zero, $zero
.Lrace_800D9148:
/* 8F508 800D9148 02801821 */  addu       $v1, $s4, $zero
.Lrace_800D914C:
/* 8F50C 800D914C AC760004 */  sw         $s6, 0x4($v1)
/* 8F510 800D9150 24840001 */  addiu      $a0, $a0, 0x1
/* 8F514 800D9154 2C820003 */  sltiu      $v0, $a0, 0x3
/* 8F518 800D9158 1440FFFC */  bnez       $v0, .Lrace_800D914C
/* 8F51C 800D915C 24630004 */   addiu     $v1, $v1, 0x4
/* 8F520 800D9160 AFB50020 */  sw         $s5, 0x20($sp)
/* 8F524 800D9164 AFB60024 */  sw         $s6, 0x24($sp)
/* 8F528 800D9168 AFA00028 */  sw         $zero, 0x28($sp)
.Lrace_800D916C:
/* 8F52C 800D916C 8E620028 */  lw         $v0, 0x28($s3)
/* 8F530 800D9170 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F534 800D9174 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F538 800D9178 0040F809 */  jalr       $v0
/* 8F53C 800D917C 02642021 */   addu      $a0, $s3, $a0
/* 8F540 800D9180 00401821 */  addu       $v1, $v0, $zero
/* 8F544 800D9184 24020006 */  addiu      $v0, $zero, 0x6
/* 8F548 800D9188 10620042 */  beq        $v1, $v0, .Lrace_800D9294
/* 8F54C 800D918C 24020049 */   addiu     $v0, $zero, 0x49
/* 8F550 800D9190 1062000E */  beq        $v1, $v0, .Lrace_800D91CC
/* 8F554 800D9194 2C62004A */   sltiu     $v0, $v1, 0x4A
/* 8F558 800D9198 10400005 */  beqz       $v0, .Lrace_800D91B0
/* 8F55C 800D919C 24020027 */   addiu     $v0, $zero, 0x27
/* 8F560 800D91A0 1062000E */  beq        $v1, $v0, .Lrace_800D91DC
/* 8F564 800D91A4 00000000 */   nop
/* 8F568 800D91A8 0803649D */  j          .Lrace_800D9274
/* 8F56C 800D91AC 00000000 */   nop
.Lrace_800D91B0:
/* 8F570 800D91B0 2402004C */  addiu      $v0, $zero, 0x4C
/* 8F574 800D91B4 1462002F */  bne        $v1, $v0, .Lrace_800D9274
/* 8F578 800D91B8 00000000 */   nop
/* 8F57C 800D91BC 0C002680 */  jal        func_80009A00
/* 8F580 800D91C0 02602021 */   addu      $a0, $s3, $zero
/* 8F584 800D91C4 0803645B */  j          .Lrace_800D916C
/* 8F588 800D91C8 AFA20024 */   sw        $v0, 0x24($sp)
.Lrace_800D91CC:
/* 8F58C 800D91CC 0C002680 */  jal        func_80009A00
/* 8F590 800D91D0 02602021 */   addu      $a0, $s3, $zero
/* 8F594 800D91D4 0803645B */  j          .Lrace_800D916C
/* 8F598 800D91D8 AFA20028 */   sw        $v0, 0x28($sp)
.Lrace_800D91DC:
/* 8F59C 800D91DC 8E620028 */  lw         $v0, 0x28($s3)
/* 8F5A0 800D91E0 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F5A4 800D91E4 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F5A8 800D91E8 0040F809 */  jalr       $v0
/* 8F5AC 800D91EC 02642021 */   addu      $a0, $s3, $a0
/* 8F5B0 800D91F0 00401821 */  addu       $v1, $v0, $zero
/* 8F5B4 800D91F4 24020036 */  addiu      $v0, $zero, 0x36
/* 8F5B8 800D91F8 1062000C */  beq        $v1, $v0, .Lrace_800D922C
/* 8F5BC 800D91FC 2C620037 */   sltiu     $v0, $v1, 0x37
/* 8F5C0 800D9200 10400005 */  beqz       $v0, .Lrace_800D9218
/* 8F5C4 800D9204 24020034 */   addiu     $v0, $zero, 0x34
/* 8F5C8 800D9208 1062000A */  beq        $v1, $v0, .Lrace_800D9234
/* 8F5CC 800D920C 24100003 */   addiu     $s0, $zero, 0x3
/* 8F5D0 800D9210 08036491 */  j          .Lrace_800D9244
/* 8F5D4 800D9214 00000000 */   nop
.Lrace_800D9218:
/* 8F5D8 800D9218 24020037 */  addiu      $v0, $zero, 0x37
/* 8F5DC 800D921C 10620007 */  beq        $v1, $v0, .Lrace_800D923C
/* 8F5E0 800D9220 24100003 */   addiu     $s0, $zero, 0x3
/* 8F5E4 800D9224 08036491 */  j          .Lrace_800D9244
/* 8F5E8 800D9228 00000000 */   nop
.Lrace_800D922C:
/* 8F5EC 800D922C 08036497 */  j          .Lrace_800D925C
/* 8F5F0 800D9230 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D9234:
/* 8F5F4 800D9234 08036497 */  j          .Lrace_800D925C
/* 8F5F8 800D9238 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800D923C:
/* 8F5FC 800D923C 08036497 */  j          .Lrace_800D925C
/* 8F600 800D9240 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800D9244:
/* 8F604 800D9244 8E620028 */  lw         $v0, 0x28($s3)
/* 8F608 800D9248 00002821 */  addu       $a1, $zero, $zero
/* 8F60C 800D924C 84440098 */  lh         $a0, 0x98($v0)
/* 8F610 800D9250 8C42009C */  lw         $v0, 0x9C($v0)
/* 8F614 800D9254 0040F809 */  jalr       $v0
/* 8F618 800D9258 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D925C:
/* 8F61C 800D925C 0C002680 */  jal        func_80009A00
/* 8F620 800D9260 02602021 */   addu      $a0, $s3, $zero
/* 8F624 800D9264 00101880 */  sll        $v1, $s0, 2
/* 8F628 800D9268 02831821 */  addu       $v1, $s4, $v1
/* 8F62C 800D926C 0803645B */  j          .Lrace_800D916C
/* 8F630 800D9270 AC620004 */   sw        $v0, 0x4($v1)
.Lrace_800D9274:
/* 8F634 800D9274 8E620028 */  lw         $v0, 0x28($s3)
/* 8F638 800D9278 00002821 */  addu       $a1, $zero, $zero
/* 8F63C 800D927C 84440098 */  lh         $a0, 0x98($v0)
/* 8F640 800D9280 8C42009C */  lw         $v0, 0x9C($v0)
/* 8F644 800D9284 0040F809 */  jalr       $v0
/* 8F648 800D9288 02642021 */   addu      $a0, $s3, $a0
/* 8F64C 800D928C 0803645B */  j          .Lrace_800D916C
/* 8F650 800D9290 00000000 */   nop
.Lrace_800D9294:
/* 8F654 800D9294 27A50010 */  addiu      $a1, $sp, 0x10
/* 8F658 800D9298 8EA40074 */  lw         $a0, 0x74($s5)
/* 8F65C 800D929C 26520001 */  addiu      $s2, $s2, 0x1
/* 8F660 800D92A0 0C03589C */  jal        func_race_800D6270
/* 8F664 800D92A4 00912021 */   addu      $a0, $a0, $s1
/* 8F668 800D92A8 08036430 */  j          .Lrace_800D90C0
/* 8F66C 800D92AC 26310030 */   addiu     $s1, $s1, 0x30
.Lrace_800D92B0:
/* 8F670 800D92B0 0C0026F4 */  jal        func_80009BD0
/* 8F674 800D92B4 24050006 */   addiu     $a1, $zero, 0x6
/* 8F678 800D92B8 8FBF004C */  lw         $ra, 0x4C($sp)
/* 8F67C 800D92BC 8FB60048 */  lw         $s6, 0x48($sp)
/* 8F680 800D92C0 8FB50044 */  lw         $s5, 0x44($sp)
/* 8F684 800D92C4 8FB40040 */  lw         $s4, 0x40($sp)
/* 8F688 800D92C8 8FB3003C */  lw         $s3, 0x3C($sp)
/* 8F68C 800D92CC 8FB20038 */  lw         $s2, 0x38($sp)
/* 8F690 800D92D0 8FB10034 */  lw         $s1, 0x34($sp)
/* 8F694 800D92D4 8FB00030 */  lw         $s0, 0x30($sp)
/* 8F698 800D92D8 03E00008 */  jr         $ra
/* 8F69C 800D92DC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800D92E0
/* 8F6A0 800D92E0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 8F6A4 800D92E4 AFB50054 */  sw         $s5, 0x54($sp)
/* 8F6A8 800D92E8 0080A821 */  addu       $s5, $a0, $zero
/* 8F6AC 800D92EC AFB3004C */  sw         $s3, 0x4C($sp)
/* 8F6B0 800D92F0 00A09821 */  addu       $s3, $a1, $zero
/* 8F6B4 800D92F4 02602021 */  addu       $a0, $s3, $zero
/* 8F6B8 800D92F8 AFBF005C */  sw         $ra, 0x5C($sp)
/* 8F6BC 800D92FC AFB60058 */  sw         $s6, 0x58($sp)
/* 8F6C0 800D9300 AFB40050 */  sw         $s4, 0x50($sp)
/* 8F6C4 800D9304 AFB20048 */  sw         $s2, 0x48($sp)
/* 8F6C8 800D9308 AFB10044 */  sw         $s1, 0x44($sp)
/* 8F6CC 800D930C 0C002723 */  jal        func_80009C8C
/* 8F6D0 800D9310 AFB00040 */   sw        $s0, 0x40($sp)
/* 8F6D4 800D9314 3C038013 */  lui        $v1, %hi(D_race_80132090)
/* 8F6D8 800D9318 8C642090 */  lw         $a0, %lo(D_race_80132090)($v1)
/* 8F6DC 800D931C 0C01FB65 */  jal        func_8007ED94
/* 8F6E0 800D9320 AEA2004C */   sw        $v0, 0x4C($s5)
/* 8F6E4 800D9324 8EB0004C */  lw         $s0, 0x4C($s5)
/* 8F6E8 800D9328 00102040 */  sll        $a0, $s0, 1
/* 8F6EC 800D932C 00902021 */  addu       $a0, $a0, $s0
/* 8F6F0 800D9330 00042080 */  sll        $a0, $a0, 2
/* 8F6F4 800D9334 00902023 */  subu       $a0, $a0, $s0
/* 8F6F8 800D9338 00042080 */  sll        $a0, $a0, 2
/* 8F6FC 800D933C 0C00943C */  jal        func_800250F0
/* 8F700 800D9340 24840008 */   addiu     $a0, $a0, 0x8
/* 8F704 800D9344 24420008 */  addiu      $v0, $v0, 0x8
/* 8F708 800D9348 0040A021 */  addu       $s4, $v0, $zero
/* 8F70C 800D934C 02809021 */  addu       $s2, $s4, $zero
/* 8F710 800D9350 2611FFFF */  addiu      $s1, $s0, -0x1
/* 8F714 800D9354 06200007 */  bltz       $s1, .Lrace_800D9374
/* 8F718 800D9358 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 8F71C 800D935C 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D9360:
/* 8F720 800D9360 0C0374A0 */  jal        func_race_800DD280
/* 8F724 800D9364 02402021 */   addu      $a0, $s2, $zero
/* 8F728 800D9368 2631FFFF */  addiu      $s1, $s1, -0x1
/* 8F72C 800D936C 1630FFFC */  bne        $s1, $s0, .Lrace_800D9360
/* 8F730 800D9370 2652002C */   addiu     $s2, $s2, 0x2C
.Lrace_800D9374:
/* 8F734 800D9374 0C01FB72 */  jal        func_8007EDC8
/* 8F738 800D9378 AEB40078 */   sw        $s4, 0x78($s5)
/* 8F73C 800D937C 8EA20078 */  lw         $v0, 0x78($s5)
/* 8F740 800D9380 14400008 */  bnez       $v0, .Lrace_800D93A4
/* 8F744 800D9384 0000A021 */   addu      $s4, $zero, $zero
/* 8F748 800D9388 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8F74C 800D938C 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8F750 800D9390 00002821 */  addu       $a1, $zero, $zero
/* 8F754 800D9394 00A03021 */  addu       $a2, $a1, $zero
/* 8F758 800D9398 0C011ACF */  jal        func_80046B3C
/* 8F75C 800D939C 00A03821 */   addu      $a3, $a1, $zero
/* 8F760 800D93A0 0000A021 */  addu       $s4, $zero, $zero
.Lrace_800D93A4:
/* 8F764 800D93A4 27B60010 */  addiu      $s6, $sp, 0x10
/* 8F768 800D93A8 27B10038 */  addiu      $s1, $sp, 0x38
/* 8F76C 800D93AC 02809021 */  addu       $s2, $s4, $zero
.Lrace_800D93B0:
/* 8F770 800D93B0 8EA2004C */  lw         $v0, 0x4C($s5)
/* 8F774 800D93B4 0282102B */  sltu       $v0, $s4, $v0
/* 8F778 800D93B8 104000AB */  beqz       $v0, .Lrace_800D9668
/* 8F77C 800D93BC 02602021 */   addu      $a0, $s3, $zero
/* 8F780 800D93C0 0C0026F4 */  jal        func_80009BD0
/* 8F784 800D93C4 24050027 */   addiu     $a1, $zero, 0x27
/* 8F788 800D93C8 0C002680 */  jal        func_80009A00
/* 8F78C 800D93CC 02602021 */   addu      $a0, $s3, $zero
/* 8F790 800D93D0 AFA20010 */  sw         $v0, 0x10($sp)
/* 8F794 800D93D4 8E620028 */  lw         $v0, 0x28($s3)
/* 8F798 800D93D8 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F79C 800D93DC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F7A0 800D93E0 0040F809 */  jalr       $v0
/* 8F7A4 800D93E4 02642021 */   addu      $a0, $s3, $a0
/* 8F7A8 800D93E8 00401821 */  addu       $v1, $v0, $zero
/* 8F7AC 800D93EC 2402003C */  addiu      $v0, $zero, 0x3C
/* 8F7B0 800D93F0 14620008 */  bne        $v1, $v0, .Lrace_800D9414
/* 8F7B4 800D93F4 AFA00030 */   sw        $zero, 0x30($sp)
/* 8F7B8 800D93F8 24020001 */  addiu      $v0, $zero, 0x1
/* 8F7BC 800D93FC AFA20030 */  sw         $v0, 0x30($sp)
/* 8F7C0 800D9400 02602021 */  addu       $a0, $s3, $zero
/* 8F7C4 800D9404 0C0026F4 */  jal        func_80009BD0
/* 8F7C8 800D9408 24050005 */   addiu     $a1, $zero, 0x5
/* 8F7CC 800D940C 0803650E */  j          .Lrace_800D9438
/* 8F7D0 800D9410 00002021 */   addu      $a0, $zero, $zero
.Lrace_800D9414:
/* 8F7D4 800D9414 24020005 */  addiu      $v0, $zero, 0x5
/* 8F7D8 800D9418 10620006 */  beq        $v1, $v0, .Lrace_800D9434
/* 8F7DC 800D941C 24050005 */   addiu     $a1, $zero, 0x5
/* 8F7E0 800D9420 8E620028 */  lw         $v0, 0x28($s3)
/* 8F7E4 800D9424 84440098 */  lh         $a0, 0x98($v0)
/* 8F7E8 800D9428 8C42009C */  lw         $v0, 0x9C($v0)
/* 8F7EC 800D942C 0040F809 */  jalr       $v0
/* 8F7F0 800D9430 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D9434:
/* 8F7F4 800D9434 00002021 */  addu       $a0, $zero, $zero
.Lrace_800D9438:
/* 8F7F8 800D9438 2405FFFF */  addiu      $a1, $zero, -0x1
/* 8F7FC 800D943C 02C01821 */  addu       $v1, $s6, $zero
.Lrace_800D9440:
/* 8F800 800D9440 AC650004 */  sw         $a1, 0x4($v1)
/* 8F804 800D9444 24840001 */  addiu      $a0, $a0, 0x1
/* 8F808 800D9448 2C820003 */  sltiu      $v0, $a0, 0x3
/* 8F80C 800D944C 1440FFFC */  bnez       $v0, .Lrace_800D9440
/* 8F810 800D9450 24630004 */   addiu     $v1, $v1, 0x4
/* 8F814 800D9454 AFB50020 */  sw         $s5, 0x20($sp)
/* 8F818 800D9458 AFA00024 */  sw         $zero, 0x24($sp)
/* 8F81C 800D945C AFA00028 */  sw         $zero, 0x28($sp)
/* 8F820 800D9460 AFA0002C */  sw         $zero, 0x2C($sp)
.Lrace_800D9464:
/* 8F824 800D9464 8E620028 */  lw         $v0, 0x28($s3)
/* 8F828 800D9468 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F82C 800D946C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F830 800D9470 0040F809 */  jalr       $v0
/* 8F834 800D9474 02642021 */   addu      $a0, $s3, $a0
/* 8F838 800D9478 00401821 */  addu       $v1, $v0, $zero
/* 8F83C 800D947C 24020006 */  addiu      $v0, $zero, 0x6
/* 8F840 800D9480 10620072 */  beq        $v1, $v0, .Lrace_800D964C
/* 8F844 800D9484 2402004A */   addiu     $v0, $zero, 0x4A
/* 8F848 800D9488 1062000E */  beq        $v1, $v0, .Lrace_800D94C4
/* 8F84C 800D948C 2C62004B */   sltiu     $v0, $v1, 0x4B
/* 8F850 800D9490 10400007 */  beqz       $v0, .Lrace_800D94B0
/* 8F854 800D9494 24020027 */   addiu     $v0, $zero, 0x27
/* 8F858 800D9498 1062003E */  beq        $v1, $v0, .Lrace_800D9594
/* 8F85C 800D949C 24020033 */   addiu     $v0, $zero, 0x33
/* 8F860 800D94A0 1062001B */  beq        $v1, $v0, .Lrace_800D9510
/* 8F864 800D94A4 00000000 */   nop
/* 8F868 800D94A8 0803658B */  j          .Lrace_800D962C
/* 8F86C 800D94AC 00000000 */   nop
.Lrace_800D94B0:
/* 8F870 800D94B0 24020054 */  addiu      $v0, $zero, 0x54
/* 8F874 800D94B4 10620033 */  beq        $v1, $v0, .Lrace_800D9584
/* 8F878 800D94B8 00000000 */   nop
/* 8F87C 800D94BC 0803658B */  j          .Lrace_800D962C
/* 8F880 800D94C0 00000000 */   nop
.Lrace_800D94C4:
/* 8F884 800D94C4 8E620028 */  lw         $v0, 0x28($s3)
/* 8F888 800D94C8 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F88C 800D94CC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F890 800D94D0 0040F809 */  jalr       $v0
/* 8F894 800D94D4 02642021 */   addu      $a0, $s3, $a0
/* 8F898 800D94D8 02202021 */  addu       $a0, $s1, $zero
/* 8F89C 800D94DC 26650044 */  addiu      $a1, $s3, 0x44
/* 8F8A0 800D94E0 0C000708 */  jal        func_80001C20
/* 8F8A4 800D94E4 24060008 */   addiu     $a2, $zero, 0x8
/* 8F8A8 800D94E8 8EA20008 */  lw         $v0, 0x8($s5)
/* 8F8AC 800D94EC 8C4300D4 */  lw         $v1, 0xD4($v0)
/* 8F8B0 800D94F0 14600003 */  bnez       $v1, .Lrace_800D9500
/* 8F8B4 800D94F4 244400D4 */   addiu     $a0, $v0, 0xD4
/* 8F8B8 800D94F8 08036542 */  j          .Lrace_800D9508
/* 8F8BC 800D94FC 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D9500:
/* 8F8C0 800D9500 0C016427 */  jal        func_8005909C
/* 8F8C4 800D9504 02202821 */   addu      $a1, $s1, $zero
.Lrace_800D9508:
/* 8F8C8 800D9508 08036519 */  j          .Lrace_800D9464
/* 8F8CC 800D950C AFA20024 */   sw        $v0, 0x24($sp)
.Lrace_800D9510:
/* 8F8D0 800D9510 8E620028 */  lw         $v0, 0x28($s3)
/* 8F8D4 800D9514 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F8D8 800D9518 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F8DC 800D951C 0040F809 */  jalr       $v0
/* 8F8E0 800D9520 02642021 */   addu      $a0, $s3, $a0
/* 8F8E4 800D9524 02202021 */  addu       $a0, $s1, $zero
/* 8F8E8 800D9528 26650044 */  addiu      $a1, $s3, 0x44
/* 8F8EC 800D952C 0C000708 */  jal        func_80001C20
/* 8F8F0 800D9530 24060008 */   addiu     $a2, $zero, 0x8
/* 8F8F4 800D9534 8EA20000 */  lw         $v0, 0x0($s5)
/* 8F8F8 800D9538 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8F8FC 800D953C 14600003 */  bnez       $v1, .Lrace_800D954C
/* 8F900 800D9540 244400BC */   addiu     $a0, $v0, 0xBC
/* 8F904 800D9544 08036555 */  j          .Lrace_800D9554
/* 8F908 800D9548 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D954C:
/* 8F90C 800D954C 0C016427 */  jal        func_8005909C
/* 8F910 800D9550 02202821 */   addu      $a1, $s1, $zero
.Lrace_800D9554:
/* 8F914 800D9554 1440FFC3 */  bnez       $v0, .Lrace_800D9464
/* 8F918 800D9558 AFA20028 */   sw        $v0, 0x28($sp)
/* 8F91C 800D955C 8EA20004 */  lw         $v0, 0x4($s5)
/* 8F920 800D9560 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8F924 800D9564 14600003 */  bnez       $v1, .Lrace_800D9574
/* 8F928 800D9568 244400BC */   addiu     $a0, $v0, 0xBC
/* 8F92C 800D956C 0803655F */  j          .Lrace_800D957C
/* 8F930 800D9570 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D9574:
/* 8F934 800D9574 0C016427 */  jal        func_8005909C
/* 8F938 800D9578 27A50038 */   addiu     $a1, $sp, 0x38
.Lrace_800D957C:
/* 8F93C 800D957C 08036519 */  j          .Lrace_800D9464
/* 8F940 800D9580 AFA20028 */   sw        $v0, 0x28($sp)
.Lrace_800D9584:
/* 8F944 800D9584 0C002680 */  jal        func_80009A00
/* 8F948 800D9588 02602021 */   addu      $a0, $s3, $zero
/* 8F94C 800D958C 08036519 */  j          .Lrace_800D9464
/* 8F950 800D9590 AFA2002C */   sw        $v0, 0x2C($sp)
.Lrace_800D9594:
/* 8F954 800D9594 8E620028 */  lw         $v0, 0x28($s3)
/* 8F958 800D9598 844400A0 */  lh         $a0, 0xA0($v0)
/* 8F95C 800D959C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8F960 800D95A0 0040F809 */  jalr       $v0
/* 8F964 800D95A4 02642021 */   addu      $a0, $s3, $a0
/* 8F968 800D95A8 00401821 */  addu       $v1, $v0, $zero
/* 8F96C 800D95AC 24020036 */  addiu      $v0, $zero, 0x36
/* 8F970 800D95B0 1062000C */  beq        $v1, $v0, .Lrace_800D95E4
/* 8F974 800D95B4 2C620037 */   sltiu     $v0, $v1, 0x37
/* 8F978 800D95B8 10400005 */  beqz       $v0, .Lrace_800D95D0
/* 8F97C 800D95BC 24020034 */   addiu     $v0, $zero, 0x34
/* 8F980 800D95C0 1062000A */  beq        $v1, $v0, .Lrace_800D95EC
/* 8F984 800D95C4 24100003 */   addiu     $s0, $zero, 0x3
/* 8F988 800D95C8 0803657F */  j          .Lrace_800D95FC
/* 8F98C 800D95CC 00000000 */   nop
.Lrace_800D95D0:
/* 8F990 800D95D0 24020037 */  addiu      $v0, $zero, 0x37
/* 8F994 800D95D4 10620007 */  beq        $v1, $v0, .Lrace_800D95F4
/* 8F998 800D95D8 24100003 */   addiu     $s0, $zero, 0x3
/* 8F99C 800D95DC 0803657F */  j          .Lrace_800D95FC
/* 8F9A0 800D95E0 00000000 */   nop
.Lrace_800D95E4:
/* 8F9A4 800D95E4 08036585 */  j          .Lrace_800D9614
/* 8F9A8 800D95E8 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D95EC:
/* 8F9AC 800D95EC 08036585 */  j          .Lrace_800D9614
/* 8F9B0 800D95F0 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800D95F4:
/* 8F9B4 800D95F4 08036585 */  j          .Lrace_800D9614
/* 8F9B8 800D95F8 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800D95FC:
/* 8F9BC 800D95FC 8E620028 */  lw         $v0, 0x28($s3)
/* 8F9C0 800D9600 00002821 */  addu       $a1, $zero, $zero
/* 8F9C4 800D9604 84440098 */  lh         $a0, 0x98($v0)
/* 8F9C8 800D9608 8C42009C */  lw         $v0, 0x9C($v0)
/* 8F9CC 800D960C 0040F809 */  jalr       $v0
/* 8F9D0 800D9610 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D9614:
/* 8F9D4 800D9614 0C002680 */  jal        func_80009A00
/* 8F9D8 800D9618 02602021 */   addu      $a0, $s3, $zero
/* 8F9DC 800D961C 00101880 */  sll        $v1, $s0, 2
/* 8F9E0 800D9620 02C31821 */  addu       $v1, $s6, $v1
/* 8F9E4 800D9624 08036519 */  j          .Lrace_800D9464
/* 8F9E8 800D9628 AC620004 */   sw        $v0, 0x4($v1)
.Lrace_800D962C:
/* 8F9EC 800D962C 8E620028 */  lw         $v0, 0x28($s3)
/* 8F9F0 800D9630 00002821 */  addu       $a1, $zero, $zero
/* 8F9F4 800D9634 84440098 */  lh         $a0, 0x98($v0)
/* 8F9F8 800D9638 8C42009C */  lw         $v0, 0x9C($v0)
/* 8F9FC 800D963C 0040F809 */  jalr       $v0
/* 8FA00 800D9640 02642021 */   addu      $a0, $s3, $a0
/* 8FA04 800D9644 08036519 */  j          .Lrace_800D9464
/* 8FA08 800D9648 00000000 */   nop
.Lrace_800D964C:
/* 8FA0C 800D964C 27A50010 */  addiu      $a1, $sp, 0x10
/* 8FA10 800D9650 8EA40078 */  lw         $a0, 0x78($s5)
/* 8FA14 800D9654 26940001 */  addiu      $s4, $s4, 0x1
/* 8FA18 800D9658 0C0374C6 */  jal        func_race_800DD318
/* 8FA1C 800D965C 00922021 */   addu      $a0, $a0, $s2
/* 8FA20 800D9660 080364EC */  j          .Lrace_800D93B0
/* 8FA24 800D9664 2652002C */   addiu     $s2, $s2, 0x2C
.Lrace_800D9668:
/* 8FA28 800D9668 0C0026F4 */  jal        func_80009BD0
/* 8FA2C 800D966C 24050006 */   addiu     $a1, $zero, 0x6
/* 8FA30 800D9670 8FBF005C */  lw         $ra, 0x5C($sp)
/* 8FA34 800D9674 8FB60058 */  lw         $s6, 0x58($sp)
/* 8FA38 800D9678 8FB50054 */  lw         $s5, 0x54($sp)
/* 8FA3C 800D967C 8FB40050 */  lw         $s4, 0x50($sp)
/* 8FA40 800D9680 8FB3004C */  lw         $s3, 0x4C($sp)
/* 8FA44 800D9684 8FB20048 */  lw         $s2, 0x48($sp)
/* 8FA48 800D9688 8FB10044 */  lw         $s1, 0x44($sp)
/* 8FA4C 800D968C 8FB00040 */  lw         $s0, 0x40($sp)
/* 8FA50 800D9690 03E00008 */  jr         $ra
/* 8FA54 800D9694 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_race_800D9698
/* 8FA58 800D9698 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 8FA5C 800D969C AFB50054 */  sw         $s5, 0x54($sp)
/* 8FA60 800D96A0 0080A821 */  addu       $s5, $a0, $zero
/* 8FA64 800D96A4 AFB40050 */  sw         $s4, 0x50($sp)
/* 8FA68 800D96A8 00A0A021 */  addu       $s4, $a1, $zero
/* 8FA6C 800D96AC 02802021 */  addu       $a0, $s4, $zero
/* 8FA70 800D96B0 AFBF0064 */  sw         $ra, 0x64($sp)
/* 8FA74 800D96B4 AFBE0060 */  sw         $fp, 0x60($sp)
/* 8FA78 800D96B8 AFB7005C */  sw         $s7, 0x5C($sp)
/* 8FA7C 800D96BC AFB60058 */  sw         $s6, 0x58($sp)
/* 8FA80 800D96C0 AFB3004C */  sw         $s3, 0x4C($sp)
/* 8FA84 800D96C4 AFB20048 */  sw         $s2, 0x48($sp)
/* 8FA88 800D96C8 AFB10044 */  sw         $s1, 0x44($sp)
/* 8FA8C 800D96CC 0C002723 */  jal        func_80009C8C
/* 8FA90 800D96D0 AFB00040 */   sw        $s0, 0x40($sp)
/* 8FA94 800D96D4 3C038013 */  lui        $v1, %hi(D_race_80132090)
/* 8FA98 800D96D8 8C642090 */  lw         $a0, %lo(D_race_80132090)($v1)
/* 8FA9C 800D96DC 0C01FB65 */  jal        func_8007ED94
/* 8FAA0 800D96E0 AEA20050 */   sw        $v0, 0x50($s5)
/* 8FAA4 800D96E4 8EB00050 */  lw         $s0, 0x50($s5)
/* 8FAA8 800D96E8 00102040 */  sll        $a0, $s0, 1
/* 8FAAC 800D96EC 00902021 */  addu       $a0, $a0, $s0
/* 8FAB0 800D96F0 00042080 */  sll        $a0, $a0, 2
/* 8FAB4 800D96F4 00902021 */  addu       $a0, $a0, $s0
/* 8FAB8 800D96F8 00042080 */  sll        $a0, $a0, 2
/* 8FABC 800D96FC 0C00943C */  jal        func_800250F0
/* 8FAC0 800D9700 24840008 */   addiu     $a0, $a0, 0x8
/* 8FAC4 800D9704 24420008 */  addiu      $v0, $v0, 0x8
/* 8FAC8 800D9708 00409821 */  addu       $s3, $v0, $zero
/* 8FACC 800D970C 02609021 */  addu       $s2, $s3, $zero
/* 8FAD0 800D9710 2611FFFF */  addiu      $s1, $s0, -0x1
/* 8FAD4 800D9714 06200007 */  bltz       $s1, .Lrace_800D9734
/* 8FAD8 800D9718 AE70FFF8 */   sw        $s0, -0x8($s3)
/* 8FADC 800D971C 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D9720:
/* 8FAE0 800D9720 0C0373EC */  jal        func_race_800DCFB0
/* 8FAE4 800D9724 02402021 */   addu      $a0, $s2, $zero
/* 8FAE8 800D9728 2631FFFF */  addiu      $s1, $s1, -0x1
/* 8FAEC 800D972C 1630FFFC */  bne        $s1, $s0, .Lrace_800D9720
/* 8FAF0 800D9730 26520034 */   addiu     $s2, $s2, 0x34
.Lrace_800D9734:
/* 8FAF4 800D9734 0C01FB72 */  jal        func_8007EDC8
/* 8FAF8 800D9738 AEB30084 */   sw        $s3, 0x84($s5)
/* 8FAFC 800D973C 8EA20084 */  lw         $v0, 0x84($s5)
/* 8FB00 800D9740 14400008 */  bnez       $v0, .Lrace_800D9764
/* 8FB04 800D9744 0000B021 */   addu      $s6, $zero, $zero
/* 8FB08 800D9748 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8FB0C 800D974C 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8FB10 800D9750 00002821 */  addu       $a1, $zero, $zero
/* 8FB14 800D9754 00A03021 */  addu       $a2, $a1, $zero
/* 8FB18 800D9758 0C011ACF */  jal        func_80046B3C
/* 8FB1C 800D975C 00A03821 */   addu      $a3, $a1, $zero
/* 8FB20 800D9760 0000B021 */  addu       $s6, $zero, $zero
.Lrace_800D9764:
/* 8FB24 800D9764 24170001 */  addiu      $s7, $zero, 0x1
/* 8FB28 800D9768 27BE0010 */  addiu      $fp, $sp, 0x10
/* 8FB2C 800D976C 27B20038 */  addiu      $s2, $sp, 0x38
/* 8FB30 800D9770 02C09821 */  addu       $s3, $s6, $zero
.Lrace_800D9774:
/* 8FB34 800D9774 8EA20050 */  lw         $v0, 0x50($s5)
/* 8FB38 800D9778 02C2102B */  sltu       $v0, $s6, $v0
/* 8FB3C 800D977C 104000BA */  beqz       $v0, .Lrace_800D9A68
/* 8FB40 800D9780 02802021 */   addu      $a0, $s4, $zero
/* 8FB44 800D9784 0C0026F4 */  jal        func_80009BD0
/* 8FB48 800D9788 24050027 */   addiu     $a1, $zero, 0x27
/* 8FB4C 800D978C 0C002680 */  jal        func_80009A00
/* 8FB50 800D9790 02802021 */   addu      $a0, $s4, $zero
/* 8FB54 800D9794 AFA20010 */  sw         $v0, 0x10($sp)
/* 8FB58 800D9798 8E820028 */  lw         $v0, 0x28($s4)
/* 8FB5C 800D979C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8FB60 800D97A0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8FB64 800D97A4 0040F809 */  jalr       $v0
/* 8FB68 800D97A8 02842021 */   addu      $a0, $s4, $a0
/* 8FB6C 800D97AC 00401821 */  addu       $v1, $v0, $zero
/* 8FB70 800D97B0 2402003C */  addiu      $v0, $zero, 0x3C
/* 8FB74 800D97B4 14620007 */  bne        $v1, $v0, .Lrace_800D97D4
/* 8FB78 800D97B8 AFA0002C */   sw        $zero, 0x2C($sp)
/* 8FB7C 800D97BC AFB7002C */  sw         $s7, 0x2C($sp)
/* 8FB80 800D97C0 02802021 */  addu       $a0, $s4, $zero
/* 8FB84 800D97C4 0C0026F4 */  jal        func_80009BD0
/* 8FB88 800D97C8 24050005 */   addiu     $a1, $zero, 0x5
/* 8FB8C 800D97CC 080365FE */  j          .Lrace_800D97F8
/* 8FB90 800D97D0 00002021 */   addu      $a0, $zero, $zero
.Lrace_800D97D4:
/* 8FB94 800D97D4 24020005 */  addiu      $v0, $zero, 0x5
/* 8FB98 800D97D8 10620006 */  beq        $v1, $v0, .Lrace_800D97F4
/* 8FB9C 800D97DC 24050005 */   addiu     $a1, $zero, 0x5
/* 8FBA0 800D97E0 8E820028 */  lw         $v0, 0x28($s4)
/* 8FBA4 800D97E4 84440098 */  lh         $a0, 0x98($v0)
/* 8FBA8 800D97E8 8C42009C */  lw         $v0, 0x9C($v0)
/* 8FBAC 800D97EC 0040F809 */  jalr       $v0
/* 8FBB0 800D97F0 02842021 */   addu      $a0, $s4, $a0
.Lrace_800D97F4:
/* 8FBB4 800D97F4 00002021 */  addu       $a0, $zero, $zero
.Lrace_800D97F8:
/* 8FBB8 800D97F8 2405FFFF */  addiu      $a1, $zero, -0x1
/* 8FBBC 800D97FC 03C01821 */  addu       $v1, $fp, $zero
.Lrace_800D9800:
/* 8FBC0 800D9800 AC650004 */  sw         $a1, 0x4($v1)
/* 8FBC4 800D9804 24840001 */  addiu      $a0, $a0, 0x1
/* 8FBC8 800D9808 2C820003 */  sltiu      $v0, $a0, 0x3
/* 8FBCC 800D980C 1440FFFC */  bnez       $v0, .Lrace_800D9800
/* 8FBD0 800D9810 24630004 */   addiu     $v1, $v1, 0x4
/* 8FBD4 800D9814 00008821 */  addu       $s1, $zero, $zero
/* 8FBD8 800D9818 AFB50020 */  sw         $s5, 0x20($sp)
/* 8FBDC 800D981C AFA00024 */  sw         $zero, 0x24($sp)
/* 8FBE0 800D9820 AFA00028 */  sw         $zero, 0x28($sp)
/* 8FBE4 800D9824 AFA00030 */  sw         $zero, 0x30($sp)
.Lrace_800D9828:
/* 8FBE8 800D9828 8E820028 */  lw         $v0, 0x28($s4)
/* 8FBEC 800D982C 844400A0 */  lh         $a0, 0xA0($v0)
/* 8FBF0 800D9830 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8FBF4 800D9834 0040F809 */  jalr       $v0
/* 8FBF8 800D9838 02842021 */   addu      $a0, $s4, $a0
/* 8FBFC 800D983C 00401821 */  addu       $v1, $v0, $zero
/* 8FC00 800D9840 24020006 */  addiu      $v0, $zero, 0x6
/* 8FC04 800D9844 10620081 */  beq        $v1, $v0, .Lrace_800D9A4C
/* 8FC08 800D9848 2463FFD9 */   addiu     $v1, $v1, -0x27
/* 8FC0C 800D984C 2C620020 */  sltiu      $v0, $v1, 0x20
/* 8FC10 800D9850 10400076 */  beqz       $v0, Lrace_800D9A2C
/* 8FC14 800D9854 00031080 */   sll       $v0, $v1, 2
/* 8FC18 800D9858 3C08800D */  lui        $t0, %hi(jtbl_race_800CAFB0)
/* 8FC1C 800D985C 2508AFB0 */  addiu      $t0, $t0, %lo(jtbl_race_800CAFB0)
/* 8FC20 800D9860 00481021 */  addu       $v0, $v0, $t0
/* 8FC24 800D9864 8C420000 */  lw         $v0, 0x0($v0)
/* 8FC28 800D9868 00400008 */  jr         $v0
/* 8FC2C 800D986C 00000000 */   nop
glabel Lrace_800D9870
/* 8FC30 800D9870 8E820028 */  lw         $v0, 0x28($s4)
/* 8FC34 800D9874 844400A0 */  lh         $a0, 0xA0($v0)
/* 8FC38 800D9878 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8FC3C 800D987C 0040F809 */  jalr       $v0
/* 8FC40 800D9880 02842021 */   addu      $a0, $s4, $a0
/* 8FC44 800D9884 02402021 */  addu       $a0, $s2, $zero
/* 8FC48 800D9888 26850044 */  addiu      $a1, $s4, 0x44
/* 8FC4C 800D988C 0C000708 */  jal        func_80001C20
/* 8FC50 800D9890 24060008 */   addiu     $a2, $zero, 0x8
/* 8FC54 800D9894 1220001B */  beqz       $s1, .Lrace_800D9904
/* 8FC58 800D9898 00000000 */   nop
/* 8FC5C 800D989C 8EA20004 */  lw         $v0, 0x4($s5)
/* 8FC60 800D98A0 8C4300B0 */  lw         $v1, 0xB0($v0)
/* 8FC64 800D98A4 14600003 */  bnez       $v1, .Lrace_800D98B4
/* 8FC68 800D98A8 244400B0 */   addiu     $a0, $v0, 0xB0
/* 8FC6C 800D98AC 0803662F */  j          .Lrace_800D98BC
/* 8FC70 800D98B0 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D98B4:
/* 8FC74 800D98B4 0C016427 */  jal        func_8005909C
/* 8FC78 800D98B8 02402821 */   addu      $a1, $s2, $zero
.Lrace_800D98BC:
/* 8FC7C 800D98BC 1440FFDA */  bnez       $v0, .Lrace_800D9828
/* 8FC80 800D98C0 AFA20024 */   sw        $v0, 0x24($sp)
/* 8FC84 800D98C4 8EA20004 */  lw         $v0, 0x4($s5)
/* 8FC88 800D98C8 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8FC8C 800D98CC 14600003 */  bnez       $v1, .Lrace_800D98DC
/* 8FC90 800D98D0 244400BC */   addiu     $a0, $v0, 0xBC
/* 8FC94 800D98D4 08036639 */  j          .Lrace_800D98E4
/* 8FC98 800D98D8 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D98DC:
/* 8FC9C 800D98DC 0C016427 */  jal        func_8005909C
/* 8FCA0 800D98E0 27A50038 */   addiu     $a1, $sp, 0x38
.Lrace_800D98E4:
/* 8FCA4 800D98E4 1440FFD0 */  bnez       $v0, .Lrace_800D9828
/* 8FCA8 800D98E8 AFA20024 */   sw        $v0, 0x24($sp)
/* 8FCAC 800D98EC 8EA20004 */  lw         $v0, 0x4($s5)
/* 8FCB0 800D98F0 8C4300C8 */  lw         $v1, 0xC8($v0)
/* 8FCB4 800D98F4 1060001B */  beqz       $v1, .Lrace_800D9964
/* 8FCB8 800D98F8 244400C8 */   addiu     $a0, $v0, 0xC8
/* 8FCBC 800D98FC 0803665B */  j          .Lrace_800D996C
/* 8FCC0 800D9900 00000000 */   nop
.Lrace_800D9904:
/* 8FCC4 800D9904 8EA20000 */  lw         $v0, 0x0($s5)
/* 8FCC8 800D9908 8C4300B0 */  lw         $v1, 0xB0($v0)
/* 8FCCC 800D990C 14600003 */  bnez       $v1, .Lrace_800D991C
/* 8FCD0 800D9910 244400B0 */   addiu     $a0, $v0, 0xB0
/* 8FCD4 800D9914 08036649 */  j          .Lrace_800D9924
/* 8FCD8 800D9918 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D991C:
/* 8FCDC 800D991C 0C016427 */  jal        func_8005909C
/* 8FCE0 800D9920 02402821 */   addu      $a1, $s2, $zero
.Lrace_800D9924:
/* 8FCE4 800D9924 1440FFC0 */  bnez       $v0, .Lrace_800D9828
/* 8FCE8 800D9928 AFA20024 */   sw        $v0, 0x24($sp)
/* 8FCEC 800D992C 8EA20000 */  lw         $v0, 0x0($s5)
/* 8FCF0 800D9930 8C4300BC */  lw         $v1, 0xBC($v0)
/* 8FCF4 800D9934 14600003 */  bnez       $v1, .Lrace_800D9944
/* 8FCF8 800D9938 244400BC */   addiu     $a0, $v0, 0xBC
/* 8FCFC 800D993C 08036653 */  j          .Lrace_800D994C
/* 8FD00 800D9940 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D9944:
/* 8FD04 800D9944 0C016427 */  jal        func_8005909C
/* 8FD08 800D9948 27A50038 */   addiu     $a1, $sp, 0x38
.Lrace_800D994C:
/* 8FD0C 800D994C 1440FFB6 */  bnez       $v0, .Lrace_800D9828
/* 8FD10 800D9950 AFA20024 */   sw        $v0, 0x24($sp)
/* 8FD14 800D9954 8EA20000 */  lw         $v0, 0x0($s5)
/* 8FD18 800D9958 8C4300C8 */  lw         $v1, 0xC8($v0)
/* 8FD1C 800D995C 14600003 */  bnez       $v1, .Lrace_800D996C
/* 8FD20 800D9960 244400C8 */   addiu     $a0, $v0, 0xC8
.Lrace_800D9964:
/* 8FD24 800D9964 0803665D */  j          .Lrace_800D9974
/* 8FD28 800D9968 00001021 */   addu      $v0, $zero, $zero
.Lrace_800D996C:
/* 8FD2C 800D996C 0C016427 */  jal        func_8005909C
/* 8FD30 800D9970 27A50038 */   addiu     $a1, $sp, 0x38
.Lrace_800D9974:
/* 8FD34 800D9974 0803660A */  j          .Lrace_800D9828
/* 8FD38 800D9978 AFA20024 */   sw        $v0, 0x24($sp)
glabel Lrace_800D997C
/* 8FD3C 800D997C 0803660A */  j          .Lrace_800D9828
/* 8FD40 800D9980 AFB70028 */   sw        $s7, 0x28($sp)
glabel Lrace_800D9984
/* 8FD44 800D9984 0803660A */  j          .Lrace_800D9828
/* 8FD48 800D9988 24110001 */   addiu     $s1, $zero, 0x1
glabel Lrace_800D998C
/* 8FD4C 800D998C 0803660A */  j          .Lrace_800D9828
/* 8FD50 800D9990 AFB70030 */   sw        $s7, 0x30($sp)
glabel Lrace_800D9994
/* 8FD54 800D9994 8E820028 */  lw         $v0, 0x28($s4)
/* 8FD58 800D9998 844400A0 */  lh         $a0, 0xA0($v0)
/* 8FD5C 800D999C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8FD60 800D99A0 0040F809 */  jalr       $v0
/* 8FD64 800D99A4 02842021 */   addu      $a0, $s4, $a0
/* 8FD68 800D99A8 00401821 */  addu       $v1, $v0, $zero
/* 8FD6C 800D99AC 24020036 */  addiu      $v0, $zero, 0x36
/* 8FD70 800D99B0 1062000C */  beq        $v1, $v0, .Lrace_800D99E4
/* 8FD74 800D99B4 2C620037 */   sltiu     $v0, $v1, 0x37
/* 8FD78 800D99B8 10400005 */  beqz       $v0, .Lrace_800D99D0
/* 8FD7C 800D99BC 24020034 */   addiu     $v0, $zero, 0x34
/* 8FD80 800D99C0 1062000A */  beq        $v1, $v0, .Lrace_800D99EC
/* 8FD84 800D99C4 24100003 */   addiu     $s0, $zero, 0x3
/* 8FD88 800D99C8 0803667F */  j          .Lrace_800D99FC
/* 8FD8C 800D99CC 00000000 */   nop
.Lrace_800D99D0:
/* 8FD90 800D99D0 24020037 */  addiu      $v0, $zero, 0x37
/* 8FD94 800D99D4 10620007 */  beq        $v1, $v0, .Lrace_800D99F4
/* 8FD98 800D99D8 24100003 */   addiu     $s0, $zero, 0x3
/* 8FD9C 800D99DC 0803667F */  j          .Lrace_800D99FC
/* 8FDA0 800D99E0 00000000 */   nop
.Lrace_800D99E4:
/* 8FDA4 800D99E4 08036685 */  j          .Lrace_800D9A14
/* 8FDA8 800D99E8 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D99EC:
/* 8FDAC 800D99EC 08036685 */  j          .Lrace_800D9A14
/* 8FDB0 800D99F0 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800D99F4:
/* 8FDB4 800D99F4 08036685 */  j          .Lrace_800D9A14
/* 8FDB8 800D99F8 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800D99FC:
/* 8FDBC 800D99FC 8E820028 */  lw         $v0, 0x28($s4)
/* 8FDC0 800D9A00 00002821 */  addu       $a1, $zero, $zero
/* 8FDC4 800D9A04 84440098 */  lh         $a0, 0x98($v0)
/* 8FDC8 800D9A08 8C42009C */  lw         $v0, 0x9C($v0)
/* 8FDCC 800D9A0C 0040F809 */  jalr       $v0
/* 8FDD0 800D9A10 02842021 */   addu      $a0, $s4, $a0
.Lrace_800D9A14:
/* 8FDD4 800D9A14 0C002680 */  jal        func_80009A00
/* 8FDD8 800D9A18 02802021 */   addu      $a0, $s4, $zero
/* 8FDDC 800D9A1C 00101880 */  sll        $v1, $s0, 2
/* 8FDE0 800D9A20 03C31821 */  addu       $v1, $fp, $v1
/* 8FDE4 800D9A24 0803660A */  j          .Lrace_800D9828
/* 8FDE8 800D9A28 AC620004 */   sw        $v0, 0x4($v1)
glabel Lrace_800D9A2C
/* 8FDEC 800D9A2C 8E820028 */  lw         $v0, 0x28($s4)
/* 8FDF0 800D9A30 00002821 */  addu       $a1, $zero, $zero
/* 8FDF4 800D9A34 84440098 */  lh         $a0, 0x98($v0)
/* 8FDF8 800D9A38 8C42009C */  lw         $v0, 0x9C($v0)
/* 8FDFC 800D9A3C 0040F809 */  jalr       $v0
/* 8FE00 800D9A40 02842021 */   addu      $a0, $s4, $a0
/* 8FE04 800D9A44 0803660A */  j          .Lrace_800D9828
/* 8FE08 800D9A48 00000000 */   nop
.Lrace_800D9A4C:
/* 8FE0C 800D9A4C 27A50010 */  addiu      $a1, $sp, 0x10
/* 8FE10 800D9A50 8EA40084 */  lw         $a0, 0x84($s5)
/* 8FE14 800D9A54 26D60001 */  addiu      $s6, $s6, 0x1
/* 8FE18 800D9A58 0C037418 */  jal        func_race_800DD060
/* 8FE1C 800D9A5C 00932021 */   addu      $a0, $a0, $s3
/* 8FE20 800D9A60 080365DD */  j          .Lrace_800D9774
/* 8FE24 800D9A64 26730034 */   addiu     $s3, $s3, 0x34
.Lrace_800D9A68:
/* 8FE28 800D9A68 0C0026F4 */  jal        func_80009BD0
/* 8FE2C 800D9A6C 24050006 */   addiu     $a1, $zero, 0x6
/* 8FE30 800D9A70 8FBF0064 */  lw         $ra, 0x64($sp)
/* 8FE34 800D9A74 8FBE0060 */  lw         $fp, 0x60($sp)
/* 8FE38 800D9A78 8FB7005C */  lw         $s7, 0x5C($sp)
/* 8FE3C 800D9A7C 8FB60058 */  lw         $s6, 0x58($sp)
/* 8FE40 800D9A80 8FB50054 */  lw         $s5, 0x54($sp)
/* 8FE44 800D9A84 8FB40050 */  lw         $s4, 0x50($sp)
/* 8FE48 800D9A88 8FB3004C */  lw         $s3, 0x4C($sp)
/* 8FE4C 800D9A8C 8FB20048 */  lw         $s2, 0x48($sp)
/* 8FE50 800D9A90 8FB10044 */  lw         $s1, 0x44($sp)
/* 8FE54 800D9A94 8FB00040 */  lw         $s0, 0x40($sp)
/* 8FE58 800D9A98 03E00008 */  jr         $ra
/* 8FE5C 800D9A9C 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_800D9AA0
/* 8FE60 800D9AA0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 8FE64 800D9AA4 AFB50044 */  sw         $s5, 0x44($sp)
/* 8FE68 800D9AA8 0080A821 */  addu       $s5, $a0, $zero
/* 8FE6C 800D9AAC AFB3003C */  sw         $s3, 0x3C($sp)
/* 8FE70 800D9AB0 00A09821 */  addu       $s3, $a1, $zero
/* 8FE74 800D9AB4 AFB7004C */  sw         $s7, 0x4C($sp)
/* 8FE78 800D9AB8 00C0B821 */  addu       $s7, $a2, $zero
/* 8FE7C 800D9ABC 02602021 */  addu       $a0, $s3, $zero
/* 8FE80 800D9AC0 AFBF0050 */  sw         $ra, 0x50($sp)
/* 8FE84 800D9AC4 AFB60048 */  sw         $s6, 0x48($sp)
/* 8FE88 800D9AC8 AFB40040 */  sw         $s4, 0x40($sp)
/* 8FE8C 800D9ACC AFB20038 */  sw         $s2, 0x38($sp)
/* 8FE90 800D9AD0 AFB10034 */  sw         $s1, 0x34($sp)
/* 8FE94 800D9AD4 0C002723 */  jal        func_80009C8C
/* 8FE98 800D9AD8 AFB00030 */   sw        $s0, 0x30($sp)
/* 8FE9C 800D9ADC 3C038013 */  lui        $v1, %hi(D_race_80132090)
/* 8FEA0 800D9AE0 8C642090 */  lw         $a0, %lo(D_race_80132090)($v1)
/* 8FEA4 800D9AE4 0C01FB65 */  jal        func_8007ED94
/* 8FEA8 800D9AE8 AEA20054 */   sw        $v0, 0x54($s5)
/* 8FEAC 800D9AEC 8EB00054 */  lw         $s0, 0x54($s5)
/* 8FEB0 800D9AF0 00102040 */  sll        $a0, $s0, 1
/* 8FEB4 800D9AF4 00902021 */  addu       $a0, $a0, $s0
/* 8FEB8 800D9AF8 00042080 */  sll        $a0, $a0, 2
/* 8FEBC 800D9AFC 00902023 */  subu       $a0, $a0, $s0
/* 8FEC0 800D9B00 00042080 */  sll        $a0, $a0, 2
/* 8FEC4 800D9B04 0C00943C */  jal        func_800250F0
/* 8FEC8 800D9B08 24840008 */   addiu     $a0, $a0, 0x8
/* 8FECC 800D9B0C 24420008 */  addiu      $v0, $v0, 0x8
/* 8FED0 800D9B10 0040A021 */  addu       $s4, $v0, $zero
/* 8FED4 800D9B14 02809021 */  addu       $s2, $s4, $zero
/* 8FED8 800D9B18 2611FFFF */  addiu      $s1, $s0, -0x1
/* 8FEDC 800D9B1C 06200007 */  bltz       $s1, .Lrace_800D9B3C
/* 8FEE0 800D9B20 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 8FEE4 800D9B24 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D9B28:
/* 8FEE8 800D9B28 0C0357F4 */  jal        func_race_800D5FD0
/* 8FEEC 800D9B2C 02402021 */   addu      $a0, $s2, $zero
/* 8FEF0 800D9B30 2631FFFF */  addiu      $s1, $s1, -0x1
/* 8FEF4 800D9B34 1630FFFC */  bne        $s1, $s0, .Lrace_800D9B28
/* 8FEF8 800D9B38 2652002C */   addiu     $s2, $s2, 0x2C
.Lrace_800D9B3C:
/* 8FEFC 800D9B3C 0C01FB72 */  jal        func_8007EDC8
/* 8FF00 800D9B40 AEB40088 */   sw        $s4, 0x88($s5)
/* 8FF04 800D9B44 8EA20088 */  lw         $v0, 0x88($s5)
/* 8FF08 800D9B48 14400008 */  bnez       $v0, .Lrace_800D9B6C
/* 8FF0C 800D9B4C 00009021 */   addu      $s2, $zero, $zero
/* 8FF10 800D9B50 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 8FF14 800D9B54 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 8FF18 800D9B58 00002821 */  addu       $a1, $zero, $zero
/* 8FF1C 800D9B5C 00A03021 */  addu       $a2, $a1, $zero
/* 8FF20 800D9B60 0C011ACF */  jal        func_80046B3C
/* 8FF24 800D9B64 00A03821 */   addu      $a3, $a1, $zero
/* 8FF28 800D9B68 00009021 */  addu       $s2, $zero, $zero
.Lrace_800D9B6C:
/* 8FF2C 800D9B6C 27B40010 */  addiu      $s4, $sp, 0x10
/* 8FF30 800D9B70 2416FFFF */  addiu      $s6, $zero, -0x1
/* 8FF34 800D9B74 02408821 */  addu       $s1, $s2, $zero
.Lrace_800D9B78:
/* 8FF38 800D9B78 8EA20054 */  lw         $v0, 0x54($s5)
/* 8FF3C 800D9B7C 0242102B */  sltu       $v0, $s2, $v0
/* 8FF40 800D9B80 10400063 */  beqz       $v0, .Lrace_800D9D10
/* 8FF44 800D9B84 02602021 */   addu      $a0, $s3, $zero
/* 8FF48 800D9B88 0C0026F4 */  jal        func_80009BD0
/* 8FF4C 800D9B8C 24050027 */   addiu     $a1, $zero, 0x27
/* 8FF50 800D9B90 0C002680 */  jal        func_80009A00
/* 8FF54 800D9B94 02602021 */   addu      $a0, $s3, $zero
/* 8FF58 800D9B98 AFA20010 */  sw         $v0, 0x10($sp)
/* 8FF5C 800D9B9C 02602021 */  addu       $a0, $s3, $zero
/* 8FF60 800D9BA0 0C0026F4 */  jal        func_80009BD0
/* 8FF64 800D9BA4 24050005 */   addiu     $a1, $zero, 0x5
/* 8FF68 800D9BA8 00002021 */  addu       $a0, $zero, $zero
/* 8FF6C 800D9BAC 02801821 */  addu       $v1, $s4, $zero
.Lrace_800D9BB0:
/* 8FF70 800D9BB0 AC760004 */  sw         $s6, 0x4($v1)
/* 8FF74 800D9BB4 24840001 */  addiu      $a0, $a0, 0x1
/* 8FF78 800D9BB8 2C820003 */  sltiu      $v0, $a0, 0x3
/* 8FF7C 800D9BBC 1440FFFC */  bnez       $v0, .Lrace_800D9BB0
/* 8FF80 800D9BC0 24630004 */   addiu     $v1, $v1, 0x4
/* 8FF84 800D9BC4 AFB50020 */  sw         $s5, 0x20($sp)
/* 8FF88 800D9BC8 AFA00024 */  sw         $zero, 0x24($sp)
/* 8FF8C 800D9BCC AFA00028 */  sw         $zero, 0x28($sp)
/* 8FF90 800D9BD0 AFA0002C */  sw         $zero, 0x2C($sp)
.Lrace_800D9BD4:
/* 8FF94 800D9BD4 8E620028 */  lw         $v0, 0x28($s3)
/* 8FF98 800D9BD8 844400A0 */  lh         $a0, 0xA0($v0)
/* 8FF9C 800D9BDC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 8FFA0 800D9BE0 0040F809 */  jalr       $v0
/* 8FFA4 800D9BE4 02642021 */   addu      $a0, $s3, $a0
/* 8FFA8 800D9BE8 00401821 */  addu       $v1, $v0, $zero
/* 8FFAC 800D9BEC 24020006 */  addiu      $v0, $zero, 0x6
/* 8FFB0 800D9BF0 10620040 */  beq        $v1, $v0, .Lrace_800D9CF4
/* 8FFB4 800D9BF4 24020027 */   addiu     $v0, $zero, 0x27
/* 8FFB8 800D9BF8 10620011 */  beq        $v1, $v0, .Lrace_800D9C40
/* 8FFBC 800D9BFC 2402003B */   addiu     $v0, $zero, 0x3B
/* 8FFC0 800D9C00 14620035 */  bne        $v1, $v0, .Lrace_800D9CD8
/* 8FFC4 800D9C04 00002821 */   addu      $a1, $zero, $zero
/* 8FFC8 800D9C08 0C0025F8 */  jal        func_800097E0
/* 8FFCC 800D9C0C 02602021 */   addu      $a0, $s3, $zero
/* 8FFD0 800D9C10 02602021 */  addu       $a0, $s3, $zero
/* 8FFD4 800D9C14 0C0025F8 */  jal        func_800097E0
/* 8FFD8 800D9C18 E7A00024 */   swc1      $f0, 0x24($sp)
/* 8FFDC 800D9C1C 02602021 */  addu       $a0, $s3, $zero
/* 8FFE0 800D9C20 0C0025F8 */  jal        func_800097E0
/* 8FFE4 800D9C24 E7A00028 */   swc1      $f0, 0x28($sp)
/* 8FFE8 800D9C28 12E0FFEA */  beqz       $s7, .Lrace_800D9BD4
/* 8FFEC 800D9C2C E7A0002C */   swc1      $f0, 0x2C($sp)
/* 8FFF0 800D9C30 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 8FFF4 800D9C34 46000007 */  neg.s      $f0, $f0
/* 8FFF8 800D9C38 080366F5 */  j          .Lrace_800D9BD4
/* 8FFFC 800D9C3C E7A00028 */   swc1      $f0, 0x28($sp)
.Lrace_800D9C40:
/* 90000 800D9C40 8E620028 */  lw         $v0, 0x28($s3)
/* 90004 800D9C44 844400A0 */  lh         $a0, 0xA0($v0)
/* 90008 800D9C48 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 9000C 800D9C4C 0040F809 */  jalr       $v0
/* 90010 800D9C50 02642021 */   addu      $a0, $s3, $a0
/* 90014 800D9C54 00401821 */  addu       $v1, $v0, $zero
/* 90018 800D9C58 24020036 */  addiu      $v0, $zero, 0x36
/* 9001C 800D9C5C 1062000C */  beq        $v1, $v0, .Lrace_800D9C90
/* 90020 800D9C60 2C620037 */   sltiu     $v0, $v1, 0x37
/* 90024 800D9C64 10400005 */  beqz       $v0, .Lrace_800D9C7C
/* 90028 800D9C68 24020034 */   addiu     $v0, $zero, 0x34
/* 9002C 800D9C6C 1062000A */  beq        $v1, $v0, .Lrace_800D9C98
/* 90030 800D9C70 24100003 */   addiu     $s0, $zero, 0x3
/* 90034 800D9C74 0803672A */  j          .Lrace_800D9CA8
/* 90038 800D9C78 00000000 */   nop
.Lrace_800D9C7C:
/* 9003C 800D9C7C 24020037 */  addiu      $v0, $zero, 0x37
/* 90040 800D9C80 10620007 */  beq        $v1, $v0, .Lrace_800D9CA0
/* 90044 800D9C84 24100003 */   addiu     $s0, $zero, 0x3
/* 90048 800D9C88 0803672A */  j          .Lrace_800D9CA8
/* 9004C 800D9C8C 00000000 */   nop
.Lrace_800D9C90:
/* 90050 800D9C90 08036730 */  j          .Lrace_800D9CC0
/* 90054 800D9C94 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D9C98:
/* 90058 800D9C98 08036730 */  j          .Lrace_800D9CC0
/* 9005C 800D9C9C 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800D9CA0:
/* 90060 800D9CA0 08036730 */  j          .Lrace_800D9CC0
/* 90064 800D9CA4 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800D9CA8:
/* 90068 800D9CA8 8E620028 */  lw         $v0, 0x28($s3)
/* 9006C 800D9CAC 00002821 */  addu       $a1, $zero, $zero
/* 90070 800D9CB0 84440098 */  lh         $a0, 0x98($v0)
/* 90074 800D9CB4 8C42009C */  lw         $v0, 0x9C($v0)
/* 90078 800D9CB8 0040F809 */  jalr       $v0
/* 9007C 800D9CBC 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D9CC0:
/* 90080 800D9CC0 0C002680 */  jal        func_80009A00
/* 90084 800D9CC4 02602021 */   addu      $a0, $s3, $zero
/* 90088 800D9CC8 00101880 */  sll        $v1, $s0, 2
/* 9008C 800D9CCC 02831821 */  addu       $v1, $s4, $v1
/* 90090 800D9CD0 080366F5 */  j          .Lrace_800D9BD4
/* 90094 800D9CD4 AC620004 */   sw        $v0, 0x4($v1)
.Lrace_800D9CD8:
/* 90098 800D9CD8 8E620028 */  lw         $v0, 0x28($s3)
/* 9009C 800D9CDC 84440098 */  lh         $a0, 0x98($v0)
/* 900A0 800D9CE0 8C42009C */  lw         $v0, 0x9C($v0)
/* 900A4 800D9CE4 0040F809 */  jalr       $v0
/* 900A8 800D9CE8 02642021 */   addu      $a0, $s3, $a0
/* 900AC 800D9CEC 080366F5 */  j          .Lrace_800D9BD4
/* 900B0 800D9CF0 00000000 */   nop
.Lrace_800D9CF4:
/* 900B4 800D9CF4 27A50010 */  addiu      $a1, $sp, 0x10
/* 900B8 800D9CF8 8EA40088 */  lw         $a0, 0x88($s5)
/* 900BC 800D9CFC 26520001 */  addiu      $s2, $s2, 0x1
/* 900C0 800D9D00 0C035816 */  jal        func_race_800D6058
/* 900C4 800D9D04 00912021 */   addu      $a0, $a0, $s1
/* 900C8 800D9D08 080366DE */  j          .Lrace_800D9B78
/* 900CC 800D9D0C 2631002C */   addiu     $s1, $s1, 0x2C
.Lrace_800D9D10:
/* 900D0 800D9D10 0C0026F4 */  jal        func_80009BD0
/* 900D4 800D9D14 24050006 */   addiu     $a1, $zero, 0x6
/* 900D8 800D9D18 8FBF0050 */  lw         $ra, 0x50($sp)
/* 900DC 800D9D1C 8FB7004C */  lw         $s7, 0x4C($sp)
/* 900E0 800D9D20 8FB60048 */  lw         $s6, 0x48($sp)
/* 900E4 800D9D24 8FB50044 */  lw         $s5, 0x44($sp)
/* 900E8 800D9D28 8FB40040 */  lw         $s4, 0x40($sp)
/* 900EC 800D9D2C 8FB3003C */  lw         $s3, 0x3C($sp)
/* 900F0 800D9D30 8FB20038 */  lw         $s2, 0x38($sp)
/* 900F4 800D9D34 8FB10034 */  lw         $s1, 0x34($sp)
/* 900F8 800D9D38 8FB00030 */  lw         $s0, 0x30($sp)
/* 900FC 800D9D3C 03E00008 */  jr         $ra
/* 90100 800D9D40 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_race_800D9D44
/* 90104 800D9D44 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 90108 800D9D48 AFB50054 */  sw         $s5, 0x54($sp)
/* 9010C 800D9D4C 0080A821 */  addu       $s5, $a0, $zero
/* 90110 800D9D50 AFB3004C */  sw         $s3, 0x4C($sp)
/* 90114 800D9D54 00A09821 */  addu       $s3, $a1, $zero
/* 90118 800D9D58 AFB7005C */  sw         $s7, 0x5C($sp)
/* 9011C 800D9D5C 00C0B821 */  addu       $s7, $a2, $zero
/* 90120 800D9D60 02602021 */  addu       $a0, $s3, $zero
/* 90124 800D9D64 AFBF0060 */  sw         $ra, 0x60($sp)
/* 90128 800D9D68 AFB60058 */  sw         $s6, 0x58($sp)
/* 9012C 800D9D6C AFB40050 */  sw         $s4, 0x50($sp)
/* 90130 800D9D70 AFB20048 */  sw         $s2, 0x48($sp)
/* 90134 800D9D74 AFB10044 */  sw         $s1, 0x44($sp)
/* 90138 800D9D78 0C002723 */  jal        func_80009C8C
/* 9013C 800D9D7C AFB00040 */   sw        $s0, 0x40($sp)
/* 90140 800D9D80 3C038013 */  lui        $v1, %hi(D_race_80132090)
/* 90144 800D9D84 8C642090 */  lw         $a0, %lo(D_race_80132090)($v1)
/* 90148 800D9D88 0C01FB65 */  jal        func_8007ED94
/* 9014C 800D9D8C AEA20058 */   sw        $v0, 0x58($s5)
/* 90150 800D9D90 8EB00058 */  lw         $s0, 0x58($s5)
/* 90154 800D9D94 001020C0 */  sll        $a0, $s0, 3
/* 90158 800D9D98 00902023 */  subu       $a0, $a0, $s0
/* 9015C 800D9D9C 000420C0 */  sll        $a0, $a0, 3
/* 90160 800D9DA0 0C00943C */  jal        func_800250F0
/* 90164 800D9DA4 24840008 */   addiu     $a0, $a0, 0x8
/* 90168 800D9DA8 24420008 */  addiu      $v0, $v0, 0x8
/* 9016C 800D9DAC 0040A021 */  addu       $s4, $v0, $zero
/* 90170 800D9DB0 02809021 */  addu       $s2, $s4, $zero
/* 90174 800D9DB4 2611FFFF */  addiu      $s1, $s0, -0x1
/* 90178 800D9DB8 06200007 */  bltz       $s1, .Lrace_800D9DD8
/* 9017C 800D9DBC AE90FFF8 */   sw        $s0, -0x8($s4)
/* 90180 800D9DC0 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800D9DC4:
/* 90184 800D9DC4 0C0370F0 */  jal        func_race_800DC3C0
/* 90188 800D9DC8 02402021 */   addu      $a0, $s2, $zero
/* 9018C 800D9DCC 2631FFFF */  addiu      $s1, $s1, -0x1
/* 90190 800D9DD0 1630FFFC */  bne        $s1, $s0, .Lrace_800D9DC4
/* 90194 800D9DD4 26520038 */   addiu     $s2, $s2, 0x38
.Lrace_800D9DD8:
/* 90198 800D9DD8 0C01FB72 */  jal        func_8007EDC8
/* 9019C 800D9DDC AEB4008C */   sw        $s4, 0x8C($s5)
/* 901A0 800D9DE0 8EA2008C */  lw         $v0, 0x8C($s5)
/* 901A4 800D9DE4 14400008 */  bnez       $v0, .Lrace_800D9E08
/* 901A8 800D9DE8 00009021 */   addu      $s2, $zero, $zero
/* 901AC 800D9DEC 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 901B0 800D9DF0 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 901B4 800D9DF4 00002821 */  addu       $a1, $zero, $zero
/* 901B8 800D9DF8 00A03021 */  addu       $a2, $a1, $zero
/* 901BC 800D9DFC 0C011ACF */  jal        func_80046B3C
/* 901C0 800D9E00 00A03821 */   addu      $a3, $a1, $zero
/* 901C4 800D9E04 00009021 */  addu       $s2, $zero, $zero
.Lrace_800D9E08:
/* 901C8 800D9E08 27B40010 */  addiu      $s4, $sp, 0x10
/* 901CC 800D9E0C 2416FFFF */  addiu      $s6, $zero, -0x1
/* 901D0 800D9E10 02408821 */  addu       $s1, $s2, $zero
.Lrace_800D9E14:
/* 901D4 800D9E14 8EA20058 */  lw         $v0, 0x58($s5)
/* 901D8 800D9E18 0242102B */  sltu       $v0, $s2, $v0
/* 901DC 800D9E1C 1040008F */  beqz       $v0, .Lrace_800DA05C
/* 901E0 800D9E20 02602021 */   addu      $a0, $s3, $zero
/* 901E4 800D9E24 0C0026F4 */  jal        func_80009BD0
/* 901E8 800D9E28 24050027 */   addiu     $a1, $zero, 0x27
/* 901EC 800D9E2C 0C002680 */  jal        func_80009A00
/* 901F0 800D9E30 02602021 */   addu      $a0, $s3, $zero
/* 901F4 800D9E34 AFA20010 */  sw         $v0, 0x10($sp)
/* 901F8 800D9E38 8E620028 */  lw         $v0, 0x28($s3)
/* 901FC 800D9E3C 844400A0 */  lh         $a0, 0xA0($v0)
/* 90200 800D9E40 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 90204 800D9E44 0040F809 */  jalr       $v0
/* 90208 800D9E48 02642021 */   addu      $a0, $s3, $a0
/* 9020C 800D9E4C 00401821 */  addu       $v1, $v0, $zero
/* 90210 800D9E50 2402003C */  addiu      $v0, $zero, 0x3C
/* 90214 800D9E54 14620008 */  bne        $v1, $v0, .Lrace_800D9E78
/* 90218 800D9E58 AFA0003C */   sw        $zero, 0x3C($sp)
/* 9021C 800D9E5C 24020001 */  addiu      $v0, $zero, 0x1
/* 90220 800D9E60 AFA2003C */  sw         $v0, 0x3C($sp)
/* 90224 800D9E64 02602021 */  addu       $a0, $s3, $zero
/* 90228 800D9E68 0C0026F4 */  jal        func_80009BD0
/* 9022C 800D9E6C 24050005 */   addiu     $a1, $zero, 0x5
/* 90230 800D9E70 080367A7 */  j          .Lrace_800D9E9C
/* 90234 800D9E74 00002021 */   addu      $a0, $zero, $zero
.Lrace_800D9E78:
/* 90238 800D9E78 24020005 */  addiu      $v0, $zero, 0x5
/* 9023C 800D9E7C 10620006 */  beq        $v1, $v0, .Lrace_800D9E98
/* 90240 800D9E80 24050005 */   addiu     $a1, $zero, 0x5
/* 90244 800D9E84 8E620028 */  lw         $v0, 0x28($s3)
/* 90248 800D9E88 84440098 */  lh         $a0, 0x98($v0)
/* 9024C 800D9E8C 8C42009C */  lw         $v0, 0x9C($v0)
/* 90250 800D9E90 0040F809 */  jalr       $v0
/* 90254 800D9E94 02642021 */   addu      $a0, $s3, $a0
.Lrace_800D9E98:
/* 90258 800D9E98 00002021 */  addu       $a0, $zero, $zero
.Lrace_800D9E9C:
/* 9025C 800D9E9C 02801821 */  addu       $v1, $s4, $zero
.Lrace_800D9EA0:
/* 90260 800D9EA0 AC760004 */  sw         $s6, 0x4($v1)
/* 90264 800D9EA4 24840001 */  addiu      $a0, $a0, 0x1
/* 90268 800D9EA8 2C820003 */  sltiu      $v0, $a0, 0x3
/* 9026C 800D9EAC 1440FFFC */  bnez       $v0, .Lrace_800D9EA0
/* 90270 800D9EB0 24630004 */   addiu     $v1, $v1, 0x4
/* 90274 800D9EB4 AFB50020 */  sw         $s5, 0x20($sp)
/* 90278 800D9EB8 AFA00024 */  sw         $zero, 0x24($sp)
/* 9027C 800D9EBC AFA00028 */  sw         $zero, 0x28($sp)
/* 90280 800D9EC0 AFA0002C */  sw         $zero, 0x2C($sp)
/* 90284 800D9EC4 AFA00030 */  sw         $zero, 0x30($sp)
/* 90288 800D9EC8 AFB60034 */  sw         $s6, 0x34($sp)
/* 9028C 800D9ECC AFA00038 */  sw         $zero, 0x38($sp)
.Lrace_800D9ED0:
/* 90290 800D9ED0 8E620028 */  lw         $v0, 0x28($s3)
/* 90294 800D9ED4 844400A0 */  lh         $a0, 0xA0($v0)
/* 90298 800D9ED8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 9029C 800D9EDC 0040F809 */  jalr       $v0
/* 902A0 800D9EE0 02642021 */   addu      $a0, $s3, $a0
/* 902A4 800D9EE4 00401821 */  addu       $v1, $v0, $zero
/* 902A8 800D9EE8 24020006 */  addiu      $v0, $zero, 0x6
/* 902AC 800D9EEC 10620054 */  beq        $v1, $v0, .Lrace_800DA040
/* 902B0 800D9EF0 2402004C */   addiu     $v0, $zero, 0x4C
/* 902B4 800D9EF4 10620020 */  beq        $v1, $v0, .Lrace_800D9F78
/* 902B8 800D9EF8 2C62004D */   sltiu     $v0, $v1, 0x4D
/* 902BC 800D9EFC 10400007 */  beqz       $v0, .Lrace_800D9F1C
/* 902C0 800D9F00 24020027 */   addiu     $v0, $zero, 0x27
/* 902C4 800D9F04 10620020 */  beq        $v1, $v0, .Lrace_800D9F88
/* 902C8 800D9F08 2402003E */   addiu     $v0, $zero, 0x3E
/* 902CC 800D9F0C 10620008 */  beq        $v1, $v0, .Lrace_800D9F30
/* 902D0 800D9F10 00000000 */   nop
/* 902D4 800D9F14 08036808 */  j          .Lrace_800DA020
/* 902D8 800D9F18 00000000 */   nop
.Lrace_800D9F1C:
/* 902DC 800D9F1C 2402005A */  addiu      $v0, $zero, 0x5A
/* 902E0 800D9F20 10620011 */  beq        $v1, $v0, .Lrace_800D9F68
/* 902E4 800D9F24 00000000 */   nop
/* 902E8 800D9F28 08036808 */  j          .Lrace_800DA020
/* 902EC 800D9F2C 00000000 */   nop
.Lrace_800D9F30:
/* 902F0 800D9F30 0C0025F8 */  jal        func_800097E0
/* 902F4 800D9F34 02602021 */   addu      $a0, $s3, $zero
/* 902F8 800D9F38 02602021 */  addu       $a0, $s3, $zero
/* 902FC 800D9F3C 0C0025F8 */  jal        func_800097E0
/* 90300 800D9F40 E7A00024 */   swc1      $f0, 0x24($sp)
/* 90304 800D9F44 02602021 */  addu       $a0, $s3, $zero
/* 90308 800D9F48 0C0025F8 */  jal        func_800097E0
/* 9030C 800D9F4C E7A00028 */   swc1      $f0, 0x28($sp)
/* 90310 800D9F50 12E0FFDF */  beqz       $s7, .Lrace_800D9ED0
/* 90314 800D9F54 E7A0002C */   swc1      $f0, 0x2C($sp)
/* 90318 800D9F58 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 9031C 800D9F5C 46000007 */  neg.s      $f0, $f0
/* 90320 800D9F60 080367B4 */  j          .Lrace_800D9ED0
/* 90324 800D9F64 E7A00028 */   swc1      $f0, 0x28($sp)
.Lrace_800D9F68:
/* 90328 800D9F68 0C002680 */  jal        func_80009A00
/* 9032C 800D9F6C 02602021 */   addu      $a0, $s3, $zero
/* 90330 800D9F70 080367B4 */  j          .Lrace_800D9ED0
/* 90334 800D9F74 AFA20030 */   sw        $v0, 0x30($sp)
.Lrace_800D9F78:
/* 90338 800D9F78 0C002680 */  jal        func_80009A00
/* 9033C 800D9F7C 02602021 */   addu      $a0, $s3, $zero
/* 90340 800D9F80 080367B4 */  j          .Lrace_800D9ED0
/* 90344 800D9F84 AFA20034 */   sw        $v0, 0x34($sp)
.Lrace_800D9F88:
/* 90348 800D9F88 8E620028 */  lw         $v0, 0x28($s3)
/* 9034C 800D9F8C 844400A0 */  lh         $a0, 0xA0($v0)
/* 90350 800D9F90 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 90354 800D9F94 0040F809 */  jalr       $v0
/* 90358 800D9F98 02642021 */   addu      $a0, $s3, $a0
/* 9035C 800D9F9C 00401821 */  addu       $v1, $v0, $zero
/* 90360 800D9FA0 24020036 */  addiu      $v0, $zero, 0x36
/* 90364 800D9FA4 1062000C */  beq        $v1, $v0, .Lrace_800D9FD8
/* 90368 800D9FA8 2C620037 */   sltiu     $v0, $v1, 0x37
/* 9036C 800D9FAC 10400005 */  beqz       $v0, .Lrace_800D9FC4
/* 90370 800D9FB0 24020034 */   addiu     $v0, $zero, 0x34
/* 90374 800D9FB4 1062000A */  beq        $v1, $v0, .Lrace_800D9FE0
/* 90378 800D9FB8 24100003 */   addiu     $s0, $zero, 0x3
/* 9037C 800D9FBC 080367FC */  j          .Lrace_800D9FF0
/* 90380 800D9FC0 00000000 */   nop
.Lrace_800D9FC4:
/* 90384 800D9FC4 24020037 */  addiu      $v0, $zero, 0x37
/* 90388 800D9FC8 10620007 */  beq        $v1, $v0, .Lrace_800D9FE8
/* 9038C 800D9FCC 24100003 */   addiu     $s0, $zero, 0x3
/* 90390 800D9FD0 080367FC */  j          .Lrace_800D9FF0
/* 90394 800D9FD4 00000000 */   nop
.Lrace_800D9FD8:
/* 90398 800D9FD8 08036802 */  j          .Lrace_800DA008
/* 9039C 800D9FDC 00008021 */   addu      $s0, $zero, $zero
.Lrace_800D9FE0:
/* 903A0 800D9FE0 08036802 */  j          .Lrace_800DA008
/* 903A4 800D9FE4 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800D9FE8:
/* 903A8 800D9FE8 08036802 */  j          .Lrace_800DA008
/* 903AC 800D9FEC 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800D9FF0:
/* 903B0 800D9FF0 8E620028 */  lw         $v0, 0x28($s3)
/* 903B4 800D9FF4 00002821 */  addu       $a1, $zero, $zero
/* 903B8 800D9FF8 84440098 */  lh         $a0, 0x98($v0)
/* 903BC 800D9FFC 8C42009C */  lw         $v0, 0x9C($v0)
/* 903C0 800DA000 0040F809 */  jalr       $v0
/* 903C4 800DA004 02642021 */   addu      $a0, $s3, $a0
.Lrace_800DA008:
/* 903C8 800DA008 0C002680 */  jal        func_80009A00
/* 903CC 800DA00C 02602021 */   addu      $a0, $s3, $zero
/* 903D0 800DA010 00101880 */  sll        $v1, $s0, 2
/* 903D4 800DA014 02831821 */  addu       $v1, $s4, $v1
/* 903D8 800DA018 080367B4 */  j          .Lrace_800D9ED0
/* 903DC 800DA01C AC620004 */   sw        $v0, 0x4($v1)
.Lrace_800DA020:
/* 903E0 800DA020 8E620028 */  lw         $v0, 0x28($s3)
/* 903E4 800DA024 00002821 */  addu       $a1, $zero, $zero
/* 903E8 800DA028 84440098 */  lh         $a0, 0x98($v0)
/* 903EC 800DA02C 8C42009C */  lw         $v0, 0x9C($v0)
/* 903F0 800DA030 0040F809 */  jalr       $v0
/* 903F4 800DA034 02642021 */   addu      $a0, $s3, $a0
/* 903F8 800DA038 080367B4 */  j          .Lrace_800D9ED0
/* 903FC 800DA03C 00000000 */   nop
.Lrace_800DA040:
/* 90400 800DA040 27A50010 */  addiu      $a1, $sp, 0x10
/* 90404 800DA044 8EA4008C */  lw         $a0, 0x8C($s5)
/* 90408 800DA048 26520001 */  addiu      $s2, $s2, 0x1
/* 9040C 800DA04C 0C03711C */  jal        func_race_800DC470
/* 90410 800DA050 00912021 */   addu      $a0, $a0, $s1
/* 90414 800DA054 08036785 */  j          .Lrace_800D9E14
/* 90418 800DA058 26310038 */   addiu     $s1, $s1, 0x38
.Lrace_800DA05C:
/* 9041C 800DA05C 0C0026F4 */  jal        func_80009BD0
/* 90420 800DA060 24050006 */   addiu     $a1, $zero, 0x6
/* 90424 800DA064 8FBF0060 */  lw         $ra, 0x60($sp)
/* 90428 800DA068 8FB7005C */  lw         $s7, 0x5C($sp)
/* 9042C 800DA06C 8FB60058 */  lw         $s6, 0x58($sp)
/* 90430 800DA070 8FB50054 */  lw         $s5, 0x54($sp)
/* 90434 800DA074 8FB40050 */  lw         $s4, 0x50($sp)
/* 90438 800DA078 8FB3004C */  lw         $s3, 0x4C($sp)
/* 9043C 800DA07C 8FB20048 */  lw         $s2, 0x48($sp)
/* 90440 800DA080 8FB10044 */  lw         $s1, 0x44($sp)
/* 90444 800DA084 8FB00040 */  lw         $s0, 0x40($sp)
/* 90448 800DA088 03E00008 */  jr         $ra
/* 9044C 800DA08C 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_race_800DA090
/* 90450 800DA090 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 90454 800DA094 AFB5003C */  sw         $s5, 0x3C($sp)
/* 90458 800DA098 0080A821 */  addu       $s5, $a0, $zero
/* 9045C 800DA09C AFB30034 */  sw         $s3, 0x34($sp)
/* 90460 800DA0A0 00A09821 */  addu       $s3, $a1, $zero
/* 90464 800DA0A4 02602021 */  addu       $a0, $s3, $zero
/* 90468 800DA0A8 AFBF004C */  sw         $ra, 0x4C($sp)
/* 9046C 800DA0AC AFBE0048 */  sw         $fp, 0x48($sp)
/* 90470 800DA0B0 AFB70044 */  sw         $s7, 0x44($sp)
/* 90474 800DA0B4 AFB60040 */  sw         $s6, 0x40($sp)
/* 90478 800DA0B8 AFB40038 */  sw         $s4, 0x38($sp)
/* 9047C 800DA0BC AFB20030 */  sw         $s2, 0x30($sp)
/* 90480 800DA0C0 AFB1002C */  sw         $s1, 0x2C($sp)
/* 90484 800DA0C4 0C002723 */  jal        func_80009C8C
/* 90488 800DA0C8 AFB00028 */   sw        $s0, 0x28($sp)
/* 9048C 800DA0CC 3C038013 */  lui        $v1, %hi(D_race_80132090)
/* 90490 800DA0D0 8C642090 */  lw         $a0, %lo(D_race_80132090)($v1)
/* 90494 800DA0D4 0C01FB65 */  jal        func_8007ED94
/* 90498 800DA0D8 AEA20048 */   sw        $v0, 0x48($s5)
/* 9049C 800DA0DC 8EB00048 */  lw         $s0, 0x48($s5)
/* 904A0 800DA0E0 001020C0 */  sll        $a0, $s0, 3
/* 904A4 800DA0E4 00902021 */  addu       $a0, $a0, $s0
/* 904A8 800DA0E8 00042080 */  sll        $a0, $a0, 2
/* 904AC 800DA0EC 0C00943C */  jal        func_800250F0
/* 904B0 800DA0F0 24840008 */   addiu     $a0, $a0, 0x8
/* 904B4 800DA0F4 24420008 */  addiu      $v0, $v0, 0x8
/* 904B8 800DA0F8 0040A021 */  addu       $s4, $v0, $zero
/* 904BC 800DA0FC 02809021 */  addu       $s2, $s4, $zero
/* 904C0 800DA100 2611FFFF */  addiu      $s1, $s0, -0x1
/* 904C4 800DA104 06200007 */  bltz       $s1, .Lrace_800DA124
/* 904C8 800DA108 AE90FFF8 */   sw        $s0, -0x8($s4)
/* 904CC 800DA10C 2410FFFF */  addiu      $s0, $zero, -0x1
.Lrace_800DA110:
/* 904D0 800DA110 0C0379AC */  jal        func_race_800DE6B0
/* 904D4 800DA114 02402021 */   addu      $a0, $s2, $zero
/* 904D8 800DA118 2631FFFF */  addiu      $s1, $s1, -0x1
/* 904DC 800DA11C 1630FFFC */  bne        $s1, $s0, .Lrace_800DA110
/* 904E0 800DA120 26520024 */   addiu     $s2, $s2, 0x24
.Lrace_800DA124:
/* 904E4 800DA124 0C01FB72 */  jal        func_8007EDC8
/* 904E8 800DA128 AEB40080 */   sw        $s4, 0x80($s5)
/* 904EC 800DA12C 8EA20080 */  lw         $v0, 0x80($s5)
/* 904F0 800DA130 14400008 */  bnez       $v0, .Lrace_800DA154
/* 904F4 800DA134 00009021 */   addu      $s2, $zero, $zero
/* 904F8 800DA138 3C04800D */  lui        $a0, %hi(D_race_800CAB60)
/* 904FC 800DA13C 2484AB60 */  addiu      $a0, $a0, %lo(D_race_800CAB60)
/* 90500 800DA140 00002821 */  addu       $a1, $zero, $zero
/* 90504 800DA144 00A03021 */  addu       $a2, $a1, $zero
/* 90508 800DA148 0C011ACF */  jal        func_80046B3C
/* 9050C 800DA14C 00A03821 */   addu      $a3, $a1, $zero
/* 90510 800DA150 00009021 */  addu       $s2, $zero, $zero
.Lrace_800DA154:
/* 90514 800DA154 27B40010 */  addiu      $s4, $sp, 0x10
/* 90518 800DA158 241EFFFF */  addiu      $fp, $zero, -0x1
/* 9051C 800DA15C 24170036 */  addiu      $s7, $zero, 0x36
/* 90520 800DA160 24160037 */  addiu      $s6, $zero, 0x37
/* 90524 800DA164 02408821 */  addu       $s1, $s2, $zero
.Lrace_800DA168:
/* 90528 800DA168 8EA20048 */  lw         $v0, 0x48($s5)
/* 9052C 800DA16C 0242102B */  sltu       $v0, $s2, $v0
/* 90530 800DA170 1040005C */  beqz       $v0, .Lrace_800DA2E4
/* 90534 800DA174 02602021 */   addu      $a0, $s3, $zero
/* 90538 800DA178 0C0026F4 */  jal        func_80009BD0
/* 9053C 800DA17C 24050027 */   addiu     $a1, $zero, 0x27
/* 90540 800DA180 0C002680 */  jal        func_80009A00
/* 90544 800DA184 02602021 */   addu      $a0, $s3, $zero
/* 90548 800DA188 AFA20010 */  sw         $v0, 0x10($sp)
/* 9054C 800DA18C 02602021 */  addu       $a0, $s3, $zero
/* 90550 800DA190 0C0026F4 */  jal        func_80009BD0
/* 90554 800DA194 24050005 */   addiu     $a1, $zero, 0x5
/* 90558 800DA198 00002021 */  addu       $a0, $zero, $zero
/* 9055C 800DA19C 02801821 */  addu       $v1, $s4, $zero
.Lrace_800DA1A0:
/* 90560 800DA1A0 AC7E0004 */  sw         $fp, 0x4($v1)
/* 90564 800DA1A4 24840001 */  addiu      $a0, $a0, 0x1
/* 90568 800DA1A8 2C820003 */  sltiu      $v0, $a0, 0x3
/* 9056C 800DA1AC 1440FFFC */  bnez       $v0, .Lrace_800DA1A0
/* 90570 800DA1B0 24630004 */   addiu     $v1, $v1, 0x4
/* 90574 800DA1B4 24020001 */  addiu      $v0, $zero, 0x1
/* 90578 800DA1B8 AFB50020 */  sw         $s5, 0x20($sp)
.Lrace_800DA1BC:
/* 9057C 800DA1BC AFA20024 */  sw         $v0, 0x24($sp)
.Lrace_800DA1C0:
/* 90580 800DA1C0 8E620028 */  lw         $v0, 0x28($s3)
/* 90584 800DA1C4 844400A0 */  lh         $a0, 0xA0($v0)
/* 90588 800DA1C8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 9058C 800DA1CC 0040F809 */  jalr       $v0
/* 90590 800DA1D0 02642021 */   addu      $a0, $s3, $a0
/* 90594 800DA1D4 00401821 */  addu       $v1, $v0, $zero
/* 90598 800DA1D8 24020006 */  addiu      $v0, $zero, 0x6
/* 9059C 800DA1DC 1062003B */  beq        $v1, $v0, .Lrace_800DA2CC
/* 905A0 800DA1E0 27A50010 */   addiu     $a1, $sp, 0x10
/* 905A4 800DA1E4 1077000B */  beq        $v1, $s7, .Lrace_800DA214
/* 905A8 800DA1E8 2C620037 */   sltiu     $v0, $v1, 0x37
/* 905AC 800DA1EC 10400005 */  beqz       $v0, .Lrace_800DA204
/* 905B0 800DA1F0 24020027 */   addiu     $v0, $zero, 0x27
/* 905B4 800DA1F4 10620009 */  beq        $v1, $v0, .Lrace_800DA21C
/* 905B8 800DA1F8 00000000 */   nop
/* 905BC 800DA1FC 080368AB */  j          .Lrace_800DA2AC
/* 905C0 800DA200 00000000 */   nop
.Lrace_800DA204:
/* 905C4 800DA204 1076FFED */  beq        $v1, $s6, .Lrace_800DA1BC
/* 905C8 800DA208 24020002 */   addiu     $v0, $zero, 0x2
/* 905CC 800DA20C 080368AB */  j          .Lrace_800DA2AC
/* 905D0 800DA210 00000000 */   nop
.Lrace_800DA214:
/* 905D4 800DA214 08036870 */  j          .Lrace_800DA1C0
/* 905D8 800DA218 AFA00024 */   sw        $zero, 0x24($sp)
.Lrace_800DA21C:
/* 905DC 800DA21C 8E620028 */  lw         $v0, 0x28($s3)
/* 905E0 800DA220 844400A0 */  lh         $a0, 0xA0($v0)
/* 905E4 800DA224 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 905E8 800DA228 0040F809 */  jalr       $v0
/* 905EC 800DA22C 02642021 */   addu      $a0, $s3, $a0
/* 905F0 800DA230 00401821 */  addu       $v1, $v0, $zero
/* 905F4 800DA234 1077000B */  beq        $v1, $s7, .Lrace_800DA264
/* 905F8 800DA238 2C620037 */   sltiu     $v0, $v1, 0x37
/* 905FC 800DA23C 10400005 */  beqz       $v0, .Lrace_800DA254
/* 90600 800DA240 24020034 */   addiu     $v0, $zero, 0x34
/* 90604 800DA244 10620009 */  beq        $v1, $v0, .Lrace_800DA26C
/* 90608 800DA248 24100003 */   addiu     $s0, $zero, 0x3
/* 9060C 800DA24C 0803689F */  j          .Lrace_800DA27C
/* 90610 800DA250 00000000 */   nop
.Lrace_800DA254:
/* 90614 800DA254 10760007 */  beq        $v1, $s6, .Lrace_800DA274
/* 90618 800DA258 24100003 */   addiu     $s0, $zero, 0x3
/* 9061C 800DA25C 0803689F */  j          .Lrace_800DA27C
/* 90620 800DA260 00000000 */   nop
.Lrace_800DA264:
/* 90624 800DA264 080368A5 */  j          .Lrace_800DA294
/* 90628 800DA268 00008021 */   addu      $s0, $zero, $zero
.Lrace_800DA26C:
/* 9062C 800DA26C 080368A5 */  j          .Lrace_800DA294
/* 90630 800DA270 24100001 */   addiu     $s0, $zero, 0x1
.Lrace_800DA274:
/* 90634 800DA274 080368A5 */  j          .Lrace_800DA294
/* 90638 800DA278 24100002 */   addiu     $s0, $zero, 0x2
.Lrace_800DA27C:
/* 9063C 800DA27C 8E620028 */  lw         $v0, 0x28($s3)
/* 90640 800DA280 00002821 */  addu       $a1, $zero, $zero
/* 90644 800DA284 84440098 */  lh         $a0, 0x98($v0)
/* 90648 800DA288 8C42009C */  lw         $v0, 0x9C($v0)
/* 9064C 800DA28C 0040F809 */  jalr       $v0
/* 90650 800DA290 02642021 */   addu      $a0, $s3, $a0
.Lrace_800DA294:
/* 90654 800DA294 0C002680 */  jal        func_80009A00
/* 90658 800DA298 02602021 */   addu      $a0, $s3, $zero
/* 9065C 800DA29C 00101880 */  sll        $v1, $s0, 2
/* 90660 800DA2A0 02831821 */  addu       $v1, $s4, $v1
/* 90664 800DA2A4 08036870 */  j          .Lrace_800DA1C0
/* 90668 800DA2A8 AC620004 */   sw        $v0, 0x4($v1)
.Lrace_800DA2AC:
/* 9066C 800DA2AC 8E620028 */  lw         $v0, 0x28($s3)
/* 90670 800DA2B0 00002821 */  addu       $a1, $zero, $zero
/* 90674 800DA2B4 84440098 */  lh         $a0, 0x98($v0)
/* 90678 800DA2B8 8C42009C */  lw         $v0, 0x9C($v0)
/* 9067C 800DA2BC 0040F809 */  jalr       $v0
/* 90680 800DA2C0 02642021 */   addu      $a0, $s3, $a0
/* 90684 800DA2C4 08036870 */  j          .Lrace_800DA1C0
/* 90688 800DA2C8 00000000 */   nop
.Lrace_800DA2CC:
/* 9068C 800DA2CC 8EA40080 */  lw         $a0, 0x80($s5)
/* 90690 800DA2D0 26520001 */  addiu      $s2, $s2, 0x1
/* 90694 800DA2D4 0C0379D0 */  jal        func_race_800DE740
/* 90698 800DA2D8 00912021 */   addu      $a0, $a0, $s1
/* 9069C 800DA2DC 0803685A */  j          .Lrace_800DA168
/* 906A0 800DA2E0 26310024 */   addiu     $s1, $s1, 0x24
.Lrace_800DA2E4:
/* 906A4 800DA2E4 0C0026F4 */  jal        func_80009BD0
/* 906A8 800DA2E8 24050006 */   addiu     $a1, $zero, 0x6
/* 906AC 800DA2EC 8FBF004C */  lw         $ra, 0x4C($sp)
/* 906B0 800DA2F0 8FBE0048 */  lw         $fp, 0x48($sp)
/* 906B4 800DA2F4 8FB70044 */  lw         $s7, 0x44($sp)
/* 906B8 800DA2F8 8FB60040 */  lw         $s6, 0x40($sp)
/* 906BC 800DA2FC 8FB5003C */  lw         $s5, 0x3C($sp)
/* 906C0 800DA300 8FB40038 */  lw         $s4, 0x38($sp)
/* 906C4 800DA304 8FB30034 */  lw         $s3, 0x34($sp)
/* 906C8 800DA308 8FB20030 */  lw         $s2, 0x30($sp)
/* 906CC 800DA30C 8FB1002C */  lw         $s1, 0x2C($sp)
/* 906D0 800DA310 8FB00028 */  lw         $s0, 0x28($sp)
/* 906D4 800DA314 03E00008 */  jr         $ra
/* 906D8 800DA318 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_race_800DA31C
/* 906DC 800DA31C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 906E0 800DA320 AFB10014 */  sw         $s1, 0x14($sp)
/* 906E4 800DA324 00808821 */  addu       $s1, $a0, $zero
/* 906E8 800DA328 AFBF0018 */  sw         $ra, 0x18($sp)
/* 906EC 800DA32C AFB00010 */  sw         $s0, 0x10($sp)
/* 906F0 800DA330 8E24005C */  lw         $a0, 0x5C($s1)
/* 906F4 800DA334 10800018 */  beqz       $a0, .Lrace_800DA398
/* 906F8 800DA338 00000000 */   nop
/* 906FC 800DA33C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 90700 800DA340 00031040 */  sll        $v0, $v1, 1
/* 90704 800DA344 00431021 */  addu       $v0, $v0, $v1
/* 90708 800DA348 000210C0 */  sll        $v0, $v0, 3
/* 9070C 800DA34C 00431023 */  subu       $v0, $v0, $v1
/* 90710 800DA350 00021080 */  sll        $v0, $v0, 2
/* 90714 800DA354 00828021 */  addu       $s0, $a0, $v0
/* 90718 800DA358 1090000C */  beq        $a0, $s0, .Lrace_800DA38C
/* 9071C 800DA35C 00000000 */   nop
/* 90720 800DA360 2610FFA4 */  addiu      $s0, $s0, -0x5C
.Lrace_800DA364:
/* 90724 800DA364 8E02001C */  lw         $v0, 0x1C($s0)
/* 90728 800DA368 24050002 */  addiu      $a1, $zero, 0x2
/* 9072C 800DA36C 84440028 */  lh         $a0, 0x28($v0)
/* 90730 800DA370 8C42002C */  lw         $v0, 0x2C($v0)
/* 90734 800DA374 0040F809 */  jalr       $v0
/* 90738 800DA378 02042021 */   addu      $a0, $s0, $a0
/* 9073C 800DA37C 8E22005C */  lw         $v0, 0x5C($s1)
/* 90740 800DA380 5450FFF8 */  bnel       $v0, $s0, .Lrace_800DA364
/* 90744 800DA384 2610FFA4 */   addiu     $s0, $s0, -0x5C
/* 90748 800DA388 8E24005C */  lw         $a0, 0x5C($s1)
.Lrace_800DA38C:
/* 9074C 800DA38C 0C009444 */  jal        func_80025110
/* 90750 800DA390 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 90754 800DA394 AE20005C */  sw         $zero, 0x5C($s1)
.Lrace_800DA398:
/* 90758 800DA398 8E240060 */  lw         $a0, 0x60($s1)
/* 9075C 800DA39C 10800018 */  beqz       $a0, .Lrace_800DA400
/* 90760 800DA3A0 00000000 */   nop
/* 90764 800DA3A4 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 90768 800DA3A8 00031040 */  sll        $v0, $v1, 1
/* 9076C 800DA3AC 00431021 */  addu       $v0, $v0, $v1
/* 90770 800DA3B0 00021080 */  sll        $v0, $v0, 2
/* 90774 800DA3B4 00431021 */  addu       $v0, $v0, $v1
/* 90778 800DA3B8 00021080 */  sll        $v0, $v0, 2
/* 9077C 800DA3BC 00828021 */  addu       $s0, $a0, $v0
/* 90780 800DA3C0 1090000C */  beq        $a0, $s0, .Lrace_800DA3F4
/* 90784 800DA3C4 00000000 */   nop
/* 90788 800DA3C8 2610FFCC */  addiu      $s0, $s0, -0x34
.Lrace_800DA3CC:
/* 9078C 800DA3CC 8E02001C */  lw         $v0, 0x1C($s0)
/* 90790 800DA3D0 24050002 */  addiu      $a1, $zero, 0x2
/* 90794 800DA3D4 84440028 */  lh         $a0, 0x28($v0)
/* 90798 800DA3D8 8C42002C */  lw         $v0, 0x2C($v0)
/* 9079C 800DA3DC 0040F809 */  jalr       $v0
/* 907A0 800DA3E0 02042021 */   addu      $a0, $s0, $a0
/* 907A4 800DA3E4 8E220060 */  lw         $v0, 0x60($s1)
/* 907A8 800DA3E8 5450FFF8 */  bnel       $v0, $s0, .Lrace_800DA3CC
/* 907AC 800DA3EC 2610FFCC */   addiu     $s0, $s0, -0x34
/* 907B0 800DA3F0 8E240060 */  lw         $a0, 0x60($s1)
.Lrace_800DA3F4:
/* 907B4 800DA3F4 0C009444 */  jal        func_80025110
/* 907B8 800DA3F8 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 907BC 800DA3FC AE200060 */  sw         $zero, 0x60($s1)
.Lrace_800DA400:
/* 907C0 800DA400 8E240064 */  lw         $a0, 0x64($s1)
/* 907C4 800DA404 10800018 */  beqz       $a0, .Lrace_800DA468
/* 907C8 800DA408 00000000 */   nop
/* 907CC 800DA40C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 907D0 800DA410 00031040 */  sll        $v0, $v1, 1
/* 907D4 800DA414 00431021 */  addu       $v0, $v0, $v1
/* 907D8 800DA418 00021080 */  sll        $v0, $v0, 2
/* 907DC 800DA41C 00431021 */  addu       $v0, $v0, $v1
/* 907E0 800DA420 00021080 */  sll        $v0, $v0, 2
/* 907E4 800DA424 00828021 */  addu       $s0, $a0, $v0
/* 907E8 800DA428 1090000C */  beq        $a0, $s0, .Lrace_800DA45C
/* 907EC 800DA42C 00000000 */   nop
/* 907F0 800DA430 2610FFCC */  addiu      $s0, $s0, -0x34
.Lrace_800DA434:
/* 907F4 800DA434 8E02001C */  lw         $v0, 0x1C($s0)
/* 907F8 800DA438 24050002 */  addiu      $a1, $zero, 0x2
/* 907FC 800DA43C 84440028 */  lh         $a0, 0x28($v0)
/* 90800 800DA440 8C42002C */  lw         $v0, 0x2C($v0)
/* 90804 800DA444 0040F809 */  jalr       $v0
/* 90808 800DA448 02042021 */   addu      $a0, $s0, $a0
/* 9080C 800DA44C 8E220064 */  lw         $v0, 0x64($s1)
/* 90810 800DA450 5450FFF8 */  bnel       $v0, $s0, .Lrace_800DA434
/* 90814 800DA454 2610FFCC */   addiu     $s0, $s0, -0x34
/* 90818 800DA458 8E240064 */  lw         $a0, 0x64($s1)
.Lrace_800DA45C:
/* 9081C 800DA45C 0C009444 */  jal        func_80025110
/* 90820 800DA460 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 90824 800DA464 AE200064 */  sw         $zero, 0x64($s1)
.Lrace_800DA468:
/* 90828 800DA468 8E240068 */  lw         $a0, 0x68($s1)
/* 9082C 800DA46C 10800018 */  beqz       $a0, .Lrace_800DA4D0
/* 90830 800DA470 00000000 */   nop
/* 90834 800DA474 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 90838 800DA478 00031040 */  sll        $v0, $v1, 1
/* 9083C 800DA47C 00431021 */  addu       $v0, $v0, $v1
/* 90840 800DA480 000210C0 */  sll        $v0, $v0, 3
/* 90844 800DA484 00431021 */  addu       $v0, $v0, $v1
/* 90848 800DA488 00021080 */  sll        $v0, $v0, 2
/* 9084C 800DA48C 00828021 */  addu       $s0, $a0, $v0
/* 90850 800DA490 1090000C */  beq        $a0, $s0, .Lrace_800DA4C4
/* 90854 800DA494 00000000 */   nop
/* 90858 800DA498 2610FF9C */  addiu      $s0, $s0, -0x64
.Lrace_800DA49C:
/* 9085C 800DA49C 8E02001C */  lw         $v0, 0x1C($s0)
/* 90860 800DA4A0 24050002 */  addiu      $a1, $zero, 0x2
/* 90864 800DA4A4 84440028 */  lh         $a0, 0x28($v0)
/* 90868 800DA4A8 8C42002C */  lw         $v0, 0x2C($v0)
/* 9086C 800DA4AC 0040F809 */  jalr       $v0
/* 90870 800DA4B0 02042021 */   addu      $a0, $s0, $a0
/* 90874 800DA4B4 8E220068 */  lw         $v0, 0x68($s1)
/* 90878 800DA4B8 5450FFF8 */  bnel       $v0, $s0, .Lrace_800DA49C
/* 9087C 800DA4BC 2610FF9C */   addiu     $s0, $s0, -0x64
/* 90880 800DA4C0 8E240068 */  lw         $a0, 0x68($s1)
.Lrace_800DA4C4:
/* 90884 800DA4C4 0C009444 */  jal        func_80025110
/* 90888 800DA4C8 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 9088C 800DA4CC AE200068 */  sw         $zero, 0x68($s1)
.Lrace_800DA4D0:
/* 90890 800DA4D0 8E24006C */  lw         $a0, 0x6C($s1)
/* 90894 800DA4D4 10800004 */  beqz       $a0, .Lrace_800DA4E8
/* 90898 800DA4D8 00000000 */   nop
/* 9089C 800DA4DC 0C009444 */  jal        func_80025110
/* 908A0 800DA4E0 00000000 */   nop
/* 908A4 800DA4E4 AE20006C */  sw         $zero, 0x6C($s1)
.Lrace_800DA4E8:
/* 908A8 800DA4E8 8E240070 */  lw         $a0, 0x70($s1)
/* 908AC 800DA4EC 10800018 */  beqz       $a0, .Lrace_800DA550
/* 908B0 800DA4F0 00000000 */   nop
/* 908B4 800DA4F4 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 908B8 800DA4F8 00031040 */  sll        $v0, $v1, 1
/* 908BC 800DA4FC 00431021 */  addu       $v0, $v0, $v1
/* 908C0 800DA500 00021080 */  sll        $v0, $v0, 2
/* 908C4 800DA504 00431021 */  addu       $v0, $v0, $v1
/* 908C8 800DA508 00021080 */  sll        $v0, $v0, 2
/* 908CC 800DA50C 00828021 */  addu       $s0, $a0, $v0
/* 908D0 800DA510 1090000C */  beq        $a0, $s0, .Lrace_800DA544
/* 908D4 800DA514 00000000 */   nop
/* 908D8 800DA518 2610FFCC */  addiu      $s0, $s0, -0x34
.Lrace_800DA51C:
/* 908DC 800DA51C 8E02001C */  lw         $v0, 0x1C($s0)
/* 908E0 800DA520 24050002 */  addiu      $a1, $zero, 0x2
/* 908E4 800DA524 84440028 */  lh         $a0, 0x28($v0)
/* 908E8 800DA528 8C42002C */  lw         $v0, 0x2C($v0)
/* 908EC 800DA52C 0040F809 */  jalr       $v0
/* 908F0 800DA530 02042021 */   addu      $a0, $s0, $a0
/* 908F4 800DA534 8E220070 */  lw         $v0, 0x70($s1)
/* 908F8 800DA538 5450FFF8 */  bnel       $v0, $s0, .Lrace_800DA51C
/* 908FC 800DA53C 2610FFCC */   addiu     $s0, $s0, -0x34
/* 90900 800DA540 8E240070 */  lw         $a0, 0x70($s1)
.Lrace_800DA544:
/* 90904 800DA544 0C009444 */  jal        func_80025110
/* 90908 800DA548 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 9090C 800DA54C AE200070 */  sw         $zero, 0x70($s1)
.Lrace_800DA550:
/* 90910 800DA550 8E240074 */  lw         $a0, 0x74($s1)
/* 90914 800DA554 10800016 */  beqz       $a0, .Lrace_800DA5B0
/* 90918 800DA558 00000000 */   nop
/* 9091C 800DA55C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 90920 800DA560 00031040 */  sll        $v0, $v1, 1
/* 90924 800DA564 00431021 */  addu       $v0, $v0, $v1
/* 90928 800DA568 00021100 */  sll        $v0, $v0, 4
/* 9092C 800DA56C 00828021 */  addu       $s0, $a0, $v0
/* 90930 800DA570 1090000C */  beq        $a0, $s0, .Lrace_800DA5A4
/* 90934 800DA574 00000000 */   nop
/* 90938 800DA578 2610FFD0 */  addiu      $s0, $s0, -0x30
.Lrace_800DA57C:
/* 9093C 800DA57C 8E02001C */  lw         $v0, 0x1C($s0)
/* 90940 800DA580 24050002 */  addiu      $a1, $zero, 0x2
/* 90944 800DA584 84440028 */  lh         $a0, 0x28($v0)
/* 90948 800DA588 8C42002C */  lw         $v0, 0x2C($v0)
/* 9094C 800DA58C 0040F809 */  jalr       $v0
/* 90950 800DA590 02042021 */   addu      $a0, $s0, $a0
/* 90954 800DA594 8E220074 */  lw         $v0, 0x74($s1)
/* 90958 800DA598 5450FFF8 */  bnel       $v0, $s0, .Lrace_800DA57C
/* 9095C 800DA59C 2610FFD0 */   addiu     $s0, $s0, -0x30
/* 90960 800DA5A0 8E240074 */  lw         $a0, 0x74($s1)
.Lrace_800DA5A4:
/* 90964 800DA5A4 0C009444 */  jal        func_80025110
/* 90968 800DA5A8 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 9096C 800DA5AC AE200074 */  sw         $zero, 0x74($s1)
.Lrace_800DA5B0:
/* 90970 800DA5B0 8E240078 */  lw         $a0, 0x78($s1)
/* 90974 800DA5B4 10800018 */  beqz       $a0, .Lrace_800DA618
/* 90978 800DA5B8 00000000 */   nop
/* 9097C 800DA5BC 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 90980 800DA5C0 00031040 */  sll        $v0, $v1, 1
/* 90984 800DA5C4 00431021 */  addu       $v0, $v0, $v1
/* 90988 800DA5C8 00021080 */  sll        $v0, $v0, 2
/* 9098C 800DA5CC 00431023 */  subu       $v0, $v0, $v1
/* 90990 800DA5D0 00021080 */  sll        $v0, $v0, 2
/* 90994 800DA5D4 00828021 */  addu       $s0, $a0, $v0
/* 90998 800DA5D8 1090000C */  beq        $a0, $s0, .Lrace_800DA60C
/* 9099C 800DA5DC 00000000 */   nop
/* 909A0 800DA5E0 2610FFD4 */  addiu      $s0, $s0, -0x2C
.Lrace_800DA5E4:
/* 909A4 800DA5E4 8E02001C */  lw         $v0, 0x1C($s0)
/* 909A8 800DA5E8 24050002 */  addiu      $a1, $zero, 0x2
/* 909AC 800DA5EC 84440028 */  lh         $a0, 0x28($v0)
/* 909B0 800DA5F0 8C42002C */  lw         $v0, 0x2C($v0)
/* 909B4 800DA5F4 0040F809 */  jalr       $v0
/* 909B8 800DA5F8 02042021 */   addu      $a0, $s0, $a0
/* 909BC 800DA5FC 8E220078 */  lw         $v0, 0x78($s1)
/* 909C0 800DA600 5450FFF8 */  bnel       $v0, $s0, .Lrace_800DA5E4
/* 909C4 800DA604 2610FFD4 */   addiu     $s0, $s0, -0x2C
/* 909C8 800DA608 8E240078 */  lw         $a0, 0x78($s1)
.Lrace_800DA60C:
/* 909CC 800DA60C 0C009444 */  jal        func_80025110
/* 909D0 800DA610 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 909D4 800DA614 AE200078 */  sw         $zero, 0x78($s1)
.Lrace_800DA618:
/* 909D8 800DA618 8E24007C */  lw         $a0, 0x7C($s1)
/* 909DC 800DA61C 10800016 */  beqz       $a0, .Lrace_800DA678
/* 909E0 800DA620 00000000 */   nop
/* 909E4 800DA624 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 909E8 800DA628 000310C0 */  sll        $v0, $v1, 3
/* 909EC 800DA62C 00431021 */  addu       $v0, $v0, $v1
/* 909F0 800DA630 000210C0 */  sll        $v0, $v0, 3
/* 909F4 800DA634 00828021 */  addu       $s0, $a0, $v0
/* 909F8 800DA638 1090000C */  beq        $a0, $s0, .Lrace_800DA66C
/* 909FC 800DA63C 00000000 */   nop
/* 90A00 800DA640 2610FFB8 */  addiu      $s0, $s0, -0x48
.Lrace_800DA644:
/* 90A04 800DA644 8E02001C */  lw         $v0, 0x1C($s0)
/* 90A08 800DA648 24050002 */  addiu      $a1, $zero, 0x2
/* 90A0C 800DA64C 84440028 */  lh         $a0, 0x28($v0)
/* 90A10 800DA650 8C42002C */  lw         $v0, 0x2C($v0)
/* 90A14 800DA654 0040F809 */  jalr       $v0
/* 90A18 800DA658 02042021 */   addu      $a0, $s0, $a0
/* 90A1C 800DA65C 8E22007C */  lw         $v0, 0x7C($s1)
/* 90A20 800DA660 5450FFF8 */  bnel       $v0, $s0, .Lrace_800DA644
/* 90A24 800DA664 2610FFB8 */   addiu     $s0, $s0, -0x48
/* 90A28 800DA668 8E24007C */  lw         $a0, 0x7C($s1)
.Lrace_800DA66C:
/* 90A2C 800DA66C 0C009444 */  jal        func_80025110
/* 90A30 800DA670 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 90A34 800DA674 AE20007C */  sw         $zero, 0x7C($s1)
.Lrace_800DA678:
/* 90A38 800DA678 8E240080 */  lw         $a0, 0x80($s1)
/* 90A3C 800DA67C 10800016 */  beqz       $a0, .Lrace_800DA6D8
/* 90A40 800DA680 00000000 */   nop
/* 90A44 800DA684 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 90A48 800DA688 000310C0 */  sll        $v0, $v1, 3
/* 90A4C 800DA68C 00431021 */  addu       $v0, $v0, $v1
/* 90A50 800DA690 00021080 */  sll        $v0, $v0, 2
/* 90A54 800DA694 00828021 */  addu       $s0, $a0, $v0
/* 90A58 800DA698 1090000C */  beq        $a0, $s0, .Lrace_800DA6CC
/* 90A5C 800DA69C 00000000 */   nop
/* 90A60 800DA6A0 2610FFDC */  addiu      $s0, $s0, -0x24
.Lrace_800DA6A4:
/* 90A64 800DA6A4 8E02001C */  lw         $v0, 0x1C($s0)
/* 90A68 800DA6A8 24050002 */  addiu      $a1, $zero, 0x2
/* 90A6C 800DA6AC 84440028 */  lh         $a0, 0x28($v0)
/* 90A70 800DA6B0 8C42002C */  lw         $v0, 0x2C($v0)
/* 90A74 800DA6B4 0040F809 */  jalr       $v0
/* 90A78 800DA6B8 02042021 */   addu      $a0, $s0, $a0
/* 90A7C 800DA6BC 8E220080 */  lw         $v0, 0x80($s1)
/* 90A80 800DA6C0 5450FFF8 */  bnel       $v0, $s0, .Lrace_800DA6A4
/* 90A84 800DA6C4 2610FFDC */   addiu     $s0, $s0, -0x24
/* 90A88 800DA6C8 8E240080 */  lw         $a0, 0x80($s1)
.Lrace_800DA6CC:
/* 90A8C 800DA6CC 0C009444 */  jal        func_80025110
/* 90A90 800DA6D0 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 90A94 800DA6D4 AE200080 */  sw         $zero, 0x80($s1)
.Lrace_800DA6D8:
/* 90A98 800DA6D8 8E240084 */  lw         $a0, 0x84($s1)
/* 90A9C 800DA6DC 10800018 */  beqz       $a0, .Lrace_800DA740
/* 90AA0 800DA6E0 00000000 */   nop
/* 90AA4 800DA6E4 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 90AA8 800DA6E8 00031040 */  sll        $v0, $v1, 1
/* 90AAC 800DA6EC 00431021 */  addu       $v0, $v0, $v1
/* 90AB0 800DA6F0 00021080 */  sll        $v0, $v0, 2
/* 90AB4 800DA6F4 00431021 */  addu       $v0, $v0, $v1
/* 90AB8 800DA6F8 00021080 */  sll        $v0, $v0, 2
/* 90ABC 800DA6FC 00828021 */  addu       $s0, $a0, $v0
/* 90AC0 800DA700 1090000C */  beq        $a0, $s0, .Lrace_800DA734
/* 90AC4 800DA704 00000000 */   nop
/* 90AC8 800DA708 2610FFCC */  addiu      $s0, $s0, -0x34
.Lrace_800DA70C:
/* 90ACC 800DA70C 8E02001C */  lw         $v0, 0x1C($s0)
/* 90AD0 800DA710 24050002 */  addiu      $a1, $zero, 0x2
/* 90AD4 800DA714 84440028 */  lh         $a0, 0x28($v0)
/* 90AD8 800DA718 8C42002C */  lw         $v0, 0x2C($v0)
/* 90ADC 800DA71C 0040F809 */  jalr       $v0
/* 90AE0 800DA720 02042021 */   addu      $a0, $s0, $a0
/* 90AE4 800DA724 8E220084 */  lw         $v0, 0x84($s1)
/* 90AE8 800DA728 5450FFF8 */  bnel       $v0, $s0, .Lrace_800DA70C
/* 90AEC 800DA72C 2610FFCC */   addiu     $s0, $s0, -0x34
/* 90AF0 800DA730 8E240084 */  lw         $a0, 0x84($s1)
.Lrace_800DA734:
/* 90AF4 800DA734 0C009444 */  jal        func_80025110
/* 90AF8 800DA738 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 90AFC 800DA73C AE200084 */  sw         $zero, 0x84($s1)
.Lrace_800DA740:
/* 90B00 800DA740 8E240088 */  lw         $a0, 0x88($s1)
/* 90B04 800DA744 10800017 */  beqz       $a0, .Lrace_800DA7A4
/* 90B08 800DA748 00000000 */   nop
/* 90B0C 800DA74C 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 90B10 800DA750 00031040 */  sll        $v0, $v1, 1
/* 90B14 800DA754 00431021 */  addu       $v0, $v0, $v1
/* 90B18 800DA758 00021080 */  sll        $v0, $v0, 2
/* 90B1C 800DA75C 00431023 */  subu       $v0, $v0, $v1
/* 90B20 800DA760 00021080 */  sll        $v0, $v0, 2
/* 90B24 800DA764 00828021 */  addu       $s0, $a0, $v0
/* 90B28 800DA768 1090000B */  beq        $a0, $s0, .Lrace_800DA798
/* 90B2C 800DA76C 2610FFD4 */   addiu     $s0, $s0, -0x2C
.Lrace_800DA770:
/* 90B30 800DA770 8E02001C */  lw         $v0, 0x1C($s0)
/* 90B34 800DA774 24050002 */  addiu      $a1, $zero, 0x2
/* 90B38 800DA778 84440028 */  lh         $a0, 0x28($v0)
/* 90B3C 800DA77C 8C42002C */  lw         $v0, 0x2C($v0)
/* 90B40 800DA780 0040F809 */  jalr       $v0
/* 90B44 800DA784 02042021 */   addu      $a0, $s0, $a0
/* 90B48 800DA788 8E220088 */  lw         $v0, 0x88($s1)
/* 90B4C 800DA78C 1450FFF8 */  bne        $v0, $s0, .Lrace_800DA770
/* 90B50 800DA790 2610FFD4 */   addiu     $s0, $s0, -0x2C
/* 90B54 800DA794 8E240088 */  lw         $a0, 0x88($s1)
.Lrace_800DA798:
/* 90B58 800DA798 0C009444 */  jal        func_80025110
/* 90B5C 800DA79C 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 90B60 800DA7A0 AE200088 */  sw         $zero, 0x88($s1)
.Lrace_800DA7A4:
/* 90B64 800DA7A4 8E24008C */  lw         $a0, 0x8C($s1)
/* 90B68 800DA7A8 50800016 */  beql       $a0, $zero, .Lrace_800DA804
/* 90B6C 800DA7AC AE200000 */   sw        $zero, 0x0($s1)
/* 90B70 800DA7B0 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 90B74 800DA7B4 000310C0 */  sll        $v0, $v1, 3
/* 90B78 800DA7B8 00431023 */  subu       $v0, $v0, $v1
/* 90B7C 800DA7BC 000210C0 */  sll        $v0, $v0, 3
/* 90B80 800DA7C0 00828021 */  addu       $s0, $a0, $v0
/* 90B84 800DA7C4 1090000B */  beq        $a0, $s0, .Lrace_800DA7F4
/* 90B88 800DA7C8 2610FFC8 */   addiu     $s0, $s0, -0x38
.Lrace_800DA7CC:
/* 90B8C 800DA7CC 8E02001C */  lw         $v0, 0x1C($s0)
/* 90B90 800DA7D0 24050002 */  addiu      $a1, $zero, 0x2
/* 90B94 800DA7D4 84440028 */  lh         $a0, 0x28($v0)
/* 90B98 800DA7D8 8C42002C */  lw         $v0, 0x2C($v0)
/* 90B9C 800DA7DC 0040F809 */  jalr       $v0
/* 90BA0 800DA7E0 02042021 */   addu      $a0, $s0, $a0
/* 90BA4 800DA7E4 8E22008C */  lw         $v0, 0x8C($s1)
/* 90BA8 800DA7E8 1450FFF8 */  bne        $v0, $s0, .Lrace_800DA7CC
/* 90BAC 800DA7EC 2610FFC8 */   addiu     $s0, $s0, -0x38
/* 90BB0 800DA7F0 8E24008C */  lw         $a0, 0x8C($s1)
.Lrace_800DA7F4:
/* 90BB4 800DA7F4 0C009444 */  jal        func_80025110
/* 90BB8 800DA7F8 2484FFF8 */   addiu     $a0, $a0, -0x8
/* 90BBC 800DA7FC AE20008C */  sw         $zero, 0x8C($s1)
/* 90BC0 800DA800 AE200000 */  sw         $zero, 0x0($s1)
.Lrace_800DA804:
/* 90BC4 800DA804 AE200004 */  sw         $zero, 0x4($s1)
/* 90BC8 800DA808 AE200008 */  sw         $zero, 0x8($s1)
/* 90BCC 800DA80C AE20000C */  sw         $zero, 0xC($s1)
/* 90BD0 800DA810 AE200010 */  sw         $zero, 0x10($s1)
/* 90BD4 800DA814 AE200014 */  sw         $zero, 0x14($s1)
/* 90BD8 800DA818 AE200020 */  sw         $zero, 0x20($s1)
/* 90BDC 800DA81C AE200024 */  sw         $zero, 0x24($s1)
/* 90BE0 800DA820 8FBF0018 */  lw         $ra, 0x18($sp)
/* 90BE4 800DA824 8FB10014 */  lw         $s1, 0x14($sp)
/* 90BE8 800DA828 8FB00010 */  lw         $s0, 0x10($sp)
/* 90BEC 800DA82C 03E00008 */  jr         $ra
/* 90BF0 800DA830 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DA834
/* 90BF4 800DA834 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 90BF8 800DA838 AFB20018 */  sw         $s2, 0x18($sp)
/* 90BFC 800DA83C 00809021 */  addu       $s2, $a0, $zero
/* 90C00 800DA840 AFBF0020 */  sw         $ra, 0x20($sp)
/* 90C04 800DA844 AFB3001C */  sw         $s3, 0x1C($sp)
/* 90C08 800DA848 AFB10014 */  sw         $s1, 0x14($sp)
/* 90C0C 800DA84C AFB00010 */  sw         $s0, 0x10($sp)
/* 90C10 800DA850 8E42005C */  lw         $v0, 0x5C($s2)
/* 90C14 800DA854 10400012 */  beqz       $v0, .Lrace_800DA8A0
/* 90C18 800DA858 00A09821 */   addu      $s3, $a1, $zero
/* 90C1C 800DA85C 8E420028 */  lw         $v0, 0x28($s2)
/* 90C20 800DA860 1040000F */  beqz       $v0, .Lrace_800DA8A0
/* 90C24 800DA864 00008021 */   addu      $s0, $zero, $zero
/* 90C28 800DA868 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DA86C:
/* 90C2C 800DA86C 8E44005C */  lw         $a0, 0x5C($s2)
/* 90C30 800DA870 02602821 */  addu       $a1, $s3, $zero
/* 90C34 800DA874 02242021 */  addu       $a0, $s1, $a0
/* 90C38 800DA878 8C82001C */  lw         $v0, 0x1C($a0)
/* 90C3C 800DA87C 26100001 */  addiu      $s0, $s0, 0x1
/* 90C40 800DA880 84430030 */  lh         $v1, 0x30($v0)
/* 90C44 800DA884 8C420034 */  lw         $v0, 0x34($v0)
/* 90C48 800DA888 0040F809 */  jalr       $v0
/* 90C4C 800DA88C 00832021 */   addu      $a0, $a0, $v1
/* 90C50 800DA890 8E420028 */  lw         $v0, 0x28($s2)
/* 90C54 800DA894 0202102B */  sltu       $v0, $s0, $v0
/* 90C58 800DA898 1440FFF4 */  bnez       $v0, .Lrace_800DA86C
/* 90C5C 800DA89C 2631005C */   addiu     $s1, $s1, 0x5C
.Lrace_800DA8A0:
/* 90C60 800DA8A0 8E420060 */  lw         $v0, 0x60($s2)
/* 90C64 800DA8A4 10400012 */  beqz       $v0, .Lrace_800DA8F0
/* 90C68 800DA8A8 00000000 */   nop
/* 90C6C 800DA8AC 8E42002C */  lw         $v0, 0x2C($s2)
/* 90C70 800DA8B0 1040000F */  beqz       $v0, .Lrace_800DA8F0
/* 90C74 800DA8B4 00008021 */   addu      $s0, $zero, $zero
/* 90C78 800DA8B8 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DA8BC:
/* 90C7C 800DA8BC 8E440060 */  lw         $a0, 0x60($s2)
/* 90C80 800DA8C0 02602821 */  addu       $a1, $s3, $zero
/* 90C84 800DA8C4 02242021 */  addu       $a0, $s1, $a0
/* 90C88 800DA8C8 8C82001C */  lw         $v0, 0x1C($a0)
/* 90C8C 800DA8CC 26100001 */  addiu      $s0, $s0, 0x1
/* 90C90 800DA8D0 84430030 */  lh         $v1, 0x30($v0)
/* 90C94 800DA8D4 8C420034 */  lw         $v0, 0x34($v0)
/* 90C98 800DA8D8 0040F809 */  jalr       $v0
/* 90C9C 800DA8DC 00832021 */   addu      $a0, $a0, $v1
/* 90CA0 800DA8E0 8E42002C */  lw         $v0, 0x2C($s2)
/* 90CA4 800DA8E4 0202102B */  sltu       $v0, $s0, $v0
/* 90CA8 800DA8E8 1440FFF4 */  bnez       $v0, .Lrace_800DA8BC
/* 90CAC 800DA8EC 26310034 */   addiu     $s1, $s1, 0x34
.Lrace_800DA8F0:
/* 90CB0 800DA8F0 8E420064 */  lw         $v0, 0x64($s2)
/* 90CB4 800DA8F4 10400012 */  beqz       $v0, .Lrace_800DA940
/* 90CB8 800DA8F8 00000000 */   nop
/* 90CBC 800DA8FC 8E420030 */  lw         $v0, 0x30($s2)
/* 90CC0 800DA900 1040000F */  beqz       $v0, .Lrace_800DA940
/* 90CC4 800DA904 00008021 */   addu      $s0, $zero, $zero
/* 90CC8 800DA908 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DA90C:
/* 90CCC 800DA90C 8E440064 */  lw         $a0, 0x64($s2)
/* 90CD0 800DA910 02602821 */  addu       $a1, $s3, $zero
/* 90CD4 800DA914 02242021 */  addu       $a0, $s1, $a0
/* 90CD8 800DA918 8C82001C */  lw         $v0, 0x1C($a0)
/* 90CDC 800DA91C 26100001 */  addiu      $s0, $s0, 0x1
/* 90CE0 800DA920 84430030 */  lh         $v1, 0x30($v0)
/* 90CE4 800DA924 8C420034 */  lw         $v0, 0x34($v0)
/* 90CE8 800DA928 0040F809 */  jalr       $v0
/* 90CEC 800DA92C 00832021 */   addu      $a0, $a0, $v1
/* 90CF0 800DA930 8E420030 */  lw         $v0, 0x30($s2)
/* 90CF4 800DA934 0202102B */  sltu       $v0, $s0, $v0
/* 90CF8 800DA938 1440FFF4 */  bnez       $v0, .Lrace_800DA90C
/* 90CFC 800DA93C 26310034 */   addiu     $s1, $s1, 0x34
.Lrace_800DA940:
/* 90D00 800DA940 8E420068 */  lw         $v0, 0x68($s2)
/* 90D04 800DA944 10400012 */  beqz       $v0, .Lrace_800DA990
/* 90D08 800DA948 00000000 */   nop
/* 90D0C 800DA94C 8E420034 */  lw         $v0, 0x34($s2)
/* 90D10 800DA950 1040000F */  beqz       $v0, .Lrace_800DA990
/* 90D14 800DA954 00008021 */   addu      $s0, $zero, $zero
/* 90D18 800DA958 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DA95C:
/* 90D1C 800DA95C 8E440068 */  lw         $a0, 0x68($s2)
/* 90D20 800DA960 02602821 */  addu       $a1, $s3, $zero
/* 90D24 800DA964 02242021 */  addu       $a0, $s1, $a0
/* 90D28 800DA968 8C82001C */  lw         $v0, 0x1C($a0)
/* 90D2C 800DA96C 26100001 */  addiu      $s0, $s0, 0x1
/* 90D30 800DA970 84430030 */  lh         $v1, 0x30($v0)
/* 90D34 800DA974 8C420034 */  lw         $v0, 0x34($v0)
/* 90D38 800DA978 0040F809 */  jalr       $v0
/* 90D3C 800DA97C 00832021 */   addu      $a0, $a0, $v1
/* 90D40 800DA980 8E420034 */  lw         $v0, 0x34($s2)
/* 90D44 800DA984 0202102B */  sltu       $v0, $s0, $v0
/* 90D48 800DA988 1440FFF4 */  bnez       $v0, .Lrace_800DA95C
/* 90D4C 800DA98C 26310064 */   addiu     $s1, $s1, 0x64
.Lrace_800DA990:
/* 90D50 800DA990 8E420070 */  lw         $v0, 0x70($s2)
/* 90D54 800DA994 10400012 */  beqz       $v0, .Lrace_800DA9E0
/* 90D58 800DA998 00000000 */   nop
/* 90D5C 800DA99C 8E42003C */  lw         $v0, 0x3C($s2)
/* 90D60 800DA9A0 1040000F */  beqz       $v0, .Lrace_800DA9E0
/* 90D64 800DA9A4 00008021 */   addu      $s0, $zero, $zero
/* 90D68 800DA9A8 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DA9AC:
/* 90D6C 800DA9AC 8E440070 */  lw         $a0, 0x70($s2)
/* 90D70 800DA9B0 02602821 */  addu       $a1, $s3, $zero
/* 90D74 800DA9B4 02242021 */  addu       $a0, $s1, $a0
/* 90D78 800DA9B8 8C82001C */  lw         $v0, 0x1C($a0)
/* 90D7C 800DA9BC 26100001 */  addiu      $s0, $s0, 0x1
/* 90D80 800DA9C0 84430030 */  lh         $v1, 0x30($v0)
/* 90D84 800DA9C4 8C420034 */  lw         $v0, 0x34($v0)
/* 90D88 800DA9C8 0040F809 */  jalr       $v0
/* 90D8C 800DA9CC 00832021 */   addu      $a0, $a0, $v1
/* 90D90 800DA9D0 8E42003C */  lw         $v0, 0x3C($s2)
/* 90D94 800DA9D4 0202102B */  sltu       $v0, $s0, $v0
/* 90D98 800DA9D8 1440FFF4 */  bnez       $v0, .Lrace_800DA9AC
/* 90D9C 800DA9DC 26310034 */   addiu     $s1, $s1, 0x34
.Lrace_800DA9E0:
/* 90DA0 800DA9E0 8E420074 */  lw         $v0, 0x74($s2)
/* 90DA4 800DA9E4 10400012 */  beqz       $v0, .Lrace_800DAA30
/* 90DA8 800DA9E8 00000000 */   nop
/* 90DAC 800DA9EC 8E420040 */  lw         $v0, 0x40($s2)
/* 90DB0 800DA9F0 1040000F */  beqz       $v0, .Lrace_800DAA30
/* 90DB4 800DA9F4 00008021 */   addu      $s0, $zero, $zero
/* 90DB8 800DA9F8 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DA9FC:
/* 90DBC 800DA9FC 8E440074 */  lw         $a0, 0x74($s2)
/* 90DC0 800DAA00 02602821 */  addu       $a1, $s3, $zero
/* 90DC4 800DAA04 02242021 */  addu       $a0, $s1, $a0
/* 90DC8 800DAA08 8C82001C */  lw         $v0, 0x1C($a0)
/* 90DCC 800DAA0C 26100001 */  addiu      $s0, $s0, 0x1
/* 90DD0 800DAA10 84430030 */  lh         $v1, 0x30($v0)
/* 90DD4 800DAA14 8C420034 */  lw         $v0, 0x34($v0)
/* 90DD8 800DAA18 0040F809 */  jalr       $v0
/* 90DDC 800DAA1C 00832021 */   addu      $a0, $a0, $v1
/* 90DE0 800DAA20 8E420040 */  lw         $v0, 0x40($s2)
/* 90DE4 800DAA24 0202102B */  sltu       $v0, $s0, $v0
/* 90DE8 800DAA28 1440FFF4 */  bnez       $v0, .Lrace_800DA9FC
/* 90DEC 800DAA2C 26310030 */   addiu     $s1, $s1, 0x30
.Lrace_800DAA30:
/* 90DF0 800DAA30 8E420078 */  lw         $v0, 0x78($s2)
/* 90DF4 800DAA34 10400012 */  beqz       $v0, .Lrace_800DAA80
/* 90DF8 800DAA38 00000000 */   nop
/* 90DFC 800DAA3C 8E42004C */  lw         $v0, 0x4C($s2)
/* 90E00 800DAA40 1040000F */  beqz       $v0, .Lrace_800DAA80
/* 90E04 800DAA44 00008021 */   addu      $s0, $zero, $zero
/* 90E08 800DAA48 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAA4C:
/* 90E0C 800DAA4C 8E440078 */  lw         $a0, 0x78($s2)
/* 90E10 800DAA50 02602821 */  addu       $a1, $s3, $zero
/* 90E14 800DAA54 02242021 */  addu       $a0, $s1, $a0
/* 90E18 800DAA58 8C82001C */  lw         $v0, 0x1C($a0)
/* 90E1C 800DAA5C 26100001 */  addiu      $s0, $s0, 0x1
/* 90E20 800DAA60 84430030 */  lh         $v1, 0x30($v0)
/* 90E24 800DAA64 8C420034 */  lw         $v0, 0x34($v0)
/* 90E28 800DAA68 0040F809 */  jalr       $v0
/* 90E2C 800DAA6C 00832021 */   addu      $a0, $a0, $v1
/* 90E30 800DAA70 8E42004C */  lw         $v0, 0x4C($s2)
/* 90E34 800DAA74 0202102B */  sltu       $v0, $s0, $v0
/* 90E38 800DAA78 1440FFF4 */  bnez       $v0, .Lrace_800DAA4C
/* 90E3C 800DAA7C 2631002C */   addiu     $s1, $s1, 0x2C
.Lrace_800DAA80:
/* 90E40 800DAA80 8E42007C */  lw         $v0, 0x7C($s2)
/* 90E44 800DAA84 10400012 */  beqz       $v0, .Lrace_800DAAD0
/* 90E48 800DAA88 00000000 */   nop
/* 90E4C 800DAA8C 8E420044 */  lw         $v0, 0x44($s2)
/* 90E50 800DAA90 1040000F */  beqz       $v0, .Lrace_800DAAD0
/* 90E54 800DAA94 00008021 */   addu      $s0, $zero, $zero
/* 90E58 800DAA98 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAA9C:
/* 90E5C 800DAA9C 8E44007C */  lw         $a0, 0x7C($s2)
/* 90E60 800DAAA0 02602821 */  addu       $a1, $s3, $zero
/* 90E64 800DAAA4 02242021 */  addu       $a0, $s1, $a0
/* 90E68 800DAAA8 8C82001C */  lw         $v0, 0x1C($a0)
/* 90E6C 800DAAAC 26100001 */  addiu      $s0, $s0, 0x1
/* 90E70 800DAAB0 84430030 */  lh         $v1, 0x30($v0)
/* 90E74 800DAAB4 8C420034 */  lw         $v0, 0x34($v0)
/* 90E78 800DAAB8 0040F809 */  jalr       $v0
/* 90E7C 800DAABC 00832021 */   addu      $a0, $a0, $v1
/* 90E80 800DAAC0 8E420044 */  lw         $v0, 0x44($s2)
/* 90E84 800DAAC4 0202102B */  sltu       $v0, $s0, $v0
/* 90E88 800DAAC8 1440FFF4 */  bnez       $v0, .Lrace_800DAA9C
/* 90E8C 800DAACC 26310048 */   addiu     $s1, $s1, 0x48
.Lrace_800DAAD0:
/* 90E90 800DAAD0 8E420080 */  lw         $v0, 0x80($s2)
/* 90E94 800DAAD4 10400012 */  beqz       $v0, .Lrace_800DAB20
/* 90E98 800DAAD8 00000000 */   nop
/* 90E9C 800DAADC 8E420048 */  lw         $v0, 0x48($s2)
/* 90EA0 800DAAE0 1040000F */  beqz       $v0, .Lrace_800DAB20
/* 90EA4 800DAAE4 00008021 */   addu      $s0, $zero, $zero
/* 90EA8 800DAAE8 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAAEC:
/* 90EAC 800DAAEC 8E440080 */  lw         $a0, 0x80($s2)
/* 90EB0 800DAAF0 02602821 */  addu       $a1, $s3, $zero
/* 90EB4 800DAAF4 02242021 */  addu       $a0, $s1, $a0
/* 90EB8 800DAAF8 8C82001C */  lw         $v0, 0x1C($a0)
/* 90EBC 800DAAFC 26100001 */  addiu      $s0, $s0, 0x1
/* 90EC0 800DAB00 84430030 */  lh         $v1, 0x30($v0)
/* 90EC4 800DAB04 8C420034 */  lw         $v0, 0x34($v0)
/* 90EC8 800DAB08 0040F809 */  jalr       $v0
/* 90ECC 800DAB0C 00832021 */   addu      $a0, $a0, $v1
/* 90ED0 800DAB10 8E420048 */  lw         $v0, 0x48($s2)
/* 90ED4 800DAB14 0202102B */  sltu       $v0, $s0, $v0
/* 90ED8 800DAB18 1440FFF4 */  bnez       $v0, .Lrace_800DAAEC
/* 90EDC 800DAB1C 26310024 */   addiu     $s1, $s1, 0x24
.Lrace_800DAB20:
/* 90EE0 800DAB20 8E420084 */  lw         $v0, 0x84($s2)
/* 90EE4 800DAB24 10400012 */  beqz       $v0, .Lrace_800DAB70
/* 90EE8 800DAB28 00000000 */   nop
/* 90EEC 800DAB2C 8E420050 */  lw         $v0, 0x50($s2)
/* 90EF0 800DAB30 1040000F */  beqz       $v0, .Lrace_800DAB70
/* 90EF4 800DAB34 00008021 */   addu      $s0, $zero, $zero
/* 90EF8 800DAB38 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAB3C:
/* 90EFC 800DAB3C 8E440084 */  lw         $a0, 0x84($s2)
/* 90F00 800DAB40 02602821 */  addu       $a1, $s3, $zero
/* 90F04 800DAB44 02242021 */  addu       $a0, $s1, $a0
/* 90F08 800DAB48 8C82001C */  lw         $v0, 0x1C($a0)
/* 90F0C 800DAB4C 26100001 */  addiu      $s0, $s0, 0x1
/* 90F10 800DAB50 84430030 */  lh         $v1, 0x30($v0)
/* 90F14 800DAB54 8C420034 */  lw         $v0, 0x34($v0)
/* 90F18 800DAB58 0040F809 */  jalr       $v0
/* 90F1C 800DAB5C 00832021 */   addu      $a0, $a0, $v1
/* 90F20 800DAB60 8E420050 */  lw         $v0, 0x50($s2)
/* 90F24 800DAB64 0202102B */  sltu       $v0, $s0, $v0
/* 90F28 800DAB68 1440FFF4 */  bnez       $v0, .Lrace_800DAB3C
/* 90F2C 800DAB6C 26310034 */   addiu     $s1, $s1, 0x34
.Lrace_800DAB70:
/* 90F30 800DAB70 8E420088 */  lw         $v0, 0x88($s2)
/* 90F34 800DAB74 10400012 */  beqz       $v0, .Lrace_800DABC0
/* 90F38 800DAB78 00000000 */   nop
/* 90F3C 800DAB7C 8E420054 */  lw         $v0, 0x54($s2)
/* 90F40 800DAB80 1040000F */  beqz       $v0, .Lrace_800DABC0
/* 90F44 800DAB84 00008021 */   addu      $s0, $zero, $zero
/* 90F48 800DAB88 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAB8C:
/* 90F4C 800DAB8C 8E440088 */  lw         $a0, 0x88($s2)
/* 90F50 800DAB90 02602821 */  addu       $a1, $s3, $zero
/* 90F54 800DAB94 02242021 */  addu       $a0, $s1, $a0
/* 90F58 800DAB98 8C82001C */  lw         $v0, 0x1C($a0)
/* 90F5C 800DAB9C 26100001 */  addiu      $s0, $s0, 0x1
/* 90F60 800DABA0 84430030 */  lh         $v1, 0x30($v0)
/* 90F64 800DABA4 8C420034 */  lw         $v0, 0x34($v0)
/* 90F68 800DABA8 0040F809 */  jalr       $v0
/* 90F6C 800DABAC 00832021 */   addu      $a0, $a0, $v1
/* 90F70 800DABB0 8E420054 */  lw         $v0, 0x54($s2)
/* 90F74 800DABB4 0202102B */  sltu       $v0, $s0, $v0
/* 90F78 800DABB8 1440FFF4 */  bnez       $v0, .Lrace_800DAB8C
/* 90F7C 800DABBC 2631002C */   addiu     $s1, $s1, 0x2C
.Lrace_800DABC0:
/* 90F80 800DABC0 8E42008C */  lw         $v0, 0x8C($s2)
/* 90F84 800DABC4 10400012 */  beqz       $v0, .Lrace_800DAC10
/* 90F88 800DABC8 00000000 */   nop
/* 90F8C 800DABCC 8E420058 */  lw         $v0, 0x58($s2)
/* 90F90 800DABD0 1040000F */  beqz       $v0, .Lrace_800DAC10
/* 90F94 800DABD4 00008021 */   addu      $s0, $zero, $zero
/* 90F98 800DABD8 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DABDC:
/* 90F9C 800DABDC 8E44008C */  lw         $a0, 0x8C($s2)
/* 90FA0 800DABE0 02602821 */  addu       $a1, $s3, $zero
/* 90FA4 800DABE4 02242021 */  addu       $a0, $s1, $a0
/* 90FA8 800DABE8 8C82001C */  lw         $v0, 0x1C($a0)
/* 90FAC 800DABEC 26100001 */  addiu      $s0, $s0, 0x1
/* 90FB0 800DABF0 84430030 */  lh         $v1, 0x30($v0)
/* 90FB4 800DABF4 8C420034 */  lw         $v0, 0x34($v0)
/* 90FB8 800DABF8 0040F809 */  jalr       $v0
/* 90FBC 800DABFC 00832021 */   addu      $a0, $a0, $v1
/* 90FC0 800DAC00 8E420058 */  lw         $v0, 0x58($s2)
/* 90FC4 800DAC04 0202102B */  sltu       $v0, $s0, $v0
/* 90FC8 800DAC08 1440FFF4 */  bnez       $v0, .Lrace_800DABDC
/* 90FCC 800DAC0C 26310038 */   addiu     $s1, $s1, 0x38
.Lrace_800DAC10:
/* 90FD0 800DAC10 8FBF0020 */  lw         $ra, 0x20($sp)
/* 90FD4 800DAC14 8FB3001C */  lw         $s3, 0x1C($sp)
/* 90FD8 800DAC18 8FB20018 */  lw         $s2, 0x18($sp)
/* 90FDC 800DAC1C 8FB10014 */  lw         $s1, 0x14($sp)
/* 90FE0 800DAC20 8FB00010 */  lw         $s0, 0x10($sp)
/* 90FE4 800DAC24 03E00008 */  jr         $ra
/* 90FE8 800DAC28 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DAC2C
/* 90FEC 800DAC2C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 90FF0 800DAC30 AFB20018 */  sw         $s2, 0x18($sp)
/* 90FF4 800DAC34 00809021 */  addu       $s2, $a0, $zero
/* 90FF8 800DAC38 AFB3001C */  sw         $s3, 0x1C($sp)
/* 90FFC 800DAC3C 00A09821 */  addu       $s3, $a1, $zero
/* 91000 800DAC40 AFBF0024 */  sw         $ra, 0x24($sp)
/* 91004 800DAC44 AFB40020 */  sw         $s4, 0x20($sp)
/* 91008 800DAC48 AFB10014 */  sw         $s1, 0x14($sp)
/* 9100C 800DAC4C AFB00010 */  sw         $s0, 0x10($sp)
/* 91010 800DAC50 8E42005C */  lw         $v0, 0x5C($s2)
/* 91014 800DAC54 10400011 */  beqz       $v0, .Lrace_800DAC9C
/* 91018 800DAC58 00C0A021 */   addu      $s4, $a2, $zero
/* 9101C 800DAC5C 00008021 */  addu       $s0, $zero, $zero
/* 91020 800DAC60 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAC64:
/* 91024 800DAC64 8E420028 */  lw         $v0, 0x28($s2)
/* 91028 800DAC68 0202102B */  sltu       $v0, $s0, $v0
/* 9102C 800DAC6C 1040000B */  beqz       $v0, .Lrace_800DAC9C
/* 91030 800DAC70 00000000 */   nop
/* 91034 800DAC74 8E42005C */  lw         $v0, 0x5C($s2)
/* 91038 800DAC78 02222021 */  addu       $a0, $s1, $v0
/* 9103C 800DAC7C 8C820010 */  lw         $v0, 0x10($a0)
/* 91040 800DAC80 54530004 */  bnel       $v0, $s3, .Lrace_800DAC94
/* 91044 800DAC84 2631005C */   addiu     $s1, $s1, 0x5C
/* 91048 800DAC88 0C0359A7 */  jal        func_race_800D669C
/* 9104C 800DAC8C 02802821 */   addu      $a1, $s4, $zero
/* 91050 800DAC90 2631005C */  addiu      $s1, $s1, 0x5C
.Lrace_800DAC94:
/* 91054 800DAC94 08036B19 */  j          .Lrace_800DAC64
/* 91058 800DAC98 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DAC9C:
/* 9105C 800DAC9C 8E420060 */  lw         $v0, 0x60($s2)
/* 91060 800DACA0 10400010 */  beqz       $v0, .Lrace_800DACE4
/* 91064 800DACA4 00008021 */   addu      $s0, $zero, $zero
/* 91068 800DACA8 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DACAC:
/* 9106C 800DACAC 8E42002C */  lw         $v0, 0x2C($s2)
/* 91070 800DACB0 0202102B */  sltu       $v0, $s0, $v0
/* 91074 800DACB4 1040000B */  beqz       $v0, .Lrace_800DACE4
/* 91078 800DACB8 00000000 */   nop
/* 9107C 800DACBC 8E420060 */  lw         $v0, 0x60($s2)
/* 91080 800DACC0 02222021 */  addu       $a0, $s1, $v0
/* 91084 800DACC4 8C820010 */  lw         $v0, 0x10($a0)
/* 91088 800DACC8 54530004 */  bnel       $v0, $s3, .Lrace_800DACDC
/* 9108C 800DACCC 26310034 */   addiu     $s1, $s1, 0x34
/* 91090 800DACD0 0C0359A7 */  jal        func_race_800D669C
/* 91094 800DACD4 02802821 */   addu      $a1, $s4, $zero
/* 91098 800DACD8 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DACDC:
/* 9109C 800DACDC 08036B2B */  j          .Lrace_800DACAC
/* 910A0 800DACE0 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DACE4:
/* 910A4 800DACE4 8E420064 */  lw         $v0, 0x64($s2)
/* 910A8 800DACE8 10400010 */  beqz       $v0, .Lrace_800DAD2C
/* 910AC 800DACEC 00008021 */   addu      $s0, $zero, $zero
/* 910B0 800DACF0 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DACF4:
/* 910B4 800DACF4 8E420030 */  lw         $v0, 0x30($s2)
/* 910B8 800DACF8 0202102B */  sltu       $v0, $s0, $v0
/* 910BC 800DACFC 1040000B */  beqz       $v0, .Lrace_800DAD2C
/* 910C0 800DAD00 00000000 */   nop
/* 910C4 800DAD04 8E420064 */  lw         $v0, 0x64($s2)
/* 910C8 800DAD08 02222021 */  addu       $a0, $s1, $v0
/* 910CC 800DAD0C 8C820010 */  lw         $v0, 0x10($a0)
/* 910D0 800DAD10 54530004 */  bnel       $v0, $s3, .Lrace_800DAD24
/* 910D4 800DAD14 26310034 */   addiu     $s1, $s1, 0x34
/* 910D8 800DAD18 0C0359A7 */  jal        func_race_800D669C
/* 910DC 800DAD1C 02802821 */   addu      $a1, $s4, $zero
/* 910E0 800DAD20 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DAD24:
/* 910E4 800DAD24 08036B3D */  j          .Lrace_800DACF4
/* 910E8 800DAD28 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DAD2C:
/* 910EC 800DAD2C 8E420068 */  lw         $v0, 0x68($s2)
/* 910F0 800DAD30 10400010 */  beqz       $v0, .Lrace_800DAD74
/* 910F4 800DAD34 00008021 */   addu      $s0, $zero, $zero
/* 910F8 800DAD38 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAD3C:
/* 910FC 800DAD3C 8E420034 */  lw         $v0, 0x34($s2)
/* 91100 800DAD40 0202102B */  sltu       $v0, $s0, $v0
/* 91104 800DAD44 1040000B */  beqz       $v0, .Lrace_800DAD74
/* 91108 800DAD48 00000000 */   nop
/* 9110C 800DAD4C 8E420068 */  lw         $v0, 0x68($s2)
/* 91110 800DAD50 02222021 */  addu       $a0, $s1, $v0
/* 91114 800DAD54 8C820010 */  lw         $v0, 0x10($a0)
/* 91118 800DAD58 54530004 */  bnel       $v0, $s3, .Lrace_800DAD6C
/* 9111C 800DAD5C 26310064 */   addiu     $s1, $s1, 0x64
/* 91120 800DAD60 0C0359A7 */  jal        func_race_800D669C
/* 91124 800DAD64 02802821 */   addu      $a1, $s4, $zero
/* 91128 800DAD68 26310064 */  addiu      $s1, $s1, 0x64
.Lrace_800DAD6C:
/* 9112C 800DAD6C 08036B4F */  j          .Lrace_800DAD3C
/* 91130 800DAD70 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DAD74:
/* 91134 800DAD74 8E420070 */  lw         $v0, 0x70($s2)
/* 91138 800DAD78 10400010 */  beqz       $v0, .Lrace_800DADBC
/* 9113C 800DAD7C 00008021 */   addu      $s0, $zero, $zero
/* 91140 800DAD80 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAD84:
/* 91144 800DAD84 8E42003C */  lw         $v0, 0x3C($s2)
/* 91148 800DAD88 0202102B */  sltu       $v0, $s0, $v0
/* 9114C 800DAD8C 1040000B */  beqz       $v0, .Lrace_800DADBC
/* 91150 800DAD90 00000000 */   nop
/* 91154 800DAD94 8E420070 */  lw         $v0, 0x70($s2)
/* 91158 800DAD98 02222021 */  addu       $a0, $s1, $v0
/* 9115C 800DAD9C 8C820010 */  lw         $v0, 0x10($a0)
/* 91160 800DADA0 54530004 */  bnel       $v0, $s3, .Lrace_800DADB4
/* 91164 800DADA4 26310034 */   addiu     $s1, $s1, 0x34
/* 91168 800DADA8 0C0359A7 */  jal        func_race_800D669C
/* 9116C 800DADAC 02802821 */   addu      $a1, $s4, $zero
/* 91170 800DADB0 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DADB4:
/* 91174 800DADB4 08036B61 */  j          .Lrace_800DAD84
/* 91178 800DADB8 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DADBC:
/* 9117C 800DADBC 8E420074 */  lw         $v0, 0x74($s2)
/* 91180 800DADC0 10400017 */  beqz       $v0, .Lrace_800DAE20
/* 91184 800DADC4 00008021 */   addu      $s0, $zero, $zero
/* 91188 800DADC8 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DADCC:
/* 9118C 800DADCC 8E420040 */  lw         $v0, 0x40($s2)
/* 91190 800DADD0 0202102B */  sltu       $v0, $s0, $v0
/* 91194 800DADD4 10400012 */  beqz       $v0, .Lrace_800DAE20
/* 91198 800DADD8 00000000 */   nop
/* 9119C 800DADDC 8E420074 */  lw         $v0, 0x74($s2)
/* 911A0 800DADE0 02222021 */  addu       $a0, $s1, $v0
/* 911A4 800DADE4 8C820010 */  lw         $v0, 0x10($a0)
/* 911A8 800DADE8 14530003 */  bne        $v0, $s3, .Lrace_800DADF8
/* 911AC 800DADEC 00000000 */   nop
/* 911B0 800DADF0 0C0359A7 */  jal        func_race_800D669C
/* 911B4 800DADF4 02802821 */   addu      $a1, $s4, $zero
.Lrace_800DADF8:
/* 911B8 800DADF8 8E420074 */  lw         $v0, 0x74($s2)
/* 911BC 800DADFC 02221821 */  addu       $v1, $s1, $v0
/* 911C0 800DAE00 8C620020 */  lw         $v0, 0x20($v1)
/* 911C4 800DAE04 14530004 */  bne        $v0, $s3, .Lrace_800DAE18
/* 911C8 800DAE08 26310030 */   addiu     $s1, $s1, 0x30
/* 911CC 800DAE0C 9062002C */  lbu        $v0, 0x2C($v1)
/* 911D0 800DAE10 34420001 */  ori        $v0, $v0, 0x1
/* 911D4 800DAE14 A062002C */  sb         $v0, 0x2C($v1)
.Lrace_800DAE18:
/* 911D8 800DAE18 08036B73 */  j          .Lrace_800DADCC
/* 911DC 800DAE1C 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DAE20:
/* 911E0 800DAE20 8E420078 */  lw         $v0, 0x78($s2)
/* 911E4 800DAE24 10400010 */  beqz       $v0, .Lrace_800DAE68
/* 911E8 800DAE28 00008021 */   addu      $s0, $zero, $zero
/* 911EC 800DAE2C 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAE30:
/* 911F0 800DAE30 8E42004C */  lw         $v0, 0x4C($s2)
/* 911F4 800DAE34 0202102B */  sltu       $v0, $s0, $v0
/* 911F8 800DAE38 1040000B */  beqz       $v0, .Lrace_800DAE68
/* 911FC 800DAE3C 00000000 */   nop
/* 91200 800DAE40 8E420078 */  lw         $v0, 0x78($s2)
/* 91204 800DAE44 02222021 */  addu       $a0, $s1, $v0
/* 91208 800DAE48 8C820010 */  lw         $v0, 0x10($a0)
/* 9120C 800DAE4C 54530004 */  bnel       $v0, $s3, .Lrace_800DAE60
/* 91210 800DAE50 2631002C */   addiu     $s1, $s1, 0x2C
/* 91214 800DAE54 0C0359A7 */  jal        func_race_800D669C
/* 91218 800DAE58 02802821 */   addu      $a1, $s4, $zero
/* 9121C 800DAE5C 2631002C */  addiu      $s1, $s1, 0x2C
.Lrace_800DAE60:
/* 91220 800DAE60 08036B8C */  j          .Lrace_800DAE30
/* 91224 800DAE64 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DAE68:
/* 91228 800DAE68 8E420084 */  lw         $v0, 0x84($s2)
/* 9122C 800DAE6C 10400010 */  beqz       $v0, .Lrace_800DAEB0
/* 91230 800DAE70 00008021 */   addu      $s0, $zero, $zero
/* 91234 800DAE74 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAE78:
/* 91238 800DAE78 8E420050 */  lw         $v0, 0x50($s2)
/* 9123C 800DAE7C 0202102B */  sltu       $v0, $s0, $v0
/* 91240 800DAE80 1040000B */  beqz       $v0, .Lrace_800DAEB0
/* 91244 800DAE84 00000000 */   nop
/* 91248 800DAE88 8E420084 */  lw         $v0, 0x84($s2)
/* 9124C 800DAE8C 02222021 */  addu       $a0, $s1, $v0
/* 91250 800DAE90 8C820010 */  lw         $v0, 0x10($a0)
/* 91254 800DAE94 54530004 */  bnel       $v0, $s3, .Lrace_800DAEA8
/* 91258 800DAE98 26310034 */   addiu     $s1, $s1, 0x34
/* 9125C 800DAE9C 0C0359A7 */  jal        func_race_800D669C
/* 91260 800DAEA0 02802821 */   addu      $a1, $s4, $zero
/* 91264 800DAEA4 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DAEA8:
/* 91268 800DAEA8 08036B9E */  j          .Lrace_800DAE78
/* 9126C 800DAEAC 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DAEB0:
/* 91270 800DAEB0 8E42006C */  lw         $v0, 0x6C($s2)
/* 91274 800DAEB4 10400012 */  beqz       $v0, .Lrace_800DAF00
/* 91278 800DAEB8 00000000 */   nop
/* 9127C 800DAEBC 8E420038 */  lw         $v0, 0x38($s2)
/* 91280 800DAEC0 1040000F */  beqz       $v0, .Lrace_800DAF00
/* 91284 800DAEC4 00008021 */   addu      $s0, $zero, $zero
.Lrace_800DAEC8:
/* 91288 800DAEC8 8E42006C */  lw         $v0, 0x6C($s2)
/* 9128C 800DAECC 001018C0 */  sll        $v1, $s0, 3
/* 91290 800DAED0 00621821 */  addu       $v1, $v1, $v0
/* 91294 800DAED4 8C620000 */  lw         $v0, 0x0($v1)
/* 91298 800DAED8 14530004 */  bne        $v0, $s3, .Lrace_800DAEEC
/* 9129C 800DAEDC 00000000 */   nop
/* 912A0 800DAEE0 8C650004 */  lw         $a1, 0x4($v1)
/* 912A4 800DAEE4 0C036CA0 */  jal        func_race_800DB280
/* 912A8 800DAEE8 02402021 */   addu      $a0, $s2, $zero
.Lrace_800DAEEC:
/* 912AC 800DAEEC 8E420038 */  lw         $v0, 0x38($s2)
/* 912B0 800DAEF0 26100001 */  addiu      $s0, $s0, 0x1
/* 912B4 800DAEF4 0202102B */  sltu       $v0, $s0, $v0
/* 912B8 800DAEF8 1440FFF3 */  bnez       $v0, .Lrace_800DAEC8
/* 912BC 800DAEFC 00000000 */   nop
.Lrace_800DAF00:
/* 912C0 800DAF00 8E42008C */  lw         $v0, 0x8C($s2)
/* 912C4 800DAF04 10400010 */  beqz       $v0, .Lrace_800DAF48
/* 912C8 800DAF08 00008021 */   addu      $s0, $zero, $zero
/* 912CC 800DAF0C 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DAF10:
/* 912D0 800DAF10 8E420058 */  lw         $v0, 0x58($s2)
/* 912D4 800DAF14 0202102B */  sltu       $v0, $s0, $v0
/* 912D8 800DAF18 1040000C */  beqz       $v0, .Lrace_800DAF4C
/* 912DC 800DAF1C 02602821 */   addu      $a1, $s3, $zero
/* 912E0 800DAF20 8E42008C */  lw         $v0, 0x8C($s2)
/* 912E4 800DAF24 00821821 */  addu       $v1, $a0, $v0
/* 912E8 800DAF28 8C620030 */  lw         $v0, 0x30($v1)
/* 912EC 800DAF2C 14530004 */  bne        $v0, $s3, .Lrace_800DAF40
/* 912F0 800DAF30 24840038 */   addiu     $a0, $a0, 0x38
/* 912F4 800DAF34 90620034 */  lbu        $v0, 0x34($v1)
/* 912F8 800DAF38 34420001 */  ori        $v0, $v0, 0x1
/* 912FC 800DAF3C A0620034 */  sb         $v0, 0x34($v1)
.Lrace_800DAF40:
/* 91300 800DAF40 08036BC4 */  j          .Lrace_800DAF10
/* 91304 800DAF44 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DAF48:
/* 91308 800DAF48 02602821 */  addu       $a1, $s3, $zero
.Lrace_800DAF4C:
/* 9130C 800DAF4C 8E440014 */  lw         $a0, 0x14($s2)
/* 91310 800DAF50 0C03A35C */  jal        func_race_800E8D70
/* 91314 800DAF54 02803021 */   addu      $a2, $s4, $zero
/* 91318 800DAF58 8E440024 */  lw         $a0, 0x24($s2)
/* 9131C 800DAF5C 0C04B711 */  jal        func_race_8012DC44
/* 91320 800DAF60 02602821 */   addu      $a1, $s3, $zero
/* 91324 800DAF64 8FBF0024 */  lw         $ra, 0x24($sp)
/* 91328 800DAF68 8FB40020 */  lw         $s4, 0x20($sp)
/* 9132C 800DAF6C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 91330 800DAF70 8FB20018 */  lw         $s2, 0x18($sp)
/* 91334 800DAF74 8FB10014 */  lw         $s1, 0x14($sp)
/* 91338 800DAF78 8FB00010 */  lw         $s0, 0x10($sp)
/* 9133C 800DAF7C 03E00008 */  jr         $ra
/* 91340 800DAF80 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DAF84
/* 91344 800DAF84 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 91348 800DAF88 AFB20018 */  sw         $s2, 0x18($sp)
/* 9134C 800DAF8C 00809021 */  addu       $s2, $a0, $zero
/* 91350 800DAF90 AFB3001C */  sw         $s3, 0x1C($sp)
/* 91354 800DAF94 00A09821 */  addu       $s3, $a1, $zero
/* 91358 800DAF98 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9135C 800DAF9C AFB40020 */  sw         $s4, 0x20($sp)
/* 91360 800DAFA0 AFB10014 */  sw         $s1, 0x14($sp)
/* 91364 800DAFA4 AFB00010 */  sw         $s0, 0x10($sp)
/* 91368 800DAFA8 8E42005C */  lw         $v0, 0x5C($s2)
/* 9136C 800DAFAC 10400011 */  beqz       $v0, .Lrace_800DAFF4
/* 91370 800DAFB0 00C0A021 */   addu      $s4, $a2, $zero
/* 91374 800DAFB4 00008021 */  addu       $s0, $zero, $zero
/* 91378 800DAFB8 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DAFBC:
/* 9137C 800DAFBC 8E420028 */  lw         $v0, 0x28($s2)
/* 91380 800DAFC0 0202102B */  sltu       $v0, $s0, $v0
/* 91384 800DAFC4 1040000B */  beqz       $v0, .Lrace_800DAFF4
/* 91388 800DAFC8 00000000 */   nop
/* 9138C 800DAFCC 8E42005C */  lw         $v0, 0x5C($s2)
/* 91390 800DAFD0 02222021 */  addu       $a0, $s1, $v0
/* 91394 800DAFD4 8C820010 */  lw         $v0, 0x10($a0)
/* 91398 800DAFD8 54530004 */  bnel       $v0, $s3, .Lrace_800DAFEC
/* 9139C 800DAFDC 2631005C */   addiu     $s1, $s1, 0x5C
/* 913A0 800DAFE0 0C0359BB */  jal        func_race_800D66EC
/* 913A4 800DAFE4 02802821 */   addu      $a1, $s4, $zero
/* 913A8 800DAFE8 2631005C */  addiu      $s1, $s1, 0x5C
.Lrace_800DAFEC:
/* 913AC 800DAFEC 08036BEF */  j          .Lrace_800DAFBC
/* 913B0 800DAFF0 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DAFF4:
/* 913B4 800DAFF4 8E420060 */  lw         $v0, 0x60($s2)
/* 913B8 800DAFF8 10400010 */  beqz       $v0, .Lrace_800DB03C
/* 913BC 800DAFFC 00008021 */   addu      $s0, $zero, $zero
/* 913C0 800DB000 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB004:
/* 913C4 800DB004 8E42002C */  lw         $v0, 0x2C($s2)
/* 913C8 800DB008 0202102B */  sltu       $v0, $s0, $v0
/* 913CC 800DB00C 1040000B */  beqz       $v0, .Lrace_800DB03C
/* 913D0 800DB010 00000000 */   nop
/* 913D4 800DB014 8E420060 */  lw         $v0, 0x60($s2)
/* 913D8 800DB018 02222021 */  addu       $a0, $s1, $v0
/* 913DC 800DB01C 8C820010 */  lw         $v0, 0x10($a0)
/* 913E0 800DB020 54530004 */  bnel       $v0, $s3, .Lrace_800DB034
/* 913E4 800DB024 26310034 */   addiu     $s1, $s1, 0x34
/* 913E8 800DB028 0C0359BB */  jal        func_race_800D66EC
/* 913EC 800DB02C 02802821 */   addu      $a1, $s4, $zero
/* 913F0 800DB030 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DB034:
/* 913F4 800DB034 08036C01 */  j          .Lrace_800DB004
/* 913F8 800DB038 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB03C:
/* 913FC 800DB03C 8E420064 */  lw         $v0, 0x64($s2)
/* 91400 800DB040 10400010 */  beqz       $v0, .Lrace_800DB084
/* 91404 800DB044 00008021 */   addu      $s0, $zero, $zero
/* 91408 800DB048 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB04C:
/* 9140C 800DB04C 8E420030 */  lw         $v0, 0x30($s2)
/* 91410 800DB050 0202102B */  sltu       $v0, $s0, $v0
/* 91414 800DB054 1040000B */  beqz       $v0, .Lrace_800DB084
/* 91418 800DB058 00000000 */   nop
/* 9141C 800DB05C 8E420064 */  lw         $v0, 0x64($s2)
/* 91420 800DB060 02222021 */  addu       $a0, $s1, $v0
/* 91424 800DB064 8C820010 */  lw         $v0, 0x10($a0)
/* 91428 800DB068 54530004 */  bnel       $v0, $s3, .Lrace_800DB07C
/* 9142C 800DB06C 26310034 */   addiu     $s1, $s1, 0x34
/* 91430 800DB070 0C0359BB */  jal        func_race_800D66EC
/* 91434 800DB074 02802821 */   addu      $a1, $s4, $zero
/* 91438 800DB078 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DB07C:
/* 9143C 800DB07C 08036C13 */  j          .Lrace_800DB04C
/* 91440 800DB080 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB084:
/* 91444 800DB084 8E420068 */  lw         $v0, 0x68($s2)
/* 91448 800DB088 10400010 */  beqz       $v0, .Lrace_800DB0CC
/* 9144C 800DB08C 00008021 */   addu      $s0, $zero, $zero
/* 91450 800DB090 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB094:
/* 91454 800DB094 8E420034 */  lw         $v0, 0x34($s2)
/* 91458 800DB098 0202102B */  sltu       $v0, $s0, $v0
/* 9145C 800DB09C 1040000B */  beqz       $v0, .Lrace_800DB0CC
/* 91460 800DB0A0 00000000 */   nop
/* 91464 800DB0A4 8E420068 */  lw         $v0, 0x68($s2)
/* 91468 800DB0A8 02222021 */  addu       $a0, $s1, $v0
/* 9146C 800DB0AC 8C820010 */  lw         $v0, 0x10($a0)
/* 91470 800DB0B0 54530004 */  bnel       $v0, $s3, .Lrace_800DB0C4
/* 91474 800DB0B4 26310064 */   addiu     $s1, $s1, 0x64
/* 91478 800DB0B8 0C0359BB */  jal        func_race_800D66EC
/* 9147C 800DB0BC 02802821 */   addu      $a1, $s4, $zero
/* 91480 800DB0C0 26310064 */  addiu      $s1, $s1, 0x64
.Lrace_800DB0C4:
/* 91484 800DB0C4 08036C25 */  j          .Lrace_800DB094
/* 91488 800DB0C8 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB0CC:
/* 9148C 800DB0CC 8E420070 */  lw         $v0, 0x70($s2)
/* 91490 800DB0D0 10400010 */  beqz       $v0, .Lrace_800DB114
/* 91494 800DB0D4 00008021 */   addu      $s0, $zero, $zero
/* 91498 800DB0D8 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB0DC:
/* 9149C 800DB0DC 8E42003C */  lw         $v0, 0x3C($s2)
/* 914A0 800DB0E0 0202102B */  sltu       $v0, $s0, $v0
/* 914A4 800DB0E4 1040000B */  beqz       $v0, .Lrace_800DB114
/* 914A8 800DB0E8 00000000 */   nop
/* 914AC 800DB0EC 8E420070 */  lw         $v0, 0x70($s2)
/* 914B0 800DB0F0 02222021 */  addu       $a0, $s1, $v0
/* 914B4 800DB0F4 8C820010 */  lw         $v0, 0x10($a0)
/* 914B8 800DB0F8 54530004 */  bnel       $v0, $s3, .Lrace_800DB10C
/* 914BC 800DB0FC 26310034 */   addiu     $s1, $s1, 0x34
/* 914C0 800DB100 0C0359BB */  jal        func_race_800D66EC
/* 914C4 800DB104 02802821 */   addu      $a1, $s4, $zero
/* 914C8 800DB108 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DB10C:
/* 914CC 800DB10C 08036C37 */  j          .Lrace_800DB0DC
/* 914D0 800DB110 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB114:
/* 914D4 800DB114 8E420074 */  lw         $v0, 0x74($s2)
/* 914D8 800DB118 10400017 */  beqz       $v0, .Lrace_800DB178
/* 914DC 800DB11C 00008021 */   addu      $s0, $zero, $zero
/* 914E0 800DB120 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB124:
/* 914E4 800DB124 8E420040 */  lw         $v0, 0x40($s2)
/* 914E8 800DB128 0202102B */  sltu       $v0, $s0, $v0
/* 914EC 800DB12C 10400012 */  beqz       $v0, .Lrace_800DB178
/* 914F0 800DB130 00000000 */   nop
/* 914F4 800DB134 8E420074 */  lw         $v0, 0x74($s2)
/* 914F8 800DB138 02222021 */  addu       $a0, $s1, $v0
/* 914FC 800DB13C 8C820010 */  lw         $v0, 0x10($a0)
/* 91500 800DB140 14530003 */  bne        $v0, $s3, .Lrace_800DB150
/* 91504 800DB144 00000000 */   nop
/* 91508 800DB148 0C0359BB */  jal        func_race_800D66EC
/* 9150C 800DB14C 02802821 */   addu      $a1, $s4, $zero
.Lrace_800DB150:
/* 91510 800DB150 8E420074 */  lw         $v0, 0x74($s2)
/* 91514 800DB154 02221821 */  addu       $v1, $s1, $v0
/* 91518 800DB158 8C620020 */  lw         $v0, 0x20($v1)
/* 9151C 800DB15C 14530004 */  bne        $v0, $s3, .Lrace_800DB170
/* 91520 800DB160 26310030 */   addiu     $s1, $s1, 0x30
/* 91524 800DB164 9062002C */  lbu        $v0, 0x2C($v1)
/* 91528 800DB168 304200FE */  andi       $v0, $v0, 0xFE
/* 9152C 800DB16C A062002C */  sb         $v0, 0x2C($v1)
.Lrace_800DB170:
/* 91530 800DB170 08036C49 */  j          .Lrace_800DB124
/* 91534 800DB174 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB178:
/* 91538 800DB178 8E420078 */  lw         $v0, 0x78($s2)
/* 9153C 800DB17C 10400010 */  beqz       $v0, .Lrace_800DB1C0
/* 91540 800DB180 00008021 */   addu      $s0, $zero, $zero
/* 91544 800DB184 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB188:
/* 91548 800DB188 8E42004C */  lw         $v0, 0x4C($s2)
/* 9154C 800DB18C 0202102B */  sltu       $v0, $s0, $v0
/* 91550 800DB190 1040000B */  beqz       $v0, .Lrace_800DB1C0
/* 91554 800DB194 00000000 */   nop
/* 91558 800DB198 8E420078 */  lw         $v0, 0x78($s2)
/* 9155C 800DB19C 02222021 */  addu       $a0, $s1, $v0
/* 91560 800DB1A0 8C820010 */  lw         $v0, 0x10($a0)
/* 91564 800DB1A4 54530004 */  bnel       $v0, $s3, .Lrace_800DB1B8
/* 91568 800DB1A8 2631002C */   addiu     $s1, $s1, 0x2C
/* 9156C 800DB1AC 0C0359BB */  jal        func_race_800D66EC
/* 91570 800DB1B0 02802821 */   addu      $a1, $s4, $zero
/* 91574 800DB1B4 2631002C */  addiu      $s1, $s1, 0x2C
.Lrace_800DB1B8:
/* 91578 800DB1B8 08036C62 */  j          .Lrace_800DB188
/* 9157C 800DB1BC 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB1C0:
/* 91580 800DB1C0 8E420084 */  lw         $v0, 0x84($s2)
/* 91584 800DB1C4 10400010 */  beqz       $v0, .Lrace_800DB208
/* 91588 800DB1C8 00008021 */   addu      $s0, $zero, $zero
/* 9158C 800DB1CC 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB1D0:
/* 91590 800DB1D0 8E420050 */  lw         $v0, 0x50($s2)
/* 91594 800DB1D4 0202102B */  sltu       $v0, $s0, $v0
/* 91598 800DB1D8 1040000B */  beqz       $v0, .Lrace_800DB208
/* 9159C 800DB1DC 00000000 */   nop
/* 915A0 800DB1E0 8E420084 */  lw         $v0, 0x84($s2)
/* 915A4 800DB1E4 02222021 */  addu       $a0, $s1, $v0
/* 915A8 800DB1E8 8C820010 */  lw         $v0, 0x10($a0)
/* 915AC 800DB1EC 54530004 */  bnel       $v0, $s3, .Lrace_800DB200
/* 915B0 800DB1F0 26310034 */   addiu     $s1, $s1, 0x34
/* 915B4 800DB1F4 0C0359BB */  jal        func_race_800D66EC
/* 915B8 800DB1F8 02802821 */   addu      $a1, $s4, $zero
/* 915BC 800DB1FC 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DB200:
/* 915C0 800DB200 08036C74 */  j          .Lrace_800DB1D0
/* 915C4 800DB204 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB208:
/* 915C8 800DB208 8E42008C */  lw         $v0, 0x8C($s2)
/* 915CC 800DB20C 10400010 */  beqz       $v0, .Lrace_800DB250
/* 915D0 800DB210 00008021 */   addu      $s0, $zero, $zero
/* 915D4 800DB214 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DB218:
/* 915D8 800DB218 8E420058 */  lw         $v0, 0x58($s2)
/* 915DC 800DB21C 0202102B */  sltu       $v0, $s0, $v0
/* 915E0 800DB220 1040000C */  beqz       $v0, .Lrace_800DB254
/* 915E4 800DB224 02602821 */   addu      $a1, $s3, $zero
/* 915E8 800DB228 8E42008C */  lw         $v0, 0x8C($s2)
/* 915EC 800DB22C 00821821 */  addu       $v1, $a0, $v0
/* 915F0 800DB230 8C620030 */  lw         $v0, 0x30($v1)
/* 915F4 800DB234 14530004 */  bne        $v0, $s3, .Lrace_800DB248
/* 915F8 800DB238 24840038 */   addiu     $a0, $a0, 0x38
/* 915FC 800DB23C 90620034 */  lbu        $v0, 0x34($v1)
/* 91600 800DB240 304200FE */  andi       $v0, $v0, 0xFE
/* 91604 800DB244 A0620034 */  sb         $v0, 0x34($v1)
.Lrace_800DB248:
/* 91608 800DB248 08036C86 */  j          .Lrace_800DB218
/* 9160C 800DB24C 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB250:
/* 91610 800DB250 02602821 */  addu       $a1, $s3, $zero
.Lrace_800DB254:
/* 91614 800DB254 8E440014 */  lw         $a0, 0x14($s2)
/* 91618 800DB258 0C03A38F */  jal        func_race_800E8E3C
/* 9161C 800DB25C 02803021 */   addu      $a2, $s4, $zero
/* 91620 800DB260 8FBF0024 */  lw         $ra, 0x24($sp)
/* 91624 800DB264 8FB40020 */  lw         $s4, 0x20($sp)
/* 91628 800DB268 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9162C 800DB26C 8FB20018 */  lw         $s2, 0x18($sp)
/* 91630 800DB270 8FB10014 */  lw         $s1, 0x14($sp)
/* 91634 800DB274 8FB00010 */  lw         $s0, 0x10($sp)
/* 91638 800DB278 03E00008 */  jr         $ra
/* 9163C 800DB27C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DB280
/* 91640 800DB280 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 91644 800DB284 AFBF0010 */  sw         $ra, 0x10($sp)
/* 91648 800DB288 8C82005C */  lw         $v0, 0x5C($a0)
/* 9164C 800DB28C 1040000F */  beqz       $v0, .Lrace_800DB2CC
/* 91650 800DB290 00001821 */   addu      $v1, $zero, $zero
/* 91654 800DB294 24080005 */  addiu      $t0, $zero, 0x5
/* 91658 800DB298 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB29C:
/* 9165C 800DB29C 8C820028 */  lw         $v0, 0x28($a0)
/* 91660 800DB2A0 0062102B */  sltu       $v0, $v1, $v0
/* 91664 800DB2A4 10400009 */  beqz       $v0, .Lrace_800DB2CC
/* 91668 800DB2A8 00000000 */   nop
/* 9166C 800DB2AC 8C82005C */  lw         $v0, 0x5C($a0)
/* 91670 800DB2B0 00E23021 */  addu       $a2, $a3, $v0
/* 91674 800DB2B4 8CC20010 */  lw         $v0, 0x10($a2)
/* 91678 800DB2B8 50450001 */  beql       $v0, $a1, .Lrace_800DB2C0
/* 9167C 800DB2BC ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB2C0:
/* 91680 800DB2C0 24E7005C */  addiu      $a3, $a3, 0x5C
/* 91684 800DB2C4 08036CA7 */  j          .Lrace_800DB29C
/* 91688 800DB2C8 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB2CC:
/* 9168C 800DB2CC 8C820060 */  lw         $v0, 0x60($a0)
/* 91690 800DB2D0 1040000F */  beqz       $v0, .Lrace_800DB310
/* 91694 800DB2D4 00001821 */   addu      $v1, $zero, $zero
/* 91698 800DB2D8 24080005 */  addiu      $t0, $zero, 0x5
/* 9169C 800DB2DC 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB2E0:
/* 916A0 800DB2E0 8C82002C */  lw         $v0, 0x2C($a0)
/* 916A4 800DB2E4 0062102B */  sltu       $v0, $v1, $v0
/* 916A8 800DB2E8 10400009 */  beqz       $v0, .Lrace_800DB310
/* 916AC 800DB2EC 00000000 */   nop
/* 916B0 800DB2F0 8C820060 */  lw         $v0, 0x60($a0)
/* 916B4 800DB2F4 00E23021 */  addu       $a2, $a3, $v0
/* 916B8 800DB2F8 8CC20010 */  lw         $v0, 0x10($a2)
/* 916BC 800DB2FC 50450001 */  beql       $v0, $a1, .Lrace_800DB304
/* 916C0 800DB300 ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB304:
/* 916C4 800DB304 24E70034 */  addiu      $a3, $a3, 0x34
/* 916C8 800DB308 08036CB8 */  j          .Lrace_800DB2E0
/* 916CC 800DB30C 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB310:
/* 916D0 800DB310 8C820064 */  lw         $v0, 0x64($a0)
/* 916D4 800DB314 1040000F */  beqz       $v0, .Lrace_800DB354
/* 916D8 800DB318 00001821 */   addu      $v1, $zero, $zero
/* 916DC 800DB31C 24080005 */  addiu      $t0, $zero, 0x5
/* 916E0 800DB320 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB324:
/* 916E4 800DB324 8C820030 */  lw         $v0, 0x30($a0)
/* 916E8 800DB328 0062102B */  sltu       $v0, $v1, $v0
/* 916EC 800DB32C 10400009 */  beqz       $v0, .Lrace_800DB354
/* 916F0 800DB330 00000000 */   nop
/* 916F4 800DB334 8C820064 */  lw         $v0, 0x64($a0)
/* 916F8 800DB338 00E23021 */  addu       $a2, $a3, $v0
/* 916FC 800DB33C 8CC20010 */  lw         $v0, 0x10($a2)
/* 91700 800DB340 50450001 */  beql       $v0, $a1, .Lrace_800DB348
/* 91704 800DB344 ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB348:
/* 91708 800DB348 24E70034 */  addiu      $a3, $a3, 0x34
/* 9170C 800DB34C 08036CC9 */  j          .Lrace_800DB324
/* 91710 800DB350 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB354:
/* 91714 800DB354 8C820068 */  lw         $v0, 0x68($a0)
/* 91718 800DB358 1040000F */  beqz       $v0, .Lrace_800DB398
/* 9171C 800DB35C 00001821 */   addu      $v1, $zero, $zero
/* 91720 800DB360 24080005 */  addiu      $t0, $zero, 0x5
/* 91724 800DB364 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB368:
/* 91728 800DB368 8C820034 */  lw         $v0, 0x34($a0)
/* 9172C 800DB36C 0062102B */  sltu       $v0, $v1, $v0
/* 91730 800DB370 10400009 */  beqz       $v0, .Lrace_800DB398
/* 91734 800DB374 00000000 */   nop
/* 91738 800DB378 8C820068 */  lw         $v0, 0x68($a0)
/* 9173C 800DB37C 00E23021 */  addu       $a2, $a3, $v0
/* 91740 800DB380 8CC20010 */  lw         $v0, 0x10($a2)
/* 91744 800DB384 50450001 */  beql       $v0, $a1, .Lrace_800DB38C
/* 91748 800DB388 ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB38C:
/* 9174C 800DB38C 24E70064 */  addiu      $a3, $a3, 0x64
/* 91750 800DB390 08036CDA */  j          .Lrace_800DB368
/* 91754 800DB394 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB398:
/* 91758 800DB398 8C820070 */  lw         $v0, 0x70($a0)
/* 9175C 800DB39C 1040000F */  beqz       $v0, .Lrace_800DB3DC
/* 91760 800DB3A0 00001821 */   addu      $v1, $zero, $zero
/* 91764 800DB3A4 24080005 */  addiu      $t0, $zero, 0x5
/* 91768 800DB3A8 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB3AC:
/* 9176C 800DB3AC 8C82003C */  lw         $v0, 0x3C($a0)
/* 91770 800DB3B0 0062102B */  sltu       $v0, $v1, $v0
/* 91774 800DB3B4 10400009 */  beqz       $v0, .Lrace_800DB3DC
/* 91778 800DB3B8 00000000 */   nop
/* 9177C 800DB3BC 8C820070 */  lw         $v0, 0x70($a0)
/* 91780 800DB3C0 00E23021 */  addu       $a2, $a3, $v0
/* 91784 800DB3C4 8CC20010 */  lw         $v0, 0x10($a2)
/* 91788 800DB3C8 50450001 */  beql       $v0, $a1, .Lrace_800DB3D0
/* 9178C 800DB3CC ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB3D0:
/* 91790 800DB3D0 24E70034 */  addiu      $a3, $a3, 0x34
/* 91794 800DB3D4 08036CEB */  j          .Lrace_800DB3AC
/* 91798 800DB3D8 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB3DC:
/* 9179C 800DB3DC 8C820074 */  lw         $v0, 0x74($a0)
/* 917A0 800DB3E0 1040000F */  beqz       $v0, .Lrace_800DB420
/* 917A4 800DB3E4 00001821 */   addu      $v1, $zero, $zero
/* 917A8 800DB3E8 24080005 */  addiu      $t0, $zero, 0x5
/* 917AC 800DB3EC 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB3F0:
/* 917B0 800DB3F0 8C820040 */  lw         $v0, 0x40($a0)
/* 917B4 800DB3F4 0062102B */  sltu       $v0, $v1, $v0
/* 917B8 800DB3F8 10400009 */  beqz       $v0, .Lrace_800DB420
/* 917BC 800DB3FC 00000000 */   nop
/* 917C0 800DB400 8C820074 */  lw         $v0, 0x74($a0)
/* 917C4 800DB404 00E23021 */  addu       $a2, $a3, $v0
/* 917C8 800DB408 8CC20010 */  lw         $v0, 0x10($a2)
/* 917CC 800DB40C 50450001 */  beql       $v0, $a1, .Lrace_800DB414
/* 917D0 800DB410 ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB414:
/* 917D4 800DB414 24E70030 */  addiu      $a3, $a3, 0x30
/* 917D8 800DB418 08036CFC */  j          .Lrace_800DB3F0
/* 917DC 800DB41C 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB420:
/* 917E0 800DB420 8C820078 */  lw         $v0, 0x78($a0)
/* 917E4 800DB424 1040000F */  beqz       $v0, .Lrace_800DB464
/* 917E8 800DB428 00001821 */   addu      $v1, $zero, $zero
/* 917EC 800DB42C 24080005 */  addiu      $t0, $zero, 0x5
/* 917F0 800DB430 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB434:
/* 917F4 800DB434 8C82004C */  lw         $v0, 0x4C($a0)
/* 917F8 800DB438 0062102B */  sltu       $v0, $v1, $v0
/* 917FC 800DB43C 10400009 */  beqz       $v0, .Lrace_800DB464
/* 91800 800DB440 00000000 */   nop
/* 91804 800DB444 8C820078 */  lw         $v0, 0x78($a0)
/* 91808 800DB448 00E23021 */  addu       $a2, $a3, $v0
/* 9180C 800DB44C 8CC20010 */  lw         $v0, 0x10($a2)
/* 91810 800DB450 50450001 */  beql       $v0, $a1, .Lrace_800DB458
/* 91814 800DB454 ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB458:
/* 91818 800DB458 24E7002C */  addiu      $a3, $a3, 0x2C
/* 9181C 800DB45C 08036D0D */  j          .Lrace_800DB434
/* 91820 800DB460 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB464:
/* 91824 800DB464 8C82007C */  lw         $v0, 0x7C($a0)
/* 91828 800DB468 1040000F */  beqz       $v0, .Lrace_800DB4A8
/* 9182C 800DB46C 00001821 */   addu      $v1, $zero, $zero
/* 91830 800DB470 24080005 */  addiu      $t0, $zero, 0x5
/* 91834 800DB474 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB478:
/* 91838 800DB478 8C820044 */  lw         $v0, 0x44($a0)
/* 9183C 800DB47C 0062102B */  sltu       $v0, $v1, $v0
/* 91840 800DB480 10400009 */  beqz       $v0, .Lrace_800DB4A8
/* 91844 800DB484 00000000 */   nop
/* 91848 800DB488 8C82007C */  lw         $v0, 0x7C($a0)
/* 9184C 800DB48C 00E23021 */  addu       $a2, $a3, $v0
/* 91850 800DB490 8CC20010 */  lw         $v0, 0x10($a2)
/* 91854 800DB494 50450001 */  beql       $v0, $a1, .Lrace_800DB49C
/* 91858 800DB498 ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB49C:
/* 9185C 800DB49C 24E70048 */  addiu      $a3, $a3, 0x48
/* 91860 800DB4A0 08036D1E */  j          .Lrace_800DB478
/* 91864 800DB4A4 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB4A8:
/* 91868 800DB4A8 8C820080 */  lw         $v0, 0x80($a0)
/* 9186C 800DB4AC 1040000F */  beqz       $v0, .Lrace_800DB4EC
/* 91870 800DB4B0 00001821 */   addu      $v1, $zero, $zero
/* 91874 800DB4B4 24080005 */  addiu      $t0, $zero, 0x5
/* 91878 800DB4B8 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB4BC:
/* 9187C 800DB4BC 8C820048 */  lw         $v0, 0x48($a0)
/* 91880 800DB4C0 0062102B */  sltu       $v0, $v1, $v0
/* 91884 800DB4C4 10400009 */  beqz       $v0, .Lrace_800DB4EC
/* 91888 800DB4C8 00000000 */   nop
/* 9188C 800DB4CC 8C820080 */  lw         $v0, 0x80($a0)
/* 91890 800DB4D0 00E23021 */  addu       $a2, $a3, $v0
/* 91894 800DB4D4 8CC20010 */  lw         $v0, 0x10($a2)
/* 91898 800DB4D8 50450001 */  beql       $v0, $a1, .Lrace_800DB4E0
/* 9189C 800DB4DC ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB4E0:
/* 918A0 800DB4E0 24E70024 */  addiu      $a3, $a3, 0x24
/* 918A4 800DB4E4 08036D2F */  j          .Lrace_800DB4BC
/* 918A8 800DB4E8 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB4EC:
/* 918AC 800DB4EC 8C820084 */  lw         $v0, 0x84($a0)
/* 918B0 800DB4F0 1040000F */  beqz       $v0, .Lrace_800DB530
/* 918B4 800DB4F4 00001821 */   addu      $v1, $zero, $zero
/* 918B8 800DB4F8 24080005 */  addiu      $t0, $zero, 0x5
/* 918BC 800DB4FC 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB500:
/* 918C0 800DB500 8C820050 */  lw         $v0, 0x50($a0)
/* 918C4 800DB504 0062102B */  sltu       $v0, $v1, $v0
/* 918C8 800DB508 10400009 */  beqz       $v0, .Lrace_800DB530
/* 918CC 800DB50C 00000000 */   nop
/* 918D0 800DB510 8C820084 */  lw         $v0, 0x84($a0)
/* 918D4 800DB514 00E23021 */  addu       $a2, $a3, $v0
/* 918D8 800DB518 8CC20010 */  lw         $v0, 0x10($a2)
/* 918DC 800DB51C 50450001 */  beql       $v0, $a1, .Lrace_800DB524
/* 918E0 800DB520 ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB524:
/* 918E4 800DB524 24E70034 */  addiu      $a3, $a3, 0x34
/* 918E8 800DB528 08036D40 */  j          .Lrace_800DB500
/* 918EC 800DB52C 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB530:
/* 918F0 800DB530 8C820088 */  lw         $v0, 0x88($a0)
/* 918F4 800DB534 1040000F */  beqz       $v0, .Lrace_800DB574
/* 918F8 800DB538 00001821 */   addu      $v1, $zero, $zero
/* 918FC 800DB53C 24080005 */  addiu      $t0, $zero, 0x5
/* 91900 800DB540 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB544:
/* 91904 800DB544 8C820054 */  lw         $v0, 0x54($a0)
/* 91908 800DB548 0062102B */  sltu       $v0, $v1, $v0
/* 9190C 800DB54C 10400009 */  beqz       $v0, .Lrace_800DB574
/* 91910 800DB550 00000000 */   nop
/* 91914 800DB554 8C820088 */  lw         $v0, 0x88($a0)
/* 91918 800DB558 00E23021 */  addu       $a2, $a3, $v0
/* 9191C 800DB55C 8CC20010 */  lw         $v0, 0x10($a2)
/* 91920 800DB560 50450001 */  beql       $v0, $a1, .Lrace_800DB568
/* 91924 800DB564 ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB568:
/* 91928 800DB568 24E7002C */  addiu      $a3, $a3, 0x2C
/* 9192C 800DB56C 08036D51 */  j          .Lrace_800DB544
/* 91930 800DB570 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB574:
/* 91934 800DB574 8C82008C */  lw         $v0, 0x8C($a0)
/* 91938 800DB578 1040000F */  beqz       $v0, .Lrace_800DB5B8
/* 9193C 800DB57C 00001821 */   addu      $v1, $zero, $zero
/* 91940 800DB580 24080005 */  addiu      $t0, $zero, 0x5
/* 91944 800DB584 00603821 */  addu       $a3, $v1, $zero
.Lrace_800DB588:
/* 91948 800DB588 8C820058 */  lw         $v0, 0x58($a0)
/* 9194C 800DB58C 0062102B */  sltu       $v0, $v1, $v0
/* 91950 800DB590 10400009 */  beqz       $v0, .Lrace_800DB5B8
/* 91954 800DB594 00000000 */   nop
/* 91958 800DB598 8C82008C */  lw         $v0, 0x8C($a0)
/* 9195C 800DB59C 00E23021 */  addu       $a2, $a3, $v0
/* 91960 800DB5A0 8CC20010 */  lw         $v0, 0x10($a2)
/* 91964 800DB5A4 50450001 */  beql       $v0, $a1, .Lrace_800DB5AC
/* 91968 800DB5A8 ACC80014 */   sw        $t0, 0x14($a2)
.Lrace_800DB5AC:
/* 9196C 800DB5AC 24E70038 */  addiu      $a3, $a3, 0x38
/* 91970 800DB5B0 08036D62 */  j          .Lrace_800DB588
/* 91974 800DB5B4 24630001 */   addiu     $v1, $v1, 0x1
.Lrace_800DB5B8:
/* 91978 800DB5B8 8C840014 */  lw         $a0, 0x14($a0)
/* 9197C 800DB5BC 0C03A3C2 */  jal        func_race_800E8F08
/* 91980 800DB5C0 00000000 */   nop
/* 91984 800DB5C4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 91988 800DB5C8 03E00008 */  jr         $ra
/* 9198C 800DB5CC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DB5D0
/* 91990 800DB5D0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 91994 800DB5D4 AFB20018 */  sw         $s2, 0x18($sp)
/* 91998 800DB5D8 00809021 */  addu       $s2, $a0, $zero
/* 9199C 800DB5DC AFB40020 */  sw         $s4, 0x20($sp)
/* 919A0 800DB5E0 00A0A021 */  addu       $s4, $a1, $zero
/* 919A4 800DB5E4 AFB50024 */  sw         $s5, 0x24($sp)
/* 919A8 800DB5E8 00C0A821 */  addu       $s5, $a2, $zero
/* 919AC 800DB5EC AFBF0028 */  sw         $ra, 0x28($sp)
/* 919B0 800DB5F0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 919B4 800DB5F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 919B8 800DB5F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 919BC 800DB5FC 8E42005C */  lw         $v0, 0x5C($s2)
/* 919C0 800DB600 10400018 */  beqz       $v0, .Lrace_800DB664
/* 919C4 800DB604 00E09821 */   addu      $s3, $a3, $zero
/* 919C8 800DB608 00008021 */  addu       $s0, $zero, $zero
/* 919CC 800DB60C 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB610:
/* 919D0 800DB610 8E420028 */  lw         $v0, 0x28($s2)
/* 919D4 800DB614 0202102B */  sltu       $v0, $s0, $v0
/* 919D8 800DB618 10400012 */  beqz       $v0, .Lrace_800DB664
/* 919DC 800DB61C 00000000 */   nop
/* 919E0 800DB620 8E42005C */  lw         $v0, 0x5C($s2)
/* 919E4 800DB624 02222021 */  addu       $a0, $s1, $v0
/* 919E8 800DB628 8C820010 */  lw         $v0, 0x10($a0)
/* 919EC 800DB62C 14540003 */  bne        $v0, $s4, .Lrace_800DB63C
/* 919F0 800DB630 00000000 */   nop
/* 919F4 800DB634 0C0359A7 */  jal        func_race_800D669C
/* 919F8 800DB638 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DB63C:
/* 919FC 800DB63C 8E42005C */  lw         $v0, 0x5C($s2)
/* 91A00 800DB640 02222021 */  addu       $a0, $s1, $v0
/* 91A04 800DB644 8C820010 */  lw         $v0, 0x10($a0)
/* 91A08 800DB648 54550004 */  bnel       $v0, $s5, .Lrace_800DB65C
/* 91A0C 800DB64C 2631005C */   addiu     $s1, $s1, 0x5C
/* 91A10 800DB650 0C0359BB */  jal        func_race_800D66EC
/* 91A14 800DB654 02602821 */   addu      $a1, $s3, $zero
/* 91A18 800DB658 2631005C */  addiu      $s1, $s1, 0x5C
.Lrace_800DB65C:
/* 91A1C 800DB65C 08036D84 */  j          .Lrace_800DB610
/* 91A20 800DB660 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB664:
/* 91A24 800DB664 8E420060 */  lw         $v0, 0x60($s2)
/* 91A28 800DB668 10400017 */  beqz       $v0, .Lrace_800DB6C8
/* 91A2C 800DB66C 00008021 */   addu      $s0, $zero, $zero
/* 91A30 800DB670 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB674:
/* 91A34 800DB674 8E42002C */  lw         $v0, 0x2C($s2)
/* 91A38 800DB678 0202102B */  sltu       $v0, $s0, $v0
/* 91A3C 800DB67C 10400012 */  beqz       $v0, .Lrace_800DB6C8
/* 91A40 800DB680 00000000 */   nop
/* 91A44 800DB684 8E420060 */  lw         $v0, 0x60($s2)
/* 91A48 800DB688 02222021 */  addu       $a0, $s1, $v0
/* 91A4C 800DB68C 8C820010 */  lw         $v0, 0x10($a0)
/* 91A50 800DB690 14540003 */  bne        $v0, $s4, .Lrace_800DB6A0
/* 91A54 800DB694 00000000 */   nop
/* 91A58 800DB698 0C0359A7 */  jal        func_race_800D669C
/* 91A5C 800DB69C 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DB6A0:
/* 91A60 800DB6A0 8E420060 */  lw         $v0, 0x60($s2)
/* 91A64 800DB6A4 02222021 */  addu       $a0, $s1, $v0
/* 91A68 800DB6A8 8C820010 */  lw         $v0, 0x10($a0)
/* 91A6C 800DB6AC 54550004 */  bnel       $v0, $s5, .Lrace_800DB6C0
/* 91A70 800DB6B0 26310034 */   addiu     $s1, $s1, 0x34
/* 91A74 800DB6B4 0C0359BB */  jal        func_race_800D66EC
/* 91A78 800DB6B8 02602821 */   addu      $a1, $s3, $zero
/* 91A7C 800DB6BC 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DB6C0:
/* 91A80 800DB6C0 08036D9D */  j          .Lrace_800DB674
/* 91A84 800DB6C4 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB6C8:
/* 91A88 800DB6C8 8E420064 */  lw         $v0, 0x64($s2)
/* 91A8C 800DB6CC 10400017 */  beqz       $v0, .Lrace_800DB72C
/* 91A90 800DB6D0 00008021 */   addu      $s0, $zero, $zero
/* 91A94 800DB6D4 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB6D8:
/* 91A98 800DB6D8 8E420030 */  lw         $v0, 0x30($s2)
/* 91A9C 800DB6DC 0202102B */  sltu       $v0, $s0, $v0
/* 91AA0 800DB6E0 10400012 */  beqz       $v0, .Lrace_800DB72C
/* 91AA4 800DB6E4 00000000 */   nop
/* 91AA8 800DB6E8 8E420064 */  lw         $v0, 0x64($s2)
/* 91AAC 800DB6EC 02222021 */  addu       $a0, $s1, $v0
/* 91AB0 800DB6F0 8C820010 */  lw         $v0, 0x10($a0)
/* 91AB4 800DB6F4 14540003 */  bne        $v0, $s4, .Lrace_800DB704
/* 91AB8 800DB6F8 00000000 */   nop
/* 91ABC 800DB6FC 0C0359A7 */  jal        func_race_800D669C
/* 91AC0 800DB700 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DB704:
/* 91AC4 800DB704 8E420064 */  lw         $v0, 0x64($s2)
/* 91AC8 800DB708 02222021 */  addu       $a0, $s1, $v0
/* 91ACC 800DB70C 8C820010 */  lw         $v0, 0x10($a0)
/* 91AD0 800DB710 54550004 */  bnel       $v0, $s5, .Lrace_800DB724
/* 91AD4 800DB714 26310034 */   addiu     $s1, $s1, 0x34
/* 91AD8 800DB718 0C0359BB */  jal        func_race_800D66EC
/* 91ADC 800DB71C 02602821 */   addu      $a1, $s3, $zero
/* 91AE0 800DB720 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DB724:
/* 91AE4 800DB724 08036DB6 */  j          .Lrace_800DB6D8
/* 91AE8 800DB728 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB72C:
/* 91AEC 800DB72C 8E420068 */  lw         $v0, 0x68($s2)
/* 91AF0 800DB730 10400017 */  beqz       $v0, .Lrace_800DB790
/* 91AF4 800DB734 00008021 */   addu      $s0, $zero, $zero
/* 91AF8 800DB738 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB73C:
/* 91AFC 800DB73C 8E420034 */  lw         $v0, 0x34($s2)
/* 91B00 800DB740 0202102B */  sltu       $v0, $s0, $v0
/* 91B04 800DB744 10400012 */  beqz       $v0, .Lrace_800DB790
/* 91B08 800DB748 00000000 */   nop
/* 91B0C 800DB74C 8E420068 */  lw         $v0, 0x68($s2)
/* 91B10 800DB750 02222021 */  addu       $a0, $s1, $v0
/* 91B14 800DB754 8C820010 */  lw         $v0, 0x10($a0)
/* 91B18 800DB758 14540003 */  bne        $v0, $s4, .Lrace_800DB768
/* 91B1C 800DB75C 00000000 */   nop
/* 91B20 800DB760 0C0359A7 */  jal        func_race_800D669C
/* 91B24 800DB764 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DB768:
/* 91B28 800DB768 8E420068 */  lw         $v0, 0x68($s2)
/* 91B2C 800DB76C 02222021 */  addu       $a0, $s1, $v0
/* 91B30 800DB770 8C820010 */  lw         $v0, 0x10($a0)
/* 91B34 800DB774 54550004 */  bnel       $v0, $s5, .Lrace_800DB788
/* 91B38 800DB778 26310064 */   addiu     $s1, $s1, 0x64
/* 91B3C 800DB77C 0C0359BB */  jal        func_race_800D66EC
/* 91B40 800DB780 02602821 */   addu      $a1, $s3, $zero
/* 91B44 800DB784 26310064 */  addiu      $s1, $s1, 0x64
.Lrace_800DB788:
/* 91B48 800DB788 08036DCF */  j          .Lrace_800DB73C
/* 91B4C 800DB78C 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB790:
/* 91B50 800DB790 8E420070 */  lw         $v0, 0x70($s2)
/* 91B54 800DB794 10400017 */  beqz       $v0, .Lrace_800DB7F4
/* 91B58 800DB798 00008021 */   addu      $s0, $zero, $zero
/* 91B5C 800DB79C 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB7A0:
/* 91B60 800DB7A0 8E42003C */  lw         $v0, 0x3C($s2)
/* 91B64 800DB7A4 0202102B */  sltu       $v0, $s0, $v0
/* 91B68 800DB7A8 10400012 */  beqz       $v0, .Lrace_800DB7F4
/* 91B6C 800DB7AC 00000000 */   nop
/* 91B70 800DB7B0 8E420070 */  lw         $v0, 0x70($s2)
/* 91B74 800DB7B4 02222021 */  addu       $a0, $s1, $v0
/* 91B78 800DB7B8 8C820010 */  lw         $v0, 0x10($a0)
/* 91B7C 800DB7BC 14540003 */  bne        $v0, $s4, .Lrace_800DB7CC
/* 91B80 800DB7C0 00000000 */   nop
/* 91B84 800DB7C4 0C0359A7 */  jal        func_race_800D669C
/* 91B88 800DB7C8 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DB7CC:
/* 91B8C 800DB7CC 8E420070 */  lw         $v0, 0x70($s2)
/* 91B90 800DB7D0 02222021 */  addu       $a0, $s1, $v0
/* 91B94 800DB7D4 8C820010 */  lw         $v0, 0x10($a0)
/* 91B98 800DB7D8 54550004 */  bnel       $v0, $s5, .Lrace_800DB7EC
/* 91B9C 800DB7DC 26310034 */   addiu     $s1, $s1, 0x34
/* 91BA0 800DB7E0 0C0359BB */  jal        func_race_800D66EC
/* 91BA4 800DB7E4 02602821 */   addu      $a1, $s3, $zero
/* 91BA8 800DB7E8 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DB7EC:
/* 91BAC 800DB7EC 08036DE8 */  j          .Lrace_800DB7A0
/* 91BB0 800DB7F0 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB7F4:
/* 91BB4 800DB7F4 8E420074 */  lw         $v0, 0x74($s2)
/* 91BB8 800DB7F8 10400026 */  beqz       $v0, .Lrace_800DB894
/* 91BBC 800DB7FC 00008021 */   addu      $s0, $zero, $zero
/* 91BC0 800DB800 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB804:
/* 91BC4 800DB804 8E420040 */  lw         $v0, 0x40($s2)
/* 91BC8 800DB808 0202102B */  sltu       $v0, $s0, $v0
/* 91BCC 800DB80C 10400021 */  beqz       $v0, .Lrace_800DB894
/* 91BD0 800DB810 00000000 */   nop
/* 91BD4 800DB814 8E420074 */  lw         $v0, 0x74($s2)
/* 91BD8 800DB818 02222021 */  addu       $a0, $s1, $v0
/* 91BDC 800DB81C 8C820010 */  lw         $v0, 0x10($a0)
/* 91BE0 800DB820 14540003 */  bne        $v0, $s4, .Lrace_800DB830
/* 91BE4 800DB824 00000000 */   nop
/* 91BE8 800DB828 0C0359A7 */  jal        func_race_800D669C
/* 91BEC 800DB82C 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DB830:
/* 91BF0 800DB830 8E420074 */  lw         $v0, 0x74($s2)
/* 91BF4 800DB834 02221821 */  addu       $v1, $s1, $v0
/* 91BF8 800DB838 8C620020 */  lw         $v0, 0x20($v1)
/* 91BFC 800DB83C 14540004 */  bne        $v0, $s4, .Lrace_800DB850
/* 91C00 800DB840 00000000 */   nop
/* 91C04 800DB844 9062002C */  lbu        $v0, 0x2C($v1)
/* 91C08 800DB848 34420001 */  ori        $v0, $v0, 0x1
/* 91C0C 800DB84C A062002C */  sb         $v0, 0x2C($v1)
.Lrace_800DB850:
/* 91C10 800DB850 8E420074 */  lw         $v0, 0x74($s2)
/* 91C14 800DB854 02222021 */  addu       $a0, $s1, $v0
/* 91C18 800DB858 8C820010 */  lw         $v0, 0x10($a0)
/* 91C1C 800DB85C 14550003 */  bne        $v0, $s5, .Lrace_800DB86C
/* 91C20 800DB860 00000000 */   nop
/* 91C24 800DB864 0C0359BB */  jal        func_race_800D66EC
/* 91C28 800DB868 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DB86C:
/* 91C2C 800DB86C 8E420074 */  lw         $v0, 0x74($s2)
/* 91C30 800DB870 02221821 */  addu       $v1, $s1, $v0
/* 91C34 800DB874 8C620020 */  lw         $v0, 0x20($v1)
/* 91C38 800DB878 14550004 */  bne        $v0, $s5, .Lrace_800DB88C
/* 91C3C 800DB87C 26310030 */   addiu     $s1, $s1, 0x30
/* 91C40 800DB880 9062002C */  lbu        $v0, 0x2C($v1)
/* 91C44 800DB884 304200FE */  andi       $v0, $v0, 0xFE
/* 91C48 800DB888 A062002C */  sb         $v0, 0x2C($v1)
.Lrace_800DB88C:
/* 91C4C 800DB88C 08036E01 */  j          .Lrace_800DB804
/* 91C50 800DB890 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB894:
/* 91C54 800DB894 8E420078 */  lw         $v0, 0x78($s2)
/* 91C58 800DB898 10400017 */  beqz       $v0, .Lrace_800DB8F8
/* 91C5C 800DB89C 00008021 */   addu      $s0, $zero, $zero
/* 91C60 800DB8A0 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB8A4:
/* 91C64 800DB8A4 8E42004C */  lw         $v0, 0x4C($s2)
/* 91C68 800DB8A8 0202102B */  sltu       $v0, $s0, $v0
/* 91C6C 800DB8AC 10400012 */  beqz       $v0, .Lrace_800DB8F8
/* 91C70 800DB8B0 00000000 */   nop
/* 91C74 800DB8B4 8E420078 */  lw         $v0, 0x78($s2)
/* 91C78 800DB8B8 02222021 */  addu       $a0, $s1, $v0
/* 91C7C 800DB8BC 8C820010 */  lw         $v0, 0x10($a0)
/* 91C80 800DB8C0 14540003 */  bne        $v0, $s4, .Lrace_800DB8D0
/* 91C84 800DB8C4 00000000 */   nop
/* 91C88 800DB8C8 0C0359A7 */  jal        func_race_800D669C
/* 91C8C 800DB8CC 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DB8D0:
/* 91C90 800DB8D0 8E420078 */  lw         $v0, 0x78($s2)
/* 91C94 800DB8D4 02222021 */  addu       $a0, $s1, $v0
/* 91C98 800DB8D8 8C820010 */  lw         $v0, 0x10($a0)
/* 91C9C 800DB8DC 54550004 */  bnel       $v0, $s5, .Lrace_800DB8F0
/* 91CA0 800DB8E0 2631002C */   addiu     $s1, $s1, 0x2C
/* 91CA4 800DB8E4 0C0359BB */  jal        func_race_800D66EC
/* 91CA8 800DB8E8 02602821 */   addu      $a1, $s3, $zero
/* 91CAC 800DB8EC 2631002C */  addiu      $s1, $s1, 0x2C
.Lrace_800DB8F0:
/* 91CB0 800DB8F0 08036E29 */  j          .Lrace_800DB8A4
/* 91CB4 800DB8F4 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB8F8:
/* 91CB8 800DB8F8 8E420084 */  lw         $v0, 0x84($s2)
/* 91CBC 800DB8FC 10400017 */  beqz       $v0, .Lrace_800DB95C
/* 91CC0 800DB900 00008021 */   addu      $s0, $zero, $zero
/* 91CC4 800DB904 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DB908:
/* 91CC8 800DB908 8E420050 */  lw         $v0, 0x50($s2)
/* 91CCC 800DB90C 0202102B */  sltu       $v0, $s0, $v0
/* 91CD0 800DB910 10400012 */  beqz       $v0, .Lrace_800DB95C
/* 91CD4 800DB914 00000000 */   nop
/* 91CD8 800DB918 8E420084 */  lw         $v0, 0x84($s2)
/* 91CDC 800DB91C 02222021 */  addu       $a0, $s1, $v0
/* 91CE0 800DB920 8C820010 */  lw         $v0, 0x10($a0)
/* 91CE4 800DB924 14540003 */  bne        $v0, $s4, .Lrace_800DB934
/* 91CE8 800DB928 00000000 */   nop
/* 91CEC 800DB92C 0C0359A7 */  jal        func_race_800D669C
/* 91CF0 800DB930 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DB934:
/* 91CF4 800DB934 8E420084 */  lw         $v0, 0x84($s2)
/* 91CF8 800DB938 02222021 */  addu       $a0, $s1, $v0
/* 91CFC 800DB93C 8C820010 */  lw         $v0, 0x10($a0)
/* 91D00 800DB940 54550004 */  bnel       $v0, $s5, .Lrace_800DB954
/* 91D04 800DB944 26310034 */   addiu     $s1, $s1, 0x34
/* 91D08 800DB948 0C0359BB */  jal        func_race_800D66EC
/* 91D0C 800DB94C 02602821 */   addu      $a1, $s3, $zero
/* 91D10 800DB950 26310034 */  addiu      $s1, $s1, 0x34
.Lrace_800DB954:
/* 91D14 800DB954 08036E42 */  j          .Lrace_800DB908
/* 91D18 800DB958 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DB95C:
/* 91D1C 800DB95C 8E42006C */  lw         $v0, 0x6C($s2)
/* 91D20 800DB960 10400012 */  beqz       $v0, .Lrace_800DB9AC
/* 91D24 800DB964 00000000 */   nop
/* 91D28 800DB968 8E420038 */  lw         $v0, 0x38($s2)
/* 91D2C 800DB96C 1040000F */  beqz       $v0, .Lrace_800DB9AC
/* 91D30 800DB970 00008021 */   addu      $s0, $zero, $zero
.Lrace_800DB974:
/* 91D34 800DB974 8E42006C */  lw         $v0, 0x6C($s2)
/* 91D38 800DB978 001018C0 */  sll        $v1, $s0, 3
/* 91D3C 800DB97C 00621821 */  addu       $v1, $v1, $v0
/* 91D40 800DB980 8C620000 */  lw         $v0, 0x0($v1)
/* 91D44 800DB984 14540004 */  bne        $v0, $s4, .Lrace_800DB998
/* 91D48 800DB988 00000000 */   nop
/* 91D4C 800DB98C 8C650004 */  lw         $a1, 0x4($v1)
/* 91D50 800DB990 0C036CA0 */  jal        func_race_800DB280
/* 91D54 800DB994 02402021 */   addu      $a0, $s2, $zero
.Lrace_800DB998:
/* 91D58 800DB998 8E420038 */  lw         $v0, 0x38($s2)
/* 91D5C 800DB99C 26100001 */  addiu      $s0, $s0, 0x1
/* 91D60 800DB9A0 0202102B */  sltu       $v0, $s0, $v0
/* 91D64 800DB9A4 1440FFF3 */  bnez       $v0, .Lrace_800DB974
/* 91D68 800DB9A8 00000000 */   nop
.Lrace_800DB9AC:
/* 91D6C 800DB9AC 8E42008C */  lw         $v0, 0x8C($s2)
/* 91D70 800DB9B0 10400018 */  beqz       $v0, .Lrace_800DBA14
/* 91D74 800DB9B4 00008021 */   addu      $s0, $zero, $zero
/* 91D78 800DB9B8 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DB9BC:
/* 91D7C 800DB9BC 8E420058 */  lw         $v0, 0x58($s2)
/* 91D80 800DB9C0 0202102B */  sltu       $v0, $s0, $v0
/* 91D84 800DB9C4 10400014 */  beqz       $v0, .Lrace_800DBA18
/* 91D88 800DB9C8 02802821 */   addu      $a1, $s4, $zero
/* 91D8C 800DB9CC 8E42008C */  lw         $v0, 0x8C($s2)
/* 91D90 800DB9D0 00821821 */  addu       $v1, $a0, $v0
/* 91D94 800DB9D4 8C620030 */  lw         $v0, 0x30($v1)
/* 91D98 800DB9D8 14540004 */  bne        $v0, $s4, .Lrace_800DB9EC
/* 91D9C 800DB9DC 00000000 */   nop
/* 91DA0 800DB9E0 90620034 */  lbu        $v0, 0x34($v1)
/* 91DA4 800DB9E4 34420001 */  ori        $v0, $v0, 0x1
/* 91DA8 800DB9E8 A0620034 */  sb         $v0, 0x34($v1)
.Lrace_800DB9EC:
/* 91DAC 800DB9EC 8E42008C */  lw         $v0, 0x8C($s2)
/* 91DB0 800DB9F0 00821821 */  addu       $v1, $a0, $v0
/* 91DB4 800DB9F4 8C620030 */  lw         $v0, 0x30($v1)
/* 91DB8 800DB9F8 14550004 */  bne        $v0, $s5, .Lrace_800DBA0C
/* 91DBC 800DB9FC 24840038 */   addiu     $a0, $a0, 0x38
/* 91DC0 800DBA00 90620034 */  lbu        $v0, 0x34($v1)
/* 91DC4 800DBA04 304200FE */  andi       $v0, $v0, 0xFE
/* 91DC8 800DBA08 A0620034 */  sb         $v0, 0x34($v1)
.Lrace_800DBA0C:
/* 91DCC 800DBA0C 08036E6F */  j          .Lrace_800DB9BC
/* 91DD0 800DBA10 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DBA14:
/* 91DD4 800DBA14 02802821 */  addu       $a1, $s4, $zero
.Lrace_800DBA18:
/* 91DD8 800DBA18 02A03021 */  addu       $a2, $s5, $zero
/* 91DDC 800DBA1C 8E440014 */  lw         $a0, 0x14($s2)
/* 91DE0 800DBA20 0C03A3D7 */  jal        func_race_800E8F5C
/* 91DE4 800DBA24 02603821 */   addu      $a3, $s3, $zero
/* 91DE8 800DBA28 8FBF0028 */  lw         $ra, 0x28($sp)
/* 91DEC 800DBA2C 8FB50024 */  lw         $s5, 0x24($sp)
/* 91DF0 800DBA30 8FB40020 */  lw         $s4, 0x20($sp)
/* 91DF4 800DBA34 8FB3001C */  lw         $s3, 0x1C($sp)
/* 91DF8 800DBA38 8FB20018 */  lw         $s2, 0x18($sp)
/* 91DFC 800DBA3C 8FB10014 */  lw         $s1, 0x14($sp)
/* 91E00 800DBA40 8FB00010 */  lw         $s0, 0x10($sp)
/* 91E04 800DBA44 03E00008 */  jr         $ra
/* 91E08 800DBA48 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800DBA4C
/* 91E0C 800DBA4C 2CA2000D */  sltiu      $v0, $a1, 0xD
/* 91E10 800DBA50 1040004D */  beqz       $v0, Lrace_800DBB88
/* 91E14 800DBA54 3C02800D */   lui       $v0, %hi(jtbl_race_800CB030)
/* 91E18 800DBA58 2442B030 */  addiu      $v0, $v0, %lo(jtbl_race_800CB030)
/* 91E1C 800DBA5C 00051880 */  sll        $v1, $a1, 2
/* 91E20 800DBA60 00621821 */  addu       $v1, $v1, $v0
/* 91E24 800DBA64 8C620000 */  lw         $v0, 0x0($v1)
/* 91E28 800DBA68 00400008 */  jr         $v0
/* 91E2C 800DBA6C 00000000 */   nop
glabel Lrace_800DBA70
/* 91E30 800DBA70 00061040 */  sll        $v0, $a2, 1
/* 91E34 800DBA74 00461021 */  addu       $v0, $v0, $a2
/* 91E38 800DBA78 000210C0 */  sll        $v0, $v0, 3
/* 91E3C 800DBA7C 00461023 */  subu       $v0, $v0, $a2
/* 91E40 800DBA80 8C83005C */  lw         $v1, 0x5C($a0)
.Lrace_800DBA84:
/* 91E44 800DBA84 00021080 */  sll        $v0, $v0, 2
/* 91E48 800DBA88 03E00008 */  jr         $ra
/* 91E4C 800DBA8C 00621021 */   addu      $v0, $v1, $v0
glabel Lrace_800DBA90
/* 91E50 800DBA90 00061040 */  sll        $v0, $a2, 1
/* 91E54 800DBA94 00461021 */  addu       $v0, $v0, $a2
/* 91E58 800DBA98 00021080 */  sll        $v0, $v0, 2
/* 91E5C 800DBA9C 8C830060 */  lw         $v1, 0x60($a0)
/* 91E60 800DBAA0 08036EA1 */  j          .Lrace_800DBA84
/* 91E64 800DBAA4 00461021 */   addu      $v0, $v0, $a2
glabel Lrace_800DBAA8
/* 91E68 800DBAA8 00061040 */  sll        $v0, $a2, 1
/* 91E6C 800DBAAC 00461021 */  addu       $v0, $v0, $a2
/* 91E70 800DBAB0 00021080 */  sll        $v0, $v0, 2
/* 91E74 800DBAB4 8C830064 */  lw         $v1, 0x64($a0)
/* 91E78 800DBAB8 08036EA1 */  j          .Lrace_800DBA84
/* 91E7C 800DBABC 00461021 */   addu      $v0, $v0, $a2
glabel Lrace_800DBAC0
/* 91E80 800DBAC0 00061040 */  sll        $v0, $a2, 1
/* 91E84 800DBAC4 00461021 */  addu       $v0, $v0, $a2
/* 91E88 800DBAC8 000210C0 */  sll        $v0, $v0, 3
/* 91E8C 800DBACC 8C830068 */  lw         $v1, 0x68($a0)
/* 91E90 800DBAD0 08036EA1 */  j          .Lrace_800DBA84
/* 91E94 800DBAD4 00461021 */   addu      $v0, $v0, $a2
glabel Lrace_800DBAD8
/* 91E98 800DBAD8 00061040 */  sll        $v0, $a2, 1
/* 91E9C 800DBADC 00461021 */  addu       $v0, $v0, $a2
/* 91EA0 800DBAE0 00021080 */  sll        $v0, $v0, 2
/* 91EA4 800DBAE4 8C830070 */  lw         $v1, 0x70($a0)
/* 91EA8 800DBAE8 08036EA1 */  j          .Lrace_800DBA84
/* 91EAC 800DBAEC 00461021 */   addu      $v0, $v0, $a2
glabel Lrace_800DBAF0
/* 91EB0 800DBAF0 00061040 */  sll        $v0, $a2, 1
/* 91EB4 800DBAF4 00461021 */  addu       $v0, $v0, $a2
/* 91EB8 800DBAF8 8C830074 */  lw         $v1, 0x74($a0)
/* 91EBC 800DBAFC 00021100 */  sll        $v0, $v0, 4
/* 91EC0 800DBB00 03E00008 */  jr         $ra
/* 91EC4 800DBB04 00621021 */   addu      $v0, $v1, $v0
glabel Lrace_800DBB08
/* 91EC8 800DBB08 00061040 */  sll        $v0, $a2, 1
/* 91ECC 800DBB0C 00461021 */  addu       $v0, $v0, $a2
/* 91ED0 800DBB10 00021080 */  sll        $v0, $v0, 2
/* 91ED4 800DBB14 8C830078 */  lw         $v1, 0x78($a0)
/* 91ED8 800DBB18 08036EA1 */  j          .Lrace_800DBA84
/* 91EDC 800DBB1C 00461023 */   subu      $v0, $v0, $a2
glabel Lrace_800DBB20
/* 91EE0 800DBB20 000610C0 */  sll        $v0, $a2, 3
/* 91EE4 800DBB24 00461021 */  addu       $v0, $v0, $a2
/* 91EE8 800DBB28 8C83007C */  lw         $v1, 0x7C($a0)
.Lrace_800DBB2C:
/* 91EEC 800DBB2C 000210C0 */  sll        $v0, $v0, 3
/* 91EF0 800DBB30 03E00008 */  jr         $ra
/* 91EF4 800DBB34 00621021 */   addu      $v0, $v1, $v0
glabel Lrace_800DBB38
/* 91EF8 800DBB38 000610C0 */  sll        $v0, $a2, 3
/* 91EFC 800DBB3C 8C830080 */  lw         $v1, 0x80($a0)
/* 91F00 800DBB40 08036EA1 */  j          .Lrace_800DBA84
/* 91F04 800DBB44 00461021 */   addu      $v0, $v0, $a2
glabel Lrace_800DBB48
/* 91F08 800DBB48 00061040 */  sll        $v0, $a2, 1
/* 91F0C 800DBB4C 00461021 */  addu       $v0, $v0, $a2
/* 91F10 800DBB50 00021080 */  sll        $v0, $v0, 2
/* 91F14 800DBB54 8C830084 */  lw         $v1, 0x84($a0)
/* 91F18 800DBB58 08036EA1 */  j          .Lrace_800DBA84
/* 91F1C 800DBB5C 00461021 */   addu      $v0, $v0, $a2
glabel Lrace_800DBB60
/* 91F20 800DBB60 00061040 */  sll        $v0, $a2, 1
/* 91F24 800DBB64 00461021 */  addu       $v0, $v0, $a2
/* 91F28 800DBB68 00021080 */  sll        $v0, $v0, 2
/* 91F2C 800DBB6C 8C830088 */  lw         $v1, 0x88($a0)
/* 91F30 800DBB70 08036EA1 */  j          .Lrace_800DBA84
/* 91F34 800DBB74 00461023 */   subu      $v0, $v0, $a2
glabel Lrace_800DBB78
/* 91F38 800DBB78 000610C0 */  sll        $v0, $a2, 3
/* 91F3C 800DBB7C 8C83008C */  lw         $v1, 0x8C($a0)
/* 91F40 800DBB80 08036ECB */  j          .Lrace_800DBB2C
/* 91F44 800DBB84 00461023 */   subu      $v0, $v0, $a2
glabel Lrace_800DBB88
/* 91F48 800DBB88 03E00008 */  jr         $ra
/* 91F4C 800DBB8C 00001021 */   addu      $v0, $zero, $zero

glabel func_race_800DBB90
/* 91F50 800DBB90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 91F54 800DBB94 AFB20018 */  sw         $s2, 0x18($sp)
/* 91F58 800DBB98 00809021 */  addu       $s2, $a0, $zero
/* 91F5C 800DBB9C AFB40020 */  sw         $s4, 0x20($sp)
/* 91F60 800DBBA0 00A0A021 */  addu       $s4, $a1, $zero
/* 91F64 800DBBA4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 91F68 800DBBA8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 91F6C 800DBBAC AFB10014 */  sw         $s1, 0x14($sp)
/* 91F70 800DBBB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 91F74 800DBBB4 8E42007C */  lw         $v0, 0x7C($s2)
/* 91F78 800DBBB8 10400011 */  beqz       $v0, .Lrace_800DBC00
/* 91F7C 800DBBBC 00C09821 */   addu      $s3, $a2, $zero
/* 91F80 800DBBC0 00008021 */  addu       $s0, $zero, $zero
/* 91F84 800DBBC4 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DBBC8:
/* 91F88 800DBBC8 8E420044 */  lw         $v0, 0x44($s2)
/* 91F8C 800DBBCC 0202102B */  sltu       $v0, $s0, $v0
/* 91F90 800DBBD0 1040000B */  beqz       $v0, .Lrace_800DBC00
/* 91F94 800DBBD4 00000000 */   nop
/* 91F98 800DBBD8 8E42007C */  lw         $v0, 0x7C($s2)
/* 91F9C 800DBBDC 02222021 */  addu       $a0, $s1, $v0
/* 91FA0 800DBBE0 8C820010 */  lw         $v0, 0x10($a0)
/* 91FA4 800DBBE4 54540004 */  bnel       $v0, $s4, .Lrace_800DBBF8
/* 91FA8 800DBBE8 26310048 */   addiu     $s1, $s1, 0x48
/* 91FAC 800DBBEC 0C0359DF */  jal        func_race_800D677C
/* 91FB0 800DBBF0 02602821 */   addu      $a1, $s3, $zero
/* 91FB4 800DBBF4 26310048 */  addiu      $s1, $s1, 0x48
.Lrace_800DBBF8:
/* 91FB8 800DBBF8 08036EF2 */  j          .Lrace_800DBBC8
/* 91FBC 800DBBFC 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DBC00:
/* 91FC0 800DBC00 8E420080 */  lw         $v0, 0x80($s2)
/* 91FC4 800DBC04 10400010 */  beqz       $v0, .Lrace_800DBC48
/* 91FC8 800DBC08 00008021 */   addu      $s0, $zero, $zero
/* 91FCC 800DBC0C 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DBC10:
/* 91FD0 800DBC10 8E420048 */  lw         $v0, 0x48($s2)
/* 91FD4 800DBC14 0202102B */  sltu       $v0, $s0, $v0
/* 91FD8 800DBC18 1040000B */  beqz       $v0, .Lrace_800DBC48
/* 91FDC 800DBC1C 00000000 */   nop
/* 91FE0 800DBC20 8E420080 */  lw         $v0, 0x80($s2)
/* 91FE4 800DBC24 02222021 */  addu       $a0, $s1, $v0
/* 91FE8 800DBC28 8C820010 */  lw         $v0, 0x10($a0)
/* 91FEC 800DBC2C 54540004 */  bnel       $v0, $s4, .Lrace_800DBC40
/* 91FF0 800DBC30 26310024 */   addiu     $s1, $s1, 0x24
/* 91FF4 800DBC34 0C0359DF */  jal        func_race_800D677C
/* 91FF8 800DBC38 02602821 */   addu      $a1, $s3, $zero
/* 91FFC 800DBC3C 26310024 */  addiu      $s1, $s1, 0x24
.Lrace_800DBC40:
/* 92000 800DBC40 08036F04 */  j          .Lrace_800DBC10
/* 92004 800DBC44 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DBC48:
/* 92008 800DBC48 8E420088 */  lw         $v0, 0x88($s2)
/* 9200C 800DBC4C 10400010 */  beqz       $v0, .Lrace_800DBC90
/* 92010 800DBC50 00008021 */   addu      $s0, $zero, $zero
/* 92014 800DBC54 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DBC58:
/* 92018 800DBC58 8E420054 */  lw         $v0, 0x54($s2)
/* 9201C 800DBC5C 0202102B */  sltu       $v0, $s0, $v0
/* 92020 800DBC60 1040000B */  beqz       $v0, .Lrace_800DBC90
/* 92024 800DBC64 00000000 */   nop
/* 92028 800DBC68 8E420088 */  lw         $v0, 0x88($s2)
/* 9202C 800DBC6C 02222021 */  addu       $a0, $s1, $v0
/* 92030 800DBC70 8C820010 */  lw         $v0, 0x10($a0)
/* 92034 800DBC74 54540004 */  bnel       $v0, $s4, .Lrace_800DBC88
/* 92038 800DBC78 2631002C */   addiu     $s1, $s1, 0x2C
/* 9203C 800DBC7C 0C0359DF */  jal        func_race_800D677C
/* 92040 800DBC80 02602821 */   addu      $a1, $s3, $zero
/* 92044 800DBC84 2631002C */  addiu      $s1, $s1, 0x2C
.Lrace_800DBC88:
/* 92048 800DBC88 08036F16 */  j          .Lrace_800DBC58
/* 9204C 800DBC8C 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DBC90:
/* 92050 800DBC90 8E42008C */  lw         $v0, 0x8C($s2)
/* 92054 800DBC94 10400010 */  beqz       $v0, .Lrace_800DBCD8
/* 92058 800DBC98 00008021 */   addu      $s0, $zero, $zero
/* 9205C 800DBC9C 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DBCA0:
/* 92060 800DBCA0 8E420058 */  lw         $v0, 0x58($s2)
/* 92064 800DBCA4 0202102B */  sltu       $v0, $s0, $v0
/* 92068 800DBCA8 1040000B */  beqz       $v0, .Lrace_800DBCD8
/* 9206C 800DBCAC 00000000 */   nop
/* 92070 800DBCB0 8E42008C */  lw         $v0, 0x8C($s2)
/* 92074 800DBCB4 02222021 */  addu       $a0, $s1, $v0
/* 92078 800DBCB8 8C820010 */  lw         $v0, 0x10($a0)
/* 9207C 800DBCBC 54540004 */  bnel       $v0, $s4, .Lrace_800DBCD0
/* 92080 800DBCC0 26310038 */   addiu     $s1, $s1, 0x38
/* 92084 800DBCC4 0C0359DF */  jal        func_race_800D677C
/* 92088 800DBCC8 02602821 */   addu      $a1, $s3, $zero
/* 9208C 800DBCCC 26310038 */  addiu      $s1, $s1, 0x38
.Lrace_800DBCD0:
/* 92090 800DBCD0 08036F28 */  j          .Lrace_800DBCA0
/* 92094 800DBCD4 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DBCD8:
/* 92098 800DBCD8 12600004 */  beqz       $s3, .Lrace_800DBCEC
/* 9209C 800DBCDC 02802821 */   addu      $a1, $s4, $zero
/* 920A0 800DBCE0 8E440014 */  lw         $a0, 0x14($s2)
/* 920A4 800DBCE4 0C03A423 */  jal        func_race_800E908C
/* 920A8 800DBCE8 02603021 */   addu      $a2, $s3, $zero
.Lrace_800DBCEC:
/* 920AC 800DBCEC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 920B0 800DBCF0 8FB40020 */  lw         $s4, 0x20($sp)
/* 920B4 800DBCF4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 920B8 800DBCF8 8FB20018 */  lw         $s2, 0x18($sp)
/* 920BC 800DBCFC 8FB10014 */  lw         $s1, 0x14($sp)
/* 920C0 800DBD00 8FB00010 */  lw         $s0, 0x10($sp)
/* 920C4 800DBD04 03E00008 */  jr         $ra
/* 920C8 800DBD08 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DBD0C
/* 920CC 800DBD0C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 920D0 800DBD10 AFB20018 */  sw         $s2, 0x18($sp)
/* 920D4 800DBD14 00809021 */  addu       $s2, $a0, $zero
/* 920D8 800DBD18 AFB40020 */  sw         $s4, 0x20($sp)
/* 920DC 800DBD1C 00A0A021 */  addu       $s4, $a1, $zero
/* 920E0 800DBD20 AFBF0024 */  sw         $ra, 0x24($sp)
/* 920E4 800DBD24 AFB3001C */  sw         $s3, 0x1C($sp)
/* 920E8 800DBD28 AFB10014 */  sw         $s1, 0x14($sp)
/* 920EC 800DBD2C AFB00010 */  sw         $s0, 0x10($sp)
/* 920F0 800DBD30 8E42007C */  lw         $v0, 0x7C($s2)
/* 920F4 800DBD34 10400011 */  beqz       $v0, .Lrace_800DBD7C
/* 920F8 800DBD38 00C09821 */   addu      $s3, $a2, $zero
/* 920FC 800DBD3C 00008021 */  addu       $s0, $zero, $zero
/* 92100 800DBD40 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DBD44:
/* 92104 800DBD44 8E420044 */  lw         $v0, 0x44($s2)
/* 92108 800DBD48 0202102B */  sltu       $v0, $s0, $v0
/* 9210C 800DBD4C 1040000B */  beqz       $v0, .Lrace_800DBD7C
/* 92110 800DBD50 00000000 */   nop
/* 92114 800DBD54 8E42007C */  lw         $v0, 0x7C($s2)
/* 92118 800DBD58 02222021 */  addu       $a0, $s1, $v0
/* 9211C 800DBD5C 8C820010 */  lw         $v0, 0x10($a0)
/* 92120 800DBD60 54540004 */  bnel       $v0, $s4, .Lrace_800DBD74
/* 92124 800DBD64 26310048 */   addiu     $s1, $s1, 0x48
/* 92128 800DBD68 0C0359F3 */  jal        func_race_800D67CC
/* 9212C 800DBD6C 02602821 */   addu      $a1, $s3, $zero
/* 92130 800DBD70 26310048 */  addiu      $s1, $s1, 0x48
.Lrace_800DBD74:
/* 92134 800DBD74 08036F51 */  j          .Lrace_800DBD44
/* 92138 800DBD78 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DBD7C:
/* 9213C 800DBD7C 8E420080 */  lw         $v0, 0x80($s2)
/* 92140 800DBD80 10400010 */  beqz       $v0, .Lrace_800DBDC4
/* 92144 800DBD84 00008021 */   addu      $s0, $zero, $zero
/* 92148 800DBD88 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DBD8C:
/* 9214C 800DBD8C 8E420048 */  lw         $v0, 0x48($s2)
/* 92150 800DBD90 0202102B */  sltu       $v0, $s0, $v0
/* 92154 800DBD94 1040000B */  beqz       $v0, .Lrace_800DBDC4
/* 92158 800DBD98 00000000 */   nop
/* 9215C 800DBD9C 8E420080 */  lw         $v0, 0x80($s2)
/* 92160 800DBDA0 02222021 */  addu       $a0, $s1, $v0
/* 92164 800DBDA4 8C820010 */  lw         $v0, 0x10($a0)
/* 92168 800DBDA8 54540004 */  bnel       $v0, $s4, .Lrace_800DBDBC
/* 9216C 800DBDAC 26310024 */   addiu     $s1, $s1, 0x24
/* 92170 800DBDB0 0C0359F3 */  jal        func_race_800D67CC
/* 92174 800DBDB4 02602821 */   addu      $a1, $s3, $zero
/* 92178 800DBDB8 26310024 */  addiu      $s1, $s1, 0x24
.Lrace_800DBDBC:
/* 9217C 800DBDBC 08036F63 */  j          .Lrace_800DBD8C
/* 92180 800DBDC0 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DBDC4:
/* 92184 800DBDC4 8E420088 */  lw         $v0, 0x88($s2)
/* 92188 800DBDC8 10400010 */  beqz       $v0, .Lrace_800DBE0C
/* 9218C 800DBDCC 00008021 */   addu      $s0, $zero, $zero
/* 92190 800DBDD0 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DBDD4:
/* 92194 800DBDD4 8E420054 */  lw         $v0, 0x54($s2)
/* 92198 800DBDD8 0202102B */  sltu       $v0, $s0, $v0
/* 9219C 800DBDDC 1040000B */  beqz       $v0, .Lrace_800DBE0C
/* 921A0 800DBDE0 00000000 */   nop
/* 921A4 800DBDE4 8E420088 */  lw         $v0, 0x88($s2)
/* 921A8 800DBDE8 02222021 */  addu       $a0, $s1, $v0
/* 921AC 800DBDEC 8C820010 */  lw         $v0, 0x10($a0)
/* 921B0 800DBDF0 54540004 */  bnel       $v0, $s4, .Lrace_800DBE04
/* 921B4 800DBDF4 2631002C */   addiu     $s1, $s1, 0x2C
/* 921B8 800DBDF8 0C0359F3 */  jal        func_race_800D67CC
/* 921BC 800DBDFC 02602821 */   addu      $a1, $s3, $zero
/* 921C0 800DBE00 2631002C */  addiu      $s1, $s1, 0x2C
.Lrace_800DBE04:
/* 921C4 800DBE04 08036F75 */  j          .Lrace_800DBDD4
/* 921C8 800DBE08 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DBE0C:
/* 921CC 800DBE0C 8E42008C */  lw         $v0, 0x8C($s2)
/* 921D0 800DBE10 10400010 */  beqz       $v0, .Lrace_800DBE54
/* 921D4 800DBE14 00008021 */   addu      $s0, $zero, $zero
/* 921D8 800DBE18 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DBE1C:
/* 921DC 800DBE1C 8E420058 */  lw         $v0, 0x58($s2)
/* 921E0 800DBE20 0202102B */  sltu       $v0, $s0, $v0
/* 921E4 800DBE24 1040000B */  beqz       $v0, .Lrace_800DBE54
/* 921E8 800DBE28 00000000 */   nop
/* 921EC 800DBE2C 8E42008C */  lw         $v0, 0x8C($s2)
/* 921F0 800DBE30 02222021 */  addu       $a0, $s1, $v0
/* 921F4 800DBE34 8C820010 */  lw         $v0, 0x10($a0)
/* 921F8 800DBE38 54540004 */  bnel       $v0, $s4, .Lrace_800DBE4C
/* 921FC 800DBE3C 26310038 */   addiu     $s1, $s1, 0x38
/* 92200 800DBE40 0C0359F3 */  jal        func_race_800D67CC
/* 92204 800DBE44 02602821 */   addu      $a1, $s3, $zero
/* 92208 800DBE48 26310038 */  addiu      $s1, $s1, 0x38
.Lrace_800DBE4C:
/* 9220C 800DBE4C 08036F87 */  j          .Lrace_800DBE1C
/* 92210 800DBE50 26100001 */   addiu     $s0, $s0, 0x1
.Lrace_800DBE54:
/* 92214 800DBE54 12600004 */  beqz       $s3, .Lrace_800DBE68
/* 92218 800DBE58 02802821 */   addu      $a1, $s4, $zero
/* 9221C 800DBE5C 8E440014 */  lw         $a0, 0x14($s2)
/* 92220 800DBE60 0C03A473 */  jal        func_race_800E91CC
/* 92224 800DBE64 02603021 */   addu      $a2, $s3, $zero
.Lrace_800DBE68:
/* 92228 800DBE68 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9222C 800DBE6C 8FB40020 */  lw         $s4, 0x20($sp)
/* 92230 800DBE70 8FB3001C */  lw         $s3, 0x1C($sp)
/* 92234 800DBE74 8FB20018 */  lw         $s2, 0x18($sp)
/* 92238 800DBE78 8FB10014 */  lw         $s1, 0x14($sp)
/* 9223C 800DBE7C 8FB00010 */  lw         $s0, 0x10($sp)
/* 92240 800DBE80 03E00008 */  jr         $ra
/* 92244 800DBE84 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DBE88
/* 92248 800DBE88 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9224C 800DBE8C AFB20018 */  sw         $s2, 0x18($sp)
/* 92250 800DBE90 00809021 */  addu       $s2, $a0, $zero
/* 92254 800DBE94 AFB40020 */  sw         $s4, 0x20($sp)
/* 92258 800DBE98 00A0A021 */  addu       $s4, $a1, $zero
/* 9225C 800DBE9C AFB50024 */  sw         $s5, 0x24($sp)
/* 92260 800DBEA0 00C0A821 */  addu       $s5, $a2, $zero
/* 92264 800DBEA4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 92268 800DBEA8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9226C 800DBEAC AFB10014 */  sw         $s1, 0x14($sp)
/* 92270 800DBEB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 92274 800DBEB4 8E42007C */  lw         $v0, 0x7C($s2)
/* 92278 800DBEB8 10400018 */  beqz       $v0, .Lrace_800DBF1C
/* 9227C 800DBEBC 00E09821 */   addu      $s3, $a3, $zero
/* 92280 800DBEC0 00008821 */  addu       $s1, $zero, $zero
/* 92284 800DBEC4 02208021 */  addu       $s0, $s1, $zero
.Lrace_800DBEC8:
/* 92288 800DBEC8 8E420044 */  lw         $v0, 0x44($s2)
/* 9228C 800DBECC 0222102B */  sltu       $v0, $s1, $v0
/* 92290 800DBED0 10400012 */  beqz       $v0, .Lrace_800DBF1C
/* 92294 800DBED4 00000000 */   nop
/* 92298 800DBED8 8E42007C */  lw         $v0, 0x7C($s2)
/* 9229C 800DBEDC 02022021 */  addu       $a0, $s0, $v0
/* 922A0 800DBEE0 8C820010 */  lw         $v0, 0x10($a0)
/* 922A4 800DBEE4 14540003 */  bne        $v0, $s4, .Lrace_800DBEF4
/* 922A8 800DBEE8 00000000 */   nop
/* 922AC 800DBEEC 0C0359DF */  jal        func_race_800D677C
/* 922B0 800DBEF0 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DBEF4:
/* 922B4 800DBEF4 8E42007C */  lw         $v0, 0x7C($s2)
/* 922B8 800DBEF8 02022021 */  addu       $a0, $s0, $v0
/* 922BC 800DBEFC 8C820010 */  lw         $v0, 0x10($a0)
/* 922C0 800DBF00 54550004 */  bnel       $v0, $s5, .Lrace_800DBF14
/* 922C4 800DBF04 26100048 */   addiu     $s0, $s0, 0x48
/* 922C8 800DBF08 0C0359F3 */  jal        func_race_800D67CC
/* 922CC 800DBF0C 02602821 */   addu      $a1, $s3, $zero
/* 922D0 800DBF10 26100048 */  addiu      $s0, $s0, 0x48
.Lrace_800DBF14:
/* 922D4 800DBF14 08036FB2 */  j          .Lrace_800DBEC8
/* 922D8 800DBF18 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800DBF1C:
/* 922DC 800DBF1C 8E420080 */  lw         $v0, 0x80($s2)
/* 922E0 800DBF20 10400017 */  beqz       $v0, .Lrace_800DBF80
/* 922E4 800DBF24 00008821 */   addu      $s1, $zero, $zero
/* 922E8 800DBF28 02208021 */  addu       $s0, $s1, $zero
.Lrace_800DBF2C:
/* 922EC 800DBF2C 8E420048 */  lw         $v0, 0x48($s2)
/* 922F0 800DBF30 0222102B */  sltu       $v0, $s1, $v0
/* 922F4 800DBF34 10400012 */  beqz       $v0, .Lrace_800DBF80
/* 922F8 800DBF38 00000000 */   nop
/* 922FC 800DBF3C 8E420080 */  lw         $v0, 0x80($s2)
/* 92300 800DBF40 02022021 */  addu       $a0, $s0, $v0
/* 92304 800DBF44 8C820010 */  lw         $v0, 0x10($a0)
/* 92308 800DBF48 14540003 */  bne        $v0, $s4, .Lrace_800DBF58
/* 9230C 800DBF4C 00000000 */   nop
/* 92310 800DBF50 0C0359DF */  jal        func_race_800D677C
/* 92314 800DBF54 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DBF58:
/* 92318 800DBF58 8E420080 */  lw         $v0, 0x80($s2)
/* 9231C 800DBF5C 02022021 */  addu       $a0, $s0, $v0
/* 92320 800DBF60 8C820010 */  lw         $v0, 0x10($a0)
/* 92324 800DBF64 54550004 */  bnel       $v0, $s5, .Lrace_800DBF78
/* 92328 800DBF68 26100024 */   addiu     $s0, $s0, 0x24
/* 9232C 800DBF6C 0C0359F3 */  jal        func_race_800D67CC
/* 92330 800DBF70 02602821 */   addu      $a1, $s3, $zero
/* 92334 800DBF74 26100024 */  addiu      $s0, $s0, 0x24
.Lrace_800DBF78:
/* 92338 800DBF78 08036FCB */  j          .Lrace_800DBF2C
/* 9233C 800DBF7C 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800DBF80:
/* 92340 800DBF80 8E420088 */  lw         $v0, 0x88($s2)
/* 92344 800DBF84 10400017 */  beqz       $v0, .Lrace_800DBFE4
/* 92348 800DBF88 00008821 */   addu      $s1, $zero, $zero
/* 9234C 800DBF8C 02208021 */  addu       $s0, $s1, $zero
.Lrace_800DBF90:
/* 92350 800DBF90 8E420054 */  lw         $v0, 0x54($s2)
/* 92354 800DBF94 0222102B */  sltu       $v0, $s1, $v0
/* 92358 800DBF98 10400012 */  beqz       $v0, .Lrace_800DBFE4
/* 9235C 800DBF9C 00000000 */   nop
/* 92360 800DBFA0 8E420088 */  lw         $v0, 0x88($s2)
/* 92364 800DBFA4 02022021 */  addu       $a0, $s0, $v0
/* 92368 800DBFA8 8C820010 */  lw         $v0, 0x10($a0)
/* 9236C 800DBFAC 14540003 */  bne        $v0, $s4, .Lrace_800DBFBC
/* 92370 800DBFB0 00000000 */   nop
/* 92374 800DBFB4 0C0359DF */  jal        func_race_800D677C
/* 92378 800DBFB8 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DBFBC:
/* 9237C 800DBFBC 8E420088 */  lw         $v0, 0x88($s2)
/* 92380 800DBFC0 02022021 */  addu       $a0, $s0, $v0
/* 92384 800DBFC4 8C820010 */  lw         $v0, 0x10($a0)
/* 92388 800DBFC8 54550004 */  bnel       $v0, $s5, .Lrace_800DBFDC
/* 9238C 800DBFCC 2610002C */   addiu     $s0, $s0, 0x2C
/* 92390 800DBFD0 0C0359F3 */  jal        func_race_800D67CC
/* 92394 800DBFD4 02602821 */   addu      $a1, $s3, $zero
/* 92398 800DBFD8 2610002C */  addiu      $s0, $s0, 0x2C
.Lrace_800DBFDC:
/* 9239C 800DBFDC 08036FE4 */  j          .Lrace_800DBF90
/* 923A0 800DBFE0 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800DBFE4:
/* 923A4 800DBFE4 8E42008C */  lw         $v0, 0x8C($s2)
/* 923A8 800DBFE8 10400017 */  beqz       $v0, .Lrace_800DC048
/* 923AC 800DBFEC 00008821 */   addu      $s1, $zero, $zero
/* 923B0 800DBFF0 02208021 */  addu       $s0, $s1, $zero
.Lrace_800DBFF4:
/* 923B4 800DBFF4 8E420058 */  lw         $v0, 0x58($s2)
/* 923B8 800DBFF8 0222102B */  sltu       $v0, $s1, $v0
/* 923BC 800DBFFC 10400012 */  beqz       $v0, .Lrace_800DC048
/* 923C0 800DC000 00000000 */   nop
/* 923C4 800DC004 8E42008C */  lw         $v0, 0x8C($s2)
/* 923C8 800DC008 02022021 */  addu       $a0, $s0, $v0
/* 923CC 800DC00C 8C820010 */  lw         $v0, 0x10($a0)
/* 923D0 800DC010 14540003 */  bne        $v0, $s4, .Lrace_800DC020
/* 923D4 800DC014 00000000 */   nop
/* 923D8 800DC018 0C0359DF */  jal        func_race_800D677C
/* 923DC 800DC01C 02602821 */   addu      $a1, $s3, $zero
.Lrace_800DC020:
/* 923E0 800DC020 8E42008C */  lw         $v0, 0x8C($s2)
/* 923E4 800DC024 02022021 */  addu       $a0, $s0, $v0
/* 923E8 800DC028 8C820010 */  lw         $v0, 0x10($a0)
/* 923EC 800DC02C 54550004 */  bnel       $v0, $s5, .Lrace_800DC040
/* 923F0 800DC030 26100038 */   addiu     $s0, $s0, 0x38
/* 923F4 800DC034 0C0359F3 */  jal        func_race_800D67CC
/* 923F8 800DC038 02602821 */   addu      $a1, $s3, $zero
/* 923FC 800DC03C 26100038 */  addiu      $s0, $s0, 0x38
.Lrace_800DC040:
/* 92400 800DC040 08036FFD */  j          .Lrace_800DBFF4
/* 92404 800DC044 26310001 */   addiu     $s1, $s1, 0x1
.Lrace_800DC048:
/* 92408 800DC048 12600005 */  beqz       $s3, .Lrace_800DC060
/* 9240C 800DC04C 02802821 */   addu      $a1, $s4, $zero
/* 92410 800DC050 8E440014 */  lw         $a0, 0x14($s2)
/* 92414 800DC054 02A03021 */  addu       $a2, $s5, $zero
/* 92418 800DC058 0C03A4C3 */  jal        func_race_800E930C
/* 9241C 800DC05C 02603821 */   addu      $a3, $s3, $zero
.Lrace_800DC060:
/* 92420 800DC060 8FBF0028 */  lw         $ra, 0x28($sp)
/* 92424 800DC064 8FB50024 */  lw         $s5, 0x24($sp)
/* 92428 800DC068 8FB40020 */  lw         $s4, 0x20($sp)
/* 9242C 800DC06C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 92430 800DC070 8FB20018 */  lw         $s2, 0x18($sp)
/* 92434 800DC074 8FB10014 */  lw         $s1, 0x14($sp)
/* 92438 800DC078 8FB00010 */  lw         $s0, 0x10($sp)
/* 9243C 800DC07C 03E00008 */  jr         $ra
/* 92440 800DC080 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800DC084
/* 92444 800DC084 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92448 800DC088 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9244C 800DC08C 8C82005C */  lw         $v0, 0x5C($a0)
/* 92450 800DC090 1040000C */  beqz       $v0, .Lrace_800DC0C4
/* 92454 800DC094 00001821 */   addu      $v1, $zero, $zero
/* 92458 800DC098 24060005 */  addiu      $a2, $zero, 0x5
/* 9245C 800DC09C 00602821 */  addu       $a1, $v1, $zero
.Lrace_800DC0A0:
/* 92460 800DC0A0 8C820028 */  lw         $v0, 0x28($a0)
/* 92464 800DC0A4 0062102B */  sltu       $v0, $v1, $v0
/* 92468 800DC0A8 10400006 */  beqz       $v0, .Lrace_800DC0C4
/* 9246C 800DC0AC 24630001 */   addiu     $v1, $v1, 0x1
/* 92470 800DC0B0 8C82005C */  lw         $v0, 0x5C($a0)
/* 92474 800DC0B4 00A21021 */  addu       $v0, $a1, $v0
/* 92478 800DC0B8 24A5005C */  addiu      $a1, $a1, 0x5C
/* 9247C 800DC0BC 08037028 */  j          .Lrace_800DC0A0
/* 92480 800DC0C0 AC460014 */   sw        $a2, 0x14($v0)
.Lrace_800DC0C4:
/* 92484 800DC0C4 8C820060 */  lw         $v0, 0x60($a0)
/* 92488 800DC0C8 1040000C */  beqz       $v0, .Lrace_800DC0FC
/* 9248C 800DC0CC 00001821 */   addu      $v1, $zero, $zero
/* 92490 800DC0D0 24060005 */  addiu      $a2, $zero, 0x5
/* 92494 800DC0D4 00602821 */  addu       $a1, $v1, $zero
.Lrace_800DC0D8:
/* 92498 800DC0D8 8C82002C */  lw         $v0, 0x2C($a0)
/* 9249C 800DC0DC 0062102B */  sltu       $v0, $v1, $v0
/* 924A0 800DC0E0 10400006 */  beqz       $v0, .Lrace_800DC0FC
/* 924A4 800DC0E4 24630001 */   addiu     $v1, $v1, 0x1
/* 924A8 800DC0E8 8C820060 */  lw         $v0, 0x60($a0)
/* 924AC 800DC0EC 00A21021 */  addu       $v0, $a1, $v0
/* 924B0 800DC0F0 24A50034 */  addiu      $a1, $a1, 0x34
/* 924B4 800DC0F4 08037036 */  j          .Lrace_800DC0D8
/* 924B8 800DC0F8 AC460014 */   sw        $a2, 0x14($v0)
.Lrace_800DC0FC:
/* 924BC 800DC0FC 8C820064 */  lw         $v0, 0x64($a0)
/* 924C0 800DC100 1040000C */  beqz       $v0, .Lrace_800DC134
/* 924C4 800DC104 00001821 */   addu      $v1, $zero, $zero
/* 924C8 800DC108 24060005 */  addiu      $a2, $zero, 0x5
/* 924CC 800DC10C 00602821 */  addu       $a1, $v1, $zero
.Lrace_800DC110:
/* 924D0 800DC110 8C820030 */  lw         $v0, 0x30($a0)
/* 924D4 800DC114 0062102B */  sltu       $v0, $v1, $v0
/* 924D8 800DC118 10400006 */  beqz       $v0, .Lrace_800DC134
/* 924DC 800DC11C 24630001 */   addiu     $v1, $v1, 0x1
/* 924E0 800DC120 8C820064 */  lw         $v0, 0x64($a0)
/* 924E4 800DC124 00A21021 */  addu       $v0, $a1, $v0
/* 924E8 800DC128 24A50034 */  addiu      $a1, $a1, 0x34
/* 924EC 800DC12C 08037044 */  j          .Lrace_800DC110
/* 924F0 800DC130 AC460014 */   sw        $a2, 0x14($v0)
.Lrace_800DC134:
/* 924F4 800DC134 8C820068 */  lw         $v0, 0x68($a0)
/* 924F8 800DC138 1040000C */  beqz       $v0, .Lrace_800DC16C
/* 924FC 800DC13C 00001821 */   addu      $v1, $zero, $zero
/* 92500 800DC140 24060005 */  addiu      $a2, $zero, 0x5
/* 92504 800DC144 00602821 */  addu       $a1, $v1, $zero
.Lrace_800DC148:
/* 92508 800DC148 8C820034 */  lw         $v0, 0x34($a0)
/* 9250C 800DC14C 0062102B */  sltu       $v0, $v1, $v0
/* 92510 800DC150 10400006 */  beqz       $v0, .Lrace_800DC16C
/* 92514 800DC154 24630001 */   addiu     $v1, $v1, 0x1
/* 92518 800DC158 8C820068 */  lw         $v0, 0x68($a0)
/* 9251C 800DC15C 00A21021 */  addu       $v0, $a1, $v0
/* 92520 800DC160 24A50064 */  addiu      $a1, $a1, 0x64
/* 92524 800DC164 08037052 */  j          .Lrace_800DC148
/* 92528 800DC168 AC460014 */   sw        $a2, 0x14($v0)
.Lrace_800DC16C:
/* 9252C 800DC16C 8C820070 */  lw         $v0, 0x70($a0)
/* 92530 800DC170 1040000C */  beqz       $v0, .Lrace_800DC1A4
/* 92534 800DC174 00001821 */   addu      $v1, $zero, $zero
/* 92538 800DC178 24060005 */  addiu      $a2, $zero, 0x5
/* 9253C 800DC17C 00602821 */  addu       $a1, $v1, $zero
.Lrace_800DC180:
/* 92540 800DC180 8C82003C */  lw         $v0, 0x3C($a0)
/* 92544 800DC184 0062102B */  sltu       $v0, $v1, $v0
/* 92548 800DC188 10400006 */  beqz       $v0, .Lrace_800DC1A4
/* 9254C 800DC18C 24630001 */   addiu     $v1, $v1, 0x1
/* 92550 800DC190 8C820070 */  lw         $v0, 0x70($a0)
/* 92554 800DC194 00A21021 */  addu       $v0, $a1, $v0
/* 92558 800DC198 24A50034 */  addiu      $a1, $a1, 0x34
/* 9255C 800DC19C 08037060 */  j          .Lrace_800DC180
/* 92560 800DC1A0 AC460014 */   sw        $a2, 0x14($v0)
.Lrace_800DC1A4:
/* 92564 800DC1A4 8C820074 */  lw         $v0, 0x74($a0)
/* 92568 800DC1A8 1040000C */  beqz       $v0, .Lrace_800DC1DC
/* 9256C 800DC1AC 00001821 */   addu      $v1, $zero, $zero
/* 92570 800DC1B0 24060005 */  addiu      $a2, $zero, 0x5
/* 92574 800DC1B4 00602821 */  addu       $a1, $v1, $zero
.Lrace_800DC1B8:
/* 92578 800DC1B8 8C820040 */  lw         $v0, 0x40($a0)
/* 9257C 800DC1BC 0062102B */  sltu       $v0, $v1, $v0
/* 92580 800DC1C0 10400006 */  beqz       $v0, .Lrace_800DC1DC
/* 92584 800DC1C4 24630001 */   addiu     $v1, $v1, 0x1
/* 92588 800DC1C8 8C820074 */  lw         $v0, 0x74($a0)
/* 9258C 800DC1CC 00A21021 */  addu       $v0, $a1, $v0
/* 92590 800DC1D0 24A50030 */  addiu      $a1, $a1, 0x30
/* 92594 800DC1D4 0803706E */  j          .Lrace_800DC1B8
/* 92598 800DC1D8 AC460014 */   sw        $a2, 0x14($v0)
.Lrace_800DC1DC:
/* 9259C 800DC1DC 8C820078 */  lw         $v0, 0x78($a0)
/* 925A0 800DC1E0 1040000C */  beqz       $v0, .Lrace_800DC214
/* 925A4 800DC1E4 00001821 */   addu      $v1, $zero, $zero
/* 925A8 800DC1E8 24060005 */  addiu      $a2, $zero, 0x5
/* 925AC 800DC1EC 00602821 */  addu       $a1, $v1, $zero
.Lrace_800DC1F0:
/* 925B0 800DC1F0 8C82004C */  lw         $v0, 0x4C($a0)
/* 925B4 800DC1F4 0062102B */  sltu       $v0, $v1, $v0
/* 925B8 800DC1F8 10400006 */  beqz       $v0, .Lrace_800DC214
/* 925BC 800DC1FC 24630001 */   addiu     $v1, $v1, 0x1
/* 925C0 800DC200 8C820078 */  lw         $v0, 0x78($a0)
/* 925C4 800DC204 00A21021 */  addu       $v0, $a1, $v0
/* 925C8 800DC208 24A5002C */  addiu      $a1, $a1, 0x2C
/* 925CC 800DC20C 0803707C */  j          .Lrace_800DC1F0
/* 925D0 800DC210 AC460014 */   sw        $a2, 0x14($v0)
.Lrace_800DC214:
/* 925D4 800DC214 8C820084 */  lw         $v0, 0x84($a0)
/* 925D8 800DC218 1040000C */  beqz       $v0, .Lrace_800DC24C
/* 925DC 800DC21C 00001821 */   addu      $v1, $zero, $zero
/* 925E0 800DC220 24060005 */  addiu      $a2, $zero, 0x5
/* 925E4 800DC224 00602821 */  addu       $a1, $v1, $zero
.Lrace_800DC228:
/* 925E8 800DC228 8C820050 */  lw         $v0, 0x50($a0)
/* 925EC 800DC22C 0062102B */  sltu       $v0, $v1, $v0
/* 925F0 800DC230 10400006 */  beqz       $v0, .Lrace_800DC24C
/* 925F4 800DC234 24630001 */   addiu     $v1, $v1, 0x1
/* 925F8 800DC238 8C820084 */  lw         $v0, 0x84($a0)
/* 925FC 800DC23C 00A21021 */  addu       $v0, $a1, $v0
/* 92600 800DC240 24A50034 */  addiu      $a1, $a1, 0x34
/* 92604 800DC244 0803708A */  j          .Lrace_800DC228
/* 92608 800DC248 AC460014 */   sw        $a2, 0x14($v0)
.Lrace_800DC24C:
/* 9260C 800DC24C 0C036A0D */  jal        func_race_800DA834
/* 92610 800DC250 00002821 */   addu      $a1, $zero, $zero
/* 92614 800DC254 8FBF0010 */  lw         $ra, 0x10($sp)
/* 92618 800DC258 03E00008 */  jr         $ra
/* 9261C 800DC25C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DC260
/* 92620 800DC260 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 92624 800DC264 AFB20018 */  sw         $s2, 0x18($sp)
/* 92628 800DC268 00809021 */  addu       $s2, $a0, $zero
/* 9262C 800DC26C AFBF0020 */  sw         $ra, 0x20($sp)
/* 92630 800DC270 AFB3001C */  sw         $s3, 0x1C($sp)
/* 92634 800DC274 AFB10014 */  sw         $s1, 0x14($sp)
/* 92638 800DC278 AFB00010 */  sw         $s0, 0x10($sp)
/* 9263C 800DC27C 8E42007C */  lw         $v0, 0x7C($s2)
/* 92640 800DC280 1040000E */  beqz       $v0, .Lrace_800DC2BC
/* 92644 800DC284 00A09821 */   addu      $s3, $a1, $zero
/* 92648 800DC288 8E420044 */  lw         $v0, 0x44($s2)
/* 9264C 800DC28C 1040000B */  beqz       $v0, .Lrace_800DC2BC
/* 92650 800DC290 00008021 */   addu      $s0, $zero, $zero
/* 92654 800DC294 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DC298:
/* 92658 800DC298 02602821 */  addu       $a1, $s3, $zero
/* 9265C 800DC29C 8E44007C */  lw         $a0, 0x7C($s2)
/* 92660 800DC2A0 26100001 */  addiu      $s0, $s0, 0x1
/* 92664 800DC2A4 0C0359F3 */  jal        func_race_800D67CC
/* 92668 800DC2A8 00912021 */   addu      $a0, $a0, $s1
/* 9266C 800DC2AC 8E420044 */  lw         $v0, 0x44($s2)
/* 92670 800DC2B0 0202102B */  sltu       $v0, $s0, $v0
/* 92674 800DC2B4 1440FFF8 */  bnez       $v0, .Lrace_800DC298
/* 92678 800DC2B8 26310048 */   addiu     $s1, $s1, 0x48
.Lrace_800DC2BC:
/* 9267C 800DC2BC 8E420080 */  lw         $v0, 0x80($s2)
/* 92680 800DC2C0 1040000E */  beqz       $v0, .Lrace_800DC2FC
/* 92684 800DC2C4 00000000 */   nop
/* 92688 800DC2C8 8E420048 */  lw         $v0, 0x48($s2)
/* 9268C 800DC2CC 1040000B */  beqz       $v0, .Lrace_800DC2FC
/* 92690 800DC2D0 00008021 */   addu      $s0, $zero, $zero
/* 92694 800DC2D4 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DC2D8:
/* 92698 800DC2D8 02602821 */  addu       $a1, $s3, $zero
/* 9269C 800DC2DC 8E440080 */  lw         $a0, 0x80($s2)
/* 926A0 800DC2E0 26100001 */  addiu      $s0, $s0, 0x1
/* 926A4 800DC2E4 0C0359F3 */  jal        func_race_800D67CC
/* 926A8 800DC2E8 00912021 */   addu      $a0, $a0, $s1
/* 926AC 800DC2EC 8E420048 */  lw         $v0, 0x48($s2)
/* 926B0 800DC2F0 0202102B */  sltu       $v0, $s0, $v0
/* 926B4 800DC2F4 1440FFF8 */  bnez       $v0, .Lrace_800DC2D8
/* 926B8 800DC2F8 26310024 */   addiu     $s1, $s1, 0x24
.Lrace_800DC2FC:
/* 926BC 800DC2FC 8E420088 */  lw         $v0, 0x88($s2)
/* 926C0 800DC300 1040000E */  beqz       $v0, .Lrace_800DC33C
/* 926C4 800DC304 00000000 */   nop
/* 926C8 800DC308 8E420054 */  lw         $v0, 0x54($s2)
/* 926CC 800DC30C 1040000B */  beqz       $v0, .Lrace_800DC33C
/* 926D0 800DC310 00008021 */   addu      $s0, $zero, $zero
/* 926D4 800DC314 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DC318:
/* 926D8 800DC318 02602821 */  addu       $a1, $s3, $zero
/* 926DC 800DC31C 8E440088 */  lw         $a0, 0x88($s2)
/* 926E0 800DC320 26100001 */  addiu      $s0, $s0, 0x1
/* 926E4 800DC324 0C0359F3 */  jal        func_race_800D67CC
/* 926E8 800DC328 00912021 */   addu      $a0, $a0, $s1
/* 926EC 800DC32C 8E420054 */  lw         $v0, 0x54($s2)
/* 926F0 800DC330 0202102B */  sltu       $v0, $s0, $v0
/* 926F4 800DC334 1440FFF8 */  bnez       $v0, .Lrace_800DC318
/* 926F8 800DC338 2631002C */   addiu     $s1, $s1, 0x2C
.Lrace_800DC33C:
/* 926FC 800DC33C 8E42008C */  lw         $v0, 0x8C($s2)
/* 92700 800DC340 1040000E */  beqz       $v0, .Lrace_800DC37C
/* 92704 800DC344 00000000 */   nop
/* 92708 800DC348 8E420058 */  lw         $v0, 0x58($s2)
/* 9270C 800DC34C 1040000B */  beqz       $v0, .Lrace_800DC37C
/* 92710 800DC350 00008021 */   addu      $s0, $zero, $zero
/* 92714 800DC354 02008821 */  addu       $s1, $s0, $zero
.Lrace_800DC358:
/* 92718 800DC358 02602821 */  addu       $a1, $s3, $zero
/* 9271C 800DC35C 8E44008C */  lw         $a0, 0x8C($s2)
/* 92720 800DC360 26100001 */  addiu      $s0, $s0, 0x1
/* 92724 800DC364 0C0359F3 */  jal        func_race_800D67CC
/* 92728 800DC368 00912021 */   addu      $a0, $a0, $s1
/* 9272C 800DC36C 8E420058 */  lw         $v0, 0x58($s2)
/* 92730 800DC370 0202102B */  sltu       $v0, $s0, $v0
/* 92734 800DC374 1440FFF8 */  bnez       $v0, .Lrace_800DC358
/* 92738 800DC378 26310038 */   addiu     $s1, $s1, 0x38
.Lrace_800DC37C:
/* 9273C 800DC37C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 92740 800DC380 8FB3001C */  lw         $s3, 0x1C($sp)
/* 92744 800DC384 8FB20018 */  lw         $s2, 0x18($sp)
/* 92748 800DC388 8FB10014 */  lw         $s1, 0x14($sp)
/* 9274C 800DC38C 8FB00010 */  lw         $s0, 0x10($sp)
/* 92750 800DC390 03E00008 */  jr         $ra
/* 92754 800DC394 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800DC398
/* 92758 800DC398 3C028013 */  lui        $v0, %hi(D_race_80132090)
/* 9275C 800DC39C 03E00008 */  jr         $ra
/* 92760 800DC3A0 AC442090 */   sw        $a0, %lo(D_race_80132090)($v0)

glabel func_race_800DC3A4
/* 92764 800DC3A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92768 800DC3A8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9276C 800DC3AC 0C002513 */  jal        func_8000944C
/* 92770 800DC3B0 00000000 */   nop
/* 92774 800DC3B4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 92778 800DC3B8 03E00008 */  jr         $ra
/* 9277C 800DC3BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DC3C0
/* 92780 800DC3C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92784 800DC3C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 92788 800DC3C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9278C 800DC3CC 0C03592C */  jal        func_race_800D64B0
/* 92790 800DC3D0 00808021 */   addu      $s0, $a0, $zero
/* 92794 800DC3D4 3C02800D */  lui        $v0, %hi(D_race_800CB120)
/* 92798 800DC3D8 2442B120 */  addiu      $v0, $v0, %lo(D_race_800CB120)
/* 9279C 800DC3DC 02002021 */  addu       $a0, $s0, $zero
/* 927A0 800DC3E0 0C037111 */  jal        func_race_800DC444
/* 927A4 800DC3E4 AE02001C */   sw        $v0, 0x1C($s0)
/* 927A8 800DC3E8 02001021 */  addu       $v0, $s0, $zero
/* 927AC 800DC3EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 927B0 800DC3F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 927B4 800DC3F4 03E00008 */  jr         $ra
/* 927B8 800DC3F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DC3FC
/* 927BC 800DC3FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 927C0 800DC400 AFB00010 */  sw         $s0, 0x10($sp)
/* 927C4 800DC404 00808021 */  addu       $s0, $a0, $zero
/* 927C8 800DC408 AFB10014 */  sw         $s1, 0x14($sp)
/* 927CC 800DC40C 00A08821 */  addu       $s1, $a1, $zero
/* 927D0 800DC410 3C02800D */  lui        $v0, %hi(D_race_800CB120)
/* 927D4 800DC414 2442B120 */  addiu      $v0, $v0, %lo(D_race_800CB120)
/* 927D8 800DC418 AFBF0018 */  sw         $ra, 0x18($sp)
/* 927DC 800DC41C 0C037151 */  jal        func_race_800DC544
/* 927E0 800DC420 AE02001C */   sw        $v0, 0x1C($s0)
/* 927E4 800DC424 02002021 */  addu       $a0, $s0, $zero
/* 927E8 800DC428 0C03593D */  jal        func_race_800D64F4
/* 927EC 800DC42C 02202821 */   addu      $a1, $s1, $zero
/* 927F0 800DC430 8FBF0018 */  lw         $ra, 0x18($sp)
/* 927F4 800DC434 8FB10014 */  lw         $s1, 0x14($sp)
/* 927F8 800DC438 8FB00010 */  lw         $s0, 0x10($sp)
/* 927FC 800DC43C 03E00008 */  jr         $ra
/* 92800 800DC440 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DC444
/* 92804 800DC444 2402FFFF */  addiu      $v0, $zero, -0x1
/* 92808 800DC448 AC800000 */  sw         $zero, 0x0($a0)
/* 9280C 800DC44C AC800014 */  sw         $zero, 0x14($a0)
/* 92810 800DC450 AC800010 */  sw         $zero, 0x10($a0)
/* 92814 800DC454 AC800020 */  sw         $zero, 0x20($a0)
/* 92818 800DC458 AC800024 */  sw         $zero, 0x24($a0)
/* 9281C 800DC45C AC800028 */  sw         $zero, 0x28($a0)
/* 92820 800DC460 AC80002C */  sw         $zero, 0x2C($a0)
/* 92824 800DC464 AC820030 */  sw         $v0, 0x30($a0)
/* 92828 800DC468 03E00008 */  jr         $ra
/* 9282C 800DC46C A0800034 */   sb        $zero, 0x34($a0)

glabel func_race_800DC470
/* 92830 800DC470 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92834 800DC474 AFB00010 */  sw         $s0, 0x10($sp)
/* 92838 800DC478 00808021 */  addu       $s0, $a0, $zero
/* 9283C 800DC47C AFBF0018 */  sw         $ra, 0x18($sp)
/* 92840 800DC480 AFB10014 */  sw         $s1, 0x14($sp)
/* 92844 800DC484 8E020014 */  lw         $v0, 0x14($s0)
/* 92848 800DC488 10400003 */  beqz       $v0, .Lrace_800DC498
/* 9284C 800DC48C 00A08821 */   addu      $s1, $a1, $zero
/* 92850 800DC490 0C037151 */  jal        func_race_800DC544
/* 92854 800DC494 00000000 */   nop
.Lrace_800DC498:
/* 92858 800DC498 00002821 */  addu       $a1, $zero, $zero
/* 9285C 800DC49C 02202021 */  addu       $a0, $s1, $zero
/* 92860 800DC4A0 8E220000 */  lw         $v0, 0x0($s1)
/* 92864 800DC4A4 02001821 */  addu       $v1, $s0, $zero
/* 92868 800DC4A8 AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800DC4AC:
/* 9286C 800DC4AC 8C820004 */  lw         $v0, 0x4($a0)
/* 92870 800DC4B0 24840004 */  addiu      $a0, $a0, 0x4
/* 92874 800DC4B4 24A50001 */  addiu      $a1, $a1, 0x1
/* 92878 800DC4B8 AC620004 */  sw         $v0, 0x4($v1)
/* 9287C 800DC4BC 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 92880 800DC4C0 1440FFFA */  bnez       $v0, .Lrace_800DC4AC
/* 92884 800DC4C4 24630004 */   addiu     $v1, $v1, 0x4
/* 92888 800DC4C8 8E220010 */  lw         $v0, 0x10($s1)
/* 9288C 800DC4CC AE020000 */  sw         $v0, 0x0($s0)
/* 92890 800DC4D0 8E260014 */  lw         $a2, 0x14($s1)
/* 92894 800DC4D4 8E270018 */  lw         $a3, 0x18($s1)
/* 92898 800DC4D8 8E28001C */  lw         $t0, 0x1C($s1)
/* 9289C 800DC4DC AE060020 */  sw         $a2, 0x20($s0)
/* 928A0 800DC4E0 AE070024 */  sw         $a3, 0x24($s0)
/* 928A4 800DC4E4 AE080028 */  sw         $t0, 0x28($s0)
/* 928A8 800DC4E8 8E220020 */  lw         $v0, 0x20($s1)
/* 928AC 800DC4EC AE02002C */  sw         $v0, 0x2C($s0)
/* 928B0 800DC4F0 8E220024 */  lw         $v0, 0x24($s1)
/* 928B4 800DC4F4 AE020030 */  sw         $v0, 0x30($s0)
/* 928B8 800DC4F8 8E220028 */  lw         $v0, 0x28($s1)
/* 928BC 800DC4FC 10400004 */  beqz       $v0, .Lrace_800DC510
/* 928C0 800DC500 00000000 */   nop
/* 928C4 800DC504 92020018 */  lbu        $v0, 0x18($s0)
/* 928C8 800DC508 34420002 */  ori        $v0, $v0, 0x2
/* 928CC 800DC50C A2020018 */  sb         $v0, 0x18($s0)
.Lrace_800DC510:
/* 928D0 800DC510 8E22002C */  lw         $v0, 0x2C($s1)
/* 928D4 800DC514 10400005 */  beqz       $v0, .Lrace_800DC52C
/* 928D8 800DC518 24020001 */   addiu     $v0, $zero, 0x1
/* 928DC 800DC51C 92020018 */  lbu        $v0, 0x18($s0)
/* 928E0 800DC520 34420004 */  ori        $v0, $v0, 0x4
/* 928E4 800DC524 A2020018 */  sb         $v0, 0x18($s0)
/* 928E8 800DC528 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_800DC52C:
/* 928EC 800DC52C AE020014 */  sw         $v0, 0x14($s0)
/* 928F0 800DC530 8FBF0018 */  lw         $ra, 0x18($sp)
/* 928F4 800DC534 8FB10014 */  lw         $s1, 0x14($sp)
/* 928F8 800DC538 8FB00010 */  lw         $s0, 0x10($sp)
/* 928FC 800DC53C 03E00008 */  jr         $ra
/* 92900 800DC540 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800DC544
/* 92904 800DC544 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92908 800DC548 AFB00010 */  sw         $s0, 0x10($sp)
/* 9290C 800DC54C AFBF0014 */  sw         $ra, 0x14($sp)
/* 92910 800DC550 0C037111 */  jal        func_race_800DC444
/* 92914 800DC554 00808021 */   addu      $s0, $a0, $zero
/* 92918 800DC558 0C035951 */  jal        func_race_800D6544
/* 9291C 800DC55C 02002021 */   addu      $a0, $s0, $zero
/* 92920 800DC560 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92924 800DC564 8FB00010 */  lw         $s0, 0x10($sp)
/* 92928 800DC568 03E00008 */  jr         $ra
/* 9292C 800DC56C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DC570
/* 92930 800DC570 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92934 800DC574 AFB00010 */  sw         $s0, 0x10($sp)
/* 92938 800DC578 00808021 */  addu       $s0, $a0, $zero
/* 9293C 800DC57C AFBF0014 */  sw         $ra, 0x14($sp)
/* 92940 800DC580 92020034 */  lbu        $v0, 0x34($s0)
/* 92944 800DC584 30420001 */  andi       $v0, $v0, 0x1
/* 92948 800DC588 1040001C */  beqz       $v0, .Lrace_800DC5FC
/* 9294C 800DC58C 00000000 */   nop
/* 92950 800DC590 10A00015 */  beqz       $a1, .Lrace_800DC5E8
/* 92954 800DC594 02002021 */   addu      $a0, $s0, $zero
/* 92958 800DC598 8E04002C */  lw         $a0, 0x2C($s0)
/* 9295C 800DC59C 10800005 */  beqz       $a0, .Lrace_800DC5B4
/* 92960 800DC5A0 24020001 */   addiu     $v0, $zero, 0x1
/* 92964 800DC5A4 10820009 */  beq        $a0, $v0, .Lrace_800DC5CC
/* 92968 800DC5A8 24A303FC */   addiu     $v1, $a1, 0x3FC
/* 9296C 800DC5AC 0803717A */  j          .Lrace_800DC5E8
/* 92970 800DC5B0 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DC5B4:
/* 92974 800DC5B4 24A303FC */  addiu      $v1, $a1, 0x3FC
/* 92978 800DC5B8 8C6200CC */  lw         $v0, 0xCC($v1)
/* 9297C 800DC5BC 84440088 */  lh         $a0, 0x88($v0)
/* 92980 800DC5C0 8C42008C */  lw         $v0, 0x8C($v0)
/* 92984 800DC5C4 08037177 */  j          .Lrace_800DC5DC
/* 92988 800DC5C8 26050020 */   addiu     $a1, $s0, 0x20
.Lrace_800DC5CC:
/* 9298C 800DC5CC 8C6200CC */  lw         $v0, 0xCC($v1)
/* 92990 800DC5D0 26050020 */  addiu      $a1, $s0, 0x20
/* 92994 800DC5D4 84440098 */  lh         $a0, 0x98($v0)
/* 92998 800DC5D8 8C42009C */  lw         $v0, 0x9C($v0)
.Lrace_800DC5DC:
/* 9299C 800DC5DC 0040F809 */  jalr       $v0
/* 929A0 800DC5E0 00642021 */   addu      $a0, $v1, $a0
/* 929A4 800DC5E4 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DC5E8:
/* 929A8 800DC5E8 24050001 */  addiu      $a1, $zero, 0x1
/* 929AC 800DC5EC 0C03596C */  jal        func_race_800D65B0
/* 929B0 800DC5F0 00A03021 */   addu      $a2, $a1, $zero
/* 929B4 800DC5F4 24020003 */  addiu      $v0, $zero, 0x3
/* 929B8 800DC5F8 AE020014 */  sw         $v0, 0x14($s0)
.Lrace_800DC5FC:
/* 929BC 800DC5FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 929C0 800DC600 8FB00010 */  lw         $s0, 0x10($sp)
/* 929C4 800DC604 03E00008 */  jr         $ra
/* 929C8 800DC608 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DC60C
/* 929CC 800DC60C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 929D0 800DC610 AFB00010 */  sw         $s0, 0x10($sp)
/* 929D4 800DC614 00808021 */  addu       $s0, $a0, $zero
/* 929D8 800DC618 10A00013 */  beqz       $a1, .Lrace_800DC668
/* 929DC 800DC61C AFBF0014 */   sw        $ra, 0x14($sp)
/* 929E0 800DC620 8E04002C */  lw         $a0, 0x2C($s0)
/* 929E4 800DC624 10800005 */  beqz       $a0, .Lrace_800DC63C
/* 929E8 800DC628 24020001 */   addiu     $v0, $zero, 0x1
/* 929EC 800DC62C 10820009 */  beq        $a0, $v0, .Lrace_800DC654
/* 929F0 800DC630 24A303FC */   addiu     $v1, $a1, 0x3FC
/* 929F4 800DC634 0803719B */  j          .Lrace_800DC66C
/* 929F8 800DC638 02002021 */   addu      $a0, $s0, $zero
.Lrace_800DC63C:
/* 929FC 800DC63C 24A303FC */  addiu      $v1, $a1, 0x3FC
/* 92A00 800DC640 8C6200CC */  lw         $v0, 0xCC($v1)
/* 92A04 800DC644 84440090 */  lh         $a0, 0x90($v0)
/* 92A08 800DC648 8C420094 */  lw         $v0, 0x94($v0)
/* 92A0C 800DC64C 08037198 */  j          .Lrace_800DC660
/* 92A10 800DC650 00000000 */   nop
.Lrace_800DC654:
/* 92A14 800DC654 8C6200CC */  lw         $v0, 0xCC($v1)
/* 92A18 800DC658 844400A0 */  lh         $a0, 0xA0($v0)
/* 92A1C 800DC65C 8C4200A4 */  lw         $v0, 0xA4($v0)
.Lrace_800DC660:
/* 92A20 800DC660 0040F809 */  jalr       $v0
/* 92A24 800DC664 00642021 */   addu      $a0, $v1, $a0
.Lrace_800DC668:
/* 92A28 800DC668 02002021 */  addu       $a0, $s0, $zero
.Lrace_800DC66C:
/* 92A2C 800DC66C 8E050014 */  lw         $a1, 0x14($s0)
/* 92A30 800DC670 0C03596C */  jal        func_race_800D65B0
/* 92A34 800DC674 24060003 */   addiu     $a2, $zero, 0x3
/* 92A38 800DC678 24020001 */  addiu      $v0, $zero, 0x1
/* 92A3C 800DC67C AE020014 */  sw         $v0, 0x14($s0)
/* 92A40 800DC680 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92A44 800DC684 8FB00010 */  lw         $s0, 0x10($sp)
/* 92A48 800DC688 03E00008 */  jr         $ra
/* 92A4C 800DC68C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800DC690
/* 92A50 800DC690 8C820030 */  lw         $v0, 0x30($a0)
/* 92A54 800DC694 03E00008 */  jr         $ra
/* 92A58 800DC698 00000000 */   nop

glabel func_race_800DC69C
/* 92A5C 800DC69C 8C820020 */  lw         $v0, 0x20($a0)
/* 92A60 800DC6A0 8C830024 */  lw         $v1, 0x24($a0)
/* 92A64 800DC6A4 8C860028 */  lw         $a2, 0x28($a0)
/* 92A68 800DC6A8 ACA20000 */  sw         $v0, 0x0($a1)
/* 92A6C 800DC6AC ACA30004 */  sw         $v1, 0x4($a1)
/* 92A70 800DC6B0 ACA60008 */  sw         $a2, 0x8($a1)
/* 92A74 800DC6B4 03E00008 */  jr         $ra
/* 92A78 800DC6B8 00000000 */   nop

glabel func_race_800DC6BC
/* 92A7C 800DC6BC 03E00008 */  jr         $ra
/* 92A80 800DC6C0 2402000C */   addiu     $v0, $zero, 0xC

glabel func_race_800DC6C4
/* 92A84 800DC6C4 90820034 */  lbu        $v0, 0x34($a0)
/* 92A88 800DC6C8 304200FE */  andi       $v0, $v0, 0xFE
/* 92A8C 800DC6CC 03E00008 */  jr         $ra
/* 92A90 800DC6D0 A0820034 */   sb        $v0, 0x34($a0)

glabel func_race_800DC6D4
/* 92A94 800DC6D4 90820034 */  lbu        $v0, 0x34($a0)
/* 92A98 800DC6D8 34420001 */  ori        $v0, $v0, 0x1
/* 92A9C 800DC6DC 03E00008 */  jr         $ra
/* 92AA0 800DC6E0 A0820034 */   sb        $v0, 0x34($a0)
